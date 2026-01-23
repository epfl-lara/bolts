; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152002 () Bool)

(assert start!152002)

(declare-fun b!1610748 () Bool)

(declare-fun b_free!43239 () Bool)

(declare-fun b_next!43943 () Bool)

(assert (=> b!1610748 (= b_free!43239 (not b_next!43943))))

(declare-fun tp!469822 () Bool)

(declare-fun b_and!114173 () Bool)

(assert (=> b!1610748 (= tp!469822 b_and!114173)))

(declare-fun b_free!43241 () Bool)

(declare-fun b_next!43945 () Bool)

(assert (=> b!1610748 (= b_free!43241 (not b_next!43945))))

(declare-fun tp!469823 () Bool)

(declare-fun b_and!114175 () Bool)

(assert (=> b!1610748 (= tp!469823 b_and!114175)))

(declare-fun b!1610757 () Bool)

(declare-fun b_free!43243 () Bool)

(declare-fun b_next!43947 () Bool)

(assert (=> b!1610757 (= b_free!43243 (not b_next!43947))))

(declare-fun tp!469820 () Bool)

(declare-fun b_and!114177 () Bool)

(assert (=> b!1610757 (= tp!469820 b_and!114177)))

(declare-fun b_free!43245 () Bool)

(declare-fun b_next!43949 () Bool)

(assert (=> b!1610757 (= b_free!43245 (not b_next!43949))))

(declare-fun tp!469826 () Bool)

(declare-fun b_and!114179 () Bool)

(assert (=> b!1610757 (= tp!469826 b_and!114179)))

(declare-fun b!1610741 () Bool)

(declare-fun e!1032988 () Bool)

(declare-datatypes ((C!9008 0))(
  ( (C!9009 (val!5100 Int)) )
))
(declare-datatypes ((List!17621 0))(
  ( (Nil!17551) (Cons!17551 (h!22952 C!9008) (t!147926 List!17621)) )
))
(declare-fun lt!574026 () List!17621)

(declare-datatypes ((IArray!11657 0))(
  ( (IArray!11658 (innerList!5886 List!17621)) )
))
(declare-datatypes ((Conc!5826 0))(
  ( (Node!5826 (left!14156 Conc!5826) (right!14486 Conc!5826) (csize!11882 Int) (cheight!6037 Int)) (Leaf!8591 (xs!8654 IArray!11657) (csize!11883 Int)) (Empty!5826) )
))
(declare-datatypes ((BalanceConc!11596 0))(
  ( (BalanceConc!11597 (c!262607 Conc!5826)) )
))
(declare-fun lt!574041 () BalanceConc!11596)

(declare-fun head!3282 (BalanceConc!11596) C!9008)

(assert (=> b!1610741 (= e!1032988 (= lt!574026 (Cons!17551 (head!3282 lt!574041) Nil!17551)))))

(declare-fun b!1610742 () Bool)

(declare-fun e!1032985 () Bool)

(declare-fun e!1032972 () Bool)

(assert (=> b!1610742 (= e!1032985 e!1032972)))

(declare-fun res!718012 () Bool)

(assert (=> b!1610742 (=> res!718012 e!1032972)))

(declare-fun lt!574038 () List!17621)

(declare-fun lt!574028 () List!17621)

(declare-fun lt!574040 () List!17621)

(assert (=> b!1610742 (= res!718012 (or (not (= lt!574028 lt!574038)) (not (= lt!574038 lt!574040)) (not (= lt!574028 lt!574040))))))

(declare-datatypes ((LexerInterface!2718 0))(
  ( (LexerInterfaceExt!2715 (__x!11660 Int)) (Lexer!2716) )
))
(declare-fun thiss!17113 () LexerInterface!2718)

(declare-datatypes ((List!17622 0))(
  ( (Nil!17552) (Cons!17552 (h!22953 (_ BitVec 16)) (t!147927 List!17622)) )
))
(declare-datatypes ((TokenValue!3179 0))(
  ( (FloatLiteralValue!6358 (text!22698 List!17622)) (TokenValueExt!3178 (__x!11661 Int)) (Broken!15895 (value!97683 List!17622)) (Object!3248) (End!3179) (Def!3179) (Underscore!3179) (Match!3179) (Else!3179) (Error!3179) (Case!3179) (If!3179) (Extends!3179) (Abstract!3179) (Class!3179) (Val!3179) (DelimiterValue!6358 (del!3239 List!17622)) (KeywordValue!3185 (value!97684 List!17622)) (CommentValue!6358 (value!97685 List!17622)) (WhitespaceValue!6358 (value!97686 List!17622)) (IndentationValue!3179 (value!97687 List!17622)) (String!20226) (Int32!3179) (Broken!15896 (value!97688 List!17622)) (Boolean!3180) (Unit!28184) (OperatorValue!3182 (op!3239 List!17622)) (IdentifierValue!6358 (value!97689 List!17622)) (IdentifierValue!6359 (value!97690 List!17622)) (WhitespaceValue!6359 (value!97691 List!17622)) (True!6358) (False!6358) (Broken!15897 (value!97692 List!17622)) (Broken!15898 (value!97693 List!17622)) (True!6359) (RightBrace!3179) (RightBracket!3179) (Colon!3179) (Null!3179) (Comma!3179) (LeftBracket!3179) (False!6359) (LeftBrace!3179) (ImaginaryLiteralValue!3179 (text!22699 List!17622)) (StringLiteralValue!9537 (value!97694 List!17622)) (EOFValue!3179 (value!97695 List!17622)) (IdentValue!3179 (value!97696 List!17622)) (DelimiterValue!6359 (value!97697 List!17622)) (DedentValue!3179 (value!97698 List!17622)) (NewLineValue!3179 (value!97699 List!17622)) (IntegerValue!9537 (value!97700 (_ BitVec 32)) (text!22700 List!17622)) (IntegerValue!9538 (value!97701 Int) (text!22701 List!17622)) (Times!3179) (Or!3179) (Equal!3179) (Minus!3179) (Broken!15899 (value!97702 List!17622)) (And!3179) (Div!3179) (LessEqual!3179) (Mod!3179) (Concat!7596) (Not!3179) (Plus!3179) (SpaceValue!3179 (value!97703 List!17622)) (IntegerValue!9539 (value!97704 Int) (text!22702 List!17622)) (StringLiteralValue!9538 (text!22703 List!17622)) (FloatLiteralValue!6359 (text!22704 List!17622)) (BytesLiteralValue!3179 (value!97705 List!17622)) (CommentValue!6359 (value!97706 List!17622)) (StringLiteralValue!9539 (value!97707 List!17622)) (ErrorTokenValue!3179 (msg!3240 List!17622)) )
))
(declare-datatypes ((Regex!4417 0))(
  ( (ElementMatch!4417 (c!262608 C!9008)) (Concat!7597 (regOne!9346 Regex!4417) (regTwo!9346 Regex!4417)) (EmptyExpr!4417) (Star!4417 (reg!4746 Regex!4417)) (EmptyLang!4417) (Union!4417 (regOne!9347 Regex!4417) (regTwo!9347 Regex!4417)) )
))
(declare-datatypes ((String!20227 0))(
  ( (String!20228 (value!97708 String)) )
))
(declare-datatypes ((TokenValueInjection!6018 0))(
  ( (TokenValueInjection!6019 (toValue!4512 Int) (toChars!4371 Int)) )
))
(declare-datatypes ((Rule!5978 0))(
  ( (Rule!5979 (regex!3089 Regex!4417) (tag!3365 String!20227) (isSeparator!3089 Bool) (transformation!3089 TokenValueInjection!6018)) )
))
(declare-datatypes ((Token!5744 0))(
  ( (Token!5745 (value!97709 TokenValue!3179) (rule!4909 Rule!5978) (size!14134 Int) (originalCharacters!3903 List!17621)) )
))
(declare-datatypes ((List!17623 0))(
  ( (Nil!17553) (Cons!17553 (h!22954 Token!5744) (t!147928 List!17623)) )
))
(declare-fun tokens!457 () List!17623)

(declare-fun printList!833 (LexerInterface!2718 List!17623) List!17621)

(assert (=> b!1610742 (= lt!574038 (printList!833 thiss!17113 (Cons!17553 (h!22954 tokens!457) Nil!17553)))))

(declare-fun lt!574024 () BalanceConc!11596)

(declare-fun list!6843 (BalanceConc!11596) List!17621)

(assert (=> b!1610742 (= lt!574028 (list!6843 lt!574024))))

(declare-datatypes ((IArray!11659 0))(
  ( (IArray!11660 (innerList!5887 List!17623)) )
))
(declare-datatypes ((Conc!5827 0))(
  ( (Node!5827 (left!14157 Conc!5827) (right!14487 Conc!5827) (csize!11884 Int) (cheight!6038 Int)) (Leaf!8592 (xs!8655 IArray!11659) (csize!11885 Int)) (Empty!5827) )
))
(declare-datatypes ((BalanceConc!11598 0))(
  ( (BalanceConc!11599 (c!262609 Conc!5827)) )
))
(declare-fun lt!574043 () BalanceConc!11598)

(declare-fun printTailRec!771 (LexerInterface!2718 BalanceConc!11598 Int BalanceConc!11596) BalanceConc!11596)

(assert (=> b!1610742 (= lt!574024 (printTailRec!771 thiss!17113 lt!574043 0 (BalanceConc!11597 Empty!5826)))))

(declare-fun print!1249 (LexerInterface!2718 BalanceConc!11598) BalanceConc!11596)

(assert (=> b!1610742 (= lt!574024 (print!1249 thiss!17113 lt!574043))))

(declare-fun singletonSeq!1456 (Token!5744) BalanceConc!11598)

(assert (=> b!1610742 (= lt!574043 (singletonSeq!1456 (h!22954 tokens!457)))))

(declare-datatypes ((List!17624 0))(
  ( (Nil!17554) (Cons!17554 (h!22955 Rule!5978) (t!147929 List!17624)) )
))
(declare-fun rules!1846 () List!17624)

(declare-datatypes ((tuple2!17044 0))(
  ( (tuple2!17045 (_1!9924 Token!5744) (_2!9924 List!17621)) )
))
(declare-datatypes ((Option!3182 0))(
  ( (None!3181) (Some!3181 (v!24140 tuple2!17044)) )
))
(declare-fun lt!574046 () Option!3182)

(declare-fun lt!574032 () List!17621)

(declare-fun maxPrefix!1282 (LexerInterface!2718 List!17624 List!17621) Option!3182)

(assert (=> b!1610742 (= lt!574046 (maxPrefix!1282 thiss!17113 rules!1846 lt!574032))))

(declare-fun e!1032983 () Bool)

(declare-fun tp!469828 () Bool)

(declare-fun e!1032974 () Bool)

(declare-fun b!1610743 () Bool)

(declare-fun inv!21 (TokenValue!3179) Bool)

(assert (=> b!1610743 (= e!1032983 (and (inv!21 (value!97709 (h!22954 tokens!457))) e!1032974 tp!469828))))

(declare-fun b!1610744 () Bool)

(declare-fun e!1032982 () Bool)

(declare-fun e!1032976 () Bool)

(declare-fun tp!469821 () Bool)

(assert (=> b!1610744 (= e!1032982 (and e!1032976 tp!469821))))

(declare-fun res!718025 () Bool)

(declare-fun e!1032975 () Bool)

(assert (=> start!152002 (=> (not res!718025) (not e!1032975))))

(get-info :version)

(assert (=> start!152002 (= res!718025 ((_ is Lexer!2716) thiss!17113))))

(assert (=> start!152002 e!1032975))

(assert (=> start!152002 true))

(assert (=> start!152002 e!1032982))

(declare-fun e!1032980 () Bool)

(assert (=> start!152002 e!1032980))

(declare-fun b!1610745 () Bool)

(declare-fun e!1032979 () Bool)

(declare-fun e!1032977 () Bool)

(assert (=> b!1610745 (= e!1032979 (not e!1032977))))

(declare-fun res!718014 () Bool)

(assert (=> b!1610745 (=> res!718014 e!1032977)))

(declare-fun lt!574025 () List!17623)

(assert (=> b!1610745 (= res!718014 (not (= lt!574025 (t!147928 tokens!457))))))

(declare-datatypes ((tuple2!17046 0))(
  ( (tuple2!17047 (_1!9925 BalanceConc!11598) (_2!9925 BalanceConc!11596)) )
))
(declare-fun lt!574037 () tuple2!17046)

(declare-fun list!6844 (BalanceConc!11598) List!17623)

(assert (=> b!1610745 (= lt!574025 (list!6844 (_1!9925 lt!574037)))))

(declare-datatypes ((Unit!28185 0))(
  ( (Unit!28186) )
))
(declare-fun lt!574035 () Unit!28185)

(declare-fun theoremInvertabilityWhenTokenListSeparable!163 (LexerInterface!2718 List!17624 List!17623) Unit!28185)

(assert (=> b!1610745 (= lt!574035 (theoremInvertabilityWhenTokenListSeparable!163 thiss!17113 rules!1846 (t!147928 tokens!457)))))

(declare-fun lt!574036 () List!17621)

(declare-fun isPrefix!1349 (List!17621 List!17621) Bool)

(assert (=> b!1610745 (isPrefix!1349 lt!574040 lt!574036)))

(declare-fun lt!574029 () Unit!28185)

(declare-fun lt!574031 () List!17621)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!874 (List!17621 List!17621) Unit!28185)

(assert (=> b!1610745 (= lt!574029 (lemmaConcatTwoListThenFirstIsPrefix!874 lt!574040 lt!574031))))

(declare-fun b!1610746 () Bool)

(declare-fun res!718020 () Bool)

(assert (=> b!1610746 (=> res!718020 e!1032985)))

(declare-fun separableTokensPredicate!660 (LexerInterface!2718 Token!5744 Token!5744 List!17624) Bool)

(assert (=> b!1610746 (= res!718020 (not (separableTokensPredicate!660 thiss!17113 (h!22954 tokens!457) (h!22954 (t!147928 tokens!457)) rules!1846)))))

(declare-fun b!1610747 () Bool)

(declare-fun res!718008 () Bool)

(assert (=> b!1610747 (=> res!718008 e!1032972)))

(declare-fun isEmpty!10594 (BalanceConc!11598) Bool)

(declare-fun lex!1202 (LexerInterface!2718 List!17624 BalanceConc!11596) tuple2!17046)

(declare-fun seqFromList!1927 (List!17621) BalanceConc!11596)

(assert (=> b!1610747 (= res!718008 (isEmpty!10594 (_1!9925 (lex!1202 thiss!17113 rules!1846 (seqFromList!1927 lt!574040)))))))

(declare-fun e!1032990 () Bool)

(assert (=> b!1610748 (= e!1032990 (and tp!469822 tp!469823))))

(declare-fun b!1610749 () Bool)

(declare-fun res!718018 () Bool)

(assert (=> b!1610749 (=> (not res!718018) (not e!1032975))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!411 (LexerInterface!2718 List!17623 List!17624) Bool)

(assert (=> b!1610749 (= res!718018 (tokensListTwoByTwoPredicateSeparableList!411 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1610750 () Bool)

(declare-fun res!718009 () Bool)

(assert (=> b!1610750 (=> (not res!718009) (not e!1032975))))

(assert (=> b!1610750 (= res!718009 (and (not ((_ is Nil!17553) tokens!457)) (not ((_ is Nil!17553) (t!147928 tokens!457)))))))

(declare-fun tp!469825 () Bool)

(declare-fun e!1032987 () Bool)

(declare-fun b!1610751 () Bool)

(declare-fun inv!22971 (String!20227) Bool)

(declare-fun inv!22974 (TokenValueInjection!6018) Bool)

(assert (=> b!1610751 (= e!1032976 (and tp!469825 (inv!22971 (tag!3365 (h!22955 rules!1846))) (inv!22974 (transformation!3089 (h!22955 rules!1846))) e!1032987))))

(declare-fun b!1610752 () Bool)

(assert (=> b!1610752 (= e!1032975 e!1032979)))

(declare-fun res!718015 () Bool)

(assert (=> b!1610752 (=> (not res!718015) (not e!1032979))))

(assert (=> b!1610752 (= res!718015 (= lt!574032 lt!574036))))

(declare-fun ++!4609 (List!17621 List!17621) List!17621)

(assert (=> b!1610752 (= lt!574036 (++!4609 lt!574040 lt!574031))))

(declare-fun lt!574048 () BalanceConc!11596)

(assert (=> b!1610752 (= lt!574032 (list!6843 lt!574048))))

(assert (=> b!1610752 (= lt!574031 (list!6843 lt!574041))))

(declare-fun lt!574034 () BalanceConc!11596)

(assert (=> b!1610752 (= lt!574040 (list!6843 lt!574034))))

(declare-fun charsOf!1738 (Token!5744) BalanceConc!11596)

(assert (=> b!1610752 (= lt!574034 (charsOf!1738 (h!22954 tokens!457)))))

(assert (=> b!1610752 (= lt!574037 (lex!1202 thiss!17113 rules!1846 lt!574041))))

(declare-fun lt!574042 () BalanceConc!11598)

(assert (=> b!1610752 (= lt!574041 (print!1249 thiss!17113 lt!574042))))

(declare-fun seqFromList!1928 (List!17623) BalanceConc!11598)

(assert (=> b!1610752 (= lt!574042 (seqFromList!1928 (t!147928 tokens!457)))))

(assert (=> b!1610752 (= lt!574048 (print!1249 thiss!17113 (seqFromList!1928 tokens!457)))))

(declare-fun b!1610753 () Bool)

(declare-fun e!1032989 () Bool)

(assert (=> b!1610753 (= e!1032972 e!1032989)))

(declare-fun res!718019 () Bool)

(assert (=> b!1610753 (=> res!718019 e!1032989)))

(declare-fun isDefined!2551 (Option!3182) Bool)

(assert (=> b!1610753 (= res!718019 (not (isDefined!2551 lt!574046)))))

(declare-fun lt!574027 () Unit!28185)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!292 (LexerInterface!2718 List!17624 List!17621 List!17621) Unit!28185)

(assert (=> b!1610753 (= lt!574027 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!292 thiss!17113 rules!1846 lt!574040 lt!574031))))

(declare-fun b!1610754 () Bool)

(declare-fun e!1032973 () Bool)

(declare-fun e!1032984 () Bool)

(assert (=> b!1610754 (= e!1032973 e!1032984)))

(declare-fun res!718023 () Bool)

(assert (=> b!1610754 (=> res!718023 e!1032984)))

(declare-fun lt!574047 () Regex!4417)

(declare-fun prefixMatch!352 (Regex!4417 List!17621) Bool)

(assert (=> b!1610754 (= res!718023 (prefixMatch!352 lt!574047 (++!4609 lt!574040 lt!574026)))))

(declare-fun lt!574033 () BalanceConc!11596)

(assert (=> b!1610754 (= lt!574026 (list!6843 lt!574033))))

(declare-fun b!1610755 () Bool)

(assert (=> b!1610755 (= e!1032977 e!1032985)))

(declare-fun res!718026 () Bool)

(assert (=> b!1610755 (=> res!718026 e!1032985)))

(declare-fun lt!574030 () List!17623)

(declare-fun lt!574045 () List!17623)

(assert (=> b!1610755 (= res!718026 (or (not (= lt!574025 lt!574030)) (not (= lt!574030 lt!574045))))))

(assert (=> b!1610755 (= lt!574030 (list!6844 lt!574042))))

(assert (=> b!1610755 (= lt!574025 lt!574045)))

(declare-fun prepend!591 (BalanceConc!11598 Token!5744) BalanceConc!11598)

(assert (=> b!1610755 (= lt!574045 (list!6844 (prepend!591 (seqFromList!1928 (t!147928 (t!147928 tokens!457))) (h!22954 (t!147928 tokens!457)))))))

(declare-fun lt!574044 () Unit!28185)

(declare-fun seqFromListBHdTlConstructive!166 (Token!5744 List!17623 BalanceConc!11598) Unit!28185)

(assert (=> b!1610755 (= lt!574044 (seqFromListBHdTlConstructive!166 (h!22954 (t!147928 tokens!457)) (t!147928 (t!147928 tokens!457)) (_1!9925 lt!574037)))))

(declare-fun b!1610756 () Bool)

(declare-fun tp!469824 () Bool)

(assert (=> b!1610756 (= e!1032974 (and tp!469824 (inv!22971 (tag!3365 (rule!4909 (h!22954 tokens!457)))) (inv!22974 (transformation!3089 (rule!4909 (h!22954 tokens!457)))) e!1032990))))

(assert (=> b!1610757 (= e!1032987 (and tp!469820 tp!469826))))

(declare-fun b!1610758 () Bool)

(assert (=> b!1610758 (= e!1032984 true)))

(declare-fun lt!574039 () BalanceConc!11596)

(assert (=> b!1610758 (= lt!574039 (seqFromList!1927 (originalCharacters!3903 (h!22954 tokens!457))))))

(assert (=> b!1610758 e!1032988))

(declare-fun res!718011 () Bool)

(assert (=> b!1610758 (=> (not res!718011) (not e!1032988))))

(assert (=> b!1610758 (= res!718011 (= lt!574040 (originalCharacters!3903 (h!22954 tokens!457))))))

(declare-fun b!1610759 () Bool)

(declare-fun res!718024 () Bool)

(assert (=> b!1610759 (=> res!718024 e!1032972)))

(declare-fun rulesProduceIndividualToken!1370 (LexerInterface!2718 List!17624 Token!5744) Bool)

(assert (=> b!1610759 (= res!718024 (not (rulesProduceIndividualToken!1370 thiss!17113 rules!1846 (h!22954 tokens!457))))))

(declare-fun b!1610760 () Bool)

(declare-fun res!718016 () Bool)

(assert (=> b!1610760 (=> (not res!718016) (not e!1032975))))

(declare-fun rulesProduceEachTokenIndividuallyList!920 (LexerInterface!2718 List!17624 List!17623) Bool)

(assert (=> b!1610760 (= res!718016 (rulesProduceEachTokenIndividuallyList!920 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1610761 () Bool)

(assert (=> b!1610761 (= e!1032989 e!1032973)))

(declare-fun res!718010 () Bool)

(assert (=> b!1610761 (=> res!718010 e!1032973)))

(declare-fun prefixMatchZipperSequence!453 (Regex!4417 BalanceConc!11596) Bool)

(declare-fun ++!4610 (BalanceConc!11596 BalanceConc!11596) BalanceConc!11596)

(assert (=> b!1610761 (= res!718010 (prefixMatchZipperSequence!453 lt!574047 (++!4610 lt!574034 lt!574033)))))

(declare-fun singletonSeq!1457 (C!9008) BalanceConc!11596)

(declare-fun apply!4378 (BalanceConc!11596 Int) C!9008)

(assert (=> b!1610761 (= lt!574033 (singletonSeq!1457 (apply!4378 (charsOf!1738 (h!22954 (t!147928 tokens!457))) 0)))))

(declare-fun rulesRegex!479 (LexerInterface!2718 List!17624) Regex!4417)

(assert (=> b!1610761 (= lt!574047 (rulesRegex!479 thiss!17113 rules!1846))))

(declare-fun b!1610762 () Bool)

(declare-fun res!718022 () Bool)

(assert (=> b!1610762 (=> (not res!718022) (not e!1032975))))

(declare-fun isEmpty!10595 (List!17624) Bool)

(assert (=> b!1610762 (= res!718022 (not (isEmpty!10595 rules!1846)))))

(declare-fun b!1610763 () Bool)

(declare-fun res!718013 () Bool)

(assert (=> b!1610763 (=> (not res!718013) (not e!1032975))))

(declare-fun rulesInvariant!2387 (LexerInterface!2718 List!17624) Bool)

(assert (=> b!1610763 (= res!718013 (rulesInvariant!2387 thiss!17113 rules!1846))))

(declare-fun b!1610764 () Bool)

(declare-fun tp!469827 () Bool)

(declare-fun inv!22975 (Token!5744) Bool)

(assert (=> b!1610764 (= e!1032980 (and (inv!22975 (h!22954 tokens!457)) e!1032983 tp!469827))))

(declare-fun b!1610765 () Bool)

(declare-fun res!718021 () Bool)

(assert (=> b!1610765 (=> (not res!718021) (not e!1032988))))

(declare-fun head!3283 (List!17621) C!9008)

(assert (=> b!1610765 (= res!718021 (= lt!574026 (Cons!17551 (head!3283 (originalCharacters!3903 (h!22954 (t!147928 tokens!457)))) Nil!17551)))))

(declare-fun b!1610766 () Bool)

(declare-fun res!718017 () Bool)

(assert (=> b!1610766 (=> (not res!718017) (not e!1032988))))

(assert (=> b!1610766 (= res!718017 (= lt!574026 (Cons!17551 (head!3283 lt!574031) Nil!17551)))))

(assert (= (and start!152002 res!718025) b!1610762))

(assert (= (and b!1610762 res!718022) b!1610763))

(assert (= (and b!1610763 res!718013) b!1610760))

(assert (= (and b!1610760 res!718016) b!1610749))

(assert (= (and b!1610749 res!718018) b!1610750))

(assert (= (and b!1610750 res!718009) b!1610752))

(assert (= (and b!1610752 res!718015) b!1610745))

(assert (= (and b!1610745 (not res!718014)) b!1610755))

(assert (= (and b!1610755 (not res!718026)) b!1610746))

(assert (= (and b!1610746 (not res!718020)) b!1610742))

(assert (= (and b!1610742 (not res!718012)) b!1610759))

(assert (= (and b!1610759 (not res!718024)) b!1610747))

(assert (= (and b!1610747 (not res!718008)) b!1610753))

(assert (= (and b!1610753 (not res!718019)) b!1610761))

(assert (= (and b!1610761 (not res!718010)) b!1610754))

(assert (= (and b!1610754 (not res!718023)) b!1610758))

(assert (= (and b!1610758 res!718011) b!1610765))

(assert (= (and b!1610765 res!718021) b!1610766))

(assert (= (and b!1610766 res!718017) b!1610741))

(assert (= b!1610751 b!1610757))

(assert (= b!1610744 b!1610751))

(assert (= (and start!152002 ((_ is Cons!17554) rules!1846)) b!1610744))

(assert (= b!1610756 b!1610748))

(assert (= b!1610743 b!1610756))

(assert (= b!1610764 b!1610743))

(assert (= (and start!152002 ((_ is Cons!17553) tokens!457)) b!1610764))

(declare-fun m!1927159 () Bool)

(assert (=> b!1610751 m!1927159))

(declare-fun m!1927161 () Bool)

(assert (=> b!1610751 m!1927161))

(declare-fun m!1927163 () Bool)

(assert (=> b!1610761 m!1927163))

(declare-fun m!1927165 () Bool)

(assert (=> b!1610761 m!1927165))

(declare-fun m!1927167 () Bool)

(assert (=> b!1610761 m!1927167))

(declare-fun m!1927169 () Bool)

(assert (=> b!1610761 m!1927169))

(assert (=> b!1610761 m!1927167))

(assert (=> b!1610761 m!1927165))

(declare-fun m!1927171 () Bool)

(assert (=> b!1610761 m!1927171))

(assert (=> b!1610761 m!1927169))

(declare-fun m!1927173 () Bool)

(assert (=> b!1610761 m!1927173))

(declare-fun m!1927175 () Bool)

(assert (=> b!1610747 m!1927175))

(assert (=> b!1610747 m!1927175))

(declare-fun m!1927177 () Bool)

(assert (=> b!1610747 m!1927177))

(declare-fun m!1927179 () Bool)

(assert (=> b!1610747 m!1927179))

(declare-fun m!1927181 () Bool)

(assert (=> b!1610755 m!1927181))

(declare-fun m!1927183 () Bool)

(assert (=> b!1610755 m!1927183))

(declare-fun m!1927185 () Bool)

(assert (=> b!1610755 m!1927185))

(declare-fun m!1927187 () Bool)

(assert (=> b!1610755 m!1927187))

(assert (=> b!1610755 m!1927183))

(assert (=> b!1610755 m!1927187))

(declare-fun m!1927189 () Bool)

(assert (=> b!1610755 m!1927189))

(declare-fun m!1927191 () Bool)

(assert (=> b!1610753 m!1927191))

(declare-fun m!1927193 () Bool)

(assert (=> b!1610753 m!1927193))

(declare-fun m!1927195 () Bool)

(assert (=> b!1610763 m!1927195))

(declare-fun m!1927197 () Bool)

(assert (=> b!1610745 m!1927197))

(declare-fun m!1927199 () Bool)

(assert (=> b!1610745 m!1927199))

(declare-fun m!1927201 () Bool)

(assert (=> b!1610745 m!1927201))

(declare-fun m!1927203 () Bool)

(assert (=> b!1610745 m!1927203))

(declare-fun m!1927205 () Bool)

(assert (=> b!1610764 m!1927205))

(declare-fun m!1927207 () Bool)

(assert (=> b!1610741 m!1927207))

(declare-fun m!1927209 () Bool)

(assert (=> b!1610758 m!1927209))

(declare-fun m!1927211 () Bool)

(assert (=> b!1610752 m!1927211))

(declare-fun m!1927213 () Bool)

(assert (=> b!1610752 m!1927213))

(declare-fun m!1927215 () Bool)

(assert (=> b!1610752 m!1927215))

(declare-fun m!1927217 () Bool)

(assert (=> b!1610752 m!1927217))

(declare-fun m!1927219 () Bool)

(assert (=> b!1610752 m!1927219))

(declare-fun m!1927221 () Bool)

(assert (=> b!1610752 m!1927221))

(declare-fun m!1927223 () Bool)

(assert (=> b!1610752 m!1927223))

(declare-fun m!1927225 () Bool)

(assert (=> b!1610752 m!1927225))

(declare-fun m!1927227 () Bool)

(assert (=> b!1610752 m!1927227))

(declare-fun m!1927229 () Bool)

(assert (=> b!1610752 m!1927229))

(assert (=> b!1610752 m!1927221))

(declare-fun m!1927231 () Bool)

(assert (=> b!1610765 m!1927231))

(declare-fun m!1927233 () Bool)

(assert (=> b!1610759 m!1927233))

(declare-fun m!1927235 () Bool)

(assert (=> b!1610766 m!1927235))

(declare-fun m!1927237 () Bool)

(assert (=> b!1610742 m!1927237))

(declare-fun m!1927239 () Bool)

(assert (=> b!1610742 m!1927239))

(declare-fun m!1927241 () Bool)

(assert (=> b!1610742 m!1927241))

(declare-fun m!1927243 () Bool)

(assert (=> b!1610742 m!1927243))

(declare-fun m!1927245 () Bool)

(assert (=> b!1610742 m!1927245))

(declare-fun m!1927247 () Bool)

(assert (=> b!1610742 m!1927247))

(declare-fun m!1927249 () Bool)

(assert (=> b!1610749 m!1927249))

(declare-fun m!1927251 () Bool)

(assert (=> b!1610762 m!1927251))

(declare-fun m!1927253 () Bool)

(assert (=> b!1610754 m!1927253))

(assert (=> b!1610754 m!1927253))

(declare-fun m!1927255 () Bool)

(assert (=> b!1610754 m!1927255))

(declare-fun m!1927257 () Bool)

(assert (=> b!1610754 m!1927257))

(declare-fun m!1927259 () Bool)

(assert (=> b!1610756 m!1927259))

(declare-fun m!1927261 () Bool)

(assert (=> b!1610756 m!1927261))

(declare-fun m!1927263 () Bool)

(assert (=> b!1610746 m!1927263))

(declare-fun m!1927265 () Bool)

(assert (=> b!1610743 m!1927265))

(declare-fun m!1927267 () Bool)

(assert (=> b!1610760 m!1927267))

(check-sat (not b!1610754) b_and!114177 (not b!1610761) (not b_next!43949) (not b!1610756) (not b!1610747) (not b!1610742) (not b_next!43947) (not b!1610746) (not b!1610743) (not b_next!43943) (not b!1610760) (not b!1610741) (not b!1610766) (not b!1610752) (not b_next!43945) (not b!1610755) (not b!1610749) (not b!1610745) b_and!114173 (not b!1610759) b_and!114175 (not b!1610758) (not b!1610744) (not b!1610764) (not b!1610762) (not b!1610763) (not b!1610751) (not b!1610765) b_and!114179 (not b!1610753))
(check-sat (not b_next!43945) b_and!114177 (not b_next!43949) (not b_next!43947) (not b_next!43943) b_and!114179 b_and!114173 b_and!114175)
