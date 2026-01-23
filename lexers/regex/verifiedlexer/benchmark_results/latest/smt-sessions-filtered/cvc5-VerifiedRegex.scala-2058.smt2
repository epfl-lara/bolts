; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104652 () Bool)

(assert start!104652)

(declare-fun b!1181749 () Bool)

(declare-fun b_free!28197 () Bool)

(declare-fun b_next!28901 () Bool)

(assert (=> b!1181749 (= b_free!28197 (not b_next!28901))))

(declare-fun tp!336703 () Bool)

(declare-fun b_and!81189 () Bool)

(assert (=> b!1181749 (= tp!336703 b_and!81189)))

(declare-fun b_free!28199 () Bool)

(declare-fun b_next!28903 () Bool)

(assert (=> b!1181749 (= b_free!28199 (not b_next!28903))))

(declare-fun tp!336705 () Bool)

(declare-fun b_and!81191 () Bool)

(assert (=> b!1181749 (= tp!336705 b_and!81191)))

(declare-fun b!1181750 () Bool)

(declare-fun b_free!28201 () Bool)

(declare-fun b_next!28905 () Bool)

(assert (=> b!1181750 (= b_free!28201 (not b_next!28905))))

(declare-fun tp!336706 () Bool)

(declare-fun b_and!81193 () Bool)

(assert (=> b!1181750 (= tp!336706 b_and!81193)))

(declare-fun b_free!28203 () Bool)

(declare-fun b_next!28907 () Bool)

(assert (=> b!1181750 (= b_free!28203 (not b_next!28907))))

(declare-fun tp!336707 () Bool)

(declare-fun b_and!81195 () Bool)

(assert (=> b!1181750 (= tp!336707 b_and!81195)))

(declare-fun b!1181765 () Bool)

(declare-fun e!758621 () Bool)

(assert (=> b!1181765 (= e!758621 true)))

(declare-fun b!1181764 () Bool)

(declare-fun e!758620 () Bool)

(assert (=> b!1181764 (= e!758620 e!758621)))

(declare-fun b!1181763 () Bool)

(declare-fun e!758619 () Bool)

(assert (=> b!1181763 (= e!758619 e!758620)))

(declare-fun b!1181742 () Bool)

(assert (=> b!1181742 e!758619))

(assert (= b!1181764 b!1181765))

(assert (= b!1181763 b!1181764))

(declare-datatypes ((C!6970 0))(
  ( (C!6971 (val!3781 Int)) )
))
(declare-datatypes ((List!11812 0))(
  ( (Nil!11788) (Cons!11788 (h!17189 C!6970) (t!111488 List!11812)) )
))
(declare-datatypes ((IArray!7729 0))(
  ( (IArray!7730 (innerList!3922 List!11812)) )
))
(declare-datatypes ((Conc!3862 0))(
  ( (Node!3862 (left!10270 Conc!3862) (right!10600 Conc!3862) (csize!7954 Int) (cheight!4073 Int)) (Leaf!5921 (xs!6567 IArray!7729) (csize!7955 Int)) (Empty!3862) )
))
(declare-datatypes ((List!11813 0))(
  ( (Nil!11789) (Cons!11789 (h!17190 (_ BitVec 16)) (t!111489 List!11813)) )
))
(declare-datatypes ((String!14279 0))(
  ( (String!14280 (value!66628 String)) )
))
(declare-datatypes ((BalanceConc!7746 0))(
  ( (BalanceConc!7747 (c!196810 Conc!3862)) )
))
(declare-datatypes ((TokenValue!2122 0))(
  ( (FloatLiteralValue!4244 (text!15299 List!11813)) (TokenValueExt!2121 (__x!7955 Int)) (Broken!10610 (value!66629 List!11813)) (Object!2145) (End!2122) (Def!2122) (Underscore!2122) (Match!2122) (Else!2122) (Error!2122) (Case!2122) (If!2122) (Extends!2122) (Abstract!2122) (Class!2122) (Val!2122) (DelimiterValue!4244 (del!2182 List!11813)) (KeywordValue!2128 (value!66630 List!11813)) (CommentValue!4244 (value!66631 List!11813)) (WhitespaceValue!4244 (value!66632 List!11813)) (IndentationValue!2122 (value!66633 List!11813)) (String!14281) (Int32!2122) (Broken!10611 (value!66634 List!11813)) (Boolean!2123) (Unit!18104) (OperatorValue!2125 (op!2182 List!11813)) (IdentifierValue!4244 (value!66635 List!11813)) (IdentifierValue!4245 (value!66636 List!11813)) (WhitespaceValue!4245 (value!66637 List!11813)) (True!4244) (False!4244) (Broken!10612 (value!66638 List!11813)) (Broken!10613 (value!66639 List!11813)) (True!4245) (RightBrace!2122) (RightBracket!2122) (Colon!2122) (Null!2122) (Comma!2122) (LeftBracket!2122) (False!4245) (LeftBrace!2122) (ImaginaryLiteralValue!2122 (text!15300 List!11813)) (StringLiteralValue!6366 (value!66640 List!11813)) (EOFValue!2122 (value!66641 List!11813)) (IdentValue!2122 (value!66642 List!11813)) (DelimiterValue!4245 (value!66643 List!11813)) (DedentValue!2122 (value!66644 List!11813)) (NewLineValue!2122 (value!66645 List!11813)) (IntegerValue!6366 (value!66646 (_ BitVec 32)) (text!15301 List!11813)) (IntegerValue!6367 (value!66647 Int) (text!15302 List!11813)) (Times!2122) (Or!2122) (Equal!2122) (Minus!2122) (Broken!10614 (value!66648 List!11813)) (And!2122) (Div!2122) (LessEqual!2122) (Mod!2122) (Concat!5448) (Not!2122) (Plus!2122) (SpaceValue!2122 (value!66649 List!11813)) (IntegerValue!6368 (value!66650 Int) (text!15303 List!11813)) (StringLiteralValue!6367 (text!15304 List!11813)) (FloatLiteralValue!4245 (text!15305 List!11813)) (BytesLiteralValue!2122 (value!66651 List!11813)) (CommentValue!4245 (value!66652 List!11813)) (StringLiteralValue!6368 (value!66653 List!11813)) (ErrorTokenValue!2122 (msg!2183 List!11813)) )
))
(declare-datatypes ((Regex!3326 0))(
  ( (ElementMatch!3326 (c!196811 C!6970)) (Concat!5449 (regOne!7164 Regex!3326) (regTwo!7164 Regex!3326)) (EmptyExpr!3326) (Star!3326 (reg!3655 Regex!3326)) (EmptyLang!3326) (Union!3326 (regOne!7165 Regex!3326) (regTwo!7165 Regex!3326)) )
))
(declare-datatypes ((TokenValueInjection!3944 0))(
  ( (TokenValueInjection!3945 (toValue!3165 Int) (toChars!3024 Int)) )
))
(declare-datatypes ((Rule!3912 0))(
  ( (Rule!3913 (regex!2056 Regex!3326) (tag!2318 String!14279) (isSeparator!2056 Bool) (transformation!2056 TokenValueInjection!3944)) )
))
(declare-datatypes ((List!11814 0))(
  ( (Nil!11790) (Cons!11790 (h!17191 Rule!3912) (t!111490 List!11814)) )
))
(declare-fun rules!4386 () List!11814)

(assert (= (and b!1181742 (is-Cons!11790 rules!4386)) b!1181763))

(declare-fun order!7257 () Int)

(declare-fun lambda!48672 () Int)

(declare-fun order!7255 () Int)

(declare-fun dynLambda!5217 (Int Int) Int)

(declare-fun dynLambda!5218 (Int Int) Int)

(assert (=> b!1181765 (< (dynLambda!5217 order!7255 (toValue!3165 (transformation!2056 (h!17191 rules!4386)))) (dynLambda!5218 order!7257 lambda!48672))))

(declare-fun order!7259 () Int)

(declare-fun dynLambda!5219 (Int Int) Int)

(assert (=> b!1181765 (< (dynLambda!5219 order!7259 (toChars!3024 (transformation!2056 (h!17191 rules!4386)))) (dynLambda!5218 order!7257 lambda!48672))))

(declare-fun res!534118 () Bool)

(declare-fun e!758612 () Bool)

(assert (=> start!104652 (=> (not res!534118) (not e!758612))))

(declare-datatypes ((LexerInterface!1751 0))(
  ( (LexerInterfaceExt!1748 (__x!7956 Int)) (Lexer!1749) )
))
(declare-fun thiss!27592 () LexerInterface!1751)

(assert (=> start!104652 (= res!534118 (is-Lexer!1749 thiss!27592))))

(assert (=> start!104652 e!758612))

(assert (=> start!104652 true))

(declare-fun e!758608 () Bool)

(assert (=> start!104652 e!758608))

(declare-fun e!758601 () Bool)

(assert (=> start!104652 e!758601))

(declare-fun b!1181740 () Bool)

(declare-fun res!534112 () Bool)

(assert (=> b!1181740 (=> (not res!534112) (not e!758612))))

(declare-datatypes ((Token!3774 0))(
  ( (Token!3775 (value!66654 TokenValue!2122) (rule!3477 Rule!3912) (size!9308 Int) (originalCharacters!2610 List!11812)) )
))
(declare-datatypes ((List!11815 0))(
  ( (Nil!11791) (Cons!11791 (h!17192 Token!3774) (t!111491 List!11815)) )
))
(declare-fun l!6534 () List!11815)

(declare-fun i!1621 () Int)

(assert (=> b!1181740 (= res!534112 (and (not (is-Nil!11791 l!6534)) (<= i!1621 0)))))

(declare-fun b!1181741 () Bool)

(declare-fun e!758609 () Bool)

(declare-fun e!758604 () Bool)

(assert (=> b!1181741 (= e!758609 e!758604)))

(declare-fun res!534119 () Bool)

(assert (=> b!1181741 (=> (not res!534119) (not e!758604))))

(declare-fun lt!406817 () List!11815)

(declare-fun rulesProduceIndividualToken!782 (LexerInterface!1751 List!11814 Token!3774) Bool)

(assert (=> b!1181741 (= res!534119 (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 lt!406817)))))

(declare-fun lt!406815 () Bool)

(assert (=> b!1181742 (= e!758612 (not lt!406815))))

(declare-fun forall!3119 (List!11815 Int) Bool)

(assert (=> b!1181742 (forall!3119 lt!406817 lambda!48672)))

(declare-datatypes ((Unit!18105 0))(
  ( (Unit!18106) )
))
(declare-fun lt!406816 () Unit!18105)

(declare-fun lemmaForallSubseq!176 (List!11815 List!11815 Int) Unit!18105)

(assert (=> b!1181742 (= lt!406816 (lemmaForallSubseq!176 lt!406817 l!6534 lambda!48672))))

(declare-fun subseq!312 (List!11815 List!11815) Bool)

(assert (=> b!1181742 (subseq!312 lt!406817 l!6534)))

(declare-fun lt!406818 () Unit!18105)

(declare-fun lemmaDropSubseq!75 (List!11815 Int) Unit!18105)

(assert (=> b!1181742 (= lt!406818 (lemmaDropSubseq!75 l!6534 i!1621))))

(assert (=> b!1181742 (= lt!406815 e!758609)))

(declare-fun res!534114 () Bool)

(assert (=> b!1181742 (=> res!534114 e!758609)))

(assert (=> b!1181742 (= res!534114 (not (is-Cons!11791 lt!406817)))))

(declare-fun rulesProduceEachTokenIndividuallyList!617 (LexerInterface!1751 List!11814 List!11815) Bool)

(assert (=> b!1181742 (= lt!406815 (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 lt!406817))))

(declare-fun drop!536 (List!11815 Int) List!11815)

(assert (=> b!1181742 (= lt!406817 (drop!536 l!6534 i!1621))))

(declare-fun e!758606 () Bool)

(declare-fun tp!336704 () Bool)

(declare-fun e!758600 () Bool)

(declare-fun b!1181743 () Bool)

(declare-fun inv!21 (TokenValue!2122) Bool)

(assert (=> b!1181743 (= e!758606 (and (inv!21 (value!66654 (h!17192 l!6534))) e!758600 tp!336704))))

(declare-fun b!1181744 () Bool)

(declare-fun res!534116 () Bool)

(assert (=> b!1181744 (=> (not res!534116) (not e!758612))))

(assert (=> b!1181744 (= res!534116 (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1181745 () Bool)

(declare-fun res!534117 () Bool)

(assert (=> b!1181745 (=> (not res!534117) (not e!758612))))

(declare-fun rulesInvariant!1625 (LexerInterface!1751 List!11814) Bool)

(assert (=> b!1181745 (= res!534117 (rulesInvariant!1625 thiss!27592 rules!4386))))

(declare-fun b!1181746 () Bool)

(declare-fun res!534113 () Bool)

(assert (=> b!1181746 (=> (not res!534113) (not e!758612))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!145 (LexerInterface!1751 List!11815 List!11814) Bool)

(assert (=> b!1181746 (= res!534113 (tokensListTwoByTwoPredicateSeparableList!145 thiss!27592 l!6534 rules!4386))))

(declare-fun e!758605 () Bool)

(declare-fun b!1181747 () Bool)

(declare-fun tp!336709 () Bool)

(declare-fun e!758607 () Bool)

(declare-fun inv!15607 (String!14279) Bool)

(declare-fun inv!15610 (TokenValueInjection!3944) Bool)

(assert (=> b!1181747 (= e!758607 (and tp!336709 (inv!15607 (tag!2318 (h!17191 rules!4386))) (inv!15610 (transformation!2056 (h!17191 rules!4386))) e!758605))))

(declare-fun e!758611 () Bool)

(declare-fun b!1181748 () Bool)

(declare-fun tp!336702 () Bool)

(assert (=> b!1181748 (= e!758600 (and tp!336702 (inv!15607 (tag!2318 (rule!3477 (h!17192 l!6534)))) (inv!15610 (transformation!2056 (rule!3477 (h!17192 l!6534)))) e!758611))))

(assert (=> b!1181749 (= e!758611 (and tp!336703 tp!336705))))

(assert (=> b!1181750 (= e!758605 (and tp!336706 tp!336707))))

(declare-fun b!1181751 () Bool)

(assert (=> b!1181751 (= e!758604 (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 (t!111491 lt!406817)))))

(declare-fun b!1181752 () Bool)

(declare-fun res!534115 () Bool)

(assert (=> b!1181752 (=> (not res!534115) (not e!758612))))

(declare-fun isEmpty!7109 (List!11814) Bool)

(assert (=> b!1181752 (= res!534115 (not (isEmpty!7109 rules!4386)))))

(declare-fun tp!336708 () Bool)

(declare-fun b!1181753 () Bool)

(declare-fun inv!15611 (Token!3774) Bool)

(assert (=> b!1181753 (= e!758601 (and (inv!15611 (h!17192 l!6534)) e!758606 tp!336708))))

(declare-fun b!1181754 () Bool)

(declare-fun tp!336701 () Bool)

(assert (=> b!1181754 (= e!758608 (and e!758607 tp!336701))))

(assert (= (and start!104652 res!534118) b!1181752))

(assert (= (and b!1181752 res!534115) b!1181745))

(assert (= (and b!1181745 res!534117) b!1181744))

(assert (= (and b!1181744 res!534116) b!1181746))

(assert (= (and b!1181746 res!534113) b!1181740))

(assert (= (and b!1181740 res!534112) b!1181742))

(assert (= (and b!1181742 (not res!534114)) b!1181741))

(assert (= (and b!1181741 res!534119) b!1181751))

(assert (= b!1181747 b!1181750))

(assert (= b!1181754 b!1181747))

(assert (= (and start!104652 (is-Cons!11790 rules!4386)) b!1181754))

(assert (= b!1181748 b!1181749))

(assert (= b!1181743 b!1181748))

(assert (= b!1181753 b!1181743))

(assert (= (and start!104652 (is-Cons!11791 l!6534)) b!1181753))

(declare-fun m!1357789 () Bool)

(assert (=> b!1181745 m!1357789))

(declare-fun m!1357791 () Bool)

(assert (=> b!1181746 m!1357791))

(declare-fun m!1357793 () Bool)

(assert (=> b!1181741 m!1357793))

(declare-fun m!1357795 () Bool)

(assert (=> b!1181748 m!1357795))

(declare-fun m!1357797 () Bool)

(assert (=> b!1181748 m!1357797))

(declare-fun m!1357799 () Bool)

(assert (=> b!1181744 m!1357799))

(declare-fun m!1357801 () Bool)

(assert (=> b!1181747 m!1357801))

(declare-fun m!1357803 () Bool)

(assert (=> b!1181747 m!1357803))

(declare-fun m!1357805 () Bool)

(assert (=> b!1181753 m!1357805))

(declare-fun m!1357807 () Bool)

(assert (=> b!1181751 m!1357807))

(declare-fun m!1357809 () Bool)

(assert (=> b!1181752 m!1357809))

(declare-fun m!1357811 () Bool)

(assert (=> b!1181743 m!1357811))

(declare-fun m!1357813 () Bool)

(assert (=> b!1181742 m!1357813))

(declare-fun m!1357815 () Bool)

(assert (=> b!1181742 m!1357815))

(declare-fun m!1357817 () Bool)

(assert (=> b!1181742 m!1357817))

(declare-fun m!1357819 () Bool)

(assert (=> b!1181742 m!1357819))

(declare-fun m!1357821 () Bool)

(assert (=> b!1181742 m!1357821))

(declare-fun m!1357823 () Bool)

(assert (=> b!1181742 m!1357823))

(push 1)

(assert (not b!1181748))

(assert b_and!81195)

(assert (not b!1181742))

(assert (not b!1181753))

(assert (not b!1181751))

(assert (not b!1181745))

(assert (not b_next!28907))

(assert (not b!1181752))

(assert b_and!81191)

(assert b_and!81193)

(assert (not b!1181744))

(assert (not b_next!28901))

(assert (not b!1181743))

(assert (not b!1181754))

(assert b_and!81189)

(assert (not b!1181747))

(assert (not b!1181746))

(assert (not b!1181741))

(assert (not b_next!28905))

(assert (not b!1181763))

(assert (not b_next!28903))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81195)

(assert (not b_next!28901))

(assert b_and!81189)

(assert (not b_next!28905))

(assert (not b_next!28903))

(assert (not b_next!28907))

(assert b_and!81191)

(assert b_and!81193)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!338165 () Bool)

(assert (=> d!338165 (= (inv!15607 (tag!2318 (h!17191 rules!4386))) (= (mod (str.len (value!66628 (tag!2318 (h!17191 rules!4386)))) 2) 0))))

(assert (=> b!1181747 d!338165))

(declare-fun d!338167 () Bool)

(declare-fun res!534153 () Bool)

(declare-fun e!758672 () Bool)

(assert (=> d!338167 (=> (not res!534153) (not e!758672))))

(declare-fun semiInverseModEq!740 (Int Int) Bool)

(assert (=> d!338167 (= res!534153 (semiInverseModEq!740 (toChars!3024 (transformation!2056 (h!17191 rules!4386))) (toValue!3165 (transformation!2056 (h!17191 rules!4386)))))))

(assert (=> d!338167 (= (inv!15610 (transformation!2056 (h!17191 rules!4386))) e!758672)))

(declare-fun b!1181824 () Bool)

(declare-fun equivClasses!707 (Int Int) Bool)

(assert (=> b!1181824 (= e!758672 (equivClasses!707 (toChars!3024 (transformation!2056 (h!17191 rules!4386))) (toValue!3165 (transformation!2056 (h!17191 rules!4386)))))))

(assert (= (and d!338167 res!534153) b!1181824))

(declare-fun m!1357861 () Bool)

(assert (=> d!338167 m!1357861))

(declare-fun m!1357863 () Bool)

(assert (=> b!1181824 m!1357863))

(assert (=> b!1181747 d!338167))

(declare-fun d!338169 () Bool)

(declare-fun res!534156 () Bool)

(declare-fun e!758675 () Bool)

(assert (=> d!338169 (=> (not res!534156) (not e!758675))))

(declare-fun rulesValid!728 (LexerInterface!1751 List!11814) Bool)

(assert (=> d!338169 (= res!534156 (rulesValid!728 thiss!27592 rules!4386))))

(assert (=> d!338169 (= (rulesInvariant!1625 thiss!27592 rules!4386) e!758675)))

(declare-fun b!1181827 () Bool)

(declare-datatypes ((List!11820 0))(
  ( (Nil!11796) (Cons!11796 (h!17197 String!14279) (t!111511 List!11820)) )
))
(declare-fun noDuplicateTag!728 (LexerInterface!1751 List!11814 List!11820) Bool)

(assert (=> b!1181827 (= e!758675 (noDuplicateTag!728 thiss!27592 rules!4386 Nil!11796))))

(assert (= (and d!338169 res!534156) b!1181827))

(declare-fun m!1357865 () Bool)

(assert (=> d!338169 m!1357865))

(declare-fun m!1357867 () Bool)

(assert (=> b!1181827 m!1357867))

(assert (=> b!1181745 d!338169))

(declare-fun d!338171 () Bool)

(declare-fun res!534170 () Bool)

(declare-fun e!758689 () Bool)

(assert (=> d!338171 (=> res!534170 e!758689)))

(assert (=> d!338171 (= res!534170 (or (not (is-Cons!11791 l!6534)) (not (is-Cons!11791 (t!111491 l!6534)))))))

(assert (=> d!338171 (= (tokensListTwoByTwoPredicateSeparableList!145 thiss!27592 l!6534 rules!4386) e!758689)))

(declare-fun b!1181841 () Bool)

(declare-fun e!758690 () Bool)

(assert (=> b!1181841 (= e!758689 e!758690)))

(declare-fun res!534171 () Bool)

(assert (=> b!1181841 (=> (not res!534171) (not e!758690))))

(declare-fun separableTokensPredicate!151 (LexerInterface!1751 Token!3774 Token!3774 List!11814) Bool)

(assert (=> b!1181841 (= res!534171 (separableTokensPredicate!151 thiss!27592 (h!17192 l!6534) (h!17192 (t!111491 l!6534)) rules!4386))))

(declare-fun lt!406853 () Unit!18105)

(declare-fun Unit!18110 () Unit!18105)

(assert (=> b!1181841 (= lt!406853 Unit!18110)))

(declare-fun size!9310 (BalanceConc!7746) Int)

(declare-fun charsOf!1089 (Token!3774) BalanceConc!7746)

(assert (=> b!1181841 (> (size!9310 (charsOf!1089 (h!17192 (t!111491 l!6534)))) 0)))

(declare-fun lt!406852 () Unit!18105)

(declare-fun Unit!18111 () Unit!18105)

(assert (=> b!1181841 (= lt!406852 Unit!18111)))

(assert (=> b!1181841 (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 (t!111491 l!6534)))))

(declare-fun lt!406850 () Unit!18105)

(declare-fun Unit!18112 () Unit!18105)

(assert (=> b!1181841 (= lt!406850 Unit!18112)))

(assert (=> b!1181841 (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 l!6534))))

(declare-fun lt!406851 () Unit!18105)

(declare-fun lt!406849 () Unit!18105)

(assert (=> b!1181841 (= lt!406851 lt!406849)))

(assert (=> b!1181841 (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 (t!111491 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!310 (LexerInterface!1751 List!11814 List!11815 Token!3774) Unit!18105)

(assert (=> b!1181841 (= lt!406849 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!310 thiss!27592 rules!4386 l!6534 (h!17192 (t!111491 l!6534))))))

(declare-fun lt!406848 () Unit!18105)

(declare-fun lt!406854 () Unit!18105)

(assert (=> b!1181841 (= lt!406848 lt!406854)))

(assert (=> b!1181841 (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 l!6534))))

(assert (=> b!1181841 (= lt!406854 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!310 thiss!27592 rules!4386 l!6534 (h!17192 l!6534)))))

(declare-fun b!1181842 () Bool)

(assert (=> b!1181842 (= e!758690 (tokensListTwoByTwoPredicateSeparableList!145 thiss!27592 (Cons!11791 (h!17192 (t!111491 l!6534)) (t!111491 (t!111491 l!6534))) rules!4386))))

(assert (= (and d!338171 (not res!534170)) b!1181841))

(assert (= (and b!1181841 res!534171) b!1181842))

(declare-fun m!1357881 () Bool)

(assert (=> b!1181841 m!1357881))

(declare-fun m!1357883 () Bool)

(assert (=> b!1181841 m!1357883))

(declare-fun m!1357885 () Bool)

(assert (=> b!1181841 m!1357885))

(declare-fun m!1357887 () Bool)

(assert (=> b!1181841 m!1357887))

(assert (=> b!1181841 m!1357885))

(declare-fun m!1357889 () Bool)

(assert (=> b!1181841 m!1357889))

(declare-fun m!1357891 () Bool)

(assert (=> b!1181841 m!1357891))

(declare-fun m!1357893 () Bool)

(assert (=> b!1181841 m!1357893))

(declare-fun m!1357895 () Bool)

(assert (=> b!1181842 m!1357895))

(assert (=> b!1181746 d!338171))

(declare-fun d!338181 () Bool)

(assert (=> d!338181 (= (inv!15607 (tag!2318 (rule!3477 (h!17192 l!6534)))) (= (mod (str.len (value!66628 (tag!2318 (rule!3477 (h!17192 l!6534))))) 2) 0))))

(assert (=> b!1181748 d!338181))

(declare-fun d!338183 () Bool)

(declare-fun res!534172 () Bool)

(declare-fun e!758691 () Bool)

(assert (=> d!338183 (=> (not res!534172) (not e!758691))))

(assert (=> d!338183 (= res!534172 (semiInverseModEq!740 (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))) (toValue!3165 (transformation!2056 (rule!3477 (h!17192 l!6534))))))))

(assert (=> d!338183 (= (inv!15610 (transformation!2056 (rule!3477 (h!17192 l!6534)))) e!758691)))

(declare-fun b!1181843 () Bool)

(assert (=> b!1181843 (= e!758691 (equivClasses!707 (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))) (toValue!3165 (transformation!2056 (rule!3477 (h!17192 l!6534))))))))

(assert (= (and d!338183 res!534172) b!1181843))

(declare-fun m!1357897 () Bool)

(assert (=> d!338183 m!1357897))

(declare-fun m!1357899 () Bool)

(assert (=> b!1181843 m!1357899))

(assert (=> b!1181748 d!338183))

(declare-fun d!338185 () Bool)

(declare-fun lt!406859 () Bool)

(declare-fun e!758697 () Bool)

(assert (=> d!338185 (= lt!406859 e!758697)))

(declare-fun res!534181 () Bool)

(assert (=> d!338185 (=> (not res!534181) (not e!758697))))

(declare-datatypes ((IArray!7733 0))(
  ( (IArray!7734 (innerList!3924 List!11815)) )
))
(declare-datatypes ((Conc!3864 0))(
  ( (Node!3864 (left!10274 Conc!3864) (right!10604 Conc!3864) (csize!7958 Int) (cheight!4075 Int)) (Leaf!5923 (xs!6569 IArray!7733) (csize!7959 Int)) (Empty!3864) )
))
(declare-datatypes ((BalanceConc!7750 0))(
  ( (BalanceConc!7751 (c!196844 Conc!3864)) )
))
(declare-fun list!4343 (BalanceConc!7750) List!11815)

(declare-datatypes ((tuple2!12086 0))(
  ( (tuple2!12087 (_1!6890 BalanceConc!7750) (_2!6890 BalanceConc!7746)) )
))
(declare-fun lex!729 (LexerInterface!1751 List!11814 BalanceConc!7746) tuple2!12086)

(declare-fun print!666 (LexerInterface!1751 BalanceConc!7750) BalanceConc!7746)

(declare-fun singletonSeq!710 (Token!3774) BalanceConc!7750)

(assert (=> d!338185 (= res!534181 (= (list!4343 (_1!6890 (lex!729 thiss!27592 rules!4386 (print!666 thiss!27592 (singletonSeq!710 (h!17192 lt!406817)))))) (list!4343 (singletonSeq!710 (h!17192 lt!406817)))))))

(declare-fun e!758696 () Bool)

(assert (=> d!338185 (= lt!406859 e!758696)))

(declare-fun res!534180 () Bool)

(assert (=> d!338185 (=> (not res!534180) (not e!758696))))

(declare-fun lt!406860 () tuple2!12086)

(declare-fun size!9311 (BalanceConc!7750) Int)

(assert (=> d!338185 (= res!534180 (= (size!9311 (_1!6890 lt!406860)) 1))))

(assert (=> d!338185 (= lt!406860 (lex!729 thiss!27592 rules!4386 (print!666 thiss!27592 (singletonSeq!710 (h!17192 lt!406817)))))))

(assert (=> d!338185 (not (isEmpty!7109 rules!4386))))

(assert (=> d!338185 (= (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 lt!406817)) lt!406859)))

(declare-fun b!1181850 () Bool)

(declare-fun res!534179 () Bool)

(assert (=> b!1181850 (=> (not res!534179) (not e!758696))))

(declare-fun apply!2573 (BalanceConc!7750 Int) Token!3774)

(assert (=> b!1181850 (= res!534179 (= (apply!2573 (_1!6890 lt!406860) 0) (h!17192 lt!406817)))))

(declare-fun b!1181851 () Bool)

(declare-fun isEmpty!7111 (BalanceConc!7746) Bool)

(assert (=> b!1181851 (= e!758696 (isEmpty!7111 (_2!6890 lt!406860)))))

(declare-fun b!1181852 () Bool)

(assert (=> b!1181852 (= e!758697 (isEmpty!7111 (_2!6890 (lex!729 thiss!27592 rules!4386 (print!666 thiss!27592 (singletonSeq!710 (h!17192 lt!406817)))))))))

(assert (= (and d!338185 res!534180) b!1181850))

(assert (= (and b!1181850 res!534179) b!1181851))

(assert (= (and d!338185 res!534181) b!1181852))

(declare-fun m!1357901 () Bool)

(assert (=> d!338185 m!1357901))

(assert (=> d!338185 m!1357809))

(declare-fun m!1357903 () Bool)

(assert (=> d!338185 m!1357903))

(declare-fun m!1357905 () Bool)

(assert (=> d!338185 m!1357905))

(declare-fun m!1357907 () Bool)

(assert (=> d!338185 m!1357907))

(declare-fun m!1357909 () Bool)

(assert (=> d!338185 m!1357909))

(declare-fun m!1357911 () Bool)

(assert (=> d!338185 m!1357911))

(assert (=> d!338185 m!1357909))

(assert (=> d!338185 m!1357909))

(assert (=> d!338185 m!1357903))

(declare-fun m!1357913 () Bool)

(assert (=> b!1181850 m!1357913))

(declare-fun m!1357915 () Bool)

(assert (=> b!1181851 m!1357915))

(assert (=> b!1181852 m!1357909))

(assert (=> b!1181852 m!1357909))

(assert (=> b!1181852 m!1357903))

(assert (=> b!1181852 m!1357903))

(assert (=> b!1181852 m!1357905))

(declare-fun m!1357917 () Bool)

(assert (=> b!1181852 m!1357917))

(assert (=> b!1181741 d!338185))

(declare-fun d!338187 () Bool)

(assert (=> d!338187 (= (isEmpty!7109 rules!4386) (is-Nil!11790 rules!4386))))

(assert (=> b!1181752 d!338187))

(declare-fun d!338189 () Bool)

(assert (=> d!338189 (subseq!312 (drop!536 l!6534 i!1621) l!6534)))

(declare-fun lt!406863 () Unit!18105)

(declare-fun choose!7646 (List!11815 Int) Unit!18105)

(assert (=> d!338189 (= lt!406863 (choose!7646 l!6534 i!1621))))

(assert (=> d!338189 (= (lemmaDropSubseq!75 l!6534 i!1621) lt!406863)))

(declare-fun bs!287009 () Bool)

(assert (= bs!287009 d!338189))

(assert (=> bs!287009 m!1357813))

(assert (=> bs!287009 m!1357813))

(declare-fun m!1357919 () Bool)

(assert (=> bs!287009 m!1357919))

(declare-fun m!1357921 () Bool)

(assert (=> bs!287009 m!1357921))

(assert (=> b!1181742 d!338189))

(declare-fun d!338191 () Bool)

(declare-fun res!534186 () Bool)

(declare-fun e!758702 () Bool)

(assert (=> d!338191 (=> res!534186 e!758702)))

(assert (=> d!338191 (= res!534186 (is-Nil!11791 lt!406817))))

(assert (=> d!338191 (= (forall!3119 lt!406817 lambda!48672) e!758702)))

(declare-fun b!1181857 () Bool)

(declare-fun e!758703 () Bool)

(assert (=> b!1181857 (= e!758702 e!758703)))

(declare-fun res!534187 () Bool)

(assert (=> b!1181857 (=> (not res!534187) (not e!758703))))

(declare-fun dynLambda!5223 (Int Token!3774) Bool)

(assert (=> b!1181857 (= res!534187 (dynLambda!5223 lambda!48672 (h!17192 lt!406817)))))

(declare-fun b!1181858 () Bool)

(assert (=> b!1181858 (= e!758703 (forall!3119 (t!111491 lt!406817) lambda!48672))))

(assert (= (and d!338191 (not res!534186)) b!1181857))

(assert (= (and b!1181857 res!534187) b!1181858))

(declare-fun b_lambda!35325 () Bool)

(assert (=> (not b_lambda!35325) (not b!1181857)))

(declare-fun m!1357923 () Bool)

(assert (=> b!1181857 m!1357923))

(declare-fun m!1357925 () Bool)

(assert (=> b!1181858 m!1357925))

(assert (=> b!1181742 d!338191))

(declare-fun bs!287014 () Bool)

(declare-fun d!338193 () Bool)

(assert (= bs!287014 (and d!338193 b!1181742)))

(declare-fun lambda!48682 () Int)

(assert (=> bs!287014 (= (= thiss!27592 Lexer!1749) (= lambda!48682 lambda!48672))))

(declare-fun b!1181922 () Bool)

(declare-fun e!758753 () Bool)

(assert (=> b!1181922 (= e!758753 true)))

(declare-fun b!1181921 () Bool)

(declare-fun e!758752 () Bool)

(assert (=> b!1181921 (= e!758752 e!758753)))

(declare-fun b!1181920 () Bool)

(declare-fun e!758751 () Bool)

(assert (=> b!1181920 (= e!758751 e!758752)))

(assert (=> d!338193 e!758751))

(assert (= b!1181921 b!1181922))

(assert (= b!1181920 b!1181921))

(assert (= (and d!338193 (is-Cons!11790 rules!4386)) b!1181920))

(assert (=> b!1181922 (< (dynLambda!5217 order!7255 (toValue!3165 (transformation!2056 (h!17191 rules!4386)))) (dynLambda!5218 order!7257 lambda!48682))))

(assert (=> b!1181922 (< (dynLambda!5219 order!7259 (toChars!3024 (transformation!2056 (h!17191 rules!4386)))) (dynLambda!5218 order!7257 lambda!48682))))

(assert (=> d!338193 true))

(declare-fun lt!406876 () Bool)

(assert (=> d!338193 (= lt!406876 (forall!3119 lt!406817 lambda!48682))))

(declare-fun e!758750 () Bool)

(assert (=> d!338193 (= lt!406876 e!758750)))

(declare-fun res!534216 () Bool)

(assert (=> d!338193 (=> res!534216 e!758750)))

(assert (=> d!338193 (= res!534216 (not (is-Cons!11791 lt!406817)))))

(assert (=> d!338193 (not (isEmpty!7109 rules!4386))))

(assert (=> d!338193 (= (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 lt!406817) lt!406876)))

(declare-fun b!1181918 () Bool)

(declare-fun e!758749 () Bool)

(assert (=> b!1181918 (= e!758750 e!758749)))

(declare-fun res!534215 () Bool)

(assert (=> b!1181918 (=> (not res!534215) (not e!758749))))

(assert (=> b!1181918 (= res!534215 (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 lt!406817)))))

(declare-fun b!1181919 () Bool)

(assert (=> b!1181919 (= e!758749 (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 (t!111491 lt!406817)))))

(assert (= (and d!338193 (not res!534216)) b!1181918))

(assert (= (and b!1181918 res!534215) b!1181919))

(declare-fun m!1357953 () Bool)

(assert (=> d!338193 m!1357953))

(assert (=> d!338193 m!1357809))

(assert (=> b!1181918 m!1357793))

(assert (=> b!1181919 m!1357807))

(assert (=> b!1181742 d!338193))

(declare-fun b!1181933 () Bool)

(declare-fun e!758765 () Bool)

(declare-fun e!758763 () Bool)

(assert (=> b!1181933 (= e!758765 e!758763)))

(declare-fun res!534228 () Bool)

(assert (=> b!1181933 (=> (not res!534228) (not e!758763))))

(assert (=> b!1181933 (= res!534228 (is-Cons!11791 l!6534))))

(declare-fun b!1181936 () Bool)

(declare-fun e!758762 () Bool)

(assert (=> b!1181936 (= e!758762 (subseq!312 lt!406817 (t!111491 l!6534)))))

(declare-fun d!338205 () Bool)

(declare-fun res!534226 () Bool)

(assert (=> d!338205 (=> res!534226 e!758765)))

(assert (=> d!338205 (= res!534226 (is-Nil!11791 lt!406817))))

(assert (=> d!338205 (= (subseq!312 lt!406817 l!6534) e!758765)))

(declare-fun b!1181934 () Bool)

(assert (=> b!1181934 (= e!758763 e!758762)))

(declare-fun res!534225 () Bool)

(assert (=> b!1181934 (=> res!534225 e!758762)))

(declare-fun e!758764 () Bool)

(assert (=> b!1181934 (= res!534225 e!758764)))

(declare-fun res!534227 () Bool)

(assert (=> b!1181934 (=> (not res!534227) (not e!758764))))

(assert (=> b!1181934 (= res!534227 (= (h!17192 lt!406817) (h!17192 l!6534)))))

(declare-fun b!1181935 () Bool)

(assert (=> b!1181935 (= e!758764 (subseq!312 (t!111491 lt!406817) (t!111491 l!6534)))))

(assert (= (and d!338205 (not res!534226)) b!1181933))

(assert (= (and b!1181933 res!534228) b!1181934))

(assert (= (and b!1181934 res!534227) b!1181935))

(assert (= (and b!1181934 (not res!534225)) b!1181936))

(declare-fun m!1357955 () Bool)

(assert (=> b!1181936 m!1357955))

(declare-fun m!1357957 () Bool)

(assert (=> b!1181935 m!1357957))

(assert (=> b!1181742 d!338205))

(declare-fun d!338207 () Bool)

(assert (=> d!338207 (forall!3119 lt!406817 lambda!48672)))

(declare-fun lt!406879 () Unit!18105)

(declare-fun choose!7647 (List!11815 List!11815 Int) Unit!18105)

(assert (=> d!338207 (= lt!406879 (choose!7647 lt!406817 l!6534 lambda!48672))))

(assert (=> d!338207 (forall!3119 l!6534 lambda!48672)))

(assert (=> d!338207 (= (lemmaForallSubseq!176 lt!406817 l!6534 lambda!48672) lt!406879)))

(declare-fun bs!287015 () Bool)

(assert (= bs!287015 d!338207))

(assert (=> bs!287015 m!1357821))

(declare-fun m!1357959 () Bool)

(assert (=> bs!287015 m!1357959))

(declare-fun m!1357961 () Bool)

(assert (=> bs!287015 m!1357961))

(assert (=> b!1181742 d!338207))

(declare-fun b!1181955 () Bool)

(declare-fun e!758779 () Int)

(assert (=> b!1181955 (= e!758779 0)))

(declare-fun d!338209 () Bool)

(declare-fun e!758776 () Bool)

(assert (=> d!338209 e!758776))

(declare-fun res!534231 () Bool)

(assert (=> d!338209 (=> (not res!534231) (not e!758776))))

(declare-fun lt!406882 () List!11815)

(declare-fun content!1635 (List!11815) (Set Token!3774))

(assert (=> d!338209 (= res!534231 (set.subset (content!1635 lt!406882) (content!1635 l!6534)))))

(declare-fun e!758780 () List!11815)

(assert (=> d!338209 (= lt!406882 e!758780)))

(declare-fun c!196834 () Bool)

(assert (=> d!338209 (= c!196834 (is-Nil!11791 l!6534))))

(assert (=> d!338209 (= (drop!536 l!6534 i!1621) lt!406882)))

(declare-fun b!1181956 () Bool)

(declare-fun e!758778 () Int)

(assert (=> b!1181956 (= e!758778 e!758779)))

(declare-fun c!196836 () Bool)

(declare-fun call!82596 () Int)

(assert (=> b!1181956 (= c!196836 (>= i!1621 call!82596))))

(declare-fun bm!82591 () Bool)

(declare-fun size!9312 (List!11815) Int)

(assert (=> bm!82591 (= call!82596 (size!9312 l!6534))))

(declare-fun b!1181957 () Bool)

(declare-fun e!758777 () List!11815)

(assert (=> b!1181957 (= e!758777 l!6534)))

(declare-fun b!1181958 () Bool)

(assert (=> b!1181958 (= e!758776 (= (size!9312 lt!406882) e!758778))))

(declare-fun c!196835 () Bool)

(assert (=> b!1181958 (= c!196835 (<= i!1621 0))))

(declare-fun b!1181959 () Bool)

(assert (=> b!1181959 (= e!758778 call!82596)))

(declare-fun b!1181960 () Bool)

(assert (=> b!1181960 (= e!758777 (drop!536 (t!111491 l!6534) (- i!1621 1)))))

(declare-fun b!1181961 () Bool)

(assert (=> b!1181961 (= e!758779 (- call!82596 i!1621))))

(declare-fun b!1181962 () Bool)

(assert (=> b!1181962 (= e!758780 e!758777)))

(declare-fun c!196837 () Bool)

(assert (=> b!1181962 (= c!196837 (<= i!1621 0))))

(declare-fun b!1181963 () Bool)

(assert (=> b!1181963 (= e!758780 Nil!11791)))

(assert (= (and d!338209 c!196834) b!1181963))

(assert (= (and d!338209 (not c!196834)) b!1181962))

(assert (= (and b!1181962 c!196837) b!1181957))

(assert (= (and b!1181962 (not c!196837)) b!1181960))

(assert (= (and d!338209 res!534231) b!1181958))

(assert (= (and b!1181958 c!196835) b!1181959))

(assert (= (and b!1181958 (not c!196835)) b!1181956))

(assert (= (and b!1181956 c!196836) b!1181955))

(assert (= (and b!1181956 (not c!196836)) b!1181961))

(assert (= (or b!1181959 b!1181956 b!1181961) bm!82591))

(declare-fun m!1357963 () Bool)

(assert (=> d!338209 m!1357963))

(declare-fun m!1357965 () Bool)

(assert (=> d!338209 m!1357965))

(declare-fun m!1357967 () Bool)

(assert (=> bm!82591 m!1357967))

(declare-fun m!1357969 () Bool)

(assert (=> b!1181958 m!1357969))

(declare-fun m!1357971 () Bool)

(assert (=> b!1181960 m!1357971))

(assert (=> b!1181742 d!338209))

(declare-fun bs!287016 () Bool)

(declare-fun d!338211 () Bool)

(assert (= bs!287016 (and d!338211 b!1181742)))

(declare-fun lambda!48683 () Int)

(assert (=> bs!287016 (= (= thiss!27592 Lexer!1749) (= lambda!48683 lambda!48672))))

(declare-fun bs!287017 () Bool)

(assert (= bs!287017 (and d!338211 d!338193)))

(assert (=> bs!287017 (= lambda!48683 lambda!48682)))

(declare-fun b!1181968 () Bool)

(declare-fun e!758785 () Bool)

(assert (=> b!1181968 (= e!758785 true)))

(declare-fun b!1181967 () Bool)

(declare-fun e!758784 () Bool)

(assert (=> b!1181967 (= e!758784 e!758785)))

(declare-fun b!1181966 () Bool)

(declare-fun e!758783 () Bool)

(assert (=> b!1181966 (= e!758783 e!758784)))

(assert (=> d!338211 e!758783))

(assert (= b!1181967 b!1181968))

(assert (= b!1181966 b!1181967))

(assert (= (and d!338211 (is-Cons!11790 rules!4386)) b!1181966))

(assert (=> b!1181968 (< (dynLambda!5217 order!7255 (toValue!3165 (transformation!2056 (h!17191 rules!4386)))) (dynLambda!5218 order!7257 lambda!48683))))

(assert (=> b!1181968 (< (dynLambda!5219 order!7259 (toChars!3024 (transformation!2056 (h!17191 rules!4386)))) (dynLambda!5218 order!7257 lambda!48683))))

(assert (=> d!338211 true))

(declare-fun lt!406883 () Bool)

(assert (=> d!338211 (= lt!406883 (forall!3119 (t!111491 lt!406817) lambda!48683))))

(declare-fun e!758782 () Bool)

(assert (=> d!338211 (= lt!406883 e!758782)))

(declare-fun res!534233 () Bool)

(assert (=> d!338211 (=> res!534233 e!758782)))

(assert (=> d!338211 (= res!534233 (not (is-Cons!11791 (t!111491 lt!406817))))))

(assert (=> d!338211 (not (isEmpty!7109 rules!4386))))

(assert (=> d!338211 (= (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 (t!111491 lt!406817)) lt!406883)))

(declare-fun b!1181964 () Bool)

(declare-fun e!758781 () Bool)

(assert (=> b!1181964 (= e!758782 e!758781)))

(declare-fun res!534232 () Bool)

(assert (=> b!1181964 (=> (not res!534232) (not e!758781))))

(assert (=> b!1181964 (= res!534232 (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 (t!111491 lt!406817))))))

(declare-fun b!1181965 () Bool)

(assert (=> b!1181965 (= e!758781 (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 (t!111491 (t!111491 lt!406817))))))

(assert (= (and d!338211 (not res!534233)) b!1181964))

(assert (= (and b!1181964 res!534232) b!1181965))

(declare-fun m!1357973 () Bool)

(assert (=> d!338211 m!1357973))

(assert (=> d!338211 m!1357809))

(declare-fun m!1357975 () Bool)

(assert (=> b!1181964 m!1357975))

(declare-fun m!1357977 () Bool)

(assert (=> b!1181965 m!1357977))

(assert (=> b!1181751 d!338211))

(declare-fun bs!287018 () Bool)

(declare-fun d!338213 () Bool)

(assert (= bs!287018 (and d!338213 b!1181742)))

(declare-fun lambda!48684 () Int)

(assert (=> bs!287018 (= (= thiss!27592 Lexer!1749) (= lambda!48684 lambda!48672))))

(declare-fun bs!287019 () Bool)

(assert (= bs!287019 (and d!338213 d!338193)))

(assert (=> bs!287019 (= lambda!48684 lambda!48682)))

(declare-fun bs!287020 () Bool)

(assert (= bs!287020 (and d!338213 d!338211)))

(assert (=> bs!287020 (= lambda!48684 lambda!48683)))

(declare-fun b!1181973 () Bool)

(declare-fun e!758790 () Bool)

(assert (=> b!1181973 (= e!758790 true)))

(declare-fun b!1181972 () Bool)

(declare-fun e!758789 () Bool)

(assert (=> b!1181972 (= e!758789 e!758790)))

(declare-fun b!1181971 () Bool)

(declare-fun e!758788 () Bool)

(assert (=> b!1181971 (= e!758788 e!758789)))

(assert (=> d!338213 e!758788))

(assert (= b!1181972 b!1181973))

(assert (= b!1181971 b!1181972))

(assert (= (and d!338213 (is-Cons!11790 rules!4386)) b!1181971))

(assert (=> b!1181973 (< (dynLambda!5217 order!7255 (toValue!3165 (transformation!2056 (h!17191 rules!4386)))) (dynLambda!5218 order!7257 lambda!48684))))

(assert (=> b!1181973 (< (dynLambda!5219 order!7259 (toChars!3024 (transformation!2056 (h!17191 rules!4386)))) (dynLambda!5218 order!7257 lambda!48684))))

(assert (=> d!338213 true))

(declare-fun lt!406884 () Bool)

(assert (=> d!338213 (= lt!406884 (forall!3119 l!6534 lambda!48684))))

(declare-fun e!758787 () Bool)

(assert (=> d!338213 (= lt!406884 e!758787)))

(declare-fun res!534235 () Bool)

(assert (=> d!338213 (=> res!534235 e!758787)))

(assert (=> d!338213 (= res!534235 (not (is-Cons!11791 l!6534)))))

(assert (=> d!338213 (not (isEmpty!7109 rules!4386))))

(assert (=> d!338213 (= (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 l!6534) lt!406884)))

(declare-fun b!1181969 () Bool)

(declare-fun e!758786 () Bool)

(assert (=> b!1181969 (= e!758787 e!758786)))

(declare-fun res!534234 () Bool)

(assert (=> b!1181969 (=> (not res!534234) (not e!758786))))

(assert (=> b!1181969 (= res!534234 (rulesProduceIndividualToken!782 thiss!27592 rules!4386 (h!17192 l!6534)))))

(declare-fun b!1181970 () Bool)

(assert (=> b!1181970 (= e!758786 (rulesProduceEachTokenIndividuallyList!617 thiss!27592 rules!4386 (t!111491 l!6534)))))

(assert (= (and d!338213 (not res!534235)) b!1181969))

(assert (= (and b!1181969 res!534234) b!1181970))

(declare-fun m!1357979 () Bool)

(assert (=> d!338213 m!1357979))

(assert (=> d!338213 m!1357809))

(assert (=> b!1181969 m!1357883))

(declare-fun m!1357981 () Bool)

(assert (=> b!1181970 m!1357981))

(assert (=> b!1181744 d!338213))

(declare-fun d!338215 () Bool)

(declare-fun res!534240 () Bool)

(declare-fun e!758793 () Bool)

(assert (=> d!338215 (=> (not res!534240) (not e!758793))))

(declare-fun isEmpty!7112 (List!11812) Bool)

(assert (=> d!338215 (= res!534240 (not (isEmpty!7112 (originalCharacters!2610 (h!17192 l!6534)))))))

(assert (=> d!338215 (= (inv!15611 (h!17192 l!6534)) e!758793)))

(declare-fun b!1181978 () Bool)

(declare-fun res!534241 () Bool)

(assert (=> b!1181978 (=> (not res!534241) (not e!758793))))

(declare-fun list!4344 (BalanceConc!7746) List!11812)

(declare-fun dynLambda!5224 (Int TokenValue!2122) BalanceConc!7746)

(assert (=> b!1181978 (= res!534241 (= (originalCharacters!2610 (h!17192 l!6534)) (list!4344 (dynLambda!5224 (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))) (value!66654 (h!17192 l!6534))))))))

(declare-fun b!1181979 () Bool)

(declare-fun size!9313 (List!11812) Int)

(assert (=> b!1181979 (= e!758793 (= (size!9308 (h!17192 l!6534)) (size!9313 (originalCharacters!2610 (h!17192 l!6534)))))))

(assert (= (and d!338215 res!534240) b!1181978))

(assert (= (and b!1181978 res!534241) b!1181979))

(declare-fun b_lambda!35327 () Bool)

(assert (=> (not b_lambda!35327) (not b!1181978)))

(declare-fun t!111504 () Bool)

(declare-fun tb!66141 () Bool)

(assert (=> (and b!1181749 (= (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))) (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534))))) t!111504) tb!66141))

(declare-fun b!1181984 () Bool)

(declare-fun e!758796 () Bool)

(declare-fun tp!336739 () Bool)

(declare-fun inv!15614 (Conc!3862) Bool)

(assert (=> b!1181984 (= e!758796 (and (inv!15614 (c!196810 (dynLambda!5224 (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))) (value!66654 (h!17192 l!6534))))) tp!336739))))

(declare-fun result!79358 () Bool)

(declare-fun inv!15615 (BalanceConc!7746) Bool)

(assert (=> tb!66141 (= result!79358 (and (inv!15615 (dynLambda!5224 (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))) (value!66654 (h!17192 l!6534)))) e!758796))))

(assert (= tb!66141 b!1181984))

(declare-fun m!1357983 () Bool)

(assert (=> b!1181984 m!1357983))

(declare-fun m!1357985 () Bool)

(assert (=> tb!66141 m!1357985))

(assert (=> b!1181978 t!111504))

(declare-fun b_and!81205 () Bool)

(assert (= b_and!81191 (and (=> t!111504 result!79358) b_and!81205)))

(declare-fun t!111506 () Bool)

(declare-fun tb!66143 () Bool)

(assert (=> (and b!1181750 (= (toChars!3024 (transformation!2056 (h!17191 rules!4386))) (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534))))) t!111506) tb!66143))

(declare-fun result!79362 () Bool)

(assert (= result!79362 result!79358))

(assert (=> b!1181978 t!111506))

(declare-fun b_and!81207 () Bool)

(assert (= b_and!81195 (and (=> t!111506 result!79362) b_and!81207)))

(declare-fun m!1357987 () Bool)

(assert (=> d!338215 m!1357987))

(declare-fun m!1357989 () Bool)

(assert (=> b!1181978 m!1357989))

(assert (=> b!1181978 m!1357989))

(declare-fun m!1357991 () Bool)

(assert (=> b!1181978 m!1357991))

(declare-fun m!1357993 () Bool)

(assert (=> b!1181979 m!1357993))

(assert (=> b!1181753 d!338215))

(declare-fun b!1181995 () Bool)

(declare-fun e!758805 () Bool)

(declare-fun inv!15 (TokenValue!2122) Bool)

(assert (=> b!1181995 (= e!758805 (inv!15 (value!66654 (h!17192 l!6534))))))

(declare-fun b!1181996 () Bool)

(declare-fun e!758803 () Bool)

(declare-fun e!758804 () Bool)

(assert (=> b!1181996 (= e!758803 e!758804)))

(declare-fun c!196843 () Bool)

(assert (=> b!1181996 (= c!196843 (is-IntegerValue!6367 (value!66654 (h!17192 l!6534))))))

(declare-fun b!1181997 () Bool)

(declare-fun res!534244 () Bool)

(assert (=> b!1181997 (=> res!534244 e!758805)))

(assert (=> b!1181997 (= res!534244 (not (is-IntegerValue!6368 (value!66654 (h!17192 l!6534)))))))

(assert (=> b!1181997 (= e!758804 e!758805)))

(declare-fun b!1181998 () Bool)

(declare-fun inv!16 (TokenValue!2122) Bool)

(assert (=> b!1181998 (= e!758803 (inv!16 (value!66654 (h!17192 l!6534))))))

(declare-fun b!1181999 () Bool)

(declare-fun inv!17 (TokenValue!2122) Bool)

(assert (=> b!1181999 (= e!758804 (inv!17 (value!66654 (h!17192 l!6534))))))

(declare-fun d!338217 () Bool)

(declare-fun c!196842 () Bool)

(assert (=> d!338217 (= c!196842 (is-IntegerValue!6366 (value!66654 (h!17192 l!6534))))))

(assert (=> d!338217 (= (inv!21 (value!66654 (h!17192 l!6534))) e!758803)))

(assert (= (and d!338217 c!196842) b!1181998))

(assert (= (and d!338217 (not c!196842)) b!1181996))

(assert (= (and b!1181996 c!196843) b!1181999))

(assert (= (and b!1181996 (not c!196843)) b!1181997))

(assert (= (and b!1181997 (not res!534244)) b!1181995))

(declare-fun m!1357995 () Bool)

(assert (=> b!1181995 m!1357995))

(declare-fun m!1357997 () Bool)

(assert (=> b!1181998 m!1357997))

(declare-fun m!1357999 () Bool)

(assert (=> b!1181999 m!1357999))

(assert (=> b!1181743 d!338217))

(declare-fun b!1182012 () Bool)

(declare-fun e!758808 () Bool)

(declare-fun tp!336753 () Bool)

(assert (=> b!1182012 (= e!758808 tp!336753)))

(declare-fun b!1182011 () Bool)

(declare-fun tp!336750 () Bool)

(declare-fun tp!336752 () Bool)

(assert (=> b!1182011 (= e!758808 (and tp!336750 tp!336752))))

(declare-fun b!1182013 () Bool)

(declare-fun tp!336751 () Bool)

(declare-fun tp!336754 () Bool)

(assert (=> b!1182013 (= e!758808 (and tp!336751 tp!336754))))

(assert (=> b!1181747 (= tp!336709 e!758808)))

(declare-fun b!1182010 () Bool)

(declare-fun tp_is_empty!5809 () Bool)

(assert (=> b!1182010 (= e!758808 tp_is_empty!5809)))

(assert (= (and b!1181747 (is-ElementMatch!3326 (regex!2056 (h!17191 rules!4386)))) b!1182010))

(assert (= (and b!1181747 (is-Concat!5449 (regex!2056 (h!17191 rules!4386)))) b!1182011))

(assert (= (and b!1181747 (is-Star!3326 (regex!2056 (h!17191 rules!4386)))) b!1182012))

(assert (= (and b!1181747 (is-Union!3326 (regex!2056 (h!17191 rules!4386)))) b!1182013))

(declare-fun b!1182024 () Bool)

(declare-fun b_free!28213 () Bool)

(declare-fun b_next!28917 () Bool)

(assert (=> b!1182024 (= b_free!28213 (not b_next!28917))))

(declare-fun tp!336766 () Bool)

(declare-fun b_and!81209 () Bool)

(assert (=> b!1182024 (= tp!336766 b_and!81209)))

(declare-fun b_free!28215 () Bool)

(declare-fun b_next!28919 () Bool)

(assert (=> b!1182024 (= b_free!28215 (not b_next!28919))))

(declare-fun t!111508 () Bool)

(declare-fun tb!66145 () Bool)

(assert (=> (and b!1182024 (= (toChars!3024 (transformation!2056 (h!17191 (t!111490 rules!4386)))) (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534))))) t!111508) tb!66145))

(declare-fun result!79368 () Bool)

(assert (= result!79368 result!79358))

(assert (=> b!1181978 t!111508))

(declare-fun tp!336763 () Bool)

(declare-fun b_and!81211 () Bool)

(assert (=> b!1182024 (= tp!336763 (and (=> t!111508 result!79368) b_and!81211))))

(declare-fun e!758818 () Bool)

(assert (=> b!1182024 (= e!758818 (and tp!336766 tp!336763))))

(declare-fun b!1182023 () Bool)

(declare-fun e!758819 () Bool)

(declare-fun tp!336765 () Bool)

(assert (=> b!1182023 (= e!758819 (and tp!336765 (inv!15607 (tag!2318 (h!17191 (t!111490 rules!4386)))) (inv!15610 (transformation!2056 (h!17191 (t!111490 rules!4386)))) e!758818))))

(declare-fun b!1182022 () Bool)

(declare-fun e!758820 () Bool)

(declare-fun tp!336764 () Bool)

(assert (=> b!1182022 (= e!758820 (and e!758819 tp!336764))))

(assert (=> b!1181754 (= tp!336701 e!758820)))

(assert (= b!1182023 b!1182024))

(assert (= b!1182022 b!1182023))

(assert (= (and b!1181754 (is-Cons!11790 (t!111490 rules!4386))) b!1182022))

(declare-fun m!1358001 () Bool)

(assert (=> b!1182023 m!1358001))

(declare-fun m!1358003 () Bool)

(assert (=> b!1182023 m!1358003))

(declare-fun b!1182027 () Bool)

(declare-fun e!758823 () Bool)

(assert (=> b!1182027 (= e!758823 true)))

(declare-fun b!1182026 () Bool)

(declare-fun e!758822 () Bool)

(assert (=> b!1182026 (= e!758822 e!758823)))

(declare-fun b!1182025 () Bool)

(declare-fun e!758821 () Bool)

(assert (=> b!1182025 (= e!758821 e!758822)))

(assert (=> b!1181763 e!758821))

(assert (= b!1182026 b!1182027))

(assert (= b!1182025 b!1182026))

(assert (= (and b!1181763 (is-Cons!11790 (t!111490 rules!4386))) b!1182025))

(assert (=> b!1182027 (< (dynLambda!5217 order!7255 (toValue!3165 (transformation!2056 (h!17191 (t!111490 rules!4386))))) (dynLambda!5218 order!7257 lambda!48672))))

(assert (=> b!1182027 (< (dynLambda!5219 order!7259 (toChars!3024 (transformation!2056 (h!17191 (t!111490 rules!4386))))) (dynLambda!5218 order!7257 lambda!48672))))

(declare-fun b!1182041 () Bool)

(declare-fun b_free!28217 () Bool)

(declare-fun b_next!28921 () Bool)

(assert (=> b!1182041 (= b_free!28217 (not b_next!28921))))

(declare-fun tp!336780 () Bool)

(declare-fun b_and!81213 () Bool)

(assert (=> b!1182041 (= tp!336780 b_and!81213)))

(declare-fun b_free!28219 () Bool)

(declare-fun b_next!28923 () Bool)

(assert (=> b!1182041 (= b_free!28219 (not b_next!28923))))

(declare-fun t!111510 () Bool)

(declare-fun tb!66147 () Bool)

(assert (=> (and b!1182041 (= (toChars!3024 (transformation!2056 (rule!3477 (h!17192 (t!111491 l!6534))))) (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534))))) t!111510) tb!66147))

(declare-fun result!79372 () Bool)

(assert (= result!79372 result!79358))

(assert (=> b!1181978 t!111510))

(declare-fun tp!336777 () Bool)

(declare-fun b_and!81215 () Bool)

(assert (=> b!1182041 (= tp!336777 (and (=> t!111510 result!79372) b_and!81215))))

(declare-fun e!758841 () Bool)

(declare-fun b!1182039 () Bool)

(declare-fun tp!336778 () Bool)

(declare-fun e!758837 () Bool)

(assert (=> b!1182039 (= e!758837 (and (inv!21 (value!66654 (h!17192 (t!111491 l!6534)))) e!758841 tp!336778))))

(declare-fun tp!336779 () Bool)

(declare-fun e!758839 () Bool)

(declare-fun b!1182040 () Bool)

(assert (=> b!1182040 (= e!758841 (and tp!336779 (inv!15607 (tag!2318 (rule!3477 (h!17192 (t!111491 l!6534))))) (inv!15610 (transformation!2056 (rule!3477 (h!17192 (t!111491 l!6534))))) e!758839))))

(declare-fun e!758838 () Bool)

(declare-fun b!1182038 () Bool)

(declare-fun tp!336781 () Bool)

(assert (=> b!1182038 (= e!758838 (and (inv!15611 (h!17192 (t!111491 l!6534))) e!758837 tp!336781))))

(assert (=> b!1181753 (= tp!336708 e!758838)))

(assert (=> b!1182041 (= e!758839 (and tp!336780 tp!336777))))

(assert (= b!1182040 b!1182041))

(assert (= b!1182039 b!1182040))

(assert (= b!1182038 b!1182039))

(assert (= (and b!1181753 (is-Cons!11791 (t!111491 l!6534))) b!1182038))

(declare-fun m!1358005 () Bool)

(assert (=> b!1182039 m!1358005))

(declare-fun m!1358007 () Bool)

(assert (=> b!1182040 m!1358007))

(declare-fun m!1358009 () Bool)

(assert (=> b!1182040 m!1358009))

(declare-fun m!1358011 () Bool)

(assert (=> b!1182038 m!1358011))

(declare-fun b!1182044 () Bool)

(declare-fun e!758842 () Bool)

(declare-fun tp!336785 () Bool)

(assert (=> b!1182044 (= e!758842 tp!336785)))

(declare-fun b!1182043 () Bool)

(declare-fun tp!336782 () Bool)

(declare-fun tp!336784 () Bool)

(assert (=> b!1182043 (= e!758842 (and tp!336782 tp!336784))))

(declare-fun b!1182045 () Bool)

(declare-fun tp!336783 () Bool)

(declare-fun tp!336786 () Bool)

(assert (=> b!1182045 (= e!758842 (and tp!336783 tp!336786))))

(assert (=> b!1181748 (= tp!336702 e!758842)))

(declare-fun b!1182042 () Bool)

(assert (=> b!1182042 (= e!758842 tp_is_empty!5809)))

(assert (= (and b!1181748 (is-ElementMatch!3326 (regex!2056 (rule!3477 (h!17192 l!6534))))) b!1182042))

(assert (= (and b!1181748 (is-Concat!5449 (regex!2056 (rule!3477 (h!17192 l!6534))))) b!1182043))

(assert (= (and b!1181748 (is-Star!3326 (regex!2056 (rule!3477 (h!17192 l!6534))))) b!1182044))

(assert (= (and b!1181748 (is-Union!3326 (regex!2056 (rule!3477 (h!17192 l!6534))))) b!1182045))

(declare-fun b!1182050 () Bool)

(declare-fun e!758845 () Bool)

(declare-fun tp!336789 () Bool)

(assert (=> b!1182050 (= e!758845 (and tp_is_empty!5809 tp!336789))))

(assert (=> b!1181743 (= tp!336704 e!758845)))

(assert (= (and b!1181743 (is-Cons!11788 (originalCharacters!2610 (h!17192 l!6534)))) b!1182050))

(declare-fun b_lambda!35329 () Bool)

(assert (= b_lambda!35325 (or b!1181742 b_lambda!35329)))

(declare-fun bs!287021 () Bool)

(declare-fun d!338219 () Bool)

(assert (= bs!287021 (and d!338219 b!1181742)))

(assert (=> bs!287021 (= (dynLambda!5223 lambda!48672 (h!17192 lt!406817)) (rulesProduceIndividualToken!782 Lexer!1749 rules!4386 (h!17192 lt!406817)))))

(declare-fun m!1358013 () Bool)

(assert (=> bs!287021 m!1358013))

(assert (=> b!1181857 d!338219))

(declare-fun b_lambda!35331 () Bool)

(assert (= b_lambda!35327 (or (and b!1181749 b_free!28199) (and b!1181750 b_free!28203 (= (toChars!3024 (transformation!2056 (h!17191 rules!4386))) (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))))) (and b!1182024 b_free!28215 (= (toChars!3024 (transformation!2056 (h!17191 (t!111490 rules!4386)))) (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))))) (and b!1182041 b_free!28219 (= (toChars!3024 (transformation!2056 (rule!3477 (h!17192 (t!111491 l!6534))))) (toChars!3024 (transformation!2056 (rule!3477 (h!17192 l!6534)))))) b_lambda!35331)))

(push 1)

(assert (not b!1182039))

(assert (not b_next!28901))

(assert (not b!1181998))

(assert b_and!81205)

(assert (not b!1182050))

(assert (not d!338213))

(assert (not b!1181995))

(assert (not d!338207))

(assert (not bs!287021))

(assert (not b!1182012))

(assert (not b!1181850))

(assert (not b!1182011))

(assert (not b!1181984))

(assert (not b!1181964))

(assert (not tb!66141))

(assert (not b!1182038))

(assert (not b!1181827))

(assert (not b!1181960))

(assert b_and!81215)

(assert (not b!1181979))

(assert (not b!1182025))

(assert b_and!81209)

(assert (not b!1182040))

(assert (not b!1181999))

(assert (not b_next!28923))

(assert (not b!1181858))

(assert (not b!1181841))

(assert (not b_next!28919))

(assert (not b_next!28917))

(assert (not d!338193))

(assert (not b!1182023))

(assert b_and!81213)

(assert b_and!81189)

(assert (not b!1181966))

(assert (not b_next!28905))

(assert tp_is_empty!5809)

(assert (not b!1181970))

(assert b_and!81211)

(assert (not b!1181965))

(assert (not b_lambda!35331))

(assert (not d!338183))

(assert (not b_next!28921))

(assert (not b!1181969))

(assert (not d!338209))

(assert (not b!1181920))

(assert (not b!1181978))

(assert (not b!1181851))

(assert (not b_next!28903))

(assert (not b!1181958))

(assert (not b_next!28907))

(assert (not d!338189))

(assert (not d!338215))

(assert (not b!1182045))

(assert (not bm!82591))

(assert (not b!1182043))

(assert (not d!338167))

(assert (not b!1181971))

(assert b_and!81207)

(assert (not b!1181936))

(assert (not b!1181852))

(assert (not b!1181918))

(assert (not b!1181935))

(assert (not d!338185))

(assert (not d!338211))

(assert (not b!1182044))

(assert (not b!1181824))

(assert (not b_lambda!35329))

(assert (not b!1181919))

(assert (not b!1181842))

(assert (not d!338169))

(assert (not b!1181843))

(assert b_and!81193)

(assert (not b!1182013))

(assert (not b!1182022))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!28901))

(assert b_and!81215)

(assert b_and!81209)

(assert (not b_next!28923))

(assert b_and!81205)

(assert (not b_next!28919))

(assert (not b_next!28917))

(assert (not b_next!28905))

(assert b_and!81211)

(assert (not b_next!28921))

(assert (not b_next!28903))

(assert (not b_next!28907))

(assert b_and!81207)

(assert b_and!81193)

(assert b_and!81213)

(assert b_and!81189)

(check-sat)

(pop 1)

