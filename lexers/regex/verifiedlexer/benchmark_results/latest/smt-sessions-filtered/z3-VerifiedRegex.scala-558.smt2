; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15530 () Bool)

(assert start!15530)

(declare-fun b!146718 () Bool)

(declare-fun b_free!5217 () Bool)

(declare-fun b_next!5217 () Bool)

(assert (=> b!146718 (= b_free!5217 (not b_next!5217))))

(declare-fun tp!77232 () Bool)

(declare-fun b_and!8049 () Bool)

(assert (=> b!146718 (= tp!77232 b_and!8049)))

(declare-fun b_free!5219 () Bool)

(declare-fun b_next!5219 () Bool)

(assert (=> b!146718 (= b_free!5219 (not b_next!5219))))

(declare-fun tp!77241 () Bool)

(declare-fun b_and!8051 () Bool)

(assert (=> b!146718 (= tp!77241 b_and!8051)))

(declare-fun b!146717 () Bool)

(declare-fun b_free!5221 () Bool)

(declare-fun b_next!5221 () Bool)

(assert (=> b!146717 (= b_free!5221 (not b_next!5221))))

(declare-fun tp!77235 () Bool)

(declare-fun b_and!8053 () Bool)

(assert (=> b!146717 (= tp!77235 b_and!8053)))

(declare-fun b_free!5223 () Bool)

(declare-fun b_next!5223 () Bool)

(assert (=> b!146717 (= b_free!5223 (not b_next!5223))))

(declare-fun tp!77243 () Bool)

(declare-fun b_and!8055 () Bool)

(assert (=> b!146717 (= tp!77243 b_and!8055)))

(declare-fun b!146712 () Bool)

(declare-fun b_free!5225 () Bool)

(declare-fun b_next!5225 () Bool)

(assert (=> b!146712 (= b_free!5225 (not b_next!5225))))

(declare-fun tp!77239 () Bool)

(declare-fun b_and!8057 () Bool)

(assert (=> b!146712 (= tp!77239 b_and!8057)))

(declare-fun b_free!5227 () Bool)

(declare-fun b_next!5227 () Bool)

(assert (=> b!146712 (= b_free!5227 (not b_next!5227))))

(declare-fun tp!77238 () Bool)

(declare-fun b_and!8059 () Bool)

(assert (=> b!146712 (= tp!77238 b_and!8059)))

(declare-fun b!146700 () Bool)

(declare-fun res!67552 () Bool)

(declare-fun e!87239 () Bool)

(assert (=> b!146700 (=> (not res!67552) (not e!87239))))

(declare-datatypes ((LexerInterface!325 0))(
  ( (LexerInterfaceExt!322 (__x!2409 Int)) (Lexer!323) )
))
(declare-fun thiss!17480 () LexerInterface!325)

(declare-datatypes ((List!2561 0))(
  ( (Nil!2551) (Cons!2551 (h!7948 (_ BitVec 16)) (t!24231 List!2561)) )
))
(declare-datatypes ((TokenValue!461 0))(
  ( (FloatLiteralValue!922 (text!3672 List!2561)) (TokenValueExt!460 (__x!2410 Int)) (Broken!2305 (value!16801 List!2561)) (Object!470) (End!461) (Def!461) (Underscore!461) (Match!461) (Else!461) (Error!461) (Case!461) (If!461) (Extends!461) (Abstract!461) (Class!461) (Val!461) (DelimiterValue!922 (del!521 List!2561)) (KeywordValue!467 (value!16802 List!2561)) (CommentValue!922 (value!16803 List!2561)) (WhitespaceValue!922 (value!16804 List!2561)) (IndentationValue!461 (value!16805 List!2561)) (String!3384) (Int32!461) (Broken!2306 (value!16806 List!2561)) (Boolean!462) (Unit!1893) (OperatorValue!464 (op!521 List!2561)) (IdentifierValue!922 (value!16807 List!2561)) (IdentifierValue!923 (value!16808 List!2561)) (WhitespaceValue!923 (value!16809 List!2561)) (True!922) (False!922) (Broken!2307 (value!16810 List!2561)) (Broken!2308 (value!16811 List!2561)) (True!923) (RightBrace!461) (RightBracket!461) (Colon!461) (Null!461) (Comma!461) (LeftBracket!461) (False!923) (LeftBrace!461) (ImaginaryLiteralValue!461 (text!3673 List!2561)) (StringLiteralValue!1383 (value!16812 List!2561)) (EOFValue!461 (value!16813 List!2561)) (IdentValue!461 (value!16814 List!2561)) (DelimiterValue!923 (value!16815 List!2561)) (DedentValue!461 (value!16816 List!2561)) (NewLineValue!461 (value!16817 List!2561)) (IntegerValue!1383 (value!16818 (_ BitVec 32)) (text!3674 List!2561)) (IntegerValue!1384 (value!16819 Int) (text!3675 List!2561)) (Times!461) (Or!461) (Equal!461) (Minus!461) (Broken!2309 (value!16820 List!2561)) (And!461) (Div!461) (LessEqual!461) (Mod!461) (Concat!1124) (Not!461) (Plus!461) (SpaceValue!461 (value!16821 List!2561)) (IntegerValue!1385 (value!16822 Int) (text!3676 List!2561)) (StringLiteralValue!1384 (text!3677 List!2561)) (FloatLiteralValue!923 (text!3678 List!2561)) (BytesLiteralValue!461 (value!16823 List!2561)) (CommentValue!923 (value!16824 List!2561)) (StringLiteralValue!1385 (value!16825 List!2561)) (ErrorTokenValue!461 (msg!522 List!2561)) )
))
(declare-datatypes ((C!2248 0))(
  ( (C!2249 (val!1010 Int)) )
))
(declare-datatypes ((List!2562 0))(
  ( (Nil!2552) (Cons!2552 (h!7949 C!2248) (t!24232 List!2562)) )
))
(declare-datatypes ((IArray!1401 0))(
  ( (IArray!1402 (innerList!758 List!2562)) )
))
(declare-datatypes ((Conc!700 0))(
  ( (Node!700 (left!1926 Conc!700) (right!2256 Conc!700) (csize!1630 Int) (cheight!911 Int)) (Leaf!1259 (xs!3295 IArray!1401) (csize!1631 Int)) (Empty!700) )
))
(declare-datatypes ((BalanceConc!1408 0))(
  ( (BalanceConc!1409 (c!29893 Conc!700)) )
))
(declare-datatypes ((TokenValueInjection!694 0))(
  ( (TokenValueInjection!695 (toValue!1066 Int) (toChars!925 Int)) )
))
(declare-datatypes ((Regex!663 0))(
  ( (ElementMatch!663 (c!29894 C!2248)) (Concat!1125 (regOne!1838 Regex!663) (regTwo!1838 Regex!663)) (EmptyExpr!663) (Star!663 (reg!992 Regex!663)) (EmptyLang!663) (Union!663 (regOne!1839 Regex!663) (regTwo!1839 Regex!663)) )
))
(declare-datatypes ((String!3385 0))(
  ( (String!3386 (value!16826 String)) )
))
(declare-datatypes ((Rule!678 0))(
  ( (Rule!679 (regex!439 Regex!663) (tag!617 String!3385) (isSeparator!439 Bool) (transformation!439 TokenValueInjection!694)) )
))
(declare-datatypes ((List!2563 0))(
  ( (Nil!2553) (Cons!2553 (h!7950 Rule!678) (t!24233 List!2563)) )
))
(declare-fun rules!1920 () List!2563)

(declare-fun rulesInvariant!291 (LexerInterface!325 List!2563) Bool)

(assert (=> b!146700 (= res!67552 (rulesInvariant!291 thiss!17480 rules!1920))))

(declare-fun b!146701 () Bool)

(declare-fun res!67562 () Bool)

(declare-fun e!87250 () Bool)

(assert (=> b!146701 (=> (not res!67562) (not e!87250))))

(declare-datatypes ((Token!622 0))(
  ( (Token!623 (value!16827 TokenValue!461) (rule!946 Rule!678) (size!2196 Int) (originalCharacters!482 List!2562)) )
))
(declare-fun separatorToken!170 () Token!622)

(declare-fun rulesProduceIndividualToken!74 (LexerInterface!325 List!2563 Token!622) Bool)

(assert (=> b!146701 (= res!67562 (rulesProduceIndividualToken!74 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!146702 () Bool)

(declare-fun res!67560 () Bool)

(assert (=> b!146702 (=> (not res!67560) (not e!87250))))

(declare-datatypes ((List!2564 0))(
  ( (Nil!2554) (Cons!2554 (h!7951 Token!622) (t!24234 List!2564)) )
))
(declare-fun tokens!465 () List!2564)

(declare-fun lambda!3632 () Int)

(declare-fun forall!410 (List!2564 Int) Bool)

(assert (=> b!146702 (= res!67560 (forall!410 tokens!465 lambda!3632))))

(declare-fun b!146703 () Bool)

(declare-datatypes ((IArray!1403 0))(
  ( (IArray!1404 (innerList!759 List!2564)) )
))
(declare-datatypes ((Conc!701 0))(
  ( (Node!701 (left!1927 Conc!701) (right!2257 Conc!701) (csize!1632 Int) (cheight!912 Int)) (Leaf!1260 (xs!3296 IArray!1403) (csize!1633 Int)) (Empty!701) )
))
(declare-datatypes ((BalanceConc!1410 0))(
  ( (BalanceConc!1411 (c!29895 Conc!701)) )
))
(declare-fun lt!42310 () BalanceConc!1410)

(declare-fun forall!411 (BalanceConc!1410 Int) Bool)

(assert (=> b!146703 (= e!87250 (not (forall!411 lt!42310 lambda!3632)))))

(declare-fun b!146704 () Bool)

(declare-fun e!87247 () Bool)

(declare-fun e!87242 () Bool)

(declare-fun tp!77236 () Bool)

(assert (=> b!146704 (= e!87247 (and e!87242 tp!77236))))

(declare-fun b!146705 () Bool)

(declare-fun e!87235 () Bool)

(declare-fun tp!77233 () Bool)

(declare-fun inv!3332 (String!3385) Bool)

(declare-fun inv!3335 (TokenValueInjection!694) Bool)

(assert (=> b!146705 (= e!87242 (and tp!77233 (inv!3332 (tag!617 (h!7950 rules!1920))) (inv!3335 (transformation!439 (h!7950 rules!1920))) e!87235))))

(declare-fun b!146706 () Bool)

(declare-fun res!67556 () Bool)

(assert (=> b!146706 (=> (not res!67556) (not e!87250))))

(assert (=> b!146706 (= res!67556 (isSeparator!439 (rule!946 separatorToken!170)))))

(declare-fun b!146707 () Bool)

(declare-fun tp!77242 () Bool)

(declare-fun e!87245 () Bool)

(declare-fun e!87240 () Bool)

(declare-fun inv!3336 (Token!622) Bool)

(assert (=> b!146707 (= e!87240 (and (inv!3336 (h!7951 tokens!465)) e!87245 tp!77242))))

(declare-fun b!146709 () Bool)

(assert (=> b!146709 (= e!87239 e!87250)))

(declare-fun res!67558 () Bool)

(assert (=> b!146709 (=> (not res!67558) (not e!87250))))

(declare-fun rulesProduceEachTokenIndividually!117 (LexerInterface!325 List!2563 BalanceConc!1410) Bool)

(assert (=> b!146709 (= res!67558 (rulesProduceEachTokenIndividually!117 thiss!17480 rules!1920 lt!42310))))

(declare-fun seqFromList!256 (List!2564) BalanceConc!1410)

(assert (=> b!146709 (= lt!42310 (seqFromList!256 tokens!465))))

(declare-fun b!146710 () Bool)

(declare-fun res!67555 () Bool)

(assert (=> b!146710 (=> (not res!67555) (not e!87250))))

(declare-fun size!2197 (BalanceConc!1410) Int)

(assert (=> b!146710 (= res!67555 (<= 0 (size!2197 lt!42310)))))

(declare-fun b!146711 () Bool)

(declare-fun res!67559 () Bool)

(assert (=> b!146711 (=> (not res!67559) (not e!87250))))

(declare-fun printWithSeparatorTokenWhenNeededList!18 (LexerInterface!325 List!2563 List!2564 Token!622) List!2562)

(declare-fun list!881 (BalanceConc!1408) List!2562)

(declare-fun printWithSeparatorTokenWhenNeededRec!8 (LexerInterface!325 List!2563 BalanceConc!1410 Token!622 Int) BalanceConc!1408)

(assert (=> b!146711 (= res!67559 (= (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 tokens!465 separatorToken!170) (list!881 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0))))))

(declare-fun e!87248 () Bool)

(assert (=> b!146712 (= e!87248 (and tp!77239 tp!77238))))

(declare-fun tp!77240 () Bool)

(declare-fun e!87249 () Bool)

(declare-fun b!146713 () Bool)

(declare-fun inv!21 (TokenValue!461) Bool)

(assert (=> b!146713 (= e!87245 (and (inv!21 (value!16827 (h!7951 tokens!465))) e!87249 tp!77240))))

(declare-fun b!146714 () Bool)

(declare-fun res!67561 () Bool)

(assert (=> b!146714 (=> (not res!67561) (not e!87250))))

(declare-fun sepAndNonSepRulesDisjointChars!28 (List!2563 List!2563) Bool)

(assert (=> b!146714 (= res!67561 (sepAndNonSepRulesDisjointChars!28 rules!1920 rules!1920))))

(declare-fun b!146715 () Bool)

(declare-fun res!67554 () Bool)

(assert (=> b!146715 (=> (not res!67554) (not e!87239))))

(declare-fun isEmpty!992 (List!2563) Bool)

(assert (=> b!146715 (= res!67554 (not (isEmpty!992 rules!1920)))))

(declare-fun e!87241 () Bool)

(declare-fun e!87251 () Bool)

(declare-fun b!146716 () Bool)

(declare-fun tp!77237 () Bool)

(assert (=> b!146716 (= e!87241 (and tp!77237 (inv!3332 (tag!617 (rule!946 separatorToken!170))) (inv!3335 (transformation!439 (rule!946 separatorToken!170))) e!87251))))

(assert (=> b!146717 (= e!87235 (and tp!77235 tp!77243))))

(assert (=> b!146718 (= e!87251 (and tp!77232 tp!77241))))

(declare-fun b!146719 () Bool)

(declare-fun tp!77234 () Bool)

(assert (=> b!146719 (= e!87249 (and tp!77234 (inv!3332 (tag!617 (rule!946 (h!7951 tokens!465)))) (inv!3335 (transformation!439 (rule!946 (h!7951 tokens!465)))) e!87248))))

(declare-fun b!146720 () Bool)

(declare-fun tp!77231 () Bool)

(declare-fun e!87236 () Bool)

(assert (=> b!146720 (= e!87236 (and (inv!21 (value!16827 separatorToken!170)) e!87241 tp!77231))))

(declare-fun b!146708 () Bool)

(declare-fun res!67557 () Bool)

(assert (=> b!146708 (=> (not res!67557) (not e!87250))))

(get-info :version)

(assert (=> b!146708 (= res!67557 ((_ is Cons!2554) tokens!465))))

(declare-fun res!67553 () Bool)

(assert (=> start!15530 (=> (not res!67553) (not e!87239))))

(assert (=> start!15530 (= res!67553 ((_ is Lexer!323) thiss!17480))))

(assert (=> start!15530 e!87239))

(assert (=> start!15530 true))

(assert (=> start!15530 e!87247))

(assert (=> start!15530 (and (inv!3336 separatorToken!170) e!87236)))

(assert (=> start!15530 e!87240))

(assert (= (and start!15530 res!67553) b!146715))

(assert (= (and b!146715 res!67554) b!146700))

(assert (= (and b!146700 res!67552) b!146709))

(assert (= (and b!146709 res!67558) b!146701))

(assert (= (and b!146701 res!67562) b!146706))

(assert (= (and b!146706 res!67556) b!146702))

(assert (= (and b!146702 res!67560) b!146714))

(assert (= (and b!146714 res!67561) b!146708))

(assert (= (and b!146708 res!67557) b!146711))

(assert (= (and b!146711 res!67559) b!146710))

(assert (= (and b!146710 res!67555) b!146703))

(assert (= b!146705 b!146717))

(assert (= b!146704 b!146705))

(assert (= (and start!15530 ((_ is Cons!2553) rules!1920)) b!146704))

(assert (= b!146716 b!146718))

(assert (= b!146720 b!146716))

(assert (= start!15530 b!146720))

(assert (= b!146719 b!146712))

(assert (= b!146713 b!146719))

(assert (= b!146707 b!146713))

(assert (= (and start!15530 ((_ is Cons!2554) tokens!465)) b!146707))

(declare-fun m!129359 () Bool)

(assert (=> b!146720 m!129359))

(declare-fun m!129361 () Bool)

(assert (=> b!146702 m!129361))

(declare-fun m!129363 () Bool)

(assert (=> start!15530 m!129363))

(declare-fun m!129365 () Bool)

(assert (=> b!146703 m!129365))

(declare-fun m!129367 () Bool)

(assert (=> b!146714 m!129367))

(declare-fun m!129369 () Bool)

(assert (=> b!146705 m!129369))

(declare-fun m!129371 () Bool)

(assert (=> b!146705 m!129371))

(declare-fun m!129373 () Bool)

(assert (=> b!146719 m!129373))

(declare-fun m!129375 () Bool)

(assert (=> b!146719 m!129375))

(declare-fun m!129377 () Bool)

(assert (=> b!146713 m!129377))

(declare-fun m!129379 () Bool)

(assert (=> b!146701 m!129379))

(declare-fun m!129381 () Bool)

(assert (=> b!146716 m!129381))

(declare-fun m!129383 () Bool)

(assert (=> b!146716 m!129383))

(declare-fun m!129385 () Bool)

(assert (=> b!146711 m!129385))

(declare-fun m!129387 () Bool)

(assert (=> b!146711 m!129387))

(assert (=> b!146711 m!129387))

(declare-fun m!129389 () Bool)

(assert (=> b!146711 m!129389))

(declare-fun m!129391 () Bool)

(assert (=> b!146709 m!129391))

(declare-fun m!129393 () Bool)

(assert (=> b!146709 m!129393))

(declare-fun m!129395 () Bool)

(assert (=> b!146715 m!129395))

(declare-fun m!129397 () Bool)

(assert (=> b!146707 m!129397))

(declare-fun m!129399 () Bool)

(assert (=> b!146710 m!129399))

(declare-fun m!129401 () Bool)

(assert (=> b!146700 m!129401))

(check-sat (not start!15530) (not b!146707) (not b!146705) (not b!146704) (not b!146709) b_and!8055 (not b_next!5223) (not b!146716) (not b!146720) (not b_next!5227) b_and!8057 (not b!146701) (not b!146702) b_and!8053 (not b!146715) (not b!146703) (not b!146710) (not b!146713) b_and!8059 (not b_next!5221) (not b_next!5217) b_and!8051 (not b!146711) (not b!146719) (not b!146700) (not b_next!5219) (not b_next!5225) b_and!8049 (not b!146714))
(check-sat b_and!8053 b_and!8055 (not b_next!5223) (not b_next!5219) (not b_next!5227) b_and!8057 b_and!8059 (not b_next!5221) (not b_next!5217) b_and!8051 (not b_next!5225) b_and!8049)
(get-model)

(declare-fun d!34913 () Bool)

(declare-fun lt!42317 () Bool)

(declare-fun e!87257 () Bool)

(assert (=> d!34913 (= lt!42317 e!87257)))

(declare-fun res!67577 () Bool)

(assert (=> d!34913 (=> (not res!67577) (not e!87257))))

(declare-fun list!884 (BalanceConc!1410) List!2564)

(declare-datatypes ((tuple2!2522 0))(
  ( (tuple2!2523 (_1!1477 BalanceConc!1410) (_2!1477 BalanceConc!1408)) )
))
(declare-fun lex!161 (LexerInterface!325 List!2563 BalanceConc!1408) tuple2!2522)

(declare-fun print!86 (LexerInterface!325 BalanceConc!1410) BalanceConc!1408)

(declare-fun singletonSeq!19 (Token!622) BalanceConc!1410)

(assert (=> d!34913 (= res!67577 (= (list!884 (_1!1477 (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170))))) (list!884 (singletonSeq!19 separatorToken!170))))))

(declare-fun e!87256 () Bool)

(assert (=> d!34913 (= lt!42317 e!87256)))

(declare-fun res!67579 () Bool)

(assert (=> d!34913 (=> (not res!67579) (not e!87256))))

(declare-fun lt!42318 () tuple2!2522)

(assert (=> d!34913 (= res!67579 (= (size!2197 (_1!1477 lt!42318)) 1))))

(assert (=> d!34913 (= lt!42318 (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170))))))

(assert (=> d!34913 (not (isEmpty!992 rules!1920))))

(assert (=> d!34913 (= (rulesProduceIndividualToken!74 thiss!17480 rules!1920 separatorToken!170) lt!42317)))

(declare-fun b!146727 () Bool)

(declare-fun res!67578 () Bool)

(assert (=> b!146727 (=> (not res!67578) (not e!87256))))

(declare-fun apply!321 (BalanceConc!1410 Int) Token!622)

(assert (=> b!146727 (= res!67578 (= (apply!321 (_1!1477 lt!42318) 0) separatorToken!170))))

(declare-fun b!146728 () Bool)

(declare-fun isEmpty!995 (BalanceConc!1408) Bool)

(assert (=> b!146728 (= e!87256 (isEmpty!995 (_2!1477 lt!42318)))))

(declare-fun b!146729 () Bool)

(assert (=> b!146729 (= e!87257 (isEmpty!995 (_2!1477 (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170))))))))

(assert (= (and d!34913 res!67579) b!146727))

(assert (= (and b!146727 res!67578) b!146728))

(assert (= (and d!34913 res!67577) b!146729))

(declare-fun m!129403 () Bool)

(assert (=> d!34913 m!129403))

(declare-fun m!129405 () Bool)

(assert (=> d!34913 m!129405))

(declare-fun m!129407 () Bool)

(assert (=> d!34913 m!129407))

(assert (=> d!34913 m!129395))

(assert (=> d!34913 m!129407))

(assert (=> d!34913 m!129403))

(declare-fun m!129409 () Bool)

(assert (=> d!34913 m!129409))

(declare-fun m!129411 () Bool)

(assert (=> d!34913 m!129411))

(assert (=> d!34913 m!129407))

(declare-fun m!129413 () Bool)

(assert (=> d!34913 m!129413))

(declare-fun m!129415 () Bool)

(assert (=> b!146727 m!129415))

(declare-fun m!129417 () Bool)

(assert (=> b!146728 m!129417))

(assert (=> b!146729 m!129407))

(assert (=> b!146729 m!129407))

(assert (=> b!146729 m!129403))

(assert (=> b!146729 m!129403))

(assert (=> b!146729 m!129405))

(declare-fun m!129419 () Bool)

(assert (=> b!146729 m!129419))

(assert (=> b!146701 d!34913))

(declare-fun bs!13249 () Bool)

(declare-fun b!146831 () Bool)

(assert (= bs!13249 (and b!146831 b!146702)))

(declare-fun lambda!3642 () Int)

(assert (=> bs!13249 (not (= lambda!3642 lambda!3632))))

(declare-fun b!146860 () Bool)

(declare-fun e!87343 () Bool)

(assert (=> b!146860 (= e!87343 true)))

(declare-fun b!146859 () Bool)

(declare-fun e!87342 () Bool)

(assert (=> b!146859 (= e!87342 e!87343)))

(declare-fun b!146858 () Bool)

(declare-fun e!87341 () Bool)

(assert (=> b!146858 (= e!87341 e!87342)))

(assert (=> b!146831 e!87341))

(assert (= b!146859 b!146860))

(assert (= b!146858 b!146859))

(assert (= (and b!146831 ((_ is Cons!2553) rules!1920)) b!146858))

(declare-fun order!1249 () Int)

(declare-fun order!1251 () Int)

(declare-fun dynLambda!873 (Int Int) Int)

(declare-fun dynLambda!874 (Int Int) Int)

(assert (=> b!146860 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3642))))

(declare-fun order!1253 () Int)

(declare-fun dynLambda!875 (Int Int) Int)

(assert (=> b!146860 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3642))))

(assert (=> b!146831 true))

(declare-fun bm!5766 () Bool)

(declare-fun call!5771 () BalanceConc!1408)

(declare-fun call!5772 () BalanceConc!1408)

(assert (=> bm!5766 (= call!5771 call!5772)))

(declare-fun e!87327 () List!2562)

(declare-fun e!87325 () List!2562)

(assert (=> b!146831 (= e!87327 e!87325)))

(declare-datatypes ((Unit!1900 0))(
  ( (Unit!1901) )
))
(declare-fun lt!42357 () Unit!1900)

(declare-fun forallContained!44 (List!2564 Int Token!622) Unit!1900)

(assert (=> b!146831 (= lt!42357 (forallContained!44 tokens!465 lambda!3642 (h!7951 tokens!465)))))

(declare-fun lt!42361 () List!2562)

(assert (=> b!146831 (= lt!42361 (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 (t!24234 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!2524 0))(
  ( (tuple2!2525 (_1!1478 Token!622) (_2!1478 List!2562)) )
))
(declare-datatypes ((Option!222 0))(
  ( (None!221) (Some!221 (v!13584 tuple2!2524)) )
))
(declare-fun lt!42358 () Option!222)

(declare-fun maxPrefix!101 (LexerInterface!325 List!2563 List!2562) Option!222)

(declare-fun ++!543 (List!2562 List!2562) List!2562)

(declare-fun charsOf!96 (Token!622) BalanceConc!1408)

(assert (=> b!146831 (= lt!42358 (maxPrefix!101 thiss!17480 rules!1920 (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361)))))

(declare-fun c!29918 () Bool)

(assert (=> b!146831 (= c!29918 (and ((_ is Some!221) lt!42358) (= (_1!1478 (v!13584 lt!42358)) (h!7951 tokens!465))))))

(declare-fun d!34917 () Bool)

(declare-fun c!29920 () Bool)

(assert (=> d!34917 (= c!29920 ((_ is Cons!2554) tokens!465))))

(assert (=> d!34917 (= (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!87327)))

(declare-fun b!146832 () Bool)

(declare-fun call!5773 () List!2562)

(assert (=> b!146832 (= e!87325 call!5773)))

(declare-fun b!146833 () Bool)

(declare-fun e!87324 () List!2562)

(assert (=> b!146833 (= e!87324 (++!543 call!5773 lt!42361))))

(declare-fun call!5775 () List!2562)

(declare-fun call!5774 () List!2562)

(declare-fun bm!5767 () Bool)

(assert (=> bm!5767 (= call!5773 (++!543 call!5775 (ite c!29918 lt!42361 call!5774)))))

(declare-fun bm!5768 () Bool)

(assert (=> bm!5768 (= call!5772 (charsOf!96 (h!7951 tokens!465)))))

(declare-fun b!146834 () Bool)

(assert (=> b!146834 (= e!87327 Nil!2552)))

(declare-fun b!146835 () Bool)

(declare-fun c!29919 () Bool)

(assert (=> b!146835 (= c!29919 (and ((_ is Some!221) lt!42358) (not (= (_1!1478 (v!13584 lt!42358)) (h!7951 tokens!465)))))))

(assert (=> b!146835 (= e!87325 e!87324)))

(declare-fun b!146836 () Bool)

(declare-fun e!87326 () BalanceConc!1408)

(assert (=> b!146836 (= e!87326 (charsOf!96 separatorToken!170))))

(declare-fun b!146837 () Bool)

(assert (=> b!146837 (= e!87324 Nil!2552)))

(declare-fun printTailRec!49 (LexerInterface!325 BalanceConc!1410 Int BalanceConc!1408) BalanceConc!1408)

(assert (=> b!146837 (= (print!86 thiss!17480 (singletonSeq!19 (h!7951 tokens!465))) (printTailRec!49 thiss!17480 (singletonSeq!19 (h!7951 tokens!465)) 0 (BalanceConc!1409 Empty!700)))))

(declare-fun lt!42359 () Unit!1900)

(declare-fun Unit!1902 () Unit!1900)

(assert (=> b!146837 (= lt!42359 Unit!1902)))

(declare-fun lt!42360 () Unit!1900)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!8 (LexerInterface!325 List!2563 List!2562 List!2562) Unit!1900)

(assert (=> b!146837 (= lt!42360 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!8 thiss!17480 rules!1920 call!5774 lt!42361))))

(assert (=> b!146837 false))

(declare-fun lt!42356 () Unit!1900)

(declare-fun Unit!1903 () Unit!1900)

(assert (=> b!146837 (= lt!42356 Unit!1903)))

(declare-fun bm!5769 () Bool)

(assert (=> bm!5769 (= call!5775 (list!881 (ite c!29918 call!5772 call!5771)))))

(declare-fun bm!5770 () Bool)

(assert (=> bm!5770 (= call!5774 (list!881 e!87326))))

(declare-fun c!29921 () Bool)

(assert (=> bm!5770 (= c!29921 c!29919)))

(declare-fun b!146838 () Bool)

(assert (=> b!146838 (= e!87326 call!5771)))

(assert (= (and d!34917 c!29920) b!146831))

(assert (= (and d!34917 (not c!29920)) b!146834))

(assert (= (and b!146831 c!29918) b!146832))

(assert (= (and b!146831 (not c!29918)) b!146835))

(assert (= (and b!146835 c!29919) b!146833))

(assert (= (and b!146835 (not c!29919)) b!146837))

(assert (= (or b!146833 b!146837) bm!5766))

(assert (= (or b!146833 b!146837) bm!5770))

(assert (= (and bm!5770 c!29921) b!146836))

(assert (= (and bm!5770 (not c!29921)) b!146838))

(assert (= (or b!146832 bm!5766) bm!5768))

(assert (= (or b!146832 b!146833) bm!5769))

(assert (= (or b!146832 b!146833) bm!5767))

(declare-fun m!129529 () Bool)

(assert (=> b!146831 m!129529))

(declare-fun m!129531 () Bool)

(assert (=> b!146831 m!129531))

(declare-fun m!129533 () Bool)

(assert (=> b!146831 m!129533))

(assert (=> b!146831 m!129529))

(declare-fun m!129535 () Bool)

(assert (=> b!146831 m!129535))

(declare-fun m!129537 () Bool)

(assert (=> b!146831 m!129537))

(declare-fun m!129539 () Bool)

(assert (=> b!146831 m!129539))

(assert (=> b!146831 m!129537))

(assert (=> b!146831 m!129533))

(declare-fun m!129543 () Bool)

(assert (=> b!146837 m!129543))

(assert (=> b!146837 m!129543))

(declare-fun m!129545 () Bool)

(assert (=> b!146837 m!129545))

(assert (=> b!146837 m!129543))

(declare-fun m!129547 () Bool)

(assert (=> b!146837 m!129547))

(declare-fun m!129549 () Bool)

(assert (=> b!146837 m!129549))

(declare-fun m!129551 () Bool)

(assert (=> b!146833 m!129551))

(declare-fun m!129553 () Bool)

(assert (=> bm!5770 m!129553))

(assert (=> bm!5768 m!129537))

(declare-fun m!129555 () Bool)

(assert (=> b!146836 m!129555))

(declare-fun m!129557 () Bool)

(assert (=> bm!5769 m!129557))

(declare-fun m!129559 () Bool)

(assert (=> bm!5767 m!129559))

(assert (=> b!146711 d!34917))

(declare-fun d!34947 () Bool)

(declare-fun list!885 (Conc!700) List!2562)

(assert (=> d!34947 (= (list!881 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0)) (list!885 (c!29893 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0))))))

(declare-fun bs!13251 () Bool)

(assert (= bs!13251 d!34947))

(declare-fun m!129561 () Bool)

(assert (=> bs!13251 m!129561))

(assert (=> b!146711 d!34947))

(declare-fun bs!13259 () Bool)

(declare-fun d!34949 () Bool)

(assert (= bs!13259 (and d!34949 b!146702)))

(declare-fun lambda!3654 () Int)

(assert (=> bs!13259 (= lambda!3654 lambda!3632)))

(declare-fun bs!13260 () Bool)

(assert (= bs!13260 (and d!34949 b!146831)))

(assert (=> bs!13260 (not (= lambda!3654 lambda!3642))))

(declare-fun bs!13261 () Bool)

(declare-fun b!146918 () Bool)

(assert (= bs!13261 (and b!146918 b!146702)))

(declare-fun lambda!3655 () Int)

(assert (=> bs!13261 (not (= lambda!3655 lambda!3632))))

(declare-fun bs!13262 () Bool)

(assert (= bs!13262 (and b!146918 b!146831)))

(assert (=> bs!13262 (= lambda!3655 lambda!3642)))

(declare-fun bs!13263 () Bool)

(assert (= bs!13263 (and b!146918 d!34949)))

(assert (=> bs!13263 (not (= lambda!3655 lambda!3654))))

(declare-fun b!146928 () Bool)

(declare-fun e!87388 () Bool)

(assert (=> b!146928 (= e!87388 true)))

(declare-fun b!146927 () Bool)

(declare-fun e!87387 () Bool)

(assert (=> b!146927 (= e!87387 e!87388)))

(declare-fun b!146926 () Bool)

(declare-fun e!87386 () Bool)

(assert (=> b!146926 (= e!87386 e!87387)))

(assert (=> b!146918 e!87386))

(assert (= b!146927 b!146928))

(assert (= b!146926 b!146927))

(assert (= (and b!146918 ((_ is Cons!2553) rules!1920)) b!146926))

(assert (=> b!146928 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3655))))

(assert (=> b!146928 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3655))))

(assert (=> b!146918 true))

(declare-fun b!146917 () Bool)

(declare-fun c!29946 () Bool)

(declare-fun e!87385 () Bool)

(assert (=> b!146917 (= c!29946 e!87385)))

(declare-fun res!67633 () Bool)

(assert (=> b!146917 (=> (not res!67633) (not e!87385))))

(declare-datatypes ((tuple2!2526 0))(
  ( (tuple2!2527 (_1!1479 Token!622) (_2!1479 BalanceConc!1408)) )
))
(declare-datatypes ((Option!223 0))(
  ( (None!222) (Some!222 (v!13585 tuple2!2526)) )
))
(declare-fun lt!42449 () Option!223)

(assert (=> b!146917 (= res!67633 ((_ is Some!222) lt!42449))))

(declare-fun e!87382 () BalanceConc!1408)

(declare-fun e!87380 () BalanceConc!1408)

(assert (=> b!146917 (= e!87382 e!87380)))

(declare-fun e!87381 () BalanceConc!1408)

(assert (=> b!146918 (= e!87381 e!87382)))

(declare-fun lt!42446 () List!2564)

(assert (=> b!146918 (= lt!42446 (list!884 lt!42310))))

(declare-fun lt!42447 () Unit!1900)

(declare-fun lemmaDropApply!100 (List!2564 Int) Unit!1900)

(assert (=> b!146918 (= lt!42447 (lemmaDropApply!100 lt!42446 0))))

(declare-fun head!574 (List!2564) Token!622)

(declare-fun drop!113 (List!2564 Int) List!2564)

(declare-fun apply!322 (List!2564 Int) Token!622)

(assert (=> b!146918 (= (head!574 (drop!113 lt!42446 0)) (apply!322 lt!42446 0))))

(declare-fun lt!42451 () Unit!1900)

(assert (=> b!146918 (= lt!42451 lt!42447)))

(declare-fun lt!42441 () List!2564)

(assert (=> b!146918 (= lt!42441 (list!884 lt!42310))))

(declare-fun lt!42443 () Unit!1900)

(declare-fun lemmaDropTail!92 (List!2564 Int) Unit!1900)

(assert (=> b!146918 (= lt!42443 (lemmaDropTail!92 lt!42441 0))))

(declare-fun tail!314 (List!2564) List!2564)

(assert (=> b!146918 (= (tail!314 (drop!113 lt!42441 0)) (drop!113 lt!42441 (+ 0 1)))))

(declare-fun lt!42439 () Unit!1900)

(assert (=> b!146918 (= lt!42439 lt!42443)))

(declare-fun lt!42444 () Unit!1900)

(assert (=> b!146918 (= lt!42444 (forallContained!44 (list!884 lt!42310) lambda!3655 (apply!321 lt!42310 0)))))

(declare-fun lt!42438 () BalanceConc!1408)

(assert (=> b!146918 (= lt!42438 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!60 (LexerInterface!325 List!2563 BalanceConc!1408) Option!223)

(declare-fun ++!544 (BalanceConc!1408 BalanceConc!1408) BalanceConc!1408)

(assert (=> b!146918 (= lt!42449 (maxPrefixZipperSequence!60 thiss!17480 rules!1920 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))

(declare-fun res!67635 () Bool)

(assert (=> b!146918 (= res!67635 ((_ is Some!222) lt!42449))))

(declare-fun e!87384 () Bool)

(assert (=> b!146918 (=> (not res!67635) (not e!87384))))

(declare-fun c!29945 () Bool)

(assert (=> b!146918 (= c!29945 e!87384)))

(declare-fun b!146919 () Bool)

(declare-fun e!87383 () Bool)

(assert (=> b!146919 (= e!87383 (<= 0 (size!2197 lt!42310)))))

(declare-fun b!146921 () Bool)

(assert (=> b!146921 (= e!87380 (BalanceConc!1409 Empty!700))))

(declare-fun call!5810 () Token!622)

(assert (=> b!146921 (= (print!86 thiss!17480 (singletonSeq!19 call!5810)) (printTailRec!49 thiss!17480 (singletonSeq!19 call!5810) 0 (BalanceConc!1409 Empty!700)))))

(declare-fun lt!42440 () Unit!1900)

(declare-fun Unit!1904 () Unit!1900)

(assert (=> b!146921 (= lt!42440 Unit!1904)))

(declare-fun lt!42450 () Unit!1900)

(declare-fun call!5807 () BalanceConc!1408)

(assert (=> b!146921 (= lt!42450 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!8 thiss!17480 rules!1920 (list!881 call!5807) (list!881 lt!42438)))))

(assert (=> b!146921 false))

(declare-fun lt!42448 () Unit!1900)

(declare-fun Unit!1905 () Unit!1900)

(assert (=> b!146921 (= lt!42448 Unit!1905)))

(declare-fun bm!5801 () Bool)

(assert (=> bm!5801 (= call!5807 (charsOf!96 (ite c!29946 separatorToken!170 call!5810)))))

(declare-fun b!146922 () Bool)

(declare-fun call!5808 () BalanceConc!1408)

(assert (=> b!146922 (= e!87380 (++!544 call!5808 lt!42438))))

(declare-fun bm!5802 () Bool)

(declare-fun call!5809 () BalanceConc!1408)

(assert (=> bm!5802 (= call!5808 (++!544 call!5809 (ite c!29945 lt!42438 call!5807)))))

(declare-fun bm!5803 () Bool)

(declare-fun call!5806 () Token!622)

(assert (=> bm!5803 (= call!5809 (charsOf!96 (ite c!29945 call!5806 call!5810)))))

(declare-fun bm!5804 () Bool)

(assert (=> bm!5804 (= call!5810 call!5806)))

(declare-fun lt!42445 () BalanceConc!1408)

(declare-fun dropList!60 (BalanceConc!1410 Int) List!2564)

(assert (=> d!34949 (= (list!881 lt!42445) (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 (dropList!60 lt!42310 0) separatorToken!170))))

(assert (=> d!34949 (= lt!42445 e!87381)))

(declare-fun c!29944 () Bool)

(assert (=> d!34949 (= c!29944 (>= 0 (size!2197 lt!42310)))))

(declare-fun lt!42442 () Unit!1900)

(declare-fun lemmaContentSubsetPreservesForall!4 (List!2564 List!2564 Int) Unit!1900)

(assert (=> d!34949 (= lt!42442 (lemmaContentSubsetPreservesForall!4 (list!884 lt!42310) (dropList!60 lt!42310 0) lambda!3654))))

(assert (=> d!34949 e!87383))

(declare-fun res!67634 () Bool)

(assert (=> d!34949 (=> (not res!67634) (not e!87383))))

(assert (=> d!34949 (= res!67634 (>= 0 0))))

(assert (=> d!34949 (= (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0) lt!42445)))

(declare-fun b!146920 () Bool)

(assert (=> b!146920 (= e!87382 call!5808)))

(declare-fun b!146923 () Bool)

(assert (=> b!146923 (= e!87381 (BalanceConc!1409 Empty!700))))

(declare-fun b!146924 () Bool)

(assert (=> b!146924 (= e!87384 (= (_1!1479 (v!13585 lt!42449)) (apply!321 lt!42310 0)))))

(declare-fun bm!5805 () Bool)

(assert (=> bm!5805 (= call!5806 (apply!321 lt!42310 0))))

(declare-fun b!146925 () Bool)

(assert (=> b!146925 (= e!87385 (not (= (_1!1479 (v!13585 lt!42449)) call!5806)))))

(assert (= (and d!34949 res!67634) b!146919))

(assert (= (and d!34949 c!29944) b!146923))

(assert (= (and d!34949 (not c!29944)) b!146918))

(assert (= (and b!146918 res!67635) b!146924))

(assert (= (and b!146918 c!29945) b!146920))

(assert (= (and b!146918 (not c!29945)) b!146917))

(assert (= (and b!146917 res!67633) b!146925))

(assert (= (and b!146917 c!29946) b!146922))

(assert (= (and b!146917 (not c!29946)) b!146921))

(assert (= (or b!146922 b!146921) bm!5804))

(assert (= (or b!146922 b!146921) bm!5801))

(assert (= (or b!146920 bm!5804 b!146925) bm!5805))

(assert (= (or b!146920 b!146922) bm!5803))

(assert (= (or b!146920 b!146922) bm!5802))

(declare-fun m!129629 () Bool)

(assert (=> bm!5802 m!129629))

(declare-fun m!129631 () Bool)

(assert (=> bm!5801 m!129631))

(declare-fun m!129633 () Bool)

(assert (=> b!146921 m!129633))

(declare-fun m!129635 () Bool)

(assert (=> b!146921 m!129635))

(declare-fun m!129637 () Bool)

(assert (=> b!146921 m!129637))

(declare-fun m!129639 () Bool)

(assert (=> b!146921 m!129639))

(assert (=> b!146921 m!129635))

(declare-fun m!129641 () Bool)

(assert (=> b!146921 m!129641))

(assert (=> b!146921 m!129633))

(assert (=> b!146921 m!129639))

(declare-fun m!129643 () Bool)

(assert (=> b!146921 m!129643))

(assert (=> b!146921 m!129635))

(declare-fun m!129645 () Bool)

(assert (=> b!146924 m!129645))

(assert (=> b!146919 m!129399))

(declare-fun m!129647 () Bool)

(assert (=> b!146922 m!129647))

(declare-fun m!129649 () Bool)

(assert (=> b!146918 m!129649))

(declare-fun m!129651 () Bool)

(assert (=> b!146918 m!129651))

(declare-fun m!129653 () Bool)

(assert (=> b!146918 m!129653))

(declare-fun m!129655 () Bool)

(assert (=> b!146918 m!129655))

(assert (=> b!146918 m!129645))

(declare-fun m!129657 () Bool)

(assert (=> b!146918 m!129657))

(declare-fun m!129659 () Bool)

(assert (=> b!146918 m!129659))

(assert (=> b!146918 m!129645))

(declare-fun m!129661 () Bool)

(assert (=> b!146918 m!129661))

(assert (=> b!146918 m!129649))

(declare-fun m!129663 () Bool)

(assert (=> b!146918 m!129663))

(declare-fun m!129665 () Bool)

(assert (=> b!146918 m!129665))

(declare-fun m!129667 () Bool)

(assert (=> b!146918 m!129667))

(assert (=> b!146918 m!129653))

(declare-fun m!129669 () Bool)

(assert (=> b!146918 m!129669))

(assert (=> b!146918 m!129659))

(assert (=> b!146918 m!129657))

(assert (=> b!146918 m!129665))

(assert (=> b!146918 m!129645))

(declare-fun m!129671 () Bool)

(assert (=> b!146918 m!129671))

(declare-fun m!129673 () Bool)

(assert (=> b!146918 m!129673))

(declare-fun m!129675 () Bool)

(assert (=> b!146918 m!129675))

(assert (=> bm!5805 m!129645))

(declare-fun m!129677 () Bool)

(assert (=> bm!5803 m!129677))

(declare-fun m!129679 () Bool)

(assert (=> d!34949 m!129679))

(declare-fun m!129681 () Bool)

(assert (=> d!34949 m!129681))

(assert (=> d!34949 m!129681))

(declare-fun m!129683 () Bool)

(assert (=> d!34949 m!129683))

(assert (=> d!34949 m!129659))

(assert (=> d!34949 m!129681))

(declare-fun m!129685 () Bool)

(assert (=> d!34949 m!129685))

(assert (=> d!34949 m!129399))

(assert (=> d!34949 m!129659))

(assert (=> b!146711 d!34949))

(declare-fun b!146976 () Bool)

(declare-fun res!67644 () Bool)

(declare-fun e!87421 () Bool)

(assert (=> b!146976 (=> res!67644 e!87421)))

(assert (=> b!146976 (= res!67644 (not ((_ is IntegerValue!1385) (value!16827 (h!7951 tokens!465)))))))

(declare-fun e!87419 () Bool)

(assert (=> b!146976 (= e!87419 e!87421)))

(declare-fun d!34959 () Bool)

(declare-fun c!29953 () Bool)

(assert (=> d!34959 (= c!29953 ((_ is IntegerValue!1383) (value!16827 (h!7951 tokens!465))))))

(declare-fun e!87420 () Bool)

(assert (=> d!34959 (= (inv!21 (value!16827 (h!7951 tokens!465))) e!87420)))

(declare-fun b!146977 () Bool)

(assert (=> b!146977 (= e!87420 e!87419)))

(declare-fun c!29954 () Bool)

(assert (=> b!146977 (= c!29954 ((_ is IntegerValue!1384) (value!16827 (h!7951 tokens!465))))))

(declare-fun b!146978 () Bool)

(declare-fun inv!16 (TokenValue!461) Bool)

(assert (=> b!146978 (= e!87420 (inv!16 (value!16827 (h!7951 tokens!465))))))

(declare-fun b!146979 () Bool)

(declare-fun inv!15 (TokenValue!461) Bool)

(assert (=> b!146979 (= e!87421 (inv!15 (value!16827 (h!7951 tokens!465))))))

(declare-fun b!146980 () Bool)

(declare-fun inv!17 (TokenValue!461) Bool)

(assert (=> b!146980 (= e!87419 (inv!17 (value!16827 (h!7951 tokens!465))))))

(assert (= (and d!34959 c!29953) b!146978))

(assert (= (and d!34959 (not c!29953)) b!146977))

(assert (= (and b!146977 c!29954) b!146980))

(assert (= (and b!146977 (not c!29954)) b!146976))

(assert (= (and b!146976 (not res!67644)) b!146979))

(declare-fun m!129695 () Bool)

(assert (=> b!146978 m!129695))

(declare-fun m!129697 () Bool)

(assert (=> b!146979 m!129697))

(declare-fun m!129699 () Bool)

(assert (=> b!146980 m!129699))

(assert (=> b!146713 d!34959))

(declare-fun d!34965 () Bool)

(declare-fun res!67649 () Bool)

(declare-fun e!87434 () Bool)

(assert (=> d!34965 (=> res!67649 e!87434)))

(assert (=> d!34965 (= res!67649 ((_ is Nil!2554) tokens!465))))

(assert (=> d!34965 (= (forall!410 tokens!465 lambda!3632) e!87434)))

(declare-fun b!146991 () Bool)

(declare-fun e!87435 () Bool)

(assert (=> b!146991 (= e!87434 e!87435)))

(declare-fun res!67650 () Bool)

(assert (=> b!146991 (=> (not res!67650) (not e!87435))))

(declare-fun dynLambda!876 (Int Token!622) Bool)

(assert (=> b!146991 (= res!67650 (dynLambda!876 lambda!3632 (h!7951 tokens!465)))))

(declare-fun b!146992 () Bool)

(assert (=> b!146992 (= e!87435 (forall!410 (t!24234 tokens!465) lambda!3632))))

(assert (= (and d!34965 (not res!67649)) b!146991))

(assert (= (and b!146991 res!67650) b!146992))

(declare-fun b_lambda!2485 () Bool)

(assert (=> (not b_lambda!2485) (not b!146991)))

(declare-fun m!129709 () Bool)

(assert (=> b!146991 m!129709))

(declare-fun m!129711 () Bool)

(assert (=> b!146992 m!129711))

(assert (=> b!146702 d!34965))

(declare-fun bs!13265 () Bool)

(declare-fun d!34967 () Bool)

(assert (= bs!13265 (and d!34967 b!146702)))

(declare-fun lambda!3660 () Int)

(assert (=> bs!13265 (not (= lambda!3660 lambda!3632))))

(declare-fun bs!13266 () Bool)

(assert (= bs!13266 (and d!34967 b!146831)))

(assert (=> bs!13266 (= lambda!3660 lambda!3642)))

(declare-fun bs!13267 () Bool)

(assert (= bs!13267 (and d!34967 d!34949)))

(assert (=> bs!13267 (not (= lambda!3660 lambda!3654))))

(declare-fun bs!13268 () Bool)

(assert (= bs!13268 (and d!34967 b!146918)))

(assert (=> bs!13268 (= lambda!3660 lambda!3655)))

(declare-fun b!147018 () Bool)

(declare-fun e!87456 () Bool)

(assert (=> b!147018 (= e!87456 true)))

(declare-fun b!147017 () Bool)

(declare-fun e!87455 () Bool)

(assert (=> b!147017 (= e!87455 e!87456)))

(declare-fun b!147016 () Bool)

(declare-fun e!87454 () Bool)

(assert (=> b!147016 (= e!87454 e!87455)))

(assert (=> d!34967 e!87454))

(assert (= b!147017 b!147018))

(assert (= b!147016 b!147017))

(assert (= (and d!34967 ((_ is Cons!2553) rules!1920)) b!147016))

(assert (=> b!147018 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3660))))

(assert (=> b!147018 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3660))))

(assert (=> d!34967 true))

(declare-fun e!87453 () Bool)

(assert (=> d!34967 e!87453))

(declare-fun res!67653 () Bool)

(assert (=> d!34967 (=> (not res!67653) (not e!87453))))

(declare-fun lt!42454 () Bool)

(assert (=> d!34967 (= res!67653 (= lt!42454 (forall!410 (list!884 lt!42310) lambda!3660)))))

(assert (=> d!34967 (= lt!42454 (forall!411 lt!42310 lambda!3660))))

(assert (=> d!34967 (not (isEmpty!992 rules!1920))))

(assert (=> d!34967 (= (rulesProduceEachTokenIndividually!117 thiss!17480 rules!1920 lt!42310) lt!42454)))

(declare-fun b!147015 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!71 (LexerInterface!325 List!2563 List!2564) Bool)

(assert (=> b!147015 (= e!87453 (= lt!42454 (rulesProduceEachTokenIndividuallyList!71 thiss!17480 rules!1920 (list!884 lt!42310))))))

(assert (= (and d!34967 res!67653) b!147015))

(assert (=> d!34967 m!129659))

(assert (=> d!34967 m!129659))

(declare-fun m!129717 () Bool)

(assert (=> d!34967 m!129717))

(declare-fun m!129719 () Bool)

(assert (=> d!34967 m!129719))

(assert (=> d!34967 m!129395))

(assert (=> b!147015 m!129659))

(assert (=> b!147015 m!129659))

(declare-fun m!129721 () Bool)

(assert (=> b!147015 m!129721))

(assert (=> b!146709 d!34967))

(declare-fun d!34971 () Bool)

(declare-fun fromListB!109 (List!2564) BalanceConc!1410)

(assert (=> d!34971 (= (seqFromList!256 tokens!465) (fromListB!109 tokens!465))))

(declare-fun bs!13269 () Bool)

(assert (= bs!13269 d!34971))

(declare-fun m!129723 () Bool)

(assert (=> bs!13269 m!129723))

(assert (=> b!146709 d!34971))

(declare-fun b!147019 () Bool)

(declare-fun res!67654 () Bool)

(declare-fun e!87459 () Bool)

(assert (=> b!147019 (=> res!67654 e!87459)))

(assert (=> b!147019 (= res!67654 (not ((_ is IntegerValue!1385) (value!16827 separatorToken!170))))))

(declare-fun e!87457 () Bool)

(assert (=> b!147019 (= e!87457 e!87459)))

(declare-fun d!34973 () Bool)

(declare-fun c!29955 () Bool)

(assert (=> d!34973 (= c!29955 ((_ is IntegerValue!1383) (value!16827 separatorToken!170)))))

(declare-fun e!87458 () Bool)

(assert (=> d!34973 (= (inv!21 (value!16827 separatorToken!170)) e!87458)))

(declare-fun b!147020 () Bool)

(assert (=> b!147020 (= e!87458 e!87457)))

(declare-fun c!29956 () Bool)

(assert (=> b!147020 (= c!29956 ((_ is IntegerValue!1384) (value!16827 separatorToken!170)))))

(declare-fun b!147021 () Bool)

(assert (=> b!147021 (= e!87458 (inv!16 (value!16827 separatorToken!170)))))

(declare-fun b!147022 () Bool)

(assert (=> b!147022 (= e!87459 (inv!15 (value!16827 separatorToken!170)))))

(declare-fun b!147023 () Bool)

(assert (=> b!147023 (= e!87457 (inv!17 (value!16827 separatorToken!170)))))

(assert (= (and d!34973 c!29955) b!147021))

(assert (= (and d!34973 (not c!29955)) b!147020))

(assert (= (and b!147020 c!29956) b!147023))

(assert (= (and b!147020 (not c!29956)) b!147019))

(assert (= (and b!147019 (not res!67654)) b!147022))

(declare-fun m!129725 () Bool)

(assert (=> b!147021 m!129725))

(declare-fun m!129727 () Bool)

(assert (=> b!147022 m!129727))

(declare-fun m!129729 () Bool)

(assert (=> b!147023 m!129729))

(assert (=> b!146720 d!34973))

(declare-fun d!34975 () Bool)

(assert (=> d!34975 (= (inv!3332 (tag!617 (rule!946 (h!7951 tokens!465)))) (= (mod (str.len (value!16826 (tag!617 (rule!946 (h!7951 tokens!465))))) 2) 0))))

(assert (=> b!146719 d!34975))

(declare-fun d!34977 () Bool)

(declare-fun res!67657 () Bool)

(declare-fun e!87462 () Bool)

(assert (=> d!34977 (=> (not res!67657) (not e!87462))))

(declare-fun semiInverseModEq!151 (Int Int) Bool)

(assert (=> d!34977 (= res!67657 (semiInverseModEq!151 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465))))))))

(assert (=> d!34977 (= (inv!3335 (transformation!439 (rule!946 (h!7951 tokens!465)))) e!87462)))

(declare-fun b!147026 () Bool)

(declare-fun equivClasses!134 (Int Int) Bool)

(assert (=> b!147026 (= e!87462 (equivClasses!134 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465))))))))

(assert (= (and d!34977 res!67657) b!147026))

(declare-fun m!129731 () Bool)

(assert (=> d!34977 m!129731))

(declare-fun m!129733 () Bool)

(assert (=> b!147026 m!129733))

(assert (=> b!146719 d!34977))

(declare-fun d!34979 () Bool)

(declare-fun res!67660 () Bool)

(declare-fun e!87465 () Bool)

(assert (=> d!34979 (=> (not res!67660) (not e!87465))))

(declare-fun rulesValid!117 (LexerInterface!325 List!2563) Bool)

(assert (=> d!34979 (= res!67660 (rulesValid!117 thiss!17480 rules!1920))))

(assert (=> d!34979 (= (rulesInvariant!291 thiss!17480 rules!1920) e!87465)))

(declare-fun b!147029 () Bool)

(declare-datatypes ((List!2566 0))(
  ( (Nil!2556) (Cons!2556 (h!7953 String!3385) (t!24298 List!2566)) )
))
(declare-fun noDuplicateTag!117 (LexerInterface!325 List!2563 List!2566) Bool)

(assert (=> b!147029 (= e!87465 (noDuplicateTag!117 thiss!17480 rules!1920 Nil!2556))))

(assert (= (and d!34979 res!67660) b!147029))

(declare-fun m!129735 () Bool)

(assert (=> d!34979 m!129735))

(declare-fun m!129737 () Bool)

(assert (=> b!147029 m!129737))

(assert (=> b!146700 d!34979))

(declare-fun d!34981 () Bool)

(declare-fun lt!42457 () Int)

(declare-fun size!2201 (List!2564) Int)

(assert (=> d!34981 (= lt!42457 (size!2201 (list!884 lt!42310)))))

(declare-fun size!2202 (Conc!701) Int)

(assert (=> d!34981 (= lt!42457 (size!2202 (c!29895 lt!42310)))))

(assert (=> d!34981 (= (size!2197 lt!42310) lt!42457)))

(declare-fun bs!13270 () Bool)

(assert (= bs!13270 d!34981))

(assert (=> bs!13270 m!129659))

(assert (=> bs!13270 m!129659))

(declare-fun m!129739 () Bool)

(assert (=> bs!13270 m!129739))

(declare-fun m!129741 () Bool)

(assert (=> bs!13270 m!129741))

(assert (=> b!146710 d!34981))

(declare-fun d!34983 () Bool)

(declare-fun res!67665 () Bool)

(declare-fun e!87468 () Bool)

(assert (=> d!34983 (=> (not res!67665) (not e!87468))))

(declare-fun isEmpty!996 (List!2562) Bool)

(assert (=> d!34983 (= res!67665 (not (isEmpty!996 (originalCharacters!482 separatorToken!170))))))

(assert (=> d!34983 (= (inv!3336 separatorToken!170) e!87468)))

(declare-fun b!147034 () Bool)

(declare-fun res!67666 () Bool)

(assert (=> b!147034 (=> (not res!67666) (not e!87468))))

(declare-fun dynLambda!877 (Int TokenValue!461) BalanceConc!1408)

(assert (=> b!147034 (= res!67666 (= (originalCharacters!482 separatorToken!170) (list!881 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))))))

(declare-fun b!147035 () Bool)

(declare-fun size!2203 (List!2562) Int)

(assert (=> b!147035 (= e!87468 (= (size!2196 separatorToken!170) (size!2203 (originalCharacters!482 separatorToken!170))))))

(assert (= (and d!34983 res!67665) b!147034))

(assert (= (and b!147034 res!67666) b!147035))

(declare-fun b_lambda!2493 () Bool)

(assert (=> (not b_lambda!2493) (not b!147034)))

(declare-fun t!24278 () Bool)

(declare-fun tb!4689 () Bool)

(assert (=> (and b!146718 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 separatorToken!170)))) t!24278) tb!4689))

(declare-fun b!147040 () Bool)

(declare-fun e!87471 () Bool)

(declare-fun tp!77306 () Bool)

(declare-fun inv!3339 (Conc!700) Bool)

(assert (=> b!147040 (= e!87471 (and (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))) tp!77306))))

(declare-fun result!7066 () Bool)

(declare-fun inv!3340 (BalanceConc!1408) Bool)

(assert (=> tb!4689 (= result!7066 (and (inv!3340 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))) e!87471))))

(assert (= tb!4689 b!147040))

(declare-fun m!129743 () Bool)

(assert (=> b!147040 m!129743))

(declare-fun m!129745 () Bool)

(assert (=> tb!4689 m!129745))

(assert (=> b!147034 t!24278))

(declare-fun b_and!8081 () Bool)

(assert (= b_and!8051 (and (=> t!24278 result!7066) b_and!8081)))

(declare-fun t!24280 () Bool)

(declare-fun tb!4691 () Bool)

(assert (=> (and b!146717 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 separatorToken!170)))) t!24280) tb!4691))

(declare-fun result!7070 () Bool)

(assert (= result!7070 result!7066))

(assert (=> b!147034 t!24280))

(declare-fun b_and!8083 () Bool)

(assert (= b_and!8055 (and (=> t!24280 result!7070) b_and!8083)))

(declare-fun t!24282 () Bool)

(declare-fun tb!4693 () Bool)

(assert (=> (and b!146712 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 separatorToken!170)))) t!24282) tb!4693))

(declare-fun result!7072 () Bool)

(assert (= result!7072 result!7066))

(assert (=> b!147034 t!24282))

(declare-fun b_and!8085 () Bool)

(assert (= b_and!8059 (and (=> t!24282 result!7072) b_and!8085)))

(declare-fun m!129747 () Bool)

(assert (=> d!34983 m!129747))

(declare-fun m!129749 () Bool)

(assert (=> b!147034 m!129749))

(assert (=> b!147034 m!129749))

(declare-fun m!129751 () Bool)

(assert (=> b!147034 m!129751))

(declare-fun m!129753 () Bool)

(assert (=> b!147035 m!129753))

(assert (=> start!15530 d!34983))

(declare-fun d!34985 () Bool)

(declare-fun res!67667 () Bool)

(declare-fun e!87472 () Bool)

(assert (=> d!34985 (=> (not res!67667) (not e!87472))))

(assert (=> d!34985 (= res!67667 (not (isEmpty!996 (originalCharacters!482 (h!7951 tokens!465)))))))

(assert (=> d!34985 (= (inv!3336 (h!7951 tokens!465)) e!87472)))

(declare-fun b!147041 () Bool)

(declare-fun res!67668 () Bool)

(assert (=> b!147041 (=> (not res!67668) (not e!87472))))

(assert (=> b!147041 (= res!67668 (= (originalCharacters!482 (h!7951 tokens!465)) (list!881 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))))))

(declare-fun b!147042 () Bool)

(assert (=> b!147042 (= e!87472 (= (size!2196 (h!7951 tokens!465)) (size!2203 (originalCharacters!482 (h!7951 tokens!465)))))))

(assert (= (and d!34985 res!67667) b!147041))

(assert (= (and b!147041 res!67668) b!147042))

(declare-fun b_lambda!2495 () Bool)

(assert (=> (not b_lambda!2495) (not b!147041)))

(declare-fun tb!4695 () Bool)

(declare-fun t!24284 () Bool)

(assert (=> (and b!146718 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) t!24284) tb!4695))

(declare-fun b!147043 () Bool)

(declare-fun e!87473 () Bool)

(declare-fun tp!77307 () Bool)

(assert (=> b!147043 (= e!87473 (and (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))) tp!77307))))

(declare-fun result!7074 () Bool)

(assert (=> tb!4695 (= result!7074 (and (inv!3340 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))) e!87473))))

(assert (= tb!4695 b!147043))

(declare-fun m!129755 () Bool)

(assert (=> b!147043 m!129755))

(declare-fun m!129757 () Bool)

(assert (=> tb!4695 m!129757))

(assert (=> b!147041 t!24284))

(declare-fun b_and!8087 () Bool)

(assert (= b_and!8081 (and (=> t!24284 result!7074) b_and!8087)))

(declare-fun tb!4697 () Bool)

(declare-fun t!24286 () Bool)

(assert (=> (and b!146717 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) t!24286) tb!4697))

(declare-fun result!7076 () Bool)

(assert (= result!7076 result!7074))

(assert (=> b!147041 t!24286))

(declare-fun b_and!8089 () Bool)

(assert (= b_and!8083 (and (=> t!24286 result!7076) b_and!8089)))

(declare-fun t!24288 () Bool)

(declare-fun tb!4699 () Bool)

(assert (=> (and b!146712 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) t!24288) tb!4699))

(declare-fun result!7078 () Bool)

(assert (= result!7078 result!7074))

(assert (=> b!147041 t!24288))

(declare-fun b_and!8091 () Bool)

(assert (= b_and!8085 (and (=> t!24288 result!7078) b_and!8091)))

(declare-fun m!129759 () Bool)

(assert (=> d!34985 m!129759))

(declare-fun m!129761 () Bool)

(assert (=> b!147041 m!129761))

(assert (=> b!147041 m!129761))

(declare-fun m!129763 () Bool)

(assert (=> b!147041 m!129763))

(declare-fun m!129765 () Bool)

(assert (=> b!147042 m!129765))

(assert (=> b!146707 d!34985))

(declare-fun d!34987 () Bool)

(declare-fun lt!42460 () Bool)

(assert (=> d!34987 (= lt!42460 (forall!410 (list!884 lt!42310) lambda!3632))))

(declare-fun forall!413 (Conc!701 Int) Bool)

(assert (=> d!34987 (= lt!42460 (forall!413 (c!29895 lt!42310) lambda!3632))))

(assert (=> d!34987 (= (forall!411 lt!42310 lambda!3632) lt!42460)))

(declare-fun bs!13271 () Bool)

(assert (= bs!13271 d!34987))

(assert (=> bs!13271 m!129659))

(assert (=> bs!13271 m!129659))

(declare-fun m!129767 () Bool)

(assert (=> bs!13271 m!129767))

(declare-fun m!129769 () Bool)

(assert (=> bs!13271 m!129769))

(assert (=> b!146703 d!34987))

(declare-fun d!34989 () Bool)

(declare-fun res!67673 () Bool)

(declare-fun e!87478 () Bool)

(assert (=> d!34989 (=> res!67673 e!87478)))

(assert (=> d!34989 (= res!67673 (not ((_ is Cons!2553) rules!1920)))))

(assert (=> d!34989 (= (sepAndNonSepRulesDisjointChars!28 rules!1920 rules!1920) e!87478)))

(declare-fun b!147048 () Bool)

(declare-fun e!87479 () Bool)

(assert (=> b!147048 (= e!87478 e!87479)))

(declare-fun res!67674 () Bool)

(assert (=> b!147048 (=> (not res!67674) (not e!87479))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!10 (Rule!678 List!2563) Bool)

(assert (=> b!147048 (= res!67674 (ruleDisjointCharsFromAllFromOtherType!10 (h!7950 rules!1920) rules!1920))))

(declare-fun b!147049 () Bool)

(assert (=> b!147049 (= e!87479 (sepAndNonSepRulesDisjointChars!28 rules!1920 (t!24233 rules!1920)))))

(assert (= (and d!34989 (not res!67673)) b!147048))

(assert (= (and b!147048 res!67674) b!147049))

(declare-fun m!129771 () Bool)

(assert (=> b!147048 m!129771))

(declare-fun m!129773 () Bool)

(assert (=> b!147049 m!129773))

(assert (=> b!146714 d!34989))

(declare-fun d!34991 () Bool)

(assert (=> d!34991 (= (inv!3332 (tag!617 (h!7950 rules!1920))) (= (mod (str.len (value!16826 (tag!617 (h!7950 rules!1920)))) 2) 0))))

(assert (=> b!146705 d!34991))

(declare-fun d!34993 () Bool)

(declare-fun res!67675 () Bool)

(declare-fun e!87480 () Bool)

(assert (=> d!34993 (=> (not res!67675) (not e!87480))))

(assert (=> d!34993 (= res!67675 (semiInverseModEq!151 (toChars!925 (transformation!439 (h!7950 rules!1920))) (toValue!1066 (transformation!439 (h!7950 rules!1920)))))))

(assert (=> d!34993 (= (inv!3335 (transformation!439 (h!7950 rules!1920))) e!87480)))

(declare-fun b!147050 () Bool)

(assert (=> b!147050 (= e!87480 (equivClasses!134 (toChars!925 (transformation!439 (h!7950 rules!1920))) (toValue!1066 (transformation!439 (h!7950 rules!1920)))))))

(assert (= (and d!34993 res!67675) b!147050))

(declare-fun m!129775 () Bool)

(assert (=> d!34993 m!129775))

(declare-fun m!129777 () Bool)

(assert (=> b!147050 m!129777))

(assert (=> b!146705 d!34993))

(declare-fun d!34995 () Bool)

(assert (=> d!34995 (= (inv!3332 (tag!617 (rule!946 separatorToken!170))) (= (mod (str.len (value!16826 (tag!617 (rule!946 separatorToken!170)))) 2) 0))))

(assert (=> b!146716 d!34995))

(declare-fun d!34997 () Bool)

(declare-fun res!67676 () Bool)

(declare-fun e!87481 () Bool)

(assert (=> d!34997 (=> (not res!67676) (not e!87481))))

(assert (=> d!34997 (= res!67676 (semiInverseModEq!151 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toValue!1066 (transformation!439 (rule!946 separatorToken!170)))))))

(assert (=> d!34997 (= (inv!3335 (transformation!439 (rule!946 separatorToken!170))) e!87481)))

(declare-fun b!147051 () Bool)

(assert (=> b!147051 (= e!87481 (equivClasses!134 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toValue!1066 (transformation!439 (rule!946 separatorToken!170)))))))

(assert (= (and d!34997 res!67676) b!147051))

(declare-fun m!129779 () Bool)

(assert (=> d!34997 m!129779))

(declare-fun m!129781 () Bool)

(assert (=> b!147051 m!129781))

(assert (=> b!146716 d!34997))

(declare-fun d!34999 () Bool)

(assert (=> d!34999 (= (isEmpty!992 rules!1920) ((_ is Nil!2553) rules!1920))))

(assert (=> b!146715 d!34999))

(declare-fun b!147056 () Bool)

(declare-fun e!87484 () Bool)

(declare-fun tp_is_empty!1599 () Bool)

(declare-fun tp!77310 () Bool)

(assert (=> b!147056 (= e!87484 (and tp_is_empty!1599 tp!77310))))

(assert (=> b!146713 (= tp!77240 e!87484)))

(assert (= (and b!146713 ((_ is Cons!2552) (originalCharacters!482 (h!7951 tokens!465)))) b!147056))

(declare-fun b!147057 () Bool)

(declare-fun e!87485 () Bool)

(declare-fun tp!77311 () Bool)

(assert (=> b!147057 (= e!87485 (and tp_is_empty!1599 tp!77311))))

(assert (=> b!146720 (= tp!77231 e!87485)))

(assert (= (and b!146720 ((_ is Cons!2552) (originalCharacters!482 separatorToken!170))) b!147057))

(declare-fun e!87488 () Bool)

(assert (=> b!146719 (= tp!77234 e!87488)))

(declare-fun b!147069 () Bool)

(declare-fun tp!77326 () Bool)

(declare-fun tp!77325 () Bool)

(assert (=> b!147069 (= e!87488 (and tp!77326 tp!77325))))

(declare-fun b!147068 () Bool)

(assert (=> b!147068 (= e!87488 tp_is_empty!1599)))

(declare-fun b!147070 () Bool)

(declare-fun tp!77323 () Bool)

(assert (=> b!147070 (= e!87488 tp!77323)))

(declare-fun b!147071 () Bool)

(declare-fun tp!77324 () Bool)

(declare-fun tp!77322 () Bool)

(assert (=> b!147071 (= e!87488 (and tp!77324 tp!77322))))

(assert (= (and b!146719 ((_ is ElementMatch!663) (regex!439 (rule!946 (h!7951 tokens!465))))) b!147068))

(assert (= (and b!146719 ((_ is Concat!1125) (regex!439 (rule!946 (h!7951 tokens!465))))) b!147069))

(assert (= (and b!146719 ((_ is Star!663) (regex!439 (rule!946 (h!7951 tokens!465))))) b!147070))

(assert (= (and b!146719 ((_ is Union!663) (regex!439 (rule!946 (h!7951 tokens!465))))) b!147071))

(declare-fun b!147085 () Bool)

(declare-fun b_free!5237 () Bool)

(declare-fun b_next!5237 () Bool)

(assert (=> b!147085 (= b_free!5237 (not b_next!5237))))

(declare-fun tp!77341 () Bool)

(declare-fun b_and!8093 () Bool)

(assert (=> b!147085 (= tp!77341 b_and!8093)))

(declare-fun b_free!5239 () Bool)

(declare-fun b_next!5239 () Bool)

(assert (=> b!147085 (= b_free!5239 (not b_next!5239))))

(declare-fun t!24290 () Bool)

(declare-fun tb!4701 () Bool)

(assert (=> (and b!147085 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 separatorToken!170)))) t!24290) tb!4701))

(declare-fun result!7086 () Bool)

(assert (= result!7086 result!7066))

(assert (=> b!147034 t!24290))

(declare-fun t!24292 () Bool)

(declare-fun tb!4703 () Bool)

(assert (=> (and b!147085 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) t!24292) tb!4703))

(declare-fun result!7088 () Bool)

(assert (= result!7088 result!7074))

(assert (=> b!147041 t!24292))

(declare-fun tp!77339 () Bool)

(declare-fun b_and!8095 () Bool)

(assert (=> b!147085 (= tp!77339 (and (=> t!24290 result!7086) (=> t!24292 result!7088) b_and!8095))))

(declare-fun e!87506 () Bool)

(assert (=> b!146707 (= tp!77242 e!87506)))

(declare-fun e!87501 () Bool)

(declare-fun e!87503 () Bool)

(declare-fun tp!77338 () Bool)

(declare-fun b!147083 () Bool)

(assert (=> b!147083 (= e!87503 (and (inv!21 (value!16827 (h!7951 (t!24234 tokens!465)))) e!87501 tp!77338))))

(declare-fun b!147084 () Bool)

(declare-fun tp!77340 () Bool)

(declare-fun e!87504 () Bool)

(assert (=> b!147084 (= e!87501 (and tp!77340 (inv!3332 (tag!617 (rule!946 (h!7951 (t!24234 tokens!465))))) (inv!3335 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) e!87504))))

(declare-fun tp!77337 () Bool)

(declare-fun b!147082 () Bool)

(assert (=> b!147082 (= e!87506 (and (inv!3336 (h!7951 (t!24234 tokens!465))) e!87503 tp!77337))))

(assert (=> b!147085 (= e!87504 (and tp!77341 tp!77339))))

(assert (= b!147084 b!147085))

(assert (= b!147083 b!147084))

(assert (= b!147082 b!147083))

(assert (= (and b!146707 ((_ is Cons!2554) (t!24234 tokens!465))) b!147082))

(declare-fun m!129783 () Bool)

(assert (=> b!147083 m!129783))

(declare-fun m!129785 () Bool)

(assert (=> b!147084 m!129785))

(declare-fun m!129787 () Bool)

(assert (=> b!147084 m!129787))

(declare-fun m!129789 () Bool)

(assert (=> b!147082 m!129789))

(declare-fun b!147096 () Bool)

(declare-fun b_free!5241 () Bool)

(declare-fun b_next!5241 () Bool)

(assert (=> b!147096 (= b_free!5241 (not b_next!5241))))

(declare-fun tp!77352 () Bool)

(declare-fun b_and!8097 () Bool)

(assert (=> b!147096 (= tp!77352 b_and!8097)))

(declare-fun b_free!5243 () Bool)

(declare-fun b_next!5243 () Bool)

(assert (=> b!147096 (= b_free!5243 (not b_next!5243))))

(declare-fun tb!4705 () Bool)

(declare-fun t!24294 () Bool)

(assert (=> (and b!147096 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 separatorToken!170)))) t!24294) tb!4705))

(declare-fun result!7092 () Bool)

(assert (= result!7092 result!7066))

(assert (=> b!147034 t!24294))

(declare-fun t!24296 () Bool)

(declare-fun tb!4707 () Bool)

(assert (=> (and b!147096 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) t!24296) tb!4707))

(declare-fun result!7094 () Bool)

(assert (= result!7094 result!7074))

(assert (=> b!147041 t!24296))

(declare-fun tp!77351 () Bool)

(declare-fun b_and!8099 () Bool)

(assert (=> b!147096 (= tp!77351 (and (=> t!24294 result!7092) (=> t!24296 result!7094) b_and!8099))))

(declare-fun e!87517 () Bool)

(assert (=> b!147096 (= e!87517 (and tp!77352 tp!77351))))

(declare-fun b!147095 () Bool)

(declare-fun tp!77353 () Bool)

(declare-fun e!87516 () Bool)

(assert (=> b!147095 (= e!87516 (and tp!77353 (inv!3332 (tag!617 (h!7950 (t!24233 rules!1920)))) (inv!3335 (transformation!439 (h!7950 (t!24233 rules!1920)))) e!87517))))

(declare-fun b!147094 () Bool)

(declare-fun e!87518 () Bool)

(declare-fun tp!77350 () Bool)

(assert (=> b!147094 (= e!87518 (and e!87516 tp!77350))))

(assert (=> b!146704 (= tp!77236 e!87518)))

(assert (= b!147095 b!147096))

(assert (= b!147094 b!147095))

(assert (= (and b!146704 ((_ is Cons!2553) (t!24233 rules!1920))) b!147094))

(declare-fun m!129791 () Bool)

(assert (=> b!147095 m!129791))

(declare-fun m!129793 () Bool)

(assert (=> b!147095 m!129793))

(declare-fun e!87519 () Bool)

(assert (=> b!146705 (= tp!77233 e!87519)))

(declare-fun b!147098 () Bool)

(declare-fun tp!77358 () Bool)

(declare-fun tp!77357 () Bool)

(assert (=> b!147098 (= e!87519 (and tp!77358 tp!77357))))

(declare-fun b!147097 () Bool)

(assert (=> b!147097 (= e!87519 tp_is_empty!1599)))

(declare-fun b!147099 () Bool)

(declare-fun tp!77355 () Bool)

(assert (=> b!147099 (= e!87519 tp!77355)))

(declare-fun b!147100 () Bool)

(declare-fun tp!77356 () Bool)

(declare-fun tp!77354 () Bool)

(assert (=> b!147100 (= e!87519 (and tp!77356 tp!77354))))

(assert (= (and b!146705 ((_ is ElementMatch!663) (regex!439 (h!7950 rules!1920)))) b!147097))

(assert (= (and b!146705 ((_ is Concat!1125) (regex!439 (h!7950 rules!1920)))) b!147098))

(assert (= (and b!146705 ((_ is Star!663) (regex!439 (h!7950 rules!1920)))) b!147099))

(assert (= (and b!146705 ((_ is Union!663) (regex!439 (h!7950 rules!1920)))) b!147100))

(declare-fun e!87520 () Bool)

(assert (=> b!146716 (= tp!77237 e!87520)))

(declare-fun b!147102 () Bool)

(declare-fun tp!77363 () Bool)

(declare-fun tp!77362 () Bool)

(assert (=> b!147102 (= e!87520 (and tp!77363 tp!77362))))

(declare-fun b!147101 () Bool)

(assert (=> b!147101 (= e!87520 tp_is_empty!1599)))

(declare-fun b!147103 () Bool)

(declare-fun tp!77360 () Bool)

(assert (=> b!147103 (= e!87520 tp!77360)))

(declare-fun b!147104 () Bool)

(declare-fun tp!77361 () Bool)

(declare-fun tp!77359 () Bool)

(assert (=> b!147104 (= e!87520 (and tp!77361 tp!77359))))

(assert (= (and b!146716 ((_ is ElementMatch!663) (regex!439 (rule!946 separatorToken!170)))) b!147101))

(assert (= (and b!146716 ((_ is Concat!1125) (regex!439 (rule!946 separatorToken!170)))) b!147102))

(assert (= (and b!146716 ((_ is Star!663) (regex!439 (rule!946 separatorToken!170)))) b!147103))

(assert (= (and b!146716 ((_ is Union!663) (regex!439 (rule!946 separatorToken!170)))) b!147104))

(declare-fun b_lambda!2497 () Bool)

(assert (= b_lambda!2493 (or (and b!146718 b_free!5219) (and b!146712 b_free!5227 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) (and b!147096 b_free!5243 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) (and b!147085 b_free!5239 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) (and b!146717 b_free!5223 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) b_lambda!2497)))

(declare-fun b_lambda!2499 () Bool)

(assert (= b_lambda!2485 (or b!146702 b_lambda!2499)))

(declare-fun bs!13272 () Bool)

(declare-fun d!35001 () Bool)

(assert (= bs!13272 (and d!35001 b!146702)))

(assert (=> bs!13272 (= (dynLambda!876 lambda!3632 (h!7951 tokens!465)) (not (isSeparator!439 (rule!946 (h!7951 tokens!465)))))))

(assert (=> b!146991 d!35001))

(declare-fun b_lambda!2501 () Bool)

(assert (= b_lambda!2495 (or (and b!146712 b_free!5227) (and b!146718 b_free!5219 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!147085 b_free!5239 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!147096 b_free!5243 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!146717 b_free!5223 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) b_lambda!2501)))

(check-sat tp_is_empty!1599 (not b!146858) (not b!146921) (not tb!4695) (not b_next!5219) (not b!146729) (not b!146924) (not b!146980) (not b!147048) (not b!147084) (not bm!5768) (not d!34971) (not b!147069) b_and!8097 b_and!8053 (not bm!5801) (not b!146833) (not b!147103) (not b!147049) (not b!146727) (not b!147051) (not b!147015) (not bm!5769) (not b!147102) (not b!147082) (not d!34993) (not b!147104) (not d!34981) (not b_next!5239) (not bm!5770) (not d!34987) (not b!147023) (not b_lambda!2501) (not d!34997) (not b_lambda!2499) b_and!8087 (not b!147083) (not tb!4689) (not b!147022) b_and!8099 (not b!146926) (not b_next!5221) (not b!147056) b_and!8089 (not bm!5803) (not b_next!5223) (not d!34983) (not b!147050) (not bm!5802) (not b!146836) (not b_next!5217) (not b!146922) (not d!34967) (not b!146728) (not b_lambda!2497) (not b!146979) (not b!147043) b_and!8091 (not b_next!5237) b_and!8093 (not b!147021) (not b!146918) (not b!147095) (not b_next!5243) (not b!146919) (not b!147100) (not b!147041) (not d!34949) (not b!147099) (not b!147040) (not b_next!5225) b_and!8049 b_and!8095 (not b_next!5241) (not d!34979) (not b!147042) (not b!146837) (not b!147035) (not b!147029) (not d!34913) (not b!147094) (not bm!5805) (not d!34947) (not b!147070) (not bm!5767) (not b!147071) (not b_next!5227) b_and!8057 (not b!146992) (not d!34985) (not b!146831) (not b!147016) (not b!147098) (not b!147026) (not b!147057) (not d!34977) (not b!146978) (not b!147034))
(check-sat b_and!8097 b_and!8053 (not b_next!5239) b_and!8087 b_and!8089 (not b_next!5223) (not b_next!5217) (not b_next!5219) (not b_next!5243) (not b_next!5241) (not b_next!5227) b_and!8057 b_and!8099 (not b_next!5221) b_and!8093 b_and!8091 (not b_next!5237) (not b_next!5225) b_and!8049 b_and!8095)
(get-model)

(declare-fun d!35033 () Bool)

(assert (=> d!35033 (= (inv!3332 (tag!617 (h!7950 (t!24233 rules!1920)))) (= (mod (str.len (value!16826 (tag!617 (h!7950 (t!24233 rules!1920))))) 2) 0))))

(assert (=> b!147095 d!35033))

(declare-fun d!35035 () Bool)

(declare-fun res!67717 () Bool)

(declare-fun e!87568 () Bool)

(assert (=> d!35035 (=> (not res!67717) (not e!87568))))

(assert (=> d!35035 (= res!67717 (semiInverseModEq!151 (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toValue!1066 (transformation!439 (h!7950 (t!24233 rules!1920))))))))

(assert (=> d!35035 (= (inv!3335 (transformation!439 (h!7950 (t!24233 rules!1920)))) e!87568)))

(declare-fun b!147184 () Bool)

(assert (=> b!147184 (= e!87568 (equivClasses!134 (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toValue!1066 (transformation!439 (h!7950 (t!24233 rules!1920))))))))

(assert (= (and d!35035 res!67717) b!147184))

(declare-fun m!129877 () Bool)

(assert (=> d!35035 m!129877))

(declare-fun m!129879 () Bool)

(assert (=> b!147184 m!129879))

(assert (=> b!147095 d!35035))

(declare-fun d!35037 () Bool)

(assert (=> d!35037 (= (isEmpty!996 (originalCharacters!482 separatorToken!170)) ((_ is Nil!2552) (originalCharacters!482 separatorToken!170)))))

(assert (=> d!34983 d!35037))

(declare-fun e!87574 () List!2562)

(declare-fun b!147196 () Bool)

(assert (=> b!147196 (= e!87574 (++!543 (list!885 (left!1926 (c!29893 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0)))) (list!885 (right!2256 (c!29893 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0))))))))

(declare-fun c!29987 () Bool)

(declare-fun d!35039 () Bool)

(assert (=> d!35039 (= c!29987 ((_ is Empty!700) (c!29893 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0))))))

(declare-fun e!87573 () List!2562)

(assert (=> d!35039 (= (list!885 (c!29893 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0))) e!87573)))

(declare-fun b!147195 () Bool)

(declare-fun list!887 (IArray!1401) List!2562)

(assert (=> b!147195 (= e!87574 (list!887 (xs!3295 (c!29893 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0)))))))

(declare-fun b!147193 () Bool)

(assert (=> b!147193 (= e!87573 Nil!2552)))

(declare-fun b!147194 () Bool)

(assert (=> b!147194 (= e!87573 e!87574)))

(declare-fun c!29988 () Bool)

(assert (=> b!147194 (= c!29988 ((_ is Leaf!1259) (c!29893 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 0))))))

(assert (= (and d!35039 c!29987) b!147193))

(assert (= (and d!35039 (not c!29987)) b!147194))

(assert (= (and b!147194 c!29988) b!147195))

(assert (= (and b!147194 (not c!29988)) b!147196))

(declare-fun m!129881 () Bool)

(assert (=> b!147196 m!129881))

(declare-fun m!129883 () Bool)

(assert (=> b!147196 m!129883))

(assert (=> b!147196 m!129881))

(assert (=> b!147196 m!129883))

(declare-fun m!129885 () Bool)

(assert (=> b!147196 m!129885))

(declare-fun m!129887 () Bool)

(assert (=> b!147195 m!129887))

(assert (=> d!34947 d!35039))

(assert (=> b!146919 d!34981))

(declare-fun d!35041 () Bool)

(declare-fun e!87579 () Bool)

(assert (=> d!35041 e!87579))

(declare-fun res!67723 () Bool)

(assert (=> d!35041 (=> (not res!67723) (not e!87579))))

(declare-fun lt!42489 () List!2562)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!355 (List!2562) (InoxSet C!2248))

(assert (=> d!35041 (= res!67723 (= (content!355 lt!42489) ((_ map or) (content!355 call!5773) (content!355 lt!42361))))))

(declare-fun e!87580 () List!2562)

(assert (=> d!35041 (= lt!42489 e!87580)))

(declare-fun c!29991 () Bool)

(assert (=> d!35041 (= c!29991 ((_ is Nil!2552) call!5773))))

(assert (=> d!35041 (= (++!543 call!5773 lt!42361) lt!42489)))

(declare-fun b!147207 () Bool)

(declare-fun res!67722 () Bool)

(assert (=> b!147207 (=> (not res!67722) (not e!87579))))

(assert (=> b!147207 (= res!67722 (= (size!2203 lt!42489) (+ (size!2203 call!5773) (size!2203 lt!42361))))))

(declare-fun b!147208 () Bool)

(assert (=> b!147208 (= e!87579 (or (not (= lt!42361 Nil!2552)) (= lt!42489 call!5773)))))

(declare-fun b!147206 () Bool)

(assert (=> b!147206 (= e!87580 (Cons!2552 (h!7949 call!5773) (++!543 (t!24232 call!5773) lt!42361)))))

(declare-fun b!147205 () Bool)

(assert (=> b!147205 (= e!87580 lt!42361)))

(assert (= (and d!35041 c!29991) b!147205))

(assert (= (and d!35041 (not c!29991)) b!147206))

(assert (= (and d!35041 res!67723) b!147207))

(assert (= (and b!147207 res!67722) b!147208))

(declare-fun m!129889 () Bool)

(assert (=> d!35041 m!129889))

(declare-fun m!129891 () Bool)

(assert (=> d!35041 m!129891))

(declare-fun m!129893 () Bool)

(assert (=> d!35041 m!129893))

(declare-fun m!129895 () Bool)

(assert (=> b!147207 m!129895))

(declare-fun m!129897 () Bool)

(assert (=> b!147207 m!129897))

(declare-fun m!129899 () Bool)

(assert (=> b!147207 m!129899))

(declare-fun m!129901 () Bool)

(assert (=> b!147206 m!129901))

(assert (=> b!146833 d!35041))

(declare-fun bs!13289 () Bool)

(declare-fun d!35043 () Bool)

(assert (= bs!13289 (and d!35043 b!146918)))

(declare-fun lambda!3665 () Int)

(assert (=> bs!13289 (= lambda!3665 lambda!3655)))

(declare-fun bs!13290 () Bool)

(assert (= bs!13290 (and d!35043 d!34967)))

(assert (=> bs!13290 (= lambda!3665 lambda!3660)))

(declare-fun bs!13291 () Bool)

(assert (= bs!13291 (and d!35043 b!146831)))

(assert (=> bs!13291 (= lambda!3665 lambda!3642)))

(declare-fun bs!13292 () Bool)

(assert (= bs!13292 (and d!35043 b!146702)))

(assert (=> bs!13292 (not (= lambda!3665 lambda!3632))))

(declare-fun bs!13293 () Bool)

(assert (= bs!13293 (and d!35043 d!34949)))

(assert (=> bs!13293 (not (= lambda!3665 lambda!3654))))

(declare-fun b!147267 () Bool)

(declare-fun e!87626 () Bool)

(assert (=> b!147267 (= e!87626 true)))

(declare-fun b!147266 () Bool)

(declare-fun e!87625 () Bool)

(assert (=> b!147266 (= e!87625 e!87626)))

(declare-fun b!147265 () Bool)

(declare-fun e!87624 () Bool)

(assert (=> b!147265 (= e!87624 e!87625)))

(assert (=> d!35043 e!87624))

(assert (= b!147266 b!147267))

(assert (= b!147265 b!147266))

(assert (= (and d!35043 ((_ is Cons!2553) rules!1920)) b!147265))

(assert (=> b!147267 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3665))))

(assert (=> b!147267 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3665))))

(assert (=> d!35043 true))

(declare-fun lt!42536 () Bool)

(assert (=> d!35043 (= lt!42536 (forall!410 (list!884 lt!42310) lambda!3665))))

(declare-fun e!87622 () Bool)

(assert (=> d!35043 (= lt!42536 e!87622)))

(declare-fun res!67755 () Bool)

(assert (=> d!35043 (=> res!67755 e!87622)))

(assert (=> d!35043 (= res!67755 (not ((_ is Cons!2554) (list!884 lt!42310))))))

(assert (=> d!35043 (not (isEmpty!992 rules!1920))))

(assert (=> d!35043 (= (rulesProduceEachTokenIndividuallyList!71 thiss!17480 rules!1920 (list!884 lt!42310)) lt!42536)))

(declare-fun b!147263 () Bool)

(declare-fun e!87623 () Bool)

(assert (=> b!147263 (= e!87622 e!87623)))

(declare-fun res!67756 () Bool)

(assert (=> b!147263 (=> (not res!67756) (not e!87623))))

(assert (=> b!147263 (= res!67756 (rulesProduceIndividualToken!74 thiss!17480 rules!1920 (h!7951 (list!884 lt!42310))))))

(declare-fun b!147264 () Bool)

(assert (=> b!147264 (= e!87623 (rulesProduceEachTokenIndividuallyList!71 thiss!17480 rules!1920 (t!24234 (list!884 lt!42310))))))

(assert (= (and d!35043 (not res!67755)) b!147263))

(assert (= (and b!147263 res!67756) b!147264))

(assert (=> d!35043 m!129659))

(declare-fun m!130011 () Bool)

(assert (=> d!35043 m!130011))

(assert (=> d!35043 m!129395))

(declare-fun m!130013 () Bool)

(assert (=> b!147263 m!130013))

(declare-fun m!130015 () Bool)

(assert (=> b!147264 m!130015))

(assert (=> b!147015 d!35043))

(declare-fun d!35059 () Bool)

(declare-fun list!888 (Conc!701) List!2564)

(assert (=> d!35059 (= (list!884 lt!42310) (list!888 (c!29895 lt!42310)))))

(declare-fun bs!13294 () Bool)

(assert (= bs!13294 d!35059))

(declare-fun m!130017 () Bool)

(assert (=> bs!13294 m!130017))

(assert (=> b!147015 d!35059))

(declare-fun d!35061 () Bool)

(declare-fun res!67761 () Bool)

(declare-fun e!87631 () Bool)

(assert (=> d!35061 (=> res!67761 e!87631)))

(assert (=> d!35061 (= res!67761 ((_ is Nil!2553) rules!1920))))

(assert (=> d!35061 (= (noDuplicateTag!117 thiss!17480 rules!1920 Nil!2556) e!87631)))

(declare-fun b!147272 () Bool)

(declare-fun e!87632 () Bool)

(assert (=> b!147272 (= e!87631 e!87632)))

(declare-fun res!67762 () Bool)

(assert (=> b!147272 (=> (not res!67762) (not e!87632))))

(declare-fun contains!404 (List!2566 String!3385) Bool)

(assert (=> b!147272 (= res!67762 (not (contains!404 Nil!2556 (tag!617 (h!7950 rules!1920)))))))

(declare-fun b!147273 () Bool)

(assert (=> b!147273 (= e!87632 (noDuplicateTag!117 thiss!17480 (t!24233 rules!1920) (Cons!2556 (tag!617 (h!7950 rules!1920)) Nil!2556)))))

(assert (= (and d!35061 (not res!67761)) b!147272))

(assert (= (and b!147272 res!67762) b!147273))

(declare-fun m!130019 () Bool)

(assert (=> b!147272 m!130019))

(declare-fun m!130021 () Bool)

(assert (=> b!147273 m!130021))

(assert (=> b!147029 d!35061))

(declare-fun d!35063 () Bool)

(declare-fun lt!42539 () Int)

(assert (=> d!35063 (>= lt!42539 0)))

(declare-fun e!87635 () Int)

(assert (=> d!35063 (= lt!42539 e!87635)))

(declare-fun c!30004 () Bool)

(assert (=> d!35063 (= c!30004 ((_ is Nil!2552) (originalCharacters!482 separatorToken!170)))))

(assert (=> d!35063 (= (size!2203 (originalCharacters!482 separatorToken!170)) lt!42539)))

(declare-fun b!147278 () Bool)

(assert (=> b!147278 (= e!87635 0)))

(declare-fun b!147279 () Bool)

(assert (=> b!147279 (= e!87635 (+ 1 (size!2203 (t!24232 (originalCharacters!482 separatorToken!170)))))))

(assert (= (and d!35063 c!30004) b!147278))

(assert (= (and d!35063 (not c!30004)) b!147279))

(declare-fun m!130023 () Bool)

(assert (=> b!147279 m!130023))

(assert (=> b!147035 d!35063))

(declare-fun b!147307 () Bool)

(declare-fun res!67780 () Bool)

(declare-fun e!87650 () Bool)

(assert (=> b!147307 (=> (not res!67780) (not e!87650))))

(declare-fun lt!42574 () Option!222)

(declare-fun get!688 (Option!222) tuple2!2524)

(assert (=> b!147307 (= res!67780 (= (++!543 (list!881 (charsOf!96 (_1!1478 (get!688 lt!42574)))) (_2!1478 (get!688 lt!42574))) (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361)))))

(declare-fun b!147308 () Bool)

(declare-fun res!67785 () Bool)

(assert (=> b!147308 (=> (not res!67785) (not e!87650))))

(declare-fun apply!324 (TokenValueInjection!694 BalanceConc!1408) TokenValue!461)

(declare-fun seqFromList!257 (List!2562) BalanceConc!1408)

(assert (=> b!147308 (= res!67785 (= (value!16827 (_1!1478 (get!688 lt!42574))) (apply!324 (transformation!439 (rule!946 (_1!1478 (get!688 lt!42574)))) (seqFromList!257 (originalCharacters!482 (_1!1478 (get!688 lt!42574)))))))))

(declare-fun b!147309 () Bool)

(declare-fun res!67781 () Bool)

(assert (=> b!147309 (=> (not res!67781) (not e!87650))))

(declare-fun matchR!62 (Regex!663 List!2562) Bool)

(assert (=> b!147309 (= res!67781 (matchR!62 (regex!439 (rule!946 (_1!1478 (get!688 lt!42574)))) (list!881 (charsOf!96 (_1!1478 (get!688 lt!42574))))))))

(declare-fun call!5826 () Option!222)

(declare-fun bm!5821 () Bool)

(declare-fun maxPrefixOneRule!50 (LexerInterface!325 Rule!678 List!2562) Option!222)

(assert (=> bm!5821 (= call!5826 (maxPrefixOneRule!50 thiss!17480 (h!7950 rules!1920) (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361)))))

(declare-fun b!147310 () Bool)

(declare-fun e!87648 () Option!222)

(declare-fun lt!42575 () Option!222)

(declare-fun lt!42571 () Option!222)

(assert (=> b!147310 (= e!87648 (ite (and ((_ is None!221) lt!42575) ((_ is None!221) lt!42571)) None!221 (ite ((_ is None!221) lt!42571) lt!42575 (ite ((_ is None!221) lt!42575) lt!42571 (ite (>= (size!2196 (_1!1478 (v!13584 lt!42575))) (size!2196 (_1!1478 (v!13584 lt!42571)))) lt!42575 lt!42571)))))))

(assert (=> b!147310 (= lt!42575 call!5826)))

(assert (=> b!147310 (= lt!42571 (maxPrefix!101 thiss!17480 (t!24233 rules!1920) (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361)))))

(declare-fun b!147311 () Bool)

(declare-fun contains!405 (List!2563 Rule!678) Bool)

(assert (=> b!147311 (= e!87650 (contains!405 rules!1920 (rule!946 (_1!1478 (get!688 lt!42574)))))))

(declare-fun b!147312 () Bool)

(assert (=> b!147312 (= e!87648 call!5826)))

(declare-fun b!147313 () Bool)

(declare-fun res!67783 () Bool)

(assert (=> b!147313 (=> (not res!67783) (not e!87650))))

(assert (=> b!147313 (= res!67783 (= (list!881 (charsOf!96 (_1!1478 (get!688 lt!42574)))) (originalCharacters!482 (_1!1478 (get!688 lt!42574)))))))

(declare-fun d!35065 () Bool)

(declare-fun e!87649 () Bool)

(assert (=> d!35065 e!87649))

(declare-fun res!67784 () Bool)

(assert (=> d!35065 (=> res!67784 e!87649)))

(declare-fun isEmpty!997 (Option!222) Bool)

(assert (=> d!35065 (= res!67784 (isEmpty!997 lt!42574))))

(assert (=> d!35065 (= lt!42574 e!87648)))

(declare-fun c!30010 () Bool)

(assert (=> d!35065 (= c!30010 (and ((_ is Cons!2553) rules!1920) ((_ is Nil!2553) (t!24233 rules!1920))))))

(declare-fun lt!42572 () Unit!1900)

(declare-fun lt!42573 () Unit!1900)

(assert (=> d!35065 (= lt!42572 lt!42573)))

(declare-fun isPrefix!207 (List!2562 List!2562) Bool)

(assert (=> d!35065 (isPrefix!207 (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361) (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361))))

(declare-fun lemmaIsPrefixRefl!115 (List!2562 List!2562) Unit!1900)

(assert (=> d!35065 (= lt!42573 (lemmaIsPrefixRefl!115 (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361) (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361)))))

(declare-fun rulesValidInductive!92 (LexerInterface!325 List!2563) Bool)

(assert (=> d!35065 (rulesValidInductive!92 thiss!17480 rules!1920)))

(assert (=> d!35065 (= (maxPrefix!101 thiss!17480 rules!1920 (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361)) lt!42574)))

(declare-fun b!147314 () Bool)

(declare-fun res!67782 () Bool)

(assert (=> b!147314 (=> (not res!67782) (not e!87650))))

(assert (=> b!147314 (= res!67782 (< (size!2203 (_2!1478 (get!688 lt!42574))) (size!2203 (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361))))))

(declare-fun b!147315 () Bool)

(assert (=> b!147315 (= e!87649 e!87650)))

(declare-fun res!67786 () Bool)

(assert (=> b!147315 (=> (not res!67786) (not e!87650))))

(declare-fun isDefined!87 (Option!222) Bool)

(assert (=> b!147315 (= res!67786 (isDefined!87 lt!42574))))

(assert (= (and d!35065 c!30010) b!147312))

(assert (= (and d!35065 (not c!30010)) b!147310))

(assert (= (or b!147312 b!147310) bm!5821))

(assert (= (and d!35065 (not res!67784)) b!147315))

(assert (= (and b!147315 res!67786) b!147313))

(assert (= (and b!147313 res!67783) b!147314))

(assert (= (and b!147314 res!67782) b!147307))

(assert (= (and b!147307 res!67780) b!147308))

(assert (= (and b!147308 res!67785) b!147309))

(assert (= (and b!147309 res!67781) b!147311))

(declare-fun m!130059 () Bool)

(assert (=> b!147307 m!130059))

(declare-fun m!130061 () Bool)

(assert (=> b!147307 m!130061))

(assert (=> b!147307 m!130061))

(declare-fun m!130063 () Bool)

(assert (=> b!147307 m!130063))

(assert (=> b!147307 m!130063))

(declare-fun m!130065 () Bool)

(assert (=> b!147307 m!130065))

(assert (=> b!147311 m!130059))

(declare-fun m!130067 () Bool)

(assert (=> b!147311 m!130067))

(assert (=> b!147314 m!130059))

(declare-fun m!130069 () Bool)

(assert (=> b!147314 m!130069))

(assert (=> b!147314 m!129529))

(declare-fun m!130071 () Bool)

(assert (=> b!147314 m!130071))

(declare-fun m!130073 () Bool)

(assert (=> d!35065 m!130073))

(assert (=> d!35065 m!129529))

(assert (=> d!35065 m!129529))

(declare-fun m!130075 () Bool)

(assert (=> d!35065 m!130075))

(assert (=> d!35065 m!129529))

(assert (=> d!35065 m!129529))

(declare-fun m!130077 () Bool)

(assert (=> d!35065 m!130077))

(declare-fun m!130079 () Bool)

(assert (=> d!35065 m!130079))

(assert (=> bm!5821 m!129529))

(declare-fun m!130081 () Bool)

(assert (=> bm!5821 m!130081))

(assert (=> b!147309 m!130059))

(assert (=> b!147309 m!130061))

(assert (=> b!147309 m!130061))

(assert (=> b!147309 m!130063))

(assert (=> b!147309 m!130063))

(declare-fun m!130083 () Bool)

(assert (=> b!147309 m!130083))

(assert (=> b!147310 m!129529))

(declare-fun m!130085 () Bool)

(assert (=> b!147310 m!130085))

(assert (=> b!147308 m!130059))

(declare-fun m!130087 () Bool)

(assert (=> b!147308 m!130087))

(assert (=> b!147308 m!130087))

(declare-fun m!130089 () Bool)

(assert (=> b!147308 m!130089))

(assert (=> b!147313 m!130059))

(assert (=> b!147313 m!130061))

(assert (=> b!147313 m!130061))

(assert (=> b!147313 m!130063))

(declare-fun m!130091 () Bool)

(assert (=> b!147315 m!130091))

(assert (=> b!146831 d!35065))

(declare-fun bs!13295 () Bool)

(declare-fun b!147316 () Bool)

(assert (= bs!13295 (and b!147316 b!146918)))

(declare-fun lambda!3666 () Int)

(assert (=> bs!13295 (= lambda!3666 lambda!3655)))

(declare-fun bs!13296 () Bool)

(assert (= bs!13296 (and b!147316 d!34967)))

(assert (=> bs!13296 (= lambda!3666 lambda!3660)))

(declare-fun bs!13297 () Bool)

(assert (= bs!13297 (and b!147316 d!35043)))

(assert (=> bs!13297 (= lambda!3666 lambda!3665)))

(declare-fun bs!13298 () Bool)

(assert (= bs!13298 (and b!147316 b!146831)))

(assert (=> bs!13298 (= lambda!3666 lambda!3642)))

(declare-fun bs!13299 () Bool)

(assert (= bs!13299 (and b!147316 b!146702)))

(assert (=> bs!13299 (not (= lambda!3666 lambda!3632))))

(declare-fun bs!13300 () Bool)

(assert (= bs!13300 (and b!147316 d!34949)))

(assert (=> bs!13300 (not (= lambda!3666 lambda!3654))))

(declare-fun b!147326 () Bool)

(declare-fun e!87657 () Bool)

(assert (=> b!147326 (= e!87657 true)))

(declare-fun b!147325 () Bool)

(declare-fun e!87656 () Bool)

(assert (=> b!147325 (= e!87656 e!87657)))

(declare-fun b!147324 () Bool)

(declare-fun e!87655 () Bool)

(assert (=> b!147324 (= e!87655 e!87656)))

(assert (=> b!147316 e!87655))

(assert (= b!147325 b!147326))

(assert (= b!147324 b!147325))

(assert (= (and b!147316 ((_ is Cons!2553) rules!1920)) b!147324))

(assert (=> b!147326 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3666))))

(assert (=> b!147326 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3666))))

(assert (=> b!147316 true))

(declare-fun bm!5822 () Bool)

(declare-fun call!5827 () BalanceConc!1408)

(declare-fun call!5828 () BalanceConc!1408)

(assert (=> bm!5822 (= call!5827 call!5828)))

(declare-fun e!87654 () List!2562)

(declare-fun e!87652 () List!2562)

(assert (=> b!147316 (= e!87654 e!87652)))

(declare-fun lt!42577 () Unit!1900)

(assert (=> b!147316 (= lt!42577 (forallContained!44 (t!24234 tokens!465) lambda!3666 (h!7951 (t!24234 tokens!465))))))

(declare-fun lt!42581 () List!2562)

(assert (=> b!147316 (= lt!42581 (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 (t!24234 (t!24234 tokens!465)) separatorToken!170))))

(declare-fun lt!42578 () Option!222)

(assert (=> b!147316 (= lt!42578 (maxPrefix!101 thiss!17480 rules!1920 (++!543 (list!881 (charsOf!96 (h!7951 (t!24234 tokens!465)))) lt!42581)))))

(declare-fun c!30011 () Bool)

(assert (=> b!147316 (= c!30011 (and ((_ is Some!221) lt!42578) (= (_1!1478 (v!13584 lt!42578)) (h!7951 (t!24234 tokens!465)))))))

(declare-fun d!35069 () Bool)

(declare-fun c!30013 () Bool)

(assert (=> d!35069 (= c!30013 ((_ is Cons!2554) (t!24234 tokens!465)))))

(assert (=> d!35069 (= (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 (t!24234 tokens!465) separatorToken!170) e!87654)))

(declare-fun b!147317 () Bool)

(declare-fun call!5829 () List!2562)

(assert (=> b!147317 (= e!87652 call!5829)))

(declare-fun b!147318 () Bool)

(declare-fun e!87651 () List!2562)

(assert (=> b!147318 (= e!87651 (++!543 call!5829 lt!42581))))

(declare-fun bm!5823 () Bool)

(declare-fun call!5831 () List!2562)

(declare-fun call!5830 () List!2562)

(assert (=> bm!5823 (= call!5829 (++!543 call!5831 (ite c!30011 lt!42581 call!5830)))))

(declare-fun bm!5824 () Bool)

(assert (=> bm!5824 (= call!5828 (charsOf!96 (h!7951 (t!24234 tokens!465))))))

(declare-fun b!147319 () Bool)

(assert (=> b!147319 (= e!87654 Nil!2552)))

(declare-fun b!147320 () Bool)

(declare-fun c!30012 () Bool)

(assert (=> b!147320 (= c!30012 (and ((_ is Some!221) lt!42578) (not (= (_1!1478 (v!13584 lt!42578)) (h!7951 (t!24234 tokens!465))))))))

(assert (=> b!147320 (= e!87652 e!87651)))

(declare-fun b!147321 () Bool)

(declare-fun e!87653 () BalanceConc!1408)

(assert (=> b!147321 (= e!87653 (charsOf!96 separatorToken!170))))

(declare-fun b!147322 () Bool)

(assert (=> b!147322 (= e!87651 Nil!2552)))

(assert (=> b!147322 (= (print!86 thiss!17480 (singletonSeq!19 (h!7951 (t!24234 tokens!465)))) (printTailRec!49 thiss!17480 (singletonSeq!19 (h!7951 (t!24234 tokens!465))) 0 (BalanceConc!1409 Empty!700)))))

(declare-fun lt!42579 () Unit!1900)

(declare-fun Unit!1906 () Unit!1900)

(assert (=> b!147322 (= lt!42579 Unit!1906)))

(declare-fun lt!42580 () Unit!1900)

(assert (=> b!147322 (= lt!42580 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!8 thiss!17480 rules!1920 call!5830 lt!42581))))

(assert (=> b!147322 false))

(declare-fun lt!42576 () Unit!1900)

(declare-fun Unit!1907 () Unit!1900)

(assert (=> b!147322 (= lt!42576 Unit!1907)))

(declare-fun bm!5825 () Bool)

(assert (=> bm!5825 (= call!5831 (list!881 (ite c!30011 call!5828 call!5827)))))

(declare-fun bm!5826 () Bool)

(assert (=> bm!5826 (= call!5830 (list!881 e!87653))))

(declare-fun c!30014 () Bool)

(assert (=> bm!5826 (= c!30014 c!30012)))

(declare-fun b!147323 () Bool)

(assert (=> b!147323 (= e!87653 call!5827)))

(assert (= (and d!35069 c!30013) b!147316))

(assert (= (and d!35069 (not c!30013)) b!147319))

(assert (= (and b!147316 c!30011) b!147317))

(assert (= (and b!147316 (not c!30011)) b!147320))

(assert (= (and b!147320 c!30012) b!147318))

(assert (= (and b!147320 (not c!30012)) b!147322))

(assert (= (or b!147318 b!147322) bm!5822))

(assert (= (or b!147318 b!147322) bm!5826))

(assert (= (and bm!5826 c!30014) b!147321))

(assert (= (and bm!5826 (not c!30014)) b!147323))

(assert (= (or b!147317 bm!5822) bm!5824))

(assert (= (or b!147317 b!147318) bm!5825))

(assert (= (or b!147317 b!147318) bm!5823))

(declare-fun m!130093 () Bool)

(assert (=> b!147316 m!130093))

(declare-fun m!130095 () Bool)

(assert (=> b!147316 m!130095))

(declare-fun m!130097 () Bool)

(assert (=> b!147316 m!130097))

(assert (=> b!147316 m!130093))

(declare-fun m!130099 () Bool)

(assert (=> b!147316 m!130099))

(declare-fun m!130101 () Bool)

(assert (=> b!147316 m!130101))

(declare-fun m!130103 () Bool)

(assert (=> b!147316 m!130103))

(assert (=> b!147316 m!130101))

(assert (=> b!147316 m!130097))

(declare-fun m!130105 () Bool)

(assert (=> b!147322 m!130105))

(assert (=> b!147322 m!130105))

(declare-fun m!130107 () Bool)

(assert (=> b!147322 m!130107))

(assert (=> b!147322 m!130105))

(declare-fun m!130109 () Bool)

(assert (=> b!147322 m!130109))

(declare-fun m!130111 () Bool)

(assert (=> b!147322 m!130111))

(declare-fun m!130113 () Bool)

(assert (=> b!147318 m!130113))

(declare-fun m!130115 () Bool)

(assert (=> bm!5826 m!130115))

(assert (=> bm!5824 m!130101))

(assert (=> b!147321 m!129555))

(declare-fun m!130117 () Bool)

(assert (=> bm!5825 m!130117))

(declare-fun m!130119 () Bool)

(assert (=> bm!5823 m!130119))

(assert (=> b!146831 d!35069))

(declare-fun d!35071 () Bool)

(declare-fun e!87658 () Bool)

(assert (=> d!35071 e!87658))

(declare-fun res!67788 () Bool)

(assert (=> d!35071 (=> (not res!67788) (not e!87658))))

(declare-fun lt!42582 () List!2562)

(assert (=> d!35071 (= res!67788 (= (content!355 lt!42582) ((_ map or) (content!355 (list!881 (charsOf!96 (h!7951 tokens!465)))) (content!355 lt!42361))))))

(declare-fun e!87659 () List!2562)

(assert (=> d!35071 (= lt!42582 e!87659)))

(declare-fun c!30015 () Bool)

(assert (=> d!35071 (= c!30015 ((_ is Nil!2552) (list!881 (charsOf!96 (h!7951 tokens!465)))))))

(assert (=> d!35071 (= (++!543 (list!881 (charsOf!96 (h!7951 tokens!465))) lt!42361) lt!42582)))

(declare-fun b!147329 () Bool)

(declare-fun res!67787 () Bool)

(assert (=> b!147329 (=> (not res!67787) (not e!87658))))

(assert (=> b!147329 (= res!67787 (= (size!2203 lt!42582) (+ (size!2203 (list!881 (charsOf!96 (h!7951 tokens!465)))) (size!2203 lt!42361))))))

(declare-fun b!147330 () Bool)

(assert (=> b!147330 (= e!87658 (or (not (= lt!42361 Nil!2552)) (= lt!42582 (list!881 (charsOf!96 (h!7951 tokens!465))))))))

(declare-fun b!147328 () Bool)

(assert (=> b!147328 (= e!87659 (Cons!2552 (h!7949 (list!881 (charsOf!96 (h!7951 tokens!465)))) (++!543 (t!24232 (list!881 (charsOf!96 (h!7951 tokens!465)))) lt!42361)))))

(declare-fun b!147327 () Bool)

(assert (=> b!147327 (= e!87659 lt!42361)))

(assert (= (and d!35071 c!30015) b!147327))

(assert (= (and d!35071 (not c!30015)) b!147328))

(assert (= (and d!35071 res!67788) b!147329))

(assert (= (and b!147329 res!67787) b!147330))

(declare-fun m!130121 () Bool)

(assert (=> d!35071 m!130121))

(assert (=> d!35071 m!129533))

(declare-fun m!130123 () Bool)

(assert (=> d!35071 m!130123))

(assert (=> d!35071 m!129893))

(declare-fun m!130125 () Bool)

(assert (=> b!147329 m!130125))

(assert (=> b!147329 m!129533))

(declare-fun m!130127 () Bool)

(assert (=> b!147329 m!130127))

(assert (=> b!147329 m!129899))

(declare-fun m!130129 () Bool)

(assert (=> b!147328 m!130129))

(assert (=> b!146831 d!35071))

(declare-fun d!35073 () Bool)

(assert (=> d!35073 (dynLambda!876 lambda!3642 (h!7951 tokens!465))))

(declare-fun lt!42585 () Unit!1900)

(declare-fun choose!1732 (List!2564 Int Token!622) Unit!1900)

(assert (=> d!35073 (= lt!42585 (choose!1732 tokens!465 lambda!3642 (h!7951 tokens!465)))))

(declare-fun e!87662 () Bool)

(assert (=> d!35073 e!87662))

(declare-fun res!67791 () Bool)

(assert (=> d!35073 (=> (not res!67791) (not e!87662))))

(assert (=> d!35073 (= res!67791 (forall!410 tokens!465 lambda!3642))))

(assert (=> d!35073 (= (forallContained!44 tokens!465 lambda!3642 (h!7951 tokens!465)) lt!42585)))

(declare-fun b!147333 () Bool)

(declare-fun contains!406 (List!2564 Token!622) Bool)

(assert (=> b!147333 (= e!87662 (contains!406 tokens!465 (h!7951 tokens!465)))))

(assert (= (and d!35073 res!67791) b!147333))

(declare-fun b_lambda!2507 () Bool)

(assert (=> (not b_lambda!2507) (not d!35073)))

(declare-fun m!130131 () Bool)

(assert (=> d!35073 m!130131))

(declare-fun m!130133 () Bool)

(assert (=> d!35073 m!130133))

(declare-fun m!130135 () Bool)

(assert (=> d!35073 m!130135))

(declare-fun m!130137 () Bool)

(assert (=> b!147333 m!130137))

(assert (=> b!146831 d!35073))

(declare-fun d!35075 () Bool)

(assert (=> d!35075 (= (list!881 (charsOf!96 (h!7951 tokens!465))) (list!885 (c!29893 (charsOf!96 (h!7951 tokens!465)))))))

(declare-fun bs!13301 () Bool)

(assert (= bs!13301 d!35075))

(declare-fun m!130139 () Bool)

(assert (=> bs!13301 m!130139))

(assert (=> b!146831 d!35075))

(declare-fun d!35077 () Bool)

(declare-fun lt!42588 () BalanceConc!1408)

(assert (=> d!35077 (= (list!881 lt!42588) (originalCharacters!482 (h!7951 tokens!465)))))

(assert (=> d!35077 (= lt!42588 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))))

(assert (=> d!35077 (= (charsOf!96 (h!7951 tokens!465)) lt!42588)))

(declare-fun b_lambda!2509 () Bool)

(assert (=> (not b_lambda!2509) (not d!35077)))

(assert (=> d!35077 t!24296))

(declare-fun b_and!8111 () Bool)

(assert (= b_and!8099 (and (=> t!24296 result!7094) b_and!8111)))

(assert (=> d!35077 t!24288))

(declare-fun b_and!8113 () Bool)

(assert (= b_and!8091 (and (=> t!24288 result!7078) b_and!8113)))

(assert (=> d!35077 t!24286))

(declare-fun b_and!8115 () Bool)

(assert (= b_and!8089 (and (=> t!24286 result!7076) b_and!8115)))

(assert (=> d!35077 t!24292))

(declare-fun b_and!8117 () Bool)

(assert (= b_and!8095 (and (=> t!24292 result!7088) b_and!8117)))

(assert (=> d!35077 t!24284))

(declare-fun b_and!8119 () Bool)

(assert (= b_and!8087 (and (=> t!24284 result!7074) b_and!8119)))

(declare-fun m!130141 () Bool)

(assert (=> d!35077 m!130141))

(assert (=> d!35077 m!129761))

(assert (=> b!146831 d!35077))

(declare-fun d!35079 () Bool)

(declare-fun c!30018 () Bool)

(assert (=> d!35079 (= c!30018 ((_ is Node!700) (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))))))

(declare-fun e!87667 () Bool)

(assert (=> d!35079 (= (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))) e!87667)))

(declare-fun b!147340 () Bool)

(declare-fun inv!3341 (Conc!700) Bool)

(assert (=> b!147340 (= e!87667 (inv!3341 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))))))

(declare-fun b!147341 () Bool)

(declare-fun e!87668 () Bool)

(assert (=> b!147341 (= e!87667 e!87668)))

(declare-fun res!67794 () Bool)

(assert (=> b!147341 (= res!67794 (not ((_ is Leaf!1259) (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))))))))

(assert (=> b!147341 (=> res!67794 e!87668)))

(declare-fun b!147342 () Bool)

(declare-fun inv!3342 (Conc!700) Bool)

(assert (=> b!147342 (= e!87668 (inv!3342 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))))))

(assert (= (and d!35079 c!30018) b!147340))

(assert (= (and d!35079 (not c!30018)) b!147341))

(assert (= (and b!147341 (not res!67794)) b!147342))

(declare-fun m!130143 () Bool)

(assert (=> b!147340 m!130143))

(declare-fun m!130145 () Bool)

(assert (=> b!147342 m!130145))

(assert (=> b!147040 d!35079))

(declare-fun d!35081 () Bool)

(declare-fun e!87671 () Bool)

(assert (=> d!35081 e!87671))

(declare-fun res!67797 () Bool)

(assert (=> d!35081 (=> (not res!67797) (not e!87671))))

(declare-fun lt!42591 () BalanceConc!1410)

(assert (=> d!35081 (= res!67797 (= (list!884 lt!42591) tokens!465))))

(declare-fun fromList!74 (List!2564) Conc!701)

(assert (=> d!35081 (= lt!42591 (BalanceConc!1411 (fromList!74 tokens!465)))))

(assert (=> d!35081 (= (fromListB!109 tokens!465) lt!42591)))

(declare-fun b!147345 () Bool)

(declare-fun isBalanced!198 (Conc!701) Bool)

(assert (=> b!147345 (= e!87671 (isBalanced!198 (fromList!74 tokens!465)))))

(assert (= (and d!35081 res!67797) b!147345))

(declare-fun m!130147 () Bool)

(assert (=> d!35081 m!130147))

(declare-fun m!130149 () Bool)

(assert (=> d!35081 m!130149))

(assert (=> b!147345 m!130149))

(assert (=> b!147345 m!130149))

(declare-fun m!130151 () Bool)

(assert (=> b!147345 m!130151))

(assert (=> d!34971 d!35081))

(declare-fun lt!42594 () Bool)

(declare-fun d!35083 () Bool)

(assert (=> d!35083 (= lt!42594 (isEmpty!996 (list!881 (_2!1477 (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)))))))))

(declare-fun isEmpty!998 (Conc!700) Bool)

(assert (=> d!35083 (= lt!42594 (isEmpty!998 (c!29893 (_2!1477 (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)))))))))

(assert (=> d!35083 (= (isEmpty!995 (_2!1477 (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170))))) lt!42594)))

(declare-fun bs!13302 () Bool)

(assert (= bs!13302 d!35083))

(declare-fun m!130153 () Bool)

(assert (=> bs!13302 m!130153))

(assert (=> bs!13302 m!130153))

(declare-fun m!130155 () Bool)

(assert (=> bs!13302 m!130155))

(declare-fun m!130157 () Bool)

(assert (=> bs!13302 m!130157))

(assert (=> b!146729 d!35083))

(declare-fun d!35085 () Bool)

(declare-fun e!87686 () Bool)

(assert (=> d!35085 e!87686))

(declare-fun res!67813 () Bool)

(assert (=> d!35085 (=> (not res!67813) (not e!87686))))

(declare-fun e!87685 () Bool)

(assert (=> d!35085 (= res!67813 e!87685)))

(declare-fun c!30025 () Bool)

(declare-fun lt!42648 () tuple2!2522)

(assert (=> d!35085 (= c!30025 (> (size!2197 (_1!1477 lt!42648)) 0))))

(declare-fun lexTailRecV2!77 (LexerInterface!325 List!2563 BalanceConc!1408 BalanceConc!1408 BalanceConc!1408 BalanceConc!1410) tuple2!2522)

(assert (=> d!35085 (= lt!42648 (lexTailRecV2!77 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)) (BalanceConc!1409 Empty!700) (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)) (BalanceConc!1411 Empty!701)))))

(assert (=> d!35085 (= (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170))) lt!42648)))

(declare-fun b!147369 () Bool)

(declare-fun e!87687 () Bool)

(declare-fun isEmpty!1000 (BalanceConc!1410) Bool)

(assert (=> b!147369 (= e!87687 (not (isEmpty!1000 (_1!1477 lt!42648))))))

(declare-fun b!147370 () Bool)

(declare-fun res!67812 () Bool)

(assert (=> b!147370 (=> (not res!67812) (not e!87686))))

(declare-datatypes ((tuple2!2528 0))(
  ( (tuple2!2529 (_1!1480 List!2564) (_2!1480 List!2562)) )
))
(declare-fun lexList!90 (LexerInterface!325 List!2563 List!2562) tuple2!2528)

(assert (=> b!147370 (= res!67812 (= (list!884 (_1!1477 lt!42648)) (_1!1480 (lexList!90 thiss!17480 rules!1920 (list!881 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)))))))))

(declare-fun b!147371 () Bool)

(assert (=> b!147371 (= e!87685 e!87687)))

(declare-fun res!67811 () Bool)

(declare-fun size!2204 (BalanceConc!1408) Int)

(assert (=> b!147371 (= res!67811 (< (size!2204 (_2!1477 lt!42648)) (size!2204 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)))))))

(assert (=> b!147371 (=> (not res!67811) (not e!87687))))

(declare-fun b!147372 () Bool)

(assert (=> b!147372 (= e!87685 (= (_2!1477 lt!42648) (print!86 thiss!17480 (singletonSeq!19 separatorToken!170))))))

(declare-fun b!147373 () Bool)

(assert (=> b!147373 (= e!87686 (= (list!881 (_2!1477 lt!42648)) (_2!1480 (lexList!90 thiss!17480 rules!1920 (list!881 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)))))))))

(assert (= (and d!35085 c!30025) b!147371))

(assert (= (and d!35085 (not c!30025)) b!147372))

(assert (= (and b!147371 res!67811) b!147369))

(assert (= (and d!35085 res!67813) b!147370))

(assert (= (and b!147370 res!67812) b!147373))

(declare-fun m!130219 () Bool)

(assert (=> b!147370 m!130219))

(assert (=> b!147370 m!129403))

(declare-fun m!130221 () Bool)

(assert (=> b!147370 m!130221))

(assert (=> b!147370 m!130221))

(declare-fun m!130223 () Bool)

(assert (=> b!147370 m!130223))

(declare-fun m!130225 () Bool)

(assert (=> b!147369 m!130225))

(declare-fun m!130227 () Bool)

(assert (=> d!35085 m!130227))

(assert (=> d!35085 m!129403))

(assert (=> d!35085 m!129403))

(declare-fun m!130229 () Bool)

(assert (=> d!35085 m!130229))

(declare-fun m!130231 () Bool)

(assert (=> b!147371 m!130231))

(assert (=> b!147371 m!129403))

(declare-fun m!130233 () Bool)

(assert (=> b!147371 m!130233))

(declare-fun m!130235 () Bool)

(assert (=> b!147373 m!130235))

(assert (=> b!147373 m!129403))

(assert (=> b!147373 m!130221))

(assert (=> b!147373 m!130221))

(assert (=> b!147373 m!130223))

(assert (=> b!146729 d!35085))

(declare-fun d!35095 () Bool)

(declare-fun lt!42652 () BalanceConc!1408)

(declare-fun printList!47 (LexerInterface!325 List!2564) List!2562)

(assert (=> d!35095 (= (list!881 lt!42652) (printList!47 thiss!17480 (list!884 (singletonSeq!19 separatorToken!170))))))

(assert (=> d!35095 (= lt!42652 (printTailRec!49 thiss!17480 (singletonSeq!19 separatorToken!170) 0 (BalanceConc!1409 Empty!700)))))

(assert (=> d!35095 (= (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)) lt!42652)))

(declare-fun bs!13305 () Bool)

(assert (= bs!13305 d!35095))

(declare-fun m!130265 () Bool)

(assert (=> bs!13305 m!130265))

(assert (=> bs!13305 m!129407))

(assert (=> bs!13305 m!129413))

(assert (=> bs!13305 m!129413))

(declare-fun m!130267 () Bool)

(assert (=> bs!13305 m!130267))

(assert (=> bs!13305 m!129407))

(declare-fun m!130269 () Bool)

(assert (=> bs!13305 m!130269))

(assert (=> b!146729 d!35095))

(declare-fun d!35103 () Bool)

(declare-fun e!87700 () Bool)

(assert (=> d!35103 e!87700))

(declare-fun res!67826 () Bool)

(assert (=> d!35103 (=> (not res!67826) (not e!87700))))

(declare-fun lt!42655 () BalanceConc!1410)

(assert (=> d!35103 (= res!67826 (= (list!884 lt!42655) (Cons!2554 separatorToken!170 Nil!2554)))))

(declare-fun singleton!15 (Token!622) BalanceConc!1410)

(assert (=> d!35103 (= lt!42655 (singleton!15 separatorToken!170))))

(assert (=> d!35103 (= (singletonSeq!19 separatorToken!170) lt!42655)))

(declare-fun b!147396 () Bool)

(assert (=> b!147396 (= e!87700 (isBalanced!198 (c!29895 lt!42655)))))

(assert (= (and d!35103 res!67826) b!147396))

(declare-fun m!130271 () Bool)

(assert (=> d!35103 m!130271))

(declare-fun m!130273 () Bool)

(assert (=> d!35103 m!130273))

(declare-fun m!130275 () Bool)

(assert (=> b!147396 m!130275))

(assert (=> b!146729 d!35103))

(declare-fun lt!42656 () BalanceConc!1408)

(declare-fun d!35105 () Bool)

(assert (=> d!35105 (= (list!881 lt!42656) (originalCharacters!482 (ite c!29945 call!5806 call!5810)))))

(assert (=> d!35105 (= lt!42656 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810)))) (value!16827 (ite c!29945 call!5806 call!5810))))))

(assert (=> d!35105 (= (charsOf!96 (ite c!29945 call!5806 call!5810)) lt!42656)))

(declare-fun b_lambda!2511 () Bool)

(assert (=> (not b_lambda!2511) (not d!35105)))

(declare-fun t!24315 () Bool)

(declare-fun tb!4719 () Bool)

(assert (=> (and b!147085 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810))))) t!24315) tb!4719))

(declare-fun e!87701 () Bool)

(declare-fun tp!77365 () Bool)

(declare-fun b!147397 () Bool)

(assert (=> b!147397 (= e!87701 (and (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810)))) (value!16827 (ite c!29945 call!5806 call!5810))))) tp!77365))))

(declare-fun result!7106 () Bool)

(assert (=> tb!4719 (= result!7106 (and (inv!3340 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810)))) (value!16827 (ite c!29945 call!5806 call!5810)))) e!87701))))

(assert (= tb!4719 b!147397))

(declare-fun m!130277 () Bool)

(assert (=> b!147397 m!130277))

(declare-fun m!130279 () Bool)

(assert (=> tb!4719 m!130279))

(assert (=> d!35105 t!24315))

(declare-fun b_and!8121 () Bool)

(assert (= b_and!8117 (and (=> t!24315 result!7106) b_and!8121)))

(declare-fun tb!4721 () Bool)

(declare-fun t!24317 () Bool)

(assert (=> (and b!146717 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810))))) t!24317) tb!4721))

(declare-fun result!7108 () Bool)

(assert (= result!7108 result!7106))

(assert (=> d!35105 t!24317))

(declare-fun b_and!8123 () Bool)

(assert (= b_and!8115 (and (=> t!24317 result!7108) b_and!8123)))

(declare-fun t!24319 () Bool)

(declare-fun tb!4723 () Bool)

(assert (=> (and b!146718 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810))))) t!24319) tb!4723))

(declare-fun result!7110 () Bool)

(assert (= result!7110 result!7106))

(assert (=> d!35105 t!24319))

(declare-fun b_and!8125 () Bool)

(assert (= b_and!8119 (and (=> t!24319 result!7110) b_and!8125)))

(declare-fun t!24321 () Bool)

(declare-fun tb!4725 () Bool)

(assert (=> (and b!146712 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810))))) t!24321) tb!4725))

(declare-fun result!7112 () Bool)

(assert (= result!7112 result!7106))

(assert (=> d!35105 t!24321))

(declare-fun b_and!8127 () Bool)

(assert (= b_and!8113 (and (=> t!24321 result!7112) b_and!8127)))

(declare-fun t!24323 () Bool)

(declare-fun tb!4727 () Bool)

(assert (=> (and b!147096 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810))))) t!24323) tb!4727))

(declare-fun result!7114 () Bool)

(assert (= result!7114 result!7106))

(assert (=> d!35105 t!24323))

(declare-fun b_and!8129 () Bool)

(assert (= b_and!8111 (and (=> t!24323 result!7114) b_and!8129)))

(declare-fun m!130281 () Bool)

(assert (=> d!35105 m!130281))

(declare-fun m!130283 () Bool)

(assert (=> d!35105 m!130283))

(assert (=> bm!5803 d!35105))

(declare-fun d!35107 () Bool)

(declare-fun lt!42657 () BalanceConc!1408)

(assert (=> d!35107 (= (list!881 lt!42657) (printList!47 thiss!17480 (list!884 (singletonSeq!19 (h!7951 tokens!465)))))))

(assert (=> d!35107 (= lt!42657 (printTailRec!49 thiss!17480 (singletonSeq!19 (h!7951 tokens!465)) 0 (BalanceConc!1409 Empty!700)))))

(assert (=> d!35107 (= (print!86 thiss!17480 (singletonSeq!19 (h!7951 tokens!465))) lt!42657)))

(declare-fun bs!13306 () Bool)

(assert (= bs!13306 d!35107))

(declare-fun m!130285 () Bool)

(assert (=> bs!13306 m!130285))

(assert (=> bs!13306 m!129543))

(declare-fun m!130287 () Bool)

(assert (=> bs!13306 m!130287))

(assert (=> bs!13306 m!130287))

(declare-fun m!130289 () Bool)

(assert (=> bs!13306 m!130289))

(assert (=> bs!13306 m!129543))

(assert (=> bs!13306 m!129547))

(assert (=> b!146837 d!35107))

(declare-fun d!35109 () Bool)

(declare-fun e!87702 () Bool)

(assert (=> d!35109 e!87702))

(declare-fun res!67827 () Bool)

(assert (=> d!35109 (=> (not res!67827) (not e!87702))))

(declare-fun lt!42658 () BalanceConc!1410)

(assert (=> d!35109 (= res!67827 (= (list!884 lt!42658) (Cons!2554 (h!7951 tokens!465) Nil!2554)))))

(assert (=> d!35109 (= lt!42658 (singleton!15 (h!7951 tokens!465)))))

(assert (=> d!35109 (= (singletonSeq!19 (h!7951 tokens!465)) lt!42658)))

(declare-fun b!147398 () Bool)

(assert (=> b!147398 (= e!87702 (isBalanced!198 (c!29895 lt!42658)))))

(assert (= (and d!35109 res!67827) b!147398))

(declare-fun m!130291 () Bool)

(assert (=> d!35109 m!130291))

(declare-fun m!130293 () Bool)

(assert (=> d!35109 m!130293))

(declare-fun m!130295 () Bool)

(assert (=> b!147398 m!130295))

(assert (=> b!146837 d!35109))

(declare-fun d!35111 () Bool)

(declare-fun lt!42677 () BalanceConc!1408)

(declare-fun printListTailRec!34 (LexerInterface!325 List!2564 List!2562) List!2562)

(assert (=> d!35111 (= (list!881 lt!42677) (printListTailRec!34 thiss!17480 (dropList!60 (singletonSeq!19 (h!7951 tokens!465)) 0) (list!881 (BalanceConc!1409 Empty!700))))))

(declare-fun e!87708 () BalanceConc!1408)

(assert (=> d!35111 (= lt!42677 e!87708)))

(declare-fun c!30031 () Bool)

(assert (=> d!35111 (= c!30031 (>= 0 (size!2197 (singletonSeq!19 (h!7951 tokens!465)))))))

(declare-fun e!87707 () Bool)

(assert (=> d!35111 e!87707))

(declare-fun res!67830 () Bool)

(assert (=> d!35111 (=> (not res!67830) (not e!87707))))

(assert (=> d!35111 (= res!67830 (>= 0 0))))

(assert (=> d!35111 (= (printTailRec!49 thiss!17480 (singletonSeq!19 (h!7951 tokens!465)) 0 (BalanceConc!1409 Empty!700)) lt!42677)))

(declare-fun b!147405 () Bool)

(assert (=> b!147405 (= e!87707 (<= 0 (size!2197 (singletonSeq!19 (h!7951 tokens!465)))))))

(declare-fun b!147406 () Bool)

(assert (=> b!147406 (= e!87708 (BalanceConc!1409 Empty!700))))

(declare-fun b!147407 () Bool)

(assert (=> b!147407 (= e!87708 (printTailRec!49 thiss!17480 (singletonSeq!19 (h!7951 tokens!465)) (+ 0 1) (++!544 (BalanceConc!1409 Empty!700) (charsOf!96 (apply!321 (singletonSeq!19 (h!7951 tokens!465)) 0)))))))

(declare-fun lt!42675 () List!2564)

(assert (=> b!147407 (= lt!42675 (list!884 (singletonSeq!19 (h!7951 tokens!465))))))

(declare-fun lt!42676 () Unit!1900)

(assert (=> b!147407 (= lt!42676 (lemmaDropApply!100 lt!42675 0))))

(assert (=> b!147407 (= (head!574 (drop!113 lt!42675 0)) (apply!322 lt!42675 0))))

(declare-fun lt!42678 () Unit!1900)

(assert (=> b!147407 (= lt!42678 lt!42676)))

(declare-fun lt!42673 () List!2564)

(assert (=> b!147407 (= lt!42673 (list!884 (singletonSeq!19 (h!7951 tokens!465))))))

(declare-fun lt!42674 () Unit!1900)

(assert (=> b!147407 (= lt!42674 (lemmaDropTail!92 lt!42673 0))))

(assert (=> b!147407 (= (tail!314 (drop!113 lt!42673 0)) (drop!113 lt!42673 (+ 0 1)))))

(declare-fun lt!42679 () Unit!1900)

(assert (=> b!147407 (= lt!42679 lt!42674)))

(assert (= (and d!35111 res!67830) b!147405))

(assert (= (and d!35111 c!30031) b!147406))

(assert (= (and d!35111 (not c!30031)) b!147407))

(assert (=> d!35111 m!129543))

(declare-fun m!130297 () Bool)

(assert (=> d!35111 m!130297))

(declare-fun m!130299 () Bool)

(assert (=> d!35111 m!130299))

(assert (=> d!35111 m!129543))

(declare-fun m!130301 () Bool)

(assert (=> d!35111 m!130301))

(assert (=> d!35111 m!130297))

(declare-fun m!130303 () Bool)

(assert (=> d!35111 m!130303))

(declare-fun m!130305 () Bool)

(assert (=> d!35111 m!130305))

(assert (=> d!35111 m!130303))

(assert (=> b!147405 m!129543))

(assert (=> b!147405 m!130301))

(declare-fun m!130307 () Bool)

(assert (=> b!147407 m!130307))

(declare-fun m!130309 () Bool)

(assert (=> b!147407 m!130309))

(declare-fun m!130311 () Bool)

(assert (=> b!147407 m!130311))

(declare-fun m!130313 () Bool)

(assert (=> b!147407 m!130313))

(declare-fun m!130315 () Bool)

(assert (=> b!147407 m!130315))

(assert (=> b!147407 m!129543))

(declare-fun m!130317 () Bool)

(assert (=> b!147407 m!130317))

(declare-fun m!130319 () Bool)

(assert (=> b!147407 m!130319))

(declare-fun m!130321 () Bool)

(assert (=> b!147407 m!130321))

(declare-fun m!130323 () Bool)

(assert (=> b!147407 m!130323))

(assert (=> b!147407 m!129543))

(assert (=> b!147407 m!130287))

(assert (=> b!147407 m!130311))

(declare-fun m!130325 () Bool)

(assert (=> b!147407 m!130325))

(assert (=> b!147407 m!130309))

(assert (=> b!147407 m!130317))

(assert (=> b!147407 m!129543))

(assert (=> b!147407 m!130307))

(declare-fun m!130327 () Bool)

(assert (=> b!147407 m!130327))

(declare-fun m!130329 () Bool)

(assert (=> b!147407 m!130329))

(assert (=> b!147407 m!130327))

(assert (=> b!146837 d!35111))

(declare-fun b!147490 () Bool)

(declare-fun e!87755 () Unit!1900)

(declare-fun Unit!1912 () Unit!1900)

(assert (=> b!147490 (= e!87755 Unit!1912)))

(declare-fun lt!42769 () List!2562)

(assert (=> b!147490 (= lt!42769 (++!543 call!5774 lt!42361))))

(declare-fun lt!42774 () Unit!1900)

(declare-fun lt!42778 () Token!622)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!6 (LexerInterface!325 Rule!678 List!2563 List!2562) Unit!1900)

(assert (=> b!147490 (= lt!42774 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!6 thiss!17480 (rule!946 lt!42778) rules!1920 lt!42769))))

(assert (=> b!147490 (isEmpty!997 (maxPrefixOneRule!50 thiss!17480 (rule!946 lt!42778) lt!42769))))

(declare-fun lt!42766 () Unit!1900)

(assert (=> b!147490 (= lt!42766 lt!42774)))

(declare-fun lt!42776 () List!2562)

(assert (=> b!147490 (= lt!42776 (list!881 (charsOf!96 lt!42778)))))

(declare-fun lt!42770 () Unit!1900)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!6 (LexerInterface!325 Rule!678 List!2562 List!2562) Unit!1900)

(assert (=> b!147490 (= lt!42770 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!6 thiss!17480 (rule!946 lt!42778) lt!42776 (++!543 call!5774 lt!42361)))))

(assert (=> b!147490 (not (matchR!62 (regex!439 (rule!946 lt!42778)) lt!42776))))

(declare-fun lt!42771 () Unit!1900)

(assert (=> b!147490 (= lt!42771 lt!42770)))

(assert (=> b!147490 false))

(declare-fun b!147489 () Bool)

(declare-fun e!87754 () Bool)

(declare-datatypes ((Option!225 0))(
  ( (None!224) (Some!224 (v!13591 Rule!678)) )
))
(declare-fun get!692 (Option!225) Rule!678)

(declare-fun getRuleFromTag!6 (LexerInterface!325 List!2563 String!3385) Option!225)

(assert (=> b!147489 (= e!87754 (= (rule!946 lt!42778) (get!692 (getRuleFromTag!6 thiss!17480 rules!1920 (tag!617 (rule!946 lt!42778))))))))

(declare-fun b!147491 () Bool)

(declare-fun Unit!1913 () Unit!1900)

(assert (=> b!147491 (= e!87755 Unit!1913)))

(declare-fun b!147488 () Bool)

(declare-fun res!67867 () Bool)

(assert (=> b!147488 (=> (not res!67867) (not e!87754))))

(assert (=> b!147488 (= res!67867 (matchR!62 (regex!439 (get!692 (getRuleFromTag!6 thiss!17480 rules!1920 (tag!617 (rule!946 lt!42778))))) (list!881 (charsOf!96 lt!42778))))))

(declare-fun d!35113 () Bool)

(assert (=> d!35113 (isDefined!87 (maxPrefix!101 thiss!17480 rules!1920 (++!543 call!5774 lt!42361)))))

(declare-fun lt!42768 () Unit!1900)

(assert (=> d!35113 (= lt!42768 e!87755)))

(declare-fun c!30051 () Bool)

(assert (=> d!35113 (= c!30051 (isEmpty!997 (maxPrefix!101 thiss!17480 rules!1920 (++!543 call!5774 lt!42361))))))

(declare-fun lt!42765 () Unit!1900)

(declare-fun lt!42764 () Unit!1900)

(assert (=> d!35113 (= lt!42765 lt!42764)))

(assert (=> d!35113 e!87754))

(declare-fun res!67868 () Bool)

(assert (=> d!35113 (=> (not res!67868) (not e!87754))))

(declare-fun isDefined!89 (Option!225) Bool)

(assert (=> d!35113 (= res!67868 (isDefined!89 (getRuleFromTag!6 thiss!17480 rules!1920 (tag!617 (rule!946 lt!42778)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!6 (LexerInterface!325 List!2563 List!2562 Token!622) Unit!1900)

(assert (=> d!35113 (= lt!42764 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!6 thiss!17480 rules!1920 call!5774 lt!42778))))

(declare-fun lt!42779 () Unit!1900)

(declare-fun lt!42777 () Unit!1900)

(assert (=> d!35113 (= lt!42779 lt!42777)))

(declare-fun lt!42773 () List!2562)

(assert (=> d!35113 (isPrefix!207 lt!42773 (++!543 call!5774 lt!42361))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!6 (List!2562 List!2562 List!2562) Unit!1900)

(assert (=> d!35113 (= lt!42777 (lemmaPrefixStaysPrefixWhenAddingToSuffix!6 lt!42773 call!5774 lt!42361))))

(assert (=> d!35113 (= lt!42773 (list!881 (charsOf!96 lt!42778)))))

(declare-fun lt!42763 () Unit!1900)

(declare-fun lt!42772 () Unit!1900)

(assert (=> d!35113 (= lt!42763 lt!42772)))

(declare-fun lt!42767 () List!2562)

(declare-fun lt!42775 () List!2562)

(assert (=> d!35113 (isPrefix!207 lt!42767 (++!543 lt!42767 lt!42775))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!110 (List!2562 List!2562) Unit!1900)

(assert (=> d!35113 (= lt!42772 (lemmaConcatTwoListThenFirstIsPrefix!110 lt!42767 lt!42775))))

(assert (=> d!35113 (= lt!42775 (_2!1478 (get!688 (maxPrefix!101 thiss!17480 rules!1920 call!5774))))))

(assert (=> d!35113 (= lt!42767 (list!881 (charsOf!96 lt!42778)))))

(assert (=> d!35113 (= lt!42778 (head!574 (list!884 (_1!1477 (lex!161 thiss!17480 rules!1920 (seqFromList!257 call!5774))))))))

(assert (=> d!35113 (not (isEmpty!992 rules!1920))))

(assert (=> d!35113 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!8 thiss!17480 rules!1920 call!5774 lt!42361) lt!42768)))

(assert (= (and d!35113 res!67868) b!147488))

(assert (= (and b!147488 res!67867) b!147489))

(assert (= (and d!35113 c!30051) b!147490))

(assert (= (and d!35113 (not c!30051)) b!147491))

(declare-fun m!130497 () Bool)

(assert (=> b!147490 m!130497))

(declare-fun m!130499 () Bool)

(assert (=> b!147490 m!130499))

(declare-fun m!130501 () Bool)

(assert (=> b!147490 m!130501))

(declare-fun m!130503 () Bool)

(assert (=> b!147490 m!130503))

(declare-fun m!130505 () Bool)

(assert (=> b!147490 m!130505))

(declare-fun m!130507 () Bool)

(assert (=> b!147490 m!130507))

(assert (=> b!147490 m!130497))

(declare-fun m!130509 () Bool)

(assert (=> b!147490 m!130509))

(assert (=> b!147490 m!130501))

(declare-fun m!130511 () Bool)

(assert (=> b!147490 m!130511))

(assert (=> b!147490 m!130503))

(declare-fun m!130513 () Bool)

(assert (=> b!147489 m!130513))

(assert (=> b!147489 m!130513))

(declare-fun m!130515 () Bool)

(assert (=> b!147489 m!130515))

(assert (=> b!147488 m!130513))

(assert (=> b!147488 m!130513))

(assert (=> b!147488 m!130515))

(assert (=> b!147488 m!130501))

(assert (=> b!147488 m!130511))

(assert (=> b!147488 m!130501))

(assert (=> b!147488 m!130511))

(declare-fun m!130517 () Bool)

(assert (=> b!147488 m!130517))

(assert (=> d!35113 m!130513))

(assert (=> d!35113 m!130503))

(declare-fun m!130519 () Bool)

(assert (=> d!35113 m!130519))

(declare-fun m!130521 () Bool)

(assert (=> d!35113 m!130521))

(declare-fun m!130523 () Bool)

(assert (=> d!35113 m!130523))

(declare-fun m!130525 () Bool)

(assert (=> d!35113 m!130525))

(declare-fun m!130527 () Bool)

(assert (=> d!35113 m!130527))

(declare-fun m!130529 () Bool)

(assert (=> d!35113 m!130529))

(declare-fun m!130531 () Bool)

(assert (=> d!35113 m!130531))

(assert (=> d!35113 m!130531))

(declare-fun m!130533 () Bool)

(assert (=> d!35113 m!130533))

(assert (=> d!35113 m!130501))

(assert (=> d!35113 m!130513))

(declare-fun m!130535 () Bool)

(assert (=> d!35113 m!130535))

(assert (=> d!35113 m!130519))

(declare-fun m!130537 () Bool)

(assert (=> d!35113 m!130537))

(assert (=> d!35113 m!130529))

(declare-fun m!130539 () Bool)

(assert (=> d!35113 m!130539))

(assert (=> d!35113 m!130519))

(declare-fun m!130541 () Bool)

(assert (=> d!35113 m!130541))

(assert (=> d!35113 m!130521))

(declare-fun m!130543 () Bool)

(assert (=> d!35113 m!130543))

(assert (=> d!35113 m!130523))

(assert (=> d!35113 m!129395))

(declare-fun m!130545 () Bool)

(assert (=> d!35113 m!130545))

(assert (=> d!35113 m!130503))

(declare-fun m!130547 () Bool)

(assert (=> d!35113 m!130547))

(declare-fun m!130549 () Bool)

(assert (=> d!35113 m!130549))

(assert (=> d!35113 m!130501))

(assert (=> d!35113 m!130511))

(assert (=> d!35113 m!130503))

(assert (=> b!146837 d!35113))

(declare-fun d!35141 () Bool)

(assert (=> d!35141 true))

(declare-fun order!1257 () Int)

(declare-fun lambda!3676 () Int)

(declare-fun dynLambda!879 (Int Int) Int)

(assert (=> d!35141 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!879 order!1257 lambda!3676))))

(declare-fun Forall2!93 (Int) Bool)

(assert (=> d!35141 (= (equivClasses!134 (toChars!925 (transformation!439 (h!7950 rules!1920))) (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (Forall2!93 lambda!3676))))

(declare-fun bs!13328 () Bool)

(assert (= bs!13328 d!35141))

(declare-fun m!130599 () Bool)

(assert (=> bs!13328 m!130599))

(assert (=> b!147050 d!35141))

(declare-fun d!35153 () Bool)

(declare-fun e!87764 () Bool)

(assert (=> d!35153 e!87764))

(declare-fun res!67881 () Bool)

(assert (=> d!35153 (=> (not res!67881) (not e!87764))))

(declare-fun lt!42787 () BalanceConc!1410)

(assert (=> d!35153 (= res!67881 (= (list!884 lt!42787) (Cons!2554 call!5810 Nil!2554)))))

(assert (=> d!35153 (= lt!42787 (singleton!15 call!5810))))

(assert (=> d!35153 (= (singletonSeq!19 call!5810) lt!42787)))

(declare-fun b!147508 () Bool)

(assert (=> b!147508 (= e!87764 (isBalanced!198 (c!29895 lt!42787)))))

(assert (= (and d!35153 res!67881) b!147508))

(declare-fun m!130601 () Bool)

(assert (=> d!35153 m!130601))

(declare-fun m!130603 () Bool)

(assert (=> d!35153 m!130603))

(declare-fun m!130605 () Bool)

(assert (=> b!147508 m!130605))

(assert (=> b!146921 d!35153))

(declare-fun d!35155 () Bool)

(declare-fun lt!42792 () BalanceConc!1408)

(assert (=> d!35155 (= (list!881 lt!42792) (printListTailRec!34 thiss!17480 (dropList!60 (singletonSeq!19 call!5810) 0) (list!881 (BalanceConc!1409 Empty!700))))))

(declare-fun e!87766 () BalanceConc!1408)

(assert (=> d!35155 (= lt!42792 e!87766)))

(declare-fun c!30053 () Bool)

(assert (=> d!35155 (= c!30053 (>= 0 (size!2197 (singletonSeq!19 call!5810))))))

(declare-fun e!87765 () Bool)

(assert (=> d!35155 e!87765))

(declare-fun res!67882 () Bool)

(assert (=> d!35155 (=> (not res!67882) (not e!87765))))

(assert (=> d!35155 (= res!67882 (>= 0 0))))

(assert (=> d!35155 (= (printTailRec!49 thiss!17480 (singletonSeq!19 call!5810) 0 (BalanceConc!1409 Empty!700)) lt!42792)))

(declare-fun b!147509 () Bool)

(assert (=> b!147509 (= e!87765 (<= 0 (size!2197 (singletonSeq!19 call!5810))))))

(declare-fun b!147510 () Bool)

(assert (=> b!147510 (= e!87766 (BalanceConc!1409 Empty!700))))

(declare-fun b!147511 () Bool)

(assert (=> b!147511 (= e!87766 (printTailRec!49 thiss!17480 (singletonSeq!19 call!5810) (+ 0 1) (++!544 (BalanceConc!1409 Empty!700) (charsOf!96 (apply!321 (singletonSeq!19 call!5810) 0)))))))

(declare-fun lt!42790 () List!2564)

(assert (=> b!147511 (= lt!42790 (list!884 (singletonSeq!19 call!5810)))))

(declare-fun lt!42791 () Unit!1900)

(assert (=> b!147511 (= lt!42791 (lemmaDropApply!100 lt!42790 0))))

(assert (=> b!147511 (= (head!574 (drop!113 lt!42790 0)) (apply!322 lt!42790 0))))

(declare-fun lt!42793 () Unit!1900)

(assert (=> b!147511 (= lt!42793 lt!42791)))

(declare-fun lt!42788 () List!2564)

(assert (=> b!147511 (= lt!42788 (list!884 (singletonSeq!19 call!5810)))))

(declare-fun lt!42789 () Unit!1900)

(assert (=> b!147511 (= lt!42789 (lemmaDropTail!92 lt!42788 0))))

(assert (=> b!147511 (= (tail!314 (drop!113 lt!42788 0)) (drop!113 lt!42788 (+ 0 1)))))

(declare-fun lt!42794 () Unit!1900)

(assert (=> b!147511 (= lt!42794 lt!42789)))

(assert (= (and d!35155 res!67882) b!147509))

(assert (= (and d!35155 c!30053) b!147510))

(assert (= (and d!35155 (not c!30053)) b!147511))

(assert (=> d!35155 m!129635))

(declare-fun m!130607 () Bool)

(assert (=> d!35155 m!130607))

(declare-fun m!130609 () Bool)

(assert (=> d!35155 m!130609))

(assert (=> d!35155 m!129635))

(declare-fun m!130611 () Bool)

(assert (=> d!35155 m!130611))

(assert (=> d!35155 m!130607))

(assert (=> d!35155 m!130303))

(declare-fun m!130613 () Bool)

(assert (=> d!35155 m!130613))

(assert (=> d!35155 m!130303))

(assert (=> b!147509 m!129635))

(assert (=> b!147509 m!130611))

(declare-fun m!130615 () Bool)

(assert (=> b!147511 m!130615))

(declare-fun m!130617 () Bool)

(assert (=> b!147511 m!130617))

(declare-fun m!130619 () Bool)

(assert (=> b!147511 m!130619))

(declare-fun m!130621 () Bool)

(assert (=> b!147511 m!130621))

(declare-fun m!130623 () Bool)

(assert (=> b!147511 m!130623))

(assert (=> b!147511 m!129635))

(declare-fun m!130625 () Bool)

(assert (=> b!147511 m!130625))

(declare-fun m!130627 () Bool)

(assert (=> b!147511 m!130627))

(declare-fun m!130629 () Bool)

(assert (=> b!147511 m!130629))

(declare-fun m!130631 () Bool)

(assert (=> b!147511 m!130631))

(assert (=> b!147511 m!129635))

(declare-fun m!130633 () Bool)

(assert (=> b!147511 m!130633))

(assert (=> b!147511 m!130619))

(declare-fun m!130635 () Bool)

(assert (=> b!147511 m!130635))

(assert (=> b!147511 m!130617))

(assert (=> b!147511 m!130625))

(assert (=> b!147511 m!129635))

(assert (=> b!147511 m!130615))

(declare-fun m!130637 () Bool)

(assert (=> b!147511 m!130637))

(declare-fun m!130639 () Bool)

(assert (=> b!147511 m!130639))

(assert (=> b!147511 m!130637))

(assert (=> b!146921 d!35155))

(declare-fun d!35157 () Bool)

(assert (=> d!35157 (= (list!881 lt!42438) (list!885 (c!29893 lt!42438)))))

(declare-fun bs!13329 () Bool)

(assert (= bs!13329 d!35157))

(declare-fun m!130641 () Bool)

(assert (=> bs!13329 m!130641))

(assert (=> b!146921 d!35157))

(declare-fun d!35159 () Bool)

(declare-fun lt!42799 () BalanceConc!1408)

(assert (=> d!35159 (= (list!881 lt!42799) (printList!47 thiss!17480 (list!884 (singletonSeq!19 call!5810))))))

(assert (=> d!35159 (= lt!42799 (printTailRec!49 thiss!17480 (singletonSeq!19 call!5810) 0 (BalanceConc!1409 Empty!700)))))

(assert (=> d!35159 (= (print!86 thiss!17480 (singletonSeq!19 call!5810)) lt!42799)))

(declare-fun bs!13330 () Bool)

(assert (= bs!13330 d!35159))

(declare-fun m!130643 () Bool)

(assert (=> bs!13330 m!130643))

(assert (=> bs!13330 m!129635))

(assert (=> bs!13330 m!130633))

(assert (=> bs!13330 m!130633))

(declare-fun m!130645 () Bool)

(assert (=> bs!13330 m!130645))

(assert (=> bs!13330 m!129635))

(assert (=> bs!13330 m!129637))

(assert (=> b!146921 d!35159))

(declare-fun b!147522 () Bool)

(declare-fun e!87774 () Unit!1900)

(declare-fun Unit!1914 () Unit!1900)

(assert (=> b!147522 (= e!87774 Unit!1914)))

(declare-fun lt!42806 () List!2562)

(assert (=> b!147522 (= lt!42806 (++!543 (list!881 call!5807) (list!881 lt!42438)))))

(declare-fun lt!42815 () Token!622)

(declare-fun lt!42811 () Unit!1900)

(assert (=> b!147522 (= lt!42811 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!6 thiss!17480 (rule!946 lt!42815) rules!1920 lt!42806))))

(assert (=> b!147522 (isEmpty!997 (maxPrefixOneRule!50 thiss!17480 (rule!946 lt!42815) lt!42806))))

(declare-fun lt!42803 () Unit!1900)

(assert (=> b!147522 (= lt!42803 lt!42811)))

(declare-fun lt!42813 () List!2562)

(assert (=> b!147522 (= lt!42813 (list!881 (charsOf!96 lt!42815)))))

(declare-fun lt!42807 () Unit!1900)

(assert (=> b!147522 (= lt!42807 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!6 thiss!17480 (rule!946 lt!42815) lt!42813 (++!543 (list!881 call!5807) (list!881 lt!42438))))))

(assert (=> b!147522 (not (matchR!62 (regex!439 (rule!946 lt!42815)) lt!42813))))

(declare-fun lt!42808 () Unit!1900)

(assert (=> b!147522 (= lt!42808 lt!42807)))

(assert (=> b!147522 false))

(declare-fun e!87773 () Bool)

(declare-fun b!147521 () Bool)

(assert (=> b!147521 (= e!87773 (= (rule!946 lt!42815) (get!692 (getRuleFromTag!6 thiss!17480 rules!1920 (tag!617 (rule!946 lt!42815))))))))

(declare-fun b!147523 () Bool)

(declare-fun Unit!1915 () Unit!1900)

(assert (=> b!147523 (= e!87774 Unit!1915)))

(declare-fun b!147520 () Bool)

(declare-fun res!67887 () Bool)

(assert (=> b!147520 (=> (not res!67887) (not e!87773))))

(assert (=> b!147520 (= res!67887 (matchR!62 (regex!439 (get!692 (getRuleFromTag!6 thiss!17480 rules!1920 (tag!617 (rule!946 lt!42815))))) (list!881 (charsOf!96 lt!42815))))))

(declare-fun d!35161 () Bool)

(assert (=> d!35161 (isDefined!87 (maxPrefix!101 thiss!17480 rules!1920 (++!543 (list!881 call!5807) (list!881 lt!42438))))))

(declare-fun lt!42805 () Unit!1900)

(assert (=> d!35161 (= lt!42805 e!87774)))

(declare-fun c!30056 () Bool)

(assert (=> d!35161 (= c!30056 (isEmpty!997 (maxPrefix!101 thiss!17480 rules!1920 (++!543 (list!881 call!5807) (list!881 lt!42438)))))))

(declare-fun lt!42802 () Unit!1900)

(declare-fun lt!42801 () Unit!1900)

(assert (=> d!35161 (= lt!42802 lt!42801)))

(assert (=> d!35161 e!87773))

(declare-fun res!67888 () Bool)

(assert (=> d!35161 (=> (not res!67888) (not e!87773))))

(assert (=> d!35161 (= res!67888 (isDefined!89 (getRuleFromTag!6 thiss!17480 rules!1920 (tag!617 (rule!946 lt!42815)))))))

(assert (=> d!35161 (= lt!42801 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!6 thiss!17480 rules!1920 (list!881 call!5807) lt!42815))))

(declare-fun lt!42816 () Unit!1900)

(declare-fun lt!42814 () Unit!1900)

(assert (=> d!35161 (= lt!42816 lt!42814)))

(declare-fun lt!42810 () List!2562)

(assert (=> d!35161 (isPrefix!207 lt!42810 (++!543 (list!881 call!5807) (list!881 lt!42438)))))

(assert (=> d!35161 (= lt!42814 (lemmaPrefixStaysPrefixWhenAddingToSuffix!6 lt!42810 (list!881 call!5807) (list!881 lt!42438)))))

(assert (=> d!35161 (= lt!42810 (list!881 (charsOf!96 lt!42815)))))

(declare-fun lt!42800 () Unit!1900)

(declare-fun lt!42809 () Unit!1900)

(assert (=> d!35161 (= lt!42800 lt!42809)))

(declare-fun lt!42804 () List!2562)

(declare-fun lt!42812 () List!2562)

(assert (=> d!35161 (isPrefix!207 lt!42804 (++!543 lt!42804 lt!42812))))

(assert (=> d!35161 (= lt!42809 (lemmaConcatTwoListThenFirstIsPrefix!110 lt!42804 lt!42812))))

(assert (=> d!35161 (= lt!42812 (_2!1478 (get!688 (maxPrefix!101 thiss!17480 rules!1920 (list!881 call!5807)))))))

(assert (=> d!35161 (= lt!42804 (list!881 (charsOf!96 lt!42815)))))

(assert (=> d!35161 (= lt!42815 (head!574 (list!884 (_1!1477 (lex!161 thiss!17480 rules!1920 (seqFromList!257 (list!881 call!5807)))))))))

(assert (=> d!35161 (not (isEmpty!992 rules!1920))))

(assert (=> d!35161 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!8 thiss!17480 rules!1920 (list!881 call!5807) (list!881 lt!42438)) lt!42805)))

(assert (= (and d!35161 res!67888) b!147520))

(assert (= (and b!147520 res!67887) b!147521))

(assert (= (and d!35161 c!30056) b!147522))

(assert (= (and d!35161 (not c!30056)) b!147523))

(declare-fun m!130647 () Bool)

(assert (=> b!147522 m!130647))

(declare-fun m!130649 () Bool)

(assert (=> b!147522 m!130649))

(declare-fun m!130651 () Bool)

(assert (=> b!147522 m!130651))

(declare-fun m!130653 () Bool)

(assert (=> b!147522 m!130653))

(declare-fun m!130655 () Bool)

(assert (=> b!147522 m!130655))

(declare-fun m!130657 () Bool)

(assert (=> b!147522 m!130657))

(assert (=> b!147522 m!130647))

(declare-fun m!130659 () Bool)

(assert (=> b!147522 m!130659))

(assert (=> b!147522 m!130651))

(declare-fun m!130661 () Bool)

(assert (=> b!147522 m!130661))

(assert (=> b!147522 m!129633))

(assert (=> b!147522 m!129639))

(assert (=> b!147522 m!130653))

(declare-fun m!130663 () Bool)

(assert (=> b!147521 m!130663))

(assert (=> b!147521 m!130663))

(declare-fun m!130665 () Bool)

(assert (=> b!147521 m!130665))

(assert (=> b!147520 m!130663))

(assert (=> b!147520 m!130663))

(assert (=> b!147520 m!130665))

(assert (=> b!147520 m!130651))

(assert (=> b!147520 m!130661))

(assert (=> b!147520 m!130651))

(assert (=> b!147520 m!130661))

(declare-fun m!130667 () Bool)

(assert (=> b!147520 m!130667))

(assert (=> d!35161 m!130663))

(assert (=> d!35161 m!130653))

(declare-fun m!130669 () Bool)

(assert (=> d!35161 m!130669))

(declare-fun m!130671 () Bool)

(assert (=> d!35161 m!130671))

(declare-fun m!130673 () Bool)

(assert (=> d!35161 m!130673))

(declare-fun m!130675 () Bool)

(assert (=> d!35161 m!130675))

(assert (=> d!35161 m!129633))

(declare-fun m!130677 () Bool)

(assert (=> d!35161 m!130677))

(assert (=> d!35161 m!129633))

(declare-fun m!130679 () Bool)

(assert (=> d!35161 m!130679))

(declare-fun m!130681 () Bool)

(assert (=> d!35161 m!130681))

(assert (=> d!35161 m!130681))

(declare-fun m!130683 () Bool)

(assert (=> d!35161 m!130683))

(assert (=> d!35161 m!130651))

(assert (=> d!35161 m!130663))

(declare-fun m!130685 () Bool)

(assert (=> d!35161 m!130685))

(assert (=> d!35161 m!130669))

(declare-fun m!130689 () Bool)

(assert (=> d!35161 m!130689))

(assert (=> d!35161 m!130679))

(declare-fun m!130691 () Bool)

(assert (=> d!35161 m!130691))

(assert (=> d!35161 m!130669))

(declare-fun m!130695 () Bool)

(assert (=> d!35161 m!130695))

(assert (=> d!35161 m!130671))

(declare-fun m!130701 () Bool)

(assert (=> d!35161 m!130701))

(assert (=> d!35161 m!129633))

(assert (=> d!35161 m!130673))

(assert (=> d!35161 m!129395))

(declare-fun m!130705 () Bool)

(assert (=> d!35161 m!130705))

(assert (=> d!35161 m!130653))

(declare-fun m!130709 () Bool)

(assert (=> d!35161 m!130709))

(assert (=> d!35161 m!129633))

(assert (=> d!35161 m!129639))

(declare-fun m!130713 () Bool)

(assert (=> d!35161 m!130713))

(assert (=> d!35161 m!130651))

(assert (=> d!35161 m!130661))

(assert (=> d!35161 m!129633))

(assert (=> d!35161 m!129639))

(assert (=> d!35161 m!130653))

(assert (=> b!146921 d!35161))

(declare-fun d!35165 () Bool)

(assert (=> d!35165 (= (list!881 call!5807) (list!885 (c!29893 call!5807)))))

(declare-fun bs!13331 () Bool)

(assert (= bs!13331 d!35165))

(declare-fun m!130715 () Bool)

(assert (=> bs!13331 m!130715))

(assert (=> b!146921 d!35165))

(assert (=> bm!5768 d!35077))

(assert (=> d!34913 d!35103))

(declare-fun d!35167 () Bool)

(assert (=> d!35167 (= (list!884 (_1!1477 (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170))))) (list!888 (c!29895 (_1!1477 (lex!161 thiss!17480 rules!1920 (print!86 thiss!17480 (singletonSeq!19 separatorToken!170)))))))))

(declare-fun bs!13332 () Bool)

(assert (= bs!13332 d!35167))

(declare-fun m!130717 () Bool)

(assert (=> bs!13332 m!130717))

(assert (=> d!34913 d!35167))

(assert (=> d!34913 d!35085))

(declare-fun d!35169 () Bool)

(assert (=> d!35169 (= (list!884 (singletonSeq!19 separatorToken!170)) (list!888 (c!29895 (singletonSeq!19 separatorToken!170))))))

(declare-fun bs!13333 () Bool)

(assert (= bs!13333 d!35169))

(declare-fun m!130719 () Bool)

(assert (=> bs!13333 m!130719))

(assert (=> d!34913 d!35169))

(declare-fun d!35171 () Bool)

(declare-fun lt!42820 () Int)

(assert (=> d!35171 (= lt!42820 (size!2201 (list!884 (_1!1477 lt!42318))))))

(assert (=> d!35171 (= lt!42820 (size!2202 (c!29895 (_1!1477 lt!42318))))))

(assert (=> d!35171 (= (size!2197 (_1!1477 lt!42318)) lt!42820)))

(declare-fun bs!13334 () Bool)

(assert (= bs!13334 d!35171))

(declare-fun m!130721 () Bool)

(assert (=> bs!13334 m!130721))

(assert (=> bs!13334 m!130721))

(declare-fun m!130723 () Bool)

(assert (=> bs!13334 m!130723))

(declare-fun m!130725 () Bool)

(assert (=> bs!13334 m!130725))

(assert (=> d!34913 d!35171))

(assert (=> d!34913 d!35095))

(assert (=> d!34913 d!34999))

(declare-fun d!35173 () Bool)

(declare-fun isBalanced!200 (Conc!700) Bool)

(assert (=> d!35173 (= (inv!3340 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))) (isBalanced!200 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))))))

(declare-fun bs!13335 () Bool)

(assert (= bs!13335 d!35173))

(declare-fun m!130735 () Bool)

(assert (=> bs!13335 m!130735))

(assert (=> tb!4689 d!35173))

(declare-fun d!35177 () Bool)

(declare-fun c!30058 () Bool)

(assert (=> d!35177 (= c!30058 ((_ is Node!700) (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))))))

(declare-fun e!87779 () Bool)

(assert (=> d!35177 (= (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))) e!87779)))

(declare-fun b!147529 () Bool)

(assert (=> b!147529 (= e!87779 (inv!3341 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))))))

(declare-fun b!147530 () Bool)

(declare-fun e!87780 () Bool)

(assert (=> b!147530 (= e!87779 e!87780)))

(declare-fun res!67891 () Bool)

(assert (=> b!147530 (= res!67891 (not ((_ is Leaf!1259) (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))))))))

(assert (=> b!147530 (=> res!67891 e!87780)))

(declare-fun b!147531 () Bool)

(assert (=> b!147531 (= e!87780 (inv!3342 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))))))

(assert (= (and d!35177 c!30058) b!147529))

(assert (= (and d!35177 (not c!30058)) b!147530))

(assert (= (and b!147530 (not res!67891)) b!147531))

(declare-fun m!130739 () Bool)

(assert (=> b!147529 m!130739))

(declare-fun m!130741 () Bool)

(assert (=> b!147531 m!130741))

(assert (=> b!147043 d!35177))

(declare-fun bs!13338 () Bool)

(declare-fun d!35181 () Bool)

(assert (= bs!13338 (and d!35181 d!35141)))

(declare-fun lambda!3678 () Int)

(assert (=> bs!13338 (= (= (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (= lambda!3678 lambda!3676))))

(assert (=> d!35181 true))

(assert (=> d!35181 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465))))) (dynLambda!879 order!1257 lambda!3678))))

(assert (=> d!35181 (= (equivClasses!134 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465))))) (Forall2!93 lambda!3678))))

(declare-fun bs!13339 () Bool)

(assert (= bs!13339 d!35181))

(declare-fun m!130743 () Bool)

(assert (=> bs!13339 m!130743))

(assert (=> b!147026 d!35181))

(declare-fun d!35183 () Bool)

(declare-fun lt!42827 () Token!622)

(assert (=> d!35183 (= lt!42827 (apply!322 (list!884 (_1!1477 lt!42318)) 0))))

(declare-fun apply!325 (Conc!701 Int) Token!622)

(assert (=> d!35183 (= lt!42827 (apply!325 (c!29895 (_1!1477 lt!42318)) 0))))

(declare-fun e!87789 () Bool)

(assert (=> d!35183 e!87789))

(declare-fun res!67898 () Bool)

(assert (=> d!35183 (=> (not res!67898) (not e!87789))))

(assert (=> d!35183 (= res!67898 (<= 0 0))))

(assert (=> d!35183 (= (apply!321 (_1!1477 lt!42318) 0) lt!42827)))

(declare-fun b!147545 () Bool)

(assert (=> b!147545 (= e!87789 (< 0 (size!2197 (_1!1477 lt!42318))))))

(assert (= (and d!35183 res!67898) b!147545))

(assert (=> d!35183 m!130721))

(assert (=> d!35183 m!130721))

(declare-fun m!130777 () Bool)

(assert (=> d!35183 m!130777))

(declare-fun m!130779 () Bool)

(assert (=> d!35183 m!130779))

(assert (=> b!147545 m!129411))

(assert (=> b!146727 d!35183))

(declare-fun d!35197 () Bool)

(declare-fun e!87795 () Bool)

(assert (=> d!35197 e!87795))

(declare-fun res!67912 () Bool)

(assert (=> d!35197 (=> (not res!67912) (not e!87795))))

(declare-fun appendAssocInst!13 (Conc!700 Conc!700) Bool)

(assert (=> d!35197 (= res!67912 (appendAssocInst!13 (c!29893 call!5808) (c!29893 lt!42438)))))

(declare-fun lt!42835 () BalanceConc!1408)

(declare-fun ++!546 (Conc!700 Conc!700) Conc!700)

(assert (=> d!35197 (= lt!42835 (BalanceConc!1409 (++!546 (c!29893 call!5808) (c!29893 lt!42438))))))

(assert (=> d!35197 (= (++!544 call!5808 lt!42438) lt!42835)))

(declare-fun b!147560 () Bool)

(declare-fun res!67909 () Bool)

(assert (=> b!147560 (=> (not res!67909) (not e!87795))))

(assert (=> b!147560 (= res!67909 (isBalanced!200 (++!546 (c!29893 call!5808) (c!29893 lt!42438))))))

(declare-fun b!147563 () Bool)

(assert (=> b!147563 (= e!87795 (= (list!881 lt!42835) (++!543 (list!881 call!5808) (list!881 lt!42438))))))

(declare-fun b!147562 () Bool)

(declare-fun res!67911 () Bool)

(assert (=> b!147562 (=> (not res!67911) (not e!87795))))

(declare-fun height!72 (Conc!700) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!147562 (= res!67911 (>= (height!72 (++!546 (c!29893 call!5808) (c!29893 lt!42438))) (max!0 (height!72 (c!29893 call!5808)) (height!72 (c!29893 lt!42438)))))))

(declare-fun b!147561 () Bool)

(declare-fun res!67910 () Bool)

(assert (=> b!147561 (=> (not res!67910) (not e!87795))))

(assert (=> b!147561 (= res!67910 (<= (height!72 (++!546 (c!29893 call!5808) (c!29893 lt!42438))) (+ (max!0 (height!72 (c!29893 call!5808)) (height!72 (c!29893 lt!42438))) 1)))))

(assert (= (and d!35197 res!67912) b!147560))

(assert (= (and b!147560 res!67909) b!147561))

(assert (= (and b!147561 res!67910) b!147562))

(assert (= (and b!147562 res!67911) b!147563))

(declare-fun m!130797 () Bool)

(assert (=> b!147563 m!130797))

(declare-fun m!130799 () Bool)

(assert (=> b!147563 m!130799))

(assert (=> b!147563 m!129639))

(assert (=> b!147563 m!130799))

(assert (=> b!147563 m!129639))

(declare-fun m!130801 () Bool)

(assert (=> b!147563 m!130801))

(declare-fun m!130803 () Bool)

(assert (=> b!147560 m!130803))

(assert (=> b!147560 m!130803))

(declare-fun m!130805 () Bool)

(assert (=> b!147560 m!130805))

(assert (=> b!147562 m!130803))

(declare-fun m!130807 () Bool)

(assert (=> b!147562 m!130807))

(declare-fun m!130809 () Bool)

(assert (=> b!147562 m!130809))

(declare-fun m!130811 () Bool)

(assert (=> b!147562 m!130811))

(declare-fun m!130813 () Bool)

(assert (=> b!147562 m!130813))

(assert (=> b!147562 m!130809))

(assert (=> b!147562 m!130803))

(assert (=> b!147562 m!130811))

(assert (=> b!147561 m!130803))

(assert (=> b!147561 m!130807))

(assert (=> b!147561 m!130809))

(assert (=> b!147561 m!130811))

(assert (=> b!147561 m!130813))

(assert (=> b!147561 m!130809))

(assert (=> b!147561 m!130803))

(assert (=> b!147561 m!130811))

(declare-fun m!130815 () Bool)

(assert (=> d!35197 m!130815))

(assert (=> d!35197 m!130803))

(assert (=> b!146922 d!35197))

(declare-fun d!35211 () Bool)

(declare-fun charsToInt!0 (List!2561) (_ BitVec 32))

(assert (=> d!35211 (= (inv!16 (value!16827 (h!7951 tokens!465))) (= (charsToInt!0 (text!3674 (value!16827 (h!7951 tokens!465)))) (value!16818 (value!16827 (h!7951 tokens!465)))))))

(declare-fun bs!13347 () Bool)

(assert (= bs!13347 d!35211))

(declare-fun m!130817 () Bool)

(assert (=> bs!13347 m!130817))

(assert (=> b!146978 d!35211))

(declare-fun d!35213 () Bool)

(assert (=> d!35213 (= (inv!3332 (tag!617 (rule!946 (h!7951 (t!24234 tokens!465))))) (= (mod (str.len (value!16826 (tag!617 (rule!946 (h!7951 (t!24234 tokens!465)))))) 2) 0))))

(assert (=> b!147084 d!35213))

(declare-fun d!35215 () Bool)

(declare-fun res!67913 () Bool)

(declare-fun e!87796 () Bool)

(assert (=> d!35215 (=> (not res!67913) (not e!87796))))

(assert (=> d!35215 (= res!67913 (semiInverseModEq!151 (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toValue!1066 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))))))

(assert (=> d!35215 (= (inv!3335 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) e!87796)))

(declare-fun b!147564 () Bool)

(assert (=> b!147564 (= e!87796 (equivClasses!134 (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toValue!1066 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))))))

(assert (= (and d!35215 res!67913) b!147564))

(declare-fun m!130819 () Bool)

(assert (=> d!35215 m!130819))

(declare-fun m!130821 () Bool)

(assert (=> b!147564 m!130821))

(assert (=> b!147084 d!35215))

(declare-fun d!35217 () Bool)

(declare-fun charsToBigInt!1 (List!2561) Int)

(assert (=> d!35217 (= (inv!17 (value!16827 (h!7951 tokens!465))) (= (charsToBigInt!1 (text!3675 (value!16827 (h!7951 tokens!465)))) (value!16819 (value!16827 (h!7951 tokens!465)))))))

(declare-fun bs!13348 () Bool)

(assert (= bs!13348 d!35217))

(declare-fun m!130823 () Bool)

(assert (=> bs!13348 m!130823))

(assert (=> b!146980 d!35217))

(declare-fun d!35219 () Bool)

(declare-fun lt!42836 () Token!622)

(assert (=> d!35219 (= lt!42836 (apply!322 (list!884 lt!42310) 0))))

(assert (=> d!35219 (= lt!42836 (apply!325 (c!29895 lt!42310) 0))))

(declare-fun e!87797 () Bool)

(assert (=> d!35219 e!87797))

(declare-fun res!67914 () Bool)

(assert (=> d!35219 (=> (not res!67914) (not e!87797))))

(assert (=> d!35219 (= res!67914 (<= 0 0))))

(assert (=> d!35219 (= (apply!321 lt!42310 0) lt!42836)))

(declare-fun b!147565 () Bool)

(assert (=> b!147565 (= e!87797 (< 0 (size!2197 lt!42310)))))

(assert (= (and d!35219 res!67914) b!147565))

(assert (=> d!35219 m!129659))

(assert (=> d!35219 m!129659))

(declare-fun m!130825 () Bool)

(assert (=> d!35219 m!130825))

(declare-fun m!130827 () Bool)

(assert (=> d!35219 m!130827))

(assert (=> b!147565 m!129399))

(assert (=> b!146924 d!35219))

(declare-fun d!35221 () Bool)

(assert (=> d!35221 (= (isEmpty!996 (originalCharacters!482 (h!7951 tokens!465))) ((_ is Nil!2552) (originalCharacters!482 (h!7951 tokens!465))))))

(assert (=> d!34985 d!35221))

(declare-fun d!35223 () Bool)

(declare-fun res!67915 () Bool)

(declare-fun e!87798 () Bool)

(assert (=> d!35223 (=> (not res!67915) (not e!87798))))

(assert (=> d!35223 (= res!67915 (not (isEmpty!996 (originalCharacters!482 (h!7951 (t!24234 tokens!465))))))))

(assert (=> d!35223 (= (inv!3336 (h!7951 (t!24234 tokens!465))) e!87798)))

(declare-fun b!147566 () Bool)

(declare-fun res!67916 () Bool)

(assert (=> b!147566 (=> (not res!67916) (not e!87798))))

(assert (=> b!147566 (= res!67916 (= (originalCharacters!482 (h!7951 (t!24234 tokens!465))) (list!881 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (value!16827 (h!7951 (t!24234 tokens!465)))))))))

(declare-fun b!147567 () Bool)

(assert (=> b!147567 (= e!87798 (= (size!2196 (h!7951 (t!24234 tokens!465))) (size!2203 (originalCharacters!482 (h!7951 (t!24234 tokens!465))))))))

(assert (= (and d!35223 res!67915) b!147566))

(assert (= (and b!147566 res!67916) b!147567))

(declare-fun b_lambda!2527 () Bool)

(assert (=> (not b_lambda!2527) (not b!147566)))

(declare-fun t!24350 () Bool)

(declare-fun tb!4749 () Bool)

(assert (=> (and b!147096 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) t!24350) tb!4749))

(declare-fun b!147568 () Bool)

(declare-fun e!87799 () Bool)

(declare-fun tp!77368 () Bool)

(assert (=> b!147568 (= e!87799 (and (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (value!16827 (h!7951 (t!24234 tokens!465)))))) tp!77368))))

(declare-fun result!7136 () Bool)

(assert (=> tb!4749 (= result!7136 (and (inv!3340 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (value!16827 (h!7951 (t!24234 tokens!465))))) e!87799))))

(assert (= tb!4749 b!147568))

(declare-fun m!130829 () Bool)

(assert (=> b!147568 m!130829))

(declare-fun m!130831 () Bool)

(assert (=> tb!4749 m!130831))

(assert (=> b!147566 t!24350))

(declare-fun b_and!8171 () Bool)

(assert (= b_and!8129 (and (=> t!24350 result!7136) b_and!8171)))

(declare-fun t!24352 () Bool)

(declare-fun tb!4751 () Bool)

(assert (=> (and b!147085 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) t!24352) tb!4751))

(declare-fun result!7138 () Bool)

(assert (= result!7138 result!7136))

(assert (=> b!147566 t!24352))

(declare-fun b_and!8173 () Bool)

(assert (= b_and!8121 (and (=> t!24352 result!7138) b_and!8173)))

(declare-fun tb!4753 () Bool)

(declare-fun t!24354 () Bool)

(assert (=> (and b!146718 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) t!24354) tb!4753))

(declare-fun result!7140 () Bool)

(assert (= result!7140 result!7136))

(assert (=> b!147566 t!24354))

(declare-fun b_and!8175 () Bool)

(assert (= b_and!8125 (and (=> t!24354 result!7140) b_and!8175)))

(declare-fun t!24356 () Bool)

(declare-fun tb!4755 () Bool)

(assert (=> (and b!146712 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) t!24356) tb!4755))

(declare-fun result!7142 () Bool)

(assert (= result!7142 result!7136))

(assert (=> b!147566 t!24356))

(declare-fun b_and!8177 () Bool)

(assert (= b_and!8127 (and (=> t!24356 result!7142) b_and!8177)))

(declare-fun tb!4757 () Bool)

(declare-fun t!24358 () Bool)

(assert (=> (and b!146717 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) t!24358) tb!4757))

(declare-fun result!7144 () Bool)

(assert (= result!7144 result!7136))

(assert (=> b!147566 t!24358))

(declare-fun b_and!8179 () Bool)

(assert (= b_and!8123 (and (=> t!24358 result!7144) b_and!8179)))

(declare-fun m!130833 () Bool)

(assert (=> d!35223 m!130833))

(declare-fun m!130835 () Bool)

(assert (=> b!147566 m!130835))

(assert (=> b!147566 m!130835))

(declare-fun m!130837 () Bool)

(assert (=> b!147566 m!130837))

(declare-fun m!130839 () Bool)

(assert (=> b!147567 m!130839))

(assert (=> b!147082 d!35223))

(declare-fun b!147577 () Bool)

(declare-fun e!87806 () Bool)

(declare-fun e!87807 () Bool)

(assert (=> b!147577 (= e!87806 e!87807)))

(declare-fun res!67921 () Bool)

(assert (=> b!147577 (= res!67921 (not ((_ is Cons!2553) rules!1920)))))

(assert (=> b!147577 (=> res!67921 e!87807)))

(declare-fun b!147578 () Bool)

(declare-fun e!87808 () Bool)

(assert (=> b!147578 (= e!87806 e!87808)))

(declare-fun res!67922 () Bool)

(declare-fun rulesUseDisjointChars!8 (Rule!678 Rule!678) Bool)

(assert (=> b!147578 (= res!67922 (rulesUseDisjointChars!8 (h!7950 rules!1920) (h!7950 rules!1920)))))

(assert (=> b!147578 (=> (not res!67922) (not e!87808))))

(declare-fun b!147579 () Bool)

(declare-fun call!5845 () Bool)

(assert (=> b!147579 (= e!87808 call!5845)))

(declare-fun d!35225 () Bool)

(declare-fun c!30068 () Bool)

(assert (=> d!35225 (= c!30068 (and ((_ is Cons!2553) rules!1920) (not (= (isSeparator!439 (h!7950 rules!1920)) (isSeparator!439 (h!7950 rules!1920))))))))

(assert (=> d!35225 (= (ruleDisjointCharsFromAllFromOtherType!10 (h!7950 rules!1920) rules!1920) e!87806)))

(declare-fun bm!5840 () Bool)

(assert (=> bm!5840 (= call!5845 (ruleDisjointCharsFromAllFromOtherType!10 (h!7950 rules!1920) (t!24233 rules!1920)))))

(declare-fun b!147580 () Bool)

(assert (=> b!147580 (= e!87807 call!5845)))

(assert (= (and d!35225 c!30068) b!147578))

(assert (= (and d!35225 (not c!30068)) b!147577))

(assert (= (and b!147578 res!67922) b!147579))

(assert (= (and b!147577 (not res!67921)) b!147580))

(assert (= (or b!147579 b!147580) bm!5840))

(declare-fun m!130841 () Bool)

(assert (=> b!147578 m!130841))

(declare-fun m!130843 () Bool)

(assert (=> bm!5840 m!130843))

(assert (=> b!147048 d!35225))

(declare-fun bs!13349 () Bool)

(declare-fun d!35227 () Bool)

(assert (= bs!13349 (and d!35227 d!35141)))

(declare-fun lambda!3682 () Int)

(assert (=> bs!13349 (= (= (toValue!1066 (transformation!439 (rule!946 separatorToken!170))) (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (= lambda!3682 lambda!3676))))

(declare-fun bs!13350 () Bool)

(assert (= bs!13350 (and d!35227 d!35181)))

(assert (=> bs!13350 (= (= (toValue!1066 (transformation!439 (rule!946 separatorToken!170))) (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465))))) (= lambda!3682 lambda!3678))))

(assert (=> d!35227 true))

(assert (=> d!35227 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (rule!946 separatorToken!170)))) (dynLambda!879 order!1257 lambda!3682))))

(assert (=> d!35227 (= (equivClasses!134 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toValue!1066 (transformation!439 (rule!946 separatorToken!170)))) (Forall2!93 lambda!3682))))

(declare-fun bs!13351 () Bool)

(assert (= bs!13351 d!35227))

(declare-fun m!130845 () Bool)

(assert (=> bs!13351 m!130845))

(assert (=> b!147051 d!35227))

(declare-fun d!35229 () Bool)

(declare-fun charsToBigInt!0 (List!2561 Int) Int)

(assert (=> d!35229 (= (inv!15 (value!16827 separatorToken!170)) (= (charsToBigInt!0 (text!3676 (value!16827 separatorToken!170)) 0) (value!16822 (value!16827 separatorToken!170))))))

(declare-fun bs!13352 () Bool)

(assert (= bs!13352 d!35229))

(declare-fun m!130847 () Bool)

(assert (=> bs!13352 m!130847))

(assert (=> b!147022 d!35229))

(declare-fun d!35231 () Bool)

(declare-fun res!67923 () Bool)

(declare-fun e!87809 () Bool)

(assert (=> d!35231 (=> res!67923 e!87809)))

(assert (=> d!35231 (= res!67923 ((_ is Nil!2554) (list!884 lt!42310)))))

(assert (=> d!35231 (= (forall!410 (list!884 lt!42310) lambda!3660) e!87809)))

(declare-fun b!147581 () Bool)

(declare-fun e!87810 () Bool)

(assert (=> b!147581 (= e!87809 e!87810)))

(declare-fun res!67924 () Bool)

(assert (=> b!147581 (=> (not res!67924) (not e!87810))))

(assert (=> b!147581 (= res!67924 (dynLambda!876 lambda!3660 (h!7951 (list!884 lt!42310))))))

(declare-fun b!147582 () Bool)

(assert (=> b!147582 (= e!87810 (forall!410 (t!24234 (list!884 lt!42310)) lambda!3660))))

(assert (= (and d!35231 (not res!67923)) b!147581))

(assert (= (and b!147581 res!67924) b!147582))

(declare-fun b_lambda!2529 () Bool)

(assert (=> (not b_lambda!2529) (not b!147581)))

(declare-fun m!130849 () Bool)

(assert (=> b!147581 m!130849))

(declare-fun m!130851 () Bool)

(assert (=> b!147582 m!130851))

(assert (=> d!34967 d!35231))

(assert (=> d!34967 d!35059))

(declare-fun d!35233 () Bool)

(declare-fun lt!42837 () Bool)

(assert (=> d!35233 (= lt!42837 (forall!410 (list!884 lt!42310) lambda!3660))))

(assert (=> d!35233 (= lt!42837 (forall!413 (c!29895 lt!42310) lambda!3660))))

(assert (=> d!35233 (= (forall!411 lt!42310 lambda!3660) lt!42837)))

(declare-fun bs!13353 () Bool)

(assert (= bs!13353 d!35233))

(assert (=> bs!13353 m!129659))

(assert (=> bs!13353 m!129659))

(assert (=> bs!13353 m!129717))

(declare-fun m!130853 () Bool)

(assert (=> bs!13353 m!130853))

(assert (=> d!34967 d!35233))

(assert (=> d!34967 d!34999))

(declare-fun d!35235 () Bool)

(assert (=> d!35235 (= (list!881 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))) (list!885 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))))))

(declare-fun bs!13354 () Bool)

(assert (= bs!13354 d!35235))

(declare-fun m!130855 () Bool)

(assert (=> bs!13354 m!130855))

(assert (=> b!147041 d!35235))

(declare-fun d!35237 () Bool)

(declare-fun res!67925 () Bool)

(declare-fun e!87811 () Bool)

(assert (=> d!35237 (=> res!67925 e!87811)))

(assert (=> d!35237 (= res!67925 ((_ is Nil!2554) (list!884 lt!42310)))))

(assert (=> d!35237 (= (forall!410 (list!884 lt!42310) lambda!3632) e!87811)))

(declare-fun b!147583 () Bool)

(declare-fun e!87812 () Bool)

(assert (=> b!147583 (= e!87811 e!87812)))

(declare-fun res!67926 () Bool)

(assert (=> b!147583 (=> (not res!67926) (not e!87812))))

(assert (=> b!147583 (= res!67926 (dynLambda!876 lambda!3632 (h!7951 (list!884 lt!42310))))))

(declare-fun b!147584 () Bool)

(assert (=> b!147584 (= e!87812 (forall!410 (t!24234 (list!884 lt!42310)) lambda!3632))))

(assert (= (and d!35237 (not res!67925)) b!147583))

(assert (= (and b!147583 res!67926) b!147584))

(declare-fun b_lambda!2531 () Bool)

(assert (=> (not b_lambda!2531) (not b!147583)))

(declare-fun m!130857 () Bool)

(assert (=> b!147583 m!130857))

(declare-fun m!130859 () Bool)

(assert (=> b!147584 m!130859))

(assert (=> d!34987 d!35237))

(assert (=> d!34987 d!35059))

(declare-fun b!147596 () Bool)

(declare-fun e!87820 () Bool)

(assert (=> b!147596 (= e!87820 (forall!413 (right!2257 (c!29895 lt!42310)) lambda!3632))))

(declare-fun b!147595 () Bool)

(declare-fun e!87821 () Bool)

(assert (=> b!147595 (= e!87821 e!87820)))

(declare-fun lt!42842 () Unit!1900)

(declare-fun lemmaForallConcat!7 (List!2564 List!2564 Int) Unit!1900)

(assert (=> b!147595 (= lt!42842 (lemmaForallConcat!7 (list!888 (left!1927 (c!29895 lt!42310))) (list!888 (right!2257 (c!29895 lt!42310))) lambda!3632))))

(declare-fun res!67931 () Bool)

(assert (=> b!147595 (= res!67931 (forall!413 (left!1927 (c!29895 lt!42310)) lambda!3632))))

(assert (=> b!147595 (=> (not res!67931) (not e!87820))))

(declare-fun b!147594 () Bool)

(declare-fun forall!414 (IArray!1403 Int) Bool)

(assert (=> b!147594 (= e!87821 (forall!414 (xs!3296 (c!29895 lt!42310)) lambda!3632))))

(declare-fun d!35239 () Bool)

(declare-fun lt!42843 () Bool)

(assert (=> d!35239 (= lt!42843 (forall!410 (list!888 (c!29895 lt!42310)) lambda!3632))))

(declare-fun e!87819 () Bool)

(assert (=> d!35239 (= lt!42843 e!87819)))

(declare-fun res!67932 () Bool)

(assert (=> d!35239 (=> res!67932 e!87819)))

(assert (=> d!35239 (= res!67932 ((_ is Empty!701) (c!29895 lt!42310)))))

(assert (=> d!35239 (= (forall!413 (c!29895 lt!42310) lambda!3632) lt!42843)))

(declare-fun b!147593 () Bool)

(assert (=> b!147593 (= e!87819 e!87821)))

(declare-fun c!30071 () Bool)

(assert (=> b!147593 (= c!30071 ((_ is Leaf!1260) (c!29895 lt!42310)))))

(assert (= (and d!35239 (not res!67932)) b!147593))

(assert (= (and b!147593 c!30071) b!147594))

(assert (= (and b!147593 (not c!30071)) b!147595))

(assert (= (and b!147595 res!67931) b!147596))

(declare-fun m!130861 () Bool)

(assert (=> b!147596 m!130861))

(declare-fun m!130863 () Bool)

(assert (=> b!147595 m!130863))

(declare-fun m!130865 () Bool)

(assert (=> b!147595 m!130865))

(assert (=> b!147595 m!130863))

(assert (=> b!147595 m!130865))

(declare-fun m!130867 () Bool)

(assert (=> b!147595 m!130867))

(declare-fun m!130869 () Bool)

(assert (=> b!147595 m!130869))

(declare-fun m!130871 () Bool)

(assert (=> b!147594 m!130871))

(assert (=> d!35239 m!130017))

(assert (=> d!35239 m!130017))

(declare-fun m!130873 () Bool)

(assert (=> d!35239 m!130873))

(assert (=> d!34987 d!35239))

(declare-fun d!35241 () Bool)

(declare-fun e!87822 () Bool)

(assert (=> d!35241 e!87822))

(declare-fun res!67934 () Bool)

(assert (=> d!35241 (=> (not res!67934) (not e!87822))))

(declare-fun lt!42844 () List!2562)

(assert (=> d!35241 (= res!67934 (= (content!355 lt!42844) ((_ map or) (content!355 call!5775) (content!355 (ite c!29918 lt!42361 call!5774)))))))

(declare-fun e!87823 () List!2562)

(assert (=> d!35241 (= lt!42844 e!87823)))

(declare-fun c!30072 () Bool)

(assert (=> d!35241 (= c!30072 ((_ is Nil!2552) call!5775))))

(assert (=> d!35241 (= (++!543 call!5775 (ite c!29918 lt!42361 call!5774)) lt!42844)))

(declare-fun b!147599 () Bool)

(declare-fun res!67933 () Bool)

(assert (=> b!147599 (=> (not res!67933) (not e!87822))))

(assert (=> b!147599 (= res!67933 (= (size!2203 lt!42844) (+ (size!2203 call!5775) (size!2203 (ite c!29918 lt!42361 call!5774)))))))

(declare-fun b!147600 () Bool)

(assert (=> b!147600 (= e!87822 (or (not (= (ite c!29918 lt!42361 call!5774) Nil!2552)) (= lt!42844 call!5775)))))

(declare-fun b!147598 () Bool)

(assert (=> b!147598 (= e!87823 (Cons!2552 (h!7949 call!5775) (++!543 (t!24232 call!5775) (ite c!29918 lt!42361 call!5774))))))

(declare-fun b!147597 () Bool)

(assert (=> b!147597 (= e!87823 (ite c!29918 lt!42361 call!5774))))

(assert (= (and d!35241 c!30072) b!147597))

(assert (= (and d!35241 (not c!30072)) b!147598))

(assert (= (and d!35241 res!67934) b!147599))

(assert (= (and b!147599 res!67933) b!147600))

(declare-fun m!130875 () Bool)

(assert (=> d!35241 m!130875))

(declare-fun m!130877 () Bool)

(assert (=> d!35241 m!130877))

(declare-fun m!130879 () Bool)

(assert (=> d!35241 m!130879))

(declare-fun m!130881 () Bool)

(assert (=> b!147599 m!130881))

(declare-fun m!130883 () Bool)

(assert (=> b!147599 m!130883))

(declare-fun m!130885 () Bool)

(assert (=> b!147599 m!130885))

(declare-fun m!130887 () Bool)

(assert (=> b!147598 m!130887))

(assert (=> bm!5767 d!35241))

(declare-fun d!35243 () Bool)

(assert (=> d!35243 (= (inv!17 (value!16827 separatorToken!170)) (= (charsToBigInt!1 (text!3675 (value!16827 separatorToken!170))) (value!16819 (value!16827 separatorToken!170))))))

(declare-fun bs!13355 () Bool)

(assert (= bs!13355 d!35243))

(declare-fun m!130889 () Bool)

(assert (=> bs!13355 m!130889))

(assert (=> b!147023 d!35243))

(declare-fun d!35245 () Bool)

(declare-fun e!87824 () Bool)

(assert (=> d!35245 e!87824))

(declare-fun res!67938 () Bool)

(assert (=> d!35245 (=> (not res!67938) (not e!87824))))

(assert (=> d!35245 (= res!67938 (appendAssocInst!13 (c!29893 (charsOf!96 (apply!321 lt!42310 0))) (c!29893 lt!42438)))))

(declare-fun lt!42845 () BalanceConc!1408)

(assert (=> d!35245 (= lt!42845 (BalanceConc!1409 (++!546 (c!29893 (charsOf!96 (apply!321 lt!42310 0))) (c!29893 lt!42438))))))

(assert (=> d!35245 (= (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438) lt!42845)))

(declare-fun b!147601 () Bool)

(declare-fun res!67935 () Bool)

(assert (=> b!147601 (=> (not res!67935) (not e!87824))))

(assert (=> b!147601 (= res!67935 (isBalanced!200 (++!546 (c!29893 (charsOf!96 (apply!321 lt!42310 0))) (c!29893 lt!42438))))))

(declare-fun b!147604 () Bool)

(assert (=> b!147604 (= e!87824 (= (list!881 lt!42845) (++!543 (list!881 (charsOf!96 (apply!321 lt!42310 0))) (list!881 lt!42438))))))

(declare-fun b!147603 () Bool)

(declare-fun res!67937 () Bool)

(assert (=> b!147603 (=> (not res!67937) (not e!87824))))

(assert (=> b!147603 (= res!67937 (>= (height!72 (++!546 (c!29893 (charsOf!96 (apply!321 lt!42310 0))) (c!29893 lt!42438))) (max!0 (height!72 (c!29893 (charsOf!96 (apply!321 lt!42310 0)))) (height!72 (c!29893 lt!42438)))))))

(declare-fun b!147602 () Bool)

(declare-fun res!67936 () Bool)

(assert (=> b!147602 (=> (not res!67936) (not e!87824))))

(assert (=> b!147602 (= res!67936 (<= (height!72 (++!546 (c!29893 (charsOf!96 (apply!321 lt!42310 0))) (c!29893 lt!42438))) (+ (max!0 (height!72 (c!29893 (charsOf!96 (apply!321 lt!42310 0)))) (height!72 (c!29893 lt!42438))) 1)))))

(assert (= (and d!35245 res!67938) b!147601))

(assert (= (and b!147601 res!67935) b!147602))

(assert (= (and b!147602 res!67936) b!147603))

(assert (= (and b!147603 res!67937) b!147604))

(declare-fun m!130891 () Bool)

(assert (=> b!147604 m!130891))

(assert (=> b!147604 m!129657))

(declare-fun m!130893 () Bool)

(assert (=> b!147604 m!130893))

(assert (=> b!147604 m!129639))

(assert (=> b!147604 m!130893))

(assert (=> b!147604 m!129639))

(declare-fun m!130895 () Bool)

(assert (=> b!147604 m!130895))

(declare-fun m!130897 () Bool)

(assert (=> b!147601 m!130897))

(assert (=> b!147601 m!130897))

(declare-fun m!130899 () Bool)

(assert (=> b!147601 m!130899))

(assert (=> b!147603 m!130897))

(declare-fun m!130901 () Bool)

(assert (=> b!147603 m!130901))

(declare-fun m!130903 () Bool)

(assert (=> b!147603 m!130903))

(assert (=> b!147603 m!130811))

(declare-fun m!130905 () Bool)

(assert (=> b!147603 m!130905))

(assert (=> b!147603 m!130903))

(assert (=> b!147603 m!130897))

(assert (=> b!147603 m!130811))

(assert (=> b!147602 m!130897))

(assert (=> b!147602 m!130901))

(assert (=> b!147602 m!130903))

(assert (=> b!147602 m!130811))

(assert (=> b!147602 m!130905))

(assert (=> b!147602 m!130903))

(assert (=> b!147602 m!130897))

(assert (=> b!147602 m!130811))

(declare-fun m!130907 () Bool)

(assert (=> d!35245 m!130907))

(assert (=> d!35245 m!130897))

(assert (=> b!146918 d!35245))

(declare-fun bs!13356 () Bool)

(declare-fun d!35247 () Bool)

(assert (= bs!13356 (and d!35247 b!146918)))

(declare-fun lambda!3683 () Int)

(assert (=> bs!13356 (not (= lambda!3683 lambda!3655))))

(declare-fun bs!13357 () Bool)

(assert (= bs!13357 (and d!35247 b!147316)))

(assert (=> bs!13357 (not (= lambda!3683 lambda!3666))))

(declare-fun bs!13358 () Bool)

(assert (= bs!13358 (and d!35247 d!34967)))

(assert (=> bs!13358 (not (= lambda!3683 lambda!3660))))

(declare-fun bs!13359 () Bool)

(assert (= bs!13359 (and d!35247 d!35043)))

(assert (=> bs!13359 (not (= lambda!3683 lambda!3665))))

(declare-fun bs!13360 () Bool)

(assert (= bs!13360 (and d!35247 b!146831)))

(assert (=> bs!13360 (not (= lambda!3683 lambda!3642))))

(declare-fun bs!13361 () Bool)

(assert (= bs!13361 (and d!35247 b!146702)))

(assert (=> bs!13361 (= lambda!3683 lambda!3632)))

(declare-fun bs!13362 () Bool)

(assert (= bs!13362 (and d!35247 d!34949)))

(assert (=> bs!13362 (= lambda!3683 lambda!3654)))

(declare-fun bs!13363 () Bool)

(declare-fun b!147606 () Bool)

(assert (= bs!13363 (and b!147606 b!146918)))

(declare-fun lambda!3684 () Int)

(assert (=> bs!13363 (= lambda!3684 lambda!3655)))

(declare-fun bs!13364 () Bool)

(assert (= bs!13364 (and b!147606 b!147316)))

(assert (=> bs!13364 (= lambda!3684 lambda!3666)))

(declare-fun bs!13365 () Bool)

(assert (= bs!13365 (and b!147606 d!34967)))

(assert (=> bs!13365 (= lambda!3684 lambda!3660)))

(declare-fun bs!13366 () Bool)

(assert (= bs!13366 (and b!147606 d!35043)))

(assert (=> bs!13366 (= lambda!3684 lambda!3665)))

(declare-fun bs!13367 () Bool)

(assert (= bs!13367 (and b!147606 b!146831)))

(assert (=> bs!13367 (= lambda!3684 lambda!3642)))

(declare-fun bs!13368 () Bool)

(assert (= bs!13368 (and b!147606 d!35247)))

(assert (=> bs!13368 (not (= lambda!3684 lambda!3683))))

(declare-fun bs!13369 () Bool)

(assert (= bs!13369 (and b!147606 b!146702)))

(assert (=> bs!13369 (not (= lambda!3684 lambda!3632))))

(declare-fun bs!13370 () Bool)

(assert (= bs!13370 (and b!147606 d!34949)))

(assert (=> bs!13370 (not (= lambda!3684 lambda!3654))))

(declare-fun b!147616 () Bool)

(declare-fun e!87833 () Bool)

(assert (=> b!147616 (= e!87833 true)))

(declare-fun b!147615 () Bool)

(declare-fun e!87832 () Bool)

(assert (=> b!147615 (= e!87832 e!87833)))

(declare-fun b!147614 () Bool)

(declare-fun e!87831 () Bool)

(assert (=> b!147614 (= e!87831 e!87832)))

(assert (=> b!147606 e!87831))

(assert (= b!147615 b!147616))

(assert (= b!147614 b!147615))

(assert (= (and b!147606 ((_ is Cons!2553) rules!1920)) b!147614))

(assert (=> b!147616 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3684))))

(assert (=> b!147616 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3684))))

(assert (=> b!147606 true))

(declare-fun b!147605 () Bool)

(declare-fun c!30075 () Bool)

(declare-fun e!87830 () Bool)

(assert (=> b!147605 (= c!30075 e!87830)))

(declare-fun res!67939 () Bool)

(assert (=> b!147605 (=> (not res!67939) (not e!87830))))

(declare-fun lt!42857 () Option!223)

(assert (=> b!147605 (= res!67939 ((_ is Some!222) lt!42857))))

(declare-fun e!87827 () BalanceConc!1408)

(declare-fun e!87825 () BalanceConc!1408)

(assert (=> b!147605 (= e!87827 e!87825)))

(declare-fun e!87826 () BalanceConc!1408)

(assert (=> b!147606 (= e!87826 e!87827)))

(declare-fun lt!42854 () List!2564)

(assert (=> b!147606 (= lt!42854 (list!884 lt!42310))))

(declare-fun lt!42855 () Unit!1900)

(assert (=> b!147606 (= lt!42855 (lemmaDropApply!100 lt!42854 (+ 0 1)))))

(assert (=> b!147606 (= (head!574 (drop!113 lt!42854 (+ 0 1))) (apply!322 lt!42854 (+ 0 1)))))

(declare-fun lt!42859 () Unit!1900)

(assert (=> b!147606 (= lt!42859 lt!42855)))

(declare-fun lt!42849 () List!2564)

(assert (=> b!147606 (= lt!42849 (list!884 lt!42310))))

(declare-fun lt!42851 () Unit!1900)

(assert (=> b!147606 (= lt!42851 (lemmaDropTail!92 lt!42849 (+ 0 1)))))

(assert (=> b!147606 (= (tail!314 (drop!113 lt!42849 (+ 0 1))) (drop!113 lt!42849 (+ 0 1 1)))))

(declare-fun lt!42847 () Unit!1900)

(assert (=> b!147606 (= lt!42847 lt!42851)))

(declare-fun lt!42852 () Unit!1900)

(assert (=> b!147606 (= lt!42852 (forallContained!44 (list!884 lt!42310) lambda!3684 (apply!321 lt!42310 (+ 0 1))))))

(declare-fun lt!42846 () BalanceConc!1408)

(assert (=> b!147606 (= lt!42846 (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!147606 (= lt!42857 (maxPrefixZipperSequence!60 thiss!17480 rules!1920 (++!544 (charsOf!96 (apply!321 lt!42310 (+ 0 1))) lt!42846)))))

(declare-fun res!67941 () Bool)

(assert (=> b!147606 (= res!67941 ((_ is Some!222) lt!42857))))

(declare-fun e!87829 () Bool)

(assert (=> b!147606 (=> (not res!67941) (not e!87829))))

(declare-fun c!30074 () Bool)

(assert (=> b!147606 (= c!30074 e!87829)))

(declare-fun b!147607 () Bool)

(declare-fun e!87828 () Bool)

(assert (=> b!147607 (= e!87828 (<= (+ 0 1) (size!2197 lt!42310)))))

(declare-fun b!147609 () Bool)

(assert (=> b!147609 (= e!87825 (BalanceConc!1409 Empty!700))))

(declare-fun call!5850 () Token!622)

(assert (=> b!147609 (= (print!86 thiss!17480 (singletonSeq!19 call!5850)) (printTailRec!49 thiss!17480 (singletonSeq!19 call!5850) 0 (BalanceConc!1409 Empty!700)))))

(declare-fun lt!42848 () Unit!1900)

(declare-fun Unit!1920 () Unit!1900)

(assert (=> b!147609 (= lt!42848 Unit!1920)))

(declare-fun lt!42858 () Unit!1900)

(declare-fun call!5847 () BalanceConc!1408)

(assert (=> b!147609 (= lt!42858 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!8 thiss!17480 rules!1920 (list!881 call!5847) (list!881 lt!42846)))))

(assert (=> b!147609 false))

(declare-fun lt!42856 () Unit!1900)

(declare-fun Unit!1921 () Unit!1900)

(assert (=> b!147609 (= lt!42856 Unit!1921)))

(declare-fun bm!5841 () Bool)

(assert (=> bm!5841 (= call!5847 (charsOf!96 (ite c!30075 separatorToken!170 call!5850)))))

(declare-fun b!147610 () Bool)

(declare-fun call!5848 () BalanceConc!1408)

(assert (=> b!147610 (= e!87825 (++!544 call!5848 lt!42846))))

(declare-fun call!5849 () BalanceConc!1408)

(declare-fun bm!5842 () Bool)

(assert (=> bm!5842 (= call!5848 (++!544 call!5849 (ite c!30074 lt!42846 call!5847)))))

(declare-fun call!5846 () Token!622)

(declare-fun bm!5843 () Bool)

(assert (=> bm!5843 (= call!5849 (charsOf!96 (ite c!30074 call!5846 call!5850)))))

(declare-fun bm!5844 () Bool)

(assert (=> bm!5844 (= call!5850 call!5846)))

(declare-fun lt!42853 () BalanceConc!1408)

(assert (=> d!35247 (= (list!881 lt!42853) (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 (dropList!60 lt!42310 (+ 0 1)) separatorToken!170))))

(assert (=> d!35247 (= lt!42853 e!87826)))

(declare-fun c!30073 () Bool)

(assert (=> d!35247 (= c!30073 (>= (+ 0 1) (size!2197 lt!42310)))))

(declare-fun lt!42850 () Unit!1900)

(assert (=> d!35247 (= lt!42850 (lemmaContentSubsetPreservesForall!4 (list!884 lt!42310) (dropList!60 lt!42310 (+ 0 1)) lambda!3683))))

(assert (=> d!35247 e!87828))

(declare-fun res!67940 () Bool)

(assert (=> d!35247 (=> (not res!67940) (not e!87828))))

(assert (=> d!35247 (= res!67940 (>= (+ 0 1) 0))))

(assert (=> d!35247 (= (printWithSeparatorTokenWhenNeededRec!8 thiss!17480 rules!1920 lt!42310 separatorToken!170 (+ 0 1)) lt!42853)))

(declare-fun b!147608 () Bool)

(assert (=> b!147608 (= e!87827 call!5848)))

(declare-fun b!147611 () Bool)

(assert (=> b!147611 (= e!87826 (BalanceConc!1409 Empty!700))))

(declare-fun b!147612 () Bool)

(assert (=> b!147612 (= e!87829 (= (_1!1479 (v!13585 lt!42857)) (apply!321 lt!42310 (+ 0 1))))))

(declare-fun bm!5845 () Bool)

(assert (=> bm!5845 (= call!5846 (apply!321 lt!42310 (+ 0 1)))))

(declare-fun b!147613 () Bool)

(assert (=> b!147613 (= e!87830 (not (= (_1!1479 (v!13585 lt!42857)) call!5846)))))

(assert (= (and d!35247 res!67940) b!147607))

(assert (= (and d!35247 c!30073) b!147611))

(assert (= (and d!35247 (not c!30073)) b!147606))

(assert (= (and b!147606 res!67941) b!147612))

(assert (= (and b!147606 c!30074) b!147608))

(assert (= (and b!147606 (not c!30074)) b!147605))

(assert (= (and b!147605 res!67939) b!147613))

(assert (= (and b!147605 c!30075) b!147610))

(assert (= (and b!147605 (not c!30075)) b!147609))

(assert (= (or b!147610 b!147609) bm!5844))

(assert (= (or b!147610 b!147609) bm!5841))

(assert (= (or b!147608 bm!5844 b!147613) bm!5845))

(assert (= (or b!147608 b!147610) bm!5843))

(assert (= (or b!147608 b!147610) bm!5842))

(declare-fun m!130909 () Bool)

(assert (=> bm!5842 m!130909))

(declare-fun m!130911 () Bool)

(assert (=> bm!5841 m!130911))

(declare-fun m!130913 () Bool)

(assert (=> b!147609 m!130913))

(declare-fun m!130915 () Bool)

(assert (=> b!147609 m!130915))

(declare-fun m!130917 () Bool)

(assert (=> b!147609 m!130917))

(declare-fun m!130919 () Bool)

(assert (=> b!147609 m!130919))

(assert (=> b!147609 m!130915))

(declare-fun m!130921 () Bool)

(assert (=> b!147609 m!130921))

(assert (=> b!147609 m!130913))

(assert (=> b!147609 m!130919))

(declare-fun m!130923 () Bool)

(assert (=> b!147609 m!130923))

(assert (=> b!147609 m!130915))

(declare-fun m!130925 () Bool)

(assert (=> b!147612 m!130925))

(assert (=> b!147607 m!129399))

(declare-fun m!130927 () Bool)

(assert (=> b!147610 m!130927))

(declare-fun m!130929 () Bool)

(assert (=> b!147606 m!130929))

(declare-fun m!130931 () Bool)

(assert (=> b!147606 m!130931))

(declare-fun m!130933 () Bool)

(assert (=> b!147606 m!130933))

(declare-fun m!130935 () Bool)

(assert (=> b!147606 m!130935))

(assert (=> b!147606 m!130925))

(declare-fun m!130937 () Bool)

(assert (=> b!147606 m!130937))

(assert (=> b!147606 m!129659))

(assert (=> b!147606 m!130925))

(declare-fun m!130939 () Bool)

(assert (=> b!147606 m!130939))

(assert (=> b!147606 m!130929))

(declare-fun m!130941 () Bool)

(assert (=> b!147606 m!130941))

(declare-fun m!130943 () Bool)

(assert (=> b!147606 m!130943))

(declare-fun m!130945 () Bool)

(assert (=> b!147606 m!130945))

(assert (=> b!147606 m!130933))

(declare-fun m!130947 () Bool)

(assert (=> b!147606 m!130947))

(assert (=> b!147606 m!129659))

(assert (=> b!147606 m!130937))

(assert (=> b!147606 m!130943))

(assert (=> b!147606 m!130925))

(declare-fun m!130949 () Bool)

(assert (=> b!147606 m!130949))

(declare-fun m!130951 () Bool)

(assert (=> b!147606 m!130951))

(declare-fun m!130953 () Bool)

(assert (=> b!147606 m!130953))

(assert (=> bm!5845 m!130925))

(declare-fun m!130955 () Bool)

(assert (=> bm!5843 m!130955))

(declare-fun m!130957 () Bool)

(assert (=> d!35247 m!130957))

(declare-fun m!130959 () Bool)

(assert (=> d!35247 m!130959))

(assert (=> d!35247 m!130959))

(declare-fun m!130961 () Bool)

(assert (=> d!35247 m!130961))

(assert (=> d!35247 m!129659))

(assert (=> d!35247 m!130959))

(declare-fun m!130963 () Bool)

(assert (=> d!35247 m!130963))

(assert (=> d!35247 m!129399))

(assert (=> d!35247 m!129659))

(assert (=> b!146918 d!35247))

(declare-fun d!35249 () Bool)

(assert (=> d!35249 (= (head!574 (drop!113 lt!42446 0)) (apply!322 lt!42446 0))))

(declare-fun lt!42862 () Unit!1900)

(declare-fun choose!1733 (List!2564 Int) Unit!1900)

(assert (=> d!35249 (= lt!42862 (choose!1733 lt!42446 0))))

(declare-fun e!87836 () Bool)

(assert (=> d!35249 e!87836))

(declare-fun res!67944 () Bool)

(assert (=> d!35249 (=> (not res!67944) (not e!87836))))

(assert (=> d!35249 (= res!67944 (>= 0 0))))

(assert (=> d!35249 (= (lemmaDropApply!100 lt!42446 0) lt!42862)))

(declare-fun b!147619 () Bool)

(assert (=> b!147619 (= e!87836 (< 0 (size!2201 lt!42446)))))

(assert (= (and d!35249 res!67944) b!147619))

(assert (=> d!35249 m!129649))

(assert (=> d!35249 m!129649))

(assert (=> d!35249 m!129663))

(assert (=> d!35249 m!129671))

(declare-fun m!130965 () Bool)

(assert (=> d!35249 m!130965))

(declare-fun m!130967 () Bool)

(assert (=> b!147619 m!130967))

(assert (=> b!146918 d!35249))

(declare-fun d!35251 () Bool)

(assert (=> d!35251 (= (head!574 (drop!113 lt!42446 0)) (h!7951 (drop!113 lt!42446 0)))))

(assert (=> b!146918 d!35251))

(declare-fun b!147638 () Bool)

(declare-fun e!87849 () List!2564)

(declare-fun e!87848 () List!2564)

(assert (=> b!147638 (= e!87849 e!87848)))

(declare-fun c!30084 () Bool)

(assert (=> b!147638 (= c!30084 (<= 0 0))))

(declare-fun b!147639 () Bool)

(assert (=> b!147639 (= e!87848 (drop!113 (t!24234 lt!42441) (- 0 1)))))

(declare-fun b!147640 () Bool)

(assert (=> b!147640 (= e!87849 Nil!2554)))

(declare-fun b!147641 () Bool)

(declare-fun e!87847 () Int)

(declare-fun call!5853 () Int)

(assert (=> b!147641 (= e!87847 (- call!5853 0))))

(declare-fun bm!5848 () Bool)

(assert (=> bm!5848 (= call!5853 (size!2201 lt!42441))))

(declare-fun b!147642 () Bool)

(declare-fun e!87851 () Int)

(assert (=> b!147642 (= e!87851 call!5853)))

(declare-fun d!35253 () Bool)

(declare-fun e!87850 () Bool)

(assert (=> d!35253 e!87850))

(declare-fun res!67947 () Bool)

(assert (=> d!35253 (=> (not res!67947) (not e!87850))))

(declare-fun lt!42865 () List!2564)

(declare-fun content!357 (List!2564) (InoxSet Token!622))

(assert (=> d!35253 (= res!67947 (= ((_ map implies) (content!357 lt!42865) (content!357 lt!42441)) ((as const (InoxSet Token!622)) true)))))

(assert (=> d!35253 (= lt!42865 e!87849)))

(declare-fun c!30086 () Bool)

(assert (=> d!35253 (= c!30086 ((_ is Nil!2554) lt!42441))))

(assert (=> d!35253 (= (drop!113 lt!42441 0) lt!42865)))

(declare-fun b!147643 () Bool)

(assert (=> b!147643 (= e!87851 e!87847)))

(declare-fun c!30085 () Bool)

(assert (=> b!147643 (= c!30085 (>= 0 call!5853))))

(declare-fun b!147644 () Bool)

(assert (=> b!147644 (= e!87848 lt!42441)))

(declare-fun b!147645 () Bool)

(assert (=> b!147645 (= e!87847 0)))

(declare-fun b!147646 () Bool)

(assert (=> b!147646 (= e!87850 (= (size!2201 lt!42865) e!87851))))

(declare-fun c!30087 () Bool)

(assert (=> b!147646 (= c!30087 (<= 0 0))))

(assert (= (and d!35253 c!30086) b!147640))

(assert (= (and d!35253 (not c!30086)) b!147638))

(assert (= (and b!147638 c!30084) b!147644))

(assert (= (and b!147638 (not c!30084)) b!147639))

(assert (= (and d!35253 res!67947) b!147646))

(assert (= (and b!147646 c!30087) b!147642))

(assert (= (and b!147646 (not c!30087)) b!147643))

(assert (= (and b!147643 c!30085) b!147645))

(assert (= (and b!147643 (not c!30085)) b!147641))

(assert (= (or b!147642 b!147643 b!147641) bm!5848))

(declare-fun m!130969 () Bool)

(assert (=> b!147639 m!130969))

(declare-fun m!130971 () Bool)

(assert (=> bm!5848 m!130971))

(declare-fun m!130973 () Bool)

(assert (=> d!35253 m!130973))

(declare-fun m!130975 () Bool)

(assert (=> d!35253 m!130975))

(declare-fun m!130977 () Bool)

(assert (=> b!147646 m!130977))

(assert (=> b!146918 d!35253))

(declare-fun d!35255 () Bool)

(assert (=> d!35255 (dynLambda!876 lambda!3655 (apply!321 lt!42310 0))))

(declare-fun lt!42866 () Unit!1900)

(assert (=> d!35255 (= lt!42866 (choose!1732 (list!884 lt!42310) lambda!3655 (apply!321 lt!42310 0)))))

(declare-fun e!87852 () Bool)

(assert (=> d!35255 e!87852))

(declare-fun res!67948 () Bool)

(assert (=> d!35255 (=> (not res!67948) (not e!87852))))

(assert (=> d!35255 (= res!67948 (forall!410 (list!884 lt!42310) lambda!3655))))

(assert (=> d!35255 (= (forallContained!44 (list!884 lt!42310) lambda!3655 (apply!321 lt!42310 0)) lt!42866)))

(declare-fun b!147647 () Bool)

(assert (=> b!147647 (= e!87852 (contains!406 (list!884 lt!42310) (apply!321 lt!42310 0)))))

(assert (= (and d!35255 res!67948) b!147647))

(declare-fun b_lambda!2533 () Bool)

(assert (=> (not b_lambda!2533) (not d!35255)))

(assert (=> d!35255 m!129645))

(declare-fun m!130979 () Bool)

(assert (=> d!35255 m!130979))

(assert (=> d!35255 m!129659))

(assert (=> d!35255 m!129645))

(declare-fun m!130981 () Bool)

(assert (=> d!35255 m!130981))

(assert (=> d!35255 m!129659))

(declare-fun m!130983 () Bool)

(assert (=> d!35255 m!130983))

(assert (=> b!147647 m!129659))

(assert (=> b!147647 m!129645))

(declare-fun m!130985 () Bool)

(assert (=> b!147647 m!130985))

(assert (=> b!146918 d!35255))

(declare-fun d!35257 () Bool)

(declare-fun lt!42869 () Token!622)

(assert (=> d!35257 (contains!406 lt!42446 lt!42869)))

(declare-fun e!87857 () Token!622)

(assert (=> d!35257 (= lt!42869 e!87857)))

(declare-fun c!30090 () Bool)

(assert (=> d!35257 (= c!30090 (= 0 0))))

(declare-fun e!87858 () Bool)

(assert (=> d!35257 e!87858))

(declare-fun res!67951 () Bool)

(assert (=> d!35257 (=> (not res!67951) (not e!87858))))

(assert (=> d!35257 (= res!67951 (<= 0 0))))

(assert (=> d!35257 (= (apply!322 lt!42446 0) lt!42869)))

(declare-fun b!147654 () Bool)

(assert (=> b!147654 (= e!87858 (< 0 (size!2201 lt!42446)))))

(declare-fun b!147655 () Bool)

(assert (=> b!147655 (= e!87857 (head!574 lt!42446))))

(declare-fun b!147656 () Bool)

(assert (=> b!147656 (= e!87857 (apply!322 (tail!314 lt!42446) (- 0 1)))))

(assert (= (and d!35257 res!67951) b!147654))

(assert (= (and d!35257 c!30090) b!147655))

(assert (= (and d!35257 (not c!30090)) b!147656))

(declare-fun m!130987 () Bool)

(assert (=> d!35257 m!130987))

(assert (=> b!147654 m!130967))

(declare-fun m!130989 () Bool)

(assert (=> b!147655 m!130989))

(declare-fun m!130991 () Bool)

(assert (=> b!147656 m!130991))

(assert (=> b!147656 m!130991))

(declare-fun m!130993 () Bool)

(assert (=> b!147656 m!130993))

(assert (=> b!146918 d!35257))

(declare-fun d!35259 () Bool)

(assert (=> d!35259 (= (tail!314 (drop!113 lt!42441 0)) (drop!113 lt!42441 (+ 0 1)))))

(declare-fun lt!42872 () Unit!1900)

(declare-fun choose!1734 (List!2564 Int) Unit!1900)

(assert (=> d!35259 (= lt!42872 (choose!1734 lt!42441 0))))

(declare-fun e!87861 () Bool)

(assert (=> d!35259 e!87861))

(declare-fun res!67954 () Bool)

(assert (=> d!35259 (=> (not res!67954) (not e!87861))))

(assert (=> d!35259 (= res!67954 (>= 0 0))))

(assert (=> d!35259 (= (lemmaDropTail!92 lt!42441 0) lt!42872)))

(declare-fun b!147659 () Bool)

(assert (=> b!147659 (= e!87861 (< 0 (size!2201 lt!42441)))))

(assert (= (and d!35259 res!67954) b!147659))

(assert (=> d!35259 m!129653))

(assert (=> d!35259 m!129653))

(assert (=> d!35259 m!129655))

(assert (=> d!35259 m!129673))

(declare-fun m!130995 () Bool)

(assert (=> d!35259 m!130995))

(assert (=> b!147659 m!130971))

(assert (=> b!146918 d!35259))

(declare-fun b!147660 () Bool)

(declare-fun e!87864 () List!2564)

(declare-fun e!87863 () List!2564)

(assert (=> b!147660 (= e!87864 e!87863)))

(declare-fun c!30091 () Bool)

(assert (=> b!147660 (= c!30091 (<= 0 0))))

(declare-fun b!147661 () Bool)

(assert (=> b!147661 (= e!87863 (drop!113 (t!24234 lt!42446) (- 0 1)))))

(declare-fun b!147662 () Bool)

(assert (=> b!147662 (= e!87864 Nil!2554)))

(declare-fun b!147663 () Bool)

(declare-fun e!87862 () Int)

(declare-fun call!5854 () Int)

(assert (=> b!147663 (= e!87862 (- call!5854 0))))

(declare-fun bm!5849 () Bool)

(assert (=> bm!5849 (= call!5854 (size!2201 lt!42446))))

(declare-fun b!147664 () Bool)

(declare-fun e!87866 () Int)

(assert (=> b!147664 (= e!87866 call!5854)))

(declare-fun d!35261 () Bool)

(declare-fun e!87865 () Bool)

(assert (=> d!35261 e!87865))

(declare-fun res!67955 () Bool)

(assert (=> d!35261 (=> (not res!67955) (not e!87865))))

(declare-fun lt!42873 () List!2564)

(assert (=> d!35261 (= res!67955 (= ((_ map implies) (content!357 lt!42873) (content!357 lt!42446)) ((as const (InoxSet Token!622)) true)))))

(assert (=> d!35261 (= lt!42873 e!87864)))

(declare-fun c!30093 () Bool)

(assert (=> d!35261 (= c!30093 ((_ is Nil!2554) lt!42446))))

(assert (=> d!35261 (= (drop!113 lt!42446 0) lt!42873)))

(declare-fun b!147665 () Bool)

(assert (=> b!147665 (= e!87866 e!87862)))

(declare-fun c!30092 () Bool)

(assert (=> b!147665 (= c!30092 (>= 0 call!5854))))

(declare-fun b!147666 () Bool)

(assert (=> b!147666 (= e!87863 lt!42446)))

(declare-fun b!147667 () Bool)

(assert (=> b!147667 (= e!87862 0)))

(declare-fun b!147668 () Bool)

(assert (=> b!147668 (= e!87865 (= (size!2201 lt!42873) e!87866))))

(declare-fun c!30094 () Bool)

(assert (=> b!147668 (= c!30094 (<= 0 0))))

(assert (= (and d!35261 c!30093) b!147662))

(assert (= (and d!35261 (not c!30093)) b!147660))

(assert (= (and b!147660 c!30091) b!147666))

(assert (= (and b!147660 (not c!30091)) b!147661))

(assert (= (and d!35261 res!67955) b!147668))

(assert (= (and b!147668 c!30094) b!147664))

(assert (= (and b!147668 (not c!30094)) b!147665))

(assert (= (and b!147665 c!30092) b!147667))

(assert (= (and b!147665 (not c!30092)) b!147663))

(assert (= (or b!147664 b!147665 b!147663) bm!5849))

(declare-fun m!130997 () Bool)

(assert (=> b!147661 m!130997))

(assert (=> bm!5849 m!130967))

(declare-fun m!130999 () Bool)

(assert (=> d!35261 m!130999))

(declare-fun m!131001 () Bool)

(assert (=> d!35261 m!131001))

(declare-fun m!131003 () Bool)

(assert (=> b!147668 m!131003))

(assert (=> b!146918 d!35261))

(declare-fun b!147669 () Bool)

(declare-fun e!87869 () List!2564)

(declare-fun e!87868 () List!2564)

(assert (=> b!147669 (= e!87869 e!87868)))

(declare-fun c!30095 () Bool)

(assert (=> b!147669 (= c!30095 (<= (+ 0 1) 0))))

(declare-fun b!147670 () Bool)

(assert (=> b!147670 (= e!87868 (drop!113 (t!24234 lt!42441) (- (+ 0 1) 1)))))

(declare-fun b!147671 () Bool)

(assert (=> b!147671 (= e!87869 Nil!2554)))

(declare-fun b!147672 () Bool)

(declare-fun e!87867 () Int)

(declare-fun call!5855 () Int)

(assert (=> b!147672 (= e!87867 (- call!5855 (+ 0 1)))))

(declare-fun bm!5850 () Bool)

(assert (=> bm!5850 (= call!5855 (size!2201 lt!42441))))

(declare-fun b!147673 () Bool)

(declare-fun e!87871 () Int)

(assert (=> b!147673 (= e!87871 call!5855)))

(declare-fun d!35263 () Bool)

(declare-fun e!87870 () Bool)

(assert (=> d!35263 e!87870))

(declare-fun res!67956 () Bool)

(assert (=> d!35263 (=> (not res!67956) (not e!87870))))

(declare-fun lt!42874 () List!2564)

(assert (=> d!35263 (= res!67956 (= ((_ map implies) (content!357 lt!42874) (content!357 lt!42441)) ((as const (InoxSet Token!622)) true)))))

(assert (=> d!35263 (= lt!42874 e!87869)))

(declare-fun c!30097 () Bool)

(assert (=> d!35263 (= c!30097 ((_ is Nil!2554) lt!42441))))

(assert (=> d!35263 (= (drop!113 lt!42441 (+ 0 1)) lt!42874)))

(declare-fun b!147674 () Bool)

(assert (=> b!147674 (= e!87871 e!87867)))

(declare-fun c!30096 () Bool)

(assert (=> b!147674 (= c!30096 (>= (+ 0 1) call!5855))))

(declare-fun b!147675 () Bool)

(assert (=> b!147675 (= e!87868 lt!42441)))

(declare-fun b!147676 () Bool)

(assert (=> b!147676 (= e!87867 0)))

(declare-fun b!147677 () Bool)

(assert (=> b!147677 (= e!87870 (= (size!2201 lt!42874) e!87871))))

(declare-fun c!30098 () Bool)

(assert (=> b!147677 (= c!30098 (<= (+ 0 1) 0))))

(assert (= (and d!35263 c!30097) b!147671))

(assert (= (and d!35263 (not c!30097)) b!147669))

(assert (= (and b!147669 c!30095) b!147675))

(assert (= (and b!147669 (not c!30095)) b!147670))

(assert (= (and d!35263 res!67956) b!147677))

(assert (= (and b!147677 c!30098) b!147673))

(assert (= (and b!147677 (not c!30098)) b!147674))

(assert (= (and b!147674 c!30096) b!147676))

(assert (= (and b!147674 (not c!30096)) b!147672))

(assert (= (or b!147673 b!147674 b!147672) bm!5850))

(declare-fun m!131005 () Bool)

(assert (=> b!147670 m!131005))

(assert (=> bm!5850 m!130971))

(declare-fun m!131007 () Bool)

(assert (=> d!35263 m!131007))

(assert (=> d!35263 m!130975))

(declare-fun m!131009 () Bool)

(assert (=> b!147677 m!131009))

(assert (=> b!146918 d!35263))

(assert (=> b!146918 d!35219))

(declare-fun d!35265 () Bool)

(declare-fun lt!42875 () BalanceConc!1408)

(assert (=> d!35265 (= (list!881 lt!42875) (originalCharacters!482 (apply!321 lt!42310 0)))))

(assert (=> d!35265 (= lt!42875 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0)))) (value!16827 (apply!321 lt!42310 0))))))

(assert (=> d!35265 (= (charsOf!96 (apply!321 lt!42310 0)) lt!42875)))

(declare-fun b_lambda!2535 () Bool)

(assert (=> (not b_lambda!2535) (not d!35265)))

(declare-fun t!24361 () Bool)

(declare-fun tb!4759 () Bool)

(assert (=> (and b!147096 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0))))) t!24361) tb!4759))

(declare-fun b!147678 () Bool)

(declare-fun e!87872 () Bool)

(declare-fun tp!77369 () Bool)

(assert (=> b!147678 (= e!87872 (and (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0)))) (value!16827 (apply!321 lt!42310 0))))) tp!77369))))

(declare-fun result!7146 () Bool)

(assert (=> tb!4759 (= result!7146 (and (inv!3340 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0)))) (value!16827 (apply!321 lt!42310 0)))) e!87872))))

(assert (= tb!4759 b!147678))

(declare-fun m!131011 () Bool)

(assert (=> b!147678 m!131011))

(declare-fun m!131013 () Bool)

(assert (=> tb!4759 m!131013))

(assert (=> d!35265 t!24361))

(declare-fun b_and!8181 () Bool)

(assert (= b_and!8171 (and (=> t!24361 result!7146) b_and!8181)))

(declare-fun t!24363 () Bool)

(declare-fun tb!4761 () Bool)

(assert (=> (and b!146712 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0))))) t!24363) tb!4761))

(declare-fun result!7148 () Bool)

(assert (= result!7148 result!7146))

(assert (=> d!35265 t!24363))

(declare-fun b_and!8183 () Bool)

(assert (= b_and!8177 (and (=> t!24363 result!7148) b_and!8183)))

(declare-fun tb!4763 () Bool)

(declare-fun t!24365 () Bool)

(assert (=> (and b!146717 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0))))) t!24365) tb!4763))

(declare-fun result!7150 () Bool)

(assert (= result!7150 result!7146))

(assert (=> d!35265 t!24365))

(declare-fun b_and!8185 () Bool)

(assert (= b_and!8179 (and (=> t!24365 result!7150) b_and!8185)))

(declare-fun tb!4765 () Bool)

(declare-fun t!24367 () Bool)

(assert (=> (and b!147085 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0))))) t!24367) tb!4765))

(declare-fun result!7152 () Bool)

(assert (= result!7152 result!7146))

(assert (=> d!35265 t!24367))

(declare-fun b_and!8187 () Bool)

(assert (= b_and!8173 (and (=> t!24367 result!7152) b_and!8187)))

(declare-fun tb!4767 () Bool)

(declare-fun t!24369 () Bool)

(assert (=> (and b!146718 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0))))) t!24369) tb!4767))

(declare-fun result!7154 () Bool)

(assert (= result!7154 result!7146))

(assert (=> d!35265 t!24369))

(declare-fun b_and!8189 () Bool)

(assert (= b_and!8175 (and (=> t!24369 result!7154) b_and!8189)))

(declare-fun m!131015 () Bool)

(assert (=> d!35265 m!131015))

(declare-fun m!131017 () Bool)

(assert (=> d!35265 m!131017))

(assert (=> b!146918 d!35265))

(declare-fun b!147865 () Bool)

(declare-fun lt!42919 () Option!223)

(declare-fun e!87982 () Bool)

(declare-fun get!693 (Option!223) tuple2!2526)

(declare-fun maxPrefixZipper!19 (LexerInterface!325 List!2563 List!2562) Option!222)

(assert (=> b!147865 (= e!87982 (= (list!881 (_2!1479 (get!693 lt!42919))) (_2!1478 (get!688 (maxPrefixZipper!19 thiss!17480 rules!1920 (list!881 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))))))

(declare-fun call!5863 () Option!223)

(declare-fun bm!5858 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!20 (LexerInterface!325 Rule!678 BalanceConc!1408) Option!223)

(assert (=> bm!5858 (= call!5863 (maxPrefixOneRuleZipperSequence!20 thiss!17480 (h!7950 rules!1920) (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))

(declare-fun b!147866 () Bool)

(declare-fun e!87980 () Bool)

(assert (=> b!147866 (= e!87980 (= (list!881 (_2!1479 (get!693 lt!42919))) (_2!1478 (get!688 (maxPrefix!101 thiss!17480 rules!1920 (list!881 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))))))

(declare-fun b!147867 () Bool)

(declare-fun res!68005 () Bool)

(declare-fun e!87977 () Bool)

(assert (=> b!147867 (=> (not res!68005) (not e!87977))))

(declare-fun e!87979 () Bool)

(assert (=> b!147867 (= res!68005 e!87979)))

(declare-fun res!68003 () Bool)

(assert (=> b!147867 (=> res!68003 e!87979)))

(declare-fun isDefined!90 (Option!223) Bool)

(assert (=> b!147867 (= res!68003 (not (isDefined!90 lt!42919)))))

(declare-fun b!147868 () Bool)

(declare-fun e!87978 () Option!223)

(assert (=> b!147868 (= e!87978 call!5863)))

(declare-fun d!35267 () Bool)

(assert (=> d!35267 e!87977))

(declare-fun res!68007 () Bool)

(assert (=> d!35267 (=> (not res!68007) (not e!87977))))

(assert (=> d!35267 (= res!68007 (= (isDefined!90 lt!42919) (isDefined!87 (maxPrefixZipper!19 thiss!17480 rules!1920 (list!881 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438))))))))

(assert (=> d!35267 (= lt!42919 e!87978)))

(declare-fun c!30117 () Bool)

(assert (=> d!35267 (= c!30117 (and ((_ is Cons!2553) rules!1920) ((_ is Nil!2553) (t!24233 rules!1920))))))

(declare-fun lt!42923 () Unit!1900)

(declare-fun lt!42925 () Unit!1900)

(assert (=> d!35267 (= lt!42923 lt!42925)))

(declare-fun lt!42920 () List!2562)

(declare-fun lt!42921 () List!2562)

(assert (=> d!35267 (isPrefix!207 lt!42920 lt!42921)))

(assert (=> d!35267 (= lt!42925 (lemmaIsPrefixRefl!115 lt!42920 lt!42921))))

(assert (=> d!35267 (= lt!42921 (list!881 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))

(assert (=> d!35267 (= lt!42920 (list!881 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))

(assert (=> d!35267 (rulesValidInductive!92 thiss!17480 rules!1920)))

(assert (=> d!35267 (= (maxPrefixZipperSequence!60 thiss!17480 rules!1920 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)) lt!42919)))

(declare-fun b!147869 () Bool)

(declare-fun e!87981 () Bool)

(assert (=> b!147869 (= e!87981 e!87980)))

(declare-fun res!68006 () Bool)

(assert (=> b!147869 (=> (not res!68006) (not e!87980))))

(assert (=> b!147869 (= res!68006 (= (_1!1479 (get!693 lt!42919)) (_1!1478 (get!688 (maxPrefix!101 thiss!17480 rules!1920 (list!881 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))))))

(declare-fun b!147870 () Bool)

(assert (=> b!147870 (= e!87979 e!87982)))

(declare-fun res!68004 () Bool)

(assert (=> b!147870 (=> (not res!68004) (not e!87982))))

(assert (=> b!147870 (= res!68004 (= (_1!1479 (get!693 lt!42919)) (_1!1478 (get!688 (maxPrefixZipper!19 thiss!17480 rules!1920 (list!881 (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))))))

(declare-fun b!147871 () Bool)

(assert (=> b!147871 (= e!87977 e!87981)))

(declare-fun res!68002 () Bool)

(assert (=> b!147871 (=> res!68002 e!87981)))

(assert (=> b!147871 (= res!68002 (not (isDefined!90 lt!42919)))))

(declare-fun b!147872 () Bool)

(declare-fun lt!42924 () Option!223)

(declare-fun lt!42922 () Option!223)

(assert (=> b!147872 (= e!87978 (ite (and ((_ is None!222) lt!42924) ((_ is None!222) lt!42922)) None!222 (ite ((_ is None!222) lt!42922) lt!42924 (ite ((_ is None!222) lt!42924) lt!42922 (ite (>= (size!2196 (_1!1479 (v!13585 lt!42924))) (size!2196 (_1!1479 (v!13585 lt!42922)))) lt!42924 lt!42922)))))))

(assert (=> b!147872 (= lt!42924 call!5863)))

(assert (=> b!147872 (= lt!42922 (maxPrefixZipperSequence!60 thiss!17480 (t!24233 rules!1920) (++!544 (charsOf!96 (apply!321 lt!42310 0)) lt!42438)))))

(assert (= (and d!35267 c!30117) b!147868))

(assert (= (and d!35267 (not c!30117)) b!147872))

(assert (= (or b!147868 b!147872) bm!5858))

(assert (= (and d!35267 res!68007) b!147867))

(assert (= (and b!147867 (not res!68003)) b!147870))

(assert (= (and b!147870 res!68004) b!147865))

(assert (= (and b!147867 res!68005) b!147871))

(assert (= (and b!147871 (not res!68002)) b!147869))

(assert (= (and b!147869 res!68006) b!147866))

(declare-fun m!131217 () Bool)

(assert (=> b!147871 m!131217))

(assert (=> bm!5858 m!129665))

(declare-fun m!131219 () Bool)

(assert (=> bm!5858 m!131219))

(declare-fun m!131221 () Bool)

(assert (=> d!35267 m!131221))

(declare-fun m!131223 () Bool)

(assert (=> d!35267 m!131223))

(assert (=> d!35267 m!131217))

(assert (=> d!35267 m!130079))

(declare-fun m!131225 () Bool)

(assert (=> d!35267 m!131225))

(declare-fun m!131227 () Bool)

(assert (=> d!35267 m!131227))

(assert (=> d!35267 m!129665))

(assert (=> d!35267 m!131221))

(assert (=> d!35267 m!131223))

(declare-fun m!131229 () Bool)

(assert (=> d!35267 m!131229))

(declare-fun m!131231 () Bool)

(assert (=> b!147870 m!131231))

(assert (=> b!147870 m!129665))

(assert (=> b!147870 m!131221))

(assert (=> b!147870 m!131221))

(assert (=> b!147870 m!131223))

(assert (=> b!147870 m!131223))

(declare-fun m!131233 () Bool)

(assert (=> b!147870 m!131233))

(assert (=> b!147872 m!129665))

(declare-fun m!131235 () Bool)

(assert (=> b!147872 m!131235))

(declare-fun m!131237 () Bool)

(assert (=> b!147865 m!131237))

(assert (=> b!147865 m!131221))

(assert (=> b!147865 m!131223))

(assert (=> b!147865 m!131223))

(assert (=> b!147865 m!131233))

(assert (=> b!147865 m!129665))

(assert (=> b!147865 m!131221))

(assert (=> b!147865 m!131231))

(assert (=> b!147869 m!131231))

(assert (=> b!147869 m!129665))

(assert (=> b!147869 m!131221))

(assert (=> b!147869 m!131221))

(declare-fun m!131239 () Bool)

(assert (=> b!147869 m!131239))

(assert (=> b!147869 m!131239))

(declare-fun m!131241 () Bool)

(assert (=> b!147869 m!131241))

(assert (=> b!147867 m!131217))

(assert (=> b!147866 m!131237))

(assert (=> b!147866 m!131239))

(assert (=> b!147866 m!131241))

(assert (=> b!147866 m!129665))

(assert (=> b!147866 m!131221))

(assert (=> b!147866 m!131221))

(assert (=> b!147866 m!131239))

(assert (=> b!147866 m!131231))

(assert (=> b!146918 d!35267))

(assert (=> b!146918 d!35059))

(declare-fun d!35343 () Bool)

(assert (=> d!35343 (= (tail!314 (drop!113 lt!42441 0)) (t!24234 (drop!113 lt!42441 0)))))

(assert (=> b!146918 d!35343))

(declare-fun d!35345 () Bool)

(assert (=> d!35345 (= (inv!3340 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))) (isBalanced!200 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))))))

(declare-fun bs!13405 () Bool)

(assert (= bs!13405 d!35345))

(declare-fun m!131243 () Bool)

(assert (=> bs!13405 m!131243))

(assert (=> tb!4695 d!35345))

(declare-fun d!35347 () Bool)

(declare-fun e!87983 () Bool)

(assert (=> d!35347 e!87983))

(declare-fun res!68011 () Bool)

(assert (=> d!35347 (=> (not res!68011) (not e!87983))))

(assert (=> d!35347 (= res!68011 (appendAssocInst!13 (c!29893 call!5809) (c!29893 (ite c!29945 lt!42438 call!5807))))))

(declare-fun lt!42926 () BalanceConc!1408)

(assert (=> d!35347 (= lt!42926 (BalanceConc!1409 (++!546 (c!29893 call!5809) (c!29893 (ite c!29945 lt!42438 call!5807)))))))

(assert (=> d!35347 (= (++!544 call!5809 (ite c!29945 lt!42438 call!5807)) lt!42926)))

(declare-fun b!147873 () Bool)

(declare-fun res!68008 () Bool)

(assert (=> b!147873 (=> (not res!68008) (not e!87983))))

(assert (=> b!147873 (= res!68008 (isBalanced!200 (++!546 (c!29893 call!5809) (c!29893 (ite c!29945 lt!42438 call!5807)))))))

(declare-fun b!147876 () Bool)

(assert (=> b!147876 (= e!87983 (= (list!881 lt!42926) (++!543 (list!881 call!5809) (list!881 (ite c!29945 lt!42438 call!5807)))))))

(declare-fun b!147875 () Bool)

(declare-fun res!68010 () Bool)

(assert (=> b!147875 (=> (not res!68010) (not e!87983))))

(assert (=> b!147875 (= res!68010 (>= (height!72 (++!546 (c!29893 call!5809) (c!29893 (ite c!29945 lt!42438 call!5807)))) (max!0 (height!72 (c!29893 call!5809)) (height!72 (c!29893 (ite c!29945 lt!42438 call!5807))))))))

(declare-fun b!147874 () Bool)

(declare-fun res!68009 () Bool)

(assert (=> b!147874 (=> (not res!68009) (not e!87983))))

(assert (=> b!147874 (= res!68009 (<= (height!72 (++!546 (c!29893 call!5809) (c!29893 (ite c!29945 lt!42438 call!5807)))) (+ (max!0 (height!72 (c!29893 call!5809)) (height!72 (c!29893 (ite c!29945 lt!42438 call!5807)))) 1)))))

(assert (= (and d!35347 res!68011) b!147873))

(assert (= (and b!147873 res!68008) b!147874))

(assert (= (and b!147874 res!68009) b!147875))

(assert (= (and b!147875 res!68010) b!147876))

(declare-fun m!131245 () Bool)

(assert (=> b!147876 m!131245))

(declare-fun m!131247 () Bool)

(assert (=> b!147876 m!131247))

(declare-fun m!131249 () Bool)

(assert (=> b!147876 m!131249))

(assert (=> b!147876 m!131247))

(assert (=> b!147876 m!131249))

(declare-fun m!131251 () Bool)

(assert (=> b!147876 m!131251))

(declare-fun m!131253 () Bool)

(assert (=> b!147873 m!131253))

(assert (=> b!147873 m!131253))

(declare-fun m!131255 () Bool)

(assert (=> b!147873 m!131255))

(assert (=> b!147875 m!131253))

(declare-fun m!131257 () Bool)

(assert (=> b!147875 m!131257))

(declare-fun m!131259 () Bool)

(assert (=> b!147875 m!131259))

(declare-fun m!131261 () Bool)

(assert (=> b!147875 m!131261))

(declare-fun m!131263 () Bool)

(assert (=> b!147875 m!131263))

(assert (=> b!147875 m!131259))

(assert (=> b!147875 m!131253))

(assert (=> b!147875 m!131261))

(assert (=> b!147874 m!131253))

(assert (=> b!147874 m!131257))

(assert (=> b!147874 m!131259))

(assert (=> b!147874 m!131261))

(assert (=> b!147874 m!131263))

(assert (=> b!147874 m!131259))

(assert (=> b!147874 m!131253))

(assert (=> b!147874 m!131261))

(declare-fun m!131265 () Bool)

(assert (=> d!35347 m!131265))

(assert (=> d!35347 m!131253))

(assert (=> bm!5802 d!35347))

(declare-fun d!35349 () Bool)

(declare-fun lt!42927 () BalanceConc!1408)

(assert (=> d!35349 (= (list!881 lt!42927) (originalCharacters!482 separatorToken!170))))

(assert (=> d!35349 (= lt!42927 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))))

(assert (=> d!35349 (= (charsOf!96 separatorToken!170) lt!42927)))

(declare-fun b_lambda!2557 () Bool)

(assert (=> (not b_lambda!2557) (not d!35349)))

(assert (=> d!35349 t!24278))

(declare-fun b_and!8209 () Bool)

(assert (= b_and!8189 (and (=> t!24278 result!7066) b_and!8209)))

(assert (=> d!35349 t!24282))

(declare-fun b_and!8211 () Bool)

(assert (= b_and!8183 (and (=> t!24282 result!7072) b_and!8211)))

(assert (=> d!35349 t!24290))

(declare-fun b_and!8213 () Bool)

(assert (= b_and!8187 (and (=> t!24290 result!7086) b_and!8213)))

(assert (=> d!35349 t!24294))

(declare-fun b_and!8215 () Bool)

(assert (= b_and!8181 (and (=> t!24294 result!7092) b_and!8215)))

(assert (=> d!35349 t!24280))

(declare-fun b_and!8217 () Bool)

(assert (= b_and!8185 (and (=> t!24280 result!7070) b_and!8217)))

(declare-fun m!131267 () Bool)

(assert (=> d!35349 m!131267))

(assert (=> d!35349 m!129749))

(assert (=> b!146836 d!35349))

(declare-fun d!35351 () Bool)

(declare-fun lt!42928 () Bool)

(assert (=> d!35351 (= lt!42928 (isEmpty!996 (list!881 (_2!1477 lt!42318))))))

(assert (=> d!35351 (= lt!42928 (isEmpty!998 (c!29893 (_2!1477 lt!42318))))))

(assert (=> d!35351 (= (isEmpty!995 (_2!1477 lt!42318)) lt!42928)))

(declare-fun bs!13406 () Bool)

(assert (= bs!13406 d!35351))

(declare-fun m!131269 () Bool)

(assert (=> bs!13406 m!131269))

(assert (=> bs!13406 m!131269))

(declare-fun m!131271 () Bool)

(assert (=> bs!13406 m!131271))

(declare-fun m!131273 () Bool)

(assert (=> bs!13406 m!131273))

(assert (=> b!146728 d!35351))

(declare-fun d!35353 () Bool)

(assert (=> d!35353 (= (list!881 (ite c!29918 call!5772 call!5771)) (list!885 (c!29893 (ite c!29918 call!5772 call!5771))))))

(declare-fun bs!13407 () Bool)

(assert (= bs!13407 d!35353))

(declare-fun m!131275 () Bool)

(assert (=> bs!13407 m!131275))

(assert (=> bm!5769 d!35353))

(declare-fun d!35355 () Bool)

(declare-fun lt!42929 () BalanceConc!1408)

(assert (=> d!35355 (= (list!881 lt!42929) (originalCharacters!482 (ite c!29946 separatorToken!170 call!5810)))))

(assert (=> d!35355 (= lt!42929 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810)))) (value!16827 (ite c!29946 separatorToken!170 call!5810))))))

(assert (=> d!35355 (= (charsOf!96 (ite c!29946 separatorToken!170 call!5810)) lt!42929)))

(declare-fun b_lambda!2559 () Bool)

(assert (=> (not b_lambda!2559) (not d!35355)))

(declare-fun tb!4803 () Bool)

(declare-fun t!24405 () Bool)

(assert (=> (and b!146712 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810))))) t!24405) tb!4803))

(declare-fun b!147877 () Bool)

(declare-fun tp!77480 () Bool)

(declare-fun e!87984 () Bool)

(assert (=> b!147877 (= e!87984 (and (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810)))) (value!16827 (ite c!29946 separatorToken!170 call!5810))))) tp!77480))))

(declare-fun result!7192 () Bool)

(assert (=> tb!4803 (= result!7192 (and (inv!3340 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810)))) (value!16827 (ite c!29946 separatorToken!170 call!5810)))) e!87984))))

(assert (= tb!4803 b!147877))

(declare-fun m!131277 () Bool)

(assert (=> b!147877 m!131277))

(declare-fun m!131279 () Bool)

(assert (=> tb!4803 m!131279))

(assert (=> d!35355 t!24405))

(declare-fun b_and!8219 () Bool)

(assert (= b_and!8211 (and (=> t!24405 result!7192) b_and!8219)))

(declare-fun tb!4805 () Bool)

(declare-fun t!24407 () Bool)

(assert (=> (and b!147096 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810))))) t!24407) tb!4805))

(declare-fun result!7194 () Bool)

(assert (= result!7194 result!7192))

(assert (=> d!35355 t!24407))

(declare-fun b_and!8221 () Bool)

(assert (= b_and!8215 (and (=> t!24407 result!7194) b_and!8221)))

(declare-fun tb!4807 () Bool)

(declare-fun t!24409 () Bool)

(assert (=> (and b!147085 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810))))) t!24409) tb!4807))

(declare-fun result!7196 () Bool)

(assert (= result!7196 result!7192))

(assert (=> d!35355 t!24409))

(declare-fun b_and!8223 () Bool)

(assert (= b_and!8213 (and (=> t!24409 result!7196) b_and!8223)))

(declare-fun tb!4809 () Bool)

(declare-fun t!24411 () Bool)

(assert (=> (and b!146718 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810))))) t!24411) tb!4809))

(declare-fun result!7198 () Bool)

(assert (= result!7198 result!7192))

(assert (=> d!35355 t!24411))

(declare-fun b_and!8225 () Bool)

(assert (= b_and!8209 (and (=> t!24411 result!7198) b_and!8225)))

(declare-fun t!24413 () Bool)

(declare-fun tb!4811 () Bool)

(assert (=> (and b!146717 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810))))) t!24413) tb!4811))

(declare-fun result!7200 () Bool)

(assert (= result!7200 result!7192))

(assert (=> d!35355 t!24413))

(declare-fun b_and!8227 () Bool)

(assert (= b_and!8217 (and (=> t!24413 result!7200) b_and!8227)))

(declare-fun m!131281 () Bool)

(assert (=> d!35355 m!131281))

(declare-fun m!131283 () Bool)

(assert (=> d!35355 m!131283))

(assert (=> bm!5801 d!35355))

(declare-fun d!35357 () Bool)

(assert (=> d!35357 true))

(declare-fun order!1261 () Int)

(declare-fun lambda!3694 () Int)

(declare-fun dynLambda!881 (Int Int) Int)

(assert (=> d!35357 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 rules!1920)))) (dynLambda!881 order!1261 lambda!3694))))

(assert (=> d!35357 true))

(assert (=> d!35357 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!881 order!1261 lambda!3694))))

(declare-fun Forall!118 (Int) Bool)

(assert (=> d!35357 (= (semiInverseModEq!151 (toChars!925 (transformation!439 (h!7950 rules!1920))) (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (Forall!118 lambda!3694))))

(declare-fun bs!13408 () Bool)

(assert (= bs!13408 d!35357))

(declare-fun m!131285 () Bool)

(assert (=> bs!13408 m!131285))

(assert (=> d!34993 d!35357))

(declare-fun d!35359 () Bool)

(assert (=> d!35359 true))

(declare-fun lt!42932 () Bool)

(assert (=> d!35359 (= lt!42932 (rulesValidInductive!92 thiss!17480 rules!1920))))

(declare-fun lambda!3697 () Int)

(declare-fun forall!416 (List!2563 Int) Bool)

(assert (=> d!35359 (= lt!42932 (forall!416 rules!1920 lambda!3697))))

(assert (=> d!35359 (= (rulesValid!117 thiss!17480 rules!1920) lt!42932)))

(declare-fun bs!13409 () Bool)

(assert (= bs!13409 d!35359))

(assert (=> bs!13409 m!130079))

(declare-fun m!131287 () Bool)

(assert (=> bs!13409 m!131287))

(assert (=> d!34979 d!35359))

(declare-fun b!147884 () Bool)

(declare-fun res!68012 () Bool)

(declare-fun e!87987 () Bool)

(assert (=> b!147884 (=> res!68012 e!87987)))

(assert (=> b!147884 (= res!68012 (not ((_ is IntegerValue!1385) (value!16827 (h!7951 (t!24234 tokens!465))))))))

(declare-fun e!87985 () Bool)

(assert (=> b!147884 (= e!87985 e!87987)))

(declare-fun d!35361 () Bool)

(declare-fun c!30118 () Bool)

(assert (=> d!35361 (= c!30118 ((_ is IntegerValue!1383) (value!16827 (h!7951 (t!24234 tokens!465)))))))

(declare-fun e!87986 () Bool)

(assert (=> d!35361 (= (inv!21 (value!16827 (h!7951 (t!24234 tokens!465)))) e!87986)))

(declare-fun b!147885 () Bool)

(assert (=> b!147885 (= e!87986 e!87985)))

(declare-fun c!30119 () Bool)

(assert (=> b!147885 (= c!30119 ((_ is IntegerValue!1384) (value!16827 (h!7951 (t!24234 tokens!465)))))))

(declare-fun b!147886 () Bool)

(assert (=> b!147886 (= e!87986 (inv!16 (value!16827 (h!7951 (t!24234 tokens!465)))))))

(declare-fun b!147887 () Bool)

(assert (=> b!147887 (= e!87987 (inv!15 (value!16827 (h!7951 (t!24234 tokens!465)))))))

(declare-fun b!147888 () Bool)

(assert (=> b!147888 (= e!87985 (inv!17 (value!16827 (h!7951 (t!24234 tokens!465)))))))

(assert (= (and d!35361 c!30118) b!147886))

(assert (= (and d!35361 (not c!30118)) b!147885))

(assert (= (and b!147885 c!30119) b!147888))

(assert (= (and b!147885 (not c!30119)) b!147884))

(assert (= (and b!147884 (not res!68012)) b!147887))

(declare-fun m!131289 () Bool)

(assert (=> b!147886 m!131289))

(declare-fun m!131291 () Bool)

(assert (=> b!147887 m!131291))

(declare-fun m!131293 () Bool)

(assert (=> b!147888 m!131293))

(assert (=> b!147083 d!35361))

(declare-fun d!35363 () Bool)

(assert (=> d!35363 (= (inv!15 (value!16827 (h!7951 tokens!465))) (= (charsToBigInt!0 (text!3676 (value!16827 (h!7951 tokens!465))) 0) (value!16822 (value!16827 (h!7951 tokens!465)))))))

(declare-fun bs!13410 () Bool)

(assert (= bs!13410 d!35363))

(declare-fun m!131295 () Bool)

(assert (=> bs!13410 m!131295))

(assert (=> b!146979 d!35363))

(assert (=> bm!5805 d!35219))

(declare-fun bs!13411 () Bool)

(declare-fun d!35365 () Bool)

(assert (= bs!13411 (and d!35365 d!35357)))

(declare-fun lambda!3698 () Int)

(assert (=> bs!13411 (= (and (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (h!7950 rules!1920)))) (= (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toValue!1066 (transformation!439 (h!7950 rules!1920))))) (= lambda!3698 lambda!3694))))

(assert (=> d!35365 true))

(assert (=> d!35365 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) (dynLambda!881 order!1261 lambda!3698))))

(assert (=> d!35365 true))

(assert (=> d!35365 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465))))) (dynLambda!881 order!1261 lambda!3698))))

(assert (=> d!35365 (= (semiInverseModEq!151 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465))))) (Forall!118 lambda!3698))))

(declare-fun bs!13412 () Bool)

(assert (= bs!13412 d!35365))

(declare-fun m!131297 () Bool)

(assert (=> bs!13412 m!131297))

(assert (=> d!34977 d!35365))

(declare-fun d!35367 () Bool)

(assert (=> d!35367 (forall!410 (dropList!60 lt!42310 0) lambda!3654)))

(declare-fun lt!42935 () Unit!1900)

(declare-fun choose!1736 (List!2564 List!2564 Int) Unit!1900)

(assert (=> d!35367 (= lt!42935 (choose!1736 (list!884 lt!42310) (dropList!60 lt!42310 0) lambda!3654))))

(assert (=> d!35367 (forall!410 (list!884 lt!42310) lambda!3654)))

(assert (=> d!35367 (= (lemmaContentSubsetPreservesForall!4 (list!884 lt!42310) (dropList!60 lt!42310 0) lambda!3654) lt!42935)))

(declare-fun bs!13413 () Bool)

(assert (= bs!13413 d!35367))

(assert (=> bs!13413 m!129681))

(declare-fun m!131299 () Bool)

(assert (=> bs!13413 m!131299))

(assert (=> bs!13413 m!129659))

(assert (=> bs!13413 m!129681))

(declare-fun m!131301 () Bool)

(assert (=> bs!13413 m!131301))

(assert (=> bs!13413 m!129659))

(declare-fun m!131303 () Bool)

(assert (=> bs!13413 m!131303))

(assert (=> d!34949 d!35367))

(assert (=> d!34949 d!34981))

(declare-fun bs!13414 () Bool)

(declare-fun b!147889 () Bool)

(assert (= bs!13414 (and b!147889 b!146918)))

(declare-fun lambda!3699 () Int)

(assert (=> bs!13414 (= lambda!3699 lambda!3655)))

(declare-fun bs!13415 () Bool)

(assert (= bs!13415 (and b!147889 b!147316)))

(assert (=> bs!13415 (= lambda!3699 lambda!3666)))

(declare-fun bs!13416 () Bool)

(assert (= bs!13416 (and b!147889 d!34967)))

(assert (=> bs!13416 (= lambda!3699 lambda!3660)))

(declare-fun bs!13417 () Bool)

(assert (= bs!13417 (and b!147889 d!35043)))

(assert (=> bs!13417 (= lambda!3699 lambda!3665)))

(declare-fun bs!13418 () Bool)

(assert (= bs!13418 (and b!147889 b!146831)))

(assert (=> bs!13418 (= lambda!3699 lambda!3642)))

(declare-fun bs!13419 () Bool)

(assert (= bs!13419 (and b!147889 b!147606)))

(assert (=> bs!13419 (= lambda!3699 lambda!3684)))

(declare-fun bs!13420 () Bool)

(assert (= bs!13420 (and b!147889 d!35247)))

(assert (=> bs!13420 (not (= lambda!3699 lambda!3683))))

(declare-fun bs!13421 () Bool)

(assert (= bs!13421 (and b!147889 b!146702)))

(assert (=> bs!13421 (not (= lambda!3699 lambda!3632))))

(declare-fun bs!13422 () Bool)

(assert (= bs!13422 (and b!147889 d!34949)))

(assert (=> bs!13422 (not (= lambda!3699 lambda!3654))))

(declare-fun b!147899 () Bool)

(declare-fun e!87994 () Bool)

(assert (=> b!147899 (= e!87994 true)))

(declare-fun b!147898 () Bool)

(declare-fun e!87993 () Bool)

(assert (=> b!147898 (= e!87993 e!87994)))

(declare-fun b!147897 () Bool)

(declare-fun e!87992 () Bool)

(assert (=> b!147897 (= e!87992 e!87993)))

(assert (=> b!147889 e!87992))

(assert (= b!147898 b!147899))

(assert (= b!147897 b!147898))

(assert (= (and b!147889 ((_ is Cons!2553) rules!1920)) b!147897))

(assert (=> b!147899 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3699))))

(assert (=> b!147899 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 rules!1920)))) (dynLambda!874 order!1251 lambda!3699))))

(assert (=> b!147889 true))

(declare-fun bm!5859 () Bool)

(declare-fun call!5864 () BalanceConc!1408)

(declare-fun call!5865 () BalanceConc!1408)

(assert (=> bm!5859 (= call!5864 call!5865)))

(declare-fun e!87991 () List!2562)

(declare-fun e!87989 () List!2562)

(assert (=> b!147889 (= e!87991 e!87989)))

(declare-fun lt!42937 () Unit!1900)

(assert (=> b!147889 (= lt!42937 (forallContained!44 (dropList!60 lt!42310 0) lambda!3699 (h!7951 (dropList!60 lt!42310 0))))))

(declare-fun lt!42941 () List!2562)

(assert (=> b!147889 (= lt!42941 (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 (t!24234 (dropList!60 lt!42310 0)) separatorToken!170))))

(declare-fun lt!42938 () Option!222)

(assert (=> b!147889 (= lt!42938 (maxPrefix!101 thiss!17480 rules!1920 (++!543 (list!881 (charsOf!96 (h!7951 (dropList!60 lt!42310 0)))) lt!42941)))))

(declare-fun c!30120 () Bool)

(assert (=> b!147889 (= c!30120 (and ((_ is Some!221) lt!42938) (= (_1!1478 (v!13584 lt!42938)) (h!7951 (dropList!60 lt!42310 0)))))))

(declare-fun d!35369 () Bool)

(declare-fun c!30122 () Bool)

(assert (=> d!35369 (= c!30122 ((_ is Cons!2554) (dropList!60 lt!42310 0)))))

(assert (=> d!35369 (= (printWithSeparatorTokenWhenNeededList!18 thiss!17480 rules!1920 (dropList!60 lt!42310 0) separatorToken!170) e!87991)))

(declare-fun b!147890 () Bool)

(declare-fun call!5866 () List!2562)

(assert (=> b!147890 (= e!87989 call!5866)))

(declare-fun b!147891 () Bool)

(declare-fun e!87988 () List!2562)

(assert (=> b!147891 (= e!87988 (++!543 call!5866 lt!42941))))

(declare-fun call!5868 () List!2562)

(declare-fun call!5867 () List!2562)

(declare-fun bm!5860 () Bool)

(assert (=> bm!5860 (= call!5866 (++!543 call!5868 (ite c!30120 lt!42941 call!5867)))))

(declare-fun bm!5861 () Bool)

(assert (=> bm!5861 (= call!5865 (charsOf!96 (h!7951 (dropList!60 lt!42310 0))))))

(declare-fun b!147892 () Bool)

(assert (=> b!147892 (= e!87991 Nil!2552)))

(declare-fun b!147893 () Bool)

(declare-fun c!30121 () Bool)

(assert (=> b!147893 (= c!30121 (and ((_ is Some!221) lt!42938) (not (= (_1!1478 (v!13584 lt!42938)) (h!7951 (dropList!60 lt!42310 0))))))))

(assert (=> b!147893 (= e!87989 e!87988)))

(declare-fun b!147894 () Bool)

(declare-fun e!87990 () BalanceConc!1408)

(assert (=> b!147894 (= e!87990 (charsOf!96 separatorToken!170))))

(declare-fun b!147895 () Bool)

(assert (=> b!147895 (= e!87988 Nil!2552)))

(assert (=> b!147895 (= (print!86 thiss!17480 (singletonSeq!19 (h!7951 (dropList!60 lt!42310 0)))) (printTailRec!49 thiss!17480 (singletonSeq!19 (h!7951 (dropList!60 lt!42310 0))) 0 (BalanceConc!1409 Empty!700)))))

(declare-fun lt!42939 () Unit!1900)

(declare-fun Unit!1924 () Unit!1900)

(assert (=> b!147895 (= lt!42939 Unit!1924)))

(declare-fun lt!42940 () Unit!1900)

(assert (=> b!147895 (= lt!42940 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!8 thiss!17480 rules!1920 call!5867 lt!42941))))

(assert (=> b!147895 false))

(declare-fun lt!42936 () Unit!1900)

(declare-fun Unit!1925 () Unit!1900)

(assert (=> b!147895 (= lt!42936 Unit!1925)))

(declare-fun bm!5862 () Bool)

(assert (=> bm!5862 (= call!5868 (list!881 (ite c!30120 call!5865 call!5864)))))

(declare-fun bm!5863 () Bool)

(assert (=> bm!5863 (= call!5867 (list!881 e!87990))))

(declare-fun c!30123 () Bool)

(assert (=> bm!5863 (= c!30123 c!30121)))

(declare-fun b!147896 () Bool)

(assert (=> b!147896 (= e!87990 call!5864)))

(assert (= (and d!35369 c!30122) b!147889))

(assert (= (and d!35369 (not c!30122)) b!147892))

(assert (= (and b!147889 c!30120) b!147890))

(assert (= (and b!147889 (not c!30120)) b!147893))

(assert (= (and b!147893 c!30121) b!147891))

(assert (= (and b!147893 (not c!30121)) b!147895))

(assert (= (or b!147891 b!147895) bm!5859))

(assert (= (or b!147891 b!147895) bm!5863))

(assert (= (and bm!5863 c!30123) b!147894))

(assert (= (and bm!5863 (not c!30123)) b!147896))

(assert (= (or b!147890 bm!5859) bm!5861))

(assert (= (or b!147890 b!147891) bm!5862))

(assert (= (or b!147890 b!147891) bm!5860))

(declare-fun m!131305 () Bool)

(assert (=> b!147889 m!131305))

(declare-fun m!131307 () Bool)

(assert (=> b!147889 m!131307))

(declare-fun m!131309 () Bool)

(assert (=> b!147889 m!131309))

(assert (=> b!147889 m!131305))

(assert (=> b!147889 m!129681))

(declare-fun m!131311 () Bool)

(assert (=> b!147889 m!131311))

(declare-fun m!131313 () Bool)

(assert (=> b!147889 m!131313))

(declare-fun m!131315 () Bool)

(assert (=> b!147889 m!131315))

(assert (=> b!147889 m!131313))

(assert (=> b!147889 m!131309))

(declare-fun m!131317 () Bool)

(assert (=> b!147895 m!131317))

(assert (=> b!147895 m!131317))

(declare-fun m!131319 () Bool)

(assert (=> b!147895 m!131319))

(assert (=> b!147895 m!131317))

(declare-fun m!131321 () Bool)

(assert (=> b!147895 m!131321))

(declare-fun m!131323 () Bool)

(assert (=> b!147895 m!131323))

(declare-fun m!131325 () Bool)

(assert (=> b!147891 m!131325))

(declare-fun m!131327 () Bool)

(assert (=> bm!5863 m!131327))

(assert (=> bm!5861 m!131313))

(assert (=> b!147894 m!129555))

(declare-fun m!131329 () Bool)

(assert (=> bm!5862 m!131329))

(declare-fun m!131331 () Bool)

(assert (=> bm!5860 m!131331))

(assert (=> d!34949 d!35369))

(declare-fun d!35371 () Bool)

(assert (=> d!35371 (= (dropList!60 lt!42310 0) (drop!113 (list!888 (c!29895 lt!42310)) 0))))

(declare-fun bs!13423 () Bool)

(assert (= bs!13423 d!35371))

(assert (=> bs!13423 m!130017))

(assert (=> bs!13423 m!130017))

(declare-fun m!131333 () Bool)

(assert (=> bs!13423 m!131333))

(assert (=> d!34949 d!35371))

(declare-fun d!35373 () Bool)

(assert (=> d!35373 (= (list!881 lt!42445) (list!885 (c!29893 lt!42445)))))

(declare-fun bs!13424 () Bool)

(assert (= bs!13424 d!35373))

(declare-fun m!131335 () Bool)

(assert (=> bs!13424 m!131335))

(assert (=> d!34949 d!35373))

(assert (=> d!34949 d!35059))

(declare-fun d!35375 () Bool)

(declare-fun lt!42944 () Int)

(assert (=> d!35375 (>= lt!42944 0)))

(declare-fun e!87997 () Int)

(assert (=> d!35375 (= lt!42944 e!87997)))

(declare-fun c!30126 () Bool)

(assert (=> d!35375 (= c!30126 ((_ is Nil!2554) (list!884 lt!42310)))))

(assert (=> d!35375 (= (size!2201 (list!884 lt!42310)) lt!42944)))

(declare-fun b!147904 () Bool)

(assert (=> b!147904 (= e!87997 0)))

(declare-fun b!147905 () Bool)

(assert (=> b!147905 (= e!87997 (+ 1 (size!2201 (t!24234 (list!884 lt!42310)))))))

(assert (= (and d!35375 c!30126) b!147904))

(assert (= (and d!35375 (not c!30126)) b!147905))

(declare-fun m!131337 () Bool)

(assert (=> b!147905 m!131337))

(assert (=> d!34981 d!35375))

(assert (=> d!34981 d!35059))

(declare-fun d!35377 () Bool)

(declare-fun lt!42947 () Int)

(assert (=> d!35377 (= lt!42947 (size!2201 (list!888 (c!29895 lt!42310))))))

(assert (=> d!35377 (= lt!42947 (ite ((_ is Empty!701) (c!29895 lt!42310)) 0 (ite ((_ is Leaf!1260) (c!29895 lt!42310)) (csize!1633 (c!29895 lt!42310)) (csize!1632 (c!29895 lt!42310)))))))

(assert (=> d!35377 (= (size!2202 (c!29895 lt!42310)) lt!42947)))

(declare-fun bs!13425 () Bool)

(assert (= bs!13425 d!35377))

(assert (=> bs!13425 m!130017))

(assert (=> bs!13425 m!130017))

(declare-fun m!131339 () Bool)

(assert (=> bs!13425 m!131339))

(assert (=> d!34981 d!35377))

(declare-fun d!35379 () Bool)

(declare-fun res!68013 () Bool)

(declare-fun e!87998 () Bool)

(assert (=> d!35379 (=> res!68013 e!87998)))

(assert (=> d!35379 (= res!68013 ((_ is Nil!2554) (t!24234 tokens!465)))))

(assert (=> d!35379 (= (forall!410 (t!24234 tokens!465) lambda!3632) e!87998)))

(declare-fun b!147906 () Bool)

(declare-fun e!87999 () Bool)

(assert (=> b!147906 (= e!87998 e!87999)))

(declare-fun res!68014 () Bool)

(assert (=> b!147906 (=> (not res!68014) (not e!87999))))

(assert (=> b!147906 (= res!68014 (dynLambda!876 lambda!3632 (h!7951 (t!24234 tokens!465))))))

(declare-fun b!147907 () Bool)

(assert (=> b!147907 (= e!87999 (forall!410 (t!24234 (t!24234 tokens!465)) lambda!3632))))

(assert (= (and d!35379 (not res!68013)) b!147906))

(assert (= (and b!147906 res!68014) b!147907))

(declare-fun b_lambda!2561 () Bool)

(assert (=> (not b_lambda!2561) (not b!147906)))

(declare-fun m!131341 () Bool)

(assert (=> b!147906 m!131341))

(declare-fun m!131343 () Bool)

(assert (=> b!147907 m!131343))

(assert (=> b!146992 d!35379))

(declare-fun d!35381 () Bool)

(assert (=> d!35381 (= (list!881 e!87326) (list!885 (c!29893 e!87326)))))

(declare-fun bs!13426 () Bool)

(assert (= bs!13426 d!35381))

(declare-fun m!131345 () Bool)

(assert (=> bs!13426 m!131345))

(assert (=> bm!5770 d!35381))

(declare-fun d!35383 () Bool)

(assert (=> d!35383 (= (inv!16 (value!16827 separatorToken!170)) (= (charsToInt!0 (text!3674 (value!16827 separatorToken!170))) (value!16818 (value!16827 separatorToken!170))))))

(declare-fun bs!13427 () Bool)

(assert (= bs!13427 d!35383))

(declare-fun m!131347 () Bool)

(assert (=> bs!13427 m!131347))

(assert (=> b!147021 d!35383))

(declare-fun d!35385 () Bool)

(declare-fun res!68015 () Bool)

(declare-fun e!88000 () Bool)

(assert (=> d!35385 (=> res!68015 e!88000)))

(assert (=> d!35385 (= res!68015 (not ((_ is Cons!2553) (t!24233 rules!1920))))))

(assert (=> d!35385 (= (sepAndNonSepRulesDisjointChars!28 rules!1920 (t!24233 rules!1920)) e!88000)))

(declare-fun b!147908 () Bool)

(declare-fun e!88001 () Bool)

(assert (=> b!147908 (= e!88000 e!88001)))

(declare-fun res!68016 () Bool)

(assert (=> b!147908 (=> (not res!68016) (not e!88001))))

(assert (=> b!147908 (= res!68016 (ruleDisjointCharsFromAllFromOtherType!10 (h!7950 (t!24233 rules!1920)) rules!1920))))

(declare-fun b!147909 () Bool)

(assert (=> b!147909 (= e!88001 (sepAndNonSepRulesDisjointChars!28 rules!1920 (t!24233 (t!24233 rules!1920))))))

(assert (= (and d!35385 (not res!68015)) b!147908))

(assert (= (and b!147908 res!68016) b!147909))

(declare-fun m!131349 () Bool)

(assert (=> b!147908 m!131349))

(declare-fun m!131351 () Bool)

(assert (=> b!147909 m!131351))

(assert (=> b!147049 d!35385))

(declare-fun d!35387 () Bool)

(assert (=> d!35387 (= (list!881 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))) (list!885 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))))))

(declare-fun bs!13428 () Bool)

(assert (= bs!13428 d!35387))

(declare-fun m!131353 () Bool)

(assert (=> bs!13428 m!131353))

(assert (=> b!147034 d!35387))

(declare-fun d!35389 () Bool)

(declare-fun lt!42948 () Int)

(assert (=> d!35389 (>= lt!42948 0)))

(declare-fun e!88002 () Int)

(assert (=> d!35389 (= lt!42948 e!88002)))

(declare-fun c!30127 () Bool)

(assert (=> d!35389 (= c!30127 ((_ is Nil!2552) (originalCharacters!482 (h!7951 tokens!465))))))

(assert (=> d!35389 (= (size!2203 (originalCharacters!482 (h!7951 tokens!465))) lt!42948)))

(declare-fun b!147910 () Bool)

(assert (=> b!147910 (= e!88002 0)))

(declare-fun b!147911 () Bool)

(assert (=> b!147911 (= e!88002 (+ 1 (size!2203 (t!24232 (originalCharacters!482 (h!7951 tokens!465))))))))

(assert (= (and d!35389 c!30127) b!147910))

(assert (= (and d!35389 (not c!30127)) b!147911))

(declare-fun m!131355 () Bool)

(assert (=> b!147911 m!131355))

(assert (=> b!147042 d!35389))

(declare-fun bs!13429 () Bool)

(declare-fun d!35391 () Bool)

(assert (= bs!13429 (and d!35391 d!35357)))

(declare-fun lambda!3700 () Int)

(assert (=> bs!13429 (= (and (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (h!7950 rules!1920)))) (= (toValue!1066 (transformation!439 (rule!946 separatorToken!170))) (toValue!1066 (transformation!439 (h!7950 rules!1920))))) (= lambda!3700 lambda!3694))))

(declare-fun bs!13430 () Bool)

(assert (= bs!13430 (and d!35391 d!35365)))

(assert (=> bs!13430 (= (and (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) (= (toValue!1066 (transformation!439 (rule!946 separatorToken!170))) (toValue!1066 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (= lambda!3700 lambda!3698))))

(assert (=> d!35391 true))

(assert (=> d!35391 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (rule!946 separatorToken!170)))) (dynLambda!881 order!1261 lambda!3700))))

(assert (=> d!35391 true))

(assert (=> d!35391 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (rule!946 separatorToken!170)))) (dynLambda!881 order!1261 lambda!3700))))

(assert (=> d!35391 (= (semiInverseModEq!151 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toValue!1066 (transformation!439 (rule!946 separatorToken!170)))) (Forall!118 lambda!3700))))

(declare-fun bs!13431 () Bool)

(assert (= bs!13431 d!35391))

(declare-fun m!131357 () Bool)

(assert (=> bs!13431 m!131357))

(assert (=> d!34997 d!35391))

(declare-fun e!88003 () Bool)

(assert (=> b!147095 (= tp!77353 e!88003)))

(declare-fun b!147913 () Bool)

(declare-fun tp!77485 () Bool)

(declare-fun tp!77484 () Bool)

(assert (=> b!147913 (= e!88003 (and tp!77485 tp!77484))))

(declare-fun b!147912 () Bool)

(assert (=> b!147912 (= e!88003 tp_is_empty!1599)))

(declare-fun b!147914 () Bool)

(declare-fun tp!77482 () Bool)

(assert (=> b!147914 (= e!88003 tp!77482)))

(declare-fun b!147915 () Bool)

(declare-fun tp!77483 () Bool)

(declare-fun tp!77481 () Bool)

(assert (=> b!147915 (= e!88003 (and tp!77483 tp!77481))))

(assert (= (and b!147095 ((_ is ElementMatch!663) (regex!439 (h!7950 (t!24233 rules!1920))))) b!147912))

(assert (= (and b!147095 ((_ is Concat!1125) (regex!439 (h!7950 (t!24233 rules!1920))))) b!147913))

(assert (= (and b!147095 ((_ is Star!663) (regex!439 (h!7950 (t!24233 rules!1920))))) b!147914))

(assert (= (and b!147095 ((_ is Union!663) (regex!439 (h!7950 (t!24233 rules!1920))))) b!147915))

(declare-fun e!88004 () Bool)

(assert (=> b!147070 (= tp!77323 e!88004)))

(declare-fun b!147917 () Bool)

(declare-fun tp!77490 () Bool)

(declare-fun tp!77489 () Bool)

(assert (=> b!147917 (= e!88004 (and tp!77490 tp!77489))))

(declare-fun b!147916 () Bool)

(assert (=> b!147916 (= e!88004 tp_is_empty!1599)))

(declare-fun b!147918 () Bool)

(declare-fun tp!77487 () Bool)

(assert (=> b!147918 (= e!88004 tp!77487)))

(declare-fun b!147919 () Bool)

(declare-fun tp!77488 () Bool)

(declare-fun tp!77486 () Bool)

(assert (=> b!147919 (= e!88004 (and tp!77488 tp!77486))))

(assert (= (and b!147070 ((_ is ElementMatch!663) (reg!992 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147916))

(assert (= (and b!147070 ((_ is Concat!1125) (reg!992 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147917))

(assert (= (and b!147070 ((_ is Star!663) (reg!992 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147918))

(assert (= (and b!147070 ((_ is Union!663) (reg!992 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147919))

(declare-fun b!147922 () Bool)

(declare-fun b_free!5253 () Bool)

(declare-fun b_next!5253 () Bool)

(assert (=> b!147922 (= b_free!5253 (not b_next!5253))))

(declare-fun tp!77493 () Bool)

(declare-fun b_and!8229 () Bool)

(assert (=> b!147922 (= tp!77493 b_and!8229)))

(declare-fun b_free!5255 () Bool)

(declare-fun b_next!5255 () Bool)

(assert (=> b!147922 (= b_free!5255 (not b_next!5255))))

(declare-fun tb!4813 () Bool)

(declare-fun t!24416 () Bool)

(assert (=> (and b!147922 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 separatorToken!170)))) t!24416) tb!4813))

(declare-fun result!7202 () Bool)

(assert (= result!7202 result!7066))

(assert (=> b!147034 t!24416))

(declare-fun t!24418 () Bool)

(declare-fun tb!4815 () Bool)

(assert (=> (and b!147922 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810))))) t!24418) tb!4815))

(declare-fun result!7204 () Bool)

(assert (= result!7204 result!7192))

(assert (=> d!35355 t!24418))

(declare-fun t!24420 () Bool)

(declare-fun tb!4817 () Bool)

(assert (=> (and b!147922 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0))))) t!24420) tb!4817))

(declare-fun result!7206 () Bool)

(assert (= result!7206 result!7146))

(assert (=> d!35265 t!24420))

(declare-fun t!24422 () Bool)

(declare-fun tb!4819 () Bool)

(assert (=> (and b!147922 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810))))) t!24422) tb!4819))

(declare-fun result!7208 () Bool)

(assert (= result!7208 result!7106))

(assert (=> d!35105 t!24422))

(assert (=> d!35349 t!24416))

(declare-fun t!24424 () Bool)

(declare-fun tb!4821 () Bool)

(assert (=> (and b!147922 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) t!24424) tb!4821))

(declare-fun result!7210 () Bool)

(assert (= result!7210 result!7074))

(assert (=> b!147041 t!24424))

(declare-fun tb!4823 () Bool)

(declare-fun t!24426 () Bool)

(assert (=> (and b!147922 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) t!24426) tb!4823))

(declare-fun result!7212 () Bool)

(assert (= result!7212 result!7136))

(assert (=> b!147566 t!24426))

(assert (=> d!35077 t!24424))

(declare-fun tp!77492 () Bool)

(declare-fun b_and!8231 () Bool)

(assert (=> b!147922 (= tp!77492 (and (=> t!24424 result!7210) (=> t!24420 result!7206) (=> t!24426 result!7212) (=> t!24416 result!7202) (=> t!24418 result!7204) (=> t!24422 result!7208) b_and!8231))))

(declare-fun e!88007 () Bool)

(assert (=> b!147922 (= e!88007 (and tp!77493 tp!77492))))

(declare-fun b!147921 () Bool)

(declare-fun tp!77494 () Bool)

(declare-fun e!88006 () Bool)

(assert (=> b!147921 (= e!88006 (and tp!77494 (inv!3332 (tag!617 (h!7950 (t!24233 (t!24233 rules!1920))))) (inv!3335 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) e!88007))))

(declare-fun b!147920 () Bool)

(declare-fun e!88008 () Bool)

(declare-fun tp!77491 () Bool)

(assert (=> b!147920 (= e!88008 (and e!88006 tp!77491))))

(assert (=> b!147094 (= tp!77350 e!88008)))

(assert (= b!147921 b!147922))

(assert (= b!147920 b!147921))

(assert (= (and b!147094 ((_ is Cons!2553) (t!24233 (t!24233 rules!1920)))) b!147920))

(declare-fun m!131359 () Bool)

(assert (=> b!147921 m!131359))

(declare-fun m!131361 () Bool)

(assert (=> b!147921 m!131361))

(declare-fun e!88009 () Bool)

(assert (=> b!147071 (= tp!77324 e!88009)))

(declare-fun b!147924 () Bool)

(declare-fun tp!77499 () Bool)

(declare-fun tp!77498 () Bool)

(assert (=> b!147924 (= e!88009 (and tp!77499 tp!77498))))

(declare-fun b!147923 () Bool)

(assert (=> b!147923 (= e!88009 tp_is_empty!1599)))

(declare-fun b!147925 () Bool)

(declare-fun tp!77496 () Bool)

(assert (=> b!147925 (= e!88009 tp!77496)))

(declare-fun b!147926 () Bool)

(declare-fun tp!77497 () Bool)

(declare-fun tp!77495 () Bool)

(assert (=> b!147926 (= e!88009 (and tp!77497 tp!77495))))

(assert (= (and b!147071 ((_ is ElementMatch!663) (regOne!1839 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147923))

(assert (= (and b!147071 ((_ is Concat!1125) (regOne!1839 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147924))

(assert (= (and b!147071 ((_ is Star!663) (regOne!1839 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147925))

(assert (= (and b!147071 ((_ is Union!663) (regOne!1839 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147926))

(declare-fun e!88010 () Bool)

(assert (=> b!147071 (= tp!77322 e!88010)))

(declare-fun b!147928 () Bool)

(declare-fun tp!77504 () Bool)

(declare-fun tp!77503 () Bool)

(assert (=> b!147928 (= e!88010 (and tp!77504 tp!77503))))

(declare-fun b!147927 () Bool)

(assert (=> b!147927 (= e!88010 tp_is_empty!1599)))

(declare-fun b!147929 () Bool)

(declare-fun tp!77501 () Bool)

(assert (=> b!147929 (= e!88010 tp!77501)))

(declare-fun b!147930 () Bool)

(declare-fun tp!77502 () Bool)

(declare-fun tp!77500 () Bool)

(assert (=> b!147930 (= e!88010 (and tp!77502 tp!77500))))

(assert (= (and b!147071 ((_ is ElementMatch!663) (regTwo!1839 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147927))

(assert (= (and b!147071 ((_ is Concat!1125) (regTwo!1839 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147928))

(assert (= (and b!147071 ((_ is Star!663) (regTwo!1839 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147929))

(assert (= (and b!147071 ((_ is Union!663) (regTwo!1839 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147930))

(declare-fun tp!77511 () Bool)

(declare-fun e!88015 () Bool)

(declare-fun b!147939 () Bool)

(declare-fun tp!77513 () Bool)

(assert (=> b!147939 (= e!88015 (and (inv!3339 (left!1926 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))))) tp!77511 (inv!3339 (right!2256 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))))) tp!77513))))

(declare-fun b!147941 () Bool)

(declare-fun e!88016 () Bool)

(declare-fun tp!77512 () Bool)

(assert (=> b!147941 (= e!88016 tp!77512)))

(declare-fun b!147940 () Bool)

(declare-fun inv!3346 (IArray!1401) Bool)

(assert (=> b!147940 (= e!88015 (and (inv!3346 (xs!3295 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))))) e!88016))))

(assert (=> b!147040 (= tp!77306 (and (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170)))) e!88015))))

(assert (= (and b!147040 ((_ is Node!700) (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))))) b!147939))

(assert (= b!147940 b!147941))

(assert (= (and b!147040 ((_ is Leaf!1259) (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (value!16827 separatorToken!170))))) b!147940))

(declare-fun m!131363 () Bool)

(assert (=> b!147939 m!131363))

(declare-fun m!131365 () Bool)

(assert (=> b!147939 m!131365))

(declare-fun m!131367 () Bool)

(assert (=> b!147940 m!131367))

(assert (=> b!147040 m!129743))

(declare-fun e!88017 () Bool)

(assert (=> b!147103 (= tp!77360 e!88017)))

(declare-fun b!147943 () Bool)

(declare-fun tp!77518 () Bool)

(declare-fun tp!77517 () Bool)

(assert (=> b!147943 (= e!88017 (and tp!77518 tp!77517))))

(declare-fun b!147942 () Bool)

(assert (=> b!147942 (= e!88017 tp_is_empty!1599)))

(declare-fun b!147944 () Bool)

(declare-fun tp!77515 () Bool)

(assert (=> b!147944 (= e!88017 tp!77515)))

(declare-fun b!147945 () Bool)

(declare-fun tp!77516 () Bool)

(declare-fun tp!77514 () Bool)

(assert (=> b!147945 (= e!88017 (and tp!77516 tp!77514))))

(assert (= (and b!147103 ((_ is ElementMatch!663) (reg!992 (regex!439 (rule!946 separatorToken!170))))) b!147942))

(assert (= (and b!147103 ((_ is Concat!1125) (reg!992 (regex!439 (rule!946 separatorToken!170))))) b!147943))

(assert (= (and b!147103 ((_ is Star!663) (reg!992 (regex!439 (rule!946 separatorToken!170))))) b!147944))

(assert (= (and b!147103 ((_ is Union!663) (reg!992 (regex!439 (rule!946 separatorToken!170))))) b!147945))

(declare-fun b!147946 () Bool)

(declare-fun e!88018 () Bool)

(declare-fun tp!77519 () Bool)

(assert (=> b!147946 (= e!88018 (and tp_is_empty!1599 tp!77519))))

(assert (=> b!147057 (= tp!77311 e!88018)))

(assert (= (and b!147057 ((_ is Cons!2552) (t!24232 (originalCharacters!482 separatorToken!170)))) b!147946))

(declare-fun e!88019 () Bool)

(assert (=> b!147104 (= tp!77361 e!88019)))

(declare-fun b!147948 () Bool)

(declare-fun tp!77524 () Bool)

(declare-fun tp!77523 () Bool)

(assert (=> b!147948 (= e!88019 (and tp!77524 tp!77523))))

(declare-fun b!147947 () Bool)

(assert (=> b!147947 (= e!88019 tp_is_empty!1599)))

(declare-fun b!147949 () Bool)

(declare-fun tp!77521 () Bool)

(assert (=> b!147949 (= e!88019 tp!77521)))

(declare-fun b!147950 () Bool)

(declare-fun tp!77522 () Bool)

(declare-fun tp!77520 () Bool)

(assert (=> b!147950 (= e!88019 (and tp!77522 tp!77520))))

(assert (= (and b!147104 ((_ is ElementMatch!663) (regOne!1839 (regex!439 (rule!946 separatorToken!170))))) b!147947))

(assert (= (and b!147104 ((_ is Concat!1125) (regOne!1839 (regex!439 (rule!946 separatorToken!170))))) b!147948))

(assert (= (and b!147104 ((_ is Star!663) (regOne!1839 (regex!439 (rule!946 separatorToken!170))))) b!147949))

(assert (= (and b!147104 ((_ is Union!663) (regOne!1839 (regex!439 (rule!946 separatorToken!170))))) b!147950))

(declare-fun e!88020 () Bool)

(assert (=> b!147104 (= tp!77359 e!88020)))

(declare-fun b!147952 () Bool)

(declare-fun tp!77529 () Bool)

(declare-fun tp!77528 () Bool)

(assert (=> b!147952 (= e!88020 (and tp!77529 tp!77528))))

(declare-fun b!147951 () Bool)

(assert (=> b!147951 (= e!88020 tp_is_empty!1599)))

(declare-fun b!147953 () Bool)

(declare-fun tp!77526 () Bool)

(assert (=> b!147953 (= e!88020 tp!77526)))

(declare-fun b!147954 () Bool)

(declare-fun tp!77527 () Bool)

(declare-fun tp!77525 () Bool)

(assert (=> b!147954 (= e!88020 (and tp!77527 tp!77525))))

(assert (= (and b!147104 ((_ is ElementMatch!663) (regTwo!1839 (regex!439 (rule!946 separatorToken!170))))) b!147951))

(assert (= (and b!147104 ((_ is Concat!1125) (regTwo!1839 (regex!439 (rule!946 separatorToken!170))))) b!147952))

(assert (= (and b!147104 ((_ is Star!663) (regTwo!1839 (regex!439 (rule!946 separatorToken!170))))) b!147953))

(assert (= (and b!147104 ((_ is Union!663) (regTwo!1839 (regex!439 (rule!946 separatorToken!170))))) b!147954))

(declare-fun b!147957 () Bool)

(declare-fun e!88023 () Bool)

(assert (=> b!147957 (= e!88023 true)))

(declare-fun b!147956 () Bool)

(declare-fun e!88022 () Bool)

(assert (=> b!147956 (= e!88022 e!88023)))

(declare-fun b!147955 () Bool)

(declare-fun e!88021 () Bool)

(assert (=> b!147955 (= e!88021 e!88022)))

(assert (=> b!147016 e!88021))

(assert (= b!147956 b!147957))

(assert (= b!147955 b!147956))

(assert (= (and b!147016 ((_ is Cons!2553) (t!24233 rules!1920))) b!147955))

(assert (=> b!147957 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 (t!24233 rules!1920))))) (dynLambda!874 order!1251 lambda!3660))))

(assert (=> b!147957 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920))))) (dynLambda!874 order!1251 lambda!3660))))

(declare-fun b!147960 () Bool)

(declare-fun e!88026 () Bool)

(assert (=> b!147960 (= e!88026 true)))

(declare-fun b!147959 () Bool)

(declare-fun e!88025 () Bool)

(assert (=> b!147959 (= e!88025 e!88026)))

(declare-fun b!147958 () Bool)

(declare-fun e!88024 () Bool)

(assert (=> b!147958 (= e!88024 e!88025)))

(assert (=> b!146926 e!88024))

(assert (= b!147959 b!147960))

(assert (= b!147958 b!147959))

(assert (= (and b!146926 ((_ is Cons!2553) (t!24233 rules!1920))) b!147958))

(assert (=> b!147960 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 (t!24233 rules!1920))))) (dynLambda!874 order!1251 lambda!3655))))

(assert (=> b!147960 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920))))) (dynLambda!874 order!1251 lambda!3655))))

(declare-fun b!147961 () Bool)

(declare-fun e!88027 () Bool)

(declare-fun tp!77530 () Bool)

(assert (=> b!147961 (= e!88027 (and tp_is_empty!1599 tp!77530))))

(assert (=> b!147056 (= tp!77310 e!88027)))

(assert (= (and b!147056 ((_ is Cons!2552) (t!24232 (originalCharacters!482 (h!7951 tokens!465))))) b!147961))

(declare-fun b!147964 () Bool)

(declare-fun e!88030 () Bool)

(assert (=> b!147964 (= e!88030 true)))

(declare-fun b!147963 () Bool)

(declare-fun e!88029 () Bool)

(assert (=> b!147963 (= e!88029 e!88030)))

(declare-fun b!147962 () Bool)

(declare-fun e!88028 () Bool)

(assert (=> b!147962 (= e!88028 e!88029)))

(assert (=> b!146858 e!88028))

(assert (= b!147963 b!147964))

(assert (= b!147962 b!147963))

(assert (= (and b!146858 ((_ is Cons!2553) (t!24233 rules!1920))) b!147962))

(assert (=> b!147964 (< (dynLambda!873 order!1249 (toValue!1066 (transformation!439 (h!7950 (t!24233 rules!1920))))) (dynLambda!874 order!1251 lambda!3642))))

(assert (=> b!147964 (< (dynLambda!875 order!1253 (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920))))) (dynLambda!874 order!1251 lambda!3642))))

(declare-fun e!88031 () Bool)

(assert (=> b!147102 (= tp!77363 e!88031)))

(declare-fun b!147966 () Bool)

(declare-fun tp!77535 () Bool)

(declare-fun tp!77534 () Bool)

(assert (=> b!147966 (= e!88031 (and tp!77535 tp!77534))))

(declare-fun b!147965 () Bool)

(assert (=> b!147965 (= e!88031 tp_is_empty!1599)))

(declare-fun b!147967 () Bool)

(declare-fun tp!77532 () Bool)

(assert (=> b!147967 (= e!88031 tp!77532)))

(declare-fun b!147968 () Bool)

(declare-fun tp!77533 () Bool)

(declare-fun tp!77531 () Bool)

(assert (=> b!147968 (= e!88031 (and tp!77533 tp!77531))))

(assert (= (and b!147102 ((_ is ElementMatch!663) (regOne!1838 (regex!439 (rule!946 separatorToken!170))))) b!147965))

(assert (= (and b!147102 ((_ is Concat!1125) (regOne!1838 (regex!439 (rule!946 separatorToken!170))))) b!147966))

(assert (= (and b!147102 ((_ is Star!663) (regOne!1838 (regex!439 (rule!946 separatorToken!170))))) b!147967))

(assert (= (and b!147102 ((_ is Union!663) (regOne!1838 (regex!439 (rule!946 separatorToken!170))))) b!147968))

(declare-fun e!88032 () Bool)

(assert (=> b!147102 (= tp!77362 e!88032)))

(declare-fun b!147970 () Bool)

(declare-fun tp!77540 () Bool)

(declare-fun tp!77539 () Bool)

(assert (=> b!147970 (= e!88032 (and tp!77540 tp!77539))))

(declare-fun b!147969 () Bool)

(assert (=> b!147969 (= e!88032 tp_is_empty!1599)))

(declare-fun b!147971 () Bool)

(declare-fun tp!77537 () Bool)

(assert (=> b!147971 (= e!88032 tp!77537)))

(declare-fun b!147972 () Bool)

(declare-fun tp!77538 () Bool)

(declare-fun tp!77536 () Bool)

(assert (=> b!147972 (= e!88032 (and tp!77538 tp!77536))))

(assert (= (and b!147102 ((_ is ElementMatch!663) (regTwo!1838 (regex!439 (rule!946 separatorToken!170))))) b!147969))

(assert (= (and b!147102 ((_ is Concat!1125) (regTwo!1838 (regex!439 (rule!946 separatorToken!170))))) b!147970))

(assert (= (and b!147102 ((_ is Star!663) (regTwo!1838 (regex!439 (rule!946 separatorToken!170))))) b!147971))

(assert (= (and b!147102 ((_ is Union!663) (regTwo!1838 (regex!439 (rule!946 separatorToken!170))))) b!147972))

(declare-fun e!88033 () Bool)

(declare-fun tp!77541 () Bool)

(declare-fun tp!77543 () Bool)

(declare-fun b!147973 () Bool)

(assert (=> b!147973 (= e!88033 (and (inv!3339 (left!1926 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))))) tp!77541 (inv!3339 (right!2256 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))))) tp!77543))))

(declare-fun b!147975 () Bool)

(declare-fun e!88034 () Bool)

(declare-fun tp!77542 () Bool)

(assert (=> b!147975 (= e!88034 tp!77542)))

(declare-fun b!147974 () Bool)

(assert (=> b!147974 (= e!88033 (and (inv!3346 (xs!3295 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))))) e!88034))))

(assert (=> b!147043 (= tp!77307 (and (inv!3339 (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465))))) e!88033))))

(assert (= (and b!147043 ((_ is Node!700) (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))))) b!147973))

(assert (= b!147974 b!147975))

(assert (= (and b!147043 ((_ is Leaf!1259) (c!29893 (dynLambda!877 (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (value!16827 (h!7951 tokens!465)))))) b!147974))

(declare-fun m!131369 () Bool)

(assert (=> b!147973 m!131369))

(declare-fun m!131371 () Bool)

(assert (=> b!147973 m!131371))

(declare-fun m!131373 () Bool)

(assert (=> b!147974 m!131373))

(assert (=> b!147043 m!129755))

(declare-fun b!147976 () Bool)

(declare-fun e!88035 () Bool)

(declare-fun tp!77544 () Bool)

(assert (=> b!147976 (= e!88035 (and tp_is_empty!1599 tp!77544))))

(assert (=> b!147083 (= tp!77338 e!88035)))

(assert (= (and b!147083 ((_ is Cons!2552) (originalCharacters!482 (h!7951 (t!24234 tokens!465))))) b!147976))

(declare-fun e!88036 () Bool)

(assert (=> b!147084 (= tp!77340 e!88036)))

(declare-fun b!147978 () Bool)

(declare-fun tp!77549 () Bool)

(declare-fun tp!77548 () Bool)

(assert (=> b!147978 (= e!88036 (and tp!77549 tp!77548))))

(declare-fun b!147977 () Bool)

(assert (=> b!147977 (= e!88036 tp_is_empty!1599)))

(declare-fun b!147979 () Bool)

(declare-fun tp!77546 () Bool)

(assert (=> b!147979 (= e!88036 tp!77546)))

(declare-fun b!147980 () Bool)

(declare-fun tp!77547 () Bool)

(declare-fun tp!77545 () Bool)

(assert (=> b!147980 (= e!88036 (and tp!77547 tp!77545))))

(assert (= (and b!147084 ((_ is ElementMatch!663) (regex!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) b!147977))

(assert (= (and b!147084 ((_ is Concat!1125) (regex!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) b!147978))

(assert (= (and b!147084 ((_ is Star!663) (regex!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) b!147979))

(assert (= (and b!147084 ((_ is Union!663) (regex!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) b!147980))

(declare-fun b!147984 () Bool)

(declare-fun b_free!5257 () Bool)

(declare-fun b_next!5257 () Bool)

(assert (=> b!147984 (= b_free!5257 (not b_next!5257))))

(declare-fun tp!77554 () Bool)

(declare-fun b_and!8233 () Bool)

(assert (=> b!147984 (= tp!77554 b_and!8233)))

(declare-fun b_free!5259 () Bool)

(declare-fun b_next!5259 () Bool)

(assert (=> b!147984 (= b_free!5259 (not b_next!5259))))

(declare-fun tb!4825 () Bool)

(declare-fun t!24428 () Bool)

(assert (=> (and b!147984 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 separatorToken!170)))) t!24428) tb!4825))

(declare-fun result!7216 () Bool)

(assert (= result!7216 result!7066))

(assert (=> b!147034 t!24428))

(declare-fun tb!4827 () Bool)

(declare-fun t!24430 () Bool)

(assert (=> (and b!147984 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 (ite c!29946 separatorToken!170 call!5810))))) t!24430) tb!4827))

(declare-fun result!7218 () Bool)

(assert (= result!7218 result!7192))

(assert (=> d!35355 t!24430))

(declare-fun t!24432 () Bool)

(declare-fun tb!4829 () Bool)

(assert (=> (and b!147984 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 (apply!321 lt!42310 0))))) t!24432) tb!4829))

(declare-fun result!7220 () Bool)

(assert (= result!7220 result!7146))

(assert (=> d!35265 t!24432))

(declare-fun tb!4831 () Bool)

(declare-fun t!24434 () Bool)

(assert (=> (and b!147984 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 (ite c!29945 call!5806 call!5810))))) t!24434) tb!4831))

(declare-fun result!7222 () Bool)

(assert (= result!7222 result!7106))

(assert (=> d!35105 t!24434))

(assert (=> d!35349 t!24428))

(declare-fun t!24436 () Bool)

(declare-fun tb!4833 () Bool)

(assert (=> (and b!147984 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465))))) t!24436) tb!4833))

(declare-fun result!7224 () Bool)

(assert (= result!7224 result!7074))

(assert (=> b!147041 t!24436))

(declare-fun t!24438 () Bool)

(declare-fun tb!4835 () Bool)

(assert (=> (and b!147984 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465)))))) t!24438) tb!4835))

(declare-fun result!7226 () Bool)

(assert (= result!7226 result!7136))

(assert (=> b!147566 t!24438))

(assert (=> d!35077 t!24436))

(declare-fun b_and!8235 () Bool)

(declare-fun tp!77552 () Bool)

(assert (=> b!147984 (= tp!77552 (and (=> t!24428 result!7216) (=> t!24438 result!7226) (=> t!24432 result!7220) (=> t!24436 result!7224) (=> t!24430 result!7218) (=> t!24434 result!7222) b_and!8235))))

(declare-fun e!88042 () Bool)

(assert (=> b!147082 (= tp!77337 e!88042)))

(declare-fun b!147982 () Bool)

(declare-fun e!88037 () Bool)

(declare-fun e!88039 () Bool)

(declare-fun tp!77551 () Bool)

(assert (=> b!147982 (= e!88039 (and (inv!21 (value!16827 (h!7951 (t!24234 (t!24234 tokens!465))))) e!88037 tp!77551))))

(declare-fun e!88040 () Bool)

(declare-fun tp!77553 () Bool)

(declare-fun b!147983 () Bool)

(assert (=> b!147983 (= e!88037 (and tp!77553 (inv!3332 (tag!617 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (inv!3335 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) e!88040))))

(declare-fun tp!77550 () Bool)

(declare-fun b!147981 () Bool)

(assert (=> b!147981 (= e!88042 (and (inv!3336 (h!7951 (t!24234 (t!24234 tokens!465)))) e!88039 tp!77550))))

(assert (=> b!147984 (= e!88040 (and tp!77554 tp!77552))))

(assert (= b!147983 b!147984))

(assert (= b!147982 b!147983))

(assert (= b!147981 b!147982))

(assert (= (and b!147082 ((_ is Cons!2554) (t!24234 (t!24234 tokens!465)))) b!147981))

(declare-fun m!131375 () Bool)

(assert (=> b!147982 m!131375))

(declare-fun m!131377 () Bool)

(assert (=> b!147983 m!131377))

(declare-fun m!131379 () Bool)

(assert (=> b!147983 m!131379))

(declare-fun m!131381 () Bool)

(assert (=> b!147981 m!131381))

(declare-fun e!88043 () Bool)

(assert (=> b!147099 (= tp!77355 e!88043)))

(declare-fun b!147986 () Bool)

(declare-fun tp!77559 () Bool)

(declare-fun tp!77558 () Bool)

(assert (=> b!147986 (= e!88043 (and tp!77559 tp!77558))))

(declare-fun b!147985 () Bool)

(assert (=> b!147985 (= e!88043 tp_is_empty!1599)))

(declare-fun b!147987 () Bool)

(declare-fun tp!77556 () Bool)

(assert (=> b!147987 (= e!88043 tp!77556)))

(declare-fun b!147988 () Bool)

(declare-fun tp!77557 () Bool)

(declare-fun tp!77555 () Bool)

(assert (=> b!147988 (= e!88043 (and tp!77557 tp!77555))))

(assert (= (and b!147099 ((_ is ElementMatch!663) (reg!992 (regex!439 (h!7950 rules!1920))))) b!147985))

(assert (= (and b!147099 ((_ is Concat!1125) (reg!992 (regex!439 (h!7950 rules!1920))))) b!147986))

(assert (= (and b!147099 ((_ is Star!663) (reg!992 (regex!439 (h!7950 rules!1920))))) b!147987))

(assert (= (and b!147099 ((_ is Union!663) (reg!992 (regex!439 (h!7950 rules!1920))))) b!147988))

(declare-fun e!88044 () Bool)

(assert (=> b!147100 (= tp!77356 e!88044)))

(declare-fun b!147990 () Bool)

(declare-fun tp!77564 () Bool)

(declare-fun tp!77563 () Bool)

(assert (=> b!147990 (= e!88044 (and tp!77564 tp!77563))))

(declare-fun b!147989 () Bool)

(assert (=> b!147989 (= e!88044 tp_is_empty!1599)))

(declare-fun b!147991 () Bool)

(declare-fun tp!77561 () Bool)

(assert (=> b!147991 (= e!88044 tp!77561)))

(declare-fun b!147992 () Bool)

(declare-fun tp!77562 () Bool)

(declare-fun tp!77560 () Bool)

(assert (=> b!147992 (= e!88044 (and tp!77562 tp!77560))))

(assert (= (and b!147100 ((_ is ElementMatch!663) (regOne!1839 (regex!439 (h!7950 rules!1920))))) b!147989))

(assert (= (and b!147100 ((_ is Concat!1125) (regOne!1839 (regex!439 (h!7950 rules!1920))))) b!147990))

(assert (= (and b!147100 ((_ is Star!663) (regOne!1839 (regex!439 (h!7950 rules!1920))))) b!147991))

(assert (= (and b!147100 ((_ is Union!663) (regOne!1839 (regex!439 (h!7950 rules!1920))))) b!147992))

(declare-fun e!88045 () Bool)

(assert (=> b!147100 (= tp!77354 e!88045)))

(declare-fun b!147994 () Bool)

(declare-fun tp!77569 () Bool)

(declare-fun tp!77568 () Bool)

(assert (=> b!147994 (= e!88045 (and tp!77569 tp!77568))))

(declare-fun b!147993 () Bool)

(assert (=> b!147993 (= e!88045 tp_is_empty!1599)))

(declare-fun b!147995 () Bool)

(declare-fun tp!77566 () Bool)

(assert (=> b!147995 (= e!88045 tp!77566)))

(declare-fun b!147996 () Bool)

(declare-fun tp!77567 () Bool)

(declare-fun tp!77565 () Bool)

(assert (=> b!147996 (= e!88045 (and tp!77567 tp!77565))))

(assert (= (and b!147100 ((_ is ElementMatch!663) (regTwo!1839 (regex!439 (h!7950 rules!1920))))) b!147993))

(assert (= (and b!147100 ((_ is Concat!1125) (regTwo!1839 (regex!439 (h!7950 rules!1920))))) b!147994))

(assert (= (and b!147100 ((_ is Star!663) (regTwo!1839 (regex!439 (h!7950 rules!1920))))) b!147995))

(assert (= (and b!147100 ((_ is Union!663) (regTwo!1839 (regex!439 (h!7950 rules!1920))))) b!147996))

(declare-fun e!88046 () Bool)

(assert (=> b!147069 (= tp!77326 e!88046)))

(declare-fun b!147998 () Bool)

(declare-fun tp!77574 () Bool)

(declare-fun tp!77573 () Bool)

(assert (=> b!147998 (= e!88046 (and tp!77574 tp!77573))))

(declare-fun b!147997 () Bool)

(assert (=> b!147997 (= e!88046 tp_is_empty!1599)))

(declare-fun b!147999 () Bool)

(declare-fun tp!77571 () Bool)

(assert (=> b!147999 (= e!88046 tp!77571)))

(declare-fun b!148000 () Bool)

(declare-fun tp!77572 () Bool)

(declare-fun tp!77570 () Bool)

(assert (=> b!148000 (= e!88046 (and tp!77572 tp!77570))))

(assert (= (and b!147069 ((_ is ElementMatch!663) (regOne!1838 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147997))

(assert (= (and b!147069 ((_ is Concat!1125) (regOne!1838 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147998))

(assert (= (and b!147069 ((_ is Star!663) (regOne!1838 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!147999))

(assert (= (and b!147069 ((_ is Union!663) (regOne!1838 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!148000))

(declare-fun e!88047 () Bool)

(assert (=> b!147069 (= tp!77325 e!88047)))

(declare-fun b!148002 () Bool)

(declare-fun tp!77579 () Bool)

(declare-fun tp!77578 () Bool)

(assert (=> b!148002 (= e!88047 (and tp!77579 tp!77578))))

(declare-fun b!148001 () Bool)

(assert (=> b!148001 (= e!88047 tp_is_empty!1599)))

(declare-fun b!148003 () Bool)

(declare-fun tp!77576 () Bool)

(assert (=> b!148003 (= e!88047 tp!77576)))

(declare-fun b!148004 () Bool)

(declare-fun tp!77577 () Bool)

(declare-fun tp!77575 () Bool)

(assert (=> b!148004 (= e!88047 (and tp!77577 tp!77575))))

(assert (= (and b!147069 ((_ is ElementMatch!663) (regTwo!1838 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!148001))

(assert (= (and b!147069 ((_ is Concat!1125) (regTwo!1838 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!148002))

(assert (= (and b!147069 ((_ is Star!663) (regTwo!1838 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!148003))

(assert (= (and b!147069 ((_ is Union!663) (regTwo!1838 (regex!439 (rule!946 (h!7951 tokens!465)))))) b!148004))

(declare-fun e!88048 () Bool)

(assert (=> b!147098 (= tp!77358 e!88048)))

(declare-fun b!148006 () Bool)

(declare-fun tp!77584 () Bool)

(declare-fun tp!77583 () Bool)

(assert (=> b!148006 (= e!88048 (and tp!77584 tp!77583))))

(declare-fun b!148005 () Bool)

(assert (=> b!148005 (= e!88048 tp_is_empty!1599)))

(declare-fun b!148007 () Bool)

(declare-fun tp!77581 () Bool)

(assert (=> b!148007 (= e!88048 tp!77581)))

(declare-fun b!148008 () Bool)

(declare-fun tp!77582 () Bool)

(declare-fun tp!77580 () Bool)

(assert (=> b!148008 (= e!88048 (and tp!77582 tp!77580))))

(assert (= (and b!147098 ((_ is ElementMatch!663) (regOne!1838 (regex!439 (h!7950 rules!1920))))) b!148005))

(assert (= (and b!147098 ((_ is Concat!1125) (regOne!1838 (regex!439 (h!7950 rules!1920))))) b!148006))

(assert (= (and b!147098 ((_ is Star!663) (regOne!1838 (regex!439 (h!7950 rules!1920))))) b!148007))

(assert (= (and b!147098 ((_ is Union!663) (regOne!1838 (regex!439 (h!7950 rules!1920))))) b!148008))

(declare-fun e!88049 () Bool)

(assert (=> b!147098 (= tp!77357 e!88049)))

(declare-fun b!148010 () Bool)

(declare-fun tp!77589 () Bool)

(declare-fun tp!77588 () Bool)

(assert (=> b!148010 (= e!88049 (and tp!77589 tp!77588))))

(declare-fun b!148009 () Bool)

(assert (=> b!148009 (= e!88049 tp_is_empty!1599)))

(declare-fun b!148011 () Bool)

(declare-fun tp!77586 () Bool)

(assert (=> b!148011 (= e!88049 tp!77586)))

(declare-fun b!148012 () Bool)

(declare-fun tp!77587 () Bool)

(declare-fun tp!77585 () Bool)

(assert (=> b!148012 (= e!88049 (and tp!77587 tp!77585))))

(assert (= (and b!147098 ((_ is ElementMatch!663) (regTwo!1838 (regex!439 (h!7950 rules!1920))))) b!148009))

(assert (= (and b!147098 ((_ is Concat!1125) (regTwo!1838 (regex!439 (h!7950 rules!1920))))) b!148010))

(assert (= (and b!147098 ((_ is Star!663) (regTwo!1838 (regex!439 (h!7950 rules!1920))))) b!148011))

(assert (= (and b!147098 ((_ is Union!663) (regTwo!1838 (regex!439 (h!7950 rules!1920))))) b!148012))

(declare-fun b_lambda!2563 () Bool)

(assert (= b_lambda!2561 (or b!146702 b_lambda!2563)))

(declare-fun bs!13432 () Bool)

(declare-fun d!35393 () Bool)

(assert (= bs!13432 (and d!35393 b!146702)))

(assert (=> bs!13432 (= (dynLambda!876 lambda!3632 (h!7951 (t!24234 tokens!465))) (not (isSeparator!439 (rule!946 (h!7951 (t!24234 tokens!465))))))))

(assert (=> b!147906 d!35393))

(declare-fun b_lambda!2565 () Bool)

(assert (= b_lambda!2527 (or (and b!146712 b_free!5227 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))))) (and b!147085 b_free!5239) (and b!146717 b_free!5223 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))))) (and b!147096 b_free!5243 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))))) (and b!147922 b_free!5255 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))))) (and b!146718 b_free!5219 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))))) (and b!147984 b_free!5259 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))))) b_lambda!2565)))

(declare-fun b_lambda!2567 () Bool)

(assert (= b_lambda!2509 (or (and b!146718 b_free!5219 (= (toChars!925 (transformation!439 (rule!946 separatorToken!170))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!147984 b_free!5259 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!147085 b_free!5239 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!147096 b_free!5243 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!146717 b_free!5223 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!147922 b_free!5255 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))))) (and b!146712 b_free!5227) b_lambda!2567)))

(declare-fun b_lambda!2569 () Bool)

(assert (= b_lambda!2557 (or (and b!147984 b_free!5259 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 (t!24234 tokens!465)))))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) (and b!146718 b_free!5219) (and b!147922 b_free!5255 (= (toChars!925 (transformation!439 (h!7950 (t!24233 (t!24233 rules!1920))))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) (and b!146712 b_free!5227 (= (toChars!925 (transformation!439 (rule!946 (h!7951 tokens!465)))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) (and b!147096 b_free!5243 (= (toChars!925 (transformation!439 (h!7950 (t!24233 rules!1920)))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) (and b!147085 b_free!5239 (= (toChars!925 (transformation!439 (rule!946 (h!7951 (t!24234 tokens!465))))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) (and b!146717 b_free!5223 (= (toChars!925 (transformation!439 (h!7950 rules!1920))) (toChars!925 (transformation!439 (rule!946 separatorToken!170))))) b_lambda!2569)))

(declare-fun b_lambda!2571 () Bool)

(assert (= b_lambda!2507 (or b!146831 b_lambda!2571)))

(declare-fun bs!13433 () Bool)

(declare-fun d!35395 () Bool)

(assert (= bs!13433 (and d!35395 b!146831)))

(assert (=> bs!13433 (= (dynLambda!876 lambda!3642 (h!7951 tokens!465)) (rulesProduceIndividualToken!74 thiss!17480 rules!1920 (h!7951 tokens!465)))))

(declare-fun m!131383 () Bool)

(assert (=> bs!13433 m!131383))

(assert (=> d!35073 d!35395))

(declare-fun b_lambda!2573 () Bool)

(assert (= b_lambda!2529 (or d!34967 b_lambda!2573)))

(declare-fun bs!13434 () Bool)

(declare-fun d!35397 () Bool)

(assert (= bs!13434 (and d!35397 d!34967)))

(assert (=> bs!13434 (= (dynLambda!876 lambda!3660 (h!7951 (list!884 lt!42310))) (rulesProduceIndividualToken!74 thiss!17480 rules!1920 (h!7951 (list!884 lt!42310))))))

(assert (=> bs!13434 m!130013))

(assert (=> b!147581 d!35397))

(declare-fun b_lambda!2575 () Bool)

(assert (= b_lambda!2533 (or b!146918 b_lambda!2575)))

(declare-fun bs!13435 () Bool)

(declare-fun d!35399 () Bool)

(assert (= bs!13435 (and d!35399 b!146918)))

(assert (=> bs!13435 (= (dynLambda!876 lambda!3655 (apply!321 lt!42310 0)) (rulesProduceIndividualToken!74 thiss!17480 rules!1920 (apply!321 lt!42310 0)))))

(assert (=> bs!13435 m!129645))

(declare-fun m!131385 () Bool)

(assert (=> bs!13435 m!131385))

(assert (=> d!35255 d!35399))

(declare-fun b_lambda!2577 () Bool)

(assert (= b_lambda!2531 (or b!146702 b_lambda!2577)))

(declare-fun bs!13436 () Bool)

(declare-fun d!35401 () Bool)

(assert (= bs!13436 (and d!35401 b!146702)))

(assert (=> bs!13436 (= (dynLambda!876 lambda!3632 (h!7951 (list!884 lt!42310))) (not (isSeparator!439 (rule!946 (h!7951 (list!884 lt!42310))))))))

(assert (=> b!147583 d!35401))

(check-sat (not d!35245) (not b!147655) (not b!147943) (not bm!5861) (not b_lambda!2559) (not bm!5858) (not b!147886) (not b!147961) (not b!147987) (not d!35105) (not b!147647) (not d!35355) (not d!35367) b_and!8097 (not b!147909) (not b!147913) b_and!8053 (not b!147971) (not b!147322) b_and!8219 (not b!147921) (not b!147670) (not d!35155) (not b!147603) (not b!147184) (not b_lambda!2577) (not b!147930) (not d!35241) (not b!147309) (not b!147908) (not d!35153) (not b!147873) (not b_lambda!2565) (not d!35227) (not b!147373) (not d!35243) (not d!35157) (not b!147917) (not b!147619) (not d!35259) (not b!147915) (not d!35075) (not b!147307) (not b!147962) (not b!147867) (not b!147599) (not tb!4759) (not b!147874) (not d!35345) (not d!35183) (not b!147983) (not b!148012) (not d!35381) (not b!147995) tp_is_empty!1599 (not d!35077) (not b!147311) (not b!147407) (not d!35173) (not b!147316) (not d!35171) (not b!147329) (not d!35253) (not d!35247) (not b!147370) (not d!35035) (not d!35065) (not b!147968) (not bs!13433) (not b!147567) (not d!35383) (not b_lambda!2563) (not tb!4749) (not b!147263) (not b!147568) (not b!147907) (not b!147979) (not b!147561) (not b!147871) (not bm!5863) (not d!35103) (not b!147595) b_and!8223 (not b!147999) (not d!35083) (not b_lambda!2511) (not bm!5860) (not b!148004) (not b!147405) (not b!147659) (not b!148006) (not b!147324) (not b!147940) (not d!35095) (not b_lambda!2575) (not d!35219) (not b!147994) (not b!147520) (not d!35161) (not b_next!5239) (not b!147646) (not b!147265) (not b!147509) (not b!147563) (not d!35197) (not b_lambda!2567) (not b_lambda!2501) (not b!147877) (not b!147876) (not b!147919) (not b_lambda!2499) (not d!35043) (not b!147602) b_and!8225 (not b!147945) (not bm!5842) (not b!147328) (not b!147887) (not b!147396) (not b!147369) (not b!147371) (not b_next!5221) (not d!35365) (not b!147958) (not d!35351) (not d!35349) b_and!8233 (not b!147313) (not d!35073) (not b!147609) (not b!147578) (not bm!5821) (not b!147678) (not d!35111) (not b_lambda!2535) (not b!147955) (not d!35373) (not b!147939) (not b!147601) (not b!148008) (not d!35265) (not d!35239) (not b!147941) (not d!35081) (not b!147272) (not b_next!5223) (not b!147978) (not d!35167) (not b!147508) (not b!147944) (not b!147195) (not b!147398) (not b_lambda!2573) (not b_next!5217) (not d!35041) (not b!147333) (not d!35353) (not b!147980) b_and!8229 (not bm!5848) (not b!147954) (not b!148003) b_and!8235 (not b!147982) (not b!147866) (not d!35261) (not b!147974) (not b_next!5255) (not b!147654) (not b!147973) (not b_lambda!2497) (not d!35223) (not b!147975) (not b!147531) (not b!147596) (not b!147043) (not d!35085) (not b!147929) (not b!147895) (not b!147511) (not d!35071) (not b_next!5237) (not b!147604) (not b!147872) b_and!8093 (not b!147981) (not b!147607) (not b!147545) (not d!35107) b_and!8227 (not b!147668) (not b!147639) (not b!147911) (not b!147888) (not b!147967) (not b!148010) (not b_next!5219) (not b!147612) (not b!147894) (not b!147308) (not b!147273) (not d!35229) b_and!8221 (not b!147988) (not b!147529) (not b!147976) b_and!8231 (not b!147606) (not b!147562) (not b!147897) (not bm!5823) (not bm!5840) (not b!147865) (not b!147345) (not b_next!5243) (not b!147196) (not b!147949) (not b!147661) (not b!147310) (not b!147340) (not b!147914) (not b!147918) (not b!147488) (not d!35233) (not b!148000) (not b!147321) (not b!147990) (not b!147966) (not b!147594) (not b!147875) (not bm!5826) (not bs!13434) (not b!147582) (not d!35267) (not b!147889) (not d!35235) (not d!35059) (not b!147992) (not b!148002) (not b_next!5259) b_and!8049 (not d!35181) (not b!147560) (not b!147972) (not b!147040) (not d!35113) (not b_next!5225) (not b!147315) (not bm!5849) (not b_lambda!2569) (not d!35257) (not d!35141) (not b!147998) (not b_next!5241) (not b!147521) (not bm!5845) (not bm!5825) (not b!147584) (not b!147490) (not b!147397) (not b!147598) (not b!147318) (not b!147948) (not d!35215) (not d!35169) (not b!147946) (not d!35347) (not tb!4719) (not b_lambda!2571) (not b!147870) (not b!147656) (not b!147522) (not b!147891) (not b!147996) (not b!147342) (not b!147614) (not b!147264) (not b!147565) (not d!35255) (not d!35211) (not tb!4803) (not b!147610) (not b_next!5227) (not d!35363) (not d!35263) (not b!147677) b_and!8057 (not d!35377) (not d!35165) (not b!147905) (not b!147986) (not b!148011) (not bs!13435) (not b!147489) (not d!35357) (not b!147924) (not d!35391) (not b!148007) (not b!147869) (not d!35109) (not d!35217) (not b!147950) (not bm!5841) (not d!35249) (not bm!5843) (not b!147970) (not b!147207) (not b_next!5253) (not b!147952) (not bm!5824) (not b!147920) (not b_next!5257) (not bm!5862) (not b!147926) (not d!35159) (not b!147279) (not b!147953) (not b!147314) (not b!147566) (not bm!5850) (not d!35359) (not b!147991) (not b!147925) (not d!35387) (not b!147564) (not b!147206) (not b!147928) (not d!35371))
(check-sat b_and!8097 b_and!8223 (not b_next!5239) b_and!8225 (not b_next!5223) (not b_next!5217) (not b_next!5255) (not b_next!5219) (not b_next!5243) (not b_next!5241) (not b_next!5227) b_and!8057 (not b_next!5253) (not b_next!5257) b_and!8053 b_and!8219 (not b_next!5221) b_and!8233 b_and!8235 b_and!8229 b_and!8093 b_and!8227 (not b_next!5237) b_and!8231 b_and!8221 (not b_next!5225) (not b_next!5259) b_and!8049)
