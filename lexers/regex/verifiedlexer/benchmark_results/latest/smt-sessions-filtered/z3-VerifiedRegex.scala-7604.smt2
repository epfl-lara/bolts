; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401678 () Bool)

(assert start!401678)

(declare-fun b!4204089 () Bool)

(declare-fun b_free!122755 () Bool)

(declare-fun b_next!123459 () Bool)

(assert (=> b!4204089 (= b_free!122755 (not b_next!123459))))

(declare-fun tp!1284781 () Bool)

(declare-fun b_and!330285 () Bool)

(assert (=> b!4204089 (= tp!1284781 b_and!330285)))

(declare-fun b_free!122757 () Bool)

(declare-fun b_next!123461 () Bool)

(assert (=> b!4204089 (= b_free!122757 (not b_next!123461))))

(declare-fun tp!1284764 () Bool)

(declare-fun b_and!330287 () Bool)

(assert (=> b!4204089 (= tp!1284764 b_and!330287)))

(declare-fun b!4204084 () Bool)

(declare-fun b_free!122759 () Bool)

(declare-fun b_next!123463 () Bool)

(assert (=> b!4204084 (= b_free!122759 (not b_next!123463))))

(declare-fun tp!1284775 () Bool)

(declare-fun b_and!330289 () Bool)

(assert (=> b!4204084 (= tp!1284775 b_and!330289)))

(declare-fun b_free!122761 () Bool)

(declare-fun b_next!123465 () Bool)

(assert (=> b!4204084 (= b_free!122761 (not b_next!123465))))

(declare-fun tp!1284767 () Bool)

(declare-fun b_and!330291 () Bool)

(assert (=> b!4204084 (= tp!1284767 b_and!330291)))

(declare-fun b!4204101 () Bool)

(declare-fun b_free!122763 () Bool)

(declare-fun b_next!123467 () Bool)

(assert (=> b!4204101 (= b_free!122763 (not b_next!123467))))

(declare-fun tp!1284769 () Bool)

(declare-fun b_and!330293 () Bool)

(assert (=> b!4204101 (= tp!1284769 b_and!330293)))

(declare-fun b_free!122765 () Bool)

(declare-fun b_next!123469 () Bool)

(assert (=> b!4204101 (= b_free!122765 (not b_next!123469))))

(declare-fun tp!1284779 () Bool)

(declare-fun b_and!330295 () Bool)

(assert (=> b!4204101 (= tp!1284779 b_and!330295)))

(declare-fun b!4204082 () Bool)

(declare-fun b_free!122767 () Bool)

(declare-fun b_next!123471 () Bool)

(assert (=> b!4204082 (= b_free!122767 (not b_next!123471))))

(declare-fun tp!1284777 () Bool)

(declare-fun b_and!330297 () Bool)

(assert (=> b!4204082 (= tp!1284777 b_and!330297)))

(declare-fun b_free!122769 () Bool)

(declare-fun b_next!123473 () Bool)

(assert (=> b!4204082 (= b_free!122769 (not b_next!123473))))

(declare-fun tp!1284771 () Bool)

(declare-fun b_and!330299 () Bool)

(assert (=> b!4204082 (= tp!1284771 b_and!330299)))

(declare-datatypes ((List!46327 0))(
  ( (Nil!46203) (Cons!46203 (h!51623 (_ BitVec 16)) (t!347316 List!46327)) )
))
(declare-datatypes ((TokenValue!7952 0))(
  ( (FloatLiteralValue!15904 (text!56109 List!46327)) (TokenValueExt!7951 (__x!28127 Int)) (Broken!39760 (value!240580 List!46327)) (Object!8075) (End!7952) (Def!7952) (Underscore!7952) (Match!7952) (Else!7952) (Error!7952) (Case!7952) (If!7952) (Extends!7952) (Abstract!7952) (Class!7952) (Val!7952) (DelimiterValue!15904 (del!8012 List!46327)) (KeywordValue!7958 (value!240581 List!46327)) (CommentValue!15904 (value!240582 List!46327)) (WhitespaceValue!15904 (value!240583 List!46327)) (IndentationValue!7952 (value!240584 List!46327)) (String!53629) (Int32!7952) (Broken!39761 (value!240585 List!46327)) (Boolean!7953) (Unit!65306) (OperatorValue!7955 (op!8012 List!46327)) (IdentifierValue!15904 (value!240586 List!46327)) (IdentifierValue!15905 (value!240587 List!46327)) (WhitespaceValue!15905 (value!240588 List!46327)) (True!15904) (False!15904) (Broken!39762 (value!240589 List!46327)) (Broken!39763 (value!240590 List!46327)) (True!15905) (RightBrace!7952) (RightBracket!7952) (Colon!7952) (Null!7952) (Comma!7952) (LeftBracket!7952) (False!15905) (LeftBrace!7952) (ImaginaryLiteralValue!7952 (text!56110 List!46327)) (StringLiteralValue!23856 (value!240591 List!46327)) (EOFValue!7952 (value!240592 List!46327)) (IdentValue!7952 (value!240593 List!46327)) (DelimiterValue!15905 (value!240594 List!46327)) (DedentValue!7952 (value!240595 List!46327)) (NewLineValue!7952 (value!240596 List!46327)) (IntegerValue!23856 (value!240597 (_ BitVec 32)) (text!56111 List!46327)) (IntegerValue!23857 (value!240598 Int) (text!56112 List!46327)) (Times!7952) (Or!7952) (Equal!7952) (Minus!7952) (Broken!39764 (value!240599 List!46327)) (And!7952) (Div!7952) (LessEqual!7952) (Mod!7952) (Concat!20579) (Not!7952) (Plus!7952) (SpaceValue!7952 (value!240600 List!46327)) (IntegerValue!23858 (value!240601 Int) (text!56113 List!46327)) (StringLiteralValue!23857 (text!56114 List!46327)) (FloatLiteralValue!15905 (text!56115 List!46327)) (BytesLiteralValue!7952 (value!240602 List!46327)) (CommentValue!15905 (value!240603 List!46327)) (StringLiteralValue!23858 (value!240604 List!46327)) (ErrorTokenValue!7952 (msg!8013 List!46327)) )
))
(declare-datatypes ((C!25448 0))(
  ( (C!25449 (val!14886 Int)) )
))
(declare-datatypes ((List!46328 0))(
  ( (Nil!46204) (Cons!46204 (h!51624 C!25448) (t!347317 List!46328)) )
))
(declare-datatypes ((IArray!27871 0))(
  ( (IArray!27872 (innerList!13993 List!46328)) )
))
(declare-datatypes ((Regex!12627 0))(
  ( (ElementMatch!12627 (c!716680 C!25448)) (Concat!20580 (regOne!25766 Regex!12627) (regTwo!25766 Regex!12627)) (EmptyExpr!12627) (Star!12627 (reg!12956 Regex!12627)) (EmptyLang!12627) (Union!12627 (regOne!25767 Regex!12627) (regTwo!25767 Regex!12627)) )
))
(declare-datatypes ((Conc!13933 0))(
  ( (Node!13933 (left!34413 Conc!13933) (right!34743 Conc!13933) (csize!28096 Int) (cheight!14144 Int)) (Leaf!21538 (xs!17239 IArray!27871) (csize!28097 Int)) (Empty!13933) )
))
(declare-datatypes ((BalanceConc!27460 0))(
  ( (BalanceConc!27461 (c!716681 Conc!13933)) )
))
(declare-datatypes ((String!53630 0))(
  ( (String!53631 (value!240605 String)) )
))
(declare-datatypes ((TokenValueInjection!15332 0))(
  ( (TokenValueInjection!15333 (toValue!10434 Int) (toChars!10293 Int)) )
))
(declare-datatypes ((Rule!15244 0))(
  ( (Rule!15245 (regex!7722 Regex!12627) (tag!8586 String!53630) (isSeparator!7722 Bool) (transformation!7722 TokenValueInjection!15332)) )
))
(declare-datatypes ((Token!14146 0))(
  ( (Token!14147 (value!240606 TokenValue!7952) (rule!10822 Rule!15244) (size!33949 Int) (originalCharacters!8104 List!46328)) )
))
(declare-fun tBis!41 () Token!14146)

(declare-fun b!4204079 () Bool)

(declare-fun e!2609707 () Bool)

(declare-fun tp!1284768 () Bool)

(declare-fun e!2609704 () Bool)

(declare-fun inv!60778 (String!53630) Bool)

(declare-fun inv!60781 (TokenValueInjection!15332) Bool)

(assert (=> b!4204079 (= e!2609707 (and tp!1284768 (inv!60778 (tag!8586 (rule!10822 tBis!41))) (inv!60781 (transformation!7722 (rule!10822 tBis!41))) e!2609704))))

(declare-fun b!4204080 () Bool)

(declare-fun e!2609703 () Bool)

(declare-fun tp_is_empty!22221 () Bool)

(declare-fun tp!1284763 () Bool)

(assert (=> b!4204080 (= e!2609703 (and tp_is_empty!22221 tp!1284763))))

(declare-fun b!4204081 () Bool)

(declare-fun res!1726524 () Bool)

(declare-fun e!2609699 () Bool)

(assert (=> b!4204081 (=> (not res!1726524) (not e!2609699))))

(declare-fun p!3001 () List!46328)

(declare-fun input!3517 () List!46328)

(declare-fun suffix!1557 () List!46328)

(declare-fun ++!11796 (List!46328 List!46328) List!46328)

(assert (=> b!4204081 (= res!1726524 (= (++!11796 p!3001 suffix!1557) input!3517))))

(declare-fun e!2609698 () Bool)

(assert (=> b!4204082 (= e!2609698 (and tp!1284777 tp!1284771))))

(declare-fun res!1726525 () Bool)

(assert (=> start!401678 (=> (not res!1726525) (not e!2609699))))

(declare-datatypes ((LexerInterface!7317 0))(
  ( (LexerInterfaceExt!7314 (__x!28128 Int)) (Lexer!7315) )
))
(declare-fun thiss!26544 () LexerInterface!7317)

(get-info :version)

(assert (=> start!401678 (= res!1726525 ((_ is Lexer!7315) thiss!26544))))

(assert (=> start!401678 e!2609699))

(declare-fun e!2609692 () Bool)

(declare-fun inv!60782 (Token!14146) Bool)

(assert (=> start!401678 (and (inv!60782 tBis!41) e!2609692)))

(assert (=> start!401678 true))

(declare-fun e!2609708 () Bool)

(assert (=> start!401678 e!2609708))

(assert (=> start!401678 e!2609703))

(declare-fun e!2609691 () Bool)

(assert (=> start!401678 e!2609691))

(declare-fun e!2609711 () Bool)

(assert (=> start!401678 e!2609711))

(declare-fun t!8364 () Token!14146)

(declare-fun e!2609688 () Bool)

(assert (=> start!401678 (and (inv!60782 t!8364) e!2609688)))

(declare-fun e!2609700 () Bool)

(assert (=> start!401678 e!2609700))

(declare-fun e!2609694 () Bool)

(assert (=> start!401678 e!2609694))

(declare-fun e!2609701 () Bool)

(assert (=> start!401678 e!2609701))

(declare-fun b!4204083 () Bool)

(declare-fun res!1726522 () Bool)

(declare-fun e!2609706 () Bool)

(assert (=> b!4204083 (=> res!1726522 e!2609706)))

(declare-datatypes ((List!46329 0))(
  ( (Nil!46205) (Cons!46205 (h!51625 Rule!15244) (t!347318 List!46329)) )
))
(declare-fun rules!3967 () List!46329)

(declare-datatypes ((tuple2!43958 0))(
  ( (tuple2!43959 (_1!25113 Token!14146) (_2!25113 List!46328)) )
))
(declare-datatypes ((Option!9910 0))(
  ( (None!9909) (Some!9909 (v!40765 tuple2!43958)) )
))
(declare-fun lt!1497307 () Option!9910)

(declare-fun maxPrefixOneRule!3312 (LexerInterface!7317 Rule!15244 List!46328) Option!9910)

(assert (=> b!4204083 (= res!1726522 (not (= (maxPrefixOneRule!3312 thiss!26544 (h!51625 rules!3967) input!3517) lt!1497307)))))

(assert (=> b!4204084 (= e!2609704 (and tp!1284775 tp!1284767))))

(declare-fun rBis!178 () Rule!15244)

(declare-fun tp!1284780 () Bool)

(declare-fun e!2609710 () Bool)

(declare-fun b!4204085 () Bool)

(assert (=> b!4204085 (= e!2609708 (and tp!1284780 (inv!60778 (tag!8586 rBis!178)) (inv!60781 (transformation!7722 rBis!178)) e!2609710))))

(declare-fun b!4204086 () Bool)

(declare-fun e!2609697 () Bool)

(declare-fun tp!1284765 () Bool)

(assert (=> b!4204086 (= e!2609691 (and e!2609697 tp!1284765))))

(declare-fun b!4204087 () Bool)

(declare-fun res!1726523 () Bool)

(assert (=> b!4204087 (=> res!1726523 e!2609706)))

(declare-fun pBis!121 () List!46328)

(declare-fun suffixBis!41 () List!46328)

(assert (=> b!4204087 (= res!1726523 (not (= (++!11796 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4204088 () Bool)

(declare-fun res!1726518 () Bool)

(assert (=> b!4204088 (=> (not res!1726518) (not e!2609699))))

(declare-fun contains!9539 (List!46329 Rule!15244) Bool)

(assert (=> b!4204088 (= res!1726518 (contains!9539 rules!3967 rBis!178))))

(declare-fun e!2609690 () Bool)

(assert (=> b!4204089 (= e!2609690 (and tp!1284781 tp!1284764))))

(declare-fun e!2609712 () Bool)

(declare-fun tp!1284778 () Bool)

(declare-fun b!4204090 () Bool)

(declare-fun inv!21 (TokenValue!7952) Bool)

(assert (=> b!4204090 (= e!2609688 (and (inv!21 (value!240606 t!8364)) e!2609712 tp!1284778))))

(declare-fun b!4204091 () Bool)

(declare-fun e!2609695 () Bool)

(assert (=> b!4204091 (= e!2609695 (not e!2609706))))

(declare-fun res!1726520 () Bool)

(assert (=> b!4204091 (=> res!1726520 e!2609706)))

(assert (=> b!4204091 (= res!1726520 (not (= (maxPrefixOneRule!3312 thiss!26544 rBis!178 input!3517) (Some!9909 (tuple2!43959 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4581 (List!46328 List!46328) Bool)

(assert (=> b!4204091 (isPrefix!4581 input!3517 input!3517)))

(declare-datatypes ((Unit!65307 0))(
  ( (Unit!65308) )
))
(declare-fun lt!1497308 () Unit!65307)

(declare-fun lemmaIsPrefixRefl!2998 (List!46328 List!46328) Unit!65307)

(assert (=> b!4204091 (= lt!1497308 (lemmaIsPrefixRefl!2998 input!3517 input!3517))))

(declare-fun b!4204092 () Bool)

(declare-fun tp!1284782 () Bool)

(assert (=> b!4204092 (= e!2609694 (and tp_is_empty!22221 tp!1284782))))

(declare-fun b!4204093 () Bool)

(declare-fun res!1726529 () Bool)

(assert (=> b!4204093 (=> (not res!1726529) (not e!2609699))))

(assert (=> b!4204093 (= res!1726529 (isPrefix!4581 p!3001 input!3517))))

(declare-fun b!4204094 () Bool)

(declare-fun res!1726517 () Bool)

(assert (=> b!4204094 (=> res!1726517 e!2609706)))

(assert (=> b!4204094 (= res!1726517 (not (= (rule!10822 tBis!41) rBis!178)))))

(declare-fun b!4204095 () Bool)

(declare-fun isEmpty!27355 (List!46329) Bool)

(assert (=> b!4204095 (= e!2609706 (not (isEmpty!27355 (t!347318 rules!3967))))))

(declare-fun tp!1284774 () Bool)

(declare-fun b!4204096 () Bool)

(assert (=> b!4204096 (= e!2609692 (and (inv!21 (value!240606 tBis!41)) e!2609707 tp!1284774))))

(declare-fun b!4204097 () Bool)

(declare-fun res!1726531 () Bool)

(assert (=> b!4204097 (=> (not res!1726531) (not e!2609695))))

(declare-fun ruleValid!3434 (LexerInterface!7317 Rule!15244) Bool)

(assert (=> b!4204097 (= res!1726531 (ruleValid!3434 thiss!26544 rBis!178))))

(declare-fun b!4204098 () Bool)

(declare-fun res!1726521 () Bool)

(assert (=> b!4204098 (=> res!1726521 e!2609706)))

(assert (=> b!4204098 (= res!1726521 (or (and ((_ is Cons!46205) rules!3967) ((_ is Nil!46205) (t!347318 rules!3967))) (not ((_ is Cons!46205) rules!3967)) (= (h!51625 rules!3967) rBis!178)))))

(declare-fun b!4204099 () Bool)

(declare-fun res!1726528 () Bool)

(assert (=> b!4204099 (=> res!1726528 e!2609706)))

(declare-fun list!16697 (BalanceConc!27460) List!46328)

(declare-fun charsOf!5145 (Token!14146) BalanceConc!27460)

(assert (=> b!4204099 (= res!1726528 (not (= (list!16697 (charsOf!5145 tBis!41)) pBis!121)))))

(declare-fun b!4204100 () Bool)

(declare-fun tp!1284773 () Bool)

(assert (=> b!4204100 (= e!2609697 (and tp!1284773 (inv!60778 (tag!8586 (h!51625 rules!3967))) (inv!60781 (transformation!7722 (h!51625 rules!3967))) e!2609698))))

(assert (=> b!4204101 (= e!2609710 (and tp!1284769 tp!1284779))))

(declare-fun b!4204102 () Bool)

(assert (=> b!4204102 (= e!2609699 e!2609695)))

(declare-fun res!1726530 () Bool)

(assert (=> b!4204102 (=> (not res!1726530) (not e!2609695))))

(declare-fun maxPrefix!4357 (LexerInterface!7317 List!46329 List!46328) Option!9910)

(assert (=> b!4204102 (= res!1726530 (= (maxPrefix!4357 thiss!26544 rules!3967 input!3517) lt!1497307))))

(assert (=> b!4204102 (= lt!1497307 (Some!9909 (tuple2!43959 t!8364 suffix!1557)))))

(declare-fun tp!1284766 () Bool)

(declare-fun b!4204103 () Bool)

(assert (=> b!4204103 (= e!2609712 (and tp!1284766 (inv!60778 (tag!8586 (rule!10822 t!8364))) (inv!60781 (transformation!7722 (rule!10822 t!8364))) e!2609690))))

(declare-fun b!4204104 () Bool)

(declare-fun res!1726526 () Bool)

(assert (=> b!4204104 (=> (not res!1726526) (not e!2609699))))

(declare-fun rulesInvariant!6528 (LexerInterface!7317 List!46329) Bool)

(assert (=> b!4204104 (= res!1726526 (rulesInvariant!6528 thiss!26544 rules!3967))))

(declare-fun b!4204105 () Bool)

(declare-fun tp!1284770 () Bool)

(assert (=> b!4204105 (= e!2609711 (and tp_is_empty!22221 tp!1284770))))

(declare-fun b!4204106 () Bool)

(declare-fun res!1726516 () Bool)

(assert (=> b!4204106 (=> (not res!1726516) (not e!2609699))))

(assert (=> b!4204106 (= res!1726516 (not (isEmpty!27355 rules!3967)))))

(declare-fun b!4204107 () Bool)

(declare-fun tp!1284776 () Bool)

(assert (=> b!4204107 (= e!2609700 (and tp_is_empty!22221 tp!1284776))))

(declare-fun b!4204108 () Bool)

(declare-fun res!1726527 () Bool)

(assert (=> b!4204108 (=> res!1726527 e!2609706)))

(declare-fun rulesValidInductive!2860 (LexerInterface!7317 List!46329) Bool)

(assert (=> b!4204108 (= res!1726527 (not (rulesValidInductive!2860 thiss!26544 (t!347318 rules!3967))))))

(declare-fun b!4204109 () Bool)

(declare-fun res!1726519 () Bool)

(assert (=> b!4204109 (=> (not res!1726519) (not e!2609699))))

(assert (=> b!4204109 (= res!1726519 (isPrefix!4581 pBis!121 input!3517))))

(declare-fun b!4204110 () Bool)

(declare-fun tp!1284772 () Bool)

(assert (=> b!4204110 (= e!2609701 (and tp_is_empty!22221 tp!1284772))))

(assert (= (and start!401678 res!1726525) b!4204081))

(assert (= (and b!4204081 res!1726524) b!4204093))

(assert (= (and b!4204093 res!1726529) b!4204109))

(assert (= (and b!4204109 res!1726519) b!4204106))

(assert (= (and b!4204106 res!1726516) b!4204104))

(assert (= (and b!4204104 res!1726526) b!4204088))

(assert (= (and b!4204088 res!1726518) b!4204102))

(assert (= (and b!4204102 res!1726530) b!4204097))

(assert (= (and b!4204097 res!1726531) b!4204091))

(assert (= (and b!4204091 (not res!1726520)) b!4204094))

(assert (= (and b!4204094 (not res!1726517)) b!4204099))

(assert (= (and b!4204099 (not res!1726528)) b!4204087))

(assert (= (and b!4204087 (not res!1726523)) b!4204098))

(assert (= (and b!4204098 (not res!1726521)) b!4204083))

(assert (= (and b!4204083 (not res!1726522)) b!4204108))

(assert (= (and b!4204108 (not res!1726527)) b!4204095))

(assert (= b!4204079 b!4204084))

(assert (= b!4204096 b!4204079))

(assert (= start!401678 b!4204096))

(assert (= b!4204085 b!4204101))

(assert (= start!401678 b!4204085))

(assert (= (and start!401678 ((_ is Cons!46204) p!3001)) b!4204080))

(assert (= b!4204100 b!4204082))

(assert (= b!4204086 b!4204100))

(assert (= (and start!401678 ((_ is Cons!46205) rules!3967)) b!4204086))

(assert (= (and start!401678 ((_ is Cons!46204) input!3517)) b!4204105))

(assert (= b!4204103 b!4204089))

(assert (= b!4204090 b!4204103))

(assert (= start!401678 b!4204090))

(assert (= (and start!401678 ((_ is Cons!46204) pBis!121)) b!4204107))

(assert (= (and start!401678 ((_ is Cons!46204) suffix!1557)) b!4204092))

(assert (= (and start!401678 ((_ is Cons!46204) suffixBis!41)) b!4204110))

(declare-fun m!4792273 () Bool)

(assert (=> b!4204108 m!4792273))

(declare-fun m!4792275 () Bool)

(assert (=> b!4204079 m!4792275))

(declare-fun m!4792277 () Bool)

(assert (=> b!4204079 m!4792277))

(declare-fun m!4792279 () Bool)

(assert (=> b!4204091 m!4792279))

(declare-fun m!4792281 () Bool)

(assert (=> b!4204091 m!4792281))

(declare-fun m!4792283 () Bool)

(assert (=> b!4204091 m!4792283))

(declare-fun m!4792285 () Bool)

(assert (=> b!4204085 m!4792285))

(declare-fun m!4792287 () Bool)

(assert (=> b!4204085 m!4792287))

(declare-fun m!4792289 () Bool)

(assert (=> b!4204093 m!4792289))

(declare-fun m!4792291 () Bool)

(assert (=> b!4204102 m!4792291))

(declare-fun m!4792293 () Bool)

(assert (=> b!4204090 m!4792293))

(declare-fun m!4792295 () Bool)

(assert (=> b!4204106 m!4792295))

(declare-fun m!4792297 () Bool)

(assert (=> b!4204100 m!4792297))

(declare-fun m!4792299 () Bool)

(assert (=> b!4204100 m!4792299))

(declare-fun m!4792301 () Bool)

(assert (=> b!4204088 m!4792301))

(declare-fun m!4792303 () Bool)

(assert (=> b!4204109 m!4792303))

(declare-fun m!4792305 () Bool)

(assert (=> b!4204083 m!4792305))

(declare-fun m!4792307 () Bool)

(assert (=> start!401678 m!4792307))

(declare-fun m!4792309 () Bool)

(assert (=> start!401678 m!4792309))

(declare-fun m!4792311 () Bool)

(assert (=> b!4204087 m!4792311))

(declare-fun m!4792313 () Bool)

(assert (=> b!4204104 m!4792313))

(declare-fun m!4792315 () Bool)

(assert (=> b!4204103 m!4792315))

(declare-fun m!4792317 () Bool)

(assert (=> b!4204103 m!4792317))

(declare-fun m!4792319 () Bool)

(assert (=> b!4204081 m!4792319))

(declare-fun m!4792321 () Bool)

(assert (=> b!4204096 m!4792321))

(declare-fun m!4792323 () Bool)

(assert (=> b!4204095 m!4792323))

(declare-fun m!4792325 () Bool)

(assert (=> b!4204099 m!4792325))

(assert (=> b!4204099 m!4792325))

(declare-fun m!4792327 () Bool)

(assert (=> b!4204099 m!4792327))

(declare-fun m!4792329 () Bool)

(assert (=> b!4204097 m!4792329))

(check-sat (not b!4204095) b_and!330293 b_and!330285 (not b!4204093) (not b_next!123473) (not b!4204083) (not b_next!123471) (not b!4204107) (not b!4204106) b_and!330299 (not b_next!123467) b_and!330287 (not b_next!123461) (not b!4204105) (not b!4204109) (not b!4204092) (not b_next!123459) b_and!330291 (not b!4204090) (not b!4204100) (not b!4204110) (not b!4204091) (not b_next!123465) (not b!4204097) (not b!4204102) (not b!4204104) (not b!4204079) tp_is_empty!22221 (not b!4204099) (not b!4204096) (not b!4204088) (not b!4204087) (not b_next!123463) (not b!4204103) (not b!4204080) (not b!4204081) b_and!330295 b_and!330297 (not b_next!123469) (not b!4204086) (not b!4204108) (not start!401678) b_and!330289 (not b!4204085))
(check-sat b_and!330293 b_and!330285 (not b_next!123465) (not b_next!123473) (not b_next!123463) (not b_next!123471) (not b_next!123469) b_and!330299 b_and!330289 (not b_next!123467) b_and!330287 (not b_next!123461) (not b_next!123459) b_and!330291 b_and!330295 b_and!330297)
(get-model)

(declare-fun d!1239537 () Bool)

(assert (=> d!1239537 (= (isEmpty!27355 (t!347318 rules!3967)) ((_ is Nil!46205) (t!347318 rules!3967)))))

(assert (=> b!4204095 d!1239537))

(declare-fun b!4204169 () Bool)

(declare-fun e!2609753 () Bool)

(declare-fun e!2609754 () Bool)

(assert (=> b!4204169 (= e!2609753 e!2609754)))

(declare-fun c!716696 () Bool)

(assert (=> b!4204169 (= c!716696 ((_ is IntegerValue!23857) (value!240606 tBis!41)))))

(declare-fun b!4204170 () Bool)

(declare-fun e!2609755 () Bool)

(declare-fun inv!15 (TokenValue!7952) Bool)

(assert (=> b!4204170 (= e!2609755 (inv!15 (value!240606 tBis!41)))))

(declare-fun b!4204171 () Bool)

(declare-fun res!1726574 () Bool)

(assert (=> b!4204171 (=> res!1726574 e!2609755)))

(assert (=> b!4204171 (= res!1726574 (not ((_ is IntegerValue!23858) (value!240606 tBis!41))))))

(assert (=> b!4204171 (= e!2609754 e!2609755)))

(declare-fun b!4204172 () Bool)

(declare-fun inv!17 (TokenValue!7952) Bool)

(assert (=> b!4204172 (= e!2609754 (inv!17 (value!240606 tBis!41)))))

(declare-fun d!1239541 () Bool)

(declare-fun c!716697 () Bool)

(assert (=> d!1239541 (= c!716697 ((_ is IntegerValue!23856) (value!240606 tBis!41)))))

(assert (=> d!1239541 (= (inv!21 (value!240606 tBis!41)) e!2609753)))

(declare-fun b!4204173 () Bool)

(declare-fun inv!16 (TokenValue!7952) Bool)

(assert (=> b!4204173 (= e!2609753 (inv!16 (value!240606 tBis!41)))))

(assert (= (and d!1239541 c!716697) b!4204173))

(assert (= (and d!1239541 (not c!716697)) b!4204169))

(assert (= (and b!4204169 c!716696) b!4204172))

(assert (= (and b!4204169 (not c!716696)) b!4204171))

(assert (= (and b!4204171 (not res!1726574)) b!4204170))

(declare-fun m!4792383 () Bool)

(assert (=> b!4204170 m!4792383))

(declare-fun m!4792385 () Bool)

(assert (=> b!4204172 m!4792385))

(declare-fun m!4792387 () Bool)

(assert (=> b!4204173 m!4792387))

(assert (=> b!4204096 d!1239541))

(declare-fun d!1239543 () Bool)

(assert (=> d!1239543 (= (inv!60778 (tag!8586 rBis!178)) (= (mod (str.len (value!240605 (tag!8586 rBis!178))) 2) 0))))

(assert (=> b!4204085 d!1239543))

(declare-fun d!1239545 () Bool)

(declare-fun res!1726577 () Bool)

(declare-fun e!2609758 () Bool)

(assert (=> d!1239545 (=> (not res!1726577) (not e!2609758))))

(declare-fun semiInverseModEq!3352 (Int Int) Bool)

(assert (=> d!1239545 (= res!1726577 (semiInverseModEq!3352 (toChars!10293 (transformation!7722 rBis!178)) (toValue!10434 (transformation!7722 rBis!178))))))

(assert (=> d!1239545 (= (inv!60781 (transformation!7722 rBis!178)) e!2609758)))

(declare-fun b!4204176 () Bool)

(declare-fun equivClasses!3251 (Int Int) Bool)

(assert (=> b!4204176 (= e!2609758 (equivClasses!3251 (toChars!10293 (transformation!7722 rBis!178)) (toValue!10434 (transformation!7722 rBis!178))))))

(assert (= (and d!1239545 res!1726577) b!4204176))

(declare-fun m!4792389 () Bool)

(assert (=> d!1239545 m!4792389))

(declare-fun m!4792391 () Bool)

(assert (=> b!4204176 m!4792391))

(assert (=> b!4204085 d!1239545))

(declare-fun d!1239547 () Bool)

(assert (=> d!1239547 (= (isEmpty!27355 rules!3967) ((_ is Nil!46205) rules!3967))))

(assert (=> b!4204106 d!1239547))

(declare-fun d!1239549 () Bool)

(assert (=> d!1239549 (= (inv!60778 (tag!8586 (rule!10822 t!8364))) (= (mod (str.len (value!240605 (tag!8586 (rule!10822 t!8364)))) 2) 0))))

(assert (=> b!4204103 d!1239549))

(declare-fun d!1239551 () Bool)

(declare-fun res!1726578 () Bool)

(declare-fun e!2609759 () Bool)

(assert (=> d!1239551 (=> (not res!1726578) (not e!2609759))))

(assert (=> d!1239551 (= res!1726578 (semiInverseModEq!3352 (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (toValue!10434 (transformation!7722 (rule!10822 t!8364)))))))

(assert (=> d!1239551 (= (inv!60781 (transformation!7722 (rule!10822 t!8364))) e!2609759)))

(declare-fun b!4204177 () Bool)

(assert (=> b!4204177 (= e!2609759 (equivClasses!3251 (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (toValue!10434 (transformation!7722 (rule!10822 t!8364)))))))

(assert (= (and d!1239551 res!1726578) b!4204177))

(declare-fun m!4792393 () Bool)

(assert (=> d!1239551 m!4792393))

(declare-fun m!4792395 () Bool)

(assert (=> b!4204177 m!4792395))

(assert (=> b!4204103 d!1239551))

(declare-fun b!4204187 () Bool)

(declare-fun e!2609764 () List!46328)

(assert (=> b!4204187 (= e!2609764 (Cons!46204 (h!51624 p!3001) (++!11796 (t!347317 p!3001) suffix!1557)))))

(declare-fun b!4204188 () Bool)

(declare-fun res!1726584 () Bool)

(declare-fun e!2609765 () Bool)

(assert (=> b!4204188 (=> (not res!1726584) (not e!2609765))))

(declare-fun lt!1497320 () List!46328)

(declare-fun size!33952 (List!46328) Int)

(assert (=> b!4204188 (= res!1726584 (= (size!33952 lt!1497320) (+ (size!33952 p!3001) (size!33952 suffix!1557))))))

(declare-fun b!4204189 () Bool)

(assert (=> b!4204189 (= e!2609765 (or (not (= suffix!1557 Nil!46204)) (= lt!1497320 p!3001)))))

(declare-fun d!1239553 () Bool)

(assert (=> d!1239553 e!2609765))

(declare-fun res!1726583 () Bool)

(assert (=> d!1239553 (=> (not res!1726583) (not e!2609765))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7220 (List!46328) (InoxSet C!25448))

(assert (=> d!1239553 (= res!1726583 (= (content!7220 lt!1497320) ((_ map or) (content!7220 p!3001) (content!7220 suffix!1557))))))

(assert (=> d!1239553 (= lt!1497320 e!2609764)))

(declare-fun c!716700 () Bool)

(assert (=> d!1239553 (= c!716700 ((_ is Nil!46204) p!3001))))

(assert (=> d!1239553 (= (++!11796 p!3001 suffix!1557) lt!1497320)))

(declare-fun b!4204186 () Bool)

(assert (=> b!4204186 (= e!2609764 suffix!1557)))

(assert (= (and d!1239553 c!716700) b!4204186))

(assert (= (and d!1239553 (not c!716700)) b!4204187))

(assert (= (and d!1239553 res!1726583) b!4204188))

(assert (= (and b!4204188 res!1726584) b!4204189))

(declare-fun m!4792397 () Bool)

(assert (=> b!4204187 m!4792397))

(declare-fun m!4792399 () Bool)

(assert (=> b!4204188 m!4792399))

(declare-fun m!4792401 () Bool)

(assert (=> b!4204188 m!4792401))

(declare-fun m!4792403 () Bool)

(assert (=> b!4204188 m!4792403))

(declare-fun m!4792405 () Bool)

(assert (=> d!1239553 m!4792405))

(declare-fun m!4792407 () Bool)

(assert (=> d!1239553 m!4792407))

(declare-fun m!4792409 () Bool)

(assert (=> d!1239553 m!4792409))

(assert (=> b!4204081 d!1239553))

(declare-fun b!4204208 () Bool)

(declare-fun e!2609774 () Option!9910)

(declare-fun lt!1497333 () Option!9910)

(declare-fun lt!1497335 () Option!9910)

(assert (=> b!4204208 (= e!2609774 (ite (and ((_ is None!9909) lt!1497333) ((_ is None!9909) lt!1497335)) None!9909 (ite ((_ is None!9909) lt!1497335) lt!1497333 (ite ((_ is None!9909) lt!1497333) lt!1497335 (ite (>= (size!33949 (_1!25113 (v!40765 lt!1497333))) (size!33949 (_1!25113 (v!40765 lt!1497335)))) lt!1497333 lt!1497335)))))))

(declare-fun call!292765 () Option!9910)

(assert (=> b!4204208 (= lt!1497333 call!292765)))

(assert (=> b!4204208 (= lt!1497335 (maxPrefix!4357 thiss!26544 (t!347318 rules!3967) input!3517))))

(declare-fun b!4204209 () Bool)

(declare-fun e!2609773 () Bool)

(declare-fun e!2609772 () Bool)

(assert (=> b!4204209 (= e!2609773 e!2609772)))

(declare-fun res!1726603 () Bool)

(assert (=> b!4204209 (=> (not res!1726603) (not e!2609772))))

(declare-fun lt!1497334 () Option!9910)

(declare-fun isDefined!7372 (Option!9910) Bool)

(assert (=> b!4204209 (= res!1726603 (isDefined!7372 lt!1497334))))

(declare-fun b!4204210 () Bool)

(declare-fun res!1726602 () Bool)

(assert (=> b!4204210 (=> (not res!1726602) (not e!2609772))))

(declare-fun matchR!6350 (Regex!12627 List!46328) Bool)

(declare-fun get!15027 (Option!9910) tuple2!43958)

(assert (=> b!4204210 (= res!1726602 (matchR!6350 (regex!7722 (rule!10822 (_1!25113 (get!15027 lt!1497334)))) (list!16697 (charsOf!5145 (_1!25113 (get!15027 lt!1497334))))))))

(declare-fun b!4204211 () Bool)

(declare-fun res!1726600 () Bool)

(assert (=> b!4204211 (=> (not res!1726600) (not e!2609772))))

(declare-fun apply!10671 (TokenValueInjection!15332 BalanceConc!27460) TokenValue!7952)

(declare-fun seqFromList!5731 (List!46328) BalanceConc!27460)

(assert (=> b!4204211 (= res!1726600 (= (value!240606 (_1!25113 (get!15027 lt!1497334))) (apply!10671 (transformation!7722 (rule!10822 (_1!25113 (get!15027 lt!1497334)))) (seqFromList!5731 (originalCharacters!8104 (_1!25113 (get!15027 lt!1497334)))))))))

(declare-fun b!4204212 () Bool)

(declare-fun res!1726599 () Bool)

(assert (=> b!4204212 (=> (not res!1726599) (not e!2609772))))

(assert (=> b!4204212 (= res!1726599 (< (size!33952 (_2!25113 (get!15027 lt!1497334))) (size!33952 input!3517)))))

(declare-fun b!4204213 () Bool)

(assert (=> b!4204213 (= e!2609774 call!292765)))

(declare-fun d!1239555 () Bool)

(assert (=> d!1239555 e!2609773))

(declare-fun res!1726604 () Bool)

(assert (=> d!1239555 (=> res!1726604 e!2609773)))

(declare-fun isEmpty!27358 (Option!9910) Bool)

(assert (=> d!1239555 (= res!1726604 (isEmpty!27358 lt!1497334))))

(assert (=> d!1239555 (= lt!1497334 e!2609774)))

(declare-fun c!716703 () Bool)

(assert (=> d!1239555 (= c!716703 (and ((_ is Cons!46205) rules!3967) ((_ is Nil!46205) (t!347318 rules!3967))))))

(declare-fun lt!1497331 () Unit!65307)

(declare-fun lt!1497332 () Unit!65307)

(assert (=> d!1239555 (= lt!1497331 lt!1497332)))

(assert (=> d!1239555 (isPrefix!4581 input!3517 input!3517)))

(assert (=> d!1239555 (= lt!1497332 (lemmaIsPrefixRefl!2998 input!3517 input!3517))))

(assert (=> d!1239555 (rulesValidInductive!2860 thiss!26544 rules!3967)))

(assert (=> d!1239555 (= (maxPrefix!4357 thiss!26544 rules!3967 input!3517) lt!1497334)))

(declare-fun b!4204214 () Bool)

(declare-fun res!1726605 () Bool)

(assert (=> b!4204214 (=> (not res!1726605) (not e!2609772))))

(assert (=> b!4204214 (= res!1726605 (= (++!11796 (list!16697 (charsOf!5145 (_1!25113 (get!15027 lt!1497334)))) (_2!25113 (get!15027 lt!1497334))) input!3517))))

(declare-fun b!4204215 () Bool)

(assert (=> b!4204215 (= e!2609772 (contains!9539 rules!3967 (rule!10822 (_1!25113 (get!15027 lt!1497334)))))))

(declare-fun bm!292760 () Bool)

(assert (=> bm!292760 (= call!292765 (maxPrefixOneRule!3312 thiss!26544 (h!51625 rules!3967) input!3517))))

(declare-fun b!4204216 () Bool)

(declare-fun res!1726601 () Bool)

(assert (=> b!4204216 (=> (not res!1726601) (not e!2609772))))

(assert (=> b!4204216 (= res!1726601 (= (list!16697 (charsOf!5145 (_1!25113 (get!15027 lt!1497334)))) (originalCharacters!8104 (_1!25113 (get!15027 lt!1497334)))))))

(assert (= (and d!1239555 c!716703) b!4204213))

(assert (= (and d!1239555 (not c!716703)) b!4204208))

(assert (= (or b!4204213 b!4204208) bm!292760))

(assert (= (and d!1239555 (not res!1726604)) b!4204209))

(assert (= (and b!4204209 res!1726603) b!4204216))

(assert (= (and b!4204216 res!1726601) b!4204212))

(assert (= (and b!4204212 res!1726599) b!4204214))

(assert (= (and b!4204214 res!1726605) b!4204211))

(assert (= (and b!4204211 res!1726600) b!4204210))

(assert (= (and b!4204210 res!1726602) b!4204215))

(declare-fun m!4792411 () Bool)

(assert (=> b!4204215 m!4792411))

(declare-fun m!4792413 () Bool)

(assert (=> b!4204215 m!4792413))

(assert (=> bm!292760 m!4792305))

(assert (=> b!4204211 m!4792411))

(declare-fun m!4792415 () Bool)

(assert (=> b!4204211 m!4792415))

(assert (=> b!4204211 m!4792415))

(declare-fun m!4792417 () Bool)

(assert (=> b!4204211 m!4792417))

(declare-fun m!4792419 () Bool)

(assert (=> b!4204209 m!4792419))

(assert (=> b!4204210 m!4792411))

(declare-fun m!4792421 () Bool)

(assert (=> b!4204210 m!4792421))

(assert (=> b!4204210 m!4792421))

(declare-fun m!4792423 () Bool)

(assert (=> b!4204210 m!4792423))

(assert (=> b!4204210 m!4792423))

(declare-fun m!4792425 () Bool)

(assert (=> b!4204210 m!4792425))

(assert (=> b!4204216 m!4792411))

(assert (=> b!4204216 m!4792421))

(assert (=> b!4204216 m!4792421))

(assert (=> b!4204216 m!4792423))

(declare-fun m!4792427 () Bool)

(assert (=> b!4204208 m!4792427))

(assert (=> b!4204214 m!4792411))

(assert (=> b!4204214 m!4792421))

(assert (=> b!4204214 m!4792421))

(assert (=> b!4204214 m!4792423))

(assert (=> b!4204214 m!4792423))

(declare-fun m!4792429 () Bool)

(assert (=> b!4204214 m!4792429))

(declare-fun m!4792431 () Bool)

(assert (=> d!1239555 m!4792431))

(assert (=> d!1239555 m!4792281))

(assert (=> d!1239555 m!4792283))

(declare-fun m!4792433 () Bool)

(assert (=> d!1239555 m!4792433))

(assert (=> b!4204212 m!4792411))

(declare-fun m!4792435 () Bool)

(assert (=> b!4204212 m!4792435))

(declare-fun m!4792437 () Bool)

(assert (=> b!4204212 m!4792437))

(assert (=> b!4204102 d!1239555))

(declare-fun b!4204235 () Bool)

(declare-fun res!1726623 () Bool)

(declare-fun e!2609786 () Bool)

(assert (=> b!4204235 (=> (not res!1726623) (not e!2609786))))

(declare-fun lt!1497346 () Option!9910)

(assert (=> b!4204235 (= res!1726623 (= (++!11796 (list!16697 (charsOf!5145 (_1!25113 (get!15027 lt!1497346)))) (_2!25113 (get!15027 lt!1497346))) input!3517))))

(declare-fun b!4204236 () Bool)

(declare-fun e!2609783 () Option!9910)

(declare-datatypes ((tuple2!43962 0))(
  ( (tuple2!43963 (_1!25115 List!46328) (_2!25115 List!46328)) )
))
(declare-fun lt!1497348 () tuple2!43962)

(declare-fun size!33953 (BalanceConc!27460) Int)

(assert (=> b!4204236 (= e!2609783 (Some!9909 (tuple2!43959 (Token!14147 (apply!10671 (transformation!7722 (h!51625 rules!3967)) (seqFromList!5731 (_1!25115 lt!1497348))) (h!51625 rules!3967) (size!33953 (seqFromList!5731 (_1!25115 lt!1497348))) (_1!25115 lt!1497348)) (_2!25115 lt!1497348))))))

(declare-fun lt!1497349 () Unit!65307)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1604 (Regex!12627 List!46328) Unit!65307)

(assert (=> b!4204236 (= lt!1497349 (longestMatchIsAcceptedByMatchOrIsEmpty!1604 (regex!7722 (h!51625 rules!3967)) input!3517))))

(declare-fun res!1726625 () Bool)

(declare-fun isEmpty!27359 (List!46328) Bool)

(declare-fun findLongestMatchInner!1631 (Regex!12627 List!46328 Int List!46328 List!46328 Int) tuple2!43962)

(assert (=> b!4204236 (= res!1726625 (isEmpty!27359 (_1!25115 (findLongestMatchInner!1631 (regex!7722 (h!51625 rules!3967)) Nil!46204 (size!33952 Nil!46204) input!3517 input!3517 (size!33952 input!3517)))))))

(declare-fun e!2609784 () Bool)

(assert (=> b!4204236 (=> res!1726625 e!2609784)))

(assert (=> b!4204236 e!2609784))

(declare-fun lt!1497350 () Unit!65307)

(assert (=> b!4204236 (= lt!1497350 lt!1497349)))

(declare-fun lt!1497347 () Unit!65307)

(declare-fun lemmaSemiInverse!2472 (TokenValueInjection!15332 BalanceConc!27460) Unit!65307)

(assert (=> b!4204236 (= lt!1497347 (lemmaSemiInverse!2472 (transformation!7722 (h!51625 rules!3967)) (seqFromList!5731 (_1!25115 lt!1497348))))))

(declare-fun b!4204237 () Bool)

(assert (=> b!4204237 (= e!2609784 (matchR!6350 (regex!7722 (h!51625 rules!3967)) (_1!25115 (findLongestMatchInner!1631 (regex!7722 (h!51625 rules!3967)) Nil!46204 (size!33952 Nil!46204) input!3517 input!3517 (size!33952 input!3517)))))))

(declare-fun d!1239557 () Bool)

(declare-fun e!2609785 () Bool)

(assert (=> d!1239557 e!2609785))

(declare-fun res!1726620 () Bool)

(assert (=> d!1239557 (=> res!1726620 e!2609785)))

(assert (=> d!1239557 (= res!1726620 (isEmpty!27358 lt!1497346))))

(assert (=> d!1239557 (= lt!1497346 e!2609783)))

(declare-fun c!716706 () Bool)

(assert (=> d!1239557 (= c!716706 (isEmpty!27359 (_1!25115 lt!1497348)))))

(declare-fun findLongestMatch!1544 (Regex!12627 List!46328) tuple2!43962)

(assert (=> d!1239557 (= lt!1497348 (findLongestMatch!1544 (regex!7722 (h!51625 rules!3967)) input!3517))))

(assert (=> d!1239557 (ruleValid!3434 thiss!26544 (h!51625 rules!3967))))

(assert (=> d!1239557 (= (maxPrefixOneRule!3312 thiss!26544 (h!51625 rules!3967) input!3517) lt!1497346)))

(declare-fun b!4204238 () Bool)

(declare-fun res!1726626 () Bool)

(assert (=> b!4204238 (=> (not res!1726626) (not e!2609786))))

(assert (=> b!4204238 (= res!1726626 (= (rule!10822 (_1!25113 (get!15027 lt!1497346))) (h!51625 rules!3967)))))

(declare-fun b!4204239 () Bool)

(assert (=> b!4204239 (= e!2609785 e!2609786)))

(declare-fun res!1726621 () Bool)

(assert (=> b!4204239 (=> (not res!1726621) (not e!2609786))))

(assert (=> b!4204239 (= res!1726621 (matchR!6350 (regex!7722 (h!51625 rules!3967)) (list!16697 (charsOf!5145 (_1!25113 (get!15027 lt!1497346))))))))

(declare-fun b!4204240 () Bool)

(declare-fun res!1726622 () Bool)

(assert (=> b!4204240 (=> (not res!1726622) (not e!2609786))))

(assert (=> b!4204240 (= res!1726622 (= (value!240606 (_1!25113 (get!15027 lt!1497346))) (apply!10671 (transformation!7722 (rule!10822 (_1!25113 (get!15027 lt!1497346)))) (seqFromList!5731 (originalCharacters!8104 (_1!25113 (get!15027 lt!1497346)))))))))

(declare-fun b!4204241 () Bool)

(declare-fun res!1726624 () Bool)

(assert (=> b!4204241 (=> (not res!1726624) (not e!2609786))))

(assert (=> b!4204241 (= res!1726624 (< (size!33952 (_2!25113 (get!15027 lt!1497346))) (size!33952 input!3517)))))

(declare-fun b!4204242 () Bool)

(assert (=> b!4204242 (= e!2609783 None!9909)))

(declare-fun b!4204243 () Bool)

(assert (=> b!4204243 (= e!2609786 (= (size!33949 (_1!25113 (get!15027 lt!1497346))) (size!33952 (originalCharacters!8104 (_1!25113 (get!15027 lt!1497346))))))))

(assert (= (and d!1239557 c!716706) b!4204242))

(assert (= (and d!1239557 (not c!716706)) b!4204236))

(assert (= (and b!4204236 (not res!1726625)) b!4204237))

(assert (= (and d!1239557 (not res!1726620)) b!4204239))

(assert (= (and b!4204239 res!1726621) b!4204235))

(assert (= (and b!4204235 res!1726623) b!4204241))

(assert (= (and b!4204241 res!1726624) b!4204238))

(assert (= (and b!4204238 res!1726626) b!4204240))

(assert (= (and b!4204240 res!1726622) b!4204243))

(declare-fun m!4792439 () Bool)

(assert (=> b!4204241 m!4792439))

(declare-fun m!4792441 () Bool)

(assert (=> b!4204241 m!4792441))

(assert (=> b!4204241 m!4792437))

(assert (=> b!4204239 m!4792439))

(declare-fun m!4792443 () Bool)

(assert (=> b!4204239 m!4792443))

(assert (=> b!4204239 m!4792443))

(declare-fun m!4792445 () Bool)

(assert (=> b!4204239 m!4792445))

(assert (=> b!4204239 m!4792445))

(declare-fun m!4792447 () Bool)

(assert (=> b!4204239 m!4792447))

(assert (=> b!4204235 m!4792439))

(assert (=> b!4204235 m!4792443))

(assert (=> b!4204235 m!4792443))

(assert (=> b!4204235 m!4792445))

(assert (=> b!4204235 m!4792445))

(declare-fun m!4792449 () Bool)

(assert (=> b!4204235 m!4792449))

(assert (=> b!4204238 m!4792439))

(assert (=> b!4204240 m!4792439))

(declare-fun m!4792451 () Bool)

(assert (=> b!4204240 m!4792451))

(assert (=> b!4204240 m!4792451))

(declare-fun m!4792453 () Bool)

(assert (=> b!4204240 m!4792453))

(declare-fun m!4792455 () Bool)

(assert (=> d!1239557 m!4792455))

(declare-fun m!4792457 () Bool)

(assert (=> d!1239557 m!4792457))

(declare-fun m!4792459 () Bool)

(assert (=> d!1239557 m!4792459))

(declare-fun m!4792461 () Bool)

(assert (=> d!1239557 m!4792461))

(declare-fun m!4792463 () Bool)

(assert (=> b!4204236 m!4792463))

(declare-fun m!4792465 () Bool)

(assert (=> b!4204236 m!4792465))

(declare-fun m!4792467 () Bool)

(assert (=> b!4204236 m!4792467))

(assert (=> b!4204236 m!4792437))

(declare-fun m!4792469 () Bool)

(assert (=> b!4204236 m!4792469))

(declare-fun m!4792471 () Bool)

(assert (=> b!4204236 m!4792471))

(declare-fun m!4792473 () Bool)

(assert (=> b!4204236 m!4792473))

(assert (=> b!4204236 m!4792437))

(assert (=> b!4204236 m!4792463))

(declare-fun m!4792475 () Bool)

(assert (=> b!4204236 m!4792475))

(assert (=> b!4204236 m!4792463))

(declare-fun m!4792477 () Bool)

(assert (=> b!4204236 m!4792477))

(assert (=> b!4204236 m!4792463))

(assert (=> b!4204236 m!4792467))

(assert (=> b!4204237 m!4792467))

(assert (=> b!4204237 m!4792437))

(assert (=> b!4204237 m!4792467))

(assert (=> b!4204237 m!4792437))

(assert (=> b!4204237 m!4792469))

(declare-fun m!4792479 () Bool)

(assert (=> b!4204237 m!4792479))

(assert (=> b!4204243 m!4792439))

(declare-fun m!4792481 () Bool)

(assert (=> b!4204243 m!4792481))

(assert (=> b!4204083 d!1239557))

(declare-fun d!1239559 () Bool)

(declare-fun res!1726629 () Bool)

(declare-fun e!2609789 () Bool)

(assert (=> d!1239559 (=> (not res!1726629) (not e!2609789))))

(declare-fun rulesValid!3020 (LexerInterface!7317 List!46329) Bool)

(assert (=> d!1239559 (= res!1726629 (rulesValid!3020 thiss!26544 rules!3967))))

(assert (=> d!1239559 (= (rulesInvariant!6528 thiss!26544 rules!3967) e!2609789)))

(declare-fun b!4204246 () Bool)

(declare-datatypes ((List!46331 0))(
  ( (Nil!46207) (Cons!46207 (h!51627 String!53630) (t!347360 List!46331)) )
))
(declare-fun noDuplicateTag!3181 (LexerInterface!7317 List!46329 List!46331) Bool)

(assert (=> b!4204246 (= e!2609789 (noDuplicateTag!3181 thiss!26544 rules!3967 Nil!46207))))

(assert (= (and d!1239559 res!1726629) b!4204246))

(declare-fun m!4792483 () Bool)

(assert (=> d!1239559 m!4792483))

(declare-fun m!4792485 () Bool)

(assert (=> b!4204246 m!4792485))

(assert (=> b!4204104 d!1239559))

(declare-fun b!4204256 () Bool)

(declare-fun res!1726640 () Bool)

(declare-fun e!2609797 () Bool)

(assert (=> b!4204256 (=> (not res!1726640) (not e!2609797))))

(declare-fun head!8920 (List!46328) C!25448)

(assert (=> b!4204256 (= res!1726640 (= (head!8920 p!3001) (head!8920 input!3517)))))

(declare-fun b!4204257 () Bool)

(declare-fun tail!6767 (List!46328) List!46328)

(assert (=> b!4204257 (= e!2609797 (isPrefix!4581 (tail!6767 p!3001) (tail!6767 input!3517)))))

(declare-fun b!4204255 () Bool)

(declare-fun e!2609798 () Bool)

(assert (=> b!4204255 (= e!2609798 e!2609797)))

(declare-fun res!1726641 () Bool)

(assert (=> b!4204255 (=> (not res!1726641) (not e!2609797))))

(assert (=> b!4204255 (= res!1726641 (not ((_ is Nil!46204) input!3517)))))

(declare-fun b!4204258 () Bool)

(declare-fun e!2609796 () Bool)

(assert (=> b!4204258 (= e!2609796 (>= (size!33952 input!3517) (size!33952 p!3001)))))

(declare-fun d!1239561 () Bool)

(assert (=> d!1239561 e!2609796))

(declare-fun res!1726639 () Bool)

(assert (=> d!1239561 (=> res!1726639 e!2609796)))

(declare-fun lt!1497353 () Bool)

(assert (=> d!1239561 (= res!1726639 (not lt!1497353))))

(assert (=> d!1239561 (= lt!1497353 e!2609798)))

(declare-fun res!1726638 () Bool)

(assert (=> d!1239561 (=> res!1726638 e!2609798)))

(assert (=> d!1239561 (= res!1726638 ((_ is Nil!46204) p!3001))))

(assert (=> d!1239561 (= (isPrefix!4581 p!3001 input!3517) lt!1497353)))

(assert (= (and d!1239561 (not res!1726638)) b!4204255))

(assert (= (and b!4204255 res!1726641) b!4204256))

(assert (= (and b!4204256 res!1726640) b!4204257))

(assert (= (and d!1239561 (not res!1726639)) b!4204258))

(declare-fun m!4792487 () Bool)

(assert (=> b!4204256 m!4792487))

(declare-fun m!4792489 () Bool)

(assert (=> b!4204256 m!4792489))

(declare-fun m!4792491 () Bool)

(assert (=> b!4204257 m!4792491))

(declare-fun m!4792493 () Bool)

(assert (=> b!4204257 m!4792493))

(assert (=> b!4204257 m!4792491))

(assert (=> b!4204257 m!4792493))

(declare-fun m!4792495 () Bool)

(assert (=> b!4204257 m!4792495))

(assert (=> b!4204258 m!4792437))

(assert (=> b!4204258 m!4792401))

(assert (=> b!4204093 d!1239561))

(declare-fun d!1239563 () Bool)

(assert (=> d!1239563 (= (inv!60778 (tag!8586 (rule!10822 tBis!41))) (= (mod (str.len (value!240605 (tag!8586 (rule!10822 tBis!41)))) 2) 0))))

(assert (=> b!4204079 d!1239563))

(declare-fun d!1239565 () Bool)

(declare-fun res!1726642 () Bool)

(declare-fun e!2609799 () Bool)

(assert (=> d!1239565 (=> (not res!1726642) (not e!2609799))))

(assert (=> d!1239565 (= res!1726642 (semiInverseModEq!3352 (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (toValue!10434 (transformation!7722 (rule!10822 tBis!41)))))))

(assert (=> d!1239565 (= (inv!60781 (transformation!7722 (rule!10822 tBis!41))) e!2609799)))

(declare-fun b!4204259 () Bool)

(assert (=> b!4204259 (= e!2609799 (equivClasses!3251 (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (toValue!10434 (transformation!7722 (rule!10822 tBis!41)))))))

(assert (= (and d!1239565 res!1726642) b!4204259))

(declare-fun m!4792497 () Bool)

(assert (=> d!1239565 m!4792497))

(declare-fun m!4792499 () Bool)

(assert (=> b!4204259 m!4792499))

(assert (=> b!4204079 d!1239565))

(declare-fun d!1239567 () Bool)

(assert (=> d!1239567 (= (inv!60778 (tag!8586 (h!51625 rules!3967))) (= (mod (str.len (value!240605 (tag!8586 (h!51625 rules!3967)))) 2) 0))))

(assert (=> b!4204100 d!1239567))

(declare-fun d!1239569 () Bool)

(declare-fun res!1726643 () Bool)

(declare-fun e!2609800 () Bool)

(assert (=> d!1239569 (=> (not res!1726643) (not e!2609800))))

(assert (=> d!1239569 (= res!1726643 (semiInverseModEq!3352 (toChars!10293 (transformation!7722 (h!51625 rules!3967))) (toValue!10434 (transformation!7722 (h!51625 rules!3967)))))))

(assert (=> d!1239569 (= (inv!60781 (transformation!7722 (h!51625 rules!3967))) e!2609800)))

(declare-fun b!4204260 () Bool)

(assert (=> b!4204260 (= e!2609800 (equivClasses!3251 (toChars!10293 (transformation!7722 (h!51625 rules!3967))) (toValue!10434 (transformation!7722 (h!51625 rules!3967)))))))

(assert (= (and d!1239569 res!1726643) b!4204260))

(declare-fun m!4792501 () Bool)

(assert (=> d!1239569 m!4792501))

(declare-fun m!4792503 () Bool)

(assert (=> b!4204260 m!4792503))

(assert (=> b!4204100 d!1239569))

(declare-fun d!1239571 () Bool)

(declare-fun res!1726648 () Bool)

(declare-fun e!2609803 () Bool)

(assert (=> d!1239571 (=> (not res!1726648) (not e!2609803))))

(assert (=> d!1239571 (= res!1726648 (not (isEmpty!27359 (originalCharacters!8104 tBis!41))))))

(assert (=> d!1239571 (= (inv!60782 tBis!41) e!2609803)))

(declare-fun b!4204265 () Bool)

(declare-fun res!1726649 () Bool)

(assert (=> b!4204265 (=> (not res!1726649) (not e!2609803))))

(declare-fun dynLambda!19936 (Int TokenValue!7952) BalanceConc!27460)

(assert (=> b!4204265 (= res!1726649 (= (originalCharacters!8104 tBis!41) (list!16697 (dynLambda!19936 (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (value!240606 tBis!41)))))))

(declare-fun b!4204266 () Bool)

(assert (=> b!4204266 (= e!2609803 (= (size!33949 tBis!41) (size!33952 (originalCharacters!8104 tBis!41))))))

(assert (= (and d!1239571 res!1726648) b!4204265))

(assert (= (and b!4204265 res!1726649) b!4204266))

(declare-fun b_lambda!123795 () Bool)

(assert (=> (not b_lambda!123795) (not b!4204265)))

(declare-fun tb!252195 () Bool)

(declare-fun t!347320 () Bool)

(assert (=> (and b!4204089 (= (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41)))) t!347320) tb!252195))

(declare-fun b!4204271 () Bool)

(declare-fun e!2609806 () Bool)

(declare-fun tp!1284785 () Bool)

(declare-fun inv!60785 (Conc!13933) Bool)

(assert (=> b!4204271 (= e!2609806 (and (inv!60785 (c!716681 (dynLambda!19936 (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (value!240606 tBis!41)))) tp!1284785))))

(declare-fun result!307364 () Bool)

(declare-fun inv!60786 (BalanceConc!27460) Bool)

(assert (=> tb!252195 (= result!307364 (and (inv!60786 (dynLambda!19936 (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (value!240606 tBis!41))) e!2609806))))

(assert (= tb!252195 b!4204271))

(declare-fun m!4792505 () Bool)

(assert (=> b!4204271 m!4792505))

(declare-fun m!4792507 () Bool)

(assert (=> tb!252195 m!4792507))

(assert (=> b!4204265 t!347320))

(declare-fun b_and!330301 () Bool)

(assert (= b_and!330287 (and (=> t!347320 result!307364) b_and!330301)))

(declare-fun t!347322 () Bool)

(declare-fun tb!252197 () Bool)

(assert (=> (and b!4204084 (= (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41)))) t!347322) tb!252197))

(declare-fun result!307368 () Bool)

(assert (= result!307368 result!307364))

(assert (=> b!4204265 t!347322))

(declare-fun b_and!330303 () Bool)

(assert (= b_and!330291 (and (=> t!347322 result!307368) b_and!330303)))

(declare-fun t!347324 () Bool)

(declare-fun tb!252199 () Bool)

(assert (=> (and b!4204101 (= (toChars!10293 (transformation!7722 rBis!178)) (toChars!10293 (transformation!7722 (rule!10822 tBis!41)))) t!347324) tb!252199))

(declare-fun result!307370 () Bool)

(assert (= result!307370 result!307364))

(assert (=> b!4204265 t!347324))

(declare-fun b_and!330305 () Bool)

(assert (= b_and!330295 (and (=> t!347324 result!307370) b_and!330305)))

(declare-fun t!347326 () Bool)

(declare-fun tb!252201 () Bool)

(assert (=> (and b!4204082 (= (toChars!10293 (transformation!7722 (h!51625 rules!3967))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41)))) t!347326) tb!252201))

(declare-fun result!307372 () Bool)

(assert (= result!307372 result!307364))

(assert (=> b!4204265 t!347326))

(declare-fun b_and!330307 () Bool)

(assert (= b_and!330299 (and (=> t!347326 result!307372) b_and!330307)))

(declare-fun m!4792509 () Bool)

(assert (=> d!1239571 m!4792509))

(declare-fun m!4792511 () Bool)

(assert (=> b!4204265 m!4792511))

(assert (=> b!4204265 m!4792511))

(declare-fun m!4792513 () Bool)

(assert (=> b!4204265 m!4792513))

(declare-fun m!4792515 () Bool)

(assert (=> b!4204266 m!4792515))

(assert (=> start!401678 d!1239571))

(declare-fun d!1239573 () Bool)

(declare-fun res!1726650 () Bool)

(declare-fun e!2609807 () Bool)

(assert (=> d!1239573 (=> (not res!1726650) (not e!2609807))))

(assert (=> d!1239573 (= res!1726650 (not (isEmpty!27359 (originalCharacters!8104 t!8364))))))

(assert (=> d!1239573 (= (inv!60782 t!8364) e!2609807)))

(declare-fun b!4204272 () Bool)

(declare-fun res!1726651 () Bool)

(assert (=> b!4204272 (=> (not res!1726651) (not e!2609807))))

(assert (=> b!4204272 (= res!1726651 (= (originalCharacters!8104 t!8364) (list!16697 (dynLambda!19936 (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (value!240606 t!8364)))))))

(declare-fun b!4204273 () Bool)

(assert (=> b!4204273 (= e!2609807 (= (size!33949 t!8364) (size!33952 (originalCharacters!8104 t!8364))))))

(assert (= (and d!1239573 res!1726650) b!4204272))

(assert (= (and b!4204272 res!1726651) b!4204273))

(declare-fun b_lambda!123797 () Bool)

(assert (=> (not b_lambda!123797) (not b!4204272)))

(declare-fun t!347328 () Bool)

(declare-fun tb!252203 () Bool)

(assert (=> (and b!4204089 (= (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (toChars!10293 (transformation!7722 (rule!10822 t!8364)))) t!347328) tb!252203))

(declare-fun b!4204274 () Bool)

(declare-fun e!2609808 () Bool)

(declare-fun tp!1284786 () Bool)

(assert (=> b!4204274 (= e!2609808 (and (inv!60785 (c!716681 (dynLambda!19936 (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (value!240606 t!8364)))) tp!1284786))))

(declare-fun result!307374 () Bool)

(assert (=> tb!252203 (= result!307374 (and (inv!60786 (dynLambda!19936 (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (value!240606 t!8364))) e!2609808))))

(assert (= tb!252203 b!4204274))

(declare-fun m!4792517 () Bool)

(assert (=> b!4204274 m!4792517))

(declare-fun m!4792519 () Bool)

(assert (=> tb!252203 m!4792519))

(assert (=> b!4204272 t!347328))

(declare-fun b_and!330309 () Bool)

(assert (= b_and!330301 (and (=> t!347328 result!307374) b_and!330309)))

(declare-fun tb!252205 () Bool)

(declare-fun t!347330 () Bool)

(assert (=> (and b!4204084 (= (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (toChars!10293 (transformation!7722 (rule!10822 t!8364)))) t!347330) tb!252205))

(declare-fun result!307376 () Bool)

(assert (= result!307376 result!307374))

(assert (=> b!4204272 t!347330))

(declare-fun b_and!330311 () Bool)

(assert (= b_and!330303 (and (=> t!347330 result!307376) b_and!330311)))

(declare-fun t!347332 () Bool)

(declare-fun tb!252207 () Bool)

(assert (=> (and b!4204101 (= (toChars!10293 (transformation!7722 rBis!178)) (toChars!10293 (transformation!7722 (rule!10822 t!8364)))) t!347332) tb!252207))

(declare-fun result!307378 () Bool)

(assert (= result!307378 result!307374))

(assert (=> b!4204272 t!347332))

(declare-fun b_and!330313 () Bool)

(assert (= b_and!330305 (and (=> t!347332 result!307378) b_and!330313)))

(declare-fun t!347334 () Bool)

(declare-fun tb!252209 () Bool)

(assert (=> (and b!4204082 (= (toChars!10293 (transformation!7722 (h!51625 rules!3967))) (toChars!10293 (transformation!7722 (rule!10822 t!8364)))) t!347334) tb!252209))

(declare-fun result!307380 () Bool)

(assert (= result!307380 result!307374))

(assert (=> b!4204272 t!347334))

(declare-fun b_and!330315 () Bool)

(assert (= b_and!330307 (and (=> t!347334 result!307380) b_and!330315)))

(declare-fun m!4792521 () Bool)

(assert (=> d!1239573 m!4792521))

(declare-fun m!4792523 () Bool)

(assert (=> b!4204272 m!4792523))

(assert (=> b!4204272 m!4792523))

(declare-fun m!4792525 () Bool)

(assert (=> b!4204272 m!4792525))

(declare-fun m!4792527 () Bool)

(assert (=> b!4204273 m!4792527))

(assert (=> start!401678 d!1239573))

(declare-fun b!4204275 () Bool)

(declare-fun res!1726655 () Bool)

(declare-fun e!2609812 () Bool)

(assert (=> b!4204275 (=> (not res!1726655) (not e!2609812))))

(declare-fun lt!1497354 () Option!9910)

(assert (=> b!4204275 (= res!1726655 (= (++!11796 (list!16697 (charsOf!5145 (_1!25113 (get!15027 lt!1497354)))) (_2!25113 (get!15027 lt!1497354))) input!3517))))

(declare-fun b!4204276 () Bool)

(declare-fun e!2609809 () Option!9910)

(declare-fun lt!1497356 () tuple2!43962)

(assert (=> b!4204276 (= e!2609809 (Some!9909 (tuple2!43959 (Token!14147 (apply!10671 (transformation!7722 rBis!178) (seqFromList!5731 (_1!25115 lt!1497356))) rBis!178 (size!33953 (seqFromList!5731 (_1!25115 lt!1497356))) (_1!25115 lt!1497356)) (_2!25115 lt!1497356))))))

(declare-fun lt!1497357 () Unit!65307)

(assert (=> b!4204276 (= lt!1497357 (longestMatchIsAcceptedByMatchOrIsEmpty!1604 (regex!7722 rBis!178) input!3517))))

(declare-fun res!1726657 () Bool)

(assert (=> b!4204276 (= res!1726657 (isEmpty!27359 (_1!25115 (findLongestMatchInner!1631 (regex!7722 rBis!178) Nil!46204 (size!33952 Nil!46204) input!3517 input!3517 (size!33952 input!3517)))))))

(declare-fun e!2609810 () Bool)

(assert (=> b!4204276 (=> res!1726657 e!2609810)))

(assert (=> b!4204276 e!2609810))

(declare-fun lt!1497358 () Unit!65307)

(assert (=> b!4204276 (= lt!1497358 lt!1497357)))

(declare-fun lt!1497355 () Unit!65307)

(assert (=> b!4204276 (= lt!1497355 (lemmaSemiInverse!2472 (transformation!7722 rBis!178) (seqFromList!5731 (_1!25115 lt!1497356))))))

(declare-fun b!4204277 () Bool)

(assert (=> b!4204277 (= e!2609810 (matchR!6350 (regex!7722 rBis!178) (_1!25115 (findLongestMatchInner!1631 (regex!7722 rBis!178) Nil!46204 (size!33952 Nil!46204) input!3517 input!3517 (size!33952 input!3517)))))))

(declare-fun d!1239575 () Bool)

(declare-fun e!2609811 () Bool)

(assert (=> d!1239575 e!2609811))

(declare-fun res!1726652 () Bool)

(assert (=> d!1239575 (=> res!1726652 e!2609811)))

(assert (=> d!1239575 (= res!1726652 (isEmpty!27358 lt!1497354))))

(assert (=> d!1239575 (= lt!1497354 e!2609809)))

(declare-fun c!716707 () Bool)

(assert (=> d!1239575 (= c!716707 (isEmpty!27359 (_1!25115 lt!1497356)))))

(assert (=> d!1239575 (= lt!1497356 (findLongestMatch!1544 (regex!7722 rBis!178) input!3517))))

(assert (=> d!1239575 (ruleValid!3434 thiss!26544 rBis!178)))

(assert (=> d!1239575 (= (maxPrefixOneRule!3312 thiss!26544 rBis!178 input!3517) lt!1497354)))

(declare-fun b!4204278 () Bool)

(declare-fun res!1726658 () Bool)

(assert (=> b!4204278 (=> (not res!1726658) (not e!2609812))))

(assert (=> b!4204278 (= res!1726658 (= (rule!10822 (_1!25113 (get!15027 lt!1497354))) rBis!178))))

(declare-fun b!4204279 () Bool)

(assert (=> b!4204279 (= e!2609811 e!2609812)))

(declare-fun res!1726653 () Bool)

(assert (=> b!4204279 (=> (not res!1726653) (not e!2609812))))

(assert (=> b!4204279 (= res!1726653 (matchR!6350 (regex!7722 rBis!178) (list!16697 (charsOf!5145 (_1!25113 (get!15027 lt!1497354))))))))

(declare-fun b!4204280 () Bool)

(declare-fun res!1726654 () Bool)

(assert (=> b!4204280 (=> (not res!1726654) (not e!2609812))))

(assert (=> b!4204280 (= res!1726654 (= (value!240606 (_1!25113 (get!15027 lt!1497354))) (apply!10671 (transformation!7722 (rule!10822 (_1!25113 (get!15027 lt!1497354)))) (seqFromList!5731 (originalCharacters!8104 (_1!25113 (get!15027 lt!1497354)))))))))

(declare-fun b!4204281 () Bool)

(declare-fun res!1726656 () Bool)

(assert (=> b!4204281 (=> (not res!1726656) (not e!2609812))))

(assert (=> b!4204281 (= res!1726656 (< (size!33952 (_2!25113 (get!15027 lt!1497354))) (size!33952 input!3517)))))

(declare-fun b!4204282 () Bool)

(assert (=> b!4204282 (= e!2609809 None!9909)))

(declare-fun b!4204283 () Bool)

(assert (=> b!4204283 (= e!2609812 (= (size!33949 (_1!25113 (get!15027 lt!1497354))) (size!33952 (originalCharacters!8104 (_1!25113 (get!15027 lt!1497354))))))))

(assert (= (and d!1239575 c!716707) b!4204282))

(assert (= (and d!1239575 (not c!716707)) b!4204276))

(assert (= (and b!4204276 (not res!1726657)) b!4204277))

(assert (= (and d!1239575 (not res!1726652)) b!4204279))

(assert (= (and b!4204279 res!1726653) b!4204275))

(assert (= (and b!4204275 res!1726655) b!4204281))

(assert (= (and b!4204281 res!1726656) b!4204278))

(assert (= (and b!4204278 res!1726658) b!4204280))

(assert (= (and b!4204280 res!1726654) b!4204283))

(declare-fun m!4792529 () Bool)

(assert (=> b!4204281 m!4792529))

(declare-fun m!4792531 () Bool)

(assert (=> b!4204281 m!4792531))

(assert (=> b!4204281 m!4792437))

(assert (=> b!4204279 m!4792529))

(declare-fun m!4792533 () Bool)

(assert (=> b!4204279 m!4792533))

(assert (=> b!4204279 m!4792533))

(declare-fun m!4792535 () Bool)

(assert (=> b!4204279 m!4792535))

(assert (=> b!4204279 m!4792535))

(declare-fun m!4792537 () Bool)

(assert (=> b!4204279 m!4792537))

(assert (=> b!4204275 m!4792529))

(assert (=> b!4204275 m!4792533))

(assert (=> b!4204275 m!4792533))

(assert (=> b!4204275 m!4792535))

(assert (=> b!4204275 m!4792535))

(declare-fun m!4792539 () Bool)

(assert (=> b!4204275 m!4792539))

(assert (=> b!4204278 m!4792529))

(assert (=> b!4204280 m!4792529))

(declare-fun m!4792541 () Bool)

(assert (=> b!4204280 m!4792541))

(assert (=> b!4204280 m!4792541))

(declare-fun m!4792543 () Bool)

(assert (=> b!4204280 m!4792543))

(declare-fun m!4792545 () Bool)

(assert (=> d!1239575 m!4792545))

(declare-fun m!4792547 () Bool)

(assert (=> d!1239575 m!4792547))

(declare-fun m!4792549 () Bool)

(assert (=> d!1239575 m!4792549))

(assert (=> d!1239575 m!4792329))

(declare-fun m!4792551 () Bool)

(assert (=> b!4204276 m!4792551))

(declare-fun m!4792553 () Bool)

(assert (=> b!4204276 m!4792553))

(assert (=> b!4204276 m!4792467))

(assert (=> b!4204276 m!4792437))

(declare-fun m!4792555 () Bool)

(assert (=> b!4204276 m!4792555))

(declare-fun m!4792557 () Bool)

(assert (=> b!4204276 m!4792557))

(declare-fun m!4792559 () Bool)

(assert (=> b!4204276 m!4792559))

(assert (=> b!4204276 m!4792437))

(assert (=> b!4204276 m!4792551))

(declare-fun m!4792561 () Bool)

(assert (=> b!4204276 m!4792561))

(assert (=> b!4204276 m!4792551))

(declare-fun m!4792563 () Bool)

(assert (=> b!4204276 m!4792563))

(assert (=> b!4204276 m!4792551))

(assert (=> b!4204276 m!4792467))

(assert (=> b!4204277 m!4792467))

(assert (=> b!4204277 m!4792437))

(assert (=> b!4204277 m!4792467))

(assert (=> b!4204277 m!4792437))

(assert (=> b!4204277 m!4792555))

(declare-fun m!4792565 () Bool)

(assert (=> b!4204277 m!4792565))

(assert (=> b!4204283 m!4792529))

(declare-fun m!4792567 () Bool)

(assert (=> b!4204283 m!4792567))

(assert (=> b!4204091 d!1239575))

(declare-fun b!4204285 () Bool)

(declare-fun res!1726661 () Bool)

(declare-fun e!2609814 () Bool)

(assert (=> b!4204285 (=> (not res!1726661) (not e!2609814))))

(assert (=> b!4204285 (= res!1726661 (= (head!8920 input!3517) (head!8920 input!3517)))))

(declare-fun b!4204286 () Bool)

(assert (=> b!4204286 (= e!2609814 (isPrefix!4581 (tail!6767 input!3517) (tail!6767 input!3517)))))

(declare-fun b!4204284 () Bool)

(declare-fun e!2609815 () Bool)

(assert (=> b!4204284 (= e!2609815 e!2609814)))

(declare-fun res!1726662 () Bool)

(assert (=> b!4204284 (=> (not res!1726662) (not e!2609814))))

(assert (=> b!4204284 (= res!1726662 (not ((_ is Nil!46204) input!3517)))))

(declare-fun b!4204287 () Bool)

(declare-fun e!2609813 () Bool)

(assert (=> b!4204287 (= e!2609813 (>= (size!33952 input!3517) (size!33952 input!3517)))))

(declare-fun d!1239577 () Bool)

(assert (=> d!1239577 e!2609813))

(declare-fun res!1726660 () Bool)

(assert (=> d!1239577 (=> res!1726660 e!2609813)))

(declare-fun lt!1497359 () Bool)

(assert (=> d!1239577 (= res!1726660 (not lt!1497359))))

(assert (=> d!1239577 (= lt!1497359 e!2609815)))

(declare-fun res!1726659 () Bool)

(assert (=> d!1239577 (=> res!1726659 e!2609815)))

(assert (=> d!1239577 (= res!1726659 ((_ is Nil!46204) input!3517))))

(assert (=> d!1239577 (= (isPrefix!4581 input!3517 input!3517) lt!1497359)))

(assert (= (and d!1239577 (not res!1726659)) b!4204284))

(assert (= (and b!4204284 res!1726662) b!4204285))

(assert (= (and b!4204285 res!1726661) b!4204286))

(assert (= (and d!1239577 (not res!1726660)) b!4204287))

(assert (=> b!4204285 m!4792489))

(assert (=> b!4204285 m!4792489))

(assert (=> b!4204286 m!4792493))

(assert (=> b!4204286 m!4792493))

(assert (=> b!4204286 m!4792493))

(assert (=> b!4204286 m!4792493))

(declare-fun m!4792569 () Bool)

(assert (=> b!4204286 m!4792569))

(assert (=> b!4204287 m!4792437))

(assert (=> b!4204287 m!4792437))

(assert (=> b!4204091 d!1239577))

(declare-fun d!1239579 () Bool)

(assert (=> d!1239579 (isPrefix!4581 input!3517 input!3517)))

(declare-fun lt!1497362 () Unit!65307)

(declare-fun choose!25774 (List!46328 List!46328) Unit!65307)

(assert (=> d!1239579 (= lt!1497362 (choose!25774 input!3517 input!3517))))

(assert (=> d!1239579 (= (lemmaIsPrefixRefl!2998 input!3517 input!3517) lt!1497362)))

(declare-fun bs!597186 () Bool)

(assert (= bs!597186 d!1239579))

(assert (=> bs!597186 m!4792281))

(declare-fun m!4792571 () Bool)

(assert (=> bs!597186 m!4792571))

(assert (=> b!4204091 d!1239579))

(declare-fun b!4204288 () Bool)

(declare-fun e!2609816 () Bool)

(declare-fun e!2609817 () Bool)

(assert (=> b!4204288 (= e!2609816 e!2609817)))

(declare-fun c!716708 () Bool)

(assert (=> b!4204288 (= c!716708 ((_ is IntegerValue!23857) (value!240606 t!8364)))))

(declare-fun b!4204289 () Bool)

(declare-fun e!2609818 () Bool)

(assert (=> b!4204289 (= e!2609818 (inv!15 (value!240606 t!8364)))))

(declare-fun b!4204290 () Bool)

(declare-fun res!1726663 () Bool)

(assert (=> b!4204290 (=> res!1726663 e!2609818)))

(assert (=> b!4204290 (= res!1726663 (not ((_ is IntegerValue!23858) (value!240606 t!8364))))))

(assert (=> b!4204290 (= e!2609817 e!2609818)))

(declare-fun b!4204291 () Bool)

(assert (=> b!4204291 (= e!2609817 (inv!17 (value!240606 t!8364)))))

(declare-fun d!1239581 () Bool)

(declare-fun c!716709 () Bool)

(assert (=> d!1239581 (= c!716709 ((_ is IntegerValue!23856) (value!240606 t!8364)))))

(assert (=> d!1239581 (= (inv!21 (value!240606 t!8364)) e!2609816)))

(declare-fun b!4204292 () Bool)

(assert (=> b!4204292 (= e!2609816 (inv!16 (value!240606 t!8364)))))

(assert (= (and d!1239581 c!716709) b!4204292))

(assert (= (and d!1239581 (not c!716709)) b!4204288))

(assert (= (and b!4204288 c!716708) b!4204291))

(assert (= (and b!4204288 (not c!716708)) b!4204290))

(assert (= (and b!4204290 (not res!1726663)) b!4204289))

(declare-fun m!4792573 () Bool)

(assert (=> b!4204289 m!4792573))

(declare-fun m!4792575 () Bool)

(assert (=> b!4204291 m!4792575))

(declare-fun m!4792577 () Bool)

(assert (=> b!4204292 m!4792577))

(assert (=> b!4204090 d!1239581))

(declare-fun b!4204294 () Bool)

(declare-fun e!2609819 () List!46328)

(assert (=> b!4204294 (= e!2609819 (Cons!46204 (h!51624 pBis!121) (++!11796 (t!347317 pBis!121) suffixBis!41)))))

(declare-fun b!4204295 () Bool)

(declare-fun res!1726665 () Bool)

(declare-fun e!2609820 () Bool)

(assert (=> b!4204295 (=> (not res!1726665) (not e!2609820))))

(declare-fun lt!1497363 () List!46328)

(assert (=> b!4204295 (= res!1726665 (= (size!33952 lt!1497363) (+ (size!33952 pBis!121) (size!33952 suffixBis!41))))))

(declare-fun b!4204296 () Bool)

(assert (=> b!4204296 (= e!2609820 (or (not (= suffixBis!41 Nil!46204)) (= lt!1497363 pBis!121)))))

(declare-fun d!1239583 () Bool)

(assert (=> d!1239583 e!2609820))

(declare-fun res!1726664 () Bool)

(assert (=> d!1239583 (=> (not res!1726664) (not e!2609820))))

(assert (=> d!1239583 (= res!1726664 (= (content!7220 lt!1497363) ((_ map or) (content!7220 pBis!121) (content!7220 suffixBis!41))))))

(assert (=> d!1239583 (= lt!1497363 e!2609819)))

(declare-fun c!716710 () Bool)

(assert (=> d!1239583 (= c!716710 ((_ is Nil!46204) pBis!121))))

(assert (=> d!1239583 (= (++!11796 pBis!121 suffixBis!41) lt!1497363)))

(declare-fun b!4204293 () Bool)

(assert (=> b!4204293 (= e!2609819 suffixBis!41)))

(assert (= (and d!1239583 c!716710) b!4204293))

(assert (= (and d!1239583 (not c!716710)) b!4204294))

(assert (= (and d!1239583 res!1726664) b!4204295))

(assert (= (and b!4204295 res!1726665) b!4204296))

(declare-fun m!4792579 () Bool)

(assert (=> b!4204294 m!4792579))

(declare-fun m!4792581 () Bool)

(assert (=> b!4204295 m!4792581))

(declare-fun m!4792583 () Bool)

(assert (=> b!4204295 m!4792583))

(declare-fun m!4792585 () Bool)

(assert (=> b!4204295 m!4792585))

(declare-fun m!4792587 () Bool)

(assert (=> d!1239583 m!4792587))

(declare-fun m!4792589 () Bool)

(assert (=> d!1239583 m!4792589))

(declare-fun m!4792591 () Bool)

(assert (=> d!1239583 m!4792591))

(assert (=> b!4204087 d!1239583))

(declare-fun d!1239585 () Bool)

(assert (=> d!1239585 true))

(declare-fun lt!1497413 () Bool)

(declare-fun lambda!129697 () Int)

(declare-fun forall!8488 (List!46329 Int) Bool)

(assert (=> d!1239585 (= lt!1497413 (forall!8488 (t!347318 rules!3967) lambda!129697))))

(declare-fun e!2609911 () Bool)

(assert (=> d!1239585 (= lt!1497413 e!2609911)))

(declare-fun res!1726758 () Bool)

(assert (=> d!1239585 (=> res!1726758 e!2609911)))

(assert (=> d!1239585 (= res!1726758 (not ((_ is Cons!46205) (t!347318 rules!3967))))))

(assert (=> d!1239585 (= (rulesValidInductive!2860 thiss!26544 (t!347318 rules!3967)) lt!1497413)))

(declare-fun b!4204463 () Bool)

(declare-fun e!2609910 () Bool)

(assert (=> b!4204463 (= e!2609911 e!2609910)))

(declare-fun res!1726759 () Bool)

(assert (=> b!4204463 (=> (not res!1726759) (not e!2609910))))

(assert (=> b!4204463 (= res!1726759 (ruleValid!3434 thiss!26544 (h!51625 (t!347318 rules!3967))))))

(declare-fun b!4204464 () Bool)

(assert (=> b!4204464 (= e!2609910 (rulesValidInductive!2860 thiss!26544 (t!347318 (t!347318 rules!3967))))))

(assert (= (and d!1239585 (not res!1726758)) b!4204463))

(assert (= (and b!4204463 res!1726759) b!4204464))

(declare-fun m!4792781 () Bool)

(assert (=> d!1239585 m!4792781))

(declare-fun m!4792783 () Bool)

(assert (=> b!4204463 m!4792783))

(declare-fun m!4792785 () Bool)

(assert (=> b!4204464 m!4792785))

(assert (=> b!4204108 d!1239585))

(declare-fun d!1239623 () Bool)

(declare-fun res!1726764 () Bool)

(declare-fun e!2609914 () Bool)

(assert (=> d!1239623 (=> (not res!1726764) (not e!2609914))))

(declare-fun validRegex!5730 (Regex!12627) Bool)

(assert (=> d!1239623 (= res!1726764 (validRegex!5730 (regex!7722 rBis!178)))))

(assert (=> d!1239623 (= (ruleValid!3434 thiss!26544 rBis!178) e!2609914)))

(declare-fun b!4204471 () Bool)

(declare-fun res!1726765 () Bool)

(assert (=> b!4204471 (=> (not res!1726765) (not e!2609914))))

(declare-fun nullable!4443 (Regex!12627) Bool)

(assert (=> b!4204471 (= res!1726765 (not (nullable!4443 (regex!7722 rBis!178))))))

(declare-fun b!4204472 () Bool)

(assert (=> b!4204472 (= e!2609914 (not (= (tag!8586 rBis!178) (String!53631 ""))))))

(assert (= (and d!1239623 res!1726764) b!4204471))

(assert (= (and b!4204471 res!1726765) b!4204472))

(declare-fun m!4792787 () Bool)

(assert (=> d!1239623 m!4792787))

(declare-fun m!4792789 () Bool)

(assert (=> b!4204471 m!4792789))

(assert (=> b!4204097 d!1239623))

(declare-fun d!1239625 () Bool)

(declare-fun list!16699 (Conc!13933) List!46328)

(assert (=> d!1239625 (= (list!16697 (charsOf!5145 tBis!41)) (list!16699 (c!716681 (charsOf!5145 tBis!41))))))

(declare-fun bs!597189 () Bool)

(assert (= bs!597189 d!1239625))

(declare-fun m!4792791 () Bool)

(assert (=> bs!597189 m!4792791))

(assert (=> b!4204099 d!1239625))

(declare-fun d!1239627 () Bool)

(declare-fun lt!1497416 () BalanceConc!27460)

(assert (=> d!1239627 (= (list!16697 lt!1497416) (originalCharacters!8104 tBis!41))))

(assert (=> d!1239627 (= lt!1497416 (dynLambda!19936 (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (value!240606 tBis!41)))))

(assert (=> d!1239627 (= (charsOf!5145 tBis!41) lt!1497416)))

(declare-fun b_lambda!123811 () Bool)

(assert (=> (not b_lambda!123811) (not d!1239627)))

(assert (=> d!1239627 t!347320))

(declare-fun b_and!330345 () Bool)

(assert (= b_and!330309 (and (=> t!347320 result!307364) b_and!330345)))

(assert (=> d!1239627 t!347322))

(declare-fun b_and!330347 () Bool)

(assert (= b_and!330311 (and (=> t!347322 result!307368) b_and!330347)))

(assert (=> d!1239627 t!347324))

(declare-fun b_and!330349 () Bool)

(assert (= b_and!330313 (and (=> t!347324 result!307370) b_and!330349)))

(assert (=> d!1239627 t!347326))

(declare-fun b_and!330351 () Bool)

(assert (= b_and!330315 (and (=> t!347326 result!307372) b_and!330351)))

(declare-fun m!4792793 () Bool)

(assert (=> d!1239627 m!4792793))

(assert (=> d!1239627 m!4792511))

(assert (=> b!4204099 d!1239627))

(declare-fun d!1239629 () Bool)

(declare-fun lt!1497419 () Bool)

(declare-fun content!7221 (List!46329) (InoxSet Rule!15244))

(assert (=> d!1239629 (= lt!1497419 (select (content!7221 rules!3967) rBis!178))))

(declare-fun e!2609920 () Bool)

(assert (=> d!1239629 (= lt!1497419 e!2609920)))

(declare-fun res!1726770 () Bool)

(assert (=> d!1239629 (=> (not res!1726770) (not e!2609920))))

(assert (=> d!1239629 (= res!1726770 ((_ is Cons!46205) rules!3967))))

(assert (=> d!1239629 (= (contains!9539 rules!3967 rBis!178) lt!1497419)))

(declare-fun b!4204477 () Bool)

(declare-fun e!2609919 () Bool)

(assert (=> b!4204477 (= e!2609920 e!2609919)))

(declare-fun res!1726771 () Bool)

(assert (=> b!4204477 (=> res!1726771 e!2609919)))

(assert (=> b!4204477 (= res!1726771 (= (h!51625 rules!3967) rBis!178))))

(declare-fun b!4204478 () Bool)

(assert (=> b!4204478 (= e!2609919 (contains!9539 (t!347318 rules!3967) rBis!178))))

(assert (= (and d!1239629 res!1726770) b!4204477))

(assert (= (and b!4204477 (not res!1726771)) b!4204478))

(declare-fun m!4792795 () Bool)

(assert (=> d!1239629 m!4792795))

(declare-fun m!4792797 () Bool)

(assert (=> d!1239629 m!4792797))

(declare-fun m!4792799 () Bool)

(assert (=> b!4204478 m!4792799))

(assert (=> b!4204088 d!1239629))

(declare-fun b!4204480 () Bool)

(declare-fun res!1726774 () Bool)

(declare-fun e!2609922 () Bool)

(assert (=> b!4204480 (=> (not res!1726774) (not e!2609922))))

(assert (=> b!4204480 (= res!1726774 (= (head!8920 pBis!121) (head!8920 input!3517)))))

(declare-fun b!4204481 () Bool)

(assert (=> b!4204481 (= e!2609922 (isPrefix!4581 (tail!6767 pBis!121) (tail!6767 input!3517)))))

(declare-fun b!4204479 () Bool)

(declare-fun e!2609923 () Bool)

(assert (=> b!4204479 (= e!2609923 e!2609922)))

(declare-fun res!1726775 () Bool)

(assert (=> b!4204479 (=> (not res!1726775) (not e!2609922))))

(assert (=> b!4204479 (= res!1726775 (not ((_ is Nil!46204) input!3517)))))

(declare-fun b!4204482 () Bool)

(declare-fun e!2609921 () Bool)

(assert (=> b!4204482 (= e!2609921 (>= (size!33952 input!3517) (size!33952 pBis!121)))))

(declare-fun d!1239631 () Bool)

(assert (=> d!1239631 e!2609921))

(declare-fun res!1726773 () Bool)

(assert (=> d!1239631 (=> res!1726773 e!2609921)))

(declare-fun lt!1497420 () Bool)

(assert (=> d!1239631 (= res!1726773 (not lt!1497420))))

(assert (=> d!1239631 (= lt!1497420 e!2609923)))

(declare-fun res!1726772 () Bool)

(assert (=> d!1239631 (=> res!1726772 e!2609923)))

(assert (=> d!1239631 (= res!1726772 ((_ is Nil!46204) pBis!121))))

(assert (=> d!1239631 (= (isPrefix!4581 pBis!121 input!3517) lt!1497420)))

(assert (= (and d!1239631 (not res!1726772)) b!4204479))

(assert (= (and b!4204479 res!1726775) b!4204480))

(assert (= (and b!4204480 res!1726774) b!4204481))

(assert (= (and d!1239631 (not res!1726773)) b!4204482))

(declare-fun m!4792801 () Bool)

(assert (=> b!4204480 m!4792801))

(assert (=> b!4204480 m!4792489))

(declare-fun m!4792803 () Bool)

(assert (=> b!4204481 m!4792803))

(assert (=> b!4204481 m!4792493))

(assert (=> b!4204481 m!4792803))

(assert (=> b!4204481 m!4792493))

(declare-fun m!4792805 () Bool)

(assert (=> b!4204481 m!4792805))

(assert (=> b!4204482 m!4792437))

(assert (=> b!4204482 m!4792583))

(assert (=> b!4204109 d!1239631))

(declare-fun b!4204487 () Bool)

(declare-fun e!2609926 () Bool)

(declare-fun tp!1284844 () Bool)

(assert (=> b!4204487 (= e!2609926 (and tp_is_empty!22221 tp!1284844))))

(assert (=> b!4204105 (= tp!1284770 e!2609926)))

(assert (= (and b!4204105 ((_ is Cons!46204) (t!347317 input!3517))) b!4204487))

(declare-fun b!4204488 () Bool)

(declare-fun e!2609927 () Bool)

(declare-fun tp!1284845 () Bool)

(assert (=> b!4204488 (= e!2609927 (and tp_is_empty!22221 tp!1284845))))

(assert (=> b!4204107 (= tp!1284776 e!2609927)))

(assert (= (and b!4204107 ((_ is Cons!46204) (t!347317 pBis!121))) b!4204488))

(declare-fun b!4204489 () Bool)

(declare-fun e!2609928 () Bool)

(declare-fun tp!1284846 () Bool)

(assert (=> b!4204489 (= e!2609928 (and tp_is_empty!22221 tp!1284846))))

(assert (=> b!4204096 (= tp!1284774 e!2609928)))

(assert (= (and b!4204096 ((_ is Cons!46204) (originalCharacters!8104 tBis!41))) b!4204489))

(declare-fun b!4204501 () Bool)

(declare-fun e!2609931 () Bool)

(declare-fun tp!1284857 () Bool)

(declare-fun tp!1284858 () Bool)

(assert (=> b!4204501 (= e!2609931 (and tp!1284857 tp!1284858))))

(declare-fun b!4204502 () Bool)

(declare-fun tp!1284860 () Bool)

(assert (=> b!4204502 (= e!2609931 tp!1284860)))

(declare-fun b!4204503 () Bool)

(declare-fun tp!1284861 () Bool)

(declare-fun tp!1284859 () Bool)

(assert (=> b!4204503 (= e!2609931 (and tp!1284861 tp!1284859))))

(declare-fun b!4204500 () Bool)

(assert (=> b!4204500 (= e!2609931 tp_is_empty!22221)))

(assert (=> b!4204085 (= tp!1284780 e!2609931)))

(assert (= (and b!4204085 ((_ is ElementMatch!12627) (regex!7722 rBis!178))) b!4204500))

(assert (= (and b!4204085 ((_ is Concat!20580) (regex!7722 rBis!178))) b!4204501))

(assert (= (and b!4204085 ((_ is Star!12627) (regex!7722 rBis!178))) b!4204502))

(assert (= (and b!4204085 ((_ is Union!12627) (regex!7722 rBis!178))) b!4204503))

(declare-fun b!4204505 () Bool)

(declare-fun e!2609932 () Bool)

(declare-fun tp!1284862 () Bool)

(declare-fun tp!1284863 () Bool)

(assert (=> b!4204505 (= e!2609932 (and tp!1284862 tp!1284863))))

(declare-fun b!4204506 () Bool)

(declare-fun tp!1284865 () Bool)

(assert (=> b!4204506 (= e!2609932 tp!1284865)))

(declare-fun b!4204507 () Bool)

(declare-fun tp!1284866 () Bool)

(declare-fun tp!1284864 () Bool)

(assert (=> b!4204507 (= e!2609932 (and tp!1284866 tp!1284864))))

(declare-fun b!4204504 () Bool)

(assert (=> b!4204504 (= e!2609932 tp_is_empty!22221)))

(assert (=> b!4204103 (= tp!1284766 e!2609932)))

(assert (= (and b!4204103 ((_ is ElementMatch!12627) (regex!7722 (rule!10822 t!8364)))) b!4204504))

(assert (= (and b!4204103 ((_ is Concat!20580) (regex!7722 (rule!10822 t!8364)))) b!4204505))

(assert (= (and b!4204103 ((_ is Star!12627) (regex!7722 (rule!10822 t!8364)))) b!4204506))

(assert (= (and b!4204103 ((_ is Union!12627) (regex!7722 (rule!10822 t!8364)))) b!4204507))

(declare-fun b!4204508 () Bool)

(declare-fun e!2609933 () Bool)

(declare-fun tp!1284867 () Bool)

(assert (=> b!4204508 (= e!2609933 (and tp_is_empty!22221 tp!1284867))))

(assert (=> b!4204092 (= tp!1284782 e!2609933)))

(assert (= (and b!4204092 ((_ is Cons!46204) (t!347317 suffix!1557))) b!4204508))

(declare-fun b!4204510 () Bool)

(declare-fun e!2609934 () Bool)

(declare-fun tp!1284868 () Bool)

(declare-fun tp!1284869 () Bool)

(assert (=> b!4204510 (= e!2609934 (and tp!1284868 tp!1284869))))

(declare-fun b!4204511 () Bool)

(declare-fun tp!1284871 () Bool)

(assert (=> b!4204511 (= e!2609934 tp!1284871)))

(declare-fun b!4204512 () Bool)

(declare-fun tp!1284872 () Bool)

(declare-fun tp!1284870 () Bool)

(assert (=> b!4204512 (= e!2609934 (and tp!1284872 tp!1284870))))

(declare-fun b!4204509 () Bool)

(assert (=> b!4204509 (= e!2609934 tp_is_empty!22221)))

(assert (=> b!4204079 (= tp!1284768 e!2609934)))

(assert (= (and b!4204079 ((_ is ElementMatch!12627) (regex!7722 (rule!10822 tBis!41)))) b!4204509))

(assert (= (and b!4204079 ((_ is Concat!20580) (regex!7722 (rule!10822 tBis!41)))) b!4204510))

(assert (= (and b!4204079 ((_ is Star!12627) (regex!7722 (rule!10822 tBis!41)))) b!4204511))

(assert (= (and b!4204079 ((_ is Union!12627) (regex!7722 (rule!10822 tBis!41)))) b!4204512))

(declare-fun b!4204514 () Bool)

(declare-fun e!2609935 () Bool)

(declare-fun tp!1284873 () Bool)

(declare-fun tp!1284874 () Bool)

(assert (=> b!4204514 (= e!2609935 (and tp!1284873 tp!1284874))))

(declare-fun b!4204515 () Bool)

(declare-fun tp!1284876 () Bool)

(assert (=> b!4204515 (= e!2609935 tp!1284876)))

(declare-fun b!4204516 () Bool)

(declare-fun tp!1284877 () Bool)

(declare-fun tp!1284875 () Bool)

(assert (=> b!4204516 (= e!2609935 (and tp!1284877 tp!1284875))))

(declare-fun b!4204513 () Bool)

(assert (=> b!4204513 (= e!2609935 tp_is_empty!22221)))

(assert (=> b!4204100 (= tp!1284773 e!2609935)))

(assert (= (and b!4204100 ((_ is ElementMatch!12627) (regex!7722 (h!51625 rules!3967)))) b!4204513))

(assert (= (and b!4204100 ((_ is Concat!20580) (regex!7722 (h!51625 rules!3967)))) b!4204514))

(assert (= (and b!4204100 ((_ is Star!12627) (regex!7722 (h!51625 rules!3967)))) b!4204515))

(assert (= (and b!4204100 ((_ is Union!12627) (regex!7722 (h!51625 rules!3967)))) b!4204516))

(declare-fun b!4204517 () Bool)

(declare-fun e!2609936 () Bool)

(declare-fun tp!1284878 () Bool)

(assert (=> b!4204517 (= e!2609936 (and tp_is_empty!22221 tp!1284878))))

(assert (=> b!4204110 (= tp!1284772 e!2609936)))

(assert (= (and b!4204110 ((_ is Cons!46204) (t!347317 suffixBis!41))) b!4204517))

(declare-fun b!4204518 () Bool)

(declare-fun e!2609937 () Bool)

(declare-fun tp!1284879 () Bool)

(assert (=> b!4204518 (= e!2609937 (and tp_is_empty!22221 tp!1284879))))

(assert (=> b!4204080 (= tp!1284763 e!2609937)))

(assert (= (and b!4204080 ((_ is Cons!46204) (t!347317 p!3001))) b!4204518))

(declare-fun b!4204519 () Bool)

(declare-fun e!2609938 () Bool)

(declare-fun tp!1284880 () Bool)

(assert (=> b!4204519 (= e!2609938 (and tp_is_empty!22221 tp!1284880))))

(assert (=> b!4204090 (= tp!1284778 e!2609938)))

(assert (= (and b!4204090 ((_ is Cons!46204) (originalCharacters!8104 t!8364))) b!4204519))

(declare-fun b!4204530 () Bool)

(declare-fun b_free!122775 () Bool)

(declare-fun b_next!123479 () Bool)

(assert (=> b!4204530 (= b_free!122775 (not b_next!123479))))

(declare-fun tp!1284889 () Bool)

(declare-fun b_and!330353 () Bool)

(assert (=> b!4204530 (= tp!1284889 b_and!330353)))

(declare-fun b_free!122777 () Bool)

(declare-fun b_next!123481 () Bool)

(assert (=> b!4204530 (= b_free!122777 (not b_next!123481))))

(declare-fun t!347357 () Bool)

(declare-fun tb!252231 () Bool)

(assert (=> (and b!4204530 (= (toChars!10293 (transformation!7722 (h!51625 (t!347318 rules!3967)))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41)))) t!347357) tb!252231))

(declare-fun result!307416 () Bool)

(assert (= result!307416 result!307364))

(assert (=> b!4204265 t!347357))

(declare-fun t!347359 () Bool)

(declare-fun tb!252233 () Bool)

(assert (=> (and b!4204530 (= (toChars!10293 (transformation!7722 (h!51625 (t!347318 rules!3967)))) (toChars!10293 (transformation!7722 (rule!10822 t!8364)))) t!347359) tb!252233))

(declare-fun result!307418 () Bool)

(assert (= result!307418 result!307374))

(assert (=> b!4204272 t!347359))

(assert (=> d!1239627 t!347357))

(declare-fun tp!1284891 () Bool)

(declare-fun b_and!330355 () Bool)

(assert (=> b!4204530 (= tp!1284891 (and (=> t!347357 result!307416) (=> t!347359 result!307418) b_and!330355))))

(declare-fun e!2609947 () Bool)

(assert (=> b!4204530 (= e!2609947 (and tp!1284889 tp!1284891))))

(declare-fun b!4204529 () Bool)

(declare-fun e!2609949 () Bool)

(declare-fun tp!1284890 () Bool)

(assert (=> b!4204529 (= e!2609949 (and tp!1284890 (inv!60778 (tag!8586 (h!51625 (t!347318 rules!3967)))) (inv!60781 (transformation!7722 (h!51625 (t!347318 rules!3967)))) e!2609947))))

(declare-fun b!4204528 () Bool)

(declare-fun e!2609948 () Bool)

(declare-fun tp!1284892 () Bool)

(assert (=> b!4204528 (= e!2609948 (and e!2609949 tp!1284892))))

(assert (=> b!4204086 (= tp!1284765 e!2609948)))

(assert (= b!4204529 b!4204530))

(assert (= b!4204528 b!4204529))

(assert (= (and b!4204086 ((_ is Cons!46205) (t!347318 rules!3967))) b!4204528))

(declare-fun m!4792807 () Bool)

(assert (=> b!4204529 m!4792807))

(declare-fun m!4792809 () Bool)

(assert (=> b!4204529 m!4792809))

(declare-fun b_lambda!123813 () Bool)

(assert (= b_lambda!123811 (or (and b!4204101 b_free!122765 (= (toChars!10293 (transformation!7722 rBis!178)) (toChars!10293 (transformation!7722 (rule!10822 tBis!41))))) (and b!4204530 b_free!122777 (= (toChars!10293 (transformation!7722 (h!51625 (t!347318 rules!3967)))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41))))) (and b!4204089 b_free!122757 (= (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41))))) (and b!4204082 b_free!122769 (= (toChars!10293 (transformation!7722 (h!51625 rules!3967))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41))))) (and b!4204084 b_free!122761) b_lambda!123813)))

(declare-fun b_lambda!123815 () Bool)

(assert (= b_lambda!123795 (or (and b!4204101 b_free!122765 (= (toChars!10293 (transformation!7722 rBis!178)) (toChars!10293 (transformation!7722 (rule!10822 tBis!41))))) (and b!4204530 b_free!122777 (= (toChars!10293 (transformation!7722 (h!51625 (t!347318 rules!3967)))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41))))) (and b!4204089 b_free!122757 (= (toChars!10293 (transformation!7722 (rule!10822 t!8364))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41))))) (and b!4204082 b_free!122769 (= (toChars!10293 (transformation!7722 (h!51625 rules!3967))) (toChars!10293 (transformation!7722 (rule!10822 tBis!41))))) (and b!4204084 b_free!122761) b_lambda!123815)))

(declare-fun b_lambda!123817 () Bool)

(assert (= b_lambda!123797 (or (and b!4204530 b_free!122777 (= (toChars!10293 (transformation!7722 (h!51625 (t!347318 rules!3967)))) (toChars!10293 (transformation!7722 (rule!10822 t!8364))))) (and b!4204082 b_free!122769 (= (toChars!10293 (transformation!7722 (h!51625 rules!3967))) (toChars!10293 (transformation!7722 (rule!10822 t!8364))))) (and b!4204084 b_free!122761 (= (toChars!10293 (transformation!7722 (rule!10822 tBis!41))) (toChars!10293 (transformation!7722 (rule!10822 t!8364))))) (and b!4204101 b_free!122765 (= (toChars!10293 (transformation!7722 rBis!178)) (toChars!10293 (transformation!7722 (rule!10822 t!8364))))) (and b!4204089 b_free!122757) b_lambda!123817)))

(check-sat (not b_next!123461) (not b!4204508) (not d!1239625) (not b!4204517) (not b!4204236) (not b!4204480) (not b!4204266) (not b!4204235) (not b!4204295) (not d!1239553) (not bm!292760) (not b!4204292) (not b!4204289) (not b!4204518) (not b!4204172) (not b!4204214) (not b!4204285) (not b!4204286) (not b_lambda!123815) b_and!330293 (not b!4204516) (not b!4204481) (not b!4204510) (not b!4204272) (not b!4204487) b_and!330285 (not b_next!123459) (not b!4204280) (not b_next!123479) (not b!4204502) b_and!330351 (not b!4204177) (not b!4204275) (not d!1239545) (not d!1239557) (not b!4204507) (not b!4204210) (not b!4204187) (not b!4204514) (not b!4204238) (not b!4204471) (not d!1239627) (not b!4204512) (not b!4204240) (not b!4204211) (not b_next!123465) (not b!4204529) b_and!330345 (not b!4204291) tp_is_empty!22221 (not b!4204237) (not b!4204216) (not b!4204503) (not d!1239623) (not b!4204482) (not b!4204501) (not b_next!123473) (not b!4204212) (not b!4204215) (not b!4204506) (not b!4204271) (not d!1239579) (not d!1239555) (not b!4204515) (not b!4204256) b_and!330349 (not d!1239569) (not b!4204519) (not b!4204294) (not tb!252203) (not b_next!123463) (not b!4204208) (not b!4204489) (not b!4204265) b_and!330353 (not b_next!123471) (not d!1239571) (not tb!252195) (not b!4204276) b_and!330355 (not d!1239559) (not b!4204239) (not b!4204209) (not b!4204478) (not b!4204188) (not b_lambda!123813) (not d!1239629) (not b!4204241) b_and!330297 (not b!4204176) (not b_lambda!123817) (not b!4204528) (not d!1239551) (not b!4204243) (not b!4204511) (not d!1239585) (not b!4204260) (not b!4204258) (not b_next!123469) (not b!4204257) (not b!4204173) (not b!4204277) (not d!1239575) (not b!4204278) (not b!4204273) (not d!1239583) (not b!4204464) b_and!330347 (not b!4204488) (not b!4204505) (not d!1239565) (not d!1239573) (not b!4204279) (not b_next!123481) b_and!330289 (not b!4204259) (not b!4204170) (not b!4204281) (not b!4204246) (not b!4204287) (not b!4204463) (not b!4204283) (not b_next!123467) (not b!4204274))
(check-sat (not b_next!123461) b_and!330293 b_and!330285 (not b_next!123465) b_and!330345 (not b_next!123473) b_and!330349 (not b_next!123463) b_and!330355 b_and!330297 (not b_next!123469) (not b_next!123467) (not b_next!123459) (not b_next!123479) b_and!330351 b_and!330353 (not b_next!123471) b_and!330289 b_and!330347 (not b_next!123481))
