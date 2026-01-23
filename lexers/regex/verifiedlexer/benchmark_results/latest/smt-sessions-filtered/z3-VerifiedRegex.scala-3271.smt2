; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187950 () Bool)

(assert start!187950)

(declare-fun b!1875158 () Bool)

(declare-fun b_free!52177 () Bool)

(declare-fun b_next!52881 () Bool)

(assert (=> b!1875158 (= b_free!52177 (not b_next!52881))))

(declare-fun tp!534538 () Bool)

(declare-fun b_and!144463 () Bool)

(assert (=> b!1875158 (= tp!534538 b_and!144463)))

(declare-fun b_free!52179 () Bool)

(declare-fun b_next!52883 () Bool)

(assert (=> b!1875158 (= b_free!52179 (not b_next!52883))))

(declare-fun tp!534540 () Bool)

(declare-fun b_and!144465 () Bool)

(assert (=> b!1875158 (= tp!534540 b_and!144465)))

(declare-fun b!1875156 () Bool)

(declare-fun e!1196822 () Bool)

(declare-datatypes ((List!20973 0))(
  ( (Nil!20891) (Cons!20891 (h!26292 (_ BitVec 16)) (t!173190 List!20973)) )
))
(declare-datatypes ((TokenValue!3838 0))(
  ( (FloatLiteralValue!7676 (text!27311 List!20973)) (TokenValueExt!3837 (__x!13114 Int)) (Broken!19190 (value!116946 List!20973)) (Object!3919) (End!3838) (Def!3838) (Underscore!3838) (Match!3838) (Else!3838) (Error!3838) (Case!3838) (If!3838) (Extends!3838) (Abstract!3838) (Class!3838) (Val!3838) (DelimiterValue!7676 (del!3898 List!20973)) (KeywordValue!3844 (value!116947 List!20973)) (CommentValue!7676 (value!116948 List!20973)) (WhitespaceValue!7676 (value!116949 List!20973)) (IndentationValue!3838 (value!116950 List!20973)) (String!24139) (Int32!3838) (Broken!19191 (value!116951 List!20973)) (Boolean!3839) (Unit!35417) (OperatorValue!3841 (op!3898 List!20973)) (IdentifierValue!7676 (value!116952 List!20973)) (IdentifierValue!7677 (value!116953 List!20973)) (WhitespaceValue!7677 (value!116954 List!20973)) (True!7676) (False!7676) (Broken!19192 (value!116955 List!20973)) (Broken!19193 (value!116956 List!20973)) (True!7677) (RightBrace!3838) (RightBracket!3838) (Colon!3838) (Null!3838) (Comma!3838) (LeftBracket!3838) (False!7677) (LeftBrace!3838) (ImaginaryLiteralValue!3838 (text!27312 List!20973)) (StringLiteralValue!11514 (value!116957 List!20973)) (EOFValue!3838 (value!116958 List!20973)) (IdentValue!3838 (value!116959 List!20973)) (DelimiterValue!7677 (value!116960 List!20973)) (DedentValue!3838 (value!116961 List!20973)) (NewLineValue!3838 (value!116962 List!20973)) (IntegerValue!11514 (value!116963 (_ BitVec 32)) (text!27313 List!20973)) (IntegerValue!11515 (value!116964 Int) (text!27314 List!20973)) (Times!3838) (Or!3838) (Equal!3838) (Minus!3838) (Broken!19194 (value!116965 List!20973)) (And!3838) (Div!3838) (LessEqual!3838) (Mod!3838) (Concat!8949) (Not!3838) (Plus!3838) (SpaceValue!3838 (value!116966 List!20973)) (IntegerValue!11516 (value!116967 Int) (text!27315 List!20973)) (StringLiteralValue!11515 (text!27316 List!20973)) (FloatLiteralValue!7677 (text!27317 List!20973)) (BytesLiteralValue!3838 (value!116968 List!20973)) (CommentValue!7677 (value!116969 List!20973)) (StringLiteralValue!11516 (value!116970 List!20973)) (ErrorTokenValue!3838 (msg!3899 List!20973)) )
))
(declare-datatypes ((C!10380 0))(
  ( (C!10381 (val!6078 Int)) )
))
(declare-datatypes ((Regex!5111 0))(
  ( (ElementMatch!5111 (c!305504 C!10380)) (Concat!8950 (regOne!10734 Regex!5111) (regTwo!10734 Regex!5111)) (EmptyExpr!5111) (Star!5111 (reg!5440 Regex!5111)) (EmptyLang!5111) (Union!5111 (regOne!10735 Regex!5111) (regTwo!10735 Regex!5111)) )
))
(declare-datatypes ((String!24140 0))(
  ( (String!24141 (value!116971 String)) )
))
(declare-datatypes ((List!20974 0))(
  ( (Nil!20892) (Cons!20892 (h!26293 C!10380) (t!173191 List!20974)) )
))
(declare-datatypes ((IArray!13871 0))(
  ( (IArray!13872 (innerList!6993 List!20974)) )
))
(declare-datatypes ((Conc!6933 0))(
  ( (Node!6933 (left!16790 Conc!6933) (right!17120 Conc!6933) (csize!14096 Int) (cheight!7144 Int)) (Leaf!10205 (xs!9817 IArray!13871) (csize!14097 Int)) (Empty!6933) )
))
(declare-datatypes ((BalanceConc!13682 0))(
  ( (BalanceConc!13683 (c!305505 Conc!6933)) )
))
(declare-datatypes ((TokenValueInjection!7260 0))(
  ( (TokenValueInjection!7261 (toValue!5299 Int) (toChars!5158 Int)) )
))
(declare-datatypes ((Rule!7204 0))(
  ( (Rule!7205 (regex!3702 Regex!5111) (tag!4116 String!24140) (isSeparator!3702 Bool) (transformation!3702 TokenValueInjection!7260)) )
))
(declare-datatypes ((Token!6956 0))(
  ( (Token!6957 (value!116972 TokenValue!3838) (rule!5895 Rule!7204) (size!16567 Int) (originalCharacters!4509 List!20974)) )
))
(declare-datatypes ((List!20975 0))(
  ( (Nil!20893) (Cons!20893 (h!26294 Token!6956) (t!173192 List!20975)) )
))
(declare-datatypes ((IArray!13873 0))(
  ( (IArray!13874 (innerList!6994 List!20975)) )
))
(declare-datatypes ((Conc!6934 0))(
  ( (Node!6934 (left!16791 Conc!6934) (right!17121 Conc!6934) (csize!14098 Int) (cheight!7145 Int)) (Leaf!10206 (xs!9818 IArray!13873) (csize!14099 Int)) (Empty!6934) )
))
(declare-datatypes ((BalanceConc!13684 0))(
  ( (BalanceConc!13685 (c!305506 Conc!6934)) )
))
(declare-fun acc!408 () BalanceConc!13684)

(declare-fun tp!534537 () Bool)

(declare-fun inv!27756 (Conc!6934) Bool)

(assert (=> b!1875156 (= e!1196822 (and (inv!27756 (c!305506 acc!408)) tp!534537))))

(declare-fun b!1875157 () Bool)

(declare-fun e!1196820 () Bool)

(declare-fun tp!534541 () Bool)

(declare-fun e!1196823 () Bool)

(declare-fun separatorToken!84 () Token!6956)

(declare-fun inv!21 (TokenValue!3838) Bool)

(assert (=> b!1875157 (= e!1196823 (and (inv!21 (value!116972 separatorToken!84)) e!1196820 tp!534541))))

(declare-fun e!1196816 () Bool)

(assert (=> b!1875158 (= e!1196816 (and tp!534538 tp!534540))))

(declare-fun b!1875159 () Bool)

(declare-fun e!1196824 () Bool)

(declare-fun v!6352 () BalanceConc!13684)

(declare-fun tp!534539 () Bool)

(assert (=> b!1875159 (= e!1196824 (and (inv!27756 (c!305506 v!6352)) tp!534539))))

(declare-fun b!1875160 () Bool)

(declare-fun e!1196821 () Bool)

(declare-fun e!1196819 () Bool)

(assert (=> b!1875160 (= e!1196821 e!1196819)))

(declare-fun res!838610 () Bool)

(assert (=> b!1875160 (=> (not res!838610) (not e!1196819))))

(declare-fun from!845 () Int)

(declare-fun lt!720649 () Int)

(assert (=> b!1875160 (= res!838610 (and (<= from!845 lt!720649) (isSeparator!3702 (rule!5895 separatorToken!84)) (< from!845 lt!720649)))))

(declare-fun size!16568 (BalanceConc!13684) Int)

(assert (=> b!1875160 (= lt!720649 (size!16568 v!6352))))

(declare-fun b!1875161 () Bool)

(declare-fun e!1196817 () Bool)

(assert (=> b!1875161 (= e!1196819 (not e!1196817))))

(declare-fun res!838609 () Bool)

(assert (=> b!1875161 (=> res!838609 e!1196817)))

(declare-datatypes ((LexerInterface!3324 0))(
  ( (LexerInterfaceExt!3321 (__x!13115 Int)) (Lexer!3322) )
))
(declare-fun thiss!13718 () LexerInterface!3324)

(declare-fun lt!720641 () BalanceConc!13684)

(declare-fun lt!720637 () List!20975)

(declare-fun list!8516 (BalanceConc!13684) List!20975)

(declare-fun withSeparatorTokenInner!6 (LexerInterface!3324 BalanceConc!13684 Token!6956 Int BalanceConc!13684) BalanceConc!13684)

(declare-fun ++!5661 (List!20975 List!20975) List!20975)

(assert (=> b!1875161 (= res!838609 (not (= (list!8516 (withSeparatorTokenInner!6 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!720641)) (++!5661 (list!8516 lt!720641) lt!720637))))))

(declare-fun lt!720643 () BalanceConc!13684)

(declare-fun ++!5662 (BalanceConc!13684 BalanceConc!13684) BalanceConc!13684)

(declare-fun singletonSeq!1817 (Token!6956) BalanceConc!13684)

(assert (=> b!1875161 (= lt!720641 (++!5662 acc!408 (++!5662 lt!720643 (singletonSeq!1817 separatorToken!84))))))

(declare-fun lt!720644 () Token!6956)

(assert (=> b!1875161 (= lt!720643 (singletonSeq!1817 lt!720644))))

(declare-fun lt!720639 () List!20975)

(declare-fun lt!720648 () List!20975)

(assert (=> b!1875161 (= (++!5661 (++!5661 lt!720639 lt!720648) lt!720637) (++!5661 lt!720639 (++!5661 lt!720648 lt!720637)))))

(declare-datatypes ((Unit!35418 0))(
  ( (Unit!35419) )
))
(declare-fun lt!720642 () Unit!35418)

(declare-fun lemmaConcatAssociativity!1113 (List!20975 List!20975 List!20975) Unit!35418)

(assert (=> b!1875161 (= lt!720642 (lemmaConcatAssociativity!1113 lt!720639 lt!720648 lt!720637))))

(declare-fun lt!720638 () List!20975)

(declare-fun withSeparatorTokenList!110 (LexerInterface!3324 List!20975 Token!6956) List!20975)

(assert (=> b!1875161 (= lt!720637 (withSeparatorTokenList!110 thiss!13718 lt!720638 separatorToken!84))))

(assert (=> b!1875161 (= lt!720648 (Cons!20893 lt!720644 (Cons!20893 separatorToken!84 Nil!20893)))))

(declare-fun apply!5504 (BalanceConc!13684 Int) Token!6956)

(assert (=> b!1875161 (= lt!720644 (apply!5504 v!6352 from!845))))

(assert (=> b!1875161 (= lt!720639 (list!8516 acc!408))))

(declare-fun lt!720646 () List!20975)

(declare-fun tail!2902 (List!20975) List!20975)

(assert (=> b!1875161 (= (tail!2902 lt!720646) lt!720638)))

(declare-fun lt!720640 () List!20975)

(declare-fun drop!1022 (List!20975 Int) List!20975)

(assert (=> b!1875161 (= lt!720638 (drop!1022 lt!720640 (+ 1 from!845)))))

(declare-fun lt!720645 () Unit!35418)

(declare-fun lemmaDropTail!640 (List!20975 Int) Unit!35418)

(assert (=> b!1875161 (= lt!720645 (lemmaDropTail!640 lt!720640 from!845))))

(declare-fun head!4373 (List!20975) Token!6956)

(declare-fun apply!5505 (List!20975 Int) Token!6956)

(assert (=> b!1875161 (= (head!4373 lt!720646) (apply!5505 lt!720640 from!845))))

(assert (=> b!1875161 (= lt!720646 (drop!1022 lt!720640 from!845))))

(declare-fun lt!720636 () Unit!35418)

(declare-fun lemmaDropApply!660 (List!20975 Int) Unit!35418)

(assert (=> b!1875161 (= lt!720636 (lemmaDropApply!660 lt!720640 from!845))))

(assert (=> b!1875161 (= lt!720640 (list!8516 v!6352))))

(declare-fun res!838611 () Bool)

(assert (=> start!187950 (=> (not res!838611) (not e!1196821))))

(get-info :version)

(assert (=> start!187950 (= res!838611 (and ((_ is Lexer!3322) thiss!13718) (>= from!845 0)))))

(assert (=> start!187950 e!1196821))

(assert (=> start!187950 true))

(declare-fun inv!27757 (BalanceConc!13684) Bool)

(assert (=> start!187950 (and (inv!27757 acc!408) e!1196822)))

(assert (=> start!187950 (and (inv!27757 v!6352) e!1196824)))

(declare-fun inv!27758 (Token!6956) Bool)

(assert (=> start!187950 (and (inv!27758 separatorToken!84) e!1196823)))

(declare-fun b!1875162 () Bool)

(assert (=> b!1875162 (= e!1196817 true)))

(declare-fun lt!720635 () List!20975)

(assert (=> b!1875162 (= lt!720635 (++!5661 lt!720639 (Cons!20893 lt!720644 Nil!20893)))))

(declare-fun lt!720647 () List!20975)

(assert (=> b!1875162 (= lt!720647 (list!8516 (++!5662 acc!408 lt!720643)))))

(declare-fun tp!534536 () Bool)

(declare-fun b!1875163 () Bool)

(declare-fun inv!27751 (String!24140) Bool)

(declare-fun inv!27759 (TokenValueInjection!7260) Bool)

(assert (=> b!1875163 (= e!1196820 (and tp!534536 (inv!27751 (tag!4116 (rule!5895 separatorToken!84))) (inv!27759 (transformation!3702 (rule!5895 separatorToken!84))) e!1196816))))

(assert (= (and start!187950 res!838611) b!1875160))

(assert (= (and b!1875160 res!838610) b!1875161))

(assert (= (and b!1875161 (not res!838609)) b!1875162))

(assert (= start!187950 b!1875156))

(assert (= start!187950 b!1875159))

(assert (= b!1875163 b!1875158))

(assert (= b!1875157 b!1875163))

(assert (= start!187950 b!1875157))

(declare-fun m!2300583 () Bool)

(assert (=> b!1875163 m!2300583))

(declare-fun m!2300585 () Bool)

(assert (=> b!1875163 m!2300585))

(declare-fun m!2300587 () Bool)

(assert (=> b!1875161 m!2300587))

(declare-fun m!2300589 () Bool)

(assert (=> b!1875161 m!2300589))

(declare-fun m!2300591 () Bool)

(assert (=> b!1875161 m!2300591))

(declare-fun m!2300593 () Bool)

(assert (=> b!1875161 m!2300593))

(declare-fun m!2300595 () Bool)

(assert (=> b!1875161 m!2300595))

(declare-fun m!2300597 () Bool)

(assert (=> b!1875161 m!2300597))

(declare-fun m!2300599 () Bool)

(assert (=> b!1875161 m!2300599))

(declare-fun m!2300601 () Bool)

(assert (=> b!1875161 m!2300601))

(declare-fun m!2300603 () Bool)

(assert (=> b!1875161 m!2300603))

(declare-fun m!2300605 () Bool)

(assert (=> b!1875161 m!2300605))

(declare-fun m!2300607 () Bool)

(assert (=> b!1875161 m!2300607))

(declare-fun m!2300609 () Bool)

(assert (=> b!1875161 m!2300609))

(declare-fun m!2300611 () Bool)

(assert (=> b!1875161 m!2300611))

(declare-fun m!2300613 () Bool)

(assert (=> b!1875161 m!2300613))

(declare-fun m!2300615 () Bool)

(assert (=> b!1875161 m!2300615))

(assert (=> b!1875161 m!2300605))

(declare-fun m!2300617 () Bool)

(assert (=> b!1875161 m!2300617))

(declare-fun m!2300619 () Bool)

(assert (=> b!1875161 m!2300619))

(declare-fun m!2300621 () Bool)

(assert (=> b!1875161 m!2300621))

(assert (=> b!1875161 m!2300595))

(assert (=> b!1875161 m!2300609))

(declare-fun m!2300623 () Bool)

(assert (=> b!1875161 m!2300623))

(assert (=> b!1875161 m!2300617))

(assert (=> b!1875161 m!2300607))

(declare-fun m!2300625 () Bool)

(assert (=> b!1875161 m!2300625))

(declare-fun m!2300627 () Bool)

(assert (=> b!1875161 m!2300627))

(declare-fun m!2300629 () Bool)

(assert (=> b!1875161 m!2300629))

(assert (=> b!1875161 m!2300599))

(declare-fun m!2300631 () Bool)

(assert (=> b!1875161 m!2300631))

(declare-fun m!2300633 () Bool)

(assert (=> b!1875161 m!2300633))

(declare-fun m!2300635 () Bool)

(assert (=> b!1875160 m!2300635))

(declare-fun m!2300637 () Bool)

(assert (=> b!1875156 m!2300637))

(declare-fun m!2300639 () Bool)

(assert (=> b!1875159 m!2300639))

(declare-fun m!2300641 () Bool)

(assert (=> b!1875162 m!2300641))

(declare-fun m!2300643 () Bool)

(assert (=> b!1875162 m!2300643))

(assert (=> b!1875162 m!2300643))

(declare-fun m!2300645 () Bool)

(assert (=> b!1875162 m!2300645))

(declare-fun m!2300647 () Bool)

(assert (=> start!187950 m!2300647))

(declare-fun m!2300649 () Bool)

(assert (=> start!187950 m!2300649))

(declare-fun m!2300651 () Bool)

(assert (=> start!187950 m!2300651))

(declare-fun m!2300653 () Bool)

(assert (=> b!1875157 m!2300653))

(check-sat (not b!1875160) (not b_next!52881) (not b_next!52883) (not b!1875159) (not b!1875163) (not b!1875157) (not b!1875162) b_and!144463 (not start!187950) b_and!144465 (not b!1875156) (not b!1875161))
(check-sat b_and!144465 b_and!144463 (not b_next!52881) (not b_next!52883))
