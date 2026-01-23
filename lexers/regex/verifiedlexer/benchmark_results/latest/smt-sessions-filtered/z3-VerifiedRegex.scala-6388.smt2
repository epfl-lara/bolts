; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!332322 () Bool)

(assert start!332322)

(declare-fun b!3583618 () Bool)

(declare-fun b_free!92233 () Bool)

(declare-fun b_next!92937 () Bool)

(assert (=> b!3583618 (= b_free!92233 (not b_next!92937))))

(declare-fun tp!1097231 () Bool)

(declare-fun b_and!258727 () Bool)

(assert (=> b!3583618 (= tp!1097231 b_and!258727)))

(declare-fun b_free!92235 () Bool)

(declare-fun b_next!92939 () Bool)

(assert (=> b!3583618 (= b_free!92235 (not b_next!92939))))

(declare-fun tp!1097237 () Bool)

(declare-fun b_and!258729 () Bool)

(assert (=> b!3583618 (= tp!1097237 b_and!258729)))

(declare-fun b!3583605 () Bool)

(declare-fun b_free!92237 () Bool)

(declare-fun b_next!92941 () Bool)

(assert (=> b!3583605 (= b_free!92237 (not b_next!92941))))

(declare-fun tp!1097239 () Bool)

(declare-fun b_and!258731 () Bool)

(assert (=> b!3583605 (= tp!1097239 b_and!258731)))

(declare-fun b_free!92239 () Bool)

(declare-fun b_next!92943 () Bool)

(assert (=> b!3583605 (= b_free!92239 (not b_next!92943))))

(declare-fun tp!1097234 () Bool)

(declare-fun b_and!258733 () Bool)

(assert (=> b!3583605 (= tp!1097234 b_and!258733)))

(declare-fun b!3583616 () Bool)

(declare-fun b_free!92241 () Bool)

(declare-fun b_next!92945 () Bool)

(assert (=> b!3583616 (= b_free!92241 (not b_next!92945))))

(declare-fun tp!1097229 () Bool)

(declare-fun b_and!258735 () Bool)

(assert (=> b!3583616 (= tp!1097229 b_and!258735)))

(declare-fun b_free!92243 () Bool)

(declare-fun b_next!92947 () Bool)

(assert (=> b!3583616 (= b_free!92243 (not b_next!92947))))

(declare-fun tp!1097238 () Bool)

(declare-fun b_and!258737 () Bool)

(assert (=> b!3583616 (= tp!1097238 b_and!258737)))

(declare-fun b!3583620 () Bool)

(declare-fun b_free!92245 () Bool)

(declare-fun b_next!92949 () Bool)

(assert (=> b!3583620 (= b_free!92245 (not b_next!92949))))

(declare-fun tp!1097240 () Bool)

(declare-fun b_and!258739 () Bool)

(assert (=> b!3583620 (= tp!1097240 b_and!258739)))

(declare-fun b_free!92247 () Bool)

(declare-fun b_next!92951 () Bool)

(assert (=> b!3583620 (= b_free!92247 (not b_next!92951))))

(declare-fun tp!1097232 () Bool)

(declare-fun b_and!258741 () Bool)

(assert (=> b!3583620 (= tp!1097232 b_and!258741)))

(declare-fun b!3583595 () Bool)

(declare-fun res!1446104 () Bool)

(declare-fun e!2217406 () Bool)

(assert (=> b!3583595 (=> res!1446104 e!2217406)))

(declare-datatypes ((C!20816 0))(
  ( (C!20817 (val!12456 Int)) )
))
(declare-datatypes ((List!37793 0))(
  ( (Nil!37669) (Cons!37669 (h!43089 C!20816) (t!290422 List!37793)) )
))
(declare-fun suffix!1395 () List!37793)

(declare-fun isEmpty!22183 (List!37793) Bool)

(assert (=> b!3583595 (= res!1446104 (isEmpty!22183 suffix!1395))))

(declare-fun b!3583596 () Bool)

(declare-fun res!1446102 () Bool)

(declare-fun e!2217393 () Bool)

(assert (=> b!3583596 (=> (not res!1446102) (not e!2217393))))

(declare-datatypes ((LexerInterface!5145 0))(
  ( (LexerInterfaceExt!5142 (__x!23789 Int)) (Lexer!5143) )
))
(declare-fun thiss!23823 () LexerInterface!5145)

(declare-datatypes ((List!37794 0))(
  ( (Nil!37670) (Cons!37670 (h!43090 (_ BitVec 16)) (t!290423 List!37794)) )
))
(declare-datatypes ((TokenValue!5786 0))(
  ( (FloatLiteralValue!11572 (text!40947 List!37794)) (TokenValueExt!5785 (__x!23790 Int)) (Broken!28930 (value!178780 List!37794)) (Object!5909) (End!5786) (Def!5786) (Underscore!5786) (Match!5786) (Else!5786) (Error!5786) (Case!5786) (If!5786) (Extends!5786) (Abstract!5786) (Class!5786) (Val!5786) (DelimiterValue!11572 (del!5846 List!37794)) (KeywordValue!5792 (value!178781 List!37794)) (CommentValue!11572 (value!178782 List!37794)) (WhitespaceValue!11572 (value!178783 List!37794)) (IndentationValue!5786 (value!178784 List!37794)) (String!42263) (Int32!5786) (Broken!28931 (value!178785 List!37794)) (Boolean!5787) (Unit!53666) (OperatorValue!5789 (op!5846 List!37794)) (IdentifierValue!11572 (value!178786 List!37794)) (IdentifierValue!11573 (value!178787 List!37794)) (WhitespaceValue!11573 (value!178788 List!37794)) (True!11572) (False!11572) (Broken!28932 (value!178789 List!37794)) (Broken!28933 (value!178790 List!37794)) (True!11573) (RightBrace!5786) (RightBracket!5786) (Colon!5786) (Null!5786) (Comma!5786) (LeftBracket!5786) (False!11573) (LeftBrace!5786) (ImaginaryLiteralValue!5786 (text!40948 List!37794)) (StringLiteralValue!17358 (value!178791 List!37794)) (EOFValue!5786 (value!178792 List!37794)) (IdentValue!5786 (value!178793 List!37794)) (DelimiterValue!11573 (value!178794 List!37794)) (DedentValue!5786 (value!178795 List!37794)) (NewLineValue!5786 (value!178796 List!37794)) (IntegerValue!17358 (value!178797 (_ BitVec 32)) (text!40949 List!37794)) (IntegerValue!17359 (value!178798 Int) (text!40950 List!37794)) (Times!5786) (Or!5786) (Equal!5786) (Minus!5786) (Broken!28934 (value!178799 List!37794)) (And!5786) (Div!5786) (LessEqual!5786) (Mod!5786) (Concat!16101) (Not!5786) (Plus!5786) (SpaceValue!5786 (value!178800 List!37794)) (IntegerValue!17360 (value!178801 Int) (text!40951 List!37794)) (StringLiteralValue!17359 (text!40952 List!37794)) (FloatLiteralValue!11573 (text!40953 List!37794)) (BytesLiteralValue!5786 (value!178802 List!37794)) (CommentValue!11573 (value!178803 List!37794)) (StringLiteralValue!17360 (value!178804 List!37794)) (ErrorTokenValue!5786 (msg!5847 List!37794)) )
))
(declare-datatypes ((Regex!10315 0))(
  ( (ElementMatch!10315 (c!620758 C!20816)) (Concat!16102 (regOne!21142 Regex!10315) (regTwo!21142 Regex!10315)) (EmptyExpr!10315) (Star!10315 (reg!10644 Regex!10315)) (EmptyLang!10315) (Union!10315 (regOne!21143 Regex!10315) (regTwo!21143 Regex!10315)) )
))
(declare-datatypes ((String!42264 0))(
  ( (String!42265 (value!178805 String)) )
))
(declare-datatypes ((IArray!22915 0))(
  ( (IArray!22916 (innerList!11515 List!37793)) )
))
(declare-datatypes ((Conc!11455 0))(
  ( (Node!11455 (left!29443 Conc!11455) (right!29773 Conc!11455) (csize!23140 Int) (cheight!11666 Int)) (Leaf!17844 (xs!14657 IArray!22915) (csize!23141 Int)) (Empty!11455) )
))
(declare-datatypes ((BalanceConc!22524 0))(
  ( (BalanceConc!22525 (c!620759 Conc!11455)) )
))
(declare-datatypes ((TokenValueInjection!11000 0))(
  ( (TokenValueInjection!11001 (toValue!7832 Int) (toChars!7691 Int)) )
))
(declare-datatypes ((Rule!10912 0))(
  ( (Rule!10913 (regex!5556 Regex!10315) (tag!6222 String!42264) (isSeparator!5556 Bool) (transformation!5556 TokenValueInjection!11000)) )
))
(declare-datatypes ((List!37795 0))(
  ( (Nil!37671) (Cons!37671 (h!43091 Rule!10912) (t!290424 List!37795)) )
))
(declare-fun rules!3307 () List!37795)

(declare-fun rulesInvariant!4542 (LexerInterface!5145 List!37795) Bool)

(assert (=> b!3583596 (= res!1446102 (rulesInvariant!4542 thiss!23823 rules!3307))))

(declare-fun b!3583597 () Bool)

(declare-fun e!2217395 () Bool)

(declare-fun e!2217399 () Bool)

(declare-fun tp!1097235 () Bool)

(assert (=> b!3583597 (= e!2217395 (and e!2217399 tp!1097235))))

(declare-fun e!2217408 () Bool)

(declare-fun b!3583598 () Bool)

(declare-fun e!2217391 () Bool)

(declare-fun tp!1097233 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!10912)

(declare-fun inv!50984 (String!42264) Bool)

(declare-fun inv!50987 (TokenValueInjection!11000) Bool)

(assert (=> b!3583598 (= e!2217391 (and tp!1097233 (inv!50984 (tag!6222 anOtherTypeRule!33)) (inv!50987 (transformation!5556 anOtherTypeRule!33)) e!2217408))))

(declare-fun res!1446106 () Bool)

(assert (=> start!332322 (=> (not res!1446106) (not e!2217393))))

(get-info :version)

(assert (=> start!332322 (= res!1446106 ((_ is Lexer!5143) thiss!23823))))

(assert (=> start!332322 e!2217393))

(assert (=> start!332322 e!2217395))

(declare-fun e!2217404 () Bool)

(assert (=> start!332322 e!2217404))

(assert (=> start!332322 true))

(declare-datatypes ((Token!10478 0))(
  ( (Token!10479 (value!178806 TokenValue!5786) (rule!8268 Rule!10912) (size!28698 Int) (originalCharacters!6270 List!37793)) )
))
(declare-fun token!511 () Token!10478)

(declare-fun e!2217405 () Bool)

(declare-fun inv!50988 (Token!10478) Bool)

(assert (=> start!332322 (and (inv!50988 token!511) e!2217405)))

(declare-fun e!2217409 () Bool)

(assert (=> start!332322 e!2217409))

(assert (=> start!332322 e!2217391))

(declare-fun b!3583599 () Bool)

(declare-fun e!2217407 () Bool)

(assert (=> b!3583599 (= e!2217406 e!2217407)))

(declare-fun res!1446111 () Bool)

(assert (=> b!3583599 (=> res!1446111 e!2217407)))

(declare-fun rule!403 () Rule!10912)

(declare-fun lt!1229106 () C!20816)

(declare-fun contains!7171 (List!37793 C!20816) Bool)

(declare-fun usedCharacters!770 (Regex!10315) List!37793)

(assert (=> b!3583599 (= res!1446111 (contains!7171 (usedCharacters!770 (regex!5556 rule!403)) lt!1229106))))

(declare-fun head!7473 (List!37793) C!20816)

(assert (=> b!3583599 (= lt!1229106 (head!7473 suffix!1395))))

(declare-fun b!3583600 () Bool)

(declare-fun e!2217402 () Bool)

(declare-fun e!2217392 () Bool)

(assert (=> b!3583600 (= e!2217402 e!2217392)))

(declare-fun res!1446110 () Bool)

(assert (=> b!3583600 (=> (not res!1446110) (not e!2217392))))

(declare-datatypes ((tuple2!37556 0))(
  ( (tuple2!37557 (_1!21912 Token!10478) (_2!21912 List!37793)) )
))
(declare-fun lt!1229112 () tuple2!37556)

(assert (=> b!3583600 (= res!1446110 (= (_1!21912 lt!1229112) token!511))))

(declare-datatypes ((Option!7744 0))(
  ( (None!7743) (Some!7743 (v!37397 tuple2!37556)) )
))
(declare-fun lt!1229105 () Option!7744)

(declare-fun get!12134 (Option!7744) tuple2!37556)

(assert (=> b!3583600 (= lt!1229112 (get!12134 lt!1229105))))

(declare-fun b!3583601 () Bool)

(declare-fun res!1446112 () Bool)

(assert (=> b!3583601 (=> (not res!1446112) (not e!2217393))))

(assert (=> b!3583601 (= res!1446112 (not (= (isSeparator!5556 anOtherTypeRule!33) (isSeparator!5556 rule!403))))))

(declare-fun b!3583602 () Bool)

(declare-fun res!1446109 () Bool)

(assert (=> b!3583602 (=> (not res!1446109) (not e!2217392))))

(assert (=> b!3583602 (= res!1446109 (= (rule!8268 token!511) rule!403))))

(declare-fun b!3583603 () Bool)

(declare-fun res!1446100 () Bool)

(assert (=> b!3583603 (=> (not res!1446100) (not e!2217392))))

(assert (=> b!3583603 (= res!1446100 (isEmpty!22183 (_2!21912 lt!1229112)))))

(declare-fun b!3583604 () Bool)

(declare-fun res!1446113 () Bool)

(assert (=> b!3583604 (=> (not res!1446113) (not e!2217393))))

(declare-fun contains!7172 (List!37795 Rule!10912) Bool)

(assert (=> b!3583604 (= res!1446113 (contains!7172 rules!3307 rule!403))))

(assert (=> b!3583605 (= e!2217408 (and tp!1097239 tp!1097234))))

(declare-fun b!3583606 () Bool)

(declare-fun tp_is_empty!17713 () Bool)

(declare-fun tp!1097242 () Bool)

(assert (=> b!3583606 (= e!2217404 (and tp_is_empty!17713 tp!1097242))))

(declare-fun b!3583607 () Bool)

(declare-fun res!1446114 () Bool)

(assert (=> b!3583607 (=> (not res!1446114) (not e!2217393))))

(assert (=> b!3583607 (= res!1446114 (contains!7172 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3583608 () Bool)

(assert (=> b!3583608 (= e!2217392 (not e!2217406))))

(declare-fun res!1446108 () Bool)

(assert (=> b!3583608 (=> res!1446108 e!2217406)))

(declare-fun lt!1229110 () List!37793)

(declare-fun matchR!4884 (Regex!10315 List!37793) Bool)

(assert (=> b!3583608 (= res!1446108 (not (matchR!4884 (regex!5556 rule!403) lt!1229110)))))

(declare-fun ruleValid!1821 (LexerInterface!5145 Rule!10912) Bool)

(assert (=> b!3583608 (ruleValid!1821 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53667 0))(
  ( (Unit!53668) )
))
(declare-fun lt!1229111 () Unit!53667)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!976 (LexerInterface!5145 Rule!10912 List!37795) Unit!53667)

(assert (=> b!3583608 (= lt!1229111 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!976 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3583609 () Bool)

(declare-fun res!1446101 () Bool)

(assert (=> b!3583609 (=> (not res!1446101) (not e!2217393))))

(declare-fun isEmpty!22184 (List!37795) Bool)

(assert (=> b!3583609 (= res!1446101 (not (isEmpty!22184 rules!3307)))))

(declare-fun b!3583610 () Bool)

(declare-datatypes ((List!37796 0))(
  ( (Nil!37672) (Cons!37672 (h!43092 Token!10478) (t!290425 List!37796)) )
))
(declare-datatypes ((IArray!22917 0))(
  ( (IArray!22918 (innerList!11516 List!37796)) )
))
(declare-datatypes ((Conc!11456 0))(
  ( (Node!11456 (left!29444 Conc!11456) (right!29774 Conc!11456) (csize!23142 Int) (cheight!11667 Int)) (Leaf!17845 (xs!14658 IArray!22917) (csize!23143 Int)) (Empty!11456) )
))
(declare-datatypes ((BalanceConc!22526 0))(
  ( (BalanceConc!22527 (c!620760 Conc!11456)) )
))
(declare-fun isEmpty!22185 (BalanceConc!22526) Bool)

(declare-datatypes ((tuple2!37558 0))(
  ( (tuple2!37559 (_1!21913 BalanceConc!22526) (_2!21913 BalanceConc!22524)) )
))
(declare-fun lex!2439 (LexerInterface!5145 List!37795 BalanceConc!22524) tuple2!37558)

(declare-fun seqFromList!4111 (List!37793) BalanceConc!22524)

(assert (=> b!3583610 (= e!2217407 (not (isEmpty!22185 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))))))

(declare-fun lt!1229108 () Option!7744)

(declare-fun lt!1229107 () List!37793)

(declare-fun maxPrefix!2679 (LexerInterface!5145 List!37795 List!37793) Option!7744)

(assert (=> b!3583610 (= lt!1229108 (maxPrefix!2679 thiss!23823 rules!3307 lt!1229107))))

(declare-fun isPrefix!2919 (List!37793 List!37793) Bool)

(assert (=> b!3583610 (isPrefix!2919 lt!1229110 lt!1229107)))

(declare-fun lt!1229109 () Unit!53667)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1840 (List!37793 List!37793) Unit!53667)

(assert (=> b!3583610 (= lt!1229109 (lemmaConcatTwoListThenFirstIsPrefix!1840 lt!1229110 suffix!1395))))

(declare-fun ++!9368 (List!37793 List!37793) List!37793)

(assert (=> b!3583610 (= lt!1229107 (++!9368 lt!1229110 suffix!1395))))

(declare-fun b!3583611 () Bool)

(assert (=> b!3583611 (= e!2217393 e!2217402)))

(declare-fun res!1446103 () Bool)

(assert (=> b!3583611 (=> (not res!1446103) (not e!2217402))))

(declare-fun isDefined!5978 (Option!7744) Bool)

(assert (=> b!3583611 (= res!1446103 (isDefined!5978 lt!1229105))))

(assert (=> b!3583611 (= lt!1229105 (maxPrefix!2679 thiss!23823 rules!3307 lt!1229110))))

(declare-fun list!13837 (BalanceConc!22524) List!37793)

(declare-fun charsOf!3570 (Token!10478) BalanceConc!22524)

(assert (=> b!3583611 (= lt!1229110 (list!13837 (charsOf!3570 token!511)))))

(declare-fun e!2217396 () Bool)

(declare-fun tp!1097228 () Bool)

(declare-fun b!3583612 () Bool)

(assert (=> b!3583612 (= e!2217409 (and tp!1097228 (inv!50984 (tag!6222 rule!403)) (inv!50987 (transformation!5556 rule!403)) e!2217396))))

(declare-fun e!2217394 () Bool)

(declare-fun tp!1097241 () Bool)

(declare-fun b!3583613 () Bool)

(declare-fun inv!21 (TokenValue!5786) Bool)

(assert (=> b!3583613 (= e!2217405 (and (inv!21 (value!178806 token!511)) e!2217394 tp!1097241))))

(declare-fun b!3583614 () Bool)

(declare-fun res!1446105 () Bool)

(assert (=> b!3583614 (=> res!1446105 e!2217407)))

(declare-fun sepAndNonSepRulesDisjointChars!1726 (List!37795 List!37795) Bool)

(assert (=> b!3583614 (= res!1446105 (not (sepAndNonSepRulesDisjointChars!1726 rules!3307 rules!3307)))))

(declare-fun b!3583615 () Bool)

(declare-fun tp!1097236 () Bool)

(declare-fun e!2217398 () Bool)

(assert (=> b!3583615 (= e!2217399 (and tp!1097236 (inv!50984 (tag!6222 (h!43091 rules!3307))) (inv!50987 (transformation!5556 (h!43091 rules!3307))) e!2217398))))

(declare-fun e!2217397 () Bool)

(assert (=> b!3583616 (= e!2217397 (and tp!1097229 tp!1097238))))

(declare-fun b!3583617 () Bool)

(declare-fun tp!1097230 () Bool)

(assert (=> b!3583617 (= e!2217394 (and tp!1097230 (inv!50984 (tag!6222 (rule!8268 token!511))) (inv!50987 (transformation!5556 (rule!8268 token!511))) e!2217397))))

(assert (=> b!3583618 (= e!2217398 (and tp!1097231 tp!1097237))))

(declare-fun b!3583619 () Bool)

(declare-fun res!1446107 () Bool)

(assert (=> b!3583619 (=> res!1446107 e!2217407)))

(assert (=> b!3583619 (= res!1446107 (not (contains!7171 (usedCharacters!770 (regex!5556 anOtherTypeRule!33)) lt!1229106)))))

(assert (=> b!3583620 (= e!2217396 (and tp!1097240 tp!1097232))))

(assert (= (and start!332322 res!1446106) b!3583609))

(assert (= (and b!3583609 res!1446101) b!3583596))

(assert (= (and b!3583596 res!1446102) b!3583604))

(assert (= (and b!3583604 res!1446113) b!3583607))

(assert (= (and b!3583607 res!1446114) b!3583601))

(assert (= (and b!3583601 res!1446112) b!3583611))

(assert (= (and b!3583611 res!1446103) b!3583600))

(assert (= (and b!3583600 res!1446110) b!3583603))

(assert (= (and b!3583603 res!1446100) b!3583602))

(assert (= (and b!3583602 res!1446109) b!3583608))

(assert (= (and b!3583608 (not res!1446108)) b!3583595))

(assert (= (and b!3583595 (not res!1446104)) b!3583599))

(assert (= (and b!3583599 (not res!1446111)) b!3583619))

(assert (= (and b!3583619 (not res!1446107)) b!3583614))

(assert (= (and b!3583614 (not res!1446105)) b!3583610))

(assert (= b!3583615 b!3583618))

(assert (= b!3583597 b!3583615))

(assert (= (and start!332322 ((_ is Cons!37671) rules!3307)) b!3583597))

(assert (= (and start!332322 ((_ is Cons!37669) suffix!1395)) b!3583606))

(assert (= b!3583617 b!3583616))

(assert (= b!3583613 b!3583617))

(assert (= start!332322 b!3583613))

(assert (= b!3583612 b!3583620))

(assert (= start!332322 b!3583612))

(assert (= b!3583598 b!3583605))

(assert (= start!332322 b!3583598))

(declare-fun m!4076691 () Bool)

(assert (=> b!3583611 m!4076691))

(declare-fun m!4076693 () Bool)

(assert (=> b!3583611 m!4076693))

(declare-fun m!4076695 () Bool)

(assert (=> b!3583611 m!4076695))

(assert (=> b!3583611 m!4076695))

(declare-fun m!4076697 () Bool)

(assert (=> b!3583611 m!4076697))

(declare-fun m!4076699 () Bool)

(assert (=> b!3583612 m!4076699))

(declare-fun m!4076701 () Bool)

(assert (=> b!3583612 m!4076701))

(declare-fun m!4076703 () Bool)

(assert (=> b!3583599 m!4076703))

(assert (=> b!3583599 m!4076703))

(declare-fun m!4076705 () Bool)

(assert (=> b!3583599 m!4076705))

(declare-fun m!4076707 () Bool)

(assert (=> b!3583599 m!4076707))

(declare-fun m!4076709 () Bool)

(assert (=> b!3583615 m!4076709))

(declare-fun m!4076711 () Bool)

(assert (=> b!3583615 m!4076711))

(declare-fun m!4076713 () Bool)

(assert (=> b!3583609 m!4076713))

(declare-fun m!4076715 () Bool)

(assert (=> b!3583608 m!4076715))

(declare-fun m!4076717 () Bool)

(assert (=> b!3583608 m!4076717))

(declare-fun m!4076719 () Bool)

(assert (=> b!3583608 m!4076719))

(declare-fun m!4076721 () Bool)

(assert (=> b!3583596 m!4076721))

(declare-fun m!4076723 () Bool)

(assert (=> b!3583613 m!4076723))

(declare-fun m!4076725 () Bool)

(assert (=> b!3583604 m!4076725))

(declare-fun m!4076727 () Bool)

(assert (=> start!332322 m!4076727))

(declare-fun m!4076729 () Bool)

(assert (=> b!3583598 m!4076729))

(declare-fun m!4076731 () Bool)

(assert (=> b!3583598 m!4076731))

(declare-fun m!4076733 () Bool)

(assert (=> b!3583617 m!4076733))

(declare-fun m!4076735 () Bool)

(assert (=> b!3583617 m!4076735))

(declare-fun m!4076737 () Bool)

(assert (=> b!3583603 m!4076737))

(declare-fun m!4076739 () Bool)

(assert (=> b!3583610 m!4076739))

(declare-fun m!4076741 () Bool)

(assert (=> b!3583610 m!4076741))

(declare-fun m!4076743 () Bool)

(assert (=> b!3583610 m!4076743))

(declare-fun m!4076745 () Bool)

(assert (=> b!3583610 m!4076745))

(declare-fun m!4076747 () Bool)

(assert (=> b!3583610 m!4076747))

(assert (=> b!3583610 m!4076745))

(declare-fun m!4076749 () Bool)

(assert (=> b!3583610 m!4076749))

(declare-fun m!4076751 () Bool)

(assert (=> b!3583610 m!4076751))

(declare-fun m!4076753 () Bool)

(assert (=> b!3583614 m!4076753))

(declare-fun m!4076755 () Bool)

(assert (=> b!3583595 m!4076755))

(declare-fun m!4076757 () Bool)

(assert (=> b!3583600 m!4076757))

(declare-fun m!4076759 () Bool)

(assert (=> b!3583607 m!4076759))

(declare-fun m!4076761 () Bool)

(assert (=> b!3583619 m!4076761))

(assert (=> b!3583619 m!4076761))

(declare-fun m!4076763 () Bool)

(assert (=> b!3583619 m!4076763))

(check-sat b_and!258727 (not b!3583617) b_and!258737 (not b!3583609) b_and!258729 b_and!258733 (not b_next!92951) (not b!3583604) (not b!3583597) (not b!3583613) (not b!3583611) (not b!3583608) (not b!3583599) (not b!3583600) b_and!258739 (not b!3583603) (not b!3583615) (not b!3583595) (not b_next!92939) (not b!3583612) (not b_next!92941) (not b!3583610) (not b_next!92949) tp_is_empty!17713 (not b_next!92945) (not b!3583614) (not b_next!92937) b_and!258741 (not b_next!92943) (not b!3583596) (not b_next!92947) (not start!332322) b_and!258731 (not b!3583606) (not b!3583598) (not b!3583607) b_and!258735 (not b!3583619))
(check-sat b_and!258727 b_and!258739 b_and!258737 (not b_next!92939) b_and!258729 (not b_next!92941) b_and!258733 (not b_next!92951) (not b_next!92937) b_and!258731 b_and!258735 (not b_next!92949) (not b_next!92945) (not b_next!92947) b_and!258741 (not b_next!92943))
(get-model)

(declare-fun b!3583751 () Bool)

(declare-fun e!2217489 () Bool)

(declare-fun lt!1229138 () Bool)

(declare-fun call!259460 () Bool)

(assert (=> b!3583751 (= e!2217489 (= lt!1229138 call!259460))))

(declare-fun d!1056541 () Bool)

(assert (=> d!1056541 e!2217489))

(declare-fun c!620794 () Bool)

(assert (=> d!1056541 (= c!620794 ((_ is EmptyExpr!10315) (regex!5556 rule!403)))))

(declare-fun e!2217487 () Bool)

(assert (=> d!1056541 (= lt!1229138 e!2217487)))

(declare-fun c!620793 () Bool)

(assert (=> d!1056541 (= c!620793 (isEmpty!22183 lt!1229110))))

(declare-fun validRegex!4711 (Regex!10315) Bool)

(assert (=> d!1056541 (validRegex!4711 (regex!5556 rule!403))))

(assert (=> d!1056541 (= (matchR!4884 (regex!5556 rule!403) lt!1229110) lt!1229138)))

(declare-fun b!3583752 () Bool)

(declare-fun e!2217491 () Bool)

(assert (=> b!3583752 (= e!2217491 (not lt!1229138))))

(declare-fun b!3583753 () Bool)

(assert (=> b!3583753 (= e!2217489 e!2217491)))

(declare-fun c!620792 () Bool)

(assert (=> b!3583753 (= c!620792 ((_ is EmptyLang!10315) (regex!5556 rule!403)))))

(declare-fun b!3583754 () Bool)

(declare-fun res!1446196 () Bool)

(declare-fun e!2217488 () Bool)

(assert (=> b!3583754 (=> res!1446196 e!2217488)))

(declare-fun tail!5553 (List!37793) List!37793)

(assert (=> b!3583754 (= res!1446196 (not (isEmpty!22183 (tail!5553 lt!1229110))))))

(declare-fun b!3583755 () Bool)

(declare-fun e!2217492 () Bool)

(assert (=> b!3583755 (= e!2217492 (= (head!7473 lt!1229110) (c!620758 (regex!5556 rule!403))))))

(declare-fun b!3583756 () Bool)

(assert (=> b!3583756 (= e!2217488 (not (= (head!7473 lt!1229110) (c!620758 (regex!5556 rule!403)))))))

(declare-fun b!3583757 () Bool)

(declare-fun derivativeStep!3104 (Regex!10315 C!20816) Regex!10315)

(assert (=> b!3583757 (= e!2217487 (matchR!4884 (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110)) (tail!5553 lt!1229110)))))

(declare-fun b!3583758 () Bool)

(declare-fun res!1446200 () Bool)

(declare-fun e!2217493 () Bool)

(assert (=> b!3583758 (=> res!1446200 e!2217493)))

(assert (=> b!3583758 (= res!1446200 e!2217492)))

(declare-fun res!1446193 () Bool)

(assert (=> b!3583758 (=> (not res!1446193) (not e!2217492))))

(assert (=> b!3583758 (= res!1446193 lt!1229138)))

(declare-fun b!3583759 () Bool)

(declare-fun e!2217490 () Bool)

(assert (=> b!3583759 (= e!2217490 e!2217488)))

(declare-fun res!1446194 () Bool)

(assert (=> b!3583759 (=> res!1446194 e!2217488)))

(assert (=> b!3583759 (= res!1446194 call!259460)))

(declare-fun b!3583760 () Bool)

(declare-fun res!1446197 () Bool)

(assert (=> b!3583760 (=> res!1446197 e!2217493)))

(assert (=> b!3583760 (= res!1446197 (not ((_ is ElementMatch!10315) (regex!5556 rule!403))))))

(assert (=> b!3583760 (= e!2217491 e!2217493)))

(declare-fun b!3583761 () Bool)

(declare-fun res!1446195 () Bool)

(assert (=> b!3583761 (=> (not res!1446195) (not e!2217492))))

(assert (=> b!3583761 (= res!1446195 (not call!259460))))

(declare-fun b!3583762 () Bool)

(declare-fun res!1446198 () Bool)

(assert (=> b!3583762 (=> (not res!1446198) (not e!2217492))))

(assert (=> b!3583762 (= res!1446198 (isEmpty!22183 (tail!5553 lt!1229110)))))

(declare-fun b!3583763 () Bool)

(declare-fun nullable!3555 (Regex!10315) Bool)

(assert (=> b!3583763 (= e!2217487 (nullable!3555 (regex!5556 rule!403)))))

(declare-fun b!3583764 () Bool)

(assert (=> b!3583764 (= e!2217493 e!2217490)))

(declare-fun res!1446199 () Bool)

(assert (=> b!3583764 (=> (not res!1446199) (not e!2217490))))

(assert (=> b!3583764 (= res!1446199 (not lt!1229138))))

(declare-fun bm!259455 () Bool)

(assert (=> bm!259455 (= call!259460 (isEmpty!22183 lt!1229110))))

(assert (= (and d!1056541 c!620793) b!3583763))

(assert (= (and d!1056541 (not c!620793)) b!3583757))

(assert (= (and d!1056541 c!620794) b!3583751))

(assert (= (and d!1056541 (not c!620794)) b!3583753))

(assert (= (and b!3583753 c!620792) b!3583752))

(assert (= (and b!3583753 (not c!620792)) b!3583760))

(assert (= (and b!3583760 (not res!1446197)) b!3583758))

(assert (= (and b!3583758 res!1446193) b!3583761))

(assert (= (and b!3583761 res!1446195) b!3583762))

(assert (= (and b!3583762 res!1446198) b!3583755))

(assert (= (and b!3583758 (not res!1446200)) b!3583764))

(assert (= (and b!3583764 res!1446199) b!3583759))

(assert (= (and b!3583759 (not res!1446194)) b!3583754))

(assert (= (and b!3583754 (not res!1446196)) b!3583756))

(assert (= (or b!3583751 b!3583759 b!3583761) bm!259455))

(declare-fun m!4076855 () Bool)

(assert (=> bm!259455 m!4076855))

(declare-fun m!4076857 () Bool)

(assert (=> b!3583763 m!4076857))

(declare-fun m!4076859 () Bool)

(assert (=> b!3583757 m!4076859))

(assert (=> b!3583757 m!4076859))

(declare-fun m!4076861 () Bool)

(assert (=> b!3583757 m!4076861))

(declare-fun m!4076863 () Bool)

(assert (=> b!3583757 m!4076863))

(assert (=> b!3583757 m!4076861))

(assert (=> b!3583757 m!4076863))

(declare-fun m!4076865 () Bool)

(assert (=> b!3583757 m!4076865))

(assert (=> b!3583762 m!4076863))

(assert (=> b!3583762 m!4076863))

(declare-fun m!4076867 () Bool)

(assert (=> b!3583762 m!4076867))

(assert (=> b!3583755 m!4076859))

(assert (=> d!1056541 m!4076855))

(declare-fun m!4076869 () Bool)

(assert (=> d!1056541 m!4076869))

(assert (=> b!3583756 m!4076859))

(assert (=> b!3583754 m!4076863))

(assert (=> b!3583754 m!4076863))

(assert (=> b!3583754 m!4076867))

(assert (=> b!3583608 d!1056541))

(declare-fun d!1056547 () Bool)

(declare-fun res!1446207 () Bool)

(declare-fun e!2217501 () Bool)

(assert (=> d!1056547 (=> (not res!1446207) (not e!2217501))))

(assert (=> d!1056547 (= res!1446207 (validRegex!4711 (regex!5556 rule!403)))))

(assert (=> d!1056547 (= (ruleValid!1821 thiss!23823 rule!403) e!2217501)))

(declare-fun b!3583776 () Bool)

(declare-fun res!1446208 () Bool)

(assert (=> b!3583776 (=> (not res!1446208) (not e!2217501))))

(assert (=> b!3583776 (= res!1446208 (not (nullable!3555 (regex!5556 rule!403))))))

(declare-fun b!3583777 () Bool)

(assert (=> b!3583777 (= e!2217501 (not (= (tag!6222 rule!403) (String!42265 ""))))))

(assert (= (and d!1056547 res!1446207) b!3583776))

(assert (= (and b!3583776 res!1446208) b!3583777))

(assert (=> d!1056547 m!4076869))

(assert (=> b!3583776 m!4076857))

(assert (=> b!3583608 d!1056547))

(declare-fun d!1056561 () Bool)

(assert (=> d!1056561 (ruleValid!1821 thiss!23823 rule!403)))

(declare-fun lt!1229147 () Unit!53667)

(declare-fun choose!20852 (LexerInterface!5145 Rule!10912 List!37795) Unit!53667)

(assert (=> d!1056561 (= lt!1229147 (choose!20852 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1056561 (contains!7172 rules!3307 rule!403)))

(assert (=> d!1056561 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!976 thiss!23823 rule!403 rules!3307) lt!1229147)))

(declare-fun bs!569924 () Bool)

(assert (= bs!569924 d!1056561))

(assert (=> bs!569924 m!4076717))

(declare-fun m!4076893 () Bool)

(assert (=> bs!569924 m!4076893))

(assert (=> bs!569924 m!4076725))

(assert (=> b!3583608 d!1056561))

(declare-fun d!1056565 () Bool)

(declare-fun lt!1229150 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5348 (List!37793) (InoxSet C!20816))

(assert (=> d!1056565 (= lt!1229150 (select (content!5348 (usedCharacters!770 (regex!5556 anOtherTypeRule!33))) lt!1229106))))

(declare-fun e!2217507 () Bool)

(assert (=> d!1056565 (= lt!1229150 e!2217507)))

(declare-fun res!1446213 () Bool)

(assert (=> d!1056565 (=> (not res!1446213) (not e!2217507))))

(assert (=> d!1056565 (= res!1446213 ((_ is Cons!37669) (usedCharacters!770 (regex!5556 anOtherTypeRule!33))))))

(assert (=> d!1056565 (= (contains!7171 (usedCharacters!770 (regex!5556 anOtherTypeRule!33)) lt!1229106) lt!1229150)))

(declare-fun b!3583782 () Bool)

(declare-fun e!2217506 () Bool)

(assert (=> b!3583782 (= e!2217507 e!2217506)))

(declare-fun res!1446214 () Bool)

(assert (=> b!3583782 (=> res!1446214 e!2217506)))

(assert (=> b!3583782 (= res!1446214 (= (h!43089 (usedCharacters!770 (regex!5556 anOtherTypeRule!33))) lt!1229106))))

(declare-fun b!3583783 () Bool)

(assert (=> b!3583783 (= e!2217506 (contains!7171 (t!290422 (usedCharacters!770 (regex!5556 anOtherTypeRule!33))) lt!1229106))))

(assert (= (and d!1056565 res!1446213) b!3583782))

(assert (= (and b!3583782 (not res!1446214)) b!3583783))

(assert (=> d!1056565 m!4076761))

(declare-fun m!4076895 () Bool)

(assert (=> d!1056565 m!4076895))

(declare-fun m!4076897 () Bool)

(assert (=> d!1056565 m!4076897))

(declare-fun m!4076899 () Bool)

(assert (=> b!3583783 m!4076899))

(assert (=> b!3583619 d!1056565))

(declare-fun b!3583800 () Bool)

(declare-fun e!2217518 () List!37793)

(declare-fun e!2217516 () List!37793)

(assert (=> b!3583800 (= e!2217518 e!2217516)))

(declare-fun c!620805 () Bool)

(assert (=> b!3583800 (= c!620805 ((_ is ElementMatch!10315) (regex!5556 anOtherTypeRule!33)))))

(declare-fun call!259470 () List!37793)

(declare-fun bm!259464 () Bool)

(declare-fun c!620803 () Bool)

(declare-fun call!259472 () List!37793)

(declare-fun call!259471 () List!37793)

(assert (=> bm!259464 (= call!259470 (++!9368 (ite c!620803 call!259472 call!259471) (ite c!620803 call!259471 call!259472)))))

(declare-fun b!3583801 () Bool)

(declare-fun e!2217519 () List!37793)

(assert (=> b!3583801 (= e!2217519 call!259470)))

(declare-fun call!259469 () List!37793)

(declare-fun c!620804 () Bool)

(declare-fun bm!259465 () Bool)

(assert (=> bm!259465 (= call!259469 (usedCharacters!770 (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))))))

(declare-fun bm!259466 () Bool)

(assert (=> bm!259466 (= call!259471 (usedCharacters!770 (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))))))

(declare-fun bm!259467 () Bool)

(assert (=> bm!259467 (= call!259472 call!259469)))

(declare-fun b!3583803 () Bool)

(declare-fun e!2217517 () List!37793)

(assert (=> b!3583803 (= e!2217517 call!259469)))

(declare-fun b!3583804 () Bool)

(assert (=> b!3583804 (= e!2217519 call!259470)))

(declare-fun b!3583805 () Bool)

(assert (=> b!3583805 (= c!620804 ((_ is Star!10315) (regex!5556 anOtherTypeRule!33)))))

(assert (=> b!3583805 (= e!2217516 e!2217517)))

(declare-fun d!1056567 () Bool)

(declare-fun c!620806 () Bool)

(assert (=> d!1056567 (= c!620806 (or ((_ is EmptyExpr!10315) (regex!5556 anOtherTypeRule!33)) ((_ is EmptyLang!10315) (regex!5556 anOtherTypeRule!33))))))

(assert (=> d!1056567 (= (usedCharacters!770 (regex!5556 anOtherTypeRule!33)) e!2217518)))

(declare-fun b!3583802 () Bool)

(assert (=> b!3583802 (= e!2217517 e!2217519)))

(assert (=> b!3583802 (= c!620803 ((_ is Union!10315) (regex!5556 anOtherTypeRule!33)))))

(declare-fun b!3583806 () Bool)

(assert (=> b!3583806 (= e!2217516 (Cons!37669 (c!620758 (regex!5556 anOtherTypeRule!33)) Nil!37669))))

(declare-fun b!3583807 () Bool)

(assert (=> b!3583807 (= e!2217518 Nil!37669)))

(assert (= (and d!1056567 c!620806) b!3583807))

(assert (= (and d!1056567 (not c!620806)) b!3583800))

(assert (= (and b!3583800 c!620805) b!3583806))

(assert (= (and b!3583800 (not c!620805)) b!3583805))

(assert (= (and b!3583805 c!620804) b!3583803))

(assert (= (and b!3583805 (not c!620804)) b!3583802))

(assert (= (and b!3583802 c!620803) b!3583801))

(assert (= (and b!3583802 (not c!620803)) b!3583804))

(assert (= (or b!3583801 b!3583804) bm!259467))

(assert (= (or b!3583801 b!3583804) bm!259466))

(assert (= (or b!3583801 b!3583804) bm!259464))

(assert (= (or b!3583803 bm!259467) bm!259465))

(declare-fun m!4076901 () Bool)

(assert (=> bm!259464 m!4076901))

(declare-fun m!4076903 () Bool)

(assert (=> bm!259465 m!4076903))

(declare-fun m!4076905 () Bool)

(assert (=> bm!259466 m!4076905))

(assert (=> b!3583619 d!1056567))

(declare-fun d!1056569 () Bool)

(declare-fun res!1446219 () Bool)

(declare-fun e!2217522 () Bool)

(assert (=> d!1056569 (=> (not res!1446219) (not e!2217522))))

(assert (=> d!1056569 (= res!1446219 (not (isEmpty!22183 (originalCharacters!6270 token!511))))))

(assert (=> d!1056569 (= (inv!50988 token!511) e!2217522)))

(declare-fun b!3583812 () Bool)

(declare-fun res!1446220 () Bool)

(assert (=> b!3583812 (=> (not res!1446220) (not e!2217522))))

(declare-fun dynLambda!16190 (Int TokenValue!5786) BalanceConc!22524)

(assert (=> b!3583812 (= res!1446220 (= (originalCharacters!6270 token!511) (list!13837 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))))))

(declare-fun b!3583813 () Bool)

(declare-fun size!28702 (List!37793) Int)

(assert (=> b!3583813 (= e!2217522 (= (size!28698 token!511) (size!28702 (originalCharacters!6270 token!511))))))

(assert (= (and d!1056569 res!1446219) b!3583812))

(assert (= (and b!3583812 res!1446220) b!3583813))

(declare-fun b_lambda!105893 () Bool)

(assert (=> (not b_lambda!105893) (not b!3583812)))

(declare-fun tb!204409 () Bool)

(declare-fun t!290435 () Bool)

(assert (=> (and b!3583618 (= (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toChars!7691 (transformation!5556 (rule!8268 token!511)))) t!290435) tb!204409))

(declare-fun b!3583818 () Bool)

(declare-fun e!2217525 () Bool)

(declare-fun tp!1097248 () Bool)

(declare-fun inv!50991 (Conc!11455) Bool)

(assert (=> b!3583818 (= e!2217525 (and (inv!50991 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))) tp!1097248))))

(declare-fun result!249232 () Bool)

(declare-fun inv!50992 (BalanceConc!22524) Bool)

(assert (=> tb!204409 (= result!249232 (and (inv!50992 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))) e!2217525))))

(assert (= tb!204409 b!3583818))

(declare-fun m!4076907 () Bool)

(assert (=> b!3583818 m!4076907))

(declare-fun m!4076909 () Bool)

(assert (=> tb!204409 m!4076909))

(assert (=> b!3583812 t!290435))

(declare-fun b_and!258751 () Bool)

(assert (= b_and!258729 (and (=> t!290435 result!249232) b_and!258751)))

(declare-fun t!290437 () Bool)

(declare-fun tb!204411 () Bool)

(assert (=> (and b!3583605 (= (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toChars!7691 (transformation!5556 (rule!8268 token!511)))) t!290437) tb!204411))

(declare-fun result!249236 () Bool)

(assert (= result!249236 result!249232))

(assert (=> b!3583812 t!290437))

(declare-fun b_and!258753 () Bool)

(assert (= b_and!258733 (and (=> t!290437 result!249236) b_and!258753)))

(declare-fun t!290439 () Bool)

(declare-fun tb!204413 () Bool)

(assert (=> (and b!3583616 (= (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toChars!7691 (transformation!5556 (rule!8268 token!511)))) t!290439) tb!204413))

(declare-fun result!249238 () Bool)

(assert (= result!249238 result!249232))

(assert (=> b!3583812 t!290439))

(declare-fun b_and!258755 () Bool)

(assert (= b_and!258737 (and (=> t!290439 result!249238) b_and!258755)))

(declare-fun t!290441 () Bool)

(declare-fun tb!204415 () Bool)

(assert (=> (and b!3583620 (= (toChars!7691 (transformation!5556 rule!403)) (toChars!7691 (transformation!5556 (rule!8268 token!511)))) t!290441) tb!204415))

(declare-fun result!249240 () Bool)

(assert (= result!249240 result!249232))

(assert (=> b!3583812 t!290441))

(declare-fun b_and!258757 () Bool)

(assert (= b_and!258741 (and (=> t!290441 result!249240) b_and!258757)))

(declare-fun m!4076911 () Bool)

(assert (=> d!1056569 m!4076911))

(declare-fun m!4076913 () Bool)

(assert (=> b!3583812 m!4076913))

(assert (=> b!3583812 m!4076913))

(declare-fun m!4076915 () Bool)

(assert (=> b!3583812 m!4076915))

(declare-fun m!4076917 () Bool)

(assert (=> b!3583813 m!4076917))

(assert (=> start!332322 d!1056569))

(declare-fun d!1056571 () Bool)

(declare-fun lt!1229151 () Bool)

(assert (=> d!1056571 (= lt!1229151 (select (content!5348 (usedCharacters!770 (regex!5556 rule!403))) lt!1229106))))

(declare-fun e!2217527 () Bool)

(assert (=> d!1056571 (= lt!1229151 e!2217527)))

(declare-fun res!1446221 () Bool)

(assert (=> d!1056571 (=> (not res!1446221) (not e!2217527))))

(assert (=> d!1056571 (= res!1446221 ((_ is Cons!37669) (usedCharacters!770 (regex!5556 rule!403))))))

(assert (=> d!1056571 (= (contains!7171 (usedCharacters!770 (regex!5556 rule!403)) lt!1229106) lt!1229151)))

(declare-fun b!3583819 () Bool)

(declare-fun e!2217526 () Bool)

(assert (=> b!3583819 (= e!2217527 e!2217526)))

(declare-fun res!1446222 () Bool)

(assert (=> b!3583819 (=> res!1446222 e!2217526)))

(assert (=> b!3583819 (= res!1446222 (= (h!43089 (usedCharacters!770 (regex!5556 rule!403))) lt!1229106))))

(declare-fun b!3583820 () Bool)

(assert (=> b!3583820 (= e!2217526 (contains!7171 (t!290422 (usedCharacters!770 (regex!5556 rule!403))) lt!1229106))))

(assert (= (and d!1056571 res!1446221) b!3583819))

(assert (= (and b!3583819 (not res!1446222)) b!3583820))

(assert (=> d!1056571 m!4076703))

(declare-fun m!4076919 () Bool)

(assert (=> d!1056571 m!4076919))

(declare-fun m!4076921 () Bool)

(assert (=> d!1056571 m!4076921))

(declare-fun m!4076923 () Bool)

(assert (=> b!3583820 m!4076923))

(assert (=> b!3583599 d!1056571))

(declare-fun b!3583821 () Bool)

(declare-fun e!2217530 () List!37793)

(declare-fun e!2217528 () List!37793)

(assert (=> b!3583821 (= e!2217530 e!2217528)))

(declare-fun c!620809 () Bool)

(assert (=> b!3583821 (= c!620809 ((_ is ElementMatch!10315) (regex!5556 rule!403)))))

(declare-fun call!259475 () List!37793)

(declare-fun call!259474 () List!37793)

(declare-fun bm!259468 () Bool)

(declare-fun c!620807 () Bool)

(declare-fun call!259476 () List!37793)

(assert (=> bm!259468 (= call!259474 (++!9368 (ite c!620807 call!259476 call!259475) (ite c!620807 call!259475 call!259476)))))

(declare-fun b!3583822 () Bool)

(declare-fun e!2217531 () List!37793)

(assert (=> b!3583822 (= e!2217531 call!259474)))

(declare-fun call!259473 () List!37793)

(declare-fun bm!259469 () Bool)

(declare-fun c!620808 () Bool)

(assert (=> bm!259469 (= call!259473 (usedCharacters!770 (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))))))

(declare-fun bm!259470 () Bool)

(assert (=> bm!259470 (= call!259475 (usedCharacters!770 (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))))))

(declare-fun bm!259471 () Bool)

(assert (=> bm!259471 (= call!259476 call!259473)))

(declare-fun b!3583824 () Bool)

(declare-fun e!2217529 () List!37793)

(assert (=> b!3583824 (= e!2217529 call!259473)))

(declare-fun b!3583825 () Bool)

(assert (=> b!3583825 (= e!2217531 call!259474)))

(declare-fun b!3583826 () Bool)

(assert (=> b!3583826 (= c!620808 ((_ is Star!10315) (regex!5556 rule!403)))))

(assert (=> b!3583826 (= e!2217528 e!2217529)))

(declare-fun d!1056573 () Bool)

(declare-fun c!620810 () Bool)

(assert (=> d!1056573 (= c!620810 (or ((_ is EmptyExpr!10315) (regex!5556 rule!403)) ((_ is EmptyLang!10315) (regex!5556 rule!403))))))

(assert (=> d!1056573 (= (usedCharacters!770 (regex!5556 rule!403)) e!2217530)))

(declare-fun b!3583823 () Bool)

(assert (=> b!3583823 (= e!2217529 e!2217531)))

(assert (=> b!3583823 (= c!620807 ((_ is Union!10315) (regex!5556 rule!403)))))

(declare-fun b!3583827 () Bool)

(assert (=> b!3583827 (= e!2217528 (Cons!37669 (c!620758 (regex!5556 rule!403)) Nil!37669))))

(declare-fun b!3583828 () Bool)

(assert (=> b!3583828 (= e!2217530 Nil!37669)))

(assert (= (and d!1056573 c!620810) b!3583828))

(assert (= (and d!1056573 (not c!620810)) b!3583821))

(assert (= (and b!3583821 c!620809) b!3583827))

(assert (= (and b!3583821 (not c!620809)) b!3583826))

(assert (= (and b!3583826 c!620808) b!3583824))

(assert (= (and b!3583826 (not c!620808)) b!3583823))

(assert (= (and b!3583823 c!620807) b!3583822))

(assert (= (and b!3583823 (not c!620807)) b!3583825))

(assert (= (or b!3583822 b!3583825) bm!259471))

(assert (= (or b!3583822 b!3583825) bm!259470))

(assert (= (or b!3583822 b!3583825) bm!259468))

(assert (= (or b!3583824 bm!259471) bm!259469))

(declare-fun m!4076925 () Bool)

(assert (=> bm!259468 m!4076925))

(declare-fun m!4076927 () Bool)

(assert (=> bm!259469 m!4076927))

(declare-fun m!4076929 () Bool)

(assert (=> bm!259470 m!4076929))

(assert (=> b!3583599 d!1056573))

(declare-fun d!1056575 () Bool)

(assert (=> d!1056575 (= (head!7473 suffix!1395) (h!43089 suffix!1395))))

(assert (=> b!3583599 d!1056575))

(declare-fun d!1056577 () Bool)

(assert (=> d!1056577 (= (inv!50984 (tag!6222 anOtherTypeRule!33)) (= (mod (str.len (value!178805 (tag!6222 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3583598 d!1056577))

(declare-fun d!1056579 () Bool)

(declare-fun res!1446225 () Bool)

(declare-fun e!2217534 () Bool)

(assert (=> d!1056579 (=> (not res!1446225) (not e!2217534))))

(declare-fun semiInverseModEq!2353 (Int Int) Bool)

(assert (=> d!1056579 (= res!1446225 (semiInverseModEq!2353 (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toValue!7832 (transformation!5556 anOtherTypeRule!33))))))

(assert (=> d!1056579 (= (inv!50987 (transformation!5556 anOtherTypeRule!33)) e!2217534)))

(declare-fun b!3583831 () Bool)

(declare-fun equivClasses!2252 (Int Int) Bool)

(assert (=> b!3583831 (= e!2217534 (equivClasses!2252 (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toValue!7832 (transformation!5556 anOtherTypeRule!33))))))

(assert (= (and d!1056579 res!1446225) b!3583831))

(declare-fun m!4076931 () Bool)

(assert (=> d!1056579 m!4076931))

(declare-fun m!4076933 () Bool)

(assert (=> b!3583831 m!4076933))

(assert (=> b!3583598 d!1056579))

(declare-fun d!1056581 () Bool)

(assert (=> d!1056581 (= (isEmpty!22184 rules!3307) ((_ is Nil!37671) rules!3307))))

(assert (=> b!3583609 d!1056581))

(declare-fun d!1056583 () Bool)

(assert (=> d!1056583 (= (get!12134 lt!1229105) (v!37397 lt!1229105))))

(assert (=> b!3583600 d!1056583))

(declare-fun d!1056585 () Bool)

(declare-fun isEmpty!22189 (Option!7744) Bool)

(assert (=> d!1056585 (= (isDefined!5978 lt!1229105) (not (isEmpty!22189 lt!1229105)))))

(declare-fun bs!569925 () Bool)

(assert (= bs!569925 d!1056585))

(declare-fun m!4076935 () Bool)

(assert (=> bs!569925 m!4076935))

(assert (=> b!3583611 d!1056585))

(declare-fun b!3583996 () Bool)

(declare-fun res!1446315 () Bool)

(declare-fun e!2217620 () Bool)

(assert (=> b!3583996 (=> (not res!1446315) (not e!2217620))))

(declare-fun lt!1229186 () Option!7744)

(assert (=> b!3583996 (= res!1446315 (matchR!4884 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))))))

(declare-fun b!3583997 () Bool)

(declare-fun res!1446312 () Bool)

(assert (=> b!3583997 (=> (not res!1446312) (not e!2217620))))

(assert (=> b!3583997 (= res!1446312 (= (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186)))) (originalCharacters!6270 (_1!21912 (get!12134 lt!1229186)))))))

(declare-fun b!3583998 () Bool)

(declare-fun e!2217618 () Bool)

(assert (=> b!3583998 (= e!2217618 e!2217620)))

(declare-fun res!1446314 () Bool)

(assert (=> b!3583998 (=> (not res!1446314) (not e!2217620))))

(assert (=> b!3583998 (= res!1446314 (isDefined!5978 lt!1229186))))

(declare-fun b!3583999 () Bool)

(declare-fun res!1446313 () Bool)

(assert (=> b!3583999 (=> (not res!1446313) (not e!2217620))))

(assert (=> b!3583999 (= res!1446313 (= (++!9368 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186)))) (_2!21912 (get!12134 lt!1229186))) lt!1229110))))

(declare-fun b!3584000 () Bool)

(declare-fun e!2217619 () Option!7744)

(declare-fun call!259483 () Option!7744)

(assert (=> b!3584000 (= e!2217619 call!259483)))

(declare-fun bm!259478 () Bool)

(declare-fun maxPrefixOneRule!1831 (LexerInterface!5145 Rule!10912 List!37793) Option!7744)

(assert (=> bm!259478 (= call!259483 (maxPrefixOneRule!1831 thiss!23823 (h!43091 rules!3307) lt!1229110))))

(declare-fun b!3584001 () Bool)

(assert (=> b!3584001 (= e!2217620 (contains!7172 rules!3307 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))))

(declare-fun b!3584002 () Bool)

(declare-fun res!1446317 () Bool)

(assert (=> b!3584002 (=> (not res!1446317) (not e!2217620))))

(declare-fun apply!9068 (TokenValueInjection!11000 BalanceConc!22524) TokenValue!5786)

(assert (=> b!3584002 (= res!1446317 (= (value!178806 (_1!21912 (get!12134 lt!1229186))) (apply!9068 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229186)))))))))

(declare-fun d!1056587 () Bool)

(assert (=> d!1056587 e!2217618))

(declare-fun res!1446316 () Bool)

(assert (=> d!1056587 (=> res!1446316 e!2217618)))

(assert (=> d!1056587 (= res!1446316 (isEmpty!22189 lt!1229186))))

(assert (=> d!1056587 (= lt!1229186 e!2217619)))

(declare-fun c!620829 () Bool)

(assert (=> d!1056587 (= c!620829 (and ((_ is Cons!37671) rules!3307) ((_ is Nil!37671) (t!290424 rules!3307))))))

(declare-fun lt!1229185 () Unit!53667)

(declare-fun lt!1229188 () Unit!53667)

(assert (=> d!1056587 (= lt!1229185 lt!1229188)))

(assert (=> d!1056587 (isPrefix!2919 lt!1229110 lt!1229110)))

(declare-fun lemmaIsPrefixRefl!1872 (List!37793 List!37793) Unit!53667)

(assert (=> d!1056587 (= lt!1229188 (lemmaIsPrefixRefl!1872 lt!1229110 lt!1229110))))

(declare-fun rulesValidInductive!1935 (LexerInterface!5145 List!37795) Bool)

(assert (=> d!1056587 (rulesValidInductive!1935 thiss!23823 rules!3307)))

(assert (=> d!1056587 (= (maxPrefix!2679 thiss!23823 rules!3307 lt!1229110) lt!1229186)))

(declare-fun b!3584003 () Bool)

(declare-fun lt!1229187 () Option!7744)

(declare-fun lt!1229189 () Option!7744)

(assert (=> b!3584003 (= e!2217619 (ite (and ((_ is None!7743) lt!1229187) ((_ is None!7743) lt!1229189)) None!7743 (ite ((_ is None!7743) lt!1229189) lt!1229187 (ite ((_ is None!7743) lt!1229187) lt!1229189 (ite (>= (size!28698 (_1!21912 (v!37397 lt!1229187))) (size!28698 (_1!21912 (v!37397 lt!1229189)))) lt!1229187 lt!1229189)))))))

(assert (=> b!3584003 (= lt!1229187 call!259483)))

(assert (=> b!3584003 (= lt!1229189 (maxPrefix!2679 thiss!23823 (t!290424 rules!3307) lt!1229110))))

(declare-fun b!3584004 () Bool)

(declare-fun res!1446311 () Bool)

(assert (=> b!3584004 (=> (not res!1446311) (not e!2217620))))

(assert (=> b!3584004 (= res!1446311 (< (size!28702 (_2!21912 (get!12134 lt!1229186))) (size!28702 lt!1229110)))))

(assert (= (and d!1056587 c!620829) b!3584000))

(assert (= (and d!1056587 (not c!620829)) b!3584003))

(assert (= (or b!3584000 b!3584003) bm!259478))

(assert (= (and d!1056587 (not res!1446316)) b!3583998))

(assert (= (and b!3583998 res!1446314) b!3583997))

(assert (= (and b!3583997 res!1446312) b!3584004))

(assert (= (and b!3584004 res!1446311) b!3583999))

(assert (= (and b!3583999 res!1446313) b!3584002))

(assert (= (and b!3584002 res!1446317) b!3583996))

(assert (= (and b!3583996 res!1446315) b!3584001))

(declare-fun m!4077043 () Bool)

(assert (=> bm!259478 m!4077043))

(declare-fun m!4077045 () Bool)

(assert (=> b!3583998 m!4077045))

(declare-fun m!4077047 () Bool)

(assert (=> d!1056587 m!4077047))

(declare-fun m!4077049 () Bool)

(assert (=> d!1056587 m!4077049))

(declare-fun m!4077051 () Bool)

(assert (=> d!1056587 m!4077051))

(declare-fun m!4077053 () Bool)

(assert (=> d!1056587 m!4077053))

(declare-fun m!4077055 () Bool)

(assert (=> b!3583999 m!4077055))

(declare-fun m!4077057 () Bool)

(assert (=> b!3583999 m!4077057))

(assert (=> b!3583999 m!4077057))

(declare-fun m!4077059 () Bool)

(assert (=> b!3583999 m!4077059))

(assert (=> b!3583999 m!4077059))

(declare-fun m!4077061 () Bool)

(assert (=> b!3583999 m!4077061))

(assert (=> b!3583996 m!4077055))

(assert (=> b!3583996 m!4077057))

(assert (=> b!3583996 m!4077057))

(assert (=> b!3583996 m!4077059))

(assert (=> b!3583996 m!4077059))

(declare-fun m!4077063 () Bool)

(assert (=> b!3583996 m!4077063))

(assert (=> b!3583997 m!4077055))

(assert (=> b!3583997 m!4077057))

(assert (=> b!3583997 m!4077057))

(assert (=> b!3583997 m!4077059))

(assert (=> b!3584002 m!4077055))

(declare-fun m!4077065 () Bool)

(assert (=> b!3584002 m!4077065))

(assert (=> b!3584002 m!4077065))

(declare-fun m!4077067 () Bool)

(assert (=> b!3584002 m!4077067))

(assert (=> b!3584001 m!4077055))

(declare-fun m!4077069 () Bool)

(assert (=> b!3584001 m!4077069))

(assert (=> b!3584004 m!4077055))

(declare-fun m!4077071 () Bool)

(assert (=> b!3584004 m!4077071))

(declare-fun m!4077073 () Bool)

(assert (=> b!3584004 m!4077073))

(declare-fun m!4077075 () Bool)

(assert (=> b!3584003 m!4077075))

(assert (=> b!3583611 d!1056587))

(declare-fun d!1056611 () Bool)

(declare-fun list!13840 (Conc!11455) List!37793)

(assert (=> d!1056611 (= (list!13837 (charsOf!3570 token!511)) (list!13840 (c!620759 (charsOf!3570 token!511))))))

(declare-fun bs!569928 () Bool)

(assert (= bs!569928 d!1056611))

(declare-fun m!4077077 () Bool)

(assert (=> bs!569928 m!4077077))

(assert (=> b!3583611 d!1056611))

(declare-fun d!1056613 () Bool)

(declare-fun lt!1229192 () BalanceConc!22524)

(assert (=> d!1056613 (= (list!13837 lt!1229192) (originalCharacters!6270 token!511))))

(assert (=> d!1056613 (= lt!1229192 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))))

(assert (=> d!1056613 (= (charsOf!3570 token!511) lt!1229192)))

(declare-fun b_lambda!105901 () Bool)

(assert (=> (not b_lambda!105901) (not d!1056613)))

(assert (=> d!1056613 t!290435))

(declare-fun b_and!258771 () Bool)

(assert (= b_and!258751 (and (=> t!290435 result!249232) b_and!258771)))

(assert (=> d!1056613 t!290437))

(declare-fun b_and!258773 () Bool)

(assert (= b_and!258753 (and (=> t!290437 result!249236) b_and!258773)))

(assert (=> d!1056613 t!290439))

(declare-fun b_and!258775 () Bool)

(assert (= b_and!258755 (and (=> t!290439 result!249238) b_and!258775)))

(assert (=> d!1056613 t!290441))

(declare-fun b_and!258777 () Bool)

(assert (= b_and!258757 (and (=> t!290441 result!249240) b_and!258777)))

(declare-fun m!4077079 () Bool)

(assert (=> d!1056613 m!4077079))

(assert (=> d!1056613 m!4076913))

(assert (=> b!3583611 d!1056613))

(declare-fun d!1056615 () Bool)

(declare-fun fromListB!1897 (List!37793) BalanceConc!22524)

(assert (=> d!1056615 (= (seqFromList!4111 lt!1229110) (fromListB!1897 lt!1229110))))

(declare-fun bs!569929 () Bool)

(assert (= bs!569929 d!1056615))

(declare-fun m!4077081 () Bool)

(assert (=> bs!569929 m!4077081))

(assert (=> b!3583610 d!1056615))

(declare-fun b!3584014 () Bool)

(declare-fun e!2217625 () List!37793)

(assert (=> b!3584014 (= e!2217625 (Cons!37669 (h!43089 lt!1229110) (++!9368 (t!290422 lt!1229110) suffix!1395)))))

(declare-fun lt!1229195 () List!37793)

(declare-fun e!2217626 () Bool)

(declare-fun b!3584016 () Bool)

(assert (=> b!3584016 (= e!2217626 (or (not (= suffix!1395 Nil!37669)) (= lt!1229195 lt!1229110)))))

(declare-fun b!3584013 () Bool)

(assert (=> b!3584013 (= e!2217625 suffix!1395)))

(declare-fun d!1056617 () Bool)

(assert (=> d!1056617 e!2217626))

(declare-fun res!1446322 () Bool)

(assert (=> d!1056617 (=> (not res!1446322) (not e!2217626))))

(assert (=> d!1056617 (= res!1446322 (= (content!5348 lt!1229195) ((_ map or) (content!5348 lt!1229110) (content!5348 suffix!1395))))))

(assert (=> d!1056617 (= lt!1229195 e!2217625)))

(declare-fun c!620832 () Bool)

(assert (=> d!1056617 (= c!620832 ((_ is Nil!37669) lt!1229110))))

(assert (=> d!1056617 (= (++!9368 lt!1229110 suffix!1395) lt!1229195)))

(declare-fun b!3584015 () Bool)

(declare-fun res!1446323 () Bool)

(assert (=> b!3584015 (=> (not res!1446323) (not e!2217626))))

(assert (=> b!3584015 (= res!1446323 (= (size!28702 lt!1229195) (+ (size!28702 lt!1229110) (size!28702 suffix!1395))))))

(assert (= (and d!1056617 c!620832) b!3584013))

(assert (= (and d!1056617 (not c!620832)) b!3584014))

(assert (= (and d!1056617 res!1446322) b!3584015))

(assert (= (and b!3584015 res!1446323) b!3584016))

(declare-fun m!4077083 () Bool)

(assert (=> b!3584014 m!4077083))

(declare-fun m!4077085 () Bool)

(assert (=> d!1056617 m!4077085))

(declare-fun m!4077087 () Bool)

(assert (=> d!1056617 m!4077087))

(declare-fun m!4077089 () Bool)

(assert (=> d!1056617 m!4077089))

(declare-fun m!4077091 () Bool)

(assert (=> b!3584015 m!4077091))

(assert (=> b!3584015 m!4077073))

(declare-fun m!4077093 () Bool)

(assert (=> b!3584015 m!4077093))

(assert (=> b!3583610 d!1056617))

(declare-fun d!1056619 () Bool)

(assert (=> d!1056619 (isPrefix!2919 lt!1229110 (++!9368 lt!1229110 suffix!1395))))

(declare-fun lt!1229198 () Unit!53667)

(declare-fun choose!20853 (List!37793 List!37793) Unit!53667)

(assert (=> d!1056619 (= lt!1229198 (choose!20853 lt!1229110 suffix!1395))))

(assert (=> d!1056619 (= (lemmaConcatTwoListThenFirstIsPrefix!1840 lt!1229110 suffix!1395) lt!1229198)))

(declare-fun bs!569930 () Bool)

(assert (= bs!569930 d!1056619))

(assert (=> bs!569930 m!4076751))

(assert (=> bs!569930 m!4076751))

(declare-fun m!4077095 () Bool)

(assert (=> bs!569930 m!4077095))

(declare-fun m!4077097 () Bool)

(assert (=> bs!569930 m!4077097))

(assert (=> b!3583610 d!1056619))

(declare-fun b!3584027 () Bool)

(declare-fun e!2217634 () Bool)

(declare-fun lt!1229201 () tuple2!37558)

(assert (=> b!3584027 (= e!2217634 (= (_2!21913 lt!1229201) (seqFromList!4111 lt!1229110)))))

(declare-fun d!1056621 () Bool)

(declare-fun e!2217633 () Bool)

(assert (=> d!1056621 e!2217633))

(declare-fun res!1446332 () Bool)

(assert (=> d!1056621 (=> (not res!1446332) (not e!2217633))))

(assert (=> d!1056621 (= res!1446332 e!2217634)))

(declare-fun c!620835 () Bool)

(declare-fun size!28703 (BalanceConc!22526) Int)

(assert (=> d!1056621 (= c!620835 (> (size!28703 (_1!21913 lt!1229201)) 0))))

(declare-fun lexTailRecV2!1114 (LexerInterface!5145 List!37795 BalanceConc!22524 BalanceConc!22524 BalanceConc!22524 BalanceConc!22526) tuple2!37558)

(assert (=> d!1056621 (= lt!1229201 (lexTailRecV2!1114 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110) (BalanceConc!22525 Empty!11455) (seqFromList!4111 lt!1229110) (BalanceConc!22527 Empty!11456)))))

(assert (=> d!1056621 (= (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110)) lt!1229201)))

(declare-fun b!3584028 () Bool)

(declare-fun e!2217635 () Bool)

(assert (=> b!3584028 (= e!2217635 (not (isEmpty!22185 (_1!21913 lt!1229201))))))

(declare-fun b!3584029 () Bool)

(declare-fun res!1446331 () Bool)

(assert (=> b!3584029 (=> (not res!1446331) (not e!2217633))))

(declare-fun list!13841 (BalanceConc!22526) List!37796)

(declare-datatypes ((tuple2!37562 0))(
  ( (tuple2!37563 (_1!21915 List!37796) (_2!21915 List!37793)) )
))
(declare-fun lexList!1508 (LexerInterface!5145 List!37795 List!37793) tuple2!37562)

(assert (=> b!3584029 (= res!1446331 (= (list!13841 (_1!21913 lt!1229201)) (_1!21915 (lexList!1508 thiss!23823 rules!3307 (list!13837 (seqFromList!4111 lt!1229110))))))))

(declare-fun b!3584030 () Bool)

(assert (=> b!3584030 (= e!2217633 (= (list!13837 (_2!21913 lt!1229201)) (_2!21915 (lexList!1508 thiss!23823 rules!3307 (list!13837 (seqFromList!4111 lt!1229110))))))))

(declare-fun b!3584031 () Bool)

(assert (=> b!3584031 (= e!2217634 e!2217635)))

(declare-fun res!1446330 () Bool)

(declare-fun size!28704 (BalanceConc!22524) Int)

(assert (=> b!3584031 (= res!1446330 (< (size!28704 (_2!21913 lt!1229201)) (size!28704 (seqFromList!4111 lt!1229110))))))

(assert (=> b!3584031 (=> (not res!1446330) (not e!2217635))))

(assert (= (and d!1056621 c!620835) b!3584031))

(assert (= (and d!1056621 (not c!620835)) b!3584027))

(assert (= (and b!3584031 res!1446330) b!3584028))

(assert (= (and d!1056621 res!1446332) b!3584029))

(assert (= (and b!3584029 res!1446331) b!3584030))

(declare-fun m!4077099 () Bool)

(assert (=> d!1056621 m!4077099))

(assert (=> d!1056621 m!4076745))

(assert (=> d!1056621 m!4076745))

(declare-fun m!4077101 () Bool)

(assert (=> d!1056621 m!4077101))

(declare-fun m!4077103 () Bool)

(assert (=> b!3584029 m!4077103))

(assert (=> b!3584029 m!4076745))

(declare-fun m!4077105 () Bool)

(assert (=> b!3584029 m!4077105))

(assert (=> b!3584029 m!4077105))

(declare-fun m!4077107 () Bool)

(assert (=> b!3584029 m!4077107))

(declare-fun m!4077109 () Bool)

(assert (=> b!3584028 m!4077109))

(declare-fun m!4077111 () Bool)

(assert (=> b!3584031 m!4077111))

(assert (=> b!3584031 m!4076745))

(declare-fun m!4077113 () Bool)

(assert (=> b!3584031 m!4077113))

(declare-fun m!4077115 () Bool)

(assert (=> b!3584030 m!4077115))

(assert (=> b!3584030 m!4076745))

(assert (=> b!3584030 m!4077105))

(assert (=> b!3584030 m!4077105))

(assert (=> b!3584030 m!4077107))

(assert (=> b!3583610 d!1056621))

(declare-fun b!3584040 () Bool)

(declare-fun e!2217644 () Bool)

(declare-fun e!2217643 () Bool)

(assert (=> b!3584040 (= e!2217644 e!2217643)))

(declare-fun res!1446341 () Bool)

(assert (=> b!3584040 (=> (not res!1446341) (not e!2217643))))

(assert (=> b!3584040 (= res!1446341 (not ((_ is Nil!37669) lt!1229107)))))

(declare-fun b!3584042 () Bool)

(assert (=> b!3584042 (= e!2217643 (isPrefix!2919 (tail!5553 lt!1229110) (tail!5553 lt!1229107)))))

(declare-fun d!1056623 () Bool)

(declare-fun e!2217642 () Bool)

(assert (=> d!1056623 e!2217642))

(declare-fun res!1446344 () Bool)

(assert (=> d!1056623 (=> res!1446344 e!2217642)))

(declare-fun lt!1229204 () Bool)

(assert (=> d!1056623 (= res!1446344 (not lt!1229204))))

(assert (=> d!1056623 (= lt!1229204 e!2217644)))

(declare-fun res!1446342 () Bool)

(assert (=> d!1056623 (=> res!1446342 e!2217644)))

(assert (=> d!1056623 (= res!1446342 ((_ is Nil!37669) lt!1229110))))

(assert (=> d!1056623 (= (isPrefix!2919 lt!1229110 lt!1229107) lt!1229204)))

(declare-fun b!3584043 () Bool)

(assert (=> b!3584043 (= e!2217642 (>= (size!28702 lt!1229107) (size!28702 lt!1229110)))))

(declare-fun b!3584041 () Bool)

(declare-fun res!1446343 () Bool)

(assert (=> b!3584041 (=> (not res!1446343) (not e!2217643))))

(assert (=> b!3584041 (= res!1446343 (= (head!7473 lt!1229110) (head!7473 lt!1229107)))))

(assert (= (and d!1056623 (not res!1446342)) b!3584040))

(assert (= (and b!3584040 res!1446341) b!3584041))

(assert (= (and b!3584041 res!1446343) b!3584042))

(assert (= (and d!1056623 (not res!1446344)) b!3584043))

(assert (=> b!3584042 m!4076863))

(declare-fun m!4077117 () Bool)

(assert (=> b!3584042 m!4077117))

(assert (=> b!3584042 m!4076863))

(assert (=> b!3584042 m!4077117))

(declare-fun m!4077119 () Bool)

(assert (=> b!3584042 m!4077119))

(declare-fun m!4077121 () Bool)

(assert (=> b!3584043 m!4077121))

(assert (=> b!3584043 m!4077073))

(assert (=> b!3584041 m!4076859))

(declare-fun m!4077123 () Bool)

(assert (=> b!3584041 m!4077123))

(assert (=> b!3583610 d!1056623))

(declare-fun b!3584044 () Bool)

(declare-fun res!1446349 () Bool)

(declare-fun e!2217647 () Bool)

(assert (=> b!3584044 (=> (not res!1446349) (not e!2217647))))

(declare-fun lt!1229206 () Option!7744)

(assert (=> b!3584044 (= res!1446349 (matchR!4884 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))))))

(declare-fun b!3584045 () Bool)

(declare-fun res!1446346 () Bool)

(assert (=> b!3584045 (=> (not res!1446346) (not e!2217647))))

(assert (=> b!3584045 (= res!1446346 (= (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206)))) (originalCharacters!6270 (_1!21912 (get!12134 lt!1229206)))))))

(declare-fun b!3584046 () Bool)

(declare-fun e!2217645 () Bool)

(assert (=> b!3584046 (= e!2217645 e!2217647)))

(declare-fun res!1446348 () Bool)

(assert (=> b!3584046 (=> (not res!1446348) (not e!2217647))))

(assert (=> b!3584046 (= res!1446348 (isDefined!5978 lt!1229206))))

(declare-fun b!3584047 () Bool)

(declare-fun res!1446347 () Bool)

(assert (=> b!3584047 (=> (not res!1446347) (not e!2217647))))

(assert (=> b!3584047 (= res!1446347 (= (++!9368 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206)))) (_2!21912 (get!12134 lt!1229206))) lt!1229107))))

(declare-fun b!3584048 () Bool)

(declare-fun e!2217646 () Option!7744)

(declare-fun call!259484 () Option!7744)

(assert (=> b!3584048 (= e!2217646 call!259484)))

(declare-fun bm!259479 () Bool)

(assert (=> bm!259479 (= call!259484 (maxPrefixOneRule!1831 thiss!23823 (h!43091 rules!3307) lt!1229107))))

(declare-fun b!3584049 () Bool)

(assert (=> b!3584049 (= e!2217647 (contains!7172 rules!3307 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))))

(declare-fun b!3584050 () Bool)

(declare-fun res!1446351 () Bool)

(assert (=> b!3584050 (=> (not res!1446351) (not e!2217647))))

(assert (=> b!3584050 (= res!1446351 (= (value!178806 (_1!21912 (get!12134 lt!1229206))) (apply!9068 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229206)))))))))

(declare-fun d!1056625 () Bool)

(assert (=> d!1056625 e!2217645))

(declare-fun res!1446350 () Bool)

(assert (=> d!1056625 (=> res!1446350 e!2217645)))

(assert (=> d!1056625 (= res!1446350 (isEmpty!22189 lt!1229206))))

(assert (=> d!1056625 (= lt!1229206 e!2217646)))

(declare-fun c!620836 () Bool)

(assert (=> d!1056625 (= c!620836 (and ((_ is Cons!37671) rules!3307) ((_ is Nil!37671) (t!290424 rules!3307))))))

(declare-fun lt!1229205 () Unit!53667)

(declare-fun lt!1229208 () Unit!53667)

(assert (=> d!1056625 (= lt!1229205 lt!1229208)))

(assert (=> d!1056625 (isPrefix!2919 lt!1229107 lt!1229107)))

(assert (=> d!1056625 (= lt!1229208 (lemmaIsPrefixRefl!1872 lt!1229107 lt!1229107))))

(assert (=> d!1056625 (rulesValidInductive!1935 thiss!23823 rules!3307)))

(assert (=> d!1056625 (= (maxPrefix!2679 thiss!23823 rules!3307 lt!1229107) lt!1229206)))

(declare-fun b!3584051 () Bool)

(declare-fun lt!1229207 () Option!7744)

(declare-fun lt!1229209 () Option!7744)

(assert (=> b!3584051 (= e!2217646 (ite (and ((_ is None!7743) lt!1229207) ((_ is None!7743) lt!1229209)) None!7743 (ite ((_ is None!7743) lt!1229209) lt!1229207 (ite ((_ is None!7743) lt!1229207) lt!1229209 (ite (>= (size!28698 (_1!21912 (v!37397 lt!1229207))) (size!28698 (_1!21912 (v!37397 lt!1229209)))) lt!1229207 lt!1229209)))))))

(assert (=> b!3584051 (= lt!1229207 call!259484)))

(assert (=> b!3584051 (= lt!1229209 (maxPrefix!2679 thiss!23823 (t!290424 rules!3307) lt!1229107))))

(declare-fun b!3584052 () Bool)

(declare-fun res!1446345 () Bool)

(assert (=> b!3584052 (=> (not res!1446345) (not e!2217647))))

(assert (=> b!3584052 (= res!1446345 (< (size!28702 (_2!21912 (get!12134 lt!1229206))) (size!28702 lt!1229107)))))

(assert (= (and d!1056625 c!620836) b!3584048))

(assert (= (and d!1056625 (not c!620836)) b!3584051))

(assert (= (or b!3584048 b!3584051) bm!259479))

(assert (= (and d!1056625 (not res!1446350)) b!3584046))

(assert (= (and b!3584046 res!1446348) b!3584045))

(assert (= (and b!3584045 res!1446346) b!3584052))

(assert (= (and b!3584052 res!1446345) b!3584047))

(assert (= (and b!3584047 res!1446347) b!3584050))

(assert (= (and b!3584050 res!1446351) b!3584044))

(assert (= (and b!3584044 res!1446349) b!3584049))

(declare-fun m!4077125 () Bool)

(assert (=> bm!259479 m!4077125))

(declare-fun m!4077127 () Bool)

(assert (=> b!3584046 m!4077127))

(declare-fun m!4077129 () Bool)

(assert (=> d!1056625 m!4077129))

(declare-fun m!4077131 () Bool)

(assert (=> d!1056625 m!4077131))

(declare-fun m!4077133 () Bool)

(assert (=> d!1056625 m!4077133))

(assert (=> d!1056625 m!4077053))

(declare-fun m!4077135 () Bool)

(assert (=> b!3584047 m!4077135))

(declare-fun m!4077137 () Bool)

(assert (=> b!3584047 m!4077137))

(assert (=> b!3584047 m!4077137))

(declare-fun m!4077139 () Bool)

(assert (=> b!3584047 m!4077139))

(assert (=> b!3584047 m!4077139))

(declare-fun m!4077141 () Bool)

(assert (=> b!3584047 m!4077141))

(assert (=> b!3584044 m!4077135))

(assert (=> b!3584044 m!4077137))

(assert (=> b!3584044 m!4077137))

(assert (=> b!3584044 m!4077139))

(assert (=> b!3584044 m!4077139))

(declare-fun m!4077143 () Bool)

(assert (=> b!3584044 m!4077143))

(assert (=> b!3584045 m!4077135))

(assert (=> b!3584045 m!4077137))

(assert (=> b!3584045 m!4077137))

(assert (=> b!3584045 m!4077139))

(assert (=> b!3584050 m!4077135))

(declare-fun m!4077145 () Bool)

(assert (=> b!3584050 m!4077145))

(assert (=> b!3584050 m!4077145))

(declare-fun m!4077147 () Bool)

(assert (=> b!3584050 m!4077147))

(assert (=> b!3584049 m!4077135))

(declare-fun m!4077149 () Bool)

(assert (=> b!3584049 m!4077149))

(assert (=> b!3584052 m!4077135))

(declare-fun m!4077151 () Bool)

(assert (=> b!3584052 m!4077151))

(assert (=> b!3584052 m!4077121))

(declare-fun m!4077153 () Bool)

(assert (=> b!3584051 m!4077153))

(assert (=> b!3583610 d!1056625))

(declare-fun lt!1229212 () Bool)

(declare-fun d!1056627 () Bool)

(declare-fun isEmpty!22190 (List!37796) Bool)

(assert (=> d!1056627 (= lt!1229212 (isEmpty!22190 (list!13841 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))))))

(declare-fun isEmpty!22191 (Conc!11456) Bool)

(assert (=> d!1056627 (= lt!1229212 (isEmpty!22191 (c!620760 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))))))

(assert (=> d!1056627 (= (isEmpty!22185 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110)))) lt!1229212)))

(declare-fun bs!569931 () Bool)

(assert (= bs!569931 d!1056627))

(declare-fun m!4077155 () Bool)

(assert (=> bs!569931 m!4077155))

(assert (=> bs!569931 m!4077155))

(declare-fun m!4077157 () Bool)

(assert (=> bs!569931 m!4077157))

(declare-fun m!4077159 () Bool)

(assert (=> bs!569931 m!4077159))

(assert (=> b!3583610 d!1056627))

(declare-fun d!1056629 () Bool)

(assert (=> d!1056629 (= (inv!50984 (tag!6222 rule!403)) (= (mod (str.len (value!178805 (tag!6222 rule!403))) 2) 0))))

(assert (=> b!3583612 d!1056629))

(declare-fun d!1056631 () Bool)

(declare-fun res!1446352 () Bool)

(declare-fun e!2217648 () Bool)

(assert (=> d!1056631 (=> (not res!1446352) (not e!2217648))))

(assert (=> d!1056631 (= res!1446352 (semiInverseModEq!2353 (toChars!7691 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 rule!403))))))

(assert (=> d!1056631 (= (inv!50987 (transformation!5556 rule!403)) e!2217648)))

(declare-fun b!3584053 () Bool)

(assert (=> b!3584053 (= e!2217648 (equivClasses!2252 (toChars!7691 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 rule!403))))))

(assert (= (and d!1056631 res!1446352) b!3584053))

(declare-fun m!4077161 () Bool)

(assert (=> d!1056631 m!4077161))

(declare-fun m!4077163 () Bool)

(assert (=> b!3584053 m!4077163))

(assert (=> b!3583612 d!1056631))

(declare-fun d!1056633 () Bool)

(assert (=> d!1056633 (= (isEmpty!22183 (_2!21912 lt!1229112)) ((_ is Nil!37669) (_2!21912 lt!1229112)))))

(assert (=> b!3583603 d!1056633))

(declare-fun d!1056635 () Bool)

(declare-fun c!620841 () Bool)

(assert (=> d!1056635 (= c!620841 ((_ is IntegerValue!17358) (value!178806 token!511)))))

(declare-fun e!2217656 () Bool)

(assert (=> d!1056635 (= (inv!21 (value!178806 token!511)) e!2217656)))

(declare-fun b!3584064 () Bool)

(declare-fun e!2217657 () Bool)

(declare-fun inv!15 (TokenValue!5786) Bool)

(assert (=> b!3584064 (= e!2217657 (inv!15 (value!178806 token!511)))))

(declare-fun b!3584065 () Bool)

(declare-fun e!2217655 () Bool)

(declare-fun inv!17 (TokenValue!5786) Bool)

(assert (=> b!3584065 (= e!2217655 (inv!17 (value!178806 token!511)))))

(declare-fun b!3584066 () Bool)

(assert (=> b!3584066 (= e!2217656 e!2217655)))

(declare-fun c!620842 () Bool)

(assert (=> b!3584066 (= c!620842 ((_ is IntegerValue!17359) (value!178806 token!511)))))

(declare-fun b!3584067 () Bool)

(declare-fun inv!16 (TokenValue!5786) Bool)

(assert (=> b!3584067 (= e!2217656 (inv!16 (value!178806 token!511)))))

(declare-fun b!3584068 () Bool)

(declare-fun res!1446355 () Bool)

(assert (=> b!3584068 (=> res!1446355 e!2217657)))

(assert (=> b!3584068 (= res!1446355 (not ((_ is IntegerValue!17360) (value!178806 token!511))))))

(assert (=> b!3584068 (= e!2217655 e!2217657)))

(assert (= (and d!1056635 c!620841) b!3584067))

(assert (= (and d!1056635 (not c!620841)) b!3584066))

(assert (= (and b!3584066 c!620842) b!3584065))

(assert (= (and b!3584066 (not c!620842)) b!3584068))

(assert (= (and b!3584068 (not res!1446355)) b!3584064))

(declare-fun m!4077165 () Bool)

(assert (=> b!3584064 m!4077165))

(declare-fun m!4077167 () Bool)

(assert (=> b!3584065 m!4077167))

(declare-fun m!4077169 () Bool)

(assert (=> b!3584067 m!4077169))

(assert (=> b!3583613 d!1056635))

(declare-fun d!1056637 () Bool)

(declare-fun lt!1229215 () Bool)

(declare-fun content!5349 (List!37795) (InoxSet Rule!10912))

(assert (=> d!1056637 (= lt!1229215 (select (content!5349 rules!3307) rule!403))))

(declare-fun e!2217662 () Bool)

(assert (=> d!1056637 (= lt!1229215 e!2217662)))

(declare-fun res!1446360 () Bool)

(assert (=> d!1056637 (=> (not res!1446360) (not e!2217662))))

(assert (=> d!1056637 (= res!1446360 ((_ is Cons!37671) rules!3307))))

(assert (=> d!1056637 (= (contains!7172 rules!3307 rule!403) lt!1229215)))

(declare-fun b!3584073 () Bool)

(declare-fun e!2217663 () Bool)

(assert (=> b!3584073 (= e!2217662 e!2217663)))

(declare-fun res!1446361 () Bool)

(assert (=> b!3584073 (=> res!1446361 e!2217663)))

(assert (=> b!3584073 (= res!1446361 (= (h!43091 rules!3307) rule!403))))

(declare-fun b!3584074 () Bool)

(assert (=> b!3584074 (= e!2217663 (contains!7172 (t!290424 rules!3307) rule!403))))

(assert (= (and d!1056637 res!1446360) b!3584073))

(assert (= (and b!3584073 (not res!1446361)) b!3584074))

(declare-fun m!4077171 () Bool)

(assert (=> d!1056637 m!4077171))

(declare-fun m!4077173 () Bool)

(assert (=> d!1056637 m!4077173))

(declare-fun m!4077175 () Bool)

(assert (=> b!3584074 m!4077175))

(assert (=> b!3583604 d!1056637))

(declare-fun d!1056639 () Bool)

(assert (=> d!1056639 (= (inv!50984 (tag!6222 (h!43091 rules!3307))) (= (mod (str.len (value!178805 (tag!6222 (h!43091 rules!3307)))) 2) 0))))

(assert (=> b!3583615 d!1056639))

(declare-fun d!1056641 () Bool)

(declare-fun res!1446362 () Bool)

(declare-fun e!2217664 () Bool)

(assert (=> d!1056641 (=> (not res!1446362) (not e!2217664))))

(assert (=> d!1056641 (= res!1446362 (semiInverseModEq!2353 (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toValue!7832 (transformation!5556 (h!43091 rules!3307)))))))

(assert (=> d!1056641 (= (inv!50987 (transformation!5556 (h!43091 rules!3307))) e!2217664)))

(declare-fun b!3584075 () Bool)

(assert (=> b!3584075 (= e!2217664 (equivClasses!2252 (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toValue!7832 (transformation!5556 (h!43091 rules!3307)))))))

(assert (= (and d!1056641 res!1446362) b!3584075))

(declare-fun m!4077177 () Bool)

(assert (=> d!1056641 m!4077177))

(declare-fun m!4077179 () Bool)

(assert (=> b!3584075 m!4077179))

(assert (=> b!3583615 d!1056641))

(declare-fun d!1056643 () Bool)

(declare-fun res!1446367 () Bool)

(declare-fun e!2217669 () Bool)

(assert (=> d!1056643 (=> res!1446367 e!2217669)))

(assert (=> d!1056643 (= res!1446367 (not ((_ is Cons!37671) rules!3307)))))

(assert (=> d!1056643 (= (sepAndNonSepRulesDisjointChars!1726 rules!3307 rules!3307) e!2217669)))

(declare-fun b!3584080 () Bool)

(declare-fun e!2217670 () Bool)

(assert (=> b!3584080 (= e!2217669 e!2217670)))

(declare-fun res!1446368 () Bool)

(assert (=> b!3584080 (=> (not res!1446368) (not e!2217670))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!779 (Rule!10912 List!37795) Bool)

(assert (=> b!3584080 (= res!1446368 (ruleDisjointCharsFromAllFromOtherType!779 (h!43091 rules!3307) rules!3307))))

(declare-fun b!3584081 () Bool)

(assert (=> b!3584081 (= e!2217670 (sepAndNonSepRulesDisjointChars!1726 rules!3307 (t!290424 rules!3307)))))

(assert (= (and d!1056643 (not res!1446367)) b!3584080))

(assert (= (and b!3584080 res!1446368) b!3584081))

(declare-fun m!4077181 () Bool)

(assert (=> b!3584080 m!4077181))

(declare-fun m!4077183 () Bool)

(assert (=> b!3584081 m!4077183))

(assert (=> b!3583614 d!1056643))

(declare-fun d!1056645 () Bool)

(assert (=> d!1056645 (= (isEmpty!22183 suffix!1395) ((_ is Nil!37669) suffix!1395))))

(assert (=> b!3583595 d!1056645))

(declare-fun d!1056647 () Bool)

(declare-fun res!1446371 () Bool)

(declare-fun e!2217673 () Bool)

(assert (=> d!1056647 (=> (not res!1446371) (not e!2217673))))

(declare-fun rulesValid!2112 (LexerInterface!5145 List!37795) Bool)

(assert (=> d!1056647 (= res!1446371 (rulesValid!2112 thiss!23823 rules!3307))))

(assert (=> d!1056647 (= (rulesInvariant!4542 thiss!23823 rules!3307) e!2217673)))

(declare-fun b!3584084 () Bool)

(declare-datatypes ((List!37798 0))(
  ( (Nil!37674) (Cons!37674 (h!43094 String!42264) (t!290447 List!37798)) )
))
(declare-fun noDuplicateTag!2108 (LexerInterface!5145 List!37795 List!37798) Bool)

(assert (=> b!3584084 (= e!2217673 (noDuplicateTag!2108 thiss!23823 rules!3307 Nil!37674))))

(assert (= (and d!1056647 res!1446371) b!3584084))

(declare-fun m!4077185 () Bool)

(assert (=> d!1056647 m!4077185))

(declare-fun m!4077187 () Bool)

(assert (=> b!3584084 m!4077187))

(assert (=> b!3583596 d!1056647))

(declare-fun d!1056649 () Bool)

(declare-fun lt!1229216 () Bool)

(assert (=> d!1056649 (= lt!1229216 (select (content!5349 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2217674 () Bool)

(assert (=> d!1056649 (= lt!1229216 e!2217674)))

(declare-fun res!1446372 () Bool)

(assert (=> d!1056649 (=> (not res!1446372) (not e!2217674))))

(assert (=> d!1056649 (= res!1446372 ((_ is Cons!37671) rules!3307))))

(assert (=> d!1056649 (= (contains!7172 rules!3307 anOtherTypeRule!33) lt!1229216)))

(declare-fun b!3584085 () Bool)

(declare-fun e!2217675 () Bool)

(assert (=> b!3584085 (= e!2217674 e!2217675)))

(declare-fun res!1446373 () Bool)

(assert (=> b!3584085 (=> res!1446373 e!2217675)))

(assert (=> b!3584085 (= res!1446373 (= (h!43091 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3584086 () Bool)

(assert (=> b!3584086 (= e!2217675 (contains!7172 (t!290424 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1056649 res!1446372) b!3584085))

(assert (= (and b!3584085 (not res!1446373)) b!3584086))

(assert (=> d!1056649 m!4077171))

(declare-fun m!4077189 () Bool)

(assert (=> d!1056649 m!4077189))

(declare-fun m!4077191 () Bool)

(assert (=> b!3584086 m!4077191))

(assert (=> b!3583607 d!1056649))

(declare-fun d!1056651 () Bool)

(assert (=> d!1056651 (= (inv!50984 (tag!6222 (rule!8268 token!511))) (= (mod (str.len (value!178805 (tag!6222 (rule!8268 token!511)))) 2) 0))))

(assert (=> b!3583617 d!1056651))

(declare-fun d!1056653 () Bool)

(declare-fun res!1446374 () Bool)

(declare-fun e!2217676 () Bool)

(assert (=> d!1056653 (=> (not res!1446374) (not e!2217676))))

(assert (=> d!1056653 (= res!1446374 (semiInverseModEq!2353 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 (rule!8268 token!511)))))))

(assert (=> d!1056653 (= (inv!50987 (transformation!5556 (rule!8268 token!511))) e!2217676)))

(declare-fun b!3584087 () Bool)

(assert (=> b!3584087 (= e!2217676 (equivClasses!2252 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 (rule!8268 token!511)))))))

(assert (= (and d!1056653 res!1446374) b!3584087))

(declare-fun m!4077193 () Bool)

(assert (=> d!1056653 m!4077193))

(declare-fun m!4077195 () Bool)

(assert (=> b!3584087 m!4077195))

(assert (=> b!3583617 d!1056653))

(declare-fun b!3584092 () Bool)

(declare-fun e!2217679 () Bool)

(declare-fun tp!1097297 () Bool)

(assert (=> b!3584092 (= e!2217679 (and tp_is_empty!17713 tp!1097297))))

(assert (=> b!3583613 (= tp!1097241 e!2217679)))

(assert (= (and b!3583613 ((_ is Cons!37669) (originalCharacters!6270 token!511))) b!3584092))

(declare-fun b!3584103 () Bool)

(declare-fun b_free!92253 () Bool)

(declare-fun b_next!92957 () Bool)

(assert (=> b!3584103 (= b_free!92253 (not b_next!92957))))

(declare-fun tp!1097307 () Bool)

(declare-fun b_and!258779 () Bool)

(assert (=> b!3584103 (= tp!1097307 b_and!258779)))

(declare-fun b_free!92255 () Bool)

(declare-fun b_next!92959 () Bool)

(assert (=> b!3584103 (= b_free!92255 (not b_next!92959))))

(declare-fun tb!204419 () Bool)

(declare-fun t!290446 () Bool)

(assert (=> (and b!3584103 (= (toChars!7691 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toChars!7691 (transformation!5556 (rule!8268 token!511)))) t!290446) tb!204419))

(declare-fun result!249254 () Bool)

(assert (= result!249254 result!249232))

(assert (=> b!3583812 t!290446))

(assert (=> d!1056613 t!290446))

(declare-fun b_and!258781 () Bool)

(declare-fun tp!1097308 () Bool)

(assert (=> b!3584103 (= tp!1097308 (and (=> t!290446 result!249254) b_and!258781))))

(declare-fun e!2217690 () Bool)

(assert (=> b!3584103 (= e!2217690 (and tp!1097307 tp!1097308))))

(declare-fun b!3584102 () Bool)

(declare-fun e!2217691 () Bool)

(declare-fun tp!1097309 () Bool)

(assert (=> b!3584102 (= e!2217691 (and tp!1097309 (inv!50984 (tag!6222 (h!43091 (t!290424 rules!3307)))) (inv!50987 (transformation!5556 (h!43091 (t!290424 rules!3307)))) e!2217690))))

(declare-fun b!3584101 () Bool)

(declare-fun e!2217688 () Bool)

(declare-fun tp!1097306 () Bool)

(assert (=> b!3584101 (= e!2217688 (and e!2217691 tp!1097306))))

(assert (=> b!3583597 (= tp!1097235 e!2217688)))

(assert (= b!3584102 b!3584103))

(assert (= b!3584101 b!3584102))

(assert (= (and b!3583597 ((_ is Cons!37671) (t!290424 rules!3307))) b!3584101))

(declare-fun m!4077197 () Bool)

(assert (=> b!3584102 m!4077197))

(declare-fun m!4077199 () Bool)

(assert (=> b!3584102 m!4077199))

(declare-fun b!3584114 () Bool)

(declare-fun e!2217694 () Bool)

(assert (=> b!3584114 (= e!2217694 tp_is_empty!17713)))

(declare-fun b!3584115 () Bool)

(declare-fun tp!1097324 () Bool)

(declare-fun tp!1097323 () Bool)

(assert (=> b!3584115 (= e!2217694 (and tp!1097324 tp!1097323))))

(declare-fun b!3584117 () Bool)

(declare-fun tp!1097321 () Bool)

(declare-fun tp!1097322 () Bool)

(assert (=> b!3584117 (= e!2217694 (and tp!1097321 tp!1097322))))

(declare-fun b!3584116 () Bool)

(declare-fun tp!1097320 () Bool)

(assert (=> b!3584116 (= e!2217694 tp!1097320)))

(assert (=> b!3583615 (= tp!1097236 e!2217694)))

(assert (= (and b!3583615 ((_ is ElementMatch!10315) (regex!5556 (h!43091 rules!3307)))) b!3584114))

(assert (= (and b!3583615 ((_ is Concat!16102) (regex!5556 (h!43091 rules!3307)))) b!3584115))

(assert (= (and b!3583615 ((_ is Star!10315) (regex!5556 (h!43091 rules!3307)))) b!3584116))

(assert (= (and b!3583615 ((_ is Union!10315) (regex!5556 (h!43091 rules!3307)))) b!3584117))

(declare-fun b!3584118 () Bool)

(declare-fun e!2217695 () Bool)

(assert (=> b!3584118 (= e!2217695 tp_is_empty!17713)))

(declare-fun b!3584119 () Bool)

(declare-fun tp!1097329 () Bool)

(declare-fun tp!1097328 () Bool)

(assert (=> b!3584119 (= e!2217695 (and tp!1097329 tp!1097328))))

(declare-fun b!3584121 () Bool)

(declare-fun tp!1097326 () Bool)

(declare-fun tp!1097327 () Bool)

(assert (=> b!3584121 (= e!2217695 (and tp!1097326 tp!1097327))))

(declare-fun b!3584120 () Bool)

(declare-fun tp!1097325 () Bool)

(assert (=> b!3584120 (= e!2217695 tp!1097325)))

(assert (=> b!3583598 (= tp!1097233 e!2217695)))

(assert (= (and b!3583598 ((_ is ElementMatch!10315) (regex!5556 anOtherTypeRule!33))) b!3584118))

(assert (= (and b!3583598 ((_ is Concat!16102) (regex!5556 anOtherTypeRule!33))) b!3584119))

(assert (= (and b!3583598 ((_ is Star!10315) (regex!5556 anOtherTypeRule!33))) b!3584120))

(assert (= (and b!3583598 ((_ is Union!10315) (regex!5556 anOtherTypeRule!33))) b!3584121))

(declare-fun b!3584122 () Bool)

(declare-fun e!2217696 () Bool)

(assert (=> b!3584122 (= e!2217696 tp_is_empty!17713)))

(declare-fun b!3584123 () Bool)

(declare-fun tp!1097334 () Bool)

(declare-fun tp!1097333 () Bool)

(assert (=> b!3584123 (= e!2217696 (and tp!1097334 tp!1097333))))

(declare-fun b!3584125 () Bool)

(declare-fun tp!1097331 () Bool)

(declare-fun tp!1097332 () Bool)

(assert (=> b!3584125 (= e!2217696 (and tp!1097331 tp!1097332))))

(declare-fun b!3584124 () Bool)

(declare-fun tp!1097330 () Bool)

(assert (=> b!3584124 (= e!2217696 tp!1097330)))

(assert (=> b!3583612 (= tp!1097228 e!2217696)))

(assert (= (and b!3583612 ((_ is ElementMatch!10315) (regex!5556 rule!403))) b!3584122))

(assert (= (and b!3583612 ((_ is Concat!16102) (regex!5556 rule!403))) b!3584123))

(assert (= (and b!3583612 ((_ is Star!10315) (regex!5556 rule!403))) b!3584124))

(assert (= (and b!3583612 ((_ is Union!10315) (regex!5556 rule!403))) b!3584125))

(declare-fun b!3584126 () Bool)

(declare-fun e!2217697 () Bool)

(declare-fun tp!1097335 () Bool)

(assert (=> b!3584126 (= e!2217697 (and tp_is_empty!17713 tp!1097335))))

(assert (=> b!3583606 (= tp!1097242 e!2217697)))

(assert (= (and b!3583606 ((_ is Cons!37669) (t!290422 suffix!1395))) b!3584126))

(declare-fun b!3584127 () Bool)

(declare-fun e!2217698 () Bool)

(assert (=> b!3584127 (= e!2217698 tp_is_empty!17713)))

(declare-fun b!3584128 () Bool)

(declare-fun tp!1097340 () Bool)

(declare-fun tp!1097339 () Bool)

(assert (=> b!3584128 (= e!2217698 (and tp!1097340 tp!1097339))))

(declare-fun b!3584130 () Bool)

(declare-fun tp!1097337 () Bool)

(declare-fun tp!1097338 () Bool)

(assert (=> b!3584130 (= e!2217698 (and tp!1097337 tp!1097338))))

(declare-fun b!3584129 () Bool)

(declare-fun tp!1097336 () Bool)

(assert (=> b!3584129 (= e!2217698 tp!1097336)))

(assert (=> b!3583617 (= tp!1097230 e!2217698)))

(assert (= (and b!3583617 ((_ is ElementMatch!10315) (regex!5556 (rule!8268 token!511)))) b!3584127))

(assert (= (and b!3583617 ((_ is Concat!16102) (regex!5556 (rule!8268 token!511)))) b!3584128))

(assert (= (and b!3583617 ((_ is Star!10315) (regex!5556 (rule!8268 token!511)))) b!3584129))

(assert (= (and b!3583617 ((_ is Union!10315) (regex!5556 (rule!8268 token!511)))) b!3584130))

(declare-fun b_lambda!105903 () Bool)

(assert (= b_lambda!105893 (or (and b!3584103 b_free!92255 (= (toChars!7691 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toChars!7691 (transformation!5556 (rule!8268 token!511))))) (and b!3583618 b_free!92235 (= (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toChars!7691 (transformation!5556 (rule!8268 token!511))))) (and b!3583620 b_free!92247 (= (toChars!7691 (transformation!5556 rule!403)) (toChars!7691 (transformation!5556 (rule!8268 token!511))))) (and b!3583605 b_free!92239 (= (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toChars!7691 (transformation!5556 (rule!8268 token!511))))) (and b!3583616 b_free!92243) b_lambda!105903)))

(declare-fun b_lambda!105905 () Bool)

(assert (= b_lambda!105901 (or (and b!3584103 b_free!92255 (= (toChars!7691 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toChars!7691 (transformation!5556 (rule!8268 token!511))))) (and b!3583618 b_free!92235 (= (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toChars!7691 (transformation!5556 (rule!8268 token!511))))) (and b!3583620 b_free!92247 (= (toChars!7691 (transformation!5556 rule!403)) (toChars!7691 (transformation!5556 (rule!8268 token!511))))) (and b!3583605 b_free!92239 (= (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toChars!7691 (transformation!5556 (rule!8268 token!511))))) (and b!3583616 b_free!92243) b_lambda!105905)))

(check-sat (not b!3584050) (not b_next!92939) (not b!3584014) (not b!3584046) (not b!3584043) (not b!3584119) (not d!1056571) (not d!1056585) b_and!258727 (not d!1056579) (not b!3584074) (not b!3583996) (not b!3584120) (not d!1056587) (not b!3584029) (not b!3583776) (not b!3583813) (not b!3584087) (not d!1056627) (not bm!259455) (not b!3584075) (not b!3583763) (not b!3584126) (not b!3584101) (not d!1056625) (not b!3584092) (not b!3584044) (not b!3583998) (not b!3583997) (not b!3583754) (not b!3584002) b_and!258739 (not b!3584047) (not b!3584117) (not bm!259466) (not b_next!92957) (not b!3583783) b_and!258779 (not bm!259469) b_and!258775 (not b!3583812) (not d!1056647) (not tb!204409) (not bm!259479) (not b!3583755) (not b!3584081) (not b_next!92941) (not b!3583756) (not b!3584080) (not b!3584049) (not b!3584067) (not d!1056611) (not b!3584123) (not b!3584030) (not b!3584051) (not b!3584052) (not b!3584084) (not b_next!92951) (not d!1056631) (not b!3583762) (not d!1056649) (not d!1056613) (not b!3584004) (not b!3584130) (not b!3583831) (not b_next!92949) tp_is_empty!17713 (not b_next!92945) (not b!3584045) (not b!3583820) (not d!1056641) (not bm!259464) (not b!3584129) (not b!3584031) (not bm!259468) b_and!258781 (not d!1056621) (not b!3584086) (not b!3584041) (not b!3584121) (not b_next!92937) (not d!1056653) (not b!3583757) (not b!3584053) (not b!3584065) (not b!3584102) (not b!3584115) (not d!1056619) (not b!3584128) (not b_lambda!105905) b_and!258773 (not bm!259465) (not b_next!92947) (not d!1056565) (not b_next!92943) (not b_lambda!105903) b_and!258731 (not d!1056541) (not d!1056569) (not b!3584116) (not d!1056615) (not b!3584001) (not bm!259470) b_and!258777 (not bm!259478) (not b!3584003) (not d!1056617) (not d!1056547) (not b!3584064) (not d!1056561) (not d!1056637) (not b!3584125) b_and!258771 (not b!3584042) (not b_next!92959) (not b!3583818) b_and!258735 (not b!3584124) (not b!3583999) (not b!3584015) (not b!3584028))
(check-sat b_and!258727 b_and!258739 b_and!258775 (not b_next!92939) (not b_next!92941) (not b_next!92951) b_and!258781 (not b_next!92937) b_and!258773 b_and!258731 b_and!258777 b_and!258735 (not b_next!92957) b_and!258779 (not b_next!92949) (not b_next!92945) (not b_next!92947) (not b_next!92943) b_and!258771 (not b_next!92959))
(get-model)

(declare-fun d!1056663 () Bool)

(assert (=> d!1056663 (= (isEmpty!22189 lt!1229186) (not ((_ is Some!7743) lt!1229186)))))

(assert (=> d!1056587 d!1056663))

(declare-fun b!3584139 () Bool)

(declare-fun e!2217705 () Bool)

(declare-fun e!2217704 () Bool)

(assert (=> b!3584139 (= e!2217705 e!2217704)))

(declare-fun res!1446383 () Bool)

(assert (=> b!3584139 (=> (not res!1446383) (not e!2217704))))

(assert (=> b!3584139 (= res!1446383 (not ((_ is Nil!37669) lt!1229110)))))

(declare-fun b!3584141 () Bool)

(assert (=> b!3584141 (= e!2217704 (isPrefix!2919 (tail!5553 lt!1229110) (tail!5553 lt!1229110)))))

(declare-fun d!1056665 () Bool)

(declare-fun e!2217703 () Bool)

(assert (=> d!1056665 e!2217703))

(declare-fun res!1446386 () Bool)

(assert (=> d!1056665 (=> res!1446386 e!2217703)))

(declare-fun lt!1229221 () Bool)

(assert (=> d!1056665 (= res!1446386 (not lt!1229221))))

(assert (=> d!1056665 (= lt!1229221 e!2217705)))

(declare-fun res!1446384 () Bool)

(assert (=> d!1056665 (=> res!1446384 e!2217705)))

(assert (=> d!1056665 (= res!1446384 ((_ is Nil!37669) lt!1229110))))

(assert (=> d!1056665 (= (isPrefix!2919 lt!1229110 lt!1229110) lt!1229221)))

(declare-fun b!3584142 () Bool)

(assert (=> b!3584142 (= e!2217703 (>= (size!28702 lt!1229110) (size!28702 lt!1229110)))))

(declare-fun b!3584140 () Bool)

(declare-fun res!1446385 () Bool)

(assert (=> b!3584140 (=> (not res!1446385) (not e!2217704))))

(assert (=> b!3584140 (= res!1446385 (= (head!7473 lt!1229110) (head!7473 lt!1229110)))))

(assert (= (and d!1056665 (not res!1446384)) b!3584139))

(assert (= (and b!3584139 res!1446383) b!3584140))

(assert (= (and b!3584140 res!1446385) b!3584141))

(assert (= (and d!1056665 (not res!1446386)) b!3584142))

(assert (=> b!3584141 m!4076863))

(assert (=> b!3584141 m!4076863))

(assert (=> b!3584141 m!4076863))

(assert (=> b!3584141 m!4076863))

(declare-fun m!4077205 () Bool)

(assert (=> b!3584141 m!4077205))

(assert (=> b!3584142 m!4077073))

(assert (=> b!3584142 m!4077073))

(assert (=> b!3584140 m!4076859))

(assert (=> b!3584140 m!4076859))

(assert (=> d!1056587 d!1056665))

(declare-fun d!1056667 () Bool)

(assert (=> d!1056667 (isPrefix!2919 lt!1229110 lt!1229110)))

(declare-fun lt!1229224 () Unit!53667)

(declare-fun choose!20854 (List!37793 List!37793) Unit!53667)

(assert (=> d!1056667 (= lt!1229224 (choose!20854 lt!1229110 lt!1229110))))

(assert (=> d!1056667 (= (lemmaIsPrefixRefl!1872 lt!1229110 lt!1229110) lt!1229224)))

(declare-fun bs!569932 () Bool)

(assert (= bs!569932 d!1056667))

(assert (=> bs!569932 m!4077049))

(declare-fun m!4077207 () Bool)

(assert (=> bs!569932 m!4077207))

(assert (=> d!1056587 d!1056667))

(declare-fun d!1056669 () Bool)

(assert (=> d!1056669 true))

(declare-fun lt!1229278 () Bool)

(declare-fun lambda!123767 () Int)

(declare-fun forall!8142 (List!37795 Int) Bool)

(assert (=> d!1056669 (= lt!1229278 (forall!8142 rules!3307 lambda!123767))))

(declare-fun e!2217820 () Bool)

(assert (=> d!1056669 (= lt!1229278 e!2217820)))

(declare-fun res!1446497 () Bool)

(assert (=> d!1056669 (=> res!1446497 e!2217820)))

(assert (=> d!1056669 (= res!1446497 (not ((_ is Cons!37671) rules!3307)))))

(assert (=> d!1056669 (= (rulesValidInductive!1935 thiss!23823 rules!3307) lt!1229278)))

(declare-fun b!3584333 () Bool)

(declare-fun e!2217819 () Bool)

(assert (=> b!3584333 (= e!2217820 e!2217819)))

(declare-fun res!1446498 () Bool)

(assert (=> b!3584333 (=> (not res!1446498) (not e!2217819))))

(assert (=> b!3584333 (= res!1446498 (ruleValid!1821 thiss!23823 (h!43091 rules!3307)))))

(declare-fun b!3584334 () Bool)

(assert (=> b!3584334 (= e!2217819 (rulesValidInductive!1935 thiss!23823 (t!290424 rules!3307)))))

(assert (= (and d!1056669 (not res!1446497)) b!3584333))

(assert (= (and b!3584333 res!1446498) b!3584334))

(declare-fun m!4077515 () Bool)

(assert (=> d!1056669 m!4077515))

(declare-fun m!4077517 () Bool)

(assert (=> b!3584333 m!4077517))

(declare-fun m!4077519 () Bool)

(assert (=> b!3584334 m!4077519))

(assert (=> d!1056587 d!1056669))

(declare-fun d!1056775 () Bool)

(assert (=> d!1056775 (= (head!7473 lt!1229110) (h!43089 lt!1229110))))

(assert (=> b!3583756 d!1056775))

(declare-fun d!1056777 () Bool)

(assert (=> d!1056777 true))

(declare-fun lambda!123770 () Int)

(declare-fun order!20443 () Int)

(declare-fun order!20445 () Int)

(declare-fun dynLambda!16196 (Int Int) Int)

(declare-fun dynLambda!16197 (Int Int) Int)

(assert (=> d!1056777 (< (dynLambda!16196 order!20443 (toValue!7832 (transformation!5556 (h!43091 rules!3307)))) (dynLambda!16197 order!20445 lambda!123770))))

(declare-fun Forall2!960 (Int) Bool)

(assert (=> d!1056777 (= (equivClasses!2252 (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toValue!7832 (transformation!5556 (h!43091 rules!3307)))) (Forall2!960 lambda!123770))))

(declare-fun bs!569956 () Bool)

(assert (= bs!569956 d!1056777))

(declare-fun m!4077531 () Bool)

(assert (=> bs!569956 m!4077531))

(assert (=> b!3584075 d!1056777))

(declare-fun b!3584349 () Bool)

(declare-fun e!2217831 () Bool)

(declare-fun e!2217830 () Bool)

(assert (=> b!3584349 (= e!2217831 e!2217830)))

(declare-fun res!1446503 () Bool)

(assert (=> b!3584349 (=> (not res!1446503) (not e!2217830))))

(assert (=> b!3584349 (= res!1446503 (not ((_ is Nil!37669) (tail!5553 lt!1229107))))))

(declare-fun b!3584351 () Bool)

(assert (=> b!3584351 (= e!2217830 (isPrefix!2919 (tail!5553 (tail!5553 lt!1229110)) (tail!5553 (tail!5553 lt!1229107))))))

(declare-fun d!1056787 () Bool)

(declare-fun e!2217829 () Bool)

(assert (=> d!1056787 e!2217829))

(declare-fun res!1446506 () Bool)

(assert (=> d!1056787 (=> res!1446506 e!2217829)))

(declare-fun lt!1229280 () Bool)

(assert (=> d!1056787 (= res!1446506 (not lt!1229280))))

(assert (=> d!1056787 (= lt!1229280 e!2217831)))

(declare-fun res!1446504 () Bool)

(assert (=> d!1056787 (=> res!1446504 e!2217831)))

(assert (=> d!1056787 (= res!1446504 ((_ is Nil!37669) (tail!5553 lt!1229110)))))

(assert (=> d!1056787 (= (isPrefix!2919 (tail!5553 lt!1229110) (tail!5553 lt!1229107)) lt!1229280)))

(declare-fun b!3584352 () Bool)

(assert (=> b!3584352 (= e!2217829 (>= (size!28702 (tail!5553 lt!1229107)) (size!28702 (tail!5553 lt!1229110))))))

(declare-fun b!3584350 () Bool)

(declare-fun res!1446505 () Bool)

(assert (=> b!3584350 (=> (not res!1446505) (not e!2217830))))

(assert (=> b!3584350 (= res!1446505 (= (head!7473 (tail!5553 lt!1229110)) (head!7473 (tail!5553 lt!1229107))))))

(assert (= (and d!1056787 (not res!1446504)) b!3584349))

(assert (= (and b!3584349 res!1446503) b!3584350))

(assert (= (and b!3584350 res!1446505) b!3584351))

(assert (= (and d!1056787 (not res!1446506)) b!3584352))

(assert (=> b!3584351 m!4076863))

(declare-fun m!4077533 () Bool)

(assert (=> b!3584351 m!4077533))

(assert (=> b!3584351 m!4077117))

(declare-fun m!4077537 () Bool)

(assert (=> b!3584351 m!4077537))

(assert (=> b!3584351 m!4077533))

(assert (=> b!3584351 m!4077537))

(declare-fun m!4077541 () Bool)

(assert (=> b!3584351 m!4077541))

(assert (=> b!3584352 m!4077117))

(declare-fun m!4077543 () Bool)

(assert (=> b!3584352 m!4077543))

(assert (=> b!3584352 m!4076863))

(declare-fun m!4077545 () Bool)

(assert (=> b!3584352 m!4077545))

(assert (=> b!3584350 m!4076863))

(declare-fun m!4077547 () Bool)

(assert (=> b!3584350 m!4077547))

(assert (=> b!3584350 m!4077117))

(declare-fun m!4077549 () Bool)

(assert (=> b!3584350 m!4077549))

(assert (=> b!3584042 d!1056787))

(declare-fun d!1056791 () Bool)

(assert (=> d!1056791 (= (tail!5553 lt!1229110) (t!290422 lt!1229110))))

(assert (=> b!3584042 d!1056791))

(declare-fun d!1056793 () Bool)

(assert (=> d!1056793 (= (tail!5553 lt!1229107) (t!290422 lt!1229107))))

(assert (=> b!3584042 d!1056793))

(declare-fun b!3584422 () Bool)

(declare-fun res!1446542 () Bool)

(declare-fun e!2217873 () Bool)

(assert (=> b!3584422 (=> (not res!1446542) (not e!2217873))))

(declare-fun lt!1229308 () Option!7744)

(assert (=> b!3584422 (= res!1446542 (< (size!28702 (_2!21912 (get!12134 lt!1229308))) (size!28702 lt!1229110)))))

(declare-fun b!3584423 () Bool)

(assert (=> b!3584423 (= e!2217873 (= (size!28698 (_1!21912 (get!12134 lt!1229308))) (size!28702 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229308))))))))

(declare-fun b!3584424 () Bool)

(declare-fun res!1446540 () Bool)

(assert (=> b!3584424 (=> (not res!1446540) (not e!2217873))))

(assert (=> b!3584424 (= res!1446540 (= (value!178806 (_1!21912 (get!12134 lt!1229308))) (apply!9068 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229308)))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229308)))))))))

(declare-fun b!3584425 () Bool)

(declare-fun e!2217875 () Option!7744)

(declare-datatypes ((tuple2!37566 0))(
  ( (tuple2!37567 (_1!21917 List!37793) (_2!21917 List!37793)) )
))
(declare-fun lt!1229309 () tuple2!37566)

(assert (=> b!3584425 (= e!2217875 (Some!7743 (tuple2!37557 (Token!10479 (apply!9068 (transformation!5556 (h!43091 rules!3307)) (seqFromList!4111 (_1!21917 lt!1229309))) (h!43091 rules!3307) (size!28704 (seqFromList!4111 (_1!21917 lt!1229309))) (_1!21917 lt!1229309)) (_2!21917 lt!1229309))))))

(declare-fun lt!1229311 () Unit!53667)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!940 (Regex!10315 List!37793) Unit!53667)

(assert (=> b!3584425 (= lt!1229311 (longestMatchIsAcceptedByMatchOrIsEmpty!940 (regex!5556 (h!43091 rules!3307)) lt!1229110))))

(declare-fun res!1446537 () Bool)

(declare-fun findLongestMatchInner!967 (Regex!10315 List!37793 Int List!37793 List!37793 Int) tuple2!37566)

(assert (=> b!3584425 (= res!1446537 (isEmpty!22183 (_1!21917 (findLongestMatchInner!967 (regex!5556 (h!43091 rules!3307)) Nil!37669 (size!28702 Nil!37669) lt!1229110 lt!1229110 (size!28702 lt!1229110)))))))

(declare-fun e!2217876 () Bool)

(assert (=> b!3584425 (=> res!1446537 e!2217876)))

(assert (=> b!3584425 e!2217876))

(declare-fun lt!1229312 () Unit!53667)

(assert (=> b!3584425 (= lt!1229312 lt!1229311)))

(declare-fun lt!1229310 () Unit!53667)

(declare-fun lemmaSemiInverse!1319 (TokenValueInjection!11000 BalanceConc!22524) Unit!53667)

(assert (=> b!3584425 (= lt!1229310 (lemmaSemiInverse!1319 (transformation!5556 (h!43091 rules!3307)) (seqFromList!4111 (_1!21917 lt!1229309))))))

(declare-fun b!3584427 () Bool)

(declare-fun res!1446541 () Bool)

(assert (=> b!3584427 (=> (not res!1446541) (not e!2217873))))

(assert (=> b!3584427 (= res!1446541 (= (++!9368 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229308)))) (_2!21912 (get!12134 lt!1229308))) lt!1229110))))

(declare-fun b!3584428 () Bool)

(declare-fun e!2217874 () Bool)

(assert (=> b!3584428 (= e!2217874 e!2217873)))

(declare-fun res!1446539 () Bool)

(assert (=> b!3584428 (=> (not res!1446539) (not e!2217873))))

(assert (=> b!3584428 (= res!1446539 (matchR!4884 (regex!5556 (h!43091 rules!3307)) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229308))))))))

(declare-fun b!3584429 () Bool)

(assert (=> b!3584429 (= e!2217876 (matchR!4884 (regex!5556 (h!43091 rules!3307)) (_1!21917 (findLongestMatchInner!967 (regex!5556 (h!43091 rules!3307)) Nil!37669 (size!28702 Nil!37669) lt!1229110 lt!1229110 (size!28702 lt!1229110)))))))

(declare-fun b!3584430 () Bool)

(declare-fun res!1446538 () Bool)

(assert (=> b!3584430 (=> (not res!1446538) (not e!2217873))))

(assert (=> b!3584430 (= res!1446538 (= (rule!8268 (_1!21912 (get!12134 lt!1229308))) (h!43091 rules!3307)))))

(declare-fun d!1056795 () Bool)

(assert (=> d!1056795 e!2217874))

(declare-fun res!1446536 () Bool)

(assert (=> d!1056795 (=> res!1446536 e!2217874)))

(assert (=> d!1056795 (= res!1446536 (isEmpty!22189 lt!1229308))))

(assert (=> d!1056795 (= lt!1229308 e!2217875)))

(declare-fun c!620905 () Bool)

(assert (=> d!1056795 (= c!620905 (isEmpty!22183 (_1!21917 lt!1229309)))))

(declare-fun findLongestMatch!882 (Regex!10315 List!37793) tuple2!37566)

(assert (=> d!1056795 (= lt!1229309 (findLongestMatch!882 (regex!5556 (h!43091 rules!3307)) lt!1229110))))

(assert (=> d!1056795 (ruleValid!1821 thiss!23823 (h!43091 rules!3307))))

(assert (=> d!1056795 (= (maxPrefixOneRule!1831 thiss!23823 (h!43091 rules!3307) lt!1229110) lt!1229308)))

(declare-fun b!3584426 () Bool)

(assert (=> b!3584426 (= e!2217875 None!7743)))

(assert (= (and d!1056795 c!620905) b!3584426))

(assert (= (and d!1056795 (not c!620905)) b!3584425))

(assert (= (and b!3584425 (not res!1446537)) b!3584429))

(assert (= (and d!1056795 (not res!1446536)) b!3584428))

(assert (= (and b!3584428 res!1446539) b!3584427))

(assert (= (and b!3584427 res!1446541) b!3584422))

(assert (= (and b!3584422 res!1446542) b!3584430))

(assert (= (and b!3584430 res!1446538) b!3584424))

(assert (= (and b!3584424 res!1446540) b!3584423))

(declare-fun m!4077597 () Bool)

(assert (=> b!3584427 m!4077597))

(declare-fun m!4077599 () Bool)

(assert (=> b!3584427 m!4077599))

(assert (=> b!3584427 m!4077599))

(declare-fun m!4077601 () Bool)

(assert (=> b!3584427 m!4077601))

(assert (=> b!3584427 m!4077601))

(declare-fun m!4077603 () Bool)

(assert (=> b!3584427 m!4077603))

(assert (=> b!3584424 m!4077597))

(declare-fun m!4077605 () Bool)

(assert (=> b!3584424 m!4077605))

(assert (=> b!3584424 m!4077605))

(declare-fun m!4077607 () Bool)

(assert (=> b!3584424 m!4077607))

(declare-fun m!4077609 () Bool)

(assert (=> b!3584429 m!4077609))

(assert (=> b!3584429 m!4077073))

(assert (=> b!3584429 m!4077609))

(assert (=> b!3584429 m!4077073))

(declare-fun m!4077611 () Bool)

(assert (=> b!3584429 m!4077611))

(declare-fun m!4077613 () Bool)

(assert (=> b!3584429 m!4077613))

(assert (=> b!3584422 m!4077597))

(declare-fun m!4077615 () Bool)

(assert (=> b!3584422 m!4077615))

(assert (=> b!3584422 m!4077073))

(assert (=> b!3584430 m!4077597))

(assert (=> b!3584428 m!4077597))

(assert (=> b!3584428 m!4077599))

(assert (=> b!3584428 m!4077599))

(assert (=> b!3584428 m!4077601))

(assert (=> b!3584428 m!4077601))

(declare-fun m!4077617 () Bool)

(assert (=> b!3584428 m!4077617))

(declare-fun m!4077619 () Bool)

(assert (=> d!1056795 m!4077619))

(declare-fun m!4077621 () Bool)

(assert (=> d!1056795 m!4077621))

(declare-fun m!4077623 () Bool)

(assert (=> d!1056795 m!4077623))

(assert (=> d!1056795 m!4077517))

(declare-fun m!4077625 () Bool)

(assert (=> b!3584425 m!4077625))

(declare-fun m!4077627 () Bool)

(assert (=> b!3584425 m!4077627))

(assert (=> b!3584425 m!4077627))

(declare-fun m!4077629 () Bool)

(assert (=> b!3584425 m!4077629))

(assert (=> b!3584425 m!4077627))

(declare-fun m!4077631 () Bool)

(assert (=> b!3584425 m!4077631))

(declare-fun m!4077633 () Bool)

(assert (=> b!3584425 m!4077633))

(assert (=> b!3584425 m!4077627))

(declare-fun m!4077635 () Bool)

(assert (=> b!3584425 m!4077635))

(assert (=> b!3584425 m!4077609))

(assert (=> b!3584425 m!4077073))

(assert (=> b!3584425 m!4077609))

(assert (=> b!3584425 m!4077073))

(assert (=> b!3584425 m!4077611))

(assert (=> b!3584423 m!4077597))

(declare-fun m!4077637 () Bool)

(assert (=> b!3584423 m!4077637))

(assert (=> bm!259478 d!1056795))

(declare-fun d!1056821 () Bool)

(declare-fun c!620908 () Bool)

(assert (=> d!1056821 (= c!620908 (and ((_ is Cons!37671) rules!3307) (not (= (isSeparator!5556 (h!43091 rules!3307)) (isSeparator!5556 (h!43091 rules!3307))))))))

(declare-fun e!2217885 () Bool)

(assert (=> d!1056821 (= (ruleDisjointCharsFromAllFromOtherType!779 (h!43091 rules!3307) rules!3307) e!2217885)))

(declare-fun bm!259510 () Bool)

(declare-fun call!259515 () Bool)

(assert (=> bm!259510 (= call!259515 (ruleDisjointCharsFromAllFromOtherType!779 (h!43091 rules!3307) (t!290424 rules!3307)))))

(declare-fun b!3584439 () Bool)

(declare-fun e!2217884 () Bool)

(assert (=> b!3584439 (= e!2217884 call!259515)))

(declare-fun b!3584440 () Bool)

(assert (=> b!3584440 (= e!2217885 e!2217884)))

(declare-fun res!1446548 () Bool)

(assert (=> b!3584440 (= res!1446548 (not ((_ is Cons!37671) rules!3307)))))

(assert (=> b!3584440 (=> res!1446548 e!2217884)))

(declare-fun b!3584441 () Bool)

(declare-fun e!2217883 () Bool)

(assert (=> b!3584441 (= e!2217885 e!2217883)))

(declare-fun res!1446547 () Bool)

(declare-fun rulesUseDisjointChars!364 (Rule!10912 Rule!10912) Bool)

(assert (=> b!3584441 (= res!1446547 (rulesUseDisjointChars!364 (h!43091 rules!3307) (h!43091 rules!3307)))))

(assert (=> b!3584441 (=> (not res!1446547) (not e!2217883))))

(declare-fun b!3584442 () Bool)

(assert (=> b!3584442 (= e!2217883 call!259515)))

(assert (= (and d!1056821 c!620908) b!3584441))

(assert (= (and d!1056821 (not c!620908)) b!3584440))

(assert (= (and b!3584441 res!1446547) b!3584442))

(assert (= (and b!3584440 (not res!1446548)) b!3584439))

(assert (= (or b!3584442 b!3584439) bm!259510))

(declare-fun m!4077639 () Bool)

(assert (=> bm!259510 m!4077639))

(declare-fun m!4077641 () Bool)

(assert (=> b!3584441 m!4077641))

(assert (=> b!3584080 d!1056821))

(declare-fun d!1056823 () Bool)

(assert (=> d!1056823 (= (get!12134 lt!1229206) (v!37397 lt!1229206))))

(assert (=> b!3584050 d!1056823))

(declare-fun d!1056825 () Bool)

(declare-fun dynLambda!16198 (Int BalanceConc!22524) TokenValue!5786)

(assert (=> d!1056825 (= (apply!9068 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229206))))) (dynLambda!16198 (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229206))))))))

(declare-fun b_lambda!105915 () Bool)

(assert (=> (not b_lambda!105915) (not d!1056825)))

(declare-fun t!290489 () Bool)

(declare-fun tb!204461 () Bool)

(assert (=> (and b!3583618 (= (toValue!7832 (transformation!5556 (h!43091 rules!3307))) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290489) tb!204461))

(declare-fun result!249300 () Bool)

(assert (=> tb!204461 (= result!249300 (inv!21 (dynLambda!16198 (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229206)))))))))

(declare-fun m!4077643 () Bool)

(assert (=> tb!204461 m!4077643))

(assert (=> d!1056825 t!290489))

(declare-fun b_and!258823 () Bool)

(assert (= b_and!258727 (and (=> t!290489 result!249300) b_and!258823)))

(declare-fun t!290491 () Bool)

(declare-fun tb!204463 () Bool)

(assert (=> (and b!3583620 (= (toValue!7832 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290491) tb!204463))

(declare-fun result!249304 () Bool)

(assert (= result!249304 result!249300))

(assert (=> d!1056825 t!290491))

(declare-fun b_and!258825 () Bool)

(assert (= b_and!258739 (and (=> t!290491 result!249304) b_and!258825)))

(declare-fun t!290493 () Bool)

(declare-fun tb!204465 () Bool)

(assert (=> (and b!3584103 (= (toValue!7832 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290493) tb!204465))

(declare-fun result!249306 () Bool)

(assert (= result!249306 result!249300))

(assert (=> d!1056825 t!290493))

(declare-fun b_and!258827 () Bool)

(assert (= b_and!258779 (and (=> t!290493 result!249306) b_and!258827)))

(declare-fun t!290495 () Bool)

(declare-fun tb!204467 () Bool)

(assert (=> (and b!3583616 (= (toValue!7832 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290495) tb!204467))

(declare-fun result!249308 () Bool)

(assert (= result!249308 result!249300))

(assert (=> d!1056825 t!290495))

(declare-fun b_and!258829 () Bool)

(assert (= b_and!258735 (and (=> t!290495 result!249308) b_and!258829)))

(declare-fun tb!204469 () Bool)

(declare-fun t!290497 () Bool)

(assert (=> (and b!3583605 (= (toValue!7832 (transformation!5556 anOtherTypeRule!33)) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290497) tb!204469))

(declare-fun result!249310 () Bool)

(assert (= result!249310 result!249300))

(assert (=> d!1056825 t!290497))

(declare-fun b_and!258831 () Bool)

(assert (= b_and!258731 (and (=> t!290497 result!249310) b_and!258831)))

(assert (=> d!1056825 m!4077145))

(declare-fun m!4077645 () Bool)

(assert (=> d!1056825 m!4077645))

(assert (=> b!3584050 d!1056825))

(declare-fun d!1056827 () Bool)

(assert (=> d!1056827 (= (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229206)))) (fromListB!1897 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229206)))))))

(declare-fun bs!569962 () Bool)

(assert (= bs!569962 d!1056827))

(declare-fun m!4077647 () Bool)

(assert (=> bs!569962 m!4077647))

(assert (=> b!3584050 d!1056827))

(declare-fun b!3584456 () Bool)

(declare-fun e!2217894 () List!37793)

(assert (=> b!3584456 (= e!2217894 (++!9368 (list!13840 (left!29443 (c!620759 (charsOf!3570 token!511)))) (list!13840 (right!29773 (c!620759 (charsOf!3570 token!511))))))))

(declare-fun b!3584455 () Bool)

(declare-fun list!13842 (IArray!22915) List!37793)

(assert (=> b!3584455 (= e!2217894 (list!13842 (xs!14657 (c!620759 (charsOf!3570 token!511)))))))

(declare-fun d!1056829 () Bool)

(declare-fun c!620913 () Bool)

(assert (=> d!1056829 (= c!620913 ((_ is Empty!11455) (c!620759 (charsOf!3570 token!511))))))

(declare-fun e!2217893 () List!37793)

(assert (=> d!1056829 (= (list!13840 (c!620759 (charsOf!3570 token!511))) e!2217893)))

(declare-fun b!3584453 () Bool)

(assert (=> b!3584453 (= e!2217893 Nil!37669)))

(declare-fun b!3584454 () Bool)

(assert (=> b!3584454 (= e!2217893 e!2217894)))

(declare-fun c!620914 () Bool)

(assert (=> b!3584454 (= c!620914 ((_ is Leaf!17844) (c!620759 (charsOf!3570 token!511))))))

(assert (= (and d!1056829 c!620913) b!3584453))

(assert (= (and d!1056829 (not c!620913)) b!3584454))

(assert (= (and b!3584454 c!620914) b!3584455))

(assert (= (and b!3584454 (not c!620914)) b!3584456))

(declare-fun m!4077649 () Bool)

(assert (=> b!3584456 m!4077649))

(declare-fun m!4077651 () Bool)

(assert (=> b!3584456 m!4077651))

(assert (=> b!3584456 m!4077649))

(assert (=> b!3584456 m!4077651))

(declare-fun m!4077653 () Bool)

(assert (=> b!3584456 m!4077653))

(declare-fun m!4077655 () Bool)

(assert (=> b!3584455 m!4077655))

(assert (=> d!1056611 d!1056829))

(declare-fun d!1056831 () Bool)

(assert (=> d!1056831 (= (isEmpty!22183 (originalCharacters!6270 token!511)) ((_ is Nil!37669) (originalCharacters!6270 token!511)))))

(assert (=> d!1056569 d!1056831))

(declare-fun d!1056833 () Bool)

(declare-fun lt!1229315 () Int)

(declare-fun size!28706 (List!37796) Int)

(assert (=> d!1056833 (= lt!1229315 (size!28706 (list!13841 (_1!21913 lt!1229201))))))

(declare-fun size!28707 (Conc!11456) Int)

(assert (=> d!1056833 (= lt!1229315 (size!28707 (c!620760 (_1!21913 lt!1229201))))))

(assert (=> d!1056833 (= (size!28703 (_1!21913 lt!1229201)) lt!1229315)))

(declare-fun bs!569963 () Bool)

(assert (= bs!569963 d!1056833))

(assert (=> bs!569963 m!4077103))

(assert (=> bs!569963 m!4077103))

(declare-fun m!4077657 () Bool)

(assert (=> bs!569963 m!4077657))

(declare-fun m!4077659 () Bool)

(assert (=> bs!569963 m!4077659))

(assert (=> d!1056621 d!1056833))

(declare-fun b!3584572 () Bool)

(declare-fun lt!1229518 () tuple2!37558)

(declare-datatypes ((tuple2!37568 0))(
  ( (tuple2!37569 (_1!21918 Token!10478) (_2!21918 BalanceConc!22524)) )
))
(declare-datatypes ((Option!7745 0))(
  ( (None!7744) (Some!7744 (v!37402 tuple2!37568)) )
))
(declare-fun lt!1229531 () Option!7745)

(declare-fun lexRec!772 (LexerInterface!5145 List!37795 BalanceConc!22524) tuple2!37558)

(assert (=> b!3584572 (= lt!1229518 (lexRec!772 thiss!23823 rules!3307 (_2!21918 (v!37402 lt!1229531))))))

(declare-fun e!2217958 () tuple2!37558)

(declare-fun prepend!1298 (BalanceConc!22526 Token!10478) BalanceConc!22526)

(assert (=> b!3584572 (= e!2217958 (tuple2!37559 (prepend!1298 (_1!21913 lt!1229518) (_1!21918 (v!37402 lt!1229531))) (_2!21913 lt!1229518)))))

(declare-fun lt!1229528 () tuple2!37558)

(declare-fun e!2217960 () Bool)

(declare-fun b!3584573 () Bool)

(assert (=> b!3584573 (= e!2217960 (= (list!13837 (_2!21913 lt!1229528)) (list!13837 (_2!21913 (lexRec!772 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))))))

(declare-fun b!3584574 () Bool)

(declare-fun lt!1229532 () BalanceConc!22524)

(assert (=> b!3584574 (= e!2217958 (tuple2!37559 (BalanceConc!22527 Empty!11456) lt!1229532))))

(declare-fun lt!1229534 () Option!7745)

(declare-fun lt!1229535 () BalanceConc!22524)

(declare-fun b!3584575 () Bool)

(declare-fun e!2217959 () tuple2!37558)

(declare-fun append!1002 (BalanceConc!22526 Token!10478) BalanceConc!22526)

(assert (=> b!3584575 (= e!2217959 (lexTailRecV2!1114 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110) lt!1229535 (_2!21918 (v!37402 lt!1229534)) (append!1002 (BalanceConc!22527 Empty!11456) (_1!21918 (v!37402 lt!1229534)))))))

(declare-fun lt!1229530 () tuple2!37558)

(assert (=> b!3584575 (= lt!1229530 (lexRec!772 thiss!23823 rules!3307 (_2!21918 (v!37402 lt!1229534))))))

(declare-fun lt!1229509 () List!37793)

(assert (=> b!3584575 (= lt!1229509 (list!13837 (BalanceConc!22525 Empty!11455)))))

(declare-fun lt!1229537 () List!37793)

(assert (=> b!3584575 (= lt!1229537 (list!13837 (charsOf!3570 (_1!21918 (v!37402 lt!1229534)))))))

(declare-fun lt!1229511 () List!37793)

(assert (=> b!3584575 (= lt!1229511 (list!13837 (_2!21918 (v!37402 lt!1229534))))))

(declare-fun lt!1229519 () Unit!53667)

(declare-fun lemmaConcatAssociativity!2065 (List!37793 List!37793 List!37793) Unit!53667)

(assert (=> b!3584575 (= lt!1229519 (lemmaConcatAssociativity!2065 lt!1229509 lt!1229537 lt!1229511))))

(assert (=> b!3584575 (= (++!9368 (++!9368 lt!1229509 lt!1229537) lt!1229511) (++!9368 lt!1229509 (++!9368 lt!1229537 lt!1229511)))))

(declare-fun lt!1229514 () Unit!53667)

(assert (=> b!3584575 (= lt!1229514 lt!1229519)))

(declare-fun lt!1229527 () Option!7745)

(declare-fun maxPrefixZipperSequence!1165 (LexerInterface!5145 List!37795 BalanceConc!22524) Option!7745)

(assert (=> b!3584575 (= lt!1229527 (maxPrefixZipperSequence!1165 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110)))))

(declare-fun c!620958 () Bool)

(assert (=> b!3584575 (= c!620958 ((_ is Some!7744) lt!1229527))))

(declare-fun e!2217957 () tuple2!37558)

(assert (=> b!3584575 (= (lexRec!772 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110)) e!2217957)))

(declare-fun lt!1229513 () Unit!53667)

(declare-fun Unit!53669 () Unit!53667)

(assert (=> b!3584575 (= lt!1229513 Unit!53669)))

(declare-fun lt!1229533 () List!37796)

(assert (=> b!3584575 (= lt!1229533 (list!13841 (BalanceConc!22527 Empty!11456)))))

(declare-fun lt!1229517 () List!37796)

(assert (=> b!3584575 (= lt!1229517 (Cons!37672 (_1!21918 (v!37402 lt!1229534)) Nil!37672))))

(declare-fun lt!1229539 () List!37796)

(assert (=> b!3584575 (= lt!1229539 (list!13841 (_1!21913 lt!1229530)))))

(declare-fun lt!1229520 () Unit!53667)

(declare-fun lemmaConcatAssociativity!2066 (List!37796 List!37796 List!37796) Unit!53667)

(assert (=> b!3584575 (= lt!1229520 (lemmaConcatAssociativity!2066 lt!1229533 lt!1229517 lt!1229539))))

(declare-fun ++!9369 (List!37796 List!37796) List!37796)

(assert (=> b!3584575 (= (++!9369 (++!9369 lt!1229533 lt!1229517) lt!1229539) (++!9369 lt!1229533 (++!9369 lt!1229517 lt!1229539)))))

(declare-fun lt!1229512 () Unit!53667)

(assert (=> b!3584575 (= lt!1229512 lt!1229520)))

(declare-fun lt!1229516 () List!37793)

(assert (=> b!3584575 (= lt!1229516 (++!9368 (list!13837 (BalanceConc!22525 Empty!11455)) (list!13837 (charsOf!3570 (_1!21918 (v!37402 lt!1229534))))))))

(declare-fun lt!1229521 () List!37793)

(assert (=> b!3584575 (= lt!1229521 (list!13837 (_2!21918 (v!37402 lt!1229534))))))

(declare-fun lt!1229524 () List!37796)

(assert (=> b!3584575 (= lt!1229524 (list!13841 (append!1002 (BalanceConc!22527 Empty!11456) (_1!21918 (v!37402 lt!1229534)))))))

(declare-fun lt!1229515 () Unit!53667)

(declare-fun lemmaLexThenLexPrefix!537 (LexerInterface!5145 List!37795 List!37793 List!37793 List!37796 List!37796 List!37793) Unit!53667)

(assert (=> b!3584575 (= lt!1229515 (lemmaLexThenLexPrefix!537 thiss!23823 rules!3307 lt!1229516 lt!1229521 lt!1229524 (list!13841 (_1!21913 lt!1229530)) (list!13837 (_2!21913 lt!1229530))))))

(assert (=> b!3584575 (= (lexList!1508 thiss!23823 rules!3307 lt!1229516) (tuple2!37563 lt!1229524 Nil!37669))))

(declare-fun lt!1229529 () Unit!53667)

(assert (=> b!3584575 (= lt!1229529 lt!1229515)))

(declare-fun ++!9370 (BalanceConc!22524 BalanceConc!22524) BalanceConc!22524)

(assert (=> b!3584575 (= lt!1229532 (++!9370 (BalanceConc!22525 Empty!11455) (charsOf!3570 (_1!21918 (v!37402 lt!1229534)))))))

(assert (=> b!3584575 (= lt!1229531 (maxPrefixZipperSequence!1165 thiss!23823 rules!3307 lt!1229532))))

(declare-fun c!620959 () Bool)

(assert (=> b!3584575 (= c!620959 ((_ is Some!7744) lt!1229531))))

(assert (=> b!3584575 (= (lexRec!772 thiss!23823 rules!3307 (++!9370 (BalanceConc!22525 Empty!11455) (charsOf!3570 (_1!21918 (v!37402 lt!1229534))))) e!2217958)))

(declare-fun lt!1229506 () Unit!53667)

(declare-fun Unit!53670 () Unit!53667)

(assert (=> b!3584575 (= lt!1229506 Unit!53670)))

(assert (=> b!3584575 (= lt!1229535 (++!9370 (BalanceConc!22525 Empty!11455) (charsOf!3570 (_1!21918 (v!37402 lt!1229534)))))))

(declare-fun lt!1229525 () List!37793)

(assert (=> b!3584575 (= lt!1229525 (list!13837 lt!1229535))))

(declare-fun lt!1229510 () List!37793)

(assert (=> b!3584575 (= lt!1229510 (list!13837 (_2!21918 (v!37402 lt!1229534))))))

(declare-fun lt!1229508 () Unit!53667)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!619 (List!37793 List!37793) Unit!53667)

(assert (=> b!3584575 (= lt!1229508 (lemmaConcatTwoListThenFSndIsSuffix!619 lt!1229525 lt!1229510))))

(declare-fun isSuffix!934 (List!37793 List!37793) Bool)

(assert (=> b!3584575 (isSuffix!934 lt!1229510 (++!9368 lt!1229525 lt!1229510))))

(declare-fun lt!1229523 () Unit!53667)

(assert (=> b!3584575 (= lt!1229523 lt!1229508)))

(declare-fun b!3584576 () Bool)

(declare-fun lt!1229536 () tuple2!37558)

(assert (=> b!3584576 (= lt!1229536 (lexRec!772 thiss!23823 rules!3307 (_2!21918 (v!37402 lt!1229527))))))

(assert (=> b!3584576 (= e!2217957 (tuple2!37559 (prepend!1298 (_1!21913 lt!1229536) (_1!21918 (v!37402 lt!1229527))) (_2!21913 lt!1229536)))))

(declare-fun d!1056835 () Bool)

(assert (=> d!1056835 e!2217960))

(declare-fun res!1446580 () Bool)

(assert (=> d!1056835 (=> (not res!1446580) (not e!2217960))))

(assert (=> d!1056835 (= res!1446580 (= (list!13841 (_1!21913 lt!1229528)) (list!13841 (_1!21913 (lexRec!772 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))))))

(assert (=> d!1056835 (= lt!1229528 e!2217959)))

(declare-fun c!620957 () Bool)

(assert (=> d!1056835 (= c!620957 ((_ is Some!7744) lt!1229534))))

(declare-fun maxPrefixZipperSequenceV2!559 (LexerInterface!5145 List!37795 BalanceConc!22524 BalanceConc!22524) Option!7745)

(assert (=> d!1056835 (= lt!1229534 (maxPrefixZipperSequenceV2!559 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110) (seqFromList!4111 lt!1229110)))))

(declare-fun lt!1229526 () Unit!53667)

(declare-fun lt!1229507 () Unit!53667)

(assert (=> d!1056835 (= lt!1229526 lt!1229507)))

(declare-fun lt!1229538 () List!37793)

(declare-fun lt!1229522 () List!37793)

(assert (=> d!1056835 (isSuffix!934 lt!1229538 (++!9368 lt!1229522 lt!1229538))))

(assert (=> d!1056835 (= lt!1229507 (lemmaConcatTwoListThenFSndIsSuffix!619 lt!1229522 lt!1229538))))

(assert (=> d!1056835 (= lt!1229538 (list!13837 (seqFromList!4111 lt!1229110)))))

(assert (=> d!1056835 (= lt!1229522 (list!13837 (BalanceConc!22525 Empty!11455)))))

(assert (=> d!1056835 (= (lexTailRecV2!1114 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110) (BalanceConc!22525 Empty!11455) (seqFromList!4111 lt!1229110) (BalanceConc!22527 Empty!11456)) lt!1229528)))

(declare-fun b!3584577 () Bool)

(assert (=> b!3584577 (= e!2217957 (tuple2!37559 (BalanceConc!22527 Empty!11456) (seqFromList!4111 lt!1229110)))))

(declare-fun b!3584578 () Bool)

(assert (=> b!3584578 (= e!2217959 (tuple2!37559 (BalanceConc!22527 Empty!11456) (seqFromList!4111 lt!1229110)))))

(assert (= (and d!1056835 c!620957) b!3584575))

(assert (= (and d!1056835 (not c!620957)) b!3584578))

(assert (= (and b!3584575 c!620958) b!3584576))

(assert (= (and b!3584575 (not c!620958)) b!3584577))

(assert (= (and b!3584575 c!620959) b!3584572))

(assert (= (and b!3584575 (not c!620959)) b!3584574))

(assert (= (and d!1056835 res!1446580) b!3584573))

(declare-fun m!4077865 () Bool)

(assert (=> b!3584576 m!4077865))

(declare-fun m!4077867 () Bool)

(assert (=> b!3584576 m!4077867))

(declare-fun m!4077869 () Bool)

(assert (=> b!3584575 m!4077869))

(declare-fun m!4077872 () Bool)

(assert (=> b!3584575 m!4077872))

(assert (=> b!3584575 m!4076745))

(declare-fun m!4077877 () Bool)

(assert (=> b!3584575 m!4077877))

(declare-fun m!4077879 () Bool)

(assert (=> b!3584575 m!4077879))

(declare-fun m!4077885 () Bool)

(assert (=> b!3584575 m!4077885))

(declare-fun m!4077887 () Bool)

(assert (=> b!3584575 m!4077887))

(declare-fun m!4077889 () Bool)

(assert (=> b!3584575 m!4077889))

(declare-fun m!4077891 () Bool)

(assert (=> b!3584575 m!4077891))

(declare-fun m!4077893 () Bool)

(assert (=> b!3584575 m!4077893))

(assert (=> b!3584575 m!4077891))

(declare-fun m!4077895 () Bool)

(assert (=> b!3584575 m!4077895))

(declare-fun m!4077897 () Bool)

(assert (=> b!3584575 m!4077897))

(declare-fun m!4077899 () Bool)

(assert (=> b!3584575 m!4077899))

(assert (=> b!3584575 m!4076745))

(assert (=> b!3584575 m!4077885))

(declare-fun m!4077905 () Bool)

(assert (=> b!3584575 m!4077905))

(declare-fun m!4077907 () Bool)

(assert (=> b!3584575 m!4077907))

(declare-fun m!4077909 () Bool)

(assert (=> b!3584575 m!4077909))

(assert (=> b!3584575 m!4077895))

(declare-fun m!4077913 () Bool)

(assert (=> b!3584575 m!4077913))

(assert (=> b!3584575 m!4076745))

(declare-fun m!4077915 () Bool)

(assert (=> b!3584575 m!4077915))

(declare-fun m!4077917 () Bool)

(assert (=> b!3584575 m!4077917))

(assert (=> b!3584575 m!4077885))

(assert (=> b!3584575 m!4077889))

(assert (=> b!3584575 m!4077913))

(declare-fun m!4077919 () Bool)

(assert (=> b!3584575 m!4077919))

(declare-fun m!4077923 () Bool)

(assert (=> b!3584575 m!4077923))

(declare-fun m!4077927 () Bool)

(assert (=> b!3584575 m!4077927))

(declare-fun m!4077929 () Bool)

(assert (=> b!3584575 m!4077929))

(declare-fun m!4077931 () Bool)

(assert (=> b!3584575 m!4077931))

(assert (=> b!3584575 m!4077879))

(declare-fun m!4077933 () Bool)

(assert (=> b!3584575 m!4077933))

(declare-fun m!4077935 () Bool)

(assert (=> b!3584575 m!4077935))

(declare-fun m!4077937 () Bool)

(assert (=> b!3584575 m!4077937))

(assert (=> b!3584575 m!4077899))

(declare-fun m!4077939 () Bool)

(assert (=> b!3584575 m!4077939))

(declare-fun m!4077941 () Bool)

(assert (=> b!3584575 m!4077941))

(assert (=> b!3584575 m!4077927))

(assert (=> b!3584575 m!4077935))

(declare-fun m!4077943 () Bool)

(assert (=> b!3584575 m!4077943))

(declare-fun m!4077945 () Bool)

(assert (=> b!3584575 m!4077945))

(assert (=> b!3584575 m!4077899))

(assert (=> b!3584575 m!4077907))

(assert (=> b!3584575 m!4077931))

(assert (=> b!3584575 m!4077939))

(declare-fun m!4077951 () Bool)

(assert (=> b!3584575 m!4077951))

(declare-fun m!4077953 () Bool)

(assert (=> b!3584575 m!4077953))

(declare-fun m!4077955 () Bool)

(assert (=> b!3584575 m!4077955))

(declare-fun m!4077957 () Bool)

(assert (=> d!1056835 m!4077957))

(declare-fun m!4077959 () Bool)

(assert (=> d!1056835 m!4077959))

(assert (=> d!1056835 m!4077957))

(declare-fun m!4077961 () Bool)

(assert (=> d!1056835 m!4077961))

(assert (=> d!1056835 m!4076745))

(assert (=> d!1056835 m!4076745))

(declare-fun m!4077963 () Bool)

(assert (=> d!1056835 m!4077963))

(assert (=> d!1056835 m!4076745))

(assert (=> d!1056835 m!4077105))

(assert (=> d!1056835 m!4076745))

(assert (=> d!1056835 m!4077915))

(declare-fun m!4077965 () Bool)

(assert (=> d!1056835 m!4077965))

(assert (=> d!1056835 m!4077931))

(declare-fun m!4077967 () Bool)

(assert (=> d!1056835 m!4077967))

(declare-fun m!4077969 () Bool)

(assert (=> b!3584573 m!4077969))

(assert (=> b!3584573 m!4076745))

(assert (=> b!3584573 m!4077915))

(declare-fun m!4077971 () Bool)

(assert (=> b!3584573 m!4077971))

(declare-fun m!4077973 () Bool)

(assert (=> b!3584572 m!4077973))

(declare-fun m!4077975 () Bool)

(assert (=> b!3584572 m!4077975))

(assert (=> d!1056621 d!1056835))

(declare-fun d!1056899 () Bool)

(assert (=> d!1056899 (= (get!12134 lt!1229186) (v!37397 lt!1229186))))

(assert (=> b!3584002 d!1056899))

(declare-fun d!1056901 () Bool)

(assert (=> d!1056901 (= (apply!9068 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229186))))) (dynLambda!16198 (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229186))))))))

(declare-fun b_lambda!105917 () Bool)

(assert (=> (not b_lambda!105917) (not d!1056901)))

(declare-fun tb!204475 () Bool)

(declare-fun t!290506 () Bool)

(assert (=> (and b!3583605 (= (toValue!7832 (transformation!5556 anOtherTypeRule!33)) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290506) tb!204475))

(declare-fun result!249316 () Bool)

(assert (=> tb!204475 (= result!249316 (inv!21 (dynLambda!16198 (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229186)))))))))

(declare-fun m!4077977 () Bool)

(assert (=> tb!204475 m!4077977))

(assert (=> d!1056901 t!290506))

(declare-fun b_and!258837 () Bool)

(assert (= b_and!258831 (and (=> t!290506 result!249316) b_and!258837)))

(declare-fun tb!204483 () Bool)

(declare-fun t!290514 () Bool)

(assert (=> (and b!3583618 (= (toValue!7832 (transformation!5556 (h!43091 rules!3307))) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290514) tb!204483))

(declare-fun result!249324 () Bool)

(assert (= result!249324 result!249316))

(assert (=> d!1056901 t!290514))

(declare-fun b_and!258839 () Bool)

(assert (= b_and!258823 (and (=> t!290514 result!249324) b_and!258839)))

(declare-fun tb!204485 () Bool)

(declare-fun t!290516 () Bool)

(assert (=> (and b!3583620 (= (toValue!7832 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290516) tb!204485))

(declare-fun result!249326 () Bool)

(assert (= result!249326 result!249316))

(assert (=> d!1056901 t!290516))

(declare-fun b_and!258841 () Bool)

(assert (= b_and!258825 (and (=> t!290516 result!249326) b_and!258841)))

(declare-fun t!290518 () Bool)

(declare-fun tb!204487 () Bool)

(assert (=> (and b!3583616 (= (toValue!7832 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290518) tb!204487))

(declare-fun result!249328 () Bool)

(assert (= result!249328 result!249316))

(assert (=> d!1056901 t!290518))

(declare-fun b_and!258843 () Bool)

(assert (= b_and!258829 (and (=> t!290518 result!249328) b_and!258843)))

(declare-fun tb!204489 () Bool)

(declare-fun t!290520 () Bool)

(assert (=> (and b!3584103 (= (toValue!7832 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290520) tb!204489))

(declare-fun result!249330 () Bool)

(assert (= result!249330 result!249316))

(assert (=> d!1056901 t!290520))

(declare-fun b_and!258845 () Bool)

(assert (= b_and!258827 (and (=> t!290520 result!249330) b_and!258845)))

(assert (=> d!1056901 m!4077065))

(declare-fun m!4077983 () Bool)

(assert (=> d!1056901 m!4077983))

(assert (=> b!3584002 d!1056901))

(declare-fun d!1056903 () Bool)

(assert (=> d!1056903 (= (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229186)))) (fromListB!1897 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229186)))))))

(declare-fun bs!569984 () Bool)

(assert (= bs!569984 d!1056903))

(declare-fun m!4077985 () Bool)

(assert (=> bs!569984 m!4077985))

(assert (=> b!3584002 d!1056903))

(declare-fun d!1056905 () Bool)

(declare-fun res!1446595 () Bool)

(declare-fun e!2218019 () Bool)

(assert (=> d!1056905 (=> res!1446595 e!2218019)))

(assert (=> d!1056905 (= res!1446595 ((_ is ElementMatch!10315) (regex!5556 rule!403)))))

(assert (=> d!1056905 (= (validRegex!4711 (regex!5556 rule!403)) e!2218019)))

(declare-fun b!3584715 () Bool)

(declare-fun e!2218023 () Bool)

(declare-fun call!259540 () Bool)

(assert (=> b!3584715 (= e!2218023 call!259540)))

(declare-fun bm!259534 () Bool)

(declare-fun call!259541 () Bool)

(declare-fun call!259539 () Bool)

(assert (=> bm!259534 (= call!259541 call!259539)))

(declare-fun b!3584716 () Bool)

(declare-fun e!2218022 () Bool)

(assert (=> b!3584716 (= e!2218022 e!2218023)))

(declare-fun res!1446597 () Bool)

(assert (=> b!3584716 (=> (not res!1446597) (not e!2218023))))

(assert (=> b!3584716 (= res!1446597 call!259541)))

(declare-fun bm!259535 () Bool)

(declare-fun c!620972 () Bool)

(assert (=> bm!259535 (= call!259540 (validRegex!4711 (ite c!620972 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403)))))))

(declare-fun b!3584717 () Bool)

(declare-fun e!2218021 () Bool)

(declare-fun e!2218025 () Bool)

(assert (=> b!3584717 (= e!2218021 e!2218025)))

(declare-fun res!1446594 () Bool)

(assert (=> b!3584717 (= res!1446594 (not (nullable!3555 (reg!10644 (regex!5556 rule!403)))))))

(assert (=> b!3584717 (=> (not res!1446594) (not e!2218025))))

(declare-fun b!3584718 () Bool)

(assert (=> b!3584718 (= e!2218019 e!2218021)))

(declare-fun c!620973 () Bool)

(assert (=> b!3584718 (= c!620973 ((_ is Star!10315) (regex!5556 rule!403)))))

(declare-fun b!3584719 () Bool)

(declare-fun e!2218020 () Bool)

(assert (=> b!3584719 (= e!2218020 call!259541)))

(declare-fun b!3584720 () Bool)

(declare-fun res!1446593 () Bool)

(assert (=> b!3584720 (=> (not res!1446593) (not e!2218020))))

(assert (=> b!3584720 (= res!1446593 call!259540)))

(declare-fun e!2218024 () Bool)

(assert (=> b!3584720 (= e!2218024 e!2218020)))

(declare-fun b!3584721 () Bool)

(assert (=> b!3584721 (= e!2218021 e!2218024)))

(assert (=> b!3584721 (= c!620972 ((_ is Union!10315) (regex!5556 rule!403)))))

(declare-fun b!3584722 () Bool)

(declare-fun res!1446596 () Bool)

(assert (=> b!3584722 (=> res!1446596 e!2218022)))

(assert (=> b!3584722 (= res!1446596 (not ((_ is Concat!16102) (regex!5556 rule!403))))))

(assert (=> b!3584722 (= e!2218024 e!2218022)))

(declare-fun bm!259536 () Bool)

(assert (=> bm!259536 (= call!259539 (validRegex!4711 (ite c!620973 (reg!10644 (regex!5556 rule!403)) (ite c!620972 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403))))))))

(declare-fun b!3584723 () Bool)

(assert (=> b!3584723 (= e!2218025 call!259539)))

(assert (= (and d!1056905 (not res!1446595)) b!3584718))

(assert (= (and b!3584718 c!620973) b!3584717))

(assert (= (and b!3584718 (not c!620973)) b!3584721))

(assert (= (and b!3584717 res!1446594) b!3584723))

(assert (= (and b!3584721 c!620972) b!3584720))

(assert (= (and b!3584721 (not c!620972)) b!3584722))

(assert (= (and b!3584720 res!1446593) b!3584719))

(assert (= (and b!3584722 (not res!1446596)) b!3584716))

(assert (= (and b!3584716 res!1446597) b!3584715))

(assert (= (or b!3584720 b!3584715) bm!259535))

(assert (= (or b!3584719 b!3584716) bm!259534))

(assert (= (or b!3584723 bm!259534) bm!259536))

(declare-fun m!4077993 () Bool)

(assert (=> bm!259535 m!4077993))

(declare-fun m!4077995 () Bool)

(assert (=> b!3584717 m!4077995))

(declare-fun m!4077997 () Bool)

(assert (=> bm!259536 m!4077997))

(assert (=> d!1056547 d!1056905))

(declare-fun d!1056907 () Bool)

(declare-fun c!620976 () Bool)

(assert (=> d!1056907 (= c!620976 ((_ is Nil!37669) lt!1229195))))

(declare-fun e!2218028 () (InoxSet C!20816))

(assert (=> d!1056907 (= (content!5348 lt!1229195) e!2218028)))

(declare-fun b!3584728 () Bool)

(assert (=> b!3584728 (= e!2218028 ((as const (Array C!20816 Bool)) false))))

(declare-fun b!3584729 () Bool)

(assert (=> b!3584729 (= e!2218028 ((_ map or) (store ((as const (Array C!20816 Bool)) false) (h!43089 lt!1229195) true) (content!5348 (t!290422 lt!1229195))))))

(assert (= (and d!1056907 c!620976) b!3584728))

(assert (= (and d!1056907 (not c!620976)) b!3584729))

(declare-fun m!4077999 () Bool)

(assert (=> b!3584729 m!4077999))

(declare-fun m!4078001 () Bool)

(assert (=> b!3584729 m!4078001))

(assert (=> d!1056617 d!1056907))

(declare-fun d!1056909 () Bool)

(declare-fun c!620977 () Bool)

(assert (=> d!1056909 (= c!620977 ((_ is Nil!37669) lt!1229110))))

(declare-fun e!2218029 () (InoxSet C!20816))

(assert (=> d!1056909 (= (content!5348 lt!1229110) e!2218029)))

(declare-fun b!3584730 () Bool)

(assert (=> b!3584730 (= e!2218029 ((as const (Array C!20816 Bool)) false))))

(declare-fun b!3584731 () Bool)

(assert (=> b!3584731 (= e!2218029 ((_ map or) (store ((as const (Array C!20816 Bool)) false) (h!43089 lt!1229110) true) (content!5348 (t!290422 lt!1229110))))))

(assert (= (and d!1056909 c!620977) b!3584730))

(assert (= (and d!1056909 (not c!620977)) b!3584731))

(declare-fun m!4078003 () Bool)

(assert (=> b!3584731 m!4078003))

(declare-fun m!4078005 () Bool)

(assert (=> b!3584731 m!4078005))

(assert (=> d!1056617 d!1056909))

(declare-fun d!1056911 () Bool)

(declare-fun c!620978 () Bool)

(assert (=> d!1056911 (= c!620978 ((_ is Nil!37669) suffix!1395))))

(declare-fun e!2218030 () (InoxSet C!20816))

(assert (=> d!1056911 (= (content!5348 suffix!1395) e!2218030)))

(declare-fun b!3584732 () Bool)

(assert (=> b!3584732 (= e!2218030 ((as const (Array C!20816 Bool)) false))))

(declare-fun b!3584733 () Bool)

(assert (=> b!3584733 (= e!2218030 ((_ map or) (store ((as const (Array C!20816 Bool)) false) (h!43089 suffix!1395) true) (content!5348 (t!290422 suffix!1395))))))

(assert (= (and d!1056911 c!620978) b!3584732))

(assert (= (and d!1056911 (not c!620978)) b!3584733))

(declare-fun m!4078007 () Bool)

(assert (=> b!3584733 m!4078007))

(declare-fun m!4078009 () Bool)

(assert (=> b!3584733 m!4078009))

(assert (=> d!1056617 d!1056911))

(declare-fun d!1056913 () Bool)

(declare-fun lt!1229544 () Int)

(assert (=> d!1056913 (>= lt!1229544 0)))

(declare-fun e!2218033 () Int)

(assert (=> d!1056913 (= lt!1229544 e!2218033)))

(declare-fun c!620981 () Bool)

(assert (=> d!1056913 (= c!620981 ((_ is Nil!37669) (_2!21912 (get!12134 lt!1229206))))))

(assert (=> d!1056913 (= (size!28702 (_2!21912 (get!12134 lt!1229206))) lt!1229544)))

(declare-fun b!3584738 () Bool)

(assert (=> b!3584738 (= e!2218033 0)))

(declare-fun b!3584739 () Bool)

(assert (=> b!3584739 (= e!2218033 (+ 1 (size!28702 (t!290422 (_2!21912 (get!12134 lt!1229206))))))))

(assert (= (and d!1056913 c!620981) b!3584738))

(assert (= (and d!1056913 (not c!620981)) b!3584739))

(declare-fun m!4078011 () Bool)

(assert (=> b!3584739 m!4078011))

(assert (=> b!3584052 d!1056913))

(assert (=> b!3584052 d!1056823))

(declare-fun d!1056915 () Bool)

(declare-fun lt!1229545 () Int)

(assert (=> d!1056915 (>= lt!1229545 0)))

(declare-fun e!2218034 () Int)

(assert (=> d!1056915 (= lt!1229545 e!2218034)))

(declare-fun c!620982 () Bool)

(assert (=> d!1056915 (= c!620982 ((_ is Nil!37669) lt!1229107))))

(assert (=> d!1056915 (= (size!28702 lt!1229107) lt!1229545)))

(declare-fun b!3584740 () Bool)

(assert (=> b!3584740 (= e!2218034 0)))

(declare-fun b!3584741 () Bool)

(assert (=> b!3584741 (= e!2218034 (+ 1 (size!28702 (t!290422 lt!1229107))))))

(assert (= (and d!1056915 c!620982) b!3584740))

(assert (= (and d!1056915 (not c!620982)) b!3584741))

(declare-fun m!4078013 () Bool)

(assert (=> b!3584741 m!4078013))

(assert (=> b!3584052 d!1056915))

(declare-fun d!1056917 () Bool)

(declare-fun lt!1229546 () Int)

(assert (=> d!1056917 (>= lt!1229546 0)))

(declare-fun e!2218035 () Int)

(assert (=> d!1056917 (= lt!1229546 e!2218035)))

(declare-fun c!620983 () Bool)

(assert (=> d!1056917 (= c!620983 ((_ is Nil!37669) (_2!21912 (get!12134 lt!1229186))))))

(assert (=> d!1056917 (= (size!28702 (_2!21912 (get!12134 lt!1229186))) lt!1229546)))

(declare-fun b!3584742 () Bool)

(assert (=> b!3584742 (= e!2218035 0)))

(declare-fun b!3584743 () Bool)

(assert (=> b!3584743 (= e!2218035 (+ 1 (size!28702 (t!290422 (_2!21912 (get!12134 lt!1229186))))))))

(assert (= (and d!1056917 c!620983) b!3584742))

(assert (= (and d!1056917 (not c!620983)) b!3584743))

(declare-fun m!4078015 () Bool)

(assert (=> b!3584743 m!4078015))

(assert (=> b!3584004 d!1056917))

(assert (=> b!3584004 d!1056899))

(declare-fun d!1056919 () Bool)

(declare-fun lt!1229547 () Int)

(assert (=> d!1056919 (>= lt!1229547 0)))

(declare-fun e!2218036 () Int)

(assert (=> d!1056919 (= lt!1229547 e!2218036)))

(declare-fun c!620984 () Bool)

(assert (=> d!1056919 (= c!620984 ((_ is Nil!37669) lt!1229110))))

(assert (=> d!1056919 (= (size!28702 lt!1229110) lt!1229547)))

(declare-fun b!3584744 () Bool)

(assert (=> b!3584744 (= e!2218036 0)))

(declare-fun b!3584745 () Bool)

(assert (=> b!3584745 (= e!2218036 (+ 1 (size!28702 (t!290422 lt!1229110))))))

(assert (= (and d!1056919 c!620984) b!3584744))

(assert (= (and d!1056919 (not c!620984)) b!3584745))

(declare-fun m!4078017 () Bool)

(assert (=> b!3584745 m!4078017))

(assert (=> b!3584004 d!1056919))

(declare-fun d!1056921 () Bool)

(assert (=> d!1056921 (= (isEmpty!22183 (tail!5553 lt!1229110)) ((_ is Nil!37669) (tail!5553 lt!1229110)))))

(assert (=> b!3583754 d!1056921))

(assert (=> b!3583754 d!1056791))

(declare-fun d!1056923 () Bool)

(declare-fun lt!1229548 () Bool)

(assert (=> d!1056923 (= lt!1229548 (select (content!5348 (t!290422 (usedCharacters!770 (regex!5556 rule!403)))) lt!1229106))))

(declare-fun e!2218038 () Bool)

(assert (=> d!1056923 (= lt!1229548 e!2218038)))

(declare-fun res!1446598 () Bool)

(assert (=> d!1056923 (=> (not res!1446598) (not e!2218038))))

(assert (=> d!1056923 (= res!1446598 ((_ is Cons!37669) (t!290422 (usedCharacters!770 (regex!5556 rule!403)))))))

(assert (=> d!1056923 (= (contains!7171 (t!290422 (usedCharacters!770 (regex!5556 rule!403))) lt!1229106) lt!1229548)))

(declare-fun b!3584746 () Bool)

(declare-fun e!2218037 () Bool)

(assert (=> b!3584746 (= e!2218038 e!2218037)))

(declare-fun res!1446599 () Bool)

(assert (=> b!3584746 (=> res!1446599 e!2218037)))

(assert (=> b!3584746 (= res!1446599 (= (h!43089 (t!290422 (usedCharacters!770 (regex!5556 rule!403)))) lt!1229106))))

(declare-fun b!3584747 () Bool)

(assert (=> b!3584747 (= e!2218037 (contains!7171 (t!290422 (t!290422 (usedCharacters!770 (regex!5556 rule!403)))) lt!1229106))))

(assert (= (and d!1056923 res!1446598) b!3584746))

(assert (= (and b!3584746 (not res!1446599)) b!3584747))

(declare-fun m!4078019 () Bool)

(assert (=> d!1056923 m!4078019))

(declare-fun m!4078021 () Bool)

(assert (=> d!1056923 m!4078021))

(declare-fun m!4078023 () Bool)

(assert (=> b!3584747 m!4078023))

(assert (=> b!3583820 d!1056923))

(declare-fun d!1056925 () Bool)

(assert (=> d!1056925 (= (inv!50984 (tag!6222 (h!43091 (t!290424 rules!3307)))) (= (mod (str.len (value!178805 (tag!6222 (h!43091 (t!290424 rules!3307))))) 2) 0))))

(assert (=> b!3584102 d!1056925))

(declare-fun d!1056927 () Bool)

(declare-fun res!1446600 () Bool)

(declare-fun e!2218039 () Bool)

(assert (=> d!1056927 (=> (not res!1446600) (not e!2218039))))

(assert (=> d!1056927 (= res!1446600 (semiInverseModEq!2353 (toChars!7691 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toValue!7832 (transformation!5556 (h!43091 (t!290424 rules!3307))))))))

(assert (=> d!1056927 (= (inv!50987 (transformation!5556 (h!43091 (t!290424 rules!3307)))) e!2218039)))

(declare-fun b!3584748 () Bool)

(assert (=> b!3584748 (= e!2218039 (equivClasses!2252 (toChars!7691 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toValue!7832 (transformation!5556 (h!43091 (t!290424 rules!3307))))))))

(assert (= (and d!1056927 res!1446600) b!3584748))

(declare-fun m!4078025 () Bool)

(assert (=> d!1056927 m!4078025))

(declare-fun m!4078027 () Bool)

(assert (=> b!3584748 m!4078027))

(assert (=> b!3584102 d!1056927))

(declare-fun b!3584749 () Bool)

(declare-fun e!2218042 () Bool)

(declare-fun lt!1229549 () Bool)

(declare-fun call!259542 () Bool)

(assert (=> b!3584749 (= e!2218042 (= lt!1229549 call!259542))))

(declare-fun d!1056929 () Bool)

(assert (=> d!1056929 e!2218042))

(declare-fun c!620987 () Bool)

(assert (=> d!1056929 (= c!620987 ((_ is EmptyExpr!10315) (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))))))

(declare-fun e!2218040 () Bool)

(assert (=> d!1056929 (= lt!1229549 e!2218040)))

(declare-fun c!620986 () Bool)

(assert (=> d!1056929 (= c!620986 (isEmpty!22183 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))))))

(assert (=> d!1056929 (validRegex!4711 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))))

(assert (=> d!1056929 (= (matchR!4884 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))) lt!1229549)))

(declare-fun b!3584750 () Bool)

(declare-fun e!2218044 () Bool)

(assert (=> b!3584750 (= e!2218044 (not lt!1229549))))

(declare-fun b!3584751 () Bool)

(assert (=> b!3584751 (= e!2218042 e!2218044)))

(declare-fun c!620985 () Bool)

(assert (=> b!3584751 (= c!620985 ((_ is EmptyLang!10315) (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))))))

(declare-fun b!3584752 () Bool)

(declare-fun res!1446604 () Bool)

(declare-fun e!2218041 () Bool)

(assert (=> b!3584752 (=> res!1446604 e!2218041)))

(assert (=> b!3584752 (= res!1446604 (not (isEmpty!22183 (tail!5553 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))))))))

(declare-fun b!3584753 () Bool)

(declare-fun e!2218045 () Bool)

(assert (=> b!3584753 (= e!2218045 (= (head!7473 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))) (c!620758 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))))))

(declare-fun b!3584754 () Bool)

(assert (=> b!3584754 (= e!2218041 (not (= (head!7473 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))) (c!620758 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))))))))

(declare-fun b!3584755 () Bool)

(assert (=> b!3584755 (= e!2218040 (matchR!4884 (derivativeStep!3104 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))) (head!7473 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206)))))) (tail!5553 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206)))))))))

(declare-fun b!3584756 () Bool)

(declare-fun res!1446608 () Bool)

(declare-fun e!2218046 () Bool)

(assert (=> b!3584756 (=> res!1446608 e!2218046)))

(assert (=> b!3584756 (= res!1446608 e!2218045)))

(declare-fun res!1446601 () Bool)

(assert (=> b!3584756 (=> (not res!1446601) (not e!2218045))))

(assert (=> b!3584756 (= res!1446601 lt!1229549)))

(declare-fun b!3584757 () Bool)

(declare-fun e!2218043 () Bool)

(assert (=> b!3584757 (= e!2218043 e!2218041)))

(declare-fun res!1446602 () Bool)

(assert (=> b!3584757 (=> res!1446602 e!2218041)))

(assert (=> b!3584757 (= res!1446602 call!259542)))

(declare-fun b!3584758 () Bool)

(declare-fun res!1446605 () Bool)

(assert (=> b!3584758 (=> res!1446605 e!2218046)))

(assert (=> b!3584758 (= res!1446605 (not ((_ is ElementMatch!10315) (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))))))

(assert (=> b!3584758 (= e!2218044 e!2218046)))

(declare-fun b!3584759 () Bool)

(declare-fun res!1446603 () Bool)

(assert (=> b!3584759 (=> (not res!1446603) (not e!2218045))))

(assert (=> b!3584759 (= res!1446603 (not call!259542))))

(declare-fun b!3584760 () Bool)

(declare-fun res!1446606 () Bool)

(assert (=> b!3584760 (=> (not res!1446606) (not e!2218045))))

(assert (=> b!3584760 (= res!1446606 (isEmpty!22183 (tail!5553 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206)))))))))

(declare-fun b!3584761 () Bool)

(assert (=> b!3584761 (= e!2218040 (nullable!3555 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))))))

(declare-fun b!3584762 () Bool)

(assert (=> b!3584762 (= e!2218046 e!2218043)))

(declare-fun res!1446607 () Bool)

(assert (=> b!3584762 (=> (not res!1446607) (not e!2218043))))

(assert (=> b!3584762 (= res!1446607 (not lt!1229549))))

(declare-fun bm!259537 () Bool)

(assert (=> bm!259537 (= call!259542 (isEmpty!22183 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))))))

(assert (= (and d!1056929 c!620986) b!3584761))

(assert (= (and d!1056929 (not c!620986)) b!3584755))

(assert (= (and d!1056929 c!620987) b!3584749))

(assert (= (and d!1056929 (not c!620987)) b!3584751))

(assert (= (and b!3584751 c!620985) b!3584750))

(assert (= (and b!3584751 (not c!620985)) b!3584758))

(assert (= (and b!3584758 (not res!1446605)) b!3584756))

(assert (= (and b!3584756 res!1446601) b!3584759))

(assert (= (and b!3584759 res!1446603) b!3584760))

(assert (= (and b!3584760 res!1446606) b!3584753))

(assert (= (and b!3584756 (not res!1446608)) b!3584762))

(assert (= (and b!3584762 res!1446607) b!3584757))

(assert (= (and b!3584757 (not res!1446602)) b!3584752))

(assert (= (and b!3584752 (not res!1446604)) b!3584754))

(assert (= (or b!3584749 b!3584757 b!3584759) bm!259537))

(assert (=> bm!259537 m!4077139))

(declare-fun m!4078029 () Bool)

(assert (=> bm!259537 m!4078029))

(declare-fun m!4078031 () Bool)

(assert (=> b!3584761 m!4078031))

(assert (=> b!3584755 m!4077139))

(declare-fun m!4078033 () Bool)

(assert (=> b!3584755 m!4078033))

(assert (=> b!3584755 m!4078033))

(declare-fun m!4078035 () Bool)

(assert (=> b!3584755 m!4078035))

(assert (=> b!3584755 m!4077139))

(declare-fun m!4078037 () Bool)

(assert (=> b!3584755 m!4078037))

(assert (=> b!3584755 m!4078035))

(assert (=> b!3584755 m!4078037))

(declare-fun m!4078039 () Bool)

(assert (=> b!3584755 m!4078039))

(assert (=> b!3584760 m!4077139))

(assert (=> b!3584760 m!4078037))

(assert (=> b!3584760 m!4078037))

(declare-fun m!4078041 () Bool)

(assert (=> b!3584760 m!4078041))

(assert (=> b!3584753 m!4077139))

(assert (=> b!3584753 m!4078033))

(assert (=> d!1056929 m!4077139))

(assert (=> d!1056929 m!4078029))

(declare-fun m!4078043 () Bool)

(assert (=> d!1056929 m!4078043))

(assert (=> b!3584754 m!4077139))

(assert (=> b!3584754 m!4078033))

(assert (=> b!3584752 m!4077139))

(assert (=> b!3584752 m!4078037))

(assert (=> b!3584752 m!4078037))

(assert (=> b!3584752 m!4078041))

(assert (=> b!3584044 d!1056929))

(assert (=> b!3584044 d!1056823))

(declare-fun d!1056931 () Bool)

(assert (=> d!1056931 (= (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206)))) (list!13840 (c!620759 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))))))

(declare-fun bs!569985 () Bool)

(assert (= bs!569985 d!1056931))

(declare-fun m!4078045 () Bool)

(assert (=> bs!569985 m!4078045))

(assert (=> b!3584044 d!1056931))

(declare-fun d!1056933 () Bool)

(declare-fun lt!1229550 () BalanceConc!22524)

(assert (=> d!1056933 (= (list!13837 lt!1229550) (originalCharacters!6270 (_1!21912 (get!12134 lt!1229206))))))

(assert (=> d!1056933 (= lt!1229550 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))) (value!178806 (_1!21912 (get!12134 lt!1229206)))))))

(assert (=> d!1056933 (= (charsOf!3570 (_1!21912 (get!12134 lt!1229206))) lt!1229550)))

(declare-fun b_lambda!105919 () Bool)

(assert (=> (not b_lambda!105919) (not d!1056933)))

(declare-fun t!290522 () Bool)

(declare-fun tb!204491 () Bool)

(assert (=> (and b!3584103 (= (toChars!7691 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290522) tb!204491))

(declare-fun b!3584763 () Bool)

(declare-fun e!2218047 () Bool)

(declare-fun tp!1097463 () Bool)

(assert (=> b!3584763 (= e!2218047 (and (inv!50991 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))) (value!178806 (_1!21912 (get!12134 lt!1229206)))))) tp!1097463))))

(declare-fun result!249334 () Bool)

(assert (=> tb!204491 (= result!249334 (and (inv!50992 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206))))) (value!178806 (_1!21912 (get!12134 lt!1229206))))) e!2218047))))

(assert (= tb!204491 b!3584763))

(declare-fun m!4078047 () Bool)

(assert (=> b!3584763 m!4078047))

(declare-fun m!4078049 () Bool)

(assert (=> tb!204491 m!4078049))

(assert (=> d!1056933 t!290522))

(declare-fun b_and!258847 () Bool)

(assert (= b_and!258781 (and (=> t!290522 result!249334) b_and!258847)))

(declare-fun t!290524 () Bool)

(declare-fun tb!204493 () Bool)

(assert (=> (and b!3583620 (= (toChars!7691 (transformation!5556 rule!403)) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290524) tb!204493))

(declare-fun result!249336 () Bool)

(assert (= result!249336 result!249334))

(assert (=> d!1056933 t!290524))

(declare-fun b_and!258849 () Bool)

(assert (= b_and!258777 (and (=> t!290524 result!249336) b_and!258849)))

(declare-fun t!290526 () Bool)

(declare-fun tb!204495 () Bool)

(assert (=> (and b!3583605 (= (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290526) tb!204495))

(declare-fun result!249338 () Bool)

(assert (= result!249338 result!249334))

(assert (=> d!1056933 t!290526))

(declare-fun b_and!258851 () Bool)

(assert (= b_and!258773 (and (=> t!290526 result!249338) b_and!258851)))

(declare-fun tb!204497 () Bool)

(declare-fun t!290528 () Bool)

(assert (=> (and b!3583618 (= (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290528) tb!204497))

(declare-fun result!249340 () Bool)

(assert (= result!249340 result!249334))

(assert (=> d!1056933 t!290528))

(declare-fun b_and!258853 () Bool)

(assert (= b_and!258771 (and (=> t!290528 result!249340) b_and!258853)))

(declare-fun tb!204499 () Bool)

(declare-fun t!290530 () Bool)

(assert (=> (and b!3583616 (= (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290530) tb!204499))

(declare-fun result!249342 () Bool)

(assert (= result!249342 result!249334))

(assert (=> d!1056933 t!290530))

(declare-fun b_and!258855 () Bool)

(assert (= b_and!258775 (and (=> t!290530 result!249342) b_and!258855)))

(declare-fun m!4078051 () Bool)

(assert (=> d!1056933 m!4078051))

(declare-fun m!4078053 () Bool)

(assert (=> d!1056933 m!4078053))

(assert (=> b!3584044 d!1056933))

(declare-fun b!3584764 () Bool)

(declare-fun e!2218050 () Bool)

(declare-fun lt!1229551 () Bool)

(declare-fun call!259543 () Bool)

(assert (=> b!3584764 (= e!2218050 (= lt!1229551 call!259543))))

(declare-fun d!1056935 () Bool)

(assert (=> d!1056935 e!2218050))

(declare-fun c!620990 () Bool)

(assert (=> d!1056935 (= c!620990 ((_ is EmptyExpr!10315) (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))))))

(declare-fun e!2218048 () Bool)

(assert (=> d!1056935 (= lt!1229551 e!2218048)))

(declare-fun c!620989 () Bool)

(assert (=> d!1056935 (= c!620989 (isEmpty!22183 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))))))

(assert (=> d!1056935 (validRegex!4711 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))))

(assert (=> d!1056935 (= (matchR!4884 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))) lt!1229551)))

(declare-fun b!3584765 () Bool)

(declare-fun e!2218052 () Bool)

(assert (=> b!3584765 (= e!2218052 (not lt!1229551))))

(declare-fun b!3584766 () Bool)

(assert (=> b!3584766 (= e!2218050 e!2218052)))

(declare-fun c!620988 () Bool)

(assert (=> b!3584766 (= c!620988 ((_ is EmptyLang!10315) (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))))))

(declare-fun b!3584767 () Bool)

(declare-fun res!1446612 () Bool)

(declare-fun e!2218049 () Bool)

(assert (=> b!3584767 (=> res!1446612 e!2218049)))

(assert (=> b!3584767 (= res!1446612 (not (isEmpty!22183 (tail!5553 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))))))))

(declare-fun b!3584768 () Bool)

(declare-fun e!2218053 () Bool)

(assert (=> b!3584768 (= e!2218053 (= (head!7473 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))) (c!620758 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))))))

(declare-fun b!3584769 () Bool)

(assert (=> b!3584769 (= e!2218049 (not (= (head!7473 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))) (c!620758 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))))))))

(declare-fun b!3584770 () Bool)

(assert (=> b!3584770 (= e!2218048 (matchR!4884 (derivativeStep!3104 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))) (head!7473 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186)))))) (tail!5553 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186)))))))))

(declare-fun b!3584771 () Bool)

(declare-fun res!1446616 () Bool)

(declare-fun e!2218054 () Bool)

(assert (=> b!3584771 (=> res!1446616 e!2218054)))

(assert (=> b!3584771 (= res!1446616 e!2218053)))

(declare-fun res!1446609 () Bool)

(assert (=> b!3584771 (=> (not res!1446609) (not e!2218053))))

(assert (=> b!3584771 (= res!1446609 lt!1229551)))

(declare-fun b!3584772 () Bool)

(declare-fun e!2218051 () Bool)

(assert (=> b!3584772 (= e!2218051 e!2218049)))

(declare-fun res!1446610 () Bool)

(assert (=> b!3584772 (=> res!1446610 e!2218049)))

(assert (=> b!3584772 (= res!1446610 call!259543)))

(declare-fun b!3584773 () Bool)

(declare-fun res!1446613 () Bool)

(assert (=> b!3584773 (=> res!1446613 e!2218054)))

(assert (=> b!3584773 (= res!1446613 (not ((_ is ElementMatch!10315) (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))))))

(assert (=> b!3584773 (= e!2218052 e!2218054)))

(declare-fun b!3584774 () Bool)

(declare-fun res!1446611 () Bool)

(assert (=> b!3584774 (=> (not res!1446611) (not e!2218053))))

(assert (=> b!3584774 (= res!1446611 (not call!259543))))

(declare-fun b!3584775 () Bool)

(declare-fun res!1446614 () Bool)

(assert (=> b!3584775 (=> (not res!1446614) (not e!2218053))))

(assert (=> b!3584775 (= res!1446614 (isEmpty!22183 (tail!5553 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186)))))))))

(declare-fun b!3584776 () Bool)

(assert (=> b!3584776 (= e!2218048 (nullable!3555 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))))))

(declare-fun b!3584777 () Bool)

(assert (=> b!3584777 (= e!2218054 e!2218051)))

(declare-fun res!1446615 () Bool)

(assert (=> b!3584777 (=> (not res!1446615) (not e!2218051))))

(assert (=> b!3584777 (= res!1446615 (not lt!1229551))))

(declare-fun bm!259538 () Bool)

(assert (=> bm!259538 (= call!259543 (isEmpty!22183 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))))))

(assert (= (and d!1056935 c!620989) b!3584776))

(assert (= (and d!1056935 (not c!620989)) b!3584770))

(assert (= (and d!1056935 c!620990) b!3584764))

(assert (= (and d!1056935 (not c!620990)) b!3584766))

(assert (= (and b!3584766 c!620988) b!3584765))

(assert (= (and b!3584766 (not c!620988)) b!3584773))

(assert (= (and b!3584773 (not res!1446613)) b!3584771))

(assert (= (and b!3584771 res!1446609) b!3584774))

(assert (= (and b!3584774 res!1446611) b!3584775))

(assert (= (and b!3584775 res!1446614) b!3584768))

(assert (= (and b!3584771 (not res!1446616)) b!3584777))

(assert (= (and b!3584777 res!1446615) b!3584772))

(assert (= (and b!3584772 (not res!1446610)) b!3584767))

(assert (= (and b!3584767 (not res!1446612)) b!3584769))

(assert (= (or b!3584764 b!3584772 b!3584774) bm!259538))

(assert (=> bm!259538 m!4077059))

(declare-fun m!4078055 () Bool)

(assert (=> bm!259538 m!4078055))

(declare-fun m!4078057 () Bool)

(assert (=> b!3584776 m!4078057))

(assert (=> b!3584770 m!4077059))

(declare-fun m!4078059 () Bool)

(assert (=> b!3584770 m!4078059))

(assert (=> b!3584770 m!4078059))

(declare-fun m!4078061 () Bool)

(assert (=> b!3584770 m!4078061))

(assert (=> b!3584770 m!4077059))

(declare-fun m!4078063 () Bool)

(assert (=> b!3584770 m!4078063))

(assert (=> b!3584770 m!4078061))

(assert (=> b!3584770 m!4078063))

(declare-fun m!4078065 () Bool)

(assert (=> b!3584770 m!4078065))

(assert (=> b!3584775 m!4077059))

(assert (=> b!3584775 m!4078063))

(assert (=> b!3584775 m!4078063))

(declare-fun m!4078067 () Bool)

(assert (=> b!3584775 m!4078067))

(assert (=> b!3584768 m!4077059))

(assert (=> b!3584768 m!4078059))

(assert (=> d!1056935 m!4077059))

(assert (=> d!1056935 m!4078055))

(declare-fun m!4078069 () Bool)

(assert (=> d!1056935 m!4078069))

(assert (=> b!3584769 m!4077059))

(assert (=> b!3584769 m!4078059))

(assert (=> b!3584767 m!4077059))

(assert (=> b!3584767 m!4078063))

(assert (=> b!3584767 m!4078063))

(assert (=> b!3584767 m!4078067))

(assert (=> b!3583996 d!1056935))

(assert (=> b!3583996 d!1056899))

(declare-fun d!1056937 () Bool)

(assert (=> d!1056937 (= (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186)))) (list!13840 (c!620759 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))))))

(declare-fun bs!569986 () Bool)

(assert (= bs!569986 d!1056937))

(declare-fun m!4078071 () Bool)

(assert (=> bs!569986 m!4078071))

(assert (=> b!3583996 d!1056937))

(declare-fun d!1056939 () Bool)

(declare-fun lt!1229552 () BalanceConc!22524)

(assert (=> d!1056939 (= (list!13837 lt!1229552) (originalCharacters!6270 (_1!21912 (get!12134 lt!1229186))))))

(assert (=> d!1056939 (= lt!1229552 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))) (value!178806 (_1!21912 (get!12134 lt!1229186)))))))

(assert (=> d!1056939 (= (charsOf!3570 (_1!21912 (get!12134 lt!1229186))) lt!1229552)))

(declare-fun b_lambda!105921 () Bool)

(assert (=> (not b_lambda!105921) (not d!1056939)))

(declare-fun t!290532 () Bool)

(declare-fun tb!204501 () Bool)

(assert (=> (and b!3584103 (= (toChars!7691 (transformation!5556 (h!43091 (t!290424 rules!3307)))) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290532) tb!204501))

(declare-fun b!3584778 () Bool)

(declare-fun e!2218055 () Bool)

(declare-fun tp!1097464 () Bool)

(assert (=> b!3584778 (= e!2218055 (and (inv!50991 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))) (value!178806 (_1!21912 (get!12134 lt!1229186)))))) tp!1097464))))

(declare-fun result!249344 () Bool)

(assert (=> tb!204501 (= result!249344 (and (inv!50992 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186))))) (value!178806 (_1!21912 (get!12134 lt!1229186))))) e!2218055))))

(assert (= tb!204501 b!3584778))

(declare-fun m!4078073 () Bool)

(assert (=> b!3584778 m!4078073))

(declare-fun m!4078075 () Bool)

(assert (=> tb!204501 m!4078075))

(assert (=> d!1056939 t!290532))

(declare-fun b_and!258857 () Bool)

(assert (= b_and!258847 (and (=> t!290532 result!249344) b_and!258857)))

(declare-fun t!290534 () Bool)

(declare-fun tb!204503 () Bool)

(assert (=> (and b!3583620 (= (toChars!7691 (transformation!5556 rule!403)) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290534) tb!204503))

(declare-fun result!249346 () Bool)

(assert (= result!249346 result!249344))

(assert (=> d!1056939 t!290534))

(declare-fun b_and!258859 () Bool)

(assert (= b_and!258849 (and (=> t!290534 result!249346) b_and!258859)))

(declare-fun tb!204505 () Bool)

(declare-fun t!290536 () Bool)

(assert (=> (and b!3583618 (= (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290536) tb!204505))

(declare-fun result!249348 () Bool)

(assert (= result!249348 result!249344))

(assert (=> d!1056939 t!290536))

(declare-fun b_and!258861 () Bool)

(assert (= b_and!258853 (and (=> t!290536 result!249348) b_and!258861)))

(declare-fun tb!204507 () Bool)

(declare-fun t!290538 () Bool)

(assert (=> (and b!3583605 (= (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290538) tb!204507))

(declare-fun result!249350 () Bool)

(assert (= result!249350 result!249344))

(assert (=> d!1056939 t!290538))

(declare-fun b_and!258863 () Bool)

(assert (= b_and!258851 (and (=> t!290538 result!249350) b_and!258863)))

(declare-fun tb!204509 () Bool)

(declare-fun t!290540 () Bool)

(assert (=> (and b!3583616 (= (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290540) tb!204509))

(declare-fun result!249352 () Bool)

(assert (= result!249352 result!249344))

(assert (=> d!1056939 t!290540))

(declare-fun b_and!258865 () Bool)

(assert (= b_and!258855 (and (=> t!290540 result!249352) b_and!258865)))

(declare-fun m!4078077 () Bool)

(assert (=> d!1056939 m!4078077))

(declare-fun m!4078079 () Bool)

(assert (=> d!1056939 m!4078079))

(assert (=> b!3583996 d!1056939))

(declare-fun d!1056941 () Bool)

(declare-fun lt!1229553 () Bool)

(assert (=> d!1056941 (= lt!1229553 (select (content!5348 (t!290422 (usedCharacters!770 (regex!5556 anOtherTypeRule!33)))) lt!1229106))))

(declare-fun e!2218057 () Bool)

(assert (=> d!1056941 (= lt!1229553 e!2218057)))

(declare-fun res!1446617 () Bool)

(assert (=> d!1056941 (=> (not res!1446617) (not e!2218057))))

(assert (=> d!1056941 (= res!1446617 ((_ is Cons!37669) (t!290422 (usedCharacters!770 (regex!5556 anOtherTypeRule!33)))))))

(assert (=> d!1056941 (= (contains!7171 (t!290422 (usedCharacters!770 (regex!5556 anOtherTypeRule!33))) lt!1229106) lt!1229553)))

(declare-fun b!3584779 () Bool)

(declare-fun e!2218056 () Bool)

(assert (=> b!3584779 (= e!2218057 e!2218056)))

(declare-fun res!1446618 () Bool)

(assert (=> b!3584779 (=> res!1446618 e!2218056)))

(assert (=> b!3584779 (= res!1446618 (= (h!43089 (t!290422 (usedCharacters!770 (regex!5556 anOtherTypeRule!33)))) lt!1229106))))

(declare-fun b!3584780 () Bool)

(assert (=> b!3584780 (= e!2218056 (contains!7171 (t!290422 (t!290422 (usedCharacters!770 (regex!5556 anOtherTypeRule!33)))) lt!1229106))))

(assert (= (and d!1056941 res!1446617) b!3584779))

(assert (= (and b!3584779 (not res!1446618)) b!3584780))

(declare-fun m!4078081 () Bool)

(assert (=> d!1056941 m!4078081))

(declare-fun m!4078083 () Bool)

(assert (=> d!1056941 m!4078083))

(declare-fun m!4078085 () Bool)

(assert (=> b!3584780 m!4078085))

(assert (=> b!3583783 d!1056941))

(declare-fun d!1056943 () Bool)

(assert (=> d!1056943 (= (isDefined!5978 lt!1229206) (not (isEmpty!22189 lt!1229206)))))

(declare-fun bs!569987 () Bool)

(assert (= bs!569987 d!1056943))

(assert (=> bs!569987 m!4077129))

(assert (=> b!3584046 d!1056943))

(declare-fun d!1056945 () Bool)

(declare-fun c!620991 () Bool)

(assert (=> d!1056945 (= c!620991 ((_ is Nil!37669) (usedCharacters!770 (regex!5556 rule!403))))))

(declare-fun e!2218058 () (InoxSet C!20816))

(assert (=> d!1056945 (= (content!5348 (usedCharacters!770 (regex!5556 rule!403))) e!2218058)))

(declare-fun b!3584781 () Bool)

(assert (=> b!3584781 (= e!2218058 ((as const (Array C!20816 Bool)) false))))

(declare-fun b!3584782 () Bool)

(assert (=> b!3584782 (= e!2218058 ((_ map or) (store ((as const (Array C!20816 Bool)) false) (h!43089 (usedCharacters!770 (regex!5556 rule!403))) true) (content!5348 (t!290422 (usedCharacters!770 (regex!5556 rule!403))))))))

(assert (= (and d!1056945 c!620991) b!3584781))

(assert (= (and d!1056945 (not c!620991)) b!3584782))

(declare-fun m!4078087 () Bool)

(assert (=> b!3584782 m!4078087))

(assert (=> b!3584782 m!4078019))

(assert (=> d!1056571 d!1056945))

(declare-fun d!1056947 () Bool)

(assert (=> d!1056947 (= (isDefined!5978 lt!1229186) (not (isEmpty!22189 lt!1229186)))))

(declare-fun bs!569988 () Bool)

(assert (= bs!569988 d!1056947))

(assert (=> bs!569988 m!4077047))

(assert (=> b!3583998 d!1056947))

(declare-fun bs!569989 () Bool)

(declare-fun d!1056949 () Bool)

(assert (= bs!569989 (and d!1056949 d!1056777)))

(declare-fun lambda!123778 () Int)

(assert (=> bs!569989 (= (= (toValue!7832 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 (h!43091 rules!3307)))) (= lambda!123778 lambda!123770))))

(assert (=> d!1056949 true))

(assert (=> d!1056949 (< (dynLambda!16196 order!20443 (toValue!7832 (transformation!5556 (rule!8268 token!511)))) (dynLambda!16197 order!20445 lambda!123778))))

(assert (=> d!1056949 (= (equivClasses!2252 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 (rule!8268 token!511)))) (Forall2!960 lambda!123778))))

(declare-fun bs!569990 () Bool)

(assert (= bs!569990 d!1056949))

(declare-fun m!4078089 () Bool)

(assert (=> bs!569990 m!4078089))

(assert (=> b!3584087 d!1056949))

(declare-fun d!1056951 () Bool)

(declare-fun lt!1229554 () Bool)

(assert (=> d!1056951 (= lt!1229554 (select (content!5349 (t!290424 rules!3307)) rule!403))))

(declare-fun e!2218059 () Bool)

(assert (=> d!1056951 (= lt!1229554 e!2218059)))

(declare-fun res!1446619 () Bool)

(assert (=> d!1056951 (=> (not res!1446619) (not e!2218059))))

(assert (=> d!1056951 (= res!1446619 ((_ is Cons!37671) (t!290424 rules!3307)))))

(assert (=> d!1056951 (= (contains!7172 (t!290424 rules!3307) rule!403) lt!1229554)))

(declare-fun b!3584783 () Bool)

(declare-fun e!2218060 () Bool)

(assert (=> b!3584783 (= e!2218059 e!2218060)))

(declare-fun res!1446620 () Bool)

(assert (=> b!3584783 (=> res!1446620 e!2218060)))

(assert (=> b!3584783 (= res!1446620 (= (h!43091 (t!290424 rules!3307)) rule!403))))

(declare-fun b!3584784 () Bool)

(assert (=> b!3584784 (= e!2218060 (contains!7172 (t!290424 (t!290424 rules!3307)) rule!403))))

(assert (= (and d!1056951 res!1446619) b!3584783))

(assert (= (and b!3584783 (not res!1446620)) b!3584784))

(declare-fun m!4078091 () Bool)

(assert (=> d!1056951 m!4078091))

(declare-fun m!4078093 () Bool)

(assert (=> d!1056951 m!4078093))

(declare-fun m!4078095 () Bool)

(assert (=> b!3584784 m!4078095))

(assert (=> b!3584074 d!1056951))

(declare-fun d!1056953 () Bool)

(declare-fun lt!1229555 () Int)

(assert (=> d!1056953 (>= lt!1229555 0)))

(declare-fun e!2218061 () Int)

(assert (=> d!1056953 (= lt!1229555 e!2218061)))

(declare-fun c!620992 () Bool)

(assert (=> d!1056953 (= c!620992 ((_ is Nil!37669) (originalCharacters!6270 token!511)))))

(assert (=> d!1056953 (= (size!28702 (originalCharacters!6270 token!511)) lt!1229555)))

(declare-fun b!3584785 () Bool)

(assert (=> b!3584785 (= e!2218061 0)))

(declare-fun b!3584786 () Bool)

(assert (=> b!3584786 (= e!2218061 (+ 1 (size!28702 (t!290422 (originalCharacters!6270 token!511)))))))

(assert (= (and d!1056953 c!620992) b!3584785))

(assert (= (and d!1056953 (not c!620992)) b!3584786))

(declare-fun m!4078097 () Bool)

(assert (=> b!3584786 m!4078097))

(assert (=> b!3583813 d!1056953))

(declare-fun d!1056955 () Bool)

(declare-fun list!13844 (Conc!11456) List!37796)

(assert (=> d!1056955 (= (list!13841 (_1!21913 lt!1229201)) (list!13844 (c!620760 (_1!21913 lt!1229201))))))

(declare-fun bs!569991 () Bool)

(assert (= bs!569991 d!1056955))

(declare-fun m!4078099 () Bool)

(assert (=> bs!569991 m!4078099))

(assert (=> b!3584029 d!1056955))

(declare-fun d!1056957 () Bool)

(declare-fun e!2218069 () Bool)

(assert (=> d!1056957 e!2218069))

(declare-fun c!620998 () Bool)

(declare-fun lt!1229563 () tuple2!37562)

(assert (=> d!1056957 (= c!620998 (> (size!28706 (_1!21915 lt!1229563)) 0))))

(declare-fun e!2218070 () tuple2!37562)

(assert (=> d!1056957 (= lt!1229563 e!2218070)))

(declare-fun c!620997 () Bool)

(declare-fun lt!1229564 () Option!7744)

(assert (=> d!1056957 (= c!620997 ((_ is Some!7743) lt!1229564))))

(assert (=> d!1056957 (= lt!1229564 (maxPrefix!2679 thiss!23823 rules!3307 (list!13837 (seqFromList!4111 lt!1229110))))))

(assert (=> d!1056957 (= (lexList!1508 thiss!23823 rules!3307 (list!13837 (seqFromList!4111 lt!1229110))) lt!1229563)))

(declare-fun b!3584797 () Bool)

(assert (=> b!3584797 (= e!2218069 (= (_2!21915 lt!1229563) (list!13837 (seqFromList!4111 lt!1229110))))))

(declare-fun b!3584798 () Bool)

(declare-fun lt!1229562 () tuple2!37562)

(assert (=> b!3584798 (= e!2218070 (tuple2!37563 (Cons!37672 (_1!21912 (v!37397 lt!1229564)) (_1!21915 lt!1229562)) (_2!21915 lt!1229562)))))

(assert (=> b!3584798 (= lt!1229562 (lexList!1508 thiss!23823 rules!3307 (_2!21912 (v!37397 lt!1229564))))))

(declare-fun b!3584799 () Bool)

(declare-fun e!2218068 () Bool)

(assert (=> b!3584799 (= e!2218068 (not (isEmpty!22190 (_1!21915 lt!1229563))))))

(declare-fun b!3584800 () Bool)

(assert (=> b!3584800 (= e!2218069 e!2218068)))

(declare-fun res!1446623 () Bool)

(assert (=> b!3584800 (= res!1446623 (< (size!28702 (_2!21915 lt!1229563)) (size!28702 (list!13837 (seqFromList!4111 lt!1229110)))))))

(assert (=> b!3584800 (=> (not res!1446623) (not e!2218068))))

(declare-fun b!3584801 () Bool)

(assert (=> b!3584801 (= e!2218070 (tuple2!37563 Nil!37672 (list!13837 (seqFromList!4111 lt!1229110))))))

(assert (= (and d!1056957 c!620997) b!3584798))

(assert (= (and d!1056957 (not c!620997)) b!3584801))

(assert (= (and d!1056957 c!620998) b!3584800))

(assert (= (and d!1056957 (not c!620998)) b!3584797))

(assert (= (and b!3584800 res!1446623) b!3584799))

(declare-fun m!4078101 () Bool)

(assert (=> d!1056957 m!4078101))

(assert (=> d!1056957 m!4077105))

(declare-fun m!4078103 () Bool)

(assert (=> d!1056957 m!4078103))

(declare-fun m!4078105 () Bool)

(assert (=> b!3584798 m!4078105))

(declare-fun m!4078107 () Bool)

(assert (=> b!3584799 m!4078107))

(declare-fun m!4078109 () Bool)

(assert (=> b!3584800 m!4078109))

(assert (=> b!3584800 m!4077105))

(declare-fun m!4078111 () Bool)

(assert (=> b!3584800 m!4078111))

(assert (=> b!3584029 d!1056957))

(declare-fun d!1056959 () Bool)

(assert (=> d!1056959 (= (list!13837 (seqFromList!4111 lt!1229110)) (list!13840 (c!620759 (seqFromList!4111 lt!1229110))))))

(declare-fun bs!569992 () Bool)

(assert (= bs!569992 d!1056959))

(declare-fun m!4078113 () Bool)

(assert (=> bs!569992 m!4078113))

(assert (=> b!3584029 d!1056959))

(declare-fun d!1056961 () Bool)

(assert (=> d!1056961 true))

(declare-fun order!20449 () Int)

(declare-fun lambda!123781 () Int)

(declare-fun order!20447 () Int)

(declare-fun dynLambda!16199 (Int Int) Int)

(declare-fun dynLambda!16200 (Int Int) Int)

(assert (=> d!1056961 (< (dynLambda!16199 order!20447 (toChars!7691 (transformation!5556 anOtherTypeRule!33))) (dynLambda!16200 order!20449 lambda!123781))))

(assert (=> d!1056961 true))

(assert (=> d!1056961 (< (dynLambda!16196 order!20443 (toValue!7832 (transformation!5556 anOtherTypeRule!33))) (dynLambda!16200 order!20449 lambda!123781))))

(declare-fun Forall!1363 (Int) Bool)

(assert (=> d!1056961 (= (semiInverseModEq!2353 (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toValue!7832 (transformation!5556 anOtherTypeRule!33))) (Forall!1363 lambda!123781))))

(declare-fun bs!569993 () Bool)

(assert (= bs!569993 d!1056961))

(declare-fun m!4078115 () Bool)

(assert (=> bs!569993 m!4078115))

(assert (=> d!1056579 d!1056961))

(assert (=> b!3583762 d!1056921))

(assert (=> b!3583762 d!1056791))

(declare-fun bs!569994 () Bool)

(declare-fun d!1056963 () Bool)

(assert (= bs!569994 (and d!1056963 d!1056961)))

(declare-fun lambda!123782 () Int)

(assert (=> bs!569994 (= (and (= (toChars!7691 (transformation!5556 rule!403)) (toChars!7691 (transformation!5556 anOtherTypeRule!33))) (= (toValue!7832 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 anOtherTypeRule!33)))) (= lambda!123782 lambda!123781))))

(assert (=> d!1056963 true))

(assert (=> d!1056963 (< (dynLambda!16199 order!20447 (toChars!7691 (transformation!5556 rule!403))) (dynLambda!16200 order!20449 lambda!123782))))

(assert (=> d!1056963 true))

(assert (=> d!1056963 (< (dynLambda!16196 order!20443 (toValue!7832 (transformation!5556 rule!403))) (dynLambda!16200 order!20449 lambda!123782))))

(assert (=> d!1056963 (= (semiInverseModEq!2353 (toChars!7691 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 rule!403))) (Forall!1363 lambda!123782))))

(declare-fun bs!569995 () Bool)

(assert (= bs!569995 d!1056963))

(declare-fun m!4078117 () Bool)

(assert (=> bs!569995 m!4078117))

(assert (=> d!1056631 d!1056963))

(declare-fun d!1056965 () Bool)

(declare-fun lt!1229567 () Int)

(assert (=> d!1056965 (= lt!1229567 (size!28702 (list!13837 (_2!21913 lt!1229201))))))

(declare-fun size!28710 (Conc!11455) Int)

(assert (=> d!1056965 (= lt!1229567 (size!28710 (c!620759 (_2!21913 lt!1229201))))))

(assert (=> d!1056965 (= (size!28704 (_2!21913 lt!1229201)) lt!1229567)))

(declare-fun bs!569996 () Bool)

(assert (= bs!569996 d!1056965))

(assert (=> bs!569996 m!4077115))

(assert (=> bs!569996 m!4077115))

(declare-fun m!4078119 () Bool)

(assert (=> bs!569996 m!4078119))

(declare-fun m!4078121 () Bool)

(assert (=> bs!569996 m!4078121))

(assert (=> b!3584031 d!1056965))

(declare-fun d!1056967 () Bool)

(declare-fun lt!1229568 () Int)

(assert (=> d!1056967 (= lt!1229568 (size!28702 (list!13837 (seqFromList!4111 lt!1229110))))))

(assert (=> d!1056967 (= lt!1229568 (size!28710 (c!620759 (seqFromList!4111 lt!1229110))))))

(assert (=> d!1056967 (= (size!28704 (seqFromList!4111 lt!1229110)) lt!1229568)))

(declare-fun bs!569997 () Bool)

(assert (= bs!569997 d!1056967))

(assert (=> bs!569997 m!4076745))

(assert (=> bs!569997 m!4077105))

(assert (=> bs!569997 m!4077105))

(assert (=> bs!569997 m!4078111))

(declare-fun m!4078123 () Bool)

(assert (=> bs!569997 m!4078123))

(assert (=> b!3584031 d!1056967))

(declare-fun d!1056969 () Bool)

(declare-fun c!620999 () Bool)

(assert (=> d!1056969 (= c!620999 ((_ is Nil!37669) (usedCharacters!770 (regex!5556 anOtherTypeRule!33))))))

(declare-fun e!2218071 () (InoxSet C!20816))

(assert (=> d!1056969 (= (content!5348 (usedCharacters!770 (regex!5556 anOtherTypeRule!33))) e!2218071)))

(declare-fun b!3584806 () Bool)

(assert (=> b!3584806 (= e!2218071 ((as const (Array C!20816 Bool)) false))))

(declare-fun b!3584807 () Bool)

(assert (=> b!3584807 (= e!2218071 ((_ map or) (store ((as const (Array C!20816 Bool)) false) (h!43089 (usedCharacters!770 (regex!5556 anOtherTypeRule!33))) true) (content!5348 (t!290422 (usedCharacters!770 (regex!5556 anOtherTypeRule!33))))))))

(assert (= (and d!1056969 c!620999) b!3584806))

(assert (= (and d!1056969 (not c!620999)) b!3584807))

(declare-fun m!4078125 () Bool)

(assert (=> b!3584807 m!4078125))

(assert (=> b!3584807 m!4078081))

(assert (=> d!1056565 d!1056969))

(declare-fun b!3584809 () Bool)

(declare-fun e!2218072 () List!37793)

(assert (=> b!3584809 (= e!2218072 (Cons!37669 (h!43089 (t!290422 lt!1229110)) (++!9368 (t!290422 (t!290422 lt!1229110)) suffix!1395)))))

(declare-fun e!2218073 () Bool)

(declare-fun b!3584811 () Bool)

(declare-fun lt!1229569 () List!37793)

(assert (=> b!3584811 (= e!2218073 (or (not (= suffix!1395 Nil!37669)) (= lt!1229569 (t!290422 lt!1229110))))))

(declare-fun b!3584808 () Bool)

(assert (=> b!3584808 (= e!2218072 suffix!1395)))

(declare-fun d!1056971 () Bool)

(assert (=> d!1056971 e!2218073))

(declare-fun res!1446624 () Bool)

(assert (=> d!1056971 (=> (not res!1446624) (not e!2218073))))

(assert (=> d!1056971 (= res!1446624 (= (content!5348 lt!1229569) ((_ map or) (content!5348 (t!290422 lt!1229110)) (content!5348 suffix!1395))))))

(assert (=> d!1056971 (= lt!1229569 e!2218072)))

(declare-fun c!621000 () Bool)

(assert (=> d!1056971 (= c!621000 ((_ is Nil!37669) (t!290422 lt!1229110)))))

(assert (=> d!1056971 (= (++!9368 (t!290422 lt!1229110) suffix!1395) lt!1229569)))

(declare-fun b!3584810 () Bool)

(declare-fun res!1446625 () Bool)

(assert (=> b!3584810 (=> (not res!1446625) (not e!2218073))))

(assert (=> b!3584810 (= res!1446625 (= (size!28702 lt!1229569) (+ (size!28702 (t!290422 lt!1229110)) (size!28702 suffix!1395))))))

(assert (= (and d!1056971 c!621000) b!3584808))

(assert (= (and d!1056971 (not c!621000)) b!3584809))

(assert (= (and d!1056971 res!1446624) b!3584810))

(assert (= (and b!3584810 res!1446625) b!3584811))

(declare-fun m!4078127 () Bool)

(assert (=> b!3584809 m!4078127))

(declare-fun m!4078129 () Bool)

(assert (=> d!1056971 m!4078129))

(assert (=> d!1056971 m!4078005))

(assert (=> d!1056971 m!4077089))

(declare-fun m!4078131 () Bool)

(assert (=> b!3584810 m!4078131))

(assert (=> b!3584810 m!4078017))

(assert (=> b!3584810 m!4077093))

(assert (=> b!3584014 d!1056971))

(declare-fun d!1056973 () Bool)

(assert (=> d!1056973 (= (isEmpty!22190 (list!13841 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))) ((_ is Nil!37672) (list!13841 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))))))

(assert (=> d!1056627 d!1056973))

(declare-fun d!1056975 () Bool)

(assert (=> d!1056975 (= (list!13841 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110)))) (list!13844 (c!620760 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))))))

(declare-fun bs!569998 () Bool)

(assert (= bs!569998 d!1056975))

(declare-fun m!4078133 () Bool)

(assert (=> bs!569998 m!4078133))

(assert (=> d!1056627 d!1056975))

(declare-fun lt!1229572 () Bool)

(declare-fun d!1056977 () Bool)

(assert (=> d!1056977 (= lt!1229572 (isEmpty!22190 (list!13844 (c!620760 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110)))))))))

(assert (=> d!1056977 (= lt!1229572 (= (size!28707 (c!620760 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))) 0))))

(assert (=> d!1056977 (= (isEmpty!22191 (c!620760 (_1!21913 (lex!2439 thiss!23823 rules!3307 (seqFromList!4111 lt!1229110))))) lt!1229572)))

(declare-fun bs!569999 () Bool)

(assert (= bs!569999 d!1056977))

(assert (=> bs!569999 m!4078133))

(assert (=> bs!569999 m!4078133))

(declare-fun m!4078135 () Bool)

(assert (=> bs!569999 m!4078135))

(declare-fun m!4078137 () Bool)

(assert (=> bs!569999 m!4078137))

(assert (=> d!1056627 d!1056977))

(declare-fun d!1056979 () Bool)

(declare-fun charsToBigInt!0 (List!37794 Int) Int)

(assert (=> d!1056979 (= (inv!15 (value!178806 token!511)) (= (charsToBigInt!0 (text!40951 (value!178806 token!511)) 0) (value!178801 (value!178806 token!511))))))

(declare-fun bs!570000 () Bool)

(assert (= bs!570000 d!1056979))

(declare-fun m!4078139 () Bool)

(assert (=> bs!570000 m!4078139))

(assert (=> b!3584064 d!1056979))

(assert (=> b!3583755 d!1056775))

(declare-fun b!3584813 () Bool)

(declare-fun e!2218074 () List!37793)

(assert (=> b!3584813 (= e!2218074 (Cons!37669 (h!43089 (ite c!620807 call!259476 call!259475)) (++!9368 (t!290422 (ite c!620807 call!259476 call!259475)) (ite c!620807 call!259475 call!259476))))))

(declare-fun lt!1229573 () List!37793)

(declare-fun e!2218075 () Bool)

(declare-fun b!3584815 () Bool)

(assert (=> b!3584815 (= e!2218075 (or (not (= (ite c!620807 call!259475 call!259476) Nil!37669)) (= lt!1229573 (ite c!620807 call!259476 call!259475))))))

(declare-fun b!3584812 () Bool)

(assert (=> b!3584812 (= e!2218074 (ite c!620807 call!259475 call!259476))))

(declare-fun d!1056981 () Bool)

(assert (=> d!1056981 e!2218075))

(declare-fun res!1446626 () Bool)

(assert (=> d!1056981 (=> (not res!1446626) (not e!2218075))))

(assert (=> d!1056981 (= res!1446626 (= (content!5348 lt!1229573) ((_ map or) (content!5348 (ite c!620807 call!259476 call!259475)) (content!5348 (ite c!620807 call!259475 call!259476)))))))

(assert (=> d!1056981 (= lt!1229573 e!2218074)))

(declare-fun c!621001 () Bool)

(assert (=> d!1056981 (= c!621001 ((_ is Nil!37669) (ite c!620807 call!259476 call!259475)))))

(assert (=> d!1056981 (= (++!9368 (ite c!620807 call!259476 call!259475) (ite c!620807 call!259475 call!259476)) lt!1229573)))

(declare-fun b!3584814 () Bool)

(declare-fun res!1446627 () Bool)

(assert (=> b!3584814 (=> (not res!1446627) (not e!2218075))))

(assert (=> b!3584814 (= res!1446627 (= (size!28702 lt!1229573) (+ (size!28702 (ite c!620807 call!259476 call!259475)) (size!28702 (ite c!620807 call!259475 call!259476)))))))

(assert (= (and d!1056981 c!621001) b!3584812))

(assert (= (and d!1056981 (not c!621001)) b!3584813))

(assert (= (and d!1056981 res!1446626) b!3584814))

(assert (= (and b!3584814 res!1446627) b!3584815))

(declare-fun m!4078141 () Bool)

(assert (=> b!3584813 m!4078141))

(declare-fun m!4078143 () Bool)

(assert (=> d!1056981 m!4078143))

(declare-fun m!4078145 () Bool)

(assert (=> d!1056981 m!4078145))

(declare-fun m!4078147 () Bool)

(assert (=> d!1056981 m!4078147))

(declare-fun m!4078149 () Bool)

(assert (=> b!3584814 m!4078149))

(declare-fun m!4078151 () Bool)

(assert (=> b!3584814 m!4078151))

(declare-fun m!4078153 () Bool)

(assert (=> b!3584814 m!4078153))

(assert (=> bm!259468 d!1056981))

(declare-fun e!2218076 () List!37793)

(declare-fun b!3584817 () Bool)

(assert (=> b!3584817 (= e!2218076 (Cons!37669 (h!43089 (ite c!620803 call!259472 call!259471)) (++!9368 (t!290422 (ite c!620803 call!259472 call!259471)) (ite c!620803 call!259471 call!259472))))))

(declare-fun e!2218077 () Bool)

(declare-fun lt!1229574 () List!37793)

(declare-fun b!3584819 () Bool)

(assert (=> b!3584819 (= e!2218077 (or (not (= (ite c!620803 call!259471 call!259472) Nil!37669)) (= lt!1229574 (ite c!620803 call!259472 call!259471))))))

(declare-fun b!3584816 () Bool)

(assert (=> b!3584816 (= e!2218076 (ite c!620803 call!259471 call!259472))))

(declare-fun d!1056983 () Bool)

(assert (=> d!1056983 e!2218077))

(declare-fun res!1446628 () Bool)

(assert (=> d!1056983 (=> (not res!1446628) (not e!2218077))))

(assert (=> d!1056983 (= res!1446628 (= (content!5348 lt!1229574) ((_ map or) (content!5348 (ite c!620803 call!259472 call!259471)) (content!5348 (ite c!620803 call!259471 call!259472)))))))

(assert (=> d!1056983 (= lt!1229574 e!2218076)))

(declare-fun c!621002 () Bool)

(assert (=> d!1056983 (= c!621002 ((_ is Nil!37669) (ite c!620803 call!259472 call!259471)))))

(assert (=> d!1056983 (= (++!9368 (ite c!620803 call!259472 call!259471) (ite c!620803 call!259471 call!259472)) lt!1229574)))

(declare-fun b!3584818 () Bool)

(declare-fun res!1446629 () Bool)

(assert (=> b!3584818 (=> (not res!1446629) (not e!2218077))))

(assert (=> b!3584818 (= res!1446629 (= (size!28702 lt!1229574) (+ (size!28702 (ite c!620803 call!259472 call!259471)) (size!28702 (ite c!620803 call!259471 call!259472)))))))

(assert (= (and d!1056983 c!621002) b!3584816))

(assert (= (and d!1056983 (not c!621002)) b!3584817))

(assert (= (and d!1056983 res!1446628) b!3584818))

(assert (= (and b!3584818 res!1446629) b!3584819))

(declare-fun m!4078155 () Bool)

(assert (=> b!3584817 m!4078155))

(declare-fun m!4078157 () Bool)

(assert (=> d!1056983 m!4078157))

(declare-fun m!4078159 () Bool)

(assert (=> d!1056983 m!4078159))

(declare-fun m!4078161 () Bool)

(assert (=> d!1056983 m!4078161))

(declare-fun m!4078163 () Bool)

(assert (=> b!3584818 m!4078163))

(declare-fun m!4078165 () Bool)

(assert (=> b!3584818 m!4078165))

(declare-fun m!4078167 () Bool)

(assert (=> b!3584818 m!4078167))

(assert (=> bm!259464 d!1056983))

(declare-fun b!3584820 () Bool)

(declare-fun e!2218080 () Bool)

(declare-fun lt!1229575 () Bool)

(declare-fun call!259544 () Bool)

(assert (=> b!3584820 (= e!2218080 (= lt!1229575 call!259544))))

(declare-fun d!1056985 () Bool)

(assert (=> d!1056985 e!2218080))

(declare-fun c!621005 () Bool)

(assert (=> d!1056985 (= c!621005 ((_ is EmptyExpr!10315) (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110))))))

(declare-fun e!2218078 () Bool)

(assert (=> d!1056985 (= lt!1229575 e!2218078)))

(declare-fun c!621004 () Bool)

(assert (=> d!1056985 (= c!621004 (isEmpty!22183 (tail!5553 lt!1229110)))))

(assert (=> d!1056985 (validRegex!4711 (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110)))))

(assert (=> d!1056985 (= (matchR!4884 (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110)) (tail!5553 lt!1229110)) lt!1229575)))

(declare-fun b!3584821 () Bool)

(declare-fun e!2218082 () Bool)

(assert (=> b!3584821 (= e!2218082 (not lt!1229575))))

(declare-fun b!3584822 () Bool)

(assert (=> b!3584822 (= e!2218080 e!2218082)))

(declare-fun c!621003 () Bool)

(assert (=> b!3584822 (= c!621003 ((_ is EmptyLang!10315) (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110))))))

(declare-fun b!3584823 () Bool)

(declare-fun res!1446633 () Bool)

(declare-fun e!2218079 () Bool)

(assert (=> b!3584823 (=> res!1446633 e!2218079)))

(assert (=> b!3584823 (= res!1446633 (not (isEmpty!22183 (tail!5553 (tail!5553 lt!1229110)))))))

(declare-fun b!3584824 () Bool)

(declare-fun e!2218083 () Bool)

(assert (=> b!3584824 (= e!2218083 (= (head!7473 (tail!5553 lt!1229110)) (c!620758 (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110)))))))

(declare-fun b!3584825 () Bool)

(assert (=> b!3584825 (= e!2218079 (not (= (head!7473 (tail!5553 lt!1229110)) (c!620758 (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110))))))))

(declare-fun b!3584826 () Bool)

(assert (=> b!3584826 (= e!2218078 (matchR!4884 (derivativeStep!3104 (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110)) (head!7473 (tail!5553 lt!1229110))) (tail!5553 (tail!5553 lt!1229110))))))

(declare-fun b!3584827 () Bool)

(declare-fun res!1446637 () Bool)

(declare-fun e!2218084 () Bool)

(assert (=> b!3584827 (=> res!1446637 e!2218084)))

(assert (=> b!3584827 (= res!1446637 e!2218083)))

(declare-fun res!1446630 () Bool)

(assert (=> b!3584827 (=> (not res!1446630) (not e!2218083))))

(assert (=> b!3584827 (= res!1446630 lt!1229575)))

(declare-fun b!3584828 () Bool)

(declare-fun e!2218081 () Bool)

(assert (=> b!3584828 (= e!2218081 e!2218079)))

(declare-fun res!1446631 () Bool)

(assert (=> b!3584828 (=> res!1446631 e!2218079)))

(assert (=> b!3584828 (= res!1446631 call!259544)))

(declare-fun b!3584829 () Bool)

(declare-fun res!1446634 () Bool)

(assert (=> b!3584829 (=> res!1446634 e!2218084)))

(assert (=> b!3584829 (= res!1446634 (not ((_ is ElementMatch!10315) (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110)))))))

(assert (=> b!3584829 (= e!2218082 e!2218084)))

(declare-fun b!3584830 () Bool)

(declare-fun res!1446632 () Bool)

(assert (=> b!3584830 (=> (not res!1446632) (not e!2218083))))

(assert (=> b!3584830 (= res!1446632 (not call!259544))))

(declare-fun b!3584831 () Bool)

(declare-fun res!1446635 () Bool)

(assert (=> b!3584831 (=> (not res!1446635) (not e!2218083))))

(assert (=> b!3584831 (= res!1446635 (isEmpty!22183 (tail!5553 (tail!5553 lt!1229110))))))

(declare-fun b!3584832 () Bool)

(assert (=> b!3584832 (= e!2218078 (nullable!3555 (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110))))))

(declare-fun b!3584833 () Bool)

(assert (=> b!3584833 (= e!2218084 e!2218081)))

(declare-fun res!1446636 () Bool)

(assert (=> b!3584833 (=> (not res!1446636) (not e!2218081))))

(assert (=> b!3584833 (= res!1446636 (not lt!1229575))))

(declare-fun bm!259539 () Bool)

(assert (=> bm!259539 (= call!259544 (isEmpty!22183 (tail!5553 lt!1229110)))))

(assert (= (and d!1056985 c!621004) b!3584832))

(assert (= (and d!1056985 (not c!621004)) b!3584826))

(assert (= (and d!1056985 c!621005) b!3584820))

(assert (= (and d!1056985 (not c!621005)) b!3584822))

(assert (= (and b!3584822 c!621003) b!3584821))

(assert (= (and b!3584822 (not c!621003)) b!3584829))

(assert (= (and b!3584829 (not res!1446634)) b!3584827))

(assert (= (and b!3584827 res!1446630) b!3584830))

(assert (= (and b!3584830 res!1446632) b!3584831))

(assert (= (and b!3584831 res!1446635) b!3584824))

(assert (= (and b!3584827 (not res!1446637)) b!3584833))

(assert (= (and b!3584833 res!1446636) b!3584828))

(assert (= (and b!3584828 (not res!1446631)) b!3584823))

(assert (= (and b!3584823 (not res!1446633)) b!3584825))

(assert (= (or b!3584820 b!3584828 b!3584830) bm!259539))

(assert (=> bm!259539 m!4076863))

(assert (=> bm!259539 m!4076867))

(assert (=> b!3584832 m!4076861))

(declare-fun m!4078169 () Bool)

(assert (=> b!3584832 m!4078169))

(assert (=> b!3584826 m!4076863))

(assert (=> b!3584826 m!4077547))

(assert (=> b!3584826 m!4076861))

(assert (=> b!3584826 m!4077547))

(declare-fun m!4078171 () Bool)

(assert (=> b!3584826 m!4078171))

(assert (=> b!3584826 m!4076863))

(assert (=> b!3584826 m!4077533))

(assert (=> b!3584826 m!4078171))

(assert (=> b!3584826 m!4077533))

(declare-fun m!4078173 () Bool)

(assert (=> b!3584826 m!4078173))

(assert (=> b!3584831 m!4076863))

(assert (=> b!3584831 m!4077533))

(assert (=> b!3584831 m!4077533))

(declare-fun m!4078175 () Bool)

(assert (=> b!3584831 m!4078175))

(assert (=> b!3584824 m!4076863))

(assert (=> b!3584824 m!4077547))

(assert (=> d!1056985 m!4076863))

(assert (=> d!1056985 m!4076867))

(assert (=> d!1056985 m!4076861))

(declare-fun m!4078177 () Bool)

(assert (=> d!1056985 m!4078177))

(assert (=> b!3584825 m!4076863))

(assert (=> b!3584825 m!4077547))

(assert (=> b!3584823 m!4076863))

(assert (=> b!3584823 m!4077533))

(assert (=> b!3584823 m!4077533))

(assert (=> b!3584823 m!4078175))

(assert (=> b!3583757 d!1056985))

(declare-fun b!3584854 () Bool)

(declare-fun e!2218098 () Regex!10315)

(declare-fun e!2218096 () Regex!10315)

(assert (=> b!3584854 (= e!2218098 e!2218096)))

(declare-fun c!621017 () Bool)

(assert (=> b!3584854 (= c!621017 ((_ is Star!10315) (regex!5556 rule!403)))))

(declare-fun b!3584855 () Bool)

(declare-fun e!2218095 () Regex!10315)

(assert (=> b!3584855 (= e!2218095 EmptyLang!10315)))

(declare-fun b!3584856 () Bool)

(declare-fun call!259553 () Regex!10315)

(declare-fun call!259554 () Regex!10315)

(assert (=> b!3584856 (= e!2218098 (Union!10315 call!259553 call!259554))))

(declare-fun b!3584857 () Bool)

(declare-fun e!2218097 () Regex!10315)

(assert (=> b!3584857 (= e!2218097 (ite (= (head!7473 lt!1229110) (c!620758 (regex!5556 rule!403))) EmptyExpr!10315 EmptyLang!10315))))

(declare-fun c!621019 () Bool)

(declare-fun bm!259548 () Bool)

(assert (=> bm!259548 (= call!259553 (derivativeStep!3104 (ite c!621019 (regOne!21143 (regex!5556 rule!403)) (ite c!621017 (reg!10644 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))) (head!7473 lt!1229110)))))

(declare-fun bm!259549 () Bool)

(declare-fun call!259555 () Regex!10315)

(assert (=> bm!259549 (= call!259555 call!259553)))

(declare-fun b!3584858 () Bool)

(declare-fun e!2218099 () Regex!10315)

(declare-fun call!259556 () Regex!10315)

(assert (=> b!3584858 (= e!2218099 (Union!10315 (Concat!16102 call!259556 (regTwo!21142 (regex!5556 rule!403))) EmptyLang!10315))))

(declare-fun bm!259550 () Bool)

(assert (=> bm!259550 (= call!259556 call!259555)))

(declare-fun b!3584859 () Bool)

(assert (=> b!3584859 (= e!2218095 e!2218097)))

(declare-fun c!621018 () Bool)

(assert (=> b!3584859 (= c!621018 ((_ is ElementMatch!10315) (regex!5556 rule!403)))))

(declare-fun b!3584860 () Bool)

(declare-fun c!621020 () Bool)

(assert (=> b!3584860 (= c!621020 (nullable!3555 (regOne!21142 (regex!5556 rule!403))))))

(assert (=> b!3584860 (= e!2218096 e!2218099)))

(declare-fun b!3584861 () Bool)

(assert (=> b!3584861 (= e!2218099 (Union!10315 (Concat!16102 call!259556 (regTwo!21142 (regex!5556 rule!403))) call!259554))))

(declare-fun b!3584862 () Bool)

(assert (=> b!3584862 (= c!621019 ((_ is Union!10315) (regex!5556 rule!403)))))

(assert (=> b!3584862 (= e!2218097 e!2218098)))

(declare-fun d!1056987 () Bool)

(declare-fun lt!1229578 () Regex!10315)

(assert (=> d!1056987 (validRegex!4711 lt!1229578)))

(assert (=> d!1056987 (= lt!1229578 e!2218095)))

(declare-fun c!621016 () Bool)

(assert (=> d!1056987 (= c!621016 (or ((_ is EmptyExpr!10315) (regex!5556 rule!403)) ((_ is EmptyLang!10315) (regex!5556 rule!403))))))

(assert (=> d!1056987 (validRegex!4711 (regex!5556 rule!403))))

(assert (=> d!1056987 (= (derivativeStep!3104 (regex!5556 rule!403) (head!7473 lt!1229110)) lt!1229578)))

(declare-fun b!3584863 () Bool)

(assert (=> b!3584863 (= e!2218096 (Concat!16102 call!259555 (regex!5556 rule!403)))))

(declare-fun bm!259551 () Bool)

(assert (=> bm!259551 (= call!259554 (derivativeStep!3104 (ite c!621019 (regTwo!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))) (head!7473 lt!1229110)))))

(assert (= (and d!1056987 c!621016) b!3584855))

(assert (= (and d!1056987 (not c!621016)) b!3584859))

(assert (= (and b!3584859 c!621018) b!3584857))

(assert (= (and b!3584859 (not c!621018)) b!3584862))

(assert (= (and b!3584862 c!621019) b!3584856))

(assert (= (and b!3584862 (not c!621019)) b!3584854))

(assert (= (and b!3584854 c!621017) b!3584863))

(assert (= (and b!3584854 (not c!621017)) b!3584860))

(assert (= (and b!3584860 c!621020) b!3584861))

(assert (= (and b!3584860 (not c!621020)) b!3584858))

(assert (= (or b!3584861 b!3584858) bm!259550))

(assert (= (or b!3584863 bm!259550) bm!259549))

(assert (= (or b!3584856 b!3584861) bm!259551))

(assert (= (or b!3584856 bm!259549) bm!259548))

(assert (=> bm!259548 m!4076859))

(declare-fun m!4078179 () Bool)

(assert (=> bm!259548 m!4078179))

(declare-fun m!4078181 () Bool)

(assert (=> b!3584860 m!4078181))

(declare-fun m!4078183 () Bool)

(assert (=> d!1056987 m!4078183))

(assert (=> d!1056987 m!4076869))

(assert (=> bm!259551 m!4076859))

(declare-fun m!4078185 () Bool)

(assert (=> bm!259551 m!4078185))

(assert (=> b!3583757 d!1056987))

(assert (=> b!3583757 d!1056775))

(assert (=> b!3583757 d!1056791))

(assert (=> b!3584041 d!1056775))

(declare-fun d!1056989 () Bool)

(assert (=> d!1056989 (= (head!7473 lt!1229107) (h!43089 lt!1229107))))

(assert (=> b!3584041 d!1056989))

(declare-fun b!3584864 () Bool)

(declare-fun e!2218102 () List!37793)

(declare-fun e!2218100 () List!37793)

(assert (=> b!3584864 (= e!2218102 e!2218100)))

(declare-fun c!621023 () Bool)

(assert (=> b!3584864 (= c!621023 ((_ is ElementMatch!10315) (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))))))

(declare-fun c!621021 () Bool)

(declare-fun bm!259552 () Bool)

(declare-fun call!259560 () List!37793)

(declare-fun call!259558 () List!37793)

(declare-fun call!259559 () List!37793)

(assert (=> bm!259552 (= call!259558 (++!9368 (ite c!621021 call!259560 call!259559) (ite c!621021 call!259559 call!259560)))))

(declare-fun b!3584865 () Bool)

(declare-fun e!2218103 () List!37793)

(assert (=> b!3584865 (= e!2218103 call!259558)))

(declare-fun bm!259553 () Bool)

(declare-fun c!621022 () Bool)

(declare-fun call!259557 () List!37793)

(assert (=> bm!259553 (= call!259557 (usedCharacters!770 (ite c!621022 (reg!10644 (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))) (ite c!621021 (regOne!21143 (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))) (regTwo!21142 (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403)))))))))))

(declare-fun bm!259554 () Bool)

(assert (=> bm!259554 (= call!259559 (usedCharacters!770 (ite c!621021 (regTwo!21143 (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))) (regOne!21142 (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))))))))

(declare-fun bm!259555 () Bool)

(assert (=> bm!259555 (= call!259560 call!259557)))

(declare-fun b!3584867 () Bool)

(declare-fun e!2218101 () List!37793)

(assert (=> b!3584867 (= e!2218101 call!259557)))

(declare-fun b!3584868 () Bool)

(assert (=> b!3584868 (= e!2218103 call!259558)))

(declare-fun b!3584869 () Bool)

(assert (=> b!3584869 (= c!621022 ((_ is Star!10315) (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))))))

(assert (=> b!3584869 (= e!2218100 e!2218101)))

(declare-fun d!1056991 () Bool)

(declare-fun c!621024 () Bool)

(assert (=> d!1056991 (= c!621024 (or ((_ is EmptyExpr!10315) (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))) ((_ is EmptyLang!10315) (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403)))))))))

(assert (=> d!1056991 (= (usedCharacters!770 (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))) e!2218102)))

(declare-fun b!3584866 () Bool)

(assert (=> b!3584866 (= e!2218101 e!2218103)))

(assert (=> b!3584866 (= c!621021 ((_ is Union!10315) (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))))))

(declare-fun b!3584870 () Bool)

(assert (=> b!3584870 (= e!2218100 (Cons!37669 (c!620758 (ite c!620808 (reg!10644 (regex!5556 rule!403)) (ite c!620807 (regOne!21143 (regex!5556 rule!403)) (regTwo!21142 (regex!5556 rule!403))))) Nil!37669))))

(declare-fun b!3584871 () Bool)

(assert (=> b!3584871 (= e!2218102 Nil!37669)))

(assert (= (and d!1056991 c!621024) b!3584871))

(assert (= (and d!1056991 (not c!621024)) b!3584864))

(assert (= (and b!3584864 c!621023) b!3584870))

(assert (= (and b!3584864 (not c!621023)) b!3584869))

(assert (= (and b!3584869 c!621022) b!3584867))

(assert (= (and b!3584869 (not c!621022)) b!3584866))

(assert (= (and b!3584866 c!621021) b!3584865))

(assert (= (and b!3584866 (not c!621021)) b!3584868))

(assert (= (or b!3584865 b!3584868) bm!259555))

(assert (= (or b!3584865 b!3584868) bm!259554))

(assert (= (or b!3584865 b!3584868) bm!259552))

(assert (= (or b!3584867 bm!259555) bm!259553))

(declare-fun m!4078187 () Bool)

(assert (=> bm!259552 m!4078187))

(declare-fun m!4078189 () Bool)

(assert (=> bm!259553 m!4078189))

(declare-fun m!4078191 () Bool)

(assert (=> bm!259554 m!4078191))

(assert (=> bm!259469 d!1056991))

(declare-fun b!3584872 () Bool)

(declare-fun e!2218106 () List!37793)

(declare-fun e!2218104 () List!37793)

(assert (=> b!3584872 (= e!2218106 e!2218104)))

(declare-fun c!621027 () Bool)

(assert (=> b!3584872 (= c!621027 ((_ is ElementMatch!10315) (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))))))

(declare-fun bm!259556 () Bool)

(declare-fun call!259564 () List!37793)

(declare-fun call!259562 () List!37793)

(declare-fun c!621025 () Bool)

(declare-fun call!259563 () List!37793)

(assert (=> bm!259556 (= call!259562 (++!9368 (ite c!621025 call!259564 call!259563) (ite c!621025 call!259563 call!259564)))))

(declare-fun b!3584873 () Bool)

(declare-fun e!2218107 () List!37793)

(assert (=> b!3584873 (= e!2218107 call!259562)))

(declare-fun c!621026 () Bool)

(declare-fun bm!259557 () Bool)

(declare-fun call!259561 () List!37793)

(assert (=> bm!259557 (= call!259561 (usedCharacters!770 (ite c!621026 (reg!10644 (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))) (ite c!621025 (regOne!21143 (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))) (regTwo!21142 (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33)))))))))))

(declare-fun bm!259558 () Bool)

(assert (=> bm!259558 (= call!259563 (usedCharacters!770 (ite c!621025 (regTwo!21143 (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))) (regOne!21142 (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))))))))

(declare-fun bm!259559 () Bool)

(assert (=> bm!259559 (= call!259564 call!259561)))

(declare-fun b!3584875 () Bool)

(declare-fun e!2218105 () List!37793)

(assert (=> b!3584875 (= e!2218105 call!259561)))

(declare-fun b!3584876 () Bool)

(assert (=> b!3584876 (= e!2218107 call!259562)))

(declare-fun b!3584877 () Bool)

(assert (=> b!3584877 (= c!621026 ((_ is Star!10315) (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))))))

(assert (=> b!3584877 (= e!2218104 e!2218105)))

(declare-fun d!1056993 () Bool)

(declare-fun c!621028 () Bool)

(assert (=> d!1056993 (= c!621028 (or ((_ is EmptyExpr!10315) (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))) ((_ is EmptyLang!10315) (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33)))))))))

(assert (=> d!1056993 (= (usedCharacters!770 (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))) e!2218106)))

(declare-fun b!3584874 () Bool)

(assert (=> b!3584874 (= e!2218105 e!2218107)))

(assert (=> b!3584874 (= c!621025 ((_ is Union!10315) (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))))))

(declare-fun b!3584878 () Bool)

(assert (=> b!3584878 (= e!2218104 (Cons!37669 (c!620758 (ite c!620804 (reg!10644 (regex!5556 anOtherTypeRule!33)) (ite c!620803 (regOne!21143 (regex!5556 anOtherTypeRule!33)) (regTwo!21142 (regex!5556 anOtherTypeRule!33))))) Nil!37669))))

(declare-fun b!3584879 () Bool)

(assert (=> b!3584879 (= e!2218106 Nil!37669)))

(assert (= (and d!1056993 c!621028) b!3584879))

(assert (= (and d!1056993 (not c!621028)) b!3584872))

(assert (= (and b!3584872 c!621027) b!3584878))

(assert (= (and b!3584872 (not c!621027)) b!3584877))

(assert (= (and b!3584877 c!621026) b!3584875))

(assert (= (and b!3584877 (not c!621026)) b!3584874))

(assert (= (and b!3584874 c!621025) b!3584873))

(assert (= (and b!3584874 (not c!621025)) b!3584876))

(assert (= (or b!3584873 b!3584876) bm!259559))

(assert (= (or b!3584873 b!3584876) bm!259558))

(assert (= (or b!3584873 b!3584876) bm!259556))

(assert (= (or b!3584875 bm!259559) bm!259557))

(declare-fun m!4078193 () Bool)

(assert (=> bm!259556 m!4078193))

(declare-fun m!4078195 () Bool)

(assert (=> bm!259557 m!4078195))

(declare-fun m!4078197 () Bool)

(assert (=> bm!259558 m!4078197))

(assert (=> bm!259465 d!1056993))

(declare-fun d!1056995 () Bool)

(declare-fun lt!1229579 () Bool)

(assert (=> d!1056995 (= lt!1229579 (select (content!5349 (t!290424 rules!3307)) anOtherTypeRule!33))))

(declare-fun e!2218108 () Bool)

(assert (=> d!1056995 (= lt!1229579 e!2218108)))

(declare-fun res!1446638 () Bool)

(assert (=> d!1056995 (=> (not res!1446638) (not e!2218108))))

(assert (=> d!1056995 (= res!1446638 ((_ is Cons!37671) (t!290424 rules!3307)))))

(assert (=> d!1056995 (= (contains!7172 (t!290424 rules!3307) anOtherTypeRule!33) lt!1229579)))

(declare-fun b!3584880 () Bool)

(declare-fun e!2218109 () Bool)

(assert (=> b!3584880 (= e!2218108 e!2218109)))

(declare-fun res!1446639 () Bool)

(assert (=> b!3584880 (=> res!1446639 e!2218109)))

(assert (=> b!3584880 (= res!1446639 (= (h!43091 (t!290424 rules!3307)) anOtherTypeRule!33))))

(declare-fun b!3584881 () Bool)

(assert (=> b!3584881 (= e!2218109 (contains!7172 (t!290424 (t!290424 rules!3307)) anOtherTypeRule!33))))

(assert (= (and d!1056995 res!1446638) b!3584880))

(assert (= (and b!3584880 (not res!1446639)) b!3584881))

(assert (=> d!1056995 m!4078091))

(declare-fun m!4078199 () Bool)

(assert (=> d!1056995 m!4078199))

(declare-fun m!4078201 () Bool)

(assert (=> b!3584881 m!4078201))

(assert (=> b!3584086 d!1056995))

(assert (=> b!3584043 d!1056915))

(assert (=> b!3584043 d!1056919))

(declare-fun b!3584882 () Bool)

(declare-fun e!2218112 () List!37793)

(declare-fun e!2218110 () List!37793)

(assert (=> b!3584882 (= e!2218112 e!2218110)))

(declare-fun c!621031 () Bool)

(assert (=> b!3584882 (= c!621031 ((_ is ElementMatch!10315) (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))))))

(declare-fun call!259567 () List!37793)

(declare-fun c!621029 () Bool)

(declare-fun bm!259560 () Bool)

(declare-fun call!259566 () List!37793)

(declare-fun call!259568 () List!37793)

(assert (=> bm!259560 (= call!259566 (++!9368 (ite c!621029 call!259568 call!259567) (ite c!621029 call!259567 call!259568)))))

(declare-fun b!3584883 () Bool)

(declare-fun e!2218113 () List!37793)

(assert (=> b!3584883 (= e!2218113 call!259566)))

(declare-fun call!259565 () List!37793)

(declare-fun bm!259561 () Bool)

(declare-fun c!621030 () Bool)

(assert (=> bm!259561 (= call!259565 (usedCharacters!770 (ite c!621030 (reg!10644 (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))) (ite c!621029 (regOne!21143 (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))) (regTwo!21142 (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403))))))))))

(declare-fun bm!259562 () Bool)

(assert (=> bm!259562 (= call!259567 (usedCharacters!770 (ite c!621029 (regTwo!21143 (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))) (regOne!21142 (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))))))))

(declare-fun bm!259563 () Bool)

(assert (=> bm!259563 (= call!259568 call!259565)))

(declare-fun b!3584885 () Bool)

(declare-fun e!2218111 () List!37793)

(assert (=> b!3584885 (= e!2218111 call!259565)))

(declare-fun b!3584886 () Bool)

(assert (=> b!3584886 (= e!2218113 call!259566)))

(declare-fun b!3584887 () Bool)

(assert (=> b!3584887 (= c!621030 ((_ is Star!10315) (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))))))

(assert (=> b!3584887 (= e!2218110 e!2218111)))

(declare-fun d!1056997 () Bool)

(declare-fun c!621032 () Bool)

(assert (=> d!1056997 (= c!621032 (or ((_ is EmptyExpr!10315) (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))) ((_ is EmptyLang!10315) (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403))))))))

(assert (=> d!1056997 (= (usedCharacters!770 (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))) e!2218112)))

(declare-fun b!3584884 () Bool)

(assert (=> b!3584884 (= e!2218111 e!2218113)))

(assert (=> b!3584884 (= c!621029 ((_ is Union!10315) (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))))))

(declare-fun b!3584888 () Bool)

(assert (=> b!3584888 (= e!2218110 (Cons!37669 (c!620758 (ite c!620807 (regTwo!21143 (regex!5556 rule!403)) (regOne!21142 (regex!5556 rule!403)))) Nil!37669))))

(declare-fun b!3584889 () Bool)

(assert (=> b!3584889 (= e!2218112 Nil!37669)))

(assert (= (and d!1056997 c!621032) b!3584889))

(assert (= (and d!1056997 (not c!621032)) b!3584882))

(assert (= (and b!3584882 c!621031) b!3584888))

(assert (= (and b!3584882 (not c!621031)) b!3584887))

(assert (= (and b!3584887 c!621030) b!3584885))

(assert (= (and b!3584887 (not c!621030)) b!3584884))

(assert (= (and b!3584884 c!621029) b!3584883))

(assert (= (and b!3584884 (not c!621029)) b!3584886))

(assert (= (or b!3584883 b!3584886) bm!259563))

(assert (= (or b!3584883 b!3584886) bm!259562))

(assert (= (or b!3584883 b!3584886) bm!259560))

(assert (= (or b!3584885 bm!259563) bm!259561))

(declare-fun m!4078203 () Bool)

(assert (=> bm!259560 m!4078203))

(declare-fun m!4078205 () Bool)

(assert (=> bm!259561 m!4078205))

(declare-fun m!4078207 () Bool)

(assert (=> bm!259562 m!4078207))

(assert (=> bm!259470 d!1056997))

(declare-fun b!3584890 () Bool)

(declare-fun e!2218116 () List!37793)

(declare-fun e!2218114 () List!37793)

(assert (=> b!3584890 (= e!2218116 e!2218114)))

(declare-fun c!621035 () Bool)

(assert (=> b!3584890 (= c!621035 ((_ is ElementMatch!10315) (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))))))

(declare-fun bm!259564 () Bool)

(declare-fun call!259572 () List!37793)

(declare-fun c!621033 () Bool)

(declare-fun call!259571 () List!37793)

(declare-fun call!259570 () List!37793)

(assert (=> bm!259564 (= call!259570 (++!9368 (ite c!621033 call!259572 call!259571) (ite c!621033 call!259571 call!259572)))))

(declare-fun b!3584891 () Bool)

(declare-fun e!2218117 () List!37793)

(assert (=> b!3584891 (= e!2218117 call!259570)))

(declare-fun call!259569 () List!37793)

(declare-fun bm!259565 () Bool)

(declare-fun c!621034 () Bool)

(assert (=> bm!259565 (= call!259569 (usedCharacters!770 (ite c!621034 (reg!10644 (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) (ite c!621033 (regOne!21143 (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) (regTwo!21142 (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33))))))))))

(declare-fun bm!259566 () Bool)

(assert (=> bm!259566 (= call!259571 (usedCharacters!770 (ite c!621033 (regTwo!21143 (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) (regOne!21142 (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))))))))

(declare-fun bm!259567 () Bool)

(assert (=> bm!259567 (= call!259572 call!259569)))

(declare-fun b!3584893 () Bool)

(declare-fun e!2218115 () List!37793)

(assert (=> b!3584893 (= e!2218115 call!259569)))

(declare-fun b!3584894 () Bool)

(assert (=> b!3584894 (= e!2218117 call!259570)))

(declare-fun b!3584895 () Bool)

(assert (=> b!3584895 (= c!621034 ((_ is Star!10315) (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))))))

(assert (=> b!3584895 (= e!2218114 e!2218115)))

(declare-fun d!1056999 () Bool)

(declare-fun c!621036 () Bool)

(assert (=> d!1056999 (= c!621036 (or ((_ is EmptyExpr!10315) (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) ((_ is EmptyLang!10315) (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33))))))))

(assert (=> d!1056999 (= (usedCharacters!770 (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) e!2218116)))

(declare-fun b!3584892 () Bool)

(assert (=> b!3584892 (= e!2218115 e!2218117)))

(assert (=> b!3584892 (= c!621033 ((_ is Union!10315) (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))))))

(declare-fun b!3584896 () Bool)

(assert (=> b!3584896 (= e!2218114 (Cons!37669 (c!620758 (ite c!620803 (regTwo!21143 (regex!5556 anOtherTypeRule!33)) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) Nil!37669))))

(declare-fun b!3584897 () Bool)

(assert (=> b!3584897 (= e!2218116 Nil!37669)))

(assert (= (and d!1056999 c!621036) b!3584897))

(assert (= (and d!1056999 (not c!621036)) b!3584890))

(assert (= (and b!3584890 c!621035) b!3584896))

(assert (= (and b!3584890 (not c!621035)) b!3584895))

(assert (= (and b!3584895 c!621034) b!3584893))

(assert (= (and b!3584895 (not c!621034)) b!3584892))

(assert (= (and b!3584892 c!621033) b!3584891))

(assert (= (and b!3584892 (not c!621033)) b!3584894))

(assert (= (or b!3584891 b!3584894) bm!259567))

(assert (= (or b!3584891 b!3584894) bm!259566))

(assert (= (or b!3584891 b!3584894) bm!259564))

(assert (= (or b!3584893 bm!259567) bm!259565))

(declare-fun m!4078209 () Bool)

(assert (=> bm!259564 m!4078209))

(declare-fun m!4078211 () Bool)

(assert (=> bm!259565 m!4078211))

(declare-fun m!4078213 () Bool)

(assert (=> bm!259566 m!4078213))

(assert (=> bm!259466 d!1056999))

(declare-fun b!3584898 () Bool)

(declare-fun e!2218120 () Bool)

(declare-fun e!2218119 () Bool)

(assert (=> b!3584898 (= e!2218120 e!2218119)))

(declare-fun res!1446640 () Bool)

(assert (=> b!3584898 (=> (not res!1446640) (not e!2218119))))

(assert (=> b!3584898 (= res!1446640 (not ((_ is Nil!37669) (++!9368 lt!1229110 suffix!1395))))))

(declare-fun b!3584900 () Bool)

(assert (=> b!3584900 (= e!2218119 (isPrefix!2919 (tail!5553 lt!1229110) (tail!5553 (++!9368 lt!1229110 suffix!1395))))))

(declare-fun d!1057001 () Bool)

(declare-fun e!2218118 () Bool)

(assert (=> d!1057001 e!2218118))

(declare-fun res!1446643 () Bool)

(assert (=> d!1057001 (=> res!1446643 e!2218118)))

(declare-fun lt!1229580 () Bool)

(assert (=> d!1057001 (= res!1446643 (not lt!1229580))))

(assert (=> d!1057001 (= lt!1229580 e!2218120)))

(declare-fun res!1446641 () Bool)

(assert (=> d!1057001 (=> res!1446641 e!2218120)))

(assert (=> d!1057001 (= res!1446641 ((_ is Nil!37669) lt!1229110))))

(assert (=> d!1057001 (= (isPrefix!2919 lt!1229110 (++!9368 lt!1229110 suffix!1395)) lt!1229580)))

(declare-fun b!3584901 () Bool)

(assert (=> b!3584901 (= e!2218118 (>= (size!28702 (++!9368 lt!1229110 suffix!1395)) (size!28702 lt!1229110)))))

(declare-fun b!3584899 () Bool)

(declare-fun res!1446642 () Bool)

(assert (=> b!3584899 (=> (not res!1446642) (not e!2218119))))

(assert (=> b!3584899 (= res!1446642 (= (head!7473 lt!1229110) (head!7473 (++!9368 lt!1229110 suffix!1395))))))

(assert (= (and d!1057001 (not res!1446641)) b!3584898))

(assert (= (and b!3584898 res!1446640) b!3584899))

(assert (= (and b!3584899 res!1446642) b!3584900))

(assert (= (and d!1057001 (not res!1446643)) b!3584901))

(assert (=> b!3584900 m!4076863))

(assert (=> b!3584900 m!4076751))

(declare-fun m!4078215 () Bool)

(assert (=> b!3584900 m!4078215))

(assert (=> b!3584900 m!4076863))

(assert (=> b!3584900 m!4078215))

(declare-fun m!4078217 () Bool)

(assert (=> b!3584900 m!4078217))

(assert (=> b!3584901 m!4076751))

(declare-fun m!4078219 () Bool)

(assert (=> b!3584901 m!4078219))

(assert (=> b!3584901 m!4077073))

(assert (=> b!3584899 m!4076859))

(assert (=> b!3584899 m!4076751))

(declare-fun m!4078221 () Bool)

(assert (=> b!3584899 m!4078221))

(assert (=> d!1056619 d!1057001))

(assert (=> d!1056619 d!1056617))

(declare-fun d!1057003 () Bool)

(assert (=> d!1057003 (isPrefix!2919 lt!1229110 (++!9368 lt!1229110 suffix!1395))))

(assert (=> d!1057003 true))

(declare-fun _$46!1443 () Unit!53667)

(assert (=> d!1057003 (= (choose!20853 lt!1229110 suffix!1395) _$46!1443)))

(declare-fun bs!570001 () Bool)

(assert (= bs!570001 d!1057003))

(assert (=> bs!570001 m!4076751))

(assert (=> bs!570001 m!4076751))

(assert (=> bs!570001 m!4077095))

(assert (=> d!1056619 d!1057003))

(declare-fun bs!570002 () Bool)

(declare-fun d!1057005 () Bool)

(assert (= bs!570002 (and d!1057005 d!1056961)))

(declare-fun lambda!123783 () Int)

(assert (=> bs!570002 (= (and (= (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toChars!7691 (transformation!5556 anOtherTypeRule!33))) (= (toValue!7832 (transformation!5556 (h!43091 rules!3307))) (toValue!7832 (transformation!5556 anOtherTypeRule!33)))) (= lambda!123783 lambda!123781))))

(declare-fun bs!570003 () Bool)

(assert (= bs!570003 (and d!1057005 d!1056963)))

(assert (=> bs!570003 (= (and (= (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toChars!7691 (transformation!5556 rule!403))) (= (toValue!7832 (transformation!5556 (h!43091 rules!3307))) (toValue!7832 (transformation!5556 rule!403)))) (= lambda!123783 lambda!123782))))

(assert (=> d!1057005 true))

(assert (=> d!1057005 (< (dynLambda!16199 order!20447 (toChars!7691 (transformation!5556 (h!43091 rules!3307)))) (dynLambda!16200 order!20449 lambda!123783))))

(assert (=> d!1057005 true))

(assert (=> d!1057005 (< (dynLambda!16196 order!20443 (toValue!7832 (transformation!5556 (h!43091 rules!3307)))) (dynLambda!16200 order!20449 lambda!123783))))

(assert (=> d!1057005 (= (semiInverseModEq!2353 (toChars!7691 (transformation!5556 (h!43091 rules!3307))) (toValue!7832 (transformation!5556 (h!43091 rules!3307)))) (Forall!1363 lambda!123783))))

(declare-fun bs!570004 () Bool)

(assert (= bs!570004 d!1057005))

(declare-fun m!4078223 () Bool)

(assert (=> bs!570004 m!4078223))

(assert (=> d!1056641 d!1057005))

(declare-fun d!1057007 () Bool)

(declare-fun lt!1229581 () Bool)

(assert (=> d!1057007 (= lt!1229581 (isEmpty!22190 (list!13841 (_1!21913 lt!1229201))))))

(assert (=> d!1057007 (= lt!1229581 (isEmpty!22191 (c!620760 (_1!21913 lt!1229201))))))

(assert (=> d!1057007 (= (isEmpty!22185 (_1!21913 lt!1229201)) lt!1229581)))

(declare-fun bs!570005 () Bool)

(assert (= bs!570005 d!1057007))

(assert (=> bs!570005 m!4077103))

(assert (=> bs!570005 m!4077103))

(declare-fun m!4078225 () Bool)

(assert (=> bs!570005 m!4078225))

(declare-fun m!4078227 () Bool)

(assert (=> bs!570005 m!4078227))

(assert (=> b!3584028 d!1057007))

(declare-fun d!1057009 () Bool)

(declare-fun c!621039 () Bool)

(assert (=> d!1057009 (= c!621039 ((_ is Node!11455) (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))))))

(declare-fun e!2218125 () Bool)

(assert (=> d!1057009 (= (inv!50991 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))) e!2218125)))

(declare-fun b!3584908 () Bool)

(declare-fun inv!50995 (Conc!11455) Bool)

(assert (=> b!3584908 (= e!2218125 (inv!50995 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))))))

(declare-fun b!3584909 () Bool)

(declare-fun e!2218126 () Bool)

(assert (=> b!3584909 (= e!2218125 e!2218126)))

(declare-fun res!1446646 () Bool)

(assert (=> b!3584909 (= res!1446646 (not ((_ is Leaf!17844) (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))))))))

(assert (=> b!3584909 (=> res!1446646 e!2218126)))

(declare-fun b!3584910 () Bool)

(declare-fun inv!50996 (Conc!11455) Bool)

(assert (=> b!3584910 (= e!2218126 (inv!50996 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))))))

(assert (= (and d!1057009 c!621039) b!3584908))

(assert (= (and d!1057009 (not c!621039)) b!3584909))

(assert (= (and b!3584909 (not res!1446646)) b!3584910))

(declare-fun m!4078229 () Bool)

(assert (=> b!3584908 m!4078229))

(declare-fun m!4078231 () Bool)

(assert (=> b!3584910 m!4078231))

(assert (=> b!3583818 d!1057009))

(declare-fun d!1057011 () Bool)

(declare-fun res!1446647 () Bool)

(declare-fun e!2218127 () Bool)

(assert (=> d!1057011 (=> res!1446647 e!2218127)))

(assert (=> d!1057011 (= res!1446647 (not ((_ is Cons!37671) (t!290424 rules!3307))))))

(assert (=> d!1057011 (= (sepAndNonSepRulesDisjointChars!1726 rules!3307 (t!290424 rules!3307)) e!2218127)))

(declare-fun b!3584911 () Bool)

(declare-fun e!2218128 () Bool)

(assert (=> b!3584911 (= e!2218127 e!2218128)))

(declare-fun res!1446648 () Bool)

(assert (=> b!3584911 (=> (not res!1446648) (not e!2218128))))

(assert (=> b!3584911 (= res!1446648 (ruleDisjointCharsFromAllFromOtherType!779 (h!43091 (t!290424 rules!3307)) rules!3307))))

(declare-fun b!3584912 () Bool)

(assert (=> b!3584912 (= e!2218128 (sepAndNonSepRulesDisjointChars!1726 rules!3307 (t!290424 (t!290424 rules!3307))))))

(assert (= (and d!1057011 (not res!1446647)) b!3584911))

(assert (= (and b!3584911 res!1446648) b!3584912))

(declare-fun m!4078233 () Bool)

(assert (=> b!3584911 m!4078233))

(declare-fun m!4078235 () Bool)

(assert (=> b!3584912 m!4078235))

(assert (=> b!3584081 d!1057011))

(declare-fun d!1057013 () Bool)

(declare-fun lt!1229582 () Bool)

(assert (=> d!1057013 (= lt!1229582 (select (content!5349 rules!3307) (rule!8268 (_1!21912 (get!12134 lt!1229206)))))))

(declare-fun e!2218129 () Bool)

(assert (=> d!1057013 (= lt!1229582 e!2218129)))

(declare-fun res!1446649 () Bool)

(assert (=> d!1057013 (=> (not res!1446649) (not e!2218129))))

(assert (=> d!1057013 (= res!1446649 ((_ is Cons!37671) rules!3307))))

(assert (=> d!1057013 (= (contains!7172 rules!3307 (rule!8268 (_1!21912 (get!12134 lt!1229206)))) lt!1229582)))

(declare-fun b!3584913 () Bool)

(declare-fun e!2218130 () Bool)

(assert (=> b!3584913 (= e!2218129 e!2218130)))

(declare-fun res!1446650 () Bool)

(assert (=> b!3584913 (=> res!1446650 e!2218130)))

(assert (=> b!3584913 (= res!1446650 (= (h!43091 rules!3307) (rule!8268 (_1!21912 (get!12134 lt!1229206)))))))

(declare-fun b!3584914 () Bool)

(assert (=> b!3584914 (= e!2218130 (contains!7172 (t!290424 rules!3307) (rule!8268 (_1!21912 (get!12134 lt!1229206)))))))

(assert (= (and d!1057013 res!1446649) b!3584913))

(assert (= (and b!3584913 (not res!1446650)) b!3584914))

(assert (=> d!1057013 m!4077171))

(declare-fun m!4078237 () Bool)

(assert (=> d!1057013 m!4078237))

(declare-fun m!4078239 () Bool)

(assert (=> b!3584914 m!4078239))

(assert (=> b!3584049 d!1057013))

(assert (=> b!3584049 d!1056823))

(declare-fun d!1057015 () Bool)

(declare-fun res!1446655 () Bool)

(declare-fun e!2218135 () Bool)

(assert (=> d!1057015 (=> res!1446655 e!2218135)))

(assert (=> d!1057015 (= res!1446655 ((_ is Nil!37671) rules!3307))))

(assert (=> d!1057015 (= (noDuplicateTag!2108 thiss!23823 rules!3307 Nil!37674) e!2218135)))

(declare-fun b!3584919 () Bool)

(declare-fun e!2218136 () Bool)

(assert (=> b!3584919 (= e!2218135 e!2218136)))

(declare-fun res!1446656 () Bool)

(assert (=> b!3584919 (=> (not res!1446656) (not e!2218136))))

(declare-fun contains!7174 (List!37798 String!42264) Bool)

(assert (=> b!3584919 (= res!1446656 (not (contains!7174 Nil!37674 (tag!6222 (h!43091 rules!3307)))))))

(declare-fun b!3584920 () Bool)

(assert (=> b!3584920 (= e!2218136 (noDuplicateTag!2108 thiss!23823 (t!290424 rules!3307) (Cons!37674 (tag!6222 (h!43091 rules!3307)) Nil!37674)))))

(assert (= (and d!1057015 (not res!1446655)) b!3584919))

(assert (= (and b!3584919 res!1446656) b!3584920))

(declare-fun m!4078241 () Bool)

(assert (=> b!3584919 m!4078241))

(declare-fun m!4078243 () Bool)

(assert (=> b!3584920 m!4078243))

(assert (=> b!3584084 d!1057015))

(declare-fun bs!570006 () Bool)

(declare-fun d!1057017 () Bool)

(assert (= bs!570006 (and d!1057017 d!1056961)))

(declare-fun lambda!123784 () Int)

(assert (=> bs!570006 (= (and (= (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toChars!7691 (transformation!5556 anOtherTypeRule!33))) (= (toValue!7832 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 anOtherTypeRule!33)))) (= lambda!123784 lambda!123781))))

(declare-fun bs!570007 () Bool)

(assert (= bs!570007 (and d!1057017 d!1056963)))

(assert (=> bs!570007 (= (and (= (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toChars!7691 (transformation!5556 rule!403))) (= (toValue!7832 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 rule!403)))) (= lambda!123784 lambda!123782))))

(declare-fun bs!570008 () Bool)

(assert (= bs!570008 (and d!1057017 d!1057005)))

(assert (=> bs!570008 (= (and (= (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toChars!7691 (transformation!5556 (h!43091 rules!3307)))) (= (toValue!7832 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 (h!43091 rules!3307))))) (= lambda!123784 lambda!123783))))

(assert (=> d!1057017 true))

(assert (=> d!1057017 (< (dynLambda!16199 order!20447 (toChars!7691 (transformation!5556 (rule!8268 token!511)))) (dynLambda!16200 order!20449 lambda!123784))))

(assert (=> d!1057017 true))

(assert (=> d!1057017 (< (dynLambda!16196 order!20443 (toValue!7832 (transformation!5556 (rule!8268 token!511)))) (dynLambda!16200 order!20449 lambda!123784))))

(assert (=> d!1057017 (= (semiInverseModEq!2353 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (toValue!7832 (transformation!5556 (rule!8268 token!511)))) (Forall!1363 lambda!123784))))

(declare-fun bs!570009 () Bool)

(assert (= bs!570009 d!1057017))

(declare-fun m!4078245 () Bool)

(assert (=> bs!570009 m!4078245))

(assert (=> d!1056653 d!1057017))

(declare-fun d!1057019 () Bool)

(declare-fun lt!1229583 () Bool)

(assert (=> d!1057019 (= lt!1229583 (select (content!5349 rules!3307) (rule!8268 (_1!21912 (get!12134 lt!1229186)))))))

(declare-fun e!2218137 () Bool)

(assert (=> d!1057019 (= lt!1229583 e!2218137)))

(declare-fun res!1446657 () Bool)

(assert (=> d!1057019 (=> (not res!1446657) (not e!2218137))))

(assert (=> d!1057019 (= res!1446657 ((_ is Cons!37671) rules!3307))))

(assert (=> d!1057019 (= (contains!7172 rules!3307 (rule!8268 (_1!21912 (get!12134 lt!1229186)))) lt!1229583)))

(declare-fun b!3584921 () Bool)

(declare-fun e!2218138 () Bool)

(assert (=> b!3584921 (= e!2218137 e!2218138)))

(declare-fun res!1446658 () Bool)

(assert (=> b!3584921 (=> res!1446658 e!2218138)))

(assert (=> b!3584921 (= res!1446658 (= (h!43091 rules!3307) (rule!8268 (_1!21912 (get!12134 lt!1229186)))))))

(declare-fun b!3584922 () Bool)

(assert (=> b!3584922 (= e!2218138 (contains!7172 (t!290424 rules!3307) (rule!8268 (_1!21912 (get!12134 lt!1229186)))))))

(assert (= (and d!1057019 res!1446657) b!3584921))

(assert (= (and b!3584921 (not res!1446658)) b!3584922))

(assert (=> d!1057019 m!4077171))

(declare-fun m!4078247 () Bool)

(assert (=> d!1057019 m!4078247))

(declare-fun m!4078249 () Bool)

(assert (=> b!3584922 m!4078249))

(assert (=> b!3584001 d!1057019))

(assert (=> b!3584001 d!1056899))

(declare-fun b!3584923 () Bool)

(declare-fun res!1446663 () Bool)

(declare-fun e!2218141 () Bool)

(assert (=> b!3584923 (=> (not res!1446663) (not e!2218141))))

(declare-fun lt!1229585 () Option!7744)

(assert (=> b!3584923 (= res!1446663 (matchR!4884 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229585)))) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229585))))))))

(declare-fun b!3584924 () Bool)

(declare-fun res!1446660 () Bool)

(assert (=> b!3584924 (=> (not res!1446660) (not e!2218141))))

(assert (=> b!3584924 (= res!1446660 (= (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229585)))) (originalCharacters!6270 (_1!21912 (get!12134 lt!1229585)))))))

(declare-fun b!3584925 () Bool)

(declare-fun e!2218139 () Bool)

(assert (=> b!3584925 (= e!2218139 e!2218141)))

(declare-fun res!1446662 () Bool)

(assert (=> b!3584925 (=> (not res!1446662) (not e!2218141))))

(assert (=> b!3584925 (= res!1446662 (isDefined!5978 lt!1229585))))

(declare-fun b!3584926 () Bool)

(declare-fun res!1446661 () Bool)

(assert (=> b!3584926 (=> (not res!1446661) (not e!2218141))))

(assert (=> b!3584926 (= res!1446661 (= (++!9368 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229585)))) (_2!21912 (get!12134 lt!1229585))) lt!1229107))))

(declare-fun b!3584927 () Bool)

(declare-fun e!2218140 () Option!7744)

(declare-fun call!259573 () Option!7744)

(assert (=> b!3584927 (= e!2218140 call!259573)))

(declare-fun bm!259568 () Bool)

(assert (=> bm!259568 (= call!259573 (maxPrefixOneRule!1831 thiss!23823 (h!43091 (t!290424 rules!3307)) lt!1229107))))

(declare-fun b!3584928 () Bool)

(assert (=> b!3584928 (= e!2218141 (contains!7172 (t!290424 rules!3307) (rule!8268 (_1!21912 (get!12134 lt!1229585)))))))

(declare-fun b!3584929 () Bool)

(declare-fun res!1446665 () Bool)

(assert (=> b!3584929 (=> (not res!1446665) (not e!2218141))))

(assert (=> b!3584929 (= res!1446665 (= (value!178806 (_1!21912 (get!12134 lt!1229585))) (apply!9068 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229585)))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229585)))))))))

(declare-fun d!1057021 () Bool)

(assert (=> d!1057021 e!2218139))

(declare-fun res!1446664 () Bool)

(assert (=> d!1057021 (=> res!1446664 e!2218139)))

(assert (=> d!1057021 (= res!1446664 (isEmpty!22189 lt!1229585))))

(assert (=> d!1057021 (= lt!1229585 e!2218140)))

(declare-fun c!621040 () Bool)

(assert (=> d!1057021 (= c!621040 (and ((_ is Cons!37671) (t!290424 rules!3307)) ((_ is Nil!37671) (t!290424 (t!290424 rules!3307)))))))

(declare-fun lt!1229584 () Unit!53667)

(declare-fun lt!1229587 () Unit!53667)

(assert (=> d!1057021 (= lt!1229584 lt!1229587)))

(assert (=> d!1057021 (isPrefix!2919 lt!1229107 lt!1229107)))

(assert (=> d!1057021 (= lt!1229587 (lemmaIsPrefixRefl!1872 lt!1229107 lt!1229107))))

(assert (=> d!1057021 (rulesValidInductive!1935 thiss!23823 (t!290424 rules!3307))))

(assert (=> d!1057021 (= (maxPrefix!2679 thiss!23823 (t!290424 rules!3307) lt!1229107) lt!1229585)))

(declare-fun b!3584930 () Bool)

(declare-fun lt!1229586 () Option!7744)

(declare-fun lt!1229588 () Option!7744)

(assert (=> b!3584930 (= e!2218140 (ite (and ((_ is None!7743) lt!1229586) ((_ is None!7743) lt!1229588)) None!7743 (ite ((_ is None!7743) lt!1229588) lt!1229586 (ite ((_ is None!7743) lt!1229586) lt!1229588 (ite (>= (size!28698 (_1!21912 (v!37397 lt!1229586))) (size!28698 (_1!21912 (v!37397 lt!1229588)))) lt!1229586 lt!1229588)))))))

(assert (=> b!3584930 (= lt!1229586 call!259573)))

(assert (=> b!3584930 (= lt!1229588 (maxPrefix!2679 thiss!23823 (t!290424 (t!290424 rules!3307)) lt!1229107))))

(declare-fun b!3584931 () Bool)

(declare-fun res!1446659 () Bool)

(assert (=> b!3584931 (=> (not res!1446659) (not e!2218141))))

(assert (=> b!3584931 (= res!1446659 (< (size!28702 (_2!21912 (get!12134 lt!1229585))) (size!28702 lt!1229107)))))

(assert (= (and d!1057021 c!621040) b!3584927))

(assert (= (and d!1057021 (not c!621040)) b!3584930))

(assert (= (or b!3584927 b!3584930) bm!259568))

(assert (= (and d!1057021 (not res!1446664)) b!3584925))

(assert (= (and b!3584925 res!1446662) b!3584924))

(assert (= (and b!3584924 res!1446660) b!3584931))

(assert (= (and b!3584931 res!1446659) b!3584926))

(assert (= (and b!3584926 res!1446661) b!3584929))

(assert (= (and b!3584929 res!1446665) b!3584923))

(assert (= (and b!3584923 res!1446663) b!3584928))

(declare-fun m!4078251 () Bool)

(assert (=> bm!259568 m!4078251))

(declare-fun m!4078253 () Bool)

(assert (=> b!3584925 m!4078253))

(declare-fun m!4078255 () Bool)

(assert (=> d!1057021 m!4078255))

(assert (=> d!1057021 m!4077131))

(assert (=> d!1057021 m!4077133))

(assert (=> d!1057021 m!4077519))

(declare-fun m!4078257 () Bool)

(assert (=> b!3584926 m!4078257))

(declare-fun m!4078259 () Bool)

(assert (=> b!3584926 m!4078259))

(assert (=> b!3584926 m!4078259))

(declare-fun m!4078261 () Bool)

(assert (=> b!3584926 m!4078261))

(assert (=> b!3584926 m!4078261))

(declare-fun m!4078263 () Bool)

(assert (=> b!3584926 m!4078263))

(assert (=> b!3584923 m!4078257))

(assert (=> b!3584923 m!4078259))

(assert (=> b!3584923 m!4078259))

(assert (=> b!3584923 m!4078261))

(assert (=> b!3584923 m!4078261))

(declare-fun m!4078265 () Bool)

(assert (=> b!3584923 m!4078265))

(assert (=> b!3584924 m!4078257))

(assert (=> b!3584924 m!4078259))

(assert (=> b!3584924 m!4078259))

(assert (=> b!3584924 m!4078261))

(assert (=> b!3584929 m!4078257))

(declare-fun m!4078267 () Bool)

(assert (=> b!3584929 m!4078267))

(assert (=> b!3584929 m!4078267))

(declare-fun m!4078269 () Bool)

(assert (=> b!3584929 m!4078269))

(assert (=> b!3584928 m!4078257))

(declare-fun m!4078271 () Bool)

(assert (=> b!3584928 m!4078271))

(assert (=> b!3584931 m!4078257))

(declare-fun m!4078273 () Bool)

(assert (=> b!3584931 m!4078273))

(assert (=> b!3584931 m!4077121))

(declare-fun m!4078275 () Bool)

(assert (=> b!3584930 m!4078275))

(assert (=> b!3584051 d!1057021))

(declare-fun bs!570010 () Bool)

(declare-fun d!1057023 () Bool)

(assert (= bs!570010 (and d!1057023 d!1056777)))

(declare-fun lambda!123785 () Int)

(assert (=> bs!570010 (= (= (toValue!7832 (transformation!5556 anOtherTypeRule!33)) (toValue!7832 (transformation!5556 (h!43091 rules!3307)))) (= lambda!123785 lambda!123770))))

(declare-fun bs!570011 () Bool)

(assert (= bs!570011 (and d!1057023 d!1056949)))

(assert (=> bs!570011 (= (= (toValue!7832 (transformation!5556 anOtherTypeRule!33)) (toValue!7832 (transformation!5556 (rule!8268 token!511)))) (= lambda!123785 lambda!123778))))

(assert (=> d!1057023 true))

(assert (=> d!1057023 (< (dynLambda!16196 order!20443 (toValue!7832 (transformation!5556 anOtherTypeRule!33))) (dynLambda!16197 order!20445 lambda!123785))))

(assert (=> d!1057023 (= (equivClasses!2252 (toChars!7691 (transformation!5556 anOtherTypeRule!33)) (toValue!7832 (transformation!5556 anOtherTypeRule!33))) (Forall2!960 lambda!123785))))

(declare-fun bs!570012 () Bool)

(assert (= bs!570012 d!1057023))

(declare-fun m!4078277 () Bool)

(assert (=> bs!570012 m!4078277))

(assert (=> b!3583831 d!1057023))

(declare-fun d!1057025 () Bool)

(declare-fun c!621043 () Bool)

(assert (=> d!1057025 (= c!621043 ((_ is Nil!37671) rules!3307))))

(declare-fun e!2218144 () (InoxSet Rule!10912))

(assert (=> d!1057025 (= (content!5349 rules!3307) e!2218144)))

(declare-fun b!3584936 () Bool)

(assert (=> b!3584936 (= e!2218144 ((as const (Array Rule!10912 Bool)) false))))

(declare-fun b!3584937 () Bool)

(assert (=> b!3584937 (= e!2218144 ((_ map or) (store ((as const (Array Rule!10912 Bool)) false) (h!43091 rules!3307) true) (content!5349 (t!290424 rules!3307))))))

(assert (= (and d!1057025 c!621043) b!3584936))

(assert (= (and d!1057025 (not c!621043)) b!3584937))

(declare-fun m!4078279 () Bool)

(assert (=> b!3584937 m!4078279))

(assert (=> b!3584937 m!4078091))

(assert (=> d!1056637 d!1057025))

(declare-fun b!3584938 () Bool)

(declare-fun res!1446670 () Bool)

(declare-fun e!2218147 () Bool)

(assert (=> b!3584938 (=> (not res!1446670) (not e!2218147))))

(declare-fun lt!1229590 () Option!7744)

(assert (=> b!3584938 (= res!1446670 (matchR!4884 (regex!5556 (rule!8268 (_1!21912 (get!12134 lt!1229590)))) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229590))))))))

(declare-fun b!3584939 () Bool)

(declare-fun res!1446667 () Bool)

(assert (=> b!3584939 (=> (not res!1446667) (not e!2218147))))

(assert (=> b!3584939 (= res!1446667 (= (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229590)))) (originalCharacters!6270 (_1!21912 (get!12134 lt!1229590)))))))

(declare-fun b!3584940 () Bool)

(declare-fun e!2218145 () Bool)

(assert (=> b!3584940 (= e!2218145 e!2218147)))

(declare-fun res!1446669 () Bool)

(assert (=> b!3584940 (=> (not res!1446669) (not e!2218147))))

(assert (=> b!3584940 (= res!1446669 (isDefined!5978 lt!1229590))))

(declare-fun b!3584941 () Bool)

(declare-fun res!1446668 () Bool)

(assert (=> b!3584941 (=> (not res!1446668) (not e!2218147))))

(assert (=> b!3584941 (= res!1446668 (= (++!9368 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229590)))) (_2!21912 (get!12134 lt!1229590))) lt!1229110))))

(declare-fun b!3584942 () Bool)

(declare-fun e!2218146 () Option!7744)

(declare-fun call!259574 () Option!7744)

(assert (=> b!3584942 (= e!2218146 call!259574)))

(declare-fun bm!259569 () Bool)

(assert (=> bm!259569 (= call!259574 (maxPrefixOneRule!1831 thiss!23823 (h!43091 (t!290424 rules!3307)) lt!1229110))))

(declare-fun b!3584943 () Bool)

(assert (=> b!3584943 (= e!2218147 (contains!7172 (t!290424 rules!3307) (rule!8268 (_1!21912 (get!12134 lt!1229590)))))))

(declare-fun b!3584944 () Bool)

(declare-fun res!1446672 () Bool)

(assert (=> b!3584944 (=> (not res!1446672) (not e!2218147))))

(assert (=> b!3584944 (= res!1446672 (= (value!178806 (_1!21912 (get!12134 lt!1229590))) (apply!9068 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229590)))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229590)))))))))

(declare-fun d!1057027 () Bool)

(assert (=> d!1057027 e!2218145))

(declare-fun res!1446671 () Bool)

(assert (=> d!1057027 (=> res!1446671 e!2218145)))

(assert (=> d!1057027 (= res!1446671 (isEmpty!22189 lt!1229590))))

(assert (=> d!1057027 (= lt!1229590 e!2218146)))

(declare-fun c!621044 () Bool)

(assert (=> d!1057027 (= c!621044 (and ((_ is Cons!37671) (t!290424 rules!3307)) ((_ is Nil!37671) (t!290424 (t!290424 rules!3307)))))))

(declare-fun lt!1229589 () Unit!53667)

(declare-fun lt!1229592 () Unit!53667)

(assert (=> d!1057027 (= lt!1229589 lt!1229592)))

(assert (=> d!1057027 (isPrefix!2919 lt!1229110 lt!1229110)))

(assert (=> d!1057027 (= lt!1229592 (lemmaIsPrefixRefl!1872 lt!1229110 lt!1229110))))

(assert (=> d!1057027 (rulesValidInductive!1935 thiss!23823 (t!290424 rules!3307))))

(assert (=> d!1057027 (= (maxPrefix!2679 thiss!23823 (t!290424 rules!3307) lt!1229110) lt!1229590)))

(declare-fun b!3584945 () Bool)

(declare-fun lt!1229591 () Option!7744)

(declare-fun lt!1229593 () Option!7744)

(assert (=> b!3584945 (= e!2218146 (ite (and ((_ is None!7743) lt!1229591) ((_ is None!7743) lt!1229593)) None!7743 (ite ((_ is None!7743) lt!1229593) lt!1229591 (ite ((_ is None!7743) lt!1229591) lt!1229593 (ite (>= (size!28698 (_1!21912 (v!37397 lt!1229591))) (size!28698 (_1!21912 (v!37397 lt!1229593)))) lt!1229591 lt!1229593)))))))

(assert (=> b!3584945 (= lt!1229591 call!259574)))

(assert (=> b!3584945 (= lt!1229593 (maxPrefix!2679 thiss!23823 (t!290424 (t!290424 rules!3307)) lt!1229110))))

(declare-fun b!3584946 () Bool)

(declare-fun res!1446666 () Bool)

(assert (=> b!3584946 (=> (not res!1446666) (not e!2218147))))

(assert (=> b!3584946 (= res!1446666 (< (size!28702 (_2!21912 (get!12134 lt!1229590))) (size!28702 lt!1229110)))))

(assert (= (and d!1057027 c!621044) b!3584942))

(assert (= (and d!1057027 (not c!621044)) b!3584945))

(assert (= (or b!3584942 b!3584945) bm!259569))

(assert (= (and d!1057027 (not res!1446671)) b!3584940))

(assert (= (and b!3584940 res!1446669) b!3584939))

(assert (= (and b!3584939 res!1446667) b!3584946))

(assert (= (and b!3584946 res!1446666) b!3584941))

(assert (= (and b!3584941 res!1446668) b!3584944))

(assert (= (and b!3584944 res!1446672) b!3584938))

(assert (= (and b!3584938 res!1446670) b!3584943))

(declare-fun m!4078281 () Bool)

(assert (=> bm!259569 m!4078281))

(declare-fun m!4078283 () Bool)

(assert (=> b!3584940 m!4078283))

(declare-fun m!4078285 () Bool)

(assert (=> d!1057027 m!4078285))

(assert (=> d!1057027 m!4077049))

(assert (=> d!1057027 m!4077051))

(assert (=> d!1057027 m!4077519))

(declare-fun m!4078287 () Bool)

(assert (=> b!3584941 m!4078287))

(declare-fun m!4078289 () Bool)

(assert (=> b!3584941 m!4078289))

(assert (=> b!3584941 m!4078289))

(declare-fun m!4078291 () Bool)

(assert (=> b!3584941 m!4078291))

(assert (=> b!3584941 m!4078291))

(declare-fun m!4078293 () Bool)

(assert (=> b!3584941 m!4078293))

(assert (=> b!3584938 m!4078287))

(assert (=> b!3584938 m!4078289))

(assert (=> b!3584938 m!4078289))

(assert (=> b!3584938 m!4078291))

(assert (=> b!3584938 m!4078291))

(declare-fun m!4078295 () Bool)

(assert (=> b!3584938 m!4078295))

(assert (=> b!3584939 m!4078287))

(assert (=> b!3584939 m!4078289))

(assert (=> b!3584939 m!4078289))

(assert (=> b!3584939 m!4078291))

(assert (=> b!3584944 m!4078287))

(declare-fun m!4078297 () Bool)

(assert (=> b!3584944 m!4078297))

(assert (=> b!3584944 m!4078297))

(declare-fun m!4078299 () Bool)

(assert (=> b!3584944 m!4078299))

(assert (=> b!3584943 m!4078287))

(declare-fun m!4078301 () Bool)

(assert (=> b!3584943 m!4078301))

(assert (=> b!3584946 m!4078287))

(declare-fun m!4078303 () Bool)

(assert (=> b!3584946 m!4078303))

(assert (=> b!3584946 m!4077073))

(declare-fun m!4078305 () Bool)

(assert (=> b!3584945 m!4078305))

(assert (=> b!3584003 d!1057027))

(declare-fun d!1057029 () Bool)

(declare-fun isBalanced!3497 (Conc!11455) Bool)

(assert (=> d!1057029 (= (inv!50992 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))) (isBalanced!3497 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))))))

(declare-fun bs!570013 () Bool)

(assert (= bs!570013 d!1057029))

(declare-fun m!4078307 () Bool)

(assert (=> bs!570013 m!4078307))

(assert (=> tb!204409 d!1057029))

(declare-fun d!1057031 () Bool)

(declare-fun lt!1229594 () Int)

(assert (=> d!1057031 (>= lt!1229594 0)))

(declare-fun e!2218148 () Int)

(assert (=> d!1057031 (= lt!1229594 e!2218148)))

(declare-fun c!621045 () Bool)

(assert (=> d!1057031 (= c!621045 ((_ is Nil!37669) lt!1229195))))

(assert (=> d!1057031 (= (size!28702 lt!1229195) lt!1229594)))

(declare-fun b!3584947 () Bool)

(assert (=> b!3584947 (= e!2218148 0)))

(declare-fun b!3584948 () Bool)

(assert (=> b!3584948 (= e!2218148 (+ 1 (size!28702 (t!290422 lt!1229195))))))

(assert (= (and d!1057031 c!621045) b!3584947))

(assert (= (and d!1057031 (not c!621045)) b!3584948))

(declare-fun m!4078309 () Bool)

(assert (=> b!3584948 m!4078309))

(assert (=> b!3584015 d!1057031))

(assert (=> b!3584015 d!1056919))

(declare-fun d!1057033 () Bool)

(declare-fun lt!1229595 () Int)

(assert (=> d!1057033 (>= lt!1229595 0)))

(declare-fun e!2218149 () Int)

(assert (=> d!1057033 (= lt!1229595 e!2218149)))

(declare-fun c!621046 () Bool)

(assert (=> d!1057033 (= c!621046 ((_ is Nil!37669) suffix!1395))))

(assert (=> d!1057033 (= (size!28702 suffix!1395) lt!1229595)))

(declare-fun b!3584949 () Bool)

(assert (=> b!3584949 (= e!2218149 0)))

(declare-fun b!3584950 () Bool)

(assert (=> b!3584950 (= e!2218149 (+ 1 (size!28702 (t!290422 suffix!1395))))))

(assert (= (and d!1057033 c!621046) b!3584949))

(assert (= (and d!1057033 (not c!621046)) b!3584950))

(declare-fun m!4078311 () Bool)

(assert (=> b!3584950 m!4078311))

(assert (=> b!3584015 d!1057033))

(declare-fun bs!570014 () Bool)

(declare-fun d!1057035 () Bool)

(assert (= bs!570014 (and d!1057035 d!1056777)))

(declare-fun lambda!123786 () Int)

(assert (=> bs!570014 (= (= (toValue!7832 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 (h!43091 rules!3307)))) (= lambda!123786 lambda!123770))))

(declare-fun bs!570015 () Bool)

(assert (= bs!570015 (and d!1057035 d!1056949)))

(assert (=> bs!570015 (= (= (toValue!7832 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 (rule!8268 token!511)))) (= lambda!123786 lambda!123778))))

(declare-fun bs!570016 () Bool)

(assert (= bs!570016 (and d!1057035 d!1057023)))

(assert (=> bs!570016 (= (= (toValue!7832 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 anOtherTypeRule!33))) (= lambda!123786 lambda!123785))))

(assert (=> d!1057035 true))

(assert (=> d!1057035 (< (dynLambda!16196 order!20443 (toValue!7832 (transformation!5556 rule!403))) (dynLambda!16197 order!20445 lambda!123786))))

(assert (=> d!1057035 (= (equivClasses!2252 (toChars!7691 (transformation!5556 rule!403)) (toValue!7832 (transformation!5556 rule!403))) (Forall2!960 lambda!123786))))

(declare-fun bs!570017 () Bool)

(assert (= bs!570017 d!1057035))

(declare-fun m!4078313 () Bool)

(assert (=> bs!570017 m!4078313))

(assert (=> b!3584053 d!1057035))

(assert (=> d!1056649 d!1057025))

(declare-fun d!1057037 () Bool)

(declare-fun e!2218152 () Bool)

(assert (=> d!1057037 e!2218152))

(declare-fun res!1446675 () Bool)

(assert (=> d!1057037 (=> (not res!1446675) (not e!2218152))))

(declare-fun lt!1229598 () BalanceConc!22524)

(assert (=> d!1057037 (= res!1446675 (= (list!13837 lt!1229598) lt!1229110))))

(declare-fun fromList!791 (List!37793) Conc!11455)

(assert (=> d!1057037 (= lt!1229598 (BalanceConc!22525 (fromList!791 lt!1229110)))))

(assert (=> d!1057037 (= (fromListB!1897 lt!1229110) lt!1229598)))

(declare-fun b!3584953 () Bool)

(assert (=> b!3584953 (= e!2218152 (isBalanced!3497 (fromList!791 lt!1229110)))))

(assert (= (and d!1057037 res!1446675) b!3584953))

(declare-fun m!4078315 () Bool)

(assert (=> d!1057037 m!4078315))

(declare-fun m!4078317 () Bool)

(assert (=> d!1057037 m!4078317))

(assert (=> b!3584953 m!4078317))

(assert (=> b!3584953 m!4078317))

(declare-fun m!4078319 () Bool)

(assert (=> b!3584953 m!4078319))

(assert (=> d!1056615 d!1057037))

(declare-fun d!1057039 () Bool)

(assert (=> d!1057039 (= (list!13837 lt!1229192) (list!13840 (c!620759 lt!1229192)))))

(declare-fun bs!570018 () Bool)

(assert (= bs!570018 d!1057039))

(declare-fun m!4078321 () Bool)

(assert (=> bs!570018 m!4078321))

(assert (=> d!1056613 d!1057039))

(assert (=> b!3584045 d!1056931))

(assert (=> b!3584045 d!1056933))

(assert (=> b!3584045 d!1056823))

(assert (=> d!1056561 d!1056547))

(declare-fun d!1057041 () Bool)

(assert (=> d!1057041 (ruleValid!1821 thiss!23823 rule!403)))

(assert (=> d!1057041 true))

(declare-fun _$65!1278 () Unit!53667)

(assert (=> d!1057041 (= (choose!20852 thiss!23823 rule!403 rules!3307) _$65!1278)))

(declare-fun bs!570019 () Bool)

(assert (= bs!570019 d!1057041))

(assert (=> bs!570019 m!4076717))

(assert (=> d!1056561 d!1057041))

(assert (=> d!1056561 d!1056637))

(assert (=> b!3583997 d!1056937))

(assert (=> b!3583997 d!1056939))

(assert (=> b!3583997 d!1056899))

(declare-fun d!1057043 () Bool)

(assert (=> d!1057043 (= (list!13837 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))) (list!13840 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))))))

(declare-fun bs!570020 () Bool)

(assert (= bs!570020 d!1057043))

(declare-fun m!4078323 () Bool)

(assert (=> bs!570020 m!4078323))

(assert (=> b!3583812 d!1057043))

(declare-fun d!1057045 () Bool)

(assert (=> d!1057045 (= (isEmpty!22189 lt!1229105) (not ((_ is Some!7743) lt!1229105)))))

(assert (=> d!1056585 d!1057045))

(declare-fun b!3584955 () Bool)

(declare-fun e!2218153 () List!37793)

(assert (=> b!3584955 (= e!2218153 (Cons!37669 (h!43089 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))) (++!9368 (t!290422 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))) (_2!21912 (get!12134 lt!1229206)))))))

(declare-fun b!3584957 () Bool)

(declare-fun e!2218154 () Bool)

(declare-fun lt!1229599 () List!37793)

(assert (=> b!3584957 (= e!2218154 (or (not (= (_2!21912 (get!12134 lt!1229206)) Nil!37669)) (= lt!1229599 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206)))))))))

(declare-fun b!3584954 () Bool)

(assert (=> b!3584954 (= e!2218153 (_2!21912 (get!12134 lt!1229206)))))

(declare-fun d!1057047 () Bool)

(assert (=> d!1057047 e!2218154))

(declare-fun res!1446676 () Bool)

(assert (=> d!1057047 (=> (not res!1446676) (not e!2218154))))

(assert (=> d!1057047 (= res!1446676 (= (content!5348 lt!1229599) ((_ map or) (content!5348 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))) (content!5348 (_2!21912 (get!12134 lt!1229206))))))))

(assert (=> d!1057047 (= lt!1229599 e!2218153)))

(declare-fun c!621048 () Bool)

(assert (=> d!1057047 (= c!621048 ((_ is Nil!37669) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))))))

(assert (=> d!1057047 (= (++!9368 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206)))) (_2!21912 (get!12134 lt!1229206))) lt!1229599)))

(declare-fun b!3584956 () Bool)

(declare-fun res!1446677 () Bool)

(assert (=> b!3584956 (=> (not res!1446677) (not e!2218154))))

(assert (=> b!3584956 (= res!1446677 (= (size!28702 lt!1229599) (+ (size!28702 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229206))))) (size!28702 (_2!21912 (get!12134 lt!1229206))))))))

(assert (= (and d!1057047 c!621048) b!3584954))

(assert (= (and d!1057047 (not c!621048)) b!3584955))

(assert (= (and d!1057047 res!1446676) b!3584956))

(assert (= (and b!3584956 res!1446677) b!3584957))

(declare-fun m!4078325 () Bool)

(assert (=> b!3584955 m!4078325))

(declare-fun m!4078327 () Bool)

(assert (=> d!1057047 m!4078327))

(assert (=> d!1057047 m!4077139))

(declare-fun m!4078329 () Bool)

(assert (=> d!1057047 m!4078329))

(declare-fun m!4078331 () Bool)

(assert (=> d!1057047 m!4078331))

(declare-fun m!4078333 () Bool)

(assert (=> b!3584956 m!4078333))

(assert (=> b!3584956 m!4077139))

(declare-fun m!4078335 () Bool)

(assert (=> b!3584956 m!4078335))

(assert (=> b!3584956 m!4077151))

(assert (=> b!3584047 d!1057047))

(assert (=> b!3584047 d!1056931))

(assert (=> b!3584047 d!1056933))

(assert (=> b!3584047 d!1056823))

(declare-fun d!1057049 () Bool)

(assert (=> d!1057049 (= (isEmpty!22189 lt!1229206) (not ((_ is Some!7743) lt!1229206)))))

(assert (=> d!1056625 d!1057049))

(declare-fun b!3584958 () Bool)

(declare-fun e!2218157 () Bool)

(declare-fun e!2218156 () Bool)

(assert (=> b!3584958 (= e!2218157 e!2218156)))

(declare-fun res!1446678 () Bool)

(assert (=> b!3584958 (=> (not res!1446678) (not e!2218156))))

(assert (=> b!3584958 (= res!1446678 (not ((_ is Nil!37669) lt!1229107)))))

(declare-fun b!3584960 () Bool)

(assert (=> b!3584960 (= e!2218156 (isPrefix!2919 (tail!5553 lt!1229107) (tail!5553 lt!1229107)))))

(declare-fun d!1057051 () Bool)

(declare-fun e!2218155 () Bool)

(assert (=> d!1057051 e!2218155))

(declare-fun res!1446681 () Bool)

(assert (=> d!1057051 (=> res!1446681 e!2218155)))

(declare-fun lt!1229600 () Bool)

(assert (=> d!1057051 (= res!1446681 (not lt!1229600))))

(assert (=> d!1057051 (= lt!1229600 e!2218157)))

(declare-fun res!1446679 () Bool)

(assert (=> d!1057051 (=> res!1446679 e!2218157)))

(assert (=> d!1057051 (= res!1446679 ((_ is Nil!37669) lt!1229107))))

(assert (=> d!1057051 (= (isPrefix!2919 lt!1229107 lt!1229107) lt!1229600)))

(declare-fun b!3584961 () Bool)

(assert (=> b!3584961 (= e!2218155 (>= (size!28702 lt!1229107) (size!28702 lt!1229107)))))

(declare-fun b!3584959 () Bool)

(declare-fun res!1446680 () Bool)

(assert (=> b!3584959 (=> (not res!1446680) (not e!2218156))))

(assert (=> b!3584959 (= res!1446680 (= (head!7473 lt!1229107) (head!7473 lt!1229107)))))

(assert (= (and d!1057051 (not res!1446679)) b!3584958))

(assert (= (and b!3584958 res!1446678) b!3584959))

(assert (= (and b!3584959 res!1446680) b!3584960))

(assert (= (and d!1057051 (not res!1446681)) b!3584961))

(assert (=> b!3584960 m!4077117))

(assert (=> b!3584960 m!4077117))

(assert (=> b!3584960 m!4077117))

(assert (=> b!3584960 m!4077117))

(declare-fun m!4078337 () Bool)

(assert (=> b!3584960 m!4078337))

(assert (=> b!3584961 m!4077121))

(assert (=> b!3584961 m!4077121))

(assert (=> b!3584959 m!4077123))

(assert (=> b!3584959 m!4077123))

(assert (=> d!1056625 d!1057051))

(declare-fun d!1057053 () Bool)

(assert (=> d!1057053 (isPrefix!2919 lt!1229107 lt!1229107)))

(declare-fun lt!1229601 () Unit!53667)

(assert (=> d!1057053 (= lt!1229601 (choose!20854 lt!1229107 lt!1229107))))

(assert (=> d!1057053 (= (lemmaIsPrefixRefl!1872 lt!1229107 lt!1229107) lt!1229601)))

(declare-fun bs!570021 () Bool)

(assert (= bs!570021 d!1057053))

(assert (=> bs!570021 m!4077131))

(declare-fun m!4078339 () Bool)

(assert (=> bs!570021 m!4078339))

(assert (=> d!1056625 d!1057053))

(assert (=> d!1056625 d!1056669))

(declare-fun d!1057055 () Bool)

(assert (=> d!1057055 (= (isEmpty!22183 lt!1229110) ((_ is Nil!37669) lt!1229110))))

(assert (=> d!1056541 d!1057055))

(assert (=> d!1056541 d!1056905))

(declare-fun b!3584963 () Bool)

(declare-fun e!2218158 () List!37793)

(assert (=> b!3584963 (= e!2218158 (Cons!37669 (h!43089 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))) (++!9368 (t!290422 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))) (_2!21912 (get!12134 lt!1229186)))))))

(declare-fun b!3584965 () Bool)

(declare-fun e!2218159 () Bool)

(declare-fun lt!1229602 () List!37793)

(assert (=> b!3584965 (= e!2218159 (or (not (= (_2!21912 (get!12134 lt!1229186)) Nil!37669)) (= lt!1229602 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186)))))))))

(declare-fun b!3584962 () Bool)

(assert (=> b!3584962 (= e!2218158 (_2!21912 (get!12134 lt!1229186)))))

(declare-fun d!1057057 () Bool)

(assert (=> d!1057057 e!2218159))

(declare-fun res!1446682 () Bool)

(assert (=> d!1057057 (=> (not res!1446682) (not e!2218159))))

(assert (=> d!1057057 (= res!1446682 (= (content!5348 lt!1229602) ((_ map or) (content!5348 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))) (content!5348 (_2!21912 (get!12134 lt!1229186))))))))

(assert (=> d!1057057 (= lt!1229602 e!2218158)))

(declare-fun c!621049 () Bool)

(assert (=> d!1057057 (= c!621049 ((_ is Nil!37669) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))))))

(assert (=> d!1057057 (= (++!9368 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186)))) (_2!21912 (get!12134 lt!1229186))) lt!1229602)))

(declare-fun b!3584964 () Bool)

(declare-fun res!1446683 () Bool)

(assert (=> b!3584964 (=> (not res!1446683) (not e!2218159))))

(assert (=> b!3584964 (= res!1446683 (= (size!28702 lt!1229602) (+ (size!28702 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229186))))) (size!28702 (_2!21912 (get!12134 lt!1229186))))))))

(assert (= (and d!1057057 c!621049) b!3584962))

(assert (= (and d!1057057 (not c!621049)) b!3584963))

(assert (= (and d!1057057 res!1446682) b!3584964))

(assert (= (and b!3584964 res!1446683) b!3584965))

(declare-fun m!4078341 () Bool)

(assert (=> b!3584963 m!4078341))

(declare-fun m!4078343 () Bool)

(assert (=> d!1057057 m!4078343))

(assert (=> d!1057057 m!4077059))

(declare-fun m!4078345 () Bool)

(assert (=> d!1057057 m!4078345))

(declare-fun m!4078347 () Bool)

(assert (=> d!1057057 m!4078347))

(declare-fun m!4078349 () Bool)

(assert (=> b!3584964 m!4078349))

(assert (=> b!3584964 m!4077059))

(declare-fun m!4078351 () Bool)

(assert (=> b!3584964 m!4078351))

(assert (=> b!3584964 m!4077071))

(assert (=> b!3583999 d!1057057))

(assert (=> b!3583999 d!1056937))

(assert (=> b!3583999 d!1056939))

(assert (=> b!3583999 d!1056899))

(declare-fun b!3584966 () Bool)

(declare-fun res!1446690 () Bool)

(declare-fun e!2218160 () Bool)

(assert (=> b!3584966 (=> (not res!1446690) (not e!2218160))))

(declare-fun lt!1229603 () Option!7744)

(assert (=> b!3584966 (= res!1446690 (< (size!28702 (_2!21912 (get!12134 lt!1229603))) (size!28702 lt!1229107)))))

(declare-fun b!3584967 () Bool)

(assert (=> b!3584967 (= e!2218160 (= (size!28698 (_1!21912 (get!12134 lt!1229603))) (size!28702 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229603))))))))

(declare-fun b!3584968 () Bool)

(declare-fun res!1446688 () Bool)

(assert (=> b!3584968 (=> (not res!1446688) (not e!2218160))))

(assert (=> b!3584968 (= res!1446688 (= (value!178806 (_1!21912 (get!12134 lt!1229603))) (apply!9068 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229603)))) (seqFromList!4111 (originalCharacters!6270 (_1!21912 (get!12134 lt!1229603)))))))))

(declare-fun b!3584969 () Bool)

(declare-fun e!2218162 () Option!7744)

(declare-fun lt!1229604 () tuple2!37566)

(assert (=> b!3584969 (= e!2218162 (Some!7743 (tuple2!37557 (Token!10479 (apply!9068 (transformation!5556 (h!43091 rules!3307)) (seqFromList!4111 (_1!21917 lt!1229604))) (h!43091 rules!3307) (size!28704 (seqFromList!4111 (_1!21917 lt!1229604))) (_1!21917 lt!1229604)) (_2!21917 lt!1229604))))))

(declare-fun lt!1229606 () Unit!53667)

(assert (=> b!3584969 (= lt!1229606 (longestMatchIsAcceptedByMatchOrIsEmpty!940 (regex!5556 (h!43091 rules!3307)) lt!1229107))))

(declare-fun res!1446685 () Bool)

(assert (=> b!3584969 (= res!1446685 (isEmpty!22183 (_1!21917 (findLongestMatchInner!967 (regex!5556 (h!43091 rules!3307)) Nil!37669 (size!28702 Nil!37669) lt!1229107 lt!1229107 (size!28702 lt!1229107)))))))

(declare-fun e!2218163 () Bool)

(assert (=> b!3584969 (=> res!1446685 e!2218163)))

(assert (=> b!3584969 e!2218163))

(declare-fun lt!1229607 () Unit!53667)

(assert (=> b!3584969 (= lt!1229607 lt!1229606)))

(declare-fun lt!1229605 () Unit!53667)

(assert (=> b!3584969 (= lt!1229605 (lemmaSemiInverse!1319 (transformation!5556 (h!43091 rules!3307)) (seqFromList!4111 (_1!21917 lt!1229604))))))

(declare-fun b!3584971 () Bool)

(declare-fun res!1446689 () Bool)

(assert (=> b!3584971 (=> (not res!1446689) (not e!2218160))))

(assert (=> b!3584971 (= res!1446689 (= (++!9368 (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229603)))) (_2!21912 (get!12134 lt!1229603))) lt!1229107))))

(declare-fun b!3584972 () Bool)

(declare-fun e!2218161 () Bool)

(assert (=> b!3584972 (= e!2218161 e!2218160)))

(declare-fun res!1446687 () Bool)

(assert (=> b!3584972 (=> (not res!1446687) (not e!2218160))))

(assert (=> b!3584972 (= res!1446687 (matchR!4884 (regex!5556 (h!43091 rules!3307)) (list!13837 (charsOf!3570 (_1!21912 (get!12134 lt!1229603))))))))

(declare-fun b!3584973 () Bool)

(assert (=> b!3584973 (= e!2218163 (matchR!4884 (regex!5556 (h!43091 rules!3307)) (_1!21917 (findLongestMatchInner!967 (regex!5556 (h!43091 rules!3307)) Nil!37669 (size!28702 Nil!37669) lt!1229107 lt!1229107 (size!28702 lt!1229107)))))))

(declare-fun b!3584974 () Bool)

(declare-fun res!1446686 () Bool)

(assert (=> b!3584974 (=> (not res!1446686) (not e!2218160))))

(assert (=> b!3584974 (= res!1446686 (= (rule!8268 (_1!21912 (get!12134 lt!1229603))) (h!43091 rules!3307)))))

(declare-fun d!1057059 () Bool)

(assert (=> d!1057059 e!2218161))

(declare-fun res!1446684 () Bool)

(assert (=> d!1057059 (=> res!1446684 e!2218161)))

(assert (=> d!1057059 (= res!1446684 (isEmpty!22189 lt!1229603))))

(assert (=> d!1057059 (= lt!1229603 e!2218162)))

(declare-fun c!621050 () Bool)

(assert (=> d!1057059 (= c!621050 (isEmpty!22183 (_1!21917 lt!1229604)))))

(assert (=> d!1057059 (= lt!1229604 (findLongestMatch!882 (regex!5556 (h!43091 rules!3307)) lt!1229107))))

(assert (=> d!1057059 (ruleValid!1821 thiss!23823 (h!43091 rules!3307))))

(assert (=> d!1057059 (= (maxPrefixOneRule!1831 thiss!23823 (h!43091 rules!3307) lt!1229107) lt!1229603)))

(declare-fun b!3584970 () Bool)

(assert (=> b!3584970 (= e!2218162 None!7743)))

(assert (= (and d!1057059 c!621050) b!3584970))

(assert (= (and d!1057059 (not c!621050)) b!3584969))

(assert (= (and b!3584969 (not res!1446685)) b!3584973))

(assert (= (and d!1057059 (not res!1446684)) b!3584972))

(assert (= (and b!3584972 res!1446687) b!3584971))

(assert (= (and b!3584971 res!1446689) b!3584966))

(assert (= (and b!3584966 res!1446690) b!3584974))

(assert (= (and b!3584974 res!1446686) b!3584968))

(assert (= (and b!3584968 res!1446688) b!3584967))

(declare-fun m!4078353 () Bool)

(assert (=> b!3584971 m!4078353))

(declare-fun m!4078355 () Bool)

(assert (=> b!3584971 m!4078355))

(assert (=> b!3584971 m!4078355))

(declare-fun m!4078357 () Bool)

(assert (=> b!3584971 m!4078357))

(assert (=> b!3584971 m!4078357))

(declare-fun m!4078359 () Bool)

(assert (=> b!3584971 m!4078359))

(assert (=> b!3584968 m!4078353))

(declare-fun m!4078361 () Bool)

(assert (=> b!3584968 m!4078361))

(assert (=> b!3584968 m!4078361))

(declare-fun m!4078363 () Bool)

(assert (=> b!3584968 m!4078363))

(assert (=> b!3584973 m!4077609))

(assert (=> b!3584973 m!4077121))

(assert (=> b!3584973 m!4077609))

(assert (=> b!3584973 m!4077121))

(declare-fun m!4078365 () Bool)

(assert (=> b!3584973 m!4078365))

(declare-fun m!4078367 () Bool)

(assert (=> b!3584973 m!4078367))

(assert (=> b!3584966 m!4078353))

(declare-fun m!4078369 () Bool)

(assert (=> b!3584966 m!4078369))

(assert (=> b!3584966 m!4077121))

(assert (=> b!3584974 m!4078353))

(assert (=> b!3584972 m!4078353))

(assert (=> b!3584972 m!4078355))

(assert (=> b!3584972 m!4078355))

(assert (=> b!3584972 m!4078357))

(assert (=> b!3584972 m!4078357))

(declare-fun m!4078371 () Bool)

(assert (=> b!3584972 m!4078371))

(declare-fun m!4078373 () Bool)

(assert (=> d!1057059 m!4078373))

(declare-fun m!4078375 () Bool)

(assert (=> d!1057059 m!4078375))

(declare-fun m!4078377 () Bool)

(assert (=> d!1057059 m!4078377))

(assert (=> d!1057059 m!4077517))

(declare-fun m!4078379 () Bool)

(assert (=> b!3584969 m!4078379))

(declare-fun m!4078381 () Bool)

(assert (=> b!3584969 m!4078381))

(assert (=> b!3584969 m!4078381))

(declare-fun m!4078383 () Bool)

(assert (=> b!3584969 m!4078383))

(assert (=> b!3584969 m!4078381))

(declare-fun m!4078385 () Bool)

(assert (=> b!3584969 m!4078385))

(declare-fun m!4078387 () Bool)

(assert (=> b!3584969 m!4078387))

(assert (=> b!3584969 m!4078381))

(declare-fun m!4078389 () Bool)

(assert (=> b!3584969 m!4078389))

(assert (=> b!3584969 m!4077609))

(assert (=> b!3584969 m!4077121))

(assert (=> b!3584969 m!4077609))

(assert (=> b!3584969 m!4077121))

(assert (=> b!3584969 m!4078365))

(assert (=> b!3584967 m!4078353))

(declare-fun m!4078391 () Bool)

(assert (=> b!3584967 m!4078391))

(assert (=> bm!259479 d!1057059))

(declare-fun d!1057061 () Bool)

(declare-fun nullableFct!1034 (Regex!10315) Bool)

(assert (=> d!1057061 (= (nullable!3555 (regex!5556 rule!403)) (nullableFct!1034 (regex!5556 rule!403)))))

(declare-fun bs!570022 () Bool)

(assert (= bs!570022 d!1057061))

(declare-fun m!4078393 () Bool)

(assert (=> bs!570022 m!4078393))

(assert (=> b!3583776 d!1057061))

(declare-fun d!1057063 () Bool)

(assert (=> d!1057063 (= (list!13837 (_2!21913 lt!1229201)) (list!13840 (c!620759 (_2!21913 lt!1229201))))))

(declare-fun bs!570023 () Bool)

(assert (= bs!570023 d!1057063))

(declare-fun m!4078395 () Bool)

(assert (=> bs!570023 m!4078395))

(assert (=> b!3584030 d!1057063))

(assert (=> b!3584030 d!1056957))

(assert (=> b!3584030 d!1056959))

(declare-fun d!1057065 () Bool)

(declare-fun charsToInt!0 (List!37794) (_ BitVec 32))

(assert (=> d!1057065 (= (inv!16 (value!178806 token!511)) (= (charsToInt!0 (text!40949 (value!178806 token!511))) (value!178797 (value!178806 token!511))))))

(declare-fun bs!570024 () Bool)

(assert (= bs!570024 d!1057065))

(declare-fun m!4078397 () Bool)

(assert (=> bs!570024 m!4078397))

(assert (=> b!3584067 d!1057065))

(assert (=> b!3583763 d!1057061))

(declare-fun bs!570025 () Bool)

(declare-fun d!1057067 () Bool)

(assert (= bs!570025 (and d!1057067 d!1056669)))

(declare-fun lambda!123789 () Int)

(assert (=> bs!570025 (= lambda!123789 lambda!123767)))

(assert (=> d!1057067 true))

(declare-fun lt!1229610 () Bool)

(assert (=> d!1057067 (= lt!1229610 (rulesValidInductive!1935 thiss!23823 rules!3307))))

(assert (=> d!1057067 (= lt!1229610 (forall!8142 rules!3307 lambda!123789))))

(assert (=> d!1057067 (= (rulesValid!2112 thiss!23823 rules!3307) lt!1229610)))

(declare-fun bs!570026 () Bool)

(assert (= bs!570026 d!1057067))

(assert (=> bs!570026 m!4077053))

(declare-fun m!4078399 () Bool)

(assert (=> bs!570026 m!4078399))

(assert (=> d!1056647 d!1057067))

(declare-fun d!1057069 () Bool)

(declare-fun charsToBigInt!1 (List!37794) Int)

(assert (=> d!1057069 (= (inv!17 (value!178806 token!511)) (= (charsToBigInt!1 (text!40950 (value!178806 token!511))) (value!178798 (value!178806 token!511))))))

(declare-fun bs!570027 () Bool)

(assert (= bs!570027 d!1057069))

(declare-fun m!4078401 () Bool)

(assert (=> bs!570027 m!4078401))

(assert (=> b!3584065 d!1057069))

(assert (=> bm!259455 d!1057055))

(declare-fun b!3584977 () Bool)

(declare-fun b_free!92261 () Bool)

(declare-fun b_next!92965 () Bool)

(assert (=> b!3584977 (= b_free!92261 (not b_next!92965))))

(declare-fun tb!204511 () Bool)

(declare-fun t!290543 () Bool)

(assert (=> (and b!3584977 (= (toValue!7832 (transformation!5556 (h!43091 (t!290424 (t!290424 rules!3307))))) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290543) tb!204511))

(declare-fun result!249354 () Bool)

(assert (= result!249354 result!249300))

(assert (=> d!1056825 t!290543))

(declare-fun tb!204513 () Bool)

(declare-fun t!290545 () Bool)

(assert (=> (and b!3584977 (= (toValue!7832 (transformation!5556 (h!43091 (t!290424 (t!290424 rules!3307))))) (toValue!7832 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290545) tb!204513))

(declare-fun result!249356 () Bool)

(assert (= result!249356 result!249316))

(assert (=> d!1056901 t!290545))

(declare-fun b_and!258867 () Bool)

(declare-fun tp!1097466 () Bool)

(assert (=> b!3584977 (= tp!1097466 (and (=> t!290543 result!249354) (=> t!290545 result!249356) b_and!258867))))

(declare-fun b_free!92263 () Bool)

(declare-fun b_next!92967 () Bool)

(assert (=> b!3584977 (= b_free!92263 (not b_next!92967))))

(declare-fun t!290547 () Bool)

(declare-fun tb!204515 () Bool)

(assert (=> (and b!3584977 (= (toChars!7691 (transformation!5556 (h!43091 (t!290424 (t!290424 rules!3307))))) (toChars!7691 (transformation!5556 (rule!8268 token!511)))) t!290547) tb!204515))

(declare-fun result!249358 () Bool)

(assert (= result!249358 result!249232))

(assert (=> b!3583812 t!290547))

(assert (=> d!1056613 t!290547))

(declare-fun tb!204517 () Bool)

(declare-fun t!290549 () Bool)

(assert (=> (and b!3584977 (= (toChars!7691 (transformation!5556 (h!43091 (t!290424 (t!290424 rules!3307))))) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229206)))))) t!290549) tb!204517))

(declare-fun result!249360 () Bool)

(assert (= result!249360 result!249334))

(assert (=> d!1056933 t!290549))

(declare-fun t!290551 () Bool)

(declare-fun tb!204519 () Bool)

(assert (=> (and b!3584977 (= (toChars!7691 (transformation!5556 (h!43091 (t!290424 (t!290424 rules!3307))))) (toChars!7691 (transformation!5556 (rule!8268 (_1!21912 (get!12134 lt!1229186)))))) t!290551) tb!204519))

(declare-fun result!249362 () Bool)

(assert (= result!249362 result!249344))

(assert (=> d!1056939 t!290551))

(declare-fun b_and!258869 () Bool)

(declare-fun tp!1097467 () Bool)

(assert (=> b!3584977 (= tp!1097467 (and (=> t!290547 result!249358) (=> t!290549 result!249360) (=> t!290551 result!249362) b_and!258869))))

(declare-fun e!2218166 () Bool)

(assert (=> b!3584977 (= e!2218166 (and tp!1097466 tp!1097467))))

(declare-fun e!2218167 () Bool)

(declare-fun tp!1097468 () Bool)

(declare-fun b!3584976 () Bool)

(assert (=> b!3584976 (= e!2218167 (and tp!1097468 (inv!50984 (tag!6222 (h!43091 (t!290424 (t!290424 rules!3307))))) (inv!50987 (transformation!5556 (h!43091 (t!290424 (t!290424 rules!3307))))) e!2218166))))

(declare-fun b!3584975 () Bool)

(declare-fun e!2218164 () Bool)

(declare-fun tp!1097465 () Bool)

(assert (=> b!3584975 (= e!2218164 (and e!2218167 tp!1097465))))

(assert (=> b!3584101 (= tp!1097306 e!2218164)))

(assert (= b!3584976 b!3584977))

(assert (= b!3584975 b!3584976))

(assert (= (and b!3584101 ((_ is Cons!37671) (t!290424 (t!290424 rules!3307)))) b!3584975))

(declare-fun m!4078403 () Bool)

(assert (=> b!3584976 m!4078403))

(declare-fun m!4078405 () Bool)

(assert (=> b!3584976 m!4078405))

(declare-fun b!3584978 () Bool)

(declare-fun e!2218168 () Bool)

(declare-fun tp!1097469 () Bool)

(assert (=> b!3584978 (= e!2218168 (and tp_is_empty!17713 tp!1097469))))

(assert (=> b!3584126 (= tp!1097335 e!2218168)))

(assert (= (and b!3584126 ((_ is Cons!37669) (t!290422 (t!290422 suffix!1395)))) b!3584978))

(declare-fun b!3584979 () Bool)

(declare-fun e!2218169 () Bool)

(assert (=> b!3584979 (= e!2218169 tp_is_empty!17713)))

(declare-fun b!3584980 () Bool)

(declare-fun tp!1097474 () Bool)

(declare-fun tp!1097473 () Bool)

(assert (=> b!3584980 (= e!2218169 (and tp!1097474 tp!1097473))))

(declare-fun b!3584982 () Bool)

(declare-fun tp!1097471 () Bool)

(declare-fun tp!1097472 () Bool)

(assert (=> b!3584982 (= e!2218169 (and tp!1097471 tp!1097472))))

(declare-fun b!3584981 () Bool)

(declare-fun tp!1097470 () Bool)

(assert (=> b!3584981 (= e!2218169 tp!1097470)))

(assert (=> b!3584130 (= tp!1097337 e!2218169)))

(assert (= (and b!3584130 ((_ is ElementMatch!10315) (regOne!21143 (regex!5556 (rule!8268 token!511))))) b!3584979))

(assert (= (and b!3584130 ((_ is Concat!16102) (regOne!21143 (regex!5556 (rule!8268 token!511))))) b!3584980))

(assert (= (and b!3584130 ((_ is Star!10315) (regOne!21143 (regex!5556 (rule!8268 token!511))))) b!3584981))

(assert (= (and b!3584130 ((_ is Union!10315) (regOne!21143 (regex!5556 (rule!8268 token!511))))) b!3584982))

(declare-fun b!3584983 () Bool)

(declare-fun e!2218170 () Bool)

(assert (=> b!3584983 (= e!2218170 tp_is_empty!17713)))

(declare-fun b!3584984 () Bool)

(declare-fun tp!1097479 () Bool)

(declare-fun tp!1097478 () Bool)

(assert (=> b!3584984 (= e!2218170 (and tp!1097479 tp!1097478))))

(declare-fun b!3584986 () Bool)

(declare-fun tp!1097476 () Bool)

(declare-fun tp!1097477 () Bool)

(assert (=> b!3584986 (= e!2218170 (and tp!1097476 tp!1097477))))

(declare-fun b!3584985 () Bool)

(declare-fun tp!1097475 () Bool)

(assert (=> b!3584985 (= e!2218170 tp!1097475)))

(assert (=> b!3584130 (= tp!1097338 e!2218170)))

(assert (= (and b!3584130 ((_ is ElementMatch!10315) (regTwo!21143 (regex!5556 (rule!8268 token!511))))) b!3584983))

(assert (= (and b!3584130 ((_ is Concat!16102) (regTwo!21143 (regex!5556 (rule!8268 token!511))))) b!3584984))

(assert (= (and b!3584130 ((_ is Star!10315) (regTwo!21143 (regex!5556 (rule!8268 token!511))))) b!3584985))

(assert (= (and b!3584130 ((_ is Union!10315) (regTwo!21143 (regex!5556 (rule!8268 token!511))))) b!3584986))

(declare-fun b!3584987 () Bool)

(declare-fun e!2218171 () Bool)

(assert (=> b!3584987 (= e!2218171 tp_is_empty!17713)))

(declare-fun b!3584988 () Bool)

(declare-fun tp!1097484 () Bool)

(declare-fun tp!1097483 () Bool)

(assert (=> b!3584988 (= e!2218171 (and tp!1097484 tp!1097483))))

(declare-fun b!3584990 () Bool)

(declare-fun tp!1097481 () Bool)

(declare-fun tp!1097482 () Bool)

(assert (=> b!3584990 (= e!2218171 (and tp!1097481 tp!1097482))))

(declare-fun b!3584989 () Bool)

(declare-fun tp!1097480 () Bool)

(assert (=> b!3584989 (= e!2218171 tp!1097480)))

(assert (=> b!3584117 (= tp!1097321 e!2218171)))

(assert (= (and b!3584117 ((_ is ElementMatch!10315) (regOne!21143 (regex!5556 (h!43091 rules!3307))))) b!3584987))

(assert (= (and b!3584117 ((_ is Concat!16102) (regOne!21143 (regex!5556 (h!43091 rules!3307))))) b!3584988))

(assert (= (and b!3584117 ((_ is Star!10315) (regOne!21143 (regex!5556 (h!43091 rules!3307))))) b!3584989))

(assert (= (and b!3584117 ((_ is Union!10315) (regOne!21143 (regex!5556 (h!43091 rules!3307))))) b!3584990))

(declare-fun b!3584991 () Bool)

(declare-fun e!2218172 () Bool)

(assert (=> b!3584991 (= e!2218172 tp_is_empty!17713)))

(declare-fun b!3584992 () Bool)

(declare-fun tp!1097489 () Bool)

(declare-fun tp!1097488 () Bool)

(assert (=> b!3584992 (= e!2218172 (and tp!1097489 tp!1097488))))

(declare-fun b!3584994 () Bool)

(declare-fun tp!1097486 () Bool)

(declare-fun tp!1097487 () Bool)

(assert (=> b!3584994 (= e!2218172 (and tp!1097486 tp!1097487))))

(declare-fun b!3584993 () Bool)

(declare-fun tp!1097485 () Bool)

(assert (=> b!3584993 (= e!2218172 tp!1097485)))

(assert (=> b!3584117 (= tp!1097322 e!2218172)))

(assert (= (and b!3584117 ((_ is ElementMatch!10315) (regTwo!21143 (regex!5556 (h!43091 rules!3307))))) b!3584991))

(assert (= (and b!3584117 ((_ is Concat!16102) (regTwo!21143 (regex!5556 (h!43091 rules!3307))))) b!3584992))

(assert (= (and b!3584117 ((_ is Star!10315) (regTwo!21143 (regex!5556 (h!43091 rules!3307))))) b!3584993))

(assert (= (and b!3584117 ((_ is Union!10315) (regTwo!21143 (regex!5556 (h!43091 rules!3307))))) b!3584994))

(declare-fun b!3584995 () Bool)

(declare-fun e!2218173 () Bool)

(assert (=> b!3584995 (= e!2218173 tp_is_empty!17713)))

(declare-fun b!3584996 () Bool)

(declare-fun tp!1097494 () Bool)

(declare-fun tp!1097493 () Bool)

(assert (=> b!3584996 (= e!2218173 (and tp!1097494 tp!1097493))))

(declare-fun b!3584998 () Bool)

(declare-fun tp!1097491 () Bool)

(declare-fun tp!1097492 () Bool)

(assert (=> b!3584998 (= e!2218173 (and tp!1097491 tp!1097492))))

(declare-fun b!3584997 () Bool)

(declare-fun tp!1097490 () Bool)

(assert (=> b!3584997 (= e!2218173 tp!1097490)))

(assert (=> b!3584129 (= tp!1097336 e!2218173)))

(assert (= (and b!3584129 ((_ is ElementMatch!10315) (reg!10644 (regex!5556 (rule!8268 token!511))))) b!3584995))

(assert (= (and b!3584129 ((_ is Concat!16102) (reg!10644 (regex!5556 (rule!8268 token!511))))) b!3584996))

(assert (= (and b!3584129 ((_ is Star!10315) (reg!10644 (regex!5556 (rule!8268 token!511))))) b!3584997))

(assert (= (and b!3584129 ((_ is Union!10315) (reg!10644 (regex!5556 (rule!8268 token!511))))) b!3584998))

(declare-fun b!3585007 () Bool)

(declare-fun tp!1097503 () Bool)

(declare-fun tp!1097502 () Bool)

(declare-fun e!2218179 () Bool)

(assert (=> b!3585007 (= e!2218179 (and (inv!50991 (left!29443 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))))) tp!1097503 (inv!50991 (right!29773 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))))) tp!1097502))))

(declare-fun b!3585009 () Bool)

(declare-fun e!2218178 () Bool)

(declare-fun tp!1097501 () Bool)

(assert (=> b!3585009 (= e!2218178 tp!1097501)))

(declare-fun b!3585008 () Bool)

(declare-fun inv!50998 (IArray!22915) Bool)

(assert (=> b!3585008 (= e!2218179 (and (inv!50998 (xs!14657 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))))) e!2218178))))

(assert (=> b!3583818 (= tp!1097248 (and (inv!50991 (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511)))) e!2218179))))

(assert (= (and b!3583818 ((_ is Node!11455) (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))))) b!3585007))

(assert (= b!3585008 b!3585009))

(assert (= (and b!3583818 ((_ is Leaf!17844) (c!620759 (dynLambda!16190 (toChars!7691 (transformation!5556 (rule!8268 token!511))) (value!178806 token!511))))) b!3585008))

(declare-fun m!4078407 () Bool)

(assert (=> b!3585007 m!4078407))

(declare-fun m!4078409 () Bool)

(assert (=> b!3585007 m!4078409))

(declare-fun m!4078411 () Bool)

(assert (=> b!3585008 m!4078411))

(assert (=> b!3583818 m!4076907))

(declare-fun b!3585010 () Bool)

(declare-fun e!2218180 () Bool)

(assert (=> b!3585010 (= e!2218180 tp_is_empty!17713)))

(declare-fun b!3585011 () Bool)

(declare-fun tp!1097508 () Bool)

(declare-fun tp!1097507 () Bool)

(assert (=> b!3585011 (= e!2218180 (and tp!1097508 tp!1097507))))

(declare-fun b!3585013 () Bool)

(declare-fun tp!1097505 () Bool)

(declare-fun tp!1097506 () Bool)

(assert (=> b!3585013 (= e!2218180 (and tp!1097505 tp!1097506))))

(declare-fun b!3585012 () Bool)

(declare-fun tp!1097504 () Bool)

(assert (=> b!3585012 (= e!2218180 tp!1097504)))

(assert (=> b!3584121 (= tp!1097326 e!2218180)))

(assert (= (and b!3584121 ((_ is ElementMatch!10315) (regOne!21143 (regex!5556 anOtherTypeRule!33)))) b!3585010))

(assert (= (and b!3584121 ((_ is Concat!16102) (regOne!21143 (regex!5556 anOtherTypeRule!33)))) b!3585011))

(assert (= (and b!3584121 ((_ is Star!10315) (regOne!21143 (regex!5556 anOtherTypeRule!33)))) b!3585012))

(assert (= (and b!3584121 ((_ is Union!10315) (regOne!21143 (regex!5556 anOtherTypeRule!33)))) b!3585013))

(declare-fun b!3585014 () Bool)

(declare-fun e!2218181 () Bool)

(assert (=> b!3585014 (= e!2218181 tp_is_empty!17713)))

(declare-fun b!3585015 () Bool)

(declare-fun tp!1097513 () Bool)

(declare-fun tp!1097512 () Bool)

(assert (=> b!3585015 (= e!2218181 (and tp!1097513 tp!1097512))))

(declare-fun b!3585017 () Bool)

(declare-fun tp!1097510 () Bool)

(declare-fun tp!1097511 () Bool)

(assert (=> b!3585017 (= e!2218181 (and tp!1097510 tp!1097511))))

(declare-fun b!3585016 () Bool)

(declare-fun tp!1097509 () Bool)

(assert (=> b!3585016 (= e!2218181 tp!1097509)))

(assert (=> b!3584121 (= tp!1097327 e!2218181)))

(assert (= (and b!3584121 ((_ is ElementMatch!10315) (regTwo!21143 (regex!5556 anOtherTypeRule!33)))) b!3585014))

(assert (= (and b!3584121 ((_ is Concat!16102) (regTwo!21143 (regex!5556 anOtherTypeRule!33)))) b!3585015))

(assert (= (and b!3584121 ((_ is Star!10315) (regTwo!21143 (regex!5556 anOtherTypeRule!33)))) b!3585016))

(assert (= (and b!3584121 ((_ is Union!10315) (regTwo!21143 (regex!5556 anOtherTypeRule!33)))) b!3585017))

(declare-fun b!3585018 () Bool)

(declare-fun e!2218182 () Bool)

(assert (=> b!3585018 (= e!2218182 tp_is_empty!17713)))

(declare-fun b!3585019 () Bool)

(declare-fun tp!1097518 () Bool)

(declare-fun tp!1097517 () Bool)

(assert (=> b!3585019 (= e!2218182 (and tp!1097518 tp!1097517))))

(declare-fun b!3585021 () Bool)

(declare-fun tp!1097515 () Bool)

(declare-fun tp!1097516 () Bool)

(assert (=> b!3585021 (= e!2218182 (and tp!1097515 tp!1097516))))

(declare-fun b!3585020 () Bool)

(declare-fun tp!1097514 () Bool)

(assert (=> b!3585020 (= e!2218182 tp!1097514)))

(assert (=> b!3584116 (= tp!1097320 e!2218182)))

(assert (= (and b!3584116 ((_ is ElementMatch!10315) (reg!10644 (regex!5556 (h!43091 rules!3307))))) b!3585018))

(assert (= (and b!3584116 ((_ is Concat!16102) (reg!10644 (regex!5556 (h!43091 rules!3307))))) b!3585019))

(assert (= (and b!3584116 ((_ is Star!10315) (reg!10644 (regex!5556 (h!43091 rules!3307))))) b!3585020))

(assert (= (and b!3584116 ((_ is Union!10315) (reg!10644 (regex!5556 (h!43091 rules!3307))))) b!3585021))

(declare-fun b!3585022 () Bool)

(declare-fun e!2218183 () Bool)

(declare-fun tp!1097519 () Bool)

(assert (=> b!3585022 (= e!2218183 (and tp_is_empty!17713 tp!1097519))))

(assert (=> b!3584092 (= tp!1097297 e!2218183)))

(assert (= (and b!3584092 ((_ is Cons!37669) (t!290422 (originalCharacters!6270 token!511)))) b!3585022))

(declare-fun b!3585023 () Bool)

(declare-fun e!2218184 () Bool)

(assert (=> b!3585023 (= e!2218184 tp_is_empty!17713)))

(declare-fun b!3585024 () Bool)

(declare-fun tp!1097524 () Bool)

(declare-fun tp!1097523 () Bool)

(assert (=> b!3585024 (= e!2218184 (and tp!1097524 tp!1097523))))

(declare-fun b!3585026 () Bool)

(declare-fun tp!1097521 () Bool)

(declare-fun tp!1097522 () Bool)

(assert (=> b!3585026 (= e!2218184 (and tp!1097521 tp!1097522))))

(declare-fun b!3585025 () Bool)

(declare-fun tp!1097520 () Bool)

(assert (=> b!3585025 (= e!2218184 tp!1097520)))

(assert (=> b!3584128 (= tp!1097340 e!2218184)))

(assert (= (and b!3584128 ((_ is ElementMatch!10315) (regOne!21142 (regex!5556 (rule!8268 token!511))))) b!3585023))

(assert (= (and b!3584128 ((_ is Concat!16102) (regOne!21142 (regex!5556 (rule!8268 token!511))))) b!3585024))

(assert (= (and b!3584128 ((_ is Star!10315) (regOne!21142 (regex!5556 (rule!8268 token!511))))) b!3585025))

(assert (= (and b!3584128 ((_ is Union!10315) (regOne!21142 (regex!5556 (rule!8268 token!511))))) b!3585026))

(declare-fun b!3585027 () Bool)

(declare-fun e!2218185 () Bool)

(assert (=> b!3585027 (= e!2218185 tp_is_empty!17713)))

(declare-fun b!3585028 () Bool)

(declare-fun tp!1097529 () Bool)

(declare-fun tp!1097528 () Bool)

(assert (=> b!3585028 (= e!2218185 (and tp!1097529 tp!1097528))))

(declare-fun b!3585030 () Bool)

(declare-fun tp!1097526 () Bool)

(declare-fun tp!1097527 () Bool)

(assert (=> b!3585030 (= e!2218185 (and tp!1097526 tp!1097527))))

(declare-fun b!3585029 () Bool)

(declare-fun tp!1097525 () Bool)

(assert (=> b!3585029 (= e!2218185 tp!1097525)))

(assert (=> b!3584128 (= tp!1097339 e!2218185)))

(assert (= (and b!3584128 ((_ is ElementMatch!10315) (regTwo!21142 (regex!5556 (rule!8268 token!511))))) b!3585027))

(assert (= (and b!3584128 ((_ is Concat!16102) (regTwo!21142 (regex!5556 (rule!8268 token!511))))) b!3585028))

(assert (= (and b!3584128 ((_ is Star!10315) (regTwo!21142 (regex!5556 (rule!8268 token!511))))) b!3585029))

(assert (= (and b!3584128 ((_ is Union!10315) (regTwo!21142 (regex!5556 (rule!8268 token!511))))) b!3585030))

(declare-fun b!3585031 () Bool)

(declare-fun e!2218186 () Bool)

(assert (=> b!3585031 (= e!2218186 tp_is_empty!17713)))

(declare-fun b!3585032 () Bool)

(declare-fun tp!1097534 () Bool)

(declare-fun tp!1097533 () Bool)

(assert (=> b!3585032 (= e!2218186 (and tp!1097534 tp!1097533))))

(declare-fun b!3585034 () Bool)

(declare-fun tp!1097531 () Bool)

(declare-fun tp!1097532 () Bool)

(assert (=> b!3585034 (= e!2218186 (and tp!1097531 tp!1097532))))

(declare-fun b!3585033 () Bool)

(declare-fun tp!1097530 () Bool)

(assert (=> b!3585033 (= e!2218186 tp!1097530)))

(assert (=> b!3584125 (= tp!1097331 e!2218186)))

(assert (= (and b!3584125 ((_ is ElementMatch!10315) (regOne!21143 (regex!5556 rule!403)))) b!3585031))

(assert (= (and b!3584125 ((_ is Concat!16102) (regOne!21143 (regex!5556 rule!403)))) b!3585032))

(assert (= (and b!3584125 ((_ is Star!10315) (regOne!21143 (regex!5556 rule!403)))) b!3585033))

(assert (= (and b!3584125 ((_ is Union!10315) (regOne!21143 (regex!5556 rule!403)))) b!3585034))

(declare-fun b!3585035 () Bool)

(declare-fun e!2218187 () Bool)

(assert (=> b!3585035 (= e!2218187 tp_is_empty!17713)))

(declare-fun b!3585036 () Bool)

(declare-fun tp!1097539 () Bool)

(declare-fun tp!1097538 () Bool)

(assert (=> b!3585036 (= e!2218187 (and tp!1097539 tp!1097538))))

(declare-fun b!3585038 () Bool)

(declare-fun tp!1097536 () Bool)

(declare-fun tp!1097537 () Bool)

(assert (=> b!3585038 (= e!2218187 (and tp!1097536 tp!1097537))))

(declare-fun b!3585037 () Bool)

(declare-fun tp!1097535 () Bool)

(assert (=> b!3585037 (= e!2218187 tp!1097535)))

(assert (=> b!3584125 (= tp!1097332 e!2218187)))

(assert (= (and b!3584125 ((_ is ElementMatch!10315) (regTwo!21143 (regex!5556 rule!403)))) b!3585035))

(assert (= (and b!3584125 ((_ is Concat!16102) (regTwo!21143 (regex!5556 rule!403)))) b!3585036))

(assert (= (and b!3584125 ((_ is Star!10315) (regTwo!21143 (regex!5556 rule!403)))) b!3585037))

(assert (= (and b!3584125 ((_ is Union!10315) (regTwo!21143 (regex!5556 rule!403)))) b!3585038))

(declare-fun b!3585039 () Bool)

(declare-fun e!2218188 () Bool)

(assert (=> b!3585039 (= e!2218188 tp_is_empty!17713)))

(declare-fun b!3585040 () Bool)

(declare-fun tp!1097544 () Bool)

(declare-fun tp!1097543 () Bool)

(assert (=> b!3585040 (= e!2218188 (and tp!1097544 tp!1097543))))

(declare-fun b!3585042 () Bool)

(declare-fun tp!1097541 () Bool)

(declare-fun tp!1097542 () Bool)

(assert (=> b!3585042 (= e!2218188 (and tp!1097541 tp!1097542))))

(declare-fun b!3585041 () Bool)

(declare-fun tp!1097540 () Bool)

(assert (=> b!3585041 (= e!2218188 tp!1097540)))

(assert (=> b!3584120 (= tp!1097325 e!2218188)))

(assert (= (and b!3584120 ((_ is ElementMatch!10315) (reg!10644 (regex!5556 anOtherTypeRule!33)))) b!3585039))

(assert (= (and b!3584120 ((_ is Concat!16102) (reg!10644 (regex!5556 anOtherTypeRule!33)))) b!3585040))

(assert (= (and b!3584120 ((_ is Star!10315) (reg!10644 (regex!5556 anOtherTypeRule!33)))) b!3585041))

(assert (= (and b!3584120 ((_ is Union!10315) (reg!10644 (regex!5556 anOtherTypeRule!33)))) b!3585042))

(declare-fun b!3585043 () Bool)

(declare-fun e!2218189 () Bool)

(assert (=> b!3585043 (= e!2218189 tp_is_empty!17713)))

(declare-fun b!3585044 () Bool)

(declare-fun tp!1097549 () Bool)

(declare-fun tp!1097548 () Bool)

(assert (=> b!3585044 (= e!2218189 (and tp!1097549 tp!1097548))))

(declare-fun b!3585046 () Bool)

(declare-fun tp!1097546 () Bool)

(declare-fun tp!1097547 () Bool)

(assert (=> b!3585046 (= e!2218189 (and tp!1097546 tp!1097547))))

(declare-fun b!3585045 () Bool)

(declare-fun tp!1097545 () Bool)

(assert (=> b!3585045 (= e!2218189 tp!1097545)))

(assert (=> b!3584115 (= tp!1097324 e!2218189)))

(assert (= (and b!3584115 ((_ is ElementMatch!10315) (regOne!21142 (regex!5556 (h!43091 rules!3307))))) b!3585043))

(assert (= (and b!3584115 ((_ is Concat!16102) (regOne!21142 (regex!5556 (h!43091 rules!3307))))) b!3585044))

(assert (= (and b!3584115 ((_ is Star!10315) (regOne!21142 (regex!5556 (h!43091 rules!3307))))) b!3585045))

(assert (= (and b!3584115 ((_ is Union!10315) (regOne!21142 (regex!5556 (h!43091 rules!3307))))) b!3585046))

(declare-fun b!3585047 () Bool)

(declare-fun e!2218190 () Bool)

(assert (=> b!3585047 (= e!2218190 tp_is_empty!17713)))

(declare-fun b!3585048 () Bool)

(declare-fun tp!1097554 () Bool)

(declare-fun tp!1097553 () Bool)

(assert (=> b!3585048 (= e!2218190 (and tp!1097554 tp!1097553))))

(declare-fun b!3585050 () Bool)

(declare-fun tp!1097551 () Bool)

(declare-fun tp!1097552 () Bool)

(assert (=> b!3585050 (= e!2218190 (and tp!1097551 tp!1097552))))

(declare-fun b!3585049 () Bool)

(declare-fun tp!1097550 () Bool)

(assert (=> b!3585049 (= e!2218190 tp!1097550)))

(assert (=> b!3584115 (= tp!1097323 e!2218190)))

(assert (= (and b!3584115 ((_ is ElementMatch!10315) (regTwo!21142 (regex!5556 (h!43091 rules!3307))))) b!3585047))

(assert (= (and b!3584115 ((_ is Concat!16102) (regTwo!21142 (regex!5556 (h!43091 rules!3307))))) b!3585048))

(assert (= (and b!3584115 ((_ is Star!10315) (regTwo!21142 (regex!5556 (h!43091 rules!3307))))) b!3585049))

(assert (= (and b!3584115 ((_ is Union!10315) (regTwo!21142 (regex!5556 (h!43091 rules!3307))))) b!3585050))

(declare-fun b!3585051 () Bool)

(declare-fun e!2218191 () Bool)

(assert (=> b!3585051 (= e!2218191 tp_is_empty!17713)))

(declare-fun b!3585052 () Bool)

(declare-fun tp!1097559 () Bool)

(declare-fun tp!1097558 () Bool)

(assert (=> b!3585052 (= e!2218191 (and tp!1097559 tp!1097558))))

(declare-fun b!3585054 () Bool)

(declare-fun tp!1097556 () Bool)

(declare-fun tp!1097557 () Bool)

(assert (=> b!3585054 (= e!2218191 (and tp!1097556 tp!1097557))))

(declare-fun b!3585053 () Bool)

(declare-fun tp!1097555 () Bool)

(assert (=> b!3585053 (= e!2218191 tp!1097555)))

(assert (=> b!3584124 (= tp!1097330 e!2218191)))

(assert (= (and b!3584124 ((_ is ElementMatch!10315) (reg!10644 (regex!5556 rule!403)))) b!3585051))

(assert (= (and b!3584124 ((_ is Concat!16102) (reg!10644 (regex!5556 rule!403)))) b!3585052))

(assert (= (and b!3584124 ((_ is Star!10315) (reg!10644 (regex!5556 rule!403)))) b!3585053))

(assert (= (and b!3584124 ((_ is Union!10315) (reg!10644 (regex!5556 rule!403)))) b!3585054))

(declare-fun b!3585055 () Bool)

(declare-fun e!2218192 () Bool)

(assert (=> b!3585055 (= e!2218192 tp_is_empty!17713)))

(declare-fun b!3585056 () Bool)

(declare-fun tp!1097564 () Bool)

(declare-fun tp!1097563 () Bool)

(assert (=> b!3585056 (= e!2218192 (and tp!1097564 tp!1097563))))

(declare-fun b!3585058 () Bool)

(declare-fun tp!1097561 () Bool)

(declare-fun tp!1097562 () Bool)

(assert (=> b!3585058 (= e!2218192 (and tp!1097561 tp!1097562))))

(declare-fun b!3585057 () Bool)

(declare-fun tp!1097560 () Bool)

(assert (=> b!3585057 (= e!2218192 tp!1097560)))

(assert (=> b!3584119 (= tp!1097329 e!2218192)))

(assert (= (and b!3584119 ((_ is ElementMatch!10315) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) b!3585055))

(assert (= (and b!3584119 ((_ is Concat!16102) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) b!3585056))

(assert (= (and b!3584119 ((_ is Star!10315) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) b!3585057))

(assert (= (and b!3584119 ((_ is Union!10315) (regOne!21142 (regex!5556 anOtherTypeRule!33)))) b!3585058))

(declare-fun b!3585059 () Bool)

(declare-fun e!2218193 () Bool)

(assert (=> b!3585059 (= e!2218193 tp_is_empty!17713)))

(declare-fun b!3585060 () Bool)

(declare-fun tp!1097569 () Bool)

(declare-fun tp!1097568 () Bool)

(assert (=> b!3585060 (= e!2218193 (and tp!1097569 tp!1097568))))

(declare-fun b!3585062 () Bool)

(declare-fun tp!1097566 () Bool)

(declare-fun tp!1097567 () Bool)

(assert (=> b!3585062 (= e!2218193 (and tp!1097566 tp!1097567))))

(declare-fun b!3585061 () Bool)

(declare-fun tp!1097565 () Bool)

(assert (=> b!3585061 (= e!2218193 tp!1097565)))

(assert (=> b!3584119 (= tp!1097328 e!2218193)))

(assert (= (and b!3584119 ((_ is ElementMatch!10315) (regTwo!21142 (regex!5556 anOtherTypeRule!33)))) b!3585059))

(assert (= (and b!3584119 ((_ is Concat!16102) (regTwo!21142 (regex!5556 anOtherTypeRule!33)))) b!3585060))

(assert (= (and b!3584119 ((_ is Star!10315) (regTwo!21142 (regex!5556 anOtherTypeRule!33)))) b!3585061))

(assert (= (and b!3584119 ((_ is Union!10315) (regTwo!21142 (regex!5556 anOtherTypeRule!33)))) b!3585062))

(declare-fun b!3585063 () Bool)

(declare-fun e!2218194 () Bool)

(assert (=> b!3585063 (= e!2218194 tp_is_empty!17713)))

(declare-fun b!3585064 () Bool)

(declare-fun tp!1097574 () Bool)

(declare-fun tp!1097573 () Bool)

(assert (=> b!3585064 (= e!2218194 (and tp!1097574 tp!1097573))))

(declare-fun b!3585066 () Bool)

(declare-fun tp!1097571 () Bool)

(declare-fun tp!1097572 () Bool)

(assert (=> b!3585066 (= e!2218194 (and tp!1097571 tp!1097572))))

(declare-fun b!3585065 () Bool)

(declare-fun tp!1097570 () Bool)

(assert (=> b!3585065 (= e!2218194 tp!1097570)))

(assert (=> b!3584123 (= tp!1097334 e!2218194)))

(assert (= (and b!3584123 ((_ is ElementMatch!10315) (regOne!21142 (regex!5556 rule!403)))) b!3585063))

(assert (= (and b!3584123 ((_ is Concat!16102) (regOne!21142 (regex!5556 rule!403)))) b!3585064))

(assert (= (and b!3584123 ((_ is Star!10315) (regOne!21142 (regex!5556 rule!403)))) b!3585065))

(assert (= (and b!3584123 ((_ is Union!10315) (regOne!21142 (regex!5556 rule!403)))) b!3585066))

(declare-fun b!3585067 () Bool)

(declare-fun e!2218195 () Bool)

(assert (=> b!3585067 (= e!2218195 tp_is_empty!17713)))

(declare-fun b!3585068 () Bool)

(declare-fun tp!1097579 () Bool)

(declare-fun tp!1097578 () Bool)

(assert (=> b!3585068 (= e!2218195 (and tp!1097579 tp!1097578))))

(declare-fun b!3585070 () Bool)

(declare-fun tp!1097576 () Bool)

(declare-fun tp!1097577 () Bool)

(assert (=> b!3585070 (= e!2218195 (and tp!1097576 tp!1097577))))

(declare-fun b!3585069 () Bool)

(declare-fun tp!1097575 () Bool)

(assert (=> b!3585069 (= e!2218195 tp!1097575)))

(assert (=> b!3584123 (= tp!1097333 e!2218195)))

(assert (= (and b!3584123 ((_ is ElementMatch!10315) (regTwo!21142 (regex!5556 rule!403)))) b!3585067))

(assert (= (and b!3584123 ((_ is Concat!16102) (regTwo!21142 (regex!5556 rule!403)))) b!3585068))

(assert (= (and b!3584123 ((_ is Star!10315) (regTwo!21142 (regex!5556 rule!403)))) b!3585069))

(assert (= (and b!3584123 ((_ is Union!10315) (regTwo!21142 (regex!5556 rule!403)))) b!3585070))

(declare-fun b!3585071 () Bool)

(declare-fun e!2218196 () Bool)

(assert (=> b!3585071 (= e!2218196 tp_is_empty!17713)))

(declare-fun b!3585072 () Bool)

(declare-fun tp!1097584 () Bool)

(declare-fun tp!1097583 () Bool)

(assert (=> b!3585072 (= e!2218196 (and tp!1097584 tp!1097583))))

(declare-fun b!3585074 () Bool)

(declare-fun tp!1097581 () Bool)

(declare-fun tp!1097582 () Bool)

(assert (=> b!3585074 (= e!2218196 (and tp!1097581 tp!1097582))))

(declare-fun b!3585073 () Bool)

(declare-fun tp!1097580 () Bool)

(assert (=> b!3585073 (= e!2218196 tp!1097580)))

(assert (=> b!3584102 (= tp!1097309 e!2218196)))

(assert (= (and b!3584102 ((_ is ElementMatch!10315) (regex!5556 (h!43091 (t!290424 rules!3307))))) b!3585071))

(assert (= (and b!3584102 ((_ is Concat!16102) (regex!5556 (h!43091 (t!290424 rules!3307))))) b!3585072))

(assert (= (and b!3584102 ((_ is Star!10315) (regex!5556 (h!43091 (t!290424 rules!3307))))) b!3585073))

(assert (= (and b!3584102 ((_ is Union!10315) (regex!5556 (h!43091 (t!290424 rules!3307))))) b!3585074))

(check-sat (not b!3584973) (not b!3585008) (not b!3585070) (not b!3584778) (not b_lambda!105921) (not b!3584930) (not b!3584752) (not b!3585033) (not tb!204491) (not b!3584901) (not b!3584786) (not b!3584824) (not d!1056983) (not b_next!92967) (not b!3584950) (not b!3585028) (not b!3584761) (not b!3584971) (not b!3584455) (not b!3584899) (not b!3584968) (not b!3585016) (not b!3585044) (not d!1056903) (not b!3584430) (not d!1056957) (not bm!259560) (not d!1056951) (not b!3584141) b_and!258845 (not b!3584745) (not bm!259552) (not b!3584456) (not d!1057027) (not b!3584912) (not b!3584972) (not b!3584978) (not d!1056667) (not d!1057061) (not d!1056939) (not tb!204461) (not b!3584823) (not b!3584768) (not b!3584980) (not b!3584817) (not d!1056669) b_and!258841 (not b!3584334) (not d!1056777) (not b!3584826) (not b!3584997) (not b!3584813) (not b!3584818) (not d!1057007) (not b!3585007) b_and!258865 (not b!3584782) (not bm!259537) (not b!3584976) (not b!3585069) (not b!3585012) (not bm!259539) (not d!1056929) (not b!3585041) (not b_next!92957) (not b!3584860) (not d!1056963) (not b!3584946) (not b!3584988) (not d!1056971) (not b!3584948) (not bm!259564) (not d!1056833) (not b!3584994) (not b!3584776) (not d!1056977) (not b!3585013) (not d!1057069) (not tb!204475) (not b!3584981) (not b_lambda!105915) (not bm!259556) (not bm!259566) (not bm!259535) (not b!3584775) (not b!3585064) (not d!1057063) (not d!1057059) (not d!1056979) (not b!3584945) b_and!258869 (not b!3584990) (not bm!259536) (not b!3584967) (not b_next!92939) (not b!3584800) (not b!3584741) (not b!3584938) (not b!3584922) (not b!3585050) (not b!3584940) (not b!3584974) (not b!3584964) (not b!3584731) (not d!1056835) (not b!3585017) (not b!3584739) (not d!1057029) (not b!3584969) (not b!3584780) (not d!1056987) (not b!3584911) (not b!3585062) (not d!1056949) (not bm!259569) (not b!3584919) (not bm!259557) (not b!3584939) (not b_next!92941) (not b!3584996) (not bm!259562) b_and!258867 (not b!3584763) (not b!3585048) (not b!3584573) (not b!3584423) (not d!1056827) (not b!3584959) (not b!3584575) (not bm!259553) (not d!1057037) (not d!1057047) (not d!1056959) (not b!3584424) (not b!3584963) (not b!3585009) (not d!1057039) (not b!3584908) (not b!3584941) (not b_next!92951) (not b!3584441) (not d!1056931) (not b!3584351) (not b!3584993) (not b!3584427) (not d!1056943) (not b!3584928) (not b!3584576) (not b!3585074) (not b!3584810) (not d!1056995) (not b!3584743) (not b!3584814) (not b!3585029) (not b!3584937) (not d!1056941) (not b!3584767) b_and!258861 (not b!3584900) (not bm!259551) (not d!1056967) (not b!3584770) (not d!1057013) (not b!3585025) (not b!3584429) (not d!1056933) (not b!3584943) (not b!3584975) (not b!3584956) (not b!3584924) (not b!3584729) (not d!1056981) b_and!258843 (not b_next!92949) (not bm!259558) (not d!1057065) tp_is_empty!17713 (not d!1057057) (not b_next!92945) (not b!3585053) (not bm!259565) (not d!1056937) (not d!1057023) (not b!3584929) (not b!3584986) (not b!3585036) (not b!3584769) (not b!3585038) (not b!3585045) (not b_lambda!105917) (not d!1056927) (not b!3584944) (not b!3584982) (not b!3585056) (not b!3585020) (not b!3584784) (not b_next!92965) (not b!3584733) (not b!3585061) (not b!3585021) (not b!3584998) (not d!1056947) (not b!3584809) (not bm!259554) (not b!3585019) (not b!3585066) (not b!3585049) (not b!3584142) (not b!3584832) (not b!3584966) (not b!3584825) (not b!3584989) (not b_lambda!105919) (not b!3584984) (not d!1056965) (not bm!259561) (not b!3585024) (not b!3585026) (not b_next!92937) b_and!258859 (not d!1057021) (not d!1056975) (not b!3585022) (not b!3584985) (not b!3584422) (not d!1057005) (not b!3584953) (not b!3585030) (not b!3585034) (not b!3584914) (not b!3584992) (not b!3585052) (not b!3585068) (not bm!259538) (not d!1057043) (not b!3584333) (not b!3585054) (not b!3585058) (not b!3584760) (not d!1057035) (not d!1056795) (not b_lambda!105905) (not b!3585032) (not b!3584428) (not b!3584955) (not b!3585040) (not b_next!92947) (not d!1057019) (not b_next!92943) (not b!3584931) (not b!3585073) (not b!3584961) (not b!3584881) b_and!258857 (not b!3585057) (not b_lambda!105903) (not b!3584748) (not b!3584572) (not b!3585015) (not b!3584926) (not b!3584798) (not b!3584960) (not b!3584807) (not d!1057003) (not b!3584910) (not b!3585046) (not b!3584140) (not b!3584831) (not d!1057017) (not b!3584350) (not b!3584753) (not d!1057041) (not b!3584923) (not b!3584925) (not b!3584754) (not d!1056961) (not d!1056923) (not b!3584352) (not b!3584755) (not b!3584920) (not b!3584747) (not tb!204501) (not b!3585011) (not bm!259548) b_and!258839 (not d!1056955) (not b!3585042) (not b!3585037) (not bm!259510) (not bm!259568) (not d!1056935) (not b!3584717) (not b!3584799) (not d!1056985) (not b_next!92959) (not b!3583818) (not d!1057053) b_and!258837 (not b!3584425) (not b!3585065) b_and!258863 (not b!3585072) (not b!3585060) (not d!1057067))
(check-sat (not b_next!92967) b_and!258845 b_and!258841 b_and!258865 (not b_next!92957) b_and!258869 (not b_next!92939) (not b_next!92951) b_and!258861 b_and!258843 (not b_next!92965) b_and!258857 (not b_next!92941) b_and!258867 (not b_next!92949) (not b_next!92945) (not b_next!92937) b_and!258859 (not b_next!92947) (not b_next!92943) b_and!258839 (not b_next!92959) b_and!258837 b_and!258863)
