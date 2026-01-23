; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42426 () Bool)

(assert start!42426)

(declare-fun b!449448 () Bool)

(declare-fun b_free!12457 () Bool)

(declare-fun b_next!12457 () Bool)

(assert (=> b!449448 (= b_free!12457 (not b_next!12457))))

(declare-fun tp!125415 () Bool)

(declare-fun b_and!48401 () Bool)

(assert (=> b!449448 (= tp!125415 b_and!48401)))

(declare-fun b_free!12459 () Bool)

(declare-fun b_next!12459 () Bool)

(assert (=> b!449448 (= b_free!12459 (not b_next!12459))))

(declare-fun tp!125405 () Bool)

(declare-fun b_and!48403 () Bool)

(assert (=> b!449448 (= tp!125405 b_and!48403)))

(declare-fun b!449445 () Bool)

(declare-fun b_free!12461 () Bool)

(declare-fun b_next!12461 () Bool)

(assert (=> b!449445 (= b_free!12461 (not b_next!12461))))

(declare-fun tp!125410 () Bool)

(declare-fun b_and!48405 () Bool)

(assert (=> b!449445 (= tp!125410 b_and!48405)))

(declare-fun b_free!12463 () Bool)

(declare-fun b_next!12463 () Bool)

(assert (=> b!449445 (= b_free!12463 (not b_next!12463))))

(declare-fun tp!125404 () Bool)

(declare-fun b_and!48407 () Bool)

(assert (=> b!449445 (= tp!125404 b_and!48407)))

(declare-fun b!449451 () Bool)

(declare-fun b_free!12465 () Bool)

(declare-fun b_next!12465 () Bool)

(assert (=> b!449451 (= b_free!12465 (not b_next!12465))))

(declare-fun tp!125413 () Bool)

(declare-fun b_and!48409 () Bool)

(assert (=> b!449451 (= tp!125413 b_and!48409)))

(declare-fun b_free!12467 () Bool)

(declare-fun b_next!12467 () Bool)

(assert (=> b!449451 (= b_free!12467 (not b_next!12467))))

(declare-fun tp!125414 () Bool)

(declare-fun b_and!48411 () Bool)

(assert (=> b!449451 (= tp!125414 b_and!48411)))

(declare-fun bs!55674 () Bool)

(declare-fun b!449446 () Bool)

(declare-fun b!449478 () Bool)

(assert (= bs!55674 (and b!449446 b!449478)))

(declare-fun lambda!13042 () Int)

(declare-fun lambda!13041 () Int)

(assert (=> bs!55674 (not (= lambda!13042 lambda!13041))))

(declare-fun b!449502 () Bool)

(declare-fun e!274708 () Bool)

(assert (=> b!449502 (= e!274708 true)))

(declare-fun b!449501 () Bool)

(declare-fun e!274707 () Bool)

(assert (=> b!449501 (= e!274707 e!274708)))

(declare-fun b!449500 () Bool)

(declare-fun e!274706 () Bool)

(assert (=> b!449500 (= e!274706 e!274707)))

(assert (=> b!449446 e!274706))

(assert (= b!449501 b!449502))

(assert (= b!449500 b!449501))

(declare-datatypes ((C!3060 0))(
  ( (C!3061 (val!1416 Int)) )
))
(declare-datatypes ((List!4368 0))(
  ( (Nil!4358) (Cons!4358 (h!9755 (_ BitVec 16)) (t!70792 List!4368)) )
))
(declare-datatypes ((TokenValue!867 0))(
  ( (FloatLiteralValue!1734 (text!6514 List!4368)) (TokenValueExt!866 (__x!3221 Int)) (Broken!4335 (value!28372 List!4368)) (Object!876) (End!867) (Def!867) (Underscore!867) (Match!867) (Else!867) (Error!867) (Case!867) (If!867) (Extends!867) (Abstract!867) (Class!867) (Val!867) (DelimiterValue!1734 (del!927 List!4368)) (KeywordValue!873 (value!28373 List!4368)) (CommentValue!1734 (value!28374 List!4368)) (WhitespaceValue!1734 (value!28375 List!4368)) (IndentationValue!867 (value!28376 List!4368)) (String!5414) (Int32!867) (Broken!4336 (value!28377 List!4368)) (Boolean!868) (Unit!7840) (OperatorValue!870 (op!927 List!4368)) (IdentifierValue!1734 (value!28378 List!4368)) (IdentifierValue!1735 (value!28379 List!4368)) (WhitespaceValue!1735 (value!28380 List!4368)) (True!1734) (False!1734) (Broken!4337 (value!28381 List!4368)) (Broken!4338 (value!28382 List!4368)) (True!1735) (RightBrace!867) (RightBracket!867) (Colon!867) (Null!867) (Comma!867) (LeftBracket!867) (False!1735) (LeftBrace!867) (ImaginaryLiteralValue!867 (text!6515 List!4368)) (StringLiteralValue!2601 (value!28383 List!4368)) (EOFValue!867 (value!28384 List!4368)) (IdentValue!867 (value!28385 List!4368)) (DelimiterValue!1735 (value!28386 List!4368)) (DedentValue!867 (value!28387 List!4368)) (NewLineValue!867 (value!28388 List!4368)) (IntegerValue!2601 (value!28389 (_ BitVec 32)) (text!6516 List!4368)) (IntegerValue!2602 (value!28390 Int) (text!6517 List!4368)) (Times!867) (Or!867) (Equal!867) (Minus!867) (Broken!4339 (value!28391 List!4368)) (And!867) (Div!867) (LessEqual!867) (Mod!867) (Concat!1936) (Not!867) (Plus!867) (SpaceValue!867 (value!28392 List!4368)) (IntegerValue!2603 (value!28393 Int) (text!6518 List!4368)) (StringLiteralValue!2602 (text!6519 List!4368)) (FloatLiteralValue!1735 (text!6520 List!4368)) (BytesLiteralValue!867 (value!28394 List!4368)) (CommentValue!1735 (value!28395 List!4368)) (StringLiteralValue!2603 (value!28396 List!4368)) (ErrorTokenValue!867 (msg!928 List!4368)) )
))
(declare-datatypes ((List!4369 0))(
  ( (Nil!4359) (Cons!4359 (h!9756 C!3060) (t!70793 List!4369)) )
))
(declare-datatypes ((IArray!3025 0))(
  ( (IArray!3026 (innerList!1570 List!4369)) )
))
(declare-datatypes ((Conc!1512 0))(
  ( (Node!1512 (left!3665 Conc!1512) (right!3995 Conc!1512) (csize!3254 Int) (cheight!1723 Int)) (Leaf!2274 (xs!4143 IArray!3025) (csize!3255 Int)) (Empty!1512) )
))
(declare-datatypes ((BalanceConc!3032 0))(
  ( (BalanceConc!3033 (c!91062 Conc!1512)) )
))
(declare-datatypes ((TokenValueInjection!1506 0))(
  ( (TokenValueInjection!1507 (toValue!1660 Int) (toChars!1519 Int)) )
))
(declare-datatypes ((Regex!1069 0))(
  ( (ElementMatch!1069 (c!91063 C!3060)) (Concat!1937 (regOne!2650 Regex!1069) (regTwo!2650 Regex!1069)) (EmptyExpr!1069) (Star!1069 (reg!1398 Regex!1069)) (EmptyLang!1069) (Union!1069 (regOne!2651 Regex!1069) (regTwo!2651 Regex!1069)) )
))
(declare-datatypes ((String!5415 0))(
  ( (String!5416 (value!28397 String)) )
))
(declare-datatypes ((Rule!1490 0))(
  ( (Rule!1491 (regex!845 Regex!1069) (tag!1101 String!5415) (isSeparator!845 Bool) (transformation!845 TokenValueInjection!1506)) )
))
(declare-datatypes ((List!4370 0))(
  ( (Nil!4360) (Cons!4360 (h!9757 Rule!1490) (t!70794 List!4370)) )
))
(declare-fun rules!1920 () List!4370)

(get-info :version)

(assert (= (and b!449446 ((_ is Cons!4360) rules!1920)) b!449500))

(declare-fun order!3821 () Int)

(declare-fun order!3823 () Int)

(declare-fun dynLambda!2620 (Int Int) Int)

(declare-fun dynLambda!2621 (Int Int) Int)

(assert (=> b!449502 (< (dynLambda!2620 order!3821 (toValue!1660 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13042))))

(declare-fun order!3825 () Int)

(declare-fun dynLambda!2622 (Int Int) Int)

(assert (=> b!449502 (< (dynLambda!2622 order!3825 (toChars!1519 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13042))))

(assert (=> b!449446 true))

(declare-fun b!449443 () Bool)

(declare-fun e!274668 () Bool)

(declare-datatypes ((Token!1434 0))(
  ( (Token!1435 (value!28398 TokenValue!867) (rule!1532 Rule!1490) (size!3578 Int) (originalCharacters!888 List!4369)) )
))
(declare-datatypes ((List!4371 0))(
  ( (Nil!4361) (Cons!4361 (h!9758 Token!1434) (t!70795 List!4371)) )
))
(declare-datatypes ((IArray!3027 0))(
  ( (IArray!3028 (innerList!1571 List!4371)) )
))
(declare-datatypes ((Conc!1513 0))(
  ( (Node!1513 (left!3666 Conc!1513) (right!3996 Conc!1513) (csize!3256 Int) (cheight!1724 Int)) (Leaf!2275 (xs!4144 IArray!3027) (csize!3257 Int)) (Empty!1513) )
))
(declare-datatypes ((BalanceConc!3034 0))(
  ( (BalanceConc!3035 (c!91064 Conc!1513)) )
))
(declare-datatypes ((tuple2!5270 0))(
  ( (tuple2!5271 (_1!2851 BalanceConc!3034) (_2!2851 BalanceConc!3032)) )
))
(declare-fun lt!199332 () tuple2!5270)

(declare-fun isEmpty!3299 (BalanceConc!3032) Bool)

(assert (=> b!449443 (= e!274668 (isEmpty!3299 (_2!2851 lt!199332)))))

(declare-fun e!274698 () Bool)

(declare-fun separatorToken!170 () Token!1434)

(declare-fun e!274699 () Bool)

(declare-fun b!449444 () Bool)

(declare-fun tp!125409 () Bool)

(declare-fun inv!5431 (String!5415) Bool)

(declare-fun inv!5434 (TokenValueInjection!1506) Bool)

(assert (=> b!449444 (= e!274698 (and tp!125409 (inv!5431 (tag!1101 (rule!1532 separatorToken!170))) (inv!5434 (transformation!845 (rule!1532 separatorToken!170))) e!274699))))

(assert (=> b!449445 (= e!274699 (and tp!125410 tp!125404))))

(declare-fun tokens!465 () List!4371)

(declare-fun e!274678 () Bool)

(declare-fun e!274694 () Bool)

(declare-fun b!449447 () Bool)

(declare-fun tp!125412 () Bool)

(assert (=> b!449447 (= e!274694 (and tp!125412 (inv!5431 (tag!1101 (rule!1532 (h!9758 tokens!465)))) (inv!5434 (transformation!845 (rule!1532 (h!9758 tokens!465)))) e!274678))))

(declare-fun e!274696 () Bool)

(assert (=> b!449448 (= e!274696 (and tp!125415 tp!125405))))

(declare-fun b!449449 () Bool)

(declare-fun res!199498 () Bool)

(declare-fun e!274665 () Bool)

(assert (=> b!449449 (=> (not res!199498) (not e!274665))))

(declare-fun isEmpty!3300 (List!4370) Bool)

(assert (=> b!449449 (= res!199498 (not (isEmpty!3300 rules!1920)))))

(declare-fun b!449450 () Bool)

(declare-fun e!274688 () Bool)

(declare-fun lt!199372 () tuple2!5270)

(assert (=> b!449450 (= e!274688 (isEmpty!3299 (_2!2851 lt!199372)))))

(assert (=> b!449451 (= e!274678 (and tp!125413 tp!125414))))

(declare-fun b!449452 () Bool)

(declare-datatypes ((Unit!7841 0))(
  ( (Unit!7842) )
))
(declare-fun e!274666 () Unit!7841)

(declare-fun Unit!7843 () Unit!7841)

(assert (=> b!449452 (= e!274666 Unit!7843)))

(declare-fun b!449453 () Bool)

(declare-fun e!274690 () Bool)

(declare-datatypes ((tuple2!5272 0))(
  ( (tuple2!5273 (_1!2852 Token!1434) (_2!2852 List!4369)) )
))
(declare-datatypes ((Option!1117 0))(
  ( (None!1116) (Some!1116 (v!15415 tuple2!5272)) )
))
(declare-fun lt!199333 () Option!1117)

(declare-fun get!1586 (Option!1117) tuple2!5272)

(declare-fun head!1091 (List!4371) Token!1434)

(assert (=> b!449453 (= e!274690 (= (_1!2852 (get!1586 lt!199333)) (head!1091 tokens!465)))))

(declare-fun b!449454 () Bool)

(declare-fun e!274693 () Bool)

(assert (=> b!449454 (= e!274693 false)))

(declare-fun b!449455 () Bool)

(declare-fun e!274663 () Bool)

(declare-fun e!274680 () Bool)

(assert (=> b!449455 (= e!274663 e!274680)))

(declare-fun res!199500 () Bool)

(assert (=> b!449455 (=> (not res!199500) (not e!274680))))

(declare-fun lt!199337 () Rule!1490)

(declare-fun lt!199339 () List!4369)

(declare-fun matchR!387 (Regex!1069 List!4369) Bool)

(assert (=> b!449455 (= res!199500 (matchR!387 (regex!845 lt!199337) lt!199339))))

(declare-datatypes ((Option!1118 0))(
  ( (None!1117) (Some!1117 (v!15416 Rule!1490)) )
))
(declare-fun lt!199326 () Option!1118)

(declare-fun get!1587 (Option!1118) Rule!1490)

(assert (=> b!449455 (= lt!199337 (get!1587 lt!199326))))

(declare-fun b!449456 () Bool)

(declare-fun e!274691 () Bool)

(declare-fun e!274673 () Bool)

(assert (=> b!449456 (= e!274691 e!274673)))

(declare-fun res!199487 () Bool)

(assert (=> b!449456 (=> res!199487 e!274673)))

(declare-fun e!274679 () Bool)

(assert (=> b!449456 (= res!199487 e!274679)))

(declare-fun res!199483 () Bool)

(assert (=> b!449456 (=> (not res!199483) (not e!274679))))

(declare-fun lt!199338 () Bool)

(assert (=> b!449456 (= res!199483 (not lt!199338))))

(declare-fun lt!199353 () List!4369)

(declare-fun lt!199348 () List!4369)

(assert (=> b!449456 (= lt!199338 (= lt!199353 lt!199348))))

(declare-fun b!449457 () Bool)

(declare-fun e!274683 () Bool)

(declare-fun e!274695 () Bool)

(assert (=> b!449457 (= e!274683 e!274695)))

(declare-fun res!199501 () Bool)

(assert (=> b!449457 (=> (not res!199501) (not e!274695))))

(declare-fun lt!199357 () Rule!1490)

(declare-fun lt!199368 () List!4369)

(assert (=> b!449457 (= res!199501 (matchR!387 (regex!845 lt!199357) lt!199368))))

(declare-fun lt!199334 () Option!1118)

(assert (=> b!449457 (= lt!199357 (get!1587 lt!199334))))

(declare-fun b!449458 () Bool)

(declare-fun res!199474 () Bool)

(assert (=> b!449458 (=> (not res!199474) (not e!274668))))

(declare-fun apply!1104 (BalanceConc!3034 Int) Token!1434)

(assert (=> b!449458 (= res!199474 (= (apply!1104 (_1!2851 lt!199332) 0) separatorToken!170))))

(declare-fun b!449459 () Bool)

(declare-fun res!199491 () Bool)

(assert (=> b!449459 (=> (not res!199491) (not e!274665))))

(declare-datatypes ((LexerInterface!731 0))(
  ( (LexerInterfaceExt!728 (__x!3222 Int)) (Lexer!729) )
))
(declare-fun thiss!17480 () LexerInterface!731)

(declare-fun rulesInvariant!697 (LexerInterface!731 List!4370) Bool)

(assert (=> b!449459 (= res!199491 (rulesInvariant!697 thiss!17480 rules!1920))))

(declare-fun b!449460 () Bool)

(declare-fun e!274667 () Bool)

(assert (=> b!449460 (= e!274665 e!274667)))

(declare-fun res!199493 () Bool)

(assert (=> b!449460 (=> (not res!199493) (not e!274667))))

(declare-fun lt!199349 () BalanceConc!3034)

(declare-fun rulesProduceEachTokenIndividually!523 (LexerInterface!731 List!4370 BalanceConc!3034) Bool)

(assert (=> b!449460 (= res!199493 (rulesProduceEachTokenIndividually!523 thiss!17480 rules!1920 lt!199349))))

(declare-fun seqFromList!1055 (List!4371) BalanceConc!3034)

(assert (=> b!449460 (= lt!199349 (seqFromList!1055 tokens!465))))

(declare-fun b!449461 () Bool)

(declare-fun res!199502 () Bool)

(assert (=> b!449461 (=> (not res!199502) (not e!274667))))

(declare-fun sepAndNonSepRulesDisjointChars!434 (List!4370 List!4370) Bool)

(assert (=> b!449461 (= res!199502 (sepAndNonSepRulesDisjointChars!434 rules!1920 rules!1920))))

(declare-fun b!449462 () Bool)

(declare-fun e!274669 () Bool)

(declare-fun e!274662 () Bool)

(declare-fun tp!125407 () Bool)

(assert (=> b!449462 (= e!274669 (and e!274662 tp!125407))))

(declare-fun b!449463 () Bool)

(declare-fun res!199499 () Bool)

(declare-fun e!274676 () Bool)

(assert (=> b!449463 (=> res!199499 e!274676)))

(declare-fun rulesProduceIndividualToken!480 (LexerInterface!731 List!4370 Token!1434) Bool)

(assert (=> b!449463 (= res!199499 (not (rulesProduceIndividualToken!480 thiss!17480 rules!1920 (h!9758 tokens!465))))))

(declare-fun b!449464 () Bool)

(declare-fun res!199473 () Bool)

(assert (=> b!449464 (=> res!199473 e!274676)))

(declare-fun lt!199341 () List!4369)

(declare-fun isEmpty!3301 (BalanceConc!3034) Bool)

(declare-fun lex!523 (LexerInterface!731 List!4370 BalanceConc!3032) tuple2!5270)

(declare-fun seqFromList!1056 (List!4369) BalanceConc!3032)

(assert (=> b!449464 (= res!199473 (isEmpty!3301 (_1!2851 (lex!523 thiss!17480 rules!1920 (seqFromList!1056 lt!199341)))))))

(declare-fun b!449465 () Bool)

(declare-fun e!274689 () Bool)

(declare-fun forall!1260 (List!4371 Int) Bool)

(assert (=> b!449465 (= e!274689 (forall!1260 (t!70795 tokens!465) lambda!13041))))

(declare-fun b!449466 () Bool)

(declare-fun e!274664 () Unit!7841)

(declare-fun Unit!7844 () Unit!7841)

(assert (=> b!449466 (= e!274664 Unit!7844)))

(declare-fun b!449467 () Bool)

(declare-fun e!274672 () Bool)

(assert (=> b!449467 (= e!274667 e!274672)))

(declare-fun res!199481 () Bool)

(assert (=> b!449467 (=> (not res!199481) (not e!274672))))

(declare-fun lt!199327 () List!4369)

(assert (=> b!449467 (= res!199481 (= lt!199353 lt!199327))))

(declare-fun list!1931 (BalanceConc!3032) List!4369)

(declare-fun printWithSeparatorTokenWhenNeededRec!404 (LexerInterface!731 List!4370 BalanceConc!3034 Token!1434 Int) BalanceConc!3032)

(assert (=> b!449467 (= lt!199327 (list!1931 (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199349 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!412 (LexerInterface!731 List!4370 List!4371 Token!1434) List!4369)

(assert (=> b!449467 (= lt!199353 (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!449468 () Bool)

(declare-fun res!199503 () Bool)

(assert (=> b!449468 (=> (not res!199503) (not e!274667))))

(assert (=> b!449468 (= res!199503 ((_ is Cons!4361) tokens!465))))

(declare-fun b!449469 () Bool)

(declare-fun tp!125408 () Bool)

(assert (=> b!449469 (= e!274662 (and tp!125408 (inv!5431 (tag!1101 (h!9757 rules!1920))) (inv!5434 (transformation!845 (h!9757 rules!1920))) e!274696))))

(declare-fun b!449470 () Bool)

(declare-fun res!199477 () Bool)

(declare-fun e!274684 () Bool)

(assert (=> b!449470 (=> (not res!199477) (not e!274684))))

(declare-fun lt!199371 () tuple2!5272)

(declare-fun isEmpty!3302 (List!4369) Bool)

(assert (=> b!449470 (= res!199477 (isEmpty!3302 (_2!2852 lt!199371)))))

(declare-fun b!449471 () Bool)

(declare-fun lt!199344 () Token!1434)

(assert (=> b!449471 (= e!274680 (= (rule!1532 lt!199344) lt!199337))))

(declare-fun b!449472 () Bool)

(assert (=> b!449472 (= e!274673 e!274676)))

(declare-fun res!199480 () Bool)

(assert (=> b!449472 (=> res!199480 e!274676)))

(declare-fun lt!199342 () List!4369)

(declare-fun lt!199365 () List!4369)

(assert (=> b!449472 (= res!199480 (or (not (= lt!199365 lt!199342)) (not (= lt!199342 lt!199341)) (not (= lt!199365 lt!199341))))))

(declare-fun printList!405 (LexerInterface!731 List!4371) List!4369)

(assert (=> b!449472 (= lt!199342 (printList!405 thiss!17480 (Cons!4361 (h!9758 tokens!465) Nil!4361)))))

(declare-fun lt!199373 () BalanceConc!3032)

(assert (=> b!449472 (= lt!199365 (list!1931 lt!199373))))

(declare-fun lt!199350 () BalanceConc!3034)

(declare-fun printTailRec!417 (LexerInterface!731 BalanceConc!3034 Int BalanceConc!3032) BalanceConc!3032)

(assert (=> b!449472 (= lt!199373 (printTailRec!417 thiss!17480 lt!199350 0 (BalanceConc!3033 Empty!1512)))))

(declare-fun print!456 (LexerInterface!731 BalanceConc!3034) BalanceConc!3032)

(assert (=> b!449472 (= lt!199373 (print!456 thiss!17480 lt!199350))))

(declare-fun singletonSeq!391 (Token!1434) BalanceConc!3034)

(assert (=> b!449472 (= lt!199350 (singletonSeq!391 (h!9758 tokens!465)))))

(declare-fun lt!199362 () List!4369)

(declare-fun b!449473 () Bool)

(declare-fun ++!1264 (List!4369 List!4369) List!4369)

(assert (=> b!449473 (= e!274679 (not (= lt!199353 (++!1264 lt!199341 lt!199362))))))

(declare-fun b!449474 () Bool)

(declare-fun res!199479 () Bool)

(assert (=> b!449474 (=> (not res!199479) (not e!274667))))

(assert (=> b!449474 (= res!199479 (rulesProduceIndividualToken!480 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!449475 () Bool)

(assert (=> b!449475 (= e!274695 (= (rule!1532 separatorToken!170) lt!199357))))

(declare-fun b!449476 () Bool)

(declare-fun e!274686 () Bool)

(declare-fun e!274681 () Bool)

(assert (=> b!449476 (= e!274686 e!274681)))

(declare-fun res!199495 () Bool)

(assert (=> b!449476 (=> res!199495 e!274681)))

(assert (=> b!449476 (= res!199495 (not lt!199338))))

(assert (=> b!449476 e!274684))

(declare-fun res!199485 () Bool)

(assert (=> b!449476 (=> (not res!199485) (not e!274684))))

(assert (=> b!449476 (= res!199485 (= (_1!2852 lt!199371) (h!9758 tokens!465)))))

(declare-fun lt!199335 () Option!1117)

(assert (=> b!449476 (= lt!199371 (get!1586 lt!199335))))

(declare-fun isDefined!956 (Option!1117) Bool)

(assert (=> b!449476 (isDefined!956 lt!199335)))

(declare-fun maxPrefix!447 (LexerInterface!731 List!4370 List!4369) Option!1117)

(assert (=> b!449476 (= lt!199335 (maxPrefix!447 thiss!17480 rules!1920 lt!199341))))

(declare-fun e!274697 () Bool)

(declare-fun b!449477 () Bool)

(declare-fun tp!125403 () Bool)

(declare-fun inv!21 (TokenValue!867) Bool)

(assert (=> b!449477 (= e!274697 (and (inv!21 (value!28398 separatorToken!170)) e!274698 tp!125403))))

(declare-fun res!199472 () Bool)

(assert (=> b!449478 (=> (not res!199472) (not e!274667))))

(assert (=> b!449478 (= res!199472 (forall!1260 tokens!465 lambda!13041))))

(assert (=> b!449446 (= e!274676 e!274686)))

(declare-fun res!199476 () Bool)

(assert (=> b!449446 (=> res!199476 e!274686)))

(declare-datatypes ((tuple2!5274 0))(
  ( (tuple2!5275 (_1!2853 Token!1434) (_2!2853 BalanceConc!3032)) )
))
(declare-datatypes ((Option!1119 0))(
  ( (None!1118) (Some!1118 (v!15417 tuple2!5274)) )
))
(declare-fun isDefined!957 (Option!1119) Bool)

(declare-fun maxPrefixZipperSequence!410 (LexerInterface!731 List!4370 BalanceConc!3032) Option!1119)

(assert (=> b!449446 (= res!199476 (not (isDefined!957 (maxPrefixZipperSequence!410 thiss!17480 rules!1920 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))))

(declare-fun lt!199352 () Unit!7841)

(declare-fun forallContained!398 (List!4371 Int Token!1434) Unit!7841)

(assert (=> b!449446 (= lt!199352 (forallContained!398 tokens!465 lambda!13042 (h!9758 tokens!465)))))

(assert (=> b!449446 (= lt!199341 (originalCharacters!888 (h!9758 tokens!465)))))

(declare-fun res!199486 () Bool)

(assert (=> start!42426 (=> (not res!199486) (not e!274665))))

(assert (=> start!42426 (= res!199486 ((_ is Lexer!729) thiss!17480))))

(assert (=> start!42426 e!274665))

(assert (=> start!42426 true))

(assert (=> start!42426 e!274669))

(declare-fun inv!5435 (Token!1434) Bool)

(assert (=> start!42426 (and (inv!5435 separatorToken!170) e!274697)))

(declare-fun e!274671 () Bool)

(assert (=> start!42426 e!274671))

(declare-fun b!449479 () Bool)

(declare-fun e!274685 () Bool)

(assert (=> b!449479 (= e!274685 e!274690)))

(declare-fun res!199489 () Bool)

(assert (=> b!449479 (=> (not res!199489) (not e!274690))))

(assert (=> b!449479 (= res!199489 (isDefined!956 lt!199333))))

(assert (=> b!449479 (= lt!199333 (maxPrefix!447 thiss!17480 rules!1920 lt!199353))))

(declare-fun tp!125411 () Bool)

(declare-fun b!449480 () Bool)

(declare-fun e!274677 () Bool)

(assert (=> b!449480 (= e!274677 (and (inv!21 (value!28398 (h!9758 tokens!465))) e!274694 tp!125411))))

(declare-fun b!449481 () Bool)

(declare-fun Unit!7845 () Unit!7841)

(assert (=> b!449481 (= e!274666 Unit!7845)))

(assert (=> b!449481 false))

(declare-fun b!449482 () Bool)

(declare-fun e!274687 () Unit!7841)

(declare-fun Unit!7846 () Unit!7841)

(assert (=> b!449482 (= e!274687 Unit!7846)))

(declare-fun b!449483 () Bool)

(declare-fun tp!125406 () Bool)

(assert (=> b!449483 (= e!274671 (and (inv!5435 (h!9758 tokens!465)) e!274677 tp!125406))))

(declare-fun b!449484 () Bool)

(assert (=> b!449484 (= e!274672 (not e!274691))))

(declare-fun res!199492 () Bool)

(assert (=> b!449484 (=> res!199492 e!274691)))

(declare-fun lt!199366 () BalanceConc!3034)

(assert (=> b!449484 (= res!199492 (not (= lt!199362 (list!1931 (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199366 separatorToken!170 0)))))))

(assert (=> b!449484 (= lt!199366 (seqFromList!1055 (t!70795 tokens!465)))))

(declare-fun lt!199354 () List!4369)

(assert (=> b!449484 (= lt!199354 lt!199348)))

(declare-fun lt!199374 () List!4369)

(assert (=> b!449484 (= lt!199348 (++!1264 lt!199341 lt!199374))))

(assert (=> b!449484 (= lt!199354 (++!1264 (++!1264 lt!199341 lt!199368) lt!199362))))

(declare-fun lt!199347 () Unit!7841)

(declare-fun lemmaConcatAssociativity!580 (List!4369 List!4369 List!4369) Unit!7841)

(assert (=> b!449484 (= lt!199347 (lemmaConcatAssociativity!580 lt!199341 lt!199368 lt!199362))))

(declare-fun charsOf!488 (Token!1434) BalanceConc!3032)

(assert (=> b!449484 (= lt!199341 (list!1931 (charsOf!488 (h!9758 tokens!465))))))

(assert (=> b!449484 (= lt!199374 (++!1264 lt!199368 lt!199362))))

(assert (=> b!449484 (= lt!199362 (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 (t!70795 tokens!465) separatorToken!170))))

(assert (=> b!449484 (= lt!199368 (list!1931 (charsOf!488 separatorToken!170)))))

(declare-fun b!449485 () Bool)

(assert (=> b!449485 (= e!274681 e!274689)))

(declare-fun res!199494 () Bool)

(assert (=> b!449485 (=> res!199494 e!274689)))

(assert (=> b!449485 (= res!199494 (not (rulesProduceEachTokenIndividually!523 thiss!17480 rules!1920 lt!199366)))))

(declare-fun lt!199331 () Option!1117)

(assert (=> b!449485 (= lt!199331 (Some!1116 (tuple2!5273 separatorToken!170 lt!199362)))))

(declare-fun lt!199356 () Unit!7841)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!76 (LexerInterface!731 List!4370 Token!1434 Rule!1490 List!4369 Rule!1490) Unit!7841)

(assert (=> b!449485 (= lt!199356 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!76 thiss!17480 rules!1920 separatorToken!170 (rule!1532 separatorToken!170) lt!199362 (rule!1532 lt!199344)))))

(declare-fun lt!199367 () Unit!7841)

(assert (=> b!449485 (= lt!199367 e!274687)))

(declare-fun c!91061 () Bool)

(declare-fun lt!199370 () C!3060)

(declare-fun contains!971 (List!4369 C!3060) Bool)

(declare-fun usedCharacters!146 (Regex!1069) List!4369)

(assert (=> b!449485 (= c!91061 (contains!971 (usedCharacters!146 (regex!845 (rule!1532 separatorToken!170))) lt!199370))))

(declare-fun head!1092 (List!4369) C!3060)

(assert (=> b!449485 (= lt!199370 (head!1092 lt!199362))))

(declare-fun lt!199364 () Unit!7841)

(assert (=> b!449485 (= lt!199364 e!274664)))

(declare-fun c!91059 () Bool)

(declare-fun lt!199355 () C!3060)

(assert (=> b!449485 (= c!91059 (not (contains!971 (usedCharacters!146 (regex!845 (rule!1532 lt!199344))) lt!199355)))))

(assert (=> b!449485 (= lt!199355 (head!1092 lt!199339))))

(assert (=> b!449485 e!274663))

(declare-fun res!199496 () Bool)

(assert (=> b!449485 (=> (not res!199496) (not e!274663))))

(declare-fun isDefined!958 (Option!1118) Bool)

(assert (=> b!449485 (= res!199496 (isDefined!958 lt!199326))))

(declare-fun getRuleFromTag!204 (LexerInterface!731 List!4370 String!5415) Option!1118)

(assert (=> b!449485 (= lt!199326 (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 lt!199344))))))

(declare-fun lt!199336 () Unit!7841)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!204 (LexerInterface!731 List!4370 List!4369 Token!1434) Unit!7841)

(assert (=> b!449485 (= lt!199336 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!204 thiss!17480 rules!1920 lt!199339 lt!199344))))

(assert (=> b!449485 (= lt!199339 (list!1931 (charsOf!488 lt!199344)))))

(declare-fun lt!199345 () Unit!7841)

(assert (=> b!449485 (= lt!199345 (forallContained!398 tokens!465 lambda!13042 lt!199344))))

(assert (=> b!449485 e!274688))

(declare-fun res!199478 () Bool)

(assert (=> b!449485 (=> (not res!199478) (not e!274688))))

(declare-fun size!3579 (BalanceConc!3034) Int)

(assert (=> b!449485 (= res!199478 (= (size!3579 (_1!2851 lt!199372)) 1))))

(declare-fun lt!199363 () BalanceConc!3032)

(assert (=> b!449485 (= lt!199372 (lex!523 thiss!17480 rules!1920 lt!199363))))

(declare-fun lt!199360 () BalanceConc!3034)

(assert (=> b!449485 (= lt!199363 (printTailRec!417 thiss!17480 lt!199360 0 (BalanceConc!3033 Empty!1512)))))

(assert (=> b!449485 (= lt!199363 (print!456 thiss!17480 lt!199360))))

(assert (=> b!449485 (= lt!199360 (singletonSeq!391 lt!199344))))

(assert (=> b!449485 e!274683))

(declare-fun res!199484 () Bool)

(assert (=> b!449485 (=> (not res!199484) (not e!274683))))

(assert (=> b!449485 (= res!199484 (isDefined!958 lt!199334))))

(assert (=> b!449485 (= lt!199334 (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 separatorToken!170))))))

(declare-fun lt!199359 () Unit!7841)

(assert (=> b!449485 (= lt!199359 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!204 thiss!17480 rules!1920 lt!199368 separatorToken!170))))

(assert (=> b!449485 e!274668))

(declare-fun res!199475 () Bool)

(assert (=> b!449485 (=> (not res!199475) (not e!274668))))

(assert (=> b!449485 (= res!199475 (= (size!3579 (_1!2851 lt!199332)) 1))))

(declare-fun lt!199358 () BalanceConc!3032)

(assert (=> b!449485 (= lt!199332 (lex!523 thiss!17480 rules!1920 lt!199358))))

(declare-fun lt!199329 () BalanceConc!3034)

(assert (=> b!449485 (= lt!199358 (printTailRec!417 thiss!17480 lt!199329 0 (BalanceConc!3033 Empty!1512)))))

(assert (=> b!449485 (= lt!199358 (print!456 thiss!17480 lt!199329))))

(assert (=> b!449485 (= lt!199329 (singletonSeq!391 separatorToken!170))))

(assert (=> b!449485 (rulesProduceIndividualToken!480 thiss!17480 rules!1920 lt!199344)))

(declare-fun lt!199340 () Unit!7841)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!194 (LexerInterface!731 List!4370 List!4371 Token!1434) Unit!7841)

(assert (=> b!449485 (= lt!199340 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!194 thiss!17480 rules!1920 tokens!465 lt!199344))))

(assert (=> b!449485 (= lt!199344 (head!1091 (t!70795 tokens!465)))))

(declare-fun lt!199346 () Unit!7841)

(assert (=> b!449485 (= lt!199346 e!274666)))

(declare-fun c!91060 () Bool)

(declare-fun isEmpty!3303 (List!4371) Bool)

(assert (=> b!449485 (= c!91060 (isEmpty!3303 (t!70795 tokens!465)))))

(assert (=> b!449485 (= lt!199331 (maxPrefix!447 thiss!17480 rules!1920 lt!199374))))

(declare-fun lt!199343 () tuple2!5272)

(assert (=> b!449485 (= lt!199374 (_2!2852 lt!199343))))

(declare-fun lt!199369 () Unit!7841)

(declare-fun lemmaSamePrefixThenSameSuffix!290 (List!4369 List!4369 List!4369 List!4369 List!4369) Unit!7841)

(assert (=> b!449485 (= lt!199369 (lemmaSamePrefixThenSameSuffix!290 lt!199341 lt!199374 lt!199341 (_2!2852 lt!199343) lt!199353))))

(assert (=> b!449485 (= lt!199343 (get!1586 (maxPrefix!447 thiss!17480 rules!1920 lt!199353)))))

(declare-fun isPrefix!505 (List!4369 List!4369) Bool)

(assert (=> b!449485 (isPrefix!505 lt!199341 lt!199348)))

(declare-fun lt!199351 () Unit!7841)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!396 (List!4369 List!4369) Unit!7841)

(assert (=> b!449485 (= lt!199351 (lemmaConcatTwoListThenFirstIsPrefix!396 lt!199341 lt!199374))))

(assert (=> b!449485 e!274685))

(declare-fun res!199482 () Bool)

(assert (=> b!449485 (=> res!199482 e!274685)))

(assert (=> b!449485 (= res!199482 (isEmpty!3303 tokens!465))))

(declare-fun lt!199361 () Unit!7841)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!252 (LexerInterface!731 List!4370 List!4371 Token!1434) Unit!7841)

(assert (=> b!449485 (= lt!199361 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!252 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!449486 () Bool)

(declare-fun Unit!7847 () Unit!7841)

(assert (=> b!449486 (= e!274664 Unit!7847)))

(declare-fun lt!199330 () Unit!7841)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!124 (Regex!1069 List!4369 C!3060) Unit!7841)

(assert (=> b!449486 (= lt!199330 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!124 (regex!845 (rule!1532 lt!199344)) lt!199339 lt!199355))))

(declare-fun res!199488 () Bool)

(assert (=> b!449486 (= res!199488 (not (matchR!387 (regex!845 (rule!1532 lt!199344)) lt!199339)))))

(assert (=> b!449486 (=> (not res!199488) (not e!274693))))

(assert (=> b!449486 e!274693))

(declare-fun b!449487 () Bool)

(declare-fun res!199504 () Bool)

(assert (=> b!449487 (=> (not res!199504) (not e!274688))))

(assert (=> b!449487 (= res!199504 (= (apply!1104 (_1!2851 lt!199372) 0) lt!199344))))

(declare-fun b!449488 () Bool)

(declare-fun Unit!7848 () Unit!7841)

(assert (=> b!449488 (= e!274687 Unit!7848)))

(declare-fun lt!199328 () Unit!7841)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!104 (LexerInterface!731 List!4370 List!4370 Rule!1490 Rule!1490 C!3060) Unit!7841)

(assert (=> b!449488 (= lt!199328 (lemmaSepRuleNotContainsCharContainedInANonSepRule!104 thiss!17480 rules!1920 rules!1920 (rule!1532 lt!199344) (rule!1532 separatorToken!170) lt!199370))))

(assert (=> b!449488 false))

(declare-fun b!449489 () Bool)

(declare-fun res!199490 () Bool)

(assert (=> b!449489 (=> (not res!199490) (not e!274672))))

(assert (=> b!449489 (= res!199490 (= (list!1931 (seqFromList!1056 lt!199353)) lt!199327))))

(declare-fun b!449490 () Bool)

(assert (=> b!449490 (= e!274684 (matchR!387 (regex!845 (rule!1532 (h!9758 tokens!465))) lt!199341))))

(declare-fun b!449491 () Bool)

(declare-fun res!199497 () Bool)

(assert (=> b!449491 (=> (not res!199497) (not e!274667))))

(assert (=> b!449491 (= res!199497 (isSeparator!845 (rule!1532 separatorToken!170)))))

(assert (= (and start!42426 res!199486) b!449449))

(assert (= (and b!449449 res!199498) b!449459))

(assert (= (and b!449459 res!199491) b!449460))

(assert (= (and b!449460 res!199493) b!449474))

(assert (= (and b!449474 res!199479) b!449491))

(assert (= (and b!449491 res!199497) b!449478))

(assert (= (and b!449478 res!199472) b!449461))

(assert (= (and b!449461 res!199502) b!449468))

(assert (= (and b!449468 res!199503) b!449467))

(assert (= (and b!449467 res!199481) b!449489))

(assert (= (and b!449489 res!199490) b!449484))

(assert (= (and b!449484 (not res!199492)) b!449456))

(assert (= (and b!449456 res!199483) b!449473))

(assert (= (and b!449456 (not res!199487)) b!449472))

(assert (= (and b!449472 (not res!199480)) b!449463))

(assert (= (and b!449463 (not res!199499)) b!449464))

(assert (= (and b!449464 (not res!199473)) b!449446))

(assert (= (and b!449446 (not res!199476)) b!449476))

(assert (= (and b!449476 res!199485) b!449470))

(assert (= (and b!449470 res!199477) b!449490))

(assert (= (and b!449476 (not res!199495)) b!449485))

(assert (= (and b!449485 (not res!199482)) b!449479))

(assert (= (and b!449479 res!199489) b!449453))

(assert (= (and b!449485 c!91060) b!449481))

(assert (= (and b!449485 (not c!91060)) b!449452))

(assert (= (and b!449485 res!199475) b!449458))

(assert (= (and b!449458 res!199474) b!449443))

(assert (= (and b!449485 res!199484) b!449457))

(assert (= (and b!449457 res!199501) b!449475))

(assert (= (and b!449485 res!199478) b!449487))

(assert (= (and b!449487 res!199504) b!449450))

(assert (= (and b!449485 res!199496) b!449455))

(assert (= (and b!449455 res!199500) b!449471))

(assert (= (and b!449485 c!91059) b!449486))

(assert (= (and b!449485 (not c!91059)) b!449466))

(assert (= (and b!449486 res!199488) b!449454))

(assert (= (and b!449485 c!91061) b!449488))

(assert (= (and b!449485 (not c!91061)) b!449482))

(assert (= (and b!449485 (not res!199494)) b!449465))

(assert (= b!449469 b!449448))

(assert (= b!449462 b!449469))

(assert (= (and start!42426 ((_ is Cons!4360) rules!1920)) b!449462))

(assert (= b!449444 b!449445))

(assert (= b!449477 b!449444))

(assert (= start!42426 b!449477))

(assert (= b!449447 b!449451))

(assert (= b!449480 b!449447))

(assert (= b!449483 b!449480))

(assert (= (and start!42426 ((_ is Cons!4361) tokens!465)) b!449483))

(declare-fun m!711539 () Bool)

(assert (=> b!449443 m!711539))

(declare-fun m!711541 () Bool)

(assert (=> b!449478 m!711541))

(declare-fun m!711543 () Bool)

(assert (=> b!449490 m!711543))

(declare-fun m!711545 () Bool)

(assert (=> b!449458 m!711545))

(declare-fun m!711547 () Bool)

(assert (=> b!449463 m!711547))

(declare-fun m!711549 () Bool)

(assert (=> b!449465 m!711549))

(declare-fun m!711551 () Bool)

(assert (=> b!449488 m!711551))

(declare-fun m!711553 () Bool)

(assert (=> b!449453 m!711553))

(declare-fun m!711555 () Bool)

(assert (=> b!449453 m!711555))

(declare-fun m!711557 () Bool)

(assert (=> b!449464 m!711557))

(assert (=> b!449464 m!711557))

(declare-fun m!711559 () Bool)

(assert (=> b!449464 m!711559))

(declare-fun m!711561 () Bool)

(assert (=> b!449464 m!711561))

(declare-fun m!711563 () Bool)

(assert (=> b!449477 m!711563))

(declare-fun m!711565 () Bool)

(assert (=> b!449480 m!711565))

(declare-fun m!711567 () Bool)

(assert (=> b!449447 m!711567))

(declare-fun m!711569 () Bool)

(assert (=> b!449447 m!711569))

(declare-fun m!711571 () Bool)

(assert (=> b!449479 m!711571))

(declare-fun m!711573 () Bool)

(assert (=> b!449479 m!711573))

(declare-fun m!711575 () Bool)

(assert (=> b!449449 m!711575))

(declare-fun m!711577 () Bool)

(assert (=> b!449446 m!711577))

(assert (=> b!449446 m!711577))

(declare-fun m!711579 () Bool)

(assert (=> b!449446 m!711579))

(assert (=> b!449446 m!711579))

(declare-fun m!711581 () Bool)

(assert (=> b!449446 m!711581))

(declare-fun m!711583 () Bool)

(assert (=> b!449446 m!711583))

(declare-fun m!711585 () Bool)

(assert (=> start!42426 m!711585))

(declare-fun m!711587 () Bool)

(assert (=> b!449473 m!711587))

(declare-fun m!711589 () Bool)

(assert (=> b!449467 m!711589))

(assert (=> b!449467 m!711589))

(declare-fun m!711591 () Bool)

(assert (=> b!449467 m!711591))

(declare-fun m!711593 () Bool)

(assert (=> b!449467 m!711593))

(declare-fun m!711595 () Bool)

(assert (=> b!449450 m!711595))

(declare-fun m!711597 () Bool)

(assert (=> b!449444 m!711597))

(declare-fun m!711599 () Bool)

(assert (=> b!449444 m!711599))

(declare-fun m!711601 () Bool)

(assert (=> b!449461 m!711601))

(declare-fun m!711603 () Bool)

(assert (=> b!449455 m!711603))

(declare-fun m!711605 () Bool)

(assert (=> b!449455 m!711605))

(declare-fun m!711607 () Bool)

(assert (=> b!449476 m!711607))

(declare-fun m!711609 () Bool)

(assert (=> b!449476 m!711609))

(declare-fun m!711611 () Bool)

(assert (=> b!449476 m!711611))

(declare-fun m!711613 () Bool)

(assert (=> b!449487 m!711613))

(declare-fun m!711615 () Bool)

(assert (=> b!449484 m!711615))

(declare-fun m!711617 () Bool)

(assert (=> b!449484 m!711617))

(declare-fun m!711619 () Bool)

(assert (=> b!449484 m!711619))

(declare-fun m!711621 () Bool)

(assert (=> b!449484 m!711621))

(declare-fun m!711623 () Bool)

(assert (=> b!449484 m!711623))

(assert (=> b!449484 m!711621))

(declare-fun m!711625 () Bool)

(assert (=> b!449484 m!711625))

(declare-fun m!711627 () Bool)

(assert (=> b!449484 m!711627))

(declare-fun m!711629 () Bool)

(assert (=> b!449484 m!711629))

(declare-fun m!711631 () Bool)

(assert (=> b!449484 m!711631))

(declare-fun m!711633 () Bool)

(assert (=> b!449484 m!711633))

(assert (=> b!449484 m!711619))

(declare-fun m!711635 () Bool)

(assert (=> b!449484 m!711635))

(assert (=> b!449484 m!711629))

(declare-fun m!711637 () Bool)

(assert (=> b!449484 m!711637))

(assert (=> b!449484 m!711633))

(declare-fun m!711639 () Bool)

(assert (=> b!449484 m!711639))

(declare-fun m!711641 () Bool)

(assert (=> b!449469 m!711641))

(declare-fun m!711643 () Bool)

(assert (=> b!449469 m!711643))

(declare-fun m!711645 () Bool)

(assert (=> b!449459 m!711645))

(declare-fun m!711647 () Bool)

(assert (=> b!449470 m!711647))

(declare-fun m!711649 () Bool)

(assert (=> b!449457 m!711649))

(declare-fun m!711651 () Bool)

(assert (=> b!449457 m!711651))

(declare-fun m!711653 () Bool)

(assert (=> b!449460 m!711653))

(declare-fun m!711655 () Bool)

(assert (=> b!449460 m!711655))

(declare-fun m!711657 () Bool)

(assert (=> b!449472 m!711657))

(declare-fun m!711659 () Bool)

(assert (=> b!449472 m!711659))

(declare-fun m!711661 () Bool)

(assert (=> b!449472 m!711661))

(declare-fun m!711663 () Bool)

(assert (=> b!449472 m!711663))

(declare-fun m!711665 () Bool)

(assert (=> b!449472 m!711665))

(declare-fun m!711667 () Bool)

(assert (=> b!449489 m!711667))

(assert (=> b!449489 m!711667))

(declare-fun m!711669 () Bool)

(assert (=> b!449489 m!711669))

(declare-fun m!711671 () Bool)

(assert (=> b!449483 m!711671))

(declare-fun m!711673 () Bool)

(assert (=> b!449474 m!711673))

(assert (=> b!449485 m!711573))

(declare-fun m!711675 () Bool)

(assert (=> b!449485 m!711675))

(declare-fun m!711677 () Bool)

(assert (=> b!449485 m!711677))

(declare-fun m!711679 () Bool)

(assert (=> b!449485 m!711679))

(declare-fun m!711681 () Bool)

(assert (=> b!449485 m!711681))

(declare-fun m!711683 () Bool)

(assert (=> b!449485 m!711683))

(declare-fun m!711685 () Bool)

(assert (=> b!449485 m!711685))

(declare-fun m!711687 () Bool)

(assert (=> b!449485 m!711687))

(declare-fun m!711689 () Bool)

(assert (=> b!449485 m!711689))

(declare-fun m!711691 () Bool)

(assert (=> b!449485 m!711691))

(declare-fun m!711693 () Bool)

(assert (=> b!449485 m!711693))

(declare-fun m!711695 () Bool)

(assert (=> b!449485 m!711695))

(assert (=> b!449485 m!711689))

(declare-fun m!711697 () Bool)

(assert (=> b!449485 m!711697))

(declare-fun m!711699 () Bool)

(assert (=> b!449485 m!711699))

(declare-fun m!711701 () Bool)

(assert (=> b!449485 m!711701))

(declare-fun m!711703 () Bool)

(assert (=> b!449485 m!711703))

(declare-fun m!711705 () Bool)

(assert (=> b!449485 m!711705))

(declare-fun m!711707 () Bool)

(assert (=> b!449485 m!711707))

(declare-fun m!711709 () Bool)

(assert (=> b!449485 m!711709))

(declare-fun m!711711 () Bool)

(assert (=> b!449485 m!711711))

(declare-fun m!711713 () Bool)

(assert (=> b!449485 m!711713))

(declare-fun m!711715 () Bool)

(assert (=> b!449485 m!711715))

(declare-fun m!711717 () Bool)

(assert (=> b!449485 m!711717))

(declare-fun m!711719 () Bool)

(assert (=> b!449485 m!711719))

(declare-fun m!711721 () Bool)

(assert (=> b!449485 m!711721))

(declare-fun m!711723 () Bool)

(assert (=> b!449485 m!711723))

(declare-fun m!711725 () Bool)

(assert (=> b!449485 m!711725))

(declare-fun m!711727 () Bool)

(assert (=> b!449485 m!711727))

(assert (=> b!449485 m!711573))

(declare-fun m!711729 () Bool)

(assert (=> b!449485 m!711729))

(declare-fun m!711731 () Bool)

(assert (=> b!449485 m!711731))

(declare-fun m!711733 () Bool)

(assert (=> b!449485 m!711733))

(declare-fun m!711735 () Bool)

(assert (=> b!449485 m!711735))

(declare-fun m!711737 () Bool)

(assert (=> b!449485 m!711737))

(assert (=> b!449485 m!711707))

(declare-fun m!711739 () Bool)

(assert (=> b!449485 m!711739))

(declare-fun m!711741 () Bool)

(assert (=> b!449485 m!711741))

(declare-fun m!711743 () Bool)

(assert (=> b!449485 m!711743))

(declare-fun m!711745 () Bool)

(assert (=> b!449485 m!711745))

(assert (=> b!449485 m!711737))

(declare-fun m!711747 () Bool)

(assert (=> b!449485 m!711747))

(declare-fun m!711749 () Bool)

(assert (=> b!449485 m!711749))

(declare-fun m!711751 () Bool)

(assert (=> b!449486 m!711751))

(declare-fun m!711753 () Bool)

(assert (=> b!449486 m!711753))

(check-sat (not b_next!12463) (not b!449467) (not b!449458) b_and!48407 (not b!449487) (not b!449500) (not b!449483) (not start!42426) (not b!449485) (not b!449476) (not b!449461) (not b!449453) (not b_next!12467) (not b!449444) b_and!48411 (not b!449457) (not b!449446) (not b!449474) b_and!48409 (not b_next!12461) (not b!449469) (not b_next!12465) (not b!449464) (not b!449480) (not b!449478) (not b!449479) (not b!449447) b_and!48401 (not b!449443) (not b!449486) (not b_next!12457) (not b!449460) (not b!449490) (not b!449470) (not b!449473) (not b!449472) (not b!449449) (not b!449465) (not b!449459) (not b!449484) b_and!48405 (not b!449477) (not b!449489) (not b_next!12459) b_and!48403 (not b!449455) (not b!449463) (not b!449450) (not b!449488) (not b!449462))
(check-sat (not b_next!12467) (not b_next!12463) b_and!48411 (not b_next!12465) b_and!48401 (not b_next!12457) b_and!48407 b_and!48405 b_and!48409 (not b_next!12461) (not b_next!12459) b_and!48403)
(get-model)

(declare-fun d!172102 () Bool)

(declare-fun res!199526 () Bool)

(declare-fun e!274723 () Bool)

(assert (=> d!172102 (=> (not res!199526) (not e!274723))))

(declare-fun rulesValid!299 (LexerInterface!731 List!4370) Bool)

(assert (=> d!172102 (= res!199526 (rulesValid!299 thiss!17480 rules!1920))))

(assert (=> d!172102 (= (rulesInvariant!697 thiss!17480 rules!1920) e!274723)))

(declare-fun b!449525 () Bool)

(declare-datatypes ((List!4372 0))(
  ( (Nil!4362) (Cons!4362 (h!9759 String!5415) (t!70882 List!4372)) )
))
(declare-fun noDuplicateTag!299 (LexerInterface!731 List!4370 List!4372) Bool)

(assert (=> b!449525 (= e!274723 (noDuplicateTag!299 thiss!17480 rules!1920 Nil!4362))))

(assert (= (and d!172102 res!199526) b!449525))

(declare-fun m!711811 () Bool)

(assert (=> d!172102 m!711811))

(declare-fun m!711813 () Bool)

(assert (=> b!449525 m!711813))

(assert (=> b!449459 d!172102))

(declare-fun d!172108 () Bool)

(declare-fun res!199540 () Bool)

(declare-fun e!274740 () Bool)

(assert (=> d!172108 (=> (not res!199540) (not e!274740))))

(assert (=> d!172108 (= res!199540 (not (isEmpty!3302 (originalCharacters!888 separatorToken!170))))))

(assert (=> d!172108 (= (inv!5435 separatorToken!170) e!274740)))

(declare-fun b!449555 () Bool)

(declare-fun res!199541 () Bool)

(assert (=> b!449555 (=> (not res!199541) (not e!274740))))

(declare-fun dynLambda!2624 (Int TokenValue!867) BalanceConc!3032)

(assert (=> b!449555 (= res!199541 (= (originalCharacters!888 separatorToken!170) (list!1931 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (value!28398 separatorToken!170)))))))

(declare-fun b!449556 () Bool)

(declare-fun size!3581 (List!4369) Int)

(assert (=> b!449556 (= e!274740 (= (size!3578 separatorToken!170) (size!3581 (originalCharacters!888 separatorToken!170))))))

(assert (= (and d!172108 res!199540) b!449555))

(assert (= (and b!449555 res!199541) b!449556))

(declare-fun b_lambda!18609 () Bool)

(assert (=> (not b_lambda!18609) (not b!449555)))

(declare-fun tb!45383 () Bool)

(declare-fun t!70800 () Bool)

(assert (=> (and b!449448 (= (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170)))) t!70800) tb!45383))

(declare-fun b!449562 () Bool)

(declare-fun e!274744 () Bool)

(declare-fun tp!125421 () Bool)

(declare-fun inv!5438 (Conc!1512) Bool)

(assert (=> b!449562 (= e!274744 (and (inv!5438 (c!91062 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (value!28398 separatorToken!170)))) tp!125421))))

(declare-fun result!49900 () Bool)

(declare-fun inv!5439 (BalanceConc!3032) Bool)

(assert (=> tb!45383 (= result!49900 (and (inv!5439 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (value!28398 separatorToken!170))) e!274744))))

(assert (= tb!45383 b!449562))

(declare-fun m!711833 () Bool)

(assert (=> b!449562 m!711833))

(declare-fun m!711835 () Bool)

(assert (=> tb!45383 m!711835))

(assert (=> b!449555 t!70800))

(declare-fun b_and!48419 () Bool)

(assert (= b_and!48403 (and (=> t!70800 result!49900) b_and!48419)))

(declare-fun t!70806 () Bool)

(declare-fun tb!45389 () Bool)

(assert (=> (and b!449445 (= (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170)))) t!70806) tb!45389))

(declare-fun result!49908 () Bool)

(assert (= result!49908 result!49900))

(assert (=> b!449555 t!70806))

(declare-fun b_and!48421 () Bool)

(assert (= b_and!48407 (and (=> t!70806 result!49908) b_and!48421)))

(declare-fun tb!45391 () Bool)

(declare-fun t!70808 () Bool)

(assert (=> (and b!449451 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170)))) t!70808) tb!45391))

(declare-fun result!49910 () Bool)

(assert (= result!49910 result!49900))

(assert (=> b!449555 t!70808))

(declare-fun b_and!48423 () Bool)

(assert (= b_and!48411 (and (=> t!70808 result!49910) b_and!48423)))

(declare-fun m!711837 () Bool)

(assert (=> d!172108 m!711837))

(declare-fun m!711839 () Bool)

(assert (=> b!449555 m!711839))

(assert (=> b!449555 m!711839))

(declare-fun m!711841 () Bool)

(assert (=> b!449555 m!711841))

(declare-fun m!711843 () Bool)

(assert (=> b!449556 m!711843))

(assert (=> start!42426 d!172108))

(declare-fun bs!55679 () Bool)

(declare-fun d!172114 () Bool)

(assert (= bs!55679 (and d!172114 b!449478)))

(declare-fun lambda!13047 () Int)

(assert (=> bs!55679 (not (= lambda!13047 lambda!13041))))

(declare-fun bs!55680 () Bool)

(assert (= bs!55680 (and d!172114 b!449446)))

(assert (=> bs!55680 (= lambda!13047 lambda!13042)))

(declare-fun b!449584 () Bool)

(declare-fun e!274758 () Bool)

(assert (=> b!449584 (= e!274758 true)))

(declare-fun b!449583 () Bool)

(declare-fun e!274757 () Bool)

(assert (=> b!449583 (= e!274757 e!274758)))

(declare-fun b!449582 () Bool)

(declare-fun e!274756 () Bool)

(assert (=> b!449582 (= e!274756 e!274757)))

(assert (=> d!172114 e!274756))

(assert (= b!449583 b!449584))

(assert (= b!449582 b!449583))

(assert (= (and d!172114 ((_ is Cons!4360) rules!1920)) b!449582))

(assert (=> b!449584 (< (dynLambda!2620 order!3821 (toValue!1660 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13047))))

(assert (=> b!449584 (< (dynLambda!2622 order!3825 (toChars!1519 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13047))))

(assert (=> d!172114 true))

(declare-fun e!274755 () Bool)

(assert (=> d!172114 e!274755))

(declare-fun res!199552 () Bool)

(assert (=> d!172114 (=> (not res!199552) (not e!274755))))

(declare-fun lt!199411 () Bool)

(declare-fun list!1934 (BalanceConc!3034) List!4371)

(assert (=> d!172114 (= res!199552 (= lt!199411 (forall!1260 (list!1934 lt!199349) lambda!13047)))))

(declare-fun forall!1261 (BalanceConc!3034 Int) Bool)

(assert (=> d!172114 (= lt!199411 (forall!1261 lt!199349 lambda!13047))))

(assert (=> d!172114 (not (isEmpty!3300 rules!1920))))

(assert (=> d!172114 (= (rulesProduceEachTokenIndividually!523 thiss!17480 rules!1920 lt!199349) lt!199411)))

(declare-fun b!449581 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!308 (LexerInterface!731 List!4370 List!4371) Bool)

(assert (=> b!449581 (= e!274755 (= lt!199411 (rulesProduceEachTokenIndividuallyList!308 thiss!17480 rules!1920 (list!1934 lt!199349))))))

(assert (= (and d!172114 res!199552) b!449581))

(declare-fun m!711875 () Bool)

(assert (=> d!172114 m!711875))

(assert (=> d!172114 m!711875))

(declare-fun m!711877 () Bool)

(assert (=> d!172114 m!711877))

(declare-fun m!711879 () Bool)

(assert (=> d!172114 m!711879))

(assert (=> d!172114 m!711575))

(assert (=> b!449581 m!711875))

(assert (=> b!449581 m!711875))

(declare-fun m!711881 () Bool)

(assert (=> b!449581 m!711881))

(assert (=> b!449460 d!172114))

(declare-fun d!172126 () Bool)

(declare-fun fromListB!469 (List!4371) BalanceConc!3034)

(assert (=> d!172126 (= (seqFromList!1055 tokens!465) (fromListB!469 tokens!465))))

(declare-fun bs!55681 () Bool)

(assert (= bs!55681 d!172126))

(declare-fun m!711883 () Bool)

(assert (=> bs!55681 m!711883))

(assert (=> b!449460 d!172126))

(declare-fun d!172128 () Bool)

(declare-fun isEmpty!3304 (Option!1117) Bool)

(assert (=> d!172128 (= (isDefined!956 lt!199333) (not (isEmpty!3304 lt!199333)))))

(declare-fun bs!55682 () Bool)

(assert (= bs!55682 d!172128))

(declare-fun m!711885 () Bool)

(assert (=> bs!55682 m!711885))

(assert (=> b!449479 d!172128))

(declare-fun b!449621 () Bool)

(declare-fun res!199578 () Bool)

(declare-fun e!274777 () Bool)

(assert (=> b!449621 (=> (not res!199578) (not e!274777))))

(declare-fun lt!199454 () Option!1117)

(assert (=> b!449621 (= res!199578 (< (size!3581 (_2!2852 (get!1586 lt!199454))) (size!3581 lt!199353)))))

(declare-fun b!449622 () Bool)

(declare-fun contains!972 (List!4370 Rule!1490) Bool)

(assert (=> b!449622 (= e!274777 (contains!972 rules!1920 (rule!1532 (_1!2852 (get!1586 lt!199454)))))))

(declare-fun b!449623 () Bool)

(declare-fun res!199575 () Bool)

(assert (=> b!449623 (=> (not res!199575) (not e!274777))))

(assert (=> b!449623 (= res!199575 (= (++!1264 (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199454)))) (_2!2852 (get!1586 lt!199454))) lt!199353))))

(declare-fun b!449624 () Bool)

(declare-fun e!274778 () Option!1117)

(declare-fun call!31053 () Option!1117)

(assert (=> b!449624 (= e!274778 call!31053)))

(declare-fun b!449625 () Bool)

(declare-fun lt!199453 () Option!1117)

(declare-fun lt!199452 () Option!1117)

(assert (=> b!449625 (= e!274778 (ite (and ((_ is None!1116) lt!199453) ((_ is None!1116) lt!199452)) None!1116 (ite ((_ is None!1116) lt!199452) lt!199453 (ite ((_ is None!1116) lt!199453) lt!199452 (ite (>= (size!3578 (_1!2852 (v!15415 lt!199453))) (size!3578 (_1!2852 (v!15415 lt!199452)))) lt!199453 lt!199452)))))))

(assert (=> b!449625 (= lt!199453 call!31053)))

(assert (=> b!449625 (= lt!199452 (maxPrefix!447 thiss!17480 (t!70794 rules!1920) lt!199353))))

(declare-fun b!449626 () Bool)

(declare-fun res!199576 () Bool)

(assert (=> b!449626 (=> (not res!199576) (not e!274777))))

(assert (=> b!449626 (= res!199576 (= (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199454)))) (originalCharacters!888 (_1!2852 (get!1586 lt!199454)))))))

(declare-fun b!449627 () Bool)

(declare-fun e!274779 () Bool)

(assert (=> b!449627 (= e!274779 e!274777)))

(declare-fun res!199577 () Bool)

(assert (=> b!449627 (=> (not res!199577) (not e!274777))))

(assert (=> b!449627 (= res!199577 (isDefined!956 lt!199454))))

(declare-fun b!449629 () Bool)

(declare-fun res!199573 () Bool)

(assert (=> b!449629 (=> (not res!199573) (not e!274777))))

(assert (=> b!449629 (= res!199573 (matchR!387 (regex!845 (rule!1532 (_1!2852 (get!1586 lt!199454)))) (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199454))))))))

(declare-fun bm!31048 () Bool)

(declare-fun maxPrefixOneRule!214 (LexerInterface!731 Rule!1490 List!4369) Option!1117)

(assert (=> bm!31048 (= call!31053 (maxPrefixOneRule!214 thiss!17480 (h!9757 rules!1920) lt!199353))))

(declare-fun b!449628 () Bool)

(declare-fun res!199574 () Bool)

(assert (=> b!449628 (=> (not res!199574) (not e!274777))))

(declare-fun apply!1106 (TokenValueInjection!1506 BalanceConc!3032) TokenValue!867)

(assert (=> b!449628 (= res!199574 (= (value!28398 (_1!2852 (get!1586 lt!199454))) (apply!1106 (transformation!845 (rule!1532 (_1!2852 (get!1586 lt!199454)))) (seqFromList!1056 (originalCharacters!888 (_1!2852 (get!1586 lt!199454)))))))))

(declare-fun d!172130 () Bool)

(assert (=> d!172130 e!274779))

(declare-fun res!199579 () Bool)

(assert (=> d!172130 (=> res!199579 e!274779)))

(assert (=> d!172130 (= res!199579 (isEmpty!3304 lt!199454))))

(assert (=> d!172130 (= lt!199454 e!274778)))

(declare-fun c!91089 () Bool)

(assert (=> d!172130 (= c!91089 (and ((_ is Cons!4360) rules!1920) ((_ is Nil!4360) (t!70794 rules!1920))))))

(declare-fun lt!199451 () Unit!7841)

(declare-fun lt!199450 () Unit!7841)

(assert (=> d!172130 (= lt!199451 lt!199450)))

(assert (=> d!172130 (isPrefix!505 lt!199353 lt!199353)))

(declare-fun lemmaIsPrefixRefl!280 (List!4369 List!4369) Unit!7841)

(assert (=> d!172130 (= lt!199450 (lemmaIsPrefixRefl!280 lt!199353 lt!199353))))

(declare-fun rulesValidInductive!275 (LexerInterface!731 List!4370) Bool)

(assert (=> d!172130 (rulesValidInductive!275 thiss!17480 rules!1920)))

(assert (=> d!172130 (= (maxPrefix!447 thiss!17480 rules!1920 lt!199353) lt!199454)))

(assert (= (and d!172130 c!91089) b!449624))

(assert (= (and d!172130 (not c!91089)) b!449625))

(assert (= (or b!449624 b!449625) bm!31048))

(assert (= (and d!172130 (not res!199579)) b!449627))

(assert (= (and b!449627 res!199577) b!449626))

(assert (= (and b!449626 res!199576) b!449621))

(assert (= (and b!449621 res!199578) b!449623))

(assert (= (and b!449623 res!199575) b!449628))

(assert (= (and b!449628 res!199574) b!449629))

(assert (= (and b!449629 res!199573) b!449622))

(declare-fun m!711887 () Bool)

(assert (=> b!449623 m!711887))

(declare-fun m!711889 () Bool)

(assert (=> b!449623 m!711889))

(assert (=> b!449623 m!711889))

(declare-fun m!711891 () Bool)

(assert (=> b!449623 m!711891))

(assert (=> b!449623 m!711891))

(declare-fun m!711893 () Bool)

(assert (=> b!449623 m!711893))

(assert (=> b!449628 m!711887))

(declare-fun m!711895 () Bool)

(assert (=> b!449628 m!711895))

(assert (=> b!449628 m!711895))

(declare-fun m!711897 () Bool)

(assert (=> b!449628 m!711897))

(assert (=> b!449626 m!711887))

(assert (=> b!449626 m!711889))

(assert (=> b!449626 m!711889))

(assert (=> b!449626 m!711891))

(declare-fun m!711899 () Bool)

(assert (=> b!449625 m!711899))

(assert (=> b!449621 m!711887))

(declare-fun m!711901 () Bool)

(assert (=> b!449621 m!711901))

(declare-fun m!711903 () Bool)

(assert (=> b!449621 m!711903))

(assert (=> b!449622 m!711887))

(declare-fun m!711905 () Bool)

(assert (=> b!449622 m!711905))

(declare-fun m!711907 () Bool)

(assert (=> b!449627 m!711907))

(declare-fun m!711909 () Bool)

(assert (=> bm!31048 m!711909))

(declare-fun m!711911 () Bool)

(assert (=> d!172130 m!711911))

(declare-fun m!711913 () Bool)

(assert (=> d!172130 m!711913))

(declare-fun m!711915 () Bool)

(assert (=> d!172130 m!711915))

(declare-fun m!711917 () Bool)

(assert (=> d!172130 m!711917))

(assert (=> b!449629 m!711887))

(assert (=> b!449629 m!711889))

(assert (=> b!449629 m!711889))

(assert (=> b!449629 m!711891))

(assert (=> b!449629 m!711891))

(declare-fun m!711919 () Bool)

(assert (=> b!449629 m!711919))

(assert (=> b!449479 d!172130))

(declare-fun d!172132 () Bool)

(declare-fun lt!199473 () Token!1434)

(declare-fun apply!1107 (List!4371 Int) Token!1434)

(assert (=> d!172132 (= lt!199473 (apply!1107 (list!1934 (_1!2851 lt!199332)) 0))))

(declare-fun apply!1108 (Conc!1513 Int) Token!1434)

(assert (=> d!172132 (= lt!199473 (apply!1108 (c!91064 (_1!2851 lt!199332)) 0))))

(declare-fun e!274795 () Bool)

(assert (=> d!172132 e!274795))

(declare-fun res!199589 () Bool)

(assert (=> d!172132 (=> (not res!199589) (not e!274795))))

(assert (=> d!172132 (= res!199589 (<= 0 0))))

(assert (=> d!172132 (= (apply!1104 (_1!2851 lt!199332) 0) lt!199473)))

(declare-fun b!449652 () Bool)

(assert (=> b!449652 (= e!274795 (< 0 (size!3579 (_1!2851 lt!199332))))))

(assert (= (and d!172132 res!199589) b!449652))

(declare-fun m!712005 () Bool)

(assert (=> d!172132 m!712005))

(assert (=> d!172132 m!712005))

(declare-fun m!712007 () Bool)

(assert (=> d!172132 m!712007))

(declare-fun m!712009 () Bool)

(assert (=> d!172132 m!712009))

(assert (=> b!449652 m!711705))

(assert (=> b!449458 d!172132))

(declare-fun b!449663 () Bool)

(declare-fun e!274803 () Bool)

(declare-fun inv!17 (TokenValue!867) Bool)

(assert (=> b!449663 (= e!274803 (inv!17 (value!28398 (h!9758 tokens!465))))))

(declare-fun d!172144 () Bool)

(declare-fun c!91099 () Bool)

(assert (=> d!172144 (= c!91099 ((_ is IntegerValue!2601) (value!28398 (h!9758 tokens!465))))))

(declare-fun e!274804 () Bool)

(assert (=> d!172144 (= (inv!21 (value!28398 (h!9758 tokens!465))) e!274804)))

(declare-fun b!449664 () Bool)

(assert (=> b!449664 (= e!274804 e!274803)))

(declare-fun c!91100 () Bool)

(assert (=> b!449664 (= c!91100 ((_ is IntegerValue!2602) (value!28398 (h!9758 tokens!465))))))

(declare-fun b!449665 () Bool)

(declare-fun inv!16 (TokenValue!867) Bool)

(assert (=> b!449665 (= e!274804 (inv!16 (value!28398 (h!9758 tokens!465))))))

(declare-fun b!449666 () Bool)

(declare-fun res!199592 () Bool)

(declare-fun e!274802 () Bool)

(assert (=> b!449666 (=> res!199592 e!274802)))

(assert (=> b!449666 (= res!199592 (not ((_ is IntegerValue!2603) (value!28398 (h!9758 tokens!465)))))))

(assert (=> b!449666 (= e!274803 e!274802)))

(declare-fun b!449667 () Bool)

(declare-fun inv!15 (TokenValue!867) Bool)

(assert (=> b!449667 (= e!274802 (inv!15 (value!28398 (h!9758 tokens!465))))))

(assert (= (and d!172144 c!91099) b!449665))

(assert (= (and d!172144 (not c!91099)) b!449664))

(assert (= (and b!449664 c!91100) b!449663))

(assert (= (and b!449664 (not c!91100)) b!449666))

(assert (= (and b!449666 (not res!199592)) b!449667))

(declare-fun m!712011 () Bool)

(assert (=> b!449663 m!712011))

(declare-fun m!712013 () Bool)

(assert (=> b!449665 m!712013))

(declare-fun m!712015 () Bool)

(assert (=> b!449667 m!712015))

(assert (=> b!449480 d!172144))

(declare-fun d!172146 () Bool)

(declare-fun res!199597 () Bool)

(declare-fun e!274809 () Bool)

(assert (=> d!172146 (=> res!199597 e!274809)))

(assert (=> d!172146 (= res!199597 ((_ is Nil!4361) tokens!465))))

(assert (=> d!172146 (= (forall!1260 tokens!465 lambda!13041) e!274809)))

(declare-fun b!449672 () Bool)

(declare-fun e!274810 () Bool)

(assert (=> b!449672 (= e!274809 e!274810)))

(declare-fun res!199598 () Bool)

(assert (=> b!449672 (=> (not res!199598) (not e!274810))))

(declare-fun dynLambda!2625 (Int Token!1434) Bool)

(assert (=> b!449672 (= res!199598 (dynLambda!2625 lambda!13041 (h!9758 tokens!465)))))

(declare-fun b!449673 () Bool)

(assert (=> b!449673 (= e!274810 (forall!1260 (t!70795 tokens!465) lambda!13041))))

(assert (= (and d!172146 (not res!199597)) b!449672))

(assert (= (and b!449672 res!199598) b!449673))

(declare-fun b_lambda!18613 () Bool)

(assert (=> (not b_lambda!18613) (not b!449672)))

(declare-fun m!712017 () Bool)

(assert (=> b!449672 m!712017))

(assert (=> b!449673 m!711549))

(assert (=> b!449478 d!172146))

(declare-fun b!449703 () Bool)

(declare-fun res!199619 () Bool)

(declare-fun e!274825 () Bool)

(assert (=> b!449703 (=> res!199619 e!274825)))

(declare-fun tail!624 (List!4369) List!4369)

(assert (=> b!449703 (= res!199619 (not (isEmpty!3302 (tail!624 lt!199368))))))

(declare-fun b!449704 () Bool)

(declare-fun e!274828 () Bool)

(declare-fun derivativeStep!203 (Regex!1069 C!3060) Regex!1069)

(assert (=> b!449704 (= e!274828 (matchR!387 (derivativeStep!203 (regex!845 lt!199357) (head!1092 lt!199368)) (tail!624 lt!199368)))))

(declare-fun b!449705 () Bool)

(declare-fun res!199616 () Bool)

(declare-fun e!274826 () Bool)

(assert (=> b!449705 (=> (not res!199616) (not e!274826))))

(assert (=> b!449705 (= res!199616 (isEmpty!3302 (tail!624 lt!199368)))))

(declare-fun b!449706 () Bool)

(declare-fun nullable!237 (Regex!1069) Bool)

(assert (=> b!449706 (= e!274828 (nullable!237 (regex!845 lt!199357)))))

(declare-fun b!449707 () Bool)

(declare-fun res!199620 () Bool)

(declare-fun e!274827 () Bool)

(assert (=> b!449707 (=> res!199620 e!274827)))

(assert (=> b!449707 (= res!199620 e!274826)))

(declare-fun res!199618 () Bool)

(assert (=> b!449707 (=> (not res!199618) (not e!274826))))

(declare-fun lt!199476 () Bool)

(assert (=> b!449707 (= res!199618 lt!199476)))

(declare-fun b!449708 () Bool)

(declare-fun e!274831 () Bool)

(assert (=> b!449708 (= e!274831 (not lt!199476))))

(declare-fun b!449709 () Bool)

(assert (=> b!449709 (= e!274825 (not (= (head!1092 lt!199368) (c!91063 (regex!845 lt!199357)))))))

(declare-fun bm!31056 () Bool)

(declare-fun call!31061 () Bool)

(assert (=> bm!31056 (= call!31061 (isEmpty!3302 lt!199368))))

(declare-fun b!449710 () Bool)

(declare-fun res!199622 () Bool)

(assert (=> b!449710 (=> res!199622 e!274827)))

(assert (=> b!449710 (= res!199622 (not ((_ is ElementMatch!1069) (regex!845 lt!199357))))))

(assert (=> b!449710 (= e!274831 e!274827)))

(declare-fun b!449711 () Bool)

(declare-fun e!274829 () Bool)

(assert (=> b!449711 (= e!274829 e!274825)))

(declare-fun res!199617 () Bool)

(assert (=> b!449711 (=> res!199617 e!274825)))

(assert (=> b!449711 (= res!199617 call!31061)))

(declare-fun b!449702 () Bool)

(assert (=> b!449702 (= e!274827 e!274829)))

(declare-fun res!199615 () Bool)

(assert (=> b!449702 (=> (not res!199615) (not e!274829))))

(assert (=> b!449702 (= res!199615 (not lt!199476))))

(declare-fun d!172148 () Bool)

(declare-fun e!274830 () Bool)

(assert (=> d!172148 e!274830))

(declare-fun c!91107 () Bool)

(assert (=> d!172148 (= c!91107 ((_ is EmptyExpr!1069) (regex!845 lt!199357)))))

(assert (=> d!172148 (= lt!199476 e!274828)))

(declare-fun c!91109 () Bool)

(assert (=> d!172148 (= c!91109 (isEmpty!3302 lt!199368))))

(declare-fun validRegex!312 (Regex!1069) Bool)

(assert (=> d!172148 (validRegex!312 (regex!845 lt!199357))))

(assert (=> d!172148 (= (matchR!387 (regex!845 lt!199357) lt!199368) lt!199476)))

(declare-fun b!449712 () Bool)

(assert (=> b!449712 (= e!274826 (= (head!1092 lt!199368) (c!91063 (regex!845 lt!199357))))))

(declare-fun b!449713 () Bool)

(assert (=> b!449713 (= e!274830 e!274831)))

(declare-fun c!91108 () Bool)

(assert (=> b!449713 (= c!91108 ((_ is EmptyLang!1069) (regex!845 lt!199357)))))

(declare-fun b!449714 () Bool)

(declare-fun res!199621 () Bool)

(assert (=> b!449714 (=> (not res!199621) (not e!274826))))

(assert (=> b!449714 (= res!199621 (not call!31061))))

(declare-fun b!449715 () Bool)

(assert (=> b!449715 (= e!274830 (= lt!199476 call!31061))))

(assert (= (and d!172148 c!91109) b!449706))

(assert (= (and d!172148 (not c!91109)) b!449704))

(assert (= (and d!172148 c!91107) b!449715))

(assert (= (and d!172148 (not c!91107)) b!449713))

(assert (= (and b!449713 c!91108) b!449708))

(assert (= (and b!449713 (not c!91108)) b!449710))

(assert (= (and b!449710 (not res!199622)) b!449707))

(assert (= (and b!449707 res!199618) b!449714))

(assert (= (and b!449714 res!199621) b!449705))

(assert (= (and b!449705 res!199616) b!449712))

(assert (= (and b!449707 (not res!199620)) b!449702))

(assert (= (and b!449702 res!199615) b!449711))

(assert (= (and b!449711 (not res!199617)) b!449703))

(assert (= (and b!449703 (not res!199619)) b!449709))

(assert (= (or b!449715 b!449714 b!449711) bm!31056))

(declare-fun m!712019 () Bool)

(assert (=> d!172148 m!712019))

(declare-fun m!712021 () Bool)

(assert (=> d!172148 m!712021))

(declare-fun m!712023 () Bool)

(assert (=> b!449704 m!712023))

(assert (=> b!449704 m!712023))

(declare-fun m!712025 () Bool)

(assert (=> b!449704 m!712025))

(declare-fun m!712027 () Bool)

(assert (=> b!449704 m!712027))

(assert (=> b!449704 m!712025))

(assert (=> b!449704 m!712027))

(declare-fun m!712029 () Bool)

(assert (=> b!449704 m!712029))

(assert (=> b!449703 m!712027))

(assert (=> b!449703 m!712027))

(declare-fun m!712031 () Bool)

(assert (=> b!449703 m!712031))

(assert (=> b!449712 m!712023))

(assert (=> b!449705 m!712027))

(assert (=> b!449705 m!712027))

(assert (=> b!449705 m!712031))

(assert (=> bm!31056 m!712019))

(assert (=> b!449709 m!712023))

(declare-fun m!712033 () Bool)

(assert (=> b!449706 m!712033))

(assert (=> b!449457 d!172148))

(declare-fun d!172150 () Bool)

(assert (=> d!172150 (= (get!1587 lt!199334) (v!15416 lt!199334))))

(assert (=> b!449457 d!172150))

(declare-fun b!449717 () Bool)

(declare-fun res!199627 () Bool)

(declare-fun e!274832 () Bool)

(assert (=> b!449717 (=> res!199627 e!274832)))

(assert (=> b!449717 (= res!199627 (not (isEmpty!3302 (tail!624 lt!199339))))))

(declare-fun b!449718 () Bool)

(declare-fun e!274835 () Bool)

(assert (=> b!449718 (= e!274835 (matchR!387 (derivativeStep!203 (regex!845 lt!199337) (head!1092 lt!199339)) (tail!624 lt!199339)))))

(declare-fun b!449719 () Bool)

(declare-fun res!199624 () Bool)

(declare-fun e!274833 () Bool)

(assert (=> b!449719 (=> (not res!199624) (not e!274833))))

(assert (=> b!449719 (= res!199624 (isEmpty!3302 (tail!624 lt!199339)))))

(declare-fun b!449720 () Bool)

(assert (=> b!449720 (= e!274835 (nullable!237 (regex!845 lt!199337)))))

(declare-fun b!449721 () Bool)

(declare-fun res!199628 () Bool)

(declare-fun e!274834 () Bool)

(assert (=> b!449721 (=> res!199628 e!274834)))

(assert (=> b!449721 (= res!199628 e!274833)))

(declare-fun res!199626 () Bool)

(assert (=> b!449721 (=> (not res!199626) (not e!274833))))

(declare-fun lt!199477 () Bool)

(assert (=> b!449721 (= res!199626 lt!199477)))

(declare-fun b!449722 () Bool)

(declare-fun e!274838 () Bool)

(assert (=> b!449722 (= e!274838 (not lt!199477))))

(declare-fun b!449723 () Bool)

(assert (=> b!449723 (= e!274832 (not (= (head!1092 lt!199339) (c!91063 (regex!845 lt!199337)))))))

(declare-fun bm!31057 () Bool)

(declare-fun call!31062 () Bool)

(assert (=> bm!31057 (= call!31062 (isEmpty!3302 lt!199339))))

(declare-fun b!449724 () Bool)

(declare-fun res!199630 () Bool)

(assert (=> b!449724 (=> res!199630 e!274834)))

(assert (=> b!449724 (= res!199630 (not ((_ is ElementMatch!1069) (regex!845 lt!199337))))))

(assert (=> b!449724 (= e!274838 e!274834)))

(declare-fun b!449725 () Bool)

(declare-fun e!274836 () Bool)

(assert (=> b!449725 (= e!274836 e!274832)))

(declare-fun res!199625 () Bool)

(assert (=> b!449725 (=> res!199625 e!274832)))

(assert (=> b!449725 (= res!199625 call!31062)))

(declare-fun b!449716 () Bool)

(assert (=> b!449716 (= e!274834 e!274836)))

(declare-fun res!199623 () Bool)

(assert (=> b!449716 (=> (not res!199623) (not e!274836))))

(assert (=> b!449716 (= res!199623 (not lt!199477))))

(declare-fun d!172152 () Bool)

(declare-fun e!274837 () Bool)

(assert (=> d!172152 e!274837))

(declare-fun c!91110 () Bool)

(assert (=> d!172152 (= c!91110 ((_ is EmptyExpr!1069) (regex!845 lt!199337)))))

(assert (=> d!172152 (= lt!199477 e!274835)))

(declare-fun c!91112 () Bool)

(assert (=> d!172152 (= c!91112 (isEmpty!3302 lt!199339))))

(assert (=> d!172152 (validRegex!312 (regex!845 lt!199337))))

(assert (=> d!172152 (= (matchR!387 (regex!845 lt!199337) lt!199339) lt!199477)))

(declare-fun b!449726 () Bool)

(assert (=> b!449726 (= e!274833 (= (head!1092 lt!199339) (c!91063 (regex!845 lt!199337))))))

(declare-fun b!449727 () Bool)

(assert (=> b!449727 (= e!274837 e!274838)))

(declare-fun c!91111 () Bool)

(assert (=> b!449727 (= c!91111 ((_ is EmptyLang!1069) (regex!845 lt!199337)))))

(declare-fun b!449728 () Bool)

(declare-fun res!199629 () Bool)

(assert (=> b!449728 (=> (not res!199629) (not e!274833))))

(assert (=> b!449728 (= res!199629 (not call!31062))))

(declare-fun b!449729 () Bool)

(assert (=> b!449729 (= e!274837 (= lt!199477 call!31062))))

(assert (= (and d!172152 c!91112) b!449720))

(assert (= (and d!172152 (not c!91112)) b!449718))

(assert (= (and d!172152 c!91110) b!449729))

(assert (= (and d!172152 (not c!91110)) b!449727))

(assert (= (and b!449727 c!91111) b!449722))

(assert (= (and b!449727 (not c!91111)) b!449724))

(assert (= (and b!449724 (not res!199630)) b!449721))

(assert (= (and b!449721 res!199626) b!449728))

(assert (= (and b!449728 res!199629) b!449719))

(assert (= (and b!449719 res!199624) b!449726))

(assert (= (and b!449721 (not res!199628)) b!449716))

(assert (= (and b!449716 res!199623) b!449725))

(assert (= (and b!449725 (not res!199625)) b!449717))

(assert (= (and b!449717 (not res!199627)) b!449723))

(assert (= (or b!449729 b!449728 b!449725) bm!31057))

(declare-fun m!712035 () Bool)

(assert (=> d!172152 m!712035))

(declare-fun m!712037 () Bool)

(assert (=> d!172152 m!712037))

(assert (=> b!449718 m!711735))

(assert (=> b!449718 m!711735))

(declare-fun m!712039 () Bool)

(assert (=> b!449718 m!712039))

(declare-fun m!712041 () Bool)

(assert (=> b!449718 m!712041))

(assert (=> b!449718 m!712039))

(assert (=> b!449718 m!712041))

(declare-fun m!712043 () Bool)

(assert (=> b!449718 m!712043))

(assert (=> b!449717 m!712041))

(assert (=> b!449717 m!712041))

(declare-fun m!712045 () Bool)

(assert (=> b!449717 m!712045))

(assert (=> b!449726 m!711735))

(assert (=> b!449719 m!712041))

(assert (=> b!449719 m!712041))

(assert (=> b!449719 m!712045))

(assert (=> bm!31057 m!712035))

(assert (=> b!449723 m!711735))

(declare-fun m!712047 () Bool)

(assert (=> b!449720 m!712047))

(assert (=> b!449455 d!172152))

(declare-fun d!172154 () Bool)

(assert (=> d!172154 (= (get!1587 lt!199326) (v!15416 lt!199326))))

(assert (=> b!449455 d!172154))

(declare-fun b!449730 () Bool)

(declare-fun e!274840 () Bool)

(assert (=> b!449730 (= e!274840 (inv!17 (value!28398 separatorToken!170)))))

(declare-fun d!172156 () Bool)

(declare-fun c!91113 () Bool)

(assert (=> d!172156 (= c!91113 ((_ is IntegerValue!2601) (value!28398 separatorToken!170)))))

(declare-fun e!274841 () Bool)

(assert (=> d!172156 (= (inv!21 (value!28398 separatorToken!170)) e!274841)))

(declare-fun b!449731 () Bool)

(assert (=> b!449731 (= e!274841 e!274840)))

(declare-fun c!91114 () Bool)

(assert (=> b!449731 (= c!91114 ((_ is IntegerValue!2602) (value!28398 separatorToken!170)))))

(declare-fun b!449732 () Bool)

(assert (=> b!449732 (= e!274841 (inv!16 (value!28398 separatorToken!170)))))

(declare-fun b!449733 () Bool)

(declare-fun res!199631 () Bool)

(declare-fun e!274839 () Bool)

(assert (=> b!449733 (=> res!199631 e!274839)))

(assert (=> b!449733 (= res!199631 (not ((_ is IntegerValue!2603) (value!28398 separatorToken!170))))))

(assert (=> b!449733 (= e!274840 e!274839)))

(declare-fun b!449734 () Bool)

(assert (=> b!449734 (= e!274839 (inv!15 (value!28398 separatorToken!170)))))

(assert (= (and d!172156 c!91113) b!449732))

(assert (= (and d!172156 (not c!91113)) b!449731))

(assert (= (and b!449731 c!91114) b!449730))

(assert (= (and b!449731 (not c!91114)) b!449733))

(assert (= (and b!449733 (not res!199631)) b!449734))

(declare-fun m!712049 () Bool)

(assert (=> b!449730 m!712049))

(declare-fun m!712051 () Bool)

(assert (=> b!449732 m!712051))

(declare-fun m!712053 () Bool)

(assert (=> b!449734 m!712053))

(assert (=> b!449477 d!172156))

(declare-fun d!172158 () Bool)

(assert (=> d!172158 (= (get!1586 lt!199335) (v!15415 lt!199335))))

(assert (=> b!449476 d!172158))

(declare-fun d!172160 () Bool)

(assert (=> d!172160 (= (isDefined!956 lt!199335) (not (isEmpty!3304 lt!199335)))))

(declare-fun bs!55690 () Bool)

(assert (= bs!55690 d!172160))

(declare-fun m!712055 () Bool)

(assert (=> bs!55690 m!712055))

(assert (=> b!449476 d!172160))

(declare-fun b!449735 () Bool)

(declare-fun res!199637 () Bool)

(declare-fun e!274842 () Bool)

(assert (=> b!449735 (=> (not res!199637) (not e!274842))))

(declare-fun lt!199482 () Option!1117)

(assert (=> b!449735 (= res!199637 (< (size!3581 (_2!2852 (get!1586 lt!199482))) (size!3581 lt!199341)))))

(declare-fun b!449736 () Bool)

(assert (=> b!449736 (= e!274842 (contains!972 rules!1920 (rule!1532 (_1!2852 (get!1586 lt!199482)))))))

(declare-fun b!449737 () Bool)

(declare-fun res!199634 () Bool)

(assert (=> b!449737 (=> (not res!199634) (not e!274842))))

(assert (=> b!449737 (= res!199634 (= (++!1264 (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199482)))) (_2!2852 (get!1586 lt!199482))) lt!199341))))

(declare-fun b!449738 () Bool)

(declare-fun e!274843 () Option!1117)

(declare-fun call!31063 () Option!1117)

(assert (=> b!449738 (= e!274843 call!31063)))

(declare-fun b!449739 () Bool)

(declare-fun lt!199481 () Option!1117)

(declare-fun lt!199480 () Option!1117)

(assert (=> b!449739 (= e!274843 (ite (and ((_ is None!1116) lt!199481) ((_ is None!1116) lt!199480)) None!1116 (ite ((_ is None!1116) lt!199480) lt!199481 (ite ((_ is None!1116) lt!199481) lt!199480 (ite (>= (size!3578 (_1!2852 (v!15415 lt!199481))) (size!3578 (_1!2852 (v!15415 lt!199480)))) lt!199481 lt!199480)))))))

(assert (=> b!449739 (= lt!199481 call!31063)))

(assert (=> b!449739 (= lt!199480 (maxPrefix!447 thiss!17480 (t!70794 rules!1920) lt!199341))))

(declare-fun b!449740 () Bool)

(declare-fun res!199635 () Bool)

(assert (=> b!449740 (=> (not res!199635) (not e!274842))))

(assert (=> b!449740 (= res!199635 (= (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199482)))) (originalCharacters!888 (_1!2852 (get!1586 lt!199482)))))))

(declare-fun b!449741 () Bool)

(declare-fun e!274844 () Bool)

(assert (=> b!449741 (= e!274844 e!274842)))

(declare-fun res!199636 () Bool)

(assert (=> b!449741 (=> (not res!199636) (not e!274842))))

(assert (=> b!449741 (= res!199636 (isDefined!956 lt!199482))))

(declare-fun b!449743 () Bool)

(declare-fun res!199632 () Bool)

(assert (=> b!449743 (=> (not res!199632) (not e!274842))))

(assert (=> b!449743 (= res!199632 (matchR!387 (regex!845 (rule!1532 (_1!2852 (get!1586 lt!199482)))) (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199482))))))))

(declare-fun bm!31058 () Bool)

(assert (=> bm!31058 (= call!31063 (maxPrefixOneRule!214 thiss!17480 (h!9757 rules!1920) lt!199341))))

(declare-fun b!449742 () Bool)

(declare-fun res!199633 () Bool)

(assert (=> b!449742 (=> (not res!199633) (not e!274842))))

(assert (=> b!449742 (= res!199633 (= (value!28398 (_1!2852 (get!1586 lt!199482))) (apply!1106 (transformation!845 (rule!1532 (_1!2852 (get!1586 lt!199482)))) (seqFromList!1056 (originalCharacters!888 (_1!2852 (get!1586 lt!199482)))))))))

(declare-fun d!172162 () Bool)

(assert (=> d!172162 e!274844))

(declare-fun res!199638 () Bool)

(assert (=> d!172162 (=> res!199638 e!274844)))

(assert (=> d!172162 (= res!199638 (isEmpty!3304 lt!199482))))

(assert (=> d!172162 (= lt!199482 e!274843)))

(declare-fun c!91115 () Bool)

(assert (=> d!172162 (= c!91115 (and ((_ is Cons!4360) rules!1920) ((_ is Nil!4360) (t!70794 rules!1920))))))

(declare-fun lt!199479 () Unit!7841)

(declare-fun lt!199478 () Unit!7841)

(assert (=> d!172162 (= lt!199479 lt!199478)))

(assert (=> d!172162 (isPrefix!505 lt!199341 lt!199341)))

(assert (=> d!172162 (= lt!199478 (lemmaIsPrefixRefl!280 lt!199341 lt!199341))))

(assert (=> d!172162 (rulesValidInductive!275 thiss!17480 rules!1920)))

(assert (=> d!172162 (= (maxPrefix!447 thiss!17480 rules!1920 lt!199341) lt!199482)))

(assert (= (and d!172162 c!91115) b!449738))

(assert (= (and d!172162 (not c!91115)) b!449739))

(assert (= (or b!449738 b!449739) bm!31058))

(assert (= (and d!172162 (not res!199638)) b!449741))

(assert (= (and b!449741 res!199636) b!449740))

(assert (= (and b!449740 res!199635) b!449735))

(assert (= (and b!449735 res!199637) b!449737))

(assert (= (and b!449737 res!199634) b!449742))

(assert (= (and b!449742 res!199633) b!449743))

(assert (= (and b!449743 res!199632) b!449736))

(declare-fun m!712057 () Bool)

(assert (=> b!449737 m!712057))

(declare-fun m!712059 () Bool)

(assert (=> b!449737 m!712059))

(assert (=> b!449737 m!712059))

(declare-fun m!712061 () Bool)

(assert (=> b!449737 m!712061))

(assert (=> b!449737 m!712061))

(declare-fun m!712063 () Bool)

(assert (=> b!449737 m!712063))

(assert (=> b!449742 m!712057))

(declare-fun m!712065 () Bool)

(assert (=> b!449742 m!712065))

(assert (=> b!449742 m!712065))

(declare-fun m!712067 () Bool)

(assert (=> b!449742 m!712067))

(assert (=> b!449740 m!712057))

(assert (=> b!449740 m!712059))

(assert (=> b!449740 m!712059))

(assert (=> b!449740 m!712061))

(declare-fun m!712069 () Bool)

(assert (=> b!449739 m!712069))

(assert (=> b!449735 m!712057))

(declare-fun m!712071 () Bool)

(assert (=> b!449735 m!712071))

(declare-fun m!712073 () Bool)

(assert (=> b!449735 m!712073))

(assert (=> b!449736 m!712057))

(declare-fun m!712075 () Bool)

(assert (=> b!449736 m!712075))

(declare-fun m!712077 () Bool)

(assert (=> b!449741 m!712077))

(declare-fun m!712079 () Bool)

(assert (=> bm!31058 m!712079))

(declare-fun m!712081 () Bool)

(assert (=> d!172162 m!712081))

(declare-fun m!712083 () Bool)

(assert (=> d!172162 m!712083))

(declare-fun m!712085 () Bool)

(assert (=> d!172162 m!712085))

(assert (=> d!172162 m!711917))

(assert (=> b!449743 m!712057))

(assert (=> b!449743 m!712059))

(assert (=> b!449743 m!712059))

(assert (=> b!449743 m!712061))

(assert (=> b!449743 m!712061))

(declare-fun m!712087 () Bool)

(assert (=> b!449743 m!712087))

(assert (=> b!449476 d!172162))

(declare-fun d!172164 () Bool)

(declare-fun lt!199500 () Bool)

(declare-fun e!274857 () Bool)

(assert (=> d!172164 (= lt!199500 e!274857)))

(declare-fun res!199647 () Bool)

(assert (=> d!172164 (=> (not res!199647) (not e!274857))))

(assert (=> d!172164 (= res!199647 (= (list!1934 (_1!2851 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 separatorToken!170))))) (list!1934 (singletonSeq!391 separatorToken!170))))))

(declare-fun e!274858 () Bool)

(assert (=> d!172164 (= lt!199500 e!274858)))

(declare-fun res!199646 () Bool)

(assert (=> d!172164 (=> (not res!199646) (not e!274858))))

(declare-fun lt!199499 () tuple2!5270)

(assert (=> d!172164 (= res!199646 (= (size!3579 (_1!2851 lt!199499)) 1))))

(assert (=> d!172164 (= lt!199499 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 separatorToken!170))))))

(assert (=> d!172164 (not (isEmpty!3300 rules!1920))))

(assert (=> d!172164 (= (rulesProduceIndividualToken!480 thiss!17480 rules!1920 separatorToken!170) lt!199500)))

(declare-fun b!449766 () Bool)

(declare-fun res!199645 () Bool)

(assert (=> b!449766 (=> (not res!199645) (not e!274858))))

(assert (=> b!449766 (= res!199645 (= (apply!1104 (_1!2851 lt!199499) 0) separatorToken!170))))

(declare-fun b!449767 () Bool)

(assert (=> b!449767 (= e!274858 (isEmpty!3299 (_2!2851 lt!199499)))))

(declare-fun b!449768 () Bool)

(assert (=> b!449768 (= e!274857 (isEmpty!3299 (_2!2851 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 separatorToken!170))))))))

(assert (= (and d!172164 res!199646) b!449766))

(assert (= (and b!449766 res!199645) b!449767))

(assert (= (and d!172164 res!199647) b!449768))

(assert (=> d!172164 m!711715))

(assert (=> d!172164 m!711715))

(declare-fun m!712089 () Bool)

(assert (=> d!172164 m!712089))

(declare-fun m!712091 () Bool)

(assert (=> d!172164 m!712091))

(declare-fun m!712093 () Bool)

(assert (=> d!172164 m!712093))

(declare-fun m!712095 () Bool)

(assert (=> d!172164 m!712095))

(assert (=> d!172164 m!711715))

(assert (=> d!172164 m!712091))

(assert (=> d!172164 m!711575))

(declare-fun m!712097 () Bool)

(assert (=> d!172164 m!712097))

(declare-fun m!712099 () Bool)

(assert (=> b!449766 m!712099))

(declare-fun m!712101 () Bool)

(assert (=> b!449767 m!712101))

(assert (=> b!449768 m!711715))

(assert (=> b!449768 m!711715))

(assert (=> b!449768 m!712091))

(assert (=> b!449768 m!712091))

(assert (=> b!449768 m!712093))

(declare-fun m!712103 () Bool)

(assert (=> b!449768 m!712103))

(assert (=> b!449474 d!172164))

(declare-fun d!172166 () Bool)

(assert (=> d!172166 (= (get!1586 lt!199333) (v!15415 lt!199333))))

(assert (=> b!449453 d!172166))

(declare-fun d!172168 () Bool)

(assert (=> d!172168 (= (head!1091 tokens!465) (h!9758 tokens!465))))

(assert (=> b!449453 d!172168))

(declare-fun e!274867 () Bool)

(declare-fun b!449788 () Bool)

(declare-fun lt!199509 () List!4369)

(assert (=> b!449788 (= e!274867 (or (not (= lt!199362 Nil!4359)) (= lt!199509 lt!199341)))))

(declare-fun b!449787 () Bool)

(declare-fun res!199652 () Bool)

(assert (=> b!449787 (=> (not res!199652) (not e!274867))))

(assert (=> b!449787 (= res!199652 (= (size!3581 lt!199509) (+ (size!3581 lt!199341) (size!3581 lt!199362))))))

(declare-fun d!172170 () Bool)

(assert (=> d!172170 e!274867))

(declare-fun res!199653 () Bool)

(assert (=> d!172170 (=> (not res!199653) (not e!274867))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!731 (List!4369) (InoxSet C!3060))

(assert (=> d!172170 (= res!199653 (= (content!731 lt!199509) ((_ map or) (content!731 lt!199341) (content!731 lt!199362))))))

(declare-fun e!274868 () List!4369)

(assert (=> d!172170 (= lt!199509 e!274868)))

(declare-fun c!91130 () Bool)

(assert (=> d!172170 (= c!91130 ((_ is Nil!4359) lt!199341))))

(assert (=> d!172170 (= (++!1264 lt!199341 lt!199362) lt!199509)))

(declare-fun b!449786 () Bool)

(assert (=> b!449786 (= e!274868 (Cons!4359 (h!9756 lt!199341) (++!1264 (t!70793 lt!199341) lt!199362)))))

(declare-fun b!449785 () Bool)

(assert (=> b!449785 (= e!274868 lt!199362)))

(assert (= (and d!172170 c!91130) b!449785))

(assert (= (and d!172170 (not c!91130)) b!449786))

(assert (= (and d!172170 res!199653) b!449787))

(assert (= (and b!449787 res!199652) b!449788))

(declare-fun m!712105 () Bool)

(assert (=> b!449787 m!712105))

(assert (=> b!449787 m!712073))

(declare-fun m!712107 () Bool)

(assert (=> b!449787 m!712107))

(declare-fun m!712109 () Bool)

(assert (=> d!172170 m!712109))

(declare-fun m!712111 () Bool)

(assert (=> d!172170 m!712111))

(declare-fun m!712113 () Bool)

(assert (=> d!172170 m!712113))

(declare-fun m!712115 () Bool)

(assert (=> b!449786 m!712115))

(assert (=> b!449473 d!172170))

(declare-fun d!172172 () Bool)

(declare-fun lt!199512 () Bool)

(assert (=> d!172172 (= lt!199512 (isEmpty!3302 (list!1931 (_2!2851 lt!199372))))))

(declare-fun isEmpty!3305 (Conc!1512) Bool)

(assert (=> d!172172 (= lt!199512 (isEmpty!3305 (c!91062 (_2!2851 lt!199372))))))

(assert (=> d!172172 (= (isEmpty!3299 (_2!2851 lt!199372)) lt!199512)))

(declare-fun bs!55695 () Bool)

(assert (= bs!55695 d!172172))

(declare-fun m!712143 () Bool)

(assert (=> bs!55695 m!712143))

(assert (=> bs!55695 m!712143))

(declare-fun m!712147 () Bool)

(assert (=> bs!55695 m!712147))

(declare-fun m!712149 () Bool)

(assert (=> bs!55695 m!712149))

(assert (=> b!449450 d!172172))

(declare-fun d!172176 () Bool)

(declare-fun lt!199552 () BalanceConc!3032)

(declare-fun printListTailRec!203 (LexerInterface!731 List!4371 List!4369) List!4369)

(declare-fun dropList!238 (BalanceConc!3034 Int) List!4371)

(assert (=> d!172176 (= (list!1931 lt!199552) (printListTailRec!203 thiss!17480 (dropList!238 lt!199350 0) (list!1931 (BalanceConc!3033 Empty!1512))))))

(declare-fun e!274908 () BalanceConc!3032)

(assert (=> d!172176 (= lt!199552 e!274908)))

(declare-fun c!91145 () Bool)

(assert (=> d!172176 (= c!91145 (>= 0 (size!3579 lt!199350)))))

(declare-fun e!274907 () Bool)

(assert (=> d!172176 e!274907))

(declare-fun res!199683 () Bool)

(assert (=> d!172176 (=> (not res!199683) (not e!274907))))

(assert (=> d!172176 (= res!199683 (>= 0 0))))

(assert (=> d!172176 (= (printTailRec!417 thiss!17480 lt!199350 0 (BalanceConc!3033 Empty!1512)) lt!199552)))

(declare-fun b!449853 () Bool)

(assert (=> b!449853 (= e!274907 (<= 0 (size!3579 lt!199350)))))

(declare-fun b!449854 () Bool)

(assert (=> b!449854 (= e!274908 (BalanceConc!3033 Empty!1512))))

(declare-fun b!449855 () Bool)

(declare-fun ++!1266 (BalanceConc!3032 BalanceConc!3032) BalanceConc!3032)

(assert (=> b!449855 (= e!274908 (printTailRec!417 thiss!17480 lt!199350 (+ 0 1) (++!1266 (BalanceConc!3033 Empty!1512) (charsOf!488 (apply!1104 lt!199350 0)))))))

(declare-fun lt!199550 () List!4371)

(assert (=> b!449855 (= lt!199550 (list!1934 lt!199350))))

(declare-fun lt!199551 () Unit!7841)

(declare-fun lemmaDropApply!278 (List!4371 Int) Unit!7841)

(assert (=> b!449855 (= lt!199551 (lemmaDropApply!278 lt!199550 0))))

(declare-fun drop!307 (List!4371 Int) List!4371)

(assert (=> b!449855 (= (head!1091 (drop!307 lt!199550 0)) (apply!1107 lt!199550 0))))

(declare-fun lt!199548 () Unit!7841)

(assert (=> b!449855 (= lt!199548 lt!199551)))

(declare-fun lt!199553 () List!4371)

(assert (=> b!449855 (= lt!199553 (list!1934 lt!199350))))

(declare-fun lt!199549 () Unit!7841)

(declare-fun lemmaDropTail!270 (List!4371 Int) Unit!7841)

(assert (=> b!449855 (= lt!199549 (lemmaDropTail!270 lt!199553 0))))

(declare-fun tail!626 (List!4371) List!4371)

(assert (=> b!449855 (= (tail!626 (drop!307 lt!199553 0)) (drop!307 lt!199553 (+ 0 1)))))

(declare-fun lt!199554 () Unit!7841)

(assert (=> b!449855 (= lt!199554 lt!199549)))

(assert (= (and d!172176 res!199683) b!449853))

(assert (= (and d!172176 c!91145) b!449854))

(assert (= (and d!172176 (not c!91145)) b!449855))

(declare-fun m!712241 () Bool)

(assert (=> d!172176 m!712241))

(declare-fun m!712243 () Bool)

(assert (=> d!172176 m!712243))

(declare-fun m!712245 () Bool)

(assert (=> d!172176 m!712245))

(assert (=> d!172176 m!712243))

(assert (=> d!172176 m!712241))

(declare-fun m!712247 () Bool)

(assert (=> d!172176 m!712247))

(declare-fun m!712249 () Bool)

(assert (=> d!172176 m!712249))

(assert (=> b!449853 m!712245))

(declare-fun m!712251 () Bool)

(assert (=> b!449855 m!712251))

(declare-fun m!712253 () Bool)

(assert (=> b!449855 m!712253))

(declare-fun m!712255 () Bool)

(assert (=> b!449855 m!712255))

(declare-fun m!712257 () Bool)

(assert (=> b!449855 m!712257))

(declare-fun m!712259 () Bool)

(assert (=> b!449855 m!712259))

(declare-fun m!712261 () Bool)

(assert (=> b!449855 m!712261))

(declare-fun m!712263 () Bool)

(assert (=> b!449855 m!712263))

(declare-fun m!712265 () Bool)

(assert (=> b!449855 m!712265))

(declare-fun m!712267 () Bool)

(assert (=> b!449855 m!712267))

(assert (=> b!449855 m!712261))

(assert (=> b!449855 m!712255))

(declare-fun m!712269 () Bool)

(assert (=> b!449855 m!712269))

(declare-fun m!712271 () Bool)

(assert (=> b!449855 m!712271))

(assert (=> b!449855 m!712263))

(assert (=> b!449855 m!712259))

(assert (=> b!449855 m!712251))

(declare-fun m!712273 () Bool)

(assert (=> b!449855 m!712273))

(declare-fun m!712275 () Bool)

(assert (=> b!449855 m!712275))

(assert (=> b!449472 d!172176))

(declare-fun d!172188 () Bool)

(declare-fun list!1935 (Conc!1512) List!4369)

(assert (=> d!172188 (= (list!1931 lt!199373) (list!1935 (c!91062 lt!199373)))))

(declare-fun bs!55716 () Bool)

(assert (= bs!55716 d!172188))

(declare-fun m!712277 () Bool)

(assert (=> bs!55716 m!712277))

(assert (=> b!449472 d!172188))

(declare-fun d!172190 () Bool)

(declare-fun lt!199566 () BalanceConc!3032)

(assert (=> d!172190 (= (list!1931 lt!199566) (printList!405 thiss!17480 (list!1934 lt!199350)))))

(assert (=> d!172190 (= lt!199566 (printTailRec!417 thiss!17480 lt!199350 0 (BalanceConc!3033 Empty!1512)))))

(assert (=> d!172190 (= (print!456 thiss!17480 lt!199350) lt!199566)))

(declare-fun bs!55718 () Bool)

(assert (= bs!55718 d!172190))

(declare-fun m!712305 () Bool)

(assert (=> bs!55718 m!712305))

(assert (=> bs!55718 m!712267))

(assert (=> bs!55718 m!712267))

(declare-fun m!712307 () Bool)

(assert (=> bs!55718 m!712307))

(assert (=> bs!55718 m!711657))

(assert (=> b!449472 d!172190))

(declare-fun d!172196 () Bool)

(declare-fun e!274918 () Bool)

(assert (=> d!172196 e!274918))

(declare-fun res!199686 () Bool)

(assert (=> d!172196 (=> (not res!199686) (not e!274918))))

(declare-fun lt!199569 () BalanceConc!3034)

(assert (=> d!172196 (= res!199686 (= (list!1934 lt!199569) (Cons!4361 (h!9758 tokens!465) Nil!4361)))))

(declare-fun singleton!188 (Token!1434) BalanceConc!3034)

(assert (=> d!172196 (= lt!199569 (singleton!188 (h!9758 tokens!465)))))

(assert (=> d!172196 (= (singletonSeq!391 (h!9758 tokens!465)) lt!199569)))

(declare-fun b!449869 () Bool)

(declare-fun isBalanced!465 (Conc!1513) Bool)

(assert (=> b!449869 (= e!274918 (isBalanced!465 (c!91064 lt!199569)))))

(assert (= (and d!172196 res!199686) b!449869))

(declare-fun m!712309 () Bool)

(assert (=> d!172196 m!712309))

(declare-fun m!712311 () Bool)

(assert (=> d!172196 m!712311))

(declare-fun m!712313 () Bool)

(assert (=> b!449869 m!712313))

(assert (=> b!449472 d!172196))

(declare-fun d!172198 () Bool)

(declare-fun c!91152 () Bool)

(assert (=> d!172198 (= c!91152 ((_ is Cons!4361) (Cons!4361 (h!9758 tokens!465) Nil!4361)))))

(declare-fun e!274921 () List!4369)

(assert (=> d!172198 (= (printList!405 thiss!17480 (Cons!4361 (h!9758 tokens!465) Nil!4361)) e!274921)))

(declare-fun b!449874 () Bool)

(assert (=> b!449874 (= e!274921 (++!1264 (list!1931 (charsOf!488 (h!9758 (Cons!4361 (h!9758 tokens!465) Nil!4361)))) (printList!405 thiss!17480 (t!70795 (Cons!4361 (h!9758 tokens!465) Nil!4361)))))))

(declare-fun b!449875 () Bool)

(assert (=> b!449875 (= e!274921 Nil!4359)))

(assert (= (and d!172198 c!91152) b!449874))

(assert (= (and d!172198 (not c!91152)) b!449875))

(declare-fun m!712315 () Bool)

(assert (=> b!449874 m!712315))

(assert (=> b!449874 m!712315))

(declare-fun m!712317 () Bool)

(assert (=> b!449874 m!712317))

(declare-fun m!712319 () Bool)

(assert (=> b!449874 m!712319))

(assert (=> b!449874 m!712317))

(assert (=> b!449874 m!712319))

(declare-fun m!712321 () Bool)

(assert (=> b!449874 m!712321))

(assert (=> b!449472 d!172198))

(declare-fun d!172200 () Bool)

(assert (=> d!172200 (= (isEmpty!3302 (_2!2852 lt!199371)) ((_ is Nil!4359) (_2!2852 lt!199371)))))

(assert (=> b!449470 d!172200))

(declare-fun d!172202 () Bool)

(assert (=> d!172202 (= (isEmpty!3300 rules!1920) ((_ is Nil!4360) rules!1920))))

(assert (=> b!449449 d!172202))

(declare-fun d!172204 () Bool)

(assert (=> d!172204 (= (inv!5431 (tag!1101 (rule!1532 (h!9758 tokens!465)))) (= (mod (str.len (value!28397 (tag!1101 (rule!1532 (h!9758 tokens!465))))) 2) 0))))

(assert (=> b!449447 d!172204))

(declare-fun d!172206 () Bool)

(declare-fun res!199689 () Bool)

(declare-fun e!274924 () Bool)

(assert (=> d!172206 (=> (not res!199689) (not e!274924))))

(declare-fun semiInverseModEq!334 (Int Int) Bool)

(assert (=> d!172206 (= res!199689 (semiInverseModEq!334 (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (toValue!1660 (transformation!845 (rule!1532 (h!9758 tokens!465))))))))

(assert (=> d!172206 (= (inv!5434 (transformation!845 (rule!1532 (h!9758 tokens!465)))) e!274924)))

(declare-fun b!449878 () Bool)

(declare-fun equivClasses!317 (Int Int) Bool)

(assert (=> b!449878 (= e!274924 (equivClasses!317 (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (toValue!1660 (transformation!845 (rule!1532 (h!9758 tokens!465))))))))

(assert (= (and d!172206 res!199689) b!449878))

(declare-fun m!712323 () Bool)

(assert (=> d!172206 m!712323))

(declare-fun m!712325 () Bool)

(assert (=> b!449878 m!712325))

(assert (=> b!449447 d!172206))

(declare-fun b!449880 () Bool)

(declare-fun res!199694 () Bool)

(declare-fun e!274925 () Bool)

(assert (=> b!449880 (=> res!199694 e!274925)))

(assert (=> b!449880 (= res!199694 (not (isEmpty!3302 (tail!624 lt!199341))))))

(declare-fun b!449881 () Bool)

(declare-fun e!274928 () Bool)

(assert (=> b!449881 (= e!274928 (matchR!387 (derivativeStep!203 (regex!845 (rule!1532 (h!9758 tokens!465))) (head!1092 lt!199341)) (tail!624 lt!199341)))))

(declare-fun b!449882 () Bool)

(declare-fun res!199691 () Bool)

(declare-fun e!274926 () Bool)

(assert (=> b!449882 (=> (not res!199691) (not e!274926))))

(assert (=> b!449882 (= res!199691 (isEmpty!3302 (tail!624 lt!199341)))))

(declare-fun b!449883 () Bool)

(assert (=> b!449883 (= e!274928 (nullable!237 (regex!845 (rule!1532 (h!9758 tokens!465)))))))

(declare-fun b!449884 () Bool)

(declare-fun res!199695 () Bool)

(declare-fun e!274927 () Bool)

(assert (=> b!449884 (=> res!199695 e!274927)))

(assert (=> b!449884 (= res!199695 e!274926)))

(declare-fun res!199693 () Bool)

(assert (=> b!449884 (=> (not res!199693) (not e!274926))))

(declare-fun lt!199570 () Bool)

(assert (=> b!449884 (= res!199693 lt!199570)))

(declare-fun b!449885 () Bool)

(declare-fun e!274931 () Bool)

(assert (=> b!449885 (= e!274931 (not lt!199570))))

(declare-fun b!449886 () Bool)

(assert (=> b!449886 (= e!274925 (not (= (head!1092 lt!199341) (c!91063 (regex!845 (rule!1532 (h!9758 tokens!465)))))))))

(declare-fun bm!31087 () Bool)

(declare-fun call!31092 () Bool)

(assert (=> bm!31087 (= call!31092 (isEmpty!3302 lt!199341))))

(declare-fun b!449887 () Bool)

(declare-fun res!199697 () Bool)

(assert (=> b!449887 (=> res!199697 e!274927)))

(assert (=> b!449887 (= res!199697 (not ((_ is ElementMatch!1069) (regex!845 (rule!1532 (h!9758 tokens!465))))))))

(assert (=> b!449887 (= e!274931 e!274927)))

(declare-fun b!449888 () Bool)

(declare-fun e!274929 () Bool)

(assert (=> b!449888 (= e!274929 e!274925)))

(declare-fun res!199692 () Bool)

(assert (=> b!449888 (=> res!199692 e!274925)))

(assert (=> b!449888 (= res!199692 call!31092)))

(declare-fun b!449879 () Bool)

(assert (=> b!449879 (= e!274927 e!274929)))

(declare-fun res!199690 () Bool)

(assert (=> b!449879 (=> (not res!199690) (not e!274929))))

(assert (=> b!449879 (= res!199690 (not lt!199570))))

(declare-fun d!172208 () Bool)

(declare-fun e!274930 () Bool)

(assert (=> d!172208 e!274930))

(declare-fun c!91153 () Bool)

(assert (=> d!172208 (= c!91153 ((_ is EmptyExpr!1069) (regex!845 (rule!1532 (h!9758 tokens!465)))))))

(assert (=> d!172208 (= lt!199570 e!274928)))

(declare-fun c!91155 () Bool)

(assert (=> d!172208 (= c!91155 (isEmpty!3302 lt!199341))))

(assert (=> d!172208 (validRegex!312 (regex!845 (rule!1532 (h!9758 tokens!465))))))

(assert (=> d!172208 (= (matchR!387 (regex!845 (rule!1532 (h!9758 tokens!465))) lt!199341) lt!199570)))

(declare-fun b!449889 () Bool)

(assert (=> b!449889 (= e!274926 (= (head!1092 lt!199341) (c!91063 (regex!845 (rule!1532 (h!9758 tokens!465))))))))

(declare-fun b!449890 () Bool)

(assert (=> b!449890 (= e!274930 e!274931)))

(declare-fun c!91154 () Bool)

(assert (=> b!449890 (= c!91154 ((_ is EmptyLang!1069) (regex!845 (rule!1532 (h!9758 tokens!465)))))))

(declare-fun b!449891 () Bool)

(declare-fun res!199696 () Bool)

(assert (=> b!449891 (=> (not res!199696) (not e!274926))))

(assert (=> b!449891 (= res!199696 (not call!31092))))

(declare-fun b!449892 () Bool)

(assert (=> b!449892 (= e!274930 (= lt!199570 call!31092))))

(assert (= (and d!172208 c!91155) b!449883))

(assert (= (and d!172208 (not c!91155)) b!449881))

(assert (= (and d!172208 c!91153) b!449892))

(assert (= (and d!172208 (not c!91153)) b!449890))

(assert (= (and b!449890 c!91154) b!449885))

(assert (= (and b!449890 (not c!91154)) b!449887))

(assert (= (and b!449887 (not res!199697)) b!449884))

(assert (= (and b!449884 res!199693) b!449891))

(assert (= (and b!449891 res!199696) b!449882))

(assert (= (and b!449882 res!199691) b!449889))

(assert (= (and b!449884 (not res!199695)) b!449879))

(assert (= (and b!449879 res!199690) b!449888))

(assert (= (and b!449888 (not res!199692)) b!449880))

(assert (= (and b!449880 (not res!199694)) b!449886))

(assert (= (or b!449892 b!449891 b!449888) bm!31087))

(declare-fun m!712327 () Bool)

(assert (=> d!172208 m!712327))

(declare-fun m!712329 () Bool)

(assert (=> d!172208 m!712329))

(declare-fun m!712331 () Bool)

(assert (=> b!449881 m!712331))

(assert (=> b!449881 m!712331))

(declare-fun m!712333 () Bool)

(assert (=> b!449881 m!712333))

(declare-fun m!712335 () Bool)

(assert (=> b!449881 m!712335))

(assert (=> b!449881 m!712333))

(assert (=> b!449881 m!712335))

(declare-fun m!712337 () Bool)

(assert (=> b!449881 m!712337))

(assert (=> b!449880 m!712335))

(assert (=> b!449880 m!712335))

(declare-fun m!712339 () Bool)

(assert (=> b!449880 m!712339))

(assert (=> b!449889 m!712331))

(assert (=> b!449882 m!712335))

(assert (=> b!449882 m!712335))

(assert (=> b!449882 m!712339))

(assert (=> bm!31087 m!712327))

(assert (=> b!449886 m!712331))

(declare-fun m!712341 () Bool)

(assert (=> b!449883 m!712341))

(assert (=> b!449490 d!172208))

(declare-fun d!172210 () Bool)

(assert (=> d!172210 (= (inv!5431 (tag!1101 (h!9757 rules!1920))) (= (mod (str.len (value!28397 (tag!1101 (h!9757 rules!1920)))) 2) 0))))

(assert (=> b!449469 d!172210))

(declare-fun d!172212 () Bool)

(declare-fun res!199698 () Bool)

(declare-fun e!274932 () Bool)

(assert (=> d!172212 (=> (not res!199698) (not e!274932))))

(assert (=> d!172212 (= res!199698 (semiInverseModEq!334 (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toValue!1660 (transformation!845 (h!9757 rules!1920)))))))

(assert (=> d!172212 (= (inv!5434 (transformation!845 (h!9757 rules!1920))) e!274932)))

(declare-fun b!449893 () Bool)

(assert (=> b!449893 (= e!274932 (equivClasses!317 (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toValue!1660 (transformation!845 (h!9757 rules!1920)))))))

(assert (= (and d!172212 res!199698) b!449893))

(declare-fun m!712343 () Bool)

(assert (=> d!172212 m!712343))

(declare-fun m!712345 () Bool)

(assert (=> b!449893 m!712345))

(assert (=> b!449469 d!172212))

(declare-fun d!172214 () Bool)

(assert (=> d!172214 (= (list!1931 (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199349 separatorToken!170 0)) (list!1935 (c!91062 (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199349 separatorToken!170 0))))))

(declare-fun bs!55719 () Bool)

(assert (= bs!55719 d!172214))

(declare-fun m!712347 () Bool)

(assert (=> bs!55719 m!712347))

(assert (=> b!449467 d!172214))

(declare-fun bs!55722 () Bool)

(declare-fun d!172216 () Bool)

(assert (= bs!55722 (and d!172216 b!449478)))

(declare-fun lambda!13064 () Int)

(assert (=> bs!55722 (= lambda!13064 lambda!13041)))

(declare-fun bs!55723 () Bool)

(assert (= bs!55723 (and d!172216 b!449446)))

(assert (=> bs!55723 (not (= lambda!13064 lambda!13042))))

(declare-fun bs!55724 () Bool)

(assert (= bs!55724 (and d!172216 d!172114)))

(assert (=> bs!55724 (not (= lambda!13064 lambda!13047))))

(declare-fun bs!55725 () Bool)

(declare-fun b!449972 () Bool)

(assert (= bs!55725 (and b!449972 b!449478)))

(declare-fun lambda!13065 () Int)

(assert (=> bs!55725 (not (= lambda!13065 lambda!13041))))

(declare-fun bs!55726 () Bool)

(assert (= bs!55726 (and b!449972 b!449446)))

(assert (=> bs!55726 (= lambda!13065 lambda!13042)))

(declare-fun bs!55727 () Bool)

(assert (= bs!55727 (and b!449972 d!172114)))

(assert (=> bs!55727 (= lambda!13065 lambda!13047)))

(declare-fun bs!55728 () Bool)

(assert (= bs!55728 (and b!449972 d!172216)))

(assert (=> bs!55728 (not (= lambda!13065 lambda!13064))))

(declare-fun b!449982 () Bool)

(declare-fun e!274993 () Bool)

(assert (=> b!449982 (= e!274993 true)))

(declare-fun b!449981 () Bool)

(declare-fun e!274992 () Bool)

(assert (=> b!449981 (= e!274992 e!274993)))

(declare-fun b!449980 () Bool)

(declare-fun e!274991 () Bool)

(assert (=> b!449980 (= e!274991 e!274992)))

(assert (=> b!449972 e!274991))

(assert (= b!449981 b!449982))

(assert (= b!449980 b!449981))

(assert (= (and b!449972 ((_ is Cons!4360) rules!1920)) b!449980))

(assert (=> b!449982 (< (dynLambda!2620 order!3821 (toValue!1660 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13065))))

(assert (=> b!449982 (< (dynLambda!2622 order!3825 (toChars!1519 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13065))))

(assert (=> b!449972 true))

(declare-fun bm!31100 () Bool)

(declare-fun call!31108 () Token!1434)

(assert (=> bm!31100 (= call!31108 (apply!1104 lt!199349 0))))

(declare-fun b!449971 () Bool)

(declare-fun e!274988 () BalanceConc!3032)

(assert (=> b!449971 (= e!274988 (BalanceConc!3033 Empty!1512))))

(declare-fun call!31106 () Token!1434)

(assert (=> b!449971 (= (print!456 thiss!17480 (singletonSeq!391 call!31106)) (printTailRec!417 thiss!17480 (singletonSeq!391 call!31106) 0 (BalanceConc!3033 Empty!1512)))))

(declare-fun lt!199621 () Unit!7841)

(declare-fun Unit!7857 () Unit!7841)

(assert (=> b!449971 (= lt!199621 Unit!7857)))

(declare-fun lt!199622 () BalanceConc!3032)

(declare-fun call!31109 () BalanceConc!3032)

(declare-fun lt!199616 () Unit!7841)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!186 (LexerInterface!731 List!4370 List!4369 List!4369) Unit!7841)

(assert (=> b!449971 (= lt!199616 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!186 thiss!17480 rules!1920 (list!1931 call!31109) (list!1931 lt!199622)))))

(assert (=> b!449971 false))

(declare-fun lt!199619 () Unit!7841)

(declare-fun Unit!7858 () Unit!7841)

(assert (=> b!449971 (= lt!199619 Unit!7858)))

(declare-fun e!274985 () BalanceConc!3032)

(declare-fun e!274989 () BalanceConc!3032)

(assert (=> b!449972 (= e!274985 e!274989)))

(declare-fun lt!199627 () List!4371)

(assert (=> b!449972 (= lt!199627 (list!1934 lt!199349))))

(declare-fun lt!199614 () Unit!7841)

(assert (=> b!449972 (= lt!199614 (lemmaDropApply!278 lt!199627 0))))

(assert (=> b!449972 (= (head!1091 (drop!307 lt!199627 0)) (apply!1107 lt!199627 0))))

(declare-fun lt!199626 () Unit!7841)

(assert (=> b!449972 (= lt!199626 lt!199614)))

(declare-fun lt!199624 () List!4371)

(assert (=> b!449972 (= lt!199624 (list!1934 lt!199349))))

(declare-fun lt!199615 () Unit!7841)

(assert (=> b!449972 (= lt!199615 (lemmaDropTail!270 lt!199624 0))))

(assert (=> b!449972 (= (tail!626 (drop!307 lt!199624 0)) (drop!307 lt!199624 (+ 0 1)))))

(declare-fun lt!199625 () Unit!7841)

(assert (=> b!449972 (= lt!199625 lt!199615)))

(declare-fun lt!199623 () Unit!7841)

(assert (=> b!449972 (= lt!199623 (forallContained!398 (list!1934 lt!199349) lambda!13065 (apply!1104 lt!199349 0)))))

(assert (=> b!449972 (= lt!199622 (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199349 separatorToken!170 (+ 0 1)))))

(declare-fun lt!199618 () Option!1119)

(assert (=> b!449972 (= lt!199618 (maxPrefixZipperSequence!410 thiss!17480 rules!1920 (++!1266 (charsOf!488 (apply!1104 lt!199349 0)) lt!199622)))))

(declare-fun res!199750 () Bool)

(assert (=> b!449972 (= res!199750 ((_ is Some!1118) lt!199618))))

(declare-fun e!274986 () Bool)

(assert (=> b!449972 (=> (not res!199750) (not e!274986))))

(declare-fun c!91172 () Bool)

(assert (=> b!449972 (= c!91172 e!274986)))

(declare-fun bm!31101 () Bool)

(assert (=> bm!31101 (= call!31106 call!31108)))

(declare-fun b!449973 () Bool)

(declare-fun call!31107 () BalanceConc!3032)

(assert (=> b!449973 (= e!274988 (++!1266 call!31107 lt!199622))))

(declare-fun b!449974 () Bool)

(assert (=> b!449974 (= e!274985 (BalanceConc!3033 Empty!1512))))

(declare-fun b!449975 () Bool)

(declare-fun e!274987 () Bool)

(assert (=> b!449975 (= e!274987 (not (= (_1!2853 (v!15417 lt!199618)) call!31108)))))

(declare-fun bm!31103 () Bool)

(declare-fun c!91171 () Bool)

(assert (=> bm!31103 (= call!31109 (charsOf!488 (ite c!91171 separatorToken!170 call!31106)))))

(declare-fun b!449976 () Bool)

(assert (=> b!449976 (= e!274986 (= (_1!2853 (v!15417 lt!199618)) (apply!1104 lt!199349 0)))))

(declare-fun bm!31102 () Bool)

(declare-fun call!31105 () BalanceConc!3032)

(assert (=> bm!31102 (= call!31107 (++!1266 call!31105 (ite c!91172 lt!199622 call!31109)))))

(declare-fun lt!199617 () BalanceConc!3032)

(assert (=> d!172216 (= (list!1931 lt!199617) (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 (dropList!238 lt!199349 0) separatorToken!170))))

(assert (=> d!172216 (= lt!199617 e!274985)))

(declare-fun c!91173 () Bool)

(assert (=> d!172216 (= c!91173 (>= 0 (size!3579 lt!199349)))))

(declare-fun lt!199620 () Unit!7841)

(declare-fun lemmaContentSubsetPreservesForall!182 (List!4371 List!4371 Int) Unit!7841)

(assert (=> d!172216 (= lt!199620 (lemmaContentSubsetPreservesForall!182 (list!1934 lt!199349) (dropList!238 lt!199349 0) lambda!13064))))

(declare-fun e!274990 () Bool)

(assert (=> d!172216 e!274990))

(declare-fun res!199748 () Bool)

(assert (=> d!172216 (=> (not res!199748) (not e!274990))))

(assert (=> d!172216 (= res!199748 (>= 0 0))))

(assert (=> d!172216 (= (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199349 separatorToken!170 0) lt!199617)))

(declare-fun b!449977 () Bool)

(assert (=> b!449977 (= e!274989 call!31107)))

(declare-fun b!449978 () Bool)

(assert (=> b!449978 (= c!91171 e!274987)))

(declare-fun res!199749 () Bool)

(assert (=> b!449978 (=> (not res!199749) (not e!274987))))

(assert (=> b!449978 (= res!199749 ((_ is Some!1118) lt!199618))))

(assert (=> b!449978 (= e!274989 e!274988)))

(declare-fun bm!31104 () Bool)

(assert (=> bm!31104 (= call!31105 (charsOf!488 (ite c!91172 call!31108 call!31106)))))

(declare-fun b!449979 () Bool)

(assert (=> b!449979 (= e!274990 (<= 0 (size!3579 lt!199349)))))

(assert (= (and d!172216 res!199748) b!449979))

(assert (= (and d!172216 c!91173) b!449974))

(assert (= (and d!172216 (not c!91173)) b!449972))

(assert (= (and b!449972 res!199750) b!449976))

(assert (= (and b!449972 c!91172) b!449977))

(assert (= (and b!449972 (not c!91172)) b!449978))

(assert (= (and b!449978 res!199749) b!449975))

(assert (= (and b!449978 c!91171) b!449973))

(assert (= (and b!449978 (not c!91171)) b!449971))

(assert (= (or b!449973 b!449971) bm!31101))

(assert (= (or b!449973 b!449971) bm!31103))

(assert (= (or b!449977 bm!31101 b!449975) bm!31100))

(assert (= (or b!449977 b!449973) bm!31104))

(assert (= (or b!449977 b!449973) bm!31102))

(assert (=> b!449972 m!711875))

(declare-fun m!712425 () Bool)

(assert (=> b!449972 m!712425))

(declare-fun m!712427 () Bool)

(assert (=> b!449972 m!712427))

(declare-fun m!712429 () Bool)

(assert (=> b!449972 m!712429))

(declare-fun m!712431 () Bool)

(assert (=> b!449972 m!712431))

(declare-fun m!712433 () Bool)

(assert (=> b!449972 m!712433))

(declare-fun m!712435 () Bool)

(assert (=> b!449972 m!712435))

(declare-fun m!712437 () Bool)

(assert (=> b!449972 m!712437))

(assert (=> b!449972 m!712427))

(assert (=> b!449972 m!712431))

(declare-fun m!712439 () Bool)

(assert (=> b!449972 m!712439))

(declare-fun m!712441 () Bool)

(assert (=> b!449972 m!712441))

(declare-fun m!712443 () Bool)

(assert (=> b!449972 m!712443))

(assert (=> b!449972 m!712435))

(assert (=> b!449972 m!712437))

(declare-fun m!712445 () Bool)

(assert (=> b!449972 m!712445))

(declare-fun m!712447 () Bool)

(assert (=> b!449972 m!712447))

(assert (=> b!449972 m!711875))

(assert (=> b!449972 m!712435))

(declare-fun m!712449 () Bool)

(assert (=> b!449972 m!712449))

(assert (=> b!449972 m!712443))

(declare-fun m!712451 () Bool)

(assert (=> b!449972 m!712451))

(declare-fun m!712453 () Bool)

(assert (=> bm!31102 m!712453))

(declare-fun m!712455 () Bool)

(assert (=> b!449979 m!712455))

(declare-fun m!712457 () Bool)

(assert (=> b!449973 m!712457))

(declare-fun m!712459 () Bool)

(assert (=> bm!31104 m!712459))

(assert (=> b!449976 m!712435))

(declare-fun m!712461 () Bool)

(assert (=> bm!31103 m!712461))

(assert (=> d!172216 m!712455))

(declare-fun m!712463 () Bool)

(assert (=> d!172216 m!712463))

(declare-fun m!712465 () Bool)

(assert (=> d!172216 m!712465))

(assert (=> d!172216 m!712463))

(assert (=> d!172216 m!711875))

(assert (=> d!172216 m!712463))

(declare-fun m!712467 () Bool)

(assert (=> d!172216 m!712467))

(declare-fun m!712469 () Bool)

(assert (=> d!172216 m!712469))

(assert (=> d!172216 m!711875))

(assert (=> bm!31100 m!712435))

(declare-fun m!712471 () Bool)

(assert (=> b!449971 m!712471))

(declare-fun m!712473 () Bool)

(assert (=> b!449971 m!712473))

(declare-fun m!712475 () Bool)

(assert (=> b!449971 m!712475))

(assert (=> b!449971 m!712473))

(assert (=> b!449971 m!712471))

(declare-fun m!712477 () Bool)

(assert (=> b!449971 m!712477))

(assert (=> b!449971 m!712475))

(declare-fun m!712479 () Bool)

(assert (=> b!449971 m!712479))

(assert (=> b!449971 m!712475))

(declare-fun m!712481 () Bool)

(assert (=> b!449971 m!712481))

(assert (=> b!449467 d!172216))

(declare-fun bs!55739 () Bool)

(declare-fun b!450018 () Bool)

(assert (= bs!55739 (and b!450018 d!172114)))

(declare-fun lambda!13073 () Int)

(assert (=> bs!55739 (= lambda!13073 lambda!13047)))

(declare-fun bs!55740 () Bool)

(assert (= bs!55740 (and b!450018 b!449972)))

(assert (=> bs!55740 (= lambda!13073 lambda!13065)))

(declare-fun bs!55741 () Bool)

(assert (= bs!55741 (and b!450018 d!172216)))

(assert (=> bs!55741 (not (= lambda!13073 lambda!13064))))

(declare-fun bs!55742 () Bool)

(assert (= bs!55742 (and b!450018 b!449446)))

(assert (=> bs!55742 (= lambda!13073 lambda!13042)))

(declare-fun bs!55743 () Bool)

(assert (= bs!55743 (and b!450018 b!449478)))

(assert (=> bs!55743 (not (= lambda!13073 lambda!13041))))

(declare-fun b!450021 () Bool)

(declare-fun e!275017 () Bool)

(assert (=> b!450021 (= e!275017 true)))

(declare-fun b!450020 () Bool)

(declare-fun e!275016 () Bool)

(assert (=> b!450020 (= e!275016 e!275017)))

(declare-fun b!450019 () Bool)

(declare-fun e!275015 () Bool)

(assert (=> b!450019 (= e!275015 e!275016)))

(assert (=> b!450018 e!275015))

(assert (= b!450020 b!450021))

(assert (= b!450019 b!450020))

(assert (= (and b!450018 ((_ is Cons!4360) rules!1920)) b!450019))

(assert (=> b!450021 (< (dynLambda!2620 order!3821 (toValue!1660 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13073))))

(assert (=> b!450021 (< (dynLambda!2622 order!3825 (toChars!1519 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13073))))

(assert (=> b!450018 true))

(declare-fun b!450009 () Bool)

(declare-fun e!275012 () List!4369)

(declare-fun call!31121 () BalanceConc!3032)

(assert (=> b!450009 (= e!275012 (list!1931 call!31121))))

(declare-fun d!172256 () Bool)

(declare-fun c!91185 () Bool)

(assert (=> d!172256 (= c!91185 ((_ is Cons!4361) tokens!465))))

(declare-fun e!275011 () List!4369)

(assert (=> d!172256 (= (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!275011)))

(declare-fun b!450010 () Bool)

(declare-fun e!275010 () List!4369)

(assert (=> b!450010 (= e!275010 Nil!4359)))

(assert (=> b!450010 (= (print!456 thiss!17480 (singletonSeq!391 (h!9758 tokens!465))) (printTailRec!417 thiss!17480 (singletonSeq!391 (h!9758 tokens!465)) 0 (BalanceConc!3033 Empty!1512)))))

(declare-fun lt!199649 () Unit!7841)

(declare-fun Unit!7859 () Unit!7841)

(assert (=> b!450010 (= lt!199649 Unit!7859)))

(declare-fun lt!199646 () Unit!7841)

(declare-fun call!31124 () List!4369)

(declare-fun lt!199650 () List!4369)

(assert (=> b!450010 (= lt!199646 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!186 thiss!17480 rules!1920 call!31124 lt!199650))))

(assert (=> b!450010 false))

(declare-fun lt!199651 () Unit!7841)

(declare-fun Unit!7860 () Unit!7841)

(assert (=> b!450010 (= lt!199651 Unit!7860)))

(declare-fun b!450011 () Bool)

(declare-fun e!275014 () BalanceConc!3032)

(assert (=> b!450011 (= e!275014 call!31121)))

(declare-fun b!450012 () Bool)

(assert (=> b!450012 (= e!275014 (charsOf!488 separatorToken!170))))

(declare-fun bm!31115 () Bool)

(declare-fun call!31123 () BalanceConc!3032)

(assert (=> bm!31115 (= call!31121 call!31123)))

(declare-fun bm!31116 () Bool)

(declare-fun c!91186 () Bool)

(declare-fun call!31120 () List!4369)

(assert (=> bm!31116 (= call!31120 (list!1931 (ite c!91186 call!31123 e!275014)))))

(declare-fun bm!31117 () Bool)

(assert (=> bm!31117 (= call!31123 (charsOf!488 (h!9758 tokens!465)))))

(declare-fun bm!31118 () Bool)

(declare-fun c!91184 () Bool)

(assert (=> bm!31118 (= c!91184 c!91186)))

(declare-fun call!31122 () List!4369)

(assert (=> bm!31118 (= call!31122 (++!1264 e!275012 (ite c!91186 lt!199650 call!31124)))))

(declare-fun b!450013 () Bool)

(assert (=> b!450013 (= e!275011 Nil!4359)))

(declare-fun b!450014 () Bool)

(assert (=> b!450014 (= e!275012 call!31120)))

(declare-fun b!450015 () Bool)

(declare-fun c!91188 () Bool)

(declare-fun lt!199647 () Option!1117)

(assert (=> b!450015 (= c!91188 (and ((_ is Some!1116) lt!199647) (not (= (_1!2852 (v!15415 lt!199647)) (h!9758 tokens!465)))))))

(declare-fun e!275013 () List!4369)

(assert (=> b!450015 (= e!275013 e!275010)))

(declare-fun b!450016 () Bool)

(assert (=> b!450016 (= e!275013 call!31122)))

(declare-fun bm!31119 () Bool)

(assert (=> bm!31119 (= call!31124 call!31120)))

(declare-fun c!91187 () Bool)

(assert (=> bm!31119 (= c!91187 c!91188)))

(declare-fun b!450017 () Bool)

(assert (=> b!450017 (= e!275010 (++!1264 call!31122 lt!199650))))

(assert (=> b!450018 (= e!275011 e!275013)))

(declare-fun lt!199648 () Unit!7841)

(assert (=> b!450018 (= lt!199648 (forallContained!398 tokens!465 lambda!13073 (h!9758 tokens!465)))))

(assert (=> b!450018 (= lt!199650 (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 (t!70795 tokens!465) separatorToken!170))))

(assert (=> b!450018 (= lt!199647 (maxPrefix!447 thiss!17480 rules!1920 (++!1264 (list!1931 (charsOf!488 (h!9758 tokens!465))) lt!199650)))))

(assert (=> b!450018 (= c!91186 (and ((_ is Some!1116) lt!199647) (= (_1!2852 (v!15415 lt!199647)) (h!9758 tokens!465))))))

(assert (= (and d!172256 c!91185) b!450018))

(assert (= (and d!172256 (not c!91185)) b!450013))

(assert (= (and b!450018 c!91186) b!450016))

(assert (= (and b!450018 (not c!91186)) b!450015))

(assert (= (and b!450015 c!91188) b!450017))

(assert (= (and b!450015 (not c!91188)) b!450010))

(assert (= (or b!450017 b!450010) bm!31115))

(assert (= (or b!450017 b!450010) bm!31119))

(assert (= (and bm!31119 c!91187) b!450012))

(assert (= (and bm!31119 (not c!91187)) b!450011))

(assert (= (or b!450016 bm!31115) bm!31117))

(assert (= (or b!450016 bm!31119) bm!31116))

(assert (= (or b!450016 b!450017) bm!31118))

(assert (= (and bm!31118 c!91184) b!450014))

(assert (= (and bm!31118 (not c!91184)) b!450009))

(declare-fun m!712497 () Bool)

(assert (=> bm!31116 m!712497))

(declare-fun m!712499 () Bool)

(assert (=> bm!31118 m!712499))

(assert (=> b!450010 m!711665))

(assert (=> b!450010 m!711665))

(declare-fun m!712501 () Bool)

(assert (=> b!450010 m!712501))

(assert (=> b!450010 m!711665))

(declare-fun m!712503 () Bool)

(assert (=> b!450010 m!712503))

(declare-fun m!712505 () Bool)

(assert (=> b!450010 m!712505))

(assert (=> b!450012 m!711621))

(declare-fun m!712507 () Bool)

(assert (=> b!450017 m!712507))

(assert (=> b!450018 m!711637))

(declare-fun m!712509 () Bool)

(assert (=> b!450018 m!712509))

(assert (=> b!450018 m!711629))

(declare-fun m!712511 () Bool)

(assert (=> b!450018 m!712511))

(assert (=> b!450018 m!711629))

(assert (=> b!450018 m!711637))

(assert (=> b!450018 m!711617))

(assert (=> b!450018 m!712509))

(declare-fun m!712513 () Bool)

(assert (=> b!450018 m!712513))

(declare-fun m!712515 () Bool)

(assert (=> b!450009 m!712515))

(assert (=> bm!31117 m!711629))

(assert (=> b!449467 d!172256))

(declare-fun d!172264 () Bool)

(declare-fun isEmpty!3307 (Option!1119) Bool)

(assert (=> d!172264 (= (isDefined!957 (maxPrefixZipperSequence!410 thiss!17480 rules!1920 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465))))) (not (isEmpty!3307 (maxPrefixZipperSequence!410 thiss!17480 rules!1920 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))))

(declare-fun bs!55744 () Bool)

(assert (= bs!55744 d!172264))

(assert (=> bs!55744 m!711579))

(declare-fun m!712517 () Bool)

(assert (=> bs!55744 m!712517))

(assert (=> b!449446 d!172264))

(declare-fun b!450053 () Bool)

(declare-fun res!199780 () Bool)

(declare-fun e!275039 () Bool)

(assert (=> b!450053 (=> (not res!199780) (not e!275039))))

(declare-fun e!275044 () Bool)

(assert (=> b!450053 (= res!199780 e!275044)))

(declare-fun res!199778 () Bool)

(assert (=> b!450053 (=> res!199778 e!275044)))

(declare-fun lt!199673 () Option!1119)

(assert (=> b!450053 (= res!199778 (not (isDefined!957 lt!199673)))))

(declare-fun b!450054 () Bool)

(declare-fun e!275041 () Bool)

(declare-fun get!1588 (Option!1119) tuple2!5274)

(declare-fun maxPrefixZipper!183 (LexerInterface!731 List!4370 List!4369) Option!1117)

(assert (=> b!450054 (= e!275041 (= (list!1931 (_2!2853 (get!1588 lt!199673))) (_2!2852 (get!1586 (maxPrefixZipper!183 thiss!17480 rules!1920 (list!1931 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))))))

(declare-fun bm!31122 () Bool)

(declare-fun call!31127 () Option!1119)

(declare-fun maxPrefixOneRuleZipperSequence!184 (LexerInterface!731 Rule!1490 BalanceConc!3032) Option!1119)

(assert (=> bm!31122 (= call!31127 (maxPrefixOneRuleZipperSequence!184 thiss!17480 (h!9757 rules!1920) (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))

(declare-fun b!450055 () Bool)

(declare-fun e!275043 () Option!1119)

(assert (=> b!450055 (= e!275043 call!31127)))

(declare-fun b!450057 () Bool)

(declare-fun e!275042 () Bool)

(declare-fun e!275040 () Bool)

(assert (=> b!450057 (= e!275042 e!275040)))

(declare-fun res!199775 () Bool)

(assert (=> b!450057 (=> (not res!199775) (not e!275040))))

(assert (=> b!450057 (= res!199775 (= (_1!2853 (get!1588 lt!199673)) (_1!2852 (get!1586 (maxPrefix!447 thiss!17480 rules!1920 (list!1931 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))))))

(declare-fun b!450058 () Bool)

(declare-fun lt!199669 () Option!1119)

(declare-fun lt!199674 () Option!1119)

(assert (=> b!450058 (= e!275043 (ite (and ((_ is None!1118) lt!199669) ((_ is None!1118) lt!199674)) None!1118 (ite ((_ is None!1118) lt!199674) lt!199669 (ite ((_ is None!1118) lt!199669) lt!199674 (ite (>= (size!3578 (_1!2853 (v!15417 lt!199669))) (size!3578 (_1!2853 (v!15417 lt!199674)))) lt!199669 lt!199674)))))))

(assert (=> b!450058 (= lt!199669 call!31127)))

(assert (=> b!450058 (= lt!199674 (maxPrefixZipperSequence!410 thiss!17480 (t!70794 rules!1920) (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))

(declare-fun b!450056 () Bool)

(assert (=> b!450056 (= e!275039 e!275042)))

(declare-fun res!199776 () Bool)

(assert (=> b!450056 (=> res!199776 e!275042)))

(assert (=> b!450056 (= res!199776 (not (isDefined!957 lt!199673)))))

(declare-fun d!172266 () Bool)

(assert (=> d!172266 e!275039))

(declare-fun res!199779 () Bool)

(assert (=> d!172266 (=> (not res!199779) (not e!275039))))

(assert (=> d!172266 (= res!199779 (= (isDefined!957 lt!199673) (isDefined!956 (maxPrefixZipper!183 thiss!17480 rules!1920 (list!1931 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465))))))))))

(assert (=> d!172266 (= lt!199673 e!275043)))

(declare-fun c!91194 () Bool)

(assert (=> d!172266 (= c!91194 (and ((_ is Cons!4360) rules!1920) ((_ is Nil!4360) (t!70794 rules!1920))))))

(declare-fun lt!199672 () Unit!7841)

(declare-fun lt!199671 () Unit!7841)

(assert (=> d!172266 (= lt!199672 lt!199671)))

(declare-fun lt!199670 () List!4369)

(declare-fun lt!199675 () List!4369)

(assert (=> d!172266 (isPrefix!505 lt!199670 lt!199675)))

(assert (=> d!172266 (= lt!199671 (lemmaIsPrefixRefl!280 lt!199670 lt!199675))))

(assert (=> d!172266 (= lt!199675 (list!1931 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))

(assert (=> d!172266 (= lt!199670 (list!1931 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))

(assert (=> d!172266 (rulesValidInductive!275 thiss!17480 rules!1920)))

(assert (=> d!172266 (= (maxPrefixZipperSequence!410 thiss!17480 rules!1920 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))) lt!199673)))

(declare-fun b!450059 () Bool)

(assert (=> b!450059 (= e!275044 e!275041)))

(declare-fun res!199777 () Bool)

(assert (=> b!450059 (=> (not res!199777) (not e!275041))))

(assert (=> b!450059 (= res!199777 (= (_1!2853 (get!1588 lt!199673)) (_1!2852 (get!1586 (maxPrefixZipper!183 thiss!17480 rules!1920 (list!1931 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))))))

(declare-fun b!450060 () Bool)

(assert (=> b!450060 (= e!275040 (= (list!1931 (_2!2853 (get!1588 lt!199673))) (_2!2852 (get!1586 (maxPrefix!447 thiss!17480 rules!1920 (list!1931 (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465)))))))))))

(assert (= (and d!172266 c!91194) b!450055))

(assert (= (and d!172266 (not c!91194)) b!450058))

(assert (= (or b!450055 b!450058) bm!31122))

(assert (= (and d!172266 res!199779) b!450053))

(assert (= (and b!450053 (not res!199778)) b!450059))

(assert (= (and b!450059 res!199777) b!450054))

(assert (= (and b!450053 res!199780) b!450056))

(assert (= (and b!450056 (not res!199776)) b!450057))

(assert (= (and b!450057 res!199775) b!450060))

(declare-fun m!712541 () Bool)

(assert (=> b!450056 m!712541))

(declare-fun m!712543 () Bool)

(assert (=> b!450060 m!712543))

(declare-fun m!712545 () Bool)

(assert (=> b!450060 m!712545))

(assert (=> b!450060 m!711577))

(assert (=> b!450060 m!712543))

(declare-fun m!712547 () Bool)

(assert (=> b!450060 m!712547))

(assert (=> b!450060 m!712545))

(declare-fun m!712549 () Bool)

(assert (=> b!450060 m!712549))

(declare-fun m!712551 () Bool)

(assert (=> b!450060 m!712551))

(assert (=> b!450059 m!712547))

(assert (=> b!450059 m!711577))

(assert (=> b!450059 m!712543))

(assert (=> b!450059 m!712543))

(declare-fun m!712553 () Bool)

(assert (=> b!450059 m!712553))

(assert (=> b!450059 m!712553))

(declare-fun m!712555 () Bool)

(assert (=> b!450059 m!712555))

(assert (=> d!172266 m!711917))

(assert (=> d!172266 m!711577))

(assert (=> d!172266 m!712543))

(declare-fun m!712557 () Bool)

(assert (=> d!172266 m!712557))

(assert (=> d!172266 m!712543))

(assert (=> d!172266 m!712553))

(assert (=> d!172266 m!712553))

(declare-fun m!712559 () Bool)

(assert (=> d!172266 m!712559))

(assert (=> d!172266 m!712541))

(declare-fun m!712561 () Bool)

(assert (=> d!172266 m!712561))

(assert (=> b!450054 m!712551))

(assert (=> b!450054 m!712553))

(assert (=> b!450054 m!712555))

(assert (=> b!450054 m!711577))

(assert (=> b!450054 m!712543))

(assert (=> b!450054 m!712547))

(assert (=> b!450054 m!712543))

(assert (=> b!450054 m!712553))

(assert (=> b!450057 m!712547))

(assert (=> b!450057 m!711577))

(assert (=> b!450057 m!712543))

(assert (=> b!450057 m!712543))

(assert (=> b!450057 m!712545))

(assert (=> b!450057 m!712545))

(assert (=> b!450057 m!712549))

(assert (=> bm!31122 m!711577))

(declare-fun m!712563 () Bool)

(assert (=> bm!31122 m!712563))

(assert (=> b!450058 m!711577))

(declare-fun m!712565 () Bool)

(assert (=> b!450058 m!712565))

(assert (=> b!450053 m!712541))

(assert (=> b!449446 d!172266))

(declare-fun d!172274 () Bool)

(declare-fun fromListB!470 (List!4369) BalanceConc!3032)

(assert (=> d!172274 (= (seqFromList!1056 (originalCharacters!888 (h!9758 tokens!465))) (fromListB!470 (originalCharacters!888 (h!9758 tokens!465))))))

(declare-fun bs!55747 () Bool)

(assert (= bs!55747 d!172274))

(declare-fun m!712567 () Bool)

(assert (=> bs!55747 m!712567))

(assert (=> b!449446 d!172274))

(declare-fun d!172276 () Bool)

(assert (=> d!172276 (dynLambda!2625 lambda!13042 (h!9758 tokens!465))))

(declare-fun lt!199678 () Unit!7841)

(declare-fun choose!3384 (List!4371 Int Token!1434) Unit!7841)

(assert (=> d!172276 (= lt!199678 (choose!3384 tokens!465 lambda!13042 (h!9758 tokens!465)))))

(declare-fun e!275047 () Bool)

(assert (=> d!172276 e!275047))

(declare-fun res!199783 () Bool)

(assert (=> d!172276 (=> (not res!199783) (not e!275047))))

(assert (=> d!172276 (= res!199783 (forall!1260 tokens!465 lambda!13042))))

(assert (=> d!172276 (= (forallContained!398 tokens!465 lambda!13042 (h!9758 tokens!465)) lt!199678)))

(declare-fun b!450063 () Bool)

(declare-fun contains!973 (List!4371 Token!1434) Bool)

(assert (=> b!450063 (= e!275047 (contains!973 tokens!465 (h!9758 tokens!465)))))

(assert (= (and d!172276 res!199783) b!450063))

(declare-fun b_lambda!18617 () Bool)

(assert (=> (not b_lambda!18617) (not d!172276)))

(declare-fun m!712569 () Bool)

(assert (=> d!172276 m!712569))

(declare-fun m!712571 () Bool)

(assert (=> d!172276 m!712571))

(declare-fun m!712573 () Bool)

(assert (=> d!172276 m!712573))

(declare-fun m!712575 () Bool)

(assert (=> b!450063 m!712575))

(assert (=> b!449446 d!172276))

(declare-fun d!172278 () Bool)

(assert (=> d!172278 (= (list!1931 (seqFromList!1056 lt!199353)) (list!1935 (c!91062 (seqFromList!1056 lt!199353))))))

(declare-fun bs!55748 () Bool)

(assert (= bs!55748 d!172278))

(declare-fun m!712577 () Bool)

(assert (=> bs!55748 m!712577))

(assert (=> b!449489 d!172278))

(declare-fun d!172280 () Bool)

(assert (=> d!172280 (= (seqFromList!1056 lt!199353) (fromListB!470 lt!199353))))

(declare-fun bs!55749 () Bool)

(assert (= bs!55749 d!172280))

(declare-fun m!712579 () Bool)

(assert (=> bs!55749 m!712579))

(assert (=> b!449489 d!172280))

(declare-fun d!172282 () Bool)

(declare-fun lt!199679 () Token!1434)

(assert (=> d!172282 (= lt!199679 (apply!1107 (list!1934 (_1!2851 lt!199372)) 0))))

(assert (=> d!172282 (= lt!199679 (apply!1108 (c!91064 (_1!2851 lt!199372)) 0))))

(declare-fun e!275048 () Bool)

(assert (=> d!172282 e!275048))

(declare-fun res!199784 () Bool)

(assert (=> d!172282 (=> (not res!199784) (not e!275048))))

(assert (=> d!172282 (= res!199784 (<= 0 0))))

(assert (=> d!172282 (= (apply!1104 (_1!2851 lt!199372) 0) lt!199679)))

(declare-fun b!450064 () Bool)

(assert (=> b!450064 (= e!275048 (< 0 (size!3579 (_1!2851 lt!199372))))))

(assert (= (and d!172282 res!199784) b!450064))

(declare-fun m!712581 () Bool)

(assert (=> d!172282 m!712581))

(assert (=> d!172282 m!712581))

(declare-fun m!712583 () Bool)

(assert (=> d!172282 m!712583))

(declare-fun m!712585 () Bool)

(assert (=> d!172282 m!712585))

(assert (=> b!450064 m!711683))

(assert (=> b!449487 d!172282))

(declare-fun d!172284 () Bool)

(assert (=> d!172284 (not (contains!971 (usedCharacters!146 (regex!845 (rule!1532 separatorToken!170))) lt!199370))))

(declare-fun lt!199696 () Unit!7841)

(declare-fun choose!3385 (LexerInterface!731 List!4370 List!4370 Rule!1490 Rule!1490 C!3060) Unit!7841)

(assert (=> d!172284 (= lt!199696 (choose!3385 thiss!17480 rules!1920 rules!1920 (rule!1532 lt!199344) (rule!1532 separatorToken!170) lt!199370))))

(assert (=> d!172284 (rulesInvariant!697 thiss!17480 rules!1920)))

(assert (=> d!172284 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!104 thiss!17480 rules!1920 rules!1920 (rule!1532 lt!199344) (rule!1532 separatorToken!170) lt!199370) lt!199696)))

(declare-fun bs!55750 () Bool)

(assert (= bs!55750 d!172284))

(assert (=> bs!55750 m!711707))

(assert (=> bs!55750 m!711707))

(assert (=> bs!55750 m!711709))

(declare-fun m!712587 () Bool)

(assert (=> bs!55750 m!712587))

(assert (=> bs!55750 m!711645))

(assert (=> b!449488 d!172284))

(declare-fun d!172286 () Bool)

(declare-fun lt!199697 () Bool)

(assert (=> d!172286 (= lt!199697 (isEmpty!3302 (list!1931 (_2!2851 lt!199332))))))

(assert (=> d!172286 (= lt!199697 (isEmpty!3305 (c!91062 (_2!2851 lt!199332))))))

(assert (=> d!172286 (= (isEmpty!3299 (_2!2851 lt!199332)) lt!199697)))

(declare-fun bs!55751 () Bool)

(assert (= bs!55751 d!172286))

(declare-fun m!712589 () Bool)

(assert (=> bs!55751 m!712589))

(assert (=> bs!55751 m!712589))

(declare-fun m!712591 () Bool)

(assert (=> bs!55751 m!712591))

(declare-fun m!712593 () Bool)

(assert (=> bs!55751 m!712593))

(assert (=> b!449443 d!172286))

(declare-fun d!172288 () Bool)

(assert (=> d!172288 (not (matchR!387 (regex!845 (rule!1532 lt!199344)) lt!199339))))

(declare-fun lt!199700 () Unit!7841)

(declare-fun choose!3386 (Regex!1069 List!4369 C!3060) Unit!7841)

(assert (=> d!172288 (= lt!199700 (choose!3386 (regex!845 (rule!1532 lt!199344)) lt!199339 lt!199355))))

(assert (=> d!172288 (validRegex!312 (regex!845 (rule!1532 lt!199344)))))

(assert (=> d!172288 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!124 (regex!845 (rule!1532 lt!199344)) lt!199339 lt!199355) lt!199700)))

(declare-fun bs!55752 () Bool)

(assert (= bs!55752 d!172288))

(assert (=> bs!55752 m!711753))

(declare-fun m!712595 () Bool)

(assert (=> bs!55752 m!712595))

(declare-fun m!712597 () Bool)

(assert (=> bs!55752 m!712597))

(assert (=> b!449486 d!172288))

(declare-fun b!450082 () Bool)

(declare-fun res!199801 () Bool)

(declare-fun e!275061 () Bool)

(assert (=> b!450082 (=> res!199801 e!275061)))

(assert (=> b!450082 (= res!199801 (not (isEmpty!3302 (tail!624 lt!199339))))))

(declare-fun b!450083 () Bool)

(declare-fun e!275064 () Bool)

(assert (=> b!450083 (= e!275064 (matchR!387 (derivativeStep!203 (regex!845 (rule!1532 lt!199344)) (head!1092 lt!199339)) (tail!624 lt!199339)))))

(declare-fun b!450084 () Bool)

(declare-fun res!199798 () Bool)

(declare-fun e!275062 () Bool)

(assert (=> b!450084 (=> (not res!199798) (not e!275062))))

(assert (=> b!450084 (= res!199798 (isEmpty!3302 (tail!624 lt!199339)))))

(declare-fun b!450085 () Bool)

(assert (=> b!450085 (= e!275064 (nullable!237 (regex!845 (rule!1532 lt!199344))))))

(declare-fun b!450086 () Bool)

(declare-fun res!199802 () Bool)

(declare-fun e!275063 () Bool)

(assert (=> b!450086 (=> res!199802 e!275063)))

(assert (=> b!450086 (= res!199802 e!275062)))

(declare-fun res!199800 () Bool)

(assert (=> b!450086 (=> (not res!199800) (not e!275062))))

(declare-fun lt!199701 () Bool)

(assert (=> b!450086 (= res!199800 lt!199701)))

(declare-fun b!450087 () Bool)

(declare-fun e!275067 () Bool)

(assert (=> b!450087 (= e!275067 (not lt!199701))))

(declare-fun b!450088 () Bool)

(assert (=> b!450088 (= e!275061 (not (= (head!1092 lt!199339) (c!91063 (regex!845 (rule!1532 lt!199344))))))))

(declare-fun bm!31125 () Bool)

(declare-fun call!31130 () Bool)

(assert (=> bm!31125 (= call!31130 (isEmpty!3302 lt!199339))))

(declare-fun b!450089 () Bool)

(declare-fun res!199804 () Bool)

(assert (=> b!450089 (=> res!199804 e!275063)))

(assert (=> b!450089 (= res!199804 (not ((_ is ElementMatch!1069) (regex!845 (rule!1532 lt!199344)))))))

(assert (=> b!450089 (= e!275067 e!275063)))

(declare-fun b!450090 () Bool)

(declare-fun e!275065 () Bool)

(assert (=> b!450090 (= e!275065 e!275061)))

(declare-fun res!199799 () Bool)

(assert (=> b!450090 (=> res!199799 e!275061)))

(assert (=> b!450090 (= res!199799 call!31130)))

(declare-fun b!450081 () Bool)

(assert (=> b!450081 (= e!275063 e!275065)))

(declare-fun res!199797 () Bool)

(assert (=> b!450081 (=> (not res!199797) (not e!275065))))

(assert (=> b!450081 (= res!199797 (not lt!199701))))

(declare-fun d!172290 () Bool)

(declare-fun e!275066 () Bool)

(assert (=> d!172290 e!275066))

(declare-fun c!91199 () Bool)

(assert (=> d!172290 (= c!91199 ((_ is EmptyExpr!1069) (regex!845 (rule!1532 lt!199344))))))

(assert (=> d!172290 (= lt!199701 e!275064)))

(declare-fun c!91201 () Bool)

(assert (=> d!172290 (= c!91201 (isEmpty!3302 lt!199339))))

(assert (=> d!172290 (validRegex!312 (regex!845 (rule!1532 lt!199344)))))

(assert (=> d!172290 (= (matchR!387 (regex!845 (rule!1532 lt!199344)) lt!199339) lt!199701)))

(declare-fun b!450091 () Bool)

(assert (=> b!450091 (= e!275062 (= (head!1092 lt!199339) (c!91063 (regex!845 (rule!1532 lt!199344)))))))

(declare-fun b!450092 () Bool)

(assert (=> b!450092 (= e!275066 e!275067)))

(declare-fun c!91200 () Bool)

(assert (=> b!450092 (= c!91200 ((_ is EmptyLang!1069) (regex!845 (rule!1532 lt!199344))))))

(declare-fun b!450093 () Bool)

(declare-fun res!199803 () Bool)

(assert (=> b!450093 (=> (not res!199803) (not e!275062))))

(assert (=> b!450093 (= res!199803 (not call!31130))))

(declare-fun b!450094 () Bool)

(assert (=> b!450094 (= e!275066 (= lt!199701 call!31130))))

(assert (= (and d!172290 c!91201) b!450085))

(assert (= (and d!172290 (not c!91201)) b!450083))

(assert (= (and d!172290 c!91199) b!450094))

(assert (= (and d!172290 (not c!91199)) b!450092))

(assert (= (and b!450092 c!91200) b!450087))

(assert (= (and b!450092 (not c!91200)) b!450089))

(assert (= (and b!450089 (not res!199804)) b!450086))

(assert (= (and b!450086 res!199800) b!450093))

(assert (= (and b!450093 res!199803) b!450084))

(assert (= (and b!450084 res!199798) b!450091))

(assert (= (and b!450086 (not res!199802)) b!450081))

(assert (= (and b!450081 res!199797) b!450090))

(assert (= (and b!450090 (not res!199799)) b!450082))

(assert (= (and b!450082 (not res!199801)) b!450088))

(assert (= (or b!450094 b!450093 b!450090) bm!31125))

(assert (=> d!172290 m!712035))

(assert (=> d!172290 m!712597))

(assert (=> b!450083 m!711735))

(assert (=> b!450083 m!711735))

(declare-fun m!712599 () Bool)

(assert (=> b!450083 m!712599))

(assert (=> b!450083 m!712041))

(assert (=> b!450083 m!712599))

(assert (=> b!450083 m!712041))

(declare-fun m!712601 () Bool)

(assert (=> b!450083 m!712601))

(assert (=> b!450082 m!712041))

(assert (=> b!450082 m!712041))

(assert (=> b!450082 m!712045))

(assert (=> b!450091 m!711735))

(assert (=> b!450084 m!712041))

(assert (=> b!450084 m!712041))

(assert (=> b!450084 m!712045))

(assert (=> bm!31125 m!712035))

(assert (=> b!450088 m!711735))

(declare-fun m!712603 () Bool)

(assert (=> b!450085 m!712603))

(assert (=> b!449486 d!172290))

(declare-fun d!172292 () Bool)

(declare-fun res!199811 () Bool)

(declare-fun e!275074 () Bool)

(assert (=> d!172292 (=> res!199811 e!275074)))

(assert (=> d!172292 (= res!199811 ((_ is Nil!4361) (t!70795 tokens!465)))))

(assert (=> d!172292 (= (forall!1260 (t!70795 tokens!465) lambda!13041) e!275074)))

(declare-fun b!450103 () Bool)

(declare-fun e!275075 () Bool)

(assert (=> b!450103 (= e!275074 e!275075)))

(declare-fun res!199812 () Bool)

(assert (=> b!450103 (=> (not res!199812) (not e!275075))))

(assert (=> b!450103 (= res!199812 (dynLambda!2625 lambda!13041 (h!9758 (t!70795 tokens!465))))))

(declare-fun b!450104 () Bool)

(assert (=> b!450104 (= e!275075 (forall!1260 (t!70795 (t!70795 tokens!465)) lambda!13041))))

(assert (= (and d!172292 (not res!199811)) b!450103))

(assert (= (and b!450103 res!199812) b!450104))

(declare-fun b_lambda!18619 () Bool)

(assert (=> (not b_lambda!18619) (not b!450103)))

(declare-fun m!712605 () Bool)

(assert (=> b!450103 m!712605))

(declare-fun m!712609 () Bool)

(assert (=> b!450104 m!712609))

(assert (=> b!449465 d!172292))

(declare-fun d!172294 () Bool)

(assert (=> d!172294 (= (inv!5431 (tag!1101 (rule!1532 separatorToken!170))) (= (mod (str.len (value!28397 (tag!1101 (rule!1532 separatorToken!170)))) 2) 0))))

(assert (=> b!449444 d!172294))

(declare-fun d!172296 () Bool)

(declare-fun res!199813 () Bool)

(declare-fun e!275076 () Bool)

(assert (=> d!172296 (=> (not res!199813) (not e!275076))))

(assert (=> d!172296 (= res!199813 (semiInverseModEq!334 (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (toValue!1660 (transformation!845 (rule!1532 separatorToken!170)))))))

(assert (=> d!172296 (= (inv!5434 (transformation!845 (rule!1532 separatorToken!170))) e!275076)))

(declare-fun b!450105 () Bool)

(assert (=> b!450105 (= e!275076 (equivClasses!317 (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (toValue!1660 (transformation!845 (rule!1532 separatorToken!170)))))))

(assert (= (and d!172296 res!199813) b!450105))

(declare-fun m!712625 () Bool)

(assert (=> d!172296 m!712625))

(declare-fun m!712627 () Bool)

(assert (=> b!450105 m!712627))

(assert (=> b!449444 d!172296))

(declare-fun d!172298 () Bool)

(declare-fun lt!199710 () Bool)

(declare-fun e!275077 () Bool)

(assert (=> d!172298 (= lt!199710 e!275077)))

(declare-fun res!199816 () Bool)

(assert (=> d!172298 (=> (not res!199816) (not e!275077))))

(assert (=> d!172298 (= res!199816 (= (list!1934 (_1!2851 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 (h!9758 tokens!465)))))) (list!1934 (singletonSeq!391 (h!9758 tokens!465)))))))

(declare-fun e!275078 () Bool)

(assert (=> d!172298 (= lt!199710 e!275078)))

(declare-fun res!199815 () Bool)

(assert (=> d!172298 (=> (not res!199815) (not e!275078))))

(declare-fun lt!199709 () tuple2!5270)

(assert (=> d!172298 (= res!199815 (= (size!3579 (_1!2851 lt!199709)) 1))))

(assert (=> d!172298 (= lt!199709 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 (h!9758 tokens!465)))))))

(assert (=> d!172298 (not (isEmpty!3300 rules!1920))))

(assert (=> d!172298 (= (rulesProduceIndividualToken!480 thiss!17480 rules!1920 (h!9758 tokens!465)) lt!199710)))

(declare-fun b!450106 () Bool)

(declare-fun res!199814 () Bool)

(assert (=> b!450106 (=> (not res!199814) (not e!275078))))

(assert (=> b!450106 (= res!199814 (= (apply!1104 (_1!2851 lt!199709) 0) (h!9758 tokens!465)))))

(declare-fun b!450107 () Bool)

(assert (=> b!450107 (= e!275078 (isEmpty!3299 (_2!2851 lt!199709)))))

(declare-fun b!450108 () Bool)

(assert (=> b!450108 (= e!275077 (isEmpty!3299 (_2!2851 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 (h!9758 tokens!465)))))))))

(assert (= (and d!172298 res!199815) b!450106))

(assert (= (and b!450106 res!199814) b!450107))

(assert (= (and d!172298 res!199816) b!450108))

(assert (=> d!172298 m!711665))

(assert (=> d!172298 m!711665))

(declare-fun m!712641 () Bool)

(assert (=> d!172298 m!712641))

(assert (=> d!172298 m!712501))

(declare-fun m!712643 () Bool)

(assert (=> d!172298 m!712643))

(declare-fun m!712645 () Bool)

(assert (=> d!172298 m!712645))

(assert (=> d!172298 m!711665))

(assert (=> d!172298 m!712501))

(assert (=> d!172298 m!711575))

(declare-fun m!712649 () Bool)

(assert (=> d!172298 m!712649))

(declare-fun m!712651 () Bool)

(assert (=> b!450106 m!712651))

(declare-fun m!712653 () Bool)

(assert (=> b!450107 m!712653))

(assert (=> b!450108 m!711665))

(assert (=> b!450108 m!711665))

(assert (=> b!450108 m!712501))

(assert (=> b!450108 m!712501))

(assert (=> b!450108 m!712643))

(declare-fun m!712655 () Bool)

(assert (=> b!450108 m!712655))

(assert (=> b!449463 d!172298))

(declare-fun d!172304 () Bool)

(declare-fun e!275089 () Bool)

(assert (=> d!172304 e!275089))

(declare-fun res!199830 () Bool)

(assert (=> d!172304 (=> res!199830 e!275089)))

(declare-fun lt!199716 () Bool)

(assert (=> d!172304 (= res!199830 (not lt!199716))))

(declare-fun e!275090 () Bool)

(assert (=> d!172304 (= lt!199716 e!275090)))

(declare-fun res!199829 () Bool)

(assert (=> d!172304 (=> res!199829 e!275090)))

(assert (=> d!172304 (= res!199829 ((_ is Nil!4359) lt!199341))))

(assert (=> d!172304 (= (isPrefix!505 lt!199341 lt!199348) lt!199716)))

(declare-fun b!450123 () Bool)

(assert (=> b!450123 (= e!275089 (>= (size!3581 lt!199348) (size!3581 lt!199341)))))

(declare-fun b!450122 () Bool)

(declare-fun e!275088 () Bool)

(assert (=> b!450122 (= e!275088 (isPrefix!505 (tail!624 lt!199341) (tail!624 lt!199348)))))

(declare-fun b!450121 () Bool)

(declare-fun res!199828 () Bool)

(assert (=> b!450121 (=> (not res!199828) (not e!275088))))

(assert (=> b!450121 (= res!199828 (= (head!1092 lt!199341) (head!1092 lt!199348)))))

(declare-fun b!450120 () Bool)

(assert (=> b!450120 (= e!275090 e!275088)))

(declare-fun res!199831 () Bool)

(assert (=> b!450120 (=> (not res!199831) (not e!275088))))

(assert (=> b!450120 (= res!199831 (not ((_ is Nil!4359) lt!199348)))))

(assert (= (and d!172304 (not res!199829)) b!450120))

(assert (= (and b!450120 res!199831) b!450121))

(assert (= (and b!450121 res!199828) b!450122))

(assert (= (and d!172304 (not res!199830)) b!450123))

(declare-fun m!712665 () Bool)

(assert (=> b!450123 m!712665))

(assert (=> b!450123 m!712073))

(assert (=> b!450122 m!712335))

(declare-fun m!712667 () Bool)

(assert (=> b!450122 m!712667))

(assert (=> b!450122 m!712335))

(assert (=> b!450122 m!712667))

(declare-fun m!712669 () Bool)

(assert (=> b!450122 m!712669))

(assert (=> b!450121 m!712331))

(declare-fun m!712671 () Bool)

(assert (=> b!450121 m!712671))

(assert (=> b!449485 d!172304))

(declare-fun d!172308 () Bool)

(assert (=> d!172308 (= lt!199374 (_2!2852 lt!199343))))

(declare-fun lt!199721 () Unit!7841)

(declare-fun choose!3387 (List!4369 List!4369 List!4369 List!4369 List!4369) Unit!7841)

(assert (=> d!172308 (= lt!199721 (choose!3387 lt!199341 lt!199374 lt!199341 (_2!2852 lt!199343) lt!199353))))

(assert (=> d!172308 (isPrefix!505 lt!199341 lt!199353)))

(assert (=> d!172308 (= (lemmaSamePrefixThenSameSuffix!290 lt!199341 lt!199374 lt!199341 (_2!2852 lt!199343) lt!199353) lt!199721)))

(declare-fun bs!55754 () Bool)

(assert (= bs!55754 d!172308))

(declare-fun m!712673 () Bool)

(assert (=> bs!55754 m!712673))

(declare-fun m!712675 () Bool)

(assert (=> bs!55754 m!712675))

(assert (=> b!449485 d!172308))

(declare-fun d!172310 () Bool)

(declare-fun isEmpty!3310 (Option!1118) Bool)

(assert (=> d!172310 (= (isDefined!958 lt!199326) (not (isEmpty!3310 lt!199326)))))

(declare-fun bs!55756 () Bool)

(assert (= bs!55756 d!172310))

(declare-fun m!712679 () Bool)

(assert (=> bs!55756 m!712679))

(assert (=> b!449485 d!172310))

(declare-fun d!172314 () Bool)

(declare-fun e!275094 () Bool)

(assert (=> d!172314 e!275094))

(declare-fun res!199837 () Bool)

(assert (=> d!172314 (=> (not res!199837) (not e!275094))))

(assert (=> d!172314 (= res!199837 (isDefined!958 (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 lt!199344)))))))

(declare-fun lt!199726 () Unit!7841)

(declare-fun choose!3388 (LexerInterface!731 List!4370 List!4369 Token!1434) Unit!7841)

(assert (=> d!172314 (= lt!199726 (choose!3388 thiss!17480 rules!1920 lt!199339 lt!199344))))

(assert (=> d!172314 (rulesInvariant!697 thiss!17480 rules!1920)))

(assert (=> d!172314 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!204 thiss!17480 rules!1920 lt!199339 lt!199344) lt!199726)))

(declare-fun b!450129 () Bool)

(declare-fun res!199838 () Bool)

(assert (=> b!450129 (=> (not res!199838) (not e!275094))))

(assert (=> b!450129 (= res!199838 (matchR!387 (regex!845 (get!1587 (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 lt!199344))))) (list!1931 (charsOf!488 lt!199344))))))

(declare-fun b!450130 () Bool)

(assert (=> b!450130 (= e!275094 (= (rule!1532 lt!199344) (get!1587 (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 lt!199344))))))))

(assert (= (and d!172314 res!199837) b!450129))

(assert (= (and b!450129 res!199838) b!450130))

(assert (=> d!172314 m!711719))

(assert (=> d!172314 m!711719))

(declare-fun m!712689 () Bool)

(assert (=> d!172314 m!712689))

(declare-fun m!712691 () Bool)

(assert (=> d!172314 m!712691))

(assert (=> d!172314 m!711645))

(assert (=> b!450129 m!711719))

(declare-fun m!712693 () Bool)

(assert (=> b!450129 m!712693))

(assert (=> b!450129 m!711689))

(assert (=> b!450129 m!711691))

(assert (=> b!450129 m!711689))

(assert (=> b!450129 m!711691))

(declare-fun m!712695 () Bool)

(assert (=> b!450129 m!712695))

(assert (=> b!450129 m!711719))

(assert (=> b!450130 m!711719))

(assert (=> b!450130 m!711719))

(assert (=> b!450130 m!712693))

(assert (=> b!449485 d!172314))

(declare-fun d!172320 () Bool)

(declare-fun lt!199729 () Bool)

(assert (=> d!172320 (= lt!199729 (select (content!731 (usedCharacters!146 (regex!845 (rule!1532 lt!199344)))) lt!199355))))

(declare-fun e!275100 () Bool)

(assert (=> d!172320 (= lt!199729 e!275100)))

(declare-fun res!199843 () Bool)

(assert (=> d!172320 (=> (not res!199843) (not e!275100))))

(assert (=> d!172320 (= res!199843 ((_ is Cons!4359) (usedCharacters!146 (regex!845 (rule!1532 lt!199344)))))))

(assert (=> d!172320 (= (contains!971 (usedCharacters!146 (regex!845 (rule!1532 lt!199344))) lt!199355) lt!199729)))

(declare-fun b!450135 () Bool)

(declare-fun e!275099 () Bool)

(assert (=> b!450135 (= e!275100 e!275099)))

(declare-fun res!199844 () Bool)

(assert (=> b!450135 (=> res!199844 e!275099)))

(assert (=> b!450135 (= res!199844 (= (h!9756 (usedCharacters!146 (regex!845 (rule!1532 lt!199344)))) lt!199355))))

(declare-fun b!450136 () Bool)

(assert (=> b!450136 (= e!275099 (contains!971 (t!70793 (usedCharacters!146 (regex!845 (rule!1532 lt!199344)))) lt!199355))))

(assert (= (and d!172320 res!199843) b!450135))

(assert (= (and b!450135 (not res!199844)) b!450136))

(assert (=> d!172320 m!711737))

(declare-fun m!712697 () Bool)

(assert (=> d!172320 m!712697))

(declare-fun m!712699 () Bool)

(assert (=> d!172320 m!712699))

(declare-fun m!712701 () Bool)

(assert (=> b!450136 m!712701))

(assert (=> b!449485 d!172320))

(declare-fun d!172322 () Bool)

(declare-fun lt!199734 () BalanceConc!3032)

(assert (=> d!172322 (= (list!1931 lt!199734) (printListTailRec!203 thiss!17480 (dropList!238 lt!199329 0) (list!1931 (BalanceConc!3033 Empty!1512))))))

(declare-fun e!275102 () BalanceConc!3032)

(assert (=> d!172322 (= lt!199734 e!275102)))

(declare-fun c!91204 () Bool)

(assert (=> d!172322 (= c!91204 (>= 0 (size!3579 lt!199329)))))

(declare-fun e!275101 () Bool)

(assert (=> d!172322 e!275101))

(declare-fun res!199845 () Bool)

(assert (=> d!172322 (=> (not res!199845) (not e!275101))))

(assert (=> d!172322 (= res!199845 (>= 0 0))))

(assert (=> d!172322 (= (printTailRec!417 thiss!17480 lt!199329 0 (BalanceConc!3033 Empty!1512)) lt!199734)))

(declare-fun b!450137 () Bool)

(assert (=> b!450137 (= e!275101 (<= 0 (size!3579 lt!199329)))))

(declare-fun b!450138 () Bool)

(assert (=> b!450138 (= e!275102 (BalanceConc!3033 Empty!1512))))

(declare-fun b!450139 () Bool)

(assert (=> b!450139 (= e!275102 (printTailRec!417 thiss!17480 lt!199329 (+ 0 1) (++!1266 (BalanceConc!3033 Empty!1512) (charsOf!488 (apply!1104 lt!199329 0)))))))

(declare-fun lt!199732 () List!4371)

(assert (=> b!450139 (= lt!199732 (list!1934 lt!199329))))

(declare-fun lt!199733 () Unit!7841)

(assert (=> b!450139 (= lt!199733 (lemmaDropApply!278 lt!199732 0))))

(assert (=> b!450139 (= (head!1091 (drop!307 lt!199732 0)) (apply!1107 lt!199732 0))))

(declare-fun lt!199730 () Unit!7841)

(assert (=> b!450139 (= lt!199730 lt!199733)))

(declare-fun lt!199735 () List!4371)

(assert (=> b!450139 (= lt!199735 (list!1934 lt!199329))))

(declare-fun lt!199731 () Unit!7841)

(assert (=> b!450139 (= lt!199731 (lemmaDropTail!270 lt!199735 0))))

(assert (=> b!450139 (= (tail!626 (drop!307 lt!199735 0)) (drop!307 lt!199735 (+ 0 1)))))

(declare-fun lt!199736 () Unit!7841)

(assert (=> b!450139 (= lt!199736 lt!199731)))

(assert (= (and d!172322 res!199845) b!450137))

(assert (= (and d!172322 c!91204) b!450138))

(assert (= (and d!172322 (not c!91204)) b!450139))

(assert (=> d!172322 m!712241))

(declare-fun m!712703 () Bool)

(assert (=> d!172322 m!712703))

(declare-fun m!712705 () Bool)

(assert (=> d!172322 m!712705))

(assert (=> d!172322 m!712703))

(assert (=> d!172322 m!712241))

(declare-fun m!712707 () Bool)

(assert (=> d!172322 m!712707))

(declare-fun m!712709 () Bool)

(assert (=> d!172322 m!712709))

(assert (=> b!450137 m!712705))

(declare-fun m!712711 () Bool)

(assert (=> b!450139 m!712711))

(declare-fun m!712713 () Bool)

(assert (=> b!450139 m!712713))

(declare-fun m!712715 () Bool)

(assert (=> b!450139 m!712715))

(declare-fun m!712717 () Bool)

(assert (=> b!450139 m!712717))

(declare-fun m!712719 () Bool)

(assert (=> b!450139 m!712719))

(declare-fun m!712721 () Bool)

(assert (=> b!450139 m!712721))

(declare-fun m!712723 () Bool)

(assert (=> b!450139 m!712723))

(declare-fun m!712725 () Bool)

(assert (=> b!450139 m!712725))

(declare-fun m!712727 () Bool)

(assert (=> b!450139 m!712727))

(assert (=> b!450139 m!712721))

(assert (=> b!450139 m!712715))

(declare-fun m!712729 () Bool)

(assert (=> b!450139 m!712729))

(declare-fun m!712731 () Bool)

(assert (=> b!450139 m!712731))

(assert (=> b!450139 m!712723))

(assert (=> b!450139 m!712719))

(assert (=> b!450139 m!712711))

(declare-fun m!712733 () Bool)

(assert (=> b!450139 m!712733))

(declare-fun m!712735 () Bool)

(assert (=> b!450139 m!712735))

(assert (=> b!449485 d!172322))

(declare-fun d!172324 () Bool)

(assert (=> d!172324 (= (isDefined!958 lt!199334) (not (isEmpty!3310 lt!199334)))))

(declare-fun bs!55758 () Bool)

(assert (= bs!55758 d!172324))

(declare-fun m!712737 () Bool)

(assert (=> bs!55758 m!712737))

(assert (=> b!449485 d!172324))

(declare-fun d!172326 () Bool)

(declare-fun lt!199739 () Int)

(declare-fun size!3583 (List!4371) Int)

(assert (=> d!172326 (= lt!199739 (size!3583 (list!1934 (_1!2851 lt!199372))))))

(declare-fun size!3584 (Conc!1513) Int)

(assert (=> d!172326 (= lt!199739 (size!3584 (c!91064 (_1!2851 lt!199372))))))

(assert (=> d!172326 (= (size!3579 (_1!2851 lt!199372)) lt!199739)))

(declare-fun bs!55759 () Bool)

(assert (= bs!55759 d!172326))

(assert (=> bs!55759 m!712581))

(assert (=> bs!55759 m!712581))

(declare-fun m!712739 () Bool)

(assert (=> bs!55759 m!712739))

(declare-fun m!712741 () Bool)

(assert (=> bs!55759 m!712741))

(assert (=> b!449485 d!172326))

(declare-fun b!450170 () Bool)

(declare-fun e!275118 () Option!1118)

(assert (=> b!450170 (= e!275118 None!1117)))

(declare-fun b!450171 () Bool)

(declare-fun e!275117 () Option!1118)

(assert (=> b!450171 (= e!275117 (Some!1117 (h!9757 rules!1920)))))

(declare-fun b!450172 () Bool)

(declare-fun e!275119 () Bool)

(declare-fun lt!199757 () Option!1118)

(assert (=> b!450172 (= e!275119 (= (tag!1101 (get!1587 lt!199757)) (tag!1101 (rule!1532 separatorToken!170))))))

(declare-fun d!172328 () Bool)

(declare-fun e!275120 () Bool)

(assert (=> d!172328 e!275120))

(declare-fun res!199865 () Bool)

(assert (=> d!172328 (=> res!199865 e!275120)))

(assert (=> d!172328 (= res!199865 (isEmpty!3310 lt!199757))))

(assert (=> d!172328 (= lt!199757 e!275117)))

(declare-fun c!91211 () Bool)

(assert (=> d!172328 (= c!91211 (and ((_ is Cons!4360) rules!1920) (= (tag!1101 (h!9757 rules!1920)) (tag!1101 (rule!1532 separatorToken!170)))))))

(assert (=> d!172328 (rulesInvariant!697 thiss!17480 rules!1920)))

(assert (=> d!172328 (= (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 separatorToken!170))) lt!199757)))

(declare-fun b!450173 () Bool)

(assert (=> b!450173 (= e!275117 e!275118)))

(declare-fun c!91212 () Bool)

(assert (=> b!450173 (= c!91212 (and ((_ is Cons!4360) rules!1920) (not (= (tag!1101 (h!9757 rules!1920)) (tag!1101 (rule!1532 separatorToken!170))))))))

(declare-fun b!450174 () Bool)

(assert (=> b!450174 (= e!275120 e!275119)))

(declare-fun res!199864 () Bool)

(assert (=> b!450174 (=> (not res!199864) (not e!275119))))

(assert (=> b!450174 (= res!199864 (contains!972 rules!1920 (get!1587 lt!199757)))))

(declare-fun b!450175 () Bool)

(declare-fun lt!199756 () Unit!7841)

(declare-fun lt!199758 () Unit!7841)

(assert (=> b!450175 (= lt!199756 lt!199758)))

(assert (=> b!450175 (rulesInvariant!697 thiss!17480 (t!70794 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!79 (LexerInterface!731 Rule!1490 List!4370) Unit!7841)

(assert (=> b!450175 (= lt!199758 (lemmaInvariantOnRulesThenOnTail!79 thiss!17480 (h!9757 rules!1920) (t!70794 rules!1920)))))

(assert (=> b!450175 (= e!275118 (getRuleFromTag!204 thiss!17480 (t!70794 rules!1920) (tag!1101 (rule!1532 separatorToken!170))))))

(assert (= (and d!172328 c!91211) b!450171))

(assert (= (and d!172328 (not c!91211)) b!450173))

(assert (= (and b!450173 c!91212) b!450175))

(assert (= (and b!450173 (not c!91212)) b!450170))

(assert (= (and d!172328 (not res!199865)) b!450174))

(assert (= (and b!450174 res!199864) b!450172))

(declare-fun m!712743 () Bool)

(assert (=> b!450172 m!712743))

(declare-fun m!712745 () Bool)

(assert (=> d!172328 m!712745))

(assert (=> d!172328 m!711645))

(assert (=> b!450174 m!712743))

(assert (=> b!450174 m!712743))

(declare-fun m!712747 () Bool)

(assert (=> b!450174 m!712747))

(declare-fun m!712749 () Bool)

(assert (=> b!450175 m!712749))

(declare-fun m!712751 () Bool)

(assert (=> b!450175 m!712751))

(declare-fun m!712753 () Bool)

(assert (=> b!450175 m!712753))

(assert (=> b!449485 d!172328))

(declare-fun b!450201 () Bool)

(declare-fun e!275132 () List!4369)

(declare-fun call!31146 () List!4369)

(assert (=> b!450201 (= e!275132 call!31146)))

(declare-fun bm!31138 () Bool)

(declare-fun call!31145 () List!4369)

(declare-fun call!31143 () List!4369)

(assert (=> bm!31138 (= call!31146 (++!1264 call!31145 call!31143))))

(declare-fun c!91222 () Bool)

(declare-fun bm!31139 () Bool)

(declare-fun c!91225 () Bool)

(declare-fun call!31144 () List!4369)

(assert (=> bm!31139 (= call!31144 (usedCharacters!146 (ite c!91222 (reg!1398 (regex!845 (rule!1532 lt!199344))) (ite c!91225 (regTwo!2651 (regex!845 (rule!1532 lt!199344))) (regTwo!2650 (regex!845 (rule!1532 lt!199344)))))))))

(declare-fun b!450202 () Bool)

(assert (=> b!450202 (= e!275132 call!31146)))

(declare-fun bm!31140 () Bool)

(assert (=> bm!31140 (= call!31145 (usedCharacters!146 (ite c!91225 (regOne!2651 (regex!845 (rule!1532 lt!199344))) (regOne!2650 (regex!845 (rule!1532 lt!199344))))))))

(declare-fun b!450203 () Bool)

(declare-fun e!275134 () List!4369)

(assert (=> b!450203 (= e!275134 e!275132)))

(assert (=> b!450203 (= c!91225 ((_ is Union!1069) (regex!845 (rule!1532 lt!199344))))))

(declare-fun b!450204 () Bool)

(declare-fun e!275135 () List!4369)

(assert (=> b!450204 (= e!275135 (Cons!4359 (c!91063 (regex!845 (rule!1532 lt!199344))) Nil!4359))))

(declare-fun b!450205 () Bool)

(assert (=> b!450205 (= e!275134 call!31144)))

(declare-fun bm!31141 () Bool)

(assert (=> bm!31141 (= call!31143 call!31144)))

(declare-fun b!450206 () Bool)

(declare-fun e!275133 () List!4369)

(assert (=> b!450206 (= e!275133 Nil!4359)))

(declare-fun d!172330 () Bool)

(declare-fun c!91224 () Bool)

(assert (=> d!172330 (= c!91224 (or ((_ is EmptyExpr!1069) (regex!845 (rule!1532 lt!199344))) ((_ is EmptyLang!1069) (regex!845 (rule!1532 lt!199344)))))))

(assert (=> d!172330 (= (usedCharacters!146 (regex!845 (rule!1532 lt!199344))) e!275133)))

(declare-fun b!450207 () Bool)

(assert (=> b!450207 (= c!91222 ((_ is Star!1069) (regex!845 (rule!1532 lt!199344))))))

(assert (=> b!450207 (= e!275135 e!275134)))

(declare-fun b!450208 () Bool)

(assert (=> b!450208 (= e!275133 e!275135)))

(declare-fun c!91223 () Bool)

(assert (=> b!450208 (= c!91223 ((_ is ElementMatch!1069) (regex!845 (rule!1532 lt!199344))))))

(assert (= (and d!172330 c!91224) b!450206))

(assert (= (and d!172330 (not c!91224)) b!450208))

(assert (= (and b!450208 c!91223) b!450204))

(assert (= (and b!450208 (not c!91223)) b!450207))

(assert (= (and b!450207 c!91222) b!450205))

(assert (= (and b!450207 (not c!91222)) b!450203))

(assert (= (and b!450203 c!91225) b!450202))

(assert (= (and b!450203 (not c!91225)) b!450201))

(assert (= (or b!450202 b!450201) bm!31140))

(assert (= (or b!450202 b!450201) bm!31141))

(assert (= (or b!450202 b!450201) bm!31138))

(assert (= (or b!450205 bm!31141) bm!31139))

(declare-fun m!712785 () Bool)

(assert (=> bm!31138 m!712785))

(declare-fun m!712787 () Bool)

(assert (=> bm!31139 m!712787))

(declare-fun m!712789 () Bool)

(assert (=> bm!31140 m!712789))

(assert (=> b!449485 d!172330))

(declare-fun d!172334 () Bool)

(declare-fun lt!199768 () BalanceConc!3032)

(assert (=> d!172334 (= (list!1931 lt!199768) (printListTailRec!203 thiss!17480 (dropList!238 lt!199360 0) (list!1931 (BalanceConc!3033 Empty!1512))))))

(declare-fun e!275137 () BalanceConc!3032)

(assert (=> d!172334 (= lt!199768 e!275137)))

(declare-fun c!91226 () Bool)

(assert (=> d!172334 (= c!91226 (>= 0 (size!3579 lt!199360)))))

(declare-fun e!275136 () Bool)

(assert (=> d!172334 e!275136))

(declare-fun res!199873 () Bool)

(assert (=> d!172334 (=> (not res!199873) (not e!275136))))

(assert (=> d!172334 (= res!199873 (>= 0 0))))

(assert (=> d!172334 (= (printTailRec!417 thiss!17480 lt!199360 0 (BalanceConc!3033 Empty!1512)) lt!199768)))

(declare-fun b!450209 () Bool)

(assert (=> b!450209 (= e!275136 (<= 0 (size!3579 lt!199360)))))

(declare-fun b!450210 () Bool)

(assert (=> b!450210 (= e!275137 (BalanceConc!3033 Empty!1512))))

(declare-fun b!450211 () Bool)

(assert (=> b!450211 (= e!275137 (printTailRec!417 thiss!17480 lt!199360 (+ 0 1) (++!1266 (BalanceConc!3033 Empty!1512) (charsOf!488 (apply!1104 lt!199360 0)))))))

(declare-fun lt!199766 () List!4371)

(assert (=> b!450211 (= lt!199766 (list!1934 lt!199360))))

(declare-fun lt!199767 () Unit!7841)

(assert (=> b!450211 (= lt!199767 (lemmaDropApply!278 lt!199766 0))))

(assert (=> b!450211 (= (head!1091 (drop!307 lt!199766 0)) (apply!1107 lt!199766 0))))

(declare-fun lt!199764 () Unit!7841)

(assert (=> b!450211 (= lt!199764 lt!199767)))

(declare-fun lt!199769 () List!4371)

(assert (=> b!450211 (= lt!199769 (list!1934 lt!199360))))

(declare-fun lt!199765 () Unit!7841)

(assert (=> b!450211 (= lt!199765 (lemmaDropTail!270 lt!199769 0))))

(assert (=> b!450211 (= (tail!626 (drop!307 lt!199769 0)) (drop!307 lt!199769 (+ 0 1)))))

(declare-fun lt!199770 () Unit!7841)

(assert (=> b!450211 (= lt!199770 lt!199765)))

(assert (= (and d!172334 res!199873) b!450209))

(assert (= (and d!172334 c!91226) b!450210))

(assert (= (and d!172334 (not c!91226)) b!450211))

(assert (=> d!172334 m!712241))

(declare-fun m!712795 () Bool)

(assert (=> d!172334 m!712795))

(declare-fun m!712797 () Bool)

(assert (=> d!172334 m!712797))

(assert (=> d!172334 m!712795))

(assert (=> d!172334 m!712241))

(declare-fun m!712799 () Bool)

(assert (=> d!172334 m!712799))

(declare-fun m!712801 () Bool)

(assert (=> d!172334 m!712801))

(assert (=> b!450209 m!712797))

(declare-fun m!712803 () Bool)

(assert (=> b!450211 m!712803))

(declare-fun m!712805 () Bool)

(assert (=> b!450211 m!712805))

(declare-fun m!712807 () Bool)

(assert (=> b!450211 m!712807))

(declare-fun m!712809 () Bool)

(assert (=> b!450211 m!712809))

(declare-fun m!712811 () Bool)

(assert (=> b!450211 m!712811))

(declare-fun m!712813 () Bool)

(assert (=> b!450211 m!712813))

(declare-fun m!712815 () Bool)

(assert (=> b!450211 m!712815))

(declare-fun m!712817 () Bool)

(assert (=> b!450211 m!712817))

(declare-fun m!712819 () Bool)

(assert (=> b!450211 m!712819))

(assert (=> b!450211 m!712813))

(assert (=> b!450211 m!712807))

(declare-fun m!712821 () Bool)

(assert (=> b!450211 m!712821))

(declare-fun m!712823 () Bool)

(assert (=> b!450211 m!712823))

(assert (=> b!450211 m!712815))

(assert (=> b!450211 m!712811))

(assert (=> b!450211 m!712803))

(declare-fun m!712825 () Bool)

(assert (=> b!450211 m!712825))

(declare-fun m!712827 () Bool)

(assert (=> b!450211 m!712827))

(assert (=> b!449485 d!172334))

(declare-fun d!172342 () Bool)

(declare-fun e!275138 () Bool)

(assert (=> d!172342 e!275138))

(declare-fun res!199874 () Bool)

(assert (=> d!172342 (=> (not res!199874) (not e!275138))))

(declare-fun lt!199771 () BalanceConc!3034)

(assert (=> d!172342 (= res!199874 (= (list!1934 lt!199771) (Cons!4361 separatorToken!170 Nil!4361)))))

(assert (=> d!172342 (= lt!199771 (singleton!188 separatorToken!170))))

(assert (=> d!172342 (= (singletonSeq!391 separatorToken!170) lt!199771)))

(declare-fun b!450212 () Bool)

(assert (=> b!450212 (= e!275138 (isBalanced!465 (c!91064 lt!199771)))))

(assert (= (and d!172342 res!199874) b!450212))

(declare-fun m!712829 () Bool)

(assert (=> d!172342 m!712829))

(declare-fun m!712831 () Bool)

(assert (=> d!172342 m!712831))

(declare-fun m!712833 () Bool)

(assert (=> b!450212 m!712833))

(assert (=> b!449485 d!172342))

(declare-fun d!172344 () Bool)

(declare-fun lt!199773 () Bool)

(declare-fun e!275139 () Bool)

(assert (=> d!172344 (= lt!199773 e!275139)))

(declare-fun res!199877 () Bool)

(assert (=> d!172344 (=> (not res!199877) (not e!275139))))

(assert (=> d!172344 (= res!199877 (= (list!1934 (_1!2851 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 lt!199344))))) (list!1934 (singletonSeq!391 lt!199344))))))

(declare-fun e!275140 () Bool)

(assert (=> d!172344 (= lt!199773 e!275140)))

(declare-fun res!199876 () Bool)

(assert (=> d!172344 (=> (not res!199876) (not e!275140))))

(declare-fun lt!199772 () tuple2!5270)

(assert (=> d!172344 (= res!199876 (= (size!3579 (_1!2851 lt!199772)) 1))))

(assert (=> d!172344 (= lt!199772 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 lt!199344))))))

(assert (=> d!172344 (not (isEmpty!3300 rules!1920))))

(assert (=> d!172344 (= (rulesProduceIndividualToken!480 thiss!17480 rules!1920 lt!199344) lt!199773)))

(declare-fun b!450213 () Bool)

(declare-fun res!199875 () Bool)

(assert (=> b!450213 (=> (not res!199875) (not e!275140))))

(assert (=> b!450213 (= res!199875 (= (apply!1104 (_1!2851 lt!199772) 0) lt!199344))))

(declare-fun b!450214 () Bool)

(assert (=> b!450214 (= e!275140 (isEmpty!3299 (_2!2851 lt!199772)))))

(declare-fun b!450215 () Bool)

(assert (=> b!450215 (= e!275139 (isEmpty!3299 (_2!2851 (lex!523 thiss!17480 rules!1920 (print!456 thiss!17480 (singletonSeq!391 lt!199344))))))))

(assert (= (and d!172344 res!199876) b!450213))

(assert (= (and b!450213 res!199875) b!450214))

(assert (= (and d!172344 res!199877) b!450215))

(assert (=> d!172344 m!711717))

(assert (=> d!172344 m!711717))

(declare-fun m!712835 () Bool)

(assert (=> d!172344 m!712835))

(declare-fun m!712837 () Bool)

(assert (=> d!172344 m!712837))

(declare-fun m!712839 () Bool)

(assert (=> d!172344 m!712839))

(declare-fun m!712841 () Bool)

(assert (=> d!172344 m!712841))

(assert (=> d!172344 m!711717))

(assert (=> d!172344 m!712837))

(assert (=> d!172344 m!711575))

(declare-fun m!712843 () Bool)

(assert (=> d!172344 m!712843))

(declare-fun m!712845 () Bool)

(assert (=> b!450213 m!712845))

(declare-fun m!712847 () Bool)

(assert (=> b!450214 m!712847))

(assert (=> b!450215 m!711717))

(assert (=> b!450215 m!711717))

(assert (=> b!450215 m!712837))

(assert (=> b!450215 m!712837))

(assert (=> b!450215 m!712839))

(declare-fun m!712849 () Bool)

(assert (=> b!450215 m!712849))

(assert (=> b!449485 d!172344))

(declare-fun d!172346 () Bool)

(assert (=> d!172346 (= (isEmpty!3303 (t!70795 tokens!465)) ((_ is Nil!4361) (t!70795 tokens!465)))))

(assert (=> b!449485 d!172346))

(declare-fun d!172348 () Bool)

(declare-fun e!275147 () Bool)

(assert (=> d!172348 e!275147))

(declare-fun res!199884 () Bool)

(assert (=> d!172348 (=> (not res!199884) (not e!275147))))

(assert (=> d!172348 (= res!199884 (isDefined!958 (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 separatorToken!170)))))))

(declare-fun lt!199777 () Unit!7841)

(assert (=> d!172348 (= lt!199777 (choose!3388 thiss!17480 rules!1920 lt!199368 separatorToken!170))))

(assert (=> d!172348 (rulesInvariant!697 thiss!17480 rules!1920)))

(assert (=> d!172348 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!204 thiss!17480 rules!1920 lt!199368 separatorToken!170) lt!199777)))

(declare-fun b!450222 () Bool)

(declare-fun res!199885 () Bool)

(assert (=> b!450222 (=> (not res!199885) (not e!275147))))

(assert (=> b!450222 (= res!199885 (matchR!387 (regex!845 (get!1587 (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 separatorToken!170))))) (list!1931 (charsOf!488 separatorToken!170))))))

(declare-fun b!450223 () Bool)

(assert (=> b!450223 (= e!275147 (= (rule!1532 separatorToken!170) (get!1587 (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 separatorToken!170))))))))

(assert (= (and d!172348 res!199884) b!450222))

(assert (= (and b!450222 res!199885) b!450223))

(assert (=> d!172348 m!711693))

(assert (=> d!172348 m!711693))

(declare-fun m!712857 () Bool)

(assert (=> d!172348 m!712857))

(declare-fun m!712859 () Bool)

(assert (=> d!172348 m!712859))

(assert (=> d!172348 m!711645))

(assert (=> b!450222 m!711693))

(declare-fun m!712861 () Bool)

(assert (=> b!450222 m!712861))

(assert (=> b!450222 m!711621))

(assert (=> b!450222 m!711623))

(assert (=> b!450222 m!711621))

(assert (=> b!450222 m!711623))

(declare-fun m!712863 () Bool)

(assert (=> b!450222 m!712863))

(assert (=> b!450222 m!711693))

(assert (=> b!450223 m!711693))

(assert (=> b!450223 m!711693))

(assert (=> b!450223 m!712861))

(assert (=> b!449485 d!172348))

(declare-fun d!172352 () Bool)

(declare-fun lt!199780 () BalanceConc!3032)

(assert (=> d!172352 (= (list!1931 lt!199780) (printList!405 thiss!17480 (list!1934 lt!199360)))))

(assert (=> d!172352 (= lt!199780 (printTailRec!417 thiss!17480 lt!199360 0 (BalanceConc!3033 Empty!1512)))))

(assert (=> d!172352 (= (print!456 thiss!17480 lt!199360) lt!199780)))

(declare-fun bs!55762 () Bool)

(assert (= bs!55762 d!172352))

(declare-fun m!712877 () Bool)

(assert (=> bs!55762 m!712877))

(assert (=> bs!55762 m!712819))

(assert (=> bs!55762 m!712819))

(declare-fun m!712881 () Bool)

(assert (=> bs!55762 m!712881))

(assert (=> bs!55762 m!711729))

(assert (=> b!449485 d!172352))

(declare-fun d!172354 () Bool)

(assert (=> d!172354 (= (head!1092 lt!199339) (h!9756 lt!199339))))

(assert (=> b!449485 d!172354))

(declare-fun b!450255 () Bool)

(declare-fun res!199903 () Bool)

(declare-fun e!275169 () Bool)

(assert (=> b!450255 (=> (not res!199903) (not e!275169))))

(declare-fun lt!199792 () tuple2!5270)

(declare-datatypes ((tuple2!5278 0))(
  ( (tuple2!5279 (_1!2855 List!4371) (_2!2855 List!4369)) )
))
(declare-fun lexList!283 (LexerInterface!731 List!4370 List!4369) tuple2!5278)

(assert (=> b!450255 (= res!199903 (= (list!1934 (_1!2851 lt!199792)) (_1!2855 (lexList!283 thiss!17480 rules!1920 (list!1931 lt!199358)))))))

(declare-fun b!450256 () Bool)

(declare-fun e!275170 () Bool)

(assert (=> b!450256 (= e!275170 (not (isEmpty!3301 (_1!2851 lt!199792))))))

(declare-fun b!450257 () Bool)

(declare-fun e!275168 () Bool)

(assert (=> b!450257 (= e!275168 (= (_2!2851 lt!199792) lt!199358))))

(declare-fun d!172358 () Bool)

(assert (=> d!172358 e!275169))

(declare-fun res!199902 () Bool)

(assert (=> d!172358 (=> (not res!199902) (not e!275169))))

(assert (=> d!172358 (= res!199902 e!275168)))

(declare-fun c!91235 () Bool)

(assert (=> d!172358 (= c!91235 (> (size!3579 (_1!2851 lt!199792)) 0))))

(declare-fun lexTailRecV2!250 (LexerInterface!731 List!4370 BalanceConc!3032 BalanceConc!3032 BalanceConc!3032 BalanceConc!3034) tuple2!5270)

(assert (=> d!172358 (= lt!199792 (lexTailRecV2!250 thiss!17480 rules!1920 lt!199358 (BalanceConc!3033 Empty!1512) lt!199358 (BalanceConc!3035 Empty!1513)))))

(assert (=> d!172358 (= (lex!523 thiss!17480 rules!1920 lt!199358) lt!199792)))

(declare-fun b!450258 () Bool)

(assert (=> b!450258 (= e!275168 e!275170)))

(declare-fun res!199901 () Bool)

(declare-fun size!3586 (BalanceConc!3032) Int)

(assert (=> b!450258 (= res!199901 (< (size!3586 (_2!2851 lt!199792)) (size!3586 lt!199358)))))

(assert (=> b!450258 (=> (not res!199901) (not e!275170))))

(declare-fun b!450259 () Bool)

(assert (=> b!450259 (= e!275169 (= (list!1931 (_2!2851 lt!199792)) (_2!2855 (lexList!283 thiss!17480 rules!1920 (list!1931 lt!199358)))))))

(assert (= (and d!172358 c!91235) b!450258))

(assert (= (and d!172358 (not c!91235)) b!450257))

(assert (= (and b!450258 res!199901) b!450256))

(assert (= (and d!172358 res!199902) b!450255))

(assert (= (and b!450255 res!199903) b!450259))

(declare-fun m!712897 () Bool)

(assert (=> d!172358 m!712897))

(declare-fun m!712899 () Bool)

(assert (=> d!172358 m!712899))

(declare-fun m!712901 () Bool)

(assert (=> b!450256 m!712901))

(declare-fun m!712903 () Bool)

(assert (=> b!450258 m!712903))

(declare-fun m!712905 () Bool)

(assert (=> b!450258 m!712905))

(declare-fun m!712907 () Bool)

(assert (=> b!450259 m!712907))

(declare-fun m!712909 () Bool)

(assert (=> b!450259 m!712909))

(assert (=> b!450259 m!712909))

(declare-fun m!712911 () Bool)

(assert (=> b!450259 m!712911))

(declare-fun m!712913 () Bool)

(assert (=> b!450255 m!712913))

(assert (=> b!450255 m!712909))

(assert (=> b!450255 m!712909))

(assert (=> b!450255 m!712911))

(assert (=> b!449485 d!172358))

(declare-fun d!172362 () Bool)

(assert (=> d!172362 (= (isEmpty!3303 tokens!465) ((_ is Nil!4361) tokens!465))))

(assert (=> b!449485 d!172362))

(declare-fun d!172364 () Bool)

(assert (=> d!172364 (= (head!1092 lt!199362) (h!9756 lt!199362))))

(assert (=> b!449485 d!172364))

(declare-fun d!172366 () Bool)

(assert (=> d!172366 (= (list!1931 (charsOf!488 lt!199344)) (list!1935 (c!91062 (charsOf!488 lt!199344))))))

(declare-fun bs!55763 () Bool)

(assert (= bs!55763 d!172366))

(declare-fun m!712915 () Bool)

(assert (=> bs!55763 m!712915))

(assert (=> b!449485 d!172366))

(assert (=> b!449485 d!172130))

(declare-fun b!450260 () Bool)

(declare-fun e!275172 () Option!1118)

(assert (=> b!450260 (= e!275172 None!1117)))

(declare-fun b!450261 () Bool)

(declare-fun e!275171 () Option!1118)

(assert (=> b!450261 (= e!275171 (Some!1117 (h!9757 rules!1920)))))

(declare-fun b!450262 () Bool)

(declare-fun e!275173 () Bool)

(declare-fun lt!199794 () Option!1118)

(assert (=> b!450262 (= e!275173 (= (tag!1101 (get!1587 lt!199794)) (tag!1101 (rule!1532 lt!199344))))))

(declare-fun d!172368 () Bool)

(declare-fun e!275174 () Bool)

(assert (=> d!172368 e!275174))

(declare-fun res!199905 () Bool)

(assert (=> d!172368 (=> res!199905 e!275174)))

(assert (=> d!172368 (= res!199905 (isEmpty!3310 lt!199794))))

(assert (=> d!172368 (= lt!199794 e!275171)))

(declare-fun c!91236 () Bool)

(assert (=> d!172368 (= c!91236 (and ((_ is Cons!4360) rules!1920) (= (tag!1101 (h!9757 rules!1920)) (tag!1101 (rule!1532 lt!199344)))))))

(assert (=> d!172368 (rulesInvariant!697 thiss!17480 rules!1920)))

(assert (=> d!172368 (= (getRuleFromTag!204 thiss!17480 rules!1920 (tag!1101 (rule!1532 lt!199344))) lt!199794)))

(declare-fun b!450263 () Bool)

(assert (=> b!450263 (= e!275171 e!275172)))

(declare-fun c!91237 () Bool)

(assert (=> b!450263 (= c!91237 (and ((_ is Cons!4360) rules!1920) (not (= (tag!1101 (h!9757 rules!1920)) (tag!1101 (rule!1532 lt!199344))))))))

(declare-fun b!450264 () Bool)

(assert (=> b!450264 (= e!275174 e!275173)))

(declare-fun res!199904 () Bool)

(assert (=> b!450264 (=> (not res!199904) (not e!275173))))

(assert (=> b!450264 (= res!199904 (contains!972 rules!1920 (get!1587 lt!199794)))))

(declare-fun b!450265 () Bool)

(declare-fun lt!199793 () Unit!7841)

(declare-fun lt!199795 () Unit!7841)

(assert (=> b!450265 (= lt!199793 lt!199795)))

(assert (=> b!450265 (rulesInvariant!697 thiss!17480 (t!70794 rules!1920))))

(assert (=> b!450265 (= lt!199795 (lemmaInvariantOnRulesThenOnTail!79 thiss!17480 (h!9757 rules!1920) (t!70794 rules!1920)))))

(assert (=> b!450265 (= e!275172 (getRuleFromTag!204 thiss!17480 (t!70794 rules!1920) (tag!1101 (rule!1532 lt!199344))))))

(assert (= (and d!172368 c!91236) b!450261))

(assert (= (and d!172368 (not c!91236)) b!450263))

(assert (= (and b!450263 c!91237) b!450265))

(assert (= (and b!450263 (not c!91237)) b!450260))

(assert (= (and d!172368 (not res!199905)) b!450264))

(assert (= (and b!450264 res!199904) b!450262))

(declare-fun m!712917 () Bool)

(assert (=> b!450262 m!712917))

(declare-fun m!712919 () Bool)

(assert (=> d!172368 m!712919))

(assert (=> d!172368 m!711645))

(assert (=> b!450264 m!712917))

(assert (=> b!450264 m!712917))

(declare-fun m!712921 () Bool)

(assert (=> b!450264 m!712921))

(assert (=> b!450265 m!712749))

(assert (=> b!450265 m!712751))

(declare-fun m!712923 () Bool)

(assert (=> b!450265 m!712923))

(assert (=> b!449485 d!172368))

(declare-fun d!172370 () Bool)

(assert (=> d!172370 (isPrefix!505 lt!199341 (++!1264 lt!199341 lt!199374))))

(declare-fun lt!199798 () Unit!7841)

(declare-fun choose!3394 (List!4369 List!4369) Unit!7841)

(assert (=> d!172370 (= lt!199798 (choose!3394 lt!199341 lt!199374))))

(assert (=> d!172370 (= (lemmaConcatTwoListThenFirstIsPrefix!396 lt!199341 lt!199374) lt!199798)))

(declare-fun bs!55764 () Bool)

(assert (= bs!55764 d!172370))

(assert (=> bs!55764 m!711631))

(assert (=> bs!55764 m!711631))

(declare-fun m!712925 () Bool)

(assert (=> bs!55764 m!712925))

(declare-fun m!712927 () Bool)

(assert (=> bs!55764 m!712927))

(assert (=> b!449485 d!172370))

(declare-fun bs!55765 () Bool)

(declare-fun d!172372 () Bool)

(assert (= bs!55765 (and d!172372 d!172114)))

(declare-fun lambda!13074 () Int)

(assert (=> bs!55765 (= lambda!13074 lambda!13047)))

(declare-fun bs!55766 () Bool)

(assert (= bs!55766 (and d!172372 b!449972)))

(assert (=> bs!55766 (= lambda!13074 lambda!13065)))

(declare-fun bs!55767 () Bool)

(assert (= bs!55767 (and d!172372 d!172216)))

(assert (=> bs!55767 (not (= lambda!13074 lambda!13064))))

(declare-fun bs!55768 () Bool)

(assert (= bs!55768 (and d!172372 b!449446)))

(assert (=> bs!55768 (= lambda!13074 lambda!13042)))

(declare-fun bs!55769 () Bool)

(assert (= bs!55769 (and d!172372 b!449478)))

(assert (=> bs!55769 (not (= lambda!13074 lambda!13041))))

(declare-fun bs!55770 () Bool)

(assert (= bs!55770 (and d!172372 b!450018)))

(assert (=> bs!55770 (= lambda!13074 lambda!13073)))

(declare-fun b!450269 () Bool)

(declare-fun e!275178 () Bool)

(assert (=> b!450269 (= e!275178 true)))

(declare-fun b!450268 () Bool)

(declare-fun e!275177 () Bool)

(assert (=> b!450268 (= e!275177 e!275178)))

(declare-fun b!450267 () Bool)

(declare-fun e!275176 () Bool)

(assert (=> b!450267 (= e!275176 e!275177)))

(assert (=> d!172372 e!275176))

(assert (= b!450268 b!450269))

(assert (= b!450267 b!450268))

(assert (= (and d!172372 ((_ is Cons!4360) rules!1920)) b!450267))

(assert (=> b!450269 (< (dynLambda!2620 order!3821 (toValue!1660 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13074))))

(assert (=> b!450269 (< (dynLambda!2622 order!3825 (toChars!1519 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13074))))

(assert (=> d!172372 true))

(declare-fun e!275175 () Bool)

(assert (=> d!172372 e!275175))

(declare-fun res!199906 () Bool)

(assert (=> d!172372 (=> (not res!199906) (not e!275175))))

(declare-fun lt!199799 () Bool)

(assert (=> d!172372 (= res!199906 (= lt!199799 (forall!1260 (list!1934 lt!199366) lambda!13074)))))

(assert (=> d!172372 (= lt!199799 (forall!1261 lt!199366 lambda!13074))))

(assert (=> d!172372 (not (isEmpty!3300 rules!1920))))

(assert (=> d!172372 (= (rulesProduceEachTokenIndividually!523 thiss!17480 rules!1920 lt!199366) lt!199799)))

(declare-fun b!450266 () Bool)

(assert (=> b!450266 (= e!275175 (= lt!199799 (rulesProduceEachTokenIndividuallyList!308 thiss!17480 rules!1920 (list!1934 lt!199366))))))

(assert (= (and d!172372 res!199906) b!450266))

(declare-fun m!712929 () Bool)

(assert (=> d!172372 m!712929))

(assert (=> d!172372 m!712929))

(declare-fun m!712931 () Bool)

(assert (=> d!172372 m!712931))

(declare-fun m!712933 () Bool)

(assert (=> d!172372 m!712933))

(assert (=> d!172372 m!711575))

(assert (=> b!450266 m!712929))

(assert (=> b!450266 m!712929))

(declare-fun m!712935 () Bool)

(assert (=> b!450266 m!712935))

(assert (=> b!449485 d!172372))

(declare-fun d!172374 () Bool)

(assert (=> d!172374 (= (get!1586 (maxPrefix!447 thiss!17480 rules!1920 lt!199353)) (v!15415 (maxPrefix!447 thiss!17480 rules!1920 lt!199353)))))

(assert (=> b!449485 d!172374))

(declare-fun d!172376 () Bool)

(assert (=> d!172376 (rulesProduceIndividualToken!480 thiss!17480 rules!1920 lt!199344)))

(declare-fun lt!199842 () Unit!7841)

(declare-fun choose!3395 (LexerInterface!731 List!4370 List!4371 Token!1434) Unit!7841)

(assert (=> d!172376 (= lt!199842 (choose!3395 thiss!17480 rules!1920 tokens!465 lt!199344))))

(assert (=> d!172376 (not (isEmpty!3300 rules!1920))))

(assert (=> d!172376 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!194 thiss!17480 rules!1920 tokens!465 lt!199344) lt!199842)))

(declare-fun bs!55787 () Bool)

(assert (= bs!55787 d!172376))

(assert (=> bs!55787 m!711701))

(declare-fun m!713097 () Bool)

(assert (=> bs!55787 m!713097))

(assert (=> bs!55787 m!711575))

(assert (=> b!449485 d!172376))

(declare-fun d!172420 () Bool)

(declare-fun lt!199843 () Int)

(assert (=> d!172420 (= lt!199843 (size!3583 (list!1934 (_1!2851 lt!199332))))))

(assert (=> d!172420 (= lt!199843 (size!3584 (c!91064 (_1!2851 lt!199332))))))

(assert (=> d!172420 (= (size!3579 (_1!2851 lt!199332)) lt!199843)))

(declare-fun bs!55788 () Bool)

(assert (= bs!55788 d!172420))

(assert (=> bs!55788 m!712005))

(assert (=> bs!55788 m!712005))

(declare-fun m!713099 () Bool)

(assert (=> bs!55788 m!713099))

(declare-fun m!713101 () Bool)

(assert (=> bs!55788 m!713101))

(assert (=> b!449485 d!172420))

(declare-fun d!172422 () Bool)

(declare-fun lt!199844 () BalanceConc!3032)

(assert (=> d!172422 (= (list!1931 lt!199844) (printList!405 thiss!17480 (list!1934 lt!199329)))))

(assert (=> d!172422 (= lt!199844 (printTailRec!417 thiss!17480 lt!199329 0 (BalanceConc!3033 Empty!1512)))))

(assert (=> d!172422 (= (print!456 thiss!17480 lt!199329) lt!199844)))

(declare-fun bs!55789 () Bool)

(assert (= bs!55789 d!172422))

(declare-fun m!713103 () Bool)

(assert (=> bs!55789 m!713103))

(assert (=> bs!55789 m!712727))

(assert (=> bs!55789 m!712727))

(declare-fun m!713105 () Bool)

(assert (=> bs!55789 m!713105))

(assert (=> bs!55789 m!711679))

(assert (=> b!449485 d!172422))

(declare-fun d!172424 () Bool)

(assert (=> d!172424 (= (head!1091 (t!70795 tokens!465)) (h!9758 (t!70795 tokens!465)))))

(assert (=> b!449485 d!172424))

(declare-fun d!172426 () Bool)

(declare-fun e!275249 () Bool)

(assert (=> d!172426 e!275249))

(declare-fun res!199964 () Bool)

(assert (=> d!172426 (=> res!199964 e!275249)))

(assert (=> d!172426 (= res!199964 (isEmpty!3303 tokens!465))))

(declare-fun lt!199865 () Unit!7841)

(declare-fun choose!3396 (LexerInterface!731 List!4370 List!4371 Token!1434) Unit!7841)

(assert (=> d!172426 (= lt!199865 (choose!3396 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!172426 (not (isEmpty!3300 rules!1920))))

(assert (=> d!172426 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!252 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!199865)))

(declare-fun b!450377 () Bool)

(declare-fun e!275250 () Bool)

(assert (=> b!450377 (= e!275249 e!275250)))

(declare-fun res!199965 () Bool)

(assert (=> b!450377 (=> (not res!199965) (not e!275250))))

(assert (=> b!450377 (= res!199965 (isDefined!956 (maxPrefix!447 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!450378 () Bool)

(assert (=> b!450378 (= e!275250 (= (_1!2852 (get!1586 (maxPrefix!447 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1091 tokens!465)))))

(assert (= (and d!172426 (not res!199964)) b!450377))

(assert (= (and b!450377 res!199965) b!450378))

(assert (=> d!172426 m!711695))

(declare-fun m!713205 () Bool)

(assert (=> d!172426 m!713205))

(assert (=> d!172426 m!711575))

(assert (=> b!450377 m!711593))

(assert (=> b!450377 m!711593))

(declare-fun m!713207 () Bool)

(assert (=> b!450377 m!713207))

(assert (=> b!450377 m!713207))

(declare-fun m!713209 () Bool)

(assert (=> b!450377 m!713209))

(assert (=> b!450378 m!711593))

(assert (=> b!450378 m!711593))

(assert (=> b!450378 m!713207))

(assert (=> b!450378 m!713207))

(declare-fun m!713211 () Bool)

(assert (=> b!450378 m!713211))

(assert (=> b!450378 m!711555))

(assert (=> b!449485 d!172426))

(declare-fun d!172448 () Bool)

(declare-fun lt!199871 () BalanceConc!3032)

(assert (=> d!172448 (= (list!1931 lt!199871) (originalCharacters!888 lt!199344))))

(assert (=> d!172448 (= lt!199871 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 lt!199344))) (value!28398 lt!199344)))))

(assert (=> d!172448 (= (charsOf!488 lt!199344) lt!199871)))

(declare-fun b_lambda!18629 () Bool)

(assert (=> (not b_lambda!18629) (not d!172448)))

(declare-fun t!70847 () Bool)

(declare-fun tb!45405 () Bool)

(assert (=> (and b!449448 (= (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toChars!1519 (transformation!845 (rule!1532 lt!199344)))) t!70847) tb!45405))

(declare-fun b!450398 () Bool)

(declare-fun e!275262 () Bool)

(declare-fun tp!125424 () Bool)

(assert (=> b!450398 (= e!275262 (and (inv!5438 (c!91062 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 lt!199344))) (value!28398 lt!199344)))) tp!125424))))

(declare-fun result!49924 () Bool)

(assert (=> tb!45405 (= result!49924 (and (inv!5439 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 lt!199344))) (value!28398 lt!199344))) e!275262))))

(assert (= tb!45405 b!450398))

(declare-fun m!713235 () Bool)

(assert (=> b!450398 m!713235))

(declare-fun m!713237 () Bool)

(assert (=> tb!45405 m!713237))

(assert (=> d!172448 t!70847))

(declare-fun b_and!48443 () Bool)

(assert (= b_and!48419 (and (=> t!70847 result!49924) b_and!48443)))

(declare-fun t!70849 () Bool)

(declare-fun tb!45407 () Bool)

(assert (=> (and b!449445 (= (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (toChars!1519 (transformation!845 (rule!1532 lt!199344)))) t!70849) tb!45407))

(declare-fun result!49926 () Bool)

(assert (= result!49926 result!49924))

(assert (=> d!172448 t!70849))

(declare-fun b_and!48445 () Bool)

(assert (= b_and!48421 (and (=> t!70849 result!49926) b_and!48445)))

(declare-fun tb!45409 () Bool)

(declare-fun t!70851 () Bool)

(assert (=> (and b!449451 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (toChars!1519 (transformation!845 (rule!1532 lt!199344)))) t!70851) tb!45409))

(declare-fun result!49928 () Bool)

(assert (= result!49928 result!49924))

(assert (=> d!172448 t!70851))

(declare-fun b_and!48447 () Bool)

(assert (= b_and!48423 (and (=> t!70851 result!49928) b_and!48447)))

(declare-fun m!713239 () Bool)

(assert (=> d!172448 m!713239))

(declare-fun m!713241 () Bool)

(assert (=> d!172448 m!713241))

(assert (=> b!449485 d!172448))

(declare-fun d!172458 () Bool)

(declare-fun e!275263 () Bool)

(assert (=> d!172458 e!275263))

(declare-fun res!199979 () Bool)

(assert (=> d!172458 (=> (not res!199979) (not e!275263))))

(declare-fun lt!199872 () BalanceConc!3034)

(assert (=> d!172458 (= res!199979 (= (list!1934 lt!199872) (Cons!4361 lt!199344 Nil!4361)))))

(assert (=> d!172458 (= lt!199872 (singleton!188 lt!199344))))

(assert (=> d!172458 (= (singletonSeq!391 lt!199344) lt!199872)))

(declare-fun b!450399 () Bool)

(assert (=> b!450399 (= e!275263 (isBalanced!465 (c!91064 lt!199872)))))

(assert (= (and d!172458 res!199979) b!450399))

(declare-fun m!713259 () Bool)

(assert (=> d!172458 m!713259))

(declare-fun m!713261 () Bool)

(assert (=> d!172458 m!713261))

(declare-fun m!713263 () Bool)

(assert (=> b!450399 m!713263))

(assert (=> b!449485 d!172458))

(declare-fun b!450400 () Bool)

(declare-fun e!275264 () List!4369)

(declare-fun call!31168 () List!4369)

(assert (=> b!450400 (= e!275264 call!31168)))

(declare-fun bm!31160 () Bool)

(declare-fun call!31167 () List!4369)

(declare-fun call!31165 () List!4369)

(assert (=> bm!31160 (= call!31168 (++!1264 call!31167 call!31165))))

(declare-fun bm!31161 () Bool)

(declare-fun call!31166 () List!4369)

(declare-fun c!91264 () Bool)

(declare-fun c!91267 () Bool)

(assert (=> bm!31161 (= call!31166 (usedCharacters!146 (ite c!91264 (reg!1398 (regex!845 (rule!1532 separatorToken!170))) (ite c!91267 (regTwo!2651 (regex!845 (rule!1532 separatorToken!170))) (regTwo!2650 (regex!845 (rule!1532 separatorToken!170)))))))))

(declare-fun b!450401 () Bool)

(assert (=> b!450401 (= e!275264 call!31168)))

(declare-fun bm!31162 () Bool)

(assert (=> bm!31162 (= call!31167 (usedCharacters!146 (ite c!91267 (regOne!2651 (regex!845 (rule!1532 separatorToken!170))) (regOne!2650 (regex!845 (rule!1532 separatorToken!170))))))))

(declare-fun b!450402 () Bool)

(declare-fun e!275266 () List!4369)

(assert (=> b!450402 (= e!275266 e!275264)))

(assert (=> b!450402 (= c!91267 ((_ is Union!1069) (regex!845 (rule!1532 separatorToken!170))))))

(declare-fun b!450403 () Bool)

(declare-fun e!275267 () List!4369)

(assert (=> b!450403 (= e!275267 (Cons!4359 (c!91063 (regex!845 (rule!1532 separatorToken!170))) Nil!4359))))

(declare-fun b!450404 () Bool)

(assert (=> b!450404 (= e!275266 call!31166)))

(declare-fun bm!31163 () Bool)

(assert (=> bm!31163 (= call!31165 call!31166)))

(declare-fun b!450405 () Bool)

(declare-fun e!275265 () List!4369)

(assert (=> b!450405 (= e!275265 Nil!4359)))

(declare-fun d!172460 () Bool)

(declare-fun c!91266 () Bool)

(assert (=> d!172460 (= c!91266 (or ((_ is EmptyExpr!1069) (regex!845 (rule!1532 separatorToken!170))) ((_ is EmptyLang!1069) (regex!845 (rule!1532 separatorToken!170)))))))

(assert (=> d!172460 (= (usedCharacters!146 (regex!845 (rule!1532 separatorToken!170))) e!275265)))

(declare-fun b!450406 () Bool)

(assert (=> b!450406 (= c!91264 ((_ is Star!1069) (regex!845 (rule!1532 separatorToken!170))))))

(assert (=> b!450406 (= e!275267 e!275266)))

(declare-fun b!450407 () Bool)

(assert (=> b!450407 (= e!275265 e!275267)))

(declare-fun c!91265 () Bool)

(assert (=> b!450407 (= c!91265 ((_ is ElementMatch!1069) (regex!845 (rule!1532 separatorToken!170))))))

(assert (= (and d!172460 c!91266) b!450405))

(assert (= (and d!172460 (not c!91266)) b!450407))

(assert (= (and b!450407 c!91265) b!450403))

(assert (= (and b!450407 (not c!91265)) b!450406))

(assert (= (and b!450406 c!91264) b!450404))

(assert (= (and b!450406 (not c!91264)) b!450402))

(assert (= (and b!450402 c!91267) b!450401))

(assert (= (and b!450402 (not c!91267)) b!450400))

(assert (= (or b!450401 b!450400) bm!31162))

(assert (= (or b!450401 b!450400) bm!31163))

(assert (= (or b!450401 b!450400) bm!31160))

(assert (= (or b!450404 bm!31163) bm!31161))

(declare-fun m!713267 () Bool)

(assert (=> bm!31160 m!713267))

(declare-fun m!713269 () Bool)

(assert (=> bm!31161 m!713269))

(declare-fun m!713271 () Bool)

(assert (=> bm!31162 m!713271))

(assert (=> b!449485 d!172460))

(declare-fun d!172468 () Bool)

(assert (=> d!172468 (dynLambda!2625 lambda!13042 lt!199344)))

(declare-fun lt!199873 () Unit!7841)

(assert (=> d!172468 (= lt!199873 (choose!3384 tokens!465 lambda!13042 lt!199344))))

(declare-fun e!275269 () Bool)

(assert (=> d!172468 e!275269))

(declare-fun res!199982 () Bool)

(assert (=> d!172468 (=> (not res!199982) (not e!275269))))

(assert (=> d!172468 (= res!199982 (forall!1260 tokens!465 lambda!13042))))

(assert (=> d!172468 (= (forallContained!398 tokens!465 lambda!13042 lt!199344) lt!199873)))

(declare-fun b!450410 () Bool)

(assert (=> b!450410 (= e!275269 (contains!973 tokens!465 lt!199344))))

(assert (= (and d!172468 res!199982) b!450410))

(declare-fun b_lambda!18633 () Bool)

(assert (=> (not b_lambda!18633) (not d!172468)))

(declare-fun m!713273 () Bool)

(assert (=> d!172468 m!713273))

(declare-fun m!713275 () Bool)

(assert (=> d!172468 m!713275))

(assert (=> d!172468 m!712573))

(declare-fun m!713277 () Bool)

(assert (=> b!450410 m!713277))

(assert (=> b!449485 d!172468))

(declare-fun b!450411 () Bool)

(declare-fun res!199985 () Bool)

(declare-fun e!275271 () Bool)

(assert (=> b!450411 (=> (not res!199985) (not e!275271))))

(declare-fun lt!199874 () tuple2!5270)

(assert (=> b!450411 (= res!199985 (= (list!1934 (_1!2851 lt!199874)) (_1!2855 (lexList!283 thiss!17480 rules!1920 (list!1931 lt!199363)))))))

(declare-fun b!450412 () Bool)

(declare-fun e!275272 () Bool)

(assert (=> b!450412 (= e!275272 (not (isEmpty!3301 (_1!2851 lt!199874))))))

(declare-fun b!450413 () Bool)

(declare-fun e!275270 () Bool)

(assert (=> b!450413 (= e!275270 (= (_2!2851 lt!199874) lt!199363))))

(declare-fun d!172470 () Bool)

(assert (=> d!172470 e!275271))

(declare-fun res!199984 () Bool)

(assert (=> d!172470 (=> (not res!199984) (not e!275271))))

(assert (=> d!172470 (= res!199984 e!275270)))

(declare-fun c!91268 () Bool)

(assert (=> d!172470 (= c!91268 (> (size!3579 (_1!2851 lt!199874)) 0))))

(assert (=> d!172470 (= lt!199874 (lexTailRecV2!250 thiss!17480 rules!1920 lt!199363 (BalanceConc!3033 Empty!1512) lt!199363 (BalanceConc!3035 Empty!1513)))))

(assert (=> d!172470 (= (lex!523 thiss!17480 rules!1920 lt!199363) lt!199874)))

(declare-fun b!450414 () Bool)

(assert (=> b!450414 (= e!275270 e!275272)))

(declare-fun res!199983 () Bool)

(assert (=> b!450414 (= res!199983 (< (size!3586 (_2!2851 lt!199874)) (size!3586 lt!199363)))))

(assert (=> b!450414 (=> (not res!199983) (not e!275272))))

(declare-fun b!450415 () Bool)

(assert (=> b!450415 (= e!275271 (= (list!1931 (_2!2851 lt!199874)) (_2!2855 (lexList!283 thiss!17480 rules!1920 (list!1931 lt!199363)))))))

(assert (= (and d!172470 c!91268) b!450414))

(assert (= (and d!172470 (not c!91268)) b!450413))

(assert (= (and b!450414 res!199983) b!450412))

(assert (= (and d!172470 res!199984) b!450411))

(assert (= (and b!450411 res!199985) b!450415))

(declare-fun m!713287 () Bool)

(assert (=> d!172470 m!713287))

(declare-fun m!713289 () Bool)

(assert (=> d!172470 m!713289))

(declare-fun m!713291 () Bool)

(assert (=> b!450412 m!713291))

(declare-fun m!713293 () Bool)

(assert (=> b!450414 m!713293))

(declare-fun m!713295 () Bool)

(assert (=> b!450414 m!713295))

(declare-fun m!713297 () Bool)

(assert (=> b!450415 m!713297))

(declare-fun m!713299 () Bool)

(assert (=> b!450415 m!713299))

(assert (=> b!450415 m!713299))

(declare-fun m!713301 () Bool)

(assert (=> b!450415 m!713301))

(declare-fun m!713303 () Bool)

(assert (=> b!450411 m!713303))

(assert (=> b!450411 m!713299))

(assert (=> b!450411 m!713299))

(assert (=> b!450411 m!713301))

(assert (=> b!449485 d!172470))

(declare-fun b!450425 () Bool)

(declare-fun res!199998 () Bool)

(declare-fun e!275276 () Bool)

(assert (=> b!450425 (=> (not res!199998) (not e!275276))))

(declare-fun lt!199884 () Option!1117)

(assert (=> b!450425 (= res!199998 (< (size!3581 (_2!2852 (get!1586 lt!199884))) (size!3581 lt!199374)))))

(declare-fun b!450426 () Bool)

(assert (=> b!450426 (= e!275276 (contains!972 rules!1920 (rule!1532 (_1!2852 (get!1586 lt!199884)))))))

(declare-fun b!450427 () Bool)

(declare-fun res!199995 () Bool)

(assert (=> b!450427 (=> (not res!199995) (not e!275276))))

(assert (=> b!450427 (= res!199995 (= (++!1264 (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199884)))) (_2!2852 (get!1586 lt!199884))) lt!199374))))

(declare-fun b!450428 () Bool)

(declare-fun e!275277 () Option!1117)

(declare-fun call!31170 () Option!1117)

(assert (=> b!450428 (= e!275277 call!31170)))

(declare-fun b!450429 () Bool)

(declare-fun lt!199883 () Option!1117)

(declare-fun lt!199882 () Option!1117)

(assert (=> b!450429 (= e!275277 (ite (and ((_ is None!1116) lt!199883) ((_ is None!1116) lt!199882)) None!1116 (ite ((_ is None!1116) lt!199882) lt!199883 (ite ((_ is None!1116) lt!199883) lt!199882 (ite (>= (size!3578 (_1!2852 (v!15415 lt!199883))) (size!3578 (_1!2852 (v!15415 lt!199882)))) lt!199883 lt!199882)))))))

(assert (=> b!450429 (= lt!199883 call!31170)))

(assert (=> b!450429 (= lt!199882 (maxPrefix!447 thiss!17480 (t!70794 rules!1920) lt!199374))))

(declare-fun b!450430 () Bool)

(declare-fun res!199996 () Bool)

(assert (=> b!450430 (=> (not res!199996) (not e!275276))))

(assert (=> b!450430 (= res!199996 (= (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199884)))) (originalCharacters!888 (_1!2852 (get!1586 lt!199884)))))))

(declare-fun b!450431 () Bool)

(declare-fun e!275278 () Bool)

(assert (=> b!450431 (= e!275278 e!275276)))

(declare-fun res!199997 () Bool)

(assert (=> b!450431 (=> (not res!199997) (not e!275276))))

(assert (=> b!450431 (= res!199997 (isDefined!956 lt!199884))))

(declare-fun b!450433 () Bool)

(declare-fun res!199993 () Bool)

(assert (=> b!450433 (=> (not res!199993) (not e!275276))))

(assert (=> b!450433 (= res!199993 (matchR!387 (regex!845 (rule!1532 (_1!2852 (get!1586 lt!199884)))) (list!1931 (charsOf!488 (_1!2852 (get!1586 lt!199884))))))))

(declare-fun bm!31165 () Bool)

(assert (=> bm!31165 (= call!31170 (maxPrefixOneRule!214 thiss!17480 (h!9757 rules!1920) lt!199374))))

(declare-fun b!450432 () Bool)

(declare-fun res!199994 () Bool)

(assert (=> b!450432 (=> (not res!199994) (not e!275276))))

(assert (=> b!450432 (= res!199994 (= (value!28398 (_1!2852 (get!1586 lt!199884))) (apply!1106 (transformation!845 (rule!1532 (_1!2852 (get!1586 lt!199884)))) (seqFromList!1056 (originalCharacters!888 (_1!2852 (get!1586 lt!199884)))))))))

(declare-fun d!172478 () Bool)

(assert (=> d!172478 e!275278))

(declare-fun res!199999 () Bool)

(assert (=> d!172478 (=> res!199999 e!275278)))

(assert (=> d!172478 (= res!199999 (isEmpty!3304 lt!199884))))

(assert (=> d!172478 (= lt!199884 e!275277)))

(declare-fun c!91270 () Bool)

(assert (=> d!172478 (= c!91270 (and ((_ is Cons!4360) rules!1920) ((_ is Nil!4360) (t!70794 rules!1920))))))

(declare-fun lt!199881 () Unit!7841)

(declare-fun lt!199880 () Unit!7841)

(assert (=> d!172478 (= lt!199881 lt!199880)))

(assert (=> d!172478 (isPrefix!505 lt!199374 lt!199374)))

(assert (=> d!172478 (= lt!199880 (lemmaIsPrefixRefl!280 lt!199374 lt!199374))))

(assert (=> d!172478 (rulesValidInductive!275 thiss!17480 rules!1920)))

(assert (=> d!172478 (= (maxPrefix!447 thiss!17480 rules!1920 lt!199374) lt!199884)))

(assert (= (and d!172478 c!91270) b!450428))

(assert (= (and d!172478 (not c!91270)) b!450429))

(assert (= (or b!450428 b!450429) bm!31165))

(assert (= (and d!172478 (not res!199999)) b!450431))

(assert (= (and b!450431 res!199997) b!450430))

(assert (= (and b!450430 res!199996) b!450425))

(assert (= (and b!450425 res!199998) b!450427))

(assert (= (and b!450427 res!199995) b!450432))

(assert (= (and b!450432 res!199994) b!450433))

(assert (= (and b!450433 res!199993) b!450426))

(declare-fun m!713325 () Bool)

(assert (=> b!450427 m!713325))

(declare-fun m!713329 () Bool)

(assert (=> b!450427 m!713329))

(assert (=> b!450427 m!713329))

(declare-fun m!713333 () Bool)

(assert (=> b!450427 m!713333))

(assert (=> b!450427 m!713333))

(declare-fun m!713337 () Bool)

(assert (=> b!450427 m!713337))

(assert (=> b!450432 m!713325))

(declare-fun m!713343 () Bool)

(assert (=> b!450432 m!713343))

(assert (=> b!450432 m!713343))

(declare-fun m!713345 () Bool)

(assert (=> b!450432 m!713345))

(assert (=> b!450430 m!713325))

(assert (=> b!450430 m!713329))

(assert (=> b!450430 m!713329))

(assert (=> b!450430 m!713333))

(declare-fun m!713347 () Bool)

(assert (=> b!450429 m!713347))

(assert (=> b!450425 m!713325))

(declare-fun m!713349 () Bool)

(assert (=> b!450425 m!713349))

(declare-fun m!713351 () Bool)

(assert (=> b!450425 m!713351))

(assert (=> b!450426 m!713325))

(declare-fun m!713353 () Bool)

(assert (=> b!450426 m!713353))

(declare-fun m!713355 () Bool)

(assert (=> b!450431 m!713355))

(declare-fun m!713357 () Bool)

(assert (=> bm!31165 m!713357))

(declare-fun m!713359 () Bool)

(assert (=> d!172478 m!713359))

(declare-fun m!713361 () Bool)

(assert (=> d!172478 m!713361))

(declare-fun m!713363 () Bool)

(assert (=> d!172478 m!713363))

(assert (=> d!172478 m!711917))

(assert (=> b!450433 m!713325))

(assert (=> b!450433 m!713329))

(assert (=> b!450433 m!713329))

(assert (=> b!450433 m!713333))

(assert (=> b!450433 m!713333))

(declare-fun m!713365 () Bool)

(assert (=> b!450433 m!713365))

(assert (=> b!449485 d!172478))

(declare-fun d!172484 () Bool)

(assert (=> d!172484 (= (maxPrefix!447 thiss!17480 rules!1920 (++!1264 (list!1931 (charsOf!488 separatorToken!170)) lt!199362)) (Some!1116 (tuple2!5273 separatorToken!170 lt!199362)))))

(declare-fun lt!199888 () Unit!7841)

(declare-fun choose!3398 (LexerInterface!731 List!4370 Token!1434 Rule!1490 List!4369 Rule!1490) Unit!7841)

(assert (=> d!172484 (= lt!199888 (choose!3398 thiss!17480 rules!1920 separatorToken!170 (rule!1532 separatorToken!170) lt!199362 (rule!1532 lt!199344)))))

(assert (=> d!172484 (not (isEmpty!3300 rules!1920))))

(assert (=> d!172484 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!76 thiss!17480 rules!1920 separatorToken!170 (rule!1532 separatorToken!170) lt!199362 (rule!1532 lt!199344)) lt!199888)))

(declare-fun bs!55799 () Bool)

(assert (= bs!55799 d!172484))

(assert (=> bs!55799 m!711575))

(declare-fun m!713389 () Bool)

(assert (=> bs!55799 m!713389))

(declare-fun m!713391 () Bool)

(assert (=> bs!55799 m!713391))

(declare-fun m!713393 () Bool)

(assert (=> bs!55799 m!713393))

(assert (=> bs!55799 m!711623))

(assert (=> bs!55799 m!713391))

(assert (=> bs!55799 m!711621))

(assert (=> bs!55799 m!711621))

(assert (=> bs!55799 m!711623))

(assert (=> b!449485 d!172484))

(declare-fun d!172496 () Bool)

(declare-fun lt!199889 () Bool)

(assert (=> d!172496 (= lt!199889 (select (content!731 (usedCharacters!146 (regex!845 (rule!1532 separatorToken!170)))) lt!199370))))

(declare-fun e!275326 () Bool)

(assert (=> d!172496 (= lt!199889 e!275326)))

(declare-fun res!200004 () Bool)

(assert (=> d!172496 (=> (not res!200004) (not e!275326))))

(assert (=> d!172496 (= res!200004 ((_ is Cons!4359) (usedCharacters!146 (regex!845 (rule!1532 separatorToken!170)))))))

(assert (=> d!172496 (= (contains!971 (usedCharacters!146 (regex!845 (rule!1532 separatorToken!170))) lt!199370) lt!199889)))

(declare-fun b!450496 () Bool)

(declare-fun e!275325 () Bool)

(assert (=> b!450496 (= e!275326 e!275325)))

(declare-fun res!200005 () Bool)

(assert (=> b!450496 (=> res!200005 e!275325)))

(assert (=> b!450496 (= res!200005 (= (h!9756 (usedCharacters!146 (regex!845 (rule!1532 separatorToken!170)))) lt!199370))))

(declare-fun b!450497 () Bool)

(assert (=> b!450497 (= e!275325 (contains!971 (t!70793 (usedCharacters!146 (regex!845 (rule!1532 separatorToken!170)))) lt!199370))))

(assert (= (and d!172496 res!200004) b!450496))

(assert (= (and b!450496 (not res!200005)) b!450497))

(assert (=> d!172496 m!711707))

(declare-fun m!713395 () Bool)

(assert (=> d!172496 m!713395))

(declare-fun m!713397 () Bool)

(assert (=> d!172496 m!713397))

(declare-fun m!713399 () Bool)

(assert (=> b!450497 m!713399))

(assert (=> b!449485 d!172496))

(declare-fun lt!199892 () Bool)

(declare-fun d!172498 () Bool)

(assert (=> d!172498 (= lt!199892 (isEmpty!3303 (list!1934 (_1!2851 (lex!523 thiss!17480 rules!1920 (seqFromList!1056 lt!199341))))))))

(declare-fun isEmpty!3313 (Conc!1513) Bool)

(assert (=> d!172498 (= lt!199892 (isEmpty!3313 (c!91064 (_1!2851 (lex!523 thiss!17480 rules!1920 (seqFromList!1056 lt!199341))))))))

(assert (=> d!172498 (= (isEmpty!3301 (_1!2851 (lex!523 thiss!17480 rules!1920 (seqFromList!1056 lt!199341)))) lt!199892)))

(declare-fun bs!55800 () Bool)

(assert (= bs!55800 d!172498))

(declare-fun m!713401 () Bool)

(assert (=> bs!55800 m!713401))

(assert (=> bs!55800 m!713401))

(declare-fun m!713403 () Bool)

(assert (=> bs!55800 m!713403))

(declare-fun m!713405 () Bool)

(assert (=> bs!55800 m!713405))

(assert (=> b!449464 d!172498))

(declare-fun b!450498 () Bool)

(declare-fun res!200008 () Bool)

(declare-fun e!275328 () Bool)

(assert (=> b!450498 (=> (not res!200008) (not e!275328))))

(declare-fun lt!199893 () tuple2!5270)

(assert (=> b!450498 (= res!200008 (= (list!1934 (_1!2851 lt!199893)) (_1!2855 (lexList!283 thiss!17480 rules!1920 (list!1931 (seqFromList!1056 lt!199341))))))))

(declare-fun b!450499 () Bool)

(declare-fun e!275329 () Bool)

(assert (=> b!450499 (= e!275329 (not (isEmpty!3301 (_1!2851 lt!199893))))))

(declare-fun b!450500 () Bool)

(declare-fun e!275327 () Bool)

(assert (=> b!450500 (= e!275327 (= (_2!2851 lt!199893) (seqFromList!1056 lt!199341)))))

(declare-fun d!172500 () Bool)

(assert (=> d!172500 e!275328))

(declare-fun res!200007 () Bool)

(assert (=> d!172500 (=> (not res!200007) (not e!275328))))

(assert (=> d!172500 (= res!200007 e!275327)))

(declare-fun c!91272 () Bool)

(assert (=> d!172500 (= c!91272 (> (size!3579 (_1!2851 lt!199893)) 0))))

(assert (=> d!172500 (= lt!199893 (lexTailRecV2!250 thiss!17480 rules!1920 (seqFromList!1056 lt!199341) (BalanceConc!3033 Empty!1512) (seqFromList!1056 lt!199341) (BalanceConc!3035 Empty!1513)))))

(assert (=> d!172500 (= (lex!523 thiss!17480 rules!1920 (seqFromList!1056 lt!199341)) lt!199893)))

(declare-fun b!450501 () Bool)

(assert (=> b!450501 (= e!275327 e!275329)))

(declare-fun res!200006 () Bool)

(assert (=> b!450501 (= res!200006 (< (size!3586 (_2!2851 lt!199893)) (size!3586 (seqFromList!1056 lt!199341))))))

(assert (=> b!450501 (=> (not res!200006) (not e!275329))))

(declare-fun b!450502 () Bool)

(assert (=> b!450502 (= e!275328 (= (list!1931 (_2!2851 lt!199893)) (_2!2855 (lexList!283 thiss!17480 rules!1920 (list!1931 (seqFromList!1056 lt!199341))))))))

(assert (= (and d!172500 c!91272) b!450501))

(assert (= (and d!172500 (not c!91272)) b!450500))

(assert (= (and b!450501 res!200006) b!450499))

(assert (= (and d!172500 res!200007) b!450498))

(assert (= (and b!450498 res!200008) b!450502))

(declare-fun m!713407 () Bool)

(assert (=> d!172500 m!713407))

(assert (=> d!172500 m!711557))

(assert (=> d!172500 m!711557))

(declare-fun m!713409 () Bool)

(assert (=> d!172500 m!713409))

(declare-fun m!713411 () Bool)

(assert (=> b!450499 m!713411))

(declare-fun m!713413 () Bool)

(assert (=> b!450501 m!713413))

(assert (=> b!450501 m!711557))

(declare-fun m!713415 () Bool)

(assert (=> b!450501 m!713415))

(declare-fun m!713417 () Bool)

(assert (=> b!450502 m!713417))

(assert (=> b!450502 m!711557))

(declare-fun m!713419 () Bool)

(assert (=> b!450502 m!713419))

(assert (=> b!450502 m!713419))

(declare-fun m!713421 () Bool)

(assert (=> b!450502 m!713421))

(declare-fun m!713423 () Bool)

(assert (=> b!450498 m!713423))

(assert (=> b!450498 m!711557))

(assert (=> b!450498 m!713419))

(assert (=> b!450498 m!713419))

(assert (=> b!450498 m!713421))

(assert (=> b!449464 d!172500))

(declare-fun d!172502 () Bool)

(assert (=> d!172502 (= (seqFromList!1056 lt!199341) (fromListB!470 lt!199341))))

(declare-fun bs!55801 () Bool)

(assert (= bs!55801 d!172502))

(declare-fun m!713425 () Bool)

(assert (=> bs!55801 m!713425))

(assert (=> b!449464 d!172502))

(declare-fun d!172504 () Bool)

(declare-fun res!200009 () Bool)

(declare-fun e!275330 () Bool)

(assert (=> d!172504 (=> (not res!200009) (not e!275330))))

(assert (=> d!172504 (= res!200009 (not (isEmpty!3302 (originalCharacters!888 (h!9758 tokens!465)))))))

(assert (=> d!172504 (= (inv!5435 (h!9758 tokens!465)) e!275330)))

(declare-fun b!450503 () Bool)

(declare-fun res!200010 () Bool)

(assert (=> b!450503 (=> (not res!200010) (not e!275330))))

(assert (=> b!450503 (= res!200010 (= (originalCharacters!888 (h!9758 tokens!465)) (list!1931 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (value!28398 (h!9758 tokens!465))))))))

(declare-fun b!450504 () Bool)

(assert (=> b!450504 (= e!275330 (= (size!3578 (h!9758 tokens!465)) (size!3581 (originalCharacters!888 (h!9758 tokens!465)))))))

(assert (= (and d!172504 res!200009) b!450503))

(assert (= (and b!450503 res!200010) b!450504))

(declare-fun b_lambda!18653 () Bool)

(assert (=> (not b_lambda!18653) (not b!450503)))

(declare-fun t!70865 () Bool)

(declare-fun tb!45423 () Bool)

(assert (=> (and b!449448 (= (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465))))) t!70865) tb!45423))

(declare-fun b!450505 () Bool)

(declare-fun e!275331 () Bool)

(declare-fun tp!125481 () Bool)

(assert (=> b!450505 (= e!275331 (and (inv!5438 (c!91062 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (value!28398 (h!9758 tokens!465))))) tp!125481))))

(declare-fun result!49950 () Bool)

(assert (=> tb!45423 (= result!49950 (and (inv!5439 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (value!28398 (h!9758 tokens!465)))) e!275331))))

(assert (= tb!45423 b!450505))

(declare-fun m!713427 () Bool)

(assert (=> b!450505 m!713427))

(declare-fun m!713429 () Bool)

(assert (=> tb!45423 m!713429))

(assert (=> b!450503 t!70865))

(declare-fun b_and!48463 () Bool)

(assert (= b_and!48443 (and (=> t!70865 result!49950) b_and!48463)))

(declare-fun tb!45425 () Bool)

(declare-fun t!70867 () Bool)

(assert (=> (and b!449445 (= (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465))))) t!70867) tb!45425))

(declare-fun result!49952 () Bool)

(assert (= result!49952 result!49950))

(assert (=> b!450503 t!70867))

(declare-fun b_and!48465 () Bool)

(assert (= b_and!48445 (and (=> t!70867 result!49952) b_and!48465)))

(declare-fun t!70869 () Bool)

(declare-fun tb!45427 () Bool)

(assert (=> (and b!449451 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465))))) t!70869) tb!45427))

(declare-fun result!49954 () Bool)

(assert (= result!49954 result!49950))

(assert (=> b!450503 t!70869))

(declare-fun b_and!48467 () Bool)

(assert (= b_and!48447 (and (=> t!70869 result!49954) b_and!48467)))

(declare-fun m!713431 () Bool)

(assert (=> d!172504 m!713431))

(declare-fun m!713433 () Bool)

(assert (=> b!450503 m!713433))

(assert (=> b!450503 m!713433))

(declare-fun m!713435 () Bool)

(assert (=> b!450503 m!713435))

(declare-fun m!713437 () Bool)

(assert (=> b!450504 m!713437))

(assert (=> b!449483 d!172504))

(declare-fun d!172506 () Bool)

(assert (=> d!172506 (= (seqFromList!1055 (t!70795 tokens!465)) (fromListB!469 (t!70795 tokens!465)))))

(declare-fun bs!55802 () Bool)

(assert (= bs!55802 d!172506))

(declare-fun m!713439 () Bool)

(assert (=> bs!55802 m!713439))

(assert (=> b!449484 d!172506))

(declare-fun b!450509 () Bool)

(declare-fun e!275332 () Bool)

(declare-fun lt!199894 () List!4369)

(assert (=> b!450509 (= e!275332 (or (not (= lt!199362 Nil!4359)) (= lt!199894 lt!199368)))))

(declare-fun b!450508 () Bool)

(declare-fun res!200011 () Bool)

(assert (=> b!450508 (=> (not res!200011) (not e!275332))))

(assert (=> b!450508 (= res!200011 (= (size!3581 lt!199894) (+ (size!3581 lt!199368) (size!3581 lt!199362))))))

(declare-fun d!172508 () Bool)

(assert (=> d!172508 e!275332))

(declare-fun res!200012 () Bool)

(assert (=> d!172508 (=> (not res!200012) (not e!275332))))

(assert (=> d!172508 (= res!200012 (= (content!731 lt!199894) ((_ map or) (content!731 lt!199368) (content!731 lt!199362))))))

(declare-fun e!275333 () List!4369)

(assert (=> d!172508 (= lt!199894 e!275333)))

(declare-fun c!91273 () Bool)

(assert (=> d!172508 (= c!91273 ((_ is Nil!4359) lt!199368))))

(assert (=> d!172508 (= (++!1264 lt!199368 lt!199362) lt!199894)))

(declare-fun b!450507 () Bool)

(assert (=> b!450507 (= e!275333 (Cons!4359 (h!9756 lt!199368) (++!1264 (t!70793 lt!199368) lt!199362)))))

(declare-fun b!450506 () Bool)

(assert (=> b!450506 (= e!275333 lt!199362)))

(assert (= (and d!172508 c!91273) b!450506))

(assert (= (and d!172508 (not c!91273)) b!450507))

(assert (= (and d!172508 res!200012) b!450508))

(assert (= (and b!450508 res!200011) b!450509))

(declare-fun m!713441 () Bool)

(assert (=> b!450508 m!713441))

(declare-fun m!713443 () Bool)

(assert (=> b!450508 m!713443))

(assert (=> b!450508 m!712107))

(declare-fun m!713445 () Bool)

(assert (=> d!172508 m!713445))

(declare-fun m!713447 () Bool)

(assert (=> d!172508 m!713447))

(assert (=> d!172508 m!712113))

(declare-fun m!713449 () Bool)

(assert (=> b!450507 m!713449))

(assert (=> b!449484 d!172508))

(declare-fun d!172510 () Bool)

(assert (=> d!172510 (= (list!1931 (charsOf!488 separatorToken!170)) (list!1935 (c!91062 (charsOf!488 separatorToken!170))))))

(declare-fun bs!55803 () Bool)

(assert (= bs!55803 d!172510))

(declare-fun m!713451 () Bool)

(assert (=> bs!55803 m!713451))

(assert (=> b!449484 d!172510))

(declare-fun b!450513 () Bool)

(declare-fun e!275334 () Bool)

(declare-fun lt!199895 () List!4369)

(assert (=> b!450513 (= e!275334 (or (not (= lt!199374 Nil!4359)) (= lt!199895 lt!199341)))))

(declare-fun b!450512 () Bool)

(declare-fun res!200013 () Bool)

(assert (=> b!450512 (=> (not res!200013) (not e!275334))))

(assert (=> b!450512 (= res!200013 (= (size!3581 lt!199895) (+ (size!3581 lt!199341) (size!3581 lt!199374))))))

(declare-fun d!172512 () Bool)

(assert (=> d!172512 e!275334))

(declare-fun res!200014 () Bool)

(assert (=> d!172512 (=> (not res!200014) (not e!275334))))

(assert (=> d!172512 (= res!200014 (= (content!731 lt!199895) ((_ map or) (content!731 lt!199341) (content!731 lt!199374))))))

(declare-fun e!275335 () List!4369)

(assert (=> d!172512 (= lt!199895 e!275335)))

(declare-fun c!91274 () Bool)

(assert (=> d!172512 (= c!91274 ((_ is Nil!4359) lt!199341))))

(assert (=> d!172512 (= (++!1264 lt!199341 lt!199374) lt!199895)))

(declare-fun b!450511 () Bool)

(assert (=> b!450511 (= e!275335 (Cons!4359 (h!9756 lt!199341) (++!1264 (t!70793 lt!199341) lt!199374)))))

(declare-fun b!450510 () Bool)

(assert (=> b!450510 (= e!275335 lt!199374)))

(assert (= (and d!172512 c!91274) b!450510))

(assert (= (and d!172512 (not c!91274)) b!450511))

(assert (= (and d!172512 res!200014) b!450512))

(assert (= (and b!450512 res!200013) b!450513))

(declare-fun m!713453 () Bool)

(assert (=> b!450512 m!713453))

(assert (=> b!450512 m!712073))

(assert (=> b!450512 m!713351))

(declare-fun m!713455 () Bool)

(assert (=> d!172512 m!713455))

(assert (=> d!172512 m!712111))

(declare-fun m!713457 () Bool)

(assert (=> d!172512 m!713457))

(declare-fun m!713459 () Bool)

(assert (=> b!450511 m!713459))

(assert (=> b!449484 d!172512))

(declare-fun bs!55804 () Bool)

(declare-fun b!450523 () Bool)

(assert (= bs!55804 (and b!450523 d!172114)))

(declare-fun lambda!13076 () Int)

(assert (=> bs!55804 (= lambda!13076 lambda!13047)))

(declare-fun bs!55805 () Bool)

(assert (= bs!55805 (and b!450523 b!449972)))

(assert (=> bs!55805 (= lambda!13076 lambda!13065)))

(declare-fun bs!55806 () Bool)

(assert (= bs!55806 (and b!450523 d!172216)))

(assert (=> bs!55806 (not (= lambda!13076 lambda!13064))))

(declare-fun bs!55807 () Bool)

(assert (= bs!55807 (and b!450523 b!449446)))

(assert (=> bs!55807 (= lambda!13076 lambda!13042)))

(declare-fun bs!55808 () Bool)

(assert (= bs!55808 (and b!450523 d!172372)))

(assert (=> bs!55808 (= lambda!13076 lambda!13074)))

(declare-fun bs!55809 () Bool)

(assert (= bs!55809 (and b!450523 b!449478)))

(assert (=> bs!55809 (not (= lambda!13076 lambda!13041))))

(declare-fun bs!55810 () Bool)

(assert (= bs!55810 (and b!450523 b!450018)))

(assert (=> bs!55810 (= lambda!13076 lambda!13073)))

(declare-fun b!450526 () Bool)

(declare-fun e!275343 () Bool)

(assert (=> b!450526 (= e!275343 true)))

(declare-fun b!450525 () Bool)

(declare-fun e!275342 () Bool)

(assert (=> b!450525 (= e!275342 e!275343)))

(declare-fun b!450524 () Bool)

(declare-fun e!275341 () Bool)

(assert (=> b!450524 (= e!275341 e!275342)))

(assert (=> b!450523 e!275341))

(assert (= b!450525 b!450526))

(assert (= b!450524 b!450525))

(assert (= (and b!450523 ((_ is Cons!4360) rules!1920)) b!450524))

(assert (=> b!450526 (< (dynLambda!2620 order!3821 (toValue!1660 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13076))))

(assert (=> b!450526 (< (dynLambda!2622 order!3825 (toChars!1519 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13076))))

(assert (=> b!450523 true))

(declare-fun b!450514 () Bool)

(declare-fun e!275338 () List!4369)

(declare-fun call!31172 () BalanceConc!3032)

(assert (=> b!450514 (= e!275338 (list!1931 call!31172))))

(declare-fun d!172514 () Bool)

(declare-fun c!91276 () Bool)

(assert (=> d!172514 (= c!91276 ((_ is Cons!4361) (t!70795 tokens!465)))))

(declare-fun e!275337 () List!4369)

(assert (=> d!172514 (= (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 (t!70795 tokens!465) separatorToken!170) e!275337)))

(declare-fun b!450515 () Bool)

(declare-fun e!275336 () List!4369)

(assert (=> b!450515 (= e!275336 Nil!4359)))

(assert (=> b!450515 (= (print!456 thiss!17480 (singletonSeq!391 (h!9758 (t!70795 tokens!465)))) (printTailRec!417 thiss!17480 (singletonSeq!391 (h!9758 (t!70795 tokens!465))) 0 (BalanceConc!3033 Empty!1512)))))

(declare-fun lt!199899 () Unit!7841)

(declare-fun Unit!7861 () Unit!7841)

(assert (=> b!450515 (= lt!199899 Unit!7861)))

(declare-fun call!31175 () List!4369)

(declare-fun lt!199900 () List!4369)

(declare-fun lt!199896 () Unit!7841)

(assert (=> b!450515 (= lt!199896 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!186 thiss!17480 rules!1920 call!31175 lt!199900))))

(assert (=> b!450515 false))

(declare-fun lt!199901 () Unit!7841)

(declare-fun Unit!7862 () Unit!7841)

(assert (=> b!450515 (= lt!199901 Unit!7862)))

(declare-fun b!450516 () Bool)

(declare-fun e!275340 () BalanceConc!3032)

(assert (=> b!450516 (= e!275340 call!31172)))

(declare-fun b!450517 () Bool)

(assert (=> b!450517 (= e!275340 (charsOf!488 separatorToken!170))))

(declare-fun bm!31166 () Bool)

(declare-fun call!31174 () BalanceConc!3032)

(assert (=> bm!31166 (= call!31172 call!31174)))

(declare-fun c!91277 () Bool)

(declare-fun call!31171 () List!4369)

(declare-fun bm!31167 () Bool)

(assert (=> bm!31167 (= call!31171 (list!1931 (ite c!91277 call!31174 e!275340)))))

(declare-fun bm!31168 () Bool)

(assert (=> bm!31168 (= call!31174 (charsOf!488 (h!9758 (t!70795 tokens!465))))))

(declare-fun bm!31169 () Bool)

(declare-fun c!91275 () Bool)

(assert (=> bm!31169 (= c!91275 c!91277)))

(declare-fun call!31173 () List!4369)

(assert (=> bm!31169 (= call!31173 (++!1264 e!275338 (ite c!91277 lt!199900 call!31175)))))

(declare-fun b!450518 () Bool)

(assert (=> b!450518 (= e!275337 Nil!4359)))

(declare-fun b!450519 () Bool)

(assert (=> b!450519 (= e!275338 call!31171)))

(declare-fun b!450520 () Bool)

(declare-fun c!91279 () Bool)

(declare-fun lt!199897 () Option!1117)

(assert (=> b!450520 (= c!91279 (and ((_ is Some!1116) lt!199897) (not (= (_1!2852 (v!15415 lt!199897)) (h!9758 (t!70795 tokens!465))))))))

(declare-fun e!275339 () List!4369)

(assert (=> b!450520 (= e!275339 e!275336)))

(declare-fun b!450521 () Bool)

(assert (=> b!450521 (= e!275339 call!31173)))

(declare-fun bm!31170 () Bool)

(assert (=> bm!31170 (= call!31175 call!31171)))

(declare-fun c!91278 () Bool)

(assert (=> bm!31170 (= c!91278 c!91279)))

(declare-fun b!450522 () Bool)

(assert (=> b!450522 (= e!275336 (++!1264 call!31173 lt!199900))))

(assert (=> b!450523 (= e!275337 e!275339)))

(declare-fun lt!199898 () Unit!7841)

(assert (=> b!450523 (= lt!199898 (forallContained!398 (t!70795 tokens!465) lambda!13076 (h!9758 (t!70795 tokens!465))))))

(assert (=> b!450523 (= lt!199900 (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 (t!70795 (t!70795 tokens!465)) separatorToken!170))))

(assert (=> b!450523 (= lt!199897 (maxPrefix!447 thiss!17480 rules!1920 (++!1264 (list!1931 (charsOf!488 (h!9758 (t!70795 tokens!465)))) lt!199900)))))

(assert (=> b!450523 (= c!91277 (and ((_ is Some!1116) lt!199897) (= (_1!2852 (v!15415 lt!199897)) (h!9758 (t!70795 tokens!465)))))))

(assert (= (and d!172514 c!91276) b!450523))

(assert (= (and d!172514 (not c!91276)) b!450518))

(assert (= (and b!450523 c!91277) b!450521))

(assert (= (and b!450523 (not c!91277)) b!450520))

(assert (= (and b!450520 c!91279) b!450522))

(assert (= (and b!450520 (not c!91279)) b!450515))

(assert (= (or b!450522 b!450515) bm!31166))

(assert (= (or b!450522 b!450515) bm!31170))

(assert (= (and bm!31170 c!91278) b!450517))

(assert (= (and bm!31170 (not c!91278)) b!450516))

(assert (= (or b!450521 bm!31166) bm!31168))

(assert (= (or b!450521 bm!31170) bm!31167))

(assert (= (or b!450521 b!450522) bm!31169))

(assert (= (and bm!31169 c!91275) b!450519))

(assert (= (and bm!31169 (not c!91275)) b!450514))

(declare-fun m!713461 () Bool)

(assert (=> bm!31167 m!713461))

(declare-fun m!713463 () Bool)

(assert (=> bm!31169 m!713463))

(declare-fun m!713465 () Bool)

(assert (=> b!450515 m!713465))

(assert (=> b!450515 m!713465))

(declare-fun m!713467 () Bool)

(assert (=> b!450515 m!713467))

(assert (=> b!450515 m!713465))

(declare-fun m!713469 () Bool)

(assert (=> b!450515 m!713469))

(declare-fun m!713471 () Bool)

(assert (=> b!450515 m!713471))

(assert (=> b!450517 m!711621))

(declare-fun m!713473 () Bool)

(assert (=> b!450522 m!713473))

(declare-fun m!713475 () Bool)

(assert (=> b!450523 m!713475))

(declare-fun m!713477 () Bool)

(assert (=> b!450523 m!713477))

(declare-fun m!713479 () Bool)

(assert (=> b!450523 m!713479))

(declare-fun m!713481 () Bool)

(assert (=> b!450523 m!713481))

(assert (=> b!450523 m!713479))

(assert (=> b!450523 m!713475))

(declare-fun m!713483 () Bool)

(assert (=> b!450523 m!713483))

(assert (=> b!450523 m!713477))

(declare-fun m!713485 () Bool)

(assert (=> b!450523 m!713485))

(declare-fun m!713487 () Bool)

(assert (=> b!450514 m!713487))

(assert (=> bm!31168 m!713479))

(assert (=> b!449484 d!172514))

(declare-fun d!172516 () Bool)

(assert (=> d!172516 (= (++!1264 (++!1264 lt!199341 lt!199368) lt!199362) (++!1264 lt!199341 (++!1264 lt!199368 lt!199362)))))

(declare-fun lt!199904 () Unit!7841)

(declare-fun choose!3401 (List!4369 List!4369 List!4369) Unit!7841)

(assert (=> d!172516 (= lt!199904 (choose!3401 lt!199341 lt!199368 lt!199362))))

(assert (=> d!172516 (= (lemmaConcatAssociativity!580 lt!199341 lt!199368 lt!199362) lt!199904)))

(declare-fun bs!55811 () Bool)

(assert (= bs!55811 d!172516))

(assert (=> bs!55811 m!711633))

(assert (=> bs!55811 m!711625))

(declare-fun m!713489 () Bool)

(assert (=> bs!55811 m!713489))

(assert (=> bs!55811 m!711625))

(declare-fun m!713491 () Bool)

(assert (=> bs!55811 m!713491))

(assert (=> bs!55811 m!711633))

(assert (=> bs!55811 m!711639))

(assert (=> b!449484 d!172516))

(declare-fun d!172518 () Bool)

(declare-fun lt!199905 () BalanceConc!3032)

(assert (=> d!172518 (= (list!1931 lt!199905) (originalCharacters!888 separatorToken!170))))

(assert (=> d!172518 (= lt!199905 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (value!28398 separatorToken!170)))))

(assert (=> d!172518 (= (charsOf!488 separatorToken!170) lt!199905)))

(declare-fun b_lambda!18655 () Bool)

(assert (=> (not b_lambda!18655) (not d!172518)))

(assert (=> d!172518 t!70800))

(declare-fun b_and!48469 () Bool)

(assert (= b_and!48463 (and (=> t!70800 result!49900) b_and!48469)))

(assert (=> d!172518 t!70806))

(declare-fun b_and!48471 () Bool)

(assert (= b_and!48465 (and (=> t!70806 result!49908) b_and!48471)))

(assert (=> d!172518 t!70808))

(declare-fun b_and!48473 () Bool)

(assert (= b_and!48467 (and (=> t!70808 result!49910) b_and!48473)))

(declare-fun m!713493 () Bool)

(assert (=> d!172518 m!713493))

(assert (=> d!172518 m!711839))

(assert (=> b!449484 d!172518))

(declare-fun lt!199906 () List!4369)

(declare-fun e!275344 () Bool)

(declare-fun b!450530 () Bool)

(assert (=> b!450530 (= e!275344 (or (not (= lt!199362 Nil!4359)) (= lt!199906 (++!1264 lt!199341 lt!199368))))))

(declare-fun b!450529 () Bool)

(declare-fun res!200015 () Bool)

(assert (=> b!450529 (=> (not res!200015) (not e!275344))))

(assert (=> b!450529 (= res!200015 (= (size!3581 lt!199906) (+ (size!3581 (++!1264 lt!199341 lt!199368)) (size!3581 lt!199362))))))

(declare-fun d!172520 () Bool)

(assert (=> d!172520 e!275344))

(declare-fun res!200016 () Bool)

(assert (=> d!172520 (=> (not res!200016) (not e!275344))))

(assert (=> d!172520 (= res!200016 (= (content!731 lt!199906) ((_ map or) (content!731 (++!1264 lt!199341 lt!199368)) (content!731 lt!199362))))))

(declare-fun e!275345 () List!4369)

(assert (=> d!172520 (= lt!199906 e!275345)))

(declare-fun c!91280 () Bool)

(assert (=> d!172520 (= c!91280 ((_ is Nil!4359) (++!1264 lt!199341 lt!199368)))))

(assert (=> d!172520 (= (++!1264 (++!1264 lt!199341 lt!199368) lt!199362) lt!199906)))

(declare-fun b!450528 () Bool)

(assert (=> b!450528 (= e!275345 (Cons!4359 (h!9756 (++!1264 lt!199341 lt!199368)) (++!1264 (t!70793 (++!1264 lt!199341 lt!199368)) lt!199362)))))

(declare-fun b!450527 () Bool)

(assert (=> b!450527 (= e!275345 lt!199362)))

(assert (= (and d!172520 c!91280) b!450527))

(assert (= (and d!172520 (not c!91280)) b!450528))

(assert (= (and d!172520 res!200016) b!450529))

(assert (= (and b!450529 res!200015) b!450530))

(declare-fun m!713495 () Bool)

(assert (=> b!450529 m!713495))

(assert (=> b!450529 m!711633))

(declare-fun m!713497 () Bool)

(assert (=> b!450529 m!713497))

(assert (=> b!450529 m!712107))

(declare-fun m!713499 () Bool)

(assert (=> d!172520 m!713499))

(assert (=> d!172520 m!711633))

(declare-fun m!713501 () Bool)

(assert (=> d!172520 m!713501))

(assert (=> d!172520 m!712113))

(declare-fun m!713503 () Bool)

(assert (=> b!450528 m!713503))

(assert (=> b!449484 d!172520))

(declare-fun lt!199907 () List!4369)

(declare-fun b!450534 () Bool)

(declare-fun e!275346 () Bool)

(assert (=> b!450534 (= e!275346 (or (not (= lt!199368 Nil!4359)) (= lt!199907 lt!199341)))))

(declare-fun b!450533 () Bool)

(declare-fun res!200017 () Bool)

(assert (=> b!450533 (=> (not res!200017) (not e!275346))))

(assert (=> b!450533 (= res!200017 (= (size!3581 lt!199907) (+ (size!3581 lt!199341) (size!3581 lt!199368))))))

(declare-fun d!172522 () Bool)

(assert (=> d!172522 e!275346))

(declare-fun res!200018 () Bool)

(assert (=> d!172522 (=> (not res!200018) (not e!275346))))

(assert (=> d!172522 (= res!200018 (= (content!731 lt!199907) ((_ map or) (content!731 lt!199341) (content!731 lt!199368))))))

(declare-fun e!275347 () List!4369)

(assert (=> d!172522 (= lt!199907 e!275347)))

(declare-fun c!91281 () Bool)

(assert (=> d!172522 (= c!91281 ((_ is Nil!4359) lt!199341))))

(assert (=> d!172522 (= (++!1264 lt!199341 lt!199368) lt!199907)))

(declare-fun b!450532 () Bool)

(assert (=> b!450532 (= e!275347 (Cons!4359 (h!9756 lt!199341) (++!1264 (t!70793 lt!199341) lt!199368)))))

(declare-fun b!450531 () Bool)

(assert (=> b!450531 (= e!275347 lt!199368)))

(assert (= (and d!172522 c!91281) b!450531))

(assert (= (and d!172522 (not c!91281)) b!450532))

(assert (= (and d!172522 res!200018) b!450533))

(assert (= (and b!450533 res!200017) b!450534))

(declare-fun m!713505 () Bool)

(assert (=> b!450533 m!713505))

(assert (=> b!450533 m!712073))

(assert (=> b!450533 m!713443))

(declare-fun m!713507 () Bool)

(assert (=> d!172522 m!713507))

(assert (=> d!172522 m!712111))

(assert (=> d!172522 m!713447))

(declare-fun m!713509 () Bool)

(assert (=> b!450532 m!713509))

(assert (=> b!449484 d!172522))

(declare-fun d!172524 () Bool)

(assert (=> d!172524 (= (list!1931 (charsOf!488 (h!9758 tokens!465))) (list!1935 (c!91062 (charsOf!488 (h!9758 tokens!465)))))))

(declare-fun bs!55812 () Bool)

(assert (= bs!55812 d!172524))

(declare-fun m!713511 () Bool)

(assert (=> bs!55812 m!713511))

(assert (=> b!449484 d!172524))

(declare-fun d!172526 () Bool)

(declare-fun lt!199908 () BalanceConc!3032)

(assert (=> d!172526 (= (list!1931 lt!199908) (originalCharacters!888 (h!9758 tokens!465)))))

(assert (=> d!172526 (= lt!199908 (dynLambda!2624 (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (value!28398 (h!9758 tokens!465))))))

(assert (=> d!172526 (= (charsOf!488 (h!9758 tokens!465)) lt!199908)))

(declare-fun b_lambda!18657 () Bool)

(assert (=> (not b_lambda!18657) (not d!172526)))

(assert (=> d!172526 t!70865))

(declare-fun b_and!48475 () Bool)

(assert (= b_and!48469 (and (=> t!70865 result!49950) b_and!48475)))

(assert (=> d!172526 t!70867))

(declare-fun b_and!48477 () Bool)

(assert (= b_and!48471 (and (=> t!70867 result!49952) b_and!48477)))

(assert (=> d!172526 t!70869))

(declare-fun b_and!48479 () Bool)

(assert (= b_and!48473 (and (=> t!70869 result!49954) b_and!48479)))

(declare-fun m!713513 () Bool)

(assert (=> d!172526 m!713513))

(assert (=> d!172526 m!713433))

(assert (=> b!449484 d!172526))

(declare-fun bs!55813 () Bool)

(declare-fun d!172528 () Bool)

(assert (= bs!55813 (and d!172528 d!172114)))

(declare-fun lambda!13077 () Int)

(assert (=> bs!55813 (not (= lambda!13077 lambda!13047))))

(declare-fun bs!55814 () Bool)

(assert (= bs!55814 (and d!172528 b!449972)))

(assert (=> bs!55814 (not (= lambda!13077 lambda!13065))))

(declare-fun bs!55815 () Bool)

(assert (= bs!55815 (and d!172528 d!172216)))

(assert (=> bs!55815 (= lambda!13077 lambda!13064)))

(declare-fun bs!55816 () Bool)

(assert (= bs!55816 (and d!172528 b!449446)))

(assert (=> bs!55816 (not (= lambda!13077 lambda!13042))))

(declare-fun bs!55817 () Bool)

(assert (= bs!55817 (and d!172528 d!172372)))

(assert (=> bs!55817 (not (= lambda!13077 lambda!13074))))

(declare-fun bs!55818 () Bool)

(assert (= bs!55818 (and d!172528 b!449478)))

(assert (=> bs!55818 (= lambda!13077 lambda!13041)))

(declare-fun bs!55819 () Bool)

(assert (= bs!55819 (and d!172528 b!450523)))

(assert (=> bs!55819 (not (= lambda!13077 lambda!13076))))

(declare-fun bs!55820 () Bool)

(assert (= bs!55820 (and d!172528 b!450018)))

(assert (=> bs!55820 (not (= lambda!13077 lambda!13073))))

(declare-fun bs!55821 () Bool)

(declare-fun b!450536 () Bool)

(assert (= bs!55821 (and b!450536 d!172114)))

(declare-fun lambda!13078 () Int)

(assert (=> bs!55821 (= lambda!13078 lambda!13047)))

(declare-fun bs!55822 () Bool)

(assert (= bs!55822 (and b!450536 b!449972)))

(assert (=> bs!55822 (= lambda!13078 lambda!13065)))

(declare-fun bs!55823 () Bool)

(assert (= bs!55823 (and b!450536 d!172216)))

(assert (=> bs!55823 (not (= lambda!13078 lambda!13064))))

(declare-fun bs!55824 () Bool)

(assert (= bs!55824 (and b!450536 b!449446)))

(assert (=> bs!55824 (= lambda!13078 lambda!13042)))

(declare-fun bs!55825 () Bool)

(assert (= bs!55825 (and b!450536 d!172372)))

(assert (=> bs!55825 (= lambda!13078 lambda!13074)))

(declare-fun bs!55826 () Bool)

(assert (= bs!55826 (and b!450536 d!172528)))

(assert (=> bs!55826 (not (= lambda!13078 lambda!13077))))

(declare-fun bs!55827 () Bool)

(assert (= bs!55827 (and b!450536 b!449478)))

(assert (=> bs!55827 (not (= lambda!13078 lambda!13041))))

(declare-fun bs!55828 () Bool)

(assert (= bs!55828 (and b!450536 b!450523)))

(assert (=> bs!55828 (= lambda!13078 lambda!13076)))

(declare-fun bs!55829 () Bool)

(assert (= bs!55829 (and b!450536 b!450018)))

(assert (=> bs!55829 (= lambda!13078 lambda!13073)))

(declare-fun b!450546 () Bool)

(declare-fun e!275356 () Bool)

(assert (=> b!450546 (= e!275356 true)))

(declare-fun b!450545 () Bool)

(declare-fun e!275355 () Bool)

(assert (=> b!450545 (= e!275355 e!275356)))

(declare-fun b!450544 () Bool)

(declare-fun e!275354 () Bool)

(assert (=> b!450544 (= e!275354 e!275355)))

(assert (=> b!450536 e!275354))

(assert (= b!450545 b!450546))

(assert (= b!450544 b!450545))

(assert (= (and b!450536 ((_ is Cons!4360) rules!1920)) b!450544))

(assert (=> b!450546 (< (dynLambda!2620 order!3821 (toValue!1660 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13078))))

(assert (=> b!450546 (< (dynLambda!2622 order!3825 (toChars!1519 (transformation!845 (h!9757 rules!1920)))) (dynLambda!2621 order!3823 lambda!13078))))

(assert (=> b!450536 true))

(declare-fun bm!31171 () Bool)

(declare-fun call!31179 () Token!1434)

(assert (=> bm!31171 (= call!31179 (apply!1104 lt!199366 0))))

(declare-fun b!450535 () Bool)

(declare-fun e!275351 () BalanceConc!3032)

(assert (=> b!450535 (= e!275351 (BalanceConc!3033 Empty!1512))))

(declare-fun call!31177 () Token!1434)

(assert (=> b!450535 (= (print!456 thiss!17480 (singletonSeq!391 call!31177)) (printTailRec!417 thiss!17480 (singletonSeq!391 call!31177) 0 (BalanceConc!3033 Empty!1512)))))

(declare-fun lt!199916 () Unit!7841)

(declare-fun Unit!7863 () Unit!7841)

(assert (=> b!450535 (= lt!199916 Unit!7863)))

(declare-fun call!31180 () BalanceConc!3032)

(declare-fun lt!199911 () Unit!7841)

(declare-fun lt!199917 () BalanceConc!3032)

(assert (=> b!450535 (= lt!199911 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!186 thiss!17480 rules!1920 (list!1931 call!31180) (list!1931 lt!199917)))))

(assert (=> b!450535 false))

(declare-fun lt!199914 () Unit!7841)

(declare-fun Unit!7864 () Unit!7841)

(assert (=> b!450535 (= lt!199914 Unit!7864)))

(declare-fun e!275348 () BalanceConc!3032)

(declare-fun e!275352 () BalanceConc!3032)

(assert (=> b!450536 (= e!275348 e!275352)))

(declare-fun lt!199922 () List!4371)

(assert (=> b!450536 (= lt!199922 (list!1934 lt!199366))))

(declare-fun lt!199909 () Unit!7841)

(assert (=> b!450536 (= lt!199909 (lemmaDropApply!278 lt!199922 0))))

(assert (=> b!450536 (= (head!1091 (drop!307 lt!199922 0)) (apply!1107 lt!199922 0))))

(declare-fun lt!199921 () Unit!7841)

(assert (=> b!450536 (= lt!199921 lt!199909)))

(declare-fun lt!199919 () List!4371)

(assert (=> b!450536 (= lt!199919 (list!1934 lt!199366))))

(declare-fun lt!199910 () Unit!7841)

(assert (=> b!450536 (= lt!199910 (lemmaDropTail!270 lt!199919 0))))

(assert (=> b!450536 (= (tail!626 (drop!307 lt!199919 0)) (drop!307 lt!199919 (+ 0 1)))))

(declare-fun lt!199920 () Unit!7841)

(assert (=> b!450536 (= lt!199920 lt!199910)))

(declare-fun lt!199918 () Unit!7841)

(assert (=> b!450536 (= lt!199918 (forallContained!398 (list!1934 lt!199366) lambda!13078 (apply!1104 lt!199366 0)))))

(assert (=> b!450536 (= lt!199917 (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199366 separatorToken!170 (+ 0 1)))))

(declare-fun lt!199913 () Option!1119)

(assert (=> b!450536 (= lt!199913 (maxPrefixZipperSequence!410 thiss!17480 rules!1920 (++!1266 (charsOf!488 (apply!1104 lt!199366 0)) lt!199917)))))

(declare-fun res!200021 () Bool)

(assert (=> b!450536 (= res!200021 ((_ is Some!1118) lt!199913))))

(declare-fun e!275349 () Bool)

(assert (=> b!450536 (=> (not res!200021) (not e!275349))))

(declare-fun c!91283 () Bool)

(assert (=> b!450536 (= c!91283 e!275349)))

(declare-fun bm!31172 () Bool)

(assert (=> bm!31172 (= call!31177 call!31179)))

(declare-fun b!450537 () Bool)

(declare-fun call!31178 () BalanceConc!3032)

(assert (=> b!450537 (= e!275351 (++!1266 call!31178 lt!199917))))

(declare-fun b!450538 () Bool)

(assert (=> b!450538 (= e!275348 (BalanceConc!3033 Empty!1512))))

(declare-fun b!450539 () Bool)

(declare-fun e!275350 () Bool)

(assert (=> b!450539 (= e!275350 (not (= (_1!2853 (v!15417 lt!199913)) call!31179)))))

(declare-fun c!91282 () Bool)

(declare-fun bm!31174 () Bool)

(assert (=> bm!31174 (= call!31180 (charsOf!488 (ite c!91282 separatorToken!170 call!31177)))))

(declare-fun b!450540 () Bool)

(assert (=> b!450540 (= e!275349 (= (_1!2853 (v!15417 lt!199913)) (apply!1104 lt!199366 0)))))

(declare-fun bm!31173 () Bool)

(declare-fun call!31176 () BalanceConc!3032)

(assert (=> bm!31173 (= call!31178 (++!1266 call!31176 (ite c!91283 lt!199917 call!31180)))))

(declare-fun lt!199912 () BalanceConc!3032)

(assert (=> d!172528 (= (list!1931 lt!199912) (printWithSeparatorTokenWhenNeededList!412 thiss!17480 rules!1920 (dropList!238 lt!199366 0) separatorToken!170))))

(assert (=> d!172528 (= lt!199912 e!275348)))

(declare-fun c!91284 () Bool)

(assert (=> d!172528 (= c!91284 (>= 0 (size!3579 lt!199366)))))

(declare-fun lt!199915 () Unit!7841)

(assert (=> d!172528 (= lt!199915 (lemmaContentSubsetPreservesForall!182 (list!1934 lt!199366) (dropList!238 lt!199366 0) lambda!13077))))

(declare-fun e!275353 () Bool)

(assert (=> d!172528 e!275353))

(declare-fun res!200019 () Bool)

(assert (=> d!172528 (=> (not res!200019) (not e!275353))))

(assert (=> d!172528 (= res!200019 (>= 0 0))))

(assert (=> d!172528 (= (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199366 separatorToken!170 0) lt!199912)))

(declare-fun b!450541 () Bool)

(assert (=> b!450541 (= e!275352 call!31178)))

(declare-fun b!450542 () Bool)

(assert (=> b!450542 (= c!91282 e!275350)))

(declare-fun res!200020 () Bool)

(assert (=> b!450542 (=> (not res!200020) (not e!275350))))

(assert (=> b!450542 (= res!200020 ((_ is Some!1118) lt!199913))))

(assert (=> b!450542 (= e!275352 e!275351)))

(declare-fun bm!31175 () Bool)

(assert (=> bm!31175 (= call!31176 (charsOf!488 (ite c!91283 call!31179 call!31177)))))

(declare-fun b!450543 () Bool)

(assert (=> b!450543 (= e!275353 (<= 0 (size!3579 lt!199366)))))

(assert (= (and d!172528 res!200019) b!450543))

(assert (= (and d!172528 c!91284) b!450538))

(assert (= (and d!172528 (not c!91284)) b!450536))

(assert (= (and b!450536 res!200021) b!450540))

(assert (= (and b!450536 c!91283) b!450541))

(assert (= (and b!450536 (not c!91283)) b!450542))

(assert (= (and b!450542 res!200020) b!450539))

(assert (= (and b!450542 c!91282) b!450537))

(assert (= (and b!450542 (not c!91282)) b!450535))

(assert (= (or b!450537 b!450535) bm!31172))

(assert (= (or b!450537 b!450535) bm!31174))

(assert (= (or b!450541 bm!31172 b!450539) bm!31171))

(assert (= (or b!450541 b!450537) bm!31175))

(assert (= (or b!450541 b!450537) bm!31173))

(assert (=> b!450536 m!712929))

(declare-fun m!713515 () Bool)

(assert (=> b!450536 m!713515))

(declare-fun m!713517 () Bool)

(assert (=> b!450536 m!713517))

(declare-fun m!713519 () Bool)

(assert (=> b!450536 m!713519))

(declare-fun m!713521 () Bool)

(assert (=> b!450536 m!713521))

(declare-fun m!713523 () Bool)

(assert (=> b!450536 m!713523))

(declare-fun m!713525 () Bool)

(assert (=> b!450536 m!713525))

(declare-fun m!713527 () Bool)

(assert (=> b!450536 m!713527))

(assert (=> b!450536 m!713517))

(assert (=> b!450536 m!713521))

(declare-fun m!713529 () Bool)

(assert (=> b!450536 m!713529))

(declare-fun m!713531 () Bool)

(assert (=> b!450536 m!713531))

(declare-fun m!713533 () Bool)

(assert (=> b!450536 m!713533))

(assert (=> b!450536 m!713525))

(assert (=> b!450536 m!713527))

(declare-fun m!713535 () Bool)

(assert (=> b!450536 m!713535))

(declare-fun m!713537 () Bool)

(assert (=> b!450536 m!713537))

(assert (=> b!450536 m!712929))

(assert (=> b!450536 m!713525))

(declare-fun m!713539 () Bool)

(assert (=> b!450536 m!713539))

(assert (=> b!450536 m!713533))

(declare-fun m!713541 () Bool)

(assert (=> b!450536 m!713541))

(declare-fun m!713543 () Bool)

(assert (=> bm!31173 m!713543))

(declare-fun m!713545 () Bool)

(assert (=> b!450543 m!713545))

(declare-fun m!713547 () Bool)

(assert (=> b!450537 m!713547))

(declare-fun m!713549 () Bool)

(assert (=> bm!31175 m!713549))

(assert (=> b!450540 m!713525))

(declare-fun m!713551 () Bool)

(assert (=> bm!31174 m!713551))

(assert (=> d!172528 m!713545))

(declare-fun m!713553 () Bool)

(assert (=> d!172528 m!713553))

(declare-fun m!713555 () Bool)

(assert (=> d!172528 m!713555))

(assert (=> d!172528 m!713553))

(assert (=> d!172528 m!712929))

(assert (=> d!172528 m!713553))

(declare-fun m!713557 () Bool)

(assert (=> d!172528 m!713557))

(declare-fun m!713559 () Bool)

(assert (=> d!172528 m!713559))

(assert (=> d!172528 m!712929))

(assert (=> bm!31171 m!713525))

(declare-fun m!713561 () Bool)

(assert (=> b!450535 m!713561))

(declare-fun m!713563 () Bool)

(assert (=> b!450535 m!713563))

(declare-fun m!713565 () Bool)

(assert (=> b!450535 m!713565))

(assert (=> b!450535 m!713563))

(assert (=> b!450535 m!713561))

(declare-fun m!713567 () Bool)

(assert (=> b!450535 m!713567))

(assert (=> b!450535 m!713565))

(declare-fun m!713569 () Bool)

(assert (=> b!450535 m!713569))

(assert (=> b!450535 m!713565))

(declare-fun m!713571 () Bool)

(assert (=> b!450535 m!713571))

(assert (=> b!449484 d!172528))

(declare-fun d!172530 () Bool)

(assert (=> d!172530 (= (list!1931 (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199366 separatorToken!170 0)) (list!1935 (c!91062 (printWithSeparatorTokenWhenNeededRec!404 thiss!17480 rules!1920 lt!199366 separatorToken!170 0))))))

(declare-fun bs!55830 () Bool)

(assert (= bs!55830 d!172530))

(declare-fun m!713573 () Bool)

(assert (=> bs!55830 m!713573))

(assert (=> b!449484 d!172530))

(declare-fun d!172532 () Bool)

(declare-fun res!200026 () Bool)

(declare-fun e!275361 () Bool)

(assert (=> d!172532 (=> res!200026 e!275361)))

(assert (=> d!172532 (= res!200026 (not ((_ is Cons!4360) rules!1920)))))

(assert (=> d!172532 (= (sepAndNonSepRulesDisjointChars!434 rules!1920 rules!1920) e!275361)))

(declare-fun b!450551 () Bool)

(declare-fun e!275362 () Bool)

(assert (=> b!450551 (= e!275361 e!275362)))

(declare-fun res!200027 () Bool)

(assert (=> b!450551 (=> (not res!200027) (not e!275362))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!193 (Rule!1490 List!4370) Bool)

(assert (=> b!450551 (= res!200027 (ruleDisjointCharsFromAllFromOtherType!193 (h!9757 rules!1920) rules!1920))))

(declare-fun b!450552 () Bool)

(assert (=> b!450552 (= e!275362 (sepAndNonSepRulesDisjointChars!434 rules!1920 (t!70794 rules!1920)))))

(assert (= (and d!172532 (not res!200026)) b!450551))

(assert (= (and b!450551 res!200027) b!450552))

(declare-fun m!713575 () Bool)

(assert (=> b!450551 m!713575))

(declare-fun m!713577 () Bool)

(assert (=> b!450552 m!713577))

(assert (=> b!449461 d!172532))

(declare-fun b!450564 () Bool)

(declare-fun e!275365 () Bool)

(declare-fun tp!125496 () Bool)

(declare-fun tp!125495 () Bool)

(assert (=> b!450564 (= e!275365 (and tp!125496 tp!125495))))

(assert (=> b!449447 (= tp!125412 e!275365)))

(declare-fun b!450566 () Bool)

(declare-fun tp!125493 () Bool)

(declare-fun tp!125494 () Bool)

(assert (=> b!450566 (= e!275365 (and tp!125493 tp!125494))))

(declare-fun b!450563 () Bool)

(declare-fun tp_is_empty!1967 () Bool)

(assert (=> b!450563 (= e!275365 tp_is_empty!1967)))

(declare-fun b!450565 () Bool)

(declare-fun tp!125492 () Bool)

(assert (=> b!450565 (= e!275365 tp!125492)))

(assert (= (and b!449447 ((_ is ElementMatch!1069) (regex!845 (rule!1532 (h!9758 tokens!465))))) b!450563))

(assert (= (and b!449447 ((_ is Concat!1937) (regex!845 (rule!1532 (h!9758 tokens!465))))) b!450564))

(assert (= (and b!449447 ((_ is Star!1069) (regex!845 (rule!1532 (h!9758 tokens!465))))) b!450565))

(assert (= (and b!449447 ((_ is Union!1069) (regex!845 (rule!1532 (h!9758 tokens!465))))) b!450566))

(declare-fun b!450568 () Bool)

(declare-fun e!275366 () Bool)

(declare-fun tp!125501 () Bool)

(declare-fun tp!125500 () Bool)

(assert (=> b!450568 (= e!275366 (and tp!125501 tp!125500))))

(assert (=> b!449469 (= tp!125408 e!275366)))

(declare-fun b!450570 () Bool)

(declare-fun tp!125498 () Bool)

(declare-fun tp!125499 () Bool)

(assert (=> b!450570 (= e!275366 (and tp!125498 tp!125499))))

(declare-fun b!450567 () Bool)

(assert (=> b!450567 (= e!275366 tp_is_empty!1967)))

(declare-fun b!450569 () Bool)

(declare-fun tp!125497 () Bool)

(assert (=> b!450569 (= e!275366 tp!125497)))

(assert (= (and b!449469 ((_ is ElementMatch!1069) (regex!845 (h!9757 rules!1920)))) b!450567))

(assert (= (and b!449469 ((_ is Concat!1937) (regex!845 (h!9757 rules!1920)))) b!450568))

(assert (= (and b!449469 ((_ is Star!1069) (regex!845 (h!9757 rules!1920)))) b!450569))

(assert (= (and b!449469 ((_ is Union!1069) (regex!845 (h!9757 rules!1920)))) b!450570))

(declare-fun b!450575 () Bool)

(declare-fun e!275369 () Bool)

(declare-fun tp!125504 () Bool)

(assert (=> b!450575 (= e!275369 (and tp_is_empty!1967 tp!125504))))

(assert (=> b!449480 (= tp!125411 e!275369)))

(assert (= (and b!449480 ((_ is Cons!4359) (originalCharacters!888 (h!9758 tokens!465)))) b!450575))

(declare-fun b!450576 () Bool)

(declare-fun e!275370 () Bool)

(declare-fun tp!125505 () Bool)

(assert (=> b!450576 (= e!275370 (and tp_is_empty!1967 tp!125505))))

(assert (=> b!449477 (= tp!125403 e!275370)))

(assert (= (and b!449477 ((_ is Cons!4359) (originalCharacters!888 separatorToken!170))) b!450576))

(declare-fun b!450578 () Bool)

(declare-fun e!275371 () Bool)

(declare-fun tp!125510 () Bool)

(declare-fun tp!125509 () Bool)

(assert (=> b!450578 (= e!275371 (and tp!125510 tp!125509))))

(assert (=> b!449444 (= tp!125409 e!275371)))

(declare-fun b!450580 () Bool)

(declare-fun tp!125507 () Bool)

(declare-fun tp!125508 () Bool)

(assert (=> b!450580 (= e!275371 (and tp!125507 tp!125508))))

(declare-fun b!450577 () Bool)

(assert (=> b!450577 (= e!275371 tp_is_empty!1967)))

(declare-fun b!450579 () Bool)

(declare-fun tp!125506 () Bool)

(assert (=> b!450579 (= e!275371 tp!125506)))

(assert (= (and b!449444 ((_ is ElementMatch!1069) (regex!845 (rule!1532 separatorToken!170)))) b!450577))

(assert (= (and b!449444 ((_ is Concat!1937) (regex!845 (rule!1532 separatorToken!170)))) b!450578))

(assert (= (and b!449444 ((_ is Star!1069) (regex!845 (rule!1532 separatorToken!170)))) b!450579))

(assert (= (and b!449444 ((_ is Union!1069) (regex!845 (rule!1532 separatorToken!170)))) b!450580))

(declare-fun b!450594 () Bool)

(declare-fun b_free!12477 () Bool)

(declare-fun b_next!12477 () Bool)

(assert (=> b!450594 (= b_free!12477 (not b_next!12477))))

(declare-fun tp!125524 () Bool)

(declare-fun b_and!48481 () Bool)

(assert (=> b!450594 (= tp!125524 b_and!48481)))

(declare-fun b_free!12479 () Bool)

(declare-fun b_next!12479 () Bool)

(assert (=> b!450594 (= b_free!12479 (not b_next!12479))))

(declare-fun t!70871 () Bool)

(declare-fun tb!45429 () Bool)

(assert (=> (and b!450594 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 (t!70795 tokens!465))))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465))))) t!70871) tb!45429))

(declare-fun result!49962 () Bool)

(assert (= result!49962 result!49950))

(assert (=> b!450503 t!70871))

(declare-fun t!70873 () Bool)

(declare-fun tb!45431 () Bool)

(assert (=> (and b!450594 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 (t!70795 tokens!465))))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170)))) t!70873) tb!45431))

(declare-fun result!49964 () Bool)

(assert (= result!49964 result!49900))

(assert (=> b!449555 t!70873))

(declare-fun t!70875 () Bool)

(declare-fun tb!45433 () Bool)

(assert (=> (and b!450594 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 (t!70795 tokens!465))))) (toChars!1519 (transformation!845 (rule!1532 lt!199344)))) t!70875) tb!45433))

(declare-fun result!49966 () Bool)

(assert (= result!49966 result!49924))

(assert (=> d!172448 t!70875))

(assert (=> d!172518 t!70873))

(assert (=> d!172526 t!70871))

(declare-fun b_and!48483 () Bool)

(declare-fun tp!125522 () Bool)

(assert (=> b!450594 (= tp!125522 (and (=> t!70873 result!49964) (=> t!70871 result!49962) (=> t!70875 result!49966) b_and!48483))))

(declare-fun tp!125525 () Bool)

(declare-fun e!275387 () Bool)

(declare-fun e!275384 () Bool)

(declare-fun b!450592 () Bool)

(assert (=> b!450592 (= e!275384 (and (inv!21 (value!28398 (h!9758 (t!70795 tokens!465)))) e!275387 tp!125525))))

(declare-fun e!275389 () Bool)

(assert (=> b!449483 (= tp!125406 e!275389)))

(declare-fun b!450591 () Bool)

(declare-fun tp!125523 () Bool)

(assert (=> b!450591 (= e!275389 (and (inv!5435 (h!9758 (t!70795 tokens!465))) e!275384 tp!125523))))

(declare-fun e!275386 () Bool)

(assert (=> b!450594 (= e!275386 (and tp!125524 tp!125522))))

(declare-fun b!450593 () Bool)

(declare-fun tp!125521 () Bool)

(assert (=> b!450593 (= e!275387 (and tp!125521 (inv!5431 (tag!1101 (rule!1532 (h!9758 (t!70795 tokens!465))))) (inv!5434 (transformation!845 (rule!1532 (h!9758 (t!70795 tokens!465))))) e!275386))))

(assert (= b!450593 b!450594))

(assert (= b!450592 b!450593))

(assert (= b!450591 b!450592))

(assert (= (and b!449483 ((_ is Cons!4361) (t!70795 tokens!465))) b!450591))

(declare-fun m!713579 () Bool)

(assert (=> b!450592 m!713579))

(declare-fun m!713581 () Bool)

(assert (=> b!450591 m!713581))

(declare-fun m!713583 () Bool)

(assert (=> b!450593 m!713583))

(declare-fun m!713585 () Bool)

(assert (=> b!450593 m!713585))

(declare-fun b!450605 () Bool)

(declare-fun b_free!12481 () Bool)

(declare-fun b_next!12481 () Bool)

(assert (=> b!450605 (= b_free!12481 (not b_next!12481))))

(declare-fun tp!125536 () Bool)

(declare-fun b_and!48485 () Bool)

(assert (=> b!450605 (= tp!125536 b_and!48485)))

(declare-fun b_free!12483 () Bool)

(declare-fun b_next!12483 () Bool)

(assert (=> b!450605 (= b_free!12483 (not b_next!12483))))

(declare-fun tb!45435 () Bool)

(declare-fun t!70877 () Bool)

(assert (=> (and b!450605 (= (toChars!1519 (transformation!845 (h!9757 (t!70794 rules!1920)))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465))))) t!70877) tb!45435))

(declare-fun result!49970 () Bool)

(assert (= result!49970 result!49950))

(assert (=> b!450503 t!70877))

(declare-fun tb!45437 () Bool)

(declare-fun t!70879 () Bool)

(assert (=> (and b!450605 (= (toChars!1519 (transformation!845 (h!9757 (t!70794 rules!1920)))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170)))) t!70879) tb!45437))

(declare-fun result!49972 () Bool)

(assert (= result!49972 result!49900))

(assert (=> b!449555 t!70879))

(declare-fun tb!45439 () Bool)

(declare-fun t!70881 () Bool)

(assert (=> (and b!450605 (= (toChars!1519 (transformation!845 (h!9757 (t!70794 rules!1920)))) (toChars!1519 (transformation!845 (rule!1532 lt!199344)))) t!70881) tb!45439))

(declare-fun result!49974 () Bool)

(assert (= result!49974 result!49924))

(assert (=> d!172448 t!70881))

(assert (=> d!172518 t!70879))

(assert (=> d!172526 t!70877))

(declare-fun b_and!48487 () Bool)

(declare-fun tp!125535 () Bool)

(assert (=> b!450605 (= tp!125535 (and (=> t!70879 result!49972) (=> t!70881 result!49974) (=> t!70877 result!49970) b_and!48487))))

(declare-fun e!275401 () Bool)

(assert (=> b!450605 (= e!275401 (and tp!125536 tp!125535))))

(declare-fun e!275400 () Bool)

(declare-fun tp!125534 () Bool)

(declare-fun b!450604 () Bool)

(assert (=> b!450604 (= e!275400 (and tp!125534 (inv!5431 (tag!1101 (h!9757 (t!70794 rules!1920)))) (inv!5434 (transformation!845 (h!9757 (t!70794 rules!1920)))) e!275401))))

(declare-fun b!450603 () Bool)

(declare-fun e!275399 () Bool)

(declare-fun tp!125537 () Bool)

(assert (=> b!450603 (= e!275399 (and e!275400 tp!125537))))

(assert (=> b!449462 (= tp!125407 e!275399)))

(assert (= b!450604 b!450605))

(assert (= b!450603 b!450604))

(assert (= (and b!449462 ((_ is Cons!4360) (t!70794 rules!1920))) b!450603))

(declare-fun m!713587 () Bool)

(assert (=> b!450604 m!713587))

(declare-fun m!713589 () Bool)

(assert (=> b!450604 m!713589))

(declare-fun b!450608 () Bool)

(declare-fun e!275404 () Bool)

(assert (=> b!450608 (= e!275404 true)))

(declare-fun b!450607 () Bool)

(declare-fun e!275403 () Bool)

(assert (=> b!450607 (= e!275403 e!275404)))

(declare-fun b!450606 () Bool)

(declare-fun e!275402 () Bool)

(assert (=> b!450606 (= e!275402 e!275403)))

(assert (=> b!449500 e!275402))

(assert (= b!450607 b!450608))

(assert (= b!450606 b!450607))

(assert (= (and b!449500 ((_ is Cons!4360) (t!70794 rules!1920))) b!450606))

(assert (=> b!450608 (< (dynLambda!2620 order!3821 (toValue!1660 (transformation!845 (h!9757 (t!70794 rules!1920))))) (dynLambda!2621 order!3823 lambda!13042))))

(assert (=> b!450608 (< (dynLambda!2622 order!3825 (toChars!1519 (transformation!845 (h!9757 (t!70794 rules!1920))))) (dynLambda!2621 order!3823 lambda!13042))))

(declare-fun b_lambda!18659 () Bool)

(assert (= b_lambda!18653 (or (and b!450605 b_free!12483 (= (toChars!1519 (transformation!845 (h!9757 (t!70794 rules!1920)))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))))) (and b!449445 b_free!12463 (= (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))))) (and b!449451 b_free!12467) (and b!450594 b_free!12479 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 (t!70795 tokens!465))))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))))) (and b!449448 b_free!12459 (= (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))))) b_lambda!18659)))

(declare-fun b_lambda!18661 () Bool)

(assert (= b_lambda!18633 (or b!449446 b_lambda!18661)))

(declare-fun bs!55831 () Bool)

(declare-fun d!172534 () Bool)

(assert (= bs!55831 (and d!172534 b!449446)))

(assert (=> bs!55831 (= (dynLambda!2625 lambda!13042 lt!199344) (rulesProduceIndividualToken!480 thiss!17480 rules!1920 lt!199344))))

(assert (=> bs!55831 m!711701))

(assert (=> d!172468 d!172534))

(declare-fun b_lambda!18663 () Bool)

(assert (= b_lambda!18657 (or (and b!450605 b_free!12483 (= (toChars!1519 (transformation!845 (h!9757 (t!70794 rules!1920)))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))))) (and b!449445 b_free!12463 (= (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))))) (and b!449451 b_free!12467) (and b!450594 b_free!12479 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 (t!70795 tokens!465))))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))))) (and b!449448 b_free!12459 (= (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))))) b_lambda!18663)))

(declare-fun b_lambda!18665 () Bool)

(assert (= b_lambda!18613 (or b!449478 b_lambda!18665)))

(declare-fun bs!55832 () Bool)

(declare-fun d!172536 () Bool)

(assert (= bs!55832 (and d!172536 b!449478)))

(assert (=> bs!55832 (= (dynLambda!2625 lambda!13041 (h!9758 tokens!465)) (not (isSeparator!845 (rule!1532 (h!9758 tokens!465)))))))

(assert (=> b!449672 d!172536))

(declare-fun b_lambda!18667 () Bool)

(assert (= b_lambda!18609 (or (and b!450594 b_free!12479 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 (t!70795 tokens!465))))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))))) (and b!449448 b_free!12459 (= (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))))) (and b!449451 b_free!12467 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))))) (and b!449445 b_free!12463) (and b!450605 b_free!12483 (= (toChars!1519 (transformation!845 (h!9757 (t!70794 rules!1920)))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))))) b_lambda!18667)))

(declare-fun b_lambda!18669 () Bool)

(assert (= b_lambda!18655 (or (and b!450594 b_free!12479 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 (t!70795 tokens!465))))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))))) (and b!449448 b_free!12459 (= (toChars!1519 (transformation!845 (h!9757 rules!1920))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))))) (and b!449451 b_free!12467 (= (toChars!1519 (transformation!845 (rule!1532 (h!9758 tokens!465)))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))))) (and b!449445 b_free!12463) (and b!450605 b_free!12483 (= (toChars!1519 (transformation!845 (h!9757 (t!70794 rules!1920)))) (toChars!1519 (transformation!845 (rule!1532 separatorToken!170))))) b_lambda!18669)))

(declare-fun b_lambda!18671 () Bool)

(assert (= b_lambda!18619 (or b!449478 b_lambda!18671)))

(declare-fun bs!55833 () Bool)

(declare-fun d!172538 () Bool)

(assert (= bs!55833 (and d!172538 b!449478)))

(assert (=> bs!55833 (= (dynLambda!2625 lambda!13041 (h!9758 (t!70795 tokens!465))) (not (isSeparator!845 (rule!1532 (h!9758 (t!70795 tokens!465))))))))

(assert (=> b!450103 d!172538))

(declare-fun b_lambda!18673 () Bool)

(assert (= b_lambda!18617 (or b!449446 b_lambda!18673)))

(declare-fun bs!55834 () Bool)

(declare-fun d!172540 () Bool)

(assert (= bs!55834 (and d!172540 b!449446)))

(assert (=> bs!55834 (= (dynLambda!2625 lambda!13042 (h!9758 tokens!465)) (rulesProduceIndividualToken!480 thiss!17480 rules!1920 (h!9758 tokens!465)))))

(assert (=> bs!55834 m!711547))

(assert (=> d!172276 d!172540))

(check-sat (not b!449853) (not b_next!12477) (not b!450105) (not b!449972) (not b!449740) (not b_next!12467) (not d!172102) (not b!449582) (not b!450524) (not b!449893) (not b!450121) (not b!449880) (not b!450593) b_and!48481 (not d!172290) (not b!450060) (not b_next!12463) (not bm!31087) (not d!172510) (not d!172426) (not b!449739) (not b!450502) (not bm!31117) (not d!172196) (not b!450411) (not d!172308) (not d!172420) (not b!450501) (not d!172280) (not b!450215) (not b!449673) (not b!450537) (not b!450410) (not b!449767) (not d!172342) (not d!172522) (not b!449976) (not b!450504) (not b!450497) (not b!450592) (not d!172328) (not b_lambda!18667) (not b!450398) b_and!48479 (not d!172512) (not bm!31160) (not b!450123) (not b!450415) (not b!450425) (not b!450533) (not d!172126) (not b!449628) (not d!172148) (not bm!31103) (not b!450107) (not b!449720) (not d!172282) (not b!449665) (not d!172114) (not d!172288) (not b!449874) (not b!449625) (not b!450431) (not b!450018) (not d!172500) (not b!450606) (not b!450570) (not b!450565) tp_is_empty!1967 (not b!450104) (not b!449525) (not d!172130) (not b!450591) (not b!450212) b_and!48409 (not bm!31167) (not b!450528) (not b_next!12461) (not b!450264) (not b!450265) (not d!172484) (not b!450499) (not d!172524) (not b!450083) (not d!172188) (not b_next!12465) (not b!450255) (not d!172468) (not d!172212) (not d!172502) (not bm!31057) (not d!172190) (not tb!45405) (not b!450063) (not b!450137) (not bm!31162) (not b!450575) (not b!449869) (not b!449882) (not b!450433) (not b_lambda!18671) (not b!450543) (not b_lambda!18663) (not b!449878) (not b!449705) b_and!48401 (not b!449730) (not d!172314) (not b!450507) (not d!172352) b_and!48483 (not b!450505) (not b!449889) (not b_next!12457) b_and!48477 (not b!450399) (not d!172458) (not b!450412) (not b!449737) (not b!450508) (not b!450429) (not d!172366) (not b!450085) (not d!172520) (not bm!31169) (not b!450576) (not bm!31174) (not b!450082) (not bm!31118) (not b_next!12479) (not bm!31116) (not b!450512) (not d!172164) (not b_lambda!18673) (not b!449652) (not bm!31139) (not b!450432) (not b!449735) (not d!172526) (not bm!31056) (not b!450578) (not b!449743) (not d!172368) (not b_next!12483) (not b!450377) (not b!450426) (not d!172370) (not b!450129) (not b_lambda!18629) (not b!450603) (not b!450566) (not tb!45423) (not d!172206) (not d!172278) (not b!449732) (not bs!55831) (not b!450427) (not b!450136) (not b!450214) (not d!172298) (not b!450213) (not d!172496) (not b!450009) (not b!449768) (not b!450378) (not b_lambda!18661) (not b!449719) (not d!172266) (not d!172498) (not d!172296) (not d!172276) (not b_lambda!18669) (not b!449704) (not b!450503) (not b!449706) (not b!449742) (not d!172504) (not b!450579) (not b!450414) (not bm!31122) b_and!48475 (not b!449980) (not bm!31048) (not bm!31140) (not b!450174) (not b!450498) (not b!450580) (not b!450175) (not d!172518) (not d!172132) (not b!450057) (not bm!31171) (not b!450017) (not b!450223) (not b!449741) (not d!172528) (not b!449626) (not d!172274) (not d!172448) (not b_lambda!18665) (not b!450059) (not b!449723) (not b!449712) (not b!449886) (not b!450222) (not d!172162) (not b!450211) (not b!450515) (not b!449667) (not b!450262) (not b!450529) (not b!450259) (not d!172176) (not b!449855) (not b!449623) (not d!172530) (not b!450209) (not d!172344) (not b!449726) (not b!449971) (not b!449717) (not b!450564) (not d!172320) b_and!48485 (not b!449562) (not b!450088) b_and!48487 (not b!450551) (not b!450139) (not bm!31058) (not bm!31104) (not b!450517) (not b!449622) (not b!449973) (not b!449556) (not d!172172) (not b!449555) (not b!450532) (not b!449766) (not b!450058) (not d!172170) (not b!450267) (not d!172310) (not b_next!12481) (not d!172160) (not d!172108) (not b!450522) (not bm!31165) (not bm!31161) (not bm!31168) (not tb!45383) (not d!172324) (not d!172470) (not d!172326) (not b!450054) (not b!450552) (not bm!31125) (not b!450053) (not bm!31102) (not b!449627) (not b!449663) (not b!450540) (not d!172284) (not d!172128) (not b!450258) (not d!172422) b_and!48405 (not d!172376) (not b!449581) (not d!172286) (not b!450569) (not b!450122) (not b!450266) (not b!450536) (not b!449718) (not d!172516) (not b!449979) (not b!450130) (not bm!31100) (not b!449629) (not b!450108) (not d!172478) (not b!450084) (not b!450430) (not d!172508) (not d!172506) (not d!172372) (not bm!31175) (not b!450064) (not d!172216) (not b!449883) (not b!450106) (not d!172358) (not b_lambda!18659) (not b!450091) (not d!172208) (not b!449881) (not bs!55834) (not d!172152) (not b!450535) (not b!449734) (not b_next!12459) (not b!450568) (not d!172214) (not b!450019) (not bm!31173) (not b!449709) (not b!450056) (not b!450256) (not b!450514) (not b!450010) (not b!450172) (not b!450523) (not b!450511) (not b!449786) (not b!449736) (not bm!31138) (not b!450012) (not b!450544) (not d!172348) (not d!172334) (not b!450604) (not d!172264) (not b!449621) (not d!172322) (not b!449787) (not b!449703))
(check-sat b_and!48479 (not b_next!12465) b_and!48401 (not b_next!12479) (not b_next!12483) b_and!48475 (not b_next!12481) b_and!48405 (not b_next!12459) (not b_next!12467) (not b_next!12477) b_and!48481 (not b_next!12463) b_and!48409 (not b_next!12461) b_and!48483 (not b_next!12457) b_and!48477 b_and!48485 b_and!48487)
