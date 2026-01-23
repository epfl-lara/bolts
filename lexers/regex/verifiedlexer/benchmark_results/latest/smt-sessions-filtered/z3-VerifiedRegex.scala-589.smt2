; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17774 () Bool)

(assert start!17774)

(declare-fun b!164831 () Bool)

(declare-fun b_free!6265 () Bool)

(declare-fun b_next!6265 () Bool)

(assert (=> b!164831 (= b_free!6265 (not b_next!6265))))

(declare-fun tp!82793 () Bool)

(declare-fun b_and!10497 () Bool)

(assert (=> b!164831 (= tp!82793 b_and!10497)))

(declare-fun b_free!6267 () Bool)

(declare-fun b_next!6267 () Bool)

(assert (=> b!164831 (= b_free!6267 (not b_next!6267))))

(declare-fun tp!82799 () Bool)

(declare-fun b_and!10499 () Bool)

(assert (=> b!164831 (= tp!82799 b_and!10499)))

(declare-fun b!164828 () Bool)

(declare-fun b_free!6269 () Bool)

(declare-fun b_next!6269 () Bool)

(assert (=> b!164828 (= b_free!6269 (not b_next!6269))))

(declare-fun tp!82790 () Bool)

(declare-fun b_and!10501 () Bool)

(assert (=> b!164828 (= tp!82790 b_and!10501)))

(declare-fun b_free!6271 () Bool)

(declare-fun b_next!6271 () Bool)

(assert (=> b!164828 (= b_free!6271 (not b_next!6271))))

(declare-fun tp!82796 () Bool)

(declare-fun b_and!10503 () Bool)

(assert (=> b!164828 (= tp!82796 b_and!10503)))

(declare-fun b!164817 () Bool)

(declare-fun b_free!6273 () Bool)

(declare-fun b_next!6273 () Bool)

(assert (=> b!164817 (= b_free!6273 (not b_next!6273))))

(declare-fun tp!82797 () Bool)

(declare-fun b_and!10505 () Bool)

(assert (=> b!164817 (= tp!82797 b_and!10505)))

(declare-fun b_free!6275 () Bool)

(declare-fun b_next!6275 () Bool)

(assert (=> b!164817 (= b_free!6275 (not b_next!6275))))

(declare-fun tp!82788 () Bool)

(declare-fun b_and!10507 () Bool)

(assert (=> b!164817 (= tp!82788 b_and!10507)))

(declare-fun bs!15756 () Bool)

(declare-fun b!164821 () Bool)

(declare-fun b!164839 () Bool)

(assert (= bs!15756 (and b!164821 b!164839)))

(declare-fun lambda!4552 () Int)

(declare-fun lambda!4551 () Int)

(assert (=> bs!15756 (not (= lambda!4552 lambda!4551))))

(declare-fun b!164852 () Bool)

(declare-fun e!99398 () Bool)

(assert (=> b!164852 (= e!99398 true)))

(declare-fun b!164851 () Bool)

(declare-fun e!99397 () Bool)

(assert (=> b!164851 (= e!99397 e!99398)))

(declare-fun b!164850 () Bool)

(declare-fun e!99396 () Bool)

(assert (=> b!164850 (= e!99396 e!99397)))

(assert (=> b!164821 e!99396))

(assert (= b!164851 b!164852))

(assert (= b!164850 b!164851))

(declare-datatypes ((List!2831 0))(
  ( (Nil!2821) (Cons!2821 (h!8218 (_ BitVec 16)) (t!26453 List!2831)) )
))
(declare-datatypes ((TokenValue!523 0))(
  ( (FloatLiteralValue!1046 (text!4106 List!2831)) (TokenValueExt!522 (__x!2533 Int)) (Broken!2615 (value!18568 List!2831)) (Object!532) (End!523) (Def!523) (Underscore!523) (Match!523) (Else!523) (Error!523) (Case!523) (If!523) (Extends!523) (Abstract!523) (Class!523) (Val!523) (DelimiterValue!1046 (del!583 List!2831)) (KeywordValue!529 (value!18569 List!2831)) (CommentValue!1046 (value!18570 List!2831)) (WhitespaceValue!1046 (value!18571 List!2831)) (IndentationValue!523 (value!18572 List!2831)) (String!3694) (Int32!523) (Broken!2616 (value!18573 List!2831)) (Boolean!524) (Unit!2377) (OperatorValue!526 (op!583 List!2831)) (IdentifierValue!1046 (value!18574 List!2831)) (IdentifierValue!1047 (value!18575 List!2831)) (WhitespaceValue!1047 (value!18576 List!2831)) (True!1046) (False!1046) (Broken!2617 (value!18577 List!2831)) (Broken!2618 (value!18578 List!2831)) (True!1047) (RightBrace!523) (RightBracket!523) (Colon!523) (Null!523) (Comma!523) (LeftBracket!523) (False!1047) (LeftBrace!523) (ImaginaryLiteralValue!523 (text!4107 List!2831)) (StringLiteralValue!1569 (value!18579 List!2831)) (EOFValue!523 (value!18580 List!2831)) (IdentValue!523 (value!18581 List!2831)) (DelimiterValue!1047 (value!18582 List!2831)) (DedentValue!523 (value!18583 List!2831)) (NewLineValue!523 (value!18584 List!2831)) (IntegerValue!1569 (value!18585 (_ BitVec 32)) (text!4108 List!2831)) (IntegerValue!1570 (value!18586 Int) (text!4109 List!2831)) (Times!523) (Or!523) (Equal!523) (Minus!523) (Broken!2619 (value!18587 List!2831)) (And!523) (Div!523) (LessEqual!523) (Mod!523) (Concat!1248) (Not!523) (Plus!523) (SpaceValue!523 (value!18588 List!2831)) (IntegerValue!1571 (value!18589 Int) (text!4110 List!2831)) (StringLiteralValue!1570 (text!4111 List!2831)) (FloatLiteralValue!1047 (text!4112 List!2831)) (BytesLiteralValue!523 (value!18590 List!2831)) (CommentValue!1047 (value!18591 List!2831)) (StringLiteralValue!1571 (value!18592 List!2831)) (ErrorTokenValue!523 (msg!584 List!2831)) )
))
(declare-datatypes ((C!2372 0))(
  ( (C!2373 (val!1072 Int)) )
))
(declare-datatypes ((List!2832 0))(
  ( (Nil!2822) (Cons!2822 (h!8219 C!2372) (t!26454 List!2832)) )
))
(declare-datatypes ((IArray!1649 0))(
  ( (IArray!1650 (innerList!882 List!2832)) )
))
(declare-datatypes ((Conc!824 0))(
  ( (Node!824 (left!2133 Conc!824) (right!2463 Conc!824) (csize!1878 Int) (cheight!1035 Int)) (Leaf!1414 (xs!3419 IArray!1649) (csize!1879 Int)) (Empty!824) )
))
(declare-datatypes ((BalanceConc!1656 0))(
  ( (BalanceConc!1657 (c!32900 Conc!824)) )
))
(declare-datatypes ((TokenValueInjection!818 0))(
  ( (TokenValueInjection!819 (toValue!1160 Int) (toChars!1019 Int)) )
))
(declare-datatypes ((String!3695 0))(
  ( (String!3696 (value!18593 String)) )
))
(declare-datatypes ((Regex!725 0))(
  ( (ElementMatch!725 (c!32901 C!2372)) (Concat!1249 (regOne!1962 Regex!725) (regTwo!1962 Regex!725)) (EmptyExpr!725) (Star!725 (reg!1054 Regex!725)) (EmptyLang!725) (Union!725 (regOne!1963 Regex!725) (regTwo!1963 Regex!725)) )
))
(declare-datatypes ((Rule!802 0))(
  ( (Rule!803 (regex!501 Regex!725) (tag!679 String!3695) (isSeparator!501 Bool) (transformation!501 TokenValueInjection!818)) )
))
(declare-datatypes ((List!2833 0))(
  ( (Nil!2823) (Cons!2823 (h!8220 Rule!802) (t!26455 List!2833)) )
))
(declare-fun rules!1920 () List!2833)

(get-info :version)

(assert (= (and b!164821 ((_ is Cons!2823) rules!1920)) b!164850))

(declare-fun order!1457 () Int)

(declare-fun order!1459 () Int)

(declare-fun dynLambda!1019 (Int Int) Int)

(declare-fun dynLambda!1020 (Int Int) Int)

(assert (=> b!164852 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4552))))

(declare-fun order!1461 () Int)

(declare-fun dynLambda!1021 (Int Int) Int)

(assert (=> b!164852 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4552))))

(assert (=> b!164821 true))

(declare-fun b!164815 () Bool)

(declare-fun e!99384 () Bool)

(declare-fun e!99385 () Bool)

(declare-fun tp!82794 () Bool)

(assert (=> b!164815 (= e!99384 (and e!99385 tp!82794))))

(declare-fun b!164816 () Bool)

(declare-fun e!99387 () Bool)

(declare-fun e!99378 () Bool)

(assert (=> b!164816 (= e!99387 e!99378)))

(declare-fun res!74606 () Bool)

(assert (=> b!164816 (=> (not res!74606) (not e!99378))))

(declare-datatypes ((Token!746 0))(
  ( (Token!747 (value!18594 TokenValue!523) (rule!1008 Rule!802) (size!2359 Int) (originalCharacters!544 List!2832)) )
))
(declare-datatypes ((List!2834 0))(
  ( (Nil!2824) (Cons!2824 (h!8221 Token!746) (t!26456 List!2834)) )
))
(declare-datatypes ((IArray!1651 0))(
  ( (IArray!1652 (innerList!883 List!2834)) )
))
(declare-datatypes ((Conc!825 0))(
  ( (Node!825 (left!2134 Conc!825) (right!2464 Conc!825) (csize!1880 Int) (cheight!1036 Int)) (Leaf!1415 (xs!3420 IArray!1651) (csize!1881 Int)) (Empty!825) )
))
(declare-datatypes ((BalanceConc!1658 0))(
  ( (BalanceConc!1659 (c!32902 Conc!825)) )
))
(declare-fun lt!50710 () BalanceConc!1658)

(declare-datatypes ((LexerInterface!387 0))(
  ( (LexerInterfaceExt!384 (__x!2534 Int)) (Lexer!385) )
))
(declare-fun thiss!17480 () LexerInterface!387)

(declare-fun rulesProduceEachTokenIndividually!179 (LexerInterface!387 List!2833 BalanceConc!1658) Bool)

(assert (=> b!164816 (= res!74606 (rulesProduceEachTokenIndividually!179 thiss!17480 rules!1920 lt!50710))))

(declare-fun tokens!465 () List!2834)

(declare-fun seqFromList!379 (List!2834) BalanceConc!1658)

(assert (=> b!164816 (= lt!50710 (seqFromList!379 tokens!465))))

(declare-fun e!99370 () Bool)

(assert (=> b!164817 (= e!99370 (and tp!82797 tp!82788))))

(declare-fun res!74607 () Bool)

(assert (=> start!17774 (=> (not res!74607) (not e!99387))))

(assert (=> start!17774 (= res!74607 ((_ is Lexer!385) thiss!17480))))

(assert (=> start!17774 e!99387))

(assert (=> start!17774 true))

(assert (=> start!17774 e!99384))

(declare-fun separatorToken!170 () Token!746)

(declare-fun e!99373 () Bool)

(declare-fun inv!3644 (Token!746) Bool)

(assert (=> start!17774 (and (inv!3644 separatorToken!170) e!99373)))

(declare-fun e!99369 () Bool)

(assert (=> start!17774 e!99369))

(declare-fun b!164818 () Bool)

(declare-fun res!74609 () Bool)

(declare-fun e!99388 () Bool)

(assert (=> b!164818 (=> (not res!74609) (not e!99388))))

(declare-fun lt!50714 () List!2832)

(declare-fun lt!50711 () List!2832)

(declare-fun list!1019 (BalanceConc!1656) List!2832)

(declare-fun seqFromList!380 (List!2832) BalanceConc!1656)

(assert (=> b!164818 (= res!74609 (= (list!1019 (seqFromList!380 lt!50714)) lt!50711))))

(declare-fun b!164819 () Bool)

(declare-fun e!99389 () Bool)

(declare-fun e!99382 () Bool)

(declare-fun tp!82787 () Bool)

(declare-fun inv!3641 (String!3695) Bool)

(declare-fun inv!3645 (TokenValueInjection!818) Bool)

(assert (=> b!164819 (= e!99382 (and tp!82787 (inv!3641 (tag!679 (rule!1008 (h!8221 tokens!465)))) (inv!3645 (transformation!501 (rule!1008 (h!8221 tokens!465)))) e!99389))))

(declare-fun tp!82789 () Bool)

(declare-fun b!164820 () Bool)

(declare-fun e!99383 () Bool)

(declare-fun inv!21 (TokenValue!523) Bool)

(assert (=> b!164820 (= e!99373 (and (inv!21 (value!18594 separatorToken!170)) e!99383 tp!82789))))

(declare-fun e!99374 () Bool)

(declare-fun rulesValidInductive!108 (LexerInterface!387 List!2833) Bool)

(assert (=> b!164821 (= e!99374 (rulesValidInductive!108 thiss!17480 rules!1920))))

(declare-fun lt!50713 () BalanceConc!1656)

(assert (=> b!164821 (= lt!50713 (seqFromList!380 (originalCharacters!544 (h!8221 tokens!465))))))

(declare-datatypes ((Unit!2378 0))(
  ( (Unit!2379) )
))
(declare-fun lt!50715 () Unit!2378)

(declare-fun forallContained!68 (List!2834 Int Token!746) Unit!2378)

(assert (=> b!164821 (= lt!50715 (forallContained!68 tokens!465 lambda!4552 (h!8221 tokens!465)))))

(declare-fun lt!50724 () List!2832)

(assert (=> b!164821 (= lt!50724 (originalCharacters!544 (h!8221 tokens!465)))))

(declare-fun tp!82792 () Bool)

(declare-fun e!99372 () Bool)

(declare-fun b!164822 () Bool)

(assert (=> b!164822 (= e!99369 (and (inv!3644 (h!8221 tokens!465)) e!99372 tp!82792))))

(declare-fun b!164823 () Bool)

(declare-fun res!74611 () Bool)

(assert (=> b!164823 (=> res!74611 e!99374)))

(declare-fun isEmpty!1155 (BalanceConc!1658) Bool)

(declare-datatypes ((tuple2!2690 0))(
  ( (tuple2!2691 (_1!1561 BalanceConc!1658) (_2!1561 BalanceConc!1656)) )
))
(declare-fun lex!187 (LexerInterface!387 List!2833 BalanceConc!1656) tuple2!2690)

(assert (=> b!164823 (= res!74611 (isEmpty!1155 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724)))))))

(declare-fun b!164824 () Bool)

(declare-fun res!74603 () Bool)

(assert (=> b!164824 (=> (not res!74603) (not e!99378))))

(declare-fun sepAndNonSepRulesDisjointChars!90 (List!2833 List!2833) Bool)

(assert (=> b!164824 (= res!74603 (sepAndNonSepRulesDisjointChars!90 rules!1920 rules!1920))))

(declare-fun b!164825 () Bool)

(declare-fun e!99386 () Bool)

(assert (=> b!164825 (= e!99386 e!99374)))

(declare-fun res!74614 () Bool)

(assert (=> b!164825 (=> res!74614 e!99374)))

(declare-fun lt!50719 () List!2832)

(declare-fun lt!50723 () List!2832)

(assert (=> b!164825 (= res!74614 (or (not (= lt!50723 lt!50719)) (not (= lt!50719 lt!50724)) (not (= lt!50723 lt!50724))))))

(declare-fun printList!71 (LexerInterface!387 List!2834) List!2832)

(assert (=> b!164825 (= lt!50719 (printList!71 thiss!17480 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))

(declare-fun lt!50717 () BalanceConc!1656)

(assert (=> b!164825 (= lt!50723 (list!1019 lt!50717))))

(declare-fun lt!50721 () BalanceConc!1658)

(declare-fun printTailRec!81 (LexerInterface!387 BalanceConc!1658 Int BalanceConc!1656) BalanceConc!1656)

(assert (=> b!164825 (= lt!50717 (printTailRec!81 thiss!17480 lt!50721 0 (BalanceConc!1657 Empty!824)))))

(declare-fun print!118 (LexerInterface!387 BalanceConc!1658) BalanceConc!1656)

(assert (=> b!164825 (= lt!50717 (print!118 thiss!17480 lt!50721))))

(declare-fun singletonSeq!53 (Token!746) BalanceConc!1658)

(assert (=> b!164825 (= lt!50721 (singletonSeq!53 (h!8221 tokens!465)))))

(declare-fun e!99379 () Bool)

(declare-fun tp!82798 () Bool)

(declare-fun b!164826 () Bool)

(assert (=> b!164826 (= e!99383 (and tp!82798 (inv!3641 (tag!679 (rule!1008 separatorToken!170))) (inv!3645 (transformation!501 (rule!1008 separatorToken!170))) e!99379))))

(declare-fun b!164827 () Bool)

(declare-fun res!74612 () Bool)

(assert (=> b!164827 (=> (not res!74612) (not e!99378))))

(declare-fun rulesProduceIndividualToken!136 (LexerInterface!387 List!2833 Token!746) Bool)

(assert (=> b!164827 (= res!74612 (rulesProduceIndividualToken!136 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!164828 (= e!99379 (and tp!82790 tp!82796))))

(declare-fun b!164829 () Bool)

(declare-fun res!74605 () Bool)

(assert (=> b!164829 (=> (not res!74605) (not e!99378))))

(assert (=> b!164829 (= res!74605 ((_ is Cons!2824) tokens!465))))

(declare-fun e!99381 () Bool)

(declare-fun lt!50709 () List!2832)

(declare-fun b!164830 () Bool)

(declare-fun ++!636 (List!2832 List!2832) List!2832)

(assert (=> b!164830 (= e!99381 (not (= lt!50714 (++!636 lt!50724 lt!50709))))))

(assert (=> b!164831 (= e!99389 (and tp!82793 tp!82799))))

(declare-fun tp!82795 () Bool)

(declare-fun b!164832 () Bool)

(assert (=> b!164832 (= e!99372 (and (inv!21 (value!18594 (h!8221 tokens!465))) e!99382 tp!82795))))

(declare-fun b!164833 () Bool)

(declare-fun res!74599 () Bool)

(assert (=> b!164833 (=> res!74599 e!99374)))

(assert (=> b!164833 (= res!74599 (not (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (h!8221 tokens!465))))))

(declare-fun b!164834 () Bool)

(declare-fun res!74608 () Bool)

(assert (=> b!164834 (=> res!74608 e!99386)))

(assert (=> b!164834 (= res!74608 e!99381)))

(declare-fun res!74600 () Bool)

(assert (=> b!164834 (=> (not res!74600) (not e!99381))))

(declare-fun lt!50716 () List!2832)

(assert (=> b!164834 (= res!74600 (not (= lt!50714 lt!50716)))))

(declare-fun b!164835 () Bool)

(assert (=> b!164835 (= e!99378 e!99388)))

(declare-fun res!74613 () Bool)

(assert (=> b!164835 (=> (not res!74613) (not e!99388))))

(assert (=> b!164835 (= res!74613 (= lt!50714 lt!50711))))

(declare-fun printWithSeparatorTokenWhenNeededRec!70 (LexerInterface!387 List!2833 BalanceConc!1658 Token!746 Int) BalanceConc!1656)

(assert (=> b!164835 (= lt!50711 (list!1019 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!80 (LexerInterface!387 List!2833 List!2834 Token!746) List!2832)

(assert (=> b!164835 (= lt!50714 (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!164836 () Bool)

(assert (=> b!164836 (= e!99388 (not e!99386))))

(declare-fun res!74602 () Bool)

(assert (=> b!164836 (=> res!74602 e!99386)))

(assert (=> b!164836 (= res!74602 (not (= lt!50709 (list!1019 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!50712 () List!2832)

(assert (=> b!164836 (= lt!50712 lt!50716)))

(declare-fun lt!50722 () List!2832)

(assert (=> b!164836 (= lt!50716 (++!636 lt!50724 lt!50722))))

(declare-fun lt!50718 () List!2832)

(assert (=> b!164836 (= lt!50712 (++!636 (++!636 lt!50724 lt!50718) lt!50709))))

(declare-fun lt!50720 () Unit!2378)

(declare-fun lemmaConcatAssociativity!184 (List!2832 List!2832 List!2832) Unit!2378)

(assert (=> b!164836 (= lt!50720 (lemmaConcatAssociativity!184 lt!50724 lt!50718 lt!50709))))

(declare-fun charsOf!156 (Token!746) BalanceConc!1656)

(assert (=> b!164836 (= lt!50724 (list!1019 (charsOf!156 (h!8221 tokens!465))))))

(assert (=> b!164836 (= lt!50722 (++!636 lt!50718 lt!50709))))

(assert (=> b!164836 (= lt!50709 (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (t!26456 tokens!465) separatorToken!170))))

(assert (=> b!164836 (= lt!50718 (list!1019 (charsOf!156 separatorToken!170)))))

(declare-fun b!164837 () Bool)

(declare-fun res!74610 () Bool)

(assert (=> b!164837 (=> (not res!74610) (not e!99387))))

(declare-fun isEmpty!1156 (List!2833) Bool)

(assert (=> b!164837 (= res!74610 (not (isEmpty!1156 rules!1920)))))

(declare-fun b!164838 () Bool)

(declare-fun res!74598 () Bool)

(assert (=> b!164838 (=> (not res!74598) (not e!99378))))

(assert (=> b!164838 (= res!74598 (isSeparator!501 (rule!1008 separatorToken!170)))))

(declare-fun res!74601 () Bool)

(assert (=> b!164839 (=> (not res!74601) (not e!99378))))

(declare-fun forall!533 (List!2834 Int) Bool)

(assert (=> b!164839 (= res!74601 (forall!533 tokens!465 lambda!4551))))

(declare-fun b!164840 () Bool)

(declare-fun res!74604 () Bool)

(assert (=> b!164840 (=> (not res!74604) (not e!99387))))

(declare-fun rulesInvariant!353 (LexerInterface!387 List!2833) Bool)

(assert (=> b!164840 (= res!74604 (rulesInvariant!353 thiss!17480 rules!1920))))

(declare-fun b!164841 () Bool)

(declare-fun tp!82791 () Bool)

(assert (=> b!164841 (= e!99385 (and tp!82791 (inv!3641 (tag!679 (h!8220 rules!1920))) (inv!3645 (transformation!501 (h!8220 rules!1920))) e!99370))))

(assert (= (and start!17774 res!74607) b!164837))

(assert (= (and b!164837 res!74610) b!164840))

(assert (= (and b!164840 res!74604) b!164816))

(assert (= (and b!164816 res!74606) b!164827))

(assert (= (and b!164827 res!74612) b!164838))

(assert (= (and b!164838 res!74598) b!164839))

(assert (= (and b!164839 res!74601) b!164824))

(assert (= (and b!164824 res!74603) b!164829))

(assert (= (and b!164829 res!74605) b!164835))

(assert (= (and b!164835 res!74613) b!164818))

(assert (= (and b!164818 res!74609) b!164836))

(assert (= (and b!164836 (not res!74602)) b!164834))

(assert (= (and b!164834 res!74600) b!164830))

(assert (= (and b!164834 (not res!74608)) b!164825))

(assert (= (and b!164825 (not res!74614)) b!164833))

(assert (= (and b!164833 (not res!74599)) b!164823))

(assert (= (and b!164823 (not res!74611)) b!164821))

(assert (= b!164841 b!164817))

(assert (= b!164815 b!164841))

(assert (= (and start!17774 ((_ is Cons!2823) rules!1920)) b!164815))

(assert (= b!164826 b!164828))

(assert (= b!164820 b!164826))

(assert (= start!17774 b!164820))

(assert (= b!164819 b!164831))

(assert (= b!164832 b!164819))

(assert (= b!164822 b!164832))

(assert (= (and start!17774 ((_ is Cons!2824) tokens!465)) b!164822))

(declare-fun m!157219 () Bool)

(assert (=> b!164833 m!157219))

(declare-fun m!157221 () Bool)

(assert (=> b!164832 m!157221))

(declare-fun m!157223 () Bool)

(assert (=> b!164818 m!157223))

(assert (=> b!164818 m!157223))

(declare-fun m!157225 () Bool)

(assert (=> b!164818 m!157225))

(declare-fun m!157227 () Bool)

(assert (=> b!164816 m!157227))

(declare-fun m!157229 () Bool)

(assert (=> b!164816 m!157229))

(declare-fun m!157231 () Bool)

(assert (=> b!164823 m!157231))

(assert (=> b!164823 m!157231))

(declare-fun m!157233 () Bool)

(assert (=> b!164823 m!157233))

(declare-fun m!157235 () Bool)

(assert (=> b!164823 m!157235))

(declare-fun m!157237 () Bool)

(assert (=> b!164835 m!157237))

(assert (=> b!164835 m!157237))

(declare-fun m!157239 () Bool)

(assert (=> b!164835 m!157239))

(declare-fun m!157241 () Bool)

(assert (=> b!164835 m!157241))

(declare-fun m!157243 () Bool)

(assert (=> b!164824 m!157243))

(declare-fun m!157245 () Bool)

(assert (=> b!164837 m!157245))

(declare-fun m!157247 () Bool)

(assert (=> b!164827 m!157247))

(declare-fun m!157249 () Bool)

(assert (=> b!164820 m!157249))

(declare-fun m!157251 () Bool)

(assert (=> b!164825 m!157251))

(declare-fun m!157253 () Bool)

(assert (=> b!164825 m!157253))

(declare-fun m!157255 () Bool)

(assert (=> b!164825 m!157255))

(declare-fun m!157257 () Bool)

(assert (=> b!164825 m!157257))

(declare-fun m!157259 () Bool)

(assert (=> b!164825 m!157259))

(declare-fun m!157261 () Bool)

(assert (=> b!164841 m!157261))

(declare-fun m!157263 () Bool)

(assert (=> b!164841 m!157263))

(declare-fun m!157265 () Bool)

(assert (=> b!164821 m!157265))

(declare-fun m!157267 () Bool)

(assert (=> b!164821 m!157267))

(declare-fun m!157269 () Bool)

(assert (=> b!164821 m!157269))

(declare-fun m!157271 () Bool)

(assert (=> b!164819 m!157271))

(declare-fun m!157273 () Bool)

(assert (=> b!164819 m!157273))

(declare-fun m!157275 () Bool)

(assert (=> b!164836 m!157275))

(declare-fun m!157277 () Bool)

(assert (=> b!164836 m!157277))

(declare-fun m!157279 () Bool)

(assert (=> b!164836 m!157279))

(declare-fun m!157281 () Bool)

(assert (=> b!164836 m!157281))

(declare-fun m!157283 () Bool)

(assert (=> b!164836 m!157283))

(assert (=> b!164836 m!157281))

(declare-fun m!157285 () Bool)

(assert (=> b!164836 m!157285))

(declare-fun m!157287 () Bool)

(assert (=> b!164836 m!157287))

(declare-fun m!157289 () Bool)

(assert (=> b!164836 m!157289))

(assert (=> b!164836 m!157275))

(declare-fun m!157291 () Bool)

(assert (=> b!164836 m!157291))

(declare-fun m!157293 () Bool)

(assert (=> b!164836 m!157293))

(assert (=> b!164836 m!157287))

(assert (=> b!164836 m!157293))

(declare-fun m!157295 () Bool)

(assert (=> b!164836 m!157295))

(declare-fun m!157297 () Bool)

(assert (=> b!164836 m!157297))

(assert (=> b!164836 m!157291))

(declare-fun m!157299 () Bool)

(assert (=> b!164836 m!157299))

(declare-fun m!157301 () Bool)

(assert (=> start!17774 m!157301))

(declare-fun m!157303 () Bool)

(assert (=> b!164822 m!157303))

(declare-fun m!157305 () Bool)

(assert (=> b!164826 m!157305))

(declare-fun m!157307 () Bool)

(assert (=> b!164826 m!157307))

(declare-fun m!157309 () Bool)

(assert (=> b!164840 m!157309))

(declare-fun m!157311 () Bool)

(assert (=> b!164830 m!157311))

(declare-fun m!157313 () Bool)

(assert (=> b!164839 m!157313))

(check-sat (not b!164841) (not b!164850) (not b!164833) (not b!164839) (not b!164816) (not b!164822) b_and!10499 (not b!164837) (not b!164818) (not b_next!6271) (not b_next!6269) (not b_next!6275) b_and!10497 (not b!164815) (not b!164830) (not b!164827) (not b!164821) (not b_next!6265) (not b_next!6267) (not start!17774) (not b_next!6273) (not b!164836) (not b!164840) (not b!164819) (not b!164820) b_and!10505 b_and!10507 (not b!164835) b_and!10501 (not b!164826) (not b!164832) (not b!164823) (not b!164824) (not b!164825) b_and!10503)
(check-sat (not b_next!6265) (not b_next!6267) (not b_next!6273) b_and!10501 b_and!10499 b_and!10503 (not b_next!6271) (not b_next!6269) (not b_next!6275) b_and!10497 b_and!10505 b_and!10507)
(get-model)

(declare-fun d!40914 () Bool)

(declare-fun list!1022 (Conc!824) List!2832)

(assert (=> d!40914 (= (list!1019 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0)) (list!1022 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0))))))

(declare-fun bs!15757 () Bool)

(assert (= bs!15757 d!40914))

(declare-fun m!157319 () Bool)

(assert (=> bs!15757 m!157319))

(assert (=> b!164835 d!40914))

(declare-fun bs!15770 () Bool)

(declare-fun d!40916 () Bool)

(assert (= bs!15770 (and d!40916 b!164839)))

(declare-fun lambda!4563 () Int)

(assert (=> bs!15770 (= lambda!4563 lambda!4551)))

(declare-fun bs!15771 () Bool)

(assert (= bs!15771 (and d!40916 b!164821)))

(assert (=> bs!15771 (not (= lambda!4563 lambda!4552))))

(declare-fun bs!15772 () Bool)

(declare-fun b!164997 () Bool)

(assert (= bs!15772 (and b!164997 b!164839)))

(declare-fun lambda!4564 () Int)

(assert (=> bs!15772 (not (= lambda!4564 lambda!4551))))

(declare-fun bs!15773 () Bool)

(assert (= bs!15773 (and b!164997 b!164821)))

(assert (=> bs!15773 (= lambda!4564 lambda!4552)))

(declare-fun bs!15774 () Bool)

(assert (= bs!15774 (and b!164997 d!40916)))

(assert (=> bs!15774 (not (= lambda!4564 lambda!4563))))

(declare-fun b!165007 () Bool)

(declare-fun e!99499 () Bool)

(assert (=> b!165007 (= e!99499 true)))

(declare-fun b!165006 () Bool)

(declare-fun e!99498 () Bool)

(assert (=> b!165006 (= e!99498 e!99499)))

(declare-fun b!165005 () Bool)

(declare-fun e!99497 () Bool)

(assert (=> b!165005 (= e!99497 e!99498)))

(assert (=> b!164997 e!99497))

(assert (= b!165006 b!165007))

(assert (= b!165005 b!165006))

(assert (= (and b!164997 ((_ is Cons!2823) rules!1920)) b!165005))

(assert (=> b!165007 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4564))))

(assert (=> b!165007 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4564))))

(assert (=> b!164997 true))

(declare-fun c!32940 () Bool)

(declare-fun call!7037 () BalanceConc!1656)

(declare-fun bm!7031 () Bool)

(declare-fun c!32939 () Bool)

(declare-fun call!7036 () Token!746)

(declare-fun call!7040 () Token!746)

(assert (=> bm!7031 (= call!7037 (charsOf!156 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036))))))

(declare-fun b!164994 () Bool)

(declare-fun e!99490 () BalanceConc!1656)

(assert (=> b!164994 (= e!99490 (BalanceConc!1657 Empty!824))))

(assert (=> b!164994 (= (print!118 thiss!17480 (singletonSeq!53 call!7036)) (printTailRec!81 thiss!17480 (singletonSeq!53 call!7036) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!50820 () Unit!2378)

(declare-fun Unit!2384 () Unit!2378)

(assert (=> b!164994 (= lt!50820 Unit!2384)))

(declare-fun lt!50824 () Unit!2378)

(declare-fun lt!50816 () BalanceConc!1656)

(declare-fun call!7038 () BalanceConc!1656)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 (LexerInterface!387 List!2833 List!2832 List!2832) Unit!2378)

(assert (=> b!164994 (= lt!50824 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 (list!1019 call!7038) (list!1019 lt!50816)))))

(assert (=> b!164994 false))

(declare-fun lt!50819 () Unit!2378)

(declare-fun Unit!2385 () Unit!2378)

(assert (=> b!164994 (= lt!50819 Unit!2385)))

(declare-fun b!164995 () Bool)

(declare-fun e!99496 () Bool)

(declare-datatypes ((tuple2!2696 0))(
  ( (tuple2!2697 (_1!1564 Token!746) (_2!1564 BalanceConc!1656)) )
))
(declare-datatypes ((Option!282 0))(
  ( (None!281) (Some!281 (v!13704 tuple2!2696)) )
))
(declare-fun lt!50826 () Option!282)

(assert (=> b!164995 (= e!99496 (not (= (_1!1564 (v!13704 lt!50826)) call!7040)))))

(declare-fun b!164996 () Bool)

(declare-fun e!99492 () BalanceConc!1656)

(assert (=> b!164996 (= e!99492 (BalanceConc!1657 Empty!824))))

(declare-fun e!99493 () BalanceConc!1656)

(assert (=> b!164997 (= e!99492 e!99493)))

(declare-fun lt!50827 () List!2834)

(declare-fun list!1023 (BalanceConc!1658) List!2834)

(assert (=> b!164997 (= lt!50827 (list!1023 lt!50710))))

(declare-fun lt!50814 () Unit!2378)

(declare-fun lemmaDropApply!122 (List!2834 Int) Unit!2378)

(assert (=> b!164997 (= lt!50814 (lemmaDropApply!122 lt!50827 0))))

(declare-fun head!596 (List!2834) Token!746)

(declare-fun drop!135 (List!2834 Int) List!2834)

(declare-fun apply!397 (List!2834 Int) Token!746)

(assert (=> b!164997 (= (head!596 (drop!135 lt!50827 0)) (apply!397 lt!50827 0))))

(declare-fun lt!50817 () Unit!2378)

(assert (=> b!164997 (= lt!50817 lt!50814)))

(declare-fun lt!50825 () List!2834)

(assert (=> b!164997 (= lt!50825 (list!1023 lt!50710))))

(declare-fun lt!50823 () Unit!2378)

(declare-fun lemmaDropTail!114 (List!2834 Int) Unit!2378)

(assert (=> b!164997 (= lt!50823 (lemmaDropTail!114 lt!50825 0))))

(declare-fun tail!336 (List!2834) List!2834)

(assert (=> b!164997 (= (tail!336 (drop!135 lt!50825 0)) (drop!135 lt!50825 (+ 0 1)))))

(declare-fun lt!50815 () Unit!2378)

(assert (=> b!164997 (= lt!50815 lt!50823)))

(declare-fun lt!50821 () Unit!2378)

(declare-fun apply!398 (BalanceConc!1658 Int) Token!746)

(assert (=> b!164997 (= lt!50821 (forallContained!68 (list!1023 lt!50710) lambda!4564 (apply!398 lt!50710 0)))))

(assert (=> b!164997 (= lt!50816 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!82 (LexerInterface!387 List!2833 BalanceConc!1656) Option!282)

(declare-fun ++!638 (BalanceConc!1656 BalanceConc!1656) BalanceConc!1656)

(assert (=> b!164997 (= lt!50826 (maxPrefixZipperSequence!82 thiss!17480 rules!1920 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))

(declare-fun res!74687 () Bool)

(assert (=> b!164997 (= res!74687 ((_ is Some!281) lt!50826))))

(declare-fun e!99494 () Bool)

(assert (=> b!164997 (=> (not res!74687) (not e!99494))))

(assert (=> b!164997 (= c!32939 e!99494)))

(declare-fun b!164998 () Bool)

(assert (=> b!164998 (= e!99494 (= (_1!1564 (v!13704 lt!50826)) (apply!398 lt!50710 0)))))

(declare-fun b!164999 () Bool)

(declare-fun call!7039 () BalanceConc!1656)

(assert (=> b!164999 (= e!99493 call!7039)))

(declare-fun b!165000 () Bool)

(declare-fun e!99491 () BalanceConc!1656)

(assert (=> b!165000 (= e!99491 (charsOf!156 call!7036))))

(declare-fun b!165001 () Bool)

(assert (=> b!165001 (= e!99490 (++!638 call!7039 lt!50816))))

(declare-fun bm!7032 () Bool)

(declare-fun c!32937 () Bool)

(assert (=> bm!7032 (= c!32937 c!32939)))

(assert (=> bm!7032 (= call!7039 (++!638 e!99491 (ite c!32939 lt!50816 call!7038)))))

(declare-fun bm!7033 () Bool)

(assert (=> bm!7033 (= call!7040 (apply!398 lt!50710 0))))

(declare-fun bm!7034 () Bool)

(assert (=> bm!7034 (= call!7038 call!7037)))

(declare-fun b!165003 () Bool)

(assert (=> b!165003 (= c!32940 e!99496)))

(declare-fun res!74685 () Bool)

(assert (=> b!165003 (=> (not res!74685) (not e!99496))))

(assert (=> b!165003 (= res!74685 ((_ is Some!281) lt!50826))))

(assert (=> b!165003 (= e!99493 e!99490)))

(declare-fun b!165002 () Bool)

(declare-fun e!99495 () Bool)

(declare-fun size!2362 (BalanceConc!1658) Int)

(assert (=> b!165002 (= e!99495 (<= 0 (size!2362 lt!50710)))))

(declare-fun lt!50818 () BalanceConc!1656)

(declare-fun dropList!82 (BalanceConc!1658 Int) List!2834)

(assert (=> d!40916 (= (list!1019 lt!50818) (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (dropList!82 lt!50710 0) separatorToken!170))))

(assert (=> d!40916 (= lt!50818 e!99492)))

(declare-fun c!32938 () Bool)

(assert (=> d!40916 (= c!32938 (>= 0 (size!2362 lt!50710)))))

(declare-fun lt!50822 () Unit!2378)

(declare-fun lemmaContentSubsetPreservesForall!26 (List!2834 List!2834 Int) Unit!2378)

(assert (=> d!40916 (= lt!50822 (lemmaContentSubsetPreservesForall!26 (list!1023 lt!50710) (dropList!82 lt!50710 0) lambda!4563))))

(assert (=> d!40916 e!99495))

(declare-fun res!74686 () Bool)

(assert (=> d!40916 (=> (not res!74686) (not e!99495))))

(assert (=> d!40916 (= res!74686 (>= 0 0))))

(assert (=> d!40916 (= (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0) lt!50818)))

(declare-fun bm!7035 () Bool)

(assert (=> bm!7035 (= call!7036 call!7040)))

(declare-fun b!165004 () Bool)

(assert (=> b!165004 (= e!99491 call!7037)))

(assert (= (and d!40916 res!74686) b!165002))

(assert (= (and d!40916 c!32938) b!164996))

(assert (= (and d!40916 (not c!32938)) b!164997))

(assert (= (and b!164997 res!74687) b!164998))

(assert (= (and b!164997 c!32939) b!164999))

(assert (= (and b!164997 (not c!32939)) b!165003))

(assert (= (and b!165003 res!74685) b!164995))

(assert (= (and b!165003 c!32940) b!165001))

(assert (= (and b!165003 (not c!32940)) b!164994))

(assert (= (or b!165001 b!164994) bm!7035))

(assert (= (or b!165001 b!164994) bm!7034))

(assert (= (or b!164999 b!164995 bm!7035) bm!7033))

(assert (= (or b!164999 bm!7034) bm!7031))

(assert (= (or b!164999 b!165001) bm!7032))

(assert (= (and bm!7032 c!32937) b!165004))

(assert (= (and bm!7032 (not c!32937)) b!165000))

(declare-fun m!157503 () Bool)

(assert (=> bm!7031 m!157503))

(declare-fun m!157505 () Bool)

(assert (=> bm!7032 m!157505))

(declare-fun m!157507 () Bool)

(assert (=> bm!7033 m!157507))

(declare-fun m!157509 () Bool)

(assert (=> b!165002 m!157509))

(declare-fun m!157511 () Bool)

(assert (=> b!165001 m!157511))

(declare-fun m!157513 () Bool)

(assert (=> d!40916 m!157513))

(declare-fun m!157515 () Bool)

(assert (=> d!40916 m!157515))

(assert (=> d!40916 m!157513))

(declare-fun m!157517 () Bool)

(assert (=> d!40916 m!157517))

(declare-fun m!157519 () Bool)

(assert (=> d!40916 m!157519))

(assert (=> d!40916 m!157519))

(assert (=> d!40916 m!157513))

(declare-fun m!157521 () Bool)

(assert (=> d!40916 m!157521))

(assert (=> d!40916 m!157509))

(declare-fun m!157523 () Bool)

(assert (=> b!164994 m!157523))

(declare-fun m!157525 () Bool)

(assert (=> b!164994 m!157525))

(declare-fun m!157527 () Bool)

(assert (=> b!164994 m!157527))

(assert (=> b!164994 m!157525))

(declare-fun m!157529 () Bool)

(assert (=> b!164994 m!157529))

(declare-fun m!157531 () Bool)

(assert (=> b!164994 m!157531))

(assert (=> b!164994 m!157529))

(assert (=> b!164994 m!157529))

(declare-fun m!157533 () Bool)

(assert (=> b!164994 m!157533))

(assert (=> b!164994 m!157523))

(assert (=> b!164998 m!157507))

(declare-fun m!157535 () Bool)

(assert (=> b!164997 m!157535))

(declare-fun m!157537 () Bool)

(assert (=> b!164997 m!157537))

(assert (=> b!164997 m!157535))

(declare-fun m!157539 () Bool)

(assert (=> b!164997 m!157539))

(assert (=> b!164997 m!157519))

(declare-fun m!157541 () Bool)

(assert (=> b!164997 m!157541))

(declare-fun m!157543 () Bool)

(assert (=> b!164997 m!157543))

(declare-fun m!157545 () Bool)

(assert (=> b!164997 m!157545))

(declare-fun m!157547 () Bool)

(assert (=> b!164997 m!157547))

(declare-fun m!157549 () Bool)

(assert (=> b!164997 m!157549))

(declare-fun m!157551 () Bool)

(assert (=> b!164997 m!157551))

(declare-fun m!157553 () Bool)

(assert (=> b!164997 m!157553))

(assert (=> b!164997 m!157549))

(assert (=> b!164997 m!157541))

(declare-fun m!157555 () Bool)

(assert (=> b!164997 m!157555))

(assert (=> b!164997 m!157519))

(assert (=> b!164997 m!157507))

(declare-fun m!157557 () Bool)

(assert (=> b!164997 m!157557))

(declare-fun m!157559 () Bool)

(assert (=> b!164997 m!157559))

(assert (=> b!164997 m!157507))

(assert (=> b!164997 m!157507))

(assert (=> b!164997 m!157553))

(declare-fun m!157561 () Bool)

(assert (=> b!165000 m!157561))

(assert (=> b!164835 d!40916))

(declare-fun bs!15780 () Bool)

(declare-fun b!165075 () Bool)

(assert (= bs!15780 (and b!165075 b!164839)))

(declare-fun lambda!4573 () Int)

(assert (=> bs!15780 (not (= lambda!4573 lambda!4551))))

(declare-fun bs!15781 () Bool)

(assert (= bs!15781 (and b!165075 b!164821)))

(assert (=> bs!15781 (= lambda!4573 lambda!4552)))

(declare-fun bs!15782 () Bool)

(assert (= bs!15782 (and b!165075 d!40916)))

(assert (=> bs!15782 (not (= lambda!4573 lambda!4563))))

(declare-fun bs!15783 () Bool)

(assert (= bs!15783 (and b!165075 b!164997)))

(assert (=> bs!15783 (= lambda!4573 lambda!4564)))

(declare-fun b!165078 () Bool)

(declare-fun e!99543 () Bool)

(assert (=> b!165078 (= e!99543 true)))

(declare-fun b!165077 () Bool)

(declare-fun e!99542 () Bool)

(assert (=> b!165077 (= e!99542 e!99543)))

(declare-fun b!165076 () Bool)

(declare-fun e!99541 () Bool)

(assert (=> b!165076 (= e!99541 e!99542)))

(assert (=> b!165075 e!99541))

(assert (= b!165077 b!165078))

(assert (= b!165076 b!165077))

(assert (= (and b!165075 ((_ is Cons!2823) rules!1920)) b!165076))

(assert (=> b!165078 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4573))))

(assert (=> b!165078 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4573))))

(assert (=> b!165075 true))

(declare-fun b!165068 () Bool)

(declare-fun c!32964 () Bool)

(declare-datatypes ((tuple2!2698 0))(
  ( (tuple2!2699 (_1!1565 Token!746) (_2!1565 List!2832)) )
))
(declare-datatypes ((Option!283 0))(
  ( (None!282) (Some!282 (v!13705 tuple2!2698)) )
))
(declare-fun lt!50869 () Option!283)

(assert (=> b!165068 (= c!32964 (and ((_ is Some!282) lt!50869) (not (= (_1!1565 (v!13705 lt!50869)) (h!8221 tokens!465)))))))

(declare-fun e!99537 () List!2832)

(declare-fun e!99540 () List!2832)

(assert (=> b!165068 (= e!99537 e!99540)))

(declare-fun b!165069 () Bool)

(declare-fun e!99539 () BalanceConc!1656)

(declare-fun call!7066 () BalanceConc!1656)

(assert (=> b!165069 (= e!99539 call!7066)))

(declare-fun b!165070 () Bool)

(assert (=> b!165070 (= e!99539 (charsOf!156 separatorToken!170))))

(declare-fun call!7068 () List!2832)

(declare-fun c!32963 () Bool)

(declare-fun call!7067 () List!2832)

(declare-fun bm!7061 () Bool)

(declare-fun lt!50866 () List!2832)

(declare-fun call!7070 () List!2832)

(assert (=> bm!7061 (= call!7070 (++!636 call!7068 (ite c!32963 lt!50866 call!7067)))))

(declare-fun b!165071 () Bool)

(declare-fun e!99538 () List!2832)

(assert (=> b!165071 (= e!99538 Nil!2822)))

(declare-fun b!165072 () Bool)

(assert (=> b!165072 (= e!99540 Nil!2822)))

(assert (=> b!165072 (= (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))) (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!50865 () Unit!2378)

(declare-fun Unit!2386 () Unit!2378)

(assert (=> b!165072 (= lt!50865 Unit!2386)))

(declare-fun lt!50867 () Unit!2378)

(assert (=> b!165072 (= lt!50867 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 call!7067 lt!50866))))

(assert (=> b!165072 false))

(declare-fun lt!50864 () Unit!2378)

(declare-fun Unit!2387 () Unit!2378)

(assert (=> b!165072 (= lt!50864 Unit!2387)))

(declare-fun b!165073 () Bool)

(assert (=> b!165073 (= e!99537 call!7070)))

(declare-fun b!165074 () Bool)

(assert (=> b!165074 (= e!99540 (++!636 call!7070 lt!50866))))

(declare-fun bm!7062 () Bool)

(declare-fun call!7069 () BalanceConc!1656)

(assert (=> bm!7062 (= call!7069 (charsOf!156 (h!8221 tokens!465)))))

(declare-fun bm!7064 () Bool)

(assert (=> bm!7064 (= call!7067 (list!1019 e!99539))))

(declare-fun c!32961 () Bool)

(assert (=> bm!7064 (= c!32961 c!32964)))

(assert (=> b!165075 (= e!99538 e!99537)))

(declare-fun lt!50868 () Unit!2378)

(assert (=> b!165075 (= lt!50868 (forallContained!68 tokens!465 lambda!4573 (h!8221 tokens!465)))))

(assert (=> b!165075 (= lt!50866 (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (t!26456 tokens!465) separatorToken!170))))

(declare-fun maxPrefix!123 (LexerInterface!387 List!2833 List!2832) Option!283)

(assert (=> b!165075 (= lt!50869 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866)))))

(assert (=> b!165075 (= c!32963 (and ((_ is Some!282) lt!50869) (= (_1!1565 (v!13705 lt!50869)) (h!8221 tokens!465))))))

(declare-fun bm!7065 () Bool)

(assert (=> bm!7065 (= call!7066 call!7069)))

(declare-fun d!40964 () Bool)

(declare-fun c!32962 () Bool)

(assert (=> d!40964 (= c!32962 ((_ is Cons!2824) tokens!465))))

(assert (=> d!40964 (= (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!99538)))

(declare-fun bm!7063 () Bool)

(assert (=> bm!7063 (= call!7068 (list!1019 (ite c!32963 call!7069 call!7066)))))

(assert (= (and d!40964 c!32962) b!165075))

(assert (= (and d!40964 (not c!32962)) b!165071))

(assert (= (and b!165075 c!32963) b!165073))

(assert (= (and b!165075 (not c!32963)) b!165068))

(assert (= (and b!165068 c!32964) b!165074))

(assert (= (and b!165068 (not c!32964)) b!165072))

(assert (= (or b!165074 b!165072) bm!7065))

(assert (= (or b!165074 b!165072) bm!7064))

(assert (= (and bm!7064 c!32961) b!165070))

(assert (= (and bm!7064 (not c!32961)) b!165069))

(assert (= (or b!165073 bm!7065) bm!7062))

(assert (= (or b!165073 b!165074) bm!7063))

(assert (= (or b!165073 b!165074) bm!7061))

(assert (=> b!165072 m!157259))

(assert (=> b!165072 m!157259))

(declare-fun m!157621 () Bool)

(assert (=> b!165072 m!157621))

(assert (=> b!165072 m!157259))

(declare-fun m!157623 () Bool)

(assert (=> b!165072 m!157623))

(declare-fun m!157625 () Bool)

(assert (=> b!165072 m!157625))

(assert (=> bm!7062 m!157293))

(declare-fun m!157627 () Bool)

(assert (=> b!165074 m!157627))

(declare-fun m!157629 () Bool)

(assert (=> bm!7061 m!157629))

(assert (=> b!165070 m!157281))

(declare-fun m!157631 () Bool)

(assert (=> bm!7063 m!157631))

(declare-fun m!157633 () Bool)

(assert (=> bm!7064 m!157633))

(declare-fun m!157635 () Bool)

(assert (=> b!165075 m!157635))

(assert (=> b!165075 m!157293))

(assert (=> b!165075 m!157293))

(assert (=> b!165075 m!157295))

(assert (=> b!165075 m!157279))

(declare-fun m!157637 () Bool)

(assert (=> b!165075 m!157637))

(declare-fun m!157639 () Bool)

(assert (=> b!165075 m!157639))

(assert (=> b!165075 m!157295))

(assert (=> b!165075 m!157637))

(assert (=> b!164835 d!40964))

(declare-fun d!40984 () Bool)

(declare-fun res!74709 () Bool)

(declare-fun e!99552 () Bool)

(assert (=> d!40984 (=> res!74709 e!99552)))

(assert (=> d!40984 (= res!74709 (not ((_ is Cons!2823) rules!1920)))))

(assert (=> d!40984 (= (sepAndNonSepRulesDisjointChars!90 rules!1920 rules!1920) e!99552)))

(declare-fun b!165089 () Bool)

(declare-fun e!99553 () Bool)

(assert (=> b!165089 (= e!99552 e!99553)))

(declare-fun res!74710 () Bool)

(assert (=> b!165089 (=> (not res!74710) (not e!99553))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!32 (Rule!802 List!2833) Bool)

(assert (=> b!165089 (= res!74710 (ruleDisjointCharsFromAllFromOtherType!32 (h!8220 rules!1920) rules!1920))))

(declare-fun b!165090 () Bool)

(assert (=> b!165090 (= e!99553 (sepAndNonSepRulesDisjointChars!90 rules!1920 (t!26455 rules!1920)))))

(assert (= (and d!40984 (not res!74709)) b!165089))

(assert (= (and b!165089 res!74710) b!165090))

(declare-fun m!157641 () Bool)

(assert (=> b!165089 m!157641))

(declare-fun m!157643 () Bool)

(assert (=> b!165090 m!157643))

(assert (=> b!164824 d!40984))

(declare-fun d!40986 () Bool)

(declare-fun lt!50893 () BalanceConc!1656)

(assert (=> d!40986 (= (list!1019 lt!50893) (printList!71 thiss!17480 (list!1023 lt!50721)))))

(assert (=> d!40986 (= lt!50893 (printTailRec!81 thiss!17480 lt!50721 0 (BalanceConc!1657 Empty!824)))))

(assert (=> d!40986 (= (print!118 thiss!17480 lt!50721) lt!50893)))

(declare-fun bs!15784 () Bool)

(assert (= bs!15784 d!40986))

(declare-fun m!157681 () Bool)

(assert (=> bs!15784 m!157681))

(declare-fun m!157683 () Bool)

(assert (=> bs!15784 m!157683))

(assert (=> bs!15784 m!157683))

(declare-fun m!157685 () Bool)

(assert (=> bs!15784 m!157685))

(assert (=> bs!15784 m!157251))

(assert (=> b!164825 d!40986))

(declare-fun d!40990 () Bool)

(declare-fun lt!50921 () BalanceConc!1656)

(declare-fun printListTailRec!50 (LexerInterface!387 List!2834 List!2832) List!2832)

(assert (=> d!40990 (= (list!1019 lt!50921) (printListTailRec!50 thiss!17480 (dropList!82 lt!50721 0) (list!1019 (BalanceConc!1657 Empty!824))))))

(declare-fun e!99568 () BalanceConc!1656)

(assert (=> d!40990 (= lt!50921 e!99568)))

(declare-fun c!32973 () Bool)

(assert (=> d!40990 (= c!32973 (>= 0 (size!2362 lt!50721)))))

(declare-fun e!99569 () Bool)

(assert (=> d!40990 e!99569))

(declare-fun res!74720 () Bool)

(assert (=> d!40990 (=> (not res!74720) (not e!99569))))

(assert (=> d!40990 (= res!74720 (>= 0 0))))

(assert (=> d!40990 (= (printTailRec!81 thiss!17480 lt!50721 0 (BalanceConc!1657 Empty!824)) lt!50921)))

(declare-fun b!165112 () Bool)

(assert (=> b!165112 (= e!99569 (<= 0 (size!2362 lt!50721)))))

(declare-fun b!165113 () Bool)

(assert (=> b!165113 (= e!99568 (BalanceConc!1657 Empty!824))))

(declare-fun b!165114 () Bool)

(assert (=> b!165114 (= e!99568 (printTailRec!81 thiss!17480 lt!50721 (+ 0 1) (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 lt!50721 0)))))))

(declare-fun lt!50922 () List!2834)

(assert (=> b!165114 (= lt!50922 (list!1023 lt!50721))))

(declare-fun lt!50918 () Unit!2378)

(assert (=> b!165114 (= lt!50918 (lemmaDropApply!122 lt!50922 0))))

(assert (=> b!165114 (= (head!596 (drop!135 lt!50922 0)) (apply!397 lt!50922 0))))

(declare-fun lt!50919 () Unit!2378)

(assert (=> b!165114 (= lt!50919 lt!50918)))

(declare-fun lt!50916 () List!2834)

(assert (=> b!165114 (= lt!50916 (list!1023 lt!50721))))

(declare-fun lt!50920 () Unit!2378)

(assert (=> b!165114 (= lt!50920 (lemmaDropTail!114 lt!50916 0))))

(assert (=> b!165114 (= (tail!336 (drop!135 lt!50916 0)) (drop!135 lt!50916 (+ 0 1)))))

(declare-fun lt!50917 () Unit!2378)

(assert (=> b!165114 (= lt!50917 lt!50920)))

(assert (= (and d!40990 res!74720) b!165112))

(assert (= (and d!40990 c!32973) b!165113))

(assert (= (and d!40990 (not c!32973)) b!165114))

(declare-fun m!157725 () Bool)

(assert (=> d!40990 m!157725))

(declare-fun m!157727 () Bool)

(assert (=> d!40990 m!157727))

(declare-fun m!157729 () Bool)

(assert (=> d!40990 m!157729))

(declare-fun m!157731 () Bool)

(assert (=> d!40990 m!157731))

(assert (=> d!40990 m!157727))

(declare-fun m!157733 () Bool)

(assert (=> d!40990 m!157733))

(assert (=> d!40990 m!157731))

(assert (=> b!165112 m!157729))

(declare-fun m!157735 () Bool)

(assert (=> b!165114 m!157735))

(declare-fun m!157737 () Bool)

(assert (=> b!165114 m!157737))

(declare-fun m!157739 () Bool)

(assert (=> b!165114 m!157739))

(declare-fun m!157741 () Bool)

(assert (=> b!165114 m!157741))

(declare-fun m!157743 () Bool)

(assert (=> b!165114 m!157743))

(declare-fun m!157745 () Bool)

(assert (=> b!165114 m!157745))

(declare-fun m!157747 () Bool)

(assert (=> b!165114 m!157747))

(declare-fun m!157749 () Bool)

(assert (=> b!165114 m!157749))

(declare-fun m!157751 () Bool)

(assert (=> b!165114 m!157751))

(assert (=> b!165114 m!157745))

(assert (=> b!165114 m!157749))

(assert (=> b!165114 m!157737))

(declare-fun m!157753 () Bool)

(assert (=> b!165114 m!157753))

(assert (=> b!165114 m!157683))

(declare-fun m!157755 () Bool)

(assert (=> b!165114 m!157755))

(assert (=> b!165114 m!157743))

(assert (=> b!165114 m!157755))

(declare-fun m!157757 () Bool)

(assert (=> b!165114 m!157757))

(assert (=> b!164825 d!40990))

(declare-fun d!41002 () Bool)

(assert (=> d!41002 (= (list!1019 lt!50717) (list!1022 (c!32900 lt!50717)))))

(declare-fun bs!15787 () Bool)

(assert (= bs!15787 d!41002))

(declare-fun m!157759 () Bool)

(assert (=> bs!15787 m!157759))

(assert (=> b!164825 d!41002))

(declare-fun d!41004 () Bool)

(declare-fun e!99572 () Bool)

(assert (=> d!41004 e!99572))

(declare-fun res!74723 () Bool)

(assert (=> d!41004 (=> (not res!74723) (not e!99572))))

(declare-fun lt!50925 () BalanceConc!1658)

(assert (=> d!41004 (= res!74723 (= (list!1023 lt!50925) (Cons!2824 (h!8221 tokens!465) Nil!2824)))))

(declare-fun singleton!31 (Token!746) BalanceConc!1658)

(assert (=> d!41004 (= lt!50925 (singleton!31 (h!8221 tokens!465)))))

(assert (=> d!41004 (= (singletonSeq!53 (h!8221 tokens!465)) lt!50925)))

(declare-fun b!165117 () Bool)

(declare-fun isBalanced!230 (Conc!825) Bool)

(assert (=> b!165117 (= e!99572 (isBalanced!230 (c!32902 lt!50925)))))

(assert (= (and d!41004 res!74723) b!165117))

(declare-fun m!157761 () Bool)

(assert (=> d!41004 m!157761))

(declare-fun m!157763 () Bool)

(assert (=> d!41004 m!157763))

(declare-fun m!157765 () Bool)

(assert (=> b!165117 m!157765))

(assert (=> b!164825 d!41004))

(declare-fun d!41006 () Bool)

(declare-fun c!32976 () Bool)

(assert (=> d!41006 (= c!32976 ((_ is Cons!2824) (Cons!2824 (h!8221 tokens!465) Nil!2824)))))

(declare-fun e!99575 () List!2832)

(assert (=> d!41006 (= (printList!71 thiss!17480 (Cons!2824 (h!8221 tokens!465) Nil!2824)) e!99575)))

(declare-fun b!165122 () Bool)

(assert (=> b!165122 (= e!99575 (++!636 (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))) (printList!71 thiss!17480 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))))

(declare-fun b!165123 () Bool)

(assert (=> b!165123 (= e!99575 Nil!2822)))

(assert (= (and d!41006 c!32976) b!165122))

(assert (= (and d!41006 (not c!32976)) b!165123))

(declare-fun m!157767 () Bool)

(assert (=> b!165122 m!157767))

(assert (=> b!165122 m!157767))

(declare-fun m!157769 () Bool)

(assert (=> b!165122 m!157769))

(declare-fun m!157771 () Bool)

(assert (=> b!165122 m!157771))

(assert (=> b!165122 m!157769))

(assert (=> b!165122 m!157771))

(declare-fun m!157773 () Bool)

(assert (=> b!165122 m!157773))

(assert (=> b!164825 d!41006))

(declare-fun d!41008 () Bool)

(declare-fun lt!50928 () Bool)

(declare-fun isEmpty!1161 (List!2834) Bool)

(assert (=> d!41008 (= lt!50928 (isEmpty!1161 (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))))))

(declare-fun isEmpty!1162 (Conc!825) Bool)

(assert (=> d!41008 (= lt!50928 (isEmpty!1162 (c!32902 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))))))

(assert (=> d!41008 (= (isEmpty!1155 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724)))) lt!50928)))

(declare-fun bs!15788 () Bool)

(assert (= bs!15788 d!41008))

(declare-fun m!157775 () Bool)

(assert (=> bs!15788 m!157775))

(assert (=> bs!15788 m!157775))

(declare-fun m!157777 () Bool)

(assert (=> bs!15788 m!157777))

(declare-fun m!157779 () Bool)

(assert (=> bs!15788 m!157779))

(assert (=> b!164823 d!41008))

(declare-fun lt!50937 () tuple2!2690)

(declare-fun e!99590 () Bool)

(declare-fun b!165140 () Bool)

(declare-datatypes ((tuple2!2702 0))(
  ( (tuple2!2703 (_1!1567 List!2834) (_2!1567 List!2832)) )
))
(declare-fun lexList!107 (LexerInterface!387 List!2833 List!2832) tuple2!2702)

(assert (=> b!165140 (= e!99590 (= (list!1019 (_2!1561 lt!50937)) (_2!1567 (lexList!107 thiss!17480 rules!1920 (list!1019 (seqFromList!380 lt!50724))))))))

(declare-fun b!165141 () Bool)

(declare-fun e!99588 () Bool)

(declare-fun e!99589 () Bool)

(assert (=> b!165141 (= e!99588 e!99589)))

(declare-fun res!74735 () Bool)

(declare-fun size!2364 (BalanceConc!1656) Int)

(assert (=> b!165141 (= res!74735 (< (size!2364 (_2!1561 lt!50937)) (size!2364 (seqFromList!380 lt!50724))))))

(assert (=> b!165141 (=> (not res!74735) (not e!99589))))

(declare-fun b!165142 () Bool)

(declare-fun res!74734 () Bool)

(assert (=> b!165142 (=> (not res!74734) (not e!99590))))

(assert (=> b!165142 (= res!74734 (= (list!1023 (_1!1561 lt!50937)) (_1!1567 (lexList!107 thiss!17480 rules!1920 (list!1019 (seqFromList!380 lt!50724))))))))

(declare-fun b!165143 () Bool)

(assert (=> b!165143 (= e!99589 (not (isEmpty!1155 (_1!1561 lt!50937))))))

(declare-fun d!41010 () Bool)

(assert (=> d!41010 e!99590))

(declare-fun res!74733 () Bool)

(assert (=> d!41010 (=> (not res!74733) (not e!99590))))

(assert (=> d!41010 (= res!74733 e!99588)))

(declare-fun c!32979 () Bool)

(assert (=> d!41010 (= c!32979 (> (size!2362 (_1!1561 lt!50937)) 0))))

(declare-fun lexTailRecV2!94 (LexerInterface!387 List!2833 BalanceConc!1656 BalanceConc!1656 BalanceConc!1656 BalanceConc!1658) tuple2!2690)

(assert (=> d!41010 (= lt!50937 (lexTailRecV2!94 thiss!17480 rules!1920 (seqFromList!380 lt!50724) (BalanceConc!1657 Empty!824) (seqFromList!380 lt!50724) (BalanceConc!1659 Empty!825)))))

(assert (=> d!41010 (= (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724)) lt!50937)))

(declare-fun b!165144 () Bool)

(assert (=> b!165144 (= e!99588 (= (_2!1561 lt!50937) (seqFromList!380 lt!50724)))))

(assert (= (and d!41010 c!32979) b!165141))

(assert (= (and d!41010 (not c!32979)) b!165144))

(assert (= (and b!165141 res!74735) b!165143))

(assert (= (and d!41010 res!74733) b!165142))

(assert (= (and b!165142 res!74734) b!165140))

(declare-fun m!157797 () Bool)

(assert (=> b!165140 m!157797))

(assert (=> b!165140 m!157231))

(declare-fun m!157799 () Bool)

(assert (=> b!165140 m!157799))

(assert (=> b!165140 m!157799))

(declare-fun m!157801 () Bool)

(assert (=> b!165140 m!157801))

(declare-fun m!157803 () Bool)

(assert (=> b!165141 m!157803))

(assert (=> b!165141 m!157231))

(declare-fun m!157805 () Bool)

(assert (=> b!165141 m!157805))

(declare-fun m!157807 () Bool)

(assert (=> b!165142 m!157807))

(assert (=> b!165142 m!157231))

(assert (=> b!165142 m!157799))

(assert (=> b!165142 m!157799))

(assert (=> b!165142 m!157801))

(declare-fun m!157809 () Bool)

(assert (=> b!165143 m!157809))

(declare-fun m!157811 () Bool)

(assert (=> d!41010 m!157811))

(assert (=> d!41010 m!157231))

(assert (=> d!41010 m!157231))

(declare-fun m!157813 () Bool)

(assert (=> d!41010 m!157813))

(assert (=> b!164823 d!41010))

(declare-fun d!41018 () Bool)

(declare-fun fromListB!152 (List!2832) BalanceConc!1656)

(assert (=> d!41018 (= (seqFromList!380 lt!50724) (fromListB!152 lt!50724))))

(declare-fun bs!15796 () Bool)

(assert (= bs!15796 d!41018))

(declare-fun m!157815 () Bool)

(assert (=> bs!15796 m!157815))

(assert (=> b!164823 d!41018))

(declare-fun b!165155 () Bool)

(declare-fun e!99597 () Bool)

(declare-fun inv!15 (TokenValue!523) Bool)

(assert (=> b!165155 (= e!99597 (inv!15 (value!18594 (h!8221 tokens!465))))))

(declare-fun b!165156 () Bool)

(declare-fun e!99598 () Bool)

(declare-fun inv!17 (TokenValue!523) Bool)

(assert (=> b!165156 (= e!99598 (inv!17 (value!18594 (h!8221 tokens!465))))))

(declare-fun d!41020 () Bool)

(declare-fun c!32984 () Bool)

(assert (=> d!41020 (= c!32984 ((_ is IntegerValue!1569) (value!18594 (h!8221 tokens!465))))))

(declare-fun e!99599 () Bool)

(assert (=> d!41020 (= (inv!21 (value!18594 (h!8221 tokens!465))) e!99599)))

(declare-fun b!165157 () Bool)

(declare-fun inv!16 (TokenValue!523) Bool)

(assert (=> b!165157 (= e!99599 (inv!16 (value!18594 (h!8221 tokens!465))))))

(declare-fun b!165158 () Bool)

(assert (=> b!165158 (= e!99599 e!99598)))

(declare-fun c!32985 () Bool)

(assert (=> b!165158 (= c!32985 ((_ is IntegerValue!1570) (value!18594 (h!8221 tokens!465))))))

(declare-fun b!165159 () Bool)

(declare-fun res!74738 () Bool)

(assert (=> b!165159 (=> res!74738 e!99597)))

(assert (=> b!165159 (= res!74738 (not ((_ is IntegerValue!1571) (value!18594 (h!8221 tokens!465)))))))

(assert (=> b!165159 (= e!99598 e!99597)))

(assert (= (and d!41020 c!32984) b!165157))

(assert (= (and d!41020 (not c!32984)) b!165158))

(assert (= (and b!165158 c!32985) b!165156))

(assert (= (and b!165158 (not c!32985)) b!165159))

(assert (= (and b!165159 (not res!74738)) b!165155))

(declare-fun m!157817 () Bool)

(assert (=> b!165155 m!157817))

(declare-fun m!157819 () Bool)

(assert (=> b!165156 m!157819))

(declare-fun m!157821 () Bool)

(assert (=> b!165157 m!157821))

(assert (=> b!164832 d!41020))

(declare-fun d!41022 () Bool)

(declare-fun lt!50966 () Bool)

(declare-fun e!99655 () Bool)

(assert (=> d!41022 (= lt!50966 e!99655)))

(declare-fun res!74760 () Bool)

(assert (=> d!41022 (=> (not res!74760) (not e!99655))))

(assert (=> d!41022 (= res!74760 (= (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)))))) (list!1023 (singletonSeq!53 (h!8221 tokens!465)))))))

(declare-fun e!99656 () Bool)

(assert (=> d!41022 (= lt!50966 e!99656)))

(declare-fun res!74761 () Bool)

(assert (=> d!41022 (=> (not res!74761) (not e!99656))))

(declare-fun lt!50967 () tuple2!2690)

(assert (=> d!41022 (= res!74761 (= (size!2362 (_1!1561 lt!50967)) 1))))

(assert (=> d!41022 (= lt!50967 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)))))))

(assert (=> d!41022 (not (isEmpty!1156 rules!1920))))

(assert (=> d!41022 (= (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (h!8221 tokens!465)) lt!50966)))

(declare-fun b!165242 () Bool)

(declare-fun res!74759 () Bool)

(assert (=> b!165242 (=> (not res!74759) (not e!99656))))

(assert (=> b!165242 (= res!74759 (= (apply!398 (_1!1561 lt!50967) 0) (h!8221 tokens!465)))))

(declare-fun b!165243 () Bool)

(declare-fun isEmpty!1163 (BalanceConc!1656) Bool)

(assert (=> b!165243 (= e!99656 (isEmpty!1163 (_2!1561 lt!50967)))))

(declare-fun b!165244 () Bool)

(assert (=> b!165244 (= e!99655 (isEmpty!1163 (_2!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)))))))))

(assert (= (and d!41022 res!74761) b!165242))

(assert (= (and b!165242 res!74759) b!165243))

(assert (= (and d!41022 res!74760) b!165244))

(assert (=> d!41022 m!157259))

(assert (=> d!41022 m!157621))

(assert (=> d!41022 m!157621))

(declare-fun m!157935 () Bool)

(assert (=> d!41022 m!157935))

(assert (=> d!41022 m!157245))

(declare-fun m!157937 () Bool)

(assert (=> d!41022 m!157937))

(assert (=> d!41022 m!157259))

(declare-fun m!157939 () Bool)

(assert (=> d!41022 m!157939))

(declare-fun m!157941 () Bool)

(assert (=> d!41022 m!157941))

(assert (=> d!41022 m!157259))

(declare-fun m!157943 () Bool)

(assert (=> b!165242 m!157943))

(declare-fun m!157945 () Bool)

(assert (=> b!165243 m!157945))

(assert (=> b!165244 m!157259))

(assert (=> b!165244 m!157259))

(assert (=> b!165244 m!157621))

(assert (=> b!165244 m!157621))

(assert (=> b!165244 m!157935))

(declare-fun m!157947 () Bool)

(assert (=> b!165244 m!157947))

(assert (=> b!164833 d!41022))

(declare-fun d!41034 () Bool)

(declare-fun res!74766 () Bool)

(declare-fun e!99678 () Bool)

(assert (=> d!41034 (=> (not res!74766) (not e!99678))))

(declare-fun isEmpty!1164 (List!2832) Bool)

(assert (=> d!41034 (= res!74766 (not (isEmpty!1164 (originalCharacters!544 (h!8221 tokens!465)))))))

(assert (=> d!41034 (= (inv!3644 (h!8221 tokens!465)) e!99678)))

(declare-fun b!165273 () Bool)

(declare-fun res!74767 () Bool)

(assert (=> b!165273 (=> (not res!74767) (not e!99678))))

(declare-fun dynLambda!1024 (Int TokenValue!523) BalanceConc!1656)

(assert (=> b!165273 (= res!74767 (= (originalCharacters!544 (h!8221 tokens!465)) (list!1019 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))))))

(declare-fun b!165274 () Bool)

(declare-fun size!2365 (List!2832) Int)

(assert (=> b!165274 (= e!99678 (= (size!2359 (h!8221 tokens!465)) (size!2365 (originalCharacters!544 (h!8221 tokens!465)))))))

(assert (= (and d!41034 res!74766) b!165273))

(assert (= (and b!165273 res!74767) b!165274))

(declare-fun b_lambda!3571 () Bool)

(assert (=> (not b_lambda!3571) (not b!165273)))

(declare-fun t!26498 () Bool)

(declare-fun tb!6293 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) t!26498) tb!6293))

(declare-fun b!165279 () Bool)

(declare-fun e!99681 () Bool)

(declare-fun tp!82862 () Bool)

(declare-fun inv!3648 (Conc!824) Bool)

(assert (=> b!165279 (= e!99681 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))) tp!82862))))

(declare-fun result!8922 () Bool)

(declare-fun inv!3649 (BalanceConc!1656) Bool)

(assert (=> tb!6293 (= result!8922 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))) e!99681))))

(assert (= tb!6293 b!165279))

(declare-fun m!157953 () Bool)

(assert (=> b!165279 m!157953))

(declare-fun m!157955 () Bool)

(assert (=> tb!6293 m!157955))

(assert (=> b!165273 t!26498))

(declare-fun b_and!10541 () Bool)

(assert (= b_and!10499 (and (=> t!26498 result!8922) b_and!10541)))

(declare-fun tb!6295 () Bool)

(declare-fun t!26500 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) t!26500) tb!6295))

(declare-fun result!8926 () Bool)

(assert (= result!8926 result!8922))

(assert (=> b!165273 t!26500))

(declare-fun b_and!10543 () Bool)

(assert (= b_and!10503 (and (=> t!26500 result!8926) b_and!10543)))

(declare-fun t!26502 () Bool)

(declare-fun tb!6297 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) t!26502) tb!6297))

(declare-fun result!8928 () Bool)

(assert (= result!8928 result!8922))

(assert (=> b!165273 t!26502))

(declare-fun b_and!10545 () Bool)

(assert (= b_and!10507 (and (=> t!26502 result!8928) b_and!10545)))

(declare-fun m!157957 () Bool)

(assert (=> d!41034 m!157957))

(declare-fun m!157959 () Bool)

(assert (=> b!165273 m!157959))

(assert (=> b!165273 m!157959))

(declare-fun m!157961 () Bool)

(assert (=> b!165273 m!157961))

(declare-fun m!157963 () Bool)

(assert (=> b!165274 m!157963))

(assert (=> b!164822 d!41034))

(declare-fun b!165280 () Bool)

(declare-fun e!99682 () Bool)

(assert (=> b!165280 (= e!99682 (inv!15 (value!18594 separatorToken!170)))))

(declare-fun b!165281 () Bool)

(declare-fun e!99683 () Bool)

(assert (=> b!165281 (= e!99683 (inv!17 (value!18594 separatorToken!170)))))

(declare-fun d!41040 () Bool)

(declare-fun c!32998 () Bool)

(assert (=> d!41040 (= c!32998 ((_ is IntegerValue!1569) (value!18594 separatorToken!170)))))

(declare-fun e!99684 () Bool)

(assert (=> d!41040 (= (inv!21 (value!18594 separatorToken!170)) e!99684)))

(declare-fun b!165282 () Bool)

(assert (=> b!165282 (= e!99684 (inv!16 (value!18594 separatorToken!170)))))

(declare-fun b!165283 () Bool)

(assert (=> b!165283 (= e!99684 e!99683)))

(declare-fun c!32999 () Bool)

(assert (=> b!165283 (= c!32999 ((_ is IntegerValue!1570) (value!18594 separatorToken!170)))))

(declare-fun b!165284 () Bool)

(declare-fun res!74768 () Bool)

(assert (=> b!165284 (=> res!74768 e!99682)))

(assert (=> b!165284 (= res!74768 (not ((_ is IntegerValue!1571) (value!18594 separatorToken!170))))))

(assert (=> b!165284 (= e!99683 e!99682)))

(assert (= (and d!41040 c!32998) b!165282))

(assert (= (and d!41040 (not c!32998)) b!165283))

(assert (= (and b!165283 c!32999) b!165281))

(assert (= (and b!165283 (not c!32999)) b!165284))

(assert (= (and b!165284 (not res!74768)) b!165280))

(declare-fun m!157965 () Bool)

(assert (=> b!165280 m!157965))

(declare-fun m!157967 () Bool)

(assert (=> b!165281 m!157967))

(declare-fun m!157969 () Bool)

(assert (=> b!165282 m!157969))

(assert (=> b!164820 d!41040))

(declare-fun d!41042 () Bool)

(assert (=> d!41042 true))

(declare-fun lt!50970 () Bool)

(declare-fun lambda!4584 () Int)

(declare-fun forall!536 (List!2833 Int) Bool)

(assert (=> d!41042 (= lt!50970 (forall!536 rules!1920 lambda!4584))))

(declare-fun e!99690 () Bool)

(assert (=> d!41042 (= lt!50970 e!99690)))

(declare-fun res!74773 () Bool)

(assert (=> d!41042 (=> res!74773 e!99690)))

(assert (=> d!41042 (= res!74773 (not ((_ is Cons!2823) rules!1920)))))

(assert (=> d!41042 (= (rulesValidInductive!108 thiss!17480 rules!1920) lt!50970)))

(declare-fun b!165289 () Bool)

(declare-fun e!99689 () Bool)

(assert (=> b!165289 (= e!99690 e!99689)))

(declare-fun res!74774 () Bool)

(assert (=> b!165289 (=> (not res!74774) (not e!99689))))

(declare-fun ruleValid!50 (LexerInterface!387 Rule!802) Bool)

(assert (=> b!165289 (= res!74774 (ruleValid!50 thiss!17480 (h!8220 rules!1920)))))

(declare-fun b!165290 () Bool)

(assert (=> b!165290 (= e!99689 (rulesValidInductive!108 thiss!17480 (t!26455 rules!1920)))))

(assert (= (and d!41042 (not res!74773)) b!165289))

(assert (= (and b!165289 res!74774) b!165290))

(declare-fun m!157971 () Bool)

(assert (=> d!41042 m!157971))

(declare-fun m!157973 () Bool)

(assert (=> b!165289 m!157973))

(declare-fun m!157975 () Bool)

(assert (=> b!165290 m!157975))

(assert (=> b!164821 d!41042))

(declare-fun d!41044 () Bool)

(assert (=> d!41044 (= (seqFromList!380 (originalCharacters!544 (h!8221 tokens!465))) (fromListB!152 (originalCharacters!544 (h!8221 tokens!465))))))

(declare-fun bs!15822 () Bool)

(assert (= bs!15822 d!41044))

(declare-fun m!157977 () Bool)

(assert (=> bs!15822 m!157977))

(assert (=> b!164821 d!41044))

(declare-fun d!41046 () Bool)

(declare-fun dynLambda!1025 (Int Token!746) Bool)

(assert (=> d!41046 (dynLambda!1025 lambda!4552 (h!8221 tokens!465))))

(declare-fun lt!50973 () Unit!2378)

(declare-fun choose!1809 (List!2834 Int Token!746) Unit!2378)

(assert (=> d!41046 (= lt!50973 (choose!1809 tokens!465 lambda!4552 (h!8221 tokens!465)))))

(declare-fun e!99693 () Bool)

(assert (=> d!41046 e!99693))

(declare-fun res!74777 () Bool)

(assert (=> d!41046 (=> (not res!74777) (not e!99693))))

(assert (=> d!41046 (= res!74777 (forall!533 tokens!465 lambda!4552))))

(assert (=> d!41046 (= (forallContained!68 tokens!465 lambda!4552 (h!8221 tokens!465)) lt!50973)))

(declare-fun b!165295 () Bool)

(declare-fun contains!452 (List!2834 Token!746) Bool)

(assert (=> b!165295 (= e!99693 (contains!452 tokens!465 (h!8221 tokens!465)))))

(assert (= (and d!41046 res!74777) b!165295))

(declare-fun b_lambda!3573 () Bool)

(assert (=> (not b_lambda!3573) (not d!41046)))

(declare-fun m!157979 () Bool)

(assert (=> d!41046 m!157979))

(declare-fun m!157981 () Bool)

(assert (=> d!41046 m!157981))

(declare-fun m!157983 () Bool)

(assert (=> d!41046 m!157983))

(declare-fun m!157985 () Bool)

(assert (=> b!165295 m!157985))

(assert (=> b!164821 d!41046))

(declare-fun d!41048 () Bool)

(declare-fun res!74778 () Bool)

(declare-fun e!99694 () Bool)

(assert (=> d!41048 (=> (not res!74778) (not e!99694))))

(assert (=> d!41048 (= res!74778 (not (isEmpty!1164 (originalCharacters!544 separatorToken!170))))))

(assert (=> d!41048 (= (inv!3644 separatorToken!170) e!99694)))

(declare-fun b!165296 () Bool)

(declare-fun res!74779 () Bool)

(assert (=> b!165296 (=> (not res!74779) (not e!99694))))

(assert (=> b!165296 (= res!74779 (= (originalCharacters!544 separatorToken!170) (list!1019 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))))))

(declare-fun b!165297 () Bool)

(assert (=> b!165297 (= e!99694 (= (size!2359 separatorToken!170) (size!2365 (originalCharacters!544 separatorToken!170))))))

(assert (= (and d!41048 res!74778) b!165296))

(assert (= (and b!165296 res!74779) b!165297))

(declare-fun b_lambda!3575 () Bool)

(assert (=> (not b_lambda!3575) (not b!165296)))

(declare-fun t!26504 () Bool)

(declare-fun tb!6299 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170)))) t!26504) tb!6299))

(declare-fun b!165298 () Bool)

(declare-fun e!99695 () Bool)

(declare-fun tp!82863 () Bool)

(assert (=> b!165298 (= e!99695 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))) tp!82863))))

(declare-fun result!8930 () Bool)

(assert (=> tb!6299 (= result!8930 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))) e!99695))))

(assert (= tb!6299 b!165298))

(declare-fun m!157987 () Bool)

(assert (=> b!165298 m!157987))

(declare-fun m!157989 () Bool)

(assert (=> tb!6299 m!157989))

(assert (=> b!165296 t!26504))

(declare-fun b_and!10547 () Bool)

(assert (= b_and!10541 (and (=> t!26504 result!8930) b_and!10547)))

(declare-fun t!26506 () Bool)

(declare-fun tb!6301 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170)))) t!26506) tb!6301))

(declare-fun result!8932 () Bool)

(assert (= result!8932 result!8930))

(assert (=> b!165296 t!26506))

(declare-fun b_and!10549 () Bool)

(assert (= b_and!10543 (and (=> t!26506 result!8932) b_and!10549)))

(declare-fun t!26508 () Bool)

(declare-fun tb!6303 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170)))) t!26508) tb!6303))

(declare-fun result!8934 () Bool)

(assert (= result!8934 result!8930))

(assert (=> b!165296 t!26508))

(declare-fun b_and!10551 () Bool)

(assert (= b_and!10545 (and (=> t!26508 result!8934) b_and!10551)))

(declare-fun m!157991 () Bool)

(assert (=> d!41048 m!157991))

(declare-fun m!157993 () Bool)

(assert (=> b!165296 m!157993))

(assert (=> b!165296 m!157993))

(declare-fun m!157995 () Bool)

(assert (=> b!165296 m!157995))

(declare-fun m!157997 () Bool)

(assert (=> b!165297 m!157997))

(assert (=> start!17774 d!41048))

(declare-fun d!41050 () Bool)

(assert (=> d!41050 (= (inv!3641 (tag!679 (rule!1008 (h!8221 tokens!465)))) (= (mod (str.len (value!18593 (tag!679 (rule!1008 (h!8221 tokens!465))))) 2) 0))))

(assert (=> b!164819 d!41050))

(declare-fun d!41052 () Bool)

(declare-fun res!74782 () Bool)

(declare-fun e!99698 () Bool)

(assert (=> d!41052 (=> (not res!74782) (not e!99698))))

(declare-fun semiInverseModEq!173 (Int Int) Bool)

(assert (=> d!41052 (= res!74782 (semiInverseModEq!173 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465))))))))

(assert (=> d!41052 (= (inv!3645 (transformation!501 (rule!1008 (h!8221 tokens!465)))) e!99698)))

(declare-fun b!165301 () Bool)

(declare-fun equivClasses!156 (Int Int) Bool)

(assert (=> b!165301 (= e!99698 (equivClasses!156 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465))))))))

(assert (= (and d!41052 res!74782) b!165301))

(declare-fun m!157999 () Bool)

(assert (=> d!41052 m!157999))

(declare-fun m!158001 () Bool)

(assert (=> b!165301 m!158001))

(assert (=> b!164819 d!41052))

(declare-fun d!41054 () Bool)

(declare-fun res!74785 () Bool)

(declare-fun e!99701 () Bool)

(assert (=> d!41054 (=> (not res!74785) (not e!99701))))

(declare-fun rulesValid!139 (LexerInterface!387 List!2833) Bool)

(assert (=> d!41054 (= res!74785 (rulesValid!139 thiss!17480 rules!1920))))

(assert (=> d!41054 (= (rulesInvariant!353 thiss!17480 rules!1920) e!99701)))

(declare-fun b!165304 () Bool)

(declare-datatypes ((List!2836 0))(
  ( (Nil!2826) (Cons!2826 (h!8223 String!3695) (t!26522 List!2836)) )
))
(declare-fun noDuplicateTag!139 (LexerInterface!387 List!2833 List!2836) Bool)

(assert (=> b!165304 (= e!99701 (noDuplicateTag!139 thiss!17480 rules!1920 Nil!2826))))

(assert (= (and d!41054 res!74785) b!165304))

(declare-fun m!158003 () Bool)

(assert (=> d!41054 m!158003))

(declare-fun m!158005 () Bool)

(assert (=> b!165304 m!158005))

(assert (=> b!164840 d!41054))

(declare-fun d!41056 () Bool)

(assert (=> d!41056 (= (inv!3641 (tag!679 (h!8220 rules!1920))) (= (mod (str.len (value!18593 (tag!679 (h!8220 rules!1920)))) 2) 0))))

(assert (=> b!164841 d!41056))

(declare-fun d!41058 () Bool)

(declare-fun res!74786 () Bool)

(declare-fun e!99702 () Bool)

(assert (=> d!41058 (=> (not res!74786) (not e!99702))))

(assert (=> d!41058 (= res!74786 (semiInverseModEq!173 (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toValue!1160 (transformation!501 (h!8220 rules!1920)))))))

(assert (=> d!41058 (= (inv!3645 (transformation!501 (h!8220 rules!1920))) e!99702)))

(declare-fun b!165305 () Bool)

(assert (=> b!165305 (= e!99702 (equivClasses!156 (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toValue!1160 (transformation!501 (h!8220 rules!1920)))))))

(assert (= (and d!41058 res!74786) b!165305))

(declare-fun m!158007 () Bool)

(assert (=> d!41058 m!158007))

(declare-fun m!158009 () Bool)

(assert (=> b!165305 m!158009))

(assert (=> b!164841 d!41058))

(declare-fun b!165316 () Bool)

(declare-fun res!74791 () Bool)

(declare-fun e!99707 () Bool)

(assert (=> b!165316 (=> (not res!74791) (not e!99707))))

(declare-fun lt!50976 () List!2832)

(assert (=> b!165316 (= res!74791 (= (size!2365 lt!50976) (+ (size!2365 lt!50724) (size!2365 lt!50709))))))

(declare-fun d!41060 () Bool)

(assert (=> d!41060 e!99707))

(declare-fun res!74792 () Bool)

(assert (=> d!41060 (=> (not res!74792) (not e!99707))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!391 (List!2832) (InoxSet C!2372))

(assert (=> d!41060 (= res!74792 (= (content!391 lt!50976) ((_ map or) (content!391 lt!50724) (content!391 lt!50709))))))

(declare-fun e!99708 () List!2832)

(assert (=> d!41060 (= lt!50976 e!99708)))

(declare-fun c!33002 () Bool)

(assert (=> d!41060 (= c!33002 ((_ is Nil!2822) lt!50724))))

(assert (=> d!41060 (= (++!636 lt!50724 lt!50709) lt!50976)))

(declare-fun b!165315 () Bool)

(assert (=> b!165315 (= e!99708 (Cons!2822 (h!8219 lt!50724) (++!636 (t!26454 lt!50724) lt!50709)))))

(declare-fun b!165314 () Bool)

(assert (=> b!165314 (= e!99708 lt!50709)))

(declare-fun b!165317 () Bool)

(assert (=> b!165317 (= e!99707 (or (not (= lt!50709 Nil!2822)) (= lt!50976 lt!50724)))))

(assert (= (and d!41060 c!33002) b!165314))

(assert (= (and d!41060 (not c!33002)) b!165315))

(assert (= (and d!41060 res!74792) b!165316))

(assert (= (and b!165316 res!74791) b!165317))

(declare-fun m!158011 () Bool)

(assert (=> b!165316 m!158011))

(declare-fun m!158013 () Bool)

(assert (=> b!165316 m!158013))

(declare-fun m!158015 () Bool)

(assert (=> b!165316 m!158015))

(declare-fun m!158017 () Bool)

(assert (=> d!41060 m!158017))

(declare-fun m!158019 () Bool)

(assert (=> d!41060 m!158019))

(declare-fun m!158021 () Bool)

(assert (=> d!41060 m!158021))

(declare-fun m!158023 () Bool)

(assert (=> b!165315 m!158023))

(assert (=> b!164830 d!41060))

(declare-fun d!41062 () Bool)

(declare-fun res!74797 () Bool)

(declare-fun e!99713 () Bool)

(assert (=> d!41062 (=> res!74797 e!99713)))

(assert (=> d!41062 (= res!74797 ((_ is Nil!2824) tokens!465))))

(assert (=> d!41062 (= (forall!533 tokens!465 lambda!4551) e!99713)))

(declare-fun b!165322 () Bool)

(declare-fun e!99714 () Bool)

(assert (=> b!165322 (= e!99713 e!99714)))

(declare-fun res!74798 () Bool)

(assert (=> b!165322 (=> (not res!74798) (not e!99714))))

(assert (=> b!165322 (= res!74798 (dynLambda!1025 lambda!4551 (h!8221 tokens!465)))))

(declare-fun b!165323 () Bool)

(assert (=> b!165323 (= e!99714 (forall!533 (t!26456 tokens!465) lambda!4551))))

(assert (= (and d!41062 (not res!74797)) b!165322))

(assert (= (and b!165322 res!74798) b!165323))

(declare-fun b_lambda!3577 () Bool)

(assert (=> (not b_lambda!3577) (not b!165322)))

(declare-fun m!158025 () Bool)

(assert (=> b!165322 m!158025))

(declare-fun m!158027 () Bool)

(assert (=> b!165323 m!158027))

(assert (=> b!164839 d!41062))

(declare-fun d!41064 () Bool)

(assert (=> d!41064 (= (list!1019 (seqFromList!380 lt!50714)) (list!1022 (c!32900 (seqFromList!380 lt!50714))))))

(declare-fun bs!15823 () Bool)

(assert (= bs!15823 d!41064))

(declare-fun m!158029 () Bool)

(assert (=> bs!15823 m!158029))

(assert (=> b!164818 d!41064))

(declare-fun d!41066 () Bool)

(assert (=> d!41066 (= (seqFromList!380 lt!50714) (fromListB!152 lt!50714))))

(declare-fun bs!15824 () Bool)

(assert (= bs!15824 d!41066))

(declare-fun m!158031 () Bool)

(assert (=> bs!15824 m!158031))

(assert (=> b!164818 d!41066))

(declare-fun d!41068 () Bool)

(declare-fun lt!50977 () Bool)

(declare-fun e!99715 () Bool)

(assert (=> d!41068 (= lt!50977 e!99715)))

(declare-fun res!74800 () Bool)

(assert (=> d!41068 (=> (not res!74800) (not e!99715))))

(assert (=> d!41068 (= res!74800 (= (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170))))) (list!1023 (singletonSeq!53 separatorToken!170))))))

(declare-fun e!99716 () Bool)

(assert (=> d!41068 (= lt!50977 e!99716)))

(declare-fun res!74801 () Bool)

(assert (=> d!41068 (=> (not res!74801) (not e!99716))))

(declare-fun lt!50978 () tuple2!2690)

(assert (=> d!41068 (= res!74801 (= (size!2362 (_1!1561 lt!50978)) 1))))

(assert (=> d!41068 (= lt!50978 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170))))))

(assert (=> d!41068 (not (isEmpty!1156 rules!1920))))

(assert (=> d!41068 (= (rulesProduceIndividualToken!136 thiss!17480 rules!1920 separatorToken!170) lt!50977)))

(declare-fun b!165324 () Bool)

(declare-fun res!74799 () Bool)

(assert (=> b!165324 (=> (not res!74799) (not e!99716))))

(assert (=> b!165324 (= res!74799 (= (apply!398 (_1!1561 lt!50978) 0) separatorToken!170))))

(declare-fun b!165325 () Bool)

(assert (=> b!165325 (= e!99716 (isEmpty!1163 (_2!1561 lt!50978)))))

(declare-fun b!165326 () Bool)

(assert (=> b!165326 (= e!99715 (isEmpty!1163 (_2!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170))))))))

(assert (= (and d!41068 res!74801) b!165324))

(assert (= (and b!165324 res!74799) b!165325))

(assert (= (and d!41068 res!74800) b!165326))

(declare-fun m!158033 () Bool)

(assert (=> d!41068 m!158033))

(declare-fun m!158035 () Bool)

(assert (=> d!41068 m!158035))

(assert (=> d!41068 m!158035))

(declare-fun m!158037 () Bool)

(assert (=> d!41068 m!158037))

(assert (=> d!41068 m!157245))

(declare-fun m!158039 () Bool)

(assert (=> d!41068 m!158039))

(assert (=> d!41068 m!158033))

(declare-fun m!158041 () Bool)

(assert (=> d!41068 m!158041))

(declare-fun m!158043 () Bool)

(assert (=> d!41068 m!158043))

(assert (=> d!41068 m!158033))

(declare-fun m!158045 () Bool)

(assert (=> b!165324 m!158045))

(declare-fun m!158047 () Bool)

(assert (=> b!165325 m!158047))

(assert (=> b!165326 m!158033))

(assert (=> b!165326 m!158033))

(assert (=> b!165326 m!158035))

(assert (=> b!165326 m!158035))

(assert (=> b!165326 m!158037))

(declare-fun m!158049 () Bool)

(assert (=> b!165326 m!158049))

(assert (=> b!164827 d!41068))

(declare-fun bs!15825 () Bool)

(declare-fun d!41070 () Bool)

(assert (= bs!15825 (and d!41070 b!164821)))

(declare-fun lambda!4589 () Int)

(assert (=> bs!15825 (= lambda!4589 lambda!4552)))

(declare-fun bs!15826 () Bool)

(assert (= bs!15826 (and d!41070 d!40916)))

(assert (=> bs!15826 (not (= lambda!4589 lambda!4563))))

(declare-fun bs!15827 () Bool)

(assert (= bs!15827 (and d!41070 b!164997)))

(assert (=> bs!15827 (= lambda!4589 lambda!4564)))

(declare-fun bs!15828 () Bool)

(assert (= bs!15828 (and d!41070 b!165075)))

(assert (=> bs!15828 (= lambda!4589 lambda!4573)))

(declare-fun bs!15829 () Bool)

(assert (= bs!15829 (and d!41070 b!164839)))

(assert (=> bs!15829 (not (= lambda!4589 lambda!4551))))

(declare-fun b!165332 () Bool)

(declare-fun e!99722 () Bool)

(assert (=> b!165332 (= e!99722 true)))

(declare-fun b!165331 () Bool)

(declare-fun e!99721 () Bool)

(assert (=> b!165331 (= e!99721 e!99722)))

(declare-fun b!165330 () Bool)

(declare-fun e!99720 () Bool)

(assert (=> b!165330 (= e!99720 e!99721)))

(assert (=> d!41070 e!99720))

(assert (= b!165331 b!165332))

(assert (= b!165330 b!165331))

(assert (= (and d!41070 ((_ is Cons!2823) rules!1920)) b!165330))

(assert (=> b!165332 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4589))))

(assert (=> b!165332 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4589))))

(assert (=> d!41070 true))

(declare-fun e!99719 () Bool)

(assert (=> d!41070 e!99719))

(declare-fun res!74804 () Bool)

(assert (=> d!41070 (=> (not res!74804) (not e!99719))))

(declare-fun lt!50981 () Bool)

(assert (=> d!41070 (= res!74804 (= lt!50981 (forall!533 (list!1023 lt!50710) lambda!4589)))))

(declare-fun forall!537 (BalanceConc!1658 Int) Bool)

(assert (=> d!41070 (= lt!50981 (forall!537 lt!50710 lambda!4589))))

(assert (=> d!41070 (not (isEmpty!1156 rules!1920))))

(assert (=> d!41070 (= (rulesProduceEachTokenIndividually!179 thiss!17480 rules!1920 lt!50710) lt!50981)))

(declare-fun b!165329 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!105 (LexerInterface!387 List!2833 List!2834) Bool)

(assert (=> b!165329 (= e!99719 (= lt!50981 (rulesProduceEachTokenIndividuallyList!105 thiss!17480 rules!1920 (list!1023 lt!50710))))))

(assert (= (and d!41070 res!74804) b!165329))

(assert (=> d!41070 m!157519))

(assert (=> d!41070 m!157519))

(declare-fun m!158051 () Bool)

(assert (=> d!41070 m!158051))

(declare-fun m!158053 () Bool)

(assert (=> d!41070 m!158053))

(assert (=> d!41070 m!157245))

(assert (=> b!165329 m!157519))

(assert (=> b!165329 m!157519))

(declare-fun m!158055 () Bool)

(assert (=> b!165329 m!158055))

(assert (=> b!164816 d!41070))

(declare-fun d!41072 () Bool)

(declare-fun fromListB!153 (List!2834) BalanceConc!1658)

(assert (=> d!41072 (= (seqFromList!379 tokens!465) (fromListB!153 tokens!465))))

(declare-fun bs!15830 () Bool)

(assert (= bs!15830 d!41072))

(declare-fun m!158057 () Bool)

(assert (=> bs!15830 m!158057))

(assert (=> b!164816 d!41072))

(declare-fun d!41074 () Bool)

(assert (=> d!41074 (= (seqFromList!379 (t!26456 tokens!465)) (fromListB!153 (t!26456 tokens!465)))))

(declare-fun bs!15831 () Bool)

(assert (= bs!15831 d!41074))

(declare-fun m!158059 () Bool)

(assert (=> bs!15831 m!158059))

(assert (=> b!164836 d!41074))

(declare-fun d!41076 () Bool)

(assert (=> d!41076 (= (list!1019 (charsOf!156 separatorToken!170)) (list!1022 (c!32900 (charsOf!156 separatorToken!170))))))

(declare-fun bs!15832 () Bool)

(assert (= bs!15832 d!41076))

(declare-fun m!158061 () Bool)

(assert (=> bs!15832 m!158061))

(assert (=> b!164836 d!41076))

(declare-fun d!41078 () Bool)

(assert (=> d!41078 (= (list!1019 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0)) (list!1022 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!15833 () Bool)

(assert (= bs!15833 d!41078))

(declare-fun m!158063 () Bool)

(assert (=> bs!15833 m!158063))

(assert (=> b!164836 d!41078))

(declare-fun d!41080 () Bool)

(assert (=> d!41080 (= (++!636 (++!636 lt!50724 lt!50718) lt!50709) (++!636 lt!50724 (++!636 lt!50718 lt!50709)))))

(declare-fun lt!50984 () Unit!2378)

(declare-fun choose!1810 (List!2832 List!2832 List!2832) Unit!2378)

(assert (=> d!41080 (= lt!50984 (choose!1810 lt!50724 lt!50718 lt!50709))))

(assert (=> d!41080 (= (lemmaConcatAssociativity!184 lt!50724 lt!50718 lt!50709) lt!50984)))

(declare-fun bs!15834 () Bool)

(assert (= bs!15834 d!41080))

(assert (=> bs!15834 m!157287))

(assert (=> bs!15834 m!157287))

(assert (=> bs!15834 m!157289))

(declare-fun m!158065 () Bool)

(assert (=> bs!15834 m!158065))

(assert (=> bs!15834 m!157297))

(assert (=> bs!15834 m!157297))

(declare-fun m!158067 () Bool)

(assert (=> bs!15834 m!158067))

(assert (=> b!164836 d!41080))

(declare-fun b!165335 () Bool)

(declare-fun res!74805 () Bool)

(declare-fun e!99723 () Bool)

(assert (=> b!165335 (=> (not res!74805) (not e!99723))))

(declare-fun lt!50985 () List!2832)

(assert (=> b!165335 (= res!74805 (= (size!2365 lt!50985) (+ (size!2365 (++!636 lt!50724 lt!50718)) (size!2365 lt!50709))))))

(declare-fun d!41082 () Bool)

(assert (=> d!41082 e!99723))

(declare-fun res!74806 () Bool)

(assert (=> d!41082 (=> (not res!74806) (not e!99723))))

(assert (=> d!41082 (= res!74806 (= (content!391 lt!50985) ((_ map or) (content!391 (++!636 lt!50724 lt!50718)) (content!391 lt!50709))))))

(declare-fun e!99724 () List!2832)

(assert (=> d!41082 (= lt!50985 e!99724)))

(declare-fun c!33003 () Bool)

(assert (=> d!41082 (= c!33003 ((_ is Nil!2822) (++!636 lt!50724 lt!50718)))))

(assert (=> d!41082 (= (++!636 (++!636 lt!50724 lt!50718) lt!50709) lt!50985)))

(declare-fun b!165334 () Bool)

(assert (=> b!165334 (= e!99724 (Cons!2822 (h!8219 (++!636 lt!50724 lt!50718)) (++!636 (t!26454 (++!636 lt!50724 lt!50718)) lt!50709)))))

(declare-fun b!165333 () Bool)

(assert (=> b!165333 (= e!99724 lt!50709)))

(declare-fun b!165336 () Bool)

(assert (=> b!165336 (= e!99723 (or (not (= lt!50709 Nil!2822)) (= lt!50985 (++!636 lt!50724 lt!50718))))))

(assert (= (and d!41082 c!33003) b!165333))

(assert (= (and d!41082 (not c!33003)) b!165334))

(assert (= (and d!41082 res!74806) b!165335))

(assert (= (and b!165335 res!74805) b!165336))

(declare-fun m!158069 () Bool)

(assert (=> b!165335 m!158069))

(assert (=> b!165335 m!157287))

(declare-fun m!158071 () Bool)

(assert (=> b!165335 m!158071))

(assert (=> b!165335 m!158015))

(declare-fun m!158073 () Bool)

(assert (=> d!41082 m!158073))

(assert (=> d!41082 m!157287))

(declare-fun m!158075 () Bool)

(assert (=> d!41082 m!158075))

(assert (=> d!41082 m!158021))

(declare-fun m!158077 () Bool)

(assert (=> b!165334 m!158077))

(assert (=> b!164836 d!41082))

(declare-fun bs!15835 () Bool)

(declare-fun b!165344 () Bool)

(assert (= bs!15835 (and b!165344 d!40916)))

(declare-fun lambda!4590 () Int)

(assert (=> bs!15835 (not (= lambda!4590 lambda!4563))))

(declare-fun bs!15836 () Bool)

(assert (= bs!15836 (and b!165344 b!164997)))

(assert (=> bs!15836 (= lambda!4590 lambda!4564)))

(declare-fun bs!15837 () Bool)

(assert (= bs!15837 (and b!165344 b!165075)))

(assert (=> bs!15837 (= lambda!4590 lambda!4573)))

(declare-fun bs!15838 () Bool)

(assert (= bs!15838 (and b!165344 b!164839)))

(assert (=> bs!15838 (not (= lambda!4590 lambda!4551))))

(declare-fun bs!15839 () Bool)

(assert (= bs!15839 (and b!165344 b!164821)))

(assert (=> bs!15839 (= lambda!4590 lambda!4552)))

(declare-fun bs!15840 () Bool)

(assert (= bs!15840 (and b!165344 d!41070)))

(assert (=> bs!15840 (= lambda!4590 lambda!4589)))

(declare-fun b!165347 () Bool)

(declare-fun e!99731 () Bool)

(assert (=> b!165347 (= e!99731 true)))

(declare-fun b!165346 () Bool)

(declare-fun e!99730 () Bool)

(assert (=> b!165346 (= e!99730 e!99731)))

(declare-fun b!165345 () Bool)

(declare-fun e!99729 () Bool)

(assert (=> b!165345 (= e!99729 e!99730)))

(assert (=> b!165344 e!99729))

(assert (= b!165346 b!165347))

(assert (= b!165345 b!165346))

(assert (= (and b!165344 ((_ is Cons!2823) rules!1920)) b!165345))

(assert (=> b!165347 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4590))))

(assert (=> b!165347 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4590))))

(assert (=> b!165344 true))

(declare-fun b!165337 () Bool)

(declare-fun c!33007 () Bool)

(declare-fun lt!50991 () Option!283)

(assert (=> b!165337 (= c!33007 (and ((_ is Some!282) lt!50991) (not (= (_1!1565 (v!13705 lt!50991)) (h!8221 (t!26456 tokens!465))))))))

(declare-fun e!99725 () List!2832)

(declare-fun e!99728 () List!2832)

(assert (=> b!165337 (= e!99725 e!99728)))

(declare-fun b!165338 () Bool)

(declare-fun e!99727 () BalanceConc!1656)

(declare-fun call!7081 () BalanceConc!1656)

(assert (=> b!165338 (= e!99727 call!7081)))

(declare-fun b!165339 () Bool)

(assert (=> b!165339 (= e!99727 (charsOf!156 separatorToken!170))))

(declare-fun call!7083 () List!2832)

(declare-fun call!7085 () List!2832)

(declare-fun c!33006 () Bool)

(declare-fun call!7082 () List!2832)

(declare-fun lt!50988 () List!2832)

(declare-fun bm!7076 () Bool)

(assert (=> bm!7076 (= call!7085 (++!636 call!7083 (ite c!33006 lt!50988 call!7082)))))

(declare-fun b!165340 () Bool)

(declare-fun e!99726 () List!2832)

(assert (=> b!165340 (= e!99726 Nil!2822)))

(declare-fun b!165341 () Bool)

(assert (=> b!165341 (= e!99728 Nil!2822)))

(assert (=> b!165341 (= (print!118 thiss!17480 (singletonSeq!53 (h!8221 (t!26456 tokens!465)))) (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 (t!26456 tokens!465))) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!50987 () Unit!2378)

(declare-fun Unit!2392 () Unit!2378)

(assert (=> b!165341 (= lt!50987 Unit!2392)))

(declare-fun lt!50989 () Unit!2378)

(assert (=> b!165341 (= lt!50989 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 call!7082 lt!50988))))

(assert (=> b!165341 false))

(declare-fun lt!50986 () Unit!2378)

(declare-fun Unit!2393 () Unit!2378)

(assert (=> b!165341 (= lt!50986 Unit!2393)))

(declare-fun b!165342 () Bool)

(assert (=> b!165342 (= e!99725 call!7085)))

(declare-fun b!165343 () Bool)

(assert (=> b!165343 (= e!99728 (++!636 call!7085 lt!50988))))

(declare-fun bm!7077 () Bool)

(declare-fun call!7084 () BalanceConc!1656)

(assert (=> bm!7077 (= call!7084 (charsOf!156 (h!8221 (t!26456 tokens!465))))))

(declare-fun bm!7079 () Bool)

(assert (=> bm!7079 (= call!7082 (list!1019 e!99727))))

(declare-fun c!33004 () Bool)

(assert (=> bm!7079 (= c!33004 c!33007)))

(assert (=> b!165344 (= e!99726 e!99725)))

(declare-fun lt!50990 () Unit!2378)

(assert (=> b!165344 (= lt!50990 (forallContained!68 (t!26456 tokens!465) lambda!4590 (h!8221 (t!26456 tokens!465))))))

(assert (=> b!165344 (= lt!50988 (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (t!26456 (t!26456 tokens!465)) separatorToken!170))))

(assert (=> b!165344 (= lt!50991 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988)))))

(assert (=> b!165344 (= c!33006 (and ((_ is Some!282) lt!50991) (= (_1!1565 (v!13705 lt!50991)) (h!8221 (t!26456 tokens!465)))))))

(declare-fun bm!7080 () Bool)

(assert (=> bm!7080 (= call!7081 call!7084)))

(declare-fun d!41084 () Bool)

(declare-fun c!33005 () Bool)

(assert (=> d!41084 (= c!33005 ((_ is Cons!2824) (t!26456 tokens!465)))))

(assert (=> d!41084 (= (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (t!26456 tokens!465) separatorToken!170) e!99726)))

(declare-fun bm!7078 () Bool)

(assert (=> bm!7078 (= call!7083 (list!1019 (ite c!33006 call!7084 call!7081)))))

(assert (= (and d!41084 c!33005) b!165344))

(assert (= (and d!41084 (not c!33005)) b!165340))

(assert (= (and b!165344 c!33006) b!165342))

(assert (= (and b!165344 (not c!33006)) b!165337))

(assert (= (and b!165337 c!33007) b!165343))

(assert (= (and b!165337 (not c!33007)) b!165341))

(assert (= (or b!165343 b!165341) bm!7080))

(assert (= (or b!165343 b!165341) bm!7079))

(assert (= (and bm!7079 c!33004) b!165339))

(assert (= (and bm!7079 (not c!33004)) b!165338))

(assert (= (or b!165342 bm!7080) bm!7077))

(assert (= (or b!165342 b!165343) bm!7078))

(assert (= (or b!165342 b!165343) bm!7076))

(declare-fun m!158079 () Bool)

(assert (=> b!165341 m!158079))

(assert (=> b!165341 m!158079))

(declare-fun m!158081 () Bool)

(assert (=> b!165341 m!158081))

(assert (=> b!165341 m!158079))

(declare-fun m!158083 () Bool)

(assert (=> b!165341 m!158083))

(declare-fun m!158085 () Bool)

(assert (=> b!165341 m!158085))

(declare-fun m!158087 () Bool)

(assert (=> bm!7077 m!158087))

(declare-fun m!158089 () Bool)

(assert (=> b!165343 m!158089))

(declare-fun m!158091 () Bool)

(assert (=> bm!7076 m!158091))

(assert (=> b!165339 m!157281))

(declare-fun m!158093 () Bool)

(assert (=> bm!7078 m!158093))

(declare-fun m!158095 () Bool)

(assert (=> bm!7079 m!158095))

(declare-fun m!158097 () Bool)

(assert (=> b!165344 m!158097))

(assert (=> b!165344 m!158087))

(assert (=> b!165344 m!158087))

(declare-fun m!158099 () Bool)

(assert (=> b!165344 m!158099))

(declare-fun m!158101 () Bool)

(assert (=> b!165344 m!158101))

(declare-fun m!158103 () Bool)

(assert (=> b!165344 m!158103))

(declare-fun m!158105 () Bool)

(assert (=> b!165344 m!158105))

(assert (=> b!165344 m!158099))

(assert (=> b!165344 m!158103))

(assert (=> b!164836 d!41084))

(declare-fun bs!15841 () Bool)

(declare-fun d!41086 () Bool)

(assert (= bs!15841 (and d!41086 d!40916)))

(declare-fun lambda!4591 () Int)

(assert (=> bs!15841 (= lambda!4591 lambda!4563)))

(declare-fun bs!15842 () Bool)

(assert (= bs!15842 (and d!41086 b!165344)))

(assert (=> bs!15842 (not (= lambda!4591 lambda!4590))))

(declare-fun bs!15843 () Bool)

(assert (= bs!15843 (and d!41086 b!164997)))

(assert (=> bs!15843 (not (= lambda!4591 lambda!4564))))

(declare-fun bs!15844 () Bool)

(assert (= bs!15844 (and d!41086 b!165075)))

(assert (=> bs!15844 (not (= lambda!4591 lambda!4573))))

(declare-fun bs!15845 () Bool)

(assert (= bs!15845 (and d!41086 b!164839)))

(assert (=> bs!15845 (= lambda!4591 lambda!4551)))

(declare-fun bs!15846 () Bool)

(assert (= bs!15846 (and d!41086 b!164821)))

(assert (=> bs!15846 (not (= lambda!4591 lambda!4552))))

(declare-fun bs!15847 () Bool)

(assert (= bs!15847 (and d!41086 d!41070)))

(assert (=> bs!15847 (not (= lambda!4591 lambda!4589))))

(declare-fun bs!15848 () Bool)

(declare-fun b!165351 () Bool)

(assert (= bs!15848 (and b!165351 d!41086)))

(declare-fun lambda!4592 () Int)

(assert (=> bs!15848 (not (= lambda!4592 lambda!4591))))

(declare-fun bs!15849 () Bool)

(assert (= bs!15849 (and b!165351 d!40916)))

(assert (=> bs!15849 (not (= lambda!4592 lambda!4563))))

(declare-fun bs!15850 () Bool)

(assert (= bs!15850 (and b!165351 b!165344)))

(assert (=> bs!15850 (= lambda!4592 lambda!4590)))

(declare-fun bs!15851 () Bool)

(assert (= bs!15851 (and b!165351 b!164997)))

(assert (=> bs!15851 (= lambda!4592 lambda!4564)))

(declare-fun bs!15852 () Bool)

(assert (= bs!15852 (and b!165351 b!165075)))

(assert (=> bs!15852 (= lambda!4592 lambda!4573)))

(declare-fun bs!15853 () Bool)

(assert (= bs!15853 (and b!165351 b!164839)))

(assert (=> bs!15853 (not (= lambda!4592 lambda!4551))))

(declare-fun bs!15854 () Bool)

(assert (= bs!15854 (and b!165351 b!164821)))

(assert (=> bs!15854 (= lambda!4592 lambda!4552)))

(declare-fun bs!15855 () Bool)

(assert (= bs!15855 (and b!165351 d!41070)))

(assert (=> bs!15855 (= lambda!4592 lambda!4589)))

(declare-fun b!165361 () Bool)

(declare-fun e!99741 () Bool)

(assert (=> b!165361 (= e!99741 true)))

(declare-fun b!165360 () Bool)

(declare-fun e!99740 () Bool)

(assert (=> b!165360 (= e!99740 e!99741)))

(declare-fun b!165359 () Bool)

(declare-fun e!99739 () Bool)

(assert (=> b!165359 (= e!99739 e!99740)))

(assert (=> b!165351 e!99739))

(assert (= b!165360 b!165361))

(assert (= b!165359 b!165360))

(assert (= (and b!165351 ((_ is Cons!2823) rules!1920)) b!165359))

(assert (=> b!165361 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4592))))

(assert (=> b!165361 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4592))))

(assert (=> b!165351 true))

(declare-fun c!33010 () Bool)

(declare-fun call!7087 () BalanceConc!1656)

(declare-fun call!7090 () Token!746)

(declare-fun bm!7081 () Bool)

(declare-fun c!33011 () Bool)

(declare-fun call!7086 () Token!746)

(assert (=> bm!7081 (= call!7087 (charsOf!156 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086))))))

(declare-fun b!165348 () Bool)

(declare-fun e!99732 () BalanceConc!1656)

(assert (=> b!165348 (= e!99732 (BalanceConc!1657 Empty!824))))

(assert (=> b!165348 (= (print!118 thiss!17480 (singletonSeq!53 call!7086)) (printTailRec!81 thiss!17480 (singletonSeq!53 call!7086) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!50998 () Unit!2378)

(declare-fun Unit!2394 () Unit!2378)

(assert (=> b!165348 (= lt!50998 Unit!2394)))

(declare-fun lt!51002 () Unit!2378)

(declare-fun call!7088 () BalanceConc!1656)

(declare-fun lt!50994 () BalanceConc!1656)

(assert (=> b!165348 (= lt!51002 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 (list!1019 call!7088) (list!1019 lt!50994)))))

(assert (=> b!165348 false))

(declare-fun lt!50997 () Unit!2378)

(declare-fun Unit!2395 () Unit!2378)

(assert (=> b!165348 (= lt!50997 Unit!2395)))

(declare-fun b!165349 () Bool)

(declare-fun e!99738 () Bool)

(declare-fun lt!51004 () Option!282)

(assert (=> b!165349 (= e!99738 (not (= (_1!1564 (v!13704 lt!51004)) call!7090)))))

(declare-fun b!165350 () Bool)

(declare-fun e!99734 () BalanceConc!1656)

(assert (=> b!165350 (= e!99734 (BalanceConc!1657 Empty!824))))

(declare-fun e!99735 () BalanceConc!1656)

(assert (=> b!165351 (= e!99734 e!99735)))

(declare-fun lt!51005 () List!2834)

(assert (=> b!165351 (= lt!51005 (list!1023 (seqFromList!379 (t!26456 tokens!465))))))

(declare-fun lt!50992 () Unit!2378)

(assert (=> b!165351 (= lt!50992 (lemmaDropApply!122 lt!51005 0))))

(assert (=> b!165351 (= (head!596 (drop!135 lt!51005 0)) (apply!397 lt!51005 0))))

(declare-fun lt!50995 () Unit!2378)

(assert (=> b!165351 (= lt!50995 lt!50992)))

(declare-fun lt!51003 () List!2834)

(assert (=> b!165351 (= lt!51003 (list!1023 (seqFromList!379 (t!26456 tokens!465))))))

(declare-fun lt!51001 () Unit!2378)

(assert (=> b!165351 (= lt!51001 (lemmaDropTail!114 lt!51003 0))))

(assert (=> b!165351 (= (tail!336 (drop!135 lt!51003 0)) (drop!135 lt!51003 (+ 0 1)))))

(declare-fun lt!50993 () Unit!2378)

(assert (=> b!165351 (= lt!50993 lt!51001)))

(declare-fun lt!50999 () Unit!2378)

(assert (=> b!165351 (= lt!50999 (forallContained!68 (list!1023 (seqFromList!379 (t!26456 tokens!465))) lambda!4592 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))))

(assert (=> b!165351 (= lt!50994 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!165351 (= lt!51004 (maxPrefixZipperSequence!82 thiss!17480 rules!1920 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))

(declare-fun res!74809 () Bool)

(assert (=> b!165351 (= res!74809 ((_ is Some!281) lt!51004))))

(declare-fun e!99736 () Bool)

(assert (=> b!165351 (=> (not res!74809) (not e!99736))))

(assert (=> b!165351 (= c!33010 e!99736)))

(declare-fun b!165352 () Bool)

(assert (=> b!165352 (= e!99736 (= (_1!1564 (v!13704 lt!51004)) (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))))

(declare-fun b!165353 () Bool)

(declare-fun call!7089 () BalanceConc!1656)

(assert (=> b!165353 (= e!99735 call!7089)))

(declare-fun b!165354 () Bool)

(declare-fun e!99733 () BalanceConc!1656)

(assert (=> b!165354 (= e!99733 (charsOf!156 call!7086))))

(declare-fun b!165355 () Bool)

(assert (=> b!165355 (= e!99732 (++!638 call!7089 lt!50994))))

(declare-fun bm!7082 () Bool)

(declare-fun c!33008 () Bool)

(assert (=> bm!7082 (= c!33008 c!33010)))

(assert (=> bm!7082 (= call!7089 (++!638 e!99733 (ite c!33010 lt!50994 call!7088)))))

(declare-fun bm!7083 () Bool)

(assert (=> bm!7083 (= call!7090 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))

(declare-fun bm!7084 () Bool)

(assert (=> bm!7084 (= call!7088 call!7087)))

(declare-fun b!165357 () Bool)

(assert (=> b!165357 (= c!33011 e!99738)))

(declare-fun res!74807 () Bool)

(assert (=> b!165357 (=> (not res!74807) (not e!99738))))

(assert (=> b!165357 (= res!74807 ((_ is Some!281) lt!51004))))

(assert (=> b!165357 (= e!99735 e!99732)))

(declare-fun b!165356 () Bool)

(declare-fun e!99737 () Bool)

(assert (=> b!165356 (= e!99737 (<= 0 (size!2362 (seqFromList!379 (t!26456 tokens!465)))))))

(declare-fun lt!50996 () BalanceConc!1656)

(assert (=> d!41086 (= (list!1019 lt!50996) (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0) separatorToken!170))))

(assert (=> d!41086 (= lt!50996 e!99734)))

(declare-fun c!33009 () Bool)

(assert (=> d!41086 (= c!33009 (>= 0 (size!2362 (seqFromList!379 (t!26456 tokens!465)))))))

(declare-fun lt!51000 () Unit!2378)

(assert (=> d!41086 (= lt!51000 (lemmaContentSubsetPreservesForall!26 (list!1023 (seqFromList!379 (t!26456 tokens!465))) (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0) lambda!4591))))

(assert (=> d!41086 e!99737))

(declare-fun res!74808 () Bool)

(assert (=> d!41086 (=> (not res!74808) (not e!99737))))

(assert (=> d!41086 (= res!74808 (>= 0 0))))

(assert (=> d!41086 (= (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0) lt!50996)))

(declare-fun bm!7085 () Bool)

(assert (=> bm!7085 (= call!7086 call!7090)))

(declare-fun b!165358 () Bool)

(assert (=> b!165358 (= e!99733 call!7087)))

(assert (= (and d!41086 res!74808) b!165356))

(assert (= (and d!41086 c!33009) b!165350))

(assert (= (and d!41086 (not c!33009)) b!165351))

(assert (= (and b!165351 res!74809) b!165352))

(assert (= (and b!165351 c!33010) b!165353))

(assert (= (and b!165351 (not c!33010)) b!165357))

(assert (= (and b!165357 res!74807) b!165349))

(assert (= (and b!165357 c!33011) b!165355))

(assert (= (and b!165357 (not c!33011)) b!165348))

(assert (= (or b!165355 b!165348) bm!7085))

(assert (= (or b!165355 b!165348) bm!7084))

(assert (= (or b!165353 b!165349 bm!7085) bm!7083))

(assert (= (or b!165353 bm!7084) bm!7081))

(assert (= (or b!165353 b!165355) bm!7082))

(assert (= (and bm!7082 c!33008) b!165358))

(assert (= (and bm!7082 (not c!33008)) b!165354))

(declare-fun m!158107 () Bool)

(assert (=> bm!7081 m!158107))

(declare-fun m!158109 () Bool)

(assert (=> bm!7082 m!158109))

(assert (=> bm!7083 m!157275))

(declare-fun m!158111 () Bool)

(assert (=> bm!7083 m!158111))

(assert (=> b!165356 m!157275))

(declare-fun m!158113 () Bool)

(assert (=> b!165356 m!158113))

(declare-fun m!158115 () Bool)

(assert (=> b!165355 m!158115))

(declare-fun m!158117 () Bool)

(assert (=> d!41086 m!158117))

(declare-fun m!158119 () Bool)

(assert (=> d!41086 m!158119))

(assert (=> d!41086 m!157275))

(assert (=> d!41086 m!158117))

(declare-fun m!158121 () Bool)

(assert (=> d!41086 m!158121))

(assert (=> d!41086 m!157275))

(declare-fun m!158123 () Bool)

(assert (=> d!41086 m!158123))

(assert (=> d!41086 m!158123))

(assert (=> d!41086 m!158117))

(declare-fun m!158125 () Bool)

(assert (=> d!41086 m!158125))

(assert (=> d!41086 m!157275))

(assert (=> d!41086 m!158113))

(declare-fun m!158127 () Bool)

(assert (=> b!165348 m!158127))

(declare-fun m!158129 () Bool)

(assert (=> b!165348 m!158129))

(declare-fun m!158131 () Bool)

(assert (=> b!165348 m!158131))

(assert (=> b!165348 m!158129))

(declare-fun m!158133 () Bool)

(assert (=> b!165348 m!158133))

(declare-fun m!158135 () Bool)

(assert (=> b!165348 m!158135))

(assert (=> b!165348 m!158133))

(assert (=> b!165348 m!158133))

(declare-fun m!158137 () Bool)

(assert (=> b!165348 m!158137))

(assert (=> b!165348 m!158127))

(assert (=> b!165352 m!157275))

(assert (=> b!165352 m!158111))

(declare-fun m!158139 () Bool)

(assert (=> b!165351 m!158139))

(declare-fun m!158141 () Bool)

(assert (=> b!165351 m!158141))

(assert (=> b!165351 m!158139))

(declare-fun m!158143 () Bool)

(assert (=> b!165351 m!158143))

(assert (=> b!165351 m!157275))

(assert (=> b!165351 m!158123))

(declare-fun m!158145 () Bool)

(assert (=> b!165351 m!158145))

(declare-fun m!158147 () Bool)

(assert (=> b!165351 m!158147))

(declare-fun m!158149 () Bool)

(assert (=> b!165351 m!158149))

(declare-fun m!158151 () Bool)

(assert (=> b!165351 m!158151))

(declare-fun m!158153 () Bool)

(assert (=> b!165351 m!158153))

(declare-fun m!158155 () Bool)

(assert (=> b!165351 m!158155))

(declare-fun m!158157 () Bool)

(assert (=> b!165351 m!158157))

(assert (=> b!165351 m!158153))

(assert (=> b!165351 m!158145))

(assert (=> b!165351 m!157275))

(declare-fun m!158159 () Bool)

(assert (=> b!165351 m!158159))

(assert (=> b!165351 m!158123))

(assert (=> b!165351 m!158111))

(declare-fun m!158161 () Bool)

(assert (=> b!165351 m!158161))

(declare-fun m!158163 () Bool)

(assert (=> b!165351 m!158163))

(assert (=> b!165351 m!157275))

(assert (=> b!165351 m!158111))

(assert (=> b!165351 m!158111))

(assert (=> b!165351 m!158157))

(declare-fun m!158165 () Bool)

(assert (=> b!165354 m!158165))

(assert (=> b!164836 d!41086))

(declare-fun d!41088 () Bool)

(declare-fun lt!51008 () BalanceConc!1656)

(assert (=> d!41088 (= (list!1019 lt!51008) (originalCharacters!544 separatorToken!170))))

(assert (=> d!41088 (= lt!51008 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))))

(assert (=> d!41088 (= (charsOf!156 separatorToken!170) lt!51008)))

(declare-fun b_lambda!3579 () Bool)

(assert (=> (not b_lambda!3579) (not d!41088)))

(assert (=> d!41088 t!26504))

(declare-fun b_and!10553 () Bool)

(assert (= b_and!10547 (and (=> t!26504 result!8930) b_and!10553)))

(assert (=> d!41088 t!26506))

(declare-fun b_and!10555 () Bool)

(assert (= b_and!10549 (and (=> t!26506 result!8932) b_and!10555)))

(assert (=> d!41088 t!26508))

(declare-fun b_and!10557 () Bool)

(assert (= b_and!10551 (and (=> t!26508 result!8934) b_and!10557)))

(declare-fun m!158167 () Bool)

(assert (=> d!41088 m!158167))

(assert (=> d!41088 m!157993))

(assert (=> b!164836 d!41088))

(declare-fun d!41090 () Bool)

(assert (=> d!41090 (= (list!1019 (charsOf!156 (h!8221 tokens!465))) (list!1022 (c!32900 (charsOf!156 (h!8221 tokens!465)))))))

(declare-fun bs!15856 () Bool)

(assert (= bs!15856 d!41090))

(declare-fun m!158169 () Bool)

(assert (=> bs!15856 m!158169))

(assert (=> b!164836 d!41090))

(declare-fun d!41092 () Bool)

(declare-fun lt!51009 () BalanceConc!1656)

(assert (=> d!41092 (= (list!1019 lt!51009) (originalCharacters!544 (h!8221 tokens!465)))))

(assert (=> d!41092 (= lt!51009 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))))

(assert (=> d!41092 (= (charsOf!156 (h!8221 tokens!465)) lt!51009)))

(declare-fun b_lambda!3581 () Bool)

(assert (=> (not b_lambda!3581) (not d!41092)))

(assert (=> d!41092 t!26498))

(declare-fun b_and!10559 () Bool)

(assert (= b_and!10553 (and (=> t!26498 result!8922) b_and!10559)))

(assert (=> d!41092 t!26500))

(declare-fun b_and!10561 () Bool)

(assert (= b_and!10555 (and (=> t!26500 result!8926) b_and!10561)))

(assert (=> d!41092 t!26502))

(declare-fun b_and!10563 () Bool)

(assert (= b_and!10557 (and (=> t!26502 result!8928) b_and!10563)))

(declare-fun m!158171 () Bool)

(assert (=> d!41092 m!158171))

(assert (=> d!41092 m!157959))

(assert (=> b!164836 d!41092))

(declare-fun b!165364 () Bool)

(declare-fun res!74810 () Bool)

(declare-fun e!99742 () Bool)

(assert (=> b!165364 (=> (not res!74810) (not e!99742))))

(declare-fun lt!51010 () List!2832)

(assert (=> b!165364 (= res!74810 (= (size!2365 lt!51010) (+ (size!2365 lt!50724) (size!2365 lt!50722))))))

(declare-fun d!41094 () Bool)

(assert (=> d!41094 e!99742))

(declare-fun res!74811 () Bool)

(assert (=> d!41094 (=> (not res!74811) (not e!99742))))

(assert (=> d!41094 (= res!74811 (= (content!391 lt!51010) ((_ map or) (content!391 lt!50724) (content!391 lt!50722))))))

(declare-fun e!99743 () List!2832)

(assert (=> d!41094 (= lt!51010 e!99743)))

(declare-fun c!33012 () Bool)

(assert (=> d!41094 (= c!33012 ((_ is Nil!2822) lt!50724))))

(assert (=> d!41094 (= (++!636 lt!50724 lt!50722) lt!51010)))

(declare-fun b!165363 () Bool)

(assert (=> b!165363 (= e!99743 (Cons!2822 (h!8219 lt!50724) (++!636 (t!26454 lt!50724) lt!50722)))))

(declare-fun b!165362 () Bool)

(assert (=> b!165362 (= e!99743 lt!50722)))

(declare-fun b!165365 () Bool)

(assert (=> b!165365 (= e!99742 (or (not (= lt!50722 Nil!2822)) (= lt!51010 lt!50724)))))

(assert (= (and d!41094 c!33012) b!165362))

(assert (= (and d!41094 (not c!33012)) b!165363))

(assert (= (and d!41094 res!74811) b!165364))

(assert (= (and b!165364 res!74810) b!165365))

(declare-fun m!158173 () Bool)

(assert (=> b!165364 m!158173))

(assert (=> b!165364 m!158013))

(declare-fun m!158175 () Bool)

(assert (=> b!165364 m!158175))

(declare-fun m!158177 () Bool)

(assert (=> d!41094 m!158177))

(assert (=> d!41094 m!158019))

(declare-fun m!158179 () Bool)

(assert (=> d!41094 m!158179))

(declare-fun m!158181 () Bool)

(assert (=> b!165363 m!158181))

(assert (=> b!164836 d!41094))

(declare-fun b!165368 () Bool)

(declare-fun res!74812 () Bool)

(declare-fun e!99744 () Bool)

(assert (=> b!165368 (=> (not res!74812) (not e!99744))))

(declare-fun lt!51011 () List!2832)

(assert (=> b!165368 (= res!74812 (= (size!2365 lt!51011) (+ (size!2365 lt!50718) (size!2365 lt!50709))))))

(declare-fun d!41096 () Bool)

(assert (=> d!41096 e!99744))

(declare-fun res!74813 () Bool)

(assert (=> d!41096 (=> (not res!74813) (not e!99744))))

(assert (=> d!41096 (= res!74813 (= (content!391 lt!51011) ((_ map or) (content!391 lt!50718) (content!391 lt!50709))))))

(declare-fun e!99745 () List!2832)

(assert (=> d!41096 (= lt!51011 e!99745)))

(declare-fun c!33013 () Bool)

(assert (=> d!41096 (= c!33013 ((_ is Nil!2822) lt!50718))))

(assert (=> d!41096 (= (++!636 lt!50718 lt!50709) lt!51011)))

(declare-fun b!165367 () Bool)

(assert (=> b!165367 (= e!99745 (Cons!2822 (h!8219 lt!50718) (++!636 (t!26454 lt!50718) lt!50709)))))

(declare-fun b!165366 () Bool)

(assert (=> b!165366 (= e!99745 lt!50709)))

(declare-fun b!165369 () Bool)

(assert (=> b!165369 (= e!99744 (or (not (= lt!50709 Nil!2822)) (= lt!51011 lt!50718)))))

(assert (= (and d!41096 c!33013) b!165366))

(assert (= (and d!41096 (not c!33013)) b!165367))

(assert (= (and d!41096 res!74813) b!165368))

(assert (= (and b!165368 res!74812) b!165369))

(declare-fun m!158183 () Bool)

(assert (=> b!165368 m!158183))

(declare-fun m!158185 () Bool)

(assert (=> b!165368 m!158185))

(assert (=> b!165368 m!158015))

(declare-fun m!158187 () Bool)

(assert (=> d!41096 m!158187))

(declare-fun m!158189 () Bool)

(assert (=> d!41096 m!158189))

(assert (=> d!41096 m!158021))

(declare-fun m!158191 () Bool)

(assert (=> b!165367 m!158191))

(assert (=> b!164836 d!41096))

(declare-fun b!165372 () Bool)

(declare-fun res!74814 () Bool)

(declare-fun e!99746 () Bool)

(assert (=> b!165372 (=> (not res!74814) (not e!99746))))

(declare-fun lt!51012 () List!2832)

(assert (=> b!165372 (= res!74814 (= (size!2365 lt!51012) (+ (size!2365 lt!50724) (size!2365 lt!50718))))))

(declare-fun d!41098 () Bool)

(assert (=> d!41098 e!99746))

(declare-fun res!74815 () Bool)

(assert (=> d!41098 (=> (not res!74815) (not e!99746))))

(assert (=> d!41098 (= res!74815 (= (content!391 lt!51012) ((_ map or) (content!391 lt!50724) (content!391 lt!50718))))))

(declare-fun e!99747 () List!2832)

(assert (=> d!41098 (= lt!51012 e!99747)))

(declare-fun c!33014 () Bool)

(assert (=> d!41098 (= c!33014 ((_ is Nil!2822) lt!50724))))

(assert (=> d!41098 (= (++!636 lt!50724 lt!50718) lt!51012)))

(declare-fun b!165371 () Bool)

(assert (=> b!165371 (= e!99747 (Cons!2822 (h!8219 lt!50724) (++!636 (t!26454 lt!50724) lt!50718)))))

(declare-fun b!165370 () Bool)

(assert (=> b!165370 (= e!99747 lt!50718)))

(declare-fun b!165373 () Bool)

(assert (=> b!165373 (= e!99746 (or (not (= lt!50718 Nil!2822)) (= lt!51012 lt!50724)))))

(assert (= (and d!41098 c!33014) b!165370))

(assert (= (and d!41098 (not c!33014)) b!165371))

(assert (= (and d!41098 res!74815) b!165372))

(assert (= (and b!165372 res!74814) b!165373))

(declare-fun m!158193 () Bool)

(assert (=> b!165372 m!158193))

(assert (=> b!165372 m!158013))

(assert (=> b!165372 m!158185))

(declare-fun m!158195 () Bool)

(assert (=> d!41098 m!158195))

(assert (=> d!41098 m!158019))

(assert (=> d!41098 m!158189))

(declare-fun m!158197 () Bool)

(assert (=> b!165371 m!158197))

(assert (=> b!164836 d!41098))

(declare-fun d!41100 () Bool)

(assert (=> d!41100 (= (isEmpty!1156 rules!1920) ((_ is Nil!2823) rules!1920))))

(assert (=> b!164837 d!41100))

(declare-fun d!41102 () Bool)

(assert (=> d!41102 (= (inv!3641 (tag!679 (rule!1008 separatorToken!170))) (= (mod (str.len (value!18593 (tag!679 (rule!1008 separatorToken!170)))) 2) 0))))

(assert (=> b!164826 d!41102))

(declare-fun d!41104 () Bool)

(declare-fun res!74816 () Bool)

(declare-fun e!99748 () Bool)

(assert (=> d!41104 (=> (not res!74816) (not e!99748))))

(assert (=> d!41104 (= res!74816 (semiInverseModEq!173 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toValue!1160 (transformation!501 (rule!1008 separatorToken!170)))))))

(assert (=> d!41104 (= (inv!3645 (transformation!501 (rule!1008 separatorToken!170))) e!99748)))

(declare-fun b!165374 () Bool)

(assert (=> b!165374 (= e!99748 (equivClasses!156 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toValue!1160 (transformation!501 (rule!1008 separatorToken!170)))))))

(assert (= (and d!41104 res!74816) b!165374))

(declare-fun m!158199 () Bool)

(assert (=> d!41104 m!158199))

(declare-fun m!158201 () Bool)

(assert (=> b!165374 m!158201))

(assert (=> b!164826 d!41104))

(declare-fun b!165379 () Bool)

(declare-fun e!99751 () Bool)

(declare-fun tp_is_empty!1643 () Bool)

(declare-fun tp!82866 () Bool)

(assert (=> b!165379 (= e!99751 (and tp_is_empty!1643 tp!82866))))

(assert (=> b!164832 (= tp!82795 e!99751)))

(assert (= (and b!164832 ((_ is Cons!2822) (originalCharacters!544 (h!8221 tokens!465)))) b!165379))

(declare-fun b!165393 () Bool)

(declare-fun b_free!6285 () Bool)

(declare-fun b_next!6285 () Bool)

(assert (=> b!165393 (= b_free!6285 (not b_next!6285))))

(declare-fun tp!82880 () Bool)

(declare-fun b_and!10565 () Bool)

(assert (=> b!165393 (= tp!82880 b_and!10565)))

(declare-fun b_free!6287 () Bool)

(declare-fun b_next!6287 () Bool)

(assert (=> b!165393 (= b_free!6287 (not b_next!6287))))

(declare-fun t!26514 () Bool)

(declare-fun tb!6305 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) t!26514) tb!6305))

(declare-fun result!8940 () Bool)

(assert (= result!8940 result!8922))

(assert (=> b!165273 t!26514))

(declare-fun t!26516 () Bool)

(declare-fun tb!6307 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170)))) t!26516) tb!6307))

(declare-fun result!8942 () Bool)

(assert (= result!8942 result!8930))

(assert (=> b!165296 t!26516))

(assert (=> d!41088 t!26516))

(assert (=> d!41092 t!26514))

(declare-fun tp!82881 () Bool)

(declare-fun b_and!10567 () Bool)

(assert (=> b!165393 (= tp!82881 (and (=> t!26514 result!8940) (=> t!26516 result!8942) b_and!10567))))

(declare-fun e!99769 () Bool)

(declare-fun tp!82879 () Bool)

(declare-fun b!165392 () Bool)

(declare-fun e!99766 () Bool)

(assert (=> b!165392 (= e!99769 (and tp!82879 (inv!3641 (tag!679 (rule!1008 (h!8221 (t!26456 tokens!465))))) (inv!3645 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) e!99766))))

(assert (=> b!165393 (= e!99766 (and tp!82880 tp!82881))))

(declare-fun e!99764 () Bool)

(assert (=> b!164822 (= tp!82792 e!99764)))

(declare-fun b!165390 () Bool)

(declare-fun tp!82877 () Bool)

(declare-fun e!99767 () Bool)

(assert (=> b!165390 (= e!99764 (and (inv!3644 (h!8221 (t!26456 tokens!465))) e!99767 tp!82877))))

(declare-fun tp!82878 () Bool)

(declare-fun b!165391 () Bool)

(assert (=> b!165391 (= e!99767 (and (inv!21 (value!18594 (h!8221 (t!26456 tokens!465)))) e!99769 tp!82878))))

(assert (= b!165392 b!165393))

(assert (= b!165391 b!165392))

(assert (= b!165390 b!165391))

(assert (= (and b!164822 ((_ is Cons!2824) (t!26456 tokens!465))) b!165390))

(declare-fun m!158203 () Bool)

(assert (=> b!165392 m!158203))

(declare-fun m!158205 () Bool)

(assert (=> b!165392 m!158205))

(declare-fun m!158207 () Bool)

(assert (=> b!165390 m!158207))

(declare-fun m!158209 () Bool)

(assert (=> b!165391 m!158209))

(declare-fun b!165394 () Bool)

(declare-fun e!99770 () Bool)

(declare-fun tp!82882 () Bool)

(assert (=> b!165394 (= e!99770 (and tp_is_empty!1643 tp!82882))))

(assert (=> b!164820 (= tp!82789 e!99770)))

(assert (= (and b!164820 ((_ is Cons!2822) (originalCharacters!544 separatorToken!170))) b!165394))

(declare-fun b!165397 () Bool)

(declare-fun e!99773 () Bool)

(assert (=> b!165397 (= e!99773 true)))

(declare-fun b!165396 () Bool)

(declare-fun e!99772 () Bool)

(assert (=> b!165396 (= e!99772 e!99773)))

(declare-fun b!165395 () Bool)

(declare-fun e!99771 () Bool)

(assert (=> b!165395 (= e!99771 e!99772)))

(assert (=> b!164850 e!99771))

(assert (= b!165396 b!165397))

(assert (= b!165395 b!165396))

(assert (= (and b!164850 ((_ is Cons!2823) (t!26455 rules!1920))) b!165395))

(assert (=> b!165397 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4552))))

(assert (=> b!165397 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4552))))

(declare-fun b!165411 () Bool)

(declare-fun e!99776 () Bool)

(declare-fun tp!82895 () Bool)

(declare-fun tp!82894 () Bool)

(assert (=> b!165411 (= e!99776 (and tp!82895 tp!82894))))

(declare-fun b!165409 () Bool)

(declare-fun tp!82893 () Bool)

(declare-fun tp!82897 () Bool)

(assert (=> b!165409 (= e!99776 (and tp!82893 tp!82897))))

(assert (=> b!164819 (= tp!82787 e!99776)))

(declare-fun b!165408 () Bool)

(assert (=> b!165408 (= e!99776 tp_is_empty!1643)))

(declare-fun b!165410 () Bool)

(declare-fun tp!82896 () Bool)

(assert (=> b!165410 (= e!99776 tp!82896)))

(assert (= (and b!164819 ((_ is ElementMatch!725) (regex!501 (rule!1008 (h!8221 tokens!465))))) b!165408))

(assert (= (and b!164819 ((_ is Concat!1249) (regex!501 (rule!1008 (h!8221 tokens!465))))) b!165409))

(assert (= (and b!164819 ((_ is Star!725) (regex!501 (rule!1008 (h!8221 tokens!465))))) b!165410))

(assert (= (and b!164819 ((_ is Union!725) (regex!501 (rule!1008 (h!8221 tokens!465))))) b!165411))

(declare-fun b!165415 () Bool)

(declare-fun e!99777 () Bool)

(declare-fun tp!82900 () Bool)

(declare-fun tp!82899 () Bool)

(assert (=> b!165415 (= e!99777 (and tp!82900 tp!82899))))

(declare-fun b!165413 () Bool)

(declare-fun tp!82898 () Bool)

(declare-fun tp!82902 () Bool)

(assert (=> b!165413 (= e!99777 (and tp!82898 tp!82902))))

(assert (=> b!164841 (= tp!82791 e!99777)))

(declare-fun b!165412 () Bool)

(assert (=> b!165412 (= e!99777 tp_is_empty!1643)))

(declare-fun b!165414 () Bool)

(declare-fun tp!82901 () Bool)

(assert (=> b!165414 (= e!99777 tp!82901)))

(assert (= (and b!164841 ((_ is ElementMatch!725) (regex!501 (h!8220 rules!1920)))) b!165412))

(assert (= (and b!164841 ((_ is Concat!1249) (regex!501 (h!8220 rules!1920)))) b!165413))

(assert (= (and b!164841 ((_ is Star!725) (regex!501 (h!8220 rules!1920)))) b!165414))

(assert (= (and b!164841 ((_ is Union!725) (regex!501 (h!8220 rules!1920)))) b!165415))

(declare-fun b!165426 () Bool)

(declare-fun b_free!6289 () Bool)

(declare-fun b_next!6289 () Bool)

(assert (=> b!165426 (= b_free!6289 (not b_next!6289))))

(declare-fun tp!82912 () Bool)

(declare-fun b_and!10569 () Bool)

(assert (=> b!165426 (= tp!82912 b_and!10569)))

(declare-fun b_free!6291 () Bool)

(declare-fun b_next!6291 () Bool)

(assert (=> b!165426 (= b_free!6291 (not b_next!6291))))

(declare-fun tb!6309 () Bool)

(declare-fun t!26518 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) t!26518) tb!6309))

(declare-fun result!8948 () Bool)

(assert (= result!8948 result!8922))

(assert (=> b!165273 t!26518))

(declare-fun tb!6311 () Bool)

(declare-fun t!26520 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170)))) t!26520) tb!6311))

(declare-fun result!8950 () Bool)

(assert (= result!8950 result!8930))

(assert (=> b!165296 t!26520))

(assert (=> d!41088 t!26520))

(assert (=> d!41092 t!26518))

(declare-fun tp!82914 () Bool)

(declare-fun b_and!10571 () Bool)

(assert (=> b!165426 (= tp!82914 (and (=> t!26518 result!8948) (=> t!26520 result!8950) b_and!10571))))

(declare-fun e!99786 () Bool)

(assert (=> b!165426 (= e!99786 (and tp!82912 tp!82914))))

(declare-fun e!99789 () Bool)

(declare-fun tp!82911 () Bool)

(declare-fun b!165425 () Bool)

(assert (=> b!165425 (= e!99789 (and tp!82911 (inv!3641 (tag!679 (h!8220 (t!26455 rules!1920)))) (inv!3645 (transformation!501 (h!8220 (t!26455 rules!1920)))) e!99786))))

(declare-fun b!165424 () Bool)

(declare-fun e!99787 () Bool)

(declare-fun tp!82913 () Bool)

(assert (=> b!165424 (= e!99787 (and e!99789 tp!82913))))

(assert (=> b!164815 (= tp!82794 e!99787)))

(assert (= b!165425 b!165426))

(assert (= b!165424 b!165425))

(assert (= (and b!164815 ((_ is Cons!2823) (t!26455 rules!1920))) b!165424))

(declare-fun m!158211 () Bool)

(assert (=> b!165425 m!158211))

(declare-fun m!158213 () Bool)

(assert (=> b!165425 m!158213))

(declare-fun b!165430 () Bool)

(declare-fun e!99790 () Bool)

(declare-fun tp!82917 () Bool)

(declare-fun tp!82916 () Bool)

(assert (=> b!165430 (= e!99790 (and tp!82917 tp!82916))))

(declare-fun b!165428 () Bool)

(declare-fun tp!82915 () Bool)

(declare-fun tp!82919 () Bool)

(assert (=> b!165428 (= e!99790 (and tp!82915 tp!82919))))

(assert (=> b!164826 (= tp!82798 e!99790)))

(declare-fun b!165427 () Bool)

(assert (=> b!165427 (= e!99790 tp_is_empty!1643)))

(declare-fun b!165429 () Bool)

(declare-fun tp!82918 () Bool)

(assert (=> b!165429 (= e!99790 tp!82918)))

(assert (= (and b!164826 ((_ is ElementMatch!725) (regex!501 (rule!1008 separatorToken!170)))) b!165427))

(assert (= (and b!164826 ((_ is Concat!1249) (regex!501 (rule!1008 separatorToken!170)))) b!165428))

(assert (= (and b!164826 ((_ is Star!725) (regex!501 (rule!1008 separatorToken!170)))) b!165429))

(assert (= (and b!164826 ((_ is Union!725) (regex!501 (rule!1008 separatorToken!170)))) b!165430))

(declare-fun b_lambda!3583 () Bool)

(assert (= b_lambda!3575 (or (and b!164828 b_free!6271) (and b!164817 b_free!6275 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))))) (and b!165426 b_free!6291 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))))) (and b!165393 b_free!6287 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))))) (and b!164831 b_free!6267 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))))) b_lambda!3583)))

(declare-fun b_lambda!3585 () Bool)

(assert (= b_lambda!3577 (or b!164839 b_lambda!3585)))

(declare-fun bs!15857 () Bool)

(declare-fun d!41106 () Bool)

(assert (= bs!15857 (and d!41106 b!164839)))

(assert (=> bs!15857 (= (dynLambda!1025 lambda!4551 (h!8221 tokens!465)) (not (isSeparator!501 (rule!1008 (h!8221 tokens!465)))))))

(assert (=> b!165322 d!41106))

(declare-fun b_lambda!3587 () Bool)

(assert (= b_lambda!3579 (or (and b!164828 b_free!6271) (and b!164817 b_free!6275 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))))) (and b!165426 b_free!6291 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))))) (and b!165393 b_free!6287 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))))) (and b!164831 b_free!6267 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))))) b_lambda!3587)))

(declare-fun b_lambda!3589 () Bool)

(assert (= b_lambda!3581 (or (and b!164817 b_free!6275 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) (and b!165393 b_free!6287 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) (and b!165426 b_free!6291 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) (and b!164831 b_free!6267) (and b!164828 b_free!6271 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) b_lambda!3589)))

(declare-fun b_lambda!3591 () Bool)

(assert (= b_lambda!3573 (or b!164821 b_lambda!3591)))

(declare-fun bs!15858 () Bool)

(declare-fun d!41108 () Bool)

(assert (= bs!15858 (and d!41108 b!164821)))

(assert (=> bs!15858 (= (dynLambda!1025 lambda!4552 (h!8221 tokens!465)) (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (h!8221 tokens!465)))))

(assert (=> bs!15858 m!157219))

(assert (=> d!41046 d!41108))

(declare-fun b_lambda!3593 () Bool)

(assert (= b_lambda!3571 (or (and b!164817 b_free!6275 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) (and b!165393 b_free!6287 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) (and b!165426 b_free!6291 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) (and b!164831 b_free!6267) (and b!164828 b_free!6271 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) b_lambda!3593)))

(check-sat (not b!165372) (not d!40986) (not b_next!6271) (not b_next!6269) (not d!41048) (not b!165070) (not b!165354) (not b!165290) (not b!165242) (not b!165379) (not b!165410) (not b!165072) (not bm!7033) (not b!165001) (not b_next!6275) (not b!165243) (not b_lambda!3585) (not b!165281) (not b!165295) (not b!165411) b_and!10497 (not b!165345) (not b!165155) (not b_next!6265) (not b!165305) (not d!41046) (not b!165323) (not b!165392) (not d!41086) (not d!41034) (not b!165390) (not b!165112) (not d!41018) b_and!10565 (not b!165315) (not b!165141) (not b!165352) (not b!165325) (not d!41088) (not b!165430) (not bm!7078) (not bm!7064) (not b_lambda!3587) (not bm!7076) (not d!41004) (not b!165274) (not b!164998) (not b!165348) (not d!41022) (not b!165089) (not b_next!6267) (not bm!7032) (not b!165296) (not d!41092) (not tb!6299) (not b!165074) (not b!165273) (not b!165114) (not d!40990) (not b_lambda!3589) (not b_lambda!3593) (not b!165143) (not b!165075) (not b!165343) (not bs!15858) (not b!165395) (not b!165425) (not d!41070) (not b!165304) (not bm!7077) (not bm!7063) (not b_next!6285) (not b!165334) (not d!41078) (not d!41080) (not d!41066) (not b!165356) (not bm!7082) (not b_lambda!3591) (not b!165363) (not b!165329) (not b!165324) (not b_next!6273) (not d!40914) (not b!165316) (not d!41060) (not b_lambda!3583) (not b_next!6287) (not b!165339) b_and!10559 (not bm!7062) (not b!165367) (not d!41054) (not b!165157) (not b!165289) (not b!165280) (not b!165117) (not d!41098) (not d!41074) (not b!165282) b_and!10505 (not b!165415) (not bm!7061) tp_is_empty!1643 b_and!10501 (not b!165002) (not b!165335) (not b!165429) (not b_next!6289) (not d!41002) (not b!165326) b_and!10567 (not b!164997) (not bm!7081) (not b!165005) (not b!165374) (not b!165140) (not b!165344) (not d!40916) (not b!165298) (not b!165000) (not b!165394) (not d!41072) (not d!41010) (not b!165368) (not b_next!6291) b_and!10563 (not b!165355) (not tb!6293) (not b!165076) (not b!165122) (not b!165414) (not b!165364) (not b!165297) (not b!165279) (not bm!7079) (not bm!7083) (not b!165409) (not b!165301) (not b!165330) (not b!165391) (not d!41104) (not b!165413) (not d!41044) (not b!165359) (not d!41068) (not d!41058) (not bm!7031) (not b!165156) (not d!41090) (not b!165142) (not b!165371) b_and!10571 (not b!165090) (not b!165341) b_and!10561 (not b!165351) (not d!41042) (not b!165428) (not d!41008) (not d!41082) (not d!41094) (not d!41052) (not b!164994) (not b!165424) (not d!41076) (not d!41064) (not b!165244) (not d!41096) b_and!10569)
(check-sat (not b_next!6265) b_and!10565 (not b_next!6267) (not b_next!6285) (not b_next!6273) (not b_next!6287) b_and!10559 b_and!10505 b_and!10501 b_and!10571 b_and!10561 b_and!10569 (not b_next!6271) (not b_next!6269) (not b_next!6275) b_and!10497 (not b_next!6289) b_and!10567 (not b_next!6291) b_and!10563)
(get-model)

(declare-fun d!41124 () Bool)

(assert (=> d!41124 (= (list!1019 call!7038) (list!1022 (c!32900 call!7038)))))

(declare-fun bs!15863 () Bool)

(assert (= bs!15863 d!41124))

(declare-fun m!158241 () Bool)

(assert (=> bs!15863 m!158241))

(assert (=> b!164994 d!41124))

(declare-fun d!41126 () Bool)

(declare-fun lt!51020 () BalanceConc!1656)

(assert (=> d!41126 (= (list!1019 lt!51020) (printList!71 thiss!17480 (list!1023 (singletonSeq!53 call!7036))))))

(assert (=> d!41126 (= lt!51020 (printTailRec!81 thiss!17480 (singletonSeq!53 call!7036) 0 (BalanceConc!1657 Empty!824)))))

(assert (=> d!41126 (= (print!118 thiss!17480 (singletonSeq!53 call!7036)) lt!51020)))

(declare-fun bs!15864 () Bool)

(assert (= bs!15864 d!41126))

(declare-fun m!158243 () Bool)

(assert (=> bs!15864 m!158243))

(assert (=> bs!15864 m!157529))

(declare-fun m!158245 () Bool)

(assert (=> bs!15864 m!158245))

(assert (=> bs!15864 m!158245))

(declare-fun m!158247 () Bool)

(assert (=> bs!15864 m!158247))

(assert (=> bs!15864 m!157529))

(assert (=> bs!15864 m!157531))

(assert (=> b!164994 d!41126))

(declare-fun d!41128 () Bool)

(assert (=> d!41128 (= (list!1019 lt!50816) (list!1022 (c!32900 lt!50816)))))

(declare-fun bs!15865 () Bool)

(assert (= bs!15865 d!41128))

(declare-fun m!158249 () Bool)

(assert (=> bs!15865 m!158249))

(assert (=> b!164994 d!41128))

(declare-fun d!41130 () Bool)

(declare-fun e!99799 () Bool)

(assert (=> d!41130 e!99799))

(declare-fun res!74827 () Bool)

(assert (=> d!41130 (=> (not res!74827) (not e!99799))))

(declare-fun lt!51021 () BalanceConc!1658)

(assert (=> d!41130 (= res!74827 (= (list!1023 lt!51021) (Cons!2824 call!7036 Nil!2824)))))

(assert (=> d!41130 (= lt!51021 (singleton!31 call!7036))))

(assert (=> d!41130 (= (singletonSeq!53 call!7036) lt!51021)))

(declare-fun b!165447 () Bool)

(assert (=> b!165447 (= e!99799 (isBalanced!230 (c!32902 lt!51021)))))

(assert (= (and d!41130 res!74827) b!165447))

(declare-fun m!158251 () Bool)

(assert (=> d!41130 m!158251))

(declare-fun m!158253 () Bool)

(assert (=> d!41130 m!158253))

(declare-fun m!158255 () Bool)

(assert (=> b!165447 m!158255))

(assert (=> b!164994 d!41130))

(declare-fun d!41132 () Bool)

(declare-fun lt!51027 () BalanceConc!1656)

(assert (=> d!41132 (= (list!1019 lt!51027) (printListTailRec!50 thiss!17480 (dropList!82 (singletonSeq!53 call!7036) 0) (list!1019 (BalanceConc!1657 Empty!824))))))

(declare-fun e!99800 () BalanceConc!1656)

(assert (=> d!41132 (= lt!51027 e!99800)))

(declare-fun c!33022 () Bool)

(assert (=> d!41132 (= c!33022 (>= 0 (size!2362 (singletonSeq!53 call!7036))))))

(declare-fun e!99801 () Bool)

(assert (=> d!41132 e!99801))

(declare-fun res!74828 () Bool)

(assert (=> d!41132 (=> (not res!74828) (not e!99801))))

(assert (=> d!41132 (= res!74828 (>= 0 0))))

(assert (=> d!41132 (= (printTailRec!81 thiss!17480 (singletonSeq!53 call!7036) 0 (BalanceConc!1657 Empty!824)) lt!51027)))

(declare-fun b!165448 () Bool)

(assert (=> b!165448 (= e!99801 (<= 0 (size!2362 (singletonSeq!53 call!7036))))))

(declare-fun b!165449 () Bool)

(assert (=> b!165449 (= e!99800 (BalanceConc!1657 Empty!824))))

(declare-fun b!165450 () Bool)

(assert (=> b!165450 (= e!99800 (printTailRec!81 thiss!17480 (singletonSeq!53 call!7036) (+ 0 1) (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 (singletonSeq!53 call!7036) 0)))))))

(declare-fun lt!51028 () List!2834)

(assert (=> b!165450 (= lt!51028 (list!1023 (singletonSeq!53 call!7036)))))

(declare-fun lt!51024 () Unit!2378)

(assert (=> b!165450 (= lt!51024 (lemmaDropApply!122 lt!51028 0))))

(assert (=> b!165450 (= (head!596 (drop!135 lt!51028 0)) (apply!397 lt!51028 0))))

(declare-fun lt!51025 () Unit!2378)

(assert (=> b!165450 (= lt!51025 lt!51024)))

(declare-fun lt!51022 () List!2834)

(assert (=> b!165450 (= lt!51022 (list!1023 (singletonSeq!53 call!7036)))))

(declare-fun lt!51026 () Unit!2378)

(assert (=> b!165450 (= lt!51026 (lemmaDropTail!114 lt!51022 0))))

(assert (=> b!165450 (= (tail!336 (drop!135 lt!51022 0)) (drop!135 lt!51022 (+ 0 1)))))

(declare-fun lt!51023 () Unit!2378)

(assert (=> b!165450 (= lt!51023 lt!51026)))

(assert (= (and d!41132 res!74828) b!165448))

(assert (= (and d!41132 c!33022) b!165449))

(assert (= (and d!41132 (not c!33022)) b!165450))

(declare-fun m!158257 () Bool)

(assert (=> d!41132 m!158257))

(assert (=> d!41132 m!157727))

(assert (=> d!41132 m!157529))

(declare-fun m!158259 () Bool)

(assert (=> d!41132 m!158259))

(declare-fun m!158261 () Bool)

(assert (=> d!41132 m!158261))

(assert (=> d!41132 m!157727))

(declare-fun m!158263 () Bool)

(assert (=> d!41132 m!158263))

(assert (=> d!41132 m!157529))

(assert (=> d!41132 m!158261))

(assert (=> b!165448 m!157529))

(assert (=> b!165448 m!158259))

(declare-fun m!158265 () Bool)

(assert (=> b!165450 m!158265))

(declare-fun m!158267 () Bool)

(assert (=> b!165450 m!158267))

(declare-fun m!158269 () Bool)

(assert (=> b!165450 m!158269))

(declare-fun m!158271 () Bool)

(assert (=> b!165450 m!158271))

(declare-fun m!158273 () Bool)

(assert (=> b!165450 m!158273))

(declare-fun m!158275 () Bool)

(assert (=> b!165450 m!158275))

(declare-fun m!158277 () Bool)

(assert (=> b!165450 m!158277))

(assert (=> b!165450 m!157529))

(declare-fun m!158279 () Bool)

(assert (=> b!165450 m!158279))

(declare-fun m!158281 () Bool)

(assert (=> b!165450 m!158281))

(assert (=> b!165450 m!158275))

(assert (=> b!165450 m!158279))

(assert (=> b!165450 m!158267))

(declare-fun m!158283 () Bool)

(assert (=> b!165450 m!158283))

(assert (=> b!165450 m!157529))

(assert (=> b!165450 m!158245))

(declare-fun m!158285 () Bool)

(assert (=> b!165450 m!158285))

(assert (=> b!165450 m!157529))

(assert (=> b!165450 m!158273))

(assert (=> b!165450 m!158285))

(declare-fun m!158287 () Bool)

(assert (=> b!165450 m!158287))

(assert (=> b!164994 d!41132))

(declare-fun d!41134 () Bool)

(declare-fun isDefined!135 (Option!283) Bool)

(assert (=> d!41134 (isDefined!135 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 call!7038) (list!1019 lt!50816))))))

(declare-fun lt!51179 () Unit!2378)

(declare-fun e!99818 () Unit!2378)

(assert (=> d!41134 (= lt!51179 e!99818)))

(declare-fun c!33034 () Bool)

(declare-fun isEmpty!1166 (Option!283) Bool)

(assert (=> d!41134 (= c!33034 (isEmpty!1166 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 call!7038) (list!1019 lt!50816)))))))

(declare-fun lt!51170 () Unit!2378)

(declare-fun lt!51173 () Unit!2378)

(assert (=> d!41134 (= lt!51170 lt!51173)))

(declare-fun e!99819 () Bool)

(assert (=> d!41134 e!99819))

(declare-fun res!74836 () Bool)

(assert (=> d!41134 (=> (not res!74836) (not e!99819))))

(declare-fun lt!51168 () Token!746)

(declare-datatypes ((Option!285 0))(
  ( (None!284) (Some!284 (v!13709 Rule!802)) )
))
(declare-fun isDefined!136 (Option!285) Bool)

(declare-fun getRuleFromTag!22 (LexerInterface!387 List!2833 String!3695) Option!285)

(assert (=> d!41134 (= res!74836 (isDefined!136 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51168)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!22 (LexerInterface!387 List!2833 List!2832 Token!746) Unit!2378)

(assert (=> d!41134 (= lt!51173 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!22 thiss!17480 rules!1920 (list!1019 call!7038) lt!51168))))

(declare-fun lt!51169 () Unit!2378)

(declare-fun lt!51172 () Unit!2378)

(assert (=> d!41134 (= lt!51169 lt!51172)))

(declare-fun lt!51181 () List!2832)

(declare-fun isPrefix!223 (List!2832 List!2832) Bool)

(assert (=> d!41134 (isPrefix!223 lt!51181 (++!636 (list!1019 call!7038) (list!1019 lt!50816)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!22 (List!2832 List!2832 List!2832) Unit!2378)

(assert (=> d!41134 (= lt!51172 (lemmaPrefixStaysPrefixWhenAddingToSuffix!22 lt!51181 (list!1019 call!7038) (list!1019 lt!50816)))))

(assert (=> d!41134 (= lt!51181 (list!1019 (charsOf!156 lt!51168)))))

(declare-fun lt!51178 () Unit!2378)

(declare-fun lt!51177 () Unit!2378)

(assert (=> d!41134 (= lt!51178 lt!51177)))

(declare-fun lt!51180 () List!2832)

(declare-fun lt!51167 () List!2832)

(assert (=> d!41134 (isPrefix!223 lt!51180 (++!636 lt!51180 lt!51167))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!126 (List!2832 List!2832) Unit!2378)

(assert (=> d!41134 (= lt!51177 (lemmaConcatTwoListThenFirstIsPrefix!126 lt!51180 lt!51167))))

(declare-fun get!769 (Option!283) tuple2!2698)

(assert (=> d!41134 (= lt!51167 (_2!1565 (get!769 (maxPrefix!123 thiss!17480 rules!1920 (list!1019 call!7038)))))))

(assert (=> d!41134 (= lt!51180 (list!1019 (charsOf!156 lt!51168)))))

(assert (=> d!41134 (= lt!51168 (head!596 (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 (list!1019 call!7038)))))))))

(assert (=> d!41134 (not (isEmpty!1156 rules!1920))))

(assert (=> d!41134 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 (list!1019 call!7038) (list!1019 lt!50816)) lt!51179)))

(declare-fun b!165480 () Bool)

(declare-fun res!74837 () Bool)

(assert (=> b!165480 (=> (not res!74837) (not e!99819))))

(declare-fun matchR!79 (Regex!725 List!2832) Bool)

(declare-fun get!770 (Option!285) Rule!802)

(assert (=> b!165480 (= res!74837 (matchR!79 (regex!501 (get!770 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51168))))) (list!1019 (charsOf!156 lt!51168))))))

(declare-fun b!165481 () Bool)

(assert (=> b!165481 (= e!99819 (= (rule!1008 lt!51168) (get!770 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51168))))))))

(declare-fun b!165483 () Bool)

(declare-fun Unit!2400 () Unit!2378)

(assert (=> b!165483 (= e!99818 Unit!2400)))

(declare-fun b!165482 () Bool)

(declare-fun Unit!2401 () Unit!2378)

(assert (=> b!165482 (= e!99818 Unit!2401)))

(declare-fun lt!51166 () List!2832)

(assert (=> b!165482 (= lt!51166 (++!636 (list!1019 call!7038) (list!1019 lt!50816)))))

(declare-fun lt!51175 () Unit!2378)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!22 (LexerInterface!387 Rule!802 List!2833 List!2832) Unit!2378)

(assert (=> b!165482 (= lt!51175 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!22 thiss!17480 (rule!1008 lt!51168) rules!1920 lt!51166))))

(declare-fun maxPrefixOneRule!67 (LexerInterface!387 Rule!802 List!2832) Option!283)

(assert (=> b!165482 (isEmpty!1166 (maxPrefixOneRule!67 thiss!17480 (rule!1008 lt!51168) lt!51166))))

(declare-fun lt!51171 () Unit!2378)

(assert (=> b!165482 (= lt!51171 lt!51175)))

(declare-fun lt!51176 () List!2832)

(assert (=> b!165482 (= lt!51176 (list!1019 (charsOf!156 lt!51168)))))

(declare-fun lt!51174 () Unit!2378)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!22 (LexerInterface!387 Rule!802 List!2832 List!2832) Unit!2378)

(assert (=> b!165482 (= lt!51174 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!22 thiss!17480 (rule!1008 lt!51168) lt!51176 (++!636 (list!1019 call!7038) (list!1019 lt!50816))))))

(assert (=> b!165482 (not (matchR!79 (regex!501 (rule!1008 lt!51168)) lt!51176))))

(declare-fun lt!51165 () Unit!2378)

(assert (=> b!165482 (= lt!51165 lt!51174)))

(assert (=> b!165482 false))

(assert (= (and d!41134 res!74836) b!165480))

(assert (= (and b!165480 res!74837) b!165481))

(assert (= (and d!41134 c!33034) b!165482))

(assert (= (and d!41134 (not c!33034)) b!165483))

(declare-fun m!158377 () Bool)

(assert (=> d!41134 m!158377))

(assert (=> d!41134 m!158377))

(declare-fun m!158379 () Bool)

(assert (=> d!41134 m!158379))

(declare-fun m!158381 () Bool)

(assert (=> d!41134 m!158381))

(declare-fun m!158383 () Bool)

(assert (=> d!41134 m!158383))

(assert (=> d!41134 m!157523))

(declare-fun m!158385 () Bool)

(assert (=> d!41134 m!158385))

(declare-fun m!158387 () Bool)

(assert (=> d!41134 m!158387))

(declare-fun m!158389 () Bool)

(assert (=> d!41134 m!158389))

(assert (=> d!41134 m!157523))

(assert (=> d!41134 m!157525))

(declare-fun m!158391 () Bool)

(assert (=> d!41134 m!158391))

(assert (=> d!41134 m!157523))

(declare-fun m!158393 () Bool)

(assert (=> d!41134 m!158393))

(declare-fun m!158395 () Bool)

(assert (=> d!41134 m!158395))

(assert (=> d!41134 m!158381))

(declare-fun m!158397 () Bool)

(assert (=> d!41134 m!158397))

(declare-fun m!158399 () Bool)

(assert (=> d!41134 m!158399))

(declare-fun m!158401 () Bool)

(assert (=> d!41134 m!158401))

(declare-fun m!158403 () Bool)

(assert (=> d!41134 m!158403))

(declare-fun m!158405 () Bool)

(assert (=> d!41134 m!158405))

(assert (=> d!41134 m!157523))

(assert (=> d!41134 m!157525))

(declare-fun m!158407 () Bool)

(assert (=> d!41134 m!158407))

(assert (=> d!41134 m!158407))

(declare-fun m!158409 () Bool)

(assert (=> d!41134 m!158409))

(assert (=> d!41134 m!158385))

(declare-fun m!158411 () Bool)

(assert (=> d!41134 m!158411))

(assert (=> d!41134 m!157523))

(assert (=> d!41134 m!158387))

(assert (=> d!41134 m!158407))

(assert (=> d!41134 m!158381))

(assert (=> d!41134 m!158403))

(assert (=> d!41134 m!158395))

(declare-fun m!158413 () Bool)

(assert (=> d!41134 m!158413))

(assert (=> d!41134 m!157245))

(assert (=> d!41134 m!158401))

(declare-fun m!158415 () Bool)

(assert (=> d!41134 m!158415))

(assert (=> b!165480 m!158377))

(assert (=> b!165480 m!158377))

(assert (=> b!165480 m!158379))

(assert (=> b!165480 m!158379))

(declare-fun m!158417 () Bool)

(assert (=> b!165480 m!158417))

(assert (=> b!165480 m!158403))

(assert (=> b!165480 m!158403))

(declare-fun m!158419 () Bool)

(assert (=> b!165480 m!158419))

(assert (=> b!165481 m!158403))

(assert (=> b!165481 m!158403))

(assert (=> b!165481 m!158419))

(assert (=> b!165482 m!158377))

(assert (=> b!165482 m!158379))

(declare-fun m!158421 () Bool)

(assert (=> b!165482 m!158421))

(assert (=> b!165482 m!157523))

(assert (=> b!165482 m!157525))

(assert (=> b!165482 m!158407))

(declare-fun m!158423 () Bool)

(assert (=> b!165482 m!158423))

(declare-fun m!158425 () Bool)

(assert (=> b!165482 m!158425))

(assert (=> b!165482 m!158423))

(assert (=> b!165482 m!158407))

(declare-fun m!158427 () Bool)

(assert (=> b!165482 m!158427))

(declare-fun m!158429 () Bool)

(assert (=> b!165482 m!158429))

(assert (=> b!165482 m!158377))

(assert (=> b!164994 d!41134))

(declare-fun d!41138 () Bool)

(declare-fun lt!51182 () BalanceConc!1656)

(assert (=> d!41138 (= (list!1019 lt!51182) (originalCharacters!544 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086))))))

(assert (=> d!41138 (= lt!51182 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086))))) (value!18594 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))))

(assert (=> d!41138 (= (charsOf!156 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086))) lt!51182)))

(declare-fun b_lambda!3595 () Bool)

(assert (=> (not b_lambda!3595) (not d!41138)))

(declare-fun t!26525 () Bool)

(declare-fun tb!6313 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))) t!26525) tb!6313))

(declare-fun tp!82920 () Bool)

(declare-fun e!99820 () Bool)

(declare-fun b!165484 () Bool)

(assert (=> b!165484 (= e!99820 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086))))) (value!18594 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))) tp!82920))))

(declare-fun result!8952 () Bool)

(assert (=> tb!6313 (= result!8952 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086))))) (value!18594 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086))))) e!99820))))

(assert (= tb!6313 b!165484))

(declare-fun m!158431 () Bool)

(assert (=> b!165484 m!158431))

(declare-fun m!158433 () Bool)

(assert (=> tb!6313 m!158433))

(assert (=> d!41138 t!26525))

(declare-fun b_and!10573 () Bool)

(assert (= b_and!10559 (and (=> t!26525 result!8952) b_and!10573)))

(declare-fun tb!6315 () Bool)

(declare-fun t!26527 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))) t!26527) tb!6315))

(declare-fun result!8954 () Bool)

(assert (= result!8954 result!8952))

(assert (=> d!41138 t!26527))

(declare-fun b_and!10575 () Bool)

(assert (= b_and!10563 (and (=> t!26527 result!8954) b_and!10575)))

(declare-fun tb!6317 () Bool)

(declare-fun t!26529 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))) t!26529) tb!6317))

(declare-fun result!8956 () Bool)

(assert (= result!8956 result!8952))

(assert (=> d!41138 t!26529))

(declare-fun b_and!10577 () Bool)

(assert (= b_and!10561 (and (=> t!26529 result!8956) b_and!10577)))

(declare-fun t!26531 () Bool)

(declare-fun tb!6319 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))) t!26531) tb!6319))

(declare-fun result!8958 () Bool)

(assert (= result!8958 result!8952))

(assert (=> d!41138 t!26531))

(declare-fun b_and!10579 () Bool)

(assert (= b_and!10571 (and (=> t!26531 result!8958) b_and!10579)))

(declare-fun tb!6321 () Bool)

(declare-fun t!26533 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))) t!26533) tb!6321))

(declare-fun result!8960 () Bool)

(assert (= result!8960 result!8952))

(assert (=> d!41138 t!26533))

(declare-fun b_and!10581 () Bool)

(assert (= b_and!10567 (and (=> t!26533 result!8960) b_and!10581)))

(declare-fun m!158435 () Bool)

(assert (=> d!41138 m!158435))

(declare-fun m!158437 () Bool)

(assert (=> d!41138 m!158437))

(assert (=> bm!7081 d!41138))

(declare-fun d!41140 () Bool)

(declare-fun lt!51183 () BalanceConc!1656)

(assert (=> d!41140 (= (list!1019 lt!51183) (printList!71 thiss!17480 (list!1023 (singletonSeq!53 (h!8221 (t!26456 tokens!465))))))))

(assert (=> d!41140 (= lt!51183 (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 (t!26456 tokens!465))) 0 (BalanceConc!1657 Empty!824)))))

(assert (=> d!41140 (= (print!118 thiss!17480 (singletonSeq!53 (h!8221 (t!26456 tokens!465)))) lt!51183)))

(declare-fun bs!15866 () Bool)

(assert (= bs!15866 d!41140))

(declare-fun m!158439 () Bool)

(assert (=> bs!15866 m!158439))

(assert (=> bs!15866 m!158079))

(declare-fun m!158441 () Bool)

(assert (=> bs!15866 m!158441))

(assert (=> bs!15866 m!158441))

(declare-fun m!158443 () Bool)

(assert (=> bs!15866 m!158443))

(assert (=> bs!15866 m!158079))

(assert (=> bs!15866 m!158083))

(assert (=> b!165341 d!41140))

(declare-fun d!41142 () Bool)

(declare-fun e!99821 () Bool)

(assert (=> d!41142 e!99821))

(declare-fun res!74838 () Bool)

(assert (=> d!41142 (=> (not res!74838) (not e!99821))))

(declare-fun lt!51184 () BalanceConc!1658)

(assert (=> d!41142 (= res!74838 (= (list!1023 lt!51184) (Cons!2824 (h!8221 (t!26456 tokens!465)) Nil!2824)))))

(assert (=> d!41142 (= lt!51184 (singleton!31 (h!8221 (t!26456 tokens!465))))))

(assert (=> d!41142 (= (singletonSeq!53 (h!8221 (t!26456 tokens!465))) lt!51184)))

(declare-fun b!165485 () Bool)

(assert (=> b!165485 (= e!99821 (isBalanced!230 (c!32902 lt!51184)))))

(assert (= (and d!41142 res!74838) b!165485))

(declare-fun m!158445 () Bool)

(assert (=> d!41142 m!158445))

(declare-fun m!158447 () Bool)

(assert (=> d!41142 m!158447))

(declare-fun m!158449 () Bool)

(assert (=> b!165485 m!158449))

(assert (=> b!165341 d!41142))

(declare-fun d!41144 () Bool)

(declare-fun lt!51190 () BalanceConc!1656)

(assert (=> d!41144 (= (list!1019 lt!51190) (printListTailRec!50 thiss!17480 (dropList!82 (singletonSeq!53 (h!8221 (t!26456 tokens!465))) 0) (list!1019 (BalanceConc!1657 Empty!824))))))

(declare-fun e!99822 () BalanceConc!1656)

(assert (=> d!41144 (= lt!51190 e!99822)))

(declare-fun c!33035 () Bool)

(assert (=> d!41144 (= c!33035 (>= 0 (size!2362 (singletonSeq!53 (h!8221 (t!26456 tokens!465))))))))

(declare-fun e!99823 () Bool)

(assert (=> d!41144 e!99823))

(declare-fun res!74839 () Bool)

(assert (=> d!41144 (=> (not res!74839) (not e!99823))))

(assert (=> d!41144 (= res!74839 (>= 0 0))))

(assert (=> d!41144 (= (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 (t!26456 tokens!465))) 0 (BalanceConc!1657 Empty!824)) lt!51190)))

(declare-fun b!165486 () Bool)

(assert (=> b!165486 (= e!99823 (<= 0 (size!2362 (singletonSeq!53 (h!8221 (t!26456 tokens!465))))))))

(declare-fun b!165487 () Bool)

(assert (=> b!165487 (= e!99822 (BalanceConc!1657 Empty!824))))

(declare-fun b!165488 () Bool)

(assert (=> b!165488 (= e!99822 (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 (t!26456 tokens!465))) (+ 0 1) (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 (singletonSeq!53 (h!8221 (t!26456 tokens!465))) 0)))))))

(declare-fun lt!51191 () List!2834)

(assert (=> b!165488 (= lt!51191 (list!1023 (singletonSeq!53 (h!8221 (t!26456 tokens!465)))))))

(declare-fun lt!51187 () Unit!2378)

(assert (=> b!165488 (= lt!51187 (lemmaDropApply!122 lt!51191 0))))

(assert (=> b!165488 (= (head!596 (drop!135 lt!51191 0)) (apply!397 lt!51191 0))))

(declare-fun lt!51188 () Unit!2378)

(assert (=> b!165488 (= lt!51188 lt!51187)))

(declare-fun lt!51185 () List!2834)

(assert (=> b!165488 (= lt!51185 (list!1023 (singletonSeq!53 (h!8221 (t!26456 tokens!465)))))))

(declare-fun lt!51189 () Unit!2378)

(assert (=> b!165488 (= lt!51189 (lemmaDropTail!114 lt!51185 0))))

(assert (=> b!165488 (= (tail!336 (drop!135 lt!51185 0)) (drop!135 lt!51185 (+ 0 1)))))

(declare-fun lt!51186 () Unit!2378)

(assert (=> b!165488 (= lt!51186 lt!51189)))

(assert (= (and d!41144 res!74839) b!165486))

(assert (= (and d!41144 c!33035) b!165487))

(assert (= (and d!41144 (not c!33035)) b!165488))

(declare-fun m!158451 () Bool)

(assert (=> d!41144 m!158451))

(assert (=> d!41144 m!157727))

(assert (=> d!41144 m!158079))

(declare-fun m!158453 () Bool)

(assert (=> d!41144 m!158453))

(declare-fun m!158455 () Bool)

(assert (=> d!41144 m!158455))

(assert (=> d!41144 m!157727))

(declare-fun m!158457 () Bool)

(assert (=> d!41144 m!158457))

(assert (=> d!41144 m!158079))

(assert (=> d!41144 m!158455))

(assert (=> b!165486 m!158079))

(assert (=> b!165486 m!158453))

(declare-fun m!158459 () Bool)

(assert (=> b!165488 m!158459))

(declare-fun m!158461 () Bool)

(assert (=> b!165488 m!158461))

(declare-fun m!158463 () Bool)

(assert (=> b!165488 m!158463))

(declare-fun m!158465 () Bool)

(assert (=> b!165488 m!158465))

(declare-fun m!158467 () Bool)

(assert (=> b!165488 m!158467))

(declare-fun m!158469 () Bool)

(assert (=> b!165488 m!158469))

(declare-fun m!158471 () Bool)

(assert (=> b!165488 m!158471))

(assert (=> b!165488 m!158079))

(declare-fun m!158473 () Bool)

(assert (=> b!165488 m!158473))

(declare-fun m!158475 () Bool)

(assert (=> b!165488 m!158475))

(assert (=> b!165488 m!158469))

(assert (=> b!165488 m!158473))

(assert (=> b!165488 m!158461))

(declare-fun m!158477 () Bool)

(assert (=> b!165488 m!158477))

(assert (=> b!165488 m!158079))

(assert (=> b!165488 m!158441))

(declare-fun m!158479 () Bool)

(assert (=> b!165488 m!158479))

(assert (=> b!165488 m!158079))

(assert (=> b!165488 m!158467))

(assert (=> b!165488 m!158479))

(declare-fun m!158481 () Bool)

(assert (=> b!165488 m!158481))

(assert (=> b!165341 d!41144))

(declare-fun d!41146 () Bool)

(assert (=> d!41146 (isDefined!135 (maxPrefix!123 thiss!17480 rules!1920 (++!636 call!7082 lt!50988)))))

(declare-fun lt!51206 () Unit!2378)

(declare-fun e!99824 () Unit!2378)

(assert (=> d!41146 (= lt!51206 e!99824)))

(declare-fun c!33036 () Bool)

(assert (=> d!41146 (= c!33036 (isEmpty!1166 (maxPrefix!123 thiss!17480 rules!1920 (++!636 call!7082 lt!50988))))))

(declare-fun lt!51197 () Unit!2378)

(declare-fun lt!51200 () Unit!2378)

(assert (=> d!41146 (= lt!51197 lt!51200)))

(declare-fun e!99825 () Bool)

(assert (=> d!41146 e!99825))

(declare-fun res!74840 () Bool)

(assert (=> d!41146 (=> (not res!74840) (not e!99825))))

(declare-fun lt!51195 () Token!746)

(assert (=> d!41146 (= res!74840 (isDefined!136 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51195)))))))

(assert (=> d!41146 (= lt!51200 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!22 thiss!17480 rules!1920 call!7082 lt!51195))))

(declare-fun lt!51196 () Unit!2378)

(declare-fun lt!51199 () Unit!2378)

(assert (=> d!41146 (= lt!51196 lt!51199)))

(declare-fun lt!51208 () List!2832)

(assert (=> d!41146 (isPrefix!223 lt!51208 (++!636 call!7082 lt!50988))))

(assert (=> d!41146 (= lt!51199 (lemmaPrefixStaysPrefixWhenAddingToSuffix!22 lt!51208 call!7082 lt!50988))))

(assert (=> d!41146 (= lt!51208 (list!1019 (charsOf!156 lt!51195)))))

(declare-fun lt!51205 () Unit!2378)

(declare-fun lt!51204 () Unit!2378)

(assert (=> d!41146 (= lt!51205 lt!51204)))

(declare-fun lt!51207 () List!2832)

(declare-fun lt!51194 () List!2832)

(assert (=> d!41146 (isPrefix!223 lt!51207 (++!636 lt!51207 lt!51194))))

(assert (=> d!41146 (= lt!51204 (lemmaConcatTwoListThenFirstIsPrefix!126 lt!51207 lt!51194))))

(assert (=> d!41146 (= lt!51194 (_2!1565 (get!769 (maxPrefix!123 thiss!17480 rules!1920 call!7082))))))

(assert (=> d!41146 (= lt!51207 (list!1019 (charsOf!156 lt!51195)))))

(assert (=> d!41146 (= lt!51195 (head!596 (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 call!7082))))))))

(assert (=> d!41146 (not (isEmpty!1156 rules!1920))))

(assert (=> d!41146 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 call!7082 lt!50988) lt!51206)))

(declare-fun b!165489 () Bool)

(declare-fun res!74841 () Bool)

(assert (=> b!165489 (=> (not res!74841) (not e!99825))))

(assert (=> b!165489 (= res!74841 (matchR!79 (regex!501 (get!770 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51195))))) (list!1019 (charsOf!156 lt!51195))))))

(declare-fun b!165490 () Bool)

(assert (=> b!165490 (= e!99825 (= (rule!1008 lt!51195) (get!770 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51195))))))))

(declare-fun b!165492 () Bool)

(declare-fun Unit!2402 () Unit!2378)

(assert (=> b!165492 (= e!99824 Unit!2402)))

(declare-fun b!165491 () Bool)

(declare-fun Unit!2403 () Unit!2378)

(assert (=> b!165491 (= e!99824 Unit!2403)))

(declare-fun lt!51193 () List!2832)

(assert (=> b!165491 (= lt!51193 (++!636 call!7082 lt!50988))))

(declare-fun lt!51202 () Unit!2378)

(assert (=> b!165491 (= lt!51202 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!22 thiss!17480 (rule!1008 lt!51195) rules!1920 lt!51193))))

(assert (=> b!165491 (isEmpty!1166 (maxPrefixOneRule!67 thiss!17480 (rule!1008 lt!51195) lt!51193))))

(declare-fun lt!51198 () Unit!2378)

(assert (=> b!165491 (= lt!51198 lt!51202)))

(declare-fun lt!51203 () List!2832)

(assert (=> b!165491 (= lt!51203 (list!1019 (charsOf!156 lt!51195)))))

(declare-fun lt!51201 () Unit!2378)

(assert (=> b!165491 (= lt!51201 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!22 thiss!17480 (rule!1008 lt!51195) lt!51203 (++!636 call!7082 lt!50988)))))

(assert (=> b!165491 (not (matchR!79 (regex!501 (rule!1008 lt!51195)) lt!51203))))

(declare-fun lt!51192 () Unit!2378)

(assert (=> b!165491 (= lt!51192 lt!51201)))

(assert (=> b!165491 false))

(assert (= (and d!41146 res!74840) b!165489))

(assert (= (and b!165489 res!74841) b!165490))

(assert (= (and d!41146 c!33036) b!165491))

(assert (= (and d!41146 (not c!33036)) b!165492))

(declare-fun m!158483 () Bool)

(assert (=> d!41146 m!158483))

(assert (=> d!41146 m!158483))

(declare-fun m!158485 () Bool)

(assert (=> d!41146 m!158485))

(declare-fun m!158487 () Bool)

(assert (=> d!41146 m!158487))

(declare-fun m!158489 () Bool)

(assert (=> d!41146 m!158489))

(declare-fun m!158491 () Bool)

(assert (=> d!41146 m!158491))

(declare-fun m!158493 () Bool)

(assert (=> d!41146 m!158493))

(declare-fun m!158495 () Bool)

(assert (=> d!41146 m!158495))

(declare-fun m!158497 () Bool)

(assert (=> d!41146 m!158497))

(declare-fun m!158499 () Bool)

(assert (=> d!41146 m!158499))

(declare-fun m!158501 () Bool)

(assert (=> d!41146 m!158501))

(assert (=> d!41146 m!158487))

(declare-fun m!158503 () Bool)

(assert (=> d!41146 m!158503))

(declare-fun m!158505 () Bool)

(assert (=> d!41146 m!158505))

(declare-fun m!158507 () Bool)

(assert (=> d!41146 m!158507))

(declare-fun m!158509 () Bool)

(assert (=> d!41146 m!158509))

(declare-fun m!158511 () Bool)

(assert (=> d!41146 m!158511))

(declare-fun m!158513 () Bool)

(assert (=> d!41146 m!158513))

(assert (=> d!41146 m!158513))

(declare-fun m!158515 () Bool)

(assert (=> d!41146 m!158515))

(assert (=> d!41146 m!158491))

(declare-fun m!158517 () Bool)

(assert (=> d!41146 m!158517))

(assert (=> d!41146 m!158493))

(assert (=> d!41146 m!158513))

(assert (=> d!41146 m!158487))

(assert (=> d!41146 m!158509))

(assert (=> d!41146 m!158501))

(declare-fun m!158519 () Bool)

(assert (=> d!41146 m!158519))

(assert (=> d!41146 m!157245))

(assert (=> d!41146 m!158507))

(declare-fun m!158521 () Bool)

(assert (=> d!41146 m!158521))

(assert (=> b!165489 m!158483))

(assert (=> b!165489 m!158483))

(assert (=> b!165489 m!158485))

(assert (=> b!165489 m!158485))

(declare-fun m!158523 () Bool)

(assert (=> b!165489 m!158523))

(assert (=> b!165489 m!158509))

(assert (=> b!165489 m!158509))

(declare-fun m!158525 () Bool)

(assert (=> b!165489 m!158525))

(assert (=> b!165490 m!158509))

(assert (=> b!165490 m!158509))

(assert (=> b!165490 m!158525))

(assert (=> b!165491 m!158483))

(assert (=> b!165491 m!158485))

(declare-fun m!158527 () Bool)

(assert (=> b!165491 m!158527))

(assert (=> b!165491 m!158513))

(declare-fun m!158529 () Bool)

(assert (=> b!165491 m!158529))

(declare-fun m!158531 () Bool)

(assert (=> b!165491 m!158531))

(assert (=> b!165491 m!158529))

(assert (=> b!165491 m!158513))

(declare-fun m!158533 () Bool)

(assert (=> b!165491 m!158533))

(declare-fun m!158535 () Bool)

(assert (=> b!165491 m!158535))

(assert (=> b!165491 m!158483))

(assert (=> b!165341 d!41146))

(declare-fun d!41148 () Bool)

(declare-fun lt!51211 () Int)

(assert (=> d!41148 (>= lt!51211 0)))

(declare-fun e!99828 () Int)

(assert (=> d!41148 (= lt!51211 e!99828)))

(declare-fun c!33039 () Bool)

(assert (=> d!41148 (= c!33039 ((_ is Nil!2822) lt!51012))))

(assert (=> d!41148 (= (size!2365 lt!51012) lt!51211)))

(declare-fun b!165497 () Bool)

(assert (=> b!165497 (= e!99828 0)))

(declare-fun b!165498 () Bool)

(assert (=> b!165498 (= e!99828 (+ 1 (size!2365 (t!26454 lt!51012))))))

(assert (= (and d!41148 c!33039) b!165497))

(assert (= (and d!41148 (not c!33039)) b!165498))

(declare-fun m!158537 () Bool)

(assert (=> b!165498 m!158537))

(assert (=> b!165372 d!41148))

(declare-fun d!41150 () Bool)

(declare-fun lt!51212 () Int)

(assert (=> d!41150 (>= lt!51212 0)))

(declare-fun e!99829 () Int)

(assert (=> d!41150 (= lt!51212 e!99829)))

(declare-fun c!33040 () Bool)

(assert (=> d!41150 (= c!33040 ((_ is Nil!2822) lt!50724))))

(assert (=> d!41150 (= (size!2365 lt!50724) lt!51212)))

(declare-fun b!165499 () Bool)

(assert (=> b!165499 (= e!99829 0)))

(declare-fun b!165500 () Bool)

(assert (=> b!165500 (= e!99829 (+ 1 (size!2365 (t!26454 lt!50724))))))

(assert (= (and d!41150 c!33040) b!165499))

(assert (= (and d!41150 (not c!33040)) b!165500))

(declare-fun m!158539 () Bool)

(assert (=> b!165500 m!158539))

(assert (=> b!165372 d!41150))

(declare-fun d!41152 () Bool)

(declare-fun lt!51213 () Int)

(assert (=> d!41152 (>= lt!51213 0)))

(declare-fun e!99830 () Int)

(assert (=> d!41152 (= lt!51213 e!99830)))

(declare-fun c!33041 () Bool)

(assert (=> d!41152 (= c!33041 ((_ is Nil!2822) lt!50718))))

(assert (=> d!41152 (= (size!2365 lt!50718) lt!51213)))

(declare-fun b!165501 () Bool)

(assert (=> b!165501 (= e!99830 0)))

(declare-fun b!165502 () Bool)

(assert (=> b!165502 (= e!99830 (+ 1 (size!2365 (t!26454 lt!50718))))))

(assert (= (and d!41152 c!33041) b!165501))

(assert (= (and d!41152 (not c!33041)) b!165502))

(declare-fun m!158541 () Bool)

(assert (=> b!165502 m!158541))

(assert (=> b!165372 d!41152))

(declare-fun d!41154 () Bool)

(declare-fun e!99833 () Bool)

(assert (=> d!41154 e!99833))

(declare-fun res!74844 () Bool)

(assert (=> d!41154 (=> (not res!74844) (not e!99833))))

(declare-fun lt!51216 () BalanceConc!1656)

(assert (=> d!41154 (= res!74844 (= (list!1019 lt!51216) lt!50714))))

(declare-fun fromList!105 (List!2832) Conc!824)

(assert (=> d!41154 (= lt!51216 (BalanceConc!1657 (fromList!105 lt!50714)))))

(assert (=> d!41154 (= (fromListB!152 lt!50714) lt!51216)))

(declare-fun b!165505 () Bool)

(declare-fun isBalanced!232 (Conc!824) Bool)

(assert (=> b!165505 (= e!99833 (isBalanced!232 (fromList!105 lt!50714)))))

(assert (= (and d!41154 res!74844) b!165505))

(declare-fun m!158543 () Bool)

(assert (=> d!41154 m!158543))

(declare-fun m!158545 () Bool)

(assert (=> d!41154 m!158545))

(assert (=> b!165505 m!158545))

(assert (=> b!165505 m!158545))

(declare-fun m!158547 () Bool)

(assert (=> b!165505 m!158547))

(assert (=> d!41066 d!41154))

(declare-fun b!165514 () Bool)

(declare-fun e!99838 () List!2832)

(assert (=> b!165514 (= e!99838 Nil!2822)))

(declare-fun b!165516 () Bool)

(declare-fun e!99839 () List!2832)

(declare-fun list!1026 (IArray!1649) List!2832)

(assert (=> b!165516 (= e!99839 (list!1026 (xs!3419 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!165517 () Bool)

(assert (=> b!165517 (= e!99839 (++!636 (list!1022 (left!2133 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0)))) (list!1022 (right!2463 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0))))))))

(declare-fun c!33047 () Bool)

(declare-fun d!41156 () Bool)

(assert (=> d!41156 (= c!33047 ((_ is Empty!824) (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0))))))

(assert (=> d!41156 (= (list!1022 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0))) e!99838)))

(declare-fun b!165515 () Bool)

(assert (=> b!165515 (= e!99838 e!99839)))

(declare-fun c!33048 () Bool)

(assert (=> b!165515 (= c!33048 ((_ is Leaf!1414) (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 0))))))

(assert (= (and d!41156 c!33047) b!165514))

(assert (= (and d!41156 (not c!33047)) b!165515))

(assert (= (and b!165515 c!33048) b!165516))

(assert (= (and b!165515 (not c!33048)) b!165517))

(declare-fun m!158549 () Bool)

(assert (=> b!165516 m!158549))

(declare-fun m!158551 () Bool)

(assert (=> b!165517 m!158551))

(declare-fun m!158553 () Bool)

(assert (=> b!165517 m!158553))

(assert (=> b!165517 m!158551))

(assert (=> b!165517 m!158553))

(declare-fun m!158555 () Bool)

(assert (=> b!165517 m!158555))

(assert (=> d!41078 d!41156))

(declare-fun d!41158 () Bool)

(assert (=> d!41158 true))

(declare-fun lambda!4598 () Int)

(declare-fun order!1463 () Int)

(declare-fun dynLambda!1026 (Int Int) Int)

(assert (=> d!41158 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (dynLambda!1026 order!1463 lambda!4598))))

(declare-fun Forall2!109 (Int) Bool)

(assert (=> d!41158 (= (equivClasses!156 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (Forall2!109 lambda!4598))))

(declare-fun bs!15867 () Bool)

(assert (= bs!15867 d!41158))

(declare-fun m!158557 () Bool)

(assert (=> bs!15867 m!158557))

(assert (=> b!165301 d!41158))

(assert (=> bm!7062 d!41092))

(declare-fun d!41160 () Bool)

(declare-fun res!74851 () Bool)

(declare-fun e!99846 () Bool)

(assert (=> d!41160 (=> res!74851 e!99846)))

(assert (=> d!41160 (= res!74851 ((_ is Nil!2823) rules!1920))))

(assert (=> d!41160 (= (noDuplicateTag!139 thiss!17480 rules!1920 Nil!2826) e!99846)))

(declare-fun b!165526 () Bool)

(declare-fun e!99847 () Bool)

(assert (=> b!165526 (= e!99846 e!99847)))

(declare-fun res!74852 () Bool)

(assert (=> b!165526 (=> (not res!74852) (not e!99847))))

(declare-fun contains!453 (List!2836 String!3695) Bool)

(assert (=> b!165526 (= res!74852 (not (contains!453 Nil!2826 (tag!679 (h!8220 rules!1920)))))))

(declare-fun b!165527 () Bool)

(assert (=> b!165527 (= e!99847 (noDuplicateTag!139 thiss!17480 (t!26455 rules!1920) (Cons!2826 (tag!679 (h!8220 rules!1920)) Nil!2826)))))

(assert (= (and d!41160 (not res!74851)) b!165526))

(assert (= (and b!165526 res!74852) b!165527))

(declare-fun m!158559 () Bool)

(assert (=> b!165526 m!158559))

(declare-fun m!158561 () Bool)

(assert (=> b!165527 m!158561))

(assert (=> b!165304 d!41160))

(declare-fun d!41162 () Bool)

(declare-fun charsToBigInt!1 (List!2831) Int)

(assert (=> d!41162 (= (inv!17 (value!18594 separatorToken!170)) (= (charsToBigInt!1 (text!4109 (value!18594 separatorToken!170))) (value!18586 (value!18594 separatorToken!170))))))

(declare-fun bs!15868 () Bool)

(assert (= bs!15868 d!41162))

(declare-fun m!158563 () Bool)

(assert (=> bs!15868 m!158563))

(assert (=> b!165281 d!41162))

(declare-fun d!41164 () Bool)

(assert (=> d!41164 (= (list!1019 (ite c!33006 call!7084 call!7081)) (list!1022 (c!32900 (ite c!33006 call!7084 call!7081))))))

(declare-fun bs!15869 () Bool)

(assert (= bs!15869 d!41164))

(declare-fun m!158565 () Bool)

(assert (=> bs!15869 m!158565))

(assert (=> bm!7078 d!41164))

(declare-fun d!41166 () Bool)

(declare-fun list!1027 (Conc!825) List!2834)

(assert (=> d!41166 (= (list!1023 (_1!1561 lt!50937)) (list!1027 (c!32902 (_1!1561 lt!50937))))))

(declare-fun bs!15870 () Bool)

(assert (= bs!15870 d!41166))

(declare-fun m!158567 () Bool)

(assert (=> bs!15870 m!158567))

(assert (=> b!165142 d!41166))

(declare-fun b!165542 () Bool)

(declare-fun e!99858 () tuple2!2702)

(declare-fun lt!51245 () Option!283)

(declare-fun lt!51247 () tuple2!2702)

(assert (=> b!165542 (= e!99858 (tuple2!2703 (Cons!2824 (_1!1565 (v!13705 lt!51245)) (_1!1567 lt!51247)) (_2!1567 lt!51247)))))

(assert (=> b!165542 (= lt!51247 (lexList!107 thiss!17480 rules!1920 (_2!1565 (v!13705 lt!51245))))))

(declare-fun d!41168 () Bool)

(declare-fun e!99856 () Bool)

(assert (=> d!41168 e!99856))

(declare-fun c!33054 () Bool)

(declare-fun lt!51246 () tuple2!2702)

(declare-fun size!2368 (List!2834) Int)

(assert (=> d!41168 (= c!33054 (> (size!2368 (_1!1567 lt!51246)) 0))))

(assert (=> d!41168 (= lt!51246 e!99858)))

(declare-fun c!33053 () Bool)

(assert (=> d!41168 (= c!33053 ((_ is Some!282) lt!51245))))

(assert (=> d!41168 (= lt!51245 (maxPrefix!123 thiss!17480 rules!1920 (list!1019 (seqFromList!380 lt!50724))))))

(assert (=> d!41168 (= (lexList!107 thiss!17480 rules!1920 (list!1019 (seqFromList!380 lt!50724))) lt!51246)))

(declare-fun b!165543 () Bool)

(assert (=> b!165543 (= e!99856 (= (_2!1567 lt!51246) (list!1019 (seqFromList!380 lt!50724))))))

(declare-fun b!165544 () Bool)

(declare-fun e!99857 () Bool)

(assert (=> b!165544 (= e!99857 (not (isEmpty!1161 (_1!1567 lt!51246))))))

(declare-fun b!165545 () Bool)

(assert (=> b!165545 (= e!99856 e!99857)))

(declare-fun res!74859 () Bool)

(assert (=> b!165545 (= res!74859 (< (size!2365 (_2!1567 lt!51246)) (size!2365 (list!1019 (seqFromList!380 lt!50724)))))))

(assert (=> b!165545 (=> (not res!74859) (not e!99857))))

(declare-fun b!165546 () Bool)

(assert (=> b!165546 (= e!99858 (tuple2!2703 Nil!2824 (list!1019 (seqFromList!380 lt!50724))))))

(assert (= (and d!41168 c!33053) b!165542))

(assert (= (and d!41168 (not c!33053)) b!165546))

(assert (= (and d!41168 c!33054) b!165545))

(assert (= (and d!41168 (not c!33054)) b!165543))

(assert (= (and b!165545 res!74859) b!165544))

(declare-fun m!158569 () Bool)

(assert (=> b!165542 m!158569))

(declare-fun m!158571 () Bool)

(assert (=> d!41168 m!158571))

(assert (=> d!41168 m!157799))

(declare-fun m!158573 () Bool)

(assert (=> d!41168 m!158573))

(declare-fun m!158575 () Bool)

(assert (=> b!165544 m!158575))

(declare-fun m!158577 () Bool)

(assert (=> b!165545 m!158577))

(assert (=> b!165545 m!157799))

(declare-fun m!158579 () Bool)

(assert (=> b!165545 m!158579))

(assert (=> b!165142 d!41168))

(declare-fun d!41170 () Bool)

(assert (=> d!41170 (= (list!1019 (seqFromList!380 lt!50724)) (list!1022 (c!32900 (seqFromList!380 lt!50724))))))

(declare-fun bs!15871 () Bool)

(assert (= bs!15871 d!41170))

(declare-fun m!158581 () Bool)

(assert (=> bs!15871 m!158581))

(assert (=> b!165142 d!41170))

(declare-fun d!41172 () Bool)

(declare-fun lt!51262 () Bool)

(assert (=> d!41172 (= lt!51262 (isEmpty!1164 (list!1019 (_2!1561 lt!50967))))))

(declare-fun isEmpty!1167 (Conc!824) Bool)

(assert (=> d!41172 (= lt!51262 (isEmpty!1167 (c!32900 (_2!1561 lt!50967))))))

(assert (=> d!41172 (= (isEmpty!1163 (_2!1561 lt!50967)) lt!51262)))

(declare-fun bs!15872 () Bool)

(assert (= bs!15872 d!41172))

(declare-fun m!158583 () Bool)

(assert (=> bs!15872 m!158583))

(assert (=> bs!15872 m!158583))

(declare-fun m!158585 () Bool)

(assert (=> bs!15872 m!158585))

(declare-fun m!158587 () Bool)

(assert (=> bs!15872 m!158587))

(assert (=> b!165243 d!41172))

(declare-fun d!41174 () Bool)

(declare-fun res!74860 () Bool)

(declare-fun e!99861 () Bool)

(assert (=> d!41174 (=> res!74860 e!99861)))

(assert (=> d!41174 (= res!74860 ((_ is Nil!2824) (t!26456 tokens!465)))))

(assert (=> d!41174 (= (forall!533 (t!26456 tokens!465) lambda!4551) e!99861)))

(declare-fun b!165551 () Bool)

(declare-fun e!99862 () Bool)

(assert (=> b!165551 (= e!99861 e!99862)))

(declare-fun res!74861 () Bool)

(assert (=> b!165551 (=> (not res!74861) (not e!99862))))

(assert (=> b!165551 (= res!74861 (dynLambda!1025 lambda!4551 (h!8221 (t!26456 tokens!465))))))

(declare-fun b!165552 () Bool)

(assert (=> b!165552 (= e!99862 (forall!533 (t!26456 (t!26456 tokens!465)) lambda!4551))))

(assert (= (and d!41174 (not res!74860)) b!165551))

(assert (= (and b!165551 res!74861) b!165552))

(declare-fun b_lambda!3597 () Bool)

(assert (=> (not b_lambda!3597) (not b!165551)))

(declare-fun m!158589 () Bool)

(assert (=> b!165551 m!158589))

(declare-fun m!158591 () Bool)

(assert (=> b!165552 m!158591))

(assert (=> b!165323 d!41174))

(declare-fun d!41176 () Bool)

(declare-fun lt!51282 () Token!746)

(assert (=> d!41176 (= lt!51282 (apply!397 (list!1023 lt!50710) 0))))

(declare-fun apply!400 (Conc!825 Int) Token!746)

(assert (=> d!41176 (= lt!51282 (apply!400 (c!32902 lt!50710) 0))))

(declare-fun e!99867 () Bool)

(assert (=> d!41176 e!99867))

(declare-fun res!74866 () Bool)

(assert (=> d!41176 (=> (not res!74866) (not e!99867))))

(assert (=> d!41176 (= res!74866 (<= 0 0))))

(assert (=> d!41176 (= (apply!398 lt!50710 0) lt!51282)))

(declare-fun b!165559 () Bool)

(assert (=> b!165559 (= e!99867 (< 0 (size!2362 lt!50710)))))

(assert (= (and d!41176 res!74866) b!165559))

(assert (=> d!41176 m!157519))

(assert (=> d!41176 m!157519))

(declare-fun m!158613 () Bool)

(assert (=> d!41176 m!158613))

(declare-fun m!158617 () Bool)

(assert (=> d!41176 m!158617))

(assert (=> b!165559 m!157509))

(assert (=> b!164998 d!41176))

(declare-fun d!41178 () Bool)

(declare-fun lt!51283 () Int)

(assert (=> d!41178 (>= lt!51283 0)))

(declare-fun e!99868 () Int)

(assert (=> d!41178 (= lt!51283 e!99868)))

(declare-fun c!33058 () Bool)

(assert (=> d!41178 (= c!33058 ((_ is Nil!2822) lt!50985))))

(assert (=> d!41178 (= (size!2365 lt!50985) lt!51283)))

(declare-fun b!165560 () Bool)

(assert (=> b!165560 (= e!99868 0)))

(declare-fun b!165561 () Bool)

(assert (=> b!165561 (= e!99868 (+ 1 (size!2365 (t!26454 lt!50985))))))

(assert (= (and d!41178 c!33058) b!165560))

(assert (= (and d!41178 (not c!33058)) b!165561))

(declare-fun m!158629 () Bool)

(assert (=> b!165561 m!158629))

(assert (=> b!165335 d!41178))

(declare-fun d!41180 () Bool)

(declare-fun lt!51284 () Int)

(assert (=> d!41180 (>= lt!51284 0)))

(declare-fun e!99869 () Int)

(assert (=> d!41180 (= lt!51284 e!99869)))

(declare-fun c!33059 () Bool)

(assert (=> d!41180 (= c!33059 ((_ is Nil!2822) (++!636 lt!50724 lt!50718)))))

(assert (=> d!41180 (= (size!2365 (++!636 lt!50724 lt!50718)) lt!51284)))

(declare-fun b!165562 () Bool)

(assert (=> b!165562 (= e!99869 0)))

(declare-fun b!165563 () Bool)

(assert (=> b!165563 (= e!99869 (+ 1 (size!2365 (t!26454 (++!636 lt!50724 lt!50718)))))))

(assert (= (and d!41180 c!33059) b!165562))

(assert (= (and d!41180 (not c!33059)) b!165563))

(declare-fun m!158635 () Bool)

(assert (=> b!165563 m!158635))

(assert (=> b!165335 d!41180))

(declare-fun d!41182 () Bool)

(declare-fun lt!51285 () Int)

(assert (=> d!41182 (>= lt!51285 0)))

(declare-fun e!99870 () Int)

(assert (=> d!41182 (= lt!51285 e!99870)))

(declare-fun c!33060 () Bool)

(assert (=> d!41182 (= c!33060 ((_ is Nil!2822) lt!50709))))

(assert (=> d!41182 (= (size!2365 lt!50709) lt!51285)))

(declare-fun b!165564 () Bool)

(assert (=> b!165564 (= e!99870 0)))

(declare-fun b!165565 () Bool)

(assert (=> b!165565 (= e!99870 (+ 1 (size!2365 (t!26454 lt!50709))))))

(assert (= (and d!41182 c!33060) b!165564))

(assert (= (and d!41182 (not c!33060)) b!165565))

(declare-fun m!158643 () Bool)

(assert (=> b!165565 m!158643))

(assert (=> b!165335 d!41182))

(declare-fun d!41184 () Bool)

(assert (=> d!41184 (= (inv!17 (value!18594 (h!8221 tokens!465))) (= (charsToBigInt!1 (text!4109 (value!18594 (h!8221 tokens!465)))) (value!18586 (value!18594 (h!8221 tokens!465)))))))

(declare-fun bs!15873 () Bool)

(assert (= bs!15873 d!41184))

(declare-fun m!158649 () Bool)

(assert (=> bs!15873 m!158649))

(assert (=> b!165156 d!41184))

(declare-fun b!165580 () Bool)

(declare-fun e!99882 () Bool)

(declare-fun call!7093 () Bool)

(assert (=> b!165580 (= e!99882 call!7093)))

(declare-fun b!165581 () Bool)

(declare-fun e!99883 () Bool)

(declare-fun e!99881 () Bool)

(assert (=> b!165581 (= e!99883 e!99881)))

(declare-fun res!74873 () Bool)

(assert (=> b!165581 (= res!74873 (not ((_ is Cons!2823) rules!1920)))))

(assert (=> b!165581 (=> res!74873 e!99881)))

(declare-fun bm!7088 () Bool)

(assert (=> bm!7088 (= call!7093 (ruleDisjointCharsFromAllFromOtherType!32 (h!8220 rules!1920) (t!26455 rules!1920)))))

(declare-fun b!165582 () Bool)

(assert (=> b!165582 (= e!99881 call!7093)))

(declare-fun d!41186 () Bool)

(declare-fun c!33065 () Bool)

(assert (=> d!41186 (= c!33065 (and ((_ is Cons!2823) rules!1920) (not (= (isSeparator!501 (h!8220 rules!1920)) (isSeparator!501 (h!8220 rules!1920))))))))

(assert (=> d!41186 (= (ruleDisjointCharsFromAllFromOtherType!32 (h!8220 rules!1920) rules!1920) e!99883)))

(declare-fun b!165583 () Bool)

(assert (=> b!165583 (= e!99883 e!99882)))

(declare-fun res!74874 () Bool)

(declare-fun rulesUseDisjointChars!23 (Rule!802 Rule!802) Bool)

(assert (=> b!165583 (= res!74874 (rulesUseDisjointChars!23 (h!8220 rules!1920) (h!8220 rules!1920)))))

(assert (=> b!165583 (=> (not res!74874) (not e!99882))))

(assert (= (and d!41186 c!33065) b!165583))

(assert (= (and d!41186 (not c!33065)) b!165581))

(assert (= (and b!165583 res!74874) b!165580))

(assert (= (and b!165581 (not res!74873)) b!165582))

(assert (= (or b!165580 b!165582) bm!7088))

(declare-fun m!158717 () Bool)

(assert (=> bm!7088 m!158717))

(declare-fun m!158719 () Bool)

(assert (=> b!165583 m!158719))

(assert (=> b!165089 d!41186))

(declare-fun d!41204 () Bool)

(assert (=> d!41204 (= (head!596 (drop!135 lt!51005 0)) (apply!397 lt!51005 0))))

(declare-fun lt!51299 () Unit!2378)

(declare-fun choose!1812 (List!2834 Int) Unit!2378)

(assert (=> d!41204 (= lt!51299 (choose!1812 lt!51005 0))))

(declare-fun e!99888 () Bool)

(assert (=> d!41204 e!99888))

(declare-fun res!74879 () Bool)

(assert (=> d!41204 (=> (not res!74879) (not e!99888))))

(assert (=> d!41204 (= res!74879 (>= 0 0))))

(assert (=> d!41204 (= (lemmaDropApply!122 lt!51005 0) lt!51299)))

(declare-fun b!165588 () Bool)

(assert (=> b!165588 (= e!99888 (< 0 (size!2368 lt!51005)))))

(assert (= (and d!41204 res!74879) b!165588))

(assert (=> d!41204 m!158145))

(assert (=> d!41204 m!158145))

(assert (=> d!41204 m!158147))

(assert (=> d!41204 m!158149))

(declare-fun m!158723 () Bool)

(assert (=> d!41204 m!158723))

(declare-fun m!158725 () Bool)

(assert (=> b!165588 m!158725))

(assert (=> b!165351 d!41204))

(declare-fun d!41210 () Bool)

(declare-fun e!99903 () Bool)

(assert (=> d!41210 e!99903))

(declare-fun res!74889 () Bool)

(assert (=> d!41210 (=> (not res!74889) (not e!99903))))

(declare-fun lt!51305 () List!2834)

(declare-fun content!392 (List!2834) (InoxSet Token!746))

(assert (=> d!41210 (= res!74889 (= ((_ map implies) (content!392 lt!51305) (content!392 lt!51005)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!99905 () List!2834)

(assert (=> d!41210 (= lt!51305 e!99905)))

(declare-fun c!33081 () Bool)

(assert (=> d!41210 (= c!33081 ((_ is Nil!2824) lt!51005))))

(assert (=> d!41210 (= (drop!135 lt!51005 0) lt!51305)))

(declare-fun b!165614 () Bool)

(declare-fun e!99906 () List!2834)

(assert (=> b!165614 (= e!99906 (drop!135 (t!26456 lt!51005) (- 0 1)))))

(declare-fun bm!7091 () Bool)

(declare-fun call!7096 () Int)

(assert (=> bm!7091 (= call!7096 (size!2368 lt!51005))))

(declare-fun b!165617 () Bool)

(assert (=> b!165617 (= e!99906 lt!51005)))

(declare-fun b!165618 () Bool)

(declare-fun e!99902 () Int)

(assert (=> b!165618 (= e!99902 (- call!7096 0))))

(declare-fun b!165619 () Bool)

(declare-fun e!99904 () Int)

(assert (=> b!165619 (= e!99904 call!7096)))

(declare-fun b!165620 () Bool)

(assert (=> b!165620 (= e!99903 (= (size!2368 lt!51305) e!99904))))

(declare-fun c!33078 () Bool)

(assert (=> b!165620 (= c!33078 (<= 0 0))))

(declare-fun b!165621 () Bool)

(assert (=> b!165621 (= e!99905 Nil!2824)))

(declare-fun b!165622 () Bool)

(assert (=> b!165622 (= e!99902 0)))

(declare-fun b!165623 () Bool)

(assert (=> b!165623 (= e!99904 e!99902)))

(declare-fun c!33080 () Bool)

(assert (=> b!165623 (= c!33080 (>= 0 call!7096))))

(declare-fun b!165624 () Bool)

(assert (=> b!165624 (= e!99905 e!99906)))

(declare-fun c!33079 () Bool)

(assert (=> b!165624 (= c!33079 (<= 0 0))))

(assert (= (and d!41210 c!33081) b!165621))

(assert (= (and d!41210 (not c!33081)) b!165624))

(assert (= (and b!165624 c!33079) b!165617))

(assert (= (and b!165624 (not c!33079)) b!165614))

(assert (= (and d!41210 res!74889) b!165620))

(assert (= (and b!165620 c!33078) b!165619))

(assert (= (and b!165620 (not c!33078)) b!165623))

(assert (= (and b!165623 c!33080) b!165622))

(assert (= (and b!165623 (not c!33080)) b!165618))

(assert (= (or b!165619 b!165623 b!165618) bm!7091))

(declare-fun m!158733 () Bool)

(assert (=> d!41210 m!158733))

(declare-fun m!158735 () Bool)

(assert (=> d!41210 m!158735))

(declare-fun m!158737 () Bool)

(assert (=> b!165614 m!158737))

(assert (=> bm!7091 m!158725))

(declare-fun m!158739 () Bool)

(assert (=> b!165620 m!158739))

(assert (=> b!165351 d!41210))

(declare-fun d!41214 () Bool)

(assert (=> d!41214 (= (list!1023 (seqFromList!379 (t!26456 tokens!465))) (list!1027 (c!32902 (seqFromList!379 (t!26456 tokens!465)))))))

(declare-fun bs!15879 () Bool)

(assert (= bs!15879 d!41214))

(declare-fun m!158741 () Bool)

(assert (=> bs!15879 m!158741))

(assert (=> b!165351 d!41214))

(declare-fun b!165652 () Bool)

(declare-fun res!74907 () Bool)

(declare-fun e!99917 () Bool)

(assert (=> b!165652 (=> (not res!74907) (not e!99917))))

(declare-fun height!90 (Conc!824) Int)

(declare-fun ++!641 (Conc!824 Conc!824) Conc!824)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!165652 (= res!74907 (<= (height!90 (++!641 (c!32900 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))) (c!32900 lt!50994))) (+ (max!0 (height!90 (c!32900 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))) (height!90 (c!32900 lt!50994))) 1)))))

(declare-fun b!165654 () Bool)

(declare-fun lt!51310 () BalanceConc!1656)

(assert (=> b!165654 (= e!99917 (= (list!1019 lt!51310) (++!636 (list!1019 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))) (list!1019 lt!50994))))))

(declare-fun d!41216 () Bool)

(assert (=> d!41216 e!99917))

(declare-fun res!74905 () Bool)

(assert (=> d!41216 (=> (not res!74905) (not e!99917))))

(declare-fun appendAssocInst!29 (Conc!824 Conc!824) Bool)

(assert (=> d!41216 (= res!74905 (appendAssocInst!29 (c!32900 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))) (c!32900 lt!50994)))))

(assert (=> d!41216 (= lt!51310 (BalanceConc!1657 (++!641 (c!32900 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))) (c!32900 lt!50994))))))

(assert (=> d!41216 (= (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994) lt!51310)))

(declare-fun b!165653 () Bool)

(declare-fun res!74906 () Bool)

(assert (=> b!165653 (=> (not res!74906) (not e!99917))))

(assert (=> b!165653 (= res!74906 (>= (height!90 (++!641 (c!32900 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))) (c!32900 lt!50994))) (max!0 (height!90 (c!32900 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))) (height!90 (c!32900 lt!50994)))))))

(declare-fun b!165651 () Bool)

(declare-fun res!74904 () Bool)

(assert (=> b!165651 (=> (not res!74904) (not e!99917))))

(assert (=> b!165651 (= res!74904 (isBalanced!232 (++!641 (c!32900 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))) (c!32900 lt!50994))))))

(assert (= (and d!41216 res!74905) b!165651))

(assert (= (and b!165651 res!74904) b!165652))

(assert (= (and b!165652 res!74907) b!165653))

(assert (= (and b!165653 res!74906) b!165654))

(declare-fun m!158789 () Bool)

(assert (=> b!165651 m!158789))

(assert (=> b!165651 m!158789))

(declare-fun m!158791 () Bool)

(assert (=> b!165651 m!158791))

(declare-fun m!158793 () Bool)

(assert (=> d!41216 m!158793))

(assert (=> d!41216 m!158789))

(assert (=> b!165652 m!158789))

(declare-fun m!158795 () Bool)

(assert (=> b!165652 m!158795))

(assert (=> b!165652 m!158789))

(declare-fun m!158797 () Bool)

(assert (=> b!165652 m!158797))

(declare-fun m!158799 () Bool)

(assert (=> b!165652 m!158799))

(declare-fun m!158801 () Bool)

(assert (=> b!165652 m!158801))

(assert (=> b!165652 m!158799))

(assert (=> b!165652 m!158797))

(declare-fun m!158803 () Bool)

(assert (=> b!165654 m!158803))

(assert (=> b!165654 m!158157))

(declare-fun m!158805 () Bool)

(assert (=> b!165654 m!158805))

(assert (=> b!165654 m!158129))

(assert (=> b!165654 m!158805))

(assert (=> b!165654 m!158129))

(declare-fun m!158807 () Bool)

(assert (=> b!165654 m!158807))

(assert (=> b!165653 m!158789))

(assert (=> b!165653 m!158795))

(assert (=> b!165653 m!158789))

(assert (=> b!165653 m!158797))

(assert (=> b!165653 m!158799))

(assert (=> b!165653 m!158801))

(assert (=> b!165653 m!158799))

(assert (=> b!165653 m!158797))

(assert (=> b!165351 d!41216))

(declare-fun bs!15882 () Bool)

(declare-fun d!41232 () Bool)

(assert (= bs!15882 (and d!41232 b!165351)))

(declare-fun lambda!4599 () Int)

(assert (=> bs!15882 (not (= lambda!4599 lambda!4592))))

(declare-fun bs!15883 () Bool)

(assert (= bs!15883 (and d!41232 d!41086)))

(assert (=> bs!15883 (= lambda!4599 lambda!4591)))

(declare-fun bs!15884 () Bool)

(assert (= bs!15884 (and d!41232 d!40916)))

(assert (=> bs!15884 (= lambda!4599 lambda!4563)))

(declare-fun bs!15885 () Bool)

(assert (= bs!15885 (and d!41232 b!165344)))

(assert (=> bs!15885 (not (= lambda!4599 lambda!4590))))

(declare-fun bs!15886 () Bool)

(assert (= bs!15886 (and d!41232 b!164997)))

(assert (=> bs!15886 (not (= lambda!4599 lambda!4564))))

(declare-fun bs!15887 () Bool)

(assert (= bs!15887 (and d!41232 b!165075)))

(assert (=> bs!15887 (not (= lambda!4599 lambda!4573))))

(declare-fun bs!15888 () Bool)

(assert (= bs!15888 (and d!41232 b!164839)))

(assert (=> bs!15888 (= lambda!4599 lambda!4551)))

(declare-fun bs!15889 () Bool)

(assert (= bs!15889 (and d!41232 b!164821)))

(assert (=> bs!15889 (not (= lambda!4599 lambda!4552))))

(declare-fun bs!15890 () Bool)

(assert (= bs!15890 (and d!41232 d!41070)))

(assert (=> bs!15890 (not (= lambda!4599 lambda!4589))))

(declare-fun bs!15891 () Bool)

(declare-fun b!165658 () Bool)

(assert (= bs!15891 (and b!165658 b!165351)))

(declare-fun lambda!4600 () Int)

(assert (=> bs!15891 (= lambda!4600 lambda!4592)))

(declare-fun bs!15892 () Bool)

(assert (= bs!15892 (and b!165658 d!41086)))

(assert (=> bs!15892 (not (= lambda!4600 lambda!4591))))

(declare-fun bs!15893 () Bool)

(assert (= bs!15893 (and b!165658 d!40916)))

(assert (=> bs!15893 (not (= lambda!4600 lambda!4563))))

(declare-fun bs!15894 () Bool)

(assert (= bs!15894 (and b!165658 b!165344)))

(assert (=> bs!15894 (= lambda!4600 lambda!4590)))

(declare-fun bs!15895 () Bool)

(assert (= bs!15895 (and b!165658 d!41232)))

(assert (=> bs!15895 (not (= lambda!4600 lambda!4599))))

(declare-fun bs!15896 () Bool)

(assert (= bs!15896 (and b!165658 b!164997)))

(assert (=> bs!15896 (= lambda!4600 lambda!4564)))

(declare-fun bs!15897 () Bool)

(assert (= bs!15897 (and b!165658 b!165075)))

(assert (=> bs!15897 (= lambda!4600 lambda!4573)))

(declare-fun bs!15898 () Bool)

(assert (= bs!15898 (and b!165658 b!164839)))

(assert (=> bs!15898 (not (= lambda!4600 lambda!4551))))

(declare-fun bs!15899 () Bool)

(assert (= bs!15899 (and b!165658 b!164821)))

(assert (=> bs!15899 (= lambda!4600 lambda!4552)))

(declare-fun bs!15900 () Bool)

(assert (= bs!15900 (and b!165658 d!41070)))

(assert (=> bs!15900 (= lambda!4600 lambda!4589)))

(declare-fun b!165668 () Bool)

(declare-fun e!99927 () Bool)

(assert (=> b!165668 (= e!99927 true)))

(declare-fun b!165667 () Bool)

(declare-fun e!99926 () Bool)

(assert (=> b!165667 (= e!99926 e!99927)))

(declare-fun b!165666 () Bool)

(declare-fun e!99925 () Bool)

(assert (=> b!165666 (= e!99925 e!99926)))

(assert (=> b!165658 e!99925))

(assert (= b!165667 b!165668))

(assert (= b!165666 b!165667))

(assert (= (and b!165658 ((_ is Cons!2823) rules!1920)) b!165666))

(assert (=> b!165668 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4600))))

(assert (=> b!165668 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4600))))

(assert (=> b!165658 true))

(declare-fun bm!7092 () Bool)

(declare-fun c!33094 () Bool)

(declare-fun call!7097 () Token!746)

(declare-fun call!7098 () BalanceConc!1656)

(declare-fun call!7101 () Token!746)

(declare-fun c!33095 () Bool)

(assert (=> bm!7092 (= call!7098 (charsOf!156 (ite c!33094 call!7101 (ite c!33095 separatorToken!170 call!7097))))))

(declare-fun b!165655 () Bool)

(declare-fun e!99918 () BalanceConc!1656)

(assert (=> b!165655 (= e!99918 (BalanceConc!1657 Empty!824))))

(assert (=> b!165655 (= (print!118 thiss!17480 (singletonSeq!53 call!7097)) (printTailRec!81 thiss!17480 (singletonSeq!53 call!7097) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!51317 () Unit!2378)

(declare-fun Unit!2408 () Unit!2378)

(assert (=> b!165655 (= lt!51317 Unit!2408)))

(declare-fun lt!51313 () BalanceConc!1656)

(declare-fun call!7099 () BalanceConc!1656)

(declare-fun lt!51321 () Unit!2378)

(assert (=> b!165655 (= lt!51321 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 (list!1019 call!7099) (list!1019 lt!51313)))))

(assert (=> b!165655 false))

(declare-fun lt!51316 () Unit!2378)

(declare-fun Unit!2409 () Unit!2378)

(assert (=> b!165655 (= lt!51316 Unit!2409)))

(declare-fun b!165656 () Bool)

(declare-fun e!99924 () Bool)

(declare-fun lt!51323 () Option!282)

(assert (=> b!165656 (= e!99924 (not (= (_1!1564 (v!13704 lt!51323)) call!7101)))))

(declare-fun b!165657 () Bool)

(declare-fun e!99920 () BalanceConc!1656)

(assert (=> b!165657 (= e!99920 (BalanceConc!1657 Empty!824))))

(declare-fun e!99921 () BalanceConc!1656)

(assert (=> b!165658 (= e!99920 e!99921)))

(declare-fun lt!51324 () List!2834)

(assert (=> b!165658 (= lt!51324 (list!1023 (seqFromList!379 (t!26456 tokens!465))))))

(declare-fun lt!51311 () Unit!2378)

(assert (=> b!165658 (= lt!51311 (lemmaDropApply!122 lt!51324 (+ 0 1)))))

(assert (=> b!165658 (= (head!596 (drop!135 lt!51324 (+ 0 1))) (apply!397 lt!51324 (+ 0 1)))))

(declare-fun lt!51314 () Unit!2378)

(assert (=> b!165658 (= lt!51314 lt!51311)))

(declare-fun lt!51322 () List!2834)

(assert (=> b!165658 (= lt!51322 (list!1023 (seqFromList!379 (t!26456 tokens!465))))))

(declare-fun lt!51320 () Unit!2378)

(assert (=> b!165658 (= lt!51320 (lemmaDropTail!114 lt!51322 (+ 0 1)))))

(assert (=> b!165658 (= (tail!336 (drop!135 lt!51322 (+ 0 1))) (drop!135 lt!51322 (+ 0 1 1)))))

(declare-fun lt!51312 () Unit!2378)

(assert (=> b!165658 (= lt!51312 lt!51320)))

(declare-fun lt!51318 () Unit!2378)

(assert (=> b!165658 (= lt!51318 (forallContained!68 (list!1023 (seqFromList!379 (t!26456 tokens!465))) lambda!4600 (apply!398 (seqFromList!379 (t!26456 tokens!465)) (+ 0 1))))))

(assert (=> b!165658 (= lt!51313 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!165658 (= lt!51323 (maxPrefixZipperSequence!82 thiss!17480 rules!1920 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) (+ 0 1))) lt!51313)))))

(declare-fun res!74910 () Bool)

(assert (=> b!165658 (= res!74910 ((_ is Some!281) lt!51323))))

(declare-fun e!99922 () Bool)

(assert (=> b!165658 (=> (not res!74910) (not e!99922))))

(assert (=> b!165658 (= c!33094 e!99922)))

(declare-fun b!165659 () Bool)

(assert (=> b!165659 (= e!99922 (= (_1!1564 (v!13704 lt!51323)) (apply!398 (seqFromList!379 (t!26456 tokens!465)) (+ 0 1))))))

(declare-fun b!165660 () Bool)

(declare-fun call!7100 () BalanceConc!1656)

(assert (=> b!165660 (= e!99921 call!7100)))

(declare-fun b!165661 () Bool)

(declare-fun e!99919 () BalanceConc!1656)

(assert (=> b!165661 (= e!99919 (charsOf!156 call!7097))))

(declare-fun b!165662 () Bool)

(assert (=> b!165662 (= e!99918 (++!638 call!7100 lt!51313))))

(declare-fun bm!7093 () Bool)

(declare-fun c!33092 () Bool)

(assert (=> bm!7093 (= c!33092 c!33094)))

(assert (=> bm!7093 (= call!7100 (++!638 e!99919 (ite c!33094 lt!51313 call!7099)))))

(declare-fun bm!7094 () Bool)

(assert (=> bm!7094 (= call!7101 (apply!398 (seqFromList!379 (t!26456 tokens!465)) (+ 0 1)))))

(declare-fun bm!7095 () Bool)

(assert (=> bm!7095 (= call!7099 call!7098)))

(declare-fun b!165664 () Bool)

(assert (=> b!165664 (= c!33095 e!99924)))

(declare-fun res!74908 () Bool)

(assert (=> b!165664 (=> (not res!74908) (not e!99924))))

(assert (=> b!165664 (= res!74908 ((_ is Some!281) lt!51323))))

(assert (=> b!165664 (= e!99921 e!99918)))

(declare-fun b!165663 () Bool)

(declare-fun e!99923 () Bool)

(assert (=> b!165663 (= e!99923 (<= (+ 0 1) (size!2362 (seqFromList!379 (t!26456 tokens!465)))))))

(declare-fun lt!51315 () BalanceConc!1656)

(assert (=> d!41232 (= (list!1019 lt!51315) (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) (+ 0 1)) separatorToken!170))))

(assert (=> d!41232 (= lt!51315 e!99920)))

(declare-fun c!33093 () Bool)

(assert (=> d!41232 (= c!33093 (>= (+ 0 1) (size!2362 (seqFromList!379 (t!26456 tokens!465)))))))

(declare-fun lt!51319 () Unit!2378)

(assert (=> d!41232 (= lt!51319 (lemmaContentSubsetPreservesForall!26 (list!1023 (seqFromList!379 (t!26456 tokens!465))) (dropList!82 (seqFromList!379 (t!26456 tokens!465)) (+ 0 1)) lambda!4599))))

(assert (=> d!41232 e!99923))

(declare-fun res!74909 () Bool)

(assert (=> d!41232 (=> (not res!74909) (not e!99923))))

(assert (=> d!41232 (= res!74909 (>= (+ 0 1) 0))))

(assert (=> d!41232 (= (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 (seqFromList!379 (t!26456 tokens!465)) separatorToken!170 (+ 0 1)) lt!51315)))

(declare-fun bm!7096 () Bool)

(assert (=> bm!7096 (= call!7097 call!7101)))

(declare-fun b!165665 () Bool)

(assert (=> b!165665 (= e!99919 call!7098)))

(assert (= (and d!41232 res!74909) b!165663))

(assert (= (and d!41232 c!33093) b!165657))

(assert (= (and d!41232 (not c!33093)) b!165658))

(assert (= (and b!165658 res!74910) b!165659))

(assert (= (and b!165658 c!33094) b!165660))

(assert (= (and b!165658 (not c!33094)) b!165664))

(assert (= (and b!165664 res!74908) b!165656))

(assert (= (and b!165664 c!33095) b!165662))

(assert (= (and b!165664 (not c!33095)) b!165655))

(assert (= (or b!165662 b!165655) bm!7096))

(assert (= (or b!165662 b!165655) bm!7095))

(assert (= (or b!165660 b!165656 bm!7096) bm!7094))

(assert (= (or b!165660 bm!7095) bm!7092))

(assert (= (or b!165660 b!165662) bm!7093))

(assert (= (and bm!7093 c!33092) b!165665))

(assert (= (and bm!7093 (not c!33092)) b!165661))

(declare-fun m!158809 () Bool)

(assert (=> bm!7092 m!158809))

(declare-fun m!158811 () Bool)

(assert (=> bm!7093 m!158811))

(assert (=> bm!7094 m!157275))

(declare-fun m!158813 () Bool)

(assert (=> bm!7094 m!158813))

(assert (=> b!165663 m!157275))

(assert (=> b!165663 m!158113))

(declare-fun m!158815 () Bool)

(assert (=> b!165662 m!158815))

(declare-fun m!158817 () Bool)

(assert (=> d!41232 m!158817))

(declare-fun m!158819 () Bool)

(assert (=> d!41232 m!158819))

(assert (=> d!41232 m!157275))

(assert (=> d!41232 m!158817))

(declare-fun m!158821 () Bool)

(assert (=> d!41232 m!158821))

(assert (=> d!41232 m!157275))

(assert (=> d!41232 m!158123))

(assert (=> d!41232 m!158123))

(assert (=> d!41232 m!158817))

(declare-fun m!158823 () Bool)

(assert (=> d!41232 m!158823))

(assert (=> d!41232 m!157275))

(assert (=> d!41232 m!158113))

(declare-fun m!158825 () Bool)

(assert (=> b!165655 m!158825))

(declare-fun m!158827 () Bool)

(assert (=> b!165655 m!158827))

(declare-fun m!158829 () Bool)

(assert (=> b!165655 m!158829))

(assert (=> b!165655 m!158827))

(declare-fun m!158831 () Bool)

(assert (=> b!165655 m!158831))

(declare-fun m!158833 () Bool)

(assert (=> b!165655 m!158833))

(assert (=> b!165655 m!158831))

(assert (=> b!165655 m!158831))

(declare-fun m!158835 () Bool)

(assert (=> b!165655 m!158835))

(assert (=> b!165655 m!158825))

(assert (=> b!165659 m!157275))

(assert (=> b!165659 m!158813))

(declare-fun m!158837 () Bool)

(assert (=> b!165658 m!158837))

(declare-fun m!158839 () Bool)

(assert (=> b!165658 m!158839))

(assert (=> b!165658 m!158837))

(declare-fun m!158841 () Bool)

(assert (=> b!165658 m!158841))

(assert (=> b!165658 m!157275))

(assert (=> b!165658 m!158123))

(declare-fun m!158843 () Bool)

(assert (=> b!165658 m!158843))

(declare-fun m!158845 () Bool)

(assert (=> b!165658 m!158845))

(declare-fun m!158847 () Bool)

(assert (=> b!165658 m!158847))

(declare-fun m!158849 () Bool)

(assert (=> b!165658 m!158849))

(declare-fun m!158851 () Bool)

(assert (=> b!165658 m!158851))

(declare-fun m!158853 () Bool)

(assert (=> b!165658 m!158853))

(declare-fun m!158855 () Bool)

(assert (=> b!165658 m!158855))

(assert (=> b!165658 m!158851))

(assert (=> b!165658 m!158843))

(assert (=> b!165658 m!157275))

(declare-fun m!158857 () Bool)

(assert (=> b!165658 m!158857))

(assert (=> b!165658 m!158123))

(assert (=> b!165658 m!158813))

(declare-fun m!158859 () Bool)

(assert (=> b!165658 m!158859))

(declare-fun m!158861 () Bool)

(assert (=> b!165658 m!158861))

(assert (=> b!165658 m!157275))

(assert (=> b!165658 m!158813))

(assert (=> b!165658 m!158813))

(assert (=> b!165658 m!158855))

(declare-fun m!158863 () Bool)

(assert (=> b!165661 m!158863))

(assert (=> b!165351 d!41232))

(declare-fun d!41234 () Bool)

(assert (=> d!41234 (= (tail!336 (drop!135 lt!51003 0)) (t!26456 (drop!135 lt!51003 0)))))

(assert (=> b!165351 d!41234))

(declare-fun d!41236 () Bool)

(assert (=> d!41236 (= (head!596 (drop!135 lt!51005 0)) (h!8221 (drop!135 lt!51005 0)))))

(assert (=> b!165351 d!41236))

(declare-fun d!41238 () Bool)

(declare-fun e!99929 () Bool)

(assert (=> d!41238 e!99929))

(declare-fun res!74911 () Bool)

(assert (=> d!41238 (=> (not res!74911) (not e!99929))))

(declare-fun lt!51325 () List!2834)

(assert (=> d!41238 (= res!74911 (= ((_ map implies) (content!392 lt!51325) (content!392 lt!51003)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!99931 () List!2834)

(assert (=> d!41238 (= lt!51325 e!99931)))

(declare-fun c!33099 () Bool)

(assert (=> d!41238 (= c!33099 ((_ is Nil!2824) lt!51003))))

(assert (=> d!41238 (= (drop!135 lt!51003 0) lt!51325)))

(declare-fun b!165669 () Bool)

(declare-fun e!99932 () List!2834)

(assert (=> b!165669 (= e!99932 (drop!135 (t!26456 lt!51003) (- 0 1)))))

(declare-fun bm!7097 () Bool)

(declare-fun call!7102 () Int)

(assert (=> bm!7097 (= call!7102 (size!2368 lt!51003))))

(declare-fun b!165670 () Bool)

(assert (=> b!165670 (= e!99932 lt!51003)))

(declare-fun b!165671 () Bool)

(declare-fun e!99928 () Int)

(assert (=> b!165671 (= e!99928 (- call!7102 0))))

(declare-fun b!165672 () Bool)

(declare-fun e!99930 () Int)

(assert (=> b!165672 (= e!99930 call!7102)))

(declare-fun b!165673 () Bool)

(assert (=> b!165673 (= e!99929 (= (size!2368 lt!51325) e!99930))))

(declare-fun c!33096 () Bool)

(assert (=> b!165673 (= c!33096 (<= 0 0))))

(declare-fun b!165674 () Bool)

(assert (=> b!165674 (= e!99931 Nil!2824)))

(declare-fun b!165675 () Bool)

(assert (=> b!165675 (= e!99928 0)))

(declare-fun b!165676 () Bool)

(assert (=> b!165676 (= e!99930 e!99928)))

(declare-fun c!33098 () Bool)

(assert (=> b!165676 (= c!33098 (>= 0 call!7102))))

(declare-fun b!165677 () Bool)

(assert (=> b!165677 (= e!99931 e!99932)))

(declare-fun c!33097 () Bool)

(assert (=> b!165677 (= c!33097 (<= 0 0))))

(assert (= (and d!41238 c!33099) b!165674))

(assert (= (and d!41238 (not c!33099)) b!165677))

(assert (= (and b!165677 c!33097) b!165670))

(assert (= (and b!165677 (not c!33097)) b!165669))

(assert (= (and d!41238 res!74911) b!165673))

(assert (= (and b!165673 c!33096) b!165672))

(assert (= (and b!165673 (not c!33096)) b!165676))

(assert (= (and b!165676 c!33098) b!165675))

(assert (= (and b!165676 (not c!33098)) b!165671))

(assert (= (or b!165672 b!165676 b!165671) bm!7097))

(declare-fun m!158865 () Bool)

(assert (=> d!41238 m!158865))

(declare-fun m!158867 () Bool)

(assert (=> d!41238 m!158867))

(declare-fun m!158869 () Bool)

(assert (=> b!165669 m!158869))

(declare-fun m!158871 () Bool)

(assert (=> bm!7097 m!158871))

(declare-fun m!158873 () Bool)

(assert (=> b!165673 m!158873))

(assert (=> b!165351 d!41238))

(declare-fun e!99947 () Bool)

(declare-fun lt!51342 () Option!282)

(declare-fun b!165694 () Bool)

(declare-fun get!771 (Option!282) tuple2!2696)

(declare-fun maxPrefixZipper!34 (LexerInterface!387 List!2833 List!2832) Option!283)

(assert (=> b!165694 (= e!99947 (= (list!1019 (_2!1564 (get!771 lt!51342))) (_2!1565 (get!769 (maxPrefixZipper!34 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))))))

(declare-fun b!165695 () Bool)

(declare-fun e!99950 () Option!282)

(declare-fun lt!51343 () Option!282)

(declare-fun lt!51345 () Option!282)

(assert (=> b!165695 (= e!99950 (ite (and ((_ is None!281) lt!51343) ((_ is None!281) lt!51345)) None!281 (ite ((_ is None!281) lt!51345) lt!51343 (ite ((_ is None!281) lt!51343) lt!51345 (ite (>= (size!2359 (_1!1564 (v!13704 lt!51343))) (size!2359 (_1!1564 (v!13704 lt!51345)))) lt!51343 lt!51345)))))))

(declare-fun call!7105 () Option!282)

(assert (=> b!165695 (= lt!51343 call!7105)))

(assert (=> b!165695 (= lt!51345 (maxPrefixZipperSequence!82 thiss!17480 (t!26455 rules!1920) (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))

(declare-fun b!165696 () Bool)

(assert (=> b!165696 (= e!99950 call!7105)))

(declare-fun b!165697 () Bool)

(declare-fun e!99945 () Bool)

(assert (=> b!165697 (= e!99945 (= (list!1019 (_2!1564 (get!771 lt!51342))) (_2!1565 (get!769 (maxPrefix!123 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))))))

(declare-fun d!41240 () Bool)

(declare-fun e!99948 () Bool)

(assert (=> d!41240 e!99948))

(declare-fun res!74927 () Bool)

(assert (=> d!41240 (=> (not res!74927) (not e!99948))))

(declare-fun isDefined!137 (Option!282) Bool)

(assert (=> d!41240 (= res!74927 (= (isDefined!137 lt!51342) (isDefined!135 (maxPrefixZipper!34 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994))))))))

(assert (=> d!41240 (= lt!51342 e!99950)))

(declare-fun c!33102 () Bool)

(assert (=> d!41240 (= c!33102 (and ((_ is Cons!2823) rules!1920) ((_ is Nil!2823) (t!26455 rules!1920))))))

(declare-fun lt!51344 () Unit!2378)

(declare-fun lt!51341 () Unit!2378)

(assert (=> d!41240 (= lt!51344 lt!51341)))

(declare-fun lt!51346 () List!2832)

(declare-fun lt!51340 () List!2832)

(assert (=> d!41240 (isPrefix!223 lt!51346 lt!51340)))

(declare-fun lemmaIsPrefixRefl!130 (List!2832 List!2832) Unit!2378)

(assert (=> d!41240 (= lt!51341 (lemmaIsPrefixRefl!130 lt!51346 lt!51340))))

(assert (=> d!41240 (= lt!51340 (list!1019 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))

(assert (=> d!41240 (= lt!51346 (list!1019 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))

(assert (=> d!41240 (rulesValidInductive!108 thiss!17480 rules!1920)))

(assert (=> d!41240 (= (maxPrefixZipperSequence!82 thiss!17480 rules!1920 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)) lt!51342)))

(declare-fun bm!7100 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!35 (LexerInterface!387 Rule!802 BalanceConc!1656) Option!282)

(assert (=> bm!7100 (= call!7105 (maxPrefixOneRuleZipperSequence!35 thiss!17480 (h!8220 rules!1920) (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))

(declare-fun b!165698 () Bool)

(declare-fun res!74924 () Bool)

(assert (=> b!165698 (=> (not res!74924) (not e!99948))))

(declare-fun e!99949 () Bool)

(assert (=> b!165698 (= res!74924 e!99949)))

(declare-fun res!74926 () Bool)

(assert (=> b!165698 (=> res!74926 e!99949)))

(assert (=> b!165698 (= res!74926 (not (isDefined!137 lt!51342)))))

(declare-fun b!165699 () Bool)

(assert (=> b!165699 (= e!99949 e!99947)))

(declare-fun res!74928 () Bool)

(assert (=> b!165699 (=> (not res!74928) (not e!99947))))

(assert (=> b!165699 (= res!74928 (= (_1!1564 (get!771 lt!51342)) (_1!1565 (get!769 (maxPrefixZipper!34 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))))))

(declare-fun b!165700 () Bool)

(declare-fun e!99946 () Bool)

(assert (=> b!165700 (= e!99948 e!99946)))

(declare-fun res!74929 () Bool)

(assert (=> b!165700 (=> res!74929 e!99946)))

(assert (=> b!165700 (= res!74929 (not (isDefined!137 lt!51342)))))

(declare-fun b!165701 () Bool)

(assert (=> b!165701 (= e!99946 e!99945)))

(declare-fun res!74925 () Bool)

(assert (=> b!165701 (=> (not res!74925) (not e!99945))))

(assert (=> b!165701 (= res!74925 (= (_1!1564 (get!771 lt!51342)) (_1!1565 (get!769 (maxPrefix!123 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!50994)))))))))

(assert (= (and d!41240 c!33102) b!165696))

(assert (= (and d!41240 (not c!33102)) b!165695))

(assert (= (or b!165696 b!165695) bm!7100))

(assert (= (and d!41240 res!74927) b!165698))

(assert (= (and b!165698 (not res!74926)) b!165699))

(assert (= (and b!165699 res!74928) b!165694))

(assert (= (and b!165698 res!74924) b!165700))

(assert (= (and b!165700 (not res!74929)) b!165701))

(assert (= (and b!165701 res!74925) b!165697))

(declare-fun m!158875 () Bool)

(assert (=> b!165697 m!158875))

(declare-fun m!158877 () Bool)

(assert (=> b!165697 m!158877))

(declare-fun m!158879 () Bool)

(assert (=> b!165697 m!158879))

(declare-fun m!158881 () Bool)

(assert (=> b!165697 m!158881))

(assert (=> b!165697 m!158153))

(assert (=> b!165697 m!158879))

(assert (=> b!165697 m!158881))

(declare-fun m!158883 () Bool)

(assert (=> b!165697 m!158883))

(assert (=> b!165695 m!158153))

(declare-fun m!158885 () Bool)

(assert (=> b!165695 m!158885))

(assert (=> b!165694 m!158875))

(assert (=> b!165694 m!158153))

(assert (=> b!165694 m!158879))

(declare-fun m!158887 () Bool)

(assert (=> b!165694 m!158887))

(declare-fun m!158889 () Bool)

(assert (=> b!165694 m!158889))

(assert (=> b!165694 m!158877))

(assert (=> b!165694 m!158879))

(assert (=> b!165694 m!158887))

(assert (=> b!165699 m!158877))

(assert (=> b!165699 m!158153))

(assert (=> b!165699 m!158879))

(assert (=> b!165699 m!158879))

(assert (=> b!165699 m!158887))

(assert (=> b!165699 m!158887))

(assert (=> b!165699 m!158889))

(declare-fun m!158891 () Bool)

(assert (=> b!165698 m!158891))

(assert (=> b!165700 m!158891))

(assert (=> d!41240 m!158887))

(declare-fun m!158893 () Bool)

(assert (=> d!41240 m!158893))

(declare-fun m!158895 () Bool)

(assert (=> d!41240 m!158895))

(assert (=> d!41240 m!158879))

(assert (=> d!41240 m!158887))

(assert (=> d!41240 m!157265))

(assert (=> d!41240 m!158153))

(assert (=> d!41240 m!158879))

(declare-fun m!158897 () Bool)

(assert (=> d!41240 m!158897))

(assert (=> d!41240 m!158891))

(assert (=> bm!7100 m!158153))

(declare-fun m!158899 () Bool)

(assert (=> bm!7100 m!158899))

(assert (=> b!165701 m!158877))

(assert (=> b!165701 m!158153))

(assert (=> b!165701 m!158879))

(assert (=> b!165701 m!158879))

(assert (=> b!165701 m!158881))

(assert (=> b!165701 m!158881))

(assert (=> b!165701 m!158883))

(assert (=> b!165351 d!41240))

(declare-fun d!41242 () Bool)

(declare-fun lt!51352 () Token!746)

(assert (=> d!41242 (contains!452 lt!51005 lt!51352)))

(declare-fun e!99964 () Token!746)

(assert (=> d!41242 (= lt!51352 e!99964)))

(declare-fun c!33105 () Bool)

(assert (=> d!41242 (= c!33105 (= 0 0))))

(declare-fun e!99965 () Bool)

(assert (=> d!41242 e!99965))

(declare-fun res!74938 () Bool)

(assert (=> d!41242 (=> (not res!74938) (not e!99965))))

(assert (=> d!41242 (= res!74938 (<= 0 0))))

(assert (=> d!41242 (= (apply!397 lt!51005 0) lt!51352)))

(declare-fun b!165717 () Bool)

(assert (=> b!165717 (= e!99965 (< 0 (size!2368 lt!51005)))))

(declare-fun b!165718 () Bool)

(assert (=> b!165718 (= e!99964 (head!596 lt!51005))))

(declare-fun b!165719 () Bool)

(assert (=> b!165719 (= e!99964 (apply!397 (tail!336 lt!51005) (- 0 1)))))

(assert (= (and d!41242 res!74938) b!165717))

(assert (= (and d!41242 c!33105) b!165718))

(assert (= (and d!41242 (not c!33105)) b!165719))

(declare-fun m!158901 () Bool)

(assert (=> d!41242 m!158901))

(assert (=> b!165717 m!158725))

(declare-fun m!158903 () Bool)

(assert (=> b!165718 m!158903))

(declare-fun m!158905 () Bool)

(assert (=> b!165719 m!158905))

(assert (=> b!165719 m!158905))

(declare-fun m!158907 () Bool)

(assert (=> b!165719 m!158907))

(assert (=> b!165351 d!41242))

(declare-fun d!41244 () Bool)

(declare-fun e!99967 () Bool)

(assert (=> d!41244 e!99967))

(declare-fun res!74939 () Bool)

(assert (=> d!41244 (=> (not res!74939) (not e!99967))))

(declare-fun lt!51353 () List!2834)

(assert (=> d!41244 (= res!74939 (= ((_ map implies) (content!392 lt!51353) (content!392 lt!51003)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!99969 () List!2834)

(assert (=> d!41244 (= lt!51353 e!99969)))

(declare-fun c!33109 () Bool)

(assert (=> d!41244 (= c!33109 ((_ is Nil!2824) lt!51003))))

(assert (=> d!41244 (= (drop!135 lt!51003 (+ 0 1)) lt!51353)))

(declare-fun b!165720 () Bool)

(declare-fun e!99970 () List!2834)

(assert (=> b!165720 (= e!99970 (drop!135 (t!26456 lt!51003) (- (+ 0 1) 1)))))

(declare-fun bm!7101 () Bool)

(declare-fun call!7106 () Int)

(assert (=> bm!7101 (= call!7106 (size!2368 lt!51003))))

(declare-fun b!165721 () Bool)

(assert (=> b!165721 (= e!99970 lt!51003)))

(declare-fun b!165722 () Bool)

(declare-fun e!99966 () Int)

(assert (=> b!165722 (= e!99966 (- call!7106 (+ 0 1)))))

(declare-fun b!165723 () Bool)

(declare-fun e!99968 () Int)

(assert (=> b!165723 (= e!99968 call!7106)))

(declare-fun b!165724 () Bool)

(assert (=> b!165724 (= e!99967 (= (size!2368 lt!51353) e!99968))))

(declare-fun c!33106 () Bool)

(assert (=> b!165724 (= c!33106 (<= (+ 0 1) 0))))

(declare-fun b!165725 () Bool)

(assert (=> b!165725 (= e!99969 Nil!2824)))

(declare-fun b!165726 () Bool)

(assert (=> b!165726 (= e!99966 0)))

(declare-fun b!165727 () Bool)

(assert (=> b!165727 (= e!99968 e!99966)))

(declare-fun c!33108 () Bool)

(assert (=> b!165727 (= c!33108 (>= (+ 0 1) call!7106))))

(declare-fun b!165728 () Bool)

(assert (=> b!165728 (= e!99969 e!99970)))

(declare-fun c!33107 () Bool)

(assert (=> b!165728 (= c!33107 (<= (+ 0 1) 0))))

(assert (= (and d!41244 c!33109) b!165725))

(assert (= (and d!41244 (not c!33109)) b!165728))

(assert (= (and b!165728 c!33107) b!165721))

(assert (= (and b!165728 (not c!33107)) b!165720))

(assert (= (and d!41244 res!74939) b!165724))

(assert (= (and b!165724 c!33106) b!165723))

(assert (= (and b!165724 (not c!33106)) b!165727))

(assert (= (and b!165727 c!33108) b!165726))

(assert (= (and b!165727 (not c!33108)) b!165722))

(assert (= (or b!165723 b!165727 b!165722) bm!7101))

(declare-fun m!158917 () Bool)

(assert (=> d!41244 m!158917))

(assert (=> d!41244 m!158867))

(declare-fun m!158919 () Bool)

(assert (=> b!165720 m!158919))

(assert (=> bm!7101 m!158871))

(declare-fun m!158921 () Bool)

(assert (=> b!165724 m!158921))

(assert (=> b!165351 d!41244))

(declare-fun d!41250 () Bool)

(assert (=> d!41250 (dynLambda!1025 lambda!4592 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))

(declare-fun lt!51355 () Unit!2378)

(assert (=> d!41250 (= lt!51355 (choose!1809 (list!1023 (seqFromList!379 (t!26456 tokens!465))) lambda!4592 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))))

(declare-fun e!99972 () Bool)

(assert (=> d!41250 e!99972))

(declare-fun res!74944 () Bool)

(assert (=> d!41250 (=> (not res!74944) (not e!99972))))

(assert (=> d!41250 (= res!74944 (forall!533 (list!1023 (seqFromList!379 (t!26456 tokens!465))) lambda!4592))))

(assert (=> d!41250 (= (forallContained!68 (list!1023 (seqFromList!379 (t!26456 tokens!465))) lambda!4592 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!51355)))

(declare-fun b!165733 () Bool)

(assert (=> b!165733 (= e!99972 (contains!452 (list!1023 (seqFromList!379 (t!26456 tokens!465))) (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))))

(assert (= (and d!41250 res!74944) b!165733))

(declare-fun b_lambda!3599 () Bool)

(assert (=> (not b_lambda!3599) (not d!41250)))

(assert (=> d!41250 m!158111))

(declare-fun m!158933 () Bool)

(assert (=> d!41250 m!158933))

(assert (=> d!41250 m!158123))

(assert (=> d!41250 m!158111))

(declare-fun m!158941 () Bool)

(assert (=> d!41250 m!158941))

(assert (=> d!41250 m!158123))

(declare-fun m!158947 () Bool)

(assert (=> d!41250 m!158947))

(assert (=> b!165733 m!158123))

(assert (=> b!165733 m!158111))

(declare-fun m!158949 () Bool)

(assert (=> b!165733 m!158949))

(assert (=> b!165351 d!41250))

(declare-fun d!41252 () Bool)

(assert (=> d!41252 (= (tail!336 (drop!135 lt!51003 0)) (drop!135 lt!51003 (+ 0 1)))))

(declare-fun lt!51359 () Unit!2378)

(declare-fun choose!1813 (List!2834 Int) Unit!2378)

(assert (=> d!41252 (= lt!51359 (choose!1813 lt!51003 0))))

(declare-fun e!99977 () Bool)

(assert (=> d!41252 e!99977))

(declare-fun res!74949 () Bool)

(assert (=> d!41252 (=> (not res!74949) (not e!99977))))

(assert (=> d!41252 (= res!74949 (>= 0 0))))

(assert (=> d!41252 (= (lemmaDropTail!114 lt!51003 0) lt!51359)))

(declare-fun b!165740 () Bool)

(assert (=> b!165740 (= e!99977 (< 0 (size!2368 lt!51003)))))

(assert (= (and d!41252 res!74949) b!165740))

(assert (=> d!41252 m!158139))

(assert (=> d!41252 m!158139))

(assert (=> d!41252 m!158141))

(assert (=> d!41252 m!158163))

(declare-fun m!158967 () Bool)

(assert (=> d!41252 m!158967))

(assert (=> b!165740 m!158871))

(assert (=> b!165351 d!41252))

(declare-fun d!41258 () Bool)

(declare-fun lt!51360 () Token!746)

(assert (=> d!41258 (= lt!51360 (apply!397 (list!1023 (seqFromList!379 (t!26456 tokens!465))) 0))))

(assert (=> d!41258 (= lt!51360 (apply!400 (c!32902 (seqFromList!379 (t!26456 tokens!465))) 0))))

(declare-fun e!99978 () Bool)

(assert (=> d!41258 e!99978))

(declare-fun res!74950 () Bool)

(assert (=> d!41258 (=> (not res!74950) (not e!99978))))

(assert (=> d!41258 (= res!74950 (<= 0 0))))

(assert (=> d!41258 (= (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0) lt!51360)))

(declare-fun b!165741 () Bool)

(assert (=> b!165741 (= e!99978 (< 0 (size!2362 (seqFromList!379 (t!26456 tokens!465)))))))

(assert (= (and d!41258 res!74950) b!165741))

(assert (=> d!41258 m!157275))

(assert (=> d!41258 m!158123))

(assert (=> d!41258 m!158123))

(declare-fun m!158969 () Bool)

(assert (=> d!41258 m!158969))

(declare-fun m!158971 () Bool)

(assert (=> d!41258 m!158971))

(assert (=> b!165741 m!157275))

(assert (=> b!165741 m!158113))

(assert (=> b!165351 d!41258))

(declare-fun d!41260 () Bool)

(declare-fun lt!51363 () BalanceConc!1656)

(assert (=> d!41260 (= (list!1019 lt!51363) (originalCharacters!544 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))))

(assert (=> d!41260 (= lt!51363 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))) (value!18594 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))))

(assert (=> d!41260 (= (charsOf!156 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) lt!51363)))

(declare-fun b_lambda!3601 () Bool)

(assert (=> (not b_lambda!3601) (not d!41260)))

(declare-fun tb!6323 () Bool)

(declare-fun t!26538 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))) t!26538) tb!6323))

(declare-fun b!165744 () Bool)

(declare-fun e!99981 () Bool)

(declare-fun tp!82921 () Bool)

(assert (=> b!165744 (= e!99981 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))) (value!18594 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))) tp!82921))))

(declare-fun result!8962 () Bool)

(assert (=> tb!6323 (= result!8962 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))) (value!18594 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))) e!99981))))

(assert (= tb!6323 b!165744))

(declare-fun m!158973 () Bool)

(assert (=> b!165744 m!158973))

(declare-fun m!158975 () Bool)

(assert (=> tb!6323 m!158975))

(assert (=> d!41260 t!26538))

(declare-fun b_and!10583 () Bool)

(assert (= b_and!10575 (and (=> t!26538 result!8962) b_and!10583)))

(declare-fun t!26540 () Bool)

(declare-fun tb!6325 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))) t!26540) tb!6325))

(declare-fun result!8964 () Bool)

(assert (= result!8964 result!8962))

(assert (=> d!41260 t!26540))

(declare-fun b_and!10585 () Bool)

(assert (= b_and!10579 (and (=> t!26540 result!8964) b_and!10585)))

(declare-fun t!26542 () Bool)

(declare-fun tb!6327 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))) t!26542) tb!6327))

(declare-fun result!8966 () Bool)

(assert (= result!8966 result!8962))

(assert (=> d!41260 t!26542))

(declare-fun b_and!10587 () Bool)

(assert (= b_and!10573 (and (=> t!26542 result!8966) b_and!10587)))

(declare-fun t!26544 () Bool)

(declare-fun tb!6329 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))) t!26544) tb!6329))

(declare-fun result!8968 () Bool)

(assert (= result!8968 result!8962))

(assert (=> d!41260 t!26544))

(declare-fun b_and!10589 () Bool)

(assert (= b_and!10581 (and (=> t!26544 result!8968) b_and!10589)))

(declare-fun t!26546 () Bool)

(declare-fun tb!6331 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))) t!26546) tb!6331))

(declare-fun result!8970 () Bool)

(assert (= result!8970 result!8962))

(assert (=> d!41260 t!26546))

(declare-fun b_and!10591 () Bool)

(assert (= b_and!10577 (and (=> t!26546 result!8970) b_and!10591)))

(declare-fun m!158977 () Bool)

(assert (=> d!41260 m!158977))

(declare-fun m!158981 () Bool)

(assert (=> d!41260 m!158981))

(assert (=> b!165351 d!41260))

(declare-fun d!41262 () Bool)

(assert (=> d!41262 (= (list!1019 lt!50893) (list!1022 (c!32900 lt!50893)))))

(declare-fun bs!15911 () Bool)

(assert (= bs!15911 d!41262))

(declare-fun m!158985 () Bool)

(assert (=> bs!15911 m!158985))

(assert (=> d!40986 d!41262))

(declare-fun d!41266 () Bool)

(declare-fun c!33111 () Bool)

(assert (=> d!41266 (= c!33111 ((_ is Cons!2824) (list!1023 lt!50721)))))

(declare-fun e!99984 () List!2832)

(assert (=> d!41266 (= (printList!71 thiss!17480 (list!1023 lt!50721)) e!99984)))

(declare-fun b!165750 () Bool)

(assert (=> b!165750 (= e!99984 (++!636 (list!1019 (charsOf!156 (h!8221 (list!1023 lt!50721)))) (printList!71 thiss!17480 (t!26456 (list!1023 lt!50721)))))))

(declare-fun b!165751 () Bool)

(assert (=> b!165751 (= e!99984 Nil!2822)))

(assert (= (and d!41266 c!33111) b!165750))

(assert (= (and d!41266 (not c!33111)) b!165751))

(declare-fun m!158987 () Bool)

(assert (=> b!165750 m!158987))

(assert (=> b!165750 m!158987))

(declare-fun m!158989 () Bool)

(assert (=> b!165750 m!158989))

(declare-fun m!158991 () Bool)

(assert (=> b!165750 m!158991))

(assert (=> b!165750 m!158989))

(assert (=> b!165750 m!158991))

(declare-fun m!158993 () Bool)

(assert (=> b!165750 m!158993))

(assert (=> d!40986 d!41266))

(declare-fun d!41268 () Bool)

(assert (=> d!41268 (= (list!1023 lt!50721) (list!1027 (c!32902 lt!50721)))))

(declare-fun bs!15912 () Bool)

(assert (= bs!15912 d!41268))

(declare-fun m!158999 () Bool)

(assert (=> bs!15912 m!158999))

(assert (=> d!40986 d!41268))

(assert (=> d!40986 d!40990))

(declare-fun bs!15951 () Bool)

(declare-fun d!41270 () Bool)

(assert (= bs!15951 (and d!41270 b!165658)))

(declare-fun lambda!4611 () Int)

(assert (=> bs!15951 (= lambda!4611 lambda!4600)))

(declare-fun bs!15952 () Bool)

(assert (= bs!15952 (and d!41270 b!165351)))

(assert (=> bs!15952 (= lambda!4611 lambda!4592)))

(declare-fun bs!15953 () Bool)

(assert (= bs!15953 (and d!41270 d!41086)))

(assert (=> bs!15953 (not (= lambda!4611 lambda!4591))))

(declare-fun bs!15954 () Bool)

(assert (= bs!15954 (and d!41270 d!40916)))

(assert (=> bs!15954 (not (= lambda!4611 lambda!4563))))

(declare-fun bs!15955 () Bool)

(assert (= bs!15955 (and d!41270 b!165344)))

(assert (=> bs!15955 (= lambda!4611 lambda!4590)))

(declare-fun bs!15956 () Bool)

(assert (= bs!15956 (and d!41270 d!41232)))

(assert (=> bs!15956 (not (= lambda!4611 lambda!4599))))

(declare-fun bs!15957 () Bool)

(assert (= bs!15957 (and d!41270 b!164997)))

(assert (=> bs!15957 (= lambda!4611 lambda!4564)))

(declare-fun bs!15958 () Bool)

(assert (= bs!15958 (and d!41270 b!165075)))

(assert (=> bs!15958 (= lambda!4611 lambda!4573)))

(declare-fun bs!15959 () Bool)

(assert (= bs!15959 (and d!41270 b!164839)))

(assert (=> bs!15959 (not (= lambda!4611 lambda!4551))))

(declare-fun bs!15960 () Bool)

(assert (= bs!15960 (and d!41270 b!164821)))

(assert (=> bs!15960 (= lambda!4611 lambda!4552)))

(declare-fun bs!15961 () Bool)

(assert (= bs!15961 (and d!41270 d!41070)))

(assert (=> bs!15961 (= lambda!4611 lambda!4589)))

(declare-fun b!165851 () Bool)

(declare-fun e!100050 () Bool)

(assert (=> b!165851 (= e!100050 true)))

(declare-fun b!165850 () Bool)

(declare-fun e!100049 () Bool)

(assert (=> b!165850 (= e!100049 e!100050)))

(declare-fun b!165849 () Bool)

(declare-fun e!100048 () Bool)

(assert (=> b!165849 (= e!100048 e!100049)))

(assert (=> d!41270 e!100048))

(assert (= b!165850 b!165851))

(assert (= b!165849 b!165850))

(assert (= (and d!41270 ((_ is Cons!2823) rules!1920)) b!165849))

(assert (=> b!165851 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4611))))

(assert (=> b!165851 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4611))))

(assert (=> d!41270 true))

(declare-fun lt!51412 () Bool)

(assert (=> d!41270 (= lt!51412 (forall!533 (list!1023 lt!50710) lambda!4611))))

(declare-fun e!100047 () Bool)

(assert (=> d!41270 (= lt!51412 e!100047)))

(declare-fun res!74989 () Bool)

(assert (=> d!41270 (=> res!74989 e!100047)))

(assert (=> d!41270 (= res!74989 (not ((_ is Cons!2824) (list!1023 lt!50710))))))

(assert (=> d!41270 (not (isEmpty!1156 rules!1920))))

(assert (=> d!41270 (= (rulesProduceEachTokenIndividuallyList!105 thiss!17480 rules!1920 (list!1023 lt!50710)) lt!51412)))

(declare-fun b!165847 () Bool)

(declare-fun e!100046 () Bool)

(assert (=> b!165847 (= e!100047 e!100046)))

(declare-fun res!74990 () Bool)

(assert (=> b!165847 (=> (not res!74990) (not e!100046))))

(assert (=> b!165847 (= res!74990 (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (h!8221 (list!1023 lt!50710))))))

(declare-fun b!165848 () Bool)

(assert (=> b!165848 (= e!100046 (rulesProduceEachTokenIndividuallyList!105 thiss!17480 rules!1920 (t!26456 (list!1023 lt!50710))))))

(assert (= (and d!41270 (not res!74989)) b!165847))

(assert (= (and b!165847 res!74990) b!165848))

(assert (=> d!41270 m!157519))

(declare-fun m!159237 () Bool)

(assert (=> d!41270 m!159237))

(assert (=> d!41270 m!157245))

(declare-fun m!159239 () Bool)

(assert (=> b!165847 m!159239))

(declare-fun m!159241 () Bool)

(assert (=> b!165848 m!159241))

(assert (=> b!165329 d!41270))

(declare-fun d!41348 () Bool)

(assert (=> d!41348 (= (list!1023 lt!50710) (list!1027 (c!32902 lt!50710)))))

(declare-fun bs!15962 () Bool)

(assert (= bs!15962 d!41348))

(declare-fun m!159243 () Bool)

(assert (=> bs!15962 m!159243))

(assert (=> b!165329 d!41348))

(assert (=> bm!7033 d!41176))

(declare-fun b!165855 () Bool)

(declare-fun e!100054 () List!2832)

(assert (=> b!165855 (= e!100054 Nil!2822)))

(declare-fun b!165857 () Bool)

(declare-fun e!100055 () List!2832)

(assert (=> b!165857 (= e!100055 (list!1026 (xs!3419 (c!32900 (charsOf!156 (h!8221 tokens!465))))))))

(declare-fun b!165858 () Bool)

(assert (=> b!165858 (= e!100055 (++!636 (list!1022 (left!2133 (c!32900 (charsOf!156 (h!8221 tokens!465))))) (list!1022 (right!2463 (c!32900 (charsOf!156 (h!8221 tokens!465)))))))))

(declare-fun d!41350 () Bool)

(declare-fun c!33140 () Bool)

(assert (=> d!41350 (= c!33140 ((_ is Empty!824) (c!32900 (charsOf!156 (h!8221 tokens!465)))))))

(assert (=> d!41350 (= (list!1022 (c!32900 (charsOf!156 (h!8221 tokens!465)))) e!100054)))

(declare-fun b!165856 () Bool)

(assert (=> b!165856 (= e!100054 e!100055)))

(declare-fun c!33141 () Bool)

(assert (=> b!165856 (= c!33141 ((_ is Leaf!1414) (c!32900 (charsOf!156 (h!8221 tokens!465)))))))

(assert (= (and d!41350 c!33140) b!165855))

(assert (= (and d!41350 (not c!33140)) b!165856))

(assert (= (and b!165856 c!33141) b!165857))

(assert (= (and b!165856 (not c!33141)) b!165858))

(declare-fun m!159253 () Bool)

(assert (=> b!165857 m!159253))

(declare-fun m!159255 () Bool)

(assert (=> b!165858 m!159255))

(declare-fun m!159257 () Bool)

(assert (=> b!165858 m!159257))

(assert (=> b!165858 m!159255))

(assert (=> b!165858 m!159257))

(declare-fun m!159259 () Bool)

(assert (=> b!165858 m!159259))

(assert (=> d!41090 d!41350))

(declare-fun d!41356 () Bool)

(assert (=> d!41356 true))

(declare-fun lambda!4614 () Int)

(declare-fun order!1467 () Int)

(declare-fun dynLambda!1028 (Int Int) Int)

(assert (=> d!41356 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (dynLambda!1028 order!1467 lambda!4614))))

(assert (=> d!41356 true))

(assert (=> d!41356 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (dynLambda!1028 order!1467 lambda!4614))))

(declare-fun Forall!133 (Int) Bool)

(assert (=> d!41356 (= (semiInverseModEq!173 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (Forall!133 lambda!4614))))

(declare-fun bs!15966 () Bool)

(assert (= bs!15966 d!41356))

(declare-fun m!159267 () Bool)

(assert (=> bs!15966 m!159267))

(assert (=> d!41052 d!41356))

(declare-fun bs!15967 () Bool)

(declare-fun d!41362 () Bool)

(assert (= bs!15967 (and d!41362 d!41356)))

(declare-fun lambda!4615 () Int)

(assert (=> bs!15967 (= (and (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (= (toValue!1160 (transformation!501 (h!8220 rules!1920))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) (= lambda!4615 lambda!4614))))

(assert (=> d!41362 true))

(assert (=> d!41362 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1028 order!1467 lambda!4615))))

(assert (=> d!41362 true))

(assert (=> d!41362 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1028 order!1467 lambda!4615))))

(assert (=> d!41362 (= (semiInverseModEq!173 (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (Forall!133 lambda!4615))))

(declare-fun bs!15968 () Bool)

(assert (= bs!15968 d!41362))

(declare-fun m!159273 () Bool)

(assert (=> bs!15968 m!159273))

(assert (=> d!41058 d!41362))

(declare-fun b!165867 () Bool)

(declare-fun res!75000 () Bool)

(declare-fun e!100059 () Bool)

(assert (=> b!165867 (=> (not res!75000) (not e!100059))))

(assert (=> b!165867 (= res!75000 (<= (height!90 (++!641 (c!32900 e!99733) (c!32900 (ite c!33010 lt!50994 call!7088)))) (+ (max!0 (height!90 (c!32900 e!99733)) (height!90 (c!32900 (ite c!33010 lt!50994 call!7088)))) 1)))))

(declare-fun b!165869 () Bool)

(declare-fun lt!51420 () BalanceConc!1656)

(assert (=> b!165869 (= e!100059 (= (list!1019 lt!51420) (++!636 (list!1019 e!99733) (list!1019 (ite c!33010 lt!50994 call!7088)))))))

(declare-fun d!41368 () Bool)

(assert (=> d!41368 e!100059))

(declare-fun res!74998 () Bool)

(assert (=> d!41368 (=> (not res!74998) (not e!100059))))

(assert (=> d!41368 (= res!74998 (appendAssocInst!29 (c!32900 e!99733) (c!32900 (ite c!33010 lt!50994 call!7088))))))

(assert (=> d!41368 (= lt!51420 (BalanceConc!1657 (++!641 (c!32900 e!99733) (c!32900 (ite c!33010 lt!50994 call!7088)))))))

(assert (=> d!41368 (= (++!638 e!99733 (ite c!33010 lt!50994 call!7088)) lt!51420)))

(declare-fun b!165868 () Bool)

(declare-fun res!74999 () Bool)

(assert (=> b!165868 (=> (not res!74999) (not e!100059))))

(assert (=> b!165868 (= res!74999 (>= (height!90 (++!641 (c!32900 e!99733) (c!32900 (ite c!33010 lt!50994 call!7088)))) (max!0 (height!90 (c!32900 e!99733)) (height!90 (c!32900 (ite c!33010 lt!50994 call!7088))))))))

(declare-fun b!165866 () Bool)

(declare-fun res!74997 () Bool)

(assert (=> b!165866 (=> (not res!74997) (not e!100059))))

(assert (=> b!165866 (= res!74997 (isBalanced!232 (++!641 (c!32900 e!99733) (c!32900 (ite c!33010 lt!50994 call!7088)))))))

(assert (= (and d!41368 res!74998) b!165866))

(assert (= (and b!165866 res!74997) b!165867))

(assert (= (and b!165867 res!75000) b!165868))

(assert (= (and b!165868 res!74999) b!165869))

(declare-fun m!159275 () Bool)

(assert (=> b!165866 m!159275))

(assert (=> b!165866 m!159275))

(declare-fun m!159277 () Bool)

(assert (=> b!165866 m!159277))

(declare-fun m!159279 () Bool)

(assert (=> d!41368 m!159279))

(assert (=> d!41368 m!159275))

(assert (=> b!165867 m!159275))

(declare-fun m!159281 () Bool)

(assert (=> b!165867 m!159281))

(assert (=> b!165867 m!159275))

(declare-fun m!159283 () Bool)

(assert (=> b!165867 m!159283))

(declare-fun m!159285 () Bool)

(assert (=> b!165867 m!159285))

(declare-fun m!159287 () Bool)

(assert (=> b!165867 m!159287))

(assert (=> b!165867 m!159285))

(assert (=> b!165867 m!159283))

(declare-fun m!159289 () Bool)

(assert (=> b!165869 m!159289))

(declare-fun m!159291 () Bool)

(assert (=> b!165869 m!159291))

(declare-fun m!159293 () Bool)

(assert (=> b!165869 m!159293))

(assert (=> b!165869 m!159291))

(assert (=> b!165869 m!159293))

(declare-fun m!159295 () Bool)

(assert (=> b!165869 m!159295))

(assert (=> b!165868 m!159275))

(assert (=> b!165868 m!159281))

(assert (=> b!165868 m!159275))

(assert (=> b!165868 m!159283))

(assert (=> b!165868 m!159285))

(assert (=> b!165868 m!159287))

(assert (=> b!165868 m!159285))

(assert (=> b!165868 m!159283))

(assert (=> bm!7082 d!41368))

(declare-fun d!41370 () Bool)

(declare-fun lt!51421 () Token!746)

(assert (=> d!41370 (= lt!51421 (apply!397 (list!1023 (_1!1561 lt!50978)) 0))))

(assert (=> d!41370 (= lt!51421 (apply!400 (c!32902 (_1!1561 lt!50978)) 0))))

(declare-fun e!100060 () Bool)

(assert (=> d!41370 e!100060))

(declare-fun res!75001 () Bool)

(assert (=> d!41370 (=> (not res!75001) (not e!100060))))

(assert (=> d!41370 (= res!75001 (<= 0 0))))

(assert (=> d!41370 (= (apply!398 (_1!1561 lt!50978) 0) lt!51421)))

(declare-fun b!165870 () Bool)

(assert (=> b!165870 (= e!100060 (< 0 (size!2362 (_1!1561 lt!50978))))))

(assert (= (and d!41370 res!75001) b!165870))

(declare-fun m!159297 () Bool)

(assert (=> d!41370 m!159297))

(assert (=> d!41370 m!159297))

(declare-fun m!159299 () Bool)

(assert (=> d!41370 m!159299))

(declare-fun m!159301 () Bool)

(assert (=> d!41370 m!159301))

(assert (=> b!165870 m!158043))

(assert (=> b!165324 d!41370))

(declare-fun d!41372 () Bool)

(assert (=> d!41372 (= (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))) (isBalanced!232 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))))))

(declare-fun bs!15969 () Bool)

(assert (= bs!15969 d!41372))

(declare-fun m!159303 () Bool)

(assert (=> bs!15969 m!159303))

(assert (=> tb!6299 d!41372))

(declare-fun d!41374 () Bool)

(declare-fun lt!51426 () Int)

(assert (=> d!41374 (= lt!51426 (size!2368 (list!1023 (_1!1561 lt!50937))))))

(declare-fun size!2369 (Conc!825) Int)

(assert (=> d!41374 (= lt!51426 (size!2369 (c!32902 (_1!1561 lt!50937))))))

(assert (=> d!41374 (= (size!2362 (_1!1561 lt!50937)) lt!51426)))

(declare-fun bs!15970 () Bool)

(assert (= bs!15970 d!41374))

(assert (=> bs!15970 m!157807))

(assert (=> bs!15970 m!157807))

(declare-fun m!159305 () Bool)

(assert (=> bs!15970 m!159305))

(declare-fun m!159307 () Bool)

(assert (=> bs!15970 m!159307))

(assert (=> d!41010 d!41374))

(declare-fun lt!51632 () Option!282)

(declare-fun b!166146 () Bool)

(declare-fun lt!51628 () tuple2!2690)

(declare-fun lexRec!64 (LexerInterface!387 List!2833 BalanceConc!1656) tuple2!2690)

(assert (=> b!166146 (= lt!51628 (lexRec!64 thiss!17480 rules!1920 (_2!1564 (v!13704 lt!51632))))))

(declare-fun e!100233 () tuple2!2690)

(declare-fun prepend!147 (BalanceConc!1658 Token!746) BalanceConc!1658)

(assert (=> b!166146 (= e!100233 (tuple2!2691 (prepend!147 (_1!1561 lt!51628) (_1!1564 (v!13704 lt!51632))) (_2!1561 lt!51628)))))

(declare-fun b!166147 () Bool)

(declare-fun e!100235 () tuple2!2690)

(declare-fun lt!51648 () BalanceConc!1656)

(assert (=> b!166147 (= e!100235 (tuple2!2691 (BalanceConc!1659 Empty!825) lt!51648))))

(declare-fun b!166148 () Bool)

(declare-fun lt!51633 () tuple2!2690)

(declare-fun lt!51620 () Option!282)

(assert (=> b!166148 (= lt!51633 (lexRec!64 thiss!17480 rules!1920 (_2!1564 (v!13704 lt!51620))))))

(assert (=> b!166148 (= e!100235 (tuple2!2691 (prepend!147 (_1!1561 lt!51633) (_1!1564 (v!13704 lt!51620))) (_2!1561 lt!51633)))))

(declare-fun lt!51638 () BalanceConc!1656)

(declare-fun lt!51634 () Option!282)

(declare-fun b!166149 () Bool)

(declare-fun e!100236 () tuple2!2690)

(declare-fun append!69 (BalanceConc!1658 Token!746) BalanceConc!1658)

(assert (=> b!166149 (= e!100236 (lexTailRecV2!94 thiss!17480 rules!1920 (seqFromList!380 lt!50724) lt!51638 (_2!1564 (v!13704 lt!51634)) (append!69 (BalanceConc!1659 Empty!825) (_1!1564 (v!13704 lt!51634)))))))

(declare-fun lt!51649 () tuple2!2690)

(assert (=> b!166149 (= lt!51649 (lexRec!64 thiss!17480 rules!1920 (_2!1564 (v!13704 lt!51634))))))

(declare-fun lt!51651 () List!2832)

(assert (=> b!166149 (= lt!51651 (list!1019 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!51647 () List!2832)

(assert (=> b!166149 (= lt!51647 (list!1019 (charsOf!156 (_1!1564 (v!13704 lt!51634)))))))

(declare-fun lt!51619 () List!2832)

(assert (=> b!166149 (= lt!51619 (list!1019 (_2!1564 (v!13704 lt!51634))))))

(declare-fun lt!51631 () Unit!2378)

(assert (=> b!166149 (= lt!51631 (lemmaConcatAssociativity!184 lt!51651 lt!51647 lt!51619))))

(assert (=> b!166149 (= (++!636 (++!636 lt!51651 lt!51647) lt!51619) (++!636 lt!51651 (++!636 lt!51647 lt!51619)))))

(declare-fun lt!51636 () Unit!2378)

(assert (=> b!166149 (= lt!51636 lt!51631)))

(assert (=> b!166149 (= lt!51632 (maxPrefixZipperSequence!82 thiss!17480 rules!1920 (seqFromList!380 lt!50724)))))

(declare-fun c!33225 () Bool)

(assert (=> b!166149 (= c!33225 ((_ is Some!281) lt!51632))))

(assert (=> b!166149 (= (lexRec!64 thiss!17480 rules!1920 (seqFromList!380 lt!50724)) e!100233)))

(declare-fun lt!51635 () Unit!2378)

(declare-fun Unit!2410 () Unit!2378)

(assert (=> b!166149 (= lt!51635 Unit!2410)))

(declare-fun lt!51652 () List!2834)

(assert (=> b!166149 (= lt!51652 (list!1023 (BalanceConc!1659 Empty!825)))))

(declare-fun lt!51623 () List!2834)

(assert (=> b!166149 (= lt!51623 (Cons!2824 (_1!1564 (v!13704 lt!51634)) Nil!2824))))

(declare-fun lt!51641 () List!2834)

(assert (=> b!166149 (= lt!51641 (list!1023 (_1!1561 lt!51649)))))

(declare-fun lt!51630 () Unit!2378)

(declare-fun lemmaConcatAssociativity!186 (List!2834 List!2834 List!2834) Unit!2378)

(assert (=> b!166149 (= lt!51630 (lemmaConcatAssociativity!186 lt!51652 lt!51623 lt!51641))))

(declare-fun ++!642 (List!2834 List!2834) List!2834)

(assert (=> b!166149 (= (++!642 (++!642 lt!51652 lt!51623) lt!51641) (++!642 lt!51652 (++!642 lt!51623 lt!51641)))))

(declare-fun lt!51624 () Unit!2378)

(assert (=> b!166149 (= lt!51624 lt!51630)))

(declare-fun lt!51644 () List!2832)

(assert (=> b!166149 (= lt!51644 (++!636 (list!1019 (BalanceConc!1657 Empty!824)) (list!1019 (charsOf!156 (_1!1564 (v!13704 lt!51634))))))))

(declare-fun lt!51643 () List!2832)

(assert (=> b!166149 (= lt!51643 (list!1019 (_2!1564 (v!13704 lt!51634))))))

(declare-fun lt!51642 () List!2834)

(assert (=> b!166149 (= lt!51642 (list!1023 (append!69 (BalanceConc!1659 Empty!825) (_1!1564 (v!13704 lt!51634)))))))

(declare-fun lt!51640 () Unit!2378)

(declare-fun lemmaLexThenLexPrefix!51 (LexerInterface!387 List!2833 List!2832 List!2832 List!2834 List!2834 List!2832) Unit!2378)

(assert (=> b!166149 (= lt!51640 (lemmaLexThenLexPrefix!51 thiss!17480 rules!1920 lt!51644 lt!51643 lt!51642 (list!1023 (_1!1561 lt!51649)) (list!1019 (_2!1561 lt!51649))))))

(assert (=> b!166149 (= (lexList!107 thiss!17480 rules!1920 lt!51644) (tuple2!2703 lt!51642 Nil!2822))))

(declare-fun lt!51646 () Unit!2378)

(assert (=> b!166149 (= lt!51646 lt!51640)))

(assert (=> b!166149 (= lt!51648 (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (_1!1564 (v!13704 lt!51634)))))))

(assert (=> b!166149 (= lt!51620 (maxPrefixZipperSequence!82 thiss!17480 rules!1920 lt!51648))))

(declare-fun c!33226 () Bool)

(assert (=> b!166149 (= c!33226 ((_ is Some!281) lt!51620))))

(assert (=> b!166149 (= (lexRec!64 thiss!17480 rules!1920 (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (_1!1564 (v!13704 lt!51634))))) e!100235)))

(declare-fun lt!51650 () Unit!2378)

(declare-fun Unit!2411 () Unit!2378)

(assert (=> b!166149 (= lt!51650 Unit!2411)))

(assert (=> b!166149 (= lt!51638 (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (_1!1564 (v!13704 lt!51634)))))))

(declare-fun lt!51625 () List!2832)

(assert (=> b!166149 (= lt!51625 (list!1019 lt!51638))))

(declare-fun lt!51629 () List!2832)

(assert (=> b!166149 (= lt!51629 (list!1019 (_2!1564 (v!13704 lt!51634))))))

(declare-fun lt!51627 () Unit!2378)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!49 (List!2832 List!2832) Unit!2378)

(assert (=> b!166149 (= lt!51627 (lemmaConcatTwoListThenFSndIsSuffix!49 lt!51625 lt!51629))))

(declare-fun isSuffix!49 (List!2832 List!2832) Bool)

(assert (=> b!166149 (isSuffix!49 lt!51629 (++!636 lt!51625 lt!51629))))

(declare-fun lt!51639 () Unit!2378)

(assert (=> b!166149 (= lt!51639 lt!51627)))

(declare-fun b!166150 () Bool)

(assert (=> b!166150 (= e!100233 (tuple2!2691 (BalanceConc!1659 Empty!825) (seqFromList!380 lt!50724)))))

(declare-fun b!166151 () Bool)

(assert (=> b!166151 (= e!100236 (tuple2!2691 (BalanceConc!1659 Empty!825) (seqFromList!380 lt!50724)))))

(declare-fun e!100234 () Bool)

(declare-fun b!166152 () Bool)

(declare-fun lt!51626 () tuple2!2690)

(assert (=> b!166152 (= e!100234 (= (list!1019 (_2!1561 lt!51626)) (list!1019 (_2!1561 (lexRec!64 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))))))

(declare-fun d!41376 () Bool)

(assert (=> d!41376 e!100234))

(declare-fun res!75099 () Bool)

(assert (=> d!41376 (=> (not res!75099) (not e!100234))))

(assert (=> d!41376 (= res!75099 (= (list!1023 (_1!1561 lt!51626)) (list!1023 (_1!1561 (lexRec!64 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))))))

(assert (=> d!41376 (= lt!51626 e!100236)))

(declare-fun c!33227 () Bool)

(assert (=> d!41376 (= c!33227 ((_ is Some!281) lt!51634))))

(declare-fun maxPrefixZipperSequenceV2!49 (LexerInterface!387 List!2833 BalanceConc!1656 BalanceConc!1656) Option!282)

(assert (=> d!41376 (= lt!51634 (maxPrefixZipperSequenceV2!49 thiss!17480 rules!1920 (seqFromList!380 lt!50724) (seqFromList!380 lt!50724)))))

(declare-fun lt!51645 () Unit!2378)

(declare-fun lt!51621 () Unit!2378)

(assert (=> d!41376 (= lt!51645 lt!51621)))

(declare-fun lt!51637 () List!2832)

(declare-fun lt!51622 () List!2832)

(assert (=> d!41376 (isSuffix!49 lt!51637 (++!636 lt!51622 lt!51637))))

(assert (=> d!41376 (= lt!51621 (lemmaConcatTwoListThenFSndIsSuffix!49 lt!51622 lt!51637))))

(assert (=> d!41376 (= lt!51637 (list!1019 (seqFromList!380 lt!50724)))))

(assert (=> d!41376 (= lt!51622 (list!1019 (BalanceConc!1657 Empty!824)))))

(assert (=> d!41376 (= (lexTailRecV2!94 thiss!17480 rules!1920 (seqFromList!380 lt!50724) (BalanceConc!1657 Empty!824) (seqFromList!380 lt!50724) (BalanceConc!1659 Empty!825)) lt!51626)))

(assert (= (and d!41376 c!33227) b!166149))

(assert (= (and d!41376 (not c!33227)) b!166151))

(assert (= (and b!166149 c!33225) b!166146))

(assert (= (and b!166149 (not c!33225)) b!166150))

(assert (= (and b!166149 c!33226) b!166148))

(assert (= (and b!166149 (not c!33226)) b!166147))

(assert (= (and d!41376 res!75099) b!166152))

(declare-fun m!159957 () Bool)

(assert (=> b!166148 m!159957))

(declare-fun m!159959 () Bool)

(assert (=> b!166148 m!159959))

(declare-fun m!159961 () Bool)

(assert (=> d!41376 m!159961))

(assert (=> d!41376 m!157231))

(declare-fun m!159965 () Bool)

(assert (=> d!41376 m!159965))

(declare-fun m!159969 () Bool)

(assert (=> d!41376 m!159969))

(assert (=> d!41376 m!157231))

(assert (=> d!41376 m!157231))

(declare-fun m!159973 () Bool)

(assert (=> d!41376 m!159973))

(assert (=> d!41376 m!157727))

(declare-fun m!159975 () Bool)

(assert (=> d!41376 m!159975))

(assert (=> d!41376 m!159961))

(declare-fun m!159977 () Bool)

(assert (=> d!41376 m!159977))

(assert (=> d!41376 m!157231))

(assert (=> d!41376 m!157799))

(declare-fun m!159979 () Bool)

(assert (=> d!41376 m!159979))

(declare-fun m!159981 () Bool)

(assert (=> b!166146 m!159981))

(declare-fun m!159983 () Bool)

(assert (=> b!166146 m!159983))

(assert (=> b!166149 m!157231))

(declare-fun m!159985 () Bool)

(assert (=> b!166149 m!159985))

(declare-fun m!159987 () Bool)

(assert (=> b!166149 m!159987))

(declare-fun m!159989 () Bool)

(assert (=> b!166149 m!159989))

(assert (=> b!166149 m!159985))

(declare-fun m!159991 () Bool)

(assert (=> b!166149 m!159991))

(assert (=> b!166149 m!157231))

(declare-fun m!159993 () Bool)

(assert (=> b!166149 m!159993))

(declare-fun m!159995 () Bool)

(assert (=> b!166149 m!159995))

(declare-fun m!159997 () Bool)

(assert (=> b!166149 m!159997))

(declare-fun m!159999 () Bool)

(assert (=> b!166149 m!159999))

(declare-fun m!160001 () Bool)

(assert (=> b!166149 m!160001))

(declare-fun m!160003 () Bool)

(assert (=> b!166149 m!160003))

(declare-fun m!160005 () Bool)

(assert (=> b!166149 m!160005))

(declare-fun m!160007 () Bool)

(assert (=> b!166149 m!160007))

(declare-fun m!160009 () Bool)

(assert (=> b!166149 m!160009))

(assert (=> b!166149 m!157231))

(assert (=> b!166149 m!159965))

(declare-fun m!160011 () Bool)

(assert (=> b!166149 m!160011))

(declare-fun m!160013 () Bool)

(assert (=> b!166149 m!160013))

(declare-fun m!160017 () Bool)

(assert (=> b!166149 m!160017))

(declare-fun m!160019 () Bool)

(assert (=> b!166149 m!160019))

(declare-fun m!160023 () Bool)

(assert (=> b!166149 m!160023))

(declare-fun m!160027 () Bool)

(assert (=> b!166149 m!160027))

(assert (=> b!166149 m!159995))

(assert (=> b!166149 m!159997))

(declare-fun m!160031 () Bool)

(assert (=> b!166149 m!160031))

(assert (=> b!166149 m!160005))

(declare-fun m!160033 () Bool)

(assert (=> b!166149 m!160033))

(assert (=> b!166149 m!159985))

(declare-fun m!160039 () Bool)

(assert (=> b!166149 m!160039))

(assert (=> b!166149 m!160031))

(declare-fun m!160045 () Bool)

(assert (=> b!166149 m!160045))

(assert (=> b!166149 m!160019))

(declare-fun m!160051 () Bool)

(assert (=> b!166149 m!160051))

(assert (=> b!166149 m!160005))

(declare-fun m!160057 () Bool)

(assert (=> b!166149 m!160057))

(assert (=> b!166149 m!157727))

(declare-fun m!160061 () Bool)

(assert (=> b!166149 m!160061))

(declare-fun m!160063 () Bool)

(assert (=> b!166149 m!160063))

(assert (=> b!166149 m!160001))

(declare-fun m!160069 () Bool)

(assert (=> b!166149 m!160069))

(assert (=> b!166149 m!160013))

(declare-fun m!160071 () Bool)

(assert (=> b!166149 m!160071))

(assert (=> b!166149 m!160061))

(assert (=> b!166149 m!157727))

(assert (=> b!166149 m!160033))

(declare-fun m!160075 () Bool)

(assert (=> b!166149 m!160075))

(assert (=> b!166149 m!160007))

(declare-fun m!160077 () Bool)

(assert (=> b!166149 m!160077))

(declare-fun m!160079 () Bool)

(assert (=> b!166152 m!160079))

(assert (=> b!166152 m!157231))

(assert (=> b!166152 m!159965))

(declare-fun m!160081 () Bool)

(assert (=> b!166152 m!160081))

(assert (=> d!41010 d!41376))

(declare-fun d!41504 () Bool)

(assert (=> d!41504 (= (tail!336 (drop!135 lt!50916 0)) (t!26456 (drop!135 lt!50916 0)))))

(assert (=> b!165114 d!41504))

(declare-fun d!41506 () Bool)

(declare-fun e!100246 () Bool)

(assert (=> d!41506 e!100246))

(declare-fun res!75106 () Bool)

(assert (=> d!41506 (=> (not res!75106) (not e!100246))))

(declare-fun lt!51687 () List!2834)

(assert (=> d!41506 (= res!75106 (= ((_ map implies) (content!392 lt!51687) (content!392 lt!50922)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!100248 () List!2834)

(assert (=> d!41506 (= lt!51687 e!100248)))

(declare-fun c!33234 () Bool)

(assert (=> d!41506 (= c!33234 ((_ is Nil!2824) lt!50922))))

(assert (=> d!41506 (= (drop!135 lt!50922 0) lt!51687)))

(declare-fun b!166165 () Bool)

(declare-fun e!100249 () List!2834)

(assert (=> b!166165 (= e!100249 (drop!135 (t!26456 lt!50922) (- 0 1)))))

(declare-fun bm!7140 () Bool)

(declare-fun call!7145 () Int)

(assert (=> bm!7140 (= call!7145 (size!2368 lt!50922))))

(declare-fun b!166166 () Bool)

(assert (=> b!166166 (= e!100249 lt!50922)))

(declare-fun b!166167 () Bool)

(declare-fun e!100245 () Int)

(assert (=> b!166167 (= e!100245 (- call!7145 0))))

(declare-fun b!166168 () Bool)

(declare-fun e!100247 () Int)

(assert (=> b!166168 (= e!100247 call!7145)))

(declare-fun b!166169 () Bool)

(assert (=> b!166169 (= e!100246 (= (size!2368 lt!51687) e!100247))))

(declare-fun c!33231 () Bool)

(assert (=> b!166169 (= c!33231 (<= 0 0))))

(declare-fun b!166170 () Bool)

(assert (=> b!166170 (= e!100248 Nil!2824)))

(declare-fun b!166171 () Bool)

(assert (=> b!166171 (= e!100245 0)))

(declare-fun b!166172 () Bool)

(assert (=> b!166172 (= e!100247 e!100245)))

(declare-fun c!33233 () Bool)

(assert (=> b!166172 (= c!33233 (>= 0 call!7145))))

(declare-fun b!166173 () Bool)

(assert (=> b!166173 (= e!100248 e!100249)))

(declare-fun c!33232 () Bool)

(assert (=> b!166173 (= c!33232 (<= 0 0))))

(assert (= (and d!41506 c!33234) b!166170))

(assert (= (and d!41506 (not c!33234)) b!166173))

(assert (= (and b!166173 c!33232) b!166166))

(assert (= (and b!166173 (not c!33232)) b!166165))

(assert (= (and d!41506 res!75106) b!166169))

(assert (= (and b!166169 c!33231) b!166168))

(assert (= (and b!166169 (not c!33231)) b!166172))

(assert (= (and b!166172 c!33233) b!166171))

(assert (= (and b!166172 (not c!33233)) b!166167))

(assert (= (or b!166168 b!166172 b!166167) bm!7140))

(declare-fun m!160083 () Bool)

(assert (=> d!41506 m!160083))

(declare-fun m!160085 () Bool)

(assert (=> d!41506 m!160085))

(declare-fun m!160087 () Bool)

(assert (=> b!166165 m!160087))

(declare-fun m!160089 () Bool)

(assert (=> bm!7140 m!160089))

(declare-fun m!160091 () Bool)

(assert (=> b!166169 m!160091))

(assert (=> b!165114 d!41506))

(declare-fun d!41508 () Bool)

(assert (=> d!41508 (= (head!596 (drop!135 lt!50922 0)) (apply!397 lt!50922 0))))

(declare-fun lt!51688 () Unit!2378)

(assert (=> d!41508 (= lt!51688 (choose!1812 lt!50922 0))))

(declare-fun e!100250 () Bool)

(assert (=> d!41508 e!100250))

(declare-fun res!75107 () Bool)

(assert (=> d!41508 (=> (not res!75107) (not e!100250))))

(assert (=> d!41508 (= res!75107 (>= 0 0))))

(assert (=> d!41508 (= (lemmaDropApply!122 lt!50922 0) lt!51688)))

(declare-fun b!166174 () Bool)

(assert (=> b!166174 (= e!100250 (< 0 (size!2368 lt!50922)))))

(assert (= (and d!41508 res!75107) b!166174))

(assert (=> d!41508 m!157755))

(assert (=> d!41508 m!157755))

(assert (=> d!41508 m!157757))

(assert (=> d!41508 m!157741))

(declare-fun m!160107 () Bool)

(assert (=> d!41508 m!160107))

(assert (=> b!166174 m!160089))

(assert (=> b!165114 d!41508))

(declare-fun d!41510 () Bool)

(declare-fun lt!51689 () BalanceConc!1656)

(assert (=> d!41510 (= (list!1019 lt!51689) (originalCharacters!544 (apply!398 lt!50721 0)))))

(assert (=> d!41510 (= lt!51689 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0)))) (value!18594 (apply!398 lt!50721 0))))))

(assert (=> d!41510 (= (charsOf!156 (apply!398 lt!50721 0)) lt!51689)))

(declare-fun b_lambda!3625 () Bool)

(assert (=> (not b_lambda!3625) (not d!41510)))

(declare-fun t!26631 () Bool)

(declare-fun tb!6413 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0))))) t!26631) tb!6413))

(declare-fun b!166175 () Bool)

(declare-fun e!100251 () Bool)

(declare-fun tp!82930 () Bool)

(assert (=> b!166175 (= e!100251 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0)))) (value!18594 (apply!398 lt!50721 0))))) tp!82930))))

(declare-fun result!9052 () Bool)

(assert (=> tb!6413 (= result!9052 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0)))) (value!18594 (apply!398 lt!50721 0)))) e!100251))))

(assert (= tb!6413 b!166175))

(declare-fun m!160149 () Bool)

(assert (=> b!166175 m!160149))

(declare-fun m!160151 () Bool)

(assert (=> tb!6413 m!160151))

(assert (=> d!41510 t!26631))

(declare-fun b_and!10683 () Bool)

(assert (= b_and!10587 (and (=> t!26631 result!9052) b_and!10683)))

(declare-fun t!26633 () Bool)

(declare-fun tb!6415 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0))))) t!26633) tb!6415))

(declare-fun result!9054 () Bool)

(assert (= result!9054 result!9052))

(assert (=> d!41510 t!26633))

(declare-fun b_and!10685 () Bool)

(assert (= b_and!10583 (and (=> t!26633 result!9054) b_and!10685)))

(declare-fun t!26635 () Bool)

(declare-fun tb!6417 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0))))) t!26635) tb!6417))

(declare-fun result!9056 () Bool)

(assert (= result!9056 result!9052))

(assert (=> d!41510 t!26635))

(declare-fun b_and!10687 () Bool)

(assert (= b_and!10591 (and (=> t!26635 result!9056) b_and!10687)))

(declare-fun t!26637 () Bool)

(declare-fun tb!6419 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0))))) t!26637) tb!6419))

(declare-fun result!9058 () Bool)

(assert (= result!9058 result!9052))

(assert (=> d!41510 t!26637))

(declare-fun b_and!10689 () Bool)

(assert (= b_and!10589 (and (=> t!26637 result!9058) b_and!10689)))

(declare-fun t!26639 () Bool)

(declare-fun tb!6421 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0))))) t!26639) tb!6421))

(declare-fun result!9060 () Bool)

(assert (= result!9060 result!9052))

(assert (=> d!41510 t!26639))

(declare-fun b_and!10691 () Bool)

(assert (= b_and!10585 (and (=> t!26639 result!9060) b_and!10691)))

(declare-fun m!160157 () Bool)

(assert (=> d!41510 m!160157))

(declare-fun m!160159 () Bool)

(assert (=> d!41510 m!160159))

(assert (=> b!165114 d!41510))

(declare-fun d!41516 () Bool)

(declare-fun lt!51691 () Token!746)

(assert (=> d!41516 (contains!452 lt!50922 lt!51691)))

(declare-fun e!100252 () Token!746)

(assert (=> d!41516 (= lt!51691 e!100252)))

(declare-fun c!33235 () Bool)

(assert (=> d!41516 (= c!33235 (= 0 0))))

(declare-fun e!100253 () Bool)

(assert (=> d!41516 e!100253))

(declare-fun res!75108 () Bool)

(assert (=> d!41516 (=> (not res!75108) (not e!100253))))

(assert (=> d!41516 (= res!75108 (<= 0 0))))

(assert (=> d!41516 (= (apply!397 lt!50922 0) lt!51691)))

(declare-fun b!166176 () Bool)

(assert (=> b!166176 (= e!100253 (< 0 (size!2368 lt!50922)))))

(declare-fun b!166177 () Bool)

(assert (=> b!166177 (= e!100252 (head!596 lt!50922))))

(declare-fun b!166178 () Bool)

(assert (=> b!166178 (= e!100252 (apply!397 (tail!336 lt!50922) (- 0 1)))))

(assert (= (and d!41516 res!75108) b!166176))

(assert (= (and d!41516 c!33235) b!166177))

(assert (= (and d!41516 (not c!33235)) b!166178))

(declare-fun m!160161 () Bool)

(assert (=> d!41516 m!160161))

(assert (=> b!166176 m!160089))

(declare-fun m!160163 () Bool)

(assert (=> b!166177 m!160163))

(declare-fun m!160165 () Bool)

(assert (=> b!166178 m!160165))

(assert (=> b!166178 m!160165))

(declare-fun m!160167 () Bool)

(assert (=> b!166178 m!160167))

(assert (=> b!165114 d!41516))

(declare-fun d!41518 () Bool)

(declare-fun lt!51697 () BalanceConc!1656)

(assert (=> d!41518 (= (list!1019 lt!51697) (printListTailRec!50 thiss!17480 (dropList!82 lt!50721 (+ 0 1)) (list!1019 (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 lt!50721 0))))))))

(declare-fun e!100258 () BalanceConc!1656)

(assert (=> d!41518 (= lt!51697 e!100258)))

(declare-fun c!33236 () Bool)

(assert (=> d!41518 (= c!33236 (>= (+ 0 1) (size!2362 lt!50721)))))

(declare-fun e!100259 () Bool)

(assert (=> d!41518 e!100259))

(declare-fun res!75113 () Bool)

(assert (=> d!41518 (=> (not res!75113) (not e!100259))))

(assert (=> d!41518 (= res!75113 (>= (+ 0 1) 0))))

(assert (=> d!41518 (= (printTailRec!81 thiss!17480 lt!50721 (+ 0 1) (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 lt!50721 0)))) lt!51697)))

(declare-fun b!166183 () Bool)

(assert (=> b!166183 (= e!100259 (<= (+ 0 1) (size!2362 lt!50721)))))

(declare-fun b!166184 () Bool)

(assert (=> b!166184 (= e!100258 (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 lt!50721 0))))))

(declare-fun b!166185 () Bool)

(assert (=> b!166185 (= e!100258 (printTailRec!81 thiss!17480 lt!50721 (+ 0 1 1) (++!638 (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 lt!50721 0))) (charsOf!156 (apply!398 lt!50721 (+ 0 1))))))))

(declare-fun lt!51698 () List!2834)

(assert (=> b!166185 (= lt!51698 (list!1023 lt!50721))))

(declare-fun lt!51694 () Unit!2378)

(assert (=> b!166185 (= lt!51694 (lemmaDropApply!122 lt!51698 (+ 0 1)))))

(assert (=> b!166185 (= (head!596 (drop!135 lt!51698 (+ 0 1))) (apply!397 lt!51698 (+ 0 1)))))

(declare-fun lt!51695 () Unit!2378)

(assert (=> b!166185 (= lt!51695 lt!51694)))

(declare-fun lt!51692 () List!2834)

(assert (=> b!166185 (= lt!51692 (list!1023 lt!50721))))

(declare-fun lt!51696 () Unit!2378)

(assert (=> b!166185 (= lt!51696 (lemmaDropTail!114 lt!51692 (+ 0 1)))))

(assert (=> b!166185 (= (tail!336 (drop!135 lt!51692 (+ 0 1))) (drop!135 lt!51692 (+ 0 1 1)))))

(declare-fun lt!51693 () Unit!2378)

(assert (=> b!166185 (= lt!51693 lt!51696)))

(assert (= (and d!41518 res!75113) b!166183))

(assert (= (and d!41518 c!33236) b!166184))

(assert (= (and d!41518 (not c!33236)) b!166185))

(declare-fun m!160169 () Bool)

(assert (=> d!41518 m!160169))

(assert (=> d!41518 m!157749))

(declare-fun m!160171 () Bool)

(assert (=> d!41518 m!160171))

(assert (=> d!41518 m!157729))

(declare-fun m!160173 () Bool)

(assert (=> d!41518 m!160173))

(assert (=> d!41518 m!160171))

(declare-fun m!160175 () Bool)

(assert (=> d!41518 m!160175))

(assert (=> d!41518 m!160173))

(assert (=> b!166183 m!157729))

(declare-fun m!160177 () Bool)

(assert (=> b!166185 m!160177))

(declare-fun m!160179 () Bool)

(assert (=> b!166185 m!160179))

(declare-fun m!160181 () Bool)

(assert (=> b!166185 m!160181))

(declare-fun m!160183 () Bool)

(assert (=> b!166185 m!160183))

(declare-fun m!160185 () Bool)

(assert (=> b!166185 m!160185))

(declare-fun m!160187 () Bool)

(assert (=> b!166185 m!160187))

(declare-fun m!160189 () Bool)

(assert (=> b!166185 m!160189))

(declare-fun m!160191 () Bool)

(assert (=> b!166185 m!160191))

(declare-fun m!160193 () Bool)

(assert (=> b!166185 m!160193))

(assert (=> b!166185 m!157749))

(assert (=> b!166185 m!160187))

(assert (=> b!166185 m!160191))

(assert (=> b!166185 m!160179))

(declare-fun m!160195 () Bool)

(assert (=> b!166185 m!160195))

(assert (=> b!166185 m!157683))

(declare-fun m!160197 () Bool)

(assert (=> b!166185 m!160197))

(assert (=> b!166185 m!160185))

(assert (=> b!166185 m!160197))

(declare-fun m!160201 () Bool)

(assert (=> b!166185 m!160201))

(assert (=> b!165114 d!41518))

(declare-fun d!41520 () Bool)

(assert (=> d!41520 (= (head!596 (drop!135 lt!50922 0)) (h!8221 (drop!135 lt!50922 0)))))

(assert (=> b!165114 d!41520))

(declare-fun d!41524 () Bool)

(declare-fun lt!51699 () Token!746)

(assert (=> d!41524 (= lt!51699 (apply!397 (list!1023 lt!50721) 0))))

(assert (=> d!41524 (= lt!51699 (apply!400 (c!32902 lt!50721) 0))))

(declare-fun e!100262 () Bool)

(assert (=> d!41524 e!100262))

(declare-fun res!75116 () Bool)

(assert (=> d!41524 (=> (not res!75116) (not e!100262))))

(assert (=> d!41524 (= res!75116 (<= 0 0))))

(assert (=> d!41524 (= (apply!398 lt!50721 0) lt!51699)))

(declare-fun b!166188 () Bool)

(assert (=> b!166188 (= e!100262 (< 0 (size!2362 lt!50721)))))

(assert (= (and d!41524 res!75116) b!166188))

(assert (=> d!41524 m!157683))

(assert (=> d!41524 m!157683))

(declare-fun m!160207 () Bool)

(assert (=> d!41524 m!160207))

(declare-fun m!160209 () Bool)

(assert (=> d!41524 m!160209))

(assert (=> b!166188 m!157729))

(assert (=> b!165114 d!41524))

(declare-fun b!166190 () Bool)

(declare-fun res!75120 () Bool)

(declare-fun e!100263 () Bool)

(assert (=> b!166190 (=> (not res!75120) (not e!100263))))

(assert (=> b!166190 (= res!75120 (<= (height!90 (++!641 (c!32900 (BalanceConc!1657 Empty!824)) (c!32900 (charsOf!156 (apply!398 lt!50721 0))))) (+ (max!0 (height!90 (c!32900 (BalanceConc!1657 Empty!824))) (height!90 (c!32900 (charsOf!156 (apply!398 lt!50721 0))))) 1)))))

(declare-fun b!166192 () Bool)

(declare-fun lt!51700 () BalanceConc!1656)

(assert (=> b!166192 (= e!100263 (= (list!1019 lt!51700) (++!636 (list!1019 (BalanceConc!1657 Empty!824)) (list!1019 (charsOf!156 (apply!398 lt!50721 0))))))))

(declare-fun d!41528 () Bool)

(assert (=> d!41528 e!100263))

(declare-fun res!75118 () Bool)

(assert (=> d!41528 (=> (not res!75118) (not e!100263))))

(assert (=> d!41528 (= res!75118 (appendAssocInst!29 (c!32900 (BalanceConc!1657 Empty!824)) (c!32900 (charsOf!156 (apply!398 lt!50721 0)))))))

(assert (=> d!41528 (= lt!51700 (BalanceConc!1657 (++!641 (c!32900 (BalanceConc!1657 Empty!824)) (c!32900 (charsOf!156 (apply!398 lt!50721 0))))))))

(assert (=> d!41528 (= (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 lt!50721 0))) lt!51700)))

(declare-fun b!166191 () Bool)

(declare-fun res!75119 () Bool)

(assert (=> b!166191 (=> (not res!75119) (not e!100263))))

(assert (=> b!166191 (= res!75119 (>= (height!90 (++!641 (c!32900 (BalanceConc!1657 Empty!824)) (c!32900 (charsOf!156 (apply!398 lt!50721 0))))) (max!0 (height!90 (c!32900 (BalanceConc!1657 Empty!824))) (height!90 (c!32900 (charsOf!156 (apply!398 lt!50721 0)))))))))

(declare-fun b!166189 () Bool)

(declare-fun res!75117 () Bool)

(assert (=> b!166189 (=> (not res!75117) (not e!100263))))

(assert (=> b!166189 (= res!75117 (isBalanced!232 (++!641 (c!32900 (BalanceConc!1657 Empty!824)) (c!32900 (charsOf!156 (apply!398 lt!50721 0))))))))

(assert (= (and d!41528 res!75118) b!166189))

(assert (= (and b!166189 res!75117) b!166190))

(assert (= (and b!166190 res!75120) b!166191))

(assert (= (and b!166191 res!75119) b!166192))

(declare-fun m!160211 () Bool)

(assert (=> b!166189 m!160211))

(assert (=> b!166189 m!160211))

(declare-fun m!160213 () Bool)

(assert (=> b!166189 m!160213))

(declare-fun m!160215 () Bool)

(assert (=> d!41528 m!160215))

(assert (=> d!41528 m!160211))

(assert (=> b!166190 m!160211))

(declare-fun m!160217 () Bool)

(assert (=> b!166190 m!160217))

(assert (=> b!166190 m!160211))

(declare-fun m!160219 () Bool)

(assert (=> b!166190 m!160219))

(declare-fun m!160221 () Bool)

(assert (=> b!166190 m!160221))

(declare-fun m!160223 () Bool)

(assert (=> b!166190 m!160223))

(assert (=> b!166190 m!160221))

(assert (=> b!166190 m!160219))

(declare-fun m!160225 () Bool)

(assert (=> b!166192 m!160225))

(assert (=> b!166192 m!157727))

(assert (=> b!166192 m!157745))

(declare-fun m!160227 () Bool)

(assert (=> b!166192 m!160227))

(assert (=> b!166192 m!157727))

(assert (=> b!166192 m!160227))

(declare-fun m!160229 () Bool)

(assert (=> b!166192 m!160229))

(assert (=> b!166191 m!160211))

(assert (=> b!166191 m!160217))

(assert (=> b!166191 m!160211))

(assert (=> b!166191 m!160219))

(assert (=> b!166191 m!160221))

(assert (=> b!166191 m!160223))

(assert (=> b!166191 m!160221))

(assert (=> b!166191 m!160219))

(assert (=> b!165114 d!41528))

(declare-fun d!41530 () Bool)

(assert (=> d!41530 (= (tail!336 (drop!135 lt!50916 0)) (drop!135 lt!50916 (+ 0 1)))))

(declare-fun lt!51701 () Unit!2378)

(assert (=> d!41530 (= lt!51701 (choose!1813 lt!50916 0))))

(declare-fun e!100264 () Bool)

(assert (=> d!41530 e!100264))

(declare-fun res!75121 () Bool)

(assert (=> d!41530 (=> (not res!75121) (not e!100264))))

(assert (=> d!41530 (= res!75121 (>= 0 0))))

(assert (=> d!41530 (= (lemmaDropTail!114 lt!50916 0) lt!51701)))

(declare-fun b!166193 () Bool)

(assert (=> b!166193 (= e!100264 (< 0 (size!2368 lt!50916)))))

(assert (= (and d!41530 res!75121) b!166193))

(assert (=> d!41530 m!157737))

(assert (=> d!41530 m!157737))

(assert (=> d!41530 m!157739))

(assert (=> d!41530 m!157753))

(declare-fun m!160231 () Bool)

(assert (=> d!41530 m!160231))

(declare-fun m!160233 () Bool)

(assert (=> b!166193 m!160233))

(assert (=> b!165114 d!41530))

(declare-fun d!41532 () Bool)

(declare-fun e!100266 () Bool)

(assert (=> d!41532 e!100266))

(declare-fun res!75122 () Bool)

(assert (=> d!41532 (=> (not res!75122) (not e!100266))))

(declare-fun lt!51702 () List!2834)

(assert (=> d!41532 (= res!75122 (= ((_ map implies) (content!392 lt!51702) (content!392 lt!50916)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!100268 () List!2834)

(assert (=> d!41532 (= lt!51702 e!100268)))

(declare-fun c!33240 () Bool)

(assert (=> d!41532 (= c!33240 ((_ is Nil!2824) lt!50916))))

(assert (=> d!41532 (= (drop!135 lt!50916 (+ 0 1)) lt!51702)))

(declare-fun b!166194 () Bool)

(declare-fun e!100269 () List!2834)

(assert (=> b!166194 (= e!100269 (drop!135 (t!26456 lt!50916) (- (+ 0 1) 1)))))

(declare-fun bm!7141 () Bool)

(declare-fun call!7146 () Int)

(assert (=> bm!7141 (= call!7146 (size!2368 lt!50916))))

(declare-fun b!166195 () Bool)

(assert (=> b!166195 (= e!100269 lt!50916)))

(declare-fun b!166196 () Bool)

(declare-fun e!100265 () Int)

(assert (=> b!166196 (= e!100265 (- call!7146 (+ 0 1)))))

(declare-fun b!166197 () Bool)

(declare-fun e!100267 () Int)

(assert (=> b!166197 (= e!100267 call!7146)))

(declare-fun b!166198 () Bool)

(assert (=> b!166198 (= e!100266 (= (size!2368 lt!51702) e!100267))))

(declare-fun c!33237 () Bool)

(assert (=> b!166198 (= c!33237 (<= (+ 0 1) 0))))

(declare-fun b!166199 () Bool)

(assert (=> b!166199 (= e!100268 Nil!2824)))

(declare-fun b!166200 () Bool)

(assert (=> b!166200 (= e!100265 0)))

(declare-fun b!166201 () Bool)

(assert (=> b!166201 (= e!100267 e!100265)))

(declare-fun c!33239 () Bool)

(assert (=> b!166201 (= c!33239 (>= (+ 0 1) call!7146))))

(declare-fun b!166202 () Bool)

(assert (=> b!166202 (= e!100268 e!100269)))

(declare-fun c!33238 () Bool)

(assert (=> b!166202 (= c!33238 (<= (+ 0 1) 0))))

(assert (= (and d!41532 c!33240) b!166199))

(assert (= (and d!41532 (not c!33240)) b!166202))

(assert (= (and b!166202 c!33238) b!166195))

(assert (= (and b!166202 (not c!33238)) b!166194))

(assert (= (and d!41532 res!75122) b!166198))

(assert (= (and b!166198 c!33237) b!166197))

(assert (= (and b!166198 (not c!33237)) b!166201))

(assert (= (and b!166201 c!33239) b!166200))

(assert (= (and b!166201 (not c!33239)) b!166196))

(assert (= (or b!166197 b!166201 b!166196) bm!7141))

(declare-fun m!160235 () Bool)

(assert (=> d!41532 m!160235))

(declare-fun m!160237 () Bool)

(assert (=> d!41532 m!160237))

(declare-fun m!160239 () Bool)

(assert (=> b!166194 m!160239))

(assert (=> bm!7141 m!160233))

(declare-fun m!160241 () Bool)

(assert (=> b!166198 m!160241))

(assert (=> b!165114 d!41532))

(assert (=> b!165114 d!41268))

(declare-fun d!41534 () Bool)

(declare-fun e!100271 () Bool)

(assert (=> d!41534 e!100271))

(declare-fun res!75123 () Bool)

(assert (=> d!41534 (=> (not res!75123) (not e!100271))))

(declare-fun lt!51703 () List!2834)

(assert (=> d!41534 (= res!75123 (= ((_ map implies) (content!392 lt!51703) (content!392 lt!50916)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!100273 () List!2834)

(assert (=> d!41534 (= lt!51703 e!100273)))

(declare-fun c!33244 () Bool)

(assert (=> d!41534 (= c!33244 ((_ is Nil!2824) lt!50916))))

(assert (=> d!41534 (= (drop!135 lt!50916 0) lt!51703)))

(declare-fun b!166203 () Bool)

(declare-fun e!100274 () List!2834)

(assert (=> b!166203 (= e!100274 (drop!135 (t!26456 lt!50916) (- 0 1)))))

(declare-fun bm!7142 () Bool)

(declare-fun call!7147 () Int)

(assert (=> bm!7142 (= call!7147 (size!2368 lt!50916))))

(declare-fun b!166204 () Bool)

(assert (=> b!166204 (= e!100274 lt!50916)))

(declare-fun b!166205 () Bool)

(declare-fun e!100270 () Int)

(assert (=> b!166205 (= e!100270 (- call!7147 0))))

(declare-fun b!166206 () Bool)

(declare-fun e!100272 () Int)

(assert (=> b!166206 (= e!100272 call!7147)))

(declare-fun b!166207 () Bool)

(assert (=> b!166207 (= e!100271 (= (size!2368 lt!51703) e!100272))))

(declare-fun c!33241 () Bool)

(assert (=> b!166207 (= c!33241 (<= 0 0))))

(declare-fun b!166208 () Bool)

(assert (=> b!166208 (= e!100273 Nil!2824)))

(declare-fun b!166209 () Bool)

(assert (=> b!166209 (= e!100270 0)))

(declare-fun b!166210 () Bool)

(assert (=> b!166210 (= e!100272 e!100270)))

(declare-fun c!33243 () Bool)

(assert (=> b!166210 (= c!33243 (>= 0 call!7147))))

(declare-fun b!166211 () Bool)

(assert (=> b!166211 (= e!100273 e!100274)))

(declare-fun c!33242 () Bool)

(assert (=> b!166211 (= c!33242 (<= 0 0))))

(assert (= (and d!41534 c!33244) b!166208))

(assert (= (and d!41534 (not c!33244)) b!166211))

(assert (= (and b!166211 c!33242) b!166204))

(assert (= (and b!166211 (not c!33242)) b!166203))

(assert (= (and d!41534 res!75123) b!166207))

(assert (= (and b!166207 c!33241) b!166206))

(assert (= (and b!166207 (not c!33241)) b!166210))

(assert (= (and b!166210 c!33243) b!166209))

(assert (= (and b!166210 (not c!33243)) b!166205))

(assert (= (or b!166206 b!166210 b!166205) bm!7142))

(declare-fun m!160243 () Bool)

(assert (=> d!41534 m!160243))

(assert (=> d!41534 m!160237))

(declare-fun m!160245 () Bool)

(assert (=> b!166203 m!160245))

(assert (=> bm!7142 m!160233))

(declare-fun m!160247 () Bool)

(assert (=> b!166207 m!160247))

(assert (=> b!165114 d!41534))

(declare-fun d!41536 () Bool)

(assert (=> d!41536 (= (inv!3641 (tag!679 (h!8220 (t!26455 rules!1920)))) (= (mod (str.len (value!18593 (tag!679 (h!8220 (t!26455 rules!1920))))) 2) 0))))

(assert (=> b!165425 d!41536))

(declare-fun d!41538 () Bool)

(declare-fun res!75124 () Bool)

(declare-fun e!100275 () Bool)

(assert (=> d!41538 (=> (not res!75124) (not e!100275))))

(assert (=> d!41538 (= res!75124 (semiInverseModEq!173 (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toValue!1160 (transformation!501 (h!8220 (t!26455 rules!1920))))))))

(assert (=> d!41538 (= (inv!3645 (transformation!501 (h!8220 (t!26455 rules!1920)))) e!100275)))

(declare-fun b!166216 () Bool)

(assert (=> b!166216 (= e!100275 (equivClasses!156 (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toValue!1160 (transformation!501 (h!8220 (t!26455 rules!1920))))))))

(assert (= (and d!41538 res!75124) b!166216))

(declare-fun m!160251 () Bool)

(assert (=> d!41538 m!160251))

(declare-fun m!160253 () Bool)

(assert (=> b!166216 m!160253))

(assert (=> b!165425 d!41538))

(declare-fun d!41542 () Bool)

(declare-fun lt!51704 () BalanceConc!1656)

(assert (=> d!41542 (= (list!1019 lt!51704) (originalCharacters!544 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036))))))

(assert (=> d!41542 (= lt!51704 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036))))) (value!18594 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))))

(assert (=> d!41542 (= (charsOf!156 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036))) lt!51704)))

(declare-fun b_lambda!3629 () Bool)

(assert (=> (not b_lambda!3629) (not d!41542)))

(declare-fun t!26641 () Bool)

(declare-fun tb!6423 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))) t!26641) tb!6423))

(declare-fun e!100276 () Bool)

(declare-fun tp!82931 () Bool)

(declare-fun b!166217 () Bool)

(assert (=> b!166217 (= e!100276 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036))))) (value!18594 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))) tp!82931))))

(declare-fun result!9062 () Bool)

(assert (=> tb!6423 (= result!9062 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036))))) (value!18594 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036))))) e!100276))))

(assert (= tb!6423 b!166217))

(declare-fun m!160255 () Bool)

(assert (=> b!166217 m!160255))

(declare-fun m!160257 () Bool)

(assert (=> tb!6423 m!160257))

(assert (=> d!41542 t!26641))

(declare-fun b_and!10693 () Bool)

(assert (= b_and!10683 (and (=> t!26641 result!9062) b_and!10693)))

(declare-fun tb!6425 () Bool)

(declare-fun t!26643 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))) t!26643) tb!6425))

(declare-fun result!9064 () Bool)

(assert (= result!9064 result!9062))

(assert (=> d!41542 t!26643))

(declare-fun b_and!10695 () Bool)

(assert (= b_and!10691 (and (=> t!26643 result!9064) b_and!10695)))

(declare-fun tb!6427 () Bool)

(declare-fun t!26645 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))) t!26645) tb!6427))

(declare-fun result!9066 () Bool)

(assert (= result!9066 result!9062))

(assert (=> d!41542 t!26645))

(declare-fun b_and!10697 () Bool)

(assert (= b_and!10687 (and (=> t!26645 result!9066) b_and!10697)))

(declare-fun t!26647 () Bool)

(declare-fun tb!6429 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))) t!26647) tb!6429))

(declare-fun result!9068 () Bool)

(assert (= result!9068 result!9062))

(assert (=> d!41542 t!26647))

(declare-fun b_and!10699 () Bool)

(assert (= b_and!10685 (and (=> t!26647 result!9068) b_and!10699)))

(declare-fun t!26649 () Bool)

(declare-fun tb!6431 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))) t!26649) tb!6431))

(declare-fun result!9070 () Bool)

(assert (= result!9070 result!9062))

(assert (=> d!41542 t!26649))

(declare-fun b_and!10701 () Bool)

(assert (= b_and!10689 (and (=> t!26649 result!9070) b_and!10701)))

(declare-fun m!160261 () Bool)

(assert (=> d!41542 m!160261))

(declare-fun m!160263 () Bool)

(assert (=> d!41542 m!160263))

(assert (=> bm!7031 d!41542))

(declare-fun b!166224 () Bool)

(declare-fun res!75127 () Bool)

(declare-fun e!100279 () Bool)

(assert (=> b!166224 (=> (not res!75127) (not e!100279))))

(declare-fun lt!51706 () List!2832)

(assert (=> b!166224 (= res!75127 (= (size!2365 lt!51706) (+ (size!2365 (list!1019 (charsOf!156 (h!8221 tokens!465)))) (size!2365 lt!50866))))))

(declare-fun d!41546 () Bool)

(assert (=> d!41546 e!100279))

(declare-fun res!75128 () Bool)

(assert (=> d!41546 (=> (not res!75128) (not e!100279))))

(assert (=> d!41546 (= res!75128 (= (content!391 lt!51706) ((_ map or) (content!391 (list!1019 (charsOf!156 (h!8221 tokens!465)))) (content!391 lt!50866))))))

(declare-fun e!100280 () List!2832)

(assert (=> d!41546 (= lt!51706 e!100280)))

(declare-fun c!33246 () Bool)

(assert (=> d!41546 (= c!33246 ((_ is Nil!2822) (list!1019 (charsOf!156 (h!8221 tokens!465)))))))

(assert (=> d!41546 (= (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866) lt!51706)))

(declare-fun b!166223 () Bool)

(assert (=> b!166223 (= e!100280 (Cons!2822 (h!8219 (list!1019 (charsOf!156 (h!8221 tokens!465)))) (++!636 (t!26454 (list!1019 (charsOf!156 (h!8221 tokens!465)))) lt!50866)))))

(declare-fun b!166222 () Bool)

(assert (=> b!166222 (= e!100280 lt!50866)))

(declare-fun b!166225 () Bool)

(assert (=> b!166225 (= e!100279 (or (not (= lt!50866 Nil!2822)) (= lt!51706 (list!1019 (charsOf!156 (h!8221 tokens!465))))))))

(assert (= (and d!41546 c!33246) b!166222))

(assert (= (and d!41546 (not c!33246)) b!166223))

(assert (= (and d!41546 res!75128) b!166224))

(assert (= (and b!166224 res!75127) b!166225))

(declare-fun m!160279 () Bool)

(assert (=> b!166224 m!160279))

(assert (=> b!166224 m!157295))

(declare-fun m!160281 () Bool)

(assert (=> b!166224 m!160281))

(declare-fun m!160283 () Bool)

(assert (=> b!166224 m!160283))

(declare-fun m!160285 () Bool)

(assert (=> d!41546 m!160285))

(assert (=> d!41546 m!157295))

(declare-fun m!160287 () Bool)

(assert (=> d!41546 m!160287))

(declare-fun m!160289 () Bool)

(assert (=> d!41546 m!160289))

(declare-fun m!160291 () Bool)

(assert (=> b!166223 m!160291))

(assert (=> b!165075 d!41546))

(assert (=> b!165075 d!41084))

(assert (=> b!165075 d!41090))

(declare-fun b!166264 () Bool)

(declare-fun e!100296 () Option!283)

(declare-fun call!7152 () Option!283)

(assert (=> b!166264 (= e!100296 call!7152)))

(declare-fun b!166265 () Bool)

(declare-fun res!75162 () Bool)

(declare-fun e!100295 () Bool)

(assert (=> b!166265 (=> (not res!75162) (not e!100295))))

(declare-fun lt!51729 () Option!283)

(assert (=> b!166265 (= res!75162 (= (++!636 (list!1019 (charsOf!156 (_1!1565 (get!769 lt!51729)))) (_2!1565 (get!769 lt!51729))) (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866)))))

(declare-fun b!166266 () Bool)

(declare-fun res!75164 () Bool)

(assert (=> b!166266 (=> (not res!75164) (not e!100295))))

(assert (=> b!166266 (= res!75164 (= (list!1019 (charsOf!156 (_1!1565 (get!769 lt!51729)))) (originalCharacters!544 (_1!1565 (get!769 lt!51729)))))))

(declare-fun b!166267 () Bool)

(declare-fun res!75163 () Bool)

(assert (=> b!166267 (=> (not res!75163) (not e!100295))))

(assert (=> b!166267 (= res!75163 (< (size!2365 (_2!1565 (get!769 lt!51729))) (size!2365 (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866))))))

(declare-fun d!41550 () Bool)

(declare-fun e!100294 () Bool)

(assert (=> d!41550 e!100294))

(declare-fun res!75161 () Bool)

(assert (=> d!41550 (=> res!75161 e!100294)))

(assert (=> d!41550 (= res!75161 (isEmpty!1166 lt!51729))))

(assert (=> d!41550 (= lt!51729 e!100296)))

(declare-fun c!33251 () Bool)

(assert (=> d!41550 (= c!33251 (and ((_ is Cons!2823) rules!1920) ((_ is Nil!2823) (t!26455 rules!1920))))))

(declare-fun lt!51732 () Unit!2378)

(declare-fun lt!51728 () Unit!2378)

(assert (=> d!41550 (= lt!51732 lt!51728)))

(assert (=> d!41550 (isPrefix!223 (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866) (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866))))

(assert (=> d!41550 (= lt!51728 (lemmaIsPrefixRefl!130 (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866) (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866)))))

(assert (=> d!41550 (rulesValidInductive!108 thiss!17480 rules!1920)))

(assert (=> d!41550 (= (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866)) lt!51729)))

(declare-fun b!166263 () Bool)

(declare-fun res!75160 () Bool)

(assert (=> b!166263 (=> (not res!75160) (not e!100295))))

(declare-fun apply!401 (TokenValueInjection!818 BalanceConc!1656) TokenValue!523)

(assert (=> b!166263 (= res!75160 (= (value!18594 (_1!1565 (get!769 lt!51729))) (apply!401 (transformation!501 (rule!1008 (_1!1565 (get!769 lt!51729)))) (seqFromList!380 (originalCharacters!544 (_1!1565 (get!769 lt!51729)))))))))

(declare-fun b!166268 () Bool)

(declare-fun res!75159 () Bool)

(assert (=> b!166268 (=> (not res!75159) (not e!100295))))

(assert (=> b!166268 (= res!75159 (matchR!79 (regex!501 (rule!1008 (_1!1565 (get!769 lt!51729)))) (list!1019 (charsOf!156 (_1!1565 (get!769 lt!51729))))))))

(declare-fun bm!7147 () Bool)

(assert (=> bm!7147 (= call!7152 (maxPrefixOneRule!67 thiss!17480 (h!8220 rules!1920) (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866)))))

(declare-fun b!166269 () Bool)

(declare-fun contains!455 (List!2833 Rule!802) Bool)

(assert (=> b!166269 (= e!100295 (contains!455 rules!1920 (rule!1008 (_1!1565 (get!769 lt!51729)))))))

(declare-fun b!166270 () Bool)

(declare-fun lt!51730 () Option!283)

(declare-fun lt!51731 () Option!283)

(assert (=> b!166270 (= e!100296 (ite (and ((_ is None!282) lt!51730) ((_ is None!282) lt!51731)) None!282 (ite ((_ is None!282) lt!51731) lt!51730 (ite ((_ is None!282) lt!51730) lt!51731 (ite (>= (size!2359 (_1!1565 (v!13705 lt!51730))) (size!2359 (_1!1565 (v!13705 lt!51731)))) lt!51730 lt!51731)))))))

(assert (=> b!166270 (= lt!51730 call!7152)))

(assert (=> b!166270 (= lt!51731 (maxPrefix!123 thiss!17480 (t!26455 rules!1920) (++!636 (list!1019 (charsOf!156 (h!8221 tokens!465))) lt!50866)))))

(declare-fun b!166271 () Bool)

(assert (=> b!166271 (= e!100294 e!100295)))

(declare-fun res!75158 () Bool)

(assert (=> b!166271 (=> (not res!75158) (not e!100295))))

(assert (=> b!166271 (= res!75158 (isDefined!135 lt!51729))))

(assert (= (and d!41550 c!33251) b!166264))

(assert (= (and d!41550 (not c!33251)) b!166270))

(assert (= (or b!166264 b!166270) bm!7147))

(assert (= (and d!41550 (not res!75161)) b!166271))

(assert (= (and b!166271 res!75158) b!166266))

(assert (= (and b!166266 res!75164) b!166267))

(assert (= (and b!166267 res!75163) b!166265))

(assert (= (and b!166265 res!75162) b!166263))

(assert (= (and b!166263 res!75160) b!166268))

(assert (= (and b!166268 res!75159) b!166269))

(declare-fun m!160299 () Bool)

(assert (=> b!166266 m!160299))

(declare-fun m!160301 () Bool)

(assert (=> b!166266 m!160301))

(assert (=> b!166266 m!160301))

(declare-fun m!160303 () Bool)

(assert (=> b!166266 m!160303))

(assert (=> b!166268 m!160299))

(assert (=> b!166268 m!160301))

(assert (=> b!166268 m!160301))

(assert (=> b!166268 m!160303))

(assert (=> b!166268 m!160303))

(declare-fun m!160305 () Bool)

(assert (=> b!166268 m!160305))

(declare-fun m!160307 () Bool)

(assert (=> d!41550 m!160307))

(assert (=> d!41550 m!157637))

(assert (=> d!41550 m!157637))

(declare-fun m!160309 () Bool)

(assert (=> d!41550 m!160309))

(assert (=> d!41550 m!157637))

(assert (=> d!41550 m!157637))

(declare-fun m!160311 () Bool)

(assert (=> d!41550 m!160311))

(assert (=> d!41550 m!157265))

(assert (=> bm!7147 m!157637))

(declare-fun m!160313 () Bool)

(assert (=> bm!7147 m!160313))

(assert (=> b!166263 m!160299))

(declare-fun m!160319 () Bool)

(assert (=> b!166263 m!160319))

(assert (=> b!166263 m!160319))

(declare-fun m!160323 () Bool)

(assert (=> b!166263 m!160323))

(assert (=> b!166270 m!157637))

(declare-fun m!160325 () Bool)

(assert (=> b!166270 m!160325))

(declare-fun m!160329 () Bool)

(assert (=> b!166271 m!160329))

(assert (=> b!166265 m!160299))

(assert (=> b!166265 m!160301))

(assert (=> b!166265 m!160301))

(assert (=> b!166265 m!160303))

(assert (=> b!166265 m!160303))

(declare-fun m!160335 () Bool)

(assert (=> b!166265 m!160335))

(assert (=> b!166267 m!160299))

(declare-fun m!160339 () Bool)

(assert (=> b!166267 m!160339))

(assert (=> b!166267 m!157637))

(declare-fun m!160343 () Bool)

(assert (=> b!166267 m!160343))

(assert (=> b!166269 m!160299))

(declare-fun m!160347 () Bool)

(assert (=> b!166269 m!160347))

(assert (=> b!165075 d!41550))

(assert (=> b!165075 d!41092))

(declare-fun d!41554 () Bool)

(assert (=> d!41554 (dynLambda!1025 lambda!4573 (h!8221 tokens!465))))

(declare-fun lt!51738 () Unit!2378)

(assert (=> d!41554 (= lt!51738 (choose!1809 tokens!465 lambda!4573 (h!8221 tokens!465)))))

(declare-fun e!100300 () Bool)

(assert (=> d!41554 e!100300))

(declare-fun res!75172 () Bool)

(assert (=> d!41554 (=> (not res!75172) (not e!100300))))

(assert (=> d!41554 (= res!75172 (forall!533 tokens!465 lambda!4573))))

(assert (=> d!41554 (= (forallContained!68 tokens!465 lambda!4573 (h!8221 tokens!465)) lt!51738)))

(declare-fun b!166281 () Bool)

(assert (=> b!166281 (= e!100300 (contains!452 tokens!465 (h!8221 tokens!465)))))

(assert (= (and d!41554 res!75172) b!166281))

(declare-fun b_lambda!3633 () Bool)

(assert (=> (not b_lambda!3633) (not d!41554)))

(declare-fun m!160361 () Bool)

(assert (=> d!41554 m!160361))

(declare-fun m!160363 () Bool)

(assert (=> d!41554 m!160363))

(declare-fun m!160365 () Bool)

(assert (=> d!41554 m!160365))

(assert (=> b!166281 m!157985))

(assert (=> b!165075 d!41554))

(declare-fun d!41556 () Bool)

(assert (=> d!41556 (= (dropList!82 lt!50721 0) (drop!135 (list!1027 (c!32902 lt!50721)) 0))))

(declare-fun bs!16036 () Bool)

(assert (= bs!16036 d!41556))

(assert (=> bs!16036 m!158999))

(assert (=> bs!16036 m!158999))

(declare-fun m!160377 () Bool)

(assert (=> bs!16036 m!160377))

(assert (=> d!40990 d!41556))

(declare-fun d!41566 () Bool)

(assert (=> d!41566 (= (list!1019 lt!50921) (list!1022 (c!32900 lt!50921)))))

(declare-fun bs!16037 () Bool)

(assert (= bs!16037 d!41566))

(declare-fun m!160379 () Bool)

(assert (=> bs!16037 m!160379))

(assert (=> d!40990 d!41566))

(declare-fun d!41568 () Bool)

(declare-fun lt!51758 () List!2832)

(assert (=> d!41568 (= lt!51758 (++!636 (list!1019 (BalanceConc!1657 Empty!824)) (printList!71 thiss!17480 (dropList!82 lt!50721 0))))))

(declare-fun e!100315 () List!2832)

(assert (=> d!41568 (= lt!51758 e!100315)))

(declare-fun c!33257 () Bool)

(assert (=> d!41568 (= c!33257 ((_ is Cons!2824) (dropList!82 lt!50721 0)))))

(assert (=> d!41568 (= (printListTailRec!50 thiss!17480 (dropList!82 lt!50721 0) (list!1019 (BalanceConc!1657 Empty!824))) lt!51758)))

(declare-fun b!166301 () Bool)

(assert (=> b!166301 (= e!100315 (printListTailRec!50 thiss!17480 (t!26456 (dropList!82 lt!50721 0)) (++!636 (list!1019 (BalanceConc!1657 Empty!824)) (list!1019 (charsOf!156 (h!8221 (dropList!82 lt!50721 0)))))))))

(declare-fun lt!51754 () List!2832)

(assert (=> b!166301 (= lt!51754 (list!1019 (charsOf!156 (h!8221 (dropList!82 lt!50721 0)))))))

(declare-fun lt!51757 () List!2832)

(assert (=> b!166301 (= lt!51757 (printList!71 thiss!17480 (t!26456 (dropList!82 lt!50721 0))))))

(declare-fun lt!51755 () Unit!2378)

(assert (=> b!166301 (= lt!51755 (lemmaConcatAssociativity!184 (list!1019 (BalanceConc!1657 Empty!824)) lt!51754 lt!51757))))

(assert (=> b!166301 (= (++!636 (++!636 (list!1019 (BalanceConc!1657 Empty!824)) lt!51754) lt!51757) (++!636 (list!1019 (BalanceConc!1657 Empty!824)) (++!636 lt!51754 lt!51757)))))

(declare-fun lt!51756 () Unit!2378)

(assert (=> b!166301 (= lt!51756 lt!51755)))

(declare-fun b!166302 () Bool)

(assert (=> b!166302 (= e!100315 (list!1019 (BalanceConc!1657 Empty!824)))))

(assert (= (and d!41568 c!33257) b!166301))

(assert (= (and d!41568 (not c!33257)) b!166302))

(assert (=> d!41568 m!157731))

(declare-fun m!160417 () Bool)

(assert (=> d!41568 m!160417))

(assert (=> d!41568 m!157727))

(assert (=> d!41568 m!160417))

(declare-fun m!160419 () Bool)

(assert (=> d!41568 m!160419))

(declare-fun m!160421 () Bool)

(assert (=> b!166301 m!160421))

(declare-fun m!160423 () Bool)

(assert (=> b!166301 m!160423))

(declare-fun m!160425 () Bool)

(assert (=> b!166301 m!160425))

(declare-fun m!160427 () Bool)

(assert (=> b!166301 m!160427))

(assert (=> b!166301 m!160423))

(declare-fun m!160429 () Bool)

(assert (=> b!166301 m!160429))

(assert (=> b!166301 m!157727))

(declare-fun m!160431 () Bool)

(assert (=> b!166301 m!160431))

(assert (=> b!166301 m!157727))

(assert (=> b!166301 m!160429))

(assert (=> b!166301 m!160425))

(assert (=> b!166301 m!157727))

(declare-fun m!160433 () Bool)

(assert (=> b!166301 m!160433))

(declare-fun m!160435 () Bool)

(assert (=> b!166301 m!160435))

(assert (=> b!166301 m!157727))

(assert (=> b!166301 m!160435))

(declare-fun m!160437 () Bool)

(assert (=> b!166301 m!160437))

(assert (=> b!166301 m!160433))

(declare-fun m!160439 () Bool)

(assert (=> b!166301 m!160439))

(assert (=> d!40990 d!41568))

(declare-fun d!41584 () Bool)

(declare-fun lt!51762 () Int)

(assert (=> d!41584 (= lt!51762 (size!2368 (list!1023 lt!50721)))))

(assert (=> d!41584 (= lt!51762 (size!2369 (c!32902 lt!50721)))))

(assert (=> d!41584 (= (size!2362 lt!50721) lt!51762)))

(declare-fun bs!16044 () Bool)

(assert (= bs!16044 d!41584))

(assert (=> bs!16044 m!157683))

(assert (=> bs!16044 m!157683))

(declare-fun m!160443 () Bool)

(assert (=> bs!16044 m!160443))

(declare-fun m!160445 () Bool)

(assert (=> bs!16044 m!160445))

(assert (=> d!40990 d!41584))

(declare-fun d!41588 () Bool)

(assert (=> d!41588 (= (list!1019 (BalanceConc!1657 Empty!824)) (list!1022 (c!32900 (BalanceConc!1657 Empty!824))))))

(declare-fun bs!16047 () Bool)

(assert (= bs!16047 d!41588))

(declare-fun m!160447 () Bool)

(assert (=> bs!16047 m!160447))

(assert (=> d!40990 d!41588))

(declare-fun d!41590 () Bool)

(declare-fun c!33260 () Bool)

(assert (=> d!41590 (= c!33260 ((_ is Nil!2822) lt!50985))))

(declare-fun e!100320 () (InoxSet C!2372))

(assert (=> d!41590 (= (content!391 lt!50985) e!100320)))

(declare-fun b!166309 () Bool)

(assert (=> b!166309 (= e!100320 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166310 () Bool)

(assert (=> b!166310 (= e!100320 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!50985) true) (content!391 (t!26454 lt!50985))))))

(assert (= (and d!41590 c!33260) b!166309))

(assert (= (and d!41590 (not c!33260)) b!166310))

(declare-fun m!160457 () Bool)

(assert (=> b!166310 m!160457))

(declare-fun m!160459 () Bool)

(assert (=> b!166310 m!160459))

(assert (=> d!41082 d!41590))

(declare-fun d!41596 () Bool)

(declare-fun c!33261 () Bool)

(assert (=> d!41596 (= c!33261 ((_ is Nil!2822) (++!636 lt!50724 lt!50718)))))

(declare-fun e!100321 () (InoxSet C!2372))

(assert (=> d!41596 (= (content!391 (++!636 lt!50724 lt!50718)) e!100321)))

(declare-fun b!166311 () Bool)

(assert (=> b!166311 (= e!100321 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166312 () Bool)

(assert (=> b!166312 (= e!100321 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 (++!636 lt!50724 lt!50718)) true) (content!391 (t!26454 (++!636 lt!50724 lt!50718)))))))

(assert (= (and d!41596 c!33261) b!166311))

(assert (= (and d!41596 (not c!33261)) b!166312))

(declare-fun m!160465 () Bool)

(assert (=> b!166312 m!160465))

(declare-fun m!160467 () Bool)

(assert (=> b!166312 m!160467))

(assert (=> d!41082 d!41596))

(declare-fun d!41598 () Bool)

(declare-fun c!33262 () Bool)

(assert (=> d!41598 (= c!33262 ((_ is Nil!2822) lt!50709))))

(declare-fun e!100322 () (InoxSet C!2372))

(assert (=> d!41598 (= (content!391 lt!50709) e!100322)))

(declare-fun b!166313 () Bool)

(assert (=> b!166313 (= e!100322 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166314 () Bool)

(assert (=> b!166314 (= e!100322 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!50709) true) (content!391 (t!26454 lt!50709))))))

(assert (= (and d!41598 c!33262) b!166313))

(assert (= (and d!41598 (not c!33262)) b!166314))

(declare-fun m!160471 () Bool)

(assert (=> b!166314 m!160471))

(declare-fun m!160473 () Bool)

(assert (=> b!166314 m!160473))

(assert (=> d!41082 d!41598))

(declare-fun d!41602 () Bool)

(declare-fun lt!51765 () Int)

(assert (=> d!41602 (>= lt!51765 0)))

(declare-fun e!100325 () Int)

(assert (=> d!41602 (= lt!51765 e!100325)))

(declare-fun c!33265 () Bool)

(assert (=> d!41602 (= c!33265 ((_ is Nil!2822) lt!51011))))

(assert (=> d!41602 (= (size!2365 lt!51011) lt!51765)))

(declare-fun b!166319 () Bool)

(assert (=> b!166319 (= e!100325 0)))

(declare-fun b!166320 () Bool)

(assert (=> b!166320 (= e!100325 (+ 1 (size!2365 (t!26454 lt!51011))))))

(assert (= (and d!41602 c!33265) b!166319))

(assert (= (and d!41602 (not c!33265)) b!166320))

(declare-fun m!160479 () Bool)

(assert (=> b!166320 m!160479))

(assert (=> b!165368 d!41602))

(assert (=> b!165368 d!41152))

(assert (=> b!165368 d!41182))

(declare-fun b!166323 () Bool)

(declare-fun res!75186 () Bool)

(declare-fun e!100326 () Bool)

(assert (=> b!166323 (=> (not res!75186) (not e!100326))))

(declare-fun lt!51766 () List!2832)

(assert (=> b!166323 (= res!75186 (= (size!2365 lt!51766) (+ (size!2365 (t!26454 (++!636 lt!50724 lt!50718))) (size!2365 lt!50709))))))

(declare-fun d!41604 () Bool)

(assert (=> d!41604 e!100326))

(declare-fun res!75187 () Bool)

(assert (=> d!41604 (=> (not res!75187) (not e!100326))))

(assert (=> d!41604 (= res!75187 (= (content!391 lt!51766) ((_ map or) (content!391 (t!26454 (++!636 lt!50724 lt!50718))) (content!391 lt!50709))))))

(declare-fun e!100327 () List!2832)

(assert (=> d!41604 (= lt!51766 e!100327)))

(declare-fun c!33266 () Bool)

(assert (=> d!41604 (= c!33266 ((_ is Nil!2822) (t!26454 (++!636 lt!50724 lt!50718))))))

(assert (=> d!41604 (= (++!636 (t!26454 (++!636 lt!50724 lt!50718)) lt!50709) lt!51766)))

(declare-fun b!166322 () Bool)

(assert (=> b!166322 (= e!100327 (Cons!2822 (h!8219 (t!26454 (++!636 lt!50724 lt!50718))) (++!636 (t!26454 (t!26454 (++!636 lt!50724 lt!50718))) lt!50709)))))

(declare-fun b!166321 () Bool)

(assert (=> b!166321 (= e!100327 lt!50709)))

(declare-fun b!166324 () Bool)

(assert (=> b!166324 (= e!100326 (or (not (= lt!50709 Nil!2822)) (= lt!51766 (t!26454 (++!636 lt!50724 lt!50718)))))))

(assert (= (and d!41604 c!33266) b!166321))

(assert (= (and d!41604 (not c!33266)) b!166322))

(assert (= (and d!41604 res!75187) b!166323))

(assert (= (and b!166323 res!75186) b!166324))

(declare-fun m!160485 () Bool)

(assert (=> b!166323 m!160485))

(assert (=> b!166323 m!158635))

(assert (=> b!166323 m!158015))

(declare-fun m!160487 () Bool)

(assert (=> d!41604 m!160487))

(assert (=> d!41604 m!160467))

(assert (=> d!41604 m!158021))

(declare-fun m!160489 () Bool)

(assert (=> b!166322 m!160489))

(assert (=> b!165334 d!41604))

(declare-fun d!41608 () Bool)

(declare-fun lt!51767 () Int)

(assert (=> d!41608 (>= lt!51767 0)))

(declare-fun e!100328 () Int)

(assert (=> d!41608 (= lt!51767 e!100328)))

(declare-fun c!33267 () Bool)

(assert (=> d!41608 (= c!33267 ((_ is Nil!2822) (originalCharacters!544 (h!8221 tokens!465))))))

(assert (=> d!41608 (= (size!2365 (originalCharacters!544 (h!8221 tokens!465))) lt!51767)))

(declare-fun b!166325 () Bool)

(assert (=> b!166325 (= e!100328 0)))

(declare-fun b!166326 () Bool)

(assert (=> b!166326 (= e!100328 (+ 1 (size!2365 (t!26454 (originalCharacters!544 (h!8221 tokens!465))))))))

(assert (= (and d!41608 c!33267) b!166325))

(assert (= (and d!41608 (not c!33267)) b!166326))

(declare-fun m!160491 () Bool)

(assert (=> b!166326 m!160491))

(assert (=> b!165274 d!41608))

(declare-fun bs!16056 () Bool)

(declare-fun d!41610 () Bool)

(assert (= bs!16056 (and d!41610 d!41042)))

(declare-fun lambda!4628 () Int)

(assert (=> bs!16056 (= lambda!4628 lambda!4584)))

(assert (=> d!41610 true))

(declare-fun lt!51773 () Bool)

(assert (=> d!41610 (= lt!51773 (rulesValidInductive!108 thiss!17480 rules!1920))))

(assert (=> d!41610 (= lt!51773 (forall!536 rules!1920 lambda!4628))))

(assert (=> d!41610 (= (rulesValid!139 thiss!17480 rules!1920) lt!51773)))

(declare-fun bs!16057 () Bool)

(assert (= bs!16057 d!41610))

(assert (=> bs!16057 m!157265))

(declare-fun m!160527 () Bool)

(assert (=> bs!16057 m!160527))

(assert (=> d!41054 d!41610))

(declare-fun d!41630 () Bool)

(declare-fun lt!51774 () BalanceConc!1656)

(assert (=> d!41630 (= (list!1019 lt!51774) (originalCharacters!544 (h!8221 (t!26456 tokens!465))))))

(assert (=> d!41630 (= lt!51774 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (value!18594 (h!8221 (t!26456 tokens!465)))))))

(assert (=> d!41630 (= (charsOf!156 (h!8221 (t!26456 tokens!465))) lt!51774)))

(declare-fun b_lambda!3637 () Bool)

(assert (=> (not b_lambda!3637) (not d!41630)))

(declare-fun t!26651 () Bool)

(declare-fun tb!6433 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) t!26651) tb!6433))

(declare-fun b!166342 () Bool)

(declare-fun e!100337 () Bool)

(declare-fun tp!82932 () Bool)

(assert (=> b!166342 (= e!100337 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (value!18594 (h!8221 (t!26456 tokens!465)))))) tp!82932))))

(declare-fun result!9072 () Bool)

(assert (=> tb!6433 (= result!9072 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (value!18594 (h!8221 (t!26456 tokens!465))))) e!100337))))

(assert (= tb!6433 b!166342))

(declare-fun m!160529 () Bool)

(assert (=> b!166342 m!160529))

(declare-fun m!160531 () Bool)

(assert (=> tb!6433 m!160531))

(assert (=> d!41630 t!26651))

(declare-fun b_and!10703 () Bool)

(assert (= b_and!10693 (and (=> t!26651 result!9072) b_and!10703)))

(declare-fun tb!6435 () Bool)

(declare-fun t!26653 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) t!26653) tb!6435))

(declare-fun result!9074 () Bool)

(assert (= result!9074 result!9072))

(assert (=> d!41630 t!26653))

(declare-fun b_and!10705 () Bool)

(assert (= b_and!10697 (and (=> t!26653 result!9074) b_and!10705)))

(declare-fun t!26655 () Bool)

(declare-fun tb!6437 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) t!26655) tb!6437))

(declare-fun result!9076 () Bool)

(assert (= result!9076 result!9072))

(assert (=> d!41630 t!26655))

(declare-fun b_and!10707 () Bool)

(assert (= b_and!10699 (and (=> t!26655 result!9076) b_and!10707)))

(declare-fun t!26657 () Bool)

(declare-fun tb!6439 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) t!26657) tb!6439))

(declare-fun result!9078 () Bool)

(assert (= result!9078 result!9072))

(assert (=> d!41630 t!26657))

(declare-fun b_and!10709 () Bool)

(assert (= b_and!10695 (and (=> t!26657 result!9078) b_and!10709)))

(declare-fun t!26659 () Bool)

(declare-fun tb!6441 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) t!26659) tb!6441))

(declare-fun result!9080 () Bool)

(assert (= result!9080 result!9072))

(assert (=> d!41630 t!26659))

(declare-fun b_and!10711 () Bool)

(assert (= b_and!10701 (and (=> t!26659 result!9080) b_and!10711)))

(declare-fun m!160533 () Bool)

(assert (=> d!41630 m!160533))

(declare-fun m!160535 () Bool)

(assert (=> d!41630 m!160535))

(assert (=> bm!7077 d!41630))

(declare-fun d!41634 () Bool)

(declare-fun lt!51786 () Bool)

(assert (=> d!41634 (= lt!51786 (select (content!392 tokens!465) (h!8221 tokens!465)))))

(declare-fun e!100353 () Bool)

(assert (=> d!41634 (= lt!51786 e!100353)))

(declare-fun res!75205 () Bool)

(assert (=> d!41634 (=> (not res!75205) (not e!100353))))

(assert (=> d!41634 (= res!75205 ((_ is Cons!2824) tokens!465))))

(assert (=> d!41634 (= (contains!452 tokens!465 (h!8221 tokens!465)) lt!51786)))

(declare-fun b!166367 () Bool)

(declare-fun e!100352 () Bool)

(assert (=> b!166367 (= e!100353 e!100352)))

(declare-fun res!75204 () Bool)

(assert (=> b!166367 (=> res!75204 e!100352)))

(assert (=> b!166367 (= res!75204 (= (h!8221 tokens!465) (h!8221 tokens!465)))))

(declare-fun b!166368 () Bool)

(assert (=> b!166368 (= e!100352 (contains!452 (t!26456 tokens!465) (h!8221 tokens!465)))))

(assert (= (and d!41634 res!75205) b!166367))

(assert (= (and b!166367 (not res!75204)) b!166368))

(declare-fun m!160563 () Bool)

(assert (=> d!41634 m!160563))

(declare-fun m!160565 () Bool)

(assert (=> d!41634 m!160565))

(declare-fun m!160567 () Bool)

(assert (=> b!166368 m!160567))

(assert (=> b!165295 d!41634))

(declare-fun d!41646 () Bool)

(declare-fun charsToBigInt!0 (List!2831 Int) Int)

(assert (=> d!41646 (= (inv!15 (value!18594 (h!8221 tokens!465))) (= (charsToBigInt!0 (text!4110 (value!18594 (h!8221 tokens!465))) 0) (value!18589 (value!18594 (h!8221 tokens!465)))))))

(declare-fun bs!16059 () Bool)

(assert (= bs!16059 d!41646))

(declare-fun m!160601 () Bool)

(assert (=> bs!16059 m!160601))

(assert (=> b!165155 d!41646))

(declare-fun d!41650 () Bool)

(declare-fun lt!51788 () Int)

(assert (=> d!41650 (>= lt!51788 0)))

(declare-fun e!100355 () Int)

(assert (=> d!41650 (= lt!51788 e!100355)))

(declare-fun c!33279 () Bool)

(assert (=> d!41650 (= c!33279 ((_ is Nil!2822) (originalCharacters!544 separatorToken!170)))))

(assert (=> d!41650 (= (size!2365 (originalCharacters!544 separatorToken!170)) lt!51788)))

(declare-fun b!166370 () Bool)

(assert (=> b!166370 (= e!100355 0)))

(declare-fun b!166371 () Bool)

(assert (=> b!166371 (= e!100355 (+ 1 (size!2365 (t!26454 (originalCharacters!544 separatorToken!170)))))))

(assert (= (and d!41650 c!33279) b!166370))

(assert (= (and d!41650 (not c!33279)) b!166371))

(declare-fun m!160603 () Bool)

(assert (=> b!166371 m!160603))

(assert (=> b!165297 d!41650))

(declare-fun d!41652 () Bool)

(assert (=> d!41652 (= (inv!3641 (tag!679 (rule!1008 (h!8221 (t!26456 tokens!465))))) (= (mod (str.len (value!18593 (tag!679 (rule!1008 (h!8221 (t!26456 tokens!465)))))) 2) 0))))

(assert (=> b!165392 d!41652))

(declare-fun d!41654 () Bool)

(declare-fun res!75207 () Bool)

(declare-fun e!100356 () Bool)

(assert (=> d!41654 (=> (not res!75207) (not e!100356))))

(assert (=> d!41654 (= res!75207 (semiInverseModEq!173 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))))))

(assert (=> d!41654 (= (inv!3645 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) e!100356)))

(declare-fun b!166372 () Bool)

(assert (=> b!166372 (= e!100356 (equivClasses!156 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))))))

(assert (= (and d!41654 res!75207) b!166372))

(declare-fun m!160613 () Bool)

(assert (=> d!41654 m!160613))

(declare-fun m!160615 () Bool)

(assert (=> b!166372 m!160615))

(assert (=> b!165392 d!41654))

(assert (=> b!164997 d!41176))

(declare-fun d!41658 () Bool)

(assert (=> d!41658 (= (tail!336 (drop!135 lt!50825 0)) (drop!135 lt!50825 (+ 0 1)))))

(declare-fun lt!51795 () Unit!2378)

(assert (=> d!41658 (= lt!51795 (choose!1813 lt!50825 0))))

(declare-fun e!100361 () Bool)

(assert (=> d!41658 e!100361))

(declare-fun res!75208 () Bool)

(assert (=> d!41658 (=> (not res!75208) (not e!100361))))

(assert (=> d!41658 (= res!75208 (>= 0 0))))

(assert (=> d!41658 (= (lemmaDropTail!114 lt!50825 0) lt!51795)))

(declare-fun b!166381 () Bool)

(assert (=> b!166381 (= e!100361 (< 0 (size!2368 lt!50825)))))

(assert (= (and d!41658 res!75208) b!166381))

(assert (=> d!41658 m!157535))

(assert (=> d!41658 m!157535))

(assert (=> d!41658 m!157537))

(assert (=> d!41658 m!157559))

(declare-fun m!160617 () Bool)

(assert (=> d!41658 m!160617))

(declare-fun m!160619 () Bool)

(assert (=> b!166381 m!160619))

(assert (=> b!164997 d!41658))

(declare-fun d!41660 () Bool)

(declare-fun lt!51796 () Token!746)

(assert (=> d!41660 (contains!452 lt!50827 lt!51796)))

(declare-fun e!100365 () Token!746)

(assert (=> d!41660 (= lt!51796 e!100365)))

(declare-fun c!33284 () Bool)

(assert (=> d!41660 (= c!33284 (= 0 0))))

(declare-fun e!100366 () Bool)

(assert (=> d!41660 e!100366))

(declare-fun res!75209 () Bool)

(assert (=> d!41660 (=> (not res!75209) (not e!100366))))

(assert (=> d!41660 (= res!75209 (<= 0 0))))

(assert (=> d!41660 (= (apply!397 lt!50827 0) lt!51796)))

(declare-fun b!166385 () Bool)

(assert (=> b!166385 (= e!100366 (< 0 (size!2368 lt!50827)))))

(declare-fun b!166386 () Bool)

(assert (=> b!166386 (= e!100365 (head!596 lt!50827))))

(declare-fun b!166387 () Bool)

(assert (=> b!166387 (= e!100365 (apply!397 (tail!336 lt!50827) (- 0 1)))))

(assert (= (and d!41660 res!75209) b!166385))

(assert (= (and d!41660 c!33284) b!166386))

(assert (= (and d!41660 (not c!33284)) b!166387))

(declare-fun m!160621 () Bool)

(assert (=> d!41660 m!160621))

(declare-fun m!160623 () Bool)

(assert (=> b!166385 m!160623))

(declare-fun m!160625 () Bool)

(assert (=> b!166386 m!160625))

(declare-fun m!160627 () Bool)

(assert (=> b!166387 m!160627))

(assert (=> b!166387 m!160627))

(declare-fun m!160629 () Bool)

(assert (=> b!166387 m!160629))

(assert (=> b!164997 d!41660))

(declare-fun d!41662 () Bool)

(assert (=> d!41662 (dynLambda!1025 lambda!4564 (apply!398 lt!50710 0))))

(declare-fun lt!51797 () Unit!2378)

(assert (=> d!41662 (= lt!51797 (choose!1809 (list!1023 lt!50710) lambda!4564 (apply!398 lt!50710 0)))))

(declare-fun e!100367 () Bool)

(assert (=> d!41662 e!100367))

(declare-fun res!75210 () Bool)

(assert (=> d!41662 (=> (not res!75210) (not e!100367))))

(assert (=> d!41662 (= res!75210 (forall!533 (list!1023 lt!50710) lambda!4564))))

(assert (=> d!41662 (= (forallContained!68 (list!1023 lt!50710) lambda!4564 (apply!398 lt!50710 0)) lt!51797)))

(declare-fun b!166388 () Bool)

(assert (=> b!166388 (= e!100367 (contains!452 (list!1023 lt!50710) (apply!398 lt!50710 0)))))

(assert (= (and d!41662 res!75210) b!166388))

(declare-fun b_lambda!3645 () Bool)

(assert (=> (not b_lambda!3645) (not d!41662)))

(assert (=> d!41662 m!157507))

(declare-fun m!160631 () Bool)

(assert (=> d!41662 m!160631))

(assert (=> d!41662 m!157519))

(assert (=> d!41662 m!157507))

(declare-fun m!160633 () Bool)

(assert (=> d!41662 m!160633))

(assert (=> d!41662 m!157519))

(declare-fun m!160635 () Bool)

(assert (=> d!41662 m!160635))

(assert (=> b!166388 m!157519))

(assert (=> b!166388 m!157507))

(declare-fun m!160637 () Bool)

(assert (=> b!166388 m!160637))

(assert (=> b!164997 d!41662))

(declare-fun d!41664 () Bool)

(declare-fun e!100369 () Bool)

(assert (=> d!41664 e!100369))

(declare-fun res!75211 () Bool)

(assert (=> d!41664 (=> (not res!75211) (not e!100369))))

(declare-fun lt!51798 () List!2834)

(assert (=> d!41664 (= res!75211 (= ((_ map implies) (content!392 lt!51798) (content!392 lt!50827)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!100371 () List!2834)

(assert (=> d!41664 (= lt!51798 e!100371)))

(declare-fun c!33288 () Bool)

(assert (=> d!41664 (= c!33288 ((_ is Nil!2824) lt!50827))))

(assert (=> d!41664 (= (drop!135 lt!50827 0) lt!51798)))

(declare-fun b!166389 () Bool)

(declare-fun e!100372 () List!2834)

(assert (=> b!166389 (= e!100372 (drop!135 (t!26456 lt!50827) (- 0 1)))))

(declare-fun bm!7155 () Bool)

(declare-fun call!7160 () Int)

(assert (=> bm!7155 (= call!7160 (size!2368 lt!50827))))

(declare-fun b!166390 () Bool)

(assert (=> b!166390 (= e!100372 lt!50827)))

(declare-fun b!166391 () Bool)

(declare-fun e!100368 () Int)

(assert (=> b!166391 (= e!100368 (- call!7160 0))))

(declare-fun b!166392 () Bool)

(declare-fun e!100370 () Int)

(assert (=> b!166392 (= e!100370 call!7160)))

(declare-fun b!166393 () Bool)

(assert (=> b!166393 (= e!100369 (= (size!2368 lt!51798) e!100370))))

(declare-fun c!33285 () Bool)

(assert (=> b!166393 (= c!33285 (<= 0 0))))

(declare-fun b!166394 () Bool)

(assert (=> b!166394 (= e!100371 Nil!2824)))

(declare-fun b!166395 () Bool)

(assert (=> b!166395 (= e!100368 0)))

(declare-fun b!166396 () Bool)

(assert (=> b!166396 (= e!100370 e!100368)))

(declare-fun c!33287 () Bool)

(assert (=> b!166396 (= c!33287 (>= 0 call!7160))))

(declare-fun b!166397 () Bool)

(assert (=> b!166397 (= e!100371 e!100372)))

(declare-fun c!33286 () Bool)

(assert (=> b!166397 (= c!33286 (<= 0 0))))

(assert (= (and d!41664 c!33288) b!166394))

(assert (= (and d!41664 (not c!33288)) b!166397))

(assert (= (and b!166397 c!33286) b!166390))

(assert (= (and b!166397 (not c!33286)) b!166389))

(assert (= (and d!41664 res!75211) b!166393))

(assert (= (and b!166393 c!33285) b!166392))

(assert (= (and b!166393 (not c!33285)) b!166396))

(assert (= (and b!166396 c!33287) b!166395))

(assert (= (and b!166396 (not c!33287)) b!166391))

(assert (= (or b!166392 b!166396 b!166391) bm!7155))

(declare-fun m!160639 () Bool)

(assert (=> d!41664 m!160639))

(declare-fun m!160641 () Bool)

(assert (=> d!41664 m!160641))

(declare-fun m!160643 () Bool)

(assert (=> b!166389 m!160643))

(assert (=> bm!7155 m!160623))

(declare-fun m!160645 () Bool)

(assert (=> b!166393 m!160645))

(assert (=> b!164997 d!41664))

(declare-fun d!41666 () Bool)

(declare-fun e!100374 () Bool)

(assert (=> d!41666 e!100374))

(declare-fun res!75212 () Bool)

(assert (=> d!41666 (=> (not res!75212) (not e!100374))))

(declare-fun lt!51799 () List!2834)

(assert (=> d!41666 (= res!75212 (= ((_ map implies) (content!392 lt!51799) (content!392 lt!50825)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!100376 () List!2834)

(assert (=> d!41666 (= lt!51799 e!100376)))

(declare-fun c!33292 () Bool)

(assert (=> d!41666 (= c!33292 ((_ is Nil!2824) lt!50825))))

(assert (=> d!41666 (= (drop!135 lt!50825 (+ 0 1)) lt!51799)))

(declare-fun b!166398 () Bool)

(declare-fun e!100377 () List!2834)

(assert (=> b!166398 (= e!100377 (drop!135 (t!26456 lt!50825) (- (+ 0 1) 1)))))

(declare-fun bm!7156 () Bool)

(declare-fun call!7161 () Int)

(assert (=> bm!7156 (= call!7161 (size!2368 lt!50825))))

(declare-fun b!166399 () Bool)

(assert (=> b!166399 (= e!100377 lt!50825)))

(declare-fun b!166400 () Bool)

(declare-fun e!100373 () Int)

(assert (=> b!166400 (= e!100373 (- call!7161 (+ 0 1)))))

(declare-fun b!166401 () Bool)

(declare-fun e!100375 () Int)

(assert (=> b!166401 (= e!100375 call!7161)))

(declare-fun b!166402 () Bool)

(assert (=> b!166402 (= e!100374 (= (size!2368 lt!51799) e!100375))))

(declare-fun c!33289 () Bool)

(assert (=> b!166402 (= c!33289 (<= (+ 0 1) 0))))

(declare-fun b!166403 () Bool)

(assert (=> b!166403 (= e!100376 Nil!2824)))

(declare-fun b!166404 () Bool)

(assert (=> b!166404 (= e!100373 0)))

(declare-fun b!166405 () Bool)

(assert (=> b!166405 (= e!100375 e!100373)))

(declare-fun c!33291 () Bool)

(assert (=> b!166405 (= c!33291 (>= (+ 0 1) call!7161))))

(declare-fun b!166406 () Bool)

(assert (=> b!166406 (= e!100376 e!100377)))

(declare-fun c!33290 () Bool)

(assert (=> b!166406 (= c!33290 (<= (+ 0 1) 0))))

(assert (= (and d!41666 c!33292) b!166403))

(assert (= (and d!41666 (not c!33292)) b!166406))

(assert (= (and b!166406 c!33290) b!166399))

(assert (= (and b!166406 (not c!33290)) b!166398))

(assert (= (and d!41666 res!75212) b!166402))

(assert (= (and b!166402 c!33289) b!166401))

(assert (= (and b!166402 (not c!33289)) b!166405))

(assert (= (and b!166405 c!33291) b!166404))

(assert (= (and b!166405 (not c!33291)) b!166400))

(assert (= (or b!166401 b!166405 b!166400) bm!7156))

(declare-fun m!160647 () Bool)

(assert (=> d!41666 m!160647))

(declare-fun m!160649 () Bool)

(assert (=> d!41666 m!160649))

(declare-fun m!160651 () Bool)

(assert (=> b!166398 m!160651))

(assert (=> bm!7156 m!160619))

(declare-fun m!160653 () Bool)

(assert (=> b!166402 m!160653))

(assert (=> b!164997 d!41666))

(declare-fun bs!16076 () Bool)

(declare-fun d!41668 () Bool)

(assert (= bs!16076 (and d!41668 b!165658)))

(declare-fun lambda!4630 () Int)

(assert (=> bs!16076 (not (= lambda!4630 lambda!4600))))

(declare-fun bs!16077 () Bool)

(assert (= bs!16077 (and d!41668 b!165351)))

(assert (=> bs!16077 (not (= lambda!4630 lambda!4592))))

(declare-fun bs!16078 () Bool)

(assert (= bs!16078 (and d!41668 d!41086)))

(assert (=> bs!16078 (= lambda!4630 lambda!4591)))

(declare-fun bs!16079 () Bool)

(assert (= bs!16079 (and d!41668 d!40916)))

(assert (=> bs!16079 (= lambda!4630 lambda!4563)))

(declare-fun bs!16080 () Bool)

(assert (= bs!16080 (and d!41668 b!165344)))

(assert (=> bs!16080 (not (= lambda!4630 lambda!4590))))

(declare-fun bs!16081 () Bool)

(assert (= bs!16081 (and d!41668 d!41270)))

(assert (=> bs!16081 (not (= lambda!4630 lambda!4611))))

(declare-fun bs!16082 () Bool)

(assert (= bs!16082 (and d!41668 d!41232)))

(assert (=> bs!16082 (= lambda!4630 lambda!4599)))

(declare-fun bs!16083 () Bool)

(assert (= bs!16083 (and d!41668 b!164997)))

(assert (=> bs!16083 (not (= lambda!4630 lambda!4564))))

(declare-fun bs!16084 () Bool)

(assert (= bs!16084 (and d!41668 b!165075)))

(assert (=> bs!16084 (not (= lambda!4630 lambda!4573))))

(declare-fun bs!16085 () Bool)

(assert (= bs!16085 (and d!41668 b!164839)))

(assert (=> bs!16085 (= lambda!4630 lambda!4551)))

(declare-fun bs!16086 () Bool)

(assert (= bs!16086 (and d!41668 b!164821)))

(assert (=> bs!16086 (not (= lambda!4630 lambda!4552))))

(declare-fun bs!16088 () Bool)

(assert (= bs!16088 (and d!41668 d!41070)))

(assert (=> bs!16088 (not (= lambda!4630 lambda!4589))))

(declare-fun bs!16089 () Bool)

(declare-fun b!166410 () Bool)

(assert (= bs!16089 (and b!166410 b!165658)))

(declare-fun lambda!4631 () Int)

(assert (=> bs!16089 (= lambda!4631 lambda!4600)))

(declare-fun bs!16090 () Bool)

(assert (= bs!16090 (and b!166410 b!165351)))

(assert (=> bs!16090 (= lambda!4631 lambda!4592)))

(declare-fun bs!16091 () Bool)

(assert (= bs!16091 (and b!166410 d!41086)))

(assert (=> bs!16091 (not (= lambda!4631 lambda!4591))))

(declare-fun bs!16092 () Bool)

(assert (= bs!16092 (and b!166410 d!40916)))

(assert (=> bs!16092 (not (= lambda!4631 lambda!4563))))

(declare-fun bs!16093 () Bool)

(assert (= bs!16093 (and b!166410 b!165344)))

(assert (=> bs!16093 (= lambda!4631 lambda!4590)))

(declare-fun bs!16094 () Bool)

(assert (= bs!16094 (and b!166410 d!41270)))

(assert (=> bs!16094 (= lambda!4631 lambda!4611)))

(declare-fun bs!16095 () Bool)

(assert (= bs!16095 (and b!166410 d!41668)))

(assert (=> bs!16095 (not (= lambda!4631 lambda!4630))))

(declare-fun bs!16096 () Bool)

(assert (= bs!16096 (and b!166410 d!41232)))

(assert (=> bs!16096 (not (= lambda!4631 lambda!4599))))

(declare-fun bs!16097 () Bool)

(assert (= bs!16097 (and b!166410 b!164997)))

(assert (=> bs!16097 (= lambda!4631 lambda!4564)))

(declare-fun bs!16098 () Bool)

(assert (= bs!16098 (and b!166410 b!165075)))

(assert (=> bs!16098 (= lambda!4631 lambda!4573)))

(declare-fun bs!16099 () Bool)

(assert (= bs!16099 (and b!166410 b!164839)))

(assert (=> bs!16099 (not (= lambda!4631 lambda!4551))))

(declare-fun bs!16100 () Bool)

(assert (= bs!16100 (and b!166410 b!164821)))

(assert (=> bs!16100 (= lambda!4631 lambda!4552)))

(declare-fun bs!16101 () Bool)

(assert (= bs!16101 (and b!166410 d!41070)))

(assert (=> bs!16101 (= lambda!4631 lambda!4589)))

(declare-fun b!166429 () Bool)

(declare-fun e!100392 () Bool)

(assert (=> b!166429 (= e!100392 true)))

(declare-fun b!166428 () Bool)

(declare-fun e!100391 () Bool)

(assert (=> b!166428 (= e!100391 e!100392)))

(declare-fun b!166427 () Bool)

(declare-fun e!100390 () Bool)

(assert (=> b!166427 (= e!100390 e!100391)))

(assert (=> b!166410 e!100390))

(assert (= b!166428 b!166429))

(assert (= b!166427 b!166428))

(assert (= (and b!166410 ((_ is Cons!2823) rules!1920)) b!166427))

(assert (=> b!166429 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4631))))

(assert (=> b!166429 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4631))))

(assert (=> b!166410 true))

(declare-fun call!7166 () Token!746)

(declare-fun c!33296 () Bool)

(declare-fun call!7162 () Token!746)

(declare-fun bm!7157 () Bool)

(declare-fun call!7163 () BalanceConc!1656)

(declare-fun c!33295 () Bool)

(assert (=> bm!7157 (= call!7163 (charsOf!156 (ite c!33295 call!7166 (ite c!33296 separatorToken!170 call!7162))))))

(declare-fun b!166407 () Bool)

(declare-fun e!100378 () BalanceConc!1656)

(assert (=> b!166407 (= e!100378 (BalanceConc!1657 Empty!824))))

(assert (=> b!166407 (= (print!118 thiss!17480 (singletonSeq!53 call!7162)) (printTailRec!81 thiss!17480 (singletonSeq!53 call!7162) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!51806 () Unit!2378)

(declare-fun Unit!2414 () Unit!2378)

(assert (=> b!166407 (= lt!51806 Unit!2414)))

(declare-fun lt!51810 () Unit!2378)

(declare-fun lt!51802 () BalanceConc!1656)

(declare-fun call!7164 () BalanceConc!1656)

(assert (=> b!166407 (= lt!51810 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 (list!1019 call!7164) (list!1019 lt!51802)))))

(assert (=> b!166407 false))

(declare-fun lt!51805 () Unit!2378)

(declare-fun Unit!2415 () Unit!2378)

(assert (=> b!166407 (= lt!51805 Unit!2415)))

(declare-fun b!166408 () Bool)

(declare-fun e!100384 () Bool)

(declare-fun lt!51812 () Option!282)

(assert (=> b!166408 (= e!100384 (not (= (_1!1564 (v!13704 lt!51812)) call!7166)))))

(declare-fun b!166409 () Bool)

(declare-fun e!100380 () BalanceConc!1656)

(assert (=> b!166409 (= e!100380 (BalanceConc!1657 Empty!824))))

(declare-fun e!100381 () BalanceConc!1656)

(assert (=> b!166410 (= e!100380 e!100381)))

(declare-fun lt!51813 () List!2834)

(assert (=> b!166410 (= lt!51813 (list!1023 lt!50710))))

(declare-fun lt!51800 () Unit!2378)

(assert (=> b!166410 (= lt!51800 (lemmaDropApply!122 lt!51813 (+ 0 1)))))

(assert (=> b!166410 (= (head!596 (drop!135 lt!51813 (+ 0 1))) (apply!397 lt!51813 (+ 0 1)))))

(declare-fun lt!51803 () Unit!2378)

(assert (=> b!166410 (= lt!51803 lt!51800)))

(declare-fun lt!51811 () List!2834)

(assert (=> b!166410 (= lt!51811 (list!1023 lt!50710))))

(declare-fun lt!51809 () Unit!2378)

(assert (=> b!166410 (= lt!51809 (lemmaDropTail!114 lt!51811 (+ 0 1)))))

(assert (=> b!166410 (= (tail!336 (drop!135 lt!51811 (+ 0 1))) (drop!135 lt!51811 (+ 0 1 1)))))

(declare-fun lt!51801 () Unit!2378)

(assert (=> b!166410 (= lt!51801 lt!51809)))

(declare-fun lt!51807 () Unit!2378)

(assert (=> b!166410 (= lt!51807 (forallContained!68 (list!1023 lt!50710) lambda!4631 (apply!398 lt!50710 (+ 0 1))))))

(assert (=> b!166410 (= lt!51802 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!166410 (= lt!51812 (maxPrefixZipperSequence!82 thiss!17480 rules!1920 (++!638 (charsOf!156 (apply!398 lt!50710 (+ 0 1))) lt!51802)))))

(declare-fun res!75215 () Bool)

(assert (=> b!166410 (= res!75215 ((_ is Some!281) lt!51812))))

(declare-fun e!100382 () Bool)

(assert (=> b!166410 (=> (not res!75215) (not e!100382))))

(assert (=> b!166410 (= c!33295 e!100382)))

(declare-fun b!166411 () Bool)

(assert (=> b!166411 (= e!100382 (= (_1!1564 (v!13704 lt!51812)) (apply!398 lt!50710 (+ 0 1))))))

(declare-fun b!166412 () Bool)

(declare-fun call!7165 () BalanceConc!1656)

(assert (=> b!166412 (= e!100381 call!7165)))

(declare-fun b!166413 () Bool)

(declare-fun e!100379 () BalanceConc!1656)

(assert (=> b!166413 (= e!100379 (charsOf!156 call!7162))))

(declare-fun b!166414 () Bool)

(assert (=> b!166414 (= e!100378 (++!638 call!7165 lt!51802))))

(declare-fun bm!7158 () Bool)

(declare-fun c!33293 () Bool)

(assert (=> bm!7158 (= c!33293 c!33295)))

(assert (=> bm!7158 (= call!7165 (++!638 e!100379 (ite c!33295 lt!51802 call!7164)))))

(declare-fun bm!7159 () Bool)

(assert (=> bm!7159 (= call!7166 (apply!398 lt!50710 (+ 0 1)))))

(declare-fun bm!7160 () Bool)

(assert (=> bm!7160 (= call!7164 call!7163)))

(declare-fun b!166416 () Bool)

(assert (=> b!166416 (= c!33296 e!100384)))

(declare-fun res!75213 () Bool)

(assert (=> b!166416 (=> (not res!75213) (not e!100384))))

(assert (=> b!166416 (= res!75213 ((_ is Some!281) lt!51812))))

(assert (=> b!166416 (= e!100381 e!100378)))

(declare-fun b!166415 () Bool)

(declare-fun e!100383 () Bool)

(assert (=> b!166415 (= e!100383 (<= (+ 0 1) (size!2362 lt!50710)))))

(declare-fun lt!51804 () BalanceConc!1656)

(assert (=> d!41668 (= (list!1019 lt!51804) (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (dropList!82 lt!50710 (+ 0 1)) separatorToken!170))))

(assert (=> d!41668 (= lt!51804 e!100380)))

(declare-fun c!33294 () Bool)

(assert (=> d!41668 (= c!33294 (>= (+ 0 1) (size!2362 lt!50710)))))

(declare-fun lt!51808 () Unit!2378)

(assert (=> d!41668 (= lt!51808 (lemmaContentSubsetPreservesForall!26 (list!1023 lt!50710) (dropList!82 lt!50710 (+ 0 1)) lambda!4630))))

(assert (=> d!41668 e!100383))

(declare-fun res!75214 () Bool)

(assert (=> d!41668 (=> (not res!75214) (not e!100383))))

(assert (=> d!41668 (= res!75214 (>= (+ 0 1) 0))))

(assert (=> d!41668 (= (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 (+ 0 1)) lt!51804)))

(declare-fun bm!7161 () Bool)

(assert (=> bm!7161 (= call!7162 call!7166)))

(declare-fun b!166417 () Bool)

(assert (=> b!166417 (= e!100379 call!7163)))

(assert (= (and d!41668 res!75214) b!166415))

(assert (= (and d!41668 c!33294) b!166409))

(assert (= (and d!41668 (not c!33294)) b!166410))

(assert (= (and b!166410 res!75215) b!166411))

(assert (= (and b!166410 c!33295) b!166412))

(assert (= (and b!166410 (not c!33295)) b!166416))

(assert (= (and b!166416 res!75213) b!166408))

(assert (= (and b!166416 c!33296) b!166414))

(assert (= (and b!166416 (not c!33296)) b!166407))

(assert (= (or b!166414 b!166407) bm!7161))

(assert (= (or b!166414 b!166407) bm!7160))

(assert (= (or b!166412 b!166408 bm!7161) bm!7159))

(assert (= (or b!166412 bm!7160) bm!7157))

(assert (= (or b!166412 b!166414) bm!7158))

(assert (= (and bm!7158 c!33293) b!166417))

(assert (= (and bm!7158 (not c!33293)) b!166413))

(declare-fun m!160761 () Bool)

(assert (=> bm!7157 m!160761))

(declare-fun m!160765 () Bool)

(assert (=> bm!7158 m!160765))

(declare-fun m!160767 () Bool)

(assert (=> bm!7159 m!160767))

(assert (=> b!166415 m!157509))

(declare-fun m!160769 () Bool)

(assert (=> b!166414 m!160769))

(declare-fun m!160771 () Bool)

(assert (=> d!41668 m!160771))

(declare-fun m!160773 () Bool)

(assert (=> d!41668 m!160773))

(assert (=> d!41668 m!160771))

(declare-fun m!160775 () Bool)

(assert (=> d!41668 m!160775))

(assert (=> d!41668 m!157519))

(assert (=> d!41668 m!157519))

(assert (=> d!41668 m!160771))

(declare-fun m!160777 () Bool)

(assert (=> d!41668 m!160777))

(assert (=> d!41668 m!157509))

(declare-fun m!160779 () Bool)

(assert (=> b!166407 m!160779))

(declare-fun m!160781 () Bool)

(assert (=> b!166407 m!160781))

(declare-fun m!160783 () Bool)

(assert (=> b!166407 m!160783))

(assert (=> b!166407 m!160781))

(declare-fun m!160785 () Bool)

(assert (=> b!166407 m!160785))

(declare-fun m!160787 () Bool)

(assert (=> b!166407 m!160787))

(assert (=> b!166407 m!160785))

(assert (=> b!166407 m!160785))

(declare-fun m!160789 () Bool)

(assert (=> b!166407 m!160789))

(assert (=> b!166407 m!160779))

(assert (=> b!166411 m!160767))

(declare-fun m!160791 () Bool)

(assert (=> b!166410 m!160791))

(declare-fun m!160793 () Bool)

(assert (=> b!166410 m!160793))

(assert (=> b!166410 m!160791))

(declare-fun m!160795 () Bool)

(assert (=> b!166410 m!160795))

(assert (=> b!166410 m!157519))

(declare-fun m!160797 () Bool)

(assert (=> b!166410 m!160797))

(declare-fun m!160799 () Bool)

(assert (=> b!166410 m!160799))

(declare-fun m!160801 () Bool)

(assert (=> b!166410 m!160801))

(declare-fun m!160803 () Bool)

(assert (=> b!166410 m!160803))

(declare-fun m!160805 () Bool)

(assert (=> b!166410 m!160805))

(declare-fun m!160807 () Bool)

(assert (=> b!166410 m!160807))

(declare-fun m!160809 () Bool)

(assert (=> b!166410 m!160809))

(assert (=> b!166410 m!160805))

(assert (=> b!166410 m!160797))

(declare-fun m!160811 () Bool)

(assert (=> b!166410 m!160811))

(assert (=> b!166410 m!157519))

(assert (=> b!166410 m!160767))

(declare-fun m!160813 () Bool)

(assert (=> b!166410 m!160813))

(declare-fun m!160815 () Bool)

(assert (=> b!166410 m!160815))

(assert (=> b!166410 m!160767))

(assert (=> b!166410 m!160767))

(assert (=> b!166410 m!160809))

(declare-fun m!160817 () Bool)

(assert (=> b!166413 m!160817))

(assert (=> b!164997 d!41668))

(declare-fun d!41684 () Bool)

(declare-fun e!100396 () Bool)

(assert (=> d!41684 e!100396))

(declare-fun res!75222 () Bool)

(assert (=> d!41684 (=> (not res!75222) (not e!100396))))

(declare-fun lt!51841 () List!2834)

(assert (=> d!41684 (= res!75222 (= ((_ map implies) (content!392 lt!51841) (content!392 lt!50825)) ((as const (InoxSet Token!746)) true)))))

(declare-fun e!100398 () List!2834)

(assert (=> d!41684 (= lt!51841 e!100398)))

(declare-fun c!33303 () Bool)

(assert (=> d!41684 (= c!33303 ((_ is Nil!2824) lt!50825))))

(assert (=> d!41684 (= (drop!135 lt!50825 0) lt!51841)))

(declare-fun b!166433 () Bool)

(declare-fun e!100399 () List!2834)

(assert (=> b!166433 (= e!100399 (drop!135 (t!26456 lt!50825) (- 0 1)))))

(declare-fun bm!7162 () Bool)

(declare-fun call!7167 () Int)

(assert (=> bm!7162 (= call!7167 (size!2368 lt!50825))))

(declare-fun b!166434 () Bool)

(assert (=> b!166434 (= e!100399 lt!50825)))

(declare-fun b!166435 () Bool)

(declare-fun e!100395 () Int)

(assert (=> b!166435 (= e!100395 (- call!7167 0))))

(declare-fun b!166436 () Bool)

(declare-fun e!100397 () Int)

(assert (=> b!166436 (= e!100397 call!7167)))

(declare-fun b!166437 () Bool)

(assert (=> b!166437 (= e!100396 (= (size!2368 lt!51841) e!100397))))

(declare-fun c!33300 () Bool)

(assert (=> b!166437 (= c!33300 (<= 0 0))))

(declare-fun b!166438 () Bool)

(assert (=> b!166438 (= e!100398 Nil!2824)))

(declare-fun b!166439 () Bool)

(assert (=> b!166439 (= e!100395 0)))

(declare-fun b!166440 () Bool)

(assert (=> b!166440 (= e!100397 e!100395)))

(declare-fun c!33302 () Bool)

(assert (=> b!166440 (= c!33302 (>= 0 call!7167))))

(declare-fun b!166441 () Bool)

(assert (=> b!166441 (= e!100398 e!100399)))

(declare-fun c!33301 () Bool)

(assert (=> b!166441 (= c!33301 (<= 0 0))))

(assert (= (and d!41684 c!33303) b!166438))

(assert (= (and d!41684 (not c!33303)) b!166441))

(assert (= (and b!166441 c!33301) b!166434))

(assert (= (and b!166441 (not c!33301)) b!166433))

(assert (= (and d!41684 res!75222) b!166437))

(assert (= (and b!166437 c!33300) b!166436))

(assert (= (and b!166437 (not c!33300)) b!166440))

(assert (= (and b!166440 c!33302) b!166439))

(assert (= (and b!166440 (not c!33302)) b!166435))

(assert (= (or b!166436 b!166440 b!166435) bm!7162))

(declare-fun m!160851 () Bool)

(assert (=> d!41684 m!160851))

(assert (=> d!41684 m!160649))

(declare-fun m!160853 () Bool)

(assert (=> b!166433 m!160853))

(assert (=> bm!7162 m!160619))

(declare-fun m!160855 () Bool)

(assert (=> b!166437 m!160855))

(assert (=> b!164997 d!41684))

(declare-fun b!166444 () Bool)

(declare-fun res!75227 () Bool)

(declare-fun e!100401 () Bool)

(assert (=> b!166444 (=> (not res!75227) (not e!100401))))

(assert (=> b!166444 (= res!75227 (<= (height!90 (++!641 (c!32900 (charsOf!156 (apply!398 lt!50710 0))) (c!32900 lt!50816))) (+ (max!0 (height!90 (c!32900 (charsOf!156 (apply!398 lt!50710 0)))) (height!90 (c!32900 lt!50816))) 1)))))

(declare-fun lt!51843 () BalanceConc!1656)

(declare-fun b!166446 () Bool)

(assert (=> b!166446 (= e!100401 (= (list!1019 lt!51843) (++!636 (list!1019 (charsOf!156 (apply!398 lt!50710 0))) (list!1019 lt!50816))))))

(declare-fun d!41689 () Bool)

(assert (=> d!41689 e!100401))

(declare-fun res!75225 () Bool)

(assert (=> d!41689 (=> (not res!75225) (not e!100401))))

(assert (=> d!41689 (= res!75225 (appendAssocInst!29 (c!32900 (charsOf!156 (apply!398 lt!50710 0))) (c!32900 lt!50816)))))

(assert (=> d!41689 (= lt!51843 (BalanceConc!1657 (++!641 (c!32900 (charsOf!156 (apply!398 lt!50710 0))) (c!32900 lt!50816))))))

(assert (=> d!41689 (= (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816) lt!51843)))

(declare-fun b!166445 () Bool)

(declare-fun res!75226 () Bool)

(assert (=> b!166445 (=> (not res!75226) (not e!100401))))

(assert (=> b!166445 (= res!75226 (>= (height!90 (++!641 (c!32900 (charsOf!156 (apply!398 lt!50710 0))) (c!32900 lt!50816))) (max!0 (height!90 (c!32900 (charsOf!156 (apply!398 lt!50710 0)))) (height!90 (c!32900 lt!50816)))))))

(declare-fun b!166443 () Bool)

(declare-fun res!75224 () Bool)

(assert (=> b!166443 (=> (not res!75224) (not e!100401))))

(assert (=> b!166443 (= res!75224 (isBalanced!232 (++!641 (c!32900 (charsOf!156 (apply!398 lt!50710 0))) (c!32900 lt!50816))))))

(assert (= (and d!41689 res!75225) b!166443))

(assert (= (and b!166443 res!75224) b!166444))

(assert (= (and b!166444 res!75227) b!166445))

(assert (= (and b!166445 res!75226) b!166446))

(declare-fun m!160871 () Bool)

(assert (=> b!166443 m!160871))

(assert (=> b!166443 m!160871))

(declare-fun m!160877 () Bool)

(assert (=> b!166443 m!160877))

(declare-fun m!160879 () Bool)

(assert (=> d!41689 m!160879))

(assert (=> d!41689 m!160871))

(assert (=> b!166444 m!160871))

(declare-fun m!160881 () Bool)

(assert (=> b!166444 m!160881))

(assert (=> b!166444 m!160871))

(declare-fun m!160883 () Bool)

(assert (=> b!166444 m!160883))

(declare-fun m!160887 () Bool)

(assert (=> b!166444 m!160887))

(declare-fun m!160889 () Bool)

(assert (=> b!166444 m!160889))

(assert (=> b!166444 m!160887))

(assert (=> b!166444 m!160883))

(declare-fun m!160891 () Bool)

(assert (=> b!166446 m!160891))

(assert (=> b!166446 m!157553))

(declare-fun m!160893 () Bool)

(assert (=> b!166446 m!160893))

(assert (=> b!166446 m!157525))

(assert (=> b!166446 m!160893))

(assert (=> b!166446 m!157525))

(declare-fun m!160895 () Bool)

(assert (=> b!166446 m!160895))

(assert (=> b!166445 m!160871))

(assert (=> b!166445 m!160881))

(assert (=> b!166445 m!160871))

(assert (=> b!166445 m!160883))

(assert (=> b!166445 m!160887))

(assert (=> b!166445 m!160889))

(assert (=> b!166445 m!160887))

(assert (=> b!166445 m!160883))

(assert (=> b!164997 d!41689))

(declare-fun d!41702 () Bool)

(declare-fun lt!51845 () BalanceConc!1656)

(assert (=> d!41702 (= (list!1019 lt!51845) (originalCharacters!544 (apply!398 lt!50710 0)))))

(assert (=> d!41702 (= lt!51845 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0)))) (value!18594 (apply!398 lt!50710 0))))))

(assert (=> d!41702 (= (charsOf!156 (apply!398 lt!50710 0)) lt!51845)))

(declare-fun b_lambda!3647 () Bool)

(assert (=> (not b_lambda!3647) (not d!41702)))

(declare-fun t!26671 () Bool)

(declare-fun tb!6453 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0))))) t!26671) tb!6453))

(declare-fun b!166458 () Bool)

(declare-fun e!100408 () Bool)

(declare-fun tp!82934 () Bool)

(assert (=> b!166458 (= e!100408 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0)))) (value!18594 (apply!398 lt!50710 0))))) tp!82934))))

(declare-fun result!9092 () Bool)

(assert (=> tb!6453 (= result!9092 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0)))) (value!18594 (apply!398 lt!50710 0)))) e!100408))))

(assert (= tb!6453 b!166458))

(declare-fun m!160909 () Bool)

(assert (=> b!166458 m!160909))

(declare-fun m!160911 () Bool)

(assert (=> tb!6453 m!160911))

(assert (=> d!41702 t!26671))

(declare-fun b_and!10723 () Bool)

(assert (= b_and!10711 (and (=> t!26671 result!9092) b_and!10723)))

(declare-fun t!26673 () Bool)

(declare-fun tb!6455 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0))))) t!26673) tb!6455))

(declare-fun result!9094 () Bool)

(assert (= result!9094 result!9092))

(assert (=> d!41702 t!26673))

(declare-fun b_and!10725 () Bool)

(assert (= b_and!10709 (and (=> t!26673 result!9094) b_and!10725)))

(declare-fun t!26675 () Bool)

(declare-fun tb!6457 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0))))) t!26675) tb!6457))

(declare-fun result!9096 () Bool)

(assert (= result!9096 result!9092))

(assert (=> d!41702 t!26675))

(declare-fun b_and!10727 () Bool)

(assert (= b_and!10707 (and (=> t!26675 result!9096) b_and!10727)))

(declare-fun t!26677 () Bool)

(declare-fun tb!6459 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0))))) t!26677) tb!6459))

(declare-fun result!9098 () Bool)

(assert (= result!9098 result!9092))

(assert (=> d!41702 t!26677))

(declare-fun b_and!10729 () Bool)

(assert (= b_and!10703 (and (=> t!26677 result!9098) b_and!10729)))

(declare-fun t!26679 () Bool)

(declare-fun tb!6461 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0))))) t!26679) tb!6461))

(declare-fun result!9100 () Bool)

(assert (= result!9100 result!9092))

(assert (=> d!41702 t!26679))

(declare-fun b_and!10731 () Bool)

(assert (= b_and!10705 (and (=> t!26679 result!9100) b_and!10731)))

(declare-fun m!160913 () Bool)

(assert (=> d!41702 m!160913))

(declare-fun m!160915 () Bool)

(assert (=> d!41702 m!160915))

(assert (=> b!164997 d!41702))

(assert (=> b!164997 d!41348))

(declare-fun d!41710 () Bool)

(assert (=> d!41710 (= (head!596 (drop!135 lt!50827 0)) (h!8221 (drop!135 lt!50827 0)))))

(assert (=> b!164997 d!41710))

(declare-fun d!41712 () Bool)

(assert (=> d!41712 (= (tail!336 (drop!135 lt!50825 0)) (t!26456 (drop!135 lt!50825 0)))))

(assert (=> b!164997 d!41712))

(declare-fun lt!51849 () Option!282)

(declare-fun e!100411 () Bool)

(declare-fun b!166459 () Bool)

(assert (=> b!166459 (= e!100411 (= (list!1019 (_2!1564 (get!771 lt!51849))) (_2!1565 (get!769 (maxPrefixZipper!34 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))))))

(declare-fun b!166460 () Bool)

(declare-fun e!100414 () Option!282)

(declare-fun lt!51850 () Option!282)

(declare-fun lt!51852 () Option!282)

(assert (=> b!166460 (= e!100414 (ite (and ((_ is None!281) lt!51850) ((_ is None!281) lt!51852)) None!281 (ite ((_ is None!281) lt!51852) lt!51850 (ite ((_ is None!281) lt!51850) lt!51852 (ite (>= (size!2359 (_1!1564 (v!13704 lt!51850))) (size!2359 (_1!1564 (v!13704 lt!51852)))) lt!51850 lt!51852)))))))

(declare-fun call!7168 () Option!282)

(assert (=> b!166460 (= lt!51850 call!7168)))

(assert (=> b!166460 (= lt!51852 (maxPrefixZipperSequence!82 thiss!17480 (t!26455 rules!1920) (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))

(declare-fun b!166461 () Bool)

(assert (=> b!166461 (= e!100414 call!7168)))

(declare-fun b!166462 () Bool)

(declare-fun e!100409 () Bool)

(assert (=> b!166462 (= e!100409 (= (list!1019 (_2!1564 (get!771 lt!51849))) (_2!1565 (get!769 (maxPrefix!123 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))))))

(declare-fun d!41716 () Bool)

(declare-fun e!100412 () Bool)

(assert (=> d!41716 e!100412))

(declare-fun res!75232 () Bool)

(assert (=> d!41716 (=> (not res!75232) (not e!100412))))

(assert (=> d!41716 (= res!75232 (= (isDefined!137 lt!51849) (isDefined!135 (maxPrefixZipper!34 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816))))))))

(assert (=> d!41716 (= lt!51849 e!100414)))

(declare-fun c!33309 () Bool)

(assert (=> d!41716 (= c!33309 (and ((_ is Cons!2823) rules!1920) ((_ is Nil!2823) (t!26455 rules!1920))))))

(declare-fun lt!51851 () Unit!2378)

(declare-fun lt!51848 () Unit!2378)

(assert (=> d!41716 (= lt!51851 lt!51848)))

(declare-fun lt!51853 () List!2832)

(declare-fun lt!51847 () List!2832)

(assert (=> d!41716 (isPrefix!223 lt!51853 lt!51847)))

(assert (=> d!41716 (= lt!51848 (lemmaIsPrefixRefl!130 lt!51853 lt!51847))))

(assert (=> d!41716 (= lt!51847 (list!1019 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))

(assert (=> d!41716 (= lt!51853 (list!1019 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))

(assert (=> d!41716 (rulesValidInductive!108 thiss!17480 rules!1920)))

(assert (=> d!41716 (= (maxPrefixZipperSequence!82 thiss!17480 rules!1920 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)) lt!51849)))

(declare-fun bm!7163 () Bool)

(assert (=> bm!7163 (= call!7168 (maxPrefixOneRuleZipperSequence!35 thiss!17480 (h!8220 rules!1920) (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))

(declare-fun b!166463 () Bool)

(declare-fun res!75229 () Bool)

(assert (=> b!166463 (=> (not res!75229) (not e!100412))))

(declare-fun e!100413 () Bool)

(assert (=> b!166463 (= res!75229 e!100413)))

(declare-fun res!75231 () Bool)

(assert (=> b!166463 (=> res!75231 e!100413)))

(assert (=> b!166463 (= res!75231 (not (isDefined!137 lt!51849)))))

(declare-fun b!166464 () Bool)

(assert (=> b!166464 (= e!100413 e!100411)))

(declare-fun res!75233 () Bool)

(assert (=> b!166464 (=> (not res!75233) (not e!100411))))

(assert (=> b!166464 (= res!75233 (= (_1!1564 (get!771 lt!51849)) (_1!1565 (get!769 (maxPrefixZipper!34 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))))))

(declare-fun b!166465 () Bool)

(declare-fun e!100410 () Bool)

(assert (=> b!166465 (= e!100412 e!100410)))

(declare-fun res!75234 () Bool)

(assert (=> b!166465 (=> res!75234 e!100410)))

(assert (=> b!166465 (= res!75234 (not (isDefined!137 lt!51849)))))

(declare-fun b!166466 () Bool)

(assert (=> b!166466 (= e!100410 e!100409)))

(declare-fun res!75230 () Bool)

(assert (=> b!166466 (=> (not res!75230) (not e!100409))))

(assert (=> b!166466 (= res!75230 (= (_1!1564 (get!771 lt!51849)) (_1!1565 (get!769 (maxPrefix!123 thiss!17480 rules!1920 (list!1019 (++!638 (charsOf!156 (apply!398 lt!50710 0)) lt!50816)))))))))

(assert (= (and d!41716 c!33309) b!166461))

(assert (= (and d!41716 (not c!33309)) b!166460))

(assert (= (or b!166461 b!166460) bm!7163))

(assert (= (and d!41716 res!75232) b!166463))

(assert (= (and b!166463 (not res!75231)) b!166464))

(assert (= (and b!166464 res!75233) b!166459))

(assert (= (and b!166463 res!75229) b!166465))

(assert (= (and b!166465 (not res!75234)) b!166466))

(assert (= (and b!166466 res!75230) b!166462))

(declare-fun m!160921 () Bool)

(assert (=> b!166462 m!160921))

(declare-fun m!160923 () Bool)

(assert (=> b!166462 m!160923))

(declare-fun m!160925 () Bool)

(assert (=> b!166462 m!160925))

(declare-fun m!160927 () Bool)

(assert (=> b!166462 m!160927))

(assert (=> b!166462 m!157549))

(assert (=> b!166462 m!160925))

(assert (=> b!166462 m!160927))

(declare-fun m!160929 () Bool)

(assert (=> b!166462 m!160929))

(assert (=> b!166460 m!157549))

(declare-fun m!160931 () Bool)

(assert (=> b!166460 m!160931))

(assert (=> b!166459 m!160921))

(assert (=> b!166459 m!157549))

(assert (=> b!166459 m!160925))

(declare-fun m!160933 () Bool)

(assert (=> b!166459 m!160933))

(declare-fun m!160935 () Bool)

(assert (=> b!166459 m!160935))

(assert (=> b!166459 m!160923))

(assert (=> b!166459 m!160925))

(assert (=> b!166459 m!160933))

(assert (=> b!166464 m!160923))

(assert (=> b!166464 m!157549))

(assert (=> b!166464 m!160925))

(assert (=> b!166464 m!160925))

(assert (=> b!166464 m!160933))

(assert (=> b!166464 m!160933))

(assert (=> b!166464 m!160935))

(declare-fun m!160937 () Bool)

(assert (=> b!166463 m!160937))

(assert (=> b!166465 m!160937))

(assert (=> d!41716 m!160933))

(declare-fun m!160939 () Bool)

(assert (=> d!41716 m!160939))

(declare-fun m!160941 () Bool)

(assert (=> d!41716 m!160941))

(assert (=> d!41716 m!160925))

(assert (=> d!41716 m!160933))

(assert (=> d!41716 m!157265))

(assert (=> d!41716 m!157549))

(assert (=> d!41716 m!160925))

(declare-fun m!160943 () Bool)

(assert (=> d!41716 m!160943))

(assert (=> d!41716 m!160937))

(assert (=> bm!7163 m!157549))

(declare-fun m!160947 () Bool)

(assert (=> bm!7163 m!160947))

(assert (=> b!166466 m!160923))

(assert (=> b!166466 m!157549))

(assert (=> b!166466 m!160925))

(assert (=> b!166466 m!160925))

(assert (=> b!166466 m!160927))

(assert (=> b!166466 m!160927))

(assert (=> b!166466 m!160929))

(assert (=> b!164997 d!41716))

(declare-fun d!41724 () Bool)

(assert (=> d!41724 (= (head!596 (drop!135 lt!50827 0)) (apply!397 lt!50827 0))))

(declare-fun lt!51854 () Unit!2378)

(assert (=> d!41724 (= lt!51854 (choose!1812 lt!50827 0))))

(declare-fun e!100419 () Bool)

(assert (=> d!41724 e!100419))

(declare-fun res!75242 () Bool)

(assert (=> d!41724 (=> (not res!75242) (not e!100419))))

(assert (=> d!41724 (= res!75242 (>= 0 0))))

(assert (=> d!41724 (= (lemmaDropApply!122 lt!50827 0) lt!51854)))

(declare-fun b!166474 () Bool)

(assert (=> b!166474 (= e!100419 (< 0 (size!2368 lt!50827)))))

(assert (= (and d!41724 res!75242) b!166474))

(assert (=> d!41724 m!157541))

(assert (=> d!41724 m!157541))

(assert (=> d!41724 m!157543))

(assert (=> d!41724 m!157545))

(declare-fun m!160955 () Bool)

(assert (=> d!41724 m!160955))

(assert (=> b!166474 m!160623))

(assert (=> b!164997 d!41724))

(declare-fun d!41728 () Bool)

(declare-fun e!100426 () Bool)

(assert (=> d!41728 e!100426))

(declare-fun res!75257 () Bool)

(assert (=> d!41728 (=> (not res!75257) (not e!100426))))

(declare-fun lt!51857 () BalanceConc!1658)

(assert (=> d!41728 (= res!75257 (= (list!1023 lt!51857) tokens!465))))

(declare-fun fromList!107 (List!2834) Conc!825)

(assert (=> d!41728 (= lt!51857 (BalanceConc!1659 (fromList!107 tokens!465)))))

(assert (=> d!41728 (= (fromListB!153 tokens!465) lt!51857)))

(declare-fun b!166489 () Bool)

(assert (=> b!166489 (= e!100426 (isBalanced!230 (fromList!107 tokens!465)))))

(assert (= (and d!41728 res!75257) b!166489))

(declare-fun m!160957 () Bool)

(assert (=> d!41728 m!160957))

(declare-fun m!160959 () Bool)

(assert (=> d!41728 m!160959))

(assert (=> b!166489 m!160959))

(assert (=> b!166489 m!160959))

(declare-fun m!160961 () Bool)

(assert (=> b!166489 m!160961))

(assert (=> d!41072 d!41728))

(declare-fun d!41730 () Bool)

(declare-fun lt!51860 () Int)

(assert (=> d!41730 (= lt!51860 (size!2365 (list!1019 (_2!1561 lt!50937))))))

(declare-fun size!2370 (Conc!824) Int)

(assert (=> d!41730 (= lt!51860 (size!2370 (c!32900 (_2!1561 lt!50937))))))

(assert (=> d!41730 (= (size!2364 (_2!1561 lt!50937)) lt!51860)))

(declare-fun bs!16109 () Bool)

(assert (= bs!16109 d!41730))

(assert (=> bs!16109 m!157797))

(assert (=> bs!16109 m!157797))

(declare-fun m!160963 () Bool)

(assert (=> bs!16109 m!160963))

(declare-fun m!160965 () Bool)

(assert (=> bs!16109 m!160965))

(assert (=> b!165141 d!41730))

(declare-fun d!41732 () Bool)

(declare-fun lt!51861 () Int)

(assert (=> d!41732 (= lt!51861 (size!2365 (list!1019 (seqFromList!380 lt!50724))))))

(assert (=> d!41732 (= lt!51861 (size!2370 (c!32900 (seqFromList!380 lt!50724))))))

(assert (=> d!41732 (= (size!2364 (seqFromList!380 lt!50724)) lt!51861)))

(declare-fun bs!16110 () Bool)

(assert (= bs!16110 d!41732))

(assert (=> bs!16110 m!157231))

(assert (=> bs!16110 m!157799))

(assert (=> bs!16110 m!157799))

(assert (=> bs!16110 m!158579))

(declare-fun m!160967 () Bool)

(assert (=> bs!16110 m!160967))

(assert (=> b!165141 d!41732))

(declare-fun d!41734 () Bool)

(assert (=> d!41734 (= (inv!15 (value!18594 separatorToken!170)) (= (charsToBigInt!0 (text!4110 (value!18594 separatorToken!170)) 0) (value!18589 (value!18594 separatorToken!170))))))

(declare-fun bs!16111 () Bool)

(assert (= bs!16111 d!41734))

(declare-fun m!160969 () Bool)

(assert (=> bs!16111 m!160969))

(assert (=> b!165280 d!41734))

(declare-fun d!41736 () Bool)

(declare-fun e!100429 () Bool)

(assert (=> d!41736 e!100429))

(declare-fun res!75264 () Bool)

(assert (=> d!41736 (=> (not res!75264) (not e!100429))))

(declare-fun lt!51862 () BalanceConc!1656)

(assert (=> d!41736 (= res!75264 (= (list!1019 lt!51862) (originalCharacters!544 (h!8221 tokens!465))))))

(assert (=> d!41736 (= lt!51862 (BalanceConc!1657 (fromList!105 (originalCharacters!544 (h!8221 tokens!465)))))))

(assert (=> d!41736 (= (fromListB!152 (originalCharacters!544 (h!8221 tokens!465))) lt!51862)))

(declare-fun b!166496 () Bool)

(assert (=> b!166496 (= e!100429 (isBalanced!232 (fromList!105 (originalCharacters!544 (h!8221 tokens!465)))))))

(assert (= (and d!41736 res!75264) b!166496))

(declare-fun m!160975 () Bool)

(assert (=> d!41736 m!160975))

(declare-fun m!160979 () Bool)

(assert (=> d!41736 m!160979))

(assert (=> b!166496 m!160979))

(assert (=> b!166496 m!160979))

(declare-fun m!160983 () Bool)

(assert (=> b!166496 m!160983))

(assert (=> d!41044 d!41736))

(declare-fun bs!16112 () Bool)

(declare-fun d!41738 () Bool)

(assert (= bs!16112 (and d!41738 d!41158)))

(declare-fun lambda!4633 () Int)

(assert (=> bs!16112 (= (= (toValue!1160 (transformation!501 (h!8220 rules!1920))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (= lambda!4633 lambda!4598))))

(assert (=> d!41738 true))

(assert (=> d!41738 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1026 order!1463 lambda!4633))))

(assert (=> d!41738 (= (equivClasses!156 (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (Forall2!109 lambda!4633))))

(declare-fun bs!16113 () Bool)

(assert (= bs!16113 d!41738))

(declare-fun m!160993 () Bool)

(assert (=> bs!16113 m!160993))

(assert (=> b!165305 d!41738))

(declare-fun b!166500 () Bool)

(declare-fun res!75266 () Bool)

(declare-fun e!100431 () Bool)

(assert (=> b!166500 (=> (not res!75266) (not e!100431))))

(declare-fun lt!51864 () List!2832)

(assert (=> b!166500 (= res!75266 (= (size!2365 lt!51864) (+ (size!2365 (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) (size!2365 (printList!71 thiss!17480 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))))))

(declare-fun d!41744 () Bool)

(assert (=> d!41744 e!100431))

(declare-fun res!75267 () Bool)

(assert (=> d!41744 (=> (not res!75267) (not e!100431))))

(assert (=> d!41744 (= res!75267 (= (content!391 lt!51864) ((_ map or) (content!391 (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) (content!391 (printList!71 thiss!17480 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))))))

(declare-fun e!100432 () List!2832)

(assert (=> d!41744 (= lt!51864 e!100432)))

(declare-fun c!33311 () Bool)

(assert (=> d!41744 (= c!33311 ((_ is Nil!2822) (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))))))

(assert (=> d!41744 (= (++!636 (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))) (printList!71 thiss!17480 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824)))) lt!51864)))

(declare-fun b!166499 () Bool)

(assert (=> b!166499 (= e!100432 (Cons!2822 (h!8219 (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) (++!636 (t!26454 (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) (printList!71 thiss!17480 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824))))))))

(declare-fun b!166498 () Bool)

(assert (=> b!166498 (= e!100432 (printList!71 thiss!17480 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824))))))

(declare-fun b!166501 () Bool)

(assert (=> b!166501 (= e!100431 (or (not (= (printList!71 thiss!17480 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824))) Nil!2822)) (= lt!51864 (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))))))

(assert (= (and d!41744 c!33311) b!166498))

(assert (= (and d!41744 (not c!33311)) b!166499))

(assert (= (and d!41744 res!75267) b!166500))

(assert (= (and b!166500 res!75266) b!166501))

(declare-fun m!160995 () Bool)

(assert (=> b!166500 m!160995))

(assert (=> b!166500 m!157769))

(declare-fun m!160997 () Bool)

(assert (=> b!166500 m!160997))

(assert (=> b!166500 m!157771))

(declare-fun m!160999 () Bool)

(assert (=> b!166500 m!160999))

(declare-fun m!161001 () Bool)

(assert (=> d!41744 m!161001))

(assert (=> d!41744 m!157769))

(declare-fun m!161003 () Bool)

(assert (=> d!41744 m!161003))

(assert (=> d!41744 m!157771))

(declare-fun m!161007 () Bool)

(assert (=> d!41744 m!161007))

(assert (=> b!166499 m!157771))

(declare-fun m!161009 () Bool)

(assert (=> b!166499 m!161009))

(assert (=> b!165122 d!41744))

(declare-fun d!41748 () Bool)

(assert (=> d!41748 (= (list!1019 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))) (list!1022 (c!32900 (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))))))

(declare-fun bs!16117 () Bool)

(assert (= bs!16117 d!41748))

(declare-fun m!161011 () Bool)

(assert (=> bs!16117 m!161011))

(assert (=> b!165122 d!41748))

(declare-fun d!41750 () Bool)

(declare-fun lt!51866 () BalanceConc!1656)

(assert (=> d!41750 (= (list!1019 lt!51866) (originalCharacters!544 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))))

(assert (=> d!41750 (= lt!51866 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) (value!18594 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))))

(assert (=> d!41750 (= (charsOf!156 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))) lt!51866)))

(declare-fun b_lambda!3649 () Bool)

(assert (=> (not b_lambda!3649) (not d!41750)))

(declare-fun t!26682 () Bool)

(declare-fun tb!6463 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))) t!26682) tb!6463))

(declare-fun b!166506 () Bool)

(declare-fun e!100435 () Bool)

(declare-fun tp!82935 () Bool)

(assert (=> b!166506 (= e!100435 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) (value!18594 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))) tp!82935))))

(declare-fun result!9102 () Bool)

(assert (=> tb!6463 (= result!9102 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) (value!18594 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) e!100435))))

(assert (= tb!6463 b!166506))

(declare-fun m!161017 () Bool)

(assert (=> b!166506 m!161017))

(declare-fun m!161019 () Bool)

(assert (=> tb!6463 m!161019))

(assert (=> d!41750 t!26682))

(declare-fun b_and!10733 () Bool)

(assert (= b_and!10723 (and (=> t!26682 result!9102) b_and!10733)))

(declare-fun tb!6465 () Bool)

(declare-fun t!26684 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))) t!26684) tb!6465))

(declare-fun result!9104 () Bool)

(assert (= result!9104 result!9102))

(assert (=> d!41750 t!26684))

(declare-fun b_and!10735 () Bool)

(assert (= b_and!10731 (and (=> t!26684 result!9104) b_and!10735)))

(declare-fun t!26686 () Bool)

(declare-fun tb!6467 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))) t!26686) tb!6467))

(declare-fun result!9106 () Bool)

(assert (= result!9106 result!9102))

(assert (=> d!41750 t!26686))

(declare-fun b_and!10737 () Bool)

(assert (= b_and!10725 (and (=> t!26686 result!9106) b_and!10737)))

(declare-fun t!26688 () Bool)

(declare-fun tb!6469 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))) t!26688) tb!6469))

(declare-fun result!9108 () Bool)

(assert (= result!9108 result!9102))

(assert (=> d!41750 t!26688))

(declare-fun b_and!10739 () Bool)

(assert (= b_and!10729 (and (=> t!26688 result!9108) b_and!10739)))

(declare-fun tb!6471 () Bool)

(declare-fun t!26690 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))) t!26690) tb!6471))

(declare-fun result!9110 () Bool)

(assert (= result!9110 result!9102))

(assert (=> d!41750 t!26690))

(declare-fun b_and!10741 () Bool)

(assert (= b_and!10727 (and (=> t!26690 result!9110) b_and!10741)))

(declare-fun m!161023 () Bool)

(assert (=> d!41750 m!161023))

(declare-fun m!161025 () Bool)

(assert (=> d!41750 m!161025))

(assert (=> b!165122 d!41750))

(declare-fun d!41760 () Bool)

(declare-fun c!33314 () Bool)

(assert (=> d!41760 (= c!33314 ((_ is Cons!2824) (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824))))))

(declare-fun e!100436 () List!2832)

(assert (=> d!41760 (= (printList!71 thiss!17480 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824))) e!100436)))

(declare-fun b!166507 () Bool)

(assert (=> b!166507 (= e!100436 (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824))))) (printList!71 thiss!17480 (t!26456 (t!26456 (Cons!2824 (h!8221 tokens!465) Nil!2824))))))))

(declare-fun b!166508 () Bool)

(assert (=> b!166508 (= e!100436 Nil!2822)))

(assert (= (and d!41760 c!33314) b!166507))

(assert (= (and d!41760 (not c!33314)) b!166508))

(declare-fun m!161027 () Bool)

(assert (=> b!166507 m!161027))

(assert (=> b!166507 m!161027))

(declare-fun m!161029 () Bool)

(assert (=> b!166507 m!161029))

(declare-fun m!161031 () Bool)

(assert (=> b!166507 m!161031))

(assert (=> b!166507 m!161029))

(assert (=> b!166507 m!161031))

(declare-fun m!161033 () Bool)

(assert (=> b!166507 m!161033))

(assert (=> b!165122 d!41760))

(declare-fun b!166510 () Bool)

(declare-fun res!75271 () Bool)

(declare-fun e!100437 () Bool)

(assert (=> b!166510 (=> (not res!75271) (not e!100437))))

(assert (=> b!166510 (= res!75271 (<= (height!90 (++!641 (c!32900 e!99491) (c!32900 (ite c!32939 lt!50816 call!7038)))) (+ (max!0 (height!90 (c!32900 e!99491)) (height!90 (c!32900 (ite c!32939 lt!50816 call!7038)))) 1)))))

(declare-fun b!166512 () Bool)

(declare-fun lt!51868 () BalanceConc!1656)

(assert (=> b!166512 (= e!100437 (= (list!1019 lt!51868) (++!636 (list!1019 e!99491) (list!1019 (ite c!32939 lt!50816 call!7038)))))))

(declare-fun d!41762 () Bool)

(assert (=> d!41762 e!100437))

(declare-fun res!75269 () Bool)

(assert (=> d!41762 (=> (not res!75269) (not e!100437))))

(assert (=> d!41762 (= res!75269 (appendAssocInst!29 (c!32900 e!99491) (c!32900 (ite c!32939 lt!50816 call!7038))))))

(assert (=> d!41762 (= lt!51868 (BalanceConc!1657 (++!641 (c!32900 e!99491) (c!32900 (ite c!32939 lt!50816 call!7038)))))))

(assert (=> d!41762 (= (++!638 e!99491 (ite c!32939 lt!50816 call!7038)) lt!51868)))

(declare-fun b!166511 () Bool)

(declare-fun res!75270 () Bool)

(assert (=> b!166511 (=> (not res!75270) (not e!100437))))

(assert (=> b!166511 (= res!75270 (>= (height!90 (++!641 (c!32900 e!99491) (c!32900 (ite c!32939 lt!50816 call!7038)))) (max!0 (height!90 (c!32900 e!99491)) (height!90 (c!32900 (ite c!32939 lt!50816 call!7038))))))))

(declare-fun b!166509 () Bool)

(declare-fun res!75268 () Bool)

(assert (=> b!166509 (=> (not res!75268) (not e!100437))))

(assert (=> b!166509 (= res!75268 (isBalanced!232 (++!641 (c!32900 e!99491) (c!32900 (ite c!32939 lt!50816 call!7038)))))))

(assert (= (and d!41762 res!75269) b!166509))

(assert (= (and b!166509 res!75268) b!166510))

(assert (= (and b!166510 res!75271) b!166511))

(assert (= (and b!166511 res!75270) b!166512))

(declare-fun m!161035 () Bool)

(assert (=> b!166509 m!161035))

(assert (=> b!166509 m!161035))

(declare-fun m!161037 () Bool)

(assert (=> b!166509 m!161037))

(declare-fun m!161039 () Bool)

(assert (=> d!41762 m!161039))

(assert (=> d!41762 m!161035))

(assert (=> b!166510 m!161035))

(declare-fun m!161041 () Bool)

(assert (=> b!166510 m!161041))

(assert (=> b!166510 m!161035))

(declare-fun m!161043 () Bool)

(assert (=> b!166510 m!161043))

(declare-fun m!161045 () Bool)

(assert (=> b!166510 m!161045))

(declare-fun m!161047 () Bool)

(assert (=> b!166510 m!161047))

(assert (=> b!166510 m!161045))

(assert (=> b!166510 m!161043))

(declare-fun m!161049 () Bool)

(assert (=> b!166512 m!161049))

(declare-fun m!161051 () Bool)

(assert (=> b!166512 m!161051))

(declare-fun m!161053 () Bool)

(assert (=> b!166512 m!161053))

(assert (=> b!166512 m!161051))

(assert (=> b!166512 m!161053))

(declare-fun m!161055 () Bool)

(assert (=> b!166512 m!161055))

(assert (=> b!166511 m!161035))

(assert (=> b!166511 m!161041))

(assert (=> b!166511 m!161035))

(assert (=> b!166511 m!161043))

(assert (=> b!166511 m!161045))

(assert (=> b!166511 m!161047))

(assert (=> b!166511 m!161045))

(assert (=> b!166511 m!161043))

(assert (=> bm!7032 d!41762))

(declare-fun b!166514 () Bool)

(declare-fun res!75275 () Bool)

(declare-fun e!100438 () Bool)

(assert (=> b!166514 (=> (not res!75275) (not e!100438))))

(assert (=> b!166514 (= res!75275 (<= (height!90 (++!641 (c!32900 call!7089) (c!32900 lt!50994))) (+ (max!0 (height!90 (c!32900 call!7089)) (height!90 (c!32900 lt!50994))) 1)))))

(declare-fun b!166516 () Bool)

(declare-fun lt!51872 () BalanceConc!1656)

(assert (=> b!166516 (= e!100438 (= (list!1019 lt!51872) (++!636 (list!1019 call!7089) (list!1019 lt!50994))))))

(declare-fun d!41766 () Bool)

(assert (=> d!41766 e!100438))

(declare-fun res!75273 () Bool)

(assert (=> d!41766 (=> (not res!75273) (not e!100438))))

(assert (=> d!41766 (= res!75273 (appendAssocInst!29 (c!32900 call!7089) (c!32900 lt!50994)))))

(assert (=> d!41766 (= lt!51872 (BalanceConc!1657 (++!641 (c!32900 call!7089) (c!32900 lt!50994))))))

(assert (=> d!41766 (= (++!638 call!7089 lt!50994) lt!51872)))

(declare-fun b!166515 () Bool)

(declare-fun res!75274 () Bool)

(assert (=> b!166515 (=> (not res!75274) (not e!100438))))

(assert (=> b!166515 (= res!75274 (>= (height!90 (++!641 (c!32900 call!7089) (c!32900 lt!50994))) (max!0 (height!90 (c!32900 call!7089)) (height!90 (c!32900 lt!50994)))))))

(declare-fun b!166513 () Bool)

(declare-fun res!75272 () Bool)

(assert (=> b!166513 (=> (not res!75272) (not e!100438))))

(assert (=> b!166513 (= res!75272 (isBalanced!232 (++!641 (c!32900 call!7089) (c!32900 lt!50994))))))

(assert (= (and d!41766 res!75273) b!166513))

(assert (= (and b!166513 res!75272) b!166514))

(assert (= (and b!166514 res!75275) b!166515))

(assert (= (and b!166515 res!75274) b!166516))

(declare-fun m!161061 () Bool)

(assert (=> b!166513 m!161061))

(assert (=> b!166513 m!161061))

(declare-fun m!161063 () Bool)

(assert (=> b!166513 m!161063))

(declare-fun m!161065 () Bool)

(assert (=> d!41766 m!161065))

(assert (=> d!41766 m!161061))

(assert (=> b!166514 m!161061))

(declare-fun m!161067 () Bool)

(assert (=> b!166514 m!161067))

(assert (=> b!166514 m!161061))

(declare-fun m!161069 () Bool)

(assert (=> b!166514 m!161069))

(assert (=> b!166514 m!158799))

(declare-fun m!161071 () Bool)

(assert (=> b!166514 m!161071))

(assert (=> b!166514 m!158799))

(assert (=> b!166514 m!161069))

(declare-fun m!161073 () Bool)

(assert (=> b!166516 m!161073))

(declare-fun m!161075 () Bool)

(assert (=> b!166516 m!161075))

(assert (=> b!166516 m!158129))

(assert (=> b!166516 m!161075))

(assert (=> b!166516 m!158129))

(declare-fun m!161077 () Bool)

(assert (=> b!166516 m!161077))

(assert (=> b!166515 m!161061))

(assert (=> b!166515 m!161067))

(assert (=> b!166515 m!161061))

(assert (=> b!166515 m!161069))

(assert (=> b!166515 m!158799))

(assert (=> b!166515 m!161071))

(assert (=> b!166515 m!158799))

(assert (=> b!166515 m!161069))

(assert (=> b!165355 d!41766))

(declare-fun d!41768 () Bool)

(assert (=> d!41768 (dynLambda!1025 lambda!4552 (h!8221 tokens!465))))

(assert (=> d!41768 true))

(declare-fun _$7!256 () Unit!2378)

(assert (=> d!41768 (= (choose!1809 tokens!465 lambda!4552 (h!8221 tokens!465)) _$7!256)))

(declare-fun b_lambda!3655 () Bool)

(assert (=> (not b_lambda!3655) (not d!41768)))

(declare-fun bs!16122 () Bool)

(assert (= bs!16122 d!41768))

(assert (=> bs!16122 m!157979))

(assert (=> d!41046 d!41768))

(declare-fun d!41776 () Bool)

(declare-fun res!75278 () Bool)

(declare-fun e!100441 () Bool)

(assert (=> d!41776 (=> res!75278 e!100441)))

(assert (=> d!41776 (= res!75278 ((_ is Nil!2824) tokens!465))))

(assert (=> d!41776 (= (forall!533 tokens!465 lambda!4552) e!100441)))

(declare-fun b!166519 () Bool)

(declare-fun e!100442 () Bool)

(assert (=> b!166519 (= e!100441 e!100442)))

(declare-fun res!75279 () Bool)

(assert (=> b!166519 (=> (not res!75279) (not e!100442))))

(assert (=> b!166519 (= res!75279 (dynLambda!1025 lambda!4552 (h!8221 tokens!465)))))

(declare-fun b!166520 () Bool)

(assert (=> b!166520 (= e!100442 (forall!533 (t!26456 tokens!465) lambda!4552))))

(assert (= (and d!41776 (not res!75278)) b!166519))

(assert (= (and b!166519 res!75279) b!166520))

(declare-fun b_lambda!3657 () Bool)

(assert (=> (not b_lambda!3657) (not b!166519)))

(assert (=> b!166519 m!157979))

(declare-fun m!161087 () Bool)

(assert (=> b!166520 m!161087))

(assert (=> d!41046 d!41776))

(declare-fun d!41778 () Bool)

(declare-fun c!33315 () Bool)

(assert (=> d!41778 (= c!33315 ((_ is Nil!2822) lt!51012))))

(declare-fun e!100443 () (InoxSet C!2372))

(assert (=> d!41778 (= (content!391 lt!51012) e!100443)))

(declare-fun b!166521 () Bool)

(assert (=> b!166521 (= e!100443 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166522 () Bool)

(assert (=> b!166522 (= e!100443 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!51012) true) (content!391 (t!26454 lt!51012))))))

(assert (= (and d!41778 c!33315) b!166521))

(assert (= (and d!41778 (not c!33315)) b!166522))

(declare-fun m!161089 () Bool)

(assert (=> b!166522 m!161089))

(declare-fun m!161091 () Bool)

(assert (=> b!166522 m!161091))

(assert (=> d!41098 d!41778))

(declare-fun d!41780 () Bool)

(declare-fun c!33316 () Bool)

(assert (=> d!41780 (= c!33316 ((_ is Nil!2822) lt!50724))))

(declare-fun e!100444 () (InoxSet C!2372))

(assert (=> d!41780 (= (content!391 lt!50724) e!100444)))

(declare-fun b!166523 () Bool)

(assert (=> b!166523 (= e!100444 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166524 () Bool)

(assert (=> b!166524 (= e!100444 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!50724) true) (content!391 (t!26454 lt!50724))))))

(assert (= (and d!41780 c!33316) b!166523))

(assert (= (and d!41780 (not c!33316)) b!166524))

(declare-fun m!161093 () Bool)

(assert (=> b!166524 m!161093))

(declare-fun m!161095 () Bool)

(assert (=> b!166524 m!161095))

(assert (=> d!41098 d!41780))

(declare-fun d!41782 () Bool)

(declare-fun c!33317 () Bool)

(assert (=> d!41782 (= c!33317 ((_ is Nil!2822) lt!50718))))

(declare-fun e!100445 () (InoxSet C!2372))

(assert (=> d!41782 (= (content!391 lt!50718) e!100445)))

(declare-fun b!166525 () Bool)

(assert (=> b!166525 (= e!100445 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166526 () Bool)

(assert (=> b!166526 (= e!100445 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!50718) true) (content!391 (t!26454 lt!50718))))))

(assert (= (and d!41782 c!33317) b!166525))

(assert (= (and d!41782 (not c!33317)) b!166526))

(declare-fun m!161097 () Bool)

(assert (=> b!166526 m!161097))

(declare-fun m!161099 () Bool)

(assert (=> b!166526 m!161099))

(assert (=> d!41098 d!41782))

(declare-fun bs!16123 () Bool)

(declare-fun d!41784 () Bool)

(assert (= bs!16123 (and d!41784 d!41042)))

(declare-fun lambda!4635 () Int)

(assert (=> bs!16123 (= lambda!4635 lambda!4584)))

(declare-fun bs!16124 () Bool)

(assert (= bs!16124 (and d!41784 d!41610)))

(assert (=> bs!16124 (= lambda!4635 lambda!4628)))

(assert (=> d!41784 true))

(declare-fun lt!51874 () Bool)

(assert (=> d!41784 (= lt!51874 (forall!536 (t!26455 rules!1920) lambda!4635))))

(declare-fun e!100447 () Bool)

(assert (=> d!41784 (= lt!51874 e!100447)))

(declare-fun res!75280 () Bool)

(assert (=> d!41784 (=> res!75280 e!100447)))

(assert (=> d!41784 (= res!75280 (not ((_ is Cons!2823) (t!26455 rules!1920))))))

(assert (=> d!41784 (= (rulesValidInductive!108 thiss!17480 (t!26455 rules!1920)) lt!51874)))

(declare-fun b!166527 () Bool)

(declare-fun e!100446 () Bool)

(assert (=> b!166527 (= e!100447 e!100446)))

(declare-fun res!75281 () Bool)

(assert (=> b!166527 (=> (not res!75281) (not e!100446))))

(assert (=> b!166527 (= res!75281 (ruleValid!50 thiss!17480 (h!8220 (t!26455 rules!1920))))))

(declare-fun b!166528 () Bool)

(assert (=> b!166528 (= e!100446 (rulesValidInductive!108 thiss!17480 (t!26455 (t!26455 rules!1920))))))

(assert (= (and d!41784 (not res!75280)) b!166527))

(assert (= (and b!166527 res!75281) b!166528))

(declare-fun m!161103 () Bool)

(assert (=> d!41784 m!161103))

(declare-fun m!161105 () Bool)

(assert (=> b!166527 m!161105))

(declare-fun m!161107 () Bool)

(assert (=> b!166528 m!161107))

(assert (=> b!165290 d!41784))

(declare-fun d!41788 () Bool)

(assert (=> d!41788 (= (list!1019 lt!50996) (list!1022 (c!32900 lt!50996)))))

(declare-fun bs!16127 () Bool)

(assert (= bs!16127 d!41788))

(declare-fun m!161109 () Bool)

(assert (=> bs!16127 m!161109))

(assert (=> d!41086 d!41788))

(declare-fun bs!16129 () Bool)

(declare-fun b!166536 () Bool)

(assert (= bs!16129 (and b!166536 b!165658)))

(declare-fun lambda!4636 () Int)

(assert (=> bs!16129 (= lambda!4636 lambda!4600)))

(declare-fun bs!16130 () Bool)

(assert (= bs!16130 (and b!166536 b!166410)))

(assert (=> bs!16130 (= lambda!4636 lambda!4631)))

(declare-fun bs!16131 () Bool)

(assert (= bs!16131 (and b!166536 b!165351)))

(assert (=> bs!16131 (= lambda!4636 lambda!4592)))

(declare-fun bs!16132 () Bool)

(assert (= bs!16132 (and b!166536 d!41086)))

(assert (=> bs!16132 (not (= lambda!4636 lambda!4591))))

(declare-fun bs!16133 () Bool)

(assert (= bs!16133 (and b!166536 d!40916)))

(assert (=> bs!16133 (not (= lambda!4636 lambda!4563))))

(declare-fun bs!16134 () Bool)

(assert (= bs!16134 (and b!166536 b!165344)))

(assert (=> bs!16134 (= lambda!4636 lambda!4590)))

(declare-fun bs!16135 () Bool)

(assert (= bs!16135 (and b!166536 d!41270)))

(assert (=> bs!16135 (= lambda!4636 lambda!4611)))

(declare-fun bs!16136 () Bool)

(assert (= bs!16136 (and b!166536 d!41668)))

(assert (=> bs!16136 (not (= lambda!4636 lambda!4630))))

(declare-fun bs!16137 () Bool)

(assert (= bs!16137 (and b!166536 d!41232)))

(assert (=> bs!16137 (not (= lambda!4636 lambda!4599))))

(declare-fun bs!16138 () Bool)

(assert (= bs!16138 (and b!166536 b!164997)))

(assert (=> bs!16138 (= lambda!4636 lambda!4564)))

(declare-fun bs!16139 () Bool)

(assert (= bs!16139 (and b!166536 b!165075)))

(assert (=> bs!16139 (= lambda!4636 lambda!4573)))

(declare-fun bs!16140 () Bool)

(assert (= bs!16140 (and b!166536 b!164839)))

(assert (=> bs!16140 (not (= lambda!4636 lambda!4551))))

(declare-fun bs!16141 () Bool)

(assert (= bs!16141 (and b!166536 b!164821)))

(assert (=> bs!16141 (= lambda!4636 lambda!4552)))

(declare-fun bs!16142 () Bool)

(assert (= bs!16142 (and b!166536 d!41070)))

(assert (=> bs!16142 (= lambda!4636 lambda!4589)))

(declare-fun b!166539 () Bool)

(declare-fun e!100454 () Bool)

(assert (=> b!166539 (= e!100454 true)))

(declare-fun b!166538 () Bool)

(declare-fun e!100453 () Bool)

(assert (=> b!166538 (= e!100453 e!100454)))

(declare-fun b!166537 () Bool)

(declare-fun e!100452 () Bool)

(assert (=> b!166537 (= e!100452 e!100453)))

(assert (=> b!166536 e!100452))

(assert (= b!166538 b!166539))

(assert (= b!166537 b!166538))

(assert (= (and b!166536 ((_ is Cons!2823) rules!1920)) b!166537))

(assert (=> b!166539 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4636))))

(assert (=> b!166539 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4636))))

(assert (=> b!166536 true))

(declare-fun b!166529 () Bool)

(declare-fun c!33321 () Bool)

(declare-fun lt!51880 () Option!283)

(assert (=> b!166529 (= c!33321 (and ((_ is Some!282) lt!51880) (not (= (_1!1565 (v!13705 lt!51880)) (h!8221 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0))))))))

(declare-fun e!100448 () List!2832)

(declare-fun e!100451 () List!2832)

(assert (=> b!166529 (= e!100448 e!100451)))

(declare-fun b!166530 () Bool)

(declare-fun e!100450 () BalanceConc!1656)

(declare-fun call!7169 () BalanceConc!1656)

(assert (=> b!166530 (= e!100450 call!7169)))

(declare-fun b!166531 () Bool)

(assert (=> b!166531 (= e!100450 (charsOf!156 separatorToken!170))))

(declare-fun call!7171 () List!2832)

(declare-fun c!33320 () Bool)

(declare-fun call!7173 () List!2832)

(declare-fun lt!51877 () List!2832)

(declare-fun bm!7164 () Bool)

(declare-fun call!7170 () List!2832)

(assert (=> bm!7164 (= call!7173 (++!636 call!7171 (ite c!33320 lt!51877 call!7170)))))

(declare-fun b!166532 () Bool)

(declare-fun e!100449 () List!2832)

(assert (=> b!166532 (= e!100449 Nil!2822)))

(declare-fun b!166533 () Bool)

(assert (=> b!166533 (= e!100451 Nil!2822)))

(assert (=> b!166533 (= (print!118 thiss!17480 (singletonSeq!53 (h!8221 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0)))) (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0))) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!51876 () Unit!2378)

(declare-fun Unit!2420 () Unit!2378)

(assert (=> b!166533 (= lt!51876 Unit!2420)))

(declare-fun lt!51878 () Unit!2378)

(assert (=> b!166533 (= lt!51878 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 call!7170 lt!51877))))

(assert (=> b!166533 false))

(declare-fun lt!51875 () Unit!2378)

(declare-fun Unit!2421 () Unit!2378)

(assert (=> b!166533 (= lt!51875 Unit!2421)))

(declare-fun b!166534 () Bool)

(assert (=> b!166534 (= e!100448 call!7173)))

(declare-fun b!166535 () Bool)

(assert (=> b!166535 (= e!100451 (++!636 call!7173 lt!51877))))

(declare-fun bm!7165 () Bool)

(declare-fun call!7172 () BalanceConc!1656)

(assert (=> bm!7165 (= call!7172 (charsOf!156 (h!8221 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0))))))

(declare-fun bm!7167 () Bool)

(assert (=> bm!7167 (= call!7170 (list!1019 e!100450))))

(declare-fun c!33318 () Bool)

(assert (=> bm!7167 (= c!33318 c!33321)))

(assert (=> b!166536 (= e!100449 e!100448)))

(declare-fun lt!51879 () Unit!2378)

(assert (=> b!166536 (= lt!51879 (forallContained!68 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0) lambda!4636 (h!8221 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0))))))

(assert (=> b!166536 (= lt!51877 (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (t!26456 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!166536 (= lt!51880 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 (charsOf!156 (h!8221 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0)))) lt!51877)))))

(assert (=> b!166536 (= c!33320 (and ((_ is Some!282) lt!51880) (= (_1!1565 (v!13705 lt!51880)) (h!8221 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0)))))))

(declare-fun bm!7168 () Bool)

(assert (=> bm!7168 (= call!7169 call!7172)))

(declare-fun d!41790 () Bool)

(declare-fun c!33319 () Bool)

(assert (=> d!41790 (= c!33319 ((_ is Cons!2824) (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0)))))

(assert (=> d!41790 (= (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0) separatorToken!170) e!100449)))

(declare-fun bm!7166 () Bool)

(assert (=> bm!7166 (= call!7171 (list!1019 (ite c!33320 call!7172 call!7169)))))

(assert (= (and d!41790 c!33319) b!166536))

(assert (= (and d!41790 (not c!33319)) b!166532))

(assert (= (and b!166536 c!33320) b!166534))

(assert (= (and b!166536 (not c!33320)) b!166529))

(assert (= (and b!166529 c!33321) b!166535))

(assert (= (and b!166529 (not c!33321)) b!166533))

(assert (= (or b!166535 b!166533) bm!7168))

(assert (= (or b!166535 b!166533) bm!7167))

(assert (= (and bm!7167 c!33318) b!166531))

(assert (= (and bm!7167 (not c!33318)) b!166530))

(assert (= (or b!166534 bm!7168) bm!7165))

(assert (= (or b!166534 b!166535) bm!7166))

(assert (= (or b!166534 b!166535) bm!7164))

(declare-fun m!161115 () Bool)

(assert (=> b!166533 m!161115))

(assert (=> b!166533 m!161115))

(declare-fun m!161117 () Bool)

(assert (=> b!166533 m!161117))

(assert (=> b!166533 m!161115))

(declare-fun m!161119 () Bool)

(assert (=> b!166533 m!161119))

(declare-fun m!161121 () Bool)

(assert (=> b!166533 m!161121))

(declare-fun m!161123 () Bool)

(assert (=> bm!7165 m!161123))

(declare-fun m!161125 () Bool)

(assert (=> b!166535 m!161125))

(declare-fun m!161127 () Bool)

(assert (=> bm!7164 m!161127))

(assert (=> b!166531 m!157281))

(declare-fun m!161129 () Bool)

(assert (=> bm!7166 m!161129))

(declare-fun m!161131 () Bool)

(assert (=> bm!7167 m!161131))

(assert (=> b!166536 m!158117))

(declare-fun m!161133 () Bool)

(assert (=> b!166536 m!161133))

(assert (=> b!166536 m!161123))

(assert (=> b!166536 m!161123))

(declare-fun m!161135 () Bool)

(assert (=> b!166536 m!161135))

(declare-fun m!161137 () Bool)

(assert (=> b!166536 m!161137))

(declare-fun m!161139 () Bool)

(assert (=> b!166536 m!161139))

(declare-fun m!161141 () Bool)

(assert (=> b!166536 m!161141))

(assert (=> b!166536 m!161135))

(assert (=> b!166536 m!161139))

(assert (=> d!41086 d!41790))

(declare-fun d!41796 () Bool)

(assert (=> d!41796 (forall!533 (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0) lambda!4591)))

(declare-fun lt!51893 () Unit!2378)

(declare-fun choose!1817 (List!2834 List!2834 Int) Unit!2378)

(assert (=> d!41796 (= lt!51893 (choose!1817 (list!1023 (seqFromList!379 (t!26456 tokens!465))) (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0) lambda!4591))))

(assert (=> d!41796 (forall!533 (list!1023 (seqFromList!379 (t!26456 tokens!465))) lambda!4591)))

(assert (=> d!41796 (= (lemmaContentSubsetPreservesForall!26 (list!1023 (seqFromList!379 (t!26456 tokens!465))) (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0) lambda!4591) lt!51893)))

(declare-fun bs!16143 () Bool)

(assert (= bs!16143 d!41796))

(assert (=> bs!16143 m!158117))

(declare-fun m!161143 () Bool)

(assert (=> bs!16143 m!161143))

(assert (=> bs!16143 m!158123))

(assert (=> bs!16143 m!158117))

(declare-fun m!161145 () Bool)

(assert (=> bs!16143 m!161145))

(assert (=> bs!16143 m!158123))

(declare-fun m!161147 () Bool)

(assert (=> bs!16143 m!161147))

(assert (=> d!41086 d!41796))

(declare-fun d!41798 () Bool)

(assert (=> d!41798 (= (dropList!82 (seqFromList!379 (t!26456 tokens!465)) 0) (drop!135 (list!1027 (c!32902 (seqFromList!379 (t!26456 tokens!465)))) 0))))

(declare-fun bs!16144 () Bool)

(assert (= bs!16144 d!41798))

(assert (=> bs!16144 m!158741))

(assert (=> bs!16144 m!158741))

(declare-fun m!161149 () Bool)

(assert (=> bs!16144 m!161149))

(assert (=> d!41086 d!41798))

(declare-fun d!41800 () Bool)

(declare-fun lt!51894 () Int)

(assert (=> d!41800 (= lt!51894 (size!2368 (list!1023 (seqFromList!379 (t!26456 tokens!465)))))))

(assert (=> d!41800 (= lt!51894 (size!2369 (c!32902 (seqFromList!379 (t!26456 tokens!465)))))))

(assert (=> d!41800 (= (size!2362 (seqFromList!379 (t!26456 tokens!465))) lt!51894)))

(declare-fun bs!16145 () Bool)

(assert (= bs!16145 d!41800))

(assert (=> bs!16145 m!157275))

(assert (=> bs!16145 m!158123))

(assert (=> bs!16145 m!158123))

(declare-fun m!161151 () Bool)

(assert (=> bs!16145 m!161151))

(declare-fun m!161153 () Bool)

(assert (=> bs!16145 m!161153))

(assert (=> d!41086 d!41800))

(assert (=> d!41086 d!41214))

(declare-fun d!41802 () Bool)

(assert (=> d!41802 (= (list!1023 lt!50925) (list!1027 (c!32902 lt!50925)))))

(declare-fun bs!16146 () Bool)

(assert (= bs!16146 d!41802))

(declare-fun m!161155 () Bool)

(assert (=> bs!16146 m!161155))

(assert (=> d!41004 d!41802))

(declare-fun d!41804 () Bool)

(declare-fun e!100460 () Bool)

(assert (=> d!41804 e!100460))

(declare-fun res!75284 () Bool)

(assert (=> d!41804 (=> (not res!75284) (not e!100460))))

(declare-fun lt!51902 () BalanceConc!1658)

(assert (=> d!41804 (= res!75284 (= (list!1023 lt!51902) (Cons!2824 (h!8221 tokens!465) Nil!2824)))))

(declare-fun choose!1818 (Token!746) BalanceConc!1658)

(assert (=> d!41804 (= lt!51902 (choose!1818 (h!8221 tokens!465)))))

(assert (=> d!41804 (= (singleton!31 (h!8221 tokens!465)) lt!51902)))

(declare-fun b!166548 () Bool)

(assert (=> b!166548 (= e!100460 (isBalanced!230 (c!32902 lt!51902)))))

(assert (= (and d!41804 res!75284) b!166548))

(declare-fun m!161183 () Bool)

(assert (=> d!41804 m!161183))

(declare-fun m!161185 () Bool)

(assert (=> d!41804 m!161185))

(declare-fun m!161187 () Bool)

(assert (=> b!166548 m!161187))

(assert (=> d!41004 d!41804))

(declare-fun b!166551 () Bool)

(declare-fun res!75285 () Bool)

(declare-fun e!100461 () Bool)

(assert (=> b!166551 (=> (not res!75285) (not e!100461))))

(declare-fun lt!51903 () List!2832)

(assert (=> b!166551 (= res!75285 (= (size!2365 lt!51903) (+ (size!2365 call!7070) (size!2365 lt!50866))))))

(declare-fun d!41810 () Bool)

(assert (=> d!41810 e!100461))

(declare-fun res!75286 () Bool)

(assert (=> d!41810 (=> (not res!75286) (not e!100461))))

(assert (=> d!41810 (= res!75286 (= (content!391 lt!51903) ((_ map or) (content!391 call!7070) (content!391 lt!50866))))))

(declare-fun e!100462 () List!2832)

(assert (=> d!41810 (= lt!51903 e!100462)))

(declare-fun c!33325 () Bool)

(assert (=> d!41810 (= c!33325 ((_ is Nil!2822) call!7070))))

(assert (=> d!41810 (= (++!636 call!7070 lt!50866) lt!51903)))

(declare-fun b!166550 () Bool)

(assert (=> b!166550 (= e!100462 (Cons!2822 (h!8219 call!7070) (++!636 (t!26454 call!7070) lt!50866)))))

(declare-fun b!166549 () Bool)

(assert (=> b!166549 (= e!100462 lt!50866)))

(declare-fun b!166552 () Bool)

(assert (=> b!166552 (= e!100461 (or (not (= lt!50866 Nil!2822)) (= lt!51903 call!7070)))))

(assert (= (and d!41810 c!33325) b!166549))

(assert (= (and d!41810 (not c!33325)) b!166550))

(assert (= (and d!41810 res!75286) b!166551))

(assert (= (and b!166551 res!75285) b!166552))

(declare-fun m!161189 () Bool)

(assert (=> b!166551 m!161189))

(declare-fun m!161191 () Bool)

(assert (=> b!166551 m!161191))

(assert (=> b!166551 m!160283))

(declare-fun m!161193 () Bool)

(assert (=> d!41810 m!161193))

(declare-fun m!161195 () Bool)

(assert (=> d!41810 m!161195))

(assert (=> d!41810 m!160289))

(declare-fun m!161197 () Bool)

(assert (=> b!166550 m!161197))

(assert (=> b!165074 d!41810))

(declare-fun b!166555 () Bool)

(declare-fun res!75287 () Bool)

(declare-fun e!100463 () Bool)

(assert (=> b!166555 (=> (not res!75287) (not e!100463))))

(declare-fun lt!51906 () List!2832)

(assert (=> b!166555 (= res!75287 (= (size!2365 lt!51906) (+ (size!2365 (t!26454 lt!50724)) (size!2365 lt!50718))))))

(declare-fun d!41812 () Bool)

(assert (=> d!41812 e!100463))

(declare-fun res!75288 () Bool)

(assert (=> d!41812 (=> (not res!75288) (not e!100463))))

(assert (=> d!41812 (= res!75288 (= (content!391 lt!51906) ((_ map or) (content!391 (t!26454 lt!50724)) (content!391 lt!50718))))))

(declare-fun e!100464 () List!2832)

(assert (=> d!41812 (= lt!51906 e!100464)))

(declare-fun c!33326 () Bool)

(assert (=> d!41812 (= c!33326 ((_ is Nil!2822) (t!26454 lt!50724)))))

(assert (=> d!41812 (= (++!636 (t!26454 lt!50724) lt!50718) lt!51906)))

(declare-fun b!166554 () Bool)

(assert (=> b!166554 (= e!100464 (Cons!2822 (h!8219 (t!26454 lt!50724)) (++!636 (t!26454 (t!26454 lt!50724)) lt!50718)))))

(declare-fun b!166553 () Bool)

(assert (=> b!166553 (= e!100464 lt!50718)))

(declare-fun b!166556 () Bool)

(assert (=> b!166556 (= e!100463 (or (not (= lt!50718 Nil!2822)) (= lt!51906 (t!26454 lt!50724))))))

(assert (= (and d!41812 c!33326) b!166553))

(assert (= (and d!41812 (not c!33326)) b!166554))

(assert (= (and d!41812 res!75288) b!166555))

(assert (= (and b!166555 res!75287) b!166556))

(declare-fun m!161199 () Bool)

(assert (=> b!166555 m!161199))

(assert (=> b!166555 m!158539))

(assert (=> b!166555 m!158185))

(declare-fun m!161201 () Bool)

(assert (=> d!41812 m!161201))

(assert (=> d!41812 m!161095))

(assert (=> d!41812 m!158189))

(declare-fun m!161203 () Bool)

(assert (=> b!166554 m!161203))

(assert (=> b!165371 d!41812))

(declare-fun bs!16150 () Bool)

(declare-fun d!41814 () Bool)

(assert (= bs!16150 (and d!41814 d!41356)))

(declare-fun lambda!4637 () Int)

(assert (=> bs!16150 (= (and (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (= (toValue!1160 (transformation!501 (rule!1008 separatorToken!170))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465)))))) (= lambda!4637 lambda!4614))))

(declare-fun bs!16151 () Bool)

(assert (= bs!16151 (and d!41814 d!41362)))

(assert (=> bs!16151 (= (and (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (= (toValue!1160 (transformation!501 (rule!1008 separatorToken!170))) (toValue!1160 (transformation!501 (h!8220 rules!1920))))) (= lambda!4637 lambda!4615))))

(assert (=> d!41814 true))

(assert (=> d!41814 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170)))) (dynLambda!1028 order!1467 lambda!4637))))

(assert (=> d!41814 true))

(assert (=> d!41814 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (rule!1008 separatorToken!170)))) (dynLambda!1028 order!1467 lambda!4637))))

(assert (=> d!41814 (= (semiInverseModEq!173 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toValue!1160 (transformation!501 (rule!1008 separatorToken!170)))) (Forall!133 lambda!4637))))

(declare-fun bs!16152 () Bool)

(assert (= bs!16152 d!41814))

(declare-fun m!161217 () Bool)

(assert (=> bs!16152 m!161217))

(assert (=> d!41104 d!41814))

(declare-fun b!166561 () Bool)

(declare-fun e!100467 () List!2832)

(assert (=> b!166561 (= e!100467 Nil!2822)))

(declare-fun b!166563 () Bool)

(declare-fun e!100468 () List!2832)

(assert (=> b!166563 (= e!100468 (list!1026 (xs!3419 (c!32900 (seqFromList!380 lt!50714)))))))

(declare-fun b!166564 () Bool)

(assert (=> b!166564 (= e!100468 (++!636 (list!1022 (left!2133 (c!32900 (seqFromList!380 lt!50714)))) (list!1022 (right!2463 (c!32900 (seqFromList!380 lt!50714))))))))

(declare-fun d!41822 () Bool)

(declare-fun c!33328 () Bool)

(assert (=> d!41822 (= c!33328 ((_ is Empty!824) (c!32900 (seqFromList!380 lt!50714))))))

(assert (=> d!41822 (= (list!1022 (c!32900 (seqFromList!380 lt!50714))) e!100467)))

(declare-fun b!166562 () Bool)

(assert (=> b!166562 (= e!100467 e!100468)))

(declare-fun c!33329 () Bool)

(assert (=> b!166562 (= c!33329 ((_ is Leaf!1414) (c!32900 (seqFromList!380 lt!50714))))))

(assert (= (and d!41822 c!33328) b!166561))

(assert (= (and d!41822 (not c!33328)) b!166562))

(assert (= (and b!166562 c!33329) b!166563))

(assert (= (and b!166562 (not c!33329)) b!166564))

(declare-fun m!161221 () Bool)

(assert (=> b!166563 m!161221))

(declare-fun m!161223 () Bool)

(assert (=> b!166564 m!161223))

(declare-fun m!161225 () Bool)

(assert (=> b!166564 m!161225))

(assert (=> b!166564 m!161223))

(assert (=> b!166564 m!161225))

(declare-fun m!161231 () Bool)

(assert (=> b!166564 m!161231))

(assert (=> d!41064 d!41822))

(declare-fun d!41826 () Bool)

(assert (=> d!41826 (= (list!1019 lt!51008) (list!1022 (c!32900 lt!51008)))))

(declare-fun bs!16154 () Bool)

(assert (= bs!16154 d!41826))

(declare-fun m!161239 () Bool)

(assert (=> bs!16154 m!161239))

(assert (=> d!41088 d!41826))

(declare-fun b!166569 () Bool)

(declare-fun e!100471 () List!2832)

(assert (=> b!166569 (= e!100471 Nil!2822)))

(declare-fun b!166571 () Bool)

(declare-fun e!100472 () List!2832)

(assert (=> b!166571 (= e!100472 (list!1026 (xs!3419 (c!32900 (charsOf!156 separatorToken!170)))))))

(declare-fun b!166572 () Bool)

(assert (=> b!166572 (= e!100472 (++!636 (list!1022 (left!2133 (c!32900 (charsOf!156 separatorToken!170)))) (list!1022 (right!2463 (c!32900 (charsOf!156 separatorToken!170))))))))

(declare-fun d!41828 () Bool)

(declare-fun c!33331 () Bool)

(assert (=> d!41828 (= c!33331 ((_ is Empty!824) (c!32900 (charsOf!156 separatorToken!170))))))

(assert (=> d!41828 (= (list!1022 (c!32900 (charsOf!156 separatorToken!170))) e!100471)))

(declare-fun b!166570 () Bool)

(assert (=> b!166570 (= e!100471 e!100472)))

(declare-fun c!33332 () Bool)

(assert (=> b!166570 (= c!33332 ((_ is Leaf!1414) (c!32900 (charsOf!156 separatorToken!170))))))

(assert (= (and d!41828 c!33331) b!166569))

(assert (= (and d!41828 (not c!33331)) b!166570))

(assert (= (and b!166570 c!33332) b!166571))

(assert (= (and b!166570 (not c!33332)) b!166572))

(declare-fun m!161241 () Bool)

(assert (=> b!166571 m!161241))

(declare-fun m!161243 () Bool)

(assert (=> b!166572 m!161243))

(declare-fun m!161245 () Bool)

(assert (=> b!166572 m!161245))

(assert (=> b!166572 m!161243))

(assert (=> b!166572 m!161245))

(declare-fun m!161247 () Bool)

(assert (=> b!166572 m!161247))

(assert (=> d!41076 d!41828))

(declare-fun b!166575 () Bool)

(declare-fun res!75293 () Bool)

(declare-fun e!100473 () Bool)

(assert (=> b!166575 (=> (not res!75293) (not e!100473))))

(declare-fun lt!51911 () List!2832)

(assert (=> b!166575 (= res!75293 (= (size!2365 lt!51911) (+ (size!2365 call!7068) (size!2365 (ite c!32963 lt!50866 call!7067)))))))

(declare-fun d!41830 () Bool)

(assert (=> d!41830 e!100473))

(declare-fun res!75294 () Bool)

(assert (=> d!41830 (=> (not res!75294) (not e!100473))))

(assert (=> d!41830 (= res!75294 (= (content!391 lt!51911) ((_ map or) (content!391 call!7068) (content!391 (ite c!32963 lt!50866 call!7067)))))))

(declare-fun e!100474 () List!2832)

(assert (=> d!41830 (= lt!51911 e!100474)))

(declare-fun c!33333 () Bool)

(assert (=> d!41830 (= c!33333 ((_ is Nil!2822) call!7068))))

(assert (=> d!41830 (= (++!636 call!7068 (ite c!32963 lt!50866 call!7067)) lt!51911)))

(declare-fun b!166574 () Bool)

(assert (=> b!166574 (= e!100474 (Cons!2822 (h!8219 call!7068) (++!636 (t!26454 call!7068) (ite c!32963 lt!50866 call!7067))))))

(declare-fun b!166573 () Bool)

(assert (=> b!166573 (= e!100474 (ite c!32963 lt!50866 call!7067))))

(declare-fun b!166576 () Bool)

(assert (=> b!166576 (= e!100473 (or (not (= (ite c!32963 lt!50866 call!7067) Nil!2822)) (= lt!51911 call!7068)))))

(assert (= (and d!41830 c!33333) b!166573))

(assert (= (and d!41830 (not c!33333)) b!166574))

(assert (= (and d!41830 res!75294) b!166575))

(assert (= (and b!166575 res!75293) b!166576))

(declare-fun m!161249 () Bool)

(assert (=> b!166575 m!161249))

(declare-fun m!161251 () Bool)

(assert (=> b!166575 m!161251))

(declare-fun m!161253 () Bool)

(assert (=> b!166575 m!161253))

(declare-fun m!161255 () Bool)

(assert (=> d!41830 m!161255))

(declare-fun m!161257 () Bool)

(assert (=> d!41830 m!161257))

(declare-fun m!161259 () Bool)

(assert (=> d!41830 m!161259))

(declare-fun m!161261 () Bool)

(assert (=> b!166574 m!161261))

(assert (=> bm!7061 d!41830))

(declare-fun b!166583 () Bool)

(declare-fun res!75295 () Bool)

(declare-fun e!100476 () Bool)

(assert (=> b!166583 (=> (not res!75295) (not e!100476))))

(declare-fun lt!51912 () List!2832)

(assert (=> b!166583 (= res!75295 (= (size!2365 lt!51912) (+ (size!2365 call!7083) (size!2365 (ite c!33006 lt!50988 call!7082)))))))

(declare-fun d!41832 () Bool)

(assert (=> d!41832 e!100476))

(declare-fun res!75296 () Bool)

(assert (=> d!41832 (=> (not res!75296) (not e!100476))))

(assert (=> d!41832 (= res!75296 (= (content!391 lt!51912) ((_ map or) (content!391 call!7083) (content!391 (ite c!33006 lt!50988 call!7082)))))))

(declare-fun e!100477 () List!2832)

(assert (=> d!41832 (= lt!51912 e!100477)))

(declare-fun c!33334 () Bool)

(assert (=> d!41832 (= c!33334 ((_ is Nil!2822) call!7083))))

(assert (=> d!41832 (= (++!636 call!7083 (ite c!33006 lt!50988 call!7082)) lt!51912)))

(declare-fun b!166582 () Bool)

(assert (=> b!166582 (= e!100477 (Cons!2822 (h!8219 call!7083) (++!636 (t!26454 call!7083) (ite c!33006 lt!50988 call!7082))))))

(declare-fun b!166581 () Bool)

(assert (=> b!166581 (= e!100477 (ite c!33006 lt!50988 call!7082))))

(declare-fun b!166584 () Bool)

(assert (=> b!166584 (= e!100476 (or (not (= (ite c!33006 lt!50988 call!7082) Nil!2822)) (= lt!51912 call!7083)))))

(assert (= (and d!41832 c!33334) b!166581))

(assert (= (and d!41832 (not c!33334)) b!166582))

(assert (= (and d!41832 res!75296) b!166583))

(assert (= (and b!166583 res!75295) b!166584))

(declare-fun m!161263 () Bool)

(assert (=> b!166583 m!161263))

(declare-fun m!161265 () Bool)

(assert (=> b!166583 m!161265))

(declare-fun m!161267 () Bool)

(assert (=> b!166583 m!161267))

(declare-fun m!161269 () Bool)

(assert (=> d!41832 m!161269))

(declare-fun m!161271 () Bool)

(assert (=> d!41832 m!161271))

(declare-fun m!161273 () Bool)

(assert (=> d!41832 m!161273))

(declare-fun m!161275 () Bool)

(assert (=> b!166582 m!161275))

(assert (=> bm!7076 d!41832))

(declare-fun d!41834 () Bool)

(assert (=> d!41834 (= (list!1019 e!99539) (list!1022 (c!32900 e!99539)))))

(declare-fun bs!16155 () Bool)

(assert (= bs!16155 d!41834))

(declare-fun m!161277 () Bool)

(assert (=> bs!16155 m!161277))

(assert (=> bm!7064 d!41834))

(declare-fun d!41836 () Bool)

(assert (=> d!41836 (= (list!1019 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))) (list!1022 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))))))

(declare-fun bs!16156 () Bool)

(assert (= bs!16156 d!41836))

(declare-fun m!161279 () Bool)

(assert (=> bs!16156 m!161279))

(assert (=> b!165296 d!41836))

(declare-fun d!41838 () Bool)

(assert (=> d!41838 (= (isEmpty!1161 (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))) ((_ is Nil!2824) (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))))))

(assert (=> d!41008 d!41838))

(declare-fun d!41840 () Bool)

(assert (=> d!41840 (= (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724)))) (list!1027 (c!32902 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))))))

(declare-fun bs!16157 () Bool)

(assert (= bs!16157 d!41840))

(declare-fun m!161281 () Bool)

(assert (=> bs!16157 m!161281))

(assert (=> d!41008 d!41840))

(declare-fun lt!51915 () Bool)

(declare-fun d!41842 () Bool)

(assert (=> d!41842 (= lt!51915 (isEmpty!1161 (list!1027 (c!32902 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724)))))))))

(assert (=> d!41842 (= lt!51915 (= (size!2369 (c!32902 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))) 0))))

(assert (=> d!41842 (= (isEmpty!1162 (c!32902 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 lt!50724))))) lt!51915)))

(declare-fun bs!16158 () Bool)

(assert (= bs!16158 d!41842))

(assert (=> bs!16158 m!161281))

(assert (=> bs!16158 m!161281))

(declare-fun m!161283 () Bool)

(assert (=> bs!16158 m!161283))

(declare-fun m!161285 () Bool)

(assert (=> bs!16158 m!161285))

(assert (=> d!41008 d!41842))

(declare-fun d!41844 () Bool)

(assert (=> d!41844 (= (isEmpty!1164 (originalCharacters!544 separatorToken!170)) ((_ is Nil!2822) (originalCharacters!544 separatorToken!170)))))

(assert (=> d!41048 d!41844))

(declare-fun d!41846 () Bool)

(declare-fun lt!51916 () BalanceConc!1656)

(assert (=> d!41846 (= (list!1019 lt!51916) (originalCharacters!544 call!7036))))

(assert (=> d!41846 (= lt!51916 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 call!7036))) (value!18594 call!7036)))))

(assert (=> d!41846 (= (charsOf!156 call!7036) lt!51916)))

(declare-fun b_lambda!3659 () Bool)

(assert (=> (not b_lambda!3659) (not d!41846)))

(declare-fun tb!6473 () Bool)

(declare-fun t!26695 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 call!7036)))) t!26695) tb!6473))

(declare-fun b!166639 () Bool)

(declare-fun e!100500 () Bool)

(declare-fun tp!82996 () Bool)

(assert (=> b!166639 (= e!100500 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 call!7036))) (value!18594 call!7036)))) tp!82996))))

(declare-fun result!9114 () Bool)

(assert (=> tb!6473 (= result!9114 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 call!7036))) (value!18594 call!7036))) e!100500))))

(assert (= tb!6473 b!166639))

(declare-fun m!161293 () Bool)

(assert (=> b!166639 m!161293))

(declare-fun m!161295 () Bool)

(assert (=> tb!6473 m!161295))

(assert (=> d!41846 t!26695))

(declare-fun b_and!10743 () Bool)

(assert (= b_and!10737 (and (=> t!26695 result!9114) b_and!10743)))

(declare-fun tb!6475 () Bool)

(declare-fun t!26697 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 call!7036)))) t!26697) tb!6475))

(declare-fun result!9116 () Bool)

(assert (= result!9116 result!9114))

(assert (=> d!41846 t!26697))

(declare-fun b_and!10745 () Bool)

(assert (= b_and!10733 (and (=> t!26697 result!9116) b_and!10745)))

(declare-fun tb!6477 () Bool)

(declare-fun t!26699 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 call!7036)))) t!26699) tb!6477))

(declare-fun result!9118 () Bool)

(assert (= result!9118 result!9114))

(assert (=> d!41846 t!26699))

(declare-fun b_and!10747 () Bool)

(assert (= b_and!10735 (and (=> t!26699 result!9118) b_and!10747)))

(declare-fun tb!6479 () Bool)

(declare-fun t!26701 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 call!7036)))) t!26701) tb!6479))

(declare-fun result!9120 () Bool)

(assert (= result!9120 result!9114))

(assert (=> d!41846 t!26701))

(declare-fun b_and!10749 () Bool)

(assert (= b_and!10741 (and (=> t!26701 result!9120) b_and!10749)))

(declare-fun tb!6481 () Bool)

(declare-fun t!26703 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 call!7036)))) t!26703) tb!6481))

(declare-fun result!9122 () Bool)

(assert (= result!9122 result!9114))

(assert (=> d!41846 t!26703))

(declare-fun b_and!10751 () Bool)

(assert (= b_and!10739 (and (=> t!26703 result!9122) b_and!10751)))

(declare-fun m!161297 () Bool)

(assert (=> d!41846 m!161297))

(declare-fun m!161299 () Bool)

(assert (=> d!41846 m!161299))

(assert (=> b!165000 d!41846))

(declare-fun lt!51917 () Bool)

(declare-fun d!41848 () Bool)

(assert (=> d!41848 (= lt!51917 (isEmpty!1164 (list!1019 (_2!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))))))))))

(assert (=> d!41848 (= lt!51917 (isEmpty!1167 (c!32900 (_2!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))))))))))

(assert (=> d!41848 (= (isEmpty!1163 (_2!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)))))) lt!51917)))

(declare-fun bs!16159 () Bool)

(assert (= bs!16159 d!41848))

(declare-fun m!161301 () Bool)

(assert (=> bs!16159 m!161301))

(assert (=> bs!16159 m!161301))

(declare-fun m!161303 () Bool)

(assert (=> bs!16159 m!161303))

(declare-fun m!161305 () Bool)

(assert (=> bs!16159 m!161305))

(assert (=> b!165244 d!41848))

(declare-fun e!100511 () Bool)

(declare-fun b!166650 () Bool)

(declare-fun lt!51918 () tuple2!2690)

(assert (=> b!166650 (= e!100511 (= (list!1019 (_2!1561 lt!51918)) (_2!1567 (lexList!107 thiss!17480 rules!1920 (list!1019 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))))))))))

(declare-fun b!166651 () Bool)

(declare-fun e!100509 () Bool)

(declare-fun e!100510 () Bool)

(assert (=> b!166651 (= e!100509 e!100510)))

(declare-fun res!75299 () Bool)

(assert (=> b!166651 (= res!75299 (< (size!2364 (_2!1561 lt!51918)) (size!2364 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))))))))

(assert (=> b!166651 (=> (not res!75299) (not e!100510))))

(declare-fun b!166652 () Bool)

(declare-fun res!75298 () Bool)

(assert (=> b!166652 (=> (not res!75298) (not e!100511))))

(assert (=> b!166652 (= res!75298 (= (list!1023 (_1!1561 lt!51918)) (_1!1567 (lexList!107 thiss!17480 rules!1920 (list!1019 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))))))))))

(declare-fun b!166653 () Bool)

(assert (=> b!166653 (= e!100510 (not (isEmpty!1155 (_1!1561 lt!51918))))))

(declare-fun d!41850 () Bool)

(assert (=> d!41850 e!100511))

(declare-fun res!75297 () Bool)

(assert (=> d!41850 (=> (not res!75297) (not e!100511))))

(assert (=> d!41850 (= res!75297 e!100509)))

(declare-fun c!33335 () Bool)

(assert (=> d!41850 (= c!33335 (> (size!2362 (_1!1561 lt!51918)) 0))))

(assert (=> d!41850 (= lt!51918 (lexTailRecV2!94 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))) (BalanceConc!1657 Empty!824) (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))) (BalanceConc!1659 Empty!825)))))

(assert (=> d!41850 (= (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)))) lt!51918)))

(declare-fun b!166654 () Bool)

(assert (=> b!166654 (= e!100509 (= (_2!1561 lt!51918) (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)))))))

(assert (= (and d!41850 c!33335) b!166651))

(assert (= (and d!41850 (not c!33335)) b!166654))

(assert (= (and b!166651 res!75299) b!166653))

(assert (= (and d!41850 res!75297) b!166652))

(assert (= (and b!166652 res!75298) b!166650))

(declare-fun m!161307 () Bool)

(assert (=> b!166650 m!161307))

(assert (=> b!166650 m!157621))

(declare-fun m!161309 () Bool)

(assert (=> b!166650 m!161309))

(assert (=> b!166650 m!161309))

(declare-fun m!161311 () Bool)

(assert (=> b!166650 m!161311))

(declare-fun m!161313 () Bool)

(assert (=> b!166651 m!161313))

(assert (=> b!166651 m!157621))

(declare-fun m!161315 () Bool)

(assert (=> b!166651 m!161315))

(declare-fun m!161317 () Bool)

(assert (=> b!166652 m!161317))

(assert (=> b!166652 m!157621))

(assert (=> b!166652 m!161309))

(assert (=> b!166652 m!161309))

(assert (=> b!166652 m!161311))

(declare-fun m!161319 () Bool)

(assert (=> b!166653 m!161319))

(declare-fun m!161321 () Bool)

(assert (=> d!41850 m!161321))

(assert (=> d!41850 m!157621))

(assert (=> d!41850 m!157621))

(declare-fun m!161323 () Bool)

(assert (=> d!41850 m!161323))

(assert (=> b!165244 d!41850))

(declare-fun d!41852 () Bool)

(declare-fun lt!51919 () BalanceConc!1656)

(assert (=> d!41852 (= (list!1019 lt!51919) (printList!71 thiss!17480 (list!1023 (singletonSeq!53 (h!8221 tokens!465)))))))

(assert (=> d!41852 (= lt!51919 (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)) 0 (BalanceConc!1657 Empty!824)))))

(assert (=> d!41852 (= (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))) lt!51919)))

(declare-fun bs!16160 () Bool)

(assert (= bs!16160 d!41852))

(declare-fun m!161329 () Bool)

(assert (=> bs!16160 m!161329))

(assert (=> bs!16160 m!157259))

(assert (=> bs!16160 m!157939))

(assert (=> bs!16160 m!157939))

(declare-fun m!161331 () Bool)

(assert (=> bs!16160 m!161331))

(assert (=> bs!16160 m!157259))

(assert (=> bs!16160 m!157623))

(assert (=> b!165244 d!41852))

(assert (=> b!165244 d!41004))

(declare-fun d!41854 () Bool)

(assert (=> d!41854 (= (list!1019 (_2!1561 lt!50937)) (list!1022 (c!32900 (_2!1561 lt!50937))))))

(declare-fun bs!16161 () Bool)

(assert (= bs!16161 d!41854))

(declare-fun m!161333 () Bool)

(assert (=> bs!16161 m!161333))

(assert (=> b!165140 d!41854))

(assert (=> b!165140 d!41168))

(assert (=> b!165140 d!41170))

(declare-fun d!41856 () Bool)

(declare-fun lt!51920 () Token!746)

(assert (=> d!41856 (= lt!51920 (apply!397 (list!1023 (_1!1561 lt!50967)) 0))))

(assert (=> d!41856 (= lt!51920 (apply!400 (c!32902 (_1!1561 lt!50967)) 0))))

(declare-fun e!100518 () Bool)

(assert (=> d!41856 e!100518))

(declare-fun res!75300 () Bool)

(assert (=> d!41856 (=> (not res!75300) (not e!100518))))

(assert (=> d!41856 (= res!75300 (<= 0 0))))

(assert (=> d!41856 (= (apply!398 (_1!1561 lt!50967) 0) lt!51920)))

(declare-fun b!166659 () Bool)

(assert (=> b!166659 (= e!100518 (< 0 (size!2362 (_1!1561 lt!50967))))))

(assert (= (and d!41856 res!75300) b!166659))

(declare-fun m!161335 () Bool)

(assert (=> d!41856 m!161335))

(assert (=> d!41856 m!161335))

(declare-fun m!161337 () Bool)

(assert (=> d!41856 m!161337))

(declare-fun m!161339 () Bool)

(assert (=> d!41856 m!161339))

(assert (=> b!166659 m!157941))

(assert (=> b!165242 d!41856))

(declare-fun b!166660 () Bool)

(declare-fun e!100519 () Bool)

(assert (=> b!166660 (= e!100519 (inv!15 (value!18594 (h!8221 (t!26456 tokens!465)))))))

(declare-fun b!166661 () Bool)

(declare-fun e!100520 () Bool)

(assert (=> b!166661 (= e!100520 (inv!17 (value!18594 (h!8221 (t!26456 tokens!465)))))))

(declare-fun d!41858 () Bool)

(declare-fun c!33336 () Bool)

(assert (=> d!41858 (= c!33336 ((_ is IntegerValue!1569) (value!18594 (h!8221 (t!26456 tokens!465)))))))

(declare-fun e!100521 () Bool)

(assert (=> d!41858 (= (inv!21 (value!18594 (h!8221 (t!26456 tokens!465)))) e!100521)))

(declare-fun b!166662 () Bool)

(assert (=> b!166662 (= e!100521 (inv!16 (value!18594 (h!8221 (t!26456 tokens!465)))))))

(declare-fun b!166663 () Bool)

(assert (=> b!166663 (= e!100521 e!100520)))

(declare-fun c!33337 () Bool)

(assert (=> b!166663 (= c!33337 ((_ is IntegerValue!1570) (value!18594 (h!8221 (t!26456 tokens!465)))))))

(declare-fun b!166664 () Bool)

(declare-fun res!75301 () Bool)

(assert (=> b!166664 (=> res!75301 e!100519)))

(assert (=> b!166664 (= res!75301 (not ((_ is IntegerValue!1571) (value!18594 (h!8221 (t!26456 tokens!465))))))))

(assert (=> b!166664 (= e!100520 e!100519)))

(assert (= (and d!41858 c!33336) b!166662))

(assert (= (and d!41858 (not c!33336)) b!166663))

(assert (= (and b!166663 c!33337) b!166661))

(assert (= (and b!166663 (not c!33337)) b!166664))

(assert (= (and b!166664 (not res!75301)) b!166660))

(declare-fun m!161341 () Bool)

(assert (=> b!166660 m!161341))

(declare-fun m!161343 () Bool)

(assert (=> b!166661 m!161343))

(declare-fun m!161345 () Bool)

(assert (=> b!166662 m!161345))

(assert (=> b!165391 d!41858))

(declare-fun b!166667 () Bool)

(declare-fun res!75302 () Bool)

(declare-fun e!100522 () Bool)

(assert (=> b!166667 (=> (not res!75302) (not e!100522))))

(declare-fun lt!51921 () List!2832)

(assert (=> b!166667 (= res!75302 (= (size!2365 lt!51921) (+ (size!2365 call!7085) (size!2365 lt!50988))))))

(declare-fun d!41860 () Bool)

(assert (=> d!41860 e!100522))

(declare-fun res!75303 () Bool)

(assert (=> d!41860 (=> (not res!75303) (not e!100522))))

(assert (=> d!41860 (= res!75303 (= (content!391 lt!51921) ((_ map or) (content!391 call!7085) (content!391 lt!50988))))))

(declare-fun e!100523 () List!2832)

(assert (=> d!41860 (= lt!51921 e!100523)))

(declare-fun c!33338 () Bool)

(assert (=> d!41860 (= c!33338 ((_ is Nil!2822) call!7085))))

(assert (=> d!41860 (= (++!636 call!7085 lt!50988) lt!51921)))

(declare-fun b!166666 () Bool)

(assert (=> b!166666 (= e!100523 (Cons!2822 (h!8219 call!7085) (++!636 (t!26454 call!7085) lt!50988)))))

(declare-fun b!166665 () Bool)

(assert (=> b!166665 (= e!100523 lt!50988)))

(declare-fun b!166668 () Bool)

(assert (=> b!166668 (= e!100522 (or (not (= lt!50988 Nil!2822)) (= lt!51921 call!7085)))))

(assert (= (and d!41860 c!33338) b!166665))

(assert (= (and d!41860 (not c!33338)) b!166666))

(assert (= (and d!41860 res!75303) b!166667))

(assert (= (and b!166667 res!75302) b!166668))

(declare-fun m!161347 () Bool)

(assert (=> b!166667 m!161347))

(declare-fun m!161349 () Bool)

(assert (=> b!166667 m!161349))

(declare-fun m!161351 () Bool)

(assert (=> b!166667 m!161351))

(declare-fun m!161353 () Bool)

(assert (=> d!41860 m!161353))

(declare-fun m!161355 () Bool)

(assert (=> d!41860 m!161355))

(declare-fun m!161357 () Bool)

(assert (=> d!41860 m!161357))

(declare-fun m!161359 () Bool)

(assert (=> b!166666 m!161359))

(assert (=> b!165343 d!41860))

(declare-fun b!166669 () Bool)

(declare-fun e!100524 () List!2832)

(assert (=> b!166669 (= e!100524 Nil!2822)))

(declare-fun b!166671 () Bool)

(declare-fun e!100525 () List!2832)

(assert (=> b!166671 (= e!100525 (list!1026 (xs!3419 (c!32900 lt!50717))))))

(declare-fun b!166672 () Bool)

(assert (=> b!166672 (= e!100525 (++!636 (list!1022 (left!2133 (c!32900 lt!50717))) (list!1022 (right!2463 (c!32900 lt!50717)))))))

(declare-fun d!41862 () Bool)

(declare-fun c!33339 () Bool)

(assert (=> d!41862 (= c!33339 ((_ is Empty!824) (c!32900 lt!50717)))))

(assert (=> d!41862 (= (list!1022 (c!32900 lt!50717)) e!100524)))

(declare-fun b!166670 () Bool)

(assert (=> b!166670 (= e!100524 e!100525)))

(declare-fun c!33340 () Bool)

(assert (=> b!166670 (= c!33340 ((_ is Leaf!1414) (c!32900 lt!50717)))))

(assert (= (and d!41862 c!33339) b!166669))

(assert (= (and d!41862 (not c!33339)) b!166670))

(assert (= (and b!166670 c!33340) b!166671))

(assert (= (and b!166670 (not c!33340)) b!166672))

(declare-fun m!161369 () Bool)

(assert (=> b!166671 m!161369))

(declare-fun m!161371 () Bool)

(assert (=> b!166672 m!161371))

(declare-fun m!161373 () Bool)

(assert (=> b!166672 m!161373))

(assert (=> b!166672 m!161371))

(assert (=> b!166672 m!161373))

(declare-fun m!161375 () Bool)

(assert (=> b!166672 m!161375))

(assert (=> d!41002 d!41862))

(declare-fun d!41864 () Bool)

(declare-fun e!100527 () Bool)

(assert (=> d!41864 e!100527))

(declare-fun res!75304 () Bool)

(assert (=> d!41864 (=> (not res!75304) (not e!100527))))

(declare-fun lt!51922 () BalanceConc!1658)

(assert (=> d!41864 (= res!75304 (= (list!1023 lt!51922) (t!26456 tokens!465)))))

(assert (=> d!41864 (= lt!51922 (BalanceConc!1659 (fromList!107 (t!26456 tokens!465))))))

(assert (=> d!41864 (= (fromListB!153 (t!26456 tokens!465)) lt!51922)))

(declare-fun b!166677 () Bool)

(assert (=> b!166677 (= e!100527 (isBalanced!230 (fromList!107 (t!26456 tokens!465))))))

(assert (= (and d!41864 res!75304) b!166677))

(declare-fun m!161377 () Bool)

(assert (=> d!41864 m!161377))

(declare-fun m!161379 () Bool)

(assert (=> d!41864 m!161379))

(assert (=> b!166677 m!161379))

(assert (=> b!166677 m!161379))

(declare-fun m!161381 () Bool)

(assert (=> b!166677 m!161381))

(assert (=> d!41074 d!41864))

(assert (=> b!165356 d!41800))

(declare-fun lt!51923 () Bool)

(declare-fun d!41866 () Bool)

(assert (=> d!41866 (= lt!51923 (isEmpty!1164 (list!1019 (_2!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)))))))))

(assert (=> d!41866 (= lt!51923 (isEmpty!1167 (c!32900 (_2!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)))))))))

(assert (=> d!41866 (= (isEmpty!1163 (_2!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170))))) lt!51923)))

(declare-fun bs!16162 () Bool)

(assert (= bs!16162 d!41866))

(declare-fun m!161383 () Bool)

(assert (=> bs!16162 m!161383))

(assert (=> bs!16162 m!161383))

(declare-fun m!161385 () Bool)

(assert (=> bs!16162 m!161385))

(declare-fun m!161387 () Bool)

(assert (=> bs!16162 m!161387))

(assert (=> b!165326 d!41866))

(declare-fun b!166689 () Bool)

(declare-fun lt!51924 () tuple2!2690)

(declare-fun e!100540 () Bool)

(assert (=> b!166689 (= e!100540 (= (list!1019 (_2!1561 lt!51924)) (_2!1567 (lexList!107 thiss!17480 rules!1920 (list!1019 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)))))))))

(declare-fun b!166690 () Bool)

(declare-fun e!100538 () Bool)

(declare-fun e!100539 () Bool)

(assert (=> b!166690 (= e!100538 e!100539)))

(declare-fun res!75307 () Bool)

(assert (=> b!166690 (= res!75307 (< (size!2364 (_2!1561 lt!51924)) (size!2364 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)))))))

(assert (=> b!166690 (=> (not res!75307) (not e!100539))))

(declare-fun b!166691 () Bool)

(declare-fun res!75306 () Bool)

(assert (=> b!166691 (=> (not res!75306) (not e!100540))))

(assert (=> b!166691 (= res!75306 (= (list!1023 (_1!1561 lt!51924)) (_1!1567 (lexList!107 thiss!17480 rules!1920 (list!1019 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)))))))))

(declare-fun b!166692 () Bool)

(assert (=> b!166692 (= e!100539 (not (isEmpty!1155 (_1!1561 lt!51924))))))

(declare-fun d!41868 () Bool)

(assert (=> d!41868 e!100540))

(declare-fun res!75305 () Bool)

(assert (=> d!41868 (=> (not res!75305) (not e!100540))))

(assert (=> d!41868 (= res!75305 e!100538)))

(declare-fun c!33341 () Bool)

(assert (=> d!41868 (= c!33341 (> (size!2362 (_1!1561 lt!51924)) 0))))

(assert (=> d!41868 (= lt!51924 (lexTailRecV2!94 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)) (BalanceConc!1657 Empty!824) (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)) (BalanceConc!1659 Empty!825)))))

(assert (=> d!41868 (= (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170))) lt!51924)))

(declare-fun b!166693 () Bool)

(assert (=> b!166693 (= e!100538 (= (_2!1561 lt!51924) (print!118 thiss!17480 (singletonSeq!53 separatorToken!170))))))

(assert (= (and d!41868 c!33341) b!166690))

(assert (= (and d!41868 (not c!33341)) b!166693))

(assert (= (and b!166690 res!75307) b!166692))

(assert (= (and d!41868 res!75305) b!166691))

(assert (= (and b!166691 res!75306) b!166689))

(declare-fun m!161395 () Bool)

(assert (=> b!166689 m!161395))

(assert (=> b!166689 m!158035))

(declare-fun m!161397 () Bool)

(assert (=> b!166689 m!161397))

(assert (=> b!166689 m!161397))

(declare-fun m!161399 () Bool)

(assert (=> b!166689 m!161399))

(declare-fun m!161401 () Bool)

(assert (=> b!166690 m!161401))

(assert (=> b!166690 m!158035))

(declare-fun m!161403 () Bool)

(assert (=> b!166690 m!161403))

(declare-fun m!161405 () Bool)

(assert (=> b!166691 m!161405))

(assert (=> b!166691 m!158035))

(assert (=> b!166691 m!161397))

(assert (=> b!166691 m!161397))

(assert (=> b!166691 m!161399))

(declare-fun m!161407 () Bool)

(assert (=> b!166692 m!161407))

(declare-fun m!161409 () Bool)

(assert (=> d!41868 m!161409))

(assert (=> d!41868 m!158035))

(assert (=> d!41868 m!158035))

(declare-fun m!161411 () Bool)

(assert (=> d!41868 m!161411))

(assert (=> b!165326 d!41868))

(declare-fun d!41870 () Bool)

(declare-fun lt!51925 () BalanceConc!1656)

(assert (=> d!41870 (= (list!1019 lt!51925) (printList!71 thiss!17480 (list!1023 (singletonSeq!53 separatorToken!170))))))

(assert (=> d!41870 (= lt!51925 (printTailRec!81 thiss!17480 (singletonSeq!53 separatorToken!170) 0 (BalanceConc!1657 Empty!824)))))

(assert (=> d!41870 (= (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)) lt!51925)))

(declare-fun bs!16163 () Bool)

(assert (= bs!16163 d!41870))

(declare-fun m!161413 () Bool)

(assert (=> bs!16163 m!161413))

(assert (=> bs!16163 m!158033))

(assert (=> bs!16163 m!158041))

(assert (=> bs!16163 m!158041))

(declare-fun m!161415 () Bool)

(assert (=> bs!16163 m!161415))

(assert (=> bs!16163 m!158033))

(declare-fun m!161417 () Bool)

(assert (=> bs!16163 m!161417))

(assert (=> b!165326 d!41870))

(declare-fun d!41872 () Bool)

(declare-fun e!100548 () Bool)

(assert (=> d!41872 e!100548))

(declare-fun res!75308 () Bool)

(assert (=> d!41872 (=> (not res!75308) (not e!100548))))

(declare-fun lt!51926 () BalanceConc!1658)

(assert (=> d!41872 (= res!75308 (= (list!1023 lt!51926) (Cons!2824 separatorToken!170 Nil!2824)))))

(assert (=> d!41872 (= lt!51926 (singleton!31 separatorToken!170))))

(assert (=> d!41872 (= (singletonSeq!53 separatorToken!170) lt!51926)))

(declare-fun b!166713 () Bool)

(assert (=> b!166713 (= e!100548 (isBalanced!230 (c!32902 lt!51926)))))

(assert (= (and d!41872 res!75308) b!166713))

(declare-fun m!161419 () Bool)

(assert (=> d!41872 m!161419))

(declare-fun m!161421 () Bool)

(assert (=> d!41872 m!161421))

(declare-fun m!161423 () Bool)

(assert (=> b!166713 m!161423))

(assert (=> b!165326 d!41872))

(declare-fun d!41874 () Bool)

(declare-fun lt!51927 () BalanceConc!1656)

(assert (=> d!41874 (= (list!1019 lt!51927) (originalCharacters!544 call!7086))))

(assert (=> d!41874 (= lt!51927 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 call!7086))) (value!18594 call!7086)))))

(assert (=> d!41874 (= (charsOf!156 call!7086) lt!51927)))

(declare-fun b_lambda!3661 () Bool)

(assert (=> (not b_lambda!3661) (not d!41874)))

(declare-fun t!26749 () Bool)

(declare-fun tb!6527 () Bool)

(assert (=> (and b!164817 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 call!7086)))) t!26749) tb!6527))

(declare-fun b!166718 () Bool)

(declare-fun e!100550 () Bool)

(declare-fun tp!83046 () Bool)

(assert (=> b!166718 (= e!100550 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 call!7086))) (value!18594 call!7086)))) tp!83046))))

(declare-fun result!9168 () Bool)

(assert (=> tb!6527 (= result!9168 (and (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 call!7086))) (value!18594 call!7086))) e!100550))))

(assert (= tb!6527 b!166718))

(declare-fun m!161425 () Bool)

(assert (=> b!166718 m!161425))

(declare-fun m!161427 () Bool)

(assert (=> tb!6527 m!161427))

(assert (=> d!41874 t!26749))

(declare-fun b_and!10761 () Bool)

(assert (= b_and!10749 (and (=> t!26749 result!9168) b_and!10761)))

(declare-fun tb!6529 () Bool)

(declare-fun t!26751 () Bool)

(assert (=> (and b!165426 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 call!7086)))) t!26751) tb!6529))

(declare-fun result!9170 () Bool)

(assert (= result!9170 result!9168))

(assert (=> d!41874 t!26751))

(declare-fun b_and!10763 () Bool)

(assert (= b_and!10743 (and (=> t!26751 result!9170) b_and!10763)))

(declare-fun t!26753 () Bool)

(declare-fun tb!6531 () Bool)

(assert (=> (and b!164831 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 call!7086)))) t!26753) tb!6531))

(declare-fun result!9172 () Bool)

(assert (= result!9172 result!9168))

(assert (=> d!41874 t!26753))

(declare-fun b_and!10765 () Bool)

(assert (= b_and!10751 (and (=> t!26753 result!9172) b_and!10765)))

(declare-fun tb!6533 () Bool)

(declare-fun t!26755 () Bool)

(assert (=> (and b!165393 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (toChars!1019 (transformation!501 (rule!1008 call!7086)))) t!26755) tb!6533))

(declare-fun result!9174 () Bool)

(assert (= result!9174 result!9168))

(assert (=> d!41874 t!26755))

(declare-fun b_and!10767 () Bool)

(assert (= b_and!10745 (and (=> t!26755 result!9174) b_and!10767)))

(declare-fun t!26757 () Bool)

(declare-fun tb!6535 () Bool)

(assert (=> (and b!164828 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 call!7086)))) t!26757) tb!6535))

(declare-fun result!9176 () Bool)

(assert (= result!9176 result!9168))

(assert (=> d!41874 t!26757))

(declare-fun b_and!10769 () Bool)

(assert (= b_and!10747 (and (=> t!26757 result!9176) b_and!10769)))

(declare-fun m!161429 () Bool)

(assert (=> d!41874 m!161429))

(declare-fun m!161431 () Bool)

(assert (=> d!41874 m!161431))

(assert (=> b!165354 d!41874))

(declare-fun d!41878 () Bool)

(declare-fun res!75313 () Bool)

(declare-fun e!100553 () Bool)

(assert (=> d!41878 (=> (not res!75313) (not e!100553))))

(declare-fun validRegex!178 (Regex!725) Bool)

(assert (=> d!41878 (= res!75313 (validRegex!178 (regex!501 (h!8220 rules!1920))))))

(assert (=> d!41878 (= (ruleValid!50 thiss!17480 (h!8220 rules!1920)) e!100553)))

(declare-fun b!166723 () Bool)

(declare-fun res!75314 () Bool)

(assert (=> b!166723 (=> (not res!75314) (not e!100553))))

(declare-fun nullable!105 (Regex!725) Bool)

(assert (=> b!166723 (= res!75314 (not (nullable!105 (regex!501 (h!8220 rules!1920)))))))

(declare-fun b!166724 () Bool)

(assert (=> b!166724 (= e!100553 (not (= (tag!679 (h!8220 rules!1920)) (String!3696 ""))))))

(assert (= (and d!41878 res!75313) b!166723))

(assert (= (and b!166723 res!75314) b!166724))

(declare-fun m!161439 () Bool)

(assert (=> d!41878 m!161439))

(declare-fun m!161441 () Bool)

(assert (=> b!166723 m!161441))

(assert (=> b!165289 d!41878))

(declare-fun b!166726 () Bool)

(declare-fun res!75318 () Bool)

(declare-fun e!100554 () Bool)

(assert (=> b!166726 (=> (not res!75318) (not e!100554))))

(assert (=> b!166726 (= res!75318 (<= (height!90 (++!641 (c!32900 call!7039) (c!32900 lt!50816))) (+ (max!0 (height!90 (c!32900 call!7039)) (height!90 (c!32900 lt!50816))) 1)))))

(declare-fun lt!51928 () BalanceConc!1656)

(declare-fun b!166728 () Bool)

(assert (=> b!166728 (= e!100554 (= (list!1019 lt!51928) (++!636 (list!1019 call!7039) (list!1019 lt!50816))))))

(declare-fun d!41892 () Bool)

(assert (=> d!41892 e!100554))

(declare-fun res!75316 () Bool)

(assert (=> d!41892 (=> (not res!75316) (not e!100554))))

(assert (=> d!41892 (= res!75316 (appendAssocInst!29 (c!32900 call!7039) (c!32900 lt!50816)))))

(assert (=> d!41892 (= lt!51928 (BalanceConc!1657 (++!641 (c!32900 call!7039) (c!32900 lt!50816))))))

(assert (=> d!41892 (= (++!638 call!7039 lt!50816) lt!51928)))

(declare-fun b!166727 () Bool)

(declare-fun res!75317 () Bool)

(assert (=> b!166727 (=> (not res!75317) (not e!100554))))

(assert (=> b!166727 (= res!75317 (>= (height!90 (++!641 (c!32900 call!7039) (c!32900 lt!50816))) (max!0 (height!90 (c!32900 call!7039)) (height!90 (c!32900 lt!50816)))))))

(declare-fun b!166725 () Bool)

(declare-fun res!75315 () Bool)

(assert (=> b!166725 (=> (not res!75315) (not e!100554))))

(assert (=> b!166725 (= res!75315 (isBalanced!232 (++!641 (c!32900 call!7039) (c!32900 lt!50816))))))

(assert (= (and d!41892 res!75316) b!166725))

(assert (= (and b!166725 res!75315) b!166726))

(assert (= (and b!166726 res!75318) b!166727))

(assert (= (and b!166727 res!75317) b!166728))

(declare-fun m!161443 () Bool)

(assert (=> b!166725 m!161443))

(assert (=> b!166725 m!161443))

(declare-fun m!161445 () Bool)

(assert (=> b!166725 m!161445))

(declare-fun m!161447 () Bool)

(assert (=> d!41892 m!161447))

(assert (=> d!41892 m!161443))

(assert (=> b!166726 m!161443))

(declare-fun m!161449 () Bool)

(assert (=> b!166726 m!161449))

(assert (=> b!166726 m!161443))

(declare-fun m!161451 () Bool)

(assert (=> b!166726 m!161451))

(assert (=> b!166726 m!160887))

(declare-fun m!161453 () Bool)

(assert (=> b!166726 m!161453))

(assert (=> b!166726 m!160887))

(assert (=> b!166726 m!161451))

(declare-fun m!161455 () Bool)

(assert (=> b!166728 m!161455))

(declare-fun m!161457 () Bool)

(assert (=> b!166728 m!161457))

(assert (=> b!166728 m!157525))

(assert (=> b!166728 m!161457))

(assert (=> b!166728 m!157525))

(declare-fun m!161459 () Bool)

(assert (=> b!166728 m!161459))

(assert (=> b!166727 m!161443))

(assert (=> b!166727 m!161449))

(assert (=> b!166727 m!161443))

(assert (=> b!166727 m!161451))

(assert (=> b!166727 m!160887))

(assert (=> b!166727 m!161453))

(assert (=> b!166727 m!160887))

(assert (=> b!166727 m!161451))

(assert (=> b!165001 d!41892))

(declare-fun d!41894 () Bool)

(declare-fun lt!51929 () Int)

(assert (=> d!41894 (>= lt!51929 0)))

(declare-fun e!100555 () Int)

(assert (=> d!41894 (= lt!51929 e!100555)))

(declare-fun c!33342 () Bool)

(assert (=> d!41894 (= c!33342 ((_ is Nil!2822) lt!50976))))

(assert (=> d!41894 (= (size!2365 lt!50976) lt!51929)))

(declare-fun b!166729 () Bool)

(assert (=> b!166729 (= e!100555 0)))

(declare-fun b!166730 () Bool)

(assert (=> b!166730 (= e!100555 (+ 1 (size!2365 (t!26454 lt!50976))))))

(assert (= (and d!41894 c!33342) b!166729))

(assert (= (and d!41894 (not c!33342)) b!166730))

(declare-fun m!161461 () Bool)

(assert (=> b!166730 m!161461))

(assert (=> b!165316 d!41894))

(assert (=> b!165316 d!41150))

(assert (=> b!165316 d!41182))

(declare-fun d!41896 () Bool)

(declare-fun c!33343 () Bool)

(assert (=> d!41896 (= c!33343 ((_ is Nil!2822) lt!51011))))

(declare-fun e!100556 () (InoxSet C!2372))

(assert (=> d!41896 (= (content!391 lt!51011) e!100556)))

(declare-fun b!166731 () Bool)

(assert (=> b!166731 (= e!100556 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166732 () Bool)

(assert (=> b!166732 (= e!100556 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!51011) true) (content!391 (t!26454 lt!51011))))))

(assert (= (and d!41896 c!33343) b!166731))

(assert (= (and d!41896 (not c!33343)) b!166732))

(declare-fun m!161463 () Bool)

(assert (=> b!166732 m!161463))

(declare-fun m!161465 () Bool)

(assert (=> b!166732 m!161465))

(assert (=> d!41096 d!41896))

(assert (=> d!41096 d!41782))

(assert (=> d!41096 d!41598))

(declare-fun bs!16171 () Bool)

(declare-fun d!41898 () Bool)

(assert (= bs!16171 (and d!41898 d!41158)))

(declare-fun lambda!4638 () Int)

(assert (=> bs!16171 (= (= (toValue!1160 (transformation!501 (rule!1008 separatorToken!170))) (toValue!1160 (transformation!501 (rule!1008 (h!8221 tokens!465))))) (= lambda!4638 lambda!4598))))

(declare-fun bs!16172 () Bool)

(assert (= bs!16172 (and d!41898 d!41738)))

(assert (=> bs!16172 (= (= (toValue!1160 (transformation!501 (rule!1008 separatorToken!170))) (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (= lambda!4638 lambda!4633))))

(assert (=> d!41898 true))

(assert (=> d!41898 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (rule!1008 separatorToken!170)))) (dynLambda!1026 order!1463 lambda!4638))))

(assert (=> d!41898 (= (equivClasses!156 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toValue!1160 (transformation!501 (rule!1008 separatorToken!170)))) (Forall2!109 lambda!4638))))

(declare-fun bs!16173 () Bool)

(assert (= bs!16173 d!41898))

(declare-fun m!161467 () Bool)

(assert (=> bs!16173 m!161467))

(assert (=> b!165374 d!41898))

(declare-fun d!41900 () Bool)

(declare-fun res!75323 () Bool)

(declare-fun e!100561 () Bool)

(assert (=> d!41900 (=> res!75323 e!100561)))

(assert (=> d!41900 (= res!75323 ((_ is Nil!2823) rules!1920))))

(assert (=> d!41900 (= (forall!536 rules!1920 lambda!4584) e!100561)))

(declare-fun b!166737 () Bool)

(declare-fun e!100562 () Bool)

(assert (=> b!166737 (= e!100561 e!100562)))

(declare-fun res!75324 () Bool)

(assert (=> b!166737 (=> (not res!75324) (not e!100562))))

(declare-fun dynLambda!1031 (Int Rule!802) Bool)

(assert (=> b!166737 (= res!75324 (dynLambda!1031 lambda!4584 (h!8220 rules!1920)))))

(declare-fun b!166738 () Bool)

(assert (=> b!166738 (= e!100562 (forall!536 (t!26455 rules!1920) lambda!4584))))

(assert (= (and d!41900 (not res!75323)) b!166737))

(assert (= (and b!166737 res!75324) b!166738))

(declare-fun b_lambda!3685 () Bool)

(assert (=> (not b_lambda!3685) (not b!166737)))

(declare-fun m!161469 () Bool)

(assert (=> b!166737 m!161469))

(declare-fun m!161471 () Bool)

(assert (=> b!166738 m!161471))

(assert (=> d!41042 d!41900))

(assert (=> b!165112 d!41584))

(declare-fun d!41902 () Bool)

(declare-fun lt!51930 () Int)

(assert (=> d!41902 (>= lt!51930 0)))

(declare-fun e!100563 () Int)

(assert (=> d!41902 (= lt!51930 e!100563)))

(declare-fun c!33344 () Bool)

(assert (=> d!41902 (= c!33344 ((_ is Nil!2822) lt!51010))))

(assert (=> d!41902 (= (size!2365 lt!51010) lt!51930)))

(declare-fun b!166739 () Bool)

(assert (=> b!166739 (= e!100563 0)))

(declare-fun b!166740 () Bool)

(assert (=> b!166740 (= e!100563 (+ 1 (size!2365 (t!26454 lt!51010))))))

(assert (= (and d!41902 c!33344) b!166739))

(assert (= (and d!41902 (not c!33344)) b!166740))

(declare-fun m!161473 () Bool)

(assert (=> b!166740 m!161473))

(assert (=> b!165364 d!41902))

(assert (=> b!165364 d!41150))

(declare-fun d!41904 () Bool)

(declare-fun lt!51931 () Int)

(assert (=> d!41904 (>= lt!51931 0)))

(declare-fun e!100564 () Int)

(assert (=> d!41904 (= lt!51931 e!100564)))

(declare-fun c!33345 () Bool)

(assert (=> d!41904 (= c!33345 ((_ is Nil!2822) lt!50722))))

(assert (=> d!41904 (= (size!2365 lt!50722) lt!51931)))

(declare-fun b!166741 () Bool)

(assert (=> b!166741 (= e!100564 0)))

(declare-fun b!166742 () Bool)

(assert (=> b!166742 (= e!100564 (+ 1 (size!2365 (t!26454 lt!50722))))))

(assert (= (and d!41904 c!33345) b!166741))

(assert (= (and d!41904 (not c!33345)) b!166742))

(declare-fun m!161475 () Bool)

(assert (=> b!166742 m!161475))

(assert (=> b!165364 d!41904))

(declare-fun b!166745 () Bool)

(declare-fun res!75325 () Bool)

(declare-fun e!100565 () Bool)

(assert (=> b!166745 (=> (not res!75325) (not e!100565))))

(declare-fun lt!51932 () List!2832)

(assert (=> b!166745 (= res!75325 (= (size!2365 lt!51932) (+ (size!2365 (t!26454 lt!50718)) (size!2365 lt!50709))))))

(declare-fun d!41906 () Bool)

(assert (=> d!41906 e!100565))

(declare-fun res!75326 () Bool)

(assert (=> d!41906 (=> (not res!75326) (not e!100565))))

(assert (=> d!41906 (= res!75326 (= (content!391 lt!51932) ((_ map or) (content!391 (t!26454 lt!50718)) (content!391 lt!50709))))))

(declare-fun e!100566 () List!2832)

(assert (=> d!41906 (= lt!51932 e!100566)))

(declare-fun c!33346 () Bool)

(assert (=> d!41906 (= c!33346 ((_ is Nil!2822) (t!26454 lt!50718)))))

(assert (=> d!41906 (= (++!636 (t!26454 lt!50718) lt!50709) lt!51932)))

(declare-fun b!166744 () Bool)

(assert (=> b!166744 (= e!100566 (Cons!2822 (h!8219 (t!26454 lt!50718)) (++!636 (t!26454 (t!26454 lt!50718)) lt!50709)))))

(declare-fun b!166743 () Bool)

(assert (=> b!166743 (= e!100566 lt!50709)))

(declare-fun b!166746 () Bool)

(assert (=> b!166746 (= e!100565 (or (not (= lt!50709 Nil!2822)) (= lt!51932 (t!26454 lt!50718))))))

(assert (= (and d!41906 c!33346) b!166743))

(assert (= (and d!41906 (not c!33346)) b!166744))

(assert (= (and d!41906 res!75326) b!166745))

(assert (= (and b!166745 res!75325) b!166746))

(declare-fun m!161477 () Bool)

(assert (=> b!166745 m!161477))

(assert (=> b!166745 m!158541))

(assert (=> b!166745 m!158015))

(declare-fun m!161479 () Bool)

(assert (=> d!41906 m!161479))

(assert (=> d!41906 m!161099))

(assert (=> d!41906 m!158021))

(declare-fun m!161481 () Bool)

(assert (=> b!166744 m!161481))

(assert (=> b!165367 d!41906))

(assert (=> b!165070 d!41088))

(assert (=> d!41022 d!41004))

(declare-fun d!41908 () Bool)

(assert (=> d!41908 (= (list!1023 (singletonSeq!53 (h!8221 tokens!465))) (list!1027 (c!32902 (singletonSeq!53 (h!8221 tokens!465)))))))

(declare-fun bs!16174 () Bool)

(assert (= bs!16174 d!41908))

(declare-fun m!161483 () Bool)

(assert (=> bs!16174 m!161483))

(assert (=> d!41022 d!41908))

(declare-fun d!41910 () Bool)

(declare-fun lt!51933 () Int)

(assert (=> d!41910 (= lt!51933 (size!2368 (list!1023 (_1!1561 lt!50967))))))

(assert (=> d!41910 (= lt!51933 (size!2369 (c!32902 (_1!1561 lt!50967))))))

(assert (=> d!41910 (= (size!2362 (_1!1561 lt!50967)) lt!51933)))

(declare-fun bs!16175 () Bool)

(assert (= bs!16175 d!41910))

(assert (=> bs!16175 m!161335))

(assert (=> bs!16175 m!161335))

(declare-fun m!161485 () Bool)

(assert (=> bs!16175 m!161485))

(declare-fun m!161487 () Bool)

(assert (=> bs!16175 m!161487))

(assert (=> d!41022 d!41910))

(assert (=> d!41022 d!41850))

(declare-fun d!41912 () Bool)

(assert (=> d!41912 (= (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)))))) (list!1027 (c!32902 (_1!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 (h!8221 tokens!465))))))))))

(declare-fun bs!16176 () Bool)

(assert (= bs!16176 d!41912))

(declare-fun m!161489 () Bool)

(assert (=> bs!16176 m!161489))

(assert (=> d!41022 d!41912))

(assert (=> d!41022 d!41100))

(assert (=> d!41022 d!41852))

(declare-fun d!41914 () Bool)

(declare-fun lt!51934 () BalanceConc!1656)

(assert (=> d!41914 (= (list!1019 lt!51934) (printList!71 thiss!17480 (list!1023 (singletonSeq!53 call!7086))))))

(assert (=> d!41914 (= lt!51934 (printTailRec!81 thiss!17480 (singletonSeq!53 call!7086) 0 (BalanceConc!1657 Empty!824)))))

(assert (=> d!41914 (= (print!118 thiss!17480 (singletonSeq!53 call!7086)) lt!51934)))

(declare-fun bs!16177 () Bool)

(assert (= bs!16177 d!41914))

(declare-fun m!161491 () Bool)

(assert (=> bs!16177 m!161491))

(assert (=> bs!16177 m!158133))

(declare-fun m!161493 () Bool)

(assert (=> bs!16177 m!161493))

(assert (=> bs!16177 m!161493))

(declare-fun m!161495 () Bool)

(assert (=> bs!16177 m!161495))

(assert (=> bs!16177 m!158133))

(assert (=> bs!16177 m!158135))

(assert (=> b!165348 d!41914))

(declare-fun d!41916 () Bool)

(declare-fun lt!51940 () BalanceConc!1656)

(assert (=> d!41916 (= (list!1019 lt!51940) (printListTailRec!50 thiss!17480 (dropList!82 (singletonSeq!53 call!7086) 0) (list!1019 (BalanceConc!1657 Empty!824))))))

(declare-fun e!100567 () BalanceConc!1656)

(assert (=> d!41916 (= lt!51940 e!100567)))

(declare-fun c!33347 () Bool)

(assert (=> d!41916 (= c!33347 (>= 0 (size!2362 (singletonSeq!53 call!7086))))))

(declare-fun e!100568 () Bool)

(assert (=> d!41916 e!100568))

(declare-fun res!75327 () Bool)

(assert (=> d!41916 (=> (not res!75327) (not e!100568))))

(assert (=> d!41916 (= res!75327 (>= 0 0))))

(assert (=> d!41916 (= (printTailRec!81 thiss!17480 (singletonSeq!53 call!7086) 0 (BalanceConc!1657 Empty!824)) lt!51940)))

(declare-fun b!166747 () Bool)

(assert (=> b!166747 (= e!100568 (<= 0 (size!2362 (singletonSeq!53 call!7086))))))

(declare-fun b!166748 () Bool)

(assert (=> b!166748 (= e!100567 (BalanceConc!1657 Empty!824))))

(declare-fun b!166749 () Bool)

(assert (=> b!166749 (= e!100567 (printTailRec!81 thiss!17480 (singletonSeq!53 call!7086) (+ 0 1) (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 (singletonSeq!53 call!7086) 0)))))))

(declare-fun lt!51941 () List!2834)

(assert (=> b!166749 (= lt!51941 (list!1023 (singletonSeq!53 call!7086)))))

(declare-fun lt!51937 () Unit!2378)

(assert (=> b!166749 (= lt!51937 (lemmaDropApply!122 lt!51941 0))))

(assert (=> b!166749 (= (head!596 (drop!135 lt!51941 0)) (apply!397 lt!51941 0))))

(declare-fun lt!51938 () Unit!2378)

(assert (=> b!166749 (= lt!51938 lt!51937)))

(declare-fun lt!51935 () List!2834)

(assert (=> b!166749 (= lt!51935 (list!1023 (singletonSeq!53 call!7086)))))

(declare-fun lt!51939 () Unit!2378)

(assert (=> b!166749 (= lt!51939 (lemmaDropTail!114 lt!51935 0))))

(assert (=> b!166749 (= (tail!336 (drop!135 lt!51935 0)) (drop!135 lt!51935 (+ 0 1)))))

(declare-fun lt!51936 () Unit!2378)

(assert (=> b!166749 (= lt!51936 lt!51939)))

(assert (= (and d!41916 res!75327) b!166747))

(assert (= (and d!41916 c!33347) b!166748))

(assert (= (and d!41916 (not c!33347)) b!166749))

(declare-fun m!161497 () Bool)

(assert (=> d!41916 m!161497))

(assert (=> d!41916 m!157727))

(assert (=> d!41916 m!158133))

(declare-fun m!161499 () Bool)

(assert (=> d!41916 m!161499))

(declare-fun m!161501 () Bool)

(assert (=> d!41916 m!161501))

(assert (=> d!41916 m!157727))

(declare-fun m!161503 () Bool)

(assert (=> d!41916 m!161503))

(assert (=> d!41916 m!158133))

(assert (=> d!41916 m!161501))

(assert (=> b!166747 m!158133))

(assert (=> b!166747 m!161499))

(declare-fun m!161505 () Bool)

(assert (=> b!166749 m!161505))

(declare-fun m!161507 () Bool)

(assert (=> b!166749 m!161507))

(declare-fun m!161509 () Bool)

(assert (=> b!166749 m!161509))

(declare-fun m!161511 () Bool)

(assert (=> b!166749 m!161511))

(declare-fun m!161513 () Bool)

(assert (=> b!166749 m!161513))

(declare-fun m!161515 () Bool)

(assert (=> b!166749 m!161515))

(declare-fun m!161517 () Bool)

(assert (=> b!166749 m!161517))

(assert (=> b!166749 m!158133))

(declare-fun m!161519 () Bool)

(assert (=> b!166749 m!161519))

(declare-fun m!161521 () Bool)

(assert (=> b!166749 m!161521))

(assert (=> b!166749 m!161515))

(assert (=> b!166749 m!161519))

(assert (=> b!166749 m!161507))

(declare-fun m!161523 () Bool)

(assert (=> b!166749 m!161523))

(assert (=> b!166749 m!158133))

(assert (=> b!166749 m!161493))

(declare-fun m!161525 () Bool)

(assert (=> b!166749 m!161525))

(assert (=> b!166749 m!158133))

(assert (=> b!166749 m!161513))

(assert (=> b!166749 m!161525))

(declare-fun m!161527 () Bool)

(assert (=> b!166749 m!161527))

(assert (=> b!165348 d!41916))

(declare-fun d!41918 () Bool)

(assert (=> d!41918 (= (list!1019 lt!50994) (list!1022 (c!32900 lt!50994)))))

(declare-fun bs!16178 () Bool)

(assert (= bs!16178 d!41918))

(declare-fun m!161529 () Bool)

(assert (=> bs!16178 m!161529))

(assert (=> b!165348 d!41918))

(declare-fun d!41920 () Bool)

(declare-fun e!100569 () Bool)

(assert (=> d!41920 e!100569))

(declare-fun res!75328 () Bool)

(assert (=> d!41920 (=> (not res!75328) (not e!100569))))

(declare-fun lt!51942 () BalanceConc!1658)

(assert (=> d!41920 (= res!75328 (= (list!1023 lt!51942) (Cons!2824 call!7086 Nil!2824)))))

(assert (=> d!41920 (= lt!51942 (singleton!31 call!7086))))

(assert (=> d!41920 (= (singletonSeq!53 call!7086) lt!51942)))

(declare-fun b!166750 () Bool)

(assert (=> b!166750 (= e!100569 (isBalanced!230 (c!32902 lt!51942)))))

(assert (= (and d!41920 res!75328) b!166750))

(declare-fun m!161531 () Bool)

(assert (=> d!41920 m!161531))

(declare-fun m!161533 () Bool)

(assert (=> d!41920 m!161533))

(declare-fun m!161535 () Bool)

(assert (=> b!166750 m!161535))

(assert (=> b!165348 d!41920))

(declare-fun d!41922 () Bool)

(assert (=> d!41922 (= (list!1019 call!7088) (list!1022 (c!32900 call!7088)))))

(declare-fun bs!16179 () Bool)

(assert (= bs!16179 d!41922))

(declare-fun m!161537 () Bool)

(assert (=> bs!16179 m!161537))

(assert (=> b!165348 d!41922))

(declare-fun d!41924 () Bool)

(assert (=> d!41924 (isDefined!135 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 call!7088) (list!1019 lt!50994))))))

(declare-fun lt!51957 () Unit!2378)

(declare-fun e!100570 () Unit!2378)

(assert (=> d!41924 (= lt!51957 e!100570)))

(declare-fun c!33348 () Bool)

(assert (=> d!41924 (= c!33348 (isEmpty!1166 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 call!7088) (list!1019 lt!50994)))))))

(declare-fun lt!51948 () Unit!2378)

(declare-fun lt!51951 () Unit!2378)

(assert (=> d!41924 (= lt!51948 lt!51951)))

(declare-fun e!100571 () Bool)

(assert (=> d!41924 e!100571))

(declare-fun res!75329 () Bool)

(assert (=> d!41924 (=> (not res!75329) (not e!100571))))

(declare-fun lt!51946 () Token!746)

(assert (=> d!41924 (= res!75329 (isDefined!136 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51946)))))))

(assert (=> d!41924 (= lt!51951 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!22 thiss!17480 rules!1920 (list!1019 call!7088) lt!51946))))

(declare-fun lt!51947 () Unit!2378)

(declare-fun lt!51950 () Unit!2378)

(assert (=> d!41924 (= lt!51947 lt!51950)))

(declare-fun lt!51959 () List!2832)

(assert (=> d!41924 (isPrefix!223 lt!51959 (++!636 (list!1019 call!7088) (list!1019 lt!50994)))))

(assert (=> d!41924 (= lt!51950 (lemmaPrefixStaysPrefixWhenAddingToSuffix!22 lt!51959 (list!1019 call!7088) (list!1019 lt!50994)))))

(assert (=> d!41924 (= lt!51959 (list!1019 (charsOf!156 lt!51946)))))

(declare-fun lt!51956 () Unit!2378)

(declare-fun lt!51955 () Unit!2378)

(assert (=> d!41924 (= lt!51956 lt!51955)))

(declare-fun lt!51958 () List!2832)

(declare-fun lt!51945 () List!2832)

(assert (=> d!41924 (isPrefix!223 lt!51958 (++!636 lt!51958 lt!51945))))

(assert (=> d!41924 (= lt!51955 (lemmaConcatTwoListThenFirstIsPrefix!126 lt!51958 lt!51945))))

(assert (=> d!41924 (= lt!51945 (_2!1565 (get!769 (maxPrefix!123 thiss!17480 rules!1920 (list!1019 call!7088)))))))

(assert (=> d!41924 (= lt!51958 (list!1019 (charsOf!156 lt!51946)))))

(assert (=> d!41924 (= lt!51946 (head!596 (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 (list!1019 call!7088)))))))))

(assert (=> d!41924 (not (isEmpty!1156 rules!1920))))

(assert (=> d!41924 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 (list!1019 call!7088) (list!1019 lt!50994)) lt!51957)))

(declare-fun b!166751 () Bool)

(declare-fun res!75330 () Bool)

(assert (=> b!166751 (=> (not res!75330) (not e!100571))))

(assert (=> b!166751 (= res!75330 (matchR!79 (regex!501 (get!770 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51946))))) (list!1019 (charsOf!156 lt!51946))))))

(declare-fun b!166752 () Bool)

(assert (=> b!166752 (= e!100571 (= (rule!1008 lt!51946) (get!770 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!51946))))))))

(declare-fun b!166754 () Bool)

(declare-fun Unit!2424 () Unit!2378)

(assert (=> b!166754 (= e!100570 Unit!2424)))

(declare-fun b!166753 () Bool)

(declare-fun Unit!2425 () Unit!2378)

(assert (=> b!166753 (= e!100570 Unit!2425)))

(declare-fun lt!51944 () List!2832)

(assert (=> b!166753 (= lt!51944 (++!636 (list!1019 call!7088) (list!1019 lt!50994)))))

(declare-fun lt!51953 () Unit!2378)

(assert (=> b!166753 (= lt!51953 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!22 thiss!17480 (rule!1008 lt!51946) rules!1920 lt!51944))))

(assert (=> b!166753 (isEmpty!1166 (maxPrefixOneRule!67 thiss!17480 (rule!1008 lt!51946) lt!51944))))

(declare-fun lt!51949 () Unit!2378)

(assert (=> b!166753 (= lt!51949 lt!51953)))

(declare-fun lt!51954 () List!2832)

(assert (=> b!166753 (= lt!51954 (list!1019 (charsOf!156 lt!51946)))))

(declare-fun lt!51952 () Unit!2378)

(assert (=> b!166753 (= lt!51952 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!22 thiss!17480 (rule!1008 lt!51946) lt!51954 (++!636 (list!1019 call!7088) (list!1019 lt!50994))))))

(assert (=> b!166753 (not (matchR!79 (regex!501 (rule!1008 lt!51946)) lt!51954))))

(declare-fun lt!51943 () Unit!2378)

(assert (=> b!166753 (= lt!51943 lt!51952)))

(assert (=> b!166753 false))

(assert (= (and d!41924 res!75329) b!166751))

(assert (= (and b!166751 res!75330) b!166752))

(assert (= (and d!41924 c!33348) b!166753))

(assert (= (and d!41924 (not c!33348)) b!166754))

(declare-fun m!161539 () Bool)

(assert (=> d!41924 m!161539))

(assert (=> d!41924 m!161539))

(declare-fun m!161541 () Bool)

(assert (=> d!41924 m!161541))

(declare-fun m!161543 () Bool)

(assert (=> d!41924 m!161543))

(declare-fun m!161545 () Bool)

(assert (=> d!41924 m!161545))

(assert (=> d!41924 m!158127))

(declare-fun m!161547 () Bool)

(assert (=> d!41924 m!161547))

(declare-fun m!161549 () Bool)

(assert (=> d!41924 m!161549))

(declare-fun m!161551 () Bool)

(assert (=> d!41924 m!161551))

(assert (=> d!41924 m!158127))

(assert (=> d!41924 m!158129))

(declare-fun m!161553 () Bool)

(assert (=> d!41924 m!161553))

(assert (=> d!41924 m!158127))

(declare-fun m!161555 () Bool)

(assert (=> d!41924 m!161555))

(declare-fun m!161557 () Bool)

(assert (=> d!41924 m!161557))

(assert (=> d!41924 m!161543))

(declare-fun m!161559 () Bool)

(assert (=> d!41924 m!161559))

(declare-fun m!161561 () Bool)

(assert (=> d!41924 m!161561))

(declare-fun m!161563 () Bool)

(assert (=> d!41924 m!161563))

(declare-fun m!161565 () Bool)

(assert (=> d!41924 m!161565))

(declare-fun m!161567 () Bool)

(assert (=> d!41924 m!161567))

(assert (=> d!41924 m!158127))

(assert (=> d!41924 m!158129))

(declare-fun m!161569 () Bool)

(assert (=> d!41924 m!161569))

(assert (=> d!41924 m!161569))

(declare-fun m!161571 () Bool)

(assert (=> d!41924 m!161571))

(assert (=> d!41924 m!161547))

(declare-fun m!161573 () Bool)

(assert (=> d!41924 m!161573))

(assert (=> d!41924 m!158127))

(assert (=> d!41924 m!161549))

(assert (=> d!41924 m!161569))

(assert (=> d!41924 m!161543))

(assert (=> d!41924 m!161565))

(assert (=> d!41924 m!161557))

(declare-fun m!161575 () Bool)

(assert (=> d!41924 m!161575))

(assert (=> d!41924 m!157245))

(assert (=> d!41924 m!161563))

(declare-fun m!161577 () Bool)

(assert (=> d!41924 m!161577))

(assert (=> b!166751 m!161539))

(assert (=> b!166751 m!161539))

(assert (=> b!166751 m!161541))

(assert (=> b!166751 m!161541))

(declare-fun m!161579 () Bool)

(assert (=> b!166751 m!161579))

(assert (=> b!166751 m!161565))

(assert (=> b!166751 m!161565))

(declare-fun m!161581 () Bool)

(assert (=> b!166751 m!161581))

(assert (=> b!166752 m!161565))

(assert (=> b!166752 m!161565))

(assert (=> b!166752 m!161581))

(assert (=> b!166753 m!161539))

(assert (=> b!166753 m!161541))

(declare-fun m!161583 () Bool)

(assert (=> b!166753 m!161583))

(assert (=> b!166753 m!158127))

(assert (=> b!166753 m!158129))

(assert (=> b!166753 m!161569))

(declare-fun m!161585 () Bool)

(assert (=> b!166753 m!161585))

(declare-fun m!161587 () Bool)

(assert (=> b!166753 m!161587))

(assert (=> b!166753 m!161585))

(assert (=> b!166753 m!161569))

(declare-fun m!161589 () Bool)

(assert (=> b!166753 m!161589))

(declare-fun m!161591 () Bool)

(assert (=> b!166753 m!161591))

(assert (=> b!166753 m!161539))

(assert (=> b!165348 d!41924))

(assert (=> d!41068 d!41872))

(declare-fun d!41926 () Bool)

(assert (=> d!41926 (= (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170))))) (list!1027 (c!32902 (_1!1561 (lex!187 thiss!17480 rules!1920 (print!118 thiss!17480 (singletonSeq!53 separatorToken!170)))))))))

(declare-fun bs!16180 () Bool)

(assert (= bs!16180 d!41926))

(declare-fun m!161593 () Bool)

(assert (=> bs!16180 m!161593))

(assert (=> d!41068 d!41926))

(declare-fun d!41928 () Bool)

(assert (=> d!41928 (= (list!1023 (singletonSeq!53 separatorToken!170)) (list!1027 (c!32902 (singletonSeq!53 separatorToken!170))))))

(declare-fun bs!16181 () Bool)

(assert (= bs!16181 d!41928))

(declare-fun m!161595 () Bool)

(assert (=> bs!16181 m!161595))

(assert (=> d!41068 d!41928))

(assert (=> d!41068 d!41870))

(assert (=> d!41068 d!41100))

(declare-fun d!41930 () Bool)

(declare-fun lt!51960 () Int)

(assert (=> d!41930 (= lt!51960 (size!2368 (list!1023 (_1!1561 lt!50978))))))

(assert (=> d!41930 (= lt!51960 (size!2369 (c!32902 (_1!1561 lt!50978))))))

(assert (=> d!41930 (= (size!2362 (_1!1561 lt!50978)) lt!51960)))

(declare-fun bs!16182 () Bool)

(assert (= bs!16182 d!41930))

(assert (=> bs!16182 m!159297))

(assert (=> bs!16182 m!159297))

(declare-fun m!161597 () Bool)

(assert (=> bs!16182 m!161597))

(declare-fun m!161599 () Bool)

(assert (=> bs!16182 m!161599))

(assert (=> d!41068 d!41930))

(assert (=> d!41068 d!41868))

(declare-fun d!41932 () Bool)

(declare-fun res!75331 () Bool)

(declare-fun e!100572 () Bool)

(assert (=> d!41932 (=> (not res!75331) (not e!100572))))

(assert (=> d!41932 (= res!75331 (not (isEmpty!1164 (originalCharacters!544 (h!8221 (t!26456 tokens!465))))))))

(assert (=> d!41932 (= (inv!3644 (h!8221 (t!26456 tokens!465))) e!100572)))

(declare-fun b!166755 () Bool)

(declare-fun res!75332 () Bool)

(assert (=> b!166755 (=> (not res!75332) (not e!100572))))

(assert (=> b!166755 (= res!75332 (= (originalCharacters!544 (h!8221 (t!26456 tokens!465))) (list!1019 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))) (value!18594 (h!8221 (t!26456 tokens!465)))))))))

(declare-fun b!166756 () Bool)

(assert (=> b!166756 (= e!100572 (= (size!2359 (h!8221 (t!26456 tokens!465))) (size!2365 (originalCharacters!544 (h!8221 (t!26456 tokens!465))))))))

(assert (= (and d!41932 res!75331) b!166755))

(assert (= (and b!166755 res!75332) b!166756))

(declare-fun b_lambda!3687 () Bool)

(assert (=> (not b_lambda!3687) (not b!166755)))

(assert (=> b!166755 t!26651))

(declare-fun b_and!10771 () Bool)

(assert (= b_and!10765 (and (=> t!26651 result!9072) b_and!10771)))

(assert (=> b!166755 t!26657))

(declare-fun b_and!10773 () Bool)

(assert (= b_and!10763 (and (=> t!26657 result!9078) b_and!10773)))

(assert (=> b!166755 t!26653))

(declare-fun b_and!10775 () Bool)

(assert (= b_and!10769 (and (=> t!26653 result!9074) b_and!10775)))

(assert (=> b!166755 t!26659))

(declare-fun b_and!10777 () Bool)

(assert (= b_and!10767 (and (=> t!26659 result!9080) b_and!10777)))

(assert (=> b!166755 t!26655))

(declare-fun b_and!10779 () Bool)

(assert (= b_and!10761 (and (=> t!26655 result!9076) b_and!10779)))

(declare-fun m!161601 () Bool)

(assert (=> d!41932 m!161601))

(assert (=> b!166755 m!160535))

(assert (=> b!166755 m!160535))

(declare-fun m!161603 () Bool)

(assert (=> b!166755 m!161603))

(declare-fun m!161605 () Bool)

(assert (=> b!166756 m!161605))

(assert (=> b!165390 d!41932))

(declare-fun d!41934 () Bool)

(assert (=> d!41934 (= (list!1019 (ite c!32963 call!7069 call!7066)) (list!1022 (c!32900 (ite c!32963 call!7069 call!7066))))))

(declare-fun bs!16183 () Bool)

(assert (= bs!16183 d!41934))

(declare-fun m!161607 () Bool)

(assert (=> bs!16183 m!161607))

(assert (=> bm!7063 d!41934))

(assert (=> b!165339 d!41088))

(declare-fun d!41936 () Bool)

(declare-fun e!100573 () Bool)

(assert (=> d!41936 e!100573))

(declare-fun res!75333 () Bool)

(assert (=> d!41936 (=> (not res!75333) (not e!100573))))

(declare-fun lt!51961 () BalanceConc!1656)

(assert (=> d!41936 (= res!75333 (= (list!1019 lt!51961) lt!50724))))

(assert (=> d!41936 (= lt!51961 (BalanceConc!1657 (fromList!105 lt!50724)))))

(assert (=> d!41936 (= (fromListB!152 lt!50724) lt!51961)))

(declare-fun b!166757 () Bool)

(assert (=> b!166757 (= e!100573 (isBalanced!232 (fromList!105 lt!50724)))))

(assert (= (and d!41936 res!75333) b!166757))

(declare-fun m!161609 () Bool)

(assert (=> d!41936 m!161609))

(declare-fun m!161611 () Bool)

(assert (=> d!41936 m!161611))

(assert (=> b!166757 m!161611))

(assert (=> b!166757 m!161611))

(declare-fun m!161613 () Bool)

(assert (=> b!166757 m!161613))

(assert (=> d!41018 d!41936))

(assert (=> b!165352 d!41258))

(declare-fun d!41938 () Bool)

(declare-fun charsToInt!0 (List!2831) (_ BitVec 32))

(assert (=> d!41938 (= (inv!16 (value!18594 (h!8221 tokens!465))) (= (charsToInt!0 (text!4108 (value!18594 (h!8221 tokens!465)))) (value!18585 (value!18594 (h!8221 tokens!465)))))))

(declare-fun bs!16184 () Bool)

(assert (= bs!16184 d!41938))

(declare-fun m!161615 () Bool)

(assert (=> bs!16184 m!161615))

(assert (=> b!165157 d!41938))

(declare-fun d!41940 () Bool)

(declare-fun res!75334 () Bool)

(declare-fun e!100574 () Bool)

(assert (=> d!41940 (=> res!75334 e!100574)))

(assert (=> d!41940 (= res!75334 (not ((_ is Cons!2823) (t!26455 rules!1920))))))

(assert (=> d!41940 (= (sepAndNonSepRulesDisjointChars!90 rules!1920 (t!26455 rules!1920)) e!100574)))

(declare-fun b!166758 () Bool)

(declare-fun e!100575 () Bool)

(assert (=> b!166758 (= e!100574 e!100575)))

(declare-fun res!75335 () Bool)

(assert (=> b!166758 (=> (not res!75335) (not e!100575))))

(assert (=> b!166758 (= res!75335 (ruleDisjointCharsFromAllFromOtherType!32 (h!8220 (t!26455 rules!1920)) rules!1920))))

(declare-fun b!166759 () Bool)

(assert (=> b!166759 (= e!100575 (sepAndNonSepRulesDisjointChars!90 rules!1920 (t!26455 (t!26455 rules!1920))))))

(assert (= (and d!41940 (not res!75334)) b!166758))

(assert (= (and b!166758 res!75335) b!166759))

(declare-fun m!161617 () Bool)

(assert (=> b!166758 m!161617))

(declare-fun m!161619 () Bool)

(assert (=> b!166759 m!161619))

(assert (=> b!165090 d!41940))

(declare-fun d!41942 () Bool)

(assert (=> d!41942 (= (isEmpty!1164 (originalCharacters!544 (h!8221 tokens!465))) ((_ is Nil!2822) (originalCharacters!544 (h!8221 tokens!465))))))

(assert (=> d!41034 d!41942))

(declare-fun d!41944 () Bool)

(assert (=> d!41944 (= (list!1019 e!99727) (list!1022 (c!32900 e!99727)))))

(declare-fun bs!16185 () Bool)

(assert (= bs!16185 d!41944))

(declare-fun m!161621 () Bool)

(assert (=> bs!16185 m!161621))

(assert (=> bm!7079 d!41944))

(declare-fun d!41946 () Bool)

(declare-fun lt!51962 () Bool)

(assert (=> d!41946 (= lt!51962 (isEmpty!1161 (list!1023 (_1!1561 lt!50937))))))

(assert (=> d!41946 (= lt!51962 (isEmpty!1162 (c!32902 (_1!1561 lt!50937))))))

(assert (=> d!41946 (= (isEmpty!1155 (_1!1561 lt!50937)) lt!51962)))

(declare-fun bs!16186 () Bool)

(assert (= bs!16186 d!41946))

(assert (=> bs!16186 m!157807))

(assert (=> bs!16186 m!157807))

(declare-fun m!161623 () Bool)

(assert (=> bs!16186 m!161623))

(declare-fun m!161625 () Bool)

(assert (=> bs!16186 m!161625))

(assert (=> b!165143 d!41946))

(declare-fun d!41948 () Bool)

(assert (=> d!41948 (= (inv!16 (value!18594 separatorToken!170)) (= (charsToInt!0 (text!4108 (value!18594 separatorToken!170))) (value!18585 (value!18594 separatorToken!170))))))

(declare-fun bs!16187 () Bool)

(assert (= bs!16187 d!41948))

(declare-fun m!161627 () Bool)

(assert (=> bs!16187 m!161627))

(assert (=> b!165282 d!41948))

(assert (=> bs!15858 d!41022))

(declare-fun d!41950 () Bool)

(assert (=> d!41950 (= (list!1019 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))) (list!1022 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))))))

(declare-fun bs!16188 () Bool)

(assert (= bs!16188 d!41950))

(declare-fun m!161629 () Bool)

(assert (=> bs!16188 m!161629))

(assert (=> b!165273 d!41950))

(declare-fun d!41952 () Bool)

(assert (=> d!41952 (= (++!636 (++!636 lt!50724 lt!50718) lt!50709) (++!636 lt!50724 (++!636 lt!50718 lt!50709)))))

(assert (=> d!41952 true))

(declare-fun _$52!594 () Unit!2378)

(assert (=> d!41952 (= (choose!1810 lt!50724 lt!50718 lt!50709) _$52!594)))

(declare-fun bs!16189 () Bool)

(assert (= bs!16189 d!41952))

(assert (=> bs!16189 m!157287))

(assert (=> bs!16189 m!157287))

(assert (=> bs!16189 m!157289))

(assert (=> bs!16189 m!157297))

(assert (=> bs!16189 m!157297))

(assert (=> bs!16189 m!158067))

(assert (=> d!41080 d!41952))

(assert (=> d!41080 d!41082))

(declare-fun b!166762 () Bool)

(declare-fun res!75336 () Bool)

(declare-fun e!100576 () Bool)

(assert (=> b!166762 (=> (not res!75336) (not e!100576))))

(declare-fun lt!51963 () List!2832)

(assert (=> b!166762 (= res!75336 (= (size!2365 lt!51963) (+ (size!2365 lt!50724) (size!2365 (++!636 lt!50718 lt!50709)))))))

(declare-fun d!41954 () Bool)

(assert (=> d!41954 e!100576))

(declare-fun res!75337 () Bool)

(assert (=> d!41954 (=> (not res!75337) (not e!100576))))

(assert (=> d!41954 (= res!75337 (= (content!391 lt!51963) ((_ map or) (content!391 lt!50724) (content!391 (++!636 lt!50718 lt!50709)))))))

(declare-fun e!100577 () List!2832)

(assert (=> d!41954 (= lt!51963 e!100577)))

(declare-fun c!33349 () Bool)

(assert (=> d!41954 (= c!33349 ((_ is Nil!2822) lt!50724))))

(assert (=> d!41954 (= (++!636 lt!50724 (++!636 lt!50718 lt!50709)) lt!51963)))

(declare-fun b!166761 () Bool)

(assert (=> b!166761 (= e!100577 (Cons!2822 (h!8219 lt!50724) (++!636 (t!26454 lt!50724) (++!636 lt!50718 lt!50709))))))

(declare-fun b!166760 () Bool)

(assert (=> b!166760 (= e!100577 (++!636 lt!50718 lt!50709))))

(declare-fun b!166763 () Bool)

(assert (=> b!166763 (= e!100576 (or (not (= (++!636 lt!50718 lt!50709) Nil!2822)) (= lt!51963 lt!50724)))))

(assert (= (and d!41954 c!33349) b!166760))

(assert (= (and d!41954 (not c!33349)) b!166761))

(assert (= (and d!41954 res!75337) b!166762))

(assert (= (and b!166762 res!75336) b!166763))

(declare-fun m!161631 () Bool)

(assert (=> b!166762 m!161631))

(assert (=> b!166762 m!158013))

(assert (=> b!166762 m!157297))

(declare-fun m!161633 () Bool)

(assert (=> b!166762 m!161633))

(declare-fun m!161635 () Bool)

(assert (=> d!41954 m!161635))

(assert (=> d!41954 m!158019))

(assert (=> d!41954 m!157297))

(declare-fun m!161637 () Bool)

(assert (=> d!41954 m!161637))

(assert (=> b!166761 m!157297))

(declare-fun m!161639 () Bool)

(assert (=> b!166761 m!161639))

(assert (=> d!41080 d!41954))

(assert (=> d!41080 d!41096))

(assert (=> d!41080 d!41098))

(declare-fun d!41956 () Bool)

(declare-fun lt!51964 () Bool)

(assert (=> d!41956 (= lt!51964 (isEmpty!1164 (list!1019 (_2!1561 lt!50978))))))

(assert (=> d!41956 (= lt!51964 (isEmpty!1167 (c!32900 (_2!1561 lt!50978))))))

(assert (=> d!41956 (= (isEmpty!1163 (_2!1561 lt!50978)) lt!51964)))

(declare-fun bs!16190 () Bool)

(assert (= bs!16190 d!41956))

(declare-fun m!161641 () Bool)

(assert (=> bs!16190 m!161641))

(assert (=> bs!16190 m!161641))

(declare-fun m!161643 () Bool)

(assert (=> bs!16190 m!161643))

(declare-fun m!161645 () Bool)

(assert (=> bs!16190 m!161645))

(assert (=> b!165325 d!41956))

(assert (=> bm!7083 d!41258))

(declare-fun d!41958 () Bool)

(declare-fun res!75338 () Bool)

(declare-fun e!100578 () Bool)

(assert (=> d!41958 (=> res!75338 e!100578)))

(assert (=> d!41958 (= res!75338 ((_ is Nil!2824) (list!1023 lt!50710)))))

(assert (=> d!41958 (= (forall!533 (list!1023 lt!50710) lambda!4589) e!100578)))

(declare-fun b!166764 () Bool)

(declare-fun e!100579 () Bool)

(assert (=> b!166764 (= e!100578 e!100579)))

(declare-fun res!75339 () Bool)

(assert (=> b!166764 (=> (not res!75339) (not e!100579))))

(assert (=> b!166764 (= res!75339 (dynLambda!1025 lambda!4589 (h!8221 (list!1023 lt!50710))))))

(declare-fun b!166765 () Bool)

(assert (=> b!166765 (= e!100579 (forall!533 (t!26456 (list!1023 lt!50710)) lambda!4589))))

(assert (= (and d!41958 (not res!75338)) b!166764))

(assert (= (and b!166764 res!75339) b!166765))

(declare-fun b_lambda!3689 () Bool)

(assert (=> (not b_lambda!3689) (not b!166764)))

(declare-fun m!161647 () Bool)

(assert (=> b!166764 m!161647))

(declare-fun m!161649 () Bool)

(assert (=> b!166765 m!161649))

(assert (=> d!41070 d!41958))

(assert (=> d!41070 d!41348))

(declare-fun d!41960 () Bool)

(declare-fun lt!51967 () Bool)

(assert (=> d!41960 (= lt!51967 (forall!533 (list!1023 lt!50710) lambda!4589))))

(declare-fun forall!539 (Conc!825 Int) Bool)

(assert (=> d!41960 (= lt!51967 (forall!539 (c!32902 lt!50710) lambda!4589))))

(assert (=> d!41960 (= (forall!537 lt!50710 lambda!4589) lt!51967)))

(declare-fun bs!16191 () Bool)

(assert (= bs!16191 d!41960))

(assert (=> bs!16191 m!157519))

(assert (=> bs!16191 m!157519))

(assert (=> bs!16191 m!158051))

(declare-fun m!161651 () Bool)

(assert (=> bs!16191 m!161651))

(assert (=> d!41070 d!41960))

(assert (=> d!41070 d!41100))

(declare-fun d!41962 () Bool)

(assert (=> d!41962 (= (inv!3649 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))) (isBalanced!232 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))))))

(declare-fun bs!16192 () Bool)

(assert (= bs!16192 d!41962))

(declare-fun m!161653 () Bool)

(assert (=> bs!16192 m!161653))

(assert (=> tb!6293 d!41962))

(declare-fun d!41964 () Bool)

(declare-fun lt!51968 () Int)

(assert (=> d!41964 (= lt!51968 (size!2368 (list!1023 lt!50710)))))

(assert (=> d!41964 (= lt!51968 (size!2369 (c!32902 lt!50710)))))

(assert (=> d!41964 (= (size!2362 lt!50710) lt!51968)))

(declare-fun bs!16193 () Bool)

(assert (= bs!16193 d!41964))

(assert (=> bs!16193 m!157519))

(assert (=> bs!16193 m!157519))

(declare-fun m!161655 () Bool)

(assert (=> bs!16193 m!161655))

(declare-fun m!161657 () Bool)

(assert (=> bs!16193 m!161657))

(assert (=> b!165002 d!41964))

(declare-fun b!166766 () Bool)

(declare-fun e!100580 () List!2832)

(assert (=> b!166766 (= e!100580 Nil!2822)))

(declare-fun b!166768 () Bool)

(declare-fun e!100581 () List!2832)

(assert (=> b!166768 (= e!100581 (list!1026 (xs!3419 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0)))))))

(declare-fun b!166769 () Bool)

(assert (=> b!166769 (= e!100581 (++!636 (list!1022 (left!2133 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0)))) (list!1022 (right!2463 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0))))))))

(declare-fun d!41966 () Bool)

(declare-fun c!33350 () Bool)

(assert (=> d!41966 (= c!33350 ((_ is Empty!824) (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0))))))

(assert (=> d!41966 (= (list!1022 (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0))) e!100580)))

(declare-fun b!166767 () Bool)

(assert (=> b!166767 (= e!100580 e!100581)))

(declare-fun c!33351 () Bool)

(assert (=> b!166767 (= c!33351 ((_ is Leaf!1414) (c!32900 (printWithSeparatorTokenWhenNeededRec!70 thiss!17480 rules!1920 lt!50710 separatorToken!170 0))))))

(assert (= (and d!41966 c!33350) b!166766))

(assert (= (and d!41966 (not c!33350)) b!166767))

(assert (= (and b!166767 c!33351) b!166768))

(assert (= (and b!166767 (not c!33351)) b!166769))

(declare-fun m!161659 () Bool)

(assert (=> b!166768 m!161659))

(declare-fun m!161661 () Bool)

(assert (=> b!166769 m!161661))

(declare-fun m!161663 () Bool)

(assert (=> b!166769 m!161663))

(assert (=> b!166769 m!161661))

(assert (=> b!166769 m!161663))

(declare-fun m!161665 () Bool)

(assert (=> b!166769 m!161665))

(assert (=> d!40914 d!41966))

(declare-fun d!41968 () Bool)

(declare-fun c!33354 () Bool)

(assert (=> d!41968 (= c!33354 ((_ is Node!824) (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))))))

(declare-fun e!100586 () Bool)

(assert (=> d!41968 (= (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))) e!100586)))

(declare-fun b!166776 () Bool)

(declare-fun inv!3652 (Conc!824) Bool)

(assert (=> b!166776 (= e!100586 (inv!3652 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))))))

(declare-fun b!166777 () Bool)

(declare-fun e!100587 () Bool)

(assert (=> b!166777 (= e!100586 e!100587)))

(declare-fun res!75342 () Bool)

(assert (=> b!166777 (= res!75342 (not ((_ is Leaf!1414) (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))))))))

(assert (=> b!166777 (=> res!75342 e!100587)))

(declare-fun b!166778 () Bool)

(declare-fun inv!3653 (Conc!824) Bool)

(assert (=> b!166778 (= e!100587 (inv!3653 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))))))

(assert (= (and d!41968 c!33354) b!166776))

(assert (= (and d!41968 (not c!33354)) b!166777))

(assert (= (and b!166777 (not res!75342)) b!166778))

(declare-fun m!161667 () Bool)

(assert (=> b!166776 m!161667))

(declare-fun m!161669 () Bool)

(assert (=> b!166778 m!161669))

(assert (=> b!165279 d!41968))

(declare-fun d!41970 () Bool)

(declare-fun c!33355 () Bool)

(assert (=> d!41970 (= c!33355 ((_ is Nil!2822) lt!51010))))

(declare-fun e!100588 () (InoxSet C!2372))

(assert (=> d!41970 (= (content!391 lt!51010) e!100588)))

(declare-fun b!166779 () Bool)

(assert (=> b!166779 (= e!100588 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166780 () Bool)

(assert (=> b!166780 (= e!100588 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!51010) true) (content!391 (t!26454 lt!51010))))))

(assert (= (and d!41970 c!33355) b!166779))

(assert (= (and d!41970 (not c!33355)) b!166780))

(declare-fun m!161671 () Bool)

(assert (=> b!166780 m!161671))

(declare-fun m!161673 () Bool)

(assert (=> b!166780 m!161673))

(assert (=> d!41094 d!41970))

(assert (=> d!41094 d!41780))

(declare-fun d!41972 () Bool)

(declare-fun c!33356 () Bool)

(assert (=> d!41972 (= c!33356 ((_ is Nil!2822) lt!50722))))

(declare-fun e!100589 () (InoxSet C!2372))

(assert (=> d!41972 (= (content!391 lt!50722) e!100589)))

(declare-fun b!166781 () Bool)

(assert (=> b!166781 (= e!100589 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166782 () Bool)

(assert (=> b!166782 (= e!100589 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!50722) true) (content!391 (t!26454 lt!50722))))))

(assert (= (and d!41972 c!33356) b!166781))

(assert (= (and d!41972 (not c!33356)) b!166782))

(declare-fun m!161675 () Bool)

(assert (=> b!166782 m!161675))

(declare-fun m!161677 () Bool)

(assert (=> b!166782 m!161677))

(assert (=> d!41094 d!41972))

(declare-fun d!41974 () Bool)

(assert (=> d!41974 (dynLambda!1025 lambda!4590 (h!8221 (t!26456 tokens!465)))))

(declare-fun lt!51969 () Unit!2378)

(assert (=> d!41974 (= lt!51969 (choose!1809 (t!26456 tokens!465) lambda!4590 (h!8221 (t!26456 tokens!465))))))

(declare-fun e!100590 () Bool)

(assert (=> d!41974 e!100590))

(declare-fun res!75343 () Bool)

(assert (=> d!41974 (=> (not res!75343) (not e!100590))))

(assert (=> d!41974 (= res!75343 (forall!533 (t!26456 tokens!465) lambda!4590))))

(assert (=> d!41974 (= (forallContained!68 (t!26456 tokens!465) lambda!4590 (h!8221 (t!26456 tokens!465))) lt!51969)))

(declare-fun b!166783 () Bool)

(assert (=> b!166783 (= e!100590 (contains!452 (t!26456 tokens!465) (h!8221 (t!26456 tokens!465))))))

(assert (= (and d!41974 res!75343) b!166783))

(declare-fun b_lambda!3691 () Bool)

(assert (=> (not b_lambda!3691) (not d!41974)))

(declare-fun m!161679 () Bool)

(assert (=> d!41974 m!161679))

(declare-fun m!161681 () Bool)

(assert (=> d!41974 m!161681))

(declare-fun m!161683 () Bool)

(assert (=> d!41974 m!161683))

(declare-fun m!161685 () Bool)

(assert (=> b!166783 m!161685))

(assert (=> b!165344 d!41974))

(declare-fun b!166785 () Bool)

(declare-fun e!100593 () Option!283)

(declare-fun call!7174 () Option!283)

(assert (=> b!166785 (= e!100593 call!7174)))

(declare-fun b!166786 () Bool)

(declare-fun res!75348 () Bool)

(declare-fun e!100592 () Bool)

(assert (=> b!166786 (=> (not res!75348) (not e!100592))))

(declare-fun lt!51971 () Option!283)

(assert (=> b!166786 (= res!75348 (= (++!636 (list!1019 (charsOf!156 (_1!1565 (get!769 lt!51971)))) (_2!1565 (get!769 lt!51971))) (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988)))))

(declare-fun b!166787 () Bool)

(declare-fun res!75350 () Bool)

(assert (=> b!166787 (=> (not res!75350) (not e!100592))))

(assert (=> b!166787 (= res!75350 (= (list!1019 (charsOf!156 (_1!1565 (get!769 lt!51971)))) (originalCharacters!544 (_1!1565 (get!769 lt!51971)))))))

(declare-fun b!166788 () Bool)

(declare-fun res!75349 () Bool)

(assert (=> b!166788 (=> (not res!75349) (not e!100592))))

(assert (=> b!166788 (= res!75349 (< (size!2365 (_2!1565 (get!769 lt!51971))) (size!2365 (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988))))))

(declare-fun d!41976 () Bool)

(declare-fun e!100591 () Bool)

(assert (=> d!41976 e!100591))

(declare-fun res!75347 () Bool)

(assert (=> d!41976 (=> res!75347 e!100591)))

(assert (=> d!41976 (= res!75347 (isEmpty!1166 lt!51971))))

(assert (=> d!41976 (= lt!51971 e!100593)))

(declare-fun c!33357 () Bool)

(assert (=> d!41976 (= c!33357 (and ((_ is Cons!2823) rules!1920) ((_ is Nil!2823) (t!26455 rules!1920))))))

(declare-fun lt!51974 () Unit!2378)

(declare-fun lt!51970 () Unit!2378)

(assert (=> d!41976 (= lt!51974 lt!51970)))

(assert (=> d!41976 (isPrefix!223 (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988) (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988))))

(assert (=> d!41976 (= lt!51970 (lemmaIsPrefixRefl!130 (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988) (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988)))))

(assert (=> d!41976 (rulesValidInductive!108 thiss!17480 rules!1920)))

(assert (=> d!41976 (= (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988)) lt!51971)))

(declare-fun b!166784 () Bool)

(declare-fun res!75346 () Bool)

(assert (=> b!166784 (=> (not res!75346) (not e!100592))))

(assert (=> b!166784 (= res!75346 (= (value!18594 (_1!1565 (get!769 lt!51971))) (apply!401 (transformation!501 (rule!1008 (_1!1565 (get!769 lt!51971)))) (seqFromList!380 (originalCharacters!544 (_1!1565 (get!769 lt!51971)))))))))

(declare-fun b!166789 () Bool)

(declare-fun res!75345 () Bool)

(assert (=> b!166789 (=> (not res!75345) (not e!100592))))

(assert (=> b!166789 (= res!75345 (matchR!79 (regex!501 (rule!1008 (_1!1565 (get!769 lt!51971)))) (list!1019 (charsOf!156 (_1!1565 (get!769 lt!51971))))))))

(declare-fun bm!7169 () Bool)

(assert (=> bm!7169 (= call!7174 (maxPrefixOneRule!67 thiss!17480 (h!8220 rules!1920) (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988)))))

(declare-fun b!166790 () Bool)

(assert (=> b!166790 (= e!100592 (contains!455 rules!1920 (rule!1008 (_1!1565 (get!769 lt!51971)))))))

(declare-fun b!166791 () Bool)

(declare-fun lt!51972 () Option!283)

(declare-fun lt!51973 () Option!283)

(assert (=> b!166791 (= e!100593 (ite (and ((_ is None!282) lt!51972) ((_ is None!282) lt!51973)) None!282 (ite ((_ is None!282) lt!51973) lt!51972 (ite ((_ is None!282) lt!51972) lt!51973 (ite (>= (size!2359 (_1!1565 (v!13705 lt!51972))) (size!2359 (_1!1565 (v!13705 lt!51973)))) lt!51972 lt!51973)))))))

(assert (=> b!166791 (= lt!51972 call!7174)))

(assert (=> b!166791 (= lt!51973 (maxPrefix!123 thiss!17480 (t!26455 rules!1920) (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988)))))

(declare-fun b!166792 () Bool)

(assert (=> b!166792 (= e!100591 e!100592)))

(declare-fun res!75344 () Bool)

(assert (=> b!166792 (=> (not res!75344) (not e!100592))))

(assert (=> b!166792 (= res!75344 (isDefined!135 lt!51971))))

(assert (= (and d!41976 c!33357) b!166785))

(assert (= (and d!41976 (not c!33357)) b!166791))

(assert (= (or b!166785 b!166791) bm!7169))

(assert (= (and d!41976 (not res!75347)) b!166792))

(assert (= (and b!166792 res!75344) b!166787))

(assert (= (and b!166787 res!75350) b!166788))

(assert (= (and b!166788 res!75349) b!166786))

(assert (= (and b!166786 res!75348) b!166784))

(assert (= (and b!166784 res!75346) b!166789))

(assert (= (and b!166789 res!75345) b!166790))

(declare-fun m!161687 () Bool)

(assert (=> b!166787 m!161687))

(declare-fun m!161689 () Bool)

(assert (=> b!166787 m!161689))

(assert (=> b!166787 m!161689))

(declare-fun m!161691 () Bool)

(assert (=> b!166787 m!161691))

(assert (=> b!166789 m!161687))

(assert (=> b!166789 m!161689))

(assert (=> b!166789 m!161689))

(assert (=> b!166789 m!161691))

(assert (=> b!166789 m!161691))

(declare-fun m!161693 () Bool)

(assert (=> b!166789 m!161693))

(declare-fun m!161695 () Bool)

(assert (=> d!41976 m!161695))

(assert (=> d!41976 m!158103))

(assert (=> d!41976 m!158103))

(declare-fun m!161697 () Bool)

(assert (=> d!41976 m!161697))

(assert (=> d!41976 m!158103))

(assert (=> d!41976 m!158103))

(declare-fun m!161699 () Bool)

(assert (=> d!41976 m!161699))

(assert (=> d!41976 m!157265))

(assert (=> bm!7169 m!158103))

(declare-fun m!161701 () Bool)

(assert (=> bm!7169 m!161701))

(assert (=> b!166784 m!161687))

(declare-fun m!161703 () Bool)

(assert (=> b!166784 m!161703))

(assert (=> b!166784 m!161703))

(declare-fun m!161705 () Bool)

(assert (=> b!166784 m!161705))

(assert (=> b!166791 m!158103))

(declare-fun m!161707 () Bool)

(assert (=> b!166791 m!161707))

(declare-fun m!161709 () Bool)

(assert (=> b!166792 m!161709))

(assert (=> b!166786 m!161687))

(assert (=> b!166786 m!161689))

(assert (=> b!166786 m!161689))

(assert (=> b!166786 m!161691))

(assert (=> b!166786 m!161691))

(declare-fun m!161711 () Bool)

(assert (=> b!166786 m!161711))

(assert (=> b!166788 m!161687))

(declare-fun m!161713 () Bool)

(assert (=> b!166788 m!161713))

(assert (=> b!166788 m!158103))

(declare-fun m!161715 () Bool)

(assert (=> b!166788 m!161715))

(assert (=> b!166790 m!161687))

(declare-fun m!161717 () Bool)

(assert (=> b!166790 m!161717))

(assert (=> b!165344 d!41976))

(declare-fun b!166795 () Bool)

(declare-fun res!75351 () Bool)

(declare-fun e!100594 () Bool)

(assert (=> b!166795 (=> (not res!75351) (not e!100594))))

(declare-fun lt!51975 () List!2832)

(assert (=> b!166795 (= res!75351 (= (size!2365 lt!51975) (+ (size!2365 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465))))) (size!2365 lt!50988))))))

(declare-fun d!41978 () Bool)

(assert (=> d!41978 e!100594))

(declare-fun res!75352 () Bool)

(assert (=> d!41978 (=> (not res!75352) (not e!100594))))

(assert (=> d!41978 (= res!75352 (= (content!391 lt!51975) ((_ map or) (content!391 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465))))) (content!391 lt!50988))))))

(declare-fun e!100595 () List!2832)

(assert (=> d!41978 (= lt!51975 e!100595)))

(declare-fun c!33358 () Bool)

(assert (=> d!41978 (= c!33358 ((_ is Nil!2822) (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465))))))))

(assert (=> d!41978 (= (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) lt!50988) lt!51975)))

(declare-fun b!166794 () Bool)

(assert (=> b!166794 (= e!100595 (Cons!2822 (h!8219 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465))))) (++!636 (t!26454 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465))))) lt!50988)))))

(declare-fun b!166793 () Bool)

(assert (=> b!166793 (= e!100595 lt!50988)))

(declare-fun b!166796 () Bool)

(assert (=> b!166796 (= e!100594 (or (not (= lt!50988 Nil!2822)) (= lt!51975 (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))))))))

(assert (= (and d!41978 c!33358) b!166793))

(assert (= (and d!41978 (not c!33358)) b!166794))

(assert (= (and d!41978 res!75352) b!166795))

(assert (= (and b!166795 res!75351) b!166796))

(declare-fun m!161719 () Bool)

(assert (=> b!166795 m!161719))

(assert (=> b!166795 m!158099))

(declare-fun m!161721 () Bool)

(assert (=> b!166795 m!161721))

(assert (=> b!166795 m!161351))

(declare-fun m!161723 () Bool)

(assert (=> d!41978 m!161723))

(assert (=> d!41978 m!158099))

(declare-fun m!161725 () Bool)

(assert (=> d!41978 m!161725))

(assert (=> d!41978 m!161357))

(declare-fun m!161727 () Bool)

(assert (=> b!166794 m!161727))

(assert (=> b!165344 d!41978))

(declare-fun bs!16194 () Bool)

(declare-fun b!166804 () Bool)

(assert (= bs!16194 (and b!166804 b!165658)))

(declare-fun lambda!4639 () Int)

(assert (=> bs!16194 (= lambda!4639 lambda!4600)))

(declare-fun bs!16195 () Bool)

(assert (= bs!16195 (and b!166804 b!166410)))

(assert (=> bs!16195 (= lambda!4639 lambda!4631)))

(declare-fun bs!16196 () Bool)

(assert (= bs!16196 (and b!166804 b!165351)))

(assert (=> bs!16196 (= lambda!4639 lambda!4592)))

(declare-fun bs!16197 () Bool)

(assert (= bs!16197 (and b!166804 d!41086)))

(assert (=> bs!16197 (not (= lambda!4639 lambda!4591))))

(declare-fun bs!16198 () Bool)

(assert (= bs!16198 (and b!166804 d!40916)))

(assert (=> bs!16198 (not (= lambda!4639 lambda!4563))))

(declare-fun bs!16199 () Bool)

(assert (= bs!16199 (and b!166804 b!165344)))

(assert (=> bs!16199 (= lambda!4639 lambda!4590)))

(declare-fun bs!16200 () Bool)

(assert (= bs!16200 (and b!166804 b!166536)))

(assert (=> bs!16200 (= lambda!4639 lambda!4636)))

(declare-fun bs!16201 () Bool)

(assert (= bs!16201 (and b!166804 d!41270)))

(assert (=> bs!16201 (= lambda!4639 lambda!4611)))

(declare-fun bs!16202 () Bool)

(assert (= bs!16202 (and b!166804 d!41668)))

(assert (=> bs!16202 (not (= lambda!4639 lambda!4630))))

(declare-fun bs!16203 () Bool)

(assert (= bs!16203 (and b!166804 d!41232)))

(assert (=> bs!16203 (not (= lambda!4639 lambda!4599))))

(declare-fun bs!16204 () Bool)

(assert (= bs!16204 (and b!166804 b!164997)))

(assert (=> bs!16204 (= lambda!4639 lambda!4564)))

(declare-fun bs!16205 () Bool)

(assert (= bs!16205 (and b!166804 b!165075)))

(assert (=> bs!16205 (= lambda!4639 lambda!4573)))

(declare-fun bs!16206 () Bool)

(assert (= bs!16206 (and b!166804 b!164839)))

(assert (=> bs!16206 (not (= lambda!4639 lambda!4551))))

(declare-fun bs!16207 () Bool)

(assert (= bs!16207 (and b!166804 b!164821)))

(assert (=> bs!16207 (= lambda!4639 lambda!4552)))

(declare-fun bs!16208 () Bool)

(assert (= bs!16208 (and b!166804 d!41070)))

(assert (=> bs!16208 (= lambda!4639 lambda!4589)))

(declare-fun b!166807 () Bool)

(declare-fun e!100602 () Bool)

(assert (=> b!166807 (= e!100602 true)))

(declare-fun b!166806 () Bool)

(declare-fun e!100601 () Bool)

(assert (=> b!166806 (= e!100601 e!100602)))

(declare-fun b!166805 () Bool)

(declare-fun e!100600 () Bool)

(assert (=> b!166805 (= e!100600 e!100601)))

(assert (=> b!166804 e!100600))

(assert (= b!166806 b!166807))

(assert (= b!166805 b!166806))

(assert (= (and b!166804 ((_ is Cons!2823) rules!1920)) b!166805))

(assert (=> b!166807 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4639))))

(assert (=> b!166807 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4639))))

(assert (=> b!166804 true))

(declare-fun b!166797 () Bool)

(declare-fun c!33362 () Bool)

(declare-fun lt!51981 () Option!283)

(assert (=> b!166797 (= c!33362 (and ((_ is Some!282) lt!51981) (not (= (_1!1565 (v!13705 lt!51981)) (h!8221 (t!26456 (t!26456 tokens!465)))))))))

(declare-fun e!100596 () List!2832)

(declare-fun e!100599 () List!2832)

(assert (=> b!166797 (= e!100596 e!100599)))

(declare-fun b!166798 () Bool)

(declare-fun e!100598 () BalanceConc!1656)

(declare-fun call!7175 () BalanceConc!1656)

(assert (=> b!166798 (= e!100598 call!7175)))

(declare-fun b!166799 () Bool)

(assert (=> b!166799 (= e!100598 (charsOf!156 separatorToken!170))))

(declare-fun bm!7170 () Bool)

(declare-fun call!7179 () List!2832)

(declare-fun call!7177 () List!2832)

(declare-fun c!33361 () Bool)

(declare-fun lt!51978 () List!2832)

(declare-fun call!7176 () List!2832)

(assert (=> bm!7170 (= call!7179 (++!636 call!7177 (ite c!33361 lt!51978 call!7176)))))

(declare-fun b!166800 () Bool)

(declare-fun e!100597 () List!2832)

(assert (=> b!166800 (= e!100597 Nil!2822)))

(declare-fun b!166801 () Bool)

(assert (=> b!166801 (= e!100599 Nil!2822)))

(assert (=> b!166801 (= (print!118 thiss!17480 (singletonSeq!53 (h!8221 (t!26456 (t!26456 tokens!465))))) (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 (t!26456 (t!26456 tokens!465)))) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!51977 () Unit!2378)

(declare-fun Unit!2428 () Unit!2378)

(assert (=> b!166801 (= lt!51977 Unit!2428)))

(declare-fun lt!51979 () Unit!2378)

(assert (=> b!166801 (= lt!51979 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 call!7176 lt!51978))))

(assert (=> b!166801 false))

(declare-fun lt!51976 () Unit!2378)

(declare-fun Unit!2429 () Unit!2378)

(assert (=> b!166801 (= lt!51976 Unit!2429)))

(declare-fun b!166802 () Bool)

(assert (=> b!166802 (= e!100596 call!7179)))

(declare-fun b!166803 () Bool)

(assert (=> b!166803 (= e!100599 (++!636 call!7179 lt!51978))))

(declare-fun bm!7171 () Bool)

(declare-fun call!7178 () BalanceConc!1656)

(assert (=> bm!7171 (= call!7178 (charsOf!156 (h!8221 (t!26456 (t!26456 tokens!465)))))))

(declare-fun bm!7173 () Bool)

(assert (=> bm!7173 (= call!7176 (list!1019 e!100598))))

(declare-fun c!33359 () Bool)

(assert (=> bm!7173 (= c!33359 c!33362)))

(assert (=> b!166804 (= e!100597 e!100596)))

(declare-fun lt!51980 () Unit!2378)

(assert (=> b!166804 (= lt!51980 (forallContained!68 (t!26456 (t!26456 tokens!465)) lambda!4639 (h!8221 (t!26456 (t!26456 tokens!465)))))))

(assert (=> b!166804 (= lt!51978 (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (t!26456 (t!26456 (t!26456 tokens!465))) separatorToken!170))))

(assert (=> b!166804 (= lt!51981 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 (charsOf!156 (h!8221 (t!26456 (t!26456 tokens!465))))) lt!51978)))))

(assert (=> b!166804 (= c!33361 (and ((_ is Some!282) lt!51981) (= (_1!1565 (v!13705 lt!51981)) (h!8221 (t!26456 (t!26456 tokens!465))))))))

(declare-fun bm!7174 () Bool)

(assert (=> bm!7174 (= call!7175 call!7178)))

(declare-fun d!41980 () Bool)

(declare-fun c!33360 () Bool)

(assert (=> d!41980 (= c!33360 ((_ is Cons!2824) (t!26456 (t!26456 tokens!465))))))

(assert (=> d!41980 (= (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (t!26456 (t!26456 tokens!465)) separatorToken!170) e!100597)))

(declare-fun bm!7172 () Bool)

(assert (=> bm!7172 (= call!7177 (list!1019 (ite c!33361 call!7178 call!7175)))))

(assert (= (and d!41980 c!33360) b!166804))

(assert (= (and d!41980 (not c!33360)) b!166800))

(assert (= (and b!166804 c!33361) b!166802))

(assert (= (and b!166804 (not c!33361)) b!166797))

(assert (= (and b!166797 c!33362) b!166803))

(assert (= (and b!166797 (not c!33362)) b!166801))

(assert (= (or b!166803 b!166801) bm!7174))

(assert (= (or b!166803 b!166801) bm!7173))

(assert (= (and bm!7173 c!33359) b!166799))

(assert (= (and bm!7173 (not c!33359)) b!166798))

(assert (= (or b!166802 bm!7174) bm!7171))

(assert (= (or b!166802 b!166803) bm!7172))

(assert (= (or b!166802 b!166803) bm!7170))

(declare-fun m!161729 () Bool)

(assert (=> b!166801 m!161729))

(assert (=> b!166801 m!161729))

(declare-fun m!161731 () Bool)

(assert (=> b!166801 m!161731))

(assert (=> b!166801 m!161729))

(declare-fun m!161733 () Bool)

(assert (=> b!166801 m!161733))

(declare-fun m!161735 () Bool)

(assert (=> b!166801 m!161735))

(declare-fun m!161737 () Bool)

(assert (=> bm!7171 m!161737))

(declare-fun m!161739 () Bool)

(assert (=> b!166803 m!161739))

(declare-fun m!161741 () Bool)

(assert (=> bm!7170 m!161741))

(assert (=> b!166799 m!157281))

(declare-fun m!161743 () Bool)

(assert (=> bm!7172 m!161743))

(declare-fun m!161745 () Bool)

(assert (=> bm!7173 m!161745))

(declare-fun m!161747 () Bool)

(assert (=> b!166804 m!161747))

(assert (=> b!166804 m!161737))

(assert (=> b!166804 m!161737))

(declare-fun m!161749 () Bool)

(assert (=> b!166804 m!161749))

(declare-fun m!161751 () Bool)

(assert (=> b!166804 m!161751))

(declare-fun m!161753 () Bool)

(assert (=> b!166804 m!161753))

(declare-fun m!161755 () Bool)

(assert (=> b!166804 m!161755))

(assert (=> b!166804 m!161749))

(assert (=> b!166804 m!161753))

(assert (=> b!165344 d!41980))

(declare-fun d!41982 () Bool)

(assert (=> d!41982 (= (list!1019 (charsOf!156 (h!8221 (t!26456 tokens!465)))) (list!1022 (c!32900 (charsOf!156 (h!8221 (t!26456 tokens!465))))))))

(declare-fun bs!16209 () Bool)

(assert (= bs!16209 d!41982))

(declare-fun m!161757 () Bool)

(assert (=> bs!16209 m!161757))

(assert (=> b!165344 d!41982))

(assert (=> b!165344 d!41630))

(declare-fun b!166810 () Bool)

(declare-fun res!75353 () Bool)

(declare-fun e!100603 () Bool)

(assert (=> b!166810 (=> (not res!75353) (not e!100603))))

(declare-fun lt!51982 () List!2832)

(assert (=> b!166810 (= res!75353 (= (size!2365 lt!51982) (+ (size!2365 (t!26454 lt!50724)) (size!2365 lt!50709))))))

(declare-fun d!41984 () Bool)

(assert (=> d!41984 e!100603))

(declare-fun res!75354 () Bool)

(assert (=> d!41984 (=> (not res!75354) (not e!100603))))

(assert (=> d!41984 (= res!75354 (= (content!391 lt!51982) ((_ map or) (content!391 (t!26454 lt!50724)) (content!391 lt!50709))))))

(declare-fun e!100604 () List!2832)

(assert (=> d!41984 (= lt!51982 e!100604)))

(declare-fun c!33363 () Bool)

(assert (=> d!41984 (= c!33363 ((_ is Nil!2822) (t!26454 lt!50724)))))

(assert (=> d!41984 (= (++!636 (t!26454 lt!50724) lt!50709) lt!51982)))

(declare-fun b!166809 () Bool)

(assert (=> b!166809 (= e!100604 (Cons!2822 (h!8219 (t!26454 lt!50724)) (++!636 (t!26454 (t!26454 lt!50724)) lt!50709)))))

(declare-fun b!166808 () Bool)

(assert (=> b!166808 (= e!100604 lt!50709)))

(declare-fun b!166811 () Bool)

(assert (=> b!166811 (= e!100603 (or (not (= lt!50709 Nil!2822)) (= lt!51982 (t!26454 lt!50724))))))

(assert (= (and d!41984 c!33363) b!166808))

(assert (= (and d!41984 (not c!33363)) b!166809))

(assert (= (and d!41984 res!75354) b!166810))

(assert (= (and b!166810 res!75353) b!166811))

(declare-fun m!161759 () Bool)

(assert (=> b!166810 m!161759))

(assert (=> b!166810 m!158539))

(assert (=> b!166810 m!158015))

(declare-fun m!161761 () Bool)

(assert (=> d!41984 m!161761))

(assert (=> d!41984 m!161095))

(assert (=> d!41984 m!158021))

(declare-fun m!161763 () Bool)

(assert (=> b!166809 m!161763))

(assert (=> b!165315 d!41984))

(declare-fun b!166824 () Bool)

(declare-fun res!75370 () Bool)

(declare-fun e!100610 () Bool)

(assert (=> b!166824 (=> (not res!75370) (not e!100610))))

(assert (=> b!166824 (= res!75370 (isBalanced!230 (right!2464 (c!32902 lt!50925))))))

(declare-fun b!166825 () Bool)

(declare-fun e!100609 () Bool)

(assert (=> b!166825 (= e!100609 e!100610)))

(declare-fun res!75368 () Bool)

(assert (=> b!166825 (=> (not res!75368) (not e!100610))))

(declare-fun height!91 (Conc!825) Int)

(assert (=> b!166825 (= res!75368 (<= (- 1) (- (height!91 (left!2134 (c!32902 lt!50925))) (height!91 (right!2464 (c!32902 lt!50925))))))))

(declare-fun d!41986 () Bool)

(declare-fun res!75369 () Bool)

(assert (=> d!41986 (=> res!75369 e!100609)))

(assert (=> d!41986 (= res!75369 (not ((_ is Node!825) (c!32902 lt!50925))))))

(assert (=> d!41986 (= (isBalanced!230 (c!32902 lt!50925)) e!100609)))

(declare-fun b!166826 () Bool)

(assert (=> b!166826 (= e!100610 (not (isEmpty!1162 (right!2464 (c!32902 lt!50925)))))))

(declare-fun b!166827 () Bool)

(declare-fun res!75372 () Bool)

(assert (=> b!166827 (=> (not res!75372) (not e!100610))))

(assert (=> b!166827 (= res!75372 (isBalanced!230 (left!2134 (c!32902 lt!50925))))))

(declare-fun b!166828 () Bool)

(declare-fun res!75367 () Bool)

(assert (=> b!166828 (=> (not res!75367) (not e!100610))))

(assert (=> b!166828 (= res!75367 (<= (- (height!91 (left!2134 (c!32902 lt!50925))) (height!91 (right!2464 (c!32902 lt!50925)))) 1))))

(declare-fun b!166829 () Bool)

(declare-fun res!75371 () Bool)

(assert (=> b!166829 (=> (not res!75371) (not e!100610))))

(assert (=> b!166829 (= res!75371 (not (isEmpty!1162 (left!2134 (c!32902 lt!50925)))))))

(assert (= (and d!41986 (not res!75369)) b!166825))

(assert (= (and b!166825 res!75368) b!166828))

(assert (= (and b!166828 res!75367) b!166827))

(assert (= (and b!166827 res!75372) b!166824))

(assert (= (and b!166824 res!75370) b!166829))

(assert (= (and b!166829 res!75371) b!166826))

(declare-fun m!161765 () Bool)

(assert (=> b!166824 m!161765))

(declare-fun m!161767 () Bool)

(assert (=> b!166829 m!161767))

(declare-fun m!161769 () Bool)

(assert (=> b!166825 m!161769))

(declare-fun m!161771 () Bool)

(assert (=> b!166825 m!161771))

(assert (=> b!166828 m!161769))

(assert (=> b!166828 m!161771))

(declare-fun m!161773 () Bool)

(assert (=> b!166826 m!161773))

(declare-fun m!161775 () Bool)

(assert (=> b!166827 m!161775))

(assert (=> b!165117 d!41986))

(declare-fun d!41988 () Bool)

(assert (=> d!41988 (= (dropList!82 lt!50710 0) (drop!135 (list!1027 (c!32902 lt!50710)) 0))))

(declare-fun bs!16210 () Bool)

(assert (= bs!16210 d!41988))

(assert (=> bs!16210 m!159243))

(assert (=> bs!16210 m!159243))

(declare-fun m!161777 () Bool)

(assert (=> bs!16210 m!161777))

(assert (=> d!40916 d!41988))

(declare-fun d!41990 () Bool)

(assert (=> d!41990 (forall!533 (dropList!82 lt!50710 0) lambda!4563)))

(declare-fun lt!51983 () Unit!2378)

(assert (=> d!41990 (= lt!51983 (choose!1817 (list!1023 lt!50710) (dropList!82 lt!50710 0) lambda!4563))))

(assert (=> d!41990 (forall!533 (list!1023 lt!50710) lambda!4563)))

(assert (=> d!41990 (= (lemmaContentSubsetPreservesForall!26 (list!1023 lt!50710) (dropList!82 lt!50710 0) lambda!4563) lt!51983)))

(declare-fun bs!16211 () Bool)

(assert (= bs!16211 d!41990))

(assert (=> bs!16211 m!157513))

(declare-fun m!161779 () Bool)

(assert (=> bs!16211 m!161779))

(assert (=> bs!16211 m!157519))

(assert (=> bs!16211 m!157513))

(declare-fun m!161781 () Bool)

(assert (=> bs!16211 m!161781))

(assert (=> bs!16211 m!157519))

(declare-fun m!161783 () Bool)

(assert (=> bs!16211 m!161783))

(assert (=> d!40916 d!41990))

(assert (=> d!40916 d!41964))

(assert (=> d!40916 d!41348))

(declare-fun bs!16212 () Bool)

(declare-fun b!166837 () Bool)

(assert (= bs!16212 (and b!166837 b!165658)))

(declare-fun lambda!4640 () Int)

(assert (=> bs!16212 (= lambda!4640 lambda!4600)))

(declare-fun bs!16213 () Bool)

(assert (= bs!16213 (and b!166837 b!166410)))

(assert (=> bs!16213 (= lambda!4640 lambda!4631)))

(declare-fun bs!16214 () Bool)

(assert (= bs!16214 (and b!166837 b!165351)))

(assert (=> bs!16214 (= lambda!4640 lambda!4592)))

(declare-fun bs!16215 () Bool)

(assert (= bs!16215 (and b!166837 d!41086)))

(assert (=> bs!16215 (not (= lambda!4640 lambda!4591))))

(declare-fun bs!16216 () Bool)

(assert (= bs!16216 (and b!166837 d!40916)))

(assert (=> bs!16216 (not (= lambda!4640 lambda!4563))))

(declare-fun bs!16217 () Bool)

(assert (= bs!16217 (and b!166837 b!165344)))

(assert (=> bs!16217 (= lambda!4640 lambda!4590)))

(declare-fun bs!16218 () Bool)

(assert (= bs!16218 (and b!166837 b!166536)))

(assert (=> bs!16218 (= lambda!4640 lambda!4636)))

(declare-fun bs!16219 () Bool)

(assert (= bs!16219 (and b!166837 d!41270)))

(assert (=> bs!16219 (= lambda!4640 lambda!4611)))

(declare-fun bs!16220 () Bool)

(assert (= bs!16220 (and b!166837 b!166804)))

(assert (=> bs!16220 (= lambda!4640 lambda!4639)))

(declare-fun bs!16221 () Bool)

(assert (= bs!16221 (and b!166837 d!41668)))

(assert (=> bs!16221 (not (= lambda!4640 lambda!4630))))

(declare-fun bs!16222 () Bool)

(assert (= bs!16222 (and b!166837 d!41232)))

(assert (=> bs!16222 (not (= lambda!4640 lambda!4599))))

(declare-fun bs!16223 () Bool)

(assert (= bs!16223 (and b!166837 b!164997)))

(assert (=> bs!16223 (= lambda!4640 lambda!4564)))

(declare-fun bs!16224 () Bool)

(assert (= bs!16224 (and b!166837 b!165075)))

(assert (=> bs!16224 (= lambda!4640 lambda!4573)))

(declare-fun bs!16225 () Bool)

(assert (= bs!16225 (and b!166837 b!164839)))

(assert (=> bs!16225 (not (= lambda!4640 lambda!4551))))

(declare-fun bs!16226 () Bool)

(assert (= bs!16226 (and b!166837 b!164821)))

(assert (=> bs!16226 (= lambda!4640 lambda!4552)))

(declare-fun bs!16227 () Bool)

(assert (= bs!16227 (and b!166837 d!41070)))

(assert (=> bs!16227 (= lambda!4640 lambda!4589)))

(declare-fun b!166840 () Bool)

(declare-fun e!100617 () Bool)

(assert (=> b!166840 (= e!100617 true)))

(declare-fun b!166839 () Bool)

(declare-fun e!100616 () Bool)

(assert (=> b!166839 (= e!100616 e!100617)))

(declare-fun b!166838 () Bool)

(declare-fun e!100615 () Bool)

(assert (=> b!166838 (= e!100615 e!100616)))

(assert (=> b!166837 e!100615))

(assert (= b!166839 b!166840))

(assert (= b!166838 b!166839))

(assert (= (and b!166837 ((_ is Cons!2823) rules!1920)) b!166838))

(assert (=> b!166840 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4640))))

(assert (=> b!166840 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 rules!1920)))) (dynLambda!1020 order!1459 lambda!4640))))

(assert (=> b!166837 true))

(declare-fun b!166830 () Bool)

(declare-fun c!33367 () Bool)

(declare-fun lt!51989 () Option!283)

(assert (=> b!166830 (= c!33367 (and ((_ is Some!282) lt!51989) (not (= (_1!1565 (v!13705 lt!51989)) (h!8221 (dropList!82 lt!50710 0))))))))

(declare-fun e!100611 () List!2832)

(declare-fun e!100614 () List!2832)

(assert (=> b!166830 (= e!100611 e!100614)))

(declare-fun b!166831 () Bool)

(declare-fun e!100613 () BalanceConc!1656)

(declare-fun call!7180 () BalanceConc!1656)

(assert (=> b!166831 (= e!100613 call!7180)))

(declare-fun b!166832 () Bool)

(assert (=> b!166832 (= e!100613 (charsOf!156 separatorToken!170))))

(declare-fun call!7182 () List!2832)

(declare-fun call!7181 () List!2832)

(declare-fun call!7184 () List!2832)

(declare-fun c!33366 () Bool)

(declare-fun lt!51986 () List!2832)

(declare-fun bm!7175 () Bool)

(assert (=> bm!7175 (= call!7184 (++!636 call!7182 (ite c!33366 lt!51986 call!7181)))))

(declare-fun b!166833 () Bool)

(declare-fun e!100612 () List!2832)

(assert (=> b!166833 (= e!100612 Nil!2822)))

(declare-fun b!166834 () Bool)

(assert (=> b!166834 (= e!100614 Nil!2822)))

(assert (=> b!166834 (= (print!118 thiss!17480 (singletonSeq!53 (h!8221 (dropList!82 lt!50710 0)))) (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 (dropList!82 lt!50710 0))) 0 (BalanceConc!1657 Empty!824)))))

(declare-fun lt!51985 () Unit!2378)

(declare-fun Unit!2432 () Unit!2378)

(assert (=> b!166834 (= lt!51985 Unit!2432)))

(declare-fun lt!51987 () Unit!2378)

(assert (=> b!166834 (= lt!51987 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 call!7181 lt!51986))))

(assert (=> b!166834 false))

(declare-fun lt!51984 () Unit!2378)

(declare-fun Unit!2433 () Unit!2378)

(assert (=> b!166834 (= lt!51984 Unit!2433)))

(declare-fun b!166835 () Bool)

(assert (=> b!166835 (= e!100611 call!7184)))

(declare-fun b!166836 () Bool)

(assert (=> b!166836 (= e!100614 (++!636 call!7184 lt!51986))))

(declare-fun bm!7176 () Bool)

(declare-fun call!7183 () BalanceConc!1656)

(assert (=> bm!7176 (= call!7183 (charsOf!156 (h!8221 (dropList!82 lt!50710 0))))))

(declare-fun bm!7178 () Bool)

(assert (=> bm!7178 (= call!7181 (list!1019 e!100613))))

(declare-fun c!33364 () Bool)

(assert (=> bm!7178 (= c!33364 c!33367)))

(assert (=> b!166837 (= e!100612 e!100611)))

(declare-fun lt!51988 () Unit!2378)

(assert (=> b!166837 (= lt!51988 (forallContained!68 (dropList!82 lt!50710 0) lambda!4640 (h!8221 (dropList!82 lt!50710 0))))))

(assert (=> b!166837 (= lt!51986 (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (t!26456 (dropList!82 lt!50710 0)) separatorToken!170))))

(assert (=> b!166837 (= lt!51989 (maxPrefix!123 thiss!17480 rules!1920 (++!636 (list!1019 (charsOf!156 (h!8221 (dropList!82 lt!50710 0)))) lt!51986)))))

(assert (=> b!166837 (= c!33366 (and ((_ is Some!282) lt!51989) (= (_1!1565 (v!13705 lt!51989)) (h!8221 (dropList!82 lt!50710 0)))))))

(declare-fun bm!7179 () Bool)

(assert (=> bm!7179 (= call!7180 call!7183)))

(declare-fun d!41992 () Bool)

(declare-fun c!33365 () Bool)

(assert (=> d!41992 (= c!33365 ((_ is Cons!2824) (dropList!82 lt!50710 0)))))

(assert (=> d!41992 (= (printWithSeparatorTokenWhenNeededList!80 thiss!17480 rules!1920 (dropList!82 lt!50710 0) separatorToken!170) e!100612)))

(declare-fun bm!7177 () Bool)

(assert (=> bm!7177 (= call!7182 (list!1019 (ite c!33366 call!7183 call!7180)))))

(assert (= (and d!41992 c!33365) b!166837))

(assert (= (and d!41992 (not c!33365)) b!166833))

(assert (= (and b!166837 c!33366) b!166835))

(assert (= (and b!166837 (not c!33366)) b!166830))

(assert (= (and b!166830 c!33367) b!166836))

(assert (= (and b!166830 (not c!33367)) b!166834))

(assert (= (or b!166836 b!166834) bm!7179))

(assert (= (or b!166836 b!166834) bm!7178))

(assert (= (and bm!7178 c!33364) b!166832))

(assert (= (and bm!7178 (not c!33364)) b!166831))

(assert (= (or b!166835 bm!7179) bm!7176))

(assert (= (or b!166835 b!166836) bm!7177))

(assert (= (or b!166835 b!166836) bm!7175))

(declare-fun m!161785 () Bool)

(assert (=> b!166834 m!161785))

(assert (=> b!166834 m!161785))

(declare-fun m!161787 () Bool)

(assert (=> b!166834 m!161787))

(assert (=> b!166834 m!161785))

(declare-fun m!161789 () Bool)

(assert (=> b!166834 m!161789))

(declare-fun m!161791 () Bool)

(assert (=> b!166834 m!161791))

(declare-fun m!161793 () Bool)

(assert (=> bm!7176 m!161793))

(declare-fun m!161795 () Bool)

(assert (=> b!166836 m!161795))

(declare-fun m!161797 () Bool)

(assert (=> bm!7175 m!161797))

(assert (=> b!166832 m!157281))

(declare-fun m!161799 () Bool)

(assert (=> bm!7177 m!161799))

(declare-fun m!161801 () Bool)

(assert (=> bm!7178 m!161801))

(assert (=> b!166837 m!157513))

(declare-fun m!161803 () Bool)

(assert (=> b!166837 m!161803))

(assert (=> b!166837 m!161793))

(assert (=> b!166837 m!161793))

(declare-fun m!161805 () Bool)

(assert (=> b!166837 m!161805))

(declare-fun m!161807 () Bool)

(assert (=> b!166837 m!161807))

(declare-fun m!161809 () Bool)

(assert (=> b!166837 m!161809))

(declare-fun m!161811 () Bool)

(assert (=> b!166837 m!161811))

(assert (=> b!166837 m!161805))

(assert (=> b!166837 m!161809))

(assert (=> d!40916 d!41992))

(declare-fun d!41994 () Bool)

(assert (=> d!41994 (= (list!1019 lt!50818) (list!1022 (c!32900 lt!50818)))))

(declare-fun bs!16228 () Bool)

(assert (= bs!16228 d!41994))

(declare-fun m!161813 () Bool)

(assert (=> bs!16228 m!161813))

(assert (=> d!40916 d!41994))

(declare-fun b!166843 () Bool)

(declare-fun res!75373 () Bool)

(declare-fun e!100618 () Bool)

(assert (=> b!166843 (=> (not res!75373) (not e!100618))))

(declare-fun lt!51990 () List!2832)

(assert (=> b!166843 (= res!75373 (= (size!2365 lt!51990) (+ (size!2365 (t!26454 lt!50724)) (size!2365 lt!50722))))))

(declare-fun d!41996 () Bool)

(assert (=> d!41996 e!100618))

(declare-fun res!75374 () Bool)

(assert (=> d!41996 (=> (not res!75374) (not e!100618))))

(assert (=> d!41996 (= res!75374 (= (content!391 lt!51990) ((_ map or) (content!391 (t!26454 lt!50724)) (content!391 lt!50722))))))

(declare-fun e!100619 () List!2832)

(assert (=> d!41996 (= lt!51990 e!100619)))

(declare-fun c!33368 () Bool)

(assert (=> d!41996 (= c!33368 ((_ is Nil!2822) (t!26454 lt!50724)))))

(assert (=> d!41996 (= (++!636 (t!26454 lt!50724) lt!50722) lt!51990)))

(declare-fun b!166842 () Bool)

(assert (=> b!166842 (= e!100619 (Cons!2822 (h!8219 (t!26454 lt!50724)) (++!636 (t!26454 (t!26454 lt!50724)) lt!50722)))))

(declare-fun b!166841 () Bool)

(assert (=> b!166841 (= e!100619 lt!50722)))

(declare-fun b!166844 () Bool)

(assert (=> b!166844 (= e!100618 (or (not (= lt!50722 Nil!2822)) (= lt!51990 (t!26454 lt!50724))))))

(assert (= (and d!41996 c!33368) b!166841))

(assert (= (and d!41996 (not c!33368)) b!166842))

(assert (= (and d!41996 res!75374) b!166843))

(assert (= (and b!166843 res!75373) b!166844))

(declare-fun m!161815 () Bool)

(assert (=> b!166843 m!161815))

(assert (=> b!166843 m!158539))

(assert (=> b!166843 m!158175))

(declare-fun m!161817 () Bool)

(assert (=> d!41996 m!161817))

(assert (=> d!41996 m!161095))

(assert (=> d!41996 m!158179))

(declare-fun m!161819 () Bool)

(assert (=> b!166842 m!161819))

(assert (=> b!165363 d!41996))

(declare-fun d!41998 () Bool)

(declare-fun c!33369 () Bool)

(assert (=> d!41998 (= c!33369 ((_ is Nil!2822) lt!50976))))

(declare-fun e!100620 () (InoxSet C!2372))

(assert (=> d!41998 (= (content!391 lt!50976) e!100620)))

(declare-fun b!166845 () Bool)

(assert (=> b!166845 (= e!100620 ((as const (Array C!2372 Bool)) false))))

(declare-fun b!166846 () Bool)

(assert (=> b!166846 (= e!100620 ((_ map or) (store ((as const (Array C!2372 Bool)) false) (h!8219 lt!50976) true) (content!391 (t!26454 lt!50976))))))

(assert (= (and d!41998 c!33369) b!166845))

(assert (= (and d!41998 (not c!33369)) b!166846))

(declare-fun m!161821 () Bool)

(assert (=> b!166846 m!161821))

(declare-fun m!161823 () Bool)

(assert (=> b!166846 m!161823))

(assert (=> d!41060 d!41998))

(assert (=> d!41060 d!41780))

(assert (=> d!41060 d!41598))

(assert (=> b!165072 d!41852))

(assert (=> b!165072 d!41004))

(declare-fun d!42000 () Bool)

(declare-fun lt!51996 () BalanceConc!1656)

(assert (=> d!42000 (= (list!1019 lt!51996) (printListTailRec!50 thiss!17480 (dropList!82 (singletonSeq!53 (h!8221 tokens!465)) 0) (list!1019 (BalanceConc!1657 Empty!824))))))

(declare-fun e!100621 () BalanceConc!1656)

(assert (=> d!42000 (= lt!51996 e!100621)))

(declare-fun c!33370 () Bool)

(assert (=> d!42000 (= c!33370 (>= 0 (size!2362 (singletonSeq!53 (h!8221 tokens!465)))))))

(declare-fun e!100622 () Bool)

(assert (=> d!42000 e!100622))

(declare-fun res!75375 () Bool)

(assert (=> d!42000 (=> (not res!75375) (not e!100622))))

(assert (=> d!42000 (= res!75375 (>= 0 0))))

(assert (=> d!42000 (= (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)) 0 (BalanceConc!1657 Empty!824)) lt!51996)))

(declare-fun b!166847 () Bool)

(assert (=> b!166847 (= e!100622 (<= 0 (size!2362 (singletonSeq!53 (h!8221 tokens!465)))))))

(declare-fun b!166848 () Bool)

(assert (=> b!166848 (= e!100621 (BalanceConc!1657 Empty!824))))

(declare-fun b!166849 () Bool)

(assert (=> b!166849 (= e!100621 (printTailRec!81 thiss!17480 (singletonSeq!53 (h!8221 tokens!465)) (+ 0 1) (++!638 (BalanceConc!1657 Empty!824) (charsOf!156 (apply!398 (singletonSeq!53 (h!8221 tokens!465)) 0)))))))

(declare-fun lt!51997 () List!2834)

(assert (=> b!166849 (= lt!51997 (list!1023 (singletonSeq!53 (h!8221 tokens!465))))))

(declare-fun lt!51993 () Unit!2378)

(assert (=> b!166849 (= lt!51993 (lemmaDropApply!122 lt!51997 0))))

(assert (=> b!166849 (= (head!596 (drop!135 lt!51997 0)) (apply!397 lt!51997 0))))

(declare-fun lt!51994 () Unit!2378)

(assert (=> b!166849 (= lt!51994 lt!51993)))

(declare-fun lt!51991 () List!2834)

(assert (=> b!166849 (= lt!51991 (list!1023 (singletonSeq!53 (h!8221 tokens!465))))))

(declare-fun lt!51995 () Unit!2378)

(assert (=> b!166849 (= lt!51995 (lemmaDropTail!114 lt!51991 0))))

(assert (=> b!166849 (= (tail!336 (drop!135 lt!51991 0)) (drop!135 lt!51991 (+ 0 1)))))

(declare-fun lt!51992 () Unit!2378)

(assert (=> b!166849 (= lt!51992 lt!51995)))

(assert (= (and d!42000 res!75375) b!166847))

(assert (= (and d!42000 c!33370) b!166848))

(assert (= (and d!42000 (not c!33370)) b!166849))

(declare-fun m!161825 () Bool)

(assert (=> d!42000 m!161825))

(assert (=> d!42000 m!157727))

(assert (=> d!42000 m!157259))

(declare-fun m!161827 () Bool)

(assert (=> d!42000 m!161827))

(declare-fun m!161829 () Bool)

(assert (=> d!42000 m!161829))

(assert (=> d!42000 m!157727))

(declare-fun m!161831 () Bool)

(assert (=> d!42000 m!161831))

(assert (=> d!42000 m!157259))

(assert (=> d!42000 m!161829))

(assert (=> b!166847 m!157259))

(assert (=> b!166847 m!161827))

(declare-fun m!161833 () Bool)

(assert (=> b!166849 m!161833))

(declare-fun m!161835 () Bool)

(assert (=> b!166849 m!161835))

(declare-fun m!161837 () Bool)

(assert (=> b!166849 m!161837))

(declare-fun m!161839 () Bool)

(assert (=> b!166849 m!161839))

(declare-fun m!161841 () Bool)

(assert (=> b!166849 m!161841))

(declare-fun m!161843 () Bool)

(assert (=> b!166849 m!161843))

(declare-fun m!161845 () Bool)

(assert (=> b!166849 m!161845))

(assert (=> b!166849 m!157259))

(declare-fun m!161847 () Bool)

(assert (=> b!166849 m!161847))

(declare-fun m!161849 () Bool)

(assert (=> b!166849 m!161849))

(assert (=> b!166849 m!161843))

(assert (=> b!166849 m!161847))

(assert (=> b!166849 m!161835))

(declare-fun m!161851 () Bool)

(assert (=> b!166849 m!161851))

(assert (=> b!166849 m!157259))

(assert (=> b!166849 m!157939))

(declare-fun m!161853 () Bool)

(assert (=> b!166849 m!161853))

(assert (=> b!166849 m!157259))

(assert (=> b!166849 m!161841))

(assert (=> b!166849 m!161853))

(declare-fun m!161855 () Bool)

(assert (=> b!166849 m!161855))

(assert (=> b!165072 d!42000))

(declare-fun d!42002 () Bool)

(assert (=> d!42002 (isDefined!135 (maxPrefix!123 thiss!17480 rules!1920 (++!636 call!7067 lt!50866)))))

(declare-fun lt!52012 () Unit!2378)

(declare-fun e!100623 () Unit!2378)

(assert (=> d!42002 (= lt!52012 e!100623)))

(declare-fun c!33371 () Bool)

(assert (=> d!42002 (= c!33371 (isEmpty!1166 (maxPrefix!123 thiss!17480 rules!1920 (++!636 call!7067 lt!50866))))))

(declare-fun lt!52003 () Unit!2378)

(declare-fun lt!52006 () Unit!2378)

(assert (=> d!42002 (= lt!52003 lt!52006)))

(declare-fun e!100624 () Bool)

(assert (=> d!42002 e!100624))

(declare-fun res!75376 () Bool)

(assert (=> d!42002 (=> (not res!75376) (not e!100624))))

(declare-fun lt!52001 () Token!746)

(assert (=> d!42002 (= res!75376 (isDefined!136 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!52001)))))))

(assert (=> d!42002 (= lt!52006 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!22 thiss!17480 rules!1920 call!7067 lt!52001))))

(declare-fun lt!52002 () Unit!2378)

(declare-fun lt!52005 () Unit!2378)

(assert (=> d!42002 (= lt!52002 lt!52005)))

(declare-fun lt!52014 () List!2832)

(assert (=> d!42002 (isPrefix!223 lt!52014 (++!636 call!7067 lt!50866))))

(assert (=> d!42002 (= lt!52005 (lemmaPrefixStaysPrefixWhenAddingToSuffix!22 lt!52014 call!7067 lt!50866))))

(assert (=> d!42002 (= lt!52014 (list!1019 (charsOf!156 lt!52001)))))

(declare-fun lt!52011 () Unit!2378)

(declare-fun lt!52010 () Unit!2378)

(assert (=> d!42002 (= lt!52011 lt!52010)))

(declare-fun lt!52013 () List!2832)

(declare-fun lt!52000 () List!2832)

(assert (=> d!42002 (isPrefix!223 lt!52013 (++!636 lt!52013 lt!52000))))

(assert (=> d!42002 (= lt!52010 (lemmaConcatTwoListThenFirstIsPrefix!126 lt!52013 lt!52000))))

(assert (=> d!42002 (= lt!52000 (_2!1565 (get!769 (maxPrefix!123 thiss!17480 rules!1920 call!7067))))))

(assert (=> d!42002 (= lt!52013 (list!1019 (charsOf!156 lt!52001)))))

(assert (=> d!42002 (= lt!52001 (head!596 (list!1023 (_1!1561 (lex!187 thiss!17480 rules!1920 (seqFromList!380 call!7067))))))))

(assert (=> d!42002 (not (isEmpty!1156 rules!1920))))

(assert (=> d!42002 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!30 thiss!17480 rules!1920 call!7067 lt!50866) lt!52012)))

(declare-fun b!166850 () Bool)

(declare-fun res!75377 () Bool)

(assert (=> b!166850 (=> (not res!75377) (not e!100624))))

(assert (=> b!166850 (= res!75377 (matchR!79 (regex!501 (get!770 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!52001))))) (list!1019 (charsOf!156 lt!52001))))))

(declare-fun b!166851 () Bool)

(assert (=> b!166851 (= e!100624 (= (rule!1008 lt!52001) (get!770 (getRuleFromTag!22 thiss!17480 rules!1920 (tag!679 (rule!1008 lt!52001))))))))

(declare-fun b!166853 () Bool)

(declare-fun Unit!2434 () Unit!2378)

(assert (=> b!166853 (= e!100623 Unit!2434)))

(declare-fun b!166852 () Bool)

(declare-fun Unit!2435 () Unit!2378)

(assert (=> b!166852 (= e!100623 Unit!2435)))

(declare-fun lt!51999 () List!2832)

(assert (=> b!166852 (= lt!51999 (++!636 call!7067 lt!50866))))

(declare-fun lt!52008 () Unit!2378)

(assert (=> b!166852 (= lt!52008 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!22 thiss!17480 (rule!1008 lt!52001) rules!1920 lt!51999))))

(assert (=> b!166852 (isEmpty!1166 (maxPrefixOneRule!67 thiss!17480 (rule!1008 lt!52001) lt!51999))))

(declare-fun lt!52004 () Unit!2378)

(assert (=> b!166852 (= lt!52004 lt!52008)))

(declare-fun lt!52009 () List!2832)

(assert (=> b!166852 (= lt!52009 (list!1019 (charsOf!156 lt!52001)))))

(declare-fun lt!52007 () Unit!2378)

(assert (=> b!166852 (= lt!52007 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!22 thiss!17480 (rule!1008 lt!52001) lt!52009 (++!636 call!7067 lt!50866)))))

(assert (=> b!166852 (not (matchR!79 (regex!501 (rule!1008 lt!52001)) lt!52009))))

(declare-fun lt!51998 () Unit!2378)

(assert (=> b!166852 (= lt!51998 lt!52007)))

(assert (=> b!166852 false))

(assert (= (and d!42002 res!75376) b!166850))

(assert (= (and b!166850 res!75377) b!166851))

(assert (= (and d!42002 c!33371) b!166852))

(assert (= (and d!42002 (not c!33371)) b!166853))

(declare-fun m!161857 () Bool)

(assert (=> d!42002 m!161857))

(assert (=> d!42002 m!161857))

(declare-fun m!161859 () Bool)

(assert (=> d!42002 m!161859))

(declare-fun m!161861 () Bool)

(assert (=> d!42002 m!161861))

(declare-fun m!161863 () Bool)

(assert (=> d!42002 m!161863))

(declare-fun m!161865 () Bool)

(assert (=> d!42002 m!161865))

(declare-fun m!161867 () Bool)

(assert (=> d!42002 m!161867))

(declare-fun m!161869 () Bool)

(assert (=> d!42002 m!161869))

(declare-fun m!161871 () Bool)

(assert (=> d!42002 m!161871))

(declare-fun m!161873 () Bool)

(assert (=> d!42002 m!161873))

(declare-fun m!161875 () Bool)

(assert (=> d!42002 m!161875))

(assert (=> d!42002 m!161861))

(declare-fun m!161877 () Bool)

(assert (=> d!42002 m!161877))

(declare-fun m!161879 () Bool)

(assert (=> d!42002 m!161879))

(declare-fun m!161881 () Bool)

(assert (=> d!42002 m!161881))

(declare-fun m!161883 () Bool)

(assert (=> d!42002 m!161883))

(declare-fun m!161885 () Bool)

(assert (=> d!42002 m!161885))

(declare-fun m!161887 () Bool)

(assert (=> d!42002 m!161887))

(assert (=> d!42002 m!161887))

(declare-fun m!161889 () Bool)

(assert (=> d!42002 m!161889))

(assert (=> d!42002 m!161865))

(declare-fun m!161891 () Bool)

(assert (=> d!42002 m!161891))

(assert (=> d!42002 m!161867))

(assert (=> d!42002 m!161887))

(assert (=> d!42002 m!161861))

(assert (=> d!42002 m!161883))

(assert (=> d!42002 m!161875))

(declare-fun m!161893 () Bool)

(assert (=> d!42002 m!161893))

(assert (=> d!42002 m!157245))

(assert (=> d!42002 m!161881))

(declare-fun m!161895 () Bool)

(assert (=> d!42002 m!161895))

(assert (=> b!166850 m!161857))

(assert (=> b!166850 m!161857))

(assert (=> b!166850 m!161859))

(assert (=> b!166850 m!161859))

(declare-fun m!161897 () Bool)

(assert (=> b!166850 m!161897))

(assert (=> b!166850 m!161883))

(assert (=> b!166850 m!161883))

(declare-fun m!161899 () Bool)

(assert (=> b!166850 m!161899))

(assert (=> b!166851 m!161883))

(assert (=> b!166851 m!161883))

(assert (=> b!166851 m!161899))

(assert (=> b!166852 m!161857))

(assert (=> b!166852 m!161859))

(declare-fun m!161901 () Bool)

(assert (=> b!166852 m!161901))

(assert (=> b!166852 m!161887))

(declare-fun m!161903 () Bool)

(assert (=> b!166852 m!161903))

(declare-fun m!161905 () Bool)

(assert (=> b!166852 m!161905))

(assert (=> b!166852 m!161903))

(assert (=> b!166852 m!161887))

(declare-fun m!161907 () Bool)

(assert (=> b!166852 m!161907))

(declare-fun m!161909 () Bool)

(assert (=> b!166852 m!161909))

(assert (=> b!166852 m!161857))

(assert (=> b!165072 d!42002))

(declare-fun d!42004 () Bool)

(assert (=> d!42004 (= (list!1019 lt!51009) (list!1022 (c!32900 lt!51009)))))

(declare-fun bs!16229 () Bool)

(assert (= bs!16229 d!42004))

(declare-fun m!161911 () Bool)

(assert (=> bs!16229 m!161911))

(assert (=> d!41092 d!42004))

(declare-fun d!42006 () Bool)

(declare-fun c!33372 () Bool)

(assert (=> d!42006 (= c!33372 ((_ is Node!824) (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))))))

(declare-fun e!100625 () Bool)

(assert (=> d!42006 (= (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))) e!100625)))

(declare-fun b!166854 () Bool)

(assert (=> b!166854 (= e!100625 (inv!3652 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))))))

(declare-fun b!166855 () Bool)

(declare-fun e!100626 () Bool)

(assert (=> b!166855 (= e!100625 e!100626)))

(declare-fun res!75378 () Bool)

(assert (=> b!166855 (= res!75378 (not ((_ is Leaf!1414) (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))))))))

(assert (=> b!166855 (=> res!75378 e!100626)))

(declare-fun b!166856 () Bool)

(assert (=> b!166856 (= e!100626 (inv!3653 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))))))

(assert (= (and d!42006 c!33372) b!166854))

(assert (= (and d!42006 (not c!33372)) b!166855))

(assert (= (and b!166855 (not res!75378)) b!166856))

(declare-fun m!161913 () Bool)

(assert (=> b!166854 m!161913))

(declare-fun m!161915 () Bool)

(assert (=> b!166856 m!161915))

(assert (=> b!165298 d!42006))

(declare-fun b!166859 () Bool)

(declare-fun e!100629 () Bool)

(assert (=> b!166859 (= e!100629 true)))

(declare-fun b!166858 () Bool)

(declare-fun e!100628 () Bool)

(assert (=> b!166858 (= e!100628 e!100629)))

(declare-fun b!166857 () Bool)

(declare-fun e!100627 () Bool)

(assert (=> b!166857 (= e!100627 e!100628)))

(assert (=> b!165395 e!100627))

(assert (= b!166858 b!166859))

(assert (= b!166857 b!166858))

(assert (= (and b!165395 ((_ is Cons!2823) (t!26455 (t!26455 rules!1920)))) b!166857))

(assert (=> b!166859 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920)))))) (dynLambda!1020 order!1459 lambda!4552))))

(assert (=> b!166859 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920)))))) (dynLambda!1020 order!1459 lambda!4552))))

(declare-fun b!166862 () Bool)

(declare-fun e!100632 () Bool)

(assert (=> b!166862 (= e!100632 true)))

(declare-fun b!166861 () Bool)

(declare-fun e!100631 () Bool)

(assert (=> b!166861 (= e!100631 e!100632)))

(declare-fun b!166860 () Bool)

(declare-fun e!100630 () Bool)

(assert (=> b!166860 (= e!100630 e!100631)))

(assert (=> b!165005 e!100630))

(assert (= b!166861 b!166862))

(assert (= b!166860 b!166861))

(assert (= (and b!165005 ((_ is Cons!2823) (t!26455 rules!1920))) b!166860))

(assert (=> b!166862 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4564))))

(assert (=> b!166862 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4564))))

(declare-fun b!166865 () Bool)

(declare-fun b_free!6301 () Bool)

(declare-fun b_next!6301 () Bool)

(assert (=> b!166865 (= b_free!6301 (not b_next!6301))))

(declare-fun tp!83048 () Bool)

(declare-fun b_and!10781 () Bool)

(assert (=> b!166865 (= tp!83048 b_and!10781)))

(declare-fun b_free!6303 () Bool)

(declare-fun b_next!6303 () Bool)

(assert (=> b!166865 (= b_free!6303 (not b_next!6303))))

(declare-fun t!26760 () Bool)

(declare-fun tb!6537 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) t!26760) tb!6537))

(declare-fun result!9178 () Bool)

(assert (= result!9178 result!9072))

(assert (=> b!166755 t!26760))

(declare-fun tb!6539 () Bool)

(declare-fun t!26762 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))) t!26762) tb!6539))

(declare-fun result!9180 () Bool)

(assert (= result!9180 result!8962))

(assert (=> d!41260 t!26762))

(declare-fun t!26764 () Bool)

(declare-fun tb!6541 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) t!26764) tb!6541))

(declare-fun result!9182 () Bool)

(assert (= result!9182 result!8922))

(assert (=> d!41092 t!26764))

(declare-fun tb!6543 () Bool)

(declare-fun t!26766 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0))))) t!26766) tb!6543))

(declare-fun result!9184 () Bool)

(assert (= result!9184 result!9092))

(assert (=> d!41702 t!26766))

(declare-fun tb!6545 () Bool)

(declare-fun t!26768 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))) t!26768) tb!6545))

(declare-fun result!9186 () Bool)

(assert (= result!9186 result!9102))

(assert (=> d!41750 t!26768))

(declare-fun t!26770 () Bool)

(declare-fun tb!6547 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))) t!26770) tb!6547))

(declare-fun result!9188 () Bool)

(assert (= result!9188 result!8952))

(assert (=> d!41138 t!26770))

(declare-fun tb!6549 () Bool)

(declare-fun t!26772 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 call!7036)))) t!26772) tb!6549))

(declare-fun result!9190 () Bool)

(assert (= result!9190 result!9114))

(assert (=> d!41846 t!26772))

(declare-fun t!26774 () Bool)

(declare-fun tb!6551 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 call!7086)))) t!26774) tb!6551))

(declare-fun result!9192 () Bool)

(assert (= result!9192 result!9168))

(assert (=> d!41874 t!26774))

(declare-fun t!26776 () Bool)

(declare-fun tb!6553 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0))))) t!26776) tb!6553))

(declare-fun result!9194 () Bool)

(assert (= result!9194 result!9052))

(assert (=> d!41510 t!26776))

(assert (=> b!165273 t!26764))

(declare-fun tb!6555 () Bool)

(declare-fun t!26778 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170)))) t!26778) tb!6555))

(declare-fun result!9196 () Bool)

(assert (= result!9196 result!8930))

(assert (=> b!165296 t!26778))

(assert (=> d!41630 t!26760))

(assert (=> d!41088 t!26778))

(declare-fun t!26780 () Bool)

(declare-fun tb!6557 () Bool)

(assert (=> (and b!166865 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))) t!26780) tb!6557))

(declare-fun result!9198 () Bool)

(assert (= result!9198 result!9062))

(assert (=> d!41542 t!26780))

(declare-fun tp!83050 () Bool)

(declare-fun b_and!10783 () Bool)

(assert (=> b!166865 (= tp!83050 (and (=> t!26768 result!9186) (=> t!26770 result!9188) (=> t!26774 result!9192) (=> t!26760 result!9178) (=> t!26772 result!9190) (=> t!26762 result!9180) (=> t!26780 result!9198) (=> t!26766 result!9184) (=> t!26764 result!9182) (=> t!26776 result!9194) (=> t!26778 result!9196) b_and!10783))))

(declare-fun e!100633 () Bool)

(assert (=> b!166865 (= e!100633 (and tp!83048 tp!83050))))

(declare-fun e!100636 () Bool)

(declare-fun b!166864 () Bool)

(declare-fun tp!83047 () Bool)

(assert (=> b!166864 (= e!100636 (and tp!83047 (inv!3641 (tag!679 (h!8220 (t!26455 (t!26455 rules!1920))))) (inv!3645 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) e!100633))))

(declare-fun b!166863 () Bool)

(declare-fun e!100634 () Bool)

(declare-fun tp!83049 () Bool)

(assert (=> b!166863 (= e!100634 (and e!100636 tp!83049))))

(assert (=> b!165424 (= tp!82913 e!100634)))

(assert (= b!166864 b!166865))

(assert (= b!166863 b!166864))

(assert (= (and b!165424 ((_ is Cons!2823) (t!26455 (t!26455 rules!1920)))) b!166863))

(declare-fun m!161917 () Bool)

(assert (=> b!166864 m!161917))

(declare-fun m!161919 () Bool)

(assert (=> b!166864 m!161919))

(declare-fun b!166869 () Bool)

(declare-fun e!100637 () Bool)

(declare-fun tp!83053 () Bool)

(declare-fun tp!83052 () Bool)

(assert (=> b!166869 (= e!100637 (and tp!83053 tp!83052))))

(declare-fun b!166867 () Bool)

(declare-fun tp!83051 () Bool)

(declare-fun tp!83055 () Bool)

(assert (=> b!166867 (= e!100637 (and tp!83051 tp!83055))))

(assert (=> b!165425 (= tp!82911 e!100637)))

(declare-fun b!166866 () Bool)

(assert (=> b!166866 (= e!100637 tp_is_empty!1643)))

(declare-fun b!166868 () Bool)

(declare-fun tp!83054 () Bool)

(assert (=> b!166868 (= e!100637 tp!83054)))

(assert (= (and b!165425 ((_ is ElementMatch!725) (regex!501 (h!8220 (t!26455 rules!1920))))) b!166866))

(assert (= (and b!165425 ((_ is Concat!1249) (regex!501 (h!8220 (t!26455 rules!1920))))) b!166867))

(assert (= (and b!165425 ((_ is Star!725) (regex!501 (h!8220 (t!26455 rules!1920))))) b!166868))

(assert (= (and b!165425 ((_ is Union!725) (regex!501 (h!8220 (t!26455 rules!1920))))) b!166869))

(declare-fun b!166873 () Bool)

(declare-fun b_free!6305 () Bool)

(declare-fun b_next!6305 () Bool)

(assert (=> b!166873 (= b_free!6305 (not b_next!6305))))

(declare-fun tp!83059 () Bool)

(declare-fun b_and!10785 () Bool)

(assert (=> b!166873 (= tp!83059 b_and!10785)))

(declare-fun b_free!6307 () Bool)

(declare-fun b_next!6307 () Bool)

(assert (=> b!166873 (= b_free!6307 (not b_next!6307))))

(declare-fun t!26782 () Bool)

(declare-fun tb!6559 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) t!26782) tb!6559))

(declare-fun result!9200 () Bool)

(assert (= result!9200 result!9072))

(assert (=> b!166755 t!26782))

(declare-fun t!26784 () Bool)

(declare-fun tb!6561 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0))))) t!26784) tb!6561))

(declare-fun result!9202 () Bool)

(assert (= result!9202 result!8962))

(assert (=> d!41260 t!26784))

(declare-fun t!26786 () Bool)

(declare-fun tb!6563 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465))))) t!26786) tb!6563))

(declare-fun result!9204 () Bool)

(assert (= result!9204 result!8922))

(assert (=> d!41092 t!26786))

(declare-fun tb!6565 () Bool)

(declare-fun t!26788 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50710 0))))) t!26788) tb!6565))

(declare-fun result!9206 () Bool)

(assert (= result!9206 result!9092))

(assert (=> d!41702 t!26788))

(declare-fun t!26790 () Bool)

(declare-fun tb!6567 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (Cons!2824 (h!8221 tokens!465) Nil!2824)))))) t!26790) tb!6567))

(declare-fun result!9208 () Bool)

(assert (= result!9208 result!9102))

(assert (=> d!41750 t!26790))

(declare-fun tb!6569 () Bool)

(declare-fun t!26792 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (ite c!33010 call!7090 (ite c!33011 separatorToken!170 call!7086)))))) t!26792) tb!6569))

(declare-fun result!9210 () Bool)

(assert (= result!9210 result!8952))

(assert (=> d!41138 t!26792))

(declare-fun tb!6571 () Bool)

(declare-fun t!26794 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 call!7036)))) t!26794) tb!6571))

(declare-fun result!9212 () Bool)

(assert (= result!9212 result!9114))

(assert (=> d!41846 t!26794))

(declare-fun tb!6573 () Bool)

(declare-fun t!26796 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 call!7086)))) t!26796) tb!6573))

(declare-fun result!9214 () Bool)

(assert (= result!9214 result!9168))

(assert (=> d!41874 t!26796))

(declare-fun t!26798 () Bool)

(declare-fun tb!6575 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (apply!398 lt!50721 0))))) t!26798) tb!6575))

(declare-fun result!9216 () Bool)

(assert (= result!9216 result!9052))

(assert (=> d!41510 t!26798))

(assert (=> b!165273 t!26786))

(declare-fun t!26800 () Bool)

(declare-fun tb!6577 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 separatorToken!170)))) t!26800) tb!6577))

(declare-fun result!9218 () Bool)

(assert (= result!9218 result!8930))

(assert (=> b!165296 t!26800))

(assert (=> d!41630 t!26782))

(assert (=> d!41088 t!26800))

(declare-fun tb!6579 () Bool)

(declare-fun t!26802 () Bool)

(assert (=> (and b!166873 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (ite c!32939 call!7040 (ite c!32940 separatorToken!170 call!7036)))))) t!26802) tb!6579))

(declare-fun result!9220 () Bool)

(assert (= result!9220 result!9062))

(assert (=> d!41542 t!26802))

(declare-fun b_and!10787 () Bool)

(declare-fun tp!83060 () Bool)

(assert (=> b!166873 (= tp!83060 (and (=> t!26786 result!9204) (=> t!26792 result!9210) (=> t!26788 result!9206) (=> t!26798 result!9216) (=> t!26794 result!9212) (=> t!26796 result!9214) (=> t!26790 result!9208) (=> t!26782 result!9200) (=> t!26784 result!9202) (=> t!26800 result!9218) (=> t!26802 result!9220) b_and!10787))))

(declare-fun e!100643 () Bool)

(declare-fun e!100640 () Bool)

(declare-fun b!166872 () Bool)

(declare-fun tp!83058 () Bool)

(assert (=> b!166872 (= e!100643 (and tp!83058 (inv!3641 (tag!679 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (inv!3645 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) e!100640))))

(assert (=> b!166873 (= e!100640 (and tp!83059 tp!83060))))

(declare-fun e!100638 () Bool)

(assert (=> b!165390 (= tp!82877 e!100638)))

(declare-fun b!166870 () Bool)

(declare-fun tp!83056 () Bool)

(declare-fun e!100641 () Bool)

(assert (=> b!166870 (= e!100638 (and (inv!3644 (h!8221 (t!26456 (t!26456 tokens!465)))) e!100641 tp!83056))))

(declare-fun b!166871 () Bool)

(declare-fun tp!83057 () Bool)

(assert (=> b!166871 (= e!100641 (and (inv!21 (value!18594 (h!8221 (t!26456 (t!26456 tokens!465))))) e!100643 tp!83057))))

(assert (= b!166872 b!166873))

(assert (= b!166871 b!166872))

(assert (= b!166870 b!166871))

(assert (= (and b!165390 ((_ is Cons!2824) (t!26456 (t!26456 tokens!465)))) b!166870))

(declare-fun m!161921 () Bool)

(assert (=> b!166872 m!161921))

(declare-fun m!161923 () Bool)

(assert (=> b!166872 m!161923))

(declare-fun m!161925 () Bool)

(assert (=> b!166870 m!161925))

(declare-fun m!161927 () Bool)

(assert (=> b!166871 m!161927))

(declare-fun b!166877 () Bool)

(declare-fun e!100644 () Bool)

(declare-fun tp!83063 () Bool)

(declare-fun tp!83062 () Bool)

(assert (=> b!166877 (= e!100644 (and tp!83063 tp!83062))))

(declare-fun b!166875 () Bool)

(declare-fun tp!83061 () Bool)

(declare-fun tp!83065 () Bool)

(assert (=> b!166875 (= e!100644 (and tp!83061 tp!83065))))

(assert (=> b!165430 (= tp!82917 e!100644)))

(declare-fun b!166874 () Bool)

(assert (=> b!166874 (= e!100644 tp_is_empty!1643)))

(declare-fun b!166876 () Bool)

(declare-fun tp!83064 () Bool)

(assert (=> b!166876 (= e!100644 tp!83064)))

(assert (= (and b!165430 ((_ is ElementMatch!725) (regOne!1963 (regex!501 (rule!1008 separatorToken!170))))) b!166874))

(assert (= (and b!165430 ((_ is Concat!1249) (regOne!1963 (regex!501 (rule!1008 separatorToken!170))))) b!166875))

(assert (= (and b!165430 ((_ is Star!725) (regOne!1963 (regex!501 (rule!1008 separatorToken!170))))) b!166876))

(assert (= (and b!165430 ((_ is Union!725) (regOne!1963 (regex!501 (rule!1008 separatorToken!170))))) b!166877))

(declare-fun b!166881 () Bool)

(declare-fun e!100645 () Bool)

(declare-fun tp!83068 () Bool)

(declare-fun tp!83067 () Bool)

(assert (=> b!166881 (= e!100645 (and tp!83068 tp!83067))))

(declare-fun b!166879 () Bool)

(declare-fun tp!83066 () Bool)

(declare-fun tp!83070 () Bool)

(assert (=> b!166879 (= e!100645 (and tp!83066 tp!83070))))

(assert (=> b!165430 (= tp!82916 e!100645)))

(declare-fun b!166878 () Bool)

(assert (=> b!166878 (= e!100645 tp_is_empty!1643)))

(declare-fun b!166880 () Bool)

(declare-fun tp!83069 () Bool)

(assert (=> b!166880 (= e!100645 tp!83069)))

(assert (= (and b!165430 ((_ is ElementMatch!725) (regTwo!1963 (regex!501 (rule!1008 separatorToken!170))))) b!166878))

(assert (= (and b!165430 ((_ is Concat!1249) (regTwo!1963 (regex!501 (rule!1008 separatorToken!170))))) b!166879))

(assert (= (and b!165430 ((_ is Star!725) (regTwo!1963 (regex!501 (rule!1008 separatorToken!170))))) b!166880))

(assert (= (and b!165430 ((_ is Union!725) (regTwo!1963 (regex!501 (rule!1008 separatorToken!170))))) b!166881))

(declare-fun b!166884 () Bool)

(declare-fun e!100648 () Bool)

(assert (=> b!166884 (= e!100648 true)))

(declare-fun b!166883 () Bool)

(declare-fun e!100647 () Bool)

(assert (=> b!166883 (= e!100647 e!100648)))

(declare-fun b!166882 () Bool)

(declare-fun e!100646 () Bool)

(assert (=> b!166882 (= e!100646 e!100647)))

(assert (=> b!165076 e!100646))

(assert (= b!166883 b!166884))

(assert (= b!166882 b!166883))

(assert (= (and b!165076 ((_ is Cons!2823) (t!26455 rules!1920))) b!166882))

(assert (=> b!166884 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4573))))

(assert (=> b!166884 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4573))))

(declare-fun b!166888 () Bool)

(declare-fun e!100649 () Bool)

(declare-fun tp!83073 () Bool)

(declare-fun tp!83072 () Bool)

(assert (=> b!166888 (= e!100649 (and tp!83073 tp!83072))))

(declare-fun b!166886 () Bool)

(declare-fun tp!83071 () Bool)

(declare-fun tp!83075 () Bool)

(assert (=> b!166886 (= e!100649 (and tp!83071 tp!83075))))

(assert (=> b!165414 (= tp!82901 e!100649)))

(declare-fun b!166885 () Bool)

(assert (=> b!166885 (= e!100649 tp_is_empty!1643)))

(declare-fun b!166887 () Bool)

(declare-fun tp!83074 () Bool)

(assert (=> b!166887 (= e!100649 tp!83074)))

(assert (= (and b!165414 ((_ is ElementMatch!725) (reg!1054 (regex!501 (h!8220 rules!1920))))) b!166885))

(assert (= (and b!165414 ((_ is Concat!1249) (reg!1054 (regex!501 (h!8220 rules!1920))))) b!166886))

(assert (= (and b!165414 ((_ is Star!725) (reg!1054 (regex!501 (h!8220 rules!1920))))) b!166887))

(assert (= (and b!165414 ((_ is Union!725) (reg!1054 (regex!501 (h!8220 rules!1920))))) b!166888))

(declare-fun b!166892 () Bool)

(declare-fun e!100650 () Bool)

(declare-fun tp!83078 () Bool)

(declare-fun tp!83077 () Bool)

(assert (=> b!166892 (= e!100650 (and tp!83078 tp!83077))))

(declare-fun b!166890 () Bool)

(declare-fun tp!83076 () Bool)

(declare-fun tp!83080 () Bool)

(assert (=> b!166890 (= e!100650 (and tp!83076 tp!83080))))

(assert (=> b!165415 (= tp!82900 e!100650)))

(declare-fun b!166889 () Bool)

(assert (=> b!166889 (= e!100650 tp_is_empty!1643)))

(declare-fun b!166891 () Bool)

(declare-fun tp!83079 () Bool)

(assert (=> b!166891 (= e!100650 tp!83079)))

(assert (= (and b!165415 ((_ is ElementMatch!725) (regOne!1963 (regex!501 (h!8220 rules!1920))))) b!166889))

(assert (= (and b!165415 ((_ is Concat!1249) (regOne!1963 (regex!501 (h!8220 rules!1920))))) b!166890))

(assert (= (and b!165415 ((_ is Star!725) (regOne!1963 (regex!501 (h!8220 rules!1920))))) b!166891))

(assert (= (and b!165415 ((_ is Union!725) (regOne!1963 (regex!501 (h!8220 rules!1920))))) b!166892))

(declare-fun b!166896 () Bool)

(declare-fun e!100651 () Bool)

(declare-fun tp!83083 () Bool)

(declare-fun tp!83082 () Bool)

(assert (=> b!166896 (= e!100651 (and tp!83083 tp!83082))))

(declare-fun b!166894 () Bool)

(declare-fun tp!83081 () Bool)

(declare-fun tp!83085 () Bool)

(assert (=> b!166894 (= e!100651 (and tp!83081 tp!83085))))

(assert (=> b!165415 (= tp!82899 e!100651)))

(declare-fun b!166893 () Bool)

(assert (=> b!166893 (= e!100651 tp_is_empty!1643)))

(declare-fun b!166895 () Bool)

(declare-fun tp!83084 () Bool)

(assert (=> b!166895 (= e!100651 tp!83084)))

(assert (= (and b!165415 ((_ is ElementMatch!725) (regTwo!1963 (regex!501 (h!8220 rules!1920))))) b!166893))

(assert (= (and b!165415 ((_ is Concat!1249) (regTwo!1963 (regex!501 (h!8220 rules!1920))))) b!166894))

(assert (= (and b!165415 ((_ is Star!725) (regTwo!1963 (regex!501 (h!8220 rules!1920))))) b!166895))

(assert (= (and b!165415 ((_ is Union!725) (regTwo!1963 (regex!501 (h!8220 rules!1920))))) b!166896))

(declare-fun b!166899 () Bool)

(declare-fun e!100654 () Bool)

(assert (=> b!166899 (= e!100654 true)))

(declare-fun b!166898 () Bool)

(declare-fun e!100653 () Bool)

(assert (=> b!166898 (= e!100653 e!100654)))

(declare-fun b!166897 () Bool)

(declare-fun e!100652 () Bool)

(assert (=> b!166897 (= e!100652 e!100653)))

(assert (=> b!165359 e!100652))

(assert (= b!166898 b!166899))

(assert (= b!166897 b!166898))

(assert (= (and b!165359 ((_ is Cons!2823) (t!26455 rules!1920))) b!166897))

(assert (=> b!166899 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4592))))

(assert (=> b!166899 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4592))))

(declare-fun b!166903 () Bool)

(declare-fun e!100655 () Bool)

(declare-fun tp!83088 () Bool)

(declare-fun tp!83087 () Bool)

(assert (=> b!166903 (= e!100655 (and tp!83088 tp!83087))))

(declare-fun b!166901 () Bool)

(declare-fun tp!83086 () Bool)

(declare-fun tp!83090 () Bool)

(assert (=> b!166901 (= e!100655 (and tp!83086 tp!83090))))

(assert (=> b!165392 (= tp!82879 e!100655)))

(declare-fun b!166900 () Bool)

(assert (=> b!166900 (= e!100655 tp_is_empty!1643)))

(declare-fun b!166902 () Bool)

(declare-fun tp!83089 () Bool)

(assert (=> b!166902 (= e!100655 tp!83089)))

(assert (= (and b!165392 ((_ is ElementMatch!725) (regex!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) b!166900))

(assert (= (and b!165392 ((_ is Concat!1249) (regex!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) b!166901))

(assert (= (and b!165392 ((_ is Star!725) (regex!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) b!166902))

(assert (= (and b!165392 ((_ is Union!725) (regex!501 (rule!1008 (h!8221 (t!26456 tokens!465)))))) b!166903))

(declare-fun b!166904 () Bool)

(declare-fun e!100656 () Bool)

(declare-fun tp!83091 () Bool)

(assert (=> b!166904 (= e!100656 (and tp_is_empty!1643 tp!83091))))

(assert (=> b!165391 (= tp!82878 e!100656)))

(assert (= (and b!165391 ((_ is Cons!2822) (originalCharacters!544 (h!8221 (t!26456 tokens!465))))) b!166904))

(declare-fun b!166908 () Bool)

(declare-fun e!100657 () Bool)

(declare-fun tp!83094 () Bool)

(declare-fun tp!83093 () Bool)

(assert (=> b!166908 (= e!100657 (and tp!83094 tp!83093))))

(declare-fun b!166906 () Bool)

(declare-fun tp!83092 () Bool)

(declare-fun tp!83096 () Bool)

(assert (=> b!166906 (= e!100657 (and tp!83092 tp!83096))))

(assert (=> b!165413 (= tp!82898 e!100657)))

(declare-fun b!166905 () Bool)

(assert (=> b!166905 (= e!100657 tp_is_empty!1643)))

(declare-fun b!166907 () Bool)

(declare-fun tp!83095 () Bool)

(assert (=> b!166907 (= e!100657 tp!83095)))

(assert (= (and b!165413 ((_ is ElementMatch!725) (regOne!1962 (regex!501 (h!8220 rules!1920))))) b!166905))

(assert (= (and b!165413 ((_ is Concat!1249) (regOne!1962 (regex!501 (h!8220 rules!1920))))) b!166906))

(assert (= (and b!165413 ((_ is Star!725) (regOne!1962 (regex!501 (h!8220 rules!1920))))) b!166907))

(assert (= (and b!165413 ((_ is Union!725) (regOne!1962 (regex!501 (h!8220 rules!1920))))) b!166908))

(declare-fun b!166912 () Bool)

(declare-fun e!100658 () Bool)

(declare-fun tp!83099 () Bool)

(declare-fun tp!83098 () Bool)

(assert (=> b!166912 (= e!100658 (and tp!83099 tp!83098))))

(declare-fun b!166910 () Bool)

(declare-fun tp!83097 () Bool)

(declare-fun tp!83101 () Bool)

(assert (=> b!166910 (= e!100658 (and tp!83097 tp!83101))))

(assert (=> b!165413 (= tp!82902 e!100658)))

(declare-fun b!166909 () Bool)

(assert (=> b!166909 (= e!100658 tp_is_empty!1643)))

(declare-fun b!166911 () Bool)

(declare-fun tp!83100 () Bool)

(assert (=> b!166911 (= e!100658 tp!83100)))

(assert (= (and b!165413 ((_ is ElementMatch!725) (regTwo!1962 (regex!501 (h!8220 rules!1920))))) b!166909))

(assert (= (and b!165413 ((_ is Concat!1249) (regTwo!1962 (regex!501 (h!8220 rules!1920))))) b!166910))

(assert (= (and b!165413 ((_ is Star!725) (regTwo!1962 (regex!501 (h!8220 rules!1920))))) b!166911))

(assert (= (and b!165413 ((_ is Union!725) (regTwo!1962 (regex!501 (h!8220 rules!1920))))) b!166912))

(declare-fun tp!83108 () Bool)

(declare-fun e!100663 () Bool)

(declare-fun tp!83109 () Bool)

(declare-fun b!166921 () Bool)

(assert (=> b!166921 (= e!100663 (and (inv!3648 (left!2133 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))))) tp!83109 (inv!3648 (right!2463 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))))) tp!83108))))

(declare-fun b!166923 () Bool)

(declare-fun e!100664 () Bool)

(declare-fun tp!83110 () Bool)

(assert (=> b!166923 (= e!100664 tp!83110)))

(declare-fun b!166922 () Bool)

(declare-fun inv!3654 (IArray!1649) Bool)

(assert (=> b!166922 (= e!100663 (and (inv!3654 (xs!3419 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))))) e!100664))))

(assert (=> b!165279 (= tp!82862 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465))))) e!100663))))

(assert (= (and b!165279 ((_ is Node!824) (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))))) b!166921))

(assert (= b!166922 b!166923))

(assert (= (and b!165279 ((_ is Leaf!1414) (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (value!18594 (h!8221 tokens!465)))))) b!166922))

(declare-fun m!161929 () Bool)

(assert (=> b!166921 m!161929))

(declare-fun m!161931 () Bool)

(assert (=> b!166921 m!161931))

(declare-fun m!161933 () Bool)

(assert (=> b!166922 m!161933))

(assert (=> b!165279 m!157953))

(declare-fun b!166926 () Bool)

(declare-fun e!100667 () Bool)

(assert (=> b!166926 (= e!100667 true)))

(declare-fun b!166925 () Bool)

(declare-fun e!100666 () Bool)

(assert (=> b!166925 (= e!100666 e!100667)))

(declare-fun b!166924 () Bool)

(declare-fun e!100665 () Bool)

(assert (=> b!166924 (= e!100665 e!100666)))

(assert (=> b!165330 e!100665))

(assert (= b!166925 b!166926))

(assert (= b!166924 b!166925))

(assert (= (and b!165330 ((_ is Cons!2823) (t!26455 rules!1920))) b!166924))

(assert (=> b!166926 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4589))))

(assert (=> b!166926 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4589))))

(declare-fun b!166930 () Bool)

(declare-fun e!100668 () Bool)

(declare-fun tp!83113 () Bool)

(declare-fun tp!83112 () Bool)

(assert (=> b!166930 (= e!100668 (and tp!83113 tp!83112))))

(declare-fun b!166928 () Bool)

(declare-fun tp!83111 () Bool)

(declare-fun tp!83115 () Bool)

(assert (=> b!166928 (= e!100668 (and tp!83111 tp!83115))))

(assert (=> b!165410 (= tp!82896 e!100668)))

(declare-fun b!166927 () Bool)

(assert (=> b!166927 (= e!100668 tp_is_empty!1643)))

(declare-fun b!166929 () Bool)

(declare-fun tp!83114 () Bool)

(assert (=> b!166929 (= e!100668 tp!83114)))

(assert (= (and b!165410 ((_ is ElementMatch!725) (reg!1054 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166927))

(assert (= (and b!165410 ((_ is Concat!1249) (reg!1054 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166928))

(assert (= (and b!165410 ((_ is Star!725) (reg!1054 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166929))

(assert (= (and b!165410 ((_ is Union!725) (reg!1054 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166930))

(declare-fun b!166934 () Bool)

(declare-fun e!100669 () Bool)

(declare-fun tp!83118 () Bool)

(declare-fun tp!83117 () Bool)

(assert (=> b!166934 (= e!100669 (and tp!83118 tp!83117))))

(declare-fun b!166932 () Bool)

(declare-fun tp!83116 () Bool)

(declare-fun tp!83120 () Bool)

(assert (=> b!166932 (= e!100669 (and tp!83116 tp!83120))))

(assert (=> b!165411 (= tp!82895 e!100669)))

(declare-fun b!166931 () Bool)

(assert (=> b!166931 (= e!100669 tp_is_empty!1643)))

(declare-fun b!166933 () Bool)

(declare-fun tp!83119 () Bool)

(assert (=> b!166933 (= e!100669 tp!83119)))

(assert (= (and b!165411 ((_ is ElementMatch!725) (regOne!1963 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166931))

(assert (= (and b!165411 ((_ is Concat!1249) (regOne!1963 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166932))

(assert (= (and b!165411 ((_ is Star!725) (regOne!1963 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166933))

(assert (= (and b!165411 ((_ is Union!725) (regOne!1963 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166934))

(declare-fun b!166938 () Bool)

(declare-fun e!100670 () Bool)

(declare-fun tp!83123 () Bool)

(declare-fun tp!83122 () Bool)

(assert (=> b!166938 (= e!100670 (and tp!83123 tp!83122))))

(declare-fun b!166936 () Bool)

(declare-fun tp!83121 () Bool)

(declare-fun tp!83125 () Bool)

(assert (=> b!166936 (= e!100670 (and tp!83121 tp!83125))))

(assert (=> b!165411 (= tp!82894 e!100670)))

(declare-fun b!166935 () Bool)

(assert (=> b!166935 (= e!100670 tp_is_empty!1643)))

(declare-fun b!166937 () Bool)

(declare-fun tp!83124 () Bool)

(assert (=> b!166937 (= e!100670 tp!83124)))

(assert (= (and b!165411 ((_ is ElementMatch!725) (regTwo!1963 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166935))

(assert (= (and b!165411 ((_ is Concat!1249) (regTwo!1963 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166936))

(assert (= (and b!165411 ((_ is Star!725) (regTwo!1963 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166937))

(assert (= (and b!165411 ((_ is Union!725) (regTwo!1963 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166938))

(declare-fun b!166939 () Bool)

(declare-fun e!100671 () Bool)

(declare-fun tp!83126 () Bool)

(assert (=> b!166939 (= e!100671 (and tp_is_empty!1643 tp!83126))))

(assert (=> b!165394 (= tp!82882 e!100671)))

(assert (= (and b!165394 ((_ is Cons!2822) (t!26454 (originalCharacters!544 separatorToken!170)))) b!166939))

(declare-fun b!166943 () Bool)

(declare-fun e!100672 () Bool)

(declare-fun tp!83129 () Bool)

(declare-fun tp!83128 () Bool)

(assert (=> b!166943 (= e!100672 (and tp!83129 tp!83128))))

(declare-fun b!166941 () Bool)

(declare-fun tp!83127 () Bool)

(declare-fun tp!83131 () Bool)

(assert (=> b!166941 (= e!100672 (and tp!83127 tp!83131))))

(assert (=> b!165428 (= tp!82915 e!100672)))

(declare-fun b!166940 () Bool)

(assert (=> b!166940 (= e!100672 tp_is_empty!1643)))

(declare-fun b!166942 () Bool)

(declare-fun tp!83130 () Bool)

(assert (=> b!166942 (= e!100672 tp!83130)))

(assert (= (and b!165428 ((_ is ElementMatch!725) (regOne!1962 (regex!501 (rule!1008 separatorToken!170))))) b!166940))

(assert (= (and b!165428 ((_ is Concat!1249) (regOne!1962 (regex!501 (rule!1008 separatorToken!170))))) b!166941))

(assert (= (and b!165428 ((_ is Star!725) (regOne!1962 (regex!501 (rule!1008 separatorToken!170))))) b!166942))

(assert (= (and b!165428 ((_ is Union!725) (regOne!1962 (regex!501 (rule!1008 separatorToken!170))))) b!166943))

(declare-fun b!166947 () Bool)

(declare-fun e!100673 () Bool)

(declare-fun tp!83134 () Bool)

(declare-fun tp!83133 () Bool)

(assert (=> b!166947 (= e!100673 (and tp!83134 tp!83133))))

(declare-fun b!166945 () Bool)

(declare-fun tp!83132 () Bool)

(declare-fun tp!83136 () Bool)

(assert (=> b!166945 (= e!100673 (and tp!83132 tp!83136))))

(assert (=> b!165428 (= tp!82919 e!100673)))

(declare-fun b!166944 () Bool)

(assert (=> b!166944 (= e!100673 tp_is_empty!1643)))

(declare-fun b!166946 () Bool)

(declare-fun tp!83135 () Bool)

(assert (=> b!166946 (= e!100673 tp!83135)))

(assert (= (and b!165428 ((_ is ElementMatch!725) (regTwo!1962 (regex!501 (rule!1008 separatorToken!170))))) b!166944))

(assert (= (and b!165428 ((_ is Concat!1249) (regTwo!1962 (regex!501 (rule!1008 separatorToken!170))))) b!166945))

(assert (= (and b!165428 ((_ is Star!725) (regTwo!1962 (regex!501 (rule!1008 separatorToken!170))))) b!166946))

(assert (= (and b!165428 ((_ is Union!725) (regTwo!1962 (regex!501 (rule!1008 separatorToken!170))))) b!166947))

(declare-fun b!166951 () Bool)

(declare-fun e!100674 () Bool)

(declare-fun tp!83139 () Bool)

(declare-fun tp!83138 () Bool)

(assert (=> b!166951 (= e!100674 (and tp!83139 tp!83138))))

(declare-fun b!166949 () Bool)

(declare-fun tp!83137 () Bool)

(declare-fun tp!83141 () Bool)

(assert (=> b!166949 (= e!100674 (and tp!83137 tp!83141))))

(assert (=> b!165429 (= tp!82918 e!100674)))

(declare-fun b!166948 () Bool)

(assert (=> b!166948 (= e!100674 tp_is_empty!1643)))

(declare-fun b!166950 () Bool)

(declare-fun tp!83140 () Bool)

(assert (=> b!166950 (= e!100674 tp!83140)))

(assert (= (and b!165429 ((_ is ElementMatch!725) (reg!1054 (regex!501 (rule!1008 separatorToken!170))))) b!166948))

(assert (= (and b!165429 ((_ is Concat!1249) (reg!1054 (regex!501 (rule!1008 separatorToken!170))))) b!166949))

(assert (= (and b!165429 ((_ is Star!725) (reg!1054 (regex!501 (rule!1008 separatorToken!170))))) b!166950))

(assert (= (and b!165429 ((_ is Union!725) (reg!1054 (regex!501 (rule!1008 separatorToken!170))))) b!166951))

(declare-fun b!166952 () Bool)

(declare-fun e!100675 () Bool)

(declare-fun tp!83142 () Bool)

(assert (=> b!166952 (= e!100675 (and tp_is_empty!1643 tp!83142))))

(assert (=> b!165379 (= tp!82866 e!100675)))

(assert (= (and b!165379 ((_ is Cons!2822) (t!26454 (originalCharacters!544 (h!8221 tokens!465))))) b!166952))

(declare-fun b!166955 () Bool)

(declare-fun e!100678 () Bool)

(assert (=> b!166955 (= e!100678 true)))

(declare-fun b!166954 () Bool)

(declare-fun e!100677 () Bool)

(assert (=> b!166954 (= e!100677 e!100678)))

(declare-fun b!166953 () Bool)

(declare-fun e!100676 () Bool)

(assert (=> b!166953 (= e!100676 e!100677)))

(assert (=> b!165345 e!100676))

(assert (= b!166954 b!166955))

(assert (= b!166953 b!166954))

(assert (= (and b!165345 ((_ is Cons!2823) (t!26455 rules!1920))) b!166953))

(assert (=> b!166955 (< (dynLambda!1019 order!1457 (toValue!1160 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4590))))

(assert (=> b!166955 (< (dynLambda!1021 order!1461 (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920))))) (dynLambda!1020 order!1459 lambda!4590))))

(declare-fun tp!83143 () Bool)

(declare-fun b!166956 () Bool)

(declare-fun tp!83144 () Bool)

(declare-fun e!100679 () Bool)

(assert (=> b!166956 (= e!100679 (and (inv!3648 (left!2133 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))))) tp!83144 (inv!3648 (right!2463 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))))) tp!83143))))

(declare-fun b!166958 () Bool)

(declare-fun e!100680 () Bool)

(declare-fun tp!83145 () Bool)

(assert (=> b!166958 (= e!100680 tp!83145)))

(declare-fun b!166957 () Bool)

(assert (=> b!166957 (= e!100679 (and (inv!3654 (xs!3419 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))))) e!100680))))

(assert (=> b!165298 (= tp!82863 (and (inv!3648 (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170)))) e!100679))))

(assert (= (and b!165298 ((_ is Node!824) (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))))) b!166956))

(assert (= b!166957 b!166958))

(assert (= (and b!165298 ((_ is Leaf!1414) (c!32900 (dynLambda!1024 (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (value!18594 separatorToken!170))))) b!166957))

(declare-fun m!161935 () Bool)

(assert (=> b!166956 m!161935))

(declare-fun m!161937 () Bool)

(assert (=> b!166956 m!161937))

(declare-fun m!161939 () Bool)

(assert (=> b!166957 m!161939))

(assert (=> b!165298 m!157987))

(declare-fun b!166962 () Bool)

(declare-fun e!100681 () Bool)

(declare-fun tp!83148 () Bool)

(declare-fun tp!83147 () Bool)

(assert (=> b!166962 (= e!100681 (and tp!83148 tp!83147))))

(declare-fun b!166960 () Bool)

(declare-fun tp!83146 () Bool)

(declare-fun tp!83150 () Bool)

(assert (=> b!166960 (= e!100681 (and tp!83146 tp!83150))))

(assert (=> b!165409 (= tp!82893 e!100681)))

(declare-fun b!166959 () Bool)

(assert (=> b!166959 (= e!100681 tp_is_empty!1643)))

(declare-fun b!166961 () Bool)

(declare-fun tp!83149 () Bool)

(assert (=> b!166961 (= e!100681 tp!83149)))

(assert (= (and b!165409 ((_ is ElementMatch!725) (regOne!1962 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166959))

(assert (= (and b!165409 ((_ is Concat!1249) (regOne!1962 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166960))

(assert (= (and b!165409 ((_ is Star!725) (regOne!1962 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166961))

(assert (= (and b!165409 ((_ is Union!725) (regOne!1962 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166962))

(declare-fun b!166966 () Bool)

(declare-fun e!100682 () Bool)

(declare-fun tp!83153 () Bool)

(declare-fun tp!83152 () Bool)

(assert (=> b!166966 (= e!100682 (and tp!83153 tp!83152))))

(declare-fun b!166964 () Bool)

(declare-fun tp!83151 () Bool)

(declare-fun tp!83155 () Bool)

(assert (=> b!166964 (= e!100682 (and tp!83151 tp!83155))))

(assert (=> b!165409 (= tp!82897 e!100682)))

(declare-fun b!166963 () Bool)

(assert (=> b!166963 (= e!100682 tp_is_empty!1643)))

(declare-fun b!166965 () Bool)

(declare-fun tp!83154 () Bool)

(assert (=> b!166965 (= e!100682 tp!83154)))

(assert (= (and b!165409 ((_ is ElementMatch!725) (regTwo!1962 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166963))

(assert (= (and b!165409 ((_ is Concat!1249) (regTwo!1962 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166964))

(assert (= (and b!165409 ((_ is Star!725) (regTwo!1962 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166965))

(assert (= (and b!165409 ((_ is Union!725) (regTwo!1962 (regex!501 (rule!1008 (h!8221 tokens!465)))))) b!166966))

(declare-fun b_lambda!3693 () Bool)

(assert (= b_lambda!3637 (or (and b!166865 b_free!6303 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!165393 b_free!6287) (and b!166873 b_free!6307 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!164831 b_free!6267 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!164828 b_free!6271 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!165426 b_free!6291 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!164817 b_free!6275 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) b_lambda!3693)))

(declare-fun b_lambda!3695 () Bool)

(assert (= b_lambda!3599 (or b!165351 b_lambda!3695)))

(declare-fun bs!16230 () Bool)

(declare-fun d!42008 () Bool)

(assert (= bs!16230 (and d!42008 b!165351)))

(assert (=> bs!16230 (= (dynLambda!1025 lambda!4592 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)) (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (apply!398 (seqFromList!379 (t!26456 tokens!465)) 0)))))

(assert (=> bs!16230 m!158111))

(declare-fun m!161941 () Bool)

(assert (=> bs!16230 m!161941))

(assert (=> d!41250 d!42008))

(declare-fun b_lambda!3697 () Bool)

(assert (= b_lambda!3685 (or d!41042 b_lambda!3697)))

(declare-fun bs!16231 () Bool)

(declare-fun d!42010 () Bool)

(assert (= bs!16231 (and d!42010 d!41042)))

(assert (=> bs!16231 (= (dynLambda!1031 lambda!4584 (h!8220 rules!1920)) (ruleValid!50 thiss!17480 (h!8220 rules!1920)))))

(assert (=> bs!16231 m!157973))

(assert (=> b!166737 d!42010))

(declare-fun b_lambda!3699 () Bool)

(assert (= b_lambda!3687 (or (and b!166865 b_free!6303 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 (t!26455 rules!1920))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!165393 b_free!6287) (and b!166873 b_free!6307 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 (t!26456 tokens!465)))))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!164831 b_free!6267 (= (toChars!1019 (transformation!501 (rule!1008 (h!8221 tokens!465)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!164828 b_free!6271 (= (toChars!1019 (transformation!501 (rule!1008 separatorToken!170))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!165426 b_free!6291 (= (toChars!1019 (transformation!501 (h!8220 (t!26455 rules!1920)))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) (and b!164817 b_free!6275 (= (toChars!1019 (transformation!501 (h!8220 rules!1920))) (toChars!1019 (transformation!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))) b_lambda!3699)))

(declare-fun b_lambda!3701 () Bool)

(assert (= b_lambda!3689 (or d!41070 b_lambda!3701)))

(declare-fun bs!16232 () Bool)

(declare-fun d!42012 () Bool)

(assert (= bs!16232 (and d!42012 d!41070)))

(assert (=> bs!16232 (= (dynLambda!1025 lambda!4589 (h!8221 (list!1023 lt!50710))) (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (h!8221 (list!1023 lt!50710))))))

(assert (=> bs!16232 m!159239))

(assert (=> b!166764 d!42012))

(declare-fun b_lambda!3703 () Bool)

(assert (= b_lambda!3655 (or b!164821 b_lambda!3703)))

(assert (=> d!41768 d!41108))

(declare-fun b_lambda!3705 () Bool)

(assert (= b_lambda!3657 (or b!164821 b_lambda!3705)))

(assert (=> b!166519 d!41108))

(declare-fun b_lambda!3707 () Bool)

(assert (= b_lambda!3645 (or b!164997 b_lambda!3707)))

(declare-fun bs!16233 () Bool)

(declare-fun d!42014 () Bool)

(assert (= bs!16233 (and d!42014 b!164997)))

(assert (=> bs!16233 (= (dynLambda!1025 lambda!4564 (apply!398 lt!50710 0)) (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (apply!398 lt!50710 0)))))

(assert (=> bs!16233 m!157507))

(declare-fun m!161943 () Bool)

(assert (=> bs!16233 m!161943))

(assert (=> d!41662 d!42014))

(declare-fun b_lambda!3709 () Bool)

(assert (= b_lambda!3597 (or b!164839 b_lambda!3709)))

(declare-fun bs!16234 () Bool)

(declare-fun d!42016 () Bool)

(assert (= bs!16234 (and d!42016 b!164839)))

(assert (=> bs!16234 (= (dynLambda!1025 lambda!4551 (h!8221 (t!26456 tokens!465))) (not (isSeparator!501 (rule!1008 (h!8221 (t!26456 tokens!465))))))))

(assert (=> b!165551 d!42016))

(declare-fun b_lambda!3711 () Bool)

(assert (= b_lambda!3691 (or b!165344 b_lambda!3711)))

(declare-fun bs!16235 () Bool)

(declare-fun d!42018 () Bool)

(assert (= bs!16235 (and d!42018 b!165344)))

(assert (=> bs!16235 (= (dynLambda!1025 lambda!4590 (h!8221 (t!26456 tokens!465))) (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (h!8221 (t!26456 tokens!465))))))

(declare-fun m!161945 () Bool)

(assert (=> bs!16235 m!161945))

(assert (=> d!41974 d!42018))

(declare-fun b_lambda!3713 () Bool)

(assert (= b_lambda!3633 (or b!165075 b_lambda!3713)))

(declare-fun bs!16236 () Bool)

(declare-fun d!42020 () Bool)

(assert (= bs!16236 (and d!42020 b!165075)))

(assert (=> bs!16236 (= (dynLambda!1025 lambda!4573 (h!8221 tokens!465)) (rulesProduceIndividualToken!136 thiss!17480 rules!1920 (h!8221 tokens!465)))))

(assert (=> bs!16236 m!157219))

(assert (=> d!41554 d!42020))

(check-sat (not b!166910) (not b!166828) (not b!166827) (not d!41689) (not d!41154) (not b!166957) (not d!41926) (not b_next!6271) (not b_next!6269) (not d!41956) (not d!41924) (not b!166524) (not d!41546) (not d!41666) (not b!166928) (not b!166265) (not d!41268) (not d!41630) (not d!41204) (not d!41168) (not b!166784) (not d!41878) (not b!166943) (not b!166945) (not b!166725) (not b!165482) (not d!41138) (not b_lambda!3705) (not b!165561) (not b!166956) (not b!166933) (not d!41916) (not b!166190) (not b!166312) (not bm!7097) (not d!41166) (not b!166677) (not b!165517) (not b!166411) (not b!166911) (not b!165527) (not b!166805) (not d!41766) (not d!41232) (not tb!6463) (not d!41260) (not b_lambda!3595) (not b!165661) (not b!166193) (not d!41550) (not b!166726) (not b_next!6303) (not b!165717) (not d!41988) (not b!166749) (not b!166932) (not b!166875) (not d!41724) (not b!166752) (not d!41836) (not d!41374) (not b!166847) (not b!166742) (not b!166268) (not d!41826) (not b!166799) b_and!10497 (not b!166650) (not d!41140) (not b!165847) (not b!166536) (not b!166949) (not b!166938) (not b!166747) (not b_next!6275) (not b!166854) (not d!41214) (not b!165447) (not bm!7140) (not d!41524) (not b!166871) (not d!41654) (not b!166902) (not b!166759) (not b_lambda!3585) (not b!166271) (not b!165663) (not b_next!6265) (not d!41872) (not b!165565) (not b!166890) (not d!41730) (not d!41912) (not b_lambda!3647) (not b!166872) (not b_lambda!3625) (not d!41516) (not d!41184) (not b!166506) (not b!166368) (not b!166531) (not b!166946) (not b_next!6307) (not d!41170) (not bm!7162) (not d!41928) (not b!166951) (not b!166583) (not b!166960) (not b!165718) (not d!41348) (not b!166433) b_and!10565 (not b!166922) (not d!41860) (not b!165733) (not b!165659) (not b!166489) (not d!41376) (not b!166868) (not b!166756) (not b!166924) (not b!166891) (not b!166188) (not b!166437) (not b_lambda!3703) (not b!166223) (not b!165484) (not b!166780) (not b_lambda!3659) (not b!165485) b_and!10773 (not b!166152) (not b!166757) (not b!166652) (not b!166846) (not bm!7093) (not b!166194) (not b!166903) (not d!41932) (not b!166765) (not bm!7163) (not d!41702) (not b!165848) (not b!165500) (not b!165654) (not b!166548) (not b!165559) (not b!166402) (not b!166509) (not d!41938) (not bm!7142) (not b!166148) (not b!166888) (not bm!7091) (not d!41874) (not b!166939) (not b!166563) (not b!166514) (not d!41946) (not b!165699) (not b!165498) (not b_lambda!3587) (not bs!16236) (not b!166464) (not d!41646) (not d!41804) (not d!41964) (not d!41974) (not b!165673) (not tb!6453) (not d!41684) (not b!165744) (not bm!7094) (not bm!7156) (not d!41800) (not b!166443) (not b!166301) (not b!166923) (not d!41870) (not b!166191) (not b!166964) (not b_next!6267) (not d!41126) (not b!166804) (not b!166386) (not b!166810) (not b!166761) (not b!165669) (not b!166463) (not b!166783) (not d!41854) (not b!166185) (not b!166962) (not b!165486) (not b!166176) (not b!166555) (not b!166551) (not b!166929) (not b_lambda!3707) (not b!166666) (not d!41356) (not bm!7166) (not d!41146) (not b!165480) (not d!41542) (not b!166413) (not b!166965) (not d!41528) (not b!166415) (not d!41814) (not bs!16232) (not b_lambda!3695) (not d!41668) (not bm!7167) (not b!166526) (not b!166966) (not b!166465) (not b!166203) (not b_lambda!3589) (not b!166216) (not b!166837) (not b!166522) (not b!166183) (not b!166786) (not d!41744) (not b!165719) (not d!41784) (not b_lambda!3593) (not d!41830) (not d!41846) (not b!166582) (not b!166941) (not b!166829) (not d!41994) (not d!41930) (not d!41506) (not d!41934) (not b!166936) (not d!41734) (not b!166864) (not b!166575) (not b!166881) b_and!10777 (not b!166198) (not b!165869) (not d!41866) (not b!166950) (not b!166499) (not b!166921) (not b!166851) (not b!166651) (not b!165857) (not b!165545) (not d!41584) (not d!41952) b_and!10787 (not b!165870) (not b!166427) (not b!166342) (not b!166895) (not d!41834) (not b!166445) (not b!166460) (not d!41728) (not b!165655) (not d!41538) (not b!166267) (not b!166574) (not b!166732) (not d!41736) (not d!41864) (not b!165697) (not b!166446) (not d!41664) (not d!41842) (not b!166809) (not d!41856) (not d!41530) (not b!166326) (not b!165720) (not d!41914) (not b!166908) (not d!42000) (not d!41978) (not b_lambda!3601) (not b!165544) (not b_next!6285) (not d!41270) (not tb!6423) (not b!166778) (not d!41510) (not d!41950) (not d!41908) (not d!41660) (not bs!16230) (not d!41750) (not d!41898) (not d!41868) (not b!166571) (not b!166535) (not b!166953) (not b!166826) (not b!166897) (not d!41604) (not d!41134) (not b!166879) b_and!10781 (not d!41852) (not b!166554) (not d!41634) (not bm!7088) (not b!166794) (not b!166887) (not b!165526) (not b!166691) (not b!165666) (not b!166266) (not d!41892) (not b!166788) (not b!165450) (not b!166537) (not b_next!6273) (not b!166838) (not bm!7101) (not b_lambda!3591) (not b!166745) (not b!166961) (not bm!7169) (not b!166718) (not b!166178) (not b!166852) (not b!166738) (not b_lambda!3701) (not b!165505) (not d!41982) (not b!166850) (not d!41662) (not b!166692) (not b!166880) (not b!166753) (not b!166901) (not b_lambda!3709) (not d!41368) (not b!166958) (not b!166892) (not b_next!6287) (not b!166639) (not d!41142) (not b_lambda!3583) (not b!166801) (not b!166192) (not d!41566) (not b!166886) (not b!166672) (not b!166843) (not b!165488) (not d!41996) (not b!166515) b_and!10785 (not bm!7175) (not b!166410) (not b!166527) (not b!166740) (not b!166513) (not b!166496) (not b!166713) (not b!166842) (not d!41738) (not b!166550) (not b!166572) (not b!166751) (not d!41812) (not b!166387) (not d!41532) (not b!165658) (not b!166727) (not d!41840) b_and!10783 (not b!166876) (not b!166385) (not b!166758) (not bm!7100) (not b!166790) (not b!166937) (not d!41848) (not d!41984) (not d!41216) (not b!166165) (not b!166689) (not bm!7177) (not b_lambda!3649) (not b!165448) (not b!166462) (not b_next!6301) (not bm!7159) (not d!41976) (not b!166849) (not b!166393) (not bm!7171) (not b!166660) (not b!166667) (not b!165868) (not b!166860) (not b!166520) (not b!166653) b_and!10505 (not b!165620) (not b!165652) (not b!166474) (not b!166762) (not b!166730) (not b!166856) (not b!166769) (not b!166146) (not b!166744) (not b!165741) (not d!41508) (not d!41176) (not b!165563) (not b!166952) (not b!166787) (not b!166466) (not b!166825) (not bm!7173) (not d!41250) (not b!166750) (not b!165695) (not b!166768) (not bm!7141) (not bm!7157) (not bm!7092) (not b!166322) (not b!166782) (not b!166458) tp_is_empty!1643 (not b!166564) b_and!10501 (not d!41918) (not b_next!6305) (not b!165542) (not d!41162) (not b!166459) (not b!166867) (not d!41568) (not b!165481) (not b!166869) (not b_next!6289) (not b!166269) (not b!165651) (not b!166407) (not d!41164) (not bm!7170) (not d!41796) (not d!41128) (not d!41172) (not b!166169) (not b!166834) (not b!165588) (not d!41850) (not d!41362) (not b_lambda!3629) (not d!41944) (not b!166870) (not b!166803) (not b!166836) (not b!166533) (not b_lambda!3697) (not d!41240) (not b!165298) (not b!166507) (not b!165502) (not bm!7165) (not b!166906) (not b!165583) (not d!41810) (not d!41960) (not b!166207) (not b!165614) (not bm!7172) (not b!166755) (not tb!6433) (not bm!7178) (not b!166528) (not d!41262) (not b!166389) (not d!41948) (not b!165552) (not b!166398) (not b!166381) (not b!166511) (not b_next!6291) (not d!42004) (not b!166510) (not b!166907) (not b!166174) (not d!41990) (not b!166896) (not b!166500) (not d!41922) (not d!41920) (not d!41762) (not b!166934) (not b!166320) (not d!41534) (not bs!16235) (not d!41158) (not d!41554) (not tb!6527) b_and!10771 (not b!166894) (not b!165698) (not bm!7176) (not b!166662) (not b!166388) (not b_lambda!3713) (not b!166942) (not d!41238) (not b!166371) (not b!166217) (not b!165279) (not b!166444) (not b_lambda!3699) (not bm!7158) (not b!165858) (not b!165662) (not b!166512) (not b!166149) (not b!166857) (not b!166723) (not b!166314) (not b!166877) (not b!166882) (not d!41936) (not d!41798) (not b!166690) (not b!166516) (not b!165516) (not d!41954) (not b!165491) (not b!166795) (not d!41788) (not b!166671) (not bm!7155) (not b!166372) b_and!10779 (not d!41130) (not b!166832) (not d!41210) (not b!166310) (not b!166224) (not d!41732) (not b!165701) (not d!41244) (not b!166776) (not d!41658) (not b!166863) (not b!166824) (not tb!6473) (not b!166930) (not d!41906) (not d!41748) (not b!166175) (not b!166263) (not b!165724) (not tb!6323) (not d!41252) (not b!166177) (not b!166728) (not b!166281) (not bs!16231) (not d!41144) (not b!165849) (not b!166270) (not b!165700) (not d!41802) (not b!165866) (not b!165490) (not bm!7147) (not d!41242) (not b!166791) (not b!166789) (not d!41372) (not d!41588) (not b!165750) (not d!41132) (not b!165489) (not b!166414) (not b!166947) (not b_lambda!3661) (not d!41716) (not b!166904) (not d!41370) (not d!41610) (not b!166659) (not b!166792) (not b!165653) (not b!165740) (not tb!6413) (not d!41258) (not d!41518) (not d!41556) (not d!41124) (not b!166189) (not tb!6313) (not d!41910) (not bs!16233) (not b!166661) b_and!10775 (not bm!7164) (not b_lambda!3693) (not b!165694) (not b!166912) (not b!166323) (not d!42002) (not b!165867) (not d!41962) (not d!41832) (not b_lambda!3711) b_and!10569)
(check-sat (not b_next!6303) b_and!10565 b_and!10773 (not b_next!6267) (not b_next!6285) b_and!10781 (not b_next!6273) (not b_next!6287) b_and!10785 b_and!10505 (not b_next!6289) (not b_next!6291) b_and!10771 b_and!10779 (not b_next!6271) (not b_next!6269) (not b_next!6275) b_and!10497 (not b_next!6265) (not b_next!6307) b_and!10787 b_and!10777 b_and!10783 (not b_next!6301) b_and!10501 (not b_next!6305) b_and!10775 b_and!10569)
