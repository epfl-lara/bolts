; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384584 () Bool)

(assert start!384584)

(declare-fun b!4073975 () Bool)

(declare-fun b_free!113465 () Bool)

(declare-fun b_next!114169 () Bool)

(assert (=> b!4073975 (= b_free!113465 (not b_next!114169))))

(declare-fun tp!1233140 () Bool)

(declare-fun b_and!313139 () Bool)

(assert (=> b!4073975 (= tp!1233140 b_and!313139)))

(declare-fun b_free!113467 () Bool)

(declare-fun b_next!114171 () Bool)

(assert (=> b!4073975 (= b_free!113467 (not b_next!114171))))

(declare-fun tp!1233138 () Bool)

(declare-fun b_and!313141 () Bool)

(assert (=> b!4073975 (= tp!1233138 b_and!313141)))

(declare-fun b!4073984 () Bool)

(declare-fun b_free!113469 () Bool)

(declare-fun b_next!114173 () Bool)

(assert (=> b!4073984 (= b_free!113469 (not b_next!114173))))

(declare-fun tp!1233137 () Bool)

(declare-fun b_and!313143 () Bool)

(assert (=> b!4073984 (= tp!1233137 b_and!313143)))

(declare-fun b_free!113471 () Bool)

(declare-fun b_next!114175 () Bool)

(assert (=> b!4073984 (= b_free!113471 (not b_next!114175))))

(declare-fun tp!1233134 () Bool)

(declare-fun b_and!313145 () Bool)

(assert (=> b!4073984 (= tp!1233134 b_and!313145)))

(declare-fun b!4073974 () Bool)

(declare-fun res!1663715 () Bool)

(declare-fun e!2528555 () Bool)

(assert (=> b!4073974 (=> (not res!1663715) (not e!2528555))))

(declare-datatypes ((LexerInterface!6601 0))(
  ( (LexerInterfaceExt!6598 (__x!26701 Int)) (Lexer!6599) )
))
(declare-fun thiss!26199 () LexerInterface!6601)

(declare-datatypes ((List!43695 0))(
  ( (Nil!43571) (Cons!43571 (h!48991 (_ BitVec 16)) (t!337222 List!43695)) )
))
(declare-datatypes ((TokenValue!7242 0))(
  ( (FloatLiteralValue!14484 (text!51139 List!43695)) (TokenValueExt!7241 (__x!26702 Int)) (Broken!36210 (value!220468 List!43695)) (Object!7365) (End!7242) (Def!7242) (Underscore!7242) (Match!7242) (Else!7242) (Error!7242) (Case!7242) (If!7242) (Extends!7242) (Abstract!7242) (Class!7242) (Val!7242) (DelimiterValue!14484 (del!7302 List!43695)) (KeywordValue!7248 (value!220469 List!43695)) (CommentValue!14484 (value!220470 List!43695)) (WhitespaceValue!14484 (value!220471 List!43695)) (IndentationValue!7242 (value!220472 List!43695)) (String!49959) (Int32!7242) (Broken!36211 (value!220473 List!43695)) (Boolean!7243) (Unit!63120) (OperatorValue!7245 (op!7302 List!43695)) (IdentifierValue!14484 (value!220474 List!43695)) (IdentifierValue!14485 (value!220475 List!43695)) (WhitespaceValue!14485 (value!220476 List!43695)) (True!14484) (False!14484) (Broken!36212 (value!220477 List!43695)) (Broken!36213 (value!220478 List!43695)) (True!14485) (RightBrace!7242) (RightBracket!7242) (Colon!7242) (Null!7242) (Comma!7242) (LeftBracket!7242) (False!14485) (LeftBrace!7242) (ImaginaryLiteralValue!7242 (text!51140 List!43695)) (StringLiteralValue!21726 (value!220479 List!43695)) (EOFValue!7242 (value!220480 List!43695)) (IdentValue!7242 (value!220481 List!43695)) (DelimiterValue!14485 (value!220482 List!43695)) (DedentValue!7242 (value!220483 List!43695)) (NewLineValue!7242 (value!220484 List!43695)) (IntegerValue!21726 (value!220485 (_ BitVec 32)) (text!51141 List!43695)) (IntegerValue!21727 (value!220486 Int) (text!51142 List!43695)) (Times!7242) (Or!7242) (Equal!7242) (Minus!7242) (Broken!36214 (value!220487 List!43695)) (And!7242) (Div!7242) (LessEqual!7242) (Mod!7242) (Concat!19159) (Not!7242) (Plus!7242) (SpaceValue!7242 (value!220488 List!43695)) (IntegerValue!21728 (value!220489 Int) (text!51143 List!43695)) (StringLiteralValue!21727 (text!51144 List!43695)) (FloatLiteralValue!14485 (text!51145 List!43695)) (BytesLiteralValue!7242 (value!220490 List!43695)) (CommentValue!14485 (value!220491 List!43695)) (StringLiteralValue!21728 (value!220492 List!43695)) (ErrorTokenValue!7242 (msg!7303 List!43695)) )
))
(declare-datatypes ((C!24020 0))(
  ( (C!24021 (val!14120 Int)) )
))
(declare-datatypes ((Regex!11917 0))(
  ( (ElementMatch!11917 (c!702968 C!24020)) (Concat!19160 (regOne!24346 Regex!11917) (regTwo!24346 Regex!11917)) (EmptyExpr!11917) (Star!11917 (reg!12246 Regex!11917)) (EmptyLang!11917) (Union!11917 (regOne!24347 Regex!11917) (regTwo!24347 Regex!11917)) )
))
(declare-datatypes ((String!49960 0))(
  ( (String!49961 (value!220493 String)) )
))
(declare-datatypes ((List!43696 0))(
  ( (Nil!43572) (Cons!43572 (h!48992 C!24020) (t!337223 List!43696)) )
))
(declare-datatypes ((IArray!26451 0))(
  ( (IArray!26452 (innerList!13283 List!43696)) )
))
(declare-datatypes ((Conc!13223 0))(
  ( (Node!13223 (left!32755 Conc!13223) (right!33085 Conc!13223) (csize!26676 Int) (cheight!13434 Int)) (Leaf!20444 (xs!16529 IArray!26451) (csize!26677 Int)) (Empty!13223) )
))
(declare-datatypes ((BalanceConc!26040 0))(
  ( (BalanceConc!26041 (c!702969 Conc!13223)) )
))
(declare-datatypes ((TokenValueInjection!13912 0))(
  ( (TokenValueInjection!13913 (toValue!9576 Int) (toChars!9435 Int)) )
))
(declare-datatypes ((Rule!13824 0))(
  ( (Rule!13825 (regex!7012 Regex!11917) (tag!7872 String!49960) (isSeparator!7012 Bool) (transformation!7012 TokenValueInjection!13912)) )
))
(declare-datatypes ((List!43697 0))(
  ( (Nil!43573) (Cons!43573 (h!48993 Rule!13824) (t!337224 List!43697)) )
))
(declare-fun rules!3870 () List!43697)

(declare-fun rulesInvariant!5944 (LexerInterface!6601 List!43697) Bool)

(assert (=> b!4073974 (= res!1663715 (rulesInvariant!5944 thiss!26199 rules!3870))))

(declare-fun e!2528560 () Bool)

(assert (=> b!4073975 (= e!2528560 (and tp!1233140 tp!1233138))))

(declare-fun e!2528554 () Bool)

(declare-fun e!2528561 () Bool)

(declare-fun tp!1233135 () Bool)

(declare-fun b!4073976 () Bool)

(declare-fun inv!58222 (String!49960) Bool)

(declare-fun inv!58224 (TokenValueInjection!13912) Bool)

(assert (=> b!4073976 (= e!2528561 (and tp!1233135 (inv!58222 (tag!7872 (h!48993 rules!3870))) (inv!58224 (transformation!7012 (h!48993 rules!3870))) e!2528554))))

(declare-fun b!4073977 () Bool)

(declare-fun e!2528558 () Bool)

(declare-fun e!2528557 () Bool)

(assert (=> b!4073977 (= e!2528558 (not e!2528557))))

(declare-fun res!1663718 () Bool)

(assert (=> b!4073977 (=> res!1663718 e!2528557)))

(declare-fun r!4213 () Rule!13824)

(declare-fun p!2988 () List!43696)

(declare-fun matchR!5862 (Regex!11917 List!43696) Bool)

(assert (=> b!4073977 (= res!1663718 (not (matchR!5862 (regex!7012 r!4213) p!2988)))))

(declare-fun ruleValid!2936 (LexerInterface!6601 Rule!13824) Bool)

(assert (=> b!4073977 (ruleValid!2936 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63121 0))(
  ( (Unit!63122) )
))
(declare-fun lt!1458054 () Unit!63121)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2004 (LexerInterface!6601 Rule!13824 List!43697) Unit!63121)

(assert (=> b!4073977 (= lt!1458054 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2004 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4073978 () Bool)

(declare-fun res!1663712 () Bool)

(assert (=> b!4073978 (=> (not res!1663712) (not e!2528555))))

(declare-fun suffix!1518 () List!43696)

(declare-fun input!3411 () List!43696)

(declare-fun ++!11418 (List!43696 List!43696) List!43696)

(assert (=> b!4073978 (= res!1663712 (= input!3411 (++!11418 p!2988 suffix!1518)))))

(declare-fun b!4073979 () Bool)

(declare-fun e!2528562 () Bool)

(declare-fun tp_is_empty!20837 () Bool)

(declare-fun tp!1233142 () Bool)

(assert (=> b!4073979 (= e!2528562 (and tp_is_empty!20837 tp!1233142))))

(declare-fun b!4073980 () Bool)

(declare-fun res!1663713 () Bool)

(assert (=> b!4073980 (=> (not res!1663713) (not e!2528555))))

(declare-fun isEmpty!26007 (List!43697) Bool)

(assert (=> b!4073980 (= res!1663713 (not (isEmpty!26007 rules!3870)))))

(declare-fun res!1663722 () Bool)

(assert (=> start!384584 (=> (not res!1663722) (not e!2528555))))

(get-info :version)

(assert (=> start!384584 (= res!1663722 ((_ is Lexer!6599) thiss!26199))))

(assert (=> start!384584 e!2528555))

(assert (=> start!384584 true))

(assert (=> start!384584 e!2528562))

(declare-fun e!2528551 () Bool)

(assert (=> start!384584 e!2528551))

(declare-fun e!2528563 () Bool)

(assert (=> start!384584 e!2528563))

(declare-fun e!2528564 () Bool)

(assert (=> start!384584 e!2528564))

(declare-fun e!2528553 () Bool)

(assert (=> start!384584 e!2528553))

(declare-fun b!4073981 () Bool)

(declare-fun e!2528559 () Bool)

(assert (=> b!4073981 (= e!2528557 e!2528559)))

(declare-fun res!1663717 () Bool)

(assert (=> b!4073981 (=> res!1663717 e!2528559)))

(assert (=> b!4073981 (= res!1663717 (isEmpty!26007 (t!337224 rules!3870)))))

(assert (=> b!4073981 (rulesInvariant!5944 thiss!26199 (t!337224 rules!3870))))

(declare-fun lt!1458059 () Unit!63121)

(declare-fun lemmaInvariantOnRulesThenOnTail!732 (LexerInterface!6601 Rule!13824 List!43697) Unit!63121)

(assert (=> b!4073981 (= lt!1458059 (lemmaInvariantOnRulesThenOnTail!732 thiss!26199 (h!48993 rules!3870) (t!337224 rules!3870)))))

(declare-fun b!4073982 () Bool)

(declare-fun res!1663716 () Bool)

(assert (=> b!4073982 (=> (not res!1663716) (not e!2528555))))

(declare-fun contains!8679 (List!43697 Rule!13824) Bool)

(assert (=> b!4073982 (= res!1663716 (contains!8679 rules!3870 r!4213))))

(declare-fun b!4073983 () Bool)

(declare-fun e!2528552 () Bool)

(declare-datatypes ((Token!13150 0))(
  ( (Token!13151 (value!220494 TokenValue!7242) (rule!10116 Rule!13824) (size!32555 Int) (originalCharacters!7606 List!43696)) )
))
(declare-datatypes ((tuple2!42566 0))(
  ( (tuple2!42567 (_1!24417 Token!13150) (_2!24417 List!43696)) )
))
(declare-datatypes ((Option!9420 0))(
  ( (None!9419) (Some!9419 (v!39859 tuple2!42566)) )
))
(declare-fun lt!1458057 () Option!9420)

(declare-fun get!14286 (Option!9420) tuple2!42566)

(assert (=> b!4073983 (= e!2528552 (not (= (rule!10116 (_1!24417 (get!14286 lt!1458057))) (h!48993 rules!3870))))))

(assert (=> b!4073984 (= e!2528554 (and tp!1233137 tp!1233134))))

(declare-fun b!4073985 () Bool)

(declare-fun tp!1233136 () Bool)

(assert (=> b!4073985 (= e!2528564 (and tp_is_empty!20837 tp!1233136))))

(declare-fun b!4073986 () Bool)

(declare-fun res!1663720 () Bool)

(assert (=> b!4073986 (=> (not res!1663720) (not e!2528555))))

(declare-fun isEmpty!26008 (List!43696) Bool)

(assert (=> b!4073986 (= res!1663720 (not (isEmpty!26008 p!2988)))))

(declare-fun b!4073987 () Bool)

(declare-fun tp!1233141 () Bool)

(assert (=> b!4073987 (= e!2528551 (and e!2528561 tp!1233141))))

(declare-fun b!4073988 () Bool)

(assert (=> b!4073988 (= e!2528555 e!2528558)))

(declare-fun res!1663721 () Bool)

(assert (=> b!4073988 (=> (not res!1663721) (not e!2528558))))

(declare-fun lt!1458053 () BalanceConc!26040)

(declare-fun maxPrefix!3893 (LexerInterface!6601 List!43697 List!43696) Option!9420)

(declare-fun apply!10195 (TokenValueInjection!13912 BalanceConc!26040) TokenValue!7242)

(declare-fun size!32556 (List!43696) Int)

(assert (=> b!4073988 (= res!1663721 (= (maxPrefix!3893 thiss!26199 rules!3870 input!3411) (Some!9419 (tuple2!42567 (Token!13151 (apply!10195 (transformation!7012 r!4213) lt!1458053) r!4213 (size!32556 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458056 () Unit!63121)

(declare-fun lemmaSemiInverse!1979 (TokenValueInjection!13912 BalanceConc!26040) Unit!63121)

(assert (=> b!4073988 (= lt!1458056 (lemmaSemiInverse!1979 (transformation!7012 r!4213) lt!1458053))))

(declare-fun seqFromList!5229 (List!43696) BalanceConc!26040)

(assert (=> b!4073988 (= lt!1458053 (seqFromList!5229 p!2988))))

(declare-fun tp!1233139 () Bool)

(declare-fun b!4073989 () Bool)

(assert (=> b!4073989 (= e!2528553 (and tp!1233139 (inv!58222 (tag!7872 r!4213)) (inv!58224 (transformation!7012 r!4213)) e!2528560))))

(declare-fun b!4073990 () Bool)

(assert (=> b!4073990 (= e!2528559 true)))

(declare-fun lt!1458055 () Bool)

(declare-fun rulesValidInductive!2573 (LexerInterface!6601 List!43697) Bool)

(assert (=> b!4073990 (= lt!1458055 (rulesValidInductive!2573 thiss!26199 (t!337224 rules!3870)))))

(assert (=> b!4073990 e!2528552))

(declare-fun res!1663719 () Bool)

(assert (=> b!4073990 (=> res!1663719 e!2528552)))

(declare-fun isEmpty!26009 (Option!9420) Bool)

(assert (=> b!4073990 (= res!1663719 (isEmpty!26009 lt!1458057))))

(assert (=> b!4073990 (= lt!1458057 (maxPrefix!3893 thiss!26199 (t!337224 rules!3870) input!3411))))

(declare-fun lt!1458058 () Unit!63121)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!6 (LexerInterface!6601 Rule!13824 List!43697 List!43696) Unit!63121)

(assert (=> b!4073990 (= lt!1458058 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!6 thiss!26199 (h!48993 rules!3870) (t!337224 rules!3870) input!3411))))

(declare-fun b!4073991 () Bool)

(declare-fun res!1663714 () Bool)

(assert (=> b!4073991 (=> res!1663714 e!2528557)))

(assert (=> b!4073991 (= res!1663714 (or (not ((_ is Cons!43573) rules!3870)) (not (= (h!48993 rules!3870) r!4213))))))

(declare-fun b!4073992 () Bool)

(declare-fun tp!1233133 () Bool)

(assert (=> b!4073992 (= e!2528563 (and tp_is_empty!20837 tp!1233133))))

(assert (= (and start!384584 res!1663722) b!4073980))

(assert (= (and b!4073980 res!1663713) b!4073974))

(assert (= (and b!4073974 res!1663715) b!4073982))

(assert (= (and b!4073982 res!1663716) b!4073978))

(assert (= (and b!4073978 res!1663712) b!4073986))

(assert (= (and b!4073986 res!1663720) b!4073988))

(assert (= (and b!4073988 res!1663721) b!4073977))

(assert (= (and b!4073977 (not res!1663718)) b!4073991))

(assert (= (and b!4073991 (not res!1663714)) b!4073981))

(assert (= (and b!4073981 (not res!1663717)) b!4073990))

(assert (= (and b!4073990 (not res!1663719)) b!4073983))

(assert (= (and start!384584 ((_ is Cons!43572) suffix!1518)) b!4073979))

(assert (= b!4073976 b!4073984))

(assert (= b!4073987 b!4073976))

(assert (= (and start!384584 ((_ is Cons!43573) rules!3870)) b!4073987))

(assert (= (and start!384584 ((_ is Cons!43572) p!2988)) b!4073992))

(assert (= (and start!384584 ((_ is Cons!43572) input!3411)) b!4073985))

(assert (= b!4073989 b!4073975))

(assert (= start!384584 b!4073989))

(declare-fun m!4682671 () Bool)

(assert (=> b!4073976 m!4682671))

(declare-fun m!4682673 () Bool)

(assert (=> b!4073976 m!4682673))

(declare-fun m!4682675 () Bool)

(assert (=> b!4073980 m!4682675))

(declare-fun m!4682677 () Bool)

(assert (=> b!4073990 m!4682677))

(declare-fun m!4682679 () Bool)

(assert (=> b!4073990 m!4682679))

(declare-fun m!4682681 () Bool)

(assert (=> b!4073990 m!4682681))

(declare-fun m!4682683 () Bool)

(assert (=> b!4073990 m!4682683))

(declare-fun m!4682685 () Bool)

(assert (=> b!4073977 m!4682685))

(declare-fun m!4682687 () Bool)

(assert (=> b!4073977 m!4682687))

(declare-fun m!4682689 () Bool)

(assert (=> b!4073977 m!4682689))

(declare-fun m!4682691 () Bool)

(assert (=> b!4073981 m!4682691))

(declare-fun m!4682693 () Bool)

(assert (=> b!4073981 m!4682693))

(declare-fun m!4682695 () Bool)

(assert (=> b!4073981 m!4682695))

(declare-fun m!4682697 () Bool)

(assert (=> b!4073988 m!4682697))

(declare-fun m!4682699 () Bool)

(assert (=> b!4073988 m!4682699))

(declare-fun m!4682701 () Bool)

(assert (=> b!4073988 m!4682701))

(declare-fun m!4682703 () Bool)

(assert (=> b!4073988 m!4682703))

(declare-fun m!4682705 () Bool)

(assert (=> b!4073988 m!4682705))

(declare-fun m!4682707 () Bool)

(assert (=> b!4073978 m!4682707))

(declare-fun m!4682709 () Bool)

(assert (=> b!4073983 m!4682709))

(declare-fun m!4682711 () Bool)

(assert (=> b!4073982 m!4682711))

(declare-fun m!4682713 () Bool)

(assert (=> b!4073989 m!4682713))

(declare-fun m!4682715 () Bool)

(assert (=> b!4073989 m!4682715))

(declare-fun m!4682717 () Bool)

(assert (=> b!4073986 m!4682717))

(declare-fun m!4682719 () Bool)

(assert (=> b!4073974 m!4682719))

(check-sat (not b!4073976) (not b!4073979) tp_is_empty!20837 (not b!4073980) b_and!313145 (not b_next!114175) (not b_next!114169) (not b!4073981) (not b!4073974) (not b_next!114171) (not b!4073985) (not b!4073977) (not b!4073990) (not b!4073987) (not b!4073982) (not b!4073983) (not b!4073988) b_and!313139 (not b!4073986) (not b_next!114173) (not b!4073978) (not b!4073989) b_and!313141 (not b!4073992) b_and!313143)
(check-sat b_and!313145 (not b_next!114175) (not b_next!114169) (not b_next!114171) b_and!313141 b_and!313143 b_and!313139 (not b_next!114173))
