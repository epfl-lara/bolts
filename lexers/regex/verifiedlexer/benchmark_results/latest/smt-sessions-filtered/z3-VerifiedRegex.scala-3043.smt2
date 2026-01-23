; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182154 () Bool)

(assert start!182154)

(declare-fun b!1834103 () Bool)

(declare-fun b_free!51371 () Bool)

(declare-fun b_next!52075 () Bool)

(assert (=> b!1834103 (= b_free!51371 (not b_next!52075))))

(declare-fun tp!518950 () Bool)

(declare-fun b_and!142985 () Bool)

(assert (=> b!1834103 (= tp!518950 b_and!142985)))

(declare-fun b_free!51373 () Bool)

(declare-fun b_next!52077 () Bool)

(assert (=> b!1834103 (= b_free!51373 (not b_next!52077))))

(declare-fun tp!518944 () Bool)

(declare-fun b_and!142987 () Bool)

(assert (=> b!1834103 (= tp!518944 b_and!142987)))

(declare-fun b!1834110 () Bool)

(declare-fun b_free!51375 () Bool)

(declare-fun b_next!52079 () Bool)

(assert (=> b!1834110 (= b_free!51375 (not b_next!52079))))

(declare-fun tp!518954 () Bool)

(declare-fun b_and!142989 () Bool)

(assert (=> b!1834110 (= tp!518954 b_and!142989)))

(declare-fun b_free!51377 () Bool)

(declare-fun b_next!52081 () Bool)

(assert (=> b!1834110 (= b_free!51377 (not b_next!52081))))

(declare-fun tp!518953 () Bool)

(declare-fun b_and!142991 () Bool)

(assert (=> b!1834110 (= tp!518953 b_and!142991)))

(declare-fun b!1834102 () Bool)

(declare-fun b_free!51379 () Bool)

(declare-fun b_next!52083 () Bool)

(assert (=> b!1834102 (= b_free!51379 (not b_next!52083))))

(declare-fun tp!518951 () Bool)

(declare-fun b_and!142993 () Bool)

(assert (=> b!1834102 (= tp!518951 b_and!142993)))

(declare-fun b_free!51381 () Bool)

(declare-fun b_next!52085 () Bool)

(assert (=> b!1834102 (= b_free!51381 (not b_next!52085))))

(declare-fun tp!518940 () Bool)

(declare-fun b_and!142995 () Bool)

(assert (=> b!1834102 (= tp!518940 b_and!142995)))

(declare-fun b!1834113 () Bool)

(declare-fun b_free!51383 () Bool)

(declare-fun b_next!52087 () Bool)

(assert (=> b!1834113 (= b_free!51383 (not b_next!52087))))

(declare-fun tp!518952 () Bool)

(declare-fun b_and!142997 () Bool)

(assert (=> b!1834113 (= tp!518952 b_and!142997)))

(declare-fun b_free!51385 () Bool)

(declare-fun b_next!52089 () Bool)

(assert (=> b!1834113 (= b_free!51385 (not b_next!52089))))

(declare-fun tp!518956 () Bool)

(declare-fun b_and!142999 () Bool)

(assert (=> b!1834113 (= tp!518956 b_and!142999)))

(declare-fun e!1172225 () Bool)

(assert (=> b!1834102 (= e!1172225 (and tp!518951 tp!518940))))

(declare-fun e!1172224 () Bool)

(assert (=> b!1834103 (= e!1172224 (and tp!518950 tp!518944))))

(declare-fun e!1172223 () Bool)

(declare-fun e!1172221 () Bool)

(declare-datatypes ((List!20243 0))(
  ( (Nil!20173) (Cons!20173 (h!25574 (_ BitVec 16)) (t!171044 List!20243)) )
))
(declare-datatypes ((TokenValue!3737 0))(
  ( (FloatLiteralValue!7474 (text!26604 List!20243)) (TokenValueExt!3736 (__x!12776 Int)) (Broken!18685 (value!113580 List!20243)) (Object!3806) (End!3737) (Def!3737) (Underscore!3737) (Match!3737) (Else!3737) (Error!3737) (Case!3737) (If!3737) (Extends!3737) (Abstract!3737) (Class!3737) (Val!3737) (DelimiterValue!7474 (del!3797 List!20243)) (KeywordValue!3743 (value!113581 List!20243)) (CommentValue!7474 (value!113582 List!20243)) (WhitespaceValue!7474 (value!113583 List!20243)) (IndentationValue!3737 (value!113584 List!20243)) (String!23016) (Int32!3737) (Broken!18686 (value!113585 List!20243)) (Boolean!3738) (Unit!34850) (OperatorValue!3740 (op!3797 List!20243)) (IdentifierValue!7474 (value!113586 List!20243)) (IdentifierValue!7475 (value!113587 List!20243)) (WhitespaceValue!7475 (value!113588 List!20243)) (True!7474) (False!7474) (Broken!18687 (value!113589 List!20243)) (Broken!18688 (value!113590 List!20243)) (True!7475) (RightBrace!3737) (RightBracket!3737) (Colon!3737) (Null!3737) (Comma!3737) (LeftBracket!3737) (False!7475) (LeftBrace!3737) (ImaginaryLiteralValue!3737 (text!26605 List!20243)) (StringLiteralValue!11211 (value!113591 List!20243)) (EOFValue!3737 (value!113592 List!20243)) (IdentValue!3737 (value!113593 List!20243)) (DelimiterValue!7475 (value!113594 List!20243)) (DedentValue!3737 (value!113595 List!20243)) (NewLineValue!3737 (value!113596 List!20243)) (IntegerValue!11211 (value!113597 (_ BitVec 32)) (text!26606 List!20243)) (IntegerValue!11212 (value!113598 Int) (text!26607 List!20243)) (Times!3737) (Or!3737) (Equal!3737) (Minus!3737) (Broken!18689 (value!113599 List!20243)) (And!3737) (Div!3737) (LessEqual!3737) (Mod!3737) (Concat!8712) (Not!3737) (Plus!3737) (SpaceValue!3737 (value!113600 List!20243)) (IntegerValue!11213 (value!113601 Int) (text!26608 List!20243)) (StringLiteralValue!11212 (text!26609 List!20243)) (FloatLiteralValue!7475 (text!26610 List!20243)) (BytesLiteralValue!3737 (value!113602 List!20243)) (CommentValue!7475 (value!113603 List!20243)) (StringLiteralValue!11213 (value!113604 List!20243)) (ErrorTokenValue!3737 (msg!3798 List!20243)) )
))
(declare-datatypes ((C!10124 0))(
  ( (C!10125 (val!5658 Int)) )
))
(declare-datatypes ((List!20244 0))(
  ( (Nil!20174) (Cons!20174 (h!25575 C!10124) (t!171045 List!20244)) )
))
(declare-datatypes ((IArray!13363 0))(
  ( (IArray!13364 (innerList!6739 List!20244)) )
))
(declare-datatypes ((Conc!6679 0))(
  ( (Node!6679 (left!16120 Conc!6679) (right!16450 Conc!6679) (csize!13588 Int) (cheight!6890 Int)) (Leaf!9723 (xs!9555 IArray!13363) (csize!13589 Int)) (Empty!6679) )
))
(declare-datatypes ((BalanceConc!13302 0))(
  ( (BalanceConc!13303 (c!299104 Conc!6679)) )
))
(declare-datatypes ((TokenValueInjection!7134 0))(
  ( (TokenValueInjection!7135 (toValue!5194 Int) (toChars!5053 Int)) )
))
(declare-datatypes ((Regex!4975 0))(
  ( (ElementMatch!4975 (c!299105 C!10124)) (Concat!8713 (regOne!10462 Regex!4975) (regTwo!10462 Regex!4975)) (EmptyExpr!4975) (Star!4975 (reg!5304 Regex!4975)) (EmptyLang!4975) (Union!4975 (regOne!10463 Regex!4975) (regTwo!10463 Regex!4975)) )
))
(declare-datatypes ((String!23017 0))(
  ( (String!23018 (value!113605 String)) )
))
(declare-datatypes ((Rule!7094 0))(
  ( (Rule!7095 (regex!3647 Regex!4975) (tag!4061 String!23017) (isSeparator!3647 Bool) (transformation!3647 TokenValueInjection!7134)) )
))
(declare-datatypes ((List!20245 0))(
  ( (Nil!20175) (Cons!20175 (h!25576 Rule!7094) (t!171046 List!20245)) )
))
(declare-fun rules!4610 () List!20245)

(declare-fun tp!518947 () Bool)

(declare-fun b!1834104 () Bool)

(declare-fun inv!26239 (String!23017) Bool)

(declare-fun inv!26242 (TokenValueInjection!7134) Bool)

(assert (=> b!1834104 (= e!1172221 (and tp!518947 (inv!26239 (tag!4061 (h!25576 rules!4610))) (inv!26242 (transformation!3647 (h!25576 rules!4610))) e!1172223))))

(declare-fun e!1172236 () Bool)

(declare-fun tp!518945 () Bool)

(declare-fun rs!808 () List!20245)

(declare-fun b!1834105 () Bool)

(assert (=> b!1834105 (= e!1172236 (and tp!518945 (inv!26239 (tag!4061 (h!25576 rs!808))) (inv!26242 (transformation!3647 (h!25576 rs!808))) e!1172224))))

(declare-fun b!1834106 () Bool)

(declare-fun res!824754 () Bool)

(declare-fun e!1172215 () Bool)

(assert (=> b!1834106 (=> res!824754 e!1172215)))

(declare-fun rule!580 () Rule!7094)

(declare-fun lt!711970 () List!20244)

(declare-fun matchR!2438 (Regex!4975 List!20244) Bool)

(assert (=> b!1834106 (= res!824754 (not (matchR!2438 (regex!3647 rule!580) lt!711970)))))

(declare-fun b!1834107 () Bool)

(declare-fun res!824749 () Bool)

(declare-fun e!1172235 () Bool)

(assert (=> b!1834107 (=> (not res!824749) (not e!1172235))))

(declare-fun e!1172226 () Bool)

(assert (=> b!1834107 (= res!824749 e!1172226)))

(declare-fun res!824751 () Bool)

(assert (=> b!1834107 (=> (not res!824751) (not e!1172226))))

(declare-fun lt!711966 () List!20244)

(declare-fun suffix!1698 () List!20244)

(declare-fun input!3681 () List!20244)

(declare-fun ++!5471 (List!20244 List!20244) List!20244)

(assert (=> b!1834107 (= res!824751 (= input!3681 (++!5471 lt!711966 suffix!1698)))))

(declare-datatypes ((Token!6848 0))(
  ( (Token!6849 (value!113606 TokenValue!3737) (rule!5831 Rule!7094) (size!16001 Int) (originalCharacters!4455 List!20244)) )
))
(declare-fun token!567 () Token!6848)

(declare-fun list!8197 (BalanceConc!13302) List!20244)

(declare-fun charsOf!2290 (Token!6848) BalanceConc!13302)

(assert (=> b!1834107 (= lt!711966 (list!8197 (charsOf!2290 token!567)))))

(declare-fun b!1834108 () Bool)

(declare-fun e!1172234 () Bool)

(assert (=> b!1834108 (= e!1172215 e!1172234)))

(declare-fun res!824750 () Bool)

(assert (=> b!1834108 (=> res!824750 e!1172234)))

(declare-fun lambda!72098 () Int)

(declare-datatypes ((LexerInterface!3276 0))(
  ( (LexerInterfaceExt!3273 (__x!12777 Int)) (Lexer!3274) )
))
(declare-fun thiss!28318 () LexerInterface!3276)

(declare-fun rulesRegex!967 (LexerInterface!3276 List!20245) Regex!4975)

(declare-datatypes ((List!20246 0))(
  ( (Nil!20176) (Cons!20176 (h!25577 Regex!4975) (t!171047 List!20246)) )
))
(declare-fun generalisedUnion!490 (List!20246) Regex!4975)

(declare-fun map!4189 (List!20245 Int) List!20246)

(assert (=> b!1834108 (= res!824750 (not (= (rulesRegex!967 thiss!28318 rules!4610) (generalisedUnion!490 (map!4189 rules!4610 lambda!72098)))))))

(declare-datatypes ((Unit!34851 0))(
  ( (Unit!34852) )
))
(declare-fun lt!711962 () Unit!34851)

(declare-fun lemma!547 (List!20244 Rule!7094 List!20245 List!20244 LexerInterface!3276 Token!6848 List!20245) Unit!34851)

(assert (=> b!1834108 (= lt!711962 (lemma!547 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(assert (=> b!1834110 (= e!1172223 (and tp!518954 tp!518953))))

(declare-fun b!1834111 () Bool)

(declare-fun res!824758 () Bool)

(assert (=> b!1834111 (=> res!824758 e!1172234)))

(declare-fun rulesValid!1394 (LexerInterface!3276 List!20245) Bool)

(assert (=> b!1834111 (= res!824758 (not (rulesValid!1394 thiss!28318 rs!808)))))

(declare-fun b!1834112 () Bool)

(declare-fun res!824762 () Bool)

(assert (=> b!1834112 (=> (not res!824762) (not e!1172235))))

(assert (=> b!1834112 (= res!824762 (= (rule!5831 token!567) rule!580))))

(declare-fun e!1172219 () Bool)

(assert (=> b!1834113 (= e!1172219 (and tp!518952 tp!518956))))

(declare-fun b!1834114 () Bool)

(declare-fun res!824756 () Bool)

(assert (=> b!1834114 (=> res!824756 e!1172234)))

(get-info :version)

(assert (=> b!1834114 (= res!824756 (or (not ((_ is Cons!20175) rs!808)) (= (h!25576 rs!808) rule!580)))))

(declare-fun b!1834115 () Bool)

(declare-fun res!824752 () Bool)

(assert (=> b!1834115 (=> (not res!824752) (not e!1172235))))

(declare-datatypes ((tuple2!19626 0))(
  ( (tuple2!19627 (_1!11215 Token!6848) (_2!11215 List!20244)) )
))
(declare-datatypes ((Option!4227 0))(
  ( (None!4226) (Some!4226 (v!25805 tuple2!19626)) )
))
(declare-fun maxPrefix!1824 (LexerInterface!3276 List!20245 List!20244) Option!4227)

(assert (=> b!1834115 (= res!824752 (= (maxPrefix!1824 thiss!28318 rules!4610 input!3681) (Some!4226 (tuple2!19627 token!567 suffix!1698))))))

(declare-fun tp!518942 () Bool)

(declare-fun e!1172231 () Bool)

(declare-fun e!1172228 () Bool)

(declare-fun b!1834116 () Bool)

(declare-fun inv!21 (TokenValue!3737) Bool)

(assert (=> b!1834116 (= e!1172228 (and (inv!21 (value!113606 token!567)) e!1172231 tp!518942))))

(declare-fun b!1834117 () Bool)

(assert (=> b!1834117 (= e!1172235 (not e!1172215))))

(declare-fun res!824760 () Bool)

(assert (=> b!1834117 (=> res!824760 e!1172215)))

(declare-fun lt!711969 () Option!4227)

(assert (=> b!1834117 (= res!824760 (not (= lt!711969 (Some!4226 (tuple2!19627 token!567 suffix!1698)))))))

(declare-fun lt!711965 () Int)

(declare-fun lt!711967 () TokenValue!3737)

(assert (=> b!1834117 (= lt!711969 (Some!4226 (tuple2!19627 (Token!6849 lt!711967 rule!580 lt!711965 lt!711970) suffix!1698)))))

(declare-fun maxPrefixOneRule!1185 (LexerInterface!3276 Rule!7094 List!20244) Option!4227)

(assert (=> b!1834117 (= lt!711969 (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681))))

(declare-fun size!16002 (List!20244) Int)

(assert (=> b!1834117 (= lt!711965 (size!16002 lt!711970))))

(declare-fun apply!5435 (TokenValueInjection!7134 BalanceConc!13302) TokenValue!3737)

(declare-fun seqFromList!2604 (List!20244) BalanceConc!13302)

(assert (=> b!1834117 (= lt!711967 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!711970)))))

(declare-fun lt!711964 () Unit!34851)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 (LexerInterface!3276 List!20245 List!20244 List!20244 List!20244 Rule!7094) Unit!34851)

(assert (=> b!1834117 (= lt!711964 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 thiss!28318 rules!4610 lt!711970 input!3681 suffix!1698 rule!580))))

(assert (=> b!1834117 (= lt!711970 (list!8197 (charsOf!2290 token!567)))))

(declare-fun b!1834118 () Bool)

(declare-fun e!1172232 () Bool)

(declare-fun tp_is_empty!8185 () Bool)

(declare-fun tp!518955 () Bool)

(assert (=> b!1834118 (= e!1172232 (and tp_is_empty!8185 tp!518955))))

(declare-fun b!1834119 () Bool)

(declare-fun res!824761 () Bool)

(assert (=> b!1834119 (=> (not res!824761) (not e!1172235))))

(declare-fun contains!3724 (List!20245 Rule!7094) Bool)

(assert (=> b!1834119 (= res!824761 (contains!3724 rules!4610 rule!580))))

(declare-fun tp!518949 () Bool)

(declare-fun b!1834120 () Bool)

(assert (=> b!1834120 (= e!1172231 (and tp!518949 (inv!26239 (tag!4061 (rule!5831 token!567))) (inv!26242 (transformation!3647 (rule!5831 token!567))) e!1172225))))

(declare-fun b!1834121 () Bool)

(declare-fun res!824757 () Bool)

(assert (=> b!1834121 (=> (not res!824757) (not e!1172235))))

(declare-fun rulesInvariant!2945 (LexerInterface!3276 List!20245) Bool)

(assert (=> b!1834121 (= res!824757 (rulesInvariant!2945 thiss!28318 rules!4610))))

(declare-fun tp!518943 () Bool)

(declare-fun e!1172222 () Bool)

(declare-fun b!1834122 () Bool)

(assert (=> b!1834122 (= e!1172222 (and tp!518943 (inv!26239 (tag!4061 rule!580)) (inv!26242 (transformation!3647 rule!580)) e!1172219))))

(declare-fun b!1834123 () Bool)

(declare-fun e!1172220 () Bool)

(declare-fun tp!518946 () Bool)

(assert (=> b!1834123 (= e!1172220 (and e!1172236 tp!518946))))

(declare-fun b!1834124 () Bool)

(assert (=> b!1834124 (= e!1172226 (not (not (matchR!2438 (regex!3647 rule!580) lt!711966))))))

(declare-fun ruleValid!1137 (LexerInterface!3276 Rule!7094) Bool)

(assert (=> b!1834124 (ruleValid!1137 thiss!28318 rule!580)))

(declare-fun lt!711968 () Unit!34851)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!656 (LexerInterface!3276 Rule!7094 List!20245) Unit!34851)

(assert (=> b!1834124 (= lt!711968 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!656 thiss!28318 rule!580 rules!4610))))

(declare-fun b!1834109 () Bool)

(declare-fun contains!3725 (List!20246 Regex!4975) Bool)

(assert (=> b!1834109 (= e!1172234 (contains!3725 (map!4189 rs!808 lambda!72098) (regex!3647 rule!580)))))

(declare-fun lt!711963 () Unit!34851)

(declare-fun lemma!548 (List!20244 Rule!7094 List!20245 List!20244 LexerInterface!3276 Token!6848 List!20245) Unit!34851)

(assert (=> b!1834109 (= lt!711963 (lemma!548 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171046 rs!808)))))

(declare-fun res!824759 () Bool)

(assert (=> start!182154 (=> (not res!824759) (not e!1172235))))

(assert (=> start!182154 (= res!824759 ((_ is Lexer!3274) thiss!28318))))

(assert (=> start!182154 e!1172235))

(assert (=> start!182154 e!1172222))

(declare-fun inv!26243 (Token!6848) Bool)

(assert (=> start!182154 (and (inv!26243 token!567) e!1172228)))

(assert (=> start!182154 true))

(declare-fun e!1172217 () Bool)

(assert (=> start!182154 e!1172217))

(assert (=> start!182154 e!1172232))

(declare-fun e!1172233 () Bool)

(assert (=> start!182154 e!1172233))

(assert (=> start!182154 e!1172220))

(declare-fun b!1834125 () Bool)

(declare-fun tp!518948 () Bool)

(assert (=> b!1834125 (= e!1172217 (and tp_is_empty!8185 tp!518948))))

(declare-fun b!1834126 () Bool)

(declare-fun res!824753 () Bool)

(assert (=> b!1834126 (=> (not res!824753) (not e!1172235))))

(declare-fun isEmpty!12737 (List!20245) Bool)

(assert (=> b!1834126 (= res!824753 (not (isEmpty!12737 rules!4610)))))

(declare-fun b!1834127 () Bool)

(declare-fun tp!518941 () Bool)

(assert (=> b!1834127 (= e!1172233 (and e!1172221 tp!518941))))

(declare-fun b!1834128 () Bool)

(declare-fun res!824755 () Bool)

(assert (=> b!1834128 (=> res!824755 e!1172234)))

(assert (=> b!1834128 (= res!824755 (not (contains!3724 rs!808 rule!580)))))

(assert (= (and start!182154 res!824759) b!1834126))

(assert (= (and b!1834126 res!824753) b!1834121))

(assert (= (and b!1834121 res!824757) b!1834119))

(assert (= (and b!1834119 res!824761) b!1834115))

(assert (= (and b!1834115 res!824752) b!1834112))

(assert (= (and b!1834112 res!824762) b!1834107))

(assert (= (and b!1834107 res!824751) b!1834124))

(assert (= (and b!1834107 res!824749) b!1834117))

(assert (= (and b!1834117 (not res!824760)) b!1834106))

(assert (= (and b!1834106 (not res!824754)) b!1834108))

(assert (= (and b!1834108 (not res!824750)) b!1834111))

(assert (= (and b!1834111 (not res!824758)) b!1834128))

(assert (= (and b!1834128 (not res!824755)) b!1834114))

(assert (= (and b!1834114 (not res!824756)) b!1834109))

(assert (= b!1834122 b!1834113))

(assert (= start!182154 b!1834122))

(assert (= b!1834120 b!1834102))

(assert (= b!1834116 b!1834120))

(assert (= start!182154 b!1834116))

(assert (= (and start!182154 ((_ is Cons!20174) suffix!1698)) b!1834125))

(assert (= (and start!182154 ((_ is Cons!20174) input!3681)) b!1834118))

(assert (= b!1834104 b!1834110))

(assert (= b!1834127 b!1834104))

(assert (= (and start!182154 ((_ is Cons!20175) rules!4610)) b!1834127))

(assert (= b!1834105 b!1834103))

(assert (= b!1834123 b!1834105))

(assert (= (and start!182154 ((_ is Cons!20175) rs!808)) b!1834123))

(declare-fun m!2261703 () Bool)

(assert (=> start!182154 m!2261703))

(declare-fun m!2261705 () Bool)

(assert (=> b!1834109 m!2261705))

(assert (=> b!1834109 m!2261705))

(declare-fun m!2261707 () Bool)

(assert (=> b!1834109 m!2261707))

(declare-fun m!2261709 () Bool)

(assert (=> b!1834109 m!2261709))

(declare-fun m!2261711 () Bool)

(assert (=> b!1834104 m!2261711))

(declare-fun m!2261713 () Bool)

(assert (=> b!1834104 m!2261713))

(declare-fun m!2261715 () Bool)

(assert (=> b!1834121 m!2261715))

(declare-fun m!2261717 () Bool)

(assert (=> b!1834116 m!2261717))

(declare-fun m!2261719 () Bool)

(assert (=> b!1834126 m!2261719))

(declare-fun m!2261721 () Bool)

(assert (=> b!1834122 m!2261721))

(declare-fun m!2261723 () Bool)

(assert (=> b!1834122 m!2261723))

(declare-fun m!2261725 () Bool)

(assert (=> b!1834120 m!2261725))

(declare-fun m!2261727 () Bool)

(assert (=> b!1834120 m!2261727))

(declare-fun m!2261729 () Bool)

(assert (=> b!1834124 m!2261729))

(declare-fun m!2261731 () Bool)

(assert (=> b!1834124 m!2261731))

(declare-fun m!2261733 () Bool)

(assert (=> b!1834124 m!2261733))

(declare-fun m!2261735 () Bool)

(assert (=> b!1834107 m!2261735))

(declare-fun m!2261737 () Bool)

(assert (=> b!1834107 m!2261737))

(assert (=> b!1834107 m!2261737))

(declare-fun m!2261739 () Bool)

(assert (=> b!1834107 m!2261739))

(declare-fun m!2261741 () Bool)

(assert (=> b!1834117 m!2261741))

(declare-fun m!2261743 () Bool)

(assert (=> b!1834117 m!2261743))

(assert (=> b!1834117 m!2261743))

(declare-fun m!2261745 () Bool)

(assert (=> b!1834117 m!2261745))

(assert (=> b!1834117 m!2261737))

(assert (=> b!1834117 m!2261739))

(declare-fun m!2261747 () Bool)

(assert (=> b!1834117 m!2261747))

(assert (=> b!1834117 m!2261737))

(declare-fun m!2261749 () Bool)

(assert (=> b!1834117 m!2261749))

(declare-fun m!2261751 () Bool)

(assert (=> b!1834105 m!2261751))

(declare-fun m!2261753 () Bool)

(assert (=> b!1834105 m!2261753))

(declare-fun m!2261755 () Bool)

(assert (=> b!1834115 m!2261755))

(declare-fun m!2261757 () Bool)

(assert (=> b!1834106 m!2261757))

(declare-fun m!2261759 () Bool)

(assert (=> b!1834111 m!2261759))

(declare-fun m!2261761 () Bool)

(assert (=> b!1834119 m!2261761))

(declare-fun m!2261763 () Bool)

(assert (=> b!1834128 m!2261763))

(declare-fun m!2261765 () Bool)

(assert (=> b!1834108 m!2261765))

(declare-fun m!2261767 () Bool)

(assert (=> b!1834108 m!2261767))

(assert (=> b!1834108 m!2261767))

(declare-fun m!2261769 () Bool)

(assert (=> b!1834108 m!2261769))

(declare-fun m!2261771 () Bool)

(assert (=> b!1834108 m!2261771))

(check-sat (not b_next!52077) (not b!1834104) (not b!1834125) b_and!142989 (not b_next!52083) (not b!1834106) (not b!1834120) b_and!142997 (not b_next!52079) (not b!1834116) (not b!1834128) b_and!142993 b_and!142987 (not b!1834111) (not b!1834123) (not b!1834105) (not b!1834109) (not b!1834121) (not b!1834127) tp_is_empty!8185 b_and!142995 (not b!1834115) (not start!182154) (not b!1834118) b_and!142991 b_and!142999 (not b!1834124) (not b!1834126) (not b!1834122) (not b_next!52081) (not b!1834107) (not b!1834117) (not b!1834108) (not b_next!52087) (not b!1834119) (not b_next!52085) b_and!142985 (not b_next!52089) (not b_next!52075))
(check-sat b_and!142987 (not b_next!52077) b_and!142995 b_and!142989 (not b_next!52083) b_and!142997 (not b_next!52079) b_and!142991 b_and!142999 b_and!142993 (not b_next!52081) (not b_next!52087) (not b_next!52085) b_and!142985 (not b_next!52089) (not b_next!52075))
(get-model)

(declare-fun b!1834140 () Bool)

(declare-fun e!1172244 () Bool)

(declare-fun inv!17 (TokenValue!3737) Bool)

(assert (=> b!1834140 (= e!1172244 (inv!17 (value!113606 token!567)))))

(declare-fun b!1834141 () Bool)

(declare-fun e!1172245 () Bool)

(declare-fun inv!16 (TokenValue!3737) Bool)

(assert (=> b!1834141 (= e!1172245 (inv!16 (value!113606 token!567)))))

(declare-fun b!1834142 () Bool)

(assert (=> b!1834142 (= e!1172245 e!1172244)))

(declare-fun c!299111 () Bool)

(assert (=> b!1834142 (= c!299111 ((_ is IntegerValue!11212) (value!113606 token!567)))))

(declare-fun b!1834143 () Bool)

(declare-fun res!824773 () Bool)

(declare-fun e!1172243 () Bool)

(assert (=> b!1834143 (=> res!824773 e!1172243)))

(assert (=> b!1834143 (= res!824773 (not ((_ is IntegerValue!11213) (value!113606 token!567))))))

(assert (=> b!1834143 (= e!1172244 e!1172243)))

(declare-fun b!1834139 () Bool)

(declare-fun inv!15 (TokenValue!3737) Bool)

(assert (=> b!1834139 (= e!1172243 (inv!15 (value!113606 token!567)))))

(declare-fun d!560614 () Bool)

(declare-fun c!299110 () Bool)

(assert (=> d!560614 (= c!299110 ((_ is IntegerValue!11211) (value!113606 token!567)))))

(assert (=> d!560614 (= (inv!21 (value!113606 token!567)) e!1172245)))

(assert (= (and d!560614 c!299110) b!1834141))

(assert (= (and d!560614 (not c!299110)) b!1834142))

(assert (= (and b!1834142 c!299111) b!1834140))

(assert (= (and b!1834142 (not c!299111)) b!1834143))

(assert (= (and b!1834143 (not res!824773)) b!1834139))

(declare-fun m!2261779 () Bool)

(assert (=> b!1834140 m!2261779))

(declare-fun m!2261781 () Bool)

(assert (=> b!1834141 m!2261781))

(declare-fun m!2261783 () Bool)

(assert (=> b!1834139 m!2261783))

(assert (=> b!1834116 d!560614))

(declare-fun d!560616 () Bool)

(declare-fun list!8199 (Conc!6679) List!20244)

(assert (=> d!560616 (= (list!8197 (charsOf!2290 token!567)) (list!8199 (c!299104 (charsOf!2290 token!567))))))

(declare-fun bs!408074 () Bool)

(assert (= bs!408074 d!560616))

(declare-fun m!2261785 () Bool)

(assert (=> bs!408074 m!2261785))

(assert (=> b!1834117 d!560616))

(declare-fun b!1834162 () Bool)

(declare-fun res!824792 () Bool)

(declare-fun e!1172257 () Bool)

(assert (=> b!1834162 (=> (not res!824792) (not e!1172257))))

(declare-fun lt!711984 () Option!4227)

(declare-fun get!6228 (Option!4227) tuple2!19626)

(assert (=> b!1834162 (= res!824792 (< (size!16002 (_2!11215 (get!6228 lt!711984))) (size!16002 input!3681)))))

(declare-fun b!1834163 () Bool)

(assert (=> b!1834163 (= e!1172257 (= (size!16001 (_1!11215 (get!6228 lt!711984))) (size!16002 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984))))))))

(declare-fun b!1834164 () Bool)

(declare-fun e!1172256 () Bool)

(declare-datatypes ((tuple2!19630 0))(
  ( (tuple2!19631 (_1!11217 List!20244) (_2!11217 List!20244)) )
))
(declare-fun findLongestMatchInner!523 (Regex!4975 List!20244 Int List!20244 List!20244 Int) tuple2!19630)

(assert (=> b!1834164 (= e!1172256 (matchR!2438 (regex!3647 rule!580) (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(declare-fun b!1834165 () Bool)

(declare-fun e!1172254 () Bool)

(assert (=> b!1834165 (= e!1172254 e!1172257)))

(declare-fun res!824790 () Bool)

(assert (=> b!1834165 (=> (not res!824790) (not e!1172257))))

(assert (=> b!1834165 (= res!824790 (matchR!2438 (regex!3647 rule!580) (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))))))

(declare-fun b!1834166 () Bool)

(declare-fun res!824791 () Bool)

(assert (=> b!1834166 (=> (not res!824791) (not e!1172257))))

(assert (=> b!1834166 (= res!824791 (= (value!113606 (_1!11215 (get!6228 lt!711984))) (apply!5435 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984)))))))))

(declare-fun b!1834168 () Bool)

(declare-fun e!1172255 () Option!4227)

(declare-fun lt!711987 () tuple2!19630)

(declare-fun size!16006 (BalanceConc!13302) Int)

(assert (=> b!1834168 (= e!1172255 (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 (_1!11217 lt!711987))) rule!580 (size!16006 (seqFromList!2604 (_1!11217 lt!711987))) (_1!11217 lt!711987)) (_2!11217 lt!711987))))))

(declare-fun lt!711988 () Unit!34851)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!507 (Regex!4975 List!20244) Unit!34851)

(assert (=> b!1834168 (= lt!711988 (longestMatchIsAcceptedByMatchOrIsEmpty!507 (regex!3647 rule!580) input!3681))))

(declare-fun res!824788 () Bool)

(declare-fun isEmpty!12741 (List!20244) Bool)

(assert (=> b!1834168 (= res!824788 (isEmpty!12741 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(assert (=> b!1834168 (=> res!824788 e!1172256)))

(assert (=> b!1834168 e!1172256))

(declare-fun lt!711986 () Unit!34851)

(assert (=> b!1834168 (= lt!711986 lt!711988)))

(declare-fun lt!711985 () Unit!34851)

(declare-fun lemmaSemiInverse!737 (TokenValueInjection!7134 BalanceConc!13302) Unit!34851)

(assert (=> b!1834168 (= lt!711985 (lemmaSemiInverse!737 (transformation!3647 rule!580) (seqFromList!2604 (_1!11217 lt!711987))))))

(declare-fun b!1834169 () Bool)

(declare-fun res!824793 () Bool)

(assert (=> b!1834169 (=> (not res!824793) (not e!1172257))))

(assert (=> b!1834169 (= res!824793 (= (rule!5831 (_1!11215 (get!6228 lt!711984))) rule!580))))

(declare-fun b!1834170 () Bool)

(assert (=> b!1834170 (= e!1172255 None!4226)))

(declare-fun b!1834167 () Bool)

(declare-fun res!824794 () Bool)

(assert (=> b!1834167 (=> (not res!824794) (not e!1172257))))

(assert (=> b!1834167 (= res!824794 (= (++!5471 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984)))) (_2!11215 (get!6228 lt!711984))) input!3681))))

(declare-fun d!560618 () Bool)

(assert (=> d!560618 e!1172254))

(declare-fun res!824789 () Bool)

(assert (=> d!560618 (=> res!824789 e!1172254)))

(declare-fun isEmpty!12742 (Option!4227) Bool)

(assert (=> d!560618 (= res!824789 (isEmpty!12742 lt!711984))))

(assert (=> d!560618 (= lt!711984 e!1172255)))

(declare-fun c!299114 () Bool)

(assert (=> d!560618 (= c!299114 (isEmpty!12741 (_1!11217 lt!711987)))))

(declare-fun findLongestMatch!450 (Regex!4975 List!20244) tuple2!19630)

(assert (=> d!560618 (= lt!711987 (findLongestMatch!450 (regex!3647 rule!580) input!3681))))

(assert (=> d!560618 (ruleValid!1137 thiss!28318 rule!580)))

(assert (=> d!560618 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) lt!711984)))

(assert (= (and d!560618 c!299114) b!1834170))

(assert (= (and d!560618 (not c!299114)) b!1834168))

(assert (= (and b!1834168 (not res!824788)) b!1834164))

(assert (= (and d!560618 (not res!824789)) b!1834165))

(assert (= (and b!1834165 res!824790) b!1834167))

(assert (= (and b!1834167 res!824794) b!1834162))

(assert (= (and b!1834162 res!824792) b!1834169))

(assert (= (and b!1834169 res!824793) b!1834166))

(assert (= (and b!1834166 res!824791) b!1834163))

(declare-fun m!2261787 () Bool)

(assert (=> b!1834169 m!2261787))

(assert (=> b!1834165 m!2261787))

(declare-fun m!2261789 () Bool)

(assert (=> b!1834165 m!2261789))

(assert (=> b!1834165 m!2261789))

(declare-fun m!2261791 () Bool)

(assert (=> b!1834165 m!2261791))

(assert (=> b!1834165 m!2261791))

(declare-fun m!2261793 () Bool)

(assert (=> b!1834165 m!2261793))

(assert (=> b!1834166 m!2261787))

(declare-fun m!2261795 () Bool)

(assert (=> b!1834166 m!2261795))

(assert (=> b!1834166 m!2261795))

(declare-fun m!2261797 () Bool)

(assert (=> b!1834166 m!2261797))

(assert (=> b!1834167 m!2261787))

(assert (=> b!1834167 m!2261789))

(assert (=> b!1834167 m!2261789))

(assert (=> b!1834167 m!2261791))

(assert (=> b!1834167 m!2261791))

(declare-fun m!2261799 () Bool)

(assert (=> b!1834167 m!2261799))

(declare-fun m!2261801 () Bool)

(assert (=> d!560618 m!2261801))

(declare-fun m!2261803 () Bool)

(assert (=> d!560618 m!2261803))

(declare-fun m!2261805 () Bool)

(assert (=> d!560618 m!2261805))

(assert (=> d!560618 m!2261731))

(assert (=> b!1834163 m!2261787))

(declare-fun m!2261807 () Bool)

(assert (=> b!1834163 m!2261807))

(declare-fun m!2261809 () Bool)

(assert (=> b!1834164 m!2261809))

(declare-fun m!2261811 () Bool)

(assert (=> b!1834164 m!2261811))

(assert (=> b!1834164 m!2261809))

(assert (=> b!1834164 m!2261811))

(declare-fun m!2261813 () Bool)

(assert (=> b!1834164 m!2261813))

(declare-fun m!2261815 () Bool)

(assert (=> b!1834164 m!2261815))

(assert (=> b!1834162 m!2261787))

(declare-fun m!2261817 () Bool)

(assert (=> b!1834162 m!2261817))

(assert (=> b!1834162 m!2261811))

(declare-fun m!2261819 () Bool)

(assert (=> b!1834168 m!2261819))

(declare-fun m!2261821 () Bool)

(assert (=> b!1834168 m!2261821))

(assert (=> b!1834168 m!2261809))

(declare-fun m!2261823 () Bool)

(assert (=> b!1834168 m!2261823))

(declare-fun m!2261825 () Bool)

(assert (=> b!1834168 m!2261825))

(assert (=> b!1834168 m!2261819))

(assert (=> b!1834168 m!2261819))

(declare-fun m!2261827 () Bool)

(assert (=> b!1834168 m!2261827))

(assert (=> b!1834168 m!2261809))

(assert (=> b!1834168 m!2261811))

(assert (=> b!1834168 m!2261813))

(assert (=> b!1834168 m!2261819))

(declare-fun m!2261829 () Bool)

(assert (=> b!1834168 m!2261829))

(assert (=> b!1834168 m!2261811))

(assert (=> b!1834117 d!560618))

(declare-fun d!560620 () Bool)

(declare-fun fromListB!1194 (List!20244) BalanceConc!13302)

(assert (=> d!560620 (= (seqFromList!2604 lt!711970) (fromListB!1194 lt!711970))))

(declare-fun bs!408075 () Bool)

(assert (= bs!408075 d!560620))

(declare-fun m!2261831 () Bool)

(assert (=> bs!408075 m!2261831))

(assert (=> b!1834117 d!560620))

(declare-fun d!560622 () Bool)

(declare-fun dynLambda!10039 (Int BalanceConc!13302) TokenValue!3737)

(assert (=> d!560622 (= (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!711970)) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970)))))

(declare-fun b_lambda!60729 () Bool)

(assert (=> (not b_lambda!60729) (not d!560622)))

(declare-fun tb!112185 () Bool)

(declare-fun t!171049 () Bool)

(assert (=> (and b!1834103 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580))) t!171049) tb!112185))

(declare-fun result!134924 () Bool)

(assert (=> tb!112185 (= result!134924 (inv!21 (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970))))))

(declare-fun m!2261833 () Bool)

(assert (=> tb!112185 m!2261833))

(assert (=> d!560622 t!171049))

(declare-fun b_and!143001 () Bool)

(assert (= b_and!142985 (and (=> t!171049 result!134924) b_and!143001)))

(declare-fun t!171051 () Bool)

(declare-fun tb!112187 () Bool)

(assert (=> (and b!1834110 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580))) t!171051) tb!112187))

(declare-fun result!134928 () Bool)

(assert (= result!134928 result!134924))

(assert (=> d!560622 t!171051))

(declare-fun b_and!143003 () Bool)

(assert (= b_and!142989 (and (=> t!171051 result!134928) b_and!143003)))

(declare-fun t!171053 () Bool)

(declare-fun tb!112189 () Bool)

(assert (=> (and b!1834102 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580))) t!171053) tb!112189))

(declare-fun result!134930 () Bool)

(assert (= result!134930 result!134924))

(assert (=> d!560622 t!171053))

(declare-fun b_and!143005 () Bool)

(assert (= b_and!142993 (and (=> t!171053 result!134930) b_and!143005)))

(declare-fun t!171055 () Bool)

(declare-fun tb!112191 () Bool)

(assert (=> (and b!1834113 (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 rule!580))) t!171055) tb!112191))

(declare-fun result!134932 () Bool)

(assert (= result!134932 result!134924))

(assert (=> d!560622 t!171055))

(declare-fun b_and!143007 () Bool)

(assert (= b_and!142997 (and (=> t!171055 result!134932) b_and!143007)))

(assert (=> d!560622 m!2261743))

(declare-fun m!2261835 () Bool)

(assert (=> d!560622 m!2261835))

(assert (=> b!1834117 d!560622))

(declare-fun d!560624 () Bool)

(assert (=> d!560624 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!711970)) rule!580 (size!16002 lt!711970) lt!711970) suffix!1698)))))

(declare-fun lt!711991 () Unit!34851)

(declare-fun choose!11546 (LexerInterface!3276 List!20245 List!20244 List!20244 List!20244 Rule!7094) Unit!34851)

(assert (=> d!560624 (= lt!711991 (choose!11546 thiss!28318 rules!4610 lt!711970 input!3681 suffix!1698 rule!580))))

(assert (=> d!560624 (not (isEmpty!12737 rules!4610))))

(assert (=> d!560624 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 thiss!28318 rules!4610 lt!711970 input!3681 suffix!1698 rule!580) lt!711991)))

(declare-fun bs!408076 () Bool)

(assert (= bs!408076 d!560624))

(declare-fun m!2261837 () Bool)

(assert (=> bs!408076 m!2261837))

(assert (=> bs!408076 m!2261749))

(assert (=> bs!408076 m!2261743))

(assert (=> bs!408076 m!2261719))

(assert (=> bs!408076 m!2261747))

(assert (=> bs!408076 m!2261743))

(assert (=> bs!408076 m!2261745))

(assert (=> b!1834117 d!560624))

(declare-fun d!560626 () Bool)

(declare-fun lt!711994 () Int)

(assert (=> d!560626 (>= lt!711994 0)))

(declare-fun e!1172263 () Int)

(assert (=> d!560626 (= lt!711994 e!1172263)))

(declare-fun c!299117 () Bool)

(assert (=> d!560626 (= c!299117 ((_ is Nil!20174) lt!711970))))

(assert (=> d!560626 (= (size!16002 lt!711970) lt!711994)))

(declare-fun b!1834177 () Bool)

(assert (=> b!1834177 (= e!1172263 0)))

(declare-fun b!1834178 () Bool)

(assert (=> b!1834178 (= e!1172263 (+ 1 (size!16002 (t!171045 lt!711970))))))

(assert (= (and d!560626 c!299117) b!1834177))

(assert (= (and d!560626 (not c!299117)) b!1834178))

(declare-fun m!2261839 () Bool)

(assert (=> b!1834178 m!2261839))

(assert (=> b!1834117 d!560626))

(declare-fun d!560628 () Bool)

(declare-fun lt!711997 () BalanceConc!13302)

(assert (=> d!560628 (= (list!8197 lt!711997) (originalCharacters!4455 token!567))))

(declare-fun dynLambda!10040 (Int TokenValue!3737) BalanceConc!13302)

(assert (=> d!560628 (= lt!711997 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))))

(assert (=> d!560628 (= (charsOf!2290 token!567) lt!711997)))

(declare-fun b_lambda!60731 () Bool)

(assert (=> (not b_lambda!60731) (not d!560628)))

(declare-fun t!171057 () Bool)

(declare-fun tb!112193 () Bool)

(assert (=> (and b!1834103 (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) t!171057) tb!112193))

(declare-fun b!1834183 () Bool)

(declare-fun e!1172266 () Bool)

(declare-fun tp!518959 () Bool)

(declare-fun inv!26246 (Conc!6679) Bool)

(assert (=> b!1834183 (= e!1172266 (and (inv!26246 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))) tp!518959))))

(declare-fun result!134934 () Bool)

(declare-fun inv!26247 (BalanceConc!13302) Bool)

(assert (=> tb!112193 (= result!134934 (and (inv!26247 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))) e!1172266))))

(assert (= tb!112193 b!1834183))

(declare-fun m!2261841 () Bool)

(assert (=> b!1834183 m!2261841))

(declare-fun m!2261843 () Bool)

(assert (=> tb!112193 m!2261843))

(assert (=> d!560628 t!171057))

(declare-fun b_and!143009 () Bool)

(assert (= b_and!142987 (and (=> t!171057 result!134934) b_and!143009)))

(declare-fun t!171059 () Bool)

(declare-fun tb!112195 () Bool)

(assert (=> (and b!1834110 (= (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) t!171059) tb!112195))

(declare-fun result!134938 () Bool)

(assert (= result!134938 result!134934))

(assert (=> d!560628 t!171059))

(declare-fun b_and!143011 () Bool)

(assert (= b_and!142991 (and (=> t!171059 result!134938) b_and!143011)))

(declare-fun t!171061 () Bool)

(declare-fun tb!112197 () Bool)

(assert (=> (and b!1834102 (= (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) t!171061) tb!112197))

(declare-fun result!134940 () Bool)

(assert (= result!134940 result!134934))

(assert (=> d!560628 t!171061))

(declare-fun b_and!143013 () Bool)

(assert (= b_and!142995 (and (=> t!171061 result!134940) b_and!143013)))

(declare-fun t!171063 () Bool)

(declare-fun tb!112199 () Bool)

(assert (=> (and b!1834113 (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) t!171063) tb!112199))

(declare-fun result!134942 () Bool)

(assert (= result!134942 result!134934))

(assert (=> d!560628 t!171063))

(declare-fun b_and!143015 () Bool)

(assert (= b_and!142999 (and (=> t!171063 result!134942) b_and!143015)))

(declare-fun m!2261845 () Bool)

(assert (=> d!560628 m!2261845))

(declare-fun m!2261847 () Bool)

(assert (=> d!560628 m!2261847))

(assert (=> b!1834117 d!560628))

(declare-fun b!1834212 () Bool)

(declare-fun e!1172282 () Bool)

(declare-fun head!4291 (List!20244) C!10124)

(assert (=> b!1834212 (= e!1172282 (= (head!4291 lt!711970) (c!299105 (regex!3647 rule!580))))))

(declare-fun b!1834213 () Bool)

(declare-fun e!1172283 () Bool)

(declare-fun nullable!1551 (Regex!4975) Bool)

(assert (=> b!1834213 (= e!1172283 (nullable!1551 (regex!3647 rule!580)))))

(declare-fun b!1834214 () Bool)

(declare-fun res!824813 () Bool)

(declare-fun e!1172284 () Bool)

(assert (=> b!1834214 (=> res!824813 e!1172284)))

(assert (=> b!1834214 (= res!824813 e!1172282)))

(declare-fun res!824818 () Bool)

(assert (=> b!1834214 (=> (not res!824818) (not e!1172282))))

(declare-fun lt!712000 () Bool)

(assert (=> b!1834214 (= res!824818 lt!712000)))

(declare-fun b!1834215 () Bool)

(declare-fun e!1172281 () Bool)

(declare-fun call!114815 () Bool)

(assert (=> b!1834215 (= e!1172281 (= lt!712000 call!114815))))

(declare-fun b!1834216 () Bool)

(declare-fun e!1172287 () Bool)

(assert (=> b!1834216 (= e!1172284 e!1172287)))

(declare-fun res!824816 () Bool)

(assert (=> b!1834216 (=> (not res!824816) (not e!1172287))))

(assert (=> b!1834216 (= res!824816 (not lt!712000))))

(declare-fun b!1834217 () Bool)

(declare-fun e!1172285 () Bool)

(assert (=> b!1834217 (= e!1172281 e!1172285)))

(declare-fun c!299125 () Bool)

(assert (=> b!1834217 (= c!299125 ((_ is EmptyLang!4975) (regex!3647 rule!580)))))

(declare-fun b!1834218 () Bool)

(declare-fun res!824812 () Bool)

(assert (=> b!1834218 (=> (not res!824812) (not e!1172282))))

(declare-fun tail!2750 (List!20244) List!20244)

(assert (=> b!1834218 (= res!824812 (isEmpty!12741 (tail!2750 lt!711970)))))

(declare-fun b!1834219 () Bool)

(declare-fun res!824811 () Bool)

(assert (=> b!1834219 (=> res!824811 e!1172284)))

(assert (=> b!1834219 (= res!824811 (not ((_ is ElementMatch!4975) (regex!3647 rule!580))))))

(assert (=> b!1834219 (= e!1172285 e!1172284)))

(declare-fun d!560630 () Bool)

(assert (=> d!560630 e!1172281))

(declare-fun c!299124 () Bool)

(assert (=> d!560630 (= c!299124 ((_ is EmptyExpr!4975) (regex!3647 rule!580)))))

(assert (=> d!560630 (= lt!712000 e!1172283)))

(declare-fun c!299126 () Bool)

(assert (=> d!560630 (= c!299126 (isEmpty!12741 lt!711970))))

(declare-fun validRegex!2033 (Regex!4975) Bool)

(assert (=> d!560630 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!560630 (= (matchR!2438 (regex!3647 rule!580) lt!711970) lt!712000)))

(declare-fun b!1834220 () Bool)

(declare-fun res!824814 () Bool)

(declare-fun e!1172286 () Bool)

(assert (=> b!1834220 (=> res!824814 e!1172286)))

(assert (=> b!1834220 (= res!824814 (not (isEmpty!12741 (tail!2750 lt!711970))))))

(declare-fun b!1834221 () Bool)

(declare-fun res!824815 () Bool)

(assert (=> b!1834221 (=> (not res!824815) (not e!1172282))))

(assert (=> b!1834221 (= res!824815 (not call!114815))))

(declare-fun bm!114810 () Bool)

(assert (=> bm!114810 (= call!114815 (isEmpty!12741 lt!711970))))

(declare-fun b!1834222 () Bool)

(assert (=> b!1834222 (= e!1172285 (not lt!712000))))

(declare-fun b!1834223 () Bool)

(declare-fun derivativeStep!1315 (Regex!4975 C!10124) Regex!4975)

(assert (=> b!1834223 (= e!1172283 (matchR!2438 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970)) (tail!2750 lt!711970)))))

(declare-fun b!1834224 () Bool)

(assert (=> b!1834224 (= e!1172286 (not (= (head!4291 lt!711970) (c!299105 (regex!3647 rule!580)))))))

(declare-fun b!1834225 () Bool)

(assert (=> b!1834225 (= e!1172287 e!1172286)))

(declare-fun res!824817 () Bool)

(assert (=> b!1834225 (=> res!824817 e!1172286)))

(assert (=> b!1834225 (= res!824817 call!114815)))

(assert (= (and d!560630 c!299126) b!1834213))

(assert (= (and d!560630 (not c!299126)) b!1834223))

(assert (= (and d!560630 c!299124) b!1834215))

(assert (= (and d!560630 (not c!299124)) b!1834217))

(assert (= (and b!1834217 c!299125) b!1834222))

(assert (= (and b!1834217 (not c!299125)) b!1834219))

(assert (= (and b!1834219 (not res!824811)) b!1834214))

(assert (= (and b!1834214 res!824818) b!1834221))

(assert (= (and b!1834221 res!824815) b!1834218))

(assert (= (and b!1834218 res!824812) b!1834212))

(assert (= (and b!1834214 (not res!824813)) b!1834216))

(assert (= (and b!1834216 res!824816) b!1834225))

(assert (= (and b!1834225 (not res!824817)) b!1834220))

(assert (= (and b!1834220 (not res!824814)) b!1834224))

(assert (= (or b!1834215 b!1834221 b!1834225) bm!114810))

(declare-fun m!2261849 () Bool)

(assert (=> b!1834212 m!2261849))

(declare-fun m!2261851 () Bool)

(assert (=> b!1834220 m!2261851))

(assert (=> b!1834220 m!2261851))

(declare-fun m!2261853 () Bool)

(assert (=> b!1834220 m!2261853))

(assert (=> b!1834218 m!2261851))

(assert (=> b!1834218 m!2261851))

(assert (=> b!1834218 m!2261853))

(declare-fun m!2261855 () Bool)

(assert (=> d!560630 m!2261855))

(declare-fun m!2261857 () Bool)

(assert (=> d!560630 m!2261857))

(assert (=> b!1834223 m!2261849))

(assert (=> b!1834223 m!2261849))

(declare-fun m!2261859 () Bool)

(assert (=> b!1834223 m!2261859))

(assert (=> b!1834223 m!2261851))

(assert (=> b!1834223 m!2261859))

(assert (=> b!1834223 m!2261851))

(declare-fun m!2261861 () Bool)

(assert (=> b!1834223 m!2261861))

(declare-fun m!2261863 () Bool)

(assert (=> b!1834213 m!2261863))

(assert (=> b!1834224 m!2261849))

(assert (=> bm!114810 m!2261855))

(assert (=> b!1834106 d!560630))

(declare-fun b!1834280 () Bool)

(declare-fun e!1172316 () Bool)

(declare-fun e!1172315 () Bool)

(assert (=> b!1834280 (= e!1172316 e!1172315)))

(declare-fun res!824840 () Bool)

(assert (=> b!1834280 (=> (not res!824840) (not e!1172315))))

(declare-fun lt!712017 () Option!4227)

(declare-fun isDefined!3529 (Option!4227) Bool)

(assert (=> b!1834280 (= res!824840 (isDefined!3529 lt!712017))))

(declare-fun b!1834281 () Bool)

(declare-fun res!824845 () Bool)

(assert (=> b!1834281 (=> (not res!824845) (not e!1172315))))

(assert (=> b!1834281 (= res!824845 (= (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017)))) (originalCharacters!4455 (_1!11215 (get!6228 lt!712017)))))))

(declare-fun b!1834282 () Bool)

(declare-fun res!824839 () Bool)

(assert (=> b!1834282 (=> (not res!824839) (not e!1172315))))

(assert (=> b!1834282 (= res!824839 (= (++!5471 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017)))) (_2!11215 (get!6228 lt!712017))) input!3681))))

(declare-fun b!1834283 () Bool)

(declare-fun res!824841 () Bool)

(assert (=> b!1834283 (=> (not res!824841) (not e!1172315))))

(assert (=> b!1834283 (= res!824841 (< (size!16002 (_2!11215 (get!6228 lt!712017))) (size!16002 input!3681)))))

(declare-fun b!1834284 () Bool)

(declare-fun e!1172317 () Option!4227)

(declare-fun call!114818 () Option!4227)

(assert (=> b!1834284 (= e!1172317 call!114818)))

(declare-fun d!560632 () Bool)

(assert (=> d!560632 e!1172316))

(declare-fun res!824844 () Bool)

(assert (=> d!560632 (=> res!824844 e!1172316)))

(assert (=> d!560632 (= res!824844 (isEmpty!12742 lt!712017))))

(assert (=> d!560632 (= lt!712017 e!1172317)))

(declare-fun c!299144 () Bool)

(assert (=> d!560632 (= c!299144 (and ((_ is Cons!20175) rules!4610) ((_ is Nil!20175) (t!171046 rules!4610))))))

(declare-fun lt!712020 () Unit!34851)

(declare-fun lt!712019 () Unit!34851)

(assert (=> d!560632 (= lt!712020 lt!712019)))

(declare-fun isPrefix!1842 (List!20244 List!20244) Bool)

(assert (=> d!560632 (isPrefix!1842 input!3681 input!3681)))

(declare-fun lemmaIsPrefixRefl!1219 (List!20244 List!20244) Unit!34851)

(assert (=> d!560632 (= lt!712019 (lemmaIsPrefixRefl!1219 input!3681 input!3681))))

(declare-fun rulesValidInductive!1262 (LexerInterface!3276 List!20245) Bool)

(assert (=> d!560632 (rulesValidInductive!1262 thiss!28318 rules!4610)))

(assert (=> d!560632 (= (maxPrefix!1824 thiss!28318 rules!4610 input!3681) lt!712017)))

(declare-fun b!1834285 () Bool)

(declare-fun lt!712021 () Option!4227)

(declare-fun lt!712018 () Option!4227)

(assert (=> b!1834285 (= e!1172317 (ite (and ((_ is None!4226) lt!712021) ((_ is None!4226) lt!712018)) None!4226 (ite ((_ is None!4226) lt!712018) lt!712021 (ite ((_ is None!4226) lt!712021) lt!712018 (ite (>= (size!16001 (_1!11215 (v!25805 lt!712021))) (size!16001 (_1!11215 (v!25805 lt!712018)))) lt!712021 lt!712018)))))))

(assert (=> b!1834285 (= lt!712021 call!114818)))

(assert (=> b!1834285 (= lt!712018 (maxPrefix!1824 thiss!28318 (t!171046 rules!4610) input!3681))))

(declare-fun b!1834286 () Bool)

(declare-fun res!824842 () Bool)

(assert (=> b!1834286 (=> (not res!824842) (not e!1172315))))

(assert (=> b!1834286 (= res!824842 (matchR!2438 (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))) (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))))))

(declare-fun b!1834287 () Bool)

(declare-fun res!824843 () Bool)

(assert (=> b!1834287 (=> (not res!824843) (not e!1172315))))

(assert (=> b!1834287 (= res!824843 (= (value!113606 (_1!11215 (get!6228 lt!712017))) (apply!5435 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!712017)))))))))

(declare-fun bm!114813 () Bool)

(assert (=> bm!114813 (= call!114818 (maxPrefixOneRule!1185 thiss!28318 (h!25576 rules!4610) input!3681))))

(declare-fun b!1834288 () Bool)

(assert (=> b!1834288 (= e!1172315 (contains!3724 rules!4610 (rule!5831 (_1!11215 (get!6228 lt!712017)))))))

(assert (= (and d!560632 c!299144) b!1834284))

(assert (= (and d!560632 (not c!299144)) b!1834285))

(assert (= (or b!1834284 b!1834285) bm!114813))

(assert (= (and d!560632 (not res!824844)) b!1834280))

(assert (= (and b!1834280 res!824840) b!1834281))

(assert (= (and b!1834281 res!824845) b!1834283))

(assert (= (and b!1834283 res!824841) b!1834282))

(assert (= (and b!1834282 res!824839) b!1834287))

(assert (= (and b!1834287 res!824843) b!1834286))

(assert (= (and b!1834286 res!824842) b!1834288))

(declare-fun m!2261895 () Bool)

(assert (=> b!1834286 m!2261895))

(declare-fun m!2261897 () Bool)

(assert (=> b!1834286 m!2261897))

(assert (=> b!1834286 m!2261897))

(declare-fun m!2261899 () Bool)

(assert (=> b!1834286 m!2261899))

(assert (=> b!1834286 m!2261899))

(declare-fun m!2261901 () Bool)

(assert (=> b!1834286 m!2261901))

(assert (=> b!1834281 m!2261895))

(assert (=> b!1834281 m!2261897))

(assert (=> b!1834281 m!2261897))

(assert (=> b!1834281 m!2261899))

(declare-fun m!2261903 () Bool)

(assert (=> bm!114813 m!2261903))

(declare-fun m!2261905 () Bool)

(assert (=> b!1834280 m!2261905))

(assert (=> b!1834283 m!2261895))

(declare-fun m!2261907 () Bool)

(assert (=> b!1834283 m!2261907))

(assert (=> b!1834283 m!2261811))

(assert (=> b!1834288 m!2261895))

(declare-fun m!2261909 () Bool)

(assert (=> b!1834288 m!2261909))

(declare-fun m!2261911 () Bool)

(assert (=> b!1834285 m!2261911))

(assert (=> b!1834282 m!2261895))

(assert (=> b!1834282 m!2261897))

(assert (=> b!1834282 m!2261897))

(assert (=> b!1834282 m!2261899))

(assert (=> b!1834282 m!2261899))

(declare-fun m!2261913 () Bool)

(assert (=> b!1834282 m!2261913))

(declare-fun m!2261915 () Bool)

(assert (=> d!560632 m!2261915))

(declare-fun m!2261917 () Bool)

(assert (=> d!560632 m!2261917))

(declare-fun m!2261919 () Bool)

(assert (=> d!560632 m!2261919))

(declare-fun m!2261921 () Bool)

(assert (=> d!560632 m!2261921))

(assert (=> b!1834287 m!2261895))

(declare-fun m!2261923 () Bool)

(assert (=> b!1834287 m!2261923))

(assert (=> b!1834287 m!2261923))

(declare-fun m!2261925 () Bool)

(assert (=> b!1834287 m!2261925))

(assert (=> b!1834115 d!560632))

(declare-fun d!560638 () Bool)

(assert (=> d!560638 (= (inv!26239 (tag!4061 (h!25576 rules!4610))) (= (mod (str.len (value!113605 (tag!4061 (h!25576 rules!4610)))) 2) 0))))

(assert (=> b!1834104 d!560638))

(declare-fun d!560640 () Bool)

(declare-fun res!824848 () Bool)

(declare-fun e!1172320 () Bool)

(assert (=> d!560640 (=> (not res!824848) (not e!1172320))))

(declare-fun semiInverseModEq!1468 (Int Int) Bool)

(assert (=> d!560640 (= res!824848 (semiInverseModEq!1468 (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 (h!25576 rules!4610)))))))

(assert (=> d!560640 (= (inv!26242 (transformation!3647 (h!25576 rules!4610))) e!1172320)))

(declare-fun b!1834291 () Bool)

(declare-fun equivClasses!1409 (Int Int) Bool)

(assert (=> b!1834291 (= e!1172320 (equivClasses!1409 (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 (h!25576 rules!4610)))))))

(assert (= (and d!560640 res!824848) b!1834291))

(declare-fun m!2261927 () Bool)

(assert (=> d!560640 m!2261927))

(declare-fun m!2261929 () Bool)

(assert (=> b!1834291 m!2261929))

(assert (=> b!1834104 d!560640))

(declare-fun d!560642 () Bool)

(assert (=> d!560642 (= (inv!26239 (tag!4061 (h!25576 rs!808))) (= (mod (str.len (value!113605 (tag!4061 (h!25576 rs!808)))) 2) 0))))

(assert (=> b!1834105 d!560642))

(declare-fun d!560644 () Bool)

(declare-fun res!824849 () Bool)

(declare-fun e!1172321 () Bool)

(assert (=> d!560644 (=> (not res!824849) (not e!1172321))))

(assert (=> d!560644 (= res!824849 (semiInverseModEq!1468 (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 (h!25576 rs!808)))))))

(assert (=> d!560644 (= (inv!26242 (transformation!3647 (h!25576 rs!808))) e!1172321)))

(declare-fun b!1834292 () Bool)

(assert (=> b!1834292 (= e!1172321 (equivClasses!1409 (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 (h!25576 rs!808)))))))

(assert (= (and d!560644 res!824849) b!1834292))

(declare-fun m!2261931 () Bool)

(assert (=> d!560644 m!2261931))

(declare-fun m!2261933 () Bool)

(assert (=> b!1834292 m!2261933))

(assert (=> b!1834105 d!560644))

(declare-fun d!560646 () Bool)

(assert (=> d!560646 (= (isEmpty!12737 rules!4610) ((_ is Nil!20175) rules!4610))))

(assert (=> b!1834126 d!560646))

(declare-fun d!560648 () Bool)

(declare-fun lt!712024 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2997 (List!20245) (InoxSet Rule!7094))

(assert (=> d!560648 (= lt!712024 (select (content!2997 rules!4610) rule!580))))

(declare-fun e!1172326 () Bool)

(assert (=> d!560648 (= lt!712024 e!1172326)))

(declare-fun res!824855 () Bool)

(assert (=> d!560648 (=> (not res!824855) (not e!1172326))))

(assert (=> d!560648 (= res!824855 ((_ is Cons!20175) rules!4610))))

(assert (=> d!560648 (= (contains!3724 rules!4610 rule!580) lt!712024)))

(declare-fun b!1834297 () Bool)

(declare-fun e!1172327 () Bool)

(assert (=> b!1834297 (= e!1172326 e!1172327)))

(declare-fun res!824854 () Bool)

(assert (=> b!1834297 (=> res!824854 e!1172327)))

(assert (=> b!1834297 (= res!824854 (= (h!25576 rules!4610) rule!580))))

(declare-fun b!1834298 () Bool)

(assert (=> b!1834298 (= e!1172327 (contains!3724 (t!171046 rules!4610) rule!580))))

(assert (= (and d!560648 res!824855) b!1834297))

(assert (= (and b!1834297 (not res!824854)) b!1834298))

(declare-fun m!2261935 () Bool)

(assert (=> d!560648 m!2261935))

(declare-fun m!2261937 () Bool)

(assert (=> d!560648 m!2261937))

(declare-fun m!2261939 () Bool)

(assert (=> b!1834298 m!2261939))

(assert (=> b!1834119 d!560648))

(declare-fun bs!408077 () Bool)

(declare-fun d!560650 () Bool)

(assert (= bs!408077 (and d!560650 b!1834108)))

(declare-fun lambda!72107 () Int)

(assert (=> bs!408077 (= lambda!72107 lambda!72098)))

(declare-fun lt!712027 () Unit!34851)

(declare-fun lemma!550 (List!20245 LexerInterface!3276 List!20245) Unit!34851)

(assert (=> d!560650 (= lt!712027 (lemma!550 rules!4610 thiss!28318 rules!4610))))

(assert (=> d!560650 (= (rulesRegex!967 thiss!28318 rules!4610) (generalisedUnion!490 (map!4189 rules!4610 lambda!72107)))))

(declare-fun bs!408078 () Bool)

(assert (= bs!408078 d!560650))

(declare-fun m!2261941 () Bool)

(assert (=> bs!408078 m!2261941))

(declare-fun m!2261943 () Bool)

(assert (=> bs!408078 m!2261943))

(assert (=> bs!408078 m!2261943))

(declare-fun m!2261945 () Bool)

(assert (=> bs!408078 m!2261945))

(assert (=> b!1834108 d!560650))

(declare-fun b!1834568 () Bool)

(declare-fun e!1172481 () Bool)

(declare-fun lt!712120 () Regex!4975)

(declare-fun isEmptyLang!133 (Regex!4975) Bool)

(assert (=> b!1834568 (= e!1172481 (isEmptyLang!133 lt!712120))))

(declare-fun b!1834569 () Bool)

(declare-fun e!1172477 () Regex!4975)

(assert (=> b!1834569 (= e!1172477 (Union!4975 (h!25577 (map!4189 rules!4610 lambda!72098)) (generalisedUnion!490 (t!171047 (map!4189 rules!4610 lambda!72098)))))))

(declare-fun b!1834570 () Bool)

(assert (=> b!1834570 (= e!1172477 EmptyLang!4975)))

(declare-fun b!1834571 () Bool)

(declare-fun e!1172479 () Bool)

(declare-fun isEmpty!12743 (List!20246) Bool)

(assert (=> b!1834571 (= e!1172479 (isEmpty!12743 (t!171047 (map!4189 rules!4610 lambda!72098))))))

(declare-fun b!1834572 () Bool)

(declare-fun e!1172480 () Regex!4975)

(assert (=> b!1834572 (= e!1172480 e!1172477)))

(declare-fun c!299193 () Bool)

(assert (=> b!1834572 (= c!299193 ((_ is Cons!20176) (map!4189 rules!4610 lambda!72098)))))

(declare-fun b!1834573 () Bool)

(declare-fun e!1172478 () Bool)

(declare-fun isUnion!133 (Regex!4975) Bool)

(assert (=> b!1834573 (= e!1172478 (isUnion!133 lt!712120))))

(declare-fun b!1834574 () Bool)

(declare-fun head!4292 (List!20246) Regex!4975)

(assert (=> b!1834574 (= e!1172478 (= lt!712120 (head!4292 (map!4189 rules!4610 lambda!72098))))))

(declare-fun d!560652 () Bool)

(declare-fun e!1172476 () Bool)

(assert (=> d!560652 e!1172476))

(declare-fun res!824979 () Bool)

(assert (=> d!560652 (=> (not res!824979) (not e!1172476))))

(assert (=> d!560652 (= res!824979 (validRegex!2033 lt!712120))))

(assert (=> d!560652 (= lt!712120 e!1172480)))

(declare-fun c!299191 () Bool)

(assert (=> d!560652 (= c!299191 e!1172479)))

(declare-fun res!824978 () Bool)

(assert (=> d!560652 (=> (not res!824978) (not e!1172479))))

(assert (=> d!560652 (= res!824978 ((_ is Cons!20176) (map!4189 rules!4610 lambda!72098)))))

(declare-fun lambda!72122 () Int)

(declare-fun forall!4348 (List!20246 Int) Bool)

(assert (=> d!560652 (forall!4348 (map!4189 rules!4610 lambda!72098) lambda!72122)))

(assert (=> d!560652 (= (generalisedUnion!490 (map!4189 rules!4610 lambda!72098)) lt!712120)))

(declare-fun b!1834567 () Bool)

(assert (=> b!1834567 (= e!1172481 e!1172478)))

(declare-fun c!299192 () Bool)

(declare-fun tail!2751 (List!20246) List!20246)

(assert (=> b!1834567 (= c!299192 (isEmpty!12743 (tail!2751 (map!4189 rules!4610 lambda!72098))))))

(declare-fun b!1834575 () Bool)

(assert (=> b!1834575 (= e!1172480 (h!25577 (map!4189 rules!4610 lambda!72098)))))

(declare-fun b!1834576 () Bool)

(assert (=> b!1834576 (= e!1172476 e!1172481)))

(declare-fun c!299190 () Bool)

(assert (=> b!1834576 (= c!299190 (isEmpty!12743 (map!4189 rules!4610 lambda!72098)))))

(assert (= (and d!560652 res!824978) b!1834571))

(assert (= (and d!560652 c!299191) b!1834575))

(assert (= (and d!560652 (not c!299191)) b!1834572))

(assert (= (and b!1834572 c!299193) b!1834569))

(assert (= (and b!1834572 (not c!299193)) b!1834570))

(assert (= (and d!560652 res!824979) b!1834576))

(assert (= (and b!1834576 c!299190) b!1834568))

(assert (= (and b!1834576 (not c!299190)) b!1834567))

(assert (= (and b!1834567 c!299192) b!1834574))

(assert (= (and b!1834567 (not c!299192)) b!1834573))

(assert (=> b!1834576 m!2261767))

(declare-fun m!2262189 () Bool)

(assert (=> b!1834576 m!2262189))

(declare-fun m!2262191 () Bool)

(assert (=> d!560652 m!2262191))

(assert (=> d!560652 m!2261767))

(declare-fun m!2262193 () Bool)

(assert (=> d!560652 m!2262193))

(assert (=> b!1834574 m!2261767))

(declare-fun m!2262195 () Bool)

(assert (=> b!1834574 m!2262195))

(declare-fun m!2262197 () Bool)

(assert (=> b!1834568 m!2262197))

(declare-fun m!2262199 () Bool)

(assert (=> b!1834571 m!2262199))

(assert (=> b!1834567 m!2261767))

(declare-fun m!2262201 () Bool)

(assert (=> b!1834567 m!2262201))

(assert (=> b!1834567 m!2262201))

(declare-fun m!2262203 () Bool)

(assert (=> b!1834567 m!2262203))

(declare-fun m!2262205 () Bool)

(assert (=> b!1834573 m!2262205))

(declare-fun m!2262207 () Bool)

(assert (=> b!1834569 m!2262207))

(assert (=> b!1834108 d!560652))

(declare-fun d!560720 () Bool)

(declare-fun lt!712123 () List!20246)

(declare-fun size!16007 (List!20246) Int)

(declare-fun size!16008 (List!20245) Int)

(assert (=> d!560720 (= (size!16007 lt!712123) (size!16008 rules!4610))))

(declare-fun e!1172484 () List!20246)

(assert (=> d!560720 (= lt!712123 e!1172484)))

(declare-fun c!299196 () Bool)

(assert (=> d!560720 (= c!299196 ((_ is Nil!20175) rules!4610))))

(assert (=> d!560720 (= (map!4189 rules!4610 lambda!72098) lt!712123)))

(declare-fun b!1834581 () Bool)

(assert (=> b!1834581 (= e!1172484 Nil!20176)))

(declare-fun b!1834582 () Bool)

(declare-fun $colon$colon!466 (List!20246 Regex!4975) List!20246)

(declare-fun dynLambda!10041 (Int Rule!7094) Regex!4975)

(assert (=> b!1834582 (= e!1172484 ($colon$colon!466 (map!4189 (t!171046 rules!4610) lambda!72098) (dynLambda!10041 lambda!72098 (h!25576 rules!4610))))))

(assert (= (and d!560720 c!299196) b!1834581))

(assert (= (and d!560720 (not c!299196)) b!1834582))

(declare-fun b_lambda!60753 () Bool)

(assert (=> (not b_lambda!60753) (not b!1834582)))

(declare-fun m!2262209 () Bool)

(assert (=> d!560720 m!2262209))

(declare-fun m!2262211 () Bool)

(assert (=> d!560720 m!2262211))

(declare-fun m!2262213 () Bool)

(assert (=> b!1834582 m!2262213))

(declare-fun m!2262215 () Bool)

(assert (=> b!1834582 m!2262215))

(assert (=> b!1834582 m!2262213))

(assert (=> b!1834582 m!2262215))

(declare-fun m!2262217 () Bool)

(assert (=> b!1834582 m!2262217))

(assert (=> b!1834108 d!560720))

(declare-fun bs!408092 () Bool)

(declare-fun d!560722 () Bool)

(assert (= bs!408092 (and d!560722 b!1834108)))

(declare-fun lambda!72127 () Int)

(assert (=> bs!408092 (= lambda!72127 lambda!72098)))

(declare-fun bs!408093 () Bool)

(assert (= bs!408093 (and d!560722 d!560650)))

(assert (=> bs!408093 (= lambda!72127 lambda!72107)))

(declare-fun bs!408094 () Bool)

(assert (= bs!408094 (and d!560722 d!560652)))

(declare-fun lambda!72128 () Int)

(assert (=> bs!408094 (= lambda!72128 lambda!72122)))

(assert (=> d!560722 (forall!4348 (map!4189 rules!4610 lambda!72127) lambda!72128)))

(declare-fun lt!712134 () Unit!34851)

(declare-fun e!1172487 () Unit!34851)

(assert (=> d!560722 (= lt!712134 e!1172487)))

(declare-fun c!299199 () Bool)

(assert (=> d!560722 (= c!299199 ((_ is Nil!20175) rules!4610))))

(assert (=> d!560722 (rulesValid!1394 thiss!28318 rules!4610)))

(declare-fun lt!712136 () Unit!34851)

(declare-fun lt!712138 () Unit!34851)

(assert (=> d!560722 (= lt!712136 lt!712138)))

(declare-fun lt!712135 () List!20244)

(assert (=> d!560722 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!712135)) rule!580 (size!16002 lt!712135) lt!712135) suffix!1698)))))

(assert (=> d!560722 (= lt!712138 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 thiss!28318 rules!4610 lt!712135 input!3681 suffix!1698 rule!580))))

(assert (=> d!560722 (= lt!712135 (list!8197 (charsOf!2290 token!567)))))

(assert (=> d!560722 (= (lemma!547 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610) lt!712134)))

(declare-fun b!1834587 () Bool)

(declare-fun Unit!34856 () Unit!34851)

(assert (=> b!1834587 (= e!1172487 Unit!34856)))

(declare-fun b!1834588 () Bool)

(declare-fun Unit!34857 () Unit!34851)

(assert (=> b!1834588 (= e!1172487 Unit!34857)))

(declare-fun lt!712137 () Unit!34851)

(assert (=> b!1834588 (= lt!712137 (lemma!547 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171046 rules!4610)))))

(assert (= (and d!560722 c!299199) b!1834587))

(assert (= (and d!560722 (not c!299199)) b!1834588))

(declare-fun m!2262219 () Bool)

(assert (=> d!560722 m!2262219))

(declare-fun m!2262221 () Bool)

(assert (=> d!560722 m!2262221))

(assert (=> d!560722 m!2261749))

(assert (=> d!560722 m!2261737))

(assert (=> d!560722 m!2261739))

(assert (=> d!560722 m!2262219))

(declare-fun m!2262223 () Bool)

(assert (=> d!560722 m!2262223))

(declare-fun m!2262225 () Bool)

(assert (=> d!560722 m!2262225))

(declare-fun m!2262227 () Bool)

(assert (=> d!560722 m!2262227))

(declare-fun m!2262229 () Bool)

(assert (=> d!560722 m!2262229))

(assert (=> d!560722 m!2261737))

(declare-fun m!2262231 () Bool)

(assert (=> d!560722 m!2262231))

(assert (=> d!560722 m!2262227))

(declare-fun m!2262233 () Bool)

(assert (=> b!1834588 m!2262233))

(assert (=> b!1834108 d!560722))

(declare-fun lt!712141 () Bool)

(declare-fun d!560724 () Bool)

(declare-fun content!2998 (List!20246) (InoxSet Regex!4975))

(assert (=> d!560724 (= lt!712141 (select (content!2998 (map!4189 rs!808 lambda!72098)) (regex!3647 rule!580)))))

(declare-fun e!1172492 () Bool)

(assert (=> d!560724 (= lt!712141 e!1172492)))

(declare-fun res!824985 () Bool)

(assert (=> d!560724 (=> (not res!824985) (not e!1172492))))

(assert (=> d!560724 (= res!824985 ((_ is Cons!20176) (map!4189 rs!808 lambda!72098)))))

(assert (=> d!560724 (= (contains!3725 (map!4189 rs!808 lambda!72098) (regex!3647 rule!580)) lt!712141)))

(declare-fun b!1834593 () Bool)

(declare-fun e!1172493 () Bool)

(assert (=> b!1834593 (= e!1172492 e!1172493)))

(declare-fun res!824984 () Bool)

(assert (=> b!1834593 (=> res!824984 e!1172493)))

(assert (=> b!1834593 (= res!824984 (= (h!25577 (map!4189 rs!808 lambda!72098)) (regex!3647 rule!580)))))

(declare-fun b!1834594 () Bool)

(assert (=> b!1834594 (= e!1172493 (contains!3725 (t!171047 (map!4189 rs!808 lambda!72098)) (regex!3647 rule!580)))))

(assert (= (and d!560724 res!824985) b!1834593))

(assert (= (and b!1834593 (not res!824984)) b!1834594))

(assert (=> d!560724 m!2261705))

(declare-fun m!2262235 () Bool)

(assert (=> d!560724 m!2262235))

(declare-fun m!2262237 () Bool)

(assert (=> d!560724 m!2262237))

(declare-fun m!2262239 () Bool)

(assert (=> b!1834594 m!2262239))

(assert (=> b!1834109 d!560724))

(declare-fun d!560726 () Bool)

(declare-fun lt!712142 () List!20246)

(assert (=> d!560726 (= (size!16007 lt!712142) (size!16008 rs!808))))

(declare-fun e!1172494 () List!20246)

(assert (=> d!560726 (= lt!712142 e!1172494)))

(declare-fun c!299200 () Bool)

(assert (=> d!560726 (= c!299200 ((_ is Nil!20175) rs!808))))

(assert (=> d!560726 (= (map!4189 rs!808 lambda!72098) lt!712142)))

(declare-fun b!1834595 () Bool)

(assert (=> b!1834595 (= e!1172494 Nil!20176)))

(declare-fun b!1834596 () Bool)

(assert (=> b!1834596 (= e!1172494 ($colon$colon!466 (map!4189 (t!171046 rs!808) lambda!72098) (dynLambda!10041 lambda!72098 (h!25576 rs!808))))))

(assert (= (and d!560726 c!299200) b!1834595))

(assert (= (and d!560726 (not c!299200)) b!1834596))

(declare-fun b_lambda!60755 () Bool)

(assert (=> (not b_lambda!60755) (not b!1834596)))

(declare-fun m!2262241 () Bool)

(assert (=> d!560726 m!2262241))

(declare-fun m!2262243 () Bool)

(assert (=> d!560726 m!2262243))

(declare-fun m!2262245 () Bool)

(assert (=> b!1834596 m!2262245))

(declare-fun m!2262247 () Bool)

(assert (=> b!1834596 m!2262247))

(assert (=> b!1834596 m!2262245))

(assert (=> b!1834596 m!2262247))

(declare-fun m!2262249 () Bool)

(assert (=> b!1834596 m!2262249))

(assert (=> b!1834109 d!560726))

(declare-fun bs!408095 () Bool)

(declare-fun d!560728 () Bool)

(assert (= bs!408095 (and d!560728 b!1834108)))

(declare-fun lambda!72131 () Int)

(assert (=> bs!408095 (= lambda!72131 lambda!72098)))

(declare-fun bs!408096 () Bool)

(assert (= bs!408096 (and d!560728 d!560650)))

(assert (=> bs!408096 (= lambda!72131 lambda!72107)))

(declare-fun bs!408097 () Bool)

(assert (= bs!408097 (and d!560728 d!560722)))

(assert (=> bs!408097 (= lambda!72131 lambda!72127)))

(assert (=> d!560728 (contains!3725 (map!4189 (t!171046 rs!808) lambda!72131) (regex!3647 rule!580))))

(declare-fun lt!712156 () Unit!34851)

(declare-fun e!1172497 () Unit!34851)

(assert (=> d!560728 (= lt!712156 e!1172497)))

(declare-fun c!299203 () Bool)

(assert (=> d!560728 (= c!299203 (and ((_ is Cons!20175) (t!171046 rs!808)) (not (= (h!25576 (t!171046 rs!808)) rule!580))))))

(assert (=> d!560728 (rulesValid!1394 thiss!28318 (t!171046 rs!808))))

(declare-fun lt!712154 () Unit!34851)

(assert (=> d!560728 (= lt!712154 (lemma!547 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(declare-fun lt!712157 () Unit!34851)

(declare-fun lt!712153 () Unit!34851)

(assert (=> d!560728 (= lt!712157 lt!712153)))

(declare-fun lt!712155 () List!20244)

(assert (=> d!560728 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!712155)) rule!580 (size!16002 lt!712155) lt!712155) suffix!1698)))))

(assert (=> d!560728 (= lt!712153 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 thiss!28318 rules!4610 lt!712155 input!3681 suffix!1698 rule!580))))

(assert (=> d!560728 (= lt!712155 (list!8197 (charsOf!2290 token!567)))))

(assert (=> d!560728 (= (lemma!548 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171046 rs!808)) lt!712156)))

(declare-fun b!1834601 () Bool)

(assert (=> b!1834601 (= e!1172497 (lemma!548 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171046 (t!171046 rs!808))))))

(declare-fun b!1834602 () Bool)

(declare-fun Unit!34858 () Unit!34851)

(assert (=> b!1834602 (= e!1172497 Unit!34858)))

(assert (= (and d!560728 c!299203) b!1834601))

(assert (= (and d!560728 (not c!299203)) b!1834602))

(declare-fun m!2262251 () Bool)

(assert (=> d!560728 m!2262251))

(declare-fun m!2262253 () Bool)

(assert (=> d!560728 m!2262253))

(declare-fun m!2262255 () Bool)

(assert (=> d!560728 m!2262255))

(declare-fun m!2262257 () Bool)

(assert (=> d!560728 m!2262257))

(assert (=> d!560728 m!2262253))

(declare-fun m!2262259 () Bool)

(assert (=> d!560728 m!2262259))

(assert (=> d!560728 m!2261771))

(declare-fun m!2262261 () Bool)

(assert (=> d!560728 m!2262261))

(assert (=> d!560728 m!2261737))

(assert (=> d!560728 m!2261739))

(assert (=> d!560728 m!2261737))

(assert (=> d!560728 m!2261749))

(declare-fun m!2262263 () Bool)

(assert (=> d!560728 m!2262263))

(assert (=> d!560728 m!2262255))

(declare-fun m!2262265 () Bool)

(assert (=> b!1834601 m!2262265))

(assert (=> b!1834109 d!560728))

(declare-fun d!560730 () Bool)

(declare-fun e!1172503 () Bool)

(assert (=> d!560730 e!1172503))

(declare-fun res!824991 () Bool)

(assert (=> d!560730 (=> (not res!824991) (not e!1172503))))

(declare-fun lt!712160 () List!20244)

(declare-fun content!2999 (List!20244) (InoxSet C!10124))

(assert (=> d!560730 (= res!824991 (= (content!2999 lt!712160) ((_ map or) (content!2999 lt!711966) (content!2999 suffix!1698))))))

(declare-fun e!1172502 () List!20244)

(assert (=> d!560730 (= lt!712160 e!1172502)))

(declare-fun c!299206 () Bool)

(assert (=> d!560730 (= c!299206 ((_ is Nil!20174) lt!711966))))

(assert (=> d!560730 (= (++!5471 lt!711966 suffix!1698) lt!712160)))

(declare-fun b!1834613 () Bool)

(declare-fun res!824990 () Bool)

(assert (=> b!1834613 (=> (not res!824990) (not e!1172503))))

(assert (=> b!1834613 (= res!824990 (= (size!16002 lt!712160) (+ (size!16002 lt!711966) (size!16002 suffix!1698))))))

(declare-fun b!1834612 () Bool)

(assert (=> b!1834612 (= e!1172502 (Cons!20174 (h!25575 lt!711966) (++!5471 (t!171045 lt!711966) suffix!1698)))))

(declare-fun b!1834611 () Bool)

(assert (=> b!1834611 (= e!1172502 suffix!1698)))

(declare-fun b!1834614 () Bool)

(assert (=> b!1834614 (= e!1172503 (or (not (= suffix!1698 Nil!20174)) (= lt!712160 lt!711966)))))

(assert (= (and d!560730 c!299206) b!1834611))

(assert (= (and d!560730 (not c!299206)) b!1834612))

(assert (= (and d!560730 res!824991) b!1834613))

(assert (= (and b!1834613 res!824990) b!1834614))

(declare-fun m!2262267 () Bool)

(assert (=> d!560730 m!2262267))

(declare-fun m!2262269 () Bool)

(assert (=> d!560730 m!2262269))

(declare-fun m!2262271 () Bool)

(assert (=> d!560730 m!2262271))

(declare-fun m!2262273 () Bool)

(assert (=> b!1834613 m!2262273))

(declare-fun m!2262275 () Bool)

(assert (=> b!1834613 m!2262275))

(declare-fun m!2262277 () Bool)

(assert (=> b!1834613 m!2262277))

(declare-fun m!2262279 () Bool)

(assert (=> b!1834612 m!2262279))

(assert (=> b!1834107 d!560730))

(assert (=> b!1834107 d!560616))

(assert (=> b!1834107 d!560628))

(declare-fun d!560732 () Bool)

(declare-fun lt!712161 () Bool)

(assert (=> d!560732 (= lt!712161 (select (content!2997 rs!808) rule!580))))

(declare-fun e!1172504 () Bool)

(assert (=> d!560732 (= lt!712161 e!1172504)))

(declare-fun res!824993 () Bool)

(assert (=> d!560732 (=> (not res!824993) (not e!1172504))))

(assert (=> d!560732 (= res!824993 ((_ is Cons!20175) rs!808))))

(assert (=> d!560732 (= (contains!3724 rs!808 rule!580) lt!712161)))

(declare-fun b!1834615 () Bool)

(declare-fun e!1172505 () Bool)

(assert (=> b!1834615 (= e!1172504 e!1172505)))

(declare-fun res!824992 () Bool)

(assert (=> b!1834615 (=> res!824992 e!1172505)))

(assert (=> b!1834615 (= res!824992 (= (h!25576 rs!808) rule!580))))

(declare-fun b!1834616 () Bool)

(assert (=> b!1834616 (= e!1172505 (contains!3724 (t!171046 rs!808) rule!580))))

(assert (= (and d!560732 res!824993) b!1834615))

(assert (= (and b!1834615 (not res!824992)) b!1834616))

(declare-fun m!2262281 () Bool)

(assert (=> d!560732 m!2262281))

(declare-fun m!2262283 () Bool)

(assert (=> d!560732 m!2262283))

(declare-fun m!2262285 () Bool)

(assert (=> b!1834616 m!2262285))

(assert (=> b!1834128 d!560732))

(declare-fun d!560734 () Bool)

(assert (=> d!560734 true))

(declare-fun lt!712164 () Bool)

(assert (=> d!560734 (= lt!712164 (rulesValidInductive!1262 thiss!28318 rs!808))))

(declare-fun lambda!72134 () Int)

(declare-fun forall!4349 (List!20245 Int) Bool)

(assert (=> d!560734 (= lt!712164 (forall!4349 rs!808 lambda!72134))))

(assert (=> d!560734 (= (rulesValid!1394 thiss!28318 rs!808) lt!712164)))

(declare-fun bs!408098 () Bool)

(assert (= bs!408098 d!560734))

(declare-fun m!2262287 () Bool)

(assert (=> bs!408098 m!2262287))

(declare-fun m!2262289 () Bool)

(assert (=> bs!408098 m!2262289))

(assert (=> b!1834111 d!560734))

(declare-fun d!560736 () Bool)

(assert (=> d!560736 (= (inv!26239 (tag!4061 rule!580)) (= (mod (str.len (value!113605 (tag!4061 rule!580))) 2) 0))))

(assert (=> b!1834122 d!560736))

(declare-fun d!560738 () Bool)

(declare-fun res!824994 () Bool)

(declare-fun e!1172506 () Bool)

(assert (=> d!560738 (=> (not res!824994) (not e!1172506))))

(assert (=> d!560738 (= res!824994 (semiInverseModEq!1468 (toChars!5053 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 rule!580))))))

(assert (=> d!560738 (= (inv!26242 (transformation!3647 rule!580)) e!1172506)))

(declare-fun b!1834619 () Bool)

(assert (=> b!1834619 (= e!1172506 (equivClasses!1409 (toChars!5053 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 rule!580))))))

(assert (= (and d!560738 res!824994) b!1834619))

(declare-fun m!2262291 () Bool)

(assert (=> d!560738 m!2262291))

(declare-fun m!2262293 () Bool)

(assert (=> b!1834619 m!2262293))

(assert (=> b!1834122 d!560738))

(declare-fun d!560740 () Bool)

(assert (=> d!560740 (= (inv!26239 (tag!4061 (rule!5831 token!567))) (= (mod (str.len (value!113605 (tag!4061 (rule!5831 token!567)))) 2) 0))))

(assert (=> b!1834120 d!560740))

(declare-fun d!560742 () Bool)

(declare-fun res!824995 () Bool)

(declare-fun e!1172507 () Bool)

(assert (=> d!560742 (=> (not res!824995) (not e!1172507))))

(assert (=> d!560742 (= res!824995 (semiInverseModEq!1468 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (rule!5831 token!567)))))))

(assert (=> d!560742 (= (inv!26242 (transformation!3647 (rule!5831 token!567))) e!1172507)))

(declare-fun b!1834620 () Bool)

(assert (=> b!1834620 (= e!1172507 (equivClasses!1409 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (rule!5831 token!567)))))))

(assert (= (and d!560742 res!824995) b!1834620))

(declare-fun m!2262295 () Bool)

(assert (=> d!560742 m!2262295))

(declare-fun m!2262297 () Bool)

(assert (=> b!1834620 m!2262297))

(assert (=> b!1834120 d!560742))

(declare-fun d!560744 () Bool)

(declare-fun res!824998 () Bool)

(declare-fun e!1172510 () Bool)

(assert (=> d!560744 (=> (not res!824998) (not e!1172510))))

(assert (=> d!560744 (= res!824998 (rulesValid!1394 thiss!28318 rules!4610))))

(assert (=> d!560744 (= (rulesInvariant!2945 thiss!28318 rules!4610) e!1172510)))

(declare-fun b!1834623 () Bool)

(declare-datatypes ((List!20248 0))(
  ( (Nil!20178) (Cons!20178 (h!25579 String!23017) (t!171097 List!20248)) )
))
(declare-fun noDuplicateTag!1392 (LexerInterface!3276 List!20245 List!20248) Bool)

(assert (=> b!1834623 (= e!1172510 (noDuplicateTag!1392 thiss!28318 rules!4610 Nil!20178))))

(assert (= (and d!560744 res!824998) b!1834623))

(assert (=> d!560744 m!2262231))

(declare-fun m!2262299 () Bool)

(assert (=> b!1834623 m!2262299))

(assert (=> b!1834121 d!560744))

(declare-fun b!1834624 () Bool)

(declare-fun e!1172512 () Bool)

(assert (=> b!1834624 (= e!1172512 (= (head!4291 lt!711966) (c!299105 (regex!3647 rule!580))))))

(declare-fun b!1834625 () Bool)

(declare-fun e!1172513 () Bool)

(assert (=> b!1834625 (= e!1172513 (nullable!1551 (regex!3647 rule!580)))))

(declare-fun b!1834626 () Bool)

(declare-fun res!825001 () Bool)

(declare-fun e!1172514 () Bool)

(assert (=> b!1834626 (=> res!825001 e!1172514)))

(assert (=> b!1834626 (= res!825001 e!1172512)))

(declare-fun res!825006 () Bool)

(assert (=> b!1834626 (=> (not res!825006) (not e!1172512))))

(declare-fun lt!712165 () Bool)

(assert (=> b!1834626 (= res!825006 lt!712165)))

(declare-fun b!1834627 () Bool)

(declare-fun e!1172511 () Bool)

(declare-fun call!114826 () Bool)

(assert (=> b!1834627 (= e!1172511 (= lt!712165 call!114826))))

(declare-fun b!1834628 () Bool)

(declare-fun e!1172517 () Bool)

(assert (=> b!1834628 (= e!1172514 e!1172517)))

(declare-fun res!825004 () Bool)

(assert (=> b!1834628 (=> (not res!825004) (not e!1172517))))

(assert (=> b!1834628 (= res!825004 (not lt!712165))))

(declare-fun b!1834629 () Bool)

(declare-fun e!1172515 () Bool)

(assert (=> b!1834629 (= e!1172511 e!1172515)))

(declare-fun c!299208 () Bool)

(assert (=> b!1834629 (= c!299208 ((_ is EmptyLang!4975) (regex!3647 rule!580)))))

(declare-fun b!1834630 () Bool)

(declare-fun res!825000 () Bool)

(assert (=> b!1834630 (=> (not res!825000) (not e!1172512))))

(assert (=> b!1834630 (= res!825000 (isEmpty!12741 (tail!2750 lt!711966)))))

(declare-fun b!1834631 () Bool)

(declare-fun res!824999 () Bool)

(assert (=> b!1834631 (=> res!824999 e!1172514)))

(assert (=> b!1834631 (= res!824999 (not ((_ is ElementMatch!4975) (regex!3647 rule!580))))))

(assert (=> b!1834631 (= e!1172515 e!1172514)))

(declare-fun d!560746 () Bool)

(assert (=> d!560746 e!1172511))

(declare-fun c!299207 () Bool)

(assert (=> d!560746 (= c!299207 ((_ is EmptyExpr!4975) (regex!3647 rule!580)))))

(assert (=> d!560746 (= lt!712165 e!1172513)))

(declare-fun c!299209 () Bool)

(assert (=> d!560746 (= c!299209 (isEmpty!12741 lt!711966))))

(assert (=> d!560746 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!560746 (= (matchR!2438 (regex!3647 rule!580) lt!711966) lt!712165)))

(declare-fun b!1834632 () Bool)

(declare-fun res!825002 () Bool)

(declare-fun e!1172516 () Bool)

(assert (=> b!1834632 (=> res!825002 e!1172516)))

(assert (=> b!1834632 (= res!825002 (not (isEmpty!12741 (tail!2750 lt!711966))))))

(declare-fun b!1834633 () Bool)

(declare-fun res!825003 () Bool)

(assert (=> b!1834633 (=> (not res!825003) (not e!1172512))))

(assert (=> b!1834633 (= res!825003 (not call!114826))))

(declare-fun bm!114821 () Bool)

(assert (=> bm!114821 (= call!114826 (isEmpty!12741 lt!711966))))

(declare-fun b!1834634 () Bool)

(assert (=> b!1834634 (= e!1172515 (not lt!712165))))

(declare-fun b!1834635 () Bool)

(assert (=> b!1834635 (= e!1172513 (matchR!2438 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966)) (tail!2750 lt!711966)))))

(declare-fun b!1834636 () Bool)

(assert (=> b!1834636 (= e!1172516 (not (= (head!4291 lt!711966) (c!299105 (regex!3647 rule!580)))))))

(declare-fun b!1834637 () Bool)

(assert (=> b!1834637 (= e!1172517 e!1172516)))

(declare-fun res!825005 () Bool)

(assert (=> b!1834637 (=> res!825005 e!1172516)))

(assert (=> b!1834637 (= res!825005 call!114826)))

(assert (= (and d!560746 c!299209) b!1834625))

(assert (= (and d!560746 (not c!299209)) b!1834635))

(assert (= (and d!560746 c!299207) b!1834627))

(assert (= (and d!560746 (not c!299207)) b!1834629))

(assert (= (and b!1834629 c!299208) b!1834634))

(assert (= (and b!1834629 (not c!299208)) b!1834631))

(assert (= (and b!1834631 (not res!824999)) b!1834626))

(assert (= (and b!1834626 res!825006) b!1834633))

(assert (= (and b!1834633 res!825003) b!1834630))

(assert (= (and b!1834630 res!825000) b!1834624))

(assert (= (and b!1834626 (not res!825001)) b!1834628))

(assert (= (and b!1834628 res!825004) b!1834637))

(assert (= (and b!1834637 (not res!825005)) b!1834632))

(assert (= (and b!1834632 (not res!825002)) b!1834636))

(assert (= (or b!1834627 b!1834633 b!1834637) bm!114821))

(declare-fun m!2262301 () Bool)

(assert (=> b!1834624 m!2262301))

(declare-fun m!2262303 () Bool)

(assert (=> b!1834632 m!2262303))

(assert (=> b!1834632 m!2262303))

(declare-fun m!2262305 () Bool)

(assert (=> b!1834632 m!2262305))

(assert (=> b!1834630 m!2262303))

(assert (=> b!1834630 m!2262303))

(assert (=> b!1834630 m!2262305))

(declare-fun m!2262307 () Bool)

(assert (=> d!560746 m!2262307))

(assert (=> d!560746 m!2261857))

(assert (=> b!1834635 m!2262301))

(assert (=> b!1834635 m!2262301))

(declare-fun m!2262309 () Bool)

(assert (=> b!1834635 m!2262309))

(assert (=> b!1834635 m!2262303))

(assert (=> b!1834635 m!2262309))

(assert (=> b!1834635 m!2262303))

(declare-fun m!2262311 () Bool)

(assert (=> b!1834635 m!2262311))

(assert (=> b!1834625 m!2261863))

(assert (=> b!1834636 m!2262301))

(assert (=> bm!114821 m!2262307))

(assert (=> b!1834124 d!560746))

(declare-fun d!560748 () Bool)

(declare-fun res!825011 () Bool)

(declare-fun e!1172520 () Bool)

(assert (=> d!560748 (=> (not res!825011) (not e!1172520))))

(assert (=> d!560748 (= res!825011 (validRegex!2033 (regex!3647 rule!580)))))

(assert (=> d!560748 (= (ruleValid!1137 thiss!28318 rule!580) e!1172520)))

(declare-fun b!1834642 () Bool)

(declare-fun res!825012 () Bool)

(assert (=> b!1834642 (=> (not res!825012) (not e!1172520))))

(assert (=> b!1834642 (= res!825012 (not (nullable!1551 (regex!3647 rule!580))))))

(declare-fun b!1834643 () Bool)

(assert (=> b!1834643 (= e!1172520 (not (= (tag!4061 rule!580) (String!23018 ""))))))

(assert (= (and d!560748 res!825011) b!1834642))

(assert (= (and b!1834642 res!825012) b!1834643))

(assert (=> d!560748 m!2261857))

(assert (=> b!1834642 m!2261863))

(assert (=> b!1834124 d!560748))

(declare-fun d!560750 () Bool)

(assert (=> d!560750 (ruleValid!1137 thiss!28318 rule!580)))

(declare-fun lt!712168 () Unit!34851)

(declare-fun choose!11548 (LexerInterface!3276 Rule!7094 List!20245) Unit!34851)

(assert (=> d!560750 (= lt!712168 (choose!11548 thiss!28318 rule!580 rules!4610))))

(assert (=> d!560750 (contains!3724 rules!4610 rule!580)))

(assert (=> d!560750 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!656 thiss!28318 rule!580 rules!4610) lt!712168)))

(declare-fun bs!408099 () Bool)

(assert (= bs!408099 d!560750))

(assert (=> bs!408099 m!2261731))

(declare-fun m!2262313 () Bool)

(assert (=> bs!408099 m!2262313))

(assert (=> bs!408099 m!2261761))

(assert (=> b!1834124 d!560750))

(declare-fun d!560752 () Bool)

(declare-fun res!825017 () Bool)

(declare-fun e!1172523 () Bool)

(assert (=> d!560752 (=> (not res!825017) (not e!1172523))))

(assert (=> d!560752 (= res!825017 (not (isEmpty!12741 (originalCharacters!4455 token!567))))))

(assert (=> d!560752 (= (inv!26243 token!567) e!1172523)))

(declare-fun b!1834648 () Bool)

(declare-fun res!825018 () Bool)

(assert (=> b!1834648 (=> (not res!825018) (not e!1172523))))

(assert (=> b!1834648 (= res!825018 (= (originalCharacters!4455 token!567) (list!8197 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))))))

(declare-fun b!1834649 () Bool)

(assert (=> b!1834649 (= e!1172523 (= (size!16001 token!567) (size!16002 (originalCharacters!4455 token!567))))))

(assert (= (and d!560752 res!825017) b!1834648))

(assert (= (and b!1834648 res!825018) b!1834649))

(declare-fun b_lambda!60757 () Bool)

(assert (=> (not b_lambda!60757) (not b!1834648)))

(assert (=> b!1834648 t!171057))

(declare-fun b_and!143049 () Bool)

(assert (= b_and!143009 (and (=> t!171057 result!134934) b_and!143049)))

(assert (=> b!1834648 t!171059))

(declare-fun b_and!143051 () Bool)

(assert (= b_and!143011 (and (=> t!171059 result!134938) b_and!143051)))

(assert (=> b!1834648 t!171061))

(declare-fun b_and!143053 () Bool)

(assert (= b_and!143013 (and (=> t!171061 result!134940) b_and!143053)))

(assert (=> b!1834648 t!171063))

(declare-fun b_and!143055 () Bool)

(assert (= b_and!143015 (and (=> t!171063 result!134942) b_and!143055)))

(declare-fun m!2262315 () Bool)

(assert (=> d!560752 m!2262315))

(assert (=> b!1834648 m!2261847))

(assert (=> b!1834648 m!2261847))

(declare-fun m!2262317 () Bool)

(assert (=> b!1834648 m!2262317))

(declare-fun m!2262319 () Bool)

(assert (=> b!1834649 m!2262319))

(assert (=> start!182154 d!560752))

(declare-fun b!1834660 () Bool)

(declare-fun b_free!51395 () Bool)

(declare-fun b_next!52099 () Bool)

(assert (=> b!1834660 (= b_free!51395 (not b_next!52099))))

(declare-fun tb!112225 () Bool)

(declare-fun t!171090 () Bool)

(assert (=> (and b!1834660 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580))) t!171090) tb!112225))

(declare-fun result!134980 () Bool)

(assert (= result!134980 result!134924))

(assert (=> d!560622 t!171090))

(declare-fun b_and!143057 () Bool)

(declare-fun tp!519023 () Bool)

(assert (=> b!1834660 (= tp!519023 (and (=> t!171090 result!134980) b_and!143057))))

(declare-fun b_free!51397 () Bool)

(declare-fun b_next!52101 () Bool)

(assert (=> b!1834660 (= b_free!51397 (not b_next!52101))))

(declare-fun tb!112227 () Bool)

(declare-fun t!171092 () Bool)

(assert (=> (and b!1834660 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) t!171092) tb!112227))

(declare-fun result!134982 () Bool)

(assert (= result!134982 result!134934))

(assert (=> d!560628 t!171092))

(assert (=> b!1834648 t!171092))

(declare-fun tp!519022 () Bool)

(declare-fun b_and!143059 () Bool)

(assert (=> b!1834660 (= tp!519022 (and (=> t!171092 result!134982) b_and!143059))))

(declare-fun e!1172534 () Bool)

(assert (=> b!1834660 (= e!1172534 (and tp!519023 tp!519022))))

(declare-fun b!1834659 () Bool)

(declare-fun e!1172533 () Bool)

(declare-fun tp!519025 () Bool)

(assert (=> b!1834659 (= e!1172533 (and tp!519025 (inv!26239 (tag!4061 (h!25576 (t!171046 rules!4610)))) (inv!26242 (transformation!3647 (h!25576 (t!171046 rules!4610)))) e!1172534))))

(declare-fun b!1834658 () Bool)

(declare-fun e!1172535 () Bool)

(declare-fun tp!519024 () Bool)

(assert (=> b!1834658 (= e!1172535 (and e!1172533 tp!519024))))

(assert (=> b!1834127 (= tp!518941 e!1172535)))

(assert (= b!1834659 b!1834660))

(assert (= b!1834658 b!1834659))

(assert (= (and b!1834127 ((_ is Cons!20175) (t!171046 rules!4610))) b!1834658))

(declare-fun m!2262321 () Bool)

(assert (=> b!1834659 m!2262321))

(declare-fun m!2262323 () Bool)

(assert (=> b!1834659 m!2262323))

(declare-fun b!1834665 () Bool)

(declare-fun e!1172538 () Bool)

(declare-fun tp!519028 () Bool)

(assert (=> b!1834665 (= e!1172538 (and tp_is_empty!8185 tp!519028))))

(assert (=> b!1834116 (= tp!518942 e!1172538)))

(assert (= (and b!1834116 ((_ is Cons!20174) (originalCharacters!4455 token!567))) b!1834665))

(declare-fun b!1834678 () Bool)

(declare-fun e!1172541 () Bool)

(declare-fun tp!519042 () Bool)

(assert (=> b!1834678 (= e!1172541 tp!519042)))

(declare-fun b!1834676 () Bool)

(assert (=> b!1834676 (= e!1172541 tp_is_empty!8185)))

(assert (=> b!1834122 (= tp!518943 e!1172541)))

(declare-fun b!1834679 () Bool)

(declare-fun tp!519040 () Bool)

(declare-fun tp!519039 () Bool)

(assert (=> b!1834679 (= e!1172541 (and tp!519040 tp!519039))))

(declare-fun b!1834677 () Bool)

(declare-fun tp!519041 () Bool)

(declare-fun tp!519043 () Bool)

(assert (=> b!1834677 (= e!1172541 (and tp!519041 tp!519043))))

(assert (= (and b!1834122 ((_ is ElementMatch!4975) (regex!3647 rule!580))) b!1834676))

(assert (= (and b!1834122 ((_ is Concat!8713) (regex!3647 rule!580))) b!1834677))

(assert (= (and b!1834122 ((_ is Star!4975) (regex!3647 rule!580))) b!1834678))

(assert (= (and b!1834122 ((_ is Union!4975) (regex!3647 rule!580))) b!1834679))

(declare-fun b!1834682 () Bool)

(declare-fun e!1172542 () Bool)

(declare-fun tp!519047 () Bool)

(assert (=> b!1834682 (= e!1172542 tp!519047)))

(declare-fun b!1834680 () Bool)

(assert (=> b!1834680 (= e!1172542 tp_is_empty!8185)))

(assert (=> b!1834104 (= tp!518947 e!1172542)))

(declare-fun b!1834683 () Bool)

(declare-fun tp!519045 () Bool)

(declare-fun tp!519044 () Bool)

(assert (=> b!1834683 (= e!1172542 (and tp!519045 tp!519044))))

(declare-fun b!1834681 () Bool)

(declare-fun tp!519046 () Bool)

(declare-fun tp!519048 () Bool)

(assert (=> b!1834681 (= e!1172542 (and tp!519046 tp!519048))))

(assert (= (and b!1834104 ((_ is ElementMatch!4975) (regex!3647 (h!25576 rules!4610)))) b!1834680))

(assert (= (and b!1834104 ((_ is Concat!8713) (regex!3647 (h!25576 rules!4610)))) b!1834681))

(assert (= (and b!1834104 ((_ is Star!4975) (regex!3647 (h!25576 rules!4610)))) b!1834682))

(assert (= (and b!1834104 ((_ is Union!4975) (regex!3647 (h!25576 rules!4610)))) b!1834683))

(declare-fun b!1834686 () Bool)

(declare-fun e!1172543 () Bool)

(declare-fun tp!519052 () Bool)

(assert (=> b!1834686 (= e!1172543 tp!519052)))

(declare-fun b!1834684 () Bool)

(assert (=> b!1834684 (= e!1172543 tp_is_empty!8185)))

(assert (=> b!1834120 (= tp!518949 e!1172543)))

(declare-fun b!1834687 () Bool)

(declare-fun tp!519050 () Bool)

(declare-fun tp!519049 () Bool)

(assert (=> b!1834687 (= e!1172543 (and tp!519050 tp!519049))))

(declare-fun b!1834685 () Bool)

(declare-fun tp!519051 () Bool)

(declare-fun tp!519053 () Bool)

(assert (=> b!1834685 (= e!1172543 (and tp!519051 tp!519053))))

(assert (= (and b!1834120 ((_ is ElementMatch!4975) (regex!3647 (rule!5831 token!567)))) b!1834684))

(assert (= (and b!1834120 ((_ is Concat!8713) (regex!3647 (rule!5831 token!567)))) b!1834685))

(assert (= (and b!1834120 ((_ is Star!4975) (regex!3647 (rule!5831 token!567)))) b!1834686))

(assert (= (and b!1834120 ((_ is Union!4975) (regex!3647 (rule!5831 token!567)))) b!1834687))

(declare-fun b!1834690 () Bool)

(declare-fun e!1172544 () Bool)

(declare-fun tp!519057 () Bool)

(assert (=> b!1834690 (= e!1172544 tp!519057)))

(declare-fun b!1834688 () Bool)

(assert (=> b!1834688 (= e!1172544 tp_is_empty!8185)))

(assert (=> b!1834105 (= tp!518945 e!1172544)))

(declare-fun b!1834691 () Bool)

(declare-fun tp!519055 () Bool)

(declare-fun tp!519054 () Bool)

(assert (=> b!1834691 (= e!1172544 (and tp!519055 tp!519054))))

(declare-fun b!1834689 () Bool)

(declare-fun tp!519056 () Bool)

(declare-fun tp!519058 () Bool)

(assert (=> b!1834689 (= e!1172544 (and tp!519056 tp!519058))))

(assert (= (and b!1834105 ((_ is ElementMatch!4975) (regex!3647 (h!25576 rs!808)))) b!1834688))

(assert (= (and b!1834105 ((_ is Concat!8713) (regex!3647 (h!25576 rs!808)))) b!1834689))

(assert (= (and b!1834105 ((_ is Star!4975) (regex!3647 (h!25576 rs!808)))) b!1834690))

(assert (= (and b!1834105 ((_ is Union!4975) (regex!3647 (h!25576 rs!808)))) b!1834691))

(declare-fun b!1834692 () Bool)

(declare-fun e!1172545 () Bool)

(declare-fun tp!519059 () Bool)

(assert (=> b!1834692 (= e!1172545 (and tp_is_empty!8185 tp!519059))))

(assert (=> b!1834125 (= tp!518948 e!1172545)))

(assert (= (and b!1834125 ((_ is Cons!20174) (t!171045 suffix!1698))) b!1834692))

(declare-fun b!1834695 () Bool)

(declare-fun b_free!51399 () Bool)

(declare-fun b_next!52103 () Bool)

(assert (=> b!1834695 (= b_free!51399 (not b_next!52103))))

(declare-fun t!171094 () Bool)

(declare-fun tb!112229 () Bool)

(assert (=> (and b!1834695 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580))) t!171094) tb!112229))

(declare-fun result!134988 () Bool)

(assert (= result!134988 result!134924))

(assert (=> d!560622 t!171094))

(declare-fun tp!519061 () Bool)

(declare-fun b_and!143061 () Bool)

(assert (=> b!1834695 (= tp!519061 (and (=> t!171094 result!134988) b_and!143061))))

(declare-fun b_free!51401 () Bool)

(declare-fun b_next!52105 () Bool)

(assert (=> b!1834695 (= b_free!51401 (not b_next!52105))))

(declare-fun tb!112231 () Bool)

(declare-fun t!171096 () Bool)

(assert (=> (and b!1834695 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) t!171096) tb!112231))

(declare-fun result!134990 () Bool)

(assert (= result!134990 result!134934))

(assert (=> d!560628 t!171096))

(assert (=> b!1834648 t!171096))

(declare-fun b_and!143063 () Bool)

(declare-fun tp!519060 () Bool)

(assert (=> b!1834695 (= tp!519060 (and (=> t!171096 result!134990) b_and!143063))))

(declare-fun e!1172548 () Bool)

(assert (=> b!1834695 (= e!1172548 (and tp!519061 tp!519060))))

(declare-fun e!1172547 () Bool)

(declare-fun tp!519063 () Bool)

(declare-fun b!1834694 () Bool)

(assert (=> b!1834694 (= e!1172547 (and tp!519063 (inv!26239 (tag!4061 (h!25576 (t!171046 rs!808)))) (inv!26242 (transformation!3647 (h!25576 (t!171046 rs!808)))) e!1172548))))

(declare-fun b!1834693 () Bool)

(declare-fun e!1172549 () Bool)

(declare-fun tp!519062 () Bool)

(assert (=> b!1834693 (= e!1172549 (and e!1172547 tp!519062))))

(assert (=> b!1834123 (= tp!518946 e!1172549)))

(assert (= b!1834694 b!1834695))

(assert (= b!1834693 b!1834694))

(assert (= (and b!1834123 ((_ is Cons!20175) (t!171046 rs!808))) b!1834693))

(declare-fun m!2262325 () Bool)

(assert (=> b!1834694 m!2262325))

(declare-fun m!2262327 () Bool)

(assert (=> b!1834694 m!2262327))

(declare-fun b!1834696 () Bool)

(declare-fun e!1172550 () Bool)

(declare-fun tp!519064 () Bool)

(assert (=> b!1834696 (= e!1172550 (and tp_is_empty!8185 tp!519064))))

(assert (=> b!1834118 (= tp!518955 e!1172550)))

(assert (= (and b!1834118 ((_ is Cons!20174) (t!171045 input!3681))) b!1834696))

(declare-fun b_lambda!60759 () Bool)

(assert (= b_lambda!60757 (or (and b!1834113 b_free!51385 (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) (and b!1834102 b_free!51381) (and b!1834110 b_free!51377 (= (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) (and b!1834103 b_free!51373 (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) (and b!1834660 b_free!51397 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) (and b!1834695 b_free!51401 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) b_lambda!60759)))

(declare-fun b_lambda!60761 () Bool)

(assert (= b_lambda!60753 (or b!1834108 b_lambda!60761)))

(declare-fun bs!408100 () Bool)

(declare-fun d!560754 () Bool)

(assert (= bs!408100 (and d!560754 b!1834108)))

(assert (=> bs!408100 (= (dynLambda!10041 lambda!72098 (h!25576 rules!4610)) (regex!3647 (h!25576 rules!4610)))))

(assert (=> b!1834582 d!560754))

(declare-fun b_lambda!60763 () Bool)

(assert (= b_lambda!60731 (or (and b!1834113 b_free!51385 (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) (and b!1834102 b_free!51381) (and b!1834110 b_free!51377 (= (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) (and b!1834103 b_free!51373 (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) (and b!1834660 b_free!51397 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) (and b!1834695 b_free!51401 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toChars!5053 (transformation!3647 (rule!5831 token!567))))) b_lambda!60763)))

(declare-fun b_lambda!60765 () Bool)

(assert (= b_lambda!60729 (or (and b!1834102 b_free!51379 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834113 b_free!51383) (and b!1834103 b_free!51371 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834695 b_free!51399 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834660 b_free!51395 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834110 b_free!51375 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580)))) b_lambda!60765)))

(declare-fun b_lambda!60767 () Bool)

(assert (= b_lambda!60755 (or b!1834108 b_lambda!60767)))

(declare-fun bs!408101 () Bool)

(declare-fun d!560756 () Bool)

(assert (= bs!408101 (and d!560756 b!1834108)))

(assert (=> bs!408101 (= (dynLambda!10041 lambda!72098 (h!25576 rs!808)) (regex!3647 (h!25576 rs!808)))))

(assert (=> b!1834596 d!560756))

(check-sat (not b!1834282) (not b_lambda!60767) (not b!1834582) (not d!560728) (not b!1834681) (not bm!114821) (not d!560632) (not b!1834291) (not b!1834619) (not b_next!52077) b_and!143057 (not b!1834574) (not b!1834693) b_and!143051 (not b_next!52101) (not d!560624) (not d!560742) (not b!1834292) (not b!1834696) tp_is_empty!8185 (not d!560726) (not d!560752) (not b!1834283) b_and!143055 (not b!1834616) (not d!560738) (not b!1834168) (not b!1834569) (not b!1834139) (not b!1834162) (not b!1834632) (not b!1834620) (not b_lambda!60759) (not b_lambda!60763) b_and!143001 (not d!560640) (not b!1834625) (not d!560750) (not bm!114810) (not b!1834281) (not b!1834635) (not b_next!52103) (not b!1834285) (not b!1834140) (not d!560616) (not d!560734) (not b!1834642) (not b!1834630) (not b!1834649) (not b!1834166) (not b!1834658) b_and!143053 (not d!560620) (not b!1834220) (not b!1834692) (not b!1834588) (not b_next!52083) b_and!143049 (not b!1834679) (not d!560744) (not b!1834163) (not b!1834665) (not b!1834218) (not d!560618) (not b!1834690) (not b!1834594) (not b!1834568) (not b!1834613) b_and!143063 (not d!560644) (not b!1834573) (not tb!112185) b_and!143003 (not b_next!52079) (not b!1834164) b_and!143059 (not b!1834213) (not b_lambda!60765) (not d!560746) (not b!1834612) (not b_next!52099) (not d!560628) (not b!1834623) (not d!560722) (not b_lambda!60761) (not b!1834576) (not d!560730) (not b!1834601) (not tb!112193) (not d!560724) (not b!1834691) (not b!1834685) (not b!1834280) (not b!1834689) (not b!1834165) (not b!1834169) (not b!1834141) (not b!1834659) (not b!1834687) (not b!1834167) (not d!560748) (not b!1834298) (not b!1834677) (not b!1834694) (not b_next!52105) (not d!560650) (not b!1834686) (not b!1834683) (not b!1834678) (not b!1834648) (not b!1834288) (not b_next!52081) (not d!560652) (not b!1834636) (not b!1834571) (not b!1834624) (not b!1834596) b_and!143061 b_and!143005 b_and!143007 (not b!1834224) (not d!560732) (not d!560720) (not d!560648) (not b_next!52087) (not b!1834567) (not b!1834287) (not b!1834212) (not d!560630) (not b!1834223) (not b!1834286) (not b!1834682) (not b_next!52085) (not b_next!52089) (not b!1834183) (not b_next!52075) (not b!1834178) (not bm!114813))
(check-sat b_and!143055 b_and!143001 (not b_next!52103) b_and!143049 b_and!143063 b_and!143059 (not b_next!52099) (not b_next!52105) (not b_next!52081) (not b_next!52087) (not b_next!52085) (not b_next!52077) b_and!143057 b_and!143051 (not b_next!52101) b_and!143053 (not b_next!52083) b_and!143003 (not b_next!52079) b_and!143061 b_and!143005 b_and!143007 (not b_next!52089) (not b_next!52075))
(get-model)

(declare-fun d!560828 () Bool)

(assert (=> d!560828 (= (isEmpty!12743 (tail!2751 (map!4189 rules!4610 lambda!72098))) ((_ is Nil!20176) (tail!2751 (map!4189 rules!4610 lambda!72098))))))

(assert (=> b!1834567 d!560828))

(declare-fun d!560830 () Bool)

(assert (=> d!560830 (= (tail!2751 (map!4189 rules!4610 lambda!72098)) (t!171047 (map!4189 rules!4610 lambda!72098)))))

(assert (=> b!1834567 d!560830))

(declare-fun b!1834795 () Bool)

(declare-fun e!1172615 () Bool)

(assert (=> b!1834795 (= e!1172615 (inv!17 (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970))))))

(declare-fun b!1834796 () Bool)

(declare-fun e!1172616 () Bool)

(assert (=> b!1834796 (= e!1172616 (inv!16 (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970))))))

(declare-fun b!1834797 () Bool)

(assert (=> b!1834797 (= e!1172616 e!1172615)))

(declare-fun c!299234 () Bool)

(assert (=> b!1834797 (= c!299234 ((_ is IntegerValue!11212) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970))))))

(declare-fun b!1834798 () Bool)

(declare-fun res!825062 () Bool)

(declare-fun e!1172614 () Bool)

(assert (=> b!1834798 (=> res!825062 e!1172614)))

(assert (=> b!1834798 (= res!825062 (not ((_ is IntegerValue!11213) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970)))))))

(assert (=> b!1834798 (= e!1172615 e!1172614)))

(declare-fun b!1834794 () Bool)

(assert (=> b!1834794 (= e!1172614 (inv!15 (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970))))))

(declare-fun d!560832 () Bool)

(declare-fun c!299233 () Bool)

(assert (=> d!560832 (= c!299233 ((_ is IntegerValue!11211) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970))))))

(assert (=> d!560832 (= (inv!21 (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!711970))) e!1172616)))

(assert (= (and d!560832 c!299233) b!1834796))

(assert (= (and d!560832 (not c!299233)) b!1834797))

(assert (= (and b!1834797 c!299234) b!1834795))

(assert (= (and b!1834797 (not c!299234)) b!1834798))

(assert (= (and b!1834798 (not res!825062)) b!1834794))

(declare-fun m!2262475 () Bool)

(assert (=> b!1834795 m!2262475))

(declare-fun m!2262477 () Bool)

(assert (=> b!1834796 m!2262477))

(declare-fun m!2262479 () Bool)

(assert (=> b!1834794 m!2262479))

(assert (=> tb!112185 d!560832))

(declare-fun d!560834 () Bool)

(declare-fun lt!712196 () Int)

(assert (=> d!560834 (>= lt!712196 0)))

(declare-fun e!1172617 () Int)

(assert (=> d!560834 (= lt!712196 e!1172617)))

(declare-fun c!299235 () Bool)

(assert (=> d!560834 (= c!299235 ((_ is Nil!20174) lt!712160))))

(assert (=> d!560834 (= (size!16002 lt!712160) lt!712196)))

(declare-fun b!1834799 () Bool)

(assert (=> b!1834799 (= e!1172617 0)))

(declare-fun b!1834800 () Bool)

(assert (=> b!1834800 (= e!1172617 (+ 1 (size!16002 (t!171045 lt!712160))))))

(assert (= (and d!560834 c!299235) b!1834799))

(assert (= (and d!560834 (not c!299235)) b!1834800))

(declare-fun m!2262481 () Bool)

(assert (=> b!1834800 m!2262481))

(assert (=> b!1834613 d!560834))

(declare-fun d!560836 () Bool)

(declare-fun lt!712197 () Int)

(assert (=> d!560836 (>= lt!712197 0)))

(declare-fun e!1172618 () Int)

(assert (=> d!560836 (= lt!712197 e!1172618)))

(declare-fun c!299236 () Bool)

(assert (=> d!560836 (= c!299236 ((_ is Nil!20174) lt!711966))))

(assert (=> d!560836 (= (size!16002 lt!711966) lt!712197)))

(declare-fun b!1834801 () Bool)

(assert (=> b!1834801 (= e!1172618 0)))

(declare-fun b!1834802 () Bool)

(assert (=> b!1834802 (= e!1172618 (+ 1 (size!16002 (t!171045 lt!711966))))))

(assert (= (and d!560836 c!299236) b!1834801))

(assert (= (and d!560836 (not c!299236)) b!1834802))

(declare-fun m!2262483 () Bool)

(assert (=> b!1834802 m!2262483))

(assert (=> b!1834613 d!560836))

(declare-fun d!560838 () Bool)

(declare-fun lt!712198 () Int)

(assert (=> d!560838 (>= lt!712198 0)))

(declare-fun e!1172619 () Int)

(assert (=> d!560838 (= lt!712198 e!1172619)))

(declare-fun c!299237 () Bool)

(assert (=> d!560838 (= c!299237 ((_ is Nil!20174) suffix!1698))))

(assert (=> d!560838 (= (size!16002 suffix!1698) lt!712198)))

(declare-fun b!1834803 () Bool)

(assert (=> b!1834803 (= e!1172619 0)))

(declare-fun b!1834804 () Bool)

(assert (=> b!1834804 (= e!1172619 (+ 1 (size!16002 (t!171045 suffix!1698))))))

(assert (= (and d!560838 c!299237) b!1834803))

(assert (= (and d!560838 (not c!299237)) b!1834804))

(declare-fun m!2262485 () Bool)

(assert (=> b!1834804 m!2262485))

(assert (=> b!1834613 d!560838))

(declare-fun d!560840 () Bool)

(declare-fun nullableFct!345 (Regex!4975) Bool)

(assert (=> d!560840 (= (nullable!1551 (regex!3647 rule!580)) (nullableFct!345 (regex!3647 rule!580)))))

(declare-fun bs!408119 () Bool)

(assert (= bs!408119 d!560840))

(declare-fun m!2262487 () Bool)

(assert (=> bs!408119 m!2262487))

(assert (=> b!1834625 d!560840))

(assert (=> d!560722 d!560616))

(assert (=> d!560722 d!560618))

(declare-fun d!560842 () Bool)

(declare-fun lt!712199 () Int)

(assert (=> d!560842 (>= lt!712199 0)))

(declare-fun e!1172620 () Int)

(assert (=> d!560842 (= lt!712199 e!1172620)))

(declare-fun c!299238 () Bool)

(assert (=> d!560842 (= c!299238 ((_ is Nil!20174) lt!712135))))

(assert (=> d!560842 (= (size!16002 lt!712135) lt!712199)))

(declare-fun b!1834805 () Bool)

(assert (=> b!1834805 (= e!1172620 0)))

(declare-fun b!1834806 () Bool)

(assert (=> b!1834806 (= e!1172620 (+ 1 (size!16002 (t!171045 lt!712135))))))

(assert (= (and d!560842 c!299238) b!1834805))

(assert (= (and d!560842 (not c!299238)) b!1834806))

(declare-fun m!2262489 () Bool)

(assert (=> b!1834806 m!2262489))

(assert (=> d!560722 d!560842))

(declare-fun d!560844 () Bool)

(assert (=> d!560844 (= (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!712135)) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!712135)))))

(declare-fun b_lambda!60781 () Bool)

(assert (=> (not b_lambda!60781) (not d!560844)))

(declare-fun t!171136 () Bool)

(declare-fun tb!112269 () Bool)

(assert (=> (and b!1834660 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580))) t!171136) tb!112269))

(declare-fun result!135028 () Bool)

(assert (=> tb!112269 (= result!135028 (inv!21 (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!712135))))))

(declare-fun m!2262491 () Bool)

(assert (=> tb!112269 m!2262491))

(assert (=> d!560844 t!171136))

(declare-fun b_and!143101 () Bool)

(assert (= b_and!143057 (and (=> t!171136 result!135028) b_and!143101)))

(declare-fun tb!112271 () Bool)

(declare-fun t!171138 () Bool)

(assert (=> (and b!1834103 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580))) t!171138) tb!112271))

(declare-fun result!135030 () Bool)

(assert (= result!135030 result!135028))

(assert (=> d!560844 t!171138))

(declare-fun b_and!143103 () Bool)

(assert (= b_and!143001 (and (=> t!171138 result!135030) b_and!143103)))

(declare-fun t!171140 () Bool)

(declare-fun tb!112273 () Bool)

(assert (=> (and b!1834113 (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 rule!580))) t!171140) tb!112273))

(declare-fun result!135032 () Bool)

(assert (= result!135032 result!135028))

(assert (=> d!560844 t!171140))

(declare-fun b_and!143105 () Bool)

(assert (= b_and!143007 (and (=> t!171140 result!135032) b_and!143105)))

(declare-fun t!171142 () Bool)

(declare-fun tb!112275 () Bool)

(assert (=> (and b!1834102 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580))) t!171142) tb!112275))

(declare-fun result!135034 () Bool)

(assert (= result!135034 result!135028))

(assert (=> d!560844 t!171142))

(declare-fun b_and!143107 () Bool)

(assert (= b_and!143005 (and (=> t!171142 result!135034) b_and!143107)))

(declare-fun t!171144 () Bool)

(declare-fun tb!112277 () Bool)

(assert (=> (and b!1834110 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580))) t!171144) tb!112277))

(declare-fun result!135036 () Bool)

(assert (= result!135036 result!135028))

(assert (=> d!560844 t!171144))

(declare-fun b_and!143109 () Bool)

(assert (= b_and!143003 (and (=> t!171144 result!135036) b_and!143109)))

(declare-fun tb!112279 () Bool)

(declare-fun t!171146 () Bool)

(assert (=> (and b!1834695 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580))) t!171146) tb!112279))

(declare-fun result!135038 () Bool)

(assert (= result!135038 result!135028))

(assert (=> d!560844 t!171146))

(declare-fun b_and!143111 () Bool)

(assert (= b_and!143061 (and (=> t!171146 result!135038) b_and!143111)))

(assert (=> d!560844 m!2262227))

(declare-fun m!2262493 () Bool)

(assert (=> d!560844 m!2262493))

(assert (=> d!560722 d!560844))

(declare-fun d!560846 () Bool)

(declare-fun lt!712200 () List!20246)

(assert (=> d!560846 (= (size!16007 lt!712200) (size!16008 rules!4610))))

(declare-fun e!1172622 () List!20246)

(assert (=> d!560846 (= lt!712200 e!1172622)))

(declare-fun c!299239 () Bool)

(assert (=> d!560846 (= c!299239 ((_ is Nil!20175) rules!4610))))

(assert (=> d!560846 (= (map!4189 rules!4610 lambda!72127) lt!712200)))

(declare-fun b!1834807 () Bool)

(assert (=> b!1834807 (= e!1172622 Nil!20176)))

(declare-fun b!1834808 () Bool)

(assert (=> b!1834808 (= e!1172622 ($colon$colon!466 (map!4189 (t!171046 rules!4610) lambda!72127) (dynLambda!10041 lambda!72127 (h!25576 rules!4610))))))

(assert (= (and d!560846 c!299239) b!1834807))

(assert (= (and d!560846 (not c!299239)) b!1834808))

(declare-fun b_lambda!60783 () Bool)

(assert (=> (not b_lambda!60783) (not b!1834808)))

(declare-fun m!2262495 () Bool)

(assert (=> d!560846 m!2262495))

(assert (=> d!560846 m!2262211))

(declare-fun m!2262497 () Bool)

(assert (=> b!1834808 m!2262497))

(declare-fun m!2262499 () Bool)

(assert (=> b!1834808 m!2262499))

(assert (=> b!1834808 m!2262497))

(assert (=> b!1834808 m!2262499))

(declare-fun m!2262501 () Bool)

(assert (=> b!1834808 m!2262501))

(assert (=> d!560722 d!560846))

(declare-fun bs!408120 () Bool)

(declare-fun d!560848 () Bool)

(assert (= bs!408120 (and d!560848 d!560734)))

(declare-fun lambda!72147 () Int)

(assert (=> bs!408120 (= lambda!72147 lambda!72134)))

(assert (=> d!560848 true))

(declare-fun lt!712201 () Bool)

(assert (=> d!560848 (= lt!712201 (rulesValidInductive!1262 thiss!28318 rules!4610))))

(assert (=> d!560848 (= lt!712201 (forall!4349 rules!4610 lambda!72147))))

(assert (=> d!560848 (= (rulesValid!1394 thiss!28318 rules!4610) lt!712201)))

(declare-fun bs!408121 () Bool)

(assert (= bs!408121 d!560848))

(assert (=> bs!408121 m!2261921))

(declare-fun m!2262503 () Bool)

(assert (=> bs!408121 m!2262503))

(assert (=> d!560722 d!560848))

(declare-fun d!560850 () Bool)

(assert (=> d!560850 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!712135)) rule!580 (size!16002 lt!712135) lt!712135) suffix!1698)))))

(declare-fun lt!712202 () Unit!34851)

(assert (=> d!560850 (= lt!712202 (choose!11546 thiss!28318 rules!4610 lt!712135 input!3681 suffix!1698 rule!580))))

(assert (=> d!560850 (not (isEmpty!12737 rules!4610))))

(assert (=> d!560850 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 thiss!28318 rules!4610 lt!712135 input!3681 suffix!1698 rule!580) lt!712202)))

(declare-fun bs!408122 () Bool)

(assert (= bs!408122 d!560850))

(declare-fun m!2262505 () Bool)

(assert (=> bs!408122 m!2262505))

(assert (=> bs!408122 m!2261749))

(assert (=> bs!408122 m!2262227))

(assert (=> bs!408122 m!2261719))

(assert (=> bs!408122 m!2262223))

(assert (=> bs!408122 m!2262227))

(assert (=> bs!408122 m!2262229))

(assert (=> d!560722 d!560850))

(assert (=> d!560722 d!560628))

(declare-fun d!560852 () Bool)

(assert (=> d!560852 (= (seqFromList!2604 lt!712135) (fromListB!1194 lt!712135))))

(declare-fun bs!408123 () Bool)

(assert (= bs!408123 d!560852))

(declare-fun m!2262507 () Bool)

(assert (=> bs!408123 m!2262507))

(assert (=> d!560722 d!560852))

(declare-fun d!560854 () Bool)

(declare-fun res!825072 () Bool)

(declare-fun e!1172634 () Bool)

(assert (=> d!560854 (=> res!825072 e!1172634)))

(assert (=> d!560854 (= res!825072 ((_ is Nil!20176) (map!4189 rules!4610 lambda!72127)))))

(assert (=> d!560854 (= (forall!4348 (map!4189 rules!4610 lambda!72127) lambda!72128) e!1172634)))

(declare-fun b!1834822 () Bool)

(declare-fun e!1172635 () Bool)

(assert (=> b!1834822 (= e!1172634 e!1172635)))

(declare-fun res!825073 () Bool)

(assert (=> b!1834822 (=> (not res!825073) (not e!1172635))))

(declare-fun dynLambda!10043 (Int Regex!4975) Bool)

(assert (=> b!1834822 (= res!825073 (dynLambda!10043 lambda!72128 (h!25577 (map!4189 rules!4610 lambda!72127))))))

(declare-fun b!1834823 () Bool)

(assert (=> b!1834823 (= e!1172635 (forall!4348 (t!171047 (map!4189 rules!4610 lambda!72127)) lambda!72128))))

(assert (= (and d!560854 (not res!825072)) b!1834822))

(assert (= (and b!1834822 res!825073) b!1834823))

(declare-fun b_lambda!60787 () Bool)

(assert (=> (not b_lambda!60787) (not b!1834822)))

(declare-fun m!2262515 () Bool)

(assert (=> b!1834822 m!2262515))

(declare-fun m!2262517 () Bool)

(assert (=> b!1834823 m!2262517))

(assert (=> d!560722 d!560854))

(declare-fun lt!712203 () Bool)

(declare-fun d!560858 () Bool)

(assert (=> d!560858 (= lt!712203 (select (content!2998 (map!4189 (t!171046 rs!808) lambda!72131)) (regex!3647 rule!580)))))

(declare-fun e!1172637 () Bool)

(assert (=> d!560858 (= lt!712203 e!1172637)))

(declare-fun res!825075 () Bool)

(assert (=> d!560858 (=> (not res!825075) (not e!1172637))))

(assert (=> d!560858 (= res!825075 ((_ is Cons!20176) (map!4189 (t!171046 rs!808) lambda!72131)))))

(assert (=> d!560858 (= (contains!3725 (map!4189 (t!171046 rs!808) lambda!72131) (regex!3647 rule!580)) lt!712203)))

(declare-fun b!1834824 () Bool)

(declare-fun e!1172638 () Bool)

(assert (=> b!1834824 (= e!1172637 e!1172638)))

(declare-fun res!825074 () Bool)

(assert (=> b!1834824 (=> res!825074 e!1172638)))

(assert (=> b!1834824 (= res!825074 (= (h!25577 (map!4189 (t!171046 rs!808) lambda!72131)) (regex!3647 rule!580)))))

(declare-fun b!1834825 () Bool)

(assert (=> b!1834825 (= e!1172638 (contains!3725 (t!171047 (map!4189 (t!171046 rs!808) lambda!72131)) (regex!3647 rule!580)))))

(assert (= (and d!560858 res!825075) b!1834824))

(assert (= (and b!1834824 (not res!825074)) b!1834825))

(assert (=> d!560858 m!2262255))

(declare-fun m!2262521 () Bool)

(assert (=> d!560858 m!2262521))

(declare-fun m!2262523 () Bool)

(assert (=> d!560858 m!2262523))

(declare-fun m!2262525 () Bool)

(assert (=> b!1834825 m!2262525))

(assert (=> d!560728 d!560858))

(assert (=> d!560728 d!560618))

(declare-fun d!560860 () Bool)

(assert (=> d!560860 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!712155)) rule!580 (size!16002 lt!712155) lt!712155) suffix!1698)))))

(declare-fun lt!712204 () Unit!34851)

(assert (=> d!560860 (= lt!712204 (choose!11546 thiss!28318 rules!4610 lt!712155 input!3681 suffix!1698 rule!580))))

(assert (=> d!560860 (not (isEmpty!12737 rules!4610))))

(assert (=> d!560860 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 thiss!28318 rules!4610 lt!712155 input!3681 suffix!1698 rule!580) lt!712204)))

(declare-fun bs!408124 () Bool)

(assert (= bs!408124 d!560860))

(declare-fun m!2262527 () Bool)

(assert (=> bs!408124 m!2262527))

(assert (=> bs!408124 m!2261749))

(assert (=> bs!408124 m!2262253))

(assert (=> bs!408124 m!2261719))

(assert (=> bs!408124 m!2262263))

(assert (=> bs!408124 m!2262253))

(assert (=> bs!408124 m!2262259))

(assert (=> d!560728 d!560860))

(declare-fun d!560862 () Bool)

(assert (=> d!560862 (= (seqFromList!2604 lt!712155) (fromListB!1194 lt!712155))))

(declare-fun bs!408125 () Bool)

(assert (= bs!408125 d!560862))

(declare-fun m!2262529 () Bool)

(assert (=> bs!408125 m!2262529))

(assert (=> d!560728 d!560862))

(declare-fun bs!408126 () Bool)

(declare-fun d!560864 () Bool)

(assert (= bs!408126 (and d!560864 d!560734)))

(declare-fun lambda!72148 () Int)

(assert (=> bs!408126 (= lambda!72148 lambda!72134)))

(declare-fun bs!408128 () Bool)

(assert (= bs!408128 (and d!560864 d!560848)))

(assert (=> bs!408128 (= lambda!72148 lambda!72147)))

(assert (=> d!560864 true))

(declare-fun lt!712205 () Bool)

(assert (=> d!560864 (= lt!712205 (rulesValidInductive!1262 thiss!28318 (t!171046 rs!808)))))

(assert (=> d!560864 (= lt!712205 (forall!4349 (t!171046 rs!808) lambda!72148))))

(assert (=> d!560864 (= (rulesValid!1394 thiss!28318 (t!171046 rs!808)) lt!712205)))

(declare-fun bs!408129 () Bool)

(assert (= bs!408129 d!560864))

(declare-fun m!2262535 () Bool)

(assert (=> bs!408129 m!2262535))

(declare-fun m!2262537 () Bool)

(assert (=> bs!408129 m!2262537))

(assert (=> d!560728 d!560864))

(assert (=> d!560728 d!560722))

(declare-fun d!560870 () Bool)

(assert (=> d!560870 (= (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!712155)) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!712155)))))

(declare-fun b_lambda!60791 () Bool)

(assert (=> (not b_lambda!60791) (not d!560870)))

(declare-fun tb!112295 () Bool)

(declare-fun t!171162 () Bool)

(assert (=> (and b!1834660 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580))) t!171162) tb!112295))

(declare-fun result!135054 () Bool)

(assert (=> tb!112295 (= result!135054 (inv!21 (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 lt!712155))))))

(declare-fun m!2262541 () Bool)

(assert (=> tb!112295 m!2262541))

(assert (=> d!560870 t!171162))

(declare-fun b_and!143127 () Bool)

(assert (= b_and!143101 (and (=> t!171162 result!135054) b_and!143127)))

(declare-fun t!171166 () Bool)

(declare-fun tb!112299 () Bool)

(assert (=> (and b!1834103 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580))) t!171166) tb!112299))

(declare-fun result!135058 () Bool)

(assert (= result!135058 result!135054))

(assert (=> d!560870 t!171166))

(declare-fun b_and!143131 () Bool)

(assert (= b_and!143103 (and (=> t!171166 result!135058) b_and!143131)))

(declare-fun tb!112303 () Bool)

(declare-fun t!171170 () Bool)

(assert (=> (and b!1834695 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580))) t!171170) tb!112303))

(declare-fun result!135062 () Bool)

(assert (= result!135062 result!135054))

(assert (=> d!560870 t!171170))

(declare-fun b_and!143135 () Bool)

(assert (= b_and!143111 (and (=> t!171170 result!135062) b_and!143135)))

(declare-fun tb!112307 () Bool)

(declare-fun t!171174 () Bool)

(assert (=> (and b!1834102 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580))) t!171174) tb!112307))

(declare-fun result!135066 () Bool)

(assert (= result!135066 result!135054))

(assert (=> d!560870 t!171174))

(declare-fun b_and!143139 () Bool)

(assert (= b_and!143107 (and (=> t!171174 result!135066) b_and!143139)))

(declare-fun tb!112311 () Bool)

(declare-fun t!171178 () Bool)

(assert (=> (and b!1834110 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580))) t!171178) tb!112311))

(declare-fun result!135070 () Bool)

(assert (= result!135070 result!135054))

(assert (=> d!560870 t!171178))

(declare-fun b_and!143143 () Bool)

(assert (= b_and!143109 (and (=> t!171178 result!135070) b_and!143143)))

(declare-fun t!171182 () Bool)

(declare-fun tb!112315 () Bool)

(assert (=> (and b!1834113 (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 rule!580))) t!171182) tb!112315))

(declare-fun result!135074 () Bool)

(assert (= result!135074 result!135054))

(assert (=> d!560870 t!171182))

(declare-fun b_and!143145 () Bool)

(assert (= b_and!143105 (and (=> t!171182 result!135074) b_and!143145)))

(assert (=> d!560870 m!2262253))

(declare-fun m!2262543 () Bool)

(assert (=> d!560870 m!2262543))

(assert (=> d!560728 d!560870))

(declare-fun d!560872 () Bool)

(declare-fun lt!712206 () List!20246)

(assert (=> d!560872 (= (size!16007 lt!712206) (size!16008 (t!171046 rs!808)))))

(declare-fun e!1172641 () List!20246)

(assert (=> d!560872 (= lt!712206 e!1172641)))

(declare-fun c!299242 () Bool)

(assert (=> d!560872 (= c!299242 ((_ is Nil!20175) (t!171046 rs!808)))))

(assert (=> d!560872 (= (map!4189 (t!171046 rs!808) lambda!72131) lt!712206)))

(declare-fun b!1834826 () Bool)

(assert (=> b!1834826 (= e!1172641 Nil!20176)))

(declare-fun b!1834827 () Bool)

(assert (=> b!1834827 (= e!1172641 ($colon$colon!466 (map!4189 (t!171046 (t!171046 rs!808)) lambda!72131) (dynLambda!10041 lambda!72131 (h!25576 (t!171046 rs!808)))))))

(assert (= (and d!560872 c!299242) b!1834826))

(assert (= (and d!560872 (not c!299242)) b!1834827))

(declare-fun b_lambda!60793 () Bool)

(assert (=> (not b_lambda!60793) (not b!1834827)))

(declare-fun m!2262549 () Bool)

(assert (=> d!560872 m!2262549))

(declare-fun m!2262551 () Bool)

(assert (=> d!560872 m!2262551))

(declare-fun m!2262553 () Bool)

(assert (=> b!1834827 m!2262553))

(declare-fun m!2262555 () Bool)

(assert (=> b!1834827 m!2262555))

(assert (=> b!1834827 m!2262553))

(assert (=> b!1834827 m!2262555))

(declare-fun m!2262557 () Bool)

(assert (=> b!1834827 m!2262557))

(assert (=> d!560728 d!560872))

(assert (=> d!560728 d!560616))

(assert (=> d!560728 d!560628))

(declare-fun d!560878 () Bool)

(declare-fun lt!712207 () Int)

(assert (=> d!560878 (>= lt!712207 0)))

(declare-fun e!1172642 () Int)

(assert (=> d!560878 (= lt!712207 e!1172642)))

(declare-fun c!299243 () Bool)

(assert (=> d!560878 (= c!299243 ((_ is Nil!20174) lt!712155))))

(assert (=> d!560878 (= (size!16002 lt!712155) lt!712207)))

(declare-fun b!1834828 () Bool)

(assert (=> b!1834828 (= e!1172642 0)))

(declare-fun b!1834829 () Bool)

(assert (=> b!1834829 (= e!1172642 (+ 1 (size!16002 (t!171045 lt!712155))))))

(assert (= (and d!560878 c!299243) b!1834828))

(assert (= (and d!560878 (not c!299243)) b!1834829))

(declare-fun m!2262559 () Bool)

(assert (=> b!1834829 m!2262559))

(assert (=> d!560728 d!560878))

(declare-fun d!560882 () Bool)

(declare-fun lt!712208 () Int)

(assert (=> d!560882 (>= lt!712208 0)))

(declare-fun e!1172646 () Int)

(assert (=> d!560882 (= lt!712208 e!1172646)))

(declare-fun c!299246 () Bool)

(assert (=> d!560882 (= c!299246 ((_ is Nil!20174) (_2!11215 (get!6228 lt!712017))))))

(assert (=> d!560882 (= (size!16002 (_2!11215 (get!6228 lt!712017))) lt!712208)))

(declare-fun b!1834835 () Bool)

(assert (=> b!1834835 (= e!1172646 0)))

(declare-fun b!1834836 () Bool)

(assert (=> b!1834836 (= e!1172646 (+ 1 (size!16002 (t!171045 (_2!11215 (get!6228 lt!712017))))))))

(assert (= (and d!560882 c!299246) b!1834835))

(assert (= (and d!560882 (not c!299246)) b!1834836))

(declare-fun m!2262561 () Bool)

(assert (=> b!1834836 m!2262561))

(assert (=> b!1834283 d!560882))

(declare-fun d!560884 () Bool)

(assert (=> d!560884 (= (get!6228 lt!712017) (v!25805 lt!712017))))

(assert (=> b!1834283 d!560884))

(declare-fun d!560888 () Bool)

(declare-fun lt!712209 () Int)

(assert (=> d!560888 (>= lt!712209 0)))

(declare-fun e!1172647 () Int)

(assert (=> d!560888 (= lt!712209 e!1172647)))

(declare-fun c!299247 () Bool)

(assert (=> d!560888 (= c!299247 ((_ is Nil!20174) input!3681))))

(assert (=> d!560888 (= (size!16002 input!3681) lt!712209)))

(declare-fun b!1834837 () Bool)

(assert (=> b!1834837 (= e!1172647 0)))

(declare-fun b!1834838 () Bool)

(assert (=> b!1834838 (= e!1172647 (+ 1 (size!16002 (t!171045 input!3681))))))

(assert (= (and d!560888 c!299247) b!1834837))

(assert (= (and d!560888 (not c!299247)) b!1834838))

(declare-fun m!2262569 () Bool)

(assert (=> b!1834838 m!2262569))

(assert (=> b!1834283 d!560888))

(declare-fun d!560890 () Bool)

(declare-fun charsToBigInt!1 (List!20243) Int)

(assert (=> d!560890 (= (inv!17 (value!113606 token!567)) (= (charsToBigInt!1 (text!26607 (value!113606 token!567))) (value!113598 (value!113606 token!567))))))

(declare-fun bs!408133 () Bool)

(assert (= bs!408133 d!560890))

(declare-fun m!2262573 () Bool)

(assert (=> bs!408133 m!2262573))

(assert (=> b!1834140 d!560890))

(declare-fun bs!408134 () Bool)

(declare-fun d!560894 () Bool)

(assert (= bs!408134 (and d!560894 d!560652)))

(declare-fun lambda!72150 () Int)

(assert (=> bs!408134 (= lambda!72150 lambda!72122)))

(declare-fun bs!408135 () Bool)

(assert (= bs!408135 (and d!560894 d!560722)))

(assert (=> bs!408135 (= lambda!72150 lambda!72128)))

(declare-fun b!1834854 () Bool)

(declare-fun e!1172660 () Bool)

(declare-fun lt!712211 () Regex!4975)

(assert (=> b!1834854 (= e!1172660 (isEmptyLang!133 lt!712211))))

(declare-fun b!1834855 () Bool)

(declare-fun e!1172656 () Regex!4975)

(assert (=> b!1834855 (= e!1172656 (Union!4975 (h!25577 (t!171047 (map!4189 rules!4610 lambda!72098))) (generalisedUnion!490 (t!171047 (t!171047 (map!4189 rules!4610 lambda!72098))))))))

(declare-fun b!1834856 () Bool)

(assert (=> b!1834856 (= e!1172656 EmptyLang!4975)))

(declare-fun b!1834857 () Bool)

(declare-fun e!1172658 () Bool)

(assert (=> b!1834857 (= e!1172658 (isEmpty!12743 (t!171047 (t!171047 (map!4189 rules!4610 lambda!72098)))))))

(declare-fun b!1834858 () Bool)

(declare-fun e!1172659 () Regex!4975)

(assert (=> b!1834858 (= e!1172659 e!1172656)))

(declare-fun c!299254 () Bool)

(assert (=> b!1834858 (= c!299254 ((_ is Cons!20176) (t!171047 (map!4189 rules!4610 lambda!72098))))))

(declare-fun b!1834859 () Bool)

(declare-fun e!1172657 () Bool)

(assert (=> b!1834859 (= e!1172657 (isUnion!133 lt!712211))))

(declare-fun b!1834860 () Bool)

(assert (=> b!1834860 (= e!1172657 (= lt!712211 (head!4292 (t!171047 (map!4189 rules!4610 lambda!72098)))))))

(declare-fun e!1172655 () Bool)

(assert (=> d!560894 e!1172655))

(declare-fun res!825086 () Bool)

(assert (=> d!560894 (=> (not res!825086) (not e!1172655))))

(assert (=> d!560894 (= res!825086 (validRegex!2033 lt!712211))))

(assert (=> d!560894 (= lt!712211 e!1172659)))

(declare-fun c!299252 () Bool)

(assert (=> d!560894 (= c!299252 e!1172658)))

(declare-fun res!825085 () Bool)

(assert (=> d!560894 (=> (not res!825085) (not e!1172658))))

(assert (=> d!560894 (= res!825085 ((_ is Cons!20176) (t!171047 (map!4189 rules!4610 lambda!72098))))))

(assert (=> d!560894 (forall!4348 (t!171047 (map!4189 rules!4610 lambda!72098)) lambda!72150)))

(assert (=> d!560894 (= (generalisedUnion!490 (t!171047 (map!4189 rules!4610 lambda!72098))) lt!712211)))

(declare-fun b!1834853 () Bool)

(assert (=> b!1834853 (= e!1172660 e!1172657)))

(declare-fun c!299253 () Bool)

(assert (=> b!1834853 (= c!299253 (isEmpty!12743 (tail!2751 (t!171047 (map!4189 rules!4610 lambda!72098)))))))

(declare-fun b!1834861 () Bool)

(assert (=> b!1834861 (= e!1172659 (h!25577 (t!171047 (map!4189 rules!4610 lambda!72098))))))

(declare-fun b!1834862 () Bool)

(assert (=> b!1834862 (= e!1172655 e!1172660)))

(declare-fun c!299251 () Bool)

(assert (=> b!1834862 (= c!299251 (isEmpty!12743 (t!171047 (map!4189 rules!4610 lambda!72098))))))

(assert (= (and d!560894 res!825085) b!1834857))

(assert (= (and d!560894 c!299252) b!1834861))

(assert (= (and d!560894 (not c!299252)) b!1834858))

(assert (= (and b!1834858 c!299254) b!1834855))

(assert (= (and b!1834858 (not c!299254)) b!1834856))

(assert (= (and d!560894 res!825086) b!1834862))

(assert (= (and b!1834862 c!299251) b!1834854))

(assert (= (and b!1834862 (not c!299251)) b!1834853))

(assert (= (and b!1834853 c!299253) b!1834860))

(assert (= (and b!1834853 (not c!299253)) b!1834859))

(assert (=> b!1834862 m!2262199))

(declare-fun m!2262587 () Bool)

(assert (=> d!560894 m!2262587))

(declare-fun m!2262589 () Bool)

(assert (=> d!560894 m!2262589))

(declare-fun m!2262591 () Bool)

(assert (=> b!1834860 m!2262591))

(declare-fun m!2262593 () Bool)

(assert (=> b!1834854 m!2262593))

(declare-fun m!2262595 () Bool)

(assert (=> b!1834857 m!2262595))

(declare-fun m!2262597 () Bool)

(assert (=> b!1834853 m!2262597))

(assert (=> b!1834853 m!2262597))

(declare-fun m!2262599 () Bool)

(assert (=> b!1834853 m!2262599))

(declare-fun m!2262601 () Bool)

(assert (=> b!1834859 m!2262601))

(declare-fun m!2262603 () Bool)

(assert (=> b!1834855 m!2262603))

(assert (=> b!1834569 d!560894))

(assert (=> b!1834287 d!560884))

(declare-fun d!560898 () Bool)

(assert (=> d!560898 (= (apply!5435 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!712017))))) (dynLambda!10039 (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!712017))))))))

(declare-fun b_lambda!60795 () Bool)

(assert (=> (not b_lambda!60795) (not d!560898)))

(declare-fun t!171184 () Bool)

(declare-fun tb!112317 () Bool)

(assert (=> (and b!1834110 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171184) tb!112317))

(declare-fun result!135076 () Bool)

(assert (=> tb!112317 (= result!135076 (inv!21 (dynLambda!10039 (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!712017)))))))))

(declare-fun m!2262619 () Bool)

(assert (=> tb!112317 m!2262619))

(assert (=> d!560898 t!171184))

(declare-fun b_and!143149 () Bool)

(assert (= b_and!143143 (and (=> t!171184 result!135076) b_and!143149)))

(declare-fun t!171186 () Bool)

(declare-fun tb!112319 () Bool)

(assert (=> (and b!1834695 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171186) tb!112319))

(declare-fun result!135078 () Bool)

(assert (= result!135078 result!135076))

(assert (=> d!560898 t!171186))

(declare-fun b_and!143151 () Bool)

(assert (= b_and!143135 (and (=> t!171186 result!135078) b_and!143151)))

(declare-fun t!171188 () Bool)

(declare-fun tb!112321 () Bool)

(assert (=> (and b!1834103 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171188) tb!112321))

(declare-fun result!135080 () Bool)

(assert (= result!135080 result!135076))

(assert (=> d!560898 t!171188))

(declare-fun b_and!143153 () Bool)

(assert (= b_and!143131 (and (=> t!171188 result!135080) b_and!143153)))

(declare-fun t!171190 () Bool)

(declare-fun tb!112323 () Bool)

(assert (=> (and b!1834660 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171190) tb!112323))

(declare-fun result!135082 () Bool)

(assert (= result!135082 result!135076))

(assert (=> d!560898 t!171190))

(declare-fun b_and!143155 () Bool)

(assert (= b_and!143127 (and (=> t!171190 result!135082) b_and!143155)))

(declare-fun tb!112325 () Bool)

(declare-fun t!171192 () Bool)

(assert (=> (and b!1834102 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171192) tb!112325))

(declare-fun result!135084 () Bool)

(assert (= result!135084 result!135076))

(assert (=> d!560898 t!171192))

(declare-fun b_and!143157 () Bool)

(assert (= b_and!143139 (and (=> t!171192 result!135084) b_and!143157)))

(declare-fun t!171194 () Bool)

(declare-fun tb!112327 () Bool)

(assert (=> (and b!1834113 (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171194) tb!112327))

(declare-fun result!135086 () Bool)

(assert (= result!135086 result!135076))

(assert (=> d!560898 t!171194))

(declare-fun b_and!143159 () Bool)

(assert (= b_and!143145 (and (=> t!171194 result!135086) b_and!143159)))

(assert (=> d!560898 m!2261923))

(declare-fun m!2262621 () Bool)

(assert (=> d!560898 m!2262621))

(assert (=> b!1834287 d!560898))

(declare-fun d!560902 () Bool)

(assert (=> d!560902 (= (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!712017)))) (fromListB!1194 (originalCharacters!4455 (_1!11215 (get!6228 lt!712017)))))))

(declare-fun bs!408136 () Bool)

(assert (= bs!408136 d!560902))

(declare-fun m!2262623 () Bool)

(assert (=> bs!408136 m!2262623))

(assert (=> b!1834287 d!560902))

(declare-fun d!560904 () Bool)

(assert (=> d!560904 (= (isEmpty!12743 (t!171047 (map!4189 rules!4610 lambda!72098))) ((_ is Nil!20176) (t!171047 (map!4189 rules!4610 lambda!72098))))))

(assert (=> b!1834571 d!560904))

(assert (=> d!560744 d!560848))

(declare-fun d!560906 () Bool)

(assert (=> d!560906 (= (isEmpty!12742 lt!711984) (not ((_ is Some!4226) lt!711984)))))

(assert (=> d!560618 d!560906))

(declare-fun d!560908 () Bool)

(assert (=> d!560908 (= (isEmpty!12741 (_1!11217 lt!711987)) ((_ is Nil!20174) (_1!11217 lt!711987)))))

(assert (=> d!560618 d!560908))

(declare-fun d!560910 () Bool)

(declare-fun lt!712233 () tuple2!19630)

(assert (=> d!560910 (= (++!5471 (_1!11217 lt!712233) (_2!11217 lt!712233)) input!3681)))

(declare-fun sizeTr!71 (List!20244 Int) Int)

(assert (=> d!560910 (= lt!712233 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 0 input!3681 input!3681 (sizeTr!71 input!3681 0)))))

(declare-fun lt!712237 () Unit!34851)

(declare-fun lt!712239 () Unit!34851)

(assert (=> d!560910 (= lt!712237 lt!712239)))

(declare-fun lt!712236 () List!20244)

(declare-fun lt!712235 () Int)

(assert (=> d!560910 (= (sizeTr!71 lt!712236 lt!712235) (+ (size!16002 lt!712236) lt!712235))))

(declare-fun lemmaSizeTrEqualsSize!71 (List!20244 Int) Unit!34851)

(assert (=> d!560910 (= lt!712239 (lemmaSizeTrEqualsSize!71 lt!712236 lt!712235))))

(assert (=> d!560910 (= lt!712235 0)))

(assert (=> d!560910 (= lt!712236 Nil!20174)))

(declare-fun lt!712238 () Unit!34851)

(declare-fun lt!712234 () Unit!34851)

(assert (=> d!560910 (= lt!712238 lt!712234)))

(declare-fun lt!712240 () Int)

(assert (=> d!560910 (= (sizeTr!71 input!3681 lt!712240) (+ (size!16002 input!3681) lt!712240))))

(assert (=> d!560910 (= lt!712234 (lemmaSizeTrEqualsSize!71 input!3681 lt!712240))))

(assert (=> d!560910 (= lt!712240 0)))

(assert (=> d!560910 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!560910 (= (findLongestMatch!450 (regex!3647 rule!580) input!3681) lt!712233)))

(declare-fun bs!408137 () Bool)

(assert (= bs!408137 d!560910))

(assert (=> bs!408137 m!2261857))

(declare-fun m!2262641 () Bool)

(assert (=> bs!408137 m!2262641))

(declare-fun m!2262643 () Bool)

(assert (=> bs!408137 m!2262643))

(declare-fun m!2262645 () Bool)

(assert (=> bs!408137 m!2262645))

(declare-fun m!2262647 () Bool)

(assert (=> bs!408137 m!2262647))

(declare-fun m!2262649 () Bool)

(assert (=> bs!408137 m!2262649))

(declare-fun m!2262651 () Bool)

(assert (=> bs!408137 m!2262651))

(declare-fun m!2262653 () Bool)

(assert (=> bs!408137 m!2262653))

(assert (=> bs!408137 m!2261811))

(assert (=> bs!408137 m!2262645))

(declare-fun m!2262655 () Bool)

(assert (=> bs!408137 m!2262655))

(assert (=> d!560618 d!560910))

(assert (=> d!560618 d!560748))

(declare-fun b!1834909 () Bool)

(declare-fun e!1172686 () Bool)

(declare-fun e!1172685 () Bool)

(assert (=> b!1834909 (= e!1172686 e!1172685)))

(declare-fun res!825096 () Bool)

(assert (=> b!1834909 (=> (not res!825096) (not e!1172685))))

(declare-fun lt!712241 () Option!4227)

(assert (=> b!1834909 (= res!825096 (isDefined!3529 lt!712241))))

(declare-fun b!1834910 () Bool)

(declare-fun res!825101 () Bool)

(assert (=> b!1834910 (=> (not res!825101) (not e!1172685))))

(assert (=> b!1834910 (= res!825101 (= (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712241)))) (originalCharacters!4455 (_1!11215 (get!6228 lt!712241)))))))

(declare-fun b!1834911 () Bool)

(declare-fun res!825095 () Bool)

(assert (=> b!1834911 (=> (not res!825095) (not e!1172685))))

(assert (=> b!1834911 (= res!825095 (= (++!5471 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712241)))) (_2!11215 (get!6228 lt!712241))) input!3681))))

(declare-fun b!1834912 () Bool)

(declare-fun res!825097 () Bool)

(assert (=> b!1834912 (=> (not res!825097) (not e!1172685))))

(assert (=> b!1834912 (= res!825097 (< (size!16002 (_2!11215 (get!6228 lt!712241))) (size!16002 input!3681)))))

(declare-fun b!1834913 () Bool)

(declare-fun e!1172687 () Option!4227)

(declare-fun call!114851 () Option!4227)

(assert (=> b!1834913 (= e!1172687 call!114851)))

(declare-fun d!560920 () Bool)

(assert (=> d!560920 e!1172686))

(declare-fun res!825100 () Bool)

(assert (=> d!560920 (=> res!825100 e!1172686)))

(assert (=> d!560920 (= res!825100 (isEmpty!12742 lt!712241))))

(assert (=> d!560920 (= lt!712241 e!1172687)))

(declare-fun c!299274 () Bool)

(assert (=> d!560920 (= c!299274 (and ((_ is Cons!20175) (t!171046 rules!4610)) ((_ is Nil!20175) (t!171046 (t!171046 rules!4610)))))))

(declare-fun lt!712244 () Unit!34851)

(declare-fun lt!712243 () Unit!34851)

(assert (=> d!560920 (= lt!712244 lt!712243)))

(assert (=> d!560920 (isPrefix!1842 input!3681 input!3681)))

(assert (=> d!560920 (= lt!712243 (lemmaIsPrefixRefl!1219 input!3681 input!3681))))

(assert (=> d!560920 (rulesValidInductive!1262 thiss!28318 (t!171046 rules!4610))))

(assert (=> d!560920 (= (maxPrefix!1824 thiss!28318 (t!171046 rules!4610) input!3681) lt!712241)))

(declare-fun b!1834914 () Bool)

(declare-fun lt!712245 () Option!4227)

(declare-fun lt!712242 () Option!4227)

(assert (=> b!1834914 (= e!1172687 (ite (and ((_ is None!4226) lt!712245) ((_ is None!4226) lt!712242)) None!4226 (ite ((_ is None!4226) lt!712242) lt!712245 (ite ((_ is None!4226) lt!712245) lt!712242 (ite (>= (size!16001 (_1!11215 (v!25805 lt!712245))) (size!16001 (_1!11215 (v!25805 lt!712242)))) lt!712245 lt!712242)))))))

(assert (=> b!1834914 (= lt!712245 call!114851)))

(assert (=> b!1834914 (= lt!712242 (maxPrefix!1824 thiss!28318 (t!171046 (t!171046 rules!4610)) input!3681))))

(declare-fun b!1834915 () Bool)

(declare-fun res!825098 () Bool)

(assert (=> b!1834915 (=> (not res!825098) (not e!1172685))))

(assert (=> b!1834915 (= res!825098 (matchR!2438 (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712241)))) (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712241))))))))

(declare-fun b!1834916 () Bool)

(declare-fun res!825099 () Bool)

(assert (=> b!1834916 (=> (not res!825099) (not e!1172685))))

(assert (=> b!1834916 (= res!825099 (= (value!113606 (_1!11215 (get!6228 lt!712241))) (apply!5435 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712241)))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!712241)))))))))

(declare-fun bm!114846 () Bool)

(assert (=> bm!114846 (= call!114851 (maxPrefixOneRule!1185 thiss!28318 (h!25576 (t!171046 rules!4610)) input!3681))))

(declare-fun b!1834917 () Bool)

(assert (=> b!1834917 (= e!1172685 (contains!3724 (t!171046 rules!4610) (rule!5831 (_1!11215 (get!6228 lt!712241)))))))

(assert (= (and d!560920 c!299274) b!1834913))

(assert (= (and d!560920 (not c!299274)) b!1834914))

(assert (= (or b!1834913 b!1834914) bm!114846))

(assert (= (and d!560920 (not res!825100)) b!1834909))

(assert (= (and b!1834909 res!825096) b!1834910))

(assert (= (and b!1834910 res!825101) b!1834912))

(assert (= (and b!1834912 res!825097) b!1834911))

(assert (= (and b!1834911 res!825095) b!1834916))

(assert (= (and b!1834916 res!825099) b!1834915))

(assert (= (and b!1834915 res!825098) b!1834917))

(declare-fun m!2262657 () Bool)

(assert (=> b!1834915 m!2262657))

(declare-fun m!2262659 () Bool)

(assert (=> b!1834915 m!2262659))

(assert (=> b!1834915 m!2262659))

(declare-fun m!2262661 () Bool)

(assert (=> b!1834915 m!2262661))

(assert (=> b!1834915 m!2262661))

(declare-fun m!2262663 () Bool)

(assert (=> b!1834915 m!2262663))

(assert (=> b!1834910 m!2262657))

(assert (=> b!1834910 m!2262659))

(assert (=> b!1834910 m!2262659))

(assert (=> b!1834910 m!2262661))

(declare-fun m!2262665 () Bool)

(assert (=> bm!114846 m!2262665))

(declare-fun m!2262667 () Bool)

(assert (=> b!1834909 m!2262667))

(assert (=> b!1834912 m!2262657))

(declare-fun m!2262669 () Bool)

(assert (=> b!1834912 m!2262669))

(assert (=> b!1834912 m!2261811))

(assert (=> b!1834917 m!2262657))

(declare-fun m!2262671 () Bool)

(assert (=> b!1834917 m!2262671))

(declare-fun m!2262673 () Bool)

(assert (=> b!1834914 m!2262673))

(assert (=> b!1834911 m!2262657))

(assert (=> b!1834911 m!2262659))

(assert (=> b!1834911 m!2262659))

(assert (=> b!1834911 m!2262661))

(assert (=> b!1834911 m!2262661))

(declare-fun m!2262675 () Bool)

(assert (=> b!1834911 m!2262675))

(declare-fun m!2262677 () Bool)

(assert (=> d!560920 m!2262677))

(assert (=> d!560920 m!2261917))

(assert (=> d!560920 m!2261919))

(declare-fun m!2262679 () Bool)

(assert (=> d!560920 m!2262679))

(assert (=> b!1834916 m!2262657))

(declare-fun m!2262681 () Bool)

(assert (=> b!1834916 m!2262681))

(assert (=> b!1834916 m!2262681))

(declare-fun m!2262683 () Bool)

(assert (=> b!1834916 m!2262683))

(assert (=> b!1834285 d!560920))

(declare-fun d!560922 () Bool)

(assert (=> d!560922 (= (list!8197 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))) (list!8199 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))))))

(declare-fun bs!408142 () Bool)

(assert (= bs!408142 d!560922))

(declare-fun m!2262685 () Bool)

(assert (=> bs!408142 m!2262685))

(assert (=> b!1834648 d!560922))

(declare-fun d!560924 () Bool)

(declare-fun lt!712255 () Int)

(assert (=> d!560924 (>= lt!712255 0)))

(declare-fun e!1172699 () Int)

(assert (=> d!560924 (= lt!712255 e!1172699)))

(declare-fun c!299284 () Bool)

(assert (=> d!560924 (= c!299284 ((_ is Nil!20176) lt!712142))))

(assert (=> d!560924 (= (size!16007 lt!712142) lt!712255)))

(declare-fun b!1834938 () Bool)

(assert (=> b!1834938 (= e!1172699 0)))

(declare-fun b!1834939 () Bool)

(assert (=> b!1834939 (= e!1172699 (+ 1 (size!16007 (t!171047 lt!712142))))))

(assert (= (and d!560924 c!299284) b!1834938))

(assert (= (and d!560924 (not c!299284)) b!1834939))

(declare-fun m!2262693 () Bool)

(assert (=> b!1834939 m!2262693))

(assert (=> d!560726 d!560924))

(declare-fun d!560928 () Bool)

(declare-fun lt!712262 () Int)

(assert (=> d!560928 (>= lt!712262 0)))

(declare-fun e!1172706 () Int)

(assert (=> d!560928 (= lt!712262 e!1172706)))

(declare-fun c!299291 () Bool)

(assert (=> d!560928 (= c!299291 ((_ is Nil!20175) rs!808))))

(assert (=> d!560928 (= (size!16008 rs!808) lt!712262)))

(declare-fun b!1834952 () Bool)

(assert (=> b!1834952 (= e!1172706 0)))

(declare-fun b!1834953 () Bool)

(assert (=> b!1834953 (= e!1172706 (+ 1 (size!16008 (t!171046 rs!808))))))

(assert (= (and d!560928 c!299291) b!1834952))

(assert (= (and d!560928 (not c!299291)) b!1834953))

(assert (=> b!1834953 m!2262551))

(assert (=> d!560726 d!560928))

(declare-fun d!560940 () Bool)

(assert (=> d!560940 (= (head!4291 lt!711970) (h!25575 lt!711970))))

(assert (=> b!1834212 d!560940))

(declare-fun d!560942 () Bool)

(declare-fun lt!712263 () Bool)

(assert (=> d!560942 (= lt!712263 (select (content!2997 rules!4610) (rule!5831 (_1!11215 (get!6228 lt!712017)))))))

(declare-fun e!1172707 () Bool)

(assert (=> d!560942 (= lt!712263 e!1172707)))

(declare-fun res!825105 () Bool)

(assert (=> d!560942 (=> (not res!825105) (not e!1172707))))

(assert (=> d!560942 (= res!825105 ((_ is Cons!20175) rules!4610))))

(assert (=> d!560942 (= (contains!3724 rules!4610 (rule!5831 (_1!11215 (get!6228 lt!712017)))) lt!712263)))

(declare-fun b!1834954 () Bool)

(declare-fun e!1172708 () Bool)

(assert (=> b!1834954 (= e!1172707 e!1172708)))

(declare-fun res!825104 () Bool)

(assert (=> b!1834954 (=> res!825104 e!1172708)))

(assert (=> b!1834954 (= res!825104 (= (h!25576 rules!4610) (rule!5831 (_1!11215 (get!6228 lt!712017)))))))

(declare-fun b!1834955 () Bool)

(assert (=> b!1834955 (= e!1172708 (contains!3724 (t!171046 rules!4610) (rule!5831 (_1!11215 (get!6228 lt!712017)))))))

(assert (= (and d!560942 res!825105) b!1834954))

(assert (= (and b!1834954 (not res!825104)) b!1834955))

(assert (=> d!560942 m!2261935))

(declare-fun m!2262731 () Bool)

(assert (=> d!560942 m!2262731))

(declare-fun m!2262733 () Bool)

(assert (=> b!1834955 m!2262733))

(assert (=> b!1834288 d!560942))

(assert (=> b!1834288 d!560884))

(declare-fun d!560946 () Bool)

(assert (=> d!560946 (= (isEmpty!12741 (originalCharacters!4455 token!567)) ((_ is Nil!20174) (originalCharacters!4455 token!567)))))

(assert (=> d!560752 d!560946))

(declare-fun d!560948 () Bool)

(assert (=> d!560948 (= (isUnion!133 lt!712120) ((_ is Union!4975) lt!712120))))

(assert (=> b!1834573 d!560948))

(declare-fun d!560952 () Bool)

(declare-fun c!299294 () Bool)

(assert (=> d!560952 (= c!299294 ((_ is Nil!20174) lt!712160))))

(declare-fun e!1172711 () (InoxSet C!10124))

(assert (=> d!560952 (= (content!2999 lt!712160) e!1172711)))

(declare-fun b!1834960 () Bool)

(assert (=> b!1834960 (= e!1172711 ((as const (Array C!10124 Bool)) false))))

(declare-fun b!1834961 () Bool)

(assert (=> b!1834961 (= e!1172711 ((_ map or) (store ((as const (Array C!10124 Bool)) false) (h!25575 lt!712160) true) (content!2999 (t!171045 lt!712160))))))

(assert (= (and d!560952 c!299294) b!1834960))

(assert (= (and d!560952 (not c!299294)) b!1834961))

(declare-fun m!2262741 () Bool)

(assert (=> b!1834961 m!2262741))

(declare-fun m!2262743 () Bool)

(assert (=> b!1834961 m!2262743))

(assert (=> d!560730 d!560952))

(declare-fun d!560958 () Bool)

(declare-fun c!299295 () Bool)

(assert (=> d!560958 (= c!299295 ((_ is Nil!20174) lt!711966))))

(declare-fun e!1172712 () (InoxSet C!10124))

(assert (=> d!560958 (= (content!2999 lt!711966) e!1172712)))

(declare-fun b!1834964 () Bool)

(assert (=> b!1834964 (= e!1172712 ((as const (Array C!10124 Bool)) false))))

(declare-fun b!1834965 () Bool)

(assert (=> b!1834965 (= e!1172712 ((_ map or) (store ((as const (Array C!10124 Bool)) false) (h!25575 lt!711966) true) (content!2999 (t!171045 lt!711966))))))

(assert (= (and d!560958 c!299295) b!1834964))

(assert (= (and d!560958 (not c!299295)) b!1834965))

(declare-fun m!2262745 () Bool)

(assert (=> b!1834965 m!2262745))

(declare-fun m!2262747 () Bool)

(assert (=> b!1834965 m!2262747))

(assert (=> d!560730 d!560958))

(declare-fun d!560960 () Bool)

(declare-fun c!299298 () Bool)

(assert (=> d!560960 (= c!299298 ((_ is Nil!20174) suffix!1698))))

(declare-fun e!1172715 () (InoxSet C!10124))

(assert (=> d!560960 (= (content!2999 suffix!1698) e!1172715)))

(declare-fun b!1834968 () Bool)

(assert (=> b!1834968 (= e!1172715 ((as const (Array C!10124 Bool)) false))))

(declare-fun b!1834969 () Bool)

(assert (=> b!1834969 (= e!1172715 ((_ map or) (store ((as const (Array C!10124 Bool)) false) (h!25575 suffix!1698) true) (content!2999 (t!171045 suffix!1698))))))

(assert (= (and d!560960 c!299298) b!1834968))

(assert (= (and d!560960 (not c!299298)) b!1834969))

(declare-fun m!2262749 () Bool)

(assert (=> b!1834969 m!2262749))

(declare-fun m!2262751 () Bool)

(assert (=> b!1834969 m!2262751))

(assert (=> d!560730 d!560960))

(declare-fun d!560962 () Bool)

(assert (=> d!560962 true))

(declare-fun lambda!72162 () Int)

(declare-fun order!13045 () Int)

(declare-fun order!13047 () Int)

(declare-fun dynLambda!10048 (Int Int) Int)

(declare-fun dynLambda!10049 (Int Int) Int)

(assert (=> d!560962 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 (h!25576 rules!4610)))) (dynLambda!10049 order!13047 lambda!72162))))

(declare-fun Forall2!575 (Int) Bool)

(assert (=> d!560962 (= (equivClasses!1409 (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 (h!25576 rules!4610)))) (Forall2!575 lambda!72162))))

(declare-fun bs!408158 () Bool)

(assert (= bs!408158 d!560962))

(declare-fun m!2262757 () Bool)

(assert (=> bs!408158 m!2262757))

(assert (=> b!1834291 d!560962))

(declare-fun bs!408159 () Bool)

(declare-fun d!560974 () Bool)

(assert (= bs!408159 (and d!560974 d!560962)))

(declare-fun lambda!72163 () Int)

(assert (=> bs!408159 (= (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 (h!25576 rules!4610)))) (= lambda!72163 lambda!72162))))

(assert (=> d!560974 true))

(assert (=> d!560974 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 rule!580))) (dynLambda!10049 order!13047 lambda!72163))))

(assert (=> d!560974 (= (equivClasses!1409 (toChars!5053 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 rule!580))) (Forall2!575 lambda!72163))))

(declare-fun bs!408160 () Bool)

(assert (= bs!408160 d!560974))

(declare-fun m!2262759 () Bool)

(assert (=> bs!408160 m!2262759))

(assert (=> b!1834619 d!560974))

(assert (=> d!560750 d!560748))

(declare-fun d!560976 () Bool)

(assert (=> d!560976 (ruleValid!1137 thiss!28318 rule!580)))

(assert (=> d!560976 true))

(declare-fun _$65!992 () Unit!34851)

(assert (=> d!560976 (= (choose!11548 thiss!28318 rule!580 rules!4610) _$65!992)))

(declare-fun bs!408161 () Bool)

(assert (= bs!408161 d!560976))

(assert (=> bs!408161 m!2261731))

(assert (=> d!560750 d!560976))

(assert (=> d!560750 d!560648))

(declare-fun d!560978 () Bool)

(declare-fun lt!712264 () Int)

(assert (=> d!560978 (>= lt!712264 0)))

(declare-fun e!1172719 () Int)

(assert (=> d!560978 (= lt!712264 e!1172719)))

(declare-fun c!299300 () Bool)

(assert (=> d!560978 (= c!299300 ((_ is Nil!20176) lt!712123))))

(assert (=> d!560978 (= (size!16007 lt!712123) lt!712264)))

(declare-fun b!1834976 () Bool)

(assert (=> b!1834976 (= e!1172719 0)))

(declare-fun b!1834977 () Bool)

(assert (=> b!1834977 (= e!1172719 (+ 1 (size!16007 (t!171047 lt!712123))))))

(assert (= (and d!560978 c!299300) b!1834976))

(assert (= (and d!560978 (not c!299300)) b!1834977))

(declare-fun m!2262761 () Bool)

(assert (=> b!1834977 m!2262761))

(assert (=> d!560720 d!560978))

(declare-fun d!560980 () Bool)

(declare-fun lt!712265 () Int)

(assert (=> d!560980 (>= lt!712265 0)))

(declare-fun e!1172720 () Int)

(assert (=> d!560980 (= lt!712265 e!1172720)))

(declare-fun c!299301 () Bool)

(assert (=> d!560980 (= c!299301 ((_ is Nil!20175) rules!4610))))

(assert (=> d!560980 (= (size!16008 rules!4610) lt!712265)))

(declare-fun b!1834978 () Bool)

(assert (=> b!1834978 (= e!1172720 0)))

(declare-fun b!1834979 () Bool)

(assert (=> b!1834979 (= e!1172720 (+ 1 (size!16008 (t!171046 rules!4610))))))

(assert (= (and d!560980 c!299301) b!1834978))

(assert (= (and d!560980 (not c!299301)) b!1834979))

(declare-fun m!2262763 () Bool)

(assert (=> b!1834979 m!2262763))

(assert (=> d!560720 d!560980))

(declare-fun d!560982 () Bool)

(declare-fun lt!712266 () Bool)

(assert (=> d!560982 (= lt!712266 (select (content!2997 (t!171046 rules!4610)) rule!580))))

(declare-fun e!1172721 () Bool)

(assert (=> d!560982 (= lt!712266 e!1172721)))

(declare-fun res!825109 () Bool)

(assert (=> d!560982 (=> (not res!825109) (not e!1172721))))

(assert (=> d!560982 (= res!825109 ((_ is Cons!20175) (t!171046 rules!4610)))))

(assert (=> d!560982 (= (contains!3724 (t!171046 rules!4610) rule!580) lt!712266)))

(declare-fun b!1834980 () Bool)

(declare-fun e!1172722 () Bool)

(assert (=> b!1834980 (= e!1172721 e!1172722)))

(declare-fun res!825108 () Bool)

(assert (=> b!1834980 (=> res!825108 e!1172722)))

(assert (=> b!1834980 (= res!825108 (= (h!25576 (t!171046 rules!4610)) rule!580))))

(declare-fun b!1834981 () Bool)

(assert (=> b!1834981 (= e!1172722 (contains!3724 (t!171046 (t!171046 rules!4610)) rule!580))))

(assert (= (and d!560982 res!825109) b!1834980))

(assert (= (and b!1834980 (not res!825108)) b!1834981))

(declare-fun m!2262765 () Bool)

(assert (=> d!560982 m!2262765))

(declare-fun m!2262767 () Bool)

(assert (=> d!560982 m!2262767))

(declare-fun m!2262769 () Bool)

(assert (=> b!1834981 m!2262769))

(assert (=> b!1834298 d!560982))

(declare-fun d!560984 () Bool)

(assert (=> d!560984 (= (isEmpty!12741 lt!711966) ((_ is Nil!20174) lt!711966))))

(assert (=> bm!114821 d!560984))

(declare-fun bs!408162 () Bool)

(declare-fun d!560986 () Bool)

(assert (= bs!408162 (and d!560986 d!560734)))

(declare-fun lambda!72166 () Int)

(assert (=> bs!408162 (= lambda!72166 lambda!72134)))

(declare-fun bs!408163 () Bool)

(assert (= bs!408163 (and d!560986 d!560848)))

(assert (=> bs!408163 (= lambda!72166 lambda!72147)))

(declare-fun bs!408164 () Bool)

(assert (= bs!408164 (and d!560986 d!560864)))

(assert (=> bs!408164 (= lambda!72166 lambda!72148)))

(assert (=> d!560986 true))

(declare-fun lt!712277 () Bool)

(assert (=> d!560986 (= lt!712277 (forall!4349 rs!808 lambda!72166))))

(declare-fun e!1172727 () Bool)

(assert (=> d!560986 (= lt!712277 e!1172727)))

(declare-fun res!825115 () Bool)

(assert (=> d!560986 (=> res!825115 e!1172727)))

(assert (=> d!560986 (= res!825115 (not ((_ is Cons!20175) rs!808)))))

(assert (=> d!560986 (= (rulesValidInductive!1262 thiss!28318 rs!808) lt!712277)))

(declare-fun b!1834986 () Bool)

(declare-fun e!1172728 () Bool)

(assert (=> b!1834986 (= e!1172727 e!1172728)))

(declare-fun res!825114 () Bool)

(assert (=> b!1834986 (=> (not res!825114) (not e!1172728))))

(assert (=> b!1834986 (= res!825114 (ruleValid!1137 thiss!28318 (h!25576 rs!808)))))

(declare-fun b!1834987 () Bool)

(assert (=> b!1834987 (= e!1172728 (rulesValidInductive!1262 thiss!28318 (t!171046 rs!808)))))

(assert (= (and d!560986 (not res!825115)) b!1834986))

(assert (= (and b!1834986 res!825114) b!1834987))

(declare-fun m!2262771 () Bool)

(assert (=> d!560986 m!2262771))

(declare-fun m!2262773 () Bool)

(assert (=> b!1834986 m!2262773))

(assert (=> b!1834987 m!2262535))

(assert (=> d!560734 d!560986))

(declare-fun d!560988 () Bool)

(declare-fun res!825120 () Bool)

(declare-fun e!1172733 () Bool)

(assert (=> d!560988 (=> res!825120 e!1172733)))

(assert (=> d!560988 (= res!825120 ((_ is Nil!20175) rs!808))))

(assert (=> d!560988 (= (forall!4349 rs!808 lambda!72134) e!1172733)))

(declare-fun b!1834992 () Bool)

(declare-fun e!1172734 () Bool)

(assert (=> b!1834992 (= e!1172733 e!1172734)))

(declare-fun res!825121 () Bool)

(assert (=> b!1834992 (=> (not res!825121) (not e!1172734))))

(declare-fun dynLambda!10050 (Int Rule!7094) Bool)

(assert (=> b!1834992 (= res!825121 (dynLambda!10050 lambda!72134 (h!25576 rs!808)))))

(declare-fun b!1834993 () Bool)

(assert (=> b!1834993 (= e!1172734 (forall!4349 (t!171046 rs!808) lambda!72134))))

(assert (= (and d!560988 (not res!825120)) b!1834992))

(assert (= (and b!1834992 res!825121) b!1834993))

(declare-fun b_lambda!60801 () Bool)

(assert (=> (not b_lambda!60801) (not b!1834992)))

(declare-fun m!2262791 () Bool)

(assert (=> b!1834992 m!2262791))

(declare-fun m!2262793 () Bool)

(assert (=> b!1834993 m!2262793))

(assert (=> d!560734 d!560988))

(declare-fun bs!408166 () Bool)

(declare-fun d!560992 () Bool)

(assert (= bs!408166 (and d!560992 b!1834108)))

(declare-fun lambda!72167 () Int)

(assert (=> bs!408166 (= lambda!72167 lambda!72098)))

(declare-fun bs!408167 () Bool)

(assert (= bs!408167 (and d!560992 d!560650)))

(assert (=> bs!408167 (= lambda!72167 lambda!72107)))

(declare-fun bs!408168 () Bool)

(assert (= bs!408168 (and d!560992 d!560722)))

(assert (=> bs!408168 (= lambda!72167 lambda!72127)))

(declare-fun bs!408169 () Bool)

(assert (= bs!408169 (and d!560992 d!560728)))

(assert (=> bs!408169 (= lambda!72167 lambda!72131)))

(declare-fun bs!408170 () Bool)

(assert (= bs!408170 (and d!560992 d!560652)))

(declare-fun lambda!72168 () Int)

(assert (=> bs!408170 (= lambda!72168 lambda!72122)))

(assert (=> bs!408168 (= lambda!72168 lambda!72128)))

(declare-fun bs!408171 () Bool)

(assert (= bs!408171 (and d!560992 d!560894)))

(assert (=> bs!408171 (= lambda!72168 lambda!72150)))

(assert (=> d!560992 (forall!4348 (map!4189 (t!171046 rules!4610) lambda!72167) lambda!72168)))

(declare-fun lt!712294 () Unit!34851)

(declare-fun e!1172735 () Unit!34851)

(assert (=> d!560992 (= lt!712294 e!1172735)))

(declare-fun c!299302 () Bool)

(assert (=> d!560992 (= c!299302 ((_ is Nil!20175) (t!171046 rules!4610)))))

(assert (=> d!560992 (rulesValid!1394 thiss!28318 (t!171046 rules!4610))))

(declare-fun lt!712296 () Unit!34851)

(declare-fun lt!712298 () Unit!34851)

(assert (=> d!560992 (= lt!712296 lt!712298)))

(declare-fun lt!712295 () List!20244)

(assert (=> d!560992 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!712295)) rule!580 (size!16002 lt!712295) lt!712295) suffix!1698)))))

(assert (=> d!560992 (= lt!712298 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 thiss!28318 rules!4610 lt!712295 input!3681 suffix!1698 rule!580))))

(assert (=> d!560992 (= lt!712295 (list!8197 (charsOf!2290 token!567)))))

(assert (=> d!560992 (= (lemma!547 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171046 rules!4610)) lt!712294)))

(declare-fun b!1834994 () Bool)

(declare-fun Unit!34861 () Unit!34851)

(assert (=> b!1834994 (= e!1172735 Unit!34861)))

(declare-fun b!1834995 () Bool)

(declare-fun Unit!34862 () Unit!34851)

(assert (=> b!1834995 (= e!1172735 Unit!34862)))

(declare-fun lt!712297 () Unit!34851)

(assert (=> b!1834995 (= lt!712297 (lemma!547 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171046 (t!171046 rules!4610))))))

(assert (= (and d!560992 c!299302) b!1834994))

(assert (= (and d!560992 (not c!299302)) b!1834995))

(declare-fun m!2262797 () Bool)

(assert (=> d!560992 m!2262797))

(declare-fun m!2262799 () Bool)

(assert (=> d!560992 m!2262799))

(assert (=> d!560992 m!2261749))

(assert (=> d!560992 m!2261737))

(assert (=> d!560992 m!2261739))

(assert (=> d!560992 m!2262797))

(declare-fun m!2262801 () Bool)

(assert (=> d!560992 m!2262801))

(declare-fun m!2262803 () Bool)

(assert (=> d!560992 m!2262803))

(declare-fun m!2262805 () Bool)

(assert (=> d!560992 m!2262805))

(declare-fun m!2262807 () Bool)

(assert (=> d!560992 m!2262807))

(assert (=> d!560992 m!2261737))

(declare-fun m!2262809 () Bool)

(assert (=> d!560992 m!2262809))

(assert (=> d!560992 m!2262805))

(declare-fun m!2262811 () Bool)

(assert (=> b!1834995 m!2262811))

(assert (=> b!1834588 d!560992))

(declare-fun d!560996 () Bool)

(assert (=> d!560996 (= (get!6228 lt!711984) (v!25805 lt!711984))))

(assert (=> b!1834163 d!560996))

(declare-fun d!561000 () Bool)

(declare-fun lt!712299 () Int)

(assert (=> d!561000 (>= lt!712299 0)))

(declare-fun e!1172739 () Int)

(assert (=> d!561000 (= lt!712299 e!1172739)))

(declare-fun c!299306 () Bool)

(assert (=> d!561000 (= c!299306 ((_ is Nil!20174) (originalCharacters!4455 (_1!11215 (get!6228 lt!711984)))))))

(assert (=> d!561000 (= (size!16002 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984)))) lt!712299)))

(declare-fun b!1835002 () Bool)

(assert (=> b!1835002 (= e!1172739 0)))

(declare-fun b!1835003 () Bool)

(assert (=> b!1835003 (= e!1172739 (+ 1 (size!16002 (t!171045 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984)))))))))

(assert (= (and d!561000 c!299306) b!1835002))

(assert (= (and d!561000 (not c!299306)) b!1835003))

(declare-fun m!2262813 () Bool)

(assert (=> b!1835003 m!2262813))

(assert (=> b!1834163 d!561000))

(declare-fun d!561004 () Bool)

(declare-fun c!299312 () Bool)

(assert (=> d!561004 (= c!299312 ((_ is Nil!20176) (map!4189 rs!808 lambda!72098)))))

(declare-fun e!1172745 () (InoxSet Regex!4975))

(assert (=> d!561004 (= (content!2998 (map!4189 rs!808 lambda!72098)) e!1172745)))

(declare-fun b!1835014 () Bool)

(assert (=> b!1835014 (= e!1172745 ((as const (Array Regex!4975 Bool)) false))))

(declare-fun b!1835015 () Bool)

(assert (=> b!1835015 (= e!1172745 ((_ map or) (store ((as const (Array Regex!4975 Bool)) false) (h!25577 (map!4189 rs!808 lambda!72098)) true) (content!2998 (t!171047 (map!4189 rs!808 lambda!72098)))))))

(assert (= (and d!561004 c!299312) b!1835014))

(assert (= (and d!561004 (not c!299312)) b!1835015))

(declare-fun m!2262819 () Bool)

(assert (=> b!1835015 m!2262819))

(declare-fun m!2262823 () Bool)

(assert (=> b!1835015 m!2262823))

(assert (=> d!560724 d!561004))

(declare-fun b!1835020 () Bool)

(declare-fun e!1172749 () Bool)

(assert (=> b!1835020 (= e!1172749 (= (head!4291 (tail!2750 lt!711966)) (c!299105 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966)))))))

(declare-fun b!1835021 () Bool)

(declare-fun e!1172750 () Bool)

(assert (=> b!1835021 (= e!1172750 (nullable!1551 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966))))))

(declare-fun b!1835022 () Bool)

(declare-fun res!825124 () Bool)

(declare-fun e!1172751 () Bool)

(assert (=> b!1835022 (=> res!825124 e!1172751)))

(assert (=> b!1835022 (= res!825124 e!1172749)))

(declare-fun res!825129 () Bool)

(assert (=> b!1835022 (=> (not res!825129) (not e!1172749))))

(declare-fun lt!712300 () Bool)

(assert (=> b!1835022 (= res!825129 lt!712300)))

(declare-fun b!1835023 () Bool)

(declare-fun e!1172748 () Bool)

(declare-fun call!114852 () Bool)

(assert (=> b!1835023 (= e!1172748 (= lt!712300 call!114852))))

(declare-fun b!1835024 () Bool)

(declare-fun e!1172754 () Bool)

(assert (=> b!1835024 (= e!1172751 e!1172754)))

(declare-fun res!825127 () Bool)

(assert (=> b!1835024 (=> (not res!825127) (not e!1172754))))

(assert (=> b!1835024 (= res!825127 (not lt!712300))))

(declare-fun b!1835025 () Bool)

(declare-fun e!1172752 () Bool)

(assert (=> b!1835025 (= e!1172748 e!1172752)))

(declare-fun c!299316 () Bool)

(assert (=> b!1835025 (= c!299316 ((_ is EmptyLang!4975) (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966))))))

(declare-fun b!1835026 () Bool)

(declare-fun res!825123 () Bool)

(assert (=> b!1835026 (=> (not res!825123) (not e!1172749))))

(assert (=> b!1835026 (= res!825123 (isEmpty!12741 (tail!2750 (tail!2750 lt!711966))))))

(declare-fun b!1835027 () Bool)

(declare-fun res!825122 () Bool)

(assert (=> b!1835027 (=> res!825122 e!1172751)))

(assert (=> b!1835027 (= res!825122 (not ((_ is ElementMatch!4975) (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966)))))))

(assert (=> b!1835027 (= e!1172752 e!1172751)))

(declare-fun d!561010 () Bool)

(assert (=> d!561010 e!1172748))

(declare-fun c!299315 () Bool)

(assert (=> d!561010 (= c!299315 ((_ is EmptyExpr!4975) (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966))))))

(assert (=> d!561010 (= lt!712300 e!1172750)))

(declare-fun c!299317 () Bool)

(assert (=> d!561010 (= c!299317 (isEmpty!12741 (tail!2750 lt!711966)))))

(assert (=> d!561010 (validRegex!2033 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966)))))

(assert (=> d!561010 (= (matchR!2438 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966)) (tail!2750 lt!711966)) lt!712300)))

(declare-fun b!1835028 () Bool)

(declare-fun res!825125 () Bool)

(declare-fun e!1172753 () Bool)

(assert (=> b!1835028 (=> res!825125 e!1172753)))

(assert (=> b!1835028 (= res!825125 (not (isEmpty!12741 (tail!2750 (tail!2750 lt!711966)))))))

(declare-fun b!1835029 () Bool)

(declare-fun res!825126 () Bool)

(assert (=> b!1835029 (=> (not res!825126) (not e!1172749))))

(assert (=> b!1835029 (= res!825126 (not call!114852))))

(declare-fun bm!114847 () Bool)

(assert (=> bm!114847 (= call!114852 (isEmpty!12741 (tail!2750 lt!711966)))))

(declare-fun b!1835030 () Bool)

(assert (=> b!1835030 (= e!1172752 (not lt!712300))))

(declare-fun b!1835031 () Bool)

(assert (=> b!1835031 (= e!1172750 (matchR!2438 (derivativeStep!1315 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966)) (head!4291 (tail!2750 lt!711966))) (tail!2750 (tail!2750 lt!711966))))))

(declare-fun b!1835032 () Bool)

(assert (=> b!1835032 (= e!1172753 (not (= (head!4291 (tail!2750 lt!711966)) (c!299105 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966))))))))

(declare-fun b!1835033 () Bool)

(assert (=> b!1835033 (= e!1172754 e!1172753)))

(declare-fun res!825128 () Bool)

(assert (=> b!1835033 (=> res!825128 e!1172753)))

(assert (=> b!1835033 (= res!825128 call!114852)))

(assert (= (and d!561010 c!299317) b!1835021))

(assert (= (and d!561010 (not c!299317)) b!1835031))

(assert (= (and d!561010 c!299315) b!1835023))

(assert (= (and d!561010 (not c!299315)) b!1835025))

(assert (= (and b!1835025 c!299316) b!1835030))

(assert (= (and b!1835025 (not c!299316)) b!1835027))

(assert (= (and b!1835027 (not res!825122)) b!1835022))

(assert (= (and b!1835022 res!825129) b!1835029))

(assert (= (and b!1835029 res!825126) b!1835026))

(assert (= (and b!1835026 res!825123) b!1835020))

(assert (= (and b!1835022 (not res!825124)) b!1835024))

(assert (= (and b!1835024 res!825127) b!1835033))

(assert (= (and b!1835033 (not res!825128)) b!1835028))

(assert (= (and b!1835028 (not res!825125)) b!1835032))

(assert (= (or b!1835023 b!1835029 b!1835033) bm!114847))

(assert (=> b!1835020 m!2262303))

(declare-fun m!2262833 () Bool)

(assert (=> b!1835020 m!2262833))

(assert (=> b!1835028 m!2262303))

(declare-fun m!2262835 () Bool)

(assert (=> b!1835028 m!2262835))

(assert (=> b!1835028 m!2262835))

(declare-fun m!2262837 () Bool)

(assert (=> b!1835028 m!2262837))

(assert (=> b!1835026 m!2262303))

(assert (=> b!1835026 m!2262835))

(assert (=> b!1835026 m!2262835))

(assert (=> b!1835026 m!2262837))

(assert (=> d!561010 m!2262303))

(assert (=> d!561010 m!2262305))

(assert (=> d!561010 m!2262309))

(declare-fun m!2262839 () Bool)

(assert (=> d!561010 m!2262839))

(assert (=> b!1835031 m!2262303))

(assert (=> b!1835031 m!2262833))

(assert (=> b!1835031 m!2262309))

(assert (=> b!1835031 m!2262833))

(declare-fun m!2262843 () Bool)

(assert (=> b!1835031 m!2262843))

(assert (=> b!1835031 m!2262303))

(assert (=> b!1835031 m!2262835))

(assert (=> b!1835031 m!2262843))

(assert (=> b!1835031 m!2262835))

(declare-fun m!2262847 () Bool)

(assert (=> b!1835031 m!2262847))

(assert (=> b!1835021 m!2262309))

(declare-fun m!2262849 () Bool)

(assert (=> b!1835021 m!2262849))

(assert (=> b!1835032 m!2262303))

(assert (=> b!1835032 m!2262833))

(assert (=> bm!114847 m!2262303))

(assert (=> bm!114847 m!2262305))

(assert (=> b!1834635 d!561010))

(declare-fun b!1835094 () Bool)

(declare-fun c!299340 () Bool)

(assert (=> b!1835094 (= c!299340 (nullable!1551 (regOne!10462 (regex!3647 rule!580))))))

(declare-fun e!1172789 () Regex!4975)

(declare-fun e!1172786 () Regex!4975)

(assert (=> b!1835094 (= e!1172789 e!1172786)))

(declare-fun call!114867 () Regex!4975)

(declare-fun b!1835095 () Bool)

(declare-fun call!114869 () Regex!4975)

(assert (=> b!1835095 (= e!1172786 (Union!4975 (Concat!8713 call!114869 (regTwo!10462 (regex!3647 rule!580))) call!114867))))

(declare-fun c!299339 () Bool)

(declare-fun call!114868 () Regex!4975)

(declare-fun c!299343 () Bool)

(declare-fun bm!114861 () Bool)

(assert (=> bm!114861 (= call!114868 (derivativeStep!1315 (ite c!299339 (regOne!10463 (regex!3647 rule!580)) (ite c!299343 (reg!5304 (regex!3647 rule!580)) (ite c!299340 (regTwo!10462 (regex!3647 rule!580)) (regOne!10462 (regex!3647 rule!580))))) (head!4291 lt!711966)))))

(declare-fun b!1835096 () Bool)

(assert (=> b!1835096 (= e!1172786 (Union!4975 (Concat!8713 call!114867 (regTwo!10462 (regex!3647 rule!580))) EmptyLang!4975))))

(declare-fun b!1835098 () Bool)

(assert (=> b!1835098 (= c!299339 ((_ is Union!4975) (regex!3647 rule!580)))))

(declare-fun e!1172788 () Regex!4975)

(declare-fun e!1172790 () Regex!4975)

(assert (=> b!1835098 (= e!1172788 e!1172790)))

(declare-fun b!1835099 () Bool)

(assert (=> b!1835099 (= e!1172790 (Union!4975 call!114868 call!114869))))

(declare-fun b!1835100 () Bool)

(declare-fun call!114866 () Regex!4975)

(assert (=> b!1835100 (= e!1172789 (Concat!8713 call!114866 (regex!3647 rule!580)))))

(declare-fun b!1835101 () Bool)

(declare-fun e!1172787 () Regex!4975)

(assert (=> b!1835101 (= e!1172787 EmptyLang!4975)))

(declare-fun b!1835102 () Bool)

(assert (=> b!1835102 (= e!1172790 e!1172789)))

(assert (=> b!1835102 (= c!299343 ((_ is Star!4975) (regex!3647 rule!580)))))

(declare-fun bm!114862 () Bool)

(assert (=> bm!114862 (= call!114867 call!114866)))

(declare-fun bm!114863 () Bool)

(assert (=> bm!114863 (= call!114866 call!114868)))

(declare-fun b!1835097 () Bool)

(assert (=> b!1835097 (= e!1172788 (ite (= (head!4291 lt!711966) (c!299105 (regex!3647 rule!580))) EmptyExpr!4975 EmptyLang!4975))))

(declare-fun d!561020 () Bool)

(declare-fun lt!712317 () Regex!4975)

(assert (=> d!561020 (validRegex!2033 lt!712317)))

(assert (=> d!561020 (= lt!712317 e!1172787)))

(declare-fun c!299342 () Bool)

(assert (=> d!561020 (= c!299342 (or ((_ is EmptyExpr!4975) (regex!3647 rule!580)) ((_ is EmptyLang!4975) (regex!3647 rule!580))))))

(assert (=> d!561020 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!561020 (= (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711966)) lt!712317)))

(declare-fun b!1835103 () Bool)

(assert (=> b!1835103 (= e!1172787 e!1172788)))

(declare-fun c!299341 () Bool)

(assert (=> b!1835103 (= c!299341 ((_ is ElementMatch!4975) (regex!3647 rule!580)))))

(declare-fun bm!114864 () Bool)

(assert (=> bm!114864 (= call!114869 (derivativeStep!1315 (ite c!299339 (regTwo!10463 (regex!3647 rule!580)) (regOne!10462 (regex!3647 rule!580))) (head!4291 lt!711966)))))

(assert (= (and d!561020 c!299342) b!1835101))

(assert (= (and d!561020 (not c!299342)) b!1835103))

(assert (= (and b!1835103 c!299341) b!1835097))

(assert (= (and b!1835103 (not c!299341)) b!1835098))

(assert (= (and b!1835098 c!299339) b!1835099))

(assert (= (and b!1835098 (not c!299339)) b!1835102))

(assert (= (and b!1835102 c!299343) b!1835100))

(assert (= (and b!1835102 (not c!299343)) b!1835094))

(assert (= (and b!1835094 c!299340) b!1835095))

(assert (= (and b!1835094 (not c!299340)) b!1835096))

(assert (= (or b!1835095 b!1835096) bm!114862))

(assert (= (or b!1835100 bm!114862) bm!114863))

(assert (= (or b!1835099 b!1835095) bm!114864))

(assert (= (or b!1835099 bm!114863) bm!114861))

(declare-fun m!2262943 () Bool)

(assert (=> b!1835094 m!2262943))

(assert (=> bm!114861 m!2262301))

(declare-fun m!2262945 () Bool)

(assert (=> bm!114861 m!2262945))

(declare-fun m!2262947 () Bool)

(assert (=> d!561020 m!2262947))

(assert (=> d!561020 m!2261857))

(assert (=> bm!114864 m!2262301))

(declare-fun m!2262949 () Bool)

(assert (=> bm!114864 m!2262949))

(assert (=> b!1834635 d!561020))

(declare-fun d!561046 () Bool)

(assert (=> d!561046 (= (head!4291 lt!711966) (h!25575 lt!711966))))

(assert (=> b!1834635 d!561046))

(declare-fun d!561048 () Bool)

(assert (=> d!561048 (= (tail!2750 lt!711966) (t!171045 lt!711966))))

(assert (=> b!1834635 d!561048))

(declare-fun d!561050 () Bool)

(assert (=> d!561050 (= (inv!26239 (tag!4061 (h!25576 (t!171046 rs!808)))) (= (mod (str.len (value!113605 (tag!4061 (h!25576 (t!171046 rs!808))))) 2) 0))))

(assert (=> b!1834694 d!561050))

(declare-fun d!561052 () Bool)

(declare-fun res!825148 () Bool)

(declare-fun e!1172795 () Bool)

(assert (=> d!561052 (=> (not res!825148) (not e!1172795))))

(assert (=> d!561052 (= res!825148 (semiInverseModEq!1468 (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808))))))))

(assert (=> d!561052 (= (inv!26242 (transformation!3647 (h!25576 (t!171046 rs!808)))) e!1172795)))

(declare-fun b!1835112 () Bool)

(assert (=> b!1835112 (= e!1172795 (equivClasses!1409 (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808))))))))

(assert (= (and d!561052 res!825148) b!1835112))

(declare-fun m!2262951 () Bool)

(assert (=> d!561052 m!2262951))

(declare-fun m!2262953 () Bool)

(assert (=> b!1835112 m!2262953))

(assert (=> b!1834694 d!561052))

(declare-fun d!561054 () Bool)

(assert (=> d!561054 true))

(declare-fun order!13051 () Int)

(declare-fun order!13049 () Int)

(declare-fun lambda!72175 () Int)

(declare-fun dynLambda!10051 (Int Int) Int)

(declare-fun dynLambda!10052 (Int Int) Int)

(assert (=> d!561054 (< (dynLambda!10051 order!13049 (toChars!5053 (transformation!3647 (h!25576 rules!4610)))) (dynLambda!10052 order!13051 lambda!72175))))

(assert (=> d!561054 true))

(assert (=> d!561054 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 (h!25576 rules!4610)))) (dynLambda!10052 order!13051 lambda!72175))))

(declare-fun Forall!936 (Int) Bool)

(assert (=> d!561054 (= (semiInverseModEq!1468 (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 (h!25576 rules!4610)))) (Forall!936 lambda!72175))))

(declare-fun bs!408188 () Bool)

(assert (= bs!408188 d!561054))

(declare-fun m!2262983 () Bool)

(assert (=> bs!408188 m!2262983))

(assert (=> d!560640 d!561054))

(declare-fun d!561062 () Bool)

(assert (=> d!561062 (= (isEmpty!12742 lt!712017) (not ((_ is Some!4226) lt!712017)))))

(assert (=> d!560632 d!561062))

(declare-fun d!561064 () Bool)

(declare-fun e!1172820 () Bool)

(assert (=> d!561064 e!1172820))

(declare-fun res!825172 () Bool)

(assert (=> d!561064 (=> res!825172 e!1172820)))

(declare-fun lt!712334 () Bool)

(assert (=> d!561064 (= res!825172 (not lt!712334))))

(declare-fun e!1172821 () Bool)

(assert (=> d!561064 (= lt!712334 e!1172821)))

(declare-fun res!825170 () Bool)

(assert (=> d!561064 (=> res!825170 e!1172821)))

(assert (=> d!561064 (= res!825170 ((_ is Nil!20174) input!3681))))

(assert (=> d!561064 (= (isPrefix!1842 input!3681 input!3681) lt!712334)))

(declare-fun b!1835160 () Bool)

(declare-fun e!1172819 () Bool)

(assert (=> b!1835160 (= e!1172819 (isPrefix!1842 (tail!2750 input!3681) (tail!2750 input!3681)))))

(declare-fun b!1835159 () Bool)

(declare-fun res!825171 () Bool)

(assert (=> b!1835159 (=> (not res!825171) (not e!1172819))))

(assert (=> b!1835159 (= res!825171 (= (head!4291 input!3681) (head!4291 input!3681)))))

(declare-fun b!1835158 () Bool)

(assert (=> b!1835158 (= e!1172821 e!1172819)))

(declare-fun res!825173 () Bool)

(assert (=> b!1835158 (=> (not res!825173) (not e!1172819))))

(assert (=> b!1835158 (= res!825173 (not ((_ is Nil!20174) input!3681)))))

(declare-fun b!1835161 () Bool)

(assert (=> b!1835161 (= e!1172820 (>= (size!16002 input!3681) (size!16002 input!3681)))))

(assert (= (and d!561064 (not res!825170)) b!1835158))

(assert (= (and b!1835158 res!825173) b!1835159))

(assert (= (and b!1835159 res!825171) b!1835160))

(assert (= (and d!561064 (not res!825172)) b!1835161))

(declare-fun m!2263019 () Bool)

(assert (=> b!1835160 m!2263019))

(assert (=> b!1835160 m!2263019))

(assert (=> b!1835160 m!2263019))

(assert (=> b!1835160 m!2263019))

(declare-fun m!2263021 () Bool)

(assert (=> b!1835160 m!2263021))

(declare-fun m!2263023 () Bool)

(assert (=> b!1835159 m!2263023))

(assert (=> b!1835159 m!2263023))

(assert (=> b!1835161 m!2261811))

(assert (=> b!1835161 m!2261811))

(assert (=> d!560632 d!561064))

(declare-fun d!561086 () Bool)

(assert (=> d!561086 (isPrefix!1842 input!3681 input!3681)))

(declare-fun lt!712338 () Unit!34851)

(declare-fun choose!11549 (List!20244 List!20244) Unit!34851)

(assert (=> d!561086 (= lt!712338 (choose!11549 input!3681 input!3681))))

(assert (=> d!561086 (= (lemmaIsPrefixRefl!1219 input!3681 input!3681) lt!712338)))

(declare-fun bs!408194 () Bool)

(assert (= bs!408194 d!561086))

(assert (=> bs!408194 m!2261917))

(declare-fun m!2263029 () Bool)

(assert (=> bs!408194 m!2263029))

(assert (=> d!560632 d!561086))

(declare-fun bs!408195 () Bool)

(declare-fun d!561090 () Bool)

(assert (= bs!408195 (and d!561090 d!560734)))

(declare-fun lambda!72177 () Int)

(assert (=> bs!408195 (= lambda!72177 lambda!72134)))

(declare-fun bs!408196 () Bool)

(assert (= bs!408196 (and d!561090 d!560848)))

(assert (=> bs!408196 (= lambda!72177 lambda!72147)))

(declare-fun bs!408197 () Bool)

(assert (= bs!408197 (and d!561090 d!560864)))

(assert (=> bs!408197 (= lambda!72177 lambda!72148)))

(declare-fun bs!408198 () Bool)

(assert (= bs!408198 (and d!561090 d!560986)))

(assert (=> bs!408198 (= lambda!72177 lambda!72166)))

(assert (=> d!561090 true))

(declare-fun lt!712339 () Bool)

(assert (=> d!561090 (= lt!712339 (forall!4349 rules!4610 lambda!72177))))

(declare-fun e!1172829 () Bool)

(assert (=> d!561090 (= lt!712339 e!1172829)))

(declare-fun res!825183 () Bool)

(assert (=> d!561090 (=> res!825183 e!1172829)))

(assert (=> d!561090 (= res!825183 (not ((_ is Cons!20175) rules!4610)))))

(assert (=> d!561090 (= (rulesValidInductive!1262 thiss!28318 rules!4610) lt!712339)))

(declare-fun b!1835176 () Bool)

(declare-fun e!1172830 () Bool)

(assert (=> b!1835176 (= e!1172829 e!1172830)))

(declare-fun res!825182 () Bool)

(assert (=> b!1835176 (=> (not res!825182) (not e!1172830))))

(assert (=> b!1835176 (= res!825182 (ruleValid!1137 thiss!28318 (h!25576 rules!4610)))))

(declare-fun b!1835177 () Bool)

(assert (=> b!1835177 (= e!1172830 (rulesValidInductive!1262 thiss!28318 (t!171046 rules!4610)))))

(assert (= (and d!561090 (not res!825183)) b!1835176))

(assert (= (and b!1835176 res!825182) b!1835177))

(declare-fun m!2263039 () Bool)

(assert (=> d!561090 m!2263039))

(declare-fun m!2263041 () Bool)

(assert (=> b!1835176 m!2263041))

(assert (=> b!1835177 m!2262679))

(assert (=> d!560632 d!561090))

(declare-fun b!1835189 () Bool)

(declare-fun e!1172836 () List!20244)

(assert (=> b!1835189 (= e!1172836 (++!5471 (list!8199 (left!16120 (c!299104 (charsOf!2290 token!567)))) (list!8199 (right!16450 (c!299104 (charsOf!2290 token!567))))))))

(declare-fun b!1835188 () Bool)

(declare-fun list!8200 (IArray!13363) List!20244)

(assert (=> b!1835188 (= e!1172836 (list!8200 (xs!9555 (c!299104 (charsOf!2290 token!567)))))))

(declare-fun b!1835186 () Bool)

(declare-fun e!1172835 () List!20244)

(assert (=> b!1835186 (= e!1172835 Nil!20174)))

(declare-fun d!561094 () Bool)

(declare-fun c!299365 () Bool)

(assert (=> d!561094 (= c!299365 ((_ is Empty!6679) (c!299104 (charsOf!2290 token!567))))))

(assert (=> d!561094 (= (list!8199 (c!299104 (charsOf!2290 token!567))) e!1172835)))

(declare-fun b!1835187 () Bool)

(assert (=> b!1835187 (= e!1172835 e!1172836)))

(declare-fun c!299366 () Bool)

(assert (=> b!1835187 (= c!299366 ((_ is Leaf!9723) (c!299104 (charsOf!2290 token!567))))))

(assert (= (and d!561094 c!299365) b!1835186))

(assert (= (and d!561094 (not c!299365)) b!1835187))

(assert (= (and b!1835187 c!299366) b!1835188))

(assert (= (and b!1835187 (not c!299366)) b!1835189))

(declare-fun m!2263043 () Bool)

(assert (=> b!1835189 m!2263043))

(declare-fun m!2263045 () Bool)

(assert (=> b!1835189 m!2263045))

(assert (=> b!1835189 m!2263043))

(assert (=> b!1835189 m!2263045))

(declare-fun m!2263047 () Bool)

(assert (=> b!1835189 m!2263047))

(declare-fun m!2263049 () Bool)

(assert (=> b!1835188 m!2263049))

(assert (=> d!560616 d!561094))

(declare-fun lt!712340 () Bool)

(declare-fun d!561096 () Bool)

(assert (=> d!561096 (= lt!712340 (select (content!2998 (t!171047 (map!4189 rs!808 lambda!72098))) (regex!3647 rule!580)))))

(declare-fun e!1172837 () Bool)

(assert (=> d!561096 (= lt!712340 e!1172837)))

(declare-fun res!825185 () Bool)

(assert (=> d!561096 (=> (not res!825185) (not e!1172837))))

(assert (=> d!561096 (= res!825185 ((_ is Cons!20176) (t!171047 (map!4189 rs!808 lambda!72098))))))

(assert (=> d!561096 (= (contains!3725 (t!171047 (map!4189 rs!808 lambda!72098)) (regex!3647 rule!580)) lt!712340)))

(declare-fun b!1835190 () Bool)

(declare-fun e!1172838 () Bool)

(assert (=> b!1835190 (= e!1172837 e!1172838)))

(declare-fun res!825184 () Bool)

(assert (=> b!1835190 (=> res!825184 e!1172838)))

(assert (=> b!1835190 (= res!825184 (= (h!25577 (t!171047 (map!4189 rs!808 lambda!72098))) (regex!3647 rule!580)))))

(declare-fun b!1835191 () Bool)

(assert (=> b!1835191 (= e!1172838 (contains!3725 (t!171047 (t!171047 (map!4189 rs!808 lambda!72098))) (regex!3647 rule!580)))))

(assert (= (and d!561096 res!825185) b!1835190))

(assert (= (and b!1835190 (not res!825184)) b!1835191))

(assert (=> d!561096 m!2262823))

(declare-fun m!2263051 () Bool)

(assert (=> d!561096 m!2263051))

(declare-fun m!2263053 () Bool)

(assert (=> b!1835191 m!2263053))

(assert (=> b!1834594 d!561096))

(declare-fun b!1835192 () Bool)

(declare-fun e!1172840 () Bool)

(assert (=> b!1835192 (= e!1172840 (= (head!4291 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))) (c!299105 (regex!3647 rule!580))))))

(declare-fun b!1835193 () Bool)

(declare-fun e!1172841 () Bool)

(assert (=> b!1835193 (= e!1172841 (nullable!1551 (regex!3647 rule!580)))))

(declare-fun b!1835194 () Bool)

(declare-fun res!825188 () Bool)

(declare-fun e!1172842 () Bool)

(assert (=> b!1835194 (=> res!825188 e!1172842)))

(assert (=> b!1835194 (= res!825188 e!1172840)))

(declare-fun res!825193 () Bool)

(assert (=> b!1835194 (=> (not res!825193) (not e!1172840))))

(declare-fun lt!712341 () Bool)

(assert (=> b!1835194 (= res!825193 lt!712341)))

(declare-fun b!1835195 () Bool)

(declare-fun e!1172839 () Bool)

(declare-fun call!114872 () Bool)

(assert (=> b!1835195 (= e!1172839 (= lt!712341 call!114872))))

(declare-fun b!1835196 () Bool)

(declare-fun e!1172845 () Bool)

(assert (=> b!1835196 (= e!1172842 e!1172845)))

(declare-fun res!825191 () Bool)

(assert (=> b!1835196 (=> (not res!825191) (not e!1172845))))

(assert (=> b!1835196 (= res!825191 (not lt!712341))))

(declare-fun b!1835197 () Bool)

(declare-fun e!1172843 () Bool)

(assert (=> b!1835197 (= e!1172839 e!1172843)))

(declare-fun c!299368 () Bool)

(assert (=> b!1835197 (= c!299368 ((_ is EmptyLang!4975) (regex!3647 rule!580)))))

(declare-fun b!1835198 () Bool)

(declare-fun res!825187 () Bool)

(assert (=> b!1835198 (=> (not res!825187) (not e!1172840))))

(assert (=> b!1835198 (= res!825187 (isEmpty!12741 (tail!2750 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984)))))))))

(declare-fun b!1835199 () Bool)

(declare-fun res!825186 () Bool)

(assert (=> b!1835199 (=> res!825186 e!1172842)))

(assert (=> b!1835199 (= res!825186 (not ((_ is ElementMatch!4975) (regex!3647 rule!580))))))

(assert (=> b!1835199 (= e!1172843 e!1172842)))

(declare-fun d!561098 () Bool)

(assert (=> d!561098 e!1172839))

(declare-fun c!299367 () Bool)

(assert (=> d!561098 (= c!299367 ((_ is EmptyExpr!4975) (regex!3647 rule!580)))))

(assert (=> d!561098 (= lt!712341 e!1172841)))

(declare-fun c!299369 () Bool)

(assert (=> d!561098 (= c!299369 (isEmpty!12741 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))))))

(assert (=> d!561098 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!561098 (= (matchR!2438 (regex!3647 rule!580) (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))) lt!712341)))

(declare-fun b!1835200 () Bool)

(declare-fun res!825189 () Bool)

(declare-fun e!1172844 () Bool)

(assert (=> b!1835200 (=> res!825189 e!1172844)))

(assert (=> b!1835200 (= res!825189 (not (isEmpty!12741 (tail!2750 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))))))))

(declare-fun b!1835201 () Bool)

(declare-fun res!825190 () Bool)

(assert (=> b!1835201 (=> (not res!825190) (not e!1172840))))

(assert (=> b!1835201 (= res!825190 (not call!114872))))

(declare-fun bm!114867 () Bool)

(assert (=> bm!114867 (= call!114872 (isEmpty!12741 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))))))

(declare-fun b!1835202 () Bool)

(assert (=> b!1835202 (= e!1172843 (not lt!712341))))

(declare-fun b!1835203 () Bool)

(assert (=> b!1835203 (= e!1172841 (matchR!2438 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984)))))) (tail!2750 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984)))))))))

(declare-fun b!1835204 () Bool)

(assert (=> b!1835204 (= e!1172844 (not (= (head!4291 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))) (c!299105 (regex!3647 rule!580)))))))

(declare-fun b!1835205 () Bool)

(assert (=> b!1835205 (= e!1172845 e!1172844)))

(declare-fun res!825192 () Bool)

(assert (=> b!1835205 (=> res!825192 e!1172844)))

(assert (=> b!1835205 (= res!825192 call!114872)))

(assert (= (and d!561098 c!299369) b!1835193))

(assert (= (and d!561098 (not c!299369)) b!1835203))

(assert (= (and d!561098 c!299367) b!1835195))

(assert (= (and d!561098 (not c!299367)) b!1835197))

(assert (= (and b!1835197 c!299368) b!1835202))

(assert (= (and b!1835197 (not c!299368)) b!1835199))

(assert (= (and b!1835199 (not res!825186)) b!1835194))

(assert (= (and b!1835194 res!825193) b!1835201))

(assert (= (and b!1835201 res!825190) b!1835198))

(assert (= (and b!1835198 res!825187) b!1835192))

(assert (= (and b!1835194 (not res!825188)) b!1835196))

(assert (= (and b!1835196 res!825191) b!1835205))

(assert (= (and b!1835205 (not res!825192)) b!1835200))

(assert (= (and b!1835200 (not res!825189)) b!1835204))

(assert (= (or b!1835195 b!1835201 b!1835205) bm!114867))

(assert (=> b!1835192 m!2261791))

(declare-fun m!2263055 () Bool)

(assert (=> b!1835192 m!2263055))

(assert (=> b!1835200 m!2261791))

(declare-fun m!2263057 () Bool)

(assert (=> b!1835200 m!2263057))

(assert (=> b!1835200 m!2263057))

(declare-fun m!2263059 () Bool)

(assert (=> b!1835200 m!2263059))

(assert (=> b!1835198 m!2261791))

(assert (=> b!1835198 m!2263057))

(assert (=> b!1835198 m!2263057))

(assert (=> b!1835198 m!2263059))

(assert (=> d!561098 m!2261791))

(declare-fun m!2263061 () Bool)

(assert (=> d!561098 m!2263061))

(assert (=> d!561098 m!2261857))

(assert (=> b!1835203 m!2261791))

(assert (=> b!1835203 m!2263055))

(assert (=> b!1835203 m!2263055))

(declare-fun m!2263063 () Bool)

(assert (=> b!1835203 m!2263063))

(assert (=> b!1835203 m!2261791))

(assert (=> b!1835203 m!2263057))

(assert (=> b!1835203 m!2263063))

(assert (=> b!1835203 m!2263057))

(declare-fun m!2263065 () Bool)

(assert (=> b!1835203 m!2263065))

(assert (=> b!1835193 m!2261863))

(assert (=> b!1835204 m!2261791))

(assert (=> b!1835204 m!2263055))

(assert (=> bm!114867 m!2261791))

(assert (=> bm!114867 m!2263061))

(assert (=> b!1834165 d!561098))

(declare-fun d!561100 () Bool)

(assert (=> d!561100 (= (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984)))) (list!8199 (c!299104 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))))))

(declare-fun bs!408199 () Bool)

(assert (= bs!408199 d!561100))

(declare-fun m!2263067 () Bool)

(assert (=> bs!408199 m!2263067))

(assert (=> b!1834165 d!561100))

(declare-fun d!561102 () Bool)

(declare-fun lt!712342 () BalanceConc!13302)

(assert (=> d!561102 (= (list!8197 lt!712342) (originalCharacters!4455 (_1!11215 (get!6228 lt!711984))))))

(assert (=> d!561102 (= lt!712342 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984))))) (value!113606 (_1!11215 (get!6228 lt!711984)))))))

(assert (=> d!561102 (= (charsOf!2290 (_1!11215 (get!6228 lt!711984))) lt!712342)))

(declare-fun b_lambda!60803 () Bool)

(assert (=> (not b_lambda!60803) (not d!561102)))

(declare-fun tb!112329 () Bool)

(declare-fun t!171198 () Bool)

(assert (=> (and b!1834660 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171198) tb!112329))

(declare-fun b!1835206 () Bool)

(declare-fun e!1172846 () Bool)

(declare-fun tp!519067 () Bool)

(assert (=> b!1835206 (= e!1172846 (and (inv!26246 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984))))) (value!113606 (_1!11215 (get!6228 lt!711984)))))) tp!519067))))

(declare-fun result!135088 () Bool)

(assert (=> tb!112329 (= result!135088 (and (inv!26247 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984))))) (value!113606 (_1!11215 (get!6228 lt!711984))))) e!1172846))))

(assert (= tb!112329 b!1835206))

(declare-fun m!2263069 () Bool)

(assert (=> b!1835206 m!2263069))

(declare-fun m!2263071 () Bool)

(assert (=> tb!112329 m!2263071))

(assert (=> d!561102 t!171198))

(declare-fun b_and!143161 () Bool)

(assert (= b_and!143059 (and (=> t!171198 result!135088) b_and!143161)))

(declare-fun t!171200 () Bool)

(declare-fun tb!112331 () Bool)

(assert (=> (and b!1834695 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171200) tb!112331))

(declare-fun result!135090 () Bool)

(assert (= result!135090 result!135088))

(assert (=> d!561102 t!171200))

(declare-fun b_and!143163 () Bool)

(assert (= b_and!143063 (and (=> t!171200 result!135090) b_and!143163)))

(declare-fun tb!112333 () Bool)

(declare-fun t!171202 () Bool)

(assert (=> (and b!1834103 (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171202) tb!112333))

(declare-fun result!135092 () Bool)

(assert (= result!135092 result!135088))

(assert (=> d!561102 t!171202))

(declare-fun b_and!143165 () Bool)

(assert (= b_and!143049 (and (=> t!171202 result!135092) b_and!143165)))

(declare-fun tb!112335 () Bool)

(declare-fun t!171204 () Bool)

(assert (=> (and b!1834110 (= (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171204) tb!112335))

(declare-fun result!135094 () Bool)

(assert (= result!135094 result!135088))

(assert (=> d!561102 t!171204))

(declare-fun b_and!143167 () Bool)

(assert (= b_and!143051 (and (=> t!171204 result!135094) b_and!143167)))

(declare-fun tb!112337 () Bool)

(declare-fun t!171206 () Bool)

(assert (=> (and b!1834102 (= (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171206) tb!112337))

(declare-fun result!135096 () Bool)

(assert (= result!135096 result!135088))

(assert (=> d!561102 t!171206))

(declare-fun b_and!143169 () Bool)

(assert (= b_and!143053 (and (=> t!171206 result!135096) b_and!143169)))

(declare-fun t!171208 () Bool)

(declare-fun tb!112339 () Bool)

(assert (=> (and b!1834113 (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171208) tb!112339))

(declare-fun result!135098 () Bool)

(assert (= result!135098 result!135088))

(assert (=> d!561102 t!171208))

(declare-fun b_and!143171 () Bool)

(assert (= b_and!143055 (and (=> t!171208 result!135098) b_and!143171)))

(declare-fun m!2263073 () Bool)

(assert (=> d!561102 m!2263073))

(declare-fun m!2263075 () Bool)

(assert (=> d!561102 m!2263075))

(assert (=> b!1834165 d!561102))

(assert (=> b!1834165 d!560996))

(declare-fun d!561104 () Bool)

(assert (=> d!561104 (= (inv!26239 (tag!4061 (h!25576 (t!171046 rules!4610)))) (= (mod (str.len (value!113605 (tag!4061 (h!25576 (t!171046 rules!4610))))) 2) 0))))

(assert (=> b!1834659 d!561104))

(declare-fun d!561106 () Bool)

(declare-fun res!825194 () Bool)

(declare-fun e!1172847 () Bool)

(assert (=> d!561106 (=> (not res!825194) (not e!1172847))))

(assert (=> d!561106 (= res!825194 (semiInverseModEq!1468 (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610))))))))

(assert (=> d!561106 (= (inv!26242 (transformation!3647 (h!25576 (t!171046 rules!4610)))) e!1172847)))

(declare-fun b!1835207 () Bool)

(assert (=> b!1835207 (= e!1172847 (equivClasses!1409 (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610))))))))

(assert (= (and d!561106 res!825194) b!1835207))

(declare-fun m!2263077 () Bool)

(assert (=> d!561106 m!2263077))

(declare-fun m!2263079 () Bool)

(assert (=> b!1835207 m!2263079))

(assert (=> b!1834659 d!561106))

(declare-fun d!561108 () Bool)

(assert (=> d!561108 (= (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017)))) (list!8199 (c!299104 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))))))

(declare-fun bs!408200 () Bool)

(assert (= bs!408200 d!561108))

(declare-fun m!2263081 () Bool)

(assert (=> bs!408200 m!2263081))

(assert (=> b!1834281 d!561108))

(declare-fun d!561110 () Bool)

(declare-fun lt!712343 () BalanceConc!13302)

(assert (=> d!561110 (= (list!8197 lt!712343) (originalCharacters!4455 (_1!11215 (get!6228 lt!712017))))))

(assert (=> d!561110 (= lt!712343 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))) (value!113606 (_1!11215 (get!6228 lt!712017)))))))

(assert (=> d!561110 (= (charsOf!2290 (_1!11215 (get!6228 lt!712017))) lt!712343)))

(declare-fun b_lambda!60805 () Bool)

(assert (=> (not b_lambda!60805) (not d!561110)))

(declare-fun t!171210 () Bool)

(declare-fun tb!112341 () Bool)

(assert (=> (and b!1834102 (= (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171210) tb!112341))

(declare-fun b!1835208 () Bool)

(declare-fun e!1172848 () Bool)

(declare-fun tp!519068 () Bool)

(assert (=> b!1835208 (= e!1172848 (and (inv!26246 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))) (value!113606 (_1!11215 (get!6228 lt!712017)))))) tp!519068))))

(declare-fun result!135100 () Bool)

(assert (=> tb!112341 (= result!135100 (and (inv!26247 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))) (value!113606 (_1!11215 (get!6228 lt!712017))))) e!1172848))))

(assert (= tb!112341 b!1835208))

(declare-fun m!2263083 () Bool)

(assert (=> b!1835208 m!2263083))

(declare-fun m!2263085 () Bool)

(assert (=> tb!112341 m!2263085))

(assert (=> d!561110 t!171210))

(declare-fun b_and!143173 () Bool)

(assert (= b_and!143169 (and (=> t!171210 result!135100) b_and!143173)))

(declare-fun t!171212 () Bool)

(declare-fun tb!112343 () Bool)

(assert (=> (and b!1834110 (= (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171212) tb!112343))

(declare-fun result!135102 () Bool)

(assert (= result!135102 result!135100))

(assert (=> d!561110 t!171212))

(declare-fun b_and!143175 () Bool)

(assert (= b_and!143167 (and (=> t!171212 result!135102) b_and!143175)))

(declare-fun tb!112345 () Bool)

(declare-fun t!171214 () Bool)

(assert (=> (and b!1834660 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171214) tb!112345))

(declare-fun result!135104 () Bool)

(assert (= result!135104 result!135100))

(assert (=> d!561110 t!171214))

(declare-fun b_and!143177 () Bool)

(assert (= b_and!143161 (and (=> t!171214 result!135104) b_and!143177)))

(declare-fun tb!112347 () Bool)

(declare-fun t!171216 () Bool)

(assert (=> (and b!1834695 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171216) tb!112347))

(declare-fun result!135106 () Bool)

(assert (= result!135106 result!135100))

(assert (=> d!561110 t!171216))

(declare-fun b_and!143179 () Bool)

(assert (= b_and!143163 (and (=> t!171216 result!135106) b_and!143179)))

(declare-fun t!171218 () Bool)

(declare-fun tb!112349 () Bool)

(assert (=> (and b!1834103 (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171218) tb!112349))

(declare-fun result!135108 () Bool)

(assert (= result!135108 result!135100))

(assert (=> d!561110 t!171218))

(declare-fun b_and!143181 () Bool)

(assert (= b_and!143165 (and (=> t!171218 result!135108) b_and!143181)))

(declare-fun t!171220 () Bool)

(declare-fun tb!112351 () Bool)

(assert (=> (and b!1834113 (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171220) tb!112351))

(declare-fun result!135110 () Bool)

(assert (= result!135110 result!135100))

(assert (=> d!561110 t!171220))

(declare-fun b_and!143183 () Bool)

(assert (= b_and!143171 (and (=> t!171220 result!135110) b_and!143183)))

(declare-fun m!2263087 () Bool)

(assert (=> d!561110 m!2263087))

(declare-fun m!2263089 () Bool)

(assert (=> d!561110 m!2263089))

(assert (=> b!1834281 d!561110))

(assert (=> b!1834281 d!560884))

(declare-fun bs!408201 () Bool)

(declare-fun d!561112 () Bool)

(assert (= bs!408201 (and d!561112 d!560992)))

(declare-fun lambda!72182 () Int)

(assert (=> bs!408201 (= lambda!72182 lambda!72167)))

(declare-fun bs!408202 () Bool)

(assert (= bs!408202 (and d!561112 d!560722)))

(assert (=> bs!408202 (= lambda!72182 lambda!72127)))

(declare-fun bs!408203 () Bool)

(assert (= bs!408203 (and d!561112 d!560650)))

(assert (=> bs!408203 (= lambda!72182 lambda!72107)))

(declare-fun bs!408204 () Bool)

(assert (= bs!408204 (and d!561112 b!1834108)))

(assert (=> bs!408204 (= lambda!72182 lambda!72098)))

(declare-fun bs!408205 () Bool)

(assert (= bs!408205 (and d!561112 d!560728)))

(assert (=> bs!408205 (= lambda!72182 lambda!72131)))

(declare-fun bs!408206 () Bool)

(assert (= bs!408206 (and d!561112 d!560652)))

(declare-fun lambda!72183 () Int)

(assert (=> bs!408206 (= lambda!72183 lambda!72122)))

(assert (=> bs!408202 (= lambda!72183 lambda!72128)))

(declare-fun bs!408207 () Bool)

(assert (= bs!408207 (and d!561112 d!560894)))

(assert (=> bs!408207 (= lambda!72183 lambda!72150)))

(assert (=> bs!408201 (= lambda!72183 lambda!72168)))

(assert (=> d!561112 (forall!4348 (map!4189 rules!4610 lambda!72182) lambda!72183)))

(declare-fun lt!712348 () Unit!34851)

(declare-fun e!1172851 () Unit!34851)

(assert (=> d!561112 (= lt!712348 e!1172851)))

(declare-fun c!299372 () Bool)

(assert (=> d!561112 (= c!299372 ((_ is Nil!20175) rules!4610))))

(assert (=> d!561112 (rulesValidInductive!1262 thiss!28318 rules!4610)))

(assert (=> d!561112 (= (lemma!550 rules!4610 thiss!28318 rules!4610) lt!712348)))

(declare-fun b!1835213 () Bool)

(declare-fun Unit!34865 () Unit!34851)

(assert (=> b!1835213 (= e!1172851 Unit!34865)))

(declare-fun b!1835214 () Bool)

(declare-fun Unit!34866 () Unit!34851)

(assert (=> b!1835214 (= e!1172851 Unit!34866)))

(declare-fun lt!712349 () Unit!34851)

(assert (=> b!1835214 (= lt!712349 (lemma!550 rules!4610 thiss!28318 (t!171046 rules!4610)))))

(assert (= (and d!561112 c!299372) b!1835213))

(assert (= (and d!561112 (not c!299372)) b!1835214))

(declare-fun m!2263091 () Bool)

(assert (=> d!561112 m!2263091))

(assert (=> d!561112 m!2263091))

(declare-fun m!2263093 () Bool)

(assert (=> d!561112 m!2263093))

(assert (=> d!561112 m!2261921))

(declare-fun m!2263095 () Bool)

(assert (=> b!1835214 m!2263095))

(assert (=> d!560650 d!561112))

(declare-fun bs!408208 () Bool)

(declare-fun d!561114 () Bool)

(assert (= bs!408208 (and d!561114 d!560992)))

(declare-fun lambda!72184 () Int)

(assert (=> bs!408208 (= lambda!72184 lambda!72168)))

(declare-fun bs!408209 () Bool)

(assert (= bs!408209 (and d!561114 d!560722)))

(assert (=> bs!408209 (= lambda!72184 lambda!72128)))

(declare-fun bs!408210 () Bool)

(assert (= bs!408210 (and d!561114 d!560652)))

(assert (=> bs!408210 (= lambda!72184 lambda!72122)))

(declare-fun bs!408211 () Bool)

(assert (= bs!408211 (and d!561114 d!560894)))

(assert (=> bs!408211 (= lambda!72184 lambda!72150)))

(declare-fun bs!408212 () Bool)

(assert (= bs!408212 (and d!561114 d!561112)))

(assert (=> bs!408212 (= lambda!72184 lambda!72183)))

(declare-fun b!1835216 () Bool)

(declare-fun e!1172857 () Bool)

(declare-fun lt!712350 () Regex!4975)

(assert (=> b!1835216 (= e!1172857 (isEmptyLang!133 lt!712350))))

(declare-fun b!1835217 () Bool)

(declare-fun e!1172853 () Regex!4975)

(assert (=> b!1835217 (= e!1172853 (Union!4975 (h!25577 (map!4189 rules!4610 lambda!72107)) (generalisedUnion!490 (t!171047 (map!4189 rules!4610 lambda!72107)))))))

(declare-fun b!1835218 () Bool)

(assert (=> b!1835218 (= e!1172853 EmptyLang!4975)))

(declare-fun b!1835219 () Bool)

(declare-fun e!1172855 () Bool)

(assert (=> b!1835219 (= e!1172855 (isEmpty!12743 (t!171047 (map!4189 rules!4610 lambda!72107))))))

(declare-fun b!1835220 () Bool)

(declare-fun e!1172856 () Regex!4975)

(assert (=> b!1835220 (= e!1172856 e!1172853)))

(declare-fun c!299376 () Bool)

(assert (=> b!1835220 (= c!299376 ((_ is Cons!20176) (map!4189 rules!4610 lambda!72107)))))

(declare-fun b!1835221 () Bool)

(declare-fun e!1172854 () Bool)

(assert (=> b!1835221 (= e!1172854 (isUnion!133 lt!712350))))

(declare-fun b!1835222 () Bool)

(assert (=> b!1835222 (= e!1172854 (= lt!712350 (head!4292 (map!4189 rules!4610 lambda!72107))))))

(declare-fun e!1172852 () Bool)

(assert (=> d!561114 e!1172852))

(declare-fun res!825196 () Bool)

(assert (=> d!561114 (=> (not res!825196) (not e!1172852))))

(assert (=> d!561114 (= res!825196 (validRegex!2033 lt!712350))))

(assert (=> d!561114 (= lt!712350 e!1172856)))

(declare-fun c!299374 () Bool)

(assert (=> d!561114 (= c!299374 e!1172855)))

(declare-fun res!825195 () Bool)

(assert (=> d!561114 (=> (not res!825195) (not e!1172855))))

(assert (=> d!561114 (= res!825195 ((_ is Cons!20176) (map!4189 rules!4610 lambda!72107)))))

(assert (=> d!561114 (forall!4348 (map!4189 rules!4610 lambda!72107) lambda!72184)))

(assert (=> d!561114 (= (generalisedUnion!490 (map!4189 rules!4610 lambda!72107)) lt!712350)))

(declare-fun b!1835215 () Bool)

(assert (=> b!1835215 (= e!1172857 e!1172854)))

(declare-fun c!299375 () Bool)

(assert (=> b!1835215 (= c!299375 (isEmpty!12743 (tail!2751 (map!4189 rules!4610 lambda!72107))))))

(declare-fun b!1835223 () Bool)

(assert (=> b!1835223 (= e!1172856 (h!25577 (map!4189 rules!4610 lambda!72107)))))

(declare-fun b!1835224 () Bool)

(assert (=> b!1835224 (= e!1172852 e!1172857)))

(declare-fun c!299373 () Bool)

(assert (=> b!1835224 (= c!299373 (isEmpty!12743 (map!4189 rules!4610 lambda!72107)))))

(assert (= (and d!561114 res!825195) b!1835219))

(assert (= (and d!561114 c!299374) b!1835223))

(assert (= (and d!561114 (not c!299374)) b!1835220))

(assert (= (and b!1835220 c!299376) b!1835217))

(assert (= (and b!1835220 (not c!299376)) b!1835218))

(assert (= (and d!561114 res!825196) b!1835224))

(assert (= (and b!1835224 c!299373) b!1835216))

(assert (= (and b!1835224 (not c!299373)) b!1835215))

(assert (= (and b!1835215 c!299375) b!1835222))

(assert (= (and b!1835215 (not c!299375)) b!1835221))

(assert (=> b!1835224 m!2261943))

(declare-fun m!2263097 () Bool)

(assert (=> b!1835224 m!2263097))

(declare-fun m!2263099 () Bool)

(assert (=> d!561114 m!2263099))

(assert (=> d!561114 m!2261943))

(declare-fun m!2263101 () Bool)

(assert (=> d!561114 m!2263101))

(assert (=> b!1835222 m!2261943))

(declare-fun m!2263103 () Bool)

(assert (=> b!1835222 m!2263103))

(declare-fun m!2263105 () Bool)

(assert (=> b!1835216 m!2263105))

(declare-fun m!2263107 () Bool)

(assert (=> b!1835219 m!2263107))

(assert (=> b!1835215 m!2261943))

(declare-fun m!2263109 () Bool)

(assert (=> b!1835215 m!2263109))

(assert (=> b!1835215 m!2263109))

(declare-fun m!2263111 () Bool)

(assert (=> b!1835215 m!2263111))

(declare-fun m!2263113 () Bool)

(assert (=> b!1835221 m!2263113))

(declare-fun m!2263115 () Bool)

(assert (=> b!1835217 m!2263115))

(assert (=> d!560650 d!561114))

(declare-fun d!561116 () Bool)

(declare-fun lt!712351 () List!20246)

(assert (=> d!561116 (= (size!16007 lt!712351) (size!16008 rules!4610))))

(declare-fun e!1172858 () List!20246)

(assert (=> d!561116 (= lt!712351 e!1172858)))

(declare-fun c!299377 () Bool)

(assert (=> d!561116 (= c!299377 ((_ is Nil!20175) rules!4610))))

(assert (=> d!561116 (= (map!4189 rules!4610 lambda!72107) lt!712351)))

(declare-fun b!1835225 () Bool)

(assert (=> b!1835225 (= e!1172858 Nil!20176)))

(declare-fun b!1835226 () Bool)

(assert (=> b!1835226 (= e!1172858 ($colon$colon!466 (map!4189 (t!171046 rules!4610) lambda!72107) (dynLambda!10041 lambda!72107 (h!25576 rules!4610))))))

(assert (= (and d!561116 c!299377) b!1835225))

(assert (= (and d!561116 (not c!299377)) b!1835226))

(declare-fun b_lambda!60807 () Bool)

(assert (=> (not b_lambda!60807) (not b!1835226)))

(declare-fun m!2263117 () Bool)

(assert (=> d!561116 m!2263117))

(assert (=> d!561116 m!2262211))

(declare-fun m!2263119 () Bool)

(assert (=> b!1835226 m!2263119))

(declare-fun m!2263121 () Bool)

(assert (=> b!1835226 m!2263121))

(assert (=> b!1835226 m!2263119))

(assert (=> b!1835226 m!2263121))

(declare-fun m!2263123 () Bool)

(assert (=> b!1835226 m!2263123))

(assert (=> d!560650 d!561116))

(declare-fun d!561118 () Bool)

(declare-fun c!299380 () Bool)

(assert (=> d!561118 (= c!299380 ((_ is Nil!20175) rs!808))))

(declare-fun e!1172861 () (InoxSet Rule!7094))

(assert (=> d!561118 (= (content!2997 rs!808) e!1172861)))

(declare-fun b!1835231 () Bool)

(assert (=> b!1835231 (= e!1172861 ((as const (Array Rule!7094 Bool)) false))))

(declare-fun b!1835232 () Bool)

(assert (=> b!1835232 (= e!1172861 ((_ map or) (store ((as const (Array Rule!7094 Bool)) false) (h!25576 rs!808) true) (content!2997 (t!171046 rs!808))))))

(assert (= (and d!561118 c!299380) b!1835231))

(assert (= (and d!561118 (not c!299380)) b!1835232))

(declare-fun m!2263125 () Bool)

(assert (=> b!1835232 m!2263125))

(declare-fun m!2263127 () Bool)

(assert (=> b!1835232 m!2263127))

(assert (=> d!560732 d!561118))

(assert (=> b!1834169 d!560996))

(declare-fun d!561120 () Bool)

(declare-fun e!1172863 () Bool)

(assert (=> d!561120 e!1172863))

(declare-fun res!825198 () Bool)

(assert (=> d!561120 (=> (not res!825198) (not e!1172863))))

(declare-fun lt!712352 () List!20244)

(assert (=> d!561120 (= res!825198 (= (content!2999 lt!712352) ((_ map or) (content!2999 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))) (content!2999 (_2!11215 (get!6228 lt!711984))))))))

(declare-fun e!1172862 () List!20244)

(assert (=> d!561120 (= lt!712352 e!1172862)))

(declare-fun c!299381 () Bool)

(assert (=> d!561120 (= c!299381 ((_ is Nil!20174) (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))))))

(assert (=> d!561120 (= (++!5471 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984)))) (_2!11215 (get!6228 lt!711984))) lt!712352)))

(declare-fun b!1835235 () Bool)

(declare-fun res!825197 () Bool)

(assert (=> b!1835235 (=> (not res!825197) (not e!1172863))))

(assert (=> b!1835235 (= res!825197 (= (size!16002 lt!712352) (+ (size!16002 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))) (size!16002 (_2!11215 (get!6228 lt!711984))))))))

(declare-fun b!1835234 () Bool)

(assert (=> b!1835234 (= e!1172862 (Cons!20174 (h!25575 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))) (++!5471 (t!171045 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984))))) (_2!11215 (get!6228 lt!711984)))))))

(declare-fun b!1835233 () Bool)

(assert (=> b!1835233 (= e!1172862 (_2!11215 (get!6228 lt!711984)))))

(declare-fun b!1835236 () Bool)

(assert (=> b!1835236 (= e!1172863 (or (not (= (_2!11215 (get!6228 lt!711984)) Nil!20174)) (= lt!712352 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!711984)))))))))

(assert (= (and d!561120 c!299381) b!1835233))

(assert (= (and d!561120 (not c!299381)) b!1835234))

(assert (= (and d!561120 res!825198) b!1835235))

(assert (= (and b!1835235 res!825197) b!1835236))

(declare-fun m!2263129 () Bool)

(assert (=> d!561120 m!2263129))

(assert (=> d!561120 m!2261791))

(declare-fun m!2263131 () Bool)

(assert (=> d!561120 m!2263131))

(declare-fun m!2263133 () Bool)

(assert (=> d!561120 m!2263133))

(declare-fun m!2263135 () Bool)

(assert (=> b!1835235 m!2263135))

(assert (=> b!1835235 m!2261791))

(declare-fun m!2263137 () Bool)

(assert (=> b!1835235 m!2263137))

(assert (=> b!1835235 m!2261817))

(declare-fun m!2263139 () Bool)

(assert (=> b!1835234 m!2263139))

(assert (=> b!1834167 d!561120))

(assert (=> b!1834167 d!561100))

(assert (=> b!1834167 d!561102))

(assert (=> b!1834167 d!560996))

(declare-fun bs!408213 () Bool)

(declare-fun d!561122 () Bool)

(assert (= bs!408213 (and d!561122 d!560962)))

(declare-fun lambda!72185 () Int)

(assert (=> bs!408213 (= (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 (h!25576 rules!4610)))) (= lambda!72185 lambda!72162))))

(declare-fun bs!408214 () Bool)

(assert (= bs!408214 (and d!561122 d!560974)))

(assert (=> bs!408214 (= (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580))) (= lambda!72185 lambda!72163))))

(assert (=> d!561122 true))

(assert (=> d!561122 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 (h!25576 rs!808)))) (dynLambda!10049 order!13047 lambda!72185))))

(assert (=> d!561122 (= (equivClasses!1409 (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 (h!25576 rs!808)))) (Forall2!575 lambda!72185))))

(declare-fun bs!408215 () Bool)

(assert (= bs!408215 d!561122))

(declare-fun m!2263141 () Bool)

(assert (=> bs!408215 m!2263141))

(assert (=> b!1834292 d!561122))

(assert (=> b!1834224 d!560940))

(declare-fun bs!408216 () Bool)

(declare-fun d!561124 () Bool)

(assert (= bs!408216 (and d!561124 d!560962)))

(declare-fun lambda!72186 () Int)

(assert (=> bs!408216 (= (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (h!25576 rules!4610)))) (= lambda!72186 lambda!72162))))

(declare-fun bs!408217 () Bool)

(assert (= bs!408217 (and d!561124 d!560974)))

(assert (=> bs!408217 (= (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580))) (= lambda!72186 lambda!72163))))

(declare-fun bs!408218 () Bool)

(assert (= bs!408218 (and d!561124 d!561122)))

(assert (=> bs!408218 (= (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (h!25576 rs!808)))) (= lambda!72186 lambda!72185))))

(assert (=> d!561124 true))

(assert (=> d!561124 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 (rule!5831 token!567)))) (dynLambda!10049 order!13047 lambda!72186))))

(assert (=> d!561124 (= (equivClasses!1409 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (rule!5831 token!567)))) (Forall2!575 lambda!72186))))

(declare-fun bs!408219 () Bool)

(assert (= bs!408219 d!561124))

(declare-fun m!2263143 () Bool)

(assert (=> bs!408219 m!2263143))

(assert (=> b!1834620 d!561124))

(declare-fun d!561126 () Bool)

(declare-fun e!1172865 () Bool)

(assert (=> d!561126 e!1172865))

(declare-fun res!825200 () Bool)

(assert (=> d!561126 (=> (not res!825200) (not e!1172865))))

(declare-fun lt!712353 () List!20244)

(assert (=> d!561126 (= res!825200 (= (content!2999 lt!712353) ((_ map or) (content!2999 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))) (content!2999 (_2!11215 (get!6228 lt!712017))))))))

(declare-fun e!1172864 () List!20244)

(assert (=> d!561126 (= lt!712353 e!1172864)))

(declare-fun c!299382 () Bool)

(assert (=> d!561126 (= c!299382 ((_ is Nil!20174) (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))))))

(assert (=> d!561126 (= (++!5471 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017)))) (_2!11215 (get!6228 lt!712017))) lt!712353)))

(declare-fun b!1835239 () Bool)

(declare-fun res!825199 () Bool)

(assert (=> b!1835239 (=> (not res!825199) (not e!1172865))))

(assert (=> b!1835239 (= res!825199 (= (size!16002 lt!712353) (+ (size!16002 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))) (size!16002 (_2!11215 (get!6228 lt!712017))))))))

(declare-fun b!1835238 () Bool)

(assert (=> b!1835238 (= e!1172864 (Cons!20174 (h!25575 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))) (++!5471 (t!171045 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))) (_2!11215 (get!6228 lt!712017)))))))

(declare-fun b!1835237 () Bool)

(assert (=> b!1835237 (= e!1172864 (_2!11215 (get!6228 lt!712017)))))

(declare-fun b!1835240 () Bool)

(assert (=> b!1835240 (= e!1172865 (or (not (= (_2!11215 (get!6228 lt!712017)) Nil!20174)) (= lt!712353 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017)))))))))

(assert (= (and d!561126 c!299382) b!1835237))

(assert (= (and d!561126 (not c!299382)) b!1835238))

(assert (= (and d!561126 res!825200) b!1835239))

(assert (= (and b!1835239 res!825199) b!1835240))

(declare-fun m!2263145 () Bool)

(assert (=> d!561126 m!2263145))

(assert (=> d!561126 m!2261899))

(declare-fun m!2263147 () Bool)

(assert (=> d!561126 m!2263147))

(declare-fun m!2263149 () Bool)

(assert (=> d!561126 m!2263149))

(declare-fun m!2263151 () Bool)

(assert (=> b!1835239 m!2263151))

(assert (=> b!1835239 m!2261899))

(declare-fun m!2263153 () Bool)

(assert (=> b!1835239 m!2263153))

(assert (=> b!1835239 m!2261907))

(declare-fun m!2263155 () Bool)

(assert (=> b!1835238 m!2263155))

(assert (=> b!1834282 d!561126))

(assert (=> b!1834282 d!561108))

(assert (=> b!1834282 d!561110))

(assert (=> b!1834282 d!560884))

(declare-fun d!561128 () Bool)

(assert (=> d!561128 (= (isEmptyLang!133 lt!712120) ((_ is EmptyLang!4975) lt!712120))))

(assert (=> b!1834568 d!561128))

(assert (=> d!560746 d!560984))

(declare-fun b!1835259 () Bool)

(declare-fun e!1172884 () Bool)

(declare-fun call!114880 () Bool)

(assert (=> b!1835259 (= e!1172884 call!114880)))

(declare-fun b!1835260 () Bool)

(declare-fun e!1172881 () Bool)

(declare-fun e!1172885 () Bool)

(assert (=> b!1835260 (= e!1172881 e!1172885)))

(declare-fun c!299387 () Bool)

(assert (=> b!1835260 (= c!299387 ((_ is Union!4975) (regex!3647 rule!580)))))

(declare-fun b!1835261 () Bool)

(declare-fun e!1172886 () Bool)

(assert (=> b!1835261 (= e!1172886 e!1172881)))

(declare-fun c!299388 () Bool)

(assert (=> b!1835261 (= c!299388 ((_ is Star!4975) (regex!3647 rule!580)))))

(declare-fun b!1835262 () Bool)

(declare-fun e!1172880 () Bool)

(assert (=> b!1835262 (= e!1172881 e!1172880)))

(declare-fun res!825215 () Bool)

(assert (=> b!1835262 (= res!825215 (not (nullable!1551 (reg!5304 (regex!3647 rule!580)))))))

(assert (=> b!1835262 (=> (not res!825215) (not e!1172880))))

(declare-fun bm!114874 () Bool)

(declare-fun call!114881 () Bool)

(declare-fun call!114879 () Bool)

(assert (=> bm!114874 (= call!114881 call!114879)))

(declare-fun b!1835264 () Bool)

(declare-fun res!825213 () Bool)

(declare-fun e!1172883 () Bool)

(assert (=> b!1835264 (=> res!825213 e!1172883)))

(assert (=> b!1835264 (= res!825213 (not ((_ is Concat!8713) (regex!3647 rule!580))))))

(assert (=> b!1835264 (= e!1172885 e!1172883)))

(declare-fun bm!114875 () Bool)

(assert (=> bm!114875 (= call!114879 (validRegex!2033 (ite c!299388 (reg!5304 (regex!3647 rule!580)) (ite c!299387 (regOne!10463 (regex!3647 rule!580)) (regTwo!10462 (regex!3647 rule!580))))))))

(declare-fun bm!114876 () Bool)

(assert (=> bm!114876 (= call!114880 (validRegex!2033 (ite c!299387 (regTwo!10463 (regex!3647 rule!580)) (regOne!10462 (regex!3647 rule!580)))))))

(declare-fun b!1835265 () Bool)

(declare-fun e!1172882 () Bool)

(assert (=> b!1835265 (= e!1172882 call!114881)))

(declare-fun b!1835266 () Bool)

(assert (=> b!1835266 (= e!1172880 call!114879)))

(declare-fun b!1835267 () Bool)

(declare-fun res!825212 () Bool)

(assert (=> b!1835267 (=> (not res!825212) (not e!1172884))))

(assert (=> b!1835267 (= res!825212 call!114881)))

(assert (=> b!1835267 (= e!1172885 e!1172884)))

(declare-fun b!1835263 () Bool)

(assert (=> b!1835263 (= e!1172883 e!1172882)))

(declare-fun res!825214 () Bool)

(assert (=> b!1835263 (=> (not res!825214) (not e!1172882))))

(assert (=> b!1835263 (= res!825214 call!114880)))

(declare-fun d!561130 () Bool)

(declare-fun res!825211 () Bool)

(assert (=> d!561130 (=> res!825211 e!1172886)))

(assert (=> d!561130 (= res!825211 ((_ is ElementMatch!4975) (regex!3647 rule!580)))))

(assert (=> d!561130 (= (validRegex!2033 (regex!3647 rule!580)) e!1172886)))

(assert (= (and d!561130 (not res!825211)) b!1835261))

(assert (= (and b!1835261 c!299388) b!1835262))

(assert (= (and b!1835261 (not c!299388)) b!1835260))

(assert (= (and b!1835262 res!825215) b!1835266))

(assert (= (and b!1835260 c!299387) b!1835267))

(assert (= (and b!1835260 (not c!299387)) b!1835264))

(assert (= (and b!1835267 res!825212) b!1835259))

(assert (= (and b!1835264 (not res!825213)) b!1835263))

(assert (= (and b!1835263 res!825214) b!1835265))

(assert (= (or b!1835259 b!1835263) bm!114876))

(assert (= (or b!1835267 b!1835265) bm!114874))

(assert (= (or b!1835266 bm!114874) bm!114875))

(declare-fun m!2263157 () Bool)

(assert (=> b!1835262 m!2263157))

(declare-fun m!2263159 () Bool)

(assert (=> bm!114875 m!2263159))

(declare-fun m!2263161 () Bool)

(assert (=> bm!114876 m!2263161))

(assert (=> d!560746 d!561130))

(assert (=> d!560624 d!560618))

(assert (=> d!560624 d!560620))

(assert (=> d!560624 d!560622))

(assert (=> d!560624 d!560646))

(declare-fun d!561132 () Bool)

(assert (=> d!561132 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!711970)) rule!580 (size!16002 lt!711970) lt!711970) suffix!1698)))))

(assert (=> d!561132 true))

(declare-fun _$59!314 () Unit!34851)

(assert (=> d!561132 (= (choose!11546 thiss!28318 rules!4610 lt!711970 input!3681 suffix!1698 rule!580) _$59!314)))

(declare-fun bs!408220 () Bool)

(assert (= bs!408220 d!561132))

(assert (=> bs!408220 m!2261749))

(assert (=> bs!408220 m!2261743))

(assert (=> bs!408220 m!2261743))

(assert (=> bs!408220 m!2261745))

(assert (=> bs!408220 m!2261747))

(assert (=> d!560624 d!561132))

(assert (=> d!560624 d!560626))

(declare-fun d!561134 () Bool)

(declare-fun e!1172888 () Bool)

(assert (=> d!561134 e!1172888))

(declare-fun res!825217 () Bool)

(assert (=> d!561134 (=> (not res!825217) (not e!1172888))))

(declare-fun lt!712354 () List!20244)

(assert (=> d!561134 (= res!825217 (= (content!2999 lt!712354) ((_ map or) (content!2999 (t!171045 lt!711966)) (content!2999 suffix!1698))))))

(declare-fun e!1172887 () List!20244)

(assert (=> d!561134 (= lt!712354 e!1172887)))

(declare-fun c!299389 () Bool)

(assert (=> d!561134 (= c!299389 ((_ is Nil!20174) (t!171045 lt!711966)))))

(assert (=> d!561134 (= (++!5471 (t!171045 lt!711966) suffix!1698) lt!712354)))

(declare-fun b!1835270 () Bool)

(declare-fun res!825216 () Bool)

(assert (=> b!1835270 (=> (not res!825216) (not e!1172888))))

(assert (=> b!1835270 (= res!825216 (= (size!16002 lt!712354) (+ (size!16002 (t!171045 lt!711966)) (size!16002 suffix!1698))))))

(declare-fun b!1835269 () Bool)

(assert (=> b!1835269 (= e!1172887 (Cons!20174 (h!25575 (t!171045 lt!711966)) (++!5471 (t!171045 (t!171045 lt!711966)) suffix!1698)))))

(declare-fun b!1835268 () Bool)

(assert (=> b!1835268 (= e!1172887 suffix!1698)))

(declare-fun b!1835271 () Bool)

(assert (=> b!1835271 (= e!1172888 (or (not (= suffix!1698 Nil!20174)) (= lt!712354 (t!171045 lt!711966))))))

(assert (= (and d!561134 c!299389) b!1835268))

(assert (= (and d!561134 (not c!299389)) b!1835269))

(assert (= (and d!561134 res!825217) b!1835270))

(assert (= (and b!1835270 res!825216) b!1835271))

(declare-fun m!2263163 () Bool)

(assert (=> d!561134 m!2263163))

(assert (=> d!561134 m!2262747))

(assert (=> d!561134 m!2262271))

(declare-fun m!2263165 () Bool)

(assert (=> b!1835270 m!2263165))

(assert (=> b!1835270 m!2262483))

(assert (=> b!1835270 m!2262277))

(declare-fun m!2263167 () Bool)

(assert (=> b!1835269 m!2263167))

(assert (=> b!1834612 d!561134))

(assert (=> b!1834624 d!561046))

(declare-fun b!1835272 () Bool)

(declare-fun e!1172890 () Bool)

(assert (=> b!1835272 (= e!1172890 (= (head!4291 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))) (c!299105 (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))))))

(declare-fun b!1835273 () Bool)

(declare-fun e!1172891 () Bool)

(assert (=> b!1835273 (= e!1172891 (nullable!1551 (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))))))

(declare-fun b!1835274 () Bool)

(declare-fun res!825220 () Bool)

(declare-fun e!1172892 () Bool)

(assert (=> b!1835274 (=> res!825220 e!1172892)))

(assert (=> b!1835274 (= res!825220 e!1172890)))

(declare-fun res!825225 () Bool)

(assert (=> b!1835274 (=> (not res!825225) (not e!1172890))))

(declare-fun lt!712355 () Bool)

(assert (=> b!1835274 (= res!825225 lt!712355)))

(declare-fun b!1835275 () Bool)

(declare-fun e!1172889 () Bool)

(declare-fun call!114882 () Bool)

(assert (=> b!1835275 (= e!1172889 (= lt!712355 call!114882))))

(declare-fun b!1835276 () Bool)

(declare-fun e!1172895 () Bool)

(assert (=> b!1835276 (= e!1172892 e!1172895)))

(declare-fun res!825223 () Bool)

(assert (=> b!1835276 (=> (not res!825223) (not e!1172895))))

(assert (=> b!1835276 (= res!825223 (not lt!712355))))

(declare-fun b!1835277 () Bool)

(declare-fun e!1172893 () Bool)

(assert (=> b!1835277 (= e!1172889 e!1172893)))

(declare-fun c!299391 () Bool)

(assert (=> b!1835277 (= c!299391 ((_ is EmptyLang!4975) (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))))))

(declare-fun b!1835278 () Bool)

(declare-fun res!825219 () Bool)

(assert (=> b!1835278 (=> (not res!825219) (not e!1172890))))

(assert (=> b!1835278 (= res!825219 (isEmpty!12741 (tail!2750 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017)))))))))

(declare-fun b!1835279 () Bool)

(declare-fun res!825218 () Bool)

(assert (=> b!1835279 (=> res!825218 e!1172892)))

(assert (=> b!1835279 (= res!825218 (not ((_ is ElementMatch!4975) (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))))))

(assert (=> b!1835279 (= e!1172893 e!1172892)))

(declare-fun d!561136 () Bool)

(assert (=> d!561136 e!1172889))

(declare-fun c!299390 () Bool)

(assert (=> d!561136 (= c!299390 ((_ is EmptyExpr!4975) (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))))))

(assert (=> d!561136 (= lt!712355 e!1172891)))

(declare-fun c!299392 () Bool)

(assert (=> d!561136 (= c!299392 (isEmpty!12741 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))))))

(assert (=> d!561136 (validRegex!2033 (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))))

(assert (=> d!561136 (= (matchR!2438 (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))) (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))) lt!712355)))

(declare-fun b!1835280 () Bool)

(declare-fun res!825221 () Bool)

(declare-fun e!1172894 () Bool)

(assert (=> b!1835280 (=> res!825221 e!1172894)))

(assert (=> b!1835280 (= res!825221 (not (isEmpty!12741 (tail!2750 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))))))))

(declare-fun b!1835281 () Bool)

(declare-fun res!825222 () Bool)

(assert (=> b!1835281 (=> (not res!825222) (not e!1172890))))

(assert (=> b!1835281 (= res!825222 (not call!114882))))

(declare-fun bm!114877 () Bool)

(assert (=> bm!114877 (= call!114882 (isEmpty!12741 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))))))

(declare-fun b!1835282 () Bool)

(assert (=> b!1835282 (= e!1172893 (not lt!712355))))

(declare-fun b!1835283 () Bool)

(assert (=> b!1835283 (= e!1172891 (matchR!2438 (derivativeStep!1315 (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))) (head!4291 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017)))))) (tail!2750 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017)))))))))

(declare-fun b!1835284 () Bool)

(assert (=> b!1835284 (= e!1172894 (not (= (head!4291 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712017))))) (c!299105 (regex!3647 (rule!5831 (_1!11215 (get!6228 lt!712017))))))))))

(declare-fun b!1835285 () Bool)

(assert (=> b!1835285 (= e!1172895 e!1172894)))

(declare-fun res!825224 () Bool)

(assert (=> b!1835285 (=> res!825224 e!1172894)))

(assert (=> b!1835285 (= res!825224 call!114882)))

(assert (= (and d!561136 c!299392) b!1835273))

(assert (= (and d!561136 (not c!299392)) b!1835283))

(assert (= (and d!561136 c!299390) b!1835275))

(assert (= (and d!561136 (not c!299390)) b!1835277))

(assert (= (and b!1835277 c!299391) b!1835282))

(assert (= (and b!1835277 (not c!299391)) b!1835279))

(assert (= (and b!1835279 (not res!825218)) b!1835274))

(assert (= (and b!1835274 res!825225) b!1835281))

(assert (= (and b!1835281 res!825222) b!1835278))

(assert (= (and b!1835278 res!825219) b!1835272))

(assert (= (and b!1835274 (not res!825220)) b!1835276))

(assert (= (and b!1835276 res!825223) b!1835285))

(assert (= (and b!1835285 (not res!825224)) b!1835280))

(assert (= (and b!1835280 (not res!825221)) b!1835284))

(assert (= (or b!1835275 b!1835281 b!1835285) bm!114877))

(assert (=> b!1835272 m!2261899))

(declare-fun m!2263169 () Bool)

(assert (=> b!1835272 m!2263169))

(assert (=> b!1835280 m!2261899))

(declare-fun m!2263171 () Bool)

(assert (=> b!1835280 m!2263171))

(assert (=> b!1835280 m!2263171))

(declare-fun m!2263173 () Bool)

(assert (=> b!1835280 m!2263173))

(assert (=> b!1835278 m!2261899))

(assert (=> b!1835278 m!2263171))

(assert (=> b!1835278 m!2263171))

(assert (=> b!1835278 m!2263173))

(assert (=> d!561136 m!2261899))

(declare-fun m!2263175 () Bool)

(assert (=> d!561136 m!2263175))

(declare-fun m!2263177 () Bool)

(assert (=> d!561136 m!2263177))

(assert (=> b!1835283 m!2261899))

(assert (=> b!1835283 m!2263169))

(assert (=> b!1835283 m!2263169))

(declare-fun m!2263179 () Bool)

(assert (=> b!1835283 m!2263179))

(assert (=> b!1835283 m!2261899))

(assert (=> b!1835283 m!2263171))

(assert (=> b!1835283 m!2263179))

(assert (=> b!1835283 m!2263171))

(declare-fun m!2263181 () Bool)

(assert (=> b!1835283 m!2263181))

(declare-fun m!2263183 () Bool)

(assert (=> b!1835273 m!2263183))

(assert (=> b!1835284 m!2261899))

(assert (=> b!1835284 m!2263169))

(assert (=> bm!114877 m!2261899))

(assert (=> bm!114877 m!2263175))

(assert (=> b!1834286 d!561136))

(assert (=> b!1834286 d!560884))

(assert (=> b!1834286 d!561108))

(assert (=> b!1834286 d!561110))

(declare-fun d!561138 () Bool)

(declare-fun charsToBigInt!0 (List!20243 Int) Int)

(assert (=> d!561138 (= (inv!15 (value!113606 token!567)) (= (charsToBigInt!0 (text!26608 (value!113606 token!567)) 0) (value!113601 (value!113606 token!567))))))

(declare-fun bs!408221 () Bool)

(assert (= bs!408221 d!561138))

(declare-fun m!2263185 () Bool)

(assert (=> bs!408221 m!2263185))

(assert (=> b!1834139 d!561138))

(declare-fun d!561140 () Bool)

(declare-fun lt!712356 () Bool)

(assert (=> d!561140 (= lt!712356 (select (content!2997 (t!171046 rs!808)) rule!580))))

(declare-fun e!1172896 () Bool)

(assert (=> d!561140 (= lt!712356 e!1172896)))

(declare-fun res!825227 () Bool)

(assert (=> d!561140 (=> (not res!825227) (not e!1172896))))

(assert (=> d!561140 (= res!825227 ((_ is Cons!20175) (t!171046 rs!808)))))

(assert (=> d!561140 (= (contains!3724 (t!171046 rs!808) rule!580) lt!712356)))

(declare-fun b!1835286 () Bool)

(declare-fun e!1172897 () Bool)

(assert (=> b!1835286 (= e!1172896 e!1172897)))

(declare-fun res!825226 () Bool)

(assert (=> b!1835286 (=> res!825226 e!1172897)))

(assert (=> b!1835286 (= res!825226 (= (h!25576 (t!171046 rs!808)) rule!580))))

(declare-fun b!1835287 () Bool)

(assert (=> b!1835287 (= e!1172897 (contains!3724 (t!171046 (t!171046 rs!808)) rule!580))))

(assert (= (and d!561140 res!825227) b!1835286))

(assert (= (and b!1835286 (not res!825226)) b!1835287))

(assert (=> d!561140 m!2263127))

(declare-fun m!2263187 () Bool)

(assert (=> d!561140 m!2263187))

(declare-fun m!2263189 () Bool)

(assert (=> b!1835287 m!2263189))

(assert (=> b!1834616 d!561140))

(declare-fun d!561142 () Bool)

(declare-fun e!1172900 () Bool)

(assert (=> d!561142 e!1172900))

(declare-fun res!825230 () Bool)

(assert (=> d!561142 (=> (not res!825230) (not e!1172900))))

(declare-fun lt!712359 () BalanceConc!13302)

(assert (=> d!561142 (= res!825230 (= (list!8197 lt!712359) lt!711970))))

(declare-fun fromList!455 (List!20244) Conc!6679)

(assert (=> d!561142 (= lt!712359 (BalanceConc!13303 (fromList!455 lt!711970)))))

(assert (=> d!561142 (= (fromListB!1194 lt!711970) lt!712359)))

(declare-fun b!1835290 () Bool)

(declare-fun isBalanced!2070 (Conc!6679) Bool)

(assert (=> b!1835290 (= e!1172900 (isBalanced!2070 (fromList!455 lt!711970)))))

(assert (= (and d!561142 res!825230) b!1835290))

(declare-fun m!2263191 () Bool)

(assert (=> d!561142 m!2263191))

(declare-fun m!2263193 () Bool)

(assert (=> d!561142 m!2263193))

(assert (=> b!1835290 m!2263193))

(assert (=> b!1835290 m!2263193))

(declare-fun m!2263195 () Bool)

(assert (=> b!1835290 m!2263195))

(assert (=> d!560620 d!561142))

(declare-fun d!561144 () Bool)

(declare-fun c!299396 () Bool)

(assert (=> d!561144 (= c!299396 ((_ is Node!6679) (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))))))

(declare-fun e!1172905 () Bool)

(assert (=> d!561144 (= (inv!26246 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))) e!1172905)))

(declare-fun b!1835297 () Bool)

(declare-fun inv!26250 (Conc!6679) Bool)

(assert (=> b!1835297 (= e!1172905 (inv!26250 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))))))

(declare-fun b!1835298 () Bool)

(declare-fun e!1172906 () Bool)

(assert (=> b!1835298 (= e!1172905 e!1172906)))

(declare-fun res!825233 () Bool)

(assert (=> b!1835298 (= res!825233 (not ((_ is Leaf!9723) (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))))))))

(assert (=> b!1835298 (=> res!825233 e!1172906)))

(declare-fun b!1835299 () Bool)

(declare-fun inv!26251 (Conc!6679) Bool)

(assert (=> b!1835299 (= e!1172906 (inv!26251 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))))))

(assert (= (and d!561144 c!299396) b!1835297))

(assert (= (and d!561144 (not c!299396)) b!1835298))

(assert (= (and b!1835298 (not res!825233)) b!1835299))

(declare-fun m!2263197 () Bool)

(assert (=> b!1835297 m!2263197))

(declare-fun m!2263199 () Bool)

(assert (=> b!1835299 m!2263199))

(assert (=> b!1834183 d!561144))

(declare-fun bs!408222 () Bool)

(declare-fun d!561146 () Bool)

(assert (= bs!408222 (and d!561146 d!560992)))

(declare-fun lambda!72187 () Int)

(assert (=> bs!408222 (= lambda!72187 lambda!72167)))

(declare-fun bs!408223 () Bool)

(assert (= bs!408223 (and d!561146 d!561112)))

(assert (=> bs!408223 (= lambda!72187 lambda!72182)))

(declare-fun bs!408224 () Bool)

(assert (= bs!408224 (and d!561146 d!560722)))

(assert (=> bs!408224 (= lambda!72187 lambda!72127)))

(declare-fun bs!408225 () Bool)

(assert (= bs!408225 (and d!561146 d!560650)))

(assert (=> bs!408225 (= lambda!72187 lambda!72107)))

(declare-fun bs!408226 () Bool)

(assert (= bs!408226 (and d!561146 b!1834108)))

(assert (=> bs!408226 (= lambda!72187 lambda!72098)))

(declare-fun bs!408227 () Bool)

(assert (= bs!408227 (and d!561146 d!560728)))

(assert (=> bs!408227 (= lambda!72187 lambda!72131)))

(assert (=> d!561146 (contains!3725 (map!4189 (t!171046 (t!171046 rs!808)) lambda!72187) (regex!3647 rule!580))))

(declare-fun lt!712363 () Unit!34851)

(declare-fun e!1172907 () Unit!34851)

(assert (=> d!561146 (= lt!712363 e!1172907)))

(declare-fun c!299397 () Bool)

(assert (=> d!561146 (= c!299397 (and ((_ is Cons!20175) (t!171046 (t!171046 rs!808))) (not (= (h!25576 (t!171046 (t!171046 rs!808))) rule!580))))))

(assert (=> d!561146 (rulesValid!1394 thiss!28318 (t!171046 (t!171046 rs!808)))))

(declare-fun lt!712361 () Unit!34851)

(assert (=> d!561146 (= lt!712361 (lemma!547 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(declare-fun lt!712364 () Unit!34851)

(declare-fun lt!712360 () Unit!34851)

(assert (=> d!561146 (= lt!712364 lt!712360)))

(declare-fun lt!712362 () List!20244)

(assert (=> d!561146 (= (maxPrefixOneRule!1185 thiss!28318 rule!580 input!3681) (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 lt!712362)) rule!580 (size!16002 lt!712362) lt!712362) suffix!1698)))))

(assert (=> d!561146 (= lt!712360 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!555 thiss!28318 rules!4610 lt!712362 input!3681 suffix!1698 rule!580))))

(assert (=> d!561146 (= lt!712362 (list!8197 (charsOf!2290 token!567)))))

(assert (=> d!561146 (= (lemma!548 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171046 (t!171046 rs!808))) lt!712363)))

(declare-fun b!1835300 () Bool)

(assert (=> b!1835300 (= e!1172907 (lemma!548 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!171046 (t!171046 (t!171046 rs!808)))))))

(declare-fun b!1835301 () Bool)

(declare-fun Unit!34868 () Unit!34851)

(assert (=> b!1835301 (= e!1172907 Unit!34868)))

(assert (= (and d!561146 c!299397) b!1835300))

(assert (= (and d!561146 (not c!299397)) b!1835301))

(declare-fun m!2263201 () Bool)

(assert (=> d!561146 m!2263201))

(declare-fun m!2263203 () Bool)

(assert (=> d!561146 m!2263203))

(declare-fun m!2263205 () Bool)

(assert (=> d!561146 m!2263205))

(declare-fun m!2263207 () Bool)

(assert (=> d!561146 m!2263207))

(assert (=> d!561146 m!2263203))

(declare-fun m!2263209 () Bool)

(assert (=> d!561146 m!2263209))

(assert (=> d!561146 m!2261771))

(declare-fun m!2263211 () Bool)

(assert (=> d!561146 m!2263211))

(assert (=> d!561146 m!2261737))

(assert (=> d!561146 m!2261739))

(assert (=> d!561146 m!2261737))

(assert (=> d!561146 m!2261749))

(declare-fun m!2263213 () Bool)

(assert (=> d!561146 m!2263213))

(assert (=> d!561146 m!2263205))

(declare-fun m!2263215 () Bool)

(assert (=> b!1835300 m!2263215))

(assert (=> b!1834601 d!561146))

(declare-fun bs!408228 () Bool)

(declare-fun d!561148 () Bool)

(assert (= bs!408228 (and d!561148 d!561054)))

(declare-fun lambda!72188 () Int)

(assert (=> bs!408228 (= (and (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (h!25576 rules!4610)))) (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 (h!25576 rules!4610))))) (= lambda!72188 lambda!72175))))

(assert (=> d!561148 true))

(assert (=> d!561148 (< (dynLambda!10051 order!13049 (toChars!5053 (transformation!3647 rule!580))) (dynLambda!10052 order!13051 lambda!72188))))

(assert (=> d!561148 true))

(assert (=> d!561148 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 rule!580))) (dynLambda!10052 order!13051 lambda!72188))))

(assert (=> d!561148 (= (semiInverseModEq!1468 (toChars!5053 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 rule!580))) (Forall!936 lambda!72188))))

(declare-fun bs!408229 () Bool)

(assert (= bs!408229 d!561148))

(declare-fun m!2263217 () Bool)

(assert (=> bs!408229 m!2263217))

(assert (=> d!560738 d!561148))

(declare-fun d!561150 () Bool)

(declare-fun lt!712365 () Int)

(assert (=> d!561150 (>= lt!712365 0)))

(declare-fun e!1172908 () Int)

(assert (=> d!561150 (= lt!712365 e!1172908)))

(declare-fun c!299398 () Bool)

(assert (=> d!561150 (= c!299398 ((_ is Nil!20174) (originalCharacters!4455 token!567)))))

(assert (=> d!561150 (= (size!16002 (originalCharacters!4455 token!567)) lt!712365)))

(declare-fun b!1835302 () Bool)

(assert (=> b!1835302 (= e!1172908 0)))

(declare-fun b!1835303 () Bool)

(assert (=> b!1835303 (= e!1172908 (+ 1 (size!16002 (t!171045 (originalCharacters!4455 token!567)))))))

(assert (= (and d!561150 c!299398) b!1835302))

(assert (= (and d!561150 (not c!299398)) b!1835303))

(declare-fun m!2263219 () Bool)

(assert (=> b!1835303 m!2263219))

(assert (=> b!1834649 d!561150))

(assert (=> b!1834213 d!560840))

(declare-fun d!561152 () Bool)

(assert (=> d!561152 (= (isEmpty!12741 (tail!2750 lt!711966)) ((_ is Nil!20174) (tail!2750 lt!711966)))))

(assert (=> b!1834630 d!561152))

(assert (=> b!1834630 d!561048))

(declare-fun b!1835304 () Bool)

(declare-fun res!825238 () Bool)

(declare-fun e!1172912 () Bool)

(assert (=> b!1835304 (=> (not res!825238) (not e!1172912))))

(declare-fun lt!712366 () Option!4227)

(assert (=> b!1835304 (= res!825238 (< (size!16002 (_2!11215 (get!6228 lt!712366))) (size!16002 input!3681)))))

(declare-fun b!1835305 () Bool)

(assert (=> b!1835305 (= e!1172912 (= (size!16001 (_1!11215 (get!6228 lt!712366))) (size!16002 (originalCharacters!4455 (_1!11215 (get!6228 lt!712366))))))))

(declare-fun b!1835306 () Bool)

(declare-fun e!1172911 () Bool)

(assert (=> b!1835306 (= e!1172911 (matchR!2438 (regex!3647 (h!25576 rules!4610)) (_1!11217 (findLongestMatchInner!523 (regex!3647 (h!25576 rules!4610)) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(declare-fun b!1835307 () Bool)

(declare-fun e!1172909 () Bool)

(assert (=> b!1835307 (= e!1172909 e!1172912)))

(declare-fun res!825236 () Bool)

(assert (=> b!1835307 (=> (not res!825236) (not e!1172912))))

(assert (=> b!1835307 (= res!825236 (matchR!2438 (regex!3647 (h!25576 rules!4610)) (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712366))))))))

(declare-fun b!1835308 () Bool)

(declare-fun res!825237 () Bool)

(assert (=> b!1835308 (=> (not res!825237) (not e!1172912))))

(assert (=> b!1835308 (= res!825237 (= (value!113606 (_1!11215 (get!6228 lt!712366))) (apply!5435 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712366)))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!712366)))))))))

(declare-fun b!1835310 () Bool)

(declare-fun e!1172910 () Option!4227)

(declare-fun lt!712369 () tuple2!19630)

(assert (=> b!1835310 (= e!1172910 (Some!4226 (tuple2!19627 (Token!6849 (apply!5435 (transformation!3647 (h!25576 rules!4610)) (seqFromList!2604 (_1!11217 lt!712369))) (h!25576 rules!4610) (size!16006 (seqFromList!2604 (_1!11217 lt!712369))) (_1!11217 lt!712369)) (_2!11217 lt!712369))))))

(declare-fun lt!712370 () Unit!34851)

(assert (=> b!1835310 (= lt!712370 (longestMatchIsAcceptedByMatchOrIsEmpty!507 (regex!3647 (h!25576 rules!4610)) input!3681))))

(declare-fun res!825234 () Bool)

(assert (=> b!1835310 (= res!825234 (isEmpty!12741 (_1!11217 (findLongestMatchInner!523 (regex!3647 (h!25576 rules!4610)) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(assert (=> b!1835310 (=> res!825234 e!1172911)))

(assert (=> b!1835310 e!1172911))

(declare-fun lt!712368 () Unit!34851)

(assert (=> b!1835310 (= lt!712368 lt!712370)))

(declare-fun lt!712367 () Unit!34851)

(assert (=> b!1835310 (= lt!712367 (lemmaSemiInverse!737 (transformation!3647 (h!25576 rules!4610)) (seqFromList!2604 (_1!11217 lt!712369))))))

(declare-fun b!1835311 () Bool)

(declare-fun res!825239 () Bool)

(assert (=> b!1835311 (=> (not res!825239) (not e!1172912))))

(assert (=> b!1835311 (= res!825239 (= (rule!5831 (_1!11215 (get!6228 lt!712366))) (h!25576 rules!4610)))))

(declare-fun b!1835312 () Bool)

(assert (=> b!1835312 (= e!1172910 None!4226)))

(declare-fun b!1835309 () Bool)

(declare-fun res!825240 () Bool)

(assert (=> b!1835309 (=> (not res!825240) (not e!1172912))))

(assert (=> b!1835309 (= res!825240 (= (++!5471 (list!8197 (charsOf!2290 (_1!11215 (get!6228 lt!712366)))) (_2!11215 (get!6228 lt!712366))) input!3681))))

(declare-fun d!561154 () Bool)

(assert (=> d!561154 e!1172909))

(declare-fun res!825235 () Bool)

(assert (=> d!561154 (=> res!825235 e!1172909)))

(assert (=> d!561154 (= res!825235 (isEmpty!12742 lt!712366))))

(assert (=> d!561154 (= lt!712366 e!1172910)))

(declare-fun c!299399 () Bool)

(assert (=> d!561154 (= c!299399 (isEmpty!12741 (_1!11217 lt!712369)))))

(assert (=> d!561154 (= lt!712369 (findLongestMatch!450 (regex!3647 (h!25576 rules!4610)) input!3681))))

(assert (=> d!561154 (ruleValid!1137 thiss!28318 (h!25576 rules!4610))))

(assert (=> d!561154 (= (maxPrefixOneRule!1185 thiss!28318 (h!25576 rules!4610) input!3681) lt!712366)))

(assert (= (and d!561154 c!299399) b!1835312))

(assert (= (and d!561154 (not c!299399)) b!1835310))

(assert (= (and b!1835310 (not res!825234)) b!1835306))

(assert (= (and d!561154 (not res!825235)) b!1835307))

(assert (= (and b!1835307 res!825236) b!1835309))

(assert (= (and b!1835309 res!825240) b!1835304))

(assert (= (and b!1835304 res!825238) b!1835311))

(assert (= (and b!1835311 res!825239) b!1835308))

(assert (= (and b!1835308 res!825237) b!1835305))

(declare-fun m!2263221 () Bool)

(assert (=> b!1835311 m!2263221))

(assert (=> b!1835307 m!2263221))

(declare-fun m!2263223 () Bool)

(assert (=> b!1835307 m!2263223))

(assert (=> b!1835307 m!2263223))

(declare-fun m!2263225 () Bool)

(assert (=> b!1835307 m!2263225))

(assert (=> b!1835307 m!2263225))

(declare-fun m!2263227 () Bool)

(assert (=> b!1835307 m!2263227))

(assert (=> b!1835308 m!2263221))

(declare-fun m!2263229 () Bool)

(assert (=> b!1835308 m!2263229))

(assert (=> b!1835308 m!2263229))

(declare-fun m!2263231 () Bool)

(assert (=> b!1835308 m!2263231))

(assert (=> b!1835309 m!2263221))

(assert (=> b!1835309 m!2263223))

(assert (=> b!1835309 m!2263223))

(assert (=> b!1835309 m!2263225))

(assert (=> b!1835309 m!2263225))

(declare-fun m!2263233 () Bool)

(assert (=> b!1835309 m!2263233))

(declare-fun m!2263235 () Bool)

(assert (=> d!561154 m!2263235))

(declare-fun m!2263237 () Bool)

(assert (=> d!561154 m!2263237))

(declare-fun m!2263239 () Bool)

(assert (=> d!561154 m!2263239))

(assert (=> d!561154 m!2263041))

(assert (=> b!1835305 m!2263221))

(declare-fun m!2263241 () Bool)

(assert (=> b!1835305 m!2263241))

(assert (=> b!1835306 m!2261809))

(assert (=> b!1835306 m!2261811))

(assert (=> b!1835306 m!2261809))

(assert (=> b!1835306 m!2261811))

(declare-fun m!2263243 () Bool)

(assert (=> b!1835306 m!2263243))

(declare-fun m!2263245 () Bool)

(assert (=> b!1835306 m!2263245))

(assert (=> b!1835304 m!2263221))

(declare-fun m!2263247 () Bool)

(assert (=> b!1835304 m!2263247))

(assert (=> b!1835304 m!2261811))

(declare-fun m!2263249 () Bool)

(assert (=> b!1835310 m!2263249))

(declare-fun m!2263251 () Bool)

(assert (=> b!1835310 m!2263251))

(assert (=> b!1835310 m!2261809))

(declare-fun m!2263253 () Bool)

(assert (=> b!1835310 m!2263253))

(declare-fun m!2263255 () Bool)

(assert (=> b!1835310 m!2263255))

(assert (=> b!1835310 m!2263249))

(assert (=> b!1835310 m!2263249))

(declare-fun m!2263257 () Bool)

(assert (=> b!1835310 m!2263257))

(assert (=> b!1835310 m!2261809))

(assert (=> b!1835310 m!2261811))

(assert (=> b!1835310 m!2263243))

(assert (=> b!1835310 m!2263249))

(declare-fun m!2263259 () Bool)

(assert (=> b!1835310 m!2263259))

(assert (=> b!1835310 m!2261811))

(assert (=> bm!114813 d!561154))

(assert (=> b!1834642 d!560840))

(declare-fun d!561156 () Bool)

(declare-fun charsToInt!0 (List!20243) (_ BitVec 32))

(assert (=> d!561156 (= (inv!16 (value!113606 token!567)) (= (charsToInt!0 (text!26606 (value!113606 token!567))) (value!113597 (value!113606 token!567))))))

(declare-fun bs!408230 () Bool)

(assert (= bs!408230 d!561156))

(declare-fun m!2263261 () Bool)

(assert (=> bs!408230 m!2263261))

(assert (=> b!1834141 d!561156))

(assert (=> d!560748 d!561130))

(declare-fun d!561158 () Bool)

(assert (=> d!561158 (= (head!4292 (map!4189 rules!4610 lambda!72098)) (h!25577 (map!4189 rules!4610 lambda!72098)))))

(assert (=> b!1834574 d!561158))

(declare-fun d!561160 () Bool)

(assert (=> d!561160 (= (inv!26247 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))) (isBalanced!2070 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))))))

(declare-fun bs!408231 () Bool)

(assert (= bs!408231 d!561160))

(declare-fun m!2263263 () Bool)

(assert (=> bs!408231 m!2263263))

(assert (=> tb!112193 d!561160))

(declare-fun d!561162 () Bool)

(assert (=> d!561162 (= (isEmpty!12743 (map!4189 rules!4610 lambda!72098)) ((_ is Nil!20176) (map!4189 rules!4610 lambda!72098)))))

(assert (=> b!1834576 d!561162))

(declare-fun d!561164 () Bool)

(declare-fun c!299412 () Bool)

(assert (=> d!561164 (= c!299412 ((_ is Nil!20175) rules!4610))))

(declare-fun e!1172925 () (InoxSet Rule!7094))

(assert (=> d!561164 (= (content!2997 rules!4610) e!1172925)))

(declare-fun b!1835337 () Bool)

(assert (=> b!1835337 (= e!1172925 ((as const (Array Rule!7094 Bool)) false))))

(declare-fun b!1835338 () Bool)

(assert (=> b!1835338 (= e!1172925 ((_ map or) (store ((as const (Array Rule!7094 Bool)) false) (h!25576 rules!4610) true) (content!2997 (t!171046 rules!4610))))))

(assert (= (and d!561164 c!299412) b!1835337))

(assert (= (and d!561164 (not c!299412)) b!1835338))

(declare-fun m!2263265 () Bool)

(assert (=> b!1835338 m!2263265))

(assert (=> b!1835338 m!2262765))

(assert (=> d!560648 d!561164))

(declare-fun d!561166 () Bool)

(assert (=> d!561166 (= ($colon$colon!466 (map!4189 (t!171046 rules!4610) lambda!72098) (dynLambda!10041 lambda!72098 (h!25576 rules!4610))) (Cons!20176 (dynLambda!10041 lambda!72098 (h!25576 rules!4610)) (map!4189 (t!171046 rules!4610) lambda!72098)))))

(assert (=> b!1834582 d!561166))

(declare-fun d!561168 () Bool)

(declare-fun lt!712427 () List!20246)

(assert (=> d!561168 (= (size!16007 lt!712427) (size!16008 (t!171046 rules!4610)))))

(declare-fun e!1172926 () List!20246)

(assert (=> d!561168 (= lt!712427 e!1172926)))

(declare-fun c!299413 () Bool)

(assert (=> d!561168 (= c!299413 ((_ is Nil!20175) (t!171046 rules!4610)))))

(assert (=> d!561168 (= (map!4189 (t!171046 rules!4610) lambda!72098) lt!712427)))

(declare-fun b!1835339 () Bool)

(assert (=> b!1835339 (= e!1172926 Nil!20176)))

(declare-fun b!1835340 () Bool)

(assert (=> b!1835340 (= e!1172926 ($colon$colon!466 (map!4189 (t!171046 (t!171046 rules!4610)) lambda!72098) (dynLambda!10041 lambda!72098 (h!25576 (t!171046 rules!4610)))))))

(assert (= (and d!561168 c!299413) b!1835339))

(assert (= (and d!561168 (not c!299413)) b!1835340))

(declare-fun b_lambda!60809 () Bool)

(assert (=> (not b_lambda!60809) (not b!1835340)))

(declare-fun m!2263267 () Bool)

(assert (=> d!561168 m!2263267))

(assert (=> d!561168 m!2262763))

(declare-fun m!2263269 () Bool)

(assert (=> b!1835340 m!2263269))

(declare-fun m!2263271 () Bool)

(assert (=> b!1835340 m!2263271))

(assert (=> b!1835340 m!2263269))

(assert (=> b!1835340 m!2263271))

(declare-fun m!2263273 () Bool)

(assert (=> b!1835340 m!2263273))

(assert (=> b!1834582 d!561168))

(declare-fun d!561170 () Bool)

(assert (=> d!561170 (= ($colon$colon!466 (map!4189 (t!171046 rs!808) lambda!72098) (dynLambda!10041 lambda!72098 (h!25576 rs!808))) (Cons!20176 (dynLambda!10041 lambda!72098 (h!25576 rs!808)) (map!4189 (t!171046 rs!808) lambda!72098)))))

(assert (=> b!1834596 d!561170))

(declare-fun d!561172 () Bool)

(declare-fun lt!712428 () List!20246)

(assert (=> d!561172 (= (size!16007 lt!712428) (size!16008 (t!171046 rs!808)))))

(declare-fun e!1172927 () List!20246)

(assert (=> d!561172 (= lt!712428 e!1172927)))

(declare-fun c!299414 () Bool)

(assert (=> d!561172 (= c!299414 ((_ is Nil!20175) (t!171046 rs!808)))))

(assert (=> d!561172 (= (map!4189 (t!171046 rs!808) lambda!72098) lt!712428)))

(declare-fun b!1835341 () Bool)

(assert (=> b!1835341 (= e!1172927 Nil!20176)))

(declare-fun b!1835342 () Bool)

(assert (=> b!1835342 (= e!1172927 ($colon$colon!466 (map!4189 (t!171046 (t!171046 rs!808)) lambda!72098) (dynLambda!10041 lambda!72098 (h!25576 (t!171046 rs!808)))))))

(assert (= (and d!561172 c!299414) b!1835341))

(assert (= (and d!561172 (not c!299414)) b!1835342))

(declare-fun b_lambda!60811 () Bool)

(assert (=> (not b_lambda!60811) (not b!1835342)))

(declare-fun m!2263275 () Bool)

(assert (=> d!561172 m!2263275))

(assert (=> d!561172 m!2262551))

(declare-fun m!2263277 () Bool)

(assert (=> b!1835342 m!2263277))

(declare-fun m!2263279 () Bool)

(assert (=> b!1835342 m!2263279))

(assert (=> b!1835342 m!2263277))

(assert (=> b!1835342 m!2263279))

(declare-fun m!2263281 () Bool)

(assert (=> b!1835342 m!2263281))

(assert (=> b!1834596 d!561172))

(assert (=> b!1834632 d!561152))

(assert (=> b!1834632 d!561048))

(declare-fun d!561174 () Bool)

(assert (=> d!561174 (= (isEmpty!12741 (tail!2750 lt!711970)) ((_ is Nil!20174) (tail!2750 lt!711970)))))

(assert (=> b!1834218 d!561174))

(declare-fun d!561176 () Bool)

(assert (=> d!561176 (= (tail!2750 lt!711970) (t!171045 lt!711970))))

(assert (=> b!1834218 d!561176))

(assert (=> b!1834636 d!561046))

(assert (=> b!1834220 d!561174))

(assert (=> b!1834220 d!561176))

(declare-fun b!1835343 () Bool)

(declare-fun e!1172929 () Bool)

(assert (=> b!1835343 (= e!1172929 (= (head!4291 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))) (c!299105 (regex!3647 rule!580))))))

(declare-fun b!1835344 () Bool)

(declare-fun e!1172930 () Bool)

(assert (=> b!1835344 (= e!1172930 (nullable!1551 (regex!3647 rule!580)))))

(declare-fun b!1835345 () Bool)

(declare-fun res!825243 () Bool)

(declare-fun e!1172931 () Bool)

(assert (=> b!1835345 (=> res!825243 e!1172931)))

(assert (=> b!1835345 (= res!825243 e!1172929)))

(declare-fun res!825248 () Bool)

(assert (=> b!1835345 (=> (not res!825248) (not e!1172929))))

(declare-fun lt!712429 () Bool)

(assert (=> b!1835345 (= res!825248 lt!712429)))

(declare-fun b!1835346 () Bool)

(declare-fun e!1172928 () Bool)

(declare-fun call!114899 () Bool)

(assert (=> b!1835346 (= e!1172928 (= lt!712429 call!114899))))

(declare-fun b!1835347 () Bool)

(declare-fun e!1172934 () Bool)

(assert (=> b!1835347 (= e!1172931 e!1172934)))

(declare-fun res!825246 () Bool)

(assert (=> b!1835347 (=> (not res!825246) (not e!1172934))))

(assert (=> b!1835347 (= res!825246 (not lt!712429))))

(declare-fun b!1835348 () Bool)

(declare-fun e!1172932 () Bool)

(assert (=> b!1835348 (= e!1172928 e!1172932)))

(declare-fun c!299416 () Bool)

(assert (=> b!1835348 (= c!299416 ((_ is EmptyLang!4975) (regex!3647 rule!580)))))

(declare-fun b!1835349 () Bool)

(declare-fun res!825242 () Bool)

(assert (=> b!1835349 (=> (not res!825242) (not e!1172929))))

(assert (=> b!1835349 (= res!825242 (isEmpty!12741 (tail!2750 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681))))))))

(declare-fun b!1835350 () Bool)

(declare-fun res!825241 () Bool)

(assert (=> b!1835350 (=> res!825241 e!1172931)))

(assert (=> b!1835350 (= res!825241 (not ((_ is ElementMatch!4975) (regex!3647 rule!580))))))

(assert (=> b!1835350 (= e!1172932 e!1172931)))

(declare-fun d!561178 () Bool)

(assert (=> d!561178 e!1172928))

(declare-fun c!299415 () Bool)

(assert (=> d!561178 (= c!299415 ((_ is EmptyExpr!4975) (regex!3647 rule!580)))))

(assert (=> d!561178 (= lt!712429 e!1172930)))

(declare-fun c!299417 () Bool)

(assert (=> d!561178 (= c!299417 (isEmpty!12741 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(assert (=> d!561178 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!561178 (= (matchR!2438 (regex!3647 rule!580) (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))) lt!712429)))

(declare-fun b!1835351 () Bool)

(declare-fun res!825244 () Bool)

(declare-fun e!1172933 () Bool)

(assert (=> b!1835351 (=> res!825244 e!1172933)))

(assert (=> b!1835351 (= res!825244 (not (isEmpty!12741 (tail!2750 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))))

(declare-fun b!1835352 () Bool)

(declare-fun res!825245 () Bool)

(assert (=> b!1835352 (=> (not res!825245) (not e!1172929))))

(assert (=> b!1835352 (= res!825245 (not call!114899))))

(declare-fun bm!114894 () Bool)

(assert (=> bm!114894 (= call!114899 (isEmpty!12741 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(declare-fun b!1835353 () Bool)

(assert (=> b!1835353 (= e!1172932 (not lt!712429))))

(declare-fun b!1835354 () Bool)

(assert (=> b!1835354 (= e!1172930 (matchR!2438 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681))))) (tail!2750 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681))))))))

(declare-fun b!1835355 () Bool)

(assert (=> b!1835355 (= e!1172933 (not (= (head!4291 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))) (c!299105 (regex!3647 rule!580)))))))

(declare-fun b!1835356 () Bool)

(assert (=> b!1835356 (= e!1172934 e!1172933)))

(declare-fun res!825247 () Bool)

(assert (=> b!1835356 (=> res!825247 e!1172933)))

(assert (=> b!1835356 (= res!825247 call!114899)))

(assert (= (and d!561178 c!299417) b!1835344))

(assert (= (and d!561178 (not c!299417)) b!1835354))

(assert (= (and d!561178 c!299415) b!1835346))

(assert (= (and d!561178 (not c!299415)) b!1835348))

(assert (= (and b!1835348 c!299416) b!1835353))

(assert (= (and b!1835348 (not c!299416)) b!1835350))

(assert (= (and b!1835350 (not res!825241)) b!1835345))

(assert (= (and b!1835345 res!825248) b!1835352))

(assert (= (and b!1835352 res!825245) b!1835349))

(assert (= (and b!1835349 res!825242) b!1835343))

(assert (= (and b!1835345 (not res!825243)) b!1835347))

(assert (= (and b!1835347 res!825246) b!1835356))

(assert (= (and b!1835356 (not res!825247)) b!1835351))

(assert (= (and b!1835351 (not res!825244)) b!1835355))

(assert (= (or b!1835346 b!1835352 b!1835356) bm!114894))

(declare-fun m!2263283 () Bool)

(assert (=> b!1835343 m!2263283))

(declare-fun m!2263285 () Bool)

(assert (=> b!1835351 m!2263285))

(assert (=> b!1835351 m!2263285))

(declare-fun m!2263287 () Bool)

(assert (=> b!1835351 m!2263287))

(assert (=> b!1835349 m!2263285))

(assert (=> b!1835349 m!2263285))

(assert (=> b!1835349 m!2263287))

(assert (=> d!561178 m!2261823))

(assert (=> d!561178 m!2261857))

(assert (=> b!1835354 m!2263283))

(assert (=> b!1835354 m!2263283))

(declare-fun m!2263289 () Bool)

(assert (=> b!1835354 m!2263289))

(assert (=> b!1835354 m!2263285))

(assert (=> b!1835354 m!2263289))

(assert (=> b!1835354 m!2263285))

(declare-fun m!2263291 () Bool)

(assert (=> b!1835354 m!2263291))

(assert (=> b!1835344 m!2261863))

(assert (=> b!1835355 m!2263283))

(assert (=> bm!114894 m!2261823))

(assert (=> b!1834164 d!561178))

(declare-fun b!1835505 () Bool)

(declare-fun e!1173034 () tuple2!19630)

(declare-fun e!1173037 () tuple2!19630)

(assert (=> b!1835505 (= e!1173034 e!1173037)))

(declare-fun c!299449 () Bool)

(assert (=> b!1835505 (= c!299449 (= (size!16002 Nil!20174) (size!16002 input!3681)))))

(declare-fun bm!114922 () Bool)

(declare-fun call!114929 () Bool)

(assert (=> bm!114922 (= call!114929 (nullable!1551 (regex!3647 rule!580)))))

(declare-fun b!1835506 () Bool)

(declare-fun e!1173038 () tuple2!19630)

(declare-fun lt!712554 () tuple2!19630)

(assert (=> b!1835506 (= e!1173038 lt!712554)))

(declare-fun b!1835507 () Bool)

(declare-fun e!1173033 () Unit!34851)

(declare-fun Unit!34871 () Unit!34851)

(assert (=> b!1835507 (= e!1173033 Unit!34871)))

(declare-fun bm!114923 () Bool)

(declare-fun call!114934 () C!10124)

(assert (=> bm!114923 (= call!114934 (head!4291 input!3681))))

(declare-fun b!1835508 () Bool)

(assert (=> b!1835508 (= e!1173038 (tuple2!19631 Nil!20174 input!3681))))

(declare-fun b!1835509 () Bool)

(assert (=> b!1835509 (= e!1173034 (tuple2!19631 Nil!20174 input!3681))))

(declare-fun b!1835510 () Bool)

(declare-fun Unit!34873 () Unit!34851)

(assert (=> b!1835510 (= e!1173033 Unit!34873)))

(declare-fun lt!712565 () Unit!34851)

(declare-fun call!114933 () Unit!34851)

(assert (=> b!1835510 (= lt!712565 call!114933)))

(declare-fun call!114927 () Bool)

(assert (=> b!1835510 call!114927))

(declare-fun lt!712566 () Unit!34851)

(assert (=> b!1835510 (= lt!712566 lt!712565)))

(declare-fun lt!712542 () Unit!34851)

(declare-fun call!114932 () Unit!34851)

(assert (=> b!1835510 (= lt!712542 call!114932)))

(assert (=> b!1835510 (= input!3681 Nil!20174)))

(declare-fun lt!712552 () Unit!34851)

(assert (=> b!1835510 (= lt!712552 lt!712542)))

(assert (=> b!1835510 false))

(declare-fun call!114931 () List!20244)

(declare-fun call!114930 () tuple2!19630)

(declare-fun bm!114924 () Bool)

(declare-fun call!114928 () Regex!4975)

(declare-fun lt!712561 () List!20244)

(assert (=> bm!114924 (= call!114930 (findLongestMatchInner!523 call!114928 lt!712561 (+ (size!16002 Nil!20174) 1) call!114931 input!3681 (size!16002 input!3681)))))

(declare-fun bm!114925 () Bool)

(assert (=> bm!114925 (= call!114931 (tail!2750 input!3681))))

(declare-fun b!1835511 () Bool)

(declare-fun e!1173035 () tuple2!19630)

(assert (=> b!1835511 (= e!1173035 (tuple2!19631 Nil!20174 input!3681))))

(declare-fun bm!114926 () Bool)

(assert (=> bm!114926 (= call!114928 (derivativeStep!1315 (regex!3647 rule!580) call!114934))))

(declare-fun b!1835512 () Bool)

(assert (=> b!1835512 (= e!1173035 (tuple2!19631 Nil!20174 Nil!20174))))

(declare-fun b!1835513 () Bool)

(declare-fun e!1173031 () tuple2!19630)

(assert (=> b!1835513 (= e!1173031 e!1173038)))

(assert (=> b!1835513 (= lt!712554 call!114930)))

(declare-fun c!299448 () Bool)

(assert (=> b!1835513 (= c!299448 (isEmpty!12741 (_1!11217 lt!712554)))))

(declare-fun b!1835514 () Bool)

(declare-fun e!1173032 () Bool)

(declare-fun e!1173036 () Bool)

(assert (=> b!1835514 (= e!1173032 e!1173036)))

(declare-fun res!825302 () Bool)

(assert (=> b!1835514 (=> res!825302 e!1173036)))

(declare-fun lt!712548 () tuple2!19630)

(assert (=> b!1835514 (= res!825302 (isEmpty!12741 (_1!11217 lt!712548)))))

(declare-fun d!561180 () Bool)

(assert (=> d!561180 e!1173032))

(declare-fun res!825301 () Bool)

(assert (=> d!561180 (=> (not res!825301) (not e!1173032))))

(assert (=> d!561180 (= res!825301 (= (++!5471 (_1!11217 lt!712548) (_2!11217 lt!712548)) input!3681))))

(assert (=> d!561180 (= lt!712548 e!1173034)))

(declare-fun c!299450 () Bool)

(declare-fun lostCause!623 (Regex!4975) Bool)

(assert (=> d!561180 (= c!299450 (lostCause!623 (regex!3647 rule!580)))))

(declare-fun lt!712559 () Unit!34851)

(declare-fun Unit!34874 () Unit!34851)

(assert (=> d!561180 (= lt!712559 Unit!34874)))

(declare-fun getSuffix!972 (List!20244 List!20244) List!20244)

(assert (=> d!561180 (= (getSuffix!972 input!3681 Nil!20174) input!3681)))

(declare-fun lt!712557 () Unit!34851)

(declare-fun lt!712564 () Unit!34851)

(assert (=> d!561180 (= lt!712557 lt!712564)))

(declare-fun lt!712563 () List!20244)

(assert (=> d!561180 (= input!3681 lt!712563)))

(declare-fun lemmaSamePrefixThenSameSuffix!916 (List!20244 List!20244 List!20244 List!20244 List!20244) Unit!34851)

(assert (=> d!561180 (= lt!712564 (lemmaSamePrefixThenSameSuffix!916 Nil!20174 input!3681 Nil!20174 lt!712563 input!3681))))

(assert (=> d!561180 (= lt!712563 (getSuffix!972 input!3681 Nil!20174))))

(declare-fun lt!712555 () Unit!34851)

(declare-fun lt!712540 () Unit!34851)

(assert (=> d!561180 (= lt!712555 lt!712540)))

(assert (=> d!561180 (isPrefix!1842 Nil!20174 (++!5471 Nil!20174 input!3681))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1314 (List!20244 List!20244) Unit!34851)

(assert (=> d!561180 (= lt!712540 (lemmaConcatTwoListThenFirstIsPrefix!1314 Nil!20174 input!3681))))

(assert (=> d!561180 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!561180 (= (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)) lt!712548)))

(declare-fun b!1835504 () Bool)

(declare-fun c!299452 () Bool)

(assert (=> b!1835504 (= c!299452 call!114929)))

(declare-fun lt!712553 () Unit!34851)

(declare-fun lt!712546 () Unit!34851)

(assert (=> b!1835504 (= lt!712553 lt!712546)))

(assert (=> b!1835504 (= input!3681 Nil!20174)))

(assert (=> b!1835504 (= lt!712546 call!114932)))

(declare-fun lt!712543 () Unit!34851)

(declare-fun lt!712547 () Unit!34851)

(assert (=> b!1835504 (= lt!712543 lt!712547)))

(assert (=> b!1835504 call!114927))

(assert (=> b!1835504 (= lt!712547 call!114933)))

(assert (=> b!1835504 (= e!1173037 e!1173035)))

(declare-fun b!1835515 () Bool)

(assert (=> b!1835515 (= e!1173031 call!114930)))

(declare-fun bm!114927 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!301 (List!20244 List!20244 List!20244) Unit!34851)

(assert (=> bm!114927 (= call!114932 (lemmaIsPrefixSameLengthThenSameList!301 input!3681 Nil!20174 input!3681))))

(declare-fun b!1835516 () Bool)

(declare-fun c!299453 () Bool)

(assert (=> b!1835516 (= c!299453 call!114929)))

(declare-fun lt!712541 () Unit!34851)

(declare-fun lt!712539 () Unit!34851)

(assert (=> b!1835516 (= lt!712541 lt!712539)))

(declare-fun lt!712558 () C!10124)

(declare-fun lt!712545 () List!20244)

(assert (=> b!1835516 (= (++!5471 (++!5471 Nil!20174 (Cons!20174 lt!712558 Nil!20174)) lt!712545) input!3681)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!469 (List!20244 C!10124 List!20244 List!20244) Unit!34851)

(assert (=> b!1835516 (= lt!712539 (lemmaMoveElementToOtherListKeepsConcatEq!469 Nil!20174 lt!712558 lt!712545 input!3681))))

(assert (=> b!1835516 (= lt!712545 (tail!2750 input!3681))))

(assert (=> b!1835516 (= lt!712558 (head!4291 input!3681))))

(declare-fun lt!712551 () Unit!34851)

(declare-fun lt!712560 () Unit!34851)

(assert (=> b!1835516 (= lt!712551 lt!712560)))

(assert (=> b!1835516 (isPrefix!1842 (++!5471 Nil!20174 (Cons!20174 (head!4291 (getSuffix!972 input!3681 Nil!20174)) Nil!20174)) input!3681)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!341 (List!20244 List!20244) Unit!34851)

(assert (=> b!1835516 (= lt!712560 (lemmaAddHeadSuffixToPrefixStillPrefix!341 Nil!20174 input!3681))))

(declare-fun lt!712562 () Unit!34851)

(declare-fun lt!712549 () Unit!34851)

(assert (=> b!1835516 (= lt!712562 lt!712549)))

(assert (=> b!1835516 (= lt!712549 (lemmaAddHeadSuffixToPrefixStillPrefix!341 Nil!20174 input!3681))))

(assert (=> b!1835516 (= lt!712561 (++!5471 Nil!20174 (Cons!20174 (head!4291 input!3681) Nil!20174)))))

(declare-fun lt!712544 () Unit!34851)

(assert (=> b!1835516 (= lt!712544 e!1173033)))

(declare-fun c!299451 () Bool)

(assert (=> b!1835516 (= c!299451 (= (size!16002 Nil!20174) (size!16002 input!3681)))))

(declare-fun lt!712550 () Unit!34851)

(declare-fun lt!712556 () Unit!34851)

(assert (=> b!1835516 (= lt!712550 lt!712556)))

(assert (=> b!1835516 (<= (size!16002 Nil!20174) (size!16002 input!3681))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!144 (List!20244 List!20244) Unit!34851)

(assert (=> b!1835516 (= lt!712556 (lemmaIsPrefixThenSmallerEqSize!144 Nil!20174 input!3681))))

(assert (=> b!1835516 (= e!1173037 e!1173031)))

(declare-fun bm!114928 () Bool)

(assert (=> bm!114928 (= call!114933 (lemmaIsPrefixRefl!1219 input!3681 input!3681))))

(declare-fun b!1835517 () Bool)

(assert (=> b!1835517 (= e!1173036 (>= (size!16002 (_1!11217 lt!712548)) (size!16002 Nil!20174)))))

(declare-fun bm!114929 () Bool)

(assert (=> bm!114929 (= call!114927 (isPrefix!1842 input!3681 input!3681))))

(assert (= (and d!561180 c!299450) b!1835509))

(assert (= (and d!561180 (not c!299450)) b!1835505))

(assert (= (and b!1835505 c!299449) b!1835504))

(assert (= (and b!1835505 (not c!299449)) b!1835516))

(assert (= (and b!1835504 c!299452) b!1835512))

(assert (= (and b!1835504 (not c!299452)) b!1835511))

(assert (= (and b!1835516 c!299451) b!1835510))

(assert (= (and b!1835516 (not c!299451)) b!1835507))

(assert (= (and b!1835516 c!299453) b!1835513))

(assert (= (and b!1835516 (not c!299453)) b!1835515))

(assert (= (and b!1835513 c!299448) b!1835508))

(assert (= (and b!1835513 (not c!299448)) b!1835506))

(assert (= (or b!1835513 b!1835515) bm!114925))

(assert (= (or b!1835513 b!1835515) bm!114923))

(assert (= (or b!1835513 b!1835515) bm!114926))

(assert (= (or b!1835513 b!1835515) bm!114924))

(assert (= (or b!1835504 b!1835510) bm!114928))

(assert (= (or b!1835504 b!1835510) bm!114927))

(assert (= (or b!1835504 b!1835516) bm!114922))

(assert (= (or b!1835504 b!1835510) bm!114929))

(assert (= (and d!561180 res!825301) b!1835514))

(assert (= (and b!1835514 (not res!825302)) b!1835517))

(declare-fun m!2263447 () Bool)

(assert (=> b!1835513 m!2263447))

(declare-fun m!2263449 () Bool)

(assert (=> d!561180 m!2263449))

(declare-fun m!2263451 () Bool)

(assert (=> d!561180 m!2263451))

(assert (=> d!561180 m!2261857))

(declare-fun m!2263453 () Bool)

(assert (=> d!561180 m!2263453))

(declare-fun m!2263455 () Bool)

(assert (=> d!561180 m!2263455))

(assert (=> d!561180 m!2263453))

(declare-fun m!2263457 () Bool)

(assert (=> d!561180 m!2263457))

(declare-fun m!2263459 () Bool)

(assert (=> d!561180 m!2263459))

(declare-fun m!2263461 () Bool)

(assert (=> d!561180 m!2263461))

(declare-fun m!2263463 () Bool)

(assert (=> b!1835514 m!2263463))

(assert (=> bm!114928 m!2261919))

(assert (=> bm!114923 m!2263023))

(declare-fun m!2263465 () Bool)

(assert (=> bm!114926 m!2263465))

(assert (=> bm!114922 m!2261863))

(assert (=> bm!114929 m!2261917))

(declare-fun m!2263467 () Bool)

(assert (=> b!1835516 m!2263467))

(assert (=> b!1835516 m!2261809))

(assert (=> b!1835516 m!2263449))

(assert (=> b!1835516 m!2261811))

(assert (=> b!1835516 m!2263023))

(assert (=> b!1835516 m!2263019))

(declare-fun m!2263469 () Bool)

(assert (=> b!1835516 m!2263469))

(assert (=> b!1835516 m!2263469))

(declare-fun m!2263471 () Bool)

(assert (=> b!1835516 m!2263471))

(declare-fun m!2263473 () Bool)

(assert (=> b!1835516 m!2263473))

(declare-fun m!2263475 () Bool)

(assert (=> b!1835516 m!2263475))

(declare-fun m!2263477 () Bool)

(assert (=> b!1835516 m!2263477))

(declare-fun m!2263479 () Bool)

(assert (=> b!1835516 m!2263479))

(assert (=> b!1835516 m!2263449))

(declare-fun m!2263481 () Bool)

(assert (=> b!1835516 m!2263481))

(assert (=> b!1835516 m!2263475))

(declare-fun m!2263483 () Bool)

(assert (=> b!1835516 m!2263483))

(declare-fun m!2263485 () Bool)

(assert (=> b!1835517 m!2263485))

(assert (=> b!1835517 m!2261809))

(assert (=> bm!114925 m!2263019))

(assert (=> bm!114924 m!2261811))

(declare-fun m!2263487 () Bool)

(assert (=> bm!114924 m!2263487))

(declare-fun m!2263489 () Bool)

(assert (=> bm!114927 m!2263489))

(assert (=> b!1834164 d!561180))

(declare-fun d!561244 () Bool)

(declare-fun lt!712567 () Int)

(assert (=> d!561244 (>= lt!712567 0)))

(declare-fun e!1173051 () Int)

(assert (=> d!561244 (= lt!712567 e!1173051)))

(declare-fun c!299454 () Bool)

(assert (=> d!561244 (= c!299454 ((_ is Nil!20174) Nil!20174))))

(assert (=> d!561244 (= (size!16002 Nil!20174) lt!712567)))

(declare-fun b!1835553 () Bool)

(assert (=> b!1835553 (= e!1173051 0)))

(declare-fun b!1835554 () Bool)

(assert (=> b!1835554 (= e!1173051 (+ 1 (size!16002 (t!171045 Nil!20174))))))

(assert (= (and d!561244 c!299454) b!1835553))

(assert (= (and d!561244 (not c!299454)) b!1835554))

(declare-fun m!2263491 () Bool)

(assert (=> b!1835554 m!2263491))

(assert (=> b!1834164 d!561244))

(assert (=> b!1834164 d!560888))

(declare-fun d!561246 () Bool)

(declare-fun lt!712568 () Int)

(assert (=> d!561246 (>= lt!712568 0)))

(declare-fun e!1173052 () Int)

(assert (=> d!561246 (= lt!712568 e!1173052)))

(declare-fun c!299455 () Bool)

(assert (=> d!561246 (= c!299455 ((_ is Nil!20174) (_2!11215 (get!6228 lt!711984))))))

(assert (=> d!561246 (= (size!16002 (_2!11215 (get!6228 lt!711984))) lt!712568)))

(declare-fun b!1835555 () Bool)

(assert (=> b!1835555 (= e!1173052 0)))

(declare-fun b!1835556 () Bool)

(assert (=> b!1835556 (= e!1173052 (+ 1 (size!16002 (t!171045 (_2!11215 (get!6228 lt!711984))))))))

(assert (= (and d!561246 c!299455) b!1835555))

(assert (= (and d!561246 (not c!299455)) b!1835556))

(declare-fun m!2263497 () Bool)

(assert (=> b!1835556 m!2263497))

(assert (=> b!1834162 d!561246))

(assert (=> b!1834162 d!560996))

(assert (=> b!1834162 d!560888))

(declare-fun d!561248 () Bool)

(declare-fun lt!712569 () Int)

(assert (=> d!561248 (>= lt!712569 0)))

(declare-fun e!1173054 () Int)

(assert (=> d!561248 (= lt!712569 e!1173054)))

(declare-fun c!299456 () Bool)

(assert (=> d!561248 (= c!299456 ((_ is Nil!20174) (t!171045 lt!711970)))))

(assert (=> d!561248 (= (size!16002 (t!171045 lt!711970)) lt!712569)))

(declare-fun b!1835561 () Bool)

(assert (=> b!1835561 (= e!1173054 0)))

(declare-fun b!1835562 () Bool)

(assert (=> b!1835562 (= e!1173054 (+ 1 (size!16002 (t!171045 (t!171045 lt!711970)))))))

(assert (= (and d!561248 c!299456) b!1835561))

(assert (= (and d!561248 (not c!299456)) b!1835562))

(declare-fun m!2263499 () Bool)

(assert (=> b!1835562 m!2263499))

(assert (=> b!1834178 d!561248))

(assert (=> b!1834166 d!560996))

(declare-fun d!561250 () Bool)

(assert (=> d!561250 (= (apply!5435 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984))))) (dynLambda!10039 (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984))))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984))))))))

(declare-fun b_lambda!60827 () Bool)

(assert (=> (not b_lambda!60827) (not d!561250)))

(declare-fun t!171279 () Bool)

(declare-fun tb!112409 () Bool)

(assert (=> (and b!1834660 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171279) tb!112409))

(declare-fun result!135170 () Bool)

(assert (=> tb!112409 (= result!135170 (inv!21 (dynLambda!10039 (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984))))) (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984)))))))))

(declare-fun m!2263501 () Bool)

(assert (=> tb!112409 m!2263501))

(assert (=> d!561250 t!171279))

(declare-fun b_and!143238 () Bool)

(assert (= b_and!143155 (and (=> t!171279 result!135170) b_and!143238)))

(declare-fun tb!112413 () Bool)

(declare-fun t!171283 () Bool)

(assert (=> (and b!1834113 (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171283) tb!112413))

(declare-fun result!135174 () Bool)

(assert (= result!135174 result!135170))

(assert (=> d!561250 t!171283))

(declare-fun b_and!143241 () Bool)

(assert (= b_and!143159 (and (=> t!171283 result!135174) b_and!143241)))

(declare-fun t!171287 () Bool)

(declare-fun tb!112417 () Bool)

(assert (=> (and b!1834102 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171287) tb!112417))

(declare-fun result!135178 () Bool)

(assert (= result!135178 result!135170))

(assert (=> d!561250 t!171287))

(declare-fun b_and!143243 () Bool)

(assert (= b_and!143157 (and (=> t!171287 result!135178) b_and!143243)))

(declare-fun tb!112421 () Bool)

(declare-fun t!171291 () Bool)

(assert (=> (and b!1834103 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171291) tb!112421))

(declare-fun result!135182 () Bool)

(assert (= result!135182 result!135170))

(assert (=> d!561250 t!171291))

(declare-fun b_and!143245 () Bool)

(assert (= b_and!143153 (and (=> t!171291 result!135182) b_and!143245)))

(declare-fun tb!112425 () Bool)

(declare-fun t!171295 () Bool)

(assert (=> (and b!1834110 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171295) tb!112425))

(declare-fun result!135186 () Bool)

(assert (= result!135186 result!135170))

(assert (=> d!561250 t!171295))

(declare-fun b_and!143247 () Bool)

(assert (= b_and!143149 (and (=> t!171295 result!135186) b_and!143247)))

(declare-fun tb!112431 () Bool)

(declare-fun t!171301 () Bool)

(assert (=> (and b!1834695 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171301) tb!112431))

(declare-fun result!135192 () Bool)

(assert (= result!135192 result!135170))

(assert (=> d!561250 t!171301))

(declare-fun b_and!143249 () Bool)

(assert (= b_and!143151 (and (=> t!171301 result!135192) b_and!143249)))

(assert (=> d!561250 m!2261795))

(declare-fun m!2263503 () Bool)

(assert (=> d!561250 m!2263503))

(assert (=> b!1834166 d!561250))

(declare-fun d!561252 () Bool)

(assert (=> d!561252 (= (seqFromList!2604 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984)))) (fromListB!1194 (originalCharacters!4455 (_1!11215 (get!6228 lt!711984)))))))

(declare-fun bs!408254 () Bool)

(assert (= bs!408254 d!561252))

(declare-fun m!2263505 () Bool)

(assert (=> bs!408254 m!2263505))

(assert (=> b!1834166 d!561252))

(declare-fun d!561254 () Bool)

(assert (=> d!561254 (= (list!8197 lt!711997) (list!8199 (c!299104 lt!711997)))))

(declare-fun bs!408255 () Bool)

(assert (= bs!408255 d!561254))

(declare-fun m!2263507 () Bool)

(assert (=> bs!408255 m!2263507))

(assert (=> d!560628 d!561254))

(declare-fun d!561256 () Bool)

(assert (=> d!561256 (= (isEmpty!12741 lt!711970) ((_ is Nil!20174) lt!711970))))

(assert (=> d!560630 d!561256))

(assert (=> d!560630 d!561130))

(declare-fun bs!408256 () Bool)

(declare-fun d!561258 () Bool)

(assert (= bs!408256 (and d!561258 d!561054)))

(declare-fun lambda!72194 () Int)

(assert (=> bs!408256 (= (and (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 (h!25576 rules!4610)))) (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 (h!25576 rules!4610))))) (= lambda!72194 lambda!72175))))

(declare-fun bs!408257 () Bool)

(assert (= bs!408257 (and d!561258 d!561148)))

(assert (=> bs!408257 (= (and (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 rule!580))) (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580)))) (= lambda!72194 lambda!72188))))

(assert (=> d!561258 true))

(assert (=> d!561258 (< (dynLambda!10051 order!13049 (toChars!5053 (transformation!3647 (h!25576 rs!808)))) (dynLambda!10052 order!13051 lambda!72194))))

(assert (=> d!561258 true))

(assert (=> d!561258 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 (h!25576 rs!808)))) (dynLambda!10052 order!13051 lambda!72194))))

(assert (=> d!561258 (= (semiInverseModEq!1468 (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 (h!25576 rs!808)))) (Forall!936 lambda!72194))))

(declare-fun bs!408258 () Bool)

(assert (= bs!408258 d!561258))

(declare-fun m!2263513 () Bool)

(assert (=> bs!408258 m!2263513))

(assert (=> d!560644 d!561258))

(assert (=> bm!114810 d!561256))

(declare-fun bs!408259 () Bool)

(declare-fun d!561260 () Bool)

(assert (= bs!408259 (and d!561260 d!561054)))

(declare-fun lambda!72195 () Int)

(assert (=> bs!408259 (= (and (= (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toChars!5053 (transformation!3647 (h!25576 rules!4610)))) (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (h!25576 rules!4610))))) (= lambda!72195 lambda!72175))))

(declare-fun bs!408261 () Bool)

(assert (= bs!408261 (and d!561260 d!561148)))

(assert (=> bs!408261 (= (and (= (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toChars!5053 (transformation!3647 rule!580))) (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580)))) (= lambda!72195 lambda!72188))))

(declare-fun bs!408262 () Bool)

(assert (= bs!408262 (and d!561260 d!561258)))

(assert (=> bs!408262 (= (and (= (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toChars!5053 (transformation!3647 (h!25576 rs!808)))) (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (h!25576 rs!808))))) (= lambda!72195 lambda!72194))))

(assert (=> d!561260 true))

(assert (=> d!561260 (< (dynLambda!10051 order!13049 (toChars!5053 (transformation!3647 (rule!5831 token!567)))) (dynLambda!10052 order!13051 lambda!72195))))

(assert (=> d!561260 true))

(assert (=> d!561260 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 (rule!5831 token!567)))) (dynLambda!10052 order!13051 lambda!72195))))

(assert (=> d!561260 (= (semiInverseModEq!1468 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 (rule!5831 token!567)))) (Forall!936 lambda!72195))))

(declare-fun bs!408263 () Bool)

(assert (= bs!408263 d!561260))

(declare-fun m!2263517 () Bool)

(assert (=> bs!408263 m!2263517))

(assert (=> d!560742 d!561260))

(declare-fun d!561264 () Bool)

(declare-fun res!825307 () Bool)

(declare-fun e!1173073 () Bool)

(assert (=> d!561264 (=> res!825307 e!1173073)))

(assert (=> d!561264 (= res!825307 ((_ is Nil!20175) rules!4610))))

(assert (=> d!561264 (= (noDuplicateTag!1392 thiss!28318 rules!4610 Nil!20178) e!1173073)))

(declare-fun b!1835603 () Bool)

(declare-fun e!1173074 () Bool)

(assert (=> b!1835603 (= e!1173073 e!1173074)))

(declare-fun res!825308 () Bool)

(assert (=> b!1835603 (=> (not res!825308) (not e!1173074))))

(declare-fun contains!3726 (List!20248 String!23017) Bool)

(assert (=> b!1835603 (= res!825308 (not (contains!3726 Nil!20178 (tag!4061 (h!25576 rules!4610)))))))

(declare-fun b!1835604 () Bool)

(assert (=> b!1835604 (= e!1173074 (noDuplicateTag!1392 thiss!28318 (t!171046 rules!4610) (Cons!20178 (tag!4061 (h!25576 rules!4610)) Nil!20178)))))

(assert (= (and d!561264 (not res!825307)) b!1835603))

(assert (= (and b!1835603 res!825308) b!1835604))

(declare-fun m!2263521 () Bool)

(assert (=> b!1835603 m!2263521))

(declare-fun m!2263523 () Bool)

(assert (=> b!1835604 m!2263523))

(assert (=> b!1834623 d!561264))

(declare-fun b!1835605 () Bool)

(declare-fun e!1173079 () Bool)

(declare-fun call!114936 () Bool)

(assert (=> b!1835605 (= e!1173079 call!114936)))

(declare-fun b!1835606 () Bool)

(declare-fun e!1173076 () Bool)

(declare-fun e!1173080 () Bool)

(assert (=> b!1835606 (= e!1173076 e!1173080)))

(declare-fun c!299457 () Bool)

(assert (=> b!1835606 (= c!299457 ((_ is Union!4975) lt!712120))))

(declare-fun b!1835607 () Bool)

(declare-fun e!1173081 () Bool)

(assert (=> b!1835607 (= e!1173081 e!1173076)))

(declare-fun c!299458 () Bool)

(assert (=> b!1835607 (= c!299458 ((_ is Star!4975) lt!712120))))

(declare-fun b!1835608 () Bool)

(declare-fun e!1173075 () Bool)

(assert (=> b!1835608 (= e!1173076 e!1173075)))

(declare-fun res!825313 () Bool)

(assert (=> b!1835608 (= res!825313 (not (nullable!1551 (reg!5304 lt!712120))))))

(assert (=> b!1835608 (=> (not res!825313) (not e!1173075))))

(declare-fun bm!114930 () Bool)

(declare-fun call!114937 () Bool)

(declare-fun call!114935 () Bool)

(assert (=> bm!114930 (= call!114937 call!114935)))

(declare-fun b!1835610 () Bool)

(declare-fun res!825311 () Bool)

(declare-fun e!1173078 () Bool)

(assert (=> b!1835610 (=> res!825311 e!1173078)))

(assert (=> b!1835610 (= res!825311 (not ((_ is Concat!8713) lt!712120)))))

(assert (=> b!1835610 (= e!1173080 e!1173078)))

(declare-fun bm!114931 () Bool)

(assert (=> bm!114931 (= call!114935 (validRegex!2033 (ite c!299458 (reg!5304 lt!712120) (ite c!299457 (regOne!10463 lt!712120) (regTwo!10462 lt!712120)))))))

(declare-fun bm!114932 () Bool)

(assert (=> bm!114932 (= call!114936 (validRegex!2033 (ite c!299457 (regTwo!10463 lt!712120) (regOne!10462 lt!712120))))))

(declare-fun b!1835611 () Bool)

(declare-fun e!1173077 () Bool)

(assert (=> b!1835611 (= e!1173077 call!114937)))

(declare-fun b!1835612 () Bool)

(assert (=> b!1835612 (= e!1173075 call!114935)))

(declare-fun b!1835613 () Bool)

(declare-fun res!825310 () Bool)

(assert (=> b!1835613 (=> (not res!825310) (not e!1173079))))

(assert (=> b!1835613 (= res!825310 call!114937)))

(assert (=> b!1835613 (= e!1173080 e!1173079)))

(declare-fun b!1835609 () Bool)

(assert (=> b!1835609 (= e!1173078 e!1173077)))

(declare-fun res!825312 () Bool)

(assert (=> b!1835609 (=> (not res!825312) (not e!1173077))))

(assert (=> b!1835609 (= res!825312 call!114936)))

(declare-fun d!561280 () Bool)

(declare-fun res!825309 () Bool)

(assert (=> d!561280 (=> res!825309 e!1173081)))

(assert (=> d!561280 (= res!825309 ((_ is ElementMatch!4975) lt!712120))))

(assert (=> d!561280 (= (validRegex!2033 lt!712120) e!1173081)))

(assert (= (and d!561280 (not res!825309)) b!1835607))

(assert (= (and b!1835607 c!299458) b!1835608))

(assert (= (and b!1835607 (not c!299458)) b!1835606))

(assert (= (and b!1835608 res!825313) b!1835612))

(assert (= (and b!1835606 c!299457) b!1835613))

(assert (= (and b!1835606 (not c!299457)) b!1835610))

(assert (= (and b!1835613 res!825310) b!1835605))

(assert (= (and b!1835610 (not res!825311)) b!1835609))

(assert (= (and b!1835609 res!825312) b!1835611))

(assert (= (or b!1835605 b!1835609) bm!114932))

(assert (= (or b!1835613 b!1835611) bm!114930))

(assert (= (or b!1835612 bm!114930) bm!114931))

(declare-fun m!2263525 () Bool)

(assert (=> b!1835608 m!2263525))

(declare-fun m!2263527 () Bool)

(assert (=> bm!114931 m!2263527))

(declare-fun m!2263529 () Bool)

(assert (=> bm!114932 m!2263529))

(assert (=> d!560652 d!561280))

(declare-fun d!561282 () Bool)

(declare-fun res!825314 () Bool)

(declare-fun e!1173082 () Bool)

(assert (=> d!561282 (=> res!825314 e!1173082)))

(assert (=> d!561282 (= res!825314 ((_ is Nil!20176) (map!4189 rules!4610 lambda!72098)))))

(assert (=> d!561282 (= (forall!4348 (map!4189 rules!4610 lambda!72098) lambda!72122) e!1173082)))

(declare-fun b!1835614 () Bool)

(declare-fun e!1173083 () Bool)

(assert (=> b!1835614 (= e!1173082 e!1173083)))

(declare-fun res!825315 () Bool)

(assert (=> b!1835614 (=> (not res!825315) (not e!1173083))))

(assert (=> b!1835614 (= res!825315 (dynLambda!10043 lambda!72122 (h!25577 (map!4189 rules!4610 lambda!72098))))))

(declare-fun b!1835615 () Bool)

(assert (=> b!1835615 (= e!1173083 (forall!4348 (t!171047 (map!4189 rules!4610 lambda!72098)) lambda!72122))))

(assert (= (and d!561282 (not res!825314)) b!1835614))

(assert (= (and b!1835614 res!825315) b!1835615))

(declare-fun b_lambda!60855 () Bool)

(assert (=> (not b_lambda!60855) (not b!1835614)))

(declare-fun m!2263531 () Bool)

(assert (=> b!1835614 m!2263531))

(declare-fun m!2263533 () Bool)

(assert (=> b!1835615 m!2263533))

(assert (=> d!560652 d!561282))

(declare-fun b!1835616 () Bool)

(declare-fun e!1173085 () Bool)

(assert (=> b!1835616 (= e!1173085 (= (head!4291 (tail!2750 lt!711970)) (c!299105 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970)))))))

(declare-fun b!1835617 () Bool)

(declare-fun e!1173086 () Bool)

(assert (=> b!1835617 (= e!1173086 (nullable!1551 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970))))))

(declare-fun b!1835618 () Bool)

(declare-fun res!825318 () Bool)

(declare-fun e!1173087 () Bool)

(assert (=> b!1835618 (=> res!825318 e!1173087)))

(assert (=> b!1835618 (= res!825318 e!1173085)))

(declare-fun res!825323 () Bool)

(assert (=> b!1835618 (=> (not res!825323) (not e!1173085))))

(declare-fun lt!712570 () Bool)

(assert (=> b!1835618 (= res!825323 lt!712570)))

(declare-fun b!1835619 () Bool)

(declare-fun e!1173084 () Bool)

(declare-fun call!114938 () Bool)

(assert (=> b!1835619 (= e!1173084 (= lt!712570 call!114938))))

(declare-fun b!1835620 () Bool)

(declare-fun e!1173090 () Bool)

(assert (=> b!1835620 (= e!1173087 e!1173090)))

(declare-fun res!825321 () Bool)

(assert (=> b!1835620 (=> (not res!825321) (not e!1173090))))

(assert (=> b!1835620 (= res!825321 (not lt!712570))))

(declare-fun b!1835621 () Bool)

(declare-fun e!1173088 () Bool)

(assert (=> b!1835621 (= e!1173084 e!1173088)))

(declare-fun c!299460 () Bool)

(assert (=> b!1835621 (= c!299460 ((_ is EmptyLang!4975) (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970))))))

(declare-fun b!1835622 () Bool)

(declare-fun res!825317 () Bool)

(assert (=> b!1835622 (=> (not res!825317) (not e!1173085))))

(assert (=> b!1835622 (= res!825317 (isEmpty!12741 (tail!2750 (tail!2750 lt!711970))))))

(declare-fun b!1835623 () Bool)

(declare-fun res!825316 () Bool)

(assert (=> b!1835623 (=> res!825316 e!1173087)))

(assert (=> b!1835623 (= res!825316 (not ((_ is ElementMatch!4975) (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970)))))))

(assert (=> b!1835623 (= e!1173088 e!1173087)))

(declare-fun d!561284 () Bool)

(assert (=> d!561284 e!1173084))

(declare-fun c!299459 () Bool)

(assert (=> d!561284 (= c!299459 ((_ is EmptyExpr!4975) (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970))))))

(assert (=> d!561284 (= lt!712570 e!1173086)))

(declare-fun c!299461 () Bool)

(assert (=> d!561284 (= c!299461 (isEmpty!12741 (tail!2750 lt!711970)))))

(assert (=> d!561284 (validRegex!2033 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970)))))

(assert (=> d!561284 (= (matchR!2438 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970)) (tail!2750 lt!711970)) lt!712570)))

(declare-fun b!1835624 () Bool)

(declare-fun res!825319 () Bool)

(declare-fun e!1173089 () Bool)

(assert (=> b!1835624 (=> res!825319 e!1173089)))

(assert (=> b!1835624 (= res!825319 (not (isEmpty!12741 (tail!2750 (tail!2750 lt!711970)))))))

(declare-fun b!1835625 () Bool)

(declare-fun res!825320 () Bool)

(assert (=> b!1835625 (=> (not res!825320) (not e!1173085))))

(assert (=> b!1835625 (= res!825320 (not call!114938))))

(declare-fun bm!114933 () Bool)

(assert (=> bm!114933 (= call!114938 (isEmpty!12741 (tail!2750 lt!711970)))))

(declare-fun b!1835626 () Bool)

(assert (=> b!1835626 (= e!1173088 (not lt!712570))))

(declare-fun b!1835627 () Bool)

(assert (=> b!1835627 (= e!1173086 (matchR!2438 (derivativeStep!1315 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970)) (head!4291 (tail!2750 lt!711970))) (tail!2750 (tail!2750 lt!711970))))))

(declare-fun b!1835628 () Bool)

(assert (=> b!1835628 (= e!1173089 (not (= (head!4291 (tail!2750 lt!711970)) (c!299105 (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970))))))))

(declare-fun b!1835629 () Bool)

(assert (=> b!1835629 (= e!1173090 e!1173089)))

(declare-fun res!825322 () Bool)

(assert (=> b!1835629 (=> res!825322 e!1173089)))

(assert (=> b!1835629 (= res!825322 call!114938)))

(assert (= (and d!561284 c!299461) b!1835617))

(assert (= (and d!561284 (not c!299461)) b!1835627))

(assert (= (and d!561284 c!299459) b!1835619))

(assert (= (and d!561284 (not c!299459)) b!1835621))

(assert (= (and b!1835621 c!299460) b!1835626))

(assert (= (and b!1835621 (not c!299460)) b!1835623))

(assert (= (and b!1835623 (not res!825316)) b!1835618))

(assert (= (and b!1835618 res!825323) b!1835625))

(assert (= (and b!1835625 res!825320) b!1835622))

(assert (= (and b!1835622 res!825317) b!1835616))

(assert (= (and b!1835618 (not res!825318)) b!1835620))

(assert (= (and b!1835620 res!825321) b!1835629))

(assert (= (and b!1835629 (not res!825322)) b!1835624))

(assert (= (and b!1835624 (not res!825319)) b!1835628))

(assert (= (or b!1835619 b!1835625 b!1835629) bm!114933))

(assert (=> b!1835616 m!2261851))

(declare-fun m!2263535 () Bool)

(assert (=> b!1835616 m!2263535))

(assert (=> b!1835624 m!2261851))

(declare-fun m!2263537 () Bool)

(assert (=> b!1835624 m!2263537))

(assert (=> b!1835624 m!2263537))

(declare-fun m!2263539 () Bool)

(assert (=> b!1835624 m!2263539))

(assert (=> b!1835622 m!2261851))

(assert (=> b!1835622 m!2263537))

(assert (=> b!1835622 m!2263537))

(assert (=> b!1835622 m!2263539))

(assert (=> d!561284 m!2261851))

(assert (=> d!561284 m!2261853))

(assert (=> d!561284 m!2261859))

(declare-fun m!2263541 () Bool)

(assert (=> d!561284 m!2263541))

(assert (=> b!1835627 m!2261851))

(assert (=> b!1835627 m!2263535))

(assert (=> b!1835627 m!2261859))

(assert (=> b!1835627 m!2263535))

(declare-fun m!2263543 () Bool)

(assert (=> b!1835627 m!2263543))

(assert (=> b!1835627 m!2261851))

(assert (=> b!1835627 m!2263537))

(assert (=> b!1835627 m!2263543))

(assert (=> b!1835627 m!2263537))

(declare-fun m!2263545 () Bool)

(assert (=> b!1835627 m!2263545))

(assert (=> b!1835617 m!2261859))

(declare-fun m!2263547 () Bool)

(assert (=> b!1835617 m!2263547))

(assert (=> b!1835628 m!2261851))

(assert (=> b!1835628 m!2263535))

(assert (=> bm!114933 m!2261851))

(assert (=> bm!114933 m!2261853))

(assert (=> b!1834223 d!561284))

(declare-fun b!1835630 () Bool)

(declare-fun c!299463 () Bool)

(assert (=> b!1835630 (= c!299463 (nullable!1551 (regOne!10462 (regex!3647 rule!580))))))

(declare-fun e!1173094 () Regex!4975)

(declare-fun e!1173091 () Regex!4975)

(assert (=> b!1835630 (= e!1173094 e!1173091)))

(declare-fun call!114940 () Regex!4975)

(declare-fun call!114942 () Regex!4975)

(declare-fun b!1835631 () Bool)

(assert (=> b!1835631 (= e!1173091 (Union!4975 (Concat!8713 call!114942 (regTwo!10462 (regex!3647 rule!580))) call!114940))))

(declare-fun c!299462 () Bool)

(declare-fun call!114941 () Regex!4975)

(declare-fun c!299466 () Bool)

(declare-fun bm!114934 () Bool)

(assert (=> bm!114934 (= call!114941 (derivativeStep!1315 (ite c!299462 (regOne!10463 (regex!3647 rule!580)) (ite c!299466 (reg!5304 (regex!3647 rule!580)) (ite c!299463 (regTwo!10462 (regex!3647 rule!580)) (regOne!10462 (regex!3647 rule!580))))) (head!4291 lt!711970)))))

(declare-fun b!1835632 () Bool)

(assert (=> b!1835632 (= e!1173091 (Union!4975 (Concat!8713 call!114940 (regTwo!10462 (regex!3647 rule!580))) EmptyLang!4975))))

(declare-fun b!1835634 () Bool)

(assert (=> b!1835634 (= c!299462 ((_ is Union!4975) (regex!3647 rule!580)))))

(declare-fun e!1173093 () Regex!4975)

(declare-fun e!1173095 () Regex!4975)

(assert (=> b!1835634 (= e!1173093 e!1173095)))

(declare-fun b!1835635 () Bool)

(assert (=> b!1835635 (= e!1173095 (Union!4975 call!114941 call!114942))))

(declare-fun b!1835636 () Bool)

(declare-fun call!114939 () Regex!4975)

(assert (=> b!1835636 (= e!1173094 (Concat!8713 call!114939 (regex!3647 rule!580)))))

(declare-fun b!1835637 () Bool)

(declare-fun e!1173092 () Regex!4975)

(assert (=> b!1835637 (= e!1173092 EmptyLang!4975)))

(declare-fun b!1835638 () Bool)

(assert (=> b!1835638 (= e!1173095 e!1173094)))

(assert (=> b!1835638 (= c!299466 ((_ is Star!4975) (regex!3647 rule!580)))))

(declare-fun bm!114935 () Bool)

(assert (=> bm!114935 (= call!114940 call!114939)))

(declare-fun bm!114936 () Bool)

(assert (=> bm!114936 (= call!114939 call!114941)))

(declare-fun b!1835633 () Bool)

(assert (=> b!1835633 (= e!1173093 (ite (= (head!4291 lt!711970) (c!299105 (regex!3647 rule!580))) EmptyExpr!4975 EmptyLang!4975))))

(declare-fun d!561286 () Bool)

(declare-fun lt!712571 () Regex!4975)

(assert (=> d!561286 (validRegex!2033 lt!712571)))

(assert (=> d!561286 (= lt!712571 e!1173092)))

(declare-fun c!299465 () Bool)

(assert (=> d!561286 (= c!299465 (or ((_ is EmptyExpr!4975) (regex!3647 rule!580)) ((_ is EmptyLang!4975) (regex!3647 rule!580))))))

(assert (=> d!561286 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!561286 (= (derivativeStep!1315 (regex!3647 rule!580) (head!4291 lt!711970)) lt!712571)))

(declare-fun b!1835639 () Bool)

(assert (=> b!1835639 (= e!1173092 e!1173093)))

(declare-fun c!299464 () Bool)

(assert (=> b!1835639 (= c!299464 ((_ is ElementMatch!4975) (regex!3647 rule!580)))))

(declare-fun bm!114937 () Bool)

(assert (=> bm!114937 (= call!114942 (derivativeStep!1315 (ite c!299462 (regTwo!10463 (regex!3647 rule!580)) (regOne!10462 (regex!3647 rule!580))) (head!4291 lt!711970)))))

(assert (= (and d!561286 c!299465) b!1835637))

(assert (= (and d!561286 (not c!299465)) b!1835639))

(assert (= (and b!1835639 c!299464) b!1835633))

(assert (= (and b!1835639 (not c!299464)) b!1835634))

(assert (= (and b!1835634 c!299462) b!1835635))

(assert (= (and b!1835634 (not c!299462)) b!1835638))

(assert (= (and b!1835638 c!299466) b!1835636))

(assert (= (and b!1835638 (not c!299466)) b!1835630))

(assert (= (and b!1835630 c!299463) b!1835631))

(assert (= (and b!1835630 (not c!299463)) b!1835632))

(assert (= (or b!1835631 b!1835632) bm!114935))

(assert (= (or b!1835636 bm!114935) bm!114936))

(assert (= (or b!1835635 b!1835631) bm!114937))

(assert (= (or b!1835635 bm!114936) bm!114934))

(assert (=> b!1835630 m!2262943))

(assert (=> bm!114934 m!2261849))

(declare-fun m!2263549 () Bool)

(assert (=> bm!114934 m!2263549))

(declare-fun m!2263551 () Bool)

(assert (=> d!561286 m!2263551))

(assert (=> d!561286 m!2261857))

(assert (=> bm!114937 m!2261849))

(declare-fun m!2263553 () Bool)

(assert (=> bm!114937 m!2263553))

(assert (=> b!1834223 d!561286))

(assert (=> b!1834223 d!560940))

(assert (=> b!1834223 d!561176))

(declare-fun d!561288 () Bool)

(assert (=> d!561288 (= (seqFromList!2604 (_1!11217 lt!711987)) (fromListB!1194 (_1!11217 lt!711987)))))

(declare-fun bs!408271 () Bool)

(assert (= bs!408271 d!561288))

(declare-fun m!2263555 () Bool)

(assert (=> bs!408271 m!2263555))

(assert (=> b!1834168 d!561288))

(assert (=> b!1834168 d!561244))

(declare-fun d!561290 () Bool)

(assert (=> d!561290 (= (isEmpty!12741 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))) ((_ is Nil!20174) (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(assert (=> b!1834168 d!561290))

(declare-fun d!561292 () Bool)

(assert (=> d!561292 (= (apply!5435 (transformation!3647 rule!580) (seqFromList!2604 (_1!11217 lt!711987))) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 (_1!11217 lt!711987))))))

(declare-fun b_lambda!60857 () Bool)

(assert (=> (not b_lambda!60857) (not d!561292)))

(declare-fun t!171311 () Bool)

(declare-fun tb!112441 () Bool)

(assert (=> (and b!1834110 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580))) t!171311) tb!112441))

(declare-fun result!135202 () Bool)

(assert (=> tb!112441 (= result!135202 (inv!21 (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 (_1!11217 lt!711987)))))))

(declare-fun m!2263557 () Bool)

(assert (=> tb!112441 m!2263557))

(assert (=> d!561292 t!171311))

(declare-fun b_and!143253 () Bool)

(assert (= b_and!143247 (and (=> t!171311 result!135202) b_and!143253)))

(declare-fun tb!112443 () Bool)

(declare-fun t!171313 () Bool)

(assert (=> (and b!1834102 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580))) t!171313) tb!112443))

(declare-fun result!135204 () Bool)

(assert (= result!135204 result!135202))

(assert (=> d!561292 t!171313))

(declare-fun b_and!143255 () Bool)

(assert (= b_and!143243 (and (=> t!171313 result!135204) b_and!143255)))

(declare-fun t!171315 () Bool)

(declare-fun tb!112445 () Bool)

(assert (=> (and b!1834113 (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 rule!580))) t!171315) tb!112445))

(declare-fun result!135206 () Bool)

(assert (= result!135206 result!135202))

(assert (=> d!561292 t!171315))

(declare-fun b_and!143257 () Bool)

(assert (= b_and!143241 (and (=> t!171315 result!135206) b_and!143257)))

(declare-fun t!171317 () Bool)

(declare-fun tb!112447 () Bool)

(assert (=> (and b!1834660 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580))) t!171317) tb!112447))

(declare-fun result!135208 () Bool)

(assert (= result!135208 result!135202))

(assert (=> d!561292 t!171317))

(declare-fun b_and!143259 () Bool)

(assert (= b_and!143238 (and (=> t!171317 result!135208) b_and!143259)))

(declare-fun t!171319 () Bool)

(declare-fun tb!112449 () Bool)

(assert (=> (and b!1834103 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580))) t!171319) tb!112449))

(declare-fun result!135210 () Bool)

(assert (= result!135210 result!135202))

(assert (=> d!561292 t!171319))

(declare-fun b_and!143261 () Bool)

(assert (= b_and!143245 (and (=> t!171319 result!135210) b_and!143261)))

(declare-fun tb!112451 () Bool)

(declare-fun t!171321 () Bool)

(assert (=> (and b!1834695 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580))) t!171321) tb!112451))

(declare-fun result!135212 () Bool)

(assert (= result!135212 result!135202))

(assert (=> d!561292 t!171321))

(declare-fun b_and!143263 () Bool)

(assert (= b_and!143249 (and (=> t!171321 result!135212) b_and!143263)))

(assert (=> d!561292 m!2261819))

(declare-fun m!2263559 () Bool)

(assert (=> d!561292 m!2263559))

(assert (=> b!1834168 d!561292))

(assert (=> b!1834168 d!560888))

(declare-fun bs!408272 () Bool)

(declare-fun d!561294 () Bool)

(assert (= bs!408272 (and d!561294 d!561054)))

(declare-fun lambda!72198 () Int)

(assert (=> bs!408272 (= (and (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (h!25576 rules!4610)))) (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 (h!25576 rules!4610))))) (= lambda!72198 lambda!72175))))

(declare-fun bs!408273 () Bool)

(assert (= bs!408273 (and d!561294 d!561148)))

(assert (=> bs!408273 (= lambda!72198 lambda!72188)))

(declare-fun bs!408274 () Bool)

(assert (= bs!408274 (and d!561294 d!561258)))

(assert (=> bs!408274 (= (and (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (h!25576 rs!808)))) (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 (h!25576 rs!808))))) (= lambda!72198 lambda!72194))))

(declare-fun bs!408275 () Bool)

(assert (= bs!408275 (and d!561294 d!561260)))

(assert (=> bs!408275 (= (and (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) (= (toValue!5194 (transformation!3647 rule!580)) (toValue!5194 (transformation!3647 (rule!5831 token!567))))) (= lambda!72198 lambda!72195))))

(declare-fun b!1835644 () Bool)

(declare-fun e!1173099 () Bool)

(assert (=> b!1835644 (= e!1173099 true)))

(assert (=> d!561294 e!1173099))

(assert (= d!561294 b!1835644))

(assert (=> b!1835644 (< (dynLambda!10048 order!13045 (toValue!5194 (transformation!3647 rule!580))) (dynLambda!10052 order!13051 lambda!72198))))

(assert (=> b!1835644 (< (dynLambda!10051 order!13049 (toChars!5053 (transformation!3647 rule!580))) (dynLambda!10052 order!13051 lambda!72198))))

(assert (=> d!561294 (= (list!8197 (dynLambda!10040 (toChars!5053 (transformation!3647 rule!580)) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 (_1!11217 lt!711987))))) (list!8197 (seqFromList!2604 (_1!11217 lt!711987))))))

(declare-fun lt!712574 () Unit!34851)

(declare-fun ForallOf!367 (Int BalanceConc!13302) Unit!34851)

(assert (=> d!561294 (= lt!712574 (ForallOf!367 lambda!72198 (seqFromList!2604 (_1!11217 lt!711987))))))

(assert (=> d!561294 (= (lemmaSemiInverse!737 (transformation!3647 rule!580) (seqFromList!2604 (_1!11217 lt!711987))) lt!712574)))

(declare-fun b_lambda!60859 () Bool)

(assert (=> (not b_lambda!60859) (not d!561294)))

(declare-fun t!171323 () Bool)

(declare-fun tb!112453 () Bool)

(assert (=> (and b!1834103 (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 rule!580))) t!171323) tb!112453))

(declare-fun b!1835645 () Bool)

(declare-fun e!1173100 () Bool)

(declare-fun tp!519200 () Bool)

(assert (=> b!1835645 (= e!1173100 (and (inv!26246 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 rule!580)) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 (_1!11217 lt!711987)))))) tp!519200))))

(declare-fun result!135214 () Bool)

(assert (=> tb!112453 (= result!135214 (and (inv!26247 (dynLambda!10040 (toChars!5053 (transformation!3647 rule!580)) (dynLambda!10039 (toValue!5194 (transformation!3647 rule!580)) (seqFromList!2604 (_1!11217 lt!711987))))) e!1173100))))

(assert (= tb!112453 b!1835645))

(declare-fun m!2263561 () Bool)

(assert (=> b!1835645 m!2263561))

(declare-fun m!2263563 () Bool)

(assert (=> tb!112453 m!2263563))

(assert (=> d!561294 t!171323))

(declare-fun b_and!143265 () Bool)

(assert (= b_and!143181 (and (=> t!171323 result!135214) b_and!143265)))

(declare-fun t!171325 () Bool)

(declare-fun tb!112455 () Bool)

(assert (=> (and b!1834113 (= (toChars!5053 (transformation!3647 rule!580)) (toChars!5053 (transformation!3647 rule!580))) t!171325) tb!112455))

(declare-fun result!135216 () Bool)

(assert (= result!135216 result!135214))

(assert (=> d!561294 t!171325))

(declare-fun b_and!143267 () Bool)

(assert (= b_and!143183 (and (=> t!171325 result!135216) b_and!143267)))

(declare-fun tb!112457 () Bool)

(declare-fun t!171327 () Bool)

(assert (=> (and b!1834102 (= (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toChars!5053 (transformation!3647 rule!580))) t!171327) tb!112457))

(declare-fun result!135218 () Bool)

(assert (= result!135218 result!135214))

(assert (=> d!561294 t!171327))

(declare-fun b_and!143269 () Bool)

(assert (= b_and!143173 (and (=> t!171327 result!135218) b_and!143269)))

(declare-fun t!171329 () Bool)

(declare-fun tb!112459 () Bool)

(assert (=> (and b!1834110 (= (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toChars!5053 (transformation!3647 rule!580))) t!171329) tb!112459))

(declare-fun result!135220 () Bool)

(assert (= result!135220 result!135214))

(assert (=> d!561294 t!171329))

(declare-fun b_and!143271 () Bool)

(assert (= b_and!143175 (and (=> t!171329 result!135220) b_and!143271)))

(declare-fun tb!112461 () Bool)

(declare-fun t!171331 () Bool)

(assert (=> (and b!1834695 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toChars!5053 (transformation!3647 rule!580))) t!171331) tb!112461))

(declare-fun result!135222 () Bool)

(assert (= result!135222 result!135214))

(assert (=> d!561294 t!171331))

(declare-fun b_and!143273 () Bool)

(assert (= b_and!143179 (and (=> t!171331 result!135222) b_and!143273)))

(declare-fun tb!112463 () Bool)

(declare-fun t!171333 () Bool)

(assert (=> (and b!1834660 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toChars!5053 (transformation!3647 rule!580))) t!171333) tb!112463))

(declare-fun result!135224 () Bool)

(assert (= result!135224 result!135214))

(assert (=> d!561294 t!171333))

(declare-fun b_and!143275 () Bool)

(assert (= b_and!143177 (and (=> t!171333 result!135224) b_and!143275)))

(declare-fun b_lambda!60861 () Bool)

(assert (=> (not b_lambda!60861) (not d!561294)))

(assert (=> d!561294 t!171321))

(declare-fun b_and!143277 () Bool)

(assert (= b_and!143263 (and (=> t!171321 result!135212) b_and!143277)))

(assert (=> d!561294 t!171313))

(declare-fun b_and!143279 () Bool)

(assert (= b_and!143255 (and (=> t!171313 result!135204) b_and!143279)))

(assert (=> d!561294 t!171315))

(declare-fun b_and!143281 () Bool)

(assert (= b_and!143257 (and (=> t!171315 result!135206) b_and!143281)))

(assert (=> d!561294 t!171317))

(declare-fun b_and!143283 () Bool)

(assert (= b_and!143259 (and (=> t!171317 result!135208) b_and!143283)))

(assert (=> d!561294 t!171319))

(declare-fun b_and!143285 () Bool)

(assert (= b_and!143261 (and (=> t!171319 result!135210) b_and!143285)))

(assert (=> d!561294 t!171311))

(declare-fun b_and!143287 () Bool)

(assert (= b_and!143253 (and (=> t!171311 result!135202) b_and!143287)))

(assert (=> d!561294 m!2261819))

(assert (=> d!561294 m!2263559))

(declare-fun m!2263565 () Bool)

(assert (=> d!561294 m!2263565))

(declare-fun m!2263567 () Bool)

(assert (=> d!561294 m!2263567))

(assert (=> d!561294 m!2261819))

(declare-fun m!2263569 () Bool)

(assert (=> d!561294 m!2263569))

(assert (=> d!561294 m!2261819))

(declare-fun m!2263571 () Bool)

(assert (=> d!561294 m!2263571))

(assert (=> d!561294 m!2263559))

(assert (=> d!561294 m!2263565))

(assert (=> b!1834168 d!561294))

(declare-fun d!561296 () Bool)

(declare-fun e!1173103 () Bool)

(assert (=> d!561296 e!1173103))

(declare-fun res!825326 () Bool)

(assert (=> d!561296 (=> res!825326 e!1173103)))

(assert (=> d!561296 (= res!825326 (isEmpty!12741 (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(declare-fun lt!712577 () Unit!34851)

(declare-fun choose!11552 (Regex!4975 List!20244) Unit!34851)

(assert (=> d!561296 (= lt!712577 (choose!11552 (regex!3647 rule!580) input!3681))))

(assert (=> d!561296 (validRegex!2033 (regex!3647 rule!580))))

(assert (=> d!561296 (= (longestMatchIsAcceptedByMatchOrIsEmpty!507 (regex!3647 rule!580) input!3681) lt!712577)))

(declare-fun b!1835648 () Bool)

(assert (=> b!1835648 (= e!1173103 (matchR!2438 (regex!3647 rule!580) (_1!11217 (findLongestMatchInner!523 (regex!3647 rule!580) Nil!20174 (size!16002 Nil!20174) input!3681 input!3681 (size!16002 input!3681)))))))

(assert (= (and d!561296 (not res!825326)) b!1835648))

(assert (=> d!561296 m!2261811))

(assert (=> d!561296 m!2261809))

(assert (=> d!561296 m!2261857))

(assert (=> d!561296 m!2261823))

(declare-fun m!2263573 () Bool)

(assert (=> d!561296 m!2263573))

(assert (=> d!561296 m!2261809))

(assert (=> d!561296 m!2261811))

(assert (=> d!561296 m!2261813))

(assert (=> b!1835648 m!2261809))

(assert (=> b!1835648 m!2261811))

(assert (=> b!1835648 m!2261809))

(assert (=> b!1835648 m!2261811))

(assert (=> b!1835648 m!2261813))

(assert (=> b!1835648 m!2261815))

(assert (=> b!1834168 d!561296))

(declare-fun d!561298 () Bool)

(declare-fun lt!712580 () Int)

(assert (=> d!561298 (= lt!712580 (size!16002 (list!8197 (seqFromList!2604 (_1!11217 lt!711987)))))))

(declare-fun size!16010 (Conc!6679) Int)

(assert (=> d!561298 (= lt!712580 (size!16010 (c!299104 (seqFromList!2604 (_1!11217 lt!711987)))))))

(assert (=> d!561298 (= (size!16006 (seqFromList!2604 (_1!11217 lt!711987))) lt!712580)))

(declare-fun bs!408276 () Bool)

(assert (= bs!408276 d!561298))

(assert (=> bs!408276 m!2261819))

(assert (=> bs!408276 m!2263571))

(assert (=> bs!408276 m!2263571))

(declare-fun m!2263575 () Bool)

(assert (=> bs!408276 m!2263575))

(declare-fun m!2263577 () Bool)

(assert (=> bs!408276 m!2263577))

(assert (=> b!1834168 d!561298))

(assert (=> b!1834168 d!561180))

(declare-fun d!561300 () Bool)

(assert (=> d!561300 (= (isDefined!3529 lt!712017) (not (isEmpty!12742 lt!712017)))))

(declare-fun bs!408277 () Bool)

(assert (= bs!408277 d!561300))

(assert (=> bs!408277 m!2261915))

(assert (=> b!1834280 d!561300))

(declare-fun b!1835651 () Bool)

(declare-fun e!1173104 () Bool)

(declare-fun tp!519204 () Bool)

(assert (=> b!1835651 (= e!1173104 tp!519204)))

(declare-fun b!1835649 () Bool)

(assert (=> b!1835649 (= e!1173104 tp_is_empty!8185)))

(assert (=> b!1834685 (= tp!519051 e!1173104)))

(declare-fun b!1835652 () Bool)

(declare-fun tp!519202 () Bool)

(declare-fun tp!519201 () Bool)

(assert (=> b!1835652 (= e!1173104 (and tp!519202 tp!519201))))

(declare-fun b!1835650 () Bool)

(declare-fun tp!519203 () Bool)

(declare-fun tp!519205 () Bool)

(assert (=> b!1835650 (= e!1173104 (and tp!519203 tp!519205))))

(assert (= (and b!1834685 ((_ is ElementMatch!4975) (regOne!10462 (regex!3647 (rule!5831 token!567))))) b!1835649))

(assert (= (and b!1834685 ((_ is Concat!8713) (regOne!10462 (regex!3647 (rule!5831 token!567))))) b!1835650))

(assert (= (and b!1834685 ((_ is Star!4975) (regOne!10462 (regex!3647 (rule!5831 token!567))))) b!1835651))

(assert (= (and b!1834685 ((_ is Union!4975) (regOne!10462 (regex!3647 (rule!5831 token!567))))) b!1835652))

(declare-fun b!1835655 () Bool)

(declare-fun e!1173105 () Bool)

(declare-fun tp!519209 () Bool)

(assert (=> b!1835655 (= e!1173105 tp!519209)))

(declare-fun b!1835653 () Bool)

(assert (=> b!1835653 (= e!1173105 tp_is_empty!8185)))

(assert (=> b!1834685 (= tp!519053 e!1173105)))

(declare-fun b!1835656 () Bool)

(declare-fun tp!519207 () Bool)

(declare-fun tp!519206 () Bool)

(assert (=> b!1835656 (= e!1173105 (and tp!519207 tp!519206))))

(declare-fun b!1835654 () Bool)

(declare-fun tp!519208 () Bool)

(declare-fun tp!519210 () Bool)

(assert (=> b!1835654 (= e!1173105 (and tp!519208 tp!519210))))

(assert (= (and b!1834685 ((_ is ElementMatch!4975) (regTwo!10462 (regex!3647 (rule!5831 token!567))))) b!1835653))

(assert (= (and b!1834685 ((_ is Concat!8713) (regTwo!10462 (regex!3647 (rule!5831 token!567))))) b!1835654))

(assert (= (and b!1834685 ((_ is Star!4975) (regTwo!10462 (regex!3647 (rule!5831 token!567))))) b!1835655))

(assert (= (and b!1834685 ((_ is Union!4975) (regTwo!10462 (regex!3647 (rule!5831 token!567))))) b!1835656))

(declare-fun b!1835659 () Bool)

(declare-fun e!1173106 () Bool)

(declare-fun tp!519214 () Bool)

(assert (=> b!1835659 (= e!1173106 tp!519214)))

(declare-fun b!1835657 () Bool)

(assert (=> b!1835657 (= e!1173106 tp_is_empty!8185)))

(assert (=> b!1834689 (= tp!519056 e!1173106)))

(declare-fun b!1835660 () Bool)

(declare-fun tp!519212 () Bool)

(declare-fun tp!519211 () Bool)

(assert (=> b!1835660 (= e!1173106 (and tp!519212 tp!519211))))

(declare-fun b!1835658 () Bool)

(declare-fun tp!519213 () Bool)

(declare-fun tp!519215 () Bool)

(assert (=> b!1835658 (= e!1173106 (and tp!519213 tp!519215))))

(assert (= (and b!1834689 ((_ is ElementMatch!4975) (regOne!10462 (regex!3647 (h!25576 rs!808))))) b!1835657))

(assert (= (and b!1834689 ((_ is Concat!8713) (regOne!10462 (regex!3647 (h!25576 rs!808))))) b!1835658))

(assert (= (and b!1834689 ((_ is Star!4975) (regOne!10462 (regex!3647 (h!25576 rs!808))))) b!1835659))

(assert (= (and b!1834689 ((_ is Union!4975) (regOne!10462 (regex!3647 (h!25576 rs!808))))) b!1835660))

(declare-fun b!1835663 () Bool)

(declare-fun e!1173107 () Bool)

(declare-fun tp!519219 () Bool)

(assert (=> b!1835663 (= e!1173107 tp!519219)))

(declare-fun b!1835661 () Bool)

(assert (=> b!1835661 (= e!1173107 tp_is_empty!8185)))

(assert (=> b!1834689 (= tp!519058 e!1173107)))

(declare-fun b!1835664 () Bool)

(declare-fun tp!519217 () Bool)

(declare-fun tp!519216 () Bool)

(assert (=> b!1835664 (= e!1173107 (and tp!519217 tp!519216))))

(declare-fun b!1835662 () Bool)

(declare-fun tp!519218 () Bool)

(declare-fun tp!519220 () Bool)

(assert (=> b!1835662 (= e!1173107 (and tp!519218 tp!519220))))

(assert (= (and b!1834689 ((_ is ElementMatch!4975) (regTwo!10462 (regex!3647 (h!25576 rs!808))))) b!1835661))

(assert (= (and b!1834689 ((_ is Concat!8713) (regTwo!10462 (regex!3647 (h!25576 rs!808))))) b!1835662))

(assert (= (and b!1834689 ((_ is Star!4975) (regTwo!10462 (regex!3647 (h!25576 rs!808))))) b!1835663))

(assert (= (and b!1834689 ((_ is Union!4975) (regTwo!10462 (regex!3647 (h!25576 rs!808))))) b!1835664))

(declare-fun b!1835665 () Bool)

(declare-fun e!1173108 () Bool)

(declare-fun tp!519221 () Bool)

(assert (=> b!1835665 (= e!1173108 (and tp_is_empty!8185 tp!519221))))

(assert (=> b!1834665 (= tp!519028 e!1173108)))

(assert (= (and b!1834665 ((_ is Cons!20174) (t!171045 (originalCharacters!4455 token!567)))) b!1835665))

(declare-fun b!1835668 () Bool)

(declare-fun e!1173109 () Bool)

(declare-fun tp!519225 () Bool)

(assert (=> b!1835668 (= e!1173109 tp!519225)))

(declare-fun b!1835666 () Bool)

(assert (=> b!1835666 (= e!1173109 tp_is_empty!8185)))

(assert (=> b!1834686 (= tp!519052 e!1173109)))

(declare-fun b!1835669 () Bool)

(declare-fun tp!519223 () Bool)

(declare-fun tp!519222 () Bool)

(assert (=> b!1835669 (= e!1173109 (and tp!519223 tp!519222))))

(declare-fun b!1835667 () Bool)

(declare-fun tp!519224 () Bool)

(declare-fun tp!519226 () Bool)

(assert (=> b!1835667 (= e!1173109 (and tp!519224 tp!519226))))

(assert (= (and b!1834686 ((_ is ElementMatch!4975) (reg!5304 (regex!3647 (rule!5831 token!567))))) b!1835666))

(assert (= (and b!1834686 ((_ is Concat!8713) (reg!5304 (regex!3647 (rule!5831 token!567))))) b!1835667))

(assert (= (and b!1834686 ((_ is Star!4975) (reg!5304 (regex!3647 (rule!5831 token!567))))) b!1835668))

(assert (= (and b!1834686 ((_ is Union!4975) (reg!5304 (regex!3647 (rule!5831 token!567))))) b!1835669))

(declare-fun b!1835672 () Bool)

(declare-fun e!1173110 () Bool)

(declare-fun tp!519230 () Bool)

(assert (=> b!1835672 (= e!1173110 tp!519230)))

(declare-fun b!1835670 () Bool)

(assert (=> b!1835670 (= e!1173110 tp_is_empty!8185)))

(assert (=> b!1834677 (= tp!519041 e!1173110)))

(declare-fun b!1835673 () Bool)

(declare-fun tp!519228 () Bool)

(declare-fun tp!519227 () Bool)

(assert (=> b!1835673 (= e!1173110 (and tp!519228 tp!519227))))

(declare-fun b!1835671 () Bool)

(declare-fun tp!519229 () Bool)

(declare-fun tp!519231 () Bool)

(assert (=> b!1835671 (= e!1173110 (and tp!519229 tp!519231))))

(assert (= (and b!1834677 ((_ is ElementMatch!4975) (regOne!10462 (regex!3647 rule!580)))) b!1835670))

(assert (= (and b!1834677 ((_ is Concat!8713) (regOne!10462 (regex!3647 rule!580)))) b!1835671))

(assert (= (and b!1834677 ((_ is Star!4975) (regOne!10462 (regex!3647 rule!580)))) b!1835672))

(assert (= (and b!1834677 ((_ is Union!4975) (regOne!10462 (regex!3647 rule!580)))) b!1835673))

(declare-fun b!1835676 () Bool)

(declare-fun e!1173111 () Bool)

(declare-fun tp!519235 () Bool)

(assert (=> b!1835676 (= e!1173111 tp!519235)))

(declare-fun b!1835674 () Bool)

(assert (=> b!1835674 (= e!1173111 tp_is_empty!8185)))

(assert (=> b!1834677 (= tp!519043 e!1173111)))

(declare-fun b!1835677 () Bool)

(declare-fun tp!519233 () Bool)

(declare-fun tp!519232 () Bool)

(assert (=> b!1835677 (= e!1173111 (and tp!519233 tp!519232))))

(declare-fun b!1835675 () Bool)

(declare-fun tp!519234 () Bool)

(declare-fun tp!519236 () Bool)

(assert (=> b!1835675 (= e!1173111 (and tp!519234 tp!519236))))

(assert (= (and b!1834677 ((_ is ElementMatch!4975) (regTwo!10462 (regex!3647 rule!580)))) b!1835674))

(assert (= (and b!1834677 ((_ is Concat!8713) (regTwo!10462 (regex!3647 rule!580)))) b!1835675))

(assert (= (and b!1834677 ((_ is Star!4975) (regTwo!10462 (regex!3647 rule!580)))) b!1835676))

(assert (= (and b!1834677 ((_ is Union!4975) (regTwo!10462 (regex!3647 rule!580)))) b!1835677))

(declare-fun b!1835680 () Bool)

(declare-fun e!1173112 () Bool)

(declare-fun tp!519240 () Bool)

(assert (=> b!1835680 (= e!1173112 tp!519240)))

(declare-fun b!1835678 () Bool)

(assert (=> b!1835678 (= e!1173112 tp_is_empty!8185)))

(assert (=> b!1834691 (= tp!519055 e!1173112)))

(declare-fun b!1835681 () Bool)

(declare-fun tp!519238 () Bool)

(declare-fun tp!519237 () Bool)

(assert (=> b!1835681 (= e!1173112 (and tp!519238 tp!519237))))

(declare-fun b!1835679 () Bool)

(declare-fun tp!519239 () Bool)

(declare-fun tp!519241 () Bool)

(assert (=> b!1835679 (= e!1173112 (and tp!519239 tp!519241))))

(assert (= (and b!1834691 ((_ is ElementMatch!4975) (regOne!10463 (regex!3647 (h!25576 rs!808))))) b!1835678))

(assert (= (and b!1834691 ((_ is Concat!8713) (regOne!10463 (regex!3647 (h!25576 rs!808))))) b!1835679))

(assert (= (and b!1834691 ((_ is Star!4975) (regOne!10463 (regex!3647 (h!25576 rs!808))))) b!1835680))

(assert (= (and b!1834691 ((_ is Union!4975) (regOne!10463 (regex!3647 (h!25576 rs!808))))) b!1835681))

(declare-fun b!1835684 () Bool)

(declare-fun e!1173113 () Bool)

(declare-fun tp!519245 () Bool)

(assert (=> b!1835684 (= e!1173113 tp!519245)))

(declare-fun b!1835682 () Bool)

(assert (=> b!1835682 (= e!1173113 tp_is_empty!8185)))

(assert (=> b!1834691 (= tp!519054 e!1173113)))

(declare-fun b!1835685 () Bool)

(declare-fun tp!519243 () Bool)

(declare-fun tp!519242 () Bool)

(assert (=> b!1835685 (= e!1173113 (and tp!519243 tp!519242))))

(declare-fun b!1835683 () Bool)

(declare-fun tp!519244 () Bool)

(declare-fun tp!519246 () Bool)

(assert (=> b!1835683 (= e!1173113 (and tp!519244 tp!519246))))

(assert (= (and b!1834691 ((_ is ElementMatch!4975) (regTwo!10463 (regex!3647 (h!25576 rs!808))))) b!1835682))

(assert (= (and b!1834691 ((_ is Concat!8713) (regTwo!10463 (regex!3647 (h!25576 rs!808))))) b!1835683))

(assert (= (and b!1834691 ((_ is Star!4975) (regTwo!10463 (regex!3647 (h!25576 rs!808))))) b!1835684))

(assert (= (and b!1834691 ((_ is Union!4975) (regTwo!10463 (regex!3647 (h!25576 rs!808))))) b!1835685))

(declare-fun b!1835688 () Bool)

(declare-fun e!1173114 () Bool)

(declare-fun tp!519250 () Bool)

(assert (=> b!1835688 (= e!1173114 tp!519250)))

(declare-fun b!1835686 () Bool)

(assert (=> b!1835686 (= e!1173114 tp_is_empty!8185)))

(assert (=> b!1834690 (= tp!519057 e!1173114)))

(declare-fun b!1835689 () Bool)

(declare-fun tp!519248 () Bool)

(declare-fun tp!519247 () Bool)

(assert (=> b!1835689 (= e!1173114 (and tp!519248 tp!519247))))

(declare-fun b!1835687 () Bool)

(declare-fun tp!519249 () Bool)

(declare-fun tp!519251 () Bool)

(assert (=> b!1835687 (= e!1173114 (and tp!519249 tp!519251))))

(assert (= (and b!1834690 ((_ is ElementMatch!4975) (reg!5304 (regex!3647 (h!25576 rs!808))))) b!1835686))

(assert (= (and b!1834690 ((_ is Concat!8713) (reg!5304 (regex!3647 (h!25576 rs!808))))) b!1835687))

(assert (= (and b!1834690 ((_ is Star!4975) (reg!5304 (regex!3647 (h!25576 rs!808))))) b!1835688))

(assert (= (and b!1834690 ((_ is Union!4975) (reg!5304 (regex!3647 (h!25576 rs!808))))) b!1835689))

(declare-fun b!1835692 () Bool)

(declare-fun e!1173115 () Bool)

(declare-fun tp!519255 () Bool)

(assert (=> b!1835692 (= e!1173115 tp!519255)))

(declare-fun b!1835690 () Bool)

(assert (=> b!1835690 (= e!1173115 tp_is_empty!8185)))

(assert (=> b!1834681 (= tp!519046 e!1173115)))

(declare-fun b!1835693 () Bool)

(declare-fun tp!519253 () Bool)

(declare-fun tp!519252 () Bool)

(assert (=> b!1835693 (= e!1173115 (and tp!519253 tp!519252))))

(declare-fun b!1835691 () Bool)

(declare-fun tp!519254 () Bool)

(declare-fun tp!519256 () Bool)

(assert (=> b!1835691 (= e!1173115 (and tp!519254 tp!519256))))

(assert (= (and b!1834681 ((_ is ElementMatch!4975) (regOne!10462 (regex!3647 (h!25576 rules!4610))))) b!1835690))

(assert (= (and b!1834681 ((_ is Concat!8713) (regOne!10462 (regex!3647 (h!25576 rules!4610))))) b!1835691))

(assert (= (and b!1834681 ((_ is Star!4975) (regOne!10462 (regex!3647 (h!25576 rules!4610))))) b!1835692))

(assert (= (and b!1834681 ((_ is Union!4975) (regOne!10462 (regex!3647 (h!25576 rules!4610))))) b!1835693))

(declare-fun b!1835696 () Bool)

(declare-fun e!1173116 () Bool)

(declare-fun tp!519260 () Bool)

(assert (=> b!1835696 (= e!1173116 tp!519260)))

(declare-fun b!1835694 () Bool)

(assert (=> b!1835694 (= e!1173116 tp_is_empty!8185)))

(assert (=> b!1834681 (= tp!519048 e!1173116)))

(declare-fun b!1835697 () Bool)

(declare-fun tp!519258 () Bool)

(declare-fun tp!519257 () Bool)

(assert (=> b!1835697 (= e!1173116 (and tp!519258 tp!519257))))

(declare-fun b!1835695 () Bool)

(declare-fun tp!519259 () Bool)

(declare-fun tp!519261 () Bool)

(assert (=> b!1835695 (= e!1173116 (and tp!519259 tp!519261))))

(assert (= (and b!1834681 ((_ is ElementMatch!4975) (regTwo!10462 (regex!3647 (h!25576 rules!4610))))) b!1835694))

(assert (= (and b!1834681 ((_ is Concat!8713) (regTwo!10462 (regex!3647 (h!25576 rules!4610))))) b!1835695))

(assert (= (and b!1834681 ((_ is Star!4975) (regTwo!10462 (regex!3647 (h!25576 rules!4610))))) b!1835696))

(assert (= (and b!1834681 ((_ is Union!4975) (regTwo!10462 (regex!3647 (h!25576 rules!4610))))) b!1835697))

(declare-fun b!1835700 () Bool)

(declare-fun e!1173117 () Bool)

(declare-fun tp!519265 () Bool)

(assert (=> b!1835700 (= e!1173117 tp!519265)))

(declare-fun b!1835698 () Bool)

(assert (=> b!1835698 (= e!1173117 tp_is_empty!8185)))

(assert (=> b!1834678 (= tp!519042 e!1173117)))

(declare-fun b!1835701 () Bool)

(declare-fun tp!519263 () Bool)

(declare-fun tp!519262 () Bool)

(assert (=> b!1835701 (= e!1173117 (and tp!519263 tp!519262))))

(declare-fun b!1835699 () Bool)

(declare-fun tp!519264 () Bool)

(declare-fun tp!519266 () Bool)

(assert (=> b!1835699 (= e!1173117 (and tp!519264 tp!519266))))

(assert (= (and b!1834678 ((_ is ElementMatch!4975) (reg!5304 (regex!3647 rule!580)))) b!1835698))

(assert (= (and b!1834678 ((_ is Concat!8713) (reg!5304 (regex!3647 rule!580)))) b!1835699))

(assert (= (and b!1834678 ((_ is Star!4975) (reg!5304 (regex!3647 rule!580)))) b!1835700))

(assert (= (and b!1834678 ((_ is Union!4975) (reg!5304 (regex!3647 rule!580)))) b!1835701))

(declare-fun b!1835704 () Bool)

(declare-fun e!1173118 () Bool)

(declare-fun tp!519270 () Bool)

(assert (=> b!1835704 (= e!1173118 tp!519270)))

(declare-fun b!1835702 () Bool)

(assert (=> b!1835702 (= e!1173118 tp_is_empty!8185)))

(assert (=> b!1834683 (= tp!519045 e!1173118)))

(declare-fun b!1835705 () Bool)

(declare-fun tp!519268 () Bool)

(declare-fun tp!519267 () Bool)

(assert (=> b!1835705 (= e!1173118 (and tp!519268 tp!519267))))

(declare-fun b!1835703 () Bool)

(declare-fun tp!519269 () Bool)

(declare-fun tp!519271 () Bool)

(assert (=> b!1835703 (= e!1173118 (and tp!519269 tp!519271))))

(assert (= (and b!1834683 ((_ is ElementMatch!4975) (regOne!10463 (regex!3647 (h!25576 rules!4610))))) b!1835702))

(assert (= (and b!1834683 ((_ is Concat!8713) (regOne!10463 (regex!3647 (h!25576 rules!4610))))) b!1835703))

(assert (= (and b!1834683 ((_ is Star!4975) (regOne!10463 (regex!3647 (h!25576 rules!4610))))) b!1835704))

(assert (= (and b!1834683 ((_ is Union!4975) (regOne!10463 (regex!3647 (h!25576 rules!4610))))) b!1835705))

(declare-fun b!1835708 () Bool)

(declare-fun e!1173119 () Bool)

(declare-fun tp!519275 () Bool)

(assert (=> b!1835708 (= e!1173119 tp!519275)))

(declare-fun b!1835706 () Bool)

(assert (=> b!1835706 (= e!1173119 tp_is_empty!8185)))

(assert (=> b!1834683 (= tp!519044 e!1173119)))

(declare-fun b!1835709 () Bool)

(declare-fun tp!519273 () Bool)

(declare-fun tp!519272 () Bool)

(assert (=> b!1835709 (= e!1173119 (and tp!519273 tp!519272))))

(declare-fun b!1835707 () Bool)

(declare-fun tp!519274 () Bool)

(declare-fun tp!519276 () Bool)

(assert (=> b!1835707 (= e!1173119 (and tp!519274 tp!519276))))

(assert (= (and b!1834683 ((_ is ElementMatch!4975) (regTwo!10463 (regex!3647 (h!25576 rules!4610))))) b!1835706))

(assert (= (and b!1834683 ((_ is Concat!8713) (regTwo!10463 (regex!3647 (h!25576 rules!4610))))) b!1835707))

(assert (= (and b!1834683 ((_ is Star!4975) (regTwo!10463 (regex!3647 (h!25576 rules!4610))))) b!1835708))

(assert (= (and b!1834683 ((_ is Union!4975) (regTwo!10463 (regex!3647 (h!25576 rules!4610))))) b!1835709))

(declare-fun b!1835712 () Bool)

(declare-fun b_free!51411 () Bool)

(declare-fun b_next!52115 () Bool)

(assert (=> b!1835712 (= b_free!51411 (not b_next!52115))))

(declare-fun t!171335 () Bool)

(declare-fun tb!112465 () Bool)

(assert (=> (and b!1835712 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 rule!580))) t!171335) tb!112465))

(declare-fun result!135226 () Bool)

(assert (= result!135226 result!135054))

(assert (=> d!560870 t!171335))

(declare-fun t!171337 () Bool)

(declare-fun tb!112467 () Bool)

(assert (=> (and b!1835712 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 rule!580))) t!171337) tb!112467))

(declare-fun result!135228 () Bool)

(assert (= result!135228 result!134924))

(assert (=> d!560622 t!171337))

(declare-fun tb!112469 () Bool)

(declare-fun t!171339 () Bool)

(assert (=> (and b!1835712 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171339) tb!112469))

(declare-fun result!135230 () Bool)

(assert (= result!135230 result!135170))

(assert (=> d!561250 t!171339))

(declare-fun tb!112471 () Bool)

(declare-fun t!171341 () Bool)

(assert (=> (and b!1835712 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 rule!580))) t!171341) tb!112471))

(declare-fun result!135232 () Bool)

(assert (= result!135232 result!135202))

(assert (=> d!561294 t!171341))

(declare-fun t!171343 () Bool)

(declare-fun tb!112473 () Bool)

(assert (=> (and b!1835712 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 rule!580))) t!171343) tb!112473))

(declare-fun result!135234 () Bool)

(assert (= result!135234 result!135028))

(assert (=> d!560844 t!171343))

(declare-fun t!171345 () Bool)

(declare-fun tb!112475 () Bool)

(assert (=> (and b!1835712 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171345) tb!112475))

(declare-fun result!135236 () Bool)

(assert (= result!135236 result!135076))

(assert (=> d!560898 t!171345))

(assert (=> d!561292 t!171341))

(declare-fun b_and!143289 () Bool)

(declare-fun tp!519278 () Bool)

(assert (=> b!1835712 (= tp!519278 (and (=> t!171341 result!135232) (=> t!171343 result!135234) (=> t!171339 result!135230) (=> t!171345 result!135236) (=> t!171335 result!135226) (=> t!171337 result!135228) b_and!143289))))

(declare-fun b_free!51413 () Bool)

(declare-fun b_next!52117 () Bool)

(assert (=> b!1835712 (= b_free!51413 (not b_next!52117))))

(declare-fun t!171347 () Bool)

(declare-fun tb!112477 () Bool)

(assert (=> (and b!1835712 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) t!171347) tb!112477))

(declare-fun result!135238 () Bool)

(assert (= result!135238 result!134934))

(assert (=> d!560628 t!171347))

(declare-fun tb!112479 () Bool)

(declare-fun t!171349 () Bool)

(assert (=> (and b!1835712 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171349) tb!112479))

(declare-fun result!135240 () Bool)

(assert (= result!135240 result!135100))

(assert (=> d!561110 t!171349))

(declare-fun t!171351 () Bool)

(declare-fun tb!112481 () Bool)

(assert (=> (and b!1835712 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toChars!5053 (transformation!3647 rule!580))) t!171351) tb!112481))

(declare-fun result!135242 () Bool)

(assert (= result!135242 result!135214))

(assert (=> d!561294 t!171351))

(assert (=> b!1834648 t!171347))

(declare-fun t!171353 () Bool)

(declare-fun tb!112483 () Bool)

(assert (=> (and b!1835712 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171353) tb!112483))

(declare-fun result!135244 () Bool)

(assert (= result!135244 result!135088))

(assert (=> d!561102 t!171353))

(declare-fun tp!519277 () Bool)

(declare-fun b_and!143291 () Bool)

(assert (=> b!1835712 (= tp!519277 (and (=> t!171353 result!135244) (=> t!171349 result!135240) (=> t!171351 result!135242) (=> t!171347 result!135238) b_and!143291))))

(declare-fun e!1173122 () Bool)

(assert (=> b!1835712 (= e!1173122 (and tp!519278 tp!519277))))

(declare-fun e!1173121 () Bool)

(declare-fun tp!519280 () Bool)

(declare-fun b!1835711 () Bool)

(assert (=> b!1835711 (= e!1173121 (and tp!519280 (inv!26239 (tag!4061 (h!25576 (t!171046 (t!171046 rs!808))))) (inv!26242 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) e!1173122))))

(declare-fun b!1835710 () Bool)

(declare-fun e!1173123 () Bool)

(declare-fun tp!519279 () Bool)

(assert (=> b!1835710 (= e!1173123 (and e!1173121 tp!519279))))

(assert (=> b!1834693 (= tp!519062 e!1173123)))

(assert (= b!1835711 b!1835712))

(assert (= b!1835710 b!1835711))

(assert (= (and b!1834693 ((_ is Cons!20175) (t!171046 (t!171046 rs!808)))) b!1835710))

(declare-fun m!2263579 () Bool)

(assert (=> b!1835711 m!2263579))

(declare-fun m!2263581 () Bool)

(assert (=> b!1835711 m!2263581))

(declare-fun b!1835715 () Bool)

(declare-fun e!1173124 () Bool)

(declare-fun tp!519284 () Bool)

(assert (=> b!1835715 (= e!1173124 tp!519284)))

(declare-fun b!1835713 () Bool)

(assert (=> b!1835713 (= e!1173124 tp_is_empty!8185)))

(assert (=> b!1834682 (= tp!519047 e!1173124)))

(declare-fun b!1835716 () Bool)

(declare-fun tp!519282 () Bool)

(declare-fun tp!519281 () Bool)

(assert (=> b!1835716 (= e!1173124 (and tp!519282 tp!519281))))

(declare-fun b!1835714 () Bool)

(declare-fun tp!519283 () Bool)

(declare-fun tp!519285 () Bool)

(assert (=> b!1835714 (= e!1173124 (and tp!519283 tp!519285))))

(assert (= (and b!1834682 ((_ is ElementMatch!4975) (reg!5304 (regex!3647 (h!25576 rules!4610))))) b!1835713))

(assert (= (and b!1834682 ((_ is Concat!8713) (reg!5304 (regex!3647 (h!25576 rules!4610))))) b!1835714))

(assert (= (and b!1834682 ((_ is Star!4975) (reg!5304 (regex!3647 (h!25576 rules!4610))))) b!1835715))

(assert (= (and b!1834682 ((_ is Union!4975) (reg!5304 (regex!3647 (h!25576 rules!4610))))) b!1835716))

(declare-fun b!1835719 () Bool)

(declare-fun e!1173125 () Bool)

(declare-fun tp!519289 () Bool)

(assert (=> b!1835719 (= e!1173125 tp!519289)))

(declare-fun b!1835717 () Bool)

(assert (=> b!1835717 (= e!1173125 tp_is_empty!8185)))

(assert (=> b!1834687 (= tp!519050 e!1173125)))

(declare-fun b!1835720 () Bool)

(declare-fun tp!519287 () Bool)

(declare-fun tp!519286 () Bool)

(assert (=> b!1835720 (= e!1173125 (and tp!519287 tp!519286))))

(declare-fun b!1835718 () Bool)

(declare-fun tp!519288 () Bool)

(declare-fun tp!519290 () Bool)

(assert (=> b!1835718 (= e!1173125 (and tp!519288 tp!519290))))

(assert (= (and b!1834687 ((_ is ElementMatch!4975) (regOne!10463 (regex!3647 (rule!5831 token!567))))) b!1835717))

(assert (= (and b!1834687 ((_ is Concat!8713) (regOne!10463 (regex!3647 (rule!5831 token!567))))) b!1835718))

(assert (= (and b!1834687 ((_ is Star!4975) (regOne!10463 (regex!3647 (rule!5831 token!567))))) b!1835719))

(assert (= (and b!1834687 ((_ is Union!4975) (regOne!10463 (regex!3647 (rule!5831 token!567))))) b!1835720))

(declare-fun b!1835723 () Bool)

(declare-fun e!1173126 () Bool)

(declare-fun tp!519294 () Bool)

(assert (=> b!1835723 (= e!1173126 tp!519294)))

(declare-fun b!1835721 () Bool)

(assert (=> b!1835721 (= e!1173126 tp_is_empty!8185)))

(assert (=> b!1834687 (= tp!519049 e!1173126)))

(declare-fun b!1835724 () Bool)

(declare-fun tp!519292 () Bool)

(declare-fun tp!519291 () Bool)

(assert (=> b!1835724 (= e!1173126 (and tp!519292 tp!519291))))

(declare-fun b!1835722 () Bool)

(declare-fun tp!519293 () Bool)

(declare-fun tp!519295 () Bool)

(assert (=> b!1835722 (= e!1173126 (and tp!519293 tp!519295))))

(assert (= (and b!1834687 ((_ is ElementMatch!4975) (regTwo!10463 (regex!3647 (rule!5831 token!567))))) b!1835721))

(assert (= (and b!1834687 ((_ is Concat!8713) (regTwo!10463 (regex!3647 (rule!5831 token!567))))) b!1835722))

(assert (= (and b!1834687 ((_ is Star!4975) (regTwo!10463 (regex!3647 (rule!5831 token!567))))) b!1835723))

(assert (= (and b!1834687 ((_ is Union!4975) (regTwo!10463 (regex!3647 (rule!5831 token!567))))) b!1835724))

(declare-fun b!1835727 () Bool)

(declare-fun e!1173127 () Bool)

(declare-fun tp!519299 () Bool)

(assert (=> b!1835727 (= e!1173127 tp!519299)))

(declare-fun b!1835725 () Bool)

(assert (=> b!1835725 (= e!1173127 tp_is_empty!8185)))

(assert (=> b!1834694 (= tp!519063 e!1173127)))

(declare-fun b!1835728 () Bool)

(declare-fun tp!519297 () Bool)

(declare-fun tp!519296 () Bool)

(assert (=> b!1835728 (= e!1173127 (and tp!519297 tp!519296))))

(declare-fun b!1835726 () Bool)

(declare-fun tp!519298 () Bool)

(declare-fun tp!519300 () Bool)

(assert (=> b!1835726 (= e!1173127 (and tp!519298 tp!519300))))

(assert (= (and b!1834694 ((_ is ElementMatch!4975) (regex!3647 (h!25576 (t!171046 rs!808))))) b!1835725))

(assert (= (and b!1834694 ((_ is Concat!8713) (regex!3647 (h!25576 (t!171046 rs!808))))) b!1835726))

(assert (= (and b!1834694 ((_ is Star!4975) (regex!3647 (h!25576 (t!171046 rs!808))))) b!1835727))

(assert (= (and b!1834694 ((_ is Union!4975) (regex!3647 (h!25576 (t!171046 rs!808))))) b!1835728))

(declare-fun b!1835729 () Bool)

(declare-fun e!1173128 () Bool)

(declare-fun tp!519301 () Bool)

(assert (=> b!1835729 (= e!1173128 (and tp_is_empty!8185 tp!519301))))

(assert (=> b!1834696 (= tp!519064 e!1173128)))

(assert (= (and b!1834696 ((_ is Cons!20174) (t!171045 (t!171045 input!3681)))) b!1835729))

(declare-fun tp!519310 () Bool)

(declare-fun tp!519309 () Bool)

(declare-fun b!1835738 () Bool)

(declare-fun e!1173134 () Bool)

(assert (=> b!1835738 (= e!1173134 (and (inv!26246 (left!16120 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))))) tp!519310 (inv!26246 (right!16450 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))))) tp!519309))))

(declare-fun b!1835740 () Bool)

(declare-fun e!1173133 () Bool)

(declare-fun tp!519308 () Bool)

(assert (=> b!1835740 (= e!1173133 tp!519308)))

(declare-fun b!1835739 () Bool)

(declare-fun inv!26253 (IArray!13363) Bool)

(assert (=> b!1835739 (= e!1173134 (and (inv!26253 (xs!9555 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))))) e!1173133))))

(assert (=> b!1834183 (= tp!518959 (and (inv!26246 (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567)))) e!1173134))))

(assert (= (and b!1834183 ((_ is Node!6679) (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))))) b!1835738))

(assert (= b!1835739 b!1835740))

(assert (= (and b!1834183 ((_ is Leaf!9723) (c!299104 (dynLambda!10040 (toChars!5053 (transformation!3647 (rule!5831 token!567))) (value!113606 token!567))))) b!1835739))

(declare-fun m!2263583 () Bool)

(assert (=> b!1835738 m!2263583))

(declare-fun m!2263585 () Bool)

(assert (=> b!1835738 m!2263585))

(declare-fun m!2263587 () Bool)

(assert (=> b!1835739 m!2263587))

(assert (=> b!1834183 m!2261841))

(declare-fun b!1835743 () Bool)

(declare-fun e!1173135 () Bool)

(declare-fun tp!519314 () Bool)

(assert (=> b!1835743 (= e!1173135 tp!519314)))

(declare-fun b!1835741 () Bool)

(assert (=> b!1835741 (= e!1173135 tp_is_empty!8185)))

(assert (=> b!1834679 (= tp!519040 e!1173135)))

(declare-fun b!1835744 () Bool)

(declare-fun tp!519312 () Bool)

(declare-fun tp!519311 () Bool)

(assert (=> b!1835744 (= e!1173135 (and tp!519312 tp!519311))))

(declare-fun b!1835742 () Bool)

(declare-fun tp!519313 () Bool)

(declare-fun tp!519315 () Bool)

(assert (=> b!1835742 (= e!1173135 (and tp!519313 tp!519315))))

(assert (= (and b!1834679 ((_ is ElementMatch!4975) (regOne!10463 (regex!3647 rule!580)))) b!1835741))

(assert (= (and b!1834679 ((_ is Concat!8713) (regOne!10463 (regex!3647 rule!580)))) b!1835742))

(assert (= (and b!1834679 ((_ is Star!4975) (regOne!10463 (regex!3647 rule!580)))) b!1835743))

(assert (= (and b!1834679 ((_ is Union!4975) (regOne!10463 (regex!3647 rule!580)))) b!1835744))

(declare-fun b!1835747 () Bool)

(declare-fun e!1173136 () Bool)

(declare-fun tp!519319 () Bool)

(assert (=> b!1835747 (= e!1173136 tp!519319)))

(declare-fun b!1835745 () Bool)

(assert (=> b!1835745 (= e!1173136 tp_is_empty!8185)))

(assert (=> b!1834679 (= tp!519039 e!1173136)))

(declare-fun b!1835748 () Bool)

(declare-fun tp!519317 () Bool)

(declare-fun tp!519316 () Bool)

(assert (=> b!1835748 (= e!1173136 (and tp!519317 tp!519316))))

(declare-fun b!1835746 () Bool)

(declare-fun tp!519318 () Bool)

(declare-fun tp!519320 () Bool)

(assert (=> b!1835746 (= e!1173136 (and tp!519318 tp!519320))))

(assert (= (and b!1834679 ((_ is ElementMatch!4975) (regTwo!10463 (regex!3647 rule!580)))) b!1835745))

(assert (= (and b!1834679 ((_ is Concat!8713) (regTwo!10463 (regex!3647 rule!580)))) b!1835746))

(assert (= (and b!1834679 ((_ is Star!4975) (regTwo!10463 (regex!3647 rule!580)))) b!1835747))

(assert (= (and b!1834679 ((_ is Union!4975) (regTwo!10463 (regex!3647 rule!580)))) b!1835748))

(declare-fun b!1835749 () Bool)

(declare-fun e!1173137 () Bool)

(declare-fun tp!519321 () Bool)

(assert (=> b!1835749 (= e!1173137 (and tp_is_empty!8185 tp!519321))))

(assert (=> b!1834692 (= tp!519059 e!1173137)))

(assert (= (and b!1834692 ((_ is Cons!20174) (t!171045 (t!171045 suffix!1698)))) b!1835749))

(declare-fun b!1835752 () Bool)

(declare-fun b_free!51415 () Bool)

(declare-fun b_next!52119 () Bool)

(assert (=> b!1835752 (= b_free!51415 (not b_next!52119))))

(declare-fun t!171355 () Bool)

(declare-fun tb!112485 () Bool)

(assert (=> (and b!1835752 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 rule!580))) t!171355) tb!112485))

(declare-fun result!135248 () Bool)

(assert (= result!135248 result!135054))

(assert (=> d!560870 t!171355))

(declare-fun t!171357 () Bool)

(declare-fun tb!112487 () Bool)

(assert (=> (and b!1835752 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 rule!580))) t!171357) tb!112487))

(declare-fun result!135250 () Bool)

(assert (= result!135250 result!134924))

(assert (=> d!560622 t!171357))

(declare-fun t!171359 () Bool)

(declare-fun tb!112489 () Bool)

(assert (=> (and b!1835752 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171359) tb!112489))

(declare-fun result!135252 () Bool)

(assert (= result!135252 result!135170))

(assert (=> d!561250 t!171359))

(declare-fun t!171361 () Bool)

(declare-fun tb!112491 () Bool)

(assert (=> (and b!1835752 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 rule!580))) t!171361) tb!112491))

(declare-fun result!135254 () Bool)

(assert (= result!135254 result!135202))

(assert (=> d!561294 t!171361))

(declare-fun t!171363 () Bool)

(declare-fun tb!112493 () Bool)

(assert (=> (and b!1835752 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 rule!580))) t!171363) tb!112493))

(declare-fun result!135256 () Bool)

(assert (= result!135256 result!135028))

(assert (=> d!560844 t!171363))

(declare-fun t!171365 () Bool)

(declare-fun tb!112495 () Bool)

(assert (=> (and b!1835752 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171365) tb!112495))

(declare-fun result!135258 () Bool)

(assert (= result!135258 result!135076))

(assert (=> d!560898 t!171365))

(assert (=> d!561292 t!171361))

(declare-fun b_and!143293 () Bool)

(declare-fun tp!519323 () Bool)

(assert (=> b!1835752 (= tp!519323 (and (=> t!171365 result!135258) (=> t!171359 result!135252) (=> t!171363 result!135256) (=> t!171357 result!135250) (=> t!171361 result!135254) (=> t!171355 result!135248) b_and!143293))))

(declare-fun b_free!51417 () Bool)

(declare-fun b_next!52121 () Bool)

(assert (=> b!1835752 (= b_free!51417 (not b_next!52121))))

(declare-fun tb!112497 () Bool)

(declare-fun t!171367 () Bool)

(assert (=> (and b!1835752 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toChars!5053 (transformation!3647 (rule!5831 token!567)))) t!171367) tb!112497))

(declare-fun result!135260 () Bool)

(assert (= result!135260 result!134934))

(assert (=> d!560628 t!171367))

(declare-fun tb!112499 () Bool)

(declare-fun t!171369 () Bool)

(assert (=> (and b!1835752 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!712017)))))) t!171369) tb!112499))

(declare-fun result!135262 () Bool)

(assert (= result!135262 result!135100))

(assert (=> d!561110 t!171369))

(declare-fun tb!112501 () Bool)

(declare-fun t!171371 () Bool)

(assert (=> (and b!1835752 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toChars!5053 (transformation!3647 rule!580))) t!171371) tb!112501))

(declare-fun result!135264 () Bool)

(assert (= result!135264 result!135214))

(assert (=> d!561294 t!171371))

(assert (=> b!1834648 t!171367))

(declare-fun tb!112503 () Bool)

(declare-fun t!171373 () Bool)

(assert (=> (and b!1835752 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toChars!5053 (transformation!3647 (rule!5831 (_1!11215 (get!6228 lt!711984)))))) t!171373) tb!112503))

(declare-fun result!135266 () Bool)

(assert (= result!135266 result!135088))

(assert (=> d!561102 t!171373))

(declare-fun b_and!143295 () Bool)

(declare-fun tp!519322 () Bool)

(assert (=> b!1835752 (= tp!519322 (and (=> t!171369 result!135262) (=> t!171373 result!135266) (=> t!171371 result!135264) (=> t!171367 result!135260) b_and!143295))))

(declare-fun e!1173140 () Bool)

(assert (=> b!1835752 (= e!1173140 (and tp!519323 tp!519322))))

(declare-fun b!1835751 () Bool)

(declare-fun e!1173139 () Bool)

(declare-fun tp!519325 () Bool)

(assert (=> b!1835751 (= e!1173139 (and tp!519325 (inv!26239 (tag!4061 (h!25576 (t!171046 (t!171046 rules!4610))))) (inv!26242 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) e!1173140))))

(declare-fun b!1835750 () Bool)

(declare-fun e!1173141 () Bool)

(declare-fun tp!519324 () Bool)

(assert (=> b!1835750 (= e!1173141 (and e!1173139 tp!519324))))

(assert (=> b!1834658 (= tp!519024 e!1173141)))

(assert (= b!1835751 b!1835752))

(assert (= b!1835750 b!1835751))

(assert (= (and b!1834658 ((_ is Cons!20175) (t!171046 (t!171046 rules!4610)))) b!1835750))

(declare-fun m!2263589 () Bool)

(assert (=> b!1835751 m!2263589))

(declare-fun m!2263591 () Bool)

(assert (=> b!1835751 m!2263591))

(declare-fun b!1835755 () Bool)

(declare-fun e!1173142 () Bool)

(declare-fun tp!519329 () Bool)

(assert (=> b!1835755 (= e!1173142 tp!519329)))

(declare-fun b!1835753 () Bool)

(assert (=> b!1835753 (= e!1173142 tp_is_empty!8185)))

(assert (=> b!1834659 (= tp!519025 e!1173142)))

(declare-fun b!1835756 () Bool)

(declare-fun tp!519327 () Bool)

(declare-fun tp!519326 () Bool)

(assert (=> b!1835756 (= e!1173142 (and tp!519327 tp!519326))))

(declare-fun b!1835754 () Bool)

(declare-fun tp!519328 () Bool)

(declare-fun tp!519330 () Bool)

(assert (=> b!1835754 (= e!1173142 (and tp!519328 tp!519330))))

(assert (= (and b!1834659 ((_ is ElementMatch!4975) (regex!3647 (h!25576 (t!171046 rules!4610))))) b!1835753))

(assert (= (and b!1834659 ((_ is Concat!8713) (regex!3647 (h!25576 (t!171046 rules!4610))))) b!1835754))

(assert (= (and b!1834659 ((_ is Star!4975) (regex!3647 (h!25576 (t!171046 rules!4610))))) b!1835755))

(assert (= (and b!1834659 ((_ is Union!4975) (regex!3647 (h!25576 (t!171046 rules!4610))))) b!1835756))

(declare-fun b_lambda!60863 () Bool)

(assert (= b_lambda!60809 (or b!1834108 b_lambda!60863)))

(declare-fun bs!408278 () Bool)

(declare-fun d!561302 () Bool)

(assert (= bs!408278 (and d!561302 b!1834108)))

(assert (=> bs!408278 (= (dynLambda!10041 lambda!72098 (h!25576 (t!171046 rules!4610))) (regex!3647 (h!25576 (t!171046 rules!4610))))))

(assert (=> b!1835340 d!561302))

(declare-fun b_lambda!60865 () Bool)

(assert (= b_lambda!60791 (or (and b!1834102 b_free!51379 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1835712 b_free!51411 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834113 b_free!51383) (and b!1834103 b_free!51371 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834695 b_free!51399 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1835752 b_free!51415 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834660 b_free!51395 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834110 b_free!51375 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580)))) b_lambda!60865)))

(declare-fun b_lambda!60867 () Bool)

(assert (= b_lambda!60861 (or (and b!1834102 b_free!51379 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1835712 b_free!51411 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834113 b_free!51383) (and b!1834103 b_free!51371 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834695 b_free!51399 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1835752 b_free!51415 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834660 b_free!51395 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834110 b_free!51375 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580)))) b_lambda!60867)))

(declare-fun b_lambda!60869 () Bool)

(assert (= b_lambda!60807 (or d!560650 b_lambda!60869)))

(declare-fun bs!408279 () Bool)

(declare-fun d!561304 () Bool)

(assert (= bs!408279 (and d!561304 d!560650)))

(assert (=> bs!408279 (= (dynLambda!10041 lambda!72107 (h!25576 rules!4610)) (regex!3647 (h!25576 rules!4610)))))

(assert (=> b!1835226 d!561304))

(declare-fun b_lambda!60871 () Bool)

(assert (= b_lambda!60793 (or d!560728 b_lambda!60871)))

(declare-fun bs!408280 () Bool)

(declare-fun d!561306 () Bool)

(assert (= bs!408280 (and d!561306 d!560728)))

(assert (=> bs!408280 (= (dynLambda!10041 lambda!72131 (h!25576 (t!171046 rs!808))) (regex!3647 (h!25576 (t!171046 rs!808))))))

(assert (=> b!1834827 d!561306))

(declare-fun b_lambda!60873 () Bool)

(assert (= b_lambda!60859 (or (and b!1834660 b_free!51397 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toChars!5053 (transformation!3647 rule!580)))) (and b!1835712 b_free!51413 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toChars!5053 (transformation!3647 rule!580)))) (and b!1834103 b_free!51373 (= (toChars!5053 (transformation!3647 (h!25576 rs!808))) (toChars!5053 (transformation!3647 rule!580)))) (and b!1835752 b_free!51417 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toChars!5053 (transformation!3647 rule!580)))) (and b!1834110 b_free!51377 (= (toChars!5053 (transformation!3647 (h!25576 rules!4610))) (toChars!5053 (transformation!3647 rule!580)))) (and b!1834102 b_free!51381 (= (toChars!5053 (transformation!3647 (rule!5831 token!567))) (toChars!5053 (transformation!3647 rule!580)))) (and b!1834113 b_free!51385) (and b!1834695 b_free!51401 (= (toChars!5053 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toChars!5053 (transformation!3647 rule!580)))) b_lambda!60873)))

(declare-fun b_lambda!60875 () Bool)

(assert (= b_lambda!60781 (or (and b!1834102 b_free!51379 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1835712 b_free!51411 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834113 b_free!51383) (and b!1834103 b_free!51371 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834695 b_free!51399 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1835752 b_free!51415 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834660 b_free!51395 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834110 b_free!51375 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580)))) b_lambda!60875)))

(declare-fun b_lambda!60877 () Bool)

(assert (= b_lambda!60857 (or (and b!1834102 b_free!51379 (= (toValue!5194 (transformation!3647 (rule!5831 token!567))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1835712 b_free!51411 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rs!808))))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834113 b_free!51383) (and b!1834103 b_free!51371 (= (toValue!5194 (transformation!3647 (h!25576 rs!808))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834695 b_free!51399 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rs!808)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1835752 b_free!51415 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 (t!171046 rules!4610))))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834660 b_free!51395 (= (toValue!5194 (transformation!3647 (h!25576 (t!171046 rules!4610)))) (toValue!5194 (transformation!3647 rule!580)))) (and b!1834110 b_free!51375 (= (toValue!5194 (transformation!3647 (h!25576 rules!4610))) (toValue!5194 (transformation!3647 rule!580)))) b_lambda!60877)))

(declare-fun b_lambda!60879 () Bool)

(assert (= b_lambda!60801 (or d!560734 b_lambda!60879)))

(declare-fun bs!408281 () Bool)

(declare-fun d!561308 () Bool)

(assert (= bs!408281 (and d!561308 d!560734)))

(assert (=> bs!408281 (= (dynLambda!10050 lambda!72134 (h!25576 rs!808)) (ruleValid!1137 thiss!28318 (h!25576 rs!808)))))

(assert (=> bs!408281 m!2262773))

(assert (=> b!1834992 d!561308))

(declare-fun b_lambda!60881 () Bool)

(assert (= b_lambda!60855 (or d!560652 b_lambda!60881)))

(declare-fun bs!408282 () Bool)

(declare-fun d!561310 () Bool)

(assert (= bs!408282 (and d!561310 d!560652)))

(assert (=> bs!408282 (= (dynLambda!10043 lambda!72122 (h!25577 (map!4189 rules!4610 lambda!72098))) (validRegex!2033 (h!25577 (map!4189 rules!4610 lambda!72098))))))

(declare-fun m!2263593 () Bool)

(assert (=> bs!408282 m!2263593))

(assert (=> b!1835614 d!561310))

(declare-fun b_lambda!60883 () Bool)

(assert (= b_lambda!60787 (or d!560722 b_lambda!60883)))

(declare-fun bs!408283 () Bool)

(declare-fun d!561312 () Bool)

(assert (= bs!408283 (and d!561312 d!560722)))

(assert (=> bs!408283 (= (dynLambda!10043 lambda!72128 (h!25577 (map!4189 rules!4610 lambda!72127))) (validRegex!2033 (h!25577 (map!4189 rules!4610 lambda!72127))))))

(declare-fun m!2263595 () Bool)

(assert (=> bs!408283 m!2263595))

(assert (=> b!1834822 d!561312))

(declare-fun b_lambda!60885 () Bool)

(assert (= b_lambda!60783 (or d!560722 b_lambda!60885)))

(declare-fun bs!408284 () Bool)

(declare-fun d!561314 () Bool)

(assert (= bs!408284 (and d!561314 d!560722)))

(assert (=> bs!408284 (= (dynLambda!10041 lambda!72127 (h!25576 rules!4610)) (regex!3647 (h!25576 rules!4610)))))

(assert (=> b!1834808 d!561314))

(declare-fun b_lambda!60887 () Bool)

(assert (= b_lambda!60811 (or b!1834108 b_lambda!60887)))

(declare-fun bs!408285 () Bool)

(declare-fun d!561316 () Bool)

(assert (= bs!408285 (and d!561316 b!1834108)))

(assert (=> bs!408285 (= (dynLambda!10041 lambda!72098 (h!25576 (t!171046 rs!808))) (regex!3647 (h!25576 (t!171046 rs!808))))))

(assert (=> b!1835342 d!561316))

(check-sat (not b_lambda!60767) (not d!560942) (not d!560974) (not b!1835215) (not b!1835660) (not bs!408281) (not b!1835216) (not b!1835028) (not b!1835177) (not b!1835554) (not b!1835020) (not b!1834981) (not b!1835675) (not b_lambda!60803) (not b!1835176) (not b!1835659) (not b!1835704) (not b!1835728) (not tb!112409) (not b!1835513) (not b!1835705) (not b!1834859) (not b_next!52077) (not d!561286) (not b!1835738) (not d!561052) (not b!1835658) (not b_lambda!60873) (not b_next!52101) (not b!1835280) (not b!1835755) (not d!561300) (not b!1835094) (not b!1834953) (not b!1835663) (not b!1835718) (not b!1835746) (not b!1835603) (not bm!114923) (not bm!114932) (not d!560992) tp_is_empty!8185 (not b!1835354) (not b!1835701) (not b!1835206) (not b!1835303) (not b!1835739) (not d!560858) (not d!560864) (not b!1835615) (not b!1835287) (not d!561096) (not d!561112) (not b!1835355) (not b!1835723) (not d!561260) (not d!561154) (not d!561298) (not b!1834909) (not b!1835692) (not b!1834955) (not bm!114894) (not b!1835262) (not b!1834829) (not d!561138) (not b!1835208) (not b!1834939) (not b!1835300) (not b!1835628) (not b!1835662) (not b!1835754) (not b!1835665) (not b!1835226) (not d!560848) (not b!1835232) (not b!1835309) (not b!1835217) (not b!1835031) (not d!561168) (not d!561180) (not b!1835727) (not b!1835200) (not b!1835310) (not b!1835709) (not b!1835742) (not d!560894) (not b!1835691) (not b!1835311) (not d!561090) (not b_lambda!60805) (not b_lambda!60759) (not b_lambda!60763) (not b!1834794) b_and!143273 (not b!1835688) (not b!1835224) (not b!1835756) (not b!1835204) (not b_lambda!60827) (not d!560890) (not d!560976) (not b!1834806) (not b!1835726) (not b!1835672) (not d!560872) (not d!561252) (not b!1835278) (not b_next!52103) (not b!1835290) b_and!143283 (not b!1835514) (not d!560920) b_and!143275 (not b!1835710) (not d!561284) (not b_lambda!60869) (not b!1835189) (not d!561108) (not d!561132) (not d!561126) (not b!1834986) (not b!1835750) (not b!1835664) (not b!1835681) (not b!1834917) (not bm!114877) (not b!1834802) (not b!1834853) (not d!560846) (not b!1834961) (not b!1835203) (not b!1835032) (not b!1835556) (not b!1835021) (not b!1835616) (not d!561086) (not b!1835687) (not b!1834993) (not tb!112317) (not b!1835234) (not b!1835651) (not b_next!52083) (not b!1835239) (not d!561134) b_and!143291 (not b!1835161) (not b!1835191) (not b!1834804) (not b!1835351) (not b!1835720) (not b!1834977) b_and!143277 (not b_lambda!60795) b_and!143285 (not b_lambda!60863) (not b!1835749) b_and!143269 (not bm!114925) (not b!1835349) (not d!561142) (not b!1835669) b_and!143295 (not b_lambda!60885) (not b!1834808) (not b!1835562) (not bm!114931) (not b!1835645) (not d!561296) (not b_next!52115) (not b!1835652) (not b!1835222) (not d!561146) (not b!1835344) (not b!1835627) b_and!143293 (not d!561114) (not b!1835648) (not b!1835308) (not d!561178) (not d!561010) (not b!1834965) (not b!1835693) (not b!1835305) (not b!1834911) (not b_next!52119) (not bm!114922) (not b!1835307) (not b!1835338) (not tb!112441) (not bm!114846) (not b_next!52079) (not d!561156) (not b!1835700) (not b!1835689) (not b!1835740) (not b!1835193) (not b!1835714) b_and!143287 (not b_lambda!60883) (not bm!114864) (not b!1834914) (not b_lambda!60765) (not b_lambda!60875) (not b!1835748) (not d!561160) (not b_next!52099) (not b!1835272) (not b!1835159) (not b!1835340) (not d!561098) (not b!1835306) (not b_lambda!60865) (not tb!112341) (not d!561172) (not b!1835711) b_and!143271 (not b_next!52121) (not d!561140) (not b!1835207) (not b!1834796) (not b!1835297) (not b!1835696) b_and!143265 (not b!1835729) (not bm!114927) (not bm!114928) (not b_lambda!60761) (not b!1835697) (not d!560902) (not b!1835685) (not d!561100) (not b!1834823) (not d!560962) (not b!1835238) (not d!561136) (not b!1835235) b_and!143279 (not b!1835188) (not b!1835273) (not d!561148) (not b!1835716) (not d!561106) (not b!1835214) (not tb!112269) (not b!1835221) (not b!1835617) (not d!560982) (not b!1835676) (not b!1835673) (not b!1835299) b_and!143289 (not d!561258) (not b!1835622) (not bm!114933) (not bm!114937) (not b!1834987) (not b!1834969) (not b!1835604) (not b!1834854) (not bm!114875) (not d!561120) b_and!143281 (not b!1835269) (not bs!408283) (not b!1835219) (not tb!112453) b_and!143267 (not b_next!52105) (not b!1834916) (not d!561122) (not b!1835744) (not b!1835715) (not b!1835671) (not b!1835668) (not d!560860) (not b!1835608) (not d!560850) (not d!561102) (not d!561054) (not b!1835283) (not d!561294) (not b!1835026) (not b!1834995) (not b_lambda!60887) (not d!560910) (not b!1835719) (not b!1835703) (not b!1834800) (not b!1834795) (not b!1835695) (not b!1835679) (not b_next!52081) (not b!1835015) (not b!1834860) (not bs!408282) (not b!1835343) (not b!1835707) (not b!1835003) (not b!1835192) (not d!561254) (not b!1834979) (not bm!114926) (not b!1835654) (not bm!114861) (not b!1835517) (not b!1835699) (not b!1835683) (not b_lambda!60867) (not b!1835722) (not d!560862) (not b!1834857) (not b_lambda!60877) (not b!1835667) (not b!1835655) (not bm!114934) (not b!1835198) (not b!1835342) (not b!1835743) (not b!1834912) (not tb!112329) (not d!561020) (not d!560840) (not b!1835680) (not bm!114924) (not b!1834838) (not b!1835684) (not tb!112295) (not b!1835516) (not b_next!52087) (not d!561116) (not b!1835160) (not b!1834855) (not b!1834836) (not b!1835304) (not b!1834915) (not d!561110) (not b!1834910) (not b!1835751) (not b_lambda!60871) (not bm!114876) (not d!561124) (not b!1835650) (not b_next!52085) (not b!1834825) (not bm!114847) (not b!1835112) (not d!560852) (not bm!114867) (not b!1835656) (not b!1835747) (not b!1834827) (not d!560986) (not b!1834862) (not b!1835677) (not b!1834183) (not b_lambda!60881) (not b!1835630) (not b!1835724) (not b!1835284) (not d!560922) (not b_next!52089) (not b_next!52117) (not b!1835708) (not b!1835270) (not b_next!52075) (not b_lambda!60879) (not bm!114929) (not b!1835624) (not d!561288))
(check-sat (not b_next!52077) (not b_next!52101) b_and!143273 b_and!143275 (not b_next!52083) b_and!143287 (not b_next!52099) b_and!143279 b_and!143289 b_and!143281 (not b_next!52081) (not b_next!52087) (not b_next!52085) (not b_next!52103) b_and!143283 b_and!143291 b_and!143277 b_and!143285 b_and!143269 b_and!143295 (not b_next!52115) b_and!143293 (not b_next!52119) (not b_next!52079) b_and!143271 (not b_next!52121) b_and!143265 b_and!143267 (not b_next!52105) (not b_next!52075) (not b_next!52089) (not b_next!52117))
