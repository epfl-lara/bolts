; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!149388 () Bool)

(assert start!149388)

(declare-fun b!1587835 () Bool)

(declare-fun b_free!42959 () Bool)

(declare-fun b_next!43663 () Bool)

(assert (=> b!1587835 (= b_free!42959 (not b_next!43663))))

(declare-fun tp!466744 () Bool)

(declare-fun b_and!111349 () Bool)

(assert (=> b!1587835 (= tp!466744 b_and!111349)))

(declare-fun b_free!42961 () Bool)

(declare-fun b_next!43665 () Bool)

(assert (=> b!1587835 (= b_free!42961 (not b_next!43665))))

(declare-fun tp!466740 () Bool)

(declare-fun b_and!111351 () Bool)

(assert (=> b!1587835 (= tp!466740 b_and!111351)))

(declare-fun b!1587833 () Bool)

(declare-fun b_free!42963 () Bool)

(declare-fun b_next!43667 () Bool)

(assert (=> b!1587833 (= b_free!42963 (not b_next!43667))))

(declare-fun tp!466745 () Bool)

(declare-fun b_and!111353 () Bool)

(assert (=> b!1587833 (= tp!466745 b_and!111353)))

(declare-fun b_free!42965 () Bool)

(declare-fun b_next!43669 () Bool)

(assert (=> b!1587833 (= b_free!42965 (not b_next!43669))))

(declare-fun tp!466739 () Bool)

(declare-fun b_and!111355 () Bool)

(assert (=> b!1587833 (= tp!466739 b_and!111355)))

(declare-fun b!1587827 () Bool)

(declare-fun res!708297 () Bool)

(declare-fun e!1019907 () Bool)

(assert (=> b!1587827 (=> res!708297 e!1019907)))

(declare-datatypes ((List!17533 0))(
  ( (Nil!17463) (Cons!17463 (h!22864 (_ BitVec 16)) (t!144370 List!17533)) )
))
(declare-datatypes ((TokenValue!3166 0))(
  ( (FloatLiteralValue!6332 (text!22607 List!17533)) (TokenValueExt!3165 (__x!11634 Int)) (Broken!15830 (value!97314 List!17533)) (Object!3235) (End!3166) (Def!3166) (Underscore!3166) (Match!3166) (Else!3166) (Error!3166) (Case!3166) (If!3166) (Extends!3166) (Abstract!3166) (Class!3166) (Val!3166) (DelimiterValue!6332 (del!3226 List!17533)) (KeywordValue!3172 (value!97315 List!17533)) (CommentValue!6332 (value!97316 List!17533)) (WhitespaceValue!6332 (value!97317 List!17533)) (IndentationValue!3166 (value!97318 List!17533)) (String!20163) (Int32!3166) (Broken!15831 (value!97319 List!17533)) (Boolean!3167) (Unit!27457) (OperatorValue!3169 (op!3226 List!17533)) (IdentifierValue!6332 (value!97320 List!17533)) (IdentifierValue!6333 (value!97321 List!17533)) (WhitespaceValue!6333 (value!97322 List!17533)) (True!6332) (False!6332) (Broken!15832 (value!97323 List!17533)) (Broken!15833 (value!97324 List!17533)) (True!6333) (RightBrace!3166) (RightBracket!3166) (Colon!3166) (Null!3166) (Comma!3166) (LeftBracket!3166) (False!6333) (LeftBrace!3166) (ImaginaryLiteralValue!3166 (text!22608 List!17533)) (StringLiteralValue!9498 (value!97325 List!17533)) (EOFValue!3166 (value!97326 List!17533)) (IdentValue!3166 (value!97327 List!17533)) (DelimiterValue!6333 (value!97328 List!17533)) (DedentValue!3166 (value!97329 List!17533)) (NewLineValue!3166 (value!97330 List!17533)) (IntegerValue!9498 (value!97331 (_ BitVec 32)) (text!22609 List!17533)) (IntegerValue!9499 (value!97332 Int) (text!22610 List!17533)) (Times!3166) (Or!3166) (Equal!3166) (Minus!3166) (Broken!15834 (value!97333 List!17533)) (And!3166) (Div!3166) (LessEqual!3166) (Mod!3166) (Concat!7570) (Not!3166) (Plus!3166) (SpaceValue!3166 (value!97334 List!17533)) (IntegerValue!9500 (value!97335 Int) (text!22611 List!17533)) (StringLiteralValue!9499 (text!22612 List!17533)) (FloatLiteralValue!6333 (text!22613 List!17533)) (BytesLiteralValue!3166 (value!97336 List!17533)) (CommentValue!6333 (value!97337 List!17533)) (StringLiteralValue!9500 (value!97338 List!17533)) (ErrorTokenValue!3166 (msg!3227 List!17533)) )
))
(declare-datatypes ((C!8982 0))(
  ( (C!8983 (val!5087 Int)) )
))
(declare-datatypes ((List!17534 0))(
  ( (Nil!17464) (Cons!17464 (h!22865 C!8982) (t!144371 List!17534)) )
))
(declare-datatypes ((IArray!11605 0))(
  ( (IArray!11606 (innerList!5860 List!17534)) )
))
(declare-datatypes ((Conc!5800 0))(
  ( (Node!5800 (left!14100 Conc!5800) (right!14430 Conc!5800) (csize!11830 Int) (cheight!6011 Int)) (Leaf!8559 (xs!8608 IArray!11605) (csize!11831 Int)) (Empty!5800) )
))
(declare-datatypes ((BalanceConc!11544 0))(
  ( (BalanceConc!11545 (c!257303 Conc!5800)) )
))
(declare-datatypes ((Regex!4404 0))(
  ( (ElementMatch!4404 (c!257304 C!8982)) (Concat!7571 (regOne!9320 Regex!4404) (regTwo!9320 Regex!4404)) (EmptyExpr!4404) (Star!4404 (reg!4733 Regex!4404)) (EmptyLang!4404) (Union!4404 (regOne!9321 Regex!4404) (regTwo!9321 Regex!4404)) )
))
(declare-datatypes ((String!20164 0))(
  ( (String!20165 (value!97339 String)) )
))
(declare-datatypes ((TokenValueInjection!5992 0))(
  ( (TokenValueInjection!5993 (toValue!4487 Int) (toChars!4346 Int)) )
))
(declare-datatypes ((Rule!5952 0))(
  ( (Rule!5953 (regex!3076 Regex!4404) (tag!3346 String!20164) (isSeparator!3076 Bool) (transformation!3076 TokenValueInjection!5992)) )
))
(declare-datatypes ((List!17535 0))(
  ( (Nil!17465) (Cons!17465 (h!22866 Rule!5952) (t!144372 List!17535)) )
))
(declare-fun rules!1846 () List!17535)

(declare-datatypes ((LexerInterface!2705 0))(
  ( (LexerInterfaceExt!2702 (__x!11635 Int)) (Lexer!2703) )
))
(declare-fun thiss!17113 () LexerInterface!2705)

(declare-datatypes ((Token!5718 0))(
  ( (Token!5719 (value!97340 TokenValue!3166) (rule!4880 Rule!5952) (size!14045 Int) (originalCharacters!3890 List!17534)) )
))
(declare-datatypes ((List!17536 0))(
  ( (Nil!17466) (Cons!17466 (h!22867 Token!5718) (t!144373 List!17536)) )
))
(declare-fun tokens!457 () List!17536)

(declare-fun rulesProduceIndividualToken!1357 (LexerInterface!2705 List!17535 Token!5718) Bool)

(assert (=> b!1587827 (= res!708297 (not (rulesProduceIndividualToken!1357 thiss!17113 rules!1846 (h!22867 tokens!457))))))

(declare-fun b!1587828 () Bool)

(declare-fun res!708301 () Bool)

(declare-fun e!1019905 () Bool)

(assert (=> b!1587828 (=> (not res!708301) (not e!1019905))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!398 (LexerInterface!2705 List!17536 List!17535) Bool)

(assert (=> b!1587828 (= res!708301 (tokensListTwoByTwoPredicateSeparableList!398 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1587829 () Bool)

(declare-fun e!1019911 () Bool)

(declare-fun e!1019909 () Bool)

(assert (=> b!1587829 (= e!1019911 (not e!1019909))))

(declare-fun res!708298 () Bool)

(assert (=> b!1587829 (=> res!708298 e!1019909)))

(declare-fun lt!560135 () List!17536)

(assert (=> b!1587829 (= res!708298 (not (= lt!560135 (t!144373 tokens!457))))))

(declare-datatypes ((IArray!11607 0))(
  ( (IArray!11608 (innerList!5861 List!17536)) )
))
(declare-datatypes ((Conc!5801 0))(
  ( (Node!5801 (left!14101 Conc!5801) (right!14431 Conc!5801) (csize!11832 Int) (cheight!6012 Int)) (Leaf!8560 (xs!8609 IArray!11607) (csize!11833 Int)) (Empty!5801) )
))
(declare-datatypes ((BalanceConc!11546 0))(
  ( (BalanceConc!11547 (c!257305 Conc!5801)) )
))
(declare-datatypes ((tuple2!16944 0))(
  ( (tuple2!16945 (_1!9874 BalanceConc!11546) (_2!9874 BalanceConc!11544)) )
))
(declare-fun lt!560123 () tuple2!16944)

(declare-fun list!6781 (BalanceConc!11546) List!17536)

(assert (=> b!1587829 (= lt!560135 (list!6781 (_1!9874 lt!560123)))))

(declare-datatypes ((Unit!27458 0))(
  ( (Unit!27459) )
))
(declare-fun lt!560132 () Unit!27458)

(declare-fun theoremInvertabilityWhenTokenListSeparable!150 (LexerInterface!2705 List!17535 List!17536) Unit!27458)

(assert (=> b!1587829 (= lt!560132 (theoremInvertabilityWhenTokenListSeparable!150 thiss!17113 rules!1846 (t!144373 tokens!457)))))

(declare-fun lt!560124 () List!17534)

(declare-fun lt!560131 () List!17534)

(declare-fun isPrefix!1336 (List!17534 List!17534) Bool)

(assert (=> b!1587829 (isPrefix!1336 lt!560124 lt!560131)))

(declare-fun lt!560137 () Unit!27458)

(declare-fun lt!560126 () List!17534)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!861 (List!17534 List!17534) Unit!27458)

(assert (=> b!1587829 (= lt!560137 (lemmaConcatTwoListThenFirstIsPrefix!861 lt!560124 lt!560126))))

(declare-fun b!1587830 () Bool)

(declare-fun e!1019917 () Bool)

(assert (=> b!1587830 (= e!1019907 e!1019917)))

(declare-fun res!708292 () Bool)

(assert (=> b!1587830 (=> res!708292 e!1019917)))

(declare-datatypes ((tuple2!16946 0))(
  ( (tuple2!16947 (_1!9875 Token!5718) (_2!9875 List!17534)) )
))
(declare-datatypes ((Option!3147 0))(
  ( (None!3146) (Some!3146 (v!24033 tuple2!16946)) )
))
(declare-fun lt!560133 () Option!3147)

(declare-fun isDefined!2522 (Option!3147) Bool)

(assert (=> b!1587830 (= res!708292 (not (isDefined!2522 lt!560133)))))

(declare-fun lt!560127 () Unit!27458)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!279 (LexerInterface!2705 List!17535 List!17534 List!17534) Unit!27458)

(assert (=> b!1587830 (= lt!560127 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!279 thiss!17113 rules!1846 lt!560124 lt!560126))))

(declare-fun b!1587831 () Bool)

(declare-fun res!708302 () Bool)

(assert (=> b!1587831 (=> (not res!708302) (not e!1019905))))

(declare-fun rulesProduceEachTokenIndividuallyList!907 (LexerInterface!2705 List!17535 List!17536) Bool)

(assert (=> b!1587831 (= res!708302 (rulesProduceEachTokenIndividuallyList!907 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1587832 () Bool)

(declare-fun res!708299 () Bool)

(declare-fun e!1019915 () Bool)

(assert (=> b!1587832 (=> res!708299 e!1019915)))

(declare-fun separableTokensPredicate!647 (LexerInterface!2705 Token!5718 Token!5718 List!17535) Bool)

(assert (=> b!1587832 (= res!708299 (not (separableTokensPredicate!647 thiss!17113 (h!22867 tokens!457) (h!22867 (t!144373 tokens!457)) rules!1846)))))

(declare-fun e!1019918 () Bool)

(assert (=> b!1587833 (= e!1019918 (and tp!466745 tp!466739))))

(declare-fun b!1587834 () Bool)

(assert (=> b!1587834 (= e!1019905 e!1019911)))

(declare-fun res!708294 () Bool)

(assert (=> b!1587834 (=> (not res!708294) (not e!1019911))))

(declare-fun lt!560121 () List!17534)

(assert (=> b!1587834 (= res!708294 (= lt!560121 lt!560131))))

(declare-fun ++!4559 (List!17534 List!17534) List!17534)

(assert (=> b!1587834 (= lt!560131 (++!4559 lt!560124 lt!560126))))

(declare-fun lt!560129 () BalanceConc!11544)

(declare-fun list!6782 (BalanceConc!11544) List!17534)

(assert (=> b!1587834 (= lt!560121 (list!6782 lt!560129))))

(declare-fun lt!560122 () BalanceConc!11544)

(assert (=> b!1587834 (= lt!560126 (list!6782 lt!560122))))

(declare-fun lt!560142 () BalanceConc!11544)

(assert (=> b!1587834 (= lt!560124 (list!6782 lt!560142))))

(declare-fun charsOf!1725 (Token!5718) BalanceConc!11544)

(assert (=> b!1587834 (= lt!560142 (charsOf!1725 (h!22867 tokens!457)))))

(declare-fun lex!1189 (LexerInterface!2705 List!17535 BalanceConc!11544) tuple2!16944)

(assert (=> b!1587834 (= lt!560123 (lex!1189 thiss!17113 rules!1846 lt!560122))))

(declare-fun lt!560125 () BalanceConc!11546)

(declare-fun print!1236 (LexerInterface!2705 BalanceConc!11546) BalanceConc!11544)

(assert (=> b!1587834 (= lt!560122 (print!1236 thiss!17113 lt!560125))))

(declare-fun seqFromList!1901 (List!17536) BalanceConc!11546)

(assert (=> b!1587834 (= lt!560125 (seqFromList!1901 (t!144373 tokens!457)))))

(assert (=> b!1587834 (= lt!560129 (print!1236 thiss!17113 (seqFromList!1901 tokens!457)))))

(declare-fun e!1019919 () Bool)

(assert (=> b!1587835 (= e!1019919 (and tp!466744 tp!466740))))

(declare-fun b!1587836 () Bool)

(declare-fun res!708300 () Bool)

(assert (=> b!1587836 (=> (not res!708300) (not e!1019905))))

(assert (=> b!1587836 (= res!708300 (and (not (is-Nil!17466 tokens!457)) (not (is-Nil!17466 (t!144373 tokens!457)))))))

(declare-fun b!1587837 () Bool)

(declare-fun e!1019914 () Bool)

(assert (=> b!1587837 (= e!1019917 e!1019914)))

(declare-fun res!708289 () Bool)

(assert (=> b!1587837 (=> res!708289 e!1019914)))

(declare-fun lt!560136 () Regex!4404)

(declare-fun lt!560143 () BalanceConc!11544)

(declare-fun prefixMatchZipperSequence!428 (Regex!4404 BalanceConc!11544) Bool)

(declare-fun ++!4560 (BalanceConc!11544 BalanceConc!11544) BalanceConc!11544)

(assert (=> b!1587837 (= res!708289 (prefixMatchZipperSequence!428 lt!560136 (++!4560 lt!560142 lt!560143)))))

(declare-fun lt!560138 () BalanceConc!11544)

(declare-fun singletonSeq!1430 (C!8982) BalanceConc!11544)

(declare-fun apply!4289 (BalanceConc!11544 Int) C!8982)

(assert (=> b!1587837 (= lt!560143 (singletonSeq!1430 (apply!4289 lt!560138 0)))))

(assert (=> b!1587837 (= lt!560138 (charsOf!1725 (h!22867 (t!144373 tokens!457))))))

(declare-fun rulesRegex!466 (LexerInterface!2705 List!17535) Regex!4404)

(assert (=> b!1587837 (= lt!560136 (rulesRegex!466 thiss!17113 rules!1846))))

(declare-fun b!1587838 () Bool)

(declare-fun res!708288 () Bool)

(assert (=> b!1587838 (=> (not res!708288) (not e!1019905))))

(declare-fun rulesInvariant!2374 (LexerInterface!2705 List!17535) Bool)

(assert (=> b!1587838 (= res!708288 (rulesInvariant!2374 thiss!17113 rules!1846))))

(declare-fun tp!466743 () Bool)

(declare-fun b!1587839 () Bool)

(declare-fun e!1019910 () Bool)

(declare-fun e!1019913 () Bool)

(declare-fun inv!21 (TokenValue!3166) Bool)

(assert (=> b!1587839 (= e!1019913 (and (inv!21 (value!97340 (h!22867 tokens!457))) e!1019910 tp!466743))))

(declare-fun b!1587840 () Bool)

(declare-fun res!708290 () Bool)

(assert (=> b!1587840 (=> res!708290 e!1019907)))

(declare-fun isEmpty!10486 (BalanceConc!11546) Bool)

(declare-fun seqFromList!1902 (List!17534) BalanceConc!11544)

(assert (=> b!1587840 (= res!708290 (isEmpty!10486 (_1!9874 (lex!1189 thiss!17113 rules!1846 (seqFromList!1902 lt!560124)))))))

(declare-fun b!1587841 () Bool)

(assert (=> b!1587841 (= e!1019915 e!1019907)))

(declare-fun res!708293 () Bool)

(assert (=> b!1587841 (=> res!708293 e!1019907)))

(declare-fun lt!560139 () List!17534)

(declare-fun lt!560141 () List!17534)

(assert (=> b!1587841 (= res!708293 (or (not (= lt!560139 lt!560141)) (not (= lt!560141 lt!560124)) (not (= lt!560139 lt!560124))))))

(declare-fun printList!820 (LexerInterface!2705 List!17536) List!17534)

(assert (=> b!1587841 (= lt!560141 (printList!820 thiss!17113 (Cons!17466 (h!22867 tokens!457) Nil!17466)))))

(declare-fun lt!560144 () BalanceConc!11544)

(assert (=> b!1587841 (= lt!560139 (list!6782 lt!560144))))

(declare-fun lt!560140 () BalanceConc!11546)

(declare-fun printTailRec!758 (LexerInterface!2705 BalanceConc!11546 Int BalanceConc!11544) BalanceConc!11544)

(assert (=> b!1587841 (= lt!560144 (printTailRec!758 thiss!17113 lt!560140 0 (BalanceConc!11545 Empty!5800)))))

(assert (=> b!1587841 (= lt!560144 (print!1236 thiss!17113 lt!560140))))

(declare-fun singletonSeq!1431 (Token!5718) BalanceConc!11546)

(assert (=> b!1587841 (= lt!560140 (singletonSeq!1431 (h!22867 tokens!457)))))

(declare-fun maxPrefix!1269 (LexerInterface!2705 List!17535 List!17534) Option!3147)

(assert (=> b!1587841 (= lt!560133 (maxPrefix!1269 thiss!17113 rules!1846 lt!560121))))

(declare-fun b!1587842 () Bool)

(assert (=> b!1587842 (= e!1019909 e!1019915)))

(declare-fun res!708295 () Bool)

(assert (=> b!1587842 (=> res!708295 e!1019915)))

(declare-fun lt!560134 () List!17536)

(declare-fun lt!560130 () List!17536)

(assert (=> b!1587842 (= res!708295 (or (not (= lt!560135 lt!560134)) (not (= lt!560134 lt!560130))))))

(assert (=> b!1587842 (= lt!560134 (list!6781 lt!560125))))

(assert (=> b!1587842 (= lt!560135 lt!560130)))

(declare-fun prepend!566 (BalanceConc!11546 Token!5718) BalanceConc!11546)

(assert (=> b!1587842 (= lt!560130 (list!6781 (prepend!566 (seqFromList!1901 (t!144373 (t!144373 tokens!457))) (h!22867 (t!144373 tokens!457)))))))

(declare-fun lt!560128 () Unit!27458)

(declare-fun seqFromListBHdTlConstructive!153 (Token!5718 List!17536 BalanceConc!11546) Unit!27458)

(assert (=> b!1587842 (= lt!560128 (seqFromListBHdTlConstructive!153 (h!22867 (t!144373 tokens!457)) (t!144373 (t!144373 tokens!457)) (_1!9874 lt!560123)))))

(declare-fun b!1587843 () Bool)

(declare-fun size!14046 (BalanceConc!11544) Int)

(assert (=> b!1587843 (= e!1019914 (< 0 (size!14046 lt!560138)))))

(assert (=> b!1587843 (= lt!560124 (originalCharacters!3890 (h!22867 tokens!457)))))

(declare-fun b!1587844 () Bool)

(declare-fun e!1019916 () Bool)

(declare-fun e!1019920 () Bool)

(declare-fun tp!466741 () Bool)

(assert (=> b!1587844 (= e!1019916 (and e!1019920 tp!466741))))

(declare-fun b!1587845 () Bool)

(declare-fun res!708296 () Bool)

(assert (=> b!1587845 (=> res!708296 e!1019914)))

(declare-fun prefixMatch!339 (Regex!4404 List!17534) Bool)

(assert (=> b!1587845 (= res!708296 (prefixMatch!339 lt!560136 (++!4559 lt!560124 (list!6782 lt!560143))))))

(declare-fun b!1587846 () Bool)

(declare-fun e!1019906 () Bool)

(declare-fun tp!466742 () Bool)

(declare-fun inv!22876 (Token!5718) Bool)

(assert (=> b!1587846 (= e!1019906 (and (inv!22876 (h!22867 tokens!457)) e!1019913 tp!466742))))

(declare-fun tp!466737 () Bool)

(declare-fun b!1587847 () Bool)

(declare-fun inv!22873 (String!20164) Bool)

(declare-fun inv!22877 (TokenValueInjection!5992) Bool)

(assert (=> b!1587847 (= e!1019920 (and tp!466737 (inv!22873 (tag!3346 (h!22866 rules!1846))) (inv!22877 (transformation!3076 (h!22866 rules!1846))) e!1019919))))

(declare-fun res!708291 () Bool)

(assert (=> start!149388 (=> (not res!708291) (not e!1019905))))

(assert (=> start!149388 (= res!708291 (is-Lexer!2703 thiss!17113))))

(assert (=> start!149388 e!1019905))

(assert (=> start!149388 true))

(assert (=> start!149388 e!1019916))

(assert (=> start!149388 e!1019906))

(declare-fun tp!466738 () Bool)

(declare-fun b!1587848 () Bool)

(assert (=> b!1587848 (= e!1019910 (and tp!466738 (inv!22873 (tag!3346 (rule!4880 (h!22867 tokens!457)))) (inv!22877 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) e!1019918))))

(declare-fun b!1587849 () Bool)

(declare-fun res!708303 () Bool)

(assert (=> b!1587849 (=> (not res!708303) (not e!1019905))))

(declare-fun isEmpty!10487 (List!17535) Bool)

(assert (=> b!1587849 (= res!708303 (not (isEmpty!10487 rules!1846)))))

(assert (= (and start!149388 res!708291) b!1587849))

(assert (= (and b!1587849 res!708303) b!1587838))

(assert (= (and b!1587838 res!708288) b!1587831))

(assert (= (and b!1587831 res!708302) b!1587828))

(assert (= (and b!1587828 res!708301) b!1587836))

(assert (= (and b!1587836 res!708300) b!1587834))

(assert (= (and b!1587834 res!708294) b!1587829))

(assert (= (and b!1587829 (not res!708298)) b!1587842))

(assert (= (and b!1587842 (not res!708295)) b!1587832))

(assert (= (and b!1587832 (not res!708299)) b!1587841))

(assert (= (and b!1587841 (not res!708293)) b!1587827))

(assert (= (and b!1587827 (not res!708297)) b!1587840))

(assert (= (and b!1587840 (not res!708290)) b!1587830))

(assert (= (and b!1587830 (not res!708292)) b!1587837))

(assert (= (and b!1587837 (not res!708289)) b!1587845))

(assert (= (and b!1587845 (not res!708296)) b!1587843))

(assert (= b!1587847 b!1587835))

(assert (= b!1587844 b!1587847))

(assert (= (and start!149388 (is-Cons!17465 rules!1846)) b!1587844))

(assert (= b!1587848 b!1587833))

(assert (= b!1587839 b!1587848))

(assert (= b!1587846 b!1587839))

(assert (= (and start!149388 (is-Cons!17466 tokens!457)) b!1587846))

(declare-fun m!1878513 () Bool)

(assert (=> b!1587838 m!1878513))

(declare-fun m!1878515 () Bool)

(assert (=> b!1587827 m!1878515))

(declare-fun m!1878517 () Bool)

(assert (=> b!1587834 m!1878517))

(declare-fun m!1878519 () Bool)

(assert (=> b!1587834 m!1878519))

(declare-fun m!1878521 () Bool)

(assert (=> b!1587834 m!1878521))

(declare-fun m!1878523 () Bool)

(assert (=> b!1587834 m!1878523))

(declare-fun m!1878525 () Bool)

(assert (=> b!1587834 m!1878525))

(declare-fun m!1878527 () Bool)

(assert (=> b!1587834 m!1878527))

(declare-fun m!1878529 () Bool)

(assert (=> b!1587834 m!1878529))

(assert (=> b!1587834 m!1878521))

(declare-fun m!1878531 () Bool)

(assert (=> b!1587834 m!1878531))

(declare-fun m!1878533 () Bool)

(assert (=> b!1587834 m!1878533))

(declare-fun m!1878535 () Bool)

(assert (=> b!1587834 m!1878535))

(declare-fun m!1878537 () Bool)

(assert (=> b!1587846 m!1878537))

(declare-fun m!1878539 () Bool)

(assert (=> b!1587839 m!1878539))

(declare-fun m!1878541 () Bool)

(assert (=> b!1587831 m!1878541))

(declare-fun m!1878543 () Bool)

(assert (=> b!1587845 m!1878543))

(assert (=> b!1587845 m!1878543))

(declare-fun m!1878545 () Bool)

(assert (=> b!1587845 m!1878545))

(assert (=> b!1587845 m!1878545))

(declare-fun m!1878547 () Bool)

(assert (=> b!1587845 m!1878547))

(declare-fun m!1878549 () Bool)

(assert (=> b!1587840 m!1878549))

(assert (=> b!1587840 m!1878549))

(declare-fun m!1878551 () Bool)

(assert (=> b!1587840 m!1878551))

(declare-fun m!1878553 () Bool)

(assert (=> b!1587840 m!1878553))

(declare-fun m!1878555 () Bool)

(assert (=> b!1587829 m!1878555))

(declare-fun m!1878557 () Bool)

(assert (=> b!1587829 m!1878557))

(declare-fun m!1878559 () Bool)

(assert (=> b!1587829 m!1878559))

(declare-fun m!1878561 () Bool)

(assert (=> b!1587829 m!1878561))

(declare-fun m!1878563 () Bool)

(assert (=> b!1587847 m!1878563))

(declare-fun m!1878565 () Bool)

(assert (=> b!1587847 m!1878565))

(declare-fun m!1878567 () Bool)

(assert (=> b!1587842 m!1878567))

(declare-fun m!1878569 () Bool)

(assert (=> b!1587842 m!1878569))

(declare-fun m!1878571 () Bool)

(assert (=> b!1587842 m!1878571))

(declare-fun m!1878573 () Bool)

(assert (=> b!1587842 m!1878573))

(declare-fun m!1878575 () Bool)

(assert (=> b!1587842 m!1878575))

(assert (=> b!1587842 m!1878571))

(assert (=> b!1587842 m!1878573))

(declare-fun m!1878577 () Bool)

(assert (=> b!1587830 m!1878577))

(declare-fun m!1878579 () Bool)

(assert (=> b!1587830 m!1878579))

(declare-fun m!1878581 () Bool)

(assert (=> b!1587843 m!1878581))

(declare-fun m!1878583 () Bool)

(assert (=> b!1587849 m!1878583))

(declare-fun m!1878585 () Bool)

(assert (=> b!1587848 m!1878585))

(declare-fun m!1878587 () Bool)

(assert (=> b!1587848 m!1878587))

(declare-fun m!1878589 () Bool)

(assert (=> b!1587841 m!1878589))

(declare-fun m!1878591 () Bool)

(assert (=> b!1587841 m!1878591))

(declare-fun m!1878593 () Bool)

(assert (=> b!1587841 m!1878593))

(declare-fun m!1878595 () Bool)

(assert (=> b!1587841 m!1878595))

(declare-fun m!1878597 () Bool)

(assert (=> b!1587841 m!1878597))

(declare-fun m!1878599 () Bool)

(assert (=> b!1587841 m!1878599))

(declare-fun m!1878601 () Bool)

(assert (=> b!1587832 m!1878601))

(declare-fun m!1878603 () Bool)

(assert (=> b!1587828 m!1878603))

(declare-fun m!1878605 () Bool)

(assert (=> b!1587837 m!1878605))

(declare-fun m!1878607 () Bool)

(assert (=> b!1587837 m!1878607))

(declare-fun m!1878609 () Bool)

(assert (=> b!1587837 m!1878609))

(declare-fun m!1878611 () Bool)

(assert (=> b!1587837 m!1878611))

(assert (=> b!1587837 m!1878609))

(declare-fun m!1878613 () Bool)

(assert (=> b!1587837 m!1878613))

(assert (=> b!1587837 m!1878611))

(declare-fun m!1878615 () Bool)

(assert (=> b!1587837 m!1878615))

(push 1)

(assert (not b!1587844))

(assert (not b!1587848))

(assert (not b!1587838))

(assert (not b!1587839))

(assert (not b!1587845))

(assert b_and!111351)

(assert (not b!1587849))

(assert (not b!1587831))

(assert (not b!1587830))

(assert (not b!1587832))

(assert (not b!1587840))

(assert (not b_next!43663))

(assert (not b!1587829))

(assert (not b!1587842))

(assert (not b_next!43667))

(assert b_and!111355)

(assert (not b!1587837))

(assert (not b_next!43665))

(assert (not b!1587834))

(assert (not b_next!43669))

(assert (not b!1587843))

(assert (not b!1587847))

(assert (not b!1587827))

(assert b_and!111349)

(assert (not b!1587846))

(assert (not b!1587841))

(assert (not b!1587828))

(assert b_and!111353)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!43663))

(assert (not b_next!43665))

(assert (not b_next!43669))

(assert b_and!111351)

(assert b_and!111349)

(assert b_and!111353)

(assert (not b_next!43667))

(assert b_and!111355)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!472461 () Bool)

(declare-fun c!257312 () Bool)

(declare-fun isEmpty!10490 (List!17534) Bool)

(assert (=> d!472461 (= c!257312 (isEmpty!10490 (++!4559 lt!560124 (list!6782 lt!560143))))))

(declare-fun e!1019975 () Bool)

(assert (=> d!472461 (= (prefixMatch!339 lt!560136 (++!4559 lt!560124 (list!6782 lt!560143))) e!1019975)))

(declare-fun b!1587923 () Bool)

(declare-fun lostCause!401 (Regex!4404) Bool)

(assert (=> b!1587923 (= e!1019975 (not (lostCause!401 lt!560136)))))

(declare-fun b!1587924 () Bool)

(declare-fun derivativeStep!1045 (Regex!4404 C!8982) Regex!4404)

(declare-fun head!3232 (List!17534) C!8982)

(declare-fun tail!2281 (List!17534) List!17534)

(assert (=> b!1587924 (= e!1019975 (prefixMatch!339 (derivativeStep!1045 lt!560136 (head!3232 (++!4559 lt!560124 (list!6782 lt!560143)))) (tail!2281 (++!4559 lt!560124 (list!6782 lt!560143)))))))

(assert (= (and d!472461 c!257312) b!1587923))

(assert (= (and d!472461 (not c!257312)) b!1587924))

(assert (=> d!472461 m!1878545))

(declare-fun m!1878721 () Bool)

(assert (=> d!472461 m!1878721))

(declare-fun m!1878723 () Bool)

(assert (=> b!1587923 m!1878723))

(assert (=> b!1587924 m!1878545))

(declare-fun m!1878725 () Bool)

(assert (=> b!1587924 m!1878725))

(assert (=> b!1587924 m!1878725))

(declare-fun m!1878727 () Bool)

(assert (=> b!1587924 m!1878727))

(assert (=> b!1587924 m!1878545))

(declare-fun m!1878729 () Bool)

(assert (=> b!1587924 m!1878729))

(assert (=> b!1587924 m!1878727))

(assert (=> b!1587924 m!1878729))

(declare-fun m!1878731 () Bool)

(assert (=> b!1587924 m!1878731))

(assert (=> b!1587845 d!472461))

(declare-fun d!472463 () Bool)

(declare-fun e!1019980 () Bool)

(assert (=> d!472463 e!1019980))

(declare-fun res!708360 () Bool)

(assert (=> d!472463 (=> (not res!708360) (not e!1019980))))

(declare-fun lt!560219 () List!17534)

(declare-fun content!2406 (List!17534) (Set C!8982))

(assert (=> d!472463 (= res!708360 (= (content!2406 lt!560219) (set.union (content!2406 lt!560124) (content!2406 (list!6782 lt!560143)))))))

(declare-fun e!1019981 () List!17534)

(assert (=> d!472463 (= lt!560219 e!1019981)))

(declare-fun c!257315 () Bool)

(assert (=> d!472463 (= c!257315 (is-Nil!17464 lt!560124))))

(assert (=> d!472463 (= (++!4559 lt!560124 (list!6782 lt!560143)) lt!560219)))

(declare-fun b!1587936 () Bool)

(assert (=> b!1587936 (= e!1019980 (or (not (= (list!6782 lt!560143) Nil!17464)) (= lt!560219 lt!560124)))))

(declare-fun b!1587933 () Bool)

(assert (=> b!1587933 (= e!1019981 (list!6782 lt!560143))))

(declare-fun b!1587935 () Bool)

(declare-fun res!708359 () Bool)

(assert (=> b!1587935 (=> (not res!708359) (not e!1019980))))

(declare-fun size!14049 (List!17534) Int)

(assert (=> b!1587935 (= res!708359 (= (size!14049 lt!560219) (+ (size!14049 lt!560124) (size!14049 (list!6782 lt!560143)))))))

(declare-fun b!1587934 () Bool)

(assert (=> b!1587934 (= e!1019981 (Cons!17464 (h!22865 lt!560124) (++!4559 (t!144371 lt!560124) (list!6782 lt!560143))))))

(assert (= (and d!472463 c!257315) b!1587933))

(assert (= (and d!472463 (not c!257315)) b!1587934))

(assert (= (and d!472463 res!708360) b!1587935))

(assert (= (and b!1587935 res!708359) b!1587936))

(declare-fun m!1878733 () Bool)

(assert (=> d!472463 m!1878733))

(declare-fun m!1878735 () Bool)

(assert (=> d!472463 m!1878735))

(assert (=> d!472463 m!1878543))

(declare-fun m!1878737 () Bool)

(assert (=> d!472463 m!1878737))

(declare-fun m!1878739 () Bool)

(assert (=> b!1587935 m!1878739))

(declare-fun m!1878741 () Bool)

(assert (=> b!1587935 m!1878741))

(assert (=> b!1587935 m!1878543))

(declare-fun m!1878743 () Bool)

(assert (=> b!1587935 m!1878743))

(assert (=> b!1587934 m!1878543))

(declare-fun m!1878745 () Bool)

(assert (=> b!1587934 m!1878745))

(assert (=> b!1587845 d!472463))

(declare-fun d!472465 () Bool)

(declare-fun list!6785 (Conc!5800) List!17534)

(assert (=> d!472465 (= (list!6782 lt!560143) (list!6785 (c!257303 lt!560143)))))

(declare-fun bs!391532 () Bool)

(assert (= bs!391532 d!472465))

(declare-fun m!1878747 () Bool)

(assert (=> bs!391532 m!1878747))

(assert (=> b!1587845 d!472465))

(declare-fun d!472467 () Bool)

(declare-fun lt!560222 () BalanceConc!11544)

(assert (=> d!472467 (= (list!6782 lt!560222) (printList!820 thiss!17113 (list!6781 (seqFromList!1901 tokens!457))))))

(assert (=> d!472467 (= lt!560222 (printTailRec!758 thiss!17113 (seqFromList!1901 tokens!457) 0 (BalanceConc!11545 Empty!5800)))))

(assert (=> d!472467 (= (print!1236 thiss!17113 (seqFromList!1901 tokens!457)) lt!560222)))

(declare-fun bs!391533 () Bool)

(assert (= bs!391533 d!472467))

(declare-fun m!1878749 () Bool)

(assert (=> bs!391533 m!1878749))

(assert (=> bs!391533 m!1878521))

(declare-fun m!1878751 () Bool)

(assert (=> bs!391533 m!1878751))

(assert (=> bs!391533 m!1878751))

(declare-fun m!1878753 () Bool)

(assert (=> bs!391533 m!1878753))

(assert (=> bs!391533 m!1878521))

(declare-fun m!1878755 () Bool)

(assert (=> bs!391533 m!1878755))

(assert (=> b!1587834 d!472467))

(declare-fun d!472469 () Bool)

(assert (=> d!472469 (= (list!6782 lt!560142) (list!6785 (c!257303 lt!560142)))))

(declare-fun bs!391534 () Bool)

(assert (= bs!391534 d!472469))

(declare-fun m!1878757 () Bool)

(assert (=> bs!391534 m!1878757))

(assert (=> b!1587834 d!472469))

(declare-fun d!472471 () Bool)

(declare-fun lt!560223 () BalanceConc!11544)

(assert (=> d!472471 (= (list!6782 lt!560223) (printList!820 thiss!17113 (list!6781 lt!560125)))))

(assert (=> d!472471 (= lt!560223 (printTailRec!758 thiss!17113 lt!560125 0 (BalanceConc!11545 Empty!5800)))))

(assert (=> d!472471 (= (print!1236 thiss!17113 lt!560125) lt!560223)))

(declare-fun bs!391535 () Bool)

(assert (= bs!391535 d!472471))

(declare-fun m!1878759 () Bool)

(assert (=> bs!391535 m!1878759))

(assert (=> bs!391535 m!1878569))

(assert (=> bs!391535 m!1878569))

(declare-fun m!1878761 () Bool)

(assert (=> bs!391535 m!1878761))

(declare-fun m!1878763 () Bool)

(assert (=> bs!391535 m!1878763))

(assert (=> b!1587834 d!472471))

(declare-fun d!472473 () Bool)

(declare-fun e!1019982 () Bool)

(assert (=> d!472473 e!1019982))

(declare-fun res!708363 () Bool)

(assert (=> d!472473 (=> (not res!708363) (not e!1019982))))

(declare-fun lt!560224 () List!17534)

(assert (=> d!472473 (= res!708363 (= (content!2406 lt!560224) (set.union (content!2406 lt!560124) (content!2406 lt!560126))))))

(declare-fun e!1019983 () List!17534)

(assert (=> d!472473 (= lt!560224 e!1019983)))

(declare-fun c!257316 () Bool)

(assert (=> d!472473 (= c!257316 (is-Nil!17464 lt!560124))))

(assert (=> d!472473 (= (++!4559 lt!560124 lt!560126) lt!560224)))

(declare-fun b!1587940 () Bool)

(assert (=> b!1587940 (= e!1019982 (or (not (= lt!560126 Nil!17464)) (= lt!560224 lt!560124)))))

(declare-fun b!1587937 () Bool)

(assert (=> b!1587937 (= e!1019983 lt!560126)))

(declare-fun b!1587939 () Bool)

(declare-fun res!708362 () Bool)

(assert (=> b!1587939 (=> (not res!708362) (not e!1019982))))

(assert (=> b!1587939 (= res!708362 (= (size!14049 lt!560224) (+ (size!14049 lt!560124) (size!14049 lt!560126))))))

(declare-fun b!1587938 () Bool)

(assert (=> b!1587938 (= e!1019983 (Cons!17464 (h!22865 lt!560124) (++!4559 (t!144371 lt!560124) lt!560126)))))

(assert (= (and d!472473 c!257316) b!1587937))

(assert (= (and d!472473 (not c!257316)) b!1587938))

(assert (= (and d!472473 res!708363) b!1587939))

(assert (= (and b!1587939 res!708362) b!1587940))

(declare-fun m!1878765 () Bool)

(assert (=> d!472473 m!1878765))

(assert (=> d!472473 m!1878735))

(declare-fun m!1878767 () Bool)

(assert (=> d!472473 m!1878767))

(declare-fun m!1878769 () Bool)

(assert (=> b!1587939 m!1878769))

(assert (=> b!1587939 m!1878741))

(declare-fun m!1878771 () Bool)

(assert (=> b!1587939 m!1878771))

(declare-fun m!1878773 () Bool)

(assert (=> b!1587938 m!1878773))

(assert (=> b!1587834 d!472473))

(declare-fun lt!560227 () tuple2!16944)

(declare-fun e!1019991 () Bool)

(declare-fun b!1587951 () Bool)

(declare-datatypes ((tuple2!16952 0))(
  ( (tuple2!16953 (_1!9878 List!17536) (_2!9878 List!17534)) )
))
(declare-fun lexList!792 (LexerInterface!2705 List!17535 List!17534) tuple2!16952)

(assert (=> b!1587951 (= e!1019991 (= (list!6782 (_2!9874 lt!560227)) (_2!9878 (lexList!792 thiss!17113 rules!1846 (list!6782 lt!560122)))))))

(declare-fun b!1587952 () Bool)

(declare-fun e!1019990 () Bool)

(declare-fun e!1019992 () Bool)

(assert (=> b!1587952 (= e!1019990 e!1019992)))

(declare-fun res!708374 () Bool)

(assert (=> b!1587952 (= res!708374 (< (size!14046 (_2!9874 lt!560227)) (size!14046 lt!560122)))))

(assert (=> b!1587952 (=> (not res!708374) (not e!1019992))))

(declare-fun b!1587953 () Bool)

(declare-fun res!708373 () Bool)

(assert (=> b!1587953 (=> (not res!708373) (not e!1019991))))

(assert (=> b!1587953 (= res!708373 (= (list!6781 (_1!9874 lt!560227)) (_1!9878 (lexList!792 thiss!17113 rules!1846 (list!6782 lt!560122)))))))

(declare-fun b!1587954 () Bool)

(assert (=> b!1587954 (= e!1019992 (not (isEmpty!10486 (_1!9874 lt!560227))))))

(declare-fun b!1587955 () Bool)

(assert (=> b!1587955 (= e!1019990 (= (_2!9874 lt!560227) lt!560122))))

(declare-fun d!472475 () Bool)

(assert (=> d!472475 e!1019991))

(declare-fun res!708375 () Bool)

(assert (=> d!472475 (=> (not res!708375) (not e!1019991))))

(assert (=> d!472475 (= res!708375 e!1019990)))

(declare-fun c!257319 () Bool)

(declare-fun size!14050 (BalanceConc!11546) Int)

(assert (=> d!472475 (= c!257319 (> (size!14050 (_1!9874 lt!560227)) 0))))

(declare-fun lexTailRecV2!515 (LexerInterface!2705 List!17535 BalanceConc!11544 BalanceConc!11544 BalanceConc!11544 BalanceConc!11546) tuple2!16944)

(assert (=> d!472475 (= lt!560227 (lexTailRecV2!515 thiss!17113 rules!1846 lt!560122 (BalanceConc!11545 Empty!5800) lt!560122 (BalanceConc!11547 Empty!5801)))))

(assert (=> d!472475 (= (lex!1189 thiss!17113 rules!1846 lt!560122) lt!560227)))

(assert (= (and d!472475 c!257319) b!1587952))

(assert (= (and d!472475 (not c!257319)) b!1587955))

(assert (= (and b!1587952 res!708374) b!1587954))

(assert (= (and d!472475 res!708375) b!1587953))

(assert (= (and b!1587953 res!708373) b!1587951))

(declare-fun m!1878775 () Bool)

(assert (=> b!1587954 m!1878775))

(declare-fun m!1878777 () Bool)

(assert (=> b!1587951 m!1878777))

(assert (=> b!1587951 m!1878533))

(assert (=> b!1587951 m!1878533))

(declare-fun m!1878779 () Bool)

(assert (=> b!1587951 m!1878779))

(declare-fun m!1878781 () Bool)

(assert (=> d!472475 m!1878781))

(declare-fun m!1878783 () Bool)

(assert (=> d!472475 m!1878783))

(declare-fun m!1878785 () Bool)

(assert (=> b!1587952 m!1878785))

(declare-fun m!1878787 () Bool)

(assert (=> b!1587952 m!1878787))

(declare-fun m!1878789 () Bool)

(assert (=> b!1587953 m!1878789))

(assert (=> b!1587953 m!1878533))

(assert (=> b!1587953 m!1878533))

(assert (=> b!1587953 m!1878779))

(assert (=> b!1587834 d!472475))

(declare-fun d!472477 () Bool)

(assert (=> d!472477 (= (list!6782 lt!560129) (list!6785 (c!257303 lt!560129)))))

(declare-fun bs!391536 () Bool)

(assert (= bs!391536 d!472477))

(declare-fun m!1878791 () Bool)

(assert (=> bs!391536 m!1878791))

(assert (=> b!1587834 d!472477))

(declare-fun d!472479 () Bool)

(declare-fun fromListB!820 (List!17536) BalanceConc!11546)

(assert (=> d!472479 (= (seqFromList!1901 tokens!457) (fromListB!820 tokens!457))))

(declare-fun bs!391537 () Bool)

(assert (= bs!391537 d!472479))

(declare-fun m!1878793 () Bool)

(assert (=> bs!391537 m!1878793))

(assert (=> b!1587834 d!472479))

(declare-fun d!472483 () Bool)

(declare-fun lt!560230 () BalanceConc!11544)

(assert (=> d!472483 (= (list!6782 lt!560230) (originalCharacters!3890 (h!22867 tokens!457)))))

(declare-fun dynLambda!7760 (Int TokenValue!3166) BalanceConc!11544)

(assert (=> d!472483 (= lt!560230 (dynLambda!7760 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (value!97340 (h!22867 tokens!457))))))

(assert (=> d!472483 (= (charsOf!1725 (h!22867 tokens!457)) lt!560230)))

(declare-fun b_lambda!49969 () Bool)

(assert (=> (not b_lambda!49969) (not d!472483)))

(declare-fun tb!89367 () Bool)

(declare-fun t!144379 () Bool)

(assert (=> (and b!1587835 (= (toChars!4346 (transformation!3076 (h!22866 rules!1846))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457))))) t!144379) tb!89367))

(declare-fun b!1587960 () Bool)

(declare-fun e!1019995 () Bool)

(declare-fun tp!466775 () Bool)

(declare-fun inv!22880 (Conc!5800) Bool)

(assert (=> b!1587960 (= e!1019995 (and (inv!22880 (c!257303 (dynLambda!7760 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (value!97340 (h!22867 tokens!457))))) tp!466775))))

(declare-fun result!108194 () Bool)

(declare-fun inv!22881 (BalanceConc!11544) Bool)

(assert (=> tb!89367 (= result!108194 (and (inv!22881 (dynLambda!7760 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (value!97340 (h!22867 tokens!457)))) e!1019995))))

(assert (= tb!89367 b!1587960))

(declare-fun m!1878795 () Bool)

(assert (=> b!1587960 m!1878795))

(declare-fun m!1878797 () Bool)

(assert (=> tb!89367 m!1878797))

(assert (=> d!472483 t!144379))

(declare-fun b_and!111365 () Bool)

(assert (= b_and!111351 (and (=> t!144379 result!108194) b_and!111365)))

(declare-fun t!144381 () Bool)

(declare-fun tb!89369 () Bool)

(assert (=> (and b!1587833 (= (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457))))) t!144381) tb!89369))

(declare-fun result!108198 () Bool)

(assert (= result!108198 result!108194))

(assert (=> d!472483 t!144381))

(declare-fun b_and!111367 () Bool)

(assert (= b_and!111355 (and (=> t!144381 result!108198) b_and!111367)))

(declare-fun m!1878799 () Bool)

(assert (=> d!472483 m!1878799))

(declare-fun m!1878801 () Bool)

(assert (=> d!472483 m!1878801))

(assert (=> b!1587834 d!472483))

(declare-fun d!472487 () Bool)

(assert (=> d!472487 (= (seqFromList!1901 (t!144373 tokens!457)) (fromListB!820 (t!144373 tokens!457)))))

(declare-fun bs!391538 () Bool)

(assert (= bs!391538 d!472487))

(declare-fun m!1878803 () Bool)

(assert (=> bs!391538 m!1878803))

(assert (=> b!1587834 d!472487))

(declare-fun d!472489 () Bool)

(assert (=> d!472489 (= (list!6782 lt!560122) (list!6785 (c!257303 lt!560122)))))

(declare-fun bs!391539 () Bool)

(assert (= bs!391539 d!472489))

(declare-fun m!1878805 () Bool)

(assert (=> bs!391539 m!1878805))

(assert (=> b!1587834 d!472489))

(declare-fun b!1588045 () Bool)

(declare-fun e!1020043 () Bool)

(assert (=> b!1588045 (= e!1020043 true)))

(declare-fun b!1588044 () Bool)

(declare-fun e!1020042 () Bool)

(assert (=> b!1588044 (= e!1020042 e!1020043)))

(declare-fun b!1588043 () Bool)

(declare-fun e!1020041 () Bool)

(assert (=> b!1588043 (= e!1020041 e!1020042)))

(declare-fun d!472491 () Bool)

(assert (=> d!472491 e!1020041))

(assert (= b!1588044 b!1588045))

(assert (= b!1588043 b!1588044))

(assert (= (and d!472491 (is-Cons!17465 rules!1846)) b!1588043))

(declare-fun order!10327 () Int)

(declare-fun lambda!66622 () Int)

(declare-fun order!10325 () Int)

(declare-fun dynLambda!7761 (Int Int) Int)

(declare-fun dynLambda!7762 (Int Int) Int)

(assert (=> b!1588045 (< (dynLambda!7761 order!10325 (toValue!4487 (transformation!3076 (h!22866 rules!1846)))) (dynLambda!7762 order!10327 lambda!66622))))

(declare-fun order!10329 () Int)

(declare-fun dynLambda!7763 (Int Int) Int)

(assert (=> b!1588045 (< (dynLambda!7763 order!10329 (toChars!4346 (transformation!3076 (h!22866 rules!1846)))) (dynLambda!7762 order!10327 lambda!66622))))

(assert (=> d!472491 true))

(declare-fun lt!560308 () Bool)

(declare-fun forall!4013 (List!17536 Int) Bool)

(assert (=> d!472491 (= lt!560308 (forall!4013 tokens!457 lambda!66622))))

(declare-fun e!1020033 () Bool)

(assert (=> d!472491 (= lt!560308 e!1020033)))

(declare-fun res!708431 () Bool)

(assert (=> d!472491 (=> res!708431 e!1020033)))

(assert (=> d!472491 (= res!708431 (not (is-Cons!17466 tokens!457)))))

(assert (=> d!472491 (not (isEmpty!10487 rules!1846))))

(assert (=> d!472491 (= (rulesProduceEachTokenIndividuallyList!907 thiss!17113 rules!1846 tokens!457) lt!560308)))

(declare-fun b!1588033 () Bool)

(declare-fun e!1020034 () Bool)

(assert (=> b!1588033 (= e!1020033 e!1020034)))

(declare-fun res!708432 () Bool)

(assert (=> b!1588033 (=> (not res!708432) (not e!1020034))))

(assert (=> b!1588033 (= res!708432 (rulesProduceIndividualToken!1357 thiss!17113 rules!1846 (h!22867 tokens!457)))))

(declare-fun b!1588034 () Bool)

(assert (=> b!1588034 (= e!1020034 (rulesProduceEachTokenIndividuallyList!907 thiss!17113 rules!1846 (t!144373 tokens!457)))))

(assert (= (and d!472491 (not res!708431)) b!1588033))

(assert (= (and b!1588033 res!708432) b!1588034))

(declare-fun m!1878953 () Bool)

(assert (=> d!472491 m!1878953))

(assert (=> d!472491 m!1878583))

(assert (=> b!1588033 m!1878515))

(declare-fun m!1878955 () Bool)

(assert (=> b!1588034 m!1878955))

(assert (=> b!1587831 d!472491))

(declare-fun d!472519 () Bool)

(declare-fun lt!560309 () BalanceConc!11544)

(assert (=> d!472519 (= (list!6782 lt!560309) (printList!820 thiss!17113 (list!6781 lt!560140)))))

(assert (=> d!472519 (= lt!560309 (printTailRec!758 thiss!17113 lt!560140 0 (BalanceConc!11545 Empty!5800)))))

(assert (=> d!472519 (= (print!1236 thiss!17113 lt!560140) lt!560309)))

(declare-fun bs!391545 () Bool)

(assert (= bs!391545 d!472519))

(declare-fun m!1878957 () Bool)

(assert (=> bs!391545 m!1878957))

(declare-fun m!1878959 () Bool)

(assert (=> bs!391545 m!1878959))

(assert (=> bs!391545 m!1878959))

(declare-fun m!1878961 () Bool)

(assert (=> bs!391545 m!1878961))

(assert (=> bs!391545 m!1878595))

(assert (=> b!1587841 d!472519))

(declare-fun b!1588078 () Bool)

(declare-fun res!708458 () Bool)

(declare-fun e!1020060 () Bool)

(assert (=> b!1588078 (=> (not res!708458) (not e!1020060))))

(declare-fun lt!560350 () Option!3147)

(declare-fun get!4997 (Option!3147) tuple2!16946)

(assert (=> b!1588078 (= res!708458 (= (++!4559 (list!6782 (charsOf!1725 (_1!9875 (get!4997 lt!560350)))) (_2!9875 (get!4997 lt!560350))) lt!560121))))

(declare-fun bm!102947 () Bool)

(declare-fun call!102952 () Option!3147)

(declare-fun maxPrefixOneRule!738 (LexerInterface!2705 Rule!5952 List!17534) Option!3147)

(assert (=> bm!102947 (= call!102952 (maxPrefixOneRule!738 thiss!17113 (h!22866 rules!1846) lt!560121))))

(declare-fun b!1588079 () Bool)

(declare-fun res!708459 () Bool)

(assert (=> b!1588079 (=> (not res!708459) (not e!1020060))))

(declare-fun apply!4291 (TokenValueInjection!5992 BalanceConc!11544) TokenValue!3166)

(assert (=> b!1588079 (= res!708459 (= (value!97340 (_1!9875 (get!4997 lt!560350))) (apply!4291 (transformation!3076 (rule!4880 (_1!9875 (get!4997 lt!560350)))) (seqFromList!1902 (originalCharacters!3890 (_1!9875 (get!4997 lt!560350)))))))))

(declare-fun d!472521 () Bool)

(declare-fun e!1020061 () Bool)

(assert (=> d!472521 e!1020061))

(declare-fun res!708453 () Bool)

(assert (=> d!472521 (=> res!708453 e!1020061)))

(declare-fun isEmpty!10491 (Option!3147) Bool)

(assert (=> d!472521 (= res!708453 (isEmpty!10491 lt!560350))))

(declare-fun e!1020059 () Option!3147)

(assert (=> d!472521 (= lt!560350 e!1020059)))

(declare-fun c!257335 () Bool)

(assert (=> d!472521 (= c!257335 (and (is-Cons!17465 rules!1846) (is-Nil!17465 (t!144372 rules!1846))))))

(declare-fun lt!560346 () Unit!27458)

(declare-fun lt!560349 () Unit!27458)

(assert (=> d!472521 (= lt!560346 lt!560349)))

(assert (=> d!472521 (isPrefix!1336 lt!560121 lt!560121)))

(declare-fun lemmaIsPrefixRefl!923 (List!17534 List!17534) Unit!27458)

(assert (=> d!472521 (= lt!560349 (lemmaIsPrefixRefl!923 lt!560121 lt!560121))))

(declare-fun rulesValidInductive!925 (LexerInterface!2705 List!17535) Bool)

(assert (=> d!472521 (rulesValidInductive!925 thiss!17113 rules!1846)))

(assert (=> d!472521 (= (maxPrefix!1269 thiss!17113 rules!1846 lt!560121) lt!560350)))

(declare-fun b!1588080 () Bool)

(assert (=> b!1588080 (= e!1020059 call!102952)))

(declare-fun b!1588081 () Bool)

(declare-fun res!708454 () Bool)

(assert (=> b!1588081 (=> (not res!708454) (not e!1020060))))

(assert (=> b!1588081 (= res!708454 (< (size!14049 (_2!9875 (get!4997 lt!560350))) (size!14049 lt!560121)))))

(declare-fun b!1588082 () Bool)

(assert (=> b!1588082 (= e!1020061 e!1020060)))

(declare-fun res!708455 () Bool)

(assert (=> b!1588082 (=> (not res!708455) (not e!1020060))))

(assert (=> b!1588082 (= res!708455 (isDefined!2522 lt!560350))))

(declare-fun b!1588083 () Bool)

(declare-fun res!708457 () Bool)

(assert (=> b!1588083 (=> (not res!708457) (not e!1020060))))

(assert (=> b!1588083 (= res!708457 (= (list!6782 (charsOf!1725 (_1!9875 (get!4997 lt!560350)))) (originalCharacters!3890 (_1!9875 (get!4997 lt!560350)))))))

(declare-fun b!1588084 () Bool)

(declare-fun contains!3049 (List!17535 Rule!5952) Bool)

(assert (=> b!1588084 (= e!1020060 (contains!3049 rules!1846 (rule!4880 (_1!9875 (get!4997 lt!560350)))))))

(declare-fun b!1588085 () Bool)

(declare-fun lt!560348 () Option!3147)

(declare-fun lt!560347 () Option!3147)

(assert (=> b!1588085 (= e!1020059 (ite (and (is-None!3146 lt!560348) (is-None!3146 lt!560347)) None!3146 (ite (is-None!3146 lt!560347) lt!560348 (ite (is-None!3146 lt!560348) lt!560347 (ite (>= (size!14045 (_1!9875 (v!24033 lt!560348))) (size!14045 (_1!9875 (v!24033 lt!560347)))) lt!560348 lt!560347)))))))

(assert (=> b!1588085 (= lt!560348 call!102952)))

(assert (=> b!1588085 (= lt!560347 (maxPrefix!1269 thiss!17113 (t!144372 rules!1846) lt!560121))))

(declare-fun b!1588086 () Bool)

(declare-fun res!708456 () Bool)

(assert (=> b!1588086 (=> (not res!708456) (not e!1020060))))

(declare-fun matchR!1923 (Regex!4404 List!17534) Bool)

(assert (=> b!1588086 (= res!708456 (matchR!1923 (regex!3076 (rule!4880 (_1!9875 (get!4997 lt!560350)))) (list!6782 (charsOf!1725 (_1!9875 (get!4997 lt!560350))))))))

(assert (= (and d!472521 c!257335) b!1588080))

(assert (= (and d!472521 (not c!257335)) b!1588085))

(assert (= (or b!1588080 b!1588085) bm!102947))

(assert (= (and d!472521 (not res!708453)) b!1588082))

(assert (= (and b!1588082 res!708455) b!1588083))

(assert (= (and b!1588083 res!708457) b!1588081))

(assert (= (and b!1588081 res!708454) b!1588078))

(assert (= (and b!1588078 res!708458) b!1588079))

(assert (= (and b!1588079 res!708459) b!1588086))

(assert (= (and b!1588086 res!708456) b!1588084))

(declare-fun m!1879019 () Bool)

(assert (=> b!1588082 m!1879019))

(declare-fun m!1879021 () Bool)

(assert (=> bm!102947 m!1879021))

(declare-fun m!1879023 () Bool)

(assert (=> b!1588086 m!1879023))

(declare-fun m!1879025 () Bool)

(assert (=> b!1588086 m!1879025))

(assert (=> b!1588086 m!1879025))

(declare-fun m!1879027 () Bool)

(assert (=> b!1588086 m!1879027))

(assert (=> b!1588086 m!1879027))

(declare-fun m!1879029 () Bool)

(assert (=> b!1588086 m!1879029))

(assert (=> b!1588079 m!1879023))

(declare-fun m!1879031 () Bool)

(assert (=> b!1588079 m!1879031))

(assert (=> b!1588079 m!1879031))

(declare-fun m!1879033 () Bool)

(assert (=> b!1588079 m!1879033))

(declare-fun m!1879035 () Bool)

(assert (=> d!472521 m!1879035))

(declare-fun m!1879037 () Bool)

(assert (=> d!472521 m!1879037))

(declare-fun m!1879039 () Bool)

(assert (=> d!472521 m!1879039))

(declare-fun m!1879041 () Bool)

(assert (=> d!472521 m!1879041))

(assert (=> b!1588078 m!1879023))

(assert (=> b!1588078 m!1879025))

(assert (=> b!1588078 m!1879025))

(assert (=> b!1588078 m!1879027))

(assert (=> b!1588078 m!1879027))

(declare-fun m!1879043 () Bool)

(assert (=> b!1588078 m!1879043))

(assert (=> b!1588081 m!1879023))

(declare-fun m!1879045 () Bool)

(assert (=> b!1588081 m!1879045))

(declare-fun m!1879047 () Bool)

(assert (=> b!1588081 m!1879047))

(declare-fun m!1879049 () Bool)

(assert (=> b!1588085 m!1879049))

(assert (=> b!1588083 m!1879023))

(assert (=> b!1588083 m!1879025))

(assert (=> b!1588083 m!1879025))

(assert (=> b!1588083 m!1879027))

(assert (=> b!1588084 m!1879023))

(declare-fun m!1879051 () Bool)

(assert (=> b!1588084 m!1879051))

(assert (=> b!1587841 d!472521))

(declare-fun d!472535 () Bool)

(declare-fun lt!560371 () BalanceConc!11544)

(declare-fun printListTailRec!318 (LexerInterface!2705 List!17536 List!17534) List!17534)

(declare-fun dropList!533 (BalanceConc!11546 Int) List!17536)

(assert (=> d!472535 (= (list!6782 lt!560371) (printListTailRec!318 thiss!17113 (dropList!533 lt!560140 0) (list!6782 (BalanceConc!11545 Empty!5800))))))

(declare-fun e!1020074 () BalanceConc!11544)

(assert (=> d!472535 (= lt!560371 e!1020074)))

(declare-fun c!257338 () Bool)

(assert (=> d!472535 (= c!257338 (>= 0 (size!14050 lt!560140)))))

(declare-fun e!1020073 () Bool)

(assert (=> d!472535 e!1020073))

(declare-fun res!708471 () Bool)

(assert (=> d!472535 (=> (not res!708471) (not e!1020073))))

(assert (=> d!472535 (= res!708471 (>= 0 0))))

(assert (=> d!472535 (= (printTailRec!758 thiss!17113 lt!560140 0 (BalanceConc!11545 Empty!5800)) lt!560371)))

(declare-fun b!1588103 () Bool)

(assert (=> b!1588103 (= e!1020073 (<= 0 (size!14050 lt!560140)))))

(declare-fun b!1588104 () Bool)

(assert (=> b!1588104 (= e!1020074 (BalanceConc!11545 Empty!5800))))

(declare-fun b!1588105 () Bool)

(declare-fun apply!4292 (BalanceConc!11546 Int) Token!5718)

(assert (=> b!1588105 (= e!1020074 (printTailRec!758 thiss!17113 lt!560140 (+ 0 1) (++!4560 (BalanceConc!11545 Empty!5800) (charsOf!1725 (apply!4292 lt!560140 0)))))))

(declare-fun lt!560372 () List!17536)

(assert (=> b!1588105 (= lt!560372 (list!6781 lt!560140))))

(declare-fun lt!560369 () Unit!27458)

(declare-fun lemmaDropApply!525 (List!17536 Int) Unit!27458)

(assert (=> b!1588105 (= lt!560369 (lemmaDropApply!525 lt!560372 0))))

(declare-fun head!3233 (List!17536) Token!5718)

(declare-fun drop!827 (List!17536 Int) List!17536)

(declare-fun apply!4293 (List!17536 Int) Token!5718)

(assert (=> b!1588105 (= (head!3233 (drop!827 lt!560372 0)) (apply!4293 lt!560372 0))))

(declare-fun lt!560374 () Unit!27458)

(assert (=> b!1588105 (= lt!560374 lt!560369)))

(declare-fun lt!560373 () List!17536)

(assert (=> b!1588105 (= lt!560373 (list!6781 lt!560140))))

(declare-fun lt!560370 () Unit!27458)

(declare-fun lemmaDropTail!505 (List!17536 Int) Unit!27458)

(assert (=> b!1588105 (= lt!560370 (lemmaDropTail!505 lt!560373 0))))

(declare-fun tail!2282 (List!17536) List!17536)

(assert (=> b!1588105 (= (tail!2282 (drop!827 lt!560373 0)) (drop!827 lt!560373 (+ 0 1)))))

(declare-fun lt!560375 () Unit!27458)

(assert (=> b!1588105 (= lt!560375 lt!560370)))

(assert (= (and d!472535 res!708471) b!1588103))

(assert (= (and d!472535 c!257338) b!1588104))

(assert (= (and d!472535 (not c!257338)) b!1588105))

(declare-fun m!1879075 () Bool)

(assert (=> d!472535 m!1879075))

(declare-fun m!1879077 () Bool)

(assert (=> d!472535 m!1879077))

(declare-fun m!1879079 () Bool)

(assert (=> d!472535 m!1879079))

(assert (=> d!472535 m!1879075))

(declare-fun m!1879081 () Bool)

(assert (=> d!472535 m!1879081))

(assert (=> d!472535 m!1879079))

(declare-fun m!1879083 () Bool)

(assert (=> d!472535 m!1879083))

(assert (=> b!1588103 m!1879083))

(declare-fun m!1879085 () Bool)

(assert (=> b!1588105 m!1879085))

(declare-fun m!1879087 () Bool)

(assert (=> b!1588105 m!1879087))

(assert (=> b!1588105 m!1879085))

(assert (=> b!1588105 m!1878959))

(declare-fun m!1879089 () Bool)

(assert (=> b!1588105 m!1879089))

(declare-fun m!1879091 () Bool)

(assert (=> b!1588105 m!1879091))

(declare-fun m!1879093 () Bool)

(assert (=> b!1588105 m!1879093))

(declare-fun m!1879095 () Bool)

(assert (=> b!1588105 m!1879095))

(assert (=> b!1588105 m!1879091))

(declare-fun m!1879097 () Bool)

(assert (=> b!1588105 m!1879097))

(declare-fun m!1879099 () Bool)

(assert (=> b!1588105 m!1879099))

(declare-fun m!1879101 () Bool)

(assert (=> b!1588105 m!1879101))

(declare-fun m!1879103 () Bool)

(assert (=> b!1588105 m!1879103))

(declare-fun m!1879105 () Bool)

(assert (=> b!1588105 m!1879105))

(assert (=> b!1588105 m!1879099))

(declare-fun m!1879107 () Bool)

(assert (=> b!1588105 m!1879107))

(assert (=> b!1588105 m!1879097))

(assert (=> b!1588105 m!1879095))

(assert (=> b!1587841 d!472535))

(declare-fun d!472545 () Bool)

(assert (=> d!472545 (= (list!6782 lt!560144) (list!6785 (c!257303 lt!560144)))))

(declare-fun bs!391551 () Bool)

(assert (= bs!391551 d!472545))

(declare-fun m!1879109 () Bool)

(assert (=> bs!391551 m!1879109))

(assert (=> b!1587841 d!472545))

(declare-fun d!472547 () Bool)

(declare-fun c!257341 () Bool)

(assert (=> d!472547 (= c!257341 (is-Cons!17466 (Cons!17466 (h!22867 tokens!457) Nil!17466)))))

(declare-fun e!1020077 () List!17534)

(assert (=> d!472547 (= (printList!820 thiss!17113 (Cons!17466 (h!22867 tokens!457) Nil!17466)) e!1020077)))

(declare-fun b!1588110 () Bool)

(assert (=> b!1588110 (= e!1020077 (++!4559 (list!6782 (charsOf!1725 (h!22867 (Cons!17466 (h!22867 tokens!457) Nil!17466)))) (printList!820 thiss!17113 (t!144373 (Cons!17466 (h!22867 tokens!457) Nil!17466)))))))

(declare-fun b!1588111 () Bool)

(assert (=> b!1588111 (= e!1020077 Nil!17464)))

(assert (= (and d!472547 c!257341) b!1588110))

(assert (= (and d!472547 (not c!257341)) b!1588111))

(declare-fun m!1879111 () Bool)

(assert (=> b!1588110 m!1879111))

(assert (=> b!1588110 m!1879111))

(declare-fun m!1879113 () Bool)

(assert (=> b!1588110 m!1879113))

(declare-fun m!1879115 () Bool)

(assert (=> b!1588110 m!1879115))

(assert (=> b!1588110 m!1879113))

(assert (=> b!1588110 m!1879115))

(declare-fun m!1879117 () Bool)

(assert (=> b!1588110 m!1879117))

(assert (=> b!1587841 d!472547))

(declare-fun d!472549 () Bool)

(declare-fun e!1020080 () Bool)

(assert (=> d!472549 e!1020080))

(declare-fun res!708474 () Bool)

(assert (=> d!472549 (=> (not res!708474) (not e!1020080))))

(declare-fun lt!560378 () BalanceConc!11546)

(assert (=> d!472549 (= res!708474 (= (list!6781 lt!560378) (Cons!17466 (h!22867 tokens!457) Nil!17466)))))

(declare-fun singleton!595 (Token!5718) BalanceConc!11546)

(assert (=> d!472549 (= lt!560378 (singleton!595 (h!22867 tokens!457)))))

(assert (=> d!472549 (= (singletonSeq!1431 (h!22867 tokens!457)) lt!560378)))

(declare-fun b!1588114 () Bool)

(declare-fun isBalanced!1715 (Conc!5801) Bool)

(assert (=> b!1588114 (= e!1020080 (isBalanced!1715 (c!257305 lt!560378)))))

(assert (= (and d!472549 res!708474) b!1588114))

(declare-fun m!1879119 () Bool)

(assert (=> d!472549 m!1879119))

(declare-fun m!1879121 () Bool)

(assert (=> d!472549 m!1879121))

(declare-fun m!1879123 () Bool)

(assert (=> b!1588114 m!1879123))

(assert (=> b!1587841 d!472549))

(declare-fun d!472551 () Bool)

(assert (=> d!472551 (= (isDefined!2522 lt!560133) (not (isEmpty!10491 lt!560133)))))

(declare-fun bs!391552 () Bool)

(assert (= bs!391552 d!472551))

(declare-fun m!1879125 () Bool)

(assert (=> bs!391552 m!1879125))

(assert (=> b!1587830 d!472551))

(declare-fun b!1588157 () Bool)

(declare-fun e!1020104 () Unit!27458)

(declare-fun Unit!27463 () Unit!27458)

(assert (=> b!1588157 (= e!1020104 Unit!27463)))

(declare-fun lt!560425 () List!17534)

(assert (=> b!1588157 (= lt!560425 (++!4559 lt!560124 lt!560126))))

(declare-fun lt!560437 () Token!5718)

(declare-fun lt!560433 () Unit!27458)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!141 (LexerInterface!2705 Rule!5952 List!17535 List!17534) Unit!27458)

(assert (=> b!1588157 (= lt!560433 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!141 thiss!17113 (rule!4880 lt!560437) rules!1846 lt!560425))))

(assert (=> b!1588157 (isEmpty!10491 (maxPrefixOneRule!738 thiss!17113 (rule!4880 lt!560437) lt!560425))))

(declare-fun lt!560428 () Unit!27458)

(assert (=> b!1588157 (= lt!560428 lt!560433)))

(declare-fun lt!560426 () List!17534)

(assert (=> b!1588157 (= lt!560426 (list!6782 (charsOf!1725 lt!560437)))))

(declare-fun lt!560431 () Unit!27458)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!137 (LexerInterface!2705 Rule!5952 List!17534 List!17534) Unit!27458)

(assert (=> b!1588157 (= lt!560431 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!137 thiss!17113 (rule!4880 lt!560437) lt!560426 (++!4559 lt!560124 lt!560126)))))

(assert (=> b!1588157 (not (matchR!1923 (regex!3076 (rule!4880 lt!560437)) lt!560426))))

(declare-fun lt!560434 () Unit!27458)

(assert (=> b!1588157 (= lt!560434 lt!560431)))

(assert (=> b!1588157 false))

(declare-fun b!1588158 () Bool)

(declare-fun Unit!27464 () Unit!27458)

(assert (=> b!1588158 (= e!1020104 Unit!27464)))

(declare-fun e!1020103 () Bool)

(declare-fun b!1588156 () Bool)

(declare-datatypes ((Option!3149 0))(
  ( (None!3148) (Some!3148 (v!24041 Rule!5952)) )
))
(declare-fun get!4998 (Option!3149) Rule!5952)

(declare-fun getRuleFromTag!247 (LexerInterface!2705 List!17535 String!20164) Option!3149)

(assert (=> b!1588156 (= e!1020103 (= (rule!4880 lt!560437) (get!4998 (getRuleFromTag!247 thiss!17113 rules!1846 (tag!3346 (rule!4880 lt!560437))))))))

(declare-fun b!1588155 () Bool)

(declare-fun res!708497 () Bool)

(assert (=> b!1588155 (=> (not res!708497) (not e!1020103))))

(assert (=> b!1588155 (= res!708497 (matchR!1923 (regex!3076 (get!4998 (getRuleFromTag!247 thiss!17113 rules!1846 (tag!3346 (rule!4880 lt!560437))))) (list!6782 (charsOf!1725 lt!560437))))))

(declare-fun d!472553 () Bool)

(assert (=> d!472553 (isDefined!2522 (maxPrefix!1269 thiss!17113 rules!1846 (++!4559 lt!560124 lt!560126)))))

(declare-fun lt!560424 () Unit!27458)

(assert (=> d!472553 (= lt!560424 e!1020104)))

(declare-fun c!257351 () Bool)

(assert (=> d!472553 (= c!257351 (isEmpty!10491 (maxPrefix!1269 thiss!17113 rules!1846 (++!4559 lt!560124 lt!560126))))))

(declare-fun lt!560432 () Unit!27458)

(declare-fun lt!560423 () Unit!27458)

(assert (=> d!472553 (= lt!560432 lt!560423)))

(assert (=> d!472553 e!1020103))

(declare-fun res!708498 () Bool)

(assert (=> d!472553 (=> (not res!708498) (not e!1020103))))

(declare-fun isDefined!2524 (Option!3149) Bool)

(assert (=> d!472553 (= res!708498 (isDefined!2524 (getRuleFromTag!247 thiss!17113 rules!1846 (tag!3346 (rule!4880 lt!560437)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!247 (LexerInterface!2705 List!17535 List!17534 Token!5718) Unit!27458)

(assert (=> d!472553 (= lt!560423 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!247 thiss!17113 rules!1846 lt!560124 lt!560437))))

(declare-fun lt!560427 () Unit!27458)

(declare-fun lt!560430 () Unit!27458)

(assert (=> d!472553 (= lt!560427 lt!560430)))

(declare-fun lt!560439 () List!17534)

(assert (=> d!472553 (isPrefix!1336 lt!560439 (++!4559 lt!560124 lt!560126))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!133 (List!17534 List!17534 List!17534) Unit!27458)

(assert (=> d!472553 (= lt!560430 (lemmaPrefixStaysPrefixWhenAddingToSuffix!133 lt!560439 lt!560124 lt!560126))))

(assert (=> d!472553 (= lt!560439 (list!6782 (charsOf!1725 lt!560437)))))

(declare-fun lt!560429 () Unit!27458)

(declare-fun lt!560436 () Unit!27458)

(assert (=> d!472553 (= lt!560429 lt!560436)))

(declare-fun lt!560438 () List!17534)

(declare-fun lt!560435 () List!17534)

(assert (=> d!472553 (isPrefix!1336 lt!560438 (++!4559 lt!560438 lt!560435))))

(assert (=> d!472553 (= lt!560436 (lemmaConcatTwoListThenFirstIsPrefix!861 lt!560438 lt!560435))))

(assert (=> d!472553 (= lt!560435 (_2!9875 (get!4997 (maxPrefix!1269 thiss!17113 rules!1846 lt!560124))))))

(assert (=> d!472553 (= lt!560438 (list!6782 (charsOf!1725 lt!560437)))))

(assert (=> d!472553 (= lt!560437 (head!3233 (list!6781 (_1!9874 (lex!1189 thiss!17113 rules!1846 (seqFromList!1902 lt!560124))))))))

(assert (=> d!472553 (not (isEmpty!10487 rules!1846))))

(assert (=> d!472553 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!279 thiss!17113 rules!1846 lt!560124 lt!560126) lt!560424)))

(assert (= (and d!472553 res!708498) b!1588155))

(assert (= (and b!1588155 res!708497) b!1588156))

(assert (= (and d!472553 c!257351) b!1588157))

(assert (= (and d!472553 (not c!257351)) b!1588158))

(assert (=> b!1588157 m!1878531))

(assert (=> b!1588157 m!1878531))

(declare-fun m!1879211 () Bool)

(assert (=> b!1588157 m!1879211))

(declare-fun m!1879213 () Bool)

(assert (=> b!1588157 m!1879213))

(declare-fun m!1879215 () Bool)

(assert (=> b!1588157 m!1879215))

(assert (=> b!1588157 m!1879215))

(declare-fun m!1879217 () Bool)

(assert (=> b!1588157 m!1879217))

(declare-fun m!1879219 () Bool)

(assert (=> b!1588157 m!1879219))

(assert (=> b!1588157 m!1879213))

(declare-fun m!1879221 () Bool)

(assert (=> b!1588157 m!1879221))

(declare-fun m!1879223 () Bool)

(assert (=> b!1588157 m!1879223))

(declare-fun m!1879225 () Bool)

(assert (=> b!1588156 m!1879225))

(assert (=> b!1588156 m!1879225))

(declare-fun m!1879227 () Bool)

(assert (=> b!1588156 m!1879227))

(assert (=> b!1588155 m!1879225))

(assert (=> b!1588155 m!1879213))

(assert (=> b!1588155 m!1879221))

(assert (=> b!1588155 m!1879221))

(declare-fun m!1879229 () Bool)

(assert (=> b!1588155 m!1879229))

(assert (=> b!1588155 m!1879213))

(assert (=> b!1588155 m!1879225))

(assert (=> b!1588155 m!1879227))

(declare-fun m!1879231 () Bool)

(assert (=> d!472553 m!1879231))

(assert (=> d!472553 m!1878531))

(declare-fun m!1879233 () Bool)

(assert (=> d!472553 m!1879233))

(assert (=> d!472553 m!1879225))

(declare-fun m!1879235 () Bool)

(assert (=> d!472553 m!1879235))

(declare-fun m!1879237 () Bool)

(assert (=> d!472553 m!1879237))

(assert (=> d!472553 m!1879213))

(assert (=> d!472553 m!1879221))

(assert (=> d!472553 m!1878583))

(assert (=> d!472553 m!1878549))

(declare-fun m!1879239 () Bool)

(assert (=> d!472553 m!1879239))

(assert (=> d!472553 m!1879233))

(declare-fun m!1879241 () Bool)

(assert (=> d!472553 m!1879241))

(assert (=> d!472553 m!1879235))

(declare-fun m!1879243 () Bool)

(assert (=> d!472553 m!1879243))

(assert (=> d!472553 m!1878531))

(declare-fun m!1879245 () Bool)

(assert (=> d!472553 m!1879245))

(assert (=> d!472553 m!1878531))

(assert (=> d!472553 m!1879235))

(declare-fun m!1879247 () Bool)

(assert (=> d!472553 m!1879247))

(assert (=> d!472553 m!1878549))

(assert (=> d!472553 m!1878551))

(declare-fun m!1879249 () Bool)

(assert (=> d!472553 m!1879249))

(assert (=> d!472553 m!1879213))

(assert (=> d!472553 m!1879247))

(declare-fun m!1879251 () Bool)

(assert (=> d!472553 m!1879251))

(declare-fun m!1879253 () Bool)

(assert (=> d!472553 m!1879253))

(assert (=> d!472553 m!1879231))

(declare-fun m!1879255 () Bool)

(assert (=> d!472553 m!1879255))

(assert (=> d!472553 m!1879225))

(declare-fun m!1879257 () Bool)

(assert (=> d!472553 m!1879257))

(assert (=> b!1587830 d!472553))

(declare-fun d!472581 () Bool)

(declare-fun lt!560442 () Int)

(assert (=> d!472581 (= lt!560442 (size!14049 (list!6782 lt!560138)))))

(declare-fun size!14051 (Conc!5800) Int)

(assert (=> d!472581 (= lt!560442 (size!14051 (c!257303 lt!560138)))))

(assert (=> d!472581 (= (size!14046 lt!560138) lt!560442)))

(declare-fun bs!391562 () Bool)

(assert (= bs!391562 d!472581))

(declare-fun m!1879259 () Bool)

(assert (=> bs!391562 m!1879259))

(assert (=> bs!391562 m!1879259))

(declare-fun m!1879261 () Bool)

(assert (=> bs!391562 m!1879261))

(declare-fun m!1879263 () Bool)

(assert (=> bs!391562 m!1879263))

(assert (=> b!1587843 d!472581))

(declare-fun d!472583 () Bool)

(assert (=> d!472583 (= (separableTokensPredicate!647 thiss!17113 (h!22867 tokens!457) (h!22867 (t!144373 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!428 (rulesRegex!466 thiss!17113 rules!1846) (++!4560 (charsOf!1725 (h!22867 tokens!457)) (singletonSeq!1430 (apply!4289 (charsOf!1725 (h!22867 (t!144373 tokens!457))) 0))))))))

(declare-fun bs!391563 () Bool)

(assert (= bs!391563 d!472583))

(assert (=> bs!391563 m!1878605))

(assert (=> bs!391563 m!1878535))

(assert (=> bs!391563 m!1878535))

(declare-fun m!1879265 () Bool)

(assert (=> bs!391563 m!1879265))

(declare-fun m!1879267 () Bool)

(assert (=> bs!391563 m!1879267))

(assert (=> bs!391563 m!1878607))

(declare-fun m!1879269 () Bool)

(assert (=> bs!391563 m!1879269))

(assert (=> bs!391563 m!1878607))

(assert (=> bs!391563 m!1879269))

(assert (=> bs!391563 m!1879265))

(assert (=> bs!391563 m!1878605))

(assert (=> bs!391563 m!1879267))

(declare-fun m!1879271 () Bool)

(assert (=> bs!391563 m!1879271))

(assert (=> b!1587832 d!472583))

(declare-fun d!472585 () Bool)

(declare-fun e!1020107 () Bool)

(assert (=> d!472585 e!1020107))

(declare-fun res!708501 () Bool)

(assert (=> d!472585 (=> (not res!708501) (not e!1020107))))

(declare-fun prepend!568 (Conc!5801 Token!5718) Conc!5801)

(assert (=> d!472585 (= res!708501 (isBalanced!1715 (prepend!568 (c!257305 (seqFromList!1901 (t!144373 (t!144373 tokens!457)))) (h!22867 (t!144373 tokens!457)))))))

(declare-fun lt!560445 () BalanceConc!11546)

(assert (=> d!472585 (= lt!560445 (BalanceConc!11547 (prepend!568 (c!257305 (seqFromList!1901 (t!144373 (t!144373 tokens!457)))) (h!22867 (t!144373 tokens!457)))))))

(assert (=> d!472585 (= (prepend!566 (seqFromList!1901 (t!144373 (t!144373 tokens!457))) (h!22867 (t!144373 tokens!457))) lt!560445)))

(declare-fun b!1588161 () Bool)

(assert (=> b!1588161 (= e!1020107 (= (list!6781 lt!560445) (Cons!17466 (h!22867 (t!144373 tokens!457)) (list!6781 (seqFromList!1901 (t!144373 (t!144373 tokens!457)))))))))

(assert (= (and d!472585 res!708501) b!1588161))

(declare-fun m!1879273 () Bool)

(assert (=> d!472585 m!1879273))

(assert (=> d!472585 m!1879273))

(declare-fun m!1879275 () Bool)

(assert (=> d!472585 m!1879275))

(declare-fun m!1879277 () Bool)

(assert (=> b!1588161 m!1879277))

(assert (=> b!1588161 m!1878571))

(declare-fun m!1879279 () Bool)

(assert (=> b!1588161 m!1879279))

(assert (=> b!1587842 d!472585))

(declare-fun d!472587 () Bool)

(declare-fun list!6786 (Conc!5801) List!17536)

(assert (=> d!472587 (= (list!6781 (prepend!566 (seqFromList!1901 (t!144373 (t!144373 tokens!457))) (h!22867 (t!144373 tokens!457)))) (list!6786 (c!257305 (prepend!566 (seqFromList!1901 (t!144373 (t!144373 tokens!457))) (h!22867 (t!144373 tokens!457))))))))

(declare-fun bs!391564 () Bool)

(assert (= bs!391564 d!472587))

(declare-fun m!1879281 () Bool)

(assert (=> bs!391564 m!1879281))

(assert (=> b!1587842 d!472587))

(declare-fun d!472589 () Bool)

(assert (=> d!472589 (= (list!6781 (_1!9874 lt!560123)) (list!6781 (prepend!566 (seqFromList!1901 (t!144373 (t!144373 tokens!457))) (h!22867 (t!144373 tokens!457)))))))

(declare-fun lt!560448 () Unit!27458)

(declare-fun choose!9509 (Token!5718 List!17536 BalanceConc!11546) Unit!27458)

(assert (=> d!472589 (= lt!560448 (choose!9509 (h!22867 (t!144373 tokens!457)) (t!144373 (t!144373 tokens!457)) (_1!9874 lt!560123)))))

(declare-fun $colon$colon!284 (List!17536 Token!5718) List!17536)

(assert (=> d!472589 (= (list!6781 (_1!9874 lt!560123)) (list!6781 (seqFromList!1901 ($colon$colon!284 (t!144373 (t!144373 tokens!457)) (h!22867 (t!144373 tokens!457))))))))

(assert (=> d!472589 (= (seqFromListBHdTlConstructive!153 (h!22867 (t!144373 tokens!457)) (t!144373 (t!144373 tokens!457)) (_1!9874 lt!560123)) lt!560448)))

(declare-fun bs!391565 () Bool)

(assert (= bs!391565 d!472589))

(declare-fun m!1879283 () Bool)

(assert (=> bs!391565 m!1879283))

(declare-fun m!1879285 () Bool)

(assert (=> bs!391565 m!1879285))

(declare-fun m!1879287 () Bool)

(assert (=> bs!391565 m!1879287))

(assert (=> bs!391565 m!1879287))

(declare-fun m!1879289 () Bool)

(assert (=> bs!391565 m!1879289))

(assert (=> bs!391565 m!1878573))

(assert (=> bs!391565 m!1878575))

(assert (=> bs!391565 m!1878555))

(assert (=> bs!391565 m!1879285))

(assert (=> bs!391565 m!1878571))

(assert (=> bs!391565 m!1878573))

(assert (=> bs!391565 m!1878571))

(assert (=> b!1587842 d!472589))

(declare-fun d!472591 () Bool)

(assert (=> d!472591 (= (seqFromList!1901 (t!144373 (t!144373 tokens!457))) (fromListB!820 (t!144373 (t!144373 tokens!457))))))

(declare-fun bs!391566 () Bool)

(assert (= bs!391566 d!472591))

(declare-fun m!1879291 () Bool)

(assert (=> bs!391566 m!1879291))

(assert (=> b!1587842 d!472591))

(declare-fun d!472593 () Bool)

(assert (=> d!472593 (= (list!6781 lt!560125) (list!6786 (c!257305 lt!560125)))))

(declare-fun bs!391567 () Bool)

(assert (= bs!391567 d!472593))

(declare-fun m!1879293 () Bool)

(assert (=> bs!391567 m!1879293))

(assert (=> b!1587842 d!472593))

(declare-fun b!1588172 () Bool)

(declare-fun e!1020115 () Bool)

(declare-fun e!1020114 () Bool)

(assert (=> b!1588172 (= e!1020115 e!1020114)))

(declare-fun c!257358 () Bool)

(assert (=> b!1588172 (= c!257358 (is-IntegerValue!9499 (value!97340 (h!22867 tokens!457))))))

(declare-fun d!472595 () Bool)

(declare-fun c!257357 () Bool)

(assert (=> d!472595 (= c!257357 (is-IntegerValue!9498 (value!97340 (h!22867 tokens!457))))))

(assert (=> d!472595 (= (inv!21 (value!97340 (h!22867 tokens!457))) e!1020115)))

(declare-fun b!1588173 () Bool)

(declare-fun e!1020116 () Bool)

(declare-fun inv!15 (TokenValue!3166) Bool)

(assert (=> b!1588173 (= e!1020116 (inv!15 (value!97340 (h!22867 tokens!457))))))

(declare-fun b!1588174 () Bool)

(declare-fun inv!16 (TokenValue!3166) Bool)

(assert (=> b!1588174 (= e!1020115 (inv!16 (value!97340 (h!22867 tokens!457))))))

(declare-fun b!1588175 () Bool)

(declare-fun inv!17 (TokenValue!3166) Bool)

(assert (=> b!1588175 (= e!1020114 (inv!17 (value!97340 (h!22867 tokens!457))))))

(declare-fun b!1588176 () Bool)

(declare-fun res!708504 () Bool)

(assert (=> b!1588176 (=> res!708504 e!1020116)))

(assert (=> b!1588176 (= res!708504 (not (is-IntegerValue!9500 (value!97340 (h!22867 tokens!457)))))))

(assert (=> b!1588176 (= e!1020114 e!1020116)))

(assert (= (and d!472595 c!257357) b!1588174))

(assert (= (and d!472595 (not c!257357)) b!1588172))

(assert (= (and b!1588172 c!257358) b!1588175))

(assert (= (and b!1588172 (not c!257358)) b!1588176))

(assert (= (and b!1588176 (not res!708504)) b!1588173))

(declare-fun m!1879295 () Bool)

(assert (=> b!1588173 m!1879295))

(declare-fun m!1879297 () Bool)

(assert (=> b!1588174 m!1879297))

(declare-fun m!1879299 () Bool)

(assert (=> b!1588175 m!1879299))

(assert (=> b!1587839 d!472595))

(declare-fun d!472597 () Bool)

(declare-fun res!708519 () Bool)

(declare-fun e!1020137 () Bool)

(assert (=> d!472597 (=> res!708519 e!1020137)))

(assert (=> d!472597 (= res!708519 (or (not (is-Cons!17466 tokens!457)) (not (is-Cons!17466 (t!144373 tokens!457)))))))

(assert (=> d!472597 (= (tokensListTwoByTwoPredicateSeparableList!398 thiss!17113 tokens!457 rules!1846) e!1020137)))

(declare-fun b!1588202 () Bool)

(declare-fun e!1020136 () Bool)

(assert (=> b!1588202 (= e!1020137 e!1020136)))

(declare-fun res!708518 () Bool)

(assert (=> b!1588202 (=> (not res!708518) (not e!1020136))))

(assert (=> b!1588202 (= res!708518 (separableTokensPredicate!647 thiss!17113 (h!22867 tokens!457) (h!22867 (t!144373 tokens!457)) rules!1846))))

(declare-fun lt!560488 () Unit!27458)

(declare-fun Unit!27465 () Unit!27458)

(assert (=> b!1588202 (= lt!560488 Unit!27465)))

(assert (=> b!1588202 (> (size!14046 (charsOf!1725 (h!22867 (t!144373 tokens!457)))) 0)))

(declare-fun lt!560487 () Unit!27458)

(declare-fun Unit!27466 () Unit!27458)

(assert (=> b!1588202 (= lt!560487 Unit!27466)))

(assert (=> b!1588202 (rulesProduceIndividualToken!1357 thiss!17113 rules!1846 (h!22867 (t!144373 tokens!457)))))

(declare-fun lt!560485 () Unit!27458)

(declare-fun Unit!27467 () Unit!27458)

(assert (=> b!1588202 (= lt!560485 Unit!27467)))

(assert (=> b!1588202 (rulesProduceIndividualToken!1357 thiss!17113 rules!1846 (h!22867 tokens!457))))

(declare-fun lt!560484 () Unit!27458)

(declare-fun lt!560489 () Unit!27458)

(assert (=> b!1588202 (= lt!560484 lt!560489)))

(assert (=> b!1588202 (rulesProduceIndividualToken!1357 thiss!17113 rules!1846 (h!22867 (t!144373 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!528 (LexerInterface!2705 List!17535 List!17536 Token!5718) Unit!27458)

(assert (=> b!1588202 (= lt!560489 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!528 thiss!17113 rules!1846 tokens!457 (h!22867 (t!144373 tokens!457))))))

(declare-fun lt!560490 () Unit!27458)

(declare-fun lt!560486 () Unit!27458)

(assert (=> b!1588202 (= lt!560490 lt!560486)))

(assert (=> b!1588202 (rulesProduceIndividualToken!1357 thiss!17113 rules!1846 (h!22867 tokens!457))))

(assert (=> b!1588202 (= lt!560486 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!528 thiss!17113 rules!1846 tokens!457 (h!22867 tokens!457)))))

(declare-fun b!1588203 () Bool)

(assert (=> b!1588203 (= e!1020136 (tokensListTwoByTwoPredicateSeparableList!398 thiss!17113 (Cons!17466 (h!22867 (t!144373 tokens!457)) (t!144373 (t!144373 tokens!457))) rules!1846))))

(assert (= (and d!472597 (not res!708519)) b!1588202))

(assert (= (and b!1588202 res!708518) b!1588203))

(assert (=> b!1588202 m!1878515))

(declare-fun m!1879319 () Bool)

(assert (=> b!1588202 m!1879319))

(declare-fun m!1879321 () Bool)

(assert (=> b!1588202 m!1879321))

(assert (=> b!1588202 m!1878607))

(declare-fun m!1879323 () Bool)

(assert (=> b!1588202 m!1879323))

(assert (=> b!1588202 m!1878601))

(assert (=> b!1588202 m!1878607))

(declare-fun m!1879325 () Bool)

(assert (=> b!1588202 m!1879325))

(declare-fun m!1879327 () Bool)

(assert (=> b!1588203 m!1879327))

(assert (=> b!1587828 d!472597))

(declare-fun d!472605 () Bool)

(assert (=> d!472605 (= (isEmpty!10487 rules!1846) (is-Nil!17465 rules!1846))))

(assert (=> b!1587849 d!472605))

(declare-fun d!472607 () Bool)

(declare-fun res!708522 () Bool)

(declare-fun e!1020140 () Bool)

(assert (=> d!472607 (=> (not res!708522) (not e!1020140))))

(declare-fun rulesValid!1091 (LexerInterface!2705 List!17535) Bool)

(assert (=> d!472607 (= res!708522 (rulesValid!1091 thiss!17113 rules!1846))))

(assert (=> d!472607 (= (rulesInvariant!2374 thiss!17113 rules!1846) e!1020140)))

(declare-fun b!1588206 () Bool)

(declare-datatypes ((List!17541 0))(
  ( (Nil!17471) (Cons!17471 (h!22872 String!20164) (t!144412 List!17541)) )
))
(declare-fun noDuplicateTag!1091 (LexerInterface!2705 List!17535 List!17541) Bool)

(assert (=> b!1588206 (= e!1020140 (noDuplicateTag!1091 thiss!17113 rules!1846 Nil!17471))))

(assert (= (and d!472607 res!708522) b!1588206))

(declare-fun m!1879329 () Bool)

(assert (=> d!472607 m!1879329))

(declare-fun m!1879331 () Bool)

(assert (=> b!1588206 m!1879331))

(assert (=> b!1587838 d!472607))

(declare-fun d!472609 () Bool)

(declare-fun lt!560493 () Bool)

(declare-fun isEmpty!10492 (List!17536) Bool)

(assert (=> d!472609 (= lt!560493 (isEmpty!10492 (list!6781 (_1!9874 (lex!1189 thiss!17113 rules!1846 (seqFromList!1902 lt!560124))))))))

(declare-fun isEmpty!10493 (Conc!5801) Bool)

(assert (=> d!472609 (= lt!560493 (isEmpty!10493 (c!257305 (_1!9874 (lex!1189 thiss!17113 rules!1846 (seqFromList!1902 lt!560124))))))))

(assert (=> d!472609 (= (isEmpty!10486 (_1!9874 (lex!1189 thiss!17113 rules!1846 (seqFromList!1902 lt!560124)))) lt!560493)))

(declare-fun bs!391569 () Bool)

(assert (= bs!391569 d!472609))

(assert (=> bs!391569 m!1879233))

(assert (=> bs!391569 m!1879233))

(declare-fun m!1879333 () Bool)

(assert (=> bs!391569 m!1879333))

(declare-fun m!1879335 () Bool)

(assert (=> bs!391569 m!1879335))

(assert (=> b!1587840 d!472609))

(declare-fun e!1020142 () Bool)

(declare-fun lt!560494 () tuple2!16944)

(declare-fun b!1588207 () Bool)

(assert (=> b!1588207 (= e!1020142 (= (list!6782 (_2!9874 lt!560494)) (_2!9878 (lexList!792 thiss!17113 rules!1846 (list!6782 (seqFromList!1902 lt!560124))))))))

(declare-fun b!1588208 () Bool)

(declare-fun e!1020141 () Bool)

(declare-fun e!1020143 () Bool)

(assert (=> b!1588208 (= e!1020141 e!1020143)))

(declare-fun res!708524 () Bool)

(assert (=> b!1588208 (= res!708524 (< (size!14046 (_2!9874 lt!560494)) (size!14046 (seqFromList!1902 lt!560124))))))

(assert (=> b!1588208 (=> (not res!708524) (not e!1020143))))

(declare-fun b!1588209 () Bool)

(declare-fun res!708523 () Bool)

(assert (=> b!1588209 (=> (not res!708523) (not e!1020142))))

(assert (=> b!1588209 (= res!708523 (= (list!6781 (_1!9874 lt!560494)) (_1!9878 (lexList!792 thiss!17113 rules!1846 (list!6782 (seqFromList!1902 lt!560124))))))))

(declare-fun b!1588210 () Bool)

(assert (=> b!1588210 (= e!1020143 (not (isEmpty!10486 (_1!9874 lt!560494))))))

(declare-fun b!1588211 () Bool)

(assert (=> b!1588211 (= e!1020141 (= (_2!9874 lt!560494) (seqFromList!1902 lt!560124)))))

(declare-fun d!472611 () Bool)

(assert (=> d!472611 e!1020142))

(declare-fun res!708525 () Bool)

(assert (=> d!472611 (=> (not res!708525) (not e!1020142))))

(assert (=> d!472611 (= res!708525 e!1020141)))

(declare-fun c!257365 () Bool)

(assert (=> d!472611 (= c!257365 (> (size!14050 (_1!9874 lt!560494)) 0))))

(assert (=> d!472611 (= lt!560494 (lexTailRecV2!515 thiss!17113 rules!1846 (seqFromList!1902 lt!560124) (BalanceConc!11545 Empty!5800) (seqFromList!1902 lt!560124) (BalanceConc!11547 Empty!5801)))))

(assert (=> d!472611 (= (lex!1189 thiss!17113 rules!1846 (seqFromList!1902 lt!560124)) lt!560494)))

(assert (= (and d!472611 c!257365) b!1588208))

(assert (= (and d!472611 (not c!257365)) b!1588211))

(assert (= (and b!1588208 res!708524) b!1588210))

(assert (= (and d!472611 res!708525) b!1588209))

(assert (= (and b!1588209 res!708523) b!1588207))

(declare-fun m!1879337 () Bool)

(assert (=> b!1588210 m!1879337))

(declare-fun m!1879339 () Bool)

(assert (=> b!1588207 m!1879339))

(assert (=> b!1588207 m!1878549))

(declare-fun m!1879341 () Bool)

(assert (=> b!1588207 m!1879341))

(assert (=> b!1588207 m!1879341))

(declare-fun m!1879343 () Bool)

(assert (=> b!1588207 m!1879343))

(declare-fun m!1879345 () Bool)

(assert (=> d!472611 m!1879345))

(assert (=> d!472611 m!1878549))

(assert (=> d!472611 m!1878549))

(declare-fun m!1879347 () Bool)

(assert (=> d!472611 m!1879347))

(declare-fun m!1879349 () Bool)

(assert (=> b!1588208 m!1879349))

(assert (=> b!1588208 m!1878549))

(declare-fun m!1879351 () Bool)

(assert (=> b!1588208 m!1879351))

(declare-fun m!1879353 () Bool)

(assert (=> b!1588209 m!1879353))

(assert (=> b!1588209 m!1878549))

(assert (=> b!1588209 m!1879341))

(assert (=> b!1588209 m!1879341))

(assert (=> b!1588209 m!1879343))

(assert (=> b!1587840 d!472611))

(declare-fun d!472613 () Bool)

(declare-fun fromListB!821 (List!17534) BalanceConc!11544)

(assert (=> d!472613 (= (seqFromList!1902 lt!560124) (fromListB!821 lt!560124))))

(declare-fun bs!391570 () Bool)

(assert (= bs!391570 d!472613))

(declare-fun m!1879355 () Bool)

(assert (=> bs!391570 m!1879355))

(assert (=> b!1587840 d!472613))

(declare-fun d!472615 () Bool)

(assert (=> d!472615 (= (list!6781 (_1!9874 lt!560123)) (list!6786 (c!257305 (_1!9874 lt!560123))))))

(declare-fun bs!391571 () Bool)

(assert (= bs!391571 d!472615))

(declare-fun m!1879357 () Bool)

(assert (=> bs!391571 m!1879357))

(assert (=> b!1587829 d!472615))

(declare-fun d!472617 () Bool)

(declare-fun e!1020165 () Bool)

(assert (=> d!472617 e!1020165))

(declare-fun res!708544 () Bool)

(assert (=> d!472617 (=> (not res!708544) (not e!1020165))))

(assert (=> d!472617 (= res!708544 (= (list!6781 (_1!9874 (lex!1189 thiss!17113 rules!1846 (print!1236 thiss!17113 (seqFromList!1901 (t!144373 tokens!457)))))) (t!144373 tokens!457)))))

(declare-fun lt!560648 () Unit!27458)

(declare-fun e!1020164 () Unit!27458)

(assert (=> d!472617 (= lt!560648 e!1020164)))

(declare-fun c!257371 () Bool)

(assert (=> d!472617 (= c!257371 (or (is-Nil!17466 (t!144373 tokens!457)) (is-Nil!17466 (t!144373 (t!144373 tokens!457)))))))

(assert (=> d!472617 (not (isEmpty!10487 rules!1846))))

(assert (=> d!472617 (= (theoremInvertabilityWhenTokenListSeparable!150 thiss!17113 rules!1846 (t!144373 tokens!457)) lt!560648)))

(declare-fun b!1588240 () Bool)

(declare-fun Unit!27468 () Unit!27458)

(assert (=> b!1588240 (= e!1020164 Unit!27468)))

(declare-fun b!1588241 () Bool)

(declare-fun Unit!27469 () Unit!27458)

(assert (=> b!1588241 (= e!1020164 Unit!27469)))

(declare-fun lt!560645 () BalanceConc!11544)

(assert (=> b!1588241 (= lt!560645 (print!1236 thiss!17113 (seqFromList!1901 (t!144373 tokens!457))))))

(declare-fun lt!560641 () BalanceConc!11544)

(assert (=> b!1588241 (= lt!560641 (print!1236 thiss!17113 (seqFromList!1901 (t!144373 (t!144373 tokens!457)))))))

(declare-fun lt!560633 () tuple2!16944)

(assert (=> b!1588241 (= lt!560633 (lex!1189 thiss!17113 rules!1846 lt!560641))))

(declare-fun lt!560649 () List!17534)

(assert (=> b!1588241 (= lt!560649 (list!6782 (charsOf!1725 (h!22867 (t!144373 tokens!457)))))))

(declare-fun lt!560656 () List!17534)

(assert (=> b!1588241 (= lt!560656 (list!6782 lt!560641))))

(declare-fun lt!560646 () Unit!27458)

(assert (=> b!1588241 (= lt!560646 (lemmaConcatTwoListThenFirstIsPrefix!861 lt!560649 lt!560656))))

(assert (=> b!1588241 (isPrefix!1336 lt!560649 (++!4559 lt!560649 lt!560656))))

(declare-fun lt!560642 () Unit!27458)

(assert (=> b!1588241 (= lt!560642 lt!560646)))

(declare-fun lt!560650 () Unit!27458)

(assert (=> b!1588241 (= lt!560650 (theoremInvertabilityWhenTokenListSeparable!150 thiss!17113 rules!1846 (t!144373 (t!144373 tokens!457))))))

(declare-fun lt!560652 () Unit!27458)

(assert (=> b!1588241 (= lt!560652 (seqFromListBHdTlConstructive!153 (h!22867 (t!144373 (t!144373 tokens!457))) (t!144373 (t!144373 (t!144373 tokens!457))) (_1!9874 lt!560633)))))

(assert (=> b!1588241 (= (list!6781 (_1!9874 lt!560633)) (list!6781 (prepend!566 (seqFromList!1901 (t!144373 (t!144373 (t!144373 tokens!457)))) (h!22867 (t!144373 (t!144373 tokens!457))))))))

(declare-fun lt!560639 () Unit!27458)

(assert (=> b!1588241 (= lt!560639 lt!560652)))

(declare-fun lt!560631 () Option!3147)

(assert (=> b!1588241 (= lt!560631 (maxPrefix!1269 thiss!17113 rules!1846 (list!6782 lt!560645)))))

(assert (=> b!1588241 (= (print!1236 thiss!17113 (singletonSeq!1431 (h!22867 (t!144373 tokens!457)))) (printTailRec!758 thiss!17113 (singletonSeq!1431 (h!22867 (t!144373 tokens!457))) 0 (BalanceConc!11545 Empty!5800)))))

(declare-fun lt!560647 () Unit!27458)

(declare-fun Unit!27470 () Unit!27458)

(assert (=> b!1588241 (= lt!560647 Unit!27470)))

(declare-fun lt!560643 () Unit!27458)

(assert (=> b!1588241 (= lt!560643 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!279 thiss!17113 rules!1846 (list!6782 (charsOf!1725 (h!22867 (t!144373 tokens!457)))) (list!6782 lt!560641)))))

(assert (=> b!1588241 (= (list!6782 (charsOf!1725 (h!22867 (t!144373 tokens!457)))) (originalCharacters!3890 (h!22867 (t!144373 tokens!457))))))

(declare-fun lt!560644 () Unit!27458)

(declare-fun Unit!27471 () Unit!27458)

(assert (=> b!1588241 (= lt!560644 Unit!27471)))

(assert (=> b!1588241 (= (list!6782 (singletonSeq!1430 (apply!4289 (charsOf!1725 (h!22867 (t!144373 (t!144373 tokens!457)))) 0))) (Cons!17464 (head!3232 (originalCharacters!3890 (h!22867 (t!144373 (t!144373 tokens!457))))) Nil!17464))))

(declare-fun lt!560638 () Unit!27458)

(declare-fun Unit!27472 () Unit!27458)

(assert (=> b!1588241 (= lt!560638 Unit!27472)))

(assert (=> b!1588241 (= (list!6782 (singletonSeq!1430 (apply!4289 (charsOf!1725 (h!22867 (t!144373 (t!144373 tokens!457)))) 0))) (Cons!17464 (head!3232 (list!6782 lt!560641)) Nil!17464))))

(declare-fun lt!560654 () Unit!27458)

(declare-fun Unit!27473 () Unit!27458)

(assert (=> b!1588241 (= lt!560654 Unit!27473)))

(declare-fun head!3234 (BalanceConc!11544) C!8982)

(assert (=> b!1588241 (= (list!6782 (singletonSeq!1430 (apply!4289 (charsOf!1725 (h!22867 (t!144373 (t!144373 tokens!457)))) 0))) (Cons!17464 (head!3234 lt!560641) Nil!17464))))

(declare-fun lt!560636 () Unit!27458)

(declare-fun Unit!27474 () Unit!27458)

(assert (=> b!1588241 (= lt!560636 Unit!27474)))

(assert (=> b!1588241 (isDefined!2522 (maxPrefix!1269 thiss!17113 rules!1846 (originalCharacters!3890 (h!22867 (t!144373 tokens!457)))))))

(declare-fun lt!560651 () Unit!27458)

(declare-fun Unit!27475 () Unit!27458)

(assert (=> b!1588241 (= lt!560651 Unit!27475)))

(assert (=> b!1588241 (isDefined!2522 (maxPrefix!1269 thiss!17113 rules!1846 (list!6782 (charsOf!1725 (h!22867 (t!144373 tokens!457))))))))

(declare-fun lt!560655 () Unit!27458)

(declare-fun Unit!27476 () Unit!27458)

(assert (=> b!1588241 (= lt!560655 Unit!27476)))

(declare-fun lt!560634 () Unit!27458)

(declare-fun Unit!27477 () Unit!27458)

(assert (=> b!1588241 (= lt!560634 Unit!27477)))

(assert (=> b!1588241 (= (_1!9875 (get!4997 (maxPrefix!1269 thiss!17113 rules!1846 (list!6782 (charsOf!1725 (h!22867 (t!144373 tokens!457))))))) (h!22867 (t!144373 tokens!457)))))

(declare-fun lt!560653 () Unit!27458)

(declare-fun Unit!27478 () Unit!27458)

(assert (=> b!1588241 (= lt!560653 Unit!27478)))

(assert (=> b!1588241 (isEmpty!10490 (_2!9875 (get!4997 (maxPrefix!1269 thiss!17113 rules!1846 (list!6782 (charsOf!1725 (h!22867 (t!144373 tokens!457))))))))))

(declare-fun lt!560637 () Unit!27458)

(declare-fun Unit!27479 () Unit!27458)

(assert (=> b!1588241 (= lt!560637 Unit!27479)))

(assert (=> b!1588241 (matchR!1923 (regex!3076 (rule!4880 (h!22867 (t!144373 tokens!457)))) (list!6782 (charsOf!1725 (h!22867 (t!144373 tokens!457)))))))

(declare-fun lt!560632 () Unit!27458)

(declare-fun Unit!27480 () Unit!27458)

(assert (=> b!1588241 (= lt!560632 Unit!27480)))

(assert (=> b!1588241 (= (rule!4880 (h!22867 (t!144373 tokens!457))) (rule!4880 (h!22867 (t!144373 tokens!457))))))

(declare-fun lt!560635 () Unit!27458)

(declare-fun Unit!27481 () Unit!27458)

(assert (=> b!1588241 (= lt!560635 Unit!27481)))

(declare-fun lt!560640 () Unit!27458)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!73 (LexerInterface!2705 List!17535 Token!5718 Rule!5952 List!17534) Unit!27458)

(assert (=> b!1588241 (= lt!560640 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!73 thiss!17113 rules!1846 (h!22867 (t!144373 tokens!457)) (rule!4880 (h!22867 (t!144373 tokens!457))) (list!6782 lt!560641)))))

(declare-fun b!1588242 () Bool)

(declare-fun isEmpty!10495 (BalanceConc!11544) Bool)

(assert (=> b!1588242 (= e!1020165 (isEmpty!10495 (_2!9874 (lex!1189 thiss!17113 rules!1846 (print!1236 thiss!17113 (seqFromList!1901 (t!144373 tokens!457)))))))))

(assert (= (and d!472617 c!257371) b!1588240))

(assert (= (and d!472617 (not c!257371)) b!1588241))

(assert (= (and d!472617 res!708544) b!1588242))

(assert (=> d!472617 m!1878519))

(declare-fun m!1879455 () Bool)

(assert (=> d!472617 m!1879455))

(assert (=> d!472617 m!1878583))

(assert (=> d!472617 m!1878519))

(declare-fun m!1879457 () Bool)

(assert (=> d!472617 m!1879457))

(assert (=> d!472617 m!1879457))

(declare-fun m!1879459 () Bool)

(assert (=> d!472617 m!1879459))

(declare-fun m!1879461 () Bool)

(assert (=> b!1588241 m!1879461))

(declare-fun m!1879463 () Bool)

(assert (=> b!1588241 m!1879463))

(assert (=> b!1588241 m!1878571))

(declare-fun m!1879465 () Bool)

(assert (=> b!1588241 m!1879465))

(declare-fun m!1879467 () Bool)

(assert (=> b!1588241 m!1879467))

(declare-fun m!1879469 () Bool)

(assert (=> b!1588241 m!1879469))

(declare-fun m!1879471 () Bool)

(assert (=> b!1588241 m!1879471))

(declare-fun m!1879473 () Bool)

(assert (=> b!1588241 m!1879473))

(declare-fun m!1879475 () Bool)

(assert (=> b!1588241 m!1879475))

(declare-fun m!1879477 () Bool)

(assert (=> b!1588241 m!1879477))

(declare-fun m!1879479 () Bool)

(assert (=> b!1588241 m!1879479))

(assert (=> b!1588241 m!1878519))

(assert (=> b!1588241 m!1879457))

(declare-fun m!1879481 () Bool)

(assert (=> b!1588241 m!1879481))

(declare-fun m!1879483 () Bool)

(assert (=> b!1588241 m!1879483))

(assert (=> b!1588241 m!1878607))

(assert (=> b!1588241 m!1879467))

(declare-fun m!1879485 () Bool)

(assert (=> b!1588241 m!1879485))

(assert (=> b!1588241 m!1878519))

(assert (=> b!1588241 m!1879481))

(declare-fun m!1879487 () Bool)

(assert (=> b!1588241 m!1879487))

(declare-fun m!1879489 () Bool)

(assert (=> b!1588241 m!1879489))

(declare-fun m!1879491 () Bool)

(assert (=> b!1588241 m!1879491))

(declare-fun m!1879493 () Bool)

(assert (=> b!1588241 m!1879493))

(declare-fun m!1879495 () Bool)

(assert (=> b!1588241 m!1879495))

(declare-fun m!1879497 () Bool)

(assert (=> b!1588241 m!1879497))

(assert (=> b!1588241 m!1879495))

(declare-fun m!1879499 () Bool)

(assert (=> b!1588241 m!1879499))

(declare-fun m!1879501 () Bool)

(assert (=> b!1588241 m!1879501))

(assert (=> b!1588241 m!1879495))

(assert (=> b!1588241 m!1879489))

(declare-fun m!1879503 () Bool)

(assert (=> b!1588241 m!1879503))

(assert (=> b!1588241 m!1879483))

(assert (=> b!1588241 m!1879471))

(assert (=> b!1588241 m!1879479))

(declare-fun m!1879505 () Bool)

(assert (=> b!1588241 m!1879505))

(assert (=> b!1588241 m!1879467))

(declare-fun m!1879507 () Bool)

(assert (=> b!1588241 m!1879507))

(declare-fun m!1879509 () Bool)

(assert (=> b!1588241 m!1879509))

(assert (=> b!1588241 m!1878607))

(declare-fun m!1879511 () Bool)

(assert (=> b!1588241 m!1879511))

(assert (=> b!1588241 m!1879489))

(declare-fun m!1879513 () Bool)

(assert (=> b!1588241 m!1879513))

(declare-fun m!1879515 () Bool)

(assert (=> b!1588241 m!1879515))

(declare-fun m!1879517 () Bool)

(assert (=> b!1588241 m!1879517))

(assert (=> b!1588241 m!1879501))

(declare-fun m!1879519 () Bool)

(assert (=> b!1588241 m!1879519))

(assert (=> b!1588241 m!1879467))

(assert (=> b!1588241 m!1879495))

(declare-fun m!1879521 () Bool)

(assert (=> b!1588241 m!1879521))

(declare-fun m!1879523 () Bool)

(assert (=> b!1588241 m!1879523))

(assert (=> b!1588241 m!1879491))

(assert (=> b!1588241 m!1879507))

(declare-fun m!1879525 () Bool)

(assert (=> b!1588241 m!1879525))

(assert (=> b!1588241 m!1879477))

(assert (=> b!1588241 m!1879507))

(declare-fun m!1879527 () Bool)

(assert (=> b!1588241 m!1879527))

(assert (=> b!1588241 m!1878571))

(assert (=> b!1588241 m!1879461))

(assert (=> b!1588242 m!1878519))

(assert (=> b!1588242 m!1878519))

(assert (=> b!1588242 m!1879457))

(assert (=> b!1588242 m!1879457))

(assert (=> b!1588242 m!1879459))

(declare-fun m!1879529 () Bool)

(assert (=> b!1588242 m!1879529))

(assert (=> b!1587829 d!472617))

(declare-fun b!1588257 () Bool)

(declare-fun e!1020177 () Bool)

(assert (=> b!1588257 (= e!1020177 (isPrefix!1336 (tail!2281 lt!560124) (tail!2281 lt!560131)))))

(declare-fun b!1588256 () Bool)

(declare-fun res!708557 () Bool)

(assert (=> b!1588256 (=> (not res!708557) (not e!1020177))))

(assert (=> b!1588256 (= res!708557 (= (head!3232 lt!560124) (head!3232 lt!560131)))))

(declare-fun d!472629 () Bool)

(declare-fun e!1020176 () Bool)

(assert (=> d!472629 e!1020176))

(declare-fun res!708560 () Bool)

(assert (=> d!472629 (=> res!708560 e!1020176)))

(declare-fun lt!560661 () Bool)

(assert (=> d!472629 (= res!708560 (not lt!560661))))

(declare-fun e!1020178 () Bool)

(assert (=> d!472629 (= lt!560661 e!1020178)))

(declare-fun res!708558 () Bool)

(assert (=> d!472629 (=> res!708558 e!1020178)))

(assert (=> d!472629 (= res!708558 (is-Nil!17464 lt!560124))))

(assert (=> d!472629 (= (isPrefix!1336 lt!560124 lt!560131) lt!560661)))

(declare-fun b!1588255 () Bool)

(assert (=> b!1588255 (= e!1020178 e!1020177)))

(declare-fun res!708559 () Bool)

(assert (=> b!1588255 (=> (not res!708559) (not e!1020177))))

(assert (=> b!1588255 (= res!708559 (not (is-Nil!17464 lt!560131)))))

(declare-fun b!1588258 () Bool)

(assert (=> b!1588258 (= e!1020176 (>= (size!14049 lt!560131) (size!14049 lt!560124)))))

(assert (= (and d!472629 (not res!708558)) b!1588255))

(assert (= (and b!1588255 res!708559) b!1588256))

(assert (= (and b!1588256 res!708557) b!1588257))

(assert (= (and d!472629 (not res!708560)) b!1588258))

(declare-fun m!1879531 () Bool)

(assert (=> b!1588257 m!1879531))

(declare-fun m!1879533 () Bool)

(assert (=> b!1588257 m!1879533))

(assert (=> b!1588257 m!1879531))

(assert (=> b!1588257 m!1879533))

(declare-fun m!1879535 () Bool)

(assert (=> b!1588257 m!1879535))

(declare-fun m!1879537 () Bool)

(assert (=> b!1588256 m!1879537))

(declare-fun m!1879539 () Bool)

(assert (=> b!1588256 m!1879539))

(declare-fun m!1879541 () Bool)

(assert (=> b!1588258 m!1879541))

(assert (=> b!1588258 m!1878741))

(assert (=> b!1587829 d!472629))

(declare-fun d!472631 () Bool)

(assert (=> d!472631 (isPrefix!1336 lt!560124 (++!4559 lt!560124 lt!560126))))

(declare-fun lt!560664 () Unit!27458)

(declare-fun choose!9510 (List!17534 List!17534) Unit!27458)

(assert (=> d!472631 (= lt!560664 (choose!9510 lt!560124 lt!560126))))

(assert (=> d!472631 (= (lemmaConcatTwoListThenFirstIsPrefix!861 lt!560124 lt!560126) lt!560664)))

(declare-fun bs!391573 () Bool)

(assert (= bs!391573 d!472631))

(assert (=> bs!391573 m!1878531))

(assert (=> bs!391573 m!1878531))

(declare-fun m!1879543 () Bool)

(assert (=> bs!391573 m!1879543))

(declare-fun m!1879545 () Bool)

(assert (=> bs!391573 m!1879545))

(assert (=> b!1587829 d!472631))

(declare-fun d!472633 () Bool)

(assert (=> d!472633 (= (inv!22873 (tag!3346 (h!22866 rules!1846))) (= (mod (str.len (value!97339 (tag!3346 (h!22866 rules!1846)))) 2) 0))))

(assert (=> b!1587847 d!472633))

(declare-fun d!472635 () Bool)

(declare-fun res!708563 () Bool)

(declare-fun e!1020181 () Bool)

(assert (=> d!472635 (=> (not res!708563) (not e!1020181))))

(declare-fun semiInverseModEq!1163 (Int Int) Bool)

(assert (=> d!472635 (= res!708563 (semiInverseModEq!1163 (toChars!4346 (transformation!3076 (h!22866 rules!1846))) (toValue!4487 (transformation!3076 (h!22866 rules!1846)))))))

(assert (=> d!472635 (= (inv!22877 (transformation!3076 (h!22866 rules!1846))) e!1020181)))

(declare-fun b!1588261 () Bool)

(declare-fun equivClasses!1104 (Int Int) Bool)

(assert (=> b!1588261 (= e!1020181 (equivClasses!1104 (toChars!4346 (transformation!3076 (h!22866 rules!1846))) (toValue!4487 (transformation!3076 (h!22866 rules!1846)))))))

(assert (= (and d!472635 res!708563) b!1588261))

(declare-fun m!1879547 () Bool)

(assert (=> d!472635 m!1879547))

(declare-fun m!1879549 () Bool)

(assert (=> b!1588261 m!1879549))

(assert (=> b!1587847 d!472635))

(declare-fun d!472637 () Bool)

(declare-fun res!708568 () Bool)

(declare-fun e!1020184 () Bool)

(assert (=> d!472637 (=> (not res!708568) (not e!1020184))))

(assert (=> d!472637 (= res!708568 (not (isEmpty!10490 (originalCharacters!3890 (h!22867 tokens!457)))))))

(assert (=> d!472637 (= (inv!22876 (h!22867 tokens!457)) e!1020184)))

(declare-fun b!1588266 () Bool)

(declare-fun res!708569 () Bool)

(assert (=> b!1588266 (=> (not res!708569) (not e!1020184))))

(assert (=> b!1588266 (= res!708569 (= (originalCharacters!3890 (h!22867 tokens!457)) (list!6782 (dynLambda!7760 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (value!97340 (h!22867 tokens!457))))))))

(declare-fun b!1588267 () Bool)

(assert (=> b!1588267 (= e!1020184 (= (size!14045 (h!22867 tokens!457)) (size!14049 (originalCharacters!3890 (h!22867 tokens!457)))))))

(assert (= (and d!472637 res!708568) b!1588266))

(assert (= (and b!1588266 res!708569) b!1588267))

(declare-fun b_lambda!49977 () Bool)

(assert (=> (not b_lambda!49977) (not b!1588266)))

(assert (=> b!1588266 t!144379))

(declare-fun b_and!111381 () Bool)

(assert (= b_and!111365 (and (=> t!144379 result!108194) b_and!111381)))

(assert (=> b!1588266 t!144381))

(declare-fun b_and!111383 () Bool)

(assert (= b_and!111367 (and (=> t!144381 result!108198) b_and!111383)))

(declare-fun m!1879551 () Bool)

(assert (=> d!472637 m!1879551))

(assert (=> b!1588266 m!1878801))

(assert (=> b!1588266 m!1878801))

(declare-fun m!1879553 () Bool)

(assert (=> b!1588266 m!1879553))

(declare-fun m!1879555 () Bool)

(assert (=> b!1588267 m!1879555))

(assert (=> b!1587846 d!472637))

(declare-fun d!472639 () Bool)

(declare-fun lt!560669 () Bool)

(declare-fun e!1020189 () Bool)

(assert (=> d!472639 (= lt!560669 e!1020189)))

(declare-fun res!708578 () Bool)

(assert (=> d!472639 (=> (not res!708578) (not e!1020189))))

(assert (=> d!472639 (= res!708578 (= (list!6781 (_1!9874 (lex!1189 thiss!17113 rules!1846 (print!1236 thiss!17113 (singletonSeq!1431 (h!22867 tokens!457)))))) (list!6781 (singletonSeq!1431 (h!22867 tokens!457)))))))

(declare-fun e!1020190 () Bool)

(assert (=> d!472639 (= lt!560669 e!1020190)))

(declare-fun res!708576 () Bool)

(assert (=> d!472639 (=> (not res!708576) (not e!1020190))))

(declare-fun lt!560670 () tuple2!16944)

(assert (=> d!472639 (= res!708576 (= (size!14050 (_1!9874 lt!560670)) 1))))

(assert (=> d!472639 (= lt!560670 (lex!1189 thiss!17113 rules!1846 (print!1236 thiss!17113 (singletonSeq!1431 (h!22867 tokens!457)))))))

(assert (=> d!472639 (not (isEmpty!10487 rules!1846))))

(assert (=> d!472639 (= (rulesProduceIndividualToken!1357 thiss!17113 rules!1846 (h!22867 tokens!457)) lt!560669)))

(declare-fun b!1588274 () Bool)

(declare-fun res!708577 () Bool)

(assert (=> b!1588274 (=> (not res!708577) (not e!1020190))))

(assert (=> b!1588274 (= res!708577 (= (apply!4292 (_1!9874 lt!560670) 0) (h!22867 tokens!457)))))

(declare-fun b!1588275 () Bool)

(assert (=> b!1588275 (= e!1020190 (isEmpty!10495 (_2!9874 lt!560670)))))

(declare-fun b!1588276 () Bool)

(assert (=> b!1588276 (= e!1020189 (isEmpty!10495 (_2!9874 (lex!1189 thiss!17113 rules!1846 (print!1236 thiss!17113 (singletonSeq!1431 (h!22867 tokens!457)))))))))

(assert (= (and d!472639 res!708576) b!1588274))

(assert (= (and b!1588274 res!708577) b!1588275))

(assert (= (and d!472639 res!708578) b!1588276))

(assert (=> d!472639 m!1878583))

(assert (=> d!472639 m!1878597))

(declare-fun m!1879557 () Bool)

(assert (=> d!472639 m!1879557))

(declare-fun m!1879559 () Bool)

(assert (=> d!472639 m!1879559))

(declare-fun m!1879561 () Bool)

(assert (=> d!472639 m!1879561))

(assert (=> d!472639 m!1878597))

(assert (=> d!472639 m!1879559))

(declare-fun m!1879563 () Bool)

(assert (=> d!472639 m!1879563))

(assert (=> d!472639 m!1878597))

(declare-fun m!1879565 () Bool)

(assert (=> d!472639 m!1879565))

(declare-fun m!1879567 () Bool)

(assert (=> b!1588274 m!1879567))

(declare-fun m!1879569 () Bool)

(assert (=> b!1588275 m!1879569))

(assert (=> b!1588276 m!1878597))

(assert (=> b!1588276 m!1878597))

(assert (=> b!1588276 m!1879559))

(assert (=> b!1588276 m!1879559))

(assert (=> b!1588276 m!1879561))

(declare-fun m!1879571 () Bool)

(assert (=> b!1588276 m!1879571))

(assert (=> b!1587827 d!472639))

(declare-fun d!472641 () Bool)

(assert (=> d!472641 (= (inv!22873 (tag!3346 (rule!4880 (h!22867 tokens!457)))) (= (mod (str.len (value!97339 (tag!3346 (rule!4880 (h!22867 tokens!457))))) 2) 0))))

(assert (=> b!1587848 d!472641))

(declare-fun d!472643 () Bool)

(declare-fun res!708579 () Bool)

(declare-fun e!1020191 () Bool)

(assert (=> d!472643 (=> (not res!708579) (not e!1020191))))

(assert (=> d!472643 (= res!708579 (semiInverseModEq!1163 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (toValue!4487 (transformation!3076 (rule!4880 (h!22867 tokens!457))))))))

(assert (=> d!472643 (= (inv!22877 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) e!1020191)))

(declare-fun b!1588277 () Bool)

(assert (=> b!1588277 (= e!1020191 (equivClasses!1104 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (toValue!4487 (transformation!3076 (rule!4880 (h!22867 tokens!457))))))))

(assert (= (and d!472643 res!708579) b!1588277))

(declare-fun m!1879573 () Bool)

(assert (=> d!472643 m!1879573))

(declare-fun m!1879575 () Bool)

(assert (=> b!1588277 m!1879575))

(assert (=> b!1587848 d!472643))

(declare-fun b!1588287 () Bool)

(declare-fun res!708590 () Bool)

(declare-fun e!1020194 () Bool)

(assert (=> b!1588287 (=> (not res!708590) (not e!1020194))))

(declare-fun height!861 (Conc!5800) Int)

(declare-fun ++!4564 (Conc!5800 Conc!5800) Conc!5800)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1588287 (= res!708590 (<= (height!861 (++!4564 (c!257303 lt!560142) (c!257303 lt!560143))) (+ (max!0 (height!861 (c!257303 lt!560142)) (height!861 (c!257303 lt!560143))) 1)))))

(declare-fun b!1588286 () Bool)

(declare-fun res!708588 () Bool)

(assert (=> b!1588286 (=> (not res!708588) (not e!1020194))))

(declare-fun isBalanced!1717 (Conc!5800) Bool)

(assert (=> b!1588286 (= res!708588 (isBalanced!1717 (++!4564 (c!257303 lt!560142) (c!257303 lt!560143))))))

(declare-fun lt!560673 () BalanceConc!11544)

(declare-fun b!1588289 () Bool)

(assert (=> b!1588289 (= e!1020194 (= (list!6782 lt!560673) (++!4559 (list!6782 lt!560142) (list!6782 lt!560143))))))

(declare-fun b!1588288 () Bool)

(declare-fun res!708589 () Bool)

(assert (=> b!1588288 (=> (not res!708589) (not e!1020194))))

(assert (=> b!1588288 (= res!708589 (>= (height!861 (++!4564 (c!257303 lt!560142) (c!257303 lt!560143))) (max!0 (height!861 (c!257303 lt!560142)) (height!861 (c!257303 lt!560143)))))))

(declare-fun d!472645 () Bool)

(assert (=> d!472645 e!1020194))

(declare-fun res!708591 () Bool)

(assert (=> d!472645 (=> (not res!708591) (not e!1020194))))

(declare-fun appendAssocInst!395 (Conc!5800 Conc!5800) Bool)

(assert (=> d!472645 (= res!708591 (appendAssocInst!395 (c!257303 lt!560142) (c!257303 lt!560143)))))

(assert (=> d!472645 (= lt!560673 (BalanceConc!11545 (++!4564 (c!257303 lt!560142) (c!257303 lt!560143))))))

(assert (=> d!472645 (= (++!4560 lt!560142 lt!560143) lt!560673)))

(assert (= (and d!472645 res!708591) b!1588286))

(assert (= (and b!1588286 res!708588) b!1588287))

(assert (= (and b!1588287 res!708590) b!1588288))

(assert (= (and b!1588288 res!708589) b!1588289))

(declare-fun m!1879577 () Bool)

(assert (=> b!1588288 m!1879577))

(declare-fun m!1879579 () Bool)

(assert (=> b!1588288 m!1879579))

(declare-fun m!1879581 () Bool)

(assert (=> b!1588288 m!1879581))

(assert (=> b!1588288 m!1879577))

(declare-fun m!1879583 () Bool)

(assert (=> b!1588288 m!1879583))

(assert (=> b!1588288 m!1879581))

(assert (=> b!1588288 m!1879583))

(declare-fun m!1879585 () Bool)

(assert (=> b!1588288 m!1879585))

(declare-fun m!1879587 () Bool)

(assert (=> b!1588289 m!1879587))

(assert (=> b!1588289 m!1878525))

(assert (=> b!1588289 m!1878543))

(assert (=> b!1588289 m!1878525))

(assert (=> b!1588289 m!1878543))

(declare-fun m!1879589 () Bool)

(assert (=> b!1588289 m!1879589))

(assert (=> b!1588286 m!1879577))

(assert (=> b!1588286 m!1879577))

(declare-fun m!1879591 () Bool)

(assert (=> b!1588286 m!1879591))

(assert (=> b!1588287 m!1879577))

(assert (=> b!1588287 m!1879579))

(assert (=> b!1588287 m!1879581))

(assert (=> b!1588287 m!1879577))

(assert (=> b!1588287 m!1879583))

(assert (=> b!1588287 m!1879581))

(assert (=> b!1588287 m!1879583))

(assert (=> b!1588287 m!1879585))

(declare-fun m!1879593 () Bool)

(assert (=> d!472645 m!1879593))

(assert (=> d!472645 m!1879577))

(assert (=> b!1587837 d!472645))

(declare-fun d!472647 () Bool)

(declare-fun e!1020197 () Bool)

(assert (=> d!472647 e!1020197))

(declare-fun res!708594 () Bool)

(assert (=> d!472647 (=> (not res!708594) (not e!1020197))))

(declare-fun lt!560676 () BalanceConc!11544)

(assert (=> d!472647 (= res!708594 (= (list!6782 lt!560676) (Cons!17464 (apply!4289 lt!560138 0) Nil!17464)))))

(declare-fun singleton!598 (C!8982) BalanceConc!11544)

(assert (=> d!472647 (= lt!560676 (singleton!598 (apply!4289 lt!560138 0)))))

(assert (=> d!472647 (= (singletonSeq!1430 (apply!4289 lt!560138 0)) lt!560676)))

(declare-fun b!1588292 () Bool)

(assert (=> b!1588292 (= e!1020197 (isBalanced!1717 (c!257303 lt!560676)))))

(assert (= (and d!472647 res!708594) b!1588292))

(declare-fun m!1879595 () Bool)

(assert (=> d!472647 m!1879595))

(assert (=> d!472647 m!1878611))

(declare-fun m!1879597 () Bool)

(assert (=> d!472647 m!1879597))

(declare-fun m!1879599 () Bool)

(assert (=> b!1588292 m!1879599))

(assert (=> b!1587837 d!472647))

(declare-fun d!472649 () Bool)

(declare-fun lt!560679 () C!8982)

(declare-fun apply!4298 (List!17534 Int) C!8982)

(assert (=> d!472649 (= lt!560679 (apply!4298 (list!6782 lt!560138) 0))))

(declare-fun apply!4299 (Conc!5800 Int) C!8982)

(assert (=> d!472649 (= lt!560679 (apply!4299 (c!257303 lt!560138) 0))))

(declare-fun e!1020200 () Bool)

(assert (=> d!472649 e!1020200))

(declare-fun res!708597 () Bool)

(assert (=> d!472649 (=> (not res!708597) (not e!1020200))))

(assert (=> d!472649 (= res!708597 (<= 0 0))))

(assert (=> d!472649 (= (apply!4289 lt!560138 0) lt!560679)))

(declare-fun b!1588295 () Bool)

(assert (=> b!1588295 (= e!1020200 (< 0 (size!14046 lt!560138)))))

(assert (= (and d!472649 res!708597) b!1588295))

(assert (=> d!472649 m!1879259))

(assert (=> d!472649 m!1879259))

(declare-fun m!1879601 () Bool)

(assert (=> d!472649 m!1879601))

(declare-fun m!1879603 () Bool)

(assert (=> d!472649 m!1879603))

(assert (=> b!1588295 m!1878581))

(assert (=> b!1587837 d!472649))

(declare-fun d!472651 () Bool)

(declare-fun lt!560709 () Bool)

(assert (=> d!472651 (= lt!560709 (prefixMatch!339 lt!560136 (list!6782 (++!4560 lt!560142 lt!560143))))))

(declare-datatypes ((List!17544 0))(
  ( (Nil!17474) (Cons!17474 (h!22875 Regex!4404) (t!144423 List!17544)) )
))
(declare-datatypes ((Context!1662 0))(
  ( (Context!1663 (exprs!1331 List!17544)) )
))
(declare-fun prefixMatchZipperSequence!431 ((Set Context!1662) BalanceConc!11544 Int) Bool)

(declare-fun focus!137 (Regex!4404) (Set Context!1662))

(assert (=> d!472651 (= lt!560709 (prefixMatchZipperSequence!431 (focus!137 lt!560136) (++!4560 lt!560142 lt!560143) 0))))

(declare-fun lt!560700 () Unit!27458)

(declare-fun lt!560703 () Unit!27458)

(assert (=> d!472651 (= lt!560700 lt!560703)))

(declare-fun lt!560704 () List!17534)

(declare-fun lt!560707 () (Set Context!1662))

(declare-fun prefixMatchZipper!116 ((Set Context!1662) List!17534) Bool)

(assert (=> d!472651 (= (prefixMatch!339 lt!560136 lt!560704) (prefixMatchZipper!116 lt!560707 lt!560704))))

(declare-datatypes ((List!17545 0))(
  ( (Nil!17475) (Cons!17475 (h!22876 Context!1662) (t!144424 List!17545)) )
))
(declare-fun lt!560708 () List!17545)

(declare-fun prefixMatchZipperRegexEquiv!116 ((Set Context!1662) List!17545 Regex!4404 List!17534) Unit!27458)

(assert (=> d!472651 (= lt!560703 (prefixMatchZipperRegexEquiv!116 lt!560707 lt!560708 lt!560136 lt!560704))))

(assert (=> d!472651 (= lt!560704 (list!6782 (++!4560 lt!560142 lt!560143)))))

(declare-fun toList!877 ((Set Context!1662)) List!17545)

(assert (=> d!472651 (= lt!560708 (toList!877 (focus!137 lt!560136)))))

(assert (=> d!472651 (= lt!560707 (focus!137 lt!560136))))

(declare-fun lt!560701 () Unit!27458)

(declare-fun lt!560702 () Unit!27458)

(assert (=> d!472651 (= lt!560701 lt!560702)))

(declare-fun lt!560706 () Int)

(declare-fun lt!560705 () (Set Context!1662))

(declare-fun dropList!536 (BalanceConc!11544 Int) List!17534)

(assert (=> d!472651 (= (prefixMatchZipper!116 lt!560705 (dropList!536 (++!4560 lt!560142 lt!560143) lt!560706)) (prefixMatchZipperSequence!431 lt!560705 (++!4560 lt!560142 lt!560143) lt!560706))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!116 ((Set Context!1662) BalanceConc!11544 Int) Unit!27458)

(assert (=> d!472651 (= lt!560702 (lemmaprefixMatchZipperSequenceEquivalent!116 lt!560705 (++!4560 lt!560142 lt!560143) lt!560706))))

(assert (=> d!472651 (= lt!560706 0)))

(assert (=> d!472651 (= lt!560705 (focus!137 lt!560136))))

(declare-fun validRegex!1742 (Regex!4404) Bool)

(assert (=> d!472651 (validRegex!1742 lt!560136)))

(assert (=> d!472651 (= (prefixMatchZipperSequence!428 lt!560136 (++!4560 lt!560142 lt!560143)) lt!560709)))

(declare-fun bs!391574 () Bool)

(assert (= bs!391574 d!472651))

(declare-fun m!1879605 () Bool)

(assert (=> bs!391574 m!1879605))

(declare-fun m!1879607 () Bool)

(assert (=> bs!391574 m!1879607))

(assert (=> bs!391574 m!1878609))

(declare-fun m!1879609 () Bool)

(assert (=> bs!391574 m!1879609))

(declare-fun m!1879611 () Bool)

(assert (=> bs!391574 m!1879611))

(assert (=> bs!391574 m!1878609))

(declare-fun m!1879613 () Bool)

(assert (=> bs!391574 m!1879613))

(assert (=> bs!391574 m!1878609))

(assert (=> bs!391574 m!1879605))

(declare-fun m!1879615 () Bool)

(assert (=> bs!391574 m!1879615))

(declare-fun m!1879617 () Bool)

(assert (=> bs!391574 m!1879617))

(assert (=> bs!391574 m!1879615))

(declare-fun m!1879619 () Bool)

(assert (=> bs!391574 m!1879619))

(assert (=> bs!391574 m!1878609))

(declare-fun m!1879621 () Bool)

(assert (=> bs!391574 m!1879621))

(declare-fun m!1879623 () Bool)

(assert (=> bs!391574 m!1879623))

(assert (=> bs!391574 m!1879615))

(assert (=> bs!391574 m!1878609))

(declare-fun m!1879625 () Bool)

(assert (=> bs!391574 m!1879625))

(declare-fun m!1879627 () Bool)

(assert (=> bs!391574 m!1879627))

(assert (=> bs!391574 m!1879609))

(declare-fun m!1879629 () Bool)

(assert (=> bs!391574 m!1879629))

(assert (=> b!1587837 d!472651))

(declare-fun d!472653 () Bool)

(declare-fun lt!560712 () Unit!27458)

(declare-fun lemma!203 (List!17535 LexerInterface!2705 List!17535) Unit!27458)

(assert (=> d!472653 (= lt!560712 (lemma!203 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66625 () Int)

(declare-fun generalisedUnion!211 (List!17544) Regex!4404)

(declare-fun map!3621 (List!17535 Int) List!17544)

(assert (=> d!472653 (= (rulesRegex!466 thiss!17113 rules!1846) (generalisedUnion!211 (map!3621 rules!1846 lambda!66625)))))

(declare-fun bs!391575 () Bool)

(assert (= bs!391575 d!472653))

(declare-fun m!1879631 () Bool)

(assert (=> bs!391575 m!1879631))

(declare-fun m!1879633 () Bool)

(assert (=> bs!391575 m!1879633))

(assert (=> bs!391575 m!1879633))

(declare-fun m!1879635 () Bool)

(assert (=> bs!391575 m!1879635))

(assert (=> b!1587837 d!472653))

(declare-fun d!472655 () Bool)

(declare-fun lt!560713 () BalanceConc!11544)

(assert (=> d!472655 (= (list!6782 lt!560713) (originalCharacters!3890 (h!22867 (t!144373 tokens!457))))))

(assert (=> d!472655 (= lt!560713 (dynLambda!7760 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))) (value!97340 (h!22867 (t!144373 tokens!457)))))))

(assert (=> d!472655 (= (charsOf!1725 (h!22867 (t!144373 tokens!457))) lt!560713)))

(declare-fun b_lambda!49979 () Bool)

(assert (=> (not b_lambda!49979) (not d!472655)))

(declare-fun t!144401 () Bool)

(declare-fun tb!89379 () Bool)

(assert (=> (and b!1587835 (= (toChars!4346 (transformation!3076 (h!22866 rules!1846))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457)))))) t!144401) tb!89379))

(declare-fun b!1588296 () Bool)

(declare-fun e!1020201 () Bool)

(declare-fun tp!466780 () Bool)

(assert (=> b!1588296 (= e!1020201 (and (inv!22880 (c!257303 (dynLambda!7760 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))) (value!97340 (h!22867 (t!144373 tokens!457)))))) tp!466780))))

(declare-fun result!108210 () Bool)

(assert (=> tb!89379 (= result!108210 (and (inv!22881 (dynLambda!7760 (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))) (value!97340 (h!22867 (t!144373 tokens!457))))) e!1020201))))

(assert (= tb!89379 b!1588296))

(declare-fun m!1879637 () Bool)

(assert (=> b!1588296 m!1879637))

(declare-fun m!1879639 () Bool)

(assert (=> tb!89379 m!1879639))

(assert (=> d!472655 t!144401))

(declare-fun b_and!111385 () Bool)

(assert (= b_and!111381 (and (=> t!144401 result!108210) b_and!111385)))

(declare-fun t!144403 () Bool)

(declare-fun tb!89381 () Bool)

(assert (=> (and b!1587833 (= (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457)))))) t!144403) tb!89381))

(declare-fun result!108212 () Bool)

(assert (= result!108212 result!108210))

(assert (=> d!472655 t!144403))

(declare-fun b_and!111387 () Bool)

(assert (= b_and!111383 (and (=> t!144403 result!108212) b_and!111387)))

(declare-fun m!1879641 () Bool)

(assert (=> d!472655 m!1879641))

(declare-fun m!1879643 () Bool)

(assert (=> d!472655 m!1879643))

(assert (=> b!1587837 d!472655))

(declare-fun b!1588301 () Bool)

(declare-fun e!1020204 () Bool)

(declare-fun tp_is_empty!7207 () Bool)

(declare-fun tp!466783 () Bool)

(assert (=> b!1588301 (= e!1020204 (and tp_is_empty!7207 tp!466783))))

(assert (=> b!1587839 (= tp!466743 e!1020204)))

(assert (= (and b!1587839 (is-Cons!17464 (originalCharacters!3890 (h!22867 tokens!457)))) b!1588301))

(declare-fun b!1588312 () Bool)

(declare-fun b_free!42975 () Bool)

(declare-fun b_next!43679 () Bool)

(assert (=> b!1588312 (= b_free!42975 (not b_next!43679))))

(declare-fun tp!466794 () Bool)

(declare-fun b_and!111389 () Bool)

(assert (=> b!1588312 (= tp!466794 b_and!111389)))

(declare-fun b_free!42977 () Bool)

(declare-fun b_next!43681 () Bool)

(assert (=> b!1588312 (= b_free!42977 (not b_next!43681))))

(declare-fun t!144405 () Bool)

(declare-fun tb!89383 () Bool)

(assert (=> (and b!1588312 (= (toChars!4346 (transformation!3076 (h!22866 (t!144372 rules!1846)))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457))))) t!144405) tb!89383))

(declare-fun result!108218 () Bool)

(assert (= result!108218 result!108194))

(assert (=> d!472483 t!144405))

(assert (=> b!1588266 t!144405))

(declare-fun t!144407 () Bool)

(declare-fun tb!89385 () Bool)

(assert (=> (and b!1588312 (= (toChars!4346 (transformation!3076 (h!22866 (t!144372 rules!1846)))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457)))))) t!144407) tb!89385))

(declare-fun result!108220 () Bool)

(assert (= result!108220 result!108210))

(assert (=> d!472655 t!144407))

(declare-fun tp!466795 () Bool)

(declare-fun b_and!111391 () Bool)

(assert (=> b!1588312 (= tp!466795 (and (=> t!144405 result!108218) (=> t!144407 result!108220) b_and!111391))))

(declare-fun e!1020216 () Bool)

(assert (=> b!1588312 (= e!1020216 (and tp!466794 tp!466795))))

(declare-fun tp!466792 () Bool)

(declare-fun b!1588311 () Bool)

(declare-fun e!1020213 () Bool)

(assert (=> b!1588311 (= e!1020213 (and tp!466792 (inv!22873 (tag!3346 (h!22866 (t!144372 rules!1846)))) (inv!22877 (transformation!3076 (h!22866 (t!144372 rules!1846)))) e!1020216))))

(declare-fun b!1588310 () Bool)

(declare-fun e!1020215 () Bool)

(declare-fun tp!466793 () Bool)

(assert (=> b!1588310 (= e!1020215 (and e!1020213 tp!466793))))

(assert (=> b!1587844 (= tp!466741 e!1020215)))

(assert (= b!1588311 b!1588312))

(assert (= b!1588310 b!1588311))

(assert (= (and b!1587844 (is-Cons!17465 (t!144372 rules!1846))) b!1588310))

(declare-fun m!1879645 () Bool)

(assert (=> b!1588311 m!1879645))

(declare-fun m!1879647 () Bool)

(assert (=> b!1588311 m!1879647))

(declare-fun b!1588326 () Bool)

(declare-fun e!1020219 () Bool)

(declare-fun tp!466807 () Bool)

(declare-fun tp!466810 () Bool)

(assert (=> b!1588326 (= e!1020219 (and tp!466807 tp!466810))))

(declare-fun b!1588324 () Bool)

(declare-fun tp!466809 () Bool)

(declare-fun tp!466808 () Bool)

(assert (=> b!1588324 (= e!1020219 (and tp!466809 tp!466808))))

(assert (=> b!1587847 (= tp!466737 e!1020219)))

(declare-fun b!1588323 () Bool)

(assert (=> b!1588323 (= e!1020219 tp_is_empty!7207)))

(declare-fun b!1588325 () Bool)

(declare-fun tp!466806 () Bool)

(assert (=> b!1588325 (= e!1020219 tp!466806)))

(assert (= (and b!1587847 (is-ElementMatch!4404 (regex!3076 (h!22866 rules!1846)))) b!1588323))

(assert (= (and b!1587847 (is-Concat!7571 (regex!3076 (h!22866 rules!1846)))) b!1588324))

(assert (= (and b!1587847 (is-Star!4404 (regex!3076 (h!22866 rules!1846)))) b!1588325))

(assert (= (and b!1587847 (is-Union!4404 (regex!3076 (h!22866 rules!1846)))) b!1588326))

(declare-fun b!1588340 () Bool)

(declare-fun b_free!42979 () Bool)

(declare-fun b_next!43683 () Bool)

(assert (=> b!1588340 (= b_free!42979 (not b_next!43683))))

(declare-fun tp!466823 () Bool)

(declare-fun b_and!111393 () Bool)

(assert (=> b!1588340 (= tp!466823 b_and!111393)))

(declare-fun b_free!42981 () Bool)

(declare-fun b_next!43685 () Bool)

(assert (=> b!1588340 (= b_free!42981 (not b_next!43685))))

(declare-fun t!144409 () Bool)

(declare-fun tb!89387 () Bool)

(assert (=> (and b!1588340 (= (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457))))) t!144409) tb!89387))

(declare-fun result!108226 () Bool)

(assert (= result!108226 result!108194))

(assert (=> d!472483 t!144409))

(assert (=> b!1588266 t!144409))

(declare-fun t!144411 () Bool)

(declare-fun tb!89389 () Bool)

(assert (=> (and b!1588340 (= (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457)))))) t!144411) tb!89389))

(declare-fun result!108228 () Bool)

(assert (= result!108228 result!108210))

(assert (=> d!472655 t!144411))

(declare-fun tp!466824 () Bool)

(declare-fun b_and!111395 () Bool)

(assert (=> b!1588340 (= tp!466824 (and (=> t!144409 result!108226) (=> t!144411 result!108228) b_and!111395))))

(declare-fun e!1020235 () Bool)

(assert (=> b!1587846 (= tp!466742 e!1020235)))

(declare-fun e!1020234 () Bool)

(declare-fun tp!466822 () Bool)

(declare-fun e!1020233 () Bool)

(declare-fun b!1588339 () Bool)

(assert (=> b!1588339 (= e!1020234 (and tp!466822 (inv!22873 (tag!3346 (rule!4880 (h!22867 (t!144373 tokens!457))))) (inv!22877 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))) e!1020233))))

(declare-fun b!1588337 () Bool)

(declare-fun tp!466825 () Bool)

(declare-fun e!1020236 () Bool)

(assert (=> b!1588337 (= e!1020235 (and (inv!22876 (h!22867 (t!144373 tokens!457))) e!1020236 tp!466825))))

(declare-fun b!1588338 () Bool)

(declare-fun tp!466821 () Bool)

(assert (=> b!1588338 (= e!1020236 (and (inv!21 (value!97340 (h!22867 (t!144373 tokens!457)))) e!1020234 tp!466821))))

(assert (=> b!1588340 (= e!1020233 (and tp!466823 tp!466824))))

(assert (= b!1588339 b!1588340))

(assert (= b!1588338 b!1588339))

(assert (= b!1588337 b!1588338))

(assert (= (and b!1587846 (is-Cons!17466 (t!144373 tokens!457))) b!1588337))

(declare-fun m!1879649 () Bool)

(assert (=> b!1588339 m!1879649))

(declare-fun m!1879651 () Bool)

(assert (=> b!1588339 m!1879651))

(declare-fun m!1879653 () Bool)

(assert (=> b!1588337 m!1879653))

(declare-fun m!1879655 () Bool)

(assert (=> b!1588338 m!1879655))

(declare-fun b!1588344 () Bool)

(declare-fun e!1020238 () Bool)

(declare-fun tp!466827 () Bool)

(declare-fun tp!466830 () Bool)

(assert (=> b!1588344 (= e!1020238 (and tp!466827 tp!466830))))

(declare-fun b!1588342 () Bool)

(declare-fun tp!466829 () Bool)

(declare-fun tp!466828 () Bool)

(assert (=> b!1588342 (= e!1020238 (and tp!466829 tp!466828))))

(assert (=> b!1587848 (= tp!466738 e!1020238)))

(declare-fun b!1588341 () Bool)

(assert (=> b!1588341 (= e!1020238 tp_is_empty!7207)))

(declare-fun b!1588343 () Bool)

(declare-fun tp!466826 () Bool)

(assert (=> b!1588343 (= e!1020238 tp!466826)))

(assert (= (and b!1587848 (is-ElementMatch!4404 (regex!3076 (rule!4880 (h!22867 tokens!457))))) b!1588341))

(assert (= (and b!1587848 (is-Concat!7571 (regex!3076 (rule!4880 (h!22867 tokens!457))))) b!1588342))

(assert (= (and b!1587848 (is-Star!4404 (regex!3076 (rule!4880 (h!22867 tokens!457))))) b!1588343))

(assert (= (and b!1587848 (is-Union!4404 (regex!3076 (rule!4880 (h!22867 tokens!457))))) b!1588344))

(declare-fun b_lambda!49981 () Bool)

(assert (= b_lambda!49969 (or (and b!1587835 b_free!42961 (= (toChars!4346 (transformation!3076 (h!22866 rules!1846))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))))) (and b!1587833 b_free!42965) (and b!1588312 b_free!42977 (= (toChars!4346 (transformation!3076 (h!22866 (t!144372 rules!1846)))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))))) (and b!1588340 b_free!42981 (= (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))))) b_lambda!49981)))

(declare-fun b_lambda!49983 () Bool)

(assert (= b_lambda!49977 (or (and b!1587835 b_free!42961 (= (toChars!4346 (transformation!3076 (h!22866 rules!1846))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))))) (and b!1587833 b_free!42965) (and b!1588312 b_free!42977 (= (toChars!4346 (transformation!3076 (h!22866 (t!144372 rules!1846)))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))))) (and b!1588340 b_free!42981 (= (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))))) b_lambda!49983)))

(declare-fun b_lambda!49985 () Bool)

(assert (= b_lambda!49979 (or (and b!1587835 b_free!42961 (= (toChars!4346 (transformation!3076 (h!22866 rules!1846))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))))) (and b!1587833 b_free!42965 (= (toChars!4346 (transformation!3076 (rule!4880 (h!22867 tokens!457)))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))))) (and b!1588312 b_free!42977 (= (toChars!4346 (transformation!3076 (h!22866 (t!144372 rules!1846)))) (toChars!4346 (transformation!3076 (rule!4880 (h!22867 (t!144373 tokens!457))))))) (and b!1588340 b_free!42981) b_lambda!49985)))

(push 1)

(assert (not d!472655))

(assert (not d!472607))

(assert (not b_lambda!49983))

(assert (not b_next!43663))

(assert (not d!472615))

(assert (not b!1588344))

(assert (not d!472471))

(assert (not bm!102947))

(assert (not d!472617))

(assert (not b!1587923))

(assert (not b!1588241))

(assert (not b!1588210))

(assert (not b!1588276))

(assert (not b!1588078))

(assert (not d!472645))

(assert (not b!1588105))

(assert (not tb!89367))

(assert (not d!472639))

(assert (not b_next!43681))

(assert (not b_next!43667))

(assert (not d!472637))

(assert (not b!1588114))

(assert (not b!1588202))

(assert (not b!1588203))

(assert (not b!1588342))

(assert (not b!1588325))

(assert (not d!472585))

(assert (not b_next!43665))

(assert (not b!1588209))

(assert (not d!472479))

(assert (not b!1588267))

(assert (not b_lambda!49981))

(assert (not d!472643))

(assert (not b!1587960))

(assert b_and!111391)

(assert (not b_next!43683))

(assert (not b!1588339))

(assert (not b!1588324))

(assert (not b!1587954))

(assert (not b!1588110))

(assert (not d!472461))

(assert (not b!1588156))

(assert (not d!472589))

(assert (not b!1588289))

(assert (not b!1588311))

(assert (not b!1588103))

(assert b_and!111393)

(assert (not d!472535))

(assert (not d!472489))

(assert (not b!1588343))

(assert (not b!1588034))

(assert (not d!472593))

(assert (not b!1588275))

(assert (not b!1588257))

(assert (not b!1588086))

(assert (not b!1588338))

(assert (not b!1588173))

(assert (not d!472609))

(assert (not d!472475))

(assert (not b_next!43669))

(assert (not tb!89379))

(assert (not b!1588033))

(assert (not b!1588082))

(assert b_and!111395)

(assert (not d!472583))

(assert (not d!472653))

(assert (not b!1587934))

(assert (not d!472545))

(assert (not d!472611))

(assert (not b!1588207))

(assert (not b!1588256))

(assert (not b!1588261))

(assert (not b!1588174))

(assert (not d!472635))

(assert b_and!111389)

(assert (not b!1587924))

(assert (not b!1588175))

(assert (not b!1588287))

(assert (not d!472483))

(assert (not d!472551))

(assert (not b!1588288))

(assert (not d!472631))

(assert (not d!472491))

(assert (not b!1588277))

(assert (not d!472591))

(assert (not d!472519))

(assert (not b_lambda!49985))

(assert (not d!472477))

(assert (not d!472467))

(assert (not b_next!43679))

(assert (not d!472553))

(assert (not b!1588242))

(assert (not b!1588155))

(assert (not b!1587939))

(assert (not b!1588310))

(assert (not b!1588081))

(assert (not b!1587938))

(assert (not d!472463))

(assert (not b!1588083))

(assert (not d!472581))

(assert (not d!472651))

(assert (not b_next!43685))

(assert b_and!111349)

(assert (not d!472473))

(assert (not d!472487))

(assert (not b!1588043))

(assert tp_is_empty!7207)

(assert (not b!1588266))

(assert (not b!1587951))

(assert (not b!1588295))

(assert (not b!1588157))

(assert (not d!472465))

(assert b_and!111385)

(assert (not d!472613))

(assert (not b!1588296))

(assert (not b!1588326))

(assert (not b!1587952))

(assert (not b!1588161))

(assert (not b!1588274))

(assert (not b!1588301))

(assert (not b!1588337))

(assert (not b!1588286))

(assert (not d!472647))

(assert (not b!1588084))

(assert (not d!472469))

(assert (not d!472521))

(assert (not d!472549))

(assert (not b!1588292))

(assert (not b!1588085))

(assert (not b!1588208))

(assert b_and!111353)

(assert (not d!472587))

(assert b_and!111387)

(assert (not b!1587935))

(assert (not b!1587953))

(assert (not b!1588206))

(assert (not b!1588079))

(assert (not b!1588258))

(assert (not d!472649))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!43663))

(assert b_and!111393)

(assert (not b_next!43669))

(assert b_and!111395)

(assert b_and!111389)

(assert (not b_next!43679))

(assert (not b_next!43685))

(assert b_and!111349)

(assert b_and!111385)

(assert b_and!111353)

(assert b_and!111387)

(assert (not b_next!43681))

(assert (not b_next!43667))

(assert (not b_next!43665))

(assert b_and!111391)

(assert (not b_next!43683))

(check-sat)

(pop 1)

