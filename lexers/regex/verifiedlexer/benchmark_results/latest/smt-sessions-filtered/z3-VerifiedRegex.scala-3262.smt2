; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187914 () Bool)

(assert start!187914)

(declare-fun b!1874758 () Bool)

(declare-fun b_free!52105 () Bool)

(declare-fun b_next!52809 () Bool)

(assert (=> b!1874758 (= b_free!52105 (not b_next!52809))))

(declare-fun tp!534216 () Bool)

(declare-fun b_and!144391 () Bool)

(assert (=> b!1874758 (= tp!534216 b_and!144391)))

(declare-fun b_free!52107 () Bool)

(declare-fun b_next!52811 () Bool)

(assert (=> b!1874758 (= b_free!52107 (not b_next!52811))))

(declare-fun tp!534212 () Bool)

(declare-fun b_and!144393 () Bool)

(assert (=> b!1874758 (= tp!534212 b_and!144393)))

(declare-fun tp!534214 () Bool)

(declare-fun e!1196318 () Bool)

(declare-fun e!1196320 () Bool)

(declare-fun b!1874755 () Bool)

(declare-datatypes ((List!20919 0))(
  ( (Nil!20837) (Cons!20837 (h!26238 (_ BitVec 16)) (t!173136 List!20919)) )
))
(declare-datatypes ((TokenValue!3820 0))(
  ( (FloatLiteralValue!7640 (text!27185 List!20919)) (TokenValueExt!3819 (__x!13078 Int)) (Broken!19100 (value!116433 List!20919)) (Object!3901) (End!3820) (Def!3820) (Underscore!3820) (Match!3820) (Else!3820) (Error!3820) (Case!3820) (If!3820) (Extends!3820) (Abstract!3820) (Class!3820) (Val!3820) (DelimiterValue!7640 (del!3880 List!20919)) (KeywordValue!3826 (value!116434 List!20919)) (CommentValue!7640 (value!116435 List!20919)) (WhitespaceValue!7640 (value!116436 List!20919)) (IndentationValue!3820 (value!116437 List!20919)) (String!24049) (Int32!3820) (Broken!19101 (value!116438 List!20919)) (Boolean!3821) (Unit!35365) (OperatorValue!3823 (op!3880 List!20919)) (IdentifierValue!7640 (value!116439 List!20919)) (IdentifierValue!7641 (value!116440 List!20919)) (WhitespaceValue!7641 (value!116441 List!20919)) (True!7640) (False!7640) (Broken!19102 (value!116442 List!20919)) (Broken!19103 (value!116443 List!20919)) (True!7641) (RightBrace!3820) (RightBracket!3820) (Colon!3820) (Null!3820) (Comma!3820) (LeftBracket!3820) (False!7641) (LeftBrace!3820) (ImaginaryLiteralValue!3820 (text!27186 List!20919)) (StringLiteralValue!11460 (value!116444 List!20919)) (EOFValue!3820 (value!116445 List!20919)) (IdentValue!3820 (value!116446 List!20919)) (DelimiterValue!7641 (value!116447 List!20919)) (DedentValue!3820 (value!116448 List!20919)) (NewLineValue!3820 (value!116449 List!20919)) (IntegerValue!11460 (value!116450 (_ BitVec 32)) (text!27187 List!20919)) (IntegerValue!11461 (value!116451 Int) (text!27188 List!20919)) (Times!3820) (Or!3820) (Equal!3820) (Minus!3820) (Broken!19104 (value!116452 List!20919)) (And!3820) (Div!3820) (LessEqual!3820) (Mod!3820) (Concat!8913) (Not!3820) (Plus!3820) (SpaceValue!3820 (value!116453 List!20919)) (IntegerValue!11462 (value!116454 Int) (text!27189 List!20919)) (StringLiteralValue!11461 (text!27190 List!20919)) (FloatLiteralValue!7641 (text!27191 List!20919)) (BytesLiteralValue!3820 (value!116455 List!20919)) (CommentValue!7641 (value!116456 List!20919)) (StringLiteralValue!11462 (value!116457 List!20919)) (ErrorTokenValue!3820 (msg!3881 List!20919)) )
))
(declare-datatypes ((C!10344 0))(
  ( (C!10345 (val!6060 Int)) )
))
(declare-datatypes ((Regex!5093 0))(
  ( (ElementMatch!5093 (c!305450 C!10344)) (Concat!8914 (regOne!10698 Regex!5093) (regTwo!10698 Regex!5093)) (EmptyExpr!5093) (Star!5093 (reg!5422 Regex!5093)) (EmptyLang!5093) (Union!5093 (regOne!10699 Regex!5093) (regTwo!10699 Regex!5093)) )
))
(declare-datatypes ((List!20920 0))(
  ( (Nil!20838) (Cons!20838 (h!26239 C!10344) (t!173137 List!20920)) )
))
(declare-datatypes ((IArray!13799 0))(
  ( (IArray!13800 (innerList!6957 List!20920)) )
))
(declare-datatypes ((Conc!6897 0))(
  ( (Node!6897 (left!16745 Conc!6897) (right!17075 Conc!6897) (csize!14024 Int) (cheight!7108 Int)) (Leaf!10160 (xs!9781 IArray!13799) (csize!14025 Int)) (Empty!6897) )
))
(declare-datatypes ((BalanceConc!13610 0))(
  ( (BalanceConc!13611 (c!305451 Conc!6897)) )
))
(declare-datatypes ((TokenValueInjection!7224 0))(
  ( (TokenValueInjection!7225 (toValue!5281 Int) (toChars!5140 Int)) )
))
(declare-datatypes ((String!24050 0))(
  ( (String!24051 (value!116458 String)) )
))
(declare-datatypes ((Rule!7168 0))(
  ( (Rule!7169 (regex!3684 Regex!5093) (tag!4098 String!24050) (isSeparator!3684 Bool) (transformation!3684 TokenValueInjection!7224)) )
))
(declare-datatypes ((Token!6920 0))(
  ( (Token!6921 (value!116459 TokenValue!3820) (rule!5877 Rule!7168) (size!16531 Int) (originalCharacters!4491 List!20920)) )
))
(declare-fun separatorToken!84 () Token!6920)

(declare-fun inv!27652 (String!24050) Bool)

(declare-fun inv!27657 (TokenValueInjection!7224) Bool)

(assert (=> b!1874755 (= e!1196318 (and tp!534214 (inv!27652 (tag!4098 (rule!5877 separatorToken!84))) (inv!27657 (transformation!3684 (rule!5877 separatorToken!84))) e!1196320))))

(declare-fun res!838479 () Bool)

(declare-fun e!1196317 () Bool)

(assert (=> start!187914 (=> (not res!838479) (not e!1196317))))

(declare-datatypes ((LexerInterface!3306 0))(
  ( (LexerInterfaceExt!3303 (__x!13079 Int)) (Lexer!3304) )
))
(declare-fun thiss!13718 () LexerInterface!3306)

(declare-fun from!845 () Int)

(get-info :version)

(assert (=> start!187914 (= res!838479 (and ((_ is Lexer!3304) thiss!13718) (>= from!845 0)))))

(assert (=> start!187914 e!1196317))

(assert (=> start!187914 true))

(declare-datatypes ((List!20921 0))(
  ( (Nil!20839) (Cons!20839 (h!26240 Token!6920) (t!173138 List!20921)) )
))
(declare-datatypes ((IArray!13801 0))(
  ( (IArray!13802 (innerList!6958 List!20921)) )
))
(declare-datatypes ((Conc!6898 0))(
  ( (Node!6898 (left!16746 Conc!6898) (right!17076 Conc!6898) (csize!14026 Int) (cheight!7109 Int)) (Leaf!10161 (xs!9782 IArray!13801) (csize!14027 Int)) (Empty!6898) )
))
(declare-datatypes ((BalanceConc!13612 0))(
  ( (BalanceConc!13613 (c!305452 Conc!6898)) )
))
(declare-fun acc!408 () BalanceConc!13612)

(declare-fun e!1196321 () Bool)

(declare-fun inv!27658 (BalanceConc!13612) Bool)

(assert (=> start!187914 (and (inv!27658 acc!408) e!1196321)))

(declare-fun v!6352 () BalanceConc!13612)

(declare-fun e!1196316 () Bool)

(assert (=> start!187914 (and (inv!27658 v!6352) e!1196316)))

(declare-fun e!1196314 () Bool)

(declare-fun inv!27659 (Token!6920) Bool)

(assert (=> start!187914 (and (inv!27659 separatorToken!84) e!1196314)))

(declare-fun b!1874756 () Bool)

(declare-fun e!1196313 () Bool)

(assert (=> b!1874756 (= e!1196317 e!1196313)))

(declare-fun res!838478 () Bool)

(assert (=> b!1874756 (=> (not res!838478) (not e!1196313))))

(declare-fun lt!720054 () Int)

(assert (=> b!1874756 (= res!838478 (and (<= from!845 lt!720054) (isSeparator!3684 (rule!5877 separatorToken!84)) (>= from!845 lt!720054)))))

(declare-fun size!16532 (BalanceConc!13612) Int)

(assert (=> b!1874756 (= lt!720054 (size!16532 v!6352))))

(declare-fun b!1874757 () Bool)

(declare-fun tp!534215 () Bool)

(declare-fun inv!27660 (Conc!6898) Bool)

(assert (=> b!1874757 (= e!1196316 (and (inv!27660 (c!305452 v!6352)) tp!534215))))

(assert (=> b!1874758 (= e!1196320 (and tp!534216 tp!534212))))

(declare-fun b!1874759 () Bool)

(declare-fun tp!534217 () Bool)

(assert (=> b!1874759 (= e!1196321 (and (inv!27660 (c!305452 acc!408)) tp!534217))))

(declare-fun b!1874760 () Bool)

(declare-fun tp!534213 () Bool)

(declare-fun inv!21 (TokenValue!3820) Bool)

(assert (=> b!1874760 (= e!1196314 (and (inv!21 (value!116459 separatorToken!84)) e!1196318 tp!534213))))

(declare-fun b!1874761 () Bool)

(assert (=> b!1874761 (= e!1196313 false)))

(declare-fun lt!720053 () List!20921)

(declare-fun drop!1004 (List!20921 Int) List!20921)

(declare-fun list!8498 (BalanceConc!13612) List!20921)

(assert (=> b!1874761 (= lt!720053 (drop!1004 (list!8498 v!6352) from!845))))

(declare-fun lt!720055 () List!20921)

(assert (=> b!1874761 (= lt!720055 (list!8498 acc!408))))

(assert (= (and start!187914 res!838479) b!1874756))

(assert (= (and b!1874756 res!838478) b!1874761))

(assert (= start!187914 b!1874759))

(assert (= start!187914 b!1874757))

(assert (= b!1874755 b!1874758))

(assert (= b!1874760 b!1874755))

(assert (= start!187914 b!1874760))

(declare-fun m!2299611 () Bool)

(assert (=> start!187914 m!2299611))

(declare-fun m!2299613 () Bool)

(assert (=> start!187914 m!2299613))

(declare-fun m!2299615 () Bool)

(assert (=> start!187914 m!2299615))

(declare-fun m!2299617 () Bool)

(assert (=> b!1874760 m!2299617))

(declare-fun m!2299619 () Bool)

(assert (=> b!1874761 m!2299619))

(assert (=> b!1874761 m!2299619))

(declare-fun m!2299621 () Bool)

(assert (=> b!1874761 m!2299621))

(declare-fun m!2299623 () Bool)

(assert (=> b!1874761 m!2299623))

(declare-fun m!2299625 () Bool)

(assert (=> b!1874759 m!2299625))

(declare-fun m!2299627 () Bool)

(assert (=> b!1874755 m!2299627))

(declare-fun m!2299629 () Bool)

(assert (=> b!1874755 m!2299629))

(declare-fun m!2299631 () Bool)

(assert (=> b!1874756 m!2299631))

(declare-fun m!2299633 () Bool)

(assert (=> b!1874757 m!2299633))

(check-sat b_and!144393 (not start!187914) (not b!1874756) b_and!144391 (not b!1874759) (not b!1874760) (not b_next!52811) (not b_next!52809) (not b!1874761) (not b!1874755) (not b!1874757))
(check-sat b_and!144393 b_and!144391 (not b_next!52809) (not b_next!52811))
