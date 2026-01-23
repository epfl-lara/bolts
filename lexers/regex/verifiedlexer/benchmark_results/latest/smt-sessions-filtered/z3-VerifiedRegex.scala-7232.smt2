; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385120 () Bool)

(assert start!385120)

(declare-fun b!4077666 () Bool)

(declare-fun b_free!113705 () Bool)

(declare-fun b_next!114409 () Bool)

(assert (=> b!4077666 (= b_free!113705 (not b_next!114409))))

(declare-fun tp!1234406 () Bool)

(declare-fun b_and!313555 () Bool)

(assert (=> b!4077666 (= tp!1234406 b_and!313555)))

(declare-fun b_free!113707 () Bool)

(declare-fun b_next!114411 () Bool)

(assert (=> b!4077666 (= b_free!113707 (not b_next!114411))))

(declare-fun tp!1234404 () Bool)

(declare-fun b_and!313557 () Bool)

(assert (=> b!4077666 (= tp!1234404 b_and!313557)))

(declare-fun b!4077672 () Bool)

(declare-fun b_free!113709 () Bool)

(declare-fun b_next!114413 () Bool)

(assert (=> b!4077672 (= b_free!113709 (not b_next!114413))))

(declare-fun tp!1234400 () Bool)

(declare-fun b_and!313559 () Bool)

(assert (=> b!4077672 (= tp!1234400 b_and!313559)))

(declare-fun b_free!113711 () Bool)

(declare-fun b_next!114415 () Bool)

(assert (=> b!4077672 (= b_free!113711 (not b_next!114415))))

(declare-fun tp!1234402 () Bool)

(declare-fun b_and!313561 () Bool)

(assert (=> b!4077672 (= tp!1234402 b_and!313561)))

(declare-fun b!4077660 () Bool)

(declare-fun res!1665615 () Bool)

(declare-fun e!2530875 () Bool)

(assert (=> b!4077660 (=> (not res!1665615) (not e!2530875))))

(declare-datatypes ((List!43777 0))(
  ( (Nil!43653) (Cons!43653 (h!49073 (_ BitVec 16)) (t!337464 List!43777)) )
))
(declare-datatypes ((TokenValue!7266 0))(
  ( (FloatLiteralValue!14532 (text!51307 List!43777)) (TokenValueExt!7265 (__x!26749 Int)) (Broken!36330 (value!221152 List!43777)) (Object!7389) (End!7266) (Def!7266) (Underscore!7266) (Match!7266) (Else!7266) (Error!7266) (Case!7266) (If!7266) (Extends!7266) (Abstract!7266) (Class!7266) (Val!7266) (DelimiterValue!14532 (del!7326 List!43777)) (KeywordValue!7272 (value!221153 List!43777)) (CommentValue!14532 (value!221154 List!43777)) (WhitespaceValue!14532 (value!221155 List!43777)) (IndentationValue!7266 (value!221156 List!43777)) (String!50079) (Int32!7266) (Broken!36331 (value!221157 List!43777)) (Boolean!7267) (Unit!63192) (OperatorValue!7269 (op!7326 List!43777)) (IdentifierValue!14532 (value!221158 List!43777)) (IdentifierValue!14533 (value!221159 List!43777)) (WhitespaceValue!14533 (value!221160 List!43777)) (True!14532) (False!14532) (Broken!36332 (value!221161 List!43777)) (Broken!36333 (value!221162 List!43777)) (True!14533) (RightBrace!7266) (RightBracket!7266) (Colon!7266) (Null!7266) (Comma!7266) (LeftBracket!7266) (False!14533) (LeftBrace!7266) (ImaginaryLiteralValue!7266 (text!51308 List!43777)) (StringLiteralValue!21798 (value!221163 List!43777)) (EOFValue!7266 (value!221164 List!43777)) (IdentValue!7266 (value!221165 List!43777)) (DelimiterValue!14533 (value!221166 List!43777)) (DedentValue!7266 (value!221167 List!43777)) (NewLineValue!7266 (value!221168 List!43777)) (IntegerValue!21798 (value!221169 (_ BitVec 32)) (text!51309 List!43777)) (IntegerValue!21799 (value!221170 Int) (text!51310 List!43777)) (Times!7266) (Or!7266) (Equal!7266) (Minus!7266) (Broken!36334 (value!221171 List!43777)) (And!7266) (Div!7266) (LessEqual!7266) (Mod!7266) (Concat!19207) (Not!7266) (Plus!7266) (SpaceValue!7266 (value!221172 List!43777)) (IntegerValue!21800 (value!221173 Int) (text!51311 List!43777)) (StringLiteralValue!21799 (text!51312 List!43777)) (FloatLiteralValue!14533 (text!51313 List!43777)) (BytesLiteralValue!7266 (value!221174 List!43777)) (CommentValue!14533 (value!221175 List!43777)) (StringLiteralValue!21800 (value!221176 List!43777)) (ErrorTokenValue!7266 (msg!7327 List!43777)) )
))
(declare-datatypes ((C!24068 0))(
  ( (C!24069 (val!14144 Int)) )
))
(declare-datatypes ((Regex!11941 0))(
  ( (ElementMatch!11941 (c!703362 C!24068)) (Concat!19208 (regOne!24394 Regex!11941) (regTwo!24394 Regex!11941)) (EmptyExpr!11941) (Star!11941 (reg!12270 Regex!11941)) (EmptyLang!11941) (Union!11941 (regOne!24395 Regex!11941) (regTwo!24395 Regex!11941)) )
))
(declare-datatypes ((String!50080 0))(
  ( (String!50081 (value!221177 String)) )
))
(declare-datatypes ((List!43778 0))(
  ( (Nil!43654) (Cons!43654 (h!49074 C!24068) (t!337465 List!43778)) )
))
(declare-datatypes ((IArray!26499 0))(
  ( (IArray!26500 (innerList!13307 List!43778)) )
))
(declare-datatypes ((Conc!13247 0))(
  ( (Node!13247 (left!32811 Conc!13247) (right!33141 Conc!13247) (csize!26724 Int) (cheight!13458 Int)) (Leaf!20480 (xs!16553 IArray!26499) (csize!26725 Int)) (Empty!13247) )
))
(declare-datatypes ((BalanceConc!26088 0))(
  ( (BalanceConc!26089 (c!703363 Conc!13247)) )
))
(declare-datatypes ((TokenValueInjection!13960 0))(
  ( (TokenValueInjection!13961 (toValue!9604 Int) (toChars!9463 Int)) )
))
(declare-datatypes ((Rule!13872 0))(
  ( (Rule!13873 (regex!7036 Regex!11941) (tag!7896 String!50080) (isSeparator!7036 Bool) (transformation!7036 TokenValueInjection!13960)) )
))
(declare-datatypes ((List!43779 0))(
  ( (Nil!43655) (Cons!43655 (h!49075 Rule!13872) (t!337466 List!43779)) )
))
(declare-fun rules!3870 () List!43779)

(declare-fun r!4213 () Rule!13872)

(declare-fun contains!8705 (List!43779 Rule!13872) Bool)

(assert (=> b!4077660 (= res!1665615 (contains!8705 rules!3870 r!4213))))

(declare-fun b!4077661 () Bool)

(declare-fun res!1665610 () Bool)

(assert (=> b!4077661 (=> (not res!1665610) (not e!2530875))))

(declare-fun p!2988 () List!43778)

(declare-fun isEmpty!26074 (List!43778) Bool)

(assert (=> b!4077661 (= res!1665610 (not (isEmpty!26074 p!2988)))))

(declare-fun e!2530867 () Bool)

(declare-fun e!2530870 () Bool)

(declare-fun b!4077662 () Bool)

(declare-fun tp!1234397 () Bool)

(declare-fun inv!58308 (String!50080) Bool)

(declare-fun inv!58310 (TokenValueInjection!13960) Bool)

(assert (=> b!4077662 (= e!2530870 (and tp!1234397 (inv!58308 (tag!7896 r!4213)) (inv!58310 (transformation!7036 r!4213)) e!2530867))))

(declare-fun b!4077663 () Bool)

(declare-fun res!1665614 () Bool)

(assert (=> b!4077663 (=> (not res!1665614) (not e!2530875))))

(declare-fun suffix!1518 () List!43778)

(declare-fun input!3411 () List!43778)

(declare-fun ++!11442 (List!43778 List!43778) List!43778)

(assert (=> b!4077663 (= res!1665614 (= input!3411 (++!11442 p!2988 suffix!1518)))))

(declare-fun b!4077664 () Bool)

(declare-fun e!2530872 () Bool)

(declare-fun e!2530864 () Bool)

(declare-fun tp!1234399 () Bool)

(assert (=> b!4077664 (= e!2530872 (and e!2530864 tp!1234399))))

(declare-fun b!4077665 () Bool)

(declare-fun e!2530865 () Bool)

(assert (=> b!4077665 (= e!2530865 true)))

(declare-datatypes ((LexerInterface!6625 0))(
  ( (LexerInterfaceExt!6622 (__x!26750 Int)) (Lexer!6623) )
))
(declare-fun thiss!26199 () LexerInterface!6625)

(declare-datatypes ((Token!13198 0))(
  ( (Token!13199 (value!221178 TokenValue!7266) (rule!10146 Rule!13872) (size!32609 Int) (originalCharacters!7630 List!43778)) )
))
(declare-datatypes ((tuple2!42626 0))(
  ( (tuple2!42627 (_1!24447 Token!13198) (_2!24447 List!43778)) )
))
(declare-datatypes ((Option!9444 0))(
  ( (None!9443) (Some!9443 (v!39893 tuple2!42626)) )
))
(declare-fun lt!1459047 () Option!9444)

(declare-fun maxPrefixOneRule!2911 (LexerInterface!6625 Rule!13872 List!43778) Option!9444)

(assert (=> b!4077665 (= lt!1459047 (maxPrefixOneRule!2911 thiss!26199 (h!49075 rules!3870) input!3411))))

(declare-fun rulesInvariant!5968 (LexerInterface!6625 List!43779) Bool)

(assert (=> b!4077665 (rulesInvariant!5968 thiss!26199 (t!337466 rules!3870))))

(declare-datatypes ((Unit!63193 0))(
  ( (Unit!63194) )
))
(declare-fun lt!1459048 () Unit!63193)

(declare-fun lemmaInvariantOnRulesThenOnTail!754 (LexerInterface!6625 Rule!13872 List!43779) Unit!63193)

(assert (=> b!4077665 (= lt!1459048 (lemmaInvariantOnRulesThenOnTail!754 thiss!26199 (h!49075 rules!3870) (t!337466 rules!3870)))))

(assert (=> b!4077666 (= e!2530867 (and tp!1234406 tp!1234404))))

(declare-fun b!4077667 () Bool)

(declare-fun e!2530868 () Bool)

(assert (=> b!4077667 (= e!2530875 e!2530868)))

(declare-fun res!1665611 () Bool)

(assert (=> b!4077667 (=> (not res!1665611) (not e!2530868))))

(declare-fun lt!1459045 () BalanceConc!26088)

(declare-fun maxPrefix!3917 (LexerInterface!6625 List!43779 List!43778) Option!9444)

(declare-fun apply!10219 (TokenValueInjection!13960 BalanceConc!26088) TokenValue!7266)

(declare-fun size!32610 (List!43778) Int)

(assert (=> b!4077667 (= res!1665611 (= (maxPrefix!3917 thiss!26199 rules!3870 input!3411) (Some!9443 (tuple2!42627 (Token!13199 (apply!10219 (transformation!7036 r!4213) lt!1459045) r!4213 (size!32610 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1459049 () Unit!63193)

(declare-fun lemmaSemiInverse!2003 (TokenValueInjection!13960 BalanceConc!26088) Unit!63193)

(assert (=> b!4077667 (= lt!1459049 (lemmaSemiInverse!2003 (transformation!7036 r!4213) lt!1459045))))

(declare-fun seqFromList!5253 (List!43778) BalanceConc!26088)

(assert (=> b!4077667 (= lt!1459045 (seqFromList!5253 p!2988))))

(declare-fun b!4077668 () Bool)

(declare-fun res!1665612 () Bool)

(assert (=> b!4077668 (=> (not res!1665612) (not e!2530875))))

(declare-fun isEmpty!26075 (List!43779) Bool)

(assert (=> b!4077668 (= res!1665612 (not (isEmpty!26075 rules!3870)))))

(declare-fun b!4077670 () Bool)

(assert (=> b!4077670 (= e!2530868 (not e!2530865))))

(declare-fun res!1665613 () Bool)

(assert (=> b!4077670 (=> res!1665613 e!2530865)))

(declare-fun matchR!5886 (Regex!11941 List!43778) Bool)

(assert (=> b!4077670 (= res!1665613 (not (matchR!5886 (regex!7036 r!4213) p!2988)))))

(declare-fun ruleValid!2960 (LexerInterface!6625 Rule!13872) Bool)

(assert (=> b!4077670 (ruleValid!2960 thiss!26199 r!4213)))

(declare-fun lt!1459046 () Unit!63193)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2028 (LexerInterface!6625 Rule!13872 List!43779) Unit!63193)

(assert (=> b!4077670 (= lt!1459046 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2028 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4077671 () Bool)

(declare-fun e!2530873 () Bool)

(declare-fun tp_is_empty!20885 () Bool)

(declare-fun tp!1234403 () Bool)

(assert (=> b!4077671 (= e!2530873 (and tp_is_empty!20885 tp!1234403))))

(declare-fun e!2530874 () Bool)

(assert (=> b!4077672 (= e!2530874 (and tp!1234400 tp!1234402))))

(declare-fun b!4077673 () Bool)

(declare-fun res!1665609 () Bool)

(assert (=> b!4077673 (=> (not res!1665609) (not e!2530875))))

(assert (=> b!4077673 (= res!1665609 (rulesInvariant!5968 thiss!26199 rules!3870))))

(declare-fun b!4077674 () Bool)

(declare-fun tp!1234398 () Bool)

(assert (=> b!4077674 (= e!2530864 (and tp!1234398 (inv!58308 (tag!7896 (h!49075 rules!3870))) (inv!58310 (transformation!7036 (h!49075 rules!3870))) e!2530874))))

(declare-fun b!4077675 () Bool)

(declare-fun e!2530866 () Bool)

(declare-fun tp!1234401 () Bool)

(assert (=> b!4077675 (= e!2530866 (and tp_is_empty!20885 tp!1234401))))

(declare-fun b!4077676 () Bool)

(declare-fun res!1665607 () Bool)

(assert (=> b!4077676 (=> res!1665607 e!2530865)))

(get-info :version)

(assert (=> b!4077676 (= res!1665607 (or (and ((_ is Cons!43655) rules!3870) (= (h!49075 rules!3870) r!4213)) (not ((_ is Cons!43655) rules!3870)) (= (h!49075 rules!3870) r!4213)))))

(declare-fun b!4077669 () Bool)

(declare-fun e!2530876 () Bool)

(declare-fun tp!1234405 () Bool)

(assert (=> b!4077669 (= e!2530876 (and tp_is_empty!20885 tp!1234405))))

(declare-fun res!1665608 () Bool)

(assert (=> start!385120 (=> (not res!1665608) (not e!2530875))))

(assert (=> start!385120 (= res!1665608 ((_ is Lexer!6623) thiss!26199))))

(assert (=> start!385120 e!2530875))

(assert (=> start!385120 true))

(assert (=> start!385120 e!2530866))

(assert (=> start!385120 e!2530872))

(assert (=> start!385120 e!2530876))

(assert (=> start!385120 e!2530873))

(assert (=> start!385120 e!2530870))

(assert (= (and start!385120 res!1665608) b!4077668))

(assert (= (and b!4077668 res!1665612) b!4077673))

(assert (= (and b!4077673 res!1665609) b!4077660))

(assert (= (and b!4077660 res!1665615) b!4077663))

(assert (= (and b!4077663 res!1665614) b!4077661))

(assert (= (and b!4077661 res!1665610) b!4077667))

(assert (= (and b!4077667 res!1665611) b!4077670))

(assert (= (and b!4077670 (not res!1665613)) b!4077676))

(assert (= (and b!4077676 (not res!1665607)) b!4077665))

(assert (= (and start!385120 ((_ is Cons!43654) suffix!1518)) b!4077675))

(assert (= b!4077674 b!4077672))

(assert (= b!4077664 b!4077674))

(assert (= (and start!385120 ((_ is Cons!43655) rules!3870)) b!4077664))

(assert (= (and start!385120 ((_ is Cons!43654) p!2988)) b!4077669))

(assert (= (and start!385120 ((_ is Cons!43654) input!3411)) b!4077671))

(assert (= b!4077662 b!4077666))

(assert (= start!385120 b!4077662))

(declare-fun m!4685745 () Bool)

(assert (=> b!4077674 m!4685745))

(declare-fun m!4685747 () Bool)

(assert (=> b!4077674 m!4685747))

(declare-fun m!4685749 () Bool)

(assert (=> b!4077667 m!4685749))

(declare-fun m!4685751 () Bool)

(assert (=> b!4077667 m!4685751))

(declare-fun m!4685753 () Bool)

(assert (=> b!4077667 m!4685753))

(declare-fun m!4685755 () Bool)

(assert (=> b!4077667 m!4685755))

(declare-fun m!4685757 () Bool)

(assert (=> b!4077667 m!4685757))

(declare-fun m!4685759 () Bool)

(assert (=> b!4077670 m!4685759))

(declare-fun m!4685761 () Bool)

(assert (=> b!4077670 m!4685761))

(declare-fun m!4685763 () Bool)

(assert (=> b!4077670 m!4685763))

(declare-fun m!4685765 () Bool)

(assert (=> b!4077661 m!4685765))

(declare-fun m!4685767 () Bool)

(assert (=> b!4077663 m!4685767))

(declare-fun m!4685769 () Bool)

(assert (=> b!4077668 m!4685769))

(declare-fun m!4685771 () Bool)

(assert (=> b!4077660 m!4685771))

(declare-fun m!4685773 () Bool)

(assert (=> b!4077665 m!4685773))

(declare-fun m!4685775 () Bool)

(assert (=> b!4077665 m!4685775))

(declare-fun m!4685777 () Bool)

(assert (=> b!4077665 m!4685777))

(declare-fun m!4685779 () Bool)

(assert (=> b!4077673 m!4685779))

(declare-fun m!4685781 () Bool)

(assert (=> b!4077662 m!4685781))

(declare-fun m!4685783 () Bool)

(assert (=> b!4077662 m!4685783))

(check-sat (not b!4077673) (not b!4077665) (not b_next!114411) (not b!4077669) (not b!4077674) (not b!4077670) b_and!313559 tp_is_empty!20885 (not b!4077667) (not b!4077660) b_and!313557 (not b!4077668) (not b!4077663) (not b!4077675) (not b!4077671) b_and!313555 (not b_next!114413) (not b_next!114415) (not b!4077662) (not b_next!114409) (not b!4077664) b_and!313561 (not b!4077661))
(check-sat (not b_next!114411) (not b_next!114415) b_and!313559 b_and!313557 (not b_next!114409) b_and!313561 b_and!313555 (not b_next!114413))
