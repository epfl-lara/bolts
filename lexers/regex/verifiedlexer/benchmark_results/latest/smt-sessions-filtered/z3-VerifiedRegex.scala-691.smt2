; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27094 () Bool)

(assert start!27094)

(declare-fun b!254071 () Bool)

(declare-fun b_free!9465 () Bool)

(declare-fun b_next!9465 () Bool)

(assert (=> b!254071 (= b_free!9465 (not b_next!9465))))

(declare-fun tp!98046 () Bool)

(declare-fun b_and!19353 () Bool)

(assert (=> b!254071 (= tp!98046 b_and!19353)))

(declare-fun b_free!9467 () Bool)

(declare-fun b_next!9467 () Bool)

(assert (=> b!254071 (= b_free!9467 (not b_next!9467))))

(declare-fun tp!98044 () Bool)

(declare-fun b_and!19355 () Bool)

(assert (=> b!254071 (= tp!98044 b_and!19355)))

(declare-fun b!254079 () Bool)

(declare-fun b_free!9469 () Bool)

(declare-fun b_next!9469 () Bool)

(assert (=> b!254079 (= b_free!9469 (not b_next!9469))))

(declare-fun tp!98043 () Bool)

(declare-fun b_and!19357 () Bool)

(assert (=> b!254079 (= tp!98043 b_and!19357)))

(declare-fun b_free!9471 () Bool)

(declare-fun b_next!9471 () Bool)

(assert (=> b!254079 (= b_free!9471 (not b_next!9471))))

(declare-fun tp!98041 () Bool)

(declare-fun b_and!19359 () Bool)

(assert (=> b!254079 (= tp!98041 b_and!19359)))

(declare-fun b!254070 () Bool)

(declare-fun b_free!9473 () Bool)

(declare-fun b_next!9473 () Bool)

(assert (=> b!254070 (= b_free!9473 (not b_next!9473))))

(declare-fun tp!98036 () Bool)

(declare-fun b_and!19361 () Bool)

(assert (=> b!254070 (= tp!98036 b_and!19361)))

(declare-fun b_free!9475 () Bool)

(declare-fun b_next!9475 () Bool)

(assert (=> b!254070 (= b_free!9475 (not b_next!9475))))

(declare-fun tp!98042 () Bool)

(declare-fun b_and!19363 () Bool)

(assert (=> b!254070 (= tp!98042 b_and!19363)))

(declare-fun b!254068 () Bool)

(declare-fun e!157898 () Bool)

(declare-fun e!157906 () Bool)

(assert (=> b!254068 (= e!157898 e!157906)))

(declare-fun res!117596 () Bool)

(assert (=> b!254068 (=> (not res!117596) (not e!157906))))

(declare-datatypes ((List!3715 0))(
  ( (Nil!3705) (Cons!3705 (h!9102 (_ BitVec 16)) (t!35987 List!3715)) )
))
(declare-datatypes ((TokenValue!727 0))(
  ( (FloatLiteralValue!1454 (text!5534 List!3715)) (TokenValueExt!726 (__x!2941 Int)) (Broken!3635 (value!24382 List!3715)) (Object!736) (End!727) (Def!727) (Underscore!727) (Match!727) (Else!727) (Error!727) (Case!727) (If!727) (Extends!727) (Abstract!727) (Class!727) (Val!727) (DelimiterValue!1454 (del!787 List!3715)) (KeywordValue!733 (value!24383 List!3715)) (CommentValue!1454 (value!24384 List!3715)) (WhitespaceValue!1454 (value!24385 List!3715)) (IndentationValue!727 (value!24386 List!3715)) (String!4714) (Int32!727) (Broken!3636 (value!24387 List!3715)) (Boolean!728) (Unit!4543) (OperatorValue!730 (op!787 List!3715)) (IdentifierValue!1454 (value!24388 List!3715)) (IdentifierValue!1455 (value!24389 List!3715)) (WhitespaceValue!1455 (value!24390 List!3715)) (True!1454) (False!1454) (Broken!3637 (value!24391 List!3715)) (Broken!3638 (value!24392 List!3715)) (True!1455) (RightBrace!727) (RightBracket!727) (Colon!727) (Null!727) (Comma!727) (LeftBracket!727) (False!1455) (LeftBrace!727) (ImaginaryLiteralValue!727 (text!5535 List!3715)) (StringLiteralValue!2181 (value!24393 List!3715)) (EOFValue!727 (value!24394 List!3715)) (IdentValue!727 (value!24395 List!3715)) (DelimiterValue!1455 (value!24396 List!3715)) (DedentValue!727 (value!24397 List!3715)) (NewLineValue!727 (value!24398 List!3715)) (IntegerValue!2181 (value!24399 (_ BitVec 32)) (text!5536 List!3715)) (IntegerValue!2182 (value!24400 Int) (text!5537 List!3715)) (Times!727) (Or!727) (Equal!727) (Minus!727) (Broken!3639 (value!24401 List!3715)) (And!727) (Div!727) (LessEqual!727) (Mod!727) (Concat!1656) (Not!727) (Plus!727) (SpaceValue!727 (value!24402 List!3715)) (IntegerValue!2183 (value!24403 Int) (text!5538 List!3715)) (StringLiteralValue!2182 (text!5539 List!3715)) (FloatLiteralValue!1455 (text!5540 List!3715)) (BytesLiteralValue!727 (value!24404 List!3715)) (CommentValue!1455 (value!24405 List!3715)) (StringLiteralValue!2183 (value!24406 List!3715)) (ErrorTokenValue!727 (msg!788 List!3715)) )
))
(declare-datatypes ((C!2780 0))(
  ( (C!2781 (val!1276 Int)) )
))
(declare-datatypes ((List!3716 0))(
  ( (Nil!3706) (Cons!3706 (h!9103 C!2780) (t!35988 List!3716)) )
))
(declare-datatypes ((IArray!2465 0))(
  ( (IArray!2466 (innerList!1290 List!3716)) )
))
(declare-datatypes ((Conc!1232 0))(
  ( (Node!1232 (left!3047 Conc!1232) (right!3377 Conc!1232) (csize!2694 Int) (cheight!1443 Int)) (Leaf!1924 (xs!3827 IArray!2465) (csize!2695 Int)) (Empty!1232) )
))
(declare-datatypes ((BalanceConc!2472 0))(
  ( (BalanceConc!2473 (c!48217 Conc!1232)) )
))
(declare-datatypes ((TokenValueInjection!1226 0))(
  ( (TokenValueInjection!1227 (toValue!1416 Int) (toChars!1275 Int)) )
))
(declare-datatypes ((String!4715 0))(
  ( (String!4716 (value!24407 String)) )
))
(declare-datatypes ((Regex!929 0))(
  ( (ElementMatch!929 (c!48218 C!2780)) (Concat!1657 (regOne!2370 Regex!929) (regTwo!2370 Regex!929)) (EmptyExpr!929) (Star!929 (reg!1258 Regex!929)) (EmptyLang!929) (Union!929 (regOne!2371 Regex!929) (regTwo!2371 Regex!929)) )
))
(declare-datatypes ((Rule!1210 0))(
  ( (Rule!1211 (regex!705 Regex!929) (tag!913 String!4715) (isSeparator!705 Bool) (transformation!705 TokenValueInjection!1226)) )
))
(declare-datatypes ((List!3717 0))(
  ( (Nil!3707) (Cons!3707 (h!9104 Rule!1210) (t!35989 List!3717)) )
))
(declare-fun rules!1920 () List!3717)

(declare-datatypes ((LexerInterface!591 0))(
  ( (LexerInterfaceExt!588 (__x!2942 Int)) (Lexer!589) )
))
(declare-fun thiss!17480 () LexerInterface!591)

(declare-datatypes ((Token!1154 0))(
  ( (Token!1155 (value!24408 TokenValue!727) (rule!1286 Rule!1210) (size!2940 Int) (originalCharacters!748 List!3716)) )
))
(declare-datatypes ((List!3718 0))(
  ( (Nil!3708) (Cons!3708 (h!9105 Token!1154) (t!35990 List!3718)) )
))
(declare-datatypes ((IArray!2467 0))(
  ( (IArray!2468 (innerList!1291 List!3718)) )
))
(declare-datatypes ((Conc!1233 0))(
  ( (Node!1233 (left!3048 Conc!1233) (right!3378 Conc!1233) (csize!2696 Int) (cheight!1444 Int)) (Leaf!1925 (xs!3828 IArray!2467) (csize!2697 Int)) (Empty!1233) )
))
(declare-datatypes ((BalanceConc!2474 0))(
  ( (BalanceConc!2475 (c!48219 Conc!1233)) )
))
(declare-fun lt!103866 () BalanceConc!2474)

(declare-fun rulesProduceEachTokenIndividually!383 (LexerInterface!591 List!3717 BalanceConc!2474) Bool)

(assert (=> b!254068 (= res!117596 (rulesProduceEachTokenIndividually!383 thiss!17480 rules!1920 lt!103866))))

(declare-fun tokens!465 () List!3718)

(declare-fun seqFromList!784 (List!3718) BalanceConc!2474)

(assert (=> b!254068 (= lt!103866 (seqFromList!784 tokens!465))))

(declare-fun b!254069 () Bool)

(declare-fun res!117597 () Bool)

(assert (=> b!254069 (=> (not res!117597) (not e!157906))))

(declare-fun separatorToken!170 () Token!1154)

(declare-fun rulesProduceIndividualToken!340 (LexerInterface!591 List!3717 Token!1154) Bool)

(assert (=> b!254069 (= res!117597 (rulesProduceIndividualToken!340 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!157892 () Bool)

(assert (=> b!254070 (= e!157892 (and tp!98036 tp!98042))))

(declare-fun e!157900 () Bool)

(assert (=> b!254071 (= e!157900 (and tp!98046 tp!98044))))

(declare-fun b!254072 () Bool)

(declare-fun res!117590 () Bool)

(assert (=> b!254072 (=> (not res!117590) (not e!157898))))

(declare-fun rulesInvariant!557 (LexerInterface!591 List!3717) Bool)

(assert (=> b!254072 (= res!117590 (rulesInvariant!557 thiss!17480 rules!1920))))

(declare-fun b!254073 () Bool)

(declare-fun e!157895 () Bool)

(declare-fun tp!98038 () Bool)

(declare-fun inv!4568 (String!4715) Bool)

(declare-fun inv!4571 (TokenValueInjection!1226) Bool)

(assert (=> b!254073 (= e!157895 (and tp!98038 (inv!4568 (tag!913 (rule!1286 separatorToken!170))) (inv!4571 (transformation!705 (rule!1286 separatorToken!170))) e!157892))))

(declare-fun b!254074 () Bool)

(declare-fun res!117594 () Bool)

(assert (=> b!254074 (=> (not res!117594) (not e!157898))))

(declare-fun isEmpty!2310 (List!3717) Bool)

(assert (=> b!254074 (= res!117594 (not (isEmpty!2310 rules!1920)))))

(declare-fun b!254075 () Bool)

(declare-fun res!117592 () Bool)

(assert (=> b!254075 (=> (not res!117592) (not e!157906))))

(declare-fun lambda!8468 () Int)

(declare-fun forall!885 (List!3718 Int) Bool)

(assert (=> b!254075 (= res!117592 (forall!885 tokens!465 lambda!8468))))

(declare-fun tp!98037 () Bool)

(declare-fun e!157891 () Bool)

(declare-fun b!254076 () Bool)

(declare-fun e!157896 () Bool)

(declare-fun inv!4572 (Token!1154) Bool)

(assert (=> b!254076 (= e!157891 (and (inv!4572 (h!9105 tokens!465)) e!157896 tp!98037))))

(declare-fun e!157904 () Bool)

(declare-fun b!254077 () Bool)

(declare-fun e!157905 () Bool)

(declare-fun tp!98035 () Bool)

(assert (=> b!254077 (= e!157904 (and tp!98035 (inv!4568 (tag!913 (rule!1286 (h!9105 tokens!465)))) (inv!4571 (transformation!705 (rule!1286 (h!9105 tokens!465)))) e!157905))))

(declare-fun b!254078 () Bool)

(declare-fun tp!98045 () Bool)

(declare-fun inv!21 (TokenValue!727) Bool)

(assert (=> b!254078 (= e!157896 (and (inv!21 (value!24408 (h!9105 tokens!465))) e!157904 tp!98045))))

(assert (=> b!254079 (= e!157905 (and tp!98043 tp!98041))))

(declare-fun b!254080 () Bool)

(declare-fun res!117593 () Bool)

(assert (=> b!254080 (=> (not res!117593) (not e!157906))))

(assert (=> b!254080 (= res!117593 (isSeparator!705 (rule!1286 separatorToken!170)))))

(declare-fun res!117598 () Bool)

(assert (=> start!27094 (=> (not res!117598) (not e!157898))))

(get-info :version)

(assert (=> start!27094 (= res!117598 ((_ is Lexer!589) thiss!17480))))

(assert (=> start!27094 e!157898))

(assert (=> start!27094 true))

(declare-fun e!157899 () Bool)

(assert (=> start!27094 e!157899))

(declare-fun e!157903 () Bool)

(assert (=> start!27094 (and (inv!4572 separatorToken!170) e!157903)))

(assert (=> start!27094 e!157891))

(declare-fun e!157901 () Bool)

(declare-fun tp!98040 () Bool)

(declare-fun b!254081 () Bool)

(assert (=> b!254081 (= e!157901 (and tp!98040 (inv!4568 (tag!913 (h!9104 rules!1920))) (inv!4571 (transformation!705 (h!9104 rules!1920))) e!157900))))

(declare-fun b!254082 () Bool)

(declare-fun res!117591 () Bool)

(assert (=> b!254082 (=> (not res!117591) (not e!157906))))

(assert (=> b!254082 (= res!117591 (not ((_ is Cons!3708) tokens!465)))))

(declare-fun b!254083 () Bool)

(declare-fun tp!98039 () Bool)

(assert (=> b!254083 (= e!157903 (and (inv!21 (value!24408 separatorToken!170)) e!157895 tp!98039))))

(declare-fun b!254084 () Bool)

(declare-fun tp!98047 () Bool)

(assert (=> b!254084 (= e!157899 (and e!157901 tp!98047))))

(declare-fun b!254085 () Bool)

(declare-fun res!117595 () Bool)

(assert (=> b!254085 (=> (not res!117595) (not e!157906))))

(declare-fun sepAndNonSepRulesDisjointChars!294 (List!3717 List!3717) Bool)

(assert (=> b!254085 (= res!117595 (sepAndNonSepRulesDisjointChars!294 rules!1920 rules!1920))))

(declare-fun b!254086 () Bool)

(assert (=> b!254086 (= e!157906 false)))

(declare-fun lt!103865 () Int)

(declare-fun size!2941 (BalanceConc!2474) Int)

(assert (=> b!254086 (= lt!103865 (size!2941 lt!103866))))

(assert (= (and start!27094 res!117598) b!254074))

(assert (= (and b!254074 res!117594) b!254072))

(assert (= (and b!254072 res!117590) b!254068))

(assert (= (and b!254068 res!117596) b!254069))

(assert (= (and b!254069 res!117597) b!254080))

(assert (= (and b!254080 res!117593) b!254075))

(assert (= (and b!254075 res!117592) b!254085))

(assert (= (and b!254085 res!117595) b!254082))

(assert (= (and b!254082 res!117591) b!254086))

(assert (= b!254081 b!254071))

(assert (= b!254084 b!254081))

(assert (= (and start!27094 ((_ is Cons!3707) rules!1920)) b!254084))

(assert (= b!254073 b!254070))

(assert (= b!254083 b!254073))

(assert (= start!27094 b!254083))

(assert (= b!254077 b!254079))

(assert (= b!254078 b!254077))

(assert (= b!254076 b!254078))

(assert (= (and start!27094 ((_ is Cons!3708) tokens!465)) b!254076))

(declare-fun m!313515 () Bool)

(assert (=> b!254073 m!313515))

(declare-fun m!313517 () Bool)

(assert (=> b!254073 m!313517))

(declare-fun m!313519 () Bool)

(assert (=> b!254086 m!313519))

(declare-fun m!313521 () Bool)

(assert (=> b!254083 m!313521))

(declare-fun m!313523 () Bool)

(assert (=> b!254078 m!313523))

(declare-fun m!313525 () Bool)

(assert (=> b!254072 m!313525))

(declare-fun m!313527 () Bool)

(assert (=> b!254076 m!313527))

(declare-fun m!313529 () Bool)

(assert (=> b!254085 m!313529))

(declare-fun m!313531 () Bool)

(assert (=> b!254069 m!313531))

(declare-fun m!313533 () Bool)

(assert (=> b!254077 m!313533))

(declare-fun m!313535 () Bool)

(assert (=> b!254077 m!313535))

(declare-fun m!313537 () Bool)

(assert (=> b!254081 m!313537))

(declare-fun m!313539 () Bool)

(assert (=> b!254081 m!313539))

(declare-fun m!313541 () Bool)

(assert (=> b!254074 m!313541))

(declare-fun m!313543 () Bool)

(assert (=> start!27094 m!313543))

(declare-fun m!313545 () Bool)

(assert (=> b!254068 m!313545))

(declare-fun m!313547 () Bool)

(assert (=> b!254068 m!313547))

(declare-fun m!313549 () Bool)

(assert (=> b!254075 m!313549))

(check-sat b_and!19355 b_and!19353 (not b_next!9473) (not b!254075) (not b!254083) (not b!254072) (not b!254074) (not b!254078) (not b_next!9467) (not b!254081) b_and!19361 (not b_next!9475) (not b!254073) (not b_next!9465) b_and!19359 b_and!19363 (not b!254085) (not b!254077) (not b!254086) (not b_next!9471) (not b!254069) b_and!19357 (not b!254084) (not b_next!9469) (not start!27094) (not b!254068) (not b!254076))
(check-sat b_and!19355 b_and!19353 (not b_next!9473) (not b_next!9471) b_and!19357 (not b_next!9467) b_and!19361 (not b_next!9469) (not b_next!9475) (not b_next!9465) b_and!19359 b_and!19363)
