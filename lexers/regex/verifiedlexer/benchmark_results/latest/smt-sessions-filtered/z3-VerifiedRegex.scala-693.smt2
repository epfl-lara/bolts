; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27250 () Bool)

(assert start!27250)

(declare-fun b!255009 () Bool)

(declare-fun b_free!9545 () Bool)

(declare-fun b_next!9545 () Bool)

(assert (=> b!255009 (= b_free!9545 (not b_next!9545))))

(declare-fun tp!98533 () Bool)

(declare-fun b_and!19477 () Bool)

(assert (=> b!255009 (= tp!98533 b_and!19477)))

(declare-fun b_free!9547 () Bool)

(declare-fun b_next!9547 () Bool)

(assert (=> b!255009 (= b_free!9547 (not b_next!9547))))

(declare-fun tp!98536 () Bool)

(declare-fun b_and!19479 () Bool)

(assert (=> b!255009 (= tp!98536 b_and!19479)))

(declare-fun b!255007 () Bool)

(declare-fun b_free!9549 () Bool)

(declare-fun b_next!9549 () Bool)

(assert (=> b!255007 (= b_free!9549 (not b_next!9549))))

(declare-fun tp!98540 () Bool)

(declare-fun b_and!19481 () Bool)

(assert (=> b!255007 (= tp!98540 b_and!19481)))

(declare-fun b_free!9551 () Bool)

(declare-fun b_next!9551 () Bool)

(assert (=> b!255007 (= b_free!9551 (not b_next!9551))))

(declare-fun tp!98534 () Bool)

(declare-fun b_and!19483 () Bool)

(assert (=> b!255007 (= tp!98534 b_and!19483)))

(declare-fun b!255001 () Bool)

(declare-fun b_free!9553 () Bool)

(declare-fun b_next!9553 () Bool)

(assert (=> b!255001 (= b_free!9553 (not b_next!9553))))

(declare-fun tp!98537 () Bool)

(declare-fun b_and!19485 () Bool)

(assert (=> b!255001 (= tp!98537 b_and!19485)))

(declare-fun b_free!9555 () Bool)

(declare-fun b_next!9555 () Bool)

(assert (=> b!255001 (= b_free!9555 (not b_next!9555))))

(declare-fun tp!98543 () Bool)

(declare-fun b_and!19487 () Bool)

(assert (=> b!255001 (= tp!98543 b_and!19487)))

(declare-fun b!254995 () Bool)

(declare-fun res!117928 () Bool)

(declare-fun e!158541 () Bool)

(assert (=> b!254995 (=> (not res!117928) (not e!158541))))

(declare-datatypes ((List!3733 0))(
  ( (Nil!3723) (Cons!3723 (h!9120 (_ BitVec 16)) (t!36109 List!3733)) )
))
(declare-datatypes ((TokenValue!731 0))(
  ( (FloatLiteralValue!1462 (text!5562 List!3733)) (TokenValueExt!730 (__x!2949 Int)) (Broken!3655 (value!24496 List!3733)) (Object!740) (End!731) (Def!731) (Underscore!731) (Match!731) (Else!731) (Error!731) (Case!731) (If!731) (Extends!731) (Abstract!731) (Class!731) (Val!731) (DelimiterValue!1462 (del!791 List!3733)) (KeywordValue!737 (value!24497 List!3733)) (CommentValue!1462 (value!24498 List!3733)) (WhitespaceValue!1462 (value!24499 List!3733)) (IndentationValue!731 (value!24500 List!3733)) (String!4734) (Int32!731) (Broken!3656 (value!24501 List!3733)) (Boolean!732) (Unit!4551) (OperatorValue!734 (op!791 List!3733)) (IdentifierValue!1462 (value!24502 List!3733)) (IdentifierValue!1463 (value!24503 List!3733)) (WhitespaceValue!1463 (value!24504 List!3733)) (True!1462) (False!1462) (Broken!3657 (value!24505 List!3733)) (Broken!3658 (value!24506 List!3733)) (True!1463) (RightBrace!731) (RightBracket!731) (Colon!731) (Null!731) (Comma!731) (LeftBracket!731) (False!1463) (LeftBrace!731) (ImaginaryLiteralValue!731 (text!5563 List!3733)) (StringLiteralValue!2193 (value!24507 List!3733)) (EOFValue!731 (value!24508 List!3733)) (IdentValue!731 (value!24509 List!3733)) (DelimiterValue!1463 (value!24510 List!3733)) (DedentValue!731 (value!24511 List!3733)) (NewLineValue!731 (value!24512 List!3733)) (IntegerValue!2193 (value!24513 (_ BitVec 32)) (text!5564 List!3733)) (IntegerValue!2194 (value!24514 Int) (text!5565 List!3733)) (Times!731) (Or!731) (Equal!731) (Minus!731) (Broken!3659 (value!24515 List!3733)) (And!731) (Div!731) (LessEqual!731) (Mod!731) (Concat!1664) (Not!731) (Plus!731) (SpaceValue!731 (value!24516 List!3733)) (IntegerValue!2195 (value!24517 Int) (text!5566 List!3733)) (StringLiteralValue!2194 (text!5567 List!3733)) (FloatLiteralValue!1463 (text!5568 List!3733)) (BytesLiteralValue!731 (value!24518 List!3733)) (CommentValue!1463 (value!24519 List!3733)) (StringLiteralValue!2195 (value!24520 List!3733)) (ErrorTokenValue!731 (msg!792 List!3733)) )
))
(declare-datatypes ((C!2788 0))(
  ( (C!2789 (val!1280 Int)) )
))
(declare-datatypes ((List!3734 0))(
  ( (Nil!3724) (Cons!3724 (h!9121 C!2788) (t!36110 List!3734)) )
))
(declare-datatypes ((IArray!2481 0))(
  ( (IArray!2482 (innerList!1298 List!3734)) )
))
(declare-datatypes ((Conc!1240 0))(
  ( (Node!1240 (left!3061 Conc!1240) (right!3391 Conc!1240) (csize!2710 Int) (cheight!1451 Int)) (Leaf!1934 (xs!3835 IArray!2481) (csize!2711 Int)) (Empty!1240) )
))
(declare-datatypes ((BalanceConc!2488 0))(
  ( (BalanceConc!2489 (c!48295 Conc!1240)) )
))
(declare-datatypes ((Regex!933 0))(
  ( (ElementMatch!933 (c!48296 C!2788)) (Concat!1665 (regOne!2378 Regex!933) (regTwo!2378 Regex!933)) (EmptyExpr!933) (Star!933 (reg!1262 Regex!933)) (EmptyLang!933) (Union!933 (regOne!2379 Regex!933) (regTwo!2379 Regex!933)) )
))
(declare-datatypes ((String!4735 0))(
  ( (String!4736 (value!24521 String)) )
))
(declare-datatypes ((TokenValueInjection!1234 0))(
  ( (TokenValueInjection!1235 (toValue!1424 Int) (toChars!1283 Int)) )
))
(declare-datatypes ((Rule!1218 0))(
  ( (Rule!1219 (regex!709 Regex!933) (tag!917 String!4735) (isSeparator!709 Bool) (transformation!709 TokenValueInjection!1234)) )
))
(declare-datatypes ((Token!1162 0))(
  ( (Token!1163 (value!24522 TokenValue!731) (rule!1290 Rule!1218) (size!2956 Int) (originalCharacters!752 List!3734)) )
))
(declare-datatypes ((List!3735 0))(
  ( (Nil!3725) (Cons!3725 (h!9122 Token!1162) (t!36111 List!3735)) )
))
(declare-datatypes ((IArray!2483 0))(
  ( (IArray!2484 (innerList!1299 List!3735)) )
))
(declare-datatypes ((Conc!1241 0))(
  ( (Node!1241 (left!3062 Conc!1241) (right!3392 Conc!1241) (csize!2712 Int) (cheight!1452 Int)) (Leaf!1935 (xs!3836 IArray!2483) (csize!2713 Int)) (Empty!1241) )
))
(declare-datatypes ((BalanceConc!2490 0))(
  ( (BalanceConc!2491 (c!48297 Conc!1241)) )
))
(declare-fun lt!104000 () BalanceConc!2490)

(declare-fun size!2957 (BalanceConc!2490) Int)

(assert (=> b!254995 (= res!117928 (<= 0 (size!2957 lt!104000)))))

(declare-fun b!254996 () Bool)

(declare-fun res!117930 () Bool)

(assert (=> b!254996 (=> (not res!117930) (not e!158541))))

(declare-fun tokens!465 () List!3735)

(get-info :version)

(assert (=> b!254996 (= res!117930 (not ((_ is Cons!3725) tokens!465)))))

(declare-fun e!158544 () Bool)

(declare-fun b!254997 () Bool)

(declare-fun tp!98541 () Bool)

(declare-fun e!158548 () Bool)

(declare-fun inv!21 (TokenValue!731) Bool)

(assert (=> b!254997 (= e!158544 (and (inv!21 (value!24522 (h!9122 tokens!465))) e!158548 tp!98541))))

(declare-fun e!158547 () Bool)

(declare-fun e!158537 () Bool)

(declare-fun tp!98538 () Bool)

(declare-fun b!254998 () Bool)

(declare-datatypes ((List!3736 0))(
  ( (Nil!3726) (Cons!3726 (h!9123 Rule!1218) (t!36112 List!3736)) )
))
(declare-fun rules!1920 () List!3736)

(declare-fun inv!4591 (String!4735) Bool)

(declare-fun inv!4594 (TokenValueInjection!1234) Bool)

(assert (=> b!254998 (= e!158547 (and tp!98538 (inv!4591 (tag!917 (h!9123 rules!1920))) (inv!4594 (transformation!709 (h!9123 rules!1920))) e!158537))))

(declare-fun b!254999 () Bool)

(declare-fun res!117936 () Bool)

(assert (=> b!254999 (=> (not res!117936) (not e!158541))))

(declare-fun separatorToken!170 () Token!1162)

(assert (=> b!254999 (= res!117936 (isSeparator!709 (rule!1290 separatorToken!170)))))

(declare-fun b!255000 () Bool)

(assert (=> b!255000 (= e!158541 false)))

(declare-fun lt!103999 () Bool)

(declare-fun lambda!8530 () Int)

(declare-fun forall!898 (BalanceConc!2490 Int) Bool)

(assert (=> b!255000 (= lt!103999 (forall!898 lt!104000 lambda!8530))))

(declare-fun e!158543 () Bool)

(assert (=> b!255001 (= e!158543 (and tp!98537 tp!98543))))

(declare-fun b!255002 () Bool)

(declare-fun e!158538 () Bool)

(declare-fun e!158542 () Bool)

(declare-fun tp!98535 () Bool)

(assert (=> b!255002 (= e!158542 (and (inv!21 (value!24522 separatorToken!170)) e!158538 tp!98535))))

(declare-fun b!255003 () Bool)

(declare-fun res!117929 () Bool)

(assert (=> b!255003 (=> (not res!117929) (not e!158541))))

(declare-datatypes ((LexerInterface!595 0))(
  ( (LexerInterfaceExt!592 (__x!2950 Int)) (Lexer!593) )
))
(declare-fun thiss!17480 () LexerInterface!595)

(declare-fun rulesProduceIndividualToken!344 (LexerInterface!595 List!3736 Token!1162) Bool)

(assert (=> b!255003 (= res!117929 (rulesProduceIndividualToken!344 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!255005 () Bool)

(declare-fun res!117931 () Bool)

(assert (=> b!255005 (=> (not res!117931) (not e!158541))))

(declare-fun forall!899 (List!3735 Int) Bool)

(assert (=> b!255005 (= res!117931 (forall!899 tokens!465 lambda!8530))))

(declare-fun b!255006 () Bool)

(declare-fun e!158553 () Bool)

(declare-fun tp!98539 () Bool)

(assert (=> b!255006 (= e!158553 (and e!158547 tp!98539))))

(declare-fun e!158545 () Bool)

(assert (=> b!255007 (= e!158545 (and tp!98540 tp!98534))))

(declare-fun b!255008 () Bool)

(declare-fun tp!98532 () Bool)

(assert (=> b!255008 (= e!158548 (and tp!98532 (inv!4591 (tag!917 (rule!1290 (h!9122 tokens!465)))) (inv!4594 (transformation!709 (rule!1290 (h!9122 tokens!465)))) e!158543))))

(assert (=> b!255009 (= e!158537 (and tp!98533 tp!98536))))

(declare-fun b!255010 () Bool)

(declare-fun e!158546 () Bool)

(assert (=> b!255010 (= e!158546 e!158541)))

(declare-fun res!117933 () Bool)

(assert (=> b!255010 (=> (not res!117933) (not e!158541))))

(declare-fun rulesProduceEachTokenIndividually!387 (LexerInterface!595 List!3736 BalanceConc!2490) Bool)

(assert (=> b!255010 (= res!117933 (rulesProduceEachTokenIndividually!387 thiss!17480 rules!1920 lt!104000))))

(declare-fun seqFromList!788 (List!3735) BalanceConc!2490)

(assert (=> b!255010 (= lt!104000 (seqFromList!788 tokens!465))))

(declare-fun b!255011 () Bool)

(declare-fun res!117934 () Bool)

(assert (=> b!255011 (=> (not res!117934) (not e!158541))))

(declare-fun sepAndNonSepRulesDisjointChars!298 (List!3736 List!3736) Bool)

(assert (=> b!255011 (= res!117934 (sepAndNonSepRulesDisjointChars!298 rules!1920 rules!1920))))

(declare-fun b!255012 () Bool)

(declare-fun res!117932 () Bool)

(assert (=> b!255012 (=> (not res!117932) (not e!158546))))

(declare-fun rulesInvariant!561 (LexerInterface!595 List!3736) Bool)

(assert (=> b!255012 (= res!117932 (rulesInvariant!561 thiss!17480 rules!1920))))

(declare-fun res!117927 () Bool)

(assert (=> start!27250 (=> (not res!117927) (not e!158546))))

(assert (=> start!27250 (= res!117927 ((_ is Lexer!593) thiss!17480))))

(assert (=> start!27250 e!158546))

(assert (=> start!27250 true))

(assert (=> start!27250 e!158553))

(declare-fun inv!4595 (Token!1162) Bool)

(assert (=> start!27250 (and (inv!4595 separatorToken!170) e!158542)))

(declare-fun e!158539 () Bool)

(assert (=> start!27250 e!158539))

(declare-fun b!255004 () Bool)

(declare-fun tp!98531 () Bool)

(assert (=> b!255004 (= e!158539 (and (inv!4595 (h!9122 tokens!465)) e!158544 tp!98531))))

(declare-fun b!255013 () Bool)

(declare-fun res!117935 () Bool)

(assert (=> b!255013 (=> (not res!117935) (not e!158546))))

(declare-fun isEmpty!2322 (List!3736) Bool)

(assert (=> b!255013 (= res!117935 (not (isEmpty!2322 rules!1920)))))

(declare-fun tp!98542 () Bool)

(declare-fun b!255014 () Bool)

(assert (=> b!255014 (= e!158538 (and tp!98542 (inv!4591 (tag!917 (rule!1290 separatorToken!170))) (inv!4594 (transformation!709 (rule!1290 separatorToken!170))) e!158545))))

(assert (= (and start!27250 res!117927) b!255013))

(assert (= (and b!255013 res!117935) b!255012))

(assert (= (and b!255012 res!117932) b!255010))

(assert (= (and b!255010 res!117933) b!255003))

(assert (= (and b!255003 res!117929) b!254999))

(assert (= (and b!254999 res!117936) b!255005))

(assert (= (and b!255005 res!117931) b!255011))

(assert (= (and b!255011 res!117934) b!254996))

(assert (= (and b!254996 res!117930) b!254995))

(assert (= (and b!254995 res!117928) b!255000))

(assert (= b!254998 b!255009))

(assert (= b!255006 b!254998))

(assert (= (and start!27250 ((_ is Cons!3726) rules!1920)) b!255006))

(assert (= b!255014 b!255007))

(assert (= b!255002 b!255014))

(assert (= start!27250 b!255002))

(assert (= b!255008 b!255001))

(assert (= b!254997 b!255008))

(assert (= b!255004 b!254997))

(assert (= (and start!27250 ((_ is Cons!3725) tokens!465)) b!255004))

(declare-fun m!314305 () Bool)

(assert (=> start!27250 m!314305))

(declare-fun m!314307 () Bool)

(assert (=> b!255013 m!314307))

(declare-fun m!314309 () Bool)

(assert (=> b!254998 m!314309))

(declare-fun m!314311 () Bool)

(assert (=> b!254998 m!314311))

(declare-fun m!314313 () Bool)

(assert (=> b!255004 m!314313))

(declare-fun m!314315 () Bool)

(assert (=> b!254997 m!314315))

(declare-fun m!314317 () Bool)

(assert (=> b!255010 m!314317))

(declare-fun m!314319 () Bool)

(assert (=> b!255010 m!314319))

(declare-fun m!314321 () Bool)

(assert (=> b!255003 m!314321))

(declare-fun m!314323 () Bool)

(assert (=> b!255002 m!314323))

(declare-fun m!314325 () Bool)

(assert (=> b!255000 m!314325))

(declare-fun m!314327 () Bool)

(assert (=> b!255008 m!314327))

(declare-fun m!314329 () Bool)

(assert (=> b!255008 m!314329))

(declare-fun m!314331 () Bool)

(assert (=> b!255005 m!314331))

(declare-fun m!314333 () Bool)

(assert (=> b!255012 m!314333))

(declare-fun m!314335 () Bool)

(assert (=> b!254995 m!314335))

(declare-fun m!314337 () Bool)

(assert (=> b!255014 m!314337))

(declare-fun m!314339 () Bool)

(assert (=> b!255014 m!314339))

(declare-fun m!314341 () Bool)

(assert (=> b!255011 m!314341))

(check-sat (not b!255011) (not b!255002) (not b!255005) b_and!19479 (not b!255010) (not b_next!9549) (not b!254998) (not b!255008) (not b!254995) (not start!27250) (not b_next!9553) (not b_next!9555) b_and!19481 b_and!19483 (not b_next!9545) (not b!255003) (not b!255012) (not b!255006) (not b_next!9547) (not b!255013) (not b_next!9551) b_and!19477 (not b!255004) (not b!255000) (not b!254997) b_and!19485 (not b!255014) b_and!19487)
(check-sat (not b_next!9553) b_and!19479 (not b_next!9549) (not b_next!9547) b_and!19485 b_and!19487 (not b_next!9555) b_and!19481 b_and!19483 (not b_next!9545) (not b_next!9551) b_and!19477)
