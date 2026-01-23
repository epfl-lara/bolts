; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378752 () Bool)

(assert start!378752)

(declare-fun b!4022865 () Bool)

(declare-fun b_free!111953 () Bool)

(declare-fun b_next!112657 () Bool)

(assert (=> b!4022865 (= b_free!111953 (not b_next!112657))))

(declare-fun tp!1222603 () Bool)

(declare-fun b_and!309063 () Bool)

(assert (=> b!4022865 (= tp!1222603 b_and!309063)))

(declare-fun b_free!111955 () Bool)

(declare-fun b_next!112659 () Bool)

(assert (=> b!4022865 (= b_free!111955 (not b_next!112659))))

(declare-fun tp!1222608 () Bool)

(declare-fun b_and!309065 () Bool)

(assert (=> b!4022865 (= tp!1222608 b_and!309065)))

(declare-fun b!4022880 () Bool)

(declare-fun b_free!111957 () Bool)

(declare-fun b_next!112661 () Bool)

(assert (=> b!4022880 (= b_free!111957 (not b_next!112661))))

(declare-fun tp!1222613 () Bool)

(declare-fun b_and!309067 () Bool)

(assert (=> b!4022880 (= tp!1222613 b_and!309067)))

(declare-fun b_free!111959 () Bool)

(declare-fun b_next!112663 () Bool)

(assert (=> b!4022880 (= b_free!111959 (not b_next!112663))))

(declare-fun tp!1222611 () Bool)

(declare-fun b_and!309069 () Bool)

(assert (=> b!4022880 (= tp!1222611 b_and!309069)))

(declare-fun b!4022862 () Bool)

(declare-fun res!1636990 () Bool)

(declare-fun e!2495611 () Bool)

(assert (=> b!4022862 (=> (not res!1636990) (not e!2495611))))

(declare-datatypes ((C!23736 0))(
  ( (C!23737 (val!13962 Int)) )
))
(declare-datatypes ((List!43186 0))(
  ( (Nil!43062) (Cons!43062 (h!48482 C!23736) (t!333777 List!43186)) )
))
(declare-fun suffix!1299 () List!43186)

(declare-fun newSuffix!27 () List!43186)

(declare-fun size!32195 (List!43186) Int)

(assert (=> b!4022862 (= res!1636990 (>= (size!32195 suffix!1299) (size!32195 newSuffix!27)))))

(declare-fun b!4022863 () Bool)

(declare-fun res!1636991 () Bool)

(declare-fun e!2495607 () Bool)

(assert (=> b!4022863 (=> (not res!1636991) (not e!2495607))))

(declare-fun prefix!494 () List!43186)

(declare-datatypes ((IArray!26167 0))(
  ( (IArray!26168 (innerList!13141 List!43186)) )
))
(declare-datatypes ((Conc!13081 0))(
  ( (Node!13081 (left!32454 Conc!13081) (right!32784 Conc!13081) (csize!26392 Int) (cheight!13292 Int)) (Leaf!20223 (xs!16387 IArray!26167) (csize!26393 Int)) (Empty!13081) )
))
(declare-datatypes ((BalanceConc!25756 0))(
  ( (BalanceConc!25757 (c!695204 Conc!13081)) )
))
(declare-datatypes ((List!43187 0))(
  ( (Nil!43063) (Cons!43063 (h!48483 (_ BitVec 16)) (t!333778 List!43187)) )
))
(declare-datatypes ((TokenValue!7100 0))(
  ( (FloatLiteralValue!14200 (text!50145 List!43187)) (TokenValueExt!7099 (__x!26417 Int)) (Broken!35500 (value!216403 List!43187)) (Object!7223) (End!7100) (Def!7100) (Underscore!7100) (Match!7100) (Else!7100) (Error!7100) (Case!7100) (If!7100) (Extends!7100) (Abstract!7100) (Class!7100) (Val!7100) (DelimiterValue!14200 (del!7160 List!43187)) (KeywordValue!7106 (value!216404 List!43187)) (CommentValue!14200 (value!216405 List!43187)) (WhitespaceValue!14200 (value!216406 List!43187)) (IndentationValue!7100 (value!216407 List!43187)) (String!49217) (Int32!7100) (Broken!35501 (value!216408 List!43187)) (Boolean!7101) (Unit!62227) (OperatorValue!7103 (op!7160 List!43187)) (IdentifierValue!14200 (value!216409 List!43187)) (IdentifierValue!14201 (value!216410 List!43187)) (WhitespaceValue!14201 (value!216411 List!43187)) (True!14200) (False!14200) (Broken!35502 (value!216412 List!43187)) (Broken!35503 (value!216413 List!43187)) (True!14201) (RightBrace!7100) (RightBracket!7100) (Colon!7100) (Null!7100) (Comma!7100) (LeftBracket!7100) (False!14201) (LeftBrace!7100) (ImaginaryLiteralValue!7100 (text!50146 List!43187)) (StringLiteralValue!21300 (value!216414 List!43187)) (EOFValue!7100 (value!216415 List!43187)) (IdentValue!7100 (value!216416 List!43187)) (DelimiterValue!14201 (value!216417 List!43187)) (DedentValue!7100 (value!216418 List!43187)) (NewLineValue!7100 (value!216419 List!43187)) (IntegerValue!21300 (value!216420 (_ BitVec 32)) (text!50147 List!43187)) (IntegerValue!21301 (value!216421 Int) (text!50148 List!43187)) (Times!7100) (Or!7100) (Equal!7100) (Minus!7100) (Broken!35504 (value!216422 List!43187)) (And!7100) (Div!7100) (LessEqual!7100) (Mod!7100) (Concat!18875) (Not!7100) (Plus!7100) (SpaceValue!7100 (value!216423 List!43187)) (IntegerValue!21302 (value!216424 Int) (text!50149 List!43187)) (StringLiteralValue!21301 (text!50150 List!43187)) (FloatLiteralValue!14201 (text!50151 List!43187)) (BytesLiteralValue!7100 (value!216425 List!43187)) (CommentValue!14201 (value!216426 List!43187)) (StringLiteralValue!21302 (value!216427 List!43187)) (ErrorTokenValue!7100 (msg!7161 List!43187)) )
))
(declare-datatypes ((Regex!11775 0))(
  ( (ElementMatch!11775 (c!695205 C!23736)) (Concat!18876 (regOne!24062 Regex!11775) (regTwo!24062 Regex!11775)) (EmptyExpr!11775) (Star!11775 (reg!12104 Regex!11775)) (EmptyLang!11775) (Union!11775 (regOne!24063 Regex!11775) (regTwo!24063 Regex!11775)) )
))
(declare-datatypes ((String!49218 0))(
  ( (String!49219 (value!216428 String)) )
))
(declare-datatypes ((TokenValueInjection!13628 0))(
  ( (TokenValueInjection!13629 (toValue!9382 Int) (toChars!9241 Int)) )
))
(declare-datatypes ((Rule!13540 0))(
  ( (Rule!13541 (regex!6870 Regex!11775) (tag!7730 String!49218) (isSeparator!6870 Bool) (transformation!6870 TokenValueInjection!13628)) )
))
(declare-datatypes ((Token!12878 0))(
  ( (Token!12879 (value!216429 TokenValue!7100) (rule!9924 Rule!13540) (size!32196 Int) (originalCharacters!7470 List!43186)) )
))
(declare-fun token!484 () Token!12878)

(declare-fun suffixResult!105 () List!43186)

(declare-datatypes ((LexerInterface!6459 0))(
  ( (LexerInterfaceExt!6456 (__x!26418 Int)) (Lexer!6457) )
))
(declare-fun thiss!21717 () LexerInterface!6459)

(declare-datatypes ((List!43188 0))(
  ( (Nil!43064) (Cons!43064 (h!48484 Rule!13540) (t!333779 List!43188)) )
))
(declare-fun rules!2999 () List!43188)

(declare-datatypes ((tuple2!42182 0))(
  ( (tuple2!42183 (_1!24225 Token!12878) (_2!24225 List!43186)) )
))
(declare-datatypes ((Option!9284 0))(
  ( (None!9283) (Some!9283 (v!39659 tuple2!42182)) )
))
(declare-fun maxPrefix!3757 (LexerInterface!6459 List!43188 List!43186) Option!9284)

(declare-fun ++!11272 (List!43186 List!43186) List!43186)

(assert (=> b!4022863 (= res!1636991 (= (maxPrefix!3757 thiss!21717 rules!2999 (++!11272 prefix!494 suffix!1299)) (Some!9283 (tuple2!42183 token!484 suffixResult!105))))))

(declare-fun b!4022864 () Bool)

(declare-fun contains!8552 (List!43188 Rule!13540) Bool)

(assert (=> b!4022864 (= e!2495607 (not (contains!8552 rules!2999 (rule!9924 token!484))))))

(declare-fun e!2495610 () Bool)

(assert (=> b!4022865 (= e!2495610 (and tp!1222603 tp!1222608))))

(declare-fun b!4022866 () Bool)

(declare-fun e!2495602 () Bool)

(declare-fun tp_is_empty!20521 () Bool)

(declare-fun tp!1222606 () Bool)

(assert (=> b!4022866 (= e!2495602 (and tp_is_empty!20521 tp!1222606))))

(declare-fun e!2495613 () Bool)

(declare-fun b!4022867 () Bool)

(declare-fun e!2495606 () Bool)

(declare-fun tp!1222605 () Bool)

(declare-fun inv!21 (TokenValue!7100) Bool)

(assert (=> b!4022867 (= e!2495606 (and (inv!21 (value!216429 token!484)) e!2495613 tp!1222605))))

(declare-fun b!4022868 () Bool)

(declare-fun res!1636988 () Bool)

(assert (=> b!4022868 (=> (not res!1636988) (not e!2495611))))

(declare-fun isPrefix!3957 (List!43186 List!43186) Bool)

(assert (=> b!4022868 (= res!1636988 (isPrefix!3957 newSuffix!27 suffix!1299))))

(declare-fun b!4022869 () Bool)

(declare-fun e!2495604 () Bool)

(declare-fun tp!1222607 () Bool)

(assert (=> b!4022869 (= e!2495604 (and tp_is_empty!20521 tp!1222607))))

(declare-fun b!4022870 () Bool)

(declare-fun e!2495615 () Bool)

(declare-fun e!2495608 () Bool)

(declare-fun tp!1222614 () Bool)

(declare-fun inv!57514 (String!49218) Bool)

(declare-fun inv!57517 (TokenValueInjection!13628) Bool)

(assert (=> b!4022870 (= e!2495608 (and tp!1222614 (inv!57514 (tag!7730 (h!48484 rules!2999))) (inv!57517 (transformation!6870 (h!48484 rules!2999))) e!2495615))))

(declare-fun b!4022871 () Bool)

(declare-fun e!2495616 () Bool)

(declare-fun tp!1222609 () Bool)

(assert (=> b!4022871 (= e!2495616 (and tp_is_empty!20521 tp!1222609))))

(declare-fun b!4022872 () Bool)

(declare-fun res!1636985 () Bool)

(assert (=> b!4022872 (=> (not res!1636985) (not e!2495607))))

(declare-fun lt!1429215 () List!43186)

(declare-fun newSuffixResult!27 () List!43186)

(assert (=> b!4022872 (= res!1636985 (= (++!11272 lt!1429215 newSuffixResult!27) (++!11272 prefix!494 newSuffix!27)))))

(declare-fun b!4022873 () Bool)

(declare-fun res!1636986 () Bool)

(assert (=> b!4022873 (=> (not res!1636986) (not e!2495611))))

(declare-fun isEmpty!25708 (List!43188) Bool)

(assert (=> b!4022873 (= res!1636986 (not (isEmpty!25708 rules!2999)))))

(declare-fun b!4022874 () Bool)

(declare-fun e!2495605 () Bool)

(declare-fun tp!1222602 () Bool)

(assert (=> b!4022874 (= e!2495605 (and tp_is_empty!20521 tp!1222602))))

(declare-fun b!4022875 () Bool)

(declare-fun e!2495609 () Bool)

(declare-fun tp!1222612 () Bool)

(assert (=> b!4022875 (= e!2495609 (and e!2495608 tp!1222612))))

(declare-fun res!1636989 () Bool)

(assert (=> start!378752 (=> (not res!1636989) (not e!2495611))))

(get-info :version)

(assert (=> start!378752 (= res!1636989 ((_ is Lexer!6457) thiss!21717))))

(assert (=> start!378752 e!2495611))

(assert (=> start!378752 e!2495602))

(declare-fun inv!57518 (Token!12878) Bool)

(assert (=> start!378752 (and (inv!57518 token!484) e!2495606)))

(assert (=> start!378752 e!2495604))

(assert (=> start!378752 e!2495605))

(assert (=> start!378752 e!2495616))

(assert (=> start!378752 true))

(assert (=> start!378752 e!2495609))

(declare-fun e!2495614 () Bool)

(assert (=> start!378752 e!2495614))

(declare-fun b!4022876 () Bool)

(assert (=> b!4022876 (= e!2495611 e!2495607)))

(declare-fun res!1636984 () Bool)

(assert (=> b!4022876 (=> (not res!1636984) (not e!2495607))))

(assert (=> b!4022876 (= res!1636984 (>= (size!32195 prefix!494) (size!32195 lt!1429215)))))

(declare-fun list!16010 (BalanceConc!25756) List!43186)

(declare-fun charsOf!4686 (Token!12878) BalanceConc!25756)

(assert (=> b!4022876 (= lt!1429215 (list!16010 (charsOf!4686 token!484)))))

(declare-fun b!4022877 () Bool)

(declare-fun res!1636987 () Bool)

(assert (=> b!4022877 (=> (not res!1636987) (not e!2495611))))

(declare-fun rulesInvariant!5802 (LexerInterface!6459 List!43188) Bool)

(assert (=> b!4022877 (= res!1636987 (rulesInvariant!5802 thiss!21717 rules!2999))))

(declare-fun b!4022878 () Bool)

(declare-fun tp!1222604 () Bool)

(assert (=> b!4022878 (= e!2495614 (and tp_is_empty!20521 tp!1222604))))

(declare-fun b!4022879 () Bool)

(declare-fun tp!1222610 () Bool)

(assert (=> b!4022879 (= e!2495613 (and tp!1222610 (inv!57514 (tag!7730 (rule!9924 token!484))) (inv!57517 (transformation!6870 (rule!9924 token!484))) e!2495610))))

(assert (=> b!4022880 (= e!2495615 (and tp!1222613 tp!1222611))))

(assert (= (and start!378752 res!1636989) b!4022873))

(assert (= (and b!4022873 res!1636986) b!4022877))

(assert (= (and b!4022877 res!1636987) b!4022862))

(assert (= (and b!4022862 res!1636990) b!4022868))

(assert (= (and b!4022868 res!1636988) b!4022876))

(assert (= (and b!4022876 res!1636984) b!4022872))

(assert (= (and b!4022872 res!1636985) b!4022863))

(assert (= (and b!4022863 res!1636991) b!4022864))

(assert (= (and start!378752 ((_ is Cons!43062) prefix!494)) b!4022866))

(assert (= b!4022879 b!4022865))

(assert (= b!4022867 b!4022879))

(assert (= start!378752 b!4022867))

(assert (= (and start!378752 ((_ is Cons!43062) suffixResult!105)) b!4022869))

(assert (= (and start!378752 ((_ is Cons!43062) suffix!1299)) b!4022874))

(assert (= (and start!378752 ((_ is Cons!43062) newSuffix!27)) b!4022871))

(assert (= b!4022870 b!4022880))

(assert (= b!4022875 b!4022870))

(assert (= (and start!378752 ((_ is Cons!43064) rules!2999)) b!4022875))

(assert (= (and start!378752 ((_ is Cons!43062) newSuffixResult!27)) b!4022878))

(declare-fun m!4613977 () Bool)

(assert (=> b!4022868 m!4613977))

(declare-fun m!4613979 () Bool)

(assert (=> b!4022876 m!4613979))

(declare-fun m!4613981 () Bool)

(assert (=> b!4022876 m!4613981))

(declare-fun m!4613983 () Bool)

(assert (=> b!4022876 m!4613983))

(assert (=> b!4022876 m!4613983))

(declare-fun m!4613985 () Bool)

(assert (=> b!4022876 m!4613985))

(declare-fun m!4613987 () Bool)

(assert (=> b!4022879 m!4613987))

(declare-fun m!4613989 () Bool)

(assert (=> b!4022879 m!4613989))

(declare-fun m!4613991 () Bool)

(assert (=> b!4022864 m!4613991))

(declare-fun m!4613993 () Bool)

(assert (=> start!378752 m!4613993))

(declare-fun m!4613995 () Bool)

(assert (=> b!4022873 m!4613995))

(declare-fun m!4613997 () Bool)

(assert (=> b!4022872 m!4613997))

(declare-fun m!4613999 () Bool)

(assert (=> b!4022872 m!4613999))

(declare-fun m!4614001 () Bool)

(assert (=> b!4022862 m!4614001))

(declare-fun m!4614003 () Bool)

(assert (=> b!4022862 m!4614003))

(declare-fun m!4614005 () Bool)

(assert (=> b!4022863 m!4614005))

(assert (=> b!4022863 m!4614005))

(declare-fun m!4614007 () Bool)

(assert (=> b!4022863 m!4614007))

(declare-fun m!4614009 () Bool)

(assert (=> b!4022877 m!4614009))

(declare-fun m!4614011 () Bool)

(assert (=> b!4022870 m!4614011))

(declare-fun m!4614013 () Bool)

(assert (=> b!4022870 m!4614013))

(declare-fun m!4614015 () Bool)

(assert (=> b!4022867 m!4614015))

(check-sat b_and!309067 (not b!4022874) (not b!4022866) tp_is_empty!20521 (not b_next!112661) (not b!4022869) (not b!4022867) b_and!309069 (not b!4022862) (not b!4022873) (not start!378752) (not b!4022877) (not b_next!112663) (not b!4022878) (not b!4022871) b_and!309065 (not b!4022879) b_and!309063 (not b!4022863) (not b!4022864) (not b!4022875) (not b!4022876) (not b!4022872) (not b!4022870) (not b_next!112657) (not b_next!112659) (not b!4022868))
(check-sat (not b_next!112663) b_and!309067 b_and!309065 b_and!309063 (not b_next!112661) b_and!309069 (not b_next!112657) (not b_next!112659))
(get-model)

(declare-fun d!1191362 () Bool)

(declare-fun res!1637012 () Bool)

(declare-fun e!2495639 () Bool)

(assert (=> d!1191362 (=> (not res!1637012) (not e!2495639))))

(declare-fun rulesValid!2669 (LexerInterface!6459 List!43188) Bool)

(assert (=> d!1191362 (= res!1637012 (rulesValid!2669 thiss!21717 rules!2999))))

(assert (=> d!1191362 (= (rulesInvariant!5802 thiss!21717 rules!2999) e!2495639)))

(declare-fun b!4022922 () Bool)

(declare-datatypes ((List!43190 0))(
  ( (Nil!43066) (Cons!43066 (h!48486 String!49218) (t!333793 List!43190)) )
))
(declare-fun noDuplicateTag!2670 (LexerInterface!6459 List!43188 List!43190) Bool)

(assert (=> b!4022922 (= e!2495639 (noDuplicateTag!2670 thiss!21717 rules!2999 Nil!43066))))

(assert (= (and d!1191362 res!1637012) b!4022922))

(declare-fun m!4614061 () Bool)

(assert (=> d!1191362 m!4614061))

(declare-fun m!4614063 () Bool)

(assert (=> b!4022922 m!4614063))

(assert (=> b!4022877 d!1191362))

(declare-fun d!1191374 () Bool)

(declare-fun res!1637029 () Bool)

(declare-fun e!2495651 () Bool)

(assert (=> d!1191374 (=> (not res!1637029) (not e!2495651))))

(declare-fun isEmpty!25711 (List!43186) Bool)

(assert (=> d!1191374 (= res!1637029 (not (isEmpty!25711 (originalCharacters!7470 token!484))))))

(assert (=> d!1191374 (= (inv!57518 token!484) e!2495651)))

(declare-fun b!4022939 () Bool)

(declare-fun res!1637030 () Bool)

(assert (=> b!4022939 (=> (not res!1637030) (not e!2495651))))

(declare-fun dynLambda!18250 (Int TokenValue!7100) BalanceConc!25756)

(assert (=> b!4022939 (= res!1637030 (= (originalCharacters!7470 token!484) (list!16010 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))))))

(declare-fun b!4022940 () Bool)

(assert (=> b!4022940 (= e!2495651 (= (size!32196 token!484) (size!32195 (originalCharacters!7470 token!484))))))

(assert (= (and d!1191374 res!1637029) b!4022939))

(assert (= (and b!4022939 res!1637030) b!4022940))

(declare-fun b_lambda!117367 () Bool)

(assert (=> (not b_lambda!117367) (not b!4022939)))

(declare-fun t!333785 () Bool)

(declare-fun tb!241845 () Bool)

(assert (=> (and b!4022865 (= (toChars!9241 (transformation!6870 (rule!9924 token!484))) (toChars!9241 (transformation!6870 (rule!9924 token!484)))) t!333785) tb!241845))

(declare-fun b!4022951 () Bool)

(declare-fun e!2495660 () Bool)

(declare-fun tp!1222620 () Bool)

(declare-fun inv!57521 (Conc!13081) Bool)

(assert (=> b!4022951 (= e!2495660 (and (inv!57521 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))) tp!1222620))))

(declare-fun result!293088 () Bool)

(declare-fun inv!57522 (BalanceConc!25756) Bool)

(assert (=> tb!241845 (= result!293088 (and (inv!57522 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))) e!2495660))))

(assert (= tb!241845 b!4022951))

(declare-fun m!4614083 () Bool)

(assert (=> b!4022951 m!4614083))

(declare-fun m!4614085 () Bool)

(assert (=> tb!241845 m!4614085))

(assert (=> b!4022939 t!333785))

(declare-fun b_and!309079 () Bool)

(assert (= b_and!309065 (and (=> t!333785 result!293088) b_and!309079)))

(declare-fun tb!241847 () Bool)

(declare-fun t!333787 () Bool)

(assert (=> (and b!4022880 (= (toChars!9241 (transformation!6870 (h!48484 rules!2999))) (toChars!9241 (transformation!6870 (rule!9924 token!484)))) t!333787) tb!241847))

(declare-fun result!293092 () Bool)

(assert (= result!293092 result!293088))

(assert (=> b!4022939 t!333787))

(declare-fun b_and!309081 () Bool)

(assert (= b_and!309069 (and (=> t!333787 result!293092) b_and!309081)))

(declare-fun m!4614087 () Bool)

(assert (=> d!1191374 m!4614087))

(declare-fun m!4614089 () Bool)

(assert (=> b!4022939 m!4614089))

(assert (=> b!4022939 m!4614089))

(declare-fun m!4614091 () Bool)

(assert (=> b!4022939 m!4614091))

(declare-fun m!4614093 () Bool)

(assert (=> b!4022940 m!4614093))

(assert (=> start!378752 d!1191374))

(declare-fun b!4022981 () Bool)

(declare-fun e!2495681 () Bool)

(declare-fun inv!17 (TokenValue!7100) Bool)

(assert (=> b!4022981 (= e!2495681 (inv!17 (value!216429 token!484)))))

(declare-fun d!1191384 () Bool)

(declare-fun c!695227 () Bool)

(assert (=> d!1191384 (= c!695227 ((_ is IntegerValue!21300) (value!216429 token!484)))))

(declare-fun e!2495680 () Bool)

(assert (=> d!1191384 (= (inv!21 (value!216429 token!484)) e!2495680)))

(declare-fun b!4022982 () Bool)

(declare-fun inv!16 (TokenValue!7100) Bool)

(assert (=> b!4022982 (= e!2495680 (inv!16 (value!216429 token!484)))))

(declare-fun b!4022983 () Bool)

(assert (=> b!4022983 (= e!2495680 e!2495681)))

(declare-fun c!695226 () Bool)

(assert (=> b!4022983 (= c!695226 ((_ is IntegerValue!21301) (value!216429 token!484)))))

(declare-fun b!4022984 () Bool)

(declare-fun e!2495682 () Bool)

(declare-fun inv!15 (TokenValue!7100) Bool)

(assert (=> b!4022984 (= e!2495682 (inv!15 (value!216429 token!484)))))

(declare-fun b!4022985 () Bool)

(declare-fun res!1637046 () Bool)

(assert (=> b!4022985 (=> res!1637046 e!2495682)))

(assert (=> b!4022985 (= res!1637046 (not ((_ is IntegerValue!21302) (value!216429 token!484))))))

(assert (=> b!4022985 (= e!2495681 e!2495682)))

(assert (= (and d!1191384 c!695227) b!4022982))

(assert (= (and d!1191384 (not c!695227)) b!4022983))

(assert (= (and b!4022983 c!695226) b!4022981))

(assert (= (and b!4022983 (not c!695226)) b!4022985))

(assert (= (and b!4022985 (not res!1637046)) b!4022984))

(declare-fun m!4614109 () Bool)

(assert (=> b!4022981 m!4614109))

(declare-fun m!4614111 () Bool)

(assert (=> b!4022982 m!4614111))

(declare-fun m!4614113 () Bool)

(assert (=> b!4022984 m!4614113))

(assert (=> b!4022867 d!1191384))

(declare-fun d!1191396 () Bool)

(declare-fun lt!1429237 () Int)

(assert (=> d!1191396 (>= lt!1429237 0)))

(declare-fun e!2495685 () Int)

(assert (=> d!1191396 (= lt!1429237 e!2495685)))

(declare-fun c!695230 () Bool)

(assert (=> d!1191396 (= c!695230 ((_ is Nil!43062) prefix!494))))

(assert (=> d!1191396 (= (size!32195 prefix!494) lt!1429237)))

(declare-fun b!4022990 () Bool)

(assert (=> b!4022990 (= e!2495685 0)))

(declare-fun b!4022991 () Bool)

(assert (=> b!4022991 (= e!2495685 (+ 1 (size!32195 (t!333777 prefix!494))))))

(assert (= (and d!1191396 c!695230) b!4022990))

(assert (= (and d!1191396 (not c!695230)) b!4022991))

(declare-fun m!4614115 () Bool)

(assert (=> b!4022991 m!4614115))

(assert (=> b!4022876 d!1191396))

(declare-fun d!1191398 () Bool)

(declare-fun lt!1429238 () Int)

(assert (=> d!1191398 (>= lt!1429238 0)))

(declare-fun e!2495686 () Int)

(assert (=> d!1191398 (= lt!1429238 e!2495686)))

(declare-fun c!695231 () Bool)

(assert (=> d!1191398 (= c!695231 ((_ is Nil!43062) lt!1429215))))

(assert (=> d!1191398 (= (size!32195 lt!1429215) lt!1429238)))

(declare-fun b!4022992 () Bool)

(assert (=> b!4022992 (= e!2495686 0)))

(declare-fun b!4022993 () Bool)

(assert (=> b!4022993 (= e!2495686 (+ 1 (size!32195 (t!333777 lt!1429215))))))

(assert (= (and d!1191398 c!695231) b!4022992))

(assert (= (and d!1191398 (not c!695231)) b!4022993))

(declare-fun m!4614117 () Bool)

(assert (=> b!4022993 m!4614117))

(assert (=> b!4022876 d!1191398))

(declare-fun d!1191400 () Bool)

(declare-fun list!16012 (Conc!13081) List!43186)

(assert (=> d!1191400 (= (list!16010 (charsOf!4686 token!484)) (list!16012 (c!695204 (charsOf!4686 token!484))))))

(declare-fun bs!589940 () Bool)

(assert (= bs!589940 d!1191400))

(declare-fun m!4614119 () Bool)

(assert (=> bs!589940 m!4614119))

(assert (=> b!4022876 d!1191400))

(declare-fun d!1191402 () Bool)

(declare-fun lt!1429241 () BalanceConc!25756)

(assert (=> d!1191402 (= (list!16010 lt!1429241) (originalCharacters!7470 token!484))))

(assert (=> d!1191402 (= lt!1429241 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))))

(assert (=> d!1191402 (= (charsOf!4686 token!484) lt!1429241)))

(declare-fun b_lambda!117369 () Bool)

(assert (=> (not b_lambda!117369) (not d!1191402)))

(assert (=> d!1191402 t!333785))

(declare-fun b_and!309083 () Bool)

(assert (= b_and!309079 (and (=> t!333785 result!293088) b_and!309083)))

(assert (=> d!1191402 t!333787))

(declare-fun b_and!309085 () Bool)

(assert (= b_and!309081 (and (=> t!333787 result!293092) b_and!309085)))

(declare-fun m!4614121 () Bool)

(assert (=> d!1191402 m!4614121))

(assert (=> d!1191402 m!4614089))

(assert (=> b!4022876 d!1191402))

(declare-fun d!1191404 () Bool)

(declare-fun lt!1429244 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6531 (List!43188) (InoxSet Rule!13540))

(assert (=> d!1191404 (= lt!1429244 (select (content!6531 rules!2999) (rule!9924 token!484)))))

(declare-fun e!2495692 () Bool)

(assert (=> d!1191404 (= lt!1429244 e!2495692)))

(declare-fun res!1637051 () Bool)

(assert (=> d!1191404 (=> (not res!1637051) (not e!2495692))))

(assert (=> d!1191404 (= res!1637051 ((_ is Cons!43064) rules!2999))))

(assert (=> d!1191404 (= (contains!8552 rules!2999 (rule!9924 token!484)) lt!1429244)))

(declare-fun b!4022998 () Bool)

(declare-fun e!2495691 () Bool)

(assert (=> b!4022998 (= e!2495692 e!2495691)))

(declare-fun res!1637052 () Bool)

(assert (=> b!4022998 (=> res!1637052 e!2495691)))

(assert (=> b!4022998 (= res!1637052 (= (h!48484 rules!2999) (rule!9924 token!484)))))

(declare-fun b!4022999 () Bool)

(assert (=> b!4022999 (= e!2495691 (contains!8552 (t!333779 rules!2999) (rule!9924 token!484)))))

(assert (= (and d!1191404 res!1637051) b!4022998))

(assert (= (and b!4022998 (not res!1637052)) b!4022999))

(declare-fun m!4614123 () Bool)

(assert (=> d!1191404 m!4614123))

(declare-fun m!4614125 () Bool)

(assert (=> d!1191404 m!4614125))

(declare-fun m!4614127 () Bool)

(assert (=> b!4022999 m!4614127))

(assert (=> b!4022864 d!1191404))

(declare-fun d!1191406 () Bool)

(assert (=> d!1191406 (= (isEmpty!25708 rules!2999) ((_ is Nil!43064) rules!2999))))

(assert (=> b!4022873 d!1191406))

(declare-fun d!1191408 () Bool)

(declare-fun lt!1429245 () Int)

(assert (=> d!1191408 (>= lt!1429245 0)))

(declare-fun e!2495693 () Int)

(assert (=> d!1191408 (= lt!1429245 e!2495693)))

(declare-fun c!695232 () Bool)

(assert (=> d!1191408 (= c!695232 ((_ is Nil!43062) suffix!1299))))

(assert (=> d!1191408 (= (size!32195 suffix!1299) lt!1429245)))

(declare-fun b!4023000 () Bool)

(assert (=> b!4023000 (= e!2495693 0)))

(declare-fun b!4023001 () Bool)

(assert (=> b!4023001 (= e!2495693 (+ 1 (size!32195 (t!333777 suffix!1299))))))

(assert (= (and d!1191408 c!695232) b!4023000))

(assert (= (and d!1191408 (not c!695232)) b!4023001))

(declare-fun m!4614129 () Bool)

(assert (=> b!4023001 m!4614129))

(assert (=> b!4022862 d!1191408))

(declare-fun d!1191410 () Bool)

(declare-fun lt!1429252 () Int)

(assert (=> d!1191410 (>= lt!1429252 0)))

(declare-fun e!2495694 () Int)

(assert (=> d!1191410 (= lt!1429252 e!2495694)))

(declare-fun c!695233 () Bool)

(assert (=> d!1191410 (= c!695233 ((_ is Nil!43062) newSuffix!27))))

(assert (=> d!1191410 (= (size!32195 newSuffix!27) lt!1429252)))

(declare-fun b!4023004 () Bool)

(assert (=> b!4023004 (= e!2495694 0)))

(declare-fun b!4023005 () Bool)

(assert (=> b!4023005 (= e!2495694 (+ 1 (size!32195 (t!333777 newSuffix!27))))))

(assert (= (and d!1191410 c!695233) b!4023004))

(assert (= (and d!1191410 (not c!695233)) b!4023005))

(declare-fun m!4614131 () Bool)

(assert (=> b!4023005 m!4614131))

(assert (=> b!4022862 d!1191410))

(declare-fun b!4023095 () Bool)

(declare-fun e!2495741 () Bool)

(declare-fun lt!1429277 () Option!9284)

(declare-fun get!14139 (Option!9284) tuple2!42182)

(assert (=> b!4023095 (= e!2495741 (contains!8552 rules!2999 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))))

(declare-fun b!4023096 () Bool)

(declare-fun res!1637095 () Bool)

(assert (=> b!4023096 (=> (not res!1637095) (not e!2495741))))

(declare-fun apply!10065 (TokenValueInjection!13628 BalanceConc!25756) TokenValue!7100)

(declare-fun seqFromList!5093 (List!43186) BalanceConc!25756)

(assert (=> b!4023096 (= res!1637095 (= (value!216429 (_1!24225 (get!14139 lt!1429277))) (apply!10065 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))) (seqFromList!5093 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429277)))))))))

(declare-fun bm!286737 () Bool)

(declare-fun call!286742 () Option!9284)

(declare-fun maxPrefixOneRule!2775 (LexerInterface!6459 Rule!13540 List!43186) Option!9284)

(assert (=> bm!286737 (= call!286742 (maxPrefixOneRule!2775 thiss!21717 (h!48484 rules!2999) (++!11272 prefix!494 suffix!1299)))))

(declare-fun b!4023097 () Bool)

(declare-fun e!2495740 () Option!9284)

(declare-fun lt!1429276 () Option!9284)

(declare-fun lt!1429273 () Option!9284)

(assert (=> b!4023097 (= e!2495740 (ite (and ((_ is None!9283) lt!1429276) ((_ is None!9283) lt!1429273)) None!9283 (ite ((_ is None!9283) lt!1429273) lt!1429276 (ite ((_ is None!9283) lt!1429276) lt!1429273 (ite (>= (size!32196 (_1!24225 (v!39659 lt!1429276))) (size!32196 (_1!24225 (v!39659 lt!1429273)))) lt!1429276 lt!1429273)))))))

(assert (=> b!4023097 (= lt!1429276 call!286742)))

(assert (=> b!4023097 (= lt!1429273 (maxPrefix!3757 thiss!21717 (t!333779 rules!2999) (++!11272 prefix!494 suffix!1299)))))

(declare-fun b!4023098 () Bool)

(assert (=> b!4023098 (= e!2495740 call!286742)))

(declare-fun b!4023099 () Bool)

(declare-fun res!1637096 () Bool)

(assert (=> b!4023099 (=> (not res!1637096) (not e!2495741))))

(assert (=> b!4023099 (= res!1637096 (< (size!32195 (_2!24225 (get!14139 lt!1429277))) (size!32195 (++!11272 prefix!494 suffix!1299))))))

(declare-fun b!4023100 () Bool)

(declare-fun res!1637097 () Bool)

(assert (=> b!4023100 (=> (not res!1637097) (not e!2495741))))

(assert (=> b!4023100 (= res!1637097 (= (++!11272 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277)))) (_2!24225 (get!14139 lt!1429277))) (++!11272 prefix!494 suffix!1299)))))

(declare-fun d!1191412 () Bool)

(declare-fun e!2495739 () Bool)

(assert (=> d!1191412 e!2495739))

(declare-fun res!1637093 () Bool)

(assert (=> d!1191412 (=> res!1637093 e!2495739)))

(declare-fun isEmpty!25712 (Option!9284) Bool)

(assert (=> d!1191412 (= res!1637093 (isEmpty!25712 lt!1429277))))

(assert (=> d!1191412 (= lt!1429277 e!2495740)))

(declare-fun c!695240 () Bool)

(assert (=> d!1191412 (= c!695240 (and ((_ is Cons!43064) rules!2999) ((_ is Nil!43064) (t!333779 rules!2999))))))

(declare-datatypes ((Unit!62230 0))(
  ( (Unit!62231) )
))
(declare-fun lt!1429274 () Unit!62230)

(declare-fun lt!1429275 () Unit!62230)

(assert (=> d!1191412 (= lt!1429274 lt!1429275)))

(assert (=> d!1191412 (isPrefix!3957 (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299))))

(declare-fun lemmaIsPrefixRefl!2531 (List!43186 List!43186) Unit!62230)

(assert (=> d!1191412 (= lt!1429275 (lemmaIsPrefixRefl!2531 (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299)))))

(declare-fun rulesValidInductive!2501 (LexerInterface!6459 List!43188) Bool)

(assert (=> d!1191412 (rulesValidInductive!2501 thiss!21717 rules!2999)))

(assert (=> d!1191412 (= (maxPrefix!3757 thiss!21717 rules!2999 (++!11272 prefix!494 suffix!1299)) lt!1429277)))

(declare-fun b!4023101 () Bool)

(assert (=> b!4023101 (= e!2495739 e!2495741)))

(declare-fun res!1637098 () Bool)

(assert (=> b!4023101 (=> (not res!1637098) (not e!2495741))))

(declare-fun isDefined!7080 (Option!9284) Bool)

(assert (=> b!4023101 (= res!1637098 (isDefined!7080 lt!1429277))))

(declare-fun b!4023102 () Bool)

(declare-fun res!1637099 () Bool)

(assert (=> b!4023102 (=> (not res!1637099) (not e!2495741))))

(declare-fun matchR!5734 (Regex!11775 List!43186) Bool)

(assert (=> b!4023102 (= res!1637099 (matchR!5734 (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))) (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))))))

(declare-fun b!4023103 () Bool)

(declare-fun res!1637094 () Bool)

(assert (=> b!4023103 (=> (not res!1637094) (not e!2495741))))

(assert (=> b!4023103 (= res!1637094 (= (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277)))) (originalCharacters!7470 (_1!24225 (get!14139 lt!1429277)))))))

(assert (= (and d!1191412 c!695240) b!4023098))

(assert (= (and d!1191412 (not c!695240)) b!4023097))

(assert (= (or b!4023098 b!4023097) bm!286737))

(assert (= (and d!1191412 (not res!1637093)) b!4023101))

(assert (= (and b!4023101 res!1637098) b!4023103))

(assert (= (and b!4023103 res!1637094) b!4023099))

(assert (= (and b!4023099 res!1637096) b!4023100))

(assert (= (and b!4023100 res!1637097) b!4023096))

(assert (= (and b!4023096 res!1637095) b!4023102))

(assert (= (and b!4023102 res!1637099) b!4023095))

(declare-fun m!4614183 () Bool)

(assert (=> b!4023096 m!4614183))

(declare-fun m!4614185 () Bool)

(assert (=> b!4023096 m!4614185))

(assert (=> b!4023096 m!4614185))

(declare-fun m!4614187 () Bool)

(assert (=> b!4023096 m!4614187))

(assert (=> b!4023095 m!4614183))

(declare-fun m!4614189 () Bool)

(assert (=> b!4023095 m!4614189))

(assert (=> b!4023097 m!4614005))

(declare-fun m!4614191 () Bool)

(assert (=> b!4023097 m!4614191))

(assert (=> b!4023102 m!4614183))

(declare-fun m!4614193 () Bool)

(assert (=> b!4023102 m!4614193))

(assert (=> b!4023102 m!4614193))

(declare-fun m!4614195 () Bool)

(assert (=> b!4023102 m!4614195))

(assert (=> b!4023102 m!4614195))

(declare-fun m!4614197 () Bool)

(assert (=> b!4023102 m!4614197))

(assert (=> bm!286737 m!4614005))

(declare-fun m!4614199 () Bool)

(assert (=> bm!286737 m!4614199))

(assert (=> b!4023100 m!4614183))

(assert (=> b!4023100 m!4614193))

(assert (=> b!4023100 m!4614193))

(assert (=> b!4023100 m!4614195))

(assert (=> b!4023100 m!4614195))

(declare-fun m!4614201 () Bool)

(assert (=> b!4023100 m!4614201))

(declare-fun m!4614203 () Bool)

(assert (=> d!1191412 m!4614203))

(assert (=> d!1191412 m!4614005))

(assert (=> d!1191412 m!4614005))

(declare-fun m!4614205 () Bool)

(assert (=> d!1191412 m!4614205))

(assert (=> d!1191412 m!4614005))

(assert (=> d!1191412 m!4614005))

(declare-fun m!4614207 () Bool)

(assert (=> d!1191412 m!4614207))

(declare-fun m!4614209 () Bool)

(assert (=> d!1191412 m!4614209))

(declare-fun m!4614211 () Bool)

(assert (=> b!4023101 m!4614211))

(assert (=> b!4023103 m!4614183))

(assert (=> b!4023103 m!4614193))

(assert (=> b!4023103 m!4614193))

(assert (=> b!4023103 m!4614195))

(assert (=> b!4023099 m!4614183))

(declare-fun m!4614213 () Bool)

(assert (=> b!4023099 m!4614213))

(assert (=> b!4023099 m!4614005))

(declare-fun m!4614215 () Bool)

(assert (=> b!4023099 m!4614215))

(assert (=> b!4022863 d!1191412))

(declare-fun b!4023114 () Bool)

(declare-fun res!1637105 () Bool)

(declare-fun e!2495747 () Bool)

(assert (=> b!4023114 (=> (not res!1637105) (not e!2495747))))

(declare-fun lt!1429280 () List!43186)

(assert (=> b!4023114 (= res!1637105 (= (size!32195 lt!1429280) (+ (size!32195 prefix!494) (size!32195 suffix!1299))))))

(declare-fun b!4023112 () Bool)

(declare-fun e!2495746 () List!43186)

(assert (=> b!4023112 (= e!2495746 suffix!1299)))

(declare-fun b!4023115 () Bool)

(assert (=> b!4023115 (= e!2495747 (or (not (= suffix!1299 Nil!43062)) (= lt!1429280 prefix!494)))))

(declare-fun b!4023113 () Bool)

(assert (=> b!4023113 (= e!2495746 (Cons!43062 (h!48482 prefix!494) (++!11272 (t!333777 prefix!494) suffix!1299)))))

(declare-fun d!1191418 () Bool)

(assert (=> d!1191418 e!2495747))

(declare-fun res!1637104 () Bool)

(assert (=> d!1191418 (=> (not res!1637104) (not e!2495747))))

(declare-fun content!6532 (List!43186) (InoxSet C!23736))

(assert (=> d!1191418 (= res!1637104 (= (content!6532 lt!1429280) ((_ map or) (content!6532 prefix!494) (content!6532 suffix!1299))))))

(assert (=> d!1191418 (= lt!1429280 e!2495746)))

(declare-fun c!695243 () Bool)

(assert (=> d!1191418 (= c!695243 ((_ is Nil!43062) prefix!494))))

(assert (=> d!1191418 (= (++!11272 prefix!494 suffix!1299) lt!1429280)))

(assert (= (and d!1191418 c!695243) b!4023112))

(assert (= (and d!1191418 (not c!695243)) b!4023113))

(assert (= (and d!1191418 res!1637104) b!4023114))

(assert (= (and b!4023114 res!1637105) b!4023115))

(declare-fun m!4614217 () Bool)

(assert (=> b!4023114 m!4614217))

(assert (=> b!4023114 m!4613979))

(assert (=> b!4023114 m!4614001))

(declare-fun m!4614219 () Bool)

(assert (=> b!4023113 m!4614219))

(declare-fun m!4614221 () Bool)

(assert (=> d!1191418 m!4614221))

(declare-fun m!4614223 () Bool)

(assert (=> d!1191418 m!4614223))

(declare-fun m!4614225 () Bool)

(assert (=> d!1191418 m!4614225))

(assert (=> b!4022863 d!1191418))

(declare-fun b!4023118 () Bool)

(declare-fun res!1637107 () Bool)

(declare-fun e!2495749 () Bool)

(assert (=> b!4023118 (=> (not res!1637107) (not e!2495749))))

(declare-fun lt!1429281 () List!43186)

(assert (=> b!4023118 (= res!1637107 (= (size!32195 lt!1429281) (+ (size!32195 lt!1429215) (size!32195 newSuffixResult!27))))))

(declare-fun b!4023116 () Bool)

(declare-fun e!2495748 () List!43186)

(assert (=> b!4023116 (= e!2495748 newSuffixResult!27)))

(declare-fun b!4023119 () Bool)

(assert (=> b!4023119 (= e!2495749 (or (not (= newSuffixResult!27 Nil!43062)) (= lt!1429281 lt!1429215)))))

(declare-fun b!4023117 () Bool)

(assert (=> b!4023117 (= e!2495748 (Cons!43062 (h!48482 lt!1429215) (++!11272 (t!333777 lt!1429215) newSuffixResult!27)))))

(declare-fun d!1191420 () Bool)

(assert (=> d!1191420 e!2495749))

(declare-fun res!1637106 () Bool)

(assert (=> d!1191420 (=> (not res!1637106) (not e!2495749))))

(assert (=> d!1191420 (= res!1637106 (= (content!6532 lt!1429281) ((_ map or) (content!6532 lt!1429215) (content!6532 newSuffixResult!27))))))

(assert (=> d!1191420 (= lt!1429281 e!2495748)))

(declare-fun c!695244 () Bool)

(assert (=> d!1191420 (= c!695244 ((_ is Nil!43062) lt!1429215))))

(assert (=> d!1191420 (= (++!11272 lt!1429215 newSuffixResult!27) lt!1429281)))

(assert (= (and d!1191420 c!695244) b!4023116))

(assert (= (and d!1191420 (not c!695244)) b!4023117))

(assert (= (and d!1191420 res!1637106) b!4023118))

(assert (= (and b!4023118 res!1637107) b!4023119))

(declare-fun m!4614227 () Bool)

(assert (=> b!4023118 m!4614227))

(assert (=> b!4023118 m!4613981))

(declare-fun m!4614229 () Bool)

(assert (=> b!4023118 m!4614229))

(declare-fun m!4614231 () Bool)

(assert (=> b!4023117 m!4614231))

(declare-fun m!4614233 () Bool)

(assert (=> d!1191420 m!4614233))

(declare-fun m!4614235 () Bool)

(assert (=> d!1191420 m!4614235))

(declare-fun m!4614237 () Bool)

(assert (=> d!1191420 m!4614237))

(assert (=> b!4022872 d!1191420))

(declare-fun b!4023122 () Bool)

(declare-fun res!1637109 () Bool)

(declare-fun e!2495751 () Bool)

(assert (=> b!4023122 (=> (not res!1637109) (not e!2495751))))

(declare-fun lt!1429282 () List!43186)

(assert (=> b!4023122 (= res!1637109 (= (size!32195 lt!1429282) (+ (size!32195 prefix!494) (size!32195 newSuffix!27))))))

(declare-fun b!4023120 () Bool)

(declare-fun e!2495750 () List!43186)

(assert (=> b!4023120 (= e!2495750 newSuffix!27)))

(declare-fun b!4023123 () Bool)

(assert (=> b!4023123 (= e!2495751 (or (not (= newSuffix!27 Nil!43062)) (= lt!1429282 prefix!494)))))

(declare-fun b!4023121 () Bool)

(assert (=> b!4023121 (= e!2495750 (Cons!43062 (h!48482 prefix!494) (++!11272 (t!333777 prefix!494) newSuffix!27)))))

(declare-fun d!1191422 () Bool)

(assert (=> d!1191422 e!2495751))

(declare-fun res!1637108 () Bool)

(assert (=> d!1191422 (=> (not res!1637108) (not e!2495751))))

(assert (=> d!1191422 (= res!1637108 (= (content!6532 lt!1429282) ((_ map or) (content!6532 prefix!494) (content!6532 newSuffix!27))))))

(assert (=> d!1191422 (= lt!1429282 e!2495750)))

(declare-fun c!695245 () Bool)

(assert (=> d!1191422 (= c!695245 ((_ is Nil!43062) prefix!494))))

(assert (=> d!1191422 (= (++!11272 prefix!494 newSuffix!27) lt!1429282)))

(assert (= (and d!1191422 c!695245) b!4023120))

(assert (= (and d!1191422 (not c!695245)) b!4023121))

(assert (= (and d!1191422 res!1637108) b!4023122))

(assert (= (and b!4023122 res!1637109) b!4023123))

(declare-fun m!4614239 () Bool)

(assert (=> b!4023122 m!4614239))

(assert (=> b!4023122 m!4613979))

(assert (=> b!4023122 m!4614003))

(declare-fun m!4614241 () Bool)

(assert (=> b!4023121 m!4614241))

(declare-fun m!4614243 () Bool)

(assert (=> d!1191422 m!4614243))

(assert (=> d!1191422 m!4614223))

(declare-fun m!4614245 () Bool)

(assert (=> d!1191422 m!4614245))

(assert (=> b!4022872 d!1191422))

(declare-fun d!1191424 () Bool)

(assert (=> d!1191424 (= (inv!57514 (tag!7730 (h!48484 rules!2999))) (= (mod (str.len (value!216428 (tag!7730 (h!48484 rules!2999)))) 2) 0))))

(assert (=> b!4022870 d!1191424))

(declare-fun d!1191426 () Bool)

(declare-fun res!1637112 () Bool)

(declare-fun e!2495754 () Bool)

(assert (=> d!1191426 (=> (not res!1637112) (not e!2495754))))

(declare-fun semiInverseModEq!2935 (Int Int) Bool)

(assert (=> d!1191426 (= res!1637112 (semiInverseModEq!2935 (toChars!9241 (transformation!6870 (h!48484 rules!2999))) (toValue!9382 (transformation!6870 (h!48484 rules!2999)))))))

(assert (=> d!1191426 (= (inv!57517 (transformation!6870 (h!48484 rules!2999))) e!2495754)))

(declare-fun b!4023126 () Bool)

(declare-fun equivClasses!2834 (Int Int) Bool)

(assert (=> b!4023126 (= e!2495754 (equivClasses!2834 (toChars!9241 (transformation!6870 (h!48484 rules!2999))) (toValue!9382 (transformation!6870 (h!48484 rules!2999)))))))

(assert (= (and d!1191426 res!1637112) b!4023126))

(declare-fun m!4614247 () Bool)

(assert (=> d!1191426 m!4614247))

(declare-fun m!4614249 () Bool)

(assert (=> b!4023126 m!4614249))

(assert (=> b!4022870 d!1191426))

(declare-fun d!1191428 () Bool)

(assert (=> d!1191428 (= (inv!57514 (tag!7730 (rule!9924 token!484))) (= (mod (str.len (value!216428 (tag!7730 (rule!9924 token!484)))) 2) 0))))

(assert (=> b!4022879 d!1191428))

(declare-fun d!1191430 () Bool)

(declare-fun res!1637113 () Bool)

(declare-fun e!2495755 () Bool)

(assert (=> d!1191430 (=> (not res!1637113) (not e!2495755))))

(assert (=> d!1191430 (= res!1637113 (semiInverseModEq!2935 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (toValue!9382 (transformation!6870 (rule!9924 token!484)))))))

(assert (=> d!1191430 (= (inv!57517 (transformation!6870 (rule!9924 token!484))) e!2495755)))

(declare-fun b!4023127 () Bool)

(assert (=> b!4023127 (= e!2495755 (equivClasses!2834 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (toValue!9382 (transformation!6870 (rule!9924 token!484)))))))

(assert (= (and d!1191430 res!1637113) b!4023127))

(declare-fun m!4614251 () Bool)

(assert (=> d!1191430 m!4614251))

(declare-fun m!4614253 () Bool)

(assert (=> b!4023127 m!4614253))

(assert (=> b!4022879 d!1191430))

(declare-fun b!4023139 () Bool)

(declare-fun e!2495762 () Bool)

(assert (=> b!4023139 (= e!2495762 (>= (size!32195 suffix!1299) (size!32195 newSuffix!27)))))

(declare-fun b!4023137 () Bool)

(declare-fun res!1637124 () Bool)

(declare-fun e!2495764 () Bool)

(assert (=> b!4023137 (=> (not res!1637124) (not e!2495764))))

(declare-fun head!8529 (List!43186) C!23736)

(assert (=> b!4023137 (= res!1637124 (= (head!8529 newSuffix!27) (head!8529 suffix!1299)))))

(declare-fun b!4023138 () Bool)

(declare-fun tail!6261 (List!43186) List!43186)

(assert (=> b!4023138 (= e!2495764 (isPrefix!3957 (tail!6261 newSuffix!27) (tail!6261 suffix!1299)))))

(declare-fun d!1191432 () Bool)

(assert (=> d!1191432 e!2495762))

(declare-fun res!1637125 () Bool)

(assert (=> d!1191432 (=> res!1637125 e!2495762)))

(declare-fun lt!1429285 () Bool)

(assert (=> d!1191432 (= res!1637125 (not lt!1429285))))

(declare-fun e!2495763 () Bool)

(assert (=> d!1191432 (= lt!1429285 e!2495763)))

(declare-fun res!1637123 () Bool)

(assert (=> d!1191432 (=> res!1637123 e!2495763)))

(assert (=> d!1191432 (= res!1637123 ((_ is Nil!43062) newSuffix!27))))

(assert (=> d!1191432 (= (isPrefix!3957 newSuffix!27 suffix!1299) lt!1429285)))

(declare-fun b!4023136 () Bool)

(assert (=> b!4023136 (= e!2495763 e!2495764)))

(declare-fun res!1637122 () Bool)

(assert (=> b!4023136 (=> (not res!1637122) (not e!2495764))))

(assert (=> b!4023136 (= res!1637122 (not ((_ is Nil!43062) suffix!1299)))))

(assert (= (and d!1191432 (not res!1637123)) b!4023136))

(assert (= (and b!4023136 res!1637122) b!4023137))

(assert (= (and b!4023137 res!1637124) b!4023138))

(assert (= (and d!1191432 (not res!1637125)) b!4023139))

(assert (=> b!4023139 m!4614001))

(assert (=> b!4023139 m!4614003))

(declare-fun m!4614255 () Bool)

(assert (=> b!4023137 m!4614255))

(declare-fun m!4614257 () Bool)

(assert (=> b!4023137 m!4614257))

(declare-fun m!4614259 () Bool)

(assert (=> b!4023138 m!4614259))

(declare-fun m!4614261 () Bool)

(assert (=> b!4023138 m!4614261))

(assert (=> b!4023138 m!4614259))

(assert (=> b!4023138 m!4614261))

(declare-fun m!4614263 () Bool)

(assert (=> b!4023138 m!4614263))

(assert (=> b!4022868 d!1191432))

(declare-fun b!4023144 () Bool)

(declare-fun e!2495767 () Bool)

(declare-fun tp!1222663 () Bool)

(assert (=> b!4023144 (= e!2495767 (and tp_is_empty!20521 tp!1222663))))

(assert (=> b!4022866 (= tp!1222606 e!2495767)))

(assert (= (and b!4022866 ((_ is Cons!43062) (t!333777 prefix!494))) b!4023144))

(declare-fun b!4023145 () Bool)

(declare-fun e!2495768 () Bool)

(declare-fun tp!1222664 () Bool)

(assert (=> b!4023145 (= e!2495768 (and tp_is_empty!20521 tp!1222664))))

(assert (=> b!4022867 (= tp!1222605 e!2495768)))

(assert (= (and b!4022867 ((_ is Cons!43062) (originalCharacters!7470 token!484))) b!4023145))

(declare-fun e!2495771 () Bool)

(assert (=> b!4022870 (= tp!1222614 e!2495771)))

(declare-fun b!4023159 () Bool)

(declare-fun tp!1222679 () Bool)

(declare-fun tp!1222678 () Bool)

(assert (=> b!4023159 (= e!2495771 (and tp!1222679 tp!1222678))))

(declare-fun b!4023156 () Bool)

(assert (=> b!4023156 (= e!2495771 tp_is_empty!20521)))

(declare-fun b!4023157 () Bool)

(declare-fun tp!1222675 () Bool)

(declare-fun tp!1222676 () Bool)

(assert (=> b!4023157 (= e!2495771 (and tp!1222675 tp!1222676))))

(declare-fun b!4023158 () Bool)

(declare-fun tp!1222677 () Bool)

(assert (=> b!4023158 (= e!2495771 tp!1222677)))

(assert (= (and b!4022870 ((_ is ElementMatch!11775) (regex!6870 (h!48484 rules!2999)))) b!4023156))

(assert (= (and b!4022870 ((_ is Concat!18876) (regex!6870 (h!48484 rules!2999)))) b!4023157))

(assert (= (and b!4022870 ((_ is Star!11775) (regex!6870 (h!48484 rules!2999)))) b!4023158))

(assert (= (and b!4022870 ((_ is Union!11775) (regex!6870 (h!48484 rules!2999)))) b!4023159))

(declare-fun b!4023160 () Bool)

(declare-fun e!2495772 () Bool)

(declare-fun tp!1222680 () Bool)

(assert (=> b!4023160 (= e!2495772 (and tp_is_empty!20521 tp!1222680))))

(assert (=> b!4022871 (= tp!1222609 e!2495772)))

(assert (= (and b!4022871 ((_ is Cons!43062) (t!333777 newSuffix!27))) b!4023160))

(declare-fun b!4023161 () Bool)

(declare-fun e!2495773 () Bool)

(declare-fun tp!1222681 () Bool)

(assert (=> b!4023161 (= e!2495773 (and tp_is_empty!20521 tp!1222681))))

(assert (=> b!4022869 (= tp!1222607 e!2495773)))

(assert (= (and b!4022869 ((_ is Cons!43062) (t!333777 suffixResult!105))) b!4023161))

(declare-fun b!4023162 () Bool)

(declare-fun e!2495774 () Bool)

(declare-fun tp!1222682 () Bool)

(assert (=> b!4023162 (= e!2495774 (and tp_is_empty!20521 tp!1222682))))

(assert (=> b!4022874 (= tp!1222602 e!2495774)))

(assert (= (and b!4022874 ((_ is Cons!43062) (t!333777 suffix!1299))) b!4023162))

(declare-fun b!4023173 () Bool)

(declare-fun b_free!111965 () Bool)

(declare-fun b_next!112669 () Bool)

(assert (=> b!4023173 (= b_free!111965 (not b_next!112669))))

(declare-fun tp!1222692 () Bool)

(declare-fun b_and!309091 () Bool)

(assert (=> b!4023173 (= tp!1222692 b_and!309091)))

(declare-fun b_free!111967 () Bool)

(declare-fun b_next!112671 () Bool)

(assert (=> b!4023173 (= b_free!111967 (not b_next!112671))))

(declare-fun tb!241851 () Bool)

(declare-fun t!333792 () Bool)

(assert (=> (and b!4023173 (= (toChars!9241 (transformation!6870 (h!48484 (t!333779 rules!2999)))) (toChars!9241 (transformation!6870 (rule!9924 token!484)))) t!333792) tb!241851))

(declare-fun result!293108 () Bool)

(assert (= result!293108 result!293088))

(assert (=> b!4022939 t!333792))

(assert (=> d!1191402 t!333792))

(declare-fun tp!1222691 () Bool)

(declare-fun b_and!309093 () Bool)

(assert (=> b!4023173 (= tp!1222691 (and (=> t!333792 result!293108) b_and!309093))))

(declare-fun e!2495784 () Bool)

(assert (=> b!4023173 (= e!2495784 (and tp!1222692 tp!1222691))))

(declare-fun b!4023172 () Bool)

(declare-fun e!2495786 () Bool)

(declare-fun tp!1222694 () Bool)

(assert (=> b!4023172 (= e!2495786 (and tp!1222694 (inv!57514 (tag!7730 (h!48484 (t!333779 rules!2999)))) (inv!57517 (transformation!6870 (h!48484 (t!333779 rules!2999)))) e!2495784))))

(declare-fun b!4023171 () Bool)

(declare-fun e!2495785 () Bool)

(declare-fun tp!1222693 () Bool)

(assert (=> b!4023171 (= e!2495785 (and e!2495786 tp!1222693))))

(assert (=> b!4022875 (= tp!1222612 e!2495785)))

(assert (= b!4023172 b!4023173))

(assert (= b!4023171 b!4023172))

(assert (= (and b!4022875 ((_ is Cons!43064) (t!333779 rules!2999))) b!4023171))

(declare-fun m!4614265 () Bool)

(assert (=> b!4023172 m!4614265))

(declare-fun m!4614267 () Bool)

(assert (=> b!4023172 m!4614267))

(declare-fun b!4023174 () Bool)

(declare-fun e!2495787 () Bool)

(declare-fun tp!1222695 () Bool)

(assert (=> b!4023174 (= e!2495787 (and tp_is_empty!20521 tp!1222695))))

(assert (=> b!4022878 (= tp!1222604 e!2495787)))

(assert (= (and b!4022878 ((_ is Cons!43062) (t!333777 newSuffixResult!27))) b!4023174))

(declare-fun e!2495788 () Bool)

(assert (=> b!4022879 (= tp!1222610 e!2495788)))

(declare-fun b!4023178 () Bool)

(declare-fun tp!1222700 () Bool)

(declare-fun tp!1222699 () Bool)

(assert (=> b!4023178 (= e!2495788 (and tp!1222700 tp!1222699))))

(declare-fun b!4023175 () Bool)

(assert (=> b!4023175 (= e!2495788 tp_is_empty!20521)))

(declare-fun b!4023176 () Bool)

(declare-fun tp!1222696 () Bool)

(declare-fun tp!1222697 () Bool)

(assert (=> b!4023176 (= e!2495788 (and tp!1222696 tp!1222697))))

(declare-fun b!4023177 () Bool)

(declare-fun tp!1222698 () Bool)

(assert (=> b!4023177 (= e!2495788 tp!1222698)))

(assert (= (and b!4022879 ((_ is ElementMatch!11775) (regex!6870 (rule!9924 token!484)))) b!4023175))

(assert (= (and b!4022879 ((_ is Concat!18876) (regex!6870 (rule!9924 token!484)))) b!4023176))

(assert (= (and b!4022879 ((_ is Star!11775) (regex!6870 (rule!9924 token!484)))) b!4023177))

(assert (= (and b!4022879 ((_ is Union!11775) (regex!6870 (rule!9924 token!484)))) b!4023178))

(declare-fun b_lambda!117375 () Bool)

(assert (= b_lambda!117369 (or (and b!4022865 b_free!111955) (and b!4022880 b_free!111959 (= (toChars!9241 (transformation!6870 (h!48484 rules!2999))) (toChars!9241 (transformation!6870 (rule!9924 token!484))))) (and b!4023173 b_free!111967 (= (toChars!9241 (transformation!6870 (h!48484 (t!333779 rules!2999)))) (toChars!9241 (transformation!6870 (rule!9924 token!484))))) b_lambda!117375)))

(declare-fun b_lambda!117377 () Bool)

(assert (= b_lambda!117367 (or (and b!4022865 b_free!111955) (and b!4022880 b_free!111959 (= (toChars!9241 (transformation!6870 (h!48484 rules!2999))) (toChars!9241 (transformation!6870 (rule!9924 token!484))))) (and b!4023173 b_free!111967 (= (toChars!9241 (transformation!6870 (h!48484 (t!333779 rules!2999)))) (toChars!9241 (transformation!6870 (rule!9924 token!484))))) b_lambda!117377)))

(check-sat b_and!309067 (not d!1191400) (not b!4023113) (not b!4023001) (not b_lambda!117377) (not d!1191402) (not b!4023100) (not b_next!112671) (not b!4023177) (not b_next!112663) (not d!1191362) (not b!4023101) (not b!4023127) (not b!4023097) (not b!4023139) (not d!1191418) (not b!4023160) (not b!4023126) tp_is_empty!20521 (not b!4023102) (not b!4023103) (not b!4023174) (not b!4022939) b_and!309063 (not b!4023138) (not b!4023121) (not b!4023178) (not d!1191404) (not b!4023157) (not b!4023096) (not b_next!112661) (not d!1191412) (not b_next!112669) (not b!4023099) (not d!1191374) (not b!4023159) (not d!1191426) (not b!4022922) (not b!4023117) (not b!4022982) b_and!309093 (not b!4023172) (not b!4023118) (not b!4022991) (not bm!286737) (not b!4023122) (not b!4023095) (not b_next!112657) (not b!4023005) (not b!4023171) (not tb!241845) (not d!1191422) (not b!4022999) (not b_lambda!117375) (not b!4022951) (not b!4023114) (not d!1191430) b_and!309091 (not b!4023161) b_and!309083 (not b_next!112659) (not b!4023176) (not b!4022981) (not b!4023158) (not b!4022984) (not d!1191420) b_and!309085 (not b!4022940) (not b!4022993) (not b!4023162) (not b!4023144) (not b!4023145) (not b!4023137))
(check-sat (not b_next!112663) b_and!309067 b_and!309063 (not b_next!112661) (not b_next!112669) b_and!309093 (not b_next!112657) (not b_next!112671) b_and!309091 b_and!309083 (not b_next!112659) b_and!309085)
(get-model)

(declare-fun d!1191472 () Bool)

(declare-fun lt!1429303 () Int)

(assert (=> d!1191472 (>= lt!1429303 0)))

(declare-fun e!2495818 () Int)

(assert (=> d!1191472 (= lt!1429303 e!2495818)))

(declare-fun c!695260 () Bool)

(assert (=> d!1191472 (= c!695260 ((_ is Nil!43062) (t!333777 lt!1429215)))))

(assert (=> d!1191472 (= (size!32195 (t!333777 lt!1429215)) lt!1429303)))

(declare-fun b!4023229 () Bool)

(assert (=> b!4023229 (= e!2495818 0)))

(declare-fun b!4023230 () Bool)

(assert (=> b!4023230 (= e!2495818 (+ 1 (size!32195 (t!333777 (t!333777 lt!1429215)))))))

(assert (= (and d!1191472 c!695260) b!4023229))

(assert (= (and d!1191472 (not c!695260)) b!4023230))

(declare-fun m!4614361 () Bool)

(assert (=> b!4023230 m!4614361))

(assert (=> b!4022993 d!1191472))

(declare-fun d!1191474 () Bool)

(assert (=> d!1191474 (= (isEmpty!25712 lt!1429277) (not ((_ is Some!9283) lt!1429277)))))

(assert (=> d!1191412 d!1191474))

(declare-fun b!4023234 () Bool)

(declare-fun e!2495819 () Bool)

(assert (=> b!4023234 (= e!2495819 (>= (size!32195 (++!11272 prefix!494 suffix!1299)) (size!32195 (++!11272 prefix!494 suffix!1299))))))

(declare-fun b!4023232 () Bool)

(declare-fun res!1637153 () Bool)

(declare-fun e!2495821 () Bool)

(assert (=> b!4023232 (=> (not res!1637153) (not e!2495821))))

(assert (=> b!4023232 (= res!1637153 (= (head!8529 (++!11272 prefix!494 suffix!1299)) (head!8529 (++!11272 prefix!494 suffix!1299))))))

(declare-fun b!4023233 () Bool)

(assert (=> b!4023233 (= e!2495821 (isPrefix!3957 (tail!6261 (++!11272 prefix!494 suffix!1299)) (tail!6261 (++!11272 prefix!494 suffix!1299))))))

(declare-fun d!1191476 () Bool)

(assert (=> d!1191476 e!2495819))

(declare-fun res!1637154 () Bool)

(assert (=> d!1191476 (=> res!1637154 e!2495819)))

(declare-fun lt!1429304 () Bool)

(assert (=> d!1191476 (= res!1637154 (not lt!1429304))))

(declare-fun e!2495820 () Bool)

(assert (=> d!1191476 (= lt!1429304 e!2495820)))

(declare-fun res!1637152 () Bool)

(assert (=> d!1191476 (=> res!1637152 e!2495820)))

(assert (=> d!1191476 (= res!1637152 ((_ is Nil!43062) (++!11272 prefix!494 suffix!1299)))))

(assert (=> d!1191476 (= (isPrefix!3957 (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299)) lt!1429304)))

(declare-fun b!4023231 () Bool)

(assert (=> b!4023231 (= e!2495820 e!2495821)))

(declare-fun res!1637151 () Bool)

(assert (=> b!4023231 (=> (not res!1637151) (not e!2495821))))

(assert (=> b!4023231 (= res!1637151 (not ((_ is Nil!43062) (++!11272 prefix!494 suffix!1299))))))

(assert (= (and d!1191476 (not res!1637152)) b!4023231))

(assert (= (and b!4023231 res!1637151) b!4023232))

(assert (= (and b!4023232 res!1637153) b!4023233))

(assert (= (and d!1191476 (not res!1637154)) b!4023234))

(assert (=> b!4023234 m!4614005))

(assert (=> b!4023234 m!4614215))

(assert (=> b!4023234 m!4614005))

(assert (=> b!4023234 m!4614215))

(assert (=> b!4023232 m!4614005))

(declare-fun m!4614363 () Bool)

(assert (=> b!4023232 m!4614363))

(assert (=> b!4023232 m!4614005))

(assert (=> b!4023232 m!4614363))

(assert (=> b!4023233 m!4614005))

(declare-fun m!4614365 () Bool)

(assert (=> b!4023233 m!4614365))

(assert (=> b!4023233 m!4614005))

(assert (=> b!4023233 m!4614365))

(assert (=> b!4023233 m!4614365))

(assert (=> b!4023233 m!4614365))

(declare-fun m!4614367 () Bool)

(assert (=> b!4023233 m!4614367))

(assert (=> d!1191412 d!1191476))

(declare-fun d!1191478 () Bool)

(assert (=> d!1191478 (isPrefix!3957 (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299))))

(declare-fun lt!1429307 () Unit!62230)

(declare-fun choose!24326 (List!43186 List!43186) Unit!62230)

(assert (=> d!1191478 (= lt!1429307 (choose!24326 (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299)))))

(assert (=> d!1191478 (= (lemmaIsPrefixRefl!2531 (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299)) lt!1429307)))

(declare-fun bs!589944 () Bool)

(assert (= bs!589944 d!1191478))

(assert (=> bs!589944 m!4614005))

(assert (=> bs!589944 m!4614005))

(assert (=> bs!589944 m!4614205))

(assert (=> bs!589944 m!4614005))

(assert (=> bs!589944 m!4614005))

(declare-fun m!4614369 () Bool)

(assert (=> bs!589944 m!4614369))

(assert (=> d!1191412 d!1191478))

(declare-fun d!1191480 () Bool)

(assert (=> d!1191480 true))

(declare-fun lt!1429331 () Bool)

(declare-fun lambda!127130 () Int)

(declare-fun forall!8356 (List!43188 Int) Bool)

(assert (=> d!1191480 (= lt!1429331 (forall!8356 rules!2999 lambda!127130))))

(declare-fun e!2495881 () Bool)

(assert (=> d!1191480 (= lt!1429331 e!2495881)))

(declare-fun res!1637214 () Bool)

(assert (=> d!1191480 (=> res!1637214 e!2495881)))

(assert (=> d!1191480 (= res!1637214 (not ((_ is Cons!43064) rules!2999)))))

(assert (=> d!1191480 (= (rulesValidInductive!2501 thiss!21717 rules!2999) lt!1429331)))

(declare-fun b!4023346 () Bool)

(declare-fun e!2495882 () Bool)

(assert (=> b!4023346 (= e!2495881 e!2495882)))

(declare-fun res!1637215 () Bool)

(assert (=> b!4023346 (=> (not res!1637215) (not e!2495882))))

(declare-fun ruleValid!2800 (LexerInterface!6459 Rule!13540) Bool)

(assert (=> b!4023346 (= res!1637215 (ruleValid!2800 thiss!21717 (h!48484 rules!2999)))))

(declare-fun b!4023347 () Bool)

(assert (=> b!4023347 (= e!2495882 (rulesValidInductive!2501 thiss!21717 (t!333779 rules!2999)))))

(assert (= (and d!1191480 (not res!1637214)) b!4023346))

(assert (= (and b!4023346 res!1637215) b!4023347))

(declare-fun m!4614473 () Bool)

(assert (=> d!1191480 m!4614473))

(declare-fun m!4614475 () Bool)

(assert (=> b!4023346 m!4614475))

(declare-fun m!4614477 () Bool)

(assert (=> b!4023347 m!4614477))

(assert (=> d!1191412 d!1191480))

(declare-fun d!1191518 () Bool)

(declare-fun c!695287 () Bool)

(assert (=> d!1191518 (= c!695287 ((_ is Nil!43062) lt!1429282))))

(declare-fun e!2495885 () (InoxSet C!23736))

(assert (=> d!1191518 (= (content!6532 lt!1429282) e!2495885)))

(declare-fun b!4023354 () Bool)

(assert (=> b!4023354 (= e!2495885 ((as const (Array C!23736 Bool)) false))))

(declare-fun b!4023355 () Bool)

(assert (=> b!4023355 (= e!2495885 ((_ map or) (store ((as const (Array C!23736 Bool)) false) (h!48482 lt!1429282) true) (content!6532 (t!333777 lt!1429282))))))

(assert (= (and d!1191518 c!695287) b!4023354))

(assert (= (and d!1191518 (not c!695287)) b!4023355))

(declare-fun m!4614479 () Bool)

(assert (=> b!4023355 m!4614479))

(declare-fun m!4614481 () Bool)

(assert (=> b!4023355 m!4614481))

(assert (=> d!1191422 d!1191518))

(declare-fun d!1191520 () Bool)

(declare-fun c!695288 () Bool)

(assert (=> d!1191520 (= c!695288 ((_ is Nil!43062) prefix!494))))

(declare-fun e!2495886 () (InoxSet C!23736))

(assert (=> d!1191520 (= (content!6532 prefix!494) e!2495886)))

(declare-fun b!4023356 () Bool)

(assert (=> b!4023356 (= e!2495886 ((as const (Array C!23736 Bool)) false))))

(declare-fun b!4023357 () Bool)

(assert (=> b!4023357 (= e!2495886 ((_ map or) (store ((as const (Array C!23736 Bool)) false) (h!48482 prefix!494) true) (content!6532 (t!333777 prefix!494))))))

(assert (= (and d!1191520 c!695288) b!4023356))

(assert (= (and d!1191520 (not c!695288)) b!4023357))

(declare-fun m!4614485 () Bool)

(assert (=> b!4023357 m!4614485))

(declare-fun m!4614487 () Bool)

(assert (=> b!4023357 m!4614487))

(assert (=> d!1191422 d!1191520))

(declare-fun d!1191524 () Bool)

(declare-fun c!695290 () Bool)

(assert (=> d!1191524 (= c!695290 ((_ is Nil!43062) newSuffix!27))))

(declare-fun e!2495888 () (InoxSet C!23736))

(assert (=> d!1191524 (= (content!6532 newSuffix!27) e!2495888)))

(declare-fun b!4023360 () Bool)

(assert (=> b!4023360 (= e!2495888 ((as const (Array C!23736 Bool)) false))))

(declare-fun b!4023361 () Bool)

(assert (=> b!4023361 (= e!2495888 ((_ map or) (store ((as const (Array C!23736 Bool)) false) (h!48482 newSuffix!27) true) (content!6532 (t!333777 newSuffix!27))))))

(assert (= (and d!1191524 c!695290) b!4023360))

(assert (= (and d!1191524 (not c!695290)) b!4023361))

(declare-fun m!4614491 () Bool)

(assert (=> b!4023361 m!4614491))

(declare-fun m!4614493 () Bool)

(assert (=> b!4023361 m!4614493))

(assert (=> d!1191422 d!1191524))

(declare-fun d!1191528 () Bool)

(declare-fun res!1637220 () Bool)

(declare-fun e!2495896 () Bool)

(assert (=> d!1191528 (=> res!1637220 e!2495896)))

(assert (=> d!1191528 (= res!1637220 ((_ is Nil!43064) rules!2999))))

(assert (=> d!1191528 (= (noDuplicateTag!2670 thiss!21717 rules!2999 Nil!43066) e!2495896)))

(declare-fun b!4023372 () Bool)

(declare-fun e!2495897 () Bool)

(assert (=> b!4023372 (= e!2495896 e!2495897)))

(declare-fun res!1637221 () Bool)

(assert (=> b!4023372 (=> (not res!1637221) (not e!2495897))))

(declare-fun contains!8553 (List!43190 String!49218) Bool)

(assert (=> b!4023372 (= res!1637221 (not (contains!8553 Nil!43066 (tag!7730 (h!48484 rules!2999)))))))

(declare-fun b!4023373 () Bool)

(assert (=> b!4023373 (= e!2495897 (noDuplicateTag!2670 thiss!21717 (t!333779 rules!2999) (Cons!43066 (tag!7730 (h!48484 rules!2999)) Nil!43066)))))

(assert (= (and d!1191528 (not res!1637220)) b!4023372))

(assert (= (and b!4023372 res!1637221) b!4023373))

(declare-fun m!4614511 () Bool)

(assert (=> b!4023372 m!4614511))

(declare-fun m!4614513 () Bool)

(assert (=> b!4023373 m!4614513))

(assert (=> b!4022922 d!1191528))

(declare-fun d!1191540 () Bool)

(assert (=> d!1191540 (= (inv!57514 (tag!7730 (h!48484 (t!333779 rules!2999)))) (= (mod (str.len (value!216428 (tag!7730 (h!48484 (t!333779 rules!2999))))) 2) 0))))

(assert (=> b!4023172 d!1191540))

(declare-fun d!1191542 () Bool)

(declare-fun res!1637222 () Bool)

(declare-fun e!2495898 () Bool)

(assert (=> d!1191542 (=> (not res!1637222) (not e!2495898))))

(assert (=> d!1191542 (= res!1637222 (semiInverseModEq!2935 (toChars!9241 (transformation!6870 (h!48484 (t!333779 rules!2999)))) (toValue!9382 (transformation!6870 (h!48484 (t!333779 rules!2999))))))))

(assert (=> d!1191542 (= (inv!57517 (transformation!6870 (h!48484 (t!333779 rules!2999)))) e!2495898)))

(declare-fun b!4023374 () Bool)

(assert (=> b!4023374 (= e!2495898 (equivClasses!2834 (toChars!9241 (transformation!6870 (h!48484 (t!333779 rules!2999)))) (toValue!9382 (transformation!6870 (h!48484 (t!333779 rules!2999))))))))

(assert (= (and d!1191542 res!1637222) b!4023374))

(declare-fun m!4614515 () Bool)

(assert (=> d!1191542 m!4614515))

(declare-fun m!4614517 () Bool)

(assert (=> b!4023374 m!4614517))

(assert (=> b!4023172 d!1191542))

(declare-fun d!1191544 () Bool)

(declare-fun c!695296 () Bool)

(assert (=> d!1191544 (= c!695296 ((_ is Node!13081) (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))))))

(declare-fun e!2495906 () Bool)

(assert (=> d!1191544 (= (inv!57521 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))) e!2495906)))

(declare-fun b!4023389 () Bool)

(declare-fun inv!57523 (Conc!13081) Bool)

(assert (=> b!4023389 (= e!2495906 (inv!57523 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))))))

(declare-fun b!4023390 () Bool)

(declare-fun e!2495907 () Bool)

(assert (=> b!4023390 (= e!2495906 e!2495907)))

(declare-fun res!1637229 () Bool)

(assert (=> b!4023390 (= res!1637229 (not ((_ is Leaf!20223) (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))))))))

(assert (=> b!4023390 (=> res!1637229 e!2495907)))

(declare-fun b!4023391 () Bool)

(declare-fun inv!57524 (Conc!13081) Bool)

(assert (=> b!4023391 (= e!2495907 (inv!57524 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))))))

(assert (= (and d!1191544 c!695296) b!4023389))

(assert (= (and d!1191544 (not c!695296)) b!4023390))

(assert (= (and b!4023390 (not res!1637229)) b!4023391))

(declare-fun m!4614535 () Bool)

(assert (=> b!4023389 m!4614535))

(declare-fun m!4614537 () Bool)

(assert (=> b!4023391 m!4614537))

(assert (=> b!4022951 d!1191544))

(declare-fun d!1191558 () Bool)

(declare-fun c!695297 () Bool)

(assert (=> d!1191558 (= c!695297 ((_ is Nil!43062) lt!1429281))))

(declare-fun e!2495908 () (InoxSet C!23736))

(assert (=> d!1191558 (= (content!6532 lt!1429281) e!2495908)))

(declare-fun b!4023392 () Bool)

(assert (=> b!4023392 (= e!2495908 ((as const (Array C!23736 Bool)) false))))

(declare-fun b!4023393 () Bool)

(assert (=> b!4023393 (= e!2495908 ((_ map or) (store ((as const (Array C!23736 Bool)) false) (h!48482 lt!1429281) true) (content!6532 (t!333777 lt!1429281))))))

(assert (= (and d!1191558 c!695297) b!4023392))

(assert (= (and d!1191558 (not c!695297)) b!4023393))

(declare-fun m!4614539 () Bool)

(assert (=> b!4023393 m!4614539))

(declare-fun m!4614541 () Bool)

(assert (=> b!4023393 m!4614541))

(assert (=> d!1191420 d!1191558))

(declare-fun d!1191560 () Bool)

(declare-fun c!695298 () Bool)

(assert (=> d!1191560 (= c!695298 ((_ is Nil!43062) lt!1429215))))

(declare-fun e!2495909 () (InoxSet C!23736))

(assert (=> d!1191560 (= (content!6532 lt!1429215) e!2495909)))

(declare-fun b!4023394 () Bool)

(assert (=> b!4023394 (= e!2495909 ((as const (Array C!23736 Bool)) false))))

(declare-fun b!4023395 () Bool)

(assert (=> b!4023395 (= e!2495909 ((_ map or) (store ((as const (Array C!23736 Bool)) false) (h!48482 lt!1429215) true) (content!6532 (t!333777 lt!1429215))))))

(assert (= (and d!1191560 c!695298) b!4023394))

(assert (= (and d!1191560 (not c!695298)) b!4023395))

(declare-fun m!4614543 () Bool)

(assert (=> b!4023395 m!4614543))

(declare-fun m!4614545 () Bool)

(assert (=> b!4023395 m!4614545))

(assert (=> d!1191420 d!1191560))

(declare-fun d!1191562 () Bool)

(declare-fun c!695299 () Bool)

(assert (=> d!1191562 (= c!695299 ((_ is Nil!43062) newSuffixResult!27))))

(declare-fun e!2495910 () (InoxSet C!23736))

(assert (=> d!1191562 (= (content!6532 newSuffixResult!27) e!2495910)))

(declare-fun b!4023396 () Bool)

(assert (=> b!4023396 (= e!2495910 ((as const (Array C!23736 Bool)) false))))

(declare-fun b!4023397 () Bool)

(assert (=> b!4023397 (= e!2495910 ((_ map or) (store ((as const (Array C!23736 Bool)) false) (h!48482 newSuffixResult!27) true) (content!6532 (t!333777 newSuffixResult!27))))))

(assert (= (and d!1191562 c!695299) b!4023396))

(assert (= (and d!1191562 (not c!695299)) b!4023397))

(declare-fun m!4614549 () Bool)

(assert (=> b!4023397 m!4614549))

(declare-fun m!4614551 () Bool)

(assert (=> b!4023397 m!4614551))

(assert (=> d!1191420 d!1191562))

(assert (=> b!4023139 d!1191408))

(assert (=> b!4023139 d!1191410))

(declare-fun d!1191566 () Bool)

(assert (=> d!1191566 true))

(declare-fun lambda!127140 () Int)

(declare-fun order!22535 () Int)

(declare-fun order!22537 () Int)

(declare-fun dynLambda!18252 (Int Int) Int)

(declare-fun dynLambda!18253 (Int Int) Int)

(assert (=> d!1191566 (< (dynLambda!18252 order!22535 (toValue!9382 (transformation!6870 (h!48484 rules!2999)))) (dynLambda!18253 order!22537 lambda!127140))))

(declare-fun Forall2!1076 (Int) Bool)

(assert (=> d!1191566 (= (equivClasses!2834 (toChars!9241 (transformation!6870 (h!48484 rules!2999))) (toValue!9382 (transformation!6870 (h!48484 rules!2999)))) (Forall2!1076 lambda!127140))))

(declare-fun bs!589958 () Bool)

(assert (= bs!589958 d!1191566))

(declare-fun m!4614571 () Bool)

(assert (=> bs!589958 m!4614571))

(assert (=> b!4023126 d!1191566))

(declare-fun d!1191578 () Bool)

(assert (=> d!1191578 (= (head!8529 newSuffix!27) (h!48482 newSuffix!27))))

(assert (=> b!4023137 d!1191578))

(declare-fun d!1191584 () Bool)

(assert (=> d!1191584 (= (head!8529 suffix!1299) (h!48482 suffix!1299))))

(assert (=> b!4023137 d!1191584))

(declare-fun b!4023429 () Bool)

(declare-fun e!2495928 () Bool)

(assert (=> b!4023429 (= e!2495928 (>= (size!32195 (tail!6261 suffix!1299)) (size!32195 (tail!6261 newSuffix!27))))))

(declare-fun b!4023427 () Bool)

(declare-fun res!1637244 () Bool)

(declare-fun e!2495930 () Bool)

(assert (=> b!4023427 (=> (not res!1637244) (not e!2495930))))

(assert (=> b!4023427 (= res!1637244 (= (head!8529 (tail!6261 newSuffix!27)) (head!8529 (tail!6261 suffix!1299))))))

(declare-fun b!4023428 () Bool)

(assert (=> b!4023428 (= e!2495930 (isPrefix!3957 (tail!6261 (tail!6261 newSuffix!27)) (tail!6261 (tail!6261 suffix!1299))))))

(declare-fun d!1191588 () Bool)

(assert (=> d!1191588 e!2495928))

(declare-fun res!1637245 () Bool)

(assert (=> d!1191588 (=> res!1637245 e!2495928)))

(declare-fun lt!1429344 () Bool)

(assert (=> d!1191588 (= res!1637245 (not lt!1429344))))

(declare-fun e!2495929 () Bool)

(assert (=> d!1191588 (= lt!1429344 e!2495929)))

(declare-fun res!1637243 () Bool)

(assert (=> d!1191588 (=> res!1637243 e!2495929)))

(assert (=> d!1191588 (= res!1637243 ((_ is Nil!43062) (tail!6261 newSuffix!27)))))

(assert (=> d!1191588 (= (isPrefix!3957 (tail!6261 newSuffix!27) (tail!6261 suffix!1299)) lt!1429344)))

(declare-fun b!4023426 () Bool)

(assert (=> b!4023426 (= e!2495929 e!2495930)))

(declare-fun res!1637242 () Bool)

(assert (=> b!4023426 (=> (not res!1637242) (not e!2495930))))

(assert (=> b!4023426 (= res!1637242 (not ((_ is Nil!43062) (tail!6261 suffix!1299))))))

(assert (= (and d!1191588 (not res!1637243)) b!4023426))

(assert (= (and b!4023426 res!1637242) b!4023427))

(assert (= (and b!4023427 res!1637244) b!4023428))

(assert (= (and d!1191588 (not res!1637245)) b!4023429))

(assert (=> b!4023429 m!4614261))

(declare-fun m!4614581 () Bool)

(assert (=> b!4023429 m!4614581))

(assert (=> b!4023429 m!4614259))

(declare-fun m!4614583 () Bool)

(assert (=> b!4023429 m!4614583))

(assert (=> b!4023427 m!4614259))

(declare-fun m!4614585 () Bool)

(assert (=> b!4023427 m!4614585))

(assert (=> b!4023427 m!4614261))

(declare-fun m!4614587 () Bool)

(assert (=> b!4023427 m!4614587))

(assert (=> b!4023428 m!4614259))

(declare-fun m!4614589 () Bool)

(assert (=> b!4023428 m!4614589))

(assert (=> b!4023428 m!4614261))

(declare-fun m!4614591 () Bool)

(assert (=> b!4023428 m!4614591))

(assert (=> b!4023428 m!4614589))

(assert (=> b!4023428 m!4614591))

(declare-fun m!4614593 () Bool)

(assert (=> b!4023428 m!4614593))

(assert (=> b!4023138 d!1191588))

(declare-fun d!1191590 () Bool)

(assert (=> d!1191590 (= (tail!6261 newSuffix!27) (t!333777 newSuffix!27))))

(assert (=> b!4023138 d!1191590))

(declare-fun d!1191594 () Bool)

(assert (=> d!1191594 (= (tail!6261 suffix!1299) (t!333777 suffix!1299))))

(assert (=> b!4023138 d!1191594))

(declare-fun bs!589961 () Bool)

(declare-fun d!1191596 () Bool)

(assert (= bs!589961 (and d!1191596 d!1191480)))

(declare-fun lambda!127144 () Int)

(assert (=> bs!589961 (= lambda!127144 lambda!127130)))

(assert (=> d!1191596 true))

(declare-fun lt!1429349 () Bool)

(assert (=> d!1191596 (= lt!1429349 (rulesValidInductive!2501 thiss!21717 rules!2999))))

(assert (=> d!1191596 (= lt!1429349 (forall!8356 rules!2999 lambda!127144))))

(assert (=> d!1191596 (= (rulesValid!2669 thiss!21717 rules!2999) lt!1429349)))

(declare-fun bs!589962 () Bool)

(assert (= bs!589962 d!1191596))

(assert (=> bs!589962 m!4614209))

(declare-fun m!4614607 () Bool)

(assert (=> bs!589962 m!4614607))

(assert (=> d!1191362 d!1191596))

(declare-fun d!1191600 () Bool)

(assert (=> d!1191600 (= (list!16010 lt!1429241) (list!16012 (c!695204 lt!1429241)))))

(declare-fun bs!589963 () Bool)

(assert (= bs!589963 d!1191600))

(declare-fun m!4614609 () Bool)

(assert (=> bs!589963 m!4614609))

(assert (=> d!1191402 d!1191600))

(declare-fun d!1191602 () Bool)

(declare-fun lt!1429350 () Int)

(assert (=> d!1191602 (>= lt!1429350 0)))

(declare-fun e!2495948 () Int)

(assert (=> d!1191602 (= lt!1429350 e!2495948)))

(declare-fun c!695308 () Bool)

(assert (=> d!1191602 (= c!695308 ((_ is Nil!43062) (t!333777 prefix!494)))))

(assert (=> d!1191602 (= (size!32195 (t!333777 prefix!494)) lt!1429350)))

(declare-fun b!4023462 () Bool)

(assert (=> b!4023462 (= e!2495948 0)))

(declare-fun b!4023463 () Bool)

(assert (=> b!4023463 (= e!2495948 (+ 1 (size!32195 (t!333777 (t!333777 prefix!494)))))))

(assert (= (and d!1191602 c!695308) b!4023462))

(assert (= (and d!1191602 (not c!695308)) b!4023463))

(declare-fun m!4614611 () Bool)

(assert (=> b!4023463 m!4614611))

(assert (=> b!4022991 d!1191602))

(declare-fun d!1191604 () Bool)

(declare-fun lt!1429351 () Bool)

(assert (=> d!1191604 (= lt!1429351 (select (content!6531 (t!333779 rules!2999)) (rule!9924 token!484)))))

(declare-fun e!2495952 () Bool)

(assert (=> d!1191604 (= lt!1429351 e!2495952)))

(declare-fun res!1637248 () Bool)

(assert (=> d!1191604 (=> (not res!1637248) (not e!2495952))))

(assert (=> d!1191604 (= res!1637248 ((_ is Cons!43064) (t!333779 rules!2999)))))

(assert (=> d!1191604 (= (contains!8552 (t!333779 rules!2999) (rule!9924 token!484)) lt!1429351)))

(declare-fun b!4023472 () Bool)

(declare-fun e!2495951 () Bool)

(assert (=> b!4023472 (= e!2495952 e!2495951)))

(declare-fun res!1637249 () Bool)

(assert (=> b!4023472 (=> res!1637249 e!2495951)))

(assert (=> b!4023472 (= res!1637249 (= (h!48484 (t!333779 rules!2999)) (rule!9924 token!484)))))

(declare-fun b!4023473 () Bool)

(assert (=> b!4023473 (= e!2495951 (contains!8552 (t!333779 (t!333779 rules!2999)) (rule!9924 token!484)))))

(assert (= (and d!1191604 res!1637248) b!4023472))

(assert (= (and b!4023472 (not res!1637249)) b!4023473))

(declare-fun m!4614613 () Bool)

(assert (=> d!1191604 m!4614613))

(declare-fun m!4614615 () Bool)

(assert (=> d!1191604 m!4614615))

(declare-fun m!4614617 () Bool)

(assert (=> b!4023473 m!4614617))

(assert (=> b!4022999 d!1191604))

(declare-fun d!1191606 () Bool)

(assert (=> d!1191606 (= (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277)))) (list!16012 (c!695204 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))))))

(declare-fun bs!589964 () Bool)

(assert (= bs!589964 d!1191606))

(declare-fun m!4614619 () Bool)

(assert (=> bs!589964 m!4614619))

(assert (=> b!4023103 d!1191606))

(declare-fun d!1191608 () Bool)

(declare-fun lt!1429352 () BalanceConc!25756)

(assert (=> d!1191608 (= (list!16010 lt!1429352) (originalCharacters!7470 (_1!24225 (get!14139 lt!1429277))))))

(assert (=> d!1191608 (= lt!1429352 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))) (value!216429 (_1!24225 (get!14139 lt!1429277)))))))

(assert (=> d!1191608 (= (charsOf!4686 (_1!24225 (get!14139 lt!1429277))) lt!1429352)))

(declare-fun b_lambda!117383 () Bool)

(assert (=> (not b_lambda!117383) (not d!1191608)))

(declare-fun tb!241871 () Bool)

(declare-fun t!333814 () Bool)

(assert (=> (and b!4022865 (= (toChars!9241 (transformation!6870 (rule!9924 token!484))) (toChars!9241 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))) t!333814) tb!241871))

(declare-fun b!4023490 () Bool)

(declare-fun e!2495959 () Bool)

(declare-fun tp!1222762 () Bool)

(assert (=> b!4023490 (= e!2495959 (and (inv!57521 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))) (value!216429 (_1!24225 (get!14139 lt!1429277)))))) tp!1222762))))

(declare-fun result!293132 () Bool)

(assert (=> tb!241871 (= result!293132 (and (inv!57522 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))) (value!216429 (_1!24225 (get!14139 lt!1429277))))) e!2495959))))

(assert (= tb!241871 b!4023490))

(declare-fun m!4614621 () Bool)

(assert (=> b!4023490 m!4614621))

(declare-fun m!4614623 () Bool)

(assert (=> tb!241871 m!4614623))

(assert (=> d!1191608 t!333814))

(declare-fun b_and!309111 () Bool)

(assert (= b_and!309083 (and (=> t!333814 result!293132) b_and!309111)))

(declare-fun t!333816 () Bool)

(declare-fun tb!241873 () Bool)

(assert (=> (and b!4022880 (= (toChars!9241 (transformation!6870 (h!48484 rules!2999))) (toChars!9241 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))) t!333816) tb!241873))

(declare-fun result!293134 () Bool)

(assert (= result!293134 result!293132))

(assert (=> d!1191608 t!333816))

(declare-fun b_and!309113 () Bool)

(assert (= b_and!309085 (and (=> t!333816 result!293134) b_and!309113)))

(declare-fun t!333818 () Bool)

(declare-fun tb!241875 () Bool)

(assert (=> (and b!4023173 (= (toChars!9241 (transformation!6870 (h!48484 (t!333779 rules!2999)))) (toChars!9241 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))) t!333818) tb!241875))

(declare-fun result!293136 () Bool)

(assert (= result!293136 result!293132))

(assert (=> d!1191608 t!333818))

(declare-fun b_and!309115 () Bool)

(assert (= b_and!309093 (and (=> t!333818 result!293136) b_and!309115)))

(declare-fun m!4614625 () Bool)

(assert (=> d!1191608 m!4614625))

(declare-fun m!4614627 () Bool)

(assert (=> d!1191608 m!4614627))

(assert (=> b!4023103 d!1191608))

(declare-fun d!1191610 () Bool)

(assert (=> d!1191610 (= (get!14139 lt!1429277) (v!39659 lt!1429277))))

(assert (=> b!4023103 d!1191610))

(declare-fun d!1191612 () Bool)

(assert (=> d!1191612 (= (isEmpty!25711 (originalCharacters!7470 token!484)) ((_ is Nil!43062) (originalCharacters!7470 token!484)))))

(assert (=> d!1191374 d!1191612))

(declare-fun b!4023531 () Bool)

(declare-fun e!2495981 () Bool)

(declare-fun e!2495983 () Bool)

(assert (=> b!4023531 (= e!2495981 e!2495983)))

(declare-fun c!695316 () Bool)

(assert (=> b!4023531 (= c!695316 ((_ is EmptyLang!11775) (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))))))

(declare-fun b!4023532 () Bool)

(declare-fun e!2495982 () Bool)

(declare-fun e!2495984 () Bool)

(assert (=> b!4023532 (= e!2495982 e!2495984)))

(declare-fun res!1637270 () Bool)

(assert (=> b!4023532 (=> (not res!1637270) (not e!2495984))))

(declare-fun lt!1429355 () Bool)

(assert (=> b!4023532 (= res!1637270 (not lt!1429355))))

(declare-fun b!4023533 () Bool)

(declare-fun e!2495985 () Bool)

(assert (=> b!4023533 (= e!2495985 (= (head!8529 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))) (c!695205 (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))))))

(declare-fun b!4023534 () Bool)

(declare-fun e!2495980 () Bool)

(declare-fun derivativeStep!3537 (Regex!11775 C!23736) Regex!11775)

(assert (=> b!4023534 (= e!2495980 (matchR!5734 (derivativeStep!3537 (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))) (head!8529 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277)))))) (tail!6261 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277)))))))))

(declare-fun d!1191614 () Bool)

(assert (=> d!1191614 e!2495981))

(declare-fun c!695315 () Bool)

(assert (=> d!1191614 (= c!695315 ((_ is EmptyExpr!11775) (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))))))

(assert (=> d!1191614 (= lt!1429355 e!2495980)))

(declare-fun c!695317 () Bool)

(assert (=> d!1191614 (= c!695317 (isEmpty!25711 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))))))

(declare-fun validRegex!5328 (Regex!11775) Bool)

(assert (=> d!1191614 (validRegex!5328 (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))))

(assert (=> d!1191614 (= (matchR!5734 (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))) (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))) lt!1429355)))

(declare-fun b!4023535 () Bool)

(declare-fun e!2495979 () Bool)

(assert (=> b!4023535 (= e!2495984 e!2495979)))

(declare-fun res!1637268 () Bool)

(assert (=> b!4023535 (=> res!1637268 e!2495979)))

(declare-fun call!286749 () Bool)

(assert (=> b!4023535 (= res!1637268 call!286749)))

(declare-fun b!4023536 () Bool)

(assert (=> b!4023536 (= e!2495981 (= lt!1429355 call!286749))))

(declare-fun b!4023537 () Bool)

(declare-fun res!1637273 () Bool)

(assert (=> b!4023537 (=> res!1637273 e!2495982)))

(assert (=> b!4023537 (= res!1637273 (not ((_ is ElementMatch!11775) (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))))))

(assert (=> b!4023537 (= e!2495983 e!2495982)))

(declare-fun b!4023538 () Bool)

(declare-fun res!1637269 () Bool)

(assert (=> b!4023538 (=> (not res!1637269) (not e!2495985))))

(assert (=> b!4023538 (= res!1637269 (not call!286749))))

(declare-fun b!4023539 () Bool)

(declare-fun res!1637272 () Bool)

(assert (=> b!4023539 (=> (not res!1637272) (not e!2495985))))

(assert (=> b!4023539 (= res!1637272 (isEmpty!25711 (tail!6261 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277)))))))))

(declare-fun b!4023540 () Bool)

(declare-fun nullable!4128 (Regex!11775) Bool)

(assert (=> b!4023540 (= e!2495980 (nullable!4128 (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))))))

(declare-fun b!4023541 () Bool)

(assert (=> b!4023541 (= e!2495979 (not (= (head!8529 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))) (c!695205 (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))))))))

(declare-fun b!4023542 () Bool)

(assert (=> b!4023542 (= e!2495983 (not lt!1429355))))

(declare-fun b!4023543 () Bool)

(declare-fun res!1637266 () Bool)

(assert (=> b!4023543 (=> res!1637266 e!2495979)))

(assert (=> b!4023543 (= res!1637266 (not (isEmpty!25711 (tail!6261 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))))))))

(declare-fun bm!286744 () Bool)

(assert (=> bm!286744 (= call!286749 (isEmpty!25711 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))))))

(declare-fun b!4023544 () Bool)

(declare-fun res!1637267 () Bool)

(assert (=> b!4023544 (=> res!1637267 e!2495982)))

(assert (=> b!4023544 (= res!1637267 e!2495985)))

(declare-fun res!1637271 () Bool)

(assert (=> b!4023544 (=> (not res!1637271) (not e!2495985))))

(assert (=> b!4023544 (= res!1637271 lt!1429355)))

(assert (= (and d!1191614 c!695317) b!4023540))

(assert (= (and d!1191614 (not c!695317)) b!4023534))

(assert (= (and d!1191614 c!695315) b!4023536))

(assert (= (and d!1191614 (not c!695315)) b!4023531))

(assert (= (and b!4023531 c!695316) b!4023542))

(assert (= (and b!4023531 (not c!695316)) b!4023537))

(assert (= (and b!4023537 (not res!1637273)) b!4023544))

(assert (= (and b!4023544 res!1637271) b!4023538))

(assert (= (and b!4023538 res!1637269) b!4023539))

(assert (= (and b!4023539 res!1637272) b!4023533))

(assert (= (and b!4023544 (not res!1637267)) b!4023532))

(assert (= (and b!4023532 res!1637270) b!4023535))

(assert (= (and b!4023535 (not res!1637268)) b!4023543))

(assert (= (and b!4023543 (not res!1637266)) b!4023541))

(assert (= (or b!4023536 b!4023535 b!4023538) bm!286744))

(declare-fun m!4614635 () Bool)

(assert (=> b!4023540 m!4614635))

(assert (=> b!4023541 m!4614195))

(declare-fun m!4614637 () Bool)

(assert (=> b!4023541 m!4614637))

(assert (=> bm!286744 m!4614195))

(declare-fun m!4614639 () Bool)

(assert (=> bm!286744 m!4614639))

(assert (=> b!4023534 m!4614195))

(assert (=> b!4023534 m!4614637))

(assert (=> b!4023534 m!4614637))

(declare-fun m!4614641 () Bool)

(assert (=> b!4023534 m!4614641))

(assert (=> b!4023534 m!4614195))

(declare-fun m!4614643 () Bool)

(assert (=> b!4023534 m!4614643))

(assert (=> b!4023534 m!4614641))

(assert (=> b!4023534 m!4614643))

(declare-fun m!4614645 () Bool)

(assert (=> b!4023534 m!4614645))

(assert (=> b!4023543 m!4614195))

(assert (=> b!4023543 m!4614643))

(assert (=> b!4023543 m!4614643))

(declare-fun m!4614647 () Bool)

(assert (=> b!4023543 m!4614647))

(assert (=> b!4023539 m!4614195))

(assert (=> b!4023539 m!4614643))

(assert (=> b!4023539 m!4614643))

(assert (=> b!4023539 m!4614647))

(assert (=> b!4023533 m!4614195))

(assert (=> b!4023533 m!4614637))

(assert (=> d!1191614 m!4614195))

(assert (=> d!1191614 m!4614639))

(declare-fun m!4614649 () Bool)

(assert (=> d!1191614 m!4614649))

(assert (=> b!4023102 d!1191614))

(assert (=> b!4023102 d!1191610))

(assert (=> b!4023102 d!1191606))

(assert (=> b!4023102 d!1191608))

(declare-fun d!1191616 () Bool)

(declare-fun lt!1429356 () Int)

(assert (=> d!1191616 (>= lt!1429356 0)))

(declare-fun e!2495986 () Int)

(assert (=> d!1191616 (= lt!1429356 e!2495986)))

(declare-fun c!695318 () Bool)

(assert (=> d!1191616 (= c!695318 ((_ is Nil!43062) lt!1429282))))

(assert (=> d!1191616 (= (size!32195 lt!1429282) lt!1429356)))

(declare-fun b!4023545 () Bool)

(assert (=> b!4023545 (= e!2495986 0)))

(declare-fun b!4023546 () Bool)

(assert (=> b!4023546 (= e!2495986 (+ 1 (size!32195 (t!333777 lt!1429282))))))

(assert (= (and d!1191616 c!695318) b!4023545))

(assert (= (and d!1191616 (not c!695318)) b!4023546))

(declare-fun m!4614651 () Bool)

(assert (=> b!4023546 m!4614651))

(assert (=> b!4023122 d!1191616))

(assert (=> b!4023122 d!1191396))

(assert (=> b!4023122 d!1191410))

(declare-fun d!1191618 () Bool)

(declare-fun lt!1429357 () Int)

(assert (=> d!1191618 (>= lt!1429357 0)))

(declare-fun e!2495987 () Int)

(assert (=> d!1191618 (= lt!1429357 e!2495987)))

(declare-fun c!695319 () Bool)

(assert (=> d!1191618 (= c!695319 ((_ is Nil!43062) (t!333777 newSuffix!27)))))

(assert (=> d!1191618 (= (size!32195 (t!333777 newSuffix!27)) lt!1429357)))

(declare-fun b!4023547 () Bool)

(assert (=> b!4023547 (= e!2495987 0)))

(declare-fun b!4023548 () Bool)

(assert (=> b!4023548 (= e!2495987 (+ 1 (size!32195 (t!333777 (t!333777 newSuffix!27)))))))

(assert (= (and d!1191618 c!695319) b!4023547))

(assert (= (and d!1191618 (not c!695319)) b!4023548))

(declare-fun m!4614653 () Bool)

(assert (=> b!4023548 m!4614653))

(assert (=> b!4023005 d!1191618))

(declare-fun b!4023551 () Bool)

(declare-fun res!1637275 () Bool)

(declare-fun e!2495989 () Bool)

(assert (=> b!4023551 (=> (not res!1637275) (not e!2495989))))

(declare-fun lt!1429358 () List!43186)

(assert (=> b!4023551 (= res!1637275 (= (size!32195 lt!1429358) (+ (size!32195 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))) (size!32195 (_2!24225 (get!14139 lt!1429277))))))))

(declare-fun b!4023549 () Bool)

(declare-fun e!2495988 () List!43186)

(assert (=> b!4023549 (= e!2495988 (_2!24225 (get!14139 lt!1429277)))))

(declare-fun b!4023552 () Bool)

(assert (=> b!4023552 (= e!2495989 (or (not (= (_2!24225 (get!14139 lt!1429277)) Nil!43062)) (= lt!1429358 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277)))))))))

(declare-fun b!4023550 () Bool)

(assert (=> b!4023550 (= e!2495988 (Cons!43062 (h!48482 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))) (++!11272 (t!333777 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))) (_2!24225 (get!14139 lt!1429277)))))))

(declare-fun d!1191620 () Bool)

(assert (=> d!1191620 e!2495989))

(declare-fun res!1637274 () Bool)

(assert (=> d!1191620 (=> (not res!1637274) (not e!2495989))))

(assert (=> d!1191620 (= res!1637274 (= (content!6532 lt!1429358) ((_ map or) (content!6532 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))) (content!6532 (_2!24225 (get!14139 lt!1429277))))))))

(assert (=> d!1191620 (= lt!1429358 e!2495988)))

(declare-fun c!695320 () Bool)

(assert (=> d!1191620 (= c!695320 ((_ is Nil!43062) (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277))))))))

(assert (=> d!1191620 (= (++!11272 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429277)))) (_2!24225 (get!14139 lt!1429277))) lt!1429358)))

(assert (= (and d!1191620 c!695320) b!4023549))

(assert (= (and d!1191620 (not c!695320)) b!4023550))

(assert (= (and d!1191620 res!1637274) b!4023551))

(assert (= (and b!4023551 res!1637275) b!4023552))

(declare-fun m!4614655 () Bool)

(assert (=> b!4023551 m!4614655))

(assert (=> b!4023551 m!4614195))

(declare-fun m!4614657 () Bool)

(assert (=> b!4023551 m!4614657))

(assert (=> b!4023551 m!4614213))

(declare-fun m!4614659 () Bool)

(assert (=> b!4023550 m!4614659))

(declare-fun m!4614661 () Bool)

(assert (=> d!1191620 m!4614661))

(assert (=> d!1191620 m!4614195))

(declare-fun m!4614663 () Bool)

(assert (=> d!1191620 m!4614663))

(declare-fun m!4614665 () Bool)

(assert (=> d!1191620 m!4614665))

(assert (=> b!4023100 d!1191620))

(assert (=> b!4023100 d!1191606))

(assert (=> b!4023100 d!1191608))

(assert (=> b!4023100 d!1191610))

(declare-fun d!1191622 () Bool)

(declare-fun isBalanced!3667 (Conc!13081) Bool)

(assert (=> d!1191622 (= (inv!57522 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))) (isBalanced!3667 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))))))

(declare-fun bs!589965 () Bool)

(assert (= bs!589965 d!1191622))

(declare-fun m!4614667 () Bool)

(assert (=> bs!589965 m!4614667))

(assert (=> tb!241845 d!1191622))

(declare-fun d!1191624 () Bool)

(assert (=> d!1191624 (= (isDefined!7080 lt!1429277) (not (isEmpty!25712 lt!1429277)))))

(declare-fun bs!589966 () Bool)

(assert (= bs!589966 d!1191624))

(assert (=> bs!589966 m!4614203))

(assert (=> b!4023101 d!1191624))

(declare-fun b!4023555 () Bool)

(declare-fun res!1637277 () Bool)

(declare-fun e!2495991 () Bool)

(assert (=> b!4023555 (=> (not res!1637277) (not e!2495991))))

(declare-fun lt!1429359 () List!43186)

(assert (=> b!4023555 (= res!1637277 (= (size!32195 lt!1429359) (+ (size!32195 (t!333777 prefix!494)) (size!32195 newSuffix!27))))))

(declare-fun b!4023553 () Bool)

(declare-fun e!2495990 () List!43186)

(assert (=> b!4023553 (= e!2495990 newSuffix!27)))

(declare-fun b!4023556 () Bool)

(assert (=> b!4023556 (= e!2495991 (or (not (= newSuffix!27 Nil!43062)) (= lt!1429359 (t!333777 prefix!494))))))

(declare-fun b!4023554 () Bool)

(assert (=> b!4023554 (= e!2495990 (Cons!43062 (h!48482 (t!333777 prefix!494)) (++!11272 (t!333777 (t!333777 prefix!494)) newSuffix!27)))))

(declare-fun d!1191626 () Bool)

(assert (=> d!1191626 e!2495991))

(declare-fun res!1637276 () Bool)

(assert (=> d!1191626 (=> (not res!1637276) (not e!2495991))))

(assert (=> d!1191626 (= res!1637276 (= (content!6532 lt!1429359) ((_ map or) (content!6532 (t!333777 prefix!494)) (content!6532 newSuffix!27))))))

(assert (=> d!1191626 (= lt!1429359 e!2495990)))

(declare-fun c!695321 () Bool)

(assert (=> d!1191626 (= c!695321 ((_ is Nil!43062) (t!333777 prefix!494)))))

(assert (=> d!1191626 (= (++!11272 (t!333777 prefix!494) newSuffix!27) lt!1429359)))

(assert (= (and d!1191626 c!695321) b!4023553))

(assert (= (and d!1191626 (not c!695321)) b!4023554))

(assert (= (and d!1191626 res!1637276) b!4023555))

(assert (= (and b!4023555 res!1637277) b!4023556))

(declare-fun m!4614669 () Bool)

(assert (=> b!4023555 m!4614669))

(assert (=> b!4023555 m!4614115))

(assert (=> b!4023555 m!4614003))

(declare-fun m!4614671 () Bool)

(assert (=> b!4023554 m!4614671))

(declare-fun m!4614673 () Bool)

(assert (=> d!1191626 m!4614673))

(assert (=> d!1191626 m!4614487))

(assert (=> d!1191626 m!4614245))

(assert (=> b!4023121 d!1191626))

(declare-fun d!1191628 () Bool)

(declare-fun lt!1429360 () Int)

(assert (=> d!1191628 (>= lt!1429360 0)))

(declare-fun e!2495992 () Int)

(assert (=> d!1191628 (= lt!1429360 e!2495992)))

(declare-fun c!695322 () Bool)

(assert (=> d!1191628 (= c!695322 ((_ is Nil!43062) lt!1429280))))

(assert (=> d!1191628 (= (size!32195 lt!1429280) lt!1429360)))

(declare-fun b!4023557 () Bool)

(assert (=> b!4023557 (= e!2495992 0)))

(declare-fun b!4023558 () Bool)

(assert (=> b!4023558 (= e!2495992 (+ 1 (size!32195 (t!333777 lt!1429280))))))

(assert (= (and d!1191628 c!695322) b!4023557))

(assert (= (and d!1191628 (not c!695322)) b!4023558))

(declare-fun m!4614675 () Bool)

(assert (=> b!4023558 m!4614675))

(assert (=> b!4023114 d!1191628))

(assert (=> b!4023114 d!1191396))

(assert (=> b!4023114 d!1191408))

(declare-fun d!1191630 () Bool)

(declare-fun charsToBigInt!0 (List!43187 Int) Int)

(assert (=> d!1191630 (= (inv!15 (value!216429 token!484)) (= (charsToBigInt!0 (text!50149 (value!216429 token!484)) 0) (value!216424 (value!216429 token!484))))))

(declare-fun bs!589967 () Bool)

(assert (= bs!589967 d!1191630))

(declare-fun m!4614677 () Bool)

(assert (=> bs!589967 m!4614677))

(assert (=> b!4022984 d!1191630))

(declare-fun d!1191632 () Bool)

(declare-fun c!695325 () Bool)

(assert (=> d!1191632 (= c!695325 ((_ is Nil!43064) rules!2999))))

(declare-fun e!2495995 () (InoxSet Rule!13540))

(assert (=> d!1191632 (= (content!6531 rules!2999) e!2495995)))

(declare-fun b!4023563 () Bool)

(assert (=> b!4023563 (= e!2495995 ((as const (Array Rule!13540 Bool)) false))))

(declare-fun b!4023564 () Bool)

(assert (=> b!4023564 (= e!2495995 ((_ map or) (store ((as const (Array Rule!13540 Bool)) false) (h!48484 rules!2999) true) (content!6531 (t!333779 rules!2999))))))

(assert (= (and d!1191632 c!695325) b!4023563))

(assert (= (and d!1191632 (not c!695325)) b!4023564))

(declare-fun m!4614679 () Bool)

(assert (=> b!4023564 m!4614679))

(assert (=> b!4023564 m!4614613))

(assert (=> d!1191404 d!1191632))

(declare-fun d!1191634 () Bool)

(declare-fun lt!1429361 () Int)

(assert (=> d!1191634 (>= lt!1429361 0)))

(declare-fun e!2495996 () Int)

(assert (=> d!1191634 (= lt!1429361 e!2495996)))

(declare-fun c!695326 () Bool)

(assert (=> d!1191634 (= c!695326 ((_ is Nil!43062) (_2!24225 (get!14139 lt!1429277))))))

(assert (=> d!1191634 (= (size!32195 (_2!24225 (get!14139 lt!1429277))) lt!1429361)))

(declare-fun b!4023565 () Bool)

(assert (=> b!4023565 (= e!2495996 0)))

(declare-fun b!4023566 () Bool)

(assert (=> b!4023566 (= e!2495996 (+ 1 (size!32195 (t!333777 (_2!24225 (get!14139 lt!1429277))))))))

(assert (= (and d!1191634 c!695326) b!4023565))

(assert (= (and d!1191634 (not c!695326)) b!4023566))

(declare-fun m!4614681 () Bool)

(assert (=> b!4023566 m!4614681))

(assert (=> b!4023099 d!1191634))

(assert (=> b!4023099 d!1191610))

(declare-fun d!1191636 () Bool)

(declare-fun lt!1429362 () Int)

(assert (=> d!1191636 (>= lt!1429362 0)))

(declare-fun e!2495997 () Int)

(assert (=> d!1191636 (= lt!1429362 e!2495997)))

(declare-fun c!695327 () Bool)

(assert (=> d!1191636 (= c!695327 ((_ is Nil!43062) (++!11272 prefix!494 suffix!1299)))))

(assert (=> d!1191636 (= (size!32195 (++!11272 prefix!494 suffix!1299)) lt!1429362)))

(declare-fun b!4023567 () Bool)

(assert (=> b!4023567 (= e!2495997 0)))

(declare-fun b!4023568 () Bool)

(assert (=> b!4023568 (= e!2495997 (+ 1 (size!32195 (t!333777 (++!11272 prefix!494 suffix!1299)))))))

(assert (= (and d!1191636 c!695327) b!4023567))

(assert (= (and d!1191636 (not c!695327)) b!4023568))

(declare-fun m!4614683 () Bool)

(assert (=> b!4023568 m!4614683))

(assert (=> b!4023099 d!1191636))

(declare-fun d!1191638 () Bool)

(declare-fun lt!1429363 () Int)

(assert (=> d!1191638 (>= lt!1429363 0)))

(declare-fun e!2495998 () Int)

(assert (=> d!1191638 (= lt!1429363 e!2495998)))

(declare-fun c!695328 () Bool)

(assert (=> d!1191638 (= c!695328 ((_ is Nil!43062) (t!333777 suffix!1299)))))

(assert (=> d!1191638 (= (size!32195 (t!333777 suffix!1299)) lt!1429363)))

(declare-fun b!4023569 () Bool)

(assert (=> b!4023569 (= e!2495998 0)))

(declare-fun b!4023570 () Bool)

(assert (=> b!4023570 (= e!2495998 (+ 1 (size!32195 (t!333777 (t!333777 suffix!1299)))))))

(assert (= (and d!1191638 c!695328) b!4023569))

(assert (= (and d!1191638 (not c!695328)) b!4023570))

(declare-fun m!4614685 () Bool)

(assert (=> b!4023570 m!4614685))

(assert (=> b!4023001 d!1191638))

(declare-fun d!1191640 () Bool)

(declare-fun c!695329 () Bool)

(assert (=> d!1191640 (= c!695329 ((_ is Nil!43062) lt!1429280))))

(declare-fun e!2495999 () (InoxSet C!23736))

(assert (=> d!1191640 (= (content!6532 lt!1429280) e!2495999)))

(declare-fun b!4023571 () Bool)

(assert (=> b!4023571 (= e!2495999 ((as const (Array C!23736 Bool)) false))))

(declare-fun b!4023572 () Bool)

(assert (=> b!4023572 (= e!2495999 ((_ map or) (store ((as const (Array C!23736 Bool)) false) (h!48482 lt!1429280) true) (content!6532 (t!333777 lt!1429280))))))

(assert (= (and d!1191640 c!695329) b!4023571))

(assert (= (and d!1191640 (not c!695329)) b!4023572))

(declare-fun m!4614687 () Bool)

(assert (=> b!4023572 m!4614687))

(declare-fun m!4614689 () Bool)

(assert (=> b!4023572 m!4614689))

(assert (=> d!1191418 d!1191640))

(assert (=> d!1191418 d!1191520))

(declare-fun d!1191642 () Bool)

(declare-fun c!695330 () Bool)

(assert (=> d!1191642 (= c!695330 ((_ is Nil!43062) suffix!1299))))

(declare-fun e!2496000 () (InoxSet C!23736))

(assert (=> d!1191642 (= (content!6532 suffix!1299) e!2496000)))

(declare-fun b!4023573 () Bool)

(assert (=> b!4023573 (= e!2496000 ((as const (Array C!23736 Bool)) false))))

(declare-fun b!4023574 () Bool)

(assert (=> b!4023574 (= e!2496000 ((_ map or) (store ((as const (Array C!23736 Bool)) false) (h!48482 suffix!1299) true) (content!6532 (t!333777 suffix!1299))))))

(assert (= (and d!1191642 c!695330) b!4023573))

(assert (= (and d!1191642 (not c!695330)) b!4023574))

(declare-fun m!4614691 () Bool)

(assert (=> b!4023574 m!4614691))

(declare-fun m!4614693 () Bool)

(assert (=> b!4023574 m!4614693))

(assert (=> d!1191418 d!1191642))

(declare-fun d!1191644 () Bool)

(declare-fun lt!1429364 () Int)

(assert (=> d!1191644 (>= lt!1429364 0)))

(declare-fun e!2496001 () Int)

(assert (=> d!1191644 (= lt!1429364 e!2496001)))

(declare-fun c!695331 () Bool)

(assert (=> d!1191644 (= c!695331 ((_ is Nil!43062) lt!1429281))))

(assert (=> d!1191644 (= (size!32195 lt!1429281) lt!1429364)))

(declare-fun b!4023575 () Bool)

(assert (=> b!4023575 (= e!2496001 0)))

(declare-fun b!4023576 () Bool)

(assert (=> b!4023576 (= e!2496001 (+ 1 (size!32195 (t!333777 lt!1429281))))))

(assert (= (and d!1191644 c!695331) b!4023575))

(assert (= (and d!1191644 (not c!695331)) b!4023576))

(declare-fun m!4614695 () Bool)

(assert (=> b!4023576 m!4614695))

(assert (=> b!4023118 d!1191644))

(assert (=> b!4023118 d!1191398))

(declare-fun d!1191646 () Bool)

(declare-fun lt!1429365 () Int)

(assert (=> d!1191646 (>= lt!1429365 0)))

(declare-fun e!2496002 () Int)

(assert (=> d!1191646 (= lt!1429365 e!2496002)))

(declare-fun c!695332 () Bool)

(assert (=> d!1191646 (= c!695332 ((_ is Nil!43062) newSuffixResult!27))))

(assert (=> d!1191646 (= (size!32195 newSuffixResult!27) lt!1429365)))

(declare-fun b!4023577 () Bool)

(assert (=> b!4023577 (= e!2496002 0)))

(declare-fun b!4023578 () Bool)

(assert (=> b!4023578 (= e!2496002 (+ 1 (size!32195 (t!333777 newSuffixResult!27))))))

(assert (= (and d!1191646 c!695332) b!4023577))

(assert (= (and d!1191646 (not c!695332)) b!4023578))

(declare-fun m!4614697 () Bool)

(assert (=> b!4023578 m!4614697))

(assert (=> b!4023118 d!1191646))

(declare-fun b!4023581 () Bool)

(declare-fun res!1637279 () Bool)

(declare-fun e!2496004 () Bool)

(assert (=> b!4023581 (=> (not res!1637279) (not e!2496004))))

(declare-fun lt!1429366 () List!43186)

(assert (=> b!4023581 (= res!1637279 (= (size!32195 lt!1429366) (+ (size!32195 (t!333777 prefix!494)) (size!32195 suffix!1299))))))

(declare-fun b!4023579 () Bool)

(declare-fun e!2496003 () List!43186)

(assert (=> b!4023579 (= e!2496003 suffix!1299)))

(declare-fun b!4023582 () Bool)

(assert (=> b!4023582 (= e!2496004 (or (not (= suffix!1299 Nil!43062)) (= lt!1429366 (t!333777 prefix!494))))))

(declare-fun b!4023580 () Bool)

(assert (=> b!4023580 (= e!2496003 (Cons!43062 (h!48482 (t!333777 prefix!494)) (++!11272 (t!333777 (t!333777 prefix!494)) suffix!1299)))))

(declare-fun d!1191648 () Bool)

(assert (=> d!1191648 e!2496004))

(declare-fun res!1637278 () Bool)

(assert (=> d!1191648 (=> (not res!1637278) (not e!2496004))))

(assert (=> d!1191648 (= res!1637278 (= (content!6532 lt!1429366) ((_ map or) (content!6532 (t!333777 prefix!494)) (content!6532 suffix!1299))))))

(assert (=> d!1191648 (= lt!1429366 e!2496003)))

(declare-fun c!695333 () Bool)

(assert (=> d!1191648 (= c!695333 ((_ is Nil!43062) (t!333777 prefix!494)))))

(assert (=> d!1191648 (= (++!11272 (t!333777 prefix!494) suffix!1299) lt!1429366)))

(assert (= (and d!1191648 c!695333) b!4023579))

(assert (= (and d!1191648 (not c!695333)) b!4023580))

(assert (= (and d!1191648 res!1637278) b!4023581))

(assert (= (and b!4023581 res!1637279) b!4023582))

(declare-fun m!4614699 () Bool)

(assert (=> b!4023581 m!4614699))

(assert (=> b!4023581 m!4614115))

(assert (=> b!4023581 m!4614001))

(declare-fun m!4614701 () Bool)

(assert (=> b!4023580 m!4614701))

(declare-fun m!4614703 () Bool)

(assert (=> d!1191648 m!4614703))

(assert (=> d!1191648 m!4614487))

(assert (=> d!1191648 m!4614225))

(assert (=> b!4023113 d!1191648))

(declare-fun d!1191650 () Bool)

(declare-fun lt!1429367 () Int)

(assert (=> d!1191650 (>= lt!1429367 0)))

(declare-fun e!2496005 () Int)

(assert (=> d!1191650 (= lt!1429367 e!2496005)))

(declare-fun c!695334 () Bool)

(assert (=> d!1191650 (= c!695334 ((_ is Nil!43062) (originalCharacters!7470 token!484)))))

(assert (=> d!1191650 (= (size!32195 (originalCharacters!7470 token!484)) lt!1429367)))

(declare-fun b!4023583 () Bool)

(assert (=> b!4023583 (= e!2496005 0)))

(declare-fun b!4023584 () Bool)

(assert (=> b!4023584 (= e!2496005 (+ 1 (size!32195 (t!333777 (originalCharacters!7470 token!484)))))))

(assert (= (and d!1191650 c!695334) b!4023583))

(assert (= (and d!1191650 (not c!695334)) b!4023584))

(declare-fun m!4614705 () Bool)

(assert (=> b!4023584 m!4614705))

(assert (=> b!4022940 d!1191650))

(declare-fun b!4023587 () Bool)

(declare-fun res!1637281 () Bool)

(declare-fun e!2496007 () Bool)

(assert (=> b!4023587 (=> (not res!1637281) (not e!2496007))))

(declare-fun lt!1429368 () List!43186)

(assert (=> b!4023587 (= res!1637281 (= (size!32195 lt!1429368) (+ (size!32195 (t!333777 lt!1429215)) (size!32195 newSuffixResult!27))))))

(declare-fun b!4023585 () Bool)

(declare-fun e!2496006 () List!43186)

(assert (=> b!4023585 (= e!2496006 newSuffixResult!27)))

(declare-fun b!4023588 () Bool)

(assert (=> b!4023588 (= e!2496007 (or (not (= newSuffixResult!27 Nil!43062)) (= lt!1429368 (t!333777 lt!1429215))))))

(declare-fun b!4023586 () Bool)

(assert (=> b!4023586 (= e!2496006 (Cons!43062 (h!48482 (t!333777 lt!1429215)) (++!11272 (t!333777 (t!333777 lt!1429215)) newSuffixResult!27)))))

(declare-fun d!1191652 () Bool)

(assert (=> d!1191652 e!2496007))

(declare-fun res!1637280 () Bool)

(assert (=> d!1191652 (=> (not res!1637280) (not e!2496007))))

(assert (=> d!1191652 (= res!1637280 (= (content!6532 lt!1429368) ((_ map or) (content!6532 (t!333777 lt!1429215)) (content!6532 newSuffixResult!27))))))

(assert (=> d!1191652 (= lt!1429368 e!2496006)))

(declare-fun c!695335 () Bool)

(assert (=> d!1191652 (= c!695335 ((_ is Nil!43062) (t!333777 lt!1429215)))))

(assert (=> d!1191652 (= (++!11272 (t!333777 lt!1429215) newSuffixResult!27) lt!1429368)))

(assert (= (and d!1191652 c!695335) b!4023585))

(assert (= (and d!1191652 (not c!695335)) b!4023586))

(assert (= (and d!1191652 res!1637280) b!4023587))

(assert (= (and b!4023587 res!1637281) b!4023588))

(declare-fun m!4614707 () Bool)

(assert (=> b!4023587 m!4614707))

(assert (=> b!4023587 m!4614117))

(assert (=> b!4023587 m!4614229))

(declare-fun m!4614709 () Bool)

(assert (=> b!4023586 m!4614709))

(declare-fun m!4614711 () Bool)

(assert (=> d!1191652 m!4614711))

(assert (=> d!1191652 m!4614545))

(assert (=> d!1191652 m!4614237))

(assert (=> b!4023117 d!1191652))

(declare-fun bs!589968 () Bool)

(declare-fun d!1191654 () Bool)

(assert (= bs!589968 (and d!1191654 d!1191566)))

(declare-fun lambda!127145 () Int)

(assert (=> bs!589968 (= (= (toValue!9382 (transformation!6870 (rule!9924 token!484))) (toValue!9382 (transformation!6870 (h!48484 rules!2999)))) (= lambda!127145 lambda!127140))))

(assert (=> d!1191654 true))

(assert (=> d!1191654 (< (dynLambda!18252 order!22535 (toValue!9382 (transformation!6870 (rule!9924 token!484)))) (dynLambda!18253 order!22537 lambda!127145))))

(assert (=> d!1191654 (= (equivClasses!2834 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (toValue!9382 (transformation!6870 (rule!9924 token!484)))) (Forall2!1076 lambda!127145))))

(declare-fun bs!589969 () Bool)

(assert (= bs!589969 d!1191654))

(declare-fun m!4614713 () Bool)

(assert (=> bs!589969 m!4614713))

(assert (=> b!4023127 d!1191654))

(declare-fun d!1191656 () Bool)

(declare-fun charsToBigInt!1 (List!43187) Int)

(assert (=> d!1191656 (= (inv!17 (value!216429 token!484)) (= (charsToBigInt!1 (text!50148 (value!216429 token!484))) (value!216421 (value!216429 token!484))))))

(declare-fun bs!589970 () Bool)

(assert (= bs!589970 d!1191656))

(declare-fun m!4614715 () Bool)

(assert (=> bs!589970 m!4614715))

(assert (=> b!4022981 d!1191656))

(declare-fun b!4023607 () Bool)

(declare-fun res!1637299 () Bool)

(declare-fun e!2496018 () Bool)

(assert (=> b!4023607 (=> (not res!1637299) (not e!2496018))))

(declare-fun lt!1429383 () Option!9284)

(assert (=> b!4023607 (= res!1637299 (= (++!11272 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429383)))) (_2!24225 (get!14139 lt!1429383))) (++!11272 prefix!494 suffix!1299)))))

(declare-fun b!4023608 () Bool)

(declare-fun e!2496019 () Option!9284)

(assert (=> b!4023608 (= e!2496019 None!9283)))

(declare-fun b!4023609 () Bool)

(declare-datatypes ((tuple2!42186 0))(
  ( (tuple2!42187 (_1!24227 List!43186) (_2!24227 List!43186)) )
))
(declare-fun lt!1429379 () tuple2!42186)

(declare-fun size!32198 (BalanceConc!25756) Int)

(assert (=> b!4023609 (= e!2496019 (Some!9283 (tuple2!42183 (Token!12879 (apply!10065 (transformation!6870 (h!48484 rules!2999)) (seqFromList!5093 (_1!24227 lt!1429379))) (h!48484 rules!2999) (size!32198 (seqFromList!5093 (_1!24227 lt!1429379))) (_1!24227 lt!1429379)) (_2!24227 lt!1429379))))))

(declare-fun lt!1429380 () Unit!62230)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1342 (Regex!11775 List!43186) Unit!62230)

(assert (=> b!4023609 (= lt!1429380 (longestMatchIsAcceptedByMatchOrIsEmpty!1342 (regex!6870 (h!48484 rules!2999)) (++!11272 prefix!494 suffix!1299)))))

(declare-fun res!1637300 () Bool)

(declare-fun findLongestMatchInner!1369 (Regex!11775 List!43186 Int List!43186 List!43186 Int) tuple2!42186)

(assert (=> b!4023609 (= res!1637300 (isEmpty!25711 (_1!24227 (findLongestMatchInner!1369 (regex!6870 (h!48484 rules!2999)) Nil!43062 (size!32195 Nil!43062) (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299) (size!32195 (++!11272 prefix!494 suffix!1299))))))))

(declare-fun e!2496016 () Bool)

(assert (=> b!4023609 (=> res!1637300 e!2496016)))

(assert (=> b!4023609 e!2496016))

(declare-fun lt!1429381 () Unit!62230)

(assert (=> b!4023609 (= lt!1429381 lt!1429380)))

(declare-fun lt!1429382 () Unit!62230)

(declare-fun lemmaSemiInverse!1889 (TokenValueInjection!13628 BalanceConc!25756) Unit!62230)

(assert (=> b!4023609 (= lt!1429382 (lemmaSemiInverse!1889 (transformation!6870 (h!48484 rules!2999)) (seqFromList!5093 (_1!24227 lt!1429379))))))

(declare-fun b!4023610 () Bool)

(declare-fun res!1637297 () Bool)

(assert (=> b!4023610 (=> (not res!1637297) (not e!2496018))))

(assert (=> b!4023610 (= res!1637297 (= (value!216429 (_1!24225 (get!14139 lt!1429383))) (apply!10065 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429383)))) (seqFromList!5093 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429383)))))))))

(declare-fun b!4023611 () Bool)

(declare-fun res!1637302 () Bool)

(assert (=> b!4023611 (=> (not res!1637302) (not e!2496018))))

(assert (=> b!4023611 (= res!1637302 (< (size!32195 (_2!24225 (get!14139 lt!1429383))) (size!32195 (++!11272 prefix!494 suffix!1299))))))

(declare-fun b!4023612 () Bool)

(declare-fun res!1637301 () Bool)

(assert (=> b!4023612 (=> (not res!1637301) (not e!2496018))))

(assert (=> b!4023612 (= res!1637301 (= (rule!9924 (_1!24225 (get!14139 lt!1429383))) (h!48484 rules!2999)))))

(declare-fun b!4023613 () Bool)

(declare-fun e!2496017 () Bool)

(assert (=> b!4023613 (= e!2496017 e!2496018)))

(declare-fun res!1637298 () Bool)

(assert (=> b!4023613 (=> (not res!1637298) (not e!2496018))))

(assert (=> b!4023613 (= res!1637298 (matchR!5734 (regex!6870 (h!48484 rules!2999)) (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429383))))))))

(declare-fun b!4023615 () Bool)

(assert (=> b!4023615 (= e!2496016 (matchR!5734 (regex!6870 (h!48484 rules!2999)) (_1!24227 (findLongestMatchInner!1369 (regex!6870 (h!48484 rules!2999)) Nil!43062 (size!32195 Nil!43062) (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299) (size!32195 (++!11272 prefix!494 suffix!1299))))))))

(declare-fun b!4023614 () Bool)

(assert (=> b!4023614 (= e!2496018 (= (size!32196 (_1!24225 (get!14139 lt!1429383))) (size!32195 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429383))))))))

(declare-fun d!1191658 () Bool)

(assert (=> d!1191658 e!2496017))

(declare-fun res!1637296 () Bool)

(assert (=> d!1191658 (=> res!1637296 e!2496017)))

(assert (=> d!1191658 (= res!1637296 (isEmpty!25712 lt!1429383))))

(assert (=> d!1191658 (= lt!1429383 e!2496019)))

(declare-fun c!695338 () Bool)

(assert (=> d!1191658 (= c!695338 (isEmpty!25711 (_1!24227 lt!1429379)))))

(declare-fun findLongestMatch!1282 (Regex!11775 List!43186) tuple2!42186)

(assert (=> d!1191658 (= lt!1429379 (findLongestMatch!1282 (regex!6870 (h!48484 rules!2999)) (++!11272 prefix!494 suffix!1299)))))

(assert (=> d!1191658 (ruleValid!2800 thiss!21717 (h!48484 rules!2999))))

(assert (=> d!1191658 (= (maxPrefixOneRule!2775 thiss!21717 (h!48484 rules!2999) (++!11272 prefix!494 suffix!1299)) lt!1429383)))

(assert (= (and d!1191658 c!695338) b!4023608))

(assert (= (and d!1191658 (not c!695338)) b!4023609))

(assert (= (and b!4023609 (not res!1637300)) b!4023615))

(assert (= (and d!1191658 (not res!1637296)) b!4023613))

(assert (= (and b!4023613 res!1637298) b!4023607))

(assert (= (and b!4023607 res!1637299) b!4023611))

(assert (= (and b!4023611 res!1637302) b!4023612))

(assert (= (and b!4023612 res!1637301) b!4023610))

(assert (= (and b!4023610 res!1637297) b!4023614))

(declare-fun m!4614717 () Bool)

(assert (=> b!4023614 m!4614717))

(declare-fun m!4614719 () Bool)

(assert (=> b!4023614 m!4614719))

(declare-fun m!4614721 () Bool)

(assert (=> d!1191658 m!4614721))

(declare-fun m!4614723 () Bool)

(assert (=> d!1191658 m!4614723))

(assert (=> d!1191658 m!4614005))

(declare-fun m!4614725 () Bool)

(assert (=> d!1191658 m!4614725))

(assert (=> d!1191658 m!4614475))

(assert (=> b!4023609 m!4614005))

(assert (=> b!4023609 m!4614215))

(declare-fun m!4614727 () Bool)

(assert (=> b!4023609 m!4614727))

(declare-fun m!4614729 () Bool)

(assert (=> b!4023609 m!4614729))

(assert (=> b!4023609 m!4614727))

(declare-fun m!4614731 () Bool)

(assert (=> b!4023609 m!4614731))

(assert (=> b!4023609 m!4614005))

(assert (=> b!4023609 m!4614005))

(assert (=> b!4023609 m!4614215))

(declare-fun m!4614733 () Bool)

(assert (=> b!4023609 m!4614733))

(assert (=> b!4023609 m!4614005))

(declare-fun m!4614735 () Bool)

(assert (=> b!4023609 m!4614735))

(assert (=> b!4023609 m!4614727))

(declare-fun m!4614737 () Bool)

(assert (=> b!4023609 m!4614737))

(assert (=> b!4023609 m!4614727))

(declare-fun m!4614739 () Bool)

(assert (=> b!4023609 m!4614739))

(assert (=> b!4023609 m!4614731))

(declare-fun m!4614741 () Bool)

(assert (=> b!4023609 m!4614741))

(assert (=> b!4023610 m!4614717))

(declare-fun m!4614743 () Bool)

(assert (=> b!4023610 m!4614743))

(assert (=> b!4023610 m!4614743))

(declare-fun m!4614745 () Bool)

(assert (=> b!4023610 m!4614745))

(assert (=> b!4023612 m!4614717))

(assert (=> b!4023613 m!4614717))

(declare-fun m!4614747 () Bool)

(assert (=> b!4023613 m!4614747))

(assert (=> b!4023613 m!4614747))

(declare-fun m!4614749 () Bool)

(assert (=> b!4023613 m!4614749))

(assert (=> b!4023613 m!4614749))

(declare-fun m!4614751 () Bool)

(assert (=> b!4023613 m!4614751))

(assert (=> b!4023615 m!4614731))

(assert (=> b!4023615 m!4614005))

(assert (=> b!4023615 m!4614215))

(assert (=> b!4023615 m!4614731))

(assert (=> b!4023615 m!4614005))

(assert (=> b!4023615 m!4614005))

(assert (=> b!4023615 m!4614215))

(assert (=> b!4023615 m!4614733))

(declare-fun m!4614753 () Bool)

(assert (=> b!4023615 m!4614753))

(assert (=> b!4023607 m!4614717))

(assert (=> b!4023607 m!4614747))

(assert (=> b!4023607 m!4614747))

(assert (=> b!4023607 m!4614749))

(assert (=> b!4023607 m!4614749))

(declare-fun m!4614755 () Bool)

(assert (=> b!4023607 m!4614755))

(assert (=> b!4023611 m!4614717))

(declare-fun m!4614757 () Bool)

(assert (=> b!4023611 m!4614757))

(assert (=> b!4023611 m!4614005))

(assert (=> b!4023611 m!4614215))

(assert (=> bm!286737 d!1191658))

(declare-fun b!4023626 () Bool)

(declare-fun e!2496025 () List!43186)

(declare-fun list!16014 (IArray!26167) List!43186)

(assert (=> b!4023626 (= e!2496025 (list!16014 (xs!16387 (c!695204 (charsOf!4686 token!484)))))))

(declare-fun b!4023624 () Bool)

(declare-fun e!2496024 () List!43186)

(assert (=> b!4023624 (= e!2496024 Nil!43062)))

(declare-fun d!1191660 () Bool)

(declare-fun c!695343 () Bool)

(assert (=> d!1191660 (= c!695343 ((_ is Empty!13081) (c!695204 (charsOf!4686 token!484))))))

(assert (=> d!1191660 (= (list!16012 (c!695204 (charsOf!4686 token!484))) e!2496024)))

(declare-fun b!4023625 () Bool)

(assert (=> b!4023625 (= e!2496024 e!2496025)))

(declare-fun c!695344 () Bool)

(assert (=> b!4023625 (= c!695344 ((_ is Leaf!20223) (c!695204 (charsOf!4686 token!484))))))

(declare-fun b!4023627 () Bool)

(assert (=> b!4023627 (= e!2496025 (++!11272 (list!16012 (left!32454 (c!695204 (charsOf!4686 token!484)))) (list!16012 (right!32784 (c!695204 (charsOf!4686 token!484))))))))

(assert (= (and d!1191660 c!695343) b!4023624))

(assert (= (and d!1191660 (not c!695343)) b!4023625))

(assert (= (and b!4023625 c!695344) b!4023626))

(assert (= (and b!4023625 (not c!695344)) b!4023627))

(declare-fun m!4614759 () Bool)

(assert (=> b!4023626 m!4614759))

(declare-fun m!4614761 () Bool)

(assert (=> b!4023627 m!4614761))

(declare-fun m!4614763 () Bool)

(assert (=> b!4023627 m!4614763))

(assert (=> b!4023627 m!4614761))

(assert (=> b!4023627 m!4614763))

(declare-fun m!4614765 () Bool)

(assert (=> b!4023627 m!4614765))

(assert (=> d!1191400 d!1191660))

(declare-fun d!1191662 () Bool)

(assert (=> d!1191662 (= (list!16010 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))) (list!16012 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))))))

(declare-fun bs!589971 () Bool)

(assert (= bs!589971 d!1191662))

(declare-fun m!4614767 () Bool)

(assert (=> bs!589971 m!4614767))

(assert (=> b!4022939 d!1191662))

(declare-fun d!1191664 () Bool)

(assert (=> d!1191664 true))

(declare-fun order!22539 () Int)

(declare-fun lambda!127148 () Int)

(declare-fun order!22541 () Int)

(declare-fun dynLambda!18258 (Int Int) Int)

(declare-fun dynLambda!18259 (Int Int) Int)

(assert (=> d!1191664 (< (dynLambda!18258 order!22539 (toChars!9241 (transformation!6870 (h!48484 rules!2999)))) (dynLambda!18259 order!22541 lambda!127148))))

(assert (=> d!1191664 true))

(assert (=> d!1191664 (< (dynLambda!18252 order!22535 (toValue!9382 (transformation!6870 (h!48484 rules!2999)))) (dynLambda!18259 order!22541 lambda!127148))))

(declare-fun Forall!1477 (Int) Bool)

(assert (=> d!1191664 (= (semiInverseModEq!2935 (toChars!9241 (transformation!6870 (h!48484 rules!2999))) (toValue!9382 (transformation!6870 (h!48484 rules!2999)))) (Forall!1477 lambda!127148))))

(declare-fun bs!589972 () Bool)

(assert (= bs!589972 d!1191664))

(declare-fun m!4614769 () Bool)

(assert (=> bs!589972 m!4614769))

(assert (=> d!1191426 d!1191664))

(declare-fun d!1191666 () Bool)

(declare-fun charsToInt!0 (List!43187) (_ BitVec 32))

(assert (=> d!1191666 (= (inv!16 (value!216429 token!484)) (= (charsToInt!0 (text!50147 (value!216429 token!484))) (value!216420 (value!216429 token!484))))))

(declare-fun bs!589973 () Bool)

(assert (= bs!589973 d!1191666))

(declare-fun m!4614771 () Bool)

(assert (=> bs!589973 m!4614771))

(assert (=> b!4022982 d!1191666))

(declare-fun b!4023632 () Bool)

(declare-fun e!2496028 () Bool)

(declare-fun lt!1429388 () Option!9284)

(assert (=> b!4023632 (= e!2496028 (contains!8552 (t!333779 rules!2999) (rule!9924 (_1!24225 (get!14139 lt!1429388)))))))

(declare-fun b!4023633 () Bool)

(declare-fun res!1637305 () Bool)

(assert (=> b!4023633 (=> (not res!1637305) (not e!2496028))))

(assert (=> b!4023633 (= res!1637305 (= (value!216429 (_1!24225 (get!14139 lt!1429388))) (apply!10065 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429388)))) (seqFromList!5093 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429388)))))))))

(declare-fun call!286750 () Option!9284)

(declare-fun bm!286745 () Bool)

(assert (=> bm!286745 (= call!286750 (maxPrefixOneRule!2775 thiss!21717 (h!48484 (t!333779 rules!2999)) (++!11272 prefix!494 suffix!1299)))))

(declare-fun b!4023634 () Bool)

(declare-fun e!2496027 () Option!9284)

(declare-fun lt!1429387 () Option!9284)

(declare-fun lt!1429384 () Option!9284)

(assert (=> b!4023634 (= e!2496027 (ite (and ((_ is None!9283) lt!1429387) ((_ is None!9283) lt!1429384)) None!9283 (ite ((_ is None!9283) lt!1429384) lt!1429387 (ite ((_ is None!9283) lt!1429387) lt!1429384 (ite (>= (size!32196 (_1!24225 (v!39659 lt!1429387))) (size!32196 (_1!24225 (v!39659 lt!1429384)))) lt!1429387 lt!1429384)))))))

(assert (=> b!4023634 (= lt!1429387 call!286750)))

(assert (=> b!4023634 (= lt!1429384 (maxPrefix!3757 thiss!21717 (t!333779 (t!333779 rules!2999)) (++!11272 prefix!494 suffix!1299)))))

(declare-fun b!4023635 () Bool)

(assert (=> b!4023635 (= e!2496027 call!286750)))

(declare-fun b!4023636 () Bool)

(declare-fun res!1637306 () Bool)

(assert (=> b!4023636 (=> (not res!1637306) (not e!2496028))))

(assert (=> b!4023636 (= res!1637306 (< (size!32195 (_2!24225 (get!14139 lt!1429388))) (size!32195 (++!11272 prefix!494 suffix!1299))))))

(declare-fun b!4023637 () Bool)

(declare-fun res!1637307 () Bool)

(assert (=> b!4023637 (=> (not res!1637307) (not e!2496028))))

(assert (=> b!4023637 (= res!1637307 (= (++!11272 (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429388)))) (_2!24225 (get!14139 lt!1429388))) (++!11272 prefix!494 suffix!1299)))))

(declare-fun d!1191668 () Bool)

(declare-fun e!2496026 () Bool)

(assert (=> d!1191668 e!2496026))

(declare-fun res!1637303 () Bool)

(assert (=> d!1191668 (=> res!1637303 e!2496026)))

(assert (=> d!1191668 (= res!1637303 (isEmpty!25712 lt!1429388))))

(assert (=> d!1191668 (= lt!1429388 e!2496027)))

(declare-fun c!695345 () Bool)

(assert (=> d!1191668 (= c!695345 (and ((_ is Cons!43064) (t!333779 rules!2999)) ((_ is Nil!43064) (t!333779 (t!333779 rules!2999)))))))

(declare-fun lt!1429385 () Unit!62230)

(declare-fun lt!1429386 () Unit!62230)

(assert (=> d!1191668 (= lt!1429385 lt!1429386)))

(assert (=> d!1191668 (isPrefix!3957 (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299))))

(assert (=> d!1191668 (= lt!1429386 (lemmaIsPrefixRefl!2531 (++!11272 prefix!494 suffix!1299) (++!11272 prefix!494 suffix!1299)))))

(assert (=> d!1191668 (rulesValidInductive!2501 thiss!21717 (t!333779 rules!2999))))

(assert (=> d!1191668 (= (maxPrefix!3757 thiss!21717 (t!333779 rules!2999) (++!11272 prefix!494 suffix!1299)) lt!1429388)))

(declare-fun b!4023638 () Bool)

(assert (=> b!4023638 (= e!2496026 e!2496028)))

(declare-fun res!1637308 () Bool)

(assert (=> b!4023638 (=> (not res!1637308) (not e!2496028))))

(assert (=> b!4023638 (= res!1637308 (isDefined!7080 lt!1429388))))

(declare-fun b!4023639 () Bool)

(declare-fun res!1637309 () Bool)

(assert (=> b!4023639 (=> (not res!1637309) (not e!2496028))))

(assert (=> b!4023639 (= res!1637309 (matchR!5734 (regex!6870 (rule!9924 (_1!24225 (get!14139 lt!1429388)))) (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429388))))))))

(declare-fun b!4023640 () Bool)

(declare-fun res!1637304 () Bool)

(assert (=> b!4023640 (=> (not res!1637304) (not e!2496028))))

(assert (=> b!4023640 (= res!1637304 (= (list!16010 (charsOf!4686 (_1!24225 (get!14139 lt!1429388)))) (originalCharacters!7470 (_1!24225 (get!14139 lt!1429388)))))))

(assert (= (and d!1191668 c!695345) b!4023635))

(assert (= (and d!1191668 (not c!695345)) b!4023634))

(assert (= (or b!4023635 b!4023634) bm!286745))

(assert (= (and d!1191668 (not res!1637303)) b!4023638))

(assert (= (and b!4023638 res!1637308) b!4023640))

(assert (= (and b!4023640 res!1637304) b!4023636))

(assert (= (and b!4023636 res!1637306) b!4023637))

(assert (= (and b!4023637 res!1637307) b!4023633))

(assert (= (and b!4023633 res!1637305) b!4023639))

(assert (= (and b!4023639 res!1637309) b!4023632))

(declare-fun m!4614773 () Bool)

(assert (=> b!4023633 m!4614773))

(declare-fun m!4614775 () Bool)

(assert (=> b!4023633 m!4614775))

(assert (=> b!4023633 m!4614775))

(declare-fun m!4614777 () Bool)

(assert (=> b!4023633 m!4614777))

(assert (=> b!4023632 m!4614773))

(declare-fun m!4614779 () Bool)

(assert (=> b!4023632 m!4614779))

(assert (=> b!4023634 m!4614005))

(declare-fun m!4614781 () Bool)

(assert (=> b!4023634 m!4614781))

(assert (=> b!4023639 m!4614773))

(declare-fun m!4614783 () Bool)

(assert (=> b!4023639 m!4614783))

(assert (=> b!4023639 m!4614783))

(declare-fun m!4614785 () Bool)

(assert (=> b!4023639 m!4614785))

(assert (=> b!4023639 m!4614785))

(declare-fun m!4614787 () Bool)

(assert (=> b!4023639 m!4614787))

(assert (=> bm!286745 m!4614005))

(declare-fun m!4614789 () Bool)

(assert (=> bm!286745 m!4614789))

(assert (=> b!4023637 m!4614773))

(assert (=> b!4023637 m!4614783))

(assert (=> b!4023637 m!4614783))

(assert (=> b!4023637 m!4614785))

(assert (=> b!4023637 m!4614785))

(declare-fun m!4614791 () Bool)

(assert (=> b!4023637 m!4614791))

(declare-fun m!4614793 () Bool)

(assert (=> d!1191668 m!4614793))

(assert (=> d!1191668 m!4614005))

(assert (=> d!1191668 m!4614005))

(assert (=> d!1191668 m!4614205))

(assert (=> d!1191668 m!4614005))

(assert (=> d!1191668 m!4614005))

(assert (=> d!1191668 m!4614207))

(assert (=> d!1191668 m!4614477))

(declare-fun m!4614795 () Bool)

(assert (=> b!4023638 m!4614795))

(assert (=> b!4023640 m!4614773))

(assert (=> b!4023640 m!4614783))

(assert (=> b!4023640 m!4614783))

(assert (=> b!4023640 m!4614785))

(assert (=> b!4023636 m!4614773))

(declare-fun m!4614797 () Bool)

(assert (=> b!4023636 m!4614797))

(assert (=> b!4023636 m!4614005))

(assert (=> b!4023636 m!4614215))

(assert (=> b!4023097 d!1191668))

(assert (=> b!4023096 d!1191610))

(declare-fun d!1191670 () Bool)

(declare-fun dynLambda!18260 (Int BalanceConc!25756) TokenValue!7100)

(assert (=> d!1191670 (= (apply!10065 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))) (seqFromList!5093 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429277))))) (dynLambda!18260 (toValue!9382 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))) (seqFromList!5093 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429277))))))))

(declare-fun b_lambda!117385 () Bool)

(assert (=> (not b_lambda!117385) (not d!1191670)))

(declare-fun tb!241877 () Bool)

(declare-fun t!333821 () Bool)

(assert (=> (and b!4022865 (= (toValue!9382 (transformation!6870 (rule!9924 token!484))) (toValue!9382 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))) t!333821) tb!241877))

(declare-fun result!293138 () Bool)

(assert (=> tb!241877 (= result!293138 (inv!21 (dynLambda!18260 (toValue!9382 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277))))) (seqFromList!5093 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429277)))))))))

(declare-fun m!4614799 () Bool)

(assert (=> tb!241877 m!4614799))

(assert (=> d!1191670 t!333821))

(declare-fun b_and!309117 () Bool)

(assert (= b_and!309063 (and (=> t!333821 result!293138) b_and!309117)))

(declare-fun t!333823 () Bool)

(declare-fun tb!241879 () Bool)

(assert (=> (and b!4022880 (= (toValue!9382 (transformation!6870 (h!48484 rules!2999))) (toValue!9382 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))) t!333823) tb!241879))

(declare-fun result!293142 () Bool)

(assert (= result!293142 result!293138))

(assert (=> d!1191670 t!333823))

(declare-fun b_and!309119 () Bool)

(assert (= b_and!309067 (and (=> t!333823 result!293142) b_and!309119)))

(declare-fun t!333825 () Bool)

(declare-fun tb!241881 () Bool)

(assert (=> (and b!4023173 (= (toValue!9382 (transformation!6870 (h!48484 (t!333779 rules!2999)))) (toValue!9382 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))) t!333825) tb!241881))

(declare-fun result!293144 () Bool)

(assert (= result!293144 result!293138))

(assert (=> d!1191670 t!333825))

(declare-fun b_and!309121 () Bool)

(assert (= b_and!309091 (and (=> t!333825 result!293144) b_and!309121)))

(assert (=> d!1191670 m!4614185))

(declare-fun m!4614801 () Bool)

(assert (=> d!1191670 m!4614801))

(assert (=> b!4023096 d!1191670))

(declare-fun d!1191672 () Bool)

(declare-fun fromListB!2326 (List!43186) BalanceConc!25756)

(assert (=> d!1191672 (= (seqFromList!5093 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429277)))) (fromListB!2326 (originalCharacters!7470 (_1!24225 (get!14139 lt!1429277)))))))

(declare-fun bs!589974 () Bool)

(assert (= bs!589974 d!1191672))

(declare-fun m!4614803 () Bool)

(assert (=> bs!589974 m!4614803))

(assert (=> b!4023096 d!1191672))

(declare-fun bs!589975 () Bool)

(declare-fun d!1191674 () Bool)

(assert (= bs!589975 (and d!1191674 d!1191664)))

(declare-fun lambda!127149 () Int)

(assert (=> bs!589975 (= (and (= (toChars!9241 (transformation!6870 (rule!9924 token!484))) (toChars!9241 (transformation!6870 (h!48484 rules!2999)))) (= (toValue!9382 (transformation!6870 (rule!9924 token!484))) (toValue!9382 (transformation!6870 (h!48484 rules!2999))))) (= lambda!127149 lambda!127148))))

(assert (=> d!1191674 true))

(assert (=> d!1191674 (< (dynLambda!18258 order!22539 (toChars!9241 (transformation!6870 (rule!9924 token!484)))) (dynLambda!18259 order!22541 lambda!127149))))

(assert (=> d!1191674 true))

(assert (=> d!1191674 (< (dynLambda!18252 order!22535 (toValue!9382 (transformation!6870 (rule!9924 token!484)))) (dynLambda!18259 order!22541 lambda!127149))))

(assert (=> d!1191674 (= (semiInverseModEq!2935 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (toValue!9382 (transformation!6870 (rule!9924 token!484)))) (Forall!1477 lambda!127149))))

(declare-fun bs!589976 () Bool)

(assert (= bs!589976 d!1191674))

(declare-fun m!4614805 () Bool)

(assert (=> bs!589976 m!4614805))

(assert (=> d!1191430 d!1191674))

(declare-fun d!1191676 () Bool)

(declare-fun lt!1429389 () Bool)

(assert (=> d!1191676 (= lt!1429389 (select (content!6531 rules!2999) (rule!9924 (_1!24225 (get!14139 lt!1429277)))))))

(declare-fun e!2496033 () Bool)

(assert (=> d!1191676 (= lt!1429389 e!2496033)))

(declare-fun res!1637310 () Bool)

(assert (=> d!1191676 (=> (not res!1637310) (not e!2496033))))

(assert (=> d!1191676 (= res!1637310 ((_ is Cons!43064) rules!2999))))

(assert (=> d!1191676 (= (contains!8552 rules!2999 (rule!9924 (_1!24225 (get!14139 lt!1429277)))) lt!1429389)))

(declare-fun b!4023643 () Bool)

(declare-fun e!2496032 () Bool)

(assert (=> b!4023643 (= e!2496033 e!2496032)))

(declare-fun res!1637311 () Bool)

(assert (=> b!4023643 (=> res!1637311 e!2496032)))

(assert (=> b!4023643 (= res!1637311 (= (h!48484 rules!2999) (rule!9924 (_1!24225 (get!14139 lt!1429277)))))))

(declare-fun b!4023644 () Bool)

(assert (=> b!4023644 (= e!2496032 (contains!8552 (t!333779 rules!2999) (rule!9924 (_1!24225 (get!14139 lt!1429277)))))))

(assert (= (and d!1191676 res!1637310) b!4023643))

(assert (= (and b!4023643 (not res!1637311)) b!4023644))

(assert (=> d!1191676 m!4614123))

(declare-fun m!4614807 () Bool)

(assert (=> d!1191676 m!4614807))

(declare-fun m!4614809 () Bool)

(assert (=> b!4023644 m!4614809))

(assert (=> b!4023095 d!1191676))

(assert (=> b!4023095 d!1191610))

(declare-fun b!4023647 () Bool)

(declare-fun b_free!111973 () Bool)

(declare-fun b_next!112677 () Bool)

(assert (=> b!4023647 (= b_free!111973 (not b_next!112677))))

(declare-fun t!333827 () Bool)

(declare-fun tb!241883 () Bool)

(assert (=> (and b!4023647 (= (toValue!9382 (transformation!6870 (h!48484 (t!333779 (t!333779 rules!2999))))) (toValue!9382 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))) t!333827) tb!241883))

(declare-fun result!293146 () Bool)

(assert (= result!293146 result!293138))

(assert (=> d!1191670 t!333827))

(declare-fun b_and!309123 () Bool)

(declare-fun tp!1222778 () Bool)

(assert (=> b!4023647 (= tp!1222778 (and (=> t!333827 result!293146) b_and!309123))))

(declare-fun b_free!111975 () Bool)

(declare-fun b_next!112679 () Bool)

(assert (=> b!4023647 (= b_free!111975 (not b_next!112679))))

(declare-fun t!333829 () Bool)

(declare-fun tb!241885 () Bool)

(assert (=> (and b!4023647 (= (toChars!9241 (transformation!6870 (h!48484 (t!333779 (t!333779 rules!2999))))) (toChars!9241 (transformation!6870 (rule!9924 token!484)))) t!333829) tb!241885))

(declare-fun result!293148 () Bool)

(assert (= result!293148 result!293088))

(assert (=> b!4022939 t!333829))

(assert (=> d!1191402 t!333829))

(declare-fun tb!241887 () Bool)

(declare-fun t!333831 () Bool)

(assert (=> (and b!4023647 (= (toChars!9241 (transformation!6870 (h!48484 (t!333779 (t!333779 rules!2999))))) (toChars!9241 (transformation!6870 (rule!9924 (_1!24225 (get!14139 lt!1429277)))))) t!333831) tb!241887))

(declare-fun result!293150 () Bool)

(assert (= result!293150 result!293132))

(assert (=> d!1191608 t!333831))

(declare-fun b_and!309125 () Bool)

(declare-fun tp!1222777 () Bool)

(assert (=> b!4023647 (= tp!1222777 (and (=> t!333829 result!293148) (=> t!333831 result!293150) b_and!309125))))

(declare-fun e!2496035 () Bool)

(assert (=> b!4023647 (= e!2496035 (and tp!1222778 tp!1222777))))

(declare-fun e!2496037 () Bool)

(declare-fun b!4023646 () Bool)

(declare-fun tp!1222780 () Bool)

(assert (=> b!4023646 (= e!2496037 (and tp!1222780 (inv!57514 (tag!7730 (h!48484 (t!333779 (t!333779 rules!2999))))) (inv!57517 (transformation!6870 (h!48484 (t!333779 (t!333779 rules!2999))))) e!2496035))))

(declare-fun b!4023645 () Bool)

(declare-fun e!2496036 () Bool)

(declare-fun tp!1222779 () Bool)

(assert (=> b!4023645 (= e!2496036 (and e!2496037 tp!1222779))))

(assert (=> b!4023171 (= tp!1222693 e!2496036)))

(assert (= b!4023646 b!4023647))

(assert (= b!4023645 b!4023646))

(assert (= (and b!4023171 ((_ is Cons!43064) (t!333779 (t!333779 rules!2999)))) b!4023645))

(declare-fun m!4614811 () Bool)

(assert (=> b!4023646 m!4614811))

(declare-fun m!4614813 () Bool)

(assert (=> b!4023646 m!4614813))

(declare-fun b!4023648 () Bool)

(declare-fun e!2496038 () Bool)

(declare-fun tp!1222781 () Bool)

(assert (=> b!4023648 (= e!2496038 (and tp_is_empty!20521 tp!1222781))))

(assert (=> b!4023144 (= tp!1222663 e!2496038)))

(assert (= (and b!4023144 ((_ is Cons!43062) (t!333777 (t!333777 prefix!494)))) b!4023648))

(declare-fun e!2496039 () Bool)

(assert (=> b!4023172 (= tp!1222694 e!2496039)))

(declare-fun b!4023652 () Bool)

(declare-fun tp!1222786 () Bool)

(declare-fun tp!1222785 () Bool)

(assert (=> b!4023652 (= e!2496039 (and tp!1222786 tp!1222785))))

(declare-fun b!4023649 () Bool)

(assert (=> b!4023649 (= e!2496039 tp_is_empty!20521)))

(declare-fun b!4023650 () Bool)

(declare-fun tp!1222782 () Bool)

(declare-fun tp!1222783 () Bool)

(assert (=> b!4023650 (= e!2496039 (and tp!1222782 tp!1222783))))

(declare-fun b!4023651 () Bool)

(declare-fun tp!1222784 () Bool)

(assert (=> b!4023651 (= e!2496039 tp!1222784)))

(assert (= (and b!4023172 ((_ is ElementMatch!11775) (regex!6870 (h!48484 (t!333779 rules!2999))))) b!4023649))

(assert (= (and b!4023172 ((_ is Concat!18876) (regex!6870 (h!48484 (t!333779 rules!2999))))) b!4023650))

(assert (= (and b!4023172 ((_ is Star!11775) (regex!6870 (h!48484 (t!333779 rules!2999))))) b!4023651))

(assert (= (and b!4023172 ((_ is Union!11775) (regex!6870 (h!48484 (t!333779 rules!2999))))) b!4023652))

(declare-fun tp!1222795 () Bool)

(declare-fun b!4023661 () Bool)

(declare-fun e!2496045 () Bool)

(declare-fun tp!1222793 () Bool)

(assert (=> b!4023661 (= e!2496045 (and (inv!57521 (left!32454 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))))) tp!1222795 (inv!57521 (right!32784 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))))) tp!1222793))))

(declare-fun b!4023663 () Bool)

(declare-fun e!2496044 () Bool)

(declare-fun tp!1222794 () Bool)

(assert (=> b!4023663 (= e!2496044 tp!1222794)))

(declare-fun b!4023662 () Bool)

(declare-fun inv!57528 (IArray!26167) Bool)

(assert (=> b!4023662 (= e!2496045 (and (inv!57528 (xs!16387 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))))) e!2496044))))

(assert (=> b!4022951 (= tp!1222620 (and (inv!57521 (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484)))) e!2496045))))

(assert (= (and b!4022951 ((_ is Node!13081) (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))))) b!4023661))

(assert (= b!4023662 b!4023663))

(assert (= (and b!4022951 ((_ is Leaf!20223) (c!695204 (dynLambda!18250 (toChars!9241 (transformation!6870 (rule!9924 token!484))) (value!216429 token!484))))) b!4023662))

(declare-fun m!4614815 () Bool)

(assert (=> b!4023661 m!4614815))

(declare-fun m!4614817 () Bool)

(assert (=> b!4023661 m!4614817))

(declare-fun m!4614819 () Bool)

(assert (=> b!4023662 m!4614819))

(assert (=> b!4022951 m!4614083))

(declare-fun b!4023664 () Bool)

(declare-fun e!2496046 () Bool)

(declare-fun tp!1222796 () Bool)

(assert (=> b!4023664 (= e!2496046 (and tp_is_empty!20521 tp!1222796))))

(assert (=> b!4023160 (= tp!1222680 e!2496046)))

(assert (= (and b!4023160 ((_ is Cons!43062) (t!333777 (t!333777 newSuffix!27)))) b!4023664))

(declare-fun e!2496047 () Bool)

(assert (=> b!4023159 (= tp!1222679 e!2496047)))

(declare-fun b!4023668 () Bool)

(declare-fun tp!1222801 () Bool)

(declare-fun tp!1222800 () Bool)

(assert (=> b!4023668 (= e!2496047 (and tp!1222801 tp!1222800))))

(declare-fun b!4023665 () Bool)

(assert (=> b!4023665 (= e!2496047 tp_is_empty!20521)))

(declare-fun b!4023666 () Bool)

(declare-fun tp!1222797 () Bool)

(declare-fun tp!1222798 () Bool)

(assert (=> b!4023666 (= e!2496047 (and tp!1222797 tp!1222798))))

(declare-fun b!4023667 () Bool)

(declare-fun tp!1222799 () Bool)

(assert (=> b!4023667 (= e!2496047 tp!1222799)))

(assert (= (and b!4023159 ((_ is ElementMatch!11775) (regOne!24063 (regex!6870 (h!48484 rules!2999))))) b!4023665))

(assert (= (and b!4023159 ((_ is Concat!18876) (regOne!24063 (regex!6870 (h!48484 rules!2999))))) b!4023666))

(assert (= (and b!4023159 ((_ is Star!11775) (regOne!24063 (regex!6870 (h!48484 rules!2999))))) b!4023667))

(assert (= (and b!4023159 ((_ is Union!11775) (regOne!24063 (regex!6870 (h!48484 rules!2999))))) b!4023668))

(declare-fun e!2496048 () Bool)

(assert (=> b!4023159 (= tp!1222678 e!2496048)))

(declare-fun b!4023672 () Bool)

(declare-fun tp!1222806 () Bool)

(declare-fun tp!1222805 () Bool)

(assert (=> b!4023672 (= e!2496048 (and tp!1222806 tp!1222805))))

(declare-fun b!4023669 () Bool)

(assert (=> b!4023669 (= e!2496048 tp_is_empty!20521)))

(declare-fun b!4023670 () Bool)

(declare-fun tp!1222802 () Bool)

(declare-fun tp!1222803 () Bool)

(assert (=> b!4023670 (= e!2496048 (and tp!1222802 tp!1222803))))

(declare-fun b!4023671 () Bool)

(declare-fun tp!1222804 () Bool)

(assert (=> b!4023671 (= e!2496048 tp!1222804)))

(assert (= (and b!4023159 ((_ is ElementMatch!11775) (regTwo!24063 (regex!6870 (h!48484 rules!2999))))) b!4023669))

(assert (= (and b!4023159 ((_ is Concat!18876) (regTwo!24063 (regex!6870 (h!48484 rules!2999))))) b!4023670))

(assert (= (and b!4023159 ((_ is Star!11775) (regTwo!24063 (regex!6870 (h!48484 rules!2999))))) b!4023671))

(assert (= (and b!4023159 ((_ is Union!11775) (regTwo!24063 (regex!6870 (h!48484 rules!2999))))) b!4023672))

(declare-fun e!2496049 () Bool)

(assert (=> b!4023157 (= tp!1222675 e!2496049)))

(declare-fun b!4023676 () Bool)

(declare-fun tp!1222811 () Bool)

(declare-fun tp!1222810 () Bool)

(assert (=> b!4023676 (= e!2496049 (and tp!1222811 tp!1222810))))

(declare-fun b!4023673 () Bool)

(assert (=> b!4023673 (= e!2496049 tp_is_empty!20521)))

(declare-fun b!4023674 () Bool)

(declare-fun tp!1222807 () Bool)

(declare-fun tp!1222808 () Bool)

(assert (=> b!4023674 (= e!2496049 (and tp!1222807 tp!1222808))))

(declare-fun b!4023675 () Bool)

(declare-fun tp!1222809 () Bool)

(assert (=> b!4023675 (= e!2496049 tp!1222809)))

(assert (= (and b!4023157 ((_ is ElementMatch!11775) (regOne!24062 (regex!6870 (h!48484 rules!2999))))) b!4023673))

(assert (= (and b!4023157 ((_ is Concat!18876) (regOne!24062 (regex!6870 (h!48484 rules!2999))))) b!4023674))

(assert (= (and b!4023157 ((_ is Star!11775) (regOne!24062 (regex!6870 (h!48484 rules!2999))))) b!4023675))

(assert (= (and b!4023157 ((_ is Union!11775) (regOne!24062 (regex!6870 (h!48484 rules!2999))))) b!4023676))

(declare-fun e!2496050 () Bool)

(assert (=> b!4023157 (= tp!1222676 e!2496050)))

(declare-fun b!4023680 () Bool)

(declare-fun tp!1222816 () Bool)

(declare-fun tp!1222815 () Bool)

(assert (=> b!4023680 (= e!2496050 (and tp!1222816 tp!1222815))))

(declare-fun b!4023677 () Bool)

(assert (=> b!4023677 (= e!2496050 tp_is_empty!20521)))

(declare-fun b!4023678 () Bool)

(declare-fun tp!1222812 () Bool)

(declare-fun tp!1222813 () Bool)

(assert (=> b!4023678 (= e!2496050 (and tp!1222812 tp!1222813))))

(declare-fun b!4023679 () Bool)

(declare-fun tp!1222814 () Bool)

(assert (=> b!4023679 (= e!2496050 tp!1222814)))

(assert (= (and b!4023157 ((_ is ElementMatch!11775) (regTwo!24062 (regex!6870 (h!48484 rules!2999))))) b!4023677))

(assert (= (and b!4023157 ((_ is Concat!18876) (regTwo!24062 (regex!6870 (h!48484 rules!2999))))) b!4023678))

(assert (= (and b!4023157 ((_ is Star!11775) (regTwo!24062 (regex!6870 (h!48484 rules!2999))))) b!4023679))

(assert (= (and b!4023157 ((_ is Union!11775) (regTwo!24062 (regex!6870 (h!48484 rules!2999))))) b!4023680))

(declare-fun b!4023681 () Bool)

(declare-fun e!2496051 () Bool)

(declare-fun tp!1222817 () Bool)

(assert (=> b!4023681 (= e!2496051 (and tp_is_empty!20521 tp!1222817))))

(assert (=> b!4023162 (= tp!1222682 e!2496051)))

(assert (= (and b!4023162 ((_ is Cons!43062) (t!333777 (t!333777 suffix!1299)))) b!4023681))

(declare-fun b!4023682 () Bool)

(declare-fun e!2496052 () Bool)

(declare-fun tp!1222818 () Bool)

(assert (=> b!4023682 (= e!2496052 (and tp_is_empty!20521 tp!1222818))))

(assert (=> b!4023174 (= tp!1222695 e!2496052)))

(assert (= (and b!4023174 ((_ is Cons!43062) (t!333777 (t!333777 newSuffixResult!27)))) b!4023682))

(declare-fun e!2496053 () Bool)

(assert (=> b!4023158 (= tp!1222677 e!2496053)))

(declare-fun b!4023686 () Bool)

(declare-fun tp!1222823 () Bool)

(declare-fun tp!1222822 () Bool)

(assert (=> b!4023686 (= e!2496053 (and tp!1222823 tp!1222822))))

(declare-fun b!4023683 () Bool)

(assert (=> b!4023683 (= e!2496053 tp_is_empty!20521)))

(declare-fun b!4023684 () Bool)

(declare-fun tp!1222819 () Bool)

(declare-fun tp!1222820 () Bool)

(assert (=> b!4023684 (= e!2496053 (and tp!1222819 tp!1222820))))

(declare-fun b!4023685 () Bool)

(declare-fun tp!1222821 () Bool)

(assert (=> b!4023685 (= e!2496053 tp!1222821)))

(assert (= (and b!4023158 ((_ is ElementMatch!11775) (reg!12104 (regex!6870 (h!48484 rules!2999))))) b!4023683))

(assert (= (and b!4023158 ((_ is Concat!18876) (reg!12104 (regex!6870 (h!48484 rules!2999))))) b!4023684))

(assert (= (and b!4023158 ((_ is Star!11775) (reg!12104 (regex!6870 (h!48484 rules!2999))))) b!4023685))

(assert (= (and b!4023158 ((_ is Union!11775) (reg!12104 (regex!6870 (h!48484 rules!2999))))) b!4023686))

(declare-fun e!2496054 () Bool)

(assert (=> b!4023177 (= tp!1222698 e!2496054)))

(declare-fun b!4023690 () Bool)

(declare-fun tp!1222828 () Bool)

(declare-fun tp!1222827 () Bool)

(assert (=> b!4023690 (= e!2496054 (and tp!1222828 tp!1222827))))

(declare-fun b!4023687 () Bool)

(assert (=> b!4023687 (= e!2496054 tp_is_empty!20521)))

(declare-fun b!4023688 () Bool)

(declare-fun tp!1222824 () Bool)

(declare-fun tp!1222825 () Bool)

(assert (=> b!4023688 (= e!2496054 (and tp!1222824 tp!1222825))))

(declare-fun b!4023689 () Bool)

(declare-fun tp!1222826 () Bool)

(assert (=> b!4023689 (= e!2496054 tp!1222826)))

(assert (= (and b!4023177 ((_ is ElementMatch!11775) (reg!12104 (regex!6870 (rule!9924 token!484))))) b!4023687))

(assert (= (and b!4023177 ((_ is Concat!18876) (reg!12104 (regex!6870 (rule!9924 token!484))))) b!4023688))

(assert (= (and b!4023177 ((_ is Star!11775) (reg!12104 (regex!6870 (rule!9924 token!484))))) b!4023689))

(assert (= (and b!4023177 ((_ is Union!11775) (reg!12104 (regex!6870 (rule!9924 token!484))))) b!4023690))

(declare-fun e!2496055 () Bool)

(assert (=> b!4023178 (= tp!1222700 e!2496055)))

(declare-fun b!4023694 () Bool)

(declare-fun tp!1222833 () Bool)

(declare-fun tp!1222832 () Bool)

(assert (=> b!4023694 (= e!2496055 (and tp!1222833 tp!1222832))))

(declare-fun b!4023691 () Bool)

(assert (=> b!4023691 (= e!2496055 tp_is_empty!20521)))

(declare-fun b!4023692 () Bool)

(declare-fun tp!1222829 () Bool)

(declare-fun tp!1222830 () Bool)

(assert (=> b!4023692 (= e!2496055 (and tp!1222829 tp!1222830))))

(declare-fun b!4023693 () Bool)

(declare-fun tp!1222831 () Bool)

(assert (=> b!4023693 (= e!2496055 tp!1222831)))

(assert (= (and b!4023178 ((_ is ElementMatch!11775) (regOne!24063 (regex!6870 (rule!9924 token!484))))) b!4023691))

(assert (= (and b!4023178 ((_ is Concat!18876) (regOne!24063 (regex!6870 (rule!9924 token!484))))) b!4023692))

(assert (= (and b!4023178 ((_ is Star!11775) (regOne!24063 (regex!6870 (rule!9924 token!484))))) b!4023693))

(assert (= (and b!4023178 ((_ is Union!11775) (regOne!24063 (regex!6870 (rule!9924 token!484))))) b!4023694))

(declare-fun e!2496056 () Bool)

(assert (=> b!4023178 (= tp!1222699 e!2496056)))

(declare-fun b!4023698 () Bool)

(declare-fun tp!1222838 () Bool)

(declare-fun tp!1222837 () Bool)

(assert (=> b!4023698 (= e!2496056 (and tp!1222838 tp!1222837))))

(declare-fun b!4023695 () Bool)

(assert (=> b!4023695 (= e!2496056 tp_is_empty!20521)))

(declare-fun b!4023696 () Bool)

(declare-fun tp!1222834 () Bool)

(declare-fun tp!1222835 () Bool)

(assert (=> b!4023696 (= e!2496056 (and tp!1222834 tp!1222835))))

(declare-fun b!4023697 () Bool)

(declare-fun tp!1222836 () Bool)

(assert (=> b!4023697 (= e!2496056 tp!1222836)))

(assert (= (and b!4023178 ((_ is ElementMatch!11775) (regTwo!24063 (regex!6870 (rule!9924 token!484))))) b!4023695))

(assert (= (and b!4023178 ((_ is Concat!18876) (regTwo!24063 (regex!6870 (rule!9924 token!484))))) b!4023696))

(assert (= (and b!4023178 ((_ is Star!11775) (regTwo!24063 (regex!6870 (rule!9924 token!484))))) b!4023697))

(assert (= (and b!4023178 ((_ is Union!11775) (regTwo!24063 (regex!6870 (rule!9924 token!484))))) b!4023698))

(declare-fun b!4023699 () Bool)

(declare-fun e!2496057 () Bool)

(declare-fun tp!1222839 () Bool)

(assert (=> b!4023699 (= e!2496057 (and tp_is_empty!20521 tp!1222839))))

(assert (=> b!4023161 (= tp!1222681 e!2496057)))

(assert (= (and b!4023161 ((_ is Cons!43062) (t!333777 (t!333777 suffixResult!105)))) b!4023699))

(declare-fun e!2496058 () Bool)

(assert (=> b!4023176 (= tp!1222696 e!2496058)))

(declare-fun b!4023703 () Bool)

(declare-fun tp!1222844 () Bool)

(declare-fun tp!1222843 () Bool)

(assert (=> b!4023703 (= e!2496058 (and tp!1222844 tp!1222843))))

(declare-fun b!4023700 () Bool)

(assert (=> b!4023700 (= e!2496058 tp_is_empty!20521)))

(declare-fun b!4023701 () Bool)

(declare-fun tp!1222840 () Bool)

(declare-fun tp!1222841 () Bool)

(assert (=> b!4023701 (= e!2496058 (and tp!1222840 tp!1222841))))

(declare-fun b!4023702 () Bool)

(declare-fun tp!1222842 () Bool)

(assert (=> b!4023702 (= e!2496058 tp!1222842)))

(assert (= (and b!4023176 ((_ is ElementMatch!11775) (regOne!24062 (regex!6870 (rule!9924 token!484))))) b!4023700))

(assert (= (and b!4023176 ((_ is Concat!18876) (regOne!24062 (regex!6870 (rule!9924 token!484))))) b!4023701))

(assert (= (and b!4023176 ((_ is Star!11775) (regOne!24062 (regex!6870 (rule!9924 token!484))))) b!4023702))

(assert (= (and b!4023176 ((_ is Union!11775) (regOne!24062 (regex!6870 (rule!9924 token!484))))) b!4023703))

(declare-fun e!2496059 () Bool)

(assert (=> b!4023176 (= tp!1222697 e!2496059)))

(declare-fun b!4023707 () Bool)

(declare-fun tp!1222849 () Bool)

(declare-fun tp!1222848 () Bool)

(assert (=> b!4023707 (= e!2496059 (and tp!1222849 tp!1222848))))

(declare-fun b!4023704 () Bool)

(assert (=> b!4023704 (= e!2496059 tp_is_empty!20521)))

(declare-fun b!4023705 () Bool)

(declare-fun tp!1222845 () Bool)

(declare-fun tp!1222846 () Bool)

(assert (=> b!4023705 (= e!2496059 (and tp!1222845 tp!1222846))))

(declare-fun b!4023706 () Bool)

(declare-fun tp!1222847 () Bool)

(assert (=> b!4023706 (= e!2496059 tp!1222847)))

(assert (= (and b!4023176 ((_ is ElementMatch!11775) (regTwo!24062 (regex!6870 (rule!9924 token!484))))) b!4023704))

(assert (= (and b!4023176 ((_ is Concat!18876) (regTwo!24062 (regex!6870 (rule!9924 token!484))))) b!4023705))

(assert (= (and b!4023176 ((_ is Star!11775) (regTwo!24062 (regex!6870 (rule!9924 token!484))))) b!4023706))

(assert (= (and b!4023176 ((_ is Union!11775) (regTwo!24062 (regex!6870 (rule!9924 token!484))))) b!4023707))

(declare-fun b!4023708 () Bool)

(declare-fun e!2496060 () Bool)

(declare-fun tp!1222850 () Bool)

(assert (=> b!4023708 (= e!2496060 (and tp_is_empty!20521 tp!1222850))))

(assert (=> b!4023145 (= tp!1222664 e!2496060)))

(assert (= (and b!4023145 ((_ is Cons!43062) (t!333777 (originalCharacters!7470 token!484)))) b!4023708))

(check-sat (not d!1191654) (not b_next!112663) (not d!1191662) (not b!4023373) (not b!4023232) b_and!309113 (not b!4023581) (not b_lambda!117385) (not tb!241871) (not b!4023391) (not b!4023397) (not b!4023626) (not b!4023696) (not b!4023678) (not d!1191608) (not b!4023651) (not d!1191664) (not b!4023374) (not b!4023429) (not b!4023694) (not b_next!112679) (not b!4023676) (not b!4023541) (not b!4023672) (not b_lambda!117383) (not b!4023613) (not b!4023473) (not b!4023548) (not d!1191620) (not d!1191672) (not b!4023584) (not tb!241877) (not d!1191596) (not b!4023705) (not b!4023428) (not b!4023564) (not b!4023702) (not b!4023680) (not b!4023490) (not b!4023576) b_and!309119 (not b!4023614) (not b!4023703) (not d!1191630) (not b!4023551) tp_is_empty!20521 (not b!4023679) (not b!4023574) (not d!1191604) (not b!4023534) (not d!1191478) (not d!1191658) (not d!1191626) (not b!4023612) (not d!1191666) (not b!4023633) (not b!4023568) (not b!4023650) b_and!309121 (not b!4023648) (not b!4023668) (not b!4023692) b_and!309115 (not b!4023646) (not d!1191624) (not b!4023670) (not d!1191676) (not b!4023682) (not b!4023389) b_and!309111 (not b!4023233) (not b_next!112661) (not b!4023610) (not b!4023372) (not b!4023666) (not b_next!112669) (not d!1191614) (not b!4023570) (not b!4023572) (not b!4023609) (not b!4023662) (not d!1191606) (not b!4023640) (not b!4023681) (not d!1191480) (not b!4023632) (not b!4023708) (not b!4023355) (not b!4023580) (not d!1191542) (not b!4023543) (not b!4023555) (not b!4023550) (not b!4023234) b_and!309125 (not b!4023661) (not b_lambda!117377) (not bm!286745) (not b!4023615) (not b!4023347) (not b!4023690) (not b!4023546) (not b_next!112657) (not b!4023675) (not b!4023637) (not b!4023663) (not b!4023693) (not d!1191652) (not b!4023688) (not b_lambda!117375) (not d!1191656) (not b!4023586) (not b!4023671) (not b!4023357) (not b!4022951) (not b!4023684) (not b!4023707) (not b!4023639) (not b!4023346) (not b!4023578) (not b!4023667) (not b!4023652) (not d!1191674) (not b!4023611) (not b!4023698) (not b!4023701) (not b_next!112671) (not b!4023674) (not b!4023644) (not b!4023539) (not b!4023638) (not b!4023395) (not d!1191668) (not b!4023533) (not b!4023554) (not b!4023697) (not b!4023664) (not d!1191566) (not b!4023587) (not b!4023689) (not bm!286744) (not b!4023361) (not b!4023645) (not d!1191648) (not b!4023685) (not b!4023393) (not b!4023607) (not b!4023706) (not b_next!112677) (not b_next!112659) (not b!4023540) (not b!4023686) b_and!309123 (not b!4023566) (not b!4023634) (not d!1191600) (not b!4023558) (not b!4023699) (not d!1191622) b_and!309117 (not b!4023463) (not b!4023230) (not b!4023627) (not b!4023636) (not b!4023427))
(check-sat (not b_next!112679) b_and!309119 (not b_next!112669) b_and!309125 (not b_next!112657) (not b_next!112671) b_and!309123 b_and!309117 (not b_next!112663) b_and!309113 b_and!309121 b_and!309115 b_and!309111 (not b_next!112661) (not b_next!112677) (not b_next!112659))
