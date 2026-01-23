; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95318 () Bool)

(assert start!95318)

(declare-fun bs!259902 () Bool)

(declare-fun b!1104910 () Bool)

(assert (= bs!259902 (and b!1104910 start!95318)))

(declare-fun lambda!44300 () Int)

(declare-fun lambda!44299 () Int)

(assert (=> bs!259902 (not (= lambda!44300 lambda!44299))))

(declare-fun b!1104935 () Bool)

(declare-fun e!700202 () Bool)

(assert (=> b!1104935 (= e!700202 true)))

(declare-fun b!1104934 () Bool)

(declare-fun e!700201 () Bool)

(assert (=> b!1104934 (= e!700201 e!700202)))

(assert (=> b!1104910 e!700201))

(assert (= b!1104934 b!1104935))

(assert (= b!1104910 b!1104934))

(declare-fun lambda!44301 () Int)

(assert (=> bs!259902 (not (= lambda!44301 lambda!44299))))

(assert (=> b!1104910 (not (= lambda!44301 lambda!44300))))

(declare-fun b!1104937 () Bool)

(declare-fun e!700204 () Bool)

(assert (=> b!1104937 (= e!700204 true)))

(declare-fun b!1104936 () Bool)

(declare-fun e!700203 () Bool)

(assert (=> b!1104936 (= e!700203 e!700204)))

(assert (=> b!1104910 e!700203))

(assert (= b!1104936 b!1104937))

(assert (= b!1104910 b!1104936))

(declare-fun lambda!44302 () Int)

(assert (=> bs!259902 (not (= lambda!44302 lambda!44299))))

(assert (=> b!1104910 (not (= lambda!44302 lambda!44300))))

(assert (=> b!1104910 (not (= lambda!44302 lambda!44301))))

(declare-fun b!1104939 () Bool)

(declare-fun e!700206 () Bool)

(assert (=> b!1104939 (= e!700206 true)))

(declare-fun b!1104938 () Bool)

(declare-fun e!700205 () Bool)

(assert (=> b!1104938 (= e!700205 e!700206)))

(assert (=> b!1104910 e!700205))

(assert (= b!1104938 b!1104939))

(assert (= b!1104910 b!1104938))

(declare-fun e!700183 () Bool)

(declare-fun e!700194 () Bool)

(assert (=> b!1104910 (= e!700183 e!700194)))

(declare-fun res!489801 () Bool)

(assert (=> b!1104910 (=> (not res!489801) (not e!700194))))

(declare-datatypes ((List!10743 0))(
  ( (Nil!10727) (Cons!10727 (h!16128 (_ BitVec 16)) (t!104935 List!10743)) )
))
(declare-datatypes ((TokenValue!1916 0))(
  ( (FloatLiteralValue!3832 (text!13857 List!10743)) (TokenValueExt!1915 (__x!7498 Int)) (Broken!9580 (value!60652 List!10743)) (Object!1931) (End!1916) (Def!1916) (Underscore!1916) (Match!1916) (Else!1916) (Error!1916) (Case!1916) (If!1916) (Extends!1916) (Abstract!1916) (Class!1916) (Val!1916) (DelimiterValue!3832 (del!1976 List!10743)) (KeywordValue!1922 (value!60653 List!10743)) (CommentValue!3832 (value!60654 List!10743)) (WhitespaceValue!3832 (value!60655 List!10743)) (IndentationValue!1916 (value!60656 List!10743)) (String!13149) (Int32!1916) (Broken!9581 (value!60657 List!10743)) (Boolean!1917) (Unit!16386) (OperatorValue!1919 (op!1976 List!10743)) (IdentifierValue!3832 (value!60658 List!10743)) (IdentifierValue!3833 (value!60659 List!10743)) (WhitespaceValue!3833 (value!60660 List!10743)) (True!3832) (False!3832) (Broken!9582 (value!60661 List!10743)) (Broken!9583 (value!60662 List!10743)) (True!3833) (RightBrace!1916) (RightBracket!1916) (Colon!1916) (Null!1916) (Comma!1916) (LeftBracket!1916) (False!3833) (LeftBrace!1916) (ImaginaryLiteralValue!1916 (text!13858 List!10743)) (StringLiteralValue!5748 (value!60663 List!10743)) (EOFValue!1916 (value!60664 List!10743)) (IdentValue!1916 (value!60665 List!10743)) (DelimiterValue!3833 (value!60666 List!10743)) (DedentValue!1916 (value!60667 List!10743)) (NewLineValue!1916 (value!60668 List!10743)) (IntegerValue!5748 (value!60669 (_ BitVec 32)) (text!13859 List!10743)) (IntegerValue!5749 (value!60670 Int) (text!13860 List!10743)) (Times!1916) (Or!1916) (Equal!1916) (Minus!1916) (Broken!9584 (value!60671 List!10743)) (And!1916) (Div!1916) (LessEqual!1916) (Mod!1916) (Concat!5035) (Not!1916) (Plus!1916) (SpaceValue!1916 (value!60672 List!10743)) (IntegerValue!5750 (value!60673 Int) (text!13861 List!10743)) (StringLiteralValue!5749 (text!13862 List!10743)) (FloatLiteralValue!3833 (text!13863 List!10743)) (BytesLiteralValue!1916 (value!60674 List!10743)) (CommentValue!3833 (value!60675 List!10743)) (StringLiteralValue!5750 (value!60676 List!10743)) (ErrorTokenValue!1916 (msg!1977 List!10743)) )
))
(declare-datatypes ((Regex!3119 0))(
  ( (ElementMatch!3119 (c!187592 (_ BitVec 16))) (Concat!5036 (regOne!6750 Regex!3119) (regTwo!6750 Regex!3119)) (EmptyExpr!3119) (Star!3119 (reg!3448 Regex!3119)) (EmptyLang!3119) (Union!3119 (regOne!6751 Regex!3119) (regTwo!6751 Regex!3119)) )
))
(declare-datatypes ((String!13150 0))(
  ( (String!13151 (value!60677 String)) )
))
(declare-datatypes ((IArray!6759 0))(
  ( (IArray!6760 (innerList!3437 List!10743)) )
))
(declare-datatypes ((Conc!3377 0))(
  ( (Node!3377 (left!9321 Conc!3377) (right!9651 Conc!3377) (csize!6984 Int) (cheight!3588 Int)) (Leaf!5308 (xs!6070 IArray!6759) (csize!6985 Int)) (Empty!3377) )
))
(declare-datatypes ((BalanceConc!6768 0))(
  ( (BalanceConc!6769 (c!187593 Conc!3377)) )
))
(declare-datatypes ((TokenValueInjection!3532 0))(
  ( (TokenValueInjection!3533 (toValue!2927 Int) (toChars!2786 Int)) )
))
(declare-datatypes ((Rule!3500 0))(
  ( (Rule!3501 (regex!1850 Regex!3119) (tag!2112 String!13150) (isSeparator!1850 Bool) (transformation!1850 TokenValueInjection!3532)) )
))
(declare-datatypes ((Token!3366 0))(
  ( (Token!3367 (value!60678 TokenValue!1916) (rule!3273 Rule!3500) (size!8342 Int) (originalCharacters!2406 List!10743)) )
))
(declare-datatypes ((List!10744 0))(
  ( (Nil!10728) (Cons!10728 (h!16129 Token!3366) (t!104936 List!10744)) )
))
(declare-datatypes ((IArray!6761 0))(
  ( (IArray!6762 (innerList!3438 List!10744)) )
))
(declare-datatypes ((Conc!3378 0))(
  ( (Node!3378 (left!9322 Conc!3378) (right!9652 Conc!3378) (csize!6986 Int) (cheight!3589 Int)) (Leaf!5309 (xs!6071 IArray!6761) (csize!6987 Int)) (Empty!3378) )
))
(declare-datatypes ((List!10745 0))(
  ( (Nil!10729) (Cons!10729 (h!16130 Rule!3500) (t!104937 List!10745)) )
))
(declare-datatypes ((BalanceConc!6770 0))(
  ( (BalanceConc!6771 (c!187594 Conc!3378)) )
))
(declare-datatypes ((PrintableTokens!416 0))(
  ( (PrintableTokens!417 (rules!9137 List!10745) (tokens!1409 BalanceConc!6770)) )
))
(declare-datatypes ((tuple2!11826 0))(
  ( (tuple2!11827 (_1!6739 Int) (_2!6739 PrintableTokens!416)) )
))
(declare-datatypes ((List!10746 0))(
  ( (Nil!10730) (Cons!10730 (h!16131 tuple2!11826) (t!104938 List!10746)) )
))
(declare-datatypes ((IArray!6763 0))(
  ( (IArray!6764 (innerList!3439 List!10746)) )
))
(declare-datatypes ((Conc!3379 0))(
  ( (Node!3379 (left!9323 Conc!3379) (right!9653 Conc!3379) (csize!6988 Int) (cheight!3590 Int)) (Leaf!5310 (xs!6072 IArray!6763) (csize!6989 Int)) (Empty!3379) )
))
(declare-datatypes ((BalanceConc!6772 0))(
  ( (BalanceConc!6773 (c!187595 Conc!3379)) )
))
(declare-fun objs!8 () BalanceConc!6772)

(declare-fun lt!374619 () tuple2!11826)

(declare-fun contains!1929 (BalanceConc!6772 tuple2!11826) Bool)

(assert (=> b!1104910 (= res!489801 (contains!1929 objs!8 lt!374619))))

(declare-fun lt!374607 () BalanceConc!6772)

(declare-fun filter!409 (BalanceConc!6772 Int) BalanceConc!6772)

(assert (=> b!1104910 (= lt!374607 (filter!409 objs!8 lambda!44302))))

(declare-fun lt!374618 () BalanceConc!6772)

(assert (=> b!1104910 (= lt!374618 (filter!409 objs!8 lambda!44301))))

(declare-fun lt!374630 () BalanceConc!6772)

(assert (=> b!1104910 (= lt!374630 (filter!409 objs!8 lambda!44300))))

(declare-fun lt!374605 () Int)

(declare-fun apply!2201 (BalanceConc!6772 Int) tuple2!11826)

(assert (=> b!1104910 (= lt!374619 (apply!2201 objs!8 (ite (>= lt!374605 0) (div lt!374605 2) (- (div (- lt!374605) 2)))))))

(declare-fun b!1104911 () Bool)

(declare-datatypes ((Unit!16387 0))(
  ( (Unit!16388) )
))
(declare-fun e!700192 () Unit!16387)

(declare-fun err!2977 () Unit!16387)

(assert (=> b!1104911 (= e!700192 err!2977)))

(declare-fun lt!374622 () Unit!16387)

(declare-fun forallContained!544 (List!10746 Int tuple2!11826) Unit!16387)

(declare-fun list!3874 (BalanceConc!6772) List!10746)

(assert (=> b!1104911 (= lt!374622 (forallContained!544 (list!3874 objs!8) lambda!44300 lt!374619))))

(assert (=> b!1104911 true))

(declare-fun b!1104912 () Bool)

(declare-fun e!700195 () Unit!16387)

(declare-fun Unit!16389 () Unit!16387)

(assert (=> b!1104912 (= e!700195 Unit!16389)))

(declare-fun res!489802 () Bool)

(declare-fun e!700187 () Bool)

(assert (=> start!95318 (=> (not res!489802) (not e!700187))))

(declare-fun forall!2521 (BalanceConc!6772 Int) Bool)

(assert (=> start!95318 (= res!489802 (forall!2521 objs!8 lambda!44299))))

(assert (=> start!95318 e!700187))

(declare-fun e!700193 () Bool)

(declare-fun inv!13794 (BalanceConc!6772) Bool)

(assert (=> start!95318 (and (inv!13794 objs!8) e!700193)))

(declare-fun b!1104913 () Bool)

(declare-fun e!700188 () Unit!16387)

(declare-fun Unit!16390 () Unit!16387)

(assert (=> b!1104913 (= e!700188 Unit!16390)))

(declare-fun b!1104914 () Bool)

(declare-fun err!2975 () Unit!16387)

(assert (=> b!1104914 (= e!700195 err!2975)))

(declare-fun lt!374610 () Unit!16387)

(assert (=> b!1104914 (= lt!374610 (forallContained!544 (list!3874 lt!374630) lambda!44300 lt!374619))))

(assert (=> b!1104914 true))

(declare-fun b!1104915 () Bool)

(declare-fun e!700190 () Bool)

(assert (=> b!1104915 (= e!700194 e!700190)))

(declare-fun res!489798 () Bool)

(assert (=> b!1104915 (=> (not res!489798) (not e!700190))))

(declare-fun lt!374615 () Bool)

(assert (=> b!1104915 (= res!489798 (not lt!374615))))

(declare-fun lt!374620 () Unit!16387)

(assert (=> b!1104915 (= lt!374620 e!700195)))

(declare-fun c!187590 () Bool)

(assert (=> b!1104915 (= c!187590 lt!374615)))

(assert (=> b!1104915 (= lt!374615 (contains!1929 lt!374630 lt!374619))))

(declare-fun b!1104916 () Bool)

(assert (=> b!1104916 (= e!700187 e!700183)))

(declare-fun res!489797 () Bool)

(assert (=> b!1104916 (=> (not res!489797) (not e!700183))))

(assert (=> b!1104916 (= res!489797 (> lt!374605 1))))

(declare-fun size!8343 (BalanceConc!6772) Int)

(assert (=> b!1104916 (= lt!374605 (size!8343 objs!8))))

(declare-fun b!1104917 () Bool)

(declare-fun e!700191 () Bool)

(declare-fun e!700186 () Bool)

(assert (=> b!1104917 (= e!700191 e!700186)))

(declare-fun res!489803 () Bool)

(assert (=> b!1104917 (=> res!489803 e!700186)))

(declare-fun lt!374609 () Bool)

(assert (=> b!1104917 (= res!489803 lt!374609)))

(declare-fun lt!374612 () Unit!16387)

(declare-fun e!700189 () Unit!16387)

(assert (=> b!1104917 (= lt!374612 e!700189)))

(declare-fun c!187591 () Bool)

(assert (=> b!1104917 (= c!187591 lt!374609)))

(assert (=> b!1104917 (= lt!374609 (contains!1929 lt!374607 lt!374619))))

(declare-fun b!1104918 () Bool)

(declare-fun e!700196 () Bool)

(declare-fun lt!374611 () List!10746)

(declare-fun size!8344 (List!10746) Int)

(declare-fun filter!410 (List!10746 Int) List!10746)

(assert (=> b!1104918 (= e!700196 (< (size!8344 (filter!410 lt!374611 lambda!44300)) (size!8344 lt!374611)))))

(declare-fun b!1104919 () Bool)

(declare-fun Unit!16391 () Unit!16387)

(assert (=> b!1104919 (= e!700192 Unit!16391)))

(declare-fun b!1104920 () Bool)

(declare-fun Unit!16392 () Unit!16387)

(assert (=> b!1104920 (= e!700189 Unit!16392)))

(declare-fun b!1104921 () Bool)

(declare-fun e!700184 () Bool)

(assert (=> b!1104921 (= e!700186 e!700184)))

(declare-fun res!489805 () Bool)

(assert (=> b!1104921 (=> res!489805 e!700184)))

(assert (=> b!1104921 (= res!489805 (>= (size!8343 lt!374607) lt!374605))))

(declare-fun e!700185 () Bool)

(assert (=> b!1104921 e!700185))

(declare-fun res!489800 () Bool)

(assert (=> b!1104921 (=> res!489800 e!700185)))

(declare-fun lt!374623 () Bool)

(assert (=> b!1104921 (= res!489800 lt!374623)))

(declare-fun lt!374627 () Unit!16387)

(declare-fun lemmaNotForallFilterShorter!77 (List!10746 Int) Unit!16387)

(assert (=> b!1104921 (= lt!374627 (lemmaNotForallFilterShorter!77 lt!374611 lambda!44302))))

(declare-fun lt!374621 () Unit!16387)

(assert (=> b!1104921 (= lt!374621 e!700188)))

(declare-fun c!187588 () Bool)

(assert (=> b!1104921 (= c!187588 (forall!2521 objs!8 lambda!44302))))

(declare-fun b!1104922 () Bool)

(assert (=> b!1104922 (= e!700185 (< (size!8344 (filter!410 lt!374611 lambda!44302)) (size!8344 lt!374611)))))

(declare-fun b!1104923 () Bool)

(assert (=> b!1104923 (= e!700190 (not e!700191))))

(declare-fun res!489799 () Bool)

(assert (=> b!1104923 (=> res!489799 e!700191)))

(assert (=> b!1104923 (= res!489799 (>= (size!8343 lt!374630) lt!374605))))

(assert (=> b!1104923 e!700196))

(declare-fun res!489804 () Bool)

(assert (=> b!1104923 (=> res!489804 e!700196)))

(assert (=> b!1104923 (= res!489804 lt!374623)))

(declare-fun isEmpty!6715 (List!10746) Bool)

(assert (=> b!1104923 (= lt!374623 (isEmpty!6715 lt!374611))))

(declare-fun lt!374633 () Unit!16387)

(assert (=> b!1104923 (= lt!374633 (lemmaNotForallFilterShorter!77 lt!374611 lambda!44300))))

(assert (=> b!1104923 (= lt!374611 (list!3874 objs!8))))

(declare-fun lt!374608 () Unit!16387)

(assert (=> b!1104923 (= lt!374608 e!700192)))

(declare-fun c!187589 () Bool)

(assert (=> b!1104923 (= c!187589 (forall!2521 objs!8 lambda!44300))))

(declare-fun b!1104924 () Bool)

(declare-fun err!2974 () Unit!16387)

(assert (=> b!1104924 (= e!700188 err!2974)))

(declare-fun lt!374629 () Unit!16387)

(assert (=> b!1104924 (= lt!374629 (forallContained!544 lt!374611 lambda!44302 lt!374619))))

(assert (=> b!1104924 true))

(declare-fun b!1104925 () Bool)

(declare-fun tp!327296 () Bool)

(declare-fun inv!13795 (Conc!3379) Bool)

(assert (=> b!1104925 (= e!700193 (and (inv!13795 (c!187595 objs!8)) tp!327296))))

(declare-fun b!1104926 () Bool)

(declare-fun err!2976 () Unit!16387)

(assert (=> b!1104926 (= e!700189 err!2976)))

(declare-fun lt!374614 () Unit!16387)

(assert (=> b!1104926 (= lt!374614 (forallContained!544 (list!3874 lt!374607) lambda!44302 lt!374619))))

(assert (=> b!1104926 true))

(declare-fun b!1104927 () Bool)

(assert (=> b!1104927 (= e!700184 true)))

(declare-fun lt!374625 () List!10746)

(declare-fun lt!374631 () List!10746)

(declare-fun lt!374604 () List!10746)

(declare-fun ++!2881 (List!10746 List!10746) List!10746)

(assert (=> b!1104927 (= lt!374625 (++!2881 lt!374631 lt!374604))))

(declare-fun lt!374632 () Unit!16387)

(declare-fun lemmaConcatPreservesForall!96 (List!10746 List!10746 Int) Unit!16387)

(assert (=> b!1104927 (= lt!374632 (lemmaConcatPreservesForall!96 lt!374631 lt!374604 lambda!44299))))

(assert (=> b!1104927 (= lt!374604 (list!3874 lt!374618))))

(declare-fun sortObjectsByID!0 (BalanceConc!6772) BalanceConc!6772)

(assert (=> b!1104927 (= lt!374631 (list!3874 (sortObjectsByID!0 lt!374630)))))

(declare-fun lt!374635 () List!10746)

(declare-fun forall!2522 (List!10746 Int) Bool)

(assert (=> b!1104927 (forall!2522 lt!374635 lambda!44299)))

(declare-fun lt!374606 () Unit!16387)

(declare-fun lemmaForallSubseq!63 (List!10746 List!10746 Int) Unit!16387)

(assert (=> b!1104927 (= lt!374606 (lemmaForallSubseq!63 lt!374635 lt!374611 lambda!44299))))

(assert (=> b!1104927 (= lt!374635 (list!3874 (filter!409 objs!8 lambda!44302)))))

(declare-fun lt!374613 () List!10746)

(assert (=> b!1104927 (forall!2522 lt!374613 lambda!44299)))

(declare-fun lt!374634 () Unit!16387)

(assert (=> b!1104927 (= lt!374634 (lemmaForallSubseq!63 lt!374613 lt!374611 lambda!44299))))

(assert (=> b!1104927 (= lt!374613 (list!3874 (filter!409 objs!8 lambda!44301)))))

(declare-fun lt!374624 () List!10746)

(assert (=> b!1104927 (forall!2522 lt!374624 lambda!44299)))

(declare-fun lt!374628 () Unit!16387)

(assert (=> b!1104927 (= lt!374628 (lemmaForallSubseq!63 lt!374624 lt!374611 lambda!44299))))

(assert (=> b!1104927 (= lt!374624 (list!3874 (filter!409 objs!8 lambda!44300)))))

(declare-fun lt!374616 () Unit!16387)

(declare-fun filterSubseq!59 (List!10746 Int) Unit!16387)

(assert (=> b!1104927 (= lt!374616 (filterSubseq!59 lt!374611 lambda!44302))))

(declare-fun lt!374626 () Unit!16387)

(assert (=> b!1104927 (= lt!374626 (filterSubseq!59 lt!374611 lambda!44301))))

(declare-fun lt!374617 () Unit!16387)

(assert (=> b!1104927 (= lt!374617 (filterSubseq!59 lt!374611 lambda!44300))))

(assert (= (and start!95318 res!489802) b!1104916))

(assert (= (and b!1104916 res!489797) b!1104910))

(assert (= (and b!1104910 res!489801) b!1104915))

(assert (= (and b!1104915 c!187590) b!1104914))

(assert (= (and b!1104915 (not c!187590)) b!1104912))

(assert (= (and b!1104915 res!489798) b!1104923))

(assert (= (and b!1104923 c!187589) b!1104911))

(assert (= (and b!1104923 (not c!187589)) b!1104919))

(assert (= (and b!1104923 (not res!489804)) b!1104918))

(assert (= (and b!1104923 (not res!489799)) b!1104917))

(assert (= (and b!1104917 c!187591) b!1104926))

(assert (= (and b!1104917 (not c!187591)) b!1104920))

(assert (= (and b!1104917 (not res!489803)) b!1104921))

(assert (= (and b!1104921 c!187588) b!1104924))

(assert (= (and b!1104921 (not c!187588)) b!1104913))

(assert (= (and b!1104921 (not res!489800)) b!1104922))

(assert (= (and b!1104921 (not res!489805)) b!1104927))

(assert (= start!95318 b!1104925))

(declare-fun m!1261725 () Bool)

(assert (=> b!1104914 m!1261725))

(assert (=> b!1104914 m!1261725))

(declare-fun m!1261727 () Bool)

(assert (=> b!1104914 m!1261727))

(declare-fun m!1261729 () Bool)

(assert (=> b!1104910 m!1261729))

(declare-fun m!1261731 () Bool)

(assert (=> b!1104910 m!1261731))

(declare-fun m!1261733 () Bool)

(assert (=> b!1104910 m!1261733))

(declare-fun m!1261735 () Bool)

(assert (=> b!1104910 m!1261735))

(declare-fun m!1261737 () Bool)

(assert (=> b!1104910 m!1261737))

(declare-fun m!1261739 () Bool)

(assert (=> b!1104918 m!1261739))

(assert (=> b!1104918 m!1261739))

(declare-fun m!1261741 () Bool)

(assert (=> b!1104918 m!1261741))

(declare-fun m!1261743 () Bool)

(assert (=> b!1104918 m!1261743))

(declare-fun m!1261745 () Bool)

(assert (=> b!1104917 m!1261745))

(declare-fun m!1261747 () Bool)

(assert (=> b!1104921 m!1261747))

(declare-fun m!1261749 () Bool)

(assert (=> b!1104921 m!1261749))

(declare-fun m!1261751 () Bool)

(assert (=> b!1104921 m!1261751))

(declare-fun m!1261753 () Bool)

(assert (=> b!1104916 m!1261753))

(declare-fun m!1261755 () Bool)

(assert (=> b!1104915 m!1261755))

(declare-fun m!1261757 () Bool)

(assert (=> start!95318 m!1261757))

(declare-fun m!1261759 () Bool)

(assert (=> start!95318 m!1261759))

(declare-fun m!1261761 () Bool)

(assert (=> b!1104911 m!1261761))

(assert (=> b!1104911 m!1261761))

(declare-fun m!1261763 () Bool)

(assert (=> b!1104911 m!1261763))

(declare-fun m!1261765 () Bool)

(assert (=> b!1104924 m!1261765))

(declare-fun m!1261767 () Bool)

(assert (=> b!1104922 m!1261767))

(assert (=> b!1104922 m!1261767))

(declare-fun m!1261769 () Bool)

(assert (=> b!1104922 m!1261769))

(assert (=> b!1104922 m!1261743))

(declare-fun m!1261771 () Bool)

(assert (=> b!1104925 m!1261771))

(declare-fun m!1261773 () Bool)

(assert (=> b!1104926 m!1261773))

(assert (=> b!1104926 m!1261773))

(declare-fun m!1261775 () Bool)

(assert (=> b!1104926 m!1261775))

(declare-fun m!1261777 () Bool)

(assert (=> b!1104927 m!1261777))

(declare-fun m!1261779 () Bool)

(assert (=> b!1104927 m!1261779))

(declare-fun m!1261781 () Bool)

(assert (=> b!1104927 m!1261781))

(declare-fun m!1261783 () Bool)

(assert (=> b!1104927 m!1261783))

(assert (=> b!1104927 m!1261731))

(declare-fun m!1261785 () Bool)

(assert (=> b!1104927 m!1261785))

(assert (=> b!1104927 m!1261735))

(declare-fun m!1261787 () Bool)

(assert (=> b!1104927 m!1261787))

(declare-fun m!1261789 () Bool)

(assert (=> b!1104927 m!1261789))

(declare-fun m!1261791 () Bool)

(assert (=> b!1104927 m!1261791))

(assert (=> b!1104927 m!1261737))

(declare-fun m!1261793 () Bool)

(assert (=> b!1104927 m!1261793))

(declare-fun m!1261795 () Bool)

(assert (=> b!1104927 m!1261795))

(assert (=> b!1104927 m!1261731))

(declare-fun m!1261797 () Bool)

(assert (=> b!1104927 m!1261797))

(declare-fun m!1261799 () Bool)

(assert (=> b!1104927 m!1261799))

(assert (=> b!1104927 m!1261737))

(declare-fun m!1261801 () Bool)

(assert (=> b!1104927 m!1261801))

(assert (=> b!1104927 m!1261789))

(declare-fun m!1261803 () Bool)

(assert (=> b!1104927 m!1261803))

(declare-fun m!1261805 () Bool)

(assert (=> b!1104927 m!1261805))

(assert (=> b!1104927 m!1261735))

(declare-fun m!1261807 () Bool)

(assert (=> b!1104927 m!1261807))

(declare-fun m!1261809 () Bool)

(assert (=> b!1104927 m!1261809))

(assert (=> b!1104923 m!1261761))

(declare-fun m!1261811 () Bool)

(assert (=> b!1104923 m!1261811))

(declare-fun m!1261813 () Bool)

(assert (=> b!1104923 m!1261813))

(declare-fun m!1261815 () Bool)

(assert (=> b!1104923 m!1261815))

(declare-fun m!1261817 () Bool)

(assert (=> b!1104923 m!1261817))

(check-sat (not b!1104916) (not b!1104911) (not b!1104910) (not b!1104917) (not b!1104935) (not b!1104923) (not b!1104934) (not b!1104939) (not b!1104936) (not start!95318) (not b!1104924) (not b!1104927) (not b!1104914) (not b!1104921) (not b!1104922) (not b!1104915) (not b!1104937) (not b!1104918) (not b!1104925) (not b!1104926) (not b!1104938))
(check-sat)
