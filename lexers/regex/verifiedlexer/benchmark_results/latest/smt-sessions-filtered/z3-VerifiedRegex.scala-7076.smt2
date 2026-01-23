; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375112 () Bool)

(assert start!375112)

(declare-fun b!3985932 () Bool)

(declare-fun b_free!110689 () Bool)

(declare-fun b_next!111393 () Bool)

(assert (=> b!3985932 (= b_free!110689 (not b_next!111393))))

(declare-fun tp!1214664 () Bool)

(declare-fun b_and!306319 () Bool)

(assert (=> b!3985932 (= tp!1214664 b_and!306319)))

(declare-fun b_free!110691 () Bool)

(declare-fun b_next!111395 () Bool)

(assert (=> b!3985932 (= b_free!110691 (not b_next!111395))))

(declare-fun tp!1214661 () Bool)

(declare-fun b_and!306321 () Bool)

(assert (=> b!3985932 (= tp!1214661 b_and!306321)))

(declare-fun b!3985911 () Bool)

(declare-fun b_free!110693 () Bool)

(declare-fun b_next!111397 () Bool)

(assert (=> b!3985911 (= b_free!110693 (not b_next!111397))))

(declare-fun tp!1214658 () Bool)

(declare-fun b_and!306323 () Bool)

(assert (=> b!3985911 (= tp!1214658 b_and!306323)))

(declare-fun b_free!110695 () Bool)

(declare-fun b_next!111399 () Bool)

(assert (=> b!3985911 (= b_free!110695 (not b_next!111399))))

(declare-fun tp!1214662 () Bool)

(declare-fun b_and!306325 () Bool)

(assert (=> b!3985911 (= tp!1214662 b_and!306325)))

(declare-fun b!3985903 () Bool)

(declare-fun res!1616594 () Bool)

(declare-fun e!2470550 () Bool)

(assert (=> b!3985903 (=> (not res!1616594) (not e!2470550))))

(declare-datatypes ((C!23476 0))(
  ( (C!23477 (val!13832 Int)) )
))
(declare-datatypes ((List!42752 0))(
  ( (Nil!42628) (Cons!42628 (h!48048 C!23476) (t!331551 List!42752)) )
))
(declare-fun suffix!1299 () List!42752)

(declare-fun newSuffix!27 () List!42752)

(declare-fun size!31884 (List!42752) Int)

(assert (=> b!3985903 (= res!1616594 (>= (size!31884 suffix!1299) (size!31884 newSuffix!27)))))

(declare-fun b!3985904 () Bool)

(declare-fun res!1616602 () Bool)

(declare-fun e!2470561 () Bool)

(assert (=> b!3985904 (=> res!1616602 e!2470561)))

(declare-fun lt!1402787 () List!42752)

(declare-fun lt!1402777 () List!42752)

(declare-fun isPrefix!3827 (List!42752 List!42752) Bool)

(assert (=> b!3985904 (= res!1616602 (not (isPrefix!3827 lt!1402787 lt!1402777)))))

(declare-fun b!3985905 () Bool)

(declare-fun e!2470564 () Bool)

(declare-fun e!2470547 () Bool)

(assert (=> b!3985905 (= e!2470564 e!2470547)))

(declare-fun res!1616583 () Bool)

(assert (=> b!3985905 (=> (not res!1616583) (not e!2470547))))

(declare-fun lt!1402828 () List!42752)

(assert (=> b!3985905 (= res!1616583 (= lt!1402828 lt!1402777))))

(declare-fun prefix!494 () List!42752)

(declare-fun ++!11142 (List!42752 List!42752) List!42752)

(assert (=> b!3985905 (= lt!1402777 (++!11142 prefix!494 newSuffix!27))))

(declare-fun lt!1402810 () List!42752)

(declare-fun newSuffixResult!27 () List!42752)

(assert (=> b!3985905 (= lt!1402828 (++!11142 lt!1402810 newSuffixResult!27))))

(declare-fun b!3985906 () Bool)

(declare-fun res!1616590 () Bool)

(declare-fun e!2470548 () Bool)

(assert (=> b!3985906 (=> (not res!1616590) (not e!2470548))))

(declare-datatypes ((IArray!25907 0))(
  ( (IArray!25908 (innerList!13011 List!42752)) )
))
(declare-datatypes ((Conc!12951 0))(
  ( (Node!12951 (left!32223 Conc!12951) (right!32553 Conc!12951) (csize!26132 Int) (cheight!13162 Int)) (Leaf!20028 (xs!16257 IArray!25907) (csize!26133 Int)) (Empty!12951) )
))
(declare-datatypes ((BalanceConc!25496 0))(
  ( (BalanceConc!25497 (c!690122 Conc!12951)) )
))
(declare-datatypes ((List!42753 0))(
  ( (Nil!42629) (Cons!42629 (h!48049 (_ BitVec 16)) (t!331552 List!42753)) )
))
(declare-datatypes ((TokenValue!6970 0))(
  ( (FloatLiteralValue!13940 (text!49235 List!42753)) (TokenValueExt!6969 (__x!26157 Int)) (Broken!34850 (value!212698 List!42753)) (Object!7093) (End!6970) (Def!6970) (Underscore!6970) (Match!6970) (Else!6970) (Error!6970) (Case!6970) (If!6970) (Extends!6970) (Abstract!6970) (Class!6970) (Val!6970) (DelimiterValue!13940 (del!7030 List!42753)) (KeywordValue!6976 (value!212699 List!42753)) (CommentValue!13940 (value!212700 List!42753)) (WhitespaceValue!13940 (value!212701 List!42753)) (IndentationValue!6970 (value!212702 List!42753)) (String!48567) (Int32!6970) (Broken!34851 (value!212703 List!42753)) (Boolean!6971) (Unit!61315) (OperatorValue!6973 (op!7030 List!42753)) (IdentifierValue!13940 (value!212704 List!42753)) (IdentifierValue!13941 (value!212705 List!42753)) (WhitespaceValue!13941 (value!212706 List!42753)) (True!13940) (False!13940) (Broken!34852 (value!212707 List!42753)) (Broken!34853 (value!212708 List!42753)) (True!13941) (RightBrace!6970) (RightBracket!6970) (Colon!6970) (Null!6970) (Comma!6970) (LeftBracket!6970) (False!13941) (LeftBrace!6970) (ImaginaryLiteralValue!6970 (text!49236 List!42753)) (StringLiteralValue!20910 (value!212709 List!42753)) (EOFValue!6970 (value!212710 List!42753)) (IdentValue!6970 (value!212711 List!42753)) (DelimiterValue!13941 (value!212712 List!42753)) (DedentValue!6970 (value!212713 List!42753)) (NewLineValue!6970 (value!212714 List!42753)) (IntegerValue!20910 (value!212715 (_ BitVec 32)) (text!49237 List!42753)) (IntegerValue!20911 (value!212716 Int) (text!49238 List!42753)) (Times!6970) (Or!6970) (Equal!6970) (Minus!6970) (Broken!34854 (value!212717 List!42753)) (And!6970) (Div!6970) (LessEqual!6970) (Mod!6970) (Concat!18615) (Not!6970) (Plus!6970) (SpaceValue!6970 (value!212718 List!42753)) (IntegerValue!20912 (value!212719 Int) (text!49239 List!42753)) (StringLiteralValue!20911 (text!49240 List!42753)) (FloatLiteralValue!13941 (text!49241 List!42753)) (BytesLiteralValue!6970 (value!212720 List!42753)) (CommentValue!13941 (value!212721 List!42753)) (StringLiteralValue!20912 (value!212722 List!42753)) (ErrorTokenValue!6970 (msg!7031 List!42753)) )
))
(declare-datatypes ((Regex!11645 0))(
  ( (ElementMatch!11645 (c!690123 C!23476)) (Concat!18616 (regOne!23802 Regex!11645) (regTwo!23802 Regex!11645)) (EmptyExpr!11645) (Star!11645 (reg!11974 Regex!11645)) (EmptyLang!11645) (Union!11645 (regOne!23803 Regex!11645) (regTwo!23803 Regex!11645)) )
))
(declare-datatypes ((String!48568 0))(
  ( (String!48569 (value!212723 String)) )
))
(declare-datatypes ((TokenValueInjection!13368 0))(
  ( (TokenValueInjection!13369 (toValue!9228 Int) (toChars!9087 Int)) )
))
(declare-datatypes ((Rule!13280 0))(
  ( (Rule!13281 (regex!6740 Regex!11645) (tag!7600 String!48568) (isSeparator!6740 Bool) (transformation!6740 TokenValueInjection!13368)) )
))
(declare-datatypes ((Token!12618 0))(
  ( (Token!12619 (value!212724 TokenValue!6970) (rule!9752 Rule!13280) (size!31885 Int) (originalCharacters!7340 List!42752)) )
))
(declare-fun token!484 () Token!12618)

(declare-fun lt!1402824 () TokenValue!6970)

(assert (=> b!3985906 (= res!1616590 (= (value!212724 token!484) lt!1402824))))

(declare-fun b!3985907 () Bool)

(declare-fun e!2470559 () Bool)

(declare-fun tp_is_empty!20261 () Bool)

(declare-fun tp!1214668 () Bool)

(assert (=> b!3985907 (= e!2470559 (and tp_is_empty!20261 tp!1214668))))

(declare-fun b!3985908 () Bool)

(declare-fun e!2470533 () Bool)

(declare-fun e!2470557 () Bool)

(assert (=> b!3985908 (= e!2470533 e!2470557)))

(declare-fun res!1616581 () Bool)

(assert (=> b!3985908 (=> res!1616581 e!2470557)))

(declare-fun lt!1402797 () List!42752)

(declare-fun lt!1402812 () List!42752)

(assert (=> b!3985908 (= res!1616581 (not (= lt!1402797 lt!1402812)))))

(declare-fun lt!1402827 () List!42752)

(assert (=> b!3985908 (= lt!1402797 (++!11142 prefix!494 lt!1402827))))

(declare-fun lt!1402780 () List!42752)

(assert (=> b!3985908 (= lt!1402797 (++!11142 lt!1402777 lt!1402780))))

(declare-datatypes ((Unit!61316 0))(
  ( (Unit!61317) )
))
(declare-fun lt!1402774 () Unit!61316)

(declare-fun lemmaConcatAssociativity!2462 (List!42752 List!42752 List!42752) Unit!61316)

(assert (=> b!3985908 (= lt!1402774 (lemmaConcatAssociativity!2462 prefix!494 newSuffix!27 lt!1402780))))

(declare-fun b!3985909 () Bool)

(declare-fun e!2470552 () Bool)

(declare-fun e!2470538 () Bool)

(assert (=> b!3985909 (= e!2470552 e!2470538)))

(declare-fun res!1616604 () Bool)

(assert (=> b!3985909 (=> res!1616604 e!2470538)))

(declare-datatypes ((tuple2!41840 0))(
  ( (tuple2!41841 (_1!24054 Token!12618) (_2!24054 List!42752)) )
))
(declare-datatypes ((Option!9154 0))(
  ( (None!9153) (Some!9153 (v!39505 tuple2!41840)) )
))
(declare-fun lt!1402779 () Option!9154)

(get-info :version)

(assert (=> b!3985909 (= res!1616604 (not ((_ is Some!9153) lt!1402779)))))

(declare-datatypes ((LexerInterface!6329 0))(
  ( (LexerInterfaceExt!6326 (__x!26158 Int)) (Lexer!6327) )
))
(declare-fun thiss!21717 () LexerInterface!6329)

(declare-datatypes ((List!42754 0))(
  ( (Nil!42630) (Cons!42630 (h!48050 Rule!13280) (t!331553 List!42754)) )
))
(declare-fun rules!2999 () List!42754)

(declare-fun maxPrefix!3627 (LexerInterface!6329 List!42754 List!42752) Option!9154)

(assert (=> b!3985909 (= lt!1402779 (maxPrefix!3627 thiss!21717 rules!2999 lt!1402777))))

(declare-fun suffixResult!105 () List!42752)

(declare-fun lt!1402814 () List!42752)

(declare-fun lt!1402813 () Token!12618)

(declare-fun lt!1402817 () tuple2!41840)

(assert (=> b!3985909 (and (= suffixResult!105 lt!1402814) (= lt!1402817 (tuple2!41841 lt!1402813 lt!1402814)))))

(declare-fun lt!1402831 () Unit!61316)

(declare-fun lemmaSamePrefixThenSameSuffix!2014 (List!42752 List!42752 List!42752 List!42752 List!42752) Unit!61316)

(assert (=> b!3985909 (= lt!1402831 (lemmaSamePrefixThenSameSuffix!2014 lt!1402810 suffixResult!105 lt!1402810 lt!1402814 lt!1402812))))

(declare-fun lt!1402816 () List!42752)

(assert (=> b!3985909 (isPrefix!3827 lt!1402810 lt!1402816)))

(declare-fun lt!1402782 () Unit!61316)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2670 (List!42752 List!42752) Unit!61316)

(assert (=> b!3985909 (= lt!1402782 (lemmaConcatTwoListThenFirstIsPrefix!2670 lt!1402810 lt!1402814))))

(declare-fun b!3985910 () Bool)

(declare-fun e!2470542 () Bool)

(declare-fun e!2470536 () Bool)

(assert (=> b!3985910 (= e!2470542 e!2470536)))

(declare-fun res!1616576 () Bool)

(assert (=> b!3985910 (=> res!1616576 e!2470536)))

(declare-fun lt!1402778 () Option!9154)

(declare-fun lt!1402792 () Option!9154)

(assert (=> b!3985910 (= res!1616576 (not (= lt!1402778 lt!1402792)))))

(assert (=> b!3985910 (= lt!1402778 (Some!9153 (tuple2!41841 lt!1402813 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2661 (LexerInterface!6329 Rule!13280 List!42752) Option!9154)

(assert (=> b!3985910 (= lt!1402778 (maxPrefixOneRule!2661 thiss!21717 (rule!9752 token!484) lt!1402812))))

(declare-fun lt!1402798 () Int)

(assert (=> b!3985910 (= lt!1402813 (Token!12619 lt!1402824 (rule!9752 token!484) lt!1402798 lt!1402810))))

(declare-fun apply!9951 (TokenValueInjection!13368 BalanceConc!25496) TokenValue!6970)

(declare-fun seqFromList!4979 (List!42752) BalanceConc!25496)

(assert (=> b!3985910 (= lt!1402824 (apply!9951 (transformation!6740 (rule!9752 token!484)) (seqFromList!4979 lt!1402810)))))

(declare-fun lt!1402783 () Unit!61316)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1483 (LexerInterface!6329 List!42754 List!42752 List!42752 List!42752 Rule!13280) Unit!61316)

(assert (=> b!3985910 (= lt!1402783 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1483 thiss!21717 rules!2999 lt!1402810 lt!1402812 suffixResult!105 (rule!9752 token!484)))))

(declare-fun lt!1402809 () List!42752)

(assert (=> b!3985910 (= lt!1402809 suffixResult!105)))

(declare-fun lt!1402830 () Unit!61316)

(assert (=> b!3985910 (= lt!1402830 (lemmaSamePrefixThenSameSuffix!2014 lt!1402810 lt!1402809 lt!1402810 suffixResult!105 lt!1402812))))

(declare-fun lt!1402785 () List!42752)

(assert (=> b!3985910 (isPrefix!3827 lt!1402810 lt!1402785)))

(declare-fun lt!1402805 () Unit!61316)

(assert (=> b!3985910 (= lt!1402805 (lemmaConcatTwoListThenFirstIsPrefix!2670 lt!1402810 lt!1402809))))

(declare-fun e!2470556 () Bool)

(assert (=> b!3985911 (= e!2470556 (and tp!1214658 tp!1214662))))

(declare-fun b!3985912 () Bool)

(declare-fun e!2470565 () Bool)

(assert (=> b!3985912 (= e!2470565 e!2470561)))

(declare-fun res!1616605 () Bool)

(assert (=> b!3985912 (=> res!1616605 e!2470561)))

(declare-fun lt!1402795 () Int)

(assert (=> b!3985912 (= res!1616605 (>= lt!1402795 lt!1402798))))

(declare-fun lt!1402793 () Unit!61316)

(declare-fun e!2470558 () Unit!61316)

(assert (=> b!3985912 (= lt!1402793 e!2470558)))

(declare-fun c!690121 () Bool)

(assert (=> b!3985912 (= c!690121 (> lt!1402795 lt!1402798))))

(declare-fun lt!1402790 () List!42752)

(assert (=> b!3985912 (= (_2!24054 (v!39505 lt!1402779)) lt!1402790)))

(declare-fun lt!1402800 () Unit!61316)

(assert (=> b!3985912 (= lt!1402800 (lemmaSamePrefixThenSameSuffix!2014 lt!1402787 (_2!24054 (v!39505 lt!1402779)) lt!1402787 lt!1402790 lt!1402777))))

(declare-fun lt!1402776 () List!42752)

(assert (=> b!3985912 (isPrefix!3827 lt!1402787 lt!1402776)))

(declare-fun lt!1402815 () Unit!61316)

(assert (=> b!3985912 (= lt!1402815 (lemmaConcatTwoListThenFirstIsPrefix!2670 lt!1402787 lt!1402790))))

(declare-fun b!3985913 () Bool)

(declare-fun e!2470544 () Bool)

(assert (=> b!3985913 (= e!2470544 e!2470552)))

(declare-fun res!1616580 () Bool)

(assert (=> b!3985913 (=> res!1616580 e!2470552)))

(assert (=> b!3985913 (= res!1616580 (not (= lt!1402816 lt!1402812)))))

(assert (=> b!3985913 (= lt!1402816 (++!11142 lt!1402810 lt!1402814))))

(declare-fun getSuffix!2258 (List!42752 List!42752) List!42752)

(assert (=> b!3985913 (= lt!1402814 (getSuffix!2258 lt!1402812 lt!1402810))))

(assert (=> b!3985913 e!2470548))

(declare-fun res!1616601 () Bool)

(assert (=> b!3985913 (=> (not res!1616601) (not e!2470548))))

(assert (=> b!3985913 (= res!1616601 (isPrefix!3827 lt!1402812 lt!1402812))))

(declare-fun lt!1402811 () Unit!61316)

(declare-fun lemmaIsPrefixRefl!2419 (List!42752 List!42752) Unit!61316)

(assert (=> b!3985913 (= lt!1402811 (lemmaIsPrefixRefl!2419 lt!1402812 lt!1402812))))

(declare-fun b!3985914 () Bool)

(declare-fun Unit!61318 () Unit!61316)

(assert (=> b!3985914 (= e!2470558 Unit!61318)))

(declare-fun lt!1402802 () Unit!61316)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!394 (LexerInterface!6329 List!42754 Rule!13280 List!42752 List!42752 List!42752 Rule!13280) Unit!61316)

(assert (=> b!3985914 (= lt!1402802 (lemmaMaxPrefixOutputsMaxPrefix!394 thiss!21717 rules!2999 (rule!9752 token!484) lt!1402810 lt!1402812 lt!1402787 (rule!9752 (_1!24054 (v!39505 lt!1402779)))))))

(declare-fun res!1616603 () Bool)

(declare-fun matchR!5622 (Regex!11645 List!42752) Bool)

(assert (=> b!3985914 (= res!1616603 (not (matchR!5622 (regex!6740 (rule!9752 (_1!24054 (v!39505 lt!1402779)))) lt!1402787)))))

(declare-fun e!2470541 () Bool)

(assert (=> b!3985914 (=> (not res!1616603) (not e!2470541))))

(assert (=> b!3985914 e!2470541))

(declare-fun b!3985915 () Bool)

(declare-fun e!2470560 () Bool)

(declare-fun tp!1214656 () Bool)

(assert (=> b!3985915 (= e!2470560 (and tp_is_empty!20261 tp!1214656))))

(declare-fun b!3985916 () Bool)

(declare-fun e!2470543 () Bool)

(declare-fun e!2470562 () Bool)

(declare-fun tp!1214666 () Bool)

(assert (=> b!3985916 (= e!2470543 (and e!2470562 tp!1214666))))

(declare-fun b!3985917 () Bool)

(declare-fun res!1616593 () Bool)

(assert (=> b!3985917 (=> res!1616593 e!2470561)))

(declare-fun contains!8485 (List!42754 Rule!13280) Bool)

(assert (=> b!3985917 (= res!1616593 (not (contains!8485 rules!2999 (rule!9752 token!484))))))

(declare-fun b!3985918 () Bool)

(declare-fun e!2470566 () Bool)

(declare-fun tp!1214660 () Bool)

(assert (=> b!3985918 (= e!2470566 (and tp_is_empty!20261 tp!1214660))))

(declare-fun b!3985919 () Bool)

(declare-fun e!2470551 () Bool)

(declare-fun e!2470534 () Bool)

(assert (=> b!3985919 (= e!2470551 (not e!2470534))))

(declare-fun res!1616597 () Bool)

(assert (=> b!3985919 (=> res!1616597 e!2470534)))

(declare-fun lt!1402791 () List!42752)

(assert (=> b!3985919 (= res!1616597 (not (= lt!1402791 lt!1402812)))))

(assert (=> b!3985919 (= lt!1402791 (++!11142 lt!1402810 suffixResult!105))))

(declare-fun lt!1402788 () Unit!61316)

(declare-fun lemmaInv!955 (TokenValueInjection!13368) Unit!61316)

(assert (=> b!3985919 (= lt!1402788 (lemmaInv!955 (transformation!6740 (rule!9752 token!484))))))

(declare-fun ruleValid!2672 (LexerInterface!6329 Rule!13280) Bool)

(assert (=> b!3985919 (ruleValid!2672 thiss!21717 (rule!9752 token!484))))

(declare-fun lt!1402808 () Unit!61316)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1746 (LexerInterface!6329 Rule!13280 List!42754) Unit!61316)

(assert (=> b!3985919 (= lt!1402808 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1746 thiss!21717 (rule!9752 token!484) rules!2999))))

(declare-fun b!3985920 () Bool)

(declare-fun e!2470546 () Bool)

(assert (=> b!3985920 (= e!2470546 e!2470542)))

(declare-fun res!1616582 () Bool)

(assert (=> b!3985920 (=> res!1616582 e!2470542)))

(declare-fun lt!1402819 () List!42752)

(assert (=> b!3985920 (= res!1616582 (or (not (= lt!1402812 lt!1402819)) (not (= lt!1402812 lt!1402785))))))

(assert (=> b!3985920 (= lt!1402819 lt!1402785)))

(assert (=> b!3985920 (= lt!1402785 (++!11142 lt!1402810 lt!1402809))))

(declare-fun lt!1402833 () List!42752)

(assert (=> b!3985920 (= lt!1402819 (++!11142 lt!1402833 suffix!1299))))

(declare-fun lt!1402784 () List!42752)

(assert (=> b!3985920 (= lt!1402809 (++!11142 lt!1402784 suffix!1299))))

(declare-fun lt!1402803 () Unit!61316)

(assert (=> b!3985920 (= lt!1402803 (lemmaConcatAssociativity!2462 lt!1402810 lt!1402784 suffix!1299))))

(declare-fun b!3985921 () Bool)

(declare-fun tp!1214665 () Bool)

(declare-fun e!2470553 () Bool)

(declare-fun e!2470545 () Bool)

(declare-fun inv!21 (TokenValue!6970) Bool)

(assert (=> b!3985921 (= e!2470553 (and (inv!21 (value!212724 token!484)) e!2470545 tp!1214665))))

(declare-fun b!3985922 () Bool)

(declare-fun e!2470537 () Bool)

(assert (=> b!3985922 (= e!2470557 e!2470537)))

(declare-fun res!1616579 () Bool)

(assert (=> b!3985922 (=> res!1616579 e!2470537)))

(assert (=> b!3985922 (= res!1616579 (not (isPrefix!3827 lt!1402787 lt!1402812)))))

(assert (=> b!3985922 (isPrefix!3827 lt!1402787 lt!1402797)))

(declare-fun lt!1402822 () Unit!61316)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!660 (List!42752 List!42752 List!42752) Unit!61316)

(assert (=> b!3985922 (= lt!1402822 (lemmaPrefixStaysPrefixWhenAddingToSuffix!660 lt!1402787 lt!1402777 lt!1402780))))

(declare-fun b!3985923 () Bool)

(assert (=> b!3985923 (= e!2470536 e!2470544)))

(declare-fun res!1616600 () Bool)

(assert (=> b!3985923 (=> res!1616600 e!2470544)))

(assert (=> b!3985923 (= res!1616600 (not (matchR!5622 (regex!6740 (rule!9752 token!484)) lt!1402810)))))

(assert (=> b!3985923 (isPrefix!3827 lt!1402810 lt!1402777)))

(declare-fun lt!1402804 () Unit!61316)

(assert (=> b!3985923 (= lt!1402804 (lemmaPrefixStaysPrefixWhenAddingToSuffix!660 lt!1402810 prefix!494 newSuffix!27))))

(declare-fun lt!1402826 () Unit!61316)

(assert (=> b!3985923 (= lt!1402826 (lemmaPrefixStaysPrefixWhenAddingToSuffix!660 lt!1402810 prefix!494 suffix!1299))))

(declare-fun b!3985924 () Bool)

(declare-fun e!2470539 () Bool)

(assert (=> b!3985924 (= e!2470538 e!2470539)))

(declare-fun res!1616584 () Bool)

(assert (=> b!3985924 (=> res!1616584 e!2470539)))

(declare-fun lt!1402775 () Option!9154)

(assert (=> b!3985924 (= res!1616584 (not (= lt!1402775 (Some!9153 (v!39505 lt!1402779)))))))

(assert (=> b!3985924 (isPrefix!3827 lt!1402787 (++!11142 lt!1402787 newSuffixResult!27))))

(declare-fun lt!1402832 () Unit!61316)

(assert (=> b!3985924 (= lt!1402832 (lemmaConcatTwoListThenFirstIsPrefix!2670 lt!1402787 newSuffixResult!27))))

(declare-fun lt!1402801 () List!42752)

(assert (=> b!3985924 (isPrefix!3827 lt!1402787 lt!1402801)))

(assert (=> b!3985924 (= lt!1402801 (++!11142 lt!1402787 (_2!24054 (v!39505 lt!1402779))))))

(declare-fun lt!1402807 () Unit!61316)

(assert (=> b!3985924 (= lt!1402807 (lemmaConcatTwoListThenFirstIsPrefix!2670 lt!1402787 (_2!24054 (v!39505 lt!1402779))))))

(declare-fun lt!1402806 () TokenValue!6970)

(assert (=> b!3985924 (= lt!1402775 (Some!9153 (tuple2!41841 (Token!12619 lt!1402806 (rule!9752 (_1!24054 (v!39505 lt!1402779))) lt!1402795 lt!1402787) (_2!24054 (v!39505 lt!1402779)))))))

(assert (=> b!3985924 (= lt!1402775 (maxPrefixOneRule!2661 thiss!21717 (rule!9752 (_1!24054 (v!39505 lt!1402779))) lt!1402777))))

(assert (=> b!3985924 (= lt!1402795 (size!31884 lt!1402787))))

(declare-fun lt!1402823 () BalanceConc!25496)

(assert (=> b!3985924 (= lt!1402806 (apply!9951 (transformation!6740 (rule!9752 (_1!24054 (v!39505 lt!1402779)))) lt!1402823))))

(assert (=> b!3985924 (= lt!1402823 (seqFromList!4979 lt!1402787))))

(declare-fun lt!1402829 () Unit!61316)

(assert (=> b!3985924 (= lt!1402829 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1483 thiss!21717 rules!2999 lt!1402787 lt!1402777 (_2!24054 (v!39505 lt!1402779)) (rule!9752 (_1!24054 (v!39505 lt!1402779)))))))

(declare-fun list!15824 (BalanceConc!25496) List!42752)

(declare-fun charsOf!4556 (Token!12618) BalanceConc!25496)

(assert (=> b!3985924 (= lt!1402787 (list!15824 (charsOf!4556 (_1!24054 (v!39505 lt!1402779)))))))

(declare-fun lt!1402820 () Unit!61316)

(assert (=> b!3985924 (= lt!1402820 (lemmaInv!955 (transformation!6740 (rule!9752 (_1!24054 (v!39505 lt!1402779))))))))

(assert (=> b!3985924 (ruleValid!2672 thiss!21717 (rule!9752 (_1!24054 (v!39505 lt!1402779))))))

(declare-fun lt!1402821 () Unit!61316)

(assert (=> b!3985924 (= lt!1402821 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1746 thiss!21717 (rule!9752 (_1!24054 (v!39505 lt!1402779))) rules!2999))))

(declare-fun lt!1402781 () Unit!61316)

(declare-fun lemmaCharactersSize!1335 (Token!12618) Unit!61316)

(assert (=> b!3985924 (= lt!1402781 (lemmaCharactersSize!1335 token!484))))

(declare-fun lt!1402794 () Unit!61316)

(assert (=> b!3985924 (= lt!1402794 (lemmaCharactersSize!1335 (_1!24054 (v!39505 lt!1402779))))))

(declare-fun b!3985925 () Bool)

(declare-fun e!2470540 () Bool)

(assert (=> b!3985925 (= e!2470540 e!2470546)))

(declare-fun res!1616606 () Bool)

(assert (=> b!3985925 (=> res!1616606 e!2470546)))

(assert (=> b!3985925 (= res!1616606 (not (= lt!1402833 prefix!494)))))

(assert (=> b!3985925 (= lt!1402833 (++!11142 lt!1402810 lt!1402784))))

(assert (=> b!3985925 (= lt!1402784 (getSuffix!2258 prefix!494 lt!1402810))))

(assert (=> b!3985925 (isPrefix!3827 lt!1402810 prefix!494)))

(declare-fun lt!1402818 () Unit!61316)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!405 (List!42752 List!42752 List!42752) Unit!61316)

(assert (=> b!3985925 (= lt!1402818 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!405 prefix!494 lt!1402810 lt!1402812))))

(declare-fun b!3985926 () Bool)

(declare-fun tp!1214667 () Bool)

(declare-fun inv!56938 (String!48568) Bool)

(declare-fun inv!56941 (TokenValueInjection!13368) Bool)

(assert (=> b!3985926 (= e!2470562 (and tp!1214667 (inv!56938 (tag!7600 (h!48050 rules!2999))) (inv!56941 (transformation!6740 (h!48050 rules!2999))) e!2470556))))

(declare-fun b!3985927 () Bool)

(assert (=> b!3985927 (= e!2470541 false)))

(declare-fun b!3985928 () Bool)

(assert (=> b!3985928 (= e!2470539 e!2470533)))

(declare-fun res!1616599 () Bool)

(assert (=> b!3985928 (=> res!1616599 e!2470533)))

(assert (=> b!3985928 (= res!1616599 (not (= lt!1402827 suffix!1299)))))

(assert (=> b!3985928 (= lt!1402827 (++!11142 newSuffix!27 lt!1402780))))

(assert (=> b!3985928 (= lt!1402780 (getSuffix!2258 suffix!1299 newSuffix!27))))

(declare-fun b!3985929 () Bool)

(declare-fun e!2470532 () Bool)

(declare-fun tp!1214663 () Bool)

(assert (=> b!3985929 (= e!2470532 (and tp_is_empty!20261 tp!1214663))))

(declare-fun b!3985930 () Bool)

(declare-fun res!1616591 () Bool)

(assert (=> b!3985930 (=> res!1616591 e!2470537)))

(assert (=> b!3985930 (= res!1616591 (not (= lt!1402801 lt!1402777)))))

(declare-fun b!3985931 () Bool)

(declare-fun Unit!61319 () Unit!61316)

(assert (=> b!3985931 (= e!2470558 Unit!61319)))

(declare-fun e!2470549 () Bool)

(assert (=> b!3985932 (= e!2470549 (and tp!1214664 tp!1214661))))

(declare-fun b!3985933 () Bool)

(assert (=> b!3985933 (= e!2470534 e!2470540)))

(declare-fun res!1616588 () Bool)

(assert (=> b!3985933 (=> res!1616588 e!2470540)))

(assert (=> b!3985933 (= res!1616588 (not (isPrefix!3827 lt!1402810 lt!1402812)))))

(assert (=> b!3985933 (isPrefix!3827 prefix!494 lt!1402812)))

(declare-fun lt!1402799 () Unit!61316)

(assert (=> b!3985933 (= lt!1402799 (lemmaConcatTwoListThenFirstIsPrefix!2670 prefix!494 suffix!1299))))

(assert (=> b!3985933 (isPrefix!3827 lt!1402810 lt!1402791)))

(declare-fun lt!1402789 () Unit!61316)

(assert (=> b!3985933 (= lt!1402789 (lemmaConcatTwoListThenFirstIsPrefix!2670 lt!1402810 suffixResult!105))))

(declare-fun b!3985934 () Bool)

(declare-fun e!2470535 () Bool)

(declare-fun tp!1214659 () Bool)

(assert (=> b!3985934 (= e!2470535 (and tp_is_empty!20261 tp!1214659))))

(declare-fun b!3985935 () Bool)

(declare-fun res!1616598 () Bool)

(assert (=> b!3985935 (=> res!1616598 e!2470561)))

(assert (=> b!3985935 (= res!1616598 (not (contains!8485 rules!2999 (rule!9752 (_1!24054 (v!39505 lt!1402779))))))))

(declare-fun b!3985936 () Bool)

(assert (=> b!3985936 (= e!2470547 e!2470551)))

(declare-fun res!1616589 () Bool)

(assert (=> b!3985936 (=> (not res!1616589) (not e!2470551))))

(assert (=> b!3985936 (= res!1616589 (= (maxPrefix!3627 thiss!21717 rules!2999 lt!1402812) lt!1402792))))

(assert (=> b!3985936 (= lt!1402792 (Some!9153 lt!1402817))))

(assert (=> b!3985936 (= lt!1402817 (tuple2!41841 token!484 suffixResult!105))))

(assert (=> b!3985936 (= lt!1402812 (++!11142 prefix!494 suffix!1299))))

(declare-fun b!3985937 () Bool)

(declare-fun res!1616586 () Bool)

(assert (=> b!3985937 (=> (not res!1616586) (not e!2470548))))

(assert (=> b!3985937 (= res!1616586 (= (size!31885 token!484) (size!31884 (originalCharacters!7340 token!484))))))

(declare-fun res!1616578 () Bool)

(assert (=> start!375112 (=> (not res!1616578) (not e!2470550))))

(assert (=> start!375112 (= res!1616578 ((_ is Lexer!6327) thiss!21717))))

(assert (=> start!375112 e!2470550))

(assert (=> start!375112 e!2470535))

(declare-fun inv!56942 (Token!12618) Bool)

(assert (=> start!375112 (and (inv!56942 token!484) e!2470553)))

(assert (=> start!375112 e!2470566))

(assert (=> start!375112 e!2470560))

(assert (=> start!375112 e!2470559))

(assert (=> start!375112 true))

(assert (=> start!375112 e!2470543))

(assert (=> start!375112 e!2470532))

(declare-fun b!3985938 () Bool)

(declare-fun res!1616577 () Bool)

(assert (=> b!3985938 (=> res!1616577 e!2470561)))

(assert (=> b!3985938 (= res!1616577 (not (matchR!5622 (regex!6740 (rule!9752 (_1!24054 (v!39505 lt!1402779)))) lt!1402787)))))

(declare-fun b!3985939 () Bool)

(assert (=> b!3985939 (= e!2470550 e!2470564)))

(declare-fun res!1616587 () Bool)

(assert (=> b!3985939 (=> (not res!1616587) (not e!2470564))))

(declare-fun lt!1402786 () Int)

(assert (=> b!3985939 (= res!1616587 (>= lt!1402786 lt!1402798))))

(assert (=> b!3985939 (= lt!1402798 (size!31884 lt!1402810))))

(assert (=> b!3985939 (= lt!1402786 (size!31884 prefix!494))))

(assert (=> b!3985939 (= lt!1402810 (list!15824 (charsOf!4556 token!484)))))

(declare-fun b!3985940 () Bool)

(assert (=> b!3985940 (= e!2470548 (and (= (size!31885 token!484) lt!1402798) (= (originalCharacters!7340 token!484) lt!1402810)))))

(declare-fun b!3985941 () Bool)

(declare-fun res!1616585 () Bool)

(assert (=> b!3985941 (=> (not res!1616585) (not e!2470550))))

(declare-fun rulesInvariant!5672 (LexerInterface!6329 List!42754) Bool)

(assert (=> b!3985941 (= res!1616585 (rulesInvariant!5672 thiss!21717 rules!2999))))

(declare-fun b!3985942 () Bool)

(assert (=> b!3985942 (= e!2470561 true)))

(assert (=> b!3985942 (isPrefix!3827 lt!1402777 lt!1402777)))

(declare-fun lt!1402825 () Unit!61316)

(assert (=> b!3985942 (= lt!1402825 (lemmaIsPrefixRefl!2419 lt!1402777 lt!1402777))))

(declare-fun lt!1402796 () Unit!61316)

(declare-fun lemmaSemiInverse!1842 (TokenValueInjection!13368 BalanceConc!25496) Unit!61316)

(assert (=> b!3985942 (= lt!1402796 (lemmaSemiInverse!1842 (transformation!6740 (rule!9752 (_1!24054 (v!39505 lt!1402779)))) lt!1402823))))

(declare-fun tp!1214657 () Bool)

(declare-fun b!3985943 () Bool)

(assert (=> b!3985943 (= e!2470545 (and tp!1214657 (inv!56938 (tag!7600 (rule!9752 token!484))) (inv!56941 (transformation!6740 (rule!9752 token!484))) e!2470549))))

(declare-fun b!3985944 () Bool)

(declare-fun res!1616592 () Bool)

(assert (=> b!3985944 (=> (not res!1616592) (not e!2470550))))

(declare-fun isEmpty!25480 (List!42754) Bool)

(assert (=> b!3985944 (= res!1616592 (not (isEmpty!25480 rules!2999)))))

(declare-fun b!3985945 () Bool)

(declare-fun res!1616595 () Bool)

(assert (=> b!3985945 (=> (not res!1616595) (not e!2470550))))

(assert (=> b!3985945 (= res!1616595 (isPrefix!3827 newSuffix!27 suffix!1299))))

(declare-fun b!3985946 () Bool)

(assert (=> b!3985946 (= e!2470537 e!2470565)))

(declare-fun res!1616596 () Bool)

(assert (=> b!3985946 (=> res!1616596 e!2470565)))

(assert (=> b!3985946 (= res!1616596 (not (= lt!1402776 lt!1402777)))))

(assert (=> b!3985946 (= lt!1402776 (++!11142 lt!1402787 lt!1402790))))

(assert (=> b!3985946 (= lt!1402790 (getSuffix!2258 lt!1402777 lt!1402787))))

(assert (= (and start!375112 res!1616578) b!3985944))

(assert (= (and b!3985944 res!1616592) b!3985941))

(assert (= (and b!3985941 res!1616585) b!3985903))

(assert (= (and b!3985903 res!1616594) b!3985945))

(assert (= (and b!3985945 res!1616595) b!3985939))

(assert (= (and b!3985939 res!1616587) b!3985905))

(assert (= (and b!3985905 res!1616583) b!3985936))

(assert (= (and b!3985936 res!1616589) b!3985919))

(assert (= (and b!3985919 (not res!1616597)) b!3985933))

(assert (= (and b!3985933 (not res!1616588)) b!3985925))

(assert (= (and b!3985925 (not res!1616606)) b!3985920))

(assert (= (and b!3985920 (not res!1616582)) b!3985910))

(assert (= (and b!3985910 (not res!1616576)) b!3985923))

(assert (= (and b!3985923 (not res!1616600)) b!3985913))

(assert (= (and b!3985913 res!1616601) b!3985906))

(assert (= (and b!3985906 res!1616590) b!3985937))

(assert (= (and b!3985937 res!1616586) b!3985940))

(assert (= (and b!3985913 (not res!1616580)) b!3985909))

(assert (= (and b!3985909 (not res!1616604)) b!3985924))

(assert (= (and b!3985924 (not res!1616584)) b!3985928))

(assert (= (and b!3985928 (not res!1616599)) b!3985908))

(assert (= (and b!3985908 (not res!1616581)) b!3985922))

(assert (= (and b!3985922 (not res!1616579)) b!3985930))

(assert (= (and b!3985930 (not res!1616591)) b!3985946))

(assert (= (and b!3985946 (not res!1616596)) b!3985912))

(assert (= (and b!3985912 c!690121) b!3985914))

(assert (= (and b!3985912 (not c!690121)) b!3985931))

(assert (= (and b!3985914 res!1616603) b!3985927))

(assert (= (and b!3985912 (not res!1616605)) b!3985904))

(assert (= (and b!3985904 (not res!1616602)) b!3985935))

(assert (= (and b!3985935 (not res!1616598)) b!3985917))

(assert (= (and b!3985917 (not res!1616593)) b!3985938))

(assert (= (and b!3985938 (not res!1616577)) b!3985942))

(assert (= (and start!375112 ((_ is Cons!42628) prefix!494)) b!3985934))

(assert (= b!3985943 b!3985932))

(assert (= b!3985921 b!3985943))

(assert (= start!375112 b!3985921))

(assert (= (and start!375112 ((_ is Cons!42628) suffixResult!105)) b!3985918))

(assert (= (and start!375112 ((_ is Cons!42628) suffix!1299)) b!3985915))

(assert (= (and start!375112 ((_ is Cons!42628) newSuffix!27)) b!3985907))

(assert (= b!3985926 b!3985911))

(assert (= b!3985916 b!3985926))

(assert (= (and start!375112 ((_ is Cons!42630) rules!2999)) b!3985916))

(assert (= (and start!375112 ((_ is Cons!42628) newSuffixResult!27)) b!3985929))

(declare-fun m!4561979 () Bool)

(assert (=> b!3985917 m!4561979))

(declare-fun m!4561981 () Bool)

(assert (=> b!3985938 m!4561981))

(declare-fun m!4561983 () Bool)

(assert (=> b!3985937 m!4561983))

(declare-fun m!4561985 () Bool)

(assert (=> start!375112 m!4561985))

(declare-fun m!4561987 () Bool)

(assert (=> b!3985922 m!4561987))

(declare-fun m!4561989 () Bool)

(assert (=> b!3985922 m!4561989))

(declare-fun m!4561991 () Bool)

(assert (=> b!3985922 m!4561991))

(declare-fun m!4561993 () Bool)

(assert (=> b!3985923 m!4561993))

(declare-fun m!4561995 () Bool)

(assert (=> b!3985923 m!4561995))

(declare-fun m!4561997 () Bool)

(assert (=> b!3985923 m!4561997))

(declare-fun m!4561999 () Bool)

(assert (=> b!3985923 m!4561999))

(declare-fun m!4562001 () Bool)

(assert (=> b!3985942 m!4562001))

(declare-fun m!4562003 () Bool)

(assert (=> b!3985942 m!4562003))

(declare-fun m!4562005 () Bool)

(assert (=> b!3985942 m!4562005))

(declare-fun m!4562007 () Bool)

(assert (=> b!3985910 m!4562007))

(declare-fun m!4562009 () Bool)

(assert (=> b!3985910 m!4562009))

(declare-fun m!4562011 () Bool)

(assert (=> b!3985910 m!4562011))

(assert (=> b!3985910 m!4562009))

(declare-fun m!4562013 () Bool)

(assert (=> b!3985910 m!4562013))

(declare-fun m!4562015 () Bool)

(assert (=> b!3985910 m!4562015))

(declare-fun m!4562017 () Bool)

(assert (=> b!3985910 m!4562017))

(declare-fun m!4562019 () Bool)

(assert (=> b!3985910 m!4562019))

(declare-fun m!4562021 () Bool)

(assert (=> b!3985926 m!4562021))

(declare-fun m!4562023 () Bool)

(assert (=> b!3985926 m!4562023))

(declare-fun m!4562025 () Bool)

(assert (=> b!3985919 m!4562025))

(declare-fun m!4562027 () Bool)

(assert (=> b!3985919 m!4562027))

(declare-fun m!4562029 () Bool)

(assert (=> b!3985919 m!4562029))

(declare-fun m!4562031 () Bool)

(assert (=> b!3985919 m!4562031))

(declare-fun m!4562033 () Bool)

(assert (=> b!3985935 m!4562033))

(declare-fun m!4562035 () Bool)

(assert (=> b!3985921 m!4562035))

(declare-fun m!4562037 () Bool)

(assert (=> b!3985933 m!4562037))

(declare-fun m!4562039 () Bool)

(assert (=> b!3985933 m!4562039))

(declare-fun m!4562041 () Bool)

(assert (=> b!3985933 m!4562041))

(declare-fun m!4562043 () Bool)

(assert (=> b!3985933 m!4562043))

(declare-fun m!4562045 () Bool)

(assert (=> b!3985933 m!4562045))

(declare-fun m!4562047 () Bool)

(assert (=> b!3985904 m!4562047))

(declare-fun m!4562049 () Bool)

(assert (=> b!3985946 m!4562049))

(declare-fun m!4562051 () Bool)

(assert (=> b!3985946 m!4562051))

(declare-fun m!4562053 () Bool)

(assert (=> b!3985905 m!4562053))

(declare-fun m!4562055 () Bool)

(assert (=> b!3985905 m!4562055))

(declare-fun m!4562057 () Bool)

(assert (=> b!3985909 m!4562057))

(declare-fun m!4562059 () Bool)

(assert (=> b!3985909 m!4562059))

(declare-fun m!4562061 () Bool)

(assert (=> b!3985909 m!4562061))

(declare-fun m!4562063 () Bool)

(assert (=> b!3985909 m!4562063))

(declare-fun m!4562065 () Bool)

(assert (=> b!3985943 m!4562065))

(declare-fun m!4562067 () Bool)

(assert (=> b!3985943 m!4562067))

(declare-fun m!4562069 () Bool)

(assert (=> b!3985945 m!4562069))

(declare-fun m!4562071 () Bool)

(assert (=> b!3985912 m!4562071))

(declare-fun m!4562073 () Bool)

(assert (=> b!3985912 m!4562073))

(declare-fun m!4562075 () Bool)

(assert (=> b!3985912 m!4562075))

(declare-fun m!4562077 () Bool)

(assert (=> b!3985913 m!4562077))

(declare-fun m!4562079 () Bool)

(assert (=> b!3985913 m!4562079))

(declare-fun m!4562081 () Bool)

(assert (=> b!3985913 m!4562081))

(declare-fun m!4562083 () Bool)

(assert (=> b!3985913 m!4562083))

(declare-fun m!4562085 () Bool)

(assert (=> b!3985908 m!4562085))

(declare-fun m!4562087 () Bool)

(assert (=> b!3985908 m!4562087))

(declare-fun m!4562089 () Bool)

(assert (=> b!3985908 m!4562089))

(declare-fun m!4562091 () Bool)

(assert (=> b!3985924 m!4562091))

(declare-fun m!4562093 () Bool)

(assert (=> b!3985924 m!4562093))

(declare-fun m!4562095 () Bool)

(assert (=> b!3985924 m!4562095))

(declare-fun m!4562097 () Bool)

(assert (=> b!3985924 m!4562097))

(declare-fun m!4562099 () Bool)

(assert (=> b!3985924 m!4562099))

(declare-fun m!4562101 () Bool)

(assert (=> b!3985924 m!4562101))

(declare-fun m!4562103 () Bool)

(assert (=> b!3985924 m!4562103))

(assert (=> b!3985924 m!4562103))

(declare-fun m!4562105 () Bool)

(assert (=> b!3985924 m!4562105))

(declare-fun m!4562107 () Bool)

(assert (=> b!3985924 m!4562107))

(declare-fun m!4562109 () Bool)

(assert (=> b!3985924 m!4562109))

(declare-fun m!4562111 () Bool)

(assert (=> b!3985924 m!4562111))

(assert (=> b!3985924 m!4562111))

(declare-fun m!4562113 () Bool)

(assert (=> b!3985924 m!4562113))

(declare-fun m!4562115 () Bool)

(assert (=> b!3985924 m!4562115))

(declare-fun m!4562117 () Bool)

(assert (=> b!3985924 m!4562117))

(declare-fun m!4562119 () Bool)

(assert (=> b!3985924 m!4562119))

(declare-fun m!4562121 () Bool)

(assert (=> b!3985924 m!4562121))

(declare-fun m!4562123 () Bool)

(assert (=> b!3985924 m!4562123))

(declare-fun m!4562125 () Bool)

(assert (=> b!3985924 m!4562125))

(declare-fun m!4562127 () Bool)

(assert (=> b!3985903 m!4562127))

(declare-fun m!4562129 () Bool)

(assert (=> b!3985903 m!4562129))

(declare-fun m!4562131 () Bool)

(assert (=> b!3985925 m!4562131))

(declare-fun m!4562133 () Bool)

(assert (=> b!3985925 m!4562133))

(declare-fun m!4562135 () Bool)

(assert (=> b!3985925 m!4562135))

(declare-fun m!4562137 () Bool)

(assert (=> b!3985925 m!4562137))

(declare-fun m!4562139 () Bool)

(assert (=> b!3985920 m!4562139))

(declare-fun m!4562141 () Bool)

(assert (=> b!3985920 m!4562141))

(declare-fun m!4562143 () Bool)

(assert (=> b!3985920 m!4562143))

(declare-fun m!4562145 () Bool)

(assert (=> b!3985920 m!4562145))

(declare-fun m!4562147 () Bool)

(assert (=> b!3985914 m!4562147))

(assert (=> b!3985914 m!4561981))

(declare-fun m!4562149 () Bool)

(assert (=> b!3985939 m!4562149))

(declare-fun m!4562151 () Bool)

(assert (=> b!3985939 m!4562151))

(declare-fun m!4562153 () Bool)

(assert (=> b!3985939 m!4562153))

(assert (=> b!3985939 m!4562153))

(declare-fun m!4562155 () Bool)

(assert (=> b!3985939 m!4562155))

(declare-fun m!4562157 () Bool)

(assert (=> b!3985936 m!4562157))

(declare-fun m!4562159 () Bool)

(assert (=> b!3985936 m!4562159))

(declare-fun m!4562161 () Bool)

(assert (=> b!3985928 m!4562161))

(declare-fun m!4562163 () Bool)

(assert (=> b!3985928 m!4562163))

(declare-fun m!4562165 () Bool)

(assert (=> b!3985941 m!4562165))

(declare-fun m!4562167 () Bool)

(assert (=> b!3985944 m!4562167))

(check-sat (not b!3985914) (not b_next!111393) (not b!3985922) (not b!3985905) (not b_next!111395) (not b!3985910) (not b!3985915) (not b!3985903) (not b!3985924) (not b!3985943) (not b!3985929) b_and!306319 (not b!3985936) (not b!3985913) b_and!306323 (not b!3985946) (not b!3985923) (not b!3985928) (not b!3985934) (not b!3985937) (not b!3985921) (not start!375112) (not b!3985916) (not b!3985904) (not b!3985918) (not b!3985945) tp_is_empty!20261 (not b!3985944) (not b!3985941) (not b!3985920) b_and!306325 (not b!3985938) (not b!3985917) (not b_next!111399) (not b!3985933) (not b!3985908) (not b!3985907) (not b!3985925) (not b!3985926) (not b!3985919) b_and!306321 (not b!3985935) (not b!3985912) (not b!3985939) (not b!3985909) (not b!3985942) (not b_next!111397))
(check-sat b_and!306319 b_and!306323 (not b_next!111393) b_and!306325 (not b_next!111395) (not b_next!111399) b_and!306321 (not b_next!111397))
