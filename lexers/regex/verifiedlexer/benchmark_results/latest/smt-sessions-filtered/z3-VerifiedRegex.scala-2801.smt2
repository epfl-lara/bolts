; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155750 () Bool)

(assert start!155750)

(declare-fun b!1633644 () Bool)

(declare-fun b_free!44135 () Bool)

(declare-fun b_next!44839 () Bool)

(assert (=> b!1633644 (= b_free!44135 (not b_next!44839))))

(declare-fun tp!474015 () Bool)

(declare-fun b_and!115829 () Bool)

(assert (=> b!1633644 (= tp!474015 b_and!115829)))

(declare-fun b_free!44137 () Bool)

(declare-fun b_next!44841 () Bool)

(assert (=> b!1633644 (= b_free!44137 (not b_next!44841))))

(declare-fun tp!474014 () Bool)

(declare-fun b_and!115831 () Bool)

(assert (=> b!1633644 (= tp!474014 b_and!115831)))

(declare-fun b!1633640 () Bool)

(declare-fun b_free!44139 () Bool)

(declare-fun b_next!44843 () Bool)

(assert (=> b!1633640 (= b_free!44139 (not b_next!44843))))

(declare-fun tp!474020 () Bool)

(declare-fun b_and!115833 () Bool)

(assert (=> b!1633640 (= tp!474020 b_and!115833)))

(declare-fun b_free!44141 () Bool)

(declare-fun b_next!44845 () Bool)

(assert (=> b!1633640 (= b_free!44141 (not b_next!44845))))

(declare-fun tp!474018 () Bool)

(declare-fun b_and!115835 () Bool)

(assert (=> b!1633640 (= tp!474018 b_and!115835)))

(declare-fun e!1047676 () Bool)

(declare-datatypes ((List!18019 0))(
  ( (Nil!17949) (Cons!17949 (h!23350 (_ BitVec 16)) (t!149602 List!18019)) )
))
(declare-datatypes ((TokenValue!3253 0))(
  ( (FloatLiteralValue!6506 (text!23216 List!18019)) (TokenValueExt!3252 (__x!11808 Int)) (Broken!16265 (value!99792 List!18019)) (Object!3322) (End!3253) (Def!3253) (Underscore!3253) (Match!3253) (Else!3253) (Error!3253) (Case!3253) (If!3253) (Extends!3253) (Abstract!3253) (Class!3253) (Val!3253) (DelimiterValue!6506 (del!3313 List!18019)) (KeywordValue!3259 (value!99793 List!18019)) (CommentValue!6506 (value!99794 List!18019)) (WhitespaceValue!6506 (value!99795 List!18019)) (IndentationValue!3253 (value!99796 List!18019)) (String!20596) (Int32!3253) (Broken!16266 (value!99797 List!18019)) (Boolean!3254) (Unit!29277) (OperatorValue!3256 (op!3313 List!18019)) (IdentifierValue!6506 (value!99798 List!18019)) (IdentifierValue!6507 (value!99799 List!18019)) (WhitespaceValue!6507 (value!99800 List!18019)) (True!6506) (False!6506) (Broken!16267 (value!99801 List!18019)) (Broken!16268 (value!99802 List!18019)) (True!6507) (RightBrace!3253) (RightBracket!3253) (Colon!3253) (Null!3253) (Comma!3253) (LeftBracket!3253) (False!6507) (LeftBrace!3253) (ImaginaryLiteralValue!3253 (text!23217 List!18019)) (StringLiteralValue!9759 (value!99803 List!18019)) (EOFValue!3253 (value!99804 List!18019)) (IdentValue!3253 (value!99805 List!18019)) (DelimiterValue!6507 (value!99806 List!18019)) (DedentValue!3253 (value!99807 List!18019)) (NewLineValue!3253 (value!99808 List!18019)) (IntegerValue!9759 (value!99809 (_ BitVec 32)) (text!23218 List!18019)) (IntegerValue!9760 (value!99810 Int) (text!23219 List!18019)) (Times!3253) (Or!3253) (Equal!3253) (Minus!3253) (Broken!16269 (value!99811 List!18019)) (And!3253) (Div!3253) (LessEqual!3253) (Mod!3253) (Concat!7744) (Not!3253) (Plus!3253) (SpaceValue!3253 (value!99812 List!18019)) (IntegerValue!9761 (value!99813 Int) (text!23220 List!18019)) (StringLiteralValue!9760 (text!23221 List!18019)) (FloatLiteralValue!6507 (text!23222 List!18019)) (BytesLiteralValue!3253 (value!99814 List!18019)) (CommentValue!6507 (value!99815 List!18019)) (StringLiteralValue!9761 (value!99816 List!18019)) (ErrorTokenValue!3253 (msg!3314 List!18019)) )
))
(declare-datatypes ((C!9156 0))(
  ( (C!9157 (val!5174 Int)) )
))
(declare-datatypes ((Regex!4491 0))(
  ( (ElementMatch!4491 (c!265859 C!9156)) (Concat!7745 (regOne!9494 Regex!4491) (regTwo!9494 Regex!4491)) (EmptyExpr!4491) (Star!4491 (reg!4820 Regex!4491)) (EmptyLang!4491) (Union!4491 (regOne!9495 Regex!4491) (regTwo!9495 Regex!4491)) )
))
(declare-datatypes ((String!20597 0))(
  ( (String!20598 (value!99817 String)) )
))
(declare-datatypes ((List!18020 0))(
  ( (Nil!17950) (Cons!17950 (h!23351 C!9156) (t!149603 List!18020)) )
))
(declare-datatypes ((IArray!11953 0))(
  ( (IArray!11954 (innerList!6034 List!18020)) )
))
(declare-datatypes ((Conc!5974 0))(
  ( (Node!5974 (left!14409 Conc!5974) (right!14739 Conc!5974) (csize!12178 Int) (cheight!6185 Int)) (Leaf!8776 (xs!8810 IArray!11953) (csize!12179 Int)) (Empty!5974) )
))
(declare-datatypes ((BalanceConc!11892 0))(
  ( (BalanceConc!11893 (c!265860 Conc!5974)) )
))
(declare-datatypes ((TokenValueInjection!6166 0))(
  ( (TokenValueInjection!6167 (toValue!4594 Int) (toChars!4453 Int)) )
))
(declare-datatypes ((Rule!6126 0))(
  ( (Rule!6127 (regex!3163 Regex!4491) (tag!3443 String!20597) (isSeparator!3163 Bool) (transformation!3163 TokenValueInjection!6166)) )
))
(declare-datatypes ((Token!5892 0))(
  ( (Token!5893 (value!99818 TokenValue!3253) (rule!5001 Rule!6126) (size!14330 Int) (originalCharacters!3977 List!18020)) )
))
(declare-datatypes ((List!18021 0))(
  ( (Nil!17951) (Cons!17951 (h!23352 Token!5892) (t!149604 List!18021)) )
))
(declare-fun tokens!457 () List!18021)

(declare-fun b!1633613 () Bool)

(declare-fun e!1047674 () Bool)

(declare-fun tp!474022 () Bool)

(declare-fun inv!23310 (String!20597) Bool)

(declare-fun inv!23313 (TokenValueInjection!6166) Bool)

(assert (=> b!1633613 (= e!1047676 (and tp!474022 (inv!23310 (tag!3443 (rule!5001 (h!23352 tokens!457)))) (inv!23313 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) e!1047674))))

(declare-fun e!1047686 () Bool)

(declare-fun e!1047671 () Bool)

(declare-fun b!1633614 () Bool)

(declare-datatypes ((List!18022 0))(
  ( (Nil!17952) (Cons!17952 (h!23353 Rule!6126) (t!149605 List!18022)) )
))
(declare-fun rules!1846 () List!18022)

(declare-fun tp!474021 () Bool)

(assert (=> b!1633614 (= e!1047671 (and tp!474021 (inv!23310 (tag!3443 (h!23353 rules!1846))) (inv!23313 (transformation!3163 (h!23353 rules!1846))) e!1047686))))

(declare-fun b!1633615 () Bool)

(declare-fun res!731176 () Bool)

(declare-fun e!1047664 () Bool)

(assert (=> b!1633615 (=> (not res!731176) (not e!1047664))))

(declare-fun lt!595024 () List!18020)

(declare-fun head!3502 (List!18020) C!9156)

(assert (=> b!1633615 (= res!731176 (= lt!595024 (Cons!17950 (head!3502 (originalCharacters!3977 (h!23352 (t!149604 tokens!457)))) Nil!17950)))))

(declare-fun b!1633616 () Bool)

(declare-fun res!731182 () Bool)

(declare-fun e!1047666 () Bool)

(assert (=> b!1633616 (=> res!731182 e!1047666)))

(declare-fun lt!595019 () Regex!4491)

(declare-fun lt!595017 () List!18020)

(declare-fun lt!595039 () List!18020)

(declare-fun prefixMatch!426 (Regex!4491 List!18020) Bool)

(declare-fun ++!4799 (List!18020 List!18020) List!18020)

(assert (=> b!1633616 (= res!731182 (prefixMatch!426 lt!595019 (++!4799 lt!595017 lt!595039)))))

(declare-fun b!1633617 () Bool)

(declare-fun e!1047683 () Bool)

(declare-fun e!1047685 () Bool)

(declare-fun tp!474019 () Bool)

(declare-fun inv!23314 (Token!5892) Bool)

(assert (=> b!1633617 (= e!1047683 (and (inv!23314 (h!23352 tokens!457)) e!1047685 tp!474019))))

(declare-fun b!1633618 () Bool)

(declare-fun res!731170 () Bool)

(declare-fun e!1047675 () Bool)

(assert (=> b!1633618 (=> (not res!731170) (not e!1047675))))

(get-info :version)

(assert (=> b!1633618 (= res!731170 (and (not ((_ is Nil!17951) tokens!457)) (not ((_ is Nil!17951) (t!149604 tokens!457)))))))

(declare-fun b!1633619 () Bool)

(declare-fun res!731166 () Bool)

(declare-fun e!1047672 () Bool)

(assert (=> b!1633619 (=> res!731166 e!1047672)))

(declare-datatypes ((LexerInterface!2792 0))(
  ( (LexerInterfaceExt!2789 (__x!11809 Int)) (Lexer!2790) )
))
(declare-fun thiss!17113 () LexerInterface!2792)

(declare-datatypes ((IArray!11955 0))(
  ( (IArray!11956 (innerList!6035 List!18021)) )
))
(declare-datatypes ((Conc!5975 0))(
  ( (Node!5975 (left!14410 Conc!5975) (right!14740 Conc!5975) (csize!12180 Int) (cheight!6186 Int)) (Leaf!8777 (xs!8811 IArray!11955) (csize!12181 Int)) (Empty!5975) )
))
(declare-datatypes ((BalanceConc!11894 0))(
  ( (BalanceConc!11895 (c!265861 Conc!5975)) )
))
(declare-fun isEmpty!10981 (BalanceConc!11894) Bool)

(declare-datatypes ((tuple2!17562 0))(
  ( (tuple2!17563 (_1!10183 BalanceConc!11894) (_2!10183 BalanceConc!11892)) )
))
(declare-fun lex!1276 (LexerInterface!2792 List!18022 BalanceConc!11892) tuple2!17562)

(declare-fun seqFromList!2075 (List!18020) BalanceConc!11892)

(assert (=> b!1633619 (= res!731166 (isEmpty!10981 (_1!10183 (lex!1276 thiss!17113 rules!1846 (seqFromList!2075 lt!595017)))))))

(declare-fun b!1633620 () Bool)

(declare-fun e!1047669 () Bool)

(declare-fun tp!474017 () Bool)

(assert (=> b!1633620 (= e!1047669 (and e!1047671 tp!474017))))

(declare-fun b!1633621 () Bool)

(declare-fun res!731181 () Bool)

(assert (=> b!1633621 (=> (not res!731181) (not e!1047675))))

(declare-fun rulesProduceEachTokenIndividuallyList!994 (LexerInterface!2792 List!18022 List!18021) Bool)

(assert (=> b!1633621 (= res!731181 (rulesProduceEachTokenIndividuallyList!994 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1633622 () Bool)

(declare-fun e!1047668 () Bool)

(assert (=> b!1633622 (= e!1047668 e!1047666)))

(declare-fun res!731177 () Bool)

(assert (=> b!1633622 (=> res!731177 e!1047666)))

(assert (=> b!1633622 (= res!731177 (prefixMatch!426 lt!595019 (++!4799 (originalCharacters!3977 (h!23352 tokens!457)) lt!595039)))))

(declare-fun e!1047681 () Bool)

(assert (=> b!1633622 e!1047681))

(declare-fun res!731171 () Bool)

(assert (=> b!1633622 (=> (not res!731171) (not e!1047681))))

(declare-datatypes ((tuple2!17564 0))(
  ( (tuple2!17565 (_1!10184 Token!5892) (_2!10184 List!18020)) )
))
(declare-fun lt!595044 () tuple2!17564)

(assert (=> b!1633622 (= res!731171 (= (_1!10184 lt!595044) (h!23352 tokens!457)))))

(declare-datatypes ((Option!3359 0))(
  ( (None!3358) (Some!3358 (v!24429 tuple2!17564)) )
))
(declare-fun lt!595036 () Option!3359)

(declare-fun get!5193 (Option!3359) tuple2!17564)

(assert (=> b!1633622 (= lt!595044 (get!5193 lt!595036))))

(declare-fun isDefined!2726 (Option!3359) Bool)

(assert (=> b!1633622 (isDefined!2726 lt!595036)))

(declare-fun maxPrefix!1356 (LexerInterface!2792 List!18022 List!18020) Option!3359)

(assert (=> b!1633622 (= lt!595036 (maxPrefix!1356 thiss!17113 rules!1846 lt!595017))))

(assert (=> b!1633622 (isDefined!2726 (maxPrefix!1356 thiss!17113 rules!1846 (originalCharacters!3977 (h!23352 tokens!457))))))

(declare-fun b!1633623 () Bool)

(declare-fun matchR!1990 (Regex!4491 List!18020) Bool)

(assert (=> b!1633623 (= e!1047681 (matchR!1990 (regex!3163 (rule!5001 (h!23352 tokens!457))) lt!595017))))

(declare-fun b!1633624 () Bool)

(declare-fun e!1047665 () Bool)

(assert (=> b!1633624 (= e!1047665 e!1047672)))

(declare-fun res!731168 () Bool)

(assert (=> b!1633624 (=> res!731168 e!1047672)))

(declare-fun lt!595032 () List!18020)

(declare-fun lt!595025 () List!18020)

(assert (=> b!1633624 (= res!731168 (or (not (= lt!595025 lt!595032)) (not (= lt!595032 lt!595017)) (not (= lt!595025 lt!595017))))))

(declare-fun printList!907 (LexerInterface!2792 List!18021) List!18020)

(assert (=> b!1633624 (= lt!595032 (printList!907 thiss!17113 (Cons!17951 (h!23352 tokens!457) Nil!17951)))))

(declare-fun lt!595042 () BalanceConc!11892)

(declare-fun list!7067 (BalanceConc!11892) List!18020)

(assert (=> b!1633624 (= lt!595025 (list!7067 lt!595042))))

(declare-fun lt!595031 () BalanceConc!11894)

(declare-fun printTailRec!845 (LexerInterface!2792 BalanceConc!11894 Int BalanceConc!11892) BalanceConc!11892)

(assert (=> b!1633624 (= lt!595042 (printTailRec!845 thiss!17113 lt!595031 0 (BalanceConc!11893 Empty!5974)))))

(declare-fun print!1323 (LexerInterface!2792 BalanceConc!11894) BalanceConc!11892)

(assert (=> b!1633624 (= lt!595042 (print!1323 thiss!17113 lt!595031))))

(declare-fun singletonSeq!1604 (Token!5892) BalanceConc!11894)

(assert (=> b!1633624 (= lt!595031 (singletonSeq!1604 (h!23352 tokens!457)))))

(declare-fun lt!595038 () List!18020)

(declare-fun lt!595037 () Option!3359)

(assert (=> b!1633624 (= lt!595037 (maxPrefix!1356 thiss!17113 rules!1846 lt!595038))))

(declare-fun b!1633625 () Bool)

(declare-fun e!1047667 () Bool)

(declare-fun e!1047670 () Bool)

(assert (=> b!1633625 (= e!1047667 e!1047670)))

(declare-fun res!731165 () Bool)

(assert (=> b!1633625 (=> res!731165 e!1047670)))

(declare-fun lt!595028 () BalanceConc!11892)

(declare-fun lt!595016 () BalanceConc!11892)

(declare-fun prefixMatchZipperSequence!561 (Regex!4491 BalanceConc!11892) Bool)

(declare-fun ++!4800 (BalanceConc!11892 BalanceConc!11892) BalanceConc!11892)

(assert (=> b!1633625 (= res!731165 (prefixMatchZipperSequence!561 lt!595019 (++!4800 lt!595028 lt!595016)))))

(declare-fun singletonSeq!1605 (C!9156) BalanceConc!11892)

(declare-fun apply!4628 (BalanceConc!11892 Int) C!9156)

(declare-fun charsOf!1812 (Token!5892) BalanceConc!11892)

(assert (=> b!1633625 (= lt!595016 (singletonSeq!1605 (apply!4628 (charsOf!1812 (h!23352 (t!149604 tokens!457))) 0)))))

(declare-fun rulesRegex!553 (LexerInterface!2792 List!18022) Regex!4491)

(assert (=> b!1633625 (= lt!595019 (rulesRegex!553 thiss!17113 rules!1846))))

(declare-fun b!1633626 () Bool)

(declare-fun res!731178 () Bool)

(declare-fun e!1047682 () Bool)

(assert (=> b!1633626 (=> res!731178 e!1047682)))

(declare-fun maxPrefixZipper!320 (LexerInterface!2792 List!18022 List!18020) Option!3359)

(assert (=> b!1633626 (= res!731178 (not (= (h!23352 tokens!457) (_1!10184 (get!5193 (maxPrefixZipper!320 thiss!17113 rules!1846 lt!595038))))))))

(declare-fun b!1633627 () Bool)

(declare-fun e!1047678 () Bool)

(declare-fun e!1047673 () Bool)

(assert (=> b!1633627 (= e!1047678 (not e!1047673))))

(declare-fun res!731163 () Bool)

(assert (=> b!1633627 (=> res!731163 e!1047673)))

(declare-fun lt!595043 () List!18021)

(assert (=> b!1633627 (= res!731163 (not (= lt!595043 (t!149604 tokens!457))))))

(declare-fun lt!595018 () tuple2!17562)

(declare-fun list!7068 (BalanceConc!11894) List!18021)

(assert (=> b!1633627 (= lt!595043 (list!7068 (_1!10183 lt!595018)))))

(declare-datatypes ((Unit!29278 0))(
  ( (Unit!29279) )
))
(declare-fun lt!595035 () Unit!29278)

(declare-fun theoremInvertabilityWhenTokenListSeparable!237 (LexerInterface!2792 List!18022 List!18021) Unit!29278)

(assert (=> b!1633627 (= lt!595035 (theoremInvertabilityWhenTokenListSeparable!237 thiss!17113 rules!1846 (t!149604 tokens!457)))))

(declare-fun lt!595040 () List!18020)

(declare-fun isPrefix!1423 (List!18020 List!18020) Bool)

(assert (=> b!1633627 (isPrefix!1423 lt!595017 lt!595040)))

(declare-fun lt!595020 () Unit!29278)

(declare-fun lt!595030 () List!18020)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!948 (List!18020 List!18020) Unit!29278)

(assert (=> b!1633627 (= lt!595020 (lemmaConcatTwoListThenFirstIsPrefix!948 lt!595017 lt!595030))))

(declare-fun b!1633628 () Bool)

(declare-fun e!1047684 () Bool)

(assert (=> b!1633628 (= e!1047670 e!1047684)))

(declare-fun res!731184 () Bool)

(assert (=> b!1633628 (=> res!731184 e!1047684)))

(assert (=> b!1633628 (= res!731184 (prefixMatch!426 lt!595019 (++!4799 lt!595017 lt!595024)))))

(assert (=> b!1633628 (= lt!595024 (list!7067 lt!595016))))

(declare-fun b!1633629 () Bool)

(declare-fun res!731162 () Bool)

(assert (=> b!1633629 (=> res!731162 e!1047672)))

(declare-fun rulesProduceIndividualToken!1444 (LexerInterface!2792 List!18022 Token!5892) Bool)

(assert (=> b!1633629 (= res!731162 (not (rulesProduceIndividualToken!1444 thiss!17113 rules!1846 (h!23352 tokens!457))))))

(declare-fun b!1633630 () Bool)

(assert (=> b!1633630 (= e!1047664 (= lt!595024 (Cons!17950 (head!3502 lt!595030) Nil!17950)))))

(declare-fun b!1633631 () Bool)

(declare-fun res!731164 () Bool)

(assert (=> b!1633631 (=> (not res!731164) (not e!1047681))))

(declare-fun isEmpty!10982 (List!18020) Bool)

(assert (=> b!1633631 (= res!731164 (isEmpty!10982 (_2!10184 lt!595044)))))

(declare-fun b!1633632 () Bool)

(assert (=> b!1633632 (= e!1047684 e!1047668)))

(declare-fun res!731175 () Bool)

(assert (=> b!1633632 (=> res!731175 e!1047668)))

(declare-datatypes ((tuple2!17566 0))(
  ( (tuple2!17567 (_1!10185 Token!5892) (_2!10185 BalanceConc!11892)) )
))
(declare-datatypes ((Option!3360 0))(
  ( (None!3359) (Some!3359 (v!24430 tuple2!17566)) )
))
(declare-fun isDefined!2727 (Option!3360) Bool)

(declare-fun maxPrefixZipperSequence!687 (LexerInterface!2792 List!18022 BalanceConc!11892) Option!3360)

(assert (=> b!1633632 (= res!731175 (not (isDefined!2727 (maxPrefixZipperSequence!687 thiss!17113 rules!1846 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))))

(assert (=> b!1633632 (= lt!595024 lt!595039)))

(declare-fun lt!595029 () BalanceConc!11892)

(declare-fun head!3503 (BalanceConc!11892) C!9156)

(assert (=> b!1633632 (= lt!595039 (Cons!17950 (head!3503 lt!595029) Nil!17950))))

(assert (=> b!1633632 e!1047664))

(declare-fun res!731167 () Bool)

(assert (=> b!1633632 (=> (not res!731167) (not e!1047664))))

(assert (=> b!1633632 (= res!731167 (= lt!595017 (originalCharacters!3977 (h!23352 tokens!457))))))

(declare-fun b!1633633 () Bool)

(declare-fun res!731179 () Bool)

(assert (=> b!1633633 (=> (not res!731179) (not e!1047675))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!485 (LexerInterface!2792 List!18021 List!18022) Bool)

(assert (=> b!1633633 (= res!731179 (tokensListTwoByTwoPredicateSeparableList!485 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1633634 () Bool)

(assert (=> b!1633634 (= e!1047675 e!1047678)))

(declare-fun res!731172 () Bool)

(assert (=> b!1633634 (=> (not res!731172) (not e!1047678))))

(assert (=> b!1633634 (= res!731172 (= lt!595038 lt!595040))))

(assert (=> b!1633634 (= lt!595040 (++!4799 lt!595017 lt!595030))))

(declare-fun lt!595034 () BalanceConc!11892)

(assert (=> b!1633634 (= lt!595038 (list!7067 lt!595034))))

(assert (=> b!1633634 (= lt!595030 (list!7067 lt!595029))))

(assert (=> b!1633634 (= lt!595017 (list!7067 lt!595028))))

(assert (=> b!1633634 (= lt!595028 (charsOf!1812 (h!23352 tokens!457)))))

(assert (=> b!1633634 (= lt!595018 (lex!1276 thiss!17113 rules!1846 lt!595029))))

(declare-fun lt!595021 () BalanceConc!11894)

(assert (=> b!1633634 (= lt!595029 (print!1323 thiss!17113 lt!595021))))

(declare-fun seqFromList!2076 (List!18021) BalanceConc!11894)

(assert (=> b!1633634 (= lt!595021 (seqFromList!2076 (t!149604 tokens!457)))))

(assert (=> b!1633634 (= lt!595034 (print!1323 thiss!17113 (seqFromList!2076 tokens!457)))))

(declare-fun res!731160 () Bool)

(assert (=> start!155750 (=> (not res!731160) (not e!1047675))))

(assert (=> start!155750 (= res!731160 ((_ is Lexer!2790) thiss!17113))))

(assert (=> start!155750 e!1047675))

(assert (=> start!155750 true))

(assert (=> start!155750 e!1047669))

(assert (=> start!155750 e!1047683))

(declare-fun b!1633635 () Bool)

(assert (=> b!1633635 (= e!1047672 e!1047667)))

(declare-fun res!731183 () Bool)

(assert (=> b!1633635 (=> res!731183 e!1047667)))

(assert (=> b!1633635 (= res!731183 (not (isDefined!2726 lt!595037)))))

(declare-fun lt!595041 () Unit!29278)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!366 (LexerInterface!2792 List!18022 List!18020 List!18020) Unit!29278)

(assert (=> b!1633635 (= lt!595041 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!366 thiss!17113 rules!1846 lt!595017 lt!595030))))

(declare-fun b!1633636 () Bool)

(assert (=> b!1633636 (= e!1047666 e!1047682)))

(declare-fun res!731174 () Bool)

(assert (=> b!1633636 (=> res!731174 e!1047682)))

(declare-fun lt!595026 () tuple2!17564)

(assert (=> b!1633636 (= res!731174 (or (not (= (_1!10184 lt!595026) (h!23352 tokens!457))) (not (= (_2!10184 lt!595026) lt!595030))))))

(assert (=> b!1633636 (= lt!595026 (get!5193 lt!595037))))

(declare-fun lt!595022 () Unit!29278)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!128 (LexerInterface!2792 List!18022 Token!5892 Rule!6126 List!18020) Unit!29278)

(assert (=> b!1633636 (= lt!595022 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!128 thiss!17113 rules!1846 (h!23352 tokens!457) (rule!5001 (h!23352 tokens!457)) lt!595030))))

(declare-fun b!1633637 () Bool)

(declare-fun tp!474016 () Bool)

(declare-fun inv!21 (TokenValue!3253) Bool)

(assert (=> b!1633637 (= e!1047685 (and (inv!21 (value!99818 (h!23352 tokens!457))) e!1047676 tp!474016))))

(declare-fun b!1633638 () Bool)

(declare-fun res!731173 () Bool)

(assert (=> b!1633638 (=> (not res!731173) (not e!1047675))))

(declare-fun rulesInvariant!2461 (LexerInterface!2792 List!18022) Bool)

(assert (=> b!1633638 (= res!731173 (rulesInvariant!2461 thiss!17113 rules!1846))))

(declare-fun b!1633639 () Bool)

(declare-fun res!731180 () Bool)

(assert (=> b!1633639 (=> res!731180 e!1047665)))

(declare-fun separableTokensPredicate!734 (LexerInterface!2792 Token!5892 Token!5892 List!18022) Bool)

(assert (=> b!1633639 (= res!731180 (not (separableTokensPredicate!734 thiss!17113 (h!23352 tokens!457) (h!23352 (t!149604 tokens!457)) rules!1846)))))

(assert (=> b!1633640 (= e!1047674 (and tp!474020 tp!474018))))

(declare-fun b!1633641 () Bool)

(assert (=> b!1633641 (= e!1047682 (isDefined!2727 (maxPrefixZipperSequence!687 thiss!17113 rules!1846 lt!595034)))))

(declare-fun b!1633642 () Bool)

(assert (=> b!1633642 (= e!1047673 e!1047665)))

(declare-fun res!731169 () Bool)

(assert (=> b!1633642 (=> res!731169 e!1047665)))

(declare-fun lt!595023 () List!18021)

(declare-fun lt!595027 () List!18021)

(assert (=> b!1633642 (= res!731169 (or (not (= lt!595043 lt!595023)) (not (= lt!595023 lt!595027))))))

(assert (=> b!1633642 (= lt!595023 (list!7068 lt!595021))))

(assert (=> b!1633642 (= lt!595043 lt!595027)))

(declare-fun prepend!699 (BalanceConc!11894 Token!5892) BalanceConc!11894)

(assert (=> b!1633642 (= lt!595027 (list!7068 (prepend!699 (seqFromList!2076 (t!149604 (t!149604 tokens!457))) (h!23352 (t!149604 tokens!457)))))))

(declare-fun lt!595033 () Unit!29278)

(declare-fun seqFromListBHdTlConstructive!240 (Token!5892 List!18021 BalanceConc!11894) Unit!29278)

(assert (=> b!1633642 (= lt!595033 (seqFromListBHdTlConstructive!240 (h!23352 (t!149604 tokens!457)) (t!149604 (t!149604 tokens!457)) (_1!10183 lt!595018)))))

(declare-fun b!1633643 () Bool)

(declare-fun res!731161 () Bool)

(assert (=> b!1633643 (=> (not res!731161) (not e!1047675))))

(declare-fun isEmpty!10983 (List!18022) Bool)

(assert (=> b!1633643 (= res!731161 (not (isEmpty!10983 rules!1846)))))

(assert (=> b!1633644 (= e!1047686 (and tp!474015 tp!474014))))

(assert (= (and start!155750 res!731160) b!1633643))

(assert (= (and b!1633643 res!731161) b!1633638))

(assert (= (and b!1633638 res!731173) b!1633621))

(assert (= (and b!1633621 res!731181) b!1633633))

(assert (= (and b!1633633 res!731179) b!1633618))

(assert (= (and b!1633618 res!731170) b!1633634))

(assert (= (and b!1633634 res!731172) b!1633627))

(assert (= (and b!1633627 (not res!731163)) b!1633642))

(assert (= (and b!1633642 (not res!731169)) b!1633639))

(assert (= (and b!1633639 (not res!731180)) b!1633624))

(assert (= (and b!1633624 (not res!731168)) b!1633629))

(assert (= (and b!1633629 (not res!731162)) b!1633619))

(assert (= (and b!1633619 (not res!731166)) b!1633635))

(assert (= (and b!1633635 (not res!731183)) b!1633625))

(assert (= (and b!1633625 (not res!731165)) b!1633628))

(assert (= (and b!1633628 (not res!731184)) b!1633632))

(assert (= (and b!1633632 res!731167) b!1633615))

(assert (= (and b!1633615 res!731176) b!1633630))

(assert (= (and b!1633632 (not res!731175)) b!1633622))

(assert (= (and b!1633622 res!731171) b!1633631))

(assert (= (and b!1633631 res!731164) b!1633623))

(assert (= (and b!1633622 (not res!731177)) b!1633616))

(assert (= (and b!1633616 (not res!731182)) b!1633636))

(assert (= (and b!1633636 (not res!731174)) b!1633626))

(assert (= (and b!1633626 (not res!731178)) b!1633641))

(assert (= b!1633614 b!1633644))

(assert (= b!1633620 b!1633614))

(assert (= (and start!155750 ((_ is Cons!17952) rules!1846)) b!1633620))

(assert (= b!1633613 b!1633640))

(assert (= b!1633637 b!1633613))

(assert (= b!1633617 b!1633637))

(assert (= (and start!155750 ((_ is Cons!17951) tokens!457)) b!1633617))

(declare-fun m!1968509 () Bool)

(assert (=> b!1633627 m!1968509))

(declare-fun m!1968511 () Bool)

(assert (=> b!1633627 m!1968511))

(declare-fun m!1968513 () Bool)

(assert (=> b!1633627 m!1968513))

(declare-fun m!1968515 () Bool)

(assert (=> b!1633627 m!1968515))

(declare-fun m!1968517 () Bool)

(assert (=> b!1633615 m!1968517))

(declare-fun m!1968519 () Bool)

(assert (=> b!1633623 m!1968519))

(declare-fun m!1968521 () Bool)

(assert (=> b!1633639 m!1968521))

(declare-fun m!1968523 () Bool)

(assert (=> b!1633621 m!1968523))

(declare-fun m!1968525 () Bool)

(assert (=> b!1633619 m!1968525))

(assert (=> b!1633619 m!1968525))

(declare-fun m!1968527 () Bool)

(assert (=> b!1633619 m!1968527))

(declare-fun m!1968529 () Bool)

(assert (=> b!1633619 m!1968529))

(declare-fun m!1968531 () Bool)

(assert (=> b!1633626 m!1968531))

(assert (=> b!1633626 m!1968531))

(declare-fun m!1968533 () Bool)

(assert (=> b!1633626 m!1968533))

(declare-fun m!1968535 () Bool)

(assert (=> b!1633643 m!1968535))

(declare-fun m!1968537 () Bool)

(assert (=> b!1633631 m!1968537))

(declare-fun m!1968539 () Bool)

(assert (=> b!1633624 m!1968539))

(declare-fun m!1968541 () Bool)

(assert (=> b!1633624 m!1968541))

(declare-fun m!1968543 () Bool)

(assert (=> b!1633624 m!1968543))

(declare-fun m!1968545 () Bool)

(assert (=> b!1633624 m!1968545))

(declare-fun m!1968547 () Bool)

(assert (=> b!1633624 m!1968547))

(declare-fun m!1968549 () Bool)

(assert (=> b!1633624 m!1968549))

(declare-fun m!1968551 () Bool)

(assert (=> b!1633633 m!1968551))

(declare-fun m!1968553 () Bool)

(assert (=> b!1633634 m!1968553))

(declare-fun m!1968555 () Bool)

(assert (=> b!1633634 m!1968555))

(declare-fun m!1968557 () Bool)

(assert (=> b!1633634 m!1968557))

(declare-fun m!1968559 () Bool)

(assert (=> b!1633634 m!1968559))

(declare-fun m!1968561 () Bool)

(assert (=> b!1633634 m!1968561))

(declare-fun m!1968563 () Bool)

(assert (=> b!1633634 m!1968563))

(declare-fun m!1968565 () Bool)

(assert (=> b!1633634 m!1968565))

(declare-fun m!1968567 () Bool)

(assert (=> b!1633634 m!1968567))

(declare-fun m!1968569 () Bool)

(assert (=> b!1633634 m!1968569))

(declare-fun m!1968571 () Bool)

(assert (=> b!1633634 m!1968571))

(assert (=> b!1633634 m!1968561))

(declare-fun m!1968573 () Bool)

(assert (=> b!1633636 m!1968573))

(declare-fun m!1968575 () Bool)

(assert (=> b!1633636 m!1968575))

(declare-fun m!1968577 () Bool)

(assert (=> b!1633638 m!1968577))

(declare-fun m!1968579 () Bool)

(assert (=> b!1633629 m!1968579))

(declare-fun m!1968581 () Bool)

(assert (=> b!1633614 m!1968581))

(declare-fun m!1968583 () Bool)

(assert (=> b!1633614 m!1968583))

(declare-fun m!1968585 () Bool)

(assert (=> b!1633642 m!1968585))

(declare-fun m!1968587 () Bool)

(assert (=> b!1633642 m!1968587))

(declare-fun m!1968589 () Bool)

(assert (=> b!1633642 m!1968589))

(declare-fun m!1968591 () Bool)

(assert (=> b!1633642 m!1968591))

(declare-fun m!1968593 () Bool)

(assert (=> b!1633642 m!1968593))

(assert (=> b!1633642 m!1968589))

(assert (=> b!1633642 m!1968591))

(declare-fun m!1968595 () Bool)

(assert (=> b!1633628 m!1968595))

(assert (=> b!1633628 m!1968595))

(declare-fun m!1968597 () Bool)

(assert (=> b!1633628 m!1968597))

(declare-fun m!1968599 () Bool)

(assert (=> b!1633628 m!1968599))

(declare-fun m!1968601 () Bool)

(assert (=> b!1633637 m!1968601))

(declare-fun m!1968603 () Bool)

(assert (=> b!1633616 m!1968603))

(assert (=> b!1633616 m!1968603))

(declare-fun m!1968605 () Bool)

(assert (=> b!1633616 m!1968605))

(declare-fun m!1968607 () Bool)

(assert (=> b!1633632 m!1968607))

(assert (=> b!1633632 m!1968607))

(declare-fun m!1968609 () Bool)

(assert (=> b!1633632 m!1968609))

(assert (=> b!1633632 m!1968609))

(declare-fun m!1968611 () Bool)

(assert (=> b!1633632 m!1968611))

(declare-fun m!1968613 () Bool)

(assert (=> b!1633632 m!1968613))

(declare-fun m!1968615 () Bool)

(assert (=> b!1633625 m!1968615))

(declare-fun m!1968617 () Bool)

(assert (=> b!1633625 m!1968617))

(declare-fun m!1968619 () Bool)

(assert (=> b!1633625 m!1968619))

(declare-fun m!1968621 () Bool)

(assert (=> b!1633625 m!1968621))

(assert (=> b!1633625 m!1968617))

(declare-fun m!1968623 () Bool)

(assert (=> b!1633625 m!1968623))

(declare-fun m!1968625 () Bool)

(assert (=> b!1633625 m!1968625))

(assert (=> b!1633625 m!1968619))

(assert (=> b!1633625 m!1968625))

(declare-fun m!1968627 () Bool)

(assert (=> b!1633617 m!1968627))

(declare-fun m!1968629 () Bool)

(assert (=> b!1633630 m!1968629))

(declare-fun m!1968631 () Bool)

(assert (=> b!1633613 m!1968631))

(declare-fun m!1968633 () Bool)

(assert (=> b!1633613 m!1968633))

(declare-fun m!1968635 () Bool)

(assert (=> b!1633622 m!1968635))

(declare-fun m!1968637 () Bool)

(assert (=> b!1633622 m!1968637))

(declare-fun m!1968639 () Bool)

(assert (=> b!1633622 m!1968639))

(declare-fun m!1968641 () Bool)

(assert (=> b!1633622 m!1968641))

(declare-fun m!1968643 () Bool)

(assert (=> b!1633622 m!1968643))

(assert (=> b!1633622 m!1968635))

(declare-fun m!1968645 () Bool)

(assert (=> b!1633622 m!1968645))

(assert (=> b!1633622 m!1968645))

(declare-fun m!1968647 () Bool)

(assert (=> b!1633622 m!1968647))

(declare-fun m!1968649 () Bool)

(assert (=> b!1633635 m!1968649))

(declare-fun m!1968651 () Bool)

(assert (=> b!1633635 m!1968651))

(declare-fun m!1968653 () Bool)

(assert (=> b!1633641 m!1968653))

(assert (=> b!1633641 m!1968653))

(declare-fun m!1968655 () Bool)

(assert (=> b!1633641 m!1968655))

(check-sat (not b!1633615) (not b!1633623) (not b!1633642) (not b!1633639) (not b!1633643) (not b!1633634) (not b!1633624) (not b!1633621) (not b_next!44845) (not b!1633625) b_and!115835 (not b!1633631) (not b!1633617) (not b!1633620) b_and!115831 (not b!1633629) (not b_next!44841) (not b!1633627) (not b!1633613) (not b!1633626) (not b!1633637) (not b!1633614) (not b!1633630) (not b!1633641) b_and!115833 (not b_next!44839) (not b_next!44843) b_and!115829 (not b!1633633) (not b!1633619) (not b!1633636) (not b!1633638) (not b!1633632) (not b!1633635) (not b!1633628) (not b!1633622) (not b!1633616))
(check-sat b_and!115835 (not b_next!44845) b_and!115831 (not b_next!44841) b_and!115833 (not b_next!44839) (not b_next!44843) b_and!115829)
(get-model)

(declare-fun d!492008 () Bool)

(declare-fun res!731194 () Bool)

(declare-fun e!1047689 () Bool)

(assert (=> d!492008 (=> (not res!731194) (not e!1047689))))

(assert (=> d!492008 (= res!731194 (not (isEmpty!10982 (originalCharacters!3977 (h!23352 tokens!457)))))))

(assert (=> d!492008 (= (inv!23314 (h!23352 tokens!457)) e!1047689)))

(declare-fun b!1633649 () Bool)

(declare-fun res!731195 () Bool)

(assert (=> b!1633649 (=> (not res!731195) (not e!1047689))))

(declare-fun dynLambda!8002 (Int TokenValue!3253) BalanceConc!11892)

(assert (=> b!1633649 (= res!731195 (= (originalCharacters!3977 (h!23352 tokens!457)) (list!7067 (dynLambda!8002 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (value!99818 (h!23352 tokens!457))))))))

(declare-fun b!1633650 () Bool)

(declare-fun size!14332 (List!18020) Int)

(assert (=> b!1633650 (= e!1047689 (= (size!14330 (h!23352 tokens!457)) (size!14332 (originalCharacters!3977 (h!23352 tokens!457)))))))

(assert (= (and d!492008 res!731194) b!1633649))

(assert (= (and b!1633649 res!731195) b!1633650))

(declare-fun b_lambda!51389 () Bool)

(assert (=> (not b_lambda!51389) (not b!1633649)))

(declare-fun t!149607 () Bool)

(declare-fun tb!93719 () Bool)

(assert (=> (and b!1633644 (= (toChars!4453 (transformation!3163 (h!23353 rules!1846))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457))))) t!149607) tb!93719))

(declare-fun b!1633655 () Bool)

(declare-fun e!1047692 () Bool)

(declare-fun tp!474025 () Bool)

(declare-fun inv!23315 (Conc!5974) Bool)

(assert (=> b!1633655 (= e!1047692 (and (inv!23315 (c!265860 (dynLambda!8002 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (value!99818 (h!23352 tokens!457))))) tp!474025))))

(declare-fun result!113046 () Bool)

(declare-fun inv!23316 (BalanceConc!11892) Bool)

(assert (=> tb!93719 (= result!113046 (and (inv!23316 (dynLambda!8002 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (value!99818 (h!23352 tokens!457)))) e!1047692))))

(assert (= tb!93719 b!1633655))

(declare-fun m!1968657 () Bool)

(assert (=> b!1633655 m!1968657))

(declare-fun m!1968659 () Bool)

(assert (=> tb!93719 m!1968659))

(assert (=> b!1633649 t!149607))

(declare-fun b_and!115837 () Bool)

(assert (= b_and!115831 (and (=> t!149607 result!113046) b_and!115837)))

(declare-fun t!149609 () Bool)

(declare-fun tb!93721 () Bool)

(assert (=> (and b!1633640 (= (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457))))) t!149609) tb!93721))

(declare-fun result!113050 () Bool)

(assert (= result!113050 result!113046))

(assert (=> b!1633649 t!149609))

(declare-fun b_and!115839 () Bool)

(assert (= b_and!115835 (and (=> t!149609 result!113050) b_and!115839)))

(declare-fun m!1968661 () Bool)

(assert (=> d!492008 m!1968661))

(declare-fun m!1968663 () Bool)

(assert (=> b!1633649 m!1968663))

(assert (=> b!1633649 m!1968663))

(declare-fun m!1968665 () Bool)

(assert (=> b!1633649 m!1968665))

(declare-fun m!1968667 () Bool)

(assert (=> b!1633650 m!1968667))

(assert (=> b!1633617 d!492008))

(declare-fun d!492010 () Bool)

(assert (=> d!492010 (= (separableTokensPredicate!734 thiss!17113 (h!23352 tokens!457) (h!23352 (t!149604 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!561 (rulesRegex!553 thiss!17113 rules!1846) (++!4800 (charsOf!1812 (h!23352 tokens!457)) (singletonSeq!1605 (apply!4628 (charsOf!1812 (h!23352 (t!149604 tokens!457))) 0))))))))

(declare-fun bs!395271 () Bool)

(assert (= bs!395271 d!492010))

(assert (=> bs!395271 m!1968625))

(assert (=> bs!395271 m!1968619))

(assert (=> bs!395271 m!1968615))

(declare-fun m!1968671 () Bool)

(assert (=> bs!395271 m!1968671))

(declare-fun m!1968673 () Bool)

(assert (=> bs!395271 m!1968673))

(assert (=> bs!395271 m!1968557))

(assert (=> bs!395271 m!1968621))

(assert (=> bs!395271 m!1968671))

(assert (=> bs!395271 m!1968625))

(assert (=> bs!395271 m!1968615))

(assert (=> bs!395271 m!1968557))

(assert (=> bs!395271 m!1968619))

(assert (=> bs!395271 m!1968621))

(assert (=> b!1633639 d!492010))

(declare-fun lt!595047 () Bool)

(declare-fun d!492016 () Bool)

(declare-fun isEmpty!10985 (List!18021) Bool)

(assert (=> d!492016 (= lt!595047 (isEmpty!10985 (list!7068 (_1!10183 (lex!1276 thiss!17113 rules!1846 (seqFromList!2075 lt!595017))))))))

(declare-fun isEmpty!10986 (Conc!5975) Bool)

(assert (=> d!492016 (= lt!595047 (isEmpty!10986 (c!265861 (_1!10183 (lex!1276 thiss!17113 rules!1846 (seqFromList!2075 lt!595017))))))))

(assert (=> d!492016 (= (isEmpty!10981 (_1!10183 (lex!1276 thiss!17113 rules!1846 (seqFromList!2075 lt!595017)))) lt!595047)))

(declare-fun bs!395272 () Bool)

(assert (= bs!395272 d!492016))

(declare-fun m!1968675 () Bool)

(assert (=> bs!395272 m!1968675))

(assert (=> bs!395272 m!1968675))

(declare-fun m!1968677 () Bool)

(assert (=> bs!395272 m!1968677))

(declare-fun m!1968679 () Bool)

(assert (=> bs!395272 m!1968679))

(assert (=> b!1633619 d!492016))

(declare-fun b!1633666 () Bool)

(declare-fun res!731205 () Bool)

(declare-fun e!1047700 () Bool)

(assert (=> b!1633666 (=> (not res!731205) (not e!1047700))))

(declare-fun lt!595050 () tuple2!17562)

(declare-datatypes ((tuple2!17568 0))(
  ( (tuple2!17569 (_1!10186 List!18021) (_2!10186 List!18020)) )
))
(declare-fun lexList!838 (LexerInterface!2792 List!18022 List!18020) tuple2!17568)

(assert (=> b!1633666 (= res!731205 (= (list!7068 (_1!10183 lt!595050)) (_1!10186 (lexList!838 thiss!17113 rules!1846 (list!7067 (seqFromList!2075 lt!595017))))))))

(declare-fun b!1633667 () Bool)

(declare-fun e!1047701 () Bool)

(declare-fun e!1047699 () Bool)

(assert (=> b!1633667 (= e!1047701 e!1047699)))

(declare-fun res!731207 () Bool)

(declare-fun size!14334 (BalanceConc!11892) Int)

(assert (=> b!1633667 (= res!731207 (< (size!14334 (_2!10183 lt!595050)) (size!14334 (seqFromList!2075 lt!595017))))))

(assert (=> b!1633667 (=> (not res!731207) (not e!1047699))))

(declare-fun d!492018 () Bool)

(assert (=> d!492018 e!1047700))

(declare-fun res!731206 () Bool)

(assert (=> d!492018 (=> (not res!731206) (not e!1047700))))

(assert (=> d!492018 (= res!731206 e!1047701)))

(declare-fun c!265864 () Bool)

(declare-fun size!14335 (BalanceConc!11894) Int)

(assert (=> d!492018 (= c!265864 (> (size!14335 (_1!10183 lt!595050)) 0))))

(declare-fun lexTailRecV2!561 (LexerInterface!2792 List!18022 BalanceConc!11892 BalanceConc!11892 BalanceConc!11892 BalanceConc!11894) tuple2!17562)

(assert (=> d!492018 (= lt!595050 (lexTailRecV2!561 thiss!17113 rules!1846 (seqFromList!2075 lt!595017) (BalanceConc!11893 Empty!5974) (seqFromList!2075 lt!595017) (BalanceConc!11895 Empty!5975)))))

(assert (=> d!492018 (= (lex!1276 thiss!17113 rules!1846 (seqFromList!2075 lt!595017)) lt!595050)))

(declare-fun b!1633668 () Bool)

(assert (=> b!1633668 (= e!1047701 (= (_2!10183 lt!595050) (seqFromList!2075 lt!595017)))))

(declare-fun b!1633669 () Bool)

(assert (=> b!1633669 (= e!1047699 (not (isEmpty!10981 (_1!10183 lt!595050))))))

(declare-fun b!1633670 () Bool)

(assert (=> b!1633670 (= e!1047700 (= (list!7067 (_2!10183 lt!595050)) (_2!10186 (lexList!838 thiss!17113 rules!1846 (list!7067 (seqFromList!2075 lt!595017))))))))

(assert (= (and d!492018 c!265864) b!1633667))

(assert (= (and d!492018 (not c!265864)) b!1633668))

(assert (= (and b!1633667 res!731207) b!1633669))

(assert (= (and d!492018 res!731206) b!1633666))

(assert (= (and b!1633666 res!731205) b!1633670))

(declare-fun m!1968681 () Bool)

(assert (=> b!1633670 m!1968681))

(assert (=> b!1633670 m!1968525))

(declare-fun m!1968683 () Bool)

(assert (=> b!1633670 m!1968683))

(assert (=> b!1633670 m!1968683))

(declare-fun m!1968685 () Bool)

(assert (=> b!1633670 m!1968685))

(declare-fun m!1968687 () Bool)

(assert (=> b!1633669 m!1968687))

(declare-fun m!1968689 () Bool)

(assert (=> b!1633666 m!1968689))

(assert (=> b!1633666 m!1968525))

(assert (=> b!1633666 m!1968683))

(assert (=> b!1633666 m!1968683))

(assert (=> b!1633666 m!1968685))

(declare-fun m!1968691 () Bool)

(assert (=> b!1633667 m!1968691))

(assert (=> b!1633667 m!1968525))

(declare-fun m!1968693 () Bool)

(assert (=> b!1633667 m!1968693))

(declare-fun m!1968695 () Bool)

(assert (=> d!492018 m!1968695))

(assert (=> d!492018 m!1968525))

(assert (=> d!492018 m!1968525))

(declare-fun m!1968697 () Bool)

(assert (=> d!492018 m!1968697))

(assert (=> b!1633619 d!492018))

(declare-fun d!492020 () Bool)

(declare-fun fromListB!912 (List!18020) BalanceConc!11892)

(assert (=> d!492020 (= (seqFromList!2075 lt!595017) (fromListB!912 lt!595017))))

(declare-fun bs!395273 () Bool)

(assert (= bs!395273 d!492020))

(declare-fun m!1968699 () Bool)

(assert (=> bs!395273 m!1968699))

(assert (=> b!1633619 d!492020))

(declare-fun d!492022 () Bool)

(assert (=> d!492022 (= (get!5193 lt!595037) (v!24429 lt!595037))))

(assert (=> b!1633636 d!492022))

(declare-fun b!1633720 () Bool)

(declare-fun e!1047737 () Unit!29278)

(declare-fun Unit!29307 () Unit!29278)

(assert (=> b!1633720 (= e!1047737 Unit!29307)))

(declare-fun b!1633721 () Bool)

(assert (=> b!1633721 false))

(declare-fun lt!595336 () Unit!29278)

(declare-fun lt!595339 () Unit!29278)

(assert (=> b!1633721 (= lt!595336 lt!595339)))

(declare-fun lt!595329 () List!18020)

(assert (=> b!1633721 (not (matchR!1990 (regex!3163 (rule!5001 (h!23352 tokens!457))) lt!595329))))

(declare-fun lt!595325 () List!18020)

(declare-fun lt!595310 () Token!5892)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!78 (LexerInterface!2792 List!18022 Rule!6126 List!18020 List!18020 Rule!6126) Unit!29278)

(assert (=> b!1633721 (= lt!595339 (lemmaMaxPrefNoSmallerRuleMatches!78 thiss!17113 rules!1846 (rule!5001 lt!595310) lt!595329 lt!595325 (rule!5001 (h!23352 tokens!457))))))

(assert (=> b!1633721 (= lt!595329 (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun e!1047731 () Unit!29278)

(declare-fun Unit!29308 () Unit!29278)

(assert (=> b!1633721 (= e!1047731 Unit!29308)))

(declare-fun e!1047732 () Bool)

(declare-fun b!1633722 () Bool)

(declare-datatypes ((Option!3362 0))(
  ( (None!3361) (Some!3361 (v!24438 Rule!6126)) )
))
(declare-fun get!5195 (Option!3362) Rule!6126)

(declare-fun getRuleFromTag!294 (LexerInterface!2792 List!18022 String!20597) Option!3362)

(assert (=> b!1633722 (= e!1047732 (= (rule!5001 lt!595310) (get!5195 (getRuleFromTag!294 thiss!17113 rules!1846 (tag!3443 (rule!5001 lt!595310))))))))

(declare-fun b!1633724 () Bool)

(declare-fun Unit!29309 () Unit!29278)

(assert (=> b!1633724 (= e!1047731 Unit!29309)))

(declare-fun b!1633725 () Bool)

(declare-fun e!1047734 () Unit!29278)

(declare-fun Unit!29310 () Unit!29278)

(assert (=> b!1633725 (= e!1047734 Unit!29310)))

(declare-fun lt!595295 () Unit!29278)

(declare-fun lt!595346 () List!18020)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!38 (LexerInterface!2792 List!18022 List!18020 Token!5892 Rule!6126 List!18020) Unit!29278)

(assert (=> b!1633725 (= lt!595295 (lemmaMaxPrefixThenMatchesRulesRegex!38 thiss!17113 rules!1846 lt!595325 lt!595310 (rule!5001 lt!595310) lt!595346))))

(assert (=> b!1633725 (matchR!1990 (rulesRegex!553 thiss!17113 rules!1846) (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun lt!595345 () Unit!29278)

(assert (=> b!1633725 (= lt!595345 lt!595295)))

(declare-fun lt!595306 () List!18020)

(assert (=> b!1633725 (= lt!595306 (list!7067 (charsOf!1812 (h!23352 tokens!457))))))

(declare-fun lt!595283 () List!18020)

(assert (=> b!1633725 (= lt!595283 (list!7067 (charsOf!1812 (h!23352 tokens!457))))))

(declare-fun lt!595287 () List!18020)

(declare-fun getSuffix!708 (List!18020 List!18020) List!18020)

(assert (=> b!1633725 (= lt!595287 (getSuffix!708 lt!595325 (list!7067 (charsOf!1812 (h!23352 tokens!457)))))))

(declare-fun lt!595278 () Unit!29278)

(declare-fun lemmaSamePrefixThenSameSuffix!660 (List!18020 List!18020 List!18020 List!18020 List!18020) Unit!29278)

(assert (=> b!1633725 (= lt!595278 (lemmaSamePrefixThenSameSuffix!660 lt!595306 lt!595030 lt!595283 lt!595287 lt!595325))))

(assert (=> b!1633725 (= lt!595030 lt!595287)))

(declare-fun lt!595312 () Unit!29278)

(assert (=> b!1633725 (= lt!595312 lt!595278)))

(declare-fun lt!595307 () List!18020)

(assert (=> b!1633725 (= lt!595307 (list!7067 (charsOf!1812 (h!23352 tokens!457))))))

(declare-fun lt!595293 () Unit!29278)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!151 (List!18020 List!18020) Unit!29278)

(assert (=> b!1633725 (= lt!595293 (lemmaAddHeadSuffixToPrefixStillPrefix!151 lt!595307 lt!595325))))

(assert (=> b!1633725 (isPrefix!1423 (++!4799 lt!595307 (Cons!17950 (head!3502 (getSuffix!708 lt!595325 lt!595307)) Nil!17950)) lt!595325)))

(declare-fun lt!595337 () Unit!29278)

(assert (=> b!1633725 (= lt!595337 lt!595293)))

(declare-fun lt!595305 () List!18020)

(assert (=> b!1633725 (= lt!595305 (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun lt!595334 () List!18020)

(assert (=> b!1633725 (= lt!595334 (++!4799 (list!7067 (charsOf!1812 (h!23352 tokens!457))) (Cons!17950 (head!3502 lt!595030) Nil!17950)))))

(declare-fun lt!595324 () Unit!29278)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!37 (List!18020 List!18020 List!18020) Unit!29278)

(assert (=> b!1633725 (= lt!595324 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!37 lt!595305 lt!595334 lt!595325))))

(assert (=> b!1633725 (isPrefix!1423 lt!595334 lt!595305)))

(declare-fun lt!595347 () Unit!29278)

(assert (=> b!1633725 (= lt!595347 lt!595324)))

(declare-fun lt!595297 () Regex!4491)

(assert (=> b!1633725 (= lt!595297 (rulesRegex!553 thiss!17113 rules!1846))))

(declare-fun lt!595326 () List!18020)

(assert (=> b!1633725 (= lt!595326 (++!4799 (list!7067 (charsOf!1812 (h!23352 tokens!457))) (Cons!17950 (head!3502 lt!595030) Nil!17950)))))

(declare-fun lt!595319 () List!18020)

(assert (=> b!1633725 (= lt!595319 (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun lt!595298 () Unit!29278)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!38 (Regex!4491 List!18020 List!18020) Unit!29278)

(assert (=> b!1633725 (= lt!595298 (lemmaNotPrefixMatchThenCannotMatchLonger!38 lt!595297 lt!595326 lt!595319))))

(assert (=> b!1633725 (not (matchR!1990 lt!595297 lt!595319))))

(declare-fun lt!595344 () Unit!29278)

(assert (=> b!1633725 (= lt!595344 lt!595298)))

(assert (=> b!1633725 false))

(declare-fun b!1633726 () Bool)

(assert (=> b!1633726 false))

(declare-fun lt!595320 () Unit!29278)

(declare-fun lt!595299 () Unit!29278)

(assert (=> b!1633726 (= lt!595320 lt!595299)))

(declare-fun lt!595338 () List!18020)

(assert (=> b!1633726 (not (matchR!1990 (regex!3163 (rule!5001 lt!595310)) lt!595338))))

(assert (=> b!1633726 (= lt!595299 (lemmaMaxPrefNoSmallerRuleMatches!78 thiss!17113 rules!1846 (rule!5001 (h!23352 tokens!457)) lt!595338 (list!7067 (charsOf!1812 (h!23352 tokens!457))) (rule!5001 lt!595310)))))

(assert (=> b!1633726 (= lt!595338 (list!7067 (charsOf!1812 (h!23352 tokens!457))))))

(declare-fun e!1047733 () Unit!29278)

(declare-fun Unit!29311 () Unit!29278)

(assert (=> b!1633726 (= e!1047733 Unit!29311)))

(declare-fun b!1633727 () Bool)

(assert (=> b!1633727 false))

(declare-fun lt!595300 () Unit!29278)

(declare-fun lt!595288 () Unit!29278)

(assert (=> b!1633727 (= lt!595300 lt!595288)))

(assert (=> b!1633727 (= (rule!5001 lt!595310) (rule!5001 (h!23352 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!54 (List!18022 Rule!6126 Rule!6126) Unit!29278)

(assert (=> b!1633727 (= lt!595288 (lemmaSameIndexThenSameElement!54 rules!1846 (rule!5001 lt!595310) (rule!5001 (h!23352 tokens!457))))))

(declare-fun e!1047735 () Unit!29278)

(declare-fun Unit!29312 () Unit!29278)

(assert (=> b!1633727 (= e!1047735 Unit!29312)))

(declare-fun b!1633728 () Bool)

(declare-fun Unit!29313 () Unit!29278)

(assert (=> b!1633728 (= e!1047737 Unit!29313)))

(declare-fun lt!595304 () List!18020)

(assert (=> b!1633728 (= lt!595304 (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun lt!595341 () List!18020)

(assert (=> b!1633728 (= lt!595341 (list!7067 (charsOf!1812 (h!23352 tokens!457))))))

(declare-fun lt!595335 () Unit!29278)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!128 (LexerInterface!2792 List!18022 Rule!6126 List!18020 List!18020 List!18020 Rule!6126) Unit!29278)

(assert (=> b!1633728 (= lt!595335 (lemmaMaxPrefixOutputsMaxPrefix!128 thiss!17113 rules!1846 (rule!5001 lt!595310) lt!595304 lt!595325 lt!595341 (rule!5001 (h!23352 tokens!457))))))

(assert (=> b!1633728 (not (matchR!1990 (regex!3163 (rule!5001 (h!23352 tokens!457))) lt!595341))))

(declare-fun lt!595330 () Unit!29278)

(assert (=> b!1633728 (= lt!595330 lt!595335)))

(assert (=> b!1633728 false))

(declare-fun b!1633729 () Bool)

(declare-fun res!731228 () Bool)

(assert (=> b!1633729 (=> (not res!731228) (not e!1047732))))

(assert (=> b!1633729 (= res!731228 (matchR!1990 (regex!3163 (get!5195 (getRuleFromTag!294 thiss!17113 rules!1846 (tag!3443 (rule!5001 lt!595310))))) (list!7067 (charsOf!1812 lt!595310))))))

(declare-fun b!1633730 () Bool)

(declare-fun Unit!29314 () Unit!29278)

(assert (=> b!1633730 (= e!1047734 Unit!29314)))

(declare-fun b!1633731 () Bool)

(declare-fun e!1047736 () Unit!29278)

(declare-fun Unit!29315 () Unit!29278)

(assert (=> b!1633731 (= e!1047736 Unit!29315)))

(declare-fun c!265882 () Bool)

(declare-fun getIndex!106 (List!18022 Rule!6126) Int)

(assert (=> b!1633731 (= c!265882 (< (getIndex!106 rules!1846 (rule!5001 (h!23352 tokens!457))) (getIndex!106 rules!1846 (rule!5001 lt!595310))))))

(declare-fun lt!595296 () Unit!29278)

(assert (=> b!1633731 (= lt!595296 e!1047731)))

(declare-fun c!265885 () Bool)

(assert (=> b!1633731 (= c!265885 (< (getIndex!106 rules!1846 (rule!5001 lt!595310)) (getIndex!106 rules!1846 (rule!5001 (h!23352 tokens!457)))))))

(declare-fun lt!595317 () Unit!29278)

(assert (=> b!1633731 (= lt!595317 e!1047733)))

(declare-fun c!265880 () Bool)

(assert (=> b!1633731 (= c!265880 (= (getIndex!106 rules!1846 (rule!5001 lt!595310)) (getIndex!106 rules!1846 (rule!5001 (h!23352 tokens!457)))))))

(declare-fun lt!595332 () Unit!29278)

(assert (=> b!1633731 (= lt!595332 e!1047735)))

(assert (=> b!1633731 false))

(declare-fun b!1633723 () Bool)

(declare-fun Unit!29316 () Unit!29278)

(assert (=> b!1633723 (= e!1047735 Unit!29316)))

(declare-fun d!492024 () Bool)

(assert (=> d!492024 (= (maxPrefix!1356 thiss!17113 rules!1846 (++!4799 (list!7067 (charsOf!1812 (h!23352 tokens!457))) lt!595030)) (Some!3358 (tuple2!17565 (h!23352 tokens!457) lt!595030)))))

(declare-fun lt!595281 () Unit!29278)

(declare-fun Unit!29317 () Unit!29278)

(assert (=> d!492024 (= lt!595281 Unit!29317)))

(declare-fun lt!595280 () Unit!29278)

(assert (=> d!492024 (= lt!595280 e!1047736)))

(declare-fun c!265883 () Bool)

(assert (=> d!492024 (= c!265883 (not (= (rule!5001 lt!595310) (rule!5001 (h!23352 tokens!457)))))))

(declare-fun lt!595286 () Unit!29278)

(declare-fun lt!595313 () Unit!29278)

(assert (=> d!492024 (= lt!595286 lt!595313)))

(assert (=> d!492024 (= lt!595030 lt!595346)))

(assert (=> d!492024 (= lt!595313 (lemmaSamePrefixThenSameSuffix!660 (list!7067 (charsOf!1812 (h!23352 tokens!457))) lt!595030 (list!7067 (charsOf!1812 (h!23352 tokens!457))) lt!595346 lt!595325))))

(declare-fun lt!595327 () Unit!29278)

(declare-fun lt!595279 () Unit!29278)

(assert (=> d!492024 (= lt!595327 lt!595279)))

(declare-fun lt!595321 () List!18020)

(declare-fun lt!595331 () List!18020)

(assert (=> d!492024 (= lt!595321 lt!595331)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!161 (List!18020 List!18020 List!18020) Unit!29278)

(assert (=> d!492024 (= lt!595279 (lemmaIsPrefixSameLengthThenSameList!161 lt!595321 lt!595331 lt!595325))))

(assert (=> d!492024 (= lt!595331 (list!7067 (charsOf!1812 (h!23352 tokens!457))))))

(assert (=> d!492024 (= lt!595321 (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun lt!595290 () Unit!29278)

(assert (=> d!492024 (= lt!595290 e!1047737)))

(declare-fun c!265881 () Bool)

(assert (=> d!492024 (= c!265881 (< (size!14334 (charsOf!1812 lt!595310)) (size!14334 (charsOf!1812 (h!23352 tokens!457)))))))

(declare-fun lt!595291 () Unit!29278)

(assert (=> d!492024 (= lt!595291 e!1047734)))

(declare-fun c!265884 () Bool)

(assert (=> d!492024 (= c!265884 (> (size!14334 (charsOf!1812 lt!595310)) (size!14334 (charsOf!1812 (h!23352 tokens!457)))))))

(declare-fun lt!595318 () Unit!29278)

(declare-fun lt!595342 () Unit!29278)

(assert (=> d!492024 (= lt!595318 lt!595342)))

(assert (=> d!492024 (matchR!1990 (rulesRegex!553 thiss!17113 rules!1846) (list!7067 (charsOf!1812 (h!23352 tokens!457))))))

(assert (=> d!492024 (= lt!595342 (lemmaMaxPrefixThenMatchesRulesRegex!38 thiss!17113 rules!1846 (list!7067 (charsOf!1812 (h!23352 tokens!457))) (h!23352 tokens!457) (rule!5001 (h!23352 tokens!457)) Nil!17950))))

(declare-fun lt!595303 () Unit!29278)

(declare-fun lt!595294 () Unit!29278)

(assert (=> d!492024 (= lt!595303 lt!595294)))

(declare-fun lt!595343 () List!18020)

(assert (=> d!492024 (= lt!595346 lt!595343)))

(declare-fun lt!595314 () List!18020)

(declare-fun lt!595301 () List!18020)

(assert (=> d!492024 (= lt!595294 (lemmaSamePrefixThenSameSuffix!660 lt!595301 lt!595346 lt!595314 lt!595343 lt!595325))))

(assert (=> d!492024 (= lt!595343 (getSuffix!708 lt!595325 (list!7067 (charsOf!1812 lt!595310))))))

(assert (=> d!492024 (= lt!595314 (list!7067 (charsOf!1812 lt!595310)))))

(assert (=> d!492024 (= lt!595301 (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun lt!595323 () Unit!29278)

(declare-fun lt!595316 () Unit!29278)

(assert (=> d!492024 (= lt!595323 lt!595316)))

(declare-fun lt!595322 () List!18020)

(declare-fun maxPrefixOneRule!785 (LexerInterface!2792 Rule!6126 List!18020) Option!3359)

(declare-fun apply!4630 (TokenValueInjection!6166 BalanceConc!11892) TokenValue!3253)

(assert (=> d!492024 (= (maxPrefixOneRule!785 thiss!17113 (rule!5001 lt!595310) lt!595325) (Some!3358 (tuple2!17565 (Token!5893 (apply!4630 (transformation!3163 (rule!5001 lt!595310)) (seqFromList!2075 lt!595322)) (rule!5001 lt!595310) (size!14332 lt!595322) lt!595322) lt!595346)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!227 (LexerInterface!2792 List!18022 List!18020 List!18020 List!18020 Rule!6126) Unit!29278)

(assert (=> d!492024 (= lt!595316 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!227 thiss!17113 rules!1846 lt!595322 lt!595325 lt!595346 (rule!5001 lt!595310)))))

(assert (=> d!492024 (= lt!595322 (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun lt!595333 () Unit!29278)

(declare-fun lemmaCharactersSize!333 (Token!5892) Unit!29278)

(assert (=> d!492024 (= lt!595333 (lemmaCharactersSize!333 lt!595310))))

(declare-fun lt!595309 () Unit!29278)

(declare-fun lemmaEqSameImage!186 (TokenValueInjection!6166 BalanceConc!11892 BalanceConc!11892) Unit!29278)

(assert (=> d!492024 (= lt!595309 (lemmaEqSameImage!186 (transformation!3163 (rule!5001 lt!595310)) (charsOf!1812 lt!595310) (seqFromList!2075 (originalCharacters!3977 lt!595310))))))

(declare-fun lt!595311 () Unit!29278)

(declare-fun lemmaSemiInverse!401 (TokenValueInjection!6166 BalanceConc!11892) Unit!29278)

(assert (=> d!492024 (= lt!595311 (lemmaSemiInverse!401 (transformation!3163 (rule!5001 lt!595310)) (charsOf!1812 lt!595310)))))

(declare-fun lt!595302 () Unit!29278)

(declare-fun lemmaInv!466 (TokenValueInjection!6166) Unit!29278)

(assert (=> d!492024 (= lt!595302 (lemmaInv!466 (transformation!3163 (rule!5001 lt!595310))))))

(declare-fun lt!595289 () Unit!29278)

(declare-fun lt!595282 () Unit!29278)

(assert (=> d!492024 (= lt!595289 lt!595282)))

(declare-fun lt!595328 () List!18020)

(assert (=> d!492024 (isPrefix!1423 lt!595328 (++!4799 lt!595328 lt!595346))))

(assert (=> d!492024 (= lt!595282 (lemmaConcatTwoListThenFirstIsPrefix!948 lt!595328 lt!595346))))

(assert (=> d!492024 (= lt!595328 (list!7067 (charsOf!1812 lt!595310)))))

(declare-fun lt!595277 () Unit!29278)

(declare-fun lt!595340 () Unit!29278)

(assert (=> d!492024 (= lt!595277 lt!595340)))

(assert (=> d!492024 e!1047732))

(declare-fun res!731227 () Bool)

(assert (=> d!492024 (=> (not res!731227) (not e!1047732))))

(declare-fun isDefined!2729 (Option!3362) Bool)

(assert (=> d!492024 (= res!731227 (isDefined!2729 (getRuleFromTag!294 thiss!17113 rules!1846 (tag!3443 (rule!5001 lt!595310)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!294 (LexerInterface!2792 List!18022 List!18020 Token!5892) Unit!29278)

(assert (=> d!492024 (= lt!595340 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!294 thiss!17113 rules!1846 lt!595325 lt!595310))))

(declare-fun lt!595292 () Option!3359)

(assert (=> d!492024 (= lt!595346 (_2!10184 (get!5193 lt!595292)))))

(assert (=> d!492024 (= lt!595310 (_1!10184 (get!5193 lt!595292)))))

(declare-fun lt!595285 () Unit!29278)

(assert (=> d!492024 (= lt!595285 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!366 thiss!17113 rules!1846 (list!7067 (charsOf!1812 (h!23352 tokens!457))) lt!595030))))

(assert (=> d!492024 (= lt!595292 (maxPrefix!1356 thiss!17113 rules!1846 lt!595325))))

(declare-fun lt!595284 () Unit!29278)

(declare-fun lt!595315 () Unit!29278)

(assert (=> d!492024 (= lt!595284 lt!595315)))

(declare-fun lt!595308 () List!18020)

(assert (=> d!492024 (isPrefix!1423 lt!595308 (++!4799 lt!595308 lt!595030))))

(assert (=> d!492024 (= lt!595315 (lemmaConcatTwoListThenFirstIsPrefix!948 lt!595308 lt!595030))))

(assert (=> d!492024 (= lt!595308 (list!7067 (charsOf!1812 (h!23352 tokens!457))))))

(assert (=> d!492024 (= lt!595325 (++!4799 (list!7067 (charsOf!1812 (h!23352 tokens!457))) lt!595030))))

(assert (=> d!492024 (not (isEmpty!10983 rules!1846))))

(assert (=> d!492024 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!128 thiss!17113 rules!1846 (h!23352 tokens!457) (rule!5001 (h!23352 tokens!457)) lt!595030) lt!595281)))

(declare-fun b!1633732 () Bool)

(declare-fun Unit!29318 () Unit!29278)

(assert (=> b!1633732 (= e!1047736 Unit!29318)))

(declare-fun b!1633733 () Bool)

(declare-fun Unit!29319 () Unit!29278)

(assert (=> b!1633733 (= e!1047733 Unit!29319)))

(assert (= (and d!492024 res!731227) b!1633729))

(assert (= (and b!1633729 res!731228) b!1633722))

(assert (= (and d!492024 c!265884) b!1633725))

(assert (= (and d!492024 (not c!265884)) b!1633730))

(assert (= (and d!492024 c!265881) b!1633728))

(assert (= (and d!492024 (not c!265881)) b!1633720))

(assert (= (and d!492024 c!265883) b!1633731))

(assert (= (and d!492024 (not c!265883)) b!1633732))

(assert (= (and b!1633731 c!265882) b!1633721))

(assert (= (and b!1633731 (not c!265882)) b!1633724))

(assert (= (and b!1633731 c!265885) b!1633726))

(assert (= (and b!1633731 (not c!265885)) b!1633733))

(assert (= (and b!1633731 c!265880) b!1633727))

(assert (= (and b!1633731 (not c!265880)) b!1633723))

(declare-fun m!1968795 () Bool)

(assert (=> b!1633722 m!1968795))

(assert (=> b!1633722 m!1968795))

(declare-fun m!1968797 () Bool)

(assert (=> b!1633722 m!1968797))

(declare-fun m!1968799 () Bool)

(assert (=> b!1633726 m!1968799))

(assert (=> b!1633726 m!1968557))

(assert (=> b!1633726 m!1968557))

(declare-fun m!1968801 () Bool)

(assert (=> b!1633726 m!1968801))

(assert (=> b!1633726 m!1968801))

(declare-fun m!1968803 () Bool)

(assert (=> b!1633726 m!1968803))

(declare-fun m!1968805 () Bool)

(assert (=> b!1633729 m!1968805))

(declare-fun m!1968807 () Bool)

(assert (=> b!1633729 m!1968807))

(assert (=> b!1633729 m!1968805))

(assert (=> b!1633729 m!1968795))

(assert (=> b!1633729 m!1968807))

(declare-fun m!1968809 () Bool)

(assert (=> b!1633729 m!1968809))

(assert (=> b!1633729 m!1968795))

(assert (=> b!1633729 m!1968797))

(assert (=> b!1633728 m!1968805))

(assert (=> b!1633728 m!1968807))

(assert (=> b!1633728 m!1968805))

(assert (=> b!1633728 m!1968557))

(assert (=> b!1633728 m!1968801))

(declare-fun m!1968811 () Bool)

(assert (=> b!1633728 m!1968811))

(declare-fun m!1968813 () Bool)

(assert (=> b!1633728 m!1968813))

(assert (=> b!1633728 m!1968557))

(declare-fun m!1968815 () Bool)

(assert (=> b!1633731 m!1968815))

(declare-fun m!1968817 () Bool)

(assert (=> b!1633731 m!1968817))

(declare-fun m!1968819 () Bool)

(assert (=> b!1633727 m!1968819))

(declare-fun m!1968821 () Bool)

(assert (=> d!492024 m!1968821))

(assert (=> d!492024 m!1968805))

(assert (=> d!492024 m!1968807))

(declare-fun m!1968823 () Bool)

(assert (=> d!492024 m!1968823))

(assert (=> d!492024 m!1968807))

(declare-fun m!1968825 () Bool)

(assert (=> d!492024 m!1968825))

(assert (=> d!492024 m!1968805))

(declare-fun m!1968827 () Bool)

(assert (=> d!492024 m!1968827))

(assert (=> d!492024 m!1968795))

(declare-fun m!1968829 () Bool)

(assert (=> d!492024 m!1968829))

(assert (=> d!492024 m!1968801))

(assert (=> d!492024 m!1968801))

(declare-fun m!1968831 () Bool)

(assert (=> d!492024 m!1968831))

(assert (=> d!492024 m!1968615))

(assert (=> d!492024 m!1968801))

(declare-fun m!1968833 () Bool)

(assert (=> d!492024 m!1968833))

(declare-fun m!1968835 () Bool)

(assert (=> d!492024 m!1968835))

(declare-fun m!1968837 () Bool)

(assert (=> d!492024 m!1968837))

(assert (=> d!492024 m!1968801))

(declare-fun m!1968839 () Bool)

(assert (=> d!492024 m!1968839))

(assert (=> d!492024 m!1968801))

(declare-fun m!1968841 () Bool)

(assert (=> d!492024 m!1968841))

(declare-fun m!1968843 () Bool)

(assert (=> d!492024 m!1968843))

(declare-fun m!1968845 () Bool)

(assert (=> d!492024 m!1968845))

(declare-fun m!1968847 () Bool)

(assert (=> d!492024 m!1968847))

(declare-fun m!1968849 () Bool)

(assert (=> d!492024 m!1968849))

(declare-fun m!1968851 () Bool)

(assert (=> d!492024 m!1968851))

(assert (=> d!492024 m!1968833))

(declare-fun m!1968853 () Bool)

(assert (=> d!492024 m!1968853))

(assert (=> d!492024 m!1968805))

(assert (=> d!492024 m!1968851))

(declare-fun m!1968855 () Bool)

(assert (=> d!492024 m!1968855))

(assert (=> d!492024 m!1968557))

(declare-fun m!1968857 () Bool)

(assert (=> d!492024 m!1968857))

(declare-fun m!1968859 () Bool)

(assert (=> d!492024 m!1968859))

(assert (=> d!492024 m!1968535))

(declare-fun m!1968861 () Bool)

(assert (=> d!492024 m!1968861))

(assert (=> d!492024 m!1968795))

(declare-fun m!1968863 () Bool)

(assert (=> d!492024 m!1968863))

(declare-fun m!1968865 () Bool)

(assert (=> d!492024 m!1968865))

(assert (=> d!492024 m!1968557))

(assert (=> d!492024 m!1968801))

(declare-fun m!1968867 () Bool)

(assert (=> d!492024 m!1968867))

(declare-fun m!1968869 () Bool)

(assert (=> d!492024 m!1968869))

(declare-fun m!1968871 () Bool)

(assert (=> d!492024 m!1968871))

(assert (=> d!492024 m!1968835))

(assert (=> d!492024 m!1968805))

(assert (=> d!492024 m!1968865))

(declare-fun m!1968873 () Bool)

(assert (=> d!492024 m!1968873))

(assert (=> d!492024 m!1968805))

(declare-fun m!1968875 () Bool)

(assert (=> d!492024 m!1968875))

(assert (=> d!492024 m!1968615))

(assert (=> d!492024 m!1968801))

(declare-fun m!1968877 () Bool)

(assert (=> d!492024 m!1968877))

(assert (=> d!492024 m!1968557))

(assert (=> d!492024 m!1968869))

(declare-fun m!1968879 () Bool)

(assert (=> d!492024 m!1968879))

(declare-fun m!1968881 () Bool)

(assert (=> d!492024 m!1968881))

(declare-fun m!1968883 () Bool)

(assert (=> b!1633721 m!1968883))

(declare-fun m!1968885 () Bool)

(assert (=> b!1633721 m!1968885))

(assert (=> b!1633721 m!1968805))

(assert (=> b!1633721 m!1968805))

(assert (=> b!1633721 m!1968807))

(declare-fun m!1968887 () Bool)

(assert (=> b!1633725 m!1968887))

(assert (=> b!1633725 m!1968805))

(assert (=> b!1633725 m!1968807))

(assert (=> b!1633725 m!1968805))

(declare-fun m!1968889 () Bool)

(assert (=> b!1633725 m!1968889))

(declare-fun m!1968891 () Bool)

(assert (=> b!1633725 m!1968891))

(declare-fun m!1968893 () Bool)

(assert (=> b!1633725 m!1968893))

(declare-fun m!1968895 () Bool)

(assert (=> b!1633725 m!1968895))

(assert (=> b!1633725 m!1968629))

(assert (=> b!1633725 m!1968891))

(declare-fun m!1968897 () Bool)

(assert (=> b!1633725 m!1968897))

(assert (=> b!1633725 m!1968615))

(assert (=> b!1633725 m!1968807))

(declare-fun m!1968899 () Bool)

(assert (=> b!1633725 m!1968899))

(declare-fun m!1968901 () Bool)

(assert (=> b!1633725 m!1968901))

(assert (=> b!1633725 m!1968893))

(declare-fun m!1968903 () Bool)

(assert (=> b!1633725 m!1968903))

(assert (=> b!1633725 m!1968557))

(assert (=> b!1633725 m!1968801))

(declare-fun m!1968905 () Bool)

(assert (=> b!1633725 m!1968905))

(assert (=> b!1633725 m!1968557))

(assert (=> b!1633725 m!1968801))

(assert (=> b!1633725 m!1968615))

(declare-fun m!1968907 () Bool)

(assert (=> b!1633725 m!1968907))

(declare-fun m!1968909 () Bool)

(assert (=> b!1633725 m!1968909))

(assert (=> b!1633725 m!1968801))

(declare-fun m!1968911 () Bool)

(assert (=> b!1633725 m!1968911))

(declare-fun m!1968913 () Bool)

(assert (=> b!1633725 m!1968913))

(assert (=> b!1633636 d!492024))

(declare-fun d!492034 () Bool)

(assert (=> d!492034 (= (head!3502 (originalCharacters!3977 (h!23352 (t!149604 tokens!457)))) (h!23351 (originalCharacters!3977 (h!23352 (t!149604 tokens!457)))))))

(assert (=> b!1633615 d!492034))

(declare-fun b!1633744 () Bool)

(declare-fun e!1047745 () Bool)

(declare-fun e!1047746 () Bool)

(assert (=> b!1633744 (= e!1047745 e!1047746)))

(declare-fun c!265890 () Bool)

(assert (=> b!1633744 (= c!265890 ((_ is IntegerValue!9760) (value!99818 (h!23352 tokens!457))))))

(declare-fun b!1633745 () Bool)

(declare-fun inv!17 (TokenValue!3253) Bool)

(assert (=> b!1633745 (= e!1047746 (inv!17 (value!99818 (h!23352 tokens!457))))))

(declare-fun b!1633746 () Bool)

(declare-fun e!1047744 () Bool)

(declare-fun inv!15 (TokenValue!3253) Bool)

(assert (=> b!1633746 (= e!1047744 (inv!15 (value!99818 (h!23352 tokens!457))))))

(declare-fun b!1633747 () Bool)

(declare-fun inv!16 (TokenValue!3253) Bool)

(assert (=> b!1633747 (= e!1047745 (inv!16 (value!99818 (h!23352 tokens!457))))))

(declare-fun d!492036 () Bool)

(declare-fun c!265891 () Bool)

(assert (=> d!492036 (= c!265891 ((_ is IntegerValue!9759) (value!99818 (h!23352 tokens!457))))))

(assert (=> d!492036 (= (inv!21 (value!99818 (h!23352 tokens!457))) e!1047745)))

(declare-fun b!1633748 () Bool)

(declare-fun res!731231 () Bool)

(assert (=> b!1633748 (=> res!731231 e!1047744)))

(assert (=> b!1633748 (= res!731231 (not ((_ is IntegerValue!9761) (value!99818 (h!23352 tokens!457)))))))

(assert (=> b!1633748 (= e!1047746 e!1047744)))

(assert (= (and d!492036 c!265891) b!1633747))

(assert (= (and d!492036 (not c!265891)) b!1633744))

(assert (= (and b!1633744 c!265890) b!1633745))

(assert (= (and b!1633744 (not c!265890)) b!1633748))

(assert (= (and b!1633748 (not res!731231)) b!1633746))

(declare-fun m!1968915 () Bool)

(assert (=> b!1633745 m!1968915))

(declare-fun m!1968917 () Bool)

(assert (=> b!1633746 m!1968917))

(declare-fun m!1968919 () Bool)

(assert (=> b!1633747 m!1968919))

(assert (=> b!1633637 d!492036))

(declare-fun d!492038 () Bool)

(declare-fun c!265894 () Bool)

(assert (=> d!492038 (= c!265894 (isEmpty!10982 (++!4799 lt!595017 lt!595039)))))

(declare-fun e!1047749 () Bool)

(assert (=> d!492038 (= (prefixMatch!426 lt!595019 (++!4799 lt!595017 lt!595039)) e!1047749)))

(declare-fun b!1633753 () Bool)

(declare-fun lostCause!447 (Regex!4491) Bool)

(assert (=> b!1633753 (= e!1047749 (not (lostCause!447 lt!595019)))))

(declare-fun b!1633754 () Bool)

(declare-fun derivativeStep!1092 (Regex!4491 C!9156) Regex!4491)

(declare-fun tail!2384 (List!18020) List!18020)

(assert (=> b!1633754 (= e!1047749 (prefixMatch!426 (derivativeStep!1092 lt!595019 (head!3502 (++!4799 lt!595017 lt!595039))) (tail!2384 (++!4799 lt!595017 lt!595039))))))

(assert (= (and d!492038 c!265894) b!1633753))

(assert (= (and d!492038 (not c!265894)) b!1633754))

(assert (=> d!492038 m!1968603))

(declare-fun m!1968921 () Bool)

(assert (=> d!492038 m!1968921))

(declare-fun m!1968923 () Bool)

(assert (=> b!1633753 m!1968923))

(assert (=> b!1633754 m!1968603))

(declare-fun m!1968925 () Bool)

(assert (=> b!1633754 m!1968925))

(assert (=> b!1633754 m!1968925))

(declare-fun m!1968927 () Bool)

(assert (=> b!1633754 m!1968927))

(assert (=> b!1633754 m!1968603))

(declare-fun m!1968929 () Bool)

(assert (=> b!1633754 m!1968929))

(assert (=> b!1633754 m!1968927))

(assert (=> b!1633754 m!1968929))

(declare-fun m!1968931 () Bool)

(assert (=> b!1633754 m!1968931))

(assert (=> b!1633616 d!492038))

(declare-fun b!1633763 () Bool)

(declare-fun e!1047755 () List!18020)

(assert (=> b!1633763 (= e!1047755 lt!595039)))

(declare-fun d!492040 () Bool)

(declare-fun e!1047754 () Bool)

(assert (=> d!492040 e!1047754))

(declare-fun res!731236 () Bool)

(assert (=> d!492040 (=> (not res!731236) (not e!1047754))))

(declare-fun lt!595350 () List!18020)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2488 (List!18020) (InoxSet C!9156))

(assert (=> d!492040 (= res!731236 (= (content!2488 lt!595350) ((_ map or) (content!2488 lt!595017) (content!2488 lt!595039))))))

(assert (=> d!492040 (= lt!595350 e!1047755)))

(declare-fun c!265897 () Bool)

(assert (=> d!492040 (= c!265897 ((_ is Nil!17950) lt!595017))))

(assert (=> d!492040 (= (++!4799 lt!595017 lt!595039) lt!595350)))

(declare-fun b!1633766 () Bool)

(assert (=> b!1633766 (= e!1047754 (or (not (= lt!595039 Nil!17950)) (= lt!595350 lt!595017)))))

(declare-fun b!1633765 () Bool)

(declare-fun res!731237 () Bool)

(assert (=> b!1633765 (=> (not res!731237) (not e!1047754))))

(assert (=> b!1633765 (= res!731237 (= (size!14332 lt!595350) (+ (size!14332 lt!595017) (size!14332 lt!595039))))))

(declare-fun b!1633764 () Bool)

(assert (=> b!1633764 (= e!1047755 (Cons!17950 (h!23351 lt!595017) (++!4799 (t!149603 lt!595017) lt!595039)))))

(assert (= (and d!492040 c!265897) b!1633763))

(assert (= (and d!492040 (not c!265897)) b!1633764))

(assert (= (and d!492040 res!731236) b!1633765))

(assert (= (and b!1633765 res!731237) b!1633766))

(declare-fun m!1968933 () Bool)

(assert (=> d!492040 m!1968933))

(declare-fun m!1968935 () Bool)

(assert (=> d!492040 m!1968935))

(declare-fun m!1968937 () Bool)

(assert (=> d!492040 m!1968937))

(declare-fun m!1968939 () Bool)

(assert (=> b!1633765 m!1968939))

(declare-fun m!1968941 () Bool)

(assert (=> b!1633765 m!1968941))

(declare-fun m!1968943 () Bool)

(assert (=> b!1633765 m!1968943))

(declare-fun m!1968945 () Bool)

(assert (=> b!1633764 m!1968945))

(assert (=> b!1633616 d!492040))

(declare-fun d!492042 () Bool)

(declare-fun res!731240 () Bool)

(declare-fun e!1047758 () Bool)

(assert (=> d!492042 (=> (not res!731240) (not e!1047758))))

(declare-fun rulesValid!1137 (LexerInterface!2792 List!18022) Bool)

(assert (=> d!492042 (= res!731240 (rulesValid!1137 thiss!17113 rules!1846))))

(assert (=> d!492042 (= (rulesInvariant!2461 thiss!17113 rules!1846) e!1047758)))

(declare-fun b!1633769 () Bool)

(declare-datatypes ((List!18023 0))(
  ( (Nil!17953) (Cons!17953 (h!23354 String!20597) (t!149648 List!18023)) )
))
(declare-fun noDuplicateTag!1137 (LexerInterface!2792 List!18022 List!18023) Bool)

(assert (=> b!1633769 (= e!1047758 (noDuplicateTag!1137 thiss!17113 rules!1846 Nil!17953))))

(assert (= (and d!492042 res!731240) b!1633769))

(declare-fun m!1968947 () Bool)

(assert (=> d!492042 m!1968947))

(declare-fun m!1968949 () Bool)

(assert (=> b!1633769 m!1968949))

(assert (=> b!1633638 d!492042))

(declare-fun d!492044 () Bool)

(declare-fun res!731276 () Bool)

(declare-fun e!1047805 () Bool)

(assert (=> d!492044 (=> res!731276 e!1047805)))

(assert (=> d!492044 (= res!731276 (or (not ((_ is Cons!17951) tokens!457)) (not ((_ is Cons!17951) (t!149604 tokens!457)))))))

(assert (=> d!492044 (= (tokensListTwoByTwoPredicateSeparableList!485 thiss!17113 tokens!457 rules!1846) e!1047805)))

(declare-fun b!1633858 () Bool)

(declare-fun e!1047806 () Bool)

(assert (=> b!1633858 (= e!1047805 e!1047806)))

(declare-fun res!731275 () Bool)

(assert (=> b!1633858 (=> (not res!731275) (not e!1047806))))

(assert (=> b!1633858 (= res!731275 (separableTokensPredicate!734 thiss!17113 (h!23352 tokens!457) (h!23352 (t!149604 tokens!457)) rules!1846))))

(declare-fun lt!595582 () Unit!29278)

(declare-fun Unit!29322 () Unit!29278)

(assert (=> b!1633858 (= lt!595582 Unit!29322)))

(assert (=> b!1633858 (> (size!14334 (charsOf!1812 (h!23352 (t!149604 tokens!457)))) 0)))

(declare-fun lt!595587 () Unit!29278)

(declare-fun Unit!29323 () Unit!29278)

(assert (=> b!1633858 (= lt!595587 Unit!29323)))

(assert (=> b!1633858 (rulesProduceIndividualToken!1444 thiss!17113 rules!1846 (h!23352 (t!149604 tokens!457)))))

(declare-fun lt!595586 () Unit!29278)

(declare-fun Unit!29324 () Unit!29278)

(assert (=> b!1633858 (= lt!595586 Unit!29324)))

(assert (=> b!1633858 (rulesProduceIndividualToken!1444 thiss!17113 rules!1846 (h!23352 tokens!457))))

(declare-fun lt!595581 () Unit!29278)

(declare-fun lt!595583 () Unit!29278)

(assert (=> b!1633858 (= lt!595581 lt!595583)))

(assert (=> b!1633858 (rulesProduceIndividualToken!1444 thiss!17113 rules!1846 (h!23352 (t!149604 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!574 (LexerInterface!2792 List!18022 List!18021 Token!5892) Unit!29278)

(assert (=> b!1633858 (= lt!595583 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!574 thiss!17113 rules!1846 tokens!457 (h!23352 (t!149604 tokens!457))))))

(declare-fun lt!595584 () Unit!29278)

(declare-fun lt!595585 () Unit!29278)

(assert (=> b!1633858 (= lt!595584 lt!595585)))

(assert (=> b!1633858 (rulesProduceIndividualToken!1444 thiss!17113 rules!1846 (h!23352 tokens!457))))

(assert (=> b!1633858 (= lt!595585 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!574 thiss!17113 rules!1846 tokens!457 (h!23352 tokens!457)))))

(declare-fun b!1633859 () Bool)

(assert (=> b!1633859 (= e!1047806 (tokensListTwoByTwoPredicateSeparableList!485 thiss!17113 (Cons!17951 (h!23352 (t!149604 tokens!457)) (t!149604 (t!149604 tokens!457))) rules!1846))))

(assert (= (and d!492044 (not res!731276)) b!1633858))

(assert (= (and b!1633858 res!731275) b!1633859))

(declare-fun m!1969085 () Bool)

(assert (=> b!1633858 m!1969085))

(assert (=> b!1633858 m!1968521))

(assert (=> b!1633858 m!1968625))

(declare-fun m!1969087 () Bool)

(assert (=> b!1633858 m!1969087))

(declare-fun m!1969089 () Bool)

(assert (=> b!1633858 m!1969089))

(declare-fun m!1969091 () Bool)

(assert (=> b!1633858 m!1969091))

(assert (=> b!1633858 m!1968579))

(assert (=> b!1633858 m!1968625))

(declare-fun m!1969093 () Bool)

(assert (=> b!1633859 m!1969093))

(assert (=> b!1633633 d!492044))

(declare-fun d!492052 () Bool)

(declare-fun lt!595590 () BalanceConc!11892)

(assert (=> d!492052 (= (list!7067 lt!595590) (printList!907 thiss!17113 (list!7068 (seqFromList!2076 tokens!457))))))

(assert (=> d!492052 (= lt!595590 (printTailRec!845 thiss!17113 (seqFromList!2076 tokens!457) 0 (BalanceConc!11893 Empty!5974)))))

(assert (=> d!492052 (= (print!1323 thiss!17113 (seqFromList!2076 tokens!457)) lt!595590)))

(declare-fun bs!395276 () Bool)

(assert (= bs!395276 d!492052))

(declare-fun m!1969095 () Bool)

(assert (=> bs!395276 m!1969095))

(assert (=> bs!395276 m!1968561))

(declare-fun m!1969097 () Bool)

(assert (=> bs!395276 m!1969097))

(assert (=> bs!395276 m!1969097))

(declare-fun m!1969099 () Bool)

(assert (=> bs!395276 m!1969099))

(assert (=> bs!395276 m!1968561))

(declare-fun m!1969101 () Bool)

(assert (=> bs!395276 m!1969101))

(assert (=> b!1633634 d!492052))

(declare-fun d!492054 () Bool)

(declare-fun list!7070 (Conc!5974) List!18020)

(assert (=> d!492054 (= (list!7067 lt!595034) (list!7070 (c!265860 lt!595034)))))

(declare-fun bs!395277 () Bool)

(assert (= bs!395277 d!492054))

(declare-fun m!1969103 () Bool)

(assert (=> bs!395277 m!1969103))

(assert (=> b!1633634 d!492054))

(declare-fun d!492056 () Bool)

(declare-fun lt!595591 () BalanceConc!11892)

(assert (=> d!492056 (= (list!7067 lt!595591) (printList!907 thiss!17113 (list!7068 lt!595021)))))

(assert (=> d!492056 (= lt!595591 (printTailRec!845 thiss!17113 lt!595021 0 (BalanceConc!11893 Empty!5974)))))

(assert (=> d!492056 (= (print!1323 thiss!17113 lt!595021) lt!595591)))

(declare-fun bs!395278 () Bool)

(assert (= bs!395278 d!492056))

(declare-fun m!1969105 () Bool)

(assert (=> bs!395278 m!1969105))

(assert (=> bs!395278 m!1968585))

(assert (=> bs!395278 m!1968585))

(declare-fun m!1969107 () Bool)

(assert (=> bs!395278 m!1969107))

(declare-fun m!1969109 () Bool)

(assert (=> bs!395278 m!1969109))

(assert (=> b!1633634 d!492056))

(declare-fun b!1633860 () Bool)

(declare-fun res!731277 () Bool)

(declare-fun e!1047808 () Bool)

(assert (=> b!1633860 (=> (not res!731277) (not e!1047808))))

(declare-fun lt!595592 () tuple2!17562)

(assert (=> b!1633860 (= res!731277 (= (list!7068 (_1!10183 lt!595592)) (_1!10186 (lexList!838 thiss!17113 rules!1846 (list!7067 lt!595029)))))))

(declare-fun b!1633861 () Bool)

(declare-fun e!1047809 () Bool)

(declare-fun e!1047807 () Bool)

(assert (=> b!1633861 (= e!1047809 e!1047807)))

(declare-fun res!731279 () Bool)

(assert (=> b!1633861 (= res!731279 (< (size!14334 (_2!10183 lt!595592)) (size!14334 lt!595029)))))

(assert (=> b!1633861 (=> (not res!731279) (not e!1047807))))

(declare-fun d!492058 () Bool)

(assert (=> d!492058 e!1047808))

(declare-fun res!731278 () Bool)

(assert (=> d!492058 (=> (not res!731278) (not e!1047808))))

(assert (=> d!492058 (= res!731278 e!1047809)))

(declare-fun c!265925 () Bool)

(assert (=> d!492058 (= c!265925 (> (size!14335 (_1!10183 lt!595592)) 0))))

(assert (=> d!492058 (= lt!595592 (lexTailRecV2!561 thiss!17113 rules!1846 lt!595029 (BalanceConc!11893 Empty!5974) lt!595029 (BalanceConc!11895 Empty!5975)))))

(assert (=> d!492058 (= (lex!1276 thiss!17113 rules!1846 lt!595029) lt!595592)))

(declare-fun b!1633862 () Bool)

(assert (=> b!1633862 (= e!1047809 (= (_2!10183 lt!595592) lt!595029))))

(declare-fun b!1633863 () Bool)

(assert (=> b!1633863 (= e!1047807 (not (isEmpty!10981 (_1!10183 lt!595592))))))

(declare-fun b!1633864 () Bool)

(assert (=> b!1633864 (= e!1047808 (= (list!7067 (_2!10183 lt!595592)) (_2!10186 (lexList!838 thiss!17113 rules!1846 (list!7067 lt!595029)))))))

(assert (= (and d!492058 c!265925) b!1633861))

(assert (= (and d!492058 (not c!265925)) b!1633862))

(assert (= (and b!1633861 res!731279) b!1633863))

(assert (= (and d!492058 res!731278) b!1633860))

(assert (= (and b!1633860 res!731277) b!1633864))

(declare-fun m!1969111 () Bool)

(assert (=> b!1633864 m!1969111))

(assert (=> b!1633864 m!1968569))

(assert (=> b!1633864 m!1968569))

(declare-fun m!1969113 () Bool)

(assert (=> b!1633864 m!1969113))

(declare-fun m!1969115 () Bool)

(assert (=> b!1633863 m!1969115))

(declare-fun m!1969117 () Bool)

(assert (=> b!1633860 m!1969117))

(assert (=> b!1633860 m!1968569))

(assert (=> b!1633860 m!1968569))

(assert (=> b!1633860 m!1969113))

(declare-fun m!1969119 () Bool)

(assert (=> b!1633861 m!1969119))

(declare-fun m!1969121 () Bool)

(assert (=> b!1633861 m!1969121))

(declare-fun m!1969123 () Bool)

(assert (=> d!492058 m!1969123))

(declare-fun m!1969125 () Bool)

(assert (=> d!492058 m!1969125))

(assert (=> b!1633634 d!492058))

(declare-fun d!492060 () Bool)

(declare-fun fromListB!914 (List!18021) BalanceConc!11894)

(assert (=> d!492060 (= (seqFromList!2076 tokens!457) (fromListB!914 tokens!457))))

(declare-fun bs!395279 () Bool)

(assert (= bs!395279 d!492060))

(declare-fun m!1969127 () Bool)

(assert (=> bs!395279 m!1969127))

(assert (=> b!1633634 d!492060))

(declare-fun d!492062 () Bool)

(declare-fun lt!595595 () BalanceConc!11892)

(assert (=> d!492062 (= (list!7067 lt!595595) (originalCharacters!3977 (h!23352 tokens!457)))))

(assert (=> d!492062 (= lt!595595 (dynLambda!8002 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (value!99818 (h!23352 tokens!457))))))

(assert (=> d!492062 (= (charsOf!1812 (h!23352 tokens!457)) lt!595595)))

(declare-fun b_lambda!51391 () Bool)

(assert (=> (not b_lambda!51391) (not d!492062)))

(assert (=> d!492062 t!149607))

(declare-fun b_and!115841 () Bool)

(assert (= b_and!115837 (and (=> t!149607 result!113046) b_and!115841)))

(assert (=> d!492062 t!149609))

(declare-fun b_and!115843 () Bool)

(assert (= b_and!115839 (and (=> t!149609 result!113050) b_and!115843)))

(declare-fun m!1969129 () Bool)

(assert (=> d!492062 m!1969129))

(assert (=> d!492062 m!1968663))

(assert (=> b!1633634 d!492062))

(declare-fun d!492064 () Bool)

(assert (=> d!492064 (= (list!7067 lt!595028) (list!7070 (c!265860 lt!595028)))))

(declare-fun bs!395280 () Bool)

(assert (= bs!395280 d!492064))

(declare-fun m!1969131 () Bool)

(assert (=> bs!395280 m!1969131))

(assert (=> b!1633634 d!492064))

(declare-fun d!492066 () Bool)

(assert (=> d!492066 (= (list!7067 lt!595029) (list!7070 (c!265860 lt!595029)))))

(declare-fun bs!395281 () Bool)

(assert (= bs!395281 d!492066))

(declare-fun m!1969133 () Bool)

(assert (=> bs!395281 m!1969133))

(assert (=> b!1633634 d!492066))

(declare-fun d!492068 () Bool)

(assert (=> d!492068 (= (seqFromList!2076 (t!149604 tokens!457)) (fromListB!914 (t!149604 tokens!457)))))

(declare-fun bs!395282 () Bool)

(assert (= bs!395282 d!492068))

(declare-fun m!1969135 () Bool)

(assert (=> bs!395282 m!1969135))

(assert (=> b!1633634 d!492068))

(declare-fun b!1633865 () Bool)

(declare-fun e!1047811 () List!18020)

(assert (=> b!1633865 (= e!1047811 lt!595030)))

(declare-fun d!492070 () Bool)

(declare-fun e!1047810 () Bool)

(assert (=> d!492070 e!1047810))

(declare-fun res!731280 () Bool)

(assert (=> d!492070 (=> (not res!731280) (not e!1047810))))

(declare-fun lt!595596 () List!18020)

(assert (=> d!492070 (= res!731280 (= (content!2488 lt!595596) ((_ map or) (content!2488 lt!595017) (content!2488 lt!595030))))))

(assert (=> d!492070 (= lt!595596 e!1047811)))

(declare-fun c!265926 () Bool)

(assert (=> d!492070 (= c!265926 ((_ is Nil!17950) lt!595017))))

(assert (=> d!492070 (= (++!4799 lt!595017 lt!595030) lt!595596)))

(declare-fun b!1633868 () Bool)

(assert (=> b!1633868 (= e!1047810 (or (not (= lt!595030 Nil!17950)) (= lt!595596 lt!595017)))))

(declare-fun b!1633867 () Bool)

(declare-fun res!731281 () Bool)

(assert (=> b!1633867 (=> (not res!731281) (not e!1047810))))

(assert (=> b!1633867 (= res!731281 (= (size!14332 lt!595596) (+ (size!14332 lt!595017) (size!14332 lt!595030))))))

(declare-fun b!1633866 () Bool)

(assert (=> b!1633866 (= e!1047811 (Cons!17950 (h!23351 lt!595017) (++!4799 (t!149603 lt!595017) lt!595030)))))

(assert (= (and d!492070 c!265926) b!1633865))

(assert (= (and d!492070 (not c!265926)) b!1633866))

(assert (= (and d!492070 res!731280) b!1633867))

(assert (= (and b!1633867 res!731281) b!1633868))

(declare-fun m!1969137 () Bool)

(assert (=> d!492070 m!1969137))

(assert (=> d!492070 m!1968935))

(declare-fun m!1969139 () Bool)

(assert (=> d!492070 m!1969139))

(declare-fun m!1969141 () Bool)

(assert (=> b!1633867 m!1969141))

(assert (=> b!1633867 m!1968941))

(declare-fun m!1969143 () Bool)

(assert (=> b!1633867 m!1969143))

(declare-fun m!1969145 () Bool)

(assert (=> b!1633866 m!1969145))

(assert (=> b!1633634 d!492070))

(declare-fun d!492072 () Bool)

(assert (=> d!492072 (= (inv!23310 (tag!3443 (rule!5001 (h!23352 tokens!457)))) (= (mod (str.len (value!99817 (tag!3443 (rule!5001 (h!23352 tokens!457))))) 2) 0))))

(assert (=> b!1633613 d!492072))

(declare-fun d!492074 () Bool)

(declare-fun res!731284 () Bool)

(declare-fun e!1047814 () Bool)

(assert (=> d!492074 (=> (not res!731284) (not e!1047814))))

(declare-fun semiInverseModEq!1209 (Int Int) Bool)

(assert (=> d!492074 (= res!731284 (semiInverseModEq!1209 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (toValue!4594 (transformation!3163 (rule!5001 (h!23352 tokens!457))))))))

(assert (=> d!492074 (= (inv!23313 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) e!1047814)))

(declare-fun b!1633871 () Bool)

(declare-fun equivClasses!1150 (Int Int) Bool)

(assert (=> b!1633871 (= e!1047814 (equivClasses!1150 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (toValue!4594 (transformation!3163 (rule!5001 (h!23352 tokens!457))))))))

(assert (= (and d!492074 res!731284) b!1633871))

(declare-fun m!1969147 () Bool)

(assert (=> d!492074 m!1969147))

(declare-fun m!1969149 () Bool)

(assert (=> b!1633871 m!1969149))

(assert (=> b!1633613 d!492074))

(declare-fun d!492076 () Bool)

(declare-fun isEmpty!10991 (Option!3359) Bool)

(assert (=> d!492076 (= (isDefined!2726 lt!595037) (not (isEmpty!10991 lt!595037)))))

(declare-fun bs!395283 () Bool)

(assert (= bs!395283 d!492076))

(declare-fun m!1969151 () Bool)

(assert (=> bs!395283 m!1969151))

(assert (=> b!1633635 d!492076))

(declare-fun b!1633894 () Bool)

(declare-fun e!1047826 () Unit!29278)

(declare-fun Unit!29325 () Unit!29278)

(assert (=> b!1633894 (= e!1047826 Unit!29325)))

(declare-fun lt!595685 () List!18020)

(assert (=> b!1633894 (= lt!595685 (++!4799 lt!595017 lt!595030))))

(declare-fun lt!595691 () Token!5892)

(declare-fun lt!595687 () Unit!29278)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!188 (LexerInterface!2792 Rule!6126 List!18022 List!18020) Unit!29278)

(assert (=> b!1633894 (= lt!595687 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!188 thiss!17113 (rule!5001 lt!595691) rules!1846 lt!595685))))

(assert (=> b!1633894 (isEmpty!10991 (maxPrefixOneRule!785 thiss!17113 (rule!5001 lt!595691) lt!595685))))

(declare-fun lt!595690 () Unit!29278)

(assert (=> b!1633894 (= lt!595690 lt!595687)))

(declare-fun lt!595686 () List!18020)

(assert (=> b!1633894 (= lt!595686 (list!7067 (charsOf!1812 lt!595691)))))

(declare-fun lt!595682 () Unit!29278)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!184 (LexerInterface!2792 Rule!6126 List!18020 List!18020) Unit!29278)

(assert (=> b!1633894 (= lt!595682 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!184 thiss!17113 (rule!5001 lt!595691) lt!595686 (++!4799 lt!595017 lt!595030)))))

(assert (=> b!1633894 (not (matchR!1990 (regex!3163 (rule!5001 lt!595691)) lt!595686))))

(declare-fun lt!595692 () Unit!29278)

(assert (=> b!1633894 (= lt!595692 lt!595682)))

(assert (=> b!1633894 false))

(declare-fun b!1633895 () Bool)

(declare-fun Unit!29326 () Unit!29278)

(assert (=> b!1633895 (= e!1047826 Unit!29326)))

(declare-fun b!1633892 () Bool)

(declare-fun res!731295 () Bool)

(declare-fun e!1047825 () Bool)

(assert (=> b!1633892 (=> (not res!731295) (not e!1047825))))

(assert (=> b!1633892 (= res!731295 (matchR!1990 (regex!3163 (get!5195 (getRuleFromTag!294 thiss!17113 rules!1846 (tag!3443 (rule!5001 lt!595691))))) (list!7067 (charsOf!1812 lt!595691))))))

(declare-fun b!1633893 () Bool)

(assert (=> b!1633893 (= e!1047825 (= (rule!5001 lt!595691) (get!5195 (getRuleFromTag!294 thiss!17113 rules!1846 (tag!3443 (rule!5001 lt!595691))))))))

(declare-fun d!492078 () Bool)

(assert (=> d!492078 (isDefined!2726 (maxPrefix!1356 thiss!17113 rules!1846 (++!4799 lt!595017 lt!595030)))))

(declare-fun lt!595698 () Unit!29278)

(assert (=> d!492078 (= lt!595698 e!1047826)))

(declare-fun c!265932 () Bool)

(assert (=> d!492078 (= c!265932 (isEmpty!10991 (maxPrefix!1356 thiss!17113 rules!1846 (++!4799 lt!595017 lt!595030))))))

(declare-fun lt!595693 () Unit!29278)

(declare-fun lt!595695 () Unit!29278)

(assert (=> d!492078 (= lt!595693 lt!595695)))

(assert (=> d!492078 e!1047825))

(declare-fun res!731296 () Bool)

(assert (=> d!492078 (=> (not res!731296) (not e!1047825))))

(assert (=> d!492078 (= res!731296 (isDefined!2729 (getRuleFromTag!294 thiss!17113 rules!1846 (tag!3443 (rule!5001 lt!595691)))))))

(assert (=> d!492078 (= lt!595695 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!294 thiss!17113 rules!1846 lt!595017 lt!595691))))

(declare-fun lt!595694 () Unit!29278)

(declare-fun lt!595689 () Unit!29278)

(assert (=> d!492078 (= lt!595694 lt!595689)))

(declare-fun lt!595688 () List!18020)

(assert (=> d!492078 (isPrefix!1423 lt!595688 (++!4799 lt!595017 lt!595030))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!180 (List!18020 List!18020 List!18020) Unit!29278)

(assert (=> d!492078 (= lt!595689 (lemmaPrefixStaysPrefixWhenAddingToSuffix!180 lt!595688 lt!595017 lt!595030))))

(assert (=> d!492078 (= lt!595688 (list!7067 (charsOf!1812 lt!595691)))))

(declare-fun lt!595697 () Unit!29278)

(declare-fun lt!595683 () Unit!29278)

(assert (=> d!492078 (= lt!595697 lt!595683)))

(declare-fun lt!595696 () List!18020)

(declare-fun lt!595684 () List!18020)

(assert (=> d!492078 (isPrefix!1423 lt!595696 (++!4799 lt!595696 lt!595684))))

(assert (=> d!492078 (= lt!595683 (lemmaConcatTwoListThenFirstIsPrefix!948 lt!595696 lt!595684))))

(assert (=> d!492078 (= lt!595684 (_2!10184 (get!5193 (maxPrefix!1356 thiss!17113 rules!1846 lt!595017))))))

(assert (=> d!492078 (= lt!595696 (list!7067 (charsOf!1812 lt!595691)))))

(declare-fun head!3506 (List!18021) Token!5892)

(assert (=> d!492078 (= lt!595691 (head!3506 (list!7068 (_1!10183 (lex!1276 thiss!17113 rules!1846 (seqFromList!2075 lt!595017))))))))

(assert (=> d!492078 (not (isEmpty!10983 rules!1846))))

(assert (=> d!492078 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!366 thiss!17113 rules!1846 lt!595017 lt!595030) lt!595698)))

(assert (= (and d!492078 res!731296) b!1633892))

(assert (= (and b!1633892 res!731295) b!1633893))

(assert (= (and d!492078 c!265932) b!1633894))

(assert (= (and d!492078 (not c!265932)) b!1633895))

(assert (=> b!1633894 m!1968567))

(declare-fun m!1969199 () Bool)

(assert (=> b!1633894 m!1969199))

(assert (=> b!1633894 m!1969199))

(declare-fun m!1969201 () Bool)

(assert (=> b!1633894 m!1969201))

(declare-fun m!1969203 () Bool)

(assert (=> b!1633894 m!1969203))

(assert (=> b!1633894 m!1969203))

(declare-fun m!1969205 () Bool)

(assert (=> b!1633894 m!1969205))

(assert (=> b!1633894 m!1968567))

(declare-fun m!1969207 () Bool)

(assert (=> b!1633894 m!1969207))

(declare-fun m!1969209 () Bool)

(assert (=> b!1633894 m!1969209))

(declare-fun m!1969211 () Bool)

(assert (=> b!1633894 m!1969211))

(assert (=> b!1633892 m!1969205))

(declare-fun m!1969213 () Bool)

(assert (=> b!1633892 m!1969213))

(assert (=> b!1633892 m!1969203))

(declare-fun m!1969215 () Bool)

(assert (=> b!1633892 m!1969215))

(assert (=> b!1633892 m!1969203))

(assert (=> b!1633892 m!1969205))

(assert (=> b!1633892 m!1969215))

(declare-fun m!1969217 () Bool)

(assert (=> b!1633892 m!1969217))

(assert (=> b!1633893 m!1969215))

(assert (=> b!1633893 m!1969215))

(assert (=> b!1633893 m!1969217))

(assert (=> d!492078 m!1968675))

(assert (=> d!492078 m!1968567))

(declare-fun m!1969219 () Bool)

(assert (=> d!492078 m!1969219))

(assert (=> d!492078 m!1968535))

(assert (=> d!492078 m!1968639))

(assert (=> d!492078 m!1969215))

(assert (=> d!492078 m!1969203))

(assert (=> d!492078 m!1969205))

(declare-fun m!1969221 () Bool)

(assert (=> d!492078 m!1969221))

(assert (=> d!492078 m!1968525))

(assert (=> d!492078 m!1968527))

(assert (=> d!492078 m!1968567))

(assert (=> d!492078 m!1968675))

(declare-fun m!1969223 () Bool)

(assert (=> d!492078 m!1969223))

(assert (=> d!492078 m!1969219))

(declare-fun m!1969225 () Bool)

(assert (=> d!492078 m!1969225))

(assert (=> d!492078 m!1968639))

(declare-fun m!1969227 () Bool)

(assert (=> d!492078 m!1969227))

(declare-fun m!1969229 () Bool)

(assert (=> d!492078 m!1969229))

(assert (=> d!492078 m!1968567))

(declare-fun m!1969231 () Bool)

(assert (=> d!492078 m!1969231))

(assert (=> d!492078 m!1969215))

(declare-fun m!1969233 () Bool)

(assert (=> d!492078 m!1969233))

(assert (=> d!492078 m!1968525))

(assert (=> d!492078 m!1969219))

(declare-fun m!1969235 () Bool)

(assert (=> d!492078 m!1969235))

(assert (=> d!492078 m!1969221))

(declare-fun m!1969237 () Bool)

(assert (=> d!492078 m!1969237))

(declare-fun m!1969239 () Bool)

(assert (=> d!492078 m!1969239))

(declare-fun m!1969241 () Bool)

(assert (=> d!492078 m!1969241))

(assert (=> d!492078 m!1969203))

(assert (=> b!1633635 d!492078))

(declare-fun d!492082 () Bool)

(assert (=> d!492082 (= (inv!23310 (tag!3443 (h!23353 rules!1846))) (= (mod (str.len (value!99817 (tag!3443 (h!23353 rules!1846)))) 2) 0))))

(assert (=> b!1633614 d!492082))

(declare-fun d!492084 () Bool)

(declare-fun res!731297 () Bool)

(declare-fun e!1047827 () Bool)

(assert (=> d!492084 (=> (not res!731297) (not e!1047827))))

(assert (=> d!492084 (= res!731297 (semiInverseModEq!1209 (toChars!4453 (transformation!3163 (h!23353 rules!1846))) (toValue!4594 (transformation!3163 (h!23353 rules!1846)))))))

(assert (=> d!492084 (= (inv!23313 (transformation!3163 (h!23353 rules!1846))) e!1047827)))

(declare-fun b!1633896 () Bool)

(assert (=> b!1633896 (= e!1047827 (equivClasses!1150 (toChars!4453 (transformation!3163 (h!23353 rules!1846))) (toValue!4594 (transformation!3163 (h!23353 rules!1846)))))))

(assert (= (and d!492084 res!731297) b!1633896))

(declare-fun m!1969243 () Bool)

(assert (=> d!492084 m!1969243))

(declare-fun m!1969245 () Bool)

(assert (=> b!1633896 m!1969245))

(assert (=> b!1633614 d!492084))

(declare-fun d!492086 () Bool)

(assert (=> d!492086 (= (isEmpty!10982 (_2!10184 lt!595044)) ((_ is Nil!17950) (_2!10184 lt!595044)))))

(assert (=> b!1633631 d!492086))

(declare-fun d!492088 () Bool)

(declare-fun isEmpty!10992 (Option!3360) Bool)

(assert (=> d!492088 (= (isDefined!2727 (maxPrefixZipperSequence!687 thiss!17113 rules!1846 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457))))) (not (isEmpty!10992 (maxPrefixZipperSequence!687 thiss!17113 rules!1846 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))))

(declare-fun bs!395284 () Bool)

(assert (= bs!395284 d!492088))

(assert (=> bs!395284 m!1968609))

(declare-fun m!1969247 () Bool)

(assert (=> bs!395284 m!1969247))

(assert (=> b!1633632 d!492088))

(declare-fun b!1633922 () Bool)

(declare-fun e!1047847 () Option!3360)

(declare-fun call!105582 () Option!3360)

(assert (=> b!1633922 (= e!1047847 call!105582)))

(declare-fun b!1633923 () Bool)

(declare-fun e!1047848 () Bool)

(declare-fun e!1047851 () Bool)

(assert (=> b!1633923 (= e!1047848 e!1047851)))

(declare-fun res!731323 () Bool)

(assert (=> b!1633923 (=> res!731323 e!1047851)))

(declare-fun lt!595726 () Option!3360)

(assert (=> b!1633923 (= res!731323 (not (isDefined!2727 lt!595726)))))

(declare-fun b!1633924 () Bool)

(declare-fun e!1047846 () Bool)

(assert (=> b!1633924 (= e!1047851 e!1047846)))

(declare-fun res!731324 () Bool)

(assert (=> b!1633924 (=> (not res!731324) (not e!1047846))))

(declare-fun get!5197 (Option!3360) tuple2!17566)

(assert (=> b!1633924 (= res!731324 (= (_1!10185 (get!5197 lt!595726)) (_1!10184 (get!5193 (maxPrefix!1356 thiss!17113 rules!1846 (list!7067 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))))))

(declare-fun b!1633925 () Bool)

(declare-fun lt!595725 () Option!3360)

(declare-fun lt!595727 () Option!3360)

(assert (=> b!1633925 (= e!1047847 (ite (and ((_ is None!3359) lt!595725) ((_ is None!3359) lt!595727)) None!3359 (ite ((_ is None!3359) lt!595727) lt!595725 (ite ((_ is None!3359) lt!595725) lt!595727 (ite (>= (size!14330 (_1!10185 (v!24430 lt!595725))) (size!14330 (_1!10185 (v!24430 lt!595727)))) lt!595725 lt!595727)))))))

(assert (=> b!1633925 (= lt!595725 call!105582)))

(assert (=> b!1633925 (= lt!595727 (maxPrefixZipperSequence!687 thiss!17113 (t!149605 rules!1846) (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))

(declare-fun b!1633926 () Bool)

(declare-fun e!1047850 () Bool)

(assert (=> b!1633926 (= e!1047850 (= (list!7067 (_2!10185 (get!5197 lt!595726))) (_2!10184 (get!5193 (maxPrefixZipper!320 thiss!17113 rules!1846 (list!7067 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))))))

(declare-fun b!1633927 () Bool)

(assert (=> b!1633927 (= e!1047846 (= (list!7067 (_2!10185 (get!5197 lt!595726))) (_2!10184 (get!5193 (maxPrefix!1356 thiss!17113 rules!1846 (list!7067 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))))))

(declare-fun d!492090 () Bool)

(assert (=> d!492090 e!1047848))

(declare-fun res!731322 () Bool)

(assert (=> d!492090 (=> (not res!731322) (not e!1047848))))

(assert (=> d!492090 (= res!731322 (= (isDefined!2727 lt!595726) (isDefined!2726 (maxPrefixZipper!320 thiss!17113 rules!1846 (list!7067 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457))))))))))

(assert (=> d!492090 (= lt!595726 e!1047847)))

(declare-fun c!265935 () Bool)

(assert (=> d!492090 (= c!265935 (and ((_ is Cons!17952) rules!1846) ((_ is Nil!17952) (t!149605 rules!1846))))))

(declare-fun lt!595723 () Unit!29278)

(declare-fun lt!595724 () Unit!29278)

(assert (=> d!492090 (= lt!595723 lt!595724)))

(declare-fun lt!595722 () List!18020)

(declare-fun lt!595728 () List!18020)

(assert (=> d!492090 (isPrefix!1423 lt!595722 lt!595728)))

(declare-fun lemmaIsPrefixRefl!970 (List!18020 List!18020) Unit!29278)

(assert (=> d!492090 (= lt!595724 (lemmaIsPrefixRefl!970 lt!595722 lt!595728))))

(assert (=> d!492090 (= lt!595728 (list!7067 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))

(assert (=> d!492090 (= lt!595722 (list!7067 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))

(declare-fun rulesValidInductive!986 (LexerInterface!2792 List!18022) Bool)

(assert (=> d!492090 (rulesValidInductive!986 thiss!17113 rules!1846)))

(assert (=> d!492090 (= (maxPrefixZipperSequence!687 thiss!17113 rules!1846 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))) lt!595726)))

(declare-fun b!1633928 () Bool)

(declare-fun res!731320 () Bool)

(assert (=> b!1633928 (=> (not res!731320) (not e!1047848))))

(declare-fun e!1047849 () Bool)

(assert (=> b!1633928 (= res!731320 e!1047849)))

(declare-fun res!731319 () Bool)

(assert (=> b!1633928 (=> res!731319 e!1047849)))

(assert (=> b!1633928 (= res!731319 (not (isDefined!2727 lt!595726)))))

(declare-fun b!1633929 () Bool)

(assert (=> b!1633929 (= e!1047849 e!1047850)))

(declare-fun res!731321 () Bool)

(assert (=> b!1633929 (=> (not res!731321) (not e!1047850))))

(assert (=> b!1633929 (= res!731321 (= (_1!10185 (get!5197 lt!595726)) (_1!10184 (get!5193 (maxPrefixZipper!320 thiss!17113 rules!1846 (list!7067 (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))))))

(declare-fun bm!105577 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!326 (LexerInterface!2792 Rule!6126 BalanceConc!11892) Option!3360)

(assert (=> bm!105577 (= call!105582 (maxPrefixOneRuleZipperSequence!326 thiss!17113 (h!23353 rules!1846) (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457)))))))

(assert (= (and d!492090 c!265935) b!1633922))

(assert (= (and d!492090 (not c!265935)) b!1633925))

(assert (= (or b!1633922 b!1633925) bm!105577))

(assert (= (and d!492090 res!731322) b!1633928))

(assert (= (and b!1633928 (not res!731319)) b!1633929))

(assert (= (and b!1633929 res!731321) b!1633926))

(assert (= (and b!1633928 res!731320) b!1633923))

(assert (= (and b!1633923 (not res!731323)) b!1633924))

(assert (= (and b!1633924 res!731324) b!1633927))

(assert (=> d!492090 m!1968607))

(declare-fun m!1969269 () Bool)

(assert (=> d!492090 m!1969269))

(declare-fun m!1969271 () Bool)

(assert (=> d!492090 m!1969271))

(declare-fun m!1969273 () Bool)

(assert (=> d!492090 m!1969273))

(declare-fun m!1969275 () Bool)

(assert (=> d!492090 m!1969275))

(declare-fun m!1969277 () Bool)

(assert (=> d!492090 m!1969277))

(declare-fun m!1969279 () Bool)

(assert (=> d!492090 m!1969279))

(assert (=> d!492090 m!1969269))

(assert (=> d!492090 m!1969275))

(declare-fun m!1969281 () Bool)

(assert (=> d!492090 m!1969281))

(assert (=> b!1633926 m!1968607))

(assert (=> b!1633926 m!1969269))

(declare-fun m!1969283 () Bool)

(assert (=> b!1633926 m!1969283))

(declare-fun m!1969285 () Bool)

(assert (=> b!1633926 m!1969285))

(assert (=> b!1633926 m!1969269))

(assert (=> b!1633926 m!1969275))

(assert (=> b!1633926 m!1969275))

(declare-fun m!1969287 () Bool)

(assert (=> b!1633926 m!1969287))

(assert (=> b!1633927 m!1968607))

(assert (=> b!1633927 m!1969269))

(assert (=> b!1633927 m!1969283))

(assert (=> b!1633927 m!1969285))

(assert (=> b!1633927 m!1969269))

(declare-fun m!1969289 () Bool)

(assert (=> b!1633927 m!1969289))

(assert (=> b!1633927 m!1969289))

(declare-fun m!1969291 () Bool)

(assert (=> b!1633927 m!1969291))

(assert (=> b!1633924 m!1969283))

(assert (=> b!1633924 m!1968607))

(assert (=> b!1633924 m!1969269))

(assert (=> b!1633924 m!1969269))

(assert (=> b!1633924 m!1969289))

(assert (=> b!1633924 m!1969289))

(assert (=> b!1633924 m!1969291))

(assert (=> b!1633928 m!1969279))

(assert (=> b!1633929 m!1969283))

(assert (=> b!1633929 m!1968607))

(assert (=> b!1633929 m!1969269))

(assert (=> b!1633929 m!1969269))

(assert (=> b!1633929 m!1969275))

(assert (=> b!1633929 m!1969275))

(assert (=> b!1633929 m!1969287))

(assert (=> b!1633925 m!1968607))

(declare-fun m!1969293 () Bool)

(assert (=> b!1633925 m!1969293))

(assert (=> b!1633923 m!1969279))

(assert (=> bm!105577 m!1968607))

(declare-fun m!1969295 () Bool)

(assert (=> bm!105577 m!1969295))

(assert (=> b!1633632 d!492090))

(declare-fun d!492096 () Bool)

(assert (=> d!492096 (= (seqFromList!2075 (originalCharacters!3977 (h!23352 tokens!457))) (fromListB!912 (originalCharacters!3977 (h!23352 tokens!457))))))

(declare-fun bs!395286 () Bool)

(assert (= bs!395286 d!492096))

(declare-fun m!1969297 () Bool)

(assert (=> bs!395286 m!1969297))

(assert (=> b!1633632 d!492096))

(declare-fun d!492098 () Bool)

(declare-fun lt!595731 () C!9156)

(assert (=> d!492098 (= lt!595731 (head!3502 (list!7067 lt!595029)))))

(declare-fun head!3507 (Conc!5974) C!9156)

(assert (=> d!492098 (= lt!595731 (head!3507 (c!265860 lt!595029)))))

(declare-fun isEmpty!10993 (BalanceConc!11892) Bool)

(assert (=> d!492098 (not (isEmpty!10993 lt!595029))))

(assert (=> d!492098 (= (head!3503 lt!595029) lt!595731)))

(declare-fun bs!395287 () Bool)

(assert (= bs!395287 d!492098))

(assert (=> bs!395287 m!1968569))

(assert (=> bs!395287 m!1968569))

(declare-fun m!1969299 () Bool)

(assert (=> bs!395287 m!1969299))

(declare-fun m!1969301 () Bool)

(assert (=> bs!395287 m!1969301))

(declare-fun m!1969303 () Bool)

(assert (=> bs!395287 m!1969303))

(assert (=> b!1633632 d!492098))

(declare-fun d!492100 () Bool)

(declare-fun c!265936 () Bool)

(assert (=> d!492100 (= c!265936 (isEmpty!10982 (++!4799 lt!595017 lt!595024)))))

(declare-fun e!1047852 () Bool)

(assert (=> d!492100 (= (prefixMatch!426 lt!595019 (++!4799 lt!595017 lt!595024)) e!1047852)))

(declare-fun b!1633930 () Bool)

(assert (=> b!1633930 (= e!1047852 (not (lostCause!447 lt!595019)))))

(declare-fun b!1633931 () Bool)

(assert (=> b!1633931 (= e!1047852 (prefixMatch!426 (derivativeStep!1092 lt!595019 (head!3502 (++!4799 lt!595017 lt!595024))) (tail!2384 (++!4799 lt!595017 lt!595024))))))

(assert (= (and d!492100 c!265936) b!1633930))

(assert (= (and d!492100 (not c!265936)) b!1633931))

(assert (=> d!492100 m!1968595))

(declare-fun m!1969305 () Bool)

(assert (=> d!492100 m!1969305))

(assert (=> b!1633930 m!1968923))

(assert (=> b!1633931 m!1968595))

(declare-fun m!1969307 () Bool)

(assert (=> b!1633931 m!1969307))

(assert (=> b!1633931 m!1969307))

(declare-fun m!1969309 () Bool)

(assert (=> b!1633931 m!1969309))

(assert (=> b!1633931 m!1968595))

(declare-fun m!1969311 () Bool)

(assert (=> b!1633931 m!1969311))

(assert (=> b!1633931 m!1969309))

(assert (=> b!1633931 m!1969311))

(declare-fun m!1969313 () Bool)

(assert (=> b!1633931 m!1969313))

(assert (=> b!1633628 d!492100))

(declare-fun b!1633932 () Bool)

(declare-fun e!1047854 () List!18020)

(assert (=> b!1633932 (= e!1047854 lt!595024)))

(declare-fun d!492102 () Bool)

(declare-fun e!1047853 () Bool)

(assert (=> d!492102 e!1047853))

(declare-fun res!731325 () Bool)

(assert (=> d!492102 (=> (not res!731325) (not e!1047853))))

(declare-fun lt!595732 () List!18020)

(assert (=> d!492102 (= res!731325 (= (content!2488 lt!595732) ((_ map or) (content!2488 lt!595017) (content!2488 lt!595024))))))

(assert (=> d!492102 (= lt!595732 e!1047854)))

(declare-fun c!265937 () Bool)

(assert (=> d!492102 (= c!265937 ((_ is Nil!17950) lt!595017))))

(assert (=> d!492102 (= (++!4799 lt!595017 lt!595024) lt!595732)))

(declare-fun b!1633935 () Bool)

(assert (=> b!1633935 (= e!1047853 (or (not (= lt!595024 Nil!17950)) (= lt!595732 lt!595017)))))

(declare-fun b!1633934 () Bool)

(declare-fun res!731326 () Bool)

(assert (=> b!1633934 (=> (not res!731326) (not e!1047853))))

(assert (=> b!1633934 (= res!731326 (= (size!14332 lt!595732) (+ (size!14332 lt!595017) (size!14332 lt!595024))))))

(declare-fun b!1633933 () Bool)

(assert (=> b!1633933 (= e!1047854 (Cons!17950 (h!23351 lt!595017) (++!4799 (t!149603 lt!595017) lt!595024)))))

(assert (= (and d!492102 c!265937) b!1633932))

(assert (= (and d!492102 (not c!265937)) b!1633933))

(assert (= (and d!492102 res!731325) b!1633934))

(assert (= (and b!1633934 res!731326) b!1633935))

(declare-fun m!1969315 () Bool)

(assert (=> d!492102 m!1969315))

(assert (=> d!492102 m!1968935))

(declare-fun m!1969317 () Bool)

(assert (=> d!492102 m!1969317))

(declare-fun m!1969319 () Bool)

(assert (=> b!1633934 m!1969319))

(assert (=> b!1633934 m!1968941))

(declare-fun m!1969321 () Bool)

(assert (=> b!1633934 m!1969321))

(declare-fun m!1969323 () Bool)

(assert (=> b!1633933 m!1969323))

(assert (=> b!1633628 d!492102))

(declare-fun d!492104 () Bool)

(assert (=> d!492104 (= (list!7067 lt!595016) (list!7070 (c!265860 lt!595016)))))

(declare-fun bs!395288 () Bool)

(assert (= bs!395288 d!492104))

(declare-fun m!1969325 () Bool)

(assert (=> bs!395288 m!1969325))

(assert (=> b!1633628 d!492104))

(declare-fun d!492106 () Bool)

(declare-fun lt!595740 () Bool)

(declare-fun e!1047868 () Bool)

(assert (=> d!492106 (= lt!595740 e!1047868)))

(declare-fun res!731344 () Bool)

(assert (=> d!492106 (=> (not res!731344) (not e!1047868))))

(assert (=> d!492106 (= res!731344 (= (list!7068 (_1!10183 (lex!1276 thiss!17113 rules!1846 (print!1323 thiss!17113 (singletonSeq!1604 (h!23352 tokens!457)))))) (list!7068 (singletonSeq!1604 (h!23352 tokens!457)))))))

(declare-fun e!1047869 () Bool)

(assert (=> d!492106 (= lt!595740 e!1047869)))

(declare-fun res!731342 () Bool)

(assert (=> d!492106 (=> (not res!731342) (not e!1047869))))

(declare-fun lt!595741 () tuple2!17562)

(assert (=> d!492106 (= res!731342 (= (size!14335 (_1!10183 lt!595741)) 1))))

(assert (=> d!492106 (= lt!595741 (lex!1276 thiss!17113 rules!1846 (print!1323 thiss!17113 (singletonSeq!1604 (h!23352 tokens!457)))))))

(assert (=> d!492106 (not (isEmpty!10983 rules!1846))))

(assert (=> d!492106 (= (rulesProduceIndividualToken!1444 thiss!17113 rules!1846 (h!23352 tokens!457)) lt!595740)))

(declare-fun b!1633957 () Bool)

(declare-fun res!731343 () Bool)

(assert (=> b!1633957 (=> (not res!731343) (not e!1047869))))

(declare-fun apply!4632 (BalanceConc!11894 Int) Token!5892)

(assert (=> b!1633957 (= res!731343 (= (apply!4632 (_1!10183 lt!595741) 0) (h!23352 tokens!457)))))

(declare-fun b!1633958 () Bool)

(assert (=> b!1633958 (= e!1047869 (isEmpty!10993 (_2!10183 lt!595741)))))

(declare-fun b!1633959 () Bool)

(assert (=> b!1633959 (= e!1047868 (isEmpty!10993 (_2!10183 (lex!1276 thiss!17113 rules!1846 (print!1323 thiss!17113 (singletonSeq!1604 (h!23352 tokens!457)))))))))

(assert (= (and d!492106 res!731342) b!1633957))

(assert (= (and b!1633957 res!731343) b!1633958))

(assert (= (and d!492106 res!731344) b!1633959))

(declare-fun m!1969349 () Bool)

(assert (=> d!492106 m!1969349))

(assert (=> d!492106 m!1968535))

(declare-fun m!1969351 () Bool)

(assert (=> d!492106 m!1969351))

(assert (=> d!492106 m!1968545))

(declare-fun m!1969353 () Bool)

(assert (=> d!492106 m!1969353))

(assert (=> d!492106 m!1968545))

(declare-fun m!1969355 () Bool)

(assert (=> d!492106 m!1969355))

(assert (=> d!492106 m!1969353))

(declare-fun m!1969357 () Bool)

(assert (=> d!492106 m!1969357))

(assert (=> d!492106 m!1968545))

(declare-fun m!1969359 () Bool)

(assert (=> b!1633957 m!1969359))

(declare-fun m!1969361 () Bool)

(assert (=> b!1633958 m!1969361))

(assert (=> b!1633959 m!1968545))

(assert (=> b!1633959 m!1968545))

(assert (=> b!1633959 m!1969353))

(assert (=> b!1633959 m!1969353))

(assert (=> b!1633959 m!1969357))

(declare-fun m!1969363 () Bool)

(assert (=> b!1633959 m!1969363))

(assert (=> b!1633629 d!492106))

(declare-fun d!492114 () Bool)

(assert (=> d!492114 (= (head!3502 lt!595030) (h!23351 lt!595030))))

(assert (=> b!1633630 d!492114))

(declare-fun d!492116 () Bool)

(declare-fun e!1047872 () Bool)

(assert (=> d!492116 e!1047872))

(declare-fun res!731347 () Bool)

(assert (=> d!492116 (=> (not res!731347) (not e!1047872))))

(declare-fun lt!595744 () BalanceConc!11892)

(assert (=> d!492116 (= res!731347 (= (list!7067 lt!595744) (Cons!17950 (apply!4628 (charsOf!1812 (h!23352 (t!149604 tokens!457))) 0) Nil!17950)))))

(declare-fun singleton!687 (C!9156) BalanceConc!11892)

(assert (=> d!492116 (= lt!595744 (singleton!687 (apply!4628 (charsOf!1812 (h!23352 (t!149604 tokens!457))) 0)))))

(assert (=> d!492116 (= (singletonSeq!1605 (apply!4628 (charsOf!1812 (h!23352 (t!149604 tokens!457))) 0)) lt!595744)))

(declare-fun b!1633962 () Bool)

(declare-fun isBalanced!1807 (Conc!5974) Bool)

(assert (=> b!1633962 (= e!1047872 (isBalanced!1807 (c!265860 lt!595744)))))

(assert (= (and d!492116 res!731347) b!1633962))

(declare-fun m!1969365 () Bool)

(assert (=> d!492116 m!1969365))

(assert (=> d!492116 m!1968619))

(declare-fun m!1969367 () Bool)

(assert (=> d!492116 m!1969367))

(declare-fun m!1969369 () Bool)

(assert (=> b!1633962 m!1969369))

(assert (=> b!1633625 d!492116))

(declare-fun b!1633997 () Bool)

(declare-fun res!731374 () Bool)

(declare-fun e!1047893 () Bool)

(assert (=> b!1633997 (=> (not res!731374) (not e!1047893))))

(declare-fun height!916 (Conc!5974) Int)

(declare-fun ++!4801 (Conc!5974 Conc!5974) Conc!5974)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1633997 (= res!731374 (>= (height!916 (++!4801 (c!265860 lt!595028) (c!265860 lt!595016))) (max!0 (height!916 (c!265860 lt!595028)) (height!916 (c!265860 lt!595016)))))))

(declare-fun b!1633996 () Bool)

(declare-fun res!731377 () Bool)

(assert (=> b!1633996 (=> (not res!731377) (not e!1047893))))

(assert (=> b!1633996 (= res!731377 (<= (height!916 (++!4801 (c!265860 lt!595028) (c!265860 lt!595016))) (+ (max!0 (height!916 (c!265860 lt!595028)) (height!916 (c!265860 lt!595016))) 1)))))

(declare-fun b!1633995 () Bool)

(declare-fun res!731376 () Bool)

(assert (=> b!1633995 (=> (not res!731376) (not e!1047893))))

(assert (=> b!1633995 (= res!731376 (isBalanced!1807 (++!4801 (c!265860 lt!595028) (c!265860 lt!595016))))))

(declare-fun b!1633998 () Bool)

(declare-fun lt!595768 () BalanceConc!11892)

(assert (=> b!1633998 (= e!1047893 (= (list!7067 lt!595768) (++!4799 (list!7067 lt!595028) (list!7067 lt!595016))))))

(declare-fun d!492118 () Bool)

(assert (=> d!492118 e!1047893))

(declare-fun res!731375 () Bool)

(assert (=> d!492118 (=> (not res!731375) (not e!1047893))))

(declare-fun appendAssocInst!444 (Conc!5974 Conc!5974) Bool)

(assert (=> d!492118 (= res!731375 (appendAssocInst!444 (c!265860 lt!595028) (c!265860 lt!595016)))))

(assert (=> d!492118 (= lt!595768 (BalanceConc!11893 (++!4801 (c!265860 lt!595028) (c!265860 lt!595016))))))

(assert (=> d!492118 (= (++!4800 lt!595028 lt!595016) lt!595768)))

(assert (= (and d!492118 res!731375) b!1633995))

(assert (= (and b!1633995 res!731376) b!1633996))

(assert (= (and b!1633996 res!731377) b!1633997))

(assert (= (and b!1633997 res!731374) b!1633998))

(declare-fun m!1969371 () Bool)

(assert (=> b!1633997 m!1969371))

(declare-fun m!1969373 () Bool)

(assert (=> b!1633997 m!1969373))

(declare-fun m!1969375 () Bool)

(assert (=> b!1633997 m!1969375))

(declare-fun m!1969377 () Bool)

(assert (=> b!1633997 m!1969377))

(declare-fun m!1969379 () Bool)

(assert (=> b!1633997 m!1969379))

(assert (=> b!1633997 m!1969377))

(assert (=> b!1633997 m!1969371))

(assert (=> b!1633997 m!1969373))

(assert (=> b!1633996 m!1969371))

(assert (=> b!1633996 m!1969373))

(assert (=> b!1633996 m!1969375))

(assert (=> b!1633996 m!1969377))

(assert (=> b!1633996 m!1969379))

(assert (=> b!1633996 m!1969377))

(assert (=> b!1633996 m!1969371))

(assert (=> b!1633996 m!1969373))

(assert (=> b!1633995 m!1969377))

(assert (=> b!1633995 m!1969377))

(declare-fun m!1969395 () Bool)

(assert (=> b!1633995 m!1969395))

(declare-fun m!1969397 () Bool)

(assert (=> b!1633998 m!1969397))

(assert (=> b!1633998 m!1968555))

(assert (=> b!1633998 m!1968599))

(assert (=> b!1633998 m!1968555))

(assert (=> b!1633998 m!1968599))

(declare-fun m!1969399 () Bool)

(assert (=> b!1633998 m!1969399))

(declare-fun m!1969403 () Bool)

(assert (=> d!492118 m!1969403))

(assert (=> d!492118 m!1969377))

(assert (=> b!1633625 d!492118))

(declare-fun d!492120 () Bool)

(declare-fun lt!595801 () Bool)

(assert (=> d!492120 (= lt!595801 (prefixMatch!426 lt!595019 (list!7067 (++!4800 lt!595028 lt!595016))))))

(declare-datatypes ((List!18024 0))(
  ( (Nil!17954) (Cons!17954 (h!23355 Regex!4491) (t!149649 List!18024)) )
))
(declare-datatypes ((Context!1752 0))(
  ( (Context!1753 (exprs!1376 List!18024)) )
))
(declare-fun prefixMatchZipperSequence!562 ((InoxSet Context!1752) BalanceConc!11892 Int) Bool)

(declare-fun focus!182 (Regex!4491) (InoxSet Context!1752))

(assert (=> d!492120 (= lt!595801 (prefixMatchZipperSequence!562 (focus!182 lt!595019) (++!4800 lt!595028 lt!595016) 0))))

(declare-fun lt!595804 () Unit!29278)

(declare-fun lt!595800 () Unit!29278)

(assert (=> d!492120 (= lt!595804 lt!595800)))

(declare-fun lt!595807 () List!18020)

(declare-fun lt!595802 () (InoxSet Context!1752))

(declare-fun prefixMatchZipper!161 ((InoxSet Context!1752) List!18020) Bool)

(assert (=> d!492120 (= (prefixMatch!426 lt!595019 lt!595807) (prefixMatchZipper!161 lt!595802 lt!595807))))

(declare-datatypes ((List!18025 0))(
  ( (Nil!17955) (Cons!17955 (h!23356 Context!1752) (t!149650 List!18025)) )
))
(declare-fun lt!595808 () List!18025)

(declare-fun prefixMatchZipperRegexEquiv!161 ((InoxSet Context!1752) List!18025 Regex!4491 List!18020) Unit!29278)

(assert (=> d!492120 (= lt!595800 (prefixMatchZipperRegexEquiv!161 lt!595802 lt!595808 lt!595019 lt!595807))))

(assert (=> d!492120 (= lt!595807 (list!7067 (++!4800 lt!595028 lt!595016)))))

(declare-fun toList!922 ((InoxSet Context!1752)) List!18025)

(assert (=> d!492120 (= lt!595808 (toList!922 (focus!182 lt!595019)))))

(assert (=> d!492120 (= lt!595802 (focus!182 lt!595019))))

(declare-fun lt!595805 () Unit!29278)

(declare-fun lt!595799 () Unit!29278)

(assert (=> d!492120 (= lt!595805 lt!595799)))

(declare-fun lt!595803 () Int)

(declare-fun lt!595806 () (InoxSet Context!1752))

(declare-fun dropList!625 (BalanceConc!11892 Int) List!18020)

(assert (=> d!492120 (= (prefixMatchZipper!161 lt!595806 (dropList!625 (++!4800 lt!595028 lt!595016) lt!595803)) (prefixMatchZipperSequence!562 lt!595806 (++!4800 lt!595028 lt!595016) lt!595803))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!161 ((InoxSet Context!1752) BalanceConc!11892 Int) Unit!29278)

(assert (=> d!492120 (= lt!595799 (lemmaprefixMatchZipperSequenceEquivalent!161 lt!595806 (++!4800 lt!595028 lt!595016) lt!595803))))

(assert (=> d!492120 (= lt!595803 0)))

(assert (=> d!492120 (= lt!595806 (focus!182 lt!595019))))

(declare-fun validRegex!1788 (Regex!4491) Bool)

(assert (=> d!492120 (validRegex!1788 lt!595019)))

(assert (=> d!492120 (= (prefixMatchZipperSequence!561 lt!595019 (++!4800 lt!595028 lt!595016)) lt!595801)))

(declare-fun bs!395294 () Bool)

(assert (= bs!395294 d!492120))

(declare-fun m!1969463 () Bool)

(assert (=> bs!395294 m!1969463))

(assert (=> bs!395294 m!1968617))

(declare-fun m!1969465 () Bool)

(assert (=> bs!395294 m!1969465))

(declare-fun m!1969467 () Bool)

(assert (=> bs!395294 m!1969467))

(declare-fun m!1969469 () Bool)

(assert (=> bs!395294 m!1969469))

(declare-fun m!1969471 () Bool)

(assert (=> bs!395294 m!1969471))

(declare-fun m!1969473 () Bool)

(assert (=> bs!395294 m!1969473))

(assert (=> bs!395294 m!1968617))

(declare-fun m!1969475 () Bool)

(assert (=> bs!395294 m!1969475))

(assert (=> bs!395294 m!1968617))

(declare-fun m!1969477 () Bool)

(assert (=> bs!395294 m!1969477))

(declare-fun m!1969479 () Bool)

(assert (=> bs!395294 m!1969479))

(declare-fun m!1969481 () Bool)

(assert (=> bs!395294 m!1969481))

(assert (=> bs!395294 m!1969465))

(declare-fun m!1969483 () Bool)

(assert (=> bs!395294 m!1969483))

(assert (=> bs!395294 m!1968617))

(declare-fun m!1969485 () Bool)

(assert (=> bs!395294 m!1969485))

(assert (=> bs!395294 m!1968617))

(assert (=> bs!395294 m!1969479))

(assert (=> bs!395294 m!1969473))

(assert (=> bs!395294 m!1969473))

(declare-fun m!1969487 () Bool)

(assert (=> bs!395294 m!1969487))

(assert (=> b!1633625 d!492120))

(declare-fun d!492136 () Bool)

(declare-fun lt!595811 () C!9156)

(declare-fun apply!4633 (List!18020 Int) C!9156)

(assert (=> d!492136 (= lt!595811 (apply!4633 (list!7067 (charsOf!1812 (h!23352 (t!149604 tokens!457)))) 0))))

(declare-fun apply!4634 (Conc!5974 Int) C!9156)

(assert (=> d!492136 (= lt!595811 (apply!4634 (c!265860 (charsOf!1812 (h!23352 (t!149604 tokens!457)))) 0))))

(declare-fun e!1047908 () Bool)

(assert (=> d!492136 e!1047908))

(declare-fun res!731392 () Bool)

(assert (=> d!492136 (=> (not res!731392) (not e!1047908))))

(assert (=> d!492136 (= res!731392 (<= 0 0))))

(assert (=> d!492136 (= (apply!4628 (charsOf!1812 (h!23352 (t!149604 tokens!457))) 0) lt!595811)))

(declare-fun b!1634020 () Bool)

(assert (=> b!1634020 (= e!1047908 (< 0 (size!14334 (charsOf!1812 (h!23352 (t!149604 tokens!457))))))))

(assert (= (and d!492136 res!731392) b!1634020))

(assert (=> d!492136 m!1968625))

(declare-fun m!1969489 () Bool)

(assert (=> d!492136 m!1969489))

(assert (=> d!492136 m!1969489))

(declare-fun m!1969491 () Bool)

(assert (=> d!492136 m!1969491))

(declare-fun m!1969493 () Bool)

(assert (=> d!492136 m!1969493))

(assert (=> b!1634020 m!1968625))

(assert (=> b!1634020 m!1969087))

(assert (=> b!1633625 d!492136))

(declare-fun d!492138 () Bool)

(declare-fun lt!595824 () Unit!29278)

(declare-fun lemma!247 (List!18022 LexerInterface!2792 List!18022) Unit!29278)

(assert (=> d!492138 (= lt!595824 (lemma!247 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67385 () Int)

(declare-fun generalisedUnion!255 (List!18024) Regex!4491)

(declare-fun map!3708 (List!18022 Int) List!18024)

(assert (=> d!492138 (= (rulesRegex!553 thiss!17113 rules!1846) (generalisedUnion!255 (map!3708 rules!1846 lambda!67385)))))

(declare-fun bs!395295 () Bool)

(assert (= bs!395295 d!492138))

(declare-fun m!1969495 () Bool)

(assert (=> bs!395295 m!1969495))

(declare-fun m!1969497 () Bool)

(assert (=> bs!395295 m!1969497))

(assert (=> bs!395295 m!1969497))

(declare-fun m!1969499 () Bool)

(assert (=> bs!395295 m!1969499))

(assert (=> b!1633625 d!492138))

(declare-fun d!492140 () Bool)

(declare-fun lt!595825 () BalanceConc!11892)

(assert (=> d!492140 (= (list!7067 lt!595825) (originalCharacters!3977 (h!23352 (t!149604 tokens!457))))))

(assert (=> d!492140 (= lt!595825 (dynLambda!8002 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))) (value!99818 (h!23352 (t!149604 tokens!457)))))))

(assert (=> d!492140 (= (charsOf!1812 (h!23352 (t!149604 tokens!457))) lt!595825)))

(declare-fun b_lambda!51395 () Bool)

(assert (=> (not b_lambda!51395) (not d!492140)))

(declare-fun tb!93727 () Bool)

(declare-fun t!149618 () Bool)

(assert (=> (and b!1633644 (= (toChars!4453 (transformation!3163 (h!23353 rules!1846))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457)))))) t!149618) tb!93727))

(declare-fun b!1634039 () Bool)

(declare-fun e!1047915 () Bool)

(declare-fun tp!474029 () Bool)

(assert (=> b!1634039 (= e!1047915 (and (inv!23315 (c!265860 (dynLambda!8002 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))) (value!99818 (h!23352 (t!149604 tokens!457)))))) tp!474029))))

(declare-fun result!113058 () Bool)

(assert (=> tb!93727 (= result!113058 (and (inv!23316 (dynLambda!8002 (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))) (value!99818 (h!23352 (t!149604 tokens!457))))) e!1047915))))

(assert (= tb!93727 b!1634039))

(declare-fun m!1969501 () Bool)

(assert (=> b!1634039 m!1969501))

(declare-fun m!1969503 () Bool)

(assert (=> tb!93727 m!1969503))

(assert (=> d!492140 t!149618))

(declare-fun b_and!115849 () Bool)

(assert (= b_and!115841 (and (=> t!149618 result!113058) b_and!115849)))

(declare-fun t!149620 () Bool)

(declare-fun tb!93729 () Bool)

(assert (=> (and b!1633640 (= (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457)))))) t!149620) tb!93729))

(declare-fun result!113060 () Bool)

(assert (= result!113060 result!113058))

(assert (=> d!492140 t!149620))

(declare-fun b_and!115851 () Bool)

(assert (= b_and!115843 (and (=> t!149620 result!113060) b_and!115851)))

(declare-fun m!1969505 () Bool)

(assert (=> d!492140 m!1969505))

(declare-fun m!1969507 () Bool)

(assert (=> d!492140 m!1969507))

(assert (=> b!1633625 d!492140))

(declare-fun d!492142 () Bool)

(assert (=> d!492142 (= (get!5193 (maxPrefixZipper!320 thiss!17113 rules!1846 lt!595038)) (v!24429 (maxPrefixZipper!320 thiss!17113 rules!1846 lt!595038)))))

(assert (=> b!1633626 d!492142))

(declare-fun d!492144 () Bool)

(declare-fun lt!595853 () Option!3359)

(assert (=> d!492144 (= lt!595853 (maxPrefix!1356 thiss!17113 rules!1846 lt!595038))))

(declare-fun e!1047933 () Option!3359)

(assert (=> d!492144 (= lt!595853 e!1047933)))

(declare-fun c!265960 () Bool)

(assert (=> d!492144 (= c!265960 (and ((_ is Cons!17952) rules!1846) ((_ is Nil!17952) (t!149605 rules!1846))))))

(declare-fun lt!595849 () Unit!29278)

(declare-fun lt!595850 () Unit!29278)

(assert (=> d!492144 (= lt!595849 lt!595850)))

(assert (=> d!492144 (isPrefix!1423 lt!595038 lt!595038)))

(assert (=> d!492144 (= lt!595850 (lemmaIsPrefixRefl!970 lt!595038 lt!595038))))

(assert (=> d!492144 (rulesValidInductive!986 thiss!17113 rules!1846)))

(assert (=> d!492144 (= (maxPrefixZipper!320 thiss!17113 rules!1846 lt!595038) lt!595853)))

(declare-fun call!105593 () Option!3359)

(declare-fun bm!105588 () Bool)

(declare-fun maxPrefixOneRuleZipper!113 (LexerInterface!2792 Rule!6126 List!18020) Option!3359)

(assert (=> bm!105588 (= call!105593 (maxPrefixOneRuleZipper!113 thiss!17113 (h!23353 rules!1846) lt!595038))))

(declare-fun b!1634080 () Bool)

(assert (=> b!1634080 (= e!1047933 call!105593)))

(declare-fun b!1634081 () Bool)

(declare-fun lt!595852 () Option!3359)

(declare-fun lt!595851 () Option!3359)

(assert (=> b!1634081 (= e!1047933 (ite (and ((_ is None!3358) lt!595852) ((_ is None!3358) lt!595851)) None!3358 (ite ((_ is None!3358) lt!595851) lt!595852 (ite ((_ is None!3358) lt!595852) lt!595851 (ite (>= (size!14330 (_1!10184 (v!24429 lt!595852))) (size!14330 (_1!10184 (v!24429 lt!595851)))) lt!595852 lt!595851)))))))

(assert (=> b!1634081 (= lt!595852 call!105593)))

(assert (=> b!1634081 (= lt!595851 (maxPrefixZipper!320 thiss!17113 (t!149605 rules!1846) lt!595038))))

(assert (= (and d!492144 c!265960) b!1634080))

(assert (= (and d!492144 (not c!265960)) b!1634081))

(assert (= (or b!1634080 b!1634081) bm!105588))

(assert (=> d!492144 m!1968543))

(declare-fun m!1969597 () Bool)

(assert (=> d!492144 m!1969597))

(declare-fun m!1969599 () Bool)

(assert (=> d!492144 m!1969599))

(assert (=> d!492144 m!1969271))

(declare-fun m!1969601 () Bool)

(assert (=> bm!105588 m!1969601))

(declare-fun m!1969603 () Bool)

(assert (=> b!1634081 m!1969603))

(assert (=> b!1633626 d!492144))

(declare-fun d!492164 () Bool)

(declare-fun list!7072 (Conc!5975) List!18021)

(assert (=> d!492164 (= (list!7068 (_1!10183 lt!595018)) (list!7072 (c!265861 (_1!10183 lt!595018))))))

(declare-fun bs!395298 () Bool)

(assert (= bs!395298 d!492164))

(declare-fun m!1969605 () Bool)

(assert (=> bs!395298 m!1969605))

(assert (=> b!1633627 d!492164))

(declare-fun d!492166 () Bool)

(declare-fun e!1047981 () Bool)

(assert (=> d!492166 e!1047981))

(declare-fun res!731468 () Bool)

(assert (=> d!492166 (=> (not res!731468) (not e!1047981))))

(assert (=> d!492166 (= res!731468 (= (list!7068 (_1!10183 (lex!1276 thiss!17113 rules!1846 (print!1323 thiss!17113 (seqFromList!2076 (t!149604 tokens!457)))))) (t!149604 tokens!457)))))

(declare-fun lt!596017 () Unit!29278)

(declare-fun e!1047980 () Unit!29278)

(assert (=> d!492166 (= lt!596017 e!1047980)))

(declare-fun c!265981 () Bool)

(assert (=> d!492166 (= c!265981 (or ((_ is Nil!17951) (t!149604 tokens!457)) ((_ is Nil!17951) (t!149604 (t!149604 tokens!457)))))))

(assert (=> d!492166 (not (isEmpty!10983 rules!1846))))

(assert (=> d!492166 (= (theoremInvertabilityWhenTokenListSeparable!237 thiss!17113 rules!1846 (t!149604 tokens!457)) lt!596017)))

(declare-fun b!1634158 () Bool)

(declare-fun Unit!29327 () Unit!29278)

(assert (=> b!1634158 (= e!1047980 Unit!29327)))

(declare-fun b!1634159 () Bool)

(declare-fun Unit!29328 () Unit!29278)

(assert (=> b!1634159 (= e!1047980 Unit!29328)))

(declare-fun lt!595997 () BalanceConc!11892)

(assert (=> b!1634159 (= lt!595997 (print!1323 thiss!17113 (seqFromList!2076 (t!149604 tokens!457))))))

(declare-fun lt!596021 () BalanceConc!11892)

(assert (=> b!1634159 (= lt!596021 (print!1323 thiss!17113 (seqFromList!2076 (t!149604 (t!149604 tokens!457)))))))

(declare-fun lt!596007 () tuple2!17562)

(assert (=> b!1634159 (= lt!596007 (lex!1276 thiss!17113 rules!1846 lt!596021))))

(declare-fun lt!596008 () List!18020)

(assert (=> b!1634159 (= lt!596008 (list!7067 (charsOf!1812 (h!23352 (t!149604 tokens!457)))))))

(declare-fun lt!596019 () List!18020)

(assert (=> b!1634159 (= lt!596019 (list!7067 lt!596021))))

(declare-fun lt!596018 () Unit!29278)

(assert (=> b!1634159 (= lt!596018 (lemmaConcatTwoListThenFirstIsPrefix!948 lt!596008 lt!596019))))

(assert (=> b!1634159 (isPrefix!1423 lt!596008 (++!4799 lt!596008 lt!596019))))

(declare-fun lt!595998 () Unit!29278)

(assert (=> b!1634159 (= lt!595998 lt!596018)))

(declare-fun lt!596009 () Unit!29278)

(assert (=> b!1634159 (= lt!596009 (theoremInvertabilityWhenTokenListSeparable!237 thiss!17113 rules!1846 (t!149604 (t!149604 tokens!457))))))

(declare-fun lt!596016 () Unit!29278)

(assert (=> b!1634159 (= lt!596016 (seqFromListBHdTlConstructive!240 (h!23352 (t!149604 (t!149604 tokens!457))) (t!149604 (t!149604 (t!149604 tokens!457))) (_1!10183 lt!596007)))))

(assert (=> b!1634159 (= (list!7068 (_1!10183 lt!596007)) (list!7068 (prepend!699 (seqFromList!2076 (t!149604 (t!149604 (t!149604 tokens!457)))) (h!23352 (t!149604 (t!149604 tokens!457))))))))

(declare-fun lt!596010 () Unit!29278)

(assert (=> b!1634159 (= lt!596010 lt!596016)))

(declare-fun lt!596012 () Option!3359)

(assert (=> b!1634159 (= lt!596012 (maxPrefix!1356 thiss!17113 rules!1846 (list!7067 lt!595997)))))

(assert (=> b!1634159 (= (print!1323 thiss!17113 (singletonSeq!1604 (h!23352 (t!149604 tokens!457)))) (printTailRec!845 thiss!17113 (singletonSeq!1604 (h!23352 (t!149604 tokens!457))) 0 (BalanceConc!11893 Empty!5974)))))

(declare-fun lt!596006 () Unit!29278)

(declare-fun Unit!29329 () Unit!29278)

(assert (=> b!1634159 (= lt!596006 Unit!29329)))

(declare-fun lt!596013 () Unit!29278)

(assert (=> b!1634159 (= lt!596013 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!366 thiss!17113 rules!1846 (list!7067 (charsOf!1812 (h!23352 (t!149604 tokens!457)))) (list!7067 lt!596021)))))

(assert (=> b!1634159 (= (list!7067 (charsOf!1812 (h!23352 (t!149604 tokens!457)))) (originalCharacters!3977 (h!23352 (t!149604 tokens!457))))))

(declare-fun lt!596004 () Unit!29278)

(declare-fun Unit!29330 () Unit!29278)

(assert (=> b!1634159 (= lt!596004 Unit!29330)))

(assert (=> b!1634159 (= (list!7067 (singletonSeq!1605 (apply!4628 (charsOf!1812 (h!23352 (t!149604 (t!149604 tokens!457)))) 0))) (Cons!17950 (head!3502 (originalCharacters!3977 (h!23352 (t!149604 (t!149604 tokens!457))))) Nil!17950))))

(declare-fun lt!596014 () Unit!29278)

(declare-fun Unit!29331 () Unit!29278)

(assert (=> b!1634159 (= lt!596014 Unit!29331)))

(assert (=> b!1634159 (= (list!7067 (singletonSeq!1605 (apply!4628 (charsOf!1812 (h!23352 (t!149604 (t!149604 tokens!457)))) 0))) (Cons!17950 (head!3502 (list!7067 lt!596021)) Nil!17950))))

(declare-fun lt!596015 () Unit!29278)

(declare-fun Unit!29332 () Unit!29278)

(assert (=> b!1634159 (= lt!596015 Unit!29332)))

(assert (=> b!1634159 (= (list!7067 (singletonSeq!1605 (apply!4628 (charsOf!1812 (h!23352 (t!149604 (t!149604 tokens!457)))) 0))) (Cons!17950 (head!3503 lt!596021) Nil!17950))))

(declare-fun lt!596001 () Unit!29278)

(declare-fun Unit!29333 () Unit!29278)

(assert (=> b!1634159 (= lt!596001 Unit!29333)))

(assert (=> b!1634159 (isDefined!2726 (maxPrefix!1356 thiss!17113 rules!1846 (originalCharacters!3977 (h!23352 (t!149604 tokens!457)))))))

(declare-fun lt!595996 () Unit!29278)

(declare-fun Unit!29334 () Unit!29278)

(assert (=> b!1634159 (= lt!595996 Unit!29334)))

(assert (=> b!1634159 (isDefined!2726 (maxPrefix!1356 thiss!17113 rules!1846 (list!7067 (charsOf!1812 (h!23352 (t!149604 tokens!457))))))))

(declare-fun lt!596000 () Unit!29278)

(declare-fun Unit!29335 () Unit!29278)

(assert (=> b!1634159 (= lt!596000 Unit!29335)))

(declare-fun lt!595999 () Unit!29278)

(declare-fun Unit!29336 () Unit!29278)

(assert (=> b!1634159 (= lt!595999 Unit!29336)))

(assert (=> b!1634159 (= (_1!10184 (get!5193 (maxPrefix!1356 thiss!17113 rules!1846 (list!7067 (charsOf!1812 (h!23352 (t!149604 tokens!457))))))) (h!23352 (t!149604 tokens!457)))))

(declare-fun lt!596020 () Unit!29278)

(declare-fun Unit!29337 () Unit!29278)

(assert (=> b!1634159 (= lt!596020 Unit!29337)))

(assert (=> b!1634159 (isEmpty!10982 (_2!10184 (get!5193 (maxPrefix!1356 thiss!17113 rules!1846 (list!7067 (charsOf!1812 (h!23352 (t!149604 tokens!457))))))))))

(declare-fun lt!596005 () Unit!29278)

(declare-fun Unit!29338 () Unit!29278)

(assert (=> b!1634159 (= lt!596005 Unit!29338)))

(assert (=> b!1634159 (matchR!1990 (regex!3163 (rule!5001 (h!23352 (t!149604 tokens!457)))) (list!7067 (charsOf!1812 (h!23352 (t!149604 tokens!457)))))))

(declare-fun lt!596002 () Unit!29278)

(declare-fun Unit!29339 () Unit!29278)

(assert (=> b!1634159 (= lt!596002 Unit!29339)))

(assert (=> b!1634159 (= (rule!5001 (h!23352 (t!149604 tokens!457))) (rule!5001 (h!23352 (t!149604 tokens!457))))))

(declare-fun lt!596003 () Unit!29278)

(declare-fun Unit!29340 () Unit!29278)

(assert (=> b!1634159 (= lt!596003 Unit!29340)))

(declare-fun lt!596011 () Unit!29278)

(assert (=> b!1634159 (= lt!596011 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!128 thiss!17113 rules!1846 (h!23352 (t!149604 tokens!457)) (rule!5001 (h!23352 (t!149604 tokens!457))) (list!7067 lt!596021)))))

(declare-fun b!1634160 () Bool)

(assert (=> b!1634160 (= e!1047981 (isEmpty!10993 (_2!10183 (lex!1276 thiss!17113 rules!1846 (print!1323 thiss!17113 (seqFromList!2076 (t!149604 tokens!457)))))))))

(assert (= (and d!492166 c!265981) b!1634158))

(assert (= (and d!492166 (not c!265981)) b!1634159))

(assert (= (and d!492166 res!731468) b!1634160))

(assert (=> d!492166 m!1968559))

(declare-fun m!1969795 () Bool)

(assert (=> d!492166 m!1969795))

(declare-fun m!1969797 () Bool)

(assert (=> d!492166 m!1969797))

(assert (=> d!492166 m!1968559))

(assert (=> d!492166 m!1969795))

(declare-fun m!1969799 () Bool)

(assert (=> d!492166 m!1969799))

(assert (=> d!492166 m!1968535))

(declare-fun m!1969801 () Bool)

(assert (=> b!1634159 m!1969801))

(declare-fun m!1969803 () Bool)

(assert (=> b!1634159 m!1969803))

(assert (=> b!1634159 m!1968625))

(assert (=> b!1634159 m!1969489))

(declare-fun m!1969805 () Bool)

(assert (=> b!1634159 m!1969805))

(declare-fun m!1969807 () Bool)

(assert (=> b!1634159 m!1969807))

(declare-fun m!1969809 () Bool)

(assert (=> b!1634159 m!1969809))

(declare-fun m!1969811 () Bool)

(assert (=> b!1634159 m!1969811))

(declare-fun m!1969813 () Bool)

(assert (=> b!1634159 m!1969813))

(declare-fun m!1969815 () Bool)

(assert (=> b!1634159 m!1969815))

(assert (=> b!1634159 m!1969813))

(declare-fun m!1969817 () Bool)

(assert (=> b!1634159 m!1969817))

(declare-fun m!1969819 () Bool)

(assert (=> b!1634159 m!1969819))

(declare-fun m!1969821 () Bool)

(assert (=> b!1634159 m!1969821))

(assert (=> b!1634159 m!1969819))

(assert (=> b!1634159 m!1969805))

(declare-fun m!1969823 () Bool)

(assert (=> b!1634159 m!1969823))

(declare-fun m!1969825 () Bool)

(assert (=> b!1634159 m!1969825))

(declare-fun m!1969827 () Bool)

(assert (=> b!1634159 m!1969827))

(assert (=> b!1634159 m!1969811))

(assert (=> b!1634159 m!1969801))

(declare-fun m!1969829 () Bool)

(assert (=> b!1634159 m!1969829))

(declare-fun m!1969831 () Bool)

(assert (=> b!1634159 m!1969831))

(declare-fun m!1969833 () Bool)

(assert (=> b!1634159 m!1969833))

(declare-fun m!1969835 () Bool)

(assert (=> b!1634159 m!1969835))

(assert (=> b!1634159 m!1968625))

(declare-fun m!1969837 () Bool)

(assert (=> b!1634159 m!1969837))

(assert (=> b!1634159 m!1968559))

(assert (=> b!1634159 m!1969795))

(assert (=> b!1634159 m!1969819))

(declare-fun m!1969839 () Bool)

(assert (=> b!1634159 m!1969839))

(assert (=> b!1634159 m!1969831))

(declare-fun m!1969841 () Bool)

(assert (=> b!1634159 m!1969841))

(assert (=> b!1634159 m!1969489))

(assert (=> b!1634159 m!1969819))

(declare-fun m!1969843 () Bool)

(assert (=> b!1634159 m!1969843))

(declare-fun m!1969845 () Bool)

(assert (=> b!1634159 m!1969845))

(declare-fun m!1969847 () Bool)

(assert (=> b!1634159 m!1969847))

(assert (=> b!1634159 m!1969837))

(declare-fun m!1969849 () Bool)

(assert (=> b!1634159 m!1969849))

(assert (=> b!1634159 m!1969833))

(declare-fun m!1969851 () Bool)

(assert (=> b!1634159 m!1969851))

(declare-fun m!1969853 () Bool)

(assert (=> b!1634159 m!1969853))

(assert (=> b!1634159 m!1969813))

(assert (=> b!1634159 m!1969489))

(assert (=> b!1634159 m!1969805))

(declare-fun m!1969855 () Bool)

(assert (=> b!1634159 m!1969855))

(declare-fun m!1969857 () Bool)

(assert (=> b!1634159 m!1969857))

(assert (=> b!1634159 m!1968589))

(declare-fun m!1969859 () Bool)

(assert (=> b!1634159 m!1969859))

(assert (=> b!1634159 m!1969841))

(assert (=> b!1634159 m!1969845))

(assert (=> b!1634159 m!1968589))

(assert (=> b!1634159 m!1968559))

(assert (=> b!1634159 m!1969857))

(declare-fun m!1969861 () Bool)

(assert (=> b!1634159 m!1969861))

(declare-fun m!1969863 () Bool)

(assert (=> b!1634159 m!1969863))

(assert (=> b!1634159 m!1969489))

(declare-fun m!1969865 () Bool)

(assert (=> b!1634159 m!1969865))

(assert (=> b!1634160 m!1968559))

(assert (=> b!1634160 m!1968559))

(assert (=> b!1634160 m!1969795))

(assert (=> b!1634160 m!1969795))

(assert (=> b!1634160 m!1969799))

(declare-fun m!1969867 () Bool)

(assert (=> b!1634160 m!1969867))

(assert (=> b!1633627 d!492166))

(declare-fun b!1634170 () Bool)

(declare-fun res!731480 () Bool)

(declare-fun e!1047989 () Bool)

(assert (=> b!1634170 (=> (not res!731480) (not e!1047989))))

(assert (=> b!1634170 (= res!731480 (= (head!3502 lt!595017) (head!3502 lt!595040)))))

(declare-fun b!1634169 () Bool)

(declare-fun e!1047988 () Bool)

(assert (=> b!1634169 (= e!1047988 e!1047989)))

(declare-fun res!731478 () Bool)

(assert (=> b!1634169 (=> (not res!731478) (not e!1047989))))

(assert (=> b!1634169 (= res!731478 (not ((_ is Nil!17950) lt!595040)))))

(declare-fun b!1634172 () Bool)

(declare-fun e!1047990 () Bool)

(assert (=> b!1634172 (= e!1047990 (>= (size!14332 lt!595040) (size!14332 lt!595017)))))

(declare-fun b!1634171 () Bool)

(assert (=> b!1634171 (= e!1047989 (isPrefix!1423 (tail!2384 lt!595017) (tail!2384 lt!595040)))))

(declare-fun d!492220 () Bool)

(assert (=> d!492220 e!1047990))

(declare-fun res!731477 () Bool)

(assert (=> d!492220 (=> res!731477 e!1047990)))

(declare-fun lt!596024 () Bool)

(assert (=> d!492220 (= res!731477 (not lt!596024))))

(assert (=> d!492220 (= lt!596024 e!1047988)))

(declare-fun res!731479 () Bool)

(assert (=> d!492220 (=> res!731479 e!1047988)))

(assert (=> d!492220 (= res!731479 ((_ is Nil!17950) lt!595017))))

(assert (=> d!492220 (= (isPrefix!1423 lt!595017 lt!595040) lt!596024)))

(assert (= (and d!492220 (not res!731479)) b!1634169))

(assert (= (and b!1634169 res!731478) b!1634170))

(assert (= (and b!1634170 res!731480) b!1634171))

(assert (= (and d!492220 (not res!731477)) b!1634172))

(declare-fun m!1969869 () Bool)

(assert (=> b!1634170 m!1969869))

(declare-fun m!1969871 () Bool)

(assert (=> b!1634170 m!1969871))

(declare-fun m!1969873 () Bool)

(assert (=> b!1634172 m!1969873))

(assert (=> b!1634172 m!1968941))

(declare-fun m!1969875 () Bool)

(assert (=> b!1634171 m!1969875))

(declare-fun m!1969877 () Bool)

(assert (=> b!1634171 m!1969877))

(assert (=> b!1634171 m!1969875))

(assert (=> b!1634171 m!1969877))

(declare-fun m!1969879 () Bool)

(assert (=> b!1634171 m!1969879))

(assert (=> b!1633627 d!492220))

(declare-fun d!492222 () Bool)

(assert (=> d!492222 (isPrefix!1423 lt!595017 (++!4799 lt!595017 lt!595030))))

(declare-fun lt!596027 () Unit!29278)

(declare-fun choose!9822 (List!18020 List!18020) Unit!29278)

(assert (=> d!492222 (= lt!596027 (choose!9822 lt!595017 lt!595030))))

(assert (=> d!492222 (= (lemmaConcatTwoListThenFirstIsPrefix!948 lt!595017 lt!595030) lt!596027)))

(declare-fun bs!395309 () Bool)

(assert (= bs!395309 d!492222))

(assert (=> bs!395309 m!1968567))

(assert (=> bs!395309 m!1968567))

(declare-fun m!1969881 () Bool)

(assert (=> bs!395309 m!1969881))

(declare-fun m!1969883 () Bool)

(assert (=> bs!395309 m!1969883))

(assert (=> b!1633627 d!492222))

(declare-fun b!1634201 () Bool)

(declare-fun e!1048009 () Bool)

(assert (=> b!1634201 (= e!1048009 (matchR!1990 (derivativeStep!1092 (regex!3163 (rule!5001 (h!23352 tokens!457))) (head!3502 lt!595017)) (tail!2384 lt!595017)))))

(declare-fun b!1634202 () Bool)

(declare-fun res!731501 () Bool)

(declare-fun e!1048007 () Bool)

(assert (=> b!1634202 (=> res!731501 e!1048007)))

(declare-fun e!1048006 () Bool)

(assert (=> b!1634202 (= res!731501 e!1048006)))

(declare-fun res!731499 () Bool)

(assert (=> b!1634202 (=> (not res!731499) (not e!1048006))))

(declare-fun lt!596030 () Bool)

(assert (=> b!1634202 (= res!731499 lt!596030)))

(declare-fun bm!105594 () Bool)

(declare-fun call!105599 () Bool)

(assert (=> bm!105594 (= call!105599 (isEmpty!10982 lt!595017))))

(declare-fun b!1634203 () Bool)

(declare-fun e!1048010 () Bool)

(declare-fun e!1048011 () Bool)

(assert (=> b!1634203 (= e!1048010 e!1048011)))

(declare-fun res!731504 () Bool)

(assert (=> b!1634203 (=> res!731504 e!1048011)))

(assert (=> b!1634203 (= res!731504 call!105599)))

(declare-fun b!1634204 () Bool)

(declare-fun res!731498 () Bool)

(assert (=> b!1634204 (=> (not res!731498) (not e!1048006))))

(assert (=> b!1634204 (= res!731498 (not call!105599))))

(declare-fun b!1634205 () Bool)

(declare-fun res!731502 () Bool)

(assert (=> b!1634205 (=> (not res!731502) (not e!1048006))))

(assert (=> b!1634205 (= res!731502 (isEmpty!10982 (tail!2384 lt!595017)))))

(declare-fun b!1634206 () Bool)

(declare-fun res!731500 () Bool)

(assert (=> b!1634206 (=> res!731500 e!1048007)))

(assert (=> b!1634206 (= res!731500 (not ((_ is ElementMatch!4491) (regex!3163 (rule!5001 (h!23352 tokens!457))))))))

(declare-fun e!1048005 () Bool)

(assert (=> b!1634206 (= e!1048005 e!1048007)))

(declare-fun b!1634207 () Bool)

(declare-fun e!1048008 () Bool)

(assert (=> b!1634207 (= e!1048008 e!1048005)))

(declare-fun c!265990 () Bool)

(assert (=> b!1634207 (= c!265990 ((_ is EmptyLang!4491) (regex!3163 (rule!5001 (h!23352 tokens!457)))))))

(declare-fun b!1634208 () Bool)

(assert (=> b!1634208 (= e!1048011 (not (= (head!3502 lt!595017) (c!265859 (regex!3163 (rule!5001 (h!23352 tokens!457)))))))))

(declare-fun b!1634210 () Bool)

(assert (=> b!1634210 (= e!1048005 (not lt!596030))))

(declare-fun b!1634211 () Bool)

(declare-fun nullable!1327 (Regex!4491) Bool)

(assert (=> b!1634211 (= e!1048009 (nullable!1327 (regex!3163 (rule!5001 (h!23352 tokens!457)))))))

(declare-fun b!1634212 () Bool)

(assert (=> b!1634212 (= e!1048007 e!1048010)))

(declare-fun res!731503 () Bool)

(assert (=> b!1634212 (=> (not res!731503) (not e!1048010))))

(assert (=> b!1634212 (= res!731503 (not lt!596030))))

(declare-fun b!1634209 () Bool)

(assert (=> b!1634209 (= e!1048008 (= lt!596030 call!105599))))

(declare-fun d!492224 () Bool)

(assert (=> d!492224 e!1048008))

(declare-fun c!265988 () Bool)

(assert (=> d!492224 (= c!265988 ((_ is EmptyExpr!4491) (regex!3163 (rule!5001 (h!23352 tokens!457)))))))

(assert (=> d!492224 (= lt!596030 e!1048009)))

(declare-fun c!265989 () Bool)

(assert (=> d!492224 (= c!265989 (isEmpty!10982 lt!595017))))

(assert (=> d!492224 (validRegex!1788 (regex!3163 (rule!5001 (h!23352 tokens!457))))))

(assert (=> d!492224 (= (matchR!1990 (regex!3163 (rule!5001 (h!23352 tokens!457))) lt!595017) lt!596030)))

(declare-fun b!1634213 () Bool)

(assert (=> b!1634213 (= e!1048006 (= (head!3502 lt!595017) (c!265859 (regex!3163 (rule!5001 (h!23352 tokens!457))))))))

(declare-fun b!1634214 () Bool)

(declare-fun res!731497 () Bool)

(assert (=> b!1634214 (=> res!731497 e!1048011)))

(assert (=> b!1634214 (= res!731497 (not (isEmpty!10982 (tail!2384 lt!595017))))))

(assert (= (and d!492224 c!265989) b!1634211))

(assert (= (and d!492224 (not c!265989)) b!1634201))

(assert (= (and d!492224 c!265988) b!1634209))

(assert (= (and d!492224 (not c!265988)) b!1634207))

(assert (= (and b!1634207 c!265990) b!1634210))

(assert (= (and b!1634207 (not c!265990)) b!1634206))

(assert (= (and b!1634206 (not res!731500)) b!1634202))

(assert (= (and b!1634202 res!731499) b!1634204))

(assert (= (and b!1634204 res!731498) b!1634205))

(assert (= (and b!1634205 res!731502) b!1634213))

(assert (= (and b!1634202 (not res!731501)) b!1634212))

(assert (= (and b!1634212 res!731503) b!1634203))

(assert (= (and b!1634203 (not res!731504)) b!1634214))

(assert (= (and b!1634214 (not res!731497)) b!1634208))

(assert (= (or b!1634209 b!1634203 b!1634204) bm!105594))

(declare-fun m!1969885 () Bool)

(assert (=> bm!105594 m!1969885))

(assert (=> b!1634205 m!1969875))

(assert (=> b!1634205 m!1969875))

(declare-fun m!1969887 () Bool)

(assert (=> b!1634205 m!1969887))

(assert (=> b!1634208 m!1969869))

(declare-fun m!1969889 () Bool)

(assert (=> b!1634211 m!1969889))

(assert (=> b!1634201 m!1969869))

(assert (=> b!1634201 m!1969869))

(declare-fun m!1969891 () Bool)

(assert (=> b!1634201 m!1969891))

(assert (=> b!1634201 m!1969875))

(assert (=> b!1634201 m!1969891))

(assert (=> b!1634201 m!1969875))

(declare-fun m!1969893 () Bool)

(assert (=> b!1634201 m!1969893))

(assert (=> b!1634214 m!1969875))

(assert (=> b!1634214 m!1969875))

(assert (=> b!1634214 m!1969887))

(assert (=> d!492224 m!1969885))

(declare-fun m!1969895 () Bool)

(assert (=> d!492224 m!1969895))

(assert (=> b!1634213 m!1969869))

(assert (=> b!1633623 d!492224))

(declare-fun d!492226 () Bool)

(declare-fun lt!596031 () BalanceConc!11892)

(assert (=> d!492226 (= (list!7067 lt!596031) (printList!907 thiss!17113 (list!7068 lt!595031)))))

(assert (=> d!492226 (= lt!596031 (printTailRec!845 thiss!17113 lt!595031 0 (BalanceConc!11893 Empty!5974)))))

(assert (=> d!492226 (= (print!1323 thiss!17113 lt!595031) lt!596031)))

(declare-fun bs!395310 () Bool)

(assert (= bs!395310 d!492226))

(declare-fun m!1969897 () Bool)

(assert (=> bs!395310 m!1969897))

(declare-fun m!1969899 () Bool)

(assert (=> bs!395310 m!1969899))

(assert (=> bs!395310 m!1969899))

(declare-fun m!1969901 () Bool)

(assert (=> bs!395310 m!1969901))

(assert (=> bs!395310 m!1968539))

(assert (=> b!1633624 d!492226))

(declare-fun d!492228 () Bool)

(declare-fun lt!596050 () BalanceConc!11892)

(declare-fun printListTailRec!364 (LexerInterface!2792 List!18021 List!18020) List!18020)

(declare-fun dropList!627 (BalanceConc!11894 Int) List!18021)

(assert (=> d!492228 (= (list!7067 lt!596050) (printListTailRec!364 thiss!17113 (dropList!627 lt!595031 0) (list!7067 (BalanceConc!11893 Empty!5974))))))

(declare-fun e!1048020 () BalanceConc!11892)

(assert (=> d!492228 (= lt!596050 e!1048020)))

(declare-fun c!265993 () Bool)

(assert (=> d!492228 (= c!265993 (>= 0 (size!14335 lt!595031)))))

(declare-fun e!1048021 () Bool)

(assert (=> d!492228 e!1048021))

(declare-fun res!731511 () Bool)

(assert (=> d!492228 (=> (not res!731511) (not e!1048021))))

(assert (=> d!492228 (= res!731511 (>= 0 0))))

(assert (=> d!492228 (= (printTailRec!845 thiss!17113 lt!595031 0 (BalanceConc!11893 Empty!5974)) lt!596050)))

(declare-fun b!1634225 () Bool)

(assert (=> b!1634225 (= e!1048021 (<= 0 (size!14335 lt!595031)))))

(declare-fun b!1634226 () Bool)

(assert (=> b!1634226 (= e!1048020 (BalanceConc!11893 Empty!5974))))

(declare-fun b!1634227 () Bool)

(assert (=> b!1634227 (= e!1048020 (printTailRec!845 thiss!17113 lt!595031 (+ 0 1) (++!4800 (BalanceConc!11893 Empty!5974) (charsOf!1812 (apply!4632 lt!595031 0)))))))

(declare-fun lt!596051 () List!18021)

(assert (=> b!1634227 (= lt!596051 (list!7068 lt!595031))))

(declare-fun lt!596049 () Unit!29278)

(declare-fun lemmaDropApply!571 (List!18021 Int) Unit!29278)

(assert (=> b!1634227 (= lt!596049 (lemmaDropApply!571 lt!596051 0))))

(declare-fun drop!883 (List!18021 Int) List!18021)

(declare-fun apply!4637 (List!18021 Int) Token!5892)

(assert (=> b!1634227 (= (head!3506 (drop!883 lt!596051 0)) (apply!4637 lt!596051 0))))

(declare-fun lt!596048 () Unit!29278)

(assert (=> b!1634227 (= lt!596048 lt!596049)))

(declare-fun lt!596053 () List!18021)

(assert (=> b!1634227 (= lt!596053 (list!7068 lt!595031))))

(declare-fun lt!596054 () Unit!29278)

(declare-fun lemmaDropTail!551 (List!18021 Int) Unit!29278)

(assert (=> b!1634227 (= lt!596054 (lemmaDropTail!551 lt!596053 0))))

(declare-fun tail!2385 (List!18021) List!18021)

(assert (=> b!1634227 (= (tail!2385 (drop!883 lt!596053 0)) (drop!883 lt!596053 (+ 0 1)))))

(declare-fun lt!596052 () Unit!29278)

(assert (=> b!1634227 (= lt!596052 lt!596054)))

(assert (= (and d!492228 res!731511) b!1634225))

(assert (= (and d!492228 c!265993) b!1634226))

(assert (= (and d!492228 (not c!265993)) b!1634227))

(declare-fun m!1969903 () Bool)

(assert (=> d!492228 m!1969903))

(declare-fun m!1969905 () Bool)

(assert (=> d!492228 m!1969905))

(declare-fun m!1969907 () Bool)

(assert (=> d!492228 m!1969907))

(assert (=> d!492228 m!1969907))

(assert (=> d!492228 m!1969905))

(declare-fun m!1969909 () Bool)

(assert (=> d!492228 m!1969909))

(declare-fun m!1969911 () Bool)

(assert (=> d!492228 m!1969911))

(assert (=> b!1634225 m!1969903))

(declare-fun m!1969913 () Bool)

(assert (=> b!1634227 m!1969913))

(declare-fun m!1969915 () Bool)

(assert (=> b!1634227 m!1969915))

(declare-fun m!1969917 () Bool)

(assert (=> b!1634227 m!1969917))

(declare-fun m!1969919 () Bool)

(assert (=> b!1634227 m!1969919))

(declare-fun m!1969921 () Bool)

(assert (=> b!1634227 m!1969921))

(declare-fun m!1969923 () Bool)

(assert (=> b!1634227 m!1969923))

(declare-fun m!1969925 () Bool)

(assert (=> b!1634227 m!1969925))

(assert (=> b!1634227 m!1969915))

(assert (=> b!1634227 m!1969917))

(assert (=> b!1634227 m!1969899))

(assert (=> b!1634227 m!1969925))

(declare-fun m!1969927 () Bool)

(assert (=> b!1634227 m!1969927))

(assert (=> b!1634227 m!1969919))

(declare-fun m!1969929 () Bool)

(assert (=> b!1634227 m!1969929))

(declare-fun m!1969931 () Bool)

(assert (=> b!1634227 m!1969931))

(declare-fun m!1969933 () Bool)

(assert (=> b!1634227 m!1969933))

(assert (=> b!1634227 m!1969921))

(declare-fun m!1969935 () Bool)

(assert (=> b!1634227 m!1969935))

(assert (=> b!1633624 d!492228))

(declare-fun b!1634246 () Bool)

(declare-fun e!1048030 () Option!3359)

(declare-fun call!105602 () Option!3359)

(assert (=> b!1634246 (= e!1048030 call!105602)))

(declare-fun b!1634247 () Bool)

(declare-fun e!1048029 () Bool)

(declare-fun e!1048028 () Bool)

(assert (=> b!1634247 (= e!1048029 e!1048028)))

(declare-fun res!731532 () Bool)

(assert (=> b!1634247 (=> (not res!731532) (not e!1048028))))

(declare-fun lt!596067 () Option!3359)

(assert (=> b!1634247 (= res!731532 (isDefined!2726 lt!596067))))

(declare-fun b!1634248 () Bool)

(declare-fun contains!3136 (List!18022 Rule!6126) Bool)

(assert (=> b!1634248 (= e!1048028 (contains!3136 rules!1846 (rule!5001 (_1!10184 (get!5193 lt!596067)))))))

(declare-fun b!1634249 () Bool)

(declare-fun res!731531 () Bool)

(assert (=> b!1634249 (=> (not res!731531) (not e!1048028))))

(assert (=> b!1634249 (= res!731531 (= (++!4799 (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596067)))) (_2!10184 (get!5193 lt!596067))) lt!595038))))

(declare-fun d!492230 () Bool)

(assert (=> d!492230 e!1048029))

(declare-fun res!731528 () Bool)

(assert (=> d!492230 (=> res!731528 e!1048029)))

(assert (=> d!492230 (= res!731528 (isEmpty!10991 lt!596067))))

(assert (=> d!492230 (= lt!596067 e!1048030)))

(declare-fun c!265996 () Bool)

(assert (=> d!492230 (= c!265996 (and ((_ is Cons!17952) rules!1846) ((_ is Nil!17952) (t!149605 rules!1846))))))

(declare-fun lt!596065 () Unit!29278)

(declare-fun lt!596066 () Unit!29278)

(assert (=> d!492230 (= lt!596065 lt!596066)))

(assert (=> d!492230 (isPrefix!1423 lt!595038 lt!595038)))

(assert (=> d!492230 (= lt!596066 (lemmaIsPrefixRefl!970 lt!595038 lt!595038))))

(assert (=> d!492230 (rulesValidInductive!986 thiss!17113 rules!1846)))

(assert (=> d!492230 (= (maxPrefix!1356 thiss!17113 rules!1846 lt!595038) lt!596067)))

(declare-fun bm!105597 () Bool)

(assert (=> bm!105597 (= call!105602 (maxPrefixOneRule!785 thiss!17113 (h!23353 rules!1846) lt!595038))))

(declare-fun b!1634250 () Bool)

(declare-fun res!731529 () Bool)

(assert (=> b!1634250 (=> (not res!731529) (not e!1048028))))

(assert (=> b!1634250 (= res!731529 (= (value!99818 (_1!10184 (get!5193 lt!596067))) (apply!4630 (transformation!3163 (rule!5001 (_1!10184 (get!5193 lt!596067)))) (seqFromList!2075 (originalCharacters!3977 (_1!10184 (get!5193 lt!596067)))))))))

(declare-fun b!1634251 () Bool)

(declare-fun lt!596068 () Option!3359)

(declare-fun lt!596069 () Option!3359)

(assert (=> b!1634251 (= e!1048030 (ite (and ((_ is None!3358) lt!596068) ((_ is None!3358) lt!596069)) None!3358 (ite ((_ is None!3358) lt!596069) lt!596068 (ite ((_ is None!3358) lt!596068) lt!596069 (ite (>= (size!14330 (_1!10184 (v!24429 lt!596068))) (size!14330 (_1!10184 (v!24429 lt!596069)))) lt!596068 lt!596069)))))))

(assert (=> b!1634251 (= lt!596068 call!105602)))

(assert (=> b!1634251 (= lt!596069 (maxPrefix!1356 thiss!17113 (t!149605 rules!1846) lt!595038))))

(declare-fun b!1634252 () Bool)

(declare-fun res!731526 () Bool)

(assert (=> b!1634252 (=> (not res!731526) (not e!1048028))))

(assert (=> b!1634252 (= res!731526 (< (size!14332 (_2!10184 (get!5193 lt!596067))) (size!14332 lt!595038)))))

(declare-fun b!1634253 () Bool)

(declare-fun res!731530 () Bool)

(assert (=> b!1634253 (=> (not res!731530) (not e!1048028))))

(assert (=> b!1634253 (= res!731530 (matchR!1990 (regex!3163 (rule!5001 (_1!10184 (get!5193 lt!596067)))) (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596067))))))))

(declare-fun b!1634254 () Bool)

(declare-fun res!731527 () Bool)

(assert (=> b!1634254 (=> (not res!731527) (not e!1048028))))

(assert (=> b!1634254 (= res!731527 (= (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596067)))) (originalCharacters!3977 (_1!10184 (get!5193 lt!596067)))))))

(assert (= (and d!492230 c!265996) b!1634246))

(assert (= (and d!492230 (not c!265996)) b!1634251))

(assert (= (or b!1634246 b!1634251) bm!105597))

(assert (= (and d!492230 (not res!731528)) b!1634247))

(assert (= (and b!1634247 res!731532) b!1634254))

(assert (= (and b!1634254 res!731527) b!1634252))

(assert (= (and b!1634252 res!731526) b!1634249))

(assert (= (and b!1634249 res!731531) b!1634250))

(assert (= (and b!1634250 res!731529) b!1634253))

(assert (= (and b!1634253 res!731530) b!1634248))

(declare-fun m!1969937 () Bool)

(assert (=> b!1634253 m!1969937))

(declare-fun m!1969939 () Bool)

(assert (=> b!1634253 m!1969939))

(assert (=> b!1634253 m!1969939))

(declare-fun m!1969941 () Bool)

(assert (=> b!1634253 m!1969941))

(assert (=> b!1634253 m!1969941))

(declare-fun m!1969943 () Bool)

(assert (=> b!1634253 m!1969943))

(declare-fun m!1969945 () Bool)

(assert (=> bm!105597 m!1969945))

(assert (=> b!1634248 m!1969937))

(declare-fun m!1969947 () Bool)

(assert (=> b!1634248 m!1969947))

(declare-fun m!1969949 () Bool)

(assert (=> b!1634247 m!1969949))

(assert (=> b!1634250 m!1969937))

(declare-fun m!1969951 () Bool)

(assert (=> b!1634250 m!1969951))

(assert (=> b!1634250 m!1969951))

(declare-fun m!1969953 () Bool)

(assert (=> b!1634250 m!1969953))

(assert (=> b!1634249 m!1969937))

(assert (=> b!1634249 m!1969939))

(assert (=> b!1634249 m!1969939))

(assert (=> b!1634249 m!1969941))

(assert (=> b!1634249 m!1969941))

(declare-fun m!1969955 () Bool)

(assert (=> b!1634249 m!1969955))

(declare-fun m!1969957 () Bool)

(assert (=> d!492230 m!1969957))

(assert (=> d!492230 m!1969597))

(assert (=> d!492230 m!1969599))

(assert (=> d!492230 m!1969271))

(declare-fun m!1969959 () Bool)

(assert (=> b!1634251 m!1969959))

(assert (=> b!1634252 m!1969937))

(declare-fun m!1969961 () Bool)

(assert (=> b!1634252 m!1969961))

(declare-fun m!1969963 () Bool)

(assert (=> b!1634252 m!1969963))

(assert (=> b!1634254 m!1969937))

(assert (=> b!1634254 m!1969939))

(assert (=> b!1634254 m!1969939))

(assert (=> b!1634254 m!1969941))

(assert (=> b!1633624 d!492230))

(declare-fun d!492232 () Bool)

(declare-fun c!265999 () Bool)

(assert (=> d!492232 (= c!265999 ((_ is Cons!17951) (Cons!17951 (h!23352 tokens!457) Nil!17951)))))

(declare-fun e!1048033 () List!18020)

(assert (=> d!492232 (= (printList!907 thiss!17113 (Cons!17951 (h!23352 tokens!457) Nil!17951)) e!1048033)))

(declare-fun b!1634259 () Bool)

(assert (=> b!1634259 (= e!1048033 (++!4799 (list!7067 (charsOf!1812 (h!23352 (Cons!17951 (h!23352 tokens!457) Nil!17951)))) (printList!907 thiss!17113 (t!149604 (Cons!17951 (h!23352 tokens!457) Nil!17951)))))))

(declare-fun b!1634260 () Bool)

(assert (=> b!1634260 (= e!1048033 Nil!17950)))

(assert (= (and d!492232 c!265999) b!1634259))

(assert (= (and d!492232 (not c!265999)) b!1634260))

(declare-fun m!1969965 () Bool)

(assert (=> b!1634259 m!1969965))

(assert (=> b!1634259 m!1969965))

(declare-fun m!1969967 () Bool)

(assert (=> b!1634259 m!1969967))

(declare-fun m!1969969 () Bool)

(assert (=> b!1634259 m!1969969))

(assert (=> b!1634259 m!1969967))

(assert (=> b!1634259 m!1969969))

(declare-fun m!1969971 () Bool)

(assert (=> b!1634259 m!1969971))

(assert (=> b!1633624 d!492232))

(declare-fun d!492234 () Bool)

(assert (=> d!492234 (= (list!7067 lt!595042) (list!7070 (c!265860 lt!595042)))))

(declare-fun bs!395311 () Bool)

(assert (= bs!395311 d!492234))

(declare-fun m!1969973 () Bool)

(assert (=> bs!395311 m!1969973))

(assert (=> b!1633624 d!492234))

(declare-fun d!492236 () Bool)

(declare-fun e!1048036 () Bool)

(assert (=> d!492236 e!1048036))

(declare-fun res!731535 () Bool)

(assert (=> d!492236 (=> (not res!731535) (not e!1048036))))

(declare-fun lt!596072 () BalanceConc!11894)

(assert (=> d!492236 (= res!731535 (= (list!7068 lt!596072) (Cons!17951 (h!23352 tokens!457) Nil!17951)))))

(declare-fun singleton!689 (Token!5892) BalanceConc!11894)

(assert (=> d!492236 (= lt!596072 (singleton!689 (h!23352 tokens!457)))))

(assert (=> d!492236 (= (singletonSeq!1604 (h!23352 tokens!457)) lt!596072)))

(declare-fun b!1634263 () Bool)

(declare-fun isBalanced!1809 (Conc!5975) Bool)

(assert (=> b!1634263 (= e!1048036 (isBalanced!1809 (c!265861 lt!596072)))))

(assert (= (and d!492236 res!731535) b!1634263))

(declare-fun m!1969975 () Bool)

(assert (=> d!492236 m!1969975))

(declare-fun m!1969977 () Bool)

(assert (=> d!492236 m!1969977))

(declare-fun m!1969979 () Bool)

(assert (=> b!1634263 m!1969979))

(assert (=> b!1633624 d!492236))

(declare-fun d!492238 () Bool)

(assert (=> d!492238 (= (isDefined!2727 (maxPrefixZipperSequence!687 thiss!17113 rules!1846 lt!595034)) (not (isEmpty!10992 (maxPrefixZipperSequence!687 thiss!17113 rules!1846 lt!595034))))))

(declare-fun bs!395312 () Bool)

(assert (= bs!395312 d!492238))

(assert (=> bs!395312 m!1968653))

(declare-fun m!1969981 () Bool)

(assert (=> bs!395312 m!1969981))

(assert (=> b!1633641 d!492238))

(declare-fun b!1634264 () Bool)

(declare-fun e!1048038 () Option!3360)

(declare-fun call!105603 () Option!3360)

(assert (=> b!1634264 (= e!1048038 call!105603)))

(declare-fun b!1634265 () Bool)

(declare-fun e!1048039 () Bool)

(declare-fun e!1048042 () Bool)

(assert (=> b!1634265 (= e!1048039 e!1048042)))

(declare-fun res!731540 () Bool)

(assert (=> b!1634265 (=> res!731540 e!1048042)))

(declare-fun lt!596077 () Option!3360)

(assert (=> b!1634265 (= res!731540 (not (isDefined!2727 lt!596077)))))

(declare-fun b!1634266 () Bool)

(declare-fun e!1048037 () Bool)

(assert (=> b!1634266 (= e!1048042 e!1048037)))

(declare-fun res!731541 () Bool)

(assert (=> b!1634266 (=> (not res!731541) (not e!1048037))))

(assert (=> b!1634266 (= res!731541 (= (_1!10185 (get!5197 lt!596077)) (_1!10184 (get!5193 (maxPrefix!1356 thiss!17113 rules!1846 (list!7067 lt!595034))))))))

(declare-fun b!1634267 () Bool)

(declare-fun lt!596076 () Option!3360)

(declare-fun lt!596078 () Option!3360)

(assert (=> b!1634267 (= e!1048038 (ite (and ((_ is None!3359) lt!596076) ((_ is None!3359) lt!596078)) None!3359 (ite ((_ is None!3359) lt!596078) lt!596076 (ite ((_ is None!3359) lt!596076) lt!596078 (ite (>= (size!14330 (_1!10185 (v!24430 lt!596076))) (size!14330 (_1!10185 (v!24430 lt!596078)))) lt!596076 lt!596078)))))))

(assert (=> b!1634267 (= lt!596076 call!105603)))

(assert (=> b!1634267 (= lt!596078 (maxPrefixZipperSequence!687 thiss!17113 (t!149605 rules!1846) lt!595034))))

(declare-fun b!1634268 () Bool)

(declare-fun e!1048041 () Bool)

(assert (=> b!1634268 (= e!1048041 (= (list!7067 (_2!10185 (get!5197 lt!596077))) (_2!10184 (get!5193 (maxPrefixZipper!320 thiss!17113 rules!1846 (list!7067 lt!595034))))))))

(declare-fun b!1634269 () Bool)

(assert (=> b!1634269 (= e!1048037 (= (list!7067 (_2!10185 (get!5197 lt!596077))) (_2!10184 (get!5193 (maxPrefix!1356 thiss!17113 rules!1846 (list!7067 lt!595034))))))))

(declare-fun d!492240 () Bool)

(assert (=> d!492240 e!1048039))

(declare-fun res!731539 () Bool)

(assert (=> d!492240 (=> (not res!731539) (not e!1048039))))

(assert (=> d!492240 (= res!731539 (= (isDefined!2727 lt!596077) (isDefined!2726 (maxPrefixZipper!320 thiss!17113 rules!1846 (list!7067 lt!595034)))))))

(assert (=> d!492240 (= lt!596077 e!1048038)))

(declare-fun c!266000 () Bool)

(assert (=> d!492240 (= c!266000 (and ((_ is Cons!17952) rules!1846) ((_ is Nil!17952) (t!149605 rules!1846))))))

(declare-fun lt!596074 () Unit!29278)

(declare-fun lt!596075 () Unit!29278)

(assert (=> d!492240 (= lt!596074 lt!596075)))

(declare-fun lt!596073 () List!18020)

(declare-fun lt!596079 () List!18020)

(assert (=> d!492240 (isPrefix!1423 lt!596073 lt!596079)))

(assert (=> d!492240 (= lt!596075 (lemmaIsPrefixRefl!970 lt!596073 lt!596079))))

(assert (=> d!492240 (= lt!596079 (list!7067 lt!595034))))

(assert (=> d!492240 (= lt!596073 (list!7067 lt!595034))))

(assert (=> d!492240 (rulesValidInductive!986 thiss!17113 rules!1846)))

(assert (=> d!492240 (= (maxPrefixZipperSequence!687 thiss!17113 rules!1846 lt!595034) lt!596077)))

(declare-fun b!1634270 () Bool)

(declare-fun res!731537 () Bool)

(assert (=> b!1634270 (=> (not res!731537) (not e!1048039))))

(declare-fun e!1048040 () Bool)

(assert (=> b!1634270 (= res!731537 e!1048040)))

(declare-fun res!731536 () Bool)

(assert (=> b!1634270 (=> res!731536 e!1048040)))

(assert (=> b!1634270 (= res!731536 (not (isDefined!2727 lt!596077)))))

(declare-fun b!1634271 () Bool)

(assert (=> b!1634271 (= e!1048040 e!1048041)))

(declare-fun res!731538 () Bool)

(assert (=> b!1634271 (=> (not res!731538) (not e!1048041))))

(assert (=> b!1634271 (= res!731538 (= (_1!10185 (get!5197 lt!596077)) (_1!10184 (get!5193 (maxPrefixZipper!320 thiss!17113 rules!1846 (list!7067 lt!595034))))))))

(declare-fun bm!105598 () Bool)

(assert (=> bm!105598 (= call!105603 (maxPrefixOneRuleZipperSequence!326 thiss!17113 (h!23353 rules!1846) lt!595034))))

(assert (= (and d!492240 c!266000) b!1634264))

(assert (= (and d!492240 (not c!266000)) b!1634267))

(assert (= (or b!1634264 b!1634267) bm!105598))

(assert (= (and d!492240 res!731539) b!1634270))

(assert (= (and b!1634270 (not res!731536)) b!1634271))

(assert (= (and b!1634271 res!731538) b!1634268))

(assert (= (and b!1634270 res!731537) b!1634265))

(assert (= (and b!1634265 (not res!731540)) b!1634266))

(assert (= (and b!1634266 res!731541) b!1634269))

(assert (=> d!492240 m!1968571))

(assert (=> d!492240 m!1969271))

(declare-fun m!1969983 () Bool)

(assert (=> d!492240 m!1969983))

(declare-fun m!1969985 () Bool)

(assert (=> d!492240 m!1969985))

(declare-fun m!1969987 () Bool)

(assert (=> d!492240 m!1969987))

(declare-fun m!1969989 () Bool)

(assert (=> d!492240 m!1969989))

(assert (=> d!492240 m!1968571))

(assert (=> d!492240 m!1969985))

(declare-fun m!1969991 () Bool)

(assert (=> d!492240 m!1969991))

(assert (=> b!1634268 m!1968571))

(declare-fun m!1969993 () Bool)

(assert (=> b!1634268 m!1969993))

(declare-fun m!1969995 () Bool)

(assert (=> b!1634268 m!1969995))

(assert (=> b!1634268 m!1968571))

(assert (=> b!1634268 m!1969985))

(assert (=> b!1634268 m!1969985))

(declare-fun m!1969997 () Bool)

(assert (=> b!1634268 m!1969997))

(assert (=> b!1634269 m!1968571))

(assert (=> b!1634269 m!1969993))

(assert (=> b!1634269 m!1969995))

(assert (=> b!1634269 m!1968571))

(declare-fun m!1969999 () Bool)

(assert (=> b!1634269 m!1969999))

(assert (=> b!1634269 m!1969999))

(declare-fun m!1970001 () Bool)

(assert (=> b!1634269 m!1970001))

(assert (=> b!1634266 m!1969993))

(assert (=> b!1634266 m!1968571))

(assert (=> b!1634266 m!1968571))

(assert (=> b!1634266 m!1969999))

(assert (=> b!1634266 m!1969999))

(assert (=> b!1634266 m!1970001))

(assert (=> b!1634270 m!1969989))

(assert (=> b!1634271 m!1969993))

(assert (=> b!1634271 m!1968571))

(assert (=> b!1634271 m!1968571))

(assert (=> b!1634271 m!1969985))

(assert (=> b!1634271 m!1969985))

(assert (=> b!1634271 m!1969997))

(declare-fun m!1970003 () Bool)

(assert (=> b!1634267 m!1970003))

(assert (=> b!1634265 m!1969989))

(declare-fun m!1970005 () Bool)

(assert (=> bm!105598 m!1970005))

(assert (=> b!1633641 d!492240))

(declare-fun d!492242 () Bool)

(declare-fun e!1048045 () Bool)

(assert (=> d!492242 e!1048045))

(declare-fun res!731544 () Bool)

(assert (=> d!492242 (=> (not res!731544) (not e!1048045))))

(declare-fun prepend!700 (Conc!5975 Token!5892) Conc!5975)

(assert (=> d!492242 (= res!731544 (isBalanced!1809 (prepend!700 (c!265861 (seqFromList!2076 (t!149604 (t!149604 tokens!457)))) (h!23352 (t!149604 tokens!457)))))))

(declare-fun lt!596082 () BalanceConc!11894)

(assert (=> d!492242 (= lt!596082 (BalanceConc!11895 (prepend!700 (c!265861 (seqFromList!2076 (t!149604 (t!149604 tokens!457)))) (h!23352 (t!149604 tokens!457)))))))

(assert (=> d!492242 (= (prepend!699 (seqFromList!2076 (t!149604 (t!149604 tokens!457))) (h!23352 (t!149604 tokens!457))) lt!596082)))

(declare-fun b!1634274 () Bool)

(assert (=> b!1634274 (= e!1048045 (= (list!7068 lt!596082) (Cons!17951 (h!23352 (t!149604 tokens!457)) (list!7068 (seqFromList!2076 (t!149604 (t!149604 tokens!457)))))))))

(assert (= (and d!492242 res!731544) b!1634274))

(declare-fun m!1970007 () Bool)

(assert (=> d!492242 m!1970007))

(assert (=> d!492242 m!1970007))

(declare-fun m!1970009 () Bool)

(assert (=> d!492242 m!1970009))

(declare-fun m!1970011 () Bool)

(assert (=> b!1634274 m!1970011))

(assert (=> b!1634274 m!1968589))

(declare-fun m!1970013 () Bool)

(assert (=> b!1634274 m!1970013))

(assert (=> b!1633642 d!492242))

(declare-fun d!492244 () Bool)

(assert (=> d!492244 (= (list!7068 (prepend!699 (seqFromList!2076 (t!149604 (t!149604 tokens!457))) (h!23352 (t!149604 tokens!457)))) (list!7072 (c!265861 (prepend!699 (seqFromList!2076 (t!149604 (t!149604 tokens!457))) (h!23352 (t!149604 tokens!457))))))))

(declare-fun bs!395313 () Bool)

(assert (= bs!395313 d!492244))

(declare-fun m!1970015 () Bool)

(assert (=> bs!395313 m!1970015))

(assert (=> b!1633642 d!492244))

(declare-fun d!492246 () Bool)

(assert (=> d!492246 (= (list!7068 lt!595021) (list!7072 (c!265861 lt!595021)))))

(declare-fun bs!395314 () Bool)

(assert (= bs!395314 d!492246))

(declare-fun m!1970017 () Bool)

(assert (=> bs!395314 m!1970017))

(assert (=> b!1633642 d!492246))

(declare-fun d!492248 () Bool)

(assert (=> d!492248 (= (seqFromList!2076 (t!149604 (t!149604 tokens!457))) (fromListB!914 (t!149604 (t!149604 tokens!457))))))

(declare-fun bs!395315 () Bool)

(assert (= bs!395315 d!492248))

(declare-fun m!1970019 () Bool)

(assert (=> bs!395315 m!1970019))

(assert (=> b!1633642 d!492248))

(declare-fun d!492250 () Bool)

(assert (=> d!492250 (= (list!7068 (_1!10183 lt!595018)) (list!7068 (prepend!699 (seqFromList!2076 (t!149604 (t!149604 tokens!457))) (h!23352 (t!149604 tokens!457)))))))

(declare-fun lt!596085 () Unit!29278)

(declare-fun choose!9823 (Token!5892 List!18021 BalanceConc!11894) Unit!29278)

(assert (=> d!492250 (= lt!596085 (choose!9823 (h!23352 (t!149604 tokens!457)) (t!149604 (t!149604 tokens!457)) (_1!10183 lt!595018)))))

(declare-fun $colon$colon!340 (List!18021 Token!5892) List!18021)

(assert (=> d!492250 (= (list!7068 (_1!10183 lt!595018)) (list!7068 (seqFromList!2076 ($colon$colon!340 (t!149604 (t!149604 tokens!457)) (h!23352 (t!149604 tokens!457))))))))

(assert (=> d!492250 (= (seqFromListBHdTlConstructive!240 (h!23352 (t!149604 tokens!457)) (t!149604 (t!149604 tokens!457)) (_1!10183 lt!595018)) lt!596085)))

(declare-fun bs!395316 () Bool)

(assert (= bs!395316 d!492250))

(assert (=> bs!395316 m!1968509))

(assert (=> bs!395316 m!1968589))

(assert (=> bs!395316 m!1968591))

(assert (=> bs!395316 m!1968589))

(declare-fun m!1970021 () Bool)

(assert (=> bs!395316 m!1970021))

(declare-fun m!1970023 () Bool)

(assert (=> bs!395316 m!1970023))

(declare-fun m!1970025 () Bool)

(assert (=> bs!395316 m!1970025))

(declare-fun m!1970027 () Bool)

(assert (=> bs!395316 m!1970027))

(assert (=> bs!395316 m!1970023))

(assert (=> bs!395316 m!1970025))

(assert (=> bs!395316 m!1968591))

(assert (=> bs!395316 m!1968593))

(assert (=> b!1633642 d!492250))

(declare-fun b!1634388 () Bool)

(declare-fun e!1048130 () Bool)

(assert (=> b!1634388 (= e!1048130 true)))

(declare-fun b!1634387 () Bool)

(declare-fun e!1048129 () Bool)

(assert (=> b!1634387 (= e!1048129 e!1048130)))

(declare-fun b!1634386 () Bool)

(declare-fun e!1048128 () Bool)

(assert (=> b!1634386 (= e!1048128 e!1048129)))

(declare-fun d!492252 () Bool)

(assert (=> d!492252 e!1048128))

(assert (= b!1634387 b!1634388))

(assert (= b!1634386 b!1634387))

(assert (= (and d!492252 ((_ is Cons!17952) rules!1846)) b!1634386))

(declare-fun order!10647 () Int)

(declare-fun order!10649 () Int)

(declare-fun lambda!67394 () Int)

(declare-fun dynLambda!8007 (Int Int) Int)

(declare-fun dynLambda!8008 (Int Int) Int)

(assert (=> b!1634388 (< (dynLambda!8007 order!10647 (toValue!4594 (transformation!3163 (h!23353 rules!1846)))) (dynLambda!8008 order!10649 lambda!67394))))

(declare-fun order!10651 () Int)

(declare-fun dynLambda!8009 (Int Int) Int)

(assert (=> b!1634388 (< (dynLambda!8009 order!10651 (toChars!4453 (transformation!3163 (h!23353 rules!1846)))) (dynLambda!8008 order!10649 lambda!67394))))

(assert (=> d!492252 true))

(declare-fun lt!596125 () Bool)

(declare-fun forall!4102 (List!18021 Int) Bool)

(assert (=> d!492252 (= lt!596125 (forall!4102 tokens!457 lambda!67394))))

(declare-fun e!1048121 () Bool)

(assert (=> d!492252 (= lt!596125 e!1048121)))

(declare-fun res!731572 () Bool)

(assert (=> d!492252 (=> res!731572 e!1048121)))

(assert (=> d!492252 (= res!731572 (not ((_ is Cons!17951) tokens!457)))))

(assert (=> d!492252 (not (isEmpty!10983 rules!1846))))

(assert (=> d!492252 (= (rulesProduceEachTokenIndividuallyList!994 thiss!17113 rules!1846 tokens!457) lt!596125)))

(declare-fun b!1634376 () Bool)

(declare-fun e!1048120 () Bool)

(assert (=> b!1634376 (= e!1048121 e!1048120)))

(declare-fun res!731571 () Bool)

(assert (=> b!1634376 (=> (not res!731571) (not e!1048120))))

(assert (=> b!1634376 (= res!731571 (rulesProduceIndividualToken!1444 thiss!17113 rules!1846 (h!23352 tokens!457)))))

(declare-fun b!1634377 () Bool)

(assert (=> b!1634377 (= e!1048120 (rulesProduceEachTokenIndividuallyList!994 thiss!17113 rules!1846 (t!149604 tokens!457)))))

(assert (= (and d!492252 (not res!731572)) b!1634376))

(assert (= (and b!1634376 res!731571) b!1634377))

(declare-fun m!1970163 () Bool)

(assert (=> d!492252 m!1970163))

(assert (=> d!492252 m!1968535))

(assert (=> b!1634376 m!1968579))

(declare-fun m!1970165 () Bool)

(assert (=> b!1634377 m!1970165))

(assert (=> b!1633621 d!492252))

(declare-fun d!492288 () Bool)

(assert (=> d!492288 (= (isEmpty!10983 rules!1846) ((_ is Nil!17952) rules!1846))))

(assert (=> b!1633643 d!492288))

(declare-fun b!1634391 () Bool)

(declare-fun e!1048133 () Option!3359)

(declare-fun call!105605 () Option!3359)

(assert (=> b!1634391 (= e!1048133 call!105605)))

(declare-fun b!1634392 () Bool)

(declare-fun e!1048132 () Bool)

(declare-fun e!1048131 () Bool)

(assert (=> b!1634392 (= e!1048132 e!1048131)))

(declare-fun res!731579 () Bool)

(assert (=> b!1634392 (=> (not res!731579) (not e!1048131))))

(declare-fun lt!596128 () Option!3359)

(assert (=> b!1634392 (= res!731579 (isDefined!2726 lt!596128))))

(declare-fun b!1634393 () Bool)

(assert (=> b!1634393 (= e!1048131 (contains!3136 rules!1846 (rule!5001 (_1!10184 (get!5193 lt!596128)))))))

(declare-fun b!1634394 () Bool)

(declare-fun res!731578 () Bool)

(assert (=> b!1634394 (=> (not res!731578) (not e!1048131))))

(assert (=> b!1634394 (= res!731578 (= (++!4799 (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596128)))) (_2!10184 (get!5193 lt!596128))) (originalCharacters!3977 (h!23352 tokens!457))))))

(declare-fun d!492290 () Bool)

(assert (=> d!492290 e!1048132))

(declare-fun res!731575 () Bool)

(assert (=> d!492290 (=> res!731575 e!1048132)))

(assert (=> d!492290 (= res!731575 (isEmpty!10991 lt!596128))))

(assert (=> d!492290 (= lt!596128 e!1048133)))

(declare-fun c!266010 () Bool)

(assert (=> d!492290 (= c!266010 (and ((_ is Cons!17952) rules!1846) ((_ is Nil!17952) (t!149605 rules!1846))))))

(declare-fun lt!596126 () Unit!29278)

(declare-fun lt!596127 () Unit!29278)

(assert (=> d!492290 (= lt!596126 lt!596127)))

(assert (=> d!492290 (isPrefix!1423 (originalCharacters!3977 (h!23352 tokens!457)) (originalCharacters!3977 (h!23352 tokens!457)))))

(assert (=> d!492290 (= lt!596127 (lemmaIsPrefixRefl!970 (originalCharacters!3977 (h!23352 tokens!457)) (originalCharacters!3977 (h!23352 tokens!457))))))

(assert (=> d!492290 (rulesValidInductive!986 thiss!17113 rules!1846)))

(assert (=> d!492290 (= (maxPrefix!1356 thiss!17113 rules!1846 (originalCharacters!3977 (h!23352 tokens!457))) lt!596128)))

(declare-fun bm!105600 () Bool)

(assert (=> bm!105600 (= call!105605 (maxPrefixOneRule!785 thiss!17113 (h!23353 rules!1846) (originalCharacters!3977 (h!23352 tokens!457))))))

(declare-fun b!1634395 () Bool)

(declare-fun res!731576 () Bool)

(assert (=> b!1634395 (=> (not res!731576) (not e!1048131))))

(assert (=> b!1634395 (= res!731576 (= (value!99818 (_1!10184 (get!5193 lt!596128))) (apply!4630 (transformation!3163 (rule!5001 (_1!10184 (get!5193 lt!596128)))) (seqFromList!2075 (originalCharacters!3977 (_1!10184 (get!5193 lt!596128)))))))))

(declare-fun b!1634396 () Bool)

(declare-fun lt!596129 () Option!3359)

(declare-fun lt!596130 () Option!3359)

(assert (=> b!1634396 (= e!1048133 (ite (and ((_ is None!3358) lt!596129) ((_ is None!3358) lt!596130)) None!3358 (ite ((_ is None!3358) lt!596130) lt!596129 (ite ((_ is None!3358) lt!596129) lt!596130 (ite (>= (size!14330 (_1!10184 (v!24429 lt!596129))) (size!14330 (_1!10184 (v!24429 lt!596130)))) lt!596129 lt!596130)))))))

(assert (=> b!1634396 (= lt!596129 call!105605)))

(assert (=> b!1634396 (= lt!596130 (maxPrefix!1356 thiss!17113 (t!149605 rules!1846) (originalCharacters!3977 (h!23352 tokens!457))))))

(declare-fun b!1634397 () Bool)

(declare-fun res!731573 () Bool)

(assert (=> b!1634397 (=> (not res!731573) (not e!1048131))))

(assert (=> b!1634397 (= res!731573 (< (size!14332 (_2!10184 (get!5193 lt!596128))) (size!14332 (originalCharacters!3977 (h!23352 tokens!457)))))))

(declare-fun b!1634398 () Bool)

(declare-fun res!731577 () Bool)

(assert (=> b!1634398 (=> (not res!731577) (not e!1048131))))

(assert (=> b!1634398 (= res!731577 (matchR!1990 (regex!3163 (rule!5001 (_1!10184 (get!5193 lt!596128)))) (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596128))))))))

(declare-fun b!1634399 () Bool)

(declare-fun res!731574 () Bool)

(assert (=> b!1634399 (=> (not res!731574) (not e!1048131))))

(assert (=> b!1634399 (= res!731574 (= (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596128)))) (originalCharacters!3977 (_1!10184 (get!5193 lt!596128)))))))

(assert (= (and d!492290 c!266010) b!1634391))

(assert (= (and d!492290 (not c!266010)) b!1634396))

(assert (= (or b!1634391 b!1634396) bm!105600))

(assert (= (and d!492290 (not res!731575)) b!1634392))

(assert (= (and b!1634392 res!731579) b!1634399))

(assert (= (and b!1634399 res!731574) b!1634397))

(assert (= (and b!1634397 res!731573) b!1634394))

(assert (= (and b!1634394 res!731578) b!1634395))

(assert (= (and b!1634395 res!731576) b!1634398))

(assert (= (and b!1634398 res!731577) b!1634393))

(declare-fun m!1970167 () Bool)

(assert (=> b!1634398 m!1970167))

(declare-fun m!1970169 () Bool)

(assert (=> b!1634398 m!1970169))

(assert (=> b!1634398 m!1970169))

(declare-fun m!1970171 () Bool)

(assert (=> b!1634398 m!1970171))

(assert (=> b!1634398 m!1970171))

(declare-fun m!1970173 () Bool)

(assert (=> b!1634398 m!1970173))

(declare-fun m!1970175 () Bool)

(assert (=> bm!105600 m!1970175))

(assert (=> b!1634393 m!1970167))

(declare-fun m!1970177 () Bool)

(assert (=> b!1634393 m!1970177))

(declare-fun m!1970179 () Bool)

(assert (=> b!1634392 m!1970179))

(assert (=> b!1634395 m!1970167))

(declare-fun m!1970181 () Bool)

(assert (=> b!1634395 m!1970181))

(assert (=> b!1634395 m!1970181))

(declare-fun m!1970183 () Bool)

(assert (=> b!1634395 m!1970183))

(assert (=> b!1634394 m!1970167))

(assert (=> b!1634394 m!1970169))

(assert (=> b!1634394 m!1970169))

(assert (=> b!1634394 m!1970171))

(assert (=> b!1634394 m!1970171))

(declare-fun m!1970185 () Bool)

(assert (=> b!1634394 m!1970185))

(declare-fun m!1970187 () Bool)

(assert (=> d!492290 m!1970187))

(declare-fun m!1970189 () Bool)

(assert (=> d!492290 m!1970189))

(declare-fun m!1970191 () Bool)

(assert (=> d!492290 m!1970191))

(assert (=> d!492290 m!1969271))

(declare-fun m!1970193 () Bool)

(assert (=> b!1634396 m!1970193))

(assert (=> b!1634397 m!1970167))

(declare-fun m!1970195 () Bool)

(assert (=> b!1634397 m!1970195))

(assert (=> b!1634397 m!1968667))

(assert (=> b!1634399 m!1970167))

(assert (=> b!1634399 m!1970169))

(assert (=> b!1634399 m!1970169))

(assert (=> b!1634399 m!1970171))

(assert (=> b!1633622 d!492290))

(declare-fun d!492292 () Bool)

(assert (=> d!492292 (= (isDefined!2726 (maxPrefix!1356 thiss!17113 rules!1846 (originalCharacters!3977 (h!23352 tokens!457)))) (not (isEmpty!10991 (maxPrefix!1356 thiss!17113 rules!1846 (originalCharacters!3977 (h!23352 tokens!457))))))))

(declare-fun bs!395324 () Bool)

(assert (= bs!395324 d!492292))

(assert (=> bs!395324 m!1968635))

(declare-fun m!1970197 () Bool)

(assert (=> bs!395324 m!1970197))

(assert (=> b!1633622 d!492292))

(declare-fun d!492294 () Bool)

(assert (=> d!492294 (= (isDefined!2726 lt!595036) (not (isEmpty!10991 lt!595036)))))

(declare-fun bs!395325 () Bool)

(assert (= bs!395325 d!492294))

(declare-fun m!1970199 () Bool)

(assert (=> bs!395325 m!1970199))

(assert (=> b!1633622 d!492294))

(declare-fun d!492296 () Bool)

(assert (=> d!492296 (= (get!5193 lt!595036) (v!24429 lt!595036))))

(assert (=> b!1633622 d!492296))

(declare-fun d!492298 () Bool)

(declare-fun c!266011 () Bool)

(assert (=> d!492298 (= c!266011 (isEmpty!10982 (++!4799 (originalCharacters!3977 (h!23352 tokens!457)) lt!595039)))))

(declare-fun e!1048134 () Bool)

(assert (=> d!492298 (= (prefixMatch!426 lt!595019 (++!4799 (originalCharacters!3977 (h!23352 tokens!457)) lt!595039)) e!1048134)))

(declare-fun b!1634400 () Bool)

(assert (=> b!1634400 (= e!1048134 (not (lostCause!447 lt!595019)))))

(declare-fun b!1634401 () Bool)

(assert (=> b!1634401 (= e!1048134 (prefixMatch!426 (derivativeStep!1092 lt!595019 (head!3502 (++!4799 (originalCharacters!3977 (h!23352 tokens!457)) lt!595039))) (tail!2384 (++!4799 (originalCharacters!3977 (h!23352 tokens!457)) lt!595039))))))

(assert (= (and d!492298 c!266011) b!1634400))

(assert (= (and d!492298 (not c!266011)) b!1634401))

(assert (=> d!492298 m!1968645))

(declare-fun m!1970201 () Bool)

(assert (=> d!492298 m!1970201))

(assert (=> b!1634400 m!1968923))

(assert (=> b!1634401 m!1968645))

(declare-fun m!1970203 () Bool)

(assert (=> b!1634401 m!1970203))

(assert (=> b!1634401 m!1970203))

(declare-fun m!1970205 () Bool)

(assert (=> b!1634401 m!1970205))

(assert (=> b!1634401 m!1968645))

(declare-fun m!1970207 () Bool)

(assert (=> b!1634401 m!1970207))

(assert (=> b!1634401 m!1970205))

(assert (=> b!1634401 m!1970207))

(declare-fun m!1970209 () Bool)

(assert (=> b!1634401 m!1970209))

(assert (=> b!1633622 d!492298))

(declare-fun b!1634402 () Bool)

(declare-fun e!1048136 () List!18020)

(assert (=> b!1634402 (= e!1048136 lt!595039)))

(declare-fun d!492300 () Bool)

(declare-fun e!1048135 () Bool)

(assert (=> d!492300 e!1048135))

(declare-fun res!731580 () Bool)

(assert (=> d!492300 (=> (not res!731580) (not e!1048135))))

(declare-fun lt!596131 () List!18020)

(assert (=> d!492300 (= res!731580 (= (content!2488 lt!596131) ((_ map or) (content!2488 (originalCharacters!3977 (h!23352 tokens!457))) (content!2488 lt!595039))))))

(assert (=> d!492300 (= lt!596131 e!1048136)))

(declare-fun c!266012 () Bool)

(assert (=> d!492300 (= c!266012 ((_ is Nil!17950) (originalCharacters!3977 (h!23352 tokens!457))))))

(assert (=> d!492300 (= (++!4799 (originalCharacters!3977 (h!23352 tokens!457)) lt!595039) lt!596131)))

(declare-fun b!1634405 () Bool)

(assert (=> b!1634405 (= e!1048135 (or (not (= lt!595039 Nil!17950)) (= lt!596131 (originalCharacters!3977 (h!23352 tokens!457)))))))

(declare-fun b!1634404 () Bool)

(declare-fun res!731581 () Bool)

(assert (=> b!1634404 (=> (not res!731581) (not e!1048135))))

(assert (=> b!1634404 (= res!731581 (= (size!14332 lt!596131) (+ (size!14332 (originalCharacters!3977 (h!23352 tokens!457))) (size!14332 lt!595039))))))

(declare-fun b!1634403 () Bool)

(assert (=> b!1634403 (= e!1048136 (Cons!17950 (h!23351 (originalCharacters!3977 (h!23352 tokens!457))) (++!4799 (t!149603 (originalCharacters!3977 (h!23352 tokens!457))) lt!595039)))))

(assert (= (and d!492300 c!266012) b!1634402))

(assert (= (and d!492300 (not c!266012)) b!1634403))

(assert (= (and d!492300 res!731580) b!1634404))

(assert (= (and b!1634404 res!731581) b!1634405))

(declare-fun m!1970211 () Bool)

(assert (=> d!492300 m!1970211))

(declare-fun m!1970213 () Bool)

(assert (=> d!492300 m!1970213))

(assert (=> d!492300 m!1968937))

(declare-fun m!1970215 () Bool)

(assert (=> b!1634404 m!1970215))

(assert (=> b!1634404 m!1968667))

(assert (=> b!1634404 m!1968943))

(declare-fun m!1970217 () Bool)

(assert (=> b!1634403 m!1970217))

(assert (=> b!1633622 d!492300))

(declare-fun b!1634406 () Bool)

(declare-fun e!1048139 () Option!3359)

(declare-fun call!105606 () Option!3359)

(assert (=> b!1634406 (= e!1048139 call!105606)))

(declare-fun b!1634407 () Bool)

(declare-fun e!1048138 () Bool)

(declare-fun e!1048137 () Bool)

(assert (=> b!1634407 (= e!1048138 e!1048137)))

(declare-fun res!731588 () Bool)

(assert (=> b!1634407 (=> (not res!731588) (not e!1048137))))

(declare-fun lt!596134 () Option!3359)

(assert (=> b!1634407 (= res!731588 (isDefined!2726 lt!596134))))

(declare-fun b!1634408 () Bool)

(assert (=> b!1634408 (= e!1048137 (contains!3136 rules!1846 (rule!5001 (_1!10184 (get!5193 lt!596134)))))))

(declare-fun b!1634409 () Bool)

(declare-fun res!731587 () Bool)

(assert (=> b!1634409 (=> (not res!731587) (not e!1048137))))

(assert (=> b!1634409 (= res!731587 (= (++!4799 (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596134)))) (_2!10184 (get!5193 lt!596134))) lt!595017))))

(declare-fun d!492302 () Bool)

(assert (=> d!492302 e!1048138))

(declare-fun res!731584 () Bool)

(assert (=> d!492302 (=> res!731584 e!1048138)))

(assert (=> d!492302 (= res!731584 (isEmpty!10991 lt!596134))))

(assert (=> d!492302 (= lt!596134 e!1048139)))

(declare-fun c!266013 () Bool)

(assert (=> d!492302 (= c!266013 (and ((_ is Cons!17952) rules!1846) ((_ is Nil!17952) (t!149605 rules!1846))))))

(declare-fun lt!596132 () Unit!29278)

(declare-fun lt!596133 () Unit!29278)

(assert (=> d!492302 (= lt!596132 lt!596133)))

(assert (=> d!492302 (isPrefix!1423 lt!595017 lt!595017)))

(assert (=> d!492302 (= lt!596133 (lemmaIsPrefixRefl!970 lt!595017 lt!595017))))

(assert (=> d!492302 (rulesValidInductive!986 thiss!17113 rules!1846)))

(assert (=> d!492302 (= (maxPrefix!1356 thiss!17113 rules!1846 lt!595017) lt!596134)))

(declare-fun bm!105601 () Bool)

(assert (=> bm!105601 (= call!105606 (maxPrefixOneRule!785 thiss!17113 (h!23353 rules!1846) lt!595017))))

(declare-fun b!1634410 () Bool)

(declare-fun res!731585 () Bool)

(assert (=> b!1634410 (=> (not res!731585) (not e!1048137))))

(assert (=> b!1634410 (= res!731585 (= (value!99818 (_1!10184 (get!5193 lt!596134))) (apply!4630 (transformation!3163 (rule!5001 (_1!10184 (get!5193 lt!596134)))) (seqFromList!2075 (originalCharacters!3977 (_1!10184 (get!5193 lt!596134)))))))))

(declare-fun b!1634411 () Bool)

(declare-fun lt!596135 () Option!3359)

(declare-fun lt!596136 () Option!3359)

(assert (=> b!1634411 (= e!1048139 (ite (and ((_ is None!3358) lt!596135) ((_ is None!3358) lt!596136)) None!3358 (ite ((_ is None!3358) lt!596136) lt!596135 (ite ((_ is None!3358) lt!596135) lt!596136 (ite (>= (size!14330 (_1!10184 (v!24429 lt!596135))) (size!14330 (_1!10184 (v!24429 lt!596136)))) lt!596135 lt!596136)))))))

(assert (=> b!1634411 (= lt!596135 call!105606)))

(assert (=> b!1634411 (= lt!596136 (maxPrefix!1356 thiss!17113 (t!149605 rules!1846) lt!595017))))

(declare-fun b!1634412 () Bool)

(declare-fun res!731582 () Bool)

(assert (=> b!1634412 (=> (not res!731582) (not e!1048137))))

(assert (=> b!1634412 (= res!731582 (< (size!14332 (_2!10184 (get!5193 lt!596134))) (size!14332 lt!595017)))))

(declare-fun b!1634413 () Bool)

(declare-fun res!731586 () Bool)

(assert (=> b!1634413 (=> (not res!731586) (not e!1048137))))

(assert (=> b!1634413 (= res!731586 (matchR!1990 (regex!3163 (rule!5001 (_1!10184 (get!5193 lt!596134)))) (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596134))))))))

(declare-fun b!1634414 () Bool)

(declare-fun res!731583 () Bool)

(assert (=> b!1634414 (=> (not res!731583) (not e!1048137))))

(assert (=> b!1634414 (= res!731583 (= (list!7067 (charsOf!1812 (_1!10184 (get!5193 lt!596134)))) (originalCharacters!3977 (_1!10184 (get!5193 lt!596134)))))))

(assert (= (and d!492302 c!266013) b!1634406))

(assert (= (and d!492302 (not c!266013)) b!1634411))

(assert (= (or b!1634406 b!1634411) bm!105601))

(assert (= (and d!492302 (not res!731584)) b!1634407))

(assert (= (and b!1634407 res!731588) b!1634414))

(assert (= (and b!1634414 res!731583) b!1634412))

(assert (= (and b!1634412 res!731582) b!1634409))

(assert (= (and b!1634409 res!731587) b!1634410))

(assert (= (and b!1634410 res!731585) b!1634413))

(assert (= (and b!1634413 res!731586) b!1634408))

(declare-fun m!1970219 () Bool)

(assert (=> b!1634413 m!1970219))

(declare-fun m!1970221 () Bool)

(assert (=> b!1634413 m!1970221))

(assert (=> b!1634413 m!1970221))

(declare-fun m!1970223 () Bool)

(assert (=> b!1634413 m!1970223))

(assert (=> b!1634413 m!1970223))

(declare-fun m!1970225 () Bool)

(assert (=> b!1634413 m!1970225))

(declare-fun m!1970227 () Bool)

(assert (=> bm!105601 m!1970227))

(assert (=> b!1634408 m!1970219))

(declare-fun m!1970229 () Bool)

(assert (=> b!1634408 m!1970229))

(declare-fun m!1970231 () Bool)

(assert (=> b!1634407 m!1970231))

(assert (=> b!1634410 m!1970219))

(declare-fun m!1970233 () Bool)

(assert (=> b!1634410 m!1970233))

(assert (=> b!1634410 m!1970233))

(declare-fun m!1970235 () Bool)

(assert (=> b!1634410 m!1970235))

(assert (=> b!1634409 m!1970219))

(assert (=> b!1634409 m!1970221))

(assert (=> b!1634409 m!1970221))

(assert (=> b!1634409 m!1970223))

(assert (=> b!1634409 m!1970223))

(declare-fun m!1970237 () Bool)

(assert (=> b!1634409 m!1970237))

(declare-fun m!1970239 () Bool)

(assert (=> d!492302 m!1970239))

(declare-fun m!1970241 () Bool)

(assert (=> d!492302 m!1970241))

(declare-fun m!1970243 () Bool)

(assert (=> d!492302 m!1970243))

(assert (=> d!492302 m!1969271))

(declare-fun m!1970245 () Bool)

(assert (=> b!1634411 m!1970245))

(assert (=> b!1634412 m!1970219))

(declare-fun m!1970247 () Bool)

(assert (=> b!1634412 m!1970247))

(assert (=> b!1634412 m!1968941))

(assert (=> b!1634414 m!1970219))

(assert (=> b!1634414 m!1970221))

(assert (=> b!1634414 m!1970221))

(assert (=> b!1634414 m!1970223))

(assert (=> b!1633622 d!492302))

(declare-fun b!1634428 () Bool)

(declare-fun b_free!44151 () Bool)

(declare-fun b_next!44855 () Bool)

(assert (=> b!1634428 (= b_free!44151 (not b_next!44855))))

(declare-fun tp!474093 () Bool)

(declare-fun b_and!115869 () Bool)

(assert (=> b!1634428 (= tp!474093 b_and!115869)))

(declare-fun b_free!44153 () Bool)

(declare-fun b_next!44857 () Bool)

(assert (=> b!1634428 (= b_free!44153 (not b_next!44857))))

(declare-fun t!149641 () Bool)

(declare-fun tb!93743 () Bool)

(assert (=> (and b!1634428 (= (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457))))) t!149641) tb!93743))

(declare-fun result!113084 () Bool)

(assert (= result!113084 result!113046))

(assert (=> b!1633649 t!149641))

(assert (=> d!492062 t!149641))

(declare-fun t!149643 () Bool)

(declare-fun tb!93745 () Bool)

(assert (=> (and b!1634428 (= (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457)))))) t!149643) tb!93745))

(declare-fun result!113086 () Bool)

(assert (= result!113086 result!113058))

(assert (=> d!492140 t!149643))

(declare-fun b_and!115871 () Bool)

(declare-fun tp!474092 () Bool)

(assert (=> b!1634428 (= tp!474092 (and (=> t!149641 result!113084) (=> t!149643 result!113086) b_and!115871))))

(declare-fun tp!474094 () Bool)

(declare-fun b!1634425 () Bool)

(declare-fun e!1048157 () Bool)

(declare-fun e!1048155 () Bool)

(assert (=> b!1634425 (= e!1048157 (and (inv!23314 (h!23352 (t!149604 tokens!457))) e!1048155 tp!474094))))

(declare-fun tp!474095 () Bool)

(declare-fun e!1048156 () Bool)

(declare-fun b!1634426 () Bool)

(assert (=> b!1634426 (= e!1048155 (and (inv!21 (value!99818 (h!23352 (t!149604 tokens!457)))) e!1048156 tp!474095))))

(assert (=> b!1633617 (= tp!474019 e!1048157)))

(declare-fun e!1048153 () Bool)

(assert (=> b!1634428 (= e!1048153 (and tp!474093 tp!474092))))

(declare-fun tp!474091 () Bool)

(declare-fun b!1634427 () Bool)

(assert (=> b!1634427 (= e!1048156 (and tp!474091 (inv!23310 (tag!3443 (rule!5001 (h!23352 (t!149604 tokens!457))))) (inv!23313 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))) e!1048153))))

(assert (= b!1634427 b!1634428))

(assert (= b!1634426 b!1634427))

(assert (= b!1634425 b!1634426))

(assert (= (and b!1633617 ((_ is Cons!17951) (t!149604 tokens!457))) b!1634425))

(declare-fun m!1970249 () Bool)

(assert (=> b!1634425 m!1970249))

(declare-fun m!1970251 () Bool)

(assert (=> b!1634426 m!1970251))

(declare-fun m!1970253 () Bool)

(assert (=> b!1634427 m!1970253))

(declare-fun m!1970255 () Bool)

(assert (=> b!1634427 m!1970255))

(declare-fun b!1634439 () Bool)

(declare-fun e!1048160 () Bool)

(declare-fun tp_is_empty!7301 () Bool)

(assert (=> b!1634439 (= e!1048160 tp_is_empty!7301)))

(assert (=> b!1633613 (= tp!474022 e!1048160)))

(declare-fun b!1634440 () Bool)

(declare-fun tp!474110 () Bool)

(declare-fun tp!474106 () Bool)

(assert (=> b!1634440 (= e!1048160 (and tp!474110 tp!474106))))

(declare-fun b!1634442 () Bool)

(declare-fun tp!474107 () Bool)

(declare-fun tp!474109 () Bool)

(assert (=> b!1634442 (= e!1048160 (and tp!474107 tp!474109))))

(declare-fun b!1634441 () Bool)

(declare-fun tp!474108 () Bool)

(assert (=> b!1634441 (= e!1048160 tp!474108)))

(assert (= (and b!1633613 ((_ is ElementMatch!4491) (regex!3163 (rule!5001 (h!23352 tokens!457))))) b!1634439))

(assert (= (and b!1633613 ((_ is Concat!7745) (regex!3163 (rule!5001 (h!23352 tokens!457))))) b!1634440))

(assert (= (and b!1633613 ((_ is Star!4491) (regex!3163 (rule!5001 (h!23352 tokens!457))))) b!1634441))

(assert (= (and b!1633613 ((_ is Union!4491) (regex!3163 (rule!5001 (h!23352 tokens!457))))) b!1634442))

(declare-fun b!1634443 () Bool)

(declare-fun e!1048161 () Bool)

(assert (=> b!1634443 (= e!1048161 tp_is_empty!7301)))

(assert (=> b!1633614 (= tp!474021 e!1048161)))

(declare-fun b!1634444 () Bool)

(declare-fun tp!474115 () Bool)

(declare-fun tp!474111 () Bool)

(assert (=> b!1634444 (= e!1048161 (and tp!474115 tp!474111))))

(declare-fun b!1634446 () Bool)

(declare-fun tp!474112 () Bool)

(declare-fun tp!474114 () Bool)

(assert (=> b!1634446 (= e!1048161 (and tp!474112 tp!474114))))

(declare-fun b!1634445 () Bool)

(declare-fun tp!474113 () Bool)

(assert (=> b!1634445 (= e!1048161 tp!474113)))

(assert (= (and b!1633614 ((_ is ElementMatch!4491) (regex!3163 (h!23353 rules!1846)))) b!1634443))

(assert (= (and b!1633614 ((_ is Concat!7745) (regex!3163 (h!23353 rules!1846)))) b!1634444))

(assert (= (and b!1633614 ((_ is Star!4491) (regex!3163 (h!23353 rules!1846)))) b!1634445))

(assert (= (and b!1633614 ((_ is Union!4491) (regex!3163 (h!23353 rules!1846)))) b!1634446))

(declare-fun b!1634457 () Bool)

(declare-fun b_free!44155 () Bool)

(declare-fun b_next!44859 () Bool)

(assert (=> b!1634457 (= b_free!44155 (not b_next!44859))))

(declare-fun tp!474124 () Bool)

(declare-fun b_and!115873 () Bool)

(assert (=> b!1634457 (= tp!474124 b_and!115873)))

(declare-fun b_free!44157 () Bool)

(declare-fun b_next!44861 () Bool)

(assert (=> b!1634457 (= b_free!44157 (not b_next!44861))))

(declare-fun tb!93747 () Bool)

(declare-fun t!149645 () Bool)

(assert (=> (and b!1634457 (= (toChars!4453 (transformation!3163 (h!23353 (t!149605 rules!1846)))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457))))) t!149645) tb!93747))

(declare-fun result!113092 () Bool)

(assert (= result!113092 result!113046))

(assert (=> b!1633649 t!149645))

(assert (=> d!492062 t!149645))

(declare-fun tb!93749 () Bool)

(declare-fun t!149647 () Bool)

(assert (=> (and b!1634457 (= (toChars!4453 (transformation!3163 (h!23353 (t!149605 rules!1846)))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457)))))) t!149647) tb!93749))

(declare-fun result!113094 () Bool)

(assert (= result!113094 result!113058))

(assert (=> d!492140 t!149647))

(declare-fun b_and!115875 () Bool)

(declare-fun tp!474127 () Bool)

(assert (=> b!1634457 (= tp!474127 (and (=> t!149645 result!113092) (=> t!149647 result!113094) b_and!115875))))

(declare-fun e!1048172 () Bool)

(assert (=> b!1634457 (= e!1048172 (and tp!474124 tp!474127))))

(declare-fun b!1634456 () Bool)

(declare-fun e!1048173 () Bool)

(declare-fun tp!474126 () Bool)

(assert (=> b!1634456 (= e!1048173 (and tp!474126 (inv!23310 (tag!3443 (h!23353 (t!149605 rules!1846)))) (inv!23313 (transformation!3163 (h!23353 (t!149605 rules!1846)))) e!1048172))))

(declare-fun b!1634455 () Bool)

(declare-fun e!1048170 () Bool)

(declare-fun tp!474125 () Bool)

(assert (=> b!1634455 (= e!1048170 (and e!1048173 tp!474125))))

(assert (=> b!1633620 (= tp!474017 e!1048170)))

(assert (= b!1634456 b!1634457))

(assert (= b!1634455 b!1634456))

(assert (= (and b!1633620 ((_ is Cons!17952) (t!149605 rules!1846))) b!1634455))

(declare-fun m!1970257 () Bool)

(assert (=> b!1634456 m!1970257))

(declare-fun m!1970259 () Bool)

(assert (=> b!1634456 m!1970259))

(declare-fun b!1634462 () Bool)

(declare-fun e!1048176 () Bool)

(declare-fun tp!474130 () Bool)

(assert (=> b!1634462 (= e!1048176 (and tp_is_empty!7301 tp!474130))))

(assert (=> b!1633637 (= tp!474016 e!1048176)))

(assert (= (and b!1633637 ((_ is Cons!17950) (originalCharacters!3977 (h!23352 tokens!457)))) b!1634462))

(declare-fun b_lambda!51407 () Bool)

(assert (= b_lambda!51389 (or (and b!1633644 b_free!44137 (= (toChars!4453 (transformation!3163 (h!23353 rules!1846))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))))) (and b!1633640 b_free!44141) (and b!1634428 b_free!44153 (= (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))))) (and b!1634457 b_free!44157 (= (toChars!4453 (transformation!3163 (h!23353 (t!149605 rules!1846)))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))))) b_lambda!51407)))

(declare-fun b_lambda!51409 () Bool)

(assert (= b_lambda!51391 (or (and b!1633644 b_free!44137 (= (toChars!4453 (transformation!3163 (h!23353 rules!1846))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))))) (and b!1633640 b_free!44141) (and b!1634428 b_free!44153 (= (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))))) (and b!1634457 b_free!44157 (= (toChars!4453 (transformation!3163 (h!23353 (t!149605 rules!1846)))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))))) b_lambda!51409)))

(declare-fun b_lambda!51411 () Bool)

(assert (= b_lambda!51395 (or (and b!1633644 b_free!44137 (= (toChars!4453 (transformation!3163 (h!23353 rules!1846))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))))) (and b!1633640 b_free!44141 (= (toChars!4453 (transformation!3163 (rule!5001 (h!23352 tokens!457)))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))))) (and b!1634428 b_free!44153) (and b!1634457 b_free!44157 (= (toChars!4453 (transformation!3163 (h!23353 (t!149605 rules!1846)))) (toChars!4453 (transformation!3163 (rule!5001 (h!23352 (t!149604 tokens!457))))))) b_lambda!51411)))

(check-sat (not b!1633746) (not b!1633650) (not b!1633894) (not b!1634250) (not b!1633866) (not b!1633867) (not b!1634247) (not b!1634446) (not b!1634172) b_and!115875 (not b!1633666) (not b_next!44857) (not b!1634444) (not b!1634259) (not b!1633670) (not d!492120) (not d!492226) (not b!1633858) (not b!1633927) (not b!1633860) (not b!1633959) (not b!1633925) (not b!1634456) (not d!492056) (not d!492242) (not b!1634392) (not b!1633997) (not b_next!44859) (not b!1634171) (not d!492038) (not b!1633926) (not b!1634427) (not d!492024) (not d!492298) (not b!1634404) (not d!492018) (not d!492102) (not d!492290) (not b!1633725) (not b!1634409) (not tb!93719) (not d!492138) (not d!492076) (not b!1634441) (not b_next!44841) (not d!492066) (not b!1634377) tp_is_empty!7301 (not b!1634252) (not b!1633726) (not d!492250) (not b!1634227) (not b!1634251) (not bm!105598) (not b!1633669) b_and!115871 (not b_next!44855) (not b!1633754) (not b!1633933) (not b!1633747) (not d!492224) (not b!1633892) (not b!1633893) (not d!492052) (not b!1634400) (not b!1634394) (not b!1633996) (not b!1634081) (not b!1633871) (not d!492106) (not d!492104) (not d!492228) (not d!492166) (not b!1633722) (not d!492302) (not b!1633753) (not d!492164) (not b_lambda!51411) (not d!492060) (not b!1634395) (not d!492064) (not b!1634440) (not b!1633928) (not b!1633924) (not b!1634442) (not b!1633864) (not d!492020) (not d!492042) (not b!1634445) (not b!1634254) (not d!492294) (not d!492074) (not b!1633958) (not b!1633934) (not d!492040) (not b!1634269) (not b!1633729) (not b!1634414) (not d!492090) (not b!1634274) (not b!1633727) (not b!1633655) (not b!1634159) (not b!1634205) (not b_next!44861) b_and!115849 (not b!1634160) (not b!1633896) (not b!1634462) (not d!492246) (not b!1634396) (not b!1633667) (not d!492070) (not b!1633929) (not b!1634253) (not b!1634413) (not b!1633923) (not b!1633769) (not b!1634397) (not d!492078) (not bm!105597) (not b!1634403) (not b!1634201) (not d!492010) (not b!1634213) (not b!1634265) (not b!1634407) (not d!492300) (not b!1633962) (not d!492230) (not d!492008) (not b!1634266) b_and!115833 (not b!1634455) (not b!1634425) (not b_next!44839) (not b!1634270) (not b_next!44843) (not b!1634214) b_and!115829 (not b!1633863) (not d!492058) (not d!492240) (not d!492054) (not d!492096) (not b_lambda!51407) (not b!1634411) (not d!492236) (not d!492140) (not d!492088) (not b!1634408) (not d!492068) (not d!492100) (not b!1634170) (not bm!105600) (not b!1633765) (not tb!93727) b_and!115851 (not b!1634410) (not b!1633859) (not b!1633721) (not b!1634211) (not b!1634401) (not d!492118) (not d!492098) (not b!1634426) (not d!492016) (not b_lambda!51409) (not b!1633745) (not b!1634208) (not b!1633728) (not b!1633861) (not b!1633764) (not b!1634399) (not d!492222) (not d!492244) (not b!1634412) (not d!492292) (not bm!105588) (not d!492252) (not b_next!44845) (not bm!105601) (not bm!105577) (not d!492234) (not d!492136) (not b!1633930) (not b!1634039) (not b!1634386) (not b!1634393) (not b!1634267) (not b!1633649) (not b!1634398) (not b!1634268) b_and!115869 (not b!1633995) (not b!1634020) (not bm!105594) (not b!1633731) (not b!1634376) (not b!1634271) (not b!1633998) b_and!115873 (not d!492144) (not d!492062) (not b!1634249) (not d!492248) (not b!1634248) (not b!1634263) (not b!1633931) (not d!492084) (not d!492116) (not b!1633957) (not d!492238) (not b!1634225))
(check-sat b_and!115875 (not b_next!44857) (not b_next!44859) (not b_next!44841) b_and!115851 (not b_next!44845) b_and!115869 b_and!115873 b_and!115871 (not b_next!44855) (not b_next!44861) b_and!115849 b_and!115833 (not b_next!44839) (not b_next!44843) b_and!115829)
