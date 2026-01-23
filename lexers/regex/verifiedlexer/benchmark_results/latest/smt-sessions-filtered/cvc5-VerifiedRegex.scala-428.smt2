; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12708 () Bool)

(assert start!12708)

(assert (=> start!12708 true))

(declare-fun b!125037 () Bool)

(assert (=> b!125037 true))

(assert (=> b!125037 true))

(declare-fun b!125038 () Bool)

(assert (=> b!125038 true))

(declare-fun b!125048 () Bool)

(declare-fun e!71949 () Bool)

(declare-datatypes ((List!2044 0))(
  ( (Nil!2038) (Cons!2038 (h!7435 (_ BitVec 16)) (t!22575 List!2044)) )
))
(declare-datatypes ((IArray!1137 0))(
  ( (IArray!1138 (innerList!626 List!2044)) )
))
(declare-datatypes ((Conc!568 0))(
  ( (Node!568 (left!1626 Conc!568) (right!1956 Conc!568) (csize!1366 Int) (cheight!779 Int)) (Leaf!997 (xs!3163 IArray!1137) (csize!1367 Int)) (Empty!568) )
))
(declare-datatypes ((BalanceConc!1140 0))(
  ( (BalanceConc!1141 (c!27601 Conc!568)) )
))
(declare-fun x!33485 () BalanceConc!1140)

(declare-fun tp!68298 () Bool)

(declare-fun inv!2595 (Conc!568) Bool)

(assert (=> b!125048 (= e!71949 (and (inv!2595 (c!27601 x!33485)) tp!68298))))

(declare-datatypes ((DedentValueInjection!16 0))(
  ( (DedentValueInjection!17) )
))
(declare-fun thiss!4219 () DedentValueInjection!16)

(declare-fun inst!172 () Bool)

(declare-fun inv!2596 (BalanceConc!1140) Bool)

(declare-fun list!786 (BalanceConc!1140) List!2044)

(declare-datatypes ((TokenValue!390 0))(
  ( (FloatLiteralValue!780 (text!3175 List!2044)) (TokenValueExt!389 (__x!2221 Int)) (Broken!1950 (value!14490 List!2044)) (Object!395) (End!390) (Def!390) (Underscore!390) (Match!390) (Else!390) (Error!390) (Case!390) (If!390) (Extends!390) (Abstract!390) (Class!390) (Val!390) (DelimiterValue!780 (del!450 List!2044)) (KeywordValue!396 (value!14491 List!2044)) (CommentValue!780 (value!14492 List!2044)) (WhitespaceValue!780 (value!14493 List!2044)) (IndentationValue!390 (value!14494 List!2044)) (String!2663) (Int32!390) (Broken!1951 (value!14495 List!2044)) (Boolean!391) (Unit!1603) (OperatorValue!393 (op!450 List!2044)) (IdentifierValue!780 (value!14496 List!2044)) (IdentifierValue!781 (value!14497 List!2044)) (WhitespaceValue!781 (value!14498 List!2044)) (True!780) (False!780) (Broken!1952 (value!14499 List!2044)) (Broken!1953 (value!14500 List!2044)) (True!781) (RightBrace!390) (RightBracket!390) (Colon!390) (Null!390) (Comma!390) (LeftBracket!390) (False!781) (LeftBrace!390) (ImaginaryLiteralValue!390 (text!3176 List!2044)) (StringLiteralValue!1170 (value!14501 List!2044)) (EOFValue!390 (value!14502 List!2044)) (IdentValue!390 (value!14503 List!2044)) (DelimiterValue!781 (value!14504 List!2044)) (DedentValue!390 (value!14505 List!2044)) (NewLineValue!390 (value!14506 List!2044)) (IntegerValue!1170 (value!14507 (_ BitVec 32)) (text!3177 List!2044)) (IntegerValue!1171 (value!14508 Int) (text!3178 List!2044)) (Times!390) (Or!390) (Equal!390) (Minus!390) (Broken!1954 (value!14509 List!2044)) (And!390) (Div!390) (LessEqual!390) (Mod!390) (Concat!954) (Not!390) (Plus!390) (SpaceValue!390 (value!14510 List!2044)) (IntegerValue!1172 (value!14511 Int) (text!3179 List!2044)) (StringLiteralValue!1171 (text!3180 List!2044)) (FloatLiteralValue!781 (text!3181 List!2044)) (BytesLiteralValue!390 (value!14512 List!2044)) (CommentValue!781 (value!14513 List!2044)) (StringLiteralValue!1172 (value!14514 List!2044)) (ErrorTokenValue!390 (msg!451 List!2044)) )
))
(declare-fun toCharacters!15 (DedentValueInjection!16 TokenValue!390) BalanceConc!1140)

(declare-fun toValue!22 (DedentValueInjection!16 BalanceConc!1140) TokenValue!390)

(assert (=> start!12708 (= inst!172 (=> (and (inv!2596 x!33485) e!71949) (= (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (list!786 x!33485))))))

(assert (= start!12708 b!125048))

(declare-fun m!110743 () Bool)

(assert (=> b!125048 m!110743))

(declare-fun m!110745 () Bool)

(assert (=> start!12708 m!110745))

(declare-fun m!110747 () Bool)

(assert (=> start!12708 m!110747))

(declare-fun m!110749 () Bool)

(assert (=> start!12708 m!110749))

(declare-fun m!110751 () Bool)

(assert (=> start!12708 m!110751))

(assert (=> start!12708 m!110745))

(assert (=> start!12708 m!110747))

(declare-fun m!110753 () Bool)

(assert (=> start!12708 m!110753))

(declare-fun res!58102 () Bool)

(declare-fun e!71951 () Bool)

(assert (=> b!125038 (=> res!58102 e!71951)))

(declare-fun x!33486 () BalanceConc!1140)

(declare-fun x!33487 () BalanceConc!1140)

(assert (=> b!125038 (= res!58102 (not (= (list!786 x!33486) (list!786 x!33487))))))

(declare-fun e!71952 () Bool)

(declare-fun e!71950 () Bool)

(declare-fun inst!173 () Bool)

(assert (=> b!125038 (= inst!173 (=> (and (inv!2596 x!33486) e!71952 (inv!2596 x!33487) e!71950) e!71951))))

(declare-fun b!125049 () Bool)

(assert (=> b!125049 (= e!71951 (= (toValue!22 thiss!4219 x!33486) (toValue!22 thiss!4219 x!33487)))))

(declare-fun b!125050 () Bool)

(declare-fun tp!68299 () Bool)

(assert (=> b!125050 (= e!71952 (and (inv!2595 (c!27601 x!33486)) tp!68299))))

(declare-fun b!125051 () Bool)

(declare-fun tp!68300 () Bool)

(assert (=> b!125051 (= e!71950 (and (inv!2595 (c!27601 x!33487)) tp!68300))))

(assert (= (and b!125038 (not res!58102)) b!125049))

(assert (= b!125038 b!125050))

(assert (= b!125038 b!125051))

(declare-fun m!110755 () Bool)

(assert (=> b!125038 m!110755))

(declare-fun m!110757 () Bool)

(assert (=> b!125038 m!110757))

(declare-fun m!110759 () Bool)

(assert (=> b!125038 m!110759))

(declare-fun m!110761 () Bool)

(assert (=> b!125038 m!110761))

(declare-fun m!110763 () Bool)

(assert (=> b!125049 m!110763))

(declare-fun m!110765 () Bool)

(assert (=> b!125049 m!110765))

(declare-fun m!110767 () Bool)

(assert (=> b!125050 m!110767))

(declare-fun m!110769 () Bool)

(assert (=> b!125051 m!110769))

(declare-fun bs!12206 () Bool)

(declare-fun neg-inst!173 () Bool)

(declare-fun s!16935 () Bool)

(assert (= bs!12206 (and neg-inst!173 s!16935)))

(assert (=> bs!12206 (=> true (= (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (list!786 x!33485)))))

(assert (=> m!110745 m!110747))

(assert (=> m!110745 m!110753))

(assert (=> m!110745 m!110749))

(assert (=> m!110745 s!16935))

(assert (=> m!110749 s!16935))

(declare-fun bs!12207 () Bool)

(assert (= bs!12207 (and neg-inst!173 start!12708)))

(assert (=> bs!12207 (= true inst!172)))

(declare-fun bs!12208 () Bool)

(declare-fun neg-inst!172 () Bool)

(declare-fun s!16937 () Bool)

(assert (= bs!12208 (and neg-inst!172 s!16937)))

(declare-fun res!58103 () Bool)

(declare-fun e!71953 () Bool)

(assert (=> bs!12208 (=> res!58103 e!71953)))

(assert (=> bs!12208 (= res!58103 (not (= (list!786 x!33486) (list!786 x!33486))))))

(assert (=> bs!12208 (=> true e!71953)))

(declare-fun b!125052 () Bool)

(assert (=> b!125052 (= e!71953 (= (toValue!22 thiss!4219 x!33486) (toValue!22 thiss!4219 x!33486)))))

(assert (= (and bs!12208 (not res!58103)) b!125052))

(assert (=> m!110763 m!110755))

(assert (=> m!110763 m!110755))

(assert (=> m!110763 s!16937))

(assert (=> m!110763 s!16937))

(declare-fun bs!12209 () Bool)

(assert (= bs!12209 (and m!110755 m!110763)))

(assert (=> bs!12209 s!16937))

(assert (=> m!110755 s!16937))

(assert (=> bs!12209 s!16937))

(assert (=> m!110755 s!16937))

(declare-fun bs!12210 () Bool)

(declare-fun s!16939 () Bool)

(assert (= bs!12210 (and neg-inst!172 s!16939)))

(declare-fun res!58104 () Bool)

(declare-fun e!71954 () Bool)

(assert (=> bs!12210 (=> res!58104 e!71954)))

(assert (=> bs!12210 (= res!58104 (not (= (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (list!786 x!33486))))))

(assert (=> bs!12210 (=> true e!71954)))

(declare-fun b!125053 () Bool)

(assert (=> b!125053 (= e!71954 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (toValue!22 thiss!4219 x!33486)))))

(assert (= (and bs!12210 (not res!58104)) b!125053))

(declare-fun bs!12211 () Bool)

(assert (= bs!12211 (and m!110753 m!110763 m!110755)))

(assert (=> bs!12211 m!110753))

(assert (=> bs!12211 m!110755))

(assert (=> bs!12211 s!16939))

(declare-fun bs!12212 () Bool)

(declare-fun s!16941 () Bool)

(assert (= bs!12212 (and neg-inst!172 s!16941)))

(declare-fun res!58105 () Bool)

(declare-fun e!71955 () Bool)

(assert (=> bs!12212 (=> res!58105 e!71955)))

(assert (=> bs!12212 (= res!58105 (not (= (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))))))))

(assert (=> bs!12212 (=> true e!71955)))

(declare-fun b!125054 () Bool)

(assert (=> b!125054 (= e!71955 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485)))))))

(assert (= (and bs!12212 (not res!58105)) b!125054))

(assert (=> m!110753 s!16941))

(declare-fun bs!12213 () Bool)

(declare-fun s!16943 () Bool)

(assert (= bs!12213 (and neg-inst!172 s!16943)))

(declare-fun res!58106 () Bool)

(declare-fun e!71956 () Bool)

(assert (=> bs!12213 (=> res!58106 e!71956)))

(assert (=> bs!12213 (= res!58106 (not (= (list!786 x!33486) (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))))))))

(assert (=> bs!12213 (=> true e!71956)))

(declare-fun b!125055 () Bool)

(assert (=> b!125055 (= e!71956 (= (toValue!22 thiss!4219 x!33486) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485)))))))

(assert (= (and bs!12213 (not res!58106)) b!125055))

(assert (=> bs!12211 m!110755))

(assert (=> bs!12211 m!110753))

(assert (=> bs!12211 s!16943))

(assert (=> m!110753 s!16941))

(declare-fun bs!12214 () Bool)

(declare-fun s!16945 () Bool)

(assert (= bs!12214 (and neg-inst!172 s!16945)))

(declare-fun res!58107 () Bool)

(declare-fun e!71957 () Bool)

(assert (=> bs!12214 (=> res!58107 e!71957)))

(assert (=> bs!12214 (= res!58107 (not (= (list!786 x!33487) (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))))))))

(assert (=> bs!12214 (=> true e!71957)))

(declare-fun b!125056 () Bool)

(assert (=> b!125056 (= e!71957 (= (toValue!22 thiss!4219 x!33487) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485)))))))

(assert (= (and bs!12214 (not res!58107)) b!125056))

(declare-fun bs!12215 () Bool)

(assert (= bs!12215 (and m!110757 m!110753)))

(assert (=> bs!12215 m!110757))

(assert (=> bs!12215 m!110753))

(assert (=> bs!12215 s!16945))

(declare-fun bs!12216 () Bool)

(declare-fun s!16947 () Bool)

(assert (= bs!12216 (and neg-inst!172 s!16947)))

(declare-fun res!58108 () Bool)

(declare-fun e!71958 () Bool)

(assert (=> bs!12216 (=> res!58108 e!71958)))

(assert (=> bs!12216 (= res!58108 (not (= (list!786 x!33487) (list!786 x!33486))))))

(assert (=> bs!12216 (=> true e!71958)))

(declare-fun b!125057 () Bool)

(assert (=> b!125057 (= e!71958 (= (toValue!22 thiss!4219 x!33487) (toValue!22 thiss!4219 x!33486)))))

(assert (= (and bs!12216 (not res!58108)) b!125057))

(declare-fun bs!12217 () Bool)

(assert (= bs!12217 (and m!110757 m!110763 m!110755)))

(assert (=> bs!12217 m!110757))

(assert (=> bs!12217 m!110755))

(assert (=> bs!12217 s!16947))

(declare-fun bs!12218 () Bool)

(declare-fun s!16949 () Bool)

(assert (= bs!12218 (and neg-inst!172 s!16949)))

(declare-fun res!58109 () Bool)

(declare-fun e!71959 () Bool)

(assert (=> bs!12218 (=> res!58109 e!71959)))

(assert (=> bs!12218 (= res!58109 (not (= (list!786 x!33487) (list!786 x!33487))))))

(assert (=> bs!12218 (=> true e!71959)))

(declare-fun b!125058 () Bool)

(assert (=> b!125058 (= e!71959 (= (toValue!22 thiss!4219 x!33487) (toValue!22 thiss!4219 x!33487)))))

(assert (= (and bs!12218 (not res!58109)) b!125058))

(assert (=> m!110757 s!16949))

(declare-fun bs!12219 () Bool)

(declare-fun s!16951 () Bool)

(assert (= bs!12219 (and neg-inst!172 s!16951)))

(declare-fun res!58110 () Bool)

(declare-fun e!71960 () Bool)

(assert (=> bs!12219 (=> res!58110 e!71960)))

(assert (=> bs!12219 (= res!58110 (not (= (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (list!786 x!33487))))))

(assert (=> bs!12219 (=> true e!71960)))

(declare-fun b!125059 () Bool)

(assert (=> b!125059 (= e!71960 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (toValue!22 thiss!4219 x!33487)))))

(assert (= (and bs!12219 (not res!58110)) b!125059))

(assert (=> bs!12215 m!110753))

(assert (=> bs!12215 m!110757))

(assert (=> bs!12215 s!16951))

(declare-fun bs!12220 () Bool)

(declare-fun s!16953 () Bool)

(assert (= bs!12220 (and neg-inst!172 s!16953)))

(declare-fun res!58111 () Bool)

(declare-fun e!71961 () Bool)

(assert (=> bs!12220 (=> res!58111 e!71961)))

(assert (=> bs!12220 (= res!58111 (not (= (list!786 x!33486) (list!786 x!33487))))))

(assert (=> bs!12220 (=> true e!71961)))

(declare-fun b!125060 () Bool)

(assert (=> b!125060 (= e!71961 (= (toValue!22 thiss!4219 x!33486) (toValue!22 thiss!4219 x!33487)))))

(assert (= (and bs!12220 (not res!58111)) b!125060))

(assert (=> bs!12217 m!110755))

(assert (=> bs!12217 m!110757))

(assert (=> bs!12217 s!16953))

(assert (=> m!110757 s!16949))

(declare-fun bs!12221 () Bool)

(declare-fun s!16955 () Bool)

(assert (= bs!12221 (and neg-inst!172 s!16955)))

(declare-fun res!58112 () Bool)

(declare-fun e!71962 () Bool)

(assert (=> bs!12221 (=> res!58112 e!71962)))

(assert (=> bs!12221 (= res!58112 (not (= (list!786 x!33485) (list!786 x!33487))))))

(assert (=> bs!12221 (=> true e!71962)))

(declare-fun b!125061 () Bool)

(assert (=> b!125061 (= e!71962 (= (toValue!22 thiss!4219 x!33485) (toValue!22 thiss!4219 x!33487)))))

(assert (= (and bs!12221 (not res!58112)) b!125061))

(declare-fun bs!12222 () Bool)

(assert (= bs!12222 (and m!110745 m!110757)))

(assert (=> bs!12222 m!110749))

(assert (=> bs!12222 m!110757))

(assert (=> bs!12222 s!16955))

(declare-fun bs!12223 () Bool)

(declare-fun s!16957 () Bool)

(assert (= bs!12223 (and neg-inst!172 s!16957)))

(declare-fun res!58113 () Bool)

(declare-fun e!71963 () Bool)

(assert (=> bs!12223 (=> res!58113 e!71963)))

(assert (=> bs!12223 (= res!58113 (not (= (list!786 x!33485) (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))))))))

(assert (=> bs!12223 (=> true e!71963)))

(declare-fun b!125062 () Bool)

(assert (=> b!125062 (= e!71963 (= (toValue!22 thiss!4219 x!33485) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485)))))))

(assert (= (and bs!12223 (not res!58113)) b!125062))

(declare-fun bs!12224 () Bool)

(assert (= bs!12224 (and m!110745 m!110753)))

(assert (=> bs!12224 m!110749))

(assert (=> bs!12224 m!110753))

(assert (=> bs!12224 s!16957))

(declare-fun bs!12225 () Bool)

(declare-fun s!16959 () Bool)

(assert (= bs!12225 (and neg-inst!172 s!16959)))

(declare-fun res!58114 () Bool)

(declare-fun e!71964 () Bool)

(assert (=> bs!12225 (=> res!58114 e!71964)))

(assert (=> bs!12225 (= res!58114 (not (= (list!786 x!33485) (list!786 x!33486))))))

(assert (=> bs!12225 (=> true e!71964)))

(declare-fun b!125063 () Bool)

(assert (=> b!125063 (= e!71964 (= (toValue!22 thiss!4219 x!33485) (toValue!22 thiss!4219 x!33486)))))

(assert (= (and bs!12225 (not res!58114)) b!125063))

(declare-fun bs!12226 () Bool)

(assert (= bs!12226 (and m!110745 m!110763 m!110755)))

(assert (=> bs!12226 m!110749))

(assert (=> bs!12226 m!110755))

(assert (=> bs!12226 s!16959))

(declare-fun bs!12227 () Bool)

(declare-fun s!16961 () Bool)

(assert (= bs!12227 (and neg-inst!172 s!16961)))

(declare-fun res!58115 () Bool)

(declare-fun e!71965 () Bool)

(assert (=> bs!12227 (=> res!58115 e!71965)))

(assert (=> bs!12227 (= res!58115 (not (= (list!786 x!33485) (list!786 x!33485))))))

(assert (=> bs!12227 (=> true e!71965)))

(declare-fun b!125064 () Bool)

(assert (=> b!125064 (= e!71965 (= (toValue!22 thiss!4219 x!33485) (toValue!22 thiss!4219 x!33485)))))

(assert (= (and bs!12227 (not res!58115)) b!125064))

(assert (=> m!110745 m!110749))

(assert (=> m!110745 m!110749))

(assert (=> m!110745 s!16961))

(declare-fun bs!12228 () Bool)

(declare-fun s!16963 () Bool)

(assert (= bs!12228 (and neg-inst!172 s!16963)))

(declare-fun res!58116 () Bool)

(declare-fun e!71966 () Bool)

(assert (=> bs!12228 (=> res!58116 e!71966)))

(assert (=> bs!12228 (= res!58116 (not (= (list!786 x!33487) (list!786 x!33485))))))

(assert (=> bs!12228 (=> true e!71966)))

(declare-fun b!125065 () Bool)

(assert (=> b!125065 (= e!71966 (= (toValue!22 thiss!4219 x!33487) (toValue!22 thiss!4219 x!33485)))))

(assert (= (and bs!12228 (not res!58116)) b!125065))

(assert (=> bs!12222 m!110757))

(assert (=> bs!12222 m!110749))

(assert (=> bs!12222 s!16963))

(declare-fun bs!12229 () Bool)

(declare-fun s!16965 () Bool)

(assert (= bs!12229 (and neg-inst!172 s!16965)))

(declare-fun res!58117 () Bool)

(declare-fun e!71967 () Bool)

(assert (=> bs!12229 (=> res!58117 e!71967)))

(assert (=> bs!12229 (= res!58117 (not (= (list!786 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (list!786 x!33485))))))

(assert (=> bs!12229 (=> true e!71967)))

(declare-fun b!125066 () Bool)

(assert (=> b!125066 (= e!71967 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33485))) (toValue!22 thiss!4219 x!33485)))))

(assert (= (and bs!12229 (not res!58117)) b!125066))

(assert (=> bs!12224 m!110753))

(assert (=> bs!12224 m!110749))

(assert (=> bs!12224 s!16965))

(declare-fun bs!12230 () Bool)

(declare-fun s!16967 () Bool)

(assert (= bs!12230 (and neg-inst!172 s!16967)))

(declare-fun res!58118 () Bool)

(declare-fun e!71968 () Bool)

(assert (=> bs!12230 (=> res!58118 e!71968)))

(assert (=> bs!12230 (= res!58118 (not (= (list!786 x!33486) (list!786 x!33485))))))

(assert (=> bs!12230 (=> true e!71968)))

(declare-fun b!125067 () Bool)

(assert (=> b!125067 (= e!71968 (= (toValue!22 thiss!4219 x!33486) (toValue!22 thiss!4219 x!33485)))))

(assert (= (and bs!12230 (not res!58118)) b!125067))

(assert (=> bs!12226 m!110755))

(assert (=> bs!12226 m!110749))

(assert (=> bs!12226 s!16967))

(assert (=> m!110745 s!16961))

(declare-fun bs!12231 () Bool)

(assert (= bs!12231 (and m!110749 m!110753)))

(assert (=> bs!12231 s!16957))

(declare-fun bs!12232 () Bool)

(assert (= bs!12232 (and m!110749 m!110763 m!110755)))

(assert (=> bs!12232 s!16959))

(declare-fun bs!12233 () Bool)

(assert (= bs!12233 (and m!110749 m!110757)))

(assert (=> bs!12233 s!16955))

(assert (=> m!110749 s!16961))

(declare-fun bs!12234 () Bool)

(assert (= bs!12234 (and m!110749 m!110745)))

(assert (=> bs!12234 s!16961))

(assert (=> bs!12233 s!16963))

(assert (=> bs!12231 s!16965))

(assert (=> m!110749 s!16961))

(assert (=> bs!12232 s!16967))

(assert (=> bs!12234 s!16961))

(assert (=> m!110765 s!16949))

(declare-fun bs!12235 () Bool)

(assert (= bs!12235 (and m!110765 m!110745 m!110749)))

(assert (=> bs!12235 s!16963))

(declare-fun bs!12236 () Bool)

(assert (= bs!12236 (and m!110765 m!110753)))

(assert (=> bs!12236 s!16945))

(declare-fun bs!12237 () Bool)

(assert (= bs!12237 (and m!110765 m!110763 m!110755)))

(assert (=> bs!12237 s!16947))

(declare-fun bs!12238 () Bool)

(assert (= bs!12238 (and m!110765 m!110757)))

(assert (=> bs!12238 s!16949))

(assert (=> m!110765 s!16949))

(assert (=> bs!12237 s!16953))

(assert (=> bs!12236 s!16951))

(assert (=> bs!12235 s!16955))

(assert (=> bs!12238 s!16949))

(declare-fun bs!12239 () Bool)

(assert (= bs!12239 (and neg-inst!172 b!125038)))

(assert (=> bs!12239 (= true inst!173)))

(declare-fun res!58099 () Bool)

(declare-fun e!71947 () Bool)

(assert (=> start!12708 (=> res!58099 e!71947)))

(declare-fun lambda!3161 () Int)

(declare-fun Forall!105 (Int) Bool)

(assert (=> start!12708 (= res!58099 (not (Forall!105 lambda!3161)))))

(assert (=> start!12708 (= (Forall!105 lambda!3161) inst!172)))

(assert (=> start!12708 (not e!71947)))

(assert (=> start!12708 true))

(declare-fun e!71948 () Bool)

(assert (=> b!125037 (= e!71947 e!71948)))

(declare-fun res!58100 () Bool)

(assert (=> b!125037 (=> res!58100 e!71948)))

(declare-fun lambda!3162 () Int)

(declare-fun lambda!3163 () Int)

(declare-fun semiInverseModEq!120 (Int Int) Bool)

(assert (=> b!125037 (= res!58100 (not (semiInverseModEq!120 lambda!3162 lambda!3163)))))

(assert (=> b!125037 (= (semiInverseModEq!120 lambda!3162 lambda!3163) (Forall!105 lambda!3161))))

(declare-fun e!71946 () Bool)

(assert (=> b!125038 (= e!71948 e!71946)))

(declare-fun res!58101 () Bool)

(assert (=> b!125038 (=> res!58101 e!71946)))

(declare-fun lambda!3164 () Int)

(declare-fun Forall2!81 (Int) Bool)

(assert (=> b!125038 (= res!58101 (not (Forall2!81 lambda!3164)))))

(assert (=> b!125038 (= (Forall2!81 lambda!3164) inst!173)))

(declare-fun b!125039 () Bool)

(declare-fun equivClasses!103 (Int Int) Bool)

(assert (=> b!125039 (= e!71946 (equivClasses!103 lambda!3162 lambda!3163))))

(assert (=> b!125039 (= (equivClasses!103 lambda!3162 lambda!3163) (Forall2!81 lambda!3164))))

(assert (= neg-inst!173 inst!172))

(assert (= (and start!12708 (not res!58099)) b!125037))

(assert (= (and b!125037 (not res!58100)) b!125038))

(assert (= neg-inst!172 inst!173))

(assert (= (and b!125038 (not res!58101)) b!125039))

(declare-fun m!110771 () Bool)

(assert (=> start!12708 m!110771))

(assert (=> start!12708 m!110771))

(declare-fun m!110773 () Bool)

(assert (=> b!125037 m!110773))

(assert (=> b!125037 m!110773))

(assert (=> b!125037 m!110771))

(declare-fun m!110775 () Bool)

(assert (=> b!125038 m!110775))

(assert (=> b!125038 m!110775))

(declare-fun m!110777 () Bool)

(assert (=> b!125039 m!110777))

(assert (=> b!125039 m!110777))

(assert (=> b!125039 m!110775))

(push 1)

(assert (not start!12708))

(assert (not b!125048))

(assert (not bs!12225))

(assert (not bs!12221))

(assert (not b!125052))

(assert (not b!125067))

(assert (not b!125051))

(assert (not bs!12206))

(assert (not b!125056))

(assert (not bs!12230))

(assert (not b!125049))

(assert (not b!125053))

(assert (not bs!12229))

(assert (not bs!12216))

(assert (not bs!12219))

(assert (not bs!12210))

(assert (not b!125063))

(assert (not b!125060))

(assert (not bs!12212))

(assert (not b!125061))

(assert (not b!125062))

(assert (not b!125059))

(assert (not bs!12213))

(assert (not b!125037))

(assert (not b!125057))

(assert (not b!125039))

(assert (not b!125065))

(assert (not bs!12223))

(assert (not b!125058))

(assert (not b!125050))

(assert (not bs!12220))

(assert (not bs!12228))

(assert (not b!125054))

(assert (not b!125055))

(assert (not bs!12227))

(assert (not b!125064))

(assert (not bs!12208))

(assert (not bs!12218))

(assert (not b!125038))

(assert (not b!125066))

(assert (not bs!12214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

