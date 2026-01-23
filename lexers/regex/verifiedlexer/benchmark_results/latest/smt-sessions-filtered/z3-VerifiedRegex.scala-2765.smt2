; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152006 () Bool)

(assert start!152006)

(declare-fun b!1610911 () Bool)

(declare-fun b_free!43255 () Bool)

(declare-fun b_next!43959 () Bool)

(assert (=> b!1610911 (= b_free!43255 (not b_next!43959))))

(declare-fun tp!469878 () Bool)

(declare-fun b_and!114189 () Bool)

(assert (=> b!1610911 (= tp!469878 b_and!114189)))

(declare-fun b_free!43257 () Bool)

(declare-fun b_next!43961 () Bool)

(assert (=> b!1610911 (= b_free!43257 (not b_next!43961))))

(declare-fun tp!469881 () Bool)

(declare-fun b_and!114191 () Bool)

(assert (=> b!1610911 (= tp!469881 b_and!114191)))

(declare-fun b!1610920 () Bool)

(declare-fun b_free!43259 () Bool)

(declare-fun b_next!43963 () Bool)

(assert (=> b!1610920 (= b_free!43259 (not b_next!43963))))

(declare-fun tp!469879 () Bool)

(declare-fun b_and!114193 () Bool)

(assert (=> b!1610920 (= tp!469879 b_and!114193)))

(declare-fun b_free!43261 () Bool)

(declare-fun b_next!43965 () Bool)

(assert (=> b!1610920 (= b_free!43261 (not b_next!43965))))

(declare-fun tp!469882 () Bool)

(declare-fun b_and!114195 () Bool)

(assert (=> b!1610920 (= tp!469882 b_and!114195)))

(declare-fun e!1033092 () Bool)

(declare-fun e!1033102 () Bool)

(declare-fun tp!469880 () Bool)

(declare-datatypes ((List!17629 0))(
  ( (Nil!17559) (Cons!17559 (h!22960 (_ BitVec 16)) (t!147934 List!17629)) )
))
(declare-datatypes ((TokenValue!3181 0))(
  ( (FloatLiteralValue!6362 (text!22712 List!17629)) (TokenValueExt!3180 (__x!11664 Int)) (Broken!15905 (value!97740 List!17629)) (Object!3250) (End!3181) (Def!3181) (Underscore!3181) (Match!3181) (Else!3181) (Error!3181) (Case!3181) (If!3181) (Extends!3181) (Abstract!3181) (Class!3181) (Val!3181) (DelimiterValue!6362 (del!3241 List!17629)) (KeywordValue!3187 (value!97741 List!17629)) (CommentValue!6362 (value!97742 List!17629)) (WhitespaceValue!6362 (value!97743 List!17629)) (IndentationValue!3181 (value!97744 List!17629)) (String!20236) (Int32!3181) (Broken!15906 (value!97745 List!17629)) (Boolean!3182) (Unit!28190) (OperatorValue!3184 (op!3241 List!17629)) (IdentifierValue!6362 (value!97746 List!17629)) (IdentifierValue!6363 (value!97747 List!17629)) (WhitespaceValue!6363 (value!97748 List!17629)) (True!6362) (False!6362) (Broken!15907 (value!97749 List!17629)) (Broken!15908 (value!97750 List!17629)) (True!6363) (RightBrace!3181) (RightBracket!3181) (Colon!3181) (Null!3181) (Comma!3181) (LeftBracket!3181) (False!6363) (LeftBrace!3181) (ImaginaryLiteralValue!3181 (text!22713 List!17629)) (StringLiteralValue!9543 (value!97751 List!17629)) (EOFValue!3181 (value!97752 List!17629)) (IdentValue!3181 (value!97753 List!17629)) (DelimiterValue!6363 (value!97754 List!17629)) (DedentValue!3181 (value!97755 List!17629)) (NewLineValue!3181 (value!97756 List!17629)) (IntegerValue!9543 (value!97757 (_ BitVec 32)) (text!22714 List!17629)) (IntegerValue!9544 (value!97758 Int) (text!22715 List!17629)) (Times!3181) (Or!3181) (Equal!3181) (Minus!3181) (Broken!15909 (value!97759 List!17629)) (And!3181) (Div!3181) (LessEqual!3181) (Mod!3181) (Concat!7600) (Not!3181) (Plus!3181) (SpaceValue!3181 (value!97760 List!17629)) (IntegerValue!9545 (value!97761 Int) (text!22716 List!17629)) (StringLiteralValue!9544 (text!22717 List!17629)) (FloatLiteralValue!6363 (text!22718 List!17629)) (BytesLiteralValue!3181 (value!97762 List!17629)) (CommentValue!6363 (value!97763 List!17629)) (StringLiteralValue!9545 (value!97764 List!17629)) (ErrorTokenValue!3181 (msg!3242 List!17629)) )
))
(declare-datatypes ((C!9012 0))(
  ( (C!9013 (val!5102 Int)) )
))
(declare-datatypes ((List!17630 0))(
  ( (Nil!17560) (Cons!17560 (h!22961 C!9012) (t!147935 List!17630)) )
))
(declare-datatypes ((IArray!11665 0))(
  ( (IArray!11666 (innerList!5890 List!17630)) )
))
(declare-datatypes ((Conc!5830 0))(
  ( (Node!5830 (left!14161 Conc!5830) (right!14491 Conc!5830) (csize!11890 Int) (cheight!6041 Int)) (Leaf!8596 (xs!8658 IArray!11665) (csize!11891 Int)) (Empty!5830) )
))
(declare-datatypes ((BalanceConc!11604 0))(
  ( (BalanceConc!11605 (c!262615 Conc!5830)) )
))
(declare-datatypes ((Regex!4419 0))(
  ( (ElementMatch!4419 (c!262616 C!9012)) (Concat!7601 (regOne!9350 Regex!4419) (regTwo!9350 Regex!4419)) (EmptyExpr!4419) (Star!4419 (reg!4748 Regex!4419)) (EmptyLang!4419) (Union!4419 (regOne!9351 Regex!4419) (regTwo!9351 Regex!4419)) )
))
(declare-datatypes ((String!20237 0))(
  ( (String!20238 (value!97765 String)) )
))
(declare-datatypes ((TokenValueInjection!6022 0))(
  ( (TokenValueInjection!6023 (toValue!4514 Int) (toChars!4373 Int)) )
))
(declare-datatypes ((Rule!5982 0))(
  ( (Rule!5983 (regex!3091 Regex!4419) (tag!3367 String!20237) (isSeparator!3091 Bool) (transformation!3091 TokenValueInjection!6022)) )
))
(declare-datatypes ((Token!5748 0))(
  ( (Token!5749 (value!97766 TokenValue!3181) (rule!4911 Rule!5982) (size!14136 Int) (originalCharacters!3905 List!17630)) )
))
(declare-datatypes ((List!17631 0))(
  ( (Nil!17561) (Cons!17561 (h!22962 Token!5748) (t!147936 List!17631)) )
))
(declare-fun tokens!457 () List!17631)

(declare-fun b!1610897 () Bool)

(declare-fun inv!22981 (Token!5748) Bool)

(assert (=> b!1610897 (= e!1033092 (and (inv!22981 (h!22962 tokens!457)) e!1033102 tp!469880))))

(declare-fun b!1610898 () Bool)

(declare-fun res!718139 () Bool)

(declare-fun e!1033098 () Bool)

(assert (=> b!1610898 (=> (not res!718139) (not e!1033098))))

(declare-fun lt!574184 () List!17630)

(declare-fun lt!574181 () List!17630)

(declare-fun head!3286 (List!17630) C!9012)

(assert (=> b!1610898 (= res!718139 (= lt!574184 (Cons!17560 (head!3286 lt!574181) Nil!17560)))))

(declare-fun b!1610899 () Bool)

(declare-fun e!1033093 () Bool)

(declare-datatypes ((LexerInterface!2720 0))(
  ( (LexerInterfaceExt!2717 (__x!11665 Int)) (Lexer!2718) )
))
(declare-fun thiss!17113 () LexerInterface!2720)

(declare-datatypes ((List!17632 0))(
  ( (Nil!17562) (Cons!17562 (h!22963 Rule!5982) (t!147937 List!17632)) )
))
(declare-fun rules!1846 () List!17632)

(declare-fun rulesValidInductive!938 (LexerInterface!2720 List!17632) Bool)

(assert (=> b!1610899 (= e!1033093 (rulesValidInductive!938 thiss!17113 rules!1846))))

(declare-fun lt!574191 () BalanceConc!11604)

(declare-fun seqFromList!1931 (List!17630) BalanceConc!11604)

(assert (=> b!1610899 (= lt!574191 (seqFromList!1931 (originalCharacters!3905 (h!22962 tokens!457))))))

(assert (=> b!1610899 e!1033098))

(declare-fun res!718140 () Bool)

(assert (=> b!1610899 (=> (not res!718140) (not e!1033098))))

(declare-fun lt!574187 () List!17630)

(assert (=> b!1610899 (= res!718140 (= lt!574187 (originalCharacters!3905 (h!22962 tokens!457))))))

(declare-fun b!1610900 () Bool)

(declare-fun res!718126 () Bool)

(declare-fun e!1033095 () Bool)

(assert (=> b!1610900 (=> (not res!718126) (not e!1033095))))

(declare-fun rulesProduceEachTokenIndividuallyList!922 (LexerInterface!2720 List!17632 List!17631) Bool)

(assert (=> b!1610900 (= res!718126 (rulesProduceEachTokenIndividuallyList!922 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1610901 () Bool)

(declare-fun e!1033097 () Bool)

(declare-fun e!1033100 () Bool)

(assert (=> b!1610901 (= e!1033097 (not e!1033100))))

(declare-fun res!718131 () Bool)

(assert (=> b!1610901 (=> res!718131 e!1033100)))

(declare-fun lt!574190 () List!17631)

(assert (=> b!1610901 (= res!718131 (not (= lt!574190 (t!147936 tokens!457))))))

(declare-datatypes ((IArray!11667 0))(
  ( (IArray!11668 (innerList!5891 List!17631)) )
))
(declare-datatypes ((Conc!5831 0))(
  ( (Node!5831 (left!14162 Conc!5831) (right!14492 Conc!5831) (csize!11892 Int) (cheight!6042 Int)) (Leaf!8597 (xs!8659 IArray!11667) (csize!11893 Int)) (Empty!5831) )
))
(declare-datatypes ((BalanceConc!11606 0))(
  ( (BalanceConc!11607 (c!262617 Conc!5831)) )
))
(declare-datatypes ((tuple2!17052 0))(
  ( (tuple2!17053 (_1!9928 BalanceConc!11606) (_2!9928 BalanceConc!11604)) )
))
(declare-fun lt!574188 () tuple2!17052)

(declare-fun list!6847 (BalanceConc!11606) List!17631)

(assert (=> b!1610901 (= lt!574190 (list!6847 (_1!9928 lt!574188)))))

(declare-datatypes ((Unit!28191 0))(
  ( (Unit!28192) )
))
(declare-fun lt!574180 () Unit!28191)

(declare-fun theoremInvertabilityWhenTokenListSeparable!165 (LexerInterface!2720 List!17632 List!17631) Unit!28191)

(assert (=> b!1610901 (= lt!574180 (theoremInvertabilityWhenTokenListSeparable!165 thiss!17113 rules!1846 (t!147936 tokens!457)))))

(declare-fun lt!574175 () List!17630)

(declare-fun isPrefix!1351 (List!17630 List!17630) Bool)

(assert (=> b!1610901 (isPrefix!1351 lt!574187 lt!574175)))

(declare-fun lt!574186 () Unit!28191)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!876 (List!17630 List!17630) Unit!28191)

(assert (=> b!1610901 (= lt!574186 (lemmaConcatTwoListThenFirstIsPrefix!876 lt!574187 lt!574181))))

(declare-fun e!1033086 () Bool)

(declare-fun e!1033103 () Bool)

(declare-fun b!1610902 () Bool)

(declare-fun tp!469877 () Bool)

(declare-fun inv!22978 (String!20237) Bool)

(declare-fun inv!22982 (TokenValueInjection!6022) Bool)

(assert (=> b!1610902 (= e!1033103 (and tp!469877 (inv!22978 (tag!3367 (h!22963 rules!1846))) (inv!22982 (transformation!3091 (h!22963 rules!1846))) e!1033086))))

(declare-fun b!1610903 () Bool)

(declare-fun res!718129 () Bool)

(declare-fun e!1033090 () Bool)

(assert (=> b!1610903 (=> res!718129 e!1033090)))

(declare-fun isEmpty!10598 (BalanceConc!11606) Bool)

(declare-fun lex!1204 (LexerInterface!2720 List!17632 BalanceConc!11604) tuple2!17052)

(assert (=> b!1610903 (= res!718129 (isEmpty!10598 (_1!9928 (lex!1204 thiss!17113 rules!1846 (seqFromList!1931 lt!574187)))))))

(declare-fun b!1610904 () Bool)

(declare-fun res!718137 () Bool)

(assert (=> b!1610904 (=> (not res!718137) (not e!1033095))))

(declare-fun isEmpty!10599 (List!17632) Bool)

(assert (=> b!1610904 (= res!718137 (not (isEmpty!10599 rules!1846)))))

(declare-fun b!1610905 () Bool)

(declare-fun res!718122 () Bool)

(assert (=> b!1610905 (=> (not res!718122) (not e!1033098))))

(assert (=> b!1610905 (= res!718122 (= lt!574184 (Cons!17560 (head!3286 (originalCharacters!3905 (h!22962 (t!147936 tokens!457)))) Nil!17560)))))

(declare-fun b!1610906 () Bool)

(declare-fun e!1033089 () Bool)

(assert (=> b!1610906 (= e!1033100 e!1033089)))

(declare-fun res!718128 () Bool)

(assert (=> b!1610906 (=> res!718128 e!1033089)))

(declare-fun lt!574176 () List!17631)

(declare-fun lt!574185 () List!17631)

(assert (=> b!1610906 (= res!718128 (or (not (= lt!574190 lt!574176)) (not (= lt!574176 lt!574185))))))

(declare-fun lt!574193 () BalanceConc!11606)

(assert (=> b!1610906 (= lt!574176 (list!6847 lt!574193))))

(assert (=> b!1610906 (= lt!574190 lt!574185)))

(declare-fun prepend!593 (BalanceConc!11606 Token!5748) BalanceConc!11606)

(declare-fun seqFromList!1932 (List!17631) BalanceConc!11606)

(assert (=> b!1610906 (= lt!574185 (list!6847 (prepend!593 (seqFromList!1932 (t!147936 (t!147936 tokens!457))) (h!22962 (t!147936 tokens!457)))))))

(declare-fun lt!574179 () Unit!28191)

(declare-fun seqFromListBHdTlConstructive!168 (Token!5748 List!17631 BalanceConc!11606) Unit!28191)

(assert (=> b!1610906 (= lt!574179 (seqFromListBHdTlConstructive!168 (h!22962 (t!147936 tokens!457)) (t!147936 (t!147936 tokens!457)) (_1!9928 lt!574188)))))

(declare-fun res!718123 () Bool)

(assert (=> start!152006 (=> (not res!718123) (not e!1033095))))

(get-info :version)

(assert (=> start!152006 (= res!718123 ((_ is Lexer!2718) thiss!17113))))

(assert (=> start!152006 e!1033095))

(assert (=> start!152006 true))

(declare-fun e!1033088 () Bool)

(assert (=> start!152006 e!1033088))

(assert (=> start!152006 e!1033092))

(declare-fun b!1610907 () Bool)

(assert (=> b!1610907 (= e!1033095 e!1033097)))

(declare-fun res!718134 () Bool)

(assert (=> b!1610907 (=> (not res!718134) (not e!1033097))))

(declare-fun lt!574197 () List!17630)

(assert (=> b!1610907 (= res!718134 (= lt!574197 lt!574175))))

(declare-fun ++!4613 (List!17630 List!17630) List!17630)

(assert (=> b!1610907 (= lt!574175 (++!4613 lt!574187 lt!574181))))

(declare-fun lt!574174 () BalanceConc!11604)

(declare-fun list!6848 (BalanceConc!11604) List!17630)

(assert (=> b!1610907 (= lt!574197 (list!6848 lt!574174))))

(declare-fun lt!574182 () BalanceConc!11604)

(assert (=> b!1610907 (= lt!574181 (list!6848 lt!574182))))

(declare-fun lt!574195 () BalanceConc!11604)

(assert (=> b!1610907 (= lt!574187 (list!6848 lt!574195))))

(declare-fun charsOf!1740 (Token!5748) BalanceConc!11604)

(assert (=> b!1610907 (= lt!574195 (charsOf!1740 (h!22962 tokens!457)))))

(assert (=> b!1610907 (= lt!574188 (lex!1204 thiss!17113 rules!1846 lt!574182))))

(declare-fun print!1251 (LexerInterface!2720 BalanceConc!11606) BalanceConc!11604)

(assert (=> b!1610907 (= lt!574182 (print!1251 thiss!17113 lt!574193))))

(assert (=> b!1610907 (= lt!574193 (seqFromList!1932 (t!147936 tokens!457)))))

(assert (=> b!1610907 (= lt!574174 (print!1251 thiss!17113 (seqFromList!1932 tokens!457)))))

(declare-fun b!1610908 () Bool)

(assert (=> b!1610908 (= e!1033089 e!1033090)))

(declare-fun res!718124 () Bool)

(assert (=> b!1610908 (=> res!718124 e!1033090)))

(declare-fun lt!574183 () List!17630)

(declare-fun lt!574192 () List!17630)

(assert (=> b!1610908 (= res!718124 (or (not (= lt!574183 lt!574192)) (not (= lt!574192 lt!574187)) (not (= lt!574183 lt!574187))))))

(declare-fun printList!835 (LexerInterface!2720 List!17631) List!17630)

(assert (=> b!1610908 (= lt!574192 (printList!835 thiss!17113 (Cons!17561 (h!22962 tokens!457) Nil!17561)))))

(declare-fun lt!574196 () BalanceConc!11604)

(assert (=> b!1610908 (= lt!574183 (list!6848 lt!574196))))

(declare-fun lt!574194 () BalanceConc!11606)

(declare-fun printTailRec!773 (LexerInterface!2720 BalanceConc!11606 Int BalanceConc!11604) BalanceConc!11604)

(assert (=> b!1610908 (= lt!574196 (printTailRec!773 thiss!17113 lt!574194 0 (BalanceConc!11605 Empty!5830)))))

(assert (=> b!1610908 (= lt!574196 (print!1251 thiss!17113 lt!574194))))

(declare-fun singletonSeq!1460 (Token!5748) BalanceConc!11606)

(assert (=> b!1610908 (= lt!574194 (singletonSeq!1460 (h!22962 tokens!457)))))

(declare-datatypes ((tuple2!17054 0))(
  ( (tuple2!17055 (_1!9929 Token!5748) (_2!9929 List!17630)) )
))
(declare-datatypes ((Option!3184 0))(
  ( (None!3183) (Some!3183 (v!24142 tuple2!17054)) )
))
(declare-fun lt!574198 () Option!3184)

(declare-fun maxPrefix!1284 (LexerInterface!2720 List!17632 List!17630) Option!3184)

(assert (=> b!1610908 (= lt!574198 (maxPrefix!1284 thiss!17113 rules!1846 lt!574197))))

(declare-fun b!1610909 () Bool)

(declare-fun e!1033099 () Bool)

(assert (=> b!1610909 (= e!1033099 e!1033093)))

(declare-fun res!718133 () Bool)

(assert (=> b!1610909 (=> res!718133 e!1033093)))

(declare-fun lt!574189 () Regex!4419)

(declare-fun prefixMatch!354 (Regex!4419 List!17630) Bool)

(assert (=> b!1610909 (= res!718133 (prefixMatch!354 lt!574189 (++!4613 lt!574187 lt!574184)))))

(declare-fun lt!574177 () BalanceConc!11604)

(assert (=> b!1610909 (= lt!574184 (list!6848 lt!574177))))

(declare-fun b!1610910 () Bool)

(declare-fun tp!469875 () Bool)

(assert (=> b!1610910 (= e!1033088 (and e!1033103 tp!469875))))

(assert (=> b!1610911 (= e!1033086 (and tp!469878 tp!469881))))

(declare-fun b!1610912 () Bool)

(declare-fun res!718130 () Bool)

(assert (=> b!1610912 (=> res!718130 e!1033089)))

(declare-fun separableTokensPredicate!662 (LexerInterface!2720 Token!5748 Token!5748 List!17632) Bool)

(assert (=> b!1610912 (= res!718130 (not (separableTokensPredicate!662 thiss!17113 (h!22962 tokens!457) (h!22962 (t!147936 tokens!457)) rules!1846)))))

(declare-fun b!1610913 () Bool)

(declare-fun e!1033104 () Bool)

(declare-fun tp!469876 () Bool)

(declare-fun inv!21 (TokenValue!3181) Bool)

(assert (=> b!1610913 (= e!1033102 (and (inv!21 (value!97766 (h!22962 tokens!457))) e!1033104 tp!469876))))

(declare-fun tp!469874 () Bool)

(declare-fun b!1610914 () Bool)

(declare-fun e!1033087 () Bool)

(assert (=> b!1610914 (= e!1033104 (and tp!469874 (inv!22978 (tag!3367 (rule!4911 (h!22962 tokens!457)))) (inv!22982 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) e!1033087))))

(declare-fun b!1610915 () Bool)

(declare-fun res!718127 () Bool)

(assert (=> b!1610915 (=> res!718127 e!1033090)))

(declare-fun rulesProduceIndividualToken!1372 (LexerInterface!2720 List!17632 Token!5748) Bool)

(assert (=> b!1610915 (= res!718127 (not (rulesProduceIndividualToken!1372 thiss!17113 rules!1846 (h!22962 tokens!457))))))

(declare-fun b!1610916 () Bool)

(declare-fun res!718132 () Bool)

(assert (=> b!1610916 (=> (not res!718132) (not e!1033095))))

(assert (=> b!1610916 (= res!718132 (and (not ((_ is Nil!17561) tokens!457)) (not ((_ is Nil!17561) (t!147936 tokens!457)))))))

(declare-fun b!1610917 () Bool)

(declare-fun res!718138 () Bool)

(assert (=> b!1610917 (=> (not res!718138) (not e!1033095))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!413 (LexerInterface!2720 List!17631 List!17632) Bool)

(assert (=> b!1610917 (= res!718138 (tokensListTwoByTwoPredicateSeparableList!413 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1610918 () Bool)

(declare-fun e!1033101 () Bool)

(assert (=> b!1610918 (= e!1033090 e!1033101)))

(declare-fun res!718125 () Bool)

(assert (=> b!1610918 (=> res!718125 e!1033101)))

(declare-fun isDefined!2553 (Option!3184) Bool)

(assert (=> b!1610918 (= res!718125 (not (isDefined!2553 lt!574198)))))

(declare-fun lt!574178 () Unit!28191)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!294 (LexerInterface!2720 List!17632 List!17630 List!17630) Unit!28191)

(assert (=> b!1610918 (= lt!574178 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!294 thiss!17113 rules!1846 lt!574187 lt!574181))))

(declare-fun b!1610919 () Bool)

(assert (=> b!1610919 (= e!1033101 e!1033099)))

(declare-fun res!718136 () Bool)

(assert (=> b!1610919 (=> res!718136 e!1033099)))

(declare-fun prefixMatchZipperSequence!455 (Regex!4419 BalanceConc!11604) Bool)

(declare-fun ++!4614 (BalanceConc!11604 BalanceConc!11604) BalanceConc!11604)

(assert (=> b!1610919 (= res!718136 (prefixMatchZipperSequence!455 lt!574189 (++!4614 lt!574195 lt!574177)))))

(declare-fun singletonSeq!1461 (C!9012) BalanceConc!11604)

(declare-fun apply!4380 (BalanceConc!11604 Int) C!9012)

(assert (=> b!1610919 (= lt!574177 (singletonSeq!1461 (apply!4380 (charsOf!1740 (h!22962 (t!147936 tokens!457))) 0)))))

(declare-fun rulesRegex!481 (LexerInterface!2720 List!17632) Regex!4419)

(assert (=> b!1610919 (= lt!574189 (rulesRegex!481 thiss!17113 rules!1846))))

(assert (=> b!1610920 (= e!1033087 (and tp!469879 tp!469882))))

(declare-fun b!1610921 () Bool)

(declare-fun res!718135 () Bool)

(assert (=> b!1610921 (=> (not res!718135) (not e!1033095))))

(declare-fun rulesInvariant!2389 (LexerInterface!2720 List!17632) Bool)

(assert (=> b!1610921 (= res!718135 (rulesInvariant!2389 thiss!17113 rules!1846))))

(declare-fun b!1610922 () Bool)

(declare-fun head!3287 (BalanceConc!11604) C!9012)

(assert (=> b!1610922 (= e!1033098 (= lt!574184 (Cons!17560 (head!3287 lt!574182) Nil!17560)))))

(assert (= (and start!152006 res!718123) b!1610904))

(assert (= (and b!1610904 res!718137) b!1610921))

(assert (= (and b!1610921 res!718135) b!1610900))

(assert (= (and b!1610900 res!718126) b!1610917))

(assert (= (and b!1610917 res!718138) b!1610916))

(assert (= (and b!1610916 res!718132) b!1610907))

(assert (= (and b!1610907 res!718134) b!1610901))

(assert (= (and b!1610901 (not res!718131)) b!1610906))

(assert (= (and b!1610906 (not res!718128)) b!1610912))

(assert (= (and b!1610912 (not res!718130)) b!1610908))

(assert (= (and b!1610908 (not res!718124)) b!1610915))

(assert (= (and b!1610915 (not res!718127)) b!1610903))

(assert (= (and b!1610903 (not res!718129)) b!1610918))

(assert (= (and b!1610918 (not res!718125)) b!1610919))

(assert (= (and b!1610919 (not res!718136)) b!1610909))

(assert (= (and b!1610909 (not res!718133)) b!1610899))

(assert (= (and b!1610899 res!718140) b!1610905))

(assert (= (and b!1610905 res!718122) b!1610898))

(assert (= (and b!1610898 res!718139) b!1610922))

(assert (= b!1610902 b!1610911))

(assert (= b!1610910 b!1610902))

(assert (= (and start!152006 ((_ is Cons!17562) rules!1846)) b!1610910))

(assert (= b!1610914 b!1610920))

(assert (= b!1610913 b!1610914))

(assert (= b!1610897 b!1610913))

(assert (= (and start!152006 ((_ is Cons!17561) tokens!457)) b!1610897))

(declare-fun m!1927381 () Bool)

(assert (=> b!1610899 m!1927381))

(declare-fun m!1927383 () Bool)

(assert (=> b!1610899 m!1927383))

(declare-fun m!1927385 () Bool)

(assert (=> b!1610900 m!1927385))

(declare-fun m!1927387 () Bool)

(assert (=> b!1610908 m!1927387))

(declare-fun m!1927389 () Bool)

(assert (=> b!1610908 m!1927389))

(declare-fun m!1927391 () Bool)

(assert (=> b!1610908 m!1927391))

(declare-fun m!1927393 () Bool)

(assert (=> b!1610908 m!1927393))

(declare-fun m!1927395 () Bool)

(assert (=> b!1610908 m!1927395))

(declare-fun m!1927397 () Bool)

(assert (=> b!1610908 m!1927397))

(declare-fun m!1927399 () Bool)

(assert (=> b!1610902 m!1927399))

(declare-fun m!1927401 () Bool)

(assert (=> b!1610902 m!1927401))

(declare-fun m!1927403 () Bool)

(assert (=> b!1610909 m!1927403))

(assert (=> b!1610909 m!1927403))

(declare-fun m!1927405 () Bool)

(assert (=> b!1610909 m!1927405))

(declare-fun m!1927407 () Bool)

(assert (=> b!1610909 m!1927407))

(declare-fun m!1927409 () Bool)

(assert (=> b!1610907 m!1927409))

(declare-fun m!1927411 () Bool)

(assert (=> b!1610907 m!1927411))

(declare-fun m!1927413 () Bool)

(assert (=> b!1610907 m!1927413))

(declare-fun m!1927415 () Bool)

(assert (=> b!1610907 m!1927415))

(declare-fun m!1927417 () Bool)

(assert (=> b!1610907 m!1927417))

(declare-fun m!1927419 () Bool)

(assert (=> b!1610907 m!1927419))

(declare-fun m!1927421 () Bool)

(assert (=> b!1610907 m!1927421))

(declare-fun m!1927423 () Bool)

(assert (=> b!1610907 m!1927423))

(declare-fun m!1927425 () Bool)

(assert (=> b!1610907 m!1927425))

(assert (=> b!1610907 m!1927417))

(declare-fun m!1927427 () Bool)

(assert (=> b!1610907 m!1927427))

(declare-fun m!1927429 () Bool)

(assert (=> b!1610919 m!1927429))

(declare-fun m!1927431 () Bool)

(assert (=> b!1610919 m!1927431))

(declare-fun m!1927433 () Bool)

(assert (=> b!1610919 m!1927433))

(declare-fun m!1927435 () Bool)

(assert (=> b!1610919 m!1927435))

(declare-fun m!1927437 () Bool)

(assert (=> b!1610919 m!1927437))

(assert (=> b!1610919 m!1927435))

(declare-fun m!1927439 () Bool)

(assert (=> b!1610919 m!1927439))

(assert (=> b!1610919 m!1927431))

(assert (=> b!1610919 m!1927439))

(declare-fun m!1927441 () Bool)

(assert (=> b!1610906 m!1927441))

(declare-fun m!1927443 () Bool)

(assert (=> b!1610906 m!1927443))

(declare-fun m!1927445 () Bool)

(assert (=> b!1610906 m!1927445))

(declare-fun m!1927447 () Bool)

(assert (=> b!1610906 m!1927447))

(declare-fun m!1927449 () Bool)

(assert (=> b!1610906 m!1927449))

(assert (=> b!1610906 m!1927445))

(assert (=> b!1610906 m!1927447))

(declare-fun m!1927451 () Bool)

(assert (=> b!1610922 m!1927451))

(declare-fun m!1927453 () Bool)

(assert (=> b!1610918 m!1927453))

(declare-fun m!1927455 () Bool)

(assert (=> b!1610918 m!1927455))

(declare-fun m!1927457 () Bool)

(assert (=> b!1610897 m!1927457))

(declare-fun m!1927459 () Bool)

(assert (=> b!1610915 m!1927459))

(declare-fun m!1927461 () Bool)

(assert (=> b!1610898 m!1927461))

(declare-fun m!1927463 () Bool)

(assert (=> b!1610921 m!1927463))

(declare-fun m!1927465 () Bool)

(assert (=> b!1610917 m!1927465))

(declare-fun m!1927467 () Bool)

(assert (=> b!1610914 m!1927467))

(declare-fun m!1927469 () Bool)

(assert (=> b!1610914 m!1927469))

(declare-fun m!1927471 () Bool)

(assert (=> b!1610901 m!1927471))

(declare-fun m!1927473 () Bool)

(assert (=> b!1610901 m!1927473))

(declare-fun m!1927475 () Bool)

(assert (=> b!1610901 m!1927475))

(declare-fun m!1927477 () Bool)

(assert (=> b!1610901 m!1927477))

(declare-fun m!1927479 () Bool)

(assert (=> b!1610913 m!1927479))

(declare-fun m!1927481 () Bool)

(assert (=> b!1610912 m!1927481))

(declare-fun m!1927483 () Bool)

(assert (=> b!1610905 m!1927483))

(declare-fun m!1927485 () Bool)

(assert (=> b!1610903 m!1927485))

(assert (=> b!1610903 m!1927485))

(declare-fun m!1927487 () Bool)

(assert (=> b!1610903 m!1927487))

(declare-fun m!1927489 () Bool)

(assert (=> b!1610903 m!1927489))

(declare-fun m!1927491 () Bool)

(assert (=> b!1610904 m!1927491))

(check-sat (not b!1610909) (not b!1610912) (not b!1610908) (not b!1610907) (not b!1610897) (not b_next!43961) b_and!114191 b_and!114195 (not b_next!43965) (not b!1610913) (not b!1610903) (not b!1610921) (not b!1610905) (not b!1610904) (not b!1610902) (not b_next!43963) (not b!1610899) (not b!1610919) (not b!1610900) (not b!1610918) b_and!114193 b_and!114189 (not b!1610906) (not b!1610898) (not b_next!43959) (not b!1610917) (not b!1610914) (not b!1610901) (not b!1610910) (not b!1610922) (not b!1610915))
(check-sat (not b_next!43963) (not b_next!43961) b_and!114191 b_and!114195 (not b_next!43965) (not b_next!43959) b_and!114193 b_and!114189)
(get-model)

(declare-fun d!484970 () Bool)

(assert (=> d!484970 (= (head!3286 lt!574181) (h!22961 lt!574181))))

(assert (=> b!1610898 d!484970))

(declare-fun d!484972 () Bool)

(declare-fun c!262620 () Bool)

(declare-fun isEmpty!10602 (List!17630) Bool)

(assert (=> d!484972 (= c!262620 (isEmpty!10602 (++!4613 lt!574187 lt!574184)))))

(declare-fun e!1033107 () Bool)

(assert (=> d!484972 (= (prefixMatch!354 lt!574189 (++!4613 lt!574187 lt!574184)) e!1033107)))

(declare-fun b!1610927 () Bool)

(declare-fun lostCause!413 (Regex!4419) Bool)

(assert (=> b!1610927 (= e!1033107 (not (lostCause!413 lt!574189)))))

(declare-fun b!1610928 () Bool)

(declare-fun derivativeStep!1057 (Regex!4419 C!9012) Regex!4419)

(declare-fun tail!2311 (List!17630) List!17630)

(assert (=> b!1610928 (= e!1033107 (prefixMatch!354 (derivativeStep!1057 lt!574189 (head!3286 (++!4613 lt!574187 lt!574184))) (tail!2311 (++!4613 lt!574187 lt!574184))))))

(assert (= (and d!484972 c!262620) b!1610927))

(assert (= (and d!484972 (not c!262620)) b!1610928))

(assert (=> d!484972 m!1927403))

(declare-fun m!1927493 () Bool)

(assert (=> d!484972 m!1927493))

(declare-fun m!1927495 () Bool)

(assert (=> b!1610927 m!1927495))

(assert (=> b!1610928 m!1927403))

(declare-fun m!1927497 () Bool)

(assert (=> b!1610928 m!1927497))

(assert (=> b!1610928 m!1927497))

(declare-fun m!1927499 () Bool)

(assert (=> b!1610928 m!1927499))

(assert (=> b!1610928 m!1927403))

(declare-fun m!1927501 () Bool)

(assert (=> b!1610928 m!1927501))

(assert (=> b!1610928 m!1927499))

(assert (=> b!1610928 m!1927501))

(declare-fun m!1927503 () Bool)

(assert (=> b!1610928 m!1927503))

(assert (=> b!1610909 d!484972))

(declare-fun d!484974 () Bool)

(declare-fun e!1033113 () Bool)

(assert (=> d!484974 e!1033113))

(declare-fun res!718153 () Bool)

(assert (=> d!484974 (=> (not res!718153) (not e!1033113))))

(declare-fun lt!574201 () List!17630)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2440 (List!17630) (InoxSet C!9012))

(assert (=> d!484974 (= res!718153 (= (content!2440 lt!574201) ((_ map or) (content!2440 lt!574187) (content!2440 lt!574184))))))

(declare-fun e!1033112 () List!17630)

(assert (=> d!484974 (= lt!574201 e!1033112)))

(declare-fun c!262623 () Bool)

(assert (=> d!484974 (= c!262623 ((_ is Nil!17560) lt!574187))))

(assert (=> d!484974 (= (++!4613 lt!574187 lt!574184) lt!574201)))

(declare-fun b!1610939 () Bool)

(declare-fun res!718152 () Bool)

(assert (=> b!1610939 (=> (not res!718152) (not e!1033113))))

(declare-fun size!14138 (List!17630) Int)

(assert (=> b!1610939 (= res!718152 (= (size!14138 lt!574201) (+ (size!14138 lt!574187) (size!14138 lt!574184))))))

(declare-fun b!1610938 () Bool)

(assert (=> b!1610938 (= e!1033112 (Cons!17560 (h!22961 lt!574187) (++!4613 (t!147935 lt!574187) lt!574184)))))

(declare-fun b!1610937 () Bool)

(assert (=> b!1610937 (= e!1033112 lt!574184)))

(declare-fun b!1610940 () Bool)

(assert (=> b!1610940 (= e!1033113 (or (not (= lt!574184 Nil!17560)) (= lt!574201 lt!574187)))))

(assert (= (and d!484974 c!262623) b!1610937))

(assert (= (and d!484974 (not c!262623)) b!1610938))

(assert (= (and d!484974 res!718153) b!1610939))

(assert (= (and b!1610939 res!718152) b!1610940))

(declare-fun m!1927505 () Bool)

(assert (=> d!484974 m!1927505))

(declare-fun m!1927507 () Bool)

(assert (=> d!484974 m!1927507))

(declare-fun m!1927509 () Bool)

(assert (=> d!484974 m!1927509))

(declare-fun m!1927511 () Bool)

(assert (=> b!1610939 m!1927511))

(declare-fun m!1927513 () Bool)

(assert (=> b!1610939 m!1927513))

(declare-fun m!1927515 () Bool)

(assert (=> b!1610939 m!1927515))

(declare-fun m!1927517 () Bool)

(assert (=> b!1610938 m!1927517))

(assert (=> b!1610909 d!484974))

(declare-fun d!484976 () Bool)

(declare-fun list!6849 (Conc!5830) List!17630)

(assert (=> d!484976 (= (list!6848 lt!574177) (list!6849 (c!262615 lt!574177)))))

(declare-fun bs!393826 () Bool)

(assert (= bs!393826 d!484976))

(declare-fun m!1927519 () Bool)

(assert (=> bs!393826 m!1927519))

(assert (=> b!1610909 d!484976))

(declare-fun d!484978 () Bool)

(declare-fun lt!574225 () BalanceConc!11604)

(declare-fun printListTailRec!330 (LexerInterface!2720 List!17631 List!17630) List!17630)

(declare-fun dropList!557 (BalanceConc!11606 Int) List!17631)

(assert (=> d!484978 (= (list!6848 lt!574225) (printListTailRec!330 thiss!17113 (dropList!557 lt!574194 0) (list!6848 (BalanceConc!11605 Empty!5830))))))

(declare-fun e!1033125 () BalanceConc!11604)

(assert (=> d!484978 (= lt!574225 e!1033125)))

(declare-fun c!262626 () Bool)

(declare-fun size!14139 (BalanceConc!11606) Int)

(assert (=> d!484978 (= c!262626 (>= 0 (size!14139 lt!574194)))))

(declare-fun e!1033124 () Bool)

(assert (=> d!484978 e!1033124))

(declare-fun res!718165 () Bool)

(assert (=> d!484978 (=> (not res!718165) (not e!1033124))))

(assert (=> d!484978 (= res!718165 (>= 0 0))))

(assert (=> d!484978 (= (printTailRec!773 thiss!17113 lt!574194 0 (BalanceConc!11605 Empty!5830)) lt!574225)))

(declare-fun b!1610956 () Bool)

(assert (=> b!1610956 (= e!1033124 (<= 0 (size!14139 lt!574194)))))

(declare-fun b!1610957 () Bool)

(assert (=> b!1610957 (= e!1033125 (BalanceConc!11605 Empty!5830))))

(declare-fun b!1610958 () Bool)

(declare-fun apply!4382 (BalanceConc!11606 Int) Token!5748)

(assert (=> b!1610958 (= e!1033125 (printTailRec!773 thiss!17113 lt!574194 (+ 0 1) (++!4614 (BalanceConc!11605 Empty!5830) (charsOf!1740 (apply!4382 lt!574194 0)))))))

(declare-fun lt!574227 () List!17631)

(assert (=> b!1610958 (= lt!574227 (list!6847 lt!574194))))

(declare-fun lt!574228 () Unit!28191)

(declare-fun lemmaDropApply!537 (List!17631 Int) Unit!28191)

(assert (=> b!1610958 (= lt!574228 (lemmaDropApply!537 lt!574227 0))))

(declare-fun head!3289 (List!17631) Token!5748)

(declare-fun drop!845 (List!17631 Int) List!17631)

(declare-fun apply!4383 (List!17631 Int) Token!5748)

(assert (=> b!1610958 (= (head!3289 (drop!845 lt!574227 0)) (apply!4383 lt!574227 0))))

(declare-fun lt!574226 () Unit!28191)

(assert (=> b!1610958 (= lt!574226 lt!574228)))

(declare-fun lt!574223 () List!17631)

(assert (=> b!1610958 (= lt!574223 (list!6847 lt!574194))))

(declare-fun lt!574224 () Unit!28191)

(declare-fun lemmaDropTail!517 (List!17631 Int) Unit!28191)

(assert (=> b!1610958 (= lt!574224 (lemmaDropTail!517 lt!574223 0))))

(declare-fun tail!2312 (List!17631) List!17631)

(assert (=> b!1610958 (= (tail!2312 (drop!845 lt!574223 0)) (drop!845 lt!574223 (+ 0 1)))))

(declare-fun lt!574222 () Unit!28191)

(assert (=> b!1610958 (= lt!574222 lt!574224)))

(assert (= (and d!484978 res!718165) b!1610956))

(assert (= (and d!484978 c!262626) b!1610957))

(assert (= (and d!484978 (not c!262626)) b!1610958))

(declare-fun m!1927539 () Bool)

(assert (=> d!484978 m!1927539))

(declare-fun m!1927541 () Bool)

(assert (=> d!484978 m!1927541))

(declare-fun m!1927543 () Bool)

(assert (=> d!484978 m!1927543))

(declare-fun m!1927545 () Bool)

(assert (=> d!484978 m!1927545))

(declare-fun m!1927547 () Bool)

(assert (=> d!484978 m!1927547))

(assert (=> d!484978 m!1927539))

(assert (=> d!484978 m!1927541))

(assert (=> b!1610956 m!1927545))

(declare-fun m!1927549 () Bool)

(assert (=> b!1610958 m!1927549))

(declare-fun m!1927551 () Bool)

(assert (=> b!1610958 m!1927551))

(declare-fun m!1927553 () Bool)

(assert (=> b!1610958 m!1927553))

(assert (=> b!1610958 m!1927553))

(declare-fun m!1927555 () Bool)

(assert (=> b!1610958 m!1927555))

(declare-fun m!1927557 () Bool)

(assert (=> b!1610958 m!1927557))

(declare-fun m!1927559 () Bool)

(assert (=> b!1610958 m!1927559))

(assert (=> b!1610958 m!1927559))

(declare-fun m!1927561 () Bool)

(assert (=> b!1610958 m!1927561))

(declare-fun m!1927563 () Bool)

(assert (=> b!1610958 m!1927563))

(assert (=> b!1610958 m!1927549))

(assert (=> b!1610958 m!1927551))

(declare-fun m!1927565 () Bool)

(assert (=> b!1610958 m!1927565))

(declare-fun m!1927567 () Bool)

(assert (=> b!1610958 m!1927567))

(declare-fun m!1927569 () Bool)

(assert (=> b!1610958 m!1927569))

(declare-fun m!1927571 () Bool)

(assert (=> b!1610958 m!1927571))

(assert (=> b!1610958 m!1927563))

(declare-fun m!1927573 () Bool)

(assert (=> b!1610958 m!1927573))

(assert (=> b!1610908 d!484978))

(declare-fun b!1610977 () Bool)

(declare-fun e!1033134 () Option!3184)

(declare-fun lt!574239 () Option!3184)

(declare-fun lt!574241 () Option!3184)

(assert (=> b!1610977 (= e!1033134 (ite (and ((_ is None!3183) lt!574239) ((_ is None!3183) lt!574241)) None!3183 (ite ((_ is None!3183) lt!574241) lt!574239 (ite ((_ is None!3183) lt!574239) lt!574241 (ite (>= (size!14136 (_1!9929 (v!24142 lt!574239))) (size!14136 (_1!9929 (v!24142 lt!574241)))) lt!574239 lt!574241)))))))

(declare-fun call!104775 () Option!3184)

(assert (=> b!1610977 (= lt!574239 call!104775)))

(assert (=> b!1610977 (= lt!574241 (maxPrefix!1284 thiss!17113 (t!147937 rules!1846) lt!574197))))

(declare-fun b!1610978 () Bool)

(declare-fun res!718184 () Bool)

(declare-fun e!1033132 () Bool)

(assert (=> b!1610978 (=> (not res!718184) (not e!1033132))))

(declare-fun lt!574243 () Option!3184)

(declare-fun matchR!1936 (Regex!4419 List!17630) Bool)

(declare-fun get!5034 (Option!3184) tuple2!17054)

(assert (=> b!1610978 (= res!718184 (matchR!1936 (regex!3091 (rule!4911 (_1!9929 (get!5034 lt!574243)))) (list!6848 (charsOf!1740 (_1!9929 (get!5034 lt!574243))))))))

(declare-fun b!1610979 () Bool)

(declare-fun res!718181 () Bool)

(assert (=> b!1610979 (=> (not res!718181) (not e!1033132))))

(assert (=> b!1610979 (= res!718181 (< (size!14138 (_2!9929 (get!5034 lt!574243))) (size!14138 lt!574197)))))

(declare-fun b!1610980 () Bool)

(declare-fun res!718180 () Bool)

(assert (=> b!1610980 (=> (not res!718180) (not e!1033132))))

(assert (=> b!1610980 (= res!718180 (= (++!4613 (list!6848 (charsOf!1740 (_1!9929 (get!5034 lt!574243)))) (_2!9929 (get!5034 lt!574243))) lt!574197))))

(declare-fun b!1610981 () Bool)

(declare-fun res!718182 () Bool)

(assert (=> b!1610981 (=> (not res!718182) (not e!1033132))))

(declare-fun apply!4384 (TokenValueInjection!6022 BalanceConc!11604) TokenValue!3181)

(assert (=> b!1610981 (= res!718182 (= (value!97766 (_1!9929 (get!5034 lt!574243))) (apply!4384 (transformation!3091 (rule!4911 (_1!9929 (get!5034 lt!574243)))) (seqFromList!1931 (originalCharacters!3905 (_1!9929 (get!5034 lt!574243)))))))))

(declare-fun b!1610982 () Bool)

(assert (=> b!1610982 (= e!1033134 call!104775)))

(declare-fun b!1610983 () Bool)

(declare-fun res!718183 () Bool)

(assert (=> b!1610983 (=> (not res!718183) (not e!1033132))))

(assert (=> b!1610983 (= res!718183 (= (list!6848 (charsOf!1740 (_1!9929 (get!5034 lt!574243)))) (originalCharacters!3905 (_1!9929 (get!5034 lt!574243)))))))

(declare-fun bm!104770 () Bool)

(declare-fun maxPrefixOneRule!751 (LexerInterface!2720 Rule!5982 List!17630) Option!3184)

(assert (=> bm!104770 (= call!104775 (maxPrefixOneRule!751 thiss!17113 (h!22963 rules!1846) lt!574197))))

(declare-fun b!1610984 () Bool)

(declare-fun contains!3083 (List!17632 Rule!5982) Bool)

(assert (=> b!1610984 (= e!1033132 (contains!3083 rules!1846 (rule!4911 (_1!9929 (get!5034 lt!574243)))))))

(declare-fun d!484984 () Bool)

(declare-fun e!1033133 () Bool)

(assert (=> d!484984 e!1033133))

(declare-fun res!718186 () Bool)

(assert (=> d!484984 (=> res!718186 e!1033133)))

(declare-fun isEmpty!10605 (Option!3184) Bool)

(assert (=> d!484984 (= res!718186 (isEmpty!10605 lt!574243))))

(assert (=> d!484984 (= lt!574243 e!1033134)))

(declare-fun c!262629 () Bool)

(assert (=> d!484984 (= c!262629 (and ((_ is Cons!17562) rules!1846) ((_ is Nil!17562) (t!147937 rules!1846))))))

(declare-fun lt!574242 () Unit!28191)

(declare-fun lt!574240 () Unit!28191)

(assert (=> d!484984 (= lt!574242 lt!574240)))

(assert (=> d!484984 (isPrefix!1351 lt!574197 lt!574197)))

(declare-fun lemmaIsPrefixRefl!935 (List!17630 List!17630) Unit!28191)

(assert (=> d!484984 (= lt!574240 (lemmaIsPrefixRefl!935 lt!574197 lt!574197))))

(assert (=> d!484984 (rulesValidInductive!938 thiss!17113 rules!1846)))

(assert (=> d!484984 (= (maxPrefix!1284 thiss!17113 rules!1846 lt!574197) lt!574243)))

(declare-fun b!1610985 () Bool)

(assert (=> b!1610985 (= e!1033133 e!1033132)))

(declare-fun res!718185 () Bool)

(assert (=> b!1610985 (=> (not res!718185) (not e!1033132))))

(assert (=> b!1610985 (= res!718185 (isDefined!2553 lt!574243))))

(assert (= (and d!484984 c!262629) b!1610982))

(assert (= (and d!484984 (not c!262629)) b!1610977))

(assert (= (or b!1610982 b!1610977) bm!104770))

(assert (= (and d!484984 (not res!718186)) b!1610985))

(assert (= (and b!1610985 res!718185) b!1610983))

(assert (= (and b!1610983 res!718183) b!1610979))

(assert (= (and b!1610979 res!718181) b!1610980))

(assert (= (and b!1610980 res!718180) b!1610981))

(assert (= (and b!1610981 res!718182) b!1610978))

(assert (= (and b!1610978 res!718184) b!1610984))

(declare-fun m!1927575 () Bool)

(assert (=> b!1610985 m!1927575))

(declare-fun m!1927577 () Bool)

(assert (=> b!1610977 m!1927577))

(declare-fun m!1927579 () Bool)

(assert (=> b!1610984 m!1927579))

(declare-fun m!1927581 () Bool)

(assert (=> b!1610984 m!1927581))

(declare-fun m!1927583 () Bool)

(assert (=> d!484984 m!1927583))

(declare-fun m!1927585 () Bool)

(assert (=> d!484984 m!1927585))

(declare-fun m!1927587 () Bool)

(assert (=> d!484984 m!1927587))

(assert (=> d!484984 m!1927381))

(assert (=> b!1610980 m!1927579))

(declare-fun m!1927589 () Bool)

(assert (=> b!1610980 m!1927589))

(assert (=> b!1610980 m!1927589))

(declare-fun m!1927591 () Bool)

(assert (=> b!1610980 m!1927591))

(assert (=> b!1610980 m!1927591))

(declare-fun m!1927593 () Bool)

(assert (=> b!1610980 m!1927593))

(assert (=> b!1610979 m!1927579))

(declare-fun m!1927595 () Bool)

(assert (=> b!1610979 m!1927595))

(declare-fun m!1927597 () Bool)

(assert (=> b!1610979 m!1927597))

(assert (=> b!1610978 m!1927579))

(assert (=> b!1610978 m!1927589))

(assert (=> b!1610978 m!1927589))

(assert (=> b!1610978 m!1927591))

(assert (=> b!1610978 m!1927591))

(declare-fun m!1927599 () Bool)

(assert (=> b!1610978 m!1927599))

(assert (=> b!1610983 m!1927579))

(assert (=> b!1610983 m!1927589))

(assert (=> b!1610983 m!1927589))

(assert (=> b!1610983 m!1927591))

(declare-fun m!1927601 () Bool)

(assert (=> bm!104770 m!1927601))

(assert (=> b!1610981 m!1927579))

(declare-fun m!1927603 () Bool)

(assert (=> b!1610981 m!1927603))

(assert (=> b!1610981 m!1927603))

(declare-fun m!1927605 () Bool)

(assert (=> b!1610981 m!1927605))

(assert (=> b!1610908 d!484984))

(declare-fun d!484986 () Bool)

(declare-fun lt!574246 () BalanceConc!11604)

(assert (=> d!484986 (= (list!6848 lt!574246) (printList!835 thiss!17113 (list!6847 lt!574194)))))

(assert (=> d!484986 (= lt!574246 (printTailRec!773 thiss!17113 lt!574194 0 (BalanceConc!11605 Empty!5830)))))

(assert (=> d!484986 (= (print!1251 thiss!17113 lt!574194) lt!574246)))

(declare-fun bs!393828 () Bool)

(assert (= bs!393828 d!484986))

(declare-fun m!1927607 () Bool)

(assert (=> bs!393828 m!1927607))

(assert (=> bs!393828 m!1927571))

(assert (=> bs!393828 m!1927571))

(declare-fun m!1927609 () Bool)

(assert (=> bs!393828 m!1927609))

(assert (=> bs!393828 m!1927387))

(assert (=> b!1610908 d!484986))

(declare-fun d!484988 () Bool)

(declare-fun c!262632 () Bool)

(assert (=> d!484988 (= c!262632 ((_ is Cons!17561) (Cons!17561 (h!22962 tokens!457) Nil!17561)))))

(declare-fun e!1033137 () List!17630)

(assert (=> d!484988 (= (printList!835 thiss!17113 (Cons!17561 (h!22962 tokens!457) Nil!17561)) e!1033137)))

(declare-fun b!1610990 () Bool)

(assert (=> b!1610990 (= e!1033137 (++!4613 (list!6848 (charsOf!1740 (h!22962 (Cons!17561 (h!22962 tokens!457) Nil!17561)))) (printList!835 thiss!17113 (t!147936 (Cons!17561 (h!22962 tokens!457) Nil!17561)))))))

(declare-fun b!1610991 () Bool)

(assert (=> b!1610991 (= e!1033137 Nil!17560)))

(assert (= (and d!484988 c!262632) b!1610990))

(assert (= (and d!484988 (not c!262632)) b!1610991))

(declare-fun m!1927611 () Bool)

(assert (=> b!1610990 m!1927611))

(assert (=> b!1610990 m!1927611))

(declare-fun m!1927613 () Bool)

(assert (=> b!1610990 m!1927613))

(declare-fun m!1927615 () Bool)

(assert (=> b!1610990 m!1927615))

(assert (=> b!1610990 m!1927613))

(assert (=> b!1610990 m!1927615))

(declare-fun m!1927617 () Bool)

(assert (=> b!1610990 m!1927617))

(assert (=> b!1610908 d!484988))

(declare-fun d!484990 () Bool)

(declare-fun e!1033140 () Bool)

(assert (=> d!484990 e!1033140))

(declare-fun res!718189 () Bool)

(assert (=> d!484990 (=> (not res!718189) (not e!1033140))))

(declare-fun lt!574249 () BalanceConc!11606)

(assert (=> d!484990 (= res!718189 (= (list!6847 lt!574249) (Cons!17561 (h!22962 tokens!457) Nil!17561)))))

(declare-fun singleton!619 (Token!5748) BalanceConc!11606)

(assert (=> d!484990 (= lt!574249 (singleton!619 (h!22962 tokens!457)))))

(assert (=> d!484990 (= (singletonSeq!1460 (h!22962 tokens!457)) lt!574249)))

(declare-fun b!1610994 () Bool)

(declare-fun isBalanced!1740 (Conc!5831) Bool)

(assert (=> b!1610994 (= e!1033140 (isBalanced!1740 (c!262617 lt!574249)))))

(assert (= (and d!484990 res!718189) b!1610994))

(declare-fun m!1927619 () Bool)

(assert (=> d!484990 m!1927619))

(declare-fun m!1927621 () Bool)

(assert (=> d!484990 m!1927621))

(declare-fun m!1927623 () Bool)

(assert (=> b!1610994 m!1927623))

(assert (=> b!1610908 d!484990))

(declare-fun d!484992 () Bool)

(assert (=> d!484992 (= (list!6848 lt!574196) (list!6849 (c!262615 lt!574196)))))

(declare-fun bs!393829 () Bool)

(assert (= bs!393829 d!484992))

(declare-fun m!1927625 () Bool)

(assert (=> bs!393829 m!1927625))

(assert (=> b!1610908 d!484992))

(declare-fun d!484994 () Bool)

(declare-fun e!1033143 () Bool)

(assert (=> d!484994 e!1033143))

(declare-fun res!718192 () Bool)

(assert (=> d!484994 (=> (not res!718192) (not e!1033143))))

(declare-fun lt!574252 () BalanceConc!11604)

(assert (=> d!484994 (= res!718192 (= (list!6848 lt!574252) (Cons!17560 (apply!4380 (charsOf!1740 (h!22962 (t!147936 tokens!457))) 0) Nil!17560)))))

(declare-fun singleton!620 (C!9012) BalanceConc!11604)

(assert (=> d!484994 (= lt!574252 (singleton!620 (apply!4380 (charsOf!1740 (h!22962 (t!147936 tokens!457))) 0)))))

(assert (=> d!484994 (= (singletonSeq!1461 (apply!4380 (charsOf!1740 (h!22962 (t!147936 tokens!457))) 0)) lt!574252)))

(declare-fun b!1610997 () Bool)

(declare-fun isBalanced!1741 (Conc!5830) Bool)

(assert (=> b!1610997 (= e!1033143 (isBalanced!1741 (c!262615 lt!574252)))))

(assert (= (and d!484994 res!718192) b!1610997))

(declare-fun m!1927627 () Bool)

(assert (=> d!484994 m!1927627))

(assert (=> d!484994 m!1927431))

(declare-fun m!1927629 () Bool)

(assert (=> d!484994 m!1927629))

(declare-fun m!1927631 () Bool)

(assert (=> b!1610997 m!1927631))

(assert (=> b!1610919 d!484994))

(declare-fun d!484996 () Bool)

(declare-fun lt!574274 () Bool)

(assert (=> d!484996 (= lt!574274 (prefixMatch!354 lt!574189 (list!6848 (++!4614 lt!574195 lt!574177))))))

(declare-datatypes ((List!17634 0))(
  ( (Nil!17564) (Cons!17564 (h!22965 Regex!4419) (t!147981 List!17634)) )
))
(declare-datatypes ((Context!1684 0))(
  ( (Context!1685 (exprs!1342 List!17634)) )
))
(declare-fun prefixMatchZipperSequence!456 ((InoxSet Context!1684) BalanceConc!11604 Int) Bool)

(declare-fun focus!148 (Regex!4419) (InoxSet Context!1684))

(assert (=> d!484996 (= lt!574274 (prefixMatchZipperSequence!456 (focus!148 lt!574189) (++!4614 lt!574195 lt!574177) 0))))

(declare-fun lt!574279 () Unit!28191)

(declare-fun lt!574278 () Unit!28191)

(assert (=> d!484996 (= lt!574279 lt!574278)))

(declare-fun lt!574273 () List!17630)

(declare-fun lt!574275 () (InoxSet Context!1684))

(declare-fun prefixMatchZipper!127 ((InoxSet Context!1684) List!17630) Bool)

(assert (=> d!484996 (= (prefixMatch!354 lt!574189 lt!574273) (prefixMatchZipper!127 lt!574275 lt!574273))))

(declare-datatypes ((List!17635 0))(
  ( (Nil!17565) (Cons!17565 (h!22966 Context!1684) (t!147982 List!17635)) )
))
(declare-fun lt!574280 () List!17635)

(declare-fun prefixMatchZipperRegexEquiv!127 ((InoxSet Context!1684) List!17635 Regex!4419 List!17630) Unit!28191)

(assert (=> d!484996 (= lt!574278 (prefixMatchZipperRegexEquiv!127 lt!574275 lt!574280 lt!574189 lt!574273))))

(assert (=> d!484996 (= lt!574273 (list!6848 (++!4614 lt!574195 lt!574177)))))

(declare-fun toList!888 ((InoxSet Context!1684)) List!17635)

(assert (=> d!484996 (= lt!574280 (toList!888 (focus!148 lt!574189)))))

(assert (=> d!484996 (= lt!574275 (focus!148 lt!574189))))

(declare-fun lt!574277 () Unit!28191)

(declare-fun lt!574281 () Unit!28191)

(assert (=> d!484996 (= lt!574277 lt!574281)))

(declare-fun lt!574282 () Int)

(declare-fun lt!574276 () (InoxSet Context!1684))

(declare-fun dropList!558 (BalanceConc!11604 Int) List!17630)

(assert (=> d!484996 (= (prefixMatchZipper!127 lt!574276 (dropList!558 (++!4614 lt!574195 lt!574177) lt!574282)) (prefixMatchZipperSequence!456 lt!574276 (++!4614 lt!574195 lt!574177) lt!574282))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!127 ((InoxSet Context!1684) BalanceConc!11604 Int) Unit!28191)

(assert (=> d!484996 (= lt!574281 (lemmaprefixMatchZipperSequenceEquivalent!127 lt!574276 (++!4614 lt!574195 lt!574177) lt!574282))))

(assert (=> d!484996 (= lt!574282 0)))

(assert (=> d!484996 (= lt!574276 (focus!148 lt!574189))))

(declare-fun validRegex!1753 (Regex!4419) Bool)

(assert (=> d!484996 (validRegex!1753 lt!574189)))

(assert (=> d!484996 (= (prefixMatchZipperSequence!455 lt!574189 (++!4614 lt!574195 lt!574177)) lt!574274)))

(declare-fun bs!393830 () Bool)

(assert (= bs!393830 d!484996))

(declare-fun m!1927633 () Bool)

(assert (=> bs!393830 m!1927633))

(declare-fun m!1927635 () Bool)

(assert (=> bs!393830 m!1927635))

(declare-fun m!1927637 () Bool)

(assert (=> bs!393830 m!1927637))

(assert (=> bs!393830 m!1927435))

(assert (=> bs!393830 m!1927633))

(assert (=> bs!393830 m!1927435))

(declare-fun m!1927639 () Bool)

(assert (=> bs!393830 m!1927639))

(assert (=> bs!393830 m!1927435))

(declare-fun m!1927641 () Bool)

(assert (=> bs!393830 m!1927641))

(declare-fun m!1927643 () Bool)

(assert (=> bs!393830 m!1927643))

(assert (=> bs!393830 m!1927643))

(assert (=> bs!393830 m!1927435))

(declare-fun m!1927645 () Bool)

(assert (=> bs!393830 m!1927645))

(declare-fun m!1927647 () Bool)

(assert (=> bs!393830 m!1927647))

(declare-fun m!1927649 () Bool)

(assert (=> bs!393830 m!1927649))

(assert (=> bs!393830 m!1927435))

(declare-fun m!1927651 () Bool)

(assert (=> bs!393830 m!1927651))

(assert (=> bs!393830 m!1927651))

(declare-fun m!1927653 () Bool)

(assert (=> bs!393830 m!1927653))

(assert (=> bs!393830 m!1927643))

(declare-fun m!1927655 () Bool)

(assert (=> bs!393830 m!1927655))

(declare-fun m!1927657 () Bool)

(assert (=> bs!393830 m!1927657))

(assert (=> b!1610919 d!484996))

(declare-fun d!484998 () Bool)

(declare-fun lt!574319 () Unit!28191)

(declare-fun lemma!214 (List!17632 LexerInterface!2720 List!17632) Unit!28191)

(assert (=> d!484998 (= lt!574319 (lemma!214 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67011 () Int)

(declare-fun generalisedUnion!222 (List!17634) Regex!4419)

(declare-fun map!3639 (List!17632 Int) List!17634)

(assert (=> d!484998 (= (rulesRegex!481 thiss!17113 rules!1846) (generalisedUnion!222 (map!3639 rules!1846 lambda!67011)))))

(declare-fun bs!393831 () Bool)

(assert (= bs!393831 d!484998))

(declare-fun m!1927659 () Bool)

(assert (=> bs!393831 m!1927659))

(declare-fun m!1927661 () Bool)

(assert (=> bs!393831 m!1927661))

(assert (=> bs!393831 m!1927661))

(declare-fun m!1927663 () Bool)

(assert (=> bs!393831 m!1927663))

(assert (=> b!1610919 d!484998))

(declare-fun d!485000 () Bool)

(declare-fun lt!574322 () BalanceConc!11604)

(assert (=> d!485000 (= (list!6848 lt!574322) (originalCharacters!3905 (h!22962 (t!147936 tokens!457))))))

(declare-fun dynLambda!7850 (Int TokenValue!3181) BalanceConc!11604)

(assert (=> d!485000 (= lt!574322 (dynLambda!7850 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))) (value!97766 (h!22962 (t!147936 tokens!457)))))))

(assert (=> d!485000 (= (charsOf!1740 (h!22962 (t!147936 tokens!457))) lt!574322)))

(declare-fun b_lambda!50845 () Bool)

(assert (=> (not b_lambda!50845) (not d!485000)))

(declare-fun t!147942 () Bool)

(declare-fun tb!92663 () Bool)

(assert (=> (and b!1610911 (= (toChars!4373 (transformation!3091 (h!22963 rules!1846))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457)))))) t!147942) tb!92663))

(declare-fun b!1611010 () Bool)

(declare-fun e!1033150 () Bool)

(declare-fun tp!469885 () Bool)

(declare-fun inv!22985 (Conc!5830) Bool)

(assert (=> b!1611010 (= e!1033150 (and (inv!22985 (c!262615 (dynLambda!7850 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))) (value!97766 (h!22962 (t!147936 tokens!457)))))) tp!469885))))

(declare-fun result!111634 () Bool)

(declare-fun inv!22986 (BalanceConc!11604) Bool)

(assert (=> tb!92663 (= result!111634 (and (inv!22986 (dynLambda!7850 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))) (value!97766 (h!22962 (t!147936 tokens!457))))) e!1033150))))

(assert (= tb!92663 b!1611010))

(declare-fun m!1927665 () Bool)

(assert (=> b!1611010 m!1927665))

(declare-fun m!1927667 () Bool)

(assert (=> tb!92663 m!1927667))

(assert (=> d!485000 t!147942))

(declare-fun b_and!114197 () Bool)

(assert (= b_and!114191 (and (=> t!147942 result!111634) b_and!114197)))

(declare-fun t!147944 () Bool)

(declare-fun tb!92665 () Bool)

(assert (=> (and b!1610920 (= (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457)))))) t!147944) tb!92665))

(declare-fun result!111638 () Bool)

(assert (= result!111638 result!111634))

(assert (=> d!485000 t!147944))

(declare-fun b_and!114199 () Bool)

(assert (= b_and!114195 (and (=> t!147944 result!111638) b_and!114199)))

(declare-fun m!1927669 () Bool)

(assert (=> d!485000 m!1927669))

(declare-fun m!1927671 () Bool)

(assert (=> d!485000 m!1927671))

(assert (=> b!1610919 d!485000))

(declare-fun d!485002 () Bool)

(declare-fun lt!574342 () C!9012)

(declare-fun apply!4385 (List!17630 Int) C!9012)

(assert (=> d!485002 (= lt!574342 (apply!4385 (list!6848 (charsOf!1740 (h!22962 (t!147936 tokens!457)))) 0))))

(declare-fun apply!4386 (Conc!5830 Int) C!9012)

(assert (=> d!485002 (= lt!574342 (apply!4386 (c!262615 (charsOf!1740 (h!22962 (t!147936 tokens!457)))) 0))))

(declare-fun e!1033155 () Bool)

(assert (=> d!485002 e!1033155))

(declare-fun res!718201 () Bool)

(assert (=> d!485002 (=> (not res!718201) (not e!1033155))))

(assert (=> d!485002 (= res!718201 (<= 0 0))))

(assert (=> d!485002 (= (apply!4380 (charsOf!1740 (h!22962 (t!147936 tokens!457))) 0) lt!574342)))

(declare-fun b!1611017 () Bool)

(declare-fun size!14142 (BalanceConc!11604) Int)

(assert (=> b!1611017 (= e!1033155 (< 0 (size!14142 (charsOf!1740 (h!22962 (t!147936 tokens!457))))))))

(assert (= (and d!485002 res!718201) b!1611017))

(assert (=> d!485002 m!1927439))

(declare-fun m!1927673 () Bool)

(assert (=> d!485002 m!1927673))

(assert (=> d!485002 m!1927673))

(declare-fun m!1927675 () Bool)

(assert (=> d!485002 m!1927675))

(declare-fun m!1927677 () Bool)

(assert (=> d!485002 m!1927677))

(assert (=> b!1611017 m!1927439))

(declare-fun m!1927679 () Bool)

(assert (=> b!1611017 m!1927679))

(assert (=> b!1610919 d!485002))

(declare-fun b!1611026 () Bool)

(declare-fun res!718212 () Bool)

(declare-fun e!1033158 () Bool)

(assert (=> b!1611026 (=> (not res!718212) (not e!1033158))))

(declare-fun ++!4615 (Conc!5830 Conc!5830) Conc!5830)

(assert (=> b!1611026 (= res!718212 (isBalanced!1741 (++!4615 (c!262615 lt!574195) (c!262615 lt!574177))))))

(declare-fun b!1611028 () Bool)

(declare-fun res!718210 () Bool)

(assert (=> b!1611028 (=> (not res!718210) (not e!1033158))))

(declare-fun height!878 (Conc!5830) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1611028 (= res!718210 (>= (height!878 (++!4615 (c!262615 lt!574195) (c!262615 lt!574177))) (max!0 (height!878 (c!262615 lt!574195)) (height!878 (c!262615 lt!574177)))))))

(declare-fun b!1611029 () Bool)

(declare-fun lt!574345 () BalanceConc!11604)

(assert (=> b!1611029 (= e!1033158 (= (list!6848 lt!574345) (++!4613 (list!6848 lt!574195) (list!6848 lt!574177))))))

(declare-fun b!1611027 () Bool)

(declare-fun res!718211 () Bool)

(assert (=> b!1611027 (=> (not res!718211) (not e!1033158))))

(assert (=> b!1611027 (= res!718211 (<= (height!878 (++!4615 (c!262615 lt!574195) (c!262615 lt!574177))) (+ (max!0 (height!878 (c!262615 lt!574195)) (height!878 (c!262615 lt!574177))) 1)))))

(declare-fun d!485004 () Bool)

(assert (=> d!485004 e!1033158))

(declare-fun res!718213 () Bool)

(assert (=> d!485004 (=> (not res!718213) (not e!1033158))))

(declare-fun appendAssocInst!410 (Conc!5830 Conc!5830) Bool)

(assert (=> d!485004 (= res!718213 (appendAssocInst!410 (c!262615 lt!574195) (c!262615 lt!574177)))))

(assert (=> d!485004 (= lt!574345 (BalanceConc!11605 (++!4615 (c!262615 lt!574195) (c!262615 lt!574177))))))

(assert (=> d!485004 (= (++!4614 lt!574195 lt!574177) lt!574345)))

(assert (= (and d!485004 res!718213) b!1611026))

(assert (= (and b!1611026 res!718212) b!1611027))

(assert (= (and b!1611027 res!718211) b!1611028))

(assert (= (and b!1611028 res!718210) b!1611029))

(declare-fun m!1927729 () Bool)

(assert (=> b!1611026 m!1927729))

(assert (=> b!1611026 m!1927729))

(declare-fun m!1927731 () Bool)

(assert (=> b!1611026 m!1927731))

(declare-fun m!1927733 () Bool)

(assert (=> b!1611029 m!1927733))

(assert (=> b!1611029 m!1927421))

(assert (=> b!1611029 m!1927407))

(assert (=> b!1611029 m!1927421))

(assert (=> b!1611029 m!1927407))

(declare-fun m!1927735 () Bool)

(assert (=> b!1611029 m!1927735))

(assert (=> b!1611028 m!1927729))

(declare-fun m!1927737 () Bool)

(assert (=> b!1611028 m!1927737))

(assert (=> b!1611028 m!1927729))

(declare-fun m!1927739 () Bool)

(assert (=> b!1611028 m!1927739))

(declare-fun m!1927741 () Bool)

(assert (=> b!1611028 m!1927741))

(assert (=> b!1611028 m!1927737))

(declare-fun m!1927743 () Bool)

(assert (=> b!1611028 m!1927743))

(assert (=> b!1611028 m!1927741))

(declare-fun m!1927745 () Bool)

(assert (=> d!485004 m!1927745))

(assert (=> d!485004 m!1927729))

(assert (=> b!1611027 m!1927729))

(assert (=> b!1611027 m!1927737))

(assert (=> b!1611027 m!1927729))

(assert (=> b!1611027 m!1927739))

(assert (=> b!1611027 m!1927741))

(assert (=> b!1611027 m!1927737))

(assert (=> b!1611027 m!1927743))

(assert (=> b!1611027 m!1927741))

(assert (=> b!1610919 d!485004))

(declare-fun d!485008 () Bool)

(assert (=> d!485008 (= (isDefined!2553 lt!574198) (not (isEmpty!10605 lt!574198)))))

(declare-fun bs!393832 () Bool)

(assert (= bs!393832 d!485008))

(declare-fun m!1927747 () Bool)

(assert (=> bs!393832 m!1927747))

(assert (=> b!1610918 d!485008))

(declare-fun b!1611042 () Bool)

(declare-fun res!718223 () Bool)

(declare-fun e!1033168 () Bool)

(assert (=> b!1611042 (=> (not res!718223) (not e!1033168))))

(declare-fun lt!574383 () Token!5748)

(declare-datatypes ((Option!3186 0))(
  ( (None!3185) (Some!3185 (v!24150 Rule!5982)) )
))
(declare-fun get!5035 (Option!3186) Rule!5982)

(declare-fun getRuleFromTag!260 (LexerInterface!2720 List!17632 String!20237) Option!3186)

(assert (=> b!1611042 (= res!718223 (matchR!1936 (regex!3091 (get!5035 (getRuleFromTag!260 thiss!17113 rules!1846 (tag!3367 (rule!4911 lt!574383))))) (list!6848 (charsOf!1740 lt!574383))))))

(declare-fun b!1611045 () Bool)

(declare-fun e!1033167 () Unit!28191)

(declare-fun Unit!28195 () Unit!28191)

(assert (=> b!1611045 (= e!1033167 Unit!28195)))

(declare-fun b!1611043 () Bool)

(assert (=> b!1611043 (= e!1033168 (= (rule!4911 lt!574383) (get!5035 (getRuleFromTag!260 thiss!17113 rules!1846 (tag!3367 (rule!4911 lt!574383))))))))

(declare-fun d!485010 () Bool)

(assert (=> d!485010 (isDefined!2553 (maxPrefix!1284 thiss!17113 rules!1846 (++!4613 lt!574187 lt!574181)))))

(declare-fun lt!574387 () Unit!28191)

(assert (=> d!485010 (= lt!574387 e!1033167)))

(declare-fun c!262641 () Bool)

(assert (=> d!485010 (= c!262641 (isEmpty!10605 (maxPrefix!1284 thiss!17113 rules!1846 (++!4613 lt!574187 lt!574181))))))

(declare-fun lt!574392 () Unit!28191)

(declare-fun lt!574390 () Unit!28191)

(assert (=> d!485010 (= lt!574392 lt!574390)))

(assert (=> d!485010 e!1033168))

(declare-fun res!718222 () Bool)

(assert (=> d!485010 (=> (not res!718222) (not e!1033168))))

(declare-fun isDefined!2555 (Option!3186) Bool)

(assert (=> d!485010 (= res!718222 (isDefined!2555 (getRuleFromTag!260 thiss!17113 rules!1846 (tag!3367 (rule!4911 lt!574383)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!260 (LexerInterface!2720 List!17632 List!17630 Token!5748) Unit!28191)

(assert (=> d!485010 (= lt!574390 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!260 thiss!17113 rules!1846 lt!574187 lt!574383))))

(declare-fun lt!574384 () Unit!28191)

(declare-fun lt!574398 () Unit!28191)

(assert (=> d!485010 (= lt!574384 lt!574398)))

(declare-fun lt!574388 () List!17630)

(assert (=> d!485010 (isPrefix!1351 lt!574388 (++!4613 lt!574187 lt!574181))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!146 (List!17630 List!17630 List!17630) Unit!28191)

(assert (=> d!485010 (= lt!574398 (lemmaPrefixStaysPrefixWhenAddingToSuffix!146 lt!574388 lt!574187 lt!574181))))

(assert (=> d!485010 (= lt!574388 (list!6848 (charsOf!1740 lt!574383)))))

(declare-fun lt!574396 () Unit!28191)

(declare-fun lt!574385 () Unit!28191)

(assert (=> d!485010 (= lt!574396 lt!574385)))

(declare-fun lt!574393 () List!17630)

(declare-fun lt!574391 () List!17630)

(assert (=> d!485010 (isPrefix!1351 lt!574393 (++!4613 lt!574393 lt!574391))))

(assert (=> d!485010 (= lt!574385 (lemmaConcatTwoListThenFirstIsPrefix!876 lt!574393 lt!574391))))

(assert (=> d!485010 (= lt!574391 (_2!9929 (get!5034 (maxPrefix!1284 thiss!17113 rules!1846 lt!574187))))))

(assert (=> d!485010 (= lt!574393 (list!6848 (charsOf!1740 lt!574383)))))

(assert (=> d!485010 (= lt!574383 (head!3289 (list!6847 (_1!9928 (lex!1204 thiss!17113 rules!1846 (seqFromList!1931 lt!574187))))))))

(assert (=> d!485010 (not (isEmpty!10599 rules!1846))))

(assert (=> d!485010 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!294 thiss!17113 rules!1846 lt!574187 lt!574181) lt!574387)))

(declare-fun b!1611044 () Bool)

(declare-fun Unit!28199 () Unit!28191)

(assert (=> b!1611044 (= e!1033167 Unit!28199)))

(declare-fun lt!574382 () List!17630)

(assert (=> b!1611044 (= lt!574382 (++!4613 lt!574187 lt!574181))))

(declare-fun lt!574389 () Unit!28191)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!154 (LexerInterface!2720 Rule!5982 List!17632 List!17630) Unit!28191)

(assert (=> b!1611044 (= lt!574389 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!154 thiss!17113 (rule!4911 lt!574383) rules!1846 lt!574382))))

(assert (=> b!1611044 (isEmpty!10605 (maxPrefixOneRule!751 thiss!17113 (rule!4911 lt!574383) lt!574382))))

(declare-fun lt!574397 () Unit!28191)

(assert (=> b!1611044 (= lt!574397 lt!574389)))

(declare-fun lt!574394 () List!17630)

(assert (=> b!1611044 (= lt!574394 (list!6848 (charsOf!1740 lt!574383)))))

(declare-fun lt!574395 () Unit!28191)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!150 (LexerInterface!2720 Rule!5982 List!17630 List!17630) Unit!28191)

(assert (=> b!1611044 (= lt!574395 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!150 thiss!17113 (rule!4911 lt!574383) lt!574394 (++!4613 lt!574187 lt!574181)))))

(assert (=> b!1611044 (not (matchR!1936 (regex!3091 (rule!4911 lt!574383)) lt!574394))))

(declare-fun lt!574386 () Unit!28191)

(assert (=> b!1611044 (= lt!574386 lt!574395)))

(assert (=> b!1611044 false))

(assert (= (and d!485010 res!718222) b!1611042))

(assert (= (and b!1611042 res!718223) b!1611043))

(assert (= (and d!485010 c!262641) b!1611044))

(assert (= (and d!485010 (not c!262641)) b!1611045))

(declare-fun m!1927749 () Bool)

(assert (=> b!1611042 m!1927749))

(declare-fun m!1927751 () Bool)

(assert (=> b!1611042 m!1927751))

(declare-fun m!1927753 () Bool)

(assert (=> b!1611042 m!1927753))

(assert (=> b!1611042 m!1927753))

(declare-fun m!1927755 () Bool)

(assert (=> b!1611042 m!1927755))

(assert (=> b!1611042 m!1927751))

(declare-fun m!1927757 () Bool)

(assert (=> b!1611042 m!1927757))

(assert (=> b!1611042 m!1927749))

(assert (=> b!1611043 m!1927753))

(assert (=> b!1611043 m!1927753))

(assert (=> b!1611043 m!1927755))

(declare-fun m!1927759 () Bool)

(assert (=> d!485010 m!1927759))

(assert (=> d!485010 m!1927749))

(assert (=> d!485010 m!1927751))

(assert (=> d!485010 m!1927409))

(declare-fun m!1927761 () Bool)

(assert (=> d!485010 m!1927761))

(declare-fun m!1927763 () Bool)

(assert (=> d!485010 m!1927763))

(assert (=> d!485010 m!1927485))

(assert (=> d!485010 m!1927487))

(declare-fun m!1927765 () Bool)

(assert (=> d!485010 m!1927765))

(declare-fun m!1927767 () Bool)

(assert (=> d!485010 m!1927767))

(assert (=> d!485010 m!1927491))

(assert (=> d!485010 m!1927759))

(declare-fun m!1927769 () Bool)

(assert (=> d!485010 m!1927769))

(assert (=> d!485010 m!1927409))

(declare-fun m!1927771 () Bool)

(assert (=> d!485010 m!1927771))

(declare-fun m!1927773 () Bool)

(assert (=> d!485010 m!1927773))

(assert (=> d!485010 m!1927485))

(assert (=> d!485010 m!1927753))

(assert (=> d!485010 m!1927409))

(declare-fun m!1927775 () Bool)

(assert (=> d!485010 m!1927775))

(assert (=> d!485010 m!1927775))

(declare-fun m!1927777 () Bool)

(assert (=> d!485010 m!1927777))

(assert (=> d!485010 m!1927771))

(assert (=> d!485010 m!1927775))

(declare-fun m!1927779 () Bool)

(assert (=> d!485010 m!1927779))

(declare-fun m!1927781 () Bool)

(assert (=> d!485010 m!1927781))

(assert (=> d!485010 m!1927763))

(declare-fun m!1927783 () Bool)

(assert (=> d!485010 m!1927783))

(assert (=> d!485010 m!1927749))

(assert (=> d!485010 m!1927753))

(declare-fun m!1927785 () Bool)

(assert (=> d!485010 m!1927785))

(declare-fun m!1927787 () Bool)

(assert (=> b!1611044 m!1927787))

(assert (=> b!1611044 m!1927749))

(assert (=> b!1611044 m!1927751))

(declare-fun m!1927789 () Bool)

(assert (=> b!1611044 m!1927789))

(assert (=> b!1611044 m!1927409))

(declare-fun m!1927791 () Bool)

(assert (=> b!1611044 m!1927791))

(declare-fun m!1927793 () Bool)

(assert (=> b!1611044 m!1927793))

(assert (=> b!1611044 m!1927749))

(assert (=> b!1611044 m!1927789))

(declare-fun m!1927795 () Bool)

(assert (=> b!1611044 m!1927795))

(assert (=> b!1611044 m!1927409))

(assert (=> b!1610918 d!485010))

(declare-fun d!485012 () Bool)

(declare-fun res!718228 () Bool)

(declare-fun e!1033171 () Bool)

(assert (=> d!485012 (=> (not res!718228) (not e!1033171))))

(assert (=> d!485012 (= res!718228 (not (isEmpty!10602 (originalCharacters!3905 (h!22962 tokens!457)))))))

(assert (=> d!485012 (= (inv!22981 (h!22962 tokens!457)) e!1033171)))

(declare-fun b!1611050 () Bool)

(declare-fun res!718229 () Bool)

(assert (=> b!1611050 (=> (not res!718229) (not e!1033171))))

(assert (=> b!1611050 (= res!718229 (= (originalCharacters!3905 (h!22962 tokens!457)) (list!6848 (dynLambda!7850 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (value!97766 (h!22962 tokens!457))))))))

(declare-fun b!1611051 () Bool)

(assert (=> b!1611051 (= e!1033171 (= (size!14136 (h!22962 tokens!457)) (size!14138 (originalCharacters!3905 (h!22962 tokens!457)))))))

(assert (= (and d!485012 res!718228) b!1611050))

(assert (= (and b!1611050 res!718229) b!1611051))

(declare-fun b_lambda!50847 () Bool)

(assert (=> (not b_lambda!50847) (not b!1611050)))

(declare-fun t!147948 () Bool)

(declare-fun tb!92667 () Bool)

(assert (=> (and b!1610911 (= (toChars!4373 (transformation!3091 (h!22963 rules!1846))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457))))) t!147948) tb!92667))

(declare-fun b!1611052 () Bool)

(declare-fun e!1033172 () Bool)

(declare-fun tp!469886 () Bool)

(assert (=> b!1611052 (= e!1033172 (and (inv!22985 (c!262615 (dynLambda!7850 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (value!97766 (h!22962 tokens!457))))) tp!469886))))

(declare-fun result!111640 () Bool)

(assert (=> tb!92667 (= result!111640 (and (inv!22986 (dynLambda!7850 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (value!97766 (h!22962 tokens!457)))) e!1033172))))

(assert (= tb!92667 b!1611052))

(declare-fun m!1927797 () Bool)

(assert (=> b!1611052 m!1927797))

(declare-fun m!1927799 () Bool)

(assert (=> tb!92667 m!1927799))

(assert (=> b!1611050 t!147948))

(declare-fun b_and!114201 () Bool)

(assert (= b_and!114197 (and (=> t!147948 result!111640) b_and!114201)))

(declare-fun t!147950 () Bool)

(declare-fun tb!92669 () Bool)

(assert (=> (and b!1610920 (= (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457))))) t!147950) tb!92669))

(declare-fun result!111642 () Bool)

(assert (= result!111642 result!111640))

(assert (=> b!1611050 t!147950))

(declare-fun b_and!114203 () Bool)

(assert (= b_and!114199 (and (=> t!147950 result!111642) b_and!114203)))

(declare-fun m!1927801 () Bool)

(assert (=> d!485012 m!1927801))

(declare-fun m!1927803 () Bool)

(assert (=> b!1611050 m!1927803))

(assert (=> b!1611050 m!1927803))

(declare-fun m!1927805 () Bool)

(assert (=> b!1611050 m!1927805))

(declare-fun m!1927807 () Bool)

(assert (=> b!1611051 m!1927807))

(assert (=> b!1610897 d!485012))

(declare-fun d!485014 () Bool)

(declare-fun lt!574399 () BalanceConc!11604)

(assert (=> d!485014 (= (list!6848 lt!574399) (printList!835 thiss!17113 (list!6847 (seqFromList!1932 tokens!457))))))

(assert (=> d!485014 (= lt!574399 (printTailRec!773 thiss!17113 (seqFromList!1932 tokens!457) 0 (BalanceConc!11605 Empty!5830)))))

(assert (=> d!485014 (= (print!1251 thiss!17113 (seqFromList!1932 tokens!457)) lt!574399)))

(declare-fun bs!393833 () Bool)

(assert (= bs!393833 d!485014))

(declare-fun m!1927809 () Bool)

(assert (=> bs!393833 m!1927809))

(assert (=> bs!393833 m!1927417))

(declare-fun m!1927811 () Bool)

(assert (=> bs!393833 m!1927811))

(assert (=> bs!393833 m!1927811))

(declare-fun m!1927813 () Bool)

(assert (=> bs!393833 m!1927813))

(assert (=> bs!393833 m!1927417))

(declare-fun m!1927815 () Bool)

(assert (=> bs!393833 m!1927815))

(assert (=> b!1610907 d!485014))

(declare-fun b!1611063 () Bool)

(declare-fun e!1033181 () Bool)

(declare-fun lt!574402 () tuple2!17052)

(assert (=> b!1611063 (= e!1033181 (not (isEmpty!10598 (_1!9928 lt!574402))))))

(declare-fun b!1611064 () Bool)

(declare-fun e!1033180 () Bool)

(assert (=> b!1611064 (= e!1033180 e!1033181)))

(declare-fun res!718237 () Bool)

(assert (=> b!1611064 (= res!718237 (< (size!14142 (_2!9928 lt!574402)) (size!14142 lt!574182)))))

(assert (=> b!1611064 (=> (not res!718237) (not e!1033181))))

(declare-fun b!1611065 () Bool)

(declare-fun res!718236 () Bool)

(declare-fun e!1033179 () Bool)

(assert (=> b!1611065 (=> (not res!718236) (not e!1033179))))

(declare-datatypes ((tuple2!17058 0))(
  ( (tuple2!17059 (_1!9931 List!17631) (_2!9931 List!17630)) )
))
(declare-fun lexList!805 (LexerInterface!2720 List!17632 List!17630) tuple2!17058)

(assert (=> b!1611065 (= res!718236 (= (list!6847 (_1!9928 lt!574402)) (_1!9931 (lexList!805 thiss!17113 rules!1846 (list!6848 lt!574182)))))))

(declare-fun b!1611066 () Bool)

(assert (=> b!1611066 (= e!1033180 (= (_2!9928 lt!574402) lt!574182))))

(declare-fun d!485016 () Bool)

(assert (=> d!485016 e!1033179))

(declare-fun res!718238 () Bool)

(assert (=> d!485016 (=> (not res!718238) (not e!1033179))))

(assert (=> d!485016 (= res!718238 e!1033180)))

(declare-fun c!262644 () Bool)

(assert (=> d!485016 (= c!262644 (> (size!14139 (_1!9928 lt!574402)) 0))))

(declare-fun lexTailRecV2!528 (LexerInterface!2720 List!17632 BalanceConc!11604 BalanceConc!11604 BalanceConc!11604 BalanceConc!11606) tuple2!17052)

(assert (=> d!485016 (= lt!574402 (lexTailRecV2!528 thiss!17113 rules!1846 lt!574182 (BalanceConc!11605 Empty!5830) lt!574182 (BalanceConc!11607 Empty!5831)))))

(assert (=> d!485016 (= (lex!1204 thiss!17113 rules!1846 lt!574182) lt!574402)))

(declare-fun b!1611067 () Bool)

(assert (=> b!1611067 (= e!1033179 (= (list!6848 (_2!9928 lt!574402)) (_2!9931 (lexList!805 thiss!17113 rules!1846 (list!6848 lt!574182)))))))

(assert (= (and d!485016 c!262644) b!1611064))

(assert (= (and d!485016 (not c!262644)) b!1611066))

(assert (= (and b!1611064 res!718237) b!1611063))

(assert (= (and d!485016 res!718238) b!1611065))

(assert (= (and b!1611065 res!718236) b!1611067))

(declare-fun m!1927817 () Bool)

(assert (=> b!1611065 m!1927817))

(assert (=> b!1611065 m!1927419))

(assert (=> b!1611065 m!1927419))

(declare-fun m!1927819 () Bool)

(assert (=> b!1611065 m!1927819))

(declare-fun m!1927821 () Bool)

(assert (=> b!1611067 m!1927821))

(assert (=> b!1611067 m!1927419))

(assert (=> b!1611067 m!1927419))

(assert (=> b!1611067 m!1927819))

(declare-fun m!1927823 () Bool)

(assert (=> d!485016 m!1927823))

(declare-fun m!1927825 () Bool)

(assert (=> d!485016 m!1927825))

(declare-fun m!1927827 () Bool)

(assert (=> b!1611063 m!1927827))

(declare-fun m!1927829 () Bool)

(assert (=> b!1611064 m!1927829))

(declare-fun m!1927831 () Bool)

(assert (=> b!1611064 m!1927831))

(assert (=> b!1610907 d!485016))

(declare-fun d!485018 () Bool)

(declare-fun lt!574403 () BalanceConc!11604)

(assert (=> d!485018 (= (list!6848 lt!574403) (printList!835 thiss!17113 (list!6847 lt!574193)))))

(assert (=> d!485018 (= lt!574403 (printTailRec!773 thiss!17113 lt!574193 0 (BalanceConc!11605 Empty!5830)))))

(assert (=> d!485018 (= (print!1251 thiss!17113 lt!574193) lt!574403)))

(declare-fun bs!393834 () Bool)

(assert (= bs!393834 d!485018))

(declare-fun m!1927833 () Bool)

(assert (=> bs!393834 m!1927833))

(assert (=> bs!393834 m!1927441))

(assert (=> bs!393834 m!1927441))

(declare-fun m!1927835 () Bool)

(assert (=> bs!393834 m!1927835))

(declare-fun m!1927837 () Bool)

(assert (=> bs!393834 m!1927837))

(assert (=> b!1610907 d!485018))

(declare-fun d!485020 () Bool)

(declare-fun fromListB!846 (List!17631) BalanceConc!11606)

(assert (=> d!485020 (= (seqFromList!1932 (t!147936 tokens!457)) (fromListB!846 (t!147936 tokens!457)))))

(declare-fun bs!393835 () Bool)

(assert (= bs!393835 d!485020))

(declare-fun m!1927839 () Bool)

(assert (=> bs!393835 m!1927839))

(assert (=> b!1610907 d!485020))

(declare-fun d!485022 () Bool)

(assert (=> d!485022 (= (list!6848 lt!574182) (list!6849 (c!262615 lt!574182)))))

(declare-fun bs!393836 () Bool)

(assert (= bs!393836 d!485022))

(declare-fun m!1927841 () Bool)

(assert (=> bs!393836 m!1927841))

(assert (=> b!1610907 d!485022))

(declare-fun d!485024 () Bool)

(assert (=> d!485024 (= (seqFromList!1932 tokens!457) (fromListB!846 tokens!457))))

(declare-fun bs!393837 () Bool)

(assert (= bs!393837 d!485024))

(declare-fun m!1927843 () Bool)

(assert (=> bs!393837 m!1927843))

(assert (=> b!1610907 d!485024))

(declare-fun d!485026 () Bool)

(declare-fun lt!574404 () BalanceConc!11604)

(assert (=> d!485026 (= (list!6848 lt!574404) (originalCharacters!3905 (h!22962 tokens!457)))))

(assert (=> d!485026 (= lt!574404 (dynLambda!7850 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (value!97766 (h!22962 tokens!457))))))

(assert (=> d!485026 (= (charsOf!1740 (h!22962 tokens!457)) lt!574404)))

(declare-fun b_lambda!50849 () Bool)

(assert (=> (not b_lambda!50849) (not d!485026)))

(assert (=> d!485026 t!147948))

(declare-fun b_and!114205 () Bool)

(assert (= b_and!114201 (and (=> t!147948 result!111640) b_and!114205)))

(assert (=> d!485026 t!147950))

(declare-fun b_and!114207 () Bool)

(assert (= b_and!114203 (and (=> t!147950 result!111642) b_and!114207)))

(declare-fun m!1927845 () Bool)

(assert (=> d!485026 m!1927845))

(assert (=> d!485026 m!1927803))

(assert (=> b!1610907 d!485026))

(declare-fun d!485028 () Bool)

(assert (=> d!485028 (= (list!6848 lt!574195) (list!6849 (c!262615 lt!574195)))))

(declare-fun bs!393838 () Bool)

(assert (= bs!393838 d!485028))

(declare-fun m!1927847 () Bool)

(assert (=> bs!393838 m!1927847))

(assert (=> b!1610907 d!485028))

(declare-fun d!485030 () Bool)

(declare-fun e!1033183 () Bool)

(assert (=> d!485030 e!1033183))

(declare-fun res!718240 () Bool)

(assert (=> d!485030 (=> (not res!718240) (not e!1033183))))

(declare-fun lt!574405 () List!17630)

(assert (=> d!485030 (= res!718240 (= (content!2440 lt!574405) ((_ map or) (content!2440 lt!574187) (content!2440 lt!574181))))))

(declare-fun e!1033182 () List!17630)

(assert (=> d!485030 (= lt!574405 e!1033182)))

(declare-fun c!262645 () Bool)

(assert (=> d!485030 (= c!262645 ((_ is Nil!17560) lt!574187))))

(assert (=> d!485030 (= (++!4613 lt!574187 lt!574181) lt!574405)))

(declare-fun b!1611070 () Bool)

(declare-fun res!718239 () Bool)

(assert (=> b!1611070 (=> (not res!718239) (not e!1033183))))

(assert (=> b!1611070 (= res!718239 (= (size!14138 lt!574405) (+ (size!14138 lt!574187) (size!14138 lt!574181))))))

(declare-fun b!1611069 () Bool)

(assert (=> b!1611069 (= e!1033182 (Cons!17560 (h!22961 lt!574187) (++!4613 (t!147935 lt!574187) lt!574181)))))

(declare-fun b!1611068 () Bool)

(assert (=> b!1611068 (= e!1033182 lt!574181)))

(declare-fun b!1611071 () Bool)

(assert (=> b!1611071 (= e!1033183 (or (not (= lt!574181 Nil!17560)) (= lt!574405 lt!574187)))))

(assert (= (and d!485030 c!262645) b!1611068))

(assert (= (and d!485030 (not c!262645)) b!1611069))

(assert (= (and d!485030 res!718240) b!1611070))

(assert (= (and b!1611070 res!718239) b!1611071))

(declare-fun m!1927849 () Bool)

(assert (=> d!485030 m!1927849))

(assert (=> d!485030 m!1927507))

(declare-fun m!1927851 () Bool)

(assert (=> d!485030 m!1927851))

(declare-fun m!1927853 () Bool)

(assert (=> b!1611070 m!1927853))

(assert (=> b!1611070 m!1927513))

(declare-fun m!1927855 () Bool)

(assert (=> b!1611070 m!1927855))

(declare-fun m!1927857 () Bool)

(assert (=> b!1611069 m!1927857))

(assert (=> b!1610907 d!485030))

(declare-fun d!485032 () Bool)

(assert (=> d!485032 (= (list!6848 lt!574174) (list!6849 (c!262615 lt!574174)))))

(declare-fun bs!393839 () Bool)

(assert (= bs!393839 d!485032))

(declare-fun m!1927859 () Bool)

(assert (=> bs!393839 m!1927859))

(assert (=> b!1610907 d!485032))

(declare-fun d!485034 () Bool)

(declare-fun e!1033186 () Bool)

(assert (=> d!485034 e!1033186))

(declare-fun res!718243 () Bool)

(assert (=> d!485034 (=> (not res!718243) (not e!1033186))))

(declare-fun prepend!595 (Conc!5831 Token!5748) Conc!5831)

(assert (=> d!485034 (= res!718243 (isBalanced!1740 (prepend!595 (c!262617 (seqFromList!1932 (t!147936 (t!147936 tokens!457)))) (h!22962 (t!147936 tokens!457)))))))

(declare-fun lt!574408 () BalanceConc!11606)

(assert (=> d!485034 (= lt!574408 (BalanceConc!11607 (prepend!595 (c!262617 (seqFromList!1932 (t!147936 (t!147936 tokens!457)))) (h!22962 (t!147936 tokens!457)))))))

(assert (=> d!485034 (= (prepend!593 (seqFromList!1932 (t!147936 (t!147936 tokens!457))) (h!22962 (t!147936 tokens!457))) lt!574408)))

(declare-fun b!1611074 () Bool)

(assert (=> b!1611074 (= e!1033186 (= (list!6847 lt!574408) (Cons!17561 (h!22962 (t!147936 tokens!457)) (list!6847 (seqFromList!1932 (t!147936 (t!147936 tokens!457)))))))))

(assert (= (and d!485034 res!718243) b!1611074))

(declare-fun m!1927861 () Bool)

(assert (=> d!485034 m!1927861))

(assert (=> d!485034 m!1927861))

(declare-fun m!1927863 () Bool)

(assert (=> d!485034 m!1927863))

(declare-fun m!1927865 () Bool)

(assert (=> b!1611074 m!1927865))

(assert (=> b!1611074 m!1927445))

(declare-fun m!1927867 () Bool)

(assert (=> b!1611074 m!1927867))

(assert (=> b!1610906 d!485034))

(declare-fun d!485036 () Bool)

(declare-fun list!6852 (Conc!5831) List!17631)

(assert (=> d!485036 (= (list!6847 (prepend!593 (seqFromList!1932 (t!147936 (t!147936 tokens!457))) (h!22962 (t!147936 tokens!457)))) (list!6852 (c!262617 (prepend!593 (seqFromList!1932 (t!147936 (t!147936 tokens!457))) (h!22962 (t!147936 tokens!457))))))))

(declare-fun bs!393840 () Bool)

(assert (= bs!393840 d!485036))

(declare-fun m!1927869 () Bool)

(assert (=> bs!393840 m!1927869))

(assert (=> b!1610906 d!485036))

(declare-fun d!485038 () Bool)

(assert (=> d!485038 (= (seqFromList!1932 (t!147936 (t!147936 tokens!457))) (fromListB!846 (t!147936 (t!147936 tokens!457))))))

(declare-fun bs!393841 () Bool)

(assert (= bs!393841 d!485038))

(declare-fun m!1927871 () Bool)

(assert (=> bs!393841 m!1927871))

(assert (=> b!1610906 d!485038))

(declare-fun d!485040 () Bool)

(assert (=> d!485040 (= (list!6847 lt!574193) (list!6852 (c!262617 lt!574193)))))

(declare-fun bs!393842 () Bool)

(assert (= bs!393842 d!485040))

(declare-fun m!1927873 () Bool)

(assert (=> bs!393842 m!1927873))

(assert (=> b!1610906 d!485040))

(declare-fun d!485042 () Bool)

(assert (=> d!485042 (= (list!6847 (_1!9928 lt!574188)) (list!6847 (prepend!593 (seqFromList!1932 (t!147936 (t!147936 tokens!457))) (h!22962 (t!147936 tokens!457)))))))

(declare-fun lt!574411 () Unit!28191)

(declare-fun choose!9701 (Token!5748 List!17631 BalanceConc!11606) Unit!28191)

(assert (=> d!485042 (= lt!574411 (choose!9701 (h!22962 (t!147936 tokens!457)) (t!147936 (t!147936 tokens!457)) (_1!9928 lt!574188)))))

(declare-fun $colon$colon!303 (List!17631 Token!5748) List!17631)

(assert (=> d!485042 (= (list!6847 (_1!9928 lt!574188)) (list!6847 (seqFromList!1932 ($colon$colon!303 (t!147936 (t!147936 tokens!457)) (h!22962 (t!147936 tokens!457))))))))

(assert (=> d!485042 (= (seqFromListBHdTlConstructive!168 (h!22962 (t!147936 tokens!457)) (t!147936 (t!147936 tokens!457)) (_1!9928 lt!574188)) lt!574411)))

(declare-fun bs!393843 () Bool)

(assert (= bs!393843 d!485042))

(assert (=> bs!393843 m!1927445))

(declare-fun m!1927875 () Bool)

(assert (=> bs!393843 m!1927875))

(declare-fun m!1927877 () Bool)

(assert (=> bs!393843 m!1927877))

(assert (=> bs!393843 m!1927447))

(assert (=> bs!393843 m!1927449))

(declare-fun m!1927879 () Bool)

(assert (=> bs!393843 m!1927879))

(assert (=> bs!393843 m!1927875))

(declare-fun m!1927881 () Bool)

(assert (=> bs!393843 m!1927881))

(assert (=> bs!393843 m!1927445))

(assert (=> bs!393843 m!1927447))

(assert (=> bs!393843 m!1927879))

(assert (=> bs!393843 m!1927471))

(assert (=> b!1610906 d!485042))

(declare-fun d!485044 () Bool)

(declare-fun res!718260 () Bool)

(declare-fun e!1033212 () Bool)

(assert (=> d!485044 (=> res!718260 e!1033212)))

(assert (=> d!485044 (= res!718260 (or (not ((_ is Cons!17561) tokens!457)) (not ((_ is Cons!17561) (t!147936 tokens!457)))))))

(assert (=> d!485044 (= (tokensListTwoByTwoPredicateSeparableList!413 thiss!17113 tokens!457 rules!1846) e!1033212)))

(declare-fun b!1611105 () Bool)

(declare-fun e!1033211 () Bool)

(assert (=> b!1611105 (= e!1033212 e!1033211)))

(declare-fun res!718259 () Bool)

(assert (=> b!1611105 (=> (not res!718259) (not e!1033211))))

(assert (=> b!1611105 (= res!718259 (separableTokensPredicate!662 thiss!17113 (h!22962 tokens!457) (h!22962 (t!147936 tokens!457)) rules!1846))))

(declare-fun lt!574435 () Unit!28191)

(declare-fun Unit!28214 () Unit!28191)

(assert (=> b!1611105 (= lt!574435 Unit!28214)))

(assert (=> b!1611105 (> (size!14142 (charsOf!1740 (h!22962 (t!147936 tokens!457)))) 0)))

(declare-fun lt!574432 () Unit!28191)

(declare-fun Unit!28215 () Unit!28191)

(assert (=> b!1611105 (= lt!574432 Unit!28215)))

(assert (=> b!1611105 (rulesProduceIndividualToken!1372 thiss!17113 rules!1846 (h!22962 (t!147936 tokens!457)))))

(declare-fun lt!574436 () Unit!28191)

(declare-fun Unit!28216 () Unit!28191)

(assert (=> b!1611105 (= lt!574436 Unit!28216)))

(assert (=> b!1611105 (rulesProduceIndividualToken!1372 thiss!17113 rules!1846 (h!22962 tokens!457))))

(declare-fun lt!574431 () Unit!28191)

(declare-fun lt!574430 () Unit!28191)

(assert (=> b!1611105 (= lt!574431 lt!574430)))

(assert (=> b!1611105 (rulesProduceIndividualToken!1372 thiss!17113 rules!1846 (h!22962 (t!147936 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!541 (LexerInterface!2720 List!17632 List!17631 Token!5748) Unit!28191)

(assert (=> b!1611105 (= lt!574430 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!541 thiss!17113 rules!1846 tokens!457 (h!22962 (t!147936 tokens!457))))))

(declare-fun lt!574434 () Unit!28191)

(declare-fun lt!574433 () Unit!28191)

(assert (=> b!1611105 (= lt!574434 lt!574433)))

(assert (=> b!1611105 (rulesProduceIndividualToken!1372 thiss!17113 rules!1846 (h!22962 tokens!457))))

(assert (=> b!1611105 (= lt!574433 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!541 thiss!17113 rules!1846 tokens!457 (h!22962 tokens!457)))))

(declare-fun b!1611106 () Bool)

(assert (=> b!1611106 (= e!1033211 (tokensListTwoByTwoPredicateSeparableList!413 thiss!17113 (Cons!17561 (h!22962 (t!147936 tokens!457)) (t!147936 (t!147936 tokens!457))) rules!1846))))

(assert (= (and d!485044 (not res!718260)) b!1611105))

(assert (= (and b!1611105 res!718259) b!1611106))

(assert (=> b!1611105 m!1927481))

(assert (=> b!1611105 m!1927459))

(declare-fun m!1927899 () Bool)

(assert (=> b!1611105 m!1927899))

(declare-fun m!1927901 () Bool)

(assert (=> b!1611105 m!1927901))

(assert (=> b!1611105 m!1927439))

(declare-fun m!1927903 () Bool)

(assert (=> b!1611105 m!1927903))

(assert (=> b!1611105 m!1927439))

(assert (=> b!1611105 m!1927679))

(declare-fun m!1927905 () Bool)

(assert (=> b!1611106 m!1927905))

(assert (=> b!1610917 d!485044))

(declare-fun d!485056 () Bool)

(assert (=> d!485056 (= (head!3286 (originalCharacters!3905 (h!22962 (t!147936 tokens!457)))) (h!22961 (originalCharacters!3905 (h!22962 (t!147936 tokens!457)))))))

(assert (=> b!1610905 d!485056))

(declare-fun d!485058 () Bool)

(assert (=> d!485058 (= (isEmpty!10599 rules!1846) ((_ is Nil!17562) rules!1846))))

(assert (=> b!1610904 d!485058))

(declare-fun d!485060 () Bool)

(declare-fun lt!574450 () Bool)

(declare-fun e!1033221 () Bool)

(assert (=> d!485060 (= lt!574450 e!1033221)))

(declare-fun res!718271 () Bool)

(assert (=> d!485060 (=> (not res!718271) (not e!1033221))))

(assert (=> d!485060 (= res!718271 (= (list!6847 (_1!9928 (lex!1204 thiss!17113 rules!1846 (print!1251 thiss!17113 (singletonSeq!1460 (h!22962 tokens!457)))))) (list!6847 (singletonSeq!1460 (h!22962 tokens!457)))))))

(declare-fun e!1033220 () Bool)

(assert (=> d!485060 (= lt!574450 e!1033220)))

(declare-fun res!718270 () Bool)

(assert (=> d!485060 (=> (not res!718270) (not e!1033220))))

(declare-fun lt!574451 () tuple2!17052)

(assert (=> d!485060 (= res!718270 (= (size!14139 (_1!9928 lt!574451)) 1))))

(assert (=> d!485060 (= lt!574451 (lex!1204 thiss!17113 rules!1846 (print!1251 thiss!17113 (singletonSeq!1460 (h!22962 tokens!457)))))))

(assert (=> d!485060 (not (isEmpty!10599 rules!1846))))

(assert (=> d!485060 (= (rulesProduceIndividualToken!1372 thiss!17113 rules!1846 (h!22962 tokens!457)) lt!574450)))

(declare-fun b!1611116 () Bool)

(declare-fun res!718272 () Bool)

(assert (=> b!1611116 (=> (not res!718272) (not e!1033220))))

(assert (=> b!1611116 (= res!718272 (= (apply!4382 (_1!9928 lt!574451) 0) (h!22962 tokens!457)))))

(declare-fun b!1611117 () Bool)

(declare-fun isEmpty!10607 (BalanceConc!11604) Bool)

(assert (=> b!1611117 (= e!1033220 (isEmpty!10607 (_2!9928 lt!574451)))))

(declare-fun b!1611118 () Bool)

(assert (=> b!1611118 (= e!1033221 (isEmpty!10607 (_2!9928 (lex!1204 thiss!17113 rules!1846 (print!1251 thiss!17113 (singletonSeq!1460 (h!22962 tokens!457)))))))))

(assert (= (and d!485060 res!718270) b!1611116))

(assert (= (and b!1611116 res!718272) b!1611117))

(assert (= (and d!485060 res!718271) b!1611118))

(declare-fun m!1927933 () Bool)

(assert (=> d!485060 m!1927933))

(assert (=> d!485060 m!1927395))

(declare-fun m!1927935 () Bool)

(assert (=> d!485060 m!1927935))

(assert (=> d!485060 m!1927491))

(assert (=> d!485060 m!1927935))

(declare-fun m!1927937 () Bool)

(assert (=> d!485060 m!1927937))

(assert (=> d!485060 m!1927395))

(declare-fun m!1927939 () Bool)

(assert (=> d!485060 m!1927939))

(declare-fun m!1927941 () Bool)

(assert (=> d!485060 m!1927941))

(assert (=> d!485060 m!1927395))

(declare-fun m!1927943 () Bool)

(assert (=> b!1611116 m!1927943))

(declare-fun m!1927945 () Bool)

(assert (=> b!1611117 m!1927945))

(assert (=> b!1611118 m!1927395))

(assert (=> b!1611118 m!1927395))

(assert (=> b!1611118 m!1927935))

(assert (=> b!1611118 m!1927935))

(assert (=> b!1611118 m!1927937))

(declare-fun m!1927947 () Bool)

(assert (=> b!1611118 m!1927947))

(assert (=> b!1610915 d!485060))

(declare-fun d!485074 () Bool)

(assert (=> d!485074 (= (inv!22978 (tag!3367 (rule!4911 (h!22962 tokens!457)))) (= (mod (str.len (value!97765 (tag!3367 (rule!4911 (h!22962 tokens!457))))) 2) 0))))

(assert (=> b!1610914 d!485074))

(declare-fun d!485076 () Bool)

(declare-fun res!718281 () Bool)

(declare-fun e!1033230 () Bool)

(assert (=> d!485076 (=> (not res!718281) (not e!1033230))))

(declare-fun semiInverseModEq!1176 (Int Int) Bool)

(assert (=> d!485076 (= res!718281 (semiInverseModEq!1176 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (toValue!4514 (transformation!3091 (rule!4911 (h!22962 tokens!457))))))))

(assert (=> d!485076 (= (inv!22982 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) e!1033230)))

(declare-fun b!1611131 () Bool)

(declare-fun equivClasses!1117 (Int Int) Bool)

(assert (=> b!1611131 (= e!1033230 (equivClasses!1117 (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (toValue!4514 (transformation!3091 (rule!4911 (h!22962 tokens!457))))))))

(assert (= (and d!485076 res!718281) b!1611131))

(declare-fun m!1927949 () Bool)

(assert (=> d!485076 m!1927949))

(declare-fun m!1927951 () Bool)

(assert (=> b!1611131 m!1927951))

(assert (=> b!1610914 d!485076))

(declare-fun lt!574456 () Bool)

(declare-fun d!485078 () Bool)

(declare-fun isEmpty!10608 (List!17631) Bool)

(assert (=> d!485078 (= lt!574456 (isEmpty!10608 (list!6847 (_1!9928 (lex!1204 thiss!17113 rules!1846 (seqFromList!1931 lt!574187))))))))

(declare-fun isEmpty!10609 (Conc!5831) Bool)

(assert (=> d!485078 (= lt!574456 (isEmpty!10609 (c!262617 (_1!9928 (lex!1204 thiss!17113 rules!1846 (seqFromList!1931 lt!574187))))))))

(assert (=> d!485078 (= (isEmpty!10598 (_1!9928 (lex!1204 thiss!17113 rules!1846 (seqFromList!1931 lt!574187)))) lt!574456)))

(declare-fun bs!393850 () Bool)

(assert (= bs!393850 d!485078))

(assert (=> bs!393850 m!1927759))

(assert (=> bs!393850 m!1927759))

(declare-fun m!1927953 () Bool)

(assert (=> bs!393850 m!1927953))

(declare-fun m!1927955 () Bool)

(assert (=> bs!393850 m!1927955))

(assert (=> b!1610903 d!485078))

(declare-fun b!1611132 () Bool)

(declare-fun e!1033233 () Bool)

(declare-fun lt!574457 () tuple2!17052)

(assert (=> b!1611132 (= e!1033233 (not (isEmpty!10598 (_1!9928 lt!574457))))))

(declare-fun b!1611133 () Bool)

(declare-fun e!1033232 () Bool)

(assert (=> b!1611133 (= e!1033232 e!1033233)))

(declare-fun res!718283 () Bool)

(assert (=> b!1611133 (= res!718283 (< (size!14142 (_2!9928 lt!574457)) (size!14142 (seqFromList!1931 lt!574187))))))

(assert (=> b!1611133 (=> (not res!718283) (not e!1033233))))

(declare-fun b!1611134 () Bool)

(declare-fun res!718282 () Bool)

(declare-fun e!1033231 () Bool)

(assert (=> b!1611134 (=> (not res!718282) (not e!1033231))))

(assert (=> b!1611134 (= res!718282 (= (list!6847 (_1!9928 lt!574457)) (_1!9931 (lexList!805 thiss!17113 rules!1846 (list!6848 (seqFromList!1931 lt!574187))))))))

(declare-fun b!1611135 () Bool)

(assert (=> b!1611135 (= e!1033232 (= (_2!9928 lt!574457) (seqFromList!1931 lt!574187)))))

(declare-fun d!485080 () Bool)

(assert (=> d!485080 e!1033231))

(declare-fun res!718284 () Bool)

(assert (=> d!485080 (=> (not res!718284) (not e!1033231))))

(assert (=> d!485080 (= res!718284 e!1033232)))

(declare-fun c!262650 () Bool)

(assert (=> d!485080 (= c!262650 (> (size!14139 (_1!9928 lt!574457)) 0))))

(assert (=> d!485080 (= lt!574457 (lexTailRecV2!528 thiss!17113 rules!1846 (seqFromList!1931 lt!574187) (BalanceConc!11605 Empty!5830) (seqFromList!1931 lt!574187) (BalanceConc!11607 Empty!5831)))))

(assert (=> d!485080 (= (lex!1204 thiss!17113 rules!1846 (seqFromList!1931 lt!574187)) lt!574457)))

(declare-fun b!1611136 () Bool)

(assert (=> b!1611136 (= e!1033231 (= (list!6848 (_2!9928 lt!574457)) (_2!9931 (lexList!805 thiss!17113 rules!1846 (list!6848 (seqFromList!1931 lt!574187))))))))

(assert (= (and d!485080 c!262650) b!1611133))

(assert (= (and d!485080 (not c!262650)) b!1611135))

(assert (= (and b!1611133 res!718283) b!1611132))

(assert (= (and d!485080 res!718284) b!1611134))

(assert (= (and b!1611134 res!718282) b!1611136))

(declare-fun m!1927957 () Bool)

(assert (=> b!1611134 m!1927957))

(assert (=> b!1611134 m!1927485))

(declare-fun m!1927959 () Bool)

(assert (=> b!1611134 m!1927959))

(assert (=> b!1611134 m!1927959))

(declare-fun m!1927961 () Bool)

(assert (=> b!1611134 m!1927961))

(declare-fun m!1927963 () Bool)

(assert (=> b!1611136 m!1927963))

(assert (=> b!1611136 m!1927485))

(assert (=> b!1611136 m!1927959))

(assert (=> b!1611136 m!1927959))

(assert (=> b!1611136 m!1927961))

(declare-fun m!1927965 () Bool)

(assert (=> d!485080 m!1927965))

(assert (=> d!485080 m!1927485))

(assert (=> d!485080 m!1927485))

(declare-fun m!1927967 () Bool)

(assert (=> d!485080 m!1927967))

(declare-fun m!1927969 () Bool)

(assert (=> b!1611132 m!1927969))

(declare-fun m!1927971 () Bool)

(assert (=> b!1611133 m!1927971))

(assert (=> b!1611133 m!1927485))

(declare-fun m!1927973 () Bool)

(assert (=> b!1611133 m!1927973))

(assert (=> b!1610903 d!485080))

(declare-fun d!485082 () Bool)

(declare-fun fromListB!847 (List!17630) BalanceConc!11604)

(assert (=> d!485082 (= (seqFromList!1931 lt!574187) (fromListB!847 lt!574187))))

(declare-fun bs!393852 () Bool)

(assert (= bs!393852 d!485082))

(declare-fun m!1927995 () Bool)

(assert (=> bs!393852 m!1927995))

(assert (=> b!1610903 d!485082))

(declare-fun d!485088 () Bool)

(assert (=> d!485088 (= (inv!22978 (tag!3367 (h!22963 rules!1846))) (= (mod (str.len (value!97765 (tag!3367 (h!22963 rules!1846)))) 2) 0))))

(assert (=> b!1610902 d!485088))

(declare-fun d!485090 () Bool)

(declare-fun res!718288 () Bool)

(declare-fun e!1033237 () Bool)

(assert (=> d!485090 (=> (not res!718288) (not e!1033237))))

(assert (=> d!485090 (= res!718288 (semiInverseModEq!1176 (toChars!4373 (transformation!3091 (h!22963 rules!1846))) (toValue!4514 (transformation!3091 (h!22963 rules!1846)))))))

(assert (=> d!485090 (= (inv!22982 (transformation!3091 (h!22963 rules!1846))) e!1033237)))

(declare-fun b!1611142 () Bool)

(assert (=> b!1611142 (= e!1033237 (equivClasses!1117 (toChars!4373 (transformation!3091 (h!22963 rules!1846))) (toValue!4514 (transformation!3091 (h!22963 rules!1846)))))))

(assert (= (and d!485090 res!718288) b!1611142))

(declare-fun m!1927997 () Bool)

(assert (=> d!485090 m!1927997))

(declare-fun m!1927999 () Bool)

(assert (=> b!1611142 m!1927999))

(assert (=> b!1610902 d!485090))

(declare-fun b!1611164 () Bool)

(declare-fun e!1033250 () Bool)

(declare-fun e!1033252 () Bool)

(assert (=> b!1611164 (= e!1033250 e!1033252)))

(declare-fun c!262656 () Bool)

(assert (=> b!1611164 (= c!262656 ((_ is IntegerValue!9544) (value!97766 (h!22962 tokens!457))))))

(declare-fun b!1611165 () Bool)

(declare-fun inv!16 (TokenValue!3181) Bool)

(assert (=> b!1611165 (= e!1033250 (inv!16 (value!97766 (h!22962 tokens!457))))))

(declare-fun d!485092 () Bool)

(declare-fun c!262657 () Bool)

(assert (=> d!485092 (= c!262657 ((_ is IntegerValue!9543) (value!97766 (h!22962 tokens!457))))))

(assert (=> d!485092 (= (inv!21 (value!97766 (h!22962 tokens!457))) e!1033250)))

(declare-fun b!1611166 () Bool)

(declare-fun res!718297 () Bool)

(declare-fun e!1033251 () Bool)

(assert (=> b!1611166 (=> res!718297 e!1033251)))

(assert (=> b!1611166 (= res!718297 (not ((_ is IntegerValue!9545) (value!97766 (h!22962 tokens!457)))))))

(assert (=> b!1611166 (= e!1033252 e!1033251)))

(declare-fun b!1611167 () Bool)

(declare-fun inv!17 (TokenValue!3181) Bool)

(assert (=> b!1611167 (= e!1033252 (inv!17 (value!97766 (h!22962 tokens!457))))))

(declare-fun b!1611168 () Bool)

(declare-fun inv!15 (TokenValue!3181) Bool)

(assert (=> b!1611168 (= e!1033251 (inv!15 (value!97766 (h!22962 tokens!457))))))

(assert (= (and d!485092 c!262657) b!1611165))

(assert (= (and d!485092 (not c!262657)) b!1611164))

(assert (= (and b!1611164 c!262656) b!1611167))

(assert (= (and b!1611164 (not c!262656)) b!1611166))

(assert (= (and b!1611166 (not res!718297)) b!1611168))

(declare-fun m!1928013 () Bool)

(assert (=> b!1611165 m!1928013))

(declare-fun m!1928015 () Bool)

(assert (=> b!1611167 m!1928015))

(declare-fun m!1928017 () Bool)

(assert (=> b!1611168 m!1928017))

(assert (=> b!1610913 d!485092))

(declare-fun d!485096 () Bool)

(assert (=> d!485096 (= (separableTokensPredicate!662 thiss!17113 (h!22962 tokens!457) (h!22962 (t!147936 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!455 (rulesRegex!481 thiss!17113 rules!1846) (++!4614 (charsOf!1740 (h!22962 tokens!457)) (singletonSeq!1461 (apply!4380 (charsOf!1740 (h!22962 (t!147936 tokens!457))) 0))))))))

(declare-fun bs!393853 () Bool)

(assert (= bs!393853 d!485096))

(assert (=> bs!393853 m!1927429))

(assert (=> bs!393853 m!1927429))

(declare-fun m!1928059 () Bool)

(assert (=> bs!393853 m!1928059))

(declare-fun m!1928061 () Bool)

(assert (=> bs!393853 m!1928061))

(assert (=> bs!393853 m!1927431))

(assert (=> bs!393853 m!1927433))

(assert (=> bs!393853 m!1927439))

(assert (=> bs!393853 m!1927411))

(assert (=> bs!393853 m!1927433))

(assert (=> bs!393853 m!1928059))

(assert (=> bs!393853 m!1927439))

(assert (=> bs!393853 m!1927431))

(assert (=> bs!393853 m!1927411))

(assert (=> b!1610912 d!485096))

(declare-fun d!485118 () Bool)

(declare-fun lt!574469 () C!9012)

(assert (=> d!485118 (= lt!574469 (head!3286 (list!6848 lt!574182)))))

(declare-fun head!3291 (Conc!5830) C!9012)

(assert (=> d!485118 (= lt!574469 (head!3291 (c!262615 lt!574182)))))

(assert (=> d!485118 (not (isEmpty!10607 lt!574182))))

(assert (=> d!485118 (= (head!3287 lt!574182) lt!574469)))

(declare-fun bs!393858 () Bool)

(assert (= bs!393858 d!485118))

(assert (=> bs!393858 m!1927419))

(assert (=> bs!393858 m!1927419))

(declare-fun m!1928097 () Bool)

(assert (=> bs!393858 m!1928097))

(declare-fun m!1928099 () Bool)

(assert (=> bs!393858 m!1928099))

(declare-fun m!1928101 () Bool)

(assert (=> bs!393858 m!1928101))

(assert (=> b!1610922 d!485118))

(declare-fun d!485130 () Bool)

(assert (=> d!485130 (= (list!6847 (_1!9928 lt!574188)) (list!6852 (c!262617 (_1!9928 lt!574188))))))

(declare-fun bs!393859 () Bool)

(assert (= bs!393859 d!485130))

(declare-fun m!1928105 () Bool)

(assert (=> bs!393859 m!1928105))

(assert (=> b!1610901 d!485130))

(declare-fun d!485132 () Bool)

(declare-fun e!1033291 () Bool)

(assert (=> d!485132 e!1033291))

(declare-fun res!718324 () Bool)

(assert (=> d!485132 (=> (not res!718324) (not e!1033291))))

(assert (=> d!485132 (= res!718324 (= (list!6847 (_1!9928 (lex!1204 thiss!17113 rules!1846 (print!1251 thiss!17113 (seqFromList!1932 (t!147936 tokens!457)))))) (t!147936 tokens!457)))))

(declare-fun lt!574554 () Unit!28191)

(declare-fun e!1033290 () Unit!28191)

(assert (=> d!485132 (= lt!574554 e!1033290)))

(declare-fun c!262674 () Bool)

(assert (=> d!485132 (= c!262674 (or ((_ is Nil!17561) (t!147936 tokens!457)) ((_ is Nil!17561) (t!147936 (t!147936 tokens!457)))))))

(assert (=> d!485132 (not (isEmpty!10599 rules!1846))))

(assert (=> d!485132 (= (theoremInvertabilityWhenTokenListSeparable!165 thiss!17113 rules!1846 (t!147936 tokens!457)) lt!574554)))

(declare-fun b!1611227 () Bool)

(declare-fun Unit!28217 () Unit!28191)

(assert (=> b!1611227 (= e!1033290 Unit!28217)))

(declare-fun b!1611228 () Bool)

(declare-fun Unit!28218 () Unit!28191)

(assert (=> b!1611228 (= e!1033290 Unit!28218)))

(declare-fun lt!574551 () BalanceConc!11604)

(assert (=> b!1611228 (= lt!574551 (print!1251 thiss!17113 (seqFromList!1932 (t!147936 tokens!457))))))

(declare-fun lt!574547 () BalanceConc!11604)

(assert (=> b!1611228 (= lt!574547 (print!1251 thiss!17113 (seqFromList!1932 (t!147936 (t!147936 tokens!457)))))))

(declare-fun lt!574558 () tuple2!17052)

(assert (=> b!1611228 (= lt!574558 (lex!1204 thiss!17113 rules!1846 lt!574547))))

(declare-fun lt!574568 () List!17630)

(assert (=> b!1611228 (= lt!574568 (list!6848 (charsOf!1740 (h!22962 (t!147936 tokens!457)))))))

(declare-fun lt!574549 () List!17630)

(assert (=> b!1611228 (= lt!574549 (list!6848 lt!574547))))

(declare-fun lt!574566 () Unit!28191)

(assert (=> b!1611228 (= lt!574566 (lemmaConcatTwoListThenFirstIsPrefix!876 lt!574568 lt!574549))))

(assert (=> b!1611228 (isPrefix!1351 lt!574568 (++!4613 lt!574568 lt!574549))))

(declare-fun lt!574563 () Unit!28191)

(assert (=> b!1611228 (= lt!574563 lt!574566)))

(declare-fun lt!574572 () Unit!28191)

(assert (=> b!1611228 (= lt!574572 (theoremInvertabilityWhenTokenListSeparable!165 thiss!17113 rules!1846 (t!147936 (t!147936 tokens!457))))))

(declare-fun lt!574569 () Unit!28191)

(assert (=> b!1611228 (= lt!574569 (seqFromListBHdTlConstructive!168 (h!22962 (t!147936 (t!147936 tokens!457))) (t!147936 (t!147936 (t!147936 tokens!457))) (_1!9928 lt!574558)))))

(assert (=> b!1611228 (= (list!6847 (_1!9928 lt!574558)) (list!6847 (prepend!593 (seqFromList!1932 (t!147936 (t!147936 (t!147936 tokens!457)))) (h!22962 (t!147936 (t!147936 tokens!457))))))))

(declare-fun lt!574559 () Unit!28191)

(assert (=> b!1611228 (= lt!574559 lt!574569)))

(declare-fun lt!574564 () Option!3184)

(assert (=> b!1611228 (= lt!574564 (maxPrefix!1284 thiss!17113 rules!1846 (list!6848 lt!574551)))))

(assert (=> b!1611228 (= (print!1251 thiss!17113 (singletonSeq!1460 (h!22962 (t!147936 tokens!457)))) (printTailRec!773 thiss!17113 (singletonSeq!1460 (h!22962 (t!147936 tokens!457))) 0 (BalanceConc!11605 Empty!5830)))))

(declare-fun lt!574560 () Unit!28191)

(declare-fun Unit!28219 () Unit!28191)

(assert (=> b!1611228 (= lt!574560 Unit!28219)))

(declare-fun lt!574550 () Unit!28191)

(assert (=> b!1611228 (= lt!574550 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!294 thiss!17113 rules!1846 (list!6848 (charsOf!1740 (h!22962 (t!147936 tokens!457)))) (list!6848 lt!574547)))))

(assert (=> b!1611228 (= (list!6848 (charsOf!1740 (h!22962 (t!147936 tokens!457)))) (originalCharacters!3905 (h!22962 (t!147936 tokens!457))))))

(declare-fun lt!574552 () Unit!28191)

(declare-fun Unit!28220 () Unit!28191)

(assert (=> b!1611228 (= lt!574552 Unit!28220)))

(assert (=> b!1611228 (= (list!6848 (singletonSeq!1461 (apply!4380 (charsOf!1740 (h!22962 (t!147936 (t!147936 tokens!457)))) 0))) (Cons!17560 (head!3286 (originalCharacters!3905 (h!22962 (t!147936 (t!147936 tokens!457))))) Nil!17560))))

(declare-fun lt!574557 () Unit!28191)

(declare-fun Unit!28221 () Unit!28191)

(assert (=> b!1611228 (= lt!574557 Unit!28221)))

(assert (=> b!1611228 (= (list!6848 (singletonSeq!1461 (apply!4380 (charsOf!1740 (h!22962 (t!147936 (t!147936 tokens!457)))) 0))) (Cons!17560 (head!3286 (list!6848 lt!574547)) Nil!17560))))

(declare-fun lt!574561 () Unit!28191)

(declare-fun Unit!28222 () Unit!28191)

(assert (=> b!1611228 (= lt!574561 Unit!28222)))

(assert (=> b!1611228 (= (list!6848 (singletonSeq!1461 (apply!4380 (charsOf!1740 (h!22962 (t!147936 (t!147936 tokens!457)))) 0))) (Cons!17560 (head!3287 lt!574547) Nil!17560))))

(declare-fun lt!574562 () Unit!28191)

(declare-fun Unit!28223 () Unit!28191)

(assert (=> b!1611228 (= lt!574562 Unit!28223)))

(assert (=> b!1611228 (isDefined!2553 (maxPrefix!1284 thiss!17113 rules!1846 (originalCharacters!3905 (h!22962 (t!147936 tokens!457)))))))

(declare-fun lt!574555 () Unit!28191)

(declare-fun Unit!28224 () Unit!28191)

(assert (=> b!1611228 (= lt!574555 Unit!28224)))

(assert (=> b!1611228 (isDefined!2553 (maxPrefix!1284 thiss!17113 rules!1846 (list!6848 (charsOf!1740 (h!22962 (t!147936 tokens!457))))))))

(declare-fun lt!574556 () Unit!28191)

(declare-fun Unit!28225 () Unit!28191)

(assert (=> b!1611228 (= lt!574556 Unit!28225)))

(declare-fun lt!574565 () Unit!28191)

(declare-fun Unit!28226 () Unit!28191)

(assert (=> b!1611228 (= lt!574565 Unit!28226)))

(assert (=> b!1611228 (= (_1!9929 (get!5034 (maxPrefix!1284 thiss!17113 rules!1846 (list!6848 (charsOf!1740 (h!22962 (t!147936 tokens!457))))))) (h!22962 (t!147936 tokens!457)))))

(declare-fun lt!574567 () Unit!28191)

(declare-fun Unit!28227 () Unit!28191)

(assert (=> b!1611228 (= lt!574567 Unit!28227)))

(assert (=> b!1611228 (isEmpty!10602 (_2!9929 (get!5034 (maxPrefix!1284 thiss!17113 rules!1846 (list!6848 (charsOf!1740 (h!22962 (t!147936 tokens!457))))))))))

(declare-fun lt!574548 () Unit!28191)

(declare-fun Unit!28228 () Unit!28191)

(assert (=> b!1611228 (= lt!574548 Unit!28228)))

(assert (=> b!1611228 (matchR!1936 (regex!3091 (rule!4911 (h!22962 (t!147936 tokens!457)))) (list!6848 (charsOf!1740 (h!22962 (t!147936 tokens!457)))))))

(declare-fun lt!574553 () Unit!28191)

(declare-fun Unit!28229 () Unit!28191)

(assert (=> b!1611228 (= lt!574553 Unit!28229)))

(assert (=> b!1611228 (= (rule!4911 (h!22962 (t!147936 tokens!457))) (rule!4911 (h!22962 (t!147936 tokens!457))))))

(declare-fun lt!574571 () Unit!28191)

(declare-fun Unit!28230 () Unit!28191)

(assert (=> b!1611228 (= lt!574571 Unit!28230)))

(declare-fun lt!574570 () Unit!28191)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!86 (LexerInterface!2720 List!17632 Token!5748 Rule!5982 List!17630) Unit!28191)

(assert (=> b!1611228 (= lt!574570 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!86 thiss!17113 rules!1846 (h!22962 (t!147936 tokens!457)) (rule!4911 (h!22962 (t!147936 tokens!457))) (list!6848 lt!574547)))))

(declare-fun b!1611229 () Bool)

(assert (=> b!1611229 (= e!1033291 (isEmpty!10607 (_2!9928 (lex!1204 thiss!17113 rules!1846 (print!1251 thiss!17113 (seqFromList!1932 (t!147936 tokens!457)))))))))

(assert (= (and d!485132 c!262674) b!1611227))

(assert (= (and d!485132 (not c!262674)) b!1611228))

(assert (= (and d!485132 res!718324) b!1611229))

(assert (=> d!485132 m!1927491))

(assert (=> d!485132 m!1927413))

(assert (=> d!485132 m!1927413))

(declare-fun m!1928137 () Bool)

(assert (=> d!485132 m!1928137))

(assert (=> d!485132 m!1928137))

(declare-fun m!1928139 () Bool)

(assert (=> d!485132 m!1928139))

(declare-fun m!1928141 () Bool)

(assert (=> d!485132 m!1928141))

(declare-fun m!1928143 () Bool)

(assert (=> b!1611228 m!1928143))

(declare-fun m!1928145 () Bool)

(assert (=> b!1611228 m!1928145))

(declare-fun m!1928147 () Bool)

(assert (=> b!1611228 m!1928147))

(declare-fun m!1928149 () Bool)

(assert (=> b!1611228 m!1928149))

(declare-fun m!1928151 () Bool)

(assert (=> b!1611228 m!1928151))

(declare-fun m!1928153 () Bool)

(assert (=> b!1611228 m!1928153))

(declare-fun m!1928155 () Bool)

(assert (=> b!1611228 m!1928155))

(assert (=> b!1611228 m!1927439))

(assert (=> b!1611228 m!1927673))

(declare-fun m!1928157 () Bool)

(assert (=> b!1611228 m!1928157))

(declare-fun m!1928159 () Bool)

(assert (=> b!1611228 m!1928159))

(assert (=> b!1611228 m!1927445))

(declare-fun m!1928161 () Bool)

(assert (=> b!1611228 m!1928161))

(assert (=> b!1611228 m!1927445))

(declare-fun m!1928163 () Bool)

(assert (=> b!1611228 m!1928163))

(assert (=> b!1611228 m!1928151))

(declare-fun m!1928165 () Bool)

(assert (=> b!1611228 m!1928165))

(assert (=> b!1611228 m!1928157))

(declare-fun m!1928167 () Bool)

(assert (=> b!1611228 m!1928167))

(declare-fun m!1928169 () Bool)

(assert (=> b!1611228 m!1928169))

(declare-fun m!1928171 () Bool)

(assert (=> b!1611228 m!1928171))

(declare-fun m!1928173 () Bool)

(assert (=> b!1611228 m!1928173))

(assert (=> b!1611228 m!1928153))

(declare-fun m!1928175 () Bool)

(assert (=> b!1611228 m!1928175))

(assert (=> b!1611228 m!1928143))

(declare-fun m!1928177 () Bool)

(assert (=> b!1611228 m!1928177))

(declare-fun m!1928179 () Bool)

(assert (=> b!1611228 m!1928179))

(declare-fun m!1928181 () Bool)

(assert (=> b!1611228 m!1928181))

(assert (=> b!1611228 m!1928179))

(declare-fun m!1928183 () Bool)

(assert (=> b!1611228 m!1928183))

(assert (=> b!1611228 m!1927673))

(assert (=> b!1611228 m!1928153))

(declare-fun m!1928185 () Bool)

(assert (=> b!1611228 m!1928185))

(assert (=> b!1611228 m!1927439))

(declare-fun m!1928187 () Bool)

(assert (=> b!1611228 m!1928187))

(assert (=> b!1611228 m!1927673))

(assert (=> b!1611228 m!1928147))

(declare-fun m!1928189 () Bool)

(assert (=> b!1611228 m!1928189))

(assert (=> b!1611228 m!1927673))

(declare-fun m!1928191 () Bool)

(assert (=> b!1611228 m!1928191))

(assert (=> b!1611228 m!1928173))

(declare-fun m!1928193 () Bool)

(assert (=> b!1611228 m!1928193))

(declare-fun m!1928195 () Bool)

(assert (=> b!1611228 m!1928195))

(declare-fun m!1928197 () Bool)

(assert (=> b!1611228 m!1928197))

(assert (=> b!1611228 m!1928177))

(assert (=> b!1611228 m!1928195))

(assert (=> b!1611228 m!1928171))

(declare-fun m!1928199 () Bool)

(assert (=> b!1611228 m!1928199))

(declare-fun m!1928201 () Bool)

(assert (=> b!1611228 m!1928201))

(assert (=> b!1611228 m!1928199))

(declare-fun m!1928203 () Bool)

(assert (=> b!1611228 m!1928203))

(assert (=> b!1611228 m!1928147))

(declare-fun m!1928205 () Bool)

(assert (=> b!1611228 m!1928205))

(assert (=> b!1611228 m!1928147))

(assert (=> b!1611228 m!1927413))

(assert (=> b!1611228 m!1928179))

(declare-fun m!1928207 () Bool)

(assert (=> b!1611228 m!1928207))

(assert (=> b!1611228 m!1927413))

(assert (=> b!1611228 m!1928137))

(assert (=> b!1611229 m!1927413))

(assert (=> b!1611229 m!1927413))

(assert (=> b!1611229 m!1928137))

(assert (=> b!1611229 m!1928137))

(assert (=> b!1611229 m!1928139))

(declare-fun m!1928209 () Bool)

(assert (=> b!1611229 m!1928209))

(assert (=> b!1610901 d!485132))

(declare-fun b!1611241 () Bool)

(declare-fun e!1033298 () Bool)

(assert (=> b!1611241 (= e!1033298 (>= (size!14138 lt!574175) (size!14138 lt!574187)))))

(declare-fun b!1611240 () Bool)

(declare-fun e!1033299 () Bool)

(assert (=> b!1611240 (= e!1033299 (isPrefix!1351 (tail!2311 lt!574187) (tail!2311 lt!574175)))))

(declare-fun d!485148 () Bool)

(assert (=> d!485148 e!1033298))

(declare-fun res!718335 () Bool)

(assert (=> d!485148 (=> res!718335 e!1033298)))

(declare-fun lt!574575 () Bool)

(assert (=> d!485148 (= res!718335 (not lt!574575))))

(declare-fun e!1033300 () Bool)

(assert (=> d!485148 (= lt!574575 e!1033300)))

(declare-fun res!718334 () Bool)

(assert (=> d!485148 (=> res!718334 e!1033300)))

(assert (=> d!485148 (= res!718334 ((_ is Nil!17560) lt!574187))))

(assert (=> d!485148 (= (isPrefix!1351 lt!574187 lt!574175) lt!574575)))

(declare-fun b!1611239 () Bool)

(declare-fun res!718336 () Bool)

(assert (=> b!1611239 (=> (not res!718336) (not e!1033299))))

(assert (=> b!1611239 (= res!718336 (= (head!3286 lt!574187) (head!3286 lt!574175)))))

(declare-fun b!1611238 () Bool)

(assert (=> b!1611238 (= e!1033300 e!1033299)))

(declare-fun res!718333 () Bool)

(assert (=> b!1611238 (=> (not res!718333) (not e!1033299))))

(assert (=> b!1611238 (= res!718333 (not ((_ is Nil!17560) lt!574175)))))

(assert (= (and d!485148 (not res!718334)) b!1611238))

(assert (= (and b!1611238 res!718333) b!1611239))

(assert (= (and b!1611239 res!718336) b!1611240))

(assert (= (and d!485148 (not res!718335)) b!1611241))

(declare-fun m!1928211 () Bool)

(assert (=> b!1611241 m!1928211))

(assert (=> b!1611241 m!1927513))

(declare-fun m!1928213 () Bool)

(assert (=> b!1611240 m!1928213))

(declare-fun m!1928215 () Bool)

(assert (=> b!1611240 m!1928215))

(assert (=> b!1611240 m!1928213))

(assert (=> b!1611240 m!1928215))

(declare-fun m!1928217 () Bool)

(assert (=> b!1611240 m!1928217))

(declare-fun m!1928219 () Bool)

(assert (=> b!1611239 m!1928219))

(declare-fun m!1928221 () Bool)

(assert (=> b!1611239 m!1928221))

(assert (=> b!1610901 d!485148))

(declare-fun d!485150 () Bool)

(assert (=> d!485150 (isPrefix!1351 lt!574187 (++!4613 lt!574187 lt!574181))))

(declare-fun lt!574578 () Unit!28191)

(declare-fun choose!9702 (List!17630 List!17630) Unit!28191)

(assert (=> d!485150 (= lt!574578 (choose!9702 lt!574187 lt!574181))))

(assert (=> d!485150 (= (lemmaConcatTwoListThenFirstIsPrefix!876 lt!574187 lt!574181) lt!574578)))

(declare-fun bs!393865 () Bool)

(assert (= bs!393865 d!485150))

(assert (=> bs!393865 m!1927409))

(assert (=> bs!393865 m!1927409))

(declare-fun m!1928223 () Bool)

(assert (=> bs!393865 m!1928223))

(declare-fun m!1928225 () Bool)

(assert (=> bs!393865 m!1928225))

(assert (=> b!1610901 d!485150))

(declare-fun b!1611391 () Bool)

(declare-fun e!1033398 () Bool)

(assert (=> b!1611391 (= e!1033398 true)))

(declare-fun b!1611390 () Bool)

(declare-fun e!1033397 () Bool)

(assert (=> b!1611390 (= e!1033397 e!1033398)))

(declare-fun b!1611389 () Bool)

(declare-fun e!1033396 () Bool)

(assert (=> b!1611389 (= e!1033396 e!1033397)))

(declare-fun d!485152 () Bool)

(assert (=> d!485152 e!1033396))

(assert (= b!1611390 b!1611391))

(assert (= b!1611389 b!1611390))

(assert (= (and d!485152 ((_ is Cons!17562) rules!1846)) b!1611389))

(declare-fun order!10429 () Int)

(declare-fun order!10427 () Int)

(declare-fun lambda!67023 () Int)

(declare-fun dynLambda!7851 (Int Int) Int)

(declare-fun dynLambda!7852 (Int Int) Int)

(assert (=> b!1611391 (< (dynLambda!7851 order!10427 (toValue!4514 (transformation!3091 (h!22963 rules!1846)))) (dynLambda!7852 order!10429 lambda!67023))))

(declare-fun order!10431 () Int)

(declare-fun dynLambda!7853 (Int Int) Int)

(assert (=> b!1611391 (< (dynLambda!7853 order!10431 (toChars!4373 (transformation!3091 (h!22963 rules!1846)))) (dynLambda!7852 order!10429 lambda!67023))))

(assert (=> d!485152 true))

(declare-fun lt!574751 () Bool)

(declare-fun forall!4043 (List!17631 Int) Bool)

(assert (=> d!485152 (= lt!574751 (forall!4043 tokens!457 lambda!67023))))

(declare-fun e!1033388 () Bool)

(assert (=> d!485152 (= lt!574751 e!1033388)))

(declare-fun res!718401 () Bool)

(assert (=> d!485152 (=> res!718401 e!1033388)))

(assert (=> d!485152 (= res!718401 (not ((_ is Cons!17561) tokens!457)))))

(assert (=> d!485152 (not (isEmpty!10599 rules!1846))))

(assert (=> d!485152 (= (rulesProduceEachTokenIndividuallyList!922 thiss!17113 rules!1846 tokens!457) lt!574751)))

(declare-fun b!1611379 () Bool)

(declare-fun e!1033389 () Bool)

(assert (=> b!1611379 (= e!1033388 e!1033389)))

(declare-fun res!718402 () Bool)

(assert (=> b!1611379 (=> (not res!718402) (not e!1033389))))

(assert (=> b!1611379 (= res!718402 (rulesProduceIndividualToken!1372 thiss!17113 rules!1846 (h!22962 tokens!457)))))

(declare-fun b!1611380 () Bool)

(assert (=> b!1611380 (= e!1033389 (rulesProduceEachTokenIndividuallyList!922 thiss!17113 rules!1846 (t!147936 tokens!457)))))

(assert (= (and d!485152 (not res!718401)) b!1611379))

(assert (= (and b!1611379 res!718402) b!1611380))

(declare-fun m!1928497 () Bool)

(assert (=> d!485152 m!1928497))

(assert (=> d!485152 m!1927491))

(assert (=> b!1611379 m!1927459))

(declare-fun m!1928499 () Bool)

(assert (=> b!1611380 m!1928499))

(assert (=> b!1610900 d!485152))

(declare-fun d!485186 () Bool)

(declare-fun res!718405 () Bool)

(declare-fun e!1033401 () Bool)

(assert (=> d!485186 (=> (not res!718405) (not e!1033401))))

(declare-fun rulesValid!1104 (LexerInterface!2720 List!17632) Bool)

(assert (=> d!485186 (= res!718405 (rulesValid!1104 thiss!17113 rules!1846))))

(assert (=> d!485186 (= (rulesInvariant!2389 thiss!17113 rules!1846) e!1033401)))

(declare-fun b!1611396 () Bool)

(declare-datatypes ((List!17638 0))(
  ( (Nil!17568) (Cons!17568 (h!22969 String!20237) (t!147985 List!17638)) )
))
(declare-fun noDuplicateTag!1104 (LexerInterface!2720 List!17632 List!17638) Bool)

(assert (=> b!1611396 (= e!1033401 (noDuplicateTag!1104 thiss!17113 rules!1846 Nil!17568))))

(assert (= (and d!485186 res!718405) b!1611396))

(declare-fun m!1928501 () Bool)

(assert (=> d!485186 m!1928501))

(declare-fun m!1928503 () Bool)

(assert (=> b!1611396 m!1928503))

(assert (=> b!1610921 d!485186))

(declare-fun d!485188 () Bool)

(assert (=> d!485188 true))

(declare-fun lt!574754 () Bool)

(declare-fun lambda!67026 () Int)

(declare-fun forall!4044 (List!17632 Int) Bool)

(assert (=> d!485188 (= lt!574754 (forall!4044 rules!1846 lambda!67026))))

(declare-fun e!1033406 () Bool)

(assert (=> d!485188 (= lt!574754 e!1033406)))

(declare-fun res!718411 () Bool)

(assert (=> d!485188 (=> res!718411 e!1033406)))

(assert (=> d!485188 (= res!718411 (not ((_ is Cons!17562) rules!1846)))))

(assert (=> d!485188 (= (rulesValidInductive!938 thiss!17113 rules!1846) lt!574754)))

(declare-fun b!1611401 () Bool)

(declare-fun e!1033407 () Bool)

(assert (=> b!1611401 (= e!1033406 e!1033407)))

(declare-fun res!718410 () Bool)

(assert (=> b!1611401 (=> (not res!718410) (not e!1033407))))

(declare-fun ruleValid!721 (LexerInterface!2720 Rule!5982) Bool)

(assert (=> b!1611401 (= res!718410 (ruleValid!721 thiss!17113 (h!22963 rules!1846)))))

(declare-fun b!1611402 () Bool)

(assert (=> b!1611402 (= e!1033407 (rulesValidInductive!938 thiss!17113 (t!147937 rules!1846)))))

(assert (= (and d!485188 (not res!718411)) b!1611401))

(assert (= (and b!1611401 res!718410) b!1611402))

(declare-fun m!1928505 () Bool)

(assert (=> d!485188 m!1928505))

(declare-fun m!1928507 () Bool)

(assert (=> b!1611401 m!1928507))

(declare-fun m!1928509 () Bool)

(assert (=> b!1611402 m!1928509))

(assert (=> b!1610899 d!485188))

(declare-fun d!485190 () Bool)

(assert (=> d!485190 (= (seqFromList!1931 (originalCharacters!3905 (h!22962 tokens!457))) (fromListB!847 (originalCharacters!3905 (h!22962 tokens!457))))))

(declare-fun bs!393873 () Bool)

(assert (= bs!393873 d!485190))

(declare-fun m!1928511 () Bool)

(assert (=> bs!393873 m!1928511))

(assert (=> b!1610899 d!485190))

(declare-fun b!1611417 () Bool)

(declare-fun e!1033410 () Bool)

(declare-fun tp!469952 () Bool)

(assert (=> b!1611417 (= e!1033410 tp!469952)))

(declare-fun b!1611416 () Bool)

(declare-fun tp!469953 () Bool)

(declare-fun tp!469955 () Bool)

(assert (=> b!1611416 (= e!1033410 (and tp!469953 tp!469955))))

(declare-fun b!1611415 () Bool)

(declare-fun tp_is_empty!7233 () Bool)

(assert (=> b!1611415 (= e!1033410 tp_is_empty!7233)))

(assert (=> b!1610914 (= tp!469874 e!1033410)))

(declare-fun b!1611418 () Bool)

(declare-fun tp!469954 () Bool)

(declare-fun tp!469951 () Bool)

(assert (=> b!1611418 (= e!1033410 (and tp!469954 tp!469951))))

(assert (= (and b!1610914 ((_ is ElementMatch!4419) (regex!3091 (rule!4911 (h!22962 tokens!457))))) b!1611415))

(assert (= (and b!1610914 ((_ is Concat!7601) (regex!3091 (rule!4911 (h!22962 tokens!457))))) b!1611416))

(assert (= (and b!1610914 ((_ is Star!4419) (regex!3091 (rule!4911 (h!22962 tokens!457))))) b!1611417))

(assert (= (and b!1610914 ((_ is Union!4419) (regex!3091 (rule!4911 (h!22962 tokens!457))))) b!1611418))

(declare-fun b!1611421 () Bool)

(declare-fun e!1033411 () Bool)

(declare-fun tp!469957 () Bool)

(assert (=> b!1611421 (= e!1033411 tp!469957)))

(declare-fun b!1611420 () Bool)

(declare-fun tp!469958 () Bool)

(declare-fun tp!469960 () Bool)

(assert (=> b!1611420 (= e!1033411 (and tp!469958 tp!469960))))

(declare-fun b!1611419 () Bool)

(assert (=> b!1611419 (= e!1033411 tp_is_empty!7233)))

(assert (=> b!1610902 (= tp!469877 e!1033411)))

(declare-fun b!1611422 () Bool)

(declare-fun tp!469959 () Bool)

(declare-fun tp!469956 () Bool)

(assert (=> b!1611422 (= e!1033411 (and tp!469959 tp!469956))))

(assert (= (and b!1610902 ((_ is ElementMatch!4419) (regex!3091 (h!22963 rules!1846)))) b!1611419))

(assert (= (and b!1610902 ((_ is Concat!7601) (regex!3091 (h!22963 rules!1846)))) b!1611420))

(assert (= (and b!1610902 ((_ is Star!4419) (regex!3091 (h!22963 rules!1846)))) b!1611421))

(assert (= (and b!1610902 ((_ is Union!4419) (regex!3091 (h!22963 rules!1846)))) b!1611422))

(declare-fun b!1611436 () Bool)

(declare-fun b_free!43271 () Bool)

(declare-fun b_next!43975 () Bool)

(assert (=> b!1611436 (= b_free!43271 (not b_next!43975))))

(declare-fun tp!469971 () Bool)

(declare-fun b_and!114229 () Bool)

(assert (=> b!1611436 (= tp!469971 b_and!114229)))

(declare-fun b_free!43273 () Bool)

(declare-fun b_next!43977 () Bool)

(assert (=> b!1611436 (= b_free!43273 (not b_next!43977))))

(declare-fun t!147973 () Bool)

(declare-fun tb!92687 () Bool)

(assert (=> (and b!1611436 (= (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457)))))) t!147973) tb!92687))

(declare-fun result!111674 () Bool)

(assert (= result!111674 result!111634))

(assert (=> d!485000 t!147973))

(declare-fun t!147975 () Bool)

(declare-fun tb!92689 () Bool)

(assert (=> (and b!1611436 (= (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457))))) t!147975) tb!92689))

(declare-fun result!111676 () Bool)

(assert (= result!111676 result!111640))

(assert (=> b!1611050 t!147975))

(assert (=> d!485026 t!147975))

(declare-fun b_and!114231 () Bool)

(declare-fun tp!469975 () Bool)

(assert (=> b!1611436 (= tp!469975 (and (=> t!147973 result!111674) (=> t!147975 result!111676) b_and!114231))))

(declare-fun e!1033424 () Bool)

(assert (=> b!1610897 (= tp!469880 e!1033424)))

(declare-fun e!1033425 () Bool)

(declare-fun b!1611434 () Bool)

(declare-fun tp!469974 () Bool)

(declare-fun e!1033428 () Bool)

(assert (=> b!1611434 (= e!1033428 (and (inv!21 (value!97766 (h!22962 (t!147936 tokens!457)))) e!1033425 tp!469974))))

(declare-fun tp!469972 () Bool)

(declare-fun b!1611433 () Bool)

(assert (=> b!1611433 (= e!1033424 (and (inv!22981 (h!22962 (t!147936 tokens!457))) e!1033428 tp!469972))))

(declare-fun e!1033426 () Bool)

(declare-fun tp!469973 () Bool)

(declare-fun b!1611435 () Bool)

(assert (=> b!1611435 (= e!1033425 (and tp!469973 (inv!22978 (tag!3367 (rule!4911 (h!22962 (t!147936 tokens!457))))) (inv!22982 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))) e!1033426))))

(assert (=> b!1611436 (= e!1033426 (and tp!469971 tp!469975))))

(assert (= b!1611435 b!1611436))

(assert (= b!1611434 b!1611435))

(assert (= b!1611433 b!1611434))

(assert (= (and b!1610897 ((_ is Cons!17561) (t!147936 tokens!457))) b!1611433))

(declare-fun m!1928513 () Bool)

(assert (=> b!1611434 m!1928513))

(declare-fun m!1928515 () Bool)

(assert (=> b!1611433 m!1928515))

(declare-fun m!1928517 () Bool)

(assert (=> b!1611435 m!1928517))

(declare-fun m!1928519 () Bool)

(assert (=> b!1611435 m!1928519))

(declare-fun b!1611441 () Bool)

(declare-fun e!1033432 () Bool)

(declare-fun tp!469978 () Bool)

(assert (=> b!1611441 (= e!1033432 (and tp_is_empty!7233 tp!469978))))

(assert (=> b!1610913 (= tp!469876 e!1033432)))

(assert (= (and b!1610913 ((_ is Cons!17560) (originalCharacters!3905 (h!22962 tokens!457)))) b!1611441))

(declare-fun b!1611452 () Bool)

(declare-fun b_free!43275 () Bool)

(declare-fun b_next!43979 () Bool)

(assert (=> b!1611452 (= b_free!43275 (not b_next!43979))))

(declare-fun tp!469988 () Bool)

(declare-fun b_and!114233 () Bool)

(assert (=> b!1611452 (= tp!469988 b_and!114233)))

(declare-fun b_free!43277 () Bool)

(declare-fun b_next!43981 () Bool)

(assert (=> b!1611452 (= b_free!43277 (not b_next!43981))))

(declare-fun tb!92691 () Bool)

(declare-fun t!147977 () Bool)

(assert (=> (and b!1611452 (= (toChars!4373 (transformation!3091 (h!22963 (t!147937 rules!1846)))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457)))))) t!147977) tb!92691))

(declare-fun result!111682 () Bool)

(assert (= result!111682 result!111634))

(assert (=> d!485000 t!147977))

(declare-fun tb!92693 () Bool)

(declare-fun t!147979 () Bool)

(assert (=> (and b!1611452 (= (toChars!4373 (transformation!3091 (h!22963 (t!147937 rules!1846)))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457))))) t!147979) tb!92693))

(declare-fun result!111684 () Bool)

(assert (= result!111684 result!111640))

(assert (=> b!1611050 t!147979))

(assert (=> d!485026 t!147979))

(declare-fun tp!469989 () Bool)

(declare-fun b_and!114235 () Bool)

(assert (=> b!1611452 (= tp!469989 (and (=> t!147977 result!111682) (=> t!147979 result!111684) b_and!114235))))

(declare-fun e!1033444 () Bool)

(assert (=> b!1611452 (= e!1033444 (and tp!469988 tp!469989))))

(declare-fun b!1611451 () Bool)

(declare-fun e!1033442 () Bool)

(declare-fun tp!469990 () Bool)

(assert (=> b!1611451 (= e!1033442 (and tp!469990 (inv!22978 (tag!3367 (h!22963 (t!147937 rules!1846)))) (inv!22982 (transformation!3091 (h!22963 (t!147937 rules!1846)))) e!1033444))))

(declare-fun b!1611450 () Bool)

(declare-fun e!1033441 () Bool)

(declare-fun tp!469987 () Bool)

(assert (=> b!1611450 (= e!1033441 (and e!1033442 tp!469987))))

(assert (=> b!1610910 (= tp!469875 e!1033441)))

(assert (= b!1611451 b!1611452))

(assert (= b!1611450 b!1611451))

(assert (= (and b!1610910 ((_ is Cons!17562) (t!147937 rules!1846))) b!1611450))

(declare-fun m!1928521 () Bool)

(assert (=> b!1611451 m!1928521))

(declare-fun m!1928523 () Bool)

(assert (=> b!1611451 m!1928523))

(declare-fun b_lambda!50863 () Bool)

(assert (= b_lambda!50849 (or (and b!1610911 b_free!43257 (= (toChars!4373 (transformation!3091 (h!22963 rules!1846))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))))) (and b!1610920 b_free!43261) (and b!1611436 b_free!43273 (= (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))))) (and b!1611452 b_free!43277 (= (toChars!4373 (transformation!3091 (h!22963 (t!147937 rules!1846)))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))))) b_lambda!50863)))

(declare-fun b_lambda!50865 () Bool)

(assert (= b_lambda!50845 (or (and b!1610911 b_free!43257 (= (toChars!4373 (transformation!3091 (h!22963 rules!1846))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))))) (and b!1610920 b_free!43261 (= (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))))) (and b!1611436 b_free!43273) (and b!1611452 b_free!43277 (= (toChars!4373 (transformation!3091 (h!22963 (t!147937 rules!1846)))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))))) b_lambda!50865)))

(declare-fun b_lambda!50867 () Bool)

(assert (= b_lambda!50847 (or (and b!1610911 b_free!43257 (= (toChars!4373 (transformation!3091 (h!22963 rules!1846))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))))) (and b!1610920 b_free!43261) (and b!1611436 b_free!43273 (= (toChars!4373 (transformation!3091 (rule!4911 (h!22962 (t!147936 tokens!457))))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))))) (and b!1611452 b_free!43277 (= (toChars!4373 (transformation!3091 (h!22963 (t!147937 rules!1846)))) (toChars!4373 (transformation!3091 (rule!4911 (h!22962 tokens!457)))))) b_lambda!50867)))

(check-sat (not d!485030) (not b!1610978) (not d!484986) (not b!1611229) (not d!485002) (not b!1611418) (not b!1611402) (not d!485132) (not d!484976) (not b!1611043) (not b!1611017) b_and!114205 (not b!1611450) (not d!485090) (not b_next!43975) (not b!1610958) (not d!484978) (not tb!92663) (not d!485080) (not b!1611433) (not d!485042) (not b!1611396) (not b!1610956) (not d!485152) (not b!1610939) (not b!1611417) (not d!485040) (not b_lambda!50863) (not d!485014) (not b!1611026) (not tb!92667) (not d!485022) (not b!1611063) (not b!1611118) (not b!1611168) tp_is_empty!7233 (not b!1611106) (not d!485008) (not d!485024) (not b!1611132) (not b!1611044) (not d!485082) (not d!485032) (not b!1611389) (not d!485118) (not b!1611028) (not d!484974) (not d!485096) b_and!114231 (not d!485034) (not d!485060) (not b!1610994) (not b!1610983) (not b!1611165) (not b_next!43963) (not b!1610938) b_and!114229 (not b!1610927) (not b!1611239) (not d!485000) (not b!1610981) (not b!1611241) (not b!1611379) (not b_next!43961) (not d!485010) (not b!1610928) (not b!1611451) (not b!1611421) (not d!485038) (not b_next!43979) b_and!114207 (not b!1611134) (not d!484990) (not b!1610977) (not b!1611422) (not b!1611052) (not b!1611042) (not d!484984) (not b!1611064) (not d!485190) b_and!114189 (not d!485036) b_and!114193 (not b!1611380) (not b!1611434) (not b!1610984) (not b!1611441) (not b!1611065) (not d!484994) (not d!485026) (not b_next!43965) (not b!1611029) (not b!1611435) (not d!484972) (not b!1611050) (not b!1611136) (not b!1611069) (not d!485020) (not d!485004) b_and!114233 (not b!1610980) (not b_next!43981) (not b!1611401) (not b!1611067) (not d!485012) (not d!485078) (not b!1610990) b_and!114235 (not b!1610997) (not b!1611131) (not b!1611420) (not b!1611228) (not b!1611051) (not b!1611027) (not b_lambda!50867) (not d!485028) (not b_lambda!50865) (not b!1611142) (not d!485188) (not b!1611116) (not d!485016) (not b_next!43977) (not b_next!43959) (not b!1611105) (not b!1610979) (not b!1611074) (not b!1611070) (not d!485130) (not b!1611117) (not b!1611167) (not d!484992) (not b!1611416) (not d!485186) (not b!1611010) (not d!484998) (not b!1611133) (not d!484996) (not b!1610985) (not bm!104770) (not d!485018) (not b!1611240) (not d!485076) (not d!485150))
(check-sat b_and!114205 (not b_next!43975) b_and!114231 (not b_next!43961) (not b_next!43965) b_and!114233 (not b_next!43981) b_and!114235 (not b_next!43963) b_and!114229 (not b_next!43979) b_and!114207 b_and!114193 b_and!114189 (not b_next!43977) (not b_next!43959))
