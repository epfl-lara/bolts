; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187934 () Bool)

(assert start!187934)

(declare-fun b!1874970 () Bool)

(declare-fun b_free!52145 () Bool)

(declare-fun b_next!52849 () Bool)

(assert (=> b!1874970 (= b_free!52145 (not b_next!52849))))

(declare-fun tp!534392 () Bool)

(declare-fun b_and!144431 () Bool)

(assert (=> b!1874970 (= tp!534392 b_and!144431)))

(declare-fun b_free!52147 () Bool)

(declare-fun b_next!52851 () Bool)

(assert (=> b!1874970 (= b_free!52147 (not b_next!52851))))

(declare-fun tp!534395 () Bool)

(declare-fun b_and!144433 () Bool)

(assert (=> b!1874970 (= tp!534395 b_and!144433)))

(declare-fun b!1874965 () Bool)

(declare-fun e!1196590 () Bool)

(declare-fun from!845 () Int)

(declare-fun lt!720328 () Int)

(assert (=> b!1874965 (= e!1196590 (not (and (>= (+ 1 from!845) 0) (<= (+ 1 from!845) lt!720328))))))

(declare-datatypes ((List!20949 0))(
  ( (Nil!20867) (Cons!20867 (h!26268 (_ BitVec 16)) (t!173166 List!20949)) )
))
(declare-datatypes ((TokenValue!3830 0))(
  ( (FloatLiteralValue!7660 (text!27255 List!20949)) (TokenValueExt!3829 (__x!13098 Int)) (Broken!19150 (value!116718 List!20949)) (Object!3911) (End!3830) (Def!3830) (Underscore!3830) (Match!3830) (Else!3830) (Error!3830) (Case!3830) (If!3830) (Extends!3830) (Abstract!3830) (Class!3830) (Val!3830) (DelimiterValue!7660 (del!3890 List!20949)) (KeywordValue!3836 (value!116719 List!20949)) (CommentValue!7660 (value!116720 List!20949)) (WhitespaceValue!7660 (value!116721 List!20949)) (IndentationValue!3830 (value!116722 List!20949)) (String!24099) (Int32!3830) (Broken!19151 (value!116723 List!20949)) (Boolean!3831) (Unit!35393) (OperatorValue!3833 (op!3890 List!20949)) (IdentifierValue!7660 (value!116724 List!20949)) (IdentifierValue!7661 (value!116725 List!20949)) (WhitespaceValue!7661 (value!116726 List!20949)) (True!7660) (False!7660) (Broken!19152 (value!116727 List!20949)) (Broken!19153 (value!116728 List!20949)) (True!7661) (RightBrace!3830) (RightBracket!3830) (Colon!3830) (Null!3830) (Comma!3830) (LeftBracket!3830) (False!7661) (LeftBrace!3830) (ImaginaryLiteralValue!3830 (text!27256 List!20949)) (StringLiteralValue!11490 (value!116729 List!20949)) (EOFValue!3830 (value!116730 List!20949)) (IdentValue!3830 (value!116731 List!20949)) (DelimiterValue!7661 (value!116732 List!20949)) (DedentValue!3830 (value!116733 List!20949)) (NewLineValue!3830 (value!116734 List!20949)) (IntegerValue!11490 (value!116735 (_ BitVec 32)) (text!27257 List!20949)) (IntegerValue!11491 (value!116736 Int) (text!27258 List!20949)) (Times!3830) (Or!3830) (Equal!3830) (Minus!3830) (Broken!19154 (value!116737 List!20949)) (And!3830) (Div!3830) (LessEqual!3830) (Mod!3830) (Concat!8933) (Not!3830) (Plus!3830) (SpaceValue!3830 (value!116738 List!20949)) (IntegerValue!11492 (value!116739 Int) (text!27259 List!20949)) (StringLiteralValue!11491 (text!27260 List!20949)) (FloatLiteralValue!7661 (text!27261 List!20949)) (BytesLiteralValue!3830 (value!116740 List!20949)) (CommentValue!7661 (value!116741 List!20949)) (StringLiteralValue!11492 (value!116742 List!20949)) (ErrorTokenValue!3830 (msg!3891 List!20949)) )
))
(declare-datatypes ((String!24100 0))(
  ( (String!24101 (value!116743 String)) )
))
(declare-datatypes ((C!10364 0))(
  ( (C!10365 (val!6070 Int)) )
))
(declare-datatypes ((Regex!5103 0))(
  ( (ElementMatch!5103 (c!305480 C!10364)) (Concat!8934 (regOne!10718 Regex!5103) (regTwo!10718 Regex!5103)) (EmptyExpr!5103) (Star!5103 (reg!5432 Regex!5103)) (EmptyLang!5103) (Union!5103 (regOne!10719 Regex!5103) (regTwo!10719 Regex!5103)) )
))
(declare-datatypes ((List!20950 0))(
  ( (Nil!20868) (Cons!20868 (h!26269 C!10364) (t!173167 List!20950)) )
))
(declare-datatypes ((IArray!13839 0))(
  ( (IArray!13840 (innerList!6977 List!20950)) )
))
(declare-datatypes ((Conc!6917 0))(
  ( (Node!6917 (left!16770 Conc!6917) (right!17100 Conc!6917) (csize!14064 Int) (cheight!7128 Int)) (Leaf!10185 (xs!9801 IArray!13839) (csize!14065 Int)) (Empty!6917) )
))
(declare-datatypes ((BalanceConc!13650 0))(
  ( (BalanceConc!13651 (c!305481 Conc!6917)) )
))
(declare-datatypes ((TokenValueInjection!7244 0))(
  ( (TokenValueInjection!7245 (toValue!5291 Int) (toChars!5150 Int)) )
))
(declare-datatypes ((Rule!7188 0))(
  ( (Rule!7189 (regex!3694 Regex!5103) (tag!4108 String!24100) (isSeparator!3694 Bool) (transformation!3694 TokenValueInjection!7244)) )
))
(declare-datatypes ((Token!6940 0))(
  ( (Token!6941 (value!116744 TokenValue!3830) (rule!5887 Rule!7188) (size!16551 Int) (originalCharacters!4501 List!20950)) )
))
(declare-fun lt!720330 () Token!6940)

(declare-datatypes ((List!20951 0))(
  ( (Nil!20869) (Cons!20869 (h!26270 Token!6940) (t!173168 List!20951)) )
))
(declare-datatypes ((IArray!13841 0))(
  ( (IArray!13842 (innerList!6978 List!20951)) )
))
(declare-datatypes ((Conc!6918 0))(
  ( (Node!6918 (left!16771 Conc!6918) (right!17101 Conc!6918) (csize!14066 Int) (cheight!7129 Int)) (Leaf!10186 (xs!9802 IArray!13841) (csize!14067 Int)) (Empty!6918) )
))
(declare-datatypes ((BalanceConc!13652 0))(
  ( (BalanceConc!13653 (c!305482 Conc!6918)) )
))
(declare-fun lt!720334 () BalanceConc!13652)

(declare-fun acc!408 () BalanceConc!13652)

(declare-fun separatorToken!84 () Token!6940)

(declare-fun ++!5645 (BalanceConc!13652 BalanceConc!13652) BalanceConc!13652)

(declare-fun singletonSeq!1809 (Token!6940) BalanceConc!13652)

(assert (=> b!1874965 (= lt!720334 (++!5645 acc!408 (++!5645 (singletonSeq!1809 lt!720330) (singletonSeq!1809 separatorToken!84))))))

(declare-fun lt!720327 () List!20951)

(declare-fun lt!720336 () List!20951)

(declare-fun lt!720333 () List!20951)

(declare-fun ++!5646 (List!20951 List!20951) List!20951)

(assert (=> b!1874965 (= (++!5646 (++!5646 lt!720327 lt!720336) lt!720333) (++!5646 lt!720327 (++!5646 lt!720336 lt!720333)))))

(declare-datatypes ((Unit!35394 0))(
  ( (Unit!35395) )
))
(declare-fun lt!720331 () Unit!35394)

(declare-fun lemmaConcatAssociativity!1105 (List!20951 List!20951 List!20951) Unit!35394)

(assert (=> b!1874965 (= lt!720331 (lemmaConcatAssociativity!1105 lt!720327 lt!720336 lt!720333))))

(declare-datatypes ((LexerInterface!3316 0))(
  ( (LexerInterfaceExt!3313 (__x!13099 Int)) (Lexer!3314) )
))
(declare-fun thiss!13718 () LexerInterface!3316)

(declare-fun lt!720337 () List!20951)

(declare-fun withSeparatorTokenList!102 (LexerInterface!3316 List!20951 Token!6940) List!20951)

(assert (=> b!1874965 (= lt!720333 (withSeparatorTokenList!102 thiss!13718 lt!720337 separatorToken!84))))

(assert (=> b!1874965 (= lt!720336 (Cons!20869 lt!720330 (Cons!20869 separatorToken!84 Nil!20869)))))

(declare-fun v!6352 () BalanceConc!13652)

(declare-fun apply!5488 (BalanceConc!13652 Int) Token!6940)

(assert (=> b!1874965 (= lt!720330 (apply!5488 v!6352 from!845))))

(declare-fun list!8508 (BalanceConc!13652) List!20951)

(assert (=> b!1874965 (= lt!720327 (list!8508 acc!408))))

(declare-fun lt!720326 () List!20951)

(declare-fun tail!2894 (List!20951) List!20951)

(assert (=> b!1874965 (= (tail!2894 lt!720326) lt!720337)))

(declare-fun lt!720332 () List!20951)

(declare-fun drop!1014 (List!20951 Int) List!20951)

(assert (=> b!1874965 (= lt!720337 (drop!1014 lt!720332 (+ 1 from!845)))))

(declare-fun lt!720329 () Unit!35394)

(declare-fun lemmaDropTail!632 (List!20951 Int) Unit!35394)

(assert (=> b!1874965 (= lt!720329 (lemmaDropTail!632 lt!720332 from!845))))

(declare-fun head!4365 (List!20951) Token!6940)

(declare-fun apply!5489 (List!20951 Int) Token!6940)

(assert (=> b!1874965 (= (head!4365 lt!720326) (apply!5489 lt!720332 from!845))))

(assert (=> b!1874965 (= lt!720326 (drop!1014 lt!720332 from!845))))

(declare-fun lt!720335 () Unit!35394)

(declare-fun lemmaDropApply!652 (List!20951 Int) Unit!35394)

(assert (=> b!1874965 (= lt!720335 (lemmaDropApply!652 lt!720332 from!845))))

(assert (=> b!1874965 (= lt!720332 (list!8508 v!6352))))

(declare-fun res!838538 () Bool)

(declare-fun e!1196586 () Bool)

(assert (=> start!187934 (=> (not res!838538) (not e!1196586))))

(get-info :version)

(assert (=> start!187934 (= res!838538 (and ((_ is Lexer!3314) thiss!13718) (>= from!845 0)))))

(assert (=> start!187934 e!1196586))

(assert (=> start!187934 true))

(declare-fun e!1196585 () Bool)

(declare-fun inv!27712 (BalanceConc!13652) Bool)

(assert (=> start!187934 (and (inv!27712 acc!408) e!1196585)))

(declare-fun e!1196583 () Bool)

(assert (=> start!187934 (and (inv!27712 v!6352) e!1196583)))

(declare-fun e!1196591 () Bool)

(declare-fun inv!27713 (Token!6940) Bool)

(assert (=> start!187934 (and (inv!27713 separatorToken!84) e!1196591)))

(declare-fun b!1874966 () Bool)

(declare-fun tp!534393 () Bool)

(declare-fun inv!27714 (Conc!6918) Bool)

(assert (=> b!1874966 (= e!1196583 (and (inv!27714 (c!305482 v!6352)) tp!534393))))

(declare-fun tp!534394 () Bool)

(declare-fun b!1874967 () Bool)

(declare-fun e!1196584 () Bool)

(declare-fun e!1196588 () Bool)

(declare-fun inv!27707 (String!24100) Bool)

(declare-fun inv!27715 (TokenValueInjection!7244) Bool)

(assert (=> b!1874967 (= e!1196588 (and tp!534394 (inv!27707 (tag!4108 (rule!5887 separatorToken!84))) (inv!27715 (transformation!3694 (rule!5887 separatorToken!84))) e!1196584))))

(declare-fun b!1874968 () Bool)

(declare-fun tp!534396 () Bool)

(assert (=> b!1874968 (= e!1196585 (and (inv!27714 (c!305482 acc!408)) tp!534396))))

(declare-fun b!1874969 () Bool)

(assert (=> b!1874969 (= e!1196586 e!1196590)))

(declare-fun res!838539 () Bool)

(assert (=> b!1874969 (=> (not res!838539) (not e!1196590))))

(assert (=> b!1874969 (= res!838539 (and (<= from!845 lt!720328) (isSeparator!3694 (rule!5887 separatorToken!84)) (< from!845 lt!720328)))))

(declare-fun size!16552 (BalanceConc!13652) Int)

(assert (=> b!1874969 (= lt!720328 (size!16552 v!6352))))

(assert (=> b!1874970 (= e!1196584 (and tp!534392 tp!534395))))

(declare-fun b!1874971 () Bool)

(declare-fun tp!534397 () Bool)

(declare-fun inv!21 (TokenValue!3830) Bool)

(assert (=> b!1874971 (= e!1196591 (and (inv!21 (value!116744 separatorToken!84)) e!1196588 tp!534397))))

(assert (= (and start!187934 res!838538) b!1874969))

(assert (= (and b!1874969 res!838539) b!1874965))

(assert (= start!187934 b!1874968))

(assert (= start!187934 b!1874966))

(assert (= b!1874967 b!1874970))

(assert (= b!1874971 b!1874967))

(assert (= start!187934 b!1874971))

(declare-fun m!2300057 () Bool)

(assert (=> b!1874965 m!2300057))

(declare-fun m!2300059 () Bool)

(assert (=> b!1874965 m!2300059))

(declare-fun m!2300061 () Bool)

(assert (=> b!1874965 m!2300061))

(declare-fun m!2300063 () Bool)

(assert (=> b!1874965 m!2300063))

(declare-fun m!2300065 () Bool)

(assert (=> b!1874965 m!2300065))

(assert (=> b!1874965 m!2300061))

(declare-fun m!2300067 () Bool)

(assert (=> b!1874965 m!2300067))

(declare-fun m!2300069 () Bool)

(assert (=> b!1874965 m!2300069))

(declare-fun m!2300071 () Bool)

(assert (=> b!1874965 m!2300071))

(declare-fun m!2300073 () Bool)

(assert (=> b!1874965 m!2300073))

(declare-fun m!2300075 () Bool)

(assert (=> b!1874965 m!2300075))

(declare-fun m!2300077 () Bool)

(assert (=> b!1874965 m!2300077))

(declare-fun m!2300079 () Bool)

(assert (=> b!1874965 m!2300079))

(declare-fun m!2300081 () Bool)

(assert (=> b!1874965 m!2300081))

(declare-fun m!2300083 () Bool)

(assert (=> b!1874965 m!2300083))

(assert (=> b!1874965 m!2300059))

(declare-fun m!2300085 () Bool)

(assert (=> b!1874965 m!2300085))

(declare-fun m!2300087 () Bool)

(assert (=> b!1874965 m!2300087))

(declare-fun m!2300089 () Bool)

(assert (=> b!1874965 m!2300089))

(assert (=> b!1874965 m!2300057))

(declare-fun m!2300091 () Bool)

(assert (=> b!1874965 m!2300091))

(declare-fun m!2300093 () Bool)

(assert (=> b!1874965 m!2300093))

(assert (=> b!1874965 m!2300075))

(assert (=> b!1874965 m!2300079))

(declare-fun m!2300095 () Bool)

(assert (=> b!1874965 m!2300095))

(declare-fun m!2300097 () Bool)

(assert (=> b!1874967 m!2300097))

(declare-fun m!2300099 () Bool)

(assert (=> b!1874967 m!2300099))

(declare-fun m!2300101 () Bool)

(assert (=> b!1874966 m!2300101))

(declare-fun m!2300103 () Bool)

(assert (=> b!1874968 m!2300103))

(declare-fun m!2300105 () Bool)

(assert (=> start!187934 m!2300105))

(declare-fun m!2300107 () Bool)

(assert (=> start!187934 m!2300107))

(declare-fun m!2300109 () Bool)

(assert (=> start!187934 m!2300109))

(declare-fun m!2300111 () Bool)

(assert (=> b!1874969 m!2300111))

(declare-fun m!2300113 () Bool)

(assert (=> b!1874971 m!2300113))

(check-sat (not b!1874971) (not b!1874967) (not b_next!52849) b_and!144433 (not b!1874966) (not b_next!52851) (not b!1874968) (not b!1874969) b_and!144431 (not start!187934) (not b!1874965))
(check-sat b_and!144433 b_and!144431 (not b_next!52849) (not b_next!52851))
