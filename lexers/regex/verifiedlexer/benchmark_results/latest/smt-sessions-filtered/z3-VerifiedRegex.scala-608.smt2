; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19338 () Bool)

(assert start!19338)

(declare-fun b!178705 () Bool)

(declare-fun b_free!6881 () Bool)

(declare-fun b_next!6881 () Bool)

(assert (=> b!178705 (= b_free!6881 (not b_next!6881))))

(declare-fun tp!85832 () Bool)

(declare-fun b_and!12149 () Bool)

(assert (=> b!178705 (= tp!85832 b_and!12149)))

(declare-fun b_free!6883 () Bool)

(declare-fun b_next!6883 () Bool)

(assert (=> b!178705 (= b_free!6883 (not b_next!6883))))

(declare-fun tp!85833 () Bool)

(declare-fun b_and!12151 () Bool)

(assert (=> b!178705 (= tp!85833 b_and!12151)))

(declare-fun b!178694 () Bool)

(declare-fun b_free!6885 () Bool)

(declare-fun b_next!6885 () Bool)

(assert (=> b!178694 (= b_free!6885 (not b_next!6885))))

(declare-fun tp!85826 () Bool)

(declare-fun b_and!12153 () Bool)

(assert (=> b!178694 (= tp!85826 b_and!12153)))

(declare-fun b_free!6887 () Bool)

(declare-fun b_next!6887 () Bool)

(assert (=> b!178694 (= b_free!6887 (not b_next!6887))))

(declare-fun tp!85824 () Bool)

(declare-fun b_and!12155 () Bool)

(assert (=> b!178694 (= tp!85824 b_and!12155)))

(declare-fun b!178699 () Bool)

(declare-fun b_free!6889 () Bool)

(declare-fun b_next!6889 () Bool)

(assert (=> b!178699 (= b_free!6889 (not b_next!6889))))

(declare-fun tp!85835 () Bool)

(declare-fun b_and!12157 () Bool)

(assert (=> b!178699 (= tp!85835 b_and!12157)))

(declare-fun b_free!6891 () Bool)

(declare-fun b_next!6891 () Bool)

(assert (=> b!178699 (= b_free!6891 (not b_next!6891))))

(declare-fun tp!85823 () Bool)

(declare-fun b_and!12159 () Bool)

(assert (=> b!178699 (= tp!85823 b_and!12159)))

(declare-fun bs!17832 () Bool)

(declare-fun b!178691 () Bool)

(declare-fun b!178710 () Bool)

(assert (= bs!17832 (and b!178691 b!178710)))

(declare-fun lambda!5236 () Int)

(declare-fun lambda!5235 () Int)

(assert (=> bs!17832 (not (= lambda!5236 lambda!5235))))

(declare-fun b!178728 () Bool)

(declare-fun e!108625 () Bool)

(assert (=> b!178728 (= e!108625 true)))

(declare-fun b!178727 () Bool)

(declare-fun e!108624 () Bool)

(assert (=> b!178727 (= e!108624 e!108625)))

(declare-fun b!178726 () Bool)

(declare-fun e!108623 () Bool)

(assert (=> b!178726 (= e!108623 e!108624)))

(assert (=> b!178691 e!108623))

(assert (= b!178727 b!178728))

(assert (= b!178726 b!178727))

(declare-datatypes ((List!2997 0))(
  ( (Nil!2987) (Cons!2987 (h!8384 (_ BitVec 16)) (t!28127 List!2997)) )
))
(declare-datatypes ((TokenValue!561 0))(
  ( (FloatLiteralValue!1122 (text!4372 List!2997)) (TokenValueExt!560 (__x!2609 Int)) (Broken!2805 (value!19651 List!2997)) (Object!570) (End!561) (Def!561) (Underscore!561) (Match!561) (Else!561) (Error!561) (Case!561) (If!561) (Extends!561) (Abstract!561) (Class!561) (Val!561) (DelimiterValue!1122 (del!621 List!2997)) (KeywordValue!567 (value!19652 List!2997)) (CommentValue!1122 (value!19653 List!2997)) (WhitespaceValue!1122 (value!19654 List!2997)) (IndentationValue!561 (value!19655 List!2997)) (String!3884) (Int32!561) (Broken!2806 (value!19656 List!2997)) (Boolean!562) (Unit!2723) (OperatorValue!564 (op!621 List!2997)) (IdentifierValue!1122 (value!19657 List!2997)) (IdentifierValue!1123 (value!19658 List!2997)) (WhitespaceValue!1123 (value!19659 List!2997)) (True!1122) (False!1122) (Broken!2807 (value!19660 List!2997)) (Broken!2808 (value!19661 List!2997)) (True!1123) (RightBrace!561) (RightBracket!561) (Colon!561) (Null!561) (Comma!561) (LeftBracket!561) (False!1123) (LeftBrace!561) (ImaginaryLiteralValue!561 (text!4373 List!2997)) (StringLiteralValue!1683 (value!19662 List!2997)) (EOFValue!561 (value!19663 List!2997)) (IdentValue!561 (value!19664 List!2997)) (DelimiterValue!1123 (value!19665 List!2997)) (DedentValue!561 (value!19666 List!2997)) (NewLineValue!561 (value!19667 List!2997)) (IntegerValue!1683 (value!19668 (_ BitVec 32)) (text!4374 List!2997)) (IntegerValue!1684 (value!19669 Int) (text!4375 List!2997)) (Times!561) (Or!561) (Equal!561) (Minus!561) (Broken!2809 (value!19670 List!2997)) (And!561) (Div!561) (LessEqual!561) (Mod!561) (Concat!1324) (Not!561) (Plus!561) (SpaceValue!561 (value!19671 List!2997)) (IntegerValue!1685 (value!19672 Int) (text!4376 List!2997)) (StringLiteralValue!1684 (text!4377 List!2997)) (FloatLiteralValue!1123 (text!4378 List!2997)) (BytesLiteralValue!561 (value!19673 List!2997)) (CommentValue!1123 (value!19674 List!2997)) (StringLiteralValue!1685 (value!19675 List!2997)) (ErrorTokenValue!561 (msg!622 List!2997)) )
))
(declare-datatypes ((C!2448 0))(
  ( (C!2449 (val!1110 Int)) )
))
(declare-datatypes ((List!2998 0))(
  ( (Nil!2988) (Cons!2988 (h!8385 C!2448) (t!28128 List!2998)) )
))
(declare-datatypes ((IArray!1801 0))(
  ( (IArray!1802 (innerList!958 List!2998)) )
))
(declare-datatypes ((Conc!900 0))(
  ( (Node!900 (left!2304 Conc!900) (right!2634 Conc!900) (csize!2030 Int) (cheight!1111 Int)) (Leaf!1509 (xs!3495 IArray!1801) (csize!2031 Int)) (Empty!900) )
))
(declare-datatypes ((BalanceConc!1808 0))(
  ( (BalanceConc!1809 (c!35133 Conc!900)) )
))
(declare-datatypes ((String!3885 0))(
  ( (String!3886 (value!19676 String)) )
))
(declare-datatypes ((TokenValueInjection!894 0))(
  ( (TokenValueInjection!895 (toValue!1210 Int) (toChars!1069 Int)) )
))
(declare-datatypes ((Regex!763 0))(
  ( (ElementMatch!763 (c!35134 C!2448)) (Concat!1325 (regOne!2038 Regex!763) (regTwo!2038 Regex!763)) (EmptyExpr!763) (Star!763 (reg!1092 Regex!763)) (EmptyLang!763) (Union!763 (regOne!2039 Regex!763) (regTwo!2039 Regex!763)) )
))
(declare-datatypes ((Rule!878 0))(
  ( (Rule!879 (regex!539 Regex!763) (tag!717 String!3885) (isSeparator!539 Bool) (transformation!539 TokenValueInjection!894)) )
))
(declare-datatypes ((List!2999 0))(
  ( (Nil!2989) (Cons!2989 (h!8386 Rule!878) (t!28129 List!2999)) )
))
(declare-fun rules!1920 () List!2999)

(get-info :version)

(assert (= (and b!178691 ((_ is Cons!2989) rules!1920)) b!178726))

(declare-fun order!1709 () Int)

(declare-fun order!1711 () Int)

(declare-fun dynLambda!1179 (Int Int) Int)

(declare-fun dynLambda!1180 (Int Int) Int)

(assert (=> b!178728 (< (dynLambda!1179 order!1709 (toValue!1210 (transformation!539 (h!8386 rules!1920)))) (dynLambda!1180 order!1711 lambda!5236))))

(declare-fun order!1713 () Int)

(declare-fun dynLambda!1181 (Int Int) Int)

(assert (=> b!178728 (< (dynLambda!1181 order!1713 (toChars!1069 (transformation!539 (h!8386 rules!1920)))) (dynLambda!1180 order!1711 lambda!5236))))

(assert (=> b!178691 true))

(declare-fun b!178686 () Bool)

(declare-fun e!108606 () Bool)

(declare-fun e!108596 () Bool)

(assert (=> b!178686 (= e!108606 (not e!108596))))

(declare-fun res!80801 () Bool)

(assert (=> b!178686 (=> res!80801 e!108596)))

(declare-datatypes ((Token!822 0))(
  ( (Token!823 (value!19677 TokenValue!561) (rule!1054 Rule!878) (size!2457 Int) (originalCharacters!582 List!2998)) )
))
(declare-fun separatorToken!170 () Token!822)

(declare-datatypes ((List!3000 0))(
  ( (Nil!2990) (Cons!2990 (h!8387 Token!822) (t!28130 List!3000)) )
))
(declare-fun tokens!465 () List!3000)

(declare-fun lt!58365 () List!2998)

(declare-datatypes ((LexerInterface!425 0))(
  ( (LexerInterfaceExt!422 (__x!2610 Int)) (Lexer!423) )
))
(declare-fun thiss!17480 () LexerInterface!425)

(declare-fun list!1097 (BalanceConc!1808) List!2998)

(declare-datatypes ((IArray!1803 0))(
  ( (IArray!1804 (innerList!959 List!3000)) )
))
(declare-datatypes ((Conc!901 0))(
  ( (Node!901 (left!2305 Conc!901) (right!2635 Conc!901) (csize!2032 Int) (cheight!1112 Int)) (Leaf!1510 (xs!3496 IArray!1803) (csize!2033 Int)) (Empty!901) )
))
(declare-datatypes ((BalanceConc!1810 0))(
  ( (BalanceConc!1811 (c!35135 Conc!901)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!108 (LexerInterface!425 List!2999 BalanceConc!1810 Token!822 Int) BalanceConc!1808)

(declare-fun seqFromList!455 (List!3000) BalanceConc!1810)

(assert (=> b!178686 (= res!80801 (not (= lt!58365 (list!1097 (printWithSeparatorTokenWhenNeededRec!108 thiss!17480 rules!1920 (seqFromList!455 (t!28130 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!58358 () List!2998)

(declare-fun lt!58360 () List!2998)

(assert (=> b!178686 (= lt!58358 lt!58360)))

(declare-fun lt!58359 () List!2998)

(declare-fun lt!58354 () List!2998)

(declare-fun ++!700 (List!2998 List!2998) List!2998)

(assert (=> b!178686 (= lt!58360 (++!700 lt!58359 lt!58354))))

(declare-fun lt!58363 () List!2998)

(assert (=> b!178686 (= lt!58358 (++!700 (++!700 lt!58359 lt!58363) lt!58365))))

(declare-datatypes ((Unit!2724 0))(
  ( (Unit!2725) )
))
(declare-fun lt!58364 () Unit!2724)

(declare-fun lemmaConcatAssociativity!228 (List!2998 List!2998 List!2998) Unit!2724)

(assert (=> b!178686 (= lt!58364 (lemmaConcatAssociativity!228 lt!58359 lt!58363 lt!58365))))

(declare-fun charsOf!194 (Token!822) BalanceConc!1808)

(assert (=> b!178686 (= lt!58359 (list!1097 (charsOf!194 (h!8387 tokens!465))))))

(assert (=> b!178686 (= lt!58354 (++!700 lt!58363 lt!58365))))

(declare-fun printWithSeparatorTokenWhenNeededList!118 (LexerInterface!425 List!2999 List!3000 Token!822) List!2998)

(assert (=> b!178686 (= lt!58365 (printWithSeparatorTokenWhenNeededList!118 thiss!17480 rules!1920 (t!28130 tokens!465) separatorToken!170))))

(assert (=> b!178686 (= lt!58363 (list!1097 (charsOf!194 separatorToken!170)))))

(declare-fun b!178687 () Bool)

(declare-fun res!80808 () Bool)

(declare-fun e!108610 () Bool)

(assert (=> b!178687 (=> (not res!80808) (not e!108610))))

(declare-fun rulesInvariant!391 (LexerInterface!425 List!2999) Bool)

(assert (=> b!178687 (= res!80808 (rulesInvariant!391 thiss!17480 rules!1920))))

(declare-fun b!178688 () Bool)

(declare-fun res!80807 () Bool)

(declare-fun e!108605 () Bool)

(assert (=> b!178688 (=> (not res!80807) (not e!108605))))

(assert (=> b!178688 (= res!80807 ((_ is Cons!2990) tokens!465))))

(declare-fun b!178689 () Bool)

(declare-fun e!108608 () Bool)

(declare-fun e!108615 () Bool)

(assert (=> b!178689 (= e!108608 e!108615)))

(declare-fun res!80799 () Bool)

(assert (=> b!178689 (=> res!80799 e!108615)))

(declare-fun lt!58366 () List!2998)

(declare-fun lt!58361 () List!2998)

(assert (=> b!178689 (= res!80799 (or (not (= lt!58361 lt!58366)) (not (= lt!58366 lt!58359)) (not (= lt!58361 lt!58359))))))

(declare-fun printList!109 (LexerInterface!425 List!3000) List!2998)

(assert (=> b!178689 (= lt!58366 (printList!109 thiss!17480 (Cons!2990 (h!8387 tokens!465) Nil!2990)))))

(declare-fun lt!58367 () BalanceConc!1808)

(assert (=> b!178689 (= lt!58361 (list!1097 lt!58367))))

(declare-fun lt!58368 () BalanceConc!1810)

(declare-fun printTailRec!119 (LexerInterface!425 BalanceConc!1810 Int BalanceConc!1808) BalanceConc!1808)

(assert (=> b!178689 (= lt!58367 (printTailRec!119 thiss!17480 lt!58368 0 (BalanceConc!1809 Empty!900)))))

(declare-fun print!156 (LexerInterface!425 BalanceConc!1810) BalanceConc!1808)

(assert (=> b!178689 (= lt!58367 (print!156 thiss!17480 lt!58368))))

(declare-fun singletonSeq!91 (Token!822) BalanceConc!1810)

(assert (=> b!178689 (= lt!58368 (singletonSeq!91 (h!8387 tokens!465)))))

(declare-fun b!178690 () Bool)

(declare-fun e!108616 () Bool)

(assert (=> b!178690 (= e!108616 true)))

(declare-fun e!108592 () Bool)

(assert (=> b!178691 (= e!108615 e!108592)))

(declare-fun res!80798 () Bool)

(assert (=> b!178691 (=> res!80798 e!108592)))

(declare-datatypes ((tuple2!2950 0))(
  ( (tuple2!2951 (_1!1691 Token!822) (_2!1691 BalanceConc!1808)) )
))
(declare-datatypes ((Option!356 0))(
  ( (None!355) (Some!355 (v!13824 tuple2!2950)) )
))
(declare-fun isDefined!207 (Option!356) Bool)

(declare-fun maxPrefixZipperSequence!118 (LexerInterface!425 List!2999 BalanceConc!1808) Option!356)

(declare-fun seqFromList!456 (List!2998) BalanceConc!1808)

(assert (=> b!178691 (= res!80798 (not (isDefined!207 (maxPrefixZipperSequence!118 thiss!17480 rules!1920 (seqFromList!456 (originalCharacters!582 (h!8387 tokens!465)))))))))

(declare-fun lt!58369 () Unit!2724)

(declare-fun forallContained!106 (List!3000 Int Token!822) Unit!2724)

(assert (=> b!178691 (= lt!58369 (forallContained!106 tokens!465 lambda!5236 (h!8387 tokens!465)))))

(assert (=> b!178691 (= lt!58359 (originalCharacters!582 (h!8387 tokens!465)))))

(declare-fun res!80803 () Bool)

(assert (=> start!19338 (=> (not res!80803) (not e!108610))))

(assert (=> start!19338 (= res!80803 ((_ is Lexer!423) thiss!17480))))

(assert (=> start!19338 e!108610))

(assert (=> start!19338 true))

(declare-fun e!108604 () Bool)

(assert (=> start!19338 e!108604))

(declare-fun e!108599 () Bool)

(declare-fun inv!3823 (Token!822) Bool)

(assert (=> start!19338 (and (inv!3823 separatorToken!170) e!108599)))

(declare-fun e!108613 () Bool)

(assert (=> start!19338 e!108613))

(declare-fun b!178692 () Bool)

(declare-fun tp!85831 () Bool)

(declare-fun e!108597 () Bool)

(declare-fun inv!21 (TokenValue!561) Bool)

(assert (=> b!178692 (= e!108599 (and (inv!21 (value!19677 separatorToken!170)) e!108597 tp!85831))))

(declare-fun b!178693 () Bool)

(declare-fun res!80810 () Bool)

(assert (=> b!178693 (=> res!80810 e!108615)))

(declare-fun isEmpty!1328 (BalanceConc!1810) Bool)

(declare-datatypes ((tuple2!2952 0))(
  ( (tuple2!2953 (_1!1692 BalanceConc!1810) (_2!1692 BalanceConc!1808)) )
))
(declare-fun lex!225 (LexerInterface!425 List!2999 BalanceConc!1808) tuple2!2952)

(assert (=> b!178693 (= res!80810 (isEmpty!1328 (_1!1692 (lex!225 thiss!17480 rules!1920 (seqFromList!456 lt!58359)))))))

(declare-fun e!108600 () Bool)

(assert (=> b!178694 (= e!108600 (and tp!85826 tp!85824))))

(declare-fun b!178695 () Bool)

(declare-fun res!80791 () Bool)

(assert (=> b!178695 (=> (not res!80791) (not e!108606))))

(declare-fun lt!58353 () List!2998)

(declare-fun lt!58357 () List!2998)

(assert (=> b!178695 (= res!80791 (= (list!1097 (seqFromList!456 lt!58353)) lt!58357))))

(declare-fun tp!85827 () Bool)

(declare-fun e!108609 () Bool)

(declare-fun e!108611 () Bool)

(declare-fun b!178696 () Bool)

(assert (=> b!178696 (= e!108611 (and (inv!21 (value!19677 (h!8387 tokens!465))) e!108609 tp!85827))))

(declare-fun b!178697 () Bool)

(declare-fun e!108612 () Bool)

(declare-fun matchR!101 (Regex!763 List!2998) Bool)

(assert (=> b!178697 (= e!108612 (matchR!101 (regex!539 (rule!1054 (h!8387 tokens!465))) lt!58359))))

(declare-fun e!108607 () Bool)

(declare-fun e!108614 () Bool)

(declare-fun b!178698 () Bool)

(declare-fun tp!85830 () Bool)

(declare-fun inv!3820 (String!3885) Bool)

(declare-fun inv!3824 (TokenValueInjection!894) Bool)

(assert (=> b!178698 (= e!108607 (and tp!85830 (inv!3820 (tag!717 (h!8386 rules!1920))) (inv!3824 (transformation!539 (h!8386 rules!1920))) e!108614))))

(declare-fun e!108595 () Bool)

(assert (=> b!178699 (= e!108595 (and tp!85835 tp!85823))))

(declare-fun b!178700 () Bool)

(declare-fun res!80805 () Bool)

(assert (=> b!178700 (=> (not res!80805) (not e!108605))))

(declare-fun rulesProduceIndividualToken!174 (LexerInterface!425 List!2999 Token!822) Bool)

(assert (=> b!178700 (= res!80805 (rulesProduceIndividualToken!174 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!178701 () Bool)

(declare-fun tp!85834 () Bool)

(assert (=> b!178701 (= e!108604 (and e!108607 tp!85834))))

(declare-fun b!178702 () Bool)

(declare-fun res!80806 () Bool)

(assert (=> b!178702 (=> (not res!80806) (not e!108605))))

(assert (=> b!178702 (= res!80806 (isSeparator!539 (rule!1054 separatorToken!170)))))

(declare-fun b!178703 () Bool)

(declare-fun res!80802 () Bool)

(assert (=> b!178703 (=> res!80802 e!108615)))

(assert (=> b!178703 (= res!80802 (not (rulesProduceIndividualToken!174 thiss!17480 rules!1920 (h!8387 tokens!465))))))

(declare-fun b!178704 () Bool)

(declare-fun e!108602 () Bool)

(assert (=> b!178704 (= e!108602 (not (= lt!58353 (++!700 lt!58359 lt!58365))))))

(assert (=> b!178705 (= e!108614 (and tp!85832 tp!85833))))

(declare-fun b!178706 () Bool)

(declare-fun res!80793 () Bool)

(assert (=> b!178706 (=> res!80793 e!108616)))

(declare-fun rulesProduceEachTokenIndividuallyList!127 (LexerInterface!425 List!2999 List!3000) Bool)

(assert (=> b!178706 (= res!80793 (not (rulesProduceEachTokenIndividuallyList!127 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!178707 () Bool)

(assert (=> b!178707 (= e!108592 e!108616)))

(declare-fun res!80809 () Bool)

(assert (=> b!178707 (=> res!80809 e!108616)))

(declare-fun lt!58356 () Bool)

(assert (=> b!178707 (= res!80809 (not lt!58356))))

(assert (=> b!178707 e!108612))

(declare-fun res!80794 () Bool)

(assert (=> b!178707 (=> (not res!80794) (not e!108612))))

(declare-datatypes ((tuple2!2954 0))(
  ( (tuple2!2955 (_1!1693 Token!822) (_2!1693 List!2998)) )
))
(declare-fun lt!58370 () tuple2!2954)

(assert (=> b!178707 (= res!80794 (= (_1!1693 lt!58370) (h!8387 tokens!465)))))

(declare-datatypes ((Option!357 0))(
  ( (None!356) (Some!356 (v!13825 tuple2!2954)) )
))
(declare-fun lt!58362 () Option!357)

(declare-fun get!835 (Option!357) tuple2!2954)

(assert (=> b!178707 (= lt!58370 (get!835 lt!58362))))

(declare-fun isDefined!208 (Option!357) Bool)

(assert (=> b!178707 (isDefined!208 lt!58362)))

(declare-fun maxPrefix!155 (LexerInterface!425 List!2999 List!2998) Option!357)

(assert (=> b!178707 (= lt!58362 (maxPrefix!155 thiss!17480 rules!1920 lt!58359))))

(declare-fun b!178708 () Bool)

(assert (=> b!178708 (= e!108596 e!108608)))

(declare-fun res!80804 () Bool)

(assert (=> b!178708 (=> res!80804 e!108608)))

(assert (=> b!178708 (= res!80804 e!108602)))

(declare-fun res!80789 () Bool)

(assert (=> b!178708 (=> (not res!80789) (not e!108602))))

(assert (=> b!178708 (= res!80789 (not lt!58356))))

(assert (=> b!178708 (= lt!58356 (= lt!58353 lt!58360))))

(declare-fun tp!85829 () Bool)

(declare-fun b!178709 () Bool)

(assert (=> b!178709 (= e!108609 (and tp!85829 (inv!3820 (tag!717 (rule!1054 (h!8387 tokens!465)))) (inv!3824 (transformation!539 (rule!1054 (h!8387 tokens!465)))) e!108600))))

(declare-fun res!80796 () Bool)

(assert (=> b!178710 (=> (not res!80796) (not e!108605))))

(declare-fun forall!603 (List!3000 Int) Bool)

(assert (=> b!178710 (= res!80796 (forall!603 tokens!465 lambda!5235))))

(declare-fun b!178711 () Bool)

(assert (=> b!178711 (= e!108610 e!108605)))

(declare-fun res!80800 () Bool)

(assert (=> b!178711 (=> (not res!80800) (not e!108605))))

(declare-fun lt!58355 () BalanceConc!1810)

(declare-fun rulesProduceEachTokenIndividually!217 (LexerInterface!425 List!2999 BalanceConc!1810) Bool)

(assert (=> b!178711 (= res!80800 (rulesProduceEachTokenIndividually!217 thiss!17480 rules!1920 lt!58355))))

(assert (=> b!178711 (= lt!58355 (seqFromList!455 tokens!465))))

(declare-fun b!178712 () Bool)

(declare-fun tp!85828 () Bool)

(assert (=> b!178712 (= e!108597 (and tp!85828 (inv!3820 (tag!717 (rule!1054 separatorToken!170))) (inv!3824 (transformation!539 (rule!1054 separatorToken!170))) e!108595))))

(declare-fun b!178713 () Bool)

(assert (=> b!178713 (= e!108605 e!108606)))

(declare-fun res!80795 () Bool)

(assert (=> b!178713 (=> (not res!80795) (not e!108606))))

(assert (=> b!178713 (= res!80795 (= lt!58353 lt!58357))))

(assert (=> b!178713 (= lt!58357 (list!1097 (printWithSeparatorTokenWhenNeededRec!108 thiss!17480 rules!1920 lt!58355 separatorToken!170 0)))))

(assert (=> b!178713 (= lt!58353 (printWithSeparatorTokenWhenNeededList!118 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!85825 () Bool)

(declare-fun b!178714 () Bool)

(assert (=> b!178714 (= e!108613 (and (inv!3823 (h!8387 tokens!465)) e!108611 tp!85825))))

(declare-fun b!178715 () Bool)

(declare-fun res!80792 () Bool)

(assert (=> b!178715 (=> (not res!80792) (not e!108605))))

(declare-fun sepAndNonSepRulesDisjointChars!128 (List!2999 List!2999) Bool)

(assert (=> b!178715 (= res!80792 (sepAndNonSepRulesDisjointChars!128 rules!1920 rules!1920))))

(declare-fun b!178716 () Bool)

(declare-fun res!80790 () Bool)

(assert (=> b!178716 (=> (not res!80790) (not e!108610))))

(declare-fun isEmpty!1329 (List!2999) Bool)

(assert (=> b!178716 (= res!80790 (not (isEmpty!1329 rules!1920)))))

(declare-fun b!178717 () Bool)

(declare-fun res!80797 () Bool)

(assert (=> b!178717 (=> (not res!80797) (not e!108612))))

(declare-fun isEmpty!1330 (List!2998) Bool)

(assert (=> b!178717 (= res!80797 (isEmpty!1330 (_2!1693 lt!58370)))))

(assert (= (and start!19338 res!80803) b!178716))

(assert (= (and b!178716 res!80790) b!178687))

(assert (= (and b!178687 res!80808) b!178711))

(assert (= (and b!178711 res!80800) b!178700))

(assert (= (and b!178700 res!80805) b!178702))

(assert (= (and b!178702 res!80806) b!178710))

(assert (= (and b!178710 res!80796) b!178715))

(assert (= (and b!178715 res!80792) b!178688))

(assert (= (and b!178688 res!80807) b!178713))

(assert (= (and b!178713 res!80795) b!178695))

(assert (= (and b!178695 res!80791) b!178686))

(assert (= (and b!178686 (not res!80801)) b!178708))

(assert (= (and b!178708 res!80789) b!178704))

(assert (= (and b!178708 (not res!80804)) b!178689))

(assert (= (and b!178689 (not res!80799)) b!178703))

(assert (= (and b!178703 (not res!80802)) b!178693))

(assert (= (and b!178693 (not res!80810)) b!178691))

(assert (= (and b!178691 (not res!80798)) b!178707))

(assert (= (and b!178707 res!80794) b!178717))

(assert (= (and b!178717 res!80797) b!178697))

(assert (= (and b!178707 (not res!80809)) b!178706))

(assert (= (and b!178706 (not res!80793)) b!178690))

(assert (= b!178698 b!178705))

(assert (= b!178701 b!178698))

(assert (= (and start!19338 ((_ is Cons!2989) rules!1920)) b!178701))

(assert (= b!178712 b!178699))

(assert (= b!178692 b!178712))

(assert (= start!19338 b!178692))

(assert (= b!178709 b!178694))

(assert (= b!178696 b!178709))

(assert (= b!178714 b!178696))

(assert (= (and start!19338 ((_ is Cons!2990) tokens!465)) b!178714))

(declare-fun m!180541 () Bool)

(assert (=> b!178711 m!180541))

(declare-fun m!180543 () Bool)

(assert (=> b!178711 m!180543))

(declare-fun m!180545 () Bool)

(assert (=> b!178696 m!180545))

(declare-fun m!180547 () Bool)

(assert (=> b!178712 m!180547))

(declare-fun m!180549 () Bool)

(assert (=> b!178712 m!180549))

(declare-fun m!180551 () Bool)

(assert (=> b!178698 m!180551))

(declare-fun m!180553 () Bool)

(assert (=> b!178698 m!180553))

(declare-fun m!180555 () Bool)

(assert (=> b!178715 m!180555))

(declare-fun m!180557 () Bool)

(assert (=> start!19338 m!180557))

(declare-fun m!180559 () Bool)

(assert (=> b!178686 m!180559))

(declare-fun m!180561 () Bool)

(assert (=> b!178686 m!180561))

(declare-fun m!180563 () Bool)

(assert (=> b!178686 m!180563))

(declare-fun m!180565 () Bool)

(assert (=> b!178686 m!180565))

(assert (=> b!178686 m!180561))

(declare-fun m!180567 () Bool)

(assert (=> b!178686 m!180567))

(declare-fun m!180569 () Bool)

(assert (=> b!178686 m!180569))

(declare-fun m!180571 () Bool)

(assert (=> b!178686 m!180571))

(assert (=> b!178686 m!180567))

(declare-fun m!180573 () Bool)

(assert (=> b!178686 m!180573))

(assert (=> b!178686 m!180565))

(declare-fun m!180575 () Bool)

(assert (=> b!178686 m!180575))

(declare-fun m!180577 () Bool)

(assert (=> b!178686 m!180577))

(declare-fun m!180579 () Bool)

(assert (=> b!178686 m!180579))

(assert (=> b!178686 m!180569))

(declare-fun m!180581 () Bool)

(assert (=> b!178686 m!180581))

(assert (=> b!178686 m!180577))

(declare-fun m!180583 () Bool)

(assert (=> b!178686 m!180583))

(declare-fun m!180585 () Bool)

(assert (=> b!178692 m!180585))

(declare-fun m!180587 () Bool)

(assert (=> b!178717 m!180587))

(declare-fun m!180589 () Bool)

(assert (=> b!178703 m!180589))

(declare-fun m!180591 () Bool)

(assert (=> b!178695 m!180591))

(assert (=> b!178695 m!180591))

(declare-fun m!180593 () Bool)

(assert (=> b!178695 m!180593))

(declare-fun m!180595 () Bool)

(assert (=> b!178713 m!180595))

(assert (=> b!178713 m!180595))

(declare-fun m!180597 () Bool)

(assert (=> b!178713 m!180597))

(declare-fun m!180599 () Bool)

(assert (=> b!178713 m!180599))

(declare-fun m!180601 () Bool)

(assert (=> b!178700 m!180601))

(declare-fun m!180603 () Bool)

(assert (=> b!178709 m!180603))

(declare-fun m!180605 () Bool)

(assert (=> b!178709 m!180605))

(declare-fun m!180607 () Bool)

(assert (=> b!178706 m!180607))

(declare-fun m!180609 () Bool)

(assert (=> b!178693 m!180609))

(assert (=> b!178693 m!180609))

(declare-fun m!180611 () Bool)

(assert (=> b!178693 m!180611))

(declare-fun m!180613 () Bool)

(assert (=> b!178693 m!180613))

(declare-fun m!180615 () Bool)

(assert (=> b!178704 m!180615))

(declare-fun m!180617 () Bool)

(assert (=> b!178710 m!180617))

(declare-fun m!180619 () Bool)

(assert (=> b!178714 m!180619))

(declare-fun m!180621 () Bool)

(assert (=> b!178687 m!180621))

(declare-fun m!180623 () Bool)

(assert (=> b!178691 m!180623))

(assert (=> b!178691 m!180623))

(declare-fun m!180625 () Bool)

(assert (=> b!178691 m!180625))

(assert (=> b!178691 m!180625))

(declare-fun m!180627 () Bool)

(assert (=> b!178691 m!180627))

(declare-fun m!180629 () Bool)

(assert (=> b!178691 m!180629))

(declare-fun m!180631 () Bool)

(assert (=> b!178689 m!180631))

(declare-fun m!180633 () Bool)

(assert (=> b!178689 m!180633))

(declare-fun m!180635 () Bool)

(assert (=> b!178689 m!180635))

(declare-fun m!180637 () Bool)

(assert (=> b!178689 m!180637))

(declare-fun m!180639 () Bool)

(assert (=> b!178689 m!180639))

(declare-fun m!180641 () Bool)

(assert (=> b!178697 m!180641))

(declare-fun m!180643 () Bool)

(assert (=> b!178707 m!180643))

(declare-fun m!180645 () Bool)

(assert (=> b!178707 m!180645))

(declare-fun m!180647 () Bool)

(assert (=> b!178707 m!180647))

(declare-fun m!180649 () Bool)

(assert (=> b!178716 m!180649))

(check-sat b_and!12157 (not b!178697) (not b_next!6891) (not b!178692) (not b!178696) (not b!178703) b_and!12159 (not b_next!6883) (not b!178711) (not b!178710) (not b!178704) (not b!178714) (not b!178689) (not b!178695) (not b!178712) (not b!178717) b_and!12155 (not b!178693) (not b_next!6881) (not b!178701) (not b!178700) (not start!19338) b_and!12151 b_and!12153 (not b_next!6887) (not b!178716) (not b!178687) (not b!178686) (not b_next!6889) (not b!178691) (not b!178713) (not b!178707) (not b!178709) (not b_next!6885) (not b!178698) (not b!178726) b_and!12149 (not b!178715) (not b!178706))
(check-sat b_and!12157 (not b_next!6891) (not b_next!6887) (not b_next!6889) (not b_next!6885) b_and!12159 b_and!12149 (not b_next!6883) b_and!12155 (not b_next!6881) b_and!12151 b_and!12153)
