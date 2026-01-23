; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130352 () Bool)

(assert start!130352)

(declare-fun b!1418082 () Bool)

(declare-fun e!905246 () Bool)

(declare-datatypes ((List!14617 0))(
  ( (Nil!14551) (Cons!14551 (h!19952 (_ BitVec 16)) (t!124252 List!14617)) )
))
(declare-datatypes ((TokenValue!2625 0))(
  ( (FloatLiteralValue!5250 (text!18820 List!14617)) (TokenValueExt!2624 (__x!9057 Int)) (Broken!13125 (value!81854 List!14617)) (Object!2690) (End!2625) (Def!2625) (Underscore!2625) (Match!2625) (Else!2625) (Error!2625) (Case!2625) (If!2625) (Extends!2625) (Abstract!2625) (Class!2625) (Val!2625) (DelimiterValue!5250 (del!2685 List!14617)) (KeywordValue!2631 (value!81855 List!14617)) (CommentValue!5250 (value!81856 List!14617)) (WhitespaceValue!5250 (value!81857 List!14617)) (IndentationValue!2625 (value!81858 List!14617)) (String!17360) (Int32!2625) (Broken!13126 (value!81859 List!14617)) (Boolean!2626) (Unit!21473) (OperatorValue!2628 (op!2685 List!14617)) (IdentifierValue!5250 (value!81860 List!14617)) (IdentifierValue!5251 (value!81861 List!14617)) (WhitespaceValue!5251 (value!81862 List!14617)) (True!5250) (False!5250) (Broken!13127 (value!81863 List!14617)) (Broken!13128 (value!81864 List!14617)) (True!5251) (RightBrace!2625) (RightBracket!2625) (Colon!2625) (Null!2625) (Comma!2625) (LeftBracket!2625) (False!5251) (LeftBrace!2625) (ImaginaryLiteralValue!2625 (text!18821 List!14617)) (StringLiteralValue!7875 (value!81865 List!14617)) (EOFValue!2625 (value!81866 List!14617)) (IdentValue!2625 (value!81867 List!14617)) (DelimiterValue!5251 (value!81868 List!14617)) (DedentValue!2625 (value!81869 List!14617)) (NewLineValue!2625 (value!81870 List!14617)) (IntegerValue!7875 (value!81871 (_ BitVec 32)) (text!18822 List!14617)) (IntegerValue!7876 (value!81872 Int) (text!18823 List!14617)) (Times!2625) (Or!2625) (Equal!2625) (Minus!2625) (Broken!13129 (value!81873 List!14617)) (And!2625) (Div!2625) (LessEqual!2625) (Mod!2625) (Concat!6474) (Not!2625) (Plus!2625) (SpaceValue!2625 (value!81874 List!14617)) (IntegerValue!7877 (value!81875 Int) (text!18824 List!14617)) (StringLiteralValue!7876 (text!18825 List!14617)) (FloatLiteralValue!5251 (text!18826 List!14617)) (BytesLiteralValue!2625 (value!81876 List!14617)) (CommentValue!5251 (value!81877 List!14617)) (StringLiteralValue!7877 (value!81878 List!14617)) (ErrorTokenValue!2625 (msg!2686 List!14617)) )
))
(declare-datatypes ((Regex!3849 0))(
  ( (ElementMatch!3849 (c!233027 (_ BitVec 16))) (Concat!6475 (regOne!8210 Regex!3849) (regTwo!8210 Regex!3849)) (EmptyExpr!3849) (Star!3849 (reg!4178 Regex!3849)) (EmptyLang!3849) (Union!3849 (regOne!8211 Regex!3849) (regTwo!8211 Regex!3849)) )
))
(declare-datatypes ((String!17361 0))(
  ( (String!17362 (value!81879 String)) )
))
(declare-datatypes ((IArray!9763 0))(
  ( (IArray!9764 (innerList!4939 List!14617)) )
))
(declare-datatypes ((Conc!4879 0))(
  ( (Node!4879 (left!12440 Conc!4879) (right!12770 Conc!4879) (csize!9988 Int) (cheight!5090 Int)) (Leaf!7343 (xs!7606 IArray!9763) (csize!9989 Int)) (Empty!4879) )
))
(declare-datatypes ((BalanceConc!9698 0))(
  ( (BalanceConc!9699 (c!233028 Conc!4879)) )
))
(declare-datatypes ((TokenValueInjection!4910 0))(
  ( (TokenValueInjection!4911 (toValue!3834 Int) (toChars!3693 Int)) )
))
(declare-datatypes ((Rule!4870 0))(
  ( (Rule!4871 (regex!2535 Regex!3849) (tag!2797 String!17361) (isSeparator!2535 Bool) (transformation!2535 TokenValueInjection!4910)) )
))
(declare-datatypes ((Token!4732 0))(
  ( (Token!4733 (value!81880 TokenValue!2625) (rule!4298 Rule!4870) (size!12003 Int) (originalCharacters!3397 List!14617)) )
))
(declare-datatypes ((List!14618 0))(
  ( (Nil!14552) (Cons!14552 (h!19953 Rule!4870) (t!124253 List!14618)) )
))
(declare-datatypes ((List!14619 0))(
  ( (Nil!14553) (Cons!14553 (h!19954 Token!4732) (t!124254 List!14619)) )
))
(declare-datatypes ((IArray!9765 0))(
  ( (IArray!9766 (innerList!4940 List!14619)) )
))
(declare-datatypes ((Conc!4880 0))(
  ( (Node!4880 (left!12441 Conc!4880) (right!12771 Conc!4880) (csize!9990 Int) (cheight!5091 Int)) (Leaf!7344 (xs!7607 IArray!9765) (csize!9991 Int)) (Empty!4880) )
))
(declare-datatypes ((BalanceConc!9700 0))(
  ( (BalanceConc!9701 (c!233029 Conc!4880)) )
))
(declare-datatypes ((PrintableTokens!852 0))(
  ( (PrintableTokens!853 (rules!11126 List!14618) (tokens!1830 BalanceConc!9700)) )
))
(declare-fun sep!3 () PrintableTokens!852)

(declare-fun tp!402280 () Bool)

(declare-fun inv!19170 (Conc!4880) Bool)

(assert (=> b!1418082 (= e!905246 (and (inv!19170 (c!233029 (tokens!1830 sep!3))) tp!402280))))

(declare-fun b!1418083 () Bool)

(declare-fun res!642108 () Bool)

(declare-fun e!905249 () Bool)

(assert (=> b!1418083 (=> (not res!642108) (not e!905249))))

(declare-fun usesJsonRules!0 (PrintableTokens!852) Bool)

(assert (=> b!1418083 (= res!642108 (usesJsonRules!0 sep!3))))

(declare-fun b!1418084 () Bool)

(declare-fun e!905244 () Bool)

(declare-datatypes ((List!14620 0))(
  ( (Nil!14554) (Cons!14554 (h!19955 PrintableTokens!852) (t!124255 List!14620)) )
))
(declare-datatypes ((IArray!9767 0))(
  ( (IArray!9768 (innerList!4941 List!14620)) )
))
(declare-datatypes ((Conc!4881 0))(
  ( (Node!4881 (left!12442 Conc!4881) (right!12772 Conc!4881) (csize!9992 Int) (cheight!5092 Int)) (Leaf!7345 (xs!7608 IArray!9767) (csize!9993 Int)) (Empty!4881) )
))
(declare-datatypes ((BalanceConc!9702 0))(
  ( (BalanceConc!9703 (c!233030 Conc!4881)) )
))
(declare-fun objs!24 () BalanceConc!9702)

(declare-fun tp!402278 () Bool)

(declare-fun inv!19171 (Conc!4881) Bool)

(assert (=> b!1418084 (= e!905244 (and (inv!19171 (c!233030 objs!24)) tp!402278))))

(declare-fun b!1418085 () Bool)

(declare-fun tp!402277 () Bool)

(declare-fun e!905245 () Bool)

(declare-fun inv!19172 (BalanceConc!9700) Bool)

(assert (=> b!1418085 (= e!905245 (and tp!402277 (inv!19172 (tokens!1830 sep!3)) e!905246))))

(declare-fun b!1418086 () Bool)

(declare-fun res!642110 () Bool)

(assert (=> b!1418086 (=> (not res!642110) (not e!905249))))

(declare-fun isEmpty!8938 (BalanceConc!9702) Bool)

(assert (=> b!1418086 (= res!642110 (not (isEmpty!8938 objs!24)))))

(declare-fun res!642112 () Bool)

(assert (=> start!130352 (=> (not res!642112) (not e!905249))))

(declare-fun lambda!62611 () Int)

(declare-fun forall!3619 (BalanceConc!9702 Int) Bool)

(assert (=> start!130352 (= res!642112 (forall!3619 objs!24 lambda!62611))))

(assert (=> start!130352 e!905249))

(declare-fun inv!19173 (BalanceConc!9702) Bool)

(assert (=> start!130352 (and (inv!19173 objs!24) e!905244)))

(declare-fun acc!229 () PrintableTokens!852)

(declare-fun e!905243 () Bool)

(declare-fun inv!19174 (PrintableTokens!852) Bool)

(assert (=> start!130352 (and (inv!19174 acc!229) e!905243)))

(assert (=> start!130352 (and (inv!19174 sep!3) e!905245)))

(declare-fun b!1418087 () Bool)

(declare-fun e!905247 () Bool)

(declare-fun lt!477383 () Int)

(declare-fun size!12004 (BalanceConc!9702) Int)

(declare-fun tail!2106 (BalanceConc!9702) BalanceConc!9702)

(assert (=> b!1418087 (= e!905247 (>= (size!12004 (tail!2106 objs!24)) lt!477383))))

(declare-fun b!1418088 () Bool)

(declare-fun e!905248 () Bool)

(declare-fun tp!402276 () Bool)

(assert (=> b!1418088 (= e!905248 (and (inv!19170 (c!233029 (tokens!1830 acc!229))) tp!402276))))

(declare-fun b!1418089 () Bool)

(declare-fun res!642107 () Bool)

(assert (=> b!1418089 (=> (not res!642107) (not e!905247))))

(declare-datatypes ((Option!2796 0))(
  ( (None!2795) (Some!2795 (v!22115 PrintableTokens!852)) )
))
(declare-fun lt!477384 () Option!2796)

(get-info :version)

(declare-fun append!450 (PrintableTokens!852 PrintableTokens!852) Option!2796)

(assert (=> b!1418089 (= res!642107 ((_ is Some!2795) (append!450 acc!229 (v!22115 lt!477384))))))

(declare-fun b!1418090 () Bool)

(declare-fun e!905250 () Bool)

(assert (=> b!1418090 (= e!905249 e!905250)))

(declare-fun res!642106 () Bool)

(assert (=> b!1418090 (=> (not res!642106) (not e!905250))))

(assert (=> b!1418090 (= res!642106 (not (= lt!477383 1)))))

(assert (=> b!1418090 (= lt!477383 (size!12004 objs!24))))

(declare-fun b!1418091 () Bool)

(declare-fun res!642109 () Bool)

(assert (=> b!1418091 (=> (not res!642109) (not e!905249))))

(assert (=> b!1418091 (= res!642109 (usesJsonRules!0 acc!229))))

(declare-fun b!1418092 () Bool)

(declare-fun tp!402279 () Bool)

(assert (=> b!1418092 (= e!905243 (and tp!402279 (inv!19172 (tokens!1830 acc!229)) e!905248))))

(declare-fun b!1418093 () Bool)

(assert (=> b!1418093 (= e!905250 e!905247)))

(declare-fun res!642111 () Bool)

(assert (=> b!1418093 (=> (not res!642111) (not e!905247))))

(assert (=> b!1418093 (= res!642111 ((_ is Some!2795) lt!477384))))

(declare-fun head!2755 (BalanceConc!9702) PrintableTokens!852)

(assert (=> b!1418093 (= lt!477384 (append!450 (head!2755 objs!24) sep!3))))

(assert (= (and start!130352 res!642112) b!1418091))

(assert (= (and b!1418091 res!642109) b!1418083))

(assert (= (and b!1418083 res!642108) b!1418086))

(assert (= (and b!1418086 res!642110) b!1418090))

(assert (= (and b!1418090 res!642106) b!1418093))

(assert (= (and b!1418093 res!642111) b!1418089))

(assert (= (and b!1418089 res!642107) b!1418087))

(assert (= start!130352 b!1418084))

(assert (= b!1418092 b!1418088))

(assert (= start!130352 b!1418092))

(assert (= b!1418085 b!1418082))

(assert (= start!130352 b!1418085))

(declare-fun m!1604583 () Bool)

(assert (=> b!1418087 m!1604583))

(assert (=> b!1418087 m!1604583))

(declare-fun m!1604585 () Bool)

(assert (=> b!1418087 m!1604585))

(declare-fun m!1604587 () Bool)

(assert (=> b!1418088 m!1604587))

(declare-fun m!1604589 () Bool)

(assert (=> b!1418090 m!1604589))

(declare-fun m!1604591 () Bool)

(assert (=> b!1418086 m!1604591))

(declare-fun m!1604593 () Bool)

(assert (=> b!1418083 m!1604593))

(declare-fun m!1604595 () Bool)

(assert (=> b!1418082 m!1604595))

(declare-fun m!1604597 () Bool)

(assert (=> b!1418091 m!1604597))

(declare-fun m!1604599 () Bool)

(assert (=> b!1418084 m!1604599))

(declare-fun m!1604601 () Bool)

(assert (=> b!1418093 m!1604601))

(assert (=> b!1418093 m!1604601))

(declare-fun m!1604603 () Bool)

(assert (=> b!1418093 m!1604603))

(declare-fun m!1604605 () Bool)

(assert (=> b!1418089 m!1604605))

(declare-fun m!1604607 () Bool)

(assert (=> b!1418092 m!1604607))

(declare-fun m!1604609 () Bool)

(assert (=> b!1418085 m!1604609))

(declare-fun m!1604611 () Bool)

(assert (=> start!130352 m!1604611))

(declare-fun m!1604613 () Bool)

(assert (=> start!130352 m!1604613))

(declare-fun m!1604615 () Bool)

(assert (=> start!130352 m!1604615))

(declare-fun m!1604617 () Bool)

(assert (=> start!130352 m!1604617))

(check-sat (not b!1418084) (not b!1418088) (not b!1418089) (not b!1418090) (not b!1418082) (not b!1418085) (not b!1418093) (not b!1418092) (not b!1418086) (not b!1418091) (not b!1418083) (not b!1418087) (not start!130352))
(check-sat)
(get-model)

(declare-fun d!405984 () Bool)

(declare-fun isBalanced!1450 (Conc!4880) Bool)

(assert (=> d!405984 (= (inv!19172 (tokens!1830 acc!229)) (isBalanced!1450 (c!233029 (tokens!1830 acc!229))))))

(declare-fun bs!339533 () Bool)

(assert (= bs!339533 d!405984))

(declare-fun m!1604619 () Bool)

(assert (=> bs!339533 m!1604619))

(assert (=> b!1418092 d!405984))

(declare-fun d!405986 () Bool)

(declare-fun c!233033 () Bool)

(assert (=> d!405986 (= c!233033 ((_ is Node!4880) (c!233029 (tokens!1830 sep!3))))))

(declare-fun e!905255 () Bool)

(assert (=> d!405986 (= (inv!19170 (c!233029 (tokens!1830 sep!3))) e!905255)))

(declare-fun b!1418100 () Bool)

(declare-fun inv!19177 (Conc!4880) Bool)

(assert (=> b!1418100 (= e!905255 (inv!19177 (c!233029 (tokens!1830 sep!3))))))

(declare-fun b!1418101 () Bool)

(declare-fun e!905256 () Bool)

(assert (=> b!1418101 (= e!905255 e!905256)))

(declare-fun res!642117 () Bool)

(assert (=> b!1418101 (= res!642117 (not ((_ is Leaf!7344) (c!233029 (tokens!1830 sep!3)))))))

(assert (=> b!1418101 (=> res!642117 e!905256)))

(declare-fun b!1418102 () Bool)

(declare-fun inv!19178 (Conc!4880) Bool)

(assert (=> b!1418102 (= e!905256 (inv!19178 (c!233029 (tokens!1830 sep!3))))))

(assert (= (and d!405986 c!233033) b!1418100))

(assert (= (and d!405986 (not c!233033)) b!1418101))

(assert (= (and b!1418101 (not res!642117)) b!1418102))

(declare-fun m!1604621 () Bool)

(assert (=> b!1418100 m!1604621))

(declare-fun m!1604623 () Bool)

(assert (=> b!1418102 m!1604623))

(assert (=> b!1418082 d!405986))

(declare-fun d!405988 () Bool)

(declare-datatypes ((JsonLexer!422 0))(
  ( (JsonLexer!423) )
))
(declare-fun rules!109 (JsonLexer!422) List!14618)

(assert (=> d!405988 (= (usesJsonRules!0 acc!229) (= (rules!11126 acc!229) (rules!109 JsonLexer!423)))))

(declare-fun bs!339534 () Bool)

(assert (= bs!339534 d!405988))

(declare-fun m!1604625 () Bool)

(assert (=> bs!339534 m!1604625))

(assert (=> b!1418091 d!405988))

(declare-fun d!405990 () Bool)

(declare-fun c!233036 () Bool)

(assert (=> d!405990 (= c!233036 ((_ is Node!4881) (c!233030 objs!24)))))

(declare-fun e!905261 () Bool)

(assert (=> d!405990 (= (inv!19171 (c!233030 objs!24)) e!905261)))

(declare-fun b!1418109 () Bool)

(declare-fun inv!19179 (Conc!4881) Bool)

(assert (=> b!1418109 (= e!905261 (inv!19179 (c!233030 objs!24)))))

(declare-fun b!1418110 () Bool)

(declare-fun e!905262 () Bool)

(assert (=> b!1418110 (= e!905261 e!905262)))

(declare-fun res!642120 () Bool)

(assert (=> b!1418110 (= res!642120 (not ((_ is Leaf!7345) (c!233030 objs!24))))))

(assert (=> b!1418110 (=> res!642120 e!905262)))

(declare-fun b!1418111 () Bool)

(declare-fun inv!19180 (Conc!4881) Bool)

(assert (=> b!1418111 (= e!905262 (inv!19180 (c!233030 objs!24)))))

(assert (= (and d!405990 c!233036) b!1418109))

(assert (= (and d!405990 (not c!233036)) b!1418110))

(assert (= (and b!1418110 (not res!642120)) b!1418111))

(declare-fun m!1604627 () Bool)

(assert (=> b!1418109 m!1604627))

(declare-fun m!1604629 () Bool)

(assert (=> b!1418111 m!1604629))

(assert (=> b!1418084 d!405990))

(declare-fun bm!96496 () Bool)

(declare-fun e!905322 () List!14619)

(declare-fun c!233087 () Bool)

(declare-datatypes ((LexerInterface!2209 0))(
  ( (LexerInterfaceExt!2206 (__x!9059 Int)) (Lexer!2207) )
))
(declare-fun lt!477725 () LexerInterface!2209)

(declare-fun c!233083 () Bool)

(declare-fun lt!477729 () LexerInterface!2209)

(declare-fun call!96516 () List!14617)

(declare-fun printList!663 (LexerInterface!2209 List!14619) List!14617)

(assert (=> bm!96496 (= call!96516 (printList!663 (ite c!233087 Lexer!2207 (ite c!233083 lt!477729 lt!477725)) (ite c!233087 Nil!14553 e!905322)))))

(declare-fun call!96509 () BalanceConc!9698)

(declare-fun bm!96498 () Bool)

(declare-fun print!981 (PrintableTokens!852) BalanceConc!9698)

(assert (=> bm!96498 (= call!96509 (print!981 (ite c!233087 sep!3 (ite c!233083 (head!2755 objs!24) sep!3))))))

(declare-fun bm!96499 () Bool)

(declare-fun call!96531 () List!14617)

(declare-fun call!96510 () List!14617)

(assert (=> bm!96499 (= call!96531 call!96510)))

(declare-fun b!1418213 () Bool)

(declare-fun e!905324 () List!14617)

(assert (=> b!1418213 (= e!905324 Nil!14551)))

(declare-fun lt!477728 () List!14619)

(declare-fun lt!477721 () List!14619)

(declare-fun lt!477753 () List!14619)

(declare-fun lt!477746 () List!14619)

(declare-fun call!96527 () List!14619)

(declare-fun lt!477758 () List!14619)

(declare-fun lt!477733 () List!14619)

(declare-fun bm!96500 () Bool)

(declare-fun ++!3813 (List!14619 List!14619) List!14619)

(assert (=> bm!96500 (= call!96527 (++!3813 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477721)) (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477753))))))

(declare-fun bm!96501 () Bool)

(declare-fun call!96522 () BalanceConc!9698)

(assert (=> bm!96501 (= call!96522 call!96509)))

(declare-fun b!1418214 () Bool)

(declare-fun e!905328 () Option!2796)

(assert (=> b!1418214 (= e!905328 (Some!2795 (head!2755 objs!24)))))

(declare-fun lt!477772 () LexerInterface!2209)

(assert (=> b!1418214 (= lt!477772 Lexer!2207)))

(declare-fun call!96535 () List!14619)

(assert (=> b!1418214 (= lt!477758 call!96535)))

(assert (=> b!1418214 (= lt!477728 Nil!14553)))

(declare-datatypes ((Unit!21489 0))(
  ( (Unit!21490) )
))
(declare-fun lt!477719 () Unit!21489)

(declare-fun call!96505 () Unit!21489)

(assert (=> b!1418214 (= lt!477719 call!96505)))

(declare-fun call!96502 () List!14617)

(declare-fun call!96519 () List!14617)

(assert (=> b!1418214 (= call!96502 call!96519)))

(declare-fun lt!477762 () Unit!21489)

(assert (=> b!1418214 (= lt!477762 lt!477719)))

(assert (=> b!1418214 (= call!96516 Nil!14551)))

(declare-fun lt!477745 () Unit!21489)

(declare-fun Unit!21491 () Unit!21489)

(assert (=> b!1418214 (= lt!477745 Unit!21491)))

(declare-fun lt!477773 () Unit!21489)

(declare-fun call!96503 () Unit!21489)

(assert (=> b!1418214 (= lt!477773 call!96503)))

(declare-fun call!96533 () BalanceConc!9698)

(declare-fun call!96517 () BalanceConc!9698)

(assert (=> b!1418214 (= call!96533 call!96517)))

(declare-fun lt!477757 () Unit!21489)

(declare-fun Unit!21492 () Unit!21489)

(assert (=> b!1418214 (= lt!477757 Unit!21492)))

(declare-fun lt!477764 () Unit!21489)

(declare-fun call!96512 () Unit!21489)

(assert (=> b!1418214 (= lt!477764 call!96512)))

(declare-fun call!96538 () BalanceConc!9698)

(assert (=> b!1418214 (= call!96509 call!96538)))

(declare-fun lt!477771 () Unit!21489)

(declare-fun Unit!21493 () Unit!21489)

(assert (=> b!1418214 (= lt!477771 Unit!21493)))

(declare-fun call!96536 () BalanceConc!9698)

(assert (=> b!1418214 (= call!96538 call!96536)))

(declare-fun lt!477780 () Unit!21489)

(declare-fun Unit!21494 () Unit!21489)

(assert (=> b!1418214 (= lt!477780 Unit!21494)))

(declare-fun lt!477747 () List!14619)

(declare-fun call!96515 () List!14619)

(assert (=> b!1418214 (= lt!477747 call!96515)))

(declare-fun c!233084 () Bool)

(assert (=> b!1418214 (= c!233084 ((_ is Cons!14553) lt!477747))))

(declare-fun call!96525 () List!14617)

(declare-fun e!905325 () List!14617)

(assert (=> b!1418214 (= call!96525 e!905325)))

(declare-fun lt!477748 () Unit!21489)

(declare-fun Unit!21496 () Unit!21489)

(assert (=> b!1418214 (= lt!477748 Unit!21496)))

(declare-fun bm!96502 () Bool)

(declare-fun c!233080 () Bool)

(assert (=> bm!96502 (= c!233080 c!233083)))

(declare-fun call!96524 () List!14617)

(assert (=> bm!96502 (= call!96524 call!96516)))

(declare-fun b!1418215 () Bool)

(declare-fun lt!477775 () List!14619)

(declare-fun lt!477781 () List!14619)

(assert (=> b!1418215 (= e!905322 (++!3813 lt!477775 lt!477781))))

(declare-fun lt!477743 () List!14619)

(declare-fun call!96508 () BalanceConc!9698)

(declare-fun bm!96503 () Bool)

(declare-fun charsOf!1480 (Token!4732) BalanceConc!9698)

(assert (=> bm!96503 (= call!96508 (charsOf!1480 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743))))))

(declare-fun bm!96504 () Bool)

(declare-fun call!96530 () List!14617)

(assert (=> bm!96504 (= call!96530 call!96502)))

(declare-fun bm!96505 () Bool)

(declare-fun call!96520 () Unit!21489)

(assert (=> bm!96505 (= call!96520 call!96503)))

(declare-fun b!1418216 () Bool)

(declare-fun call!96507 () List!14619)

(assert (=> b!1418216 (= e!905322 call!96507)))

(declare-fun e!905323 () List!14619)

(declare-fun bm!96506 () Bool)

(declare-fun call!96537 () List!14617)

(declare-fun lt!477735 () LexerInterface!2209)

(assert (=> bm!96506 (= call!96537 (printList!663 (ite (or c!233087 c!233083) Lexer!2207 lt!477735) (ite c!233087 (t!124254 lt!477747) e!905323)))))

(declare-fun bm!96507 () Bool)

(declare-fun print!982 (LexerInterface!2209 BalanceConc!9700) BalanceConc!9698)

(assert (=> bm!96507 (= call!96517 (print!982 Lexer!2207 (tokens!1830 (head!2755 objs!24))))))

(declare-fun b!1418217 () Bool)

(declare-fun e!905319 () Bool)

(declare-fun lt!477749 () Option!2796)

(declare-fun list!5733 (BalanceConc!9698) List!14617)

(declare-fun get!4473 (Option!2796) PrintableTokens!852)

(declare-fun ++!3814 (List!14617 List!14617) List!14617)

(assert (=> b!1418217 (= e!905319 (= (list!5733 (print!981 (get!4473 lt!477749))) (++!3814 (list!5733 (print!981 (head!2755 objs!24))) (list!5733 (print!981 sep!3)))))))

(declare-fun bm!96508 () Bool)

(declare-fun call!96501 () List!14619)

(declare-fun theoremInvertabilityWhenTokenListSeparable!33 (LexerInterface!2209 List!14618 List!14619) Unit!21489)

(assert (=> bm!96508 (= call!96503 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (head!2755 objs!24)) (ite c!233087 call!96535 call!96501)))))

(declare-fun bm!96509 () Bool)

(declare-fun call!96539 () List!14617)

(declare-fun call!96532 () List!14617)

(assert (=> bm!96509 (= call!96539 call!96532)))

(declare-fun b!1418218 () Bool)

(declare-fun c!233085 () Bool)

(declare-fun separableTokensPredicate!486 (LexerInterface!2209 Token!4732 Token!4732 List!14618) Bool)

(declare-fun last!83 (BalanceConc!9700) Token!4732)

(declare-fun head!2757 (BalanceConc!9700) Token!4732)

(assert (=> b!1418218 (= c!233085 (separableTokensPredicate!486 Lexer!2207 (last!83 (tokens!1830 (head!2755 objs!24))) (head!2757 (tokens!1830 sep!3)) (rules!11126 (head!2755 objs!24))))))

(declare-fun lt!477776 () Unit!21489)

(declare-fun lt!477722 () Unit!21489)

(assert (=> b!1418218 (= lt!477776 lt!477722)))

(declare-fun lt!477726 () LexerInterface!2209)

(declare-fun lt!477756 () Token!4732)

(declare-fun rulesProduceIndividualToken!1172 (LexerInterface!2209 List!14618 Token!4732) Bool)

(assert (=> b!1418218 (rulesProduceIndividualToken!1172 lt!477726 (rules!11126 (head!2755 objs!24)) lt!477756)))

(declare-fun lt!477774 () List!14619)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 (LexerInterface!2209 List!14618 List!14619 Token!4732) Unit!21489)

(assert (=> b!1418218 (= lt!477722 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477726 (rules!11126 (head!2755 objs!24)) lt!477774 lt!477756))))

(assert (=> b!1418218 (= lt!477756 (head!2757 (tokens!1830 sep!3)))))

(declare-fun call!96513 () List!14619)

(assert (=> b!1418218 (= lt!477774 call!96513)))

(assert (=> b!1418218 (= lt!477726 Lexer!2207)))

(declare-fun lt!477731 () Unit!21489)

(declare-fun lt!477765 () Unit!21489)

(assert (=> b!1418218 (= lt!477731 lt!477765)))

(declare-fun lt!477736 () LexerInterface!2209)

(declare-fun lt!477750 () Token!4732)

(assert (=> b!1418218 (rulesProduceIndividualToken!1172 lt!477736 (rules!11126 (head!2755 objs!24)) lt!477750)))

(declare-fun lt!477737 () List!14619)

(assert (=> b!1418218 (= lt!477765 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477736 (rules!11126 (head!2755 objs!24)) lt!477737 lt!477750))))

(assert (=> b!1418218 (= lt!477750 (last!83 (tokens!1830 (head!2755 objs!24))))))

(assert (=> b!1418218 (= lt!477737 call!96501)))

(assert (=> b!1418218 (= lt!477736 Lexer!2207)))

(declare-fun e!905327 () Option!2796)

(declare-fun e!905321 () Option!2796)

(assert (=> b!1418218 (= e!905327 e!905321)))

(declare-fun bm!96510 () Bool)

(declare-fun lt!477752 () List!14619)

(assert (=> bm!96510 (= call!96532 (printList!663 (ite c!233087 lt!477772 (ite c!233083 lt!477729 lt!477735)) (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477752))))))

(declare-fun bm!96511 () Bool)

(assert (=> bm!96511 (= call!96519 (++!3814 (ite c!233087 call!96510 (ite c!233083 call!96531 call!96530)) (ite c!233087 call!96532 (ite c!233083 call!96539 call!96531))))))

(declare-fun bm!96512 () Bool)

(assert (=> bm!96512 (= call!96501 call!96515)))

(declare-fun bm!96513 () Bool)

(assert (=> bm!96513 (= call!96507 call!96527)))

(declare-fun b!1418219 () Bool)

(declare-fun ++!3815 (BalanceConc!9700 BalanceConc!9700) BalanceConc!9700)

(assert (=> b!1418219 (= e!905321 (Some!2795 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))

(declare-fun lt!477761 () LexerInterface!2209)

(assert (=> b!1418219 (= lt!477761 Lexer!2207)))

(assert (=> b!1418219 (= lt!477721 call!96501)))

(assert (=> b!1418219 (= lt!477753 call!96513)))

(declare-fun lt!477741 () Unit!21489)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!28 (LexerInterface!2209 List!14619 List!14619 List!14618) Unit!21489)

(assert (=> b!1418219 (= lt!477741 (tokensListTwoByTwoPredicateConcatSeparableTokensList!28 lt!477761 lt!477721 lt!477753 (rules!11126 (head!2755 objs!24))))))

(declare-fun lt!477720 () Unit!21489)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!28 (LexerInterface!2209 List!14618 List!14619 List!14619) Unit!21489)

(assert (=> b!1418219 (= lt!477720 (lemmaRulesProduceEachTokenIndividuallyConcat!28 lt!477761 (rules!11126 (head!2755 objs!24)) lt!477721 lt!477753))))

(declare-fun rulesProduceEachTokenIndividuallyList!690 (LexerInterface!2209 List!14618 List!14619) Bool)

(assert (=> b!1418219 (rulesProduceEachTokenIndividuallyList!690 lt!477761 (rules!11126 (head!2755 objs!24)) call!96507)))

(declare-fun lt!477770 () Unit!21489)

(assert (=> b!1418219 (= lt!477770 lt!477720)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!209 (LexerInterface!2209 List!14619 List!14618) Bool)

(assert (=> b!1418219 (tokensListTwoByTwoPredicateSeparableList!209 lt!477761 call!96507 (rules!11126 (head!2755 objs!24)))))

(declare-fun lt!477732 () Unit!21489)

(assert (=> b!1418219 (= lt!477732 lt!477741)))

(assert (=> b!1418219 (= lt!477735 Lexer!2207)))

(assert (=> b!1418219 (= lt!477752 call!96501)))

(declare-fun lt!477740 () List!14619)

(assert (=> b!1418219 (= lt!477740 call!96513)))

(declare-fun lt!477751 () Unit!21489)

(declare-fun call!96534 () Unit!21489)

(assert (=> b!1418219 (= lt!477751 call!96534)))

(declare-fun call!96529 () List!14617)

(declare-fun call!96504 () List!14617)

(assert (=> b!1418219 (= call!96529 call!96504)))

(declare-fun lt!477777 () Unit!21489)

(assert (=> b!1418219 (= lt!477777 lt!477751)))

(declare-fun lt!477769 () Unit!21489)

(assert (=> b!1418219 (= lt!477769 call!96520)))

(declare-fun call!96523 () BalanceConc!9698)

(declare-fun call!96514 () BalanceConc!9698)

(assert (=> b!1418219 (= call!96523 call!96514)))

(declare-fun lt!477760 () Unit!21489)

(declare-fun Unit!21501 () Unit!21489)

(assert (=> b!1418219 (= lt!477760 Unit!21501)))

(declare-fun lt!477766 () Unit!21489)

(declare-fun call!96521 () Unit!21489)

(assert (=> b!1418219 (= lt!477766 call!96521)))

(declare-fun call!96528 () BalanceConc!9698)

(assert (=> b!1418219 (= call!96522 call!96528)))

(declare-fun lt!477730 () Unit!21489)

(declare-fun Unit!21502 () Unit!21489)

(assert (=> b!1418219 (= lt!477730 Unit!21502)))

(declare-fun lt!477778 () PrintableTokens!852)

(assert (=> b!1418219 (= lt!477778 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))

(declare-fun lt!477755 () BalanceConc!9700)

(assert (=> b!1418219 (= lt!477755 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))

(declare-fun lt!477767 () Unit!21489)

(declare-fun list!5734 (BalanceConc!9700) List!14619)

(assert (=> b!1418219 (= lt!477767 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))

(assert (=> b!1418219 (= (print!981 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))) (print!982 Lexer!2207 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))

(declare-fun lt!477734 () Unit!21489)

(declare-fun Unit!21503 () Unit!21489)

(assert (=> b!1418219 (= lt!477734 Unit!21503)))

(assert (=> b!1418219 (= lt!477725 Lexer!2207)))

(assert (=> b!1418219 (= lt!477775 call!96501)))

(assert (=> b!1418219 (= lt!477781 call!96513)))

(declare-fun lt!477742 () Unit!21489)

(assert (=> b!1418219 (= lt!477742 call!96505)))

(declare-fun call!96518 () List!14617)

(assert (=> b!1418219 (= call!96524 call!96518)))

(declare-fun lt!477727 () Unit!21489)

(assert (=> b!1418219 (= lt!477727 lt!477742)))

(declare-fun b!1418220 () Bool)

(declare-fun e!905320 () Bool)

(assert (=> b!1418220 (= e!905320 e!905319)))

(declare-fun res!642144 () Bool)

(assert (=> b!1418220 (=> (not res!642144) (not e!905319))))

(assert (=> b!1418220 (= res!642144 (= (rules!11126 (get!4473 lt!477749)) (rules!11126 (head!2755 objs!24))))))

(declare-fun b!1418221 () Bool)

(assert (=> b!1418221 (= e!905321 None!2795)))

(declare-fun b!1418222 () Bool)

(assert (=> b!1418222 (= e!905323 call!96513)))

(declare-fun d!405992 () Bool)

(assert (=> d!405992 e!905320))

(declare-fun res!642142 () Bool)

(assert (=> d!405992 (=> res!642142 e!905320)))

(declare-fun isEmpty!8944 (Option!2796) Bool)

(assert (=> d!405992 (= res!642142 (isEmpty!8944 lt!477749))))

(assert (=> d!405992 (= lt!477749 e!905328)))

(declare-fun isEmpty!8945 (BalanceConc!9700) Bool)

(assert (=> d!405992 (= c!233087 (isEmpty!8945 (tokens!1830 sep!3)))))

(declare-fun lt!477724 () Unit!21489)

(declare-fun lemmaInvariant!235 (PrintableTokens!852) Unit!21489)

(assert (=> d!405992 (= lt!477724 (lemmaInvariant!235 (head!2755 objs!24)))))

(declare-fun lt!477738 () Unit!21489)

(assert (=> d!405992 (= lt!477738 (lemmaInvariant!235 sep!3))))

(assert (=> d!405992 (= (rules!11126 (head!2755 objs!24)) (rules!11126 sep!3))))

(assert (=> d!405992 (= (append!450 (head!2755 objs!24) sep!3) lt!477749)))

(declare-fun bm!96497 () Bool)

(declare-fun lemmaPrintConcatSameAsConcatPrint!28 (LexerInterface!2209 List!14619 List!14619) Unit!21489)

(assert (=> bm!96497 (= call!96505 (lemmaPrintConcatSameAsConcatPrint!28 (ite c!233087 lt!477772 lt!477725) (ite c!233087 lt!477758 lt!477775) (ite c!233087 lt!477728 lt!477781)))))

(declare-fun bm!96514 () Bool)

(declare-fun printTailRec!645 (LexerInterface!2209 BalanceConc!9700 Int BalanceConc!9698) BalanceConc!9698)

(assert (=> bm!96514 (= call!96536 (printTailRec!645 Lexer!2207 (tokens!1830 sep!3) 0 (BalanceConc!9699 Empty!4879)))))

(declare-fun b!1418223 () Bool)

(declare-fun e!905326 () List!14617)

(declare-fun call!96511 () List!14617)

(assert (=> b!1418223 (= e!905326 call!96511)))

(declare-fun bm!96515 () Bool)

(assert (=> bm!96515 (= call!96512 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 sep!3) (ite c!233087 call!96515 call!96513)))))

(declare-fun bm!96516 () Bool)

(assert (=> bm!96516 (= call!96513 call!96535)))

(declare-fun b!1418224 () Bool)

(assert (=> b!1418224 (= e!905328 e!905327)))

(assert (=> b!1418224 (= c!233083 (isEmpty!8945 (tokens!1830 (head!2755 objs!24))))))

(declare-fun bm!96517 () Bool)

(assert (=> bm!96517 (= call!96514 call!96517)))

(declare-fun b!1418225 () Bool)

(declare-fun call!96506 () List!14617)

(assert (=> b!1418225 (= e!905325 call!96506)))

(declare-fun bm!96518 () Bool)

(assert (=> bm!96518 (= call!96510 (printList!663 (ite c!233087 lt!477772 (ite c!233083 lt!477729 lt!477725)) (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477781))))))

(declare-fun b!1418226 () Bool)

(declare-fun lt!477723 () Unit!21489)

(declare-fun Unit!21509 () Unit!21489)

(assert (=> b!1418226 (= lt!477723 Unit!21509)))

(assert (=> b!1418226 (= call!96529 e!905324)))

(declare-fun c!233081 () Bool)

(assert (=> b!1418226 (= c!233081 ((_ is Cons!14553) lt!477743))))

(assert (=> b!1418226 (= lt!477743 call!96513)))

(declare-fun lt!477718 () Unit!21489)

(declare-fun Unit!21510 () Unit!21489)

(assert (=> b!1418226 (= lt!477718 Unit!21510)))

(assert (=> b!1418226 (= call!96528 call!96536)))

(declare-fun lt!477754 () Unit!21489)

(declare-fun Unit!21511 () Unit!21489)

(assert (=> b!1418226 (= lt!477754 Unit!21511)))

(assert (=> b!1418226 (= call!96523 call!96528)))

(declare-fun lt!477779 () Unit!21489)

(assert (=> b!1418226 (= lt!477779 call!96521)))

(declare-fun lt!477768 () Unit!21489)

(declare-fun Unit!21512 () Unit!21489)

(assert (=> b!1418226 (= lt!477768 Unit!21512)))

(assert (=> b!1418226 (= call!96522 call!96514)))

(declare-fun lt!477763 () Unit!21489)

(assert (=> b!1418226 (= lt!477763 call!96520)))

(declare-fun lt!477739 () Unit!21489)

(declare-fun Unit!21513 () Unit!21489)

(assert (=> b!1418226 (= lt!477739 Unit!21513)))

(declare-fun call!96526 () List!14617)

(assert (=> b!1418226 (= call!96526 Nil!14551)))

(declare-fun lt!477744 () Unit!21489)

(declare-fun lt!477759 () Unit!21489)

(assert (=> b!1418226 (= lt!477744 lt!477759)))

(assert (=> b!1418226 (= call!96524 call!96518)))

(assert (=> b!1418226 (= lt!477759 call!96534)))

(assert (=> b!1418226 (= lt!477733 call!96513)))

(assert (=> b!1418226 (= lt!477746 Nil!14553)))

(assert (=> b!1418226 (= lt!477729 Lexer!2207)))

(assert (=> b!1418226 (= e!905327 (Some!2795 sep!3))))

(declare-fun bm!96519 () Bool)

(assert (=> bm!96519 (= call!96538 (print!982 Lexer!2207 (tokens!1830 sep!3)))))

(declare-fun bm!96520 () Bool)

(assert (=> bm!96520 (= call!96502 (printList!663 (ite c!233087 lt!477772 (ite c!233083 Lexer!2207 lt!477725)) (ite c!233087 call!96527 (ite c!233083 (t!124254 lt!477743) lt!477775))))))

(declare-fun bm!96521 () Bool)

(assert (=> bm!96521 (= call!96526 call!96525)))

(declare-fun bm!96522 () Bool)

(assert (=> bm!96522 (= call!96521 call!96512)))

(declare-fun b!1418227 () Bool)

(assert (=> b!1418227 (= e!905324 call!96504)))

(declare-fun bm!96523 () Bool)

(assert (=> bm!96523 (= call!96523 call!96533)))

(declare-fun bm!96524 () Bool)

(assert (=> bm!96524 (= call!96515 (list!5734 (ite c!233087 (tokens!1830 sep!3) (tokens!1830 (head!2755 objs!24)))))))

(declare-fun bm!96525 () Bool)

(assert (=> bm!96525 (= call!96533 (print!981 (ite c!233087 (head!2755 objs!24) (ite c!233083 sep!3 (head!2755 objs!24)))))))

(declare-fun b!1418228 () Bool)

(assert (=> b!1418228 (= e!905325 Nil!14551)))

(declare-fun bm!96526 () Bool)

(assert (=> bm!96526 (= call!96528 call!96538)))

(declare-fun b!1418229 () Bool)

(declare-fun res!642143 () Bool)

(assert (=> b!1418229 (=> (not res!642143) (not e!905319))))

(assert (=> b!1418229 (= res!642143 (= (list!5734 (tokens!1830 (get!4473 lt!477749))) (++!3813 (list!5734 (tokens!1830 (head!2755 objs!24))) (list!5734 (tokens!1830 sep!3)))))))

(declare-fun bm!96527 () Bool)

(declare-fun c!233082 () Bool)

(assert (=> bm!96527 (= c!233082 c!233083)))

(assert (=> bm!96527 (= call!96529 call!96537)))

(declare-fun bm!96528 () Bool)

(declare-fun c!233086 () Bool)

(assert (=> bm!96528 (= c!233086 c!233083)))

(assert (=> bm!96528 (= call!96504 call!96506)))

(declare-fun b!1418230 () Bool)

(assert (=> b!1418230 (= e!905323 (++!3813 lt!477752 lt!477740))))

(declare-fun bm!96529 () Bool)

(assert (=> bm!96529 (= call!96518 call!96519)))

(declare-fun bm!96530 () Bool)

(assert (=> bm!96530 (= call!96534 (lemmaPrintConcatSameAsConcatPrint!28 (ite c!233083 lt!477729 lt!477735) (ite c!233083 lt!477746 lt!477752) (ite c!233083 lt!477733 lt!477740)))))

(declare-fun bm!96531 () Bool)

(assert (=> bm!96531 (= call!96511 (list!5733 call!96508))))

(declare-fun b!1418231 () Bool)

(assert (=> b!1418231 (= e!905326 call!96539)))

(declare-fun bm!96532 () Bool)

(assert (=> bm!96532 (= call!96525 (printList!663 (ite (or c!233087 c!233083) Lexer!2207 lt!477735) (ite c!233087 call!96515 (ite c!233083 Nil!14553 lt!477740))))))

(declare-fun bm!96533 () Bool)

(assert (=> bm!96533 (= call!96506 (++!3814 (ite c!233087 call!96511 e!905326) (ite c!233087 call!96537 (ite c!233083 call!96530 call!96526))))))

(declare-fun bm!96534 () Bool)

(assert (=> bm!96534 (= call!96535 (list!5734 (ite c!233087 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))

(assert (= (and d!405992 c!233087) b!1418214))

(assert (= (and d!405992 (not c!233087)) b!1418224))

(assert (= (and b!1418214 c!233084) b!1418225))

(assert (= (and b!1418214 (not c!233084)) b!1418228))

(assert (= (and b!1418224 c!233083) b!1418226))

(assert (= (and b!1418224 (not c!233083)) b!1418218))

(assert (= (and b!1418226 c!233081) b!1418227))

(assert (= (and b!1418226 (not c!233081)) b!1418213))

(assert (= (and b!1418218 c!233085) b!1418219))

(assert (= (and b!1418218 (not c!233085)) b!1418221))

(assert (= (or b!1418226 b!1418219) bm!96513))

(assert (= (or b!1418226 b!1418219) bm!96517))

(assert (= (or b!1418226 b!1418218 b!1418219) bm!96516))

(assert (= (or b!1418226 b!1418219) bm!96530))

(assert (= (or b!1418226 b!1418219) bm!96526))

(assert (= (or b!1418227 b!1418219) bm!96504))

(assert (= (or b!1418226 b!1418219) bm!96509))

(assert (= (or b!1418226 b!1418219) bm!96523))

(assert (= (or b!1418226 b!1418219) bm!96499))

(assert (= (or b!1418226 b!1418219) bm!96501))

(assert (= (or b!1418226 b!1418219) bm!96521))

(assert (= (or b!1418226 b!1418218 b!1418219) bm!96512))

(assert (= (or b!1418226 b!1418219) bm!96505))

(assert (= (or b!1418226 b!1418219) bm!96522))

(assert (= (or b!1418226 b!1418219) bm!96527))

(assert (= (and bm!96527 c!233082) b!1418222))

(assert (= (and bm!96527 (not c!233082)) b!1418230))

(assert (= (or b!1418226 b!1418219) bm!96502))

(assert (= (and bm!96502 c!233080) b!1418216))

(assert (= (and bm!96502 (not c!233080)) b!1418215))

(assert (= (or b!1418226 b!1418219) bm!96529))

(assert (= (or b!1418227 b!1418219) bm!96528))

(assert (= (and bm!96528 c!233086) b!1418223))

(assert (= (and bm!96528 (not c!233086)) b!1418231))

(assert (= (or b!1418225 b!1418223) bm!96503))

(assert (= (or b!1418214 bm!96509) bm!96510))

(assert (= (or b!1418214 bm!96513) bm!96500))

(assert (= (or b!1418225 bm!96527) bm!96506))

(assert (= (or b!1418214 bm!96517) bm!96507))

(assert (= (or b!1418214 bm!96512) bm!96524))

(assert (= (or b!1418214 bm!96501) bm!96498))

(assert (= (or b!1418214 bm!96526) bm!96519))

(assert (= (or b!1418214 b!1418219) bm!96497))

(assert (= (or b!1418214 bm!96499) bm!96518))

(assert (= (or b!1418214 bm!96516) bm!96534))

(assert (= (or b!1418214 bm!96502) bm!96496))

(assert (= (or b!1418214 b!1418226) bm!96514))

(assert (= (or b!1418214 bm!96523) bm!96525))

(assert (= (or b!1418214 bm!96522) bm!96515))

(assert (= (or b!1418214 bm!96504) bm!96520))

(assert (= (or b!1418214 bm!96521) bm!96532))

(assert (= (or b!1418214 bm!96505) bm!96508))

(assert (= (or b!1418225 b!1418223) bm!96531))

(assert (= (or b!1418214 bm!96529) bm!96511))

(assert (= (or b!1418225 bm!96528) bm!96533))

(assert (= (and d!405992 (not res!642142)) b!1418220))

(assert (= (and b!1418220 res!642144) b!1418229))

(assert (= (and b!1418229 res!642143) b!1418217))

(declare-fun m!1604781 () Bool)

(assert (=> bm!96530 m!1604781))

(declare-fun m!1604783 () Bool)

(assert (=> bm!96503 m!1604783))

(declare-fun m!1604785 () Bool)

(assert (=> bm!96500 m!1604785))

(declare-fun m!1604787 () Bool)

(assert (=> bm!96531 m!1604787))

(declare-fun m!1604789 () Bool)

(assert (=> bm!96496 m!1604789))

(declare-fun m!1604791 () Bool)

(assert (=> bm!96520 m!1604791))

(declare-fun m!1604793 () Bool)

(assert (=> b!1418217 m!1604793))

(declare-fun m!1604795 () Bool)

(assert (=> b!1418217 m!1604795))

(declare-fun m!1604797 () Bool)

(assert (=> b!1418217 m!1604797))

(declare-fun m!1604799 () Bool)

(assert (=> b!1418217 m!1604799))

(declare-fun m!1604801 () Bool)

(assert (=> b!1418217 m!1604801))

(assert (=> b!1418217 m!1604795))

(assert (=> b!1418217 m!1604793))

(assert (=> b!1418217 m!1604797))

(declare-fun m!1604803 () Bool)

(assert (=> b!1418217 m!1604803))

(declare-fun m!1604805 () Bool)

(assert (=> b!1418217 m!1604805))

(assert (=> b!1418217 m!1604601))

(assert (=> b!1418217 m!1604801))

(assert (=> b!1418217 m!1604805))

(declare-fun m!1604807 () Bool)

(assert (=> b!1418217 m!1604807))

(assert (=> b!1418217 m!1604803))

(declare-fun m!1604809 () Bool)

(assert (=> bm!96518 m!1604809))

(declare-fun m!1604811 () Bool)

(assert (=> d!405992 m!1604811))

(declare-fun m!1604813 () Bool)

(assert (=> d!405992 m!1604813))

(assert (=> d!405992 m!1604601))

(declare-fun m!1604815 () Bool)

(assert (=> d!405992 m!1604815))

(declare-fun m!1604817 () Bool)

(assert (=> d!405992 m!1604817))

(declare-fun m!1604819 () Bool)

(assert (=> bm!96497 m!1604819))

(declare-fun m!1604821 () Bool)

(assert (=> b!1418229 m!1604821))

(declare-fun m!1604823 () Bool)

(assert (=> b!1418229 m!1604823))

(assert (=> b!1418229 m!1604803))

(assert (=> b!1418229 m!1604821))

(assert (=> b!1418229 m!1604823))

(declare-fun m!1604825 () Bool)

(assert (=> b!1418229 m!1604825))

(declare-fun m!1604827 () Bool)

(assert (=> b!1418229 m!1604827))

(declare-fun m!1604829 () Bool)

(assert (=> b!1418218 m!1604829))

(declare-fun m!1604831 () Bool)

(assert (=> b!1418218 m!1604831))

(declare-fun m!1604833 () Bool)

(assert (=> b!1418218 m!1604833))

(declare-fun m!1604835 () Bool)

(assert (=> b!1418218 m!1604835))

(declare-fun m!1604837 () Bool)

(assert (=> b!1418218 m!1604837))

(assert (=> b!1418218 m!1604835))

(declare-fun m!1604839 () Bool)

(assert (=> b!1418218 m!1604839))

(declare-fun m!1604841 () Bool)

(assert (=> b!1418218 m!1604841))

(assert (=> b!1418218 m!1604833))

(declare-fun m!1604843 () Bool)

(assert (=> b!1418224 m!1604843))

(declare-fun m!1604845 () Bool)

(assert (=> bm!96514 m!1604845))

(declare-fun m!1604847 () Bool)

(assert (=> bm!96525 m!1604847))

(declare-fun m!1604849 () Bool)

(assert (=> bm!96519 m!1604849))

(declare-fun m!1604851 () Bool)

(assert (=> bm!96524 m!1604851))

(assert (=> b!1418220 m!1604803))

(declare-fun m!1604853 () Bool)

(assert (=> bm!96510 m!1604853))

(declare-fun m!1604855 () Bool)

(assert (=> b!1418219 m!1604855))

(declare-fun m!1604857 () Bool)

(assert (=> b!1418219 m!1604857))

(assert (=> b!1418219 m!1604855))

(declare-fun m!1604859 () Bool)

(assert (=> b!1418219 m!1604859))

(assert (=> b!1418219 m!1604859))

(declare-fun m!1604861 () Bool)

(assert (=> b!1418219 m!1604861))

(assert (=> b!1418219 m!1604855))

(declare-fun m!1604863 () Bool)

(assert (=> b!1418219 m!1604863))

(declare-fun m!1604865 () Bool)

(assert (=> b!1418219 m!1604865))

(declare-fun m!1604867 () Bool)

(assert (=> b!1418219 m!1604867))

(declare-fun m!1604869 () Bool)

(assert (=> b!1418219 m!1604869))

(declare-fun m!1604871 () Bool)

(assert (=> b!1418219 m!1604871))

(declare-fun m!1604873 () Bool)

(assert (=> b!1418215 m!1604873))

(declare-fun m!1604875 () Bool)

(assert (=> bm!96498 m!1604875))

(declare-fun m!1604877 () Bool)

(assert (=> bm!96506 m!1604877))

(declare-fun m!1604879 () Bool)

(assert (=> bm!96508 m!1604879))

(declare-fun m!1604881 () Bool)

(assert (=> bm!96532 m!1604881))

(declare-fun m!1604883 () Bool)

(assert (=> bm!96534 m!1604883))

(declare-fun m!1604885 () Bool)

(assert (=> bm!96511 m!1604885))

(declare-fun m!1604887 () Bool)

(assert (=> bm!96533 m!1604887))

(declare-fun m!1604889 () Bool)

(assert (=> bm!96507 m!1604889))

(declare-fun m!1604891 () Bool)

(assert (=> b!1418230 m!1604891))

(declare-fun m!1604893 () Bool)

(assert (=> bm!96515 m!1604893))

(assert (=> b!1418093 d!405992))

(declare-fun d!406016 () Bool)

(declare-fun lt!477784 () PrintableTokens!852)

(declare-fun head!2760 (List!14620) PrintableTokens!852)

(declare-fun list!5735 (BalanceConc!9702) List!14620)

(assert (=> d!406016 (= lt!477784 (head!2760 (list!5735 objs!24)))))

(declare-fun head!2761 (Conc!4881) PrintableTokens!852)

(assert (=> d!406016 (= lt!477784 (head!2761 (c!233030 objs!24)))))

(assert (=> d!406016 (not (isEmpty!8938 objs!24))))

(assert (=> d!406016 (= (head!2755 objs!24) lt!477784)))

(declare-fun bs!339543 () Bool)

(assert (= bs!339543 d!406016))

(declare-fun m!1604895 () Bool)

(assert (=> bs!339543 m!1604895))

(assert (=> bs!339543 m!1604895))

(declare-fun m!1604897 () Bool)

(assert (=> bs!339543 m!1604897))

(declare-fun m!1604899 () Bool)

(assert (=> bs!339543 m!1604899))

(assert (=> bs!339543 m!1604591))

(assert (=> b!1418093 d!406016))

(declare-fun d!406018 () Bool)

(assert (=> d!406018 (= (usesJsonRules!0 sep!3) (= (rules!11126 sep!3) (rules!109 JsonLexer!423)))))

(declare-fun bs!339544 () Bool)

(assert (= bs!339544 d!406018))

(assert (=> bs!339544 m!1604625))

(assert (=> b!1418083 d!406018))

(declare-fun d!406020 () Bool)

(declare-fun lt!477787 () Int)

(declare-fun size!12007 (List!14620) Int)

(assert (=> d!406020 (= lt!477787 (size!12007 (list!5735 (tail!2106 objs!24))))))

(declare-fun size!12008 (Conc!4881) Int)

(assert (=> d!406020 (= lt!477787 (size!12008 (c!233030 (tail!2106 objs!24))))))

(assert (=> d!406020 (= (size!12004 (tail!2106 objs!24)) lt!477787)))

(declare-fun bs!339545 () Bool)

(assert (= bs!339545 d!406020))

(assert (=> bs!339545 m!1604583))

(declare-fun m!1604901 () Bool)

(assert (=> bs!339545 m!1604901))

(assert (=> bs!339545 m!1604901))

(declare-fun m!1604903 () Bool)

(assert (=> bs!339545 m!1604903))

(declare-fun m!1604905 () Bool)

(assert (=> bs!339545 m!1604905))

(assert (=> b!1418087 d!406020))

(declare-fun d!406022 () Bool)

(declare-fun e!905331 () Bool)

(assert (=> d!406022 e!905331))

(declare-fun res!642147 () Bool)

(assert (=> d!406022 (=> (not res!642147) (not e!905331))))

(declare-fun isBalanced!1452 (Conc!4881) Bool)

(declare-fun tail!2109 (Conc!4881) Conc!4881)

(assert (=> d!406022 (= res!642147 (isBalanced!1452 (tail!2109 (c!233030 objs!24))))))

(declare-fun lt!477790 () BalanceConc!9702)

(assert (=> d!406022 (= lt!477790 (BalanceConc!9703 (tail!2109 (c!233030 objs!24))))))

(assert (=> d!406022 (not (isEmpty!8938 objs!24))))

(assert (=> d!406022 (= (tail!2106 objs!24) lt!477790)))

(declare-fun b!1418234 () Bool)

(declare-fun tail!2110 (List!14620) List!14620)

(assert (=> b!1418234 (= e!905331 (= (list!5735 lt!477790) (tail!2110 (list!5735 objs!24))))))

(assert (= (and d!406022 res!642147) b!1418234))

(declare-fun m!1604907 () Bool)

(assert (=> d!406022 m!1604907))

(assert (=> d!406022 m!1604907))

(declare-fun m!1604909 () Bool)

(assert (=> d!406022 m!1604909))

(assert (=> d!406022 m!1604591))

(declare-fun m!1604911 () Bool)

(assert (=> b!1418234 m!1604911))

(assert (=> b!1418234 m!1604895))

(assert (=> b!1418234 m!1604895))

(declare-fun m!1604913 () Bool)

(assert (=> b!1418234 m!1604913))

(assert (=> b!1418087 d!406022))

(declare-fun d!406024 () Bool)

(assert (=> d!406024 (= (inv!19172 (tokens!1830 sep!3)) (isBalanced!1450 (c!233029 (tokens!1830 sep!3))))))

(declare-fun bs!339546 () Bool)

(assert (= bs!339546 d!406024))

(declare-fun m!1604915 () Bool)

(assert (=> bs!339546 m!1604915))

(assert (=> b!1418085 d!406024))

(declare-fun d!406026 () Bool)

(declare-fun lt!477793 () Bool)

(declare-fun isEmpty!8946 (List!14620) Bool)

(assert (=> d!406026 (= lt!477793 (isEmpty!8946 (list!5735 objs!24)))))

(declare-fun isEmpty!8947 (Conc!4881) Bool)

(assert (=> d!406026 (= lt!477793 (isEmpty!8947 (c!233030 objs!24)))))

(assert (=> d!406026 (= (isEmpty!8938 objs!24) lt!477793)))

(declare-fun bs!339547 () Bool)

(assert (= bs!339547 d!406026))

(assert (=> bs!339547 m!1604895))

(assert (=> bs!339547 m!1604895))

(declare-fun m!1604917 () Bool)

(assert (=> bs!339547 m!1604917))

(declare-fun m!1604919 () Bool)

(assert (=> bs!339547 m!1604919))

(assert (=> b!1418086 d!406026))

(declare-fun bm!96535 () Bool)

(declare-fun lt!477801 () LexerInterface!2209)

(declare-fun e!905335 () List!14619)

(declare-fun lt!477805 () LexerInterface!2209)

(declare-fun c!233092 () Bool)

(declare-fun c!233096 () Bool)

(declare-fun call!96555 () List!14617)

(assert (=> bm!96535 (= call!96555 (printList!663 (ite c!233096 Lexer!2207 (ite c!233092 lt!477805 lt!477801)) (ite c!233096 Nil!14553 e!905335)))))

(declare-fun bm!96537 () Bool)

(declare-fun call!96548 () BalanceConc!9698)

(assert (=> bm!96537 (= call!96548 (print!981 (ite c!233096 (v!22115 lt!477384) (ite c!233092 acc!229 (v!22115 lt!477384)))))))

(declare-fun bm!96538 () Bool)

(declare-fun call!96570 () List!14617)

(declare-fun call!96549 () List!14617)

(assert (=> bm!96538 (= call!96570 call!96549)))

(declare-fun b!1418235 () Bool)

(declare-fun e!905337 () List!14617)

(assert (=> b!1418235 (= e!905337 Nil!14551)))

(declare-fun lt!477804 () List!14619)

(declare-fun bm!96539 () Bool)

(declare-fun lt!477822 () List!14619)

(declare-fun lt!477834 () List!14619)

(declare-fun lt!477829 () List!14619)

(declare-fun lt!477809 () List!14619)

(declare-fun call!96566 () List!14619)

(declare-fun lt!477797 () List!14619)

(assert (=> bm!96539 (= call!96566 (++!3813 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477797)) (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477829))))))

(declare-fun bm!96540 () Bool)

(declare-fun call!96561 () BalanceConc!9698)

(assert (=> bm!96540 (= call!96561 call!96548)))

(declare-fun b!1418236 () Bool)

(declare-fun e!905341 () Option!2796)

(assert (=> b!1418236 (= e!905341 (Some!2795 acc!229))))

(declare-fun lt!477848 () LexerInterface!2209)

(assert (=> b!1418236 (= lt!477848 Lexer!2207)))

(declare-fun call!96574 () List!14619)

(assert (=> b!1418236 (= lt!477834 call!96574)))

(assert (=> b!1418236 (= lt!477804 Nil!14553)))

(declare-fun lt!477795 () Unit!21489)

(declare-fun call!96544 () Unit!21489)

(assert (=> b!1418236 (= lt!477795 call!96544)))

(declare-fun call!96541 () List!14617)

(declare-fun call!96558 () List!14617)

(assert (=> b!1418236 (= call!96541 call!96558)))

(declare-fun lt!477838 () Unit!21489)

(assert (=> b!1418236 (= lt!477838 lt!477795)))

(assert (=> b!1418236 (= call!96555 Nil!14551)))

(declare-fun lt!477821 () Unit!21489)

(declare-fun Unit!21517 () Unit!21489)

(assert (=> b!1418236 (= lt!477821 Unit!21517)))

(declare-fun lt!477849 () Unit!21489)

(declare-fun call!96542 () Unit!21489)

(assert (=> b!1418236 (= lt!477849 call!96542)))

(declare-fun call!96572 () BalanceConc!9698)

(declare-fun call!96556 () BalanceConc!9698)

(assert (=> b!1418236 (= call!96572 call!96556)))

(declare-fun lt!477833 () Unit!21489)

(declare-fun Unit!21518 () Unit!21489)

(assert (=> b!1418236 (= lt!477833 Unit!21518)))

(declare-fun lt!477840 () Unit!21489)

(declare-fun call!96551 () Unit!21489)

(assert (=> b!1418236 (= lt!477840 call!96551)))

(declare-fun call!96577 () BalanceConc!9698)

(assert (=> b!1418236 (= call!96548 call!96577)))

(declare-fun lt!477847 () Unit!21489)

(declare-fun Unit!21519 () Unit!21489)

(assert (=> b!1418236 (= lt!477847 Unit!21519)))

(declare-fun call!96575 () BalanceConc!9698)

(assert (=> b!1418236 (= call!96577 call!96575)))

(declare-fun lt!477856 () Unit!21489)

(declare-fun Unit!21520 () Unit!21489)

(assert (=> b!1418236 (= lt!477856 Unit!21520)))

(declare-fun lt!477823 () List!14619)

(declare-fun call!96554 () List!14619)

(assert (=> b!1418236 (= lt!477823 call!96554)))

(declare-fun c!233093 () Bool)

(assert (=> b!1418236 (= c!233093 ((_ is Cons!14553) lt!477823))))

(declare-fun call!96564 () List!14617)

(declare-fun e!905338 () List!14617)

(assert (=> b!1418236 (= call!96564 e!905338)))

(declare-fun lt!477824 () Unit!21489)

(declare-fun Unit!21521 () Unit!21489)

(assert (=> b!1418236 (= lt!477824 Unit!21521)))

(declare-fun bm!96541 () Bool)

(declare-fun c!233089 () Bool)

(assert (=> bm!96541 (= c!233089 c!233092)))

(declare-fun call!96563 () List!14617)

(assert (=> bm!96541 (= call!96563 call!96555)))

(declare-fun b!1418237 () Bool)

(declare-fun lt!477851 () List!14619)

(declare-fun lt!477857 () List!14619)

(assert (=> b!1418237 (= e!905335 (++!3813 lt!477851 lt!477857))))

(declare-fun call!96547 () BalanceConc!9698)

(declare-fun bm!96542 () Bool)

(declare-fun lt!477819 () List!14619)

(assert (=> bm!96542 (= call!96547 (charsOf!1480 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819))))))

(declare-fun bm!96543 () Bool)

(declare-fun call!96569 () List!14617)

(assert (=> bm!96543 (= call!96569 call!96541)))

(declare-fun bm!96544 () Bool)

(declare-fun call!96559 () Unit!21489)

(assert (=> bm!96544 (= call!96559 call!96542)))

(declare-fun b!1418238 () Bool)

(declare-fun call!96546 () List!14619)

(assert (=> b!1418238 (= e!905335 call!96546)))

(declare-fun lt!477811 () LexerInterface!2209)

(declare-fun bm!96545 () Bool)

(declare-fun call!96576 () List!14617)

(declare-fun e!905336 () List!14619)

(assert (=> bm!96545 (= call!96576 (printList!663 (ite (or c!233096 c!233092) Lexer!2207 lt!477811) (ite c!233096 (t!124254 lt!477823) e!905336)))))

(declare-fun bm!96546 () Bool)

(assert (=> bm!96546 (= call!96556 (print!982 Lexer!2207 (tokens!1830 acc!229)))))

(declare-fun e!905332 () Bool)

(declare-fun b!1418239 () Bool)

(declare-fun lt!477825 () Option!2796)

(assert (=> b!1418239 (= e!905332 (= (list!5733 (print!981 (get!4473 lt!477825))) (++!3814 (list!5733 (print!981 acc!229)) (list!5733 (print!981 (v!22115 lt!477384))))))))

(declare-fun call!96540 () List!14619)

(declare-fun bm!96547 () Bool)

(assert (=> bm!96547 (= call!96542 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 acc!229) (ite c!233096 call!96574 call!96540)))))

(declare-fun bm!96548 () Bool)

(declare-fun call!96578 () List!14617)

(declare-fun call!96571 () List!14617)

(assert (=> bm!96548 (= call!96578 call!96571)))

(declare-fun b!1418240 () Bool)

(declare-fun c!233094 () Bool)

(assert (=> b!1418240 (= c!233094 (separableTokensPredicate!486 Lexer!2207 (last!83 (tokens!1830 acc!229)) (head!2757 (tokens!1830 (v!22115 lt!477384))) (rules!11126 acc!229)))))

(declare-fun lt!477852 () Unit!21489)

(declare-fun lt!477798 () Unit!21489)

(assert (=> b!1418240 (= lt!477852 lt!477798)))

(declare-fun lt!477802 () LexerInterface!2209)

(declare-fun lt!477832 () Token!4732)

(assert (=> b!1418240 (rulesProduceIndividualToken!1172 lt!477802 (rules!11126 acc!229) lt!477832)))

(declare-fun lt!477850 () List!14619)

(assert (=> b!1418240 (= lt!477798 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477802 (rules!11126 acc!229) lt!477850 lt!477832))))

(assert (=> b!1418240 (= lt!477832 (head!2757 (tokens!1830 (v!22115 lt!477384))))))

(declare-fun call!96552 () List!14619)

(assert (=> b!1418240 (= lt!477850 call!96552)))

(assert (=> b!1418240 (= lt!477802 Lexer!2207)))

(declare-fun lt!477807 () Unit!21489)

(declare-fun lt!477841 () Unit!21489)

(assert (=> b!1418240 (= lt!477807 lt!477841)))

(declare-fun lt!477812 () LexerInterface!2209)

(declare-fun lt!477826 () Token!4732)

(assert (=> b!1418240 (rulesProduceIndividualToken!1172 lt!477812 (rules!11126 acc!229) lt!477826)))

(declare-fun lt!477813 () List!14619)

(assert (=> b!1418240 (= lt!477841 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477812 (rules!11126 acc!229) lt!477813 lt!477826))))

(assert (=> b!1418240 (= lt!477826 (last!83 (tokens!1830 acc!229)))))

(assert (=> b!1418240 (= lt!477813 call!96540)))

(assert (=> b!1418240 (= lt!477812 Lexer!2207)))

(declare-fun e!905340 () Option!2796)

(declare-fun e!905334 () Option!2796)

(assert (=> b!1418240 (= e!905340 e!905334)))

(declare-fun bm!96549 () Bool)

(declare-fun lt!477828 () List!14619)

(assert (=> bm!96549 (= call!96571 (printList!663 (ite c!233096 lt!477848 (ite c!233092 lt!477805 lt!477811)) (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477828))))))

(declare-fun bm!96550 () Bool)

(assert (=> bm!96550 (= call!96558 (++!3814 (ite c!233096 call!96549 (ite c!233092 call!96570 call!96569)) (ite c!233096 call!96571 (ite c!233092 call!96578 call!96570))))))

(declare-fun bm!96551 () Bool)

(assert (=> bm!96551 (= call!96540 call!96554)))

(declare-fun bm!96552 () Bool)

(assert (=> bm!96552 (= call!96546 call!96566)))

(declare-fun b!1418241 () Bool)

(assert (=> b!1418241 (= e!905334 (Some!2795 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))

(declare-fun lt!477837 () LexerInterface!2209)

(assert (=> b!1418241 (= lt!477837 Lexer!2207)))

(assert (=> b!1418241 (= lt!477797 call!96540)))

(assert (=> b!1418241 (= lt!477829 call!96552)))

(declare-fun lt!477817 () Unit!21489)

(assert (=> b!1418241 (= lt!477817 (tokensListTwoByTwoPredicateConcatSeparableTokensList!28 lt!477837 lt!477797 lt!477829 (rules!11126 acc!229)))))

(declare-fun lt!477796 () Unit!21489)

(assert (=> b!1418241 (= lt!477796 (lemmaRulesProduceEachTokenIndividuallyConcat!28 lt!477837 (rules!11126 acc!229) lt!477797 lt!477829))))

(assert (=> b!1418241 (rulesProduceEachTokenIndividuallyList!690 lt!477837 (rules!11126 acc!229) call!96546)))

(declare-fun lt!477846 () Unit!21489)

(assert (=> b!1418241 (= lt!477846 lt!477796)))

(assert (=> b!1418241 (tokensListTwoByTwoPredicateSeparableList!209 lt!477837 call!96546 (rules!11126 acc!229))))

(declare-fun lt!477808 () Unit!21489)

(assert (=> b!1418241 (= lt!477808 lt!477817)))

(assert (=> b!1418241 (= lt!477811 Lexer!2207)))

(assert (=> b!1418241 (= lt!477828 call!96540)))

(declare-fun lt!477816 () List!14619)

(assert (=> b!1418241 (= lt!477816 call!96552)))

(declare-fun lt!477827 () Unit!21489)

(declare-fun call!96573 () Unit!21489)

(assert (=> b!1418241 (= lt!477827 call!96573)))

(declare-fun call!96568 () List!14617)

(declare-fun call!96543 () List!14617)

(assert (=> b!1418241 (= call!96568 call!96543)))

(declare-fun lt!477853 () Unit!21489)

(assert (=> b!1418241 (= lt!477853 lt!477827)))

(declare-fun lt!477845 () Unit!21489)

(assert (=> b!1418241 (= lt!477845 call!96559)))

(declare-fun call!96562 () BalanceConc!9698)

(declare-fun call!96553 () BalanceConc!9698)

(assert (=> b!1418241 (= call!96562 call!96553)))

(declare-fun lt!477836 () Unit!21489)

(declare-fun Unit!21522 () Unit!21489)

(assert (=> b!1418241 (= lt!477836 Unit!21522)))

(declare-fun lt!477842 () Unit!21489)

(declare-fun call!96560 () Unit!21489)

(assert (=> b!1418241 (= lt!477842 call!96560)))

(declare-fun call!96567 () BalanceConc!9698)

(assert (=> b!1418241 (= call!96561 call!96567)))

(declare-fun lt!477806 () Unit!21489)

(declare-fun Unit!21523 () Unit!21489)

(assert (=> b!1418241 (= lt!477806 Unit!21523)))

(declare-fun lt!477854 () PrintableTokens!852)

(assert (=> b!1418241 (= lt!477854 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))

(declare-fun lt!477831 () BalanceConc!9700)

(assert (=> b!1418241 (= lt!477831 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))

(declare-fun lt!477843 () Unit!21489)

(assert (=> b!1418241 (= lt!477843 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 acc!229) (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))

(assert (=> b!1418241 (= (print!981 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))) (print!982 Lexer!2207 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))

(declare-fun lt!477810 () Unit!21489)

(declare-fun Unit!21524 () Unit!21489)

(assert (=> b!1418241 (= lt!477810 Unit!21524)))

(assert (=> b!1418241 (= lt!477801 Lexer!2207)))

(assert (=> b!1418241 (= lt!477851 call!96540)))

(assert (=> b!1418241 (= lt!477857 call!96552)))

(declare-fun lt!477818 () Unit!21489)

(assert (=> b!1418241 (= lt!477818 call!96544)))

(declare-fun call!96557 () List!14617)

(assert (=> b!1418241 (= call!96563 call!96557)))

(declare-fun lt!477803 () Unit!21489)

(assert (=> b!1418241 (= lt!477803 lt!477818)))

(declare-fun b!1418242 () Bool)

(declare-fun e!905333 () Bool)

(assert (=> b!1418242 (= e!905333 e!905332)))

(declare-fun res!642150 () Bool)

(assert (=> b!1418242 (=> (not res!642150) (not e!905332))))

(assert (=> b!1418242 (= res!642150 (= (rules!11126 (get!4473 lt!477825)) (rules!11126 acc!229)))))

(declare-fun b!1418243 () Bool)

(assert (=> b!1418243 (= e!905334 None!2795)))

(declare-fun b!1418244 () Bool)

(assert (=> b!1418244 (= e!905336 call!96552)))

(declare-fun d!406028 () Bool)

(assert (=> d!406028 e!905333))

(declare-fun res!642148 () Bool)

(assert (=> d!406028 (=> res!642148 e!905333)))

(assert (=> d!406028 (= res!642148 (isEmpty!8944 lt!477825))))

(assert (=> d!406028 (= lt!477825 e!905341)))

(assert (=> d!406028 (= c!233096 (isEmpty!8945 (tokens!1830 (v!22115 lt!477384))))))

(declare-fun lt!477800 () Unit!21489)

(assert (=> d!406028 (= lt!477800 (lemmaInvariant!235 acc!229))))

(declare-fun lt!477814 () Unit!21489)

(assert (=> d!406028 (= lt!477814 (lemmaInvariant!235 (v!22115 lt!477384)))))

(assert (=> d!406028 (= (rules!11126 acc!229) (rules!11126 (v!22115 lt!477384)))))

(assert (=> d!406028 (= (append!450 acc!229 (v!22115 lt!477384)) lt!477825)))

(declare-fun bm!96536 () Bool)

(assert (=> bm!96536 (= call!96544 (lemmaPrintConcatSameAsConcatPrint!28 (ite c!233096 lt!477848 lt!477801) (ite c!233096 lt!477834 lt!477851) (ite c!233096 lt!477804 lt!477857)))))

(declare-fun bm!96553 () Bool)

(assert (=> bm!96553 (= call!96575 (printTailRec!645 Lexer!2207 (tokens!1830 (v!22115 lt!477384)) 0 (BalanceConc!9699 Empty!4879)))))

(declare-fun b!1418245 () Bool)

(declare-fun e!905339 () List!14617)

(declare-fun call!96550 () List!14617)

(assert (=> b!1418245 (= e!905339 call!96550)))

(declare-fun bm!96554 () Bool)

(assert (=> bm!96554 (= call!96551 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (ite c!233096 call!96554 call!96552)))))

(declare-fun bm!96555 () Bool)

(assert (=> bm!96555 (= call!96552 call!96574)))

(declare-fun b!1418246 () Bool)

(assert (=> b!1418246 (= e!905341 e!905340)))

(assert (=> b!1418246 (= c!233092 (isEmpty!8945 (tokens!1830 acc!229)))))

(declare-fun bm!96556 () Bool)

(assert (=> bm!96556 (= call!96553 call!96556)))

(declare-fun b!1418247 () Bool)

(declare-fun call!96545 () List!14617)

(assert (=> b!1418247 (= e!905338 call!96545)))

(declare-fun bm!96557 () Bool)

(assert (=> bm!96557 (= call!96549 (printList!663 (ite c!233096 lt!477848 (ite c!233092 lt!477805 lt!477801)) (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477857))))))

(declare-fun b!1418248 () Bool)

(declare-fun lt!477799 () Unit!21489)

(declare-fun Unit!21525 () Unit!21489)

(assert (=> b!1418248 (= lt!477799 Unit!21525)))

(assert (=> b!1418248 (= call!96568 e!905337)))

(declare-fun c!233090 () Bool)

(assert (=> b!1418248 (= c!233090 ((_ is Cons!14553) lt!477819))))

(assert (=> b!1418248 (= lt!477819 call!96552)))

(declare-fun lt!477794 () Unit!21489)

(declare-fun Unit!21526 () Unit!21489)

(assert (=> b!1418248 (= lt!477794 Unit!21526)))

(assert (=> b!1418248 (= call!96567 call!96575)))

(declare-fun lt!477830 () Unit!21489)

(declare-fun Unit!21527 () Unit!21489)

(assert (=> b!1418248 (= lt!477830 Unit!21527)))

(assert (=> b!1418248 (= call!96562 call!96567)))

(declare-fun lt!477855 () Unit!21489)

(assert (=> b!1418248 (= lt!477855 call!96560)))

(declare-fun lt!477844 () Unit!21489)

(declare-fun Unit!21528 () Unit!21489)

(assert (=> b!1418248 (= lt!477844 Unit!21528)))

(assert (=> b!1418248 (= call!96561 call!96553)))

(declare-fun lt!477839 () Unit!21489)

(assert (=> b!1418248 (= lt!477839 call!96559)))

(declare-fun lt!477815 () Unit!21489)

(declare-fun Unit!21529 () Unit!21489)

(assert (=> b!1418248 (= lt!477815 Unit!21529)))

(declare-fun call!96565 () List!14617)

(assert (=> b!1418248 (= call!96565 Nil!14551)))

(declare-fun lt!477820 () Unit!21489)

(declare-fun lt!477835 () Unit!21489)

(assert (=> b!1418248 (= lt!477820 lt!477835)))

(assert (=> b!1418248 (= call!96563 call!96557)))

(assert (=> b!1418248 (= lt!477835 call!96573)))

(assert (=> b!1418248 (= lt!477809 call!96552)))

(assert (=> b!1418248 (= lt!477822 Nil!14553)))

(assert (=> b!1418248 (= lt!477805 Lexer!2207)))

(assert (=> b!1418248 (= e!905340 (Some!2795 (v!22115 lt!477384)))))

(declare-fun bm!96558 () Bool)

(assert (=> bm!96558 (= call!96577 (print!982 Lexer!2207 (tokens!1830 (v!22115 lt!477384))))))

(declare-fun bm!96559 () Bool)

(assert (=> bm!96559 (= call!96541 (printList!663 (ite c!233096 lt!477848 (ite c!233092 Lexer!2207 lt!477801)) (ite c!233096 call!96566 (ite c!233092 (t!124254 lt!477819) lt!477851))))))

(declare-fun bm!96560 () Bool)

(assert (=> bm!96560 (= call!96565 call!96564)))

(declare-fun bm!96561 () Bool)

(assert (=> bm!96561 (= call!96560 call!96551)))

(declare-fun b!1418249 () Bool)

(assert (=> b!1418249 (= e!905337 call!96543)))

(declare-fun bm!96562 () Bool)

(assert (=> bm!96562 (= call!96562 call!96572)))

(declare-fun bm!96563 () Bool)

(assert (=> bm!96563 (= call!96554 (list!5734 (ite c!233096 (tokens!1830 (v!22115 lt!477384)) (tokens!1830 acc!229))))))

(declare-fun bm!96564 () Bool)

(assert (=> bm!96564 (= call!96572 (print!981 (ite c!233096 acc!229 (ite c!233092 (v!22115 lt!477384) acc!229))))))

(declare-fun b!1418250 () Bool)

(assert (=> b!1418250 (= e!905338 Nil!14551)))

(declare-fun bm!96565 () Bool)

(assert (=> bm!96565 (= call!96567 call!96577)))

(declare-fun b!1418251 () Bool)

(declare-fun res!642149 () Bool)

(assert (=> b!1418251 (=> (not res!642149) (not e!905332))))

(assert (=> b!1418251 (= res!642149 (= (list!5734 (tokens!1830 (get!4473 lt!477825))) (++!3813 (list!5734 (tokens!1830 acc!229)) (list!5734 (tokens!1830 (v!22115 lt!477384))))))))

(declare-fun bm!96566 () Bool)

(declare-fun c!233091 () Bool)

(assert (=> bm!96566 (= c!233091 c!233092)))

(assert (=> bm!96566 (= call!96568 call!96576)))

(declare-fun bm!96567 () Bool)

(declare-fun c!233095 () Bool)

(assert (=> bm!96567 (= c!233095 c!233092)))

(assert (=> bm!96567 (= call!96543 call!96545)))

(declare-fun b!1418252 () Bool)

(assert (=> b!1418252 (= e!905336 (++!3813 lt!477828 lt!477816))))

(declare-fun bm!96568 () Bool)

(assert (=> bm!96568 (= call!96557 call!96558)))

(declare-fun bm!96569 () Bool)

(assert (=> bm!96569 (= call!96573 (lemmaPrintConcatSameAsConcatPrint!28 (ite c!233092 lt!477805 lt!477811) (ite c!233092 lt!477822 lt!477828) (ite c!233092 lt!477809 lt!477816)))))

(declare-fun bm!96570 () Bool)

(assert (=> bm!96570 (= call!96550 (list!5733 call!96547))))

(declare-fun b!1418253 () Bool)

(assert (=> b!1418253 (= e!905339 call!96578)))

(declare-fun bm!96571 () Bool)

(assert (=> bm!96571 (= call!96564 (printList!663 (ite (or c!233096 c!233092) Lexer!2207 lt!477811) (ite c!233096 call!96554 (ite c!233092 Nil!14553 lt!477816))))))

(declare-fun bm!96572 () Bool)

(assert (=> bm!96572 (= call!96545 (++!3814 (ite c!233096 call!96550 e!905339) (ite c!233096 call!96576 (ite c!233092 call!96569 call!96565))))))

(declare-fun bm!96573 () Bool)

(assert (=> bm!96573 (= call!96574 (list!5734 (ite c!233096 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))

(assert (= (and d!406028 c!233096) b!1418236))

(assert (= (and d!406028 (not c!233096)) b!1418246))

(assert (= (and b!1418236 c!233093) b!1418247))

(assert (= (and b!1418236 (not c!233093)) b!1418250))

(assert (= (and b!1418246 c!233092) b!1418248))

(assert (= (and b!1418246 (not c!233092)) b!1418240))

(assert (= (and b!1418248 c!233090) b!1418249))

(assert (= (and b!1418248 (not c!233090)) b!1418235))

(assert (= (and b!1418240 c!233094) b!1418241))

(assert (= (and b!1418240 (not c!233094)) b!1418243))

(assert (= (or b!1418248 b!1418241) bm!96552))

(assert (= (or b!1418248 b!1418241) bm!96556))

(assert (= (or b!1418248 b!1418240 b!1418241) bm!96555))

(assert (= (or b!1418248 b!1418241) bm!96569))

(assert (= (or b!1418248 b!1418241) bm!96565))

(assert (= (or b!1418249 b!1418241) bm!96543))

(assert (= (or b!1418248 b!1418241) bm!96548))

(assert (= (or b!1418248 b!1418241) bm!96562))

(assert (= (or b!1418248 b!1418241) bm!96538))

(assert (= (or b!1418248 b!1418241) bm!96540))

(assert (= (or b!1418248 b!1418241) bm!96560))

(assert (= (or b!1418248 b!1418240 b!1418241) bm!96551))

(assert (= (or b!1418248 b!1418241) bm!96544))

(assert (= (or b!1418248 b!1418241) bm!96561))

(assert (= (or b!1418248 b!1418241) bm!96566))

(assert (= (and bm!96566 c!233091) b!1418244))

(assert (= (and bm!96566 (not c!233091)) b!1418252))

(assert (= (or b!1418248 b!1418241) bm!96541))

(assert (= (and bm!96541 c!233089) b!1418238))

(assert (= (and bm!96541 (not c!233089)) b!1418237))

(assert (= (or b!1418248 b!1418241) bm!96568))

(assert (= (or b!1418249 b!1418241) bm!96567))

(assert (= (and bm!96567 c!233095) b!1418245))

(assert (= (and bm!96567 (not c!233095)) b!1418253))

(assert (= (or b!1418247 b!1418245) bm!96542))

(assert (= (or b!1418236 bm!96548) bm!96549))

(assert (= (or b!1418236 bm!96552) bm!96539))

(assert (= (or b!1418247 bm!96566) bm!96545))

(assert (= (or b!1418236 bm!96556) bm!96546))

(assert (= (or b!1418236 bm!96551) bm!96563))

(assert (= (or b!1418236 bm!96540) bm!96537))

(assert (= (or b!1418236 bm!96565) bm!96558))

(assert (= (or b!1418236 b!1418241) bm!96536))

(assert (= (or b!1418236 bm!96538) bm!96557))

(assert (= (or b!1418236 bm!96555) bm!96573))

(assert (= (or b!1418236 bm!96541) bm!96535))

(assert (= (or b!1418236 b!1418248) bm!96553))

(assert (= (or b!1418236 bm!96562) bm!96564))

(assert (= (or b!1418236 bm!96561) bm!96554))

(assert (= (or b!1418236 bm!96543) bm!96559))

(assert (= (or b!1418236 bm!96560) bm!96571))

(assert (= (or b!1418236 bm!96544) bm!96547))

(assert (= (or b!1418247 b!1418245) bm!96570))

(assert (= (or b!1418236 bm!96568) bm!96550))

(assert (= (or b!1418247 bm!96567) bm!96572))

(assert (= (and d!406028 (not res!642148)) b!1418242))

(assert (= (and b!1418242 res!642150) b!1418251))

(assert (= (and b!1418251 res!642149) b!1418239))

(declare-fun m!1604921 () Bool)

(assert (=> bm!96569 m!1604921))

(declare-fun m!1604923 () Bool)

(assert (=> bm!96542 m!1604923))

(declare-fun m!1604925 () Bool)

(assert (=> bm!96539 m!1604925))

(declare-fun m!1604927 () Bool)

(assert (=> bm!96570 m!1604927))

(declare-fun m!1604929 () Bool)

(assert (=> bm!96535 m!1604929))

(declare-fun m!1604931 () Bool)

(assert (=> bm!96559 m!1604931))

(declare-fun m!1604933 () Bool)

(assert (=> b!1418239 m!1604933))

(declare-fun m!1604935 () Bool)

(assert (=> b!1418239 m!1604935))

(declare-fun m!1604937 () Bool)

(assert (=> b!1418239 m!1604937))

(declare-fun m!1604939 () Bool)

(assert (=> b!1418239 m!1604939))

(declare-fun m!1604941 () Bool)

(assert (=> b!1418239 m!1604941))

(assert (=> b!1418239 m!1604935))

(assert (=> b!1418239 m!1604933))

(assert (=> b!1418239 m!1604937))

(declare-fun m!1604943 () Bool)

(assert (=> b!1418239 m!1604943))

(declare-fun m!1604945 () Bool)

(assert (=> b!1418239 m!1604945))

(assert (=> b!1418239 m!1604941))

(assert (=> b!1418239 m!1604945))

(declare-fun m!1604947 () Bool)

(assert (=> b!1418239 m!1604947))

(assert (=> b!1418239 m!1604943))

(declare-fun m!1604949 () Bool)

(assert (=> bm!96557 m!1604949))

(declare-fun m!1604951 () Bool)

(assert (=> d!406028 m!1604951))

(declare-fun m!1604953 () Bool)

(assert (=> d!406028 m!1604953))

(declare-fun m!1604955 () Bool)

(assert (=> d!406028 m!1604955))

(declare-fun m!1604957 () Bool)

(assert (=> d!406028 m!1604957))

(declare-fun m!1604959 () Bool)

(assert (=> bm!96536 m!1604959))

(declare-fun m!1604961 () Bool)

(assert (=> b!1418251 m!1604961))

(declare-fun m!1604963 () Bool)

(assert (=> b!1418251 m!1604963))

(assert (=> b!1418251 m!1604943))

(assert (=> b!1418251 m!1604961))

(assert (=> b!1418251 m!1604963))

(declare-fun m!1604965 () Bool)

(assert (=> b!1418251 m!1604965))

(declare-fun m!1604967 () Bool)

(assert (=> b!1418251 m!1604967))

(declare-fun m!1604969 () Bool)

(assert (=> b!1418240 m!1604969))

(declare-fun m!1604971 () Bool)

(assert (=> b!1418240 m!1604971))

(declare-fun m!1604973 () Bool)

(assert (=> b!1418240 m!1604973))

(declare-fun m!1604975 () Bool)

(assert (=> b!1418240 m!1604975))

(declare-fun m!1604977 () Bool)

(assert (=> b!1418240 m!1604977))

(assert (=> b!1418240 m!1604975))

(declare-fun m!1604979 () Bool)

(assert (=> b!1418240 m!1604979))

(declare-fun m!1604981 () Bool)

(assert (=> b!1418240 m!1604981))

(assert (=> b!1418240 m!1604973))

(declare-fun m!1604983 () Bool)

(assert (=> b!1418246 m!1604983))

(declare-fun m!1604985 () Bool)

(assert (=> bm!96553 m!1604985))

(declare-fun m!1604987 () Bool)

(assert (=> bm!96564 m!1604987))

(declare-fun m!1604989 () Bool)

(assert (=> bm!96558 m!1604989))

(declare-fun m!1604991 () Bool)

(assert (=> bm!96563 m!1604991))

(assert (=> b!1418242 m!1604943))

(declare-fun m!1604993 () Bool)

(assert (=> bm!96549 m!1604993))

(declare-fun m!1604995 () Bool)

(assert (=> b!1418241 m!1604995))

(declare-fun m!1604997 () Bool)

(assert (=> b!1418241 m!1604997))

(assert (=> b!1418241 m!1604995))

(declare-fun m!1604999 () Bool)

(assert (=> b!1418241 m!1604999))

(assert (=> b!1418241 m!1604999))

(declare-fun m!1605001 () Bool)

(assert (=> b!1418241 m!1605001))

(assert (=> b!1418241 m!1604995))

(declare-fun m!1605003 () Bool)

(assert (=> b!1418241 m!1605003))

(declare-fun m!1605005 () Bool)

(assert (=> b!1418241 m!1605005))

(declare-fun m!1605007 () Bool)

(assert (=> b!1418241 m!1605007))

(declare-fun m!1605009 () Bool)

(assert (=> b!1418241 m!1605009))

(declare-fun m!1605011 () Bool)

(assert (=> b!1418241 m!1605011))

(declare-fun m!1605013 () Bool)

(assert (=> b!1418237 m!1605013))

(declare-fun m!1605015 () Bool)

(assert (=> bm!96537 m!1605015))

(declare-fun m!1605017 () Bool)

(assert (=> bm!96545 m!1605017))

(declare-fun m!1605019 () Bool)

(assert (=> bm!96547 m!1605019))

(declare-fun m!1605021 () Bool)

(assert (=> bm!96571 m!1605021))

(declare-fun m!1605023 () Bool)

(assert (=> bm!96573 m!1605023))

(declare-fun m!1605025 () Bool)

(assert (=> bm!96550 m!1605025))

(declare-fun m!1605027 () Bool)

(assert (=> bm!96572 m!1605027))

(declare-fun m!1605029 () Bool)

(assert (=> bm!96546 m!1605029))

(declare-fun m!1605031 () Bool)

(assert (=> b!1418252 m!1605031))

(declare-fun m!1605033 () Bool)

(assert (=> bm!96554 m!1605033))

(assert (=> b!1418089 d!406028))

(declare-fun d!406030 () Bool)

(declare-fun lt!477860 () Bool)

(declare-fun forall!3622 (List!14620 Int) Bool)

(assert (=> d!406030 (= lt!477860 (forall!3622 (list!5735 objs!24) lambda!62611))))

(declare-fun forall!3623 (Conc!4881 Int) Bool)

(assert (=> d!406030 (= lt!477860 (forall!3623 (c!233030 objs!24) lambda!62611))))

(assert (=> d!406030 (= (forall!3619 objs!24 lambda!62611) lt!477860)))

(declare-fun bs!339548 () Bool)

(assert (= bs!339548 d!406030))

(assert (=> bs!339548 m!1604895))

(assert (=> bs!339548 m!1604895))

(declare-fun m!1605035 () Bool)

(assert (=> bs!339548 m!1605035))

(declare-fun m!1605037 () Bool)

(assert (=> bs!339548 m!1605037))

(assert (=> start!130352 d!406030))

(declare-fun d!406032 () Bool)

(assert (=> d!406032 (= (inv!19173 objs!24) (isBalanced!1452 (c!233030 objs!24)))))

(declare-fun bs!339549 () Bool)

(assert (= bs!339549 d!406032))

(declare-fun m!1605039 () Bool)

(assert (=> bs!339549 m!1605039))

(assert (=> start!130352 d!406032))

(declare-fun d!406034 () Bool)

(declare-fun res!642176 () Bool)

(declare-fun e!905395 () Bool)

(assert (=> d!406034 (=> (not res!642176) (not e!905395))))

(declare-fun isEmpty!8948 (List!14618) Bool)

(assert (=> d!406034 (= res!642176 (not (isEmpty!8948 (rules!11126 acc!229))))))

(assert (=> d!406034 (= (inv!19174 acc!229) e!905395)))

(declare-fun b!1418340 () Bool)

(declare-fun res!642177 () Bool)

(assert (=> b!1418340 (=> (not res!642177) (not e!905395))))

(declare-fun rulesInvariant!2079 (LexerInterface!2209 List!14618) Bool)

(assert (=> b!1418340 (= res!642177 (rulesInvariant!2079 Lexer!2207 (rules!11126 acc!229)))))

(declare-fun b!1418341 () Bool)

(declare-fun res!642178 () Bool)

(assert (=> b!1418341 (=> (not res!642178) (not e!905395))))

(declare-fun rulesProduceEachTokenIndividually!806 (LexerInterface!2209 List!14618 BalanceConc!9700) Bool)

(assert (=> b!1418341 (= res!642178 (rulesProduceEachTokenIndividually!806 Lexer!2207 (rules!11126 acc!229) (tokens!1830 acc!229)))))

(declare-fun b!1418342 () Bool)

(declare-fun separableTokens!191 (LexerInterface!2209 BalanceConc!9700 List!14618) Bool)

(assert (=> b!1418342 (= e!905395 (separableTokens!191 Lexer!2207 (tokens!1830 acc!229) (rules!11126 acc!229)))))

(assert (= (and d!406034 res!642176) b!1418340))

(assert (= (and b!1418340 res!642177) b!1418341))

(assert (= (and b!1418341 res!642178) b!1418342))

(declare-fun m!1605205 () Bool)

(assert (=> d!406034 m!1605205))

(declare-fun m!1605207 () Bool)

(assert (=> b!1418340 m!1605207))

(declare-fun m!1605209 () Bool)

(assert (=> b!1418341 m!1605209))

(declare-fun m!1605211 () Bool)

(assert (=> b!1418342 m!1605211))

(assert (=> start!130352 d!406034))

(declare-fun d!406048 () Bool)

(declare-fun res!642179 () Bool)

(declare-fun e!905396 () Bool)

(assert (=> d!406048 (=> (not res!642179) (not e!905396))))

(assert (=> d!406048 (= res!642179 (not (isEmpty!8948 (rules!11126 sep!3))))))

(assert (=> d!406048 (= (inv!19174 sep!3) e!905396)))

(declare-fun b!1418343 () Bool)

(declare-fun res!642180 () Bool)

(assert (=> b!1418343 (=> (not res!642180) (not e!905396))))

(assert (=> b!1418343 (= res!642180 (rulesInvariant!2079 Lexer!2207 (rules!11126 sep!3)))))

(declare-fun b!1418344 () Bool)

(declare-fun res!642181 () Bool)

(assert (=> b!1418344 (=> (not res!642181) (not e!905396))))

(assert (=> b!1418344 (= res!642181 (rulesProduceEachTokenIndividually!806 Lexer!2207 (rules!11126 sep!3) (tokens!1830 sep!3)))))

(declare-fun b!1418345 () Bool)

(assert (=> b!1418345 (= e!905396 (separableTokens!191 Lexer!2207 (tokens!1830 sep!3) (rules!11126 sep!3)))))

(assert (= (and d!406048 res!642179) b!1418343))

(assert (= (and b!1418343 res!642180) b!1418344))

(assert (= (and b!1418344 res!642181) b!1418345))

(declare-fun m!1605213 () Bool)

(assert (=> d!406048 m!1605213))

(declare-fun m!1605215 () Bool)

(assert (=> b!1418343 m!1605215))

(declare-fun m!1605217 () Bool)

(assert (=> b!1418344 m!1605217))

(declare-fun m!1605219 () Bool)

(assert (=> b!1418345 m!1605219))

(assert (=> start!130352 d!406048))

(declare-fun d!406050 () Bool)

(declare-fun lt!477928 () Int)

(assert (=> d!406050 (= lt!477928 (size!12007 (list!5735 objs!24)))))

(assert (=> d!406050 (= lt!477928 (size!12008 (c!233030 objs!24)))))

(assert (=> d!406050 (= (size!12004 objs!24) lt!477928)))

(declare-fun bs!339552 () Bool)

(assert (= bs!339552 d!406050))

(assert (=> bs!339552 m!1604895))

(assert (=> bs!339552 m!1604895))

(declare-fun m!1605221 () Bool)

(assert (=> bs!339552 m!1605221))

(declare-fun m!1605223 () Bool)

(assert (=> bs!339552 m!1605223))

(assert (=> b!1418090 d!406050))

(declare-fun d!406052 () Bool)

(declare-fun c!233108 () Bool)

(assert (=> d!406052 (= c!233108 ((_ is Node!4880) (c!233029 (tokens!1830 acc!229))))))

(declare-fun e!905397 () Bool)

(assert (=> d!406052 (= (inv!19170 (c!233029 (tokens!1830 acc!229))) e!905397)))

(declare-fun b!1418346 () Bool)

(assert (=> b!1418346 (= e!905397 (inv!19177 (c!233029 (tokens!1830 acc!229))))))

(declare-fun b!1418347 () Bool)

(declare-fun e!905398 () Bool)

(assert (=> b!1418347 (= e!905397 e!905398)))

(declare-fun res!642182 () Bool)

(assert (=> b!1418347 (= res!642182 (not ((_ is Leaf!7344) (c!233029 (tokens!1830 acc!229)))))))

(assert (=> b!1418347 (=> res!642182 e!905398)))

(declare-fun b!1418348 () Bool)

(assert (=> b!1418348 (= e!905398 (inv!19178 (c!233029 (tokens!1830 acc!229))))))

(assert (= (and d!406052 c!233108) b!1418346))

(assert (= (and d!406052 (not c!233108)) b!1418347))

(assert (= (and b!1418347 (not res!642182)) b!1418348))

(declare-fun m!1605225 () Bool)

(assert (=> b!1418346 m!1605225))

(declare-fun m!1605227 () Bool)

(assert (=> b!1418348 m!1605227))

(assert (=> b!1418088 d!406052))

(declare-fun b!1418359 () Bool)

(declare-fun b_free!34959 () Bool)

(declare-fun b_next!35663 () Bool)

(assert (=> b!1418359 (= b_free!34959 (not b_next!35663))))

(declare-fun tp!402322 () Bool)

(declare-fun b_and!94959 () Bool)

(assert (=> b!1418359 (= tp!402322 b_and!94959)))

(declare-fun b_free!34961 () Bool)

(declare-fun b_next!35665 () Bool)

(assert (=> b!1418359 (= b_free!34961 (not b_next!35665))))

(declare-fun tp!402320 () Bool)

(declare-fun b_and!94961 () Bool)

(assert (=> b!1418359 (= tp!402320 b_and!94961)))

(declare-fun e!905409 () Bool)

(assert (=> b!1418359 (= e!905409 (and tp!402322 tp!402320))))

(declare-fun b!1418358 () Bool)

(declare-fun e!905407 () Bool)

(declare-fun inv!19164 (String!17361) Bool)

(declare-fun inv!19186 (TokenValueInjection!4910) Bool)

(assert (=> b!1418358 (= e!905407 (and (inv!19164 (tag!2797 (h!19953 (rules!11126 acc!229)))) (inv!19186 (transformation!2535 (h!19953 (rules!11126 acc!229)))) e!905409))))

(declare-fun b!1418357 () Bool)

(declare-fun e!905408 () Bool)

(declare-fun tp!402321 () Bool)

(assert (=> b!1418357 (= e!905408 (and e!905407 tp!402321))))

(assert (=> b!1418092 (= tp!402279 e!905408)))

(assert (= b!1418358 b!1418359))

(assert (= b!1418357 b!1418358))

(assert (= (and b!1418092 ((_ is Cons!14552) (rules!11126 acc!229))) b!1418357))

(declare-fun m!1605229 () Bool)

(assert (=> b!1418358 m!1605229))

(declare-fun m!1605231 () Bool)

(assert (=> b!1418358 m!1605231))

(declare-fun tp!402331 () Bool)

(declare-fun b!1418368 () Bool)

(declare-fun e!905415 () Bool)

(declare-fun tp!402330 () Bool)

(assert (=> b!1418368 (= e!905415 (and (inv!19170 (left!12441 (c!233029 (tokens!1830 sep!3)))) tp!402331 (inv!19170 (right!12771 (c!233029 (tokens!1830 sep!3)))) tp!402330))))

(declare-fun b!1418370 () Bool)

(declare-fun e!905416 () Bool)

(declare-fun tp!402329 () Bool)

(assert (=> b!1418370 (= e!905416 tp!402329)))

(declare-fun b!1418369 () Bool)

(declare-fun inv!19187 (IArray!9765) Bool)

(assert (=> b!1418369 (= e!905415 (and (inv!19187 (xs!7607 (c!233029 (tokens!1830 sep!3)))) e!905416))))

(assert (=> b!1418082 (= tp!402280 (and (inv!19170 (c!233029 (tokens!1830 sep!3))) e!905415))))

(assert (= (and b!1418082 ((_ is Node!4880) (c!233029 (tokens!1830 sep!3)))) b!1418368))

(assert (= b!1418369 b!1418370))

(assert (= (and b!1418082 ((_ is Leaf!7344) (c!233029 (tokens!1830 sep!3)))) b!1418369))

(declare-fun m!1605233 () Bool)

(assert (=> b!1418368 m!1605233))

(declare-fun m!1605235 () Bool)

(assert (=> b!1418368 m!1605235))

(declare-fun m!1605237 () Bool)

(assert (=> b!1418369 m!1605237))

(assert (=> b!1418082 m!1604595))

(declare-fun b!1418373 () Bool)

(declare-fun b_free!34963 () Bool)

(declare-fun b_next!35667 () Bool)

(assert (=> b!1418373 (= b_free!34963 (not b_next!35667))))

(declare-fun tp!402334 () Bool)

(declare-fun b_and!94963 () Bool)

(assert (=> b!1418373 (= tp!402334 b_and!94963)))

(declare-fun b_free!34965 () Bool)

(declare-fun b_next!35669 () Bool)

(assert (=> b!1418373 (= b_free!34965 (not b_next!35669))))

(declare-fun tp!402332 () Bool)

(declare-fun b_and!94965 () Bool)

(assert (=> b!1418373 (= tp!402332 b_and!94965)))

(declare-fun e!905419 () Bool)

(assert (=> b!1418373 (= e!905419 (and tp!402334 tp!402332))))

(declare-fun b!1418372 () Bool)

(declare-fun e!905417 () Bool)

(assert (=> b!1418372 (= e!905417 (and (inv!19164 (tag!2797 (h!19953 (rules!11126 sep!3)))) (inv!19186 (transformation!2535 (h!19953 (rules!11126 sep!3)))) e!905419))))

(declare-fun b!1418371 () Bool)

(declare-fun e!905418 () Bool)

(declare-fun tp!402333 () Bool)

(assert (=> b!1418371 (= e!905418 (and e!905417 tp!402333))))

(assert (=> b!1418085 (= tp!402277 e!905418)))

(assert (= b!1418372 b!1418373))

(assert (= b!1418371 b!1418372))

(assert (= (and b!1418085 ((_ is Cons!14552) (rules!11126 sep!3))) b!1418371))

(declare-fun m!1605239 () Bool)

(assert (=> b!1418372 m!1605239))

(declare-fun m!1605241 () Bool)

(assert (=> b!1418372 m!1605241))

(declare-fun tp!402342 () Bool)

(declare-fun e!905426 () Bool)

(declare-fun tp!402343 () Bool)

(declare-fun b!1418382 () Bool)

(assert (=> b!1418382 (= e!905426 (and (inv!19171 (left!12442 (c!233030 objs!24))) tp!402342 (inv!19171 (right!12772 (c!233030 objs!24))) tp!402343))))

(declare-fun b!1418384 () Bool)

(declare-fun e!905425 () Bool)

(declare-fun tp!402341 () Bool)

(assert (=> b!1418384 (= e!905425 tp!402341)))

(declare-fun b!1418383 () Bool)

(declare-fun inv!19188 (IArray!9767) Bool)

(assert (=> b!1418383 (= e!905426 (and (inv!19188 (xs!7608 (c!233030 objs!24))) e!905425))))

(assert (=> b!1418084 (= tp!402278 (and (inv!19171 (c!233030 objs!24)) e!905426))))

(assert (= (and b!1418084 ((_ is Node!4881) (c!233030 objs!24))) b!1418382))

(assert (= b!1418383 b!1418384))

(assert (= (and b!1418084 ((_ is Leaf!7345) (c!233030 objs!24))) b!1418383))

(declare-fun m!1605243 () Bool)

(assert (=> b!1418382 m!1605243))

(declare-fun m!1605245 () Bool)

(assert (=> b!1418382 m!1605245))

(declare-fun m!1605247 () Bool)

(assert (=> b!1418383 m!1605247))

(assert (=> b!1418084 m!1604599))

(declare-fun e!905427 () Bool)

(declare-fun b!1418385 () Bool)

(declare-fun tp!402346 () Bool)

(declare-fun tp!402345 () Bool)

(assert (=> b!1418385 (= e!905427 (and (inv!19170 (left!12441 (c!233029 (tokens!1830 acc!229)))) tp!402346 (inv!19170 (right!12771 (c!233029 (tokens!1830 acc!229)))) tp!402345))))

(declare-fun b!1418387 () Bool)

(declare-fun e!905428 () Bool)

(declare-fun tp!402344 () Bool)

(assert (=> b!1418387 (= e!905428 tp!402344)))

(declare-fun b!1418386 () Bool)

(assert (=> b!1418386 (= e!905427 (and (inv!19187 (xs!7607 (c!233029 (tokens!1830 acc!229)))) e!905428))))

(assert (=> b!1418088 (= tp!402276 (and (inv!19170 (c!233029 (tokens!1830 acc!229))) e!905427))))

(assert (= (and b!1418088 ((_ is Node!4880) (c!233029 (tokens!1830 acc!229)))) b!1418385))

(assert (= b!1418386 b!1418387))

(assert (= (and b!1418088 ((_ is Leaf!7344) (c!233029 (tokens!1830 acc!229)))) b!1418386))

(declare-fun m!1605249 () Bool)

(assert (=> b!1418385 m!1605249))

(declare-fun m!1605251 () Bool)

(assert (=> b!1418385 m!1605251))

(declare-fun m!1605253 () Bool)

(assert (=> b!1418386 m!1605253))

(assert (=> b!1418088 m!1604587))

(check-sat (not b!1418218) (not d!406018) (not bm!96570) (not bm!96500) (not b!1418346) (not d!406030) (not bm!96514) (not d!406034) (not b!1418084) b_and!94963 (not bm!96515) (not b!1418234) (not bm!96511) (not d!406016) (not d!405984) (not b!1418341) (not bm!96545) (not d!406048) (not d!406024) (not bm!96508) (not b!1418342) (not b!1418239) (not b!1418241) (not d!406026) (not b!1418246) (not d!406050) (not bm!96531) (not b!1418088) (not bm!96498) (not b!1418372) (not bm!96546) (not bm!96532) (not bm!96520) (not bm!96507) (not bm!96496) (not bm!96550) (not bm!96535) (not bm!96554) (not d!406022) (not b!1418370) (not b!1418230) (not b!1418220) (not bm!96524) (not d!406028) (not b_next!35665) (not b!1418369) (not b!1418237) (not b!1418385) (not b!1418109) (not bm!96542) (not bm!96553) (not b!1418082) (not b_next!35669) (not b!1418344) (not b!1418368) b_and!94961 (not bm!96530) (not bm!96534) (not bm!96569) (not bm!96539) (not bm!96506) (not b_next!35663) (not bm!96558) (not b!1418384) (not bm!96572) (not d!406032) (not bm!96571) (not b!1418345) (not b!1418219) b_and!94959 (not b!1418229) b_and!94965 (not b!1418357) (not bm!96559) (not b_next!35667) (not b!1418383) (not b!1418102) (not bm!96497) (not bm!96533) (not bm!96573) (not b!1418217) (not b!1418242) (not b!1418224) (not d!405988) (not b!1418252) (not bm!96549) (not bm!96519) (not bm!96525) (not bm!96563) (not d!406020) (not b!1418111) (not b!1418251) (not bm!96503) (not bm!96518) (not b!1418343) (not b!1418340) (not d!405992) (not b!1418240) (not b!1418100) (not bm!96537) (not b!1418386) (not b!1418382) (not bm!96557) (not b!1418358) (not b!1418371) (not b!1418387) (not bm!96547) (not bm!96510) (not b!1418215) (not bm!96536) (not b!1418348) (not bm!96564))
(check-sat b_and!94963 (not b_next!35665) (not b_next!35663) b_and!94959 (not b_next!35669) b_and!94961 b_and!94965 (not b_next!35667))
(get-model)

(declare-fun lt!477951 () List!14619)

(declare-fun b!1418483 () Bool)

(declare-fun e!905472 () Bool)

(assert (=> b!1418483 (= e!905472 (or (not (= lt!477781 Nil!14553)) (= lt!477951 lt!477775)))))

(declare-fun b!1418482 () Bool)

(declare-fun res!642246 () Bool)

(assert (=> b!1418482 (=> (not res!642246) (not e!905472))))

(declare-fun size!12012 (List!14619) Int)

(assert (=> b!1418482 (= res!642246 (= (size!12012 lt!477951) (+ (size!12012 lt!477775) (size!12012 lt!477781))))))

(declare-fun b!1418480 () Bool)

(declare-fun e!905471 () List!14619)

(assert (=> b!1418480 (= e!905471 lt!477781)))

(declare-fun d!406112 () Bool)

(assert (=> d!406112 e!905472))

(declare-fun res!642247 () Bool)

(assert (=> d!406112 (=> (not res!642247) (not e!905472))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2150 (List!14619) (InoxSet Token!4732))

(assert (=> d!406112 (= res!642247 (= (content!2150 lt!477951) ((_ map or) (content!2150 lt!477775) (content!2150 lt!477781))))))

(assert (=> d!406112 (= lt!477951 e!905471)))

(declare-fun c!233126 () Bool)

(assert (=> d!406112 (= c!233126 ((_ is Nil!14553) lt!477775))))

(assert (=> d!406112 (= (++!3813 lt!477775 lt!477781) lt!477951)))

(declare-fun b!1418481 () Bool)

(assert (=> b!1418481 (= e!905471 (Cons!14553 (h!19954 lt!477775) (++!3813 (t!124254 lt!477775) lt!477781)))))

(assert (= (and d!406112 c!233126) b!1418480))

(assert (= (and d!406112 (not c!233126)) b!1418481))

(assert (= (and d!406112 res!642247) b!1418482))

(assert (= (and b!1418482 res!642246) b!1418483))

(declare-fun m!1605413 () Bool)

(assert (=> b!1418482 m!1605413))

(declare-fun m!1605415 () Bool)

(assert (=> b!1418482 m!1605415))

(declare-fun m!1605417 () Bool)

(assert (=> b!1418482 m!1605417))

(declare-fun m!1605419 () Bool)

(assert (=> d!406112 m!1605419))

(declare-fun m!1605421 () Bool)

(assert (=> d!406112 m!1605421))

(declare-fun m!1605423 () Bool)

(assert (=> d!406112 m!1605423))

(declare-fun m!1605425 () Bool)

(assert (=> b!1418481 m!1605425))

(assert (=> b!1418215 d!406112))

(declare-fun d!406114 () Bool)

(declare-fun c!233127 () Bool)

(assert (=> d!406114 (= c!233127 ((_ is Node!4880) (left!12441 (c!233029 (tokens!1830 sep!3)))))))

(declare-fun e!905473 () Bool)

(assert (=> d!406114 (= (inv!19170 (left!12441 (c!233029 (tokens!1830 sep!3)))) e!905473)))

(declare-fun b!1418484 () Bool)

(assert (=> b!1418484 (= e!905473 (inv!19177 (left!12441 (c!233029 (tokens!1830 sep!3)))))))

(declare-fun b!1418485 () Bool)

(declare-fun e!905474 () Bool)

(assert (=> b!1418485 (= e!905473 e!905474)))

(declare-fun res!642248 () Bool)

(assert (=> b!1418485 (= res!642248 (not ((_ is Leaf!7344) (left!12441 (c!233029 (tokens!1830 sep!3))))))))

(assert (=> b!1418485 (=> res!642248 e!905474)))

(declare-fun b!1418486 () Bool)

(assert (=> b!1418486 (= e!905474 (inv!19178 (left!12441 (c!233029 (tokens!1830 sep!3)))))))

(assert (= (and d!406114 c!233127) b!1418484))

(assert (= (and d!406114 (not c!233127)) b!1418485))

(assert (= (and b!1418485 (not res!642248)) b!1418486))

(declare-fun m!1605427 () Bool)

(assert (=> b!1418484 m!1605427))

(declare-fun m!1605429 () Bool)

(assert (=> b!1418486 m!1605429))

(assert (=> b!1418368 d!406114))

(declare-fun d!406116 () Bool)

(declare-fun c!233128 () Bool)

(assert (=> d!406116 (= c!233128 ((_ is Node!4880) (right!12771 (c!233029 (tokens!1830 sep!3)))))))

(declare-fun e!905475 () Bool)

(assert (=> d!406116 (= (inv!19170 (right!12771 (c!233029 (tokens!1830 sep!3)))) e!905475)))

(declare-fun b!1418487 () Bool)

(assert (=> b!1418487 (= e!905475 (inv!19177 (right!12771 (c!233029 (tokens!1830 sep!3)))))))

(declare-fun b!1418488 () Bool)

(declare-fun e!905476 () Bool)

(assert (=> b!1418488 (= e!905475 e!905476)))

(declare-fun res!642249 () Bool)

(assert (=> b!1418488 (= res!642249 (not ((_ is Leaf!7344) (right!12771 (c!233029 (tokens!1830 sep!3))))))))

(assert (=> b!1418488 (=> res!642249 e!905476)))

(declare-fun b!1418489 () Bool)

(assert (=> b!1418489 (= e!905476 (inv!19178 (right!12771 (c!233029 (tokens!1830 sep!3)))))))

(assert (= (and d!406116 c!233128) b!1418487))

(assert (= (and d!406116 (not c!233128)) b!1418488))

(assert (= (and b!1418488 (not res!642249)) b!1418489))

(declare-fun m!1605431 () Bool)

(assert (=> b!1418487 m!1605431))

(declare-fun m!1605433 () Bool)

(assert (=> b!1418489 m!1605433))

(assert (=> b!1418368 d!406116))

(declare-fun d!406118 () Bool)

(declare-fun e!905497 () Bool)

(assert (=> d!406118 e!905497))

(declare-fun res!642273 () Bool)

(assert (=> d!406118 (=> (not res!642273) (not e!905497))))

(declare-datatypes ((tuple2!14004 0))(
  ( (tuple2!14005 (_1!7888 BalanceConc!9700) (_2!7888 BalanceConc!9698)) )
))
(declare-fun lex!1013 (LexerInterface!2209 List!14618 BalanceConc!9698) tuple2!14004)

(declare-fun seqFromList!1675 (List!14619) BalanceConc!9700)

(assert (=> d!406118 (= res!642273 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 sep!3) (print!982 Lexer!2207 (seqFromList!1675 (ite c!233087 call!96515 call!96513)))))) (ite c!233087 call!96515 call!96513)))))

(declare-fun lt!478099 () Unit!21489)

(declare-fun e!905496 () Unit!21489)

(assert (=> d!406118 (= lt!478099 e!905496)))

(declare-fun c!233139 () Bool)

(assert (=> d!406118 (= c!233139 (or ((_ is Nil!14553) (ite c!233087 call!96515 call!96513)) ((_ is Nil!14553) (t!124254 (ite c!233087 call!96515 call!96513)))))))

(assert (=> d!406118 (not (isEmpty!8948 (rules!11126 sep!3)))))

(assert (=> d!406118 (= (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 sep!3) (ite c!233087 call!96515 call!96513)) lt!478099)))

(declare-fun b!1418527 () Bool)

(declare-fun Unit!21546 () Unit!21489)

(assert (=> b!1418527 (= e!905496 Unit!21546)))

(declare-fun b!1418528 () Bool)

(declare-fun Unit!21547 () Unit!21489)

(assert (=> b!1418528 (= e!905496 Unit!21547)))

(declare-fun lt!478092 () BalanceConc!9698)

(assert (=> b!1418528 (= lt!478092 (print!982 Lexer!2207 (seqFromList!1675 (ite c!233087 call!96515 call!96513))))))

(declare-fun lt!478086 () BalanceConc!9698)

(assert (=> b!1418528 (= lt!478086 (print!982 Lexer!2207 (seqFromList!1675 (t!124254 (ite c!233087 call!96515 call!96513)))))))

(declare-fun lt!478097 () tuple2!14004)

(assert (=> b!1418528 (= lt!478097 (lex!1013 Lexer!2207 (rules!11126 sep!3) lt!478086))))

(declare-fun lt!478100 () List!14617)

(assert (=> b!1418528 (= lt!478100 (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96515 call!96513)))))))

(declare-fun lt!478093 () List!14617)

(assert (=> b!1418528 (= lt!478093 (list!5733 lt!478086))))

(declare-fun lt!478088 () Unit!21489)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!739 (List!14617 List!14617) Unit!21489)

(assert (=> b!1418528 (= lt!478088 (lemmaConcatTwoListThenFirstIsPrefix!739 lt!478100 lt!478093))))

(declare-fun isPrefix!1172 (List!14617 List!14617) Bool)

(assert (=> b!1418528 (isPrefix!1172 lt!478100 (++!3814 lt!478100 lt!478093))))

(declare-fun lt!478104 () Unit!21489)

(assert (=> b!1418528 (= lt!478104 lt!478088)))

(declare-fun lt!478109 () Unit!21489)

(assert (=> b!1418528 (= lt!478109 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 sep!3) (t!124254 (ite c!233087 call!96515 call!96513))))))

(declare-fun lt!478107 () Unit!21489)

(declare-fun seqFromListBHdTlConstructive!68 (Token!4732 List!14619 BalanceConc!9700) Unit!21489)

(assert (=> b!1418528 (= lt!478107 (seqFromListBHdTlConstructive!68 (h!19954 (t!124254 (ite c!233087 call!96515 call!96513))) (t!124254 (t!124254 (ite c!233087 call!96515 call!96513))) (_1!7888 lt!478097)))))

(declare-fun prepend!384 (BalanceConc!9700 Token!4732) BalanceConc!9700)

(assert (=> b!1418528 (= (list!5734 (_1!7888 lt!478097)) (list!5734 (prepend!384 (seqFromList!1675 (t!124254 (t!124254 (ite c!233087 call!96515 call!96513)))) (h!19954 (t!124254 (ite c!233087 call!96515 call!96513))))))))

(declare-fun lt!478096 () Unit!21489)

(assert (=> b!1418528 (= lt!478096 lt!478107)))

(declare-datatypes ((tuple2!14006 0))(
  ( (tuple2!14007 (_1!7889 Token!4732) (_2!7889 List!14617)) )
))
(declare-datatypes ((Option!2798 0))(
  ( (None!2797) (Some!2797 (v!22161 tuple2!14006)) )
))
(declare-fun lt!478108 () Option!2798)

(declare-fun maxPrefix!1162 (LexerInterface!2209 List!14618 List!14617) Option!2798)

(assert (=> b!1418528 (= lt!478108 (maxPrefix!1162 Lexer!2207 (rules!11126 sep!3) (list!5733 lt!478092)))))

(declare-fun singletonSeq!1169 (Token!4732) BalanceConc!9700)

(assert (=> b!1418528 (= (print!982 Lexer!2207 (singletonSeq!1169 (h!19954 (ite c!233087 call!96515 call!96513)))) (printTailRec!645 Lexer!2207 (singletonSeq!1169 (h!19954 (ite c!233087 call!96515 call!96513))) 0 (BalanceConc!9699 Empty!4879)))))

(declare-fun lt!478094 () Unit!21489)

(declare-fun Unit!21554 () Unit!21489)

(assert (=> b!1418528 (= lt!478094 Unit!21554)))

(declare-fun lt!478090 () Unit!21489)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!212 (LexerInterface!2209 List!14618 List!14617 List!14617) Unit!21489)

(assert (=> b!1418528 (= lt!478090 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!212 Lexer!2207 (rules!11126 sep!3) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96515 call!96513)))) (list!5733 lt!478086)))))

(assert (=> b!1418528 (= (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96515 call!96513)))) (originalCharacters!3397 (h!19954 (ite c!233087 call!96515 call!96513))))))

(declare-fun lt!478111 () Unit!21489)

(declare-fun Unit!21557 () Unit!21489)

(assert (=> b!1418528 (= lt!478111 Unit!21557)))

(declare-fun singletonSeq!1170 ((_ BitVec 16)) BalanceConc!9698)

(declare-fun apply!3718 (BalanceConc!9698 Int) (_ BitVec 16))

(declare-fun head!2764 (List!14617) (_ BitVec 16))

(assert (=> b!1418528 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233087 call!96515 call!96513)))) 0))) (Cons!14551 (head!2764 (originalCharacters!3397 (h!19954 (t!124254 (ite c!233087 call!96515 call!96513))))) Nil!14551))))

(declare-fun lt!478095 () Unit!21489)

(declare-fun Unit!21560 () Unit!21489)

(assert (=> b!1418528 (= lt!478095 Unit!21560)))

(assert (=> b!1418528 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233087 call!96515 call!96513)))) 0))) (Cons!14551 (head!2764 (list!5733 lt!478086)) Nil!14551))))

(declare-fun lt!478089 () Unit!21489)

(declare-fun Unit!21562 () Unit!21489)

(assert (=> b!1418528 (= lt!478089 Unit!21562)))

(declare-fun head!2765 (BalanceConc!9698) (_ BitVec 16))

(assert (=> b!1418528 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233087 call!96515 call!96513)))) 0))) (Cons!14551 (head!2765 lt!478086) Nil!14551))))

(declare-fun lt!478087 () Unit!21489)

(declare-fun Unit!21564 () Unit!21489)

(assert (=> b!1418528 (= lt!478087 Unit!21564)))

(declare-fun isDefined!2265 (Option!2798) Bool)

(assert (=> b!1418528 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 sep!3) (originalCharacters!3397 (h!19954 (ite c!233087 call!96515 call!96513)))))))

(declare-fun lt!478101 () Unit!21489)

(declare-fun Unit!21565 () Unit!21489)

(assert (=> b!1418528 (= lt!478101 Unit!21565)))

(assert (=> b!1418528 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 sep!3) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96515 call!96513))))))))

(declare-fun lt!478102 () Unit!21489)

(declare-fun Unit!21566 () Unit!21489)

(assert (=> b!1418528 (= lt!478102 Unit!21566)))

(declare-fun lt!478110 () Unit!21489)

(declare-fun Unit!21567 () Unit!21489)

(assert (=> b!1418528 (= lt!478110 Unit!21567)))

(declare-fun get!4475 (Option!2798) tuple2!14006)

(assert (=> b!1418528 (= (_1!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 sep!3) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96515 call!96513))))))) (h!19954 (ite c!233087 call!96515 call!96513)))))

(declare-fun lt!478091 () Unit!21489)

(declare-fun Unit!21568 () Unit!21489)

(assert (=> b!1418528 (= lt!478091 Unit!21568)))

(declare-fun isEmpty!8952 (List!14617) Bool)

(assert (=> b!1418528 (isEmpty!8952 (_2!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 sep!3) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96515 call!96513))))))))))

(declare-fun lt!478103 () Unit!21489)

(declare-fun Unit!21569 () Unit!21489)

(assert (=> b!1418528 (= lt!478103 Unit!21569)))

(declare-fun matchR!1798 (Regex!3849 List!14617) Bool)

(assert (=> b!1418528 (matchR!1798 (regex!2535 (rule!4298 (h!19954 (ite c!233087 call!96515 call!96513)))) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96515 call!96513)))))))

(declare-fun lt!478105 () Unit!21489)

(declare-fun Unit!21570 () Unit!21489)

(assert (=> b!1418528 (= lt!478105 Unit!21570)))

(assert (=> b!1418528 (= (rule!4298 (h!19954 (ite c!233087 call!96515 call!96513))) (rule!4298 (h!19954 (ite c!233087 call!96515 call!96513))))))

(declare-fun lt!478106 () Unit!21489)

(declare-fun Unit!21571 () Unit!21489)

(assert (=> b!1418528 (= lt!478106 Unit!21571)))

(declare-fun lt!478098 () Unit!21489)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!10 (LexerInterface!2209 List!14618 Token!4732 Rule!4870 List!14617) Unit!21489)

(assert (=> b!1418528 (= lt!478098 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!10 Lexer!2207 (rules!11126 sep!3) (h!19954 (ite c!233087 call!96515 call!96513)) (rule!4298 (h!19954 (ite c!233087 call!96515 call!96513))) (list!5733 lt!478086)))))

(declare-fun b!1418529 () Bool)

(declare-fun isEmpty!8953 (BalanceConc!9698) Bool)

(assert (=> b!1418529 (= e!905497 (isEmpty!8953 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 sep!3) (print!982 Lexer!2207 (seqFromList!1675 (ite c!233087 call!96515 call!96513)))))))))

(assert (= (and d!406118 c!233139) b!1418527))

(assert (= (and d!406118 (not c!233139)) b!1418528))

(assert (= (and d!406118 res!642273) b!1418529))

(declare-fun m!1605573 () Bool)

(assert (=> d!406118 m!1605573))

(declare-fun m!1605575 () Bool)

(assert (=> d!406118 m!1605575))

(assert (=> d!406118 m!1605573))

(declare-fun m!1605577 () Bool)

(assert (=> d!406118 m!1605577))

(assert (=> d!406118 m!1605577))

(declare-fun m!1605579 () Bool)

(assert (=> d!406118 m!1605579))

(assert (=> d!406118 m!1605213))

(declare-fun m!1605581 () Bool)

(assert (=> b!1418528 m!1605581))

(declare-fun m!1605583 () Bool)

(assert (=> b!1418528 m!1605583))

(declare-fun m!1605585 () Bool)

(assert (=> b!1418528 m!1605585))

(declare-fun m!1605587 () Bool)

(assert (=> b!1418528 m!1605587))

(declare-fun m!1605589 () Bool)

(assert (=> b!1418528 m!1605589))

(assert (=> b!1418528 m!1605585))

(declare-fun m!1605591 () Bool)

(assert (=> b!1418528 m!1605591))

(declare-fun m!1605593 () Bool)

(assert (=> b!1418528 m!1605593))

(declare-fun m!1605595 () Bool)

(assert (=> b!1418528 m!1605595))

(assert (=> b!1418528 m!1605581))

(declare-fun m!1605597 () Bool)

(assert (=> b!1418528 m!1605597))

(declare-fun m!1605599 () Bool)

(assert (=> b!1418528 m!1605599))

(declare-fun m!1605601 () Bool)

(assert (=> b!1418528 m!1605601))

(declare-fun m!1605603 () Bool)

(assert (=> b!1418528 m!1605603))

(declare-fun m!1605605 () Bool)

(assert (=> b!1418528 m!1605605))

(assert (=> b!1418528 m!1605595))

(declare-fun m!1605607 () Bool)

(assert (=> b!1418528 m!1605607))

(declare-fun m!1605609 () Bool)

(assert (=> b!1418528 m!1605609))

(declare-fun m!1605611 () Bool)

(assert (=> b!1418528 m!1605611))

(assert (=> b!1418528 m!1605609))

(declare-fun m!1605613 () Bool)

(assert (=> b!1418528 m!1605613))

(declare-fun m!1605615 () Bool)

(assert (=> b!1418528 m!1605615))

(assert (=> b!1418528 m!1605601))

(declare-fun m!1605617 () Bool)

(assert (=> b!1418528 m!1605617))

(assert (=> b!1418528 m!1605597))

(declare-fun m!1605619 () Bool)

(assert (=> b!1418528 m!1605619))

(assert (=> b!1418528 m!1605601))

(declare-fun m!1605621 () Bool)

(assert (=> b!1418528 m!1605621))

(declare-fun m!1605623 () Bool)

(assert (=> b!1418528 m!1605623))

(assert (=> b!1418528 m!1605573))

(assert (=> b!1418528 m!1605593))

(declare-fun m!1605625 () Bool)

(assert (=> b!1418528 m!1605625))

(assert (=> b!1418528 m!1605573))

(assert (=> b!1418528 m!1605577))

(declare-fun m!1605627 () Bool)

(assert (=> b!1418528 m!1605627))

(assert (=> b!1418528 m!1605589))

(declare-fun m!1605629 () Bool)

(assert (=> b!1418528 m!1605629))

(assert (=> b!1418528 m!1605599))

(assert (=> b!1418528 m!1605585))

(assert (=> b!1418528 m!1605619))

(declare-fun m!1605631 () Bool)

(assert (=> b!1418528 m!1605631))

(assert (=> b!1418528 m!1605605))

(assert (=> b!1418528 m!1605627))

(declare-fun m!1605633 () Bool)

(assert (=> b!1418528 m!1605633))

(declare-fun m!1605635 () Bool)

(assert (=> b!1418528 m!1605635))

(declare-fun m!1605637 () Bool)

(assert (=> b!1418528 m!1605637))

(declare-fun m!1605639 () Bool)

(assert (=> b!1418528 m!1605639))

(assert (=> b!1418528 m!1605627))

(declare-fun m!1605641 () Bool)

(assert (=> b!1418528 m!1605641))

(declare-fun m!1605643 () Bool)

(assert (=> b!1418528 m!1605643))

(assert (=> b!1418528 m!1605599))

(declare-fun m!1605645 () Bool)

(assert (=> b!1418528 m!1605645))

(assert (=> b!1418528 m!1605601))

(declare-fun m!1605647 () Bool)

(assert (=> b!1418528 m!1605647))

(assert (=> b!1418528 m!1605613))

(assert (=> b!1418528 m!1605599))

(declare-fun m!1605649 () Bool)

(assert (=> b!1418528 m!1605649))

(assert (=> b!1418528 m!1605635))

(declare-fun m!1605651 () Bool)

(assert (=> b!1418528 m!1605651))

(assert (=> b!1418529 m!1605573))

(assert (=> b!1418529 m!1605573))

(assert (=> b!1418529 m!1605577))

(assert (=> b!1418529 m!1605577))

(assert (=> b!1418529 m!1605579))

(declare-fun m!1605653 () Bool)

(assert (=> b!1418529 m!1605653))

(assert (=> bm!96515 d!406118))

(assert (=> b!1418084 d!405990))

(declare-fun d!406138 () Bool)

(declare-fun c!233142 () Bool)

(assert (=> d!406138 (= c!233142 ((_ is Cons!14553) (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477828))))))

(declare-fun e!905500 () List!14617)

(assert (=> d!406138 (= (printList!663 (ite c!233096 lt!477848 (ite c!233092 lt!477805 lt!477811)) (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477828))) e!905500)))

(declare-fun b!1418534 () Bool)

(assert (=> b!1418534 (= e!905500 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477828))))) (printList!663 (ite c!233096 lt!477848 (ite c!233092 lt!477805 lt!477811)) (t!124254 (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477828))))))))

(declare-fun b!1418535 () Bool)

(assert (=> b!1418535 (= e!905500 Nil!14551)))

(assert (= (and d!406138 c!233142) b!1418534))

(assert (= (and d!406138 (not c!233142)) b!1418535))

(declare-fun m!1605655 () Bool)

(assert (=> b!1418534 m!1605655))

(assert (=> b!1418534 m!1605655))

(declare-fun m!1605657 () Bool)

(assert (=> b!1418534 m!1605657))

(declare-fun m!1605659 () Bool)

(assert (=> b!1418534 m!1605659))

(assert (=> b!1418534 m!1605657))

(assert (=> b!1418534 m!1605659))

(declare-fun m!1605661 () Bool)

(assert (=> b!1418534 m!1605661))

(assert (=> bm!96549 d!406138))

(declare-fun d!406140 () Bool)

(declare-fun c!233143 () Bool)

(assert (=> d!406140 (= c!233143 ((_ is Cons!14553) (ite c!233087 call!96515 (ite c!233083 Nil!14553 lt!477740))))))

(declare-fun e!905501 () List!14617)

(assert (=> d!406140 (= (printList!663 (ite (or c!233087 c!233083) Lexer!2207 lt!477735) (ite c!233087 call!96515 (ite c!233083 Nil!14553 lt!477740))) e!905501)))

(declare-fun b!1418536 () Bool)

(assert (=> b!1418536 (= e!905501 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96515 (ite c!233083 Nil!14553 lt!477740))))) (printList!663 (ite (or c!233087 c!233083) Lexer!2207 lt!477735) (t!124254 (ite c!233087 call!96515 (ite c!233083 Nil!14553 lt!477740))))))))

(declare-fun b!1418537 () Bool)

(assert (=> b!1418537 (= e!905501 Nil!14551)))

(assert (= (and d!406140 c!233143) b!1418536))

(assert (= (and d!406140 (not c!233143)) b!1418537))

(declare-fun m!1605663 () Bool)

(assert (=> b!1418536 m!1605663))

(assert (=> b!1418536 m!1605663))

(declare-fun m!1605665 () Bool)

(assert (=> b!1418536 m!1605665))

(declare-fun m!1605667 () Bool)

(assert (=> b!1418536 m!1605667))

(assert (=> b!1418536 m!1605665))

(assert (=> b!1418536 m!1605667))

(declare-fun m!1605669 () Bool)

(assert (=> b!1418536 m!1605669))

(assert (=> bm!96532 d!406140))

(declare-fun d!406142 () Bool)

(declare-fun res!642290 () Bool)

(declare-fun e!905506 () Bool)

(assert (=> d!406142 (=> res!642290 e!905506)))

(assert (=> d!406142 (= res!642290 (not ((_ is Node!4881) (tail!2109 (c!233030 objs!24)))))))

(assert (=> d!406142 (= (isBalanced!1452 (tail!2109 (c!233030 objs!24))) e!905506)))

(declare-fun b!1418550 () Bool)

(declare-fun e!905507 () Bool)

(assert (=> b!1418550 (= e!905507 (not (isEmpty!8947 (right!12772 (tail!2109 (c!233030 objs!24))))))))

(declare-fun b!1418551 () Bool)

(declare-fun res!642291 () Bool)

(assert (=> b!1418551 (=> (not res!642291) (not e!905507))))

(declare-fun height!710 (Conc!4881) Int)

(assert (=> b!1418551 (= res!642291 (<= (- (height!710 (left!12442 (tail!2109 (c!233030 objs!24)))) (height!710 (right!12772 (tail!2109 (c!233030 objs!24))))) 1))))

(declare-fun b!1418552 () Bool)

(declare-fun res!642286 () Bool)

(assert (=> b!1418552 (=> (not res!642286) (not e!905507))))

(assert (=> b!1418552 (= res!642286 (isBalanced!1452 (right!12772 (tail!2109 (c!233030 objs!24)))))))

(declare-fun b!1418553 () Bool)

(declare-fun res!642289 () Bool)

(assert (=> b!1418553 (=> (not res!642289) (not e!905507))))

(assert (=> b!1418553 (= res!642289 (isBalanced!1452 (left!12442 (tail!2109 (c!233030 objs!24)))))))

(declare-fun b!1418554 () Bool)

(declare-fun res!642288 () Bool)

(assert (=> b!1418554 (=> (not res!642288) (not e!905507))))

(assert (=> b!1418554 (= res!642288 (not (isEmpty!8947 (left!12442 (tail!2109 (c!233030 objs!24))))))))

(declare-fun b!1418555 () Bool)

(assert (=> b!1418555 (= e!905506 e!905507)))

(declare-fun res!642287 () Bool)

(assert (=> b!1418555 (=> (not res!642287) (not e!905507))))

(assert (=> b!1418555 (= res!642287 (<= (- 1) (- (height!710 (left!12442 (tail!2109 (c!233030 objs!24)))) (height!710 (right!12772 (tail!2109 (c!233030 objs!24)))))))))

(assert (= (and d!406142 (not res!642290)) b!1418555))

(assert (= (and b!1418555 res!642287) b!1418551))

(assert (= (and b!1418551 res!642291) b!1418553))

(assert (= (and b!1418553 res!642289) b!1418552))

(assert (= (and b!1418552 res!642286) b!1418554))

(assert (= (and b!1418554 res!642288) b!1418550))

(declare-fun m!1605671 () Bool)

(assert (=> b!1418554 m!1605671))

(declare-fun m!1605673 () Bool)

(assert (=> b!1418550 m!1605673))

(declare-fun m!1605675 () Bool)

(assert (=> b!1418551 m!1605675))

(declare-fun m!1605677 () Bool)

(assert (=> b!1418551 m!1605677))

(assert (=> b!1418555 m!1605675))

(assert (=> b!1418555 m!1605677))

(declare-fun m!1605679 () Bool)

(assert (=> b!1418553 m!1605679))

(declare-fun m!1605681 () Bool)

(assert (=> b!1418552 m!1605681))

(assert (=> d!406022 d!406142))

(declare-fun b!1418572 () Bool)

(declare-fun e!905522 () Bool)

(declare-fun lt!478133 () Conc!4881)

(declare-fun list!5739 (Conc!4881) List!14620)

(assert (=> b!1418572 (= e!905522 (= (list!5739 lt!478133) (tail!2110 (list!5739 (c!233030 objs!24)))))))

(declare-fun b!1418574 () Bool)

(declare-fun lt!478134 () Unit!21489)

(declare-fun lt!478131 () Unit!21489)

(assert (=> b!1418574 (= lt!478134 lt!478131)))

(declare-fun call!96623 () List!14620)

(declare-fun lt!478128 () List!14620)

(declare-fun slice!540 (List!14620 Int Int) List!14620)

(assert (=> b!1418574 (= call!96623 (slice!540 lt!478128 1 (size!12007 lt!478128)))))

(declare-fun sliceTailLemma!15 (List!14620) Unit!21489)

(assert (=> b!1418574 (= lt!478131 (sliceTailLemma!15 lt!478128))))

(declare-fun list!5740 (IArray!9767) List!14620)

(assert (=> b!1418574 (= lt!478128 (list!5740 (xs!7608 (c!233030 objs!24))))))

(declare-fun e!905521 () Conc!4881)

(declare-fun slice!541 (IArray!9767 Int Int) IArray!9767)

(assert (=> b!1418574 (= e!905521 (Leaf!7345 (slice!541 (xs!7608 (c!233030 objs!24)) 1 (csize!9993 (c!233030 objs!24))) (- (csize!9993 (c!233030 objs!24)) 1)))))

(declare-fun b!1418575 () Bool)

(declare-fun e!905518 () Conc!4881)

(declare-fun call!96622 () Conc!4881)

(assert (=> b!1418575 (= e!905518 call!96622)))

(declare-fun b!1418576 () Bool)

(declare-fun e!905519 () Conc!4881)

(assert (=> b!1418576 (= e!905519 e!905521)))

(declare-fun c!233151 () Bool)

(assert (=> b!1418576 (= c!233151 (= (csize!9993 (c!233030 objs!24)) 1))))

(declare-fun b!1418577 () Bool)

(declare-fun e!905520 () Bool)

(assert (=> b!1418577 (= e!905520 (isEmpty!8947 (left!12442 (c!233030 objs!24))))))

(declare-fun b!1418578 () Bool)

(assert (=> b!1418578 (= e!905521 Empty!4881)))

(declare-fun b!1418579 () Bool)

(assert (=> b!1418579 (= e!905519 e!905518)))

(declare-fun res!642296 () Bool)

(assert (=> b!1418579 (= res!642296 ((_ is Node!4881) (c!233030 objs!24)))))

(assert (=> b!1418579 (=> (not res!642296) (not e!905520))))

(declare-fun c!233152 () Bool)

(assert (=> b!1418579 (= c!233152 e!905520)))

(declare-fun bm!96617 () Bool)

(assert (=> bm!96617 (= call!96622 (tail!2109 (ite c!233152 (right!12772 (c!233030 objs!24)) (left!12442 (c!233030 objs!24)))))))

(declare-fun lt!478135 () List!14620)

(declare-fun c!233150 () Bool)

(declare-fun bm!96618 () Bool)

(assert (=> bm!96618 (= call!96623 (tail!2110 (ite c!233150 lt!478128 lt!478135)))))

(declare-fun d!406144 () Bool)

(assert (=> d!406144 e!905522))

(declare-fun res!642297 () Bool)

(assert (=> d!406144 (=> (not res!642297) (not e!905522))))

(assert (=> d!406144 (= res!642297 (isBalanced!1452 lt!478133))))

(assert (=> d!406144 (= lt!478133 e!905519)))

(assert (=> d!406144 (= c!233150 ((_ is Leaf!7345) (c!233030 objs!24)))))

(assert (=> d!406144 (isBalanced!1452 (c!233030 objs!24))))

(assert (=> d!406144 (= (tail!2109 (c!233030 objs!24)) lt!478133)))

(declare-fun b!1418573 () Bool)

(declare-fun lt!478132 () Unit!21489)

(declare-fun lt!478130 () Unit!21489)

(assert (=> b!1418573 (= lt!478132 lt!478130)))

(declare-fun lt!478129 () List!14620)

(declare-fun ++!3817 (List!14620 List!14620) List!14620)

(assert (=> b!1418573 (= (tail!2110 (++!3817 lt!478135 lt!478129)) (++!3817 call!96623 lt!478129))))

(declare-fun lemmaTailOfConcatIsTailConcat!15 (List!14620 List!14620) Unit!21489)

(assert (=> b!1418573 (= lt!478130 (lemmaTailOfConcatIsTailConcat!15 lt!478135 lt!478129))))

(assert (=> b!1418573 (= lt!478129 (list!5739 (right!12772 (c!233030 objs!24))))))

(assert (=> b!1418573 (= lt!478135 (list!5739 (left!12442 (c!233030 objs!24))))))

(declare-fun ++!3818 (Conc!4881 Conc!4881) Conc!4881)

(assert (=> b!1418573 (= e!905518 (++!3818 call!96622 (right!12772 (c!233030 objs!24))))))

(assert (= (and d!406144 c!233150) b!1418576))

(assert (= (and d!406144 (not c!233150)) b!1418579))

(assert (= (and b!1418576 c!233151) b!1418578))

(assert (= (and b!1418576 (not c!233151)) b!1418574))

(assert (= (and b!1418579 res!642296) b!1418577))

(assert (= (and b!1418579 c!233152) b!1418575))

(assert (= (and b!1418579 (not c!233152)) b!1418573))

(assert (= (or b!1418575 b!1418573) bm!96617))

(assert (= (or b!1418574 b!1418573) bm!96618))

(assert (= (and d!406144 res!642297) b!1418572))

(declare-fun m!1605683 () Bool)

(assert (=> bm!96617 m!1605683))

(declare-fun m!1605685 () Bool)

(assert (=> b!1418573 m!1605685))

(declare-fun m!1605687 () Bool)

(assert (=> b!1418573 m!1605687))

(declare-fun m!1605689 () Bool)

(assert (=> b!1418573 m!1605689))

(declare-fun m!1605691 () Bool)

(assert (=> b!1418573 m!1605691))

(declare-fun m!1605693 () Bool)

(assert (=> b!1418573 m!1605693))

(assert (=> b!1418573 m!1605693))

(declare-fun m!1605695 () Bool)

(assert (=> b!1418573 m!1605695))

(declare-fun m!1605697 () Bool)

(assert (=> b!1418573 m!1605697))

(declare-fun m!1605699 () Bool)

(assert (=> d!406144 m!1605699))

(assert (=> d!406144 m!1605039))

(declare-fun m!1605701 () Bool)

(assert (=> bm!96618 m!1605701))

(declare-fun m!1605703 () Bool)

(assert (=> b!1418574 m!1605703))

(declare-fun m!1605705 () Bool)

(assert (=> b!1418574 m!1605705))

(declare-fun m!1605707 () Bool)

(assert (=> b!1418574 m!1605707))

(declare-fun m!1605709 () Bool)

(assert (=> b!1418574 m!1605709))

(assert (=> b!1418574 m!1605707))

(declare-fun m!1605711 () Bool)

(assert (=> b!1418574 m!1605711))

(declare-fun m!1605713 () Bool)

(assert (=> b!1418572 m!1605713))

(declare-fun m!1605715 () Bool)

(assert (=> b!1418572 m!1605715))

(assert (=> b!1418572 m!1605715))

(declare-fun m!1605717 () Bool)

(assert (=> b!1418572 m!1605717))

(declare-fun m!1605719 () Bool)

(assert (=> b!1418577 m!1605719))

(assert (=> d!406022 d!406144))

(assert (=> d!406022 d!406026))

(declare-fun d!406146 () Bool)

(declare-fun e!905524 () Bool)

(assert (=> d!406146 e!905524))

(declare-fun res!642298 () Bool)

(assert (=> d!406146 (=> (not res!642298) (not e!905524))))

(assert (=> d!406146 (= res!642298 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 acc!229) (print!982 Lexer!2207 (seqFromList!1675 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))) (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))

(declare-fun lt!478149 () Unit!21489)

(declare-fun e!905523 () Unit!21489)

(assert (=> d!406146 (= lt!478149 e!905523)))

(declare-fun c!233153 () Bool)

(assert (=> d!406146 (= c!233153 (or ((_ is Nil!14553) (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))) ((_ is Nil!14553) (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))))

(assert (=> d!406146 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406146 (= (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 acc!229) (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))) lt!478149)))

(declare-fun b!1418580 () Bool)

(declare-fun Unit!21579 () Unit!21489)

(assert (=> b!1418580 (= e!905523 Unit!21579)))

(declare-fun b!1418581 () Bool)

(declare-fun Unit!21581 () Unit!21489)

(assert (=> b!1418581 (= e!905523 Unit!21581)))

(declare-fun lt!478142 () BalanceConc!9698)

(assert (=> b!1418581 (= lt!478142 (print!982 Lexer!2207 (seqFromList!1675 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))

(declare-fun lt!478136 () BalanceConc!9698)

(assert (=> b!1418581 (= lt!478136 (print!982 Lexer!2207 (seqFromList!1675 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))))

(declare-fun lt!478147 () tuple2!14004)

(assert (=> b!1418581 (= lt!478147 (lex!1013 Lexer!2207 (rules!11126 acc!229) lt!478136))))

(declare-fun lt!478150 () List!14617)

(assert (=> b!1418581 (= lt!478150 (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))))

(declare-fun lt!478143 () List!14617)

(assert (=> b!1418581 (= lt!478143 (list!5733 lt!478136))))

(declare-fun lt!478138 () Unit!21489)

(assert (=> b!1418581 (= lt!478138 (lemmaConcatTwoListThenFirstIsPrefix!739 lt!478150 lt!478143))))

(assert (=> b!1418581 (isPrefix!1172 lt!478150 (++!3814 lt!478150 lt!478143))))

(declare-fun lt!478154 () Unit!21489)

(assert (=> b!1418581 (= lt!478154 lt!478138)))

(declare-fun lt!478159 () Unit!21489)

(assert (=> b!1418581 (= lt!478159 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 acc!229) (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))

(declare-fun lt!478157 () Unit!21489)

(assert (=> b!1418581 (= lt!478157 (seqFromListBHdTlConstructive!68 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))) (t!124254 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))) (_1!7888 lt!478147)))))

(assert (=> b!1418581 (= (list!5734 (_1!7888 lt!478147)) (list!5734 (prepend!384 (seqFromList!1675 (t!124254 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))) (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))))

(declare-fun lt!478146 () Unit!21489)

(assert (=> b!1418581 (= lt!478146 lt!478157)))

(declare-fun lt!478158 () Option!2798)

(assert (=> b!1418581 (= lt!478158 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (list!5733 lt!478142)))))

(assert (=> b!1418581 (= (print!982 Lexer!2207 (singletonSeq!1169 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))) (printTailRec!645 Lexer!2207 (singletonSeq!1169 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))) 0 (BalanceConc!9699 Empty!4879)))))

(declare-fun lt!478144 () Unit!21489)

(declare-fun Unit!21589 () Unit!21489)

(assert (=> b!1418581 (= lt!478144 Unit!21589)))

(declare-fun lt!478140 () Unit!21489)

(assert (=> b!1418581 (= lt!478140 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!212 Lexer!2207 (rules!11126 acc!229) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))) (list!5733 lt!478136)))))

(assert (=> b!1418581 (= (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))) (originalCharacters!3397 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))

(declare-fun lt!478161 () Unit!21489)

(declare-fun Unit!21592 () Unit!21489)

(assert (=> b!1418581 (= lt!478161 Unit!21592)))

(assert (=> b!1418581 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))) 0))) (Cons!14551 (head!2764 (originalCharacters!3397 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))) Nil!14551))))

(declare-fun lt!478145 () Unit!21489)

(declare-fun Unit!21593 () Unit!21489)

(assert (=> b!1418581 (= lt!478145 Unit!21593)))

(assert (=> b!1418581 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))) 0))) (Cons!14551 (head!2764 (list!5733 lt!478136)) Nil!14551))))

(declare-fun lt!478139 () Unit!21489)

(declare-fun Unit!21594 () Unit!21489)

(assert (=> b!1418581 (= lt!478139 Unit!21594)))

(assert (=> b!1418581 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))) 0))) (Cons!14551 (head!2765 lt!478136) Nil!14551))))

(declare-fun lt!478137 () Unit!21489)

(declare-fun Unit!21595 () Unit!21489)

(assert (=> b!1418581 (= lt!478137 Unit!21595)))

(assert (=> b!1418581 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (originalCharacters!3397 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))))

(declare-fun lt!478151 () Unit!21489)

(declare-fun Unit!21596 () Unit!21489)

(assert (=> b!1418581 (= lt!478151 Unit!21596)))

(assert (=> b!1418581 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))))

(declare-fun lt!478152 () Unit!21489)

(declare-fun Unit!21597 () Unit!21489)

(assert (=> b!1418581 (= lt!478152 Unit!21597)))

(declare-fun lt!478160 () Unit!21489)

(declare-fun Unit!21598 () Unit!21489)

(assert (=> b!1418581 (= lt!478160 Unit!21598)))

(assert (=> b!1418581 (= (_1!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))) (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))

(declare-fun lt!478141 () Unit!21489)

(declare-fun Unit!21599 () Unit!21489)

(assert (=> b!1418581 (= lt!478141 Unit!21599)))

(assert (=> b!1418581 (isEmpty!8952 (_2!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))))))

(declare-fun lt!478153 () Unit!21489)

(declare-fun Unit!21600 () Unit!21489)

(assert (=> b!1418581 (= lt!478153 Unit!21600)))

(assert (=> b!1418581 (matchR!1798 (regex!2535 (rule!4298 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))))

(declare-fun lt!478155 () Unit!21489)

(declare-fun Unit!21601 () Unit!21489)

(assert (=> b!1418581 (= lt!478155 Unit!21601)))

(assert (=> b!1418581 (= (rule!4298 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))) (rule!4298 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))

(declare-fun lt!478156 () Unit!21489)

(declare-fun Unit!21602 () Unit!21489)

(assert (=> b!1418581 (= lt!478156 Unit!21602)))

(declare-fun lt!478148 () Unit!21489)

(assert (=> b!1418581 (= lt!478148 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!10 Lexer!2207 (rules!11126 acc!229) (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))) (rule!4298 (h!19954 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))) (list!5733 lt!478136)))))

(declare-fun b!1418582 () Bool)

(assert (=> b!1418582 (= e!905524 (isEmpty!8953 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 acc!229) (print!982 Lexer!2207 (seqFromList!1675 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))))))

(assert (= (and d!406146 c!233153) b!1418580))

(assert (= (and d!406146 (not c!233153)) b!1418581))

(assert (= (and d!406146 res!642298) b!1418582))

(assert (=> d!406146 m!1604999))

(declare-fun m!1605721 () Bool)

(assert (=> d!406146 m!1605721))

(declare-fun m!1605723 () Bool)

(assert (=> d!406146 m!1605723))

(assert (=> d!406146 m!1605721))

(declare-fun m!1605725 () Bool)

(assert (=> d!406146 m!1605725))

(assert (=> d!406146 m!1605725))

(declare-fun m!1605727 () Bool)

(assert (=> d!406146 m!1605727))

(assert (=> d!406146 m!1605205))

(declare-fun m!1605729 () Bool)

(assert (=> b!1418581 m!1605729))

(declare-fun m!1605731 () Bool)

(assert (=> b!1418581 m!1605731))

(declare-fun m!1605733 () Bool)

(assert (=> b!1418581 m!1605733))

(declare-fun m!1605735 () Bool)

(assert (=> b!1418581 m!1605735))

(declare-fun m!1605737 () Bool)

(assert (=> b!1418581 m!1605737))

(assert (=> b!1418581 m!1605733))

(declare-fun m!1605739 () Bool)

(assert (=> b!1418581 m!1605739))

(declare-fun m!1605741 () Bool)

(assert (=> b!1418581 m!1605741))

(declare-fun m!1605743 () Bool)

(assert (=> b!1418581 m!1605743))

(assert (=> b!1418581 m!1605729))

(declare-fun m!1605745 () Bool)

(assert (=> b!1418581 m!1605745))

(declare-fun m!1605747 () Bool)

(assert (=> b!1418581 m!1605747))

(declare-fun m!1605749 () Bool)

(assert (=> b!1418581 m!1605749))

(declare-fun m!1605751 () Bool)

(assert (=> b!1418581 m!1605751))

(declare-fun m!1605753 () Bool)

(assert (=> b!1418581 m!1605753))

(assert (=> b!1418581 m!1605743))

(declare-fun m!1605755 () Bool)

(assert (=> b!1418581 m!1605755))

(declare-fun m!1605757 () Bool)

(assert (=> b!1418581 m!1605757))

(declare-fun m!1605759 () Bool)

(assert (=> b!1418581 m!1605759))

(assert (=> b!1418581 m!1605757))

(declare-fun m!1605761 () Bool)

(assert (=> b!1418581 m!1605761))

(declare-fun m!1605763 () Bool)

(assert (=> b!1418581 m!1605763))

(assert (=> b!1418581 m!1605749))

(declare-fun m!1605765 () Bool)

(assert (=> b!1418581 m!1605765))

(assert (=> b!1418581 m!1605745))

(declare-fun m!1605767 () Bool)

(assert (=> b!1418581 m!1605767))

(assert (=> b!1418581 m!1605749))

(declare-fun m!1605769 () Bool)

(assert (=> b!1418581 m!1605769))

(declare-fun m!1605771 () Bool)

(assert (=> b!1418581 m!1605771))

(assert (=> b!1418581 m!1604999))

(assert (=> b!1418581 m!1605721))

(assert (=> b!1418581 m!1605741))

(declare-fun m!1605773 () Bool)

(assert (=> b!1418581 m!1605773))

(assert (=> b!1418581 m!1605721))

(assert (=> b!1418581 m!1605725))

(declare-fun m!1605775 () Bool)

(assert (=> b!1418581 m!1605775))

(assert (=> b!1418581 m!1605737))

(declare-fun m!1605777 () Bool)

(assert (=> b!1418581 m!1605777))

(assert (=> b!1418581 m!1605747))

(assert (=> b!1418581 m!1605733))

(assert (=> b!1418581 m!1605767))

(declare-fun m!1605779 () Bool)

(assert (=> b!1418581 m!1605779))

(assert (=> b!1418581 m!1605753))

(assert (=> b!1418581 m!1605775))

(declare-fun m!1605781 () Bool)

(assert (=> b!1418581 m!1605781))

(declare-fun m!1605783 () Bool)

(assert (=> b!1418581 m!1605783))

(declare-fun m!1605785 () Bool)

(assert (=> b!1418581 m!1605785))

(declare-fun m!1605787 () Bool)

(assert (=> b!1418581 m!1605787))

(assert (=> b!1418581 m!1605775))

(declare-fun m!1605789 () Bool)

(assert (=> b!1418581 m!1605789))

(declare-fun m!1605791 () Bool)

(assert (=> b!1418581 m!1605791))

(assert (=> b!1418581 m!1605747))

(declare-fun m!1605793 () Bool)

(assert (=> b!1418581 m!1605793))

(assert (=> b!1418581 m!1605749))

(declare-fun m!1605795 () Bool)

(assert (=> b!1418581 m!1605795))

(assert (=> b!1418581 m!1605761))

(assert (=> b!1418581 m!1605747))

(declare-fun m!1605797 () Bool)

(assert (=> b!1418581 m!1605797))

(assert (=> b!1418581 m!1605783))

(declare-fun m!1605799 () Bool)

(assert (=> b!1418581 m!1605799))

(assert (=> b!1418582 m!1604999))

(assert (=> b!1418582 m!1605721))

(assert (=> b!1418582 m!1605721))

(assert (=> b!1418582 m!1605725))

(assert (=> b!1418582 m!1605725))

(assert (=> b!1418582 m!1605727))

(declare-fun m!1605801 () Bool)

(assert (=> b!1418582 m!1605801))

(assert (=> b!1418241 d!406146))

(declare-fun d!406148 () Bool)

(declare-fun res!642319 () Bool)

(declare-fun e!905537 () Bool)

(assert (=> d!406148 (=> res!642319 e!905537)))

(assert (=> d!406148 (= res!642319 (or (not ((_ is Cons!14553) call!96546)) (not ((_ is Cons!14553) (t!124254 call!96546)))))))

(assert (=> d!406148 (= (tokensListTwoByTwoPredicateSeparableList!209 lt!477837 call!96546 (rules!11126 acc!229)) e!905537)))

(declare-fun b!1418603 () Bool)

(declare-fun e!905536 () Bool)

(assert (=> b!1418603 (= e!905537 e!905536)))

(declare-fun res!642320 () Bool)

(assert (=> b!1418603 (=> (not res!642320) (not e!905536))))

(assert (=> b!1418603 (= res!642320 (separableTokensPredicate!486 lt!477837 (h!19954 call!96546) (h!19954 (t!124254 call!96546)) (rules!11126 acc!229)))))

(declare-fun lt!478192 () Unit!21489)

(declare-fun Unit!21603 () Unit!21489)

(assert (=> b!1418603 (= lt!478192 Unit!21603)))

(declare-fun size!12014 (BalanceConc!9698) Int)

(assert (=> b!1418603 (> (size!12014 (charsOf!1480 (h!19954 (t!124254 call!96546)))) 0)))

(declare-fun lt!478189 () Unit!21489)

(declare-fun Unit!21604 () Unit!21489)

(assert (=> b!1418603 (= lt!478189 Unit!21604)))

(assert (=> b!1418603 (rulesProduceIndividualToken!1172 lt!477837 (rules!11126 acc!229) (h!19954 (t!124254 call!96546)))))

(declare-fun lt!478190 () Unit!21489)

(declare-fun Unit!21605 () Unit!21489)

(assert (=> b!1418603 (= lt!478190 Unit!21605)))

(assert (=> b!1418603 (rulesProduceIndividualToken!1172 lt!477837 (rules!11126 acc!229) (h!19954 call!96546))))

(declare-fun lt!478188 () Unit!21489)

(declare-fun lt!478187 () Unit!21489)

(assert (=> b!1418603 (= lt!478188 lt!478187)))

(assert (=> b!1418603 (rulesProduceIndividualToken!1172 lt!477837 (rules!11126 acc!229) (h!19954 (t!124254 call!96546)))))

(assert (=> b!1418603 (= lt!478187 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477837 (rules!11126 acc!229) call!96546 (h!19954 (t!124254 call!96546))))))

(declare-fun lt!478191 () Unit!21489)

(declare-fun lt!478193 () Unit!21489)

(assert (=> b!1418603 (= lt!478191 lt!478193)))

(assert (=> b!1418603 (rulesProduceIndividualToken!1172 lt!477837 (rules!11126 acc!229) (h!19954 call!96546))))

(assert (=> b!1418603 (= lt!478193 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477837 (rules!11126 acc!229) call!96546 (h!19954 call!96546)))))

(declare-fun b!1418604 () Bool)

(assert (=> b!1418604 (= e!905536 (tokensListTwoByTwoPredicateSeparableList!209 lt!477837 (Cons!14553 (h!19954 (t!124254 call!96546)) (t!124254 (t!124254 call!96546))) (rules!11126 acc!229)))))

(assert (= (and d!406148 (not res!642319)) b!1418603))

(assert (= (and b!1418603 res!642320) b!1418604))

(declare-fun m!1605819 () Bool)

(assert (=> b!1418603 m!1605819))

(declare-fun m!1605821 () Bool)

(assert (=> b!1418603 m!1605821))

(declare-fun m!1605823 () Bool)

(assert (=> b!1418603 m!1605823))

(declare-fun m!1605825 () Bool)

(assert (=> b!1418603 m!1605825))

(declare-fun m!1605827 () Bool)

(assert (=> b!1418603 m!1605827))

(assert (=> b!1418603 m!1605821))

(declare-fun m!1605829 () Bool)

(assert (=> b!1418603 m!1605829))

(declare-fun m!1605831 () Bool)

(assert (=> b!1418603 m!1605831))

(declare-fun m!1605833 () Bool)

(assert (=> b!1418604 m!1605833))

(assert (=> b!1418241 d!406148))

(declare-fun b!1418638 () Bool)

(declare-fun e!905557 () Bool)

(assert (=> b!1418638 (= e!905557 (tokensListTwoByTwoPredicateSeparableList!209 lt!477837 (++!3813 lt!477797 lt!477829) (rules!11126 acc!229)))))

(declare-fun lt!478243 () Unit!21489)

(declare-fun lt!478242 () Unit!21489)

(assert (=> b!1418638 (= lt!478243 lt!478242)))

(assert (=> b!1418638 (rulesProduceEachTokenIndividuallyList!690 lt!477837 (rules!11126 acc!229) (++!3813 lt!477797 lt!477829))))

(assert (=> b!1418638 (= lt!478242 (lemmaRulesProduceEachTokenIndividuallyConcat!28 lt!477837 (rules!11126 acc!229) lt!477797 lt!477829))))

(declare-fun b!1418637 () Bool)

(declare-fun res!642336 () Bool)

(assert (=> b!1418637 (=> (not res!642336) (not e!905557))))

(assert (=> b!1418637 (= res!642336 (rulesProduceEachTokenIndividuallyList!690 lt!477837 (rules!11126 acc!229) lt!477829))))

(declare-fun d!406152 () Bool)

(assert (=> d!406152 e!905557))

(declare-fun res!642337 () Bool)

(assert (=> d!406152 (=> (not res!642337) (not e!905557))))

(assert (=> d!406152 (= res!642337 ((_ is Lexer!2207) lt!477837))))

(declare-fun lt!478244 () Unit!21489)

(declare-fun choose!8742 (LexerInterface!2209 List!14619 List!14619 List!14618) Unit!21489)

(assert (=> d!406152 (= lt!478244 (choose!8742 lt!477837 lt!477797 lt!477829 (rules!11126 acc!229)))))

(assert (=> d!406152 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406152 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!28 lt!477837 lt!477797 lt!477829 (rules!11126 acc!229)) lt!478244)))

(declare-fun b!1418636 () Bool)

(declare-fun res!642338 () Bool)

(assert (=> b!1418636 (=> (not res!642338) (not e!905557))))

(assert (=> b!1418636 (= res!642338 (rulesProduceEachTokenIndividuallyList!690 lt!477837 (rules!11126 acc!229) lt!477797))))

(declare-fun b!1418635 () Bool)

(declare-fun res!642339 () Bool)

(assert (=> b!1418635 (=> (not res!642339) (not e!905557))))

(assert (=> b!1418635 (= res!642339 (rulesInvariant!2079 lt!477837 (rules!11126 acc!229)))))

(assert (= (and d!406152 res!642337) b!1418635))

(assert (= (and b!1418635 res!642339) b!1418636))

(assert (= (and b!1418636 res!642338) b!1418637))

(assert (= (and b!1418637 res!642336) b!1418638))

(declare-fun m!1605931 () Bool)

(assert (=> b!1418635 m!1605931))

(declare-fun m!1605933 () Bool)

(assert (=> b!1418636 m!1605933))

(declare-fun m!1605935 () Bool)

(assert (=> b!1418637 m!1605935))

(declare-fun m!1605937 () Bool)

(assert (=> d!406152 m!1605937))

(assert (=> d!406152 m!1605205))

(declare-fun m!1605939 () Bool)

(assert (=> b!1418638 m!1605939))

(assert (=> b!1418638 m!1605939))

(declare-fun m!1605941 () Bool)

(assert (=> b!1418638 m!1605941))

(assert (=> b!1418638 m!1605939))

(declare-fun m!1605943 () Bool)

(assert (=> b!1418638 m!1605943))

(assert (=> b!1418638 m!1605011))

(assert (=> b!1418241 d!406152))

(declare-fun b!1418651 () Bool)

(declare-fun res!642352 () Bool)

(declare-fun e!905562 () Bool)

(assert (=> b!1418651 (=> (not res!642352) (not e!905562))))

(declare-fun height!711 (Conc!4880) Int)

(declare-fun ++!3819 (Conc!4880 Conc!4880) Conc!4880)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1418651 (= res!642352 (>= (height!711 (++!3819 (c!233029 (tokens!1830 acc!229)) (c!233029 (tokens!1830 (v!22115 lt!477384))))) (max!0 (height!711 (c!233029 (tokens!1830 acc!229))) (height!711 (c!233029 (tokens!1830 (v!22115 lt!477384)))))))))

(declare-fun b!1418650 () Bool)

(declare-fun res!642351 () Bool)

(assert (=> b!1418650 (=> (not res!642351) (not e!905562))))

(assert (=> b!1418650 (= res!642351 (<= (height!711 (++!3819 (c!233029 (tokens!1830 acc!229)) (c!233029 (tokens!1830 (v!22115 lt!477384))))) (+ (max!0 (height!711 (c!233029 (tokens!1830 acc!229))) (height!711 (c!233029 (tokens!1830 (v!22115 lt!477384))))) 1)))))

(declare-fun d!406162 () Bool)

(assert (=> d!406162 e!905562))

(declare-fun res!642350 () Bool)

(assert (=> d!406162 (=> (not res!642350) (not e!905562))))

(declare-fun appendAssocInst!299 (Conc!4880 Conc!4880) Bool)

(assert (=> d!406162 (= res!642350 (appendAssocInst!299 (c!233029 (tokens!1830 acc!229)) (c!233029 (tokens!1830 (v!22115 lt!477384)))))))

(declare-fun lt!478254 () BalanceConc!9700)

(assert (=> d!406162 (= lt!478254 (BalanceConc!9701 (++!3819 (c!233029 (tokens!1830 acc!229)) (c!233029 (tokens!1830 (v!22115 lt!477384))))))))

(assert (=> d!406162 (= (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))) lt!478254)))

(declare-fun b!1418652 () Bool)

(assert (=> b!1418652 (= e!905562 (= (list!5734 lt!478254) (++!3813 (list!5734 (tokens!1830 acc!229)) (list!5734 (tokens!1830 (v!22115 lt!477384))))))))

(declare-fun b!1418649 () Bool)

(declare-fun res!642353 () Bool)

(assert (=> b!1418649 (=> (not res!642353) (not e!905562))))

(assert (=> b!1418649 (= res!642353 (isBalanced!1450 (++!3819 (c!233029 (tokens!1830 acc!229)) (c!233029 (tokens!1830 (v!22115 lt!477384))))))))

(assert (= (and d!406162 res!642350) b!1418649))

(assert (= (and b!1418649 res!642353) b!1418650))

(assert (= (and b!1418650 res!642351) b!1418651))

(assert (= (and b!1418651 res!642352) b!1418652))

(declare-fun m!1605959 () Bool)

(assert (=> d!406162 m!1605959))

(declare-fun m!1605961 () Bool)

(assert (=> d!406162 m!1605961))

(assert (=> b!1418649 m!1605961))

(assert (=> b!1418649 m!1605961))

(declare-fun m!1605963 () Bool)

(assert (=> b!1418649 m!1605963))

(declare-fun m!1605965 () Bool)

(assert (=> b!1418652 m!1605965))

(assert (=> b!1418652 m!1604961))

(assert (=> b!1418652 m!1604963))

(assert (=> b!1418652 m!1604961))

(assert (=> b!1418652 m!1604963))

(assert (=> b!1418652 m!1604965))

(assert (=> b!1418650 m!1605961))

(declare-fun m!1605967 () Bool)

(assert (=> b!1418650 m!1605967))

(declare-fun m!1605969 () Bool)

(assert (=> b!1418650 m!1605969))

(declare-fun m!1605971 () Bool)

(assert (=> b!1418650 m!1605971))

(assert (=> b!1418650 m!1605961))

(declare-fun m!1605973 () Bool)

(assert (=> b!1418650 m!1605973))

(assert (=> b!1418650 m!1605967))

(assert (=> b!1418650 m!1605969))

(assert (=> b!1418651 m!1605961))

(assert (=> b!1418651 m!1605967))

(assert (=> b!1418651 m!1605969))

(assert (=> b!1418651 m!1605971))

(assert (=> b!1418651 m!1605961))

(assert (=> b!1418651 m!1605973))

(assert (=> b!1418651 m!1605967))

(assert (=> b!1418651 m!1605969))

(assert (=> b!1418241 d!406162))

(declare-fun b!1418669 () Bool)

(declare-fun e!905577 () Bool)

(assert (=> b!1418669 (= e!905577 true)))

(declare-fun b!1418668 () Bool)

(declare-fun e!905576 () Bool)

(assert (=> b!1418668 (= e!905576 e!905577)))

(declare-fun b!1418667 () Bool)

(declare-fun e!905575 () Bool)

(assert (=> b!1418667 (= e!905575 e!905576)))

(declare-fun d!406166 () Bool)

(assert (=> d!406166 e!905575))

(assert (= b!1418668 b!1418669))

(assert (= b!1418667 b!1418668))

(assert (= (and d!406166 ((_ is Cons!14552) (rules!11126 acc!229))) b!1418667))

(declare-fun order!8859 () Int)

(declare-fun lambda!62617 () Int)

(declare-fun order!8857 () Int)

(declare-fun dynLambda!6723 (Int Int) Int)

(declare-fun dynLambda!6724 (Int Int) Int)

(assert (=> b!1418669 (< (dynLambda!6723 order!8857 (toValue!3834 (transformation!2535 (h!19953 (rules!11126 acc!229))))) (dynLambda!6724 order!8859 lambda!62617))))

(declare-fun order!8861 () Int)

(declare-fun dynLambda!6725 (Int Int) Int)

(assert (=> b!1418669 (< (dynLambda!6725 order!8861 (toChars!3693 (transformation!2535 (h!19953 (rules!11126 acc!229))))) (dynLambda!6724 order!8859 lambda!62617))))

(assert (=> d!406166 true))

(declare-fun lt!478257 () Bool)

(declare-fun forall!3627 (List!14619 Int) Bool)

(assert (=> d!406166 (= lt!478257 (forall!3627 call!96546 lambda!62617))))

(declare-fun e!905567 () Bool)

(assert (=> d!406166 (= lt!478257 e!905567)))

(declare-fun res!642359 () Bool)

(assert (=> d!406166 (=> res!642359 e!905567)))

(assert (=> d!406166 (= res!642359 (not ((_ is Cons!14553) call!96546)))))

(assert (=> d!406166 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406166 (= (rulesProduceEachTokenIndividuallyList!690 lt!477837 (rules!11126 acc!229) call!96546) lt!478257)))

(declare-fun b!1418657 () Bool)

(declare-fun e!905568 () Bool)

(assert (=> b!1418657 (= e!905567 e!905568)))

(declare-fun res!642358 () Bool)

(assert (=> b!1418657 (=> (not res!642358) (not e!905568))))

(assert (=> b!1418657 (= res!642358 (rulesProduceIndividualToken!1172 lt!477837 (rules!11126 acc!229) (h!19954 call!96546)))))

(declare-fun b!1418658 () Bool)

(assert (=> b!1418658 (= e!905568 (rulesProduceEachTokenIndividuallyList!690 lt!477837 (rules!11126 acc!229) (t!124254 call!96546)))))

(assert (= (and d!406166 (not res!642359)) b!1418657))

(assert (= (and b!1418657 res!642358) b!1418658))

(declare-fun m!1605975 () Bool)

(assert (=> d!406166 m!1605975))

(assert (=> d!406166 m!1605205))

(assert (=> b!1418657 m!1605831))

(declare-fun m!1605977 () Bool)

(assert (=> b!1418658 m!1605977))

(assert (=> b!1418241 d!406166))

(declare-fun d!406168 () Bool)

(declare-fun list!5741 (Conc!4880) List!14619)

(assert (=> d!406168 (= (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))) (list!5741 (c!233029 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))

(declare-fun bs!339570 () Bool)

(assert (= bs!339570 d!406168))

(declare-fun m!1605979 () Bool)

(assert (=> bs!339570 m!1605979))

(assert (=> b!1418241 d!406168))

(declare-fun d!406170 () Bool)

(declare-fun lt!478264 () BalanceConc!9698)

(assert (=> d!406170 (= (list!5733 lt!478264) (printList!663 Lexer!2207 (list!5734 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))

(assert (=> d!406170 (= lt!478264 (printTailRec!645 Lexer!2207 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))) 0 (BalanceConc!9699 Empty!4879)))))

(assert (=> d!406170 (= (print!982 Lexer!2207 (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))) lt!478264)))

(declare-fun bs!339571 () Bool)

(assert (= bs!339571 d!406170))

(declare-fun m!1605981 () Bool)

(assert (=> bs!339571 m!1605981))

(assert (=> bs!339571 m!1604995))

(assert (=> bs!339571 m!1604999))

(assert (=> bs!339571 m!1604999))

(declare-fun m!1605983 () Bool)

(assert (=> bs!339571 m!1605983))

(assert (=> bs!339571 m!1604995))

(declare-fun m!1605985 () Bool)

(assert (=> bs!339571 m!1605985))

(assert (=> b!1418241 d!406170))

(declare-fun d!406172 () Bool)

(declare-fun e!905583 () Bool)

(assert (=> d!406172 e!905583))

(declare-fun res!642365 () Bool)

(assert (=> d!406172 (=> (not res!642365) (not e!905583))))

(declare-fun lt!478275 () BalanceConc!9698)

(assert (=> d!406172 (= res!642365 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))) lt!478275))) (list!5734 (tokens!1830 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))))

(assert (=> d!406172 (= lt!478275 (print!982 Lexer!2207 (tokens!1830 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))))))))

(declare-fun lt!478276 () Unit!21489)

(assert (=> d!406172 (= lt!478276 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))) (list!5734 (tokens!1830 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))))

(assert (=> d!406172 (= (print!981 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))) lt!478275)))

(declare-fun b!1418677 () Bool)

(assert (=> b!1418677 (= e!905583 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (PrintableTokens!853 (rules!11126 acc!229) (++!3815 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))) lt!478275)))))))

(assert (= (and d!406172 res!642365) b!1418677))

(declare-fun m!1606011 () Bool)

(assert (=> d!406172 m!1606011))

(declare-fun m!1606013 () Bool)

(assert (=> d!406172 m!1606013))

(declare-fun m!1606015 () Bool)

(assert (=> d!406172 m!1606015))

(declare-fun m!1606017 () Bool)

(assert (=> d!406172 m!1606017))

(assert (=> d!406172 m!1606013))

(declare-fun m!1606019 () Bool)

(assert (=> d!406172 m!1606019))

(assert (=> b!1418677 m!1606011))

(declare-fun m!1606021 () Bool)

(assert (=> b!1418677 m!1606021))

(assert (=> b!1418677 m!1606021))

(declare-fun m!1606023 () Bool)

(assert (=> b!1418677 m!1606023))

(assert (=> b!1418241 d!406172))

(declare-fun d!406180 () Bool)

(assert (=> d!406180 (rulesProduceEachTokenIndividuallyList!690 lt!477837 (rules!11126 acc!229) (++!3813 lt!477797 lt!477829))))

(declare-fun lt!478308 () Unit!21489)

(declare-fun choose!8743 (LexerInterface!2209 List!14618 List!14619 List!14619) Unit!21489)

(assert (=> d!406180 (= lt!478308 (choose!8743 lt!477837 (rules!11126 acc!229) lt!477797 lt!477829))))

(assert (=> d!406180 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406180 (= (lemmaRulesProduceEachTokenIndividuallyConcat!28 lt!477837 (rules!11126 acc!229) lt!477797 lt!477829) lt!478308)))

(declare-fun bs!339575 () Bool)

(assert (= bs!339575 d!406180))

(assert (=> bs!339575 m!1605939))

(assert (=> bs!339575 m!1605939))

(assert (=> bs!339575 m!1605943))

(declare-fun m!1606123 () Bool)

(assert (=> bs!339575 m!1606123))

(assert (=> bs!339575 m!1605205))

(assert (=> b!1418241 d!406180))

(declare-fun d!406188 () Bool)

(declare-fun e!905600 () Bool)

(assert (=> d!406188 e!905600))

(declare-fun res!642376 () Bool)

(assert (=> d!406188 (=> (not res!642376) (not e!905600))))

(assert (=> d!406188 (= res!642376 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (head!2755 objs!24)) (print!982 Lexer!2207 (seqFromList!1675 (ite c!233087 call!96535 call!96501)))))) (ite c!233087 call!96535 call!96501)))))

(declare-fun lt!478322 () Unit!21489)

(declare-fun e!905599 () Unit!21489)

(assert (=> d!406188 (= lt!478322 e!905599)))

(declare-fun c!233160 () Bool)

(assert (=> d!406188 (= c!233160 (or ((_ is Nil!14553) (ite c!233087 call!96535 call!96501)) ((_ is Nil!14553) (t!124254 (ite c!233087 call!96535 call!96501)))))))

(assert (=> d!406188 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406188 (= (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (head!2755 objs!24)) (ite c!233087 call!96535 call!96501)) lt!478322)))

(declare-fun b!1418695 () Bool)

(declare-fun Unit!21606 () Unit!21489)

(assert (=> b!1418695 (= e!905599 Unit!21606)))

(declare-fun b!1418696 () Bool)

(declare-fun Unit!21607 () Unit!21489)

(assert (=> b!1418696 (= e!905599 Unit!21607)))

(declare-fun lt!478315 () BalanceConc!9698)

(assert (=> b!1418696 (= lt!478315 (print!982 Lexer!2207 (seqFromList!1675 (ite c!233087 call!96535 call!96501))))))

(declare-fun lt!478309 () BalanceConc!9698)

(assert (=> b!1418696 (= lt!478309 (print!982 Lexer!2207 (seqFromList!1675 (t!124254 (ite c!233087 call!96535 call!96501)))))))

(declare-fun lt!478320 () tuple2!14004)

(assert (=> b!1418696 (= lt!478320 (lex!1013 Lexer!2207 (rules!11126 (head!2755 objs!24)) lt!478309))))

(declare-fun lt!478323 () List!14617)

(assert (=> b!1418696 (= lt!478323 (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96535 call!96501)))))))

(declare-fun lt!478316 () List!14617)

(assert (=> b!1418696 (= lt!478316 (list!5733 lt!478309))))

(declare-fun lt!478311 () Unit!21489)

(assert (=> b!1418696 (= lt!478311 (lemmaConcatTwoListThenFirstIsPrefix!739 lt!478323 lt!478316))))

(assert (=> b!1418696 (isPrefix!1172 lt!478323 (++!3814 lt!478323 lt!478316))))

(declare-fun lt!478327 () Unit!21489)

(assert (=> b!1418696 (= lt!478327 lt!478311)))

(declare-fun lt!478332 () Unit!21489)

(assert (=> b!1418696 (= lt!478332 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (head!2755 objs!24)) (t!124254 (ite c!233087 call!96535 call!96501))))))

(declare-fun lt!478330 () Unit!21489)

(assert (=> b!1418696 (= lt!478330 (seqFromListBHdTlConstructive!68 (h!19954 (t!124254 (ite c!233087 call!96535 call!96501))) (t!124254 (t!124254 (ite c!233087 call!96535 call!96501))) (_1!7888 lt!478320)))))

(assert (=> b!1418696 (= (list!5734 (_1!7888 lt!478320)) (list!5734 (prepend!384 (seqFromList!1675 (t!124254 (t!124254 (ite c!233087 call!96535 call!96501)))) (h!19954 (t!124254 (ite c!233087 call!96535 call!96501))))))))

(declare-fun lt!478319 () Unit!21489)

(assert (=> b!1418696 (= lt!478319 lt!478330)))

(declare-fun lt!478331 () Option!2798)

(assert (=> b!1418696 (= lt!478331 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 lt!478315)))))

(assert (=> b!1418696 (= (print!982 Lexer!2207 (singletonSeq!1169 (h!19954 (ite c!233087 call!96535 call!96501)))) (printTailRec!645 Lexer!2207 (singletonSeq!1169 (h!19954 (ite c!233087 call!96535 call!96501))) 0 (BalanceConc!9699 Empty!4879)))))

(declare-fun lt!478317 () Unit!21489)

(declare-fun Unit!21608 () Unit!21489)

(assert (=> b!1418696 (= lt!478317 Unit!21608)))

(declare-fun lt!478313 () Unit!21489)

(assert (=> b!1418696 (= lt!478313 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!212 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96535 call!96501)))) (list!5733 lt!478309)))))

(assert (=> b!1418696 (= (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96535 call!96501)))) (originalCharacters!3397 (h!19954 (ite c!233087 call!96535 call!96501))))))

(declare-fun lt!478334 () Unit!21489)

(declare-fun Unit!21609 () Unit!21489)

(assert (=> b!1418696 (= lt!478334 Unit!21609)))

(assert (=> b!1418696 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233087 call!96535 call!96501)))) 0))) (Cons!14551 (head!2764 (originalCharacters!3397 (h!19954 (t!124254 (ite c!233087 call!96535 call!96501))))) Nil!14551))))

(declare-fun lt!478318 () Unit!21489)

(declare-fun Unit!21610 () Unit!21489)

(assert (=> b!1418696 (= lt!478318 Unit!21610)))

(assert (=> b!1418696 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233087 call!96535 call!96501)))) 0))) (Cons!14551 (head!2764 (list!5733 lt!478309)) Nil!14551))))

(declare-fun lt!478312 () Unit!21489)

(declare-fun Unit!21611 () Unit!21489)

(assert (=> b!1418696 (= lt!478312 Unit!21611)))

(assert (=> b!1418696 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233087 call!96535 call!96501)))) 0))) (Cons!14551 (head!2765 lt!478309) Nil!14551))))

(declare-fun lt!478310 () Unit!21489)

(declare-fun Unit!21612 () Unit!21489)

(assert (=> b!1418696 (= lt!478310 Unit!21612)))

(assert (=> b!1418696 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (originalCharacters!3397 (h!19954 (ite c!233087 call!96535 call!96501)))))))

(declare-fun lt!478324 () Unit!21489)

(declare-fun Unit!21613 () Unit!21489)

(assert (=> b!1418696 (= lt!478324 Unit!21613)))

(assert (=> b!1418696 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96535 call!96501))))))))

(declare-fun lt!478325 () Unit!21489)

(declare-fun Unit!21614 () Unit!21489)

(assert (=> b!1418696 (= lt!478325 Unit!21614)))

(declare-fun lt!478333 () Unit!21489)

(declare-fun Unit!21615 () Unit!21489)

(assert (=> b!1418696 (= lt!478333 Unit!21615)))

(assert (=> b!1418696 (= (_1!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96535 call!96501))))))) (h!19954 (ite c!233087 call!96535 call!96501)))))

(declare-fun lt!478314 () Unit!21489)

(declare-fun Unit!21616 () Unit!21489)

(assert (=> b!1418696 (= lt!478314 Unit!21616)))

(assert (=> b!1418696 (isEmpty!8952 (_2!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96535 call!96501))))))))))

(declare-fun lt!478326 () Unit!21489)

(declare-fun Unit!21617 () Unit!21489)

(assert (=> b!1418696 (= lt!478326 Unit!21617)))

(assert (=> b!1418696 (matchR!1798 (regex!2535 (rule!4298 (h!19954 (ite c!233087 call!96535 call!96501)))) (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96535 call!96501)))))))

(declare-fun lt!478328 () Unit!21489)

(declare-fun Unit!21618 () Unit!21489)

(assert (=> b!1418696 (= lt!478328 Unit!21618)))

(assert (=> b!1418696 (= (rule!4298 (h!19954 (ite c!233087 call!96535 call!96501))) (rule!4298 (h!19954 (ite c!233087 call!96535 call!96501))))))

(declare-fun lt!478329 () Unit!21489)

(declare-fun Unit!21619 () Unit!21489)

(assert (=> b!1418696 (= lt!478329 Unit!21619)))

(declare-fun lt!478321 () Unit!21489)

(assert (=> b!1418696 (= lt!478321 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!10 Lexer!2207 (rules!11126 (head!2755 objs!24)) (h!19954 (ite c!233087 call!96535 call!96501)) (rule!4298 (h!19954 (ite c!233087 call!96535 call!96501))) (list!5733 lt!478309)))))

(declare-fun b!1418697 () Bool)

(assert (=> b!1418697 (= e!905600 (isEmpty!8953 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (head!2755 objs!24)) (print!982 Lexer!2207 (seqFromList!1675 (ite c!233087 call!96535 call!96501)))))))))

(assert (= (and d!406188 c!233160) b!1418695))

(assert (= (and d!406188 (not c!233160)) b!1418696))

(assert (= (and d!406188 res!642376) b!1418697))

(declare-fun m!1606131 () Bool)

(assert (=> d!406188 m!1606131))

(declare-fun m!1606133 () Bool)

(assert (=> d!406188 m!1606133))

(assert (=> d!406188 m!1606131))

(declare-fun m!1606135 () Bool)

(assert (=> d!406188 m!1606135))

(assert (=> d!406188 m!1606135))

(declare-fun m!1606137 () Bool)

(assert (=> d!406188 m!1606137))

(declare-fun m!1606139 () Bool)

(assert (=> d!406188 m!1606139))

(declare-fun m!1606141 () Bool)

(assert (=> b!1418696 m!1606141))

(declare-fun m!1606143 () Bool)

(assert (=> b!1418696 m!1606143))

(declare-fun m!1606145 () Bool)

(assert (=> b!1418696 m!1606145))

(declare-fun m!1606147 () Bool)

(assert (=> b!1418696 m!1606147))

(declare-fun m!1606149 () Bool)

(assert (=> b!1418696 m!1606149))

(assert (=> b!1418696 m!1606145))

(declare-fun m!1606151 () Bool)

(assert (=> b!1418696 m!1606151))

(declare-fun m!1606153 () Bool)

(assert (=> b!1418696 m!1606153))

(declare-fun m!1606155 () Bool)

(assert (=> b!1418696 m!1606155))

(assert (=> b!1418696 m!1606141))

(declare-fun m!1606157 () Bool)

(assert (=> b!1418696 m!1606157))

(declare-fun m!1606159 () Bool)

(assert (=> b!1418696 m!1606159))

(declare-fun m!1606161 () Bool)

(assert (=> b!1418696 m!1606161))

(declare-fun m!1606163 () Bool)

(assert (=> b!1418696 m!1606163))

(declare-fun m!1606165 () Bool)

(assert (=> b!1418696 m!1606165))

(assert (=> b!1418696 m!1606155))

(declare-fun m!1606167 () Bool)

(assert (=> b!1418696 m!1606167))

(declare-fun m!1606169 () Bool)

(assert (=> b!1418696 m!1606169))

(declare-fun m!1606171 () Bool)

(assert (=> b!1418696 m!1606171))

(assert (=> b!1418696 m!1606169))

(declare-fun m!1606173 () Bool)

(assert (=> b!1418696 m!1606173))

(declare-fun m!1606175 () Bool)

(assert (=> b!1418696 m!1606175))

(assert (=> b!1418696 m!1606161))

(declare-fun m!1606177 () Bool)

(assert (=> b!1418696 m!1606177))

(assert (=> b!1418696 m!1606157))

(declare-fun m!1606179 () Bool)

(assert (=> b!1418696 m!1606179))

(assert (=> b!1418696 m!1606161))

(declare-fun m!1606181 () Bool)

(assert (=> b!1418696 m!1606181))

(declare-fun m!1606183 () Bool)

(assert (=> b!1418696 m!1606183))

(assert (=> b!1418696 m!1606131))

(assert (=> b!1418696 m!1606153))

(declare-fun m!1606185 () Bool)

(assert (=> b!1418696 m!1606185))

(assert (=> b!1418696 m!1606131))

(assert (=> b!1418696 m!1606135))

(declare-fun m!1606187 () Bool)

(assert (=> b!1418696 m!1606187))

(assert (=> b!1418696 m!1606149))

(declare-fun m!1606189 () Bool)

(assert (=> b!1418696 m!1606189))

(assert (=> b!1418696 m!1606159))

(assert (=> b!1418696 m!1606145))

(assert (=> b!1418696 m!1606179))

(declare-fun m!1606191 () Bool)

(assert (=> b!1418696 m!1606191))

(assert (=> b!1418696 m!1606165))

(assert (=> b!1418696 m!1606187))

(declare-fun m!1606193 () Bool)

(assert (=> b!1418696 m!1606193))

(declare-fun m!1606195 () Bool)

(assert (=> b!1418696 m!1606195))

(declare-fun m!1606197 () Bool)

(assert (=> b!1418696 m!1606197))

(declare-fun m!1606199 () Bool)

(assert (=> b!1418696 m!1606199))

(assert (=> b!1418696 m!1606187))

(declare-fun m!1606201 () Bool)

(assert (=> b!1418696 m!1606201))

(declare-fun m!1606203 () Bool)

(assert (=> b!1418696 m!1606203))

(assert (=> b!1418696 m!1606159))

(declare-fun m!1606205 () Bool)

(assert (=> b!1418696 m!1606205))

(assert (=> b!1418696 m!1606161))

(declare-fun m!1606207 () Bool)

(assert (=> b!1418696 m!1606207))

(assert (=> b!1418696 m!1606173))

(assert (=> b!1418696 m!1606159))

(declare-fun m!1606209 () Bool)

(assert (=> b!1418696 m!1606209))

(assert (=> b!1418696 m!1606195))

(declare-fun m!1606211 () Bool)

(assert (=> b!1418696 m!1606211))

(assert (=> b!1418697 m!1606131))

(assert (=> b!1418697 m!1606131))

(assert (=> b!1418697 m!1606135))

(assert (=> b!1418697 m!1606135))

(assert (=> b!1418697 m!1606137))

(declare-fun m!1606213 () Bool)

(assert (=> b!1418697 m!1606213))

(assert (=> bm!96508 d!406188))

(declare-fun d!406194 () Bool)

(declare-fun res!642387 () Bool)

(declare-fun e!905612 () Bool)

(assert (=> d!406194 (=> (not res!642387) (not e!905612))))

(assert (=> d!406194 (= res!642387 (<= (size!12007 (list!5740 (xs!7608 (c!233030 objs!24)))) 512))))

(assert (=> d!406194 (= (inv!19180 (c!233030 objs!24)) e!905612)))

(declare-fun b!1418714 () Bool)

(declare-fun res!642388 () Bool)

(assert (=> b!1418714 (=> (not res!642388) (not e!905612))))

(assert (=> b!1418714 (= res!642388 (= (csize!9993 (c!233030 objs!24)) (size!12007 (list!5740 (xs!7608 (c!233030 objs!24))))))))

(declare-fun b!1418715 () Bool)

(assert (=> b!1418715 (= e!905612 (and (> (csize!9993 (c!233030 objs!24)) 0) (<= (csize!9993 (c!233030 objs!24)) 512)))))

(assert (= (and d!406194 res!642387) b!1418714))

(assert (= (and b!1418714 res!642388) b!1418715))

(assert (=> d!406194 m!1605711))

(assert (=> d!406194 m!1605711))

(declare-fun m!1606229 () Bool)

(assert (=> d!406194 m!1606229))

(assert (=> b!1418714 m!1605711))

(assert (=> b!1418714 m!1605711))

(assert (=> b!1418714 m!1606229))

(assert (=> b!1418111 d!406194))

(declare-fun c!233164 () Bool)

(declare-fun d!406198 () Bool)

(assert (=> d!406198 (= c!233164 ((_ is Cons!14553) (ite c!233087 call!96527 (ite c!233083 (t!124254 lt!477743) lt!477775))))))

(declare-fun e!905614 () List!14617)

(assert (=> d!406198 (= (printList!663 (ite c!233087 lt!477772 (ite c!233083 Lexer!2207 lt!477725)) (ite c!233087 call!96527 (ite c!233083 (t!124254 lt!477743) lt!477775))) e!905614)))

(declare-fun b!1418717 () Bool)

(assert (=> b!1418717 (= e!905614 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233087 call!96527 (ite c!233083 (t!124254 lt!477743) lt!477775))))) (printList!663 (ite c!233087 lt!477772 (ite c!233083 Lexer!2207 lt!477725)) (t!124254 (ite c!233087 call!96527 (ite c!233083 (t!124254 lt!477743) lt!477775))))))))

(declare-fun b!1418718 () Bool)

(assert (=> b!1418718 (= e!905614 Nil!14551)))

(assert (= (and d!406198 c!233164) b!1418717))

(assert (= (and d!406198 (not c!233164)) b!1418718))

(declare-fun m!1606231 () Bool)

(assert (=> b!1418717 m!1606231))

(assert (=> b!1418717 m!1606231))

(declare-fun m!1606233 () Bool)

(assert (=> b!1418717 m!1606233))

(declare-fun m!1606235 () Bool)

(assert (=> b!1418717 m!1606235))

(assert (=> b!1418717 m!1606233))

(assert (=> b!1418717 m!1606235))

(declare-fun m!1606237 () Bool)

(assert (=> b!1418717 m!1606237))

(assert (=> bm!96520 d!406198))

(assert (=> b!1418088 d!406052))

(declare-fun lt!478342 () List!14619)

(declare-fun b!1418725 () Bool)

(declare-fun e!905619 () Bool)

(assert (=> b!1418725 (= e!905619 (or (not (= lt!477816 Nil!14553)) (= lt!478342 lt!477828)))))

(declare-fun b!1418724 () Bool)

(declare-fun res!642390 () Bool)

(assert (=> b!1418724 (=> (not res!642390) (not e!905619))))

(assert (=> b!1418724 (= res!642390 (= (size!12012 lt!478342) (+ (size!12012 lt!477828) (size!12012 lt!477816))))))

(declare-fun b!1418722 () Bool)

(declare-fun e!905618 () List!14619)

(assert (=> b!1418722 (= e!905618 lt!477816)))

(declare-fun d!406200 () Bool)

(assert (=> d!406200 e!905619))

(declare-fun res!642391 () Bool)

(assert (=> d!406200 (=> (not res!642391) (not e!905619))))

(assert (=> d!406200 (= res!642391 (= (content!2150 lt!478342) ((_ map or) (content!2150 lt!477828) (content!2150 lt!477816))))))

(assert (=> d!406200 (= lt!478342 e!905618)))

(declare-fun c!233165 () Bool)

(assert (=> d!406200 (= c!233165 ((_ is Nil!14553) lt!477828))))

(assert (=> d!406200 (= (++!3813 lt!477828 lt!477816) lt!478342)))

(declare-fun b!1418723 () Bool)

(assert (=> b!1418723 (= e!905618 (Cons!14553 (h!19954 lt!477828) (++!3813 (t!124254 lt!477828) lt!477816)))))

(assert (= (and d!406200 c!233165) b!1418722))

(assert (= (and d!406200 (not c!233165)) b!1418723))

(assert (= (and d!406200 res!642391) b!1418724))

(assert (= (and b!1418724 res!642390) b!1418725))

(declare-fun m!1606243 () Bool)

(assert (=> b!1418724 m!1606243))

(declare-fun m!1606245 () Bool)

(assert (=> b!1418724 m!1606245))

(declare-fun m!1606247 () Bool)

(assert (=> b!1418724 m!1606247))

(declare-fun m!1606249 () Bool)

(assert (=> d!406200 m!1606249))

(declare-fun m!1606253 () Bool)

(assert (=> d!406200 m!1606253))

(declare-fun m!1606255 () Bool)

(assert (=> d!406200 m!1606255))

(declare-fun m!1606257 () Bool)

(assert (=> b!1418723 m!1606257))

(assert (=> b!1418252 d!406200))

(declare-fun d!406204 () Bool)

(assert (=> d!406204 (= (printList!663 (ite c!233087 lt!477772 lt!477725) (++!3813 (ite c!233087 lt!477758 lt!477775) (ite c!233087 lt!477728 lt!477781))) (++!3814 (printList!663 (ite c!233087 lt!477772 lt!477725) (ite c!233087 lt!477758 lt!477775)) (printList!663 (ite c!233087 lt!477772 lt!477725) (ite c!233087 lt!477728 lt!477781))))))

(declare-fun lt!478348 () Unit!21489)

(declare-fun choose!8744 (LexerInterface!2209 List!14619 List!14619) Unit!21489)

(assert (=> d!406204 (= lt!478348 (choose!8744 (ite c!233087 lt!477772 lt!477725) (ite c!233087 lt!477758 lt!477775) (ite c!233087 lt!477728 lt!477781)))))

(assert (=> d!406204 (= (lemmaPrintConcatSameAsConcatPrint!28 (ite c!233087 lt!477772 lt!477725) (ite c!233087 lt!477758 lt!477775) (ite c!233087 lt!477728 lt!477781)) lt!478348)))

(declare-fun bs!339580 () Bool)

(assert (= bs!339580 d!406204))

(declare-fun m!1606289 () Bool)

(assert (=> bs!339580 m!1606289))

(declare-fun m!1606291 () Bool)

(assert (=> bs!339580 m!1606291))

(declare-fun m!1606293 () Bool)

(assert (=> bs!339580 m!1606293))

(assert (=> bs!339580 m!1606289))

(declare-fun m!1606295 () Bool)

(assert (=> bs!339580 m!1606295))

(declare-fun m!1606297 () Bool)

(assert (=> bs!339580 m!1606297))

(assert (=> bs!339580 m!1606295))

(assert (=> bs!339580 m!1606291))

(declare-fun m!1606299 () Bool)

(assert (=> bs!339580 m!1606299))

(assert (=> bm!96497 d!406204))

(declare-fun d!406212 () Bool)

(assert (=> d!406212 (= (list!5734 (ite c!233087 (tokens!1830 sep!3) (tokens!1830 (head!2755 objs!24)))) (list!5741 (c!233029 (ite c!233087 (tokens!1830 sep!3) (tokens!1830 (head!2755 objs!24))))))))

(declare-fun bs!339581 () Bool)

(assert (= bs!339581 d!406212))

(declare-fun m!1606301 () Bool)

(assert (=> bs!339581 m!1606301))

(assert (=> bm!96524 d!406212))

(declare-fun d!406214 () Bool)

(assert (=> d!406214 (= (head!2760 (list!5735 objs!24)) (h!19955 (list!5735 objs!24)))))

(assert (=> d!406016 d!406214))

(declare-fun d!406216 () Bool)

(assert (=> d!406216 (= (list!5735 objs!24) (list!5739 (c!233030 objs!24)))))

(declare-fun bs!339583 () Bool)

(assert (= bs!339583 d!406216))

(assert (=> bs!339583 m!1605715))

(assert (=> d!406016 d!406216))

(declare-fun d!406222 () Bool)

(declare-fun lt!478368 () PrintableTokens!852)

(assert (=> d!406222 (= lt!478368 (head!2760 (list!5739 (c!233030 objs!24))))))

(declare-fun e!905635 () PrintableTokens!852)

(assert (=> d!406222 (= lt!478368 e!905635)))

(declare-fun c!233169 () Bool)

(assert (=> d!406222 (= c!233169 ((_ is Leaf!7345) (c!233030 objs!24)))))

(assert (=> d!406222 (isBalanced!1452 (c!233030 objs!24))))

(assert (=> d!406222 (= (head!2761 (c!233030 objs!24)) lt!478368)))

(declare-fun b!1418754 () Bool)

(declare-fun apply!3719 (IArray!9767 Int) PrintableTokens!852)

(assert (=> b!1418754 (= e!905635 (apply!3719 (xs!7608 (c!233030 objs!24)) 0))))

(declare-fun b!1418755 () Bool)

(assert (=> b!1418755 (= e!905635 (head!2761 (left!12442 (c!233030 objs!24))))))

(assert (= (and d!406222 c!233169) b!1418754))

(assert (= (and d!406222 (not c!233169)) b!1418755))

(assert (=> d!406222 m!1605715))

(assert (=> d!406222 m!1605715))

(declare-fun m!1606375 () Bool)

(assert (=> d!406222 m!1606375))

(assert (=> d!406222 m!1605039))

(declare-fun m!1606379 () Bool)

(assert (=> b!1418754 m!1606379))

(declare-fun m!1606383 () Bool)

(assert (=> b!1418755 m!1606383))

(assert (=> d!406016 d!406222))

(assert (=> d!406016 d!406026))

(declare-fun d!406236 () Bool)

(declare-fun c!233170 () Bool)

(assert (=> d!406236 (= c!233170 ((_ is Node!4880) (left!12441 (c!233029 (tokens!1830 acc!229)))))))

(declare-fun e!905636 () Bool)

(assert (=> d!406236 (= (inv!19170 (left!12441 (c!233029 (tokens!1830 acc!229)))) e!905636)))

(declare-fun b!1418756 () Bool)

(assert (=> b!1418756 (= e!905636 (inv!19177 (left!12441 (c!233029 (tokens!1830 acc!229)))))))

(declare-fun b!1418757 () Bool)

(declare-fun e!905637 () Bool)

(assert (=> b!1418757 (= e!905636 e!905637)))

(declare-fun res!642411 () Bool)

(assert (=> b!1418757 (= res!642411 (not ((_ is Leaf!7344) (left!12441 (c!233029 (tokens!1830 acc!229))))))))

(assert (=> b!1418757 (=> res!642411 e!905637)))

(declare-fun b!1418758 () Bool)

(assert (=> b!1418758 (= e!905637 (inv!19178 (left!12441 (c!233029 (tokens!1830 acc!229)))))))

(assert (= (and d!406236 c!233170) b!1418756))

(assert (= (and d!406236 (not c!233170)) b!1418757))

(assert (= (and b!1418757 (not res!642411)) b!1418758))

(declare-fun m!1606393 () Bool)

(assert (=> b!1418756 m!1606393))

(declare-fun m!1606395 () Bool)

(assert (=> b!1418758 m!1606395))

(assert (=> b!1418385 d!406236))

(declare-fun d!406242 () Bool)

(declare-fun c!233171 () Bool)

(assert (=> d!406242 (= c!233171 ((_ is Node!4880) (right!12771 (c!233029 (tokens!1830 acc!229)))))))

(declare-fun e!905638 () Bool)

(assert (=> d!406242 (= (inv!19170 (right!12771 (c!233029 (tokens!1830 acc!229)))) e!905638)))

(declare-fun b!1418759 () Bool)

(assert (=> b!1418759 (= e!905638 (inv!19177 (right!12771 (c!233029 (tokens!1830 acc!229)))))))

(declare-fun b!1418760 () Bool)

(declare-fun e!905639 () Bool)

(assert (=> b!1418760 (= e!905638 e!905639)))

(declare-fun res!642412 () Bool)

(assert (=> b!1418760 (= res!642412 (not ((_ is Leaf!7344) (right!12771 (c!233029 (tokens!1830 acc!229))))))))

(assert (=> b!1418760 (=> res!642412 e!905639)))

(declare-fun b!1418761 () Bool)

(assert (=> b!1418761 (= e!905639 (inv!19178 (right!12771 (c!233029 (tokens!1830 acc!229)))))))

(assert (= (and d!406242 c!233171) b!1418759))

(assert (= (and d!406242 (not c!233171)) b!1418760))

(assert (= (and b!1418760 (not res!642412)) b!1418761))

(declare-fun m!1606397 () Bool)

(assert (=> b!1418759 m!1606397))

(declare-fun m!1606399 () Bool)

(assert (=> b!1418761 m!1606399))

(assert (=> b!1418385 d!406242))

(declare-fun d!406244 () Bool)

(assert (=> d!406244 (= (inv!19164 (tag!2797 (h!19953 (rules!11126 sep!3)))) (= (mod (str.len (value!81879 (tag!2797 (h!19953 (rules!11126 sep!3))))) 2) 0))))

(assert (=> b!1418372 d!406244))

(declare-fun d!406246 () Bool)

(declare-fun res!642416 () Bool)

(declare-fun e!905644 () Bool)

(assert (=> d!406246 (=> (not res!642416) (not e!905644))))

(declare-fun semiInverseModEq!980 (Int Int) Bool)

(assert (=> d!406246 (= res!642416 (semiInverseModEq!980 (toChars!3693 (transformation!2535 (h!19953 (rules!11126 sep!3)))) (toValue!3834 (transformation!2535 (h!19953 (rules!11126 sep!3))))))))

(assert (=> d!406246 (= (inv!19186 (transformation!2535 (h!19953 (rules!11126 sep!3)))) e!905644)))

(declare-fun b!1418767 () Bool)

(declare-fun equivClasses!939 (Int Int) Bool)

(assert (=> b!1418767 (= e!905644 (equivClasses!939 (toChars!3693 (transformation!2535 (h!19953 (rules!11126 sep!3)))) (toValue!3834 (transformation!2535 (h!19953 (rules!11126 sep!3))))))))

(assert (= (and d!406246 res!642416) b!1418767))

(declare-fun m!1606453 () Bool)

(assert (=> d!406246 m!1606453))

(declare-fun m!1606457 () Bool)

(assert (=> b!1418767 m!1606457))

(assert (=> b!1418372 d!406246))

(declare-fun lt!478396 () List!14619)

(declare-fun b!1418771 () Bool)

(declare-fun e!905646 () Bool)

(assert (=> b!1418771 (= e!905646 (or (not (= (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477753)) Nil!14553)) (= lt!478396 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477721)))))))

(declare-fun b!1418770 () Bool)

(declare-fun res!642417 () Bool)

(assert (=> b!1418770 (=> (not res!642417) (not e!905646))))

(assert (=> b!1418770 (= res!642417 (= (size!12012 lt!478396) (+ (size!12012 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477721))) (size!12012 (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477753))))))))

(declare-fun e!905645 () List!14619)

(declare-fun b!1418768 () Bool)

(assert (=> b!1418768 (= e!905645 (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477753)))))

(declare-fun d!406248 () Bool)

(assert (=> d!406248 e!905646))

(declare-fun res!642418 () Bool)

(assert (=> d!406248 (=> (not res!642418) (not e!905646))))

(assert (=> d!406248 (= res!642418 (= (content!2150 lt!478396) ((_ map or) (content!2150 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477721))) (content!2150 (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477753))))))))

(assert (=> d!406248 (= lt!478396 e!905645)))

(declare-fun c!233173 () Bool)

(assert (=> d!406248 (= c!233173 ((_ is Nil!14553) (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477721))))))

(assert (=> d!406248 (= (++!3813 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477721)) (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477753))) lt!478396)))

(declare-fun b!1418769 () Bool)

(assert (=> b!1418769 (= e!905645 (Cons!14553 (h!19954 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477721))) (++!3813 (t!124254 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477721))) (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477753)))))))

(assert (= (and d!406248 c!233173) b!1418768))

(assert (= (and d!406248 (not c!233173)) b!1418769))

(assert (= (and d!406248 res!642418) b!1418770))

(assert (= (and b!1418770 res!642417) b!1418771))

(declare-fun m!1606479 () Bool)

(assert (=> b!1418770 m!1606479))

(declare-fun m!1606481 () Bool)

(assert (=> b!1418770 m!1606481))

(declare-fun m!1606483 () Bool)

(assert (=> b!1418770 m!1606483))

(declare-fun m!1606485 () Bool)

(assert (=> d!406248 m!1606485))

(declare-fun m!1606487 () Bool)

(assert (=> d!406248 m!1606487))

(declare-fun m!1606491 () Bool)

(assert (=> d!406248 m!1606491))

(declare-fun m!1606493 () Bool)

(assert (=> b!1418769 m!1606493))

(assert (=> bm!96500 d!406248))

(declare-fun lt!478397 () List!14619)

(declare-fun b!1418775 () Bool)

(declare-fun e!905648 () Bool)

(assert (=> b!1418775 (= e!905648 (or (not (= (list!5734 (tokens!1830 sep!3)) Nil!14553)) (= lt!478397 (list!5734 (tokens!1830 (head!2755 objs!24))))))))

(declare-fun b!1418774 () Bool)

(declare-fun res!642419 () Bool)

(assert (=> b!1418774 (=> (not res!642419) (not e!905648))))

(assert (=> b!1418774 (= res!642419 (= (size!12012 lt!478397) (+ (size!12012 (list!5734 (tokens!1830 (head!2755 objs!24)))) (size!12012 (list!5734 (tokens!1830 sep!3))))))))

(declare-fun b!1418772 () Bool)

(declare-fun e!905647 () List!14619)

(assert (=> b!1418772 (= e!905647 (list!5734 (tokens!1830 sep!3)))))

(declare-fun d!406250 () Bool)

(assert (=> d!406250 e!905648))

(declare-fun res!642420 () Bool)

(assert (=> d!406250 (=> (not res!642420) (not e!905648))))

(assert (=> d!406250 (= res!642420 (= (content!2150 lt!478397) ((_ map or) (content!2150 (list!5734 (tokens!1830 (head!2755 objs!24)))) (content!2150 (list!5734 (tokens!1830 sep!3))))))))

(assert (=> d!406250 (= lt!478397 e!905647)))

(declare-fun c!233174 () Bool)

(assert (=> d!406250 (= c!233174 ((_ is Nil!14553) (list!5734 (tokens!1830 (head!2755 objs!24)))))))

(assert (=> d!406250 (= (++!3813 (list!5734 (tokens!1830 (head!2755 objs!24))) (list!5734 (tokens!1830 sep!3))) lt!478397)))

(declare-fun b!1418773 () Bool)

(assert (=> b!1418773 (= e!905647 (Cons!14553 (h!19954 (list!5734 (tokens!1830 (head!2755 objs!24)))) (++!3813 (t!124254 (list!5734 (tokens!1830 (head!2755 objs!24)))) (list!5734 (tokens!1830 sep!3)))))))

(assert (= (and d!406250 c!233174) b!1418772))

(assert (= (and d!406250 (not c!233174)) b!1418773))

(assert (= (and d!406250 res!642420) b!1418774))

(assert (= (and b!1418774 res!642419) b!1418775))

(declare-fun m!1606499 () Bool)

(assert (=> b!1418774 m!1606499))

(assert (=> b!1418774 m!1604821))

(declare-fun m!1606503 () Bool)

(assert (=> b!1418774 m!1606503))

(assert (=> b!1418774 m!1604823))

(declare-fun m!1606505 () Bool)

(assert (=> b!1418774 m!1606505))

(declare-fun m!1606507 () Bool)

(assert (=> d!406250 m!1606507))

(assert (=> d!406250 m!1604821))

(declare-fun m!1606509 () Bool)

(assert (=> d!406250 m!1606509))

(assert (=> d!406250 m!1604823))

(declare-fun m!1606511 () Bool)

(assert (=> d!406250 m!1606511))

(assert (=> b!1418773 m!1604823))

(declare-fun m!1606513 () Bool)

(assert (=> b!1418773 m!1606513))

(assert (=> b!1418229 d!406250))

(declare-fun d!406254 () Bool)

(assert (=> d!406254 (= (list!5734 (tokens!1830 (get!4473 lt!477749))) (list!5741 (c!233029 (tokens!1830 (get!4473 lt!477749)))))))

(declare-fun bs!339591 () Bool)

(assert (= bs!339591 d!406254))

(declare-fun m!1606515 () Bool)

(assert (=> bs!339591 m!1606515))

(assert (=> b!1418229 d!406254))

(declare-fun d!406256 () Bool)

(assert (=> d!406256 (= (list!5734 (tokens!1830 sep!3)) (list!5741 (c!233029 (tokens!1830 sep!3))))))

(declare-fun bs!339592 () Bool)

(assert (= bs!339592 d!406256))

(declare-fun m!1606517 () Bool)

(assert (=> bs!339592 m!1606517))

(assert (=> b!1418229 d!406256))

(declare-fun d!406258 () Bool)

(assert (=> d!406258 (= (list!5734 (tokens!1830 (head!2755 objs!24))) (list!5741 (c!233029 (tokens!1830 (head!2755 objs!24)))))))

(declare-fun bs!339593 () Bool)

(assert (= bs!339593 d!406258))

(declare-fun m!1606519 () Bool)

(assert (=> bs!339593 m!1606519))

(assert (=> b!1418229 d!406258))

(declare-fun d!406260 () Bool)

(assert (=> d!406260 (= (get!4473 lt!477749) (v!22115 lt!477749))))

(assert (=> b!1418229 d!406260))

(declare-fun d!406264 () Bool)

(declare-fun lt!478400 () BalanceConc!9698)

(assert (=> d!406264 (= (list!5733 lt!478400) (printList!663 Lexer!2207 (list!5734 (tokens!1830 (v!22115 lt!477384)))))))

(assert (=> d!406264 (= lt!478400 (printTailRec!645 Lexer!2207 (tokens!1830 (v!22115 lt!477384)) 0 (BalanceConc!9699 Empty!4879)))))

(assert (=> d!406264 (= (print!982 Lexer!2207 (tokens!1830 (v!22115 lt!477384))) lt!478400)))

(declare-fun bs!339594 () Bool)

(assert (= bs!339594 d!406264))

(declare-fun m!1606535 () Bool)

(assert (=> bs!339594 m!1606535))

(assert (=> bs!339594 m!1604963))

(assert (=> bs!339594 m!1604963))

(declare-fun m!1606541 () Bool)

(assert (=> bs!339594 m!1606541))

(assert (=> bs!339594 m!1604985))

(assert (=> bm!96558 d!406264))

(declare-fun d!406266 () Bool)

(declare-fun list!5742 (Conc!4879) List!14617)

(assert (=> d!406266 (= (list!5733 (print!981 acc!229)) (list!5742 (c!233028 (print!981 acc!229))))))

(declare-fun bs!339596 () Bool)

(assert (= bs!339596 d!406266))

(declare-fun m!1606561 () Bool)

(assert (=> bs!339596 m!1606561))

(assert (=> b!1418239 d!406266))

(declare-fun d!406274 () Bool)

(declare-fun e!905653 () Bool)

(assert (=> d!406274 e!905653))

(declare-fun res!642424 () Bool)

(assert (=> d!406274 (=> (not res!642424) (not e!905653))))

(declare-fun lt!478405 () BalanceConc!9698)

(assert (=> d!406274 (= res!642424 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (v!22115 lt!477384)) lt!478405))) (list!5734 (tokens!1830 (v!22115 lt!477384)))))))

(assert (=> d!406274 (= lt!478405 (print!982 Lexer!2207 (tokens!1830 (v!22115 lt!477384))))))

(declare-fun lt!478406 () Unit!21489)

(assert (=> d!406274 (= lt!478406 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (list!5734 (tokens!1830 (v!22115 lt!477384)))))))

(assert (=> d!406274 (= (print!981 (v!22115 lt!477384)) lt!478405)))

(declare-fun b!1418781 () Bool)

(assert (=> b!1418781 (= e!905653 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (v!22115 lt!477384)) lt!478405)))))))

(assert (= (and d!406274 res!642424) b!1418781))

(declare-fun m!1606573 () Bool)

(assert (=> d!406274 m!1606573))

(assert (=> d!406274 m!1604963))

(assert (=> d!406274 m!1604989))

(declare-fun m!1606577 () Bool)

(assert (=> d!406274 m!1606577))

(assert (=> d!406274 m!1604963))

(declare-fun m!1606579 () Bool)

(assert (=> d!406274 m!1606579))

(assert (=> b!1418781 m!1606573))

(declare-fun m!1606581 () Bool)

(assert (=> b!1418781 m!1606581))

(assert (=> b!1418781 m!1606581))

(declare-fun m!1606583 () Bool)

(assert (=> b!1418781 m!1606583))

(assert (=> b!1418239 d!406274))

(declare-fun d!406278 () Bool)

(assert (=> d!406278 (= (list!5733 (print!981 (v!22115 lt!477384))) (list!5742 (c!233028 (print!981 (v!22115 lt!477384)))))))

(declare-fun bs!339597 () Bool)

(assert (= bs!339597 d!406278))

(declare-fun m!1606587 () Bool)

(assert (=> bs!339597 m!1606587))

(assert (=> b!1418239 d!406278))

(declare-fun d!406280 () Bool)

(assert (=> d!406280 (= (list!5733 (print!981 (get!4473 lt!477825))) (list!5742 (c!233028 (print!981 (get!4473 lt!477825)))))))

(declare-fun bs!339598 () Bool)

(assert (= bs!339598 d!406280))

(declare-fun m!1606595 () Bool)

(assert (=> bs!339598 m!1606595))

(assert (=> b!1418239 d!406280))

(declare-fun b!1418808 () Bool)

(declare-fun res!642437 () Bool)

(declare-fun e!905668 () Bool)

(assert (=> b!1418808 (=> (not res!642437) (not e!905668))))

(declare-fun lt!478416 () List!14617)

(declare-fun size!12015 (List!14617) Int)

(assert (=> b!1418808 (= res!642437 (= (size!12015 lt!478416) (+ (size!12015 (list!5733 (print!981 acc!229))) (size!12015 (list!5733 (print!981 (v!22115 lt!477384)))))))))

(declare-fun b!1418806 () Bool)

(declare-fun e!905669 () List!14617)

(assert (=> b!1418806 (= e!905669 (list!5733 (print!981 (v!22115 lt!477384))))))

(declare-fun b!1418807 () Bool)

(assert (=> b!1418807 (= e!905669 (Cons!14551 (h!19952 (list!5733 (print!981 acc!229))) (++!3814 (t!124252 (list!5733 (print!981 acc!229))) (list!5733 (print!981 (v!22115 lt!477384))))))))

(declare-fun b!1418809 () Bool)

(assert (=> b!1418809 (= e!905668 (or (not (= (list!5733 (print!981 (v!22115 lt!477384))) Nil!14551)) (= lt!478416 (list!5733 (print!981 acc!229)))))))

(declare-fun d!406282 () Bool)

(assert (=> d!406282 e!905668))

(declare-fun res!642438 () Bool)

(assert (=> d!406282 (=> (not res!642438) (not e!905668))))

(declare-fun content!2151 (List!14617) (InoxSet (_ BitVec 16)))

(assert (=> d!406282 (= res!642438 (= (content!2151 lt!478416) ((_ map or) (content!2151 (list!5733 (print!981 acc!229))) (content!2151 (list!5733 (print!981 (v!22115 lt!477384)))))))))

(assert (=> d!406282 (= lt!478416 e!905669)))

(declare-fun c!233182 () Bool)

(assert (=> d!406282 (= c!233182 ((_ is Nil!14551) (list!5733 (print!981 acc!229))))))

(assert (=> d!406282 (= (++!3814 (list!5733 (print!981 acc!229)) (list!5733 (print!981 (v!22115 lt!477384)))) lt!478416)))

(assert (= (and d!406282 c!233182) b!1418806))

(assert (= (and d!406282 (not c!233182)) b!1418807))

(assert (= (and d!406282 res!642438) b!1418808))

(assert (= (and b!1418808 res!642437) b!1418809))

(declare-fun m!1606661 () Bool)

(assert (=> b!1418808 m!1606661))

(assert (=> b!1418808 m!1604935))

(declare-fun m!1606663 () Bool)

(assert (=> b!1418808 m!1606663))

(assert (=> b!1418808 m!1604937))

(declare-fun m!1606665 () Bool)

(assert (=> b!1418808 m!1606665))

(assert (=> b!1418807 m!1604937))

(declare-fun m!1606667 () Bool)

(assert (=> b!1418807 m!1606667))

(declare-fun m!1606669 () Bool)

(assert (=> d!406282 m!1606669))

(assert (=> d!406282 m!1604935))

(declare-fun m!1606671 () Bool)

(assert (=> d!406282 m!1606671))

(assert (=> d!406282 m!1604937))

(declare-fun m!1606673 () Bool)

(assert (=> d!406282 m!1606673))

(assert (=> b!1418239 d!406282))

(declare-fun d!406306 () Bool)

(declare-fun e!905670 () Bool)

(assert (=> d!406306 e!905670))

(declare-fun res!642439 () Bool)

(assert (=> d!406306 (=> (not res!642439) (not e!905670))))

(declare-fun lt!478419 () BalanceConc!9698)

(assert (=> d!406306 (= res!642439 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 acc!229) lt!478419))) (list!5734 (tokens!1830 acc!229))))))

(assert (=> d!406306 (= lt!478419 (print!982 Lexer!2207 (tokens!1830 acc!229)))))

(declare-fun lt!478420 () Unit!21489)

(assert (=> d!406306 (= lt!478420 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 acc!229) (list!5734 (tokens!1830 acc!229))))))

(assert (=> d!406306 (= (print!981 acc!229) lt!478419)))

(declare-fun b!1418810 () Bool)

(assert (=> b!1418810 (= e!905670 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 acc!229) lt!478419)))))))

(assert (= (and d!406306 res!642439) b!1418810))

(declare-fun m!1606675 () Bool)

(assert (=> d!406306 m!1606675))

(assert (=> d!406306 m!1604961))

(assert (=> d!406306 m!1605029))

(declare-fun m!1606677 () Bool)

(assert (=> d!406306 m!1606677))

(assert (=> d!406306 m!1604961))

(declare-fun m!1606679 () Bool)

(assert (=> d!406306 m!1606679))

(assert (=> b!1418810 m!1606675))

(declare-fun m!1606681 () Bool)

(assert (=> b!1418810 m!1606681))

(assert (=> b!1418810 m!1606681))

(declare-fun m!1606683 () Bool)

(assert (=> b!1418810 m!1606683))

(assert (=> b!1418239 d!406306))

(declare-fun d!406308 () Bool)

(assert (=> d!406308 (= (get!4473 lt!477825) (v!22115 lt!477825))))

(assert (=> b!1418239 d!406308))

(declare-fun d!406310 () Bool)

(declare-fun e!905671 () Bool)

(assert (=> d!406310 e!905671))

(declare-fun res!642440 () Bool)

(assert (=> d!406310 (=> (not res!642440) (not e!905671))))

(declare-fun lt!478422 () BalanceConc!9698)

(assert (=> d!406310 (= res!642440 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (get!4473 lt!477825)) lt!478422))) (list!5734 (tokens!1830 (get!4473 lt!477825)))))))

(assert (=> d!406310 (= lt!478422 (print!982 Lexer!2207 (tokens!1830 (get!4473 lt!477825))))))

(declare-fun lt!478423 () Unit!21489)

(assert (=> d!406310 (= lt!478423 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (get!4473 lt!477825)) (list!5734 (tokens!1830 (get!4473 lt!477825)))))))

(assert (=> d!406310 (= (print!981 (get!4473 lt!477825)) lt!478422)))

(declare-fun b!1418811 () Bool)

(assert (=> b!1418811 (= e!905671 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (get!4473 lt!477825)) lt!478422)))))))

(assert (= (and d!406310 res!642440) b!1418811))

(declare-fun m!1606685 () Bool)

(assert (=> d!406310 m!1606685))

(assert (=> d!406310 m!1604967))

(declare-fun m!1606687 () Bool)

(assert (=> d!406310 m!1606687))

(declare-fun m!1606689 () Bool)

(assert (=> d!406310 m!1606689))

(assert (=> d!406310 m!1604967))

(declare-fun m!1606691 () Bool)

(assert (=> d!406310 m!1606691))

(assert (=> b!1418811 m!1606685))

(declare-fun m!1606693 () Bool)

(assert (=> b!1418811 m!1606693))

(assert (=> b!1418811 m!1606693))

(declare-fun m!1606695 () Bool)

(assert (=> b!1418811 m!1606695))

(assert (=> b!1418239 d!406310))

(declare-fun d!406312 () Bool)

(assert (=> d!406312 (= (printList!663 (ite c!233083 lt!477729 lt!477735) (++!3813 (ite c!233083 lt!477746 lt!477752) (ite c!233083 lt!477733 lt!477740))) (++!3814 (printList!663 (ite c!233083 lt!477729 lt!477735) (ite c!233083 lt!477746 lt!477752)) (printList!663 (ite c!233083 lt!477729 lt!477735) (ite c!233083 lt!477733 lt!477740))))))

(declare-fun lt!478424 () Unit!21489)

(assert (=> d!406312 (= lt!478424 (choose!8744 (ite c!233083 lt!477729 lt!477735) (ite c!233083 lt!477746 lt!477752) (ite c!233083 lt!477733 lt!477740)))))

(assert (=> d!406312 (= (lemmaPrintConcatSameAsConcatPrint!28 (ite c!233083 lt!477729 lt!477735) (ite c!233083 lt!477746 lt!477752) (ite c!233083 lt!477733 lt!477740)) lt!478424)))

(declare-fun bs!339603 () Bool)

(assert (= bs!339603 d!406312))

(declare-fun m!1606697 () Bool)

(assert (=> bs!339603 m!1606697))

(declare-fun m!1606699 () Bool)

(assert (=> bs!339603 m!1606699))

(declare-fun m!1606701 () Bool)

(assert (=> bs!339603 m!1606701))

(assert (=> bs!339603 m!1606697))

(declare-fun m!1606705 () Bool)

(assert (=> bs!339603 m!1606705))

(declare-fun m!1606709 () Bool)

(assert (=> bs!339603 m!1606709))

(assert (=> bs!339603 m!1606705))

(assert (=> bs!339603 m!1606699))

(declare-fun m!1606711 () Bool)

(assert (=> bs!339603 m!1606711))

(assert (=> bm!96530 d!406312))

(declare-fun d!406314 () Bool)

(declare-fun c!233183 () Bool)

(assert (=> d!406314 (= c!233183 ((_ is Node!4881) (left!12442 (c!233030 objs!24))))))

(declare-fun e!905675 () Bool)

(assert (=> d!406314 (= (inv!19171 (left!12442 (c!233030 objs!24))) e!905675)))

(declare-fun b!1418817 () Bool)

(assert (=> b!1418817 (= e!905675 (inv!19179 (left!12442 (c!233030 objs!24))))))

(declare-fun b!1418818 () Bool)

(declare-fun e!905676 () Bool)

(assert (=> b!1418818 (= e!905675 e!905676)))

(declare-fun res!642441 () Bool)

(assert (=> b!1418818 (= res!642441 (not ((_ is Leaf!7345) (left!12442 (c!233030 objs!24)))))))

(assert (=> b!1418818 (=> res!642441 e!905676)))

(declare-fun b!1418819 () Bool)

(assert (=> b!1418819 (= e!905676 (inv!19180 (left!12442 (c!233030 objs!24))))))

(assert (= (and d!406314 c!233183) b!1418817))

(assert (= (and d!406314 (not c!233183)) b!1418818))

(assert (= (and b!1418818 (not res!642441)) b!1418819))

(declare-fun m!1606717 () Bool)

(assert (=> b!1418817 m!1606717))

(declare-fun m!1606719 () Bool)

(assert (=> b!1418819 m!1606719))

(assert (=> b!1418382 d!406314))

(declare-fun d!406318 () Bool)

(declare-fun c!233184 () Bool)

(assert (=> d!406318 (= c!233184 ((_ is Node!4881) (right!12772 (c!233030 objs!24))))))

(declare-fun e!905677 () Bool)

(assert (=> d!406318 (= (inv!19171 (right!12772 (c!233030 objs!24))) e!905677)))

(declare-fun b!1418820 () Bool)

(assert (=> b!1418820 (= e!905677 (inv!19179 (right!12772 (c!233030 objs!24))))))

(declare-fun b!1418821 () Bool)

(declare-fun e!905678 () Bool)

(assert (=> b!1418821 (= e!905677 e!905678)))

(declare-fun res!642442 () Bool)

(assert (=> b!1418821 (= res!642442 (not ((_ is Leaf!7345) (right!12772 (c!233030 objs!24)))))))

(assert (=> b!1418821 (=> res!642442 e!905678)))

(declare-fun b!1418822 () Bool)

(assert (=> b!1418822 (= e!905678 (inv!19180 (right!12772 (c!233030 objs!24))))))

(assert (= (and d!406318 c!233184) b!1418820))

(assert (= (and d!406318 (not c!233184)) b!1418821))

(assert (= (and b!1418821 (not res!642442)) b!1418822))

(declare-fun m!1606721 () Bool)

(assert (=> b!1418820 m!1606721))

(declare-fun m!1606723 () Bool)

(assert (=> b!1418822 m!1606723))

(assert (=> b!1418382 d!406318))

(declare-fun d!406320 () Bool)

(assert (=> d!406320 (= (inv!19187 (xs!7607 (c!233029 (tokens!1830 sep!3)))) (<= (size!12012 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 sep!3))))) 2147483647))))

(declare-fun bs!339605 () Bool)

(assert (= bs!339605 d!406320))

(declare-fun m!1606729 () Bool)

(assert (=> bs!339605 m!1606729))

(assert (=> b!1418369 d!406320))

(declare-fun lt!478428 () BalanceConc!9698)

(declare-fun d!406326 () Bool)

(assert (=> d!406326 (= (list!5733 lt!478428) (originalCharacters!3397 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743))))))

(declare-fun dynLambda!6727 (Int TokenValue!2625) BalanceConc!9698)

(assert (=> d!406326 (= lt!478428 (dynLambda!6727 (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743))))) (value!81880 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743)))))))

(assert (=> d!406326 (= (charsOf!1480 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743))) lt!478428)))

(declare-fun b_lambda!44615 () Bool)

(assert (=> (not b_lambda!44615) (not d!406326)))

(declare-fun tb!73549 () Bool)

(declare-fun t!124305 () Bool)

(assert (=> (and b!1418359 (= (toChars!3693 (transformation!2535 (h!19953 (rules!11126 acc!229)))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743)))))) t!124305) tb!73549))

(declare-fun b!1418827 () Bool)

(declare-fun tp!402352 () Bool)

(declare-fun e!905681 () Bool)

(declare-fun inv!19191 (Conc!4879) Bool)

(assert (=> b!1418827 (= e!905681 (and (inv!19191 (c!233028 (dynLambda!6727 (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743))))) (value!81880 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743)))))) tp!402352))))

(declare-fun result!89628 () Bool)

(declare-fun inv!19192 (BalanceConc!9698) Bool)

(assert (=> tb!73549 (= result!89628 (and (inv!19192 (dynLambda!6727 (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743))))) (value!81880 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743))))) e!905681))))

(assert (= tb!73549 b!1418827))

(declare-fun m!1606731 () Bool)

(assert (=> b!1418827 m!1606731))

(declare-fun m!1606733 () Bool)

(assert (=> tb!73549 m!1606733))

(assert (=> d!406326 t!124305))

(declare-fun b_and!94971 () Bool)

(assert (= b_and!94961 (and (=> t!124305 result!89628) b_and!94971)))

(declare-fun tb!73551 () Bool)

(declare-fun t!124307 () Bool)

(assert (=> (and b!1418373 (= (toChars!3693 (transformation!2535 (h!19953 (rules!11126 sep!3)))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743)))))) t!124307) tb!73551))

(declare-fun result!89632 () Bool)

(assert (= result!89632 result!89628))

(assert (=> d!406326 t!124307))

(declare-fun b_and!94973 () Bool)

(assert (= b_and!94965 (and (=> t!124307 result!89632) b_and!94973)))

(declare-fun m!1606735 () Bool)

(assert (=> d!406326 m!1606735))

(declare-fun m!1606737 () Bool)

(assert (=> d!406326 m!1606737))

(assert (=> bm!96503 d!406326))

(declare-fun b!1418830 () Bool)

(declare-fun res!642443 () Bool)

(declare-fun e!905682 () Bool)

(assert (=> b!1418830 (=> (not res!642443) (not e!905682))))

(declare-fun lt!478429 () List!14617)

(assert (=> b!1418830 (= res!642443 (= (size!12015 lt!478429) (+ (size!12015 (ite c!233096 call!96549 (ite c!233092 call!96570 call!96569))) (size!12015 (ite c!233096 call!96571 (ite c!233092 call!96578 call!96570))))))))

(declare-fun b!1418828 () Bool)

(declare-fun e!905683 () List!14617)

(assert (=> b!1418828 (= e!905683 (ite c!233096 call!96571 (ite c!233092 call!96578 call!96570)))))

(declare-fun b!1418829 () Bool)

(assert (=> b!1418829 (= e!905683 (Cons!14551 (h!19952 (ite c!233096 call!96549 (ite c!233092 call!96570 call!96569))) (++!3814 (t!124252 (ite c!233096 call!96549 (ite c!233092 call!96570 call!96569))) (ite c!233096 call!96571 (ite c!233092 call!96578 call!96570)))))))

(declare-fun b!1418831 () Bool)

(assert (=> b!1418831 (= e!905682 (or (not (= (ite c!233096 call!96571 (ite c!233092 call!96578 call!96570)) Nil!14551)) (= lt!478429 (ite c!233096 call!96549 (ite c!233092 call!96570 call!96569)))))))

(declare-fun d!406328 () Bool)

(assert (=> d!406328 e!905682))

(declare-fun res!642444 () Bool)

(assert (=> d!406328 (=> (not res!642444) (not e!905682))))

(assert (=> d!406328 (= res!642444 (= (content!2151 lt!478429) ((_ map or) (content!2151 (ite c!233096 call!96549 (ite c!233092 call!96570 call!96569))) (content!2151 (ite c!233096 call!96571 (ite c!233092 call!96578 call!96570))))))))

(assert (=> d!406328 (= lt!478429 e!905683)))

(declare-fun c!233185 () Bool)

(assert (=> d!406328 (= c!233185 ((_ is Nil!14551) (ite c!233096 call!96549 (ite c!233092 call!96570 call!96569))))))

(assert (=> d!406328 (= (++!3814 (ite c!233096 call!96549 (ite c!233092 call!96570 call!96569)) (ite c!233096 call!96571 (ite c!233092 call!96578 call!96570))) lt!478429)))

(assert (= (and d!406328 c!233185) b!1418828))

(assert (= (and d!406328 (not c!233185)) b!1418829))

(assert (= (and d!406328 res!642444) b!1418830))

(assert (= (and b!1418830 res!642443) b!1418831))

(declare-fun m!1606739 () Bool)

(assert (=> b!1418830 m!1606739))

(declare-fun m!1606741 () Bool)

(assert (=> b!1418830 m!1606741))

(declare-fun m!1606743 () Bool)

(assert (=> b!1418830 m!1606743))

(declare-fun m!1606745 () Bool)

(assert (=> b!1418829 m!1606745))

(declare-fun m!1606747 () Bool)

(assert (=> d!406328 m!1606747))

(declare-fun m!1606749 () Bool)

(assert (=> d!406328 m!1606749))

(declare-fun m!1606751 () Bool)

(assert (=> d!406328 m!1606751))

(assert (=> bm!96550 d!406328))

(declare-fun d!406330 () Bool)

(declare-fun lt!478432 () Int)

(assert (=> d!406330 (>= lt!478432 0)))

(declare-fun e!905686 () Int)

(assert (=> d!406330 (= lt!478432 e!905686)))

(declare-fun c!233188 () Bool)

(assert (=> d!406330 (= c!233188 ((_ is Nil!14554) (list!5735 objs!24)))))

(assert (=> d!406330 (= (size!12007 (list!5735 objs!24)) lt!478432)))

(declare-fun b!1418836 () Bool)

(assert (=> b!1418836 (= e!905686 0)))

(declare-fun b!1418837 () Bool)

(assert (=> b!1418837 (= e!905686 (+ 1 (size!12007 (t!124255 (list!5735 objs!24)))))))

(assert (= (and d!406330 c!233188) b!1418836))

(assert (= (and d!406330 (not c!233188)) b!1418837))

(declare-fun m!1606753 () Bool)

(assert (=> b!1418837 m!1606753))

(assert (=> d!406050 d!406330))

(assert (=> d!406050 d!406216))

(declare-fun d!406332 () Bool)

(declare-fun lt!478435 () Int)

(assert (=> d!406332 (= lt!478435 (size!12007 (list!5739 (c!233030 objs!24))))))

(assert (=> d!406332 (= lt!478435 (ite ((_ is Empty!4881) (c!233030 objs!24)) 0 (ite ((_ is Leaf!7345) (c!233030 objs!24)) (csize!9993 (c!233030 objs!24)) (csize!9992 (c!233030 objs!24)))))))

(assert (=> d!406332 (= (size!12008 (c!233030 objs!24)) lt!478435)))

(declare-fun bs!339606 () Bool)

(assert (= bs!339606 d!406332))

(assert (=> bs!339606 m!1605715))

(assert (=> bs!339606 m!1605715))

(declare-fun m!1606755 () Bool)

(assert (=> bs!339606 m!1606755))

(assert (=> d!406050 d!406332))

(declare-fun b!1418840 () Bool)

(declare-fun res!642445 () Bool)

(declare-fun e!905687 () Bool)

(assert (=> b!1418840 (=> (not res!642445) (not e!905687))))

(declare-fun lt!478436 () List!14617)

(assert (=> b!1418840 (= res!642445 (= (size!12015 lt!478436) (+ (size!12015 (ite c!233087 call!96511 e!905326)) (size!12015 (ite c!233087 call!96537 (ite c!233083 call!96530 call!96526))))))))

(declare-fun e!905688 () List!14617)

(declare-fun b!1418838 () Bool)

(assert (=> b!1418838 (= e!905688 (ite c!233087 call!96537 (ite c!233083 call!96530 call!96526)))))

(declare-fun b!1418839 () Bool)

(assert (=> b!1418839 (= e!905688 (Cons!14551 (h!19952 (ite c!233087 call!96511 e!905326)) (++!3814 (t!124252 (ite c!233087 call!96511 e!905326)) (ite c!233087 call!96537 (ite c!233083 call!96530 call!96526)))))))

(declare-fun b!1418841 () Bool)

(assert (=> b!1418841 (= e!905687 (or (not (= (ite c!233087 call!96537 (ite c!233083 call!96530 call!96526)) Nil!14551)) (= lt!478436 (ite c!233087 call!96511 e!905326))))))

(declare-fun d!406334 () Bool)

(assert (=> d!406334 e!905687))

(declare-fun res!642446 () Bool)

(assert (=> d!406334 (=> (not res!642446) (not e!905687))))

(assert (=> d!406334 (= res!642446 (= (content!2151 lt!478436) ((_ map or) (content!2151 (ite c!233087 call!96511 e!905326)) (content!2151 (ite c!233087 call!96537 (ite c!233083 call!96530 call!96526))))))))

(assert (=> d!406334 (= lt!478436 e!905688)))

(declare-fun c!233189 () Bool)

(assert (=> d!406334 (= c!233189 ((_ is Nil!14551) (ite c!233087 call!96511 e!905326)))))

(assert (=> d!406334 (= (++!3814 (ite c!233087 call!96511 e!905326) (ite c!233087 call!96537 (ite c!233083 call!96530 call!96526))) lt!478436)))

(assert (= (and d!406334 c!233189) b!1418838))

(assert (= (and d!406334 (not c!233189)) b!1418839))

(assert (= (and d!406334 res!642446) b!1418840))

(assert (= (and b!1418840 res!642445) b!1418841))

(declare-fun m!1606757 () Bool)

(assert (=> b!1418840 m!1606757))

(declare-fun m!1606759 () Bool)

(assert (=> b!1418840 m!1606759))

(declare-fun m!1606761 () Bool)

(assert (=> b!1418840 m!1606761))

(declare-fun m!1606763 () Bool)

(assert (=> b!1418839 m!1606763))

(declare-fun m!1606765 () Bool)

(assert (=> d!406334 m!1606765))

(declare-fun m!1606767 () Bool)

(assert (=> d!406334 m!1606767))

(declare-fun m!1606769 () Bool)

(assert (=> d!406334 m!1606769))

(assert (=> bm!96533 d!406334))

(declare-fun d!406336 () Bool)

(declare-fun c!233190 () Bool)

(assert (=> d!406336 (= c!233190 ((_ is Cons!14553) (ite c!233096 Nil!14553 e!905335)))))

(declare-fun e!905689 () List!14617)

(assert (=> d!406336 (= (printList!663 (ite c!233096 Lexer!2207 (ite c!233092 lt!477805 lt!477801)) (ite c!233096 Nil!14553 e!905335)) e!905689)))

(declare-fun b!1418842 () Bool)

(assert (=> b!1418842 (= e!905689 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233096 Nil!14553 e!905335)))) (printList!663 (ite c!233096 Lexer!2207 (ite c!233092 lt!477805 lt!477801)) (t!124254 (ite c!233096 Nil!14553 e!905335)))))))

(declare-fun b!1418843 () Bool)

(assert (=> b!1418843 (= e!905689 Nil!14551)))

(assert (= (and d!406336 c!233190) b!1418842))

(assert (= (and d!406336 (not c!233190)) b!1418843))

(declare-fun m!1606771 () Bool)

(assert (=> b!1418842 m!1606771))

(assert (=> b!1418842 m!1606771))

(declare-fun m!1606773 () Bool)

(assert (=> b!1418842 m!1606773))

(declare-fun m!1606775 () Bool)

(assert (=> b!1418842 m!1606775))

(assert (=> b!1418842 m!1606773))

(assert (=> b!1418842 m!1606775))

(declare-fun m!1606777 () Bool)

(assert (=> b!1418842 m!1606777))

(assert (=> bm!96535 d!406336))

(declare-fun c!233191 () Bool)

(declare-fun d!406338 () Bool)

(assert (=> d!406338 (= c!233191 ((_ is Cons!14553) (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477781))))))

(declare-fun e!905690 () List!14617)

(assert (=> d!406338 (= (printList!663 (ite c!233087 lt!477772 (ite c!233083 lt!477729 lt!477725)) (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477781))) e!905690)))

(declare-fun b!1418844 () Bool)

(assert (=> b!1418844 (= e!905690 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477781))))) (printList!663 (ite c!233087 lt!477772 (ite c!233083 lt!477729 lt!477725)) (t!124254 (ite c!233087 lt!477758 (ite c!233083 lt!477746 lt!477781))))))))

(declare-fun b!1418845 () Bool)

(assert (=> b!1418845 (= e!905690 Nil!14551)))

(assert (= (and d!406338 c!233191) b!1418844))

(assert (= (and d!406338 (not c!233191)) b!1418845))

(declare-fun m!1606779 () Bool)

(assert (=> b!1418844 m!1606779))

(assert (=> b!1418844 m!1606779))

(declare-fun m!1606781 () Bool)

(assert (=> b!1418844 m!1606781))

(declare-fun m!1606783 () Bool)

(assert (=> b!1418844 m!1606783))

(assert (=> b!1418844 m!1606781))

(assert (=> b!1418844 m!1606783))

(declare-fun m!1606785 () Bool)

(assert (=> b!1418844 m!1606785))

(assert (=> bm!96518 d!406338))

(declare-fun d!406340 () Bool)

(declare-fun c!233192 () Bool)

(assert (=> d!406340 (= c!233192 ((_ is Cons!14553) (ite c!233087 (t!124254 lt!477747) e!905323)))))

(declare-fun e!905691 () List!14617)

(assert (=> d!406340 (= (printList!663 (ite (or c!233087 c!233083) Lexer!2207 lt!477735) (ite c!233087 (t!124254 lt!477747) e!905323)) e!905691)))

(declare-fun b!1418846 () Bool)

(assert (=> b!1418846 (= e!905691 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233087 (t!124254 lt!477747) e!905323)))) (printList!663 (ite (or c!233087 c!233083) Lexer!2207 lt!477735) (t!124254 (ite c!233087 (t!124254 lt!477747) e!905323)))))))

(declare-fun b!1418847 () Bool)

(assert (=> b!1418847 (= e!905691 Nil!14551)))

(assert (= (and d!406340 c!233192) b!1418846))

(assert (= (and d!406340 (not c!233192)) b!1418847))

(declare-fun m!1606787 () Bool)

(assert (=> b!1418846 m!1606787))

(assert (=> b!1418846 m!1606787))

(declare-fun m!1606789 () Bool)

(assert (=> b!1418846 m!1606789))

(declare-fun m!1606791 () Bool)

(assert (=> b!1418846 m!1606791))

(assert (=> b!1418846 m!1606789))

(assert (=> b!1418846 m!1606791))

(declare-fun m!1606793 () Bool)

(assert (=> b!1418846 m!1606793))

(assert (=> bm!96506 d!406340))

(declare-fun d!406342 () Bool)

(assert (=> d!406342 (= (isEmpty!8948 (rules!11126 sep!3)) ((_ is Nil!14552) (rules!11126 sep!3)))))

(assert (=> d!406048 d!406342))

(assert (=> b!1418242 d!406308))

(declare-fun b!1418860 () Bool)

(declare-fun res!642463 () Bool)

(declare-fun e!905697 () Bool)

(assert (=> b!1418860 (=> (not res!642463) (not e!905697))))

(assert (=> b!1418860 (= res!642463 (isBalanced!1450 (left!12441 (c!233029 (tokens!1830 sep!3)))))))

(declare-fun b!1418862 () Bool)

(declare-fun res!642460 () Bool)

(assert (=> b!1418862 (=> (not res!642460) (not e!905697))))

(assert (=> b!1418862 (= res!642460 (isBalanced!1450 (right!12771 (c!233029 (tokens!1830 sep!3)))))))

(declare-fun b!1418863 () Bool)

(declare-fun res!642462 () Bool)

(assert (=> b!1418863 (=> (not res!642462) (not e!905697))))

(assert (=> b!1418863 (= res!642462 (<= (- (height!711 (left!12441 (c!233029 (tokens!1830 sep!3)))) (height!711 (right!12771 (c!233029 (tokens!1830 sep!3))))) 1))))

(declare-fun b!1418864 () Bool)

(declare-fun isEmpty!8955 (Conc!4880) Bool)

(assert (=> b!1418864 (= e!905697 (not (isEmpty!8955 (right!12771 (c!233029 (tokens!1830 sep!3))))))))

(declare-fun b!1418865 () Bool)

(declare-fun e!905696 () Bool)

(assert (=> b!1418865 (= e!905696 e!905697)))

(declare-fun res!642459 () Bool)

(assert (=> b!1418865 (=> (not res!642459) (not e!905697))))

(assert (=> b!1418865 (= res!642459 (<= (- 1) (- (height!711 (left!12441 (c!233029 (tokens!1830 sep!3)))) (height!711 (right!12771 (c!233029 (tokens!1830 sep!3)))))))))

(declare-fun b!1418861 () Bool)

(declare-fun res!642464 () Bool)

(assert (=> b!1418861 (=> (not res!642464) (not e!905697))))

(assert (=> b!1418861 (= res!642464 (not (isEmpty!8955 (left!12441 (c!233029 (tokens!1830 sep!3))))))))

(declare-fun d!406344 () Bool)

(declare-fun res!642461 () Bool)

(assert (=> d!406344 (=> res!642461 e!905696)))

(assert (=> d!406344 (= res!642461 (not ((_ is Node!4880) (c!233029 (tokens!1830 sep!3)))))))

(assert (=> d!406344 (= (isBalanced!1450 (c!233029 (tokens!1830 sep!3))) e!905696)))

(assert (= (and d!406344 (not res!642461)) b!1418865))

(assert (= (and b!1418865 res!642459) b!1418863))

(assert (= (and b!1418863 res!642462) b!1418860))

(assert (= (and b!1418860 res!642463) b!1418862))

(assert (= (and b!1418862 res!642460) b!1418861))

(assert (= (and b!1418861 res!642464) b!1418864))

(declare-fun m!1606795 () Bool)

(assert (=> b!1418861 m!1606795))

(declare-fun m!1606797 () Bool)

(assert (=> b!1418864 m!1606797))

(declare-fun m!1606799 () Bool)

(assert (=> b!1418865 m!1606799))

(declare-fun m!1606801 () Bool)

(assert (=> b!1418865 m!1606801))

(assert (=> b!1418863 m!1606799))

(assert (=> b!1418863 m!1606801))

(declare-fun m!1606803 () Bool)

(assert (=> b!1418862 m!1606803))

(declare-fun m!1606805 () Bool)

(assert (=> b!1418860 m!1606805))

(assert (=> d!406024 d!406344))

(declare-fun d!406346 () Bool)

(declare-fun lt!478439 () Token!4732)

(declare-fun last!86 (List!14619) Token!4732)

(assert (=> d!406346 (= lt!478439 (last!86 (list!5734 (tokens!1830 (head!2755 objs!24)))))))

(declare-fun last!87 (Conc!4880) Token!4732)

(assert (=> d!406346 (= lt!478439 (last!87 (c!233029 (tokens!1830 (head!2755 objs!24)))))))

(assert (=> d!406346 (not (isEmpty!8945 (tokens!1830 (head!2755 objs!24))))))

(assert (=> d!406346 (= (last!83 (tokens!1830 (head!2755 objs!24))) lt!478439)))

(declare-fun bs!339607 () Bool)

(assert (= bs!339607 d!406346))

(assert (=> bs!339607 m!1604821))

(assert (=> bs!339607 m!1604821))

(declare-fun m!1606807 () Bool)

(assert (=> bs!339607 m!1606807))

(declare-fun m!1606809 () Bool)

(assert (=> bs!339607 m!1606809))

(assert (=> bs!339607 m!1604843))

(assert (=> b!1418218 d!406346))

(declare-fun d!406348 () Bool)

(declare-fun lt!478444 () Bool)

(declare-fun e!905713 () Bool)

(assert (=> d!406348 (= lt!478444 e!905713)))

(declare-fun res!642498 () Bool)

(assert (=> d!406348 (=> (not res!642498) (not e!905713))))

(assert (=> d!406348 (= res!642498 (= (list!5734 (_1!7888 (lex!1013 lt!477726 (rules!11126 (head!2755 objs!24)) (print!982 lt!477726 (singletonSeq!1169 lt!477756))))) (list!5734 (singletonSeq!1169 lt!477756))))))

(declare-fun e!905714 () Bool)

(assert (=> d!406348 (= lt!478444 e!905714)))

(declare-fun res!642499 () Bool)

(assert (=> d!406348 (=> (not res!642499) (not e!905714))))

(declare-fun lt!478445 () tuple2!14004)

(declare-fun size!12017 (BalanceConc!9700) Int)

(assert (=> d!406348 (= res!642499 (= (size!12017 (_1!7888 lt!478445)) 1))))

(assert (=> d!406348 (= lt!478445 (lex!1013 lt!477726 (rules!11126 (head!2755 objs!24)) (print!982 lt!477726 (singletonSeq!1169 lt!477756))))))

(assert (=> d!406348 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406348 (= (rulesProduceIndividualToken!1172 lt!477726 (rules!11126 (head!2755 objs!24)) lt!477756) lt!478444)))

(declare-fun b!1418898 () Bool)

(declare-fun res!642497 () Bool)

(assert (=> b!1418898 (=> (not res!642497) (not e!905714))))

(declare-fun apply!3721 (BalanceConc!9700 Int) Token!4732)

(assert (=> b!1418898 (= res!642497 (= (apply!3721 (_1!7888 lt!478445) 0) lt!477756))))

(declare-fun b!1418899 () Bool)

(assert (=> b!1418899 (= e!905714 (isEmpty!8953 (_2!7888 lt!478445)))))

(declare-fun b!1418900 () Bool)

(assert (=> b!1418900 (= e!905713 (isEmpty!8953 (_2!7888 (lex!1013 lt!477726 (rules!11126 (head!2755 objs!24)) (print!982 lt!477726 (singletonSeq!1169 lt!477756))))))))

(assert (= (and d!406348 res!642499) b!1418898))

(assert (= (and b!1418898 res!642497) b!1418899))

(assert (= (and d!406348 res!642498) b!1418900))

(declare-fun m!1606821 () Bool)

(assert (=> d!406348 m!1606821))

(assert (=> d!406348 m!1606139))

(declare-fun m!1606823 () Bool)

(assert (=> d!406348 m!1606823))

(declare-fun m!1606825 () Bool)

(assert (=> d!406348 m!1606825))

(declare-fun m!1606827 () Bool)

(assert (=> d!406348 m!1606827))

(assert (=> d!406348 m!1606825))

(declare-fun m!1606829 () Bool)

(assert (=> d!406348 m!1606829))

(assert (=> d!406348 m!1606829))

(declare-fun m!1606831 () Bool)

(assert (=> d!406348 m!1606831))

(assert (=> d!406348 m!1606825))

(declare-fun m!1606833 () Bool)

(assert (=> b!1418898 m!1606833))

(declare-fun m!1606835 () Bool)

(assert (=> b!1418899 m!1606835))

(assert (=> b!1418900 m!1606825))

(assert (=> b!1418900 m!1606825))

(assert (=> b!1418900 m!1606829))

(assert (=> b!1418900 m!1606829))

(assert (=> b!1418900 m!1606831))

(declare-fun m!1606837 () Bool)

(assert (=> b!1418900 m!1606837))

(assert (=> b!1418218 d!406348))

(declare-fun d!406356 () Bool)

(declare-fun lt!478448 () Token!4732)

(declare-fun head!2768 (List!14619) Token!4732)

(assert (=> d!406356 (= lt!478448 (head!2768 (list!5734 (tokens!1830 sep!3))))))

(declare-fun head!2769 (Conc!4880) Token!4732)

(assert (=> d!406356 (= lt!478448 (head!2769 (c!233029 (tokens!1830 sep!3))))))

(assert (=> d!406356 (not (isEmpty!8945 (tokens!1830 sep!3)))))

(assert (=> d!406356 (= (head!2757 (tokens!1830 sep!3)) lt!478448)))

(declare-fun bs!339608 () Bool)

(assert (= bs!339608 d!406356))

(assert (=> bs!339608 m!1604823))

(assert (=> bs!339608 m!1604823))

(declare-fun m!1606851 () Bool)

(assert (=> bs!339608 m!1606851))

(declare-fun m!1606853 () Bool)

(assert (=> bs!339608 m!1606853))

(assert (=> bs!339608 m!1604813))

(assert (=> b!1418218 d!406356))

(declare-fun d!406360 () Bool)

(assert (=> d!406360 (rulesProduceIndividualToken!1172 lt!477736 (rules!11126 (head!2755 objs!24)) lt!477750)))

(declare-fun lt!478481 () Unit!21489)

(declare-fun choose!8746 (LexerInterface!2209 List!14618 List!14619 Token!4732) Unit!21489)

(assert (=> d!406360 (= lt!478481 (choose!8746 lt!477736 (rules!11126 (head!2755 objs!24)) lt!477737 lt!477750))))

(assert (=> d!406360 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406360 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477736 (rules!11126 (head!2755 objs!24)) lt!477737 lt!477750) lt!478481)))

(declare-fun bs!339611 () Bool)

(assert (= bs!339611 d!406360))

(assert (=> bs!339611 m!1604839))

(declare-fun m!1606895 () Bool)

(assert (=> bs!339611 m!1606895))

(assert (=> bs!339611 m!1606139))

(assert (=> b!1418218 d!406360))

(declare-fun d!406368 () Bool)

(assert (=> d!406368 (rulesProduceIndividualToken!1172 lt!477726 (rules!11126 (head!2755 objs!24)) lt!477756)))

(declare-fun lt!478482 () Unit!21489)

(assert (=> d!406368 (= lt!478482 (choose!8746 lt!477726 (rules!11126 (head!2755 objs!24)) lt!477774 lt!477756))))

(assert (=> d!406368 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406368 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477726 (rules!11126 (head!2755 objs!24)) lt!477774 lt!477756) lt!478482)))

(declare-fun bs!339612 () Bool)

(assert (= bs!339612 d!406368))

(assert (=> bs!339612 m!1604841))

(declare-fun m!1606897 () Bool)

(assert (=> bs!339612 m!1606897))

(assert (=> bs!339612 m!1606139))

(assert (=> b!1418218 d!406368))

(declare-fun d!406370 () Bool)

(declare-fun lt!478483 () Bool)

(declare-fun e!905732 () Bool)

(assert (=> d!406370 (= lt!478483 e!905732)))

(declare-fun res!642513 () Bool)

(assert (=> d!406370 (=> (not res!642513) (not e!905732))))

(assert (=> d!406370 (= res!642513 (= (list!5734 (_1!7888 (lex!1013 lt!477736 (rules!11126 (head!2755 objs!24)) (print!982 lt!477736 (singletonSeq!1169 lt!477750))))) (list!5734 (singletonSeq!1169 lt!477750))))))

(declare-fun e!905733 () Bool)

(assert (=> d!406370 (= lt!478483 e!905733)))

(declare-fun res!642514 () Bool)

(assert (=> d!406370 (=> (not res!642514) (not e!905733))))

(declare-fun lt!478484 () tuple2!14004)

(assert (=> d!406370 (= res!642514 (= (size!12017 (_1!7888 lt!478484)) 1))))

(assert (=> d!406370 (= lt!478484 (lex!1013 lt!477736 (rules!11126 (head!2755 objs!24)) (print!982 lt!477736 (singletonSeq!1169 lt!477750))))))

(assert (=> d!406370 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406370 (= (rulesProduceIndividualToken!1172 lt!477736 (rules!11126 (head!2755 objs!24)) lt!477750) lt!478483)))

(declare-fun b!1418931 () Bool)

(declare-fun res!642512 () Bool)

(assert (=> b!1418931 (=> (not res!642512) (not e!905733))))

(assert (=> b!1418931 (= res!642512 (= (apply!3721 (_1!7888 lt!478484) 0) lt!477750))))

(declare-fun b!1418932 () Bool)

(assert (=> b!1418932 (= e!905733 (isEmpty!8953 (_2!7888 lt!478484)))))

(declare-fun b!1418933 () Bool)

(assert (=> b!1418933 (= e!905732 (isEmpty!8953 (_2!7888 (lex!1013 lt!477736 (rules!11126 (head!2755 objs!24)) (print!982 lt!477736 (singletonSeq!1169 lt!477750))))))))

(assert (= (and d!406370 res!642514) b!1418931))

(assert (= (and b!1418931 res!642512) b!1418932))

(assert (= (and d!406370 res!642513) b!1418933))

(declare-fun m!1606899 () Bool)

(assert (=> d!406370 m!1606899))

(assert (=> d!406370 m!1606139))

(declare-fun m!1606901 () Bool)

(assert (=> d!406370 m!1606901))

(declare-fun m!1606903 () Bool)

(assert (=> d!406370 m!1606903))

(declare-fun m!1606905 () Bool)

(assert (=> d!406370 m!1606905))

(assert (=> d!406370 m!1606903))

(declare-fun m!1606907 () Bool)

(assert (=> d!406370 m!1606907))

(assert (=> d!406370 m!1606907))

(declare-fun m!1606909 () Bool)

(assert (=> d!406370 m!1606909))

(assert (=> d!406370 m!1606903))

(declare-fun m!1606911 () Bool)

(assert (=> b!1418931 m!1606911))

(declare-fun m!1606913 () Bool)

(assert (=> b!1418932 m!1606913))

(assert (=> b!1418933 m!1606903))

(assert (=> b!1418933 m!1606903))

(assert (=> b!1418933 m!1606907))

(assert (=> b!1418933 m!1606907))

(assert (=> b!1418933 m!1606909))

(declare-fun m!1606915 () Bool)

(assert (=> b!1418933 m!1606915))

(assert (=> b!1418218 d!406370))

(declare-fun d!406372 () Bool)

(declare-fun prefixMatchZipperSequence!315 (Regex!3849 BalanceConc!9698) Bool)

(declare-fun rulesRegex!375 (LexerInterface!2209 List!14618) Regex!3849)

(declare-fun ++!3823 (BalanceConc!9698 BalanceConc!9698) BalanceConc!9698)

(assert (=> d!406372 (= (separableTokensPredicate!486 Lexer!2207 (last!83 (tokens!1830 (head!2755 objs!24))) (head!2757 (tokens!1830 sep!3)) (rules!11126 (head!2755 objs!24))) (not (prefixMatchZipperSequence!315 (rulesRegex!375 Lexer!2207 (rules!11126 (head!2755 objs!24))) (++!3823 (charsOf!1480 (last!83 (tokens!1830 (head!2755 objs!24)))) (singletonSeq!1170 (apply!3718 (charsOf!1480 (head!2757 (tokens!1830 sep!3))) 0))))))))

(declare-fun bs!339613 () Bool)

(assert (= bs!339613 d!406372))

(declare-fun m!1606917 () Bool)

(assert (=> bs!339613 m!1606917))

(declare-fun m!1606919 () Bool)

(assert (=> bs!339613 m!1606919))

(declare-fun m!1606921 () Bool)

(assert (=> bs!339613 m!1606921))

(assert (=> bs!339613 m!1604833))

(declare-fun m!1606923 () Bool)

(assert (=> bs!339613 m!1606923))

(assert (=> bs!339613 m!1606923))

(declare-fun m!1606925 () Bool)

(assert (=> bs!339613 m!1606925))

(assert (=> bs!339613 m!1606919))

(assert (=> bs!339613 m!1604835))

(declare-fun m!1606927 () Bool)

(assert (=> bs!339613 m!1606927))

(declare-fun m!1606929 () Bool)

(assert (=> bs!339613 m!1606929))

(assert (=> bs!339613 m!1606925))

(assert (=> bs!339613 m!1606917))

(assert (=> bs!339613 m!1606927))

(assert (=> bs!339613 m!1606929))

(assert (=> b!1418218 d!406372))

(declare-fun d!406374 () Bool)

(declare-fun e!905735 () Bool)

(assert (=> d!406374 e!905735))

(declare-fun res!642515 () Bool)

(assert (=> d!406374 (=> (not res!642515) (not e!905735))))

(assert (=> d!406374 (= res!642515 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (print!982 Lexer!2207 (seqFromList!1675 (ite c!233096 call!96554 call!96552)))))) (ite c!233096 call!96554 call!96552)))))

(declare-fun lt!478498 () Unit!21489)

(declare-fun e!905734 () Unit!21489)

(assert (=> d!406374 (= lt!478498 e!905734)))

(declare-fun c!233202 () Bool)

(assert (=> d!406374 (= c!233202 (or ((_ is Nil!14553) (ite c!233096 call!96554 call!96552)) ((_ is Nil!14553) (t!124254 (ite c!233096 call!96554 call!96552)))))))

(assert (=> d!406374 (not (isEmpty!8948 (rules!11126 (v!22115 lt!477384))))))

(assert (=> d!406374 (= (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (ite c!233096 call!96554 call!96552)) lt!478498)))

(declare-fun b!1418934 () Bool)

(declare-fun Unit!21639 () Unit!21489)

(assert (=> b!1418934 (= e!905734 Unit!21639)))

(declare-fun b!1418935 () Bool)

(declare-fun Unit!21640 () Unit!21489)

(assert (=> b!1418935 (= e!905734 Unit!21640)))

(declare-fun lt!478491 () BalanceConc!9698)

(assert (=> b!1418935 (= lt!478491 (print!982 Lexer!2207 (seqFromList!1675 (ite c!233096 call!96554 call!96552))))))

(declare-fun lt!478485 () BalanceConc!9698)

(assert (=> b!1418935 (= lt!478485 (print!982 Lexer!2207 (seqFromList!1675 (t!124254 (ite c!233096 call!96554 call!96552)))))))

(declare-fun lt!478496 () tuple2!14004)

(assert (=> b!1418935 (= lt!478496 (lex!1013 Lexer!2207 (rules!11126 (v!22115 lt!477384)) lt!478485))))

(declare-fun lt!478499 () List!14617)

(assert (=> b!1418935 (= lt!478499 (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96554 call!96552)))))))

(declare-fun lt!478492 () List!14617)

(assert (=> b!1418935 (= lt!478492 (list!5733 lt!478485))))

(declare-fun lt!478487 () Unit!21489)

(assert (=> b!1418935 (= lt!478487 (lemmaConcatTwoListThenFirstIsPrefix!739 lt!478499 lt!478492))))

(assert (=> b!1418935 (isPrefix!1172 lt!478499 (++!3814 lt!478499 lt!478492))))

(declare-fun lt!478503 () Unit!21489)

(assert (=> b!1418935 (= lt!478503 lt!478487)))

(declare-fun lt!478508 () Unit!21489)

(assert (=> b!1418935 (= lt!478508 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (t!124254 (ite c!233096 call!96554 call!96552))))))

(declare-fun lt!478506 () Unit!21489)

(assert (=> b!1418935 (= lt!478506 (seqFromListBHdTlConstructive!68 (h!19954 (t!124254 (ite c!233096 call!96554 call!96552))) (t!124254 (t!124254 (ite c!233096 call!96554 call!96552))) (_1!7888 lt!478496)))))

(assert (=> b!1418935 (= (list!5734 (_1!7888 lt!478496)) (list!5734 (prepend!384 (seqFromList!1675 (t!124254 (t!124254 (ite c!233096 call!96554 call!96552)))) (h!19954 (t!124254 (ite c!233096 call!96554 call!96552))))))))

(declare-fun lt!478495 () Unit!21489)

(assert (=> b!1418935 (= lt!478495 lt!478506)))

(declare-fun lt!478507 () Option!2798)

(assert (=> b!1418935 (= lt!478507 (maxPrefix!1162 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (list!5733 lt!478491)))))

(assert (=> b!1418935 (= (print!982 Lexer!2207 (singletonSeq!1169 (h!19954 (ite c!233096 call!96554 call!96552)))) (printTailRec!645 Lexer!2207 (singletonSeq!1169 (h!19954 (ite c!233096 call!96554 call!96552))) 0 (BalanceConc!9699 Empty!4879)))))

(declare-fun lt!478493 () Unit!21489)

(declare-fun Unit!21641 () Unit!21489)

(assert (=> b!1418935 (= lt!478493 Unit!21641)))

(declare-fun lt!478489 () Unit!21489)

(assert (=> b!1418935 (= lt!478489 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!212 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96554 call!96552)))) (list!5733 lt!478485)))))

(assert (=> b!1418935 (= (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96554 call!96552)))) (originalCharacters!3397 (h!19954 (ite c!233096 call!96554 call!96552))))))

(declare-fun lt!478510 () Unit!21489)

(declare-fun Unit!21642 () Unit!21489)

(assert (=> b!1418935 (= lt!478510 Unit!21642)))

(assert (=> b!1418935 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233096 call!96554 call!96552)))) 0))) (Cons!14551 (head!2764 (originalCharacters!3397 (h!19954 (t!124254 (ite c!233096 call!96554 call!96552))))) Nil!14551))))

(declare-fun lt!478494 () Unit!21489)

(declare-fun Unit!21643 () Unit!21489)

(assert (=> b!1418935 (= lt!478494 Unit!21643)))

(assert (=> b!1418935 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233096 call!96554 call!96552)))) 0))) (Cons!14551 (head!2764 (list!5733 lt!478485)) Nil!14551))))

(declare-fun lt!478488 () Unit!21489)

(declare-fun Unit!21644 () Unit!21489)

(assert (=> b!1418935 (= lt!478488 Unit!21644)))

(assert (=> b!1418935 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233096 call!96554 call!96552)))) 0))) (Cons!14551 (head!2765 lt!478485) Nil!14551))))

(declare-fun lt!478486 () Unit!21489)

(declare-fun Unit!21645 () Unit!21489)

(assert (=> b!1418935 (= lt!478486 Unit!21645)))

(assert (=> b!1418935 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (originalCharacters!3397 (h!19954 (ite c!233096 call!96554 call!96552)))))))

(declare-fun lt!478500 () Unit!21489)

(declare-fun Unit!21646 () Unit!21489)

(assert (=> b!1418935 (= lt!478500 Unit!21646)))

(assert (=> b!1418935 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96554 call!96552))))))))

(declare-fun lt!478501 () Unit!21489)

(declare-fun Unit!21647 () Unit!21489)

(assert (=> b!1418935 (= lt!478501 Unit!21647)))

(declare-fun lt!478509 () Unit!21489)

(declare-fun Unit!21648 () Unit!21489)

(assert (=> b!1418935 (= lt!478509 Unit!21648)))

(assert (=> b!1418935 (= (_1!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96554 call!96552))))))) (h!19954 (ite c!233096 call!96554 call!96552)))))

(declare-fun lt!478490 () Unit!21489)

(declare-fun Unit!21649 () Unit!21489)

(assert (=> b!1418935 (= lt!478490 Unit!21649)))

(assert (=> b!1418935 (isEmpty!8952 (_2!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96554 call!96552))))))))))

(declare-fun lt!478502 () Unit!21489)

(declare-fun Unit!21650 () Unit!21489)

(assert (=> b!1418935 (= lt!478502 Unit!21650)))

(assert (=> b!1418935 (matchR!1798 (regex!2535 (rule!4298 (h!19954 (ite c!233096 call!96554 call!96552)))) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96554 call!96552)))))))

(declare-fun lt!478504 () Unit!21489)

(declare-fun Unit!21651 () Unit!21489)

(assert (=> b!1418935 (= lt!478504 Unit!21651)))

(assert (=> b!1418935 (= (rule!4298 (h!19954 (ite c!233096 call!96554 call!96552))) (rule!4298 (h!19954 (ite c!233096 call!96554 call!96552))))))

(declare-fun lt!478505 () Unit!21489)

(declare-fun Unit!21652 () Unit!21489)

(assert (=> b!1418935 (= lt!478505 Unit!21652)))

(declare-fun lt!478497 () Unit!21489)

(assert (=> b!1418935 (= lt!478497 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!10 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (h!19954 (ite c!233096 call!96554 call!96552)) (rule!4298 (h!19954 (ite c!233096 call!96554 call!96552))) (list!5733 lt!478485)))))

(declare-fun b!1418936 () Bool)

(assert (=> b!1418936 (= e!905735 (isEmpty!8953 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (print!982 Lexer!2207 (seqFromList!1675 (ite c!233096 call!96554 call!96552)))))))))

(assert (= (and d!406374 c!233202) b!1418934))

(assert (= (and d!406374 (not c!233202)) b!1418935))

(assert (= (and d!406374 res!642515) b!1418936))

(declare-fun m!1606931 () Bool)

(assert (=> d!406374 m!1606931))

(declare-fun m!1606933 () Bool)

(assert (=> d!406374 m!1606933))

(assert (=> d!406374 m!1606931))

(declare-fun m!1606935 () Bool)

(assert (=> d!406374 m!1606935))

(assert (=> d!406374 m!1606935))

(declare-fun m!1606937 () Bool)

(assert (=> d!406374 m!1606937))

(declare-fun m!1606939 () Bool)

(assert (=> d!406374 m!1606939))

(declare-fun m!1606941 () Bool)

(assert (=> b!1418935 m!1606941))

(declare-fun m!1606943 () Bool)

(assert (=> b!1418935 m!1606943))

(declare-fun m!1606945 () Bool)

(assert (=> b!1418935 m!1606945))

(declare-fun m!1606947 () Bool)

(assert (=> b!1418935 m!1606947))

(declare-fun m!1606949 () Bool)

(assert (=> b!1418935 m!1606949))

(assert (=> b!1418935 m!1606945))

(declare-fun m!1606951 () Bool)

(assert (=> b!1418935 m!1606951))

(declare-fun m!1606953 () Bool)

(assert (=> b!1418935 m!1606953))

(declare-fun m!1606955 () Bool)

(assert (=> b!1418935 m!1606955))

(assert (=> b!1418935 m!1606941))

(declare-fun m!1606957 () Bool)

(assert (=> b!1418935 m!1606957))

(declare-fun m!1606959 () Bool)

(assert (=> b!1418935 m!1606959))

(declare-fun m!1606961 () Bool)

(assert (=> b!1418935 m!1606961))

(declare-fun m!1606963 () Bool)

(assert (=> b!1418935 m!1606963))

(declare-fun m!1606965 () Bool)

(assert (=> b!1418935 m!1606965))

(assert (=> b!1418935 m!1606955))

(declare-fun m!1606967 () Bool)

(assert (=> b!1418935 m!1606967))

(declare-fun m!1606969 () Bool)

(assert (=> b!1418935 m!1606969))

(declare-fun m!1606971 () Bool)

(assert (=> b!1418935 m!1606971))

(assert (=> b!1418935 m!1606969))

(declare-fun m!1606973 () Bool)

(assert (=> b!1418935 m!1606973))

(declare-fun m!1606975 () Bool)

(assert (=> b!1418935 m!1606975))

(assert (=> b!1418935 m!1606961))

(declare-fun m!1606977 () Bool)

(assert (=> b!1418935 m!1606977))

(assert (=> b!1418935 m!1606957))

(declare-fun m!1606979 () Bool)

(assert (=> b!1418935 m!1606979))

(assert (=> b!1418935 m!1606961))

(declare-fun m!1606981 () Bool)

(assert (=> b!1418935 m!1606981))

(declare-fun m!1606983 () Bool)

(assert (=> b!1418935 m!1606983))

(assert (=> b!1418935 m!1606931))

(assert (=> b!1418935 m!1606953))

(declare-fun m!1606985 () Bool)

(assert (=> b!1418935 m!1606985))

(assert (=> b!1418935 m!1606931))

(assert (=> b!1418935 m!1606935))

(declare-fun m!1606987 () Bool)

(assert (=> b!1418935 m!1606987))

(assert (=> b!1418935 m!1606949))

(declare-fun m!1606989 () Bool)

(assert (=> b!1418935 m!1606989))

(assert (=> b!1418935 m!1606959))

(assert (=> b!1418935 m!1606945))

(assert (=> b!1418935 m!1606979))

(declare-fun m!1606991 () Bool)

(assert (=> b!1418935 m!1606991))

(assert (=> b!1418935 m!1606965))

(assert (=> b!1418935 m!1606987))

(declare-fun m!1606993 () Bool)

(assert (=> b!1418935 m!1606993))

(declare-fun m!1606995 () Bool)

(assert (=> b!1418935 m!1606995))

(declare-fun m!1606997 () Bool)

(assert (=> b!1418935 m!1606997))

(declare-fun m!1606999 () Bool)

(assert (=> b!1418935 m!1606999))

(assert (=> b!1418935 m!1606987))

(declare-fun m!1607001 () Bool)

(assert (=> b!1418935 m!1607001))

(declare-fun m!1607003 () Bool)

(assert (=> b!1418935 m!1607003))

(assert (=> b!1418935 m!1606959))

(declare-fun m!1607005 () Bool)

(assert (=> b!1418935 m!1607005))

(assert (=> b!1418935 m!1606961))

(declare-fun m!1607007 () Bool)

(assert (=> b!1418935 m!1607007))

(assert (=> b!1418935 m!1606973))

(assert (=> b!1418935 m!1606959))

(declare-fun m!1607009 () Bool)

(assert (=> b!1418935 m!1607009))

(assert (=> b!1418935 m!1606995))

(declare-fun m!1607011 () Bool)

(assert (=> b!1418935 m!1607011))

(assert (=> b!1418936 m!1606931))

(assert (=> b!1418936 m!1606931))

(assert (=> b!1418936 m!1606935))

(assert (=> b!1418936 m!1606935))

(assert (=> b!1418936 m!1606937))

(declare-fun m!1607013 () Bool)

(assert (=> b!1418936 m!1607013))

(assert (=> bm!96554 d!406374))

(declare-fun e!905737 () Bool)

(declare-fun lt!478511 () List!14619)

(declare-fun b!1418940 () Bool)

(assert (=> b!1418940 (= e!905737 (or (not (= lt!477857 Nil!14553)) (= lt!478511 lt!477851)))))

(declare-fun b!1418939 () Bool)

(declare-fun res!642516 () Bool)

(assert (=> b!1418939 (=> (not res!642516) (not e!905737))))

(assert (=> b!1418939 (= res!642516 (= (size!12012 lt!478511) (+ (size!12012 lt!477851) (size!12012 lt!477857))))))

(declare-fun b!1418937 () Bool)

(declare-fun e!905736 () List!14619)

(assert (=> b!1418937 (= e!905736 lt!477857)))

(declare-fun d!406376 () Bool)

(assert (=> d!406376 e!905737))

(declare-fun res!642517 () Bool)

(assert (=> d!406376 (=> (not res!642517) (not e!905737))))

(assert (=> d!406376 (= res!642517 (= (content!2150 lt!478511) ((_ map or) (content!2150 lt!477851) (content!2150 lt!477857))))))

(assert (=> d!406376 (= lt!478511 e!905736)))

(declare-fun c!233203 () Bool)

(assert (=> d!406376 (= c!233203 ((_ is Nil!14553) lt!477851))))

(assert (=> d!406376 (= (++!3813 lt!477851 lt!477857) lt!478511)))

(declare-fun b!1418938 () Bool)

(assert (=> b!1418938 (= e!905736 (Cons!14553 (h!19954 lt!477851) (++!3813 (t!124254 lt!477851) lt!477857)))))

(assert (= (and d!406376 c!233203) b!1418937))

(assert (= (and d!406376 (not c!233203)) b!1418938))

(assert (= (and d!406376 res!642517) b!1418939))

(assert (= (and b!1418939 res!642516) b!1418940))

(declare-fun m!1607015 () Bool)

(assert (=> b!1418939 m!1607015))

(declare-fun m!1607017 () Bool)

(assert (=> b!1418939 m!1607017))

(declare-fun m!1607019 () Bool)

(assert (=> b!1418939 m!1607019))

(declare-fun m!1607021 () Bool)

(assert (=> d!406376 m!1607021))

(declare-fun m!1607023 () Bool)

(assert (=> d!406376 m!1607023))

(declare-fun m!1607025 () Bool)

(assert (=> d!406376 m!1607025))

(declare-fun m!1607027 () Bool)

(assert (=> b!1418938 m!1607027))

(assert (=> b!1418237 d!406376))

(declare-fun d!406378 () Bool)

(declare-fun res!642526 () Bool)

(declare-fun e!905744 () Bool)

(assert (=> d!406378 (=> (not res!642526) (not e!905744))))

(declare-fun rulesValid!949 (LexerInterface!2209 List!14618) Bool)

(assert (=> d!406378 (= res!642526 (rulesValid!949 Lexer!2207 (rules!11126 sep!3)))))

(assert (=> d!406378 (= (rulesInvariant!2079 Lexer!2207 (rules!11126 sep!3)) e!905744)))

(declare-fun b!1418949 () Bool)

(declare-datatypes ((List!14622 0))(
  ( (Nil!14556) (Cons!14556 (h!19957 String!17361) (t!124365 List!14622)) )
))
(declare-fun noDuplicateTag!949 (LexerInterface!2209 List!14618 List!14622) Bool)

(assert (=> b!1418949 (= e!905744 (noDuplicateTag!949 Lexer!2207 (rules!11126 sep!3) Nil!14556))))

(assert (= (and d!406378 res!642526) b!1418949))

(declare-fun m!1607029 () Bool)

(assert (=> d!406378 m!1607029))

(declare-fun m!1607031 () Bool)

(assert (=> b!1418949 m!1607031))

(assert (=> b!1418343 d!406378))

(declare-fun d!406380 () Bool)

(declare-fun lt!478516 () Int)

(assert (=> d!406380 (>= lt!478516 0)))

(declare-fun e!905745 () Int)

(assert (=> d!406380 (= lt!478516 e!905745)))

(declare-fun c!233204 () Bool)

(assert (=> d!406380 (= c!233204 ((_ is Nil!14554) (list!5735 (tail!2106 objs!24))))))

(assert (=> d!406380 (= (size!12007 (list!5735 (tail!2106 objs!24))) lt!478516)))

(declare-fun b!1418950 () Bool)

(assert (=> b!1418950 (= e!905745 0)))

(declare-fun b!1418951 () Bool)

(assert (=> b!1418951 (= e!905745 (+ 1 (size!12007 (t!124255 (list!5735 (tail!2106 objs!24))))))))

(assert (= (and d!406380 c!233204) b!1418950))

(assert (= (and d!406380 (not c!233204)) b!1418951))

(declare-fun m!1607033 () Bool)

(assert (=> b!1418951 m!1607033))

(assert (=> d!406020 d!406380))

(declare-fun d!406382 () Bool)

(assert (=> d!406382 (= (list!5735 (tail!2106 objs!24)) (list!5739 (c!233030 (tail!2106 objs!24))))))

(declare-fun bs!339614 () Bool)

(assert (= bs!339614 d!406382))

(declare-fun m!1607035 () Bool)

(assert (=> bs!339614 m!1607035))

(assert (=> d!406020 d!406382))

(declare-fun d!406384 () Bool)

(declare-fun lt!478517 () Int)

(assert (=> d!406384 (= lt!478517 (size!12007 (list!5739 (c!233030 (tail!2106 objs!24)))))))

(assert (=> d!406384 (= lt!478517 (ite ((_ is Empty!4881) (c!233030 (tail!2106 objs!24))) 0 (ite ((_ is Leaf!7345) (c!233030 (tail!2106 objs!24))) (csize!9993 (c!233030 (tail!2106 objs!24))) (csize!9992 (c!233030 (tail!2106 objs!24))))))))

(assert (=> d!406384 (= (size!12008 (c!233030 (tail!2106 objs!24))) lt!478517)))

(declare-fun bs!339615 () Bool)

(assert (= bs!339615 d!406384))

(assert (=> bs!339615 m!1607035))

(assert (=> bs!339615 m!1607035))

(declare-fun m!1607037 () Bool)

(assert (=> bs!339615 m!1607037))

(assert (=> d!406020 d!406384))

(declare-fun d!406386 () Bool)

(declare-fun e!905746 () Bool)

(assert (=> d!406386 e!905746))

(declare-fun res!642527 () Bool)

(assert (=> d!406386 (=> (not res!642527) (not e!905746))))

(declare-fun lt!478518 () BalanceConc!9698)

(assert (=> d!406386 (= res!642527 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (ite c!233087 (head!2755 objs!24) (ite c!233083 sep!3 (head!2755 objs!24)))) lt!478518))) (list!5734 (tokens!1830 (ite c!233087 (head!2755 objs!24) (ite c!233083 sep!3 (head!2755 objs!24)))))))))

(assert (=> d!406386 (= lt!478518 (print!982 Lexer!2207 (tokens!1830 (ite c!233087 (head!2755 objs!24) (ite c!233083 sep!3 (head!2755 objs!24))))))))

(declare-fun lt!478519 () Unit!21489)

(assert (=> d!406386 (= lt!478519 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (ite c!233087 (head!2755 objs!24) (ite c!233083 sep!3 (head!2755 objs!24)))) (list!5734 (tokens!1830 (ite c!233087 (head!2755 objs!24) (ite c!233083 sep!3 (head!2755 objs!24)))))))))

(assert (=> d!406386 (= (print!981 (ite c!233087 (head!2755 objs!24) (ite c!233083 sep!3 (head!2755 objs!24)))) lt!478518)))

(declare-fun b!1418952 () Bool)

(assert (=> b!1418952 (= e!905746 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (ite c!233087 (head!2755 objs!24) (ite c!233083 sep!3 (head!2755 objs!24)))) lt!478518)))))))

(assert (= (and d!406386 res!642527) b!1418952))

(declare-fun m!1607039 () Bool)

(assert (=> d!406386 m!1607039))

(declare-fun m!1607041 () Bool)

(assert (=> d!406386 m!1607041))

(declare-fun m!1607043 () Bool)

(assert (=> d!406386 m!1607043))

(declare-fun m!1607045 () Bool)

(assert (=> d!406386 m!1607045))

(assert (=> d!406386 m!1607041))

(declare-fun m!1607047 () Bool)

(assert (=> d!406386 m!1607047))

(assert (=> b!1418952 m!1607039))

(declare-fun m!1607049 () Bool)

(assert (=> b!1418952 m!1607049))

(assert (=> b!1418952 m!1607049))

(declare-fun m!1607051 () Bool)

(assert (=> b!1418952 m!1607051))

(assert (=> bm!96525 d!406386))

(declare-fun d!406388 () Bool)

(assert (=> d!406388 (= (isEmpty!8946 (list!5735 objs!24)) ((_ is Nil!14554) (list!5735 objs!24)))))

(assert (=> d!406026 d!406388))

(assert (=> d!406026 d!406216))

(declare-fun d!406390 () Bool)

(declare-fun lt!478524 () Bool)

(assert (=> d!406390 (= lt!478524 (isEmpty!8946 (list!5739 (c!233030 objs!24))))))

(assert (=> d!406390 (= lt!478524 (= (size!12008 (c!233030 objs!24)) 0))))

(assert (=> d!406390 (= (isEmpty!8947 (c!233030 objs!24)) lt!478524)))

(declare-fun bs!339616 () Bool)

(assert (= bs!339616 d!406390))

(assert (=> bs!339616 m!1605715))

(assert (=> bs!339616 m!1605715))

(declare-fun m!1607071 () Bool)

(assert (=> bs!339616 m!1607071))

(assert (=> bs!339616 m!1605223))

(assert (=> d!406026 d!406390))

(declare-fun d!406394 () Bool)

(declare-fun res!642537 () Bool)

(declare-fun e!905751 () Bool)

(assert (=> d!406394 (=> (not res!642537) (not e!905751))))

(declare-fun size!12018 (Conc!4880) Int)

(assert (=> d!406394 (= res!642537 (= (csize!9990 (c!233029 (tokens!1830 acc!229))) (+ (size!12018 (left!12441 (c!233029 (tokens!1830 acc!229)))) (size!12018 (right!12771 (c!233029 (tokens!1830 acc!229)))))))))

(assert (=> d!406394 (= (inv!19177 (c!233029 (tokens!1830 acc!229))) e!905751)))

(declare-fun b!1418962 () Bool)

(declare-fun res!642538 () Bool)

(assert (=> b!1418962 (=> (not res!642538) (not e!905751))))

(assert (=> b!1418962 (= res!642538 (and (not (= (left!12441 (c!233029 (tokens!1830 acc!229))) Empty!4880)) (not (= (right!12771 (c!233029 (tokens!1830 acc!229))) Empty!4880))))))

(declare-fun b!1418963 () Bool)

(declare-fun res!642539 () Bool)

(assert (=> b!1418963 (=> (not res!642539) (not e!905751))))

(assert (=> b!1418963 (= res!642539 (= (cheight!5091 (c!233029 (tokens!1830 acc!229))) (+ (max!0 (height!711 (left!12441 (c!233029 (tokens!1830 acc!229)))) (height!711 (right!12771 (c!233029 (tokens!1830 acc!229))))) 1)))))

(declare-fun b!1418964 () Bool)

(assert (=> b!1418964 (= e!905751 (<= 0 (cheight!5091 (c!233029 (tokens!1830 acc!229)))))))

(assert (= (and d!406394 res!642537) b!1418962))

(assert (= (and b!1418962 res!642538) b!1418963))

(assert (= (and b!1418963 res!642539) b!1418964))

(declare-fun m!1607073 () Bool)

(assert (=> d!406394 m!1607073))

(declare-fun m!1607075 () Bool)

(assert (=> d!406394 m!1607075))

(declare-fun m!1607077 () Bool)

(assert (=> b!1418963 m!1607077))

(declare-fun m!1607079 () Bool)

(assert (=> b!1418963 m!1607079))

(assert (=> b!1418963 m!1607077))

(assert (=> b!1418963 m!1607079))

(declare-fun m!1607081 () Bool)

(assert (=> b!1418963 m!1607081))

(assert (=> b!1418346 d!406394))

(declare-fun d!406396 () Bool)

(declare-fun e!905752 () Bool)

(assert (=> d!406396 e!905752))

(declare-fun res!642540 () Bool)

(assert (=> d!406396 (=> (not res!642540) (not e!905752))))

(declare-fun lt!478525 () BalanceConc!9698)

(assert (=> d!406396 (= res!642540 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (ite c!233087 sep!3 (ite c!233083 (head!2755 objs!24) sep!3))) lt!478525))) (list!5734 (tokens!1830 (ite c!233087 sep!3 (ite c!233083 (head!2755 objs!24) sep!3))))))))

(assert (=> d!406396 (= lt!478525 (print!982 Lexer!2207 (tokens!1830 (ite c!233087 sep!3 (ite c!233083 (head!2755 objs!24) sep!3)))))))

(declare-fun lt!478526 () Unit!21489)

(assert (=> d!406396 (= lt!478526 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (ite c!233087 sep!3 (ite c!233083 (head!2755 objs!24) sep!3))) (list!5734 (tokens!1830 (ite c!233087 sep!3 (ite c!233083 (head!2755 objs!24) sep!3))))))))

(assert (=> d!406396 (= (print!981 (ite c!233087 sep!3 (ite c!233083 (head!2755 objs!24) sep!3))) lt!478525)))

(declare-fun b!1418965 () Bool)

(assert (=> b!1418965 (= e!905752 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (ite c!233087 sep!3 (ite c!233083 (head!2755 objs!24) sep!3))) lt!478525)))))))

(assert (= (and d!406396 res!642540) b!1418965))

(declare-fun m!1607083 () Bool)

(assert (=> d!406396 m!1607083))

(declare-fun m!1607085 () Bool)

(assert (=> d!406396 m!1607085))

(declare-fun m!1607087 () Bool)

(assert (=> d!406396 m!1607087))

(declare-fun m!1607089 () Bool)

(assert (=> d!406396 m!1607089))

(assert (=> d!406396 m!1607085))

(declare-fun m!1607091 () Bool)

(assert (=> d!406396 m!1607091))

(assert (=> b!1418965 m!1607083))

(declare-fun m!1607093 () Bool)

(assert (=> b!1418965 m!1607093))

(assert (=> b!1418965 m!1607093))

(declare-fun m!1607095 () Bool)

(assert (=> b!1418965 m!1607095))

(assert (=> bm!96498 d!406396))

(declare-fun d!406398 () Bool)

(declare-fun res!642541 () Bool)

(declare-fun e!905753 () Bool)

(assert (=> d!406398 (=> (not res!642541) (not e!905753))))

(assert (=> d!406398 (= res!642541 (rulesValid!949 Lexer!2207 (rules!11126 acc!229)))))

(assert (=> d!406398 (= (rulesInvariant!2079 Lexer!2207 (rules!11126 acc!229)) e!905753)))

(declare-fun b!1418966 () Bool)

(assert (=> b!1418966 (= e!905753 (noDuplicateTag!949 Lexer!2207 (rules!11126 acc!229) Nil!14556))))

(assert (= (and d!406398 res!642541) b!1418966))

(declare-fun m!1607097 () Bool)

(assert (=> d!406398 m!1607097))

(declare-fun m!1607099 () Bool)

(assert (=> b!1418966 m!1607099))

(assert (=> b!1418340 d!406398))

(declare-fun d!406400 () Bool)

(assert (=> d!406400 (= (inv!19187 (xs!7607 (c!233029 (tokens!1830 acc!229)))) (<= (size!12012 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 acc!229))))) 2147483647))))

(declare-fun bs!339617 () Bool)

(assert (= bs!339617 d!406400))

(declare-fun m!1607101 () Bool)

(assert (=> bs!339617 m!1607101))

(assert (=> b!1418386 d!406400))

(declare-fun c!233205 () Bool)

(declare-fun d!406402 () Bool)

(assert (=> d!406402 (= c!233205 ((_ is Cons!14553) (ite c!233096 call!96554 (ite c!233092 Nil!14553 lt!477816))))))

(declare-fun e!905754 () List!14617)

(assert (=> d!406402 (= (printList!663 (ite (or c!233096 c!233092) Lexer!2207 lt!477811) (ite c!233096 call!96554 (ite c!233092 Nil!14553 lt!477816))) e!905754)))

(declare-fun b!1418967 () Bool)

(assert (=> b!1418967 (= e!905754 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96554 (ite c!233092 Nil!14553 lt!477816))))) (printList!663 (ite (or c!233096 c!233092) Lexer!2207 lt!477811) (t!124254 (ite c!233096 call!96554 (ite c!233092 Nil!14553 lt!477816))))))))

(declare-fun b!1418968 () Bool)

(assert (=> b!1418968 (= e!905754 Nil!14551)))

(assert (= (and d!406402 c!233205) b!1418967))

(assert (= (and d!406402 (not c!233205)) b!1418968))

(declare-fun m!1607103 () Bool)

(assert (=> b!1418967 m!1607103))

(assert (=> b!1418967 m!1607103))

(declare-fun m!1607105 () Bool)

(assert (=> b!1418967 m!1607105))

(declare-fun m!1607107 () Bool)

(assert (=> b!1418967 m!1607107))

(assert (=> b!1418967 m!1607105))

(assert (=> b!1418967 m!1607107))

(declare-fun m!1607109 () Bool)

(assert (=> b!1418967 m!1607109))

(assert (=> bm!96571 d!406402))

(declare-fun d!406404 () Bool)

(assert (=> d!406404 (= (isEmpty!8944 lt!477749) (not ((_ is Some!2795) lt!477749)))))

(assert (=> d!405992 d!406404))

(declare-fun d!406406 () Bool)

(declare-fun lt!478529 () Bool)

(declare-fun isEmpty!8956 (List!14619) Bool)

(assert (=> d!406406 (= lt!478529 (isEmpty!8956 (list!5734 (tokens!1830 sep!3))))))

(assert (=> d!406406 (= lt!478529 (isEmpty!8955 (c!233029 (tokens!1830 sep!3))))))

(assert (=> d!406406 (= (isEmpty!8945 (tokens!1830 sep!3)) lt!478529)))

(declare-fun bs!339618 () Bool)

(assert (= bs!339618 d!406406))

(assert (=> bs!339618 m!1604823))

(assert (=> bs!339618 m!1604823))

(declare-fun m!1607111 () Bool)

(assert (=> bs!339618 m!1607111))

(declare-fun m!1607113 () Bool)

(assert (=> bs!339618 m!1607113))

(assert (=> d!405992 d!406406))

(declare-fun d!406408 () Bool)

(declare-fun e!905763 () Bool)

(assert (=> d!406408 e!905763))

(declare-fun res!642556 () Bool)

(assert (=> d!406408 (=> (not res!642556) (not e!905763))))

(assert (=> d!406408 (= res!642556 (rulesInvariant!2079 Lexer!2207 (rules!11126 (head!2755 objs!24))))))

(declare-fun Unit!21655 () Unit!21489)

(assert (=> d!406408 (= (lemmaInvariant!235 (head!2755 objs!24)) Unit!21655)))

(declare-fun b!1418983 () Bool)

(declare-fun res!642557 () Bool)

(assert (=> b!1418983 (=> (not res!642557) (not e!905763))))

(assert (=> b!1418983 (= res!642557 (rulesProduceEachTokenIndividually!806 Lexer!2207 (rules!11126 (head!2755 objs!24)) (tokens!1830 (head!2755 objs!24))))))

(declare-fun b!1418984 () Bool)

(assert (=> b!1418984 (= e!905763 (separableTokens!191 Lexer!2207 (tokens!1830 (head!2755 objs!24)) (rules!11126 (head!2755 objs!24))))))

(assert (= (and d!406408 res!642556) b!1418983))

(assert (= (and b!1418983 res!642557) b!1418984))

(declare-fun m!1607167 () Bool)

(assert (=> d!406408 m!1607167))

(declare-fun m!1607169 () Bool)

(assert (=> b!1418983 m!1607169))

(declare-fun m!1607171 () Bool)

(assert (=> b!1418984 m!1607171))

(assert (=> d!405992 d!406408))

(declare-fun d!406422 () Bool)

(declare-fun e!905764 () Bool)

(assert (=> d!406422 e!905764))

(declare-fun res!642558 () Bool)

(assert (=> d!406422 (=> (not res!642558) (not e!905764))))

(assert (=> d!406422 (= res!642558 (rulesInvariant!2079 Lexer!2207 (rules!11126 sep!3)))))

(declare-fun Unit!21656 () Unit!21489)

(assert (=> d!406422 (= (lemmaInvariant!235 sep!3) Unit!21656)))

(declare-fun b!1418985 () Bool)

(declare-fun res!642559 () Bool)

(assert (=> b!1418985 (=> (not res!642559) (not e!905764))))

(assert (=> b!1418985 (= res!642559 (rulesProduceEachTokenIndividually!806 Lexer!2207 (rules!11126 sep!3) (tokens!1830 sep!3)))))

(declare-fun b!1418986 () Bool)

(assert (=> b!1418986 (= e!905764 (separableTokens!191 Lexer!2207 (tokens!1830 sep!3) (rules!11126 sep!3)))))

(assert (= (and d!406422 res!642558) b!1418985))

(assert (= (and b!1418985 res!642559) b!1418986))

(assert (=> d!406422 m!1605215))

(assert (=> b!1418985 m!1605217))

(assert (=> b!1418986 m!1605219))

(assert (=> d!405992 d!406422))

(declare-fun d!406424 () Bool)

(declare-fun res!642564 () Bool)

(declare-fun e!905767 () Bool)

(assert (=> d!406424 (=> (not res!642564) (not e!905767))))

(declare-fun list!5745 (IArray!9765) List!14619)

(assert (=> d!406424 (= res!642564 (<= (size!12012 (list!5745 (xs!7607 (c!233029 (tokens!1830 sep!3))))) 512))))

(assert (=> d!406424 (= (inv!19178 (c!233029 (tokens!1830 sep!3))) e!905767)))

(declare-fun b!1418991 () Bool)

(declare-fun res!642565 () Bool)

(assert (=> b!1418991 (=> (not res!642565) (not e!905767))))

(assert (=> b!1418991 (= res!642565 (= (csize!9991 (c!233029 (tokens!1830 sep!3))) (size!12012 (list!5745 (xs!7607 (c!233029 (tokens!1830 sep!3)))))))))

(declare-fun b!1418992 () Bool)

(assert (=> b!1418992 (= e!905767 (and (> (csize!9991 (c!233029 (tokens!1830 sep!3))) 0) (<= (csize!9991 (c!233029 (tokens!1830 sep!3))) 512)))))

(assert (= (and d!406424 res!642564) b!1418991))

(assert (= (and b!1418991 res!642565) b!1418992))

(declare-fun m!1607173 () Bool)

(assert (=> d!406424 m!1607173))

(assert (=> d!406424 m!1607173))

(declare-fun m!1607175 () Bool)

(assert (=> d!406424 m!1607175))

(assert (=> b!1418991 m!1607173))

(assert (=> b!1418991 m!1607173))

(assert (=> b!1418991 m!1607175))

(assert (=> b!1418102 d!406424))

(declare-fun c!233206 () Bool)

(declare-fun d!406426 () Bool)

(assert (=> d!406426 (= c!233206 ((_ is Cons!14553) (ite c!233096 call!96566 (ite c!233092 (t!124254 lt!477819) lt!477851))))))

(declare-fun e!905768 () List!14617)

(assert (=> d!406426 (= (printList!663 (ite c!233096 lt!477848 (ite c!233092 Lexer!2207 lt!477801)) (ite c!233096 call!96566 (ite c!233092 (t!124254 lt!477819) lt!477851))) e!905768)))

(declare-fun b!1418993 () Bool)

(assert (=> b!1418993 (= e!905768 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96566 (ite c!233092 (t!124254 lt!477819) lt!477851))))) (printList!663 (ite c!233096 lt!477848 (ite c!233092 Lexer!2207 lt!477801)) (t!124254 (ite c!233096 call!96566 (ite c!233092 (t!124254 lt!477819) lt!477851))))))))

(declare-fun b!1418994 () Bool)

(assert (=> b!1418994 (= e!905768 Nil!14551)))

(assert (= (and d!406426 c!233206) b!1418993))

(assert (= (and d!406426 (not c!233206)) b!1418994))

(declare-fun m!1607177 () Bool)

(assert (=> b!1418993 m!1607177))

(assert (=> b!1418993 m!1607177))

(declare-fun m!1607179 () Bool)

(assert (=> b!1418993 m!1607179))

(declare-fun m!1607181 () Bool)

(assert (=> b!1418993 m!1607181))

(assert (=> b!1418993 m!1607179))

(assert (=> b!1418993 m!1607181))

(declare-fun m!1607183 () Bool)

(assert (=> b!1418993 m!1607183))

(assert (=> bm!96559 d!406426))

(declare-fun d!406428 () Bool)

(declare-fun e!905770 () Bool)

(assert (=> d!406428 e!905770))

(declare-fun res!642566 () Bool)

(assert (=> d!406428 (=> (not res!642566) (not e!905770))))

(assert (=> d!406428 (= res!642566 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 acc!229) (print!982 Lexer!2207 (seqFromList!1675 (ite c!233096 call!96574 call!96540)))))) (ite c!233096 call!96574 call!96540)))))

(declare-fun lt!478551 () Unit!21489)

(declare-fun e!905769 () Unit!21489)

(assert (=> d!406428 (= lt!478551 e!905769)))

(declare-fun c!233207 () Bool)

(assert (=> d!406428 (= c!233207 (or ((_ is Nil!14553) (ite c!233096 call!96574 call!96540)) ((_ is Nil!14553) (t!124254 (ite c!233096 call!96574 call!96540)))))))

(assert (=> d!406428 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406428 (= (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 acc!229) (ite c!233096 call!96574 call!96540)) lt!478551)))

(declare-fun b!1418995 () Bool)

(declare-fun Unit!21657 () Unit!21489)

(assert (=> b!1418995 (= e!905769 Unit!21657)))

(declare-fun b!1418996 () Bool)

(declare-fun Unit!21658 () Unit!21489)

(assert (=> b!1418996 (= e!905769 Unit!21658)))

(declare-fun lt!478544 () BalanceConc!9698)

(assert (=> b!1418996 (= lt!478544 (print!982 Lexer!2207 (seqFromList!1675 (ite c!233096 call!96574 call!96540))))))

(declare-fun lt!478538 () BalanceConc!9698)

(assert (=> b!1418996 (= lt!478538 (print!982 Lexer!2207 (seqFromList!1675 (t!124254 (ite c!233096 call!96574 call!96540)))))))

(declare-fun lt!478549 () tuple2!14004)

(assert (=> b!1418996 (= lt!478549 (lex!1013 Lexer!2207 (rules!11126 acc!229) lt!478538))))

(declare-fun lt!478552 () List!14617)

(assert (=> b!1418996 (= lt!478552 (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96574 call!96540)))))))

(declare-fun lt!478545 () List!14617)

(assert (=> b!1418996 (= lt!478545 (list!5733 lt!478538))))

(declare-fun lt!478540 () Unit!21489)

(assert (=> b!1418996 (= lt!478540 (lemmaConcatTwoListThenFirstIsPrefix!739 lt!478552 lt!478545))))

(assert (=> b!1418996 (isPrefix!1172 lt!478552 (++!3814 lt!478552 lt!478545))))

(declare-fun lt!478556 () Unit!21489)

(assert (=> b!1418996 (= lt!478556 lt!478540)))

(declare-fun lt!478561 () Unit!21489)

(assert (=> b!1418996 (= lt!478561 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 acc!229) (t!124254 (ite c!233096 call!96574 call!96540))))))

(declare-fun lt!478559 () Unit!21489)

(assert (=> b!1418996 (= lt!478559 (seqFromListBHdTlConstructive!68 (h!19954 (t!124254 (ite c!233096 call!96574 call!96540))) (t!124254 (t!124254 (ite c!233096 call!96574 call!96540))) (_1!7888 lt!478549)))))

(assert (=> b!1418996 (= (list!5734 (_1!7888 lt!478549)) (list!5734 (prepend!384 (seqFromList!1675 (t!124254 (t!124254 (ite c!233096 call!96574 call!96540)))) (h!19954 (t!124254 (ite c!233096 call!96574 call!96540))))))))

(declare-fun lt!478548 () Unit!21489)

(assert (=> b!1418996 (= lt!478548 lt!478559)))

(declare-fun lt!478560 () Option!2798)

(assert (=> b!1418996 (= lt!478560 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (list!5733 lt!478544)))))

(assert (=> b!1418996 (= (print!982 Lexer!2207 (singletonSeq!1169 (h!19954 (ite c!233096 call!96574 call!96540)))) (printTailRec!645 Lexer!2207 (singletonSeq!1169 (h!19954 (ite c!233096 call!96574 call!96540))) 0 (BalanceConc!9699 Empty!4879)))))

(declare-fun lt!478546 () Unit!21489)

(declare-fun Unit!21659 () Unit!21489)

(assert (=> b!1418996 (= lt!478546 Unit!21659)))

(declare-fun lt!478542 () Unit!21489)

(assert (=> b!1418996 (= lt!478542 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!212 Lexer!2207 (rules!11126 acc!229) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96574 call!96540)))) (list!5733 lt!478538)))))

(assert (=> b!1418996 (= (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96574 call!96540)))) (originalCharacters!3397 (h!19954 (ite c!233096 call!96574 call!96540))))))

(declare-fun lt!478563 () Unit!21489)

(declare-fun Unit!21660 () Unit!21489)

(assert (=> b!1418996 (= lt!478563 Unit!21660)))

(assert (=> b!1418996 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233096 call!96574 call!96540)))) 0))) (Cons!14551 (head!2764 (originalCharacters!3397 (h!19954 (t!124254 (ite c!233096 call!96574 call!96540))))) Nil!14551))))

(declare-fun lt!478547 () Unit!21489)

(declare-fun Unit!21661 () Unit!21489)

(assert (=> b!1418996 (= lt!478547 Unit!21661)))

(assert (=> b!1418996 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233096 call!96574 call!96540)))) 0))) (Cons!14551 (head!2764 (list!5733 lt!478538)) Nil!14551))))

(declare-fun lt!478541 () Unit!21489)

(declare-fun Unit!21662 () Unit!21489)

(assert (=> b!1418996 (= lt!478541 Unit!21662)))

(assert (=> b!1418996 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (ite c!233096 call!96574 call!96540)))) 0))) (Cons!14551 (head!2765 lt!478538) Nil!14551))))

(declare-fun lt!478539 () Unit!21489)

(declare-fun Unit!21663 () Unit!21489)

(assert (=> b!1418996 (= lt!478539 Unit!21663)))

(assert (=> b!1418996 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (originalCharacters!3397 (h!19954 (ite c!233096 call!96574 call!96540)))))))

(declare-fun lt!478553 () Unit!21489)

(declare-fun Unit!21664 () Unit!21489)

(assert (=> b!1418996 (= lt!478553 Unit!21664)))

(assert (=> b!1418996 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96574 call!96540))))))))

(declare-fun lt!478554 () Unit!21489)

(declare-fun Unit!21665 () Unit!21489)

(assert (=> b!1418996 (= lt!478554 Unit!21665)))

(declare-fun lt!478562 () Unit!21489)

(declare-fun Unit!21666 () Unit!21489)

(assert (=> b!1418996 (= lt!478562 Unit!21666)))

(assert (=> b!1418996 (= (_1!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96574 call!96540))))))) (h!19954 (ite c!233096 call!96574 call!96540)))))

(declare-fun lt!478543 () Unit!21489)

(declare-fun Unit!21667 () Unit!21489)

(assert (=> b!1418996 (= lt!478543 Unit!21667)))

(assert (=> b!1418996 (isEmpty!8952 (_2!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 acc!229) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96574 call!96540))))))))))

(declare-fun lt!478555 () Unit!21489)

(declare-fun Unit!21668 () Unit!21489)

(assert (=> b!1418996 (= lt!478555 Unit!21668)))

(assert (=> b!1418996 (matchR!1798 (regex!2535 (rule!4298 (h!19954 (ite c!233096 call!96574 call!96540)))) (list!5733 (charsOf!1480 (h!19954 (ite c!233096 call!96574 call!96540)))))))

(declare-fun lt!478557 () Unit!21489)

(declare-fun Unit!21669 () Unit!21489)

(assert (=> b!1418996 (= lt!478557 Unit!21669)))

(assert (=> b!1418996 (= (rule!4298 (h!19954 (ite c!233096 call!96574 call!96540))) (rule!4298 (h!19954 (ite c!233096 call!96574 call!96540))))))

(declare-fun lt!478558 () Unit!21489)

(declare-fun Unit!21670 () Unit!21489)

(assert (=> b!1418996 (= lt!478558 Unit!21670)))

(declare-fun lt!478550 () Unit!21489)

(assert (=> b!1418996 (= lt!478550 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!10 Lexer!2207 (rules!11126 acc!229) (h!19954 (ite c!233096 call!96574 call!96540)) (rule!4298 (h!19954 (ite c!233096 call!96574 call!96540))) (list!5733 lt!478538)))))

(declare-fun b!1418997 () Bool)

(assert (=> b!1418997 (= e!905770 (isEmpty!8953 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 acc!229) (print!982 Lexer!2207 (seqFromList!1675 (ite c!233096 call!96574 call!96540)))))))))

(assert (= (and d!406428 c!233207) b!1418995))

(assert (= (and d!406428 (not c!233207)) b!1418996))

(assert (= (and d!406428 res!642566) b!1418997))

(declare-fun m!1607185 () Bool)

(assert (=> d!406428 m!1607185))

(declare-fun m!1607187 () Bool)

(assert (=> d!406428 m!1607187))

(assert (=> d!406428 m!1607185))

(declare-fun m!1607189 () Bool)

(assert (=> d!406428 m!1607189))

(assert (=> d!406428 m!1607189))

(declare-fun m!1607191 () Bool)

(assert (=> d!406428 m!1607191))

(assert (=> d!406428 m!1605205))

(declare-fun m!1607193 () Bool)

(assert (=> b!1418996 m!1607193))

(declare-fun m!1607195 () Bool)

(assert (=> b!1418996 m!1607195))

(declare-fun m!1607197 () Bool)

(assert (=> b!1418996 m!1607197))

(declare-fun m!1607199 () Bool)

(assert (=> b!1418996 m!1607199))

(declare-fun m!1607201 () Bool)

(assert (=> b!1418996 m!1607201))

(assert (=> b!1418996 m!1607197))

(declare-fun m!1607203 () Bool)

(assert (=> b!1418996 m!1607203))

(declare-fun m!1607205 () Bool)

(assert (=> b!1418996 m!1607205))

(declare-fun m!1607207 () Bool)

(assert (=> b!1418996 m!1607207))

(assert (=> b!1418996 m!1607193))

(declare-fun m!1607209 () Bool)

(assert (=> b!1418996 m!1607209))

(declare-fun m!1607211 () Bool)

(assert (=> b!1418996 m!1607211))

(declare-fun m!1607213 () Bool)

(assert (=> b!1418996 m!1607213))

(declare-fun m!1607215 () Bool)

(assert (=> b!1418996 m!1607215))

(declare-fun m!1607217 () Bool)

(assert (=> b!1418996 m!1607217))

(assert (=> b!1418996 m!1607207))

(declare-fun m!1607219 () Bool)

(assert (=> b!1418996 m!1607219))

(declare-fun m!1607221 () Bool)

(assert (=> b!1418996 m!1607221))

(declare-fun m!1607223 () Bool)

(assert (=> b!1418996 m!1607223))

(assert (=> b!1418996 m!1607221))

(declare-fun m!1607225 () Bool)

(assert (=> b!1418996 m!1607225))

(declare-fun m!1607227 () Bool)

(assert (=> b!1418996 m!1607227))

(assert (=> b!1418996 m!1607213))

(declare-fun m!1607229 () Bool)

(assert (=> b!1418996 m!1607229))

(assert (=> b!1418996 m!1607209))

(declare-fun m!1607231 () Bool)

(assert (=> b!1418996 m!1607231))

(assert (=> b!1418996 m!1607213))

(declare-fun m!1607233 () Bool)

(assert (=> b!1418996 m!1607233))

(declare-fun m!1607235 () Bool)

(assert (=> b!1418996 m!1607235))

(assert (=> b!1418996 m!1607185))

(assert (=> b!1418996 m!1607205))

(declare-fun m!1607237 () Bool)

(assert (=> b!1418996 m!1607237))

(assert (=> b!1418996 m!1607185))

(assert (=> b!1418996 m!1607189))

(declare-fun m!1607239 () Bool)

(assert (=> b!1418996 m!1607239))

(assert (=> b!1418996 m!1607201))

(declare-fun m!1607241 () Bool)

(assert (=> b!1418996 m!1607241))

(assert (=> b!1418996 m!1607211))

(assert (=> b!1418996 m!1607197))

(assert (=> b!1418996 m!1607231))

(declare-fun m!1607243 () Bool)

(assert (=> b!1418996 m!1607243))

(assert (=> b!1418996 m!1607217))

(assert (=> b!1418996 m!1607239))

(declare-fun m!1607245 () Bool)

(assert (=> b!1418996 m!1607245))

(declare-fun m!1607247 () Bool)

(assert (=> b!1418996 m!1607247))

(declare-fun m!1607249 () Bool)

(assert (=> b!1418996 m!1607249))

(declare-fun m!1607251 () Bool)

(assert (=> b!1418996 m!1607251))

(assert (=> b!1418996 m!1607239))

(declare-fun m!1607253 () Bool)

(assert (=> b!1418996 m!1607253))

(declare-fun m!1607255 () Bool)

(assert (=> b!1418996 m!1607255))

(assert (=> b!1418996 m!1607211))

(declare-fun m!1607257 () Bool)

(assert (=> b!1418996 m!1607257))

(assert (=> b!1418996 m!1607213))

(declare-fun m!1607259 () Bool)

(assert (=> b!1418996 m!1607259))

(assert (=> b!1418996 m!1607225))

(assert (=> b!1418996 m!1607211))

(declare-fun m!1607261 () Bool)

(assert (=> b!1418996 m!1607261))

(assert (=> b!1418996 m!1607247))

(declare-fun m!1607263 () Bool)

(assert (=> b!1418996 m!1607263))

(assert (=> b!1418997 m!1607185))

(assert (=> b!1418997 m!1607185))

(assert (=> b!1418997 m!1607189))

(assert (=> b!1418997 m!1607189))

(assert (=> b!1418997 m!1607191))

(declare-fun m!1607265 () Bool)

(assert (=> b!1418997 m!1607265))

(assert (=> bm!96547 d!406428))

(declare-fun d!406430 () Bool)

(assert (=> d!406430 (= (inv!19188 (xs!7608 (c!233030 objs!24))) (<= (size!12007 (innerList!4941 (xs!7608 (c!233030 objs!24)))) 2147483647))))

(declare-fun bs!339622 () Bool)

(assert (= bs!339622 d!406430))

(declare-fun m!1607267 () Bool)

(assert (=> bs!339622 m!1607267))

(assert (=> b!1418383 d!406430))

(assert (=> b!1418082 d!405986))

(declare-fun d!406432 () Bool)

(assert (=> d!406432 (= (list!5733 call!96508) (list!5742 (c!233028 call!96508)))))

(declare-fun bs!339623 () Bool)

(assert (= bs!339623 d!406432))

(declare-fun m!1607269 () Bool)

(assert (=> bs!339623 m!1607269))

(assert (=> bm!96531 d!406432))

(declare-fun d!406434 () Bool)

(declare-fun lt!478564 () Bool)

(assert (=> d!406434 (= lt!478564 (isEmpty!8956 (list!5734 (tokens!1830 (head!2755 objs!24)))))))

(assert (=> d!406434 (= lt!478564 (isEmpty!8955 (c!233029 (tokens!1830 (head!2755 objs!24)))))))

(assert (=> d!406434 (= (isEmpty!8945 (tokens!1830 (head!2755 objs!24))) lt!478564)))

(declare-fun bs!339624 () Bool)

(assert (= bs!339624 d!406434))

(assert (=> bs!339624 m!1604821))

(assert (=> bs!339624 m!1604821))

(declare-fun m!1607271 () Bool)

(assert (=> bs!339624 m!1607271))

(declare-fun m!1607273 () Bool)

(assert (=> bs!339624 m!1607273))

(assert (=> b!1418224 d!406434))

(declare-fun d!406436 () Bool)

(assert (=> d!406436 (= (printList!663 (ite c!233096 lt!477848 lt!477801) (++!3813 (ite c!233096 lt!477834 lt!477851) (ite c!233096 lt!477804 lt!477857))) (++!3814 (printList!663 (ite c!233096 lt!477848 lt!477801) (ite c!233096 lt!477834 lt!477851)) (printList!663 (ite c!233096 lt!477848 lt!477801) (ite c!233096 lt!477804 lt!477857))))))

(declare-fun lt!478565 () Unit!21489)

(assert (=> d!406436 (= lt!478565 (choose!8744 (ite c!233096 lt!477848 lt!477801) (ite c!233096 lt!477834 lt!477851) (ite c!233096 lt!477804 lt!477857)))))

(assert (=> d!406436 (= (lemmaPrintConcatSameAsConcatPrint!28 (ite c!233096 lt!477848 lt!477801) (ite c!233096 lt!477834 lt!477851) (ite c!233096 lt!477804 lt!477857)) lt!478565)))

(declare-fun bs!339625 () Bool)

(assert (= bs!339625 d!406436))

(declare-fun m!1607275 () Bool)

(assert (=> bs!339625 m!1607275))

(declare-fun m!1607277 () Bool)

(assert (=> bs!339625 m!1607277))

(declare-fun m!1607279 () Bool)

(assert (=> bs!339625 m!1607279))

(assert (=> bs!339625 m!1607275))

(declare-fun m!1607281 () Bool)

(assert (=> bs!339625 m!1607281))

(declare-fun m!1607283 () Bool)

(assert (=> bs!339625 m!1607283))

(assert (=> bs!339625 m!1607281))

(assert (=> bs!339625 m!1607277))

(declare-fun m!1607285 () Bool)

(assert (=> bs!339625 m!1607285))

(assert (=> bm!96536 d!406436))

(declare-fun d!406438 () Bool)

(assert (=> d!406438 (= (list!5734 (ite c!233096 (tokens!1830 (v!22115 lt!477384)) (tokens!1830 acc!229))) (list!5741 (c!233029 (ite c!233096 (tokens!1830 (v!22115 lt!477384)) (tokens!1830 acc!229)))))))

(declare-fun bs!339626 () Bool)

(assert (= bs!339626 d!406438))

(declare-fun m!1607287 () Bool)

(assert (=> bs!339626 m!1607287))

(assert (=> bm!96563 d!406438))

(declare-fun d!406440 () Bool)

(assert (=> d!406440 (= (list!5734 (ite c!233087 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))) (list!5741 (c!233029 (ite c!233087 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))

(declare-fun bs!339627 () Bool)

(assert (= bs!339627 d!406440))

(declare-fun m!1607289 () Bool)

(assert (=> bs!339627 m!1607289))

(assert (=> bm!96534 d!406440))

(declare-fun d!406442 () Bool)

(declare-fun res!642571 () Bool)

(declare-fun e!905775 () Bool)

(assert (=> d!406442 (=> res!642571 e!905775)))

(assert (=> d!406442 (= res!642571 ((_ is Nil!14554) (list!5735 objs!24)))))

(assert (=> d!406442 (= (forall!3622 (list!5735 objs!24) lambda!62611) e!905775)))

(declare-fun b!1419002 () Bool)

(declare-fun e!905776 () Bool)

(assert (=> b!1419002 (= e!905775 e!905776)))

(declare-fun res!642572 () Bool)

(assert (=> b!1419002 (=> (not res!642572) (not e!905776))))

(declare-fun dynLambda!6728 (Int PrintableTokens!852) Bool)

(assert (=> b!1419002 (= res!642572 (dynLambda!6728 lambda!62611 (h!19955 (list!5735 objs!24))))))

(declare-fun b!1419003 () Bool)

(assert (=> b!1419003 (= e!905776 (forall!3622 (t!124255 (list!5735 objs!24)) lambda!62611))))

(assert (= (and d!406442 (not res!642571)) b!1419002))

(assert (= (and b!1419002 res!642572) b!1419003))

(declare-fun b_lambda!44617 () Bool)

(assert (=> (not b_lambda!44617) (not b!1419002)))

(declare-fun m!1607291 () Bool)

(assert (=> b!1419002 m!1607291))

(declare-fun m!1607293 () Bool)

(assert (=> b!1419003 m!1607293))

(assert (=> d!406030 d!406442))

(assert (=> d!406030 d!406216))

(declare-fun d!406444 () Bool)

(declare-fun lt!478571 () Bool)

(assert (=> d!406444 (= lt!478571 (forall!3622 (list!5739 (c!233030 objs!24)) lambda!62611))))

(declare-fun e!905784 () Bool)

(assert (=> d!406444 (= lt!478571 e!905784)))

(declare-fun res!642577 () Bool)

(assert (=> d!406444 (=> res!642577 e!905784)))

(assert (=> d!406444 (= res!642577 ((_ is Empty!4881) (c!233030 objs!24)))))

(assert (=> d!406444 (= (forall!3623 (c!233030 objs!24) lambda!62611) lt!478571)))

(declare-fun b!1419012 () Bool)

(declare-fun e!905785 () Bool)

(assert (=> b!1419012 (= e!905784 e!905785)))

(declare-fun c!233210 () Bool)

(assert (=> b!1419012 (= c!233210 ((_ is Leaf!7345) (c!233030 objs!24)))))

(declare-fun b!1419015 () Bool)

(declare-fun e!905783 () Bool)

(assert (=> b!1419015 (= e!905783 (forall!3623 (right!12772 (c!233030 objs!24)) lambda!62611))))

(declare-fun b!1419013 () Bool)

(declare-fun forall!3628 (IArray!9767 Int) Bool)

(assert (=> b!1419013 (= e!905785 (forall!3628 (xs!7608 (c!233030 objs!24)) lambda!62611))))

(declare-fun b!1419014 () Bool)

(assert (=> b!1419014 (= e!905785 e!905783)))

(declare-fun lt!478570 () Unit!21489)

(declare-fun lemmaForallConcat!136 (List!14620 List!14620 Int) Unit!21489)

(assert (=> b!1419014 (= lt!478570 (lemmaForallConcat!136 (list!5739 (left!12442 (c!233030 objs!24))) (list!5739 (right!12772 (c!233030 objs!24))) lambda!62611))))

(declare-fun res!642578 () Bool)

(assert (=> b!1419014 (= res!642578 (forall!3623 (left!12442 (c!233030 objs!24)) lambda!62611))))

(assert (=> b!1419014 (=> (not res!642578) (not e!905783))))

(assert (= (and d!406444 (not res!642577)) b!1419012))

(assert (= (and b!1419012 c!233210) b!1419013))

(assert (= (and b!1419012 (not c!233210)) b!1419014))

(assert (= (and b!1419014 res!642578) b!1419015))

(assert (=> d!406444 m!1605715))

(assert (=> d!406444 m!1605715))

(declare-fun m!1607295 () Bool)

(assert (=> d!406444 m!1607295))

(declare-fun m!1607297 () Bool)

(assert (=> b!1419015 m!1607297))

(declare-fun m!1607299 () Bool)

(assert (=> b!1419013 m!1607299))

(assert (=> b!1419014 m!1605687))

(assert (=> b!1419014 m!1605685))

(assert (=> b!1419014 m!1605687))

(assert (=> b!1419014 m!1605685))

(declare-fun m!1607301 () Bool)

(assert (=> b!1419014 m!1607301))

(declare-fun m!1607303 () Bool)

(assert (=> b!1419014 m!1607303))

(assert (=> d!406030 d!406444))

(declare-fun d!406446 () Bool)

(declare-fun lt!478572 () BalanceConc!9698)

(assert (=> d!406446 (= (list!5733 lt!478572) (printList!663 Lexer!2207 (list!5734 (tokens!1830 (head!2755 objs!24)))))))

(assert (=> d!406446 (= lt!478572 (printTailRec!645 Lexer!2207 (tokens!1830 (head!2755 objs!24)) 0 (BalanceConc!9699 Empty!4879)))))

(assert (=> d!406446 (= (print!982 Lexer!2207 (tokens!1830 (head!2755 objs!24))) lt!478572)))

(declare-fun bs!339628 () Bool)

(assert (= bs!339628 d!406446))

(declare-fun m!1607305 () Bool)

(assert (=> bs!339628 m!1607305))

(assert (=> bs!339628 m!1604821))

(assert (=> bs!339628 m!1604821))

(declare-fun m!1607307 () Bool)

(assert (=> bs!339628 m!1607307))

(declare-fun m!1607309 () Bool)

(assert (=> bs!339628 m!1607309))

(assert (=> bm!96507 d!406446))

(declare-fun d!406448 () Bool)

(assert (=> d!406448 (= (isEmpty!8944 lt!477825) (not ((_ is Some!2795) lt!477825)))))

(assert (=> d!406028 d!406448))

(declare-fun d!406450 () Bool)

(declare-fun lt!478573 () Bool)

(assert (=> d!406450 (= lt!478573 (isEmpty!8956 (list!5734 (tokens!1830 (v!22115 lt!477384)))))))

(assert (=> d!406450 (= lt!478573 (isEmpty!8955 (c!233029 (tokens!1830 (v!22115 lt!477384)))))))

(assert (=> d!406450 (= (isEmpty!8945 (tokens!1830 (v!22115 lt!477384))) lt!478573)))

(declare-fun bs!339629 () Bool)

(assert (= bs!339629 d!406450))

(assert (=> bs!339629 m!1604963))

(assert (=> bs!339629 m!1604963))

(declare-fun m!1607311 () Bool)

(assert (=> bs!339629 m!1607311))

(declare-fun m!1607313 () Bool)

(assert (=> bs!339629 m!1607313))

(assert (=> d!406028 d!406450))

(declare-fun d!406452 () Bool)

(declare-fun e!905786 () Bool)

(assert (=> d!406452 e!905786))

(declare-fun res!642579 () Bool)

(assert (=> d!406452 (=> (not res!642579) (not e!905786))))

(assert (=> d!406452 (= res!642579 (rulesInvariant!2079 Lexer!2207 (rules!11126 acc!229)))))

(declare-fun Unit!21671 () Unit!21489)

(assert (=> d!406452 (= (lemmaInvariant!235 acc!229) Unit!21671)))

(declare-fun b!1419016 () Bool)

(declare-fun res!642580 () Bool)

(assert (=> b!1419016 (=> (not res!642580) (not e!905786))))

(assert (=> b!1419016 (= res!642580 (rulesProduceEachTokenIndividually!806 Lexer!2207 (rules!11126 acc!229) (tokens!1830 acc!229)))))

(declare-fun b!1419017 () Bool)

(assert (=> b!1419017 (= e!905786 (separableTokens!191 Lexer!2207 (tokens!1830 acc!229) (rules!11126 acc!229)))))

(assert (= (and d!406452 res!642579) b!1419016))

(assert (= (and b!1419016 res!642580) b!1419017))

(assert (=> d!406452 m!1605207))

(assert (=> b!1419016 m!1605209))

(assert (=> b!1419017 m!1605211))

(assert (=> d!406028 d!406452))

(declare-fun d!406454 () Bool)

(declare-fun e!905787 () Bool)

(assert (=> d!406454 e!905787))

(declare-fun res!642581 () Bool)

(assert (=> d!406454 (=> (not res!642581) (not e!905787))))

(assert (=> d!406454 (= res!642581 (rulesInvariant!2079 Lexer!2207 (rules!11126 (v!22115 lt!477384))))))

(declare-fun Unit!21672 () Unit!21489)

(assert (=> d!406454 (= (lemmaInvariant!235 (v!22115 lt!477384)) Unit!21672)))

(declare-fun b!1419018 () Bool)

(declare-fun res!642582 () Bool)

(assert (=> b!1419018 (=> (not res!642582) (not e!905787))))

(assert (=> b!1419018 (= res!642582 (rulesProduceEachTokenIndividually!806 Lexer!2207 (rules!11126 (v!22115 lt!477384)) (tokens!1830 (v!22115 lt!477384))))))

(declare-fun b!1419019 () Bool)

(assert (=> b!1419019 (= e!905787 (separableTokens!191 Lexer!2207 (tokens!1830 (v!22115 lt!477384)) (rules!11126 (v!22115 lt!477384))))))

(assert (= (and d!406454 res!642581) b!1419018))

(assert (= (and b!1419018 res!642582) b!1419019))

(declare-fun m!1607315 () Bool)

(assert (=> d!406454 m!1607315))

(declare-fun m!1607317 () Bool)

(assert (=> b!1419018 m!1607317))

(declare-fun m!1607319 () Bool)

(assert (=> b!1419019 m!1607319))

(assert (=> d!406028 d!406454))

(declare-fun lt!478574 () List!14619)

(declare-fun e!905789 () Bool)

(declare-fun b!1419023 () Bool)

(assert (=> b!1419023 (= e!905789 (or (not (= (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477829)) Nil!14553)) (= lt!478574 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477797)))))))

(declare-fun b!1419022 () Bool)

(declare-fun res!642583 () Bool)

(assert (=> b!1419022 (=> (not res!642583) (not e!905789))))

(assert (=> b!1419022 (= res!642583 (= (size!12012 lt!478574) (+ (size!12012 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477797))) (size!12012 (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477829))))))))

(declare-fun b!1419020 () Bool)

(declare-fun e!905788 () List!14619)

(assert (=> b!1419020 (= e!905788 (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477829)))))

(declare-fun d!406456 () Bool)

(assert (=> d!406456 e!905789))

(declare-fun res!642584 () Bool)

(assert (=> d!406456 (=> (not res!642584) (not e!905789))))

(assert (=> d!406456 (= res!642584 (= (content!2150 lt!478574) ((_ map or) (content!2150 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477797))) (content!2150 (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477829))))))))

(assert (=> d!406456 (= lt!478574 e!905788)))

(declare-fun c!233211 () Bool)

(assert (=> d!406456 (= c!233211 ((_ is Nil!14553) (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477797))))))

(assert (=> d!406456 (= (++!3813 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477797)) (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477829))) lt!478574)))

(declare-fun b!1419021 () Bool)

(assert (=> b!1419021 (= e!905788 (Cons!14553 (h!19954 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477797))) (++!3813 (t!124254 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477797))) (ite c!233096 lt!477804 (ite c!233092 lt!477809 lt!477829)))))))

(assert (= (and d!406456 c!233211) b!1419020))

(assert (= (and d!406456 (not c!233211)) b!1419021))

(assert (= (and d!406456 res!642584) b!1419022))

(assert (= (and b!1419022 res!642583) b!1419023))

(declare-fun m!1607321 () Bool)

(assert (=> b!1419022 m!1607321))

(declare-fun m!1607323 () Bool)

(assert (=> b!1419022 m!1607323))

(declare-fun m!1607325 () Bool)

(assert (=> b!1419022 m!1607325))

(declare-fun m!1607327 () Bool)

(assert (=> d!406456 m!1607327))

(declare-fun m!1607329 () Bool)

(assert (=> d!406456 m!1607329))

(declare-fun m!1607331 () Bool)

(assert (=> d!406456 m!1607331))

(declare-fun m!1607333 () Bool)

(assert (=> b!1419021 m!1607333))

(assert (=> bm!96539 d!406456))

(declare-fun d!406458 () Bool)

(assert (=> d!406458 (= (list!5734 (tokens!1830 (v!22115 lt!477384))) (list!5741 (c!233029 (tokens!1830 (v!22115 lt!477384)))))))

(declare-fun bs!339630 () Bool)

(assert (= bs!339630 d!406458))

(declare-fun m!1607335 () Bool)

(assert (=> bs!339630 m!1607335))

(assert (=> b!1418251 d!406458))

(declare-fun d!406460 () Bool)

(assert (=> d!406460 (= (list!5734 (tokens!1830 (get!4473 lt!477825))) (list!5741 (c!233029 (tokens!1830 (get!4473 lt!477825)))))))

(declare-fun bs!339631 () Bool)

(assert (= bs!339631 d!406460))

(declare-fun m!1607337 () Bool)

(assert (=> bs!339631 m!1607337))

(assert (=> b!1418251 d!406460))

(declare-fun lt!478575 () List!14619)

(declare-fun e!905791 () Bool)

(declare-fun b!1419027 () Bool)

(assert (=> b!1419027 (= e!905791 (or (not (= (list!5734 (tokens!1830 (v!22115 lt!477384))) Nil!14553)) (= lt!478575 (list!5734 (tokens!1830 acc!229)))))))

(declare-fun b!1419026 () Bool)

(declare-fun res!642585 () Bool)

(assert (=> b!1419026 (=> (not res!642585) (not e!905791))))

(assert (=> b!1419026 (= res!642585 (= (size!12012 lt!478575) (+ (size!12012 (list!5734 (tokens!1830 acc!229))) (size!12012 (list!5734 (tokens!1830 (v!22115 lt!477384)))))))))

(declare-fun b!1419024 () Bool)

(declare-fun e!905790 () List!14619)

(assert (=> b!1419024 (= e!905790 (list!5734 (tokens!1830 (v!22115 lt!477384))))))

(declare-fun d!406462 () Bool)

(assert (=> d!406462 e!905791))

(declare-fun res!642586 () Bool)

(assert (=> d!406462 (=> (not res!642586) (not e!905791))))

(assert (=> d!406462 (= res!642586 (= (content!2150 lt!478575) ((_ map or) (content!2150 (list!5734 (tokens!1830 acc!229))) (content!2150 (list!5734 (tokens!1830 (v!22115 lt!477384)))))))))

(assert (=> d!406462 (= lt!478575 e!905790)))

(declare-fun c!233212 () Bool)

(assert (=> d!406462 (= c!233212 ((_ is Nil!14553) (list!5734 (tokens!1830 acc!229))))))

(assert (=> d!406462 (= (++!3813 (list!5734 (tokens!1830 acc!229)) (list!5734 (tokens!1830 (v!22115 lt!477384)))) lt!478575)))

(declare-fun b!1419025 () Bool)

(assert (=> b!1419025 (= e!905790 (Cons!14553 (h!19954 (list!5734 (tokens!1830 acc!229))) (++!3813 (t!124254 (list!5734 (tokens!1830 acc!229))) (list!5734 (tokens!1830 (v!22115 lt!477384))))))))

(assert (= (and d!406462 c!233212) b!1419024))

(assert (= (and d!406462 (not c!233212)) b!1419025))

(assert (= (and d!406462 res!642586) b!1419026))

(assert (= (and b!1419026 res!642585) b!1419027))

(declare-fun m!1607339 () Bool)

(assert (=> b!1419026 m!1607339))

(assert (=> b!1419026 m!1604961))

(declare-fun m!1607341 () Bool)

(assert (=> b!1419026 m!1607341))

(assert (=> b!1419026 m!1604963))

(declare-fun m!1607343 () Bool)

(assert (=> b!1419026 m!1607343))

(declare-fun m!1607345 () Bool)

(assert (=> d!406462 m!1607345))

(assert (=> d!406462 m!1604961))

(declare-fun m!1607347 () Bool)

(assert (=> d!406462 m!1607347))

(assert (=> d!406462 m!1604963))

(declare-fun m!1607349 () Bool)

(assert (=> d!406462 m!1607349))

(assert (=> b!1419025 m!1604963))

(declare-fun m!1607351 () Bool)

(assert (=> b!1419025 m!1607351))

(assert (=> b!1418251 d!406462))

(declare-fun d!406464 () Bool)

(assert (=> d!406464 (= (list!5734 (tokens!1830 acc!229)) (list!5741 (c!233029 (tokens!1830 acc!229))))))

(declare-fun bs!339632 () Bool)

(assert (= bs!339632 d!406464))

(declare-fun m!1607353 () Bool)

(assert (=> bs!339632 m!1607353))

(assert (=> b!1418251 d!406464))

(assert (=> b!1418251 d!406308))

(declare-fun d!406466 () Bool)

(declare-fun res!642593 () Bool)

(declare-fun e!905794 () Bool)

(assert (=> d!406466 (=> (not res!642593) (not e!905794))))

(assert (=> d!406466 (= res!642593 (= (csize!9992 (c!233030 objs!24)) (+ (size!12008 (left!12442 (c!233030 objs!24))) (size!12008 (right!12772 (c!233030 objs!24))))))))

(assert (=> d!406466 (= (inv!19179 (c!233030 objs!24)) e!905794)))

(declare-fun b!1419034 () Bool)

(declare-fun res!642594 () Bool)

(assert (=> b!1419034 (=> (not res!642594) (not e!905794))))

(assert (=> b!1419034 (= res!642594 (and (not (= (left!12442 (c!233030 objs!24)) Empty!4881)) (not (= (right!12772 (c!233030 objs!24)) Empty!4881))))))

(declare-fun b!1419035 () Bool)

(declare-fun res!642595 () Bool)

(assert (=> b!1419035 (=> (not res!642595) (not e!905794))))

(assert (=> b!1419035 (= res!642595 (= (cheight!5092 (c!233030 objs!24)) (+ (max!0 (height!710 (left!12442 (c!233030 objs!24))) (height!710 (right!12772 (c!233030 objs!24)))) 1)))))

(declare-fun b!1419036 () Bool)

(assert (=> b!1419036 (= e!905794 (<= 0 (cheight!5092 (c!233030 objs!24))))))

(assert (= (and d!406466 res!642593) b!1419034))

(assert (= (and b!1419034 res!642594) b!1419035))

(assert (= (and b!1419035 res!642595) b!1419036))

(declare-fun m!1607355 () Bool)

(assert (=> d!406466 m!1607355))

(declare-fun m!1607357 () Bool)

(assert (=> d!406466 m!1607357))

(declare-fun m!1607359 () Bool)

(assert (=> b!1419035 m!1607359))

(declare-fun m!1607361 () Bool)

(assert (=> b!1419035 m!1607361))

(assert (=> b!1419035 m!1607359))

(assert (=> b!1419035 m!1607361))

(declare-fun m!1607363 () Bool)

(assert (=> b!1419035 m!1607363))

(assert (=> b!1418109 d!406466))

(declare-fun d!406468 () Bool)

(declare-fun c!233213 () Bool)

(assert (=> d!406468 (= c!233213 ((_ is Cons!14553) (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477752))))))

(declare-fun e!905795 () List!14617)

(assert (=> d!406468 (= (printList!663 (ite c!233087 lt!477772 (ite c!233083 lt!477729 lt!477735)) (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477752))) e!905795)))

(declare-fun b!1419037 () Bool)

(assert (=> b!1419037 (= e!905795 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477752))))) (printList!663 (ite c!233087 lt!477772 (ite c!233083 lt!477729 lt!477735)) (t!124254 (ite c!233087 lt!477728 (ite c!233083 lt!477733 lt!477752))))))))

(declare-fun b!1419038 () Bool)

(assert (=> b!1419038 (= e!905795 Nil!14551)))

(assert (= (and d!406468 c!233213) b!1419037))

(assert (= (and d!406468 (not c!233213)) b!1419038))

(declare-fun m!1607365 () Bool)

(assert (=> b!1419037 m!1607365))

(assert (=> b!1419037 m!1607365))

(declare-fun m!1607367 () Bool)

(assert (=> b!1419037 m!1607367))

(declare-fun m!1607369 () Bool)

(assert (=> b!1419037 m!1607369))

(assert (=> b!1419037 m!1607367))

(assert (=> b!1419037 m!1607369))

(declare-fun m!1607371 () Bool)

(assert (=> b!1419037 m!1607371))

(assert (=> bm!96510 d!406468))

(declare-fun bs!339635 () Bool)

(declare-fun d!406470 () Bool)

(assert (= bs!339635 (and d!406470 d!406166)))

(declare-fun lambda!62629 () Int)

(assert (=> bs!339635 (= (and (= Lexer!2207 lt!477837) (= (rules!11126 sep!3) (rules!11126 acc!229))) (= lambda!62629 lambda!62617))))

(declare-fun b!1419056 () Bool)

(declare-fun e!905807 () Bool)

(assert (=> b!1419056 (= e!905807 true)))

(declare-fun b!1419055 () Bool)

(declare-fun e!905806 () Bool)

(assert (=> b!1419055 (= e!905806 e!905807)))

(declare-fun b!1419054 () Bool)

(declare-fun e!905805 () Bool)

(assert (=> b!1419054 (= e!905805 e!905806)))

(assert (=> d!406470 e!905805))

(assert (= b!1419055 b!1419056))

(assert (= b!1419054 b!1419055))

(assert (= (and d!406470 ((_ is Cons!14552) (rules!11126 sep!3))) b!1419054))

(assert (=> b!1419056 (< (dynLambda!6723 order!8857 (toValue!3834 (transformation!2535 (h!19953 (rules!11126 sep!3))))) (dynLambda!6724 order!8859 lambda!62629))))

(assert (=> b!1419056 (< (dynLambda!6725 order!8861 (toChars!3693 (transformation!2535 (h!19953 (rules!11126 sep!3))))) (dynLambda!6724 order!8859 lambda!62629))))

(assert (=> d!406470 true))

(declare-fun e!905804 () Bool)

(assert (=> d!406470 e!905804))

(declare-fun res!642607 () Bool)

(assert (=> d!406470 (=> (not res!642607) (not e!905804))))

(declare-fun lt!478582 () Bool)

(assert (=> d!406470 (= res!642607 (= lt!478582 (forall!3627 (list!5734 (tokens!1830 sep!3)) lambda!62629)))))

(declare-fun forall!3629 (BalanceConc!9700 Int) Bool)

(assert (=> d!406470 (= lt!478582 (forall!3629 (tokens!1830 sep!3) lambda!62629))))

(assert (=> d!406470 (not (isEmpty!8948 (rules!11126 sep!3)))))

(assert (=> d!406470 (= (rulesProduceEachTokenIndividually!806 Lexer!2207 (rules!11126 sep!3) (tokens!1830 sep!3)) lt!478582)))

(declare-fun b!1419053 () Bool)

(assert (=> b!1419053 (= e!905804 (= lt!478582 (rulesProduceEachTokenIndividuallyList!690 Lexer!2207 (rules!11126 sep!3) (list!5734 (tokens!1830 sep!3)))))))

(assert (= (and d!406470 res!642607) b!1419053))

(assert (=> d!406470 m!1604823))

(assert (=> d!406470 m!1604823))

(declare-fun m!1607419 () Bool)

(assert (=> d!406470 m!1607419))

(declare-fun m!1607421 () Bool)

(assert (=> d!406470 m!1607421))

(assert (=> d!406470 m!1605213))

(assert (=> b!1419053 m!1604823))

(assert (=> b!1419053 m!1604823))

(declare-fun m!1607423 () Bool)

(assert (=> b!1419053 m!1607423))

(assert (=> b!1418344 d!406470))

(declare-fun d!406484 () Bool)

(declare-fun lt!478583 () BalanceConc!9698)

(assert (=> d!406484 (= (list!5733 lt!478583) (originalCharacters!3397 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819))))))

(assert (=> d!406484 (= lt!478583 (dynLambda!6727 (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819))))) (value!81880 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819)))))))

(assert (=> d!406484 (= (charsOf!1480 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819))) lt!478583)))

(declare-fun b_lambda!44621 () Bool)

(assert (=> (not b_lambda!44621) (not d!406484)))

(declare-fun t!124327 () Bool)

(declare-fun tb!73557 () Bool)

(assert (=> (and b!1418359 (= (toChars!3693 (transformation!2535 (h!19953 (rules!11126 acc!229)))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819)))))) t!124327) tb!73557))

(declare-fun e!905808 () Bool)

(declare-fun tp!402354 () Bool)

(declare-fun b!1419057 () Bool)

(assert (=> b!1419057 (= e!905808 (and (inv!19191 (c!233028 (dynLambda!6727 (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819))))) (value!81880 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819)))))) tp!402354))))

(declare-fun result!89638 () Bool)

(assert (=> tb!73557 (= result!89638 (and (inv!19192 (dynLambda!6727 (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819))))) (value!81880 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819))))) e!905808))))

(assert (= tb!73557 b!1419057))

(declare-fun m!1607425 () Bool)

(assert (=> b!1419057 m!1607425))

(declare-fun m!1607427 () Bool)

(assert (=> tb!73557 m!1607427))

(assert (=> d!406484 t!124327))

(declare-fun b_and!94979 () Bool)

(assert (= b_and!94971 (and (=> t!124327 result!89638) b_and!94979)))

(declare-fun t!124329 () Bool)

(declare-fun tb!73559 () Bool)

(assert (=> (and b!1418373 (= (toChars!3693 (transformation!2535 (h!19953 (rules!11126 sep!3)))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819)))))) t!124329) tb!73559))

(declare-fun result!89640 () Bool)

(assert (= result!89640 result!89638))

(assert (=> d!406484 t!124329))

(declare-fun b_and!94981 () Bool)

(assert (= b_and!94973 (and (=> t!124329 result!89640) b_and!94981)))

(declare-fun m!1607429 () Bool)

(assert (=> d!406484 m!1607429))

(declare-fun m!1607431 () Bool)

(assert (=> d!406484 m!1607431))

(assert (=> bm!96542 d!406484))

(declare-fun d!406486 () Bool)

(assert (=> d!406486 (= (printList!663 (ite c!233092 lt!477805 lt!477811) (++!3813 (ite c!233092 lt!477822 lt!477828) (ite c!233092 lt!477809 lt!477816))) (++!3814 (printList!663 (ite c!233092 lt!477805 lt!477811) (ite c!233092 lt!477822 lt!477828)) (printList!663 (ite c!233092 lt!477805 lt!477811) (ite c!233092 lt!477809 lt!477816))))))

(declare-fun lt!478584 () Unit!21489)

(assert (=> d!406486 (= lt!478584 (choose!8744 (ite c!233092 lt!477805 lt!477811) (ite c!233092 lt!477822 lt!477828) (ite c!233092 lt!477809 lt!477816)))))

(assert (=> d!406486 (= (lemmaPrintConcatSameAsConcatPrint!28 (ite c!233092 lt!477805 lt!477811) (ite c!233092 lt!477822 lt!477828) (ite c!233092 lt!477809 lt!477816)) lt!478584)))

(declare-fun bs!339636 () Bool)

(assert (= bs!339636 d!406486))

(declare-fun m!1607433 () Bool)

(assert (=> bs!339636 m!1607433))

(declare-fun m!1607435 () Bool)

(assert (=> bs!339636 m!1607435))

(declare-fun m!1607437 () Bool)

(assert (=> bs!339636 m!1607437))

(assert (=> bs!339636 m!1607433))

(declare-fun m!1607439 () Bool)

(assert (=> bs!339636 m!1607439))

(declare-fun m!1607441 () Bool)

(assert (=> bs!339636 m!1607441))

(assert (=> bs!339636 m!1607439))

(assert (=> bs!339636 m!1607435))

(declare-fun m!1607443 () Bool)

(assert (=> bs!339636 m!1607443))

(assert (=> bm!96569 d!406486))

(declare-fun d!406488 () Bool)

(declare-fun res!642608 () Bool)

(declare-fun e!905810 () Bool)

(assert (=> d!406488 (=> res!642608 e!905810)))

(assert (=> d!406488 (= res!642608 (or (not ((_ is Cons!14553) call!96507)) (not ((_ is Cons!14553) (t!124254 call!96507)))))))

(assert (=> d!406488 (= (tokensListTwoByTwoPredicateSeparableList!209 lt!477761 call!96507 (rules!11126 (head!2755 objs!24))) e!905810)))

(declare-fun b!1419058 () Bool)

(declare-fun e!905809 () Bool)

(assert (=> b!1419058 (= e!905810 e!905809)))

(declare-fun res!642609 () Bool)

(assert (=> b!1419058 (=> (not res!642609) (not e!905809))))

(assert (=> b!1419058 (= res!642609 (separableTokensPredicate!486 lt!477761 (h!19954 call!96507) (h!19954 (t!124254 call!96507)) (rules!11126 (head!2755 objs!24))))))

(declare-fun lt!478590 () Unit!21489)

(declare-fun Unit!21687 () Unit!21489)

(assert (=> b!1419058 (= lt!478590 Unit!21687)))

(assert (=> b!1419058 (> (size!12014 (charsOf!1480 (h!19954 (t!124254 call!96507)))) 0)))

(declare-fun lt!478587 () Unit!21489)

(declare-fun Unit!21688 () Unit!21489)

(assert (=> b!1419058 (= lt!478587 Unit!21688)))

(assert (=> b!1419058 (rulesProduceIndividualToken!1172 lt!477761 (rules!11126 (head!2755 objs!24)) (h!19954 (t!124254 call!96507)))))

(declare-fun lt!478588 () Unit!21489)

(declare-fun Unit!21689 () Unit!21489)

(assert (=> b!1419058 (= lt!478588 Unit!21689)))

(assert (=> b!1419058 (rulesProduceIndividualToken!1172 lt!477761 (rules!11126 (head!2755 objs!24)) (h!19954 call!96507))))

(declare-fun lt!478586 () Unit!21489)

(declare-fun lt!478585 () Unit!21489)

(assert (=> b!1419058 (= lt!478586 lt!478585)))

(assert (=> b!1419058 (rulesProduceIndividualToken!1172 lt!477761 (rules!11126 (head!2755 objs!24)) (h!19954 (t!124254 call!96507)))))

(assert (=> b!1419058 (= lt!478585 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477761 (rules!11126 (head!2755 objs!24)) call!96507 (h!19954 (t!124254 call!96507))))))

(declare-fun lt!478589 () Unit!21489)

(declare-fun lt!478591 () Unit!21489)

(assert (=> b!1419058 (= lt!478589 lt!478591)))

(assert (=> b!1419058 (rulesProduceIndividualToken!1172 lt!477761 (rules!11126 (head!2755 objs!24)) (h!19954 call!96507))))

(assert (=> b!1419058 (= lt!478591 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477761 (rules!11126 (head!2755 objs!24)) call!96507 (h!19954 call!96507)))))

(declare-fun b!1419059 () Bool)

(assert (=> b!1419059 (= e!905809 (tokensListTwoByTwoPredicateSeparableList!209 lt!477761 (Cons!14553 (h!19954 (t!124254 call!96507)) (t!124254 (t!124254 call!96507))) (rules!11126 (head!2755 objs!24))))))

(assert (= (and d!406488 (not res!642608)) b!1419058))

(assert (= (and b!1419058 res!642609) b!1419059))

(declare-fun m!1607445 () Bool)

(assert (=> b!1419058 m!1607445))

(declare-fun m!1607447 () Bool)

(assert (=> b!1419058 m!1607447))

(declare-fun m!1607449 () Bool)

(assert (=> b!1419058 m!1607449))

(declare-fun m!1607451 () Bool)

(assert (=> b!1419058 m!1607451))

(declare-fun m!1607453 () Bool)

(assert (=> b!1419058 m!1607453))

(assert (=> b!1419058 m!1607447))

(declare-fun m!1607455 () Bool)

(assert (=> b!1419058 m!1607455))

(declare-fun m!1607457 () Bool)

(assert (=> b!1419058 m!1607457))

(declare-fun m!1607459 () Bool)

(assert (=> b!1419059 m!1607459))

(assert (=> b!1418219 d!406488))

(declare-fun b!1419062 () Bool)

(declare-fun res!642612 () Bool)

(declare-fun e!905811 () Bool)

(assert (=> b!1419062 (=> (not res!642612) (not e!905811))))

(assert (=> b!1419062 (= res!642612 (>= (height!711 (++!3819 (c!233029 (tokens!1830 (head!2755 objs!24))) (c!233029 (tokens!1830 sep!3)))) (max!0 (height!711 (c!233029 (tokens!1830 (head!2755 objs!24)))) (height!711 (c!233029 (tokens!1830 sep!3))))))))

(declare-fun b!1419061 () Bool)

(declare-fun res!642611 () Bool)

(assert (=> b!1419061 (=> (not res!642611) (not e!905811))))

(assert (=> b!1419061 (= res!642611 (<= (height!711 (++!3819 (c!233029 (tokens!1830 (head!2755 objs!24))) (c!233029 (tokens!1830 sep!3)))) (+ (max!0 (height!711 (c!233029 (tokens!1830 (head!2755 objs!24)))) (height!711 (c!233029 (tokens!1830 sep!3)))) 1)))))

(declare-fun d!406490 () Bool)

(assert (=> d!406490 e!905811))

(declare-fun res!642610 () Bool)

(assert (=> d!406490 (=> (not res!642610) (not e!905811))))

(assert (=> d!406490 (= res!642610 (appendAssocInst!299 (c!233029 (tokens!1830 (head!2755 objs!24))) (c!233029 (tokens!1830 sep!3))))))

(declare-fun lt!478592 () BalanceConc!9700)

(assert (=> d!406490 (= lt!478592 (BalanceConc!9701 (++!3819 (c!233029 (tokens!1830 (head!2755 objs!24))) (c!233029 (tokens!1830 sep!3)))))))

(assert (=> d!406490 (= (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)) lt!478592)))

(declare-fun b!1419063 () Bool)

(assert (=> b!1419063 (= e!905811 (= (list!5734 lt!478592) (++!3813 (list!5734 (tokens!1830 (head!2755 objs!24))) (list!5734 (tokens!1830 sep!3)))))))

(declare-fun b!1419060 () Bool)

(declare-fun res!642613 () Bool)

(assert (=> b!1419060 (=> (not res!642613) (not e!905811))))

(assert (=> b!1419060 (= res!642613 (isBalanced!1450 (++!3819 (c!233029 (tokens!1830 (head!2755 objs!24))) (c!233029 (tokens!1830 sep!3)))))))

(assert (= (and d!406490 res!642610) b!1419060))

(assert (= (and b!1419060 res!642613) b!1419061))

(assert (= (and b!1419061 res!642611) b!1419062))

(assert (= (and b!1419062 res!642612) b!1419063))

(declare-fun m!1607489 () Bool)

(assert (=> d!406490 m!1607489))

(declare-fun m!1607491 () Bool)

(assert (=> d!406490 m!1607491))

(assert (=> b!1419060 m!1607491))

(assert (=> b!1419060 m!1607491))

(declare-fun m!1607493 () Bool)

(assert (=> b!1419060 m!1607493))

(declare-fun m!1607495 () Bool)

(assert (=> b!1419063 m!1607495))

(assert (=> b!1419063 m!1604821))

(assert (=> b!1419063 m!1604823))

(assert (=> b!1419063 m!1604821))

(assert (=> b!1419063 m!1604823))

(assert (=> b!1419063 m!1604825))

(assert (=> b!1419061 m!1607491))

(declare-fun m!1607497 () Bool)

(assert (=> b!1419061 m!1607497))

(declare-fun m!1607499 () Bool)

(assert (=> b!1419061 m!1607499))

(declare-fun m!1607501 () Bool)

(assert (=> b!1419061 m!1607501))

(assert (=> b!1419061 m!1607491))

(declare-fun m!1607503 () Bool)

(assert (=> b!1419061 m!1607503))

(assert (=> b!1419061 m!1607497))

(assert (=> b!1419061 m!1607499))

(assert (=> b!1419062 m!1607491))

(assert (=> b!1419062 m!1607497))

(assert (=> b!1419062 m!1607499))

(assert (=> b!1419062 m!1607501))

(assert (=> b!1419062 m!1607491))

(assert (=> b!1419062 m!1607503))

(assert (=> b!1419062 m!1607497))

(assert (=> b!1419062 m!1607499))

(assert (=> b!1418219 d!406490))

(declare-fun b!1419070 () Bool)

(declare-fun e!905814 () Bool)

(assert (=> b!1419070 (= e!905814 (tokensListTwoByTwoPredicateSeparableList!209 lt!477761 (++!3813 lt!477721 lt!477753) (rules!11126 (head!2755 objs!24))))))

(declare-fun lt!478596 () Unit!21489)

(declare-fun lt!478595 () Unit!21489)

(assert (=> b!1419070 (= lt!478596 lt!478595)))

(assert (=> b!1419070 (rulesProduceEachTokenIndividuallyList!690 lt!477761 (rules!11126 (head!2755 objs!24)) (++!3813 lt!477721 lt!477753))))

(assert (=> b!1419070 (= lt!478595 (lemmaRulesProduceEachTokenIndividuallyConcat!28 lt!477761 (rules!11126 (head!2755 objs!24)) lt!477721 lt!477753))))

(declare-fun b!1419069 () Bool)

(declare-fun res!642617 () Bool)

(assert (=> b!1419069 (=> (not res!642617) (not e!905814))))

(assert (=> b!1419069 (= res!642617 (rulesProduceEachTokenIndividuallyList!690 lt!477761 (rules!11126 (head!2755 objs!24)) lt!477753))))

(declare-fun d!406494 () Bool)

(assert (=> d!406494 e!905814))

(declare-fun res!642618 () Bool)

(assert (=> d!406494 (=> (not res!642618) (not e!905814))))

(assert (=> d!406494 (= res!642618 ((_ is Lexer!2207) lt!477761))))

(declare-fun lt!478597 () Unit!21489)

(assert (=> d!406494 (= lt!478597 (choose!8742 lt!477761 lt!477721 lt!477753 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406494 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406494 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!28 lt!477761 lt!477721 lt!477753 (rules!11126 (head!2755 objs!24))) lt!478597)))

(declare-fun b!1419068 () Bool)

(declare-fun res!642619 () Bool)

(assert (=> b!1419068 (=> (not res!642619) (not e!905814))))

(assert (=> b!1419068 (= res!642619 (rulesProduceEachTokenIndividuallyList!690 lt!477761 (rules!11126 (head!2755 objs!24)) lt!477721))))

(declare-fun b!1419067 () Bool)

(declare-fun res!642620 () Bool)

(assert (=> b!1419067 (=> (not res!642620) (not e!905814))))

(assert (=> b!1419067 (= res!642620 (rulesInvariant!2079 lt!477761 (rules!11126 (head!2755 objs!24))))))

(assert (= (and d!406494 res!642618) b!1419067))

(assert (= (and b!1419067 res!642620) b!1419068))

(assert (= (and b!1419068 res!642619) b!1419069))

(assert (= (and b!1419069 res!642617) b!1419070))

(declare-fun m!1607523 () Bool)

(assert (=> b!1419067 m!1607523))

(declare-fun m!1607525 () Bool)

(assert (=> b!1419068 m!1607525))

(declare-fun m!1607527 () Bool)

(assert (=> b!1419069 m!1607527))

(declare-fun m!1607529 () Bool)

(assert (=> d!406494 m!1607529))

(assert (=> d!406494 m!1606139))

(declare-fun m!1607531 () Bool)

(assert (=> b!1419070 m!1607531))

(assert (=> b!1419070 m!1607531))

(declare-fun m!1607533 () Bool)

(assert (=> b!1419070 m!1607533))

(assert (=> b!1419070 m!1607531))

(declare-fun m!1607535 () Bool)

(assert (=> b!1419070 m!1607535))

(assert (=> b!1419070 m!1604871))

(assert (=> b!1418219 d!406494))

(declare-fun d!406498 () Bool)

(declare-fun e!905816 () Bool)

(assert (=> d!406498 e!905816))

(declare-fun res!642621 () Bool)

(assert (=> d!406498 (=> (not res!642621) (not e!905816))))

(assert (=> d!406498 (= res!642621 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (head!2755 objs!24)) (print!982 Lexer!2207 (seqFromList!1675 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))) (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))

(declare-fun lt!478611 () Unit!21489)

(declare-fun e!905815 () Unit!21489)

(assert (=> d!406498 (= lt!478611 e!905815)))

(declare-fun c!233215 () Bool)

(assert (=> d!406498 (= c!233215 (or ((_ is Nil!14553) (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))) ((_ is Nil!14553) (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))))

(assert (=> d!406498 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406498 (= (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))) lt!478611)))

(declare-fun b!1419071 () Bool)

(declare-fun Unit!21692 () Unit!21489)

(assert (=> b!1419071 (= e!905815 Unit!21692)))

(declare-fun b!1419072 () Bool)

(declare-fun Unit!21693 () Unit!21489)

(assert (=> b!1419072 (= e!905815 Unit!21693)))

(declare-fun lt!478604 () BalanceConc!9698)

(assert (=> b!1419072 (= lt!478604 (print!982 Lexer!2207 (seqFromList!1675 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))

(declare-fun lt!478598 () BalanceConc!9698)

(assert (=> b!1419072 (= lt!478598 (print!982 Lexer!2207 (seqFromList!1675 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))))

(declare-fun lt!478609 () tuple2!14004)

(assert (=> b!1419072 (= lt!478609 (lex!1013 Lexer!2207 (rules!11126 (head!2755 objs!24)) lt!478598))))

(declare-fun lt!478612 () List!14617)

(assert (=> b!1419072 (= lt!478612 (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))))

(declare-fun lt!478605 () List!14617)

(assert (=> b!1419072 (= lt!478605 (list!5733 lt!478598))))

(declare-fun lt!478600 () Unit!21489)

(assert (=> b!1419072 (= lt!478600 (lemmaConcatTwoListThenFirstIsPrefix!739 lt!478612 lt!478605))))

(assert (=> b!1419072 (isPrefix!1172 lt!478612 (++!3814 lt!478612 lt!478605))))

(declare-fun lt!478616 () Unit!21489)

(assert (=> b!1419072 (= lt!478616 lt!478600)))

(declare-fun lt!478621 () Unit!21489)

(assert (=> b!1419072 (= lt!478621 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (head!2755 objs!24)) (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))

(declare-fun lt!478619 () Unit!21489)

(assert (=> b!1419072 (= lt!478619 (seqFromListBHdTlConstructive!68 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))) (t!124254 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))) (_1!7888 lt!478609)))))

(assert (=> b!1419072 (= (list!5734 (_1!7888 lt!478609)) (list!5734 (prepend!384 (seqFromList!1675 (t!124254 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))) (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))))

(declare-fun lt!478608 () Unit!21489)

(assert (=> b!1419072 (= lt!478608 lt!478619)))

(declare-fun lt!478620 () Option!2798)

(assert (=> b!1419072 (= lt!478620 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 lt!478604)))))

(assert (=> b!1419072 (= (print!982 Lexer!2207 (singletonSeq!1169 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))) (printTailRec!645 Lexer!2207 (singletonSeq!1169 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))) 0 (BalanceConc!9699 Empty!4879)))))

(declare-fun lt!478606 () Unit!21489)

(declare-fun Unit!21696 () Unit!21489)

(assert (=> b!1419072 (= lt!478606 Unit!21696)))

(declare-fun lt!478602 () Unit!21489)

(assert (=> b!1419072 (= lt!478602 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!212 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))) (list!5733 lt!478598)))))

(assert (=> b!1419072 (= (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))) (originalCharacters!3397 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))

(declare-fun lt!478623 () Unit!21489)

(declare-fun Unit!21699 () Unit!21489)

(assert (=> b!1419072 (= lt!478623 Unit!21699)))

(assert (=> b!1419072 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))) 0))) (Cons!14551 (head!2764 (originalCharacters!3397 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))) Nil!14551))))

(declare-fun lt!478607 () Unit!21489)

(declare-fun Unit!21701 () Unit!21489)

(assert (=> b!1419072 (= lt!478607 Unit!21701)))

(assert (=> b!1419072 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))) 0))) (Cons!14551 (head!2764 (list!5733 lt!478598)) Nil!14551))))

(declare-fun lt!478601 () Unit!21489)

(declare-fun Unit!21703 () Unit!21489)

(assert (=> b!1419072 (= lt!478601 Unit!21703)))

(assert (=> b!1419072 (= (list!5733 (singletonSeq!1170 (apply!3718 (charsOf!1480 (h!19954 (t!124254 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))) 0))) (Cons!14551 (head!2765 lt!478598) Nil!14551))))

(declare-fun lt!478599 () Unit!21489)

(declare-fun Unit!21706 () Unit!21489)

(assert (=> b!1419072 (= lt!478599 Unit!21706)))

(assert (=> b!1419072 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (originalCharacters!3397 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))))

(declare-fun lt!478613 () Unit!21489)

(declare-fun Unit!21707 () Unit!21489)

(assert (=> b!1419072 (= lt!478613 Unit!21707)))

(assert (=> b!1419072 (isDefined!2265 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))))

(declare-fun lt!478614 () Unit!21489)

(declare-fun Unit!21709 () Unit!21489)

(assert (=> b!1419072 (= lt!478614 Unit!21709)))

(declare-fun lt!478622 () Unit!21489)

(declare-fun Unit!21711 () Unit!21489)

(assert (=> b!1419072 (= lt!478622 Unit!21711)))

(assert (=> b!1419072 (= (_1!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))) (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))

(declare-fun lt!478603 () Unit!21489)

(declare-fun Unit!21713 () Unit!21489)

(assert (=> b!1419072 (= lt!478603 Unit!21713)))

(assert (=> b!1419072 (isEmpty!8952 (_2!7889 (get!4475 (maxPrefix!1162 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))))))

(declare-fun lt!478615 () Unit!21489)

(declare-fun Unit!21715 () Unit!21489)

(assert (=> b!1419072 (= lt!478615 Unit!21715)))

(assert (=> b!1419072 (matchR!1798 (regex!2535 (rule!4298 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))) (list!5733 (charsOf!1480 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))))

(declare-fun lt!478617 () Unit!21489)

(declare-fun Unit!21716 () Unit!21489)

(assert (=> b!1419072 (= lt!478617 Unit!21716)))

(assert (=> b!1419072 (= (rule!4298 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))) (rule!4298 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))

(declare-fun lt!478618 () Unit!21489)

(declare-fun Unit!21717 () Unit!21489)

(assert (=> b!1419072 (= lt!478618 Unit!21717)))

(declare-fun lt!478610 () Unit!21489)

(assert (=> b!1419072 (= lt!478610 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!10 Lexer!2207 (rules!11126 (head!2755 objs!24)) (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))) (rule!4298 (h!19954 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))) (list!5733 lt!478598)))))

(declare-fun b!1419073 () Bool)

(assert (=> b!1419073 (= e!905816 (isEmpty!8953 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (head!2755 objs!24)) (print!982 Lexer!2207 (seqFromList!1675 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))))))

(assert (= (and d!406498 c!233215) b!1419071))

(assert (= (and d!406498 (not c!233215)) b!1419072))

(assert (= (and d!406498 res!642621) b!1419073))

(assert (=> d!406498 m!1604859))

(declare-fun m!1607581 () Bool)

(assert (=> d!406498 m!1607581))

(declare-fun m!1607583 () Bool)

(assert (=> d!406498 m!1607583))

(assert (=> d!406498 m!1607581))

(declare-fun m!1607585 () Bool)

(assert (=> d!406498 m!1607585))

(assert (=> d!406498 m!1607585))

(declare-fun m!1607587 () Bool)

(assert (=> d!406498 m!1607587))

(assert (=> d!406498 m!1606139))

(declare-fun m!1607589 () Bool)

(assert (=> b!1419072 m!1607589))

(declare-fun m!1607591 () Bool)

(assert (=> b!1419072 m!1607591))

(declare-fun m!1607593 () Bool)

(assert (=> b!1419072 m!1607593))

(declare-fun m!1607595 () Bool)

(assert (=> b!1419072 m!1607595))

(declare-fun m!1607599 () Bool)

(assert (=> b!1419072 m!1607599))

(assert (=> b!1419072 m!1607593))

(declare-fun m!1607601 () Bool)

(assert (=> b!1419072 m!1607601))

(declare-fun m!1607603 () Bool)

(assert (=> b!1419072 m!1607603))

(declare-fun m!1607609 () Bool)

(assert (=> b!1419072 m!1607609))

(assert (=> b!1419072 m!1607589))

(declare-fun m!1607611 () Bool)

(assert (=> b!1419072 m!1607611))

(declare-fun m!1607613 () Bool)

(assert (=> b!1419072 m!1607613))

(declare-fun m!1607615 () Bool)

(assert (=> b!1419072 m!1607615))

(declare-fun m!1607617 () Bool)

(assert (=> b!1419072 m!1607617))

(declare-fun m!1607619 () Bool)

(assert (=> b!1419072 m!1607619))

(assert (=> b!1419072 m!1607609))

(declare-fun m!1607621 () Bool)

(assert (=> b!1419072 m!1607621))

(declare-fun m!1607625 () Bool)

(assert (=> b!1419072 m!1607625))

(declare-fun m!1607629 () Bool)

(assert (=> b!1419072 m!1607629))

(assert (=> b!1419072 m!1607625))

(declare-fun m!1607631 () Bool)

(assert (=> b!1419072 m!1607631))

(declare-fun m!1607633 () Bool)

(assert (=> b!1419072 m!1607633))

(assert (=> b!1419072 m!1607615))

(declare-fun m!1607635 () Bool)

(assert (=> b!1419072 m!1607635))

(assert (=> b!1419072 m!1607611))

(declare-fun m!1607637 () Bool)

(assert (=> b!1419072 m!1607637))

(assert (=> b!1419072 m!1607615))

(declare-fun m!1607639 () Bool)

(assert (=> b!1419072 m!1607639))

(declare-fun m!1607641 () Bool)

(assert (=> b!1419072 m!1607641))

(assert (=> b!1419072 m!1604859))

(assert (=> b!1419072 m!1607581))

(assert (=> b!1419072 m!1607603))

(declare-fun m!1607645 () Bool)

(assert (=> b!1419072 m!1607645))

(assert (=> b!1419072 m!1607581))

(assert (=> b!1419072 m!1607585))

(declare-fun m!1607651 () Bool)

(assert (=> b!1419072 m!1607651))

(assert (=> b!1419072 m!1607599))

(declare-fun m!1607653 () Bool)

(assert (=> b!1419072 m!1607653))

(assert (=> b!1419072 m!1607613))

(assert (=> b!1419072 m!1607593))

(assert (=> b!1419072 m!1607637))

(declare-fun m!1607655 () Bool)

(assert (=> b!1419072 m!1607655))

(assert (=> b!1419072 m!1607619))

(assert (=> b!1419072 m!1607651))

(declare-fun m!1607657 () Bool)

(assert (=> b!1419072 m!1607657))

(declare-fun m!1607659 () Bool)

(assert (=> b!1419072 m!1607659))

(declare-fun m!1607661 () Bool)

(assert (=> b!1419072 m!1607661))

(declare-fun m!1607663 () Bool)

(assert (=> b!1419072 m!1607663))

(assert (=> b!1419072 m!1607651))

(declare-fun m!1607665 () Bool)

(assert (=> b!1419072 m!1607665))

(declare-fun m!1607667 () Bool)

(assert (=> b!1419072 m!1607667))

(assert (=> b!1419072 m!1607613))

(declare-fun m!1607669 () Bool)

(assert (=> b!1419072 m!1607669))

(assert (=> b!1419072 m!1607615))

(declare-fun m!1607671 () Bool)

(assert (=> b!1419072 m!1607671))

(assert (=> b!1419072 m!1607631))

(assert (=> b!1419072 m!1607613))

(declare-fun m!1607673 () Bool)

(assert (=> b!1419072 m!1607673))

(assert (=> b!1419072 m!1607659))

(declare-fun m!1607675 () Bool)

(assert (=> b!1419072 m!1607675))

(assert (=> b!1419073 m!1604859))

(assert (=> b!1419073 m!1607581))

(assert (=> b!1419073 m!1607581))

(assert (=> b!1419073 m!1607585))

(assert (=> b!1419073 m!1607585))

(assert (=> b!1419073 m!1607587))

(declare-fun m!1607677 () Bool)

(assert (=> b!1419073 m!1607677))

(assert (=> b!1418219 d!406498))

(declare-fun d!406524 () Bool)

(declare-fun lt!478631 () BalanceConc!9698)

(assert (=> d!406524 (= (list!5733 lt!478631) (printList!663 Lexer!2207 (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))

(assert (=> d!406524 (= lt!478631 (printTailRec!645 Lexer!2207 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)) 0 (BalanceConc!9699 Empty!4879)))))

(assert (=> d!406524 (= (print!982 Lexer!2207 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))) lt!478631)))

(declare-fun bs!339645 () Bool)

(assert (= bs!339645 d!406524))

(declare-fun m!1607679 () Bool)

(assert (=> bs!339645 m!1607679))

(assert (=> bs!339645 m!1604855))

(assert (=> bs!339645 m!1604859))

(assert (=> bs!339645 m!1604859))

(declare-fun m!1607681 () Bool)

(assert (=> bs!339645 m!1607681))

(assert (=> bs!339645 m!1604855))

(declare-fun m!1607683 () Bool)

(assert (=> bs!339645 m!1607683))

(assert (=> b!1418219 d!406524))

(declare-fun d!406526 () Bool)

(assert (=> d!406526 (rulesProduceEachTokenIndividuallyList!690 lt!477761 (rules!11126 (head!2755 objs!24)) (++!3813 lt!477721 lt!477753))))

(declare-fun lt!478632 () Unit!21489)

(assert (=> d!406526 (= lt!478632 (choose!8743 lt!477761 (rules!11126 (head!2755 objs!24)) lt!477721 lt!477753))))

(assert (=> d!406526 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406526 (= (lemmaRulesProduceEachTokenIndividuallyConcat!28 lt!477761 (rules!11126 (head!2755 objs!24)) lt!477721 lt!477753) lt!478632)))

(declare-fun bs!339646 () Bool)

(assert (= bs!339646 d!406526))

(assert (=> bs!339646 m!1607531))

(assert (=> bs!339646 m!1607531))

(assert (=> bs!339646 m!1607535))

(declare-fun m!1607685 () Bool)

(assert (=> bs!339646 m!1607685))

(assert (=> bs!339646 m!1606139))

(assert (=> b!1418219 d!406526))

(declare-fun d!406528 () Bool)

(declare-fun e!905822 () Bool)

(assert (=> d!406528 e!905822))

(declare-fun res!642631 () Bool)

(assert (=> d!406528 (=> (not res!642631) (not e!905822))))

(declare-fun lt!478633 () BalanceConc!9698)

(assert (=> d!406528 (= res!642631 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))) lt!478633))) (list!5734 (tokens!1830 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))))

(assert (=> d!406528 (= lt!478633 (print!982 Lexer!2207 (tokens!1830 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))))))))

(declare-fun lt!478634 () Unit!21489)

(assert (=> d!406528 (= lt!478634 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))) (list!5734 (tokens!1830 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))))

(assert (=> d!406528 (= (print!981 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))) lt!478633)))

(declare-fun b!1419083 () Bool)

(assert (=> b!1419083 (= e!905822 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (PrintableTokens!853 (rules!11126 (head!2755 objs!24)) (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))) lt!478633)))))))

(assert (= (and d!406528 res!642631) b!1419083))

(declare-fun m!1607687 () Bool)

(assert (=> d!406528 m!1607687))

(declare-fun m!1607689 () Bool)

(assert (=> d!406528 m!1607689))

(declare-fun m!1607691 () Bool)

(assert (=> d!406528 m!1607691))

(declare-fun m!1607693 () Bool)

(assert (=> d!406528 m!1607693))

(assert (=> d!406528 m!1607689))

(declare-fun m!1607695 () Bool)

(assert (=> d!406528 m!1607695))

(assert (=> b!1419083 m!1607687))

(declare-fun m!1607697 () Bool)

(assert (=> b!1419083 m!1607697))

(assert (=> b!1419083 m!1607697))

(declare-fun m!1607699 () Bool)

(assert (=> b!1419083 m!1607699))

(assert (=> b!1418219 d!406528))

(declare-fun bs!339647 () Bool)

(declare-fun d!406530 () Bool)

(assert (= bs!339647 (and d!406530 d!406166)))

(declare-fun lambda!62630 () Int)

(assert (=> bs!339647 (= (and (= lt!477761 lt!477837) (= (rules!11126 (head!2755 objs!24)) (rules!11126 acc!229))) (= lambda!62630 lambda!62617))))

(declare-fun bs!339648 () Bool)

(assert (= bs!339648 (and d!406530 d!406470)))

(assert (=> bs!339648 (= (and (= lt!477761 Lexer!2207) (= (rules!11126 (head!2755 objs!24)) (rules!11126 sep!3))) (= lambda!62630 lambda!62629))))

(declare-fun b!1419088 () Bool)

(declare-fun e!905827 () Bool)

(assert (=> b!1419088 (= e!905827 true)))

(declare-fun b!1419087 () Bool)

(declare-fun e!905826 () Bool)

(assert (=> b!1419087 (= e!905826 e!905827)))

(declare-fun b!1419086 () Bool)

(declare-fun e!905825 () Bool)

(assert (=> b!1419086 (= e!905825 e!905826)))

(assert (=> d!406530 e!905825))

(assert (= b!1419087 b!1419088))

(assert (= b!1419086 b!1419087))

(assert (= (and d!406530 ((_ is Cons!14552) (rules!11126 (head!2755 objs!24)))) b!1419086))

(assert (=> b!1419088 (< (dynLambda!6723 order!8857 (toValue!3834 (transformation!2535 (h!19953 (rules!11126 (head!2755 objs!24)))))) (dynLambda!6724 order!8859 lambda!62630))))

(assert (=> b!1419088 (< (dynLambda!6725 order!8861 (toChars!3693 (transformation!2535 (h!19953 (rules!11126 (head!2755 objs!24)))))) (dynLambda!6724 order!8859 lambda!62630))))

(assert (=> d!406530 true))

(declare-fun lt!478635 () Bool)

(assert (=> d!406530 (= lt!478635 (forall!3627 call!96507 lambda!62630))))

(declare-fun e!905823 () Bool)

(assert (=> d!406530 (= lt!478635 e!905823)))

(declare-fun res!642633 () Bool)

(assert (=> d!406530 (=> res!642633 e!905823)))

(assert (=> d!406530 (= res!642633 (not ((_ is Cons!14553) call!96507)))))

(assert (=> d!406530 (not (isEmpty!8948 (rules!11126 (head!2755 objs!24))))))

(assert (=> d!406530 (= (rulesProduceEachTokenIndividuallyList!690 lt!477761 (rules!11126 (head!2755 objs!24)) call!96507) lt!478635)))

(declare-fun b!1419084 () Bool)

(declare-fun e!905824 () Bool)

(assert (=> b!1419084 (= e!905823 e!905824)))

(declare-fun res!642632 () Bool)

(assert (=> b!1419084 (=> (not res!642632) (not e!905824))))

(assert (=> b!1419084 (= res!642632 (rulesProduceIndividualToken!1172 lt!477761 (rules!11126 (head!2755 objs!24)) (h!19954 call!96507)))))

(declare-fun b!1419085 () Bool)

(assert (=> b!1419085 (= e!905824 (rulesProduceEachTokenIndividuallyList!690 lt!477761 (rules!11126 (head!2755 objs!24)) (t!124254 call!96507)))))

(assert (= (and d!406530 (not res!642633)) b!1419084))

(assert (= (and b!1419084 res!642632) b!1419085))

(declare-fun m!1607701 () Bool)

(assert (=> d!406530 m!1607701))

(assert (=> d!406530 m!1606139))

(assert (=> b!1419084 m!1607457))

(declare-fun m!1607703 () Bool)

(assert (=> b!1419085 m!1607703))

(assert (=> b!1418219 d!406530))

(declare-fun d!406532 () Bool)

(assert (=> d!406532 (= (list!5734 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3))) (list!5741 (c!233029 (++!3815 (tokens!1830 (head!2755 objs!24)) (tokens!1830 sep!3)))))))

(declare-fun bs!339649 () Bool)

(assert (= bs!339649 d!406532))

(declare-fun m!1607705 () Bool)

(assert (=> bs!339649 m!1607705))

(assert (=> b!1418219 d!406532))

(declare-fun d!406534 () Bool)

(declare-fun c!233216 () Bool)

(assert (=> d!406534 (= c!233216 ((_ is Cons!14553) (ite c!233096 (t!124254 lt!477823) e!905336)))))

(declare-fun e!905828 () List!14617)

(assert (=> d!406534 (= (printList!663 (ite (or c!233096 c!233092) Lexer!2207 lt!477811) (ite c!233096 (t!124254 lt!477823) e!905336)) e!905828)))

(declare-fun b!1419089 () Bool)

(assert (=> b!1419089 (= e!905828 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233096 (t!124254 lt!477823) e!905336)))) (printList!663 (ite (or c!233096 c!233092) Lexer!2207 lt!477811) (t!124254 (ite c!233096 (t!124254 lt!477823) e!905336)))))))

(declare-fun b!1419090 () Bool)

(assert (=> b!1419090 (= e!905828 Nil!14551)))

(assert (= (and d!406534 c!233216) b!1419089))

(assert (= (and d!406534 (not c!233216)) b!1419090))

(declare-fun m!1607707 () Bool)

(assert (=> b!1419089 m!1607707))

(assert (=> b!1419089 m!1607707))

(declare-fun m!1607709 () Bool)

(assert (=> b!1419089 m!1607709))

(declare-fun m!1607711 () Bool)

(assert (=> b!1419089 m!1607711))

(assert (=> b!1419089 m!1607709))

(assert (=> b!1419089 m!1607711))

(declare-fun m!1607713 () Bool)

(assert (=> b!1419089 m!1607713))

(assert (=> bm!96545 d!406534))

(declare-fun bs!339650 () Bool)

(declare-fun d!406536 () Bool)

(assert (= bs!339650 (and d!406536 d!406166)))

(declare-fun lambda!62631 () Int)

(assert (=> bs!339650 (= (= Lexer!2207 lt!477837) (= lambda!62631 lambda!62617))))

(declare-fun bs!339651 () Bool)

(assert (= bs!339651 (and d!406536 d!406470)))

(assert (=> bs!339651 (= (= (rules!11126 acc!229) (rules!11126 sep!3)) (= lambda!62631 lambda!62629))))

(declare-fun bs!339652 () Bool)

(assert (= bs!339652 (and d!406536 d!406530)))

(assert (=> bs!339652 (= (and (= Lexer!2207 lt!477761) (= (rules!11126 acc!229) (rules!11126 (head!2755 objs!24)))) (= lambda!62631 lambda!62630))))

(declare-fun b!1419094 () Bool)

(declare-fun e!905832 () Bool)

(assert (=> b!1419094 (= e!905832 true)))

(declare-fun b!1419093 () Bool)

(declare-fun e!905831 () Bool)

(assert (=> b!1419093 (= e!905831 e!905832)))

(declare-fun b!1419092 () Bool)

(declare-fun e!905830 () Bool)

(assert (=> b!1419092 (= e!905830 e!905831)))

(assert (=> d!406536 e!905830))

(assert (= b!1419093 b!1419094))

(assert (= b!1419092 b!1419093))

(assert (= (and d!406536 ((_ is Cons!14552) (rules!11126 acc!229))) b!1419092))

(assert (=> b!1419094 (< (dynLambda!6723 order!8857 (toValue!3834 (transformation!2535 (h!19953 (rules!11126 acc!229))))) (dynLambda!6724 order!8859 lambda!62631))))

(assert (=> b!1419094 (< (dynLambda!6725 order!8861 (toChars!3693 (transformation!2535 (h!19953 (rules!11126 acc!229))))) (dynLambda!6724 order!8859 lambda!62631))))

(assert (=> d!406536 true))

(declare-fun e!905829 () Bool)

(assert (=> d!406536 e!905829))

(declare-fun res!642634 () Bool)

(assert (=> d!406536 (=> (not res!642634) (not e!905829))))

(declare-fun lt!478636 () Bool)

(assert (=> d!406536 (= res!642634 (= lt!478636 (forall!3627 (list!5734 (tokens!1830 acc!229)) lambda!62631)))))

(assert (=> d!406536 (= lt!478636 (forall!3629 (tokens!1830 acc!229) lambda!62631))))

(assert (=> d!406536 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406536 (= (rulesProduceEachTokenIndividually!806 Lexer!2207 (rules!11126 acc!229) (tokens!1830 acc!229)) lt!478636)))

(declare-fun b!1419091 () Bool)

(assert (=> b!1419091 (= e!905829 (= lt!478636 (rulesProduceEachTokenIndividuallyList!690 Lexer!2207 (rules!11126 acc!229) (list!5734 (tokens!1830 acc!229)))))))

(assert (= (and d!406536 res!642634) b!1419091))

(assert (=> d!406536 m!1604961))

(assert (=> d!406536 m!1604961))

(declare-fun m!1607715 () Bool)

(assert (=> d!406536 m!1607715))

(declare-fun m!1607717 () Bool)

(assert (=> d!406536 m!1607717))

(assert (=> d!406536 m!1605205))

(assert (=> b!1419091 m!1604961))

(assert (=> b!1419091 m!1604961))

(declare-fun m!1607719 () Bool)

(assert (=> b!1419091 m!1607719))

(assert (=> b!1418341 d!406536))

(declare-fun b!1419097 () Bool)

(declare-fun res!642635 () Bool)

(declare-fun e!905833 () Bool)

(assert (=> b!1419097 (=> (not res!642635) (not e!905833))))

(declare-fun lt!478637 () List!14617)

(assert (=> b!1419097 (= res!642635 (= (size!12015 lt!478637) (+ (size!12015 (ite c!233096 call!96550 e!905339)) (size!12015 (ite c!233096 call!96576 (ite c!233092 call!96569 call!96565))))))))

(declare-fun e!905834 () List!14617)

(declare-fun b!1419095 () Bool)

(assert (=> b!1419095 (= e!905834 (ite c!233096 call!96576 (ite c!233092 call!96569 call!96565)))))

(declare-fun b!1419096 () Bool)

(assert (=> b!1419096 (= e!905834 (Cons!14551 (h!19952 (ite c!233096 call!96550 e!905339)) (++!3814 (t!124252 (ite c!233096 call!96550 e!905339)) (ite c!233096 call!96576 (ite c!233092 call!96569 call!96565)))))))

(declare-fun b!1419098 () Bool)

(assert (=> b!1419098 (= e!905833 (or (not (= (ite c!233096 call!96576 (ite c!233092 call!96569 call!96565)) Nil!14551)) (= lt!478637 (ite c!233096 call!96550 e!905339))))))

(declare-fun d!406538 () Bool)

(assert (=> d!406538 e!905833))

(declare-fun res!642636 () Bool)

(assert (=> d!406538 (=> (not res!642636) (not e!905833))))

(assert (=> d!406538 (= res!642636 (= (content!2151 lt!478637) ((_ map or) (content!2151 (ite c!233096 call!96550 e!905339)) (content!2151 (ite c!233096 call!96576 (ite c!233092 call!96569 call!96565))))))))

(assert (=> d!406538 (= lt!478637 e!905834)))

(declare-fun c!233217 () Bool)

(assert (=> d!406538 (= c!233217 ((_ is Nil!14551) (ite c!233096 call!96550 e!905339)))))

(assert (=> d!406538 (= (++!3814 (ite c!233096 call!96550 e!905339) (ite c!233096 call!96576 (ite c!233092 call!96569 call!96565))) lt!478637)))

(assert (= (and d!406538 c!233217) b!1419095))

(assert (= (and d!406538 (not c!233217)) b!1419096))

(assert (= (and d!406538 res!642636) b!1419097))

(assert (= (and b!1419097 res!642635) b!1419098))

(declare-fun m!1607721 () Bool)

(assert (=> b!1419097 m!1607721))

(declare-fun m!1607723 () Bool)

(assert (=> b!1419097 m!1607723))

(declare-fun m!1607725 () Bool)

(assert (=> b!1419097 m!1607725))

(declare-fun m!1607727 () Bool)

(assert (=> b!1419096 m!1607727))

(declare-fun m!1607729 () Bool)

(assert (=> d!406538 m!1607729))

(declare-fun m!1607731 () Bool)

(assert (=> d!406538 m!1607731))

(declare-fun m!1607733 () Bool)

(assert (=> d!406538 m!1607733))

(assert (=> bm!96572 d!406538))

(declare-fun d!406540 () Bool)

(declare-fun c!233218 () Bool)

(assert (=> d!406540 (= c!233218 ((_ is Cons!14553) (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477857))))))

(declare-fun e!905835 () List!14617)

(assert (=> d!406540 (= (printList!663 (ite c!233096 lt!477848 (ite c!233092 lt!477805 lt!477801)) (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477857))) e!905835)))

(declare-fun b!1419099 () Bool)

(assert (=> b!1419099 (= e!905835 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477857))))) (printList!663 (ite c!233096 lt!477848 (ite c!233092 lt!477805 lt!477801)) (t!124254 (ite c!233096 lt!477834 (ite c!233092 lt!477822 lt!477857))))))))

(declare-fun b!1419100 () Bool)

(assert (=> b!1419100 (= e!905835 Nil!14551)))

(assert (= (and d!406540 c!233218) b!1419099))

(assert (= (and d!406540 (not c!233218)) b!1419100))

(declare-fun m!1607735 () Bool)

(assert (=> b!1419099 m!1607735))

(assert (=> b!1419099 m!1607735))

(declare-fun m!1607737 () Bool)

(assert (=> b!1419099 m!1607737))

(declare-fun m!1607739 () Bool)

(assert (=> b!1419099 m!1607739))

(assert (=> b!1419099 m!1607737))

(assert (=> b!1419099 m!1607739))

(declare-fun m!1607741 () Bool)

(assert (=> b!1419099 m!1607741))

(assert (=> bm!96557 d!406540))

(declare-fun d!406542 () Bool)

(declare-fun lt!478687 () BalanceConc!9698)

(declare-fun printListTailRec!265 (LexerInterface!2209 List!14619 List!14617) List!14617)

(declare-fun dropList!438 (BalanceConc!9700 Int) List!14619)

(assert (=> d!406542 (= (list!5733 lt!478687) (printListTailRec!265 Lexer!2207 (dropList!438 (tokens!1830 sep!3) 0) (list!5733 (BalanceConc!9699 Empty!4879))))))

(declare-fun e!905861 () BalanceConc!9698)

(assert (=> d!406542 (= lt!478687 e!905861)))

(declare-fun c!233231 () Bool)

(assert (=> d!406542 (= c!233231 (>= 0 (size!12017 (tokens!1830 sep!3))))))

(declare-fun e!905860 () Bool)

(assert (=> d!406542 e!905860))

(declare-fun res!642653 () Bool)

(assert (=> d!406542 (=> (not res!642653) (not e!905860))))

(assert (=> d!406542 (= res!642653 (>= 0 0))))

(assert (=> d!406542 (= (printTailRec!645 Lexer!2207 (tokens!1830 sep!3) 0 (BalanceConc!9699 Empty!4879)) lt!478687)))

(declare-fun b!1419141 () Bool)

(assert (=> b!1419141 (= e!905860 (<= 0 (size!12017 (tokens!1830 sep!3))))))

(declare-fun b!1419142 () Bool)

(assert (=> b!1419142 (= e!905861 (BalanceConc!9699 Empty!4879))))

(declare-fun b!1419143 () Bool)

(assert (=> b!1419143 (= e!905861 (printTailRec!645 Lexer!2207 (tokens!1830 sep!3) (+ 0 1) (++!3823 (BalanceConc!9699 Empty!4879) (charsOf!1480 (apply!3721 (tokens!1830 sep!3) 0)))))))

(declare-fun lt!478686 () List!14619)

(assert (=> b!1419143 (= lt!478686 (list!5734 (tokens!1830 sep!3)))))

(declare-fun lt!478684 () Unit!21489)

(declare-fun lemmaDropApply!460 (List!14619 Int) Unit!21489)

(assert (=> b!1419143 (= lt!478684 (lemmaDropApply!460 lt!478686 0))))

(declare-fun drop!705 (List!14619 Int) List!14619)

(declare-fun apply!3724 (List!14619 Int) Token!4732)

(assert (=> b!1419143 (= (head!2768 (drop!705 lt!478686 0)) (apply!3724 lt!478686 0))))

(declare-fun lt!478689 () Unit!21489)

(assert (=> b!1419143 (= lt!478689 lt!478684)))

(declare-fun lt!478688 () List!14619)

(assert (=> b!1419143 (= lt!478688 (list!5734 (tokens!1830 sep!3)))))

(declare-fun lt!478690 () Unit!21489)

(declare-fun lemmaDropTail!440 (List!14619 Int) Unit!21489)

(assert (=> b!1419143 (= lt!478690 (lemmaDropTail!440 lt!478688 0))))

(declare-fun tail!2112 (List!14619) List!14619)

(assert (=> b!1419143 (= (tail!2112 (drop!705 lt!478688 0)) (drop!705 lt!478688 (+ 0 1)))))

(declare-fun lt!478685 () Unit!21489)

(assert (=> b!1419143 (= lt!478685 lt!478690)))

(assert (= (and d!406542 res!642653) b!1419141))

(assert (= (and d!406542 c!233231) b!1419142))

(assert (= (and d!406542 (not c!233231)) b!1419143))

(declare-fun m!1607897 () Bool)

(assert (=> d!406542 m!1607897))

(declare-fun m!1607901 () Bool)

(assert (=> d!406542 m!1607901))

(assert (=> d!406542 m!1607897))

(assert (=> d!406542 m!1607901))

(declare-fun m!1607903 () Bool)

(assert (=> d!406542 m!1607903))

(declare-fun m!1607905 () Bool)

(assert (=> d!406542 m!1607905))

(declare-fun m!1607907 () Bool)

(assert (=> d!406542 m!1607907))

(assert (=> b!1419141 m!1607905))

(declare-fun m!1607909 () Bool)

(assert (=> b!1419143 m!1607909))

(assert (=> b!1419143 m!1607909))

(declare-fun m!1607911 () Bool)

(assert (=> b!1419143 m!1607911))

(declare-fun m!1607913 () Bool)

(assert (=> b!1419143 m!1607913))

(declare-fun m!1607915 () Bool)

(assert (=> b!1419143 m!1607915))

(declare-fun m!1607919 () Bool)

(assert (=> b!1419143 m!1607919))

(declare-fun m!1607923 () Bool)

(assert (=> b!1419143 m!1607923))

(declare-fun m!1607925 () Bool)

(assert (=> b!1419143 m!1607925))

(declare-fun m!1607927 () Bool)

(assert (=> b!1419143 m!1607927))

(assert (=> b!1419143 m!1607913))

(assert (=> b!1419143 m!1607925))

(assert (=> b!1419143 m!1604823))

(declare-fun m!1607929 () Bool)

(assert (=> b!1419143 m!1607929))

(declare-fun m!1607931 () Bool)

(assert (=> b!1419143 m!1607931))

(declare-fun m!1607933 () Bool)

(assert (=> b!1419143 m!1607933))

(declare-fun m!1607935 () Bool)

(assert (=> b!1419143 m!1607935))

(assert (=> b!1419143 m!1607927))

(assert (=> b!1419143 m!1607929))

(assert (=> bm!96514 d!406542))

(declare-fun d!406578 () Bool)

(assert (=> d!406578 (= (list!5735 lt!477790) (list!5739 (c!233030 lt!477790)))))

(declare-fun bs!339657 () Bool)

(assert (= bs!339657 d!406578))

(declare-fun m!1607939 () Bool)

(assert (=> bs!339657 m!1607939))

(assert (=> b!1418234 d!406578))

(declare-fun d!406580 () Bool)

(assert (=> d!406580 (= (tail!2110 (list!5735 objs!24)) (t!124255 (list!5735 objs!24)))))

(assert (=> b!1418234 d!406580))

(assert (=> b!1418234 d!406216))

(declare-fun d!406584 () Bool)

(declare-fun lt!478694 () Bool)

(declare-fun e!905870 () Bool)

(assert (=> d!406584 (= lt!478694 e!905870)))

(declare-fun res!642661 () Bool)

(assert (=> d!406584 (=> (not res!642661) (not e!905870))))

(assert (=> d!406584 (= res!642661 (= (list!5734 (_1!7888 (lex!1013 lt!477812 (rules!11126 acc!229) (print!982 lt!477812 (singletonSeq!1169 lt!477826))))) (list!5734 (singletonSeq!1169 lt!477826))))))

(declare-fun e!905871 () Bool)

(assert (=> d!406584 (= lt!478694 e!905871)))

(declare-fun res!642662 () Bool)

(assert (=> d!406584 (=> (not res!642662) (not e!905871))))

(declare-fun lt!478695 () tuple2!14004)

(assert (=> d!406584 (= res!642662 (= (size!12017 (_1!7888 lt!478695)) 1))))

(assert (=> d!406584 (= lt!478695 (lex!1013 lt!477812 (rules!11126 acc!229) (print!982 lt!477812 (singletonSeq!1169 lt!477826))))))

(assert (=> d!406584 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406584 (= (rulesProduceIndividualToken!1172 lt!477812 (rules!11126 acc!229) lt!477826) lt!478694)))

(declare-fun b!1419158 () Bool)

(declare-fun res!642660 () Bool)

(assert (=> b!1419158 (=> (not res!642660) (not e!905871))))

(assert (=> b!1419158 (= res!642660 (= (apply!3721 (_1!7888 lt!478695) 0) lt!477826))))

(declare-fun b!1419159 () Bool)

(assert (=> b!1419159 (= e!905871 (isEmpty!8953 (_2!7888 lt!478695)))))

(declare-fun b!1419160 () Bool)

(assert (=> b!1419160 (= e!905870 (isEmpty!8953 (_2!7888 (lex!1013 lt!477812 (rules!11126 acc!229) (print!982 lt!477812 (singletonSeq!1169 lt!477826))))))))

(assert (= (and d!406584 res!642662) b!1419158))

(assert (= (and b!1419158 res!642660) b!1419159))

(assert (= (and d!406584 res!642661) b!1419160))

(declare-fun m!1607981 () Bool)

(assert (=> d!406584 m!1607981))

(assert (=> d!406584 m!1605205))

(declare-fun m!1607983 () Bool)

(assert (=> d!406584 m!1607983))

(declare-fun m!1607985 () Bool)

(assert (=> d!406584 m!1607985))

(declare-fun m!1607987 () Bool)

(assert (=> d!406584 m!1607987))

(assert (=> d!406584 m!1607985))

(declare-fun m!1607989 () Bool)

(assert (=> d!406584 m!1607989))

(assert (=> d!406584 m!1607989))

(declare-fun m!1607991 () Bool)

(assert (=> d!406584 m!1607991))

(assert (=> d!406584 m!1607985))

(declare-fun m!1607993 () Bool)

(assert (=> b!1419158 m!1607993))

(declare-fun m!1607995 () Bool)

(assert (=> b!1419159 m!1607995))

(assert (=> b!1419160 m!1607985))

(assert (=> b!1419160 m!1607985))

(assert (=> b!1419160 m!1607989))

(assert (=> b!1419160 m!1607989))

(assert (=> b!1419160 m!1607991))

(declare-fun m!1607997 () Bool)

(assert (=> b!1419160 m!1607997))

(assert (=> b!1418240 d!406584))

(declare-fun d!406590 () Bool)

(assert (=> d!406590 (rulesProduceIndividualToken!1172 lt!477802 (rules!11126 acc!229) lt!477832)))

(declare-fun lt!478723 () Unit!21489)

(assert (=> d!406590 (= lt!478723 (choose!8746 lt!477802 (rules!11126 acc!229) lt!477850 lt!477832))))

(assert (=> d!406590 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406590 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477802 (rules!11126 acc!229) lt!477850 lt!477832) lt!478723)))

(declare-fun bs!339658 () Bool)

(assert (= bs!339658 d!406590))

(assert (=> bs!339658 m!1604981))

(declare-fun m!1607999 () Bool)

(assert (=> bs!339658 m!1607999))

(assert (=> bs!339658 m!1605205))

(assert (=> b!1418240 d!406590))

(declare-fun d!406592 () Bool)

(declare-fun lt!478724 () Token!4732)

(assert (=> d!406592 (= lt!478724 (head!2768 (list!5734 (tokens!1830 (v!22115 lt!477384)))))))

(assert (=> d!406592 (= lt!478724 (head!2769 (c!233029 (tokens!1830 (v!22115 lt!477384)))))))

(assert (=> d!406592 (not (isEmpty!8945 (tokens!1830 (v!22115 lt!477384))))))

(assert (=> d!406592 (= (head!2757 (tokens!1830 (v!22115 lt!477384))) lt!478724)))

(declare-fun bs!339659 () Bool)

(assert (= bs!339659 d!406592))

(assert (=> bs!339659 m!1604963))

(assert (=> bs!339659 m!1604963))

(declare-fun m!1608001 () Bool)

(assert (=> bs!339659 m!1608001))

(declare-fun m!1608003 () Bool)

(assert (=> bs!339659 m!1608003))

(assert (=> bs!339659 m!1604953))

(assert (=> b!1418240 d!406592))

(declare-fun d!406594 () Bool)

(declare-fun lt!478725 () Token!4732)

(assert (=> d!406594 (= lt!478725 (last!86 (list!5734 (tokens!1830 acc!229))))))

(assert (=> d!406594 (= lt!478725 (last!87 (c!233029 (tokens!1830 acc!229))))))

(assert (=> d!406594 (not (isEmpty!8945 (tokens!1830 acc!229)))))

(assert (=> d!406594 (= (last!83 (tokens!1830 acc!229)) lt!478725)))

(declare-fun bs!339660 () Bool)

(assert (= bs!339660 d!406594))

(assert (=> bs!339660 m!1604961))

(assert (=> bs!339660 m!1604961))

(declare-fun m!1608005 () Bool)

(assert (=> bs!339660 m!1608005))

(declare-fun m!1608007 () Bool)

(assert (=> bs!339660 m!1608007))

(assert (=> bs!339660 m!1604983))

(assert (=> b!1418240 d!406594))

(declare-fun d!406596 () Bool)

(assert (=> d!406596 (= (separableTokensPredicate!486 Lexer!2207 (last!83 (tokens!1830 acc!229)) (head!2757 (tokens!1830 (v!22115 lt!477384))) (rules!11126 acc!229)) (not (prefixMatchZipperSequence!315 (rulesRegex!375 Lexer!2207 (rules!11126 acc!229)) (++!3823 (charsOf!1480 (last!83 (tokens!1830 acc!229))) (singletonSeq!1170 (apply!3718 (charsOf!1480 (head!2757 (tokens!1830 (v!22115 lt!477384)))) 0))))))))

(declare-fun bs!339661 () Bool)

(assert (= bs!339661 d!406596))

(declare-fun m!1608009 () Bool)

(assert (=> bs!339661 m!1608009))

(declare-fun m!1608011 () Bool)

(assert (=> bs!339661 m!1608011))

(declare-fun m!1608013 () Bool)

(assert (=> bs!339661 m!1608013))

(assert (=> bs!339661 m!1604973))

(declare-fun m!1608015 () Bool)

(assert (=> bs!339661 m!1608015))

(assert (=> bs!339661 m!1608015))

(declare-fun m!1608017 () Bool)

(assert (=> bs!339661 m!1608017))

(assert (=> bs!339661 m!1608011))

(assert (=> bs!339661 m!1604975))

(declare-fun m!1608019 () Bool)

(assert (=> bs!339661 m!1608019))

(declare-fun m!1608021 () Bool)

(assert (=> bs!339661 m!1608021))

(assert (=> bs!339661 m!1608017))

(assert (=> bs!339661 m!1608009))

(assert (=> bs!339661 m!1608019))

(assert (=> bs!339661 m!1608021))

(assert (=> b!1418240 d!406596))

(declare-fun d!406598 () Bool)

(declare-fun lt!478726 () Bool)

(declare-fun e!905876 () Bool)

(assert (=> d!406598 (= lt!478726 e!905876)))

(declare-fun res!642667 () Bool)

(assert (=> d!406598 (=> (not res!642667) (not e!905876))))

(assert (=> d!406598 (= res!642667 (= (list!5734 (_1!7888 (lex!1013 lt!477802 (rules!11126 acc!229) (print!982 lt!477802 (singletonSeq!1169 lt!477832))))) (list!5734 (singletonSeq!1169 lt!477832))))))

(declare-fun e!905877 () Bool)

(assert (=> d!406598 (= lt!478726 e!905877)))

(declare-fun res!642668 () Bool)

(assert (=> d!406598 (=> (not res!642668) (not e!905877))))

(declare-fun lt!478727 () tuple2!14004)

(assert (=> d!406598 (= res!642668 (= (size!12017 (_1!7888 lt!478727)) 1))))

(assert (=> d!406598 (= lt!478727 (lex!1013 lt!477802 (rules!11126 acc!229) (print!982 lt!477802 (singletonSeq!1169 lt!477832))))))

(assert (=> d!406598 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406598 (= (rulesProduceIndividualToken!1172 lt!477802 (rules!11126 acc!229) lt!477832) lt!478726)))

(declare-fun b!1419168 () Bool)

(declare-fun res!642666 () Bool)

(assert (=> b!1419168 (=> (not res!642666) (not e!905877))))

(assert (=> b!1419168 (= res!642666 (= (apply!3721 (_1!7888 lt!478727) 0) lt!477832))))

(declare-fun b!1419169 () Bool)

(assert (=> b!1419169 (= e!905877 (isEmpty!8953 (_2!7888 lt!478727)))))

(declare-fun b!1419170 () Bool)

(assert (=> b!1419170 (= e!905876 (isEmpty!8953 (_2!7888 (lex!1013 lt!477802 (rules!11126 acc!229) (print!982 lt!477802 (singletonSeq!1169 lt!477832))))))))

(assert (= (and d!406598 res!642668) b!1419168))

(assert (= (and b!1419168 res!642666) b!1419169))

(assert (= (and d!406598 res!642667) b!1419170))

(declare-fun m!1608033 () Bool)

(assert (=> d!406598 m!1608033))

(assert (=> d!406598 m!1605205))

(declare-fun m!1608043 () Bool)

(assert (=> d!406598 m!1608043))

(declare-fun m!1608045 () Bool)

(assert (=> d!406598 m!1608045))

(declare-fun m!1608047 () Bool)

(assert (=> d!406598 m!1608047))

(assert (=> d!406598 m!1608045))

(declare-fun m!1608051 () Bool)

(assert (=> d!406598 m!1608051))

(assert (=> d!406598 m!1608051))

(declare-fun m!1608057 () Bool)

(assert (=> d!406598 m!1608057))

(assert (=> d!406598 m!1608045))

(declare-fun m!1608059 () Bool)

(assert (=> b!1419168 m!1608059))

(declare-fun m!1608063 () Bool)

(assert (=> b!1419169 m!1608063))

(assert (=> b!1419170 m!1608045))

(assert (=> b!1419170 m!1608045))

(assert (=> b!1419170 m!1608051))

(assert (=> b!1419170 m!1608051))

(assert (=> b!1419170 m!1608057))

(declare-fun m!1608071 () Bool)

(assert (=> b!1419170 m!1608071))

(assert (=> b!1418240 d!406598))

(declare-fun d!406600 () Bool)

(assert (=> d!406600 (rulesProduceIndividualToken!1172 lt!477812 (rules!11126 acc!229) lt!477826)))

(declare-fun lt!478728 () Unit!21489)

(assert (=> d!406600 (= lt!478728 (choose!8746 lt!477812 (rules!11126 acc!229) lt!477813 lt!477826))))

(assert (=> d!406600 (not (isEmpty!8948 (rules!11126 acc!229)))))

(assert (=> d!406600 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!357 lt!477812 (rules!11126 acc!229) lt!477813 lt!477826) lt!478728)))

(declare-fun bs!339662 () Bool)

(assert (= bs!339662 d!406600))

(assert (=> bs!339662 m!1604979))

(declare-fun m!1608085 () Bool)

(assert (=> bs!339662 m!1608085))

(assert (=> bs!339662 m!1605205))

(assert (=> b!1418240 d!406600))

(declare-fun d!406602 () Bool)

(declare-fun e!905878 () Bool)

(assert (=> d!406602 e!905878))

(declare-fun res!642669 () Bool)

(assert (=> d!406602 (=> (not res!642669) (not e!905878))))

(declare-fun lt!478729 () BalanceConc!9698)

(assert (=> d!406602 (= res!642669 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (ite c!233096 (v!22115 lt!477384) (ite c!233092 acc!229 (v!22115 lt!477384)))) lt!478729))) (list!5734 (tokens!1830 (ite c!233096 (v!22115 lt!477384) (ite c!233092 acc!229 (v!22115 lt!477384)))))))))

(assert (=> d!406602 (= lt!478729 (print!982 Lexer!2207 (tokens!1830 (ite c!233096 (v!22115 lt!477384) (ite c!233092 acc!229 (v!22115 lt!477384))))))))

(declare-fun lt!478730 () Unit!21489)

(assert (=> d!406602 (= lt!478730 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (ite c!233096 (v!22115 lt!477384) (ite c!233092 acc!229 (v!22115 lt!477384)))) (list!5734 (tokens!1830 (ite c!233096 (v!22115 lt!477384) (ite c!233092 acc!229 (v!22115 lt!477384)))))))))

(assert (=> d!406602 (= (print!981 (ite c!233096 (v!22115 lt!477384) (ite c!233092 acc!229 (v!22115 lt!477384)))) lt!478729)))

(declare-fun b!1419171 () Bool)

(assert (=> b!1419171 (= e!905878 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (ite c!233096 (v!22115 lt!477384) (ite c!233092 acc!229 (v!22115 lt!477384)))) lt!478729)))))))

(assert (= (and d!406602 res!642669) b!1419171))

(declare-fun m!1608107 () Bool)

(assert (=> d!406602 m!1608107))

(declare-fun m!1608109 () Bool)

(assert (=> d!406602 m!1608109))

(declare-fun m!1608113 () Bool)

(assert (=> d!406602 m!1608113))

(declare-fun m!1608115 () Bool)

(assert (=> d!406602 m!1608115))

(assert (=> d!406602 m!1608109))

(declare-fun m!1608119 () Bool)

(assert (=> d!406602 m!1608119))

(assert (=> b!1419171 m!1608107))

(declare-fun m!1608123 () Bool)

(assert (=> b!1419171 m!1608123))

(assert (=> b!1419171 m!1608123))

(declare-fun m!1608129 () Bool)

(assert (=> b!1419171 m!1608129))

(assert (=> bm!96537 d!406602))

(declare-fun d!406604 () Bool)

(declare-fun e!905879 () Bool)

(assert (=> d!406604 e!905879))

(declare-fun res!642670 () Bool)

(assert (=> d!406604 (=> (not res!642670) (not e!905879))))

(declare-fun lt!478731 () BalanceConc!9698)

(assert (=> d!406604 (= res!642670 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (ite c!233096 acc!229 (ite c!233092 (v!22115 lt!477384) acc!229))) lt!478731))) (list!5734 (tokens!1830 (ite c!233096 acc!229 (ite c!233092 (v!22115 lt!477384) acc!229))))))))

(assert (=> d!406604 (= lt!478731 (print!982 Lexer!2207 (tokens!1830 (ite c!233096 acc!229 (ite c!233092 (v!22115 lt!477384) acc!229)))))))

(declare-fun lt!478732 () Unit!21489)

(assert (=> d!406604 (= lt!478732 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (ite c!233096 acc!229 (ite c!233092 (v!22115 lt!477384) acc!229))) (list!5734 (tokens!1830 (ite c!233096 acc!229 (ite c!233092 (v!22115 lt!477384) acc!229))))))))

(assert (=> d!406604 (= (print!981 (ite c!233096 acc!229 (ite c!233092 (v!22115 lt!477384) acc!229))) lt!478731)))

(declare-fun b!1419172 () Bool)

(assert (=> b!1419172 (= e!905879 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (ite c!233096 acc!229 (ite c!233092 (v!22115 lt!477384) acc!229))) lt!478731)))))))

(assert (= (and d!406604 res!642670) b!1419172))

(declare-fun m!1608139 () Bool)

(assert (=> d!406604 m!1608139))

(declare-fun m!1608141 () Bool)

(assert (=> d!406604 m!1608141))

(declare-fun m!1608143 () Bool)

(assert (=> d!406604 m!1608143))

(declare-fun m!1608145 () Bool)

(assert (=> d!406604 m!1608145))

(assert (=> d!406604 m!1608141))

(declare-fun m!1608147 () Bool)

(assert (=> d!406604 m!1608147))

(assert (=> b!1419172 m!1608139))

(declare-fun m!1608151 () Bool)

(assert (=> b!1419172 m!1608151))

(assert (=> b!1419172 m!1608151))

(declare-fun m!1608153 () Bool)

(assert (=> b!1419172 m!1608153))

(assert (=> bm!96564 d!406604))

(declare-fun d!406608 () Bool)

(declare-fun lt!478733 () BalanceConc!9698)

(assert (=> d!406608 (= (list!5733 lt!478733) (printList!663 Lexer!2207 (list!5734 (tokens!1830 sep!3))))))

(assert (=> d!406608 (= lt!478733 (printTailRec!645 Lexer!2207 (tokens!1830 sep!3) 0 (BalanceConc!9699 Empty!4879)))))

(assert (=> d!406608 (= (print!982 Lexer!2207 (tokens!1830 sep!3)) lt!478733)))

(declare-fun bs!339663 () Bool)

(assert (= bs!339663 d!406608))

(declare-fun m!1608155 () Bool)

(assert (=> bs!339663 m!1608155))

(assert (=> bs!339663 m!1604823))

(assert (=> bs!339663 m!1604823))

(declare-fun m!1608157 () Bool)

(assert (=> bs!339663 m!1608157))

(assert (=> bs!339663 m!1604845))

(assert (=> bm!96519 d!406608))

(declare-fun d!406610 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!422) Rule!4870)

(declare-fun integerLiteralRule!0 (JsonLexer!422) Rule!4870)

(declare-fun floatLiteralRule!0 (JsonLexer!422) Rule!4870)

(declare-fun trueRule!0 (JsonLexer!422) Rule!4870)

(declare-fun falseRule!0 (JsonLexer!422) Rule!4870)

(declare-fun nullRule!0 (JsonLexer!422) Rule!4870)

(declare-fun jsonstringRule!0 (JsonLexer!422) Rule!4870)

(declare-fun lBraceRule!0 (JsonLexer!422) Rule!4870)

(declare-fun rBraceRule!0 (JsonLexer!422) Rule!4870)

(declare-fun lBracketRule!0 (JsonLexer!422) Rule!4870)

(declare-fun rBracketRule!0 (JsonLexer!422) Rule!4870)

(declare-fun colonRule!0 (JsonLexer!422) Rule!4870)

(declare-fun commaRule!0 (JsonLexer!422) Rule!4870)

(declare-fun eofRule!0 (JsonLexer!422) Rule!4870)

(assert (=> d!406610 (= (rules!109 JsonLexer!423) (Cons!14552 (whitespaceRule!0 JsonLexer!423) (Cons!14552 (integerLiteralRule!0 JsonLexer!423) (Cons!14552 (floatLiteralRule!0 JsonLexer!423) (Cons!14552 (trueRule!0 JsonLexer!423) (Cons!14552 (falseRule!0 JsonLexer!423) (Cons!14552 (nullRule!0 JsonLexer!423) (Cons!14552 (jsonstringRule!0 JsonLexer!423) (Cons!14552 (lBraceRule!0 JsonLexer!423) (Cons!14552 (rBraceRule!0 JsonLexer!423) (Cons!14552 (lBracketRule!0 JsonLexer!423) (Cons!14552 (rBracketRule!0 JsonLexer!423) (Cons!14552 (colonRule!0 JsonLexer!423) (Cons!14552 (commaRule!0 JsonLexer!423) (Cons!14552 (eofRule!0 JsonLexer!423) Nil!14552)))))))))))))))))

(declare-fun bs!339667 () Bool)

(assert (= bs!339667 d!406610))

(declare-fun m!1608363 () Bool)

(assert (=> bs!339667 m!1608363))

(declare-fun m!1608365 () Bool)

(assert (=> bs!339667 m!1608365))

(declare-fun m!1608367 () Bool)

(assert (=> bs!339667 m!1608367))

(declare-fun m!1608369 () Bool)

(assert (=> bs!339667 m!1608369))

(declare-fun m!1608371 () Bool)

(assert (=> bs!339667 m!1608371))

(declare-fun m!1608373 () Bool)

(assert (=> bs!339667 m!1608373))

(declare-fun m!1608375 () Bool)

(assert (=> bs!339667 m!1608375))

(declare-fun m!1608377 () Bool)

(assert (=> bs!339667 m!1608377))

(declare-fun m!1608379 () Bool)

(assert (=> bs!339667 m!1608379))

(declare-fun m!1608381 () Bool)

(assert (=> bs!339667 m!1608381))

(declare-fun m!1608383 () Bool)

(assert (=> bs!339667 m!1608383))

(declare-fun m!1608385 () Bool)

(assert (=> bs!339667 m!1608385))

(declare-fun m!1608387 () Bool)

(assert (=> bs!339667 m!1608387))

(declare-fun m!1608389 () Bool)

(assert (=> bs!339667 m!1608389))

(assert (=> d!405988 d!406610))

(declare-fun d!406642 () Bool)

(declare-fun e!905924 () Bool)

(assert (=> d!406642 e!905924))

(declare-fun res!642678 () Bool)

(assert (=> d!406642 (=> (not res!642678) (not e!905924))))

(declare-fun lt!478775 () BalanceConc!9698)

(assert (=> d!406642 (= res!642678 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (get!4473 lt!477749)) lt!478775))) (list!5734 (tokens!1830 (get!4473 lt!477749)))))))

(assert (=> d!406642 (= lt!478775 (print!982 Lexer!2207 (tokens!1830 (get!4473 lt!477749))))))

(declare-fun lt!478776 () Unit!21489)

(assert (=> d!406642 (= lt!478776 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (get!4473 lt!477749)) (list!5734 (tokens!1830 (get!4473 lt!477749)))))))

(assert (=> d!406642 (= (print!981 (get!4473 lt!477749)) lt!478775)))

(declare-fun b!1419227 () Bool)

(assert (=> b!1419227 (= e!905924 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (get!4473 lt!477749)) lt!478775)))))))

(assert (= (and d!406642 res!642678) b!1419227))

(declare-fun m!1608391 () Bool)

(assert (=> d!406642 m!1608391))

(assert (=> d!406642 m!1604827))

(declare-fun m!1608393 () Bool)

(assert (=> d!406642 m!1608393))

(declare-fun m!1608395 () Bool)

(assert (=> d!406642 m!1608395))

(assert (=> d!406642 m!1604827))

(declare-fun m!1608397 () Bool)

(assert (=> d!406642 m!1608397))

(assert (=> b!1419227 m!1608391))

(declare-fun m!1608399 () Bool)

(assert (=> b!1419227 m!1608399))

(assert (=> b!1419227 m!1608399))

(declare-fun m!1608401 () Bool)

(assert (=> b!1419227 m!1608401))

(assert (=> b!1418217 d!406642))

(declare-fun d!406644 () Bool)

(assert (=> d!406644 (= (list!5733 (print!981 (get!4473 lt!477749))) (list!5742 (c!233028 (print!981 (get!4473 lt!477749)))))))

(declare-fun bs!339668 () Bool)

(assert (= bs!339668 d!406644))

(declare-fun m!1608403 () Bool)

(assert (=> bs!339668 m!1608403))

(assert (=> b!1418217 d!406644))

(declare-fun d!406646 () Bool)

(declare-fun e!905925 () Bool)

(assert (=> d!406646 e!905925))

(declare-fun res!642679 () Bool)

(assert (=> d!406646 (=> (not res!642679) (not e!905925))))

(declare-fun lt!478777 () BalanceConc!9698)

(assert (=> d!406646 (= res!642679 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 (head!2755 objs!24)) lt!478777))) (list!5734 (tokens!1830 (head!2755 objs!24)))))))

(assert (=> d!406646 (= lt!478777 (print!982 Lexer!2207 (tokens!1830 (head!2755 objs!24))))))

(declare-fun lt!478778 () Unit!21489)

(assert (=> d!406646 (= lt!478778 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 (head!2755 objs!24)) (list!5734 (tokens!1830 (head!2755 objs!24)))))))

(assert (=> d!406646 (= (print!981 (head!2755 objs!24)) lt!478777)))

(declare-fun b!1419228 () Bool)

(assert (=> b!1419228 (= e!905925 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 (head!2755 objs!24)) lt!478777)))))))

(assert (= (and d!406646 res!642679) b!1419228))

(declare-fun m!1608405 () Bool)

(assert (=> d!406646 m!1608405))

(assert (=> d!406646 m!1604821))

(assert (=> d!406646 m!1604889))

(declare-fun m!1608407 () Bool)

(assert (=> d!406646 m!1608407))

(assert (=> d!406646 m!1604821))

(declare-fun m!1608409 () Bool)

(assert (=> d!406646 m!1608409))

(assert (=> b!1419228 m!1608405))

(declare-fun m!1608411 () Bool)

(assert (=> b!1419228 m!1608411))

(assert (=> b!1419228 m!1608411))

(declare-fun m!1608413 () Bool)

(assert (=> b!1419228 m!1608413))

(assert (=> b!1418217 d!406646))

(declare-fun d!406648 () Bool)

(declare-fun e!905930 () Bool)

(assert (=> d!406648 e!905930))

(declare-fun res!642680 () Bool)

(assert (=> d!406648 (=> (not res!642680) (not e!905930))))

(declare-fun lt!478779 () BalanceConc!9698)

(assert (=> d!406648 (= res!642680 (= (list!5734 (_1!7888 (lex!1013 Lexer!2207 (rules!11126 sep!3) lt!478779))) (list!5734 (tokens!1830 sep!3))))))

(assert (=> d!406648 (= lt!478779 (print!982 Lexer!2207 (tokens!1830 sep!3)))))

(declare-fun lt!478780 () Unit!21489)

(assert (=> d!406648 (= lt!478780 (theoremInvertabilityWhenTokenListSeparable!33 Lexer!2207 (rules!11126 sep!3) (list!5734 (tokens!1830 sep!3))))))

(assert (=> d!406648 (= (print!981 sep!3) lt!478779)))

(declare-fun b!1419233 () Bool)

(assert (=> b!1419233 (= e!905930 (isEmpty!8952 (list!5733 (_2!7888 (lex!1013 Lexer!2207 (rules!11126 sep!3) lt!478779)))))))

(assert (= (and d!406648 res!642680) b!1419233))

(declare-fun m!1608415 () Bool)

(assert (=> d!406648 m!1608415))

(assert (=> d!406648 m!1604823))

(assert (=> d!406648 m!1604849))

(declare-fun m!1608417 () Bool)

(assert (=> d!406648 m!1608417))

(assert (=> d!406648 m!1604823))

(declare-fun m!1608419 () Bool)

(assert (=> d!406648 m!1608419))

(assert (=> b!1419233 m!1608415))

(declare-fun m!1608421 () Bool)

(assert (=> b!1419233 m!1608421))

(assert (=> b!1419233 m!1608421))

(declare-fun m!1608423 () Bool)

(assert (=> b!1419233 m!1608423))

(assert (=> b!1418217 d!406648))

(declare-fun d!406650 () Bool)

(assert (=> d!406650 (= (list!5733 (print!981 sep!3)) (list!5742 (c!233028 (print!981 sep!3))))))

(declare-fun bs!339669 () Bool)

(assert (= bs!339669 d!406650))

(declare-fun m!1608425 () Bool)

(assert (=> bs!339669 m!1608425))

(assert (=> b!1418217 d!406650))

(assert (=> b!1418217 d!406260))

(declare-fun b!1419236 () Bool)

(declare-fun res!642681 () Bool)

(declare-fun e!905931 () Bool)

(assert (=> b!1419236 (=> (not res!642681) (not e!905931))))

(declare-fun lt!478781 () List!14617)

(assert (=> b!1419236 (= res!642681 (= (size!12015 lt!478781) (+ (size!12015 (list!5733 (print!981 (head!2755 objs!24)))) (size!12015 (list!5733 (print!981 sep!3))))))))

(declare-fun b!1419234 () Bool)

(declare-fun e!905932 () List!14617)

(assert (=> b!1419234 (= e!905932 (list!5733 (print!981 sep!3)))))

(declare-fun b!1419235 () Bool)

(assert (=> b!1419235 (= e!905932 (Cons!14551 (h!19952 (list!5733 (print!981 (head!2755 objs!24)))) (++!3814 (t!124252 (list!5733 (print!981 (head!2755 objs!24)))) (list!5733 (print!981 sep!3)))))))

(declare-fun b!1419237 () Bool)

(assert (=> b!1419237 (= e!905931 (or (not (= (list!5733 (print!981 sep!3)) Nil!14551)) (= lt!478781 (list!5733 (print!981 (head!2755 objs!24))))))))

(declare-fun d!406652 () Bool)

(assert (=> d!406652 e!905931))

(declare-fun res!642682 () Bool)

(assert (=> d!406652 (=> (not res!642682) (not e!905931))))

(assert (=> d!406652 (= res!642682 (= (content!2151 lt!478781) ((_ map or) (content!2151 (list!5733 (print!981 (head!2755 objs!24)))) (content!2151 (list!5733 (print!981 sep!3))))))))

(assert (=> d!406652 (= lt!478781 e!905932)))

(declare-fun c!233248 () Bool)

(assert (=> d!406652 (= c!233248 ((_ is Nil!14551) (list!5733 (print!981 (head!2755 objs!24)))))))

(assert (=> d!406652 (= (++!3814 (list!5733 (print!981 (head!2755 objs!24))) (list!5733 (print!981 sep!3))) lt!478781)))

(assert (= (and d!406652 c!233248) b!1419234))

(assert (= (and d!406652 (not c!233248)) b!1419235))

(assert (= (and d!406652 res!642682) b!1419236))

(assert (= (and b!1419236 res!642681) b!1419237))

(declare-fun m!1608427 () Bool)

(assert (=> b!1419236 m!1608427))

(assert (=> b!1419236 m!1604795))

(declare-fun m!1608429 () Bool)

(assert (=> b!1419236 m!1608429))

(assert (=> b!1419236 m!1604797))

(declare-fun m!1608431 () Bool)

(assert (=> b!1419236 m!1608431))

(assert (=> b!1419235 m!1604797))

(declare-fun m!1608433 () Bool)

(assert (=> b!1419235 m!1608433))

(declare-fun m!1608435 () Bool)

(assert (=> d!406652 m!1608435))

(assert (=> d!406652 m!1604795))

(declare-fun m!1608437 () Bool)

(assert (=> d!406652 m!1608437))

(assert (=> d!406652 m!1604797))

(declare-fun m!1608439 () Bool)

(assert (=> d!406652 m!1608439))

(assert (=> b!1418217 d!406652))

(declare-fun d!406654 () Bool)

(assert (=> d!406654 (= (list!5733 (print!981 (head!2755 objs!24))) (list!5742 (c!233028 (print!981 (head!2755 objs!24)))))))

(declare-fun bs!339670 () Bool)

(assert (= bs!339670 d!406654))

(declare-fun m!1608441 () Bool)

(assert (=> bs!339670 m!1608441))

(assert (=> b!1418217 d!406654))

(declare-fun d!406656 () Bool)

(assert (=> d!406656 (= (isEmpty!8948 (rules!11126 acc!229)) ((_ is Nil!14552) (rules!11126 acc!229)))))

(assert (=> d!406034 d!406656))

(assert (=> d!406018 d!406610))

(declare-fun b!1419244 () Bool)

(declare-fun res!642687 () Bool)

(declare-fun e!905941 () Bool)

(assert (=> b!1419244 (=> (not res!642687) (not e!905941))))

(assert (=> b!1419244 (= res!642687 (isBalanced!1450 (left!12441 (c!233029 (tokens!1830 acc!229)))))))

(declare-fun b!1419246 () Bool)

(declare-fun res!642684 () Bool)

(assert (=> b!1419246 (=> (not res!642684) (not e!905941))))

(assert (=> b!1419246 (= res!642684 (isBalanced!1450 (right!12771 (c!233029 (tokens!1830 acc!229)))))))

(declare-fun b!1419247 () Bool)

(declare-fun res!642686 () Bool)

(assert (=> b!1419247 (=> (not res!642686) (not e!905941))))

(assert (=> b!1419247 (= res!642686 (<= (- (height!711 (left!12441 (c!233029 (tokens!1830 acc!229)))) (height!711 (right!12771 (c!233029 (tokens!1830 acc!229))))) 1))))

(declare-fun b!1419248 () Bool)

(assert (=> b!1419248 (= e!905941 (not (isEmpty!8955 (right!12771 (c!233029 (tokens!1830 acc!229))))))))

(declare-fun b!1419249 () Bool)

(declare-fun e!905940 () Bool)

(assert (=> b!1419249 (= e!905940 e!905941)))

(declare-fun res!642683 () Bool)

(assert (=> b!1419249 (=> (not res!642683) (not e!905941))))

(assert (=> b!1419249 (= res!642683 (<= (- 1) (- (height!711 (left!12441 (c!233029 (tokens!1830 acc!229)))) (height!711 (right!12771 (c!233029 (tokens!1830 acc!229)))))))))

(declare-fun b!1419245 () Bool)

(declare-fun res!642688 () Bool)

(assert (=> b!1419245 (=> (not res!642688) (not e!905941))))

(assert (=> b!1419245 (= res!642688 (not (isEmpty!8955 (left!12441 (c!233029 (tokens!1830 acc!229))))))))

(declare-fun d!406658 () Bool)

(declare-fun res!642685 () Bool)

(assert (=> d!406658 (=> res!642685 e!905940)))

(assert (=> d!406658 (= res!642685 (not ((_ is Node!4880) (c!233029 (tokens!1830 acc!229)))))))

(assert (=> d!406658 (= (isBalanced!1450 (c!233029 (tokens!1830 acc!229))) e!905940)))

(assert (= (and d!406658 (not res!642685)) b!1419249))

(assert (= (and b!1419249 res!642683) b!1419247))

(assert (= (and b!1419247 res!642686) b!1419244))

(assert (= (and b!1419244 res!642687) b!1419246))

(assert (= (and b!1419246 res!642684) b!1419245))

(assert (= (and b!1419245 res!642688) b!1419248))

(declare-fun m!1608451 () Bool)

(assert (=> b!1419245 m!1608451))

(declare-fun m!1608455 () Bool)

(assert (=> b!1419248 m!1608455))

(assert (=> b!1419249 m!1607077))

(assert (=> b!1419249 m!1607079))

(assert (=> b!1419247 m!1607077))

(assert (=> b!1419247 m!1607079))

(declare-fun m!1608457 () Bool)

(assert (=> b!1419246 m!1608457))

(declare-fun m!1608459 () Bool)

(assert (=> b!1419244 m!1608459))

(assert (=> d!405984 d!406658))

(declare-fun d!406660 () Bool)

(declare-fun lt!478785 () BalanceConc!9698)

(assert (=> d!406660 (= (list!5733 lt!478785) (printListTailRec!265 Lexer!2207 (dropList!438 (tokens!1830 (v!22115 lt!477384)) 0) (list!5733 (BalanceConc!9699 Empty!4879))))))

(declare-fun e!905947 () BalanceConc!9698)

(assert (=> d!406660 (= lt!478785 e!905947)))

(declare-fun c!233249 () Bool)

(assert (=> d!406660 (= c!233249 (>= 0 (size!12017 (tokens!1830 (v!22115 lt!477384)))))))

(declare-fun e!905946 () Bool)

(assert (=> d!406660 e!905946))

(declare-fun res!642689 () Bool)

(assert (=> d!406660 (=> (not res!642689) (not e!905946))))

(assert (=> d!406660 (= res!642689 (>= 0 0))))

(assert (=> d!406660 (= (printTailRec!645 Lexer!2207 (tokens!1830 (v!22115 lt!477384)) 0 (BalanceConc!9699 Empty!4879)) lt!478785)))

(declare-fun b!1419256 () Bool)

(assert (=> b!1419256 (= e!905946 (<= 0 (size!12017 (tokens!1830 (v!22115 lt!477384)))))))

(declare-fun b!1419257 () Bool)

(assert (=> b!1419257 (= e!905947 (BalanceConc!9699 Empty!4879))))

(declare-fun b!1419258 () Bool)

(assert (=> b!1419258 (= e!905947 (printTailRec!645 Lexer!2207 (tokens!1830 (v!22115 lt!477384)) (+ 0 1) (++!3823 (BalanceConc!9699 Empty!4879) (charsOf!1480 (apply!3721 (tokens!1830 (v!22115 lt!477384)) 0)))))))

(declare-fun lt!478784 () List!14619)

(assert (=> b!1419258 (= lt!478784 (list!5734 (tokens!1830 (v!22115 lt!477384))))))

(declare-fun lt!478782 () Unit!21489)

(assert (=> b!1419258 (= lt!478782 (lemmaDropApply!460 lt!478784 0))))

(assert (=> b!1419258 (= (head!2768 (drop!705 lt!478784 0)) (apply!3724 lt!478784 0))))

(declare-fun lt!478787 () Unit!21489)

(assert (=> b!1419258 (= lt!478787 lt!478782)))

(declare-fun lt!478786 () List!14619)

(assert (=> b!1419258 (= lt!478786 (list!5734 (tokens!1830 (v!22115 lt!477384))))))

(declare-fun lt!478788 () Unit!21489)

(assert (=> b!1419258 (= lt!478788 (lemmaDropTail!440 lt!478786 0))))

(assert (=> b!1419258 (= (tail!2112 (drop!705 lt!478786 0)) (drop!705 lt!478786 (+ 0 1)))))

(declare-fun lt!478783 () Unit!21489)

(assert (=> b!1419258 (= lt!478783 lt!478788)))

(assert (= (and d!406660 res!642689) b!1419256))

(assert (= (and d!406660 c!233249) b!1419257))

(assert (= (and d!406660 (not c!233249)) b!1419258))

(declare-fun m!1608473 () Bool)

(assert (=> d!406660 m!1608473))

(assert (=> d!406660 m!1607901))

(assert (=> d!406660 m!1608473))

(assert (=> d!406660 m!1607901))

(declare-fun m!1608475 () Bool)

(assert (=> d!406660 m!1608475))

(declare-fun m!1608477 () Bool)

(assert (=> d!406660 m!1608477))

(declare-fun m!1608479 () Bool)

(assert (=> d!406660 m!1608479))

(assert (=> b!1419256 m!1608477))

(declare-fun m!1608483 () Bool)

(assert (=> b!1419258 m!1608483))

(assert (=> b!1419258 m!1608483))

(declare-fun m!1608487 () Bool)

(assert (=> b!1419258 m!1608487))

(declare-fun m!1608491 () Bool)

(assert (=> b!1419258 m!1608491))

(declare-fun m!1608495 () Bool)

(assert (=> b!1419258 m!1608495))

(declare-fun m!1608497 () Bool)

(assert (=> b!1419258 m!1608497))

(declare-fun m!1608499 () Bool)

(assert (=> b!1419258 m!1608499))

(declare-fun m!1608501 () Bool)

(assert (=> b!1419258 m!1608501))

(declare-fun m!1608503 () Bool)

(assert (=> b!1419258 m!1608503))

(assert (=> b!1419258 m!1608491))

(assert (=> b!1419258 m!1608501))

(assert (=> b!1419258 m!1604963))

(declare-fun m!1608505 () Bool)

(assert (=> b!1419258 m!1608505))

(declare-fun m!1608507 () Bool)

(assert (=> b!1419258 m!1608507))

(declare-fun m!1608511 () Bool)

(assert (=> b!1419258 m!1608511))

(declare-fun m!1608515 () Bool)

(assert (=> b!1419258 m!1608515))

(assert (=> b!1419258 m!1608503))

(assert (=> b!1419258 m!1608505))

(assert (=> bm!96553 d!406660))

(declare-fun b!1419271 () Bool)

(declare-fun res!642690 () Bool)

(declare-fun e!905958 () Bool)

(assert (=> b!1419271 (=> (not res!642690) (not e!905958))))

(declare-fun lt!478789 () List!14617)

(assert (=> b!1419271 (= res!642690 (= (size!12015 lt!478789) (+ (size!12015 (ite c!233087 call!96510 (ite c!233083 call!96531 call!96530))) (size!12015 (ite c!233087 call!96532 (ite c!233083 call!96539 call!96531))))))))

(declare-fun b!1419269 () Bool)

(declare-fun e!905959 () List!14617)

(assert (=> b!1419269 (= e!905959 (ite c!233087 call!96532 (ite c!233083 call!96539 call!96531)))))

(declare-fun b!1419270 () Bool)

(assert (=> b!1419270 (= e!905959 (Cons!14551 (h!19952 (ite c!233087 call!96510 (ite c!233083 call!96531 call!96530))) (++!3814 (t!124252 (ite c!233087 call!96510 (ite c!233083 call!96531 call!96530))) (ite c!233087 call!96532 (ite c!233083 call!96539 call!96531)))))))

(declare-fun b!1419272 () Bool)

(assert (=> b!1419272 (= e!905958 (or (not (= (ite c!233087 call!96532 (ite c!233083 call!96539 call!96531)) Nil!14551)) (= lt!478789 (ite c!233087 call!96510 (ite c!233083 call!96531 call!96530)))))))

(declare-fun d!406662 () Bool)

(assert (=> d!406662 e!905958))

(declare-fun res!642691 () Bool)

(assert (=> d!406662 (=> (not res!642691) (not e!905958))))

(assert (=> d!406662 (= res!642691 (= (content!2151 lt!478789) ((_ map or) (content!2151 (ite c!233087 call!96510 (ite c!233083 call!96531 call!96530))) (content!2151 (ite c!233087 call!96532 (ite c!233083 call!96539 call!96531))))))))

(assert (=> d!406662 (= lt!478789 e!905959)))

(declare-fun c!233250 () Bool)

(assert (=> d!406662 (= c!233250 ((_ is Nil!14551) (ite c!233087 call!96510 (ite c!233083 call!96531 call!96530))))))

(assert (=> d!406662 (= (++!3814 (ite c!233087 call!96510 (ite c!233083 call!96531 call!96530)) (ite c!233087 call!96532 (ite c!233083 call!96539 call!96531))) lt!478789)))

(assert (= (and d!406662 c!233250) b!1419269))

(assert (= (and d!406662 (not c!233250)) b!1419270))

(assert (= (and d!406662 res!642691) b!1419271))

(assert (= (and b!1419271 res!642690) b!1419272))

(declare-fun m!1608525 () Bool)

(assert (=> b!1419271 m!1608525))

(declare-fun m!1608527 () Bool)

(assert (=> b!1419271 m!1608527))

(declare-fun m!1608529 () Bool)

(assert (=> b!1419271 m!1608529))

(declare-fun m!1608533 () Bool)

(assert (=> b!1419270 m!1608533))

(declare-fun m!1608535 () Bool)

(assert (=> d!406662 m!1608535))

(declare-fun m!1608537 () Bool)

(assert (=> d!406662 m!1608537))

(declare-fun m!1608539 () Bool)

(assert (=> d!406662 m!1608539))

(assert (=> bm!96511 d!406662))

(declare-fun d!406666 () Bool)

(declare-fun c!233251 () Bool)

(assert (=> d!406666 (= c!233251 ((_ is Cons!14553) (ite c!233087 Nil!14553 e!905322)))))

(declare-fun e!905960 () List!14617)

(assert (=> d!406666 (= (printList!663 (ite c!233087 Lexer!2207 (ite c!233083 lt!477729 lt!477725)) (ite c!233087 Nil!14553 e!905322)) e!905960)))

(declare-fun b!1419273 () Bool)

(assert (=> b!1419273 (= e!905960 (++!3814 (list!5733 (charsOf!1480 (h!19954 (ite c!233087 Nil!14553 e!905322)))) (printList!663 (ite c!233087 Lexer!2207 (ite c!233083 lt!477729 lt!477725)) (t!124254 (ite c!233087 Nil!14553 e!905322)))))))

(declare-fun b!1419274 () Bool)

(assert (=> b!1419274 (= e!905960 Nil!14551)))

(assert (= (and d!406666 c!233251) b!1419273))

(assert (= (and d!406666 (not c!233251)) b!1419274))

(declare-fun m!1608541 () Bool)

(assert (=> b!1419273 m!1608541))

(assert (=> b!1419273 m!1608541))

(declare-fun m!1608543 () Bool)

(assert (=> b!1419273 m!1608543))

(declare-fun m!1608545 () Bool)

(assert (=> b!1419273 m!1608545))

(assert (=> b!1419273 m!1608543))

(assert (=> b!1419273 m!1608545))

(declare-fun m!1608547 () Bool)

(assert (=> b!1419273 m!1608547))

(assert (=> bm!96496 d!406666))

(declare-fun d!406668 () Bool)

(assert (=> d!406668 (= (list!5733 call!96547) (list!5742 (c!233028 call!96547)))))

(declare-fun bs!339672 () Bool)

(assert (= bs!339672 d!406668))

(declare-fun m!1608549 () Bool)

(assert (=> bs!339672 m!1608549))

(assert (=> bm!96570 d!406668))

(declare-fun d!406670 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!98 (LexerInterface!2209 BalanceConc!9700 Int List!14618) Bool)

(assert (=> d!406670 (= (separableTokens!191 Lexer!2207 (tokens!1830 sep!3) (rules!11126 sep!3)) (tokensListTwoByTwoPredicateSeparable!98 Lexer!2207 (tokens!1830 sep!3) 0 (rules!11126 sep!3)))))

(declare-fun bs!339673 () Bool)

(assert (= bs!339673 d!406670))

(declare-fun m!1608551 () Bool)

(assert (=> bs!339673 m!1608551))

(assert (=> b!1418345 d!406670))

(declare-fun d!406672 () Bool)

(declare-fun lt!478790 () Bool)

(assert (=> d!406672 (= lt!478790 (isEmpty!8956 (list!5734 (tokens!1830 acc!229))))))

(assert (=> d!406672 (= lt!478790 (isEmpty!8955 (c!233029 (tokens!1830 acc!229))))))

(assert (=> d!406672 (= (isEmpty!8945 (tokens!1830 acc!229)) lt!478790)))

(declare-fun bs!339674 () Bool)

(assert (= bs!339674 d!406672))

(assert (=> bs!339674 m!1604961))

(assert (=> bs!339674 m!1604961))

(declare-fun m!1608553 () Bool)

(assert (=> bs!339674 m!1608553))

(declare-fun m!1608555 () Bool)

(assert (=> bs!339674 m!1608555))

(assert (=> b!1418246 d!406672))

(assert (=> b!1418220 d!406260))

(declare-fun d!406674 () Bool)

(assert (=> d!406674 (= (inv!19164 (tag!2797 (h!19953 (rules!11126 acc!229)))) (= (mod (str.len (value!81879 (tag!2797 (h!19953 (rules!11126 acc!229))))) 2) 0))))

(assert (=> b!1418358 d!406674))

(declare-fun d!406676 () Bool)

(declare-fun res!642692 () Bool)

(declare-fun e!905961 () Bool)

(assert (=> d!406676 (=> (not res!642692) (not e!905961))))

(assert (=> d!406676 (= res!642692 (semiInverseModEq!980 (toChars!3693 (transformation!2535 (h!19953 (rules!11126 acc!229)))) (toValue!3834 (transformation!2535 (h!19953 (rules!11126 acc!229))))))))

(assert (=> d!406676 (= (inv!19186 (transformation!2535 (h!19953 (rules!11126 acc!229)))) e!905961)))

(declare-fun b!1419275 () Bool)

(assert (=> b!1419275 (= e!905961 (equivClasses!939 (toChars!3693 (transformation!2535 (h!19953 (rules!11126 acc!229)))) (toValue!3834 (transformation!2535 (h!19953 (rules!11126 acc!229))))))))

(assert (= (and d!406676 res!642692) b!1419275))

(declare-fun m!1608557 () Bool)

(assert (=> d!406676 m!1608557))

(declare-fun m!1608559 () Bool)

(assert (=> b!1419275 m!1608559))

(assert (=> b!1418358 d!406676))

(declare-fun d!406678 () Bool)

(declare-fun res!642693 () Bool)

(declare-fun e!905962 () Bool)

(assert (=> d!406678 (=> (not res!642693) (not e!905962))))

(assert (=> d!406678 (= res!642693 (<= (size!12012 (list!5745 (xs!7607 (c!233029 (tokens!1830 acc!229))))) 512))))

(assert (=> d!406678 (= (inv!19178 (c!233029 (tokens!1830 acc!229))) e!905962)))

(declare-fun b!1419276 () Bool)

(declare-fun res!642694 () Bool)

(assert (=> b!1419276 (=> (not res!642694) (not e!905962))))

(assert (=> b!1419276 (= res!642694 (= (csize!9991 (c!233029 (tokens!1830 acc!229))) (size!12012 (list!5745 (xs!7607 (c!233029 (tokens!1830 acc!229)))))))))

(declare-fun b!1419277 () Bool)

(assert (=> b!1419277 (= e!905962 (and (> (csize!9991 (c!233029 (tokens!1830 acc!229))) 0) (<= (csize!9991 (c!233029 (tokens!1830 acc!229))) 512)))))

(assert (= (and d!406678 res!642693) b!1419276))

(assert (= (and b!1419276 res!642694) b!1419277))

(declare-fun m!1608561 () Bool)

(assert (=> d!406678 m!1608561))

(assert (=> d!406678 m!1608561))

(declare-fun m!1608563 () Bool)

(assert (=> d!406678 m!1608563))

(assert (=> b!1419276 m!1608561))

(assert (=> b!1419276 m!1608561))

(assert (=> b!1419276 m!1608563))

(assert (=> b!1418348 d!406678))

(declare-fun d!406680 () Bool)

(assert (=> d!406680 (= (list!5734 (ite c!233096 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384)))) (list!5741 (c!233029 (ite c!233096 (tokens!1830 acc!229) (tokens!1830 (v!22115 lt!477384))))))))

(declare-fun bs!339675 () Bool)

(assert (= bs!339675 d!406680))

(declare-fun m!1608565 () Bool)

(assert (=> bs!339675 m!1608565))

(assert (=> bm!96573 d!406680))

(declare-fun d!406682 () Bool)

(assert (=> d!406682 (= (separableTokens!191 Lexer!2207 (tokens!1830 acc!229) (rules!11126 acc!229)) (tokensListTwoByTwoPredicateSeparable!98 Lexer!2207 (tokens!1830 acc!229) 0 (rules!11126 acc!229)))))

(declare-fun bs!339676 () Bool)

(assert (= bs!339676 d!406682))

(declare-fun m!1608567 () Bool)

(assert (=> bs!339676 m!1608567))

(assert (=> b!1418342 d!406682))

(declare-fun d!406684 () Bool)

(declare-fun lt!478791 () BalanceConc!9698)

(assert (=> d!406684 (= (list!5733 lt!478791) (printList!663 Lexer!2207 (list!5734 (tokens!1830 acc!229))))))

(assert (=> d!406684 (= lt!478791 (printTailRec!645 Lexer!2207 (tokens!1830 acc!229) 0 (BalanceConc!9699 Empty!4879)))))

(assert (=> d!406684 (= (print!982 Lexer!2207 (tokens!1830 acc!229)) lt!478791)))

(declare-fun bs!339677 () Bool)

(assert (= bs!339677 d!406684))

(declare-fun m!1608569 () Bool)

(assert (=> bs!339677 m!1608569))

(assert (=> bs!339677 m!1604961))

(assert (=> bs!339677 m!1604961))

(declare-fun m!1608571 () Bool)

(assert (=> bs!339677 m!1608571))

(declare-fun m!1608573 () Bool)

(assert (=> bs!339677 m!1608573))

(assert (=> bm!96546 d!406684))

(declare-fun d!406686 () Bool)

(declare-fun res!642695 () Bool)

(declare-fun e!905963 () Bool)

(assert (=> d!406686 (=> (not res!642695) (not e!905963))))

(assert (=> d!406686 (= res!642695 (= (csize!9990 (c!233029 (tokens!1830 sep!3))) (+ (size!12018 (left!12441 (c!233029 (tokens!1830 sep!3)))) (size!12018 (right!12771 (c!233029 (tokens!1830 sep!3)))))))))

(assert (=> d!406686 (= (inv!19177 (c!233029 (tokens!1830 sep!3))) e!905963)))

(declare-fun b!1419278 () Bool)

(declare-fun res!642696 () Bool)

(assert (=> b!1419278 (=> (not res!642696) (not e!905963))))

(assert (=> b!1419278 (= res!642696 (and (not (= (left!12441 (c!233029 (tokens!1830 sep!3))) Empty!4880)) (not (= (right!12771 (c!233029 (tokens!1830 sep!3))) Empty!4880))))))

(declare-fun b!1419279 () Bool)

(declare-fun res!642697 () Bool)

(assert (=> b!1419279 (=> (not res!642697) (not e!905963))))

(assert (=> b!1419279 (= res!642697 (= (cheight!5091 (c!233029 (tokens!1830 sep!3))) (+ (max!0 (height!711 (left!12441 (c!233029 (tokens!1830 sep!3)))) (height!711 (right!12771 (c!233029 (tokens!1830 sep!3))))) 1)))))

(declare-fun b!1419280 () Bool)

(assert (=> b!1419280 (= e!905963 (<= 0 (cheight!5091 (c!233029 (tokens!1830 sep!3)))))))

(assert (= (and d!406686 res!642695) b!1419278))

(assert (= (and b!1419278 res!642696) b!1419279))

(assert (= (and b!1419279 res!642697) b!1419280))

(declare-fun m!1608575 () Bool)

(assert (=> d!406686 m!1608575))

(declare-fun m!1608577 () Bool)

(assert (=> d!406686 m!1608577))

(assert (=> b!1419279 m!1606799))

(assert (=> b!1419279 m!1606801))

(assert (=> b!1419279 m!1606799))

(assert (=> b!1419279 m!1606801))

(declare-fun m!1608579 () Bool)

(assert (=> b!1419279 m!1608579))

(assert (=> b!1418100 d!406686))

(declare-fun lt!478792 () List!14619)

(declare-fun e!905965 () Bool)

(declare-fun b!1419284 () Bool)

(assert (=> b!1419284 (= e!905965 (or (not (= lt!477740 Nil!14553)) (= lt!478792 lt!477752)))))

(declare-fun b!1419283 () Bool)

(declare-fun res!642698 () Bool)

(assert (=> b!1419283 (=> (not res!642698) (not e!905965))))

(assert (=> b!1419283 (= res!642698 (= (size!12012 lt!478792) (+ (size!12012 lt!477752) (size!12012 lt!477740))))))

(declare-fun b!1419281 () Bool)

(declare-fun e!905964 () List!14619)

(assert (=> b!1419281 (= e!905964 lt!477740)))

(declare-fun d!406688 () Bool)

(assert (=> d!406688 e!905965))

(declare-fun res!642699 () Bool)

(assert (=> d!406688 (=> (not res!642699) (not e!905965))))

(assert (=> d!406688 (= res!642699 (= (content!2150 lt!478792) ((_ map or) (content!2150 lt!477752) (content!2150 lt!477740))))))

(assert (=> d!406688 (= lt!478792 e!905964)))

(declare-fun c!233252 () Bool)

(assert (=> d!406688 (= c!233252 ((_ is Nil!14553) lt!477752))))

(assert (=> d!406688 (= (++!3813 lt!477752 lt!477740) lt!478792)))

(declare-fun b!1419282 () Bool)

(assert (=> b!1419282 (= e!905964 (Cons!14553 (h!19954 lt!477752) (++!3813 (t!124254 lt!477752) lt!477740)))))

(assert (= (and d!406688 c!233252) b!1419281))

(assert (= (and d!406688 (not c!233252)) b!1419282))

(assert (= (and d!406688 res!642699) b!1419283))

(assert (= (and b!1419283 res!642698) b!1419284))

(declare-fun m!1608581 () Bool)

(assert (=> b!1419283 m!1608581))

(declare-fun m!1608583 () Bool)

(assert (=> b!1419283 m!1608583))

(declare-fun m!1608585 () Bool)

(assert (=> b!1419283 m!1608585))

(declare-fun m!1608587 () Bool)

(assert (=> d!406688 m!1608587))

(declare-fun m!1608589 () Bool)

(assert (=> d!406688 m!1608589))

(declare-fun m!1608591 () Bool)

(assert (=> d!406688 m!1608591))

(declare-fun m!1608593 () Bool)

(assert (=> b!1419282 m!1608593))

(assert (=> b!1418230 d!406688))

(declare-fun d!406690 () Bool)

(declare-fun res!642704 () Bool)

(declare-fun e!905966 () Bool)

(assert (=> d!406690 (=> res!642704 e!905966)))

(assert (=> d!406690 (= res!642704 (not ((_ is Node!4881) (c!233030 objs!24))))))

(assert (=> d!406690 (= (isBalanced!1452 (c!233030 objs!24)) e!905966)))

(declare-fun b!1419285 () Bool)

(declare-fun e!905967 () Bool)

(assert (=> b!1419285 (= e!905967 (not (isEmpty!8947 (right!12772 (c!233030 objs!24)))))))

(declare-fun b!1419286 () Bool)

(declare-fun res!642705 () Bool)

(assert (=> b!1419286 (=> (not res!642705) (not e!905967))))

(assert (=> b!1419286 (= res!642705 (<= (- (height!710 (left!12442 (c!233030 objs!24))) (height!710 (right!12772 (c!233030 objs!24)))) 1))))

(declare-fun b!1419287 () Bool)

(declare-fun res!642700 () Bool)

(assert (=> b!1419287 (=> (not res!642700) (not e!905967))))

(assert (=> b!1419287 (= res!642700 (isBalanced!1452 (right!12772 (c!233030 objs!24))))))

(declare-fun b!1419288 () Bool)

(declare-fun res!642703 () Bool)

(assert (=> b!1419288 (=> (not res!642703) (not e!905967))))

(assert (=> b!1419288 (= res!642703 (isBalanced!1452 (left!12442 (c!233030 objs!24))))))

(declare-fun b!1419289 () Bool)

(declare-fun res!642702 () Bool)

(assert (=> b!1419289 (=> (not res!642702) (not e!905967))))

(assert (=> b!1419289 (= res!642702 (not (isEmpty!8947 (left!12442 (c!233030 objs!24)))))))

(declare-fun b!1419290 () Bool)

(assert (=> b!1419290 (= e!905966 e!905967)))

(declare-fun res!642701 () Bool)

(assert (=> b!1419290 (=> (not res!642701) (not e!905967))))

(assert (=> b!1419290 (= res!642701 (<= (- 1) (- (height!710 (left!12442 (c!233030 objs!24))) (height!710 (right!12772 (c!233030 objs!24))))))))

(assert (= (and d!406690 (not res!642704)) b!1419290))

(assert (= (and b!1419290 res!642701) b!1419286))

(assert (= (and b!1419286 res!642705) b!1419288))

(assert (= (and b!1419288 res!642703) b!1419287))

(assert (= (and b!1419287 res!642700) b!1419289))

(assert (= (and b!1419289 res!642702) b!1419285))

(assert (=> b!1419289 m!1605719))

(declare-fun m!1608595 () Bool)

(assert (=> b!1419285 m!1608595))

(assert (=> b!1419286 m!1607359))

(assert (=> b!1419286 m!1607361))

(assert (=> b!1419290 m!1607359))

(assert (=> b!1419290 m!1607361))

(declare-fun m!1608597 () Bool)

(assert (=> b!1419288 m!1608597))

(declare-fun m!1608599 () Bool)

(assert (=> b!1419287 m!1608599))

(assert (=> d!406032 d!406690))

(declare-fun e!905968 () Bool)

(declare-fun tp!402402 () Bool)

(declare-fun b!1419291 () Bool)

(declare-fun tp!402401 () Bool)

(assert (=> b!1419291 (= e!905968 (and (inv!19170 (left!12441 (left!12441 (c!233029 (tokens!1830 sep!3))))) tp!402402 (inv!19170 (right!12771 (left!12441 (c!233029 (tokens!1830 sep!3))))) tp!402401))))

(declare-fun b!1419293 () Bool)

(declare-fun e!905969 () Bool)

(declare-fun tp!402400 () Bool)

(assert (=> b!1419293 (= e!905969 tp!402400)))

(declare-fun b!1419292 () Bool)

(assert (=> b!1419292 (= e!905968 (and (inv!19187 (xs!7607 (left!12441 (c!233029 (tokens!1830 sep!3))))) e!905969))))

(assert (=> b!1418368 (= tp!402331 (and (inv!19170 (left!12441 (c!233029 (tokens!1830 sep!3)))) e!905968))))

(assert (= (and b!1418368 ((_ is Node!4880) (left!12441 (c!233029 (tokens!1830 sep!3))))) b!1419291))

(assert (= b!1419292 b!1419293))

(assert (= (and b!1418368 ((_ is Leaf!7344) (left!12441 (c!233029 (tokens!1830 sep!3))))) b!1419292))

(declare-fun m!1608601 () Bool)

(assert (=> b!1419291 m!1608601))

(declare-fun m!1608603 () Bool)

(assert (=> b!1419291 m!1608603))

(declare-fun m!1608605 () Bool)

(assert (=> b!1419292 m!1608605))

(assert (=> b!1418368 m!1605233))

(declare-fun e!905970 () Bool)

(declare-fun tp!402404 () Bool)

(declare-fun b!1419294 () Bool)

(declare-fun tp!402405 () Bool)

(assert (=> b!1419294 (= e!905970 (and (inv!19170 (left!12441 (right!12771 (c!233029 (tokens!1830 sep!3))))) tp!402405 (inv!19170 (right!12771 (right!12771 (c!233029 (tokens!1830 sep!3))))) tp!402404))))

(declare-fun b!1419296 () Bool)

(declare-fun e!905971 () Bool)

(declare-fun tp!402403 () Bool)

(assert (=> b!1419296 (= e!905971 tp!402403)))

(declare-fun b!1419295 () Bool)

(assert (=> b!1419295 (= e!905970 (and (inv!19187 (xs!7607 (right!12771 (c!233029 (tokens!1830 sep!3))))) e!905971))))

(assert (=> b!1418368 (= tp!402330 (and (inv!19170 (right!12771 (c!233029 (tokens!1830 sep!3)))) e!905970))))

(assert (= (and b!1418368 ((_ is Node!4880) (right!12771 (c!233029 (tokens!1830 sep!3))))) b!1419294))

(assert (= b!1419295 b!1419296))

(assert (= (and b!1418368 ((_ is Leaf!7344) (right!12771 (c!233029 (tokens!1830 sep!3))))) b!1419295))

(declare-fun m!1608607 () Bool)

(assert (=> b!1419294 m!1608607))

(declare-fun m!1608609 () Bool)

(assert (=> b!1419294 m!1608609))

(declare-fun m!1608611 () Bool)

(assert (=> b!1419295 m!1608611))

(assert (=> b!1418368 m!1605235))

(declare-fun tp!402407 () Bool)

(declare-fun e!905973 () Bool)

(declare-fun b!1419297 () Bool)

(declare-fun tp!402408 () Bool)

(assert (=> b!1419297 (= e!905973 (and (inv!19171 (left!12442 (left!12442 (c!233030 objs!24)))) tp!402407 (inv!19171 (right!12772 (left!12442 (c!233030 objs!24)))) tp!402408))))

(declare-fun b!1419299 () Bool)

(declare-fun e!905972 () Bool)

(declare-fun tp!402406 () Bool)

(assert (=> b!1419299 (= e!905972 tp!402406)))

(declare-fun b!1419298 () Bool)

(assert (=> b!1419298 (= e!905973 (and (inv!19188 (xs!7608 (left!12442 (c!233030 objs!24)))) e!905972))))

(assert (=> b!1418382 (= tp!402342 (and (inv!19171 (left!12442 (c!233030 objs!24))) e!905973))))

(assert (= (and b!1418382 ((_ is Node!4881) (left!12442 (c!233030 objs!24)))) b!1419297))

(assert (= b!1419298 b!1419299))

(assert (= (and b!1418382 ((_ is Leaf!7345) (left!12442 (c!233030 objs!24)))) b!1419298))

(declare-fun m!1608613 () Bool)

(assert (=> b!1419297 m!1608613))

(declare-fun m!1608615 () Bool)

(assert (=> b!1419297 m!1608615))

(declare-fun m!1608617 () Bool)

(assert (=> b!1419298 m!1608617))

(assert (=> b!1418382 m!1605243))

(declare-fun e!905975 () Bool)

(declare-fun tp!402411 () Bool)

(declare-fun b!1419300 () Bool)

(declare-fun tp!402410 () Bool)

(assert (=> b!1419300 (= e!905975 (and (inv!19171 (left!12442 (right!12772 (c!233030 objs!24)))) tp!402410 (inv!19171 (right!12772 (right!12772 (c!233030 objs!24)))) tp!402411))))

(declare-fun b!1419302 () Bool)

(declare-fun e!905974 () Bool)

(declare-fun tp!402409 () Bool)

(assert (=> b!1419302 (= e!905974 tp!402409)))

(declare-fun b!1419301 () Bool)

(assert (=> b!1419301 (= e!905975 (and (inv!19188 (xs!7608 (right!12772 (c!233030 objs!24)))) e!905974))))

(assert (=> b!1418382 (= tp!402343 (and (inv!19171 (right!12772 (c!233030 objs!24))) e!905975))))

(assert (= (and b!1418382 ((_ is Node!4881) (right!12772 (c!233030 objs!24)))) b!1419300))

(assert (= b!1419301 b!1419302))

(assert (= (and b!1418382 ((_ is Leaf!7345) (right!12772 (c!233030 objs!24)))) b!1419301))

(declare-fun m!1608619 () Bool)

(assert (=> b!1419300 m!1608619))

(declare-fun m!1608621 () Bool)

(assert (=> b!1419300 m!1608621))

(declare-fun m!1608623 () Bool)

(assert (=> b!1419301 m!1608623))

(assert (=> b!1418382 m!1605245))

(declare-fun b!1419316 () Bool)

(declare-fun b_free!34983 () Bool)

(declare-fun b_next!35687 () Bool)

(assert (=> b!1419316 (= b_free!34983 (not b_next!35687))))

(declare-fun tp!402420 () Bool)

(declare-fun b_and!94999 () Bool)

(assert (=> b!1419316 (= tp!402420 b_and!94999)))

(declare-fun b_free!34985 () Bool)

(declare-fun b_next!35689 () Bool)

(assert (=> b!1419316 (= b_free!34985 (not b_next!35689))))

(declare-fun tb!73577 () Bool)

(declare-fun t!124350 () Bool)

(assert (=> (and b!1419316 (= (toChars!3693 (transformation!2535 (rule!4298 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 sep!3)))))))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743)))))) t!124350) tb!73577))

(declare-fun result!89664 () Bool)

(assert (= result!89664 result!89628))

(assert (=> d!406326 t!124350))

(declare-fun tb!73579 () Bool)

(declare-fun t!124352 () Bool)

(assert (=> (and b!1419316 (= (toChars!3693 (transformation!2535 (rule!4298 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 sep!3)))))))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819)))))) t!124352) tb!73579))

(declare-fun result!89666 () Bool)

(assert (= result!89666 result!89638))

(assert (=> d!406484 t!124352))

(declare-fun tp!402418 () Bool)

(declare-fun b_and!95001 () Bool)

(assert (=> b!1419316 (= tp!402418 (and (=> t!124350 result!89664) (=> t!124352 result!89666) b_and!95001))))

(declare-fun b!1419314 () Bool)

(declare-fun e!905990 () Bool)

(declare-fun e!905993 () Bool)

(declare-fun inv!21 (TokenValue!2625) Bool)

(assert (=> b!1419314 (= e!905990 (and (inv!21 (value!81880 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 sep!3))))))) e!905993))))

(declare-fun b!1419315 () Bool)

(declare-fun e!905992 () Bool)

(assert (=> b!1419315 (= e!905993 (and (inv!19164 (tag!2797 (rule!4298 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 sep!3)))))))) (inv!19186 (transformation!2535 (rule!4298 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 sep!3)))))))) e!905992))))

(declare-fun e!905989 () Bool)

(assert (=> b!1418370 (= tp!402329 e!905989)))

(assert (=> b!1419316 (= e!905992 (and tp!402420 tp!402418))))

(declare-fun tp!402419 () Bool)

(declare-fun b!1419313 () Bool)

(declare-fun inv!19194 (Token!4732) Bool)

(assert (=> b!1419313 (= e!905989 (and (inv!19194 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 sep!3)))))) e!905990 tp!402419))))

(assert (= b!1419315 b!1419316))

(assert (= b!1419314 b!1419315))

(assert (= b!1419313 b!1419314))

(assert (= (and b!1418370 ((_ is Cons!14553) (innerList!4940 (xs!7607 (c!233029 (tokens!1830 sep!3)))))) b!1419313))

(declare-fun m!1608625 () Bool)

(assert (=> b!1419314 m!1608625))

(declare-fun m!1608627 () Bool)

(assert (=> b!1419315 m!1608627))

(declare-fun m!1608629 () Bool)

(assert (=> b!1419315 m!1608629))

(declare-fun m!1608631 () Bool)

(assert (=> b!1419313 m!1608631))

(declare-fun b!1419327 () Bool)

(declare-fun e!906000 () Bool)

(declare-fun tp!402428 () Bool)

(assert (=> b!1419327 (= e!906000 (and (inv!19170 (c!233029 (tokens!1830 (h!19955 (innerList!4941 (xs!7608 (c!233030 objs!24))))))) tp!402428))))

(declare-fun e!906001 () Bool)

(declare-fun tp!402427 () Bool)

(declare-fun b!1419326 () Bool)

(assert (=> b!1419326 (= e!906001 (and tp!402427 (inv!19172 (tokens!1830 (h!19955 (innerList!4941 (xs!7608 (c!233030 objs!24)))))) e!906000))))

(declare-fun e!906002 () Bool)

(declare-fun b!1419325 () Bool)

(declare-fun tp!402429 () Bool)

(assert (=> b!1419325 (= e!906002 (and (inv!19174 (h!19955 (innerList!4941 (xs!7608 (c!233030 objs!24))))) e!906001 tp!402429))))

(assert (=> b!1418384 (= tp!402341 e!906002)))

(assert (= b!1419326 b!1419327))

(assert (= b!1419325 b!1419326))

(assert (= (and b!1418384 ((_ is Cons!14554) (innerList!4941 (xs!7608 (c!233030 objs!24))))) b!1419325))

(declare-fun m!1608633 () Bool)

(assert (=> b!1419327 m!1608633))

(declare-fun m!1608635 () Bool)

(assert (=> b!1419326 m!1608635))

(declare-fun m!1608637 () Bool)

(assert (=> b!1419325 m!1608637))

(declare-fun b!1419330 () Bool)

(declare-fun b_free!34987 () Bool)

(declare-fun b_next!35691 () Bool)

(assert (=> b!1419330 (= b_free!34987 (not b_next!35691))))

(declare-fun tp!402432 () Bool)

(declare-fun b_and!95003 () Bool)

(assert (=> b!1419330 (= tp!402432 b_and!95003)))

(declare-fun b_free!34989 () Bool)

(declare-fun b_next!35693 () Bool)

(assert (=> b!1419330 (= b_free!34989 (not b_next!35693))))

(declare-fun tb!73581 () Bool)

(declare-fun t!124354 () Bool)

(assert (=> (and b!1419330 (= (toChars!3693 (transformation!2535 (h!19953 (t!124253 (rules!11126 acc!229))))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743)))))) t!124354) tb!73581))

(declare-fun result!89670 () Bool)

(assert (= result!89670 result!89628))

(assert (=> d!406326 t!124354))

(declare-fun t!124356 () Bool)

(declare-fun tb!73583 () Bool)

(assert (=> (and b!1419330 (= (toChars!3693 (transformation!2535 (h!19953 (t!124253 (rules!11126 acc!229))))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819)))))) t!124356) tb!73583))

(declare-fun result!89672 () Bool)

(assert (= result!89672 result!89638))

(assert (=> d!406484 t!124356))

(declare-fun tp!402430 () Bool)

(declare-fun b_and!95005 () Bool)

(assert (=> b!1419330 (= tp!402430 (and (=> t!124354 result!89670) (=> t!124356 result!89672) b_and!95005))))

(declare-fun e!906005 () Bool)

(assert (=> b!1419330 (= e!906005 (and tp!402432 tp!402430))))

(declare-fun b!1419329 () Bool)

(declare-fun e!906003 () Bool)

(assert (=> b!1419329 (= e!906003 (and (inv!19164 (tag!2797 (h!19953 (t!124253 (rules!11126 acc!229))))) (inv!19186 (transformation!2535 (h!19953 (t!124253 (rules!11126 acc!229))))) e!906005))))

(declare-fun b!1419328 () Bool)

(declare-fun e!906004 () Bool)

(declare-fun tp!402431 () Bool)

(assert (=> b!1419328 (= e!906004 (and e!906003 tp!402431))))

(assert (=> b!1418357 (= tp!402321 e!906004)))

(assert (= b!1419329 b!1419330))

(assert (= b!1419328 b!1419329))

(assert (= (and b!1418357 ((_ is Cons!14552) (t!124253 (rules!11126 acc!229)))) b!1419328))

(declare-fun m!1608639 () Bool)

(assert (=> b!1419329 m!1608639))

(declare-fun m!1608641 () Bool)

(assert (=> b!1419329 m!1608641))

(declare-fun b!1419333 () Bool)

(declare-fun b_free!34991 () Bool)

(declare-fun b_next!35695 () Bool)

(assert (=> b!1419333 (= b_free!34991 (not b_next!35695))))

(declare-fun tp!402435 () Bool)

(declare-fun b_and!95007 () Bool)

(assert (=> b!1419333 (= tp!402435 b_and!95007)))

(declare-fun b_free!34993 () Bool)

(declare-fun b_next!35697 () Bool)

(assert (=> b!1419333 (= b_free!34993 (not b_next!35697))))

(declare-fun t!124358 () Bool)

(declare-fun tb!73585 () Bool)

(assert (=> (and b!1419333 (= (toChars!3693 (transformation!2535 (h!19953 (t!124253 (rules!11126 sep!3))))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743)))))) t!124358) tb!73585))

(declare-fun result!89674 () Bool)

(assert (= result!89674 result!89628))

(assert (=> d!406326 t!124358))

(declare-fun t!124360 () Bool)

(declare-fun tb!73587 () Bool)

(assert (=> (and b!1419333 (= (toChars!3693 (transformation!2535 (h!19953 (t!124253 (rules!11126 sep!3))))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819)))))) t!124360) tb!73587))

(declare-fun result!89676 () Bool)

(assert (= result!89676 result!89638))

(assert (=> d!406484 t!124360))

(declare-fun b_and!95009 () Bool)

(declare-fun tp!402433 () Bool)

(assert (=> b!1419333 (= tp!402433 (and (=> t!124358 result!89674) (=> t!124360 result!89676) b_and!95009))))

(declare-fun e!906009 () Bool)

(assert (=> b!1419333 (= e!906009 (and tp!402435 tp!402433))))

(declare-fun b!1419332 () Bool)

(declare-fun e!906007 () Bool)

(assert (=> b!1419332 (= e!906007 (and (inv!19164 (tag!2797 (h!19953 (t!124253 (rules!11126 sep!3))))) (inv!19186 (transformation!2535 (h!19953 (t!124253 (rules!11126 sep!3))))) e!906009))))

(declare-fun b!1419331 () Bool)

(declare-fun e!906008 () Bool)

(declare-fun tp!402434 () Bool)

(assert (=> b!1419331 (= e!906008 (and e!906007 tp!402434))))

(assert (=> b!1418371 (= tp!402333 e!906008)))

(assert (= b!1419332 b!1419333))

(assert (= b!1419331 b!1419332))

(assert (= (and b!1418371 ((_ is Cons!14552) (t!124253 (rules!11126 sep!3)))) b!1419331))

(declare-fun m!1608643 () Bool)

(assert (=> b!1419332 m!1608643))

(declare-fun m!1608645 () Bool)

(assert (=> b!1419332 m!1608645))

(declare-fun b!1419334 () Bool)

(declare-fun tp!402437 () Bool)

(declare-fun tp!402438 () Bool)

(declare-fun e!906011 () Bool)

(assert (=> b!1419334 (= e!906011 (and (inv!19170 (left!12441 (left!12441 (c!233029 (tokens!1830 acc!229))))) tp!402438 (inv!19170 (right!12771 (left!12441 (c!233029 (tokens!1830 acc!229))))) tp!402437))))

(declare-fun b!1419336 () Bool)

(declare-fun e!906012 () Bool)

(declare-fun tp!402436 () Bool)

(assert (=> b!1419336 (= e!906012 tp!402436)))

(declare-fun b!1419335 () Bool)

(assert (=> b!1419335 (= e!906011 (and (inv!19187 (xs!7607 (left!12441 (c!233029 (tokens!1830 acc!229))))) e!906012))))

(assert (=> b!1418385 (= tp!402346 (and (inv!19170 (left!12441 (c!233029 (tokens!1830 acc!229)))) e!906011))))

(assert (= (and b!1418385 ((_ is Node!4880) (left!12441 (c!233029 (tokens!1830 acc!229))))) b!1419334))

(assert (= b!1419335 b!1419336))

(assert (= (and b!1418385 ((_ is Leaf!7344) (left!12441 (c!233029 (tokens!1830 acc!229))))) b!1419335))

(declare-fun m!1608647 () Bool)

(assert (=> b!1419334 m!1608647))

(declare-fun m!1608649 () Bool)

(assert (=> b!1419334 m!1608649))

(declare-fun m!1608651 () Bool)

(assert (=> b!1419335 m!1608651))

(assert (=> b!1418385 m!1605249))

(declare-fun tp!402440 () Bool)

(declare-fun tp!402441 () Bool)

(declare-fun b!1419337 () Bool)

(declare-fun e!906013 () Bool)

(assert (=> b!1419337 (= e!906013 (and (inv!19170 (left!12441 (right!12771 (c!233029 (tokens!1830 acc!229))))) tp!402441 (inv!19170 (right!12771 (right!12771 (c!233029 (tokens!1830 acc!229))))) tp!402440))))

(declare-fun b!1419339 () Bool)

(declare-fun e!906014 () Bool)

(declare-fun tp!402439 () Bool)

(assert (=> b!1419339 (= e!906014 tp!402439)))

(declare-fun b!1419338 () Bool)

(assert (=> b!1419338 (= e!906013 (and (inv!19187 (xs!7607 (right!12771 (c!233029 (tokens!1830 acc!229))))) e!906014))))

(assert (=> b!1418385 (= tp!402345 (and (inv!19170 (right!12771 (c!233029 (tokens!1830 acc!229)))) e!906013))))

(assert (= (and b!1418385 ((_ is Node!4880) (right!12771 (c!233029 (tokens!1830 acc!229))))) b!1419337))

(assert (= b!1419338 b!1419339))

(assert (= (and b!1418385 ((_ is Leaf!7344) (right!12771 (c!233029 (tokens!1830 acc!229))))) b!1419338))

(declare-fun m!1608653 () Bool)

(assert (=> b!1419337 m!1608653))

(declare-fun m!1608655 () Bool)

(assert (=> b!1419337 m!1608655))

(declare-fun m!1608657 () Bool)

(assert (=> b!1419338 m!1608657))

(assert (=> b!1418385 m!1605251))

(declare-fun b!1419343 () Bool)

(declare-fun b_free!34995 () Bool)

(declare-fun b_next!35699 () Bool)

(assert (=> b!1419343 (= b_free!34995 (not b_next!35699))))

(declare-fun tp!402444 () Bool)

(declare-fun b_and!95011 () Bool)

(assert (=> b!1419343 (= tp!402444 b_and!95011)))

(declare-fun b_free!34997 () Bool)

(declare-fun b_next!35701 () Bool)

(assert (=> b!1419343 (= b_free!34997 (not b_next!35701))))

(declare-fun t!124362 () Bool)

(declare-fun tb!73589 () Bool)

(assert (=> (and b!1419343 (= (toChars!3693 (transformation!2535 (rule!4298 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 acc!229)))))))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233087 (h!19954 lt!477747) (h!19954 lt!477743)))))) t!124362) tb!73589))

(declare-fun result!89678 () Bool)

(assert (= result!89678 result!89628))

(assert (=> d!406326 t!124362))

(declare-fun t!124364 () Bool)

(declare-fun tb!73591 () Bool)

(assert (=> (and b!1419343 (= (toChars!3693 (transformation!2535 (rule!4298 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 acc!229)))))))) (toChars!3693 (transformation!2535 (rule!4298 (ite c!233096 (h!19954 lt!477823) (h!19954 lt!477819)))))) t!124364) tb!73591))

(declare-fun result!89680 () Bool)

(assert (= result!89680 result!89638))

(assert (=> d!406484 t!124364))

(declare-fun b_and!95013 () Bool)

(declare-fun tp!402442 () Bool)

(assert (=> b!1419343 (= tp!402442 (and (=> t!124362 result!89678) (=> t!124364 result!89680) b_and!95013))))

(declare-fun b!1419341 () Bool)

(declare-fun e!906017 () Bool)

(declare-fun e!906020 () Bool)

(assert (=> b!1419341 (= e!906017 (and (inv!21 (value!81880 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 acc!229))))))) e!906020))))

(declare-fun b!1419342 () Bool)

(declare-fun e!906019 () Bool)

(assert (=> b!1419342 (= e!906020 (and (inv!19164 (tag!2797 (rule!4298 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 acc!229)))))))) (inv!19186 (transformation!2535 (rule!4298 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 acc!229)))))))) e!906019))))

(declare-fun e!906016 () Bool)

(assert (=> b!1418387 (= tp!402344 e!906016)))

(assert (=> b!1419343 (= e!906019 (and tp!402444 tp!402442))))

(declare-fun tp!402443 () Bool)

(declare-fun b!1419340 () Bool)

(assert (=> b!1419340 (= e!906016 (and (inv!19194 (h!19954 (innerList!4940 (xs!7607 (c!233029 (tokens!1830 acc!229)))))) e!906017 tp!402443))))

(assert (= b!1419342 b!1419343))

(assert (= b!1419341 b!1419342))

(assert (= b!1419340 b!1419341))

(assert (= (and b!1418387 ((_ is Cons!14553) (innerList!4940 (xs!7607 (c!233029 (tokens!1830 acc!229)))))) b!1419340))

(declare-fun m!1608659 () Bool)

(assert (=> b!1419341 m!1608659))

(declare-fun m!1608661 () Bool)

(assert (=> b!1419342 m!1608661))

(declare-fun m!1608663 () Bool)

(assert (=> b!1419342 m!1608663))

(declare-fun m!1608665 () Bool)

(assert (=> b!1419340 m!1608665))

(declare-fun b_lambda!44625 () Bool)

(assert (= b_lambda!44617 (or start!130352 b_lambda!44625)))

(declare-fun bs!339678 () Bool)

(declare-fun d!406692 () Bool)

(assert (= bs!339678 (and d!406692 start!130352)))

(assert (=> bs!339678 (= (dynLambda!6728 lambda!62611 (h!19955 (list!5735 objs!24))) (usesJsonRules!0 (h!19955 (list!5735 objs!24))))))

(declare-fun m!1608667 () Bool)

(assert (=> bs!339678 m!1608667))

(assert (=> b!1419002 d!406692))

(check-sat (not b!1419060) (not b!1418550) (not b!1419143) (not b!1418993) (not bm!96618) (not b!1418582) b_and!94963 (not d!406112) (not d!406398) (not b!1418724) (not b!1419291) (not b!1419236) (not d!406688) (not b!1418554) (not b!1419342) (not b_next!35699) (not b!1419285) (not b!1419335) (not d!406434) (not b!1418574) (not b!1419025) (not d!406604) (not d!406670) (not d!406408) (not d!406200) (not d!406310) (not d!406386) (not b!1418935) (not b_next!35687) (not b!1418932) (not b!1419059) (not d!406378) (not d!406538) b_and!95013 (not b!1418991) (not d!406528) (not b!1418931) (not b!1418773) (not d!406644) (not d!406686) (not b!1418667) b_and!95007 (not d!406608) (not b!1419270) (not b!1419258) (not b!1418486) (not b!1419235) (not d!406450) (not b!1419013) (not b!1418658) b_and!95009 (not b!1419331) (not b!1419057) (not d!406486) (not b!1418844) (not b!1418755) (not b!1418761) (not b!1419099) (not b!1419334) (not b!1419288) (not d!406204) (not d!406490) (not b!1419283) (not d!406594) (not b!1419073) (not d!406170) (not b!1418983) (not b!1418723) (not d!406382) (not b!1419286) (not b!1419097) b_and!95011 (not b!1418536) (not d!406652) (not d!406312) (not b!1419327) (not b!1419083) (not b!1418573) (not d!406166) (not b!1419089) (not b!1418635) (not b!1419168) (not b!1419227) (not d!406332) (not b!1419053) (not d!406526) (not b!1419293) (not b!1418861) (not b!1419026) (not b!1419296) (not b!1419294) (not d!406602) (not b_next!35691) (not d!406146) (not b_lambda!44621) (not b!1418770) (not b!1418862) (not b!1419275) (not b!1418936) (not d!406610) (not d!406326) (not d!406282) (not b!1419069) (not b!1418951) (not d!406390) (not b!1419021) (not d!406542) (not d!406334) (not tb!73557) (not d!406370) (not b!1418839) (not bm!96617) (not b_next!35665) (not b!1419276) (not bs!339678) (not d!406600) (not d!406648) (not d!406422) (not b!1419058) (not b!1418899) (not b!1419329) (not b!1419170) (not b!1418767) (not b!1418603) (not d!406216) (not d!406676) (not d!406118) (not b!1418529) (not b!1418581) (not b!1419301) (not d!406396) (not b!1418810) (not d!406254) (not d!406678) (not b!1418759) (not d!406430) (not b!1418677) (not d!406462) (not b!1419340) (not b!1418822) (not b!1418385) (not b!1419332) (not d!406250) (not b!1418551) (not b!1418820) (not b_next!35669) b_and!95003 (not b!1418949) (not b!1418368) (not d!406384) (not b!1419019) (not b!1419015) (not b!1419014) (not b!1418697) (not d!406256) (not d!406280) (not b!1418769) (not b_next!35663) (not b!1419160) (not b!1418651) (not b!1419256) (not b!1418827) (not d!406424) (not b!1418938) (not d!406532) (not d!406188) (not b!1419141) (not b!1418636) (not d!406264) (not d!406470) (not b!1418965) (not b!1419159) (not b!1418717) (not d!406168) (not b!1418997) (not b!1418528) (not b!1418819) (not d!406246) (not d!406432) (not d!406368) (not b!1418696) (not d!406320) (not b!1419169) (not b_lambda!44625) (not d!406346) (not b!1418481) (not b!1419016) (not b_lambda!44615) (not d!406460) (not b!1418860) (not d!406654) (not d!406266) (not b!1418865) (not d!406406) (not b!1419328) (not d!406456) (not b!1419054) (not b!1419341) (not b!1418863) (not d!406438) (not b!1418652) (not d!406274) (not b!1419067) (not b!1418489) (not b!1419037) (not d!406180) (not d!406400) (not d!406428) (not b!1419279) (not d!406662) (not d!406466) b_and!94959 (not b!1419035) (not b!1418829) (not b!1419244) (not b!1418808) (not b!1419018) (not b!1419336) (not b!1419245) (not d!406444) (not d!406278) (not b!1419314) (not b!1418996) (not b!1419158) (not b_next!35667) (not b!1418811) (not b!1419247) (not d!406536) (not b!1419315) (not d!406494) (not d!406194) (not b!1419290) (not d!406348) (not b!1419068) (not b!1419313) (not b!1418985) (not b!1418986) (not b!1418840) (not b!1419084) (not b!1419022) (not b!1418900) (not d!406360) (not b!1419297) (not d!406440) (not b!1419337) (not b!1419091) (not d!406498) (not d!406682) (not b!1418758) (not d!406668) (not d!406328) (not b!1419017) (not d!406446) (not d!406592) (not b!1419299) (not b!1418933) (not b!1419070) (not b!1418650) (not b_next!35697) (not b!1418963) (not b!1418657) (not d!406152) (not b!1418842) (not d!406306) (not b!1418898) (not b!1418577) (not b!1419085) (not b!1418967) (not b!1418837) (not d!406578) (not d!406172) (not b!1419295) (not b!1418984) b_and!95001 (not b!1419287) (not b!1418553) (not b!1419282) (not tb!73549) (not b_next!35693) (not b_next!35689) (not b!1418939) (not b!1419248) (not d!406162) (not d!406258) (not b!1419072) (not d!406248) (not b!1419302) (not d!406596) (not b!1419271) (not d!406374) (not d!406458) (not b!1418555) (not d!406590) (not b!1419292) (not d!406642) (not b!1418817) (not d!406530) (not b!1419326) (not b!1419228) (not b!1419063) (not b!1418846) (not b!1418830) b_and!94999 (not b!1419339) b_and!94979 (not b!1418482) (not b!1418382) (not d!406672) (not d!406144) (not b!1419325) (not d!406684) (not b!1418604) (not b!1419300) b_and!95005 (not d!406464) (not b!1418487) (not d!406452) (not d!406222) (not b!1418756) (not d!406598) (not b_next!35701) (not b!1418807) (not d!406680) (not b!1418781) (not b!1419233) (not b_next!35695) (not d!406436) (not d!406524) (not d!406212) (not b!1419338) (not b!1418572) (not b!1419246) (not b!1418552) (not d!406660) (not d!406584) (not b!1418637) (not b!1418484) (not b!1419086) b_and!94981 (not b!1419298) (not d!406356) (not b!1418952) (not b!1419062) (not b!1418864) (not d!406484) (not d!406650) (not b!1418774) (not d!406372) (not b!1418638) (not b!1419096) (not b!1419249) (not b!1419289) (not d!406376) (not b!1419003) (not b!1418966) (not d!406394) (not b!1418754) (not b!1418649) (not b!1419092) (not b!1419061) (not d!406646) (not b!1419273) (not b!1418714) (not d!406454) (not b!1418534) (not b!1419172) (not b!1419171))
(check-sat b_and!95007 b_and!95009 b_and!95011 (not b_next!35691) (not b_next!35665) (not b_next!35663) b_and!94959 (not b_next!35667) (not b_next!35697) b_and!95001 (not b_next!35695) b_and!94981 b_and!94963 (not b_next!35699) (not b_next!35687) b_and!95013 (not b_next!35669) b_and!95003 (not b_next!35693) (not b_next!35689) b_and!94999 b_and!94979 b_and!95005 (not b_next!35701))
