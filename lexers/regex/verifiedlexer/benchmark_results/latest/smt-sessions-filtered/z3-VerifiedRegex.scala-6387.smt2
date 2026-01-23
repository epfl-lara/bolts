; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!332318 () Bool)

(assert start!332318)

(declare-fun b!3583449 () Bool)

(declare-fun b_free!92201 () Bool)

(declare-fun b_next!92905 () Bool)

(assert (=> b!3583449 (= b_free!92201 (not b_next!92905))))

(declare-fun tp!1097145 () Bool)

(declare-fun b_and!258695 () Bool)

(assert (=> b!3583449 (= tp!1097145 b_and!258695)))

(declare-fun b_free!92203 () Bool)

(declare-fun b_next!92907 () Bool)

(assert (=> b!3583449 (= b_free!92203 (not b_next!92907))))

(declare-fun tp!1097140 () Bool)

(declare-fun b_and!258697 () Bool)

(assert (=> b!3583449 (= tp!1097140 b_and!258697)))

(declare-fun b!3583441 () Bool)

(declare-fun b_free!92205 () Bool)

(declare-fun b_next!92909 () Bool)

(assert (=> b!3583441 (= b_free!92205 (not b_next!92909))))

(declare-fun tp!1097144 () Bool)

(declare-fun b_and!258699 () Bool)

(assert (=> b!3583441 (= tp!1097144 b_and!258699)))

(declare-fun b_free!92207 () Bool)

(declare-fun b_next!92911 () Bool)

(assert (=> b!3583441 (= b_free!92207 (not b_next!92911))))

(declare-fun tp!1097148 () Bool)

(declare-fun b_and!258701 () Bool)

(assert (=> b!3583441 (= tp!1097148 b_and!258701)))

(declare-fun b!3583454 () Bool)

(declare-fun b_free!92209 () Bool)

(declare-fun b_next!92913 () Bool)

(assert (=> b!3583454 (= b_free!92209 (not b_next!92913))))

(declare-fun tp!1097143 () Bool)

(declare-fun b_and!258703 () Bool)

(assert (=> b!3583454 (= tp!1097143 b_and!258703)))

(declare-fun b_free!92211 () Bool)

(declare-fun b_next!92915 () Bool)

(assert (=> b!3583454 (= b_free!92211 (not b_next!92915))))

(declare-fun tp!1097147 () Bool)

(declare-fun b_and!258705 () Bool)

(assert (=> b!3583454 (= tp!1097147 b_and!258705)))

(declare-fun b!3583457 () Bool)

(declare-fun b_free!92213 () Bool)

(declare-fun b_next!92917 () Bool)

(assert (=> b!3583457 (= b_free!92213 (not b_next!92917))))

(declare-fun tp!1097138 () Bool)

(declare-fun b_and!258707 () Bool)

(assert (=> b!3583457 (= tp!1097138 b_and!258707)))

(declare-fun b_free!92215 () Bool)

(declare-fun b_next!92919 () Bool)

(assert (=> b!3583457 (= b_free!92215 (not b_next!92919))))

(declare-fun tp!1097146 () Bool)

(declare-fun b_and!258709 () Bool)

(assert (=> b!3583457 (= tp!1097146 b_and!258709)))

(declare-fun b!3583439 () Bool)

(declare-fun e!2217268 () Bool)

(assert (=> b!3583439 (= e!2217268 true)))

(declare-datatypes ((List!37786 0))(
  ( (Nil!37662) (Cons!37662 (h!43082 (_ BitVec 16)) (t!290415 List!37786)) )
))
(declare-datatypes ((TokenValue!5784 0))(
  ( (FloatLiteralValue!11568 (text!40933 List!37786)) (TokenValueExt!5783 (__x!23785 Int)) (Broken!28920 (value!178723 List!37786)) (Object!5907) (End!5784) (Def!5784) (Underscore!5784) (Match!5784) (Else!5784) (Error!5784) (Case!5784) (If!5784) (Extends!5784) (Abstract!5784) (Class!5784) (Val!5784) (DelimiterValue!11568 (del!5844 List!37786)) (KeywordValue!5790 (value!178724 List!37786)) (CommentValue!11568 (value!178725 List!37786)) (WhitespaceValue!11568 (value!178726 List!37786)) (IndentationValue!5784 (value!178727 List!37786)) (String!42253) (Int32!5784) (Broken!28921 (value!178728 List!37786)) (Boolean!5785) (Unit!53660) (OperatorValue!5787 (op!5844 List!37786)) (IdentifierValue!11568 (value!178729 List!37786)) (IdentifierValue!11569 (value!178730 List!37786)) (WhitespaceValue!11569 (value!178731 List!37786)) (True!11568) (False!11568) (Broken!28922 (value!178732 List!37786)) (Broken!28923 (value!178733 List!37786)) (True!11569) (RightBrace!5784) (RightBracket!5784) (Colon!5784) (Null!5784) (Comma!5784) (LeftBracket!5784) (False!11569) (LeftBrace!5784) (ImaginaryLiteralValue!5784 (text!40934 List!37786)) (StringLiteralValue!17352 (value!178734 List!37786)) (EOFValue!5784 (value!178735 List!37786)) (IdentValue!5784 (value!178736 List!37786)) (DelimiterValue!11569 (value!178737 List!37786)) (DedentValue!5784 (value!178738 List!37786)) (NewLineValue!5784 (value!178739 List!37786)) (IntegerValue!17352 (value!178740 (_ BitVec 32)) (text!40935 List!37786)) (IntegerValue!17353 (value!178741 Int) (text!40936 List!37786)) (Times!5784) (Or!5784) (Equal!5784) (Minus!5784) (Broken!28924 (value!178742 List!37786)) (And!5784) (Div!5784) (LessEqual!5784) (Mod!5784) (Concat!16097) (Not!5784) (Plus!5784) (SpaceValue!5784 (value!178743 List!37786)) (IntegerValue!17354 (value!178744 Int) (text!40937 List!37786)) (StringLiteralValue!17353 (text!40938 List!37786)) (FloatLiteralValue!11569 (text!40939 List!37786)) (BytesLiteralValue!5784 (value!178745 List!37786)) (CommentValue!11569 (value!178746 List!37786)) (StringLiteralValue!17354 (value!178747 List!37786)) (ErrorTokenValue!5784 (msg!5845 List!37786)) )
))
(declare-datatypes ((C!20812 0))(
  ( (C!20813 (val!12454 Int)) )
))
(declare-datatypes ((Regex!10313 0))(
  ( (ElementMatch!10313 (c!620751 C!20812)) (Concat!16098 (regOne!21138 Regex!10313) (regTwo!21138 Regex!10313)) (EmptyExpr!10313) (Star!10313 (reg!10642 Regex!10313)) (EmptyLang!10313) (Union!10313 (regOne!21139 Regex!10313) (regTwo!21139 Regex!10313)) )
))
(declare-datatypes ((String!42254 0))(
  ( (String!42255 (value!178748 String)) )
))
(declare-datatypes ((List!37787 0))(
  ( (Nil!37663) (Cons!37663 (h!43083 C!20812) (t!290416 List!37787)) )
))
(declare-datatypes ((IArray!22909 0))(
  ( (IArray!22910 (innerList!11512 List!37787)) )
))
(declare-datatypes ((Conc!11452 0))(
  ( (Node!11452 (left!29439 Conc!11452) (right!29769 Conc!11452) (csize!23134 Int) (cheight!11663 Int)) (Leaf!17840 (xs!14654 IArray!22909) (csize!23135 Int)) (Empty!11452) )
))
(declare-datatypes ((BalanceConc!22518 0))(
  ( (BalanceConc!22519 (c!620752 Conc!11452)) )
))
(declare-datatypes ((TokenValueInjection!10996 0))(
  ( (TokenValueInjection!10997 (toValue!7830 Int) (toChars!7689 Int)) )
))
(declare-datatypes ((Rule!10908 0))(
  ( (Rule!10909 (regex!5554 Regex!10313) (tag!6220 String!42254) (isSeparator!5554 Bool) (transformation!5554 TokenValueInjection!10996)) )
))
(declare-datatypes ((Token!10474 0))(
  ( (Token!10475 (value!178749 TokenValue!5784) (rule!8266 Rule!10908) (size!28696 Int) (originalCharacters!6268 List!37787)) )
))
(declare-datatypes ((tuple2!37550 0))(
  ( (tuple2!37551 (_1!21909 Token!10474) (_2!21909 List!37787)) )
))
(declare-datatypes ((Option!7742 0))(
  ( (None!7741) (Some!7741 (v!37395 tuple2!37550)) )
))
(declare-fun lt!1229063 () Option!7742)

(declare-datatypes ((LexerInterface!5143 0))(
  ( (LexerInterfaceExt!5140 (__x!23786 Int)) (Lexer!5141) )
))
(declare-fun thiss!23823 () LexerInterface!5143)

(declare-fun lt!1229064 () List!37787)

(declare-datatypes ((List!37788 0))(
  ( (Nil!37664) (Cons!37664 (h!43084 Rule!10908) (t!290417 List!37788)) )
))
(declare-fun rules!3307 () List!37788)

(declare-fun maxPrefix!2677 (LexerInterface!5143 List!37788 List!37787) Option!7742)

(assert (=> b!3583439 (= lt!1229063 (maxPrefix!2677 thiss!23823 rules!3307 lt!1229064))))

(declare-fun lt!1229062 () List!37787)

(declare-fun isPrefix!2917 (List!37787 List!37787) Bool)

(assert (=> b!3583439 (isPrefix!2917 lt!1229062 lt!1229064)))

(declare-datatypes ((Unit!53661 0))(
  ( (Unit!53662) )
))
(declare-fun lt!1229058 () Unit!53661)

(declare-fun suffix!1395 () List!37787)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1838 (List!37787 List!37787) Unit!53661)

(assert (=> b!3583439 (= lt!1229058 (lemmaConcatTwoListThenFirstIsPrefix!1838 lt!1229062 suffix!1395))))

(declare-fun ++!9366 (List!37787 List!37787) List!37787)

(assert (=> b!3583439 (= lt!1229064 (++!9366 lt!1229062 suffix!1395))))

(declare-fun b!3583440 () Bool)

(declare-fun res!1446019 () Bool)

(declare-fun e!2217264 () Bool)

(assert (=> b!3583440 (=> (not res!1446019) (not e!2217264))))

(declare-fun lt!1229061 () tuple2!37550)

(declare-fun isEmpty!22178 (List!37787) Bool)

(assert (=> b!3583440 (= res!1446019 (isEmpty!22178 (_2!21909 lt!1229061)))))

(declare-fun e!2217277 () Bool)

(assert (=> b!3583441 (= e!2217277 (and tp!1097144 tp!1097148))))

(declare-fun e!2217275 () Bool)

(declare-fun e!2217279 () Bool)

(declare-fun b!3583442 () Bool)

(declare-fun tp!1097141 () Bool)

(declare-fun inv!50977 (String!42254) Bool)

(declare-fun inv!50980 (TokenValueInjection!10996) Bool)

(assert (=> b!3583442 (= e!2217275 (and tp!1097141 (inv!50977 (tag!6220 (h!43084 rules!3307))) (inv!50980 (transformation!5554 (h!43084 rules!3307))) e!2217279))))

(declare-fun e!2217281 () Bool)

(declare-fun b!3583443 () Bool)

(declare-fun token!511 () Token!10474)

(declare-fun e!2217283 () Bool)

(declare-fun tp!1097150 () Bool)

(declare-fun inv!21 (TokenValue!5784) Bool)

(assert (=> b!3583443 (= e!2217281 (and (inv!21 (value!178749 token!511)) e!2217283 tp!1097150))))

(declare-fun b!3583444 () Bool)

(declare-fun tp!1097149 () Bool)

(assert (=> b!3583444 (= e!2217283 (and tp!1097149 (inv!50977 (tag!6220 (rule!8266 token!511))) (inv!50980 (transformation!5554 (rule!8266 token!511))) e!2217277))))

(declare-fun b!3583445 () Bool)

(declare-fun e!2217278 () Bool)

(declare-fun tp!1097151 () Bool)

(assert (=> b!3583445 (= e!2217278 (and e!2217275 tp!1097151))))

(declare-fun res!1446013 () Bool)

(declare-fun e!2217269 () Bool)

(assert (=> start!332318 (=> (not res!1446013) (not e!2217269))))

(get-info :version)

(assert (=> start!332318 (= res!1446013 ((_ is Lexer!5141) thiss!23823))))

(assert (=> start!332318 e!2217269))

(assert (=> start!332318 e!2217278))

(declare-fun e!2217273 () Bool)

(assert (=> start!332318 e!2217273))

(assert (=> start!332318 true))

(declare-fun inv!50981 (Token!10474) Bool)

(assert (=> start!332318 (and (inv!50981 token!511) e!2217281)))

(declare-fun e!2217274 () Bool)

(assert (=> start!332318 e!2217274))

(declare-fun e!2217267 () Bool)

(assert (=> start!332318 e!2217267))

(declare-fun b!3583446 () Bool)

(declare-fun e!2217284 () Bool)

(assert (=> b!3583446 (= e!2217284 e!2217268)))

(declare-fun res!1446012 () Bool)

(assert (=> b!3583446 (=> res!1446012 e!2217268)))

(declare-fun rule!403 () Rule!10908)

(declare-fun lt!1229060 () C!20812)

(declare-fun contains!7167 (List!37787 C!20812) Bool)

(declare-fun usedCharacters!768 (Regex!10313) List!37787)

(assert (=> b!3583446 (= res!1446012 (contains!7167 (usedCharacters!768 (regex!5554 rule!403)) lt!1229060))))

(declare-fun head!7471 (List!37787) C!20812)

(assert (=> b!3583446 (= lt!1229060 (head!7471 suffix!1395))))

(declare-fun b!3583447 () Bool)

(declare-fun res!1446023 () Bool)

(assert (=> b!3583447 (=> (not res!1446023) (not e!2217269))))

(declare-fun anOtherTypeRule!33 () Rule!10908)

(assert (=> b!3583447 (= res!1446023 (not (= (isSeparator!5554 anOtherTypeRule!33) (isSeparator!5554 rule!403))))))

(declare-fun b!3583448 () Bool)

(declare-fun res!1446015 () Bool)

(assert (=> b!3583448 (=> (not res!1446015) (not e!2217269))))

(declare-fun isEmpty!22179 (List!37788) Bool)

(assert (=> b!3583448 (= res!1446015 (not (isEmpty!22179 rules!3307)))))

(declare-fun e!2217271 () Bool)

(assert (=> b!3583449 (= e!2217271 (and tp!1097145 tp!1097140))))

(declare-fun b!3583450 () Bool)

(declare-fun e!2217266 () Bool)

(assert (=> b!3583450 (= e!2217269 e!2217266)))

(declare-fun res!1446014 () Bool)

(assert (=> b!3583450 (=> (not res!1446014) (not e!2217266))))

(declare-fun lt!1229059 () Option!7742)

(declare-fun isDefined!5976 (Option!7742) Bool)

(assert (=> b!3583450 (= res!1446014 (isDefined!5976 lt!1229059))))

(assert (=> b!3583450 (= lt!1229059 (maxPrefix!2677 thiss!23823 rules!3307 lt!1229062))))

(declare-fun list!13835 (BalanceConc!22518) List!37787)

(declare-fun charsOf!3568 (Token!10474) BalanceConc!22518)

(assert (=> b!3583450 (= lt!1229062 (list!13835 (charsOf!3568 token!511)))))

(declare-fun b!3583451 () Bool)

(assert (=> b!3583451 (= e!2217264 (not e!2217284))))

(declare-fun res!1446024 () Bool)

(assert (=> b!3583451 (=> res!1446024 e!2217284)))

(declare-fun matchR!4882 (Regex!10313 List!37787) Bool)

(assert (=> b!3583451 (= res!1446024 (not (matchR!4882 (regex!5554 rule!403) lt!1229062)))))

(declare-fun ruleValid!1819 (LexerInterface!5143 Rule!10908) Bool)

(assert (=> b!3583451 (ruleValid!1819 thiss!23823 rule!403)))

(declare-fun lt!1229057 () Unit!53661)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!974 (LexerInterface!5143 Rule!10908 List!37788) Unit!53661)

(assert (=> b!3583451 (= lt!1229057 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!974 thiss!23823 rule!403 rules!3307))))

(declare-fun tp!1097142 () Bool)

(declare-fun b!3583452 () Bool)

(assert (=> b!3583452 (= e!2217267 (and tp!1097142 (inv!50977 (tag!6220 anOtherTypeRule!33)) (inv!50980 (transformation!5554 anOtherTypeRule!33)) e!2217271))))

(declare-fun b!3583453 () Bool)

(assert (=> b!3583453 (= e!2217266 e!2217264)))

(declare-fun res!1446020 () Bool)

(assert (=> b!3583453 (=> (not res!1446020) (not e!2217264))))

(assert (=> b!3583453 (= res!1446020 (= (_1!21909 lt!1229061) token!511))))

(declare-fun get!12131 (Option!7742) tuple2!37550)

(assert (=> b!3583453 (= lt!1229061 (get!12131 lt!1229059))))

(declare-fun e!2217276 () Bool)

(assert (=> b!3583454 (= e!2217276 (and tp!1097143 tp!1097147))))

(declare-fun tp!1097152 () Bool)

(declare-fun b!3583455 () Bool)

(assert (=> b!3583455 (= e!2217274 (and tp!1097152 (inv!50977 (tag!6220 rule!403)) (inv!50980 (transformation!5554 rule!403)) e!2217276))))

(declare-fun b!3583456 () Bool)

(declare-fun res!1446011 () Bool)

(assert (=> b!3583456 (=> res!1446011 e!2217284)))

(assert (=> b!3583456 (= res!1446011 (isEmpty!22178 suffix!1395))))

(assert (=> b!3583457 (= e!2217279 (and tp!1097138 tp!1097146))))

(declare-fun b!3583458 () Bool)

(declare-fun res!1446018 () Bool)

(assert (=> b!3583458 (=> (not res!1446018) (not e!2217269))))

(declare-fun contains!7168 (List!37788 Rule!10908) Bool)

(assert (=> b!3583458 (= res!1446018 (contains!7168 rules!3307 rule!403))))

(declare-fun b!3583459 () Bool)

(declare-fun res!1446017 () Bool)

(assert (=> b!3583459 (=> (not res!1446017) (not e!2217269))))

(declare-fun rulesInvariant!4540 (LexerInterface!5143 List!37788) Bool)

(assert (=> b!3583459 (= res!1446017 (rulesInvariant!4540 thiss!23823 rules!3307))))

(declare-fun b!3583460 () Bool)

(declare-fun res!1446010 () Bool)

(assert (=> b!3583460 (=> (not res!1446010) (not e!2217264))))

(assert (=> b!3583460 (= res!1446010 (= (rule!8266 token!511) rule!403))))

(declare-fun b!3583461 () Bool)

(declare-fun res!1446022 () Bool)

(assert (=> b!3583461 (=> (not res!1446022) (not e!2217269))))

(assert (=> b!3583461 (= res!1446022 (contains!7168 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3583462 () Bool)

(declare-fun res!1446016 () Bool)

(assert (=> b!3583462 (=> res!1446016 e!2217268)))

(declare-fun sepAndNonSepRulesDisjointChars!1724 (List!37788 List!37788) Bool)

(assert (=> b!3583462 (= res!1446016 (not (sepAndNonSepRulesDisjointChars!1724 rules!3307 rules!3307)))))

(declare-fun b!3583463 () Bool)

(declare-fun tp_is_empty!17709 () Bool)

(declare-fun tp!1097139 () Bool)

(assert (=> b!3583463 (= e!2217273 (and tp_is_empty!17709 tp!1097139))))

(declare-fun b!3583464 () Bool)

(declare-fun res!1446021 () Bool)

(assert (=> b!3583464 (=> res!1446021 e!2217268)))

(assert (=> b!3583464 (= res!1446021 (not (contains!7167 (usedCharacters!768 (regex!5554 anOtherTypeRule!33)) lt!1229060)))))

(assert (= (and start!332318 res!1446013) b!3583448))

(assert (= (and b!3583448 res!1446015) b!3583459))

(assert (= (and b!3583459 res!1446017) b!3583458))

(assert (= (and b!3583458 res!1446018) b!3583461))

(assert (= (and b!3583461 res!1446022) b!3583447))

(assert (= (and b!3583447 res!1446023) b!3583450))

(assert (= (and b!3583450 res!1446014) b!3583453))

(assert (= (and b!3583453 res!1446020) b!3583440))

(assert (= (and b!3583440 res!1446019) b!3583460))

(assert (= (and b!3583460 res!1446010) b!3583451))

(assert (= (and b!3583451 (not res!1446024)) b!3583456))

(assert (= (and b!3583456 (not res!1446011)) b!3583446))

(assert (= (and b!3583446 (not res!1446012)) b!3583464))

(assert (= (and b!3583464 (not res!1446021)) b!3583462))

(assert (= (and b!3583462 (not res!1446016)) b!3583439))

(assert (= b!3583442 b!3583457))

(assert (= b!3583445 b!3583442))

(assert (= (and start!332318 ((_ is Cons!37664) rules!3307)) b!3583445))

(assert (= (and start!332318 ((_ is Cons!37663) suffix!1395)) b!3583463))

(assert (= b!3583444 b!3583441))

(assert (= b!3583443 b!3583444))

(assert (= start!332318 b!3583443))

(assert (= b!3583455 b!3583454))

(assert (= start!332318 b!3583455))

(assert (= b!3583452 b!3583449))

(assert (= start!332318 b!3583452))

(declare-fun m!4076549 () Bool)

(assert (=> b!3583448 m!4076549))

(declare-fun m!4076551 () Bool)

(assert (=> b!3583450 m!4076551))

(declare-fun m!4076553 () Bool)

(assert (=> b!3583450 m!4076553))

(declare-fun m!4076555 () Bool)

(assert (=> b!3583450 m!4076555))

(assert (=> b!3583450 m!4076555))

(declare-fun m!4076557 () Bool)

(assert (=> b!3583450 m!4076557))

(declare-fun m!4076559 () Bool)

(assert (=> b!3583442 m!4076559))

(declare-fun m!4076561 () Bool)

(assert (=> b!3583442 m!4076561))

(declare-fun m!4076563 () Bool)

(assert (=> b!3583464 m!4076563))

(assert (=> b!3583464 m!4076563))

(declare-fun m!4076565 () Bool)

(assert (=> b!3583464 m!4076565))

(declare-fun m!4076567 () Bool)

(assert (=> b!3583456 m!4076567))

(declare-fun m!4076569 () Bool)

(assert (=> b!3583461 m!4076569))

(declare-fun m!4076571 () Bool)

(assert (=> b!3583439 m!4076571))

(declare-fun m!4076573 () Bool)

(assert (=> b!3583439 m!4076573))

(declare-fun m!4076575 () Bool)

(assert (=> b!3583439 m!4076575))

(declare-fun m!4076577 () Bool)

(assert (=> b!3583439 m!4076577))

(declare-fun m!4076579 () Bool)

(assert (=> b!3583451 m!4076579))

(declare-fun m!4076581 () Bool)

(assert (=> b!3583451 m!4076581))

(declare-fun m!4076583 () Bool)

(assert (=> b!3583451 m!4076583))

(declare-fun m!4076585 () Bool)

(assert (=> start!332318 m!4076585))

(declare-fun m!4076587 () Bool)

(assert (=> b!3583452 m!4076587))

(declare-fun m!4076589 () Bool)

(assert (=> b!3583452 m!4076589))

(declare-fun m!4076591 () Bool)

(assert (=> b!3583453 m!4076591))

(declare-fun m!4076593 () Bool)

(assert (=> b!3583440 m!4076593))

(declare-fun m!4076595 () Bool)

(assert (=> b!3583458 m!4076595))

(declare-fun m!4076597 () Bool)

(assert (=> b!3583444 m!4076597))

(declare-fun m!4076599 () Bool)

(assert (=> b!3583444 m!4076599))

(declare-fun m!4076601 () Bool)

(assert (=> b!3583459 m!4076601))

(declare-fun m!4076603 () Bool)

(assert (=> b!3583455 m!4076603))

(declare-fun m!4076605 () Bool)

(assert (=> b!3583455 m!4076605))

(declare-fun m!4076607 () Bool)

(assert (=> b!3583443 m!4076607))

(declare-fun m!4076609 () Bool)

(assert (=> b!3583446 m!4076609))

(assert (=> b!3583446 m!4076609))

(declare-fun m!4076611 () Bool)

(assert (=> b!3583446 m!4076611))

(declare-fun m!4076613 () Bool)

(assert (=> b!3583446 m!4076613))

(declare-fun m!4076615 () Bool)

(assert (=> b!3583462 m!4076615))

(check-sat (not b!3583445) (not b_next!92911) (not b_next!92905) b_and!258705 (not b!3583446) (not start!332318) (not b_next!92915) (not b!3583464) (not b!3583444) b_and!258707 (not b!3583452) (not b!3583455) b_and!258709 (not b!3583462) b_and!258697 (not b!3583442) (not b_next!92919) (not b!3583448) b_and!258695 (not b!3583456) (not b_next!92909) (not b!3583439) (not b!3583459) (not b!3583451) (not b_next!92917) (not b!3583453) b_and!258703 (not b!3583461) (not b_next!92907) (not b!3583458) (not b!3583450) (not b!3583443) tp_is_empty!17709 b_and!258701 (not b!3583463) (not b!3583440) b_and!258699 (not b_next!92913))
(check-sat b_and!258697 (not b_next!92911) (not b_next!92905) b_and!258705 (not b_next!92919) (not b_next!92915) (not b_next!92917) b_and!258703 (not b_next!92907) b_and!258707 b_and!258701 b_and!258709 b_and!258695 (not b_next!92909) b_and!258699 (not b_next!92913))
