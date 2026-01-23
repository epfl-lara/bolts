; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!326898 () Bool)

(assert start!326898)

(declare-fun b!3519407 () Bool)

(declare-fun b_free!90689 () Bool)

(declare-fun b_next!91393 () Bool)

(assert (=> b!3519407 (= b_free!90689 (not b_next!91393))))

(declare-fun tp!1086747 () Bool)

(declare-fun b_and!250603 () Bool)

(assert (=> b!3519407 (= tp!1086747 b_and!250603)))

(declare-fun b_free!90691 () Bool)

(declare-fun b_next!91395 () Bool)

(assert (=> b!3519407 (= b_free!90691 (not b_next!91395))))

(declare-fun tp!1086758 () Bool)

(declare-fun b_and!250605 () Bool)

(assert (=> b!3519407 (= tp!1086758 b_and!250605)))

(declare-fun b!3519431 () Bool)

(declare-fun b_free!90693 () Bool)

(declare-fun b_next!91397 () Bool)

(assert (=> b!3519431 (= b_free!90693 (not b_next!91397))))

(declare-fun tp!1086755 () Bool)

(declare-fun b_and!250607 () Bool)

(assert (=> b!3519431 (= tp!1086755 b_and!250607)))

(declare-fun b_free!90695 () Bool)

(declare-fun b_next!91399 () Bool)

(assert (=> b!3519431 (= b_free!90695 (not b_next!91399))))

(declare-fun tp!1086752 () Bool)

(declare-fun b_and!250609 () Bool)

(assert (=> b!3519431 (= tp!1086752 b_and!250609)))

(declare-fun b!3519424 () Bool)

(declare-fun b_free!90697 () Bool)

(declare-fun b_next!91401 () Bool)

(assert (=> b!3519424 (= b_free!90697 (not b_next!91401))))

(declare-fun tp!1086746 () Bool)

(declare-fun b_and!250611 () Bool)

(assert (=> b!3519424 (= tp!1086746 b_and!250611)))

(declare-fun b_free!90699 () Bool)

(declare-fun b_next!91403 () Bool)

(assert (=> b!3519424 (= b_free!90699 (not b_next!91403))))

(declare-fun tp!1086757 () Bool)

(declare-fun b_and!250613 () Bool)

(assert (=> b!3519424 (= tp!1086757 b_and!250613)))

(declare-fun bs!565205 () Bool)

(declare-fun b!3519432 () Bool)

(declare-fun b!3519415 () Bool)

(assert (= bs!565205 (and b!3519432 b!3519415)))

(declare-fun lambda!122713 () Int)

(declare-fun lambda!122712 () Int)

(assert (=> bs!565205 (not (= lambda!122713 lambda!122712))))

(declare-fun b!3519448 () Bool)

(declare-fun e!2178442 () Bool)

(assert (=> b!3519448 (= e!2178442 true)))

(declare-fun b!3519447 () Bool)

(declare-fun e!2178441 () Bool)

(assert (=> b!3519447 (= e!2178441 e!2178442)))

(declare-fun b!3519446 () Bool)

(declare-fun e!2178440 () Bool)

(assert (=> b!3519446 (= e!2178440 e!2178441)))

(assert (=> b!3519432 e!2178440))

(assert (= b!3519447 b!3519448))

(assert (= b!3519446 b!3519447))

(declare-datatypes ((C!20652 0))(
  ( (C!20653 (val!12374 Int)) )
))
(declare-datatypes ((Regex!10233 0))(
  ( (ElementMatch!10233 (c!606536 C!20652)) (Concat!15937 (regOne!20978 Regex!10233) (regTwo!20978 Regex!10233)) (EmptyExpr!10233) (Star!10233 (reg!10562 Regex!10233)) (EmptyLang!10233) (Union!10233 (regOne!20979 Regex!10233) (regTwo!20979 Regex!10233)) )
))
(declare-datatypes ((List!37456 0))(
  ( (Nil!37332) (Cons!37332 (h!42752 (_ BitVec 16)) (t!281561 List!37456)) )
))
(declare-datatypes ((TokenValue!5704 0))(
  ( (FloatLiteralValue!11408 (text!40373 List!37456)) (TokenValueExt!5703 (__x!23625 Int)) (Broken!28520 (value!176443 List!37456)) (Object!5827) (End!5704) (Def!5704) (Underscore!5704) (Match!5704) (Else!5704) (Error!5704) (Case!5704) (If!5704) (Extends!5704) (Abstract!5704) (Class!5704) (Val!5704) (DelimiterValue!11408 (del!5764 List!37456)) (KeywordValue!5710 (value!176444 List!37456)) (CommentValue!11408 (value!176445 List!37456)) (WhitespaceValue!11408 (value!176446 List!37456)) (IndentationValue!5704 (value!176447 List!37456)) (String!41853) (Int32!5704) (Broken!28521 (value!176448 List!37456)) (Boolean!5705) (Unit!52983) (OperatorValue!5707 (op!5764 List!37456)) (IdentifierValue!11408 (value!176449 List!37456)) (IdentifierValue!11409 (value!176450 List!37456)) (WhitespaceValue!11409 (value!176451 List!37456)) (True!11408) (False!11408) (Broken!28522 (value!176452 List!37456)) (Broken!28523 (value!176453 List!37456)) (True!11409) (RightBrace!5704) (RightBracket!5704) (Colon!5704) (Null!5704) (Comma!5704) (LeftBracket!5704) (False!11409) (LeftBrace!5704) (ImaginaryLiteralValue!5704 (text!40374 List!37456)) (StringLiteralValue!17112 (value!176454 List!37456)) (EOFValue!5704 (value!176455 List!37456)) (IdentValue!5704 (value!176456 List!37456)) (DelimiterValue!11409 (value!176457 List!37456)) (DedentValue!5704 (value!176458 List!37456)) (NewLineValue!5704 (value!176459 List!37456)) (IntegerValue!17112 (value!176460 (_ BitVec 32)) (text!40375 List!37456)) (IntegerValue!17113 (value!176461 Int) (text!40376 List!37456)) (Times!5704) (Or!5704) (Equal!5704) (Minus!5704) (Broken!28524 (value!176462 List!37456)) (And!5704) (Div!5704) (LessEqual!5704) (Mod!5704) (Concat!15938) (Not!5704) (Plus!5704) (SpaceValue!5704 (value!176463 List!37456)) (IntegerValue!17114 (value!176464 Int) (text!40377 List!37456)) (StringLiteralValue!17113 (text!40378 List!37456)) (FloatLiteralValue!11409 (text!40379 List!37456)) (BytesLiteralValue!5704 (value!176465 List!37456)) (CommentValue!11409 (value!176466 List!37456)) (StringLiteralValue!17114 (value!176467 List!37456)) (ErrorTokenValue!5704 (msg!5765 List!37456)) )
))
(declare-datatypes ((List!37457 0))(
  ( (Nil!37333) (Cons!37333 (h!42753 C!20652) (t!281562 List!37457)) )
))
(declare-datatypes ((IArray!22651 0))(
  ( (IArray!22652 (innerList!11383 List!37457)) )
))
(declare-datatypes ((Conc!11323 0))(
  ( (Node!11323 (left!29158 Conc!11323) (right!29488 Conc!11323) (csize!22876 Int) (cheight!11534 Int)) (Leaf!17671 (xs!14513 IArray!22651) (csize!22877 Int)) (Empty!11323) )
))
(declare-datatypes ((BalanceConc!22260 0))(
  ( (BalanceConc!22261 (c!606537 Conc!11323)) )
))
(declare-datatypes ((String!41854 0))(
  ( (String!41855 (value!176468 String)) )
))
(declare-datatypes ((TokenValueInjection!10836 0))(
  ( (TokenValueInjection!10837 (toValue!7726 Int) (toChars!7585 Int)) )
))
(declare-datatypes ((Rule!10748 0))(
  ( (Rule!10749 (regex!5474 Regex!10233) (tag!6110 String!41854) (isSeparator!5474 Bool) (transformation!5474 TokenValueInjection!10836)) )
))
(declare-datatypes ((List!37458 0))(
  ( (Nil!37334) (Cons!37334 (h!42754 Rule!10748) (t!281563 List!37458)) )
))
(declare-fun rules!2135 () List!37458)

(get-info :version)

(assert (= (and b!3519432 ((_ is Cons!37334) rules!2135)) b!3519446))

(declare-fun order!20075 () Int)

(declare-fun order!20073 () Int)

(declare-fun dynLambda!15892 (Int Int) Int)

(declare-fun dynLambda!15893 (Int Int) Int)

(assert (=> b!3519448 (< (dynLambda!15892 order!20073 (toValue!7726 (transformation!5474 (h!42754 rules!2135)))) (dynLambda!15893 order!20075 lambda!122713))))

(declare-fun order!20077 () Int)

(declare-fun dynLambda!15894 (Int Int) Int)

(assert (=> b!3519448 (< (dynLambda!15894 order!20077 (toChars!7585 (transformation!5474 (h!42754 rules!2135)))) (dynLambda!15893 order!20075 lambda!122713))))

(assert (=> b!3519432 true))

(declare-fun e!2178411 () Bool)

(declare-fun tp!1086754 () Bool)

(declare-fun b!3519397 () Bool)

(declare-datatypes ((Token!10314 0))(
  ( (Token!10315 (value!176469 TokenValue!5704) (rule!8116 Rule!10748) (size!28399 Int) (originalCharacters!6188 List!37457)) )
))
(declare-datatypes ((List!37459 0))(
  ( (Nil!37335) (Cons!37335 (h!42755 Token!10314) (t!281564 List!37459)) )
))
(declare-fun tokens!494 () List!37459)

(declare-fun e!2178427 () Bool)

(declare-fun inv!21 (TokenValue!5704) Bool)

(assert (=> b!3519397 (= e!2178411 (and (inv!21 (value!176469 (h!42755 tokens!494))) e!2178427 tp!1086754))))

(declare-fun tp!1086751 () Bool)

(declare-fun b!3519398 () Bool)

(declare-fun e!2178420 () Bool)

(declare-fun separatorToken!241 () Token!10314)

(declare-fun e!2178431 () Bool)

(declare-fun inv!50563 (String!41854) Bool)

(declare-fun inv!50566 (TokenValueInjection!10836) Bool)

(assert (=> b!3519398 (= e!2178431 (and tp!1086751 (inv!50563 (tag!6110 (rule!8116 separatorToken!241))) (inv!50566 (transformation!5474 (rule!8116 separatorToken!241))) e!2178420))))

(declare-fun res!1419244 () Bool)

(declare-fun e!2178412 () Bool)

(assert (=> start!326898 (=> (not res!1419244) (not e!2178412))))

(declare-datatypes ((LexerInterface!5063 0))(
  ( (LexerInterfaceExt!5060 (__x!23626 Int)) (Lexer!5061) )
))
(declare-fun thiss!18206 () LexerInterface!5063)

(assert (=> start!326898 (= res!1419244 ((_ is Lexer!5061) thiss!18206))))

(assert (=> start!326898 e!2178412))

(assert (=> start!326898 true))

(declare-fun e!2178425 () Bool)

(assert (=> start!326898 e!2178425))

(declare-fun e!2178421 () Bool)

(assert (=> start!326898 e!2178421))

(declare-fun e!2178432 () Bool)

(declare-fun inv!50567 (Token!10314) Bool)

(assert (=> start!326898 (and (inv!50567 separatorToken!241) e!2178432)))

(declare-fun tp!1086756 () Bool)

(declare-fun b!3519399 () Bool)

(assert (=> b!3519399 (= e!2178421 (and (inv!50567 (h!42755 tokens!494)) e!2178411 tp!1086756))))

(declare-fun b!3519400 () Bool)

(declare-fun e!2178429 () Bool)

(declare-fun e!2178409 () Bool)

(assert (=> b!3519400 (= e!2178429 e!2178409)))

(declare-fun res!1419246 () Bool)

(assert (=> b!3519400 (=> res!1419246 e!2178409)))

(declare-fun lt!1201271 () BalanceConc!22260)

(declare-datatypes ((IArray!22653 0))(
  ( (IArray!22654 (innerList!11384 List!37459)) )
))
(declare-datatypes ((Conc!11324 0))(
  ( (Node!11324 (left!29159 Conc!11324) (right!29489 Conc!11324) (csize!22878 Int) (cheight!11535 Int)) (Leaf!17672 (xs!14514 IArray!22653) (csize!22879 Int)) (Empty!11324) )
))
(declare-datatypes ((BalanceConc!22262 0))(
  ( (BalanceConc!22263 (c!606538 Conc!11324)) )
))
(declare-fun isEmpty!21787 (BalanceConc!22262) Bool)

(declare-datatypes ((tuple2!37160 0))(
  ( (tuple2!37161 (_1!21714 BalanceConc!22262) (_2!21714 BalanceConc!22260)) )
))
(declare-fun lex!2389 (LexerInterface!5063 List!37458 BalanceConc!22260) tuple2!37160)

(assert (=> b!3519400 (= res!1419246 (isEmpty!21787 (_1!21714 (lex!2389 thiss!18206 rules!2135 lt!1201271))))))

(declare-fun lt!1201309 () List!37457)

(declare-fun seqFromList!4001 (List!37457) BalanceConc!22260)

(assert (=> b!3519400 (= lt!1201271 (seqFromList!4001 lt!1201309))))

(declare-fun b!3519401 () Bool)

(declare-fun e!2178423 () Bool)

(declare-fun lt!1201296 () Rule!10748)

(assert (=> b!3519401 (= e!2178423 (= (rule!8116 (h!42755 (t!281564 tokens!494))) lt!1201296))))

(declare-fun b!3519402 () Bool)

(declare-fun e!2178408 () Bool)

(declare-fun validRegex!4672 (Regex!10233) Bool)

(assert (=> b!3519402 (= e!2178408 (validRegex!4672 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun b!3519403 () Bool)

(declare-fun e!2178415 () Bool)

(assert (=> b!3519403 (= e!2178415 e!2178429)))

(declare-fun res!1419225 () Bool)

(assert (=> b!3519403 (=> res!1419225 e!2178429)))

(declare-fun lt!1201275 () List!37457)

(declare-fun lt!1201298 () List!37457)

(assert (=> b!3519403 (= res!1419225 (or (not (= lt!1201275 lt!1201309)) (not (= lt!1201298 lt!1201309))))))

(declare-fun list!13653 (BalanceConc!22260) List!37457)

(declare-fun charsOf!3488 (Token!10314) BalanceConc!22260)

(assert (=> b!3519403 (= lt!1201309 (list!13653 (charsOf!3488 (h!42755 tokens!494))))))

(declare-fun tp!1086749 () Bool)

(declare-fun e!2178426 () Bool)

(declare-fun b!3519404 () Bool)

(assert (=> b!3519404 (= e!2178427 (and tp!1086749 (inv!50563 (tag!6110 (rule!8116 (h!42755 tokens!494)))) (inv!50566 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) e!2178426))))

(declare-fun b!3519405 () Bool)

(declare-fun e!2178404 () Bool)

(declare-fun lt!1201311 () tuple2!37160)

(declare-fun isEmpty!21788 (BalanceConc!22260) Bool)

(assert (=> b!3519405 (= e!2178404 (not (isEmpty!21788 (_2!21714 lt!1201311))))))

(declare-fun b!3519406 () Bool)

(declare-fun res!1419221 () Bool)

(assert (=> b!3519406 (=> (not res!1419221) (not e!2178412))))

(declare-fun isEmpty!21789 (List!37458) Bool)

(assert (=> b!3519406 (= res!1419221 (not (isEmpty!21789 rules!2135)))))

(assert (=> b!3519407 (= e!2178420 (and tp!1086747 tp!1086758))))

(declare-fun b!3519408 () Bool)

(declare-fun res!1419239 () Bool)

(assert (=> b!3519408 (=> res!1419239 e!2178404)))

(declare-fun apply!8888 (BalanceConc!22262 Int) Token!10314)

(assert (=> b!3519408 (= res!1419239 (not (= (apply!8888 (_1!21714 lt!1201311) 0) (h!42755 (t!281564 tokens!494)))))))

(declare-fun tp!1086753 () Bool)

(declare-fun b!3519409 () Bool)

(assert (=> b!3519409 (= e!2178432 (and (inv!21 (value!176469 separatorToken!241)) e!2178431 tp!1086753))))

(declare-fun b!3519410 () Bool)

(declare-fun e!2178433 () Bool)

(declare-fun lt!1201300 () tuple2!37160)

(assert (=> b!3519410 (= e!2178433 (isEmpty!21788 (_2!21714 lt!1201300)))))

(declare-fun b!3519411 () Bool)

(declare-datatypes ((Unit!52984 0))(
  ( (Unit!52985) )
))
(declare-fun e!2178413 () Unit!52984)

(declare-fun Unit!52986 () Unit!52984)

(assert (=> b!3519411 (= e!2178413 Unit!52986)))

(declare-fun b!3519412 () Bool)

(declare-fun e!2178428 () Bool)

(declare-fun e!2178414 () Bool)

(assert (=> b!3519412 (= e!2178428 e!2178414)))

(declare-fun res!1419233 () Bool)

(assert (=> b!3519412 (=> res!1419233 e!2178414)))

(declare-fun lt!1201307 () List!37457)

(declare-fun lt!1201278 () List!37457)

(declare-fun lt!1201272 () List!37457)

(declare-fun ++!9249 (List!37457 List!37457) List!37457)

(declare-fun printWithSeparatorTokenList!350 (LexerInterface!5063 List!37459 Token!10314) List!37457)

(assert (=> b!3519412 (= res!1419233 (not (= lt!1201307 (++!9249 (++!9249 lt!1201278 lt!1201272) (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241)))))))

(assert (=> b!3519412 (= lt!1201278 (list!13653 (charsOf!3488 (h!42755 (t!281564 tokens!494)))))))

(declare-fun lt!1201283 () List!37457)

(assert (=> b!3519412 (= lt!1201283 (++!9249 lt!1201272 lt!1201307))))

(assert (=> b!3519412 (= lt!1201272 (list!13653 (charsOf!3488 separatorToken!241)))))

(assert (=> b!3519412 (= lt!1201307 (printWithSeparatorTokenList!350 thiss!18206 (t!281564 tokens!494) separatorToken!241))))

(declare-fun lt!1201312 () List!37457)

(assert (=> b!3519412 (= lt!1201312 (printWithSeparatorTokenList!350 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3519413 () Bool)

(declare-fun e!2178410 () Bool)

(declare-fun lt!1201306 () Rule!10748)

(assert (=> b!3519413 (= e!2178410 (= (rule!8116 separatorToken!241) lt!1201306))))

(declare-fun b!3519414 () Bool)

(declare-fun e!2178417 () Bool)

(declare-fun lt!1201295 () Rule!10748)

(assert (=> b!3519414 (= e!2178417 (= (rule!8116 (h!42755 tokens!494)) lt!1201295))))

(declare-fun res!1419237 () Bool)

(assert (=> b!3519415 (=> (not res!1419237) (not e!2178412))))

(declare-fun forall!8025 (List!37459 Int) Bool)

(assert (=> b!3519415 (= res!1419237 (forall!8025 tokens!494 lambda!122712))))

(declare-fun b!3519416 () Bool)

(declare-fun e!2178401 () Bool)

(assert (=> b!3519416 (= e!2178401 e!2178410)))

(declare-fun res!1419227 () Bool)

(assert (=> b!3519416 (=> (not res!1419227) (not e!2178410))))

(declare-fun matchR!4817 (Regex!10233 List!37457) Bool)

(assert (=> b!3519416 (= res!1419227 (matchR!4817 (regex!5474 lt!1201306) lt!1201272))))

(declare-datatypes ((Option!7609 0))(
  ( (None!7608) (Some!7608 (v!37090 Rule!10748)) )
))
(declare-fun lt!1201282 () Option!7609)

(declare-fun get!11984 (Option!7609) Rule!10748)

(assert (=> b!3519416 (= lt!1201306 (get!11984 lt!1201282))))

(declare-fun b!3519417 () Bool)

(declare-fun res!1419235 () Bool)

(assert (=> b!3519417 (=> (not res!1419235) (not e!2178433))))

(assert (=> b!3519417 (= res!1419235 (= (apply!8888 (_1!21714 lt!1201300) 0) separatorToken!241))))

(declare-fun b!3519418 () Bool)

(declare-fun res!1419222 () Bool)

(assert (=> b!3519418 (=> (not res!1419222) (not e!2178412))))

(assert (=> b!3519418 (= res!1419222 (and (not ((_ is Nil!37335) tokens!494)) (not ((_ is Nil!37335) (t!281564 tokens!494)))))))

(declare-fun b!3519419 () Bool)

(declare-fun e!2178418 () Bool)

(assert (=> b!3519419 (= e!2178418 e!2178417)))

(declare-fun res!1419247 () Bool)

(assert (=> b!3519419 (=> (not res!1419247) (not e!2178417))))

(assert (=> b!3519419 (= res!1419247 (matchR!4817 (regex!5474 lt!1201295) lt!1201309))))

(declare-fun lt!1201308 () Option!7609)

(assert (=> b!3519419 (= lt!1201295 (get!11984 lt!1201308))))

(declare-fun b!3519420 () Bool)

(declare-fun res!1419248 () Bool)

(assert (=> b!3519420 (=> (not res!1419248) (not e!2178412))))

(declare-fun rulesProduceEachTokenIndividually!1514 (LexerInterface!5063 List!37458 BalanceConc!22262) Bool)

(declare-fun seqFromList!4002 (List!37459) BalanceConc!22262)

(assert (=> b!3519420 (= res!1419248 (rulesProduceEachTokenIndividually!1514 thiss!18206 rules!2135 (seqFromList!4002 tokens!494)))))

(declare-fun b!3519421 () Bool)

(declare-fun res!1419230 () Bool)

(assert (=> b!3519421 (=> (not res!1419230) (not e!2178412))))

(declare-fun rulesInvariant!4460 (LexerInterface!5063 List!37458) Bool)

(assert (=> b!3519421 (= res!1419230 (rulesInvariant!4460 thiss!18206 rules!2135))))

(declare-fun b!3519422 () Bool)

(declare-fun e!2178406 () Bool)

(assert (=> b!3519422 (= e!2178414 e!2178406)))

(declare-fun res!1419226 () Bool)

(assert (=> b!3519422 (=> res!1419226 e!2178406)))

(declare-fun lt!1201303 () List!37457)

(assert (=> b!3519422 (= res!1419226 (not (= lt!1201312 lt!1201303)))))

(assert (=> b!3519422 (= lt!1201303 (++!9249 (++!9249 lt!1201309 lt!1201272) lt!1201307))))

(declare-fun b!3519423 () Bool)

(assert (=> b!3519423 (= e!2178412 (not e!2178415))))

(declare-fun res!1419249 () Bool)

(assert (=> b!3519423 (=> res!1419249 e!2178415)))

(assert (=> b!3519423 (= res!1419249 (not (= lt!1201298 lt!1201275)))))

(declare-fun printList!1611 (LexerInterface!5063 List!37459) List!37457)

(assert (=> b!3519423 (= lt!1201275 (printList!1611 thiss!18206 (Cons!37335 (h!42755 tokens!494) Nil!37335)))))

(declare-fun lt!1201293 () BalanceConc!22260)

(assert (=> b!3519423 (= lt!1201298 (list!13653 lt!1201293))))

(declare-fun lt!1201286 () BalanceConc!22262)

(declare-fun printTailRec!1558 (LexerInterface!5063 BalanceConc!22262 Int BalanceConc!22260) BalanceConc!22260)

(assert (=> b!3519423 (= lt!1201293 (printTailRec!1558 thiss!18206 lt!1201286 0 (BalanceConc!22261 Empty!11323)))))

(declare-fun print!2128 (LexerInterface!5063 BalanceConc!22262) BalanceConc!22260)

(assert (=> b!3519423 (= lt!1201293 (print!2128 thiss!18206 lt!1201286))))

(declare-fun singletonSeq!2570 (Token!10314) BalanceConc!22262)

(assert (=> b!3519423 (= lt!1201286 (singletonSeq!2570 (h!42755 tokens!494)))))

(assert (=> b!3519424 (= e!2178426 (and tp!1086746 tp!1086757))))

(declare-fun e!2178400 () Bool)

(declare-fun tp!1086748 () Bool)

(declare-fun e!2178407 () Bool)

(declare-fun b!3519425 () Bool)

(assert (=> b!3519425 (= e!2178407 (and tp!1086748 (inv!50563 (tag!6110 (h!42754 rules!2135))) (inv!50566 (transformation!5474 (h!42754 rules!2135))) e!2178400))))

(declare-fun b!3519426 () Bool)

(declare-fun res!1419243 () Bool)

(assert (=> b!3519426 (=> (not res!1419243) (not e!2178412))))

(declare-fun sepAndNonSepRulesDisjointChars!1668 (List!37458 List!37458) Bool)

(assert (=> b!3519426 (= res!1419243 (sepAndNonSepRulesDisjointChars!1668 rules!2135 rules!2135))))

(declare-fun b!3519427 () Bool)

(declare-fun res!1419245 () Bool)

(assert (=> b!3519427 (=> res!1419245 e!2178429)))

(declare-fun rulesProduceIndividualToken!2555 (LexerInterface!5063 List!37458 Token!10314) Bool)

(assert (=> b!3519427 (= res!1419245 (not (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 (h!42755 tokens!494))))))

(declare-fun b!3519428 () Bool)

(declare-fun e!2178402 () Bool)

(assert (=> b!3519428 (= e!2178402 false)))

(declare-fun b!3519429 () Bool)

(declare-fun res!1419238 () Bool)

(assert (=> b!3519429 (=> (not res!1419238) (not e!2178412))))

(assert (=> b!3519429 (= res!1419238 (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3519430 () Bool)

(declare-fun res!1419224 () Bool)

(assert (=> b!3519430 (=> (not res!1419224) (not e!2178412))))

(assert (=> b!3519430 (= res!1419224 (isSeparator!5474 (rule!8116 separatorToken!241)))))

(assert (=> b!3519431 (= e!2178400 (and tp!1086755 tp!1086752))))

(declare-fun e!2178422 () Bool)

(assert (=> b!3519432 (= e!2178422 e!2178408)))

(declare-fun res!1419232 () Bool)

(assert (=> b!3519432 (=> res!1419232 e!2178408)))

(declare-fun contains!6998 (List!37457 C!20652) Bool)

(declare-fun usedCharacters!708 (Regex!10233) List!37457)

(declare-fun head!7381 (List!37457) C!20652)

(assert (=> b!3519432 (= res!1419232 (contains!6998 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (head!7381 lt!1201278)))))

(declare-datatypes ((tuple2!37162 0))(
  ( (tuple2!37163 (_1!21715 Token!10314) (_2!21715 List!37457)) )
))
(declare-datatypes ((Option!7610 0))(
  ( (None!7609) (Some!7609 (v!37091 tuple2!37162)) )
))
(declare-fun maxPrefixOneRule!1770 (LexerInterface!5063 Rule!10748 List!37457) Option!7610)

(declare-fun apply!8889 (TokenValueInjection!10836 BalanceConc!22260) TokenValue!5704)

(declare-fun size!28400 (List!37457) Int)

(assert (=> b!3519432 (= (maxPrefixOneRule!1770 thiss!18206 (rule!8116 (h!42755 (t!281564 tokens!494))) lt!1201278) (Some!7609 (tuple2!37163 (Token!10315 (apply!8889 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) (seqFromList!4001 lt!1201278)) (rule!8116 (h!42755 (t!281564 tokens!494))) (size!28400 lt!1201278) lt!1201278) Nil!37333)))))

(declare-fun lt!1201277 () Unit!52984)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!863 (LexerInterface!5063 List!37458 List!37457 List!37457 List!37457 Rule!10748) Unit!52984)

(assert (=> b!3519432 (= lt!1201277 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!863 thiss!18206 rules!2135 lt!1201278 lt!1201278 Nil!37333 (rule!8116 (h!42755 (t!281564 tokens!494)))))))

(declare-fun e!2178430 () Bool)

(assert (=> b!3519432 e!2178430))

(declare-fun res!1419231 () Bool)

(assert (=> b!3519432 (=> (not res!1419231) (not e!2178430))))

(declare-fun lt!1201292 () Option!7609)

(declare-fun isDefined!5866 (Option!7609) Bool)

(assert (=> b!3519432 (= res!1419231 (isDefined!5866 lt!1201292))))

(declare-fun getRuleFromTag!1117 (LexerInterface!5063 List!37458 String!41854) Option!7609)

(assert (=> b!3519432 (= lt!1201292 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun lt!1201304 () Unit!52984)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1117 (LexerInterface!5063 List!37458 List!37457 Token!10314) Unit!52984)

(assert (=> b!3519432 (= lt!1201304 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1117 thiss!18206 rules!2135 lt!1201278 (h!42755 (t!281564 tokens!494))))))

(declare-fun lt!1201270 () Bool)

(assert (=> b!3519432 lt!1201270))

(declare-fun lt!1201279 () Unit!52984)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1052 (LexerInterface!5063 List!37458 List!37459 Token!10314) Unit!52984)

(assert (=> b!3519432 (= lt!1201279 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1052 thiss!18206 rules!2135 tokens!494 (h!42755 (t!281564 tokens!494))))))

(declare-fun lt!1201285 () List!37457)

(declare-fun maxPrefix!2603 (LexerInterface!5063 List!37458 List!37457) Option!7610)

(assert (=> b!3519432 (= (maxPrefix!2603 thiss!18206 rules!2135 lt!1201285) (Some!7609 (tuple2!37163 (h!42755 tokens!494) lt!1201283)))))

(declare-fun lt!1201290 () Unit!52984)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!230 (LexerInterface!5063 List!37458 Token!10314 Rule!10748 List!37457 Rule!10748) Unit!52984)

(assert (=> b!3519432 (= lt!1201290 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!230 thiss!18206 rules!2135 (h!42755 tokens!494) (rule!8116 (h!42755 tokens!494)) lt!1201283 (rule!8116 separatorToken!241)))))

(declare-fun lt!1201273 () C!20652)

(assert (=> b!3519432 (not (contains!6998 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 tokens!494)))) lt!1201273))))

(declare-fun lt!1201289 () Unit!52984)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!274 (LexerInterface!5063 List!37458 List!37458 Rule!10748 Rule!10748 C!20652) Unit!52984)

(assert (=> b!3519432 (= lt!1201289 (lemmaNonSepRuleNotContainsCharContainedInASepRule!274 thiss!18206 rules!2135 rules!2135 (rule!8116 (h!42755 tokens!494)) (rule!8116 separatorToken!241) lt!1201273))))

(declare-fun lt!1201301 () Unit!52984)

(declare-fun forallContained!1421 (List!37459 Int Token!10314) Unit!52984)

(assert (=> b!3519432 (= lt!1201301 (forallContained!1421 tokens!494 lambda!122713 (h!42755 (t!281564 tokens!494))))))

(declare-fun lt!1201297 () Bool)

(assert (=> b!3519432 (= lt!1201270 (not lt!1201297))))

(assert (=> b!3519432 (= lt!1201270 (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 (h!42755 (t!281564 tokens!494))))))

(assert (=> b!3519432 (= lt!1201297 e!2178404)))

(declare-fun res!1419236 () Bool)

(assert (=> b!3519432 (=> res!1419236 e!2178404)))

(declare-fun size!28401 (BalanceConc!22262) Int)

(assert (=> b!3519432 (= res!1419236 (not (= (size!28401 (_1!21714 lt!1201311)) 1)))))

(declare-fun lt!1201276 () BalanceConc!22260)

(assert (=> b!3519432 (= lt!1201311 (lex!2389 thiss!18206 rules!2135 lt!1201276))))

(declare-fun lt!1201287 () BalanceConc!22262)

(assert (=> b!3519432 (= lt!1201276 (printTailRec!1558 thiss!18206 lt!1201287 0 (BalanceConc!22261 Empty!11323)))))

(assert (=> b!3519432 (= lt!1201276 (print!2128 thiss!18206 lt!1201287))))

(assert (=> b!3519432 (= lt!1201287 (singletonSeq!2570 (h!42755 (t!281564 tokens!494))))))

(assert (=> b!3519432 e!2178433))

(declare-fun res!1419223 () Bool)

(assert (=> b!3519432 (=> (not res!1419223) (not e!2178433))))

(assert (=> b!3519432 (= res!1419223 (= (size!28401 (_1!21714 lt!1201300)) 1))))

(declare-fun lt!1201274 () BalanceConc!22260)

(assert (=> b!3519432 (= lt!1201300 (lex!2389 thiss!18206 rules!2135 lt!1201274))))

(declare-fun lt!1201291 () BalanceConc!22262)

(assert (=> b!3519432 (= lt!1201274 (printTailRec!1558 thiss!18206 lt!1201291 0 (BalanceConc!22261 Empty!11323)))))

(assert (=> b!3519432 (= lt!1201274 (print!2128 thiss!18206 lt!1201291))))

(assert (=> b!3519432 (= lt!1201291 (singletonSeq!2570 separatorToken!241))))

(declare-fun lt!1201281 () Unit!52984)

(assert (=> b!3519432 (= lt!1201281 e!2178413)))

(declare-fun c!606535 () Bool)

(assert (=> b!3519432 (= c!606535 (not (contains!6998 (usedCharacters!708 (regex!5474 (rule!8116 separatorToken!241))) lt!1201273)))))

(assert (=> b!3519432 (= lt!1201273 (head!7381 lt!1201272))))

(assert (=> b!3519432 e!2178401))

(declare-fun res!1419229 () Bool)

(assert (=> b!3519432 (=> (not res!1419229) (not e!2178401))))

(assert (=> b!3519432 (= res!1419229 (isDefined!5866 lt!1201282))))

(assert (=> b!3519432 (= lt!1201282 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 separatorToken!241))))))

(declare-fun lt!1201305 () Unit!52984)

(assert (=> b!3519432 (= lt!1201305 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1117 thiss!18206 rules!2135 lt!1201272 separatorToken!241))))

(assert (=> b!3519432 (= (maxPrefixOneRule!1770 thiss!18206 (rule!8116 (h!42755 tokens!494)) lt!1201309) (Some!7609 (tuple2!37163 (Token!10315 (apply!8889 (transformation!5474 (rule!8116 (h!42755 tokens!494))) lt!1201271) (rule!8116 (h!42755 tokens!494)) (size!28400 lt!1201309) lt!1201309) Nil!37333)))))

(declare-fun lt!1201294 () Unit!52984)

(assert (=> b!3519432 (= lt!1201294 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!863 thiss!18206 rules!2135 lt!1201309 lt!1201309 Nil!37333 (rule!8116 (h!42755 tokens!494))))))

(assert (=> b!3519432 e!2178418))

(declare-fun res!1419241 () Bool)

(assert (=> b!3519432 (=> (not res!1419241) (not e!2178418))))

(assert (=> b!3519432 (= res!1419241 (isDefined!5866 lt!1201308))))

(assert (=> b!3519432 (= lt!1201308 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 tokens!494)))))))

(declare-fun lt!1201299 () Unit!52984)

(assert (=> b!3519432 (= lt!1201299 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1117 thiss!18206 rules!2135 lt!1201309 (h!42755 tokens!494)))))

(declare-fun lt!1201280 () Unit!52984)

(assert (=> b!3519432 (= lt!1201280 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1052 thiss!18206 rules!2135 tokens!494 (h!42755 tokens!494)))))

(declare-fun b!3519433 () Bool)

(assert (=> b!3519433 (= e!2178406 e!2178422)))

(declare-fun res!1419228 () Bool)

(assert (=> b!3519433 (=> res!1419228 e!2178422)))

(assert (=> b!3519433 (= res!1419228 (not (= lt!1201312 lt!1201285)))))

(assert (=> b!3519433 (= lt!1201303 lt!1201285)))

(assert (=> b!3519433 (= lt!1201285 (++!9249 lt!1201309 lt!1201283))))

(declare-fun lt!1201284 () Unit!52984)

(declare-fun lemmaConcatAssociativity!2006 (List!37457 List!37457 List!37457) Unit!52984)

(assert (=> b!3519433 (= lt!1201284 (lemmaConcatAssociativity!2006 lt!1201309 lt!1201272 lt!1201307))))

(declare-fun b!3519434 () Bool)

(declare-fun tp!1086750 () Bool)

(assert (=> b!3519434 (= e!2178425 (and e!2178407 tp!1086750))))

(declare-fun b!3519435 () Bool)

(declare-fun Unit!52987 () Unit!52984)

(assert (=> b!3519435 (= e!2178413 Unit!52987)))

(declare-fun lt!1201310 () Unit!52984)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!532 (Regex!10233 List!37457 C!20652) Unit!52984)

(assert (=> b!3519435 (= lt!1201310 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!532 (regex!5474 (rule!8116 separatorToken!241)) lt!1201272 lt!1201273))))

(declare-fun res!1419242 () Bool)

(assert (=> b!3519435 (= res!1419242 (not (matchR!4817 (regex!5474 (rule!8116 separatorToken!241)) lt!1201272)))))

(assert (=> b!3519435 (=> (not res!1419242) (not e!2178402))))

(assert (=> b!3519435 e!2178402))

(declare-fun b!3519436 () Bool)

(assert (=> b!3519436 (= e!2178430 e!2178423)))

(declare-fun res!1419240 () Bool)

(assert (=> b!3519436 (=> (not res!1419240) (not e!2178423))))

(assert (=> b!3519436 (= res!1419240 (matchR!4817 (regex!5474 lt!1201296) lt!1201278))))

(assert (=> b!3519436 (= lt!1201296 (get!11984 lt!1201292))))

(declare-fun b!3519437 () Bool)

(assert (=> b!3519437 (= e!2178409 e!2178428)))

(declare-fun res!1419234 () Bool)

(assert (=> b!3519437 (=> res!1419234 e!2178428)))

(assert (=> b!3519437 (= res!1419234 (or (isSeparator!5474 (rule!8116 (h!42755 tokens!494))) (isSeparator!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun lt!1201288 () Unit!52984)

(assert (=> b!3519437 (= lt!1201288 (forallContained!1421 tokens!494 lambda!122712 (h!42755 (t!281564 tokens!494))))))

(declare-fun lt!1201302 () Unit!52984)

(assert (=> b!3519437 (= lt!1201302 (forallContained!1421 tokens!494 lambda!122712 (h!42755 tokens!494)))))

(assert (= (and start!326898 res!1419244) b!3519406))

(assert (= (and b!3519406 res!1419221) b!3519421))

(assert (= (and b!3519421 res!1419230) b!3519420))

(assert (= (and b!3519420 res!1419248) b!3519429))

(assert (= (and b!3519429 res!1419238) b!3519430))

(assert (= (and b!3519430 res!1419224) b!3519415))

(assert (= (and b!3519415 res!1419237) b!3519426))

(assert (= (and b!3519426 res!1419243) b!3519418))

(assert (= (and b!3519418 res!1419222) b!3519423))

(assert (= (and b!3519423 (not res!1419249)) b!3519403))

(assert (= (and b!3519403 (not res!1419225)) b!3519427))

(assert (= (and b!3519427 (not res!1419245)) b!3519400))

(assert (= (and b!3519400 (not res!1419246)) b!3519437))

(assert (= (and b!3519437 (not res!1419234)) b!3519412))

(assert (= (and b!3519412 (not res!1419233)) b!3519422))

(assert (= (and b!3519422 (not res!1419226)) b!3519433))

(assert (= (and b!3519433 (not res!1419228)) b!3519432))

(assert (= (and b!3519432 res!1419241) b!3519419))

(assert (= (and b!3519419 res!1419247) b!3519414))

(assert (= (and b!3519432 res!1419229) b!3519416))

(assert (= (and b!3519416 res!1419227) b!3519413))

(assert (= (and b!3519432 c!606535) b!3519435))

(assert (= (and b!3519432 (not c!606535)) b!3519411))

(assert (= (and b!3519435 res!1419242) b!3519428))

(assert (= (and b!3519432 res!1419223) b!3519417))

(assert (= (and b!3519417 res!1419235) b!3519410))

(assert (= (and b!3519432 (not res!1419236)) b!3519408))

(assert (= (and b!3519408 (not res!1419239)) b!3519405))

(assert (= (and b!3519432 res!1419231) b!3519436))

(assert (= (and b!3519436 res!1419240) b!3519401))

(assert (= (and b!3519432 (not res!1419232)) b!3519402))

(assert (= b!3519425 b!3519431))

(assert (= b!3519434 b!3519425))

(assert (= (and start!326898 ((_ is Cons!37334) rules!2135)) b!3519434))

(assert (= b!3519404 b!3519424))

(assert (= b!3519397 b!3519404))

(assert (= b!3519399 b!3519397))

(assert (= (and start!326898 ((_ is Cons!37335) tokens!494)) b!3519399))

(assert (= b!3519398 b!3519407))

(assert (= b!3519409 b!3519398))

(assert (= start!326898 b!3519409))

(declare-fun m!3968533 () Bool)

(assert (=> b!3519399 m!3968533))

(declare-fun m!3968535 () Bool)

(assert (=> b!3519406 m!3968535))

(declare-fun m!3968537 () Bool)

(assert (=> b!3519410 m!3968537))

(declare-fun m!3968539 () Bool)

(assert (=> b!3519417 m!3968539))

(declare-fun m!3968541 () Bool)

(assert (=> b!3519400 m!3968541))

(declare-fun m!3968543 () Bool)

(assert (=> b!3519400 m!3968543))

(declare-fun m!3968545 () Bool)

(assert (=> b!3519400 m!3968545))

(declare-fun m!3968547 () Bool)

(assert (=> b!3519412 m!3968547))

(declare-fun m!3968549 () Bool)

(assert (=> b!3519412 m!3968549))

(declare-fun m!3968551 () Bool)

(assert (=> b!3519412 m!3968551))

(declare-fun m!3968553 () Bool)

(assert (=> b!3519412 m!3968553))

(assert (=> b!3519412 m!3968547))

(declare-fun m!3968555 () Bool)

(assert (=> b!3519412 m!3968555))

(assert (=> b!3519412 m!3968549))

(declare-fun m!3968557 () Bool)

(assert (=> b!3519412 m!3968557))

(declare-fun m!3968559 () Bool)

(assert (=> b!3519412 m!3968559))

(declare-fun m!3968561 () Bool)

(assert (=> b!3519412 m!3968561))

(declare-fun m!3968563 () Bool)

(assert (=> b!3519412 m!3968563))

(assert (=> b!3519412 m!3968559))

(declare-fun m!3968565 () Bool)

(assert (=> b!3519412 m!3968565))

(assert (=> b!3519412 m!3968563))

(declare-fun m!3968567 () Bool)

(assert (=> b!3519425 m!3968567))

(declare-fun m!3968569 () Bool)

(assert (=> b!3519425 m!3968569))

(declare-fun m!3968571 () Bool)

(assert (=> b!3519427 m!3968571))

(declare-fun m!3968573 () Bool)

(assert (=> b!3519437 m!3968573))

(declare-fun m!3968575 () Bool)

(assert (=> b!3519437 m!3968575))

(declare-fun m!3968577 () Bool)

(assert (=> b!3519421 m!3968577))

(declare-fun m!3968579 () Bool)

(assert (=> b!3519422 m!3968579))

(assert (=> b!3519422 m!3968579))

(declare-fun m!3968581 () Bool)

(assert (=> b!3519422 m!3968581))

(declare-fun m!3968583 () Bool)

(assert (=> b!3519423 m!3968583))

(declare-fun m!3968585 () Bool)

(assert (=> b!3519423 m!3968585))

(declare-fun m!3968587 () Bool)

(assert (=> b!3519423 m!3968587))

(declare-fun m!3968589 () Bool)

(assert (=> b!3519423 m!3968589))

(declare-fun m!3968591 () Bool)

(assert (=> b!3519423 m!3968591))

(declare-fun m!3968593 () Bool)

(assert (=> b!3519403 m!3968593))

(assert (=> b!3519403 m!3968593))

(declare-fun m!3968595 () Bool)

(assert (=> b!3519403 m!3968595))

(declare-fun m!3968597 () Bool)

(assert (=> b!3519420 m!3968597))

(assert (=> b!3519420 m!3968597))

(declare-fun m!3968599 () Bool)

(assert (=> b!3519420 m!3968599))

(declare-fun m!3968601 () Bool)

(assert (=> b!3519436 m!3968601))

(declare-fun m!3968603 () Bool)

(assert (=> b!3519436 m!3968603))

(declare-fun m!3968605 () Bool)

(assert (=> b!3519432 m!3968605))

(declare-fun m!3968607 () Bool)

(assert (=> b!3519432 m!3968607))

(declare-fun m!3968609 () Bool)

(assert (=> b!3519432 m!3968609))

(declare-fun m!3968611 () Bool)

(assert (=> b!3519432 m!3968611))

(declare-fun m!3968613 () Bool)

(assert (=> b!3519432 m!3968613))

(declare-fun m!3968615 () Bool)

(assert (=> b!3519432 m!3968615))

(declare-fun m!3968617 () Bool)

(assert (=> b!3519432 m!3968617))

(declare-fun m!3968619 () Bool)

(assert (=> b!3519432 m!3968619))

(declare-fun m!3968621 () Bool)

(assert (=> b!3519432 m!3968621))

(declare-fun m!3968623 () Bool)

(assert (=> b!3519432 m!3968623))

(declare-fun m!3968625 () Bool)

(assert (=> b!3519432 m!3968625))

(declare-fun m!3968627 () Bool)

(assert (=> b!3519432 m!3968627))

(declare-fun m!3968629 () Bool)

(assert (=> b!3519432 m!3968629))

(assert (=> b!3519432 m!3968623))

(declare-fun m!3968631 () Bool)

(assert (=> b!3519432 m!3968631))

(declare-fun m!3968633 () Bool)

(assert (=> b!3519432 m!3968633))

(declare-fun m!3968635 () Bool)

(assert (=> b!3519432 m!3968635))

(declare-fun m!3968637 () Bool)

(assert (=> b!3519432 m!3968637))

(declare-fun m!3968639 () Bool)

(assert (=> b!3519432 m!3968639))

(declare-fun m!3968641 () Bool)

(assert (=> b!3519432 m!3968641))

(declare-fun m!3968643 () Bool)

(assert (=> b!3519432 m!3968643))

(declare-fun m!3968645 () Bool)

(assert (=> b!3519432 m!3968645))

(declare-fun m!3968647 () Bool)

(assert (=> b!3519432 m!3968647))

(declare-fun m!3968649 () Bool)

(assert (=> b!3519432 m!3968649))

(declare-fun m!3968651 () Bool)

(assert (=> b!3519432 m!3968651))

(declare-fun m!3968653 () Bool)

(assert (=> b!3519432 m!3968653))

(declare-fun m!3968655 () Bool)

(assert (=> b!3519432 m!3968655))

(declare-fun m!3968657 () Bool)

(assert (=> b!3519432 m!3968657))

(declare-fun m!3968659 () Bool)

(assert (=> b!3519432 m!3968659))

(declare-fun m!3968661 () Bool)

(assert (=> b!3519432 m!3968661))

(declare-fun m!3968663 () Bool)

(assert (=> b!3519432 m!3968663))

(declare-fun m!3968665 () Bool)

(assert (=> b!3519432 m!3968665))

(declare-fun m!3968667 () Bool)

(assert (=> b!3519432 m!3968667))

(declare-fun m!3968669 () Bool)

(assert (=> b!3519432 m!3968669))

(declare-fun m!3968671 () Bool)

(assert (=> b!3519432 m!3968671))

(declare-fun m!3968673 () Bool)

(assert (=> b!3519432 m!3968673))

(declare-fun m!3968675 () Bool)

(assert (=> b!3519432 m!3968675))

(assert (=> b!3519432 m!3968637))

(declare-fun m!3968677 () Bool)

(assert (=> b!3519432 m!3968677))

(declare-fun m!3968679 () Bool)

(assert (=> b!3519432 m!3968679))

(assert (=> b!3519432 m!3968655))

(assert (=> b!3519432 m!3968627))

(declare-fun m!3968681 () Bool)

(assert (=> b!3519432 m!3968681))

(declare-fun m!3968683 () Bool)

(assert (=> b!3519432 m!3968683))

(assert (=> b!3519432 m!3968679))

(declare-fun m!3968685 () Bool)

(assert (=> b!3519432 m!3968685))

(declare-fun m!3968687 () Bool)

(assert (=> b!3519432 m!3968687))

(declare-fun m!3968689 () Bool)

(assert (=> b!3519432 m!3968689))

(declare-fun m!3968691 () Bool)

(assert (=> b!3519429 m!3968691))

(declare-fun m!3968693 () Bool)

(assert (=> b!3519397 m!3968693))

(declare-fun m!3968695 () Bool)

(assert (=> b!3519419 m!3968695))

(declare-fun m!3968697 () Bool)

(assert (=> b!3519419 m!3968697))

(declare-fun m!3968699 () Bool)

(assert (=> b!3519405 m!3968699))

(declare-fun m!3968701 () Bool)

(assert (=> b!3519416 m!3968701))

(declare-fun m!3968703 () Bool)

(assert (=> b!3519416 m!3968703))

(declare-fun m!3968705 () Bool)

(assert (=> b!3519398 m!3968705))

(declare-fun m!3968707 () Bool)

(assert (=> b!3519398 m!3968707))

(declare-fun m!3968709 () Bool)

(assert (=> start!326898 m!3968709))

(declare-fun m!3968711 () Bool)

(assert (=> b!3519415 m!3968711))

(declare-fun m!3968713 () Bool)

(assert (=> b!3519433 m!3968713))

(declare-fun m!3968715 () Bool)

(assert (=> b!3519433 m!3968715))

(declare-fun m!3968717 () Bool)

(assert (=> b!3519426 m!3968717))

(declare-fun m!3968719 () Bool)

(assert (=> b!3519408 m!3968719))

(declare-fun m!3968721 () Bool)

(assert (=> b!3519435 m!3968721))

(declare-fun m!3968723 () Bool)

(assert (=> b!3519435 m!3968723))

(declare-fun m!3968725 () Bool)

(assert (=> b!3519404 m!3968725))

(declare-fun m!3968727 () Bool)

(assert (=> b!3519404 m!3968727))

(declare-fun m!3968729 () Bool)

(assert (=> b!3519409 m!3968729))

(declare-fun m!3968731 () Bool)

(assert (=> b!3519402 m!3968731))

(check-sat (not b!3519408) (not b!3519434) (not b_next!91395) (not b!3519446) (not b_next!91403) (not b!3519436) (not b!3519417) (not b_next!91401) (not b!3519406) b_and!250603 (not b!3519416) (not b!3519410) (not b!3519426) (not b!3519435) (not b!3519420) (not b!3519404) (not b!3519398) b_and!250611 (not b!3519432) (not b!3519409) (not b!3519400) (not b!3519437) (not b!3519425) (not b!3519423) (not b!3519429) (not b!3519427) (not start!326898) (not b!3519397) b_and!250609 b_and!250613 (not b!3519415) (not b!3519419) (not b_next!91399) (not b_next!91397) (not b!3519399) (not b!3519422) (not b!3519403) b_and!250607 (not b!3519402) (not b!3519421) (not b_next!91393) (not b!3519405) (not b!3519433) (not b!3519412) b_and!250605)
(check-sat b_and!250603 b_and!250611 (not b_next!91395) b_and!250609 b_and!250613 (not b_next!91403) b_and!250607 (not b_next!91393) b_and!250605 (not b_next!91401) (not b_next!91399) (not b_next!91397))
(get-model)

(declare-fun b!3519469 () Bool)

(declare-fun res!1419274 () Bool)

(declare-fun e!2178457 () Bool)

(assert (=> b!3519469 (=> res!1419274 e!2178457)))

(assert (=> b!3519469 (= res!1419274 (not ((_ is Concat!15937) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))))))

(declare-fun e!2178461 () Bool)

(assert (=> b!3519469 (= e!2178461 e!2178457)))

(declare-fun b!3519470 () Bool)

(declare-fun e!2178460 () Bool)

(assert (=> b!3519470 (= e!2178460 e!2178461)))

(declare-fun c!606544 () Bool)

(assert (=> b!3519470 (= c!606544 ((_ is Union!10233) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun b!3519471 () Bool)

(declare-fun e!2178463 () Bool)

(declare-fun call!254273 () Bool)

(assert (=> b!3519471 (= e!2178463 call!254273)))

(declare-fun b!3519472 () Bool)

(declare-fun res!1419273 () Bool)

(declare-fun e!2178459 () Bool)

(assert (=> b!3519472 (=> (not res!1419273) (not e!2178459))))

(declare-fun call!254272 () Bool)

(assert (=> b!3519472 (= res!1419273 call!254272)))

(assert (=> b!3519472 (= e!2178461 e!2178459)))

(declare-fun d!1026518 () Bool)

(declare-fun res!1419277 () Bool)

(declare-fun e!2178458 () Bool)

(assert (=> d!1026518 (=> res!1419277 e!2178458)))

(assert (=> d!1026518 (= res!1419277 ((_ is ElementMatch!10233) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(assert (=> d!1026518 (= (validRegex!4672 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) e!2178458)))

(declare-fun bm!254266 () Bool)

(assert (=> bm!254266 (= call!254272 call!254273)))

(declare-fun b!3519473 () Bool)

(declare-fun call!254271 () Bool)

(assert (=> b!3519473 (= e!2178459 call!254271)))

(declare-fun b!3519474 () Bool)

(declare-fun e!2178462 () Bool)

(assert (=> b!3519474 (= e!2178462 call!254271)))

(declare-fun b!3519475 () Bool)

(assert (=> b!3519475 (= e!2178460 e!2178463)))

(declare-fun res!1419276 () Bool)

(declare-fun nullable!3516 (Regex!10233) Bool)

(assert (=> b!3519475 (= res!1419276 (not (nullable!3516 (reg!10562 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))))

(assert (=> b!3519475 (=> (not res!1419276) (not e!2178463))))

(declare-fun b!3519476 () Bool)

(assert (=> b!3519476 (= e!2178458 e!2178460)))

(declare-fun c!606543 () Bool)

(assert (=> b!3519476 (= c!606543 ((_ is Star!10233) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun bm!254267 () Bool)

(assert (=> bm!254267 (= call!254273 (validRegex!4672 (ite c!606543 (reg!10562 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (ite c!606544 (regOne!20979 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (regOne!20978 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))))))))

(declare-fun b!3519477 () Bool)

(assert (=> b!3519477 (= e!2178457 e!2178462)))

(declare-fun res!1419275 () Bool)

(assert (=> b!3519477 (=> (not res!1419275) (not e!2178462))))

(assert (=> b!3519477 (= res!1419275 call!254272)))

(declare-fun bm!254268 () Bool)

(assert (=> bm!254268 (= call!254271 (validRegex!4672 (ite c!606544 (regTwo!20979 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (regTwo!20978 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))))

(assert (= (and d!1026518 (not res!1419277)) b!3519476))

(assert (= (and b!3519476 c!606543) b!3519475))

(assert (= (and b!3519476 (not c!606543)) b!3519470))

(assert (= (and b!3519475 res!1419276) b!3519471))

(assert (= (and b!3519470 c!606544) b!3519472))

(assert (= (and b!3519470 (not c!606544)) b!3519469))

(assert (= (and b!3519472 res!1419273) b!3519473))

(assert (= (and b!3519469 (not res!1419274)) b!3519477))

(assert (= (and b!3519477 res!1419275) b!3519474))

(assert (= (or b!3519473 b!3519474) bm!254268))

(assert (= (or b!3519472 b!3519477) bm!254266))

(assert (= (or b!3519471 bm!254266) bm!254267))

(declare-fun m!3968733 () Bool)

(assert (=> b!3519475 m!3968733))

(declare-fun m!3968735 () Bool)

(assert (=> bm!254267 m!3968735))

(declare-fun m!3968737 () Bool)

(assert (=> bm!254268 m!3968737))

(assert (=> b!3519402 d!1026518))

(declare-fun d!1026520 () Bool)

(declare-fun list!13655 (Conc!11323) List!37457)

(assert (=> d!1026520 (= (list!13653 (charsOf!3488 (h!42755 tokens!494))) (list!13655 (c!606537 (charsOf!3488 (h!42755 tokens!494)))))))

(declare-fun bs!565206 () Bool)

(assert (= bs!565206 d!1026520))

(declare-fun m!3968739 () Bool)

(assert (=> bs!565206 m!3968739))

(assert (=> b!3519403 d!1026520))

(declare-fun d!1026522 () Bool)

(declare-fun lt!1201315 () BalanceConc!22260)

(assert (=> d!1026522 (= (list!13653 lt!1201315) (originalCharacters!6188 (h!42755 tokens!494)))))

(declare-fun dynLambda!15896 (Int TokenValue!5704) BalanceConc!22260)

(assert (=> d!1026522 (= lt!1201315 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (value!176469 (h!42755 tokens!494))))))

(assert (=> d!1026522 (= (charsOf!3488 (h!42755 tokens!494)) lt!1201315)))

(declare-fun b_lambda!102659 () Bool)

(assert (=> (not b_lambda!102659) (not d!1026522)))

(declare-fun t!281566 () Bool)

(declare-fun tb!196519 () Bool)

(assert (=> (and b!3519407 (= (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281566) tb!196519))

(declare-fun b!3519485 () Bool)

(declare-fun e!2178469 () Bool)

(declare-fun tp!1086761 () Bool)

(declare-fun inv!50570 (Conc!11323) Bool)

(assert (=> b!3519485 (= e!2178469 (and (inv!50570 (c!606537 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (value!176469 (h!42755 tokens!494))))) tp!1086761))))

(declare-fun result!240844 () Bool)

(declare-fun inv!50571 (BalanceConc!22260) Bool)

(assert (=> tb!196519 (= result!240844 (and (inv!50571 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (value!176469 (h!42755 tokens!494)))) e!2178469))))

(assert (= tb!196519 b!3519485))

(declare-fun m!3968745 () Bool)

(assert (=> b!3519485 m!3968745))

(declare-fun m!3968747 () Bool)

(assert (=> tb!196519 m!3968747))

(assert (=> d!1026522 t!281566))

(declare-fun b_and!250615 () Bool)

(assert (= b_and!250605 (and (=> t!281566 result!240844) b_and!250615)))

(declare-fun tb!196521 () Bool)

(declare-fun t!281568 () Bool)

(assert (=> (and b!3519431 (= (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281568) tb!196521))

(declare-fun result!240848 () Bool)

(assert (= result!240848 result!240844))

(assert (=> d!1026522 t!281568))

(declare-fun b_and!250617 () Bool)

(assert (= b_and!250609 (and (=> t!281568 result!240848) b_and!250617)))

(declare-fun t!281570 () Bool)

(declare-fun tb!196523 () Bool)

(assert (=> (and b!3519424 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281570) tb!196523))

(declare-fun result!240850 () Bool)

(assert (= result!240850 result!240844))

(assert (=> d!1026522 t!281570))

(declare-fun b_and!250619 () Bool)

(assert (= b_and!250613 (and (=> t!281570 result!240850) b_and!250619)))

(declare-fun m!3968753 () Bool)

(assert (=> d!1026522 m!3968753))

(declare-fun m!3968755 () Bool)

(assert (=> d!1026522 m!3968755))

(assert (=> b!3519403 d!1026522))

(declare-fun b!3519523 () Bool)

(declare-fun e!2178489 () List!37457)

(assert (=> b!3519523 (= e!2178489 (Cons!37333 (h!42753 (++!9249 lt!1201309 lt!1201272)) (++!9249 (t!281562 (++!9249 lt!1201309 lt!1201272)) lt!1201307)))))

(declare-fun b!3519525 () Bool)

(declare-fun e!2178488 () Bool)

(declare-fun lt!1201323 () List!37457)

(assert (=> b!3519525 (= e!2178488 (or (not (= lt!1201307 Nil!37333)) (= lt!1201323 (++!9249 lt!1201309 lt!1201272))))))

(declare-fun d!1026530 () Bool)

(assert (=> d!1026530 e!2178488))

(declare-fun res!1419302 () Bool)

(assert (=> d!1026530 (=> (not res!1419302) (not e!2178488))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5261 (List!37457) (InoxSet C!20652))

(assert (=> d!1026530 (= res!1419302 (= (content!5261 lt!1201323) ((_ map or) (content!5261 (++!9249 lt!1201309 lt!1201272)) (content!5261 lt!1201307))))))

(assert (=> d!1026530 (= lt!1201323 e!2178489)))

(declare-fun c!606554 () Bool)

(assert (=> d!1026530 (= c!606554 ((_ is Nil!37333) (++!9249 lt!1201309 lt!1201272)))))

(assert (=> d!1026530 (= (++!9249 (++!9249 lt!1201309 lt!1201272) lt!1201307) lt!1201323)))

(declare-fun b!3519522 () Bool)

(assert (=> b!3519522 (= e!2178489 lt!1201307)))

(declare-fun b!3519524 () Bool)

(declare-fun res!1419301 () Bool)

(assert (=> b!3519524 (=> (not res!1419301) (not e!2178488))))

(assert (=> b!3519524 (= res!1419301 (= (size!28400 lt!1201323) (+ (size!28400 (++!9249 lt!1201309 lt!1201272)) (size!28400 lt!1201307))))))

(assert (= (and d!1026530 c!606554) b!3519522))

(assert (= (and d!1026530 (not c!606554)) b!3519523))

(assert (= (and d!1026530 res!1419302) b!3519524))

(assert (= (and b!3519524 res!1419301) b!3519525))

(declare-fun m!3968757 () Bool)

(assert (=> b!3519523 m!3968757))

(declare-fun m!3968759 () Bool)

(assert (=> d!1026530 m!3968759))

(assert (=> d!1026530 m!3968579))

(declare-fun m!3968761 () Bool)

(assert (=> d!1026530 m!3968761))

(declare-fun m!3968763 () Bool)

(assert (=> d!1026530 m!3968763))

(declare-fun m!3968765 () Bool)

(assert (=> b!3519524 m!3968765))

(assert (=> b!3519524 m!3968579))

(declare-fun m!3968767 () Bool)

(assert (=> b!3519524 m!3968767))

(declare-fun m!3968769 () Bool)

(assert (=> b!3519524 m!3968769))

(assert (=> b!3519422 d!1026530))

(declare-fun b!3519527 () Bool)

(declare-fun e!2178491 () List!37457)

(assert (=> b!3519527 (= e!2178491 (Cons!37333 (h!42753 lt!1201309) (++!9249 (t!281562 lt!1201309) lt!1201272)))))

(declare-fun lt!1201324 () List!37457)

(declare-fun b!3519529 () Bool)

(declare-fun e!2178490 () Bool)

(assert (=> b!3519529 (= e!2178490 (or (not (= lt!1201272 Nil!37333)) (= lt!1201324 lt!1201309)))))

(declare-fun d!1026532 () Bool)

(assert (=> d!1026532 e!2178490))

(declare-fun res!1419304 () Bool)

(assert (=> d!1026532 (=> (not res!1419304) (not e!2178490))))

(assert (=> d!1026532 (= res!1419304 (= (content!5261 lt!1201324) ((_ map or) (content!5261 lt!1201309) (content!5261 lt!1201272))))))

(assert (=> d!1026532 (= lt!1201324 e!2178491)))

(declare-fun c!606555 () Bool)

(assert (=> d!1026532 (= c!606555 ((_ is Nil!37333) lt!1201309))))

(assert (=> d!1026532 (= (++!9249 lt!1201309 lt!1201272) lt!1201324)))

(declare-fun b!3519526 () Bool)

(assert (=> b!3519526 (= e!2178491 lt!1201272)))

(declare-fun b!3519528 () Bool)

(declare-fun res!1419303 () Bool)

(assert (=> b!3519528 (=> (not res!1419303) (not e!2178490))))

(assert (=> b!3519528 (= res!1419303 (= (size!28400 lt!1201324) (+ (size!28400 lt!1201309) (size!28400 lt!1201272))))))

(assert (= (and d!1026532 c!606555) b!3519526))

(assert (= (and d!1026532 (not c!606555)) b!3519527))

(assert (= (and d!1026532 res!1419304) b!3519528))

(assert (= (and b!3519528 res!1419303) b!3519529))

(declare-fun m!3968771 () Bool)

(assert (=> b!3519527 m!3968771))

(declare-fun m!3968773 () Bool)

(assert (=> d!1026532 m!3968773))

(declare-fun m!3968775 () Bool)

(assert (=> d!1026532 m!3968775))

(declare-fun m!3968777 () Bool)

(assert (=> d!1026532 m!3968777))

(declare-fun m!3968779 () Bool)

(assert (=> b!3519528 m!3968779))

(assert (=> b!3519528 m!3968641))

(declare-fun m!3968781 () Bool)

(assert (=> b!3519528 m!3968781))

(assert (=> b!3519422 d!1026532))

(declare-fun d!1026534 () Bool)

(declare-fun lt!1201356 () BalanceConc!22260)

(declare-fun printListTailRec!715 (LexerInterface!5063 List!37459 List!37457) List!37457)

(declare-fun dropList!1232 (BalanceConc!22262 Int) List!37459)

(assert (=> d!1026534 (= (list!13653 lt!1201356) (printListTailRec!715 thiss!18206 (dropList!1232 lt!1201286 0) (list!13653 (BalanceConc!22261 Empty!11323))))))

(declare-fun e!2178520 () BalanceConc!22260)

(assert (=> d!1026534 (= lt!1201356 e!2178520)))

(declare-fun c!606565 () Bool)

(assert (=> d!1026534 (= c!606565 (>= 0 (size!28401 lt!1201286)))))

(declare-fun e!2178521 () Bool)

(assert (=> d!1026534 e!2178521))

(declare-fun res!1419332 () Bool)

(assert (=> d!1026534 (=> (not res!1419332) (not e!2178521))))

(assert (=> d!1026534 (= res!1419332 (>= 0 0))))

(assert (=> d!1026534 (= (printTailRec!1558 thiss!18206 lt!1201286 0 (BalanceConc!22261 Empty!11323)) lt!1201356)))

(declare-fun b!3519580 () Bool)

(assert (=> b!3519580 (= e!2178521 (<= 0 (size!28401 lt!1201286)))))

(declare-fun b!3519581 () Bool)

(assert (=> b!3519581 (= e!2178520 (BalanceConc!22261 Empty!11323))))

(declare-fun b!3519582 () Bool)

(declare-fun ++!9250 (BalanceConc!22260 BalanceConc!22260) BalanceConc!22260)

(assert (=> b!3519582 (= e!2178520 (printTailRec!1558 thiss!18206 lt!1201286 (+ 0 1) (++!9250 (BalanceConc!22261 Empty!11323) (charsOf!3488 (apply!8888 lt!1201286 0)))))))

(declare-fun lt!1201354 () List!37459)

(declare-fun list!13656 (BalanceConc!22262) List!37459)

(assert (=> b!3519582 (= lt!1201354 (list!13656 lt!1201286))))

(declare-fun lt!1201350 () Unit!52984)

(declare-fun lemmaDropApply!1190 (List!37459 Int) Unit!52984)

(assert (=> b!3519582 (= lt!1201350 (lemmaDropApply!1190 lt!1201354 0))))

(declare-fun head!7382 (List!37459) Token!10314)

(declare-fun drop!2046 (List!37459 Int) List!37459)

(declare-fun apply!8890 (List!37459 Int) Token!10314)

(assert (=> b!3519582 (= (head!7382 (drop!2046 lt!1201354 0)) (apply!8890 lt!1201354 0))))

(declare-fun lt!1201355 () Unit!52984)

(assert (=> b!3519582 (= lt!1201355 lt!1201350)))

(declare-fun lt!1201353 () List!37459)

(assert (=> b!3519582 (= lt!1201353 (list!13656 lt!1201286))))

(declare-fun lt!1201351 () Unit!52984)

(declare-fun lemmaDropTail!1074 (List!37459 Int) Unit!52984)

(assert (=> b!3519582 (= lt!1201351 (lemmaDropTail!1074 lt!1201353 0))))

(declare-fun tail!5487 (List!37459) List!37459)

(assert (=> b!3519582 (= (tail!5487 (drop!2046 lt!1201353 0)) (drop!2046 lt!1201353 (+ 0 1)))))

(declare-fun lt!1201352 () Unit!52984)

(assert (=> b!3519582 (= lt!1201352 lt!1201351)))

(assert (= (and d!1026534 res!1419332) b!3519580))

(assert (= (and d!1026534 c!606565) b!3519581))

(assert (= (and d!1026534 (not c!606565)) b!3519582))

(declare-fun m!3968847 () Bool)

(assert (=> d!1026534 m!3968847))

(declare-fun m!3968849 () Bool)

(assert (=> d!1026534 m!3968849))

(declare-fun m!3968851 () Bool)

(assert (=> d!1026534 m!3968851))

(declare-fun m!3968853 () Bool)

(assert (=> d!1026534 m!3968853))

(assert (=> d!1026534 m!3968853))

(assert (=> d!1026534 m!3968849))

(declare-fun m!3968855 () Bool)

(assert (=> d!1026534 m!3968855))

(assert (=> b!3519580 m!3968851))

(declare-fun m!3968857 () Bool)

(assert (=> b!3519582 m!3968857))

(declare-fun m!3968859 () Bool)

(assert (=> b!3519582 m!3968859))

(declare-fun m!3968861 () Bool)

(assert (=> b!3519582 m!3968861))

(declare-fun m!3968863 () Bool)

(assert (=> b!3519582 m!3968863))

(declare-fun m!3968865 () Bool)

(assert (=> b!3519582 m!3968865))

(declare-fun m!3968867 () Bool)

(assert (=> b!3519582 m!3968867))

(declare-fun m!3968869 () Bool)

(assert (=> b!3519582 m!3968869))

(assert (=> b!3519582 m!3968861))

(declare-fun m!3968871 () Bool)

(assert (=> b!3519582 m!3968871))

(assert (=> b!3519582 m!3968859))

(declare-fun m!3968873 () Bool)

(assert (=> b!3519582 m!3968873))

(declare-fun m!3968875 () Bool)

(assert (=> b!3519582 m!3968875))

(declare-fun m!3968877 () Bool)

(assert (=> b!3519582 m!3968877))

(assert (=> b!3519582 m!3968871))

(declare-fun m!3968879 () Bool)

(assert (=> b!3519582 m!3968879))

(assert (=> b!3519582 m!3968873))

(declare-fun m!3968881 () Bool)

(assert (=> b!3519582 m!3968881))

(assert (=> b!3519582 m!3968857))

(assert (=> b!3519423 d!1026534))

(declare-fun d!1026554 () Bool)

(assert (=> d!1026554 (= (list!13653 lt!1201293) (list!13655 (c!606537 lt!1201293)))))

(declare-fun bs!565210 () Bool)

(assert (= bs!565210 d!1026554))

(declare-fun m!3968883 () Bool)

(assert (=> bs!565210 m!3968883))

(assert (=> b!3519423 d!1026554))

(declare-fun d!1026556 () Bool)

(declare-fun e!2178524 () Bool)

(assert (=> d!1026556 e!2178524))

(declare-fun res!1419335 () Bool)

(assert (=> d!1026556 (=> (not res!1419335) (not e!2178524))))

(declare-fun lt!1201359 () BalanceConc!22262)

(assert (=> d!1026556 (= res!1419335 (= (list!13656 lt!1201359) (Cons!37335 (h!42755 tokens!494) Nil!37335)))))

(declare-fun singleton!1147 (Token!10314) BalanceConc!22262)

(assert (=> d!1026556 (= lt!1201359 (singleton!1147 (h!42755 tokens!494)))))

(assert (=> d!1026556 (= (singletonSeq!2570 (h!42755 tokens!494)) lt!1201359)))

(declare-fun b!3519585 () Bool)

(declare-fun isBalanced!3454 (Conc!11324) Bool)

(assert (=> b!3519585 (= e!2178524 (isBalanced!3454 (c!606538 lt!1201359)))))

(assert (= (and d!1026556 res!1419335) b!3519585))

(declare-fun m!3968885 () Bool)

(assert (=> d!1026556 m!3968885))

(declare-fun m!3968887 () Bool)

(assert (=> d!1026556 m!3968887))

(declare-fun m!3968889 () Bool)

(assert (=> b!3519585 m!3968889))

(assert (=> b!3519423 d!1026556))

(declare-fun d!1026558 () Bool)

(declare-fun c!606568 () Bool)

(assert (=> d!1026558 (= c!606568 ((_ is Cons!37335) (Cons!37335 (h!42755 tokens!494) Nil!37335)))))

(declare-fun e!2178527 () List!37457)

(assert (=> d!1026558 (= (printList!1611 thiss!18206 (Cons!37335 (h!42755 tokens!494) Nil!37335)) e!2178527)))

(declare-fun b!3519590 () Bool)

(assert (=> b!3519590 (= e!2178527 (++!9249 (list!13653 (charsOf!3488 (h!42755 (Cons!37335 (h!42755 tokens!494) Nil!37335)))) (printList!1611 thiss!18206 (t!281564 (Cons!37335 (h!42755 tokens!494) Nil!37335)))))))

(declare-fun b!3519591 () Bool)

(assert (=> b!3519591 (= e!2178527 Nil!37333)))

(assert (= (and d!1026558 c!606568) b!3519590))

(assert (= (and d!1026558 (not c!606568)) b!3519591))

(declare-fun m!3968891 () Bool)

(assert (=> b!3519590 m!3968891))

(assert (=> b!3519590 m!3968891))

(declare-fun m!3968893 () Bool)

(assert (=> b!3519590 m!3968893))

(declare-fun m!3968895 () Bool)

(assert (=> b!3519590 m!3968895))

(assert (=> b!3519590 m!3968893))

(assert (=> b!3519590 m!3968895))

(declare-fun m!3968897 () Bool)

(assert (=> b!3519590 m!3968897))

(assert (=> b!3519423 d!1026558))

(declare-fun d!1026560 () Bool)

(declare-fun lt!1201362 () BalanceConc!22260)

(assert (=> d!1026560 (= (list!13653 lt!1201362) (printList!1611 thiss!18206 (list!13656 lt!1201286)))))

(assert (=> d!1026560 (= lt!1201362 (printTailRec!1558 thiss!18206 lt!1201286 0 (BalanceConc!22261 Empty!11323)))))

(assert (=> d!1026560 (= (print!2128 thiss!18206 lt!1201286) lt!1201362)))

(declare-fun bs!565211 () Bool)

(assert (= bs!565211 d!1026560))

(declare-fun m!3968899 () Bool)

(assert (=> bs!565211 m!3968899))

(assert (=> bs!565211 m!3968867))

(assert (=> bs!565211 m!3968867))

(declare-fun m!3968901 () Bool)

(assert (=> bs!565211 m!3968901))

(assert (=> bs!565211 m!3968591))

(assert (=> b!3519423 d!1026560))

(declare-fun d!1026562 () Bool)

(declare-fun res!1419340 () Bool)

(declare-fun e!2178532 () Bool)

(assert (=> d!1026562 (=> res!1419340 e!2178532)))

(assert (=> d!1026562 (= res!1419340 (not ((_ is Cons!37334) rules!2135)))))

(assert (=> d!1026562 (= (sepAndNonSepRulesDisjointChars!1668 rules!2135 rules!2135) e!2178532)))

(declare-fun b!3519596 () Bool)

(declare-fun e!2178533 () Bool)

(assert (=> b!3519596 (= e!2178532 e!2178533)))

(declare-fun res!1419341 () Bool)

(assert (=> b!3519596 (=> (not res!1419341) (not e!2178533))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!746 (Rule!10748 List!37458) Bool)

(assert (=> b!3519596 (= res!1419341 (ruleDisjointCharsFromAllFromOtherType!746 (h!42754 rules!2135) rules!2135))))

(declare-fun b!3519597 () Bool)

(assert (=> b!3519597 (= e!2178533 (sepAndNonSepRulesDisjointChars!1668 rules!2135 (t!281563 rules!2135)))))

(assert (= (and d!1026562 (not res!1419340)) b!3519596))

(assert (= (and b!3519596 res!1419341) b!3519597))

(declare-fun m!3968903 () Bool)

(assert (=> b!3519596 m!3968903))

(declare-fun m!3968905 () Bool)

(assert (=> b!3519597 m!3968905))

(assert (=> b!3519426 d!1026562))

(declare-fun d!1026564 () Bool)

(declare-fun lt!1201365 () Bool)

(declare-fun isEmpty!21792 (List!37457) Bool)

(assert (=> d!1026564 (= lt!1201365 (isEmpty!21792 (list!13653 (_2!21714 lt!1201311))))))

(declare-fun isEmpty!21793 (Conc!11323) Bool)

(assert (=> d!1026564 (= lt!1201365 (isEmpty!21793 (c!606537 (_2!21714 lt!1201311))))))

(assert (=> d!1026564 (= (isEmpty!21788 (_2!21714 lt!1201311)) lt!1201365)))

(declare-fun bs!565212 () Bool)

(assert (= bs!565212 d!1026564))

(declare-fun m!3968907 () Bool)

(assert (=> bs!565212 m!3968907))

(assert (=> bs!565212 m!3968907))

(declare-fun m!3968909 () Bool)

(assert (=> bs!565212 m!3968909))

(declare-fun m!3968911 () Bool)

(assert (=> bs!565212 m!3968911))

(assert (=> b!3519405 d!1026564))

(declare-fun d!1026566 () Bool)

(declare-fun lt!1201374 () Bool)

(declare-fun e!2178545 () Bool)

(assert (=> d!1026566 (= lt!1201374 e!2178545)))

(declare-fun res!1419353 () Bool)

(assert (=> d!1026566 (=> (not res!1419353) (not e!2178545))))

(assert (=> d!1026566 (= res!1419353 (= (list!13656 (_1!21714 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 (h!42755 tokens!494)))))) (list!13656 (singletonSeq!2570 (h!42755 tokens!494)))))))

(declare-fun e!2178544 () Bool)

(assert (=> d!1026566 (= lt!1201374 e!2178544)))

(declare-fun res!1419351 () Bool)

(assert (=> d!1026566 (=> (not res!1419351) (not e!2178544))))

(declare-fun lt!1201373 () tuple2!37160)

(assert (=> d!1026566 (= res!1419351 (= (size!28401 (_1!21714 lt!1201373)) 1))))

(assert (=> d!1026566 (= lt!1201373 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 (h!42755 tokens!494)))))))

(assert (=> d!1026566 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026566 (= (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 (h!42755 tokens!494)) lt!1201374)))

(declare-fun b!3519610 () Bool)

(declare-fun res!1419352 () Bool)

(assert (=> b!3519610 (=> (not res!1419352) (not e!2178544))))

(assert (=> b!3519610 (= res!1419352 (= (apply!8888 (_1!21714 lt!1201373) 0) (h!42755 tokens!494)))))

(declare-fun b!3519611 () Bool)

(assert (=> b!3519611 (= e!2178544 (isEmpty!21788 (_2!21714 lt!1201373)))))

(declare-fun b!3519612 () Bool)

(assert (=> b!3519612 (= e!2178545 (isEmpty!21788 (_2!21714 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 (h!42755 tokens!494)))))))))

(assert (= (and d!1026566 res!1419351) b!3519610))

(assert (= (and b!3519610 res!1419352) b!3519611))

(assert (= (and d!1026566 res!1419353) b!3519612))

(declare-fun m!3968923 () Bool)

(assert (=> d!1026566 m!3968923))

(declare-fun m!3968925 () Bool)

(assert (=> d!1026566 m!3968925))

(declare-fun m!3968927 () Bool)

(assert (=> d!1026566 m!3968927))

(declare-fun m!3968929 () Bool)

(assert (=> d!1026566 m!3968929))

(assert (=> d!1026566 m!3968583))

(assert (=> d!1026566 m!3968927))

(assert (=> d!1026566 m!3968583))

(declare-fun m!3968931 () Bool)

(assert (=> d!1026566 m!3968931))

(assert (=> d!1026566 m!3968583))

(assert (=> d!1026566 m!3968535))

(declare-fun m!3968933 () Bool)

(assert (=> b!3519610 m!3968933))

(declare-fun m!3968935 () Bool)

(assert (=> b!3519611 m!3968935))

(assert (=> b!3519612 m!3968583))

(assert (=> b!3519612 m!3968583))

(assert (=> b!3519612 m!3968927))

(assert (=> b!3519612 m!3968927))

(assert (=> b!3519612 m!3968929))

(declare-fun m!3968937 () Bool)

(assert (=> b!3519612 m!3968937))

(assert (=> b!3519427 d!1026566))

(declare-fun d!1026572 () Bool)

(assert (=> d!1026572 (= (inv!50563 (tag!6110 (h!42754 rules!2135))) (= (mod (str.len (value!176468 (tag!6110 (h!42754 rules!2135)))) 2) 0))))

(assert (=> b!3519425 d!1026572))

(declare-fun d!1026574 () Bool)

(declare-fun res!1419356 () Bool)

(declare-fun e!2178548 () Bool)

(assert (=> d!1026574 (=> (not res!1419356) (not e!2178548))))

(declare-fun semiInverseModEq!2311 (Int Int) Bool)

(assert (=> d!1026574 (= res!1419356 (semiInverseModEq!2311 (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toValue!7726 (transformation!5474 (h!42754 rules!2135)))))))

(assert (=> d!1026574 (= (inv!50566 (transformation!5474 (h!42754 rules!2135))) e!2178548)))

(declare-fun b!3519615 () Bool)

(declare-fun equivClasses!2210 (Int Int) Bool)

(assert (=> b!3519615 (= e!2178548 (equivClasses!2210 (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toValue!7726 (transformation!5474 (h!42754 rules!2135)))))))

(assert (= (and d!1026574 res!1419356) b!3519615))

(declare-fun m!3968939 () Bool)

(assert (=> d!1026574 m!3968939))

(declare-fun m!3968941 () Bool)

(assert (=> b!3519615 m!3968941))

(assert (=> b!3519425 d!1026574))

(declare-fun d!1026576 () Bool)

(assert (=> d!1026576 (= (inv!50563 (tag!6110 (rule!8116 (h!42755 tokens!494)))) (= (mod (str.len (value!176468 (tag!6110 (rule!8116 (h!42755 tokens!494))))) 2) 0))))

(assert (=> b!3519404 d!1026576))

(declare-fun d!1026578 () Bool)

(declare-fun res!1419357 () Bool)

(declare-fun e!2178549 () Bool)

(assert (=> d!1026578 (=> (not res!1419357) (not e!2178549))))

(assert (=> d!1026578 (= res!1419357 (semiInverseModEq!2311 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494))))))))

(assert (=> d!1026578 (= (inv!50566 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) e!2178549)))

(declare-fun b!3519616 () Bool)

(assert (=> b!3519616 (= e!2178549 (equivClasses!2210 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494))))))))

(assert (= (and d!1026578 res!1419357) b!3519616))

(declare-fun m!3968943 () Bool)

(assert (=> d!1026578 m!3968943))

(declare-fun m!3968945 () Bool)

(assert (=> b!3519616 m!3968945))

(assert (=> b!3519404 d!1026578))

(declare-fun d!1026580 () Bool)

(declare-fun lt!1201376 () Bool)

(declare-fun e!2178551 () Bool)

(assert (=> d!1026580 (= lt!1201376 e!2178551)))

(declare-fun res!1419360 () Bool)

(assert (=> d!1026580 (=> (not res!1419360) (not e!2178551))))

(assert (=> d!1026580 (= res!1419360 (= (list!13656 (_1!21714 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 separatorToken!241))))) (list!13656 (singletonSeq!2570 separatorToken!241))))))

(declare-fun e!2178550 () Bool)

(assert (=> d!1026580 (= lt!1201376 e!2178550)))

(declare-fun res!1419358 () Bool)

(assert (=> d!1026580 (=> (not res!1419358) (not e!2178550))))

(declare-fun lt!1201375 () tuple2!37160)

(assert (=> d!1026580 (= res!1419358 (= (size!28401 (_1!21714 lt!1201375)) 1))))

(assert (=> d!1026580 (= lt!1201375 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 separatorToken!241))))))

(assert (=> d!1026580 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026580 (= (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 separatorToken!241) lt!1201376)))

(declare-fun b!3519617 () Bool)

(declare-fun res!1419359 () Bool)

(assert (=> b!3519617 (=> (not res!1419359) (not e!2178550))))

(assert (=> b!3519617 (= res!1419359 (= (apply!8888 (_1!21714 lt!1201375) 0) separatorToken!241))))

(declare-fun b!3519618 () Bool)

(assert (=> b!3519618 (= e!2178550 (isEmpty!21788 (_2!21714 lt!1201375)))))

(declare-fun b!3519619 () Bool)

(assert (=> b!3519619 (= e!2178551 (isEmpty!21788 (_2!21714 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 separatorToken!241))))))))

(assert (= (and d!1026580 res!1419358) b!3519617))

(assert (= (and b!3519617 res!1419359) b!3519618))

(assert (= (and d!1026580 res!1419360) b!3519619))

(declare-fun m!3968947 () Bool)

(assert (=> d!1026580 m!3968947))

(declare-fun m!3968949 () Bool)

(assert (=> d!1026580 m!3968949))

(declare-fun m!3968951 () Bool)

(assert (=> d!1026580 m!3968951))

(declare-fun m!3968953 () Bool)

(assert (=> d!1026580 m!3968953))

(assert (=> d!1026580 m!3968651))

(assert (=> d!1026580 m!3968951))

(assert (=> d!1026580 m!3968651))

(declare-fun m!3968955 () Bool)

(assert (=> d!1026580 m!3968955))

(assert (=> d!1026580 m!3968651))

(assert (=> d!1026580 m!3968535))

(declare-fun m!3968957 () Bool)

(assert (=> b!3519617 m!3968957))

(declare-fun m!3968959 () Bool)

(assert (=> b!3519618 m!3968959))

(assert (=> b!3519619 m!3968651))

(assert (=> b!3519619 m!3968651))

(assert (=> b!3519619 m!3968951))

(assert (=> b!3519619 m!3968951))

(assert (=> b!3519619 m!3968953))

(declare-fun m!3968961 () Bool)

(assert (=> b!3519619 m!3968961))

(assert (=> b!3519429 d!1026580))

(declare-fun d!1026582 () Bool)

(declare-fun lt!1201379 () Token!10314)

(assert (=> d!1026582 (= lt!1201379 (apply!8890 (list!13656 (_1!21714 lt!1201311)) 0))))

(declare-fun apply!8893 (Conc!11324 Int) Token!10314)

(assert (=> d!1026582 (= lt!1201379 (apply!8893 (c!606538 (_1!21714 lt!1201311)) 0))))

(declare-fun e!2178554 () Bool)

(assert (=> d!1026582 e!2178554))

(declare-fun res!1419363 () Bool)

(assert (=> d!1026582 (=> (not res!1419363) (not e!2178554))))

(assert (=> d!1026582 (= res!1419363 (<= 0 0))))

(assert (=> d!1026582 (= (apply!8888 (_1!21714 lt!1201311) 0) lt!1201379)))

(declare-fun b!3519622 () Bool)

(assert (=> b!3519622 (= e!2178554 (< 0 (size!28401 (_1!21714 lt!1201311))))))

(assert (= (and d!1026582 res!1419363) b!3519622))

(declare-fun m!3968963 () Bool)

(assert (=> d!1026582 m!3968963))

(assert (=> d!1026582 m!3968963))

(declare-fun m!3968965 () Bool)

(assert (=> d!1026582 m!3968965))

(declare-fun m!3968967 () Bool)

(assert (=> d!1026582 m!3968967))

(assert (=> b!3519622 m!3968683))

(assert (=> b!3519408 d!1026582))

(declare-fun d!1026584 () Bool)

(assert (=> d!1026584 (= (isEmpty!21789 rules!2135) ((_ is Nil!37334) rules!2135))))

(assert (=> b!3519406 d!1026584))

(declare-fun d!1026586 () Bool)

(declare-fun lt!1201380 () Bool)

(assert (=> d!1026586 (= lt!1201380 (isEmpty!21792 (list!13653 (_2!21714 lt!1201300))))))

(assert (=> d!1026586 (= lt!1201380 (isEmpty!21793 (c!606537 (_2!21714 lt!1201300))))))

(assert (=> d!1026586 (= (isEmpty!21788 (_2!21714 lt!1201300)) lt!1201380)))

(declare-fun bs!565216 () Bool)

(assert (= bs!565216 d!1026586))

(declare-fun m!3968969 () Bool)

(assert (=> bs!565216 m!3968969))

(assert (=> bs!565216 m!3968969))

(declare-fun m!3968971 () Bool)

(assert (=> bs!565216 m!3968971))

(declare-fun m!3968973 () Bool)

(assert (=> bs!565216 m!3968973))

(assert (=> b!3519410 d!1026586))

(declare-fun b!3519656 () Bool)

(declare-fun res!1419396 () Bool)

(declare-fun e!2178572 () Bool)

(assert (=> b!3519656 (=> (not res!1419396) (not e!2178572))))

(declare-fun lt!1201404 () Option!7610)

(declare-fun get!11985 (Option!7610) tuple2!37162)

(assert (=> b!3519656 (= res!1419396 (= (++!9249 (list!13653 (charsOf!3488 (_1!21715 (get!11985 lt!1201404)))) (_2!21715 (get!11985 lt!1201404))) lt!1201285))))

(declare-fun b!3519657 () Bool)

(declare-fun e!2178574 () Option!7610)

(declare-fun lt!1201406 () Option!7610)

(declare-fun lt!1201402 () Option!7610)

(assert (=> b!3519657 (= e!2178574 (ite (and ((_ is None!7609) lt!1201406) ((_ is None!7609) lt!1201402)) None!7609 (ite ((_ is None!7609) lt!1201402) lt!1201406 (ite ((_ is None!7609) lt!1201406) lt!1201402 (ite (>= (size!28399 (_1!21715 (v!37091 lt!1201406))) (size!28399 (_1!21715 (v!37091 lt!1201402)))) lt!1201406 lt!1201402)))))))

(declare-fun call!254279 () Option!7610)

(assert (=> b!3519657 (= lt!1201406 call!254279)))

(assert (=> b!3519657 (= lt!1201402 (maxPrefix!2603 thiss!18206 (t!281563 rules!2135) lt!1201285))))

(declare-fun d!1026588 () Bool)

(declare-fun e!2178573 () Bool)

(assert (=> d!1026588 e!2178573))

(declare-fun res!1419397 () Bool)

(assert (=> d!1026588 (=> res!1419397 e!2178573)))

(declare-fun isEmpty!21794 (Option!7610) Bool)

(assert (=> d!1026588 (= res!1419397 (isEmpty!21794 lt!1201404))))

(assert (=> d!1026588 (= lt!1201404 e!2178574)))

(declare-fun c!606571 () Bool)

(assert (=> d!1026588 (= c!606571 (and ((_ is Cons!37334) rules!2135) ((_ is Nil!37334) (t!281563 rules!2135))))))

(declare-fun lt!1201403 () Unit!52984)

(declare-fun lt!1201405 () Unit!52984)

(assert (=> d!1026588 (= lt!1201403 lt!1201405)))

(declare-fun isPrefix!2871 (List!37457 List!37457) Bool)

(assert (=> d!1026588 (isPrefix!2871 lt!1201285 lt!1201285)))

(declare-fun lemmaIsPrefixRefl!1830 (List!37457 List!37457) Unit!52984)

(assert (=> d!1026588 (= lt!1201405 (lemmaIsPrefixRefl!1830 lt!1201285 lt!1201285))))

(declare-fun rulesValidInductive!1880 (LexerInterface!5063 List!37458) Bool)

(assert (=> d!1026588 (rulesValidInductive!1880 thiss!18206 rules!2135)))

(assert (=> d!1026588 (= (maxPrefix!2603 thiss!18206 rules!2135 lt!1201285) lt!1201404)))

(declare-fun b!3519658 () Bool)

(declare-fun res!1419399 () Bool)

(assert (=> b!3519658 (=> (not res!1419399) (not e!2178572))))

(assert (=> b!3519658 (= res!1419399 (= (value!176469 (_1!21715 (get!11985 lt!1201404))) (apply!8889 (transformation!5474 (rule!8116 (_1!21715 (get!11985 lt!1201404)))) (seqFromList!4001 (originalCharacters!6188 (_1!21715 (get!11985 lt!1201404)))))))))

(declare-fun b!3519659 () Bool)

(declare-fun contains!6999 (List!37458 Rule!10748) Bool)

(assert (=> b!3519659 (= e!2178572 (contains!6999 rules!2135 (rule!8116 (_1!21715 (get!11985 lt!1201404)))))))

(declare-fun b!3519660 () Bool)

(declare-fun res!1419398 () Bool)

(assert (=> b!3519660 (=> (not res!1419398) (not e!2178572))))

(assert (=> b!3519660 (= res!1419398 (matchR!4817 (regex!5474 (rule!8116 (_1!21715 (get!11985 lt!1201404)))) (list!13653 (charsOf!3488 (_1!21715 (get!11985 lt!1201404))))))))

(declare-fun b!3519661 () Bool)

(declare-fun res!1419394 () Bool)

(assert (=> b!3519661 (=> (not res!1419394) (not e!2178572))))

(assert (=> b!3519661 (= res!1419394 (= (list!13653 (charsOf!3488 (_1!21715 (get!11985 lt!1201404)))) (originalCharacters!6188 (_1!21715 (get!11985 lt!1201404)))))))

(declare-fun bm!254274 () Bool)

(assert (=> bm!254274 (= call!254279 (maxPrefixOneRule!1770 thiss!18206 (h!42754 rules!2135) lt!1201285))))

(declare-fun b!3519662 () Bool)

(assert (=> b!3519662 (= e!2178574 call!254279)))

(declare-fun b!3519663 () Bool)

(declare-fun res!1419393 () Bool)

(assert (=> b!3519663 (=> (not res!1419393) (not e!2178572))))

(assert (=> b!3519663 (= res!1419393 (< (size!28400 (_2!21715 (get!11985 lt!1201404))) (size!28400 lt!1201285)))))

(declare-fun b!3519664 () Bool)

(assert (=> b!3519664 (= e!2178573 e!2178572)))

(declare-fun res!1419395 () Bool)

(assert (=> b!3519664 (=> (not res!1419395) (not e!2178572))))

(declare-fun isDefined!5867 (Option!7610) Bool)

(assert (=> b!3519664 (= res!1419395 (isDefined!5867 lt!1201404))))

(assert (= (and d!1026588 c!606571) b!3519662))

(assert (= (and d!1026588 (not c!606571)) b!3519657))

(assert (= (or b!3519662 b!3519657) bm!254274))

(assert (= (and d!1026588 (not res!1419397)) b!3519664))

(assert (= (and b!3519664 res!1419395) b!3519661))

(assert (= (and b!3519661 res!1419394) b!3519663))

(assert (= (and b!3519663 res!1419393) b!3519656))

(assert (= (and b!3519656 res!1419396) b!3519658))

(assert (= (and b!3519658 res!1419399) b!3519660))

(assert (= (and b!3519660 res!1419398) b!3519659))

(declare-fun m!3969013 () Bool)

(assert (=> b!3519658 m!3969013))

(declare-fun m!3969015 () Bool)

(assert (=> b!3519658 m!3969015))

(assert (=> b!3519658 m!3969015))

(declare-fun m!3969017 () Bool)

(assert (=> b!3519658 m!3969017))

(assert (=> b!3519659 m!3969013))

(declare-fun m!3969019 () Bool)

(assert (=> b!3519659 m!3969019))

(declare-fun m!3969021 () Bool)

(assert (=> b!3519657 m!3969021))

(declare-fun m!3969023 () Bool)

(assert (=> b!3519664 m!3969023))

(declare-fun m!3969025 () Bool)

(assert (=> d!1026588 m!3969025))

(declare-fun m!3969027 () Bool)

(assert (=> d!1026588 m!3969027))

(declare-fun m!3969029 () Bool)

(assert (=> d!1026588 m!3969029))

(declare-fun m!3969031 () Bool)

(assert (=> d!1026588 m!3969031))

(assert (=> b!3519661 m!3969013))

(declare-fun m!3969033 () Bool)

(assert (=> b!3519661 m!3969033))

(assert (=> b!3519661 m!3969033))

(declare-fun m!3969035 () Bool)

(assert (=> b!3519661 m!3969035))

(declare-fun m!3969037 () Bool)

(assert (=> bm!254274 m!3969037))

(assert (=> b!3519660 m!3969013))

(assert (=> b!3519660 m!3969033))

(assert (=> b!3519660 m!3969033))

(assert (=> b!3519660 m!3969035))

(assert (=> b!3519660 m!3969035))

(declare-fun m!3969039 () Bool)

(assert (=> b!3519660 m!3969039))

(assert (=> b!3519663 m!3969013))

(declare-fun m!3969041 () Bool)

(assert (=> b!3519663 m!3969041))

(declare-fun m!3969043 () Bool)

(assert (=> b!3519663 m!3969043))

(assert (=> b!3519656 m!3969013))

(assert (=> b!3519656 m!3969033))

(assert (=> b!3519656 m!3969033))

(assert (=> b!3519656 m!3969035))

(assert (=> b!3519656 m!3969035))

(declare-fun m!3969045 () Bool)

(assert (=> b!3519656 m!3969045))

(assert (=> b!3519432 d!1026588))

(declare-fun d!1026596 () Bool)

(assert (=> d!1026596 (= (head!7381 lt!1201278) (h!42753 lt!1201278))))

(assert (=> b!3519432 d!1026596))

(declare-fun d!1026598 () Bool)

(declare-fun lt!1201409 () Int)

(assert (=> d!1026598 (>= lt!1201409 0)))

(declare-fun e!2178577 () Int)

(assert (=> d!1026598 (= lt!1201409 e!2178577)))

(declare-fun c!606574 () Bool)

(assert (=> d!1026598 (= c!606574 ((_ is Nil!37333) lt!1201309))))

(assert (=> d!1026598 (= (size!28400 lt!1201309) lt!1201409)))

(declare-fun b!3519669 () Bool)

(assert (=> b!3519669 (= e!2178577 0)))

(declare-fun b!3519670 () Bool)

(assert (=> b!3519670 (= e!2178577 (+ 1 (size!28400 (t!281562 lt!1201309))))))

(assert (= (and d!1026598 c!606574) b!3519669))

(assert (= (and d!1026598 (not c!606574)) b!3519670))

(declare-fun m!3969047 () Bool)

(assert (=> b!3519670 m!3969047))

(assert (=> b!3519432 d!1026598))

(declare-fun d!1026600 () Bool)

(declare-fun dynLambda!15897 (Int BalanceConc!22260) TokenValue!5704)

(assert (=> d!1026600 (= (apply!8889 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) (seqFromList!4001 lt!1201278)) (dynLambda!15897 (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (seqFromList!4001 lt!1201278)))))

(declare-fun b_lambda!102665 () Bool)

(assert (=> (not b_lambda!102665) (not d!1026600)))

(declare-fun t!281585 () Bool)

(declare-fun tb!196531 () Bool)

(assert (=> (and b!3519407 (= (toValue!7726 (transformation!5474 (rule!8116 separatorToken!241))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281585) tb!196531))

(declare-fun result!240860 () Bool)

(assert (=> tb!196531 (= result!240860 (inv!21 (dynLambda!15897 (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (seqFromList!4001 lt!1201278))))))

(declare-fun m!3969049 () Bool)

(assert (=> tb!196531 m!3969049))

(assert (=> d!1026600 t!281585))

(declare-fun b_and!250633 () Bool)

(assert (= b_and!250603 (and (=> t!281585 result!240860) b_and!250633)))

(declare-fun tb!196533 () Bool)

(declare-fun t!281587 () Bool)

(assert (=> (and b!3519431 (= (toValue!7726 (transformation!5474 (h!42754 rules!2135))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281587) tb!196533))

(declare-fun result!240864 () Bool)

(assert (= result!240864 result!240860))

(assert (=> d!1026600 t!281587))

(declare-fun b_and!250635 () Bool)

(assert (= b_and!250607 (and (=> t!281587 result!240864) b_and!250635)))

(declare-fun t!281589 () Bool)

(declare-fun tb!196535 () Bool)

(assert (=> (and b!3519424 (= (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281589) tb!196535))

(declare-fun result!240866 () Bool)

(assert (= result!240866 result!240860))

(assert (=> d!1026600 t!281589))

(declare-fun b_and!250637 () Bool)

(assert (= b_and!250611 (and (=> t!281589 result!240866) b_and!250637)))

(assert (=> d!1026600 m!3968623))

(declare-fun m!3969051 () Bool)

(assert (=> d!1026600 m!3969051))

(assert (=> b!3519432 d!1026600))

(declare-fun d!1026602 () Bool)

(declare-fun e!2178597 () Bool)

(assert (=> d!1026602 e!2178597))

(declare-fun res!1419412 () Bool)

(assert (=> d!1026602 (=> res!1419412 e!2178597)))

(declare-fun lt!1201424 () Option!7609)

(declare-fun isEmpty!21796 (Option!7609) Bool)

(assert (=> d!1026602 (= res!1419412 (isEmpty!21796 lt!1201424))))

(declare-fun e!2178598 () Option!7609)

(assert (=> d!1026602 (= lt!1201424 e!2178598)))

(declare-fun c!606580 () Bool)

(assert (=> d!1026602 (= c!606580 (and ((_ is Cons!37334) rules!2135) (= (tag!6110 (h!42754 rules!2135)) (tag!6110 (rule!8116 (h!42755 tokens!494))))))))

(assert (=> d!1026602 (rulesInvariant!4460 thiss!18206 rules!2135)))

(assert (=> d!1026602 (= (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 tokens!494)))) lt!1201424)))

(declare-fun b!3519692 () Bool)

(assert (=> b!3519692 (= e!2178598 (Some!7608 (h!42754 rules!2135)))))

(declare-fun b!3519693 () Bool)

(declare-fun e!2178599 () Option!7609)

(assert (=> b!3519693 (= e!2178599 None!7608)))

(declare-fun b!3519694 () Bool)

(assert (=> b!3519694 (= e!2178598 e!2178599)))

(declare-fun c!606579 () Bool)

(assert (=> b!3519694 (= c!606579 (and ((_ is Cons!37334) rules!2135) (not (= (tag!6110 (h!42754 rules!2135)) (tag!6110 (rule!8116 (h!42755 tokens!494)))))))))

(declare-fun b!3519695 () Bool)

(declare-fun e!2178596 () Bool)

(assert (=> b!3519695 (= e!2178596 (= (tag!6110 (get!11984 lt!1201424)) (tag!6110 (rule!8116 (h!42755 tokens!494)))))))

(declare-fun b!3519696 () Bool)

(declare-fun lt!1201426 () Unit!52984)

(declare-fun lt!1201425 () Unit!52984)

(assert (=> b!3519696 (= lt!1201426 lt!1201425)))

(assert (=> b!3519696 (rulesInvariant!4460 thiss!18206 (t!281563 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!459 (LexerInterface!5063 Rule!10748 List!37458) Unit!52984)

(assert (=> b!3519696 (= lt!1201425 (lemmaInvariantOnRulesThenOnTail!459 thiss!18206 (h!42754 rules!2135) (t!281563 rules!2135)))))

(assert (=> b!3519696 (= e!2178599 (getRuleFromTag!1117 thiss!18206 (t!281563 rules!2135) (tag!6110 (rule!8116 (h!42755 tokens!494)))))))

(declare-fun b!3519697 () Bool)

(assert (=> b!3519697 (= e!2178597 e!2178596)))

(declare-fun res!1419411 () Bool)

(assert (=> b!3519697 (=> (not res!1419411) (not e!2178596))))

(assert (=> b!3519697 (= res!1419411 (contains!6999 rules!2135 (get!11984 lt!1201424)))))

(assert (= (and d!1026602 c!606580) b!3519692))

(assert (= (and d!1026602 (not c!606580)) b!3519694))

(assert (= (and b!3519694 c!606579) b!3519696))

(assert (= (and b!3519694 (not c!606579)) b!3519693))

(assert (= (and d!1026602 (not res!1419412)) b!3519697))

(assert (= (and b!3519697 res!1419411) b!3519695))

(declare-fun m!3969067 () Bool)

(assert (=> d!1026602 m!3969067))

(assert (=> d!1026602 m!3968577))

(declare-fun m!3969069 () Bool)

(assert (=> b!3519695 m!3969069))

(declare-fun m!3969071 () Bool)

(assert (=> b!3519696 m!3969071))

(declare-fun m!3969073 () Bool)

(assert (=> b!3519696 m!3969073))

(declare-fun m!3969075 () Bool)

(assert (=> b!3519696 m!3969075))

(assert (=> b!3519697 m!3969069))

(assert (=> b!3519697 m!3969069))

(declare-fun m!3969077 () Bool)

(assert (=> b!3519697 m!3969077))

(assert (=> b!3519432 d!1026602))

(declare-fun d!1026610 () Bool)

(declare-fun e!2178602 () Bool)

(assert (=> d!1026610 e!2178602))

(declare-fun res!1419415 () Bool)

(assert (=> d!1026610 (=> (not res!1419415) (not e!2178602))))

(declare-fun lt!1201428 () BalanceConc!22262)

(assert (=> d!1026610 (= res!1419415 (= (list!13656 lt!1201428) (Cons!37335 separatorToken!241 Nil!37335)))))

(assert (=> d!1026610 (= lt!1201428 (singleton!1147 separatorToken!241))))

(assert (=> d!1026610 (= (singletonSeq!2570 separatorToken!241) lt!1201428)))

(declare-fun b!3519700 () Bool)

(assert (=> b!3519700 (= e!2178602 (isBalanced!3454 (c!606538 lt!1201428)))))

(assert (= (and d!1026610 res!1419415) b!3519700))

(declare-fun m!3969085 () Bool)

(assert (=> d!1026610 m!3969085))

(declare-fun m!3969087 () Bool)

(assert (=> d!1026610 m!3969087))

(declare-fun m!3969089 () Bool)

(assert (=> b!3519700 m!3969089))

(assert (=> b!3519432 d!1026610))

(declare-fun d!1026614 () Bool)

(assert (=> d!1026614 (= (isDefined!5866 lt!1201308) (not (isEmpty!21796 lt!1201308)))))

(declare-fun bs!565219 () Bool)

(assert (= bs!565219 d!1026614))

(declare-fun m!3969091 () Bool)

(assert (=> bs!565219 m!3969091))

(assert (=> b!3519432 d!1026614))

(declare-fun d!1026616 () Bool)

(declare-fun e!2178603 () Bool)

(assert (=> d!1026616 e!2178603))

(declare-fun res!1419416 () Bool)

(assert (=> d!1026616 (=> (not res!1419416) (not e!2178603))))

(declare-fun lt!1201429 () BalanceConc!22262)

(assert (=> d!1026616 (= res!1419416 (= (list!13656 lt!1201429) (Cons!37335 (h!42755 (t!281564 tokens!494)) Nil!37335)))))

(assert (=> d!1026616 (= lt!1201429 (singleton!1147 (h!42755 (t!281564 tokens!494))))))

(assert (=> d!1026616 (= (singletonSeq!2570 (h!42755 (t!281564 tokens!494))) lt!1201429)))

(declare-fun b!3519701 () Bool)

(assert (=> b!3519701 (= e!2178603 (isBalanced!3454 (c!606538 lt!1201429)))))

(assert (= (and d!1026616 res!1419416) b!3519701))

(declare-fun m!3969093 () Bool)

(assert (=> d!1026616 m!3969093))

(declare-fun m!3969095 () Bool)

(assert (=> d!1026616 m!3969095))

(declare-fun m!3969097 () Bool)

(assert (=> b!3519701 m!3969097))

(assert (=> b!3519432 d!1026616))

(declare-fun b!3519720 () Bool)

(declare-fun res!1419433 () Bool)

(declare-fun e!2178612 () Bool)

(assert (=> b!3519720 (=> (not res!1419433) (not e!2178612))))

(declare-fun lt!1201446 () Option!7610)

(assert (=> b!3519720 (= res!1419433 (= (value!176469 (_1!21715 (get!11985 lt!1201446))) (apply!8889 (transformation!5474 (rule!8116 (_1!21715 (get!11985 lt!1201446)))) (seqFromList!4001 (originalCharacters!6188 (_1!21715 (get!11985 lt!1201446)))))))))

(declare-fun b!3519721 () Bool)

(declare-fun e!2178615 () Bool)

(declare-datatypes ((tuple2!37166 0))(
  ( (tuple2!37167 (_1!21717 List!37457) (_2!21717 List!37457)) )
))
(declare-fun findLongestMatchInner!936 (Regex!10233 List!37457 Int List!37457 List!37457 Int) tuple2!37166)

(assert (=> b!3519721 (= e!2178615 (matchR!4817 (regex!5474 (rule!8116 (h!42755 tokens!494))) (_1!21717 (findLongestMatchInner!936 (regex!5474 (rule!8116 (h!42755 tokens!494))) Nil!37333 (size!28400 Nil!37333) lt!1201309 lt!1201309 (size!28400 lt!1201309)))))))

(declare-fun b!3519722 () Bool)

(declare-fun res!1419435 () Bool)

(assert (=> b!3519722 (=> (not res!1419435) (not e!2178612))))

(assert (=> b!3519722 (= res!1419435 (= (rule!8116 (_1!21715 (get!11985 lt!1201446))) (rule!8116 (h!42755 tokens!494))))))

(declare-fun b!3519723 () Bool)

(declare-fun e!2178614 () Bool)

(assert (=> b!3519723 (= e!2178614 e!2178612)))

(declare-fun res!1419432 () Bool)

(assert (=> b!3519723 (=> (not res!1419432) (not e!2178612))))

(assert (=> b!3519723 (= res!1419432 (matchR!4817 (regex!5474 (rule!8116 (h!42755 tokens!494))) (list!13653 (charsOf!3488 (_1!21715 (get!11985 lt!1201446))))))))

(declare-fun b!3519724 () Bool)

(assert (=> b!3519724 (= e!2178612 (= (size!28399 (_1!21715 (get!11985 lt!1201446))) (size!28400 (originalCharacters!6188 (_1!21715 (get!11985 lt!1201446))))))))

(declare-fun b!3519726 () Bool)

(declare-fun e!2178613 () Option!7610)

(declare-fun lt!1201443 () tuple2!37166)

(declare-fun size!28405 (BalanceConc!22260) Int)

(assert (=> b!3519726 (= e!2178613 (Some!7609 (tuple2!37163 (Token!10315 (apply!8889 (transformation!5474 (rule!8116 (h!42755 tokens!494))) (seqFromList!4001 (_1!21717 lt!1201443))) (rule!8116 (h!42755 tokens!494)) (size!28405 (seqFromList!4001 (_1!21717 lt!1201443))) (_1!21717 lt!1201443)) (_2!21717 lt!1201443))))))

(declare-fun lt!1201445 () Unit!52984)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!909 (Regex!10233 List!37457) Unit!52984)

(assert (=> b!3519726 (= lt!1201445 (longestMatchIsAcceptedByMatchOrIsEmpty!909 (regex!5474 (rule!8116 (h!42755 tokens!494))) lt!1201309))))

(declare-fun res!1419434 () Bool)

(assert (=> b!3519726 (= res!1419434 (isEmpty!21792 (_1!21717 (findLongestMatchInner!936 (regex!5474 (rule!8116 (h!42755 tokens!494))) Nil!37333 (size!28400 Nil!37333) lt!1201309 lt!1201309 (size!28400 lt!1201309)))))))

(assert (=> b!3519726 (=> res!1419434 e!2178615)))

(assert (=> b!3519726 e!2178615))

(declare-fun lt!1201444 () Unit!52984)

(assert (=> b!3519726 (= lt!1201444 lt!1201445)))

(declare-fun lt!1201447 () Unit!52984)

(declare-fun lemmaSemiInverse!1288 (TokenValueInjection!10836 BalanceConc!22260) Unit!52984)

(assert (=> b!3519726 (= lt!1201447 (lemmaSemiInverse!1288 (transformation!5474 (rule!8116 (h!42755 tokens!494))) (seqFromList!4001 (_1!21717 lt!1201443))))))

(declare-fun d!1026618 () Bool)

(assert (=> d!1026618 e!2178614))

(declare-fun res!1419431 () Bool)

(assert (=> d!1026618 (=> res!1419431 e!2178614)))

(assert (=> d!1026618 (= res!1419431 (isEmpty!21794 lt!1201446))))

(assert (=> d!1026618 (= lt!1201446 e!2178613)))

(declare-fun c!606583 () Bool)

(assert (=> d!1026618 (= c!606583 (isEmpty!21792 (_1!21717 lt!1201443)))))

(declare-fun findLongestMatch!851 (Regex!10233 List!37457) tuple2!37166)

(assert (=> d!1026618 (= lt!1201443 (findLongestMatch!851 (regex!5474 (rule!8116 (h!42755 tokens!494))) lt!1201309))))

(declare-fun ruleValid!1769 (LexerInterface!5063 Rule!10748) Bool)

(assert (=> d!1026618 (ruleValid!1769 thiss!18206 (rule!8116 (h!42755 tokens!494)))))

(assert (=> d!1026618 (= (maxPrefixOneRule!1770 thiss!18206 (rule!8116 (h!42755 tokens!494)) lt!1201309) lt!1201446)))

(declare-fun b!3519725 () Bool)

(assert (=> b!3519725 (= e!2178613 None!7609)))

(declare-fun b!3519727 () Bool)

(declare-fun res!1419436 () Bool)

(assert (=> b!3519727 (=> (not res!1419436) (not e!2178612))))

(assert (=> b!3519727 (= res!1419436 (< (size!28400 (_2!21715 (get!11985 lt!1201446))) (size!28400 lt!1201309)))))

(declare-fun b!3519728 () Bool)

(declare-fun res!1419437 () Bool)

(assert (=> b!3519728 (=> (not res!1419437) (not e!2178612))))

(assert (=> b!3519728 (= res!1419437 (= (++!9249 (list!13653 (charsOf!3488 (_1!21715 (get!11985 lt!1201446)))) (_2!21715 (get!11985 lt!1201446))) lt!1201309))))

(assert (= (and d!1026618 c!606583) b!3519725))

(assert (= (and d!1026618 (not c!606583)) b!3519726))

(assert (= (and b!3519726 (not res!1419434)) b!3519721))

(assert (= (and d!1026618 (not res!1419431)) b!3519723))

(assert (= (and b!3519723 res!1419432) b!3519728))

(assert (= (and b!3519728 res!1419437) b!3519727))

(assert (= (and b!3519727 res!1419436) b!3519722))

(assert (= (and b!3519722 res!1419435) b!3519720))

(assert (= (and b!3519720 res!1419433) b!3519724))

(declare-fun m!3969105 () Bool)

(assert (=> b!3519720 m!3969105))

(declare-fun m!3969107 () Bool)

(assert (=> b!3519720 m!3969107))

(assert (=> b!3519720 m!3969107))

(declare-fun m!3969109 () Bool)

(assert (=> b!3519720 m!3969109))

(assert (=> b!3519724 m!3969105))

(declare-fun m!3969111 () Bool)

(assert (=> b!3519724 m!3969111))

(assert (=> b!3519723 m!3969105))

(declare-fun m!3969113 () Bool)

(assert (=> b!3519723 m!3969113))

(assert (=> b!3519723 m!3969113))

(declare-fun m!3969115 () Bool)

(assert (=> b!3519723 m!3969115))

(assert (=> b!3519723 m!3969115))

(declare-fun m!3969117 () Bool)

(assert (=> b!3519723 m!3969117))

(declare-fun m!3969119 () Bool)

(assert (=> b!3519726 m!3969119))

(declare-fun m!3969121 () Bool)

(assert (=> b!3519726 m!3969121))

(assert (=> b!3519726 m!3969119))

(declare-fun m!3969123 () Bool)

(assert (=> b!3519726 m!3969123))

(assert (=> b!3519726 m!3968641))

(declare-fun m!3969125 () Bool)

(assert (=> b!3519726 m!3969125))

(assert (=> b!3519726 m!3968641))

(declare-fun m!3969127 () Bool)

(assert (=> b!3519726 m!3969127))

(declare-fun m!3969129 () Bool)

(assert (=> b!3519726 m!3969129))

(assert (=> b!3519726 m!3969119))

(declare-fun m!3969131 () Bool)

(assert (=> b!3519726 m!3969131))

(assert (=> b!3519726 m!3969119))

(declare-fun m!3969133 () Bool)

(assert (=> b!3519726 m!3969133))

(assert (=> b!3519726 m!3969123))

(assert (=> b!3519728 m!3969105))

(assert (=> b!3519728 m!3969113))

(assert (=> b!3519728 m!3969113))

(assert (=> b!3519728 m!3969115))

(assert (=> b!3519728 m!3969115))

(declare-fun m!3969135 () Bool)

(assert (=> b!3519728 m!3969135))

(assert (=> b!3519727 m!3969105))

(declare-fun m!3969137 () Bool)

(assert (=> b!3519727 m!3969137))

(assert (=> b!3519727 m!3968641))

(declare-fun m!3969139 () Bool)

(assert (=> d!1026618 m!3969139))

(declare-fun m!3969141 () Bool)

(assert (=> d!1026618 m!3969141))

(declare-fun m!3969143 () Bool)

(assert (=> d!1026618 m!3969143))

(declare-fun m!3969145 () Bool)

(assert (=> d!1026618 m!3969145))

(assert (=> b!3519721 m!3969123))

(assert (=> b!3519721 m!3968641))

(assert (=> b!3519721 m!3969123))

(assert (=> b!3519721 m!3968641))

(assert (=> b!3519721 m!3969125))

(declare-fun m!3969147 () Bool)

(assert (=> b!3519721 m!3969147))

(assert (=> b!3519722 m!3969105))

(assert (=> b!3519432 d!1026618))

(declare-fun d!1026622 () Bool)

(declare-fun e!2178618 () Bool)

(assert (=> d!1026622 e!2178618))

(declare-fun res!1419442 () Bool)

(assert (=> d!1026622 (=> (not res!1419442) (not e!2178618))))

(assert (=> d!1026622 (= res!1419442 (isDefined!5866 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 separatorToken!241)))))))

(declare-fun lt!1201450 () Unit!52984)

(declare-fun choose!20423 (LexerInterface!5063 List!37458 List!37457 Token!10314) Unit!52984)

(assert (=> d!1026622 (= lt!1201450 (choose!20423 thiss!18206 rules!2135 lt!1201272 separatorToken!241))))

(assert (=> d!1026622 (rulesInvariant!4460 thiss!18206 rules!2135)))

(assert (=> d!1026622 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1117 thiss!18206 rules!2135 lt!1201272 separatorToken!241) lt!1201450)))

(declare-fun b!3519733 () Bool)

(declare-fun res!1419443 () Bool)

(assert (=> b!3519733 (=> (not res!1419443) (not e!2178618))))

(assert (=> b!3519733 (= res!1419443 (matchR!4817 (regex!5474 (get!11984 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 separatorToken!241))))) (list!13653 (charsOf!3488 separatorToken!241))))))

(declare-fun b!3519734 () Bool)

(assert (=> b!3519734 (= e!2178618 (= (rule!8116 separatorToken!241) (get!11984 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 separatorToken!241))))))))

(assert (= (and d!1026622 res!1419442) b!3519733))

(assert (= (and b!3519733 res!1419443) b!3519734))

(assert (=> d!1026622 m!3968671))

(assert (=> d!1026622 m!3968671))

(declare-fun m!3969149 () Bool)

(assert (=> d!1026622 m!3969149))

(declare-fun m!3969151 () Bool)

(assert (=> d!1026622 m!3969151))

(assert (=> d!1026622 m!3968577))

(assert (=> b!3519733 m!3968549))

(assert (=> b!3519733 m!3968671))

(assert (=> b!3519733 m!3968671))

(declare-fun m!3969153 () Bool)

(assert (=> b!3519733 m!3969153))

(assert (=> b!3519733 m!3968557))

(declare-fun m!3969155 () Bool)

(assert (=> b!3519733 m!3969155))

(assert (=> b!3519733 m!3968549))

(assert (=> b!3519733 m!3968557))

(assert (=> b!3519734 m!3968671))

(assert (=> b!3519734 m!3968671))

(assert (=> b!3519734 m!3969153))

(assert (=> b!3519432 d!1026622))

(declare-fun d!1026624 () Bool)

(declare-fun fromListB!1837 (List!37457) BalanceConc!22260)

(assert (=> d!1026624 (= (seqFromList!4001 lt!1201278) (fromListB!1837 lt!1201278))))

(declare-fun bs!565221 () Bool)

(assert (= bs!565221 d!1026624))

(declare-fun m!3969157 () Bool)

(assert (=> bs!565221 m!3969157))

(assert (=> b!3519432 d!1026624))

(declare-fun d!1026626 () Bool)

(declare-fun lt!1201459 () BalanceConc!22260)

(assert (=> d!1026626 (= (list!13653 lt!1201459) (printListTailRec!715 thiss!18206 (dropList!1232 lt!1201291 0) (list!13653 (BalanceConc!22261 Empty!11323))))))

(declare-fun e!2178625 () BalanceConc!22260)

(assert (=> d!1026626 (= lt!1201459 e!2178625)))

(declare-fun c!606586 () Bool)

(assert (=> d!1026626 (= c!606586 (>= 0 (size!28401 lt!1201291)))))

(declare-fun e!2178626 () Bool)

(assert (=> d!1026626 e!2178626))

(declare-fun res!1419448 () Bool)

(assert (=> d!1026626 (=> (not res!1419448) (not e!2178626))))

(assert (=> d!1026626 (= res!1419448 (>= 0 0))))

(assert (=> d!1026626 (= (printTailRec!1558 thiss!18206 lt!1201291 0 (BalanceConc!22261 Empty!11323)) lt!1201459)))

(declare-fun b!3519741 () Bool)

(assert (=> b!3519741 (= e!2178626 (<= 0 (size!28401 lt!1201291)))))

(declare-fun b!3519742 () Bool)

(assert (=> b!3519742 (= e!2178625 (BalanceConc!22261 Empty!11323))))

(declare-fun b!3519743 () Bool)

(assert (=> b!3519743 (= e!2178625 (printTailRec!1558 thiss!18206 lt!1201291 (+ 0 1) (++!9250 (BalanceConc!22261 Empty!11323) (charsOf!3488 (apply!8888 lt!1201291 0)))))))

(declare-fun lt!1201457 () List!37459)

(assert (=> b!3519743 (= lt!1201457 (list!13656 lt!1201291))))

(declare-fun lt!1201453 () Unit!52984)

(assert (=> b!3519743 (= lt!1201453 (lemmaDropApply!1190 lt!1201457 0))))

(assert (=> b!3519743 (= (head!7382 (drop!2046 lt!1201457 0)) (apply!8890 lt!1201457 0))))

(declare-fun lt!1201458 () Unit!52984)

(assert (=> b!3519743 (= lt!1201458 lt!1201453)))

(declare-fun lt!1201456 () List!37459)

(assert (=> b!3519743 (= lt!1201456 (list!13656 lt!1201291))))

(declare-fun lt!1201454 () Unit!52984)

(assert (=> b!3519743 (= lt!1201454 (lemmaDropTail!1074 lt!1201456 0))))

(assert (=> b!3519743 (= (tail!5487 (drop!2046 lt!1201456 0)) (drop!2046 lt!1201456 (+ 0 1)))))

(declare-fun lt!1201455 () Unit!52984)

(assert (=> b!3519743 (= lt!1201455 lt!1201454)))

(assert (= (and d!1026626 res!1419448) b!3519741))

(assert (= (and d!1026626 c!606586) b!3519742))

(assert (= (and d!1026626 (not c!606586)) b!3519743))

(declare-fun m!3969159 () Bool)

(assert (=> d!1026626 m!3969159))

(assert (=> d!1026626 m!3968849))

(declare-fun m!3969161 () Bool)

(assert (=> d!1026626 m!3969161))

(declare-fun m!3969163 () Bool)

(assert (=> d!1026626 m!3969163))

(assert (=> d!1026626 m!3969163))

(assert (=> d!1026626 m!3968849))

(declare-fun m!3969165 () Bool)

(assert (=> d!1026626 m!3969165))

(assert (=> b!3519741 m!3969161))

(declare-fun m!3969167 () Bool)

(assert (=> b!3519743 m!3969167))

(declare-fun m!3969169 () Bool)

(assert (=> b!3519743 m!3969169))

(declare-fun m!3969171 () Bool)

(assert (=> b!3519743 m!3969171))

(declare-fun m!3969173 () Bool)

(assert (=> b!3519743 m!3969173))

(declare-fun m!3969175 () Bool)

(assert (=> b!3519743 m!3969175))

(declare-fun m!3969177 () Bool)

(assert (=> b!3519743 m!3969177))

(declare-fun m!3969179 () Bool)

(assert (=> b!3519743 m!3969179))

(assert (=> b!3519743 m!3969171))

(declare-fun m!3969181 () Bool)

(assert (=> b!3519743 m!3969181))

(assert (=> b!3519743 m!3969169))

(declare-fun m!3969183 () Bool)

(assert (=> b!3519743 m!3969183))

(declare-fun m!3969185 () Bool)

(assert (=> b!3519743 m!3969185))

(declare-fun m!3969187 () Bool)

(assert (=> b!3519743 m!3969187))

(assert (=> b!3519743 m!3969181))

(declare-fun m!3969189 () Bool)

(assert (=> b!3519743 m!3969189))

(assert (=> b!3519743 m!3969183))

(declare-fun m!3969191 () Bool)

(assert (=> b!3519743 m!3969191))

(assert (=> b!3519743 m!3969167))

(assert (=> b!3519432 d!1026626))

(declare-fun d!1026628 () Bool)

(assert (=> d!1026628 (= (maxPrefix!2603 thiss!18206 rules!2135 (++!9249 (list!13653 (charsOf!3488 (h!42755 tokens!494))) lt!1201283)) (Some!7609 (tuple2!37163 (h!42755 tokens!494) lt!1201283)))))

(declare-fun lt!1201466 () Unit!52984)

(declare-fun choose!20424 (LexerInterface!5063 List!37458 Token!10314 Rule!10748 List!37457 Rule!10748) Unit!52984)

(assert (=> d!1026628 (= lt!1201466 (choose!20424 thiss!18206 rules!2135 (h!42755 tokens!494) (rule!8116 (h!42755 tokens!494)) lt!1201283 (rule!8116 separatorToken!241)))))

(assert (=> d!1026628 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026628 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!230 thiss!18206 rules!2135 (h!42755 tokens!494) (rule!8116 (h!42755 tokens!494)) lt!1201283 (rule!8116 separatorToken!241)) lt!1201466)))

(declare-fun bs!565222 () Bool)

(assert (= bs!565222 d!1026628))

(assert (=> bs!565222 m!3968593))

(assert (=> bs!565222 m!3968595))

(declare-fun m!3969219 () Bool)

(assert (=> bs!565222 m!3969219))

(assert (=> bs!565222 m!3968535))

(declare-fun m!3969221 () Bool)

(assert (=> bs!565222 m!3969221))

(declare-fun m!3969223 () Bool)

(assert (=> bs!565222 m!3969223))

(assert (=> bs!565222 m!3968595))

(assert (=> bs!565222 m!3969221))

(assert (=> bs!565222 m!3968593))

(assert (=> b!3519432 d!1026628))

(declare-fun b!3519759 () Bool)

(declare-fun res!1419462 () Bool)

(declare-fun e!2178633 () Bool)

(assert (=> b!3519759 (=> (not res!1419462) (not e!2178633))))

(declare-fun lt!1201472 () Option!7610)

(assert (=> b!3519759 (= res!1419462 (= (value!176469 (_1!21715 (get!11985 lt!1201472))) (apply!8889 (transformation!5474 (rule!8116 (_1!21715 (get!11985 lt!1201472)))) (seqFromList!4001 (originalCharacters!6188 (_1!21715 (get!11985 lt!1201472)))))))))

(declare-fun b!3519760 () Bool)

(declare-fun e!2178636 () Bool)

(assert (=> b!3519760 (= e!2178636 (matchR!4817 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) (_1!21717 (findLongestMatchInner!936 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) Nil!37333 (size!28400 Nil!37333) lt!1201278 lt!1201278 (size!28400 lt!1201278)))))))

(declare-fun b!3519761 () Bool)

(declare-fun res!1419464 () Bool)

(assert (=> b!3519761 (=> (not res!1419464) (not e!2178633))))

(assert (=> b!3519761 (= res!1419464 (= (rule!8116 (_1!21715 (get!11985 lt!1201472))) (rule!8116 (h!42755 (t!281564 tokens!494)))))))

(declare-fun b!3519762 () Bool)

(declare-fun e!2178635 () Bool)

(assert (=> b!3519762 (= e!2178635 e!2178633)))

(declare-fun res!1419461 () Bool)

(assert (=> b!3519762 (=> (not res!1419461) (not e!2178633))))

(assert (=> b!3519762 (= res!1419461 (matchR!4817 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) (list!13653 (charsOf!3488 (_1!21715 (get!11985 lt!1201472))))))))

(declare-fun b!3519763 () Bool)

(assert (=> b!3519763 (= e!2178633 (= (size!28399 (_1!21715 (get!11985 lt!1201472))) (size!28400 (originalCharacters!6188 (_1!21715 (get!11985 lt!1201472))))))))

(declare-fun b!3519765 () Bool)

(declare-fun e!2178634 () Option!7610)

(declare-fun lt!1201469 () tuple2!37166)

(assert (=> b!3519765 (= e!2178634 (Some!7609 (tuple2!37163 (Token!10315 (apply!8889 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) (seqFromList!4001 (_1!21717 lt!1201469))) (rule!8116 (h!42755 (t!281564 tokens!494))) (size!28405 (seqFromList!4001 (_1!21717 lt!1201469))) (_1!21717 lt!1201469)) (_2!21717 lt!1201469))))))

(declare-fun lt!1201471 () Unit!52984)

(assert (=> b!3519765 (= lt!1201471 (longestMatchIsAcceptedByMatchOrIsEmpty!909 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) lt!1201278))))

(declare-fun res!1419463 () Bool)

(assert (=> b!3519765 (= res!1419463 (isEmpty!21792 (_1!21717 (findLongestMatchInner!936 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) Nil!37333 (size!28400 Nil!37333) lt!1201278 lt!1201278 (size!28400 lt!1201278)))))))

(assert (=> b!3519765 (=> res!1419463 e!2178636)))

(assert (=> b!3519765 e!2178636))

(declare-fun lt!1201470 () Unit!52984)

(assert (=> b!3519765 (= lt!1201470 lt!1201471)))

(declare-fun lt!1201473 () Unit!52984)

(assert (=> b!3519765 (= lt!1201473 (lemmaSemiInverse!1288 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) (seqFromList!4001 (_1!21717 lt!1201469))))))

(declare-fun d!1026634 () Bool)

(assert (=> d!1026634 e!2178635))

(declare-fun res!1419460 () Bool)

(assert (=> d!1026634 (=> res!1419460 e!2178635)))

(assert (=> d!1026634 (= res!1419460 (isEmpty!21794 lt!1201472))))

(assert (=> d!1026634 (= lt!1201472 e!2178634)))

(declare-fun c!606589 () Bool)

(assert (=> d!1026634 (= c!606589 (isEmpty!21792 (_1!21717 lt!1201469)))))

(assert (=> d!1026634 (= lt!1201469 (findLongestMatch!851 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) lt!1201278))))

(assert (=> d!1026634 (ruleValid!1769 thiss!18206 (rule!8116 (h!42755 (t!281564 tokens!494))))))

(assert (=> d!1026634 (= (maxPrefixOneRule!1770 thiss!18206 (rule!8116 (h!42755 (t!281564 tokens!494))) lt!1201278) lt!1201472)))

(declare-fun b!3519764 () Bool)

(assert (=> b!3519764 (= e!2178634 None!7609)))

(declare-fun b!3519766 () Bool)

(declare-fun res!1419465 () Bool)

(assert (=> b!3519766 (=> (not res!1419465) (not e!2178633))))

(assert (=> b!3519766 (= res!1419465 (< (size!28400 (_2!21715 (get!11985 lt!1201472))) (size!28400 lt!1201278)))))

(declare-fun b!3519767 () Bool)

(declare-fun res!1419466 () Bool)

(assert (=> b!3519767 (=> (not res!1419466) (not e!2178633))))

(assert (=> b!3519767 (= res!1419466 (= (++!9249 (list!13653 (charsOf!3488 (_1!21715 (get!11985 lt!1201472)))) (_2!21715 (get!11985 lt!1201472))) lt!1201278))))

(assert (= (and d!1026634 c!606589) b!3519764))

(assert (= (and d!1026634 (not c!606589)) b!3519765))

(assert (= (and b!3519765 (not res!1419463)) b!3519760))

(assert (= (and d!1026634 (not res!1419460)) b!3519762))

(assert (= (and b!3519762 res!1419461) b!3519767))

(assert (= (and b!3519767 res!1419466) b!3519766))

(assert (= (and b!3519766 res!1419465) b!3519761))

(assert (= (and b!3519761 res!1419464) b!3519759))

(assert (= (and b!3519759 res!1419462) b!3519763))

(declare-fun m!3969227 () Bool)

(assert (=> b!3519759 m!3969227))

(declare-fun m!3969229 () Bool)

(assert (=> b!3519759 m!3969229))

(assert (=> b!3519759 m!3969229))

(declare-fun m!3969231 () Bool)

(assert (=> b!3519759 m!3969231))

(assert (=> b!3519763 m!3969227))

(declare-fun m!3969233 () Bool)

(assert (=> b!3519763 m!3969233))

(assert (=> b!3519762 m!3969227))

(declare-fun m!3969235 () Bool)

(assert (=> b!3519762 m!3969235))

(assert (=> b!3519762 m!3969235))

(declare-fun m!3969237 () Bool)

(assert (=> b!3519762 m!3969237))

(assert (=> b!3519762 m!3969237))

(declare-fun m!3969239 () Bool)

(assert (=> b!3519762 m!3969239))

(declare-fun m!3969241 () Bool)

(assert (=> b!3519765 m!3969241))

(declare-fun m!3969243 () Bool)

(assert (=> b!3519765 m!3969243))

(assert (=> b!3519765 m!3969241))

(assert (=> b!3519765 m!3969123))

(assert (=> b!3519765 m!3968653))

(declare-fun m!3969245 () Bool)

(assert (=> b!3519765 m!3969245))

(assert (=> b!3519765 m!3968653))

(declare-fun m!3969247 () Bool)

(assert (=> b!3519765 m!3969247))

(declare-fun m!3969249 () Bool)

(assert (=> b!3519765 m!3969249))

(assert (=> b!3519765 m!3969241))

(declare-fun m!3969251 () Bool)

(assert (=> b!3519765 m!3969251))

(assert (=> b!3519765 m!3969241))

(declare-fun m!3969253 () Bool)

(assert (=> b!3519765 m!3969253))

(assert (=> b!3519765 m!3969123))

(assert (=> b!3519767 m!3969227))

(assert (=> b!3519767 m!3969235))

(assert (=> b!3519767 m!3969235))

(assert (=> b!3519767 m!3969237))

(assert (=> b!3519767 m!3969237))

(declare-fun m!3969255 () Bool)

(assert (=> b!3519767 m!3969255))

(assert (=> b!3519766 m!3969227))

(declare-fun m!3969257 () Bool)

(assert (=> b!3519766 m!3969257))

(assert (=> b!3519766 m!3968653))

(declare-fun m!3969259 () Bool)

(assert (=> d!1026634 m!3969259))

(declare-fun m!3969261 () Bool)

(assert (=> d!1026634 m!3969261))

(declare-fun m!3969263 () Bool)

(assert (=> d!1026634 m!3969263))

(declare-fun m!3969265 () Bool)

(assert (=> d!1026634 m!3969265))

(assert (=> b!3519760 m!3969123))

(assert (=> b!3519760 m!3968653))

(assert (=> b!3519760 m!3969123))

(assert (=> b!3519760 m!3968653))

(assert (=> b!3519760 m!3969245))

(declare-fun m!3969267 () Bool)

(assert (=> b!3519760 m!3969267))

(assert (=> b!3519761 m!3969227))

(assert (=> b!3519432 d!1026634))

(declare-fun d!1026638 () Bool)

(declare-fun lt!1201475 () BalanceConc!22260)

(assert (=> d!1026638 (= (list!13653 lt!1201475) (printList!1611 thiss!18206 (list!13656 lt!1201291)))))

(assert (=> d!1026638 (= lt!1201475 (printTailRec!1558 thiss!18206 lt!1201291 0 (BalanceConc!22261 Empty!11323)))))

(assert (=> d!1026638 (= (print!2128 thiss!18206 lt!1201291) lt!1201475)))

(declare-fun bs!565224 () Bool)

(assert (= bs!565224 d!1026638))

(declare-fun m!3969269 () Bool)

(assert (=> bs!565224 m!3969269))

(assert (=> bs!565224 m!3969177))

(assert (=> bs!565224 m!3969177))

(declare-fun m!3969271 () Bool)

(assert (=> bs!565224 m!3969271))

(assert (=> bs!565224 m!3968661))

(assert (=> b!3519432 d!1026638))

(declare-fun d!1026640 () Bool)

(declare-fun dynLambda!15898 (Int Token!10314) Bool)

(assert (=> d!1026640 (dynLambda!15898 lambda!122713 (h!42755 (t!281564 tokens!494)))))

(declare-fun lt!1201478 () Unit!52984)

(declare-fun choose!20425 (List!37459 Int Token!10314) Unit!52984)

(assert (=> d!1026640 (= lt!1201478 (choose!20425 tokens!494 lambda!122713 (h!42755 (t!281564 tokens!494))))))

(declare-fun e!2178639 () Bool)

(assert (=> d!1026640 e!2178639))

(declare-fun res!1419469 () Bool)

(assert (=> d!1026640 (=> (not res!1419469) (not e!2178639))))

(assert (=> d!1026640 (= res!1419469 (forall!8025 tokens!494 lambda!122713))))

(assert (=> d!1026640 (= (forallContained!1421 tokens!494 lambda!122713 (h!42755 (t!281564 tokens!494))) lt!1201478)))

(declare-fun b!3519770 () Bool)

(declare-fun contains!7001 (List!37459 Token!10314) Bool)

(assert (=> b!3519770 (= e!2178639 (contains!7001 tokens!494 (h!42755 (t!281564 tokens!494))))))

(assert (= (and d!1026640 res!1419469) b!3519770))

(declare-fun b_lambda!102667 () Bool)

(assert (=> (not b_lambda!102667) (not d!1026640)))

(declare-fun m!3969273 () Bool)

(assert (=> d!1026640 m!3969273))

(declare-fun m!3969275 () Bool)

(assert (=> d!1026640 m!3969275))

(declare-fun m!3969277 () Bool)

(assert (=> d!1026640 m!3969277))

(declare-fun m!3969279 () Bool)

(assert (=> b!3519770 m!3969279))

(assert (=> b!3519432 d!1026640))

(declare-fun d!1026642 () Bool)

(declare-fun lt!1201485 () BalanceConc!22260)

(assert (=> d!1026642 (= (list!13653 lt!1201485) (printListTailRec!715 thiss!18206 (dropList!1232 lt!1201287 0) (list!13653 (BalanceConc!22261 Empty!11323))))))

(declare-fun e!2178640 () BalanceConc!22260)

(assert (=> d!1026642 (= lt!1201485 e!2178640)))

(declare-fun c!606590 () Bool)

(assert (=> d!1026642 (= c!606590 (>= 0 (size!28401 lt!1201287)))))

(declare-fun e!2178641 () Bool)

(assert (=> d!1026642 e!2178641))

(declare-fun res!1419470 () Bool)

(assert (=> d!1026642 (=> (not res!1419470) (not e!2178641))))

(assert (=> d!1026642 (= res!1419470 (>= 0 0))))

(assert (=> d!1026642 (= (printTailRec!1558 thiss!18206 lt!1201287 0 (BalanceConc!22261 Empty!11323)) lt!1201485)))

(declare-fun b!3519771 () Bool)

(assert (=> b!3519771 (= e!2178641 (<= 0 (size!28401 lt!1201287)))))

(declare-fun b!3519772 () Bool)

(assert (=> b!3519772 (= e!2178640 (BalanceConc!22261 Empty!11323))))

(declare-fun b!3519773 () Bool)

(assert (=> b!3519773 (= e!2178640 (printTailRec!1558 thiss!18206 lt!1201287 (+ 0 1) (++!9250 (BalanceConc!22261 Empty!11323) (charsOf!3488 (apply!8888 lt!1201287 0)))))))

(declare-fun lt!1201483 () List!37459)

(assert (=> b!3519773 (= lt!1201483 (list!13656 lt!1201287))))

(declare-fun lt!1201479 () Unit!52984)

(assert (=> b!3519773 (= lt!1201479 (lemmaDropApply!1190 lt!1201483 0))))

(assert (=> b!3519773 (= (head!7382 (drop!2046 lt!1201483 0)) (apply!8890 lt!1201483 0))))

(declare-fun lt!1201484 () Unit!52984)

(assert (=> b!3519773 (= lt!1201484 lt!1201479)))

(declare-fun lt!1201482 () List!37459)

(assert (=> b!3519773 (= lt!1201482 (list!13656 lt!1201287))))

(declare-fun lt!1201480 () Unit!52984)

(assert (=> b!3519773 (= lt!1201480 (lemmaDropTail!1074 lt!1201482 0))))

(assert (=> b!3519773 (= (tail!5487 (drop!2046 lt!1201482 0)) (drop!2046 lt!1201482 (+ 0 1)))))

(declare-fun lt!1201481 () Unit!52984)

(assert (=> b!3519773 (= lt!1201481 lt!1201480)))

(assert (= (and d!1026642 res!1419470) b!3519771))

(assert (= (and d!1026642 c!606590) b!3519772))

(assert (= (and d!1026642 (not c!606590)) b!3519773))

(declare-fun m!3969281 () Bool)

(assert (=> d!1026642 m!3969281))

(assert (=> d!1026642 m!3968849))

(declare-fun m!3969283 () Bool)

(assert (=> d!1026642 m!3969283))

(declare-fun m!3969285 () Bool)

(assert (=> d!1026642 m!3969285))

(assert (=> d!1026642 m!3969285))

(assert (=> d!1026642 m!3968849))

(declare-fun m!3969287 () Bool)

(assert (=> d!1026642 m!3969287))

(assert (=> b!3519771 m!3969283))

(declare-fun m!3969289 () Bool)

(assert (=> b!3519773 m!3969289))

(declare-fun m!3969291 () Bool)

(assert (=> b!3519773 m!3969291))

(declare-fun m!3969293 () Bool)

(assert (=> b!3519773 m!3969293))

(declare-fun m!3969295 () Bool)

(assert (=> b!3519773 m!3969295))

(declare-fun m!3969297 () Bool)

(assert (=> b!3519773 m!3969297))

(declare-fun m!3969299 () Bool)

(assert (=> b!3519773 m!3969299))

(declare-fun m!3969301 () Bool)

(assert (=> b!3519773 m!3969301))

(assert (=> b!3519773 m!3969293))

(declare-fun m!3969303 () Bool)

(assert (=> b!3519773 m!3969303))

(assert (=> b!3519773 m!3969291))

(declare-fun m!3969305 () Bool)

(assert (=> b!3519773 m!3969305))

(declare-fun m!3969307 () Bool)

(assert (=> b!3519773 m!3969307))

(declare-fun m!3969309 () Bool)

(assert (=> b!3519773 m!3969309))

(assert (=> b!3519773 m!3969303))

(declare-fun m!3969311 () Bool)

(assert (=> b!3519773 m!3969311))

(assert (=> b!3519773 m!3969305))

(declare-fun m!3969313 () Bool)

(assert (=> b!3519773 m!3969313))

(assert (=> b!3519773 m!3969289))

(assert (=> b!3519432 d!1026642))

(declare-fun b!3519790 () Bool)

(declare-fun e!2178651 () List!37457)

(declare-fun call!254291 () List!37457)

(assert (=> b!3519790 (= e!2178651 call!254291)))

(declare-fun b!3519791 () Bool)

(declare-fun e!2178650 () List!37457)

(declare-fun call!254290 () List!37457)

(assert (=> b!3519791 (= e!2178650 call!254290)))

(declare-fun b!3519792 () Bool)

(declare-fun c!606601 () Bool)

(assert (=> b!3519792 (= c!606601 ((_ is Star!10233) (regex!5474 (rule!8116 (h!42755 tokens!494)))))))

(declare-fun e!2178652 () List!37457)

(assert (=> b!3519792 (= e!2178652 e!2178650)))

(declare-fun b!3519793 () Bool)

(declare-fun e!2178653 () List!37457)

(assert (=> b!3519793 (= e!2178653 Nil!37333)))

(declare-fun bm!254283 () Bool)

(declare-fun call!254288 () List!37457)

(declare-fun c!606602 () Bool)

(assert (=> bm!254283 (= call!254288 (usedCharacters!708 (ite c!606602 (regTwo!20979 (regex!5474 (rule!8116 (h!42755 tokens!494)))) (regOne!20978 (regex!5474 (rule!8116 (h!42755 tokens!494)))))))))

(declare-fun d!1026644 () Bool)

(declare-fun c!606600 () Bool)

(assert (=> d!1026644 (= c!606600 (or ((_ is EmptyExpr!10233) (regex!5474 (rule!8116 (h!42755 tokens!494)))) ((_ is EmptyLang!10233) (regex!5474 (rule!8116 (h!42755 tokens!494))))))))

(assert (=> d!1026644 (= (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 tokens!494)))) e!2178653)))

(declare-fun b!3519794 () Bool)

(assert (=> b!3519794 (= e!2178651 call!254291)))

(declare-fun call!254289 () List!37457)

(declare-fun bm!254284 () Bool)

(assert (=> bm!254284 (= call!254291 (++!9249 (ite c!606602 call!254289 call!254288) (ite c!606602 call!254288 call!254289)))))

(declare-fun bm!254285 () Bool)

(assert (=> bm!254285 (= call!254289 call!254290)))

(declare-fun b!3519795 () Bool)

(assert (=> b!3519795 (= e!2178653 e!2178652)))

(declare-fun c!606599 () Bool)

(assert (=> b!3519795 (= c!606599 ((_ is ElementMatch!10233) (regex!5474 (rule!8116 (h!42755 tokens!494)))))))

(declare-fun b!3519796 () Bool)

(assert (=> b!3519796 (= e!2178652 (Cons!37333 (c!606536 (regex!5474 (rule!8116 (h!42755 tokens!494)))) Nil!37333))))

(declare-fun b!3519797 () Bool)

(assert (=> b!3519797 (= e!2178650 e!2178651)))

(assert (=> b!3519797 (= c!606602 ((_ is Union!10233) (regex!5474 (rule!8116 (h!42755 tokens!494)))))))

(declare-fun bm!254286 () Bool)

(assert (=> bm!254286 (= call!254290 (usedCharacters!708 (ite c!606601 (reg!10562 (regex!5474 (rule!8116 (h!42755 tokens!494)))) (ite c!606602 (regOne!20979 (regex!5474 (rule!8116 (h!42755 tokens!494)))) (regTwo!20978 (regex!5474 (rule!8116 (h!42755 tokens!494))))))))))

(assert (= (and d!1026644 c!606600) b!3519793))

(assert (= (and d!1026644 (not c!606600)) b!3519795))

(assert (= (and b!3519795 c!606599) b!3519796))

(assert (= (and b!3519795 (not c!606599)) b!3519792))

(assert (= (and b!3519792 c!606601) b!3519791))

(assert (= (and b!3519792 (not c!606601)) b!3519797))

(assert (= (and b!3519797 c!606602) b!3519794))

(assert (= (and b!3519797 (not c!606602)) b!3519790))

(assert (= (or b!3519794 b!3519790) bm!254283))

(assert (= (or b!3519794 b!3519790) bm!254285))

(assert (= (or b!3519794 b!3519790) bm!254284))

(assert (= (or b!3519791 bm!254285) bm!254286))

(declare-fun m!3969315 () Bool)

(assert (=> bm!254283 m!3969315))

(declare-fun m!3969317 () Bool)

(assert (=> bm!254284 m!3969317))

(declare-fun m!3969319 () Bool)

(assert (=> bm!254286 m!3969319))

(assert (=> b!3519432 d!1026644))

(declare-fun d!1026646 () Bool)

(assert (=> d!1026646 (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 (h!42755 tokens!494))))

(declare-fun lt!1201530 () Unit!52984)

(declare-fun choose!20426 (LexerInterface!5063 List!37458 List!37459 Token!10314) Unit!52984)

(assert (=> d!1026646 (= lt!1201530 (choose!20426 thiss!18206 rules!2135 tokens!494 (h!42755 tokens!494)))))

(assert (=> d!1026646 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026646 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1052 thiss!18206 rules!2135 tokens!494 (h!42755 tokens!494)) lt!1201530)))

(declare-fun bs!565225 () Bool)

(assert (= bs!565225 d!1026646))

(assert (=> bs!565225 m!3968571))

(declare-fun m!3969401 () Bool)

(assert (=> bs!565225 m!3969401))

(assert (=> bs!565225 m!3968535))

(assert (=> b!3519432 d!1026646))

(declare-fun d!1026652 () Bool)

(assert (=> d!1026652 (= (head!7381 lt!1201272) (h!42753 lt!1201272))))

(assert (=> b!3519432 d!1026652))

(declare-fun d!1026654 () Bool)

(declare-fun lt!1201532 () Bool)

(declare-fun e!2178681 () Bool)

(assert (=> d!1026654 (= lt!1201532 e!2178681)))

(declare-fun res!1419501 () Bool)

(assert (=> d!1026654 (=> (not res!1419501) (not e!2178681))))

(assert (=> d!1026654 (= res!1419501 (= (list!13656 (_1!21714 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 (h!42755 (t!281564 tokens!494))))))) (list!13656 (singletonSeq!2570 (h!42755 (t!281564 tokens!494))))))))

(declare-fun e!2178680 () Bool)

(assert (=> d!1026654 (= lt!1201532 e!2178680)))

(declare-fun res!1419499 () Bool)

(assert (=> d!1026654 (=> (not res!1419499) (not e!2178680))))

(declare-fun lt!1201531 () tuple2!37160)

(assert (=> d!1026654 (= res!1419499 (= (size!28401 (_1!21714 lt!1201531)) 1))))

(assert (=> d!1026654 (= lt!1201531 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 (h!42755 (t!281564 tokens!494))))))))

(assert (=> d!1026654 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026654 (= (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 (h!42755 (t!281564 tokens!494))) lt!1201532)))

(declare-fun b!3519846 () Bool)

(declare-fun res!1419500 () Bool)

(assert (=> b!3519846 (=> (not res!1419500) (not e!2178680))))

(assert (=> b!3519846 (= res!1419500 (= (apply!8888 (_1!21714 lt!1201531) 0) (h!42755 (t!281564 tokens!494))))))

(declare-fun b!3519847 () Bool)

(assert (=> b!3519847 (= e!2178680 (isEmpty!21788 (_2!21714 lt!1201531)))))

(declare-fun b!3519848 () Bool)

(assert (=> b!3519848 (= e!2178681 (isEmpty!21788 (_2!21714 (lex!2389 thiss!18206 rules!2135 (print!2128 thiss!18206 (singletonSeq!2570 (h!42755 (t!281564 tokens!494))))))))))

(assert (= (and d!1026654 res!1419499) b!3519846))

(assert (= (and b!3519846 res!1419500) b!3519847))

(assert (= (and d!1026654 res!1419501) b!3519848))

(declare-fun m!3969403 () Bool)

(assert (=> d!1026654 m!3969403))

(declare-fun m!3969405 () Bool)

(assert (=> d!1026654 m!3969405))

(declare-fun m!3969407 () Bool)

(assert (=> d!1026654 m!3969407))

(declare-fun m!3969409 () Bool)

(assert (=> d!1026654 m!3969409))

(assert (=> d!1026654 m!3968621))

(assert (=> d!1026654 m!3969407))

(assert (=> d!1026654 m!3968621))

(declare-fun m!3969411 () Bool)

(assert (=> d!1026654 m!3969411))

(assert (=> d!1026654 m!3968621))

(assert (=> d!1026654 m!3968535))

(declare-fun m!3969415 () Bool)

(assert (=> b!3519846 m!3969415))

(declare-fun m!3969417 () Bool)

(assert (=> b!3519847 m!3969417))

(assert (=> b!3519848 m!3968621))

(assert (=> b!3519848 m!3968621))

(assert (=> b!3519848 m!3969407))

(assert (=> b!3519848 m!3969407))

(assert (=> b!3519848 m!3969409))

(declare-fun m!3969427 () Bool)

(assert (=> b!3519848 m!3969427))

(assert (=> b!3519432 d!1026654))

(declare-fun d!1026658 () Bool)

(assert (=> d!1026658 (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 (h!42755 (t!281564 tokens!494)))))

(declare-fun lt!1201536 () Unit!52984)

(assert (=> d!1026658 (= lt!1201536 (choose!20426 thiss!18206 rules!2135 tokens!494 (h!42755 (t!281564 tokens!494))))))

(assert (=> d!1026658 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026658 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1052 thiss!18206 rules!2135 tokens!494 (h!42755 (t!281564 tokens!494))) lt!1201536)))

(declare-fun bs!565226 () Bool)

(assert (= bs!565226 d!1026658))

(assert (=> bs!565226 m!3968659))

(declare-fun m!3969431 () Bool)

(assert (=> bs!565226 m!3969431))

(assert (=> bs!565226 m!3968535))

(assert (=> b!3519432 d!1026658))

(declare-fun d!1026660 () Bool)

(declare-fun lt!1201537 () Int)

(assert (=> d!1026660 (>= lt!1201537 0)))

(declare-fun e!2178686 () Int)

(assert (=> d!1026660 (= lt!1201537 e!2178686)))

(declare-fun c!606615 () Bool)

(assert (=> d!1026660 (= c!606615 ((_ is Nil!37333) lt!1201278))))

(assert (=> d!1026660 (= (size!28400 lt!1201278) lt!1201537)))

(declare-fun b!3519855 () Bool)

(assert (=> b!3519855 (= e!2178686 0)))

(declare-fun b!3519856 () Bool)

(assert (=> b!3519856 (= e!2178686 (+ 1 (size!28400 (t!281562 lt!1201278))))))

(assert (= (and d!1026660 c!606615) b!3519855))

(assert (= (and d!1026660 (not c!606615)) b!3519856))

(declare-fun m!3969433 () Bool)

(assert (=> b!3519856 m!3969433))

(assert (=> b!3519432 d!1026660))

(declare-fun d!1026662 () Bool)

(declare-fun lt!1201540 () Bool)

(assert (=> d!1026662 (= lt!1201540 (select (content!5261 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) (head!7381 lt!1201278)))))

(declare-fun e!2178691 () Bool)

(assert (=> d!1026662 (= lt!1201540 e!2178691)))

(declare-fun res!1419508 () Bool)

(assert (=> d!1026662 (=> (not res!1419508) (not e!2178691))))

(assert (=> d!1026662 (= res!1419508 ((_ is Cons!37333) (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))))))

(assert (=> d!1026662 (= (contains!6998 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (head!7381 lt!1201278)) lt!1201540)))

(declare-fun b!3519861 () Bool)

(declare-fun e!2178692 () Bool)

(assert (=> b!3519861 (= e!2178691 e!2178692)))

(declare-fun res!1419509 () Bool)

(assert (=> b!3519861 (=> res!1419509 e!2178692)))

(assert (=> b!3519861 (= res!1419509 (= (h!42753 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) (head!7381 lt!1201278)))))

(declare-fun b!3519862 () Bool)

(assert (=> b!3519862 (= e!2178692 (contains!6998 (t!281562 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) (head!7381 lt!1201278)))))

(assert (= (and d!1026662 res!1419508) b!3519861))

(assert (= (and b!3519861 (not res!1419509)) b!3519862))

(assert (=> d!1026662 m!3968655))

(declare-fun m!3969437 () Bool)

(assert (=> d!1026662 m!3969437))

(assert (=> d!1026662 m!3968627))

(declare-fun m!3969439 () Bool)

(assert (=> d!1026662 m!3969439))

(assert (=> b!3519862 m!3968627))

(declare-fun m!3969441 () Bool)

(assert (=> b!3519862 m!3969441))

(assert (=> b!3519432 d!1026662))

(declare-fun d!1026666 () Bool)

(declare-fun e!2178694 () Bool)

(assert (=> d!1026666 e!2178694))

(declare-fun res!1419511 () Bool)

(assert (=> d!1026666 (=> res!1419511 e!2178694)))

(declare-fun lt!1201541 () Option!7609)

(assert (=> d!1026666 (= res!1419511 (isEmpty!21796 lt!1201541))))

(declare-fun e!2178695 () Option!7609)

(assert (=> d!1026666 (= lt!1201541 e!2178695)))

(declare-fun c!606617 () Bool)

(assert (=> d!1026666 (= c!606617 (and ((_ is Cons!37334) rules!2135) (= (tag!6110 (h!42754 rules!2135)) (tag!6110 (rule!8116 separatorToken!241)))))))

(assert (=> d!1026666 (rulesInvariant!4460 thiss!18206 rules!2135)))

(assert (=> d!1026666 (= (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 separatorToken!241))) lt!1201541)))

(declare-fun b!3519863 () Bool)

(assert (=> b!3519863 (= e!2178695 (Some!7608 (h!42754 rules!2135)))))

(declare-fun b!3519864 () Bool)

(declare-fun e!2178696 () Option!7609)

(assert (=> b!3519864 (= e!2178696 None!7608)))

(declare-fun b!3519865 () Bool)

(assert (=> b!3519865 (= e!2178695 e!2178696)))

(declare-fun c!606616 () Bool)

(assert (=> b!3519865 (= c!606616 (and ((_ is Cons!37334) rules!2135) (not (= (tag!6110 (h!42754 rules!2135)) (tag!6110 (rule!8116 separatorToken!241))))))))

(declare-fun b!3519866 () Bool)

(declare-fun e!2178693 () Bool)

(assert (=> b!3519866 (= e!2178693 (= (tag!6110 (get!11984 lt!1201541)) (tag!6110 (rule!8116 separatorToken!241))))))

(declare-fun b!3519867 () Bool)

(declare-fun lt!1201543 () Unit!52984)

(declare-fun lt!1201542 () Unit!52984)

(assert (=> b!3519867 (= lt!1201543 lt!1201542)))

(assert (=> b!3519867 (rulesInvariant!4460 thiss!18206 (t!281563 rules!2135))))

(assert (=> b!3519867 (= lt!1201542 (lemmaInvariantOnRulesThenOnTail!459 thiss!18206 (h!42754 rules!2135) (t!281563 rules!2135)))))

(assert (=> b!3519867 (= e!2178696 (getRuleFromTag!1117 thiss!18206 (t!281563 rules!2135) (tag!6110 (rule!8116 separatorToken!241))))))

(declare-fun b!3519868 () Bool)

(assert (=> b!3519868 (= e!2178694 e!2178693)))

(declare-fun res!1419510 () Bool)

(assert (=> b!3519868 (=> (not res!1419510) (not e!2178693))))

(assert (=> b!3519868 (= res!1419510 (contains!6999 rules!2135 (get!11984 lt!1201541)))))

(assert (= (and d!1026666 c!606617) b!3519863))

(assert (= (and d!1026666 (not c!606617)) b!3519865))

(assert (= (and b!3519865 c!606616) b!3519867))

(assert (= (and b!3519865 (not c!606616)) b!3519864))

(assert (= (and d!1026666 (not res!1419511)) b!3519868))

(assert (= (and b!3519868 res!1419510) b!3519866))

(declare-fun m!3969443 () Bool)

(assert (=> d!1026666 m!3969443))

(assert (=> d!1026666 m!3968577))

(declare-fun m!3969445 () Bool)

(assert (=> b!3519866 m!3969445))

(assert (=> b!3519867 m!3969071))

(assert (=> b!3519867 m!3969073))

(declare-fun m!3969447 () Bool)

(assert (=> b!3519867 m!3969447))

(assert (=> b!3519868 m!3969445))

(assert (=> b!3519868 m!3969445))

(declare-fun m!3969449 () Bool)

(assert (=> b!3519868 m!3969449))

(assert (=> b!3519432 d!1026666))

(declare-fun b!3519903 () Bool)

(declare-fun res!1419520 () Bool)

(declare-fun e!2178716 () Bool)

(assert (=> b!3519903 (=> (not res!1419520) (not e!2178716))))

(declare-fun lt!1201549 () tuple2!37160)

(declare-datatypes ((tuple2!37170 0))(
  ( (tuple2!37171 (_1!21719 List!37459) (_2!21719 List!37457)) )
))
(declare-fun lexList!1476 (LexerInterface!5063 List!37458 List!37457) tuple2!37170)

(assert (=> b!3519903 (= res!1419520 (= (list!13656 (_1!21714 lt!1201549)) (_1!21719 (lexList!1476 thiss!18206 rules!2135 (list!13653 lt!1201274)))))))

(declare-fun b!3519904 () Bool)

(declare-fun e!2178717 () Bool)

(declare-fun e!2178715 () Bool)

(assert (=> b!3519904 (= e!2178717 e!2178715)))

(declare-fun res!1419519 () Bool)

(assert (=> b!3519904 (= res!1419519 (< (size!28405 (_2!21714 lt!1201549)) (size!28405 lt!1201274)))))

(assert (=> b!3519904 (=> (not res!1419519) (not e!2178715))))

(declare-fun b!3519905 () Bool)

(assert (=> b!3519905 (= e!2178716 (= (list!13653 (_2!21714 lt!1201549)) (_2!21719 (lexList!1476 thiss!18206 rules!2135 (list!13653 lt!1201274)))))))

(declare-fun d!1026668 () Bool)

(assert (=> d!1026668 e!2178716))

(declare-fun res!1419518 () Bool)

(assert (=> d!1026668 (=> (not res!1419518) (not e!2178716))))

(assert (=> d!1026668 (= res!1419518 e!2178717)))

(declare-fun c!606632 () Bool)

(assert (=> d!1026668 (= c!606632 (> (size!28401 (_1!21714 lt!1201549)) 0))))

(declare-fun lexTailRecV2!1084 (LexerInterface!5063 List!37458 BalanceConc!22260 BalanceConc!22260 BalanceConc!22260 BalanceConc!22262) tuple2!37160)

(assert (=> d!1026668 (= lt!1201549 (lexTailRecV2!1084 thiss!18206 rules!2135 lt!1201274 (BalanceConc!22261 Empty!11323) lt!1201274 (BalanceConc!22263 Empty!11324)))))

(assert (=> d!1026668 (= (lex!2389 thiss!18206 rules!2135 lt!1201274) lt!1201549)))

(declare-fun b!3519906 () Bool)

(assert (=> b!3519906 (= e!2178717 (= (_2!21714 lt!1201549) lt!1201274))))

(declare-fun b!3519907 () Bool)

(assert (=> b!3519907 (= e!2178715 (not (isEmpty!21787 (_1!21714 lt!1201549))))))

(assert (= (and d!1026668 c!606632) b!3519904))

(assert (= (and d!1026668 (not c!606632)) b!3519906))

(assert (= (and b!3519904 res!1419519) b!3519907))

(assert (= (and d!1026668 res!1419518) b!3519903))

(assert (= (and b!3519903 res!1419520) b!3519905))

(declare-fun m!3969459 () Bool)

(assert (=> b!3519905 m!3969459))

(declare-fun m!3969461 () Bool)

(assert (=> b!3519905 m!3969461))

(assert (=> b!3519905 m!3969461))

(declare-fun m!3969463 () Bool)

(assert (=> b!3519905 m!3969463))

(declare-fun m!3969465 () Bool)

(assert (=> b!3519907 m!3969465))

(declare-fun m!3969467 () Bool)

(assert (=> b!3519904 m!3969467))

(declare-fun m!3969469 () Bool)

(assert (=> b!3519904 m!3969469))

(declare-fun m!3969471 () Bool)

(assert (=> b!3519903 m!3969471))

(assert (=> b!3519903 m!3969461))

(assert (=> b!3519903 m!3969461))

(assert (=> b!3519903 m!3969463))

(declare-fun m!3969473 () Bool)

(assert (=> d!1026668 m!3969473))

(declare-fun m!3969475 () Bool)

(assert (=> d!1026668 m!3969475))

(assert (=> b!3519432 d!1026668))

(declare-fun d!1026674 () Bool)

(assert (=> d!1026674 (= (maxPrefixOneRule!1770 thiss!18206 (rule!8116 (h!42755 tokens!494)) lt!1201309) (Some!7609 (tuple2!37163 (Token!10315 (apply!8889 (transformation!5474 (rule!8116 (h!42755 tokens!494))) (seqFromList!4001 lt!1201309)) (rule!8116 (h!42755 tokens!494)) (size!28400 lt!1201309) lt!1201309) Nil!37333)))))

(declare-fun lt!1201552 () Unit!52984)

(declare-fun choose!20429 (LexerInterface!5063 List!37458 List!37457 List!37457 List!37457 Rule!10748) Unit!52984)

(assert (=> d!1026674 (= lt!1201552 (choose!20429 thiss!18206 rules!2135 lt!1201309 lt!1201309 Nil!37333 (rule!8116 (h!42755 tokens!494))))))

(assert (=> d!1026674 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026674 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!863 thiss!18206 rules!2135 lt!1201309 lt!1201309 Nil!37333 (rule!8116 (h!42755 tokens!494))) lt!1201552)))

(declare-fun bs!565229 () Bool)

(assert (= bs!565229 d!1026674))

(assert (=> bs!565229 m!3968535))

(assert (=> bs!565229 m!3968641))

(declare-fun m!3969477 () Bool)

(assert (=> bs!565229 m!3969477))

(assert (=> bs!565229 m!3968545))

(assert (=> bs!565229 m!3968545))

(declare-fun m!3969479 () Bool)

(assert (=> bs!565229 m!3969479))

(assert (=> bs!565229 m!3968645))

(assert (=> b!3519432 d!1026674))

(declare-fun d!1026676 () Bool)

(declare-fun lt!1201555 () Int)

(declare-fun size!28406 (List!37459) Int)

(assert (=> d!1026676 (= lt!1201555 (size!28406 (list!13656 (_1!21714 lt!1201300))))))

(declare-fun size!28407 (Conc!11324) Int)

(assert (=> d!1026676 (= lt!1201555 (size!28407 (c!606538 (_1!21714 lt!1201300))))))

(assert (=> d!1026676 (= (size!28401 (_1!21714 lt!1201300)) lt!1201555)))

(declare-fun bs!565230 () Bool)

(assert (= bs!565230 d!1026676))

(declare-fun m!3969481 () Bool)

(assert (=> bs!565230 m!3969481))

(assert (=> bs!565230 m!3969481))

(declare-fun m!3969483 () Bool)

(assert (=> bs!565230 m!3969483))

(declare-fun m!3969485 () Bool)

(assert (=> bs!565230 m!3969485))

(assert (=> b!3519432 d!1026676))

(declare-fun d!1026678 () Bool)

(declare-fun lt!1201556 () BalanceConc!22260)

(assert (=> d!1026678 (= (list!13653 lt!1201556) (printList!1611 thiss!18206 (list!13656 lt!1201287)))))

(assert (=> d!1026678 (= lt!1201556 (printTailRec!1558 thiss!18206 lt!1201287 0 (BalanceConc!22261 Empty!11323)))))

(assert (=> d!1026678 (= (print!2128 thiss!18206 lt!1201287) lt!1201556)))

(declare-fun bs!565231 () Bool)

(assert (= bs!565231 d!1026678))

(declare-fun m!3969487 () Bool)

(assert (=> bs!565231 m!3969487))

(assert (=> bs!565231 m!3969299))

(assert (=> bs!565231 m!3969299))

(declare-fun m!3969489 () Bool)

(assert (=> bs!565231 m!3969489))

(assert (=> bs!565231 m!3968687))

(assert (=> b!3519432 d!1026678))

(declare-fun d!1026680 () Bool)

(assert (=> d!1026680 (= (isDefined!5866 lt!1201282) (not (isEmpty!21796 lt!1201282)))))

(declare-fun bs!565232 () Bool)

(assert (= bs!565232 d!1026680))

(declare-fun m!3969491 () Bool)

(assert (=> bs!565232 m!3969491))

(assert (=> b!3519432 d!1026680))

(declare-fun d!1026682 () Bool)

(declare-fun e!2178718 () Bool)

(assert (=> d!1026682 e!2178718))

(declare-fun res!1419521 () Bool)

(assert (=> d!1026682 (=> (not res!1419521) (not e!2178718))))

(assert (=> d!1026682 (= res!1419521 (isDefined!5866 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494)))))))))

(declare-fun lt!1201557 () Unit!52984)

(assert (=> d!1026682 (= lt!1201557 (choose!20423 thiss!18206 rules!2135 lt!1201278 (h!42755 (t!281564 tokens!494))))))

(assert (=> d!1026682 (rulesInvariant!4460 thiss!18206 rules!2135)))

(assert (=> d!1026682 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1117 thiss!18206 rules!2135 lt!1201278 (h!42755 (t!281564 tokens!494))) lt!1201557)))

(declare-fun b!3519908 () Bool)

(declare-fun res!1419522 () Bool)

(assert (=> b!3519908 (=> (not res!1419522) (not e!2178718))))

(assert (=> b!3519908 (= res!1419522 (matchR!4817 (regex!5474 (get!11984 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494))))))) (list!13653 (charsOf!3488 (h!42755 (t!281564 tokens!494))))))))

(declare-fun b!3519909 () Bool)

(assert (=> b!3519909 (= e!2178718 (= (rule!8116 (h!42755 (t!281564 tokens!494))) (get!11984 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494))))))))))

(assert (= (and d!1026682 res!1419521) b!3519908))

(assert (= (and b!3519908 res!1419522) b!3519909))

(assert (=> d!1026682 m!3968665))

(assert (=> d!1026682 m!3968665))

(declare-fun m!3969493 () Bool)

(assert (=> d!1026682 m!3969493))

(declare-fun m!3969495 () Bool)

(assert (=> d!1026682 m!3969495))

(assert (=> d!1026682 m!3968577))

(assert (=> b!3519908 m!3968547))

(assert (=> b!3519908 m!3968665))

(assert (=> b!3519908 m!3968665))

(declare-fun m!3969497 () Bool)

(assert (=> b!3519908 m!3969497))

(assert (=> b!3519908 m!3968555))

(declare-fun m!3969499 () Bool)

(assert (=> b!3519908 m!3969499))

(assert (=> b!3519908 m!3968547))

(assert (=> b!3519908 m!3968555))

(assert (=> b!3519909 m!3968665))

(assert (=> b!3519909 m!3968665))

(assert (=> b!3519909 m!3969497))

(assert (=> b!3519432 d!1026682))

(declare-fun d!1026684 () Bool)

(declare-fun lt!1201558 () Bool)

(assert (=> d!1026684 (= lt!1201558 (select (content!5261 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 tokens!494))))) lt!1201273))))

(declare-fun e!2178719 () Bool)

(assert (=> d!1026684 (= lt!1201558 e!2178719)))

(declare-fun res!1419523 () Bool)

(assert (=> d!1026684 (=> (not res!1419523) (not e!2178719))))

(assert (=> d!1026684 (= res!1419523 ((_ is Cons!37333) (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 tokens!494))))))))

(assert (=> d!1026684 (= (contains!6998 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 tokens!494)))) lt!1201273) lt!1201558)))

(declare-fun b!3519910 () Bool)

(declare-fun e!2178720 () Bool)

(assert (=> b!3519910 (= e!2178719 e!2178720)))

(declare-fun res!1419524 () Bool)

(assert (=> b!3519910 (=> res!1419524 e!2178720)))

(assert (=> b!3519910 (= res!1419524 (= (h!42753 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 tokens!494))))) lt!1201273))))

(declare-fun b!3519911 () Bool)

(assert (=> b!3519911 (= e!2178720 (contains!6998 (t!281562 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 tokens!494))))) lt!1201273))))

(assert (= (and d!1026684 res!1419523) b!3519910))

(assert (= (and b!3519910 (not res!1419524)) b!3519911))

(assert (=> d!1026684 m!3968679))

(declare-fun m!3969501 () Bool)

(assert (=> d!1026684 m!3969501))

(declare-fun m!3969503 () Bool)

(assert (=> d!1026684 m!3969503))

(declare-fun m!3969505 () Bool)

(assert (=> b!3519911 m!3969505))

(assert (=> b!3519432 d!1026684))

(declare-fun b!3519912 () Bool)

(declare-fun e!2178722 () List!37457)

(declare-fun call!254307 () List!37457)

(assert (=> b!3519912 (= e!2178722 call!254307)))

(declare-fun b!3519913 () Bool)

(declare-fun e!2178721 () List!37457)

(declare-fun call!254306 () List!37457)

(assert (=> b!3519913 (= e!2178721 call!254306)))

(declare-fun b!3519914 () Bool)

(declare-fun c!606635 () Bool)

(assert (=> b!3519914 (= c!606635 ((_ is Star!10233) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun e!2178723 () List!37457)

(assert (=> b!3519914 (= e!2178723 e!2178721)))

(declare-fun b!3519915 () Bool)

(declare-fun e!2178724 () List!37457)

(assert (=> b!3519915 (= e!2178724 Nil!37333)))

(declare-fun bm!254299 () Bool)

(declare-fun call!254304 () List!37457)

(declare-fun c!606636 () Bool)

(assert (=> bm!254299 (= call!254304 (usedCharacters!708 (ite c!606636 (regTwo!20979 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (regOne!20978 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))))

(declare-fun d!1026686 () Bool)

(declare-fun c!606634 () Bool)

(assert (=> d!1026686 (= c!606634 (or ((_ is EmptyExpr!10233) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) ((_ is EmptyLang!10233) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))))))

(assert (=> d!1026686 (= (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) e!2178724)))

(declare-fun b!3519916 () Bool)

(assert (=> b!3519916 (= e!2178722 call!254307)))

(declare-fun call!254305 () List!37457)

(declare-fun bm!254300 () Bool)

(assert (=> bm!254300 (= call!254307 (++!9249 (ite c!606636 call!254305 call!254304) (ite c!606636 call!254304 call!254305)))))

(declare-fun bm!254301 () Bool)

(assert (=> bm!254301 (= call!254305 call!254306)))

(declare-fun b!3519917 () Bool)

(assert (=> b!3519917 (= e!2178724 e!2178723)))

(declare-fun c!606633 () Bool)

(assert (=> b!3519917 (= c!606633 ((_ is ElementMatch!10233) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun b!3519918 () Bool)

(assert (=> b!3519918 (= e!2178723 (Cons!37333 (c!606536 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) Nil!37333))))

(declare-fun b!3519919 () Bool)

(assert (=> b!3519919 (= e!2178721 e!2178722)))

(assert (=> b!3519919 (= c!606636 ((_ is Union!10233) (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun bm!254302 () Bool)

(assert (=> bm!254302 (= call!254306 (usedCharacters!708 (ite c!606635 (reg!10562 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (ite c!606636 (regOne!20979 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (regTwo!20978 (regex!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))))))))

(assert (= (and d!1026686 c!606634) b!3519915))

(assert (= (and d!1026686 (not c!606634)) b!3519917))

(assert (= (and b!3519917 c!606633) b!3519918))

(assert (= (and b!3519917 (not c!606633)) b!3519914))

(assert (= (and b!3519914 c!606635) b!3519913))

(assert (= (and b!3519914 (not c!606635)) b!3519919))

(assert (= (and b!3519919 c!606636) b!3519916))

(assert (= (and b!3519919 (not c!606636)) b!3519912))

(assert (= (or b!3519916 b!3519912) bm!254299))

(assert (= (or b!3519916 b!3519912) bm!254301))

(assert (= (or b!3519916 b!3519912) bm!254300))

(assert (= (or b!3519913 bm!254301) bm!254302))

(declare-fun m!3969507 () Bool)

(assert (=> bm!254299 m!3969507))

(declare-fun m!3969509 () Bool)

(assert (=> bm!254300 m!3969509))

(declare-fun m!3969511 () Bool)

(assert (=> bm!254302 m!3969511))

(assert (=> b!3519432 d!1026686))

(declare-fun d!1026688 () Bool)

(declare-fun lt!1201559 () Int)

(assert (=> d!1026688 (= lt!1201559 (size!28406 (list!13656 (_1!21714 lt!1201311))))))

(assert (=> d!1026688 (= lt!1201559 (size!28407 (c!606538 (_1!21714 lt!1201311))))))

(assert (=> d!1026688 (= (size!28401 (_1!21714 lt!1201311)) lt!1201559)))

(declare-fun bs!565233 () Bool)

(assert (= bs!565233 d!1026688))

(assert (=> bs!565233 m!3968963))

(assert (=> bs!565233 m!3968963))

(declare-fun m!3969513 () Bool)

(assert (=> bs!565233 m!3969513))

(declare-fun m!3969515 () Bool)

(assert (=> bs!565233 m!3969515))

(assert (=> b!3519432 d!1026688))

(declare-fun d!1026690 () Bool)

(declare-fun lt!1201560 () Bool)

(assert (=> d!1026690 (= lt!1201560 (select (content!5261 (usedCharacters!708 (regex!5474 (rule!8116 separatorToken!241)))) lt!1201273))))

(declare-fun e!2178725 () Bool)

(assert (=> d!1026690 (= lt!1201560 e!2178725)))

(declare-fun res!1419525 () Bool)

(assert (=> d!1026690 (=> (not res!1419525) (not e!2178725))))

(assert (=> d!1026690 (= res!1419525 ((_ is Cons!37333) (usedCharacters!708 (regex!5474 (rule!8116 separatorToken!241)))))))

(assert (=> d!1026690 (= (contains!6998 (usedCharacters!708 (regex!5474 (rule!8116 separatorToken!241))) lt!1201273) lt!1201560)))

(declare-fun b!3519920 () Bool)

(declare-fun e!2178726 () Bool)

(assert (=> b!3519920 (= e!2178725 e!2178726)))

(declare-fun res!1419526 () Bool)

(assert (=> b!3519920 (=> res!1419526 e!2178726)))

(assert (=> b!3519920 (= res!1419526 (= (h!42753 (usedCharacters!708 (regex!5474 (rule!8116 separatorToken!241)))) lt!1201273))))

(declare-fun b!3519921 () Bool)

(assert (=> b!3519921 (= e!2178726 (contains!6998 (t!281562 (usedCharacters!708 (regex!5474 (rule!8116 separatorToken!241)))) lt!1201273))))

(assert (= (and d!1026690 res!1419525) b!3519920))

(assert (= (and b!3519920 (not res!1419526)) b!3519921))

(assert (=> d!1026690 m!3968637))

(declare-fun m!3969517 () Bool)

(assert (=> d!1026690 m!3969517))

(declare-fun m!3969519 () Bool)

(assert (=> d!1026690 m!3969519))

(declare-fun m!3969521 () Bool)

(assert (=> b!3519921 m!3969521))

(assert (=> b!3519432 d!1026690))

(declare-fun d!1026692 () Bool)

(assert (=> d!1026692 (not (contains!6998 (usedCharacters!708 (regex!5474 (rule!8116 (h!42755 tokens!494)))) lt!1201273))))

(declare-fun lt!1201563 () Unit!52984)

(declare-fun choose!20430 (LexerInterface!5063 List!37458 List!37458 Rule!10748 Rule!10748 C!20652) Unit!52984)

(assert (=> d!1026692 (= lt!1201563 (choose!20430 thiss!18206 rules!2135 rules!2135 (rule!8116 (h!42755 tokens!494)) (rule!8116 separatorToken!241) lt!1201273))))

(assert (=> d!1026692 (rulesInvariant!4460 thiss!18206 rules!2135)))

(assert (=> d!1026692 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!274 thiss!18206 rules!2135 rules!2135 (rule!8116 (h!42755 tokens!494)) (rule!8116 separatorToken!241) lt!1201273) lt!1201563)))

(declare-fun bs!565234 () Bool)

(assert (= bs!565234 d!1026692))

(assert (=> bs!565234 m!3968679))

(assert (=> bs!565234 m!3968679))

(assert (=> bs!565234 m!3968685))

(declare-fun m!3969523 () Bool)

(assert (=> bs!565234 m!3969523))

(assert (=> bs!565234 m!3968577))

(assert (=> b!3519432 d!1026692))

(declare-fun d!1026694 () Bool)

(declare-fun e!2178727 () Bool)

(assert (=> d!1026694 e!2178727))

(declare-fun res!1419527 () Bool)

(assert (=> d!1026694 (=> (not res!1419527) (not e!2178727))))

(assert (=> d!1026694 (= res!1419527 (isDefined!5866 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 tokens!494))))))))

(declare-fun lt!1201566 () Unit!52984)

(assert (=> d!1026694 (= lt!1201566 (choose!20423 thiss!18206 rules!2135 lt!1201309 (h!42755 tokens!494)))))

(assert (=> d!1026694 (rulesInvariant!4460 thiss!18206 rules!2135)))

(assert (=> d!1026694 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1117 thiss!18206 rules!2135 lt!1201309 (h!42755 tokens!494)) lt!1201566)))

(declare-fun b!3519922 () Bool)

(declare-fun res!1419528 () Bool)

(assert (=> b!3519922 (=> (not res!1419528) (not e!2178727))))

(assert (=> b!3519922 (= res!1419528 (matchR!4817 (regex!5474 (get!11984 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 tokens!494)))))) (list!13653 (charsOf!3488 (h!42755 tokens!494)))))))

(declare-fun b!3519923 () Bool)

(assert (=> b!3519923 (= e!2178727 (= (rule!8116 (h!42755 tokens!494)) (get!11984 (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 tokens!494)))))))))

(assert (= (and d!1026694 res!1419527) b!3519922))

(assert (= (and b!3519922 res!1419528) b!3519923))

(assert (=> d!1026694 m!3968649))

(assert (=> d!1026694 m!3968649))

(declare-fun m!3969527 () Bool)

(assert (=> d!1026694 m!3969527))

(declare-fun m!3969529 () Bool)

(assert (=> d!1026694 m!3969529))

(assert (=> d!1026694 m!3968577))

(assert (=> b!3519922 m!3968593))

(assert (=> b!3519922 m!3968649))

(assert (=> b!3519922 m!3968649))

(declare-fun m!3969531 () Bool)

(assert (=> b!3519922 m!3969531))

(assert (=> b!3519922 m!3968595))

(declare-fun m!3969533 () Bool)

(assert (=> b!3519922 m!3969533))

(assert (=> b!3519922 m!3968593))

(assert (=> b!3519922 m!3968595))

(assert (=> b!3519923 m!3968649))

(assert (=> b!3519923 m!3968649))

(assert (=> b!3519923 m!3969531))

(assert (=> b!3519432 d!1026694))

(declare-fun b!3519924 () Bool)

(declare-fun res!1419531 () Bool)

(declare-fun e!2178729 () Bool)

(assert (=> b!3519924 (=> (not res!1419531) (not e!2178729))))

(declare-fun lt!1201568 () tuple2!37160)

(assert (=> b!3519924 (= res!1419531 (= (list!13656 (_1!21714 lt!1201568)) (_1!21719 (lexList!1476 thiss!18206 rules!2135 (list!13653 lt!1201276)))))))

(declare-fun b!3519925 () Bool)

(declare-fun e!2178730 () Bool)

(declare-fun e!2178728 () Bool)

(assert (=> b!3519925 (= e!2178730 e!2178728)))

(declare-fun res!1419530 () Bool)

(assert (=> b!3519925 (= res!1419530 (< (size!28405 (_2!21714 lt!1201568)) (size!28405 lt!1201276)))))

(assert (=> b!3519925 (=> (not res!1419530) (not e!2178728))))

(declare-fun b!3519926 () Bool)

(assert (=> b!3519926 (= e!2178729 (= (list!13653 (_2!21714 lt!1201568)) (_2!21719 (lexList!1476 thiss!18206 rules!2135 (list!13653 lt!1201276)))))))

(declare-fun d!1026698 () Bool)

(assert (=> d!1026698 e!2178729))

(declare-fun res!1419529 () Bool)

(assert (=> d!1026698 (=> (not res!1419529) (not e!2178729))))

(assert (=> d!1026698 (= res!1419529 e!2178730)))

(declare-fun c!606638 () Bool)

(assert (=> d!1026698 (= c!606638 (> (size!28401 (_1!21714 lt!1201568)) 0))))

(assert (=> d!1026698 (= lt!1201568 (lexTailRecV2!1084 thiss!18206 rules!2135 lt!1201276 (BalanceConc!22261 Empty!11323) lt!1201276 (BalanceConc!22263 Empty!11324)))))

(assert (=> d!1026698 (= (lex!2389 thiss!18206 rules!2135 lt!1201276) lt!1201568)))

(declare-fun b!3519927 () Bool)

(assert (=> b!3519927 (= e!2178730 (= (_2!21714 lt!1201568) lt!1201276))))

(declare-fun b!3519928 () Bool)

(assert (=> b!3519928 (= e!2178728 (not (isEmpty!21787 (_1!21714 lt!1201568))))))

(assert (= (and d!1026698 c!606638) b!3519925))

(assert (= (and d!1026698 (not c!606638)) b!3519927))

(assert (= (and b!3519925 res!1419530) b!3519928))

(assert (= (and d!1026698 res!1419529) b!3519924))

(assert (= (and b!3519924 res!1419531) b!3519926))

(declare-fun m!3969535 () Bool)

(assert (=> b!3519926 m!3969535))

(declare-fun m!3969537 () Bool)

(assert (=> b!3519926 m!3969537))

(assert (=> b!3519926 m!3969537))

(declare-fun m!3969539 () Bool)

(assert (=> b!3519926 m!3969539))

(declare-fun m!3969541 () Bool)

(assert (=> b!3519928 m!3969541))

(declare-fun m!3969543 () Bool)

(assert (=> b!3519925 m!3969543))

(declare-fun m!3969545 () Bool)

(assert (=> b!3519925 m!3969545))

(declare-fun m!3969547 () Bool)

(assert (=> b!3519924 m!3969547))

(assert (=> b!3519924 m!3969537))

(assert (=> b!3519924 m!3969537))

(assert (=> b!3519924 m!3969539))

(declare-fun m!3969549 () Bool)

(assert (=> d!1026698 m!3969549))

(declare-fun m!3969551 () Bool)

(assert (=> d!1026698 m!3969551))

(assert (=> b!3519432 d!1026698))

(declare-fun d!1026700 () Bool)

(assert (=> d!1026700 (= (isDefined!5866 lt!1201292) (not (isEmpty!21796 lt!1201292)))))

(declare-fun bs!565236 () Bool)

(assert (= bs!565236 d!1026700))

(declare-fun m!3969553 () Bool)

(assert (=> bs!565236 m!3969553))

(assert (=> b!3519432 d!1026700))

(declare-fun b!3519929 () Bool)

(declare-fun e!2178732 () List!37457)

(declare-fun call!254311 () List!37457)

(assert (=> b!3519929 (= e!2178732 call!254311)))

(declare-fun b!3519930 () Bool)

(declare-fun e!2178731 () List!37457)

(declare-fun call!254310 () List!37457)

(assert (=> b!3519930 (= e!2178731 call!254310)))

(declare-fun b!3519931 () Bool)

(declare-fun c!606641 () Bool)

(assert (=> b!3519931 (= c!606641 ((_ is Star!10233) (regex!5474 (rule!8116 separatorToken!241))))))

(declare-fun e!2178733 () List!37457)

(assert (=> b!3519931 (= e!2178733 e!2178731)))

(declare-fun b!3519932 () Bool)

(declare-fun e!2178734 () List!37457)

(assert (=> b!3519932 (= e!2178734 Nil!37333)))

(declare-fun bm!254303 () Bool)

(declare-fun call!254308 () List!37457)

(declare-fun c!606642 () Bool)

(assert (=> bm!254303 (= call!254308 (usedCharacters!708 (ite c!606642 (regTwo!20979 (regex!5474 (rule!8116 separatorToken!241))) (regOne!20978 (regex!5474 (rule!8116 separatorToken!241))))))))

(declare-fun d!1026702 () Bool)

(declare-fun c!606640 () Bool)

(assert (=> d!1026702 (= c!606640 (or ((_ is EmptyExpr!10233) (regex!5474 (rule!8116 separatorToken!241))) ((_ is EmptyLang!10233) (regex!5474 (rule!8116 separatorToken!241)))))))

(assert (=> d!1026702 (= (usedCharacters!708 (regex!5474 (rule!8116 separatorToken!241))) e!2178734)))

(declare-fun b!3519933 () Bool)

(assert (=> b!3519933 (= e!2178732 call!254311)))

(declare-fun call!254309 () List!37457)

(declare-fun bm!254304 () Bool)

(assert (=> bm!254304 (= call!254311 (++!9249 (ite c!606642 call!254309 call!254308) (ite c!606642 call!254308 call!254309)))))

(declare-fun bm!254305 () Bool)

(assert (=> bm!254305 (= call!254309 call!254310)))

(declare-fun b!3519934 () Bool)

(assert (=> b!3519934 (= e!2178734 e!2178733)))

(declare-fun c!606639 () Bool)

(assert (=> b!3519934 (= c!606639 ((_ is ElementMatch!10233) (regex!5474 (rule!8116 separatorToken!241))))))

(declare-fun b!3519935 () Bool)

(assert (=> b!3519935 (= e!2178733 (Cons!37333 (c!606536 (regex!5474 (rule!8116 separatorToken!241))) Nil!37333))))

(declare-fun b!3519936 () Bool)

(assert (=> b!3519936 (= e!2178731 e!2178732)))

(assert (=> b!3519936 (= c!606642 ((_ is Union!10233) (regex!5474 (rule!8116 separatorToken!241))))))

(declare-fun bm!254306 () Bool)

(assert (=> bm!254306 (= call!254310 (usedCharacters!708 (ite c!606641 (reg!10562 (regex!5474 (rule!8116 separatorToken!241))) (ite c!606642 (regOne!20979 (regex!5474 (rule!8116 separatorToken!241))) (regTwo!20978 (regex!5474 (rule!8116 separatorToken!241)))))))))

(assert (= (and d!1026702 c!606640) b!3519932))

(assert (= (and d!1026702 (not c!606640)) b!3519934))

(assert (= (and b!3519934 c!606639) b!3519935))

(assert (= (and b!3519934 (not c!606639)) b!3519931))

(assert (= (and b!3519931 c!606641) b!3519930))

(assert (= (and b!3519931 (not c!606641)) b!3519936))

(assert (= (and b!3519936 c!606642) b!3519933))

(assert (= (and b!3519936 (not c!606642)) b!3519929))

(assert (= (or b!3519933 b!3519929) bm!254303))

(assert (= (or b!3519933 b!3519929) bm!254305))

(assert (= (or b!3519933 b!3519929) bm!254304))

(assert (= (or b!3519930 bm!254305) bm!254306))

(declare-fun m!3969555 () Bool)

(assert (=> bm!254303 m!3969555))

(declare-fun m!3969557 () Bool)

(assert (=> bm!254304 m!3969557))

(declare-fun m!3969559 () Bool)

(assert (=> bm!254306 m!3969559))

(assert (=> b!3519432 d!1026702))

(declare-fun d!1026704 () Bool)

(assert (=> d!1026704 (= (apply!8889 (transformation!5474 (rule!8116 (h!42755 tokens!494))) lt!1201271) (dynLambda!15897 (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) lt!1201271))))

(declare-fun b_lambda!102669 () Bool)

(assert (=> (not b_lambda!102669) (not d!1026704)))

(declare-fun t!281594 () Bool)

(declare-fun tb!196537 () Bool)

(assert (=> (and b!3519407 (= (toValue!7726 (transformation!5474 (rule!8116 separatorToken!241))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281594) tb!196537))

(declare-fun result!240868 () Bool)

(assert (=> tb!196537 (= result!240868 (inv!21 (dynLambda!15897 (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) lt!1201271)))))

(declare-fun m!3969561 () Bool)

(assert (=> tb!196537 m!3969561))

(assert (=> d!1026704 t!281594))

(declare-fun b_and!250639 () Bool)

(assert (= b_and!250633 (and (=> t!281594 result!240868) b_and!250639)))

(declare-fun t!281596 () Bool)

(declare-fun tb!196539 () Bool)

(assert (=> (and b!3519431 (= (toValue!7726 (transformation!5474 (h!42754 rules!2135))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281596) tb!196539))

(declare-fun result!240870 () Bool)

(assert (= result!240870 result!240868))

(assert (=> d!1026704 t!281596))

(declare-fun b_and!250641 () Bool)

(assert (= b_and!250635 (and (=> t!281596 result!240870) b_and!250641)))

(declare-fun t!281598 () Bool)

(declare-fun tb!196541 () Bool)

(assert (=> (and b!3519424 (= (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281598) tb!196541))

(declare-fun result!240872 () Bool)

(assert (= result!240872 result!240868))

(assert (=> d!1026704 t!281598))

(declare-fun b_and!250643 () Bool)

(assert (= b_and!250637 (and (=> t!281598 result!240872) b_and!250643)))

(declare-fun m!3969563 () Bool)

(assert (=> d!1026704 m!3969563))

(assert (=> b!3519432 d!1026704))

(declare-fun d!1026706 () Bool)

(declare-fun e!2178737 () Bool)

(assert (=> d!1026706 e!2178737))

(declare-fun res!1419533 () Bool)

(assert (=> d!1026706 (=> res!1419533 e!2178737)))

(declare-fun lt!1201569 () Option!7609)

(assert (=> d!1026706 (= res!1419533 (isEmpty!21796 lt!1201569))))

(declare-fun e!2178738 () Option!7609)

(assert (=> d!1026706 (= lt!1201569 e!2178738)))

(declare-fun c!606644 () Bool)

(assert (=> d!1026706 (= c!606644 (and ((_ is Cons!37334) rules!2135) (= (tag!6110 (h!42754 rules!2135)) (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494)))))))))

(assert (=> d!1026706 (rulesInvariant!4460 thiss!18206 rules!2135)))

(assert (=> d!1026706 (= (getRuleFromTag!1117 thiss!18206 rules!2135 (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494))))) lt!1201569)))

(declare-fun b!3519937 () Bool)

(assert (=> b!3519937 (= e!2178738 (Some!7608 (h!42754 rules!2135)))))

(declare-fun b!3519938 () Bool)

(declare-fun e!2178739 () Option!7609)

(assert (=> b!3519938 (= e!2178739 None!7608)))

(declare-fun b!3519939 () Bool)

(assert (=> b!3519939 (= e!2178738 e!2178739)))

(declare-fun c!606643 () Bool)

(assert (=> b!3519939 (= c!606643 (and ((_ is Cons!37334) rules!2135) (not (= (tag!6110 (h!42754 rules!2135)) (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494))))))))))

(declare-fun b!3519940 () Bool)

(declare-fun e!2178736 () Bool)

(assert (=> b!3519940 (= e!2178736 (= (tag!6110 (get!11984 lt!1201569)) (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun b!3519941 () Bool)

(declare-fun lt!1201571 () Unit!52984)

(declare-fun lt!1201570 () Unit!52984)

(assert (=> b!3519941 (= lt!1201571 lt!1201570)))

(assert (=> b!3519941 (rulesInvariant!4460 thiss!18206 (t!281563 rules!2135))))

(assert (=> b!3519941 (= lt!1201570 (lemmaInvariantOnRulesThenOnTail!459 thiss!18206 (h!42754 rules!2135) (t!281563 rules!2135)))))

(assert (=> b!3519941 (= e!2178739 (getRuleFromTag!1117 thiss!18206 (t!281563 rules!2135) (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(declare-fun b!3519942 () Bool)

(assert (=> b!3519942 (= e!2178737 e!2178736)))

(declare-fun res!1419532 () Bool)

(assert (=> b!3519942 (=> (not res!1419532) (not e!2178736))))

(assert (=> b!3519942 (= res!1419532 (contains!6999 rules!2135 (get!11984 lt!1201569)))))

(assert (= (and d!1026706 c!606644) b!3519937))

(assert (= (and d!1026706 (not c!606644)) b!3519939))

(assert (= (and b!3519939 c!606643) b!3519941))

(assert (= (and b!3519939 (not c!606643)) b!3519938))

(assert (= (and d!1026706 (not res!1419533)) b!3519942))

(assert (= (and b!3519942 res!1419532) b!3519940))

(declare-fun m!3969565 () Bool)

(assert (=> d!1026706 m!3969565))

(assert (=> d!1026706 m!3968577))

(declare-fun m!3969567 () Bool)

(assert (=> b!3519940 m!3969567))

(assert (=> b!3519941 m!3969071))

(assert (=> b!3519941 m!3969073))

(declare-fun m!3969569 () Bool)

(assert (=> b!3519941 m!3969569))

(assert (=> b!3519942 m!3969567))

(assert (=> b!3519942 m!3969567))

(declare-fun m!3969571 () Bool)

(assert (=> b!3519942 m!3969571))

(assert (=> b!3519432 d!1026706))

(declare-fun d!1026708 () Bool)

(assert (=> d!1026708 (= (maxPrefixOneRule!1770 thiss!18206 (rule!8116 (h!42755 (t!281564 tokens!494))) lt!1201278) (Some!7609 (tuple2!37163 (Token!10315 (apply!8889 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))) (seqFromList!4001 lt!1201278)) (rule!8116 (h!42755 (t!281564 tokens!494))) (size!28400 lt!1201278) lt!1201278) Nil!37333)))))

(declare-fun lt!1201572 () Unit!52984)

(assert (=> d!1026708 (= lt!1201572 (choose!20429 thiss!18206 rules!2135 lt!1201278 lt!1201278 Nil!37333 (rule!8116 (h!42755 (t!281564 tokens!494)))))))

(assert (=> d!1026708 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026708 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!863 thiss!18206 rules!2135 lt!1201278 lt!1201278 Nil!37333 (rule!8116 (h!42755 (t!281564 tokens!494)))) lt!1201572)))

(declare-fun bs!565237 () Bool)

(assert (= bs!565237 d!1026708))

(assert (=> bs!565237 m!3968535))

(assert (=> bs!565237 m!3968653))

(declare-fun m!3969573 () Bool)

(assert (=> bs!565237 m!3969573))

(assert (=> bs!565237 m!3968623))

(assert (=> bs!565237 m!3968623))

(assert (=> bs!565237 m!3968631))

(assert (=> bs!565237 m!3968639))

(assert (=> b!3519432 d!1026708))

(declare-fun b!3519953 () Bool)

(declare-fun e!2178748 () Bool)

(declare-fun e!2178746 () Bool)

(assert (=> b!3519953 (= e!2178748 e!2178746)))

(declare-fun c!606650 () Bool)

(assert (=> b!3519953 (= c!606650 ((_ is IntegerValue!17113) (value!176469 separatorToken!241)))))

(declare-fun b!3519954 () Bool)

(declare-fun res!1419536 () Bool)

(declare-fun e!2178747 () Bool)

(assert (=> b!3519954 (=> res!1419536 e!2178747)))

(assert (=> b!3519954 (= res!1419536 (not ((_ is IntegerValue!17114) (value!176469 separatorToken!241))))))

(assert (=> b!3519954 (= e!2178746 e!2178747)))

(declare-fun b!3519955 () Bool)

(declare-fun inv!17 (TokenValue!5704) Bool)

(assert (=> b!3519955 (= e!2178746 (inv!17 (value!176469 separatorToken!241)))))

(declare-fun b!3519956 () Bool)

(declare-fun inv!15 (TokenValue!5704) Bool)

(assert (=> b!3519956 (= e!2178747 (inv!15 (value!176469 separatorToken!241)))))

(declare-fun d!1026710 () Bool)

(declare-fun c!606649 () Bool)

(assert (=> d!1026710 (= c!606649 ((_ is IntegerValue!17112) (value!176469 separatorToken!241)))))

(assert (=> d!1026710 (= (inv!21 (value!176469 separatorToken!241)) e!2178748)))

(declare-fun b!3519957 () Bool)

(declare-fun inv!16 (TokenValue!5704) Bool)

(assert (=> b!3519957 (= e!2178748 (inv!16 (value!176469 separatorToken!241)))))

(assert (= (and d!1026710 c!606649) b!3519957))

(assert (= (and d!1026710 (not c!606649)) b!3519953))

(assert (= (and b!3519953 c!606650) b!3519955))

(assert (= (and b!3519953 (not c!606650)) b!3519954))

(assert (= (and b!3519954 (not res!1419536)) b!3519956))

(declare-fun m!3969575 () Bool)

(assert (=> b!3519955 m!3969575))

(declare-fun m!3969577 () Bool)

(assert (=> b!3519956 m!3969577))

(declare-fun m!3969579 () Bool)

(assert (=> b!3519957 m!3969579))

(assert (=> b!3519409 d!1026710))

(declare-fun d!1026712 () Bool)

(assert (=> d!1026712 (not (matchR!4817 (regex!5474 (rule!8116 separatorToken!241)) lt!1201272))))

(declare-fun lt!1201581 () Unit!52984)

(declare-fun choose!20431 (Regex!10233 List!37457 C!20652) Unit!52984)

(assert (=> d!1026712 (= lt!1201581 (choose!20431 (regex!5474 (rule!8116 separatorToken!241)) lt!1201272 lt!1201273))))

(assert (=> d!1026712 (validRegex!4672 (regex!5474 (rule!8116 separatorToken!241)))))

(assert (=> d!1026712 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!532 (regex!5474 (rule!8116 separatorToken!241)) lt!1201272 lt!1201273) lt!1201581)))

(declare-fun bs!565240 () Bool)

(assert (= bs!565240 d!1026712))

(assert (=> bs!565240 m!3968723))

(declare-fun m!3969605 () Bool)

(assert (=> bs!565240 m!3969605))

(declare-fun m!3969607 () Bool)

(assert (=> bs!565240 m!3969607))

(assert (=> b!3519435 d!1026712))

(declare-fun b!3520018 () Bool)

(declare-fun res!1419567 () Bool)

(declare-fun e!2178791 () Bool)

(assert (=> b!3520018 (=> res!1419567 e!2178791)))

(assert (=> b!3520018 (= res!1419567 (not ((_ is ElementMatch!10233) (regex!5474 (rule!8116 separatorToken!241)))))))

(declare-fun e!2178790 () Bool)

(assert (=> b!3520018 (= e!2178790 e!2178791)))

(declare-fun d!1026720 () Bool)

(declare-fun e!2178787 () Bool)

(assert (=> d!1026720 e!2178787))

(declare-fun c!606667 () Bool)

(assert (=> d!1026720 (= c!606667 ((_ is EmptyExpr!10233) (regex!5474 (rule!8116 separatorToken!241))))))

(declare-fun lt!1201604 () Bool)

(declare-fun e!2178792 () Bool)

(assert (=> d!1026720 (= lt!1201604 e!2178792)))

(declare-fun c!606666 () Bool)

(assert (=> d!1026720 (= c!606666 (isEmpty!21792 lt!1201272))))

(assert (=> d!1026720 (validRegex!4672 (regex!5474 (rule!8116 separatorToken!241)))))

(assert (=> d!1026720 (= (matchR!4817 (regex!5474 (rule!8116 separatorToken!241)) lt!1201272) lt!1201604)))

(declare-fun bm!254309 () Bool)

(declare-fun call!254314 () Bool)

(assert (=> bm!254309 (= call!254314 (isEmpty!21792 lt!1201272))))

(declare-fun b!3520019 () Bool)

(declare-fun derivativeStep!3069 (Regex!10233 C!20652) Regex!10233)

(declare-fun tail!5489 (List!37457) List!37457)

(assert (=> b!3520019 (= e!2178792 (matchR!4817 (derivativeStep!3069 (regex!5474 (rule!8116 separatorToken!241)) (head!7381 lt!1201272)) (tail!5489 lt!1201272)))))

(declare-fun b!3520020 () Bool)

(declare-fun e!2178789 () Bool)

(assert (=> b!3520020 (= e!2178789 (not (= (head!7381 lt!1201272) (c!606536 (regex!5474 (rule!8116 separatorToken!241))))))))

(declare-fun b!3520021 () Bool)

(declare-fun res!1419570 () Bool)

(assert (=> b!3520021 (=> res!1419570 e!2178789)))

(assert (=> b!3520021 (= res!1419570 (not (isEmpty!21792 (tail!5489 lt!1201272))))))

(declare-fun b!3520022 () Bool)

(declare-fun e!2178786 () Bool)

(assert (=> b!3520022 (= e!2178786 (= (head!7381 lt!1201272) (c!606536 (regex!5474 (rule!8116 separatorToken!241)))))))

(declare-fun b!3520023 () Bool)

(declare-fun e!2178788 () Bool)

(assert (=> b!3520023 (= e!2178788 e!2178789)))

(declare-fun res!1419573 () Bool)

(assert (=> b!3520023 (=> res!1419573 e!2178789)))

(assert (=> b!3520023 (= res!1419573 call!254314)))

(declare-fun b!3520024 () Bool)

(assert (=> b!3520024 (= e!2178791 e!2178788)))

(declare-fun res!1419571 () Bool)

(assert (=> b!3520024 (=> (not res!1419571) (not e!2178788))))

(assert (=> b!3520024 (= res!1419571 (not lt!1201604))))

(declare-fun b!3520025 () Bool)

(declare-fun res!1419572 () Bool)

(assert (=> b!3520025 (=> (not res!1419572) (not e!2178786))))

(assert (=> b!3520025 (= res!1419572 (isEmpty!21792 (tail!5489 lt!1201272)))))

(declare-fun b!3520026 () Bool)

(assert (=> b!3520026 (= e!2178792 (nullable!3516 (regex!5474 (rule!8116 separatorToken!241))))))

(declare-fun b!3520027 () Bool)

(assert (=> b!3520027 (= e!2178787 (= lt!1201604 call!254314))))

(declare-fun b!3520028 () Bool)

(assert (=> b!3520028 (= e!2178790 (not lt!1201604))))

(declare-fun b!3520029 () Bool)

(assert (=> b!3520029 (= e!2178787 e!2178790)))

(declare-fun c!606668 () Bool)

(assert (=> b!3520029 (= c!606668 ((_ is EmptyLang!10233) (regex!5474 (rule!8116 separatorToken!241))))))

(declare-fun b!3520030 () Bool)

(declare-fun res!1419568 () Bool)

(assert (=> b!3520030 (=> res!1419568 e!2178791)))

(assert (=> b!3520030 (= res!1419568 e!2178786)))

(declare-fun res!1419574 () Bool)

(assert (=> b!3520030 (=> (not res!1419574) (not e!2178786))))

(assert (=> b!3520030 (= res!1419574 lt!1201604)))

(declare-fun b!3520031 () Bool)

(declare-fun res!1419569 () Bool)

(assert (=> b!3520031 (=> (not res!1419569) (not e!2178786))))

(assert (=> b!3520031 (= res!1419569 (not call!254314))))

(assert (= (and d!1026720 c!606666) b!3520026))

(assert (= (and d!1026720 (not c!606666)) b!3520019))

(assert (= (and d!1026720 c!606667) b!3520027))

(assert (= (and d!1026720 (not c!606667)) b!3520029))

(assert (= (and b!3520029 c!606668) b!3520028))

(assert (= (and b!3520029 (not c!606668)) b!3520018))

(assert (= (and b!3520018 (not res!1419567)) b!3520030))

(assert (= (and b!3520030 res!1419574) b!3520031))

(assert (= (and b!3520031 res!1419569) b!3520025))

(assert (= (and b!3520025 res!1419572) b!3520022))

(assert (= (and b!3520030 (not res!1419568)) b!3520024))

(assert (= (and b!3520024 res!1419571) b!3520023))

(assert (= (and b!3520023 (not res!1419573)) b!3520021))

(assert (= (and b!3520021 (not res!1419570)) b!3520020))

(assert (= (or b!3520027 b!3520023 b!3520031) bm!254309))

(declare-fun m!3969693 () Bool)

(assert (=> bm!254309 m!3969693))

(declare-fun m!3969695 () Bool)

(assert (=> b!3520021 m!3969695))

(assert (=> b!3520021 m!3969695))

(declare-fun m!3969697 () Bool)

(assert (=> b!3520021 m!3969697))

(assert (=> d!1026720 m!3969693))

(assert (=> d!1026720 m!3969607))

(assert (=> b!3520019 m!3968629))

(assert (=> b!3520019 m!3968629))

(declare-fun m!3969699 () Bool)

(assert (=> b!3520019 m!3969699))

(assert (=> b!3520019 m!3969695))

(assert (=> b!3520019 m!3969699))

(assert (=> b!3520019 m!3969695))

(declare-fun m!3969701 () Bool)

(assert (=> b!3520019 m!3969701))

(assert (=> b!3520020 m!3968629))

(assert (=> b!3520022 m!3968629))

(declare-fun m!3969703 () Bool)

(assert (=> b!3520026 m!3969703))

(assert (=> b!3520025 m!3969695))

(assert (=> b!3520025 m!3969695))

(assert (=> b!3520025 m!3969697))

(assert (=> b!3519435 d!1026720))

(declare-fun b!3520041 () Bool)

(declare-fun e!2178798 () List!37457)

(assert (=> b!3520041 (= e!2178798 (Cons!37333 (h!42753 lt!1201309) (++!9249 (t!281562 lt!1201309) lt!1201283)))))

(declare-fun b!3520043 () Bool)

(declare-fun e!2178797 () Bool)

(declare-fun lt!1201605 () List!37457)

(assert (=> b!3520043 (= e!2178797 (or (not (= lt!1201283 Nil!37333)) (= lt!1201605 lt!1201309)))))

(declare-fun d!1026744 () Bool)

(assert (=> d!1026744 e!2178797))

(declare-fun res!1419576 () Bool)

(assert (=> d!1026744 (=> (not res!1419576) (not e!2178797))))

(assert (=> d!1026744 (= res!1419576 (= (content!5261 lt!1201605) ((_ map or) (content!5261 lt!1201309) (content!5261 lt!1201283))))))

(assert (=> d!1026744 (= lt!1201605 e!2178798)))

(declare-fun c!606673 () Bool)

(assert (=> d!1026744 (= c!606673 ((_ is Nil!37333) lt!1201309))))

(assert (=> d!1026744 (= (++!9249 lt!1201309 lt!1201283) lt!1201605)))

(declare-fun b!3520040 () Bool)

(assert (=> b!3520040 (= e!2178798 lt!1201283)))

(declare-fun b!3520042 () Bool)

(declare-fun res!1419575 () Bool)

(assert (=> b!3520042 (=> (not res!1419575) (not e!2178797))))

(assert (=> b!3520042 (= res!1419575 (= (size!28400 lt!1201605) (+ (size!28400 lt!1201309) (size!28400 lt!1201283))))))

(assert (= (and d!1026744 c!606673) b!3520040))

(assert (= (and d!1026744 (not c!606673)) b!3520041))

(assert (= (and d!1026744 res!1419576) b!3520042))

(assert (= (and b!3520042 res!1419575) b!3520043))

(declare-fun m!3969711 () Bool)

(assert (=> b!3520041 m!3969711))

(declare-fun m!3969713 () Bool)

(assert (=> d!1026744 m!3969713))

(assert (=> d!1026744 m!3968775))

(declare-fun m!3969715 () Bool)

(assert (=> d!1026744 m!3969715))

(declare-fun m!3969717 () Bool)

(assert (=> b!3520042 m!3969717))

(assert (=> b!3520042 m!3968641))

(declare-fun m!3969719 () Bool)

(assert (=> b!3520042 m!3969719))

(assert (=> b!3519433 d!1026744))

(declare-fun d!1026748 () Bool)

(assert (=> d!1026748 (= (++!9249 (++!9249 lt!1201309 lt!1201272) lt!1201307) (++!9249 lt!1201309 (++!9249 lt!1201272 lt!1201307)))))

(declare-fun lt!1201609 () Unit!52984)

(declare-fun choose!20432 (List!37457 List!37457 List!37457) Unit!52984)

(assert (=> d!1026748 (= lt!1201609 (choose!20432 lt!1201309 lt!1201272 lt!1201307))))

(assert (=> d!1026748 (= (lemmaConcatAssociativity!2006 lt!1201309 lt!1201272 lt!1201307) lt!1201609)))

(declare-fun bs!565242 () Bool)

(assert (= bs!565242 d!1026748))

(assert (=> bs!565242 m!3968579))

(assert (=> bs!565242 m!3968579))

(assert (=> bs!565242 m!3968581))

(assert (=> bs!565242 m!3968561))

(assert (=> bs!565242 m!3968561))

(declare-fun m!3969739 () Bool)

(assert (=> bs!565242 m!3969739))

(declare-fun m!3969741 () Bool)

(assert (=> bs!565242 m!3969741))

(assert (=> b!3519433 d!1026748))

(declare-fun e!2178803 () List!37457)

(declare-fun b!3520050 () Bool)

(assert (=> b!3520050 (= e!2178803 (Cons!37333 (h!42753 (++!9249 lt!1201278 lt!1201272)) (++!9249 (t!281562 (++!9249 lt!1201278 lt!1201272)) (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241))))))

(declare-fun e!2178802 () Bool)

(declare-fun b!3520052 () Bool)

(declare-fun lt!1201610 () List!37457)

(assert (=> b!3520052 (= e!2178802 (or (not (= (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241) Nil!37333)) (= lt!1201610 (++!9249 lt!1201278 lt!1201272))))))

(declare-fun d!1026752 () Bool)

(assert (=> d!1026752 e!2178802))

(declare-fun res!1419581 () Bool)

(assert (=> d!1026752 (=> (not res!1419581) (not e!2178802))))

(assert (=> d!1026752 (= res!1419581 (= (content!5261 lt!1201610) ((_ map or) (content!5261 (++!9249 lt!1201278 lt!1201272)) (content!5261 (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241)))))))

(assert (=> d!1026752 (= lt!1201610 e!2178803)))

(declare-fun c!606675 () Bool)

(assert (=> d!1026752 (= c!606675 ((_ is Nil!37333) (++!9249 lt!1201278 lt!1201272)))))

(assert (=> d!1026752 (= (++!9249 (++!9249 lt!1201278 lt!1201272) (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241)) lt!1201610)))

(declare-fun b!3520049 () Bool)

(assert (=> b!3520049 (= e!2178803 (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241))))

(declare-fun b!3520051 () Bool)

(declare-fun res!1419580 () Bool)

(assert (=> b!3520051 (=> (not res!1419580) (not e!2178802))))

(assert (=> b!3520051 (= res!1419580 (= (size!28400 lt!1201610) (+ (size!28400 (++!9249 lt!1201278 lt!1201272)) (size!28400 (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1026752 c!606675) b!3520049))

(assert (= (and d!1026752 (not c!606675)) b!3520050))

(assert (= (and d!1026752 res!1419581) b!3520051))

(assert (= (and b!3520051 res!1419580) b!3520052))

(assert (=> b!3520050 m!3968559))

(declare-fun m!3969743 () Bool)

(assert (=> b!3520050 m!3969743))

(declare-fun m!3969745 () Bool)

(assert (=> d!1026752 m!3969745))

(assert (=> d!1026752 m!3968563))

(declare-fun m!3969747 () Bool)

(assert (=> d!1026752 m!3969747))

(assert (=> d!1026752 m!3968559))

(declare-fun m!3969749 () Bool)

(assert (=> d!1026752 m!3969749))

(declare-fun m!3969751 () Bool)

(assert (=> b!3520051 m!3969751))

(assert (=> b!3520051 m!3968563))

(declare-fun m!3969753 () Bool)

(assert (=> b!3520051 m!3969753))

(assert (=> b!3520051 m!3968559))

(declare-fun m!3969755 () Bool)

(assert (=> b!3520051 m!3969755))

(assert (=> b!3519412 d!1026752))

(declare-fun d!1026754 () Bool)

(declare-fun lt!1201611 () BalanceConc!22260)

(assert (=> d!1026754 (= (list!13653 lt!1201611) (originalCharacters!6188 separatorToken!241))))

(assert (=> d!1026754 (= lt!1201611 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (value!176469 separatorToken!241)))))

(assert (=> d!1026754 (= (charsOf!3488 separatorToken!241) lt!1201611)))

(declare-fun b_lambda!102675 () Bool)

(assert (=> (not b_lambda!102675) (not d!1026754)))

(declare-fun t!281612 () Bool)

(declare-fun tb!196555 () Bool)

(assert (=> (and b!3519407 (= (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241)))) t!281612) tb!196555))

(declare-fun b!3520053 () Bool)

(declare-fun e!2178804 () Bool)

(declare-fun tp!1086765 () Bool)

(assert (=> b!3520053 (= e!2178804 (and (inv!50570 (c!606537 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (value!176469 separatorToken!241)))) tp!1086765))))

(declare-fun result!240888 () Bool)

(assert (=> tb!196555 (= result!240888 (and (inv!50571 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (value!176469 separatorToken!241))) e!2178804))))

(assert (= tb!196555 b!3520053))

(declare-fun m!3969757 () Bool)

(assert (=> b!3520053 m!3969757))

(declare-fun m!3969759 () Bool)

(assert (=> tb!196555 m!3969759))

(assert (=> d!1026754 t!281612))

(declare-fun b_and!250657 () Bool)

(assert (= b_and!250615 (and (=> t!281612 result!240888) b_and!250657)))

(declare-fun tb!196557 () Bool)

(declare-fun t!281614 () Bool)

(assert (=> (and b!3519431 (= (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241)))) t!281614) tb!196557))

(declare-fun result!240890 () Bool)

(assert (= result!240890 result!240888))

(assert (=> d!1026754 t!281614))

(declare-fun b_and!250659 () Bool)

(assert (= b_and!250617 (and (=> t!281614 result!240890) b_and!250659)))

(declare-fun tb!196559 () Bool)

(declare-fun t!281616 () Bool)

(assert (=> (and b!3519424 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241)))) t!281616) tb!196559))

(declare-fun result!240892 () Bool)

(assert (= result!240892 result!240888))

(assert (=> d!1026754 t!281616))

(declare-fun b_and!250661 () Bool)

(assert (= b_and!250619 (and (=> t!281616 result!240892) b_and!250661)))

(declare-fun m!3969761 () Bool)

(assert (=> d!1026754 m!3969761))

(declare-fun m!3969763 () Bool)

(assert (=> d!1026754 m!3969763))

(assert (=> b!3519412 d!1026754))

(declare-fun d!1026756 () Bool)

(assert (=> d!1026756 (= (list!13653 (charsOf!3488 (h!42755 (t!281564 tokens!494)))) (list!13655 (c!606537 (charsOf!3488 (h!42755 (t!281564 tokens!494))))))))

(declare-fun bs!565243 () Bool)

(assert (= bs!565243 d!1026756))

(declare-fun m!3969765 () Bool)

(assert (=> bs!565243 m!3969765))

(assert (=> b!3519412 d!1026756))

(declare-fun b!3520055 () Bool)

(declare-fun e!2178806 () List!37457)

(assert (=> b!3520055 (= e!2178806 (Cons!37333 (h!42753 lt!1201278) (++!9249 (t!281562 lt!1201278) lt!1201272)))))

(declare-fun b!3520057 () Bool)

(declare-fun lt!1201612 () List!37457)

(declare-fun e!2178805 () Bool)

(assert (=> b!3520057 (= e!2178805 (or (not (= lt!1201272 Nil!37333)) (= lt!1201612 lt!1201278)))))

(declare-fun d!1026758 () Bool)

(assert (=> d!1026758 e!2178805))

(declare-fun res!1419583 () Bool)

(assert (=> d!1026758 (=> (not res!1419583) (not e!2178805))))

(assert (=> d!1026758 (= res!1419583 (= (content!5261 lt!1201612) ((_ map or) (content!5261 lt!1201278) (content!5261 lt!1201272))))))

(assert (=> d!1026758 (= lt!1201612 e!2178806)))

(declare-fun c!606676 () Bool)

(assert (=> d!1026758 (= c!606676 ((_ is Nil!37333) lt!1201278))))

(assert (=> d!1026758 (= (++!9249 lt!1201278 lt!1201272) lt!1201612)))

(declare-fun b!3520054 () Bool)

(assert (=> b!3520054 (= e!2178806 lt!1201272)))

(declare-fun b!3520056 () Bool)

(declare-fun res!1419582 () Bool)

(assert (=> b!3520056 (=> (not res!1419582) (not e!2178805))))

(assert (=> b!3520056 (= res!1419582 (= (size!28400 lt!1201612) (+ (size!28400 lt!1201278) (size!28400 lt!1201272))))))

(assert (= (and d!1026758 c!606676) b!3520054))

(assert (= (and d!1026758 (not c!606676)) b!3520055))

(assert (= (and d!1026758 res!1419583) b!3520056))

(assert (= (and b!3520056 res!1419582) b!3520057))

(declare-fun m!3969767 () Bool)

(assert (=> b!3520055 m!3969767))

(declare-fun m!3969769 () Bool)

(assert (=> d!1026758 m!3969769))

(declare-fun m!3969771 () Bool)

(assert (=> d!1026758 m!3969771))

(assert (=> d!1026758 m!3968777))

(declare-fun m!3969773 () Bool)

(assert (=> b!3520056 m!3969773))

(assert (=> b!3520056 m!3968653))

(assert (=> b!3520056 m!3968781))

(assert (=> b!3519412 d!1026758))

(declare-fun b!3520059 () Bool)

(declare-fun e!2178808 () List!37457)

(assert (=> b!3520059 (= e!2178808 (Cons!37333 (h!42753 lt!1201272) (++!9249 (t!281562 lt!1201272) lt!1201307)))))

(declare-fun lt!1201613 () List!37457)

(declare-fun b!3520061 () Bool)

(declare-fun e!2178807 () Bool)

(assert (=> b!3520061 (= e!2178807 (or (not (= lt!1201307 Nil!37333)) (= lt!1201613 lt!1201272)))))

(declare-fun d!1026760 () Bool)

(assert (=> d!1026760 e!2178807))

(declare-fun res!1419585 () Bool)

(assert (=> d!1026760 (=> (not res!1419585) (not e!2178807))))

(assert (=> d!1026760 (= res!1419585 (= (content!5261 lt!1201613) ((_ map or) (content!5261 lt!1201272) (content!5261 lt!1201307))))))

(assert (=> d!1026760 (= lt!1201613 e!2178808)))

(declare-fun c!606677 () Bool)

(assert (=> d!1026760 (= c!606677 ((_ is Nil!37333) lt!1201272))))

(assert (=> d!1026760 (= (++!9249 lt!1201272 lt!1201307) lt!1201613)))

(declare-fun b!3520058 () Bool)

(assert (=> b!3520058 (= e!2178808 lt!1201307)))

(declare-fun b!3520060 () Bool)

(declare-fun res!1419584 () Bool)

(assert (=> b!3520060 (=> (not res!1419584) (not e!2178807))))

(assert (=> b!3520060 (= res!1419584 (= (size!28400 lt!1201613) (+ (size!28400 lt!1201272) (size!28400 lt!1201307))))))

(assert (= (and d!1026760 c!606677) b!3520058))

(assert (= (and d!1026760 (not c!606677)) b!3520059))

(assert (= (and d!1026760 res!1419585) b!3520060))

(assert (= (and b!3520060 res!1419584) b!3520061))

(declare-fun m!3969775 () Bool)

(assert (=> b!3520059 m!3969775))

(declare-fun m!3969777 () Bool)

(assert (=> d!1026760 m!3969777))

(assert (=> d!1026760 m!3968777))

(assert (=> d!1026760 m!3968763))

(declare-fun m!3969779 () Bool)

(assert (=> b!3520060 m!3969779))

(assert (=> b!3520060 m!3968781))

(assert (=> b!3520060 m!3968769))

(assert (=> b!3519412 d!1026760))

(declare-fun d!1026762 () Bool)

(declare-fun c!606680 () Bool)

(assert (=> d!1026762 (= c!606680 ((_ is Cons!37335) tokens!494))))

(declare-fun e!2178811 () List!37457)

(assert (=> d!1026762 (= (printWithSeparatorTokenList!350 thiss!18206 tokens!494 separatorToken!241) e!2178811)))

(declare-fun b!3520066 () Bool)

(assert (=> b!3520066 (= e!2178811 (++!9249 (++!9249 (list!13653 (charsOf!3488 (h!42755 tokens!494))) (list!13653 (charsOf!3488 separatorToken!241))) (printWithSeparatorTokenList!350 thiss!18206 (t!281564 tokens!494) separatorToken!241)))))

(declare-fun b!3520067 () Bool)

(assert (=> b!3520067 (= e!2178811 Nil!37333)))

(assert (= (and d!1026762 c!606680) b!3520066))

(assert (= (and d!1026762 (not c!606680)) b!3520067))

(declare-fun m!3969781 () Bool)

(assert (=> b!3520066 m!3969781))

(assert (=> b!3520066 m!3968553))

(declare-fun m!3969783 () Bool)

(assert (=> b!3520066 m!3969783))

(assert (=> b!3520066 m!3968549))

(assert (=> b!3520066 m!3968593))

(assert (=> b!3520066 m!3968553))

(assert (=> b!3520066 m!3968595))

(assert (=> b!3520066 m!3968557))

(assert (=> b!3520066 m!3969781))

(assert (=> b!3520066 m!3968593))

(assert (=> b!3520066 m!3968595))

(assert (=> b!3520066 m!3968549))

(assert (=> b!3520066 m!3968557))

(assert (=> b!3519412 d!1026762))

(declare-fun d!1026764 () Bool)

(declare-fun c!606681 () Bool)

(assert (=> d!1026764 (= c!606681 ((_ is Cons!37335) (t!281564 (t!281564 tokens!494))))))

(declare-fun e!2178812 () List!37457)

(assert (=> d!1026764 (= (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241) e!2178812)))

(declare-fun b!3520068 () Bool)

(assert (=> b!3520068 (= e!2178812 (++!9249 (++!9249 (list!13653 (charsOf!3488 (h!42755 (t!281564 (t!281564 tokens!494))))) (list!13653 (charsOf!3488 separatorToken!241))) (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 (t!281564 tokens!494))) separatorToken!241)))))

(declare-fun b!3520069 () Bool)

(assert (=> b!3520069 (= e!2178812 Nil!37333)))

(assert (= (and d!1026764 c!606681) b!3520068))

(assert (= (and d!1026764 (not c!606681)) b!3520069))

(declare-fun m!3969785 () Bool)

(assert (=> b!3520068 m!3969785))

(declare-fun m!3969787 () Bool)

(assert (=> b!3520068 m!3969787))

(declare-fun m!3969789 () Bool)

(assert (=> b!3520068 m!3969789))

(assert (=> b!3520068 m!3968549))

(declare-fun m!3969791 () Bool)

(assert (=> b!3520068 m!3969791))

(assert (=> b!3520068 m!3969787))

(declare-fun m!3969793 () Bool)

(assert (=> b!3520068 m!3969793))

(assert (=> b!3520068 m!3968557))

(assert (=> b!3520068 m!3969785))

(assert (=> b!3520068 m!3969791))

(assert (=> b!3520068 m!3969793))

(assert (=> b!3520068 m!3968549))

(assert (=> b!3520068 m!3968557))

(assert (=> b!3519412 d!1026764))

(declare-fun d!1026766 () Bool)

(declare-fun c!606682 () Bool)

(assert (=> d!1026766 (= c!606682 ((_ is Cons!37335) (t!281564 tokens!494)))))

(declare-fun e!2178813 () List!37457)

(assert (=> d!1026766 (= (printWithSeparatorTokenList!350 thiss!18206 (t!281564 tokens!494) separatorToken!241) e!2178813)))

(declare-fun b!3520070 () Bool)

(assert (=> b!3520070 (= e!2178813 (++!9249 (++!9249 (list!13653 (charsOf!3488 (h!42755 (t!281564 tokens!494)))) (list!13653 (charsOf!3488 separatorToken!241))) (printWithSeparatorTokenList!350 thiss!18206 (t!281564 (t!281564 tokens!494)) separatorToken!241)))))

(declare-fun b!3520071 () Bool)

(assert (=> b!3520071 (= e!2178813 Nil!37333)))

(assert (= (and d!1026766 c!606682) b!3520070))

(assert (= (and d!1026766 (not c!606682)) b!3520071))

(declare-fun m!3969795 () Bool)

(assert (=> b!3520070 m!3969795))

(assert (=> b!3520070 m!3968559))

(declare-fun m!3969797 () Bool)

(assert (=> b!3520070 m!3969797))

(assert (=> b!3520070 m!3968549))

(assert (=> b!3520070 m!3968547))

(assert (=> b!3520070 m!3968559))

(assert (=> b!3520070 m!3968555))

(assert (=> b!3520070 m!3968557))

(assert (=> b!3520070 m!3969795))

(assert (=> b!3520070 m!3968547))

(assert (=> b!3520070 m!3968555))

(assert (=> b!3520070 m!3968549))

(assert (=> b!3520070 m!3968557))

(assert (=> b!3519412 d!1026766))

(declare-fun d!1026768 () Bool)

(assert (=> d!1026768 (= (list!13653 (charsOf!3488 separatorToken!241)) (list!13655 (c!606537 (charsOf!3488 separatorToken!241))))))

(declare-fun bs!565244 () Bool)

(assert (= bs!565244 d!1026768))

(declare-fun m!3969799 () Bool)

(assert (=> bs!565244 m!3969799))

(assert (=> b!3519412 d!1026768))

(declare-fun d!1026770 () Bool)

(declare-fun lt!1201614 () BalanceConc!22260)

(assert (=> d!1026770 (= (list!13653 lt!1201614) (originalCharacters!6188 (h!42755 (t!281564 tokens!494))))))

(assert (=> d!1026770 (= lt!1201614 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (value!176469 (h!42755 (t!281564 tokens!494)))))))

(assert (=> d!1026770 (= (charsOf!3488 (h!42755 (t!281564 tokens!494))) lt!1201614)))

(declare-fun b_lambda!102677 () Bool)

(assert (=> (not b_lambda!102677) (not d!1026770)))

(declare-fun t!281618 () Bool)

(declare-fun tb!196561 () Bool)

(assert (=> (and b!3519407 (= (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281618) tb!196561))

(declare-fun b!3520072 () Bool)

(declare-fun e!2178814 () Bool)

(declare-fun tp!1086766 () Bool)

(assert (=> b!3520072 (= e!2178814 (and (inv!50570 (c!606537 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (value!176469 (h!42755 (t!281564 tokens!494)))))) tp!1086766))))

(declare-fun result!240894 () Bool)

(assert (=> tb!196561 (= result!240894 (and (inv!50571 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (value!176469 (h!42755 (t!281564 tokens!494))))) e!2178814))))

(assert (= tb!196561 b!3520072))

(declare-fun m!3969801 () Bool)

(assert (=> b!3520072 m!3969801))

(declare-fun m!3969803 () Bool)

(assert (=> tb!196561 m!3969803))

(assert (=> d!1026770 t!281618))

(declare-fun b_and!250663 () Bool)

(assert (= b_and!250657 (and (=> t!281618 result!240894) b_and!250663)))

(declare-fun tb!196563 () Bool)

(declare-fun t!281620 () Bool)

(assert (=> (and b!3519431 (= (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281620) tb!196563))

(declare-fun result!240896 () Bool)

(assert (= result!240896 result!240894))

(assert (=> d!1026770 t!281620))

(declare-fun b_and!250665 () Bool)

(assert (= b_and!250659 (and (=> t!281620 result!240896) b_and!250665)))

(declare-fun t!281622 () Bool)

(declare-fun tb!196565 () Bool)

(assert (=> (and b!3519424 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281622) tb!196565))

(declare-fun result!240898 () Bool)

(assert (= result!240898 result!240894))

(assert (=> d!1026770 t!281622))

(declare-fun b_and!250667 () Bool)

(assert (= b_and!250661 (and (=> t!281622 result!240898) b_and!250667)))

(declare-fun m!3969805 () Bool)

(assert (=> d!1026770 m!3969805))

(declare-fun m!3969807 () Bool)

(assert (=> d!1026770 m!3969807))

(assert (=> b!3519412 d!1026770))

(declare-fun d!1026772 () Bool)

(declare-fun res!1419590 () Bool)

(declare-fun e!2178817 () Bool)

(assert (=> d!1026772 (=> (not res!1419590) (not e!2178817))))

(assert (=> d!1026772 (= res!1419590 (not (isEmpty!21792 (originalCharacters!6188 separatorToken!241))))))

(assert (=> d!1026772 (= (inv!50567 separatorToken!241) e!2178817)))

(declare-fun b!3520077 () Bool)

(declare-fun res!1419591 () Bool)

(assert (=> b!3520077 (=> (not res!1419591) (not e!2178817))))

(assert (=> b!3520077 (= res!1419591 (= (originalCharacters!6188 separatorToken!241) (list!13653 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (value!176469 separatorToken!241)))))))

(declare-fun b!3520078 () Bool)

(assert (=> b!3520078 (= e!2178817 (= (size!28399 separatorToken!241) (size!28400 (originalCharacters!6188 separatorToken!241))))))

(assert (= (and d!1026772 res!1419590) b!3520077))

(assert (= (and b!3520077 res!1419591) b!3520078))

(declare-fun b_lambda!102679 () Bool)

(assert (=> (not b_lambda!102679) (not b!3520077)))

(assert (=> b!3520077 t!281612))

(declare-fun b_and!250669 () Bool)

(assert (= b_and!250663 (and (=> t!281612 result!240888) b_and!250669)))

(assert (=> b!3520077 t!281614))

(declare-fun b_and!250671 () Bool)

(assert (= b_and!250665 (and (=> t!281614 result!240890) b_and!250671)))

(assert (=> b!3520077 t!281616))

(declare-fun b_and!250673 () Bool)

(assert (= b_and!250667 (and (=> t!281616 result!240892) b_and!250673)))

(declare-fun m!3969809 () Bool)

(assert (=> d!1026772 m!3969809))

(assert (=> b!3520077 m!3969763))

(assert (=> b!3520077 m!3969763))

(declare-fun m!3969811 () Bool)

(assert (=> b!3520077 m!3969811))

(declare-fun m!3969813 () Bool)

(assert (=> b!3520078 m!3969813))

(assert (=> start!326898 d!1026772))

(declare-fun d!1026774 () Bool)

(assert (=> d!1026774 (dynLambda!15898 lambda!122712 (h!42755 (t!281564 tokens!494)))))

(declare-fun lt!1201615 () Unit!52984)

(assert (=> d!1026774 (= lt!1201615 (choose!20425 tokens!494 lambda!122712 (h!42755 (t!281564 tokens!494))))))

(declare-fun e!2178818 () Bool)

(assert (=> d!1026774 e!2178818))

(declare-fun res!1419592 () Bool)

(assert (=> d!1026774 (=> (not res!1419592) (not e!2178818))))

(assert (=> d!1026774 (= res!1419592 (forall!8025 tokens!494 lambda!122712))))

(assert (=> d!1026774 (= (forallContained!1421 tokens!494 lambda!122712 (h!42755 (t!281564 tokens!494))) lt!1201615)))

(declare-fun b!3520079 () Bool)

(assert (=> b!3520079 (= e!2178818 (contains!7001 tokens!494 (h!42755 (t!281564 tokens!494))))))

(assert (= (and d!1026774 res!1419592) b!3520079))

(declare-fun b_lambda!102681 () Bool)

(assert (=> (not b_lambda!102681) (not d!1026774)))

(declare-fun m!3969815 () Bool)

(assert (=> d!1026774 m!3969815))

(declare-fun m!3969817 () Bool)

(assert (=> d!1026774 m!3969817))

(assert (=> d!1026774 m!3968711))

(assert (=> b!3520079 m!3969279))

(assert (=> b!3519437 d!1026774))

(declare-fun d!1026776 () Bool)

(assert (=> d!1026776 (dynLambda!15898 lambda!122712 (h!42755 tokens!494))))

(declare-fun lt!1201616 () Unit!52984)

(assert (=> d!1026776 (= lt!1201616 (choose!20425 tokens!494 lambda!122712 (h!42755 tokens!494)))))

(declare-fun e!2178819 () Bool)

(assert (=> d!1026776 e!2178819))

(declare-fun res!1419593 () Bool)

(assert (=> d!1026776 (=> (not res!1419593) (not e!2178819))))

(assert (=> d!1026776 (= res!1419593 (forall!8025 tokens!494 lambda!122712))))

(assert (=> d!1026776 (= (forallContained!1421 tokens!494 lambda!122712 (h!42755 tokens!494)) lt!1201616)))

(declare-fun b!3520080 () Bool)

(assert (=> b!3520080 (= e!2178819 (contains!7001 tokens!494 (h!42755 tokens!494)))))

(assert (= (and d!1026776 res!1419593) b!3520080))

(declare-fun b_lambda!102683 () Bool)

(assert (=> (not b_lambda!102683) (not d!1026776)))

(declare-fun m!3969819 () Bool)

(assert (=> d!1026776 m!3969819))

(declare-fun m!3969821 () Bool)

(assert (=> d!1026776 m!3969821))

(assert (=> d!1026776 m!3968711))

(declare-fun m!3969823 () Bool)

(assert (=> b!3520080 m!3969823))

(assert (=> b!3519437 d!1026776))

(declare-fun b!3520081 () Bool)

(declare-fun res!1419594 () Bool)

(declare-fun e!2178825 () Bool)

(assert (=> b!3520081 (=> res!1419594 e!2178825)))

(assert (=> b!3520081 (= res!1419594 (not ((_ is ElementMatch!10233) (regex!5474 lt!1201306))))))

(declare-fun e!2178824 () Bool)

(assert (=> b!3520081 (= e!2178824 e!2178825)))

(declare-fun d!1026778 () Bool)

(declare-fun e!2178821 () Bool)

(assert (=> d!1026778 e!2178821))

(declare-fun c!606684 () Bool)

(assert (=> d!1026778 (= c!606684 ((_ is EmptyExpr!10233) (regex!5474 lt!1201306)))))

(declare-fun lt!1201617 () Bool)

(declare-fun e!2178826 () Bool)

(assert (=> d!1026778 (= lt!1201617 e!2178826)))

(declare-fun c!606683 () Bool)

(assert (=> d!1026778 (= c!606683 (isEmpty!21792 lt!1201272))))

(assert (=> d!1026778 (validRegex!4672 (regex!5474 lt!1201306))))

(assert (=> d!1026778 (= (matchR!4817 (regex!5474 lt!1201306) lt!1201272) lt!1201617)))

(declare-fun bm!254314 () Bool)

(declare-fun call!254319 () Bool)

(assert (=> bm!254314 (= call!254319 (isEmpty!21792 lt!1201272))))

(declare-fun b!3520082 () Bool)

(assert (=> b!3520082 (= e!2178826 (matchR!4817 (derivativeStep!3069 (regex!5474 lt!1201306) (head!7381 lt!1201272)) (tail!5489 lt!1201272)))))

(declare-fun b!3520083 () Bool)

(declare-fun e!2178823 () Bool)

(assert (=> b!3520083 (= e!2178823 (not (= (head!7381 lt!1201272) (c!606536 (regex!5474 lt!1201306)))))))

(declare-fun b!3520084 () Bool)

(declare-fun res!1419597 () Bool)

(assert (=> b!3520084 (=> res!1419597 e!2178823)))

(assert (=> b!3520084 (= res!1419597 (not (isEmpty!21792 (tail!5489 lt!1201272))))))

(declare-fun b!3520085 () Bool)

(declare-fun e!2178820 () Bool)

(assert (=> b!3520085 (= e!2178820 (= (head!7381 lt!1201272) (c!606536 (regex!5474 lt!1201306))))))

(declare-fun b!3520086 () Bool)

(declare-fun e!2178822 () Bool)

(assert (=> b!3520086 (= e!2178822 e!2178823)))

(declare-fun res!1419600 () Bool)

(assert (=> b!3520086 (=> res!1419600 e!2178823)))

(assert (=> b!3520086 (= res!1419600 call!254319)))

(declare-fun b!3520087 () Bool)

(assert (=> b!3520087 (= e!2178825 e!2178822)))

(declare-fun res!1419598 () Bool)

(assert (=> b!3520087 (=> (not res!1419598) (not e!2178822))))

(assert (=> b!3520087 (= res!1419598 (not lt!1201617))))

(declare-fun b!3520088 () Bool)

(declare-fun res!1419599 () Bool)

(assert (=> b!3520088 (=> (not res!1419599) (not e!2178820))))

(assert (=> b!3520088 (= res!1419599 (isEmpty!21792 (tail!5489 lt!1201272)))))

(declare-fun b!3520089 () Bool)

(assert (=> b!3520089 (= e!2178826 (nullable!3516 (regex!5474 lt!1201306)))))

(declare-fun b!3520090 () Bool)

(assert (=> b!3520090 (= e!2178821 (= lt!1201617 call!254319))))

(declare-fun b!3520091 () Bool)

(assert (=> b!3520091 (= e!2178824 (not lt!1201617))))

(declare-fun b!3520092 () Bool)

(assert (=> b!3520092 (= e!2178821 e!2178824)))

(declare-fun c!606685 () Bool)

(assert (=> b!3520092 (= c!606685 ((_ is EmptyLang!10233) (regex!5474 lt!1201306)))))

(declare-fun b!3520093 () Bool)

(declare-fun res!1419595 () Bool)

(assert (=> b!3520093 (=> res!1419595 e!2178825)))

(assert (=> b!3520093 (= res!1419595 e!2178820)))

(declare-fun res!1419601 () Bool)

(assert (=> b!3520093 (=> (not res!1419601) (not e!2178820))))

(assert (=> b!3520093 (= res!1419601 lt!1201617)))

(declare-fun b!3520094 () Bool)

(declare-fun res!1419596 () Bool)

(assert (=> b!3520094 (=> (not res!1419596) (not e!2178820))))

(assert (=> b!3520094 (= res!1419596 (not call!254319))))

(assert (= (and d!1026778 c!606683) b!3520089))

(assert (= (and d!1026778 (not c!606683)) b!3520082))

(assert (= (and d!1026778 c!606684) b!3520090))

(assert (= (and d!1026778 (not c!606684)) b!3520092))

(assert (= (and b!3520092 c!606685) b!3520091))

(assert (= (and b!3520092 (not c!606685)) b!3520081))

(assert (= (and b!3520081 (not res!1419594)) b!3520093))

(assert (= (and b!3520093 res!1419601) b!3520094))

(assert (= (and b!3520094 res!1419596) b!3520088))

(assert (= (and b!3520088 res!1419599) b!3520085))

(assert (= (and b!3520093 (not res!1419595)) b!3520087))

(assert (= (and b!3520087 res!1419598) b!3520086))

(assert (= (and b!3520086 (not res!1419600)) b!3520084))

(assert (= (and b!3520084 (not res!1419597)) b!3520083))

(assert (= (or b!3520090 b!3520086 b!3520094) bm!254314))

(assert (=> bm!254314 m!3969693))

(assert (=> b!3520084 m!3969695))

(assert (=> b!3520084 m!3969695))

(assert (=> b!3520084 m!3969697))

(assert (=> d!1026778 m!3969693))

(declare-fun m!3969825 () Bool)

(assert (=> d!1026778 m!3969825))

(assert (=> b!3520082 m!3968629))

(assert (=> b!3520082 m!3968629))

(declare-fun m!3969827 () Bool)

(assert (=> b!3520082 m!3969827))

(assert (=> b!3520082 m!3969695))

(assert (=> b!3520082 m!3969827))

(assert (=> b!3520082 m!3969695))

(declare-fun m!3969829 () Bool)

(assert (=> b!3520082 m!3969829))

(assert (=> b!3520083 m!3968629))

(assert (=> b!3520085 m!3968629))

(declare-fun m!3969831 () Bool)

(assert (=> b!3520089 m!3969831))

(assert (=> b!3520088 m!3969695))

(assert (=> b!3520088 m!3969695))

(assert (=> b!3520088 m!3969697))

(assert (=> b!3519416 d!1026778))

(declare-fun d!1026780 () Bool)

(assert (=> d!1026780 (= (get!11984 lt!1201282) (v!37090 lt!1201282))))

(assert (=> b!3519416 d!1026780))

(declare-fun b!3520095 () Bool)

(declare-fun res!1419602 () Bool)

(declare-fun e!2178832 () Bool)

(assert (=> b!3520095 (=> res!1419602 e!2178832)))

(assert (=> b!3520095 (= res!1419602 (not ((_ is ElementMatch!10233) (regex!5474 lt!1201296))))))

(declare-fun e!2178831 () Bool)

(assert (=> b!3520095 (= e!2178831 e!2178832)))

(declare-fun d!1026782 () Bool)

(declare-fun e!2178828 () Bool)

(assert (=> d!1026782 e!2178828))

(declare-fun c!606687 () Bool)

(assert (=> d!1026782 (= c!606687 ((_ is EmptyExpr!10233) (regex!5474 lt!1201296)))))

(declare-fun lt!1201618 () Bool)

(declare-fun e!2178833 () Bool)

(assert (=> d!1026782 (= lt!1201618 e!2178833)))

(declare-fun c!606686 () Bool)

(assert (=> d!1026782 (= c!606686 (isEmpty!21792 lt!1201278))))

(assert (=> d!1026782 (validRegex!4672 (regex!5474 lt!1201296))))

(assert (=> d!1026782 (= (matchR!4817 (regex!5474 lt!1201296) lt!1201278) lt!1201618)))

(declare-fun bm!254315 () Bool)

(declare-fun call!254320 () Bool)

(assert (=> bm!254315 (= call!254320 (isEmpty!21792 lt!1201278))))

(declare-fun b!3520096 () Bool)

(assert (=> b!3520096 (= e!2178833 (matchR!4817 (derivativeStep!3069 (regex!5474 lt!1201296) (head!7381 lt!1201278)) (tail!5489 lt!1201278)))))

(declare-fun b!3520097 () Bool)

(declare-fun e!2178830 () Bool)

(assert (=> b!3520097 (= e!2178830 (not (= (head!7381 lt!1201278) (c!606536 (regex!5474 lt!1201296)))))))

(declare-fun b!3520098 () Bool)

(declare-fun res!1419605 () Bool)

(assert (=> b!3520098 (=> res!1419605 e!2178830)))

(assert (=> b!3520098 (= res!1419605 (not (isEmpty!21792 (tail!5489 lt!1201278))))))

(declare-fun b!3520099 () Bool)

(declare-fun e!2178827 () Bool)

(assert (=> b!3520099 (= e!2178827 (= (head!7381 lt!1201278) (c!606536 (regex!5474 lt!1201296))))))

(declare-fun b!3520100 () Bool)

(declare-fun e!2178829 () Bool)

(assert (=> b!3520100 (= e!2178829 e!2178830)))

(declare-fun res!1419608 () Bool)

(assert (=> b!3520100 (=> res!1419608 e!2178830)))

(assert (=> b!3520100 (= res!1419608 call!254320)))

(declare-fun b!3520101 () Bool)

(assert (=> b!3520101 (= e!2178832 e!2178829)))

(declare-fun res!1419606 () Bool)

(assert (=> b!3520101 (=> (not res!1419606) (not e!2178829))))

(assert (=> b!3520101 (= res!1419606 (not lt!1201618))))

(declare-fun b!3520102 () Bool)

(declare-fun res!1419607 () Bool)

(assert (=> b!3520102 (=> (not res!1419607) (not e!2178827))))

(assert (=> b!3520102 (= res!1419607 (isEmpty!21792 (tail!5489 lt!1201278)))))

(declare-fun b!3520103 () Bool)

(assert (=> b!3520103 (= e!2178833 (nullable!3516 (regex!5474 lt!1201296)))))

(declare-fun b!3520104 () Bool)

(assert (=> b!3520104 (= e!2178828 (= lt!1201618 call!254320))))

(declare-fun b!3520105 () Bool)

(assert (=> b!3520105 (= e!2178831 (not lt!1201618))))

(declare-fun b!3520106 () Bool)

(assert (=> b!3520106 (= e!2178828 e!2178831)))

(declare-fun c!606688 () Bool)

(assert (=> b!3520106 (= c!606688 ((_ is EmptyLang!10233) (regex!5474 lt!1201296)))))

(declare-fun b!3520107 () Bool)

(declare-fun res!1419603 () Bool)

(assert (=> b!3520107 (=> res!1419603 e!2178832)))

(assert (=> b!3520107 (= res!1419603 e!2178827)))

(declare-fun res!1419609 () Bool)

(assert (=> b!3520107 (=> (not res!1419609) (not e!2178827))))

(assert (=> b!3520107 (= res!1419609 lt!1201618)))

(declare-fun b!3520108 () Bool)

(declare-fun res!1419604 () Bool)

(assert (=> b!3520108 (=> (not res!1419604) (not e!2178827))))

(assert (=> b!3520108 (= res!1419604 (not call!254320))))

(assert (= (and d!1026782 c!606686) b!3520103))

(assert (= (and d!1026782 (not c!606686)) b!3520096))

(assert (= (and d!1026782 c!606687) b!3520104))

(assert (= (and d!1026782 (not c!606687)) b!3520106))

(assert (= (and b!3520106 c!606688) b!3520105))

(assert (= (and b!3520106 (not c!606688)) b!3520095))

(assert (= (and b!3520095 (not res!1419602)) b!3520107))

(assert (= (and b!3520107 res!1419609) b!3520108))

(assert (= (and b!3520108 res!1419604) b!3520102))

(assert (= (and b!3520102 res!1419607) b!3520099))

(assert (= (and b!3520107 (not res!1419603)) b!3520101))

(assert (= (and b!3520101 res!1419606) b!3520100))

(assert (= (and b!3520100 (not res!1419608)) b!3520098))

(assert (= (and b!3520098 (not res!1419605)) b!3520097))

(assert (= (or b!3520104 b!3520100 b!3520108) bm!254315))

(declare-fun m!3969833 () Bool)

(assert (=> bm!254315 m!3969833))

(declare-fun m!3969835 () Bool)

(assert (=> b!3520098 m!3969835))

(assert (=> b!3520098 m!3969835))

(declare-fun m!3969837 () Bool)

(assert (=> b!3520098 m!3969837))

(assert (=> d!1026782 m!3969833))

(declare-fun m!3969839 () Bool)

(assert (=> d!1026782 m!3969839))

(assert (=> b!3520096 m!3968627))

(assert (=> b!3520096 m!3968627))

(declare-fun m!3969841 () Bool)

(assert (=> b!3520096 m!3969841))

(assert (=> b!3520096 m!3969835))

(assert (=> b!3520096 m!3969841))

(assert (=> b!3520096 m!3969835))

(declare-fun m!3969843 () Bool)

(assert (=> b!3520096 m!3969843))

(assert (=> b!3520097 m!3968627))

(assert (=> b!3520099 m!3968627))

(declare-fun m!3969845 () Bool)

(assert (=> b!3520103 m!3969845))

(assert (=> b!3520102 m!3969835))

(assert (=> b!3520102 m!3969835))

(assert (=> b!3520102 m!3969837))

(assert (=> b!3519436 d!1026782))

(declare-fun d!1026784 () Bool)

(assert (=> d!1026784 (= (get!11984 lt!1201292) (v!37090 lt!1201292))))

(assert (=> b!3519436 d!1026784))

(declare-fun d!1026786 () Bool)

(declare-fun res!1419614 () Bool)

(declare-fun e!2178838 () Bool)

(assert (=> d!1026786 (=> res!1419614 e!2178838)))

(assert (=> d!1026786 (= res!1419614 ((_ is Nil!37335) tokens!494))))

(assert (=> d!1026786 (= (forall!8025 tokens!494 lambda!122712) e!2178838)))

(declare-fun b!3520113 () Bool)

(declare-fun e!2178839 () Bool)

(assert (=> b!3520113 (= e!2178838 e!2178839)))

(declare-fun res!1419615 () Bool)

(assert (=> b!3520113 (=> (not res!1419615) (not e!2178839))))

(assert (=> b!3520113 (= res!1419615 (dynLambda!15898 lambda!122712 (h!42755 tokens!494)))))

(declare-fun b!3520114 () Bool)

(assert (=> b!3520114 (= e!2178839 (forall!8025 (t!281564 tokens!494) lambda!122712))))

(assert (= (and d!1026786 (not res!1419614)) b!3520113))

(assert (= (and b!3520113 res!1419615) b!3520114))

(declare-fun b_lambda!102685 () Bool)

(assert (=> (not b_lambda!102685) (not b!3520113)))

(assert (=> b!3520113 m!3969819))

(declare-fun m!3969847 () Bool)

(assert (=> b!3520114 m!3969847))

(assert (=> b!3519415 d!1026786))

(declare-fun b!3520115 () Bool)

(declare-fun e!2178842 () Bool)

(declare-fun e!2178840 () Bool)

(assert (=> b!3520115 (= e!2178842 e!2178840)))

(declare-fun c!606690 () Bool)

(assert (=> b!3520115 (= c!606690 ((_ is IntegerValue!17113) (value!176469 (h!42755 tokens!494))))))

(declare-fun b!3520116 () Bool)

(declare-fun res!1419616 () Bool)

(declare-fun e!2178841 () Bool)

(assert (=> b!3520116 (=> res!1419616 e!2178841)))

(assert (=> b!3520116 (= res!1419616 (not ((_ is IntegerValue!17114) (value!176469 (h!42755 tokens!494)))))))

(assert (=> b!3520116 (= e!2178840 e!2178841)))

(declare-fun b!3520117 () Bool)

(assert (=> b!3520117 (= e!2178840 (inv!17 (value!176469 (h!42755 tokens!494))))))

(declare-fun b!3520118 () Bool)

(assert (=> b!3520118 (= e!2178841 (inv!15 (value!176469 (h!42755 tokens!494))))))

(declare-fun d!1026788 () Bool)

(declare-fun c!606689 () Bool)

(assert (=> d!1026788 (= c!606689 ((_ is IntegerValue!17112) (value!176469 (h!42755 tokens!494))))))

(assert (=> d!1026788 (= (inv!21 (value!176469 (h!42755 tokens!494))) e!2178842)))

(declare-fun b!3520119 () Bool)

(assert (=> b!3520119 (= e!2178842 (inv!16 (value!176469 (h!42755 tokens!494))))))

(assert (= (and d!1026788 c!606689) b!3520119))

(assert (= (and d!1026788 (not c!606689)) b!3520115))

(assert (= (and b!3520115 c!606690) b!3520117))

(assert (= (and b!3520115 (not c!606690)) b!3520116))

(assert (= (and b!3520116 (not res!1419616)) b!3520118))

(declare-fun m!3969849 () Bool)

(assert (=> b!3520117 m!3969849))

(declare-fun m!3969851 () Bool)

(assert (=> b!3520118 m!3969851))

(declare-fun m!3969853 () Bool)

(assert (=> b!3520119 m!3969853))

(assert (=> b!3519397 d!1026788))

(declare-fun b!3520120 () Bool)

(declare-fun res!1419617 () Bool)

(declare-fun e!2178848 () Bool)

(assert (=> b!3520120 (=> res!1419617 e!2178848)))

(assert (=> b!3520120 (= res!1419617 (not ((_ is ElementMatch!10233) (regex!5474 lt!1201295))))))

(declare-fun e!2178847 () Bool)

(assert (=> b!3520120 (= e!2178847 e!2178848)))

(declare-fun d!1026790 () Bool)

(declare-fun e!2178844 () Bool)

(assert (=> d!1026790 e!2178844))

(declare-fun c!606692 () Bool)

(assert (=> d!1026790 (= c!606692 ((_ is EmptyExpr!10233) (regex!5474 lt!1201295)))))

(declare-fun lt!1201619 () Bool)

(declare-fun e!2178849 () Bool)

(assert (=> d!1026790 (= lt!1201619 e!2178849)))

(declare-fun c!606691 () Bool)

(assert (=> d!1026790 (= c!606691 (isEmpty!21792 lt!1201309))))

(assert (=> d!1026790 (validRegex!4672 (regex!5474 lt!1201295))))

(assert (=> d!1026790 (= (matchR!4817 (regex!5474 lt!1201295) lt!1201309) lt!1201619)))

(declare-fun bm!254316 () Bool)

(declare-fun call!254321 () Bool)

(assert (=> bm!254316 (= call!254321 (isEmpty!21792 lt!1201309))))

(declare-fun b!3520121 () Bool)

(assert (=> b!3520121 (= e!2178849 (matchR!4817 (derivativeStep!3069 (regex!5474 lt!1201295) (head!7381 lt!1201309)) (tail!5489 lt!1201309)))))

(declare-fun b!3520122 () Bool)

(declare-fun e!2178846 () Bool)

(assert (=> b!3520122 (= e!2178846 (not (= (head!7381 lt!1201309) (c!606536 (regex!5474 lt!1201295)))))))

(declare-fun b!3520123 () Bool)

(declare-fun res!1419620 () Bool)

(assert (=> b!3520123 (=> res!1419620 e!2178846)))

(assert (=> b!3520123 (= res!1419620 (not (isEmpty!21792 (tail!5489 lt!1201309))))))

(declare-fun b!3520124 () Bool)

(declare-fun e!2178843 () Bool)

(assert (=> b!3520124 (= e!2178843 (= (head!7381 lt!1201309) (c!606536 (regex!5474 lt!1201295))))))

(declare-fun b!3520125 () Bool)

(declare-fun e!2178845 () Bool)

(assert (=> b!3520125 (= e!2178845 e!2178846)))

(declare-fun res!1419623 () Bool)

(assert (=> b!3520125 (=> res!1419623 e!2178846)))

(assert (=> b!3520125 (= res!1419623 call!254321)))

(declare-fun b!3520126 () Bool)

(assert (=> b!3520126 (= e!2178848 e!2178845)))

(declare-fun res!1419621 () Bool)

(assert (=> b!3520126 (=> (not res!1419621) (not e!2178845))))

(assert (=> b!3520126 (= res!1419621 (not lt!1201619))))

(declare-fun b!3520127 () Bool)

(declare-fun res!1419622 () Bool)

(assert (=> b!3520127 (=> (not res!1419622) (not e!2178843))))

(assert (=> b!3520127 (= res!1419622 (isEmpty!21792 (tail!5489 lt!1201309)))))

(declare-fun b!3520128 () Bool)

(assert (=> b!3520128 (= e!2178849 (nullable!3516 (regex!5474 lt!1201295)))))

(declare-fun b!3520129 () Bool)

(assert (=> b!3520129 (= e!2178844 (= lt!1201619 call!254321))))

(declare-fun b!3520130 () Bool)

(assert (=> b!3520130 (= e!2178847 (not lt!1201619))))

(declare-fun b!3520131 () Bool)

(assert (=> b!3520131 (= e!2178844 e!2178847)))

(declare-fun c!606693 () Bool)

(assert (=> b!3520131 (= c!606693 ((_ is EmptyLang!10233) (regex!5474 lt!1201295)))))

(declare-fun b!3520132 () Bool)

(declare-fun res!1419618 () Bool)

(assert (=> b!3520132 (=> res!1419618 e!2178848)))

(assert (=> b!3520132 (= res!1419618 e!2178843)))

(declare-fun res!1419624 () Bool)

(assert (=> b!3520132 (=> (not res!1419624) (not e!2178843))))

(assert (=> b!3520132 (= res!1419624 lt!1201619)))

(declare-fun b!3520133 () Bool)

(declare-fun res!1419619 () Bool)

(assert (=> b!3520133 (=> (not res!1419619) (not e!2178843))))

(assert (=> b!3520133 (= res!1419619 (not call!254321))))

(assert (= (and d!1026790 c!606691) b!3520128))

(assert (= (and d!1026790 (not c!606691)) b!3520121))

(assert (= (and d!1026790 c!606692) b!3520129))

(assert (= (and d!1026790 (not c!606692)) b!3520131))

(assert (= (and b!3520131 c!606693) b!3520130))

(assert (= (and b!3520131 (not c!606693)) b!3520120))

(assert (= (and b!3520120 (not res!1419617)) b!3520132))

(assert (= (and b!3520132 res!1419624) b!3520133))

(assert (= (and b!3520133 res!1419619) b!3520127))

(assert (= (and b!3520127 res!1419622) b!3520124))

(assert (= (and b!3520132 (not res!1419618)) b!3520126))

(assert (= (and b!3520126 res!1419621) b!3520125))

(assert (= (and b!3520125 (not res!1419623)) b!3520123))

(assert (= (and b!3520123 (not res!1419620)) b!3520122))

(assert (= (or b!3520129 b!3520125 b!3520133) bm!254316))

(declare-fun m!3969855 () Bool)

(assert (=> bm!254316 m!3969855))

(declare-fun m!3969857 () Bool)

(assert (=> b!3520123 m!3969857))

(assert (=> b!3520123 m!3969857))

(declare-fun m!3969859 () Bool)

(assert (=> b!3520123 m!3969859))

(assert (=> d!1026790 m!3969855))

(declare-fun m!3969861 () Bool)

(assert (=> d!1026790 m!3969861))

(declare-fun m!3969863 () Bool)

(assert (=> b!3520121 m!3969863))

(assert (=> b!3520121 m!3969863))

(declare-fun m!3969865 () Bool)

(assert (=> b!3520121 m!3969865))

(assert (=> b!3520121 m!3969857))

(assert (=> b!3520121 m!3969865))

(assert (=> b!3520121 m!3969857))

(declare-fun m!3969867 () Bool)

(assert (=> b!3520121 m!3969867))

(assert (=> b!3520122 m!3969863))

(assert (=> b!3520124 m!3969863))

(declare-fun m!3969869 () Bool)

(assert (=> b!3520128 m!3969869))

(assert (=> b!3520127 m!3969857))

(assert (=> b!3520127 m!3969857))

(assert (=> b!3520127 m!3969859))

(assert (=> b!3519419 d!1026790))

(declare-fun d!1026792 () Bool)

(assert (=> d!1026792 (= (get!11984 lt!1201308) (v!37090 lt!1201308))))

(assert (=> b!3519419 d!1026792))

(declare-fun d!1026794 () Bool)

(declare-fun lt!1201620 () Token!10314)

(assert (=> d!1026794 (= lt!1201620 (apply!8890 (list!13656 (_1!21714 lt!1201300)) 0))))

(assert (=> d!1026794 (= lt!1201620 (apply!8893 (c!606538 (_1!21714 lt!1201300)) 0))))

(declare-fun e!2178850 () Bool)

(assert (=> d!1026794 e!2178850))

(declare-fun res!1419625 () Bool)

(assert (=> d!1026794 (=> (not res!1419625) (not e!2178850))))

(assert (=> d!1026794 (= res!1419625 (<= 0 0))))

(assert (=> d!1026794 (= (apply!8888 (_1!21714 lt!1201300) 0) lt!1201620)))

(declare-fun b!3520134 () Bool)

(assert (=> b!3520134 (= e!2178850 (< 0 (size!28401 (_1!21714 lt!1201300))))))

(assert (= (and d!1026794 res!1419625) b!3520134))

(assert (=> d!1026794 m!3969481))

(assert (=> d!1026794 m!3969481))

(declare-fun m!3969871 () Bool)

(assert (=> d!1026794 m!3969871))

(declare-fun m!3969873 () Bool)

(assert (=> d!1026794 m!3969873))

(assert (=> b!3520134 m!3968617))

(assert (=> b!3519417 d!1026794))

(declare-fun d!1026796 () Bool)

(declare-fun res!1419642 () Bool)

(declare-fun e!2178859 () Bool)

(assert (=> d!1026796 (=> (not res!1419642) (not e!2178859))))

(declare-fun rulesValid!2071 (LexerInterface!5063 List!37458) Bool)

(assert (=> d!1026796 (= res!1419642 (rulesValid!2071 thiss!18206 rules!2135))))

(assert (=> d!1026796 (= (rulesInvariant!4460 thiss!18206 rules!2135) e!2178859)))

(declare-fun b!3520155 () Bool)

(declare-datatypes ((List!37461 0))(
  ( (Nil!37337) (Cons!37337 (h!42757 String!41854) (t!281680 List!37461)) )
))
(declare-fun noDuplicateTag!2067 (LexerInterface!5063 List!37458 List!37461) Bool)

(assert (=> b!3520155 (= e!2178859 (noDuplicateTag!2067 thiss!18206 rules!2135 Nil!37337))))

(assert (= (and d!1026796 res!1419642) b!3520155))

(declare-fun m!3969875 () Bool)

(assert (=> d!1026796 m!3969875))

(declare-fun m!3969877 () Bool)

(assert (=> b!3520155 m!3969877))

(assert (=> b!3519421 d!1026796))

(declare-fun lt!1201633 () Bool)

(declare-fun d!1026798 () Bool)

(declare-fun isEmpty!21798 (List!37459) Bool)

(assert (=> d!1026798 (= lt!1201633 (isEmpty!21798 (list!13656 (_1!21714 (lex!2389 thiss!18206 rules!2135 lt!1201271)))))))

(declare-fun isEmpty!21799 (Conc!11324) Bool)

(assert (=> d!1026798 (= lt!1201633 (isEmpty!21799 (c!606538 (_1!21714 (lex!2389 thiss!18206 rules!2135 lt!1201271)))))))

(assert (=> d!1026798 (= (isEmpty!21787 (_1!21714 (lex!2389 thiss!18206 rules!2135 lt!1201271))) lt!1201633)))

(declare-fun bs!565245 () Bool)

(assert (= bs!565245 d!1026798))

(declare-fun m!3969879 () Bool)

(assert (=> bs!565245 m!3969879))

(assert (=> bs!565245 m!3969879))

(declare-fun m!3969881 () Bool)

(assert (=> bs!565245 m!3969881))

(declare-fun m!3969883 () Bool)

(assert (=> bs!565245 m!3969883))

(assert (=> b!3519400 d!1026798))

(declare-fun b!3520156 () Bool)

(declare-fun res!1419645 () Bool)

(declare-fun e!2178861 () Bool)

(assert (=> b!3520156 (=> (not res!1419645) (not e!2178861))))

(declare-fun lt!1201634 () tuple2!37160)

(assert (=> b!3520156 (= res!1419645 (= (list!13656 (_1!21714 lt!1201634)) (_1!21719 (lexList!1476 thiss!18206 rules!2135 (list!13653 lt!1201271)))))))

(declare-fun b!3520157 () Bool)

(declare-fun e!2178862 () Bool)

(declare-fun e!2178860 () Bool)

(assert (=> b!3520157 (= e!2178862 e!2178860)))

(declare-fun res!1419644 () Bool)

(assert (=> b!3520157 (= res!1419644 (< (size!28405 (_2!21714 lt!1201634)) (size!28405 lt!1201271)))))

(assert (=> b!3520157 (=> (not res!1419644) (not e!2178860))))

(declare-fun b!3520158 () Bool)

(assert (=> b!3520158 (= e!2178861 (= (list!13653 (_2!21714 lt!1201634)) (_2!21719 (lexList!1476 thiss!18206 rules!2135 (list!13653 lt!1201271)))))))

(declare-fun d!1026800 () Bool)

(assert (=> d!1026800 e!2178861))

(declare-fun res!1419643 () Bool)

(assert (=> d!1026800 (=> (not res!1419643) (not e!2178861))))

(assert (=> d!1026800 (= res!1419643 e!2178862)))

(declare-fun c!606696 () Bool)

(assert (=> d!1026800 (= c!606696 (> (size!28401 (_1!21714 lt!1201634)) 0))))

(assert (=> d!1026800 (= lt!1201634 (lexTailRecV2!1084 thiss!18206 rules!2135 lt!1201271 (BalanceConc!22261 Empty!11323) lt!1201271 (BalanceConc!22263 Empty!11324)))))

(assert (=> d!1026800 (= (lex!2389 thiss!18206 rules!2135 lt!1201271) lt!1201634)))

(declare-fun b!3520159 () Bool)

(assert (=> b!3520159 (= e!2178862 (= (_2!21714 lt!1201634) lt!1201271))))

(declare-fun b!3520160 () Bool)

(assert (=> b!3520160 (= e!2178860 (not (isEmpty!21787 (_1!21714 lt!1201634))))))

(assert (= (and d!1026800 c!606696) b!3520157))

(assert (= (and d!1026800 (not c!606696)) b!3520159))

(assert (= (and b!3520157 res!1419644) b!3520160))

(assert (= (and d!1026800 res!1419643) b!3520156))

(assert (= (and b!3520156 res!1419645) b!3520158))

(declare-fun m!3969885 () Bool)

(assert (=> b!3520158 m!3969885))

(declare-fun m!3969887 () Bool)

(assert (=> b!3520158 m!3969887))

(assert (=> b!3520158 m!3969887))

(declare-fun m!3969889 () Bool)

(assert (=> b!3520158 m!3969889))

(declare-fun m!3969891 () Bool)

(assert (=> b!3520160 m!3969891))

(declare-fun m!3969893 () Bool)

(assert (=> b!3520157 m!3969893))

(declare-fun m!3969895 () Bool)

(assert (=> b!3520157 m!3969895))

(declare-fun m!3969897 () Bool)

(assert (=> b!3520156 m!3969897))

(assert (=> b!3520156 m!3969887))

(assert (=> b!3520156 m!3969887))

(assert (=> b!3520156 m!3969889))

(declare-fun m!3969899 () Bool)

(assert (=> d!1026800 m!3969899))

(declare-fun m!3969901 () Bool)

(assert (=> d!1026800 m!3969901))

(assert (=> b!3519400 d!1026800))

(declare-fun d!1026802 () Bool)

(assert (=> d!1026802 (= (seqFromList!4001 lt!1201309) (fromListB!1837 lt!1201309))))

(declare-fun bs!565246 () Bool)

(assert (= bs!565246 d!1026802))

(declare-fun m!3969903 () Bool)

(assert (=> bs!565246 m!3969903))

(assert (=> b!3519400 d!1026802))

(declare-fun d!1026804 () Bool)

(assert (=> d!1026804 (= (inv!50563 (tag!6110 (rule!8116 separatorToken!241))) (= (mod (str.len (value!176468 (tag!6110 (rule!8116 separatorToken!241)))) 2) 0))))

(assert (=> b!3519398 d!1026804))

(declare-fun d!1026806 () Bool)

(declare-fun res!1419646 () Bool)

(declare-fun e!2178863 () Bool)

(assert (=> d!1026806 (=> (not res!1419646) (not e!2178863))))

(assert (=> d!1026806 (= res!1419646 (semiInverseModEq!2311 (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (toValue!7726 (transformation!5474 (rule!8116 separatorToken!241)))))))

(assert (=> d!1026806 (= (inv!50566 (transformation!5474 (rule!8116 separatorToken!241))) e!2178863)))

(declare-fun b!3520161 () Bool)

(assert (=> b!3520161 (= e!2178863 (equivClasses!2210 (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (toValue!7726 (transformation!5474 (rule!8116 separatorToken!241)))))))

(assert (= (and d!1026806 res!1419646) b!3520161))

(declare-fun m!3969905 () Bool)

(assert (=> d!1026806 m!3969905))

(declare-fun m!3969907 () Bool)

(assert (=> b!3520161 m!3969907))

(assert (=> b!3519398 d!1026806))

(declare-fun bs!565262 () Bool)

(declare-fun d!1026808 () Bool)

(assert (= bs!565262 (and d!1026808 b!3519415)))

(declare-fun lambda!122723 () Int)

(assert (=> bs!565262 (not (= lambda!122723 lambda!122712))))

(declare-fun bs!565263 () Bool)

(assert (= bs!565263 (and d!1026808 b!3519432)))

(assert (=> bs!565263 (= lambda!122723 lambda!122713)))

(declare-fun b!3520408 () Bool)

(declare-fun e!2179025 () Bool)

(assert (=> b!3520408 (= e!2179025 true)))

(declare-fun b!3520407 () Bool)

(declare-fun e!2179024 () Bool)

(assert (=> b!3520407 (= e!2179024 e!2179025)))

(declare-fun b!3520406 () Bool)

(declare-fun e!2179023 () Bool)

(assert (=> b!3520406 (= e!2179023 e!2179024)))

(assert (=> d!1026808 e!2179023))

(assert (= b!3520407 b!3520408))

(assert (= b!3520406 b!3520407))

(assert (= (and d!1026808 ((_ is Cons!37334) rules!2135)) b!3520406))

(assert (=> b!3520408 (< (dynLambda!15892 order!20073 (toValue!7726 (transformation!5474 (h!42754 rules!2135)))) (dynLambda!15893 order!20075 lambda!122723))))

(assert (=> b!3520408 (< (dynLambda!15894 order!20077 (toChars!7585 (transformation!5474 (h!42754 rules!2135)))) (dynLambda!15893 order!20075 lambda!122723))))

(assert (=> d!1026808 true))

(declare-fun e!2179022 () Bool)

(assert (=> d!1026808 e!2179022))

(declare-fun res!1419744 () Bool)

(assert (=> d!1026808 (=> (not res!1419744) (not e!2179022))))

(declare-fun lt!1201684 () Bool)

(assert (=> d!1026808 (= res!1419744 (= lt!1201684 (forall!8025 (list!13656 (seqFromList!4002 tokens!494)) lambda!122723)))))

(declare-fun forall!8027 (BalanceConc!22262 Int) Bool)

(assert (=> d!1026808 (= lt!1201684 (forall!8027 (seqFromList!4002 tokens!494) lambda!122723))))

(assert (=> d!1026808 (not (isEmpty!21789 rules!2135))))

(assert (=> d!1026808 (= (rulesProduceEachTokenIndividually!1514 thiss!18206 rules!2135 (seqFromList!4002 tokens!494)) lt!1201684)))

(declare-fun b!3520405 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1883 (LexerInterface!5063 List!37458 List!37459) Bool)

(assert (=> b!3520405 (= e!2179022 (= lt!1201684 (rulesProduceEachTokenIndividuallyList!1883 thiss!18206 rules!2135 (list!13656 (seqFromList!4002 tokens!494)))))))

(assert (= (and d!1026808 res!1419744) b!3520405))

(assert (=> d!1026808 m!3968597))

(declare-fun m!3970293 () Bool)

(assert (=> d!1026808 m!3970293))

(assert (=> d!1026808 m!3970293))

(declare-fun m!3970295 () Bool)

(assert (=> d!1026808 m!3970295))

(assert (=> d!1026808 m!3968597))

(declare-fun m!3970297 () Bool)

(assert (=> d!1026808 m!3970297))

(assert (=> d!1026808 m!3968535))

(assert (=> b!3520405 m!3968597))

(assert (=> b!3520405 m!3970293))

(assert (=> b!3520405 m!3970293))

(declare-fun m!3970299 () Bool)

(assert (=> b!3520405 m!3970299))

(assert (=> b!3519420 d!1026808))

(declare-fun d!1026920 () Bool)

(declare-fun fromListB!1839 (List!37459) BalanceConc!22262)

(assert (=> d!1026920 (= (seqFromList!4002 tokens!494) (fromListB!1839 tokens!494))))

(declare-fun bs!565264 () Bool)

(assert (= bs!565264 d!1026920))

(declare-fun m!3970301 () Bool)

(assert (=> bs!565264 m!3970301))

(assert (=> b!3519420 d!1026920))

(declare-fun d!1026922 () Bool)

(declare-fun res!1419745 () Bool)

(declare-fun e!2179026 () Bool)

(assert (=> d!1026922 (=> (not res!1419745) (not e!2179026))))

(assert (=> d!1026922 (= res!1419745 (not (isEmpty!21792 (originalCharacters!6188 (h!42755 tokens!494)))))))

(assert (=> d!1026922 (= (inv!50567 (h!42755 tokens!494)) e!2179026)))

(declare-fun b!3520409 () Bool)

(declare-fun res!1419746 () Bool)

(assert (=> b!3520409 (=> (not res!1419746) (not e!2179026))))

(assert (=> b!3520409 (= res!1419746 (= (originalCharacters!6188 (h!42755 tokens!494)) (list!13653 (dynLambda!15896 (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (value!176469 (h!42755 tokens!494))))))))

(declare-fun b!3520410 () Bool)

(assert (=> b!3520410 (= e!2179026 (= (size!28399 (h!42755 tokens!494)) (size!28400 (originalCharacters!6188 (h!42755 tokens!494)))))))

(assert (= (and d!1026922 res!1419745) b!3520409))

(assert (= (and b!3520409 res!1419746) b!3520410))

(declare-fun b_lambda!102723 () Bool)

(assert (=> (not b_lambda!102723) (not b!3520409)))

(assert (=> b!3520409 t!281566))

(declare-fun b_and!250701 () Bool)

(assert (= b_and!250669 (and (=> t!281566 result!240844) b_and!250701)))

(assert (=> b!3520409 t!281568))

(declare-fun b_and!250703 () Bool)

(assert (= b_and!250671 (and (=> t!281568 result!240848) b_and!250703)))

(assert (=> b!3520409 t!281570))

(declare-fun b_and!250705 () Bool)

(assert (= b_and!250673 (and (=> t!281570 result!240850) b_and!250705)))

(declare-fun m!3970303 () Bool)

(assert (=> d!1026922 m!3970303))

(assert (=> b!3520409 m!3968755))

(assert (=> b!3520409 m!3968755))

(declare-fun m!3970305 () Bool)

(assert (=> b!3520409 m!3970305))

(declare-fun m!3970307 () Bool)

(assert (=> b!3520410 m!3970307))

(assert (=> b!3519399 d!1026922))

(declare-fun b!3520421 () Bool)

(declare-fun b_free!90709 () Bool)

(declare-fun b_next!91413 () Bool)

(assert (=> b!3520421 (= b_free!90709 (not b_next!91413))))

(declare-fun t!281661 () Bool)

(declare-fun tb!196599 () Bool)

(assert (=> (and b!3520421 (= (toValue!7726 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281661) tb!196599))

(declare-fun result!240942 () Bool)

(assert (= result!240942 result!240860))

(assert (=> d!1026600 t!281661))

(declare-fun t!281663 () Bool)

(declare-fun tb!196601 () Bool)

(assert (=> (and b!3520421 (= (toValue!7726 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281663) tb!196601))

(declare-fun result!240944 () Bool)

(assert (= result!240944 result!240868))

(assert (=> d!1026704 t!281663))

(declare-fun tp!1086835 () Bool)

(declare-fun b_and!250707 () Bool)

(assert (=> b!3520421 (= tp!1086835 (and (=> t!281661 result!240942) (=> t!281663 result!240944) b_and!250707))))

(declare-fun b_free!90711 () Bool)

(declare-fun b_next!91415 () Bool)

(assert (=> b!3520421 (= b_free!90711 (not b_next!91415))))

(declare-fun tb!196603 () Bool)

(declare-fun t!281665 () Bool)

(assert (=> (and b!3520421 (= (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281665) tb!196603))

(declare-fun result!240946 () Bool)

(assert (= result!240946 result!240894))

(assert (=> d!1026770 t!281665))

(declare-fun tb!196605 () Bool)

(declare-fun t!281667 () Bool)

(assert (=> (and b!3520421 (= (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281667) tb!196605))

(declare-fun result!240948 () Bool)

(assert (= result!240948 result!240844))

(assert (=> d!1026522 t!281667))

(assert (=> b!3520409 t!281667))

(declare-fun tb!196607 () Bool)

(declare-fun t!281669 () Bool)

(assert (=> (and b!3520421 (= (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241)))) t!281669) tb!196607))

(declare-fun result!240950 () Bool)

(assert (= result!240950 result!240888))

(assert (=> d!1026754 t!281669))

(assert (=> b!3520077 t!281669))

(declare-fun b_and!250709 () Bool)

(declare-fun tp!1086836 () Bool)

(assert (=> b!3520421 (= tp!1086836 (and (=> t!281667 result!240948) (=> t!281665 result!240946) (=> t!281669 result!240950) b_and!250709))))

(declare-fun e!2179036 () Bool)

(assert (=> b!3520421 (= e!2179036 (and tp!1086835 tp!1086836))))

(declare-fun e!2179035 () Bool)

(declare-fun tp!1086834 () Bool)

(declare-fun b!3520420 () Bool)

(assert (=> b!3520420 (= e!2179035 (and tp!1086834 (inv!50563 (tag!6110 (h!42754 (t!281563 rules!2135)))) (inv!50566 (transformation!5474 (h!42754 (t!281563 rules!2135)))) e!2179036))))

(declare-fun b!3520419 () Bool)

(declare-fun e!2179038 () Bool)

(declare-fun tp!1086833 () Bool)

(assert (=> b!3520419 (= e!2179038 (and e!2179035 tp!1086833))))

(assert (=> b!3519434 (= tp!1086750 e!2179038)))

(assert (= b!3520420 b!3520421))

(assert (= b!3520419 b!3520420))

(assert (= (and b!3519434 ((_ is Cons!37334) (t!281563 rules!2135))) b!3520419))

(declare-fun m!3970309 () Bool)

(assert (=> b!3520420 m!3970309))

(declare-fun m!3970311 () Bool)

(assert (=> b!3520420 m!3970311))

(declare-fun b!3520432 () Bool)

(declare-fun e!2179041 () Bool)

(declare-fun tp_is_empty!17613 () Bool)

(assert (=> b!3520432 (= e!2179041 tp_is_empty!17613)))

(declare-fun b!3520435 () Bool)

(declare-fun tp!1086850 () Bool)

(declare-fun tp!1086849 () Bool)

(assert (=> b!3520435 (= e!2179041 (and tp!1086850 tp!1086849))))

(declare-fun b!3520433 () Bool)

(declare-fun tp!1086847 () Bool)

(declare-fun tp!1086848 () Bool)

(assert (=> b!3520433 (= e!2179041 (and tp!1086847 tp!1086848))))

(declare-fun b!3520434 () Bool)

(declare-fun tp!1086851 () Bool)

(assert (=> b!3520434 (= e!2179041 tp!1086851)))

(assert (=> b!3519425 (= tp!1086748 e!2179041)))

(assert (= (and b!3519425 ((_ is ElementMatch!10233) (regex!5474 (h!42754 rules!2135)))) b!3520432))

(assert (= (and b!3519425 ((_ is Concat!15937) (regex!5474 (h!42754 rules!2135)))) b!3520433))

(assert (= (and b!3519425 ((_ is Star!10233) (regex!5474 (h!42754 rules!2135)))) b!3520434))

(assert (= (and b!3519425 ((_ is Union!10233) (regex!5474 (h!42754 rules!2135)))) b!3520435))

(declare-fun b!3520436 () Bool)

(declare-fun e!2179042 () Bool)

(assert (=> b!3520436 (= e!2179042 tp_is_empty!17613)))

(declare-fun b!3520439 () Bool)

(declare-fun tp!1086855 () Bool)

(declare-fun tp!1086854 () Bool)

(assert (=> b!3520439 (= e!2179042 (and tp!1086855 tp!1086854))))

(declare-fun b!3520437 () Bool)

(declare-fun tp!1086852 () Bool)

(declare-fun tp!1086853 () Bool)

(assert (=> b!3520437 (= e!2179042 (and tp!1086852 tp!1086853))))

(declare-fun b!3520438 () Bool)

(declare-fun tp!1086856 () Bool)

(assert (=> b!3520438 (= e!2179042 tp!1086856)))

(assert (=> b!3519404 (= tp!1086749 e!2179042)))

(assert (= (and b!3519404 ((_ is ElementMatch!10233) (regex!5474 (rule!8116 (h!42755 tokens!494))))) b!3520436))

(assert (= (and b!3519404 ((_ is Concat!15937) (regex!5474 (rule!8116 (h!42755 tokens!494))))) b!3520437))

(assert (= (and b!3519404 ((_ is Star!10233) (regex!5474 (rule!8116 (h!42755 tokens!494))))) b!3520438))

(assert (= (and b!3519404 ((_ is Union!10233) (regex!5474 (rule!8116 (h!42755 tokens!494))))) b!3520439))

(declare-fun b!3520444 () Bool)

(declare-fun e!2179045 () Bool)

(declare-fun tp!1086859 () Bool)

(assert (=> b!3520444 (= e!2179045 (and tp_is_empty!17613 tp!1086859))))

(assert (=> b!3519397 (= tp!1086754 e!2179045)))

(assert (= (and b!3519397 ((_ is Cons!37333) (originalCharacters!6188 (h!42755 tokens!494)))) b!3520444))

(declare-fun b!3520447 () Bool)

(declare-fun e!2179048 () Bool)

(assert (=> b!3520447 (= e!2179048 true)))

(declare-fun b!3520446 () Bool)

(declare-fun e!2179047 () Bool)

(assert (=> b!3520446 (= e!2179047 e!2179048)))

(declare-fun b!3520445 () Bool)

(declare-fun e!2179046 () Bool)

(assert (=> b!3520445 (= e!2179046 e!2179047)))

(assert (=> b!3519446 e!2179046))

(assert (= b!3520446 b!3520447))

(assert (= b!3520445 b!3520446))

(assert (= (and b!3519446 ((_ is Cons!37334) (t!281563 rules!2135))) b!3520445))

(assert (=> b!3520447 (< (dynLambda!15892 order!20073 (toValue!7726 (transformation!5474 (h!42754 (t!281563 rules!2135))))) (dynLambda!15893 order!20075 lambda!122713))))

(assert (=> b!3520447 (< (dynLambda!15894 order!20077 (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135))))) (dynLambda!15893 order!20075 lambda!122713))))

(declare-fun b!3520448 () Bool)

(declare-fun e!2179049 () Bool)

(assert (=> b!3520448 (= e!2179049 tp_is_empty!17613)))

(declare-fun b!3520451 () Bool)

(declare-fun tp!1086863 () Bool)

(declare-fun tp!1086862 () Bool)

(assert (=> b!3520451 (= e!2179049 (and tp!1086863 tp!1086862))))

(declare-fun b!3520449 () Bool)

(declare-fun tp!1086860 () Bool)

(declare-fun tp!1086861 () Bool)

(assert (=> b!3520449 (= e!2179049 (and tp!1086860 tp!1086861))))

(declare-fun b!3520450 () Bool)

(declare-fun tp!1086864 () Bool)

(assert (=> b!3520450 (= e!2179049 tp!1086864)))

(assert (=> b!3519398 (= tp!1086751 e!2179049)))

(assert (= (and b!3519398 ((_ is ElementMatch!10233) (regex!5474 (rule!8116 separatorToken!241)))) b!3520448))

(assert (= (and b!3519398 ((_ is Concat!15937) (regex!5474 (rule!8116 separatorToken!241)))) b!3520449))

(assert (= (and b!3519398 ((_ is Star!10233) (regex!5474 (rule!8116 separatorToken!241)))) b!3520450))

(assert (= (and b!3519398 ((_ is Union!10233) (regex!5474 (rule!8116 separatorToken!241)))) b!3520451))

(declare-fun b!3520452 () Bool)

(declare-fun e!2179050 () Bool)

(declare-fun tp!1086865 () Bool)

(assert (=> b!3520452 (= e!2179050 (and tp_is_empty!17613 tp!1086865))))

(assert (=> b!3519409 (= tp!1086753 e!2179050)))

(assert (= (and b!3519409 ((_ is Cons!37333) (originalCharacters!6188 separatorToken!241))) b!3520452))

(declare-fun b!3520466 () Bool)

(declare-fun b_free!90713 () Bool)

(declare-fun b_next!91417 () Bool)

(assert (=> b!3520466 (= b_free!90713 (not b_next!91417))))

(declare-fun t!281671 () Bool)

(declare-fun tb!196609 () Bool)

(assert (=> (and b!3520466 (= (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281671) tb!196609))

(declare-fun result!240958 () Bool)

(assert (= result!240958 result!240860))

(assert (=> d!1026600 t!281671))

(declare-fun t!281673 () Bool)

(declare-fun tb!196611 () Bool)

(assert (=> (and b!3520466 (= (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281673) tb!196611))

(declare-fun result!240960 () Bool)

(assert (= result!240960 result!240868))

(assert (=> d!1026704 t!281673))

(declare-fun tp!1086880 () Bool)

(declare-fun b_and!250711 () Bool)

(assert (=> b!3520466 (= tp!1086880 (and (=> t!281671 result!240958) (=> t!281673 result!240960) b_and!250711))))

(declare-fun b_free!90715 () Bool)

(declare-fun b_next!91419 () Bool)

(assert (=> b!3520466 (= b_free!90715 (not b_next!91419))))

(declare-fun t!281675 () Bool)

(declare-fun tb!196613 () Bool)

(assert (=> (and b!3520466 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494)))))) t!281675) tb!196613))

(declare-fun result!240962 () Bool)

(assert (= result!240962 result!240894))

(assert (=> d!1026770 t!281675))

(declare-fun t!281677 () Bool)

(declare-fun tb!196615 () Bool)

(assert (=> (and b!3520466 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494))))) t!281677) tb!196615))

(declare-fun result!240964 () Bool)

(assert (= result!240964 result!240844))

(assert (=> d!1026522 t!281677))

(assert (=> b!3520409 t!281677))

(declare-fun t!281679 () Bool)

(declare-fun tb!196617 () Bool)

(assert (=> (and b!3520466 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241)))) t!281679) tb!196617))

(declare-fun result!240966 () Bool)

(assert (= result!240966 result!240888))

(assert (=> d!1026754 t!281679))

(assert (=> b!3520077 t!281679))

(declare-fun tp!1086879 () Bool)

(declare-fun b_and!250713 () Bool)

(assert (=> b!3520466 (= tp!1086879 (and (=> t!281679 result!240966) (=> t!281675 result!240962) (=> t!281677 result!240964) b_and!250713))))

(declare-fun b!3520464 () Bool)

(declare-fun e!2179068 () Bool)

(declare-fun e!2179067 () Bool)

(declare-fun tp!1086878 () Bool)

(assert (=> b!3520464 (= e!2179067 (and (inv!21 (value!176469 (h!42755 (t!281564 tokens!494)))) e!2179068 tp!1086878))))

(declare-fun e!2179065 () Bool)

(assert (=> b!3520466 (= e!2179065 (and tp!1086880 tp!1086879))))

(declare-fun tp!1086877 () Bool)

(declare-fun b!3520465 () Bool)

(assert (=> b!3520465 (= e!2179068 (and tp!1086877 (inv!50563 (tag!6110 (rule!8116 (h!42755 (t!281564 tokens!494))))) (inv!50566 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) e!2179065))))

(declare-fun e!2179063 () Bool)

(assert (=> b!3519399 (= tp!1086756 e!2179063)))

(declare-fun tp!1086876 () Bool)

(declare-fun b!3520463 () Bool)

(assert (=> b!3520463 (= e!2179063 (and (inv!50567 (h!42755 (t!281564 tokens!494))) e!2179067 tp!1086876))))

(assert (= b!3520465 b!3520466))

(assert (= b!3520464 b!3520465))

(assert (= b!3520463 b!3520464))

(assert (= (and b!3519399 ((_ is Cons!37335) (t!281564 tokens!494))) b!3520463))

(declare-fun m!3970313 () Bool)

(assert (=> b!3520464 m!3970313))

(declare-fun m!3970315 () Bool)

(assert (=> b!3520465 m!3970315))

(declare-fun m!3970317 () Bool)

(assert (=> b!3520465 m!3970317))

(declare-fun m!3970319 () Bool)

(assert (=> b!3520463 m!3970319))

(declare-fun b_lambda!102725 () Bool)

(assert (= b_lambda!102659 (or (and b!3519424 b_free!90699) (and b!3520466 b_free!90715 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3519407 b_free!90691 (= (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3520421 b_free!90711 (= (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3519431 b_free!90695 (= (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) b_lambda!102725)))

(declare-fun b_lambda!102727 () Bool)

(assert (= b_lambda!102677 (or (and b!3519424 b_free!90699 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))) (and b!3519407 b_free!90691 (= (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))) (and b!3520421 b_free!90711 (= (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))) (and b!3520466 b_free!90715) (and b!3519431 b_free!90695 (= (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))) b_lambda!102727)))

(declare-fun b_lambda!102729 () Bool)

(assert (= b_lambda!102679 (or (and b!3520466 b_free!90715 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))))) (and b!3519407 b_free!90691) (and b!3519424 b_free!90699 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))))) (and b!3520421 b_free!90711 (= (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))))) (and b!3519431 b_free!90695 (= (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))))) b_lambda!102729)))

(declare-fun b_lambda!102731 () Bool)

(assert (= b_lambda!102667 (or b!3519432 b_lambda!102731)))

(declare-fun bs!565265 () Bool)

(declare-fun d!1026924 () Bool)

(assert (= bs!565265 (and d!1026924 b!3519432)))

(assert (=> bs!565265 (= (dynLambda!15898 lambda!122713 (h!42755 (t!281564 tokens!494))) (rulesProduceIndividualToken!2555 thiss!18206 rules!2135 (h!42755 (t!281564 tokens!494))))))

(assert (=> bs!565265 m!3968659))

(assert (=> d!1026640 d!1026924))

(declare-fun b_lambda!102733 () Bool)

(assert (= b_lambda!102681 (or b!3519415 b_lambda!102733)))

(declare-fun bs!565266 () Bool)

(declare-fun d!1026926 () Bool)

(assert (= bs!565266 (and d!1026926 b!3519415)))

(assert (=> bs!565266 (= (dynLambda!15898 lambda!122712 (h!42755 (t!281564 tokens!494))) (not (isSeparator!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))))

(assert (=> d!1026774 d!1026926))

(declare-fun b_lambda!102735 () Bool)

(assert (= b_lambda!102723 (or (and b!3519424 b_free!90699) (and b!3520466 b_free!90715 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3519407 b_free!90691 (= (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3520421 b_free!90711 (= (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3519431 b_free!90695 (= (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) b_lambda!102735)))

(declare-fun b_lambda!102737 () Bool)

(assert (= b_lambda!102683 (or b!3519415 b_lambda!102737)))

(declare-fun bs!565267 () Bool)

(declare-fun d!1026928 () Bool)

(assert (= bs!565267 (and d!1026928 b!3519415)))

(assert (=> bs!565267 (= (dynLambda!15898 lambda!122712 (h!42755 tokens!494)) (not (isSeparator!5474 (rule!8116 (h!42755 tokens!494)))))))

(assert (=> d!1026776 d!1026928))

(declare-fun b_lambda!102739 () Bool)

(assert (= b_lambda!102669 (or (and b!3520466 b_free!90713 (= (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3519407 b_free!90689 (= (toValue!7726 (transformation!5474 (rule!8116 separatorToken!241))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3519424 b_free!90697) (and b!3519431 b_free!90693 (= (toValue!7726 (transformation!5474 (h!42754 rules!2135))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) (and b!3520421 b_free!90709 (= (toValue!7726 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))))) b_lambda!102739)))

(declare-fun b_lambda!102741 () Bool)

(assert (= b_lambda!102675 (or (and b!3520466 b_free!90715 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))))) (and b!3519407 b_free!90691) (and b!3519424 b_free!90699 (= (toChars!7585 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))))) (and b!3520421 b_free!90711 (= (toChars!7585 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))))) (and b!3519431 b_free!90695 (= (toChars!7585 (transformation!5474 (h!42754 rules!2135))) (toChars!7585 (transformation!5474 (rule!8116 separatorToken!241))))) b_lambda!102741)))

(declare-fun b_lambda!102743 () Bool)

(assert (= b_lambda!102665 (or (and b!3519424 b_free!90697 (= (toValue!7726 (transformation!5474 (rule!8116 (h!42755 tokens!494)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))) (and b!3520466 b_free!90713) (and b!3520421 b_free!90709 (= (toValue!7726 (transformation!5474 (h!42754 (t!281563 rules!2135)))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))) (and b!3519431 b_free!90693 (= (toValue!7726 (transformation!5474 (h!42754 rules!2135))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))) (and b!3519407 b_free!90689 (= (toValue!7726 (transformation!5474 (rule!8116 separatorToken!241))) (toValue!7726 (transformation!5474 (rule!8116 (h!42755 (t!281564 tokens!494))))))) b_lambda!102743)))

(declare-fun b_lambda!102745 () Bool)

(assert (= b_lambda!102685 (or b!3519415 b_lambda!102745)))

(assert (=> b!3520113 d!1026928))

(check-sat (not d!1026692) (not b!3519759) (not b!3519924) (not b!3520450) (not b!3519847) b_and!250705 (not bm!254309) b_and!250643 (not d!1026522) (not b!3519907) (not b!3519612) (not b!3519921) (not d!1026698) (not b!3519925) (not b!3519726) (not b!3520066) (not d!1026758) (not d!1026556) (not b!3520128) (not b!3519582) (not bm!254267) (not b!3520088) (not b!3520463) (not tb!196555) (not b!3519585) (not b!3519580) (not b!3519734) (not b_lambda!102743) b_and!250703 (not b!3519475) (not b!3520134) (not b!3520406) (not b!3520080) (not d!1026640) (not b!3519524) (not b!3519911) (not d!1026580) (not b_lambda!102733) (not d!1026760) (not b!3520158) (not b!3520099) (not b!3519766) (not bm!254314) (not b!3520089) (not b!3520098) (not d!1026602) (not b_lambda!102731) (not b!3519743) (not d!1026778) (not b!3519765) (not d!1026776) b_and!250713 (not b!3519611) (not b!3519617) (not b!3519728) (not b!3520124) (not b_next!91417) (not b!3520449) (not b!3519618) (not b!3520084) (not b!3519723) (not b!3519733) (not b!3520050) (not tb!196537) (not b_lambda!102729) (not b!3520070) (not bm!254268) (not b!3520156) b_and!250639 (not d!1026768) (not b!3519610) (not b!3519957) (not b!3519862) (not b!3519616) (not b!3520103) (not b!3519846) (not b!3519767) (not d!1026684) (not b!3520078) (not b!3520161) (not b!3519657) (not b!3520439) (not b!3520437) (not d!1026748) (not b_next!91395) (not b_lambda!102745) (not b!3519956) (not b!3519720) (not d!1026616) (not b!3520077) (not bs!565265) (not b!3520119) (not bm!254300) (not b!3519905) tp_is_empty!17613 (not bm!254284) (not b!3520419) (not b!3520019) (not d!1026662) (not d!1026668) (not bm!254302) (not b!3520068) (not b!3520041) (not d!1026628) (not b!3519721) (not b!3519771) (not tb!196519) (not b!3520451) (not b!3519762) (not b_lambda!102741) (not b!3520155) (not d!1026700) (not d!1026654) (not b!3520079) (not d!1026800) (not b!3520056) (not b!3520123) (not b!3520082) (not b!3519527) (not b!3519761) (not d!1026658) (not d!1026554) (not b!3519867) (not b!3519741) (not b!3519659) (not b_lambda!102737) (not b!3519922) (not d!1026678) (not d!1026674) (not b!3519528) (not d!1026796) (not d!1026682) (not b!3519619) (not b!3519663) (not d!1026708) (not b!3520021) (not d!1026642) (not b!3520420) (not d!1026744) (not b!3520102) b_and!250641 (not b!3519909) (not b!3519727) (not d!1026706) (not d!1026534) (not bm!254315) (not d!1026688) (not b!3520121) (not b!3520059) (not d!1026922) (not d!1026530) (not b!3520097) (not b!3519596) (not b!3520410) (not b!3520053) (not b!3519590) (not b!3519904) (not b_next!91403) (not d!1026586) (not d!1026752) (not b!3520409) (not b!3519664) (not d!1026754) (not b_next!91399) (not b!3520122) (not b_next!91397) (not b!3519695) (not d!1026712) (not bm!254286) (not d!1026920) (not b_lambda!102735) (not d!1026566) (not d!1026582) (not tb!196561) (not d!1026794) (not b!3519615) (not bm!254283) (not b!3519770) (not b!3519923) (not d!1026622) (not b!3519622) (not b!3519760) (not b_next!91419) (not b_lambda!102739) b_and!250707 (not b!3520452) (not d!1026560) (not d!1026798) (not b!3519940) (not b!3519773) (not d!1026564) (not bm!254303) (not b!3520445) (not b_next!91413) (not d!1026574) (not b!3520157) (not b!3520114) (not b!3520433) (not b!3519523) (not d!1026802) (not d!1026772) (not b_next!91393) (not d!1026588) (not b!3519856) (not b!3519908) (not b!3519485) (not b!3519700) (not b!3520083) (not d!1026626) (not d!1026790) (not d!1026756) (not b_next!91415) (not d!1026646) (not b_lambda!102727) (not b!3520127) (not d!1026634) (not bm!254274) (not b!3520435) (not b!3520025) (not b!3519903) (not b!3520060) (not b!3520405) (not b!3519942) (not b!3519670) (not d!1026614) (not bm!254304) (not b!3519696) (not b!3519928) (not b!3519866) (not b!3519697) (not b!3520160) (not b!3519868) (not b!3520465) (not b!3519848) (not b!3519656) (not d!1026770) (not d!1026676) (not d!1026808) (not b!3519701) (not b!3519660) (not b!3519955) (not b!3519926) (not tb!196531) (not b!3520118) (not d!1026624) (not b!3519941) (not d!1026694) (not b!3519763) (not bm!254306) (not d!1026578) (not b!3520026) (not d!1026520) b_and!250711 (not b!3520051) (not b!3520022) (not d!1026618) (not d!1026782) b_and!250709 (not b!3520464) (not d!1026666) (not d!1026806) (not b!3520434) (not d!1026532) (not d!1026720) (not b!3519722) (not b!3520117) (not b!3519597) (not b!3520020) (not bm!254299) (not b_next!91401) (not b!3520085) (not b!3520444) (not bm!254316) (not d!1026774) (not b!3520096) (not d!1026680) (not b!3520055) (not b_lambda!102725) (not b!3519658) (not b!3520438) (not b!3519724) b_and!250701 (not d!1026638) (not d!1026690) (not b!3520072) (not d!1026610) (not b!3519661) (not b!3520042))
(check-sat b_and!250703 b_and!250639 (not b_next!91395) b_and!250641 (not b_next!91403) (not b_next!91419) b_and!250707 (not b_next!91413) (not b_next!91393) (not b_next!91415) (not b_next!91401) b_and!250701 b_and!250705 b_and!250643 b_and!250713 (not b_next!91417) (not b_next!91399) (not b_next!91397) b_and!250711 b_and!250709)
