; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14386 () Bool)

(assert start!14386)

(declare-datatypes ((List!2260 0))(
  ( (Nil!2250) (Cons!2250 (h!7647 (_ BitVec 16)) (t!22846 List!2260)) )
))
(declare-datatypes ((IArray!1195 0))(
  ( (IArray!1196 (innerList!655 List!2260)) )
))
(declare-datatypes ((Conc!597 0))(
  ( (Node!597 (left!1760 Conc!597) (right!2090 Conc!597) (csize!1424 Int) (cheight!808 Int)) (Leaf!1117 (xs!3192 IArray!1195) (csize!1425 Int)) (Empty!597) )
))
(declare-datatypes ((BalanceConc!1202 0))(
  ( (BalanceConc!1203 (c!29008 Conc!597)) )
))
(declare-fun v!5223 () BalanceConc!1202)

(declare-datatypes ((TokenValue!395 0))(
  ( (FloatLiteralValue!790 (text!3210 List!2260)) (TokenValueExt!394 (__x!2248 Int)) (Broken!1975 (value!14904 List!2260)) (Object!404) (End!395) (Def!395) (Underscore!395) (Match!395) (Else!395) (Error!395) (Case!395) (If!395) (Extends!395) (Abstract!395) (Class!395) (Val!395) (DelimiterValue!790 (del!455 List!2260)) (KeywordValue!401 (value!14905 List!2260)) (CommentValue!790 (value!14906 List!2260)) (WhitespaceValue!790 (value!14907 List!2260)) (IndentationValue!395 (value!14908 List!2260)) (String!3032) (Int32!395) (Broken!1976 (value!14909 List!2260)) (Boolean!396) (Unit!1775) (OperatorValue!398 (op!455 List!2260)) (IdentifierValue!790 (value!14910 List!2260)) (IdentifierValue!791 (value!14911 List!2260)) (WhitespaceValue!791 (value!14912 List!2260)) (True!790) (False!790) (Broken!1977 (value!14913 List!2260)) (Broken!1978 (value!14914 List!2260)) (True!791) (RightBrace!395) (RightBracket!395) (Colon!395) (Null!395) (Comma!395) (LeftBracket!395) (False!791) (LeftBrace!395) (ImaginaryLiteralValue!395 (text!3211 List!2260)) (StringLiteralValue!1185 (value!14915 List!2260)) (EOFValue!395 (value!14916 List!2260)) (IdentValue!395 (value!14917 List!2260)) (DelimiterValue!791 (value!14918 List!2260)) (DedentValue!395 (value!14919 List!2260)) (NewLineValue!395 (value!14920 List!2260)) (IntegerValue!1185 (value!14921 (_ BitVec 32)) (text!3212 List!2260)) (IntegerValue!1186 (value!14922 Int) (text!3213 List!2260)) (Times!395) (Or!395) (Equal!395) (Minus!395) (Broken!1979 (value!14923 List!2260)) (And!395) (Div!395) (LessEqual!395) (Mod!395) (Concat!981) (Not!395) (Plus!395) (SpaceValue!395 (value!14924 List!2260)) (IntegerValue!1187 (value!14925 Int) (text!3214 List!2260)) (StringLiteralValue!1186 (text!3215 List!2260)) (FloatLiteralValue!791 (text!3216 List!2260)) (BytesLiteralValue!395 (value!14926 List!2260)) (CommentValue!791 (value!14927 List!2260)) (StringLiteralValue!1187 (value!14928 List!2260)) (ErrorTokenValue!395 (msg!456 List!2260)) )
))
(declare-fun inv!21 (TokenValue!395) Bool)

(declare-fun efficientList!64 (BalanceConc!1202) List!2260)

(assert (=> start!14386 (not (inv!21 (ErrorTokenValue!395 (efficientList!64 v!5223))))))

(declare-fun e!79703 () Bool)

(declare-fun inv!2971 (BalanceConc!1202) Bool)

(assert (=> start!14386 (and (inv!2971 v!5223) e!79703)))

(declare-fun b!136962 () Bool)

(declare-fun tp!71338 () Bool)

(declare-fun inv!2972 (Conc!597) Bool)

(assert (=> b!136962 (= e!79703 (and (inv!2972 (c!29008 v!5223)) tp!71338))))

(assert (= start!14386 b!136962))

(declare-fun m!121373 () Bool)

(assert (=> start!14386 m!121373))

(declare-fun m!121375 () Bool)

(assert (=> start!14386 m!121375))

(declare-fun m!121377 () Bool)

(assert (=> start!14386 m!121377))

(declare-fun m!121379 () Bool)

(assert (=> b!136962 m!121379))

(check-sat (not start!14386) (not b!136962))
(check-sat)
(get-model)

(declare-fun b!136982 () Bool)

(declare-fun e!79717 () Bool)

(declare-fun inv!15 (TokenValue!395) Bool)

(assert (=> b!136982 (= e!79717 (inv!15 (ErrorTokenValue!395 (efficientList!64 v!5223))))))

(declare-fun d!32850 () Bool)

(declare-fun c!29017 () Bool)

(get-info :version)

(assert (=> d!32850 (= c!29017 ((_ is IntegerValue!1185) (ErrorTokenValue!395 (efficientList!64 v!5223))))))

(declare-fun e!79716 () Bool)

(assert (=> d!32850 (= (inv!21 (ErrorTokenValue!395 (efficientList!64 v!5223))) e!79716)))

(declare-fun b!136983 () Bool)

(declare-fun e!79718 () Bool)

(assert (=> b!136983 (= e!79716 e!79718)))

(declare-fun c!29016 () Bool)

(assert (=> b!136983 (= c!29016 ((_ is IntegerValue!1186) (ErrorTokenValue!395 (efficientList!64 v!5223))))))

(declare-fun b!136984 () Bool)

(declare-fun inv!17 (TokenValue!395) Bool)

(assert (=> b!136984 (= e!79718 (inv!17 (ErrorTokenValue!395 (efficientList!64 v!5223))))))

(declare-fun b!136985 () Bool)

(declare-fun inv!16 (TokenValue!395) Bool)

(assert (=> b!136985 (= e!79716 (inv!16 (ErrorTokenValue!395 (efficientList!64 v!5223))))))

(declare-fun b!136986 () Bool)

(declare-fun res!64244 () Bool)

(assert (=> b!136986 (=> res!64244 e!79717)))

(assert (=> b!136986 (= res!64244 (not ((_ is IntegerValue!1187) (ErrorTokenValue!395 (efficientList!64 v!5223)))))))

(assert (=> b!136986 (= e!79718 e!79717)))

(assert (= (and d!32850 c!29017) b!136985))

(assert (= (and d!32850 (not c!29017)) b!136983))

(assert (= (and b!136983 c!29016) b!136984))

(assert (= (and b!136983 (not c!29016)) b!136986))

(assert (= (and b!136986 (not res!64244)) b!136982))

(declare-fun m!121385 () Bool)

(assert (=> b!136982 m!121385))

(declare-fun m!121387 () Bool)

(assert (=> b!136984 m!121387))

(declare-fun m!121389 () Bool)

(assert (=> b!136985 m!121389))

(assert (=> start!14386 d!32850))

(declare-fun d!32854 () Bool)

(declare-fun lt!40993 () List!2260)

(declare-fun list!824 (BalanceConc!1202) List!2260)

(assert (=> d!32854 (= lt!40993 (list!824 v!5223))))

(declare-fun efficientList!65 (Conc!597 List!2260) List!2260)

(declare-fun efficientList$default$2!21 (Conc!597) List!2260)

(assert (=> d!32854 (= lt!40993 (efficientList!65 (c!29008 v!5223) (efficientList$default$2!21 (c!29008 v!5223))))))

(assert (=> d!32854 (= (efficientList!64 v!5223) lt!40993)))

(declare-fun bs!12776 () Bool)

(assert (= bs!12776 d!32854))

(declare-fun m!121397 () Bool)

(assert (=> bs!12776 m!121397))

(declare-fun m!121399 () Bool)

(assert (=> bs!12776 m!121399))

(assert (=> bs!12776 m!121399))

(declare-fun m!121401 () Bool)

(assert (=> bs!12776 m!121401))

(assert (=> start!14386 d!32854))

(declare-fun d!32858 () Bool)

(declare-fun isBalanced!178 (Conc!597) Bool)

(assert (=> d!32858 (= (inv!2971 v!5223) (isBalanced!178 (c!29008 v!5223)))))

(declare-fun bs!12777 () Bool)

(assert (= bs!12777 d!32858))

(declare-fun m!121403 () Bool)

(assert (=> bs!12777 m!121403))

(assert (=> start!14386 d!32858))

(declare-fun d!32860 () Bool)

(declare-fun c!29026 () Bool)

(assert (=> d!32860 (= c!29026 ((_ is Node!597) (c!29008 v!5223)))))

(declare-fun e!79736 () Bool)

(assert (=> d!32860 (= (inv!2972 (c!29008 v!5223)) e!79736)))

(declare-fun b!137014 () Bool)

(declare-fun inv!2975 (Conc!597) Bool)

(assert (=> b!137014 (= e!79736 (inv!2975 (c!29008 v!5223)))))

(declare-fun b!137015 () Bool)

(declare-fun e!79737 () Bool)

(assert (=> b!137015 (= e!79736 e!79737)))

(declare-fun res!64250 () Bool)

(assert (=> b!137015 (= res!64250 (not ((_ is Leaf!1117) (c!29008 v!5223))))))

(assert (=> b!137015 (=> res!64250 e!79737)))

(declare-fun b!137016 () Bool)

(declare-fun inv!2976 (Conc!597) Bool)

(assert (=> b!137016 (= e!79737 (inv!2976 (c!29008 v!5223)))))

(assert (= (and d!32860 c!29026) b!137014))

(assert (= (and d!32860 (not c!29026)) b!137015))

(assert (= (and b!137015 (not res!64250)) b!137016))

(declare-fun m!121413 () Bool)

(assert (=> b!137014 m!121413))

(declare-fun m!121415 () Bool)

(assert (=> b!137016 m!121415))

(assert (=> b!136962 d!32860))

(declare-fun e!79744 () Bool)

(declare-fun b!137025 () Bool)

(declare-fun tp!71350 () Bool)

(declare-fun tp!71349 () Bool)

(assert (=> b!137025 (= e!79744 (and (inv!2972 (left!1760 (c!29008 v!5223))) tp!71349 (inv!2972 (right!2090 (c!29008 v!5223))) tp!71350))))

(declare-fun b!137026 () Bool)

(declare-fun inv!2977 (IArray!1195) Bool)

(assert (=> b!137026 (= e!79744 (inv!2977 (xs!3192 (c!29008 v!5223))))))

(assert (=> b!136962 (= tp!71338 (and (inv!2972 (c!29008 v!5223)) e!79744))))

(assert (= (and b!136962 ((_ is Node!597) (c!29008 v!5223))) b!137025))

(assert (= (and b!136962 ((_ is Leaf!1117) (c!29008 v!5223))) b!137026))

(declare-fun m!121423 () Bool)

(assert (=> b!137025 m!121423))

(declare-fun m!121425 () Bool)

(assert (=> b!137025 m!121425))

(declare-fun m!121427 () Bool)

(assert (=> b!137026 m!121427))

(assert (=> b!136962 m!121379))

(check-sat (not d!32858) (not b!136985) (not b!137016) (not b!137026) (not b!137025) (not b!137014) (not b!136982) (not b!136984) (not d!32854) (not b!136962))
(check-sat)
