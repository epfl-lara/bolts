; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757734 () Bool)

(assert start!757734)

(declare-fun b!8047036 () Bool)

(declare-fun b_free!136491 () Bool)

(declare-fun b_next!137281 () Bool)

(assert (=> b!8047036 (= b_free!136491 (not b_next!137281))))

(declare-fun tp!2412460 () Bool)

(declare-fun b_and!354927 () Bool)

(assert (=> b!8047036 (= tp!2412460 b_and!354927)))

(declare-fun b_free!136493 () Bool)

(declare-fun b_next!137283 () Bool)

(assert (=> b!8047036 (= b_free!136493 (not b_next!137283))))

(declare-fun tp!2412465 () Bool)

(declare-fun b_and!354929 () Bool)

(assert (=> b!8047036 (= tp!2412465 b_and!354929)))

(declare-fun b!8047032 () Bool)

(declare-fun e!4741051 () Bool)

(declare-fun e!4741057 () Bool)

(declare-fun tp!2412461 () Bool)

(assert (=> b!8047032 (= e!4741051 (and e!4741057 tp!2412461))))

(declare-fun b!8047033 () Bool)

(declare-fun res!3181090 () Bool)

(declare-fun e!4741055 () Bool)

(assert (=> b!8047033 (=> (not res!3181090) (not e!4741055))))

(declare-datatypes ((String!85241 0))(
  ( (String!85242 (value!293001 String)) )
))
(declare-datatypes ((List!75506 0))(
  ( (Nil!75380) (Cons!75380 (h!81828 String!85241) (t!391276 List!75506)) )
))
(declare-fun acc!573 () List!75506)

(declare-datatypes ((List!75507 0))(
  ( (Nil!75381) (Cons!75381 (h!81829 (_ BitVec 16)) (t!391277 List!75507)) )
))
(declare-datatypes ((TokenValue!9092 0))(
  ( (FloatLiteralValue!18184 (text!64089 List!75507)) (TokenValueExt!9091 (__x!35465 Int)) (Broken!45460 (value!293002 List!75507)) (Object!9217) (End!9092) (Def!9092) (Underscore!9092) (Match!9092) (Else!9092) (Error!9092) (Case!9092) (If!9092) (Extends!9092) (Abstract!9092) (Class!9092) (Val!9092) (DelimiterValue!18184 (del!9152 List!75507)) (KeywordValue!9098 (value!293003 List!75507)) (CommentValue!18184 (value!293004 List!75507)) (WhitespaceValue!18184 (value!293005 List!75507)) (IndentationValue!9092 (value!293006 List!75507)) (String!85243) (Int32!9092) (Broken!45461 (value!293007 List!75507)) (Boolean!9093) (Unit!171151) (OperatorValue!9095 (op!9152 List!75507)) (IdentifierValue!18184 (value!293008 List!75507)) (IdentifierValue!18185 (value!293009 List!75507)) (WhitespaceValue!18185 (value!293010 List!75507)) (True!18184) (False!18184) (Broken!45462 (value!293011 List!75507)) (Broken!45463 (value!293012 List!75507)) (True!18185) (RightBrace!9092) (RightBracket!9092) (Colon!9092) (Null!9092) (Comma!9092) (LeftBracket!9092) (False!18185) (LeftBrace!9092) (ImaginaryLiteralValue!9092 (text!64090 List!75507)) (StringLiteralValue!27276 (value!293013 List!75507)) (EOFValue!9092 (value!293014 List!75507)) (IdentValue!9092 (value!293015 List!75507)) (DelimiterValue!18185 (value!293016 List!75507)) (DedentValue!9092 (value!293017 List!75507)) (NewLineValue!9092 (value!293018 List!75507)) (IntegerValue!27276 (value!293019 (_ BitVec 32)) (text!64091 List!75507)) (IntegerValue!27277 (value!293020 Int) (text!64092 List!75507)) (Times!9092) (Or!9092) (Equal!9092) (Minus!9092) (Broken!45464 (value!293021 List!75507)) (And!9092) (Div!9092) (LessEqual!9092) (Mod!9092) (Concat!30935) (Not!9092) (Plus!9092) (SpaceValue!9092 (value!293022 List!75507)) (IntegerValue!27278 (value!293023 Int) (text!64093 List!75507)) (StringLiteralValue!27277 (text!64094 List!75507)) (FloatLiteralValue!18185 (text!64095 List!75507)) (BytesLiteralValue!9092 (value!293024 List!75507)) (CommentValue!18185 (value!293025 List!75507)) (StringLiteralValue!27278 (value!293026 List!75507)) (ErrorTokenValue!9092 (msg!9153 List!75507)) )
))
(declare-datatypes ((C!44024 0))(
  ( (C!44025 (val!32788 Int)) )
))
(declare-datatypes ((List!75508 0))(
  ( (Nil!75382) (Cons!75382 (h!81830 C!44024) (t!391278 List!75508)) )
))
(declare-datatypes ((Regex!21843 0))(
  ( (ElementMatch!21843 (c!1475463 C!44024)) (Concat!30936 (regOne!44198 Regex!21843) (regTwo!44198 Regex!21843)) (EmptyExpr!21843) (Star!21843 (reg!22172 Regex!21843)) (EmptyLang!21843) (Union!21843 (regOne!44199 Regex!21843) (regTwo!44199 Regex!21843)) )
))
(declare-datatypes ((IArray!32141 0))(
  ( (IArray!32142 (innerList!16128 List!75508)) )
))
(declare-datatypes ((Conc!16040 0))(
  ( (Node!16040 (left!57404 Conc!16040) (right!57734 Conc!16040) (csize!32310 Int) (cheight!16251 Int)) (Leaf!30737 (xs!19438 IArray!32141) (csize!32311 Int)) (Empty!16040) )
))
(declare-datatypes ((BalanceConc!31036 0))(
  ( (BalanceConc!31037 (c!1475464 Conc!16040)) )
))
(declare-datatypes ((TokenValueInjection!17492 0))(
  ( (TokenValueInjection!17493 (toValue!11855 Int) (toChars!11714 Int)) )
))
(declare-datatypes ((Rule!17344 0))(
  ( (Rule!17345 (regex!8772 Regex!21843) (tag!9636 String!85241) (isSeparator!8772 Bool) (transformation!8772 TokenValueInjection!17492)) )
))
(declare-datatypes ((List!75509 0))(
  ( (Nil!75383) (Cons!75383 (h!81831 Rule!17344) (t!391279 List!75509)) )
))
(declare-fun rules!4081 () List!75509)

(declare-datatypes ((LexerInterface!8362 0))(
  ( (LexerInterfaceExt!8359 (__x!35466 Int)) (Lexer!8360) )
))
(declare-fun thiss!26941 () LexerInterface!8362)

(declare-fun noDuplicateTag!3350 (LexerInterface!8362 List!75509 List!75506) Bool)

(assert (=> b!8047033 (= res!3181090 (noDuplicateTag!3350 thiss!26941 rules!4081 acc!573))))

(declare-fun res!3181092 () Bool)

(assert (=> start!757734 (=> (not res!3181092) (not e!4741055))))

(get-info :version)

(assert (=> start!757734 (= res!3181092 ((_ is Lexer!8360) thiss!26941))))

(assert (=> start!757734 e!4741055))

(assert (=> start!757734 true))

(declare-fun e!4741054 () Bool)

(assert (=> start!757734 e!4741054))

(declare-fun e!4741049 () Bool)

(assert (=> start!757734 e!4741049))

(assert (=> start!757734 e!4741051))

(declare-fun b!8047034 () Bool)

(declare-fun e!4741052 () Bool)

(assert (=> b!8047034 (= e!4741055 e!4741052)))

(declare-fun res!3181093 () Bool)

(assert (=> b!8047034 (=> (not res!3181093) (not e!4741052))))

(declare-fun newAcc!87 () List!75506)

(declare-fun lt!2722840 () List!75506)

(declare-fun subseq!923 (List!75506 List!75506) Bool)

(assert (=> b!8047034 (= res!3181093 (subseq!923 (Cons!75380 (tag!9636 (h!81831 rules!4081)) newAcc!87) lt!2722840))))

(assert (=> b!8047034 (= lt!2722840 (Cons!75380 (tag!9636 (h!81831 rules!4081)) acc!573))))

(declare-fun b!8047035 () Bool)

(declare-fun tp!2412462 () Bool)

(declare-fun inv!97100 (String!85241) Bool)

(assert (=> b!8047035 (= e!4741049 (and (inv!97100 (h!81828 acc!573)) tp!2412462))))

(declare-fun e!4741056 () Bool)

(assert (=> b!8047036 (= e!4741056 (and tp!2412460 tp!2412465))))

(declare-fun b!8047037 () Bool)

(declare-fun res!3181094 () Bool)

(assert (=> b!8047037 (=> (not res!3181094) (not e!4741055))))

(assert (=> b!8047037 (= res!3181094 ((_ is Cons!75383) rules!4081))))

(declare-fun b!8047038 () Bool)

(declare-fun tp!2412463 () Bool)

(declare-fun inv!97102 (TokenValueInjection!17492) Bool)

(assert (=> b!8047038 (= e!4741057 (and tp!2412463 (inv!97100 (tag!9636 (h!81831 rules!4081))) (inv!97102 (transformation!8772 (h!81831 rules!4081))) e!4741056))))

(declare-fun b!8047039 () Bool)

(declare-fun res!3181089 () Bool)

(assert (=> b!8047039 (=> (not res!3181089) (not e!4741055))))

(assert (=> b!8047039 (= res!3181089 (subseq!923 newAcc!87 acc!573))))

(declare-fun b!8047040 () Bool)

(declare-fun res!3181091 () Bool)

(assert (=> b!8047040 (=> (not res!3181091) (not e!4741052))))

(assert (=> b!8047040 (= res!3181091 (noDuplicateTag!3350 thiss!26941 (t!391279 rules!4081) lt!2722840))))

(declare-fun b!8047041 () Bool)

(declare-fun tp!2412464 () Bool)

(assert (=> b!8047041 (= e!4741054 (and (inv!97100 (h!81828 newAcc!87)) tp!2412464))))

(declare-fun b!8047042 () Bool)

(declare-fun ListPrimitiveSize!538 (List!75509) Int)

(assert (=> b!8047042 (= e!4741052 (>= (ListPrimitiveSize!538 (t!391279 rules!4081)) (ListPrimitiveSize!538 rules!4081)))))

(assert (= (and start!757734 res!3181092) b!8047039))

(assert (= (and b!8047039 res!3181089) b!8047033))

(assert (= (and b!8047033 res!3181090) b!8047037))

(assert (= (and b!8047037 res!3181094) b!8047034))

(assert (= (and b!8047034 res!3181093) b!8047040))

(assert (= (and b!8047040 res!3181091) b!8047042))

(assert (= (and start!757734 ((_ is Cons!75380) newAcc!87)) b!8047041))

(assert (= (and start!757734 ((_ is Cons!75380) acc!573)) b!8047035))

(assert (= b!8047038 b!8047036))

(assert (= b!8047032 b!8047038))

(assert (= (and start!757734 ((_ is Cons!75383) rules!4081)) b!8047032))

(declare-fun m!8398866 () Bool)

(assert (=> b!8047039 m!8398866))

(declare-fun m!8398868 () Bool)

(assert (=> b!8047038 m!8398868))

(declare-fun m!8398870 () Bool)

(assert (=> b!8047038 m!8398870))

(declare-fun m!8398872 () Bool)

(assert (=> b!8047033 m!8398872))

(declare-fun m!8398874 () Bool)

(assert (=> b!8047041 m!8398874))

(declare-fun m!8398876 () Bool)

(assert (=> b!8047040 m!8398876))

(declare-fun m!8398878 () Bool)

(assert (=> b!8047042 m!8398878))

(declare-fun m!8398880 () Bool)

(assert (=> b!8047042 m!8398880))

(declare-fun m!8398882 () Bool)

(assert (=> b!8047034 m!8398882))

(declare-fun m!8398884 () Bool)

(assert (=> b!8047035 m!8398884))

(check-sat b_and!354929 (not b_next!137281) (not b!8047038) (not b!8047032) (not b!8047042) (not b!8047034) (not b!8047039) (not b_next!137283) (not b!8047041) b_and!354927 (not b!8047040) (not b!8047033) (not b!8047035))
(check-sat b_and!354929 b_and!354927 (not b_next!137283) (not b_next!137281))
(get-model)

(declare-fun d!2396685 () Bool)

(assert (=> d!2396685 (= (inv!97100 (h!81828 newAcc!87)) (= (mod (str.len (value!293001 (h!81828 newAcc!87))) 2) 0))))

(assert (=> b!8047041 d!2396685))

(declare-fun d!2396687 () Bool)

(declare-fun res!3181103 () Bool)

(declare-fun e!4741066 () Bool)

(assert (=> d!2396687 (=> res!3181103 e!4741066)))

(assert (=> d!2396687 (= res!3181103 ((_ is Nil!75383) (t!391279 rules!4081)))))

(assert (=> d!2396687 (= (noDuplicateTag!3350 thiss!26941 (t!391279 rules!4081) lt!2722840) e!4741066)))

(declare-fun b!8047053 () Bool)

(declare-fun e!4741067 () Bool)

(assert (=> b!8047053 (= e!4741066 e!4741067)))

(declare-fun res!3181104 () Bool)

(assert (=> b!8047053 (=> (not res!3181104) (not e!4741067))))

(declare-fun contains!21070 (List!75506 String!85241) Bool)

(assert (=> b!8047053 (= res!3181104 (not (contains!21070 lt!2722840 (tag!9636 (h!81831 (t!391279 rules!4081))))))))

(declare-fun b!8047054 () Bool)

(assert (=> b!8047054 (= e!4741067 (noDuplicateTag!3350 thiss!26941 (t!391279 (t!391279 rules!4081)) (Cons!75380 (tag!9636 (h!81831 (t!391279 rules!4081))) lt!2722840)))))

(assert (= (and d!2396687 (not res!3181103)) b!8047053))

(assert (= (and b!8047053 res!3181104) b!8047054))

(declare-fun m!8398888 () Bool)

(assert (=> b!8047053 m!8398888))

(declare-fun m!8398890 () Bool)

(assert (=> b!8047054 m!8398890))

(assert (=> b!8047040 d!2396687))

(declare-fun d!2396695 () Bool)

(assert (=> d!2396695 (= (inv!97100 (h!81828 acc!573)) (= (mod (str.len (value!293001 (h!81828 acc!573))) 2) 0))))

(assert (=> b!8047035 d!2396695))

(declare-fun b!8047070 () Bool)

(declare-fun e!4741080 () Bool)

(assert (=> b!8047070 (= e!4741080 (subseq!923 (t!391276 (Cons!75380 (tag!9636 (h!81831 rules!4081)) newAcc!87)) (t!391276 lt!2722840)))))

(declare-fun d!2396697 () Bool)

(declare-fun res!3181117 () Bool)

(declare-fun e!4741083 () Bool)

(assert (=> d!2396697 (=> res!3181117 e!4741083)))

(assert (=> d!2396697 (= res!3181117 ((_ is Nil!75380) (Cons!75380 (tag!9636 (h!81831 rules!4081)) newAcc!87)))))

(assert (=> d!2396697 (= (subseq!923 (Cons!75380 (tag!9636 (h!81831 rules!4081)) newAcc!87) lt!2722840) e!4741083)))

(declare-fun e!4741081 () Bool)

(declare-fun b!8047071 () Bool)

(assert (=> b!8047071 (= e!4741081 (subseq!923 (Cons!75380 (tag!9636 (h!81831 rules!4081)) newAcc!87) (t!391276 lt!2722840)))))

(declare-fun b!8047069 () Bool)

(declare-fun e!4741082 () Bool)

(assert (=> b!8047069 (= e!4741082 e!4741081)))

(declare-fun res!3181119 () Bool)

(assert (=> b!8047069 (=> res!3181119 e!4741081)))

(assert (=> b!8047069 (= res!3181119 e!4741080)))

(declare-fun res!3181118 () Bool)

(assert (=> b!8047069 (=> (not res!3181118) (not e!4741080))))

(assert (=> b!8047069 (= res!3181118 (= (h!81828 (Cons!75380 (tag!9636 (h!81831 rules!4081)) newAcc!87)) (h!81828 lt!2722840)))))

(declare-fun b!8047068 () Bool)

(assert (=> b!8047068 (= e!4741083 e!4741082)))

(declare-fun res!3181116 () Bool)

(assert (=> b!8047068 (=> (not res!3181116) (not e!4741082))))

(assert (=> b!8047068 (= res!3181116 ((_ is Cons!75380) lt!2722840))))

(assert (= (and d!2396697 (not res!3181117)) b!8047068))

(assert (= (and b!8047068 res!3181116) b!8047069))

(assert (= (and b!8047069 res!3181118) b!8047070))

(assert (= (and b!8047069 (not res!3181119)) b!8047071))

(declare-fun m!8398896 () Bool)

(assert (=> b!8047070 m!8398896))

(declare-fun m!8398898 () Bool)

(assert (=> b!8047071 m!8398898))

(assert (=> b!8047034 d!2396697))

(declare-fun b!8047074 () Bool)

(declare-fun e!4741084 () Bool)

(assert (=> b!8047074 (= e!4741084 (subseq!923 (t!391276 newAcc!87) (t!391276 acc!573)))))

(declare-fun d!2396707 () Bool)

(declare-fun res!3181121 () Bool)

(declare-fun e!4741087 () Bool)

(assert (=> d!2396707 (=> res!3181121 e!4741087)))

(assert (=> d!2396707 (= res!3181121 ((_ is Nil!75380) newAcc!87))))

(assert (=> d!2396707 (= (subseq!923 newAcc!87 acc!573) e!4741087)))

(declare-fun b!8047075 () Bool)

(declare-fun e!4741085 () Bool)

(assert (=> b!8047075 (= e!4741085 (subseq!923 newAcc!87 (t!391276 acc!573)))))

(declare-fun b!8047073 () Bool)

(declare-fun e!4741086 () Bool)

(assert (=> b!8047073 (= e!4741086 e!4741085)))

(declare-fun res!3181123 () Bool)

(assert (=> b!8047073 (=> res!3181123 e!4741085)))

(assert (=> b!8047073 (= res!3181123 e!4741084)))

(declare-fun res!3181122 () Bool)

(assert (=> b!8047073 (=> (not res!3181122) (not e!4741084))))

(assert (=> b!8047073 (= res!3181122 (= (h!81828 newAcc!87) (h!81828 acc!573)))))

(declare-fun b!8047072 () Bool)

(assert (=> b!8047072 (= e!4741087 e!4741086)))

(declare-fun res!3181120 () Bool)

(assert (=> b!8047072 (=> (not res!3181120) (not e!4741086))))

(assert (=> b!8047072 (= res!3181120 ((_ is Cons!75380) acc!573))))

(assert (= (and d!2396707 (not res!3181121)) b!8047072))

(assert (= (and b!8047072 res!3181120) b!8047073))

(assert (= (and b!8047073 res!3181122) b!8047074))

(assert (= (and b!8047073 (not res!3181123)) b!8047075))

(declare-fun m!8398900 () Bool)

(assert (=> b!8047074 m!8398900))

(declare-fun m!8398902 () Bool)

(assert (=> b!8047075 m!8398902))

(assert (=> b!8047039 d!2396707))

(declare-fun d!2396709 () Bool)

(assert (=> d!2396709 (= (inv!97100 (tag!9636 (h!81831 rules!4081))) (= (mod (str.len (value!293001 (tag!9636 (h!81831 rules!4081)))) 2) 0))))

(assert (=> b!8047038 d!2396709))

(declare-fun d!2396711 () Bool)

(declare-fun res!3181134 () Bool)

(declare-fun e!4741098 () Bool)

(assert (=> d!2396711 (=> (not res!3181134) (not e!4741098))))

(declare-fun semiInverseModEq!3895 (Int Int) Bool)

(assert (=> d!2396711 (= res!3181134 (semiInverseModEq!3895 (toChars!11714 (transformation!8772 (h!81831 rules!4081))) (toValue!11855 (transformation!8772 (h!81831 rules!4081)))))))

(assert (=> d!2396711 (= (inv!97102 (transformation!8772 (h!81831 rules!4081))) e!4741098)))

(declare-fun b!8047086 () Bool)

(declare-fun equivClasses!3710 (Int Int) Bool)

(assert (=> b!8047086 (= e!4741098 (equivClasses!3710 (toChars!11714 (transformation!8772 (h!81831 rules!4081))) (toValue!11855 (transformation!8772 (h!81831 rules!4081)))))))

(assert (= (and d!2396711 res!3181134) b!8047086))

(declare-fun m!8398912 () Bool)

(assert (=> d!2396711 m!8398912))

(declare-fun m!8398914 () Bool)

(assert (=> b!8047086 m!8398914))

(assert (=> b!8047038 d!2396711))

(declare-fun d!2396717 () Bool)

(declare-fun res!3181135 () Bool)

(declare-fun e!4741099 () Bool)

(assert (=> d!2396717 (=> res!3181135 e!4741099)))

(assert (=> d!2396717 (= res!3181135 ((_ is Nil!75383) rules!4081))))

(assert (=> d!2396717 (= (noDuplicateTag!3350 thiss!26941 rules!4081 acc!573) e!4741099)))

(declare-fun b!8047087 () Bool)

(declare-fun e!4741100 () Bool)

(assert (=> b!8047087 (= e!4741099 e!4741100)))

(declare-fun res!3181136 () Bool)

(assert (=> b!8047087 (=> (not res!3181136) (not e!4741100))))

(assert (=> b!8047087 (= res!3181136 (not (contains!21070 acc!573 (tag!9636 (h!81831 rules!4081)))))))

(declare-fun b!8047088 () Bool)

(assert (=> b!8047088 (= e!4741100 (noDuplicateTag!3350 thiss!26941 (t!391279 rules!4081) (Cons!75380 (tag!9636 (h!81831 rules!4081)) acc!573)))))

(assert (= (and d!2396717 (not res!3181135)) b!8047087))

(assert (= (and b!8047087 res!3181136) b!8047088))

(declare-fun m!8398916 () Bool)

(assert (=> b!8047087 m!8398916))

(declare-fun m!8398918 () Bool)

(assert (=> b!8047088 m!8398918))

(assert (=> b!8047033 d!2396717))

(declare-fun d!2396719 () Bool)

(declare-fun lt!2722847 () Int)

(assert (=> d!2396719 (>= lt!2722847 0)))

(declare-fun e!4741111 () Int)

(assert (=> d!2396719 (= lt!2722847 e!4741111)))

(declare-fun c!1475471 () Bool)

(assert (=> d!2396719 (= c!1475471 ((_ is Nil!75383) (t!391279 rules!4081)))))

(assert (=> d!2396719 (= (ListPrimitiveSize!538 (t!391279 rules!4081)) lt!2722847)))

(declare-fun b!8047101 () Bool)

(assert (=> b!8047101 (= e!4741111 0)))

(declare-fun b!8047102 () Bool)

(assert (=> b!8047102 (= e!4741111 (+ 1 (ListPrimitiveSize!538 (t!391279 (t!391279 rules!4081)))))))

(assert (= (and d!2396719 c!1475471) b!8047101))

(assert (= (and d!2396719 (not c!1475471)) b!8047102))

(declare-fun m!8398920 () Bool)

(assert (=> b!8047102 m!8398920))

(assert (=> b!8047042 d!2396719))

(declare-fun d!2396721 () Bool)

(declare-fun lt!2722848 () Int)

(assert (=> d!2396721 (>= lt!2722848 0)))

(declare-fun e!4741112 () Int)

(assert (=> d!2396721 (= lt!2722848 e!4741112)))

(declare-fun c!1475472 () Bool)

(assert (=> d!2396721 (= c!1475472 ((_ is Nil!75383) rules!4081))))

(assert (=> d!2396721 (= (ListPrimitiveSize!538 rules!4081) lt!2722848)))

(declare-fun b!8047103 () Bool)

(assert (=> b!8047103 (= e!4741112 0)))

(declare-fun b!8047104 () Bool)

(assert (=> b!8047104 (= e!4741112 (+ 1 (ListPrimitiveSize!538 (t!391279 rules!4081))))))

(assert (= (and d!2396721 c!1475472) b!8047103))

(assert (= (and d!2396721 (not c!1475472)) b!8047104))

(assert (=> b!8047104 m!8398878))

(assert (=> b!8047042 d!2396721))

(declare-fun b!8047117 () Bool)

(declare-fun e!4741125 () Bool)

(declare-fun tp!2412468 () Bool)

(assert (=> b!8047117 (= e!4741125 (and (inv!97100 (h!81828 (t!391276 newAcc!87))) tp!2412468))))

(assert (=> b!8047041 (= tp!2412464 e!4741125)))

(assert (= (and b!8047041 ((_ is Cons!75380) (t!391276 newAcc!87))) b!8047117))

(declare-fun m!8398926 () Bool)

(assert (=> b!8047117 m!8398926))

(declare-fun b!8047118 () Bool)

(declare-fun e!4741127 () Bool)

(declare-fun tp!2412469 () Bool)

(assert (=> b!8047118 (= e!4741127 (and (inv!97100 (h!81828 (t!391276 acc!573))) tp!2412469))))

(assert (=> b!8047035 (= tp!2412462 e!4741127)))

(assert (= (and b!8047035 ((_ is Cons!75380) (t!391276 acc!573))) b!8047118))

(declare-fun m!8398932 () Bool)

(assert (=> b!8047118 m!8398932))

(declare-fun b!8047137 () Bool)

(declare-fun e!4741139 () Bool)

(declare-fun tp_is_empty!54643 () Bool)

(assert (=> b!8047137 (= e!4741139 tp_is_empty!54643)))

(declare-fun b!8047138 () Bool)

(declare-fun tp!2412489 () Bool)

(declare-fun tp!2412488 () Bool)

(assert (=> b!8047138 (= e!4741139 (and tp!2412489 tp!2412488))))

(declare-fun b!8047140 () Bool)

(declare-fun tp!2412486 () Bool)

(declare-fun tp!2412487 () Bool)

(assert (=> b!8047140 (= e!4741139 (and tp!2412486 tp!2412487))))

(declare-fun b!8047139 () Bool)

(declare-fun tp!2412490 () Bool)

(assert (=> b!8047139 (= e!4741139 tp!2412490)))

(assert (=> b!8047038 (= tp!2412463 e!4741139)))

(assert (= (and b!8047038 ((_ is ElementMatch!21843) (regex!8772 (h!81831 rules!4081)))) b!8047137))

(assert (= (and b!8047038 ((_ is Concat!30936) (regex!8772 (h!81831 rules!4081)))) b!8047138))

(assert (= (and b!8047038 ((_ is Star!21843) (regex!8772 (h!81831 rules!4081)))) b!8047139))

(assert (= (and b!8047038 ((_ is Union!21843) (regex!8772 (h!81831 rules!4081)))) b!8047140))

(declare-fun b!8047159 () Bool)

(declare-fun b_free!136499 () Bool)

(declare-fun b_next!137289 () Bool)

(assert (=> b!8047159 (= b_free!136499 (not b_next!137289))))

(declare-fun tp!2412511 () Bool)

(declare-fun b_and!354935 () Bool)

(assert (=> b!8047159 (= tp!2412511 b_and!354935)))

(declare-fun b_free!136501 () Bool)

(declare-fun b_next!137291 () Bool)

(assert (=> b!8047159 (= b_free!136501 (not b_next!137291))))

(declare-fun tp!2412508 () Bool)

(declare-fun b_and!354937 () Bool)

(assert (=> b!8047159 (= tp!2412508 b_and!354937)))

(declare-fun e!4741159 () Bool)

(assert (=> b!8047159 (= e!4741159 (and tp!2412511 tp!2412508))))

(declare-fun b!8047158 () Bool)

(declare-fun e!4741160 () Bool)

(declare-fun tp!2412510 () Bool)

(assert (=> b!8047158 (= e!4741160 (and tp!2412510 (inv!97100 (tag!9636 (h!81831 (t!391279 rules!4081)))) (inv!97102 (transformation!8772 (h!81831 (t!391279 rules!4081)))) e!4741159))))

(declare-fun b!8047157 () Bool)

(declare-fun e!4741158 () Bool)

(declare-fun tp!2412509 () Bool)

(assert (=> b!8047157 (= e!4741158 (and e!4741160 tp!2412509))))

(assert (=> b!8047032 (= tp!2412461 e!4741158)))

(assert (= b!8047158 b!8047159))

(assert (= b!8047157 b!8047158))

(assert (= (and b!8047032 ((_ is Cons!75383) (t!391279 rules!4081))) b!8047157))

(declare-fun m!8398940 () Bool)

(assert (=> b!8047158 m!8398940))

(declare-fun m!8398942 () Bool)

(assert (=> b!8047158 m!8398942))

(check-sat b_and!354929 (not b!8047087) tp_is_empty!54643 (not b!8047140) (not b_next!137291) (not b_next!137289) (not b!8047070) (not b!8047053) (not b!8047104) (not b!8047075) (not b_next!137281) (not b!8047118) (not b!8047157) (not b!8047158) (not b!8047071) (not b!8047102) b_and!354935 (not b!8047139) (not b!8047054) b_and!354937 (not b!8047074) (not b!8047088) (not b!8047138) (not b_next!137283) (not d!2396711) (not b!8047117) (not b!8047086) b_and!354927)
(check-sat b_and!354929 (not b_next!137281) (not b_next!137291) b_and!354935 b_and!354937 (not b_next!137289) (not b_next!137283) b_and!354927)
