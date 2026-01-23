; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18326 () Bool)

(assert start!18326)

(declare-fun b!169562 () Bool)

(declare-fun b_free!6497 () Bool)

(declare-fun b_next!6497 () Bool)

(assert (=> b!169562 (= b_free!6497 (not b_next!6497))))

(declare-fun tp!83941 () Bool)

(declare-fun b_and!11073 () Bool)

(assert (=> b!169562 (= tp!83941 b_and!11073)))

(declare-fun b_free!6499 () Bool)

(declare-fun b_next!6499 () Bool)

(assert (=> b!169562 (= b_free!6499 (not b_next!6499))))

(declare-fun tp!83936 () Bool)

(declare-fun b_and!11075 () Bool)

(assert (=> b!169562 (= tp!83936 b_and!11075)))

(declare-fun b!169559 () Bool)

(declare-fun b_free!6501 () Bool)

(declare-fun b_next!6501 () Bool)

(assert (=> b!169559 (= b_free!6501 (not b_next!6501))))

(declare-fun tp!83937 () Bool)

(declare-fun b_and!11077 () Bool)

(assert (=> b!169559 (= tp!83937 b_and!11077)))

(declare-fun b_free!6503 () Bool)

(declare-fun b_next!6503 () Bool)

(assert (=> b!169559 (= b_free!6503 (not b_next!6503))))

(declare-fun tp!83935 () Bool)

(declare-fun b_and!11079 () Bool)

(assert (=> b!169559 (= tp!83935 b_and!11079)))

(declare-fun b!169568 () Bool)

(declare-fun b_free!6505 () Bool)

(declare-fun b_next!6505 () Bool)

(assert (=> b!169568 (= b_free!6505 (not b_next!6505))))

(declare-fun tp!83940 () Bool)

(declare-fun b_and!11081 () Bool)

(assert (=> b!169568 (= tp!83940 b_and!11081)))

(declare-fun b_free!6507 () Bool)

(declare-fun b_next!6507 () Bool)

(assert (=> b!169568 (= b_free!6507 (not b_next!6507))))

(declare-fun tp!83932 () Bool)

(declare-fun b_and!11083 () Bool)

(assert (=> b!169568 (= tp!83932 b_and!11083)))

(declare-fun bs!16474 () Bool)

(declare-fun b!169574 () Bool)

(declare-fun b!169567 () Bool)

(assert (= bs!16474 (and b!169574 b!169567)))

(declare-fun lambda!4804 () Int)

(declare-fun lambda!4803 () Int)

(assert (=> bs!16474 (not (= lambda!4804 lambda!4803))))

(declare-fun b!169596 () Bool)

(declare-fun e!102586 () Bool)

(assert (=> b!169596 (= e!102586 true)))

(declare-fun b!169595 () Bool)

(declare-fun e!102585 () Bool)

(assert (=> b!169595 (= e!102585 e!102586)))

(declare-fun b!169594 () Bool)

(declare-fun e!102584 () Bool)

(assert (=> b!169594 (= e!102584 e!102585)))

(assert (=> b!169574 e!102584))

(assert (= b!169595 b!169596))

(assert (= b!169594 b!169595))

(declare-datatypes ((List!2893 0))(
  ( (Nil!2883) (Cons!2883 (h!8280 (_ BitVec 16)) (t!27015 List!2893)) )
))
(declare-datatypes ((TokenValue!537 0))(
  ( (FloatLiteralValue!1074 (text!4204 List!2893)) (TokenValueExt!536 (__x!2561 Int)) (Broken!2685 (value!18967 List!2893)) (Object!546) (End!537) (Def!537) (Underscore!537) (Match!537) (Else!537) (Error!537) (Case!537) (If!537) (Extends!537) (Abstract!537) (Class!537) (Val!537) (DelimiterValue!1074 (del!597 List!2893)) (KeywordValue!543 (value!18968 List!2893)) (CommentValue!1074 (value!18969 List!2893)) (WhitespaceValue!1074 (value!18970 List!2893)) (IndentationValue!537 (value!18971 List!2893)) (String!3764) (Int32!537) (Broken!2686 (value!18972 List!2893)) (Boolean!538) (Unit!2507) (OperatorValue!540 (op!597 List!2893)) (IdentifierValue!1074 (value!18973 List!2893)) (IdentifierValue!1075 (value!18974 List!2893)) (WhitespaceValue!1075 (value!18975 List!2893)) (True!1074) (False!1074) (Broken!2687 (value!18976 List!2893)) (Broken!2688 (value!18977 List!2893)) (True!1075) (RightBrace!537) (RightBracket!537) (Colon!537) (Null!537) (Comma!537) (LeftBracket!537) (False!1075) (LeftBrace!537) (ImaginaryLiteralValue!537 (text!4205 List!2893)) (StringLiteralValue!1611 (value!18978 List!2893)) (EOFValue!537 (value!18979 List!2893)) (IdentValue!537 (value!18980 List!2893)) (DelimiterValue!1075 (value!18981 List!2893)) (DedentValue!537 (value!18982 List!2893)) (NewLineValue!537 (value!18983 List!2893)) (IntegerValue!1611 (value!18984 (_ BitVec 32)) (text!4206 List!2893)) (IntegerValue!1612 (value!18985 Int) (text!4207 List!2893)) (Times!537) (Or!537) (Equal!537) (Minus!537) (Broken!2689 (value!18986 List!2893)) (And!537) (Div!537) (LessEqual!537) (Mod!537) (Concat!1276) (Not!537) (Plus!537) (SpaceValue!537 (value!18987 List!2893)) (IntegerValue!1613 (value!18988 Int) (text!4208 List!2893)) (StringLiteralValue!1612 (text!4209 List!2893)) (FloatLiteralValue!1075 (text!4210 List!2893)) (BytesLiteralValue!537 (value!18989 List!2893)) (CommentValue!1075 (value!18990 List!2893)) (StringLiteralValue!1613 (value!18991 List!2893)) (ErrorTokenValue!537 (msg!598 List!2893)) )
))
(declare-datatypes ((C!2400 0))(
  ( (C!2401 (val!1086 Int)) )
))
(declare-datatypes ((List!2894 0))(
  ( (Nil!2884) (Cons!2884 (h!8281 C!2400) (t!27016 List!2894)) )
))
(declare-datatypes ((IArray!1705 0))(
  ( (IArray!1706 (innerList!910 List!2894)) )
))
(declare-datatypes ((Conc!852 0))(
  ( (Node!852 (left!2196 Conc!852) (right!2526 Conc!852) (csize!1934 Int) (cheight!1063 Int)) (Leaf!1449 (xs!3447 IArray!1705) (csize!1935 Int)) (Empty!852) )
))
(declare-datatypes ((BalanceConc!1712 0))(
  ( (BalanceConc!1713 (c!33660 Conc!852)) )
))
(declare-datatypes ((TokenValueInjection!846 0))(
  ( (TokenValueInjection!847 (toValue!1178 Int) (toChars!1037 Int)) )
))
(declare-datatypes ((String!3765 0))(
  ( (String!3766 (value!18992 String)) )
))
(declare-datatypes ((Regex!739 0))(
  ( (ElementMatch!739 (c!33661 C!2400)) (Concat!1277 (regOne!1990 Regex!739) (regTwo!1990 Regex!739)) (EmptyExpr!739) (Star!739 (reg!1068 Regex!739)) (EmptyLang!739) (Union!739 (regOne!1991 Regex!739) (regTwo!1991 Regex!739)) )
))
(declare-datatypes ((Rule!830 0))(
  ( (Rule!831 (regex!515 Regex!739) (tag!693 String!3765) (isSeparator!515 Bool) (transformation!515 TokenValueInjection!846)) )
))
(declare-datatypes ((List!2895 0))(
  ( (Nil!2885) (Cons!2885 (h!8282 Rule!830) (t!27017 List!2895)) )
))
(declare-fun rules!1920 () List!2895)

(get-info :version)

(assert (= (and b!169574 ((_ is Cons!2885) rules!1920)) b!169594))

(declare-fun order!1551 () Int)

(declare-fun order!1549 () Int)

(declare-fun dynLambda!1079 (Int Int) Int)

(declare-fun dynLambda!1080 (Int Int) Int)

(assert (=> b!169596 (< (dynLambda!1079 order!1549 (toValue!1178 (transformation!515 (h!8282 rules!1920)))) (dynLambda!1080 order!1551 lambda!4804))))

(declare-fun order!1553 () Int)

(declare-fun dynLambda!1081 (Int Int) Int)

(assert (=> b!169596 (< (dynLambda!1081 order!1553 (toChars!1037 (transformation!515 (h!8282 rules!1920)))) (dynLambda!1080 order!1551 lambda!4804))))

(assert (=> b!169574 true))

(declare-fun b!169558 () Bool)

(declare-fun res!76634 () Bool)

(declare-fun e!102568 () Bool)

(assert (=> b!169558 (=> (not res!76634) (not e!102568))))

(declare-datatypes ((Token!774 0))(
  ( (Token!775 (value!18993 TokenValue!537) (rule!1022 Rule!830) (size!2397 Int) (originalCharacters!558 List!2894)) )
))
(declare-fun separatorToken!170 () Token!774)

(assert (=> b!169558 (= res!76634 (isSeparator!515 (rule!1022 separatorToken!170)))))

(declare-fun e!102557 () Bool)

(assert (=> b!169559 (= e!102557 (and tp!83937 tp!83935))))

(declare-fun b!169560 () Bool)

(declare-fun res!76629 () Bool)

(declare-fun e!102565 () Bool)

(assert (=> b!169560 (=> (not res!76629) (not e!102565))))

(declare-fun isEmpty!1217 (List!2895) Bool)

(assert (=> b!169560 (= res!76629 (not (isEmpty!1217 rules!1920)))))

(declare-fun b!169561 () Bool)

(declare-fun res!76627 () Bool)

(declare-fun e!102576 () Bool)

(assert (=> b!169561 (=> res!76627 e!102576)))

(declare-fun e!102572 () Bool)

(assert (=> b!169561 (= res!76627 e!102572)))

(declare-fun res!76628 () Bool)

(assert (=> b!169561 (=> (not res!76628) (not e!102572))))

(declare-fun lt!53364 () List!2894)

(declare-fun lt!53349 () List!2894)

(assert (=> b!169561 (= res!76628 (not (= lt!53364 lt!53349)))))

(declare-fun e!102558 () Bool)

(assert (=> b!169562 (= e!102558 (and tp!83941 tp!83936))))

(declare-fun b!169563 () Bool)

(declare-fun lt!53363 () List!2894)

(declare-fun lt!53356 () List!2894)

(declare-fun ++!660 (List!2894 List!2894) List!2894)

(assert (=> b!169563 (= e!102572 (not (= lt!53364 (++!660 lt!53356 lt!53363))))))

(declare-fun res!76633 () Bool)

(assert (=> start!18326 (=> (not res!76633) (not e!102565))))

(declare-datatypes ((LexerInterface!401 0))(
  ( (LexerInterfaceExt!398 (__x!2562 Int)) (Lexer!399) )
))
(declare-fun thiss!17480 () LexerInterface!401)

(assert (=> start!18326 (= res!76633 ((_ is Lexer!399) thiss!17480))))

(assert (=> start!18326 e!102565))

(assert (=> start!18326 true))

(declare-fun e!102571 () Bool)

(assert (=> start!18326 e!102571))

(declare-fun e!102574 () Bool)

(declare-fun inv!3711 (Token!774) Bool)

(assert (=> start!18326 (and (inv!3711 separatorToken!170) e!102574)))

(declare-fun e!102573 () Bool)

(assert (=> start!18326 e!102573))

(declare-fun b!169564 () Bool)

(declare-fun res!76638 () Bool)

(declare-fun e!102563 () Bool)

(assert (=> b!169564 (=> res!76638 e!102563)))

(declare-datatypes ((List!2896 0))(
  ( (Nil!2886) (Cons!2886 (h!8283 Token!774) (t!27018 List!2896)) )
))
(declare-datatypes ((IArray!1707 0))(
  ( (IArray!1708 (innerList!911 List!2896)) )
))
(declare-datatypes ((Conc!853 0))(
  ( (Node!853 (left!2197 Conc!853) (right!2527 Conc!853) (csize!1936 Int) (cheight!1064 Int)) (Leaf!1450 (xs!3448 IArray!1707) (csize!1937 Int)) (Empty!853) )
))
(declare-datatypes ((BalanceConc!1714 0))(
  ( (BalanceConc!1715 (c!33662 Conc!853)) )
))
(declare-fun isEmpty!1218 (BalanceConc!1714) Bool)

(declare-datatypes ((tuple2!2774 0))(
  ( (tuple2!2775 (_1!1603 BalanceConc!1714) (_2!1603 BalanceConc!1712)) )
))
(declare-fun lex!201 (LexerInterface!401 List!2895 BalanceConc!1712) tuple2!2774)

(declare-fun seqFromList!407 (List!2894) BalanceConc!1712)

(assert (=> b!169564 (= res!76638 (isEmpty!1218 (_1!1603 (lex!201 thiss!17480 rules!1920 (seqFromList!407 lt!53356)))))))

(declare-fun b!169565 () Bool)

(declare-fun res!76636 () Bool)

(assert (=> b!169565 (=> (not res!76636) (not e!102568))))

(declare-fun tokens!465 () List!2896)

(assert (=> b!169565 (= res!76636 ((_ is Cons!2886) tokens!465))))

(declare-fun b!169566 () Bool)

(declare-fun e!102567 () Bool)

(declare-fun tp!83931 () Bool)

(declare-fun inv!3708 (String!3765) Bool)

(declare-fun inv!3712 (TokenValueInjection!846) Bool)

(assert (=> b!169566 (= e!102567 (and tp!83931 (inv!3708 (tag!693 (rule!1022 separatorToken!170))) (inv!3712 (transformation!515 (rule!1022 separatorToken!170))) e!102558))))

(declare-fun res!76625 () Bool)

(assert (=> b!169567 (=> (not res!76625) (not e!102568))))

(declare-fun forall!561 (List!2896 Int) Bool)

(assert (=> b!169567 (= res!76625 (forall!561 tokens!465 lambda!4803))))

(declare-fun e!102561 () Bool)

(assert (=> b!169568 (= e!102561 (and tp!83940 tp!83932))))

(declare-fun b!169569 () Bool)

(declare-fun res!76635 () Bool)

(assert (=> b!169569 (=> (not res!76635) (not e!102568))))

(declare-fun sepAndNonSepRulesDisjointChars!104 (List!2895 List!2895) Bool)

(assert (=> b!169569 (= res!76635 (sepAndNonSepRulesDisjointChars!104 rules!1920 rules!1920))))

(declare-fun b!169570 () Bool)

(declare-fun res!76630 () Bool)

(assert (=> b!169570 (=> (not res!76630) (not e!102565))))

(declare-fun rulesInvariant!367 (LexerInterface!401 List!2895) Bool)

(assert (=> b!169570 (= res!76630 (rulesInvariant!367 thiss!17480 rules!1920))))

(declare-fun tp!83933 () Bool)

(declare-fun e!102566 () Bool)

(declare-fun b!169571 () Bool)

(assert (=> b!169571 (= e!102573 (and (inv!3711 (h!8283 tokens!465)) e!102566 tp!83933))))

(declare-fun b!169572 () Bool)

(declare-fun res!76624 () Bool)

(declare-fun e!102559 () Bool)

(assert (=> b!169572 (=> (not res!76624) (not e!102559))))

(declare-fun lt!53362 () List!2894)

(declare-fun list!1049 (BalanceConc!1712) List!2894)

(assert (=> b!169572 (= res!76624 (= (list!1049 (seqFromList!407 lt!53364)) lt!53362))))

(declare-fun b!169573 () Bool)

(declare-fun e!102575 () Bool)

(declare-fun tp!83929 () Bool)

(assert (=> b!169573 (= e!102571 (and e!102575 tp!83929))))

(declare-fun e!102564 () Bool)

(assert (=> b!169574 (= e!102563 e!102564)))

(declare-fun res!76640 () Bool)

(assert (=> b!169574 (=> res!76640 e!102564)))

(declare-datatypes ((tuple2!2776 0))(
  ( (tuple2!2777 (_1!1604 Token!774) (_2!1604 BalanceConc!1712)) )
))
(declare-datatypes ((Option!304 0))(
  ( (None!303) (Some!303 (v!13740 tuple2!2776)) )
))
(declare-fun isDefined!155 (Option!304) Bool)

(declare-fun maxPrefixZipperSequence!94 (LexerInterface!401 List!2895 BalanceConc!1712) Option!304)

(assert (=> b!169574 (= res!76640 (not (isDefined!155 (maxPrefixZipperSequence!94 thiss!17480 rules!1920 (seqFromList!407 (originalCharacters!558 (h!8283 tokens!465)))))))))

(declare-datatypes ((Unit!2508 0))(
  ( (Unit!2509) )
))
(declare-fun lt!53352 () Unit!2508)

(declare-fun forallContained!82 (List!2896 Int Token!774) Unit!2508)

(assert (=> b!169574 (= lt!53352 (forallContained!82 tokens!465 lambda!4804 (h!8283 tokens!465)))))

(assert (=> b!169574 (= lt!53356 (originalCharacters!558 (h!8283 tokens!465)))))

(declare-fun tp!83938 () Bool)

(declare-fun b!169575 () Bool)

(declare-fun inv!21 (TokenValue!537) Bool)

(assert (=> b!169575 (= e!102574 (and (inv!21 (value!18993 separatorToken!170)) e!102567 tp!83938))))

(declare-fun b!169576 () Bool)

(declare-fun res!76632 () Bool)

(assert (=> b!169576 (=> (not res!76632) (not e!102568))))

(declare-fun rulesProduceIndividualToken!150 (LexerInterface!401 List!2895 Token!774) Bool)

(assert (=> b!169576 (= res!76632 (rulesProduceIndividualToken!150 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!169577 () Bool)

(declare-fun tp!83930 () Bool)

(assert (=> b!169577 (= e!102575 (and tp!83930 (inv!3708 (tag!693 (h!8282 rules!1920))) (inv!3712 (transformation!515 (h!8282 rules!1920))) e!102557))))

(declare-fun b!169578 () Bool)

(assert (=> b!169578 (= e!102559 (not e!102576))))

(declare-fun res!76623 () Bool)

(assert (=> b!169578 (=> res!76623 e!102576)))

(declare-fun printWithSeparatorTokenWhenNeededRec!84 (LexerInterface!401 List!2895 BalanceConc!1714 Token!774 Int) BalanceConc!1712)

(declare-fun seqFromList!408 (List!2896) BalanceConc!1714)

(assert (=> b!169578 (= res!76623 (not (= lt!53363 (list!1049 (printWithSeparatorTokenWhenNeededRec!84 thiss!17480 rules!1920 (seqFromList!408 (t!27018 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!53351 () List!2894)

(assert (=> b!169578 (= lt!53351 lt!53349)))

(declare-fun lt!53360 () List!2894)

(assert (=> b!169578 (= lt!53349 (++!660 lt!53356 lt!53360))))

(declare-fun lt!53358 () List!2894)

(assert (=> b!169578 (= lt!53351 (++!660 (++!660 lt!53356 lt!53358) lt!53363))))

(declare-fun lt!53361 () Unit!2508)

(declare-fun lemmaConcatAssociativity!200 (List!2894 List!2894 List!2894) Unit!2508)

(assert (=> b!169578 (= lt!53361 (lemmaConcatAssociativity!200 lt!53356 lt!53358 lt!53363))))

(declare-fun charsOf!170 (Token!774) BalanceConc!1712)

(assert (=> b!169578 (= lt!53356 (list!1049 (charsOf!170 (h!8283 tokens!465))))))

(assert (=> b!169578 (= lt!53360 (++!660 lt!53358 lt!53363))))

(declare-fun printWithSeparatorTokenWhenNeededList!94 (LexerInterface!401 List!2895 List!2896 Token!774) List!2894)

(assert (=> b!169578 (= lt!53363 (printWithSeparatorTokenWhenNeededList!94 thiss!17480 rules!1920 (t!27018 tokens!465) separatorToken!170))))

(assert (=> b!169578 (= lt!53358 (list!1049 (charsOf!170 separatorToken!170)))))

(declare-fun b!169579 () Bool)

(assert (=> b!169579 (= e!102568 e!102559)))

(declare-fun res!76639 () Bool)

(assert (=> b!169579 (=> (not res!76639) (not e!102559))))

(assert (=> b!169579 (= res!76639 (= lt!53364 lt!53362))))

(declare-fun lt!53350 () BalanceConc!1714)

(assert (=> b!169579 (= lt!53362 (list!1049 (printWithSeparatorTokenWhenNeededRec!84 thiss!17480 rules!1920 lt!53350 separatorToken!170 0)))))

(assert (=> b!169579 (= lt!53364 (printWithSeparatorTokenWhenNeededList!94 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!169580 () Bool)

(declare-fun e!102562 () Bool)

(declare-fun tp!83939 () Bool)

(assert (=> b!169580 (= e!102566 (and (inv!21 (value!18993 (h!8283 tokens!465))) e!102562 tp!83939))))

(declare-fun b!169581 () Bool)

(declare-fun res!76631 () Bool)

(assert (=> b!169581 (=> res!76631 e!102563)))

(assert (=> b!169581 (= res!76631 (not (rulesProduceIndividualToken!150 thiss!17480 rules!1920 (h!8283 tokens!465))))))

(declare-fun b!169582 () Bool)

(assert (=> b!169582 (= e!102565 e!102568)))

(declare-fun res!76637 () Bool)

(assert (=> b!169582 (=> (not res!76637) (not e!102568))))

(declare-fun rulesProduceEachTokenIndividually!193 (LexerInterface!401 List!2895 BalanceConc!1714) Bool)

(assert (=> b!169582 (= res!76637 (rulesProduceEachTokenIndividually!193 thiss!17480 rules!1920 lt!53350))))

(assert (=> b!169582 (= lt!53350 (seqFromList!408 tokens!465))))

(declare-fun b!169583 () Bool)

(assert (=> b!169583 (= e!102576 e!102563)))

(declare-fun res!76626 () Bool)

(assert (=> b!169583 (=> res!76626 e!102563)))

(declare-fun lt!53353 () List!2894)

(declare-fun lt!53359 () List!2894)

(assert (=> b!169583 (= res!76626 (or (not (= lt!53353 lt!53359)) (not (= lt!53359 lt!53356)) (not (= lt!53353 lt!53356))))))

(declare-fun printList!85 (LexerInterface!401 List!2896) List!2894)

(assert (=> b!169583 (= lt!53359 (printList!85 thiss!17480 (Cons!2886 (h!8283 tokens!465) Nil!2886)))))

(declare-fun lt!53355 () BalanceConc!1712)

(assert (=> b!169583 (= lt!53353 (list!1049 lt!53355))))

(declare-fun lt!53357 () BalanceConc!1714)

(declare-fun printTailRec!95 (LexerInterface!401 BalanceConc!1714 Int BalanceConc!1712) BalanceConc!1712)

(assert (=> b!169583 (= lt!53355 (printTailRec!95 thiss!17480 lt!53357 0 (BalanceConc!1713 Empty!852)))))

(declare-fun print!132 (LexerInterface!401 BalanceConc!1714) BalanceConc!1712)

(assert (=> b!169583 (= lt!53355 (print!132 thiss!17480 lt!53357))))

(declare-fun singletonSeq!67 (Token!774) BalanceConc!1714)

(assert (=> b!169583 (= lt!53357 (singletonSeq!67 (h!8283 tokens!465)))))

(declare-fun b!169584 () Bool)

(assert (=> b!169584 (= e!102564 true)))

(declare-fun lt!53354 () Bool)

(declare-fun rulesValidInductive!118 (LexerInterface!401 List!2895) Bool)

(assert (=> b!169584 (= lt!53354 (rulesValidInductive!118 thiss!17480 rules!1920))))

(declare-datatypes ((tuple2!2778 0))(
  ( (tuple2!2779 (_1!1605 Token!774) (_2!1605 List!2894)) )
))
(declare-datatypes ((Option!305 0))(
  ( (None!304) (Some!304 (v!13741 tuple2!2778)) )
))
(declare-fun isDefined!156 (Option!305) Bool)

(declare-fun maxPrefix!131 (LexerInterface!401 List!2895 List!2894) Option!305)

(assert (=> b!169584 (isDefined!156 (maxPrefix!131 thiss!17480 rules!1920 lt!53356))))

(declare-fun tp!83934 () Bool)

(declare-fun b!169585 () Bool)

(assert (=> b!169585 (= e!102562 (and tp!83934 (inv!3708 (tag!693 (rule!1022 (h!8283 tokens!465)))) (inv!3712 (transformation!515 (rule!1022 (h!8283 tokens!465)))) e!102561))))

(assert (= (and start!18326 res!76633) b!169560))

(assert (= (and b!169560 res!76629) b!169570))

(assert (= (and b!169570 res!76630) b!169582))

(assert (= (and b!169582 res!76637) b!169576))

(assert (= (and b!169576 res!76632) b!169558))

(assert (= (and b!169558 res!76634) b!169567))

(assert (= (and b!169567 res!76625) b!169569))

(assert (= (and b!169569 res!76635) b!169565))

(assert (= (and b!169565 res!76636) b!169579))

(assert (= (and b!169579 res!76639) b!169572))

(assert (= (and b!169572 res!76624) b!169578))

(assert (= (and b!169578 (not res!76623)) b!169561))

(assert (= (and b!169561 res!76628) b!169563))

(assert (= (and b!169561 (not res!76627)) b!169583))

(assert (= (and b!169583 (not res!76626)) b!169581))

(assert (= (and b!169581 (not res!76631)) b!169564))

(assert (= (and b!169564 (not res!76638)) b!169574))

(assert (= (and b!169574 (not res!76640)) b!169584))

(assert (= b!169577 b!169559))

(assert (= b!169573 b!169577))

(assert (= (and start!18326 ((_ is Cons!2885) rules!1920)) b!169573))

(assert (= b!169566 b!169562))

(assert (= b!169575 b!169566))

(assert (= start!18326 b!169575))

(assert (= b!169585 b!169568))

(assert (= b!169580 b!169585))

(assert (= b!169571 b!169580))

(assert (= (and start!18326 ((_ is Cons!2886) tokens!465)) b!169571))

(declare-fun m!165223 () Bool)

(assert (=> b!169564 m!165223))

(assert (=> b!169564 m!165223))

(declare-fun m!165225 () Bool)

(assert (=> b!169564 m!165225))

(declare-fun m!165227 () Bool)

(assert (=> b!169564 m!165227))

(declare-fun m!165229 () Bool)

(assert (=> b!169583 m!165229))

(declare-fun m!165231 () Bool)

(assert (=> b!169583 m!165231))

(declare-fun m!165233 () Bool)

(assert (=> b!169583 m!165233))

(declare-fun m!165235 () Bool)

(assert (=> b!169583 m!165235))

(declare-fun m!165237 () Bool)

(assert (=> b!169583 m!165237))

(declare-fun m!165239 () Bool)

(assert (=> b!169581 m!165239))

(declare-fun m!165241 () Bool)

(assert (=> b!169579 m!165241))

(assert (=> b!169579 m!165241))

(declare-fun m!165243 () Bool)

(assert (=> b!169579 m!165243))

(declare-fun m!165245 () Bool)

(assert (=> b!169579 m!165245))

(declare-fun m!165247 () Bool)

(assert (=> b!169578 m!165247))

(declare-fun m!165249 () Bool)

(assert (=> b!169578 m!165249))

(declare-fun m!165251 () Bool)

(assert (=> b!169578 m!165251))

(assert (=> b!169578 m!165249))

(declare-fun m!165253 () Bool)

(assert (=> b!169578 m!165253))

(declare-fun m!165255 () Bool)

(assert (=> b!169578 m!165255))

(declare-fun m!165257 () Bool)

(assert (=> b!169578 m!165257))

(declare-fun m!165259 () Bool)

(assert (=> b!169578 m!165259))

(declare-fun m!165261 () Bool)

(assert (=> b!169578 m!165261))

(declare-fun m!165263 () Bool)

(assert (=> b!169578 m!165263))

(assert (=> b!169578 m!165259))

(assert (=> b!169578 m!165253))

(declare-fun m!165265 () Bool)

(assert (=> b!169578 m!165265))

(declare-fun m!165267 () Bool)

(assert (=> b!169578 m!165267))

(assert (=> b!169578 m!165263))

(declare-fun m!165269 () Bool)

(assert (=> b!169578 m!165269))

(assert (=> b!169578 m!165261))

(declare-fun m!165271 () Bool)

(assert (=> b!169578 m!165271))

(declare-fun m!165273 () Bool)

(assert (=> b!169584 m!165273))

(declare-fun m!165275 () Bool)

(assert (=> b!169584 m!165275))

(assert (=> b!169584 m!165275))

(declare-fun m!165277 () Bool)

(assert (=> b!169584 m!165277))

(declare-fun m!165279 () Bool)

(assert (=> b!169571 m!165279))

(declare-fun m!165281 () Bool)

(assert (=> b!169569 m!165281))

(declare-fun m!165283 () Bool)

(assert (=> b!169574 m!165283))

(assert (=> b!169574 m!165283))

(declare-fun m!165285 () Bool)

(assert (=> b!169574 m!165285))

(assert (=> b!169574 m!165285))

(declare-fun m!165287 () Bool)

(assert (=> b!169574 m!165287))

(declare-fun m!165289 () Bool)

(assert (=> b!169574 m!165289))

(declare-fun m!165291 () Bool)

(assert (=> b!169560 m!165291))

(declare-fun m!165293 () Bool)

(assert (=> start!18326 m!165293))

(declare-fun m!165295 () Bool)

(assert (=> b!169563 m!165295))

(declare-fun m!165297 () Bool)

(assert (=> b!169582 m!165297))

(declare-fun m!165299 () Bool)

(assert (=> b!169582 m!165299))

(declare-fun m!165301 () Bool)

(assert (=> b!169566 m!165301))

(declare-fun m!165303 () Bool)

(assert (=> b!169566 m!165303))

(declare-fun m!165305 () Bool)

(assert (=> b!169577 m!165305))

(declare-fun m!165307 () Bool)

(assert (=> b!169577 m!165307))

(declare-fun m!165309 () Bool)

(assert (=> b!169576 m!165309))

(declare-fun m!165311 () Bool)

(assert (=> b!169572 m!165311))

(assert (=> b!169572 m!165311))

(declare-fun m!165313 () Bool)

(assert (=> b!169572 m!165313))

(declare-fun m!165315 () Bool)

(assert (=> b!169580 m!165315))

(declare-fun m!165317 () Bool)

(assert (=> b!169567 m!165317))

(declare-fun m!165319 () Bool)

(assert (=> b!169585 m!165319))

(declare-fun m!165321 () Bool)

(assert (=> b!169585 m!165321))

(declare-fun m!165323 () Bool)

(assert (=> b!169570 m!165323))

(declare-fun m!165325 () Bool)

(assert (=> b!169575 m!165325))

(check-sat (not b!169571) (not b!169585) (not b_next!6505) (not b!169582) (not b!169560) (not b!169566) (not start!18326) (not b!169583) b_and!11081 (not b_next!6507) (not b!169580) (not b!169564) (not b!169575) (not b!169572) b_and!11077 (not b!169594) (not b!169569) (not b!169570) (not b!169573) (not b!169579) (not b!169584) (not b!169563) b_and!11083 (not b!169577) (not b!169578) (not b_next!6501) (not b!169574) (not b_next!6497) (not b!169576) b_and!11079 (not b!169581) b_and!11073 b_and!11075 (not b_next!6499) (not b!169567) (not b_next!6503))
(check-sat b_and!11083 (not b_next!6505) b_and!11079 b_and!11073 b_and!11081 (not b_next!6507) (not b_next!6503) b_and!11077 (not b_next!6501) (not b_next!6497) b_and!11075 (not b_next!6499))
