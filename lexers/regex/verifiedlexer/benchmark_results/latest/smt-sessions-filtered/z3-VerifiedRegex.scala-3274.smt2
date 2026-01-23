; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188046 () Bool)

(assert start!188046)

(declare-fun b!1875733 () Bool)

(declare-fun b_free!52201 () Bool)

(declare-fun b_next!52905 () Bool)

(assert (=> b!1875733 (= b_free!52201 (not b_next!52905))))

(declare-fun tp!534714 () Bool)

(declare-fun b_and!144491 () Bool)

(assert (=> b!1875733 (= tp!534714 b_and!144491)))

(declare-fun b_free!52203 () Bool)

(declare-fun b_next!52907 () Bool)

(assert (=> b!1875733 (= b_free!52203 (not b_next!52907))))

(declare-fun tp!534715 () Bool)

(declare-fun b_and!144493 () Bool)

(assert (=> b!1875733 (= tp!534715 b_and!144493)))

(declare-fun res!838834 () Bool)

(declare-fun e!1197235 () Bool)

(assert (=> start!188046 (=> (not res!838834) (not e!1197235))))

(declare-datatypes ((LexerInterface!3330 0))(
  ( (LexerInterfaceExt!3327 (__x!13126 Int)) (Lexer!3328) )
))
(declare-fun thiss!13718 () LexerInterface!3330)

(declare-fun from!845 () Int)

(get-info :version)

(assert (=> start!188046 (= res!838834 (and ((_ is Lexer!3328) thiss!13718) (>= from!845 0)))))

(assert (=> start!188046 e!1197235))

(assert (=> start!188046 true))

(declare-datatypes ((List!20991 0))(
  ( (Nil!20909) (Cons!20909 (h!26310 (_ BitVec 16)) (t!173214 List!20991)) )
))
(declare-datatypes ((TokenValue!3844 0))(
  ( (FloatLiteralValue!7688 (text!27353 List!20991)) (TokenValueExt!3843 (__x!13127 Int)) (Broken!19220 (value!117117 List!20991)) (Object!3925) (End!3844) (Def!3844) (Underscore!3844) (Match!3844) (Else!3844) (Error!3844) (Case!3844) (If!3844) (Extends!3844) (Abstract!3844) (Class!3844) (Val!3844) (DelimiterValue!7688 (del!3904 List!20991)) (KeywordValue!3850 (value!117118 List!20991)) (CommentValue!7688 (value!117119 List!20991)) (WhitespaceValue!7688 (value!117120 List!20991)) (IndentationValue!3844 (value!117121 List!20991)) (String!24169) (Int32!3844) (Broken!19221 (value!117122 List!20991)) (Boolean!3845) (Unit!35435) (OperatorValue!3847 (op!3904 List!20991)) (IdentifierValue!7688 (value!117123 List!20991)) (IdentifierValue!7689 (value!117124 List!20991)) (WhitespaceValue!7689 (value!117125 List!20991)) (True!7688) (False!7688) (Broken!19222 (value!117126 List!20991)) (Broken!19223 (value!117127 List!20991)) (True!7689) (RightBrace!3844) (RightBracket!3844) (Colon!3844) (Null!3844) (Comma!3844) (LeftBracket!3844) (False!7689) (LeftBrace!3844) (ImaginaryLiteralValue!3844 (text!27354 List!20991)) (StringLiteralValue!11532 (value!117128 List!20991)) (EOFValue!3844 (value!117129 List!20991)) (IdentValue!3844 (value!117130 List!20991)) (DelimiterValue!7689 (value!117131 List!20991)) (DedentValue!3844 (value!117132 List!20991)) (NewLineValue!3844 (value!117133 List!20991)) (IntegerValue!11532 (value!117134 (_ BitVec 32)) (text!27355 List!20991)) (IntegerValue!11533 (value!117135 Int) (text!27356 List!20991)) (Times!3844) (Or!3844) (Equal!3844) (Minus!3844) (Broken!19224 (value!117136 List!20991)) (And!3844) (Div!3844) (LessEqual!3844) (Mod!3844) (Concat!8961) (Not!3844) (Plus!3844) (SpaceValue!3844 (value!117137 List!20991)) (IntegerValue!11534 (value!117138 Int) (text!27357 List!20991)) (StringLiteralValue!11533 (text!27358 List!20991)) (FloatLiteralValue!7689 (text!27359 List!20991)) (BytesLiteralValue!3844 (value!117139 List!20991)) (CommentValue!7689 (value!117140 List!20991)) (StringLiteralValue!11534 (value!117141 List!20991)) (ErrorTokenValue!3844 (msg!3905 List!20991)) )
))
(declare-datatypes ((C!10392 0))(
  ( (C!10393 (val!6084 Int)) )
))
(declare-datatypes ((Regex!5117 0))(
  ( (ElementMatch!5117 (c!305624 C!10392)) (Concat!8962 (regOne!10746 Regex!5117) (regTwo!10746 Regex!5117)) (EmptyExpr!5117) (Star!5117 (reg!5446 Regex!5117)) (EmptyLang!5117) (Union!5117 (regOne!10747 Regex!5117) (regTwo!10747 Regex!5117)) )
))
(declare-datatypes ((String!24170 0))(
  ( (String!24171 (value!117142 String)) )
))
(declare-datatypes ((List!20992 0))(
  ( (Nil!20910) (Cons!20910 (h!26311 C!10392) (t!173215 List!20992)) )
))
(declare-datatypes ((IArray!13895 0))(
  ( (IArray!13896 (innerList!7005 List!20992)) )
))
(declare-datatypes ((Conc!6945 0))(
  ( (Node!6945 (left!16805 Conc!6945) (right!17135 Conc!6945) (csize!14120 Int) (cheight!7156 Int)) (Leaf!10220 (xs!9829 IArray!13895) (csize!14121 Int)) (Empty!6945) )
))
(declare-datatypes ((BalanceConc!13706 0))(
  ( (BalanceConc!13707 (c!305625 Conc!6945)) )
))
(declare-datatypes ((TokenValueInjection!7272 0))(
  ( (TokenValueInjection!7273 (toValue!5305 Int) (toChars!5164 Int)) )
))
(declare-datatypes ((Rule!7216 0))(
  ( (Rule!7217 (regex!3708 Regex!5117) (tag!4122 String!24170) (isSeparator!3708 Bool) (transformation!3708 TokenValueInjection!7272)) )
))
(declare-datatypes ((Token!6968 0))(
  ( (Token!6969 (value!117143 TokenValue!3844) (rule!5901 Rule!7216) (size!16585 Int) (originalCharacters!4515 List!20992)) )
))
(declare-datatypes ((List!20993 0))(
  ( (Nil!20911) (Cons!20911 (h!26312 Token!6968) (t!173216 List!20993)) )
))
(declare-datatypes ((IArray!13897 0))(
  ( (IArray!13898 (innerList!7006 List!20993)) )
))
(declare-datatypes ((Conc!6946 0))(
  ( (Node!6946 (left!16806 Conc!6946) (right!17136 Conc!6946) (csize!14122 Int) (cheight!7157 Int)) (Leaf!10221 (xs!9830 IArray!13897) (csize!14123 Int)) (Empty!6946) )
))
(declare-datatypes ((BalanceConc!13708 0))(
  ( (BalanceConc!13709 (c!305626 Conc!6946)) )
))
(declare-fun acc!408 () BalanceConc!13708)

(declare-fun e!1197237 () Bool)

(declare-fun inv!27799 (BalanceConc!13708) Bool)

(assert (=> start!188046 (and (inv!27799 acc!408) e!1197237)))

(declare-fun v!6352 () BalanceConc!13708)

(declare-fun e!1197234 () Bool)

(assert (=> start!188046 (and (inv!27799 v!6352) e!1197234)))

(declare-fun separatorToken!84 () Token!6968)

(declare-fun e!1197240 () Bool)

(declare-fun inv!27800 (Token!6968) Bool)

(assert (=> start!188046 (and (inv!27800 separatorToken!84) e!1197240)))

(declare-fun e!1197233 () Bool)

(declare-fun e!1197238 () Bool)

(declare-fun b!1875730 () Bool)

(declare-fun tp!534713 () Bool)

(declare-fun inv!27794 (String!24170) Bool)

(declare-fun inv!27801 (TokenValueInjection!7272) Bool)

(assert (=> b!1875730 (= e!1197233 (and tp!534713 (inv!27794 (tag!4122 (rule!5901 separatorToken!84))) (inv!27801 (transformation!3708 (rule!5901 separatorToken!84))) e!1197238))))

(declare-fun b!1875731 () Bool)

(declare-fun e!1197232 () Bool)

(assert (=> b!1875731 (= e!1197235 e!1197232)))

(declare-fun res!838833 () Bool)

(assert (=> b!1875731 (=> (not res!838833) (not e!1197232))))

(declare-fun lt!721064 () Int)

(assert (=> b!1875731 (= res!838833 (and (<= from!845 lt!721064) (isSeparator!3708 (rule!5901 separatorToken!84)) (< from!845 lt!721064)))))

(declare-fun size!16586 (BalanceConc!13708) Int)

(assert (=> b!1875731 (= lt!721064 (size!16586 v!6352))))

(declare-fun b!1875732 () Bool)

(declare-fun tp!534710 () Bool)

(declare-fun inv!27802 (Conc!6946) Bool)

(assert (=> b!1875732 (= e!1197234 (and (inv!27802 (c!305626 v!6352)) tp!534710))))

(assert (=> b!1875733 (= e!1197238 (and tp!534714 tp!534715))))

(declare-fun b!1875734 () Bool)

(declare-fun e!1197236 () Bool)

(assert (=> b!1875734 (= e!1197232 (not e!1197236))))

(declare-fun res!838832 () Bool)

(assert (=> b!1875734 (=> res!838832 e!1197236)))

(declare-fun lt!721061 () List!20993)

(declare-fun lt!721059 () BalanceConc!13708)

(declare-fun list!8526 (BalanceConc!13708) List!20993)

(declare-fun withSeparatorTokenInner!12 (LexerInterface!3330 BalanceConc!13708 Token!6968 Int BalanceConc!13708) BalanceConc!13708)

(declare-fun ++!5677 (List!20993 List!20993) List!20993)

(assert (=> b!1875734 (= res!838832 (not (= (list!8526 (withSeparatorTokenInner!12 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!721059)) (++!5677 (list!8526 lt!721059) lt!721061))))))

(declare-fun lt!721069 () BalanceConc!13708)

(declare-fun ++!5678 (BalanceConc!13708 BalanceConc!13708) BalanceConc!13708)

(declare-fun singletonSeq!1823 (Token!6968) BalanceConc!13708)

(assert (=> b!1875734 (= lt!721059 (++!5678 acc!408 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84))))))

(declare-fun lt!721067 () Token!6968)

(assert (=> b!1875734 (= lt!721069 (singletonSeq!1823 lt!721067))))

(declare-fun lt!721060 () List!20993)

(declare-fun lt!721062 () List!20993)

(assert (=> b!1875734 (= (++!5677 (++!5677 lt!721060 lt!721062) lt!721061) (++!5677 lt!721060 (++!5677 lt!721062 lt!721061)))))

(declare-datatypes ((Unit!35436 0))(
  ( (Unit!35437) )
))
(declare-fun lt!721068 () Unit!35436)

(declare-fun lemmaConcatAssociativity!1121 (List!20993 List!20993 List!20993) Unit!35436)

(assert (=> b!1875734 (= lt!721068 (lemmaConcatAssociativity!1121 lt!721060 lt!721062 lt!721061))))

(declare-fun lt!721071 () List!20993)

(declare-fun withSeparatorTokenList!116 (LexerInterface!3330 List!20993 Token!6968) List!20993)

(assert (=> b!1875734 (= lt!721061 (withSeparatorTokenList!116 thiss!13718 lt!721071 separatorToken!84))))

(assert (=> b!1875734 (= lt!721062 (Cons!20911 lt!721067 (Cons!20911 separatorToken!84 Nil!20911)))))

(declare-fun apply!5518 (BalanceConc!13708 Int) Token!6968)

(assert (=> b!1875734 (= lt!721067 (apply!5518 v!6352 from!845))))

(assert (=> b!1875734 (= lt!721060 (list!8526 acc!408))))

(declare-fun lt!721070 () List!20993)

(declare-fun tail!2908 (List!20993) List!20993)

(assert (=> b!1875734 (= (tail!2908 lt!721070) lt!721071)))

(declare-fun lt!721066 () List!20993)

(declare-fun drop!1028 (List!20993 Int) List!20993)

(assert (=> b!1875734 (= lt!721071 (drop!1028 lt!721066 (+ 1 from!845)))))

(declare-fun lt!721065 () Unit!35436)

(declare-fun lemmaDropTail!646 (List!20993 Int) Unit!35436)

(assert (=> b!1875734 (= lt!721065 (lemmaDropTail!646 lt!721066 from!845))))

(declare-fun head!4379 (List!20993) Token!6968)

(declare-fun apply!5519 (List!20993 Int) Token!6968)

(assert (=> b!1875734 (= (head!4379 lt!721070) (apply!5519 lt!721066 from!845))))

(assert (=> b!1875734 (= lt!721070 (drop!1028 lt!721066 from!845))))

(declare-fun lt!721063 () Unit!35436)

(declare-fun lemmaDropApply!666 (List!20993 Int) Unit!35436)

(assert (=> b!1875734 (= lt!721063 (lemmaDropApply!666 lt!721066 from!845))))

(assert (=> b!1875734 (= lt!721066 (list!8526 v!6352))))

(declare-fun b!1875735 () Bool)

(declare-fun tp!534711 () Bool)

(assert (=> b!1875735 (= e!1197237 (and (inv!27802 (c!305626 acc!408)) tp!534711))))

(declare-fun b!1875736 () Bool)

(assert (=> b!1875736 (= e!1197236 (= (list!8526 (++!5678 acc!408 lt!721069)) (++!5677 lt!721060 (Cons!20911 lt!721067 Nil!20911))))))

(declare-fun b!1875737 () Bool)

(declare-fun tp!534712 () Bool)

(declare-fun inv!21 (TokenValue!3844) Bool)

(assert (=> b!1875737 (= e!1197240 (and (inv!21 (value!117143 separatorToken!84)) e!1197233 tp!534712))))

(assert (= (and start!188046 res!838834) b!1875731))

(assert (= (and b!1875731 res!838833) b!1875734))

(assert (= (and b!1875734 (not res!838832)) b!1875736))

(assert (= start!188046 b!1875735))

(assert (= start!188046 b!1875732))

(assert (= b!1875730 b!1875733))

(assert (= b!1875737 b!1875730))

(assert (= start!188046 b!1875737))

(declare-fun m!2301611 () Bool)

(assert (=> b!1875731 m!2301611))

(declare-fun m!2301613 () Bool)

(assert (=> b!1875737 m!2301613))

(declare-fun m!2301615 () Bool)

(assert (=> b!1875732 m!2301615))

(declare-fun m!2301617 () Bool)

(assert (=> b!1875735 m!2301617))

(declare-fun m!2301619 () Bool)

(assert (=> b!1875734 m!2301619))

(declare-fun m!2301621 () Bool)

(assert (=> b!1875734 m!2301621))

(declare-fun m!2301623 () Bool)

(assert (=> b!1875734 m!2301623))

(assert (=> b!1875734 m!2301621))

(declare-fun m!2301625 () Bool)

(assert (=> b!1875734 m!2301625))

(declare-fun m!2301627 () Bool)

(assert (=> b!1875734 m!2301627))

(declare-fun m!2301629 () Bool)

(assert (=> b!1875734 m!2301629))

(declare-fun m!2301631 () Bool)

(assert (=> b!1875734 m!2301631))

(declare-fun m!2301633 () Bool)

(assert (=> b!1875734 m!2301633))

(declare-fun m!2301635 () Bool)

(assert (=> b!1875734 m!2301635))

(assert (=> b!1875734 m!2301619))

(declare-fun m!2301637 () Bool)

(assert (=> b!1875734 m!2301637))

(declare-fun m!2301639 () Bool)

(assert (=> b!1875734 m!2301639))

(declare-fun m!2301641 () Bool)

(assert (=> b!1875734 m!2301641))

(declare-fun m!2301643 () Bool)

(assert (=> b!1875734 m!2301643))

(declare-fun m!2301645 () Bool)

(assert (=> b!1875734 m!2301645))

(declare-fun m!2301647 () Bool)

(assert (=> b!1875734 m!2301647))

(declare-fun m!2301649 () Bool)

(assert (=> b!1875734 m!2301649))

(declare-fun m!2301651 () Bool)

(assert (=> b!1875734 m!2301651))

(assert (=> b!1875734 m!2301637))

(declare-fun m!2301653 () Bool)

(assert (=> b!1875734 m!2301653))

(declare-fun m!2301655 () Bool)

(assert (=> b!1875734 m!2301655))

(declare-fun m!2301657 () Bool)

(assert (=> b!1875734 m!2301657))

(declare-fun m!2301659 () Bool)

(assert (=> b!1875734 m!2301659))

(assert (=> b!1875734 m!2301629))

(assert (=> b!1875734 m!2301657))

(declare-fun m!2301661 () Bool)

(assert (=> b!1875734 m!2301661))

(assert (=> b!1875734 m!2301635))

(declare-fun m!2301663 () Bool)

(assert (=> b!1875734 m!2301663))

(declare-fun m!2301665 () Bool)

(assert (=> b!1875734 m!2301665))

(declare-fun m!2301667 () Bool)

(assert (=> start!188046 m!2301667))

(declare-fun m!2301669 () Bool)

(assert (=> start!188046 m!2301669))

(declare-fun m!2301671 () Bool)

(assert (=> start!188046 m!2301671))

(declare-fun m!2301673 () Bool)

(assert (=> b!1875730 m!2301673))

(declare-fun m!2301675 () Bool)

(assert (=> b!1875730 m!2301675))

(declare-fun m!2301677 () Bool)

(assert (=> b!1875736 m!2301677))

(assert (=> b!1875736 m!2301677))

(declare-fun m!2301679 () Bool)

(assert (=> b!1875736 m!2301679))

(declare-fun m!2301681 () Bool)

(assert (=> b!1875736 m!2301681))

(check-sat (not b!1875730) b_and!144491 (not b!1875737) (not b_next!52905) (not start!188046) b_and!144493 (not b!1875736) (not b!1875731) (not b_next!52907) (not b!1875735) (not b!1875734) (not b!1875732))
(check-sat b_and!144493 b_and!144491 (not b_next!52905) (not b_next!52907))
(get-model)

(declare-fun d!572955 () Bool)

(declare-fun list!8527 (Conc!6946) List!20993)

(assert (=> d!572955 (= (list!8526 (++!5678 acc!408 lt!721069)) (list!8527 (c!305626 (++!5678 acc!408 lt!721069))))))

(declare-fun bs!412200 () Bool)

(assert (= bs!412200 d!572955))

(declare-fun m!2301731 () Bool)

(assert (=> bs!412200 m!2301731))

(assert (=> b!1875736 d!572955))

(declare-fun b!1875794 () Bool)

(declare-fun res!838862 () Bool)

(declare-fun e!1197271 () Bool)

(assert (=> b!1875794 (=> (not res!838862) (not e!1197271))))

(declare-fun isBalanced!2198 (Conc!6946) Bool)

(declare-fun ++!5679 (Conc!6946 Conc!6946) Conc!6946)

(assert (=> b!1875794 (= res!838862 (isBalanced!2198 (++!5679 (c!305626 acc!408) (c!305626 lt!721069))))))

(declare-fun b!1875795 () Bool)

(declare-fun res!838864 () Bool)

(assert (=> b!1875795 (=> (not res!838864) (not e!1197271))))

(declare-fun height!1084 (Conc!6946) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1875795 (= res!838864 (<= (height!1084 (++!5679 (c!305626 acc!408) (c!305626 lt!721069))) (+ (max!0 (height!1084 (c!305626 acc!408)) (height!1084 (c!305626 lt!721069))) 1)))))

(declare-fun b!1875797 () Bool)

(declare-fun lt!721116 () BalanceConc!13708)

(assert (=> b!1875797 (= e!1197271 (= (list!8526 lt!721116) (++!5677 (list!8526 acc!408) (list!8526 lt!721069))))))

(declare-fun d!572957 () Bool)

(assert (=> d!572957 e!1197271))

(declare-fun res!838865 () Bool)

(assert (=> d!572957 (=> (not res!838865) (not e!1197271))))

(declare-fun appendAssocInst!515 (Conc!6946 Conc!6946) Bool)

(assert (=> d!572957 (= res!838865 (appendAssocInst!515 (c!305626 acc!408) (c!305626 lt!721069)))))

(assert (=> d!572957 (= lt!721116 (BalanceConc!13709 (++!5679 (c!305626 acc!408) (c!305626 lt!721069))))))

(assert (=> d!572957 (= (++!5678 acc!408 lt!721069) lt!721116)))

(declare-fun b!1875796 () Bool)

(declare-fun res!838863 () Bool)

(assert (=> b!1875796 (=> (not res!838863) (not e!1197271))))

(assert (=> b!1875796 (= res!838863 (>= (height!1084 (++!5679 (c!305626 acc!408) (c!305626 lt!721069))) (max!0 (height!1084 (c!305626 acc!408)) (height!1084 (c!305626 lt!721069)))))))

(assert (= (and d!572957 res!838865) b!1875794))

(assert (= (and b!1875794 res!838862) b!1875795))

(assert (= (and b!1875795 res!838864) b!1875796))

(assert (= (and b!1875796 res!838863) b!1875797))

(declare-fun m!2301757 () Bool)

(assert (=> d!572957 m!2301757))

(declare-fun m!2301759 () Bool)

(assert (=> d!572957 m!2301759))

(assert (=> b!1875795 m!2301759))

(declare-fun m!2301761 () Bool)

(assert (=> b!1875795 m!2301761))

(assert (=> b!1875795 m!2301759))

(declare-fun m!2301763 () Bool)

(assert (=> b!1875795 m!2301763))

(declare-fun m!2301765 () Bool)

(assert (=> b!1875795 m!2301765))

(assert (=> b!1875795 m!2301763))

(assert (=> b!1875795 m!2301765))

(declare-fun m!2301767 () Bool)

(assert (=> b!1875795 m!2301767))

(assert (=> b!1875794 m!2301759))

(assert (=> b!1875794 m!2301759))

(declare-fun m!2301769 () Bool)

(assert (=> b!1875794 m!2301769))

(declare-fun m!2301771 () Bool)

(assert (=> b!1875797 m!2301771))

(assert (=> b!1875797 m!2301643))

(declare-fun m!2301773 () Bool)

(assert (=> b!1875797 m!2301773))

(assert (=> b!1875797 m!2301643))

(assert (=> b!1875797 m!2301773))

(declare-fun m!2301775 () Bool)

(assert (=> b!1875797 m!2301775))

(assert (=> b!1875796 m!2301759))

(assert (=> b!1875796 m!2301761))

(assert (=> b!1875796 m!2301759))

(assert (=> b!1875796 m!2301763))

(assert (=> b!1875796 m!2301765))

(assert (=> b!1875796 m!2301763))

(assert (=> b!1875796 m!2301765))

(assert (=> b!1875796 m!2301767))

(assert (=> b!1875736 d!572957))

(declare-fun b!1875824 () Bool)

(declare-fun e!1197286 () List!20993)

(assert (=> b!1875824 (= e!1197286 (Cons!20911 (h!26312 lt!721060) (++!5677 (t!173216 lt!721060) (Cons!20911 lt!721067 Nil!20911))))))

(declare-fun b!1875825 () Bool)

(declare-fun res!838878 () Bool)

(declare-fun e!1197287 () Bool)

(assert (=> b!1875825 (=> (not res!838878) (not e!1197287))))

(declare-fun lt!721124 () List!20993)

(declare-fun size!16588 (List!20993) Int)

(assert (=> b!1875825 (= res!838878 (= (size!16588 lt!721124) (+ (size!16588 lt!721060) (size!16588 (Cons!20911 lt!721067 Nil!20911)))))))

(declare-fun d!572963 () Bool)

(assert (=> d!572963 e!1197287))

(declare-fun res!838877 () Bool)

(assert (=> d!572963 (=> (not res!838877) (not e!1197287))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3109 (List!20993) (InoxSet Token!6968))

(assert (=> d!572963 (= res!838877 (= (content!3109 lt!721124) ((_ map or) (content!3109 lt!721060) (content!3109 (Cons!20911 lt!721067 Nil!20911)))))))

(assert (=> d!572963 (= lt!721124 e!1197286)))

(declare-fun c!305655 () Bool)

(assert (=> d!572963 (= c!305655 ((_ is Nil!20911) lt!721060))))

(assert (=> d!572963 (= (++!5677 lt!721060 (Cons!20911 lt!721067 Nil!20911)) lt!721124)))

(declare-fun b!1875823 () Bool)

(assert (=> b!1875823 (= e!1197286 (Cons!20911 lt!721067 Nil!20911))))

(declare-fun b!1875826 () Bool)

(assert (=> b!1875826 (= e!1197287 (or (not (= (Cons!20911 lt!721067 Nil!20911) Nil!20911)) (= lt!721124 lt!721060)))))

(assert (= (and d!572963 c!305655) b!1875823))

(assert (= (and d!572963 (not c!305655)) b!1875824))

(assert (= (and d!572963 res!838877) b!1875825))

(assert (= (and b!1875825 res!838878) b!1875826))

(declare-fun m!2301813 () Bool)

(assert (=> b!1875824 m!2301813))

(declare-fun m!2301815 () Bool)

(assert (=> b!1875825 m!2301815))

(declare-fun m!2301817 () Bool)

(assert (=> b!1875825 m!2301817))

(declare-fun m!2301819 () Bool)

(assert (=> b!1875825 m!2301819))

(declare-fun m!2301821 () Bool)

(assert (=> d!572963 m!2301821))

(declare-fun m!2301823 () Bool)

(assert (=> d!572963 m!2301823))

(declare-fun m!2301825 () Bool)

(assert (=> d!572963 m!2301825))

(assert (=> b!1875736 d!572963))

(declare-fun d!572977 () Bool)

(declare-fun lt!721130 () Int)

(assert (=> d!572977 (= lt!721130 (size!16588 (list!8526 v!6352)))))

(declare-fun size!16589 (Conc!6946) Int)

(assert (=> d!572977 (= lt!721130 (size!16589 (c!305626 v!6352)))))

(assert (=> d!572977 (= (size!16586 v!6352) lt!721130)))

(declare-fun bs!412204 () Bool)

(assert (= bs!412204 d!572977))

(assert (=> bs!412204 m!2301627))

(assert (=> bs!412204 m!2301627))

(declare-fun m!2301835 () Bool)

(assert (=> bs!412204 m!2301835))

(declare-fun m!2301837 () Bool)

(assert (=> bs!412204 m!2301837))

(assert (=> b!1875731 d!572977))

(declare-fun d!572983 () Bool)

(assert (=> d!572983 (= (inv!27799 acc!408) (isBalanced!2198 (c!305626 acc!408)))))

(declare-fun bs!412205 () Bool)

(assert (= bs!412205 d!572983))

(declare-fun m!2301839 () Bool)

(assert (=> bs!412205 m!2301839))

(assert (=> start!188046 d!572983))

(declare-fun d!572985 () Bool)

(assert (=> d!572985 (= (inv!27799 v!6352) (isBalanced!2198 (c!305626 v!6352)))))

(declare-fun bs!412206 () Bool)

(assert (= bs!412206 d!572985))

(declare-fun m!2301841 () Bool)

(assert (=> bs!412206 m!2301841))

(assert (=> start!188046 d!572985))

(declare-fun d!572987 () Bool)

(declare-fun res!838886 () Bool)

(declare-fun e!1197293 () Bool)

(assert (=> d!572987 (=> (not res!838886) (not e!1197293))))

(declare-fun isEmpty!12971 (List!20992) Bool)

(assert (=> d!572987 (= res!838886 (not (isEmpty!12971 (originalCharacters!4515 separatorToken!84))))))

(assert (=> d!572987 (= (inv!27800 separatorToken!84) e!1197293)))

(declare-fun b!1875834 () Bool)

(declare-fun res!838887 () Bool)

(assert (=> b!1875834 (=> (not res!838887) (not e!1197293))))

(declare-fun list!8529 (BalanceConc!13706) List!20992)

(declare-fun dynLambda!10227 (Int TokenValue!3844) BalanceConc!13706)

(assert (=> b!1875834 (= res!838887 (= (originalCharacters!4515 separatorToken!84) (list!8529 (dynLambda!10227 (toChars!5164 (transformation!3708 (rule!5901 separatorToken!84))) (value!117143 separatorToken!84)))))))

(declare-fun b!1875835 () Bool)

(declare-fun size!16590 (List!20992) Int)

(assert (=> b!1875835 (= e!1197293 (= (size!16585 separatorToken!84) (size!16590 (originalCharacters!4515 separatorToken!84))))))

(assert (= (and d!572987 res!838886) b!1875834))

(assert (= (and b!1875834 res!838887) b!1875835))

(declare-fun b_lambda!61633 () Bool)

(assert (=> (not b_lambda!61633) (not b!1875834)))

(declare-fun t!173219 () Bool)

(declare-fun tb!112949 () Bool)

(assert (=> (and b!1875733 (= (toChars!5164 (transformation!3708 (rule!5901 separatorToken!84))) (toChars!5164 (transformation!3708 (rule!5901 separatorToken!84)))) t!173219) tb!112949))

(declare-fun b!1875840 () Bool)

(declare-fun e!1197296 () Bool)

(declare-fun tp!534718 () Bool)

(declare-fun inv!27803 (Conc!6945) Bool)

(assert (=> b!1875840 (= e!1197296 (and (inv!27803 (c!305625 (dynLambda!10227 (toChars!5164 (transformation!3708 (rule!5901 separatorToken!84))) (value!117143 separatorToken!84)))) tp!534718))))

(declare-fun result!136714 () Bool)

(declare-fun inv!27804 (BalanceConc!13706) Bool)

(assert (=> tb!112949 (= result!136714 (and (inv!27804 (dynLambda!10227 (toChars!5164 (transformation!3708 (rule!5901 separatorToken!84))) (value!117143 separatorToken!84))) e!1197296))))

(assert (= tb!112949 b!1875840))

(declare-fun m!2301843 () Bool)

(assert (=> b!1875840 m!2301843))

(declare-fun m!2301845 () Bool)

(assert (=> tb!112949 m!2301845))

(assert (=> b!1875834 t!173219))

(declare-fun b_and!144495 () Bool)

(assert (= b_and!144493 (and (=> t!173219 result!136714) b_and!144495)))

(declare-fun m!2301847 () Bool)

(assert (=> d!572987 m!2301847))

(declare-fun m!2301849 () Bool)

(assert (=> b!1875834 m!2301849))

(assert (=> b!1875834 m!2301849))

(declare-fun m!2301851 () Bool)

(assert (=> b!1875834 m!2301851))

(declare-fun m!2301853 () Bool)

(assert (=> b!1875835 m!2301853))

(assert (=> start!188046 d!572987))

(declare-fun d!572989 () Bool)

(assert (=> d!572989 (= (inv!27794 (tag!4122 (rule!5901 separatorToken!84))) (= (mod (str.len (value!117142 (tag!4122 (rule!5901 separatorToken!84)))) 2) 0))))

(assert (=> b!1875730 d!572989))

(declare-fun d!572991 () Bool)

(declare-fun res!838890 () Bool)

(declare-fun e!1197299 () Bool)

(assert (=> d!572991 (=> (not res!838890) (not e!1197299))))

(declare-fun semiInverseModEq!1511 (Int Int) Bool)

(assert (=> d!572991 (= res!838890 (semiInverseModEq!1511 (toChars!5164 (transformation!3708 (rule!5901 separatorToken!84))) (toValue!5305 (transformation!3708 (rule!5901 separatorToken!84)))))))

(assert (=> d!572991 (= (inv!27801 (transformation!3708 (rule!5901 separatorToken!84))) e!1197299)))

(declare-fun b!1875843 () Bool)

(declare-fun equivClasses!1438 (Int Int) Bool)

(assert (=> b!1875843 (= e!1197299 (equivClasses!1438 (toChars!5164 (transformation!3708 (rule!5901 separatorToken!84))) (toValue!5305 (transformation!3708 (rule!5901 separatorToken!84)))))))

(assert (= (and d!572991 res!838890) b!1875843))

(declare-fun m!2301855 () Bool)

(assert (=> d!572991 m!2301855))

(declare-fun m!2301857 () Bool)

(assert (=> b!1875843 m!2301857))

(assert (=> b!1875730 d!572991))

(declare-fun d!572993 () Bool)

(declare-fun c!305658 () Bool)

(assert (=> d!572993 (= c!305658 ((_ is Node!6946) (c!305626 acc!408)))))

(declare-fun e!1197304 () Bool)

(assert (=> d!572993 (= (inv!27802 (c!305626 acc!408)) e!1197304)))

(declare-fun b!1875850 () Bool)

(declare-fun inv!27805 (Conc!6946) Bool)

(assert (=> b!1875850 (= e!1197304 (inv!27805 (c!305626 acc!408)))))

(declare-fun b!1875851 () Bool)

(declare-fun e!1197305 () Bool)

(assert (=> b!1875851 (= e!1197304 e!1197305)))

(declare-fun res!838893 () Bool)

(assert (=> b!1875851 (= res!838893 (not ((_ is Leaf!10221) (c!305626 acc!408))))))

(assert (=> b!1875851 (=> res!838893 e!1197305)))

(declare-fun b!1875852 () Bool)

(declare-fun inv!27806 (Conc!6946) Bool)

(assert (=> b!1875852 (= e!1197305 (inv!27806 (c!305626 acc!408)))))

(assert (= (and d!572993 c!305658) b!1875850))

(assert (= (and d!572993 (not c!305658)) b!1875851))

(assert (= (and b!1875851 (not res!838893)) b!1875852))

(declare-fun m!2301859 () Bool)

(assert (=> b!1875850 m!2301859))

(declare-fun m!2301861 () Bool)

(assert (=> b!1875852 m!2301861))

(assert (=> b!1875735 d!572993))

(declare-fun b!1875853 () Bool)

(declare-fun res!838894 () Bool)

(declare-fun e!1197306 () Bool)

(assert (=> b!1875853 (=> (not res!838894) (not e!1197306))))

(assert (=> b!1875853 (= res!838894 (isBalanced!2198 (++!5679 (c!305626 acc!408) (c!305626 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84))))))))

(declare-fun b!1875854 () Bool)

(declare-fun res!838896 () Bool)

(assert (=> b!1875854 (=> (not res!838896) (not e!1197306))))

(assert (=> b!1875854 (= res!838896 (<= (height!1084 (++!5679 (c!305626 acc!408) (c!305626 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84))))) (+ (max!0 (height!1084 (c!305626 acc!408)) (height!1084 (c!305626 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84))))) 1)))))

(declare-fun b!1875856 () Bool)

(declare-fun lt!721131 () BalanceConc!13708)

(assert (=> b!1875856 (= e!1197306 (= (list!8526 lt!721131) (++!5677 (list!8526 acc!408) (list!8526 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84))))))))

(declare-fun d!572995 () Bool)

(assert (=> d!572995 e!1197306))

(declare-fun res!838897 () Bool)

(assert (=> d!572995 (=> (not res!838897) (not e!1197306))))

(assert (=> d!572995 (= res!838897 (appendAssocInst!515 (c!305626 acc!408) (c!305626 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84)))))))

(assert (=> d!572995 (= lt!721131 (BalanceConc!13709 (++!5679 (c!305626 acc!408) (c!305626 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84))))))))

(assert (=> d!572995 (= (++!5678 acc!408 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84))) lt!721131)))

(declare-fun b!1875855 () Bool)

(declare-fun res!838895 () Bool)

(assert (=> b!1875855 (=> (not res!838895) (not e!1197306))))

(assert (=> b!1875855 (= res!838895 (>= (height!1084 (++!5679 (c!305626 acc!408) (c!305626 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84))))) (max!0 (height!1084 (c!305626 acc!408)) (height!1084 (c!305626 (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84)))))))))

(assert (= (and d!572995 res!838897) b!1875853))

(assert (= (and b!1875853 res!838894) b!1875854))

(assert (= (and b!1875854 res!838896) b!1875855))

(assert (= (and b!1875855 res!838895) b!1875856))

(declare-fun m!2301863 () Bool)

(assert (=> d!572995 m!2301863))

(declare-fun m!2301865 () Bool)

(assert (=> d!572995 m!2301865))

(assert (=> b!1875854 m!2301865))

(declare-fun m!2301867 () Bool)

(assert (=> b!1875854 m!2301867))

(assert (=> b!1875854 m!2301865))

(assert (=> b!1875854 m!2301763))

(declare-fun m!2301869 () Bool)

(assert (=> b!1875854 m!2301869))

(assert (=> b!1875854 m!2301763))

(assert (=> b!1875854 m!2301869))

(declare-fun m!2301871 () Bool)

(assert (=> b!1875854 m!2301871))

(assert (=> b!1875853 m!2301865))

(assert (=> b!1875853 m!2301865))

(declare-fun m!2301873 () Bool)

(assert (=> b!1875853 m!2301873))

(declare-fun m!2301875 () Bool)

(assert (=> b!1875856 m!2301875))

(assert (=> b!1875856 m!2301643))

(assert (=> b!1875856 m!2301637))

(declare-fun m!2301877 () Bool)

(assert (=> b!1875856 m!2301877))

(assert (=> b!1875856 m!2301643))

(assert (=> b!1875856 m!2301877))

(declare-fun m!2301879 () Bool)

(assert (=> b!1875856 m!2301879))

(assert (=> b!1875855 m!2301865))

(assert (=> b!1875855 m!2301867))

(assert (=> b!1875855 m!2301865))

(assert (=> b!1875855 m!2301763))

(assert (=> b!1875855 m!2301869))

(assert (=> b!1875855 m!2301763))

(assert (=> b!1875855 m!2301869))

(assert (=> b!1875855 m!2301871))

(assert (=> b!1875734 d!572995))

(declare-fun b!1875873 () Bool)

(declare-fun res!838906 () Bool)

(declare-fun e!1197317 () Bool)

(assert (=> b!1875873 (=> (not res!838906) (not e!1197317))))

(assert (=> b!1875873 (= res!838906 (isBalanced!2198 (++!5679 (c!305626 lt!721069) (c!305626 (singletonSeq!1823 separatorToken!84)))))))

(declare-fun b!1875874 () Bool)

(declare-fun res!838908 () Bool)

(assert (=> b!1875874 (=> (not res!838908) (not e!1197317))))

(assert (=> b!1875874 (= res!838908 (<= (height!1084 (++!5679 (c!305626 lt!721069) (c!305626 (singletonSeq!1823 separatorToken!84)))) (+ (max!0 (height!1084 (c!305626 lt!721069)) (height!1084 (c!305626 (singletonSeq!1823 separatorToken!84)))) 1)))))

(declare-fun b!1875876 () Bool)

(declare-fun lt!721136 () BalanceConc!13708)

(assert (=> b!1875876 (= e!1197317 (= (list!8526 lt!721136) (++!5677 (list!8526 lt!721069) (list!8526 (singletonSeq!1823 separatorToken!84)))))))

(declare-fun d!572997 () Bool)

(assert (=> d!572997 e!1197317))

(declare-fun res!838909 () Bool)

(assert (=> d!572997 (=> (not res!838909) (not e!1197317))))

(assert (=> d!572997 (= res!838909 (appendAssocInst!515 (c!305626 lt!721069) (c!305626 (singletonSeq!1823 separatorToken!84))))))

(assert (=> d!572997 (= lt!721136 (BalanceConc!13709 (++!5679 (c!305626 lt!721069) (c!305626 (singletonSeq!1823 separatorToken!84)))))))

(assert (=> d!572997 (= (++!5678 lt!721069 (singletonSeq!1823 separatorToken!84)) lt!721136)))

(declare-fun b!1875875 () Bool)

(declare-fun res!838907 () Bool)

(assert (=> b!1875875 (=> (not res!838907) (not e!1197317))))

(assert (=> b!1875875 (= res!838907 (>= (height!1084 (++!5679 (c!305626 lt!721069) (c!305626 (singletonSeq!1823 separatorToken!84)))) (max!0 (height!1084 (c!305626 lt!721069)) (height!1084 (c!305626 (singletonSeq!1823 separatorToken!84))))))))

(assert (= (and d!572997 res!838909) b!1875873))

(assert (= (and b!1875873 res!838906) b!1875874))

(assert (= (and b!1875874 res!838908) b!1875875))

(assert (= (and b!1875875 res!838907) b!1875876))

(declare-fun m!2301881 () Bool)

(assert (=> d!572997 m!2301881))

(declare-fun m!2301883 () Bool)

(assert (=> d!572997 m!2301883))

(assert (=> b!1875874 m!2301883))

(declare-fun m!2301885 () Bool)

(assert (=> b!1875874 m!2301885))

(assert (=> b!1875874 m!2301883))

(assert (=> b!1875874 m!2301765))

(declare-fun m!2301887 () Bool)

(assert (=> b!1875874 m!2301887))

(assert (=> b!1875874 m!2301765))

(assert (=> b!1875874 m!2301887))

(declare-fun m!2301889 () Bool)

(assert (=> b!1875874 m!2301889))

(assert (=> b!1875873 m!2301883))

(assert (=> b!1875873 m!2301883))

(declare-fun m!2301891 () Bool)

(assert (=> b!1875873 m!2301891))

(declare-fun m!2301893 () Bool)

(assert (=> b!1875876 m!2301893))

(assert (=> b!1875876 m!2301773))

(assert (=> b!1875876 m!2301619))

(declare-fun m!2301895 () Bool)

(assert (=> b!1875876 m!2301895))

(assert (=> b!1875876 m!2301773))

(assert (=> b!1875876 m!2301895))

(declare-fun m!2301897 () Bool)

(assert (=> b!1875876 m!2301897))

(assert (=> b!1875875 m!2301883))

(assert (=> b!1875875 m!2301885))

(assert (=> b!1875875 m!2301883))

(assert (=> b!1875875 m!2301765))

(assert (=> b!1875875 m!2301887))

(assert (=> b!1875875 m!2301765))

(assert (=> b!1875875 m!2301887))

(assert (=> b!1875875 m!2301889))

(assert (=> b!1875734 d!572997))

(declare-fun d!572999 () Bool)

(assert (=> d!572999 (= (head!4379 (drop!1028 lt!721066 from!845)) (apply!5519 lt!721066 from!845))))

(declare-fun lt!721151 () Unit!35436)

(declare-fun choose!11775 (List!20993 Int) Unit!35436)

(assert (=> d!572999 (= lt!721151 (choose!11775 lt!721066 from!845))))

(declare-fun e!1197322 () Bool)

(assert (=> d!572999 e!1197322))

(declare-fun res!838912 () Bool)

(assert (=> d!572999 (=> (not res!838912) (not e!1197322))))

(assert (=> d!572999 (= res!838912 (>= from!845 0))))

(assert (=> d!572999 (= (lemmaDropApply!666 lt!721066 from!845) lt!721151)))

(declare-fun b!1875883 () Bool)

(assert (=> b!1875883 (= e!1197322 (< from!845 (size!16588 lt!721066)))))

(assert (= (and d!572999 res!838912) b!1875883))

(assert (=> d!572999 m!2301645))

(assert (=> d!572999 m!2301645))

(declare-fun m!2301899 () Bool)

(assert (=> d!572999 m!2301899))

(assert (=> d!572999 m!2301633))

(declare-fun m!2301901 () Bool)

(assert (=> d!572999 m!2301901))

(declare-fun m!2301903 () Bool)

(assert (=> b!1875883 m!2301903))

(assert (=> b!1875734 d!572999))

(declare-fun d!573001 () Bool)

(assert (=> d!573001 (= (list!8526 (withSeparatorTokenInner!12 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!721059)) (list!8527 (c!305626 (withSeparatorTokenInner!12 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!721059))))))

(declare-fun bs!412207 () Bool)

(assert (= bs!412207 d!573001))

(declare-fun m!2301905 () Bool)

(assert (=> bs!412207 m!2301905))

(assert (=> b!1875734 d!573001))

(declare-fun b!1875885 () Bool)

(declare-fun e!1197323 () List!20993)

(assert (=> b!1875885 (= e!1197323 (Cons!20911 (h!26312 (list!8526 lt!721059)) (++!5677 (t!173216 (list!8526 lt!721059)) lt!721061)))))

(declare-fun b!1875886 () Bool)

(declare-fun res!838914 () Bool)

(declare-fun e!1197324 () Bool)

(assert (=> b!1875886 (=> (not res!838914) (not e!1197324))))

(declare-fun lt!721152 () List!20993)

(assert (=> b!1875886 (= res!838914 (= (size!16588 lt!721152) (+ (size!16588 (list!8526 lt!721059)) (size!16588 lt!721061))))))

(declare-fun d!573003 () Bool)

(assert (=> d!573003 e!1197324))

(declare-fun res!838913 () Bool)

(assert (=> d!573003 (=> (not res!838913) (not e!1197324))))

(assert (=> d!573003 (= res!838913 (= (content!3109 lt!721152) ((_ map or) (content!3109 (list!8526 lt!721059)) (content!3109 lt!721061))))))

(assert (=> d!573003 (= lt!721152 e!1197323)))

(declare-fun c!305665 () Bool)

(assert (=> d!573003 (= c!305665 ((_ is Nil!20911) (list!8526 lt!721059)))))

(assert (=> d!573003 (= (++!5677 (list!8526 lt!721059) lt!721061) lt!721152)))

(declare-fun b!1875884 () Bool)

(assert (=> b!1875884 (= e!1197323 lt!721061)))

(declare-fun b!1875887 () Bool)

(assert (=> b!1875887 (= e!1197324 (or (not (= lt!721061 Nil!20911)) (= lt!721152 (list!8526 lt!721059))))))

(assert (= (and d!573003 c!305665) b!1875884))

(assert (= (and d!573003 (not c!305665)) b!1875885))

(assert (= (and d!573003 res!838913) b!1875886))

(assert (= (and b!1875886 res!838914) b!1875887))

(declare-fun m!2301907 () Bool)

(assert (=> b!1875885 m!2301907))

(declare-fun m!2301909 () Bool)

(assert (=> b!1875886 m!2301909))

(assert (=> b!1875886 m!2301629))

(declare-fun m!2301911 () Bool)

(assert (=> b!1875886 m!2301911))

(declare-fun m!2301913 () Bool)

(assert (=> b!1875886 m!2301913))

(declare-fun m!2301915 () Bool)

(assert (=> d!573003 m!2301915))

(assert (=> d!573003 m!2301629))

(declare-fun m!2301917 () Bool)

(assert (=> d!573003 m!2301917))

(declare-fun m!2301919 () Bool)

(assert (=> d!573003 m!2301919))

(assert (=> b!1875734 d!573003))

(declare-fun d!573005 () Bool)

(assert (=> d!573005 (= (list!8526 v!6352) (list!8527 (c!305626 v!6352)))))

(declare-fun bs!412208 () Bool)

(assert (= bs!412208 d!573005))

(declare-fun m!2301921 () Bool)

(assert (=> bs!412208 m!2301921))

(assert (=> b!1875734 d!573005))

(declare-fun b!1875920 () Bool)

(declare-fun e!1197343 () Int)

(declare-fun call!116160 () Int)

(assert (=> b!1875920 (= e!1197343 (- call!116160 from!845))))

(declare-fun b!1875921 () Bool)

(declare-fun e!1197345 () List!20993)

(declare-fun e!1197347 () List!20993)

(assert (=> b!1875921 (= e!1197345 e!1197347)))

(declare-fun c!305680 () Bool)

(assert (=> b!1875921 (= c!305680 (<= from!845 0))))

(declare-fun b!1875922 () Bool)

(declare-fun e!1197344 () Bool)

(declare-fun lt!721164 () List!20993)

(declare-fun e!1197346 () Int)

(assert (=> b!1875922 (= e!1197344 (= (size!16588 lt!721164) e!1197346))))

(declare-fun c!305679 () Bool)

(assert (=> b!1875922 (= c!305679 (<= from!845 0))))

(declare-fun b!1875923 () Bool)

(assert (=> b!1875923 (= e!1197345 Nil!20911)))

(declare-fun b!1875925 () Bool)

(assert (=> b!1875925 (= e!1197343 0)))

(declare-fun b!1875926 () Bool)

(assert (=> b!1875926 (= e!1197347 (drop!1028 (t!173216 lt!721066) (- from!845 1)))))

(declare-fun b!1875927 () Bool)

(assert (=> b!1875927 (= e!1197347 lt!721066)))

(declare-fun b!1875924 () Bool)

(assert (=> b!1875924 (= e!1197346 e!1197343)))

(declare-fun c!305678 () Bool)

(assert (=> b!1875924 (= c!305678 (>= from!845 call!116160))))

(declare-fun d!573007 () Bool)

(assert (=> d!573007 e!1197344))

(declare-fun res!838923 () Bool)

(assert (=> d!573007 (=> (not res!838923) (not e!1197344))))

(assert (=> d!573007 (= res!838923 (= ((_ map implies) (content!3109 lt!721164) (content!3109 lt!721066)) ((as const (InoxSet Token!6968)) true)))))

(assert (=> d!573007 (= lt!721164 e!1197345)))

(declare-fun c!305681 () Bool)

(assert (=> d!573007 (= c!305681 ((_ is Nil!20911) lt!721066))))

(assert (=> d!573007 (= (drop!1028 lt!721066 from!845) lt!721164)))

(declare-fun b!1875928 () Bool)

(assert (=> b!1875928 (= e!1197346 call!116160)))

(declare-fun bm!116155 () Bool)

(assert (=> bm!116155 (= call!116160 (size!16588 lt!721066))))

(assert (= (and d!573007 c!305681) b!1875923))

(assert (= (and d!573007 (not c!305681)) b!1875921))

(assert (= (and b!1875921 c!305680) b!1875927))

(assert (= (and b!1875921 (not c!305680)) b!1875926))

(assert (= (and d!573007 res!838923) b!1875922))

(assert (= (and b!1875922 c!305679) b!1875928))

(assert (= (and b!1875922 (not c!305679)) b!1875924))

(assert (= (and b!1875924 c!305678) b!1875925))

(assert (= (and b!1875924 (not c!305678)) b!1875920))

(assert (= (or b!1875928 b!1875924 b!1875920) bm!116155))

(declare-fun m!2301983 () Bool)

(assert (=> b!1875922 m!2301983))

(declare-fun m!2301985 () Bool)

(assert (=> b!1875926 m!2301985))

(declare-fun m!2301987 () Bool)

(assert (=> d!573007 m!2301987))

(declare-fun m!2301989 () Bool)

(assert (=> d!573007 m!2301989))

(assert (=> bm!116155 m!2301903))

(assert (=> b!1875734 d!573007))

(declare-fun d!573013 () Bool)

(declare-fun lt!721169 () Token!6968)

(assert (=> d!573013 (= lt!721169 (apply!5519 (list!8526 v!6352) from!845))))

(declare-fun apply!5520 (Conc!6946 Int) Token!6968)

(assert (=> d!573013 (= lt!721169 (apply!5520 (c!305626 v!6352) from!845))))

(declare-fun e!1197352 () Bool)

(assert (=> d!573013 e!1197352))

(declare-fun res!838934 () Bool)

(assert (=> d!573013 (=> (not res!838934) (not e!1197352))))

(assert (=> d!573013 (= res!838934 (<= 0 from!845))))

(assert (=> d!573013 (= (apply!5518 v!6352 from!845) lt!721169)))

(declare-fun b!1875939 () Bool)

(assert (=> b!1875939 (= e!1197352 (< from!845 (size!16586 v!6352)))))

(assert (= (and d!573013 res!838934) b!1875939))

(assert (=> d!573013 m!2301627))

(assert (=> d!573013 m!2301627))

(declare-fun m!2301991 () Bool)

(assert (=> d!573013 m!2301991))

(declare-fun m!2301993 () Bool)

(assert (=> d!573013 m!2301993))

(assert (=> b!1875939 m!2301611))

(assert (=> b!1875734 d!573013))

(declare-fun b!1875941 () Bool)

(declare-fun e!1197353 () List!20993)

(assert (=> b!1875941 (= e!1197353 (Cons!20911 (h!26312 lt!721060) (++!5677 (t!173216 lt!721060) lt!721062)))))

(declare-fun b!1875942 () Bool)

(declare-fun res!838936 () Bool)

(declare-fun e!1197354 () Bool)

(assert (=> b!1875942 (=> (not res!838936) (not e!1197354))))

(declare-fun lt!721170 () List!20993)

(assert (=> b!1875942 (= res!838936 (= (size!16588 lt!721170) (+ (size!16588 lt!721060) (size!16588 lt!721062))))))

(declare-fun d!573015 () Bool)

(assert (=> d!573015 e!1197354))

(declare-fun res!838935 () Bool)

(assert (=> d!573015 (=> (not res!838935) (not e!1197354))))

(assert (=> d!573015 (= res!838935 (= (content!3109 lt!721170) ((_ map or) (content!3109 lt!721060) (content!3109 lt!721062))))))

(assert (=> d!573015 (= lt!721170 e!1197353)))

(declare-fun c!305685 () Bool)

(assert (=> d!573015 (= c!305685 ((_ is Nil!20911) lt!721060))))

(assert (=> d!573015 (= (++!5677 lt!721060 lt!721062) lt!721170)))

(declare-fun b!1875940 () Bool)

(assert (=> b!1875940 (= e!1197353 lt!721062)))

(declare-fun b!1875943 () Bool)

(assert (=> b!1875943 (= e!1197354 (or (not (= lt!721062 Nil!20911)) (= lt!721170 lt!721060)))))

(assert (= (and d!573015 c!305685) b!1875940))

(assert (= (and d!573015 (not c!305685)) b!1875941))

(assert (= (and d!573015 res!838935) b!1875942))

(assert (= (and b!1875942 res!838936) b!1875943))

(declare-fun m!2301995 () Bool)

(assert (=> b!1875941 m!2301995))

(declare-fun m!2301997 () Bool)

(assert (=> b!1875942 m!2301997))

(assert (=> b!1875942 m!2301817))

(declare-fun m!2301999 () Bool)

(assert (=> b!1875942 m!2301999))

(declare-fun m!2302001 () Bool)

(assert (=> d!573015 m!2302001))

(assert (=> d!573015 m!2301823))

(declare-fun m!2302003 () Bool)

(assert (=> d!573015 m!2302003))

(assert (=> b!1875734 d!573015))

(declare-fun lt!721218 () BalanceConc!13708)

(declare-fun d!573017 () Bool)

(assert (=> d!573017 (= (list!8526 lt!721218) (++!5677 (list!8526 lt!721059) (withSeparatorTokenList!116 thiss!13718 (drop!1028 (list!8526 v!6352) (+ 1 from!845)) separatorToken!84)))))

(declare-fun e!1197382 () BalanceConc!13708)

(assert (=> d!573017 (= lt!721218 e!1197382)))

(declare-fun c!305693 () Bool)

(assert (=> d!573017 (= c!305693 (>= (+ 1 from!845) (size!16586 v!6352)))))

(declare-fun e!1197381 () Bool)

(assert (=> d!573017 e!1197381))

(declare-fun res!838963 () Bool)

(assert (=> d!573017 (=> (not res!838963) (not e!1197381))))

(assert (=> d!573017 (= res!838963 (>= (+ 1 from!845) 0))))

(assert (=> d!573017 (= (withSeparatorTokenInner!12 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!721059) lt!721218)))

(declare-fun b!1875984 () Bool)

(assert (=> b!1875984 (= e!1197381 (<= (+ 1 from!845) (size!16586 v!6352)))))

(declare-fun b!1875985 () Bool)

(assert (=> b!1875985 (= e!1197382 lt!721059)))

(declare-fun b!1875986 () Bool)

(assert (=> b!1875986 (= e!1197382 (withSeparatorTokenInner!12 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845 1) (++!5678 lt!721059 (++!5678 (singletonSeq!1823 (apply!5518 v!6352 (+ 1 from!845))) (singletonSeq!1823 separatorToken!84)))))))

(declare-fun lt!721222 () List!20993)

(assert (=> b!1875986 (= lt!721222 (list!8526 v!6352))))

(declare-fun lt!721217 () Unit!35436)

(assert (=> b!1875986 (= lt!721217 (lemmaDropApply!666 lt!721222 (+ 1 from!845)))))

(assert (=> b!1875986 (= (head!4379 (drop!1028 lt!721222 (+ 1 from!845))) (apply!5519 lt!721222 (+ 1 from!845)))))

(declare-fun lt!721216 () Unit!35436)

(assert (=> b!1875986 (= lt!721216 lt!721217)))

(declare-fun lt!721221 () List!20993)

(assert (=> b!1875986 (= lt!721221 (list!8526 v!6352))))

(declare-fun lt!721215 () Unit!35436)

(assert (=> b!1875986 (= lt!721215 (lemmaDropTail!646 lt!721221 (+ 1 from!845)))))

(assert (=> b!1875986 (= (tail!2908 (drop!1028 lt!721221 (+ 1 from!845))) (drop!1028 lt!721221 (+ 1 from!845 1)))))

(declare-fun lt!721224 () Unit!35436)

(assert (=> b!1875986 (= lt!721224 lt!721215)))

(declare-fun lt!721220 () List!20993)

(assert (=> b!1875986 (= lt!721220 (list!8526 lt!721059))))

(declare-fun lt!721223 () List!20993)

(assert (=> b!1875986 (= lt!721223 (Cons!20911 (apply!5518 v!6352 (+ 1 from!845)) (Cons!20911 separatorToken!84 Nil!20911)))))

(declare-fun lt!721226 () List!20993)

(assert (=> b!1875986 (= lt!721226 (withSeparatorTokenList!116 thiss!13718 (drop!1028 (list!8526 v!6352) (+ 1 from!845 1)) separatorToken!84))))

(declare-fun lt!721225 () Unit!35436)

(assert (=> b!1875986 (= lt!721225 (lemmaConcatAssociativity!1121 lt!721220 lt!721223 lt!721226))))

(assert (=> b!1875986 (= (++!5677 (++!5677 lt!721220 lt!721223) lt!721226) (++!5677 lt!721220 (++!5677 lt!721223 lt!721226)))))

(declare-fun lt!721219 () Unit!35436)

(assert (=> b!1875986 (= lt!721219 lt!721225)))

(assert (= (and d!573017 res!838963) b!1875984))

(assert (= (and d!573017 c!305693) b!1875985))

(assert (= (and d!573017 (not c!305693)) b!1875986))

(assert (=> d!573017 m!2301627))

(assert (=> d!573017 m!2301627))

(declare-fun m!2302091 () Bool)

(assert (=> d!573017 m!2302091))

(assert (=> d!573017 m!2301629))

(declare-fun m!2302093 () Bool)

(assert (=> d!573017 m!2302093))

(declare-fun m!2302095 () Bool)

(assert (=> d!573017 m!2302095))

(assert (=> d!573017 m!2301611))

(assert (=> d!573017 m!2302091))

(assert (=> d!573017 m!2302093))

(declare-fun m!2302097 () Bool)

(assert (=> d!573017 m!2302097))

(assert (=> d!573017 m!2301629))

(assert (=> b!1875984 m!2301611))

(assert (=> b!1875986 m!2301627))

(declare-fun m!2302099 () Bool)

(assert (=> b!1875986 m!2302099))

(declare-fun m!2302101 () Bool)

(assert (=> b!1875986 m!2302101))

(declare-fun m!2302103 () Bool)

(assert (=> b!1875986 m!2302103))

(declare-fun m!2302105 () Bool)

(assert (=> b!1875986 m!2302105))

(declare-fun m!2302107 () Bool)

(assert (=> b!1875986 m!2302107))

(declare-fun m!2302109 () Bool)

(assert (=> b!1875986 m!2302109))

(declare-fun m!2302111 () Bool)

(assert (=> b!1875986 m!2302111))

(declare-fun m!2302113 () Bool)

(assert (=> b!1875986 m!2302113))

(declare-fun m!2302115 () Bool)

(assert (=> b!1875986 m!2302115))

(assert (=> b!1875986 m!2302101))

(assert (=> b!1875986 m!2301627))

(declare-fun m!2302117 () Bool)

(assert (=> b!1875986 m!2302117))

(declare-fun m!2302119 () Bool)

(assert (=> b!1875986 m!2302119))

(declare-fun m!2302121 () Bool)

(assert (=> b!1875986 m!2302121))

(assert (=> b!1875986 m!2302117))

(declare-fun m!2302123 () Bool)

(assert (=> b!1875986 m!2302123))

(assert (=> b!1875986 m!2302109))

(declare-fun m!2302125 () Bool)

(assert (=> b!1875986 m!2302125))

(assert (=> b!1875986 m!2302125))

(declare-fun m!2302127 () Bool)

(assert (=> b!1875986 m!2302127))

(declare-fun m!2302129 () Bool)

(assert (=> b!1875986 m!2302129))

(declare-fun m!2302131 () Bool)

(assert (=> b!1875986 m!2302131))

(assert (=> b!1875986 m!2301629))

(assert (=> b!1875986 m!2301619))

(assert (=> b!1875986 m!2302127))

(assert (=> b!1875986 m!2301619))

(declare-fun m!2302133 () Bool)

(assert (=> b!1875986 m!2302133))

(assert (=> b!1875986 m!2302133))

(assert (=> b!1875986 m!2302129))

(assert (=> b!1875986 m!2302107))

(declare-fun m!2302135 () Bool)

(assert (=> b!1875986 m!2302135))

(assert (=> b!1875986 m!2302121))

(declare-fun m!2302137 () Bool)

(assert (=> b!1875986 m!2302137))

(assert (=> b!1875734 d!573017))

(declare-fun d!573047 () Bool)

(assert (=> d!573047 (= (tail!2908 (drop!1028 lt!721066 from!845)) (drop!1028 lt!721066 (+ from!845 1)))))

(declare-fun lt!721229 () Unit!35436)

(declare-fun choose!11779 (List!20993 Int) Unit!35436)

(assert (=> d!573047 (= lt!721229 (choose!11779 lt!721066 from!845))))

(declare-fun e!1197398 () Bool)

(assert (=> d!573047 e!1197398))

(declare-fun res!838971 () Bool)

(assert (=> d!573047 (=> (not res!838971) (not e!1197398))))

(assert (=> d!573047 (= res!838971 (>= from!845 0))))

(assert (=> d!573047 (= (lemmaDropTail!646 lt!721066 from!845) lt!721229)))

(declare-fun b!1876010 () Bool)

(assert (=> b!1876010 (= e!1197398 (< from!845 (size!16588 lt!721066)))))

(assert (= (and d!573047 res!838971) b!1876010))

(assert (=> d!573047 m!2301645))

(assert (=> d!573047 m!2301645))

(declare-fun m!2302145 () Bool)

(assert (=> d!573047 m!2302145))

(declare-fun m!2302147 () Bool)

(assert (=> d!573047 m!2302147))

(declare-fun m!2302149 () Bool)

(assert (=> d!573047 m!2302149))

(assert (=> b!1876010 m!2301903))

(assert (=> b!1875734 d!573047))

(declare-fun b!1876011 () Bool)

(declare-fun e!1197399 () Int)

(declare-fun call!116162 () Int)

(assert (=> b!1876011 (= e!1197399 (- call!116162 (+ 1 from!845)))))

(declare-fun b!1876012 () Bool)

(declare-fun e!1197401 () List!20993)

(declare-fun e!1197403 () List!20993)

(assert (=> b!1876012 (= e!1197401 e!1197403)))

(declare-fun c!305704 () Bool)

(assert (=> b!1876012 (= c!305704 (<= (+ 1 from!845) 0))))

(declare-fun b!1876013 () Bool)

(declare-fun e!1197400 () Bool)

(declare-fun lt!721230 () List!20993)

(declare-fun e!1197402 () Int)

(assert (=> b!1876013 (= e!1197400 (= (size!16588 lt!721230) e!1197402))))

(declare-fun c!305703 () Bool)

(assert (=> b!1876013 (= c!305703 (<= (+ 1 from!845) 0))))

(declare-fun b!1876014 () Bool)

(assert (=> b!1876014 (= e!1197401 Nil!20911)))

(declare-fun b!1876016 () Bool)

(assert (=> b!1876016 (= e!1197399 0)))

(declare-fun b!1876017 () Bool)

(assert (=> b!1876017 (= e!1197403 (drop!1028 (t!173216 lt!721066) (- (+ 1 from!845) 1)))))

(declare-fun b!1876018 () Bool)

(assert (=> b!1876018 (= e!1197403 lt!721066)))

(declare-fun b!1876015 () Bool)

(assert (=> b!1876015 (= e!1197402 e!1197399)))

(declare-fun c!305702 () Bool)

(assert (=> b!1876015 (= c!305702 (>= (+ 1 from!845) call!116162))))

(declare-fun d!573051 () Bool)

(assert (=> d!573051 e!1197400))

(declare-fun res!838972 () Bool)

(assert (=> d!573051 (=> (not res!838972) (not e!1197400))))

(assert (=> d!573051 (= res!838972 (= ((_ map implies) (content!3109 lt!721230) (content!3109 lt!721066)) ((as const (InoxSet Token!6968)) true)))))

(assert (=> d!573051 (= lt!721230 e!1197401)))

(declare-fun c!305705 () Bool)

(assert (=> d!573051 (= c!305705 ((_ is Nil!20911) lt!721066))))

(assert (=> d!573051 (= (drop!1028 lt!721066 (+ 1 from!845)) lt!721230)))

(declare-fun b!1876019 () Bool)

(assert (=> b!1876019 (= e!1197402 call!116162)))

(declare-fun bm!116157 () Bool)

(assert (=> bm!116157 (= call!116162 (size!16588 lt!721066))))

(assert (= (and d!573051 c!305705) b!1876014))

(assert (= (and d!573051 (not c!305705)) b!1876012))

(assert (= (and b!1876012 c!305704) b!1876018))

(assert (= (and b!1876012 (not c!305704)) b!1876017))

(assert (= (and d!573051 res!838972) b!1876013))

(assert (= (and b!1876013 c!305703) b!1876019))

(assert (= (and b!1876013 (not c!305703)) b!1876015))

(assert (= (and b!1876015 c!305702) b!1876016))

(assert (= (and b!1876015 (not c!305702)) b!1876011))

(assert (= (or b!1876019 b!1876015 b!1876011) bm!116157))

(declare-fun m!2302155 () Bool)

(assert (=> b!1876013 m!2302155))

(declare-fun m!2302157 () Bool)

(assert (=> b!1876017 m!2302157))

(declare-fun m!2302159 () Bool)

(assert (=> d!573051 m!2302159))

(assert (=> d!573051 m!2301989))

(assert (=> bm!116157 m!2301903))

(assert (=> b!1875734 d!573051))

(declare-fun d!573055 () Bool)

(declare-fun e!1197412 () Bool)

(assert (=> d!573055 e!1197412))

(declare-fun res!838981 () Bool)

(assert (=> d!573055 (=> (not res!838981) (not e!1197412))))

(declare-fun lt!721233 () BalanceConc!13708)

(assert (=> d!573055 (= res!838981 (= (list!8526 lt!721233) (Cons!20911 lt!721067 Nil!20911)))))

(declare-fun singleton!822 (Token!6968) BalanceConc!13708)

(assert (=> d!573055 (= lt!721233 (singleton!822 lt!721067))))

(assert (=> d!573055 (= (singletonSeq!1823 lt!721067) lt!721233)))

(declare-fun b!1876030 () Bool)

(assert (=> b!1876030 (= e!1197412 (isBalanced!2198 (c!305626 lt!721233)))))

(assert (= (and d!573055 res!838981) b!1876030))

(declare-fun m!2302169 () Bool)

(assert (=> d!573055 m!2302169))

(declare-fun m!2302171 () Bool)

(assert (=> d!573055 m!2302171))

(declare-fun m!2302173 () Bool)

(assert (=> b!1876030 m!2302173))

(assert (=> b!1875734 d!573055))

(declare-fun d!573063 () Bool)

(declare-fun e!1197413 () Bool)

(assert (=> d!573063 e!1197413))

(declare-fun res!838982 () Bool)

(assert (=> d!573063 (=> (not res!838982) (not e!1197413))))

(declare-fun lt!721234 () BalanceConc!13708)

(assert (=> d!573063 (= res!838982 (= (list!8526 lt!721234) (Cons!20911 separatorToken!84 Nil!20911)))))

(assert (=> d!573063 (= lt!721234 (singleton!822 separatorToken!84))))

(assert (=> d!573063 (= (singletonSeq!1823 separatorToken!84) lt!721234)))

(declare-fun b!1876033 () Bool)

(assert (=> b!1876033 (= e!1197413 (isBalanced!2198 (c!305626 lt!721234)))))

(assert (= (and d!573063 res!838982) b!1876033))

(declare-fun m!2302175 () Bool)

(assert (=> d!573063 m!2302175))

(declare-fun m!2302177 () Bool)

(assert (=> d!573063 m!2302177))

(declare-fun m!2302179 () Bool)

(assert (=> b!1876033 m!2302179))

(assert (=> b!1875734 d!573063))

(declare-fun d!573065 () Bool)

(assert (=> d!573065 (= (list!8526 lt!721059) (list!8527 (c!305626 lt!721059)))))

(declare-fun bs!412214 () Bool)

(assert (= bs!412214 d!573065))

(declare-fun m!2302181 () Bool)

(assert (=> bs!412214 m!2302181))

(assert (=> b!1875734 d!573065))

(declare-fun d!573067 () Bool)

(assert (=> d!573067 (= (list!8526 acc!408) (list!8527 (c!305626 acc!408)))))

(declare-fun bs!412215 () Bool)

(assert (= bs!412215 d!573067))

(declare-fun m!2302183 () Bool)

(assert (=> bs!412215 m!2302183))

(assert (=> b!1875734 d!573067))

(declare-fun b!1876035 () Bool)

(declare-fun e!1197414 () List!20993)

(assert (=> b!1876035 (= e!1197414 (Cons!20911 (h!26312 (++!5677 lt!721060 lt!721062)) (++!5677 (t!173216 (++!5677 lt!721060 lt!721062)) lt!721061)))))

(declare-fun b!1876036 () Bool)

(declare-fun res!838984 () Bool)

(declare-fun e!1197415 () Bool)

(assert (=> b!1876036 (=> (not res!838984) (not e!1197415))))

(declare-fun lt!721235 () List!20993)

(assert (=> b!1876036 (= res!838984 (= (size!16588 lt!721235) (+ (size!16588 (++!5677 lt!721060 lt!721062)) (size!16588 lt!721061))))))

(declare-fun d!573069 () Bool)

(assert (=> d!573069 e!1197415))

(declare-fun res!838983 () Bool)

(assert (=> d!573069 (=> (not res!838983) (not e!1197415))))

(assert (=> d!573069 (= res!838983 (= (content!3109 lt!721235) ((_ map or) (content!3109 (++!5677 lt!721060 lt!721062)) (content!3109 lt!721061))))))

(assert (=> d!573069 (= lt!721235 e!1197414)))

(declare-fun c!305708 () Bool)

(assert (=> d!573069 (= c!305708 ((_ is Nil!20911) (++!5677 lt!721060 lt!721062)))))

(assert (=> d!573069 (= (++!5677 (++!5677 lt!721060 lt!721062) lt!721061) lt!721235)))

(declare-fun b!1876034 () Bool)

(assert (=> b!1876034 (= e!1197414 lt!721061)))

(declare-fun b!1876037 () Bool)

(assert (=> b!1876037 (= e!1197415 (or (not (= lt!721061 Nil!20911)) (= lt!721235 (++!5677 lt!721060 lt!721062))))))

(assert (= (and d!573069 c!305708) b!1876034))

(assert (= (and d!573069 (not c!305708)) b!1876035))

(assert (= (and d!573069 res!838983) b!1876036))

(assert (= (and b!1876036 res!838984) b!1876037))

(declare-fun m!2302185 () Bool)

(assert (=> b!1876035 m!2302185))

(declare-fun m!2302187 () Bool)

(assert (=> b!1876036 m!2302187))

(assert (=> b!1876036 m!2301621))

(declare-fun m!2302189 () Bool)

(assert (=> b!1876036 m!2302189))

(assert (=> b!1876036 m!2301913))

(declare-fun m!2302191 () Bool)

(assert (=> d!573069 m!2302191))

(assert (=> d!573069 m!2301621))

(declare-fun m!2302193 () Bool)

(assert (=> d!573069 m!2302193))

(assert (=> d!573069 m!2301919))

(assert (=> b!1875734 d!573069))

(declare-fun d!573071 () Bool)

(assert (=> d!573071 (= (++!5677 (++!5677 lt!721060 lt!721062) lt!721061) (++!5677 lt!721060 (++!5677 lt!721062 lt!721061)))))

(declare-fun lt!721239 () Unit!35436)

(declare-fun choose!11780 (List!20993 List!20993 List!20993) Unit!35436)

(assert (=> d!573071 (= lt!721239 (choose!11780 lt!721060 lt!721062 lt!721061))))

(assert (=> d!573071 (= (lemmaConcatAssociativity!1121 lt!721060 lt!721062 lt!721061) lt!721239)))

(declare-fun bs!412217 () Bool)

(assert (= bs!412217 d!573071))

(assert (=> bs!412217 m!2301621))

(assert (=> bs!412217 m!2301621))

(assert (=> bs!412217 m!2301625))

(declare-fun m!2302211 () Bool)

(assert (=> bs!412217 m!2302211))

(assert (=> bs!412217 m!2301657))

(assert (=> bs!412217 m!2301657))

(assert (=> bs!412217 m!2301661))

(assert (=> b!1875734 d!573071))

(declare-fun b!1876050 () Bool)

(declare-fun e!1197421 () List!20993)

(assert (=> b!1876050 (= e!1197421 (Cons!20911 (h!26312 lt!721062) (++!5677 (t!173216 lt!721062) lt!721061)))))

(declare-fun b!1876051 () Bool)

(declare-fun res!838992 () Bool)

(declare-fun e!1197422 () Bool)

(assert (=> b!1876051 (=> (not res!838992) (not e!1197422))))

(declare-fun lt!721240 () List!20993)

(assert (=> b!1876051 (= res!838992 (= (size!16588 lt!721240) (+ (size!16588 lt!721062) (size!16588 lt!721061))))))

(declare-fun d!573077 () Bool)

(assert (=> d!573077 e!1197422))

(declare-fun res!838991 () Bool)

(assert (=> d!573077 (=> (not res!838991) (not e!1197422))))

(assert (=> d!573077 (= res!838991 (= (content!3109 lt!721240) ((_ map or) (content!3109 lt!721062) (content!3109 lt!721061))))))

(assert (=> d!573077 (= lt!721240 e!1197421)))

(declare-fun c!305709 () Bool)

(assert (=> d!573077 (= c!305709 ((_ is Nil!20911) lt!721062))))

(assert (=> d!573077 (= (++!5677 lt!721062 lt!721061) lt!721240)))

(declare-fun b!1876049 () Bool)

(assert (=> b!1876049 (= e!1197421 lt!721061)))

(declare-fun b!1876052 () Bool)

(assert (=> b!1876052 (= e!1197422 (or (not (= lt!721061 Nil!20911)) (= lt!721240 lt!721062)))))

(assert (= (and d!573077 c!305709) b!1876049))

(assert (= (and d!573077 (not c!305709)) b!1876050))

(assert (= (and d!573077 res!838991) b!1876051))

(assert (= (and b!1876051 res!838992) b!1876052))

(declare-fun m!2302225 () Bool)

(assert (=> b!1876050 m!2302225))

(declare-fun m!2302227 () Bool)

(assert (=> b!1876051 m!2302227))

(assert (=> b!1876051 m!2301999))

(assert (=> b!1876051 m!2301913))

(declare-fun m!2302229 () Bool)

(assert (=> d!573077 m!2302229))

(assert (=> d!573077 m!2302003))

(assert (=> d!573077 m!2301919))

(assert (=> b!1875734 d!573077))

(declare-fun d!573081 () Bool)

(assert (=> d!573081 (= (tail!2908 lt!721070) (t!173216 lt!721070))))

(assert (=> b!1875734 d!573081))

(declare-fun d!573083 () Bool)

(declare-fun lt!721244 () Token!6968)

(declare-fun contains!3821 (List!20993 Token!6968) Bool)

(assert (=> d!573083 (contains!3821 lt!721066 lt!721244)))

(declare-fun e!1197441 () Token!6968)

(assert (=> d!573083 (= lt!721244 e!1197441)))

(declare-fun c!305713 () Bool)

(assert (=> d!573083 (= c!305713 (= from!845 0))))

(declare-fun e!1197442 () Bool)

(assert (=> d!573083 e!1197442))

(declare-fun res!838997 () Bool)

(assert (=> d!573083 (=> (not res!838997) (not e!1197442))))

(assert (=> d!573083 (= res!838997 (<= 0 from!845))))

(assert (=> d!573083 (= (apply!5519 lt!721066 from!845) lt!721244)))

(declare-fun b!1876093 () Bool)

(assert (=> b!1876093 (= e!1197442 (< from!845 (size!16588 lt!721066)))))

(declare-fun b!1876094 () Bool)

(assert (=> b!1876094 (= e!1197441 (head!4379 lt!721066))))

(declare-fun b!1876095 () Bool)

(assert (=> b!1876095 (= e!1197441 (apply!5519 (tail!2908 lt!721066) (- from!845 1)))))

(assert (= (and d!573083 res!838997) b!1876093))

(assert (= (and d!573083 c!305713) b!1876094))

(assert (= (and d!573083 (not c!305713)) b!1876095))

(declare-fun m!2302247 () Bool)

(assert (=> d!573083 m!2302247))

(assert (=> b!1876093 m!2301903))

(declare-fun m!2302255 () Bool)

(assert (=> b!1876094 m!2302255))

(declare-fun m!2302257 () Bool)

(assert (=> b!1876095 m!2302257))

(assert (=> b!1876095 m!2302257))

(declare-fun m!2302259 () Bool)

(assert (=> b!1876095 m!2302259))

(assert (=> b!1875734 d!573083))

(declare-fun e!1197458 () List!20992)

(declare-fun b!1876119 () Bool)

(declare-fun e!1197462 () Bool)

(declare-fun printList!1010 (LexerInterface!3330 List!20993) List!20992)

(declare-fun $colon$colon!492 (List!20993 Token!6968) List!20993)

(assert (=> b!1876119 (= e!1197462 (= (printList!1010 thiss!13718 ($colon$colon!492 (withSeparatorTokenList!116 thiss!13718 (t!173216 lt!721071) separatorToken!84) separatorToken!84)) e!1197458))))

(declare-fun c!305721 () Bool)

(declare-fun lt!721263 () List!20993)

(assert (=> b!1876119 (= c!305721 ((_ is Cons!20911) lt!721263))))

(assert (=> b!1876119 (= lt!721263 ($colon$colon!492 (withSeparatorTokenList!116 thiss!13718 (t!173216 lt!721071) separatorToken!84) separatorToken!84))))

(declare-fun b!1876120 () Bool)

(declare-fun res!839009 () Bool)

(declare-fun e!1197457 () Bool)

(assert (=> b!1876120 (=> (not res!839009) (not e!1197457))))

(declare-fun e!1197461 () Bool)

(assert (=> b!1876120 (= res!839009 e!1197461)))

(declare-fun res!839006 () Bool)

(assert (=> b!1876120 (=> res!839006 e!1197461)))

(assert (=> b!1876120 (= res!839006 (not ((_ is Cons!20911) lt!721071)))))

(declare-fun e!1197459 () List!20993)

(declare-fun b!1876121 () Bool)

(assert (=> b!1876121 (= e!1197459 ($colon$colon!492 ($colon$colon!492 (withSeparatorTokenList!116 thiss!13718 (t!173216 lt!721071) separatorToken!84) separatorToken!84) (h!26312 lt!721071)))))

(declare-fun lt!721265 () List!20992)

(declare-fun charsOf!2300 (Token!6968) BalanceConc!13706)

(assert (=> b!1876121 (= lt!721265 (list!8529 (charsOf!2300 (h!26312 lt!721071))))))

(declare-fun lt!721262 () List!20992)

(assert (=> b!1876121 (= lt!721262 (list!8529 (charsOf!2300 separatorToken!84)))))

(declare-fun lt!721264 () List!20992)

(assert (=> b!1876121 (= lt!721264 (printList!1010 thiss!13718 (withSeparatorTokenList!116 thiss!13718 (t!173216 lt!721071) separatorToken!84)))))

(declare-fun lt!721261 () Unit!35436)

(declare-fun lemmaConcatAssociativity!1123 (List!20992 List!20992 List!20992) Unit!35436)

(assert (=> b!1876121 (= lt!721261 (lemmaConcatAssociativity!1123 lt!721265 lt!721262 lt!721264))))

(declare-fun ++!5682 (List!20992 List!20992) List!20992)

(assert (=> b!1876121 (= (++!5682 (++!5682 lt!721265 lt!721262) lt!721264) (++!5682 lt!721265 (++!5682 lt!721262 lt!721264)))))

(declare-fun lt!721266 () Unit!35436)

(assert (=> b!1876121 (= lt!721266 lt!721261)))

(declare-fun b!1876122 () Bool)

(assert (=> b!1876122 (= e!1197459 Nil!20911)))

(declare-fun b!1876123 () Bool)

(declare-fun e!1197460 () List!20992)

(declare-fun lt!721267 () List!20993)

(assert (=> b!1876123 (= e!1197460 (++!5682 (list!8529 (charsOf!2300 (h!26312 lt!721267))) (printList!1010 thiss!13718 (t!173216 lt!721267))))))

(declare-fun b!1876125 () Bool)

(assert (=> b!1876125 (= e!1197457 e!1197462)))

(declare-fun res!839007 () Bool)

(assert (=> b!1876125 (=> res!839007 e!1197462)))

(assert (=> b!1876125 (= res!839007 (not ((_ is Cons!20911) lt!721071)))))

(declare-fun b!1876126 () Bool)

(assert (=> b!1876126 (= e!1197458 (++!5682 (list!8529 (charsOf!2300 (h!26312 lt!721263))) (printList!1010 thiss!13718 (t!173216 lt!721263))))))

(declare-fun b!1876127 () Bool)

(assert (=> b!1876127 (= e!1197458 Nil!20910)))

(declare-fun b!1876128 () Bool)

(assert (=> b!1876128 (= e!1197461 (= (printList!1010 thiss!13718 ($colon$colon!492 ($colon$colon!492 (withSeparatorTokenList!116 thiss!13718 (t!173216 lt!721071) separatorToken!84) separatorToken!84) (h!26312 lt!721071))) e!1197460))))

(declare-fun c!305722 () Bool)

(assert (=> b!1876128 (= c!305722 ((_ is Cons!20911) lt!721267))))

(assert (=> b!1876128 (= lt!721267 ($colon$colon!492 ($colon$colon!492 (withSeparatorTokenList!116 thiss!13718 (t!173216 lt!721071) separatorToken!84) separatorToken!84) (h!26312 lt!721071)))))

(declare-fun b!1876124 () Bool)

(assert (=> b!1876124 (= e!1197460 Nil!20910)))

(declare-fun d!573085 () Bool)

(declare-fun lt!721268 () List!20993)

(declare-fun printWithSeparatorTokenList!68 (LexerInterface!3330 List!20993 Token!6968) List!20992)

(assert (=> d!573085 (= (printList!1010 thiss!13718 lt!721268) (printWithSeparatorTokenList!68 thiss!13718 lt!721071 separatorToken!84))))

(assert (=> d!573085 (= lt!721268 e!1197459)))

(declare-fun c!305720 () Bool)

(assert (=> d!573085 (= c!305720 ((_ is Cons!20911) lt!721071))))

(assert (=> d!573085 e!1197457))

(declare-fun res!839008 () Bool)

(assert (=> d!573085 (=> (not res!839008) (not e!1197457))))

(assert (=> d!573085 (= res!839008 (isSeparator!3708 (rule!5901 separatorToken!84)))))

(assert (=> d!573085 (= (withSeparatorTokenList!116 thiss!13718 lt!721071 separatorToken!84) lt!721268)))

(assert (= (and d!573085 res!839008) b!1876120))

(assert (= (and b!1876120 (not res!839006)) b!1876128))

(assert (= (and b!1876128 c!305722) b!1876123))

(assert (= (and b!1876128 (not c!305722)) b!1876124))

(assert (= (and b!1876120 res!839009) b!1876125))

(assert (= (and b!1876125 (not res!839007)) b!1876119))

(assert (= (and b!1876119 c!305721) b!1876126))

(assert (= (and b!1876119 (not c!305721)) b!1876127))

(assert (= (and d!573085 c!305720) b!1876121))

(assert (= (and d!573085 (not c!305720)) b!1876122))

(declare-fun m!2302261 () Bool)

(assert (=> d!573085 m!2302261))

(declare-fun m!2302263 () Bool)

(assert (=> d!573085 m!2302263))

(declare-fun m!2302265 () Bool)

(assert (=> b!1876123 m!2302265))

(assert (=> b!1876123 m!2302265))

(declare-fun m!2302267 () Bool)

(assert (=> b!1876123 m!2302267))

(declare-fun m!2302269 () Bool)

(assert (=> b!1876123 m!2302269))

(assert (=> b!1876123 m!2302267))

(assert (=> b!1876123 m!2302269))

(declare-fun m!2302271 () Bool)

(assert (=> b!1876123 m!2302271))

(declare-fun m!2302273 () Bool)

(assert (=> b!1876121 m!2302273))

(declare-fun m!2302275 () Bool)

(assert (=> b!1876121 m!2302275))

(declare-fun m!2302277 () Bool)

(assert (=> b!1876121 m!2302277))

(declare-fun m!2302279 () Bool)

(assert (=> b!1876121 m!2302279))

(declare-fun m!2302281 () Bool)

(assert (=> b!1876121 m!2302281))

(declare-fun m!2302283 () Bool)

(assert (=> b!1876121 m!2302283))

(declare-fun m!2302285 () Bool)

(assert (=> b!1876121 m!2302285))

(assert (=> b!1876121 m!2302273))

(assert (=> b!1876121 m!2302285))

(declare-fun m!2302287 () Bool)

(assert (=> b!1876121 m!2302287))

(declare-fun m!2302289 () Bool)

(assert (=> b!1876121 m!2302289))

(declare-fun m!2302291 () Bool)

(assert (=> b!1876121 m!2302291))

(declare-fun m!2302293 () Bool)

(assert (=> b!1876121 m!2302293))

(declare-fun m!2302295 () Bool)

(assert (=> b!1876121 m!2302295))

(assert (=> b!1876121 m!2302291))

(declare-fun m!2302297 () Bool)

(assert (=> b!1876121 m!2302297))

(assert (=> b!1876121 m!2302281))

(assert (=> b!1876121 m!2302277))

(assert (=> b!1876121 m!2302285))

(assert (=> b!1876121 m!2302293))

(assert (=> b!1876119 m!2302285))

(assert (=> b!1876119 m!2302285))

(assert (=> b!1876119 m!2302273))

(assert (=> b!1876119 m!2302273))

(declare-fun m!2302299 () Bool)

(assert (=> b!1876119 m!2302299))

(declare-fun m!2302301 () Bool)

(assert (=> b!1876126 m!2302301))

(assert (=> b!1876126 m!2302301))

(declare-fun m!2302303 () Bool)

(assert (=> b!1876126 m!2302303))

(declare-fun m!2302305 () Bool)

(assert (=> b!1876126 m!2302305))

(assert (=> b!1876126 m!2302303))

(assert (=> b!1876126 m!2302305))

(declare-fun m!2302307 () Bool)

(assert (=> b!1876126 m!2302307))

(assert (=> b!1876128 m!2302285))

(assert (=> b!1876128 m!2302285))

(assert (=> b!1876128 m!2302273))

(assert (=> b!1876128 m!2302273))

(assert (=> b!1876128 m!2302275))

(assert (=> b!1876128 m!2302275))

(declare-fun m!2302309 () Bool)

(assert (=> b!1876128 m!2302309))

(assert (=> b!1875734 d!573085))

(declare-fun d!573087 () Bool)

(assert (=> d!573087 (= (head!4379 lt!721070) (h!26312 lt!721070))))

(assert (=> b!1875734 d!573087))

(declare-fun e!1197463 () List!20993)

(declare-fun b!1876130 () Bool)

(assert (=> b!1876130 (= e!1197463 (Cons!20911 (h!26312 lt!721060) (++!5677 (t!173216 lt!721060) (++!5677 lt!721062 lt!721061))))))

(declare-fun b!1876131 () Bool)

(declare-fun res!839011 () Bool)

(declare-fun e!1197464 () Bool)

(assert (=> b!1876131 (=> (not res!839011) (not e!1197464))))

(declare-fun lt!721269 () List!20993)

(assert (=> b!1876131 (= res!839011 (= (size!16588 lt!721269) (+ (size!16588 lt!721060) (size!16588 (++!5677 lt!721062 lt!721061)))))))

(declare-fun d!573089 () Bool)

(assert (=> d!573089 e!1197464))

(declare-fun res!839010 () Bool)

(assert (=> d!573089 (=> (not res!839010) (not e!1197464))))

(assert (=> d!573089 (= res!839010 (= (content!3109 lt!721269) ((_ map or) (content!3109 lt!721060) (content!3109 (++!5677 lt!721062 lt!721061)))))))

(assert (=> d!573089 (= lt!721269 e!1197463)))

(declare-fun c!305723 () Bool)

(assert (=> d!573089 (= c!305723 ((_ is Nil!20911) lt!721060))))

(assert (=> d!573089 (= (++!5677 lt!721060 (++!5677 lt!721062 lt!721061)) lt!721269)))

(declare-fun b!1876129 () Bool)

(assert (=> b!1876129 (= e!1197463 (++!5677 lt!721062 lt!721061))))

(declare-fun b!1876132 () Bool)

(assert (=> b!1876132 (= e!1197464 (or (not (= (++!5677 lt!721062 lt!721061) Nil!20911)) (= lt!721269 lt!721060)))))

(assert (= (and d!573089 c!305723) b!1876129))

(assert (= (and d!573089 (not c!305723)) b!1876130))

(assert (= (and d!573089 res!839010) b!1876131))

(assert (= (and b!1876131 res!839011) b!1876132))

(assert (=> b!1876130 m!2301657))

(declare-fun m!2302311 () Bool)

(assert (=> b!1876130 m!2302311))

(declare-fun m!2302313 () Bool)

(assert (=> b!1876131 m!2302313))

(assert (=> b!1876131 m!2301817))

(assert (=> b!1876131 m!2301657))

(declare-fun m!2302315 () Bool)

(assert (=> b!1876131 m!2302315))

(declare-fun m!2302317 () Bool)

(assert (=> d!573089 m!2302317))

(assert (=> d!573089 m!2301823))

(assert (=> d!573089 m!2301657))

(declare-fun m!2302319 () Bool)

(assert (=> d!573089 m!2302319))

(assert (=> b!1875734 d!573089))

(declare-fun d!573091 () Bool)

(declare-fun c!305724 () Bool)

(assert (=> d!573091 (= c!305724 ((_ is Node!6946) (c!305626 v!6352)))))

(declare-fun e!1197465 () Bool)

(assert (=> d!573091 (= (inv!27802 (c!305626 v!6352)) e!1197465)))

(declare-fun b!1876133 () Bool)

(assert (=> b!1876133 (= e!1197465 (inv!27805 (c!305626 v!6352)))))

(declare-fun b!1876134 () Bool)

(declare-fun e!1197466 () Bool)

(assert (=> b!1876134 (= e!1197465 e!1197466)))

(declare-fun res!839012 () Bool)

(assert (=> b!1876134 (= res!839012 (not ((_ is Leaf!10221) (c!305626 v!6352))))))

(assert (=> b!1876134 (=> res!839012 e!1197466)))

(declare-fun b!1876135 () Bool)

(assert (=> b!1876135 (= e!1197466 (inv!27806 (c!305626 v!6352)))))

(assert (= (and d!573091 c!305724) b!1876133))

(assert (= (and d!573091 (not c!305724)) b!1876134))

(assert (= (and b!1876134 (not res!839012)) b!1876135))

(declare-fun m!2302321 () Bool)

(assert (=> b!1876133 m!2302321))

(declare-fun m!2302323 () Bool)

(assert (=> b!1876135 m!2302323))

(assert (=> b!1875732 d!573091))

(declare-fun b!1876146 () Bool)

(declare-fun e!1197474 () Bool)

(declare-fun inv!17 (TokenValue!3844) Bool)

(assert (=> b!1876146 (= e!1197474 (inv!17 (value!117143 separatorToken!84)))))

(declare-fun b!1876147 () Bool)

(declare-fun res!839015 () Bool)

(declare-fun e!1197473 () Bool)

(assert (=> b!1876147 (=> res!839015 e!1197473)))

(assert (=> b!1876147 (= res!839015 (not ((_ is IntegerValue!11534) (value!117143 separatorToken!84))))))

(assert (=> b!1876147 (= e!1197474 e!1197473)))

(declare-fun b!1876148 () Bool)

(declare-fun e!1197475 () Bool)

(declare-fun inv!16 (TokenValue!3844) Bool)

(assert (=> b!1876148 (= e!1197475 (inv!16 (value!117143 separatorToken!84)))))

(declare-fun d!573093 () Bool)

(declare-fun c!305729 () Bool)

(assert (=> d!573093 (= c!305729 ((_ is IntegerValue!11532) (value!117143 separatorToken!84)))))

(assert (=> d!573093 (= (inv!21 (value!117143 separatorToken!84)) e!1197475)))

(declare-fun b!1876149 () Bool)

(assert (=> b!1876149 (= e!1197475 e!1197474)))

(declare-fun c!305730 () Bool)

(assert (=> b!1876149 (= c!305730 ((_ is IntegerValue!11533) (value!117143 separatorToken!84)))))

(declare-fun b!1876150 () Bool)

(declare-fun inv!15 (TokenValue!3844) Bool)

(assert (=> b!1876150 (= e!1197473 (inv!15 (value!117143 separatorToken!84)))))

(assert (= (and d!573093 c!305729) b!1876148))

(assert (= (and d!573093 (not c!305729)) b!1876149))

(assert (= (and b!1876149 c!305730) b!1876146))

(assert (= (and b!1876149 (not c!305730)) b!1876147))

(assert (= (and b!1876147 (not res!839015)) b!1876150))

(declare-fun m!2302325 () Bool)

(assert (=> b!1876146 m!2302325))

(declare-fun m!2302327 () Bool)

(assert (=> b!1876148 m!2302327))

(declare-fun m!2302329 () Bool)

(assert (=> b!1876150 m!2302329))

(assert (=> b!1875737 d!573093))

(declare-fun b!1876163 () Bool)

(declare-fun e!1197478 () Bool)

(declare-fun tp!534765 () Bool)

(assert (=> b!1876163 (= e!1197478 tp!534765)))

(assert (=> b!1875730 (= tp!534713 e!1197478)))

(declare-fun b!1876161 () Bool)

(declare-fun tp_is_empty!8891 () Bool)

(assert (=> b!1876161 (= e!1197478 tp_is_empty!8891)))

(declare-fun b!1876162 () Bool)

(declare-fun tp!534764 () Bool)

(declare-fun tp!534762 () Bool)

(assert (=> b!1876162 (= e!1197478 (and tp!534764 tp!534762))))

(declare-fun b!1876164 () Bool)

(declare-fun tp!534766 () Bool)

(declare-fun tp!534763 () Bool)

(assert (=> b!1876164 (= e!1197478 (and tp!534766 tp!534763))))

(assert (= (and b!1875730 ((_ is ElementMatch!5117) (regex!3708 (rule!5901 separatorToken!84)))) b!1876161))

(assert (= (and b!1875730 ((_ is Concat!8962) (regex!3708 (rule!5901 separatorToken!84)))) b!1876162))

(assert (= (and b!1875730 ((_ is Star!5117) (regex!3708 (rule!5901 separatorToken!84)))) b!1876163))

(assert (= (and b!1875730 ((_ is Union!5117) (regex!3708 (rule!5901 separatorToken!84)))) b!1876164))

(declare-fun e!1197483 () Bool)

(declare-fun tp!534775 () Bool)

(declare-fun b!1876173 () Bool)

(declare-fun tp!534773 () Bool)

(assert (=> b!1876173 (= e!1197483 (and (inv!27802 (left!16806 (c!305626 acc!408))) tp!534775 (inv!27802 (right!17136 (c!305626 acc!408))) tp!534773))))

(declare-fun b!1876175 () Bool)

(declare-fun e!1197484 () Bool)

(declare-fun tp!534774 () Bool)

(assert (=> b!1876175 (= e!1197484 tp!534774)))

(declare-fun b!1876174 () Bool)

(declare-fun inv!27812 (IArray!13897) Bool)

(assert (=> b!1876174 (= e!1197483 (and (inv!27812 (xs!9830 (c!305626 acc!408))) e!1197484))))

(assert (=> b!1875735 (= tp!534711 (and (inv!27802 (c!305626 acc!408)) e!1197483))))

(assert (= (and b!1875735 ((_ is Node!6946) (c!305626 acc!408))) b!1876173))

(assert (= b!1876174 b!1876175))

(assert (= (and b!1875735 ((_ is Leaf!10221) (c!305626 acc!408))) b!1876174))

(declare-fun m!2302331 () Bool)

(assert (=> b!1876173 m!2302331))

(declare-fun m!2302333 () Bool)

(assert (=> b!1876173 m!2302333))

(declare-fun m!2302335 () Bool)

(assert (=> b!1876174 m!2302335))

(assert (=> b!1875735 m!2301617))

(declare-fun tp!534776 () Bool)

(declare-fun b!1876176 () Bool)

(declare-fun tp!534778 () Bool)

(declare-fun e!1197485 () Bool)

(assert (=> b!1876176 (= e!1197485 (and (inv!27802 (left!16806 (c!305626 v!6352))) tp!534778 (inv!27802 (right!17136 (c!305626 v!6352))) tp!534776))))

(declare-fun b!1876178 () Bool)

(declare-fun e!1197486 () Bool)

(declare-fun tp!534777 () Bool)

(assert (=> b!1876178 (= e!1197486 tp!534777)))

(declare-fun b!1876177 () Bool)

(assert (=> b!1876177 (= e!1197485 (and (inv!27812 (xs!9830 (c!305626 v!6352))) e!1197486))))

(assert (=> b!1875732 (= tp!534710 (and (inv!27802 (c!305626 v!6352)) e!1197485))))

(assert (= (and b!1875732 ((_ is Node!6946) (c!305626 v!6352))) b!1876176))

(assert (= b!1876177 b!1876178))

(assert (= (and b!1875732 ((_ is Leaf!10221) (c!305626 v!6352))) b!1876177))

(declare-fun m!2302337 () Bool)

(assert (=> b!1876176 m!2302337))

(declare-fun m!2302339 () Bool)

(assert (=> b!1876176 m!2302339))

(declare-fun m!2302341 () Bool)

(assert (=> b!1876177 m!2302341))

(assert (=> b!1875732 m!2301615))

(declare-fun b!1876183 () Bool)

(declare-fun e!1197489 () Bool)

(declare-fun tp!534781 () Bool)

(assert (=> b!1876183 (= e!1197489 (and tp_is_empty!8891 tp!534781))))

(assert (=> b!1875737 (= tp!534712 e!1197489)))

(assert (= (and b!1875737 ((_ is Cons!20910) (originalCharacters!4515 separatorToken!84))) b!1876183))

(declare-fun b_lambda!61639 () Bool)

(assert (= b_lambda!61633 (or (and b!1875733 b_free!52203) b_lambda!61639)))

(check-sat (not b!1876146) (not b!1876183) (not b!1875922) (not d!573065) b_and!144495 (not d!573007) (not d!572985) (not d!572991) (not b!1876030) (not b!1875825) (not d!573047) (not b!1875854) (not b!1875852) (not b!1876162) (not b!1875732) (not d!572997) (not d!573067) (not b!1875883) (not d!573071) (not d!573063) (not b!1876119) (not d!573083) (not b!1876135) (not b!1875834) (not b!1876035) (not d!572987) (not b!1876017) b_and!144491 (not b!1876123) (not d!572963) (not b!1876033) (not b!1875824) (not d!573089) tp_is_empty!8891 (not b!1875850) (not b!1876094) (not b!1876164) (not d!573017) (not b!1876010) (not b!1875855) (not b!1876121) (not b!1875875) (not d!573001) (not d!572995) (not b!1876176) (not b!1875885) (not b!1875939) (not b!1876130) (not b!1875835) (not b!1876128) (not tb!112949) (not d!573051) (not b!1876178) (not b_next!52905) (not d!573013) (not b!1876148) (not b!1875986) (not bm!116155) (not b!1875942) (not b!1876133) (not d!573069) (not b!1875874) (not b!1876013) (not b!1875876) (not b!1876126) (not d!573085) (not d!573055) (not d!573077) (not b!1875843) (not d!573015) (not d!573003) (not b!1875794) (not d!572977) (not b!1876050) (not b!1876051) (not b!1875796) (not d!573005) (not b!1875873) (not b!1875926) (not b!1875797) (not d!572983) (not b!1875886) (not d!572955) (not b_lambda!61639) (not b!1876173) (not d!572999) (not b!1876131) (not b!1876177) (not b!1876163) (not b!1876093) (not d!572957) (not b_next!52907) (not b!1875735) (not b!1875795) (not bm!116157) (not b!1875840) (not b!1876174) (not b!1875856) (not b!1876150) (not b!1875853) (not b!1875984) (not b!1876036) (not b!1876175) (not b!1876095) (not b!1875941))
(check-sat b_and!144495 b_and!144491 (not b_next!52905) (not b_next!52907))
