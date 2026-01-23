; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187958 () Bool)

(assert start!187958)

(declare-fun b!1875253 () Bool)

(declare-fun b_free!52193 () Bool)

(declare-fun b_next!52897 () Bool)

(assert (=> b!1875253 (= b_free!52193 (not b_next!52897))))

(declare-fun tp!534610 () Bool)

(declare-fun b_and!144479 () Bool)

(assert (=> b!1875253 (= tp!534610 b_and!144479)))

(declare-fun b_free!52195 () Bool)

(declare-fun b_next!52899 () Bool)

(assert (=> b!1875253 (= b_free!52195 (not b_next!52899))))

(declare-fun tp!534611 () Bool)

(declare-fun b_and!144481 () Bool)

(assert (=> b!1875253 (= tp!534611 b_and!144481)))

(declare-fun e!1196938 () Bool)

(assert (=> b!1875253 (= e!1196938 (and tp!534610 tp!534611))))

(declare-fun res!838646 () Bool)

(declare-fun e!1196934 () Bool)

(assert (=> start!187958 (=> (not res!838646) (not e!1196934))))

(declare-datatypes ((LexerInterface!3328 0))(
  ( (LexerInterfaceExt!3325 (__x!13122 Int)) (Lexer!3326) )
))
(declare-fun thiss!13718 () LexerInterface!3328)

(declare-fun from!845 () Int)

(get-info :version)

(assert (=> start!187958 (= res!838646 (and ((_ is Lexer!3326) thiss!13718) (>= from!845 0)))))

(assert (=> start!187958 e!1196934))

(assert (=> start!187958 true))

(declare-datatypes ((List!20985 0))(
  ( (Nil!20903) (Cons!20903 (h!26304 (_ BitVec 16)) (t!173202 List!20985)) )
))
(declare-datatypes ((TokenValue!3842 0))(
  ( (FloatLiteralValue!7684 (text!27339 List!20985)) (TokenValueExt!3841 (__x!13123 Int)) (Broken!19210 (value!117060 List!20985)) (Object!3923) (End!3842) (Def!3842) (Underscore!3842) (Match!3842) (Else!3842) (Error!3842) (Case!3842) (If!3842) (Extends!3842) (Abstract!3842) (Class!3842) (Val!3842) (DelimiterValue!7684 (del!3902 List!20985)) (KeywordValue!3848 (value!117061 List!20985)) (CommentValue!7684 (value!117062 List!20985)) (WhitespaceValue!7684 (value!117063 List!20985)) (IndentationValue!3842 (value!117064 List!20985)) (String!24159) (Int32!3842) (Broken!19211 (value!117065 List!20985)) (Boolean!3843) (Unit!35429) (OperatorValue!3845 (op!3902 List!20985)) (IdentifierValue!7684 (value!117066 List!20985)) (IdentifierValue!7685 (value!117067 List!20985)) (WhitespaceValue!7685 (value!117068 List!20985)) (True!7684) (False!7684) (Broken!19212 (value!117069 List!20985)) (Broken!19213 (value!117070 List!20985)) (True!7685) (RightBrace!3842) (RightBracket!3842) (Colon!3842) (Null!3842) (Comma!3842) (LeftBracket!3842) (False!7685) (LeftBrace!3842) (ImaginaryLiteralValue!3842 (text!27340 List!20985)) (StringLiteralValue!11526 (value!117071 List!20985)) (EOFValue!3842 (value!117072 List!20985)) (IdentValue!3842 (value!117073 List!20985)) (DelimiterValue!7685 (value!117074 List!20985)) (DedentValue!3842 (value!117075 List!20985)) (NewLineValue!3842 (value!117076 List!20985)) (IntegerValue!11526 (value!117077 (_ BitVec 32)) (text!27341 List!20985)) (IntegerValue!11527 (value!117078 Int) (text!27342 List!20985)) (Times!3842) (Or!3842) (Equal!3842) (Minus!3842) (Broken!19214 (value!117079 List!20985)) (And!3842) (Div!3842) (LessEqual!3842) (Mod!3842) (Concat!8957) (Not!3842) (Plus!3842) (SpaceValue!3842 (value!117080 List!20985)) (IntegerValue!11528 (value!117081 Int) (text!27343 List!20985)) (StringLiteralValue!11527 (text!27344 List!20985)) (FloatLiteralValue!7685 (text!27345 List!20985)) (BytesLiteralValue!3842 (value!117082 List!20985)) (CommentValue!7685 (value!117083 List!20985)) (StringLiteralValue!11528 (value!117084 List!20985)) (ErrorTokenValue!3842 (msg!3903 List!20985)) )
))
(declare-datatypes ((C!10388 0))(
  ( (C!10389 (val!6082 Int)) )
))
(declare-datatypes ((Regex!5115 0))(
  ( (ElementMatch!5115 (c!305516 C!10388)) (Concat!8958 (regOne!10742 Regex!5115) (regTwo!10742 Regex!5115)) (EmptyExpr!5115) (Star!5115 (reg!5444 Regex!5115)) (EmptyLang!5115) (Union!5115 (regOne!10743 Regex!5115) (regTwo!10743 Regex!5115)) )
))
(declare-datatypes ((List!20986 0))(
  ( (Nil!20904) (Cons!20904 (h!26305 C!10388) (t!173203 List!20986)) )
))
(declare-datatypes ((IArray!13887 0))(
  ( (IArray!13888 (innerList!7001 List!20986)) )
))
(declare-datatypes ((Conc!6941 0))(
  ( (Node!6941 (left!16800 Conc!6941) (right!17130 Conc!6941) (csize!14112 Int) (cheight!7152 Int)) (Leaf!10215 (xs!9825 IArray!13887) (csize!14113 Int)) (Empty!6941) )
))
(declare-datatypes ((BalanceConc!13698 0))(
  ( (BalanceConc!13699 (c!305517 Conc!6941)) )
))
(declare-datatypes ((TokenValueInjection!7268 0))(
  ( (TokenValueInjection!7269 (toValue!5303 Int) (toChars!5162 Int)) )
))
(declare-datatypes ((String!24160 0))(
  ( (String!24161 (value!117085 String)) )
))
(declare-datatypes ((Rule!7212 0))(
  ( (Rule!7213 (regex!3706 Regex!5115) (tag!4120 String!24160) (isSeparator!3706 Bool) (transformation!3706 TokenValueInjection!7268)) )
))
(declare-datatypes ((Token!6964 0))(
  ( (Token!6965 (value!117086 TokenValue!3842) (rule!5899 Rule!7212) (size!16575 Int) (originalCharacters!4513 List!20986)) )
))
(declare-datatypes ((List!20987 0))(
  ( (Nil!20905) (Cons!20905 (h!26306 Token!6964) (t!173204 List!20987)) )
))
(declare-datatypes ((IArray!13889 0))(
  ( (IArray!13890 (innerList!7002 List!20987)) )
))
(declare-datatypes ((Conc!6942 0))(
  ( (Node!6942 (left!16801 Conc!6942) (right!17131 Conc!6942) (csize!14114 Int) (cheight!7153 Int)) (Leaf!10216 (xs!9826 IArray!13889) (csize!14115 Int)) (Empty!6942) )
))
(declare-datatypes ((BalanceConc!13700 0))(
  ( (BalanceConc!13701 (c!305518 Conc!6942)) )
))
(declare-fun acc!408 () BalanceConc!13700)

(declare-fun e!1196936 () Bool)

(declare-fun inv!27778 (BalanceConc!13700) Bool)

(assert (=> start!187958 (and (inv!27778 acc!408) e!1196936)))

(declare-fun v!6352 () BalanceConc!13700)

(declare-fun e!1196939 () Bool)

(assert (=> start!187958 (and (inv!27778 v!6352) e!1196939)))

(declare-fun separatorToken!84 () Token!6964)

(declare-fun e!1196931 () Bool)

(declare-fun inv!27779 (Token!6964) Bool)

(assert (=> start!187958 (and (inv!27779 separatorToken!84) e!1196931)))

(declare-fun lt!720790 () List!20987)

(declare-fun lt!720788 () BalanceConc!13700)

(declare-fun e!1196935 () Bool)

(declare-fun b!1875254 () Bool)

(declare-fun list!8520 (BalanceConc!13700) List!20987)

(declare-fun withSeparatorTokenInner!10 (LexerInterface!3328 BalanceConc!13700 Token!6964 Int BalanceConc!13700) BalanceConc!13700)

(declare-fun ++!5669 (List!20987 List!20987) List!20987)

(assert (=> b!1875254 (= e!1196935 (not (= (list!8520 (withSeparatorTokenInner!10 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!720788)) (++!5669 (list!8520 lt!720788) lt!720790))))))

(declare-fun lt!720795 () Token!6964)

(declare-fun ++!5670 (BalanceConc!13700 BalanceConc!13700) BalanceConc!13700)

(declare-fun singletonSeq!1821 (Token!6964) BalanceConc!13700)

(assert (=> b!1875254 (= lt!720788 (++!5670 acc!408 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84))))))

(declare-fun lt!720798 () List!20987)

(declare-fun lt!720796 () List!20987)

(assert (=> b!1875254 (= (++!5669 (++!5669 lt!720798 lt!720796) lt!720790) (++!5669 lt!720798 (++!5669 lt!720796 lt!720790)))))

(declare-datatypes ((Unit!35430 0))(
  ( (Unit!35431) )
))
(declare-fun lt!720793 () Unit!35430)

(declare-fun lemmaConcatAssociativity!1117 (List!20987 List!20987 List!20987) Unit!35430)

(assert (=> b!1875254 (= lt!720793 (lemmaConcatAssociativity!1117 lt!720798 lt!720796 lt!720790))))

(declare-fun lt!720792 () List!20987)

(declare-fun withSeparatorTokenList!114 (LexerInterface!3328 List!20987 Token!6964) List!20987)

(assert (=> b!1875254 (= lt!720790 (withSeparatorTokenList!114 thiss!13718 lt!720792 separatorToken!84))))

(assert (=> b!1875254 (= lt!720796 (Cons!20905 lt!720795 (Cons!20905 separatorToken!84 Nil!20905)))))

(declare-fun apply!5512 (BalanceConc!13700 Int) Token!6964)

(assert (=> b!1875254 (= lt!720795 (apply!5512 v!6352 from!845))))

(assert (=> b!1875254 (= lt!720798 (list!8520 acc!408))))

(declare-fun lt!720789 () List!20987)

(declare-fun tail!2906 (List!20987) List!20987)

(assert (=> b!1875254 (= (tail!2906 lt!720789) lt!720792)))

(declare-fun lt!720794 () List!20987)

(declare-fun drop!1026 (List!20987 Int) List!20987)

(assert (=> b!1875254 (= lt!720792 (drop!1026 lt!720794 (+ 1 from!845)))))

(declare-fun lt!720799 () Unit!35430)

(declare-fun lemmaDropTail!644 (List!20987 Int) Unit!35430)

(assert (=> b!1875254 (= lt!720799 (lemmaDropTail!644 lt!720794 from!845))))

(declare-fun head!4377 (List!20987) Token!6964)

(declare-fun apply!5513 (List!20987 Int) Token!6964)

(assert (=> b!1875254 (= (head!4377 lt!720789) (apply!5513 lt!720794 from!845))))

(assert (=> b!1875254 (= lt!720789 (drop!1026 lt!720794 from!845))))

(declare-fun lt!720791 () Unit!35430)

(declare-fun lemmaDropApply!664 (List!20987 Int) Unit!35430)

(assert (=> b!1875254 (= lt!720791 (lemmaDropApply!664 lt!720794 from!845))))

(assert (=> b!1875254 (= lt!720794 (list!8520 v!6352))))

(declare-fun b!1875255 () Bool)

(declare-fun tp!534608 () Bool)

(declare-fun inv!27780 (Conc!6942) Bool)

(assert (=> b!1875255 (= e!1196939 (and (inv!27780 (c!305518 v!6352)) tp!534608))))

(declare-fun b!1875256 () Bool)

(assert (=> b!1875256 (= e!1196934 e!1196935)))

(declare-fun res!838647 () Bool)

(assert (=> b!1875256 (=> (not res!838647) (not e!1196935))))

(declare-fun lt!720797 () Int)

(assert (=> b!1875256 (= res!838647 (and (<= from!845 lt!720797) (isSeparator!3706 (rule!5899 separatorToken!84)) (< from!845 lt!720797)))))

(declare-fun size!16576 (BalanceConc!13700) Int)

(assert (=> b!1875256 (= lt!720797 (size!16576 v!6352))))

(declare-fun b!1875257 () Bool)

(declare-fun tp!534612 () Bool)

(assert (=> b!1875257 (= e!1196936 (and (inv!27780 (c!305518 acc!408)) tp!534612))))

(declare-fun b!1875258 () Bool)

(declare-fun e!1196937 () Bool)

(declare-fun tp!534613 () Bool)

(declare-fun inv!27773 (String!24160) Bool)

(declare-fun inv!27781 (TokenValueInjection!7268) Bool)

(assert (=> b!1875258 (= e!1196937 (and tp!534613 (inv!27773 (tag!4120 (rule!5899 separatorToken!84))) (inv!27781 (transformation!3706 (rule!5899 separatorToken!84))) e!1196938))))

(declare-fun tp!534609 () Bool)

(declare-fun b!1875259 () Bool)

(declare-fun inv!21 (TokenValue!3842) Bool)

(assert (=> b!1875259 (= e!1196931 (and (inv!21 (value!117086 separatorToken!84)) e!1196937 tp!534609))))

(assert (= (and start!187958 res!838646) b!1875256))

(assert (= (and b!1875256 res!838647) b!1875254))

(assert (= start!187958 b!1875257))

(assert (= start!187958 b!1875255))

(assert (= b!1875258 b!1875253))

(assert (= b!1875259 b!1875258))

(assert (= start!187958 b!1875259))

(declare-fun m!2300865 () Bool)

(assert (=> b!1875257 m!2300865))

(declare-fun m!2300867 () Bool)

(assert (=> b!1875259 m!2300867))

(declare-fun m!2300869 () Bool)

(assert (=> start!187958 m!2300869))

(declare-fun m!2300871 () Bool)

(assert (=> start!187958 m!2300871))

(declare-fun m!2300873 () Bool)

(assert (=> start!187958 m!2300873))

(declare-fun m!2300875 () Bool)

(assert (=> b!1875254 m!2300875))

(declare-fun m!2300877 () Bool)

(assert (=> b!1875254 m!2300877))

(declare-fun m!2300879 () Bool)

(assert (=> b!1875254 m!2300879))

(declare-fun m!2300881 () Bool)

(assert (=> b!1875254 m!2300881))

(declare-fun m!2300883 () Bool)

(assert (=> b!1875254 m!2300883))

(declare-fun m!2300885 () Bool)

(assert (=> b!1875254 m!2300885))

(declare-fun m!2300887 () Bool)

(assert (=> b!1875254 m!2300887))

(declare-fun m!2300889 () Bool)

(assert (=> b!1875254 m!2300889))

(declare-fun m!2300891 () Bool)

(assert (=> b!1875254 m!2300891))

(assert (=> b!1875254 m!2300889))

(declare-fun m!2300893 () Bool)

(assert (=> b!1875254 m!2300893))

(declare-fun m!2300895 () Bool)

(assert (=> b!1875254 m!2300895))

(declare-fun m!2300897 () Bool)

(assert (=> b!1875254 m!2300897))

(declare-fun m!2300899 () Bool)

(assert (=> b!1875254 m!2300899))

(declare-fun m!2300901 () Bool)

(assert (=> b!1875254 m!2300901))

(declare-fun m!2300903 () Bool)

(assert (=> b!1875254 m!2300903))

(declare-fun m!2300905 () Bool)

(assert (=> b!1875254 m!2300905))

(declare-fun m!2300907 () Bool)

(assert (=> b!1875254 m!2300907))

(assert (=> b!1875254 m!2300877))

(declare-fun m!2300909 () Bool)

(assert (=> b!1875254 m!2300909))

(declare-fun m!2300911 () Bool)

(assert (=> b!1875254 m!2300911))

(declare-fun m!2300913 () Bool)

(assert (=> b!1875254 m!2300913))

(declare-fun m!2300915 () Bool)

(assert (=> b!1875254 m!2300915))

(assert (=> b!1875254 m!2300913))

(declare-fun m!2300917 () Bool)

(assert (=> b!1875254 m!2300917))

(declare-fun m!2300919 () Bool)

(assert (=> b!1875254 m!2300919))

(declare-fun m!2300921 () Bool)

(assert (=> b!1875254 m!2300921))

(assert (=> b!1875254 m!2300897))

(assert (=> b!1875254 m!2300887))

(assert (=> b!1875254 m!2300875))

(assert (=> b!1875254 m!2300909))

(declare-fun m!2300923 () Bool)

(assert (=> b!1875255 m!2300923))

(declare-fun m!2300925 () Bool)

(assert (=> b!1875256 m!2300925))

(declare-fun m!2300927 () Bool)

(assert (=> b!1875258 m!2300927))

(declare-fun m!2300929 () Bool)

(assert (=> b!1875258 m!2300929))

(check-sat b_and!144481 (not b!1875255) (not b_next!52899) (not b!1875258) (not start!187958) b_and!144479 (not b!1875257) (not b!1875254) (not b_next!52897) (not b!1875259) (not b!1875256))
(check-sat b_and!144481 b_and!144479 (not b_next!52897) (not b_next!52899))
(get-model)

(declare-fun b!1875346 () Bool)

(declare-fun res!838696 () Bool)

(declare-fun e!1196987 () Bool)

(assert (=> b!1875346 (=> res!838696 e!1196987)))

(assert (=> b!1875346 (= res!838696 (not ((_ is IntegerValue!11528) (value!117086 separatorToken!84))))))

(declare-fun e!1196985 () Bool)

(assert (=> b!1875346 (= e!1196985 e!1196987)))

(declare-fun b!1875347 () Bool)

(declare-fun e!1196986 () Bool)

(assert (=> b!1875347 (= e!1196986 e!1196985)))

(declare-fun c!305543 () Bool)

(assert (=> b!1875347 (= c!305543 ((_ is IntegerValue!11527) (value!117086 separatorToken!84)))))

(declare-fun b!1875348 () Bool)

(declare-fun inv!16 (TokenValue!3842) Bool)

(assert (=> b!1875348 (= e!1196986 (inv!16 (value!117086 separatorToken!84)))))

(declare-fun b!1875350 () Bool)

(declare-fun inv!15 (TokenValue!3842) Bool)

(assert (=> b!1875350 (= e!1196987 (inv!15 (value!117086 separatorToken!84)))))

(declare-fun d!572848 () Bool)

(declare-fun c!305542 () Bool)

(assert (=> d!572848 (= c!305542 ((_ is IntegerValue!11526) (value!117086 separatorToken!84)))))

(assert (=> d!572848 (= (inv!21 (value!117086 separatorToken!84)) e!1196986)))

(declare-fun b!1875349 () Bool)

(declare-fun inv!17 (TokenValue!3842) Bool)

(assert (=> b!1875349 (= e!1196985 (inv!17 (value!117086 separatorToken!84)))))

(assert (= (and d!572848 c!305542) b!1875348))

(assert (= (and d!572848 (not c!305542)) b!1875347))

(assert (= (and b!1875347 c!305543) b!1875349))

(assert (= (and b!1875347 (not c!305543)) b!1875346))

(assert (= (and b!1875346 (not res!838696)) b!1875350))

(declare-fun m!2301039 () Bool)

(assert (=> b!1875348 m!2301039))

(declare-fun m!2301041 () Bool)

(assert (=> b!1875350 m!2301041))

(declare-fun m!2301043 () Bool)

(assert (=> b!1875349 m!2301043))

(assert (=> b!1875259 d!572848))

(declare-fun d!572850 () Bool)

(assert (=> d!572850 (= (head!4377 (drop!1026 lt!720794 from!845)) (apply!5513 lt!720794 from!845))))

(declare-fun lt!720838 () Unit!35430)

(declare-fun choose!11772 (List!20987 Int) Unit!35430)

(assert (=> d!572850 (= lt!720838 (choose!11772 lt!720794 from!845))))

(declare-fun e!1197002 () Bool)

(assert (=> d!572850 e!1197002))

(declare-fun res!838707 () Bool)

(assert (=> d!572850 (=> (not res!838707) (not e!1197002))))

(assert (=> d!572850 (= res!838707 (>= from!845 0))))

(assert (=> d!572850 (= (lemmaDropApply!664 lt!720794 from!845) lt!720838)))

(declare-fun b!1875373 () Bool)

(declare-fun size!16579 (List!20987) Int)

(assert (=> b!1875373 (= e!1197002 (< from!845 (size!16579 lt!720794)))))

(assert (= (and d!572850 res!838707) b!1875373))

(assert (=> d!572850 m!2300917))

(assert (=> d!572850 m!2300917))

(declare-fun m!2301045 () Bool)

(assert (=> d!572850 m!2301045))

(assert (=> d!572850 m!2300885))

(declare-fun m!2301047 () Bool)

(assert (=> d!572850 m!2301047))

(declare-fun m!2301049 () Bool)

(assert (=> b!1875373 m!2301049))

(assert (=> b!1875254 d!572850))

(declare-fun b!1875408 () Bool)

(declare-fun e!1197024 () List!20987)

(assert (=> b!1875408 (= e!1197024 (++!5669 lt!720796 lt!720790))))

(declare-fun b!1875410 () Bool)

(declare-fun res!838722 () Bool)

(declare-fun e!1197023 () Bool)

(assert (=> b!1875410 (=> (not res!838722) (not e!1197023))))

(declare-fun lt!720854 () List!20987)

(assert (=> b!1875410 (= res!838722 (= (size!16579 lt!720854) (+ (size!16579 lt!720798) (size!16579 (++!5669 lt!720796 lt!720790)))))))

(declare-fun d!572852 () Bool)

(assert (=> d!572852 e!1197023))

(declare-fun res!838723 () Bool)

(assert (=> d!572852 (=> (not res!838723) (not e!1197023))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3107 (List!20987) (InoxSet Token!6964))

(assert (=> d!572852 (= res!838723 (= (content!3107 lt!720854) ((_ map or) (content!3107 lt!720798) (content!3107 (++!5669 lt!720796 lt!720790)))))))

(assert (=> d!572852 (= lt!720854 e!1197024)))

(declare-fun c!305560 () Bool)

(assert (=> d!572852 (= c!305560 ((_ is Nil!20905) lt!720798))))

(assert (=> d!572852 (= (++!5669 lt!720798 (++!5669 lt!720796 lt!720790)) lt!720854)))

(declare-fun b!1875409 () Bool)

(assert (=> b!1875409 (= e!1197024 (Cons!20905 (h!26306 lt!720798) (++!5669 (t!173204 lt!720798) (++!5669 lt!720796 lt!720790))))))

(declare-fun b!1875411 () Bool)

(assert (=> b!1875411 (= e!1197023 (or (not (= (++!5669 lt!720796 lt!720790) Nil!20905)) (= lt!720854 lt!720798)))))

(assert (= (and d!572852 c!305560) b!1875408))

(assert (= (and d!572852 (not c!305560)) b!1875409))

(assert (= (and d!572852 res!838723) b!1875410))

(assert (= (and b!1875410 res!838722) b!1875411))

(declare-fun m!2301125 () Bool)

(assert (=> b!1875410 m!2301125))

(declare-fun m!2301127 () Bool)

(assert (=> b!1875410 m!2301127))

(assert (=> b!1875410 m!2300889))

(declare-fun m!2301129 () Bool)

(assert (=> b!1875410 m!2301129))

(declare-fun m!2301131 () Bool)

(assert (=> d!572852 m!2301131))

(declare-fun m!2301133 () Bool)

(assert (=> d!572852 m!2301133))

(assert (=> d!572852 m!2300889))

(declare-fun m!2301135 () Bool)

(assert (=> d!572852 m!2301135))

(assert (=> b!1875409 m!2300889))

(declare-fun m!2301137 () Bool)

(assert (=> b!1875409 m!2301137))

(assert (=> b!1875254 d!572852))

(declare-fun b!1875480 () Bool)

(declare-fun e!1197072 () List!20986)

(assert (=> b!1875480 (= e!1197072 Nil!20904)))

(declare-fun e!1197069 () List!20987)

(declare-fun b!1875481 () Bool)

(declare-fun $colon$colon!490 (List!20987 Token!6964) List!20987)

(assert (=> b!1875481 (= e!1197069 ($colon$colon!490 ($colon$colon!490 (withSeparatorTokenList!114 thiss!13718 (t!173204 lt!720792) separatorToken!84) separatorToken!84) (h!26306 lt!720792)))))

(declare-fun lt!720921 () List!20986)

(declare-fun list!8523 (BalanceConc!13698) List!20986)

(declare-fun charsOf!2298 (Token!6964) BalanceConc!13698)

(assert (=> b!1875481 (= lt!720921 (list!8523 (charsOf!2298 (h!26306 lt!720792))))))

(declare-fun lt!720926 () List!20986)

(assert (=> b!1875481 (= lt!720926 (list!8523 (charsOf!2298 separatorToken!84)))))

(declare-fun lt!720923 () List!20986)

(declare-fun printList!1008 (LexerInterface!3328 List!20987) List!20986)

(assert (=> b!1875481 (= lt!720923 (printList!1008 thiss!13718 (withSeparatorTokenList!114 thiss!13718 (t!173204 lt!720792) separatorToken!84)))))

(declare-fun lt!720920 () Unit!35430)

(declare-fun lemmaConcatAssociativity!1119 (List!20986 List!20986 List!20986) Unit!35430)

(assert (=> b!1875481 (= lt!720920 (lemmaConcatAssociativity!1119 lt!720921 lt!720926 lt!720923))))

(declare-fun ++!5673 (List!20986 List!20986) List!20986)

(assert (=> b!1875481 (= (++!5673 (++!5673 lt!720921 lt!720926) lt!720923) (++!5673 lt!720921 (++!5673 lt!720926 lt!720923)))))

(declare-fun lt!720925 () Unit!35430)

(assert (=> b!1875481 (= lt!720925 lt!720920)))

(declare-fun b!1875482 () Bool)

(declare-fun e!1197074 () Bool)

(declare-fun e!1197071 () Bool)

(assert (=> b!1875482 (= e!1197074 e!1197071)))

(declare-fun res!838752 () Bool)

(assert (=> b!1875482 (=> res!838752 e!1197071)))

(assert (=> b!1875482 (= res!838752 (not ((_ is Cons!20905) lt!720792)))))

(declare-fun b!1875483 () Bool)

(declare-fun res!838755 () Bool)

(assert (=> b!1875483 (=> (not res!838755) (not e!1197074))))

(declare-fun e!1197073 () Bool)

(assert (=> b!1875483 (= res!838755 e!1197073)))

(declare-fun res!838753 () Bool)

(assert (=> b!1875483 (=> res!838753 e!1197073)))

(assert (=> b!1875483 (= res!838753 (not ((_ is Cons!20905) lt!720792)))))

(declare-fun b!1875484 () Bool)

(declare-fun lt!720922 () List!20987)

(assert (=> b!1875484 (= e!1197072 (++!5673 (list!8523 (charsOf!2298 (h!26306 lt!720922))) (printList!1008 thiss!13718 (t!173204 lt!720922))))))

(declare-fun b!1875485 () Bool)

(assert (=> b!1875485 (= e!1197069 Nil!20905)))

(declare-fun b!1875486 () Bool)

(declare-fun e!1197070 () List!20986)

(assert (=> b!1875486 (= e!1197070 Nil!20904)))

(declare-fun b!1875487 () Bool)

(assert (=> b!1875487 (= e!1197071 (= (printList!1008 thiss!13718 ($colon$colon!490 (withSeparatorTokenList!114 thiss!13718 (t!173204 lt!720792) separatorToken!84) separatorToken!84)) e!1197070))))

(declare-fun c!305583 () Bool)

(declare-fun lt!720924 () List!20987)

(assert (=> b!1875487 (= c!305583 ((_ is Cons!20905) lt!720924))))

(assert (=> b!1875487 (= lt!720924 ($colon$colon!490 (withSeparatorTokenList!114 thiss!13718 (t!173204 lt!720792) separatorToken!84) separatorToken!84))))

(declare-fun d!572864 () Bool)

(declare-fun lt!720919 () List!20987)

(declare-fun printWithSeparatorTokenList!66 (LexerInterface!3328 List!20987 Token!6964) List!20986)

(assert (=> d!572864 (= (printList!1008 thiss!13718 lt!720919) (printWithSeparatorTokenList!66 thiss!13718 lt!720792 separatorToken!84))))

(assert (=> d!572864 (= lt!720919 e!1197069)))

(declare-fun c!305581 () Bool)

(assert (=> d!572864 (= c!305581 ((_ is Cons!20905) lt!720792))))

(assert (=> d!572864 e!1197074))

(declare-fun res!838754 () Bool)

(assert (=> d!572864 (=> (not res!838754) (not e!1197074))))

(assert (=> d!572864 (= res!838754 (isSeparator!3706 (rule!5899 separatorToken!84)))))

(assert (=> d!572864 (= (withSeparatorTokenList!114 thiss!13718 lt!720792 separatorToken!84) lt!720919)))

(declare-fun b!1875488 () Bool)

(assert (=> b!1875488 (= e!1197073 (= (printList!1008 thiss!13718 ($colon$colon!490 ($colon$colon!490 (withSeparatorTokenList!114 thiss!13718 (t!173204 lt!720792) separatorToken!84) separatorToken!84) (h!26306 lt!720792))) e!1197072))))

(declare-fun c!305582 () Bool)

(assert (=> b!1875488 (= c!305582 ((_ is Cons!20905) lt!720922))))

(assert (=> b!1875488 (= lt!720922 ($colon$colon!490 ($colon$colon!490 (withSeparatorTokenList!114 thiss!13718 (t!173204 lt!720792) separatorToken!84) separatorToken!84) (h!26306 lt!720792)))))

(declare-fun b!1875489 () Bool)

(assert (=> b!1875489 (= e!1197070 (++!5673 (list!8523 (charsOf!2298 (h!26306 lt!720924))) (printList!1008 thiss!13718 (t!173204 lt!720924))))))

(assert (= (and d!572864 res!838754) b!1875483))

(assert (= (and b!1875483 (not res!838753)) b!1875488))

(assert (= (and b!1875488 c!305582) b!1875484))

(assert (= (and b!1875488 (not c!305582)) b!1875480))

(assert (= (and b!1875483 res!838755) b!1875482))

(assert (= (and b!1875482 (not res!838752)) b!1875487))

(assert (= (and b!1875487 c!305583) b!1875489))

(assert (= (and b!1875487 (not c!305583)) b!1875486))

(assert (= (and d!572864 c!305581) b!1875481))

(assert (= (and d!572864 (not c!305581)) b!1875485))

(declare-fun m!2301249 () Bool)

(assert (=> b!1875488 m!2301249))

(assert (=> b!1875488 m!2301249))

(declare-fun m!2301251 () Bool)

(assert (=> b!1875488 m!2301251))

(assert (=> b!1875488 m!2301251))

(declare-fun m!2301253 () Bool)

(assert (=> b!1875488 m!2301253))

(assert (=> b!1875488 m!2301253))

(declare-fun m!2301255 () Bool)

(assert (=> b!1875488 m!2301255))

(declare-fun m!2301257 () Bool)

(assert (=> d!572864 m!2301257))

(declare-fun m!2301259 () Bool)

(assert (=> d!572864 m!2301259))

(assert (=> b!1875481 m!2301249))

(declare-fun m!2301261 () Bool)

(assert (=> b!1875481 m!2301261))

(declare-fun m!2301263 () Bool)

(assert (=> b!1875481 m!2301263))

(declare-fun m!2301265 () Bool)

(assert (=> b!1875481 m!2301265))

(declare-fun m!2301267 () Bool)

(assert (=> b!1875481 m!2301267))

(declare-fun m!2301269 () Bool)

(assert (=> b!1875481 m!2301269))

(assert (=> b!1875481 m!2301249))

(declare-fun m!2301271 () Bool)

(assert (=> b!1875481 m!2301271))

(assert (=> b!1875481 m!2301267))

(declare-fun m!2301273 () Bool)

(assert (=> b!1875481 m!2301273))

(assert (=> b!1875481 m!2301251))

(assert (=> b!1875481 m!2301253))

(assert (=> b!1875481 m!2301261))

(assert (=> b!1875481 m!2301269))

(declare-fun m!2301275 () Bool)

(assert (=> b!1875481 m!2301275))

(declare-fun m!2301277 () Bool)

(assert (=> b!1875481 m!2301277))

(declare-fun m!2301279 () Bool)

(assert (=> b!1875481 m!2301279))

(assert (=> b!1875481 m!2301249))

(assert (=> b!1875481 m!2301251))

(assert (=> b!1875481 m!2301277))

(declare-fun m!2301281 () Bool)

(assert (=> b!1875489 m!2301281))

(assert (=> b!1875489 m!2301281))

(declare-fun m!2301283 () Bool)

(assert (=> b!1875489 m!2301283))

(declare-fun m!2301285 () Bool)

(assert (=> b!1875489 m!2301285))

(assert (=> b!1875489 m!2301283))

(assert (=> b!1875489 m!2301285))

(declare-fun m!2301287 () Bool)

(assert (=> b!1875489 m!2301287))

(assert (=> b!1875487 m!2301249))

(assert (=> b!1875487 m!2301249))

(assert (=> b!1875487 m!2301251))

(assert (=> b!1875487 m!2301251))

(declare-fun m!2301289 () Bool)

(assert (=> b!1875487 m!2301289))

(declare-fun m!2301291 () Bool)

(assert (=> b!1875484 m!2301291))

(assert (=> b!1875484 m!2301291))

(declare-fun m!2301293 () Bool)

(assert (=> b!1875484 m!2301293))

(declare-fun m!2301295 () Bool)

(assert (=> b!1875484 m!2301295))

(assert (=> b!1875484 m!2301293))

(assert (=> b!1875484 m!2301295))

(declare-fun m!2301301 () Bool)

(assert (=> b!1875484 m!2301301))

(assert (=> b!1875254 d!572864))

(declare-fun d!572892 () Bool)

(declare-fun list!8524 (Conc!6942) List!20987)

(assert (=> d!572892 (= (list!8520 (withSeparatorTokenInner!10 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!720788)) (list!8524 (c!305518 (withSeparatorTokenInner!10 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!720788))))))

(declare-fun bs!412190 () Bool)

(assert (= bs!412190 d!572892))

(declare-fun m!2301311 () Bool)

(assert (=> bs!412190 m!2301311))

(assert (=> b!1875254 d!572892))

(declare-fun d!572894 () Bool)

(assert (=> d!572894 (= (tail!2906 (drop!1026 lt!720794 from!845)) (drop!1026 lt!720794 (+ from!845 1)))))

(declare-fun lt!720929 () Unit!35430)

(declare-fun choose!11773 (List!20987 Int) Unit!35430)

(assert (=> d!572894 (= lt!720929 (choose!11773 lt!720794 from!845))))

(declare-fun e!1197099 () Bool)

(assert (=> d!572894 e!1197099))

(declare-fun res!838762 () Bool)

(assert (=> d!572894 (=> (not res!838762) (not e!1197099))))

(assert (=> d!572894 (= res!838762 (>= from!845 0))))

(assert (=> d!572894 (= (lemmaDropTail!644 lt!720794 from!845) lt!720929)))

(declare-fun b!1875537 () Bool)

(assert (=> b!1875537 (= e!1197099 (< from!845 (size!16579 lt!720794)))))

(assert (= (and d!572894 res!838762) b!1875537))

(assert (=> d!572894 m!2300917))

(assert (=> d!572894 m!2300917))

(declare-fun m!2301313 () Bool)

(assert (=> d!572894 m!2301313))

(declare-fun m!2301315 () Bool)

(assert (=> d!572894 m!2301315))

(declare-fun m!2301317 () Bool)

(assert (=> d!572894 m!2301317))

(assert (=> b!1875537 m!2301049))

(assert (=> b!1875254 d!572894))

(declare-fun b!1875556 () Bool)

(declare-fun e!1197114 () List!20987)

(declare-fun e!1197113 () List!20987)

(assert (=> b!1875556 (= e!1197114 e!1197113)))

(declare-fun c!305596 () Bool)

(assert (=> b!1875556 (= c!305596 (<= from!845 0))))

(declare-fun b!1875557 () Bool)

(assert (=> b!1875557 (= e!1197113 (drop!1026 (t!173204 lt!720794) (- from!845 1)))))

(declare-fun b!1875558 () Bool)

(assert (=> b!1875558 (= e!1197114 Nil!20905)))

(declare-fun bm!116148 () Bool)

(declare-fun call!116153 () Int)

(assert (=> bm!116148 (= call!116153 (size!16579 lt!720794))))

(declare-fun d!572896 () Bool)

(declare-fun e!1197111 () Bool)

(assert (=> d!572896 e!1197111))

(declare-fun res!838765 () Bool)

(assert (=> d!572896 (=> (not res!838765) (not e!1197111))))

(declare-fun lt!720932 () List!20987)

(assert (=> d!572896 (= res!838765 (= ((_ map implies) (content!3107 lt!720932) (content!3107 lt!720794)) ((as const (InoxSet Token!6964)) true)))))

(assert (=> d!572896 (= lt!720932 e!1197114)))

(declare-fun c!305598 () Bool)

(assert (=> d!572896 (= c!305598 ((_ is Nil!20905) lt!720794))))

(assert (=> d!572896 (= (drop!1026 lt!720794 from!845) lt!720932)))

(declare-fun b!1875559 () Bool)

(declare-fun e!1197112 () Int)

(assert (=> b!1875559 (= e!1197112 call!116153)))

(declare-fun b!1875560 () Bool)

(assert (=> b!1875560 (= e!1197113 lt!720794)))

(declare-fun b!1875561 () Bool)

(declare-fun e!1197110 () Int)

(assert (=> b!1875561 (= e!1197112 e!1197110)))

(declare-fun c!305597 () Bool)

(assert (=> b!1875561 (= c!305597 (>= from!845 call!116153))))

(declare-fun b!1875562 () Bool)

(assert (=> b!1875562 (= e!1197110 0)))

(declare-fun b!1875563 () Bool)

(assert (=> b!1875563 (= e!1197110 (- call!116153 from!845))))

(declare-fun b!1875564 () Bool)

(assert (=> b!1875564 (= e!1197111 (= (size!16579 lt!720932) e!1197112))))

(declare-fun c!305599 () Bool)

(assert (=> b!1875564 (= c!305599 (<= from!845 0))))

(assert (= (and d!572896 c!305598) b!1875558))

(assert (= (and d!572896 (not c!305598)) b!1875556))

(assert (= (and b!1875556 c!305596) b!1875560))

(assert (= (and b!1875556 (not c!305596)) b!1875557))

(assert (= (and d!572896 res!838765) b!1875564))

(assert (= (and b!1875564 c!305599) b!1875559))

(assert (= (and b!1875564 (not c!305599)) b!1875561))

(assert (= (and b!1875561 c!305597) b!1875562))

(assert (= (and b!1875561 (not c!305597)) b!1875563))

(assert (= (or b!1875559 b!1875561 b!1875563) bm!116148))

(declare-fun m!2301319 () Bool)

(assert (=> b!1875557 m!2301319))

(assert (=> bm!116148 m!2301049))

(declare-fun m!2301321 () Bool)

(assert (=> d!572896 m!2301321))

(declare-fun m!2301323 () Bool)

(assert (=> d!572896 m!2301323))

(declare-fun m!2301325 () Bool)

(assert (=> b!1875564 m!2301325))

(assert (=> b!1875254 d!572896))

(declare-fun b!1875573 () Bool)

(declare-fun res!838774 () Bool)

(declare-fun e!1197117 () Bool)

(assert (=> b!1875573 (=> (not res!838774) (not e!1197117))))

(declare-fun isBalanced!2197 (Conc!6942) Bool)

(declare-fun ++!5674 (Conc!6942 Conc!6942) Conc!6942)

(assert (=> b!1875573 (= res!838774 (isBalanced!2197 (++!5674 (c!305518 acc!408) (c!305518 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84))))))))

(declare-fun d!572898 () Bool)

(assert (=> d!572898 e!1197117))

(declare-fun res!838775 () Bool)

(assert (=> d!572898 (=> (not res!838775) (not e!1197117))))

(declare-fun appendAssocInst!514 (Conc!6942 Conc!6942) Bool)

(assert (=> d!572898 (= res!838775 (appendAssocInst!514 (c!305518 acc!408) (c!305518 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84)))))))

(declare-fun lt!720935 () BalanceConc!13700)

(assert (=> d!572898 (= lt!720935 (BalanceConc!13701 (++!5674 (c!305518 acc!408) (c!305518 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84))))))))

(assert (=> d!572898 (= (++!5670 acc!408 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84))) lt!720935)))

(declare-fun b!1875574 () Bool)

(declare-fun res!838776 () Bool)

(assert (=> b!1875574 (=> (not res!838776) (not e!1197117))))

(declare-fun height!1083 (Conc!6942) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1875574 (= res!838776 (<= (height!1083 (++!5674 (c!305518 acc!408) (c!305518 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84))))) (+ (max!0 (height!1083 (c!305518 acc!408)) (height!1083 (c!305518 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84))))) 1)))))

(declare-fun b!1875575 () Bool)

(declare-fun res!838777 () Bool)

(assert (=> b!1875575 (=> (not res!838777) (not e!1197117))))

(assert (=> b!1875575 (= res!838777 (>= (height!1083 (++!5674 (c!305518 acc!408) (c!305518 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84))))) (max!0 (height!1083 (c!305518 acc!408)) (height!1083 (c!305518 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84)))))))))

(declare-fun b!1875576 () Bool)

(assert (=> b!1875576 (= e!1197117 (= (list!8520 lt!720935) (++!5669 (list!8520 acc!408) (list!8520 (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84))))))))

(assert (= (and d!572898 res!838775) b!1875573))

(assert (= (and b!1875573 res!838774) b!1875574))

(assert (= (and b!1875574 res!838776) b!1875575))

(assert (= (and b!1875575 res!838777) b!1875576))

(declare-fun m!2301327 () Bool)

(assert (=> b!1875576 m!2301327))

(assert (=> b!1875576 m!2300881))

(assert (=> b!1875576 m!2300909))

(declare-fun m!2301329 () Bool)

(assert (=> b!1875576 m!2301329))

(assert (=> b!1875576 m!2300881))

(assert (=> b!1875576 m!2301329))

(declare-fun m!2301331 () Bool)

(assert (=> b!1875576 m!2301331))

(declare-fun m!2301333 () Bool)

(assert (=> b!1875574 m!2301333))

(declare-fun m!2301335 () Bool)

(assert (=> b!1875574 m!2301335))

(declare-fun m!2301337 () Bool)

(assert (=> b!1875574 m!2301337))

(declare-fun m!2301339 () Bool)

(assert (=> b!1875574 m!2301339))

(assert (=> b!1875574 m!2301333))

(assert (=> b!1875574 m!2301339))

(declare-fun m!2301341 () Bool)

(assert (=> b!1875574 m!2301341))

(assert (=> b!1875574 m!2301335))

(assert (=> b!1875573 m!2301339))

(assert (=> b!1875573 m!2301339))

(declare-fun m!2301343 () Bool)

(assert (=> b!1875573 m!2301343))

(declare-fun m!2301345 () Bool)

(assert (=> d!572898 m!2301345))

(assert (=> d!572898 m!2301339))

(assert (=> b!1875575 m!2301333))

(assert (=> b!1875575 m!2301335))

(assert (=> b!1875575 m!2301337))

(assert (=> b!1875575 m!2301339))

(assert (=> b!1875575 m!2301333))

(assert (=> b!1875575 m!2301339))

(assert (=> b!1875575 m!2301341))

(assert (=> b!1875575 m!2301335))

(assert (=> b!1875254 d!572898))

(declare-fun d!572900 () Bool)

(declare-fun lt!720938 () Token!6964)

(declare-fun contains!3819 (List!20987 Token!6964) Bool)

(assert (=> d!572900 (contains!3819 lt!720794 lt!720938)))

(declare-fun e!1197122 () Token!6964)

(assert (=> d!572900 (= lt!720938 e!1197122)))

(declare-fun c!305605 () Bool)

(assert (=> d!572900 (= c!305605 (= from!845 0))))

(declare-fun e!1197123 () Bool)

(assert (=> d!572900 e!1197123))

(declare-fun res!838780 () Bool)

(assert (=> d!572900 (=> (not res!838780) (not e!1197123))))

(assert (=> d!572900 (= res!838780 (<= 0 from!845))))

(assert (=> d!572900 (= (apply!5513 lt!720794 from!845) lt!720938)))

(declare-fun b!1875583 () Bool)

(assert (=> b!1875583 (= e!1197123 (< from!845 (size!16579 lt!720794)))))

(declare-fun b!1875584 () Bool)

(assert (=> b!1875584 (= e!1197122 (head!4377 lt!720794))))

(declare-fun b!1875585 () Bool)

(assert (=> b!1875585 (= e!1197122 (apply!5513 (tail!2906 lt!720794) (- from!845 1)))))

(assert (= (and d!572900 res!838780) b!1875583))

(assert (= (and d!572900 c!305605) b!1875584))

(assert (= (and d!572900 (not c!305605)) b!1875585))

(declare-fun m!2301347 () Bool)

(assert (=> d!572900 m!2301347))

(assert (=> b!1875583 m!2301049))

(declare-fun m!2301349 () Bool)

(assert (=> b!1875584 m!2301349))

(declare-fun m!2301351 () Bool)

(assert (=> b!1875585 m!2301351))

(assert (=> b!1875585 m!2301351))

(declare-fun m!2301353 () Bool)

(assert (=> b!1875585 m!2301353))

(assert (=> b!1875254 d!572900))

(declare-fun b!1875586 () Bool)

(declare-fun e!1197125 () List!20987)

(assert (=> b!1875586 (= e!1197125 lt!720790)))

(declare-fun b!1875588 () Bool)

(declare-fun res!838781 () Bool)

(declare-fun e!1197124 () Bool)

(assert (=> b!1875588 (=> (not res!838781) (not e!1197124))))

(declare-fun lt!720939 () List!20987)

(assert (=> b!1875588 (= res!838781 (= (size!16579 lt!720939) (+ (size!16579 (list!8520 lt!720788)) (size!16579 lt!720790))))))

(declare-fun d!572902 () Bool)

(assert (=> d!572902 e!1197124))

(declare-fun res!838782 () Bool)

(assert (=> d!572902 (=> (not res!838782) (not e!1197124))))

(assert (=> d!572902 (= res!838782 (= (content!3107 lt!720939) ((_ map or) (content!3107 (list!8520 lt!720788)) (content!3107 lt!720790))))))

(assert (=> d!572902 (= lt!720939 e!1197125)))

(declare-fun c!305606 () Bool)

(assert (=> d!572902 (= c!305606 ((_ is Nil!20905) (list!8520 lt!720788)))))

(assert (=> d!572902 (= (++!5669 (list!8520 lt!720788) lt!720790) lt!720939)))

(declare-fun b!1875587 () Bool)

(assert (=> b!1875587 (= e!1197125 (Cons!20905 (h!26306 (list!8520 lt!720788)) (++!5669 (t!173204 (list!8520 lt!720788)) lt!720790)))))

(declare-fun b!1875589 () Bool)

(assert (=> b!1875589 (= e!1197124 (or (not (= lt!720790 Nil!20905)) (= lt!720939 (list!8520 lt!720788))))))

(assert (= (and d!572902 c!305606) b!1875586))

(assert (= (and d!572902 (not c!305606)) b!1875587))

(assert (= (and d!572902 res!838782) b!1875588))

(assert (= (and b!1875588 res!838781) b!1875589))

(declare-fun m!2301355 () Bool)

(assert (=> b!1875588 m!2301355))

(assert (=> b!1875588 m!2300877))

(declare-fun m!2301357 () Bool)

(assert (=> b!1875588 m!2301357))

(declare-fun m!2301359 () Bool)

(assert (=> b!1875588 m!2301359))

(declare-fun m!2301361 () Bool)

(assert (=> d!572902 m!2301361))

(assert (=> d!572902 m!2300877))

(declare-fun m!2301363 () Bool)

(assert (=> d!572902 m!2301363))

(declare-fun m!2301365 () Bool)

(assert (=> d!572902 m!2301365))

(declare-fun m!2301367 () Bool)

(assert (=> b!1875587 m!2301367))

(assert (=> b!1875254 d!572902))

(declare-fun lt!720965 () BalanceConc!13700)

(declare-fun d!572904 () Bool)

(assert (=> d!572904 (= (list!8520 lt!720965) (++!5669 (list!8520 lt!720788) (withSeparatorTokenList!114 thiss!13718 (drop!1026 (list!8520 v!6352) (+ 1 from!845)) separatorToken!84)))))

(declare-fun e!1197131 () BalanceConc!13700)

(assert (=> d!572904 (= lt!720965 e!1197131)))

(declare-fun c!305609 () Bool)

(assert (=> d!572904 (= c!305609 (>= (+ 1 from!845) (size!16576 v!6352)))))

(declare-fun e!1197130 () Bool)

(assert (=> d!572904 e!1197130))

(declare-fun res!838785 () Bool)

(assert (=> d!572904 (=> (not res!838785) (not e!1197130))))

(assert (=> d!572904 (= res!838785 (>= (+ 1 from!845) 0))))

(assert (=> d!572904 (= (withSeparatorTokenInner!10 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!720788) lt!720965)))

(declare-fun b!1875596 () Bool)

(assert (=> b!1875596 (= e!1197130 (<= (+ 1 from!845) (size!16576 v!6352)))))

(declare-fun b!1875597 () Bool)

(assert (=> b!1875597 (= e!1197131 lt!720788)))

(declare-fun b!1875598 () Bool)

(assert (=> b!1875598 (= e!1197131 (withSeparatorTokenInner!10 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845 1) (++!5670 lt!720788 (++!5670 (singletonSeq!1821 (apply!5512 v!6352 (+ 1 from!845))) (singletonSeq!1821 separatorToken!84)))))))

(declare-fun lt!720969 () List!20987)

(assert (=> b!1875598 (= lt!720969 (list!8520 v!6352))))

(declare-fun lt!720973 () Unit!35430)

(assert (=> b!1875598 (= lt!720973 (lemmaDropApply!664 lt!720969 (+ 1 from!845)))))

(assert (=> b!1875598 (= (head!4377 (drop!1026 lt!720969 (+ 1 from!845))) (apply!5513 lt!720969 (+ 1 from!845)))))

(declare-fun lt!720967 () Unit!35430)

(assert (=> b!1875598 (= lt!720967 lt!720973)))

(declare-fun lt!720972 () List!20987)

(assert (=> b!1875598 (= lt!720972 (list!8520 v!6352))))

(declare-fun lt!720975 () Unit!35430)

(assert (=> b!1875598 (= lt!720975 (lemmaDropTail!644 lt!720972 (+ 1 from!845)))))

(assert (=> b!1875598 (= (tail!2906 (drop!1026 lt!720972 (+ 1 from!845))) (drop!1026 lt!720972 (+ 1 from!845 1)))))

(declare-fun lt!720964 () Unit!35430)

(assert (=> b!1875598 (= lt!720964 lt!720975)))

(declare-fun lt!720970 () List!20987)

(assert (=> b!1875598 (= lt!720970 (list!8520 lt!720788))))

(declare-fun lt!720971 () List!20987)

(assert (=> b!1875598 (= lt!720971 (Cons!20905 (apply!5512 v!6352 (+ 1 from!845)) (Cons!20905 separatorToken!84 Nil!20905)))))

(declare-fun lt!720966 () List!20987)

(assert (=> b!1875598 (= lt!720966 (withSeparatorTokenList!114 thiss!13718 (drop!1026 (list!8520 v!6352) (+ 1 from!845 1)) separatorToken!84))))

(declare-fun lt!720974 () Unit!35430)

(assert (=> b!1875598 (= lt!720974 (lemmaConcatAssociativity!1117 lt!720970 lt!720971 lt!720966))))

(assert (=> b!1875598 (= (++!5669 (++!5669 lt!720970 lt!720971) lt!720966) (++!5669 lt!720970 (++!5669 lt!720971 lt!720966)))))

(declare-fun lt!720968 () Unit!35430)

(assert (=> b!1875598 (= lt!720968 lt!720974)))

(assert (= (and d!572904 res!838785) b!1875596))

(assert (= (and d!572904 c!305609) b!1875597))

(assert (= (and d!572904 (not c!305609)) b!1875598))

(assert (=> d!572904 m!2300925))

(assert (=> d!572904 m!2300903))

(declare-fun m!2301369 () Bool)

(assert (=> d!572904 m!2301369))

(assert (=> d!572904 m!2301369))

(declare-fun m!2301371 () Bool)

(assert (=> d!572904 m!2301371))

(assert (=> d!572904 m!2300877))

(declare-fun m!2301373 () Bool)

(assert (=> d!572904 m!2301373))

(assert (=> d!572904 m!2300877))

(assert (=> d!572904 m!2301371))

(declare-fun m!2301375 () Bool)

(assert (=> d!572904 m!2301375))

(assert (=> d!572904 m!2300903))

(assert (=> b!1875596 m!2300925))

(declare-fun m!2301377 () Bool)

(assert (=> b!1875598 m!2301377))

(declare-fun m!2301379 () Bool)

(assert (=> b!1875598 m!2301379))

(declare-fun m!2301381 () Bool)

(assert (=> b!1875598 m!2301381))

(declare-fun m!2301383 () Bool)

(assert (=> b!1875598 m!2301383))

(declare-fun m!2301385 () Bool)

(assert (=> b!1875598 m!2301385))

(declare-fun m!2301387 () Bool)

(assert (=> b!1875598 m!2301387))

(declare-fun m!2301389 () Bool)

(assert (=> b!1875598 m!2301389))

(assert (=> b!1875598 m!2300877))

(declare-fun m!2301391 () Bool)

(assert (=> b!1875598 m!2301391))

(declare-fun m!2301393 () Bool)

(assert (=> b!1875598 m!2301393))

(assert (=> b!1875598 m!2301383))

(declare-fun m!2301395 () Bool)

(assert (=> b!1875598 m!2301395))

(assert (=> b!1875598 m!2300875))

(declare-fun m!2301397 () Bool)

(assert (=> b!1875598 m!2301397))

(declare-fun m!2301399 () Bool)

(assert (=> b!1875598 m!2301399))

(declare-fun m!2301401 () Bool)

(assert (=> b!1875598 m!2301401))

(assert (=> b!1875598 m!2300903))

(assert (=> b!1875598 m!2301391))

(declare-fun m!2301403 () Bool)

(assert (=> b!1875598 m!2301403))

(declare-fun m!2301405 () Bool)

(assert (=> b!1875598 m!2301405))

(assert (=> b!1875598 m!2301403))

(assert (=> b!1875598 m!2300903))

(assert (=> b!1875598 m!2301397))

(declare-fun m!2301407 () Bool)

(assert (=> b!1875598 m!2301407))

(assert (=> b!1875598 m!2301387))

(declare-fun m!2301409 () Bool)

(assert (=> b!1875598 m!2301409))

(assert (=> b!1875598 m!2300875))

(assert (=> b!1875598 m!2301407))

(declare-fun m!2301411 () Bool)

(assert (=> b!1875598 m!2301411))

(declare-fun m!2301413 () Bool)

(assert (=> b!1875598 m!2301413))

(assert (=> b!1875598 m!2301401))

(declare-fun m!2301415 () Bool)

(assert (=> b!1875598 m!2301415))

(assert (=> b!1875598 m!2301379))

(assert (=> b!1875598 m!2301395))

(assert (=> b!1875254 d!572904))

(declare-fun d!572906 () Bool)

(assert (=> d!572906 (= (tail!2906 lt!720789) (t!173204 lt!720789))))

(assert (=> b!1875254 d!572906))

(declare-fun d!572908 () Bool)

(assert (=> d!572908 (= (head!4377 lt!720789) (h!26306 lt!720789))))

(assert (=> b!1875254 d!572908))

(declare-fun b!1875599 () Bool)

(declare-fun e!1197133 () List!20987)

(assert (=> b!1875599 (= e!1197133 lt!720790)))

(declare-fun b!1875601 () Bool)

(declare-fun res!838786 () Bool)

(declare-fun e!1197132 () Bool)

(assert (=> b!1875601 (=> (not res!838786) (not e!1197132))))

(declare-fun lt!720976 () List!20987)

(assert (=> b!1875601 (= res!838786 (= (size!16579 lt!720976) (+ (size!16579 (++!5669 lt!720798 lt!720796)) (size!16579 lt!720790))))))

(declare-fun d!572910 () Bool)

(assert (=> d!572910 e!1197132))

(declare-fun res!838787 () Bool)

(assert (=> d!572910 (=> (not res!838787) (not e!1197132))))

(assert (=> d!572910 (= res!838787 (= (content!3107 lt!720976) ((_ map or) (content!3107 (++!5669 lt!720798 lt!720796)) (content!3107 lt!720790))))))

(assert (=> d!572910 (= lt!720976 e!1197133)))

(declare-fun c!305610 () Bool)

(assert (=> d!572910 (= c!305610 ((_ is Nil!20905) (++!5669 lt!720798 lt!720796)))))

(assert (=> d!572910 (= (++!5669 (++!5669 lt!720798 lt!720796) lt!720790) lt!720976)))

(declare-fun b!1875600 () Bool)

(assert (=> b!1875600 (= e!1197133 (Cons!20905 (h!26306 (++!5669 lt!720798 lt!720796)) (++!5669 (t!173204 (++!5669 lt!720798 lt!720796)) lt!720790)))))

(declare-fun b!1875602 () Bool)

(assert (=> b!1875602 (= e!1197132 (or (not (= lt!720790 Nil!20905)) (= lt!720976 (++!5669 lt!720798 lt!720796))))))

(assert (= (and d!572910 c!305610) b!1875599))

(assert (= (and d!572910 (not c!305610)) b!1875600))

(assert (= (and d!572910 res!838787) b!1875601))

(assert (= (and b!1875601 res!838786) b!1875602))

(declare-fun m!2301417 () Bool)

(assert (=> b!1875601 m!2301417))

(assert (=> b!1875601 m!2300913))

(declare-fun m!2301419 () Bool)

(assert (=> b!1875601 m!2301419))

(assert (=> b!1875601 m!2301359))

(declare-fun m!2301421 () Bool)

(assert (=> d!572910 m!2301421))

(assert (=> d!572910 m!2300913))

(declare-fun m!2301423 () Bool)

(assert (=> d!572910 m!2301423))

(assert (=> d!572910 m!2301365))

(declare-fun m!2301425 () Bool)

(assert (=> b!1875600 m!2301425))

(assert (=> b!1875254 d!572910))

(declare-fun d!572912 () Bool)

(assert (=> d!572912 (= (++!5669 (++!5669 lt!720798 lt!720796) lt!720790) (++!5669 lt!720798 (++!5669 lt!720796 lt!720790)))))

(declare-fun lt!720979 () Unit!35430)

(declare-fun choose!11774 (List!20987 List!20987 List!20987) Unit!35430)

(assert (=> d!572912 (= lt!720979 (choose!11774 lt!720798 lt!720796 lt!720790))))

(assert (=> d!572912 (= (lemmaConcatAssociativity!1117 lt!720798 lt!720796 lt!720790) lt!720979)))

(declare-fun bs!412191 () Bool)

(assert (= bs!412191 d!572912))

(assert (=> bs!412191 m!2300889))

(assert (=> bs!412191 m!2300913))

(assert (=> bs!412191 m!2300915))

(declare-fun m!2301427 () Bool)

(assert (=> bs!412191 m!2301427))

(assert (=> bs!412191 m!2300889))

(assert (=> bs!412191 m!2300891))

(assert (=> bs!412191 m!2300913))

(assert (=> b!1875254 d!572912))

(declare-fun b!1875603 () Bool)

(declare-fun e!1197138 () List!20987)

(declare-fun e!1197137 () List!20987)

(assert (=> b!1875603 (= e!1197138 e!1197137)))

(declare-fun c!305611 () Bool)

(assert (=> b!1875603 (= c!305611 (<= (+ 1 from!845) 0))))

(declare-fun b!1875604 () Bool)

(assert (=> b!1875604 (= e!1197137 (drop!1026 (t!173204 lt!720794) (- (+ 1 from!845) 1)))))

(declare-fun b!1875605 () Bool)

(assert (=> b!1875605 (= e!1197138 Nil!20905)))

(declare-fun bm!116149 () Bool)

(declare-fun call!116154 () Int)

(assert (=> bm!116149 (= call!116154 (size!16579 lt!720794))))

(declare-fun d!572914 () Bool)

(declare-fun e!1197135 () Bool)

(assert (=> d!572914 e!1197135))

(declare-fun res!838788 () Bool)

(assert (=> d!572914 (=> (not res!838788) (not e!1197135))))

(declare-fun lt!720980 () List!20987)

(assert (=> d!572914 (= res!838788 (= ((_ map implies) (content!3107 lt!720980) (content!3107 lt!720794)) ((as const (InoxSet Token!6964)) true)))))

(assert (=> d!572914 (= lt!720980 e!1197138)))

(declare-fun c!305613 () Bool)

(assert (=> d!572914 (= c!305613 ((_ is Nil!20905) lt!720794))))

(assert (=> d!572914 (= (drop!1026 lt!720794 (+ 1 from!845)) lt!720980)))

(declare-fun b!1875606 () Bool)

(declare-fun e!1197136 () Int)

(assert (=> b!1875606 (= e!1197136 call!116154)))

(declare-fun b!1875607 () Bool)

(assert (=> b!1875607 (= e!1197137 lt!720794)))

(declare-fun b!1875608 () Bool)

(declare-fun e!1197134 () Int)

(assert (=> b!1875608 (= e!1197136 e!1197134)))

(declare-fun c!305612 () Bool)

(assert (=> b!1875608 (= c!305612 (>= (+ 1 from!845) call!116154))))

(declare-fun b!1875609 () Bool)

(assert (=> b!1875609 (= e!1197134 0)))

(declare-fun b!1875610 () Bool)

(assert (=> b!1875610 (= e!1197134 (- call!116154 (+ 1 from!845)))))

(declare-fun b!1875611 () Bool)

(assert (=> b!1875611 (= e!1197135 (= (size!16579 lt!720980) e!1197136))))

(declare-fun c!305614 () Bool)

(assert (=> b!1875611 (= c!305614 (<= (+ 1 from!845) 0))))

(assert (= (and d!572914 c!305613) b!1875605))

(assert (= (and d!572914 (not c!305613)) b!1875603))

(assert (= (and b!1875603 c!305611) b!1875607))

(assert (= (and b!1875603 (not c!305611)) b!1875604))

(assert (= (and d!572914 res!838788) b!1875611))

(assert (= (and b!1875611 c!305614) b!1875606))

(assert (= (and b!1875611 (not c!305614)) b!1875608))

(assert (= (and b!1875608 c!305612) b!1875609))

(assert (= (and b!1875608 (not c!305612)) b!1875610))

(assert (= (or b!1875606 b!1875608 b!1875610) bm!116149))

(declare-fun m!2301429 () Bool)

(assert (=> b!1875604 m!2301429))

(assert (=> bm!116149 m!2301049))

(declare-fun m!2301431 () Bool)

(assert (=> d!572914 m!2301431))

(assert (=> d!572914 m!2301323))

(declare-fun m!2301433 () Bool)

(assert (=> b!1875611 m!2301433))

(assert (=> b!1875254 d!572914))

(declare-fun d!572916 () Bool)

(assert (=> d!572916 (= (list!8520 acc!408) (list!8524 (c!305518 acc!408)))))

(declare-fun bs!412192 () Bool)

(assert (= bs!412192 d!572916))

(declare-fun m!2301435 () Bool)

(assert (=> bs!412192 m!2301435))

(assert (=> b!1875254 d!572916))

(declare-fun d!572918 () Bool)

(declare-fun e!1197141 () Bool)

(assert (=> d!572918 e!1197141))

(declare-fun res!838791 () Bool)

(assert (=> d!572918 (=> (not res!838791) (not e!1197141))))

(declare-fun lt!720983 () BalanceConc!13700)

(assert (=> d!572918 (= res!838791 (= (list!8520 lt!720983) (Cons!20905 separatorToken!84 Nil!20905)))))

(declare-fun singleton!820 (Token!6964) BalanceConc!13700)

(assert (=> d!572918 (= lt!720983 (singleton!820 separatorToken!84))))

(assert (=> d!572918 (= (singletonSeq!1821 separatorToken!84) lt!720983)))

(declare-fun b!1875614 () Bool)

(assert (=> b!1875614 (= e!1197141 (isBalanced!2197 (c!305518 lt!720983)))))

(assert (= (and d!572918 res!838791) b!1875614))

(declare-fun m!2301437 () Bool)

(assert (=> d!572918 m!2301437))

(declare-fun m!2301439 () Bool)

(assert (=> d!572918 m!2301439))

(declare-fun m!2301441 () Bool)

(assert (=> b!1875614 m!2301441))

(assert (=> b!1875254 d!572918))

(declare-fun b!1875615 () Bool)

(declare-fun e!1197143 () List!20987)

(assert (=> b!1875615 (= e!1197143 lt!720790)))

(declare-fun b!1875617 () Bool)

(declare-fun res!838792 () Bool)

(declare-fun e!1197142 () Bool)

(assert (=> b!1875617 (=> (not res!838792) (not e!1197142))))

(declare-fun lt!720984 () List!20987)

(assert (=> b!1875617 (= res!838792 (= (size!16579 lt!720984) (+ (size!16579 lt!720796) (size!16579 lt!720790))))))

(declare-fun d!572920 () Bool)

(assert (=> d!572920 e!1197142))

(declare-fun res!838793 () Bool)

(assert (=> d!572920 (=> (not res!838793) (not e!1197142))))

(assert (=> d!572920 (= res!838793 (= (content!3107 lt!720984) ((_ map or) (content!3107 lt!720796) (content!3107 lt!720790))))))

(assert (=> d!572920 (= lt!720984 e!1197143)))

(declare-fun c!305615 () Bool)

(assert (=> d!572920 (= c!305615 ((_ is Nil!20905) lt!720796))))

(assert (=> d!572920 (= (++!5669 lt!720796 lt!720790) lt!720984)))

(declare-fun b!1875616 () Bool)

(assert (=> b!1875616 (= e!1197143 (Cons!20905 (h!26306 lt!720796) (++!5669 (t!173204 lt!720796) lt!720790)))))

(declare-fun b!1875618 () Bool)

(assert (=> b!1875618 (= e!1197142 (or (not (= lt!720790 Nil!20905)) (= lt!720984 lt!720796)))))

(assert (= (and d!572920 c!305615) b!1875615))

(assert (= (and d!572920 (not c!305615)) b!1875616))

(assert (= (and d!572920 res!838793) b!1875617))

(assert (= (and b!1875617 res!838792) b!1875618))

(declare-fun m!2301443 () Bool)

(assert (=> b!1875617 m!2301443))

(declare-fun m!2301445 () Bool)

(assert (=> b!1875617 m!2301445))

(assert (=> b!1875617 m!2301359))

(declare-fun m!2301447 () Bool)

(assert (=> d!572920 m!2301447))

(declare-fun m!2301449 () Bool)

(assert (=> d!572920 m!2301449))

(assert (=> d!572920 m!2301365))

(declare-fun m!2301451 () Bool)

(assert (=> b!1875616 m!2301451))

(assert (=> b!1875254 d!572920))

(declare-fun b!1875619 () Bool)

(declare-fun e!1197145 () List!20987)

(assert (=> b!1875619 (= e!1197145 lt!720796)))

(declare-fun b!1875621 () Bool)

(declare-fun res!838794 () Bool)

(declare-fun e!1197144 () Bool)

(assert (=> b!1875621 (=> (not res!838794) (not e!1197144))))

(declare-fun lt!720985 () List!20987)

(assert (=> b!1875621 (= res!838794 (= (size!16579 lt!720985) (+ (size!16579 lt!720798) (size!16579 lt!720796))))))

(declare-fun d!572922 () Bool)

(assert (=> d!572922 e!1197144))

(declare-fun res!838795 () Bool)

(assert (=> d!572922 (=> (not res!838795) (not e!1197144))))

(assert (=> d!572922 (= res!838795 (= (content!3107 lt!720985) ((_ map or) (content!3107 lt!720798) (content!3107 lt!720796))))))

(assert (=> d!572922 (= lt!720985 e!1197145)))

(declare-fun c!305616 () Bool)

(assert (=> d!572922 (= c!305616 ((_ is Nil!20905) lt!720798))))

(assert (=> d!572922 (= (++!5669 lt!720798 lt!720796) lt!720985)))

(declare-fun b!1875620 () Bool)

(assert (=> b!1875620 (= e!1197145 (Cons!20905 (h!26306 lt!720798) (++!5669 (t!173204 lt!720798) lt!720796)))))

(declare-fun b!1875622 () Bool)

(assert (=> b!1875622 (= e!1197144 (or (not (= lt!720796 Nil!20905)) (= lt!720985 lt!720798)))))

(assert (= (and d!572922 c!305616) b!1875619))

(assert (= (and d!572922 (not c!305616)) b!1875620))

(assert (= (and d!572922 res!838795) b!1875621))

(assert (= (and b!1875621 res!838794) b!1875622))

(declare-fun m!2301453 () Bool)

(assert (=> b!1875621 m!2301453))

(assert (=> b!1875621 m!2301127))

(assert (=> b!1875621 m!2301445))

(declare-fun m!2301455 () Bool)

(assert (=> d!572922 m!2301455))

(assert (=> d!572922 m!2301133))

(assert (=> d!572922 m!2301449))

(declare-fun m!2301457 () Bool)

(assert (=> b!1875620 m!2301457))

(assert (=> b!1875254 d!572922))

(declare-fun b!1875623 () Bool)

(declare-fun res!838796 () Bool)

(declare-fun e!1197146 () Bool)

(assert (=> b!1875623 (=> (not res!838796) (not e!1197146))))

(assert (=> b!1875623 (= res!838796 (isBalanced!2197 (++!5674 (c!305518 (singletonSeq!1821 lt!720795)) (c!305518 (singletonSeq!1821 separatorToken!84)))))))

(declare-fun d!572924 () Bool)

(assert (=> d!572924 e!1197146))

(declare-fun res!838797 () Bool)

(assert (=> d!572924 (=> (not res!838797) (not e!1197146))))

(assert (=> d!572924 (= res!838797 (appendAssocInst!514 (c!305518 (singletonSeq!1821 lt!720795)) (c!305518 (singletonSeq!1821 separatorToken!84))))))

(declare-fun lt!720986 () BalanceConc!13700)

(assert (=> d!572924 (= lt!720986 (BalanceConc!13701 (++!5674 (c!305518 (singletonSeq!1821 lt!720795)) (c!305518 (singletonSeq!1821 separatorToken!84)))))))

(assert (=> d!572924 (= (++!5670 (singletonSeq!1821 lt!720795) (singletonSeq!1821 separatorToken!84)) lt!720986)))

(declare-fun b!1875624 () Bool)

(declare-fun res!838798 () Bool)

(assert (=> b!1875624 (=> (not res!838798) (not e!1197146))))

(assert (=> b!1875624 (= res!838798 (<= (height!1083 (++!5674 (c!305518 (singletonSeq!1821 lt!720795)) (c!305518 (singletonSeq!1821 separatorToken!84)))) (+ (max!0 (height!1083 (c!305518 (singletonSeq!1821 lt!720795))) (height!1083 (c!305518 (singletonSeq!1821 separatorToken!84)))) 1)))))

(declare-fun b!1875625 () Bool)

(declare-fun res!838799 () Bool)

(assert (=> b!1875625 (=> (not res!838799) (not e!1197146))))

(assert (=> b!1875625 (= res!838799 (>= (height!1083 (++!5674 (c!305518 (singletonSeq!1821 lt!720795)) (c!305518 (singletonSeq!1821 separatorToken!84)))) (max!0 (height!1083 (c!305518 (singletonSeq!1821 lt!720795))) (height!1083 (c!305518 (singletonSeq!1821 separatorToken!84))))))))

(declare-fun b!1875626 () Bool)

(assert (=> b!1875626 (= e!1197146 (= (list!8520 lt!720986) (++!5669 (list!8520 (singletonSeq!1821 lt!720795)) (list!8520 (singletonSeq!1821 separatorToken!84)))))))

(assert (= (and d!572924 res!838797) b!1875623))

(assert (= (and b!1875623 res!838796) b!1875624))

(assert (= (and b!1875624 res!838798) b!1875625))

(assert (= (and b!1875625 res!838799) b!1875626))

(declare-fun m!2301459 () Bool)

(assert (=> b!1875626 m!2301459))

(assert (=> b!1875626 m!2300887))

(declare-fun m!2301461 () Bool)

(assert (=> b!1875626 m!2301461))

(assert (=> b!1875626 m!2300875))

(declare-fun m!2301463 () Bool)

(assert (=> b!1875626 m!2301463))

(assert (=> b!1875626 m!2301461))

(assert (=> b!1875626 m!2301463))

(declare-fun m!2301465 () Bool)

(assert (=> b!1875626 m!2301465))

(declare-fun m!2301467 () Bool)

(assert (=> b!1875624 m!2301467))

(declare-fun m!2301469 () Bool)

(assert (=> b!1875624 m!2301469))

(declare-fun m!2301471 () Bool)

(assert (=> b!1875624 m!2301471))

(declare-fun m!2301473 () Bool)

(assert (=> b!1875624 m!2301473))

(assert (=> b!1875624 m!2301467))

(assert (=> b!1875624 m!2301473))

(declare-fun m!2301475 () Bool)

(assert (=> b!1875624 m!2301475))

(assert (=> b!1875624 m!2301469))

(assert (=> b!1875623 m!2301473))

(assert (=> b!1875623 m!2301473))

(declare-fun m!2301477 () Bool)

(assert (=> b!1875623 m!2301477))

(declare-fun m!2301479 () Bool)

(assert (=> d!572924 m!2301479))

(assert (=> d!572924 m!2301473))

(assert (=> b!1875625 m!2301467))

(assert (=> b!1875625 m!2301469))

(assert (=> b!1875625 m!2301471))

(assert (=> b!1875625 m!2301473))

(assert (=> b!1875625 m!2301467))

(assert (=> b!1875625 m!2301473))

(assert (=> b!1875625 m!2301475))

(assert (=> b!1875625 m!2301469))

(assert (=> b!1875254 d!572924))

(declare-fun d!572926 () Bool)

(assert (=> d!572926 (= (list!8520 v!6352) (list!8524 (c!305518 v!6352)))))

(declare-fun bs!412193 () Bool)

(assert (= bs!412193 d!572926))

(declare-fun m!2301481 () Bool)

(assert (=> bs!412193 m!2301481))

(assert (=> b!1875254 d!572926))

(declare-fun d!572928 () Bool)

(assert (=> d!572928 (= (list!8520 lt!720788) (list!8524 (c!305518 lt!720788)))))

(declare-fun bs!412194 () Bool)

(assert (= bs!412194 d!572928))

(declare-fun m!2301483 () Bool)

(assert (=> bs!412194 m!2301483))

(assert (=> b!1875254 d!572928))

(declare-fun d!572930 () Bool)

(declare-fun lt!720989 () Token!6964)

(assert (=> d!572930 (= lt!720989 (apply!5513 (list!8520 v!6352) from!845))))

(declare-fun apply!5515 (Conc!6942 Int) Token!6964)

(assert (=> d!572930 (= lt!720989 (apply!5515 (c!305518 v!6352) from!845))))

(declare-fun e!1197149 () Bool)

(assert (=> d!572930 e!1197149))

(declare-fun res!838802 () Bool)

(assert (=> d!572930 (=> (not res!838802) (not e!1197149))))

(assert (=> d!572930 (= res!838802 (<= 0 from!845))))

(assert (=> d!572930 (= (apply!5512 v!6352 from!845) lt!720989)))

(declare-fun b!1875629 () Bool)

(assert (=> b!1875629 (= e!1197149 (< from!845 (size!16576 v!6352)))))

(assert (= (and d!572930 res!838802) b!1875629))

(assert (=> d!572930 m!2300903))

(assert (=> d!572930 m!2300903))

(declare-fun m!2301485 () Bool)

(assert (=> d!572930 m!2301485))

(declare-fun m!2301487 () Bool)

(assert (=> d!572930 m!2301487))

(assert (=> b!1875629 m!2300925))

(assert (=> b!1875254 d!572930))

(declare-fun d!572932 () Bool)

(declare-fun e!1197150 () Bool)

(assert (=> d!572932 e!1197150))

(declare-fun res!838803 () Bool)

(assert (=> d!572932 (=> (not res!838803) (not e!1197150))))

(declare-fun lt!720990 () BalanceConc!13700)

(assert (=> d!572932 (= res!838803 (= (list!8520 lt!720990) (Cons!20905 lt!720795 Nil!20905)))))

(assert (=> d!572932 (= lt!720990 (singleton!820 lt!720795))))

(assert (=> d!572932 (= (singletonSeq!1821 lt!720795) lt!720990)))

(declare-fun b!1875630 () Bool)

(assert (=> b!1875630 (= e!1197150 (isBalanced!2197 (c!305518 lt!720990)))))

(assert (= (and d!572932 res!838803) b!1875630))

(declare-fun m!2301489 () Bool)

(assert (=> d!572932 m!2301489))

(declare-fun m!2301491 () Bool)

(assert (=> d!572932 m!2301491))

(declare-fun m!2301493 () Bool)

(assert (=> b!1875630 m!2301493))

(assert (=> b!1875254 d!572932))

(declare-fun d!572934 () Bool)

(declare-fun c!305619 () Bool)

(assert (=> d!572934 (= c!305619 ((_ is Node!6942) (c!305518 v!6352)))))

(declare-fun e!1197155 () Bool)

(assert (=> d!572934 (= (inv!27780 (c!305518 v!6352)) e!1197155)))

(declare-fun b!1875637 () Bool)

(declare-fun inv!27787 (Conc!6942) Bool)

(assert (=> b!1875637 (= e!1197155 (inv!27787 (c!305518 v!6352)))))

(declare-fun b!1875638 () Bool)

(declare-fun e!1197156 () Bool)

(assert (=> b!1875638 (= e!1197155 e!1197156)))

(declare-fun res!838806 () Bool)

(assert (=> b!1875638 (= res!838806 (not ((_ is Leaf!10216) (c!305518 v!6352))))))

(assert (=> b!1875638 (=> res!838806 e!1197156)))

(declare-fun b!1875639 () Bool)

(declare-fun inv!27788 (Conc!6942) Bool)

(assert (=> b!1875639 (= e!1197156 (inv!27788 (c!305518 v!6352)))))

(assert (= (and d!572934 c!305619) b!1875637))

(assert (= (and d!572934 (not c!305619)) b!1875638))

(assert (= (and b!1875638 (not res!838806)) b!1875639))

(declare-fun m!2301495 () Bool)

(assert (=> b!1875637 m!2301495))

(declare-fun m!2301497 () Bool)

(assert (=> b!1875639 m!2301497))

(assert (=> b!1875255 d!572934))

(declare-fun d!572936 () Bool)

(declare-fun lt!720993 () Int)

(assert (=> d!572936 (= lt!720993 (size!16579 (list!8520 v!6352)))))

(declare-fun size!16581 (Conc!6942) Int)

(assert (=> d!572936 (= lt!720993 (size!16581 (c!305518 v!6352)))))

(assert (=> d!572936 (= (size!16576 v!6352) lt!720993)))

(declare-fun bs!412195 () Bool)

(assert (= bs!412195 d!572936))

(assert (=> bs!412195 m!2300903))

(assert (=> bs!412195 m!2300903))

(declare-fun m!2301499 () Bool)

(assert (=> bs!412195 m!2301499))

(declare-fun m!2301501 () Bool)

(assert (=> bs!412195 m!2301501))

(assert (=> b!1875256 d!572936))

(declare-fun d!572938 () Bool)

(declare-fun c!305620 () Bool)

(assert (=> d!572938 (= c!305620 ((_ is Node!6942) (c!305518 acc!408)))))

(declare-fun e!1197157 () Bool)

(assert (=> d!572938 (= (inv!27780 (c!305518 acc!408)) e!1197157)))

(declare-fun b!1875640 () Bool)

(assert (=> b!1875640 (= e!1197157 (inv!27787 (c!305518 acc!408)))))

(declare-fun b!1875641 () Bool)

(declare-fun e!1197158 () Bool)

(assert (=> b!1875641 (= e!1197157 e!1197158)))

(declare-fun res!838807 () Bool)

(assert (=> b!1875641 (= res!838807 (not ((_ is Leaf!10216) (c!305518 acc!408))))))

(assert (=> b!1875641 (=> res!838807 e!1197158)))

(declare-fun b!1875642 () Bool)

(assert (=> b!1875642 (= e!1197158 (inv!27788 (c!305518 acc!408)))))

(assert (= (and d!572938 c!305620) b!1875640))

(assert (= (and d!572938 (not c!305620)) b!1875641))

(assert (= (and b!1875641 (not res!838807)) b!1875642))

(declare-fun m!2301503 () Bool)

(assert (=> b!1875640 m!2301503))

(declare-fun m!2301505 () Bool)

(assert (=> b!1875642 m!2301505))

(assert (=> b!1875257 d!572938))

(declare-fun d!572940 () Bool)

(assert (=> d!572940 (= (inv!27778 acc!408) (isBalanced!2197 (c!305518 acc!408)))))

(declare-fun bs!412196 () Bool)

(assert (= bs!412196 d!572940))

(declare-fun m!2301507 () Bool)

(assert (=> bs!412196 m!2301507))

(assert (=> start!187958 d!572940))

(declare-fun d!572942 () Bool)

(assert (=> d!572942 (= (inv!27778 v!6352) (isBalanced!2197 (c!305518 v!6352)))))

(declare-fun bs!412197 () Bool)

(assert (= bs!412197 d!572942))

(declare-fun m!2301509 () Bool)

(assert (=> bs!412197 m!2301509))

(assert (=> start!187958 d!572942))

(declare-fun d!572944 () Bool)

(declare-fun res!838812 () Bool)

(declare-fun e!1197161 () Bool)

(assert (=> d!572944 (=> (not res!838812) (not e!1197161))))

(declare-fun isEmpty!12970 (List!20986) Bool)

(assert (=> d!572944 (= res!838812 (not (isEmpty!12970 (originalCharacters!4513 separatorToken!84))))))

(assert (=> d!572944 (= (inv!27779 separatorToken!84) e!1197161)))

(declare-fun b!1875647 () Bool)

(declare-fun res!838813 () Bool)

(assert (=> b!1875647 (=> (not res!838813) (not e!1197161))))

(declare-fun dynLambda!10226 (Int TokenValue!3842) BalanceConc!13698)

(assert (=> b!1875647 (= res!838813 (= (originalCharacters!4513 separatorToken!84) (list!8523 (dynLambda!10226 (toChars!5162 (transformation!3706 (rule!5899 separatorToken!84))) (value!117086 separatorToken!84)))))))

(declare-fun b!1875648 () Bool)

(declare-fun size!16582 (List!20986) Int)

(assert (=> b!1875648 (= e!1197161 (= (size!16575 separatorToken!84) (size!16582 (originalCharacters!4513 separatorToken!84))))))

(assert (= (and d!572944 res!838812) b!1875647))

(assert (= (and b!1875647 res!838813) b!1875648))

(declare-fun b_lambda!61629 () Bool)

(assert (=> (not b_lambda!61629) (not b!1875647)))

(declare-fun t!173210 () Bool)

(declare-fun tb!112947 () Bool)

(assert (=> (and b!1875253 (= (toChars!5162 (transformation!3706 (rule!5899 separatorToken!84))) (toChars!5162 (transformation!3706 (rule!5899 separatorToken!84)))) t!173210) tb!112947))

(declare-fun b!1875653 () Bool)

(declare-fun e!1197164 () Bool)

(declare-fun tp!534649 () Bool)

(declare-fun inv!27789 (Conc!6941) Bool)

(assert (=> b!1875653 (= e!1197164 (and (inv!27789 (c!305517 (dynLambda!10226 (toChars!5162 (transformation!3706 (rule!5899 separatorToken!84))) (value!117086 separatorToken!84)))) tp!534649))))

(declare-fun result!136704 () Bool)

(declare-fun inv!27790 (BalanceConc!13698) Bool)

(assert (=> tb!112947 (= result!136704 (and (inv!27790 (dynLambda!10226 (toChars!5162 (transformation!3706 (rule!5899 separatorToken!84))) (value!117086 separatorToken!84))) e!1197164))))

(assert (= tb!112947 b!1875653))

(declare-fun m!2301511 () Bool)

(assert (=> b!1875653 m!2301511))

(declare-fun m!2301513 () Bool)

(assert (=> tb!112947 m!2301513))

(assert (=> b!1875647 t!173210))

(declare-fun b_and!144485 () Bool)

(assert (= b_and!144481 (and (=> t!173210 result!136704) b_and!144485)))

(declare-fun m!2301515 () Bool)

(assert (=> d!572944 m!2301515))

(declare-fun m!2301517 () Bool)

(assert (=> b!1875647 m!2301517))

(assert (=> b!1875647 m!2301517))

(declare-fun m!2301519 () Bool)

(assert (=> b!1875647 m!2301519))

(declare-fun m!2301521 () Bool)

(assert (=> b!1875648 m!2301521))

(assert (=> start!187958 d!572944))

(declare-fun d!572946 () Bool)

(assert (=> d!572946 (= (inv!27773 (tag!4120 (rule!5899 separatorToken!84))) (= (mod (str.len (value!117085 (tag!4120 (rule!5899 separatorToken!84)))) 2) 0))))

(assert (=> b!1875258 d!572946))

(declare-fun d!572948 () Bool)

(declare-fun res!838816 () Bool)

(declare-fun e!1197167 () Bool)

(assert (=> d!572948 (=> (not res!838816) (not e!1197167))))

(declare-fun semiInverseModEq!1510 (Int Int) Bool)

(assert (=> d!572948 (= res!838816 (semiInverseModEq!1510 (toChars!5162 (transformation!3706 (rule!5899 separatorToken!84))) (toValue!5303 (transformation!3706 (rule!5899 separatorToken!84)))))))

(assert (=> d!572948 (= (inv!27781 (transformation!3706 (rule!5899 separatorToken!84))) e!1197167)))

(declare-fun b!1875656 () Bool)

(declare-fun equivClasses!1437 (Int Int) Bool)

(assert (=> b!1875656 (= e!1197167 (equivClasses!1437 (toChars!5162 (transformation!3706 (rule!5899 separatorToken!84))) (toValue!5303 (transformation!3706 (rule!5899 separatorToken!84)))))))

(assert (= (and d!572948 res!838816) b!1875656))

(declare-fun m!2301523 () Bool)

(assert (=> d!572948 m!2301523))

(declare-fun m!2301525 () Bool)

(assert (=> b!1875656 m!2301525))

(assert (=> b!1875258 d!572948))

(declare-fun b!1875661 () Bool)

(declare-fun e!1197170 () Bool)

(declare-fun tp_is_empty!8887 () Bool)

(declare-fun tp!534652 () Bool)

(assert (=> b!1875661 (= e!1197170 (and tp_is_empty!8887 tp!534652))))

(assert (=> b!1875259 (= tp!534609 e!1197170)))

(assert (= (and b!1875259 ((_ is Cons!20904) (originalCharacters!4513 separatorToken!84))) b!1875661))

(declare-fun b!1875670 () Bool)

(declare-fun e!1197175 () Bool)

(declare-fun tp!534660 () Bool)

(declare-fun tp!534661 () Bool)

(assert (=> b!1875670 (= e!1197175 (and (inv!27780 (left!16801 (c!305518 v!6352))) tp!534661 (inv!27780 (right!17131 (c!305518 v!6352))) tp!534660))))

(declare-fun b!1875672 () Bool)

(declare-fun e!1197176 () Bool)

(declare-fun tp!534659 () Bool)

(assert (=> b!1875672 (= e!1197176 tp!534659)))

(declare-fun b!1875671 () Bool)

(declare-fun inv!27791 (IArray!13889) Bool)

(assert (=> b!1875671 (= e!1197175 (and (inv!27791 (xs!9826 (c!305518 v!6352))) e!1197176))))

(assert (=> b!1875255 (= tp!534608 (and (inv!27780 (c!305518 v!6352)) e!1197175))))

(assert (= (and b!1875255 ((_ is Node!6942) (c!305518 v!6352))) b!1875670))

(assert (= b!1875671 b!1875672))

(assert (= (and b!1875255 ((_ is Leaf!10216) (c!305518 v!6352))) b!1875671))

(declare-fun m!2301527 () Bool)

(assert (=> b!1875670 m!2301527))

(declare-fun m!2301529 () Bool)

(assert (=> b!1875670 m!2301529))

(declare-fun m!2301531 () Bool)

(assert (=> b!1875671 m!2301531))

(assert (=> b!1875255 m!2300923))

(declare-fun tp!534664 () Bool)

(declare-fun b!1875673 () Bool)

(declare-fun e!1197177 () Bool)

(declare-fun tp!534663 () Bool)

(assert (=> b!1875673 (= e!1197177 (and (inv!27780 (left!16801 (c!305518 acc!408))) tp!534664 (inv!27780 (right!17131 (c!305518 acc!408))) tp!534663))))

(declare-fun b!1875675 () Bool)

(declare-fun e!1197178 () Bool)

(declare-fun tp!534662 () Bool)

(assert (=> b!1875675 (= e!1197178 tp!534662)))

(declare-fun b!1875674 () Bool)

(assert (=> b!1875674 (= e!1197177 (and (inv!27791 (xs!9826 (c!305518 acc!408))) e!1197178))))

(assert (=> b!1875257 (= tp!534612 (and (inv!27780 (c!305518 acc!408)) e!1197177))))

(assert (= (and b!1875257 ((_ is Node!6942) (c!305518 acc!408))) b!1875673))

(assert (= b!1875674 b!1875675))

(assert (= (and b!1875257 ((_ is Leaf!10216) (c!305518 acc!408))) b!1875674))

(declare-fun m!2301533 () Bool)

(assert (=> b!1875673 m!2301533))

(declare-fun m!2301535 () Bool)

(assert (=> b!1875673 m!2301535))

(declare-fun m!2301537 () Bool)

(assert (=> b!1875674 m!2301537))

(assert (=> b!1875257 m!2300865))

(declare-fun b!1875688 () Bool)

(declare-fun e!1197181 () Bool)

(declare-fun tp!534676 () Bool)

(assert (=> b!1875688 (= e!1197181 tp!534676)))

(declare-fun b!1875686 () Bool)

(assert (=> b!1875686 (= e!1197181 tp_is_empty!8887)))

(assert (=> b!1875258 (= tp!534613 e!1197181)))

(declare-fun b!1875689 () Bool)

(declare-fun tp!534679 () Bool)

(declare-fun tp!534677 () Bool)

(assert (=> b!1875689 (= e!1197181 (and tp!534679 tp!534677))))

(declare-fun b!1875687 () Bool)

(declare-fun tp!534675 () Bool)

(declare-fun tp!534678 () Bool)

(assert (=> b!1875687 (= e!1197181 (and tp!534675 tp!534678))))

(assert (= (and b!1875258 ((_ is ElementMatch!5115) (regex!3706 (rule!5899 separatorToken!84)))) b!1875686))

(assert (= (and b!1875258 ((_ is Concat!8958) (regex!3706 (rule!5899 separatorToken!84)))) b!1875687))

(assert (= (and b!1875258 ((_ is Star!5115) (regex!3706 (rule!5899 separatorToken!84)))) b!1875688))

(assert (= (and b!1875258 ((_ is Union!5115) (regex!3706 (rule!5899 separatorToken!84)))) b!1875689))

(declare-fun b_lambda!61631 () Bool)

(assert (= b_lambda!61629 (or (and b!1875253 b_free!52195) b_lambda!61631)))

(check-sat (not d!572928) (not b!1875642) (not b_next!52897) (not d!572930) (not b!1875583) (not b!1875624) (not d!572948) (not d!572920) (not b!1875689) (not b!1875489) (not d!572894) (not b!1875629) (not d!572850) (not b!1875373) (not d!572892) (not b!1875481) (not b!1875617) (not b!1875626) (not bm!116148) (not d!572896) (not b!1875653) (not b!1875604) (not b!1875255) (not b!1875675) (not b!1875409) (not b!1875640) (not b!1875648) (not b!1875600) (not b!1875672) (not d!572852) (not b!1875575) (not b!1875670) (not b!1875661) (not b!1875639) (not b!1875576) (not b!1875488) (not b!1875350) (not b!1875674) (not d!572912) (not b_next!52899) (not b!1875611) (not b!1875573) (not b!1875673) (not b!1875671) (not b!1875625) (not b!1875621) (not b!1875588) (not b!1875596) (not tb!112947) (not b!1875687) (not d!572904) (not bm!116149) (not b!1875656) (not b!1875614) (not d!572914) (not b!1875616) (not b!1875623) (not d!572922) (not b!1875348) (not b!1875587) (not d!572924) (not b!1875574) (not b!1875584) b_and!144479 (not d!572902) (not b!1875484) (not b!1875487) (not d!572916) (not b!1875349) (not b_lambda!61631) tp_is_empty!8887 (not b!1875557) (not b!1875601) (not b!1875564) (not b!1875647) (not b!1875585) (not d!572936) (not b!1875410) (not b!1875257) (not b!1875598) b_and!144485 (not d!572910) (not b!1875688) (not d!572918) (not d!572944) (not d!572864) (not b!1875637) (not d!572898) (not d!572942) (not b!1875537) (not d!572932) (not d!572900) (not d!572940) (not d!572926) (not b!1875630) (not b!1875620))
(check-sat b_and!144485 b_and!144479 (not b_next!52897) (not b_next!52899))
