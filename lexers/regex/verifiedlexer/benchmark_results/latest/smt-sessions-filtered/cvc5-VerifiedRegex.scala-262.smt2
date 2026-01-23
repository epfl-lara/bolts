; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!4808 () Bool)

(assert start!4808)

(declare-fun b!61258 () Bool)

(declare-fun b_free!1949 () Bool)

(declare-fun b_next!1949 () Bool)

(assert (=> b!61258 (= b_free!1949 (not b_next!1949))))

(declare-fun tp!37330 () Bool)

(declare-fun b_and!2359 () Bool)

(assert (=> b!61258 (= tp!37330 b_and!2359)))

(declare-fun b_free!1951 () Bool)

(declare-fun b_next!1951 () Bool)

(assert (=> b!61258 (= b_free!1951 (not b_next!1951))))

(declare-fun tp!37331 () Bool)

(declare-fun b_and!2361 () Bool)

(assert (=> b!61258 (= tp!37331 b_and!2361)))

(declare-fun b_free!1953 () Bool)

(declare-fun b_next!1953 () Bool)

(assert (=> start!4808 (= b_free!1953 (not b_next!1953))))

(declare-fun tp!37329 () Bool)

(declare-fun b_and!2363 () Bool)

(assert (=> start!4808 (= tp!37329 b_and!2363)))

(declare-fun b!61245 () Bool)

(declare-fun e!35953 () Bool)

(declare-fun e!35950 () Bool)

(declare-fun tp!37334 () Bool)

(assert (=> b!61245 (= e!35953 (and e!35950 tp!37334))))

(declare-fun b!61246 () Bool)

(declare-fun res!36982 () Bool)

(declare-fun e!35954 () Bool)

(assert (=> b!61246 (=> (not res!36982) (not e!35954))))

(declare-datatypes ((LexerInterface!146 0))(
  ( (LexerInterfaceExt!143 (__x!1583 Int)) (Lexer!144) )
))
(declare-fun thiss!11059 () LexerInterface!146)

(declare-datatypes ((List!1180 0))(
  ( (Nil!1174) (Cons!1174 (h!6571 (_ BitVec 16)) (t!18331 List!1180)) )
))
(declare-datatypes ((TokenValue!244 0))(
  ( (FloatLiteralValue!488 (text!2153 List!1180)) (TokenValueExt!243 (__x!1584 Int)) (Broken!1220 (value!10112 List!1180)) (Object!249) (End!244) (Def!244) (Underscore!244) (Match!244) (Else!244) (Error!244) (Case!244) (If!244) (Extends!244) (Abstract!244) (Class!244) (Val!244) (DelimiterValue!488 (del!304 List!1180)) (KeywordValue!250 (value!10113 List!1180)) (CommentValue!488 (value!10114 List!1180)) (WhitespaceValue!488 (value!10115 List!1180)) (IndentationValue!244 (value!10116 List!1180)) (String!1613) (Int32!244) (Broken!1221 (value!10117 List!1180)) (Boolean!245) (Unit!686) (OperatorValue!247 (op!304 List!1180)) (IdentifierValue!488 (value!10118 List!1180)) (IdentifierValue!489 (value!10119 List!1180)) (WhitespaceValue!489 (value!10120 List!1180)) (True!488) (False!488) (Broken!1222 (value!10121 List!1180)) (Broken!1223 (value!10122 List!1180)) (True!489) (RightBrace!244) (RightBracket!244) (Colon!244) (Null!244) (Comma!244) (LeftBracket!244) (False!489) (LeftBrace!244) (ImaginaryLiteralValue!244 (text!2154 List!1180)) (StringLiteralValue!732 (value!10123 List!1180)) (EOFValue!244 (value!10124 List!1180)) (IdentValue!244 (value!10125 List!1180)) (DelimiterValue!489 (value!10126 List!1180)) (DedentValue!244 (value!10127 List!1180)) (NewLineValue!244 (value!10128 List!1180)) (IntegerValue!732 (value!10129 (_ BitVec 32)) (text!2155 List!1180)) (IntegerValue!733 (value!10130 Int) (text!2156 List!1180)) (Times!244) (Or!244) (Equal!244) (Minus!244) (Broken!1224 (value!10131 List!1180)) (And!244) (Div!244) (LessEqual!244) (Mod!244) (Concat!566) (Not!244) (Plus!244) (SpaceValue!244 (value!10132 List!1180)) (IntegerValue!734 (value!10133 Int) (text!2157 List!1180)) (StringLiteralValue!733 (text!2158 List!1180)) (FloatLiteralValue!489 (text!2159 List!1180)) (BytesLiteralValue!244 (value!10134 List!1180)) (CommentValue!489 (value!10135 List!1180)) (StringLiteralValue!734 (value!10136 List!1180)) (ErrorTokenValue!244 (msg!305 List!1180)) )
))
(declare-datatypes ((C!1566 0))(
  ( (C!1567 (val!390 Int)) )
))
(declare-datatypes ((List!1181 0))(
  ( (Nil!1175) (Cons!1175 (h!6572 C!1566) (t!18332 List!1181)) )
))
(declare-datatypes ((IArray!625 0))(
  ( (IArray!626 (innerList!370 List!1181)) )
))
(declare-datatypes ((Conc!312 0))(
  ( (Node!312 (left!896 Conc!312) (right!1226 Conc!312) (csize!854 Int) (cheight!523 Int)) (Leaf!575 (xs!2891 IArray!625) (csize!855 Int)) (Empty!312) )
))
(declare-datatypes ((BalanceConc!628 0))(
  ( (BalanceConc!629 (c!18451 Conc!312)) )
))
(declare-datatypes ((String!1614 0))(
  ( (String!1615 (value!10137 String)) )
))
(declare-datatypes ((Regex!322 0))(
  ( (ElementMatch!322 (c!18452 C!1566)) (Concat!567 (regOne!1156 Regex!322) (regTwo!1156 Regex!322)) (EmptyExpr!322) (Star!322 (reg!651 Regex!322)) (EmptyLang!322) (Union!322 (regOne!1157 Regex!322) (regTwo!1157 Regex!322)) )
))
(declare-datatypes ((TokenValueInjection!312 0))(
  ( (TokenValueInjection!313 (toValue!737 Int) (toChars!596 Int)) )
))
(declare-datatypes ((Rule!308 0))(
  ( (Rule!309 (regex!254 Regex!322) (tag!432 String!1614) (isSeparator!254 Bool) (transformation!254 TokenValueInjection!312)) )
))
(declare-datatypes ((List!1182 0))(
  ( (Nil!1176) (Cons!1176 (h!6573 Rule!308) (t!18333 List!1182)) )
))
(declare-fun rules!1069 () List!1182)

(declare-fun rulesInvariant!140 (LexerInterface!146 List!1182) Bool)

(assert (=> b!61246 (= res!36982 (rulesInvariant!140 thiss!11059 rules!1069))))

(declare-fun b!61247 () Bool)

(declare-fun e!35957 () Bool)

(declare-datatypes ((Token!272 0))(
  ( (Token!273 (value!10138 TokenValue!244) (rule!729 Rule!308) (size!1064 Int) (originalCharacters!307 List!1181)) )
))
(declare-fun lt!12152 () Token!272)

(declare-fun size!1065 (BalanceConc!628) Int)

(declare-fun charsOf!19 (Token!272) BalanceConc!628)

(assert (=> b!61247 (= e!35957 (> (size!1065 (charsOf!19 lt!12152)) 0))))

(declare-fun b!61248 () Bool)

(declare-fun res!36977 () Bool)

(assert (=> b!61248 (=> (not res!36977) (not e!35954))))

(declare-fun isEmpty!256 (List!1182) Bool)

(assert (=> b!61248 (= res!36977 (not (isEmpty!256 rules!1069)))))

(declare-fun b!61249 () Bool)

(declare-fun e!35956 () Bool)

(declare-fun tp!37333 () Bool)

(declare-fun inv!1562 (String!1614) Bool)

(declare-fun inv!1565 (TokenValueInjection!312) Bool)

(assert (=> b!61249 (= e!35950 (and tp!37333 (inv!1562 (tag!432 (h!6573 rules!1069))) (inv!1565 (transformation!254 (h!6573 rules!1069))) e!35956))))

(declare-fun b!61250 () Bool)

(declare-fun res!36972 () Bool)

(assert (=> b!61250 (=> (not res!36972) (not e!35954))))

(declare-datatypes ((List!1183 0))(
  ( (Nil!1177) (Cons!1177 (h!6574 Token!272) (t!18334 List!1183)) )
))
(declare-datatypes ((IArray!627 0))(
  ( (IArray!628 (innerList!371 List!1183)) )
))
(declare-datatypes ((Conc!313 0))(
  ( (Node!313 (left!897 Conc!313) (right!1227 Conc!313) (csize!856 Int) (cheight!524 Int)) (Leaf!576 (xs!2892 IArray!627) (csize!857 Int)) (Empty!313) )
))
(declare-datatypes ((BalanceConc!630 0))(
  ( (BalanceConc!631 (c!18453 Conc!313)) )
))
(declare-fun v!6227 () BalanceConc!630)

(declare-fun rulesProduceEachTokenIndividually!84 (LexerInterface!146 List!1182 BalanceConc!630) Bool)

(assert (=> b!61250 (= res!36972 (rulesProduceEachTokenIndividually!84 thiss!11059 rules!1069 v!6227))))

(declare-fun e!35947 () Bool)

(declare-fun pred!6 () Int)

(declare-fun from!821 () Int)

(declare-fun b!61251 () Bool)

(declare-fun tokensListTwoByTwoPredicate!3 (LexerInterface!146 BalanceConc!630 Int List!1182 Int) Bool)

(assert (=> b!61251 (= e!35947 (tokensListTwoByTwoPredicate!3 thiss!11059 v!6227 (+ 1 from!821) rules!1069 pred!6))))

(declare-fun b!61252 () Bool)

(declare-fun e!35955 () Bool)

(assert (=> b!61252 (= e!35954 (not e!35955))))

(declare-fun res!36978 () Bool)

(assert (=> b!61252 (=> res!36978 e!35955)))

(declare-fun lt!12149 () Token!272)

(declare-fun contains!172 (BalanceConc!630 Token!272) Bool)

(assert (=> b!61252 (= res!36978 (not (contains!172 v!6227 lt!12149)))))

(declare-fun apply!156 (BalanceConc!630 Int) Token!272)

(assert (=> b!61252 (= lt!12149 (apply!156 v!6227 from!821))))

(declare-fun lt!12154 () List!1183)

(declare-fun lt!12144 () List!1183)

(declare-fun tail!89 (List!1183) List!1183)

(declare-fun drop!67 (List!1183 Int) List!1183)

(assert (=> b!61252 (= (tail!89 lt!12154) (drop!67 lt!12144 (+ 2 from!821)))))

(declare-datatypes ((Unit!687 0))(
  ( (Unit!688) )
))
(declare-fun lt!12153 () Unit!687)

(declare-fun lemmaDropTail!57 (List!1183 Int) Unit!687)

(assert (=> b!61252 (= lt!12153 (lemmaDropTail!57 lt!12144 (+ 1 from!821)))))

(declare-fun lt!12148 () List!1183)

(assert (=> b!61252 (= (tail!89 lt!12148) lt!12154)))

(declare-fun lt!12151 () Unit!687)

(assert (=> b!61252 (= lt!12151 (lemmaDropTail!57 lt!12144 from!821))))

(declare-fun head!405 (List!1183) Token!272)

(declare-fun apply!157 (List!1183 Int) Token!272)

(assert (=> b!61252 (= (head!405 lt!12154) (apply!157 lt!12144 (+ 1 from!821)))))

(assert (=> b!61252 (= lt!12154 (drop!67 lt!12144 (+ 1 from!821)))))

(declare-fun lt!12147 () Unit!687)

(declare-fun lemmaDropApply!65 (List!1183 Int) Unit!687)

(assert (=> b!61252 (= lt!12147 (lemmaDropApply!65 lt!12144 (+ 1 from!821)))))

(assert (=> b!61252 (= (head!405 lt!12148) (apply!157 lt!12144 from!821))))

(assert (=> b!61252 (= lt!12148 (drop!67 lt!12144 from!821))))

(declare-fun lt!12143 () Unit!687)

(assert (=> b!61252 (= lt!12143 (lemmaDropApply!65 lt!12144 from!821))))

(declare-fun list!318 (BalanceConc!630) List!1183)

(assert (=> b!61252 (= lt!12144 (list!318 v!6227))))

(declare-fun b!61253 () Bool)

(declare-fun e!35951 () Bool)

(declare-fun tp!37332 () Bool)

(declare-fun inv!1566 (Conc!313) Bool)

(assert (=> b!61253 (= e!35951 (and (inv!1566 (c!18453 v!6227)) tp!37332))))

(declare-fun res!36976 () Bool)

(declare-fun e!35948 () Bool)

(assert (=> start!4808 (=> (not res!36976) (not e!35948))))

(assert (=> start!4808 (= res!36976 (and (is-Lexer!144 thiss!11059) (>= from!821 0)))))

(assert (=> start!4808 e!35948))

(assert (=> start!4808 true))

(assert (=> start!4808 tp!37329))

(declare-fun inv!1567 (BalanceConc!630) Bool)

(assert (=> start!4808 (and (inv!1567 v!6227) e!35951)))

(assert (=> start!4808 e!35953))

(declare-fun b!61254 () Bool)

(declare-fun e!35952 () Bool)

(assert (=> b!61254 (= e!35955 e!35952)))

(declare-fun res!36971 () Bool)

(assert (=> b!61254 (=> res!36971 e!35952)))

(assert (=> b!61254 (= res!36971 (not (contains!172 v!6227 lt!12152)))))

(assert (=> b!61254 (= lt!12152 (apply!156 v!6227 (+ 1 from!821)))))

(declare-fun b!61255 () Bool)

(declare-fun res!36981 () Bool)

(assert (=> b!61255 (=> (not res!36981) (not e!35954))))

(declare-fun lt!12145 () Int)

(assert (=> b!61255 (= res!36981 (< from!821 (- lt!12145 1)))))

(declare-fun b!61256 () Bool)

(declare-fun tokensListTwoByTwoPredicateList!1 (LexerInterface!146 List!1183 List!1182 Int) Bool)

(declare-fun dropList!9 (BalanceConc!630 Int) List!1183)

(assert (=> b!61256 (= e!35952 (= e!35947 (tokensListTwoByTwoPredicateList!1 thiss!11059 (dropList!9 v!6227 from!821) rules!1069 pred!6)))))

(declare-fun res!36974 () Bool)

(assert (=> b!61256 (=> (not res!36974) (not e!35947))))

(declare-fun dynLambda!237 (Int Token!272 Token!272 List!1182) Bool)

(assert (=> b!61256 (= res!36974 (dynLambda!237 pred!6 lt!12149 lt!12152 rules!1069))))

(assert (=> b!61256 e!35957))

(declare-fun res!36980 () Bool)

(assert (=> b!61256 (=> (not res!36980) (not e!35957))))

(declare-fun rulesProduceIndividualToken!43 (LexerInterface!146 List!1182 Token!272) Bool)

(assert (=> b!61256 (= res!36980 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12152))))

(declare-fun lt!12150 () Unit!687)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 (LexerInterface!146 List!1182 List!1183 Token!272) Unit!687)

(assert (=> b!61256 (= lt!12150 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12144 lt!12152))))

(assert (=> b!61256 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12149)))

(declare-fun lt!12146 () Unit!687)

(assert (=> b!61256 (= lt!12146 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12144 lt!12149))))

(declare-fun b!61257 () Bool)

(declare-fun res!36975 () Bool)

(assert (=> b!61257 (=> res!36975 e!35952)))

(declare-fun contains!173 (List!1183 Token!272) Bool)

(assert (=> b!61257 (= res!36975 (not (contains!173 lt!12144 lt!12152)))))

(assert (=> b!61258 (= e!35956 (and tp!37330 tp!37331))))

(declare-fun b!61259 () Bool)

(declare-fun res!36979 () Bool)

(assert (=> b!61259 (=> res!36979 e!35955)))

(assert (=> b!61259 (= res!36979 (not (contains!173 lt!12144 lt!12149)))))

(declare-fun b!61260 () Bool)

(assert (=> b!61260 (= e!35948 e!35954)))

(declare-fun res!36973 () Bool)

(assert (=> b!61260 (=> (not res!36973) (not e!35954))))

(assert (=> b!61260 (= res!36973 (<= from!821 lt!12145))))

(declare-fun size!1066 (BalanceConc!630) Int)

(assert (=> b!61260 (= lt!12145 (size!1066 v!6227))))

(assert (= (and start!4808 res!36976) b!61260))

(assert (= (and b!61260 res!36973) b!61248))

(assert (= (and b!61248 res!36977) b!61246))

(assert (= (and b!61246 res!36982) b!61250))

(assert (= (and b!61250 res!36972) b!61255))

(assert (= (and b!61255 res!36981) b!61252))

(assert (= (and b!61252 (not res!36978)) b!61259))

(assert (= (and b!61259 (not res!36979)) b!61254))

(assert (= (and b!61254 (not res!36971)) b!61257))

(assert (= (and b!61257 (not res!36975)) b!61256))

(assert (= (and b!61256 res!36980) b!61247))

(assert (= (and b!61256 res!36974) b!61251))

(assert (= start!4808 b!61253))

(assert (= b!61249 b!61258))

(assert (= b!61245 b!61249))

(assert (= (and start!4808 (is-Cons!1176 rules!1069)) b!61245))

(declare-fun b_lambda!465 () Bool)

(assert (=> (not b_lambda!465) (not b!61256)))

(declare-fun t!18330 () Bool)

(declare-fun tb!847 () Bool)

(assert (=> (and start!4808 (= pred!6 pred!6) t!18330) tb!847))

(declare-fun result!1732 () Bool)

(assert (=> tb!847 (= result!1732 true)))

(assert (=> b!61256 t!18330))

(declare-fun b_and!2365 () Bool)

(assert (= b_and!2363 (and (=> t!18330 result!1732) b_and!2365)))

(declare-fun m!38434 () Bool)

(assert (=> b!61257 m!38434))

(declare-fun m!38436 () Bool)

(assert (=> b!61246 m!38436))

(declare-fun m!38438 () Bool)

(assert (=> b!61253 m!38438))

(declare-fun m!38440 () Bool)

(assert (=> b!61254 m!38440))

(declare-fun m!38442 () Bool)

(assert (=> b!61254 m!38442))

(declare-fun m!38444 () Bool)

(assert (=> b!61259 m!38444))

(declare-fun m!38446 () Bool)

(assert (=> b!61251 m!38446))

(declare-fun m!38448 () Bool)

(assert (=> b!61260 m!38448))

(declare-fun m!38450 () Bool)

(assert (=> b!61248 m!38450))

(declare-fun m!38452 () Bool)

(assert (=> b!61256 m!38452))

(declare-fun m!38454 () Bool)

(assert (=> b!61256 m!38454))

(assert (=> b!61256 m!38454))

(declare-fun m!38456 () Bool)

(assert (=> b!61256 m!38456))

(declare-fun m!38458 () Bool)

(assert (=> b!61256 m!38458))

(declare-fun m!38460 () Bool)

(assert (=> b!61256 m!38460))

(declare-fun m!38462 () Bool)

(assert (=> b!61256 m!38462))

(declare-fun m!38464 () Bool)

(assert (=> b!61256 m!38464))

(declare-fun m!38466 () Bool)

(assert (=> b!61250 m!38466))

(declare-fun m!38468 () Bool)

(assert (=> start!4808 m!38468))

(declare-fun m!38470 () Bool)

(assert (=> b!61247 m!38470))

(assert (=> b!61247 m!38470))

(declare-fun m!38472 () Bool)

(assert (=> b!61247 m!38472))

(declare-fun m!38474 () Bool)

(assert (=> b!61249 m!38474))

(declare-fun m!38476 () Bool)

(assert (=> b!61249 m!38476))

(declare-fun m!38478 () Bool)

(assert (=> b!61252 m!38478))

(declare-fun m!38480 () Bool)

(assert (=> b!61252 m!38480))

(declare-fun m!38482 () Bool)

(assert (=> b!61252 m!38482))

(declare-fun m!38484 () Bool)

(assert (=> b!61252 m!38484))

(declare-fun m!38486 () Bool)

(assert (=> b!61252 m!38486))

(declare-fun m!38488 () Bool)

(assert (=> b!61252 m!38488))

(declare-fun m!38490 () Bool)

(assert (=> b!61252 m!38490))

(declare-fun m!38492 () Bool)

(assert (=> b!61252 m!38492))

(declare-fun m!38494 () Bool)

(assert (=> b!61252 m!38494))

(declare-fun m!38496 () Bool)

(assert (=> b!61252 m!38496))

(declare-fun m!38498 () Bool)

(assert (=> b!61252 m!38498))

(declare-fun m!38500 () Bool)

(assert (=> b!61252 m!38500))

(declare-fun m!38502 () Bool)

(assert (=> b!61252 m!38502))

(declare-fun m!38504 () Bool)

(assert (=> b!61252 m!38504))

(declare-fun m!38506 () Bool)

(assert (=> b!61252 m!38506))

(declare-fun m!38508 () Bool)

(assert (=> b!61252 m!38508))

(push 1)

(assert (not b!61260))

(assert (not b_next!1949))

(assert (not b!61249))

(assert (not b!61245))

(assert b_and!2365)

(assert (not b!61247))

(assert b_and!2359)

(assert (not b!61254))

(assert (not b!61250))

(assert (not b!61252))

(assert (not b!61251))

(assert (not b!61248))

(assert (not b_next!1951))

(assert (not b_next!1953))

(assert (not b!61253))

(assert (not start!4808))

(assert (not b!61259))

(assert (not b!61246))

(assert (not b_lambda!465))

(assert (not b!61256))

(assert (not b!61257))

(assert b_and!2361)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1949))

(assert b_and!2365)

(assert b_and!2361)

(assert b_and!2359)

(assert (not b_next!1951))

(assert (not b_next!1953))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!469 () Bool)

(assert (= b_lambda!465 (or (and start!4808 b_free!1953) b_lambda!469)))

(push 1)

(assert (not b!61260))

(assert (not b_next!1949))

(assert (not b!61249))

(assert (not b!61245))

(assert b_and!2365)

(assert (not b!61247))

(assert (not b!61256))

(assert b_and!2359)

(assert (not b!61254))

(assert (not b!61250))

(assert (not b!61252))

(assert (not b!61251))

(assert (not b!61248))

(assert (not b_next!1951))

(assert (not b_next!1953))

(assert (not b!61253))

(assert (not start!4808))

(assert (not b!61259))

(assert (not b!61246))

(assert (not b!61257))

(assert b_and!2361)

(assert (not b_lambda!469))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1949))

(assert b_and!2365)

(assert b_and!2361)

(assert b_and!2359)

(assert (not b_next!1951))

(assert (not b_next!1953))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10175 () Bool)

(declare-fun lt!12193 () Int)

(declare-fun size!1070 (List!1181) Int)

(declare-fun list!320 (BalanceConc!628) List!1181)

(assert (=> d!10175 (= lt!12193 (size!1070 (list!320 (charsOf!19 lt!12152))))))

(declare-fun size!1071 (Conc!312) Int)

(assert (=> d!10175 (= lt!12193 (size!1071 (c!18451 (charsOf!19 lt!12152))))))

(assert (=> d!10175 (= (size!1065 (charsOf!19 lt!12152)) lt!12193)))

(declare-fun bs!7203 () Bool)

(assert (= bs!7203 d!10175))

(assert (=> bs!7203 m!38470))

(declare-fun m!38586 () Bool)

(assert (=> bs!7203 m!38586))

(assert (=> bs!7203 m!38586))

(declare-fun m!38588 () Bool)

(assert (=> bs!7203 m!38588))

(declare-fun m!38590 () Bool)

(assert (=> bs!7203 m!38590))

(assert (=> b!61247 d!10175))

(declare-fun d!10177 () Bool)

(declare-fun lt!12196 () BalanceConc!628)

(assert (=> d!10177 (= (list!320 lt!12196) (originalCharacters!307 lt!12152))))

(declare-fun dynLambda!239 (Int TokenValue!244) BalanceConc!628)

(assert (=> d!10177 (= lt!12196 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152)))))

(assert (=> d!10177 (= (charsOf!19 lt!12152) lt!12196)))

(declare-fun b_lambda!473 () Bool)

(assert (=> (not b_lambda!473) (not d!10177)))

(declare-fun t!18342 () Bool)

(declare-fun tb!851 () Bool)

(assert (=> (and b!61258 (= (toChars!596 (transformation!254 (h!6573 rules!1069))) (toChars!596 (transformation!254 (rule!729 lt!12152)))) t!18342) tb!851))

(declare-fun b!61313 () Bool)

(declare-fun e!35993 () Bool)

(declare-fun tp!37355 () Bool)

(declare-fun inv!1571 (Conc!312) Bool)

(assert (=> b!61313 (= e!35993 (and (inv!1571 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152)))) tp!37355))))

(declare-fun result!1736 () Bool)

(declare-fun inv!1572 (BalanceConc!628) Bool)

(assert (=> tb!851 (= result!1736 (and (inv!1572 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152))) e!35993))))

(assert (= tb!851 b!61313))

(declare-fun m!38592 () Bool)

(assert (=> b!61313 m!38592))

(declare-fun m!38594 () Bool)

(assert (=> tb!851 m!38594))

(assert (=> d!10177 t!18342))

(declare-fun b_and!2375 () Bool)

(assert (= b_and!2361 (and (=> t!18342 result!1736) b_and!2375)))

(declare-fun m!38596 () Bool)

(assert (=> d!10177 m!38596))

(declare-fun m!38598 () Bool)

(assert (=> d!10177 m!38598))

(assert (=> b!61247 d!10177))

(declare-fun d!10179 () Bool)

(declare-fun res!37029 () Bool)

(declare-fun e!35996 () Bool)

(assert (=> d!10179 (=> (not res!37029) (not e!35996))))

(declare-fun rulesValid!42 (LexerInterface!146 List!1182) Bool)

(assert (=> d!10179 (= res!37029 (rulesValid!42 thiss!11059 rules!1069))))

(assert (=> d!10179 (= (rulesInvariant!140 thiss!11059 rules!1069) e!35996)))

(declare-fun b!61316 () Bool)

(declare-datatypes ((List!1188 0))(
  ( (Nil!1182) (Cons!1182 (h!6579 String!1614) (t!18365 List!1188)) )
))
(declare-fun noDuplicateTag!42 (LexerInterface!146 List!1182 List!1188) Bool)

(assert (=> b!61316 (= e!35996 (noDuplicateTag!42 thiss!11059 rules!1069 Nil!1182))))

(assert (= (and d!10179 res!37029) b!61316))

(declare-fun m!38600 () Bool)

(assert (=> d!10179 m!38600))

(declare-fun m!38602 () Bool)

(assert (=> b!61316 m!38602))

(assert (=> b!61246 d!10179))

(declare-fun d!10181 () Bool)

(declare-fun lt!12199 () Bool)

(declare-fun content!46 (List!1183) (Set Token!272))

(assert (=> d!10181 (= lt!12199 (set.member lt!12152 (content!46 lt!12144)))))

(declare-fun e!36002 () Bool)

(assert (=> d!10181 (= lt!12199 e!36002)))

(declare-fun res!37035 () Bool)

(assert (=> d!10181 (=> (not res!37035) (not e!36002))))

(assert (=> d!10181 (= res!37035 (is-Cons!1177 lt!12144))))

(assert (=> d!10181 (= (contains!173 lt!12144 lt!12152) lt!12199)))

(declare-fun b!61321 () Bool)

(declare-fun e!36001 () Bool)

(assert (=> b!61321 (= e!36002 e!36001)))

(declare-fun res!37034 () Bool)

(assert (=> b!61321 (=> res!37034 e!36001)))

(assert (=> b!61321 (= res!37034 (= (h!6574 lt!12144) lt!12152))))

(declare-fun b!61322 () Bool)

(assert (=> b!61322 (= e!36001 (contains!173 (t!18334 lt!12144) lt!12152))))

(assert (= (and d!10181 res!37035) b!61321))

(assert (= (and b!61321 (not res!37034)) b!61322))

(declare-fun m!38604 () Bool)

(assert (=> d!10181 m!38604))

(declare-fun m!38606 () Bool)

(assert (=> d!10181 m!38606))

(declare-fun m!38608 () Bool)

(assert (=> b!61322 m!38608))

(assert (=> b!61257 d!10181))

(declare-fun d!10183 () Bool)

(declare-fun res!37040 () Bool)

(declare-fun e!36007 () Bool)

(assert (=> d!10183 (=> res!37040 e!36007)))

(assert (=> d!10183 (= res!37040 (or (not (is-Cons!1177 (dropList!9 v!6227 from!821))) (not (is-Cons!1177 (t!18334 (dropList!9 v!6227 from!821))))))))

(assert (=> d!10183 (= (tokensListTwoByTwoPredicateList!1 thiss!11059 (dropList!9 v!6227 from!821) rules!1069 pred!6) e!36007)))

(declare-fun b!61327 () Bool)

(declare-fun e!36008 () Bool)

(assert (=> b!61327 (= e!36007 e!36008)))

(declare-fun res!37041 () Bool)

(assert (=> b!61327 (=> (not res!37041) (not e!36008))))

(assert (=> b!61327 (= res!37041 (dynLambda!237 pred!6 (h!6574 (dropList!9 v!6227 from!821)) (h!6574 (t!18334 (dropList!9 v!6227 from!821))) rules!1069))))

(declare-fun b!61328 () Bool)

(assert (=> b!61328 (= e!36008 (tokensListTwoByTwoPredicateList!1 thiss!11059 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 from!821))) (t!18334 (t!18334 (dropList!9 v!6227 from!821)))) rules!1069 pred!6))))

(assert (= (and d!10183 (not res!37040)) b!61327))

(assert (= (and b!61327 res!37041) b!61328))

(declare-fun b_lambda!475 () Bool)

(assert (=> (not b_lambda!475) (not b!61327)))

(declare-fun t!18344 () Bool)

(declare-fun tb!853 () Bool)

(assert (=> (and start!4808 (= pred!6 pred!6) t!18344) tb!853))

(declare-fun result!1740 () Bool)

(assert (=> tb!853 (= result!1740 true)))

(assert (=> b!61327 t!18344))

(declare-fun b_and!2377 () Bool)

(assert (= b_and!2365 (and (=> t!18344 result!1740) b_and!2377)))

(declare-fun m!38610 () Bool)

(assert (=> b!61327 m!38610))

(declare-fun m!38612 () Bool)

(assert (=> b!61328 m!38612))

(assert (=> b!61256 d!10183))

(declare-fun d!10185 () Bool)

(assert (=> d!10185 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12149)))

(declare-fun lt!12202 () Unit!687)

(declare-fun choose!1237 (LexerInterface!146 List!1182 List!1183 Token!272) Unit!687)

(assert (=> d!10185 (= lt!12202 (choose!1237 thiss!11059 rules!1069 lt!12144 lt!12149))))

(assert (=> d!10185 (not (isEmpty!256 rules!1069))))

(assert (=> d!10185 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12144 lt!12149) lt!12202)))

(declare-fun bs!7204 () Bool)

(assert (= bs!7204 d!10185))

(assert (=> bs!7204 m!38460))

(declare-fun m!38614 () Bool)

(assert (=> bs!7204 m!38614))

(assert (=> bs!7204 m!38450))

(assert (=> b!61256 d!10185))

(declare-fun d!10189 () Bool)

(declare-fun list!321 (Conc!313) List!1183)

(assert (=> d!10189 (= (dropList!9 v!6227 from!821) (drop!67 (list!321 (c!18453 v!6227)) from!821))))

(declare-fun bs!7205 () Bool)

(assert (= bs!7205 d!10189))

(declare-fun m!38616 () Bool)

(assert (=> bs!7205 m!38616))

(assert (=> bs!7205 m!38616))

(declare-fun m!38618 () Bool)

(assert (=> bs!7205 m!38618))

(assert (=> b!61256 d!10189))

(declare-fun d!10191 () Bool)

(declare-fun lt!12208 () Bool)

(declare-fun e!36013 () Bool)

(assert (=> d!10191 (= lt!12208 e!36013)))

(declare-fun res!37050 () Bool)

(assert (=> d!10191 (=> (not res!37050) (not e!36013))))

(declare-datatypes ((tuple2!1148 0))(
  ( (tuple2!1149 (_1!781 BalanceConc!630) (_2!781 BalanceConc!628)) )
))
(declare-fun lex!56 (LexerInterface!146 List!1182 BalanceConc!628) tuple2!1148)

(declare-fun print!11 (LexerInterface!146 BalanceConc!630) BalanceConc!628)

(declare-fun singletonSeq!6 (Token!272) BalanceConc!630)

(assert (=> d!10191 (= res!37050 (= (list!318 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149))))) (list!318 (singletonSeq!6 lt!12149))))))

(declare-fun e!36014 () Bool)

(assert (=> d!10191 (= lt!12208 e!36014)))

(declare-fun res!37052 () Bool)

(assert (=> d!10191 (=> (not res!37052) (not e!36014))))

(declare-fun lt!12207 () tuple2!1148)

(assert (=> d!10191 (= res!37052 (= (size!1066 (_1!781 lt!12207)) 1))))

(assert (=> d!10191 (= lt!12207 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149))))))

(assert (=> d!10191 (not (isEmpty!256 rules!1069))))

(assert (=> d!10191 (= (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12149) lt!12208)))

(declare-fun b!61335 () Bool)

(declare-fun res!37051 () Bool)

(assert (=> b!61335 (=> (not res!37051) (not e!36014))))

(assert (=> b!61335 (= res!37051 (= (apply!156 (_1!781 lt!12207) 0) lt!12149))))

(declare-fun b!61336 () Bool)

(declare-fun isEmpty!258 (BalanceConc!628) Bool)

(assert (=> b!61336 (= e!36014 (isEmpty!258 (_2!781 lt!12207)))))

(declare-fun b!61337 () Bool)

(assert (=> b!61337 (= e!36013 (isEmpty!258 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149))))))))

(assert (= (and d!10191 res!37052) b!61335))

(assert (= (and b!61335 res!37051) b!61336))

(assert (= (and d!10191 res!37050) b!61337))

(declare-fun m!38620 () Bool)

(assert (=> d!10191 m!38620))

(declare-fun m!38622 () Bool)

(assert (=> d!10191 m!38622))

(declare-fun m!38624 () Bool)

(assert (=> d!10191 m!38624))

(assert (=> d!10191 m!38622))

(declare-fun m!38626 () Bool)

(assert (=> d!10191 m!38626))

(assert (=> d!10191 m!38622))

(assert (=> d!10191 m!38450))

(declare-fun m!38628 () Bool)

(assert (=> d!10191 m!38628))

(assert (=> d!10191 m!38626))

(declare-fun m!38630 () Bool)

(assert (=> d!10191 m!38630))

(declare-fun m!38632 () Bool)

(assert (=> b!61335 m!38632))

(declare-fun m!38634 () Bool)

(assert (=> b!61336 m!38634))

(assert (=> b!61337 m!38622))

(assert (=> b!61337 m!38622))

(assert (=> b!61337 m!38626))

(assert (=> b!61337 m!38626))

(assert (=> b!61337 m!38630))

(declare-fun m!38636 () Bool)

(assert (=> b!61337 m!38636))

(assert (=> b!61256 d!10191))

(declare-fun d!10193 () Bool)

(declare-fun lt!12210 () Bool)

(declare-fun e!36015 () Bool)

(assert (=> d!10193 (= lt!12210 e!36015)))

(declare-fun res!37053 () Bool)

(assert (=> d!10193 (=> (not res!37053) (not e!36015))))

(assert (=> d!10193 (= res!37053 (= (list!318 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152))))) (list!318 (singletonSeq!6 lt!12152))))))

(declare-fun e!36016 () Bool)

(assert (=> d!10193 (= lt!12210 e!36016)))

(declare-fun res!37055 () Bool)

(assert (=> d!10193 (=> (not res!37055) (not e!36016))))

(declare-fun lt!12209 () tuple2!1148)

(assert (=> d!10193 (= res!37055 (= (size!1066 (_1!781 lt!12209)) 1))))

(assert (=> d!10193 (= lt!12209 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152))))))

(assert (=> d!10193 (not (isEmpty!256 rules!1069))))

(assert (=> d!10193 (= (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12152) lt!12210)))

(declare-fun b!61338 () Bool)

(declare-fun res!37054 () Bool)

(assert (=> b!61338 (=> (not res!37054) (not e!36016))))

(assert (=> b!61338 (= res!37054 (= (apply!156 (_1!781 lt!12209) 0) lt!12152))))

(declare-fun b!61339 () Bool)

(assert (=> b!61339 (= e!36016 (isEmpty!258 (_2!781 lt!12209)))))

(declare-fun b!61340 () Bool)

(assert (=> b!61340 (= e!36015 (isEmpty!258 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152))))))))

(assert (= (and d!10193 res!37055) b!61338))

(assert (= (and b!61338 res!37054) b!61339))

(assert (= (and d!10193 res!37053) b!61340))

(declare-fun m!38638 () Bool)

(assert (=> d!10193 m!38638))

(declare-fun m!38640 () Bool)

(assert (=> d!10193 m!38640))

(declare-fun m!38642 () Bool)

(assert (=> d!10193 m!38642))

(assert (=> d!10193 m!38640))

(declare-fun m!38644 () Bool)

(assert (=> d!10193 m!38644))

(assert (=> d!10193 m!38640))

(assert (=> d!10193 m!38450))

(declare-fun m!38646 () Bool)

(assert (=> d!10193 m!38646))

(assert (=> d!10193 m!38644))

(declare-fun m!38648 () Bool)

(assert (=> d!10193 m!38648))

(declare-fun m!38650 () Bool)

(assert (=> b!61338 m!38650))

(declare-fun m!38652 () Bool)

(assert (=> b!61339 m!38652))

(assert (=> b!61340 m!38640))

(assert (=> b!61340 m!38640))

(assert (=> b!61340 m!38644))

(assert (=> b!61340 m!38644))

(assert (=> b!61340 m!38648))

(declare-fun m!38654 () Bool)

(assert (=> b!61340 m!38654))

(assert (=> b!61256 d!10193))

(declare-fun d!10195 () Bool)

(assert (=> d!10195 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12152)))

(declare-fun lt!12211 () Unit!687)

(assert (=> d!10195 (= lt!12211 (choose!1237 thiss!11059 rules!1069 lt!12144 lt!12152))))

(assert (=> d!10195 (not (isEmpty!256 rules!1069))))

(assert (=> d!10195 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12144 lt!12152) lt!12211)))

(declare-fun bs!7206 () Bool)

(assert (= bs!7206 d!10195))

(assert (=> bs!7206 m!38452))

(declare-fun m!38656 () Bool)

(assert (=> bs!7206 m!38656))

(assert (=> bs!7206 m!38450))

(assert (=> b!61256 d!10195))

(declare-fun d!10197 () Bool)

(declare-fun lt!12214 () Bool)

(assert (=> d!10197 (= lt!12214 (contains!173 (list!318 v!6227) lt!12152))))

(declare-fun contains!176 (Conc!313 Token!272) Bool)

(assert (=> d!10197 (= lt!12214 (contains!176 (c!18453 v!6227) lt!12152))))

(assert (=> d!10197 (= (contains!172 v!6227 lt!12152) lt!12214)))

(declare-fun bs!7207 () Bool)

(assert (= bs!7207 d!10197))

(assert (=> bs!7207 m!38478))

(assert (=> bs!7207 m!38478))

(declare-fun m!38658 () Bool)

(assert (=> bs!7207 m!38658))

(declare-fun m!38660 () Bool)

(assert (=> bs!7207 m!38660))

(assert (=> b!61254 d!10197))

(declare-fun d!10199 () Bool)

(declare-fun lt!12217 () Token!272)

(assert (=> d!10199 (= lt!12217 (apply!157 (list!318 v!6227) (+ 1 from!821)))))

(declare-fun apply!160 (Conc!313 Int) Token!272)

(assert (=> d!10199 (= lt!12217 (apply!160 (c!18453 v!6227) (+ 1 from!821)))))

(declare-fun e!36019 () Bool)

(assert (=> d!10199 e!36019))

(declare-fun res!37058 () Bool)

(assert (=> d!10199 (=> (not res!37058) (not e!36019))))

(assert (=> d!10199 (= res!37058 (<= 0 (+ 1 from!821)))))

(assert (=> d!10199 (= (apply!156 v!6227 (+ 1 from!821)) lt!12217)))

(declare-fun b!61343 () Bool)

(assert (=> b!61343 (= e!36019 (< (+ 1 from!821) (size!1066 v!6227)))))

(assert (= (and d!10199 res!37058) b!61343))

(assert (=> d!10199 m!38478))

(assert (=> d!10199 m!38478))

(declare-fun m!38662 () Bool)

(assert (=> d!10199 m!38662))

(declare-fun m!38664 () Bool)

(assert (=> d!10199 m!38664))

(assert (=> b!61343 m!38448))

(assert (=> b!61254 d!10199))

(declare-fun d!10201 () Bool)

(declare-fun c!18459 () Bool)

(assert (=> d!10201 (= c!18459 (is-Node!313 (c!18453 v!6227)))))

(declare-fun e!36024 () Bool)

(assert (=> d!10201 (= (inv!1566 (c!18453 v!6227)) e!36024)))

(declare-fun b!61350 () Bool)

(declare-fun inv!1573 (Conc!313) Bool)

(assert (=> b!61350 (= e!36024 (inv!1573 (c!18453 v!6227)))))

(declare-fun b!61351 () Bool)

(declare-fun e!36025 () Bool)

(assert (=> b!61351 (= e!36024 e!36025)))

(declare-fun res!37061 () Bool)

(assert (=> b!61351 (= res!37061 (not (is-Leaf!576 (c!18453 v!6227))))))

(assert (=> b!61351 (=> res!37061 e!36025)))

(declare-fun b!61352 () Bool)

(declare-fun inv!1574 (Conc!313) Bool)

(assert (=> b!61352 (= e!36025 (inv!1574 (c!18453 v!6227)))))

(assert (= (and d!10201 c!18459) b!61350))

(assert (= (and d!10201 (not c!18459)) b!61351))

(assert (= (and b!61351 (not res!37061)) b!61352))

(declare-fun m!38666 () Bool)

(assert (=> b!61350 m!38666))

(declare-fun m!38668 () Bool)

(assert (=> b!61352 m!38668))

(assert (=> b!61253 d!10201))

(declare-fun b!61371 () Bool)

(declare-fun e!36038 () Int)

(declare-fun call!3545 () Int)

(assert (=> b!61371 (= e!36038 (- call!3545 from!821))))

(declare-fun b!61372 () Bool)

(declare-fun e!36040 () List!1183)

(assert (=> b!61372 (= e!36040 (drop!67 (t!18334 lt!12144) (- from!821 1)))))

(declare-fun b!61373 () Bool)

(assert (=> b!61373 (= e!36038 0)))

(declare-fun b!61374 () Bool)

(declare-fun e!36036 () Int)

(assert (=> b!61374 (= e!36036 call!3545)))

(declare-fun b!61375 () Bool)

(declare-fun e!36039 () List!1183)

(assert (=> b!61375 (= e!36039 Nil!1177)))

(declare-fun d!10203 () Bool)

(declare-fun e!36037 () Bool)

(assert (=> d!10203 e!36037))

(declare-fun res!37064 () Bool)

(assert (=> d!10203 (=> (not res!37064) (not e!36037))))

(declare-fun lt!12220 () List!1183)

(assert (=> d!10203 (= res!37064 (set.subset (content!46 lt!12220) (content!46 lt!12144)))))

(assert (=> d!10203 (= lt!12220 e!36039)))

(declare-fun c!18471 () Bool)

(assert (=> d!10203 (= c!18471 (is-Nil!1177 lt!12144))))

(assert (=> d!10203 (= (drop!67 lt!12144 from!821) lt!12220)))

(declare-fun b!61376 () Bool)

(assert (=> b!61376 (= e!36040 lt!12144)))

(declare-fun b!61377 () Bool)

(assert (=> b!61377 (= e!36039 e!36040)))

(declare-fun c!18469 () Bool)

(assert (=> b!61377 (= c!18469 (<= from!821 0))))

(declare-fun bm!3540 () Bool)

(declare-fun size!1072 (List!1183) Int)

(assert (=> bm!3540 (= call!3545 (size!1072 lt!12144))))

(declare-fun b!61378 () Bool)

(assert (=> b!61378 (= e!36036 e!36038)))

(declare-fun c!18470 () Bool)

(assert (=> b!61378 (= c!18470 (>= from!821 call!3545))))

(declare-fun b!61379 () Bool)

(assert (=> b!61379 (= e!36037 (= (size!1072 lt!12220) e!36036))))

(declare-fun c!18468 () Bool)

(assert (=> b!61379 (= c!18468 (<= from!821 0))))

(assert (= (and d!10203 c!18471) b!61375))

(assert (= (and d!10203 (not c!18471)) b!61377))

(assert (= (and b!61377 c!18469) b!61376))

(assert (= (and b!61377 (not c!18469)) b!61372))

(assert (= (and d!10203 res!37064) b!61379))

(assert (= (and b!61379 c!18468) b!61374))

(assert (= (and b!61379 (not c!18468)) b!61378))

(assert (= (and b!61378 c!18470) b!61373))

(assert (= (and b!61378 (not c!18470)) b!61371))

(assert (= (or b!61374 b!61378 b!61371) bm!3540))

(declare-fun m!38670 () Bool)

(assert (=> b!61372 m!38670))

(declare-fun m!38672 () Bool)

(assert (=> d!10203 m!38672))

(assert (=> d!10203 m!38604))

(declare-fun m!38674 () Bool)

(assert (=> bm!3540 m!38674))

(declare-fun m!38676 () Bool)

(assert (=> b!61379 m!38676))

(assert (=> b!61252 d!10203))

(declare-fun d!10205 () Bool)

(declare-fun lt!12221 () Token!272)

(assert (=> d!10205 (= lt!12221 (apply!157 (list!318 v!6227) from!821))))

(assert (=> d!10205 (= lt!12221 (apply!160 (c!18453 v!6227) from!821))))

(declare-fun e!36041 () Bool)

(assert (=> d!10205 e!36041))

(declare-fun res!37065 () Bool)

(assert (=> d!10205 (=> (not res!37065) (not e!36041))))

(assert (=> d!10205 (= res!37065 (<= 0 from!821))))

(assert (=> d!10205 (= (apply!156 v!6227 from!821) lt!12221)))

(declare-fun b!61380 () Bool)

(assert (=> b!61380 (= e!36041 (< from!821 (size!1066 v!6227)))))

(assert (= (and d!10205 res!37065) b!61380))

(assert (=> d!10205 m!38478))

(assert (=> d!10205 m!38478))

(declare-fun m!38678 () Bool)

(assert (=> d!10205 m!38678))

(declare-fun m!38680 () Bool)

(assert (=> d!10205 m!38680))

(assert (=> b!61380 m!38448))

(assert (=> b!61252 d!10205))

(declare-fun d!10207 () Bool)

(assert (=> d!10207 (= (list!318 v!6227) (list!321 (c!18453 v!6227)))))

(declare-fun bs!7208 () Bool)

(assert (= bs!7208 d!10207))

(assert (=> bs!7208 m!38616))

(assert (=> b!61252 d!10207))

(declare-fun d!10209 () Bool)

(assert (=> d!10209 (= (tail!89 lt!12154) (t!18334 lt!12154))))

(assert (=> b!61252 d!10209))

(declare-fun d!10211 () Bool)

(assert (=> d!10211 (= (tail!89 lt!12148) (t!18334 lt!12148))))

(assert (=> b!61252 d!10211))

(declare-fun d!10213 () Bool)

(assert (=> d!10213 (= (tail!89 (drop!67 lt!12144 from!821)) (drop!67 lt!12144 (+ from!821 1)))))

(declare-fun lt!12276 () Unit!687)

(declare-fun choose!1238 (List!1183 Int) Unit!687)

(assert (=> d!10213 (= lt!12276 (choose!1238 lt!12144 from!821))))

(declare-fun e!36050 () Bool)

(assert (=> d!10213 e!36050))

(declare-fun res!37074 () Bool)

(assert (=> d!10213 (=> (not res!37074) (not e!36050))))

(assert (=> d!10213 (= res!37074 (>= from!821 0))))

(assert (=> d!10213 (= (lemmaDropTail!57 lt!12144 from!821) lt!12276)))

(declare-fun b!61389 () Bool)

(assert (=> b!61389 (= e!36050 (< from!821 (size!1072 lt!12144)))))

(assert (= (and d!10213 res!37074) b!61389))

(assert (=> d!10213 m!38498))

(assert (=> d!10213 m!38498))

(declare-fun m!38682 () Bool)

(assert (=> d!10213 m!38682))

(declare-fun m!38684 () Bool)

(assert (=> d!10213 m!38684))

(declare-fun m!38686 () Bool)

(assert (=> d!10213 m!38686))

(assert (=> b!61389 m!38674))

(assert (=> b!61252 d!10213))

(declare-fun d!10215 () Bool)

(assert (=> d!10215 (= (head!405 lt!12154) (h!6574 lt!12154))))

(assert (=> b!61252 d!10215))

(declare-fun d!10217 () Bool)

(assert (=> d!10217 (= (head!405 (drop!67 lt!12144 (+ 1 from!821))) (apply!157 lt!12144 (+ 1 from!821)))))

(declare-fun lt!12279 () Unit!687)

(declare-fun choose!1239 (List!1183 Int) Unit!687)

(assert (=> d!10217 (= lt!12279 (choose!1239 lt!12144 (+ 1 from!821)))))

(declare-fun e!36053 () Bool)

(assert (=> d!10217 e!36053))

(declare-fun res!37077 () Bool)

(assert (=> d!10217 (=> (not res!37077) (not e!36053))))

(assert (=> d!10217 (= res!37077 (>= (+ 1 from!821) 0))))

(assert (=> d!10217 (= (lemmaDropApply!65 lt!12144 (+ 1 from!821)) lt!12279)))

(declare-fun b!61392 () Bool)

(assert (=> b!61392 (= e!36053 (< (+ 1 from!821) (size!1072 lt!12144)))))

(assert (= (and d!10217 res!37077) b!61392))

(assert (=> d!10217 m!38490))

(assert (=> d!10217 m!38490))

(declare-fun m!38688 () Bool)

(assert (=> d!10217 m!38688))

(assert (=> d!10217 m!38484))

(declare-fun m!38690 () Bool)

(assert (=> d!10217 m!38690))

(assert (=> b!61392 m!38674))

(assert (=> b!61252 d!10217))

(declare-fun b!61393 () Bool)

(declare-fun e!36056 () Int)

(declare-fun call!3546 () Int)

(assert (=> b!61393 (= e!36056 (- call!3546 (+ 1 from!821)))))

(declare-fun b!61394 () Bool)

(declare-fun e!36058 () List!1183)

(assert (=> b!61394 (= e!36058 (drop!67 (t!18334 lt!12144) (- (+ 1 from!821) 1)))))

(declare-fun b!61395 () Bool)

(assert (=> b!61395 (= e!36056 0)))

(declare-fun b!61396 () Bool)

(declare-fun e!36054 () Int)

(assert (=> b!61396 (= e!36054 call!3546)))

(declare-fun b!61397 () Bool)

(declare-fun e!36057 () List!1183)

(assert (=> b!61397 (= e!36057 Nil!1177)))

(declare-fun d!10219 () Bool)

(declare-fun e!36055 () Bool)

(assert (=> d!10219 e!36055))

(declare-fun res!37078 () Bool)

(assert (=> d!10219 (=> (not res!37078) (not e!36055))))

(declare-fun lt!12280 () List!1183)

(assert (=> d!10219 (= res!37078 (set.subset (content!46 lt!12280) (content!46 lt!12144)))))

(assert (=> d!10219 (= lt!12280 e!36057)))

(declare-fun c!18475 () Bool)

(assert (=> d!10219 (= c!18475 (is-Nil!1177 lt!12144))))

(assert (=> d!10219 (= (drop!67 lt!12144 (+ 1 from!821)) lt!12280)))

(declare-fun b!61398 () Bool)

(assert (=> b!61398 (= e!36058 lt!12144)))

(declare-fun b!61399 () Bool)

(assert (=> b!61399 (= e!36057 e!36058)))

(declare-fun c!18473 () Bool)

(assert (=> b!61399 (= c!18473 (<= (+ 1 from!821) 0))))

(declare-fun bm!3541 () Bool)

(assert (=> bm!3541 (= call!3546 (size!1072 lt!12144))))

(declare-fun b!61400 () Bool)

(assert (=> b!61400 (= e!36054 e!36056)))

(declare-fun c!18474 () Bool)

(assert (=> b!61400 (= c!18474 (>= (+ 1 from!821) call!3546))))

(declare-fun b!61401 () Bool)

(assert (=> b!61401 (= e!36055 (= (size!1072 lt!12280) e!36054))))

(declare-fun c!18472 () Bool)

(assert (=> b!61401 (= c!18472 (<= (+ 1 from!821) 0))))

(assert (= (and d!10219 c!18475) b!61397))

(assert (= (and d!10219 (not c!18475)) b!61399))

(assert (= (and b!61399 c!18473) b!61398))

(assert (= (and b!61399 (not c!18473)) b!61394))

(assert (= (and d!10219 res!37078) b!61401))

(assert (= (and b!61401 c!18472) b!61396))

(assert (= (and b!61401 (not c!18472)) b!61400))

(assert (= (and b!61400 c!18474) b!61395))

(assert (= (and b!61400 (not c!18474)) b!61393))

(assert (= (or b!61396 b!61400 b!61393) bm!3541))

(declare-fun m!38692 () Bool)

(assert (=> b!61394 m!38692))

(declare-fun m!38694 () Bool)

(assert (=> d!10219 m!38694))

(assert (=> d!10219 m!38604))

(assert (=> bm!3541 m!38674))

(declare-fun m!38696 () Bool)

(assert (=> b!61401 m!38696))

(assert (=> b!61252 d!10219))

(declare-fun b!61402 () Bool)

(declare-fun e!36061 () Int)

(declare-fun call!3547 () Int)

(assert (=> b!61402 (= e!36061 (- call!3547 (+ 2 from!821)))))

(declare-fun b!61403 () Bool)

(declare-fun e!36063 () List!1183)

(assert (=> b!61403 (= e!36063 (drop!67 (t!18334 lt!12144) (- (+ 2 from!821) 1)))))

(declare-fun b!61404 () Bool)

(assert (=> b!61404 (= e!36061 0)))

(declare-fun b!61405 () Bool)

(declare-fun e!36059 () Int)

(assert (=> b!61405 (= e!36059 call!3547)))

(declare-fun b!61406 () Bool)

(declare-fun e!36062 () List!1183)

(assert (=> b!61406 (= e!36062 Nil!1177)))

(declare-fun d!10221 () Bool)

(declare-fun e!36060 () Bool)

(assert (=> d!10221 e!36060))

(declare-fun res!37079 () Bool)

(assert (=> d!10221 (=> (not res!37079) (not e!36060))))

(declare-fun lt!12281 () List!1183)

(assert (=> d!10221 (= res!37079 (set.subset (content!46 lt!12281) (content!46 lt!12144)))))

(assert (=> d!10221 (= lt!12281 e!36062)))

(declare-fun c!18479 () Bool)

(assert (=> d!10221 (= c!18479 (is-Nil!1177 lt!12144))))

(assert (=> d!10221 (= (drop!67 lt!12144 (+ 2 from!821)) lt!12281)))

(declare-fun b!61407 () Bool)

(assert (=> b!61407 (= e!36063 lt!12144)))

(declare-fun b!61408 () Bool)

(assert (=> b!61408 (= e!36062 e!36063)))

(declare-fun c!18477 () Bool)

(assert (=> b!61408 (= c!18477 (<= (+ 2 from!821) 0))))

(declare-fun bm!3542 () Bool)

(assert (=> bm!3542 (= call!3547 (size!1072 lt!12144))))

(declare-fun b!61409 () Bool)

(assert (=> b!61409 (= e!36059 e!36061)))

(declare-fun c!18478 () Bool)

(assert (=> b!61409 (= c!18478 (>= (+ 2 from!821) call!3547))))

(declare-fun b!61410 () Bool)

(assert (=> b!61410 (= e!36060 (= (size!1072 lt!12281) e!36059))))

(declare-fun c!18476 () Bool)

(assert (=> b!61410 (= c!18476 (<= (+ 2 from!821) 0))))

(assert (= (and d!10221 c!18479) b!61406))

(assert (= (and d!10221 (not c!18479)) b!61408))

(assert (= (and b!61408 c!18477) b!61407))

(assert (= (and b!61408 (not c!18477)) b!61403))

(assert (= (and d!10221 res!37079) b!61410))

(assert (= (and b!61410 c!18476) b!61405))

(assert (= (and b!61410 (not c!18476)) b!61409))

(assert (= (and b!61409 c!18478) b!61404))

(assert (= (and b!61409 (not c!18478)) b!61402))

(assert (= (or b!61405 b!61409 b!61402) bm!3542))

(declare-fun m!38698 () Bool)

(assert (=> b!61403 m!38698))

(declare-fun m!38700 () Bool)

(assert (=> d!10221 m!38700))

(assert (=> d!10221 m!38604))

(assert (=> bm!3542 m!38674))

(declare-fun m!38702 () Bool)

(assert (=> b!61410 m!38702))

(assert (=> b!61252 d!10221))

(declare-fun d!10223 () Bool)

(declare-fun lt!12282 () Bool)

(assert (=> d!10223 (= lt!12282 (contains!173 (list!318 v!6227) lt!12149))))

(assert (=> d!10223 (= lt!12282 (contains!176 (c!18453 v!6227) lt!12149))))

(assert (=> d!10223 (= (contains!172 v!6227 lt!12149) lt!12282)))

(declare-fun bs!7209 () Bool)

(assert (= bs!7209 d!10223))

(assert (=> bs!7209 m!38478))

(assert (=> bs!7209 m!38478))

(declare-fun m!38704 () Bool)

(assert (=> bs!7209 m!38704))

(declare-fun m!38706 () Bool)

(assert (=> bs!7209 m!38706))

(assert (=> b!61252 d!10223))

(declare-fun d!10225 () Bool)

(assert (=> d!10225 (= (head!405 lt!12148) (h!6574 lt!12148))))

(assert (=> b!61252 d!10225))

(declare-fun d!10227 () Bool)

(declare-fun lt!12311 () Token!272)

(assert (=> d!10227 (contains!173 lt!12144 lt!12311)))

(declare-fun e!36072 () Token!272)

(assert (=> d!10227 (= lt!12311 e!36072)))

(declare-fun c!18482 () Bool)

(assert (=> d!10227 (= c!18482 (= (+ 1 from!821) 0))))

(declare-fun e!36071 () Bool)

(assert (=> d!10227 e!36071))

(declare-fun res!37085 () Bool)

(assert (=> d!10227 (=> (not res!37085) (not e!36071))))

(assert (=> d!10227 (= res!37085 (<= 0 (+ 1 from!821)))))

(assert (=> d!10227 (= (apply!157 lt!12144 (+ 1 from!821)) lt!12311)))

(declare-fun b!61420 () Bool)

(assert (=> b!61420 (= e!36071 (< (+ 1 from!821) (size!1072 lt!12144)))))

(declare-fun b!61421 () Bool)

(assert (=> b!61421 (= e!36072 (head!405 lt!12144))))

(declare-fun b!61422 () Bool)

(assert (=> b!61422 (= e!36072 (apply!157 (tail!89 lt!12144) (- (+ 1 from!821) 1)))))

(assert (= (and d!10227 res!37085) b!61420))

(assert (= (and d!10227 c!18482) b!61421))

(assert (= (and d!10227 (not c!18482)) b!61422))

(declare-fun m!38760 () Bool)

(assert (=> d!10227 m!38760))

(assert (=> b!61420 m!38674))

(declare-fun m!38766 () Bool)

(assert (=> b!61421 m!38766))

(declare-fun m!38768 () Bool)

(assert (=> b!61422 m!38768))

(assert (=> b!61422 m!38768))

(declare-fun m!38772 () Bool)

(assert (=> b!61422 m!38772))

(assert (=> b!61252 d!10227))

(declare-fun d!10229 () Bool)

(assert (=> d!10229 (= (head!405 (drop!67 lt!12144 from!821)) (apply!157 lt!12144 from!821))))

(declare-fun lt!12312 () Unit!687)

(assert (=> d!10229 (= lt!12312 (choose!1239 lt!12144 from!821))))

(declare-fun e!36073 () Bool)

(assert (=> d!10229 e!36073))

(declare-fun res!37086 () Bool)

(assert (=> d!10229 (=> (not res!37086) (not e!36073))))

(assert (=> d!10229 (= res!37086 (>= from!821 0))))

(assert (=> d!10229 (= (lemmaDropApply!65 lt!12144 from!821) lt!12312)))

(declare-fun b!61423 () Bool)

(assert (=> b!61423 (= e!36073 (< from!821 (size!1072 lt!12144)))))

(assert (= (and d!10229 res!37086) b!61423))

(assert (=> d!10229 m!38498))

(assert (=> d!10229 m!38498))

(declare-fun m!38774 () Bool)

(assert (=> d!10229 m!38774))

(assert (=> d!10229 m!38480))

(declare-fun m!38776 () Bool)

(assert (=> d!10229 m!38776))

(assert (=> b!61423 m!38674))

(assert (=> b!61252 d!10229))

(declare-fun d!10233 () Bool)

(declare-fun lt!12313 () Token!272)

(assert (=> d!10233 (contains!173 lt!12144 lt!12313)))

(declare-fun e!36075 () Token!272)

(assert (=> d!10233 (= lt!12313 e!36075)))

(declare-fun c!18483 () Bool)

(assert (=> d!10233 (= c!18483 (= from!821 0))))

(declare-fun e!36074 () Bool)

(assert (=> d!10233 e!36074))

(declare-fun res!37087 () Bool)

(assert (=> d!10233 (=> (not res!37087) (not e!36074))))

(assert (=> d!10233 (= res!37087 (<= 0 from!821))))

(assert (=> d!10233 (= (apply!157 lt!12144 from!821) lt!12313)))

(declare-fun b!61424 () Bool)

(assert (=> b!61424 (= e!36074 (< from!821 (size!1072 lt!12144)))))

(declare-fun b!61425 () Bool)

(assert (=> b!61425 (= e!36075 (head!405 lt!12144))))

(declare-fun b!61426 () Bool)

(assert (=> b!61426 (= e!36075 (apply!157 (tail!89 lt!12144) (- from!821 1)))))

(assert (= (and d!10233 res!37087) b!61424))

(assert (= (and d!10233 c!18483) b!61425))

(assert (= (and d!10233 (not c!18483)) b!61426))

(declare-fun m!38778 () Bool)

(assert (=> d!10233 m!38778))

(assert (=> b!61424 m!38674))

(assert (=> b!61425 m!38766))

(assert (=> b!61426 m!38768))

(assert (=> b!61426 m!38768))

(declare-fun m!38780 () Bool)

(assert (=> b!61426 m!38780))

(assert (=> b!61252 d!10233))

(declare-fun d!10235 () Bool)

(assert (=> d!10235 (= (tail!89 (drop!67 lt!12144 (+ 1 from!821))) (drop!67 lt!12144 (+ 1 from!821 1)))))

(declare-fun lt!12314 () Unit!687)

(assert (=> d!10235 (= lt!12314 (choose!1238 lt!12144 (+ 1 from!821)))))

(declare-fun e!36076 () Bool)

(assert (=> d!10235 e!36076))

(declare-fun res!37088 () Bool)

(assert (=> d!10235 (=> (not res!37088) (not e!36076))))

(assert (=> d!10235 (= res!37088 (>= (+ 1 from!821) 0))))

(assert (=> d!10235 (= (lemmaDropTail!57 lt!12144 (+ 1 from!821)) lt!12314)))

(declare-fun b!61427 () Bool)

(assert (=> b!61427 (= e!36076 (< (+ 1 from!821) (size!1072 lt!12144)))))

(assert (= (and d!10235 res!37088) b!61427))

(assert (=> d!10235 m!38490))

(assert (=> d!10235 m!38490))

(declare-fun m!38782 () Bool)

(assert (=> d!10235 m!38782))

(declare-fun m!38784 () Bool)

(assert (=> d!10235 m!38784))

(declare-fun m!38786 () Bool)

(assert (=> d!10235 m!38786))

(assert (=> b!61427 m!38674))

(assert (=> b!61252 d!10235))

(declare-fun d!10237 () Bool)

(declare-fun lt!12381 () Bool)

(assert (=> d!10237 (= lt!12381 (tokensListTwoByTwoPredicateList!1 thiss!11059 (dropList!9 v!6227 (+ 1 from!821)) rules!1069 pred!6))))

(declare-fun e!36087 () Bool)

(assert (=> d!10237 (= lt!12381 e!36087)))

(declare-fun res!37099 () Bool)

(assert (=> d!10237 (=> res!37099 e!36087)))

(assert (=> d!10237 (= res!37099 (not (< (+ 1 from!821) (- (size!1066 v!6227) 1))))))

(declare-fun e!36088 () Bool)

(assert (=> d!10237 e!36088))

(declare-fun res!37098 () Bool)

(assert (=> d!10237 (=> (not res!37098) (not e!36088))))

(assert (=> d!10237 (= res!37098 (>= (+ 1 from!821) 0))))

(assert (=> d!10237 (= (tokensListTwoByTwoPredicate!3 thiss!11059 v!6227 (+ 1 from!821) rules!1069 pred!6) lt!12381)))

(declare-fun b!61437 () Bool)

(assert (=> b!61437 (= e!36088 (<= (+ 1 from!821) (size!1066 v!6227)))))

(declare-fun b!61438 () Bool)

(declare-fun e!36086 () Bool)

(assert (=> b!61438 (= e!36087 e!36086)))

(declare-fun res!37100 () Bool)

(assert (=> b!61438 (=> (not res!37100) (not e!36086))))

(assert (=> b!61438 (= res!37100 (dynLambda!237 pred!6 (apply!156 v!6227 (+ 1 from!821)) (apply!156 v!6227 (+ 1 from!821 1)) rules!1069))))

(declare-fun lt!12394 () Unit!687)

(declare-fun Unit!692 () Unit!687)

(assert (=> b!61438 (= lt!12394 Unit!692)))

(assert (=> b!61438 (> (size!1065 (charsOf!19 (apply!156 v!6227 (+ 1 from!821 1)))) 0)))

(declare-fun lt!12377 () Unit!687)

(declare-fun Unit!693 () Unit!687)

(assert (=> b!61438 (= lt!12377 Unit!693)))

(assert (=> b!61438 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 (apply!156 v!6227 (+ 1 from!821 1)))))

(declare-fun lt!12393 () Unit!687)

(declare-fun Unit!694 () Unit!687)

(assert (=> b!61438 (= lt!12393 Unit!694)))

(assert (=> b!61438 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 (apply!156 v!6227 (+ 1 from!821)))))

(declare-fun lt!12372 () Unit!687)

(declare-fun lt!12370 () Unit!687)

(assert (=> b!61438 (= lt!12372 lt!12370)))

(declare-fun lt!12389 () Token!272)

(assert (=> b!61438 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12389)))

(declare-fun lt!12379 () List!1183)

(assert (=> b!61438 (= lt!12370 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12379 lt!12389))))

(assert (=> b!61438 (= lt!12389 (apply!156 v!6227 (+ 1 from!821 1)))))

(assert (=> b!61438 (= lt!12379 (list!318 v!6227))))

(declare-fun lt!12376 () Unit!687)

(declare-fun lt!12373 () Unit!687)

(assert (=> b!61438 (= lt!12376 lt!12373)))

(declare-fun lt!12395 () Token!272)

(assert (=> b!61438 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12395)))

(declare-fun lt!12383 () List!1183)

(assert (=> b!61438 (= lt!12373 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12383 lt!12395))))

(assert (=> b!61438 (= lt!12395 (apply!156 v!6227 (+ 1 from!821)))))

(assert (=> b!61438 (= lt!12383 (list!318 v!6227))))

(declare-fun lt!12384 () Unit!687)

(declare-fun lt!12378 () Unit!687)

(assert (=> b!61438 (= lt!12384 lt!12378)))

(declare-fun lt!12387 () List!1183)

(declare-fun lt!12374 () Int)

(assert (=> b!61438 (= (tail!89 (drop!67 lt!12387 lt!12374)) (drop!67 lt!12387 (+ lt!12374 1)))))

(assert (=> b!61438 (= lt!12378 (lemmaDropTail!57 lt!12387 lt!12374))))

(assert (=> b!61438 (= lt!12374 (+ 1 from!821 1))))

(assert (=> b!61438 (= lt!12387 (list!318 v!6227))))

(declare-fun lt!12386 () Unit!687)

(declare-fun lt!12371 () Unit!687)

(assert (=> b!61438 (= lt!12386 lt!12371)))

(declare-fun lt!12391 () List!1183)

(assert (=> b!61438 (= (tail!89 (drop!67 lt!12391 (+ 1 from!821))) (drop!67 lt!12391 (+ 1 from!821 1)))))

(assert (=> b!61438 (= lt!12371 (lemmaDropTail!57 lt!12391 (+ 1 from!821)))))

(assert (=> b!61438 (= lt!12391 (list!318 v!6227))))

(declare-fun lt!12375 () Unit!687)

(declare-fun lt!12392 () Unit!687)

(assert (=> b!61438 (= lt!12375 lt!12392)))

(declare-fun lt!12385 () List!1183)

(declare-fun lt!12390 () Int)

(assert (=> b!61438 (= (head!405 (drop!67 lt!12385 lt!12390)) (apply!157 lt!12385 lt!12390))))

(assert (=> b!61438 (= lt!12392 (lemmaDropApply!65 lt!12385 lt!12390))))

(assert (=> b!61438 (= lt!12390 (+ 1 from!821 1))))

(assert (=> b!61438 (= lt!12385 (list!318 v!6227))))

(declare-fun lt!12388 () Unit!687)

(declare-fun lt!12382 () Unit!687)

(assert (=> b!61438 (= lt!12388 lt!12382)))

(declare-fun lt!12380 () List!1183)

(assert (=> b!61438 (= (head!405 (drop!67 lt!12380 (+ 1 from!821))) (apply!157 lt!12380 (+ 1 from!821)))))

(assert (=> b!61438 (= lt!12382 (lemmaDropApply!65 lt!12380 (+ 1 from!821)))))

(assert (=> b!61438 (= lt!12380 (list!318 v!6227))))

(declare-fun b!61439 () Bool)

(assert (=> b!61439 (= e!36086 (tokensListTwoByTwoPredicate!3 thiss!11059 v!6227 (+ 1 from!821 1) rules!1069 pred!6))))

(assert (= (and d!10237 res!37098) b!61437))

(assert (= (and d!10237 (not res!37099)) b!61438))

(assert (= (and b!61438 res!37100) b!61439))

(declare-fun b_lambda!479 () Bool)

(assert (=> (not b_lambda!479) (not b!61438)))

(declare-fun t!18351 () Bool)

(declare-fun tb!857 () Bool)

(assert (=> (and start!4808 (= pred!6 pred!6) t!18351) tb!857))

(declare-fun result!1744 () Bool)

(assert (=> tb!857 (= result!1744 true)))

(assert (=> b!61438 t!18351))

(declare-fun b_and!2381 () Bool)

(assert (= b_and!2377 (and (=> t!18351 result!1744) b_and!2381)))

(declare-fun m!38794 () Bool)

(assert (=> d!10237 m!38794))

(assert (=> d!10237 m!38794))

(declare-fun m!38796 () Bool)

(assert (=> d!10237 m!38796))

(assert (=> d!10237 m!38448))

(assert (=> b!61437 m!38448))

(declare-fun m!38798 () Bool)

(assert (=> b!61438 m!38798))

(declare-fun m!38800 () Bool)

(assert (=> b!61438 m!38800))

(assert (=> b!61438 m!38442))

(assert (=> b!61438 m!38798))

(declare-fun m!38802 () Bool)

(assert (=> b!61438 m!38802))

(declare-fun m!38804 () Bool)

(assert (=> b!61438 m!38804))

(declare-fun m!38806 () Bool)

(assert (=> b!61438 m!38806))

(declare-fun m!38808 () Bool)

(assert (=> b!61438 m!38808))

(assert (=> b!61438 m!38442))

(declare-fun m!38810 () Bool)

(assert (=> b!61438 m!38810))

(assert (=> b!61438 m!38442))

(declare-fun m!38812 () Bool)

(assert (=> b!61438 m!38812))

(declare-fun m!38814 () Bool)

(assert (=> b!61438 m!38814))

(declare-fun m!38816 () Bool)

(assert (=> b!61438 m!38816))

(declare-fun m!38818 () Bool)

(assert (=> b!61438 m!38818))

(declare-fun m!38820 () Bool)

(assert (=> b!61438 m!38820))

(declare-fun m!38822 () Bool)

(assert (=> b!61438 m!38822))

(declare-fun m!38824 () Bool)

(assert (=> b!61438 m!38824))

(declare-fun m!38826 () Bool)

(assert (=> b!61438 m!38826))

(assert (=> b!61438 m!38800))

(declare-fun m!38828 () Bool)

(assert (=> b!61438 m!38828))

(declare-fun m!38830 () Bool)

(assert (=> b!61438 m!38830))

(declare-fun m!38832 () Bool)

(assert (=> b!61438 m!38832))

(assert (=> b!61438 m!38798))

(declare-fun m!38834 () Bool)

(assert (=> b!61438 m!38834))

(declare-fun m!38836 () Bool)

(assert (=> b!61438 m!38836))

(assert (=> b!61438 m!38830))

(assert (=> b!61438 m!38798))

(assert (=> b!61438 m!38478))

(declare-fun m!38838 () Bool)

(assert (=> b!61438 m!38838))

(declare-fun m!38840 () Bool)

(assert (=> b!61438 m!38840))

(declare-fun m!38842 () Bool)

(assert (=> b!61438 m!38842))

(assert (=> b!61438 m!38814))

(assert (=> b!61438 m!38822))

(declare-fun m!38844 () Bool)

(assert (=> b!61438 m!38844))

(declare-fun m!38846 () Bool)

(assert (=> b!61438 m!38846))

(assert (=> b!61438 m!38824))

(declare-fun m!38848 () Bool)

(assert (=> b!61438 m!38848))

(declare-fun m!38850 () Bool)

(assert (=> b!61439 m!38850))

(assert (=> b!61251 d!10237))

(declare-fun b!61471 () Bool)

(declare-fun e!36114 () Bool)

(assert (=> b!61471 (= e!36114 true)))

(declare-fun b!61470 () Bool)

(declare-fun e!36113 () Bool)

(assert (=> b!61470 (= e!36113 e!36114)))

(declare-fun b!61469 () Bool)

(declare-fun e!36112 () Bool)

(assert (=> b!61469 (= e!36112 e!36113)))

(declare-fun d!10243 () Bool)

(assert (=> d!10243 e!36112))

(assert (= b!61470 b!61471))

(assert (= b!61469 b!61470))

(assert (= (and d!10243 (is-Cons!1176 rules!1069)) b!61469))

(declare-fun order!405 () Int)

(declare-fun lambda!1194 () Int)

(declare-fun order!407 () Int)

(declare-fun dynLambda!240 (Int Int) Int)

(declare-fun dynLambda!241 (Int Int) Int)

(assert (=> b!61471 (< (dynLambda!240 order!405 (toValue!737 (transformation!254 (h!6573 rules!1069)))) (dynLambda!241 order!407 lambda!1194))))

(declare-fun order!409 () Int)

(declare-fun dynLambda!242 (Int Int) Int)

(assert (=> b!61471 (< (dynLambda!242 order!409 (toChars!596 (transformation!254 (h!6573 rules!1069)))) (dynLambda!241 order!407 lambda!1194))))

(assert (=> d!10243 true))

(declare-fun e!36105 () Bool)

(assert (=> d!10243 e!36105))

(declare-fun res!37121 () Bool)

(assert (=> d!10243 (=> (not res!37121) (not e!36105))))

(declare-fun lt!12409 () Bool)

(declare-fun forall!156 (List!1183 Int) Bool)

(assert (=> d!10243 (= res!37121 (= lt!12409 (forall!156 (list!318 v!6227) lambda!1194)))))

(declare-fun forall!157 (BalanceConc!630 Int) Bool)

(assert (=> d!10243 (= lt!12409 (forall!157 v!6227 lambda!1194))))

(assert (=> d!10243 (not (isEmpty!256 rules!1069))))

(assert (=> d!10243 (= (rulesProduceEachTokenIndividually!84 thiss!11059 rules!1069 v!6227) lt!12409)))

(declare-fun b!61460 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!52 (LexerInterface!146 List!1182 List!1183) Bool)

(assert (=> b!61460 (= e!36105 (= lt!12409 (rulesProduceEachTokenIndividuallyList!52 thiss!11059 rules!1069 (list!318 v!6227))))))

(assert (= (and d!10243 res!37121) b!61460))

(assert (=> d!10243 m!38478))

(assert (=> d!10243 m!38478))

(declare-fun m!38898 () Bool)

(assert (=> d!10243 m!38898))

(declare-fun m!38900 () Bool)

(assert (=> d!10243 m!38900))

(assert (=> d!10243 m!38450))

(assert (=> b!61460 m!38478))

(assert (=> b!61460 m!38478))

(declare-fun m!38902 () Bool)

(assert (=> b!61460 m!38902))

(assert (=> b!61250 d!10243))

(declare-fun d!10255 () Bool)

(declare-fun lt!12412 () Int)

(assert (=> d!10255 (= lt!12412 (size!1072 (list!318 v!6227)))))

(declare-fun size!1073 (Conc!313) Int)

(assert (=> d!10255 (= lt!12412 (size!1073 (c!18453 v!6227)))))

(assert (=> d!10255 (= (size!1066 v!6227) lt!12412)))

(declare-fun bs!7213 () Bool)

(assert (= bs!7213 d!10255))

(assert (=> bs!7213 m!38478))

(assert (=> bs!7213 m!38478))

(declare-fun m!38904 () Bool)

(assert (=> bs!7213 m!38904))

(declare-fun m!38906 () Bool)

(assert (=> bs!7213 m!38906))

(assert (=> b!61260 d!10255))

(declare-fun d!10257 () Bool)

(assert (=> d!10257 (= (inv!1562 (tag!432 (h!6573 rules!1069))) (= (mod (str.len (value!10137 (tag!432 (h!6573 rules!1069)))) 2) 0))))

(assert (=> b!61249 d!10257))

(declare-fun d!10259 () Bool)

(declare-fun res!37124 () Bool)

(declare-fun e!36117 () Bool)

(assert (=> d!10259 (=> (not res!37124) (not e!36117))))

(declare-fun semiInverseModEq!34 (Int Int) Bool)

(assert (=> d!10259 (= res!37124 (semiInverseModEq!34 (toChars!596 (transformation!254 (h!6573 rules!1069))) (toValue!737 (transformation!254 (h!6573 rules!1069)))))))

(assert (=> d!10259 (= (inv!1565 (transformation!254 (h!6573 rules!1069))) e!36117)))

(declare-fun b!61476 () Bool)

(declare-fun equivClasses!30 (Int Int) Bool)

(assert (=> b!61476 (= e!36117 (equivClasses!30 (toChars!596 (transformation!254 (h!6573 rules!1069))) (toValue!737 (transformation!254 (h!6573 rules!1069)))))))

(assert (= (and d!10259 res!37124) b!61476))

(declare-fun m!38908 () Bool)

(assert (=> d!10259 m!38908))

(declare-fun m!38910 () Bool)

(assert (=> b!61476 m!38910))

(assert (=> b!61249 d!10259))

(declare-fun d!10261 () Bool)

(declare-fun isBalanced!52 (Conc!313) Bool)

(assert (=> d!10261 (= (inv!1567 v!6227) (isBalanced!52 (c!18453 v!6227)))))

(declare-fun bs!7214 () Bool)

(assert (= bs!7214 d!10261))

(declare-fun m!38912 () Bool)

(assert (=> bs!7214 m!38912))

(assert (=> start!4808 d!10261))

(declare-fun d!10263 () Bool)

(assert (=> d!10263 (= (isEmpty!256 rules!1069) (is-Nil!1176 rules!1069))))

(assert (=> b!61248 d!10263))

(declare-fun d!10265 () Bool)

(declare-fun lt!12413 () Bool)

(assert (=> d!10265 (= lt!12413 (set.member lt!12149 (content!46 lt!12144)))))

(declare-fun e!36119 () Bool)

(assert (=> d!10265 (= lt!12413 e!36119)))

(declare-fun res!37126 () Bool)

(assert (=> d!10265 (=> (not res!37126) (not e!36119))))

(assert (=> d!10265 (= res!37126 (is-Cons!1177 lt!12144))))

(assert (=> d!10265 (= (contains!173 lt!12144 lt!12149) lt!12413)))

(declare-fun b!61477 () Bool)

(declare-fun e!36118 () Bool)

(assert (=> b!61477 (= e!36119 e!36118)))

(declare-fun res!37125 () Bool)

(assert (=> b!61477 (=> res!37125 e!36118)))

(assert (=> b!61477 (= res!37125 (= (h!6574 lt!12144) lt!12149))))

(declare-fun b!61478 () Bool)

(assert (=> b!61478 (= e!36118 (contains!173 (t!18334 lt!12144) lt!12149))))

(assert (= (and d!10265 res!37126) b!61477))

(assert (= (and b!61477 (not res!37125)) b!61478))

(assert (=> d!10265 m!38604))

(declare-fun m!38914 () Bool)

(assert (=> d!10265 m!38914))

(declare-fun m!38916 () Bool)

(assert (=> b!61478 m!38916))

(assert (=> b!61259 d!10265))

(declare-fun b!61489 () Bool)

(declare-fun b_free!1961 () Bool)

(declare-fun b_next!1961 () Bool)

(assert (=> b!61489 (= b_free!1961 (not b_next!1961))))

(declare-fun tp!37367 () Bool)

(declare-fun b_and!2385 () Bool)

(assert (=> b!61489 (= tp!37367 b_and!2385)))

(declare-fun b_free!1963 () Bool)

(declare-fun b_next!1963 () Bool)

(assert (=> b!61489 (= b_free!1963 (not b_next!1963))))

(declare-fun t!18362 () Bool)

(declare-fun tb!861 () Bool)

(assert (=> (and b!61489 (= (toChars!596 (transformation!254 (h!6573 (t!18333 rules!1069)))) (toChars!596 (transformation!254 (rule!729 lt!12152)))) t!18362) tb!861))

(declare-fun result!1750 () Bool)

(assert (= result!1750 result!1736))

(assert (=> d!10177 t!18362))

(declare-fun tp!37365 () Bool)

(declare-fun b_and!2387 () Bool)

(assert (=> b!61489 (= tp!37365 (and (=> t!18362 result!1750) b_and!2387))))

(declare-fun e!36130 () Bool)

(assert (=> b!61489 (= e!36130 (and tp!37367 tp!37365))))

(declare-fun e!36131 () Bool)

(declare-fun tp!37364 () Bool)

(declare-fun b!61488 () Bool)

(assert (=> b!61488 (= e!36131 (and tp!37364 (inv!1562 (tag!432 (h!6573 (t!18333 rules!1069)))) (inv!1565 (transformation!254 (h!6573 (t!18333 rules!1069)))) e!36130))))

(declare-fun b!61487 () Bool)

(declare-fun e!36129 () Bool)

(declare-fun tp!37366 () Bool)

(assert (=> b!61487 (= e!36129 (and e!36131 tp!37366))))

(assert (=> b!61245 (= tp!37334 e!36129)))

(assert (= b!61488 b!61489))

(assert (= b!61487 b!61488))

(assert (= (and b!61245 (is-Cons!1176 (t!18333 rules!1069))) b!61487))

(declare-fun m!38918 () Bool)

(assert (=> b!61488 m!38918))

(declare-fun m!38920 () Bool)

(assert (=> b!61488 m!38920))

(declare-fun e!36134 () Bool)

(assert (=> b!61249 (= tp!37333 e!36134)))

(declare-fun b!61502 () Bool)

(declare-fun tp!37378 () Bool)

(assert (=> b!61502 (= e!36134 tp!37378)))

(declare-fun b!61503 () Bool)

(declare-fun tp!37379 () Bool)

(declare-fun tp!37382 () Bool)

(assert (=> b!61503 (= e!36134 (and tp!37379 tp!37382))))

(declare-fun b!61500 () Bool)

(declare-fun tp_is_empty!567 () Bool)

(assert (=> b!61500 (= e!36134 tp_is_empty!567)))

(declare-fun b!61501 () Bool)

(declare-fun tp!37380 () Bool)

(declare-fun tp!37381 () Bool)

(assert (=> b!61501 (= e!36134 (and tp!37380 tp!37381))))

(assert (= (and b!61249 (is-ElementMatch!322 (regex!254 (h!6573 rules!1069)))) b!61500))

(assert (= (and b!61249 (is-Concat!567 (regex!254 (h!6573 rules!1069)))) b!61501))

(assert (= (and b!61249 (is-Star!322 (regex!254 (h!6573 rules!1069)))) b!61502))

(assert (= (and b!61249 (is-Union!322 (regex!254 (h!6573 rules!1069)))) b!61503))

(declare-fun b!61512 () Bool)

(declare-fun e!36139 () Bool)

(declare-fun tp!37389 () Bool)

(declare-fun tp!37391 () Bool)

(assert (=> b!61512 (= e!36139 (and (inv!1566 (left!897 (c!18453 v!6227))) tp!37391 (inv!1566 (right!1227 (c!18453 v!6227))) tp!37389))))

(declare-fun b!61514 () Bool)

(declare-fun e!36140 () Bool)

(declare-fun tp!37390 () Bool)

(assert (=> b!61514 (= e!36140 tp!37390)))

(declare-fun b!61513 () Bool)

(declare-fun inv!1575 (IArray!627) Bool)

(assert (=> b!61513 (= e!36139 (and (inv!1575 (xs!2892 (c!18453 v!6227))) e!36140))))

(assert (=> b!61253 (= tp!37332 (and (inv!1566 (c!18453 v!6227)) e!36139))))

(assert (= (and b!61253 (is-Node!313 (c!18453 v!6227))) b!61512))

(assert (= b!61513 b!61514))

(assert (= (and b!61253 (is-Leaf!576 (c!18453 v!6227))) b!61513))

(declare-fun m!38922 () Bool)

(assert (=> b!61512 m!38922))

(declare-fun m!38924 () Bool)

(assert (=> b!61512 m!38924))

(declare-fun m!38926 () Bool)

(assert (=> b!61513 m!38926))

(assert (=> b!61253 m!38438))

(declare-fun b_lambda!483 () Bool)

(assert (= b_lambda!479 (or (and start!4808 b_free!1953) b_lambda!483)))

(declare-fun b_lambda!485 () Bool)

(assert (= b_lambda!475 (or (and start!4808 b_free!1953) b_lambda!485)))

(push 1)

(assert (not b!61338))

(assert (not d!10223))

(assert b_and!2381)

(assert (not b_next!1963))

(assert (not b!61403))

(assert (not d!10229))

(assert (not d!10177))

(assert (not d!10185))

(assert (not d!10195))

(assert (not d!10219))

(assert (not d!10179))

(assert (not b!61438))

(assert (not b!61425))

(assert (not b_next!1949))

(assert (not b!61512))

(assert (not d!10237))

(assert (not d!10261))

(assert (not bm!3541))

(assert (not b_next!1951))

(assert (not b_next!1953))

(assert (not b!61487))

(assert (not d!10199))

(assert (not d!10221))

(assert (not b!61427))

(assert (not b!61340))

(assert (not b_lambda!473))

(assert (not b!61476))

(assert (not b!61253))

(assert (not d!10191))

(assert (not b!61352))

(assert (not b!61503))

(assert (not b!61343))

(assert (not b!61488))

(assert (not b!61379))

(assert (not b!61420))

(assert (not b!61350))

(assert (not d!10203))

(assert tp_is_empty!567)

(assert b_and!2387)

(assert (not b!61439))

(assert (not b!61339))

(assert (not d!10181))

(assert b_and!2375)

(assert (not b!61426))

(assert (not b!61513))

(assert (not b!61372))

(assert (not b!61394))

(assert (not b!61410))

(assert (not b!61460))

(assert (not d!10265))

(assert (not d!10205))

(assert (not b_lambda!483))

(assert (not d!10259))

(assert (not d!10193))

(assert (not b!61389))

(assert (not d!10227))

(assert (not b_lambda!485))

(assert (not b!61424))

(assert (not b!61336))

(assert (not d!10233))

(assert (not b_lambda!469))

(assert (not b!61313))

(assert (not bm!3542))

(assert (not bm!3540))

(assert (not b!61437))

(assert b_and!2359)

(assert (not b!61337))

(assert (not d!10213))

(assert (not b!61421))

(assert (not d!10197))

(assert (not b!61401))

(assert (not d!10207))

(assert (not b!61335))

(assert (not tb!851))

(assert (not d!10217))

(assert (not b!61501))

(assert (not b!61380))

(assert (not d!10243))

(assert b_and!2385)

(assert (not b!61422))

(assert (not b!61423))

(assert (not b!61469))

(assert (not d!10189))

(assert (not b!61514))

(assert (not d!10235))

(assert (not b_next!1961))

(assert (not d!10175))

(assert (not b!61502))

(assert (not b!61322))

(assert (not b!61478))

(assert (not b!61392))

(assert (not b!61328))

(assert (not b!61316))

(assert (not d!10255))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1949))

(assert b_and!2387)

(assert b_and!2375)

(assert b_and!2381)

(assert (not b_next!1963))

(assert b_and!2359)

(assert b_and!2385)

(assert (not b_next!1961))

(assert (not b_next!1951))

(assert (not b_next!1953))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10323 () Bool)

(assert (=> d!10323 (= (inv!1562 (tag!432 (h!6573 (t!18333 rules!1069)))) (= (mod (str.len (value!10137 (tag!432 (h!6573 (t!18333 rules!1069))))) 2) 0))))

(assert (=> b!61488 d!10323))

(declare-fun d!10325 () Bool)

(declare-fun res!37168 () Bool)

(declare-fun e!36239 () Bool)

(assert (=> d!10325 (=> (not res!37168) (not e!36239))))

(assert (=> d!10325 (= res!37168 (semiInverseModEq!34 (toChars!596 (transformation!254 (h!6573 (t!18333 rules!1069)))) (toValue!737 (transformation!254 (h!6573 (t!18333 rules!1069))))))))

(assert (=> d!10325 (= (inv!1565 (transformation!254 (h!6573 (t!18333 rules!1069)))) e!36239)))

(declare-fun b!61661 () Bool)

(assert (=> b!61661 (= e!36239 (equivClasses!30 (toChars!596 (transformation!254 (h!6573 (t!18333 rules!1069)))) (toValue!737 (transformation!254 (h!6573 (t!18333 rules!1069))))))))

(assert (= (and d!10325 res!37168) b!61661))

(declare-fun m!39050 () Bool)

(assert (=> d!10325 m!39050))

(declare-fun m!39052 () Bool)

(assert (=> b!61661 m!39052))

(assert (=> b!61488 d!10325))

(declare-fun d!10327 () Bool)

(declare-fun res!37169 () Bool)

(declare-fun e!36240 () Bool)

(assert (=> d!10327 (=> res!37169 e!36240)))

(assert (=> d!10327 (= res!37169 (or (not (is-Cons!1177 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 from!821))) (t!18334 (t!18334 (dropList!9 v!6227 from!821)))))) (not (is-Cons!1177 (t!18334 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 from!821))) (t!18334 (t!18334 (dropList!9 v!6227 from!821)))))))))))

(assert (=> d!10327 (= (tokensListTwoByTwoPredicateList!1 thiss!11059 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 from!821))) (t!18334 (t!18334 (dropList!9 v!6227 from!821)))) rules!1069 pred!6) e!36240)))

(declare-fun b!61662 () Bool)

(declare-fun e!36241 () Bool)

(assert (=> b!61662 (= e!36240 e!36241)))

(declare-fun res!37170 () Bool)

(assert (=> b!61662 (=> (not res!37170) (not e!36241))))

(assert (=> b!61662 (= res!37170 (dynLambda!237 pred!6 (h!6574 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 from!821))) (t!18334 (t!18334 (dropList!9 v!6227 from!821))))) (h!6574 (t!18334 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 from!821))) (t!18334 (t!18334 (dropList!9 v!6227 from!821)))))) rules!1069))))

(declare-fun b!61663 () Bool)

(assert (=> b!61663 (= e!36241 (tokensListTwoByTwoPredicateList!1 thiss!11059 (Cons!1177 (h!6574 (t!18334 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 from!821))) (t!18334 (t!18334 (dropList!9 v!6227 from!821)))))) (t!18334 (t!18334 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 from!821))) (t!18334 (t!18334 (dropList!9 v!6227 from!821))))))) rules!1069 pred!6))))

(assert (= (and d!10327 (not res!37169)) b!61662))

(assert (= (and b!61662 res!37170) b!61663))

(declare-fun b_lambda!493 () Bool)

(assert (=> (not b_lambda!493) (not b!61662)))

(declare-fun t!18372 () Bool)

(declare-fun tb!867 () Bool)

(assert (=> (and start!4808 (= pred!6 pred!6) t!18372) tb!867))

(declare-fun result!1768 () Bool)

(assert (=> tb!867 (= result!1768 true)))

(assert (=> b!61662 t!18372))

(declare-fun b_and!2395 () Bool)

(assert (= b_and!2381 (and (=> t!18372 result!1768) b_and!2395)))

(declare-fun m!39054 () Bool)

(assert (=> b!61662 m!39054))

(declare-fun m!39056 () Bool)

(assert (=> b!61663 m!39056))

(assert (=> b!61328 d!10327))

(declare-fun d!10329 () Bool)

(declare-fun lt!12453 () Bool)

(assert (=> d!10329 (= lt!12453 (set.member lt!12149 (content!46 (t!18334 lt!12144))))))

(declare-fun e!36243 () Bool)

(assert (=> d!10329 (= lt!12453 e!36243)))

(declare-fun res!37173 () Bool)

(assert (=> d!10329 (=> (not res!37173) (not e!36243))))

(assert (=> d!10329 (= res!37173 (is-Cons!1177 (t!18334 lt!12144)))))

(assert (=> d!10329 (= (contains!173 (t!18334 lt!12144) lt!12149) lt!12453)))

(declare-fun b!61664 () Bool)

(declare-fun e!36242 () Bool)

(assert (=> b!61664 (= e!36243 e!36242)))

(declare-fun res!37172 () Bool)

(assert (=> b!61664 (=> res!37172 e!36242)))

(assert (=> b!61664 (= res!37172 (= (h!6574 (t!18334 lt!12144)) lt!12149))))

(declare-fun b!61665 () Bool)

(assert (=> b!61665 (= e!36242 (contains!173 (t!18334 (t!18334 lt!12144)) lt!12149))))

(assert (= (and d!10329 res!37173) b!61664))

(assert (= (and b!61664 (not res!37172)) b!61665))

(declare-fun m!39058 () Bool)

(assert (=> d!10329 m!39058))

(declare-fun m!39060 () Bool)

(assert (=> d!10329 m!39060))

(declare-fun m!39062 () Bool)

(assert (=> b!61665 m!39062))

(assert (=> b!61478 d!10329))

(assert (=> b!61343 d!10255))

(declare-fun lt!12465 () Bool)

(declare-fun d!10331 () Bool)

(assert (=> d!10331 (= lt!12465 (tokensListTwoByTwoPredicateList!1 thiss!11059 (dropList!9 v!6227 (+ 1 from!821 1)) rules!1069 pred!6))))

(declare-fun e!36245 () Bool)

(assert (=> d!10331 (= lt!12465 e!36245)))

(declare-fun res!37175 () Bool)

(assert (=> d!10331 (=> res!37175 e!36245)))

(assert (=> d!10331 (= res!37175 (not (< (+ 1 from!821 1) (- (size!1066 v!6227) 1))))))

(declare-fun e!36246 () Bool)

(assert (=> d!10331 e!36246))

(declare-fun res!37174 () Bool)

(assert (=> d!10331 (=> (not res!37174) (not e!36246))))

(assert (=> d!10331 (= res!37174 (>= (+ 1 from!821 1) 0))))

(assert (=> d!10331 (= (tokensListTwoByTwoPredicate!3 thiss!11059 v!6227 (+ 1 from!821 1) rules!1069 pred!6) lt!12465)))

(declare-fun b!61666 () Bool)

(assert (=> b!61666 (= e!36246 (<= (+ 1 from!821 1) (size!1066 v!6227)))))

(declare-fun b!61667 () Bool)

(declare-fun e!36244 () Bool)

(assert (=> b!61667 (= e!36245 e!36244)))

(declare-fun res!37176 () Bool)

(assert (=> b!61667 (=> (not res!37176) (not e!36244))))

(assert (=> b!61667 (= res!37176 (dynLambda!237 pred!6 (apply!156 v!6227 (+ 1 from!821 1)) (apply!156 v!6227 (+ 1 from!821 1 1)) rules!1069))))

(declare-fun lt!12478 () Unit!687)

(declare-fun Unit!698 () Unit!687)

(assert (=> b!61667 (= lt!12478 Unit!698)))

(assert (=> b!61667 (> (size!1065 (charsOf!19 (apply!156 v!6227 (+ 1 from!821 1 1)))) 0)))

(declare-fun lt!12461 () Unit!687)

(declare-fun Unit!699 () Unit!687)

(assert (=> b!61667 (= lt!12461 Unit!699)))

(assert (=> b!61667 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 (apply!156 v!6227 (+ 1 from!821 1 1)))))

(declare-fun lt!12477 () Unit!687)

(declare-fun Unit!700 () Unit!687)

(assert (=> b!61667 (= lt!12477 Unit!700)))

(assert (=> b!61667 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 (apply!156 v!6227 (+ 1 from!821 1)))))

(declare-fun lt!12456 () Unit!687)

(declare-fun lt!12454 () Unit!687)

(assert (=> b!61667 (= lt!12456 lt!12454)))

(declare-fun lt!12473 () Token!272)

(assert (=> b!61667 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12473)))

(declare-fun lt!12463 () List!1183)

(assert (=> b!61667 (= lt!12454 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12463 lt!12473))))

(assert (=> b!61667 (= lt!12473 (apply!156 v!6227 (+ 1 from!821 1 1)))))

(assert (=> b!61667 (= lt!12463 (list!318 v!6227))))

(declare-fun lt!12460 () Unit!687)

(declare-fun lt!12457 () Unit!687)

(assert (=> b!61667 (= lt!12460 lt!12457)))

(declare-fun lt!12479 () Token!272)

(assert (=> b!61667 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12479)))

(declare-fun lt!12467 () List!1183)

(assert (=> b!61667 (= lt!12457 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12467 lt!12479))))

(assert (=> b!61667 (= lt!12479 (apply!156 v!6227 (+ 1 from!821 1)))))

(assert (=> b!61667 (= lt!12467 (list!318 v!6227))))

(declare-fun lt!12468 () Unit!687)

(declare-fun lt!12462 () Unit!687)

(assert (=> b!61667 (= lt!12468 lt!12462)))

(declare-fun lt!12471 () List!1183)

(declare-fun lt!12458 () Int)

(assert (=> b!61667 (= (tail!89 (drop!67 lt!12471 lt!12458)) (drop!67 lt!12471 (+ lt!12458 1)))))

(assert (=> b!61667 (= lt!12462 (lemmaDropTail!57 lt!12471 lt!12458))))

(assert (=> b!61667 (= lt!12458 (+ 1 from!821 1 1))))

(assert (=> b!61667 (= lt!12471 (list!318 v!6227))))

(declare-fun lt!12470 () Unit!687)

(declare-fun lt!12455 () Unit!687)

(assert (=> b!61667 (= lt!12470 lt!12455)))

(declare-fun lt!12475 () List!1183)

(assert (=> b!61667 (= (tail!89 (drop!67 lt!12475 (+ 1 from!821 1))) (drop!67 lt!12475 (+ 1 from!821 1 1)))))

(assert (=> b!61667 (= lt!12455 (lemmaDropTail!57 lt!12475 (+ 1 from!821 1)))))

(assert (=> b!61667 (= lt!12475 (list!318 v!6227))))

(declare-fun lt!12459 () Unit!687)

(declare-fun lt!12476 () Unit!687)

(assert (=> b!61667 (= lt!12459 lt!12476)))

(declare-fun lt!12469 () List!1183)

(declare-fun lt!12474 () Int)

(assert (=> b!61667 (= (head!405 (drop!67 lt!12469 lt!12474)) (apply!157 lt!12469 lt!12474))))

(assert (=> b!61667 (= lt!12476 (lemmaDropApply!65 lt!12469 lt!12474))))

(assert (=> b!61667 (= lt!12474 (+ 1 from!821 1 1))))

(assert (=> b!61667 (= lt!12469 (list!318 v!6227))))

(declare-fun lt!12472 () Unit!687)

(declare-fun lt!12466 () Unit!687)

(assert (=> b!61667 (= lt!12472 lt!12466)))

(declare-fun lt!12464 () List!1183)

(assert (=> b!61667 (= (head!405 (drop!67 lt!12464 (+ 1 from!821 1))) (apply!157 lt!12464 (+ 1 from!821 1)))))

(assert (=> b!61667 (= lt!12466 (lemmaDropApply!65 lt!12464 (+ 1 from!821 1)))))

(assert (=> b!61667 (= lt!12464 (list!318 v!6227))))

(declare-fun b!61668 () Bool)

(assert (=> b!61668 (= e!36244 (tokensListTwoByTwoPredicate!3 thiss!11059 v!6227 (+ 1 from!821 1 1) rules!1069 pred!6))))

(assert (= (and d!10331 res!37174) b!61666))

(assert (= (and d!10331 (not res!37175)) b!61667))

(assert (= (and b!61667 res!37176) b!61668))

(declare-fun b_lambda!495 () Bool)

(assert (=> (not b_lambda!495) (not b!61667)))

(declare-fun t!18374 () Bool)

(declare-fun tb!869 () Bool)

(assert (=> (and start!4808 (= pred!6 pred!6) t!18374) tb!869))

(declare-fun result!1770 () Bool)

(assert (=> tb!869 (= result!1770 true)))

(assert (=> b!61667 t!18374))

(declare-fun b_and!2397 () Bool)

(assert (= b_and!2395 (and (=> t!18374 result!1770) b_and!2397)))

(declare-fun m!39064 () Bool)

(assert (=> d!10331 m!39064))

(assert (=> d!10331 m!39064))

(declare-fun m!39066 () Bool)

(assert (=> d!10331 m!39066))

(assert (=> d!10331 m!38448))

(assert (=> b!61666 m!38448))

(declare-fun m!39068 () Bool)

(assert (=> b!61667 m!39068))

(declare-fun m!39070 () Bool)

(assert (=> b!61667 m!39070))

(assert (=> b!61667 m!38798))

(assert (=> b!61667 m!39068))

(declare-fun m!39072 () Bool)

(assert (=> b!61667 m!39072))

(declare-fun m!39074 () Bool)

(assert (=> b!61667 m!39074))

(declare-fun m!39076 () Bool)

(assert (=> b!61667 m!39076))

(declare-fun m!39078 () Bool)

(assert (=> b!61667 m!39078))

(assert (=> b!61667 m!38798))

(assert (=> b!61667 m!38834))

(assert (=> b!61667 m!38798))

(declare-fun m!39080 () Bool)

(assert (=> b!61667 m!39080))

(declare-fun m!39082 () Bool)

(assert (=> b!61667 m!39082))

(declare-fun m!39084 () Bool)

(assert (=> b!61667 m!39084))

(declare-fun m!39086 () Bool)

(assert (=> b!61667 m!39086))

(declare-fun m!39088 () Bool)

(assert (=> b!61667 m!39088))

(declare-fun m!39090 () Bool)

(assert (=> b!61667 m!39090))

(declare-fun m!39092 () Bool)

(assert (=> b!61667 m!39092))

(declare-fun m!39094 () Bool)

(assert (=> b!61667 m!39094))

(assert (=> b!61667 m!39070))

(declare-fun m!39096 () Bool)

(assert (=> b!61667 m!39096))

(declare-fun m!39098 () Bool)

(assert (=> b!61667 m!39098))

(declare-fun m!39100 () Bool)

(assert (=> b!61667 m!39100))

(assert (=> b!61667 m!39068))

(declare-fun m!39102 () Bool)

(assert (=> b!61667 m!39102))

(declare-fun m!39104 () Bool)

(assert (=> b!61667 m!39104))

(assert (=> b!61667 m!39098))

(assert (=> b!61667 m!39068))

(assert (=> b!61667 m!38478))

(declare-fun m!39106 () Bool)

(assert (=> b!61667 m!39106))

(declare-fun m!39108 () Bool)

(assert (=> b!61667 m!39108))

(declare-fun m!39110 () Bool)

(assert (=> b!61667 m!39110))

(assert (=> b!61667 m!39082))

(assert (=> b!61667 m!39090))

(declare-fun m!39112 () Bool)

(assert (=> b!61667 m!39112))

(declare-fun m!39114 () Bool)

(assert (=> b!61667 m!39114))

(assert (=> b!61667 m!39092))

(declare-fun m!39116 () Bool)

(assert (=> b!61667 m!39116))

(declare-fun m!39118 () Bool)

(assert (=> b!61668 m!39118))

(assert (=> b!61439 d!10331))

(declare-fun lt!12482 () Bool)

(declare-fun d!10333 () Bool)

(declare-fun isEmpty!260 (List!1181) Bool)

(assert (=> d!10333 (= lt!12482 (isEmpty!260 (list!320 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149)))))))))

(declare-fun isEmpty!261 (Conc!312) Bool)

(assert (=> d!10333 (= lt!12482 (isEmpty!261 (c!18451 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149)))))))))

(assert (=> d!10333 (= (isEmpty!258 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149))))) lt!12482)))

(declare-fun bs!7221 () Bool)

(assert (= bs!7221 d!10333))

(declare-fun m!39120 () Bool)

(assert (=> bs!7221 m!39120))

(assert (=> bs!7221 m!39120))

(declare-fun m!39122 () Bool)

(assert (=> bs!7221 m!39122))

(declare-fun m!39124 () Bool)

(assert (=> bs!7221 m!39124))

(assert (=> b!61337 d!10333))

(declare-fun b!61679 () Bool)

(declare-fun e!36253 () Bool)

(declare-fun lt!12485 () tuple2!1148)

(declare-fun isEmpty!262 (BalanceConc!630) Bool)

(assert (=> b!61679 (= e!36253 (not (isEmpty!262 (_1!781 lt!12485))))))

(declare-fun d!10335 () Bool)

(declare-fun e!36255 () Bool)

(assert (=> d!10335 e!36255))

(declare-fun res!37184 () Bool)

(assert (=> d!10335 (=> (not res!37184) (not e!36255))))

(declare-fun e!36254 () Bool)

(assert (=> d!10335 (= res!37184 e!36254)))

(declare-fun c!18514 () Bool)

(assert (=> d!10335 (= c!18514 (> (size!1066 (_1!781 lt!12485)) 0))))

(declare-fun lexTailRecV2!20 (LexerInterface!146 List!1182 BalanceConc!628 BalanceConc!628 BalanceConc!628 BalanceConc!630) tuple2!1148)

(assert (=> d!10335 (= lt!12485 (lexTailRecV2!20 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149)) (BalanceConc!629 Empty!312) (print!11 thiss!11059 (singletonSeq!6 lt!12149)) (BalanceConc!631 Empty!313)))))

(assert (=> d!10335 (= (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149))) lt!12485)))

(declare-fun b!61680 () Bool)

(assert (=> b!61680 (= e!36254 e!36253)))

(declare-fun res!37185 () Bool)

(assert (=> b!61680 (= res!37185 (< (size!1065 (_2!781 lt!12485)) (size!1065 (print!11 thiss!11059 (singletonSeq!6 lt!12149)))))))

(assert (=> b!61680 (=> (not res!37185) (not e!36253))))

(declare-fun b!61681 () Bool)

(declare-datatypes ((tuple2!1152 0))(
  ( (tuple2!1153 (_1!783 List!1183) (_2!783 List!1181)) )
))
(declare-fun lexList!23 (LexerInterface!146 List!1182 List!1181) tuple2!1152)

(assert (=> b!61681 (= e!36255 (= (list!320 (_2!781 lt!12485)) (_2!783 (lexList!23 thiss!11059 rules!1069 (list!320 (print!11 thiss!11059 (singletonSeq!6 lt!12149)))))))))

(declare-fun b!61682 () Bool)

(assert (=> b!61682 (= e!36254 (= (_2!781 lt!12485) (print!11 thiss!11059 (singletonSeq!6 lt!12149))))))

(declare-fun b!61683 () Bool)

(declare-fun res!37186 () Bool)

(assert (=> b!61683 (=> (not res!37186) (not e!36255))))

(assert (=> b!61683 (= res!37186 (= (list!318 (_1!781 lt!12485)) (_1!783 (lexList!23 thiss!11059 rules!1069 (list!320 (print!11 thiss!11059 (singletonSeq!6 lt!12149)))))))))

(assert (= (and d!10335 c!18514) b!61680))

(assert (= (and d!10335 (not c!18514)) b!61682))

(assert (= (and b!61680 res!37185) b!61679))

(assert (= (and d!10335 res!37184) b!61683))

(assert (= (and b!61683 res!37186) b!61681))

(declare-fun m!39126 () Bool)

(assert (=> b!61683 m!39126))

(assert (=> b!61683 m!38626))

(declare-fun m!39128 () Bool)

(assert (=> b!61683 m!39128))

(assert (=> b!61683 m!39128))

(declare-fun m!39130 () Bool)

(assert (=> b!61683 m!39130))

(declare-fun m!39132 () Bool)

(assert (=> b!61681 m!39132))

(assert (=> b!61681 m!38626))

(assert (=> b!61681 m!39128))

(assert (=> b!61681 m!39128))

(assert (=> b!61681 m!39130))

(declare-fun m!39134 () Bool)

(assert (=> b!61680 m!39134))

(assert (=> b!61680 m!38626))

(declare-fun m!39136 () Bool)

(assert (=> b!61680 m!39136))

(declare-fun m!39138 () Bool)

(assert (=> d!10335 m!39138))

(assert (=> d!10335 m!38626))

(assert (=> d!10335 m!38626))

(declare-fun m!39140 () Bool)

(assert (=> d!10335 m!39140))

(declare-fun m!39142 () Bool)

(assert (=> b!61679 m!39142))

(assert (=> b!61337 d!10335))

(declare-fun d!10337 () Bool)

(declare-fun lt!12488 () BalanceConc!628)

(declare-fun printList!3 (LexerInterface!146 List!1183) List!1181)

(assert (=> d!10337 (= (list!320 lt!12488) (printList!3 thiss!11059 (list!318 (singletonSeq!6 lt!12149))))))

(declare-fun printTailRec!3 (LexerInterface!146 BalanceConc!630 Int BalanceConc!628) BalanceConc!628)

(assert (=> d!10337 (= lt!12488 (printTailRec!3 thiss!11059 (singletonSeq!6 lt!12149) 0 (BalanceConc!629 Empty!312)))))

(assert (=> d!10337 (= (print!11 thiss!11059 (singletonSeq!6 lt!12149)) lt!12488)))

(declare-fun bs!7222 () Bool)

(assert (= bs!7222 d!10337))

(declare-fun m!39144 () Bool)

(assert (=> bs!7222 m!39144))

(assert (=> bs!7222 m!38622))

(assert (=> bs!7222 m!38624))

(assert (=> bs!7222 m!38624))

(declare-fun m!39146 () Bool)

(assert (=> bs!7222 m!39146))

(assert (=> bs!7222 m!38622))

(declare-fun m!39148 () Bool)

(assert (=> bs!7222 m!39148))

(assert (=> b!61337 d!10337))

(declare-fun d!10339 () Bool)

(declare-fun e!36258 () Bool)

(assert (=> d!10339 e!36258))

(declare-fun res!37189 () Bool)

(assert (=> d!10339 (=> (not res!37189) (not e!36258))))

(declare-fun lt!12491 () BalanceConc!630)

(assert (=> d!10339 (= res!37189 (= (list!318 lt!12491) (Cons!1177 lt!12149 Nil!1177)))))

(declare-fun singleton!4 (Token!272) BalanceConc!630)

(assert (=> d!10339 (= lt!12491 (singleton!4 lt!12149))))

(assert (=> d!10339 (= (singletonSeq!6 lt!12149) lt!12491)))

(declare-fun b!61686 () Bool)

(assert (=> b!61686 (= e!36258 (isBalanced!52 (c!18453 lt!12491)))))

(assert (= (and d!10339 res!37189) b!61686))

(declare-fun m!39150 () Bool)

(assert (=> d!10339 m!39150))

(declare-fun m!39152 () Bool)

(assert (=> d!10339 m!39152))

(declare-fun m!39154 () Bool)

(assert (=> b!61686 m!39154))

(assert (=> b!61337 d!10339))

(declare-fun d!10341 () Bool)

(assert (=> d!10341 (= (head!405 lt!12144) (h!6574 lt!12144))))

(assert (=> b!61421 d!10341))

(declare-fun d!10343 () Bool)

(declare-fun lt!12494 () Int)

(assert (=> d!10343 (>= lt!12494 0)))

(declare-fun e!36261 () Int)

(assert (=> d!10343 (= lt!12494 e!36261)))

(declare-fun c!18517 () Bool)

(assert (=> d!10343 (= c!18517 (is-Nil!1177 lt!12281))))

(assert (=> d!10343 (= (size!1072 lt!12281) lt!12494)))

(declare-fun b!61691 () Bool)

(assert (=> b!61691 (= e!36261 0)))

(declare-fun b!61692 () Bool)

(assert (=> b!61692 (= e!36261 (+ 1 (size!1072 (t!18334 lt!12281))))))

(assert (= (and d!10343 c!18517) b!61691))

(assert (= (and d!10343 (not c!18517)) b!61692))

(declare-fun m!39156 () Bool)

(assert (=> b!61692 m!39156))

(assert (=> b!61410 d!10343))

(declare-fun d!10345 () Bool)

(declare-fun c!18520 () Bool)

(assert (=> d!10345 (= c!18520 (is-Node!312 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152)))))))

(declare-fun e!36266 () Bool)

(assert (=> d!10345 (= (inv!1571 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152)))) e!36266)))

(declare-fun b!61699 () Bool)

(declare-fun inv!1581 (Conc!312) Bool)

(assert (=> b!61699 (= e!36266 (inv!1581 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152)))))))

(declare-fun b!61700 () Bool)

(declare-fun e!36267 () Bool)

(assert (=> b!61700 (= e!36266 e!36267)))

(declare-fun res!37192 () Bool)

(assert (=> b!61700 (= res!37192 (not (is-Leaf!575 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152))))))))

(assert (=> b!61700 (=> res!37192 e!36267)))

(declare-fun b!61701 () Bool)

(declare-fun inv!1582 (Conc!312) Bool)

(assert (=> b!61701 (= e!36267 (inv!1582 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152)))))))

(assert (= (and d!10345 c!18520) b!61699))

(assert (= (and d!10345 (not c!18520)) b!61700))

(assert (= (and b!61700 (not res!37192)) b!61701))

(declare-fun m!39158 () Bool)

(assert (=> b!61699 m!39158))

(declare-fun m!39160 () Bool)

(assert (=> b!61701 m!39160))

(assert (=> b!61313 d!10345))

(declare-fun d!10347 () Bool)

(declare-fun lt!12495 () Token!272)

(assert (=> d!10347 (= lt!12495 (apply!157 (list!318 (_1!781 lt!12207)) 0))))

(assert (=> d!10347 (= lt!12495 (apply!160 (c!18453 (_1!781 lt!12207)) 0))))

(declare-fun e!36268 () Bool)

(assert (=> d!10347 e!36268))

(declare-fun res!37193 () Bool)

(assert (=> d!10347 (=> (not res!37193) (not e!36268))))

(assert (=> d!10347 (= res!37193 (<= 0 0))))

(assert (=> d!10347 (= (apply!156 (_1!781 lt!12207) 0) lt!12495)))

(declare-fun b!61702 () Bool)

(assert (=> b!61702 (= e!36268 (< 0 (size!1066 (_1!781 lt!12207))))))

(assert (= (and d!10347 res!37193) b!61702))

(declare-fun m!39162 () Bool)

(assert (=> d!10347 m!39162))

(assert (=> d!10347 m!39162))

(declare-fun m!39164 () Bool)

(assert (=> d!10347 m!39164))

(declare-fun m!39166 () Bool)

(assert (=> d!10347 m!39166))

(assert (=> b!61702 m!38628))

(assert (=> b!61335 d!10347))

(declare-fun d!10349 () Bool)

(declare-fun lt!12496 () Int)

(assert (=> d!10349 (>= lt!12496 0)))

(declare-fun e!36269 () Int)

(assert (=> d!10349 (= lt!12496 e!36269)))

(declare-fun c!18521 () Bool)

(assert (=> d!10349 (= c!18521 (is-Nil!1177 lt!12144))))

(assert (=> d!10349 (= (size!1072 lt!12144) lt!12496)))

(declare-fun b!61703 () Bool)

(assert (=> b!61703 (= e!36269 0)))

(declare-fun b!61704 () Bool)

(assert (=> b!61704 (= e!36269 (+ 1 (size!1072 (t!18334 lt!12144))))))

(assert (= (and d!10349 c!18521) b!61703))

(assert (= (and d!10349 (not c!18521)) b!61704))

(declare-fun m!39168 () Bool)

(assert (=> b!61704 m!39168))

(assert (=> bm!3542 d!10349))

(declare-fun bs!7223 () Bool)

(declare-fun d!10351 () Bool)

(assert (= bs!7223 (and d!10351 d!10243)))

(declare-fun lambda!1202 () Int)

(assert (=> bs!7223 (= lambda!1202 lambda!1194)))

(declare-fun b!61713 () Bool)

(declare-fun e!36278 () Bool)

(assert (=> b!61713 (= e!36278 true)))

(declare-fun b!61712 () Bool)

(declare-fun e!36277 () Bool)

(assert (=> b!61712 (= e!36277 e!36278)))

(declare-fun b!61711 () Bool)

(declare-fun e!36276 () Bool)

(assert (=> b!61711 (= e!36276 e!36277)))

(assert (=> d!10351 e!36276))

(assert (= b!61712 b!61713))

(assert (= b!61711 b!61712))

(assert (= (and d!10351 (is-Cons!1176 rules!1069)) b!61711))

(assert (=> b!61713 (< (dynLambda!240 order!405 (toValue!737 (transformation!254 (h!6573 rules!1069)))) (dynLambda!241 order!407 lambda!1202))))

(assert (=> b!61713 (< (dynLambda!242 order!409 (toChars!596 (transformation!254 (h!6573 rules!1069)))) (dynLambda!241 order!407 lambda!1202))))

(assert (=> d!10351 true))

(declare-fun lt!12499 () Bool)

(assert (=> d!10351 (= lt!12499 (forall!156 (list!318 v!6227) lambda!1202))))

(declare-fun e!36274 () Bool)

(assert (=> d!10351 (= lt!12499 e!36274)))

(declare-fun res!37198 () Bool)

(assert (=> d!10351 (=> res!37198 e!36274)))

(assert (=> d!10351 (= res!37198 (not (is-Cons!1177 (list!318 v!6227))))))

(assert (=> d!10351 (not (isEmpty!256 rules!1069))))

(assert (=> d!10351 (= (rulesProduceEachTokenIndividuallyList!52 thiss!11059 rules!1069 (list!318 v!6227)) lt!12499)))

(declare-fun b!61709 () Bool)

(declare-fun e!36275 () Bool)

(assert (=> b!61709 (= e!36274 e!36275)))

(declare-fun res!37199 () Bool)

(assert (=> b!61709 (=> (not res!37199) (not e!36275))))

(assert (=> b!61709 (= res!37199 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 (h!6574 (list!318 v!6227))))))

(declare-fun b!61710 () Bool)

(assert (=> b!61710 (= e!36275 (rulesProduceEachTokenIndividuallyList!52 thiss!11059 rules!1069 (t!18334 (list!318 v!6227))))))

(assert (= (and d!10351 (not res!37198)) b!61709))

(assert (= (and b!61709 res!37199) b!61710))

(assert (=> d!10351 m!38478))

(declare-fun m!39170 () Bool)

(assert (=> d!10351 m!39170))

(assert (=> d!10351 m!38450))

(declare-fun m!39172 () Bool)

(assert (=> b!61709 m!39172))

(declare-fun m!39174 () Bool)

(assert (=> b!61710 m!39174))

(assert (=> b!61460 d!10351))

(assert (=> b!61460 d!10207))

(assert (=> b!61437 d!10255))

(declare-fun b!61722 () Bool)

(declare-fun e!36283 () List!1183)

(assert (=> b!61722 (= e!36283 Nil!1177)))

(declare-fun b!61725 () Bool)

(declare-fun e!36284 () List!1183)

(declare-fun ++!67 (List!1183 List!1183) List!1183)

(assert (=> b!61725 (= e!36284 (++!67 (list!321 (left!897 (c!18453 v!6227))) (list!321 (right!1227 (c!18453 v!6227)))))))

(declare-fun d!10355 () Bool)

(declare-fun c!18526 () Bool)

(assert (=> d!10355 (= c!18526 (is-Empty!313 (c!18453 v!6227)))))

(assert (=> d!10355 (= (list!321 (c!18453 v!6227)) e!36283)))

(declare-fun b!61723 () Bool)

(assert (=> b!61723 (= e!36283 e!36284)))

(declare-fun c!18527 () Bool)

(assert (=> b!61723 (= c!18527 (is-Leaf!576 (c!18453 v!6227)))))

(declare-fun b!61724 () Bool)

(declare-fun list!324 (IArray!627) List!1183)

(assert (=> b!61724 (= e!36284 (list!324 (xs!2892 (c!18453 v!6227))))))

(assert (= (and d!10355 c!18526) b!61722))

(assert (= (and d!10355 (not c!18526)) b!61723))

(assert (= (and b!61723 c!18527) b!61724))

(assert (= (and b!61723 (not c!18527)) b!61725))

(declare-fun m!39176 () Bool)

(assert (=> b!61725 m!39176))

(declare-fun m!39178 () Bool)

(assert (=> b!61725 m!39178))

(assert (=> b!61725 m!39176))

(assert (=> b!61725 m!39178))

(declare-fun m!39180 () Bool)

(assert (=> b!61725 m!39180))

(declare-fun m!39182 () Bool)

(assert (=> b!61724 m!39182))

(assert (=> d!10207 d!10355))

(assert (=> d!10195 d!10193))

(declare-fun d!10357 () Bool)

(assert (=> d!10357 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12152)))

(assert (=> d!10357 true))

(declare-fun _$77!364 () Unit!687)

(assert (=> d!10357 (= (choose!1237 thiss!11059 rules!1069 lt!12144 lt!12152) _$77!364)))

(declare-fun bs!7228 () Bool)

(assert (= bs!7228 d!10357))

(assert (=> bs!7228 m!38452))

(assert (=> d!10195 d!10357))

(assert (=> d!10195 d!10263))

(assert (=> b!61425 d!10341))

(declare-fun d!10383 () Bool)

(assert (=> d!10383 (= (inv!1575 (xs!2892 (c!18453 v!6227))) (<= (size!1072 (innerList!371 (xs!2892 (c!18453 v!6227)))) 2147483647))))

(declare-fun bs!7229 () Bool)

(assert (= bs!7229 d!10383))

(declare-fun m!39224 () Bool)

(assert (=> bs!7229 m!39224))

(assert (=> b!61513 d!10383))

(declare-fun d!10385 () Bool)

(assert (=> d!10385 true))

(declare-fun lambda!1205 () Int)

(declare-fun order!417 () Int)

(declare-fun dynLambda!247 (Int Int) Int)

(assert (=> d!10385 (< (dynLambda!242 order!409 (toChars!596 (transformation!254 (h!6573 rules!1069)))) (dynLambda!247 order!417 lambda!1205))))

(assert (=> d!10385 true))

(assert (=> d!10385 (< (dynLambda!240 order!405 (toValue!737 (transformation!254 (h!6573 rules!1069)))) (dynLambda!247 order!417 lambda!1205))))

(declare-fun Forall!26 (Int) Bool)

(assert (=> d!10385 (= (semiInverseModEq!34 (toChars!596 (transformation!254 (h!6573 rules!1069))) (toValue!737 (transformation!254 (h!6573 rules!1069)))) (Forall!26 lambda!1205))))

(declare-fun bs!7230 () Bool)

(assert (= bs!7230 d!10385))

(declare-fun m!39226 () Bool)

(assert (=> bs!7230 m!39226))

(assert (=> d!10259 d!10385))

(declare-fun d!10387 () Bool)

(declare-fun lt!12510 () Bool)

(assert (=> d!10387 (= lt!12510 (set.member lt!12149 (content!46 (list!318 v!6227))))))

(declare-fun e!36305 () Bool)

(assert (=> d!10387 (= lt!12510 e!36305)))

(declare-fun res!37211 () Bool)

(assert (=> d!10387 (=> (not res!37211) (not e!36305))))

(assert (=> d!10387 (= res!37211 (is-Cons!1177 (list!318 v!6227)))))

(assert (=> d!10387 (= (contains!173 (list!318 v!6227) lt!12149) lt!12510)))

(declare-fun b!61758 () Bool)

(declare-fun e!36304 () Bool)

(assert (=> b!61758 (= e!36305 e!36304)))

(declare-fun res!37210 () Bool)

(assert (=> b!61758 (=> res!37210 e!36304)))

(assert (=> b!61758 (= res!37210 (= (h!6574 (list!318 v!6227)) lt!12149))))

(declare-fun b!61759 () Bool)

(assert (=> b!61759 (= e!36304 (contains!173 (t!18334 (list!318 v!6227)) lt!12149))))

(assert (= (and d!10387 res!37211) b!61758))

(assert (= (and b!61758 (not res!37210)) b!61759))

(assert (=> d!10387 m!38478))

(declare-fun m!39228 () Bool)

(assert (=> d!10387 m!39228))

(declare-fun m!39230 () Bool)

(assert (=> d!10387 m!39230))

(declare-fun m!39232 () Bool)

(assert (=> b!61759 m!39232))

(assert (=> d!10223 d!10387))

(assert (=> d!10223 d!10207))

(declare-fun d!10389 () Bool)

(declare-fun lt!12513 () Bool)

(assert (=> d!10389 (= lt!12513 (contains!173 (list!321 (c!18453 v!6227)) lt!12149))))

(declare-fun e!36314 () Bool)

(assert (=> d!10389 (= lt!12513 e!36314)))

(declare-fun res!37217 () Bool)

(assert (=> d!10389 (=> (not res!37217) (not e!36314))))

(assert (=> d!10389 (= res!37217 (not (is-Empty!313 (c!18453 v!6227))))))

(assert (=> d!10389 (= (contains!176 (c!18453 v!6227) lt!12149) lt!12513)))

(declare-fun b!61770 () Bool)

(declare-fun e!36313 () Bool)

(declare-fun e!36312 () Bool)

(assert (=> b!61770 (= e!36313 e!36312)))

(declare-fun res!37216 () Bool)

(assert (=> b!61770 (= res!37216 (contains!176 (left!897 (c!18453 v!6227)) lt!12149))))

(assert (=> b!61770 (=> res!37216 e!36312)))

(declare-fun b!61768 () Bool)

(assert (=> b!61768 (= e!36314 e!36313)))

(declare-fun c!18539 () Bool)

(assert (=> b!61768 (= c!18539 (is-Leaf!576 (c!18453 v!6227)))))

(declare-fun b!61771 () Bool)

(assert (=> b!61771 (= e!36312 (contains!176 (right!1227 (c!18453 v!6227)) lt!12149))))

(declare-fun b!61769 () Bool)

(declare-fun contains!178 (IArray!627 Token!272) Bool)

(assert (=> b!61769 (= e!36313 (contains!178 (xs!2892 (c!18453 v!6227)) lt!12149))))

(assert (= (and d!10389 res!37217) b!61768))

(assert (= (and b!61768 c!18539) b!61769))

(assert (= (and b!61768 (not c!18539)) b!61770))

(assert (= (and b!61770 (not res!37216)) b!61771))

(assert (=> d!10389 m!38616))

(assert (=> d!10389 m!38616))

(declare-fun m!39234 () Bool)

(assert (=> d!10389 m!39234))

(declare-fun m!39236 () Bool)

(assert (=> b!61770 m!39236))

(declare-fun m!39238 () Bool)

(assert (=> b!61771 m!39238))

(declare-fun m!39240 () Bool)

(assert (=> b!61769 m!39240))

(assert (=> d!10223 d!10389))

(declare-fun d!10391 () Bool)

(declare-fun lt!12514 () Bool)

(assert (=> d!10391 (= lt!12514 (isEmpty!260 (list!320 (_2!781 lt!12209))))))

(assert (=> d!10391 (= lt!12514 (isEmpty!261 (c!18451 (_2!781 lt!12209))))))

(assert (=> d!10391 (= (isEmpty!258 (_2!781 lt!12209)) lt!12514)))

(declare-fun bs!7231 () Bool)

(assert (= bs!7231 d!10391))

(declare-fun m!39242 () Bool)

(assert (=> bs!7231 m!39242))

(assert (=> bs!7231 m!39242))

(declare-fun m!39244 () Bool)

(assert (=> bs!7231 m!39244))

(declare-fun m!39246 () Bool)

(assert (=> bs!7231 m!39246))

(assert (=> b!61339 d!10391))

(declare-fun b!61772 () Bool)

(declare-fun e!36317 () Int)

(declare-fun call!3553 () Int)

(assert (=> b!61772 (= e!36317 (- call!3553 (- (+ 1 from!821) 1)))))

(declare-fun b!61773 () Bool)

(declare-fun e!36319 () List!1183)

(assert (=> b!61773 (= e!36319 (drop!67 (t!18334 (t!18334 lt!12144)) (- (- (+ 1 from!821) 1) 1)))))

(declare-fun b!61774 () Bool)

(assert (=> b!61774 (= e!36317 0)))

(declare-fun b!61775 () Bool)

(declare-fun e!36315 () Int)

(assert (=> b!61775 (= e!36315 call!3553)))

(declare-fun b!61776 () Bool)

(declare-fun e!36318 () List!1183)

(assert (=> b!61776 (= e!36318 Nil!1177)))

(declare-fun d!10393 () Bool)

(declare-fun e!36316 () Bool)

(assert (=> d!10393 e!36316))

(declare-fun res!37218 () Bool)

(assert (=> d!10393 (=> (not res!37218) (not e!36316))))

(declare-fun lt!12515 () List!1183)

(assert (=> d!10393 (= res!37218 (set.subset (content!46 lt!12515) (content!46 (t!18334 lt!12144))))))

(assert (=> d!10393 (= lt!12515 e!36318)))

(declare-fun c!18543 () Bool)

(assert (=> d!10393 (= c!18543 (is-Nil!1177 (t!18334 lt!12144)))))

(assert (=> d!10393 (= (drop!67 (t!18334 lt!12144) (- (+ 1 from!821) 1)) lt!12515)))

(declare-fun b!61777 () Bool)

(assert (=> b!61777 (= e!36319 (t!18334 lt!12144))))

(declare-fun b!61778 () Bool)

(assert (=> b!61778 (= e!36318 e!36319)))

(declare-fun c!18541 () Bool)

(assert (=> b!61778 (= c!18541 (<= (- (+ 1 from!821) 1) 0))))

(declare-fun bm!3548 () Bool)

(assert (=> bm!3548 (= call!3553 (size!1072 (t!18334 lt!12144)))))

(declare-fun b!61779 () Bool)

(assert (=> b!61779 (= e!36315 e!36317)))

(declare-fun c!18542 () Bool)

(assert (=> b!61779 (= c!18542 (>= (- (+ 1 from!821) 1) call!3553))))

(declare-fun b!61780 () Bool)

(assert (=> b!61780 (= e!36316 (= (size!1072 lt!12515) e!36315))))

(declare-fun c!18540 () Bool)

(assert (=> b!61780 (= c!18540 (<= (- (+ 1 from!821) 1) 0))))

(assert (= (and d!10393 c!18543) b!61776))

(assert (= (and d!10393 (not c!18543)) b!61778))

(assert (= (and b!61778 c!18541) b!61777))

(assert (= (and b!61778 (not c!18541)) b!61773))

(assert (= (and d!10393 res!37218) b!61780))

(assert (= (and b!61780 c!18540) b!61775))

(assert (= (and b!61780 (not c!18540)) b!61779))

(assert (= (and b!61779 c!18542) b!61774))

(assert (= (and b!61779 (not c!18542)) b!61772))

(assert (= (or b!61775 b!61779 b!61772) bm!3548))

(declare-fun m!39248 () Bool)

(assert (=> b!61773 m!39248))

(declare-fun m!39250 () Bool)

(assert (=> d!10393 m!39250))

(assert (=> d!10393 m!39058))

(assert (=> bm!3548 m!39168))

(declare-fun m!39252 () Bool)

(assert (=> b!61780 m!39252))

(assert (=> b!61394 d!10393))

(declare-fun d!10395 () Bool)

(declare-fun res!37219 () Bool)

(declare-fun e!36320 () Bool)

(assert (=> d!10395 (=> res!37219 e!36320)))

(assert (=> d!10395 (= res!37219 (or (not (is-Cons!1177 (dropList!9 v!6227 (+ 1 from!821)))) (not (is-Cons!1177 (t!18334 (dropList!9 v!6227 (+ 1 from!821)))))))))

(assert (=> d!10395 (= (tokensListTwoByTwoPredicateList!1 thiss!11059 (dropList!9 v!6227 (+ 1 from!821)) rules!1069 pred!6) e!36320)))

(declare-fun b!61781 () Bool)

(declare-fun e!36321 () Bool)

(assert (=> b!61781 (= e!36320 e!36321)))

(declare-fun res!37220 () Bool)

(assert (=> b!61781 (=> (not res!37220) (not e!36321))))

(assert (=> b!61781 (= res!37220 (dynLambda!237 pred!6 (h!6574 (dropList!9 v!6227 (+ 1 from!821))) (h!6574 (t!18334 (dropList!9 v!6227 (+ 1 from!821)))) rules!1069))))

(declare-fun b!61782 () Bool)

(assert (=> b!61782 (= e!36321 (tokensListTwoByTwoPredicateList!1 thiss!11059 (Cons!1177 (h!6574 (t!18334 (dropList!9 v!6227 (+ 1 from!821)))) (t!18334 (t!18334 (dropList!9 v!6227 (+ 1 from!821))))) rules!1069 pred!6))))

(assert (= (and d!10395 (not res!37219)) b!61781))

(assert (= (and b!61781 res!37220) b!61782))

(declare-fun b_lambda!501 () Bool)

(assert (=> (not b_lambda!501) (not b!61781)))

(declare-fun t!18385 () Bool)

(declare-fun tb!873 () Bool)

(assert (=> (and start!4808 (= pred!6 pred!6) t!18385) tb!873))

(declare-fun result!1774 () Bool)

(assert (=> tb!873 (= result!1774 true)))

(assert (=> b!61781 t!18385))

(declare-fun b_and!2401 () Bool)

(assert (= b_and!2397 (and (=> t!18385 result!1774) b_and!2401)))

(declare-fun m!39254 () Bool)

(assert (=> b!61781 m!39254))

(declare-fun m!39256 () Bool)

(assert (=> b!61782 m!39256))

(assert (=> d!10237 d!10395))

(declare-fun d!10397 () Bool)

(assert (=> d!10397 (= (dropList!9 v!6227 (+ 1 from!821)) (drop!67 (list!321 (c!18453 v!6227)) (+ 1 from!821)))))

(declare-fun bs!7232 () Bool)

(assert (= bs!7232 d!10397))

(assert (=> bs!7232 m!38616))

(assert (=> bs!7232 m!38616))

(declare-fun m!39258 () Bool)

(assert (=> bs!7232 m!39258))

(assert (=> d!10237 d!10397))

(assert (=> d!10237 d!10255))

(declare-fun d!10399 () Bool)

(declare-fun res!37225 () Bool)

(declare-fun e!36326 () Bool)

(assert (=> d!10399 (=> res!37225 e!36326)))

(assert (=> d!10399 (= res!37225 (is-Nil!1176 rules!1069))))

(assert (=> d!10399 (= (noDuplicateTag!42 thiss!11059 rules!1069 Nil!1182) e!36326)))

(declare-fun b!61787 () Bool)

(declare-fun e!36327 () Bool)

(assert (=> b!61787 (= e!36326 e!36327)))

(declare-fun res!37226 () Bool)

(assert (=> b!61787 (=> (not res!37226) (not e!36327))))

(declare-fun contains!179 (List!1188 String!1614) Bool)

(assert (=> b!61787 (= res!37226 (not (contains!179 Nil!1182 (tag!432 (h!6573 rules!1069)))))))

(declare-fun b!61788 () Bool)

(assert (=> b!61788 (= e!36327 (noDuplicateTag!42 thiss!11059 (t!18333 rules!1069) (Cons!1182 (tag!432 (h!6573 rules!1069)) Nil!1182)))))

(assert (= (and d!10399 (not res!37225)) b!61787))

(assert (= (and b!61787 res!37226) b!61788))

(declare-fun m!39260 () Bool)

(assert (=> b!61787 m!39260))

(declare-fun m!39262 () Bool)

(assert (=> b!61788 m!39262))

(assert (=> b!61316 d!10399))

(declare-fun d!10401 () Bool)

(declare-fun isBalanced!54 (Conc!312) Bool)

(assert (=> d!10401 (= (inv!1572 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152))) (isBalanced!54 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152)))))))

(declare-fun bs!7233 () Bool)

(assert (= bs!7233 d!10401))

(declare-fun m!39264 () Bool)

(assert (=> bs!7233 m!39264))

(assert (=> tb!851 d!10401))

(declare-fun d!10403 () Bool)

(declare-fun list!325 (Conc!312) List!1181)

(assert (=> d!10403 (= (list!320 lt!12196) (list!325 (c!18451 lt!12196)))))

(declare-fun bs!7234 () Bool)

(assert (= bs!7234 d!10403))

(declare-fun m!39266 () Bool)

(assert (=> bs!7234 m!39266))

(assert (=> d!10177 d!10403))

(declare-fun b!61789 () Bool)

(declare-fun e!36330 () Int)

(declare-fun call!3554 () Int)

(assert (=> b!61789 (= e!36330 (- call!3554 (- (+ 2 from!821) 1)))))

(declare-fun b!61790 () Bool)

(declare-fun e!36332 () List!1183)

(assert (=> b!61790 (= e!36332 (drop!67 (t!18334 (t!18334 lt!12144)) (- (- (+ 2 from!821) 1) 1)))))

(declare-fun b!61791 () Bool)

(assert (=> b!61791 (= e!36330 0)))

(declare-fun b!61792 () Bool)

(declare-fun e!36328 () Int)

(assert (=> b!61792 (= e!36328 call!3554)))

(declare-fun b!61793 () Bool)

(declare-fun e!36331 () List!1183)

(assert (=> b!61793 (= e!36331 Nil!1177)))

(declare-fun d!10405 () Bool)

(declare-fun e!36329 () Bool)

(assert (=> d!10405 e!36329))

(declare-fun res!37227 () Bool)

(assert (=> d!10405 (=> (not res!37227) (not e!36329))))

(declare-fun lt!12516 () List!1183)

(assert (=> d!10405 (= res!37227 (set.subset (content!46 lt!12516) (content!46 (t!18334 lt!12144))))))

(assert (=> d!10405 (= lt!12516 e!36331)))

(declare-fun c!18547 () Bool)

(assert (=> d!10405 (= c!18547 (is-Nil!1177 (t!18334 lt!12144)))))

(assert (=> d!10405 (= (drop!67 (t!18334 lt!12144) (- (+ 2 from!821) 1)) lt!12516)))

(declare-fun b!61794 () Bool)

(assert (=> b!61794 (= e!36332 (t!18334 lt!12144))))

(declare-fun b!61795 () Bool)

(assert (=> b!61795 (= e!36331 e!36332)))

(declare-fun c!18545 () Bool)

(assert (=> b!61795 (= c!18545 (<= (- (+ 2 from!821) 1) 0))))

(declare-fun bm!3549 () Bool)

(assert (=> bm!3549 (= call!3554 (size!1072 (t!18334 lt!12144)))))

(declare-fun b!61796 () Bool)

(assert (=> b!61796 (= e!36328 e!36330)))

(declare-fun c!18546 () Bool)

(assert (=> b!61796 (= c!18546 (>= (- (+ 2 from!821) 1) call!3554))))

(declare-fun b!61797 () Bool)

(assert (=> b!61797 (= e!36329 (= (size!1072 lt!12516) e!36328))))

(declare-fun c!18544 () Bool)

(assert (=> b!61797 (= c!18544 (<= (- (+ 2 from!821) 1) 0))))

(assert (= (and d!10405 c!18547) b!61793))

(assert (= (and d!10405 (not c!18547)) b!61795))

(assert (= (and b!61795 c!18545) b!61794))

(assert (= (and b!61795 (not c!18545)) b!61790))

(assert (= (and d!10405 res!37227) b!61797))

(assert (= (and b!61797 c!18544) b!61792))

(assert (= (and b!61797 (not c!18544)) b!61796))

(assert (= (and b!61796 c!18546) b!61791))

(assert (= (and b!61796 (not c!18546)) b!61789))

(assert (= (or b!61792 b!61796 b!61789) bm!3549))

(declare-fun m!39268 () Bool)

(assert (=> b!61790 m!39268))

(declare-fun m!39270 () Bool)

(assert (=> d!10405 m!39270))

(assert (=> d!10405 m!39058))

(assert (=> bm!3549 m!39168))

(declare-fun m!39272 () Bool)

(assert (=> b!61797 m!39272))

(assert (=> b!61403 d!10405))

(declare-fun d!10407 () Bool)

(declare-fun c!18550 () Bool)

(assert (=> d!10407 (= c!18550 (is-Nil!1177 lt!12280))))

(declare-fun e!36335 () (Set Token!272))

(assert (=> d!10407 (= (content!46 lt!12280) e!36335)))

(declare-fun b!61802 () Bool)

(assert (=> b!61802 (= e!36335 (as set.empty (Set Token!272)))))

(declare-fun b!61803 () Bool)

(assert (=> b!61803 (= e!36335 (set.union (set.insert (h!6574 lt!12280) (as set.empty (Set Token!272))) (content!46 (t!18334 lt!12280))))))

(assert (= (and d!10407 c!18550) b!61802))

(assert (= (and d!10407 (not c!18550)) b!61803))

(declare-fun m!39274 () Bool)

(assert (=> b!61803 m!39274))

(declare-fun m!39276 () Bool)

(assert (=> b!61803 m!39276))

(assert (=> d!10219 d!10407))

(declare-fun d!10409 () Bool)

(declare-fun c!18551 () Bool)

(assert (=> d!10409 (= c!18551 (is-Nil!1177 lt!12144))))

(declare-fun e!36336 () (Set Token!272))

(assert (=> d!10409 (= (content!46 lt!12144) e!36336)))

(declare-fun b!61804 () Bool)

(assert (=> b!61804 (= e!36336 (as set.empty (Set Token!272)))))

(declare-fun b!61805 () Bool)

(assert (=> b!61805 (= e!36336 (set.union (set.insert (h!6574 lt!12144) (as set.empty (Set Token!272))) (content!46 (t!18334 lt!12144))))))

(assert (= (and d!10409 c!18551) b!61804))

(assert (= (and d!10409 (not c!18551)) b!61805))

(declare-fun m!39278 () Bool)

(assert (=> b!61805 m!39278))

(assert (=> b!61805 m!39058))

(assert (=> d!10219 d!10409))

(declare-fun d!10411 () Bool)

(assert (=> d!10411 (= (tail!89 (drop!67 lt!12144 from!821)) (t!18334 (drop!67 lt!12144 from!821)))))

(assert (=> d!10213 d!10411))

(assert (=> d!10213 d!10203))

(declare-fun b!61806 () Bool)

(declare-fun e!36339 () Int)

(declare-fun call!3555 () Int)

(assert (=> b!61806 (= e!36339 (- call!3555 (+ from!821 1)))))

(declare-fun b!61807 () Bool)

(declare-fun e!36341 () List!1183)

(assert (=> b!61807 (= e!36341 (drop!67 (t!18334 lt!12144) (- (+ from!821 1) 1)))))

(declare-fun b!61808 () Bool)

(assert (=> b!61808 (= e!36339 0)))

(declare-fun b!61809 () Bool)

(declare-fun e!36337 () Int)

(assert (=> b!61809 (= e!36337 call!3555)))

(declare-fun b!61810 () Bool)

(declare-fun e!36340 () List!1183)

(assert (=> b!61810 (= e!36340 Nil!1177)))

(declare-fun d!10413 () Bool)

(declare-fun e!36338 () Bool)

(assert (=> d!10413 e!36338))

(declare-fun res!37228 () Bool)

(assert (=> d!10413 (=> (not res!37228) (not e!36338))))

(declare-fun lt!12517 () List!1183)

(assert (=> d!10413 (= res!37228 (set.subset (content!46 lt!12517) (content!46 lt!12144)))))

(assert (=> d!10413 (= lt!12517 e!36340)))

(declare-fun c!18555 () Bool)

(assert (=> d!10413 (= c!18555 (is-Nil!1177 lt!12144))))

(assert (=> d!10413 (= (drop!67 lt!12144 (+ from!821 1)) lt!12517)))

(declare-fun b!61811 () Bool)

(assert (=> b!61811 (= e!36341 lt!12144)))

(declare-fun b!61812 () Bool)

(assert (=> b!61812 (= e!36340 e!36341)))

(declare-fun c!18553 () Bool)

(assert (=> b!61812 (= c!18553 (<= (+ from!821 1) 0))))

(declare-fun bm!3550 () Bool)

(assert (=> bm!3550 (= call!3555 (size!1072 lt!12144))))

(declare-fun b!61813 () Bool)

(assert (=> b!61813 (= e!36337 e!36339)))

(declare-fun c!18554 () Bool)

(assert (=> b!61813 (= c!18554 (>= (+ from!821 1) call!3555))))

(declare-fun b!61814 () Bool)

(assert (=> b!61814 (= e!36338 (= (size!1072 lt!12517) e!36337))))

(declare-fun c!18552 () Bool)

(assert (=> b!61814 (= c!18552 (<= (+ from!821 1) 0))))

(assert (= (and d!10413 c!18555) b!61810))

(assert (= (and d!10413 (not c!18555)) b!61812))

(assert (= (and b!61812 c!18553) b!61811))

(assert (= (and b!61812 (not c!18553)) b!61807))

(assert (= (and d!10413 res!37228) b!61814))

(assert (= (and b!61814 c!18552) b!61809))

(assert (= (and b!61814 (not c!18552)) b!61813))

(assert (= (and b!61813 c!18554) b!61808))

(assert (= (and b!61813 (not c!18554)) b!61806))

(assert (= (or b!61809 b!61813 b!61806) bm!3550))

(declare-fun m!39280 () Bool)

(assert (=> b!61807 m!39280))

(declare-fun m!39282 () Bool)

(assert (=> d!10413 m!39282))

(assert (=> d!10413 m!38604))

(assert (=> bm!3550 m!38674))

(declare-fun m!39284 () Bool)

(assert (=> b!61814 m!39284))

(assert (=> d!10213 d!10413))

(declare-fun d!10415 () Bool)

(assert (=> d!10415 (= (tail!89 (drop!67 lt!12144 from!821)) (drop!67 lt!12144 (+ from!821 1)))))

(assert (=> d!10415 true))

(declare-fun _$28!249 () Unit!687)

(assert (=> d!10415 (= (choose!1238 lt!12144 from!821) _$28!249)))

(declare-fun bs!7235 () Bool)

(assert (= bs!7235 d!10415))

(assert (=> bs!7235 m!38498))

(assert (=> bs!7235 m!38498))

(assert (=> bs!7235 m!38682))

(assert (=> bs!7235 m!38684))

(assert (=> d!10213 d!10415))

(declare-fun d!10417 () Bool)

(declare-fun lt!12518 () Token!272)

(assert (=> d!10417 (contains!173 (list!318 v!6227) lt!12518)))

(declare-fun e!36343 () Token!272)

(assert (=> d!10417 (= lt!12518 e!36343)))

(declare-fun c!18556 () Bool)

(assert (=> d!10417 (= c!18556 (= from!821 0))))

(declare-fun e!36342 () Bool)

(assert (=> d!10417 e!36342))

(declare-fun res!37229 () Bool)

(assert (=> d!10417 (=> (not res!37229) (not e!36342))))

(assert (=> d!10417 (= res!37229 (<= 0 from!821))))

(assert (=> d!10417 (= (apply!157 (list!318 v!6227) from!821) lt!12518)))

(declare-fun b!61815 () Bool)

(assert (=> b!61815 (= e!36342 (< from!821 (size!1072 (list!318 v!6227))))))

(declare-fun b!61816 () Bool)

(assert (=> b!61816 (= e!36343 (head!405 (list!318 v!6227)))))

(declare-fun b!61817 () Bool)

(assert (=> b!61817 (= e!36343 (apply!157 (tail!89 (list!318 v!6227)) (- from!821 1)))))

(assert (= (and d!10417 res!37229) b!61815))

(assert (= (and d!10417 c!18556) b!61816))

(assert (= (and d!10417 (not c!18556)) b!61817))

(assert (=> d!10417 m!38478))

(declare-fun m!39286 () Bool)

(assert (=> d!10417 m!39286))

(assert (=> b!61815 m!38478))

(assert (=> b!61815 m!38904))

(assert (=> b!61816 m!38478))

(declare-fun m!39288 () Bool)

(assert (=> b!61816 m!39288))

(assert (=> b!61817 m!38478))

(declare-fun m!39290 () Bool)

(assert (=> b!61817 m!39290))

(assert (=> b!61817 m!39290))

(declare-fun m!39292 () Bool)

(assert (=> b!61817 m!39292))

(assert (=> d!10205 d!10417))

(assert (=> d!10205 d!10207))

(declare-fun b!61832 () Bool)

(declare-fun e!36353 () Token!272)

(declare-fun call!3558 () Token!272)

(assert (=> b!61832 (= e!36353 call!3558)))

(declare-fun b!61833 () Bool)

(declare-fun e!36355 () Int)

(assert (=> b!61833 (= e!36355 from!821)))

(declare-fun b!61834 () Bool)

(declare-fun e!36354 () Token!272)

(declare-fun apply!162 (IArray!627 Int) Token!272)

(assert (=> b!61834 (= e!36354 (apply!162 (xs!2892 (c!18453 v!6227)) from!821))))

(declare-fun d!10419 () Bool)

(declare-fun lt!12524 () Token!272)

(assert (=> d!10419 (= lt!12524 (apply!157 (list!321 (c!18453 v!6227)) from!821))))

(assert (=> d!10419 (= lt!12524 e!36354)))

(declare-fun c!18564 () Bool)

(assert (=> d!10419 (= c!18564 (is-Leaf!576 (c!18453 v!6227)))))

(declare-fun e!36352 () Bool)

(assert (=> d!10419 e!36352))

(declare-fun res!37232 () Bool)

(assert (=> d!10419 (=> (not res!37232) (not e!36352))))

(assert (=> d!10419 (= res!37232 (<= 0 from!821))))

(assert (=> d!10419 (= (apply!160 (c!18453 v!6227) from!821) lt!12524)))

(declare-fun b!61835 () Bool)

(assert (=> b!61835 (= e!36352 (< from!821 (size!1073 (c!18453 v!6227))))))

(declare-fun bm!3553 () Bool)

(declare-fun c!18565 () Bool)

(declare-fun c!18563 () Bool)

(assert (=> bm!3553 (= c!18565 c!18563)))

(assert (=> bm!3553 (= call!3558 (apply!160 (ite c!18563 (left!897 (c!18453 v!6227)) (right!1227 (c!18453 v!6227))) e!36355))))

(declare-fun b!61836 () Bool)

(assert (=> b!61836 (= e!36355 (- from!821 (size!1073 (left!897 (c!18453 v!6227)))))))

(declare-fun b!61837 () Bool)

(assert (=> b!61837 (= e!36353 call!3558)))

(declare-fun b!61838 () Bool)

(assert (=> b!61838 (= e!36354 e!36353)))

(declare-fun lt!12523 () Bool)

(declare-fun appendIndex!3 (List!1183 List!1183 Int) Bool)

(assert (=> b!61838 (= lt!12523 (appendIndex!3 (list!321 (left!897 (c!18453 v!6227))) (list!321 (right!1227 (c!18453 v!6227))) from!821))))

(assert (=> b!61838 (= c!18563 (< from!821 (size!1073 (left!897 (c!18453 v!6227)))))))

(assert (= (and d!10419 res!37232) b!61835))

(assert (= (and d!10419 c!18564) b!61834))

(assert (= (and d!10419 (not c!18564)) b!61838))

(assert (= (and b!61838 c!18563) b!61832))

(assert (= (and b!61838 (not c!18563)) b!61837))

(assert (= (or b!61832 b!61837) bm!3553))

(assert (= (and bm!3553 c!18565) b!61833))

(assert (= (and bm!3553 (not c!18565)) b!61836))

(declare-fun m!39294 () Bool)

(assert (=> bm!3553 m!39294))

(declare-fun m!39296 () Bool)

(assert (=> b!61836 m!39296))

(assert (=> d!10419 m!38616))

(assert (=> d!10419 m!38616))

(declare-fun m!39298 () Bool)

(assert (=> d!10419 m!39298))

(declare-fun m!39300 () Bool)

(assert (=> b!61834 m!39300))

(assert (=> b!61835 m!38906))

(assert (=> b!61838 m!39176))

(assert (=> b!61838 m!39178))

(assert (=> b!61838 m!39176))

(assert (=> b!61838 m!39178))

(declare-fun m!39302 () Bool)

(assert (=> b!61838 m!39302))

(assert (=> b!61838 m!39296))

(assert (=> d!10205 d!10419))

(declare-fun d!10421 () Bool)

(declare-fun lt!12525 () Int)

(assert (=> d!10421 (>= lt!12525 0)))

(declare-fun e!36356 () Int)

(assert (=> d!10421 (= lt!12525 e!36356)))

(declare-fun c!18566 () Bool)

(assert (=> d!10421 (= c!18566 (is-Nil!1177 (list!318 v!6227)))))

(assert (=> d!10421 (= (size!1072 (list!318 v!6227)) lt!12525)))

(declare-fun b!61839 () Bool)

(assert (=> b!61839 (= e!36356 0)))

(declare-fun b!61840 () Bool)

(assert (=> b!61840 (= e!36356 (+ 1 (size!1072 (t!18334 (list!318 v!6227)))))))

(assert (= (and d!10421 c!18566) b!61839))

(assert (= (and d!10421 (not c!18566)) b!61840))

(declare-fun m!39304 () Bool)

(assert (=> b!61840 m!39304))

(assert (=> d!10255 d!10421))

(assert (=> d!10255 d!10207))

(declare-fun d!10423 () Bool)

(declare-fun lt!12528 () Int)

(assert (=> d!10423 (= lt!12528 (size!1072 (list!321 (c!18453 v!6227))))))

(assert (=> d!10423 (= lt!12528 (ite (is-Empty!313 (c!18453 v!6227)) 0 (ite (is-Leaf!576 (c!18453 v!6227)) (csize!857 (c!18453 v!6227)) (csize!856 (c!18453 v!6227)))))))

(assert (=> d!10423 (= (size!1073 (c!18453 v!6227)) lt!12528)))

(declare-fun bs!7236 () Bool)

(assert (= bs!7236 d!10423))

(assert (=> bs!7236 m!38616))

(assert (=> bs!7236 m!38616))

(declare-fun m!39306 () Bool)

(assert (=> bs!7236 m!39306))

(assert (=> d!10255 d!10423))

(declare-fun lt!12529 () Bool)

(declare-fun d!10425 () Bool)

(assert (=> d!10425 (= lt!12529 (isEmpty!260 (list!320 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152)))))))))

(assert (=> d!10425 (= lt!12529 (isEmpty!261 (c!18451 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152)))))))))

(assert (=> d!10425 (= (isEmpty!258 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152))))) lt!12529)))

(declare-fun bs!7237 () Bool)

(assert (= bs!7237 d!10425))

(declare-fun m!39308 () Bool)

(assert (=> bs!7237 m!39308))

(assert (=> bs!7237 m!39308))

(declare-fun m!39310 () Bool)

(assert (=> bs!7237 m!39310))

(declare-fun m!39312 () Bool)

(assert (=> bs!7237 m!39312))

(assert (=> b!61340 d!10425))

(declare-fun b!61841 () Bool)

(declare-fun e!36357 () Bool)

(declare-fun lt!12530 () tuple2!1148)

(assert (=> b!61841 (= e!36357 (not (isEmpty!262 (_1!781 lt!12530))))))

(declare-fun d!10427 () Bool)

(declare-fun e!36359 () Bool)

(assert (=> d!10427 e!36359))

(declare-fun res!37233 () Bool)

(assert (=> d!10427 (=> (not res!37233) (not e!36359))))

(declare-fun e!36358 () Bool)

(assert (=> d!10427 (= res!37233 e!36358)))

(declare-fun c!18567 () Bool)

(assert (=> d!10427 (= c!18567 (> (size!1066 (_1!781 lt!12530)) 0))))

(assert (=> d!10427 (= lt!12530 (lexTailRecV2!20 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152)) (BalanceConc!629 Empty!312) (print!11 thiss!11059 (singletonSeq!6 lt!12152)) (BalanceConc!631 Empty!313)))))

(assert (=> d!10427 (= (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152))) lt!12530)))

(declare-fun b!61842 () Bool)

(assert (=> b!61842 (= e!36358 e!36357)))

(declare-fun res!37234 () Bool)

(assert (=> b!61842 (= res!37234 (< (size!1065 (_2!781 lt!12530)) (size!1065 (print!11 thiss!11059 (singletonSeq!6 lt!12152)))))))

(assert (=> b!61842 (=> (not res!37234) (not e!36357))))

(declare-fun b!61843 () Bool)

(assert (=> b!61843 (= e!36359 (= (list!320 (_2!781 lt!12530)) (_2!783 (lexList!23 thiss!11059 rules!1069 (list!320 (print!11 thiss!11059 (singletonSeq!6 lt!12152)))))))))

(declare-fun b!61844 () Bool)

(assert (=> b!61844 (= e!36358 (= (_2!781 lt!12530) (print!11 thiss!11059 (singletonSeq!6 lt!12152))))))

(declare-fun b!61845 () Bool)

(declare-fun res!37235 () Bool)

(assert (=> b!61845 (=> (not res!37235) (not e!36359))))

(assert (=> b!61845 (= res!37235 (= (list!318 (_1!781 lt!12530)) (_1!783 (lexList!23 thiss!11059 rules!1069 (list!320 (print!11 thiss!11059 (singletonSeq!6 lt!12152)))))))))

(assert (= (and d!10427 c!18567) b!61842))

(assert (= (and d!10427 (not c!18567)) b!61844))

(assert (= (and b!61842 res!37234) b!61841))

(assert (= (and d!10427 res!37233) b!61845))

(assert (= (and b!61845 res!37235) b!61843))

(declare-fun m!39314 () Bool)

(assert (=> b!61845 m!39314))

(assert (=> b!61845 m!38644))

(declare-fun m!39316 () Bool)

(assert (=> b!61845 m!39316))

(assert (=> b!61845 m!39316))

(declare-fun m!39318 () Bool)

(assert (=> b!61845 m!39318))

(declare-fun m!39320 () Bool)

(assert (=> b!61843 m!39320))

(assert (=> b!61843 m!38644))

(assert (=> b!61843 m!39316))

(assert (=> b!61843 m!39316))

(assert (=> b!61843 m!39318))

(declare-fun m!39322 () Bool)

(assert (=> b!61842 m!39322))

(assert (=> b!61842 m!38644))

(declare-fun m!39324 () Bool)

(assert (=> b!61842 m!39324))

(declare-fun m!39326 () Bool)

(assert (=> d!10427 m!39326))

(assert (=> d!10427 m!38644))

(assert (=> d!10427 m!38644))

(declare-fun m!39328 () Bool)

(assert (=> d!10427 m!39328))

(declare-fun m!39330 () Bool)

(assert (=> b!61841 m!39330))

(assert (=> b!61340 d!10427))

(declare-fun d!10429 () Bool)

(declare-fun lt!12531 () BalanceConc!628)

(assert (=> d!10429 (= (list!320 lt!12531) (printList!3 thiss!11059 (list!318 (singletonSeq!6 lt!12152))))))

(assert (=> d!10429 (= lt!12531 (printTailRec!3 thiss!11059 (singletonSeq!6 lt!12152) 0 (BalanceConc!629 Empty!312)))))

(assert (=> d!10429 (= (print!11 thiss!11059 (singletonSeq!6 lt!12152)) lt!12531)))

(declare-fun bs!7238 () Bool)

(assert (= bs!7238 d!10429))

(declare-fun m!39332 () Bool)

(assert (=> bs!7238 m!39332))

(assert (=> bs!7238 m!38640))

(assert (=> bs!7238 m!38642))

(assert (=> bs!7238 m!38642))

(declare-fun m!39334 () Bool)

(assert (=> bs!7238 m!39334))

(assert (=> bs!7238 m!38640))

(declare-fun m!39336 () Bool)

(assert (=> bs!7238 m!39336))

(assert (=> b!61340 d!10429))

(declare-fun d!10431 () Bool)

(declare-fun e!36360 () Bool)

(assert (=> d!10431 e!36360))

(declare-fun res!37236 () Bool)

(assert (=> d!10431 (=> (not res!37236) (not e!36360))))

(declare-fun lt!12532 () BalanceConc!630)

(assert (=> d!10431 (= res!37236 (= (list!318 lt!12532) (Cons!1177 lt!12152 Nil!1177)))))

(assert (=> d!10431 (= lt!12532 (singleton!4 lt!12152))))

(assert (=> d!10431 (= (singletonSeq!6 lt!12152) lt!12532)))

(declare-fun b!61846 () Bool)

(assert (=> b!61846 (= e!36360 (isBalanced!52 (c!18453 lt!12532)))))

(assert (= (and d!10431 res!37236) b!61846))

(declare-fun m!39338 () Bool)

(assert (=> d!10431 m!39338))

(declare-fun m!39340 () Bool)

(assert (=> d!10431 m!39340))

(declare-fun m!39342 () Bool)

(assert (=> b!61846 m!39342))

(assert (=> b!61340 d!10431))

(declare-fun d!10433 () Bool)

(declare-fun res!37241 () Bool)

(declare-fun e!36363 () Bool)

(assert (=> d!10433 (=> (not res!37241) (not e!36363))))

(assert (=> d!10433 (= res!37241 (<= (size!1072 (list!324 (xs!2892 (c!18453 v!6227)))) 512))))

(assert (=> d!10433 (= (inv!1574 (c!18453 v!6227)) e!36363)))

(declare-fun b!61851 () Bool)

(declare-fun res!37242 () Bool)

(assert (=> b!61851 (=> (not res!37242) (not e!36363))))

(assert (=> b!61851 (= res!37242 (= (csize!857 (c!18453 v!6227)) (size!1072 (list!324 (xs!2892 (c!18453 v!6227))))))))

(declare-fun b!61852 () Bool)

(assert (=> b!61852 (= e!36363 (and (> (csize!857 (c!18453 v!6227)) 0) (<= (csize!857 (c!18453 v!6227)) 512)))))

(assert (= (and d!10433 res!37241) b!61851))

(assert (= (and b!61851 res!37242) b!61852))

(assert (=> d!10433 m!39182))

(assert (=> d!10433 m!39182))

(declare-fun m!39344 () Bool)

(assert (=> d!10433 m!39344))

(assert (=> b!61851 m!39182))

(assert (=> b!61851 m!39182))

(assert (=> b!61851 m!39344))

(assert (=> b!61352 d!10433))

(assert (=> b!61253 d!10201))

(declare-fun b!61853 () Bool)

(declare-fun e!36366 () Int)

(declare-fun call!3559 () Int)

(assert (=> b!61853 (= e!36366 (- call!3559 from!821))))

(declare-fun b!61854 () Bool)

(declare-fun e!36368 () List!1183)

(assert (=> b!61854 (= e!36368 (drop!67 (t!18334 (list!321 (c!18453 v!6227))) (- from!821 1)))))

(declare-fun b!61855 () Bool)

(assert (=> b!61855 (= e!36366 0)))

(declare-fun b!61856 () Bool)

(declare-fun e!36364 () Int)

(assert (=> b!61856 (= e!36364 call!3559)))

(declare-fun b!61857 () Bool)

(declare-fun e!36367 () List!1183)

(assert (=> b!61857 (= e!36367 Nil!1177)))

(declare-fun d!10435 () Bool)

(declare-fun e!36365 () Bool)

(assert (=> d!10435 e!36365))

(declare-fun res!37243 () Bool)

(assert (=> d!10435 (=> (not res!37243) (not e!36365))))

(declare-fun lt!12533 () List!1183)

(assert (=> d!10435 (= res!37243 (set.subset (content!46 lt!12533) (content!46 (list!321 (c!18453 v!6227)))))))

(assert (=> d!10435 (= lt!12533 e!36367)))

(declare-fun c!18571 () Bool)

(assert (=> d!10435 (= c!18571 (is-Nil!1177 (list!321 (c!18453 v!6227))))))

(assert (=> d!10435 (= (drop!67 (list!321 (c!18453 v!6227)) from!821) lt!12533)))

(declare-fun b!61858 () Bool)

(assert (=> b!61858 (= e!36368 (list!321 (c!18453 v!6227)))))

(declare-fun b!61859 () Bool)

(assert (=> b!61859 (= e!36367 e!36368)))

(declare-fun c!18569 () Bool)

(assert (=> b!61859 (= c!18569 (<= from!821 0))))

(declare-fun bm!3554 () Bool)

(assert (=> bm!3554 (= call!3559 (size!1072 (list!321 (c!18453 v!6227))))))

(declare-fun b!61860 () Bool)

(assert (=> b!61860 (= e!36364 e!36366)))

(declare-fun c!18570 () Bool)

(assert (=> b!61860 (= c!18570 (>= from!821 call!3559))))

(declare-fun b!61861 () Bool)

(assert (=> b!61861 (= e!36365 (= (size!1072 lt!12533) e!36364))))

(declare-fun c!18568 () Bool)

(assert (=> b!61861 (= c!18568 (<= from!821 0))))

(assert (= (and d!10435 c!18571) b!61857))

(assert (= (and d!10435 (not c!18571)) b!61859))

(assert (= (and b!61859 c!18569) b!61858))

(assert (= (and b!61859 (not c!18569)) b!61854))

(assert (= (and d!10435 res!37243) b!61861))

(assert (= (and b!61861 c!18568) b!61856))

(assert (= (and b!61861 (not c!18568)) b!61860))

(assert (= (and b!61860 c!18570) b!61855))

(assert (= (and b!61860 (not c!18570)) b!61853))

(assert (= (or b!61856 b!61860 b!61853) bm!3554))

(declare-fun m!39346 () Bool)

(assert (=> b!61854 m!39346))

(declare-fun m!39348 () Bool)

(assert (=> d!10435 m!39348))

(assert (=> d!10435 m!38616))

(declare-fun m!39350 () Bool)

(assert (=> d!10435 m!39350))

(assert (=> bm!3554 m!38616))

(assert (=> bm!3554 m!39306))

(declare-fun m!39352 () Bool)

(assert (=> b!61861 m!39352))

(assert (=> d!10189 d!10435))

(assert (=> d!10189 d!10355))

(declare-fun d!10437 () Bool)

(declare-fun lt!12536 () Int)

(assert (=> d!10437 (>= lt!12536 0)))

(declare-fun e!36371 () Int)

(assert (=> d!10437 (= lt!12536 e!36371)))

(declare-fun c!18574 () Bool)

(assert (=> d!10437 (= c!18574 (is-Nil!1175 (list!320 (charsOf!19 lt!12152))))))

(assert (=> d!10437 (= (size!1070 (list!320 (charsOf!19 lt!12152))) lt!12536)))

(declare-fun b!61866 () Bool)

(assert (=> b!61866 (= e!36371 0)))

(declare-fun b!61867 () Bool)

(assert (=> b!61867 (= e!36371 (+ 1 (size!1070 (t!18332 (list!320 (charsOf!19 lt!12152))))))))

(assert (= (and d!10437 c!18574) b!61866))

(assert (= (and d!10437 (not c!18574)) b!61867))

(declare-fun m!39354 () Bool)

(assert (=> b!61867 m!39354))

(assert (=> d!10175 d!10437))

(declare-fun d!10439 () Bool)

(assert (=> d!10439 (= (list!320 (charsOf!19 lt!12152)) (list!325 (c!18451 (charsOf!19 lt!12152))))))

(declare-fun bs!7239 () Bool)

(assert (= bs!7239 d!10439))

(declare-fun m!39356 () Bool)

(assert (=> bs!7239 m!39356))

(assert (=> d!10175 d!10439))

(declare-fun d!10441 () Bool)

(declare-fun lt!12539 () Int)

(assert (=> d!10441 (= lt!12539 (size!1070 (list!325 (c!18451 (charsOf!19 lt!12152)))))))

(assert (=> d!10441 (= lt!12539 (ite (is-Empty!312 (c!18451 (charsOf!19 lt!12152))) 0 (ite (is-Leaf!575 (c!18451 (charsOf!19 lt!12152))) (csize!855 (c!18451 (charsOf!19 lt!12152))) (csize!854 (c!18451 (charsOf!19 lt!12152))))))))

(assert (=> d!10441 (= (size!1071 (c!18451 (charsOf!19 lt!12152))) lt!12539)))

(declare-fun bs!7240 () Bool)

(assert (= bs!7240 d!10441))

(assert (=> bs!7240 m!39356))

(assert (=> bs!7240 m!39356))

(declare-fun m!39358 () Bool)

(assert (=> bs!7240 m!39358))

(assert (=> d!10175 d!10441))

(assert (=> b!61427 d!10349))

(declare-fun d!10443 () Bool)

(declare-fun c!18575 () Bool)

(assert (=> d!10443 (= c!18575 (is-Nil!1177 lt!12220))))

(declare-fun e!36372 () (Set Token!272))

(assert (=> d!10443 (= (content!46 lt!12220) e!36372)))

(declare-fun b!61868 () Bool)

(assert (=> b!61868 (= e!36372 (as set.empty (Set Token!272)))))

(declare-fun b!61869 () Bool)

(assert (=> b!61869 (= e!36372 (set.union (set.insert (h!6574 lt!12220) (as set.empty (Set Token!272))) (content!46 (t!18334 lt!12220))))))

(assert (= (and d!10443 c!18575) b!61868))

(assert (= (and d!10443 (not c!18575)) b!61869))

(declare-fun m!39360 () Bool)

(assert (=> b!61869 m!39360))

(declare-fun m!39362 () Bool)

(assert (=> b!61869 m!39362))

(assert (=> d!10203 d!10443))

(assert (=> d!10203 d!10409))

(declare-fun d!10445 () Bool)

(assert (=> d!10445 (= (tail!89 (drop!67 lt!12144 (+ 1 from!821))) (t!18334 (drop!67 lt!12144 (+ 1 from!821))))))

(assert (=> d!10235 d!10445))

(assert (=> d!10235 d!10219))

(declare-fun b!61870 () Bool)

(declare-fun e!36375 () Int)

(declare-fun call!3560 () Int)

(assert (=> b!61870 (= e!36375 (- call!3560 (+ 1 from!821 1)))))

(declare-fun b!61871 () Bool)

(declare-fun e!36377 () List!1183)

(assert (=> b!61871 (= e!36377 (drop!67 (t!18334 lt!12144) (- (+ 1 from!821 1) 1)))))

(declare-fun b!61872 () Bool)

(assert (=> b!61872 (= e!36375 0)))

(declare-fun b!61873 () Bool)

(declare-fun e!36373 () Int)

(assert (=> b!61873 (= e!36373 call!3560)))

(declare-fun b!61874 () Bool)

(declare-fun e!36376 () List!1183)

(assert (=> b!61874 (= e!36376 Nil!1177)))

(declare-fun d!10447 () Bool)

(declare-fun e!36374 () Bool)

(assert (=> d!10447 e!36374))

(declare-fun res!37244 () Bool)

(assert (=> d!10447 (=> (not res!37244) (not e!36374))))

(declare-fun lt!12540 () List!1183)

(assert (=> d!10447 (= res!37244 (set.subset (content!46 lt!12540) (content!46 lt!12144)))))

(assert (=> d!10447 (= lt!12540 e!36376)))

(declare-fun c!18579 () Bool)

(assert (=> d!10447 (= c!18579 (is-Nil!1177 lt!12144))))

(assert (=> d!10447 (= (drop!67 lt!12144 (+ 1 from!821 1)) lt!12540)))

(declare-fun b!61875 () Bool)

(assert (=> b!61875 (= e!36377 lt!12144)))

(declare-fun b!61876 () Bool)

(assert (=> b!61876 (= e!36376 e!36377)))

(declare-fun c!18577 () Bool)

(assert (=> b!61876 (= c!18577 (<= (+ 1 from!821 1) 0))))

(declare-fun bm!3555 () Bool)

(assert (=> bm!3555 (= call!3560 (size!1072 lt!12144))))

(declare-fun b!61877 () Bool)

(assert (=> b!61877 (= e!36373 e!36375)))

(declare-fun c!18578 () Bool)

(assert (=> b!61877 (= c!18578 (>= (+ 1 from!821 1) call!3560))))

(declare-fun b!61878 () Bool)

(assert (=> b!61878 (= e!36374 (= (size!1072 lt!12540) e!36373))))

(declare-fun c!18576 () Bool)

(assert (=> b!61878 (= c!18576 (<= (+ 1 from!821 1) 0))))

(assert (= (and d!10447 c!18579) b!61874))

(assert (= (and d!10447 (not c!18579)) b!61876))

(assert (= (and b!61876 c!18577) b!61875))

(assert (= (and b!61876 (not c!18577)) b!61871))

(assert (= (and d!10447 res!37244) b!61878))

(assert (= (and b!61878 c!18576) b!61873))

(assert (= (and b!61878 (not c!18576)) b!61877))

(assert (= (and b!61877 c!18578) b!61872))

(assert (= (and b!61877 (not c!18578)) b!61870))

(assert (= (or b!61873 b!61877 b!61870) bm!3555))

(declare-fun m!39364 () Bool)

(assert (=> b!61871 m!39364))

(declare-fun m!39366 () Bool)

(assert (=> d!10447 m!39366))

(assert (=> d!10447 m!38604))

(assert (=> bm!3555 m!38674))

(declare-fun m!39368 () Bool)

(assert (=> b!61878 m!39368))

(assert (=> d!10235 d!10447))

(declare-fun d!10449 () Bool)

(assert (=> d!10449 (= (tail!89 (drop!67 lt!12144 (+ 1 from!821))) (drop!67 lt!12144 (+ 1 from!821 1)))))

(assert (=> d!10449 true))

(declare-fun _$28!250 () Unit!687)

(assert (=> d!10449 (= (choose!1238 lt!12144 (+ 1 from!821)) _$28!250)))

(declare-fun bs!7241 () Bool)

(assert (= bs!7241 d!10449))

(assert (=> bs!7241 m!38490))

(assert (=> bs!7241 m!38490))

(assert (=> bs!7241 m!38782))

(assert (=> bs!7241 m!38784))

(assert (=> d!10235 d!10449))

(assert (=> b!61380 d!10255))

(declare-fun d!10451 () Bool)

(declare-fun lt!12541 () Token!272)

(assert (=> d!10451 (contains!173 (tail!89 lt!12144) lt!12541)))

(declare-fun e!36379 () Token!272)

(assert (=> d!10451 (= lt!12541 e!36379)))

(declare-fun c!18580 () Bool)

(assert (=> d!10451 (= c!18580 (= (- (+ 1 from!821) 1) 0))))

(declare-fun e!36378 () Bool)

(assert (=> d!10451 e!36378))

(declare-fun res!37245 () Bool)

(assert (=> d!10451 (=> (not res!37245) (not e!36378))))

(assert (=> d!10451 (= res!37245 (<= 0 (- (+ 1 from!821) 1)))))

(assert (=> d!10451 (= (apply!157 (tail!89 lt!12144) (- (+ 1 from!821) 1)) lt!12541)))

(declare-fun b!61879 () Bool)

(assert (=> b!61879 (= e!36378 (< (- (+ 1 from!821) 1) (size!1072 (tail!89 lt!12144))))))

(declare-fun b!61880 () Bool)

(assert (=> b!61880 (= e!36379 (head!405 (tail!89 lt!12144)))))

(declare-fun b!61881 () Bool)

(assert (=> b!61881 (= e!36379 (apply!157 (tail!89 (tail!89 lt!12144)) (- (- (+ 1 from!821) 1) 1)))))

(assert (= (and d!10451 res!37245) b!61879))

(assert (= (and d!10451 c!18580) b!61880))

(assert (= (and d!10451 (not c!18580)) b!61881))

(assert (=> d!10451 m!38768))

(declare-fun m!39370 () Bool)

(assert (=> d!10451 m!39370))

(assert (=> b!61879 m!38768))

(declare-fun m!39372 () Bool)

(assert (=> b!61879 m!39372))

(assert (=> b!61880 m!38768))

(declare-fun m!39374 () Bool)

(assert (=> b!61880 m!39374))

(assert (=> b!61881 m!38768))

(declare-fun m!39376 () Bool)

(assert (=> b!61881 m!39376))

(assert (=> b!61881 m!39376))

(declare-fun m!39378 () Bool)

(assert (=> b!61881 m!39378))

(assert (=> b!61422 d!10451))

(declare-fun d!10453 () Bool)

(assert (=> d!10453 (= (tail!89 lt!12144) (t!18334 lt!12144))))

(assert (=> b!61422 d!10453))

(declare-fun d!10455 () Bool)

(declare-fun c!18581 () Bool)

(assert (=> d!10455 (= c!18581 (is-Nil!1177 lt!12281))))

(declare-fun e!36380 () (Set Token!272))

(assert (=> d!10455 (= (content!46 lt!12281) e!36380)))

(declare-fun b!61882 () Bool)

(assert (=> b!61882 (= e!36380 (as set.empty (Set Token!272)))))

(declare-fun b!61883 () Bool)

(assert (=> b!61883 (= e!36380 (set.union (set.insert (h!6574 lt!12281) (as set.empty (Set Token!272))) (content!46 (t!18334 lt!12281))))))

(assert (= (and d!10455 c!18581) b!61882))

(assert (= (and d!10455 (not c!18581)) b!61883))

(declare-fun m!39380 () Bool)

(assert (=> b!61883 m!39380))

(declare-fun m!39382 () Bool)

(assert (=> b!61883 m!39382))

(assert (=> d!10221 d!10455))

(assert (=> d!10221 d!10409))

(declare-fun d!10457 () Bool)

(declare-fun lt!12542 () Bool)

(assert (=> d!10457 (= lt!12542 (isEmpty!260 (list!320 (_2!781 lt!12207))))))

(assert (=> d!10457 (= lt!12542 (isEmpty!261 (c!18451 (_2!781 lt!12207))))))

(assert (=> d!10457 (= (isEmpty!258 (_2!781 lt!12207)) lt!12542)))

(declare-fun bs!7242 () Bool)

(assert (= bs!7242 d!10457))

(declare-fun m!39384 () Bool)

(assert (=> bs!7242 m!39384))

(assert (=> bs!7242 m!39384))

(declare-fun m!39386 () Bool)

(assert (=> bs!7242 m!39386))

(declare-fun m!39388 () Bool)

(assert (=> bs!7242 m!39388))

(assert (=> b!61336 d!10457))

(declare-fun d!10459 () Bool)

(declare-fun lt!12544 () Bool)

(declare-fun e!36381 () Bool)

(assert (=> d!10459 (= lt!12544 e!36381)))

(declare-fun res!37246 () Bool)

(assert (=> d!10459 (=> (not res!37246) (not e!36381))))

(assert (=> d!10459 (= res!37246 (= (list!318 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12395))))) (list!318 (singletonSeq!6 lt!12395))))))

(declare-fun e!36382 () Bool)

(assert (=> d!10459 (= lt!12544 e!36382)))

(declare-fun res!37248 () Bool)

(assert (=> d!10459 (=> (not res!37248) (not e!36382))))

(declare-fun lt!12543 () tuple2!1148)

(assert (=> d!10459 (= res!37248 (= (size!1066 (_1!781 lt!12543)) 1))))

(assert (=> d!10459 (= lt!12543 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12395))))))

(assert (=> d!10459 (not (isEmpty!256 rules!1069))))

(assert (=> d!10459 (= (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12395) lt!12544)))

(declare-fun b!61884 () Bool)

(declare-fun res!37247 () Bool)

(assert (=> b!61884 (=> (not res!37247) (not e!36382))))

(assert (=> b!61884 (= res!37247 (= (apply!156 (_1!781 lt!12543) 0) lt!12395))))

(declare-fun b!61885 () Bool)

(assert (=> b!61885 (= e!36382 (isEmpty!258 (_2!781 lt!12543)))))

(declare-fun b!61886 () Bool)

(assert (=> b!61886 (= e!36381 (isEmpty!258 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12395))))))))

(assert (= (and d!10459 res!37248) b!61884))

(assert (= (and b!61884 res!37247) b!61885))

(assert (= (and d!10459 res!37246) b!61886))

(declare-fun m!39390 () Bool)

(assert (=> d!10459 m!39390))

(declare-fun m!39392 () Bool)

(assert (=> d!10459 m!39392))

(declare-fun m!39394 () Bool)

(assert (=> d!10459 m!39394))

(assert (=> d!10459 m!39392))

(declare-fun m!39396 () Bool)

(assert (=> d!10459 m!39396))

(assert (=> d!10459 m!39392))

(assert (=> d!10459 m!38450))

(declare-fun m!39398 () Bool)

(assert (=> d!10459 m!39398))

(assert (=> d!10459 m!39396))

(declare-fun m!39400 () Bool)

(assert (=> d!10459 m!39400))

(declare-fun m!39402 () Bool)

(assert (=> b!61884 m!39402))

(declare-fun m!39404 () Bool)

(assert (=> b!61885 m!39404))

(assert (=> b!61886 m!39392))

(assert (=> b!61886 m!39392))

(assert (=> b!61886 m!39396))

(assert (=> b!61886 m!39396))

(assert (=> b!61886 m!39400))

(declare-fun m!39406 () Bool)

(assert (=> b!61886 m!39406))

(assert (=> b!61438 d!10459))

(declare-fun d!10461 () Bool)

(declare-fun lt!12545 () Token!272)

(assert (=> d!10461 (contains!173 lt!12385 lt!12545)))

(declare-fun e!36384 () Token!272)

(assert (=> d!10461 (= lt!12545 e!36384)))

(declare-fun c!18582 () Bool)

(assert (=> d!10461 (= c!18582 (= lt!12390 0))))

(declare-fun e!36383 () Bool)

(assert (=> d!10461 e!36383))

(declare-fun res!37249 () Bool)

(assert (=> d!10461 (=> (not res!37249) (not e!36383))))

(assert (=> d!10461 (= res!37249 (<= 0 lt!12390))))

(assert (=> d!10461 (= (apply!157 lt!12385 lt!12390) lt!12545)))

(declare-fun b!61887 () Bool)

(assert (=> b!61887 (= e!36383 (< lt!12390 (size!1072 lt!12385)))))

(declare-fun b!61888 () Bool)

(assert (=> b!61888 (= e!36384 (head!405 lt!12385))))

(declare-fun b!61889 () Bool)

(assert (=> b!61889 (= e!36384 (apply!157 (tail!89 lt!12385) (- lt!12390 1)))))

(assert (= (and d!10461 res!37249) b!61887))

(assert (= (and d!10461 c!18582) b!61888))

(assert (= (and d!10461 (not c!18582)) b!61889))

(declare-fun m!39408 () Bool)

(assert (=> d!10461 m!39408))

(declare-fun m!39410 () Bool)

(assert (=> b!61887 m!39410))

(declare-fun m!39412 () Bool)

(assert (=> b!61888 m!39412))

(declare-fun m!39414 () Bool)

(assert (=> b!61889 m!39414))

(assert (=> b!61889 m!39414))

(declare-fun m!39416 () Bool)

(assert (=> b!61889 m!39416))

(assert (=> b!61438 d!10461))

(declare-fun d!10463 () Bool)

(assert (=> d!10463 (= (tail!89 (drop!67 lt!12391 (+ 1 from!821))) (t!18334 (drop!67 lt!12391 (+ 1 from!821))))))

(assert (=> b!61438 d!10463))

(declare-fun d!10465 () Bool)

(assert (=> d!10465 (= (head!405 (drop!67 lt!12380 (+ 1 from!821))) (apply!157 lt!12380 (+ 1 from!821)))))

(declare-fun lt!12546 () Unit!687)

(assert (=> d!10465 (= lt!12546 (choose!1239 lt!12380 (+ 1 from!821)))))

(declare-fun e!36385 () Bool)

(assert (=> d!10465 e!36385))

(declare-fun res!37250 () Bool)

(assert (=> d!10465 (=> (not res!37250) (not e!36385))))

(assert (=> d!10465 (= res!37250 (>= (+ 1 from!821) 0))))

(assert (=> d!10465 (= (lemmaDropApply!65 lt!12380 (+ 1 from!821)) lt!12546)))

(declare-fun b!61890 () Bool)

(assert (=> b!61890 (= e!36385 (< (+ 1 from!821) (size!1072 lt!12380)))))

(assert (= (and d!10465 res!37250) b!61890))

(assert (=> d!10465 m!38822))

(assert (=> d!10465 m!38822))

(assert (=> d!10465 m!38844))

(assert (=> d!10465 m!38838))

(declare-fun m!39418 () Bool)

(assert (=> d!10465 m!39418))

(declare-fun m!39420 () Bool)

(assert (=> b!61890 m!39420))

(assert (=> b!61438 d!10465))

(declare-fun d!10467 () Bool)

(declare-fun lt!12547 () BalanceConc!628)

(assert (=> d!10467 (= (list!320 lt!12547) (originalCharacters!307 (apply!156 v!6227 (+ 1 from!821 1))))))

(assert (=> d!10467 (= lt!12547 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 (apply!156 v!6227 (+ 1 from!821 1))))) (value!10138 (apply!156 v!6227 (+ 1 from!821 1)))))))

(assert (=> d!10467 (= (charsOf!19 (apply!156 v!6227 (+ 1 from!821 1))) lt!12547)))

(declare-fun b_lambda!503 () Bool)

(assert (=> (not b_lambda!503) (not d!10467)))

(declare-fun t!18390 () Bool)

(declare-fun tb!875 () Bool)

(assert (=> (and b!61258 (= (toChars!596 (transformation!254 (h!6573 rules!1069))) (toChars!596 (transformation!254 (rule!729 (apply!156 v!6227 (+ 1 from!821 1)))))) t!18390) tb!875))

(declare-fun e!36386 () Bool)

(declare-fun b!61891 () Bool)

(declare-fun tp!37431 () Bool)

(assert (=> b!61891 (= e!36386 (and (inv!1571 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 (apply!156 v!6227 (+ 1 from!821 1))))) (value!10138 (apply!156 v!6227 (+ 1 from!821 1)))))) tp!37431))))

(declare-fun result!1776 () Bool)

(assert (=> tb!875 (= result!1776 (and (inv!1572 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 (apply!156 v!6227 (+ 1 from!821 1))))) (value!10138 (apply!156 v!6227 (+ 1 from!821 1))))) e!36386))))

(assert (= tb!875 b!61891))

(declare-fun m!39422 () Bool)

(assert (=> b!61891 m!39422))

(declare-fun m!39424 () Bool)

(assert (=> tb!875 m!39424))

(assert (=> d!10467 t!18390))

(declare-fun b_and!2403 () Bool)

(assert (= b_and!2375 (and (=> t!18390 result!1776) b_and!2403)))

(declare-fun tb!877 () Bool)

(declare-fun t!18392 () Bool)

(assert (=> (and b!61489 (= (toChars!596 (transformation!254 (h!6573 (t!18333 rules!1069)))) (toChars!596 (transformation!254 (rule!729 (apply!156 v!6227 (+ 1 from!821 1)))))) t!18392) tb!877))

(declare-fun result!1778 () Bool)

(assert (= result!1778 result!1776))

(assert (=> d!10467 t!18392))

(declare-fun b_and!2405 () Bool)

(assert (= b_and!2387 (and (=> t!18392 result!1778) b_and!2405)))

(declare-fun m!39426 () Bool)

(assert (=> d!10467 m!39426))

(declare-fun m!39428 () Bool)

(assert (=> d!10467 m!39428))

(assert (=> b!61438 d!10467))

(declare-fun d!10469 () Bool)

(assert (=> d!10469 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12389)))

(declare-fun lt!12548 () Unit!687)

(assert (=> d!10469 (= lt!12548 (choose!1237 thiss!11059 rules!1069 lt!12379 lt!12389))))

(assert (=> d!10469 (not (isEmpty!256 rules!1069))))

(assert (=> d!10469 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12379 lt!12389) lt!12548)))

(declare-fun bs!7243 () Bool)

(assert (= bs!7243 d!10469))

(assert (=> bs!7243 m!38836))

(declare-fun m!39430 () Bool)

(assert (=> bs!7243 m!39430))

(assert (=> bs!7243 m!38450))

(assert (=> b!61438 d!10469))

(declare-fun d!10471 () Bool)

(declare-fun lt!12549 () Token!272)

(assert (=> d!10471 (= lt!12549 (apply!157 (list!318 v!6227) (+ 1 from!821 1)))))

(assert (=> d!10471 (= lt!12549 (apply!160 (c!18453 v!6227) (+ 1 from!821 1)))))

(declare-fun e!36387 () Bool)

(assert (=> d!10471 e!36387))

(declare-fun res!37251 () Bool)

(assert (=> d!10471 (=> (not res!37251) (not e!36387))))

(assert (=> d!10471 (= res!37251 (<= 0 (+ 1 from!821 1)))))

(assert (=> d!10471 (= (apply!156 v!6227 (+ 1 from!821 1)) lt!12549)))

(declare-fun b!61892 () Bool)

(assert (=> b!61892 (= e!36387 (< (+ 1 from!821 1) (size!1066 v!6227)))))

(assert (= (and d!10471 res!37251) b!61892))

(assert (=> d!10471 m!38478))

(assert (=> d!10471 m!38478))

(declare-fun m!39432 () Bool)

(assert (=> d!10471 m!39432))

(declare-fun m!39434 () Bool)

(assert (=> d!10471 m!39434))

(assert (=> b!61892 m!38448))

(assert (=> b!61438 d!10471))

(declare-fun d!10473 () Bool)

(declare-fun lt!12550 () Int)

(assert (=> d!10473 (= lt!12550 (size!1070 (list!320 (charsOf!19 (apply!156 v!6227 (+ 1 from!821 1))))))))

(assert (=> d!10473 (= lt!12550 (size!1071 (c!18451 (charsOf!19 (apply!156 v!6227 (+ 1 from!821 1))))))))

(assert (=> d!10473 (= (size!1065 (charsOf!19 (apply!156 v!6227 (+ 1 from!821 1)))) lt!12550)))

(declare-fun bs!7244 () Bool)

(assert (= bs!7244 d!10473))

(assert (=> bs!7244 m!38800))

(declare-fun m!39436 () Bool)

(assert (=> bs!7244 m!39436))

(assert (=> bs!7244 m!39436))

(declare-fun m!39438 () Bool)

(assert (=> bs!7244 m!39438))

(declare-fun m!39440 () Bool)

(assert (=> bs!7244 m!39440))

(assert (=> b!61438 d!10473))

(declare-fun d!10475 () Bool)

(assert (=> d!10475 (= (head!405 (drop!67 lt!12385 lt!12390)) (h!6574 (drop!67 lt!12385 lt!12390)))))

(assert (=> b!61438 d!10475))

(declare-fun b!61893 () Bool)

(declare-fun e!36390 () Int)

(declare-fun call!3561 () Int)

(assert (=> b!61893 (= e!36390 (- call!3561 (+ lt!12374 1)))))

(declare-fun b!61894 () Bool)

(declare-fun e!36392 () List!1183)

(assert (=> b!61894 (= e!36392 (drop!67 (t!18334 lt!12387) (- (+ lt!12374 1) 1)))))

(declare-fun b!61895 () Bool)

(assert (=> b!61895 (= e!36390 0)))

(declare-fun b!61896 () Bool)

(declare-fun e!36388 () Int)

(assert (=> b!61896 (= e!36388 call!3561)))

(declare-fun b!61897 () Bool)

(declare-fun e!36391 () List!1183)

(assert (=> b!61897 (= e!36391 Nil!1177)))

(declare-fun d!10477 () Bool)

(declare-fun e!36389 () Bool)

(assert (=> d!10477 e!36389))

(declare-fun res!37252 () Bool)

(assert (=> d!10477 (=> (not res!37252) (not e!36389))))

(declare-fun lt!12551 () List!1183)

(assert (=> d!10477 (= res!37252 (set.subset (content!46 lt!12551) (content!46 lt!12387)))))

(assert (=> d!10477 (= lt!12551 e!36391)))

(declare-fun c!18586 () Bool)

(assert (=> d!10477 (= c!18586 (is-Nil!1177 lt!12387))))

(assert (=> d!10477 (= (drop!67 lt!12387 (+ lt!12374 1)) lt!12551)))

(declare-fun b!61898 () Bool)

(assert (=> b!61898 (= e!36392 lt!12387)))

(declare-fun b!61899 () Bool)

(assert (=> b!61899 (= e!36391 e!36392)))

(declare-fun c!18584 () Bool)

(assert (=> b!61899 (= c!18584 (<= (+ lt!12374 1) 0))))

(declare-fun bm!3556 () Bool)

(assert (=> bm!3556 (= call!3561 (size!1072 lt!12387))))

(declare-fun b!61900 () Bool)

(assert (=> b!61900 (= e!36388 e!36390)))

(declare-fun c!18585 () Bool)

(assert (=> b!61900 (= c!18585 (>= (+ lt!12374 1) call!3561))))

(declare-fun b!61901 () Bool)

(assert (=> b!61901 (= e!36389 (= (size!1072 lt!12551) e!36388))))

(declare-fun c!18583 () Bool)

(assert (=> b!61901 (= c!18583 (<= (+ lt!12374 1) 0))))

(assert (= (and d!10477 c!18586) b!61897))

(assert (= (and d!10477 (not c!18586)) b!61899))

(assert (= (and b!61899 c!18584) b!61898))

(assert (= (and b!61899 (not c!18584)) b!61894))

(assert (= (and d!10477 res!37252) b!61901))

(assert (= (and b!61901 c!18583) b!61896))

(assert (= (and b!61901 (not c!18583)) b!61900))

(assert (= (and b!61900 c!18585) b!61895))

(assert (= (and b!61900 (not c!18585)) b!61893))

(assert (= (or b!61896 b!61900 b!61893) bm!3556))

(declare-fun m!39442 () Bool)

(assert (=> b!61894 m!39442))

(declare-fun m!39444 () Bool)

(assert (=> d!10477 m!39444))

(declare-fun m!39446 () Bool)

(assert (=> d!10477 m!39446))

(declare-fun m!39448 () Bool)

(assert (=> bm!3556 m!39448))

(declare-fun m!39450 () Bool)

(assert (=> b!61901 m!39450))

(assert (=> b!61438 d!10477))

(declare-fun d!10479 () Bool)

(declare-fun lt!12553 () Bool)

(declare-fun e!36393 () Bool)

(assert (=> d!10479 (= lt!12553 e!36393)))

(declare-fun res!37253 () Bool)

(assert (=> d!10479 (=> (not res!37253) (not e!36393))))

(assert (=> d!10479 (= res!37253 (= (list!318 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 (apply!156 v!6227 (+ 1 from!821))))))) (list!318 (singletonSeq!6 (apply!156 v!6227 (+ 1 from!821))))))))

(declare-fun e!36394 () Bool)

(assert (=> d!10479 (= lt!12553 e!36394)))

(declare-fun res!37255 () Bool)

(assert (=> d!10479 (=> (not res!37255) (not e!36394))))

(declare-fun lt!12552 () tuple2!1148)

(assert (=> d!10479 (= res!37255 (= (size!1066 (_1!781 lt!12552)) 1))))

(assert (=> d!10479 (= lt!12552 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 (apply!156 v!6227 (+ 1 from!821))))))))

(assert (=> d!10479 (not (isEmpty!256 rules!1069))))

(assert (=> d!10479 (= (rulesProduceIndividualToken!43 thiss!11059 rules!1069 (apply!156 v!6227 (+ 1 from!821))) lt!12553)))

(declare-fun b!61902 () Bool)

(declare-fun res!37254 () Bool)

(assert (=> b!61902 (=> (not res!37254) (not e!36394))))

(assert (=> b!61902 (= res!37254 (= (apply!156 (_1!781 lt!12552) 0) (apply!156 v!6227 (+ 1 from!821))))))

(declare-fun b!61903 () Bool)

(assert (=> b!61903 (= e!36394 (isEmpty!258 (_2!781 lt!12552)))))

(declare-fun b!61904 () Bool)

(assert (=> b!61904 (= e!36393 (isEmpty!258 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 (apply!156 v!6227 (+ 1 from!821))))))))))

(assert (= (and d!10479 res!37255) b!61902))

(assert (= (and b!61902 res!37254) b!61903))

(assert (= (and d!10479 res!37253) b!61904))

(declare-fun m!39452 () Bool)

(assert (=> d!10479 m!39452))

(declare-fun m!39454 () Bool)

(assert (=> d!10479 m!39454))

(declare-fun m!39456 () Bool)

(assert (=> d!10479 m!39456))

(assert (=> d!10479 m!39454))

(declare-fun m!39458 () Bool)

(assert (=> d!10479 m!39458))

(assert (=> d!10479 m!38442))

(assert (=> d!10479 m!39454))

(assert (=> d!10479 m!38450))

(declare-fun m!39460 () Bool)

(assert (=> d!10479 m!39460))

(assert (=> d!10479 m!39458))

(declare-fun m!39462 () Bool)

(assert (=> d!10479 m!39462))

(declare-fun m!39464 () Bool)

(assert (=> b!61902 m!39464))

(declare-fun m!39466 () Bool)

(assert (=> b!61903 m!39466))

(assert (=> b!61904 m!38442))

(assert (=> b!61904 m!39454))

(assert (=> b!61904 m!39454))

(assert (=> b!61904 m!39458))

(assert (=> b!61904 m!39458))

(assert (=> b!61904 m!39462))

(declare-fun m!39468 () Bool)

(assert (=> b!61904 m!39468))

(assert (=> b!61438 d!10479))

(assert (=> b!61438 d!10207))

(declare-fun b!61905 () Bool)

(declare-fun e!36397 () Int)

(declare-fun call!3562 () Int)

(assert (=> b!61905 (= e!36397 (- call!3562 lt!12390))))

(declare-fun b!61906 () Bool)

(declare-fun e!36399 () List!1183)

(assert (=> b!61906 (= e!36399 (drop!67 (t!18334 lt!12385) (- lt!12390 1)))))

(declare-fun b!61907 () Bool)

(assert (=> b!61907 (= e!36397 0)))

(declare-fun b!61908 () Bool)

(declare-fun e!36395 () Int)

(assert (=> b!61908 (= e!36395 call!3562)))

(declare-fun b!61909 () Bool)

(declare-fun e!36398 () List!1183)

(assert (=> b!61909 (= e!36398 Nil!1177)))

(declare-fun d!10481 () Bool)

(declare-fun e!36396 () Bool)

(assert (=> d!10481 e!36396))

(declare-fun res!37256 () Bool)

(assert (=> d!10481 (=> (not res!37256) (not e!36396))))

(declare-fun lt!12554 () List!1183)

(assert (=> d!10481 (= res!37256 (set.subset (content!46 lt!12554) (content!46 lt!12385)))))

(assert (=> d!10481 (= lt!12554 e!36398)))

(declare-fun c!18590 () Bool)

(assert (=> d!10481 (= c!18590 (is-Nil!1177 lt!12385))))

(assert (=> d!10481 (= (drop!67 lt!12385 lt!12390) lt!12554)))

(declare-fun b!61910 () Bool)

(assert (=> b!61910 (= e!36399 lt!12385)))

(declare-fun b!61911 () Bool)

(assert (=> b!61911 (= e!36398 e!36399)))

(declare-fun c!18588 () Bool)

(assert (=> b!61911 (= c!18588 (<= lt!12390 0))))

(declare-fun bm!3557 () Bool)

(assert (=> bm!3557 (= call!3562 (size!1072 lt!12385))))

(declare-fun b!61912 () Bool)

(assert (=> b!61912 (= e!36395 e!36397)))

(declare-fun c!18589 () Bool)

(assert (=> b!61912 (= c!18589 (>= lt!12390 call!3562))))

(declare-fun b!61913 () Bool)

(assert (=> b!61913 (= e!36396 (= (size!1072 lt!12554) e!36395))))

(declare-fun c!18587 () Bool)

(assert (=> b!61913 (= c!18587 (<= lt!12390 0))))

(assert (= (and d!10481 c!18590) b!61909))

(assert (= (and d!10481 (not c!18590)) b!61911))

(assert (= (and b!61911 c!18588) b!61910))

(assert (= (and b!61911 (not c!18588)) b!61906))

(assert (= (and d!10481 res!37256) b!61913))

(assert (= (and b!61913 c!18587) b!61908))

(assert (= (and b!61913 (not c!18587)) b!61912))

(assert (= (and b!61912 c!18589) b!61907))

(assert (= (and b!61912 (not c!18589)) b!61905))

(assert (= (or b!61908 b!61912 b!61905) bm!3557))

(declare-fun m!39470 () Bool)

(assert (=> b!61906 m!39470))

(declare-fun m!39472 () Bool)

(assert (=> d!10481 m!39472))

(declare-fun m!39474 () Bool)

(assert (=> d!10481 m!39474))

(assert (=> bm!3557 m!39410))

(declare-fun m!39476 () Bool)

(assert (=> b!61913 m!39476))

(assert (=> b!61438 d!10481))

(declare-fun b!61914 () Bool)

(declare-fun e!36402 () Int)

(declare-fun call!3563 () Int)

(assert (=> b!61914 (= e!36402 (- call!3563 (+ 1 from!821)))))

(declare-fun b!61915 () Bool)

(declare-fun e!36404 () List!1183)

(assert (=> b!61915 (= e!36404 (drop!67 (t!18334 lt!12380) (- (+ 1 from!821) 1)))))

(declare-fun b!61916 () Bool)

(assert (=> b!61916 (= e!36402 0)))

(declare-fun b!61917 () Bool)

(declare-fun e!36400 () Int)

(assert (=> b!61917 (= e!36400 call!3563)))

(declare-fun b!61918 () Bool)

(declare-fun e!36403 () List!1183)

(assert (=> b!61918 (= e!36403 Nil!1177)))

(declare-fun d!10483 () Bool)

(declare-fun e!36401 () Bool)

(assert (=> d!10483 e!36401))

(declare-fun res!37257 () Bool)

(assert (=> d!10483 (=> (not res!37257) (not e!36401))))

(declare-fun lt!12555 () List!1183)

(assert (=> d!10483 (= res!37257 (set.subset (content!46 lt!12555) (content!46 lt!12380)))))

(assert (=> d!10483 (= lt!12555 e!36403)))

(declare-fun c!18594 () Bool)

(assert (=> d!10483 (= c!18594 (is-Nil!1177 lt!12380))))

(assert (=> d!10483 (= (drop!67 lt!12380 (+ 1 from!821)) lt!12555)))

(declare-fun b!61919 () Bool)

(assert (=> b!61919 (= e!36404 lt!12380)))

(declare-fun b!61920 () Bool)

(assert (=> b!61920 (= e!36403 e!36404)))

(declare-fun c!18592 () Bool)

(assert (=> b!61920 (= c!18592 (<= (+ 1 from!821) 0))))

(declare-fun bm!3558 () Bool)

(assert (=> bm!3558 (= call!3563 (size!1072 lt!12380))))

(declare-fun b!61921 () Bool)

(assert (=> b!61921 (= e!36400 e!36402)))

(declare-fun c!18593 () Bool)

(assert (=> b!61921 (= c!18593 (>= (+ 1 from!821) call!3563))))

(declare-fun b!61922 () Bool)

(assert (=> b!61922 (= e!36401 (= (size!1072 lt!12555) e!36400))))

(declare-fun c!18591 () Bool)

(assert (=> b!61922 (= c!18591 (<= (+ 1 from!821) 0))))

(assert (= (and d!10483 c!18594) b!61918))

(assert (= (and d!10483 (not c!18594)) b!61920))

(assert (= (and b!61920 c!18592) b!61919))

(assert (= (and b!61920 (not c!18592)) b!61915))

(assert (= (and d!10483 res!37257) b!61922))

(assert (= (and b!61922 c!18591) b!61917))

(assert (= (and b!61922 (not c!18591)) b!61921))

(assert (= (and b!61921 c!18593) b!61916))

(assert (= (and b!61921 (not c!18593)) b!61914))

(assert (= (or b!61917 b!61921 b!61914) bm!3558))

(declare-fun m!39478 () Bool)

(assert (=> b!61915 m!39478))

(declare-fun m!39480 () Bool)

(assert (=> d!10483 m!39480))

(declare-fun m!39482 () Bool)

(assert (=> d!10483 m!39482))

(assert (=> bm!3558 m!39420))

(declare-fun m!39484 () Bool)

(assert (=> b!61922 m!39484))

(assert (=> b!61438 d!10483))

(declare-fun b!61923 () Bool)

(declare-fun e!36407 () Int)

(declare-fun call!3564 () Int)

(assert (=> b!61923 (= e!36407 (- call!3564 (+ 1 from!821 1)))))

(declare-fun b!61924 () Bool)

(declare-fun e!36409 () List!1183)

(assert (=> b!61924 (= e!36409 (drop!67 (t!18334 lt!12391) (- (+ 1 from!821 1) 1)))))

(declare-fun b!61925 () Bool)

(assert (=> b!61925 (= e!36407 0)))

(declare-fun b!61926 () Bool)

(declare-fun e!36405 () Int)

(assert (=> b!61926 (= e!36405 call!3564)))

(declare-fun b!61927 () Bool)

(declare-fun e!36408 () List!1183)

(assert (=> b!61927 (= e!36408 Nil!1177)))

(declare-fun d!10485 () Bool)

(declare-fun e!36406 () Bool)

(assert (=> d!10485 e!36406))

(declare-fun res!37258 () Bool)

(assert (=> d!10485 (=> (not res!37258) (not e!36406))))

(declare-fun lt!12556 () List!1183)

(assert (=> d!10485 (= res!37258 (set.subset (content!46 lt!12556) (content!46 lt!12391)))))

(assert (=> d!10485 (= lt!12556 e!36408)))

(declare-fun c!18598 () Bool)

(assert (=> d!10485 (= c!18598 (is-Nil!1177 lt!12391))))

(assert (=> d!10485 (= (drop!67 lt!12391 (+ 1 from!821 1)) lt!12556)))

(declare-fun b!61928 () Bool)

(assert (=> b!61928 (= e!36409 lt!12391)))

(declare-fun b!61929 () Bool)

(assert (=> b!61929 (= e!36408 e!36409)))

(declare-fun c!18596 () Bool)

(assert (=> b!61929 (= c!18596 (<= (+ 1 from!821 1) 0))))

(declare-fun bm!3559 () Bool)

(assert (=> bm!3559 (= call!3564 (size!1072 lt!12391))))

(declare-fun b!61930 () Bool)

(assert (=> b!61930 (= e!36405 e!36407)))

(declare-fun c!18597 () Bool)

(assert (=> b!61930 (= c!18597 (>= (+ 1 from!821 1) call!3564))))

(declare-fun b!61931 () Bool)

(assert (=> b!61931 (= e!36406 (= (size!1072 lt!12556) e!36405))))

(declare-fun c!18595 () Bool)

(assert (=> b!61931 (= c!18595 (<= (+ 1 from!821 1) 0))))

(assert (= (and d!10485 c!18598) b!61927))

(assert (= (and d!10485 (not c!18598)) b!61929))

(assert (= (and b!61929 c!18596) b!61928))

(assert (= (and b!61929 (not c!18596)) b!61924))

(assert (= (and d!10485 res!37258) b!61931))

(assert (= (and b!61931 c!18595) b!61926))

(assert (= (and b!61931 (not c!18595)) b!61930))

(assert (= (and b!61930 c!18597) b!61925))

(assert (= (and b!61930 (not c!18597)) b!61923))

(assert (= (or b!61926 b!61930 b!61923) bm!3559))

(declare-fun m!39486 () Bool)

(assert (=> b!61924 m!39486))

(declare-fun m!39488 () Bool)

(assert (=> d!10485 m!39488))

(declare-fun m!39490 () Bool)

(assert (=> d!10485 m!39490))

(declare-fun m!39492 () Bool)

(assert (=> bm!3559 m!39492))

(declare-fun m!39494 () Bool)

(assert (=> b!61931 m!39494))

(assert (=> b!61438 d!10485))

(declare-fun b!61932 () Bool)

(declare-fun e!36412 () Int)

(declare-fun call!3565 () Int)

(assert (=> b!61932 (= e!36412 (- call!3565 (+ 1 from!821)))))

(declare-fun b!61933 () Bool)

(declare-fun e!36414 () List!1183)

(assert (=> b!61933 (= e!36414 (drop!67 (t!18334 lt!12391) (- (+ 1 from!821) 1)))))

(declare-fun b!61934 () Bool)

(assert (=> b!61934 (= e!36412 0)))

(declare-fun b!61935 () Bool)

(declare-fun e!36410 () Int)

(assert (=> b!61935 (= e!36410 call!3565)))

(declare-fun b!61936 () Bool)

(declare-fun e!36413 () List!1183)

(assert (=> b!61936 (= e!36413 Nil!1177)))

(declare-fun d!10487 () Bool)

(declare-fun e!36411 () Bool)

(assert (=> d!10487 e!36411))

(declare-fun res!37259 () Bool)

(assert (=> d!10487 (=> (not res!37259) (not e!36411))))

(declare-fun lt!12557 () List!1183)

(assert (=> d!10487 (= res!37259 (set.subset (content!46 lt!12557) (content!46 lt!12391)))))

(assert (=> d!10487 (= lt!12557 e!36413)))

(declare-fun c!18603 () Bool)

(assert (=> d!10487 (= c!18603 (is-Nil!1177 lt!12391))))

(assert (=> d!10487 (= (drop!67 lt!12391 (+ 1 from!821)) lt!12557)))

(declare-fun b!61937 () Bool)

(assert (=> b!61937 (= e!36414 lt!12391)))

(declare-fun b!61938 () Bool)

(assert (=> b!61938 (= e!36413 e!36414)))

(declare-fun c!18601 () Bool)

(assert (=> b!61938 (= c!18601 (<= (+ 1 from!821) 0))))

(declare-fun bm!3560 () Bool)

(assert (=> bm!3560 (= call!3565 (size!1072 lt!12391))))

(declare-fun b!61939 () Bool)

(assert (=> b!61939 (= e!36410 e!36412)))

(declare-fun c!18602 () Bool)

(assert (=> b!61939 (= c!18602 (>= (+ 1 from!821) call!3565))))

(declare-fun b!61940 () Bool)

(assert (=> b!61940 (= e!36411 (= (size!1072 lt!12557) e!36410))))

(declare-fun c!18600 () Bool)

(assert (=> b!61940 (= c!18600 (<= (+ 1 from!821) 0))))

(assert (= (and d!10487 c!18603) b!61936))

(assert (= (and d!10487 (not c!18603)) b!61938))

(assert (= (and b!61938 c!18601) b!61937))

(assert (= (and b!61938 (not c!18601)) b!61933))

(assert (= (and d!10487 res!37259) b!61940))

(assert (= (and b!61940 c!18600) b!61935))

(assert (= (and b!61940 (not c!18600)) b!61939))

(assert (= (and b!61939 c!18602) b!61934))

(assert (= (and b!61939 (not c!18602)) b!61932))

(assert (= (or b!61935 b!61939 b!61932) bm!3560))

(declare-fun m!39496 () Bool)

(assert (=> b!61933 m!39496))

(declare-fun m!39498 () Bool)

(assert (=> d!10487 m!39498))

(assert (=> d!10487 m!39490))

(assert (=> bm!3560 m!39492))

(declare-fun m!39500 () Bool)

(assert (=> b!61940 m!39500))

(assert (=> b!61438 d!10487))

(declare-fun d!10489 () Bool)

(assert (=> d!10489 (= (head!405 (drop!67 lt!12380 (+ 1 from!821))) (h!6574 (drop!67 lt!12380 (+ 1 from!821))))))

(assert (=> b!61438 d!10489))

(declare-fun d!10491 () Bool)

(assert (=> d!10491 (= (tail!89 (drop!67 lt!12391 (+ 1 from!821))) (drop!67 lt!12391 (+ 1 from!821 1)))))

(declare-fun lt!12558 () Unit!687)

(assert (=> d!10491 (= lt!12558 (choose!1238 lt!12391 (+ 1 from!821)))))

(declare-fun e!36415 () Bool)

(assert (=> d!10491 e!36415))

(declare-fun res!37260 () Bool)

(assert (=> d!10491 (=> (not res!37260) (not e!36415))))

(assert (=> d!10491 (= res!37260 (>= (+ 1 from!821) 0))))

(assert (=> d!10491 (= (lemmaDropTail!57 lt!12391 (+ 1 from!821)) lt!12558)))

(declare-fun b!61941 () Bool)

(assert (=> b!61941 (= e!36415 (< (+ 1 from!821) (size!1072 lt!12391)))))

(assert (= (and d!10491 res!37260) b!61941))

(assert (=> d!10491 m!38830))

(assert (=> d!10491 m!38830))

(assert (=> d!10491 m!38832))

(assert (=> d!10491 m!38842))

(declare-fun m!39502 () Bool)

(assert (=> d!10491 m!39502))

(assert (=> b!61941 m!39492))

(assert (=> b!61438 d!10491))

(declare-fun d!10493 () Bool)

(declare-fun lt!12560 () Bool)

(declare-fun e!36416 () Bool)

(assert (=> d!10493 (= lt!12560 e!36416)))

(declare-fun res!37261 () Bool)

(assert (=> d!10493 (=> (not res!37261) (not e!36416))))

(assert (=> d!10493 (= res!37261 (= (list!318 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 (apply!156 v!6227 (+ 1 from!821 1))))))) (list!318 (singletonSeq!6 (apply!156 v!6227 (+ 1 from!821 1))))))))

(declare-fun e!36417 () Bool)

(assert (=> d!10493 (= lt!12560 e!36417)))

(declare-fun res!37263 () Bool)

(assert (=> d!10493 (=> (not res!37263) (not e!36417))))

(declare-fun lt!12559 () tuple2!1148)

(assert (=> d!10493 (= res!37263 (= (size!1066 (_1!781 lt!12559)) 1))))

(assert (=> d!10493 (= lt!12559 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 (apply!156 v!6227 (+ 1 from!821 1))))))))

(assert (=> d!10493 (not (isEmpty!256 rules!1069))))

(assert (=> d!10493 (= (rulesProduceIndividualToken!43 thiss!11059 rules!1069 (apply!156 v!6227 (+ 1 from!821 1))) lt!12560)))

(declare-fun b!61942 () Bool)

(declare-fun res!37262 () Bool)

(assert (=> b!61942 (=> (not res!37262) (not e!36417))))

(assert (=> b!61942 (= res!37262 (= (apply!156 (_1!781 lt!12559) 0) (apply!156 v!6227 (+ 1 from!821 1))))))

(declare-fun b!61943 () Bool)

(assert (=> b!61943 (= e!36417 (isEmpty!258 (_2!781 lt!12559)))))

(declare-fun b!61944 () Bool)

(assert (=> b!61944 (= e!36416 (isEmpty!258 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 (apply!156 v!6227 (+ 1 from!821 1))))))))))

(assert (= (and d!10493 res!37263) b!61942))

(assert (= (and b!61942 res!37262) b!61943))

(assert (= (and d!10493 res!37261) b!61944))

(declare-fun m!39504 () Bool)

(assert (=> d!10493 m!39504))

(declare-fun m!39506 () Bool)

(assert (=> d!10493 m!39506))

(declare-fun m!39508 () Bool)

(assert (=> d!10493 m!39508))

(assert (=> d!10493 m!39506))

(declare-fun m!39510 () Bool)

(assert (=> d!10493 m!39510))

(assert (=> d!10493 m!38798))

(assert (=> d!10493 m!39506))

(assert (=> d!10493 m!38450))

(declare-fun m!39512 () Bool)

(assert (=> d!10493 m!39512))

(assert (=> d!10493 m!39510))

(declare-fun m!39514 () Bool)

(assert (=> d!10493 m!39514))

(declare-fun m!39516 () Bool)

(assert (=> b!61942 m!39516))

(declare-fun m!39518 () Bool)

(assert (=> b!61943 m!39518))

(assert (=> b!61944 m!38798))

(assert (=> b!61944 m!39506))

(assert (=> b!61944 m!39506))

(assert (=> b!61944 m!39510))

(assert (=> b!61944 m!39510))

(assert (=> b!61944 m!39514))

(declare-fun m!39520 () Bool)

(assert (=> b!61944 m!39520))

(assert (=> b!61438 d!10493))

(declare-fun d!10495 () Bool)

(assert (=> d!10495 (= (head!405 (drop!67 lt!12385 lt!12390)) (apply!157 lt!12385 lt!12390))))

(declare-fun lt!12561 () Unit!687)

(assert (=> d!10495 (= lt!12561 (choose!1239 lt!12385 lt!12390))))

(declare-fun e!36418 () Bool)

(assert (=> d!10495 e!36418))

(declare-fun res!37264 () Bool)

(assert (=> d!10495 (=> (not res!37264) (not e!36418))))

(assert (=> d!10495 (= res!37264 (>= lt!12390 0))))

(assert (=> d!10495 (= (lemmaDropApply!65 lt!12385 lt!12390) lt!12561)))

(declare-fun b!61945 () Bool)

(assert (=> b!61945 (= e!36418 (< lt!12390 (size!1072 lt!12385)))))

(assert (= (and d!10495 res!37264) b!61945))

(assert (=> d!10495 m!38814))

(assert (=> d!10495 m!38814))

(assert (=> d!10495 m!38816))

(assert (=> d!10495 m!38840))

(declare-fun m!39522 () Bool)

(assert (=> d!10495 m!39522))

(assert (=> b!61945 m!39410))

(assert (=> b!61438 d!10495))

(declare-fun b!61946 () Bool)

(declare-fun e!36421 () Int)

(declare-fun call!3566 () Int)

(assert (=> b!61946 (= e!36421 (- call!3566 lt!12374))))

(declare-fun b!61947 () Bool)

(declare-fun e!36423 () List!1183)

(assert (=> b!61947 (= e!36423 (drop!67 (t!18334 lt!12387) (- lt!12374 1)))))

(declare-fun b!61948 () Bool)

(assert (=> b!61948 (= e!36421 0)))

(declare-fun b!61949 () Bool)

(declare-fun e!36419 () Int)

(assert (=> b!61949 (= e!36419 call!3566)))

(declare-fun b!61950 () Bool)

(declare-fun e!36422 () List!1183)

(assert (=> b!61950 (= e!36422 Nil!1177)))

(declare-fun d!10497 () Bool)

(declare-fun e!36420 () Bool)

(assert (=> d!10497 e!36420))

(declare-fun res!37265 () Bool)

(assert (=> d!10497 (=> (not res!37265) (not e!36420))))

(declare-fun lt!12562 () List!1183)

(assert (=> d!10497 (= res!37265 (set.subset (content!46 lt!12562) (content!46 lt!12387)))))

(assert (=> d!10497 (= lt!12562 e!36422)))

(declare-fun c!18607 () Bool)

(assert (=> d!10497 (= c!18607 (is-Nil!1177 lt!12387))))

(assert (=> d!10497 (= (drop!67 lt!12387 lt!12374) lt!12562)))

(declare-fun b!61951 () Bool)

(assert (=> b!61951 (= e!36423 lt!12387)))

(declare-fun b!61952 () Bool)

(assert (=> b!61952 (= e!36422 e!36423)))

(declare-fun c!18605 () Bool)

(assert (=> b!61952 (= c!18605 (<= lt!12374 0))))

(declare-fun bm!3561 () Bool)

(assert (=> bm!3561 (= call!3566 (size!1072 lt!12387))))

(declare-fun b!61953 () Bool)

(assert (=> b!61953 (= e!36419 e!36421)))

(declare-fun c!18606 () Bool)

(assert (=> b!61953 (= c!18606 (>= lt!12374 call!3566))))

(declare-fun b!61954 () Bool)

(assert (=> b!61954 (= e!36420 (= (size!1072 lt!12562) e!36419))))

(declare-fun c!18604 () Bool)

(assert (=> b!61954 (= c!18604 (<= lt!12374 0))))

(assert (= (and d!10497 c!18607) b!61950))

(assert (= (and d!10497 (not c!18607)) b!61952))

(assert (= (and b!61952 c!18605) b!61951))

(assert (= (and b!61952 (not c!18605)) b!61947))

(assert (= (and d!10497 res!37265) b!61954))

(assert (= (and b!61954 c!18604) b!61949))

(assert (= (and b!61954 (not c!18604)) b!61953))

(assert (= (and b!61953 c!18606) b!61948))

(assert (= (and b!61953 (not c!18606)) b!61946))

(assert (= (or b!61949 b!61953 b!61946) bm!3561))

(declare-fun m!39524 () Bool)

(assert (=> b!61947 m!39524))

(declare-fun m!39526 () Bool)

(assert (=> d!10497 m!39526))

(assert (=> d!10497 m!39446))

(assert (=> bm!3561 m!39448))

(declare-fun m!39528 () Bool)

(assert (=> b!61954 m!39528))

(assert (=> b!61438 d!10497))

(assert (=> b!61438 d!10199))

(declare-fun d!10499 () Bool)

(assert (=> d!10499 (= (tail!89 (drop!67 lt!12387 lt!12374)) (drop!67 lt!12387 (+ lt!12374 1)))))

(declare-fun lt!12563 () Unit!687)

(assert (=> d!10499 (= lt!12563 (choose!1238 lt!12387 lt!12374))))

(declare-fun e!36424 () Bool)

(assert (=> d!10499 e!36424))

(declare-fun res!37266 () Bool)

(assert (=> d!10499 (=> (not res!37266) (not e!36424))))

(assert (=> d!10499 (= res!37266 (>= lt!12374 0))))

(assert (=> d!10499 (= (lemmaDropTail!57 lt!12387 lt!12374) lt!12563)))

(declare-fun b!61955 () Bool)

(assert (=> b!61955 (= e!36424 (< lt!12374 (size!1072 lt!12387)))))

(assert (= (and d!10499 res!37266) b!61955))

(assert (=> d!10499 m!38824))

(assert (=> d!10499 m!38824))

(assert (=> d!10499 m!38826))

(assert (=> d!10499 m!38812))

(declare-fun m!39530 () Bool)

(assert (=> d!10499 m!39530))

(assert (=> b!61955 m!39448))

(assert (=> b!61438 d!10499))

(declare-fun d!10501 () Bool)

(assert (=> d!10501 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12395)))

(declare-fun lt!12564 () Unit!687)

(assert (=> d!10501 (= lt!12564 (choose!1237 thiss!11059 rules!1069 lt!12383 lt!12395))))

(assert (=> d!10501 (not (isEmpty!256 rules!1069))))

(assert (=> d!10501 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!29 thiss!11059 rules!1069 lt!12383 lt!12395) lt!12564)))

(declare-fun bs!7245 () Bool)

(assert (= bs!7245 d!10501))

(assert (=> bs!7245 m!38808))

(declare-fun m!39532 () Bool)

(assert (=> bs!7245 m!39532))

(assert (=> bs!7245 m!38450))

(assert (=> b!61438 d!10501))

(declare-fun d!10503 () Bool)

(declare-fun lt!12565 () Token!272)

(assert (=> d!10503 (contains!173 lt!12380 lt!12565)))

(declare-fun e!36426 () Token!272)

(assert (=> d!10503 (= lt!12565 e!36426)))

(declare-fun c!18608 () Bool)

(assert (=> d!10503 (= c!18608 (= (+ 1 from!821) 0))))

(declare-fun e!36425 () Bool)

(assert (=> d!10503 e!36425))

(declare-fun res!37267 () Bool)

(assert (=> d!10503 (=> (not res!37267) (not e!36425))))

(assert (=> d!10503 (= res!37267 (<= 0 (+ 1 from!821)))))

(assert (=> d!10503 (= (apply!157 lt!12380 (+ 1 from!821)) lt!12565)))

(declare-fun b!61956 () Bool)

(assert (=> b!61956 (= e!36425 (< (+ 1 from!821) (size!1072 lt!12380)))))

(declare-fun b!61957 () Bool)

(assert (=> b!61957 (= e!36426 (head!405 lt!12380))))

(declare-fun b!61958 () Bool)

(assert (=> b!61958 (= e!36426 (apply!157 (tail!89 lt!12380) (- (+ 1 from!821) 1)))))

(assert (= (and d!10503 res!37267) b!61956))

(assert (= (and d!10503 c!18608) b!61957))

(assert (= (and d!10503 (not c!18608)) b!61958))

(declare-fun m!39534 () Bool)

(assert (=> d!10503 m!39534))

(assert (=> b!61956 m!39420))

(declare-fun m!39536 () Bool)

(assert (=> b!61957 m!39536))

(declare-fun m!39538 () Bool)

(assert (=> b!61958 m!39538))

(assert (=> b!61958 m!39538))

(declare-fun m!39540 () Bool)

(assert (=> b!61958 m!39540))

(assert (=> b!61438 d!10503))

(declare-fun d!10505 () Bool)

(declare-fun lt!12567 () Bool)

(declare-fun e!36427 () Bool)

(assert (=> d!10505 (= lt!12567 e!36427)))

(declare-fun res!37268 () Bool)

(assert (=> d!10505 (=> (not res!37268) (not e!36427))))

(assert (=> d!10505 (= res!37268 (= (list!318 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12389))))) (list!318 (singletonSeq!6 lt!12389))))))

(declare-fun e!36428 () Bool)

(assert (=> d!10505 (= lt!12567 e!36428)))

(declare-fun res!37270 () Bool)

(assert (=> d!10505 (=> (not res!37270) (not e!36428))))

(declare-fun lt!12566 () tuple2!1148)

(assert (=> d!10505 (= res!37270 (= (size!1066 (_1!781 lt!12566)) 1))))

(assert (=> d!10505 (= lt!12566 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12389))))))

(assert (=> d!10505 (not (isEmpty!256 rules!1069))))

(assert (=> d!10505 (= (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12389) lt!12567)))

(declare-fun b!61959 () Bool)

(declare-fun res!37269 () Bool)

(assert (=> b!61959 (=> (not res!37269) (not e!36428))))

(assert (=> b!61959 (= res!37269 (= (apply!156 (_1!781 lt!12566) 0) lt!12389))))

(declare-fun b!61960 () Bool)

(assert (=> b!61960 (= e!36428 (isEmpty!258 (_2!781 lt!12566)))))

(declare-fun b!61961 () Bool)

(assert (=> b!61961 (= e!36427 (isEmpty!258 (_2!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12389))))))))

(assert (= (and d!10505 res!37270) b!61959))

(assert (= (and b!61959 res!37269) b!61960))

(assert (= (and d!10505 res!37268) b!61961))

(declare-fun m!39542 () Bool)

(assert (=> d!10505 m!39542))

(declare-fun m!39544 () Bool)

(assert (=> d!10505 m!39544))

(declare-fun m!39546 () Bool)

(assert (=> d!10505 m!39546))

(assert (=> d!10505 m!39544))

(declare-fun m!39548 () Bool)

(assert (=> d!10505 m!39548))

(assert (=> d!10505 m!39544))

(assert (=> d!10505 m!38450))

(declare-fun m!39550 () Bool)

(assert (=> d!10505 m!39550))

(assert (=> d!10505 m!39548))

(declare-fun m!39552 () Bool)

(assert (=> d!10505 m!39552))

(declare-fun m!39554 () Bool)

(assert (=> b!61959 m!39554))

(declare-fun m!39556 () Bool)

(assert (=> b!61960 m!39556))

(assert (=> b!61961 m!39544))

(assert (=> b!61961 m!39544))

(assert (=> b!61961 m!39548))

(assert (=> b!61961 m!39548))

(assert (=> b!61961 m!39552))

(declare-fun m!39558 () Bool)

(assert (=> b!61961 m!39558))

(assert (=> b!61438 d!10505))

(declare-fun d!10507 () Bool)

(assert (=> d!10507 (= (tail!89 (drop!67 lt!12387 lt!12374)) (t!18334 (drop!67 lt!12387 lt!12374)))))

(assert (=> b!61438 d!10507))

(declare-fun d!10509 () Bool)

(declare-fun lt!12568 () Bool)

(assert (=> d!10509 (= lt!12568 (set.member lt!12313 (content!46 lt!12144)))))

(declare-fun e!36430 () Bool)

(assert (=> d!10509 (= lt!12568 e!36430)))

(declare-fun res!37272 () Bool)

(assert (=> d!10509 (=> (not res!37272) (not e!36430))))

(assert (=> d!10509 (= res!37272 (is-Cons!1177 lt!12144))))

(assert (=> d!10509 (= (contains!173 lt!12144 lt!12313) lt!12568)))

(declare-fun b!61962 () Bool)

(declare-fun e!36429 () Bool)

(assert (=> b!61962 (= e!36430 e!36429)))

(declare-fun res!37271 () Bool)

(assert (=> b!61962 (=> res!37271 e!36429)))

(assert (=> b!61962 (= res!37271 (= (h!6574 lt!12144) lt!12313))))

(declare-fun b!61963 () Bool)

(assert (=> b!61963 (= e!36429 (contains!173 (t!18334 lt!12144) lt!12313))))

(assert (= (and d!10509 res!37272) b!61962))

(assert (= (and b!61962 (not res!37271)) b!61963))

(assert (=> d!10509 m!38604))

(declare-fun m!39560 () Bool)

(assert (=> d!10509 m!39560))

(declare-fun m!39562 () Bool)

(assert (=> b!61963 m!39562))

(assert (=> d!10233 d!10509))

(declare-fun d!10511 () Bool)

(declare-fun lt!12569 () Int)

(assert (=> d!10511 (>= lt!12569 0)))

(declare-fun e!36431 () Int)

(assert (=> d!10511 (= lt!12569 e!36431)))

(declare-fun c!18609 () Bool)

(assert (=> d!10511 (= c!18609 (is-Nil!1177 lt!12220))))

(assert (=> d!10511 (= (size!1072 lt!12220) lt!12569)))

(declare-fun b!61964 () Bool)

(assert (=> b!61964 (= e!36431 0)))

(declare-fun b!61965 () Bool)

(assert (=> b!61965 (= e!36431 (+ 1 (size!1072 (t!18334 lt!12220))))))

(assert (= (and d!10511 c!18609) b!61964))

(assert (= (and d!10511 (not c!18609)) b!61965))

(declare-fun m!39564 () Bool)

(assert (=> b!61965 m!39564))

(assert (=> b!61379 d!10511))

(declare-fun d!10513 () Bool)

(assert (=> d!10513 true))

(declare-fun order!419 () Int)

(declare-fun lambda!1208 () Int)

(declare-fun dynLambda!249 (Int Int) Int)

(assert (=> d!10513 (< (dynLambda!240 order!405 (toValue!737 (transformation!254 (h!6573 rules!1069)))) (dynLambda!249 order!419 lambda!1208))))

(declare-fun Forall2!14 (Int) Bool)

(assert (=> d!10513 (= (equivClasses!30 (toChars!596 (transformation!254 (h!6573 rules!1069))) (toValue!737 (transformation!254 (h!6573 rules!1069)))) (Forall2!14 lambda!1208))))

(declare-fun bs!7246 () Bool)

(assert (= bs!7246 d!10513))

(declare-fun m!39566 () Bool)

(assert (=> bs!7246 m!39566))

(assert (=> b!61476 d!10513))

(assert (=> b!61389 d!10349))

(assert (=> bm!3540 d!10349))

(assert (=> d!10193 d!10427))

(assert (=> d!10193 d!10431))

(declare-fun d!10515 () Bool)

(assert (=> d!10515 (= (list!318 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152))))) (list!321 (c!18453 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12152)))))))))

(declare-fun bs!7247 () Bool)

(assert (= bs!7247 d!10515))

(declare-fun m!39568 () Bool)

(assert (=> bs!7247 m!39568))

(assert (=> d!10193 d!10515))

(declare-fun d!10517 () Bool)

(declare-fun lt!12572 () Int)

(assert (=> d!10517 (= lt!12572 (size!1072 (list!318 (_1!781 lt!12209))))))

(assert (=> d!10517 (= lt!12572 (size!1073 (c!18453 (_1!781 lt!12209))))))

(assert (=> d!10517 (= (size!1066 (_1!781 lt!12209)) lt!12572)))

(declare-fun bs!7248 () Bool)

(assert (= bs!7248 d!10517))

(declare-fun m!39570 () Bool)

(assert (=> bs!7248 m!39570))

(assert (=> bs!7248 m!39570))

(declare-fun m!39572 () Bool)

(assert (=> bs!7248 m!39572))

(declare-fun m!39574 () Bool)

(assert (=> bs!7248 m!39574))

(assert (=> d!10193 d!10517))

(declare-fun d!10519 () Bool)

(assert (=> d!10519 (= (list!318 (singletonSeq!6 lt!12152)) (list!321 (c!18453 (singletonSeq!6 lt!12152))))))

(declare-fun bs!7249 () Bool)

(assert (= bs!7249 d!10519))

(declare-fun m!39576 () Bool)

(assert (=> bs!7249 m!39576))

(assert (=> d!10193 d!10519))

(assert (=> d!10193 d!10263))

(assert (=> d!10193 d!10429))

(declare-fun d!10521 () Bool)

(declare-fun res!37290 () Bool)

(declare-fun e!36445 () Bool)

(assert (=> d!10521 (=> (not res!37290) (not e!36445))))

(assert (=> d!10521 (= res!37290 (= (csize!856 (c!18453 v!6227)) (+ (size!1073 (left!897 (c!18453 v!6227))) (size!1073 (right!1227 (c!18453 v!6227))))))))

(assert (=> d!10521 (= (inv!1573 (c!18453 v!6227)) e!36445)))

(declare-fun b!61991 () Bool)

(declare-fun res!37291 () Bool)

(assert (=> b!61991 (=> (not res!37291) (not e!36445))))

(assert (=> b!61991 (= res!37291 (and (not (= (left!897 (c!18453 v!6227)) Empty!313)) (not (= (right!1227 (c!18453 v!6227)) Empty!313))))))

(declare-fun b!61992 () Bool)

(declare-fun res!37292 () Bool)

(assert (=> b!61992 (=> (not res!37292) (not e!36445))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!15 (Conc!313) Int)

(assert (=> b!61992 (= res!37292 (= (cheight!524 (c!18453 v!6227)) (+ (max!0 (height!15 (left!897 (c!18453 v!6227))) (height!15 (right!1227 (c!18453 v!6227)))) 1)))))

(declare-fun b!61993 () Bool)

(assert (=> b!61993 (= e!36445 (<= 0 (cheight!524 (c!18453 v!6227))))))

(assert (= (and d!10521 res!37290) b!61991))

(assert (= (and b!61991 res!37291) b!61992))

(assert (= (and b!61992 res!37292) b!61993))

(assert (=> d!10521 m!39296))

(declare-fun m!39596 () Bool)

(assert (=> d!10521 m!39596))

(declare-fun m!39598 () Bool)

(assert (=> b!61992 m!39598))

(declare-fun m!39600 () Bool)

(assert (=> b!61992 m!39600))

(assert (=> b!61992 m!39598))

(assert (=> b!61992 m!39600))

(declare-fun m!39602 () Bool)

(assert (=> b!61992 m!39602))

(assert (=> b!61350 d!10521))

(declare-fun d!10525 () Bool)

(assert (=> d!10525 (= (list!318 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149))))) (list!321 (c!18453 (_1!781 (lex!56 thiss!11059 rules!1069 (print!11 thiss!11059 (singletonSeq!6 lt!12149)))))))))

(declare-fun bs!7250 () Bool)

(assert (= bs!7250 d!10525))

(declare-fun m!39604 () Bool)

(assert (=> bs!7250 m!39604))

(assert (=> d!10191 d!10525))

(assert (=> d!10191 d!10337))

(assert (=> d!10191 d!10335))

(assert (=> d!10191 d!10339))

(declare-fun d!10527 () Bool)

(assert (=> d!10527 (= (list!318 (singletonSeq!6 lt!12149)) (list!321 (c!18453 (singletonSeq!6 lt!12149))))))

(declare-fun bs!7251 () Bool)

(assert (= bs!7251 d!10527))

(declare-fun m!39606 () Bool)

(assert (=> bs!7251 m!39606))

(assert (=> d!10191 d!10527))

(assert (=> d!10191 d!10263))

(declare-fun d!10529 () Bool)

(declare-fun lt!12574 () Int)

(assert (=> d!10529 (= lt!12574 (size!1072 (list!318 (_1!781 lt!12207))))))

(assert (=> d!10529 (= lt!12574 (size!1073 (c!18453 (_1!781 lt!12207))))))

(assert (=> d!10529 (= (size!1066 (_1!781 lt!12207)) lt!12574)))

(declare-fun bs!7252 () Bool)

(assert (= bs!7252 d!10529))

(assert (=> bs!7252 m!39162))

(assert (=> bs!7252 m!39162))

(declare-fun m!39608 () Bool)

(assert (=> bs!7252 m!39608))

(declare-fun m!39610 () Bool)

(assert (=> bs!7252 m!39610))

(assert (=> d!10191 d!10529))

(declare-fun d!10531 () Bool)

(declare-fun lt!12575 () Token!272)

(assert (=> d!10531 (contains!173 (tail!89 lt!12144) lt!12575)))

(declare-fun e!36447 () Token!272)

(assert (=> d!10531 (= lt!12575 e!36447)))

(declare-fun c!18613 () Bool)

(assert (=> d!10531 (= c!18613 (= (- from!821 1) 0))))

(declare-fun e!36446 () Bool)

(assert (=> d!10531 e!36446))

(declare-fun res!37293 () Bool)

(assert (=> d!10531 (=> (not res!37293) (not e!36446))))

(assert (=> d!10531 (= res!37293 (<= 0 (- from!821 1)))))

(assert (=> d!10531 (= (apply!157 (tail!89 lt!12144) (- from!821 1)) lt!12575)))

(declare-fun b!61994 () Bool)

(assert (=> b!61994 (= e!36446 (< (- from!821 1) (size!1072 (tail!89 lt!12144))))))

(declare-fun b!61995 () Bool)

(assert (=> b!61995 (= e!36447 (head!405 (tail!89 lt!12144)))))

(declare-fun b!61996 () Bool)

(assert (=> b!61996 (= e!36447 (apply!157 (tail!89 (tail!89 lt!12144)) (- (- from!821 1) 1)))))

(assert (= (and d!10531 res!37293) b!61994))

(assert (= (and d!10531 c!18613) b!61995))

(assert (= (and d!10531 (not c!18613)) b!61996))

(assert (=> d!10531 m!38768))

(declare-fun m!39612 () Bool)

(assert (=> d!10531 m!39612))

(assert (=> b!61994 m!38768))

(assert (=> b!61994 m!39372))

(assert (=> b!61995 m!38768))

(assert (=> b!61995 m!39374))

(assert (=> b!61996 m!38768))

(assert (=> b!61996 m!39376))

(assert (=> b!61996 m!39376))

(declare-fun m!39614 () Bool)

(assert (=> b!61996 m!39614))

(assert (=> b!61426 d!10531))

(assert (=> b!61426 d!10453))

(declare-fun d!10533 () Bool)

(declare-fun c!18614 () Bool)

(assert (=> d!10533 (= c!18614 (is-Node!313 (left!897 (c!18453 v!6227))))))

(declare-fun e!36448 () Bool)

(assert (=> d!10533 (= (inv!1566 (left!897 (c!18453 v!6227))) e!36448)))

(declare-fun b!61997 () Bool)

(assert (=> b!61997 (= e!36448 (inv!1573 (left!897 (c!18453 v!6227))))))

(declare-fun b!61998 () Bool)

(declare-fun e!36449 () Bool)

(assert (=> b!61998 (= e!36448 e!36449)))

(declare-fun res!37294 () Bool)

(assert (=> b!61998 (= res!37294 (not (is-Leaf!576 (left!897 (c!18453 v!6227)))))))

(assert (=> b!61998 (=> res!37294 e!36449)))

(declare-fun b!61999 () Bool)

(assert (=> b!61999 (= e!36449 (inv!1574 (left!897 (c!18453 v!6227))))))

(assert (= (and d!10533 c!18614) b!61997))

(assert (= (and d!10533 (not c!18614)) b!61998))

(assert (= (and b!61998 (not res!37294)) b!61999))

(declare-fun m!39616 () Bool)

(assert (=> b!61997 m!39616))

(declare-fun m!39618 () Bool)

(assert (=> b!61999 m!39618))

(assert (=> b!61512 d!10533))

(declare-fun d!10535 () Bool)

(declare-fun c!18615 () Bool)

(assert (=> d!10535 (= c!18615 (is-Node!313 (right!1227 (c!18453 v!6227))))))

(declare-fun e!36450 () Bool)

(assert (=> d!10535 (= (inv!1566 (right!1227 (c!18453 v!6227))) e!36450)))

(declare-fun b!62000 () Bool)

(assert (=> b!62000 (= e!36450 (inv!1573 (right!1227 (c!18453 v!6227))))))

(declare-fun b!62001 () Bool)

(declare-fun e!36451 () Bool)

(assert (=> b!62001 (= e!36450 e!36451)))

(declare-fun res!37295 () Bool)

(assert (=> b!62001 (= res!37295 (not (is-Leaf!576 (right!1227 (c!18453 v!6227)))))))

(assert (=> b!62001 (=> res!37295 e!36451)))

(declare-fun b!62002 () Bool)

(assert (=> b!62002 (= e!36451 (inv!1574 (right!1227 (c!18453 v!6227))))))

(assert (= (and d!10535 c!18615) b!62000))

(assert (= (and d!10535 (not c!18615)) b!62001))

(assert (= (and b!62001 (not res!37295)) b!62002))

(declare-fun m!39620 () Bool)

(assert (=> b!62000 m!39620))

(declare-fun m!39622 () Bool)

(assert (=> b!62002 m!39622))

(assert (=> b!61512 d!10535))

(declare-fun d!10537 () Bool)

(declare-fun lt!12576 () Token!272)

(assert (=> d!10537 (contains!173 (list!318 v!6227) lt!12576)))

(declare-fun e!36453 () Token!272)

(assert (=> d!10537 (= lt!12576 e!36453)))

(declare-fun c!18616 () Bool)

(assert (=> d!10537 (= c!18616 (= (+ 1 from!821) 0))))

(declare-fun e!36452 () Bool)

(assert (=> d!10537 e!36452))

(declare-fun res!37296 () Bool)

(assert (=> d!10537 (=> (not res!37296) (not e!36452))))

(assert (=> d!10537 (= res!37296 (<= 0 (+ 1 from!821)))))

(assert (=> d!10537 (= (apply!157 (list!318 v!6227) (+ 1 from!821)) lt!12576)))

(declare-fun b!62003 () Bool)

(assert (=> b!62003 (= e!36452 (< (+ 1 from!821) (size!1072 (list!318 v!6227))))))

(declare-fun b!62004 () Bool)

(assert (=> b!62004 (= e!36453 (head!405 (list!318 v!6227)))))

(declare-fun b!62005 () Bool)

(assert (=> b!62005 (= e!36453 (apply!157 (tail!89 (list!318 v!6227)) (- (+ 1 from!821) 1)))))

(assert (= (and d!10537 res!37296) b!62003))

(assert (= (and d!10537 c!18616) b!62004))

(assert (= (and d!10537 (not c!18616)) b!62005))

(assert (=> d!10537 m!38478))

(declare-fun m!39624 () Bool)

(assert (=> d!10537 m!39624))

(assert (=> b!62003 m!38478))

(assert (=> b!62003 m!38904))

(assert (=> b!62004 m!38478))

(assert (=> b!62004 m!39288))

(assert (=> b!62005 m!38478))

(assert (=> b!62005 m!39290))

(assert (=> b!62005 m!39290))

(declare-fun m!39626 () Bool)

(assert (=> b!62005 m!39626))

(assert (=> d!10199 d!10537))

(assert (=> d!10199 d!10207))

(declare-fun b!62006 () Bool)

(declare-fun e!36455 () Token!272)

(declare-fun call!3567 () Token!272)

(assert (=> b!62006 (= e!36455 call!3567)))

(declare-fun b!62007 () Bool)

(declare-fun e!36457 () Int)

(assert (=> b!62007 (= e!36457 (+ 1 from!821))))

(declare-fun b!62008 () Bool)

(declare-fun e!36456 () Token!272)

(assert (=> b!62008 (= e!36456 (apply!162 (xs!2892 (c!18453 v!6227)) (+ 1 from!821)))))

(declare-fun d!10539 () Bool)

(declare-fun lt!12578 () Token!272)

(assert (=> d!10539 (= lt!12578 (apply!157 (list!321 (c!18453 v!6227)) (+ 1 from!821)))))

(assert (=> d!10539 (= lt!12578 e!36456)))

(declare-fun c!18618 () Bool)

(assert (=> d!10539 (= c!18618 (is-Leaf!576 (c!18453 v!6227)))))

(declare-fun e!36454 () Bool)

(assert (=> d!10539 e!36454))

(declare-fun res!37297 () Bool)

(assert (=> d!10539 (=> (not res!37297) (not e!36454))))

(assert (=> d!10539 (= res!37297 (<= 0 (+ 1 from!821)))))

(assert (=> d!10539 (= (apply!160 (c!18453 v!6227) (+ 1 from!821)) lt!12578)))

(declare-fun b!62009 () Bool)

(assert (=> b!62009 (= e!36454 (< (+ 1 from!821) (size!1073 (c!18453 v!6227))))))

(declare-fun bm!3562 () Bool)

(declare-fun c!18619 () Bool)

(declare-fun c!18617 () Bool)

(assert (=> bm!3562 (= c!18619 c!18617)))

(assert (=> bm!3562 (= call!3567 (apply!160 (ite c!18617 (left!897 (c!18453 v!6227)) (right!1227 (c!18453 v!6227))) e!36457))))

(declare-fun b!62010 () Bool)

(assert (=> b!62010 (= e!36457 (- (+ 1 from!821) (size!1073 (left!897 (c!18453 v!6227)))))))

(declare-fun b!62011 () Bool)

(assert (=> b!62011 (= e!36455 call!3567)))

(declare-fun b!62012 () Bool)

(assert (=> b!62012 (= e!36456 e!36455)))

(declare-fun lt!12577 () Bool)

(assert (=> b!62012 (= lt!12577 (appendIndex!3 (list!321 (left!897 (c!18453 v!6227))) (list!321 (right!1227 (c!18453 v!6227))) (+ 1 from!821)))))

(assert (=> b!62012 (= c!18617 (< (+ 1 from!821) (size!1073 (left!897 (c!18453 v!6227)))))))

(assert (= (and d!10539 res!37297) b!62009))

(assert (= (and d!10539 c!18618) b!62008))

(assert (= (and d!10539 (not c!18618)) b!62012))

(assert (= (and b!62012 c!18617) b!62006))

(assert (= (and b!62012 (not c!18617)) b!62011))

(assert (= (or b!62006 b!62011) bm!3562))

(assert (= (and bm!3562 c!18619) b!62007))

(assert (= (and bm!3562 (not c!18619)) b!62010))

(declare-fun m!39628 () Bool)

(assert (=> bm!3562 m!39628))

(assert (=> b!62010 m!39296))

(assert (=> d!10539 m!38616))

(assert (=> d!10539 m!38616))

(declare-fun m!39630 () Bool)

(assert (=> d!10539 m!39630))

(declare-fun m!39632 () Bool)

(assert (=> b!62008 m!39632))

(assert (=> b!62009 m!38906))

(assert (=> b!62012 m!39176))

(assert (=> b!62012 m!39178))

(assert (=> b!62012 m!39176))

(assert (=> b!62012 m!39178))

(declare-fun m!39634 () Bool)

(assert (=> b!62012 m!39634))

(assert (=> b!62012 m!39296))

(assert (=> d!10199 d!10539))

(assert (=> b!61392 d!10349))

(assert (=> b!61424 d!10349))

(declare-fun d!10541 () Bool)

(declare-fun lt!12579 () Token!272)

(assert (=> d!10541 (= lt!12579 (apply!157 (list!318 (_1!781 lt!12209)) 0))))

(assert (=> d!10541 (= lt!12579 (apply!160 (c!18453 (_1!781 lt!12209)) 0))))

(declare-fun e!36458 () Bool)

(assert (=> d!10541 e!36458))

(declare-fun res!37298 () Bool)

(assert (=> d!10541 (=> (not res!37298) (not e!36458))))

(assert (=> d!10541 (= res!37298 (<= 0 0))))

(assert (=> d!10541 (= (apply!156 (_1!781 lt!12209) 0) lt!12579)))

(declare-fun b!62013 () Bool)

(assert (=> b!62013 (= e!36458 (< 0 (size!1066 (_1!781 lt!12209))))))

(assert (= (and d!10541 res!37298) b!62013))

(assert (=> d!10541 m!39570))

(assert (=> d!10541 m!39570))

(declare-fun m!39636 () Bool)

(assert (=> d!10541 m!39636))

(declare-fun m!39638 () Bool)

(assert (=> d!10541 m!39638))

(assert (=> b!62013 m!38646))

(assert (=> b!61338 d!10541))

(declare-fun d!10543 () Bool)

(declare-fun res!37303 () Bool)

(declare-fun e!36463 () Bool)

(assert (=> d!10543 (=> res!37303 e!36463)))

(assert (=> d!10543 (= res!37303 (is-Nil!1177 (list!318 v!6227)))))

(assert (=> d!10543 (= (forall!156 (list!318 v!6227) lambda!1194) e!36463)))

(declare-fun b!62018 () Bool)

(declare-fun e!36464 () Bool)

(assert (=> b!62018 (= e!36463 e!36464)))

(declare-fun res!37304 () Bool)

(assert (=> b!62018 (=> (not res!37304) (not e!36464))))

(declare-fun dynLambda!251 (Int Token!272) Bool)

(assert (=> b!62018 (= res!37304 (dynLambda!251 lambda!1194 (h!6574 (list!318 v!6227))))))

(declare-fun b!62019 () Bool)

(assert (=> b!62019 (= e!36464 (forall!156 (t!18334 (list!318 v!6227)) lambda!1194))))

(assert (= (and d!10543 (not res!37303)) b!62018))

(assert (= (and b!62018 res!37304) b!62019))

(declare-fun b_lambda!505 () Bool)

(assert (=> (not b_lambda!505) (not b!62018)))

(declare-fun m!39640 () Bool)

(assert (=> b!62018 m!39640))

(declare-fun m!39642 () Bool)

(assert (=> b!62019 m!39642))

(assert (=> d!10243 d!10543))

(assert (=> d!10243 d!10207))

(declare-fun d!10545 () Bool)

(declare-fun lt!12585 () Bool)

(assert (=> d!10545 (= lt!12585 (forall!156 (list!318 v!6227) lambda!1194))))

(declare-fun forall!161 (Conc!313 Int) Bool)

(assert (=> d!10545 (= lt!12585 (forall!161 (c!18453 v!6227) lambda!1194))))

(assert (=> d!10545 (= (forall!157 v!6227 lambda!1194) lt!12585)))

(declare-fun bs!7254 () Bool)

(assert (= bs!7254 d!10545))

(assert (=> bs!7254 m!38478))

(assert (=> bs!7254 m!38478))

(assert (=> bs!7254 m!38898))

(declare-fun m!39650 () Bool)

(assert (=> bs!7254 m!39650))

(assert (=> d!10243 d!10545))

(assert (=> d!10243 d!10263))

(declare-fun b!62038 () Bool)

(declare-fun res!37323 () Bool)

(declare-fun e!36474 () Bool)

(assert (=> b!62038 (=> (not res!37323) (not e!36474))))

(declare-fun isEmpty!266 (Conc!313) Bool)

(assert (=> b!62038 (= res!37323 (not (isEmpty!266 (left!897 (c!18453 v!6227)))))))

(declare-fun b!62039 () Bool)

(declare-fun e!36475 () Bool)

(assert (=> b!62039 (= e!36475 e!36474)))

(declare-fun res!37321 () Bool)

(assert (=> b!62039 (=> (not res!37321) (not e!36474))))

(assert (=> b!62039 (= res!37321 (<= (- 1) (- (height!15 (left!897 (c!18453 v!6227))) (height!15 (right!1227 (c!18453 v!6227))))))))

(declare-fun b!62040 () Bool)

(assert (=> b!62040 (= e!36474 (not (isEmpty!266 (right!1227 (c!18453 v!6227)))))))

(declare-fun b!62041 () Bool)

(declare-fun res!37326 () Bool)

(assert (=> b!62041 (=> (not res!37326) (not e!36474))))

(assert (=> b!62041 (= res!37326 (isBalanced!52 (left!897 (c!18453 v!6227))))))

(declare-fun d!10549 () Bool)

(declare-fun res!37322 () Bool)

(assert (=> d!10549 (=> res!37322 e!36475)))

(assert (=> d!10549 (= res!37322 (not (is-Node!313 (c!18453 v!6227))))))

(assert (=> d!10549 (= (isBalanced!52 (c!18453 v!6227)) e!36475)))

(declare-fun b!62042 () Bool)

(declare-fun res!37325 () Bool)

(assert (=> b!62042 (=> (not res!37325) (not e!36474))))

(assert (=> b!62042 (= res!37325 (<= (- (height!15 (left!897 (c!18453 v!6227))) (height!15 (right!1227 (c!18453 v!6227)))) 1))))

(declare-fun b!62043 () Bool)

(declare-fun res!37324 () Bool)

(assert (=> b!62043 (=> (not res!37324) (not e!36474))))

(assert (=> b!62043 (= res!37324 (isBalanced!52 (right!1227 (c!18453 v!6227))))))

(assert (= (and d!10549 (not res!37322)) b!62039))

(assert (= (and b!62039 res!37321) b!62042))

(assert (= (and b!62042 res!37325) b!62041))

(assert (= (and b!62041 res!37326) b!62043))

(assert (= (and b!62043 res!37324) b!62038))

(assert (= (and b!62038 res!37323) b!62040))

(assert (=> b!62042 m!39598))

(assert (=> b!62042 m!39600))

(declare-fun m!39666 () Bool)

(assert (=> b!62038 m!39666))

(declare-fun m!39668 () Bool)

(assert (=> b!62040 m!39668))

(declare-fun m!39670 () Bool)

(assert (=> b!62041 m!39670))

(declare-fun m!39672 () Bool)

(assert (=> b!62043 m!39672))

(assert (=> b!62039 m!39598))

(assert (=> b!62039 m!39600))

(assert (=> d!10261 d!10549))

(declare-fun d!10555 () Bool)

(declare-fun lt!12590 () Int)

(assert (=> d!10555 (>= lt!12590 0)))

(declare-fun e!36476 () Int)

(assert (=> d!10555 (= lt!12590 e!36476)))

(declare-fun c!18621 () Bool)

(assert (=> d!10555 (= c!18621 (is-Nil!1177 lt!12280))))

(assert (=> d!10555 (= (size!1072 lt!12280) lt!12590)))

(declare-fun b!62044 () Bool)

(assert (=> b!62044 (= e!36476 0)))

(declare-fun b!62045 () Bool)

(assert (=> b!62045 (= e!36476 (+ 1 (size!1072 (t!18334 lt!12280))))))

(assert (= (and d!10555 c!18621) b!62044))

(assert (= (and d!10555 (not c!18621)) b!62045))

(declare-fun m!39674 () Bool)

(assert (=> b!62045 m!39674))

(assert (=> b!61401 d!10555))

(declare-fun d!10557 () Bool)

(declare-fun lt!12591 () Bool)

(assert (=> d!10557 (= lt!12591 (set.member lt!12152 (content!46 (list!318 v!6227))))))

(declare-fun e!36478 () Bool)

(assert (=> d!10557 (= lt!12591 e!36478)))

(declare-fun res!37328 () Bool)

(assert (=> d!10557 (=> (not res!37328) (not e!36478))))

(assert (=> d!10557 (= res!37328 (is-Cons!1177 (list!318 v!6227)))))

(assert (=> d!10557 (= (contains!173 (list!318 v!6227) lt!12152) lt!12591)))

(declare-fun b!62046 () Bool)

(declare-fun e!36477 () Bool)

(assert (=> b!62046 (= e!36478 e!36477)))

(declare-fun res!37327 () Bool)

(assert (=> b!62046 (=> res!37327 e!36477)))

(assert (=> b!62046 (= res!37327 (= (h!6574 (list!318 v!6227)) lt!12152))))

(declare-fun b!62047 () Bool)

(assert (=> b!62047 (= e!36477 (contains!173 (t!18334 (list!318 v!6227)) lt!12152))))

(assert (= (and d!10557 res!37328) b!62046))

(assert (= (and b!62046 (not res!37327)) b!62047))

(assert (=> d!10557 m!38478))

(assert (=> d!10557 m!39228))

(declare-fun m!39676 () Bool)

(assert (=> d!10557 m!39676))

(declare-fun m!39678 () Bool)

(assert (=> b!62047 m!39678))

(assert (=> d!10197 d!10557))

(assert (=> d!10197 d!10207))

(declare-fun d!10559 () Bool)

(declare-fun lt!12592 () Bool)

(assert (=> d!10559 (= lt!12592 (contains!173 (list!321 (c!18453 v!6227)) lt!12152))))

(declare-fun e!36481 () Bool)

(assert (=> d!10559 (= lt!12592 e!36481)))

(declare-fun res!37330 () Bool)

(assert (=> d!10559 (=> (not res!37330) (not e!36481))))

(assert (=> d!10559 (= res!37330 (not (is-Empty!313 (c!18453 v!6227))))))

(assert (=> d!10559 (= (contains!176 (c!18453 v!6227) lt!12152) lt!12592)))

(declare-fun b!62050 () Bool)

(declare-fun e!36480 () Bool)

(declare-fun e!36479 () Bool)

(assert (=> b!62050 (= e!36480 e!36479)))

(declare-fun res!37329 () Bool)

(assert (=> b!62050 (= res!37329 (contains!176 (left!897 (c!18453 v!6227)) lt!12152))))

(assert (=> b!62050 (=> res!37329 e!36479)))

(declare-fun b!62048 () Bool)

(assert (=> b!62048 (= e!36481 e!36480)))

(declare-fun c!18622 () Bool)

(assert (=> b!62048 (= c!18622 (is-Leaf!576 (c!18453 v!6227)))))

(declare-fun b!62051 () Bool)

(assert (=> b!62051 (= e!36479 (contains!176 (right!1227 (c!18453 v!6227)) lt!12152))))

(declare-fun b!62049 () Bool)

(assert (=> b!62049 (= e!36480 (contains!178 (xs!2892 (c!18453 v!6227)) lt!12152))))

(assert (= (and d!10559 res!37330) b!62048))

(assert (= (and b!62048 c!18622) b!62049))

(assert (= (and b!62048 (not c!18622)) b!62050))

(assert (= (and b!62050 (not res!37329)) b!62051))

(assert (=> d!10559 m!38616))

(assert (=> d!10559 m!38616))

(declare-fun m!39680 () Bool)

(assert (=> d!10559 m!39680))

(declare-fun m!39682 () Bool)

(assert (=> b!62050 m!39682))

(declare-fun m!39684 () Bool)

(assert (=> b!62051 m!39684))

(declare-fun m!39686 () Bool)

(assert (=> b!62049 m!39686))

(assert (=> d!10197 d!10559))

(declare-fun d!10561 () Bool)

(declare-fun lt!12593 () Bool)

(assert (=> d!10561 (= lt!12593 (set.member lt!12152 (content!46 (t!18334 lt!12144))))))

(declare-fun e!36483 () Bool)

(assert (=> d!10561 (= lt!12593 e!36483)))

(declare-fun res!37332 () Bool)

(assert (=> d!10561 (=> (not res!37332) (not e!36483))))

(assert (=> d!10561 (= res!37332 (is-Cons!1177 (t!18334 lt!12144)))))

(assert (=> d!10561 (= (contains!173 (t!18334 lt!12144) lt!12152) lt!12593)))

(declare-fun b!62052 () Bool)

(declare-fun e!36482 () Bool)

(assert (=> b!62052 (= e!36483 e!36482)))

(declare-fun res!37331 () Bool)

(assert (=> b!62052 (=> res!37331 e!36482)))

(assert (=> b!62052 (= res!37331 (= (h!6574 (t!18334 lt!12144)) lt!12152))))

(declare-fun b!62053 () Bool)

(assert (=> b!62053 (= e!36482 (contains!173 (t!18334 (t!18334 lt!12144)) lt!12152))))

(assert (= (and d!10561 res!37332) b!62052))

(assert (= (and b!62052 (not res!37331)) b!62053))

(assert (=> d!10561 m!39058))

(declare-fun m!39688 () Bool)

(assert (=> d!10561 m!39688))

(declare-fun m!39690 () Bool)

(assert (=> b!62053 m!39690))

(assert (=> b!61322 d!10561))

(declare-fun b!62054 () Bool)

(declare-fun e!36486 () Int)

(declare-fun call!3568 () Int)

(assert (=> b!62054 (= e!36486 (- call!3568 (- from!821 1)))))

(declare-fun b!62055 () Bool)

(declare-fun e!36488 () List!1183)

(assert (=> b!62055 (= e!36488 (drop!67 (t!18334 (t!18334 lt!12144)) (- (- from!821 1) 1)))))

(declare-fun b!62056 () Bool)

(assert (=> b!62056 (= e!36486 0)))

(declare-fun b!62057 () Bool)

(declare-fun e!36484 () Int)

(assert (=> b!62057 (= e!36484 call!3568)))

(declare-fun b!62058 () Bool)

(declare-fun e!36487 () List!1183)

(assert (=> b!62058 (= e!36487 Nil!1177)))

(declare-fun d!10563 () Bool)

(declare-fun e!36485 () Bool)

(assert (=> d!10563 e!36485))

(declare-fun res!37333 () Bool)

(assert (=> d!10563 (=> (not res!37333) (not e!36485))))

(declare-fun lt!12594 () List!1183)

(assert (=> d!10563 (= res!37333 (set.subset (content!46 lt!12594) (content!46 (t!18334 lt!12144))))))

(assert (=> d!10563 (= lt!12594 e!36487)))

(declare-fun c!18626 () Bool)

(assert (=> d!10563 (= c!18626 (is-Nil!1177 (t!18334 lt!12144)))))

(assert (=> d!10563 (= (drop!67 (t!18334 lt!12144) (- from!821 1)) lt!12594)))

(declare-fun b!62059 () Bool)

(assert (=> b!62059 (= e!36488 (t!18334 lt!12144))))

(declare-fun b!62060 () Bool)

(assert (=> b!62060 (= e!36487 e!36488)))

(declare-fun c!18624 () Bool)

(assert (=> b!62060 (= c!18624 (<= (- from!821 1) 0))))

(declare-fun bm!3563 () Bool)

(assert (=> bm!3563 (= call!3568 (size!1072 (t!18334 lt!12144)))))

(declare-fun b!62061 () Bool)

(assert (=> b!62061 (= e!36484 e!36486)))

(declare-fun c!18625 () Bool)

(assert (=> b!62061 (= c!18625 (>= (- from!821 1) call!3568))))

(declare-fun b!62062 () Bool)

(assert (=> b!62062 (= e!36485 (= (size!1072 lt!12594) e!36484))))

(declare-fun c!18623 () Bool)

(assert (=> b!62062 (= c!18623 (<= (- from!821 1) 0))))

(assert (= (and d!10563 c!18626) b!62058))

(assert (= (and d!10563 (not c!18626)) b!62060))

(assert (= (and b!62060 c!18624) b!62059))

(assert (= (and b!62060 (not c!18624)) b!62055))

(assert (= (and d!10563 res!37333) b!62062))

(assert (= (and b!62062 c!18623) b!62057))

(assert (= (and b!62062 (not c!18623)) b!62061))

(assert (= (and b!62061 c!18625) b!62056))

(assert (= (and b!62061 (not c!18625)) b!62054))

(assert (= (or b!62057 b!62061 b!62054) bm!3563))

(declare-fun m!39692 () Bool)

(assert (=> b!62055 m!39692))

(declare-fun m!39694 () Bool)

(assert (=> d!10563 m!39694))

(assert (=> d!10563 m!39058))

(assert (=> bm!3563 m!39168))

(declare-fun m!39696 () Bool)

(assert (=> b!62062 m!39696))

(assert (=> b!61372 d!10563))

(declare-fun d!10565 () Bool)

(assert (=> d!10565 (= (head!405 (drop!67 lt!12144 (+ 1 from!821))) (h!6574 (drop!67 lt!12144 (+ 1 from!821))))))

(assert (=> d!10217 d!10565))

(assert (=> d!10217 d!10219))

(assert (=> d!10217 d!10227))

(declare-fun d!10567 () Bool)

(assert (=> d!10567 (= (head!405 (drop!67 lt!12144 (+ 1 from!821))) (apply!157 lt!12144 (+ 1 from!821)))))

(assert (=> d!10567 true))

(declare-fun _$27!487 () Unit!687)

(assert (=> d!10567 (= (choose!1239 lt!12144 (+ 1 from!821)) _$27!487)))

(declare-fun bs!7255 () Bool)

(assert (= bs!7255 d!10567))

(assert (=> bs!7255 m!38490))

(assert (=> bs!7255 m!38490))

(assert (=> bs!7255 m!38688))

(assert (=> bs!7255 m!38484))

(assert (=> d!10217 d!10567))

(declare-fun d!10569 () Bool)

(assert (=> d!10569 true))

(declare-fun lt!12601 () Bool)

(declare-fun rulesValidInductive!11 (LexerInterface!146 List!1182) Bool)

(assert (=> d!10569 (= lt!12601 (rulesValidInductive!11 thiss!11059 rules!1069))))

(declare-fun lambda!1211 () Int)

(declare-fun forall!162 (List!1182 Int) Bool)

(assert (=> d!10569 (= lt!12601 (forall!162 rules!1069 lambda!1211))))

(assert (=> d!10569 (= (rulesValid!42 thiss!11059 rules!1069) lt!12601)))

(declare-fun bs!7256 () Bool)

(assert (= bs!7256 d!10569))

(declare-fun m!39698 () Bool)

(assert (=> bs!7256 m!39698))

(declare-fun m!39700 () Bool)

(assert (=> bs!7256 m!39700))

(assert (=> d!10179 d!10569))

(assert (=> bm!3541 d!10349))

(assert (=> d!10181 d!10409))

(declare-fun d!10571 () Bool)

(assert (=> d!10571 (= (head!405 (drop!67 lt!12144 from!821)) (h!6574 (drop!67 lt!12144 from!821)))))

(assert (=> d!10229 d!10571))

(assert (=> d!10229 d!10203))

(assert (=> d!10229 d!10233))

(declare-fun d!10573 () Bool)

(assert (=> d!10573 (= (head!405 (drop!67 lt!12144 from!821)) (apply!157 lt!12144 from!821))))

(assert (=> d!10573 true))

(declare-fun _$27!488 () Unit!687)

(assert (=> d!10573 (= (choose!1239 lt!12144 from!821) _$27!488)))

(declare-fun bs!7257 () Bool)

(assert (= bs!7257 d!10573))

(assert (=> bs!7257 m!38498))

(assert (=> bs!7257 m!38498))

(assert (=> bs!7257 m!38774))

(assert (=> bs!7257 m!38480))

(assert (=> d!10229 d!10573))

(declare-fun d!10575 () Bool)

(declare-fun lt!12604 () Bool)

(assert (=> d!10575 (= lt!12604 (set.member lt!12311 (content!46 lt!12144)))))

(declare-fun e!36502 () Bool)

(assert (=> d!10575 (= lt!12604 e!36502)))

(declare-fun res!37338 () Bool)

(assert (=> d!10575 (=> (not res!37338) (not e!36502))))

(assert (=> d!10575 (= res!37338 (is-Cons!1177 lt!12144))))

(assert (=> d!10575 (= (contains!173 lt!12144 lt!12311) lt!12604)))

(declare-fun b!62086 () Bool)

(declare-fun e!36501 () Bool)

(assert (=> b!62086 (= e!36502 e!36501)))

(declare-fun res!37337 () Bool)

(assert (=> b!62086 (=> res!37337 e!36501)))

(assert (=> b!62086 (= res!37337 (= (h!6574 lt!12144) lt!12311))))

(declare-fun b!62087 () Bool)

(assert (=> b!62087 (= e!36501 (contains!173 (t!18334 lt!12144) lt!12311))))

(assert (= (and d!10575 res!37338) b!62086))

(assert (= (and b!62086 (not res!37337)) b!62087))

(assert (=> d!10575 m!38604))

(declare-fun m!39716 () Bool)

(assert (=> d!10575 m!39716))

(declare-fun m!39718 () Bool)

(assert (=> b!62087 m!39718))

(assert (=> d!10227 d!10575))

(assert (=> b!61420 d!10349))

(assert (=> d!10185 d!10191))

(declare-fun d!10581 () Bool)

(assert (=> d!10581 (rulesProduceIndividualToken!43 thiss!11059 rules!1069 lt!12149)))

(assert (=> d!10581 true))

(declare-fun _$77!365 () Unit!687)

(assert (=> d!10581 (= (choose!1237 thiss!11059 rules!1069 lt!12144 lt!12149) _$77!365)))

(declare-fun bs!7258 () Bool)

(assert (= bs!7258 d!10581))

(assert (=> bs!7258 m!38460))

(assert (=> d!10185 d!10581))

(assert (=> d!10185 d!10263))

(assert (=> d!10265 d!10409))

(assert (=> b!61423 d!10349))

(declare-fun e!36505 () Bool)

(assert (=> b!61488 (= tp!37364 e!36505)))

(declare-fun b!62094 () Bool)

(declare-fun tp!37432 () Bool)

(assert (=> b!62094 (= e!36505 tp!37432)))

(declare-fun b!62095 () Bool)

(declare-fun tp!37433 () Bool)

(declare-fun tp!37436 () Bool)

(assert (=> b!62095 (= e!36505 (and tp!37433 tp!37436))))

(declare-fun b!62092 () Bool)

(assert (=> b!62092 (= e!36505 tp_is_empty!567)))

(declare-fun b!62093 () Bool)

(declare-fun tp!37434 () Bool)

(declare-fun tp!37435 () Bool)

(assert (=> b!62093 (= e!36505 (and tp!37434 tp!37435))))

(assert (= (and b!61488 (is-ElementMatch!322 (regex!254 (h!6573 (t!18333 rules!1069))))) b!62092))

(assert (= (and b!61488 (is-Concat!567 (regex!254 (h!6573 (t!18333 rules!1069))))) b!62093))

(assert (= (and b!61488 (is-Star!322 (regex!254 (h!6573 (t!18333 rules!1069))))) b!62094))

(assert (= (and b!61488 (is-Union!322 (regex!254 (h!6573 (t!18333 rules!1069))))) b!62095))

(declare-fun e!36506 () Bool)

(assert (=> b!61501 (= tp!37380 e!36506)))

(declare-fun b!62098 () Bool)

(declare-fun tp!37437 () Bool)

(assert (=> b!62098 (= e!36506 tp!37437)))

(declare-fun b!62099 () Bool)

(declare-fun tp!37438 () Bool)

(declare-fun tp!37441 () Bool)

(assert (=> b!62099 (= e!36506 (and tp!37438 tp!37441))))

(declare-fun b!62096 () Bool)

(assert (=> b!62096 (= e!36506 tp_is_empty!567)))

(declare-fun b!62097 () Bool)

(declare-fun tp!37439 () Bool)

(declare-fun tp!37440 () Bool)

(assert (=> b!62097 (= e!36506 (and tp!37439 tp!37440))))

(assert (= (and b!61501 (is-ElementMatch!322 (regOne!1156 (regex!254 (h!6573 rules!1069))))) b!62096))

(assert (= (and b!61501 (is-Concat!567 (regOne!1156 (regex!254 (h!6573 rules!1069))))) b!62097))

(assert (= (and b!61501 (is-Star!322 (regOne!1156 (regex!254 (h!6573 rules!1069))))) b!62098))

(assert (= (and b!61501 (is-Union!322 (regOne!1156 (regex!254 (h!6573 rules!1069))))) b!62099))

(declare-fun e!36507 () Bool)

(assert (=> b!61501 (= tp!37381 e!36507)))

(declare-fun b!62102 () Bool)

(declare-fun tp!37442 () Bool)

(assert (=> b!62102 (= e!36507 tp!37442)))

(declare-fun b!62103 () Bool)

(declare-fun tp!37443 () Bool)

(declare-fun tp!37446 () Bool)

(assert (=> b!62103 (= e!36507 (and tp!37443 tp!37446))))

(declare-fun b!62100 () Bool)

(assert (=> b!62100 (= e!36507 tp_is_empty!567)))

(declare-fun b!62101 () Bool)

(declare-fun tp!37444 () Bool)

(declare-fun tp!37445 () Bool)

(assert (=> b!62101 (= e!36507 (and tp!37444 tp!37445))))

(assert (= (and b!61501 (is-ElementMatch!322 (regTwo!1156 (regex!254 (h!6573 rules!1069))))) b!62100))

(assert (= (and b!61501 (is-Concat!567 (regTwo!1156 (regex!254 (h!6573 rules!1069))))) b!62101))

(assert (= (and b!61501 (is-Star!322 (regTwo!1156 (regex!254 (h!6573 rules!1069))))) b!62102))

(assert (= (and b!61501 (is-Union!322 (regTwo!1156 (regex!254 (h!6573 rules!1069))))) b!62103))

(declare-fun b!62104 () Bool)

(declare-fun tp!37449 () Bool)

(declare-fun tp!37447 () Bool)

(declare-fun e!36508 () Bool)

(assert (=> b!62104 (= e!36508 (and (inv!1566 (left!897 (left!897 (c!18453 v!6227)))) tp!37449 (inv!1566 (right!1227 (left!897 (c!18453 v!6227)))) tp!37447))))

(declare-fun b!62106 () Bool)

(declare-fun e!36509 () Bool)

(declare-fun tp!37448 () Bool)

(assert (=> b!62106 (= e!36509 tp!37448)))

(declare-fun b!62105 () Bool)

(assert (=> b!62105 (= e!36508 (and (inv!1575 (xs!2892 (left!897 (c!18453 v!6227)))) e!36509))))

(assert (=> b!61512 (= tp!37391 (and (inv!1566 (left!897 (c!18453 v!6227))) e!36508))))

(assert (= (and b!61512 (is-Node!313 (left!897 (c!18453 v!6227)))) b!62104))

(assert (= b!62105 b!62106))

(assert (= (and b!61512 (is-Leaf!576 (left!897 (c!18453 v!6227)))) b!62105))

(declare-fun m!39726 () Bool)

(assert (=> b!62104 m!39726))

(declare-fun m!39728 () Bool)

(assert (=> b!62104 m!39728))

(declare-fun m!39730 () Bool)

(assert (=> b!62105 m!39730))

(assert (=> b!61512 m!38922))

(declare-fun tp!37450 () Bool)

(declare-fun b!62107 () Bool)

(declare-fun tp!37452 () Bool)

(declare-fun e!36510 () Bool)

(assert (=> b!62107 (= e!36510 (and (inv!1566 (left!897 (right!1227 (c!18453 v!6227)))) tp!37452 (inv!1566 (right!1227 (right!1227 (c!18453 v!6227)))) tp!37450))))

(declare-fun b!62109 () Bool)

(declare-fun e!36511 () Bool)

(declare-fun tp!37451 () Bool)

(assert (=> b!62109 (= e!36511 tp!37451)))

(declare-fun b!62108 () Bool)

(assert (=> b!62108 (= e!36510 (and (inv!1575 (xs!2892 (right!1227 (c!18453 v!6227)))) e!36511))))

(assert (=> b!61512 (= tp!37389 (and (inv!1566 (right!1227 (c!18453 v!6227))) e!36510))))

(assert (= (and b!61512 (is-Node!313 (right!1227 (c!18453 v!6227)))) b!62107))

(assert (= b!62108 b!62109))

(assert (= (and b!61512 (is-Leaf!576 (right!1227 (c!18453 v!6227)))) b!62108))

(declare-fun m!39732 () Bool)

(assert (=> b!62107 m!39732))

(declare-fun m!39734 () Bool)

(assert (=> b!62107 m!39734))

(declare-fun m!39736 () Bool)

(assert (=> b!62108 m!39736))

(assert (=> b!61512 m!38924))

(declare-fun b!62123 () Bool)

(declare-fun b_free!1969 () Bool)

(declare-fun b_next!1969 () Bool)

(assert (=> b!62123 (= b_free!1969 (not b_next!1969))))

(declare-fun tp!37464 () Bool)

(declare-fun b_and!2407 () Bool)

(assert (=> b!62123 (= tp!37464 b_and!2407)))

(declare-fun b_free!1971 () Bool)

(declare-fun b_next!1971 () Bool)

(assert (=> b!62123 (= b_free!1971 (not b_next!1971))))

(declare-fun tb!879 () Bool)

(declare-fun t!18397 () Bool)

(assert (=> (and b!62123 (= (toChars!596 (transformation!254 (rule!729 (h!6574 (innerList!371 (xs!2892 (c!18453 v!6227))))))) (toChars!596 (transformation!254 (rule!729 lt!12152)))) t!18397) tb!879))

(declare-fun result!1782 () Bool)

(assert (= result!1782 result!1736))

(assert (=> d!10177 t!18397))

(declare-fun tb!881 () Bool)

(declare-fun t!18399 () Bool)

(assert (=> (and b!62123 (= (toChars!596 (transformation!254 (rule!729 (h!6574 (innerList!371 (xs!2892 (c!18453 v!6227))))))) (toChars!596 (transformation!254 (rule!729 (apply!156 v!6227 (+ 1 from!821 1)))))) t!18399) tb!881))

(declare-fun result!1784 () Bool)

(assert (= result!1784 result!1776))

(assert (=> d!10467 t!18399))

(declare-fun b_and!2409 () Bool)

(declare-fun tp!37465 () Bool)

(assert (=> b!62123 (= tp!37465 (and (=> t!18397 result!1782) (=> t!18399 result!1784) b_and!2409))))

(declare-fun e!36524 () Bool)

(assert (=> b!61514 (= tp!37390 e!36524)))

(declare-fun b!62120 () Bool)

(declare-fun tp!37466 () Bool)

(declare-fun e!36527 () Bool)

(declare-fun inv!1585 (Token!272) Bool)

(assert (=> b!62120 (= e!36524 (and (inv!1585 (h!6574 (innerList!371 (xs!2892 (c!18453 v!6227))))) e!36527 tp!37466))))

(declare-fun e!36529 () Bool)

(declare-fun b!62121 () Bool)

(declare-fun tp!37467 () Bool)

(declare-fun inv!21 (TokenValue!244) Bool)

(assert (=> b!62121 (= e!36527 (and (inv!21 (value!10138 (h!6574 (innerList!371 (xs!2892 (c!18453 v!6227)))))) e!36529 tp!37467))))

(declare-fun e!36528 () Bool)

(declare-fun tp!37463 () Bool)

(declare-fun b!62122 () Bool)

(assert (=> b!62122 (= e!36529 (and tp!37463 (inv!1562 (tag!432 (rule!729 (h!6574 (innerList!371 (xs!2892 (c!18453 v!6227))))))) (inv!1565 (transformation!254 (rule!729 (h!6574 (innerList!371 (xs!2892 (c!18453 v!6227))))))) e!36528))))

(assert (=> b!62123 (= e!36528 (and tp!37464 tp!37465))))

(assert (= b!62122 b!62123))

(assert (= b!62121 b!62122))

(assert (= b!62120 b!62121))

(assert (= (and b!61514 (is-Cons!1177 (innerList!371 (xs!2892 (c!18453 v!6227))))) b!62120))

(declare-fun m!39738 () Bool)

(assert (=> b!62120 m!39738))

(declare-fun m!39740 () Bool)

(assert (=> b!62121 m!39740))

(declare-fun m!39742 () Bool)

(assert (=> b!62122 m!39742))

(declare-fun m!39744 () Bool)

(assert (=> b!62122 m!39744))

(declare-fun b!62126 () Bool)

(declare-fun b_free!1973 () Bool)

(declare-fun b_next!1973 () Bool)

(assert (=> b!62126 (= b_free!1973 (not b_next!1973))))

(declare-fun tp!37471 () Bool)

(declare-fun b_and!2411 () Bool)

(assert (=> b!62126 (= tp!37471 b_and!2411)))

(declare-fun b_free!1975 () Bool)

(declare-fun b_next!1975 () Bool)

(assert (=> b!62126 (= b_free!1975 (not b_next!1975))))

(declare-fun tb!883 () Bool)

(declare-fun t!18401 () Bool)

(assert (=> (and b!62126 (= (toChars!596 (transformation!254 (h!6573 (t!18333 (t!18333 rules!1069))))) (toChars!596 (transformation!254 (rule!729 lt!12152)))) t!18401) tb!883))

(declare-fun result!1786 () Bool)

(assert (= result!1786 result!1736))

(assert (=> d!10177 t!18401))

(declare-fun tb!885 () Bool)

(declare-fun t!18403 () Bool)

(assert (=> (and b!62126 (= (toChars!596 (transformation!254 (h!6573 (t!18333 (t!18333 rules!1069))))) (toChars!596 (transformation!254 (rule!729 (apply!156 v!6227 (+ 1 from!821 1)))))) t!18403) tb!885))

(declare-fun result!1788 () Bool)

(assert (= result!1788 result!1776))

(assert (=> d!10467 t!18403))

(declare-fun b_and!2413 () Bool)

(declare-fun tp!37469 () Bool)

(assert (=> b!62126 (= tp!37469 (and (=> t!18401 result!1786) (=> t!18403 result!1788) b_and!2413))))

(declare-fun e!36532 () Bool)

(assert (=> b!62126 (= e!36532 (and tp!37471 tp!37469))))

(declare-fun b!62125 () Bool)

(declare-fun e!36533 () Bool)

(declare-fun tp!37468 () Bool)

(assert (=> b!62125 (= e!36533 (and tp!37468 (inv!1562 (tag!432 (h!6573 (t!18333 (t!18333 rules!1069))))) (inv!1565 (transformation!254 (h!6573 (t!18333 (t!18333 rules!1069))))) e!36532))))

(declare-fun b!62124 () Bool)

(declare-fun e!36531 () Bool)

(declare-fun tp!37470 () Bool)

(assert (=> b!62124 (= e!36531 (and e!36533 tp!37470))))

(assert (=> b!61487 (= tp!37366 e!36531)))

(assert (= b!62125 b!62126))

(assert (= b!62124 b!62125))

(assert (= (and b!61487 (is-Cons!1176 (t!18333 (t!18333 rules!1069)))) b!62124))

(declare-fun m!39746 () Bool)

(assert (=> b!62125 m!39746))

(declare-fun m!39748 () Bool)

(assert (=> b!62125 m!39748))

(declare-fun e!36534 () Bool)

(assert (=> b!61503 (= tp!37379 e!36534)))

(declare-fun b!62129 () Bool)

(declare-fun tp!37472 () Bool)

(assert (=> b!62129 (= e!36534 tp!37472)))

(declare-fun b!62130 () Bool)

(declare-fun tp!37473 () Bool)

(declare-fun tp!37476 () Bool)

(assert (=> b!62130 (= e!36534 (and tp!37473 tp!37476))))

(declare-fun b!62127 () Bool)

(assert (=> b!62127 (= e!36534 tp_is_empty!567)))

(declare-fun b!62128 () Bool)

(declare-fun tp!37474 () Bool)

(declare-fun tp!37475 () Bool)

(assert (=> b!62128 (= e!36534 (and tp!37474 tp!37475))))

(assert (= (and b!61503 (is-ElementMatch!322 (regOne!1157 (regex!254 (h!6573 rules!1069))))) b!62127))

(assert (= (and b!61503 (is-Concat!567 (regOne!1157 (regex!254 (h!6573 rules!1069))))) b!62128))

(assert (= (and b!61503 (is-Star!322 (regOne!1157 (regex!254 (h!6573 rules!1069))))) b!62129))

(assert (= (and b!61503 (is-Union!322 (regOne!1157 (regex!254 (h!6573 rules!1069))))) b!62130))

(declare-fun e!36535 () Bool)

(assert (=> b!61503 (= tp!37382 e!36535)))

(declare-fun b!62133 () Bool)

(declare-fun tp!37477 () Bool)

(assert (=> b!62133 (= e!36535 tp!37477)))

(declare-fun b!62134 () Bool)

(declare-fun tp!37478 () Bool)

(declare-fun tp!37481 () Bool)

(assert (=> b!62134 (= e!36535 (and tp!37478 tp!37481))))

(declare-fun b!62131 () Bool)

(assert (=> b!62131 (= e!36535 tp_is_empty!567)))

(declare-fun b!62132 () Bool)

(declare-fun tp!37479 () Bool)

(declare-fun tp!37480 () Bool)

(assert (=> b!62132 (= e!36535 (and tp!37479 tp!37480))))

(assert (= (and b!61503 (is-ElementMatch!322 (regTwo!1157 (regex!254 (h!6573 rules!1069))))) b!62131))

(assert (= (and b!61503 (is-Concat!567 (regTwo!1157 (regex!254 (h!6573 rules!1069))))) b!62132))

(assert (= (and b!61503 (is-Star!322 (regTwo!1157 (regex!254 (h!6573 rules!1069))))) b!62133))

(assert (= (and b!61503 (is-Union!322 (regTwo!1157 (regex!254 (h!6573 rules!1069))))) b!62134))

(declare-fun tp!37489 () Bool)

(declare-fun e!36541 () Bool)

(declare-fun tp!37490 () Bool)

(declare-fun b!62143 () Bool)

(assert (=> b!62143 (= e!36541 (and (inv!1571 (left!896 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152))))) tp!37490 (inv!1571 (right!1226 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152))))) tp!37489))))

(declare-fun b!62145 () Bool)

(declare-fun e!36540 () Bool)

(declare-fun tp!37488 () Bool)

(assert (=> b!62145 (= e!36540 tp!37488)))

(declare-fun b!62144 () Bool)

(declare-fun inv!1586 (IArray!625) Bool)

(assert (=> b!62144 (= e!36541 (and (inv!1586 (xs!2891 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152))))) e!36540))))

(assert (=> b!61313 (= tp!37355 (and (inv!1571 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152)))) e!36541))))

(assert (= (and b!61313 (is-Node!312 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152))))) b!62143))

(assert (= b!62144 b!62145))

(assert (= (and b!61313 (is-Leaf!575 (c!18451 (dynLambda!239 (toChars!596 (transformation!254 (rule!729 lt!12152))) (value!10138 lt!12152))))) b!62144))

(declare-fun m!39750 () Bool)

(assert (=> b!62143 m!39750))

(declare-fun m!39752 () Bool)

(assert (=> b!62143 m!39752))

(declare-fun m!39754 () Bool)

(assert (=> b!62144 m!39754))

(assert (=> b!61313 m!38592))

(declare-fun b!62148 () Bool)

(declare-fun e!36544 () Bool)

(assert (=> b!62148 (= e!36544 true)))

(declare-fun b!62147 () Bool)

(declare-fun e!36543 () Bool)

(assert (=> b!62147 (= e!36543 e!36544)))

(declare-fun b!62146 () Bool)

(declare-fun e!36542 () Bool)

(assert (=> b!62146 (= e!36542 e!36543)))

(assert (=> b!61469 e!36542))

(assert (= b!62147 b!62148))

(assert (= b!62146 b!62147))

(assert (= (and b!61469 (is-Cons!1176 (t!18333 rules!1069))) b!62146))

(assert (=> b!62148 (< (dynLambda!240 order!405 (toValue!737 (transformation!254 (h!6573 (t!18333 rules!1069))))) (dynLambda!241 order!407 lambda!1194))))

(assert (=> b!62148 (< (dynLambda!242 order!409 (toChars!596 (transformation!254 (h!6573 (t!18333 rules!1069))))) (dynLambda!241 order!407 lambda!1194))))

(declare-fun e!36545 () Bool)

(assert (=> b!61502 (= tp!37378 e!36545)))

(declare-fun b!62151 () Bool)

(declare-fun tp!37491 () Bool)

(assert (=> b!62151 (= e!36545 tp!37491)))

(declare-fun b!62152 () Bool)

(declare-fun tp!37492 () Bool)

(declare-fun tp!37495 () Bool)

(assert (=> b!62152 (= e!36545 (and tp!37492 tp!37495))))

(declare-fun b!62149 () Bool)

(assert (=> b!62149 (= e!36545 tp_is_empty!567)))

(declare-fun b!62150 () Bool)

(declare-fun tp!37493 () Bool)

(declare-fun tp!37494 () Bool)

(assert (=> b!62150 (= e!36545 (and tp!37493 tp!37494))))

(assert (= (and b!61502 (is-ElementMatch!322 (reg!651 (regex!254 (h!6573 rules!1069))))) b!62149))

(assert (= (and b!61502 (is-Concat!567 (reg!651 (regex!254 (h!6573 rules!1069))))) b!62150))

(assert (= (and b!61502 (is-Star!322 (reg!651 (regex!254 (h!6573 rules!1069))))) b!62151))

(assert (= (and b!61502 (is-Union!322 (reg!651 (regex!254 (h!6573 rules!1069))))) b!62152))

(declare-fun b_lambda!507 () Bool)

(assert (= b_lambda!493 (or (and start!4808 b_free!1953) b_lambda!507)))

(declare-fun b_lambda!509 () Bool)

(assert (= b_lambda!501 (or (and start!4808 b_free!1953) b_lambda!509)))

(declare-fun b_lambda!511 () Bool)

(assert (= b_lambda!495 (or (and start!4808 b_free!1953) b_lambda!511)))

(declare-fun b_lambda!513 () Bool)

(assert (= b_lambda!505 (or d!10243 b_lambda!513)))

(declare-fun bs!7259 () Bool)

(declare-fun d!10585 () Bool)

(assert (= bs!7259 (and d!10585 d!10243)))

(assert (=> bs!7259 (= (dynLambda!251 lambda!1194 (h!6574 (list!318 v!6227))) (rulesProduceIndividualToken!43 thiss!11059 rules!1069 (h!6574 (list!318 v!6227))))))

(assert (=> bs!7259 m!39172))

(assert (=> b!62018 d!10585))

(declare-fun b_lambda!515 () Bool)

(assert (= b_lambda!473 (or (and b!61258 b_free!1951 (= (toChars!596 (transformation!254 (h!6573 rules!1069))) (toChars!596 (transformation!254 (rule!729 lt!12152))))) (and b!61489 b_free!1963 (= (toChars!596 (transformation!254 (h!6573 (t!18333 rules!1069)))) (toChars!596 (transformation!254 (rule!729 lt!12152))))) (and b!62123 b_free!1971 (= (toChars!596 (transformation!254 (rule!729 (h!6574 (innerList!371 (xs!2892 (c!18453 v!6227))))))) (toChars!596 (transformation!254 (rule!729 lt!12152))))) (and b!62126 b_free!1975 (= (toChars!596 (transformation!254 (h!6573 (t!18333 (t!18333 rules!1069))))) (toChars!596 (transformation!254 (rule!729 lt!12152))))) b_lambda!515)))

(push 1)

(assert (not d!10383))

(assert (not b!62042))

(assert (not b!61725))

(assert (not d!10347))

(assert (not d!10403))

(assert (not b!62101))

(assert (not b!61888))

(assert (not b!62097))

(assert (not d!10567))

(assert (not d!10457))

(assert (not d!10531))

(assert (not b_lambda!515))

(assert (not b!61667))

(assert (not d!10519))

(assert (not d!10527))

(assert (not d!10391))

(assert (not b!62087))

(assert (not b!61867))

(assert (not d!10351))

(assert (not d!10515))

(assert (not d!10559))

(assert (not b!61841))

(assert (not b!61834))

(assert (not b!61787))

(assert (not d!10473))

(assert (not d!10413))

(assert (not b!61861))

(assert (not b!62151))

(assert b_and!2407)

(assert (not b!62146))

(assert (not b!62004))

(assert (not d!10471))

(assert (not b!61680))

(assert (not b!61711))

(assert (not b!61999))

(assert (not b!61854))

(assert (not b!62041))

(assert (not b_next!1949))

(assert (not b!62143))

(assert (not b!61797))

(assert (not b!61512))

(assert (not d!10481))

(assert (not d!10503))

(assert (not b!61879))

(assert (not bm!3555))

(assert (not b!61845))

(assert (not d!10491))

(assert (not b!61710))

(assert (not b_next!1953))

(assert (not b!61780))

(assert (not b!62150))

(assert (not b_lambda!509))

(assert b_and!2413)

(assert (not b_next!1951))

(assert (not d!10499))

(assert (not b!62094))

(assert (not d!10405))

(assert (not d!10425))

(assert (not b!61878))

(assert (not b!62130))

(assert (not d!10449))

(assert (not b!62134))

(assert (not d!10537))

(assert (not b!61902))

(assert (not b!61846))

(assert (not b!61963))

(assert (not d!10569))

(assert (not b!62043))

(assert (not b_lambda!511))

(assert (not b!61788))

(assert (not bm!3550))

(assert (not d!10401))

(assert (not b!61661))

(assert (not bs!7259))

(assert (not d!10339))

(assert (not tb!875))

(assert (not d!10467))

(assert (not d!10337))

(assert (not b!61954))

(assert tp_is_empty!567)

(assert (not b!61906))

(assert (not d!10521))

(assert (not d!10493))

(assert b_and!2405)

(assert (not b!61686))

(assert (not d!10501))

(assert (not d!10513))

(assert (not b!61924))

(assert (not d!10435))

(assert (not b!62051))

(assert (not b!61807))

(assert (not b!62003))

(assert (not d!10335))

(assert (not d!10485))

(assert (not d!10451))

(assert (not d!10459))

(assert (not b!61883))

(assert (not b!61773))

(assert (not b!61931))

(assert (not b!62038))

(assert (not b!61915))

(assert (not bm!3562))

(assert (not b!61817))

(assert (not b!62102))

(assert (not b!61842))

(assert (not b!61901))

(assert (not d!10529))

(assert (not d!10495))

(assert (not b!61922))

(assert (not d!10389))

(assert (not d!10419))

(assert (not b!61816))

(assert (not b!62019))

(assert (not bm!3554))

(assert (not b!61942))

(assert (not bm!3561))

(assert (not b!61903))

(assert (not b!61892))

(assert (not b!61941))

(assert (not b!61770))

(assert (not b!61681))

(assert (not b!62050))

(assert (not d!10497))

(assert (not b_next!1963))

(assert (not d!10333))

(assert (not d!10541))

(assert (not d!10581))

(assert (not b!61945))

(assert (not b!62010))

(assert (not b!61836))

(assert (not b!61701))

(assert (not b!61994))

(assert (not b!61881))

(assert (not b!61709))

(assert (not b!61944))

(assert (not b!61724))

(assert (not bm!3560))

(assert (not b!61704))

(assert (not b!62039))

(assert (not b!62049))

(assert (not bm!3556))

(assert (not b!61992))

(assert (not b!62103))

(assert (not b!61889))

(assert (not b!61947))

(assert (not b_lambda!507))

(assert (not b!62040))

(assert b_and!2403)

(assert (not b!61699))

(assert (not b!62098))

(assert (not b_lambda!483))

(assert (not b!61880))

(assert (not d!10487))

(assert (not b!61769))

(assert (not b!61683))

(assert (not b!61663))

(assert (not b_next!1971))

(assert (not d!10545))

(assert (not b!61887))

(assert (not d!10423))

(assert (not d!10385))

(assert (not b!62129))

(assert (not b!61997))

(assert (not d!10469))

(assert (not b!61933))

(assert (not b_lambda!485))

(assert (not d!10431))

(assert (not b!61869))

(assert (not b!62005))

(assert (not b_next!1969))

(assert (not d!10417))

(assert (not b!62107))

(assert (not b!61838))

(assert (not d!10439))

(assert (not b!61885))

(assert (not b!62132))

(assert (not b!62120))

(assert (not d!10575))

(assert (not bm!3553))

(assert (not bm!3549))

(assert (not b_lambda!469))

(assert (not b!62133))

(assert (not b!62125))

(assert (not b!61805))

(assert (not b!61679))

(assert (not d!10509))

(assert b_and!2401)

(assert (not d!10461))

(assert (not b!61894))

(assert (not d!10397))

(assert (not b!61665))

(assert (not b!61759))

(assert (not b!61666))

(assert (not d!10331))

(assert (not d!10539))

(assert (not b!62144))

(assert (not b!61958))

(assert (not d!10429))

(assert (not b!61814))

(assert (not b!62122))

(assert (not b!62095))

(assert b_and!2411)

(assert (not b!61891))

(assert (not d!10465))

(assert (not b!62002))

(assert (not b!61995))

(assert (not d!10325))

(assert (not d!10441))

(assert (not d!10525))

(assert (not b!62045))

(assert (not d!10483))

(assert (not b!61313))

(assert (not b!62145))

(assert (not b!61965))

(assert b_and!2359)

(assert (not bm!3558))

(assert (not b!61886))

(assert (not b!62099))

(assert (not b!62104))

(assert (not b!61843))

(assert (not d!10433))

(assert (not b!61890))

(assert (not b!62108))

(assert (not bm!3557))

(assert (not b!62053))

(assert (not bm!3563))

(assert (not b!61955))

(assert (not b!62013))

(assert (not b!61803))

(assert (not b!62121))

(assert (not b!62009))

(assert (not b!61957))

(assert (not b!61851))

(assert (not b!61961))

(assert (not b!61692))

(assert (not b_next!1975))

(assert (not d!10387))

(assert (not b!62093))

(assert (not b!61956))

(assert (not b!61782))

(assert (not b!62152))

(assert b_and!2385)

(assert (not b!62109))

(assert (not b!62105))

(assert (not d!10517))

(assert (not b_lambda!513))

(assert (not d!10477))

(assert (not b!61904))

(assert (not b!61790))

(assert (not b!61940))

(assert (not d!10427))

(assert (not d!10479))

(assert (not b!61960))

(assert (not d!10557))

(assert (not b!61913))

(assert (not b!61668))

(assert (not d!10329))

(assert (not d!10563))

(assert (not d!10573))

(assert (not b!62062))

(assert (not b!61943))

(assert (not b!62124))

(assert (not d!10415))

(assert (not b!62055))

(assert (not d!10561))

(assert (not b!61702))

(assert (not bm!3548))

(assert (not b!61959))

(assert (not b!61815))

(assert (not b!62008))

(assert (not b_next!1961))

(assert (not d!10447))

(assert (not b_next!1973))

(assert (not b!61884))

(assert (not bm!3559))

(assert b_and!2409)

(assert (not b!61871))

(assert (not b!62128))

(assert (not b!61840))

(assert (not d!10357))

(assert (not b!62000))

(assert (not d!10393))

(assert (not b!61835))

(assert (not b_lambda!503))

(assert (not b!62106))

(assert (not b!61771))

(assert (not b!61996))

(assert (not d!10505))

(assert (not b!62047))

(assert (not b!62012))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2407)

(assert (not b_next!1949))

(assert b_and!2405)

(assert (not b_next!1963))

(assert b_and!2403)

(assert (not b_next!1971))

(assert (not b_next!1969))

(assert b_and!2401)

(assert b_and!2411)

(assert b_and!2359)

(assert b_and!2409)

(assert b_and!2413)

(assert (not b_next!1951))

(assert (not b_next!1953))

(assert (not b_next!1975))

(assert b_and!2385)

(assert (not b_next!1961))

(assert (not b_next!1973))

(check-sat)

(pop 1)

