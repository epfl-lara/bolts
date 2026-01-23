; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15086 () Bool)

(assert start!15086)

(declare-fun b!143440 () Bool)

(declare-fun b_free!4921 () Bool)

(declare-fun b_next!4921 () Bool)

(assert (=> b!143440 (= b_free!4921 (not b_next!4921))))

(declare-fun tp!75738 () Bool)

(declare-fun b_and!7561 () Bool)

(assert (=> b!143440 (= tp!75738 b_and!7561)))

(declare-fun b_free!4923 () Bool)

(declare-fun b_next!4923 () Bool)

(assert (=> b!143440 (= b_free!4923 (not b_next!4923))))

(declare-fun tp!75737 () Bool)

(declare-fun b_and!7563 () Bool)

(assert (=> b!143440 (= tp!75737 b_and!7563)))

(declare-fun b!143443 () Bool)

(declare-fun b_free!4925 () Bool)

(declare-fun b_next!4925 () Bool)

(assert (=> b!143443 (= b_free!4925 (not b_next!4925))))

(declare-fun tp!75730 () Bool)

(declare-fun b_and!7565 () Bool)

(assert (=> b!143443 (= tp!75730 b_and!7565)))

(declare-fun b_free!4927 () Bool)

(declare-fun b_next!4927 () Bool)

(assert (=> b!143443 (= b_free!4927 (not b_next!4927))))

(declare-fun tp!75732 () Bool)

(declare-fun b_and!7567 () Bool)

(assert (=> b!143443 (= tp!75732 b_and!7567)))

(declare-fun b!143444 () Bool)

(declare-fun b_free!4929 () Bool)

(declare-fun b_next!4929 () Bool)

(assert (=> b!143444 (= b_free!4929 (not b_next!4929))))

(declare-fun tp!75736 () Bool)

(declare-fun b_and!7569 () Bool)

(assert (=> b!143444 (= tp!75736 b_and!7569)))

(declare-fun b_free!4931 () Bool)

(declare-fun b_next!4931 () Bool)

(assert (=> b!143444 (= b_free!4931 (not b_next!4931))))

(declare-fun tp!75731 () Bool)

(declare-fun b_and!7571 () Bool)

(assert (=> b!143444 (= tp!75731 b_and!7571)))

(declare-fun e!84931 () Bool)

(declare-datatypes ((List!2483 0))(
  ( (Nil!2473) (Cons!2473 (h!7870 (_ BitVec 16)) (t!23877 List!2483)) )
))
(declare-datatypes ((TokenValue!443 0))(
  ( (FloatLiteralValue!886 (text!3546 List!2483)) (TokenValueExt!442 (__x!2373 Int)) (Broken!2215 (value!16288 List!2483)) (Object!452) (End!443) (Def!443) (Underscore!443) (Match!443) (Else!443) (Error!443) (Case!443) (If!443) (Extends!443) (Abstract!443) (Class!443) (Val!443) (DelimiterValue!886 (del!503 List!2483)) (KeywordValue!449 (value!16289 List!2483)) (CommentValue!886 (value!16290 List!2483)) (WhitespaceValue!886 (value!16291 List!2483)) (IndentationValue!443 (value!16292 List!2483)) (String!3294) (Int32!443) (Broken!2216 (value!16293 List!2483)) (Boolean!444) (Unit!1831) (OperatorValue!446 (op!503 List!2483)) (IdentifierValue!886 (value!16294 List!2483)) (IdentifierValue!887 (value!16295 List!2483)) (WhitespaceValue!887 (value!16296 List!2483)) (True!886) (False!886) (Broken!2217 (value!16297 List!2483)) (Broken!2218 (value!16298 List!2483)) (True!887) (RightBrace!443) (RightBracket!443) (Colon!443) (Null!443) (Comma!443) (LeftBracket!443) (False!887) (LeftBrace!443) (ImaginaryLiteralValue!443 (text!3547 List!2483)) (StringLiteralValue!1329 (value!16299 List!2483)) (EOFValue!443 (value!16300 List!2483)) (IdentValue!443 (value!16301 List!2483)) (DelimiterValue!887 (value!16302 List!2483)) (DedentValue!443 (value!16303 List!2483)) (NewLineValue!443 (value!16304 List!2483)) (IntegerValue!1329 (value!16305 (_ BitVec 32)) (text!3548 List!2483)) (IntegerValue!1330 (value!16306 Int) (text!3549 List!2483)) (Times!443) (Or!443) (Equal!443) (Minus!443) (Broken!2219 (value!16307 List!2483)) (And!443) (Div!443) (LessEqual!443) (Mod!443) (Concat!1088) (Not!443) (Plus!443) (SpaceValue!443 (value!16308 List!2483)) (IntegerValue!1331 (value!16309 Int) (text!3550 List!2483)) (StringLiteralValue!1330 (text!3551 List!2483)) (FloatLiteralValue!887 (text!3552 List!2483)) (BytesLiteralValue!443 (value!16310 List!2483)) (CommentValue!887 (value!16311 List!2483)) (StringLiteralValue!1331 (value!16312 List!2483)) (ErrorTokenValue!443 (msg!504 List!2483)) )
))
(declare-datatypes ((C!2212 0))(
  ( (C!2213 (val!992 Int)) )
))
(declare-datatypes ((List!2484 0))(
  ( (Nil!2474) (Cons!2474 (h!7871 C!2212) (t!23878 List!2484)) )
))
(declare-datatypes ((IArray!1329 0))(
  ( (IArray!1330 (innerList!722 List!2484)) )
))
(declare-datatypes ((Conc!664 0))(
  ( (Node!664 (left!1869 Conc!664) (right!2199 Conc!664) (csize!1558 Int) (cheight!875 Int)) (Leaf!1214 (xs!3259 IArray!1329) (csize!1559 Int)) (Empty!664) )
))
(declare-datatypes ((BalanceConc!1336 0))(
  ( (BalanceConc!1337 (c!29511 Conc!664)) )
))
(declare-datatypes ((String!3295 0))(
  ( (String!3296 (value!16313 String)) )
))
(declare-datatypes ((Regex!645 0))(
  ( (ElementMatch!645 (c!29512 C!2212)) (Concat!1089 (regOne!1802 Regex!645) (regTwo!1802 Regex!645)) (EmptyExpr!645) (Star!645 (reg!974 Regex!645)) (EmptyLang!645) (Union!645 (regOne!1803 Regex!645) (regTwo!1803 Regex!645)) )
))
(declare-datatypes ((TokenValueInjection!658 0))(
  ( (TokenValueInjection!659 (toValue!1040 Int) (toChars!899 Int)) )
))
(declare-datatypes ((Rule!642 0))(
  ( (Rule!643 (regex!421 Regex!645) (tag!599 String!3295) (isSeparator!421 Bool) (transformation!421 TokenValueInjection!658)) )
))
(declare-datatypes ((Token!586 0))(
  ( (Token!587 (value!16314 TokenValue!443) (rule!928 Rule!642) (size!2143 Int) (originalCharacters!464 List!2484)) )
))
(declare-datatypes ((List!2485 0))(
  ( (Nil!2475) (Cons!2475 (h!7872 Token!586) (t!23879 List!2485)) )
))
(declare-fun tokens!465 () List!2485)

(declare-fun e!84934 () Bool)

(declare-fun b!143433 () Bool)

(declare-fun tp!75739 () Bool)

(declare-fun inv!21 (TokenValue!443) Bool)

(assert (=> b!143433 (= e!84934 (and (inv!21 (value!16314 (h!7872 tokens!465))) e!84931 tp!75739))))

(declare-fun e!84938 () Bool)

(declare-fun b!143434 () Bool)

(declare-fun tp!75729 () Bool)

(declare-fun inv!3245 (String!3295) Bool)

(declare-fun inv!3248 (TokenValueInjection!658) Bool)

(assert (=> b!143434 (= e!84931 (and tp!75729 (inv!3245 (tag!599 (rule!928 (h!7872 tokens!465)))) (inv!3248 (transformation!421 (rule!928 (h!7872 tokens!465)))) e!84938))))

(declare-fun b!143435 () Bool)

(declare-fun res!66309 () Bool)

(declare-fun e!84944 () Bool)

(assert (=> b!143435 (=> (not res!66309) (not e!84944))))

(get-info :version)

(assert (=> b!143435 (= res!66309 ((_ is Cons!2475) tokens!465))))

(declare-fun b!143436 () Bool)

(declare-fun res!66310 () Bool)

(assert (=> b!143436 (=> (not res!66310) (not e!84944))))

(declare-datatypes ((List!2486 0))(
  ( (Nil!2476) (Cons!2476 (h!7873 Rule!642) (t!23880 List!2486)) )
))
(declare-fun rules!1920 () List!2486)

(declare-datatypes ((LexerInterface!307 0))(
  ( (LexerInterfaceExt!304 (__x!2374 Int)) (Lexer!305) )
))
(declare-fun thiss!17480 () LexerInterface!307)

(declare-fun rulesProduceEachTokenIndividuallyList!63 (LexerInterface!307 List!2486 List!2485) Bool)

(assert (=> b!143436 (= res!66310 (rulesProduceEachTokenIndividuallyList!63 thiss!17480 rules!1920 tokens!465))))

(declare-fun tp!75735 () Bool)

(declare-fun b!143437 () Bool)

(declare-fun e!84945 () Bool)

(declare-fun inv!3249 (Token!586) Bool)

(assert (=> b!143437 (= e!84945 (and (inv!3249 (h!7872 tokens!465)) e!84934 tp!75735))))

(declare-fun b!143438 () Bool)

(declare-fun tp!75734 () Bool)

(declare-fun e!84930 () Bool)

(declare-fun e!84937 () Bool)

(declare-fun separatorToken!170 () Token!586)

(assert (=> b!143438 (= e!84930 (and (inv!21 (value!16314 separatorToken!170)) e!84937 tp!75734))))

(declare-fun tp!75740 () Bool)

(declare-fun e!84935 () Bool)

(declare-fun b!143439 () Bool)

(assert (=> b!143439 (= e!84937 (and tp!75740 (inv!3245 (tag!599 (rule!928 separatorToken!170))) (inv!3248 (transformation!421 (rule!928 separatorToken!170))) e!84935))))

(assert (=> b!143440 (= e!84935 (and tp!75738 tp!75737))))

(declare-fun b!143441 () Bool)

(declare-fun res!66314 () Bool)

(assert (=> b!143441 (=> (not res!66314) (not e!84944))))

(declare-fun lambda!3438 () Int)

(declare-fun forall!373 (List!2485 Int) Bool)

(assert (=> b!143441 (= res!66314 (forall!373 tokens!465 lambda!3438))))

(declare-fun b!143442 () Bool)

(declare-fun e!84942 () Bool)

(declare-fun e!84936 () Bool)

(declare-fun tp!75733 () Bool)

(assert (=> b!143442 (= e!84942 (and e!84936 tp!75733))))

(assert (=> b!143443 (= e!84938 (and tp!75730 tp!75732))))

(declare-fun e!84943 () Bool)

(assert (=> b!143444 (= e!84943 (and tp!75736 tp!75731))))

(declare-fun b!143445 () Bool)

(declare-fun res!66308 () Bool)

(assert (=> b!143445 (=> (not res!66308) (not e!84944))))

(assert (=> b!143445 (= res!66308 (isSeparator!421 (rule!928 separatorToken!170)))))

(declare-fun b!143446 () Bool)

(declare-fun res!66311 () Bool)

(assert (=> b!143446 (=> (not res!66311) (not e!84944))))

(declare-datatypes ((IArray!1331 0))(
  ( (IArray!1332 (innerList!723 List!2485)) )
))
(declare-datatypes ((Conc!665 0))(
  ( (Node!665 (left!1870 Conc!665) (right!2200 Conc!665) (csize!1560 Int) (cheight!876 Int)) (Leaf!1215 (xs!3260 IArray!1331) (csize!1561 Int)) (Empty!665) )
))
(declare-datatypes ((BalanceConc!1338 0))(
  ( (BalanceConc!1339 (c!29513 Conc!665)) )
))
(declare-fun rulesProduceEachTokenIndividually!99 (LexerInterface!307 List!2486 BalanceConc!1338) Bool)

(declare-fun seqFromList!234 (List!2485) BalanceConc!1338)

(assert (=> b!143446 (= res!66311 (rulesProduceEachTokenIndividually!99 thiss!17480 rules!1920 (seqFromList!234 tokens!465)))))

(declare-fun b!143447 () Bool)

(declare-fun res!66315 () Bool)

(assert (=> b!143447 (=> (not res!66315) (not e!84944))))

(declare-fun rulesInvariant!273 (LexerInterface!307 List!2486) Bool)

(assert (=> b!143447 (= res!66315 (rulesInvariant!273 thiss!17480 rules!1920))))

(declare-fun tp!75741 () Bool)

(declare-fun b!143448 () Bool)

(assert (=> b!143448 (= e!84936 (and tp!75741 (inv!3245 (tag!599 (h!7873 rules!1920))) (inv!3248 (transformation!421 (h!7873 rules!1920))) e!84943))))

(declare-fun b!143449 () Bool)

(declare-fun res!66312 () Bool)

(assert (=> b!143449 (=> (not res!66312) (not e!84944))))

(declare-fun rulesProduceIndividualToken!56 (LexerInterface!307 List!2486 Token!586) Bool)

(assert (=> b!143449 (= res!66312 (rulesProduceIndividualToken!56 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!143450 () Bool)

(assert (=> b!143450 (= e!84944 false)))

(declare-fun b!143451 () Bool)

(declare-fun res!66313 () Bool)

(assert (=> b!143451 (=> (not res!66313) (not e!84944))))

(declare-fun isEmpty!950 (List!2486) Bool)

(assert (=> b!143451 (= res!66313 (not (isEmpty!950 rules!1920)))))

(declare-fun b!143452 () Bool)

(declare-fun res!66317 () Bool)

(assert (=> b!143452 (=> (not res!66317) (not e!84944))))

(declare-fun sepAndNonSepRulesDisjointChars!10 (List!2486 List!2486) Bool)

(assert (=> b!143452 (= res!66317 (sepAndNonSepRulesDisjointChars!10 rules!1920 rules!1920))))

(declare-fun res!66316 () Bool)

(assert (=> start!15086 (=> (not res!66316) (not e!84944))))

(assert (=> start!15086 (= res!66316 ((_ is Lexer!305) thiss!17480))))

(assert (=> start!15086 e!84944))

(assert (=> start!15086 true))

(assert (=> start!15086 e!84942))

(assert (=> start!15086 e!84945))

(assert (=> start!15086 (and (inv!3249 separatorToken!170) e!84930)))

(assert (= (and start!15086 res!66316) b!143451))

(assert (= (and b!143451 res!66313) b!143447))

(assert (= (and b!143447 res!66315) b!143446))

(assert (= (and b!143446 res!66311) b!143449))

(assert (= (and b!143449 res!66312) b!143445))

(assert (= (and b!143445 res!66308) b!143441))

(assert (= (and b!143441 res!66314) b!143452))

(assert (= (and b!143452 res!66317) b!143435))

(assert (= (and b!143435 res!66309) b!143436))

(assert (= (and b!143436 res!66310) b!143450))

(assert (= b!143448 b!143444))

(assert (= b!143442 b!143448))

(assert (= (and start!15086 ((_ is Cons!2476) rules!1920)) b!143442))

(assert (= b!143434 b!143443))

(assert (= b!143433 b!143434))

(assert (= b!143437 b!143433))

(assert (= (and start!15086 ((_ is Cons!2475) tokens!465)) b!143437))

(assert (= b!143439 b!143440))

(assert (= b!143438 b!143439))

(assert (= start!15086 b!143438))

(declare-fun m!126035 () Bool)

(assert (=> b!143452 m!126035))

(declare-fun m!126037 () Bool)

(assert (=> b!143434 m!126037))

(declare-fun m!126039 () Bool)

(assert (=> b!143434 m!126039))

(declare-fun m!126041 () Bool)

(assert (=> b!143433 m!126041))

(declare-fun m!126043 () Bool)

(assert (=> b!143436 m!126043))

(declare-fun m!126045 () Bool)

(assert (=> b!143451 m!126045))

(declare-fun m!126047 () Bool)

(assert (=> b!143448 m!126047))

(declare-fun m!126049 () Bool)

(assert (=> b!143448 m!126049))

(declare-fun m!126051 () Bool)

(assert (=> b!143449 m!126051))

(declare-fun m!126053 () Bool)

(assert (=> start!15086 m!126053))

(declare-fun m!126055 () Bool)

(assert (=> b!143446 m!126055))

(assert (=> b!143446 m!126055))

(declare-fun m!126057 () Bool)

(assert (=> b!143446 m!126057))

(declare-fun m!126059 () Bool)

(assert (=> b!143447 m!126059))

(declare-fun m!126061 () Bool)

(assert (=> b!143439 m!126061))

(declare-fun m!126063 () Bool)

(assert (=> b!143439 m!126063))

(declare-fun m!126065 () Bool)

(assert (=> b!143437 m!126065))

(declare-fun m!126067 () Bool)

(assert (=> b!143441 m!126067))

(declare-fun m!126069 () Bool)

(assert (=> b!143438 m!126069))

(check-sat (not b!143451) (not b!143442) (not start!15086) (not b_next!4931) b_and!7571 (not b_next!4921) (not b!143446) (not b!143439) (not b_next!4927) (not b_next!4929) b_and!7569 (not b_next!4925) (not b!143438) (not b_next!4923) (not b!143452) (not b!143449) b_and!7563 (not b!143441) b_and!7567 (not b!143433) (not b!143447) (not b!143434) b_and!7561 (not b!143448) b_and!7565 (not b!143437) (not b!143436))
(check-sat (not b_next!4923) b_and!7563 (not b_next!4931) b_and!7567 b_and!7571 (not b_next!4921) (not b_next!4927) (not b_next!4929) b_and!7561 b_and!7569 (not b_next!4925) b_and!7565)
