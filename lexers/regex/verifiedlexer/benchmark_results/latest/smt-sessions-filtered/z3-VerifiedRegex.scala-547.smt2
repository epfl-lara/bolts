; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15078 () Bool)

(assert start!15078)

(declare-fun b!143208 () Bool)

(declare-fun b_free!4873 () Bool)

(declare-fun b_next!4873 () Bool)

(assert (=> b!143208 (= b_free!4873 (not b_next!4873))))

(declare-fun tp!75583 () Bool)

(declare-fun b_and!7513 () Bool)

(assert (=> b!143208 (= tp!75583 b_and!7513)))

(declare-fun b_free!4875 () Bool)

(declare-fun b_next!4875 () Bool)

(assert (=> b!143208 (= b_free!4875 (not b_next!4875))))

(declare-fun tp!75573 () Bool)

(declare-fun b_and!7515 () Bool)

(assert (=> b!143208 (= tp!75573 b_and!7515)))

(declare-fun b!143200 () Bool)

(declare-fun b_free!4877 () Bool)

(declare-fun b_next!4877 () Bool)

(assert (=> b!143200 (= b_free!4877 (not b_next!4877))))

(declare-fun tp!75579 () Bool)

(declare-fun b_and!7517 () Bool)

(assert (=> b!143200 (= tp!75579 b_and!7517)))

(declare-fun b_free!4879 () Bool)

(declare-fun b_next!4879 () Bool)

(assert (=> b!143200 (= b_free!4879 (not b_next!4879))))

(declare-fun tp!75577 () Bool)

(declare-fun b_and!7519 () Bool)

(assert (=> b!143200 (= tp!75577 b_and!7519)))

(declare-fun b!143209 () Bool)

(declare-fun b_free!4881 () Bool)

(declare-fun b_next!4881 () Bool)

(assert (=> b!143209 (= b_free!4881 (not b_next!4881))))

(declare-fun tp!75575 () Bool)

(declare-fun b_and!7521 () Bool)

(assert (=> b!143209 (= tp!75575 b_and!7521)))

(declare-fun b_free!4883 () Bool)

(declare-fun b_next!4883 () Bool)

(assert (=> b!143209 (= b_free!4883 (not b_next!4883))))

(declare-fun tp!75578 () Bool)

(declare-fun b_and!7523 () Bool)

(assert (=> b!143209 (= tp!75578 b_and!7523)))

(declare-fun b!143194 () Bool)

(declare-fun res!66192 () Bool)

(declare-fun e!84745 () Bool)

(assert (=> b!143194 (=> (not res!66192) (not e!84745))))

(declare-datatypes ((List!2467 0))(
  ( (Nil!2457) (Cons!2457 (h!7854 (_ BitVec 16)) (t!23861 List!2467)) )
))
(declare-datatypes ((TokenValue!439 0))(
  ( (FloatLiteralValue!878 (text!3518 List!2467)) (TokenValueExt!438 (__x!2365 Int)) (Broken!2195 (value!16174 List!2467)) (Object!448) (End!439) (Def!439) (Underscore!439) (Match!439) (Else!439) (Error!439) (Case!439) (If!439) (Extends!439) (Abstract!439) (Class!439) (Val!439) (DelimiterValue!878 (del!499 List!2467)) (KeywordValue!445 (value!16175 List!2467)) (CommentValue!878 (value!16176 List!2467)) (WhitespaceValue!878 (value!16177 List!2467)) (IndentationValue!439 (value!16178 List!2467)) (String!3274) (Int32!439) (Broken!2196 (value!16179 List!2467)) (Boolean!440) (Unit!1827) (OperatorValue!442 (op!499 List!2467)) (IdentifierValue!878 (value!16180 List!2467)) (IdentifierValue!879 (value!16181 List!2467)) (WhitespaceValue!879 (value!16182 List!2467)) (True!878) (False!878) (Broken!2197 (value!16183 List!2467)) (Broken!2198 (value!16184 List!2467)) (True!879) (RightBrace!439) (RightBracket!439) (Colon!439) (Null!439) (Comma!439) (LeftBracket!439) (False!879) (LeftBrace!439) (ImaginaryLiteralValue!439 (text!3519 List!2467)) (StringLiteralValue!1317 (value!16185 List!2467)) (EOFValue!439 (value!16186 List!2467)) (IdentValue!439 (value!16187 List!2467)) (DelimiterValue!879 (value!16188 List!2467)) (DedentValue!439 (value!16189 List!2467)) (NewLineValue!439 (value!16190 List!2467)) (IntegerValue!1317 (value!16191 (_ BitVec 32)) (text!3520 List!2467)) (IntegerValue!1318 (value!16192 Int) (text!3521 List!2467)) (Times!439) (Or!439) (Equal!439) (Minus!439) (Broken!2199 (value!16193 List!2467)) (And!439) (Div!439) (LessEqual!439) (Mod!439) (Concat!1080) (Not!439) (Plus!439) (SpaceValue!439 (value!16194 List!2467)) (IntegerValue!1319 (value!16195 Int) (text!3522 List!2467)) (StringLiteralValue!1318 (text!3523 List!2467)) (FloatLiteralValue!879 (text!3524 List!2467)) (BytesLiteralValue!439 (value!16196 List!2467)) (CommentValue!879 (value!16197 List!2467)) (StringLiteralValue!1319 (value!16198 List!2467)) (ErrorTokenValue!439 (msg!500 List!2467)) )
))
(declare-datatypes ((C!2204 0))(
  ( (C!2205 (val!988 Int)) )
))
(declare-datatypes ((List!2468 0))(
  ( (Nil!2458) (Cons!2458 (h!7855 C!2204) (t!23862 List!2468)) )
))
(declare-datatypes ((IArray!1313 0))(
  ( (IArray!1314 (innerList!714 List!2468)) )
))
(declare-datatypes ((Conc!656 0))(
  ( (Node!656 (left!1859 Conc!656) (right!2189 Conc!656) (csize!1542 Int) (cheight!867 Int)) (Leaf!1204 (xs!3251 IArray!1313) (csize!1543 Int)) (Empty!656) )
))
(declare-datatypes ((BalanceConc!1320 0))(
  ( (BalanceConc!1321 (c!29495 Conc!656)) )
))
(declare-datatypes ((TokenValueInjection!650 0))(
  ( (TokenValueInjection!651 (toValue!1036 Int) (toChars!895 Int)) )
))
(declare-datatypes ((String!3275 0))(
  ( (String!3276 (value!16199 String)) )
))
(declare-datatypes ((Regex!641 0))(
  ( (ElementMatch!641 (c!29496 C!2204)) (Concat!1081 (regOne!1794 Regex!641) (regTwo!1794 Regex!641)) (EmptyExpr!641) (Star!641 (reg!970 Regex!641)) (EmptyLang!641) (Union!641 (regOne!1795 Regex!641) (regTwo!1795 Regex!641)) )
))
(declare-datatypes ((Rule!634 0))(
  ( (Rule!635 (regex!417 Regex!641) (tag!595 String!3275) (isSeparator!417 Bool) (transformation!417 TokenValueInjection!650)) )
))
(declare-datatypes ((Token!578 0))(
  ( (Token!579 (value!16200 TokenValue!439) (rule!924 Rule!634) (size!2139 Int) (originalCharacters!460 List!2468)) )
))
(declare-fun separatorToken!170 () Token!578)

(declare-datatypes ((List!2469 0))(
  ( (Nil!2459) (Cons!2459 (h!7856 Rule!634) (t!23863 List!2469)) )
))
(declare-fun rules!1920 () List!2469)

(declare-datatypes ((LexerInterface!303 0))(
  ( (LexerInterfaceExt!300 (__x!2366 Int)) (Lexer!301) )
))
(declare-fun thiss!17480 () LexerInterface!303)

(declare-fun rulesProduceIndividualToken!52 (LexerInterface!303 List!2469 Token!578) Bool)

(assert (=> b!143194 (= res!66192 (rulesProduceIndividualToken!52 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!84751 () Bool)

(declare-fun e!84738 () Bool)

(declare-fun tp!75574 () Bool)

(declare-fun b!143195 () Bool)

(declare-fun inv!3231 (String!3275) Bool)

(declare-fun inv!3234 (TokenValueInjection!650) Bool)

(assert (=> b!143195 (= e!84751 (and tp!75574 (inv!3231 (tag!595 (rule!924 separatorToken!170))) (inv!3234 (transformation!417 (rule!924 separatorToken!170))) e!84738))))

(declare-fun b!143196 () Bool)

(declare-fun res!66196 () Bool)

(assert (=> b!143196 (=> (not res!66196) (not e!84745))))

(declare-fun sepAndNonSepRulesDisjointChars!6 (List!2469 List!2469) Bool)

(assert (=> b!143196 (= res!66196 (sepAndNonSepRulesDisjointChars!6 rules!1920 rules!1920))))

(declare-fun b!143197 () Bool)

(declare-fun e!84749 () Bool)

(declare-fun tp!75580 () Bool)

(declare-fun inv!21 (TokenValue!439) Bool)

(assert (=> b!143197 (= e!84749 (and (inv!21 (value!16200 separatorToken!170)) e!84751 tp!75580))))

(declare-fun b!143198 () Bool)

(declare-fun res!66194 () Bool)

(assert (=> b!143198 (=> (not res!66194) (not e!84745))))

(declare-fun isEmpty!946 (List!2469) Bool)

(assert (=> b!143198 (= res!66194 (not (isEmpty!946 rules!1920)))))

(assert (=> b!143200 (= e!84738 (and tp!75579 tp!75577))))

(declare-fun tp!75581 () Bool)

(declare-fun b!143201 () Bool)

(declare-fun e!84740 () Bool)

(declare-fun e!84753 () Bool)

(declare-datatypes ((List!2470 0))(
  ( (Nil!2460) (Cons!2460 (h!7857 Token!578) (t!23864 List!2470)) )
))
(declare-fun tokens!465 () List!2470)

(declare-fun inv!3235 (Token!578) Bool)

(assert (=> b!143201 (= e!84740 (and (inv!3235 (h!7857 tokens!465)) e!84753 tp!75581))))

(declare-fun b!143202 () Bool)

(declare-fun res!66197 () Bool)

(assert (=> b!143202 (=> (not res!66197) (not e!84745))))

(declare-fun rulesInvariant!269 (LexerInterface!303 List!2469) Bool)

(assert (=> b!143202 (= res!66197 (rulesInvariant!269 thiss!17480 rules!1920))))

(declare-fun b!143203 () Bool)

(declare-fun res!66193 () Bool)

(assert (=> b!143203 (=> (not res!66193) (not e!84745))))

(assert (=> b!143203 (= res!66193 (isSeparator!417 (rule!924 separatorToken!170)))))

(declare-fun b!143204 () Bool)

(declare-fun e!84747 () Bool)

(declare-fun e!84742 () Bool)

(declare-fun tp!75585 () Bool)

(assert (=> b!143204 (= e!84747 (and e!84742 tp!75585))))

(declare-fun b!143205 () Bool)

(declare-fun res!66189 () Bool)

(assert (=> b!143205 (=> (not res!66189) (not e!84745))))

(declare-datatypes ((IArray!1315 0))(
  ( (IArray!1316 (innerList!715 List!2470)) )
))
(declare-datatypes ((Conc!657 0))(
  ( (Node!657 (left!1860 Conc!657) (right!2190 Conc!657) (csize!1544 Int) (cheight!868 Int)) (Leaf!1205 (xs!3252 IArray!1315) (csize!1545 Int)) (Empty!657) )
))
(declare-datatypes ((BalanceConc!1322 0))(
  ( (BalanceConc!1323 (c!29497 Conc!657)) )
))
(declare-fun rulesProduceEachTokenIndividually!95 (LexerInterface!303 List!2469 BalanceConc!1322) Bool)

(declare-fun seqFromList!230 (List!2470) BalanceConc!1322)

(assert (=> b!143205 (= res!66189 (rulesProduceEachTokenIndividually!95 thiss!17480 rules!1920 (seqFromList!230 tokens!465)))))

(declare-fun b!143206 () Bool)

(assert (=> b!143206 (= e!84745 false)))

(declare-fun lt!41340 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!59 (LexerInterface!303 List!2469 List!2470) Bool)

(assert (=> b!143206 (= lt!41340 (rulesProduceEachTokenIndividuallyList!59 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!143207 () Bool)

(declare-fun res!66195 () Bool)

(assert (=> b!143207 (=> (not res!66195) (not e!84745))))

(declare-fun lambda!3422 () Int)

(declare-fun forall!369 (List!2470 Int) Bool)

(assert (=> b!143207 (= res!66195 (forall!369 tokens!465 lambda!3422))))

(declare-fun e!84748 () Bool)

(assert (=> b!143208 (= e!84748 (and tp!75583 tp!75573))))

(declare-fun e!84746 () Bool)

(assert (=> b!143209 (= e!84746 (and tp!75575 tp!75578))))

(declare-fun b!143210 () Bool)

(declare-fun tp!75582 () Bool)

(assert (=> b!143210 (= e!84742 (and tp!75582 (inv!3231 (tag!595 (h!7856 rules!1920))) (inv!3234 (transformation!417 (h!7856 rules!1920))) e!84746))))

(declare-fun tp!75584 () Bool)

(declare-fun b!143199 () Bool)

(declare-fun e!84744 () Bool)

(assert (=> b!143199 (= e!84753 (and (inv!21 (value!16200 (h!7857 tokens!465))) e!84744 tp!75584))))

(declare-fun res!66190 () Bool)

(assert (=> start!15078 (=> (not res!66190) (not e!84745))))

(get-info :version)

(assert (=> start!15078 (= res!66190 ((_ is Lexer!301) thiss!17480))))

(assert (=> start!15078 e!84745))

(assert (=> start!15078 true))

(assert (=> start!15078 e!84747))

(assert (=> start!15078 e!84740))

(assert (=> start!15078 (and (inv!3235 separatorToken!170) e!84749)))

(declare-fun tp!75576 () Bool)

(declare-fun b!143211 () Bool)

(assert (=> b!143211 (= e!84744 (and tp!75576 (inv!3231 (tag!595 (rule!924 (h!7857 tokens!465)))) (inv!3234 (transformation!417 (rule!924 (h!7857 tokens!465)))) e!84748))))

(declare-fun b!143212 () Bool)

(declare-fun res!66191 () Bool)

(assert (=> b!143212 (=> (not res!66191) (not e!84745))))

(assert (=> b!143212 (= res!66191 ((_ is Cons!2460) tokens!465))))

(assert (= (and start!15078 res!66190) b!143198))

(assert (= (and b!143198 res!66194) b!143202))

(assert (= (and b!143202 res!66197) b!143205))

(assert (= (and b!143205 res!66189) b!143194))

(assert (= (and b!143194 res!66192) b!143203))

(assert (= (and b!143203 res!66193) b!143207))

(assert (= (and b!143207 res!66195) b!143196))

(assert (= (and b!143196 res!66196) b!143212))

(assert (= (and b!143212 res!66191) b!143206))

(assert (= b!143210 b!143209))

(assert (= b!143204 b!143210))

(assert (= (and start!15078 ((_ is Cons!2459) rules!1920)) b!143204))

(assert (= b!143211 b!143208))

(assert (= b!143199 b!143211))

(assert (= b!143201 b!143199))

(assert (= (and start!15078 ((_ is Cons!2460) tokens!465)) b!143201))

(assert (= b!143195 b!143200))

(assert (= b!143197 b!143195))

(assert (= start!15078 b!143197))

(declare-fun m!125891 () Bool)

(assert (=> b!143199 m!125891))

(declare-fun m!125893 () Bool)

(assert (=> b!143195 m!125893))

(declare-fun m!125895 () Bool)

(assert (=> b!143195 m!125895))

(declare-fun m!125897 () Bool)

(assert (=> b!143211 m!125897))

(declare-fun m!125899 () Bool)

(assert (=> b!143211 m!125899))

(declare-fun m!125901 () Bool)

(assert (=> b!143197 m!125901))

(declare-fun m!125903 () Bool)

(assert (=> b!143210 m!125903))

(declare-fun m!125905 () Bool)

(assert (=> b!143210 m!125905))

(declare-fun m!125907 () Bool)

(assert (=> b!143201 m!125907))

(declare-fun m!125909 () Bool)

(assert (=> b!143207 m!125909))

(declare-fun m!125911 () Bool)

(assert (=> b!143198 m!125911))

(declare-fun m!125913 () Bool)

(assert (=> start!15078 m!125913))

(declare-fun m!125915 () Bool)

(assert (=> b!143206 m!125915))

(declare-fun m!125917 () Bool)

(assert (=> b!143205 m!125917))

(assert (=> b!143205 m!125917))

(declare-fun m!125919 () Bool)

(assert (=> b!143205 m!125919))

(declare-fun m!125921 () Bool)

(assert (=> b!143202 m!125921))

(declare-fun m!125923 () Bool)

(assert (=> b!143196 m!125923))

(declare-fun m!125925 () Bool)

(assert (=> b!143194 m!125925))

(check-sat (not b!143207) (not b!143194) (not start!15078) (not b!143196) (not b!143201) b_and!7515 (not b!143198) (not b!143195) (not b_next!4881) (not b_next!4879) (not b!143197) b_and!7513 (not b!143205) (not b!143202) b_and!7523 (not b!143204) (not b!143210) (not b_next!4883) b_and!7519 (not b_next!4873) b_and!7521 b_and!7517 (not b!143211) (not b_next!4877) (not b_next!4875) (not b!143206) (not b!143199))
(check-sat b_and!7523 b_and!7515 b_and!7517 (not b_next!4881) (not b_next!4879) b_and!7513 (not b_next!4883) b_and!7519 (not b_next!4873) b_and!7521 (not b_next!4877) (not b_next!4875))
