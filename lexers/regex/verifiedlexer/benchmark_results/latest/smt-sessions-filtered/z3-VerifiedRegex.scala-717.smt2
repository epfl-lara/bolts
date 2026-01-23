; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31534 () Bool)

(assert start!31534)

(declare-fun b!289862 () Bool)

(declare-fun b_free!10585 () Bool)

(declare-fun b_next!10585 () Bool)

(assert (=> b!289862 (= b_free!10585 (not b_next!10585))))

(declare-fun tp!105780 () Bool)

(declare-fun b_and!23529 () Bool)

(assert (=> b!289862 (= tp!105780 b_and!23529)))

(declare-fun b_free!10587 () Bool)

(declare-fun b_next!10587 () Bool)

(assert (=> b!289862 (= b_free!10587 (not b_next!10587))))

(declare-fun tp!105784 () Bool)

(declare-fun b_and!23531 () Bool)

(assert (=> b!289862 (= tp!105784 b_and!23531)))

(declare-fun b!289857 () Bool)

(declare-fun b_free!10589 () Bool)

(declare-fun b_next!10589 () Bool)

(assert (=> b!289857 (= b_free!10589 (not b_next!10589))))

(declare-fun tp!105775 () Bool)

(declare-fun b_and!23533 () Bool)

(assert (=> b!289857 (= tp!105775 b_and!23533)))

(declare-fun b_free!10591 () Bool)

(declare-fun b_next!10591 () Bool)

(assert (=> b!289857 (= b_free!10591 (not b_next!10591))))

(declare-fun tp!105782 () Bool)

(declare-fun b_and!23535 () Bool)

(assert (=> b!289857 (= tp!105782 b_and!23535)))

(declare-fun b!289860 () Bool)

(declare-fun b_free!10593 () Bool)

(declare-fun b_next!10593 () Bool)

(assert (=> b!289860 (= b_free!10593 (not b_next!10593))))

(declare-fun tp!105781 () Bool)

(declare-fun b_and!23537 () Bool)

(assert (=> b!289860 (= tp!105781 b_and!23537)))

(declare-fun b_free!10595 () Bool)

(declare-fun b_next!10595 () Bool)

(assert (=> b!289860 (= b_free!10595 (not b_next!10595))))

(declare-fun tp!105783 () Bool)

(declare-fun b_and!23539 () Bool)

(assert (=> b!289860 (= tp!105783 b_and!23539)))

(declare-fun bs!32904 () Bool)

(declare-fun b!289852 () Bool)

(declare-fun b!289856 () Bool)

(assert (= bs!32904 (and b!289852 b!289856)))

(declare-fun lambda!9952 () Int)

(declare-fun lambda!9951 () Int)

(assert (=> bs!32904 (not (= lambda!9952 lambda!9951))))

(declare-fun b!289888 () Bool)

(declare-fun e!180443 () Bool)

(assert (=> b!289888 (= e!180443 true)))

(declare-fun b!289887 () Bool)

(declare-fun e!180442 () Bool)

(assert (=> b!289887 (= e!180442 e!180443)))

(declare-fun b!289886 () Bool)

(declare-fun e!180441 () Bool)

(assert (=> b!289886 (= e!180441 e!180442)))

(assert (=> b!289852 e!180441))

(assert (= b!289887 b!289888))

(assert (= b!289886 b!289887))

(declare-datatypes ((List!3962 0))(
  ( (Nil!3952) (Cons!3952 (h!9349 (_ BitVec 16)) (t!40594 List!3962)) )
))
(declare-datatypes ((TokenValue!779 0))(
  ( (FloatLiteralValue!1558 (text!5898 List!3962)) (TokenValueExt!778 (__x!3045 Int)) (Broken!3895 (value!25864 List!3962)) (Object!788) (End!779) (Def!779) (Underscore!779) (Match!779) (Else!779) (Error!779) (Case!779) (If!779) (Extends!779) (Abstract!779) (Class!779) (Val!779) (DelimiterValue!1558 (del!839 List!3962)) (KeywordValue!785 (value!25865 List!3962)) (CommentValue!1558 (value!25866 List!3962)) (WhitespaceValue!1558 (value!25867 List!3962)) (IndentationValue!779 (value!25868 List!3962)) (String!4974) (Int32!779) (Broken!3896 (value!25869 List!3962)) (Boolean!780) (Unit!5361) (OperatorValue!782 (op!839 List!3962)) (IdentifierValue!1558 (value!25870 List!3962)) (IdentifierValue!1559 (value!25871 List!3962)) (WhitespaceValue!1559 (value!25872 List!3962)) (True!1558) (False!1558) (Broken!3897 (value!25873 List!3962)) (Broken!3898 (value!25874 List!3962)) (True!1559) (RightBrace!779) (RightBracket!779) (Colon!779) (Null!779) (Comma!779) (LeftBracket!779) (False!1559) (LeftBrace!779) (ImaginaryLiteralValue!779 (text!5899 List!3962)) (StringLiteralValue!2337 (value!25875 List!3962)) (EOFValue!779 (value!25876 List!3962)) (IdentValue!779 (value!25877 List!3962)) (DelimiterValue!1559 (value!25878 List!3962)) (DedentValue!779 (value!25879 List!3962)) (NewLineValue!779 (value!25880 List!3962)) (IntegerValue!2337 (value!25881 (_ BitVec 32)) (text!5900 List!3962)) (IntegerValue!2338 (value!25882 Int) (text!5901 List!3962)) (Times!779) (Or!779) (Equal!779) (Minus!779) (Broken!3899 (value!25883 List!3962)) (And!779) (Div!779) (LessEqual!779) (Mod!779) (Concat!1760) (Not!779) (Plus!779) (SpaceValue!779 (value!25884 List!3962)) (IntegerValue!2339 (value!25885 Int) (text!5902 List!3962)) (StringLiteralValue!2338 (text!5903 List!3962)) (FloatLiteralValue!1559 (text!5904 List!3962)) (BytesLiteralValue!779 (value!25886 List!3962)) (CommentValue!1559 (value!25887 List!3962)) (StringLiteralValue!2339 (value!25888 List!3962)) (ErrorTokenValue!779 (msg!840 List!3962)) )
))
(declare-datatypes ((C!2884 0))(
  ( (C!2885 (val!1328 Int)) )
))
(declare-datatypes ((List!3963 0))(
  ( (Nil!3953) (Cons!3953 (h!9350 C!2884) (t!40595 List!3963)) )
))
(declare-datatypes ((IArray!2673 0))(
  ( (IArray!2674 (innerList!1394 List!3963)) )
))
(declare-datatypes ((Conc!1336 0))(
  ( (Node!1336 (left!3269 Conc!1336) (right!3599 Conc!1336) (csize!2902 Int) (cheight!1547 Int)) (Leaf!2054 (xs!3935 IArray!2673) (csize!2903 Int)) (Empty!1336) )
))
(declare-datatypes ((BalanceConc!2680 0))(
  ( (BalanceConc!2681 (c!54877 Conc!1336)) )
))
(declare-datatypes ((TokenValueInjection!1330 0))(
  ( (TokenValueInjection!1331 (toValue!1508 Int) (toChars!1367 Int)) )
))
(declare-datatypes ((String!4975 0))(
  ( (String!4976 (value!25889 String)) )
))
(declare-datatypes ((Regex!981 0))(
  ( (ElementMatch!981 (c!54878 C!2884)) (Concat!1761 (regOne!2474 Regex!981) (regTwo!2474 Regex!981)) (EmptyExpr!981) (Star!981 (reg!1310 Regex!981)) (EmptyLang!981) (Union!981 (regOne!2475 Regex!981) (regTwo!2475 Regex!981)) )
))
(declare-datatypes ((Rule!1314 0))(
  ( (Rule!1315 (regex!757 Regex!981) (tag!973 String!4975) (isSeparator!757 Bool) (transformation!757 TokenValueInjection!1330)) )
))
(declare-datatypes ((List!3964 0))(
  ( (Nil!3954) (Cons!3954 (h!9351 Rule!1314) (t!40596 List!3964)) )
))
(declare-fun rules!1920 () List!3964)

(get-info :version)

(assert (= (and b!289852 ((_ is Cons!3954) rules!1920)) b!289886))

(declare-fun order!3133 () Int)

(declare-fun order!3135 () Int)

(declare-fun dynLambda!2105 (Int Int) Int)

(declare-fun dynLambda!2106 (Int Int) Int)

(assert (=> b!289888 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9952))))

(declare-fun order!3137 () Int)

(declare-fun dynLambda!2107 (Int Int) Int)

(assert (=> b!289888 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9952))))

(assert (=> b!289852 true))

(declare-fun b!289850 () Bool)

(declare-fun res!132292 () Bool)

(declare-fun e!180427 () Bool)

(assert (=> b!289850 (=> (not res!132292) (not e!180427))))

(declare-datatypes ((LexerInterface!643 0))(
  ( (LexerInterfaceExt!640 (__x!3046 Int)) (Lexer!641) )
))
(declare-fun thiss!17480 () LexerInterface!643)

(declare-fun rulesInvariant!609 (LexerInterface!643 List!3964) Bool)

(assert (=> b!289850 (= res!132292 (rulesInvariant!609 thiss!17480 rules!1920))))

(declare-fun b!289851 () Bool)

(declare-fun e!180432 () Bool)

(assert (=> b!289851 (= e!180427 e!180432)))

(declare-fun res!132291 () Bool)

(assert (=> b!289851 (=> (not res!132291) (not e!180432))))

(declare-datatypes ((Token!1258 0))(
  ( (Token!1259 (value!25890 TokenValue!779) (rule!1360 Rule!1314) (size!3171 Int) (originalCharacters!800 List!3963)) )
))
(declare-datatypes ((List!3965 0))(
  ( (Nil!3955) (Cons!3955 (h!9352 Token!1258) (t!40597 List!3965)) )
))
(declare-datatypes ((IArray!2675 0))(
  ( (IArray!2676 (innerList!1395 List!3965)) )
))
(declare-datatypes ((Conc!1337 0))(
  ( (Node!1337 (left!3270 Conc!1337) (right!3600 Conc!1337) (csize!2904 Int) (cheight!1548 Int)) (Leaf!2055 (xs!3936 IArray!2675) (csize!2905 Int)) (Empty!1337) )
))
(declare-datatypes ((BalanceConc!2682 0))(
  ( (BalanceConc!2683 (c!54879 Conc!1337)) )
))
(declare-fun lt!122463 () BalanceConc!2682)

(declare-fun rulesProduceEachTokenIndividually!435 (LexerInterface!643 List!3964 BalanceConc!2682) Bool)

(assert (=> b!289851 (= res!132291 (rulesProduceEachTokenIndividually!435 thiss!17480 rules!1920 lt!122463))))

(declare-fun tokens!465 () List!3965)

(declare-fun seqFromList!879 (List!3965) BalanceConc!2682)

(assert (=> b!289851 (= lt!122463 (seqFromList!879 tokens!465))))

(declare-fun e!180424 () Bool)

(declare-fun e!180428 () Bool)

(assert (=> b!289852 (= e!180424 e!180428)))

(declare-fun res!132281 () Bool)

(assert (=> b!289852 (=> res!132281 e!180428)))

(declare-datatypes ((tuple2!4506 0))(
  ( (tuple2!4507 (_1!2469 Token!1258) (_2!2469 BalanceConc!2680)) )
))
(declare-datatypes ((Option!876 0))(
  ( (None!875) (Some!875 (v!14826 tuple2!4506)) )
))
(declare-fun isDefined!715 (Option!876) Bool)

(declare-fun maxPrefixZipperSequence!322 (LexerInterface!643 List!3964 BalanceConc!2680) Option!876)

(declare-fun seqFromList!880 (List!3963) BalanceConc!2680)

(assert (=> b!289852 (= res!132281 (not (isDefined!715 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))

(declare-datatypes ((Unit!5362 0))(
  ( (Unit!5363) )
))
(declare-fun lt!122457 () Unit!5362)

(declare-fun forallContained!310 (List!3965 Int Token!1258) Unit!5362)

(assert (=> b!289852 (= lt!122457 (forallContained!310 tokens!465 lambda!9952 (h!9352 tokens!465)))))

(declare-fun lt!122467 () List!3963)

(assert (=> b!289852 (= lt!122467 (originalCharacters!800 (h!9352 tokens!465)))))

(declare-fun b!289853 () Bool)

(declare-fun res!132290 () Bool)

(declare-fun e!180434 () Bool)

(assert (=> b!289853 (=> res!132290 e!180434)))

(declare-fun e!180421 () Bool)

(assert (=> b!289853 (= res!132290 e!180421)))

(declare-fun res!132296 () Bool)

(assert (=> b!289853 (=> (not res!132296) (not e!180421))))

(declare-fun lt!122466 () List!3963)

(declare-fun lt!122462 () List!3963)

(assert (=> b!289853 (= res!132296 (not (= lt!122466 lt!122462)))))

(declare-fun b!289854 () Bool)

(declare-fun e!180429 () Bool)

(declare-fun e!180413 () Bool)

(declare-fun tp!105786 () Bool)

(assert (=> b!289854 (= e!180429 (and e!180413 tp!105786))))

(declare-fun e!180430 () Bool)

(declare-fun tp!105785 () Bool)

(declare-fun e!180425 () Bool)

(declare-fun b!289855 () Bool)

(declare-fun inv!4891 (Token!1258) Bool)

(assert (=> b!289855 (= e!180430 (and (inv!4891 (h!9352 tokens!465)) e!180425 tp!105785))))

(declare-fun res!132293 () Bool)

(assert (=> b!289856 (=> (not res!132293) (not e!180432))))

(declare-fun forall!1024 (List!3965 Int) Bool)

(assert (=> b!289856 (= res!132293 (forall!1024 tokens!465 lambda!9951))))

(declare-fun e!180418 () Bool)

(assert (=> b!289857 (= e!180418 (and tp!105775 tp!105782))))

(declare-fun b!289858 () Bool)

(declare-fun separatorToken!170 () Token!1258)

(declare-fun e!180416 () Bool)

(declare-fun e!180423 () Bool)

(declare-fun tp!105778 () Bool)

(declare-fun inv!4888 (String!4975) Bool)

(declare-fun inv!4892 (TokenValueInjection!1330) Bool)

(assert (=> b!289858 (= e!180423 (and tp!105778 (inv!4888 (tag!973 (rule!1360 separatorToken!170))) (inv!4892 (transformation!757 (rule!1360 separatorToken!170))) e!180416))))

(declare-fun b!289859 () Bool)

(declare-fun e!180414 () Bool)

(assert (=> b!289859 (= e!180414 (not e!180434))))

(declare-fun res!132288 () Bool)

(assert (=> b!289859 (=> res!132288 e!180434)))

(declare-fun lt!122458 () List!3963)

(declare-fun list!1655 (BalanceConc!2680) List!3963)

(declare-fun printWithSeparatorTokenWhenNeededRec!316 (LexerInterface!643 List!3964 BalanceConc!2682 Token!1258 Int) BalanceConc!2680)

(assert (=> b!289859 (= res!132288 (not (= lt!122458 (list!1655 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!122468 () List!3963)

(assert (=> b!289859 (= lt!122468 lt!122462)))

(declare-fun lt!122470 () List!3963)

(declare-fun ++!1058 (List!3963 List!3963) List!3963)

(assert (=> b!289859 (= lt!122462 (++!1058 lt!122467 lt!122470))))

(declare-fun lt!122461 () List!3963)

(assert (=> b!289859 (= lt!122468 (++!1058 (++!1058 lt!122467 lt!122461) lt!122458))))

(declare-fun lt!122471 () Unit!5362)

(declare-fun lemmaConcatAssociativity!460 (List!3963 List!3963 List!3963) Unit!5362)

(assert (=> b!289859 (= lt!122471 (lemmaConcatAssociativity!460 lt!122467 lt!122461 lt!122458))))

(declare-fun charsOf!400 (Token!1258) BalanceConc!2680)

(assert (=> b!289859 (= lt!122467 (list!1655 (charsOf!400 (h!9352 tokens!465))))))

(assert (=> b!289859 (= lt!122470 (++!1058 lt!122461 lt!122458))))

(declare-fun printWithSeparatorTokenWhenNeededList!324 (LexerInterface!643 List!3964 List!3965 Token!1258) List!3963)

(assert (=> b!289859 (= lt!122458 (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (t!40597 tokens!465) separatorToken!170))))

(assert (=> b!289859 (= lt!122461 (list!1655 (charsOf!400 separatorToken!170)))))

(declare-fun e!180415 () Bool)

(assert (=> b!289860 (= e!180415 (and tp!105781 tp!105783))))

(declare-fun tp!105787 () Bool)

(declare-fun b!289861 () Bool)

(assert (=> b!289861 (= e!180413 (and tp!105787 (inv!4888 (tag!973 (h!9351 rules!1920))) (inv!4892 (transformation!757 (h!9351 rules!1920))) e!180415))))

(declare-fun res!132283 () Bool)

(assert (=> start!31534 (=> (not res!132283) (not e!180427))))

(assert (=> start!31534 (= res!132283 ((_ is Lexer!641) thiss!17480))))

(assert (=> start!31534 e!180427))

(assert (=> start!31534 true))

(assert (=> start!31534 e!180429))

(declare-fun e!180431 () Bool)

(assert (=> start!31534 (and (inv!4891 separatorToken!170) e!180431)))

(assert (=> start!31534 e!180430))

(assert (=> b!289862 (= e!180416 (and tp!105780 tp!105784))))

(declare-fun b!289863 () Bool)

(declare-fun res!132280 () Bool)

(assert (=> b!289863 (=> (not res!132280) (not e!180432))))

(assert (=> b!289863 (= res!132280 (isSeparator!757 (rule!1360 separatorToken!170)))))

(declare-fun b!289864 () Bool)

(declare-fun res!132294 () Bool)

(assert (=> b!289864 (=> (not res!132294) (not e!180414))))

(declare-fun lt!122464 () List!3963)

(assert (=> b!289864 (= res!132294 (= (list!1655 (seqFromList!880 lt!122466)) lt!122464))))

(declare-fun e!180419 () Bool)

(declare-fun tp!105779 () Bool)

(declare-fun b!289865 () Bool)

(declare-fun inv!21 (TokenValue!779) Bool)

(assert (=> b!289865 (= e!180425 (and (inv!21 (value!25890 (h!9352 tokens!465))) e!180419 tp!105779))))

(declare-fun b!289866 () Bool)

(declare-fun res!132295 () Bool)

(assert (=> b!289866 (=> res!132295 e!180424)))

(declare-fun rulesProduceIndividualToken!392 (LexerInterface!643 List!3964 Token!1258) Bool)

(assert (=> b!289866 (= res!132295 (not (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (h!9352 tokens!465))))))

(declare-fun b!289867 () Bool)

(declare-fun res!132282 () Bool)

(assert (=> b!289867 (=> (not res!132282) (not e!180427))))

(declare-fun isEmpty!2627 (List!3964) Bool)

(assert (=> b!289867 (= res!132282 (not (isEmpty!2627 rules!1920)))))

(declare-fun b!289868 () Bool)

(declare-fun res!132289 () Bool)

(assert (=> b!289868 (=> (not res!132289) (not e!180432))))

(declare-fun sepAndNonSepRulesDisjointChars!346 (List!3964 List!3964) Bool)

(assert (=> b!289868 (= res!132289 (sepAndNonSepRulesDisjointChars!346 rules!1920 rules!1920))))

(declare-fun b!289869 () Bool)

(assert (=> b!289869 (= e!180434 e!180424)))

(declare-fun res!132284 () Bool)

(assert (=> b!289869 (=> res!132284 e!180424)))

(declare-fun lt!122459 () List!3963)

(declare-fun lt!122460 () List!3963)

(assert (=> b!289869 (= res!132284 (or (not (= lt!122459 lt!122460)) (not (= lt!122460 lt!122467)) (not (= lt!122459 lt!122467))))))

(declare-fun printList!317 (LexerInterface!643 List!3965) List!3963)

(assert (=> b!289869 (= lt!122460 (printList!317 thiss!17480 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))

(declare-fun lt!122465 () BalanceConc!2680)

(assert (=> b!289869 (= lt!122459 (list!1655 lt!122465))))

(declare-fun lt!122472 () BalanceConc!2682)

(declare-fun printTailRec!329 (LexerInterface!643 BalanceConc!2682 Int BalanceConc!2680) BalanceConc!2680)

(assert (=> b!289869 (= lt!122465 (printTailRec!329 thiss!17480 lt!122472 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun print!368 (LexerInterface!643 BalanceConc!2682) BalanceConc!2680)

(assert (=> b!289869 (= lt!122465 (print!368 thiss!17480 lt!122472))))

(declare-fun singletonSeq!303 (Token!1258) BalanceConc!2682)

(assert (=> b!289869 (= lt!122472 (singletonSeq!303 (h!9352 tokens!465)))))

(declare-fun b!289870 () Bool)

(declare-fun res!132287 () Bool)

(assert (=> b!289870 (=> (not res!132287) (not e!180432))))

(assert (=> b!289870 (= res!132287 (rulesProduceIndividualToken!392 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!289871 () Bool)

(declare-fun res!132297 () Bool)

(assert (=> b!289871 (=> res!132297 e!180424)))

(declare-fun isEmpty!2628 (BalanceConc!2682) Bool)

(declare-datatypes ((tuple2!4508 0))(
  ( (tuple2!4509 (_1!2470 BalanceConc!2682) (_2!2470 BalanceConc!2680)) )
))
(declare-fun lex!435 (LexerInterface!643 List!3964 BalanceConc!2680) tuple2!4508)

(assert (=> b!289871 (= res!132297 (isEmpty!2628 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467)))))))

(declare-fun b!289872 () Bool)

(declare-fun tp!105776 () Bool)

(assert (=> b!289872 (= e!180431 (and (inv!21 (value!25890 separatorToken!170)) e!180423 tp!105776))))

(declare-fun b!289873 () Bool)

(assert (=> b!289873 (= e!180421 (not (= lt!122466 (++!1058 lt!122467 lt!122458))))))

(declare-fun b!289874 () Bool)

(declare-datatypes ((tuple2!4510 0))(
  ( (tuple2!4511 (_1!2471 Token!1258) (_2!2471 List!3963)) )
))
(declare-datatypes ((Option!877 0))(
  ( (None!876) (Some!876 (v!14827 tuple2!4510)) )
))
(declare-fun lt!122469 () Option!877)

(declare-fun get!1336 (Option!877) tuple2!4510)

(assert (=> b!289874 (= e!180428 (= (_1!2471 (get!1336 lt!122469)) (h!9352 tokens!465)))))

(declare-fun isDefined!716 (Option!877) Bool)

(assert (=> b!289874 (isDefined!716 lt!122469)))

(declare-fun maxPrefix!359 (LexerInterface!643 List!3964 List!3963) Option!877)

(assert (=> b!289874 (= lt!122469 (maxPrefix!359 thiss!17480 rules!1920 lt!122467))))

(declare-fun tp!105777 () Bool)

(declare-fun b!289875 () Bool)

(assert (=> b!289875 (= e!180419 (and tp!105777 (inv!4888 (tag!973 (rule!1360 (h!9352 tokens!465)))) (inv!4892 (transformation!757 (rule!1360 (h!9352 tokens!465)))) e!180418))))

(declare-fun b!289876 () Bool)

(declare-fun res!132285 () Bool)

(assert (=> b!289876 (=> (not res!132285) (not e!180432))))

(assert (=> b!289876 (= res!132285 ((_ is Cons!3955) tokens!465))))

(declare-fun b!289877 () Bool)

(assert (=> b!289877 (= e!180432 e!180414)))

(declare-fun res!132286 () Bool)

(assert (=> b!289877 (=> (not res!132286) (not e!180414))))

(assert (=> b!289877 (= res!132286 (= lt!122466 lt!122464))))

(assert (=> b!289877 (= lt!122464 (list!1655 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0)))))

(assert (=> b!289877 (= lt!122466 (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (= (and start!31534 res!132283) b!289867))

(assert (= (and b!289867 res!132282) b!289850))

(assert (= (and b!289850 res!132292) b!289851))

(assert (= (and b!289851 res!132291) b!289870))

(assert (= (and b!289870 res!132287) b!289863))

(assert (= (and b!289863 res!132280) b!289856))

(assert (= (and b!289856 res!132293) b!289868))

(assert (= (and b!289868 res!132289) b!289876))

(assert (= (and b!289876 res!132285) b!289877))

(assert (= (and b!289877 res!132286) b!289864))

(assert (= (and b!289864 res!132294) b!289859))

(assert (= (and b!289859 (not res!132288)) b!289853))

(assert (= (and b!289853 res!132296) b!289873))

(assert (= (and b!289853 (not res!132290)) b!289869))

(assert (= (and b!289869 (not res!132284)) b!289866))

(assert (= (and b!289866 (not res!132295)) b!289871))

(assert (= (and b!289871 (not res!132297)) b!289852))

(assert (= (and b!289852 (not res!132281)) b!289874))

(assert (= b!289861 b!289860))

(assert (= b!289854 b!289861))

(assert (= (and start!31534 ((_ is Cons!3954) rules!1920)) b!289854))

(assert (= b!289858 b!289862))

(assert (= b!289872 b!289858))

(assert (= start!31534 b!289872))

(assert (= b!289875 b!289857))

(assert (= b!289865 b!289875))

(assert (= b!289855 b!289865))

(assert (= (and start!31534 ((_ is Cons!3955) tokens!465)) b!289855))

(declare-fun m!377127 () Bool)

(assert (=> b!289866 m!377127))

(declare-fun m!377129 () Bool)

(assert (=> b!289868 m!377129))

(declare-fun m!377131 () Bool)

(assert (=> b!289871 m!377131))

(assert (=> b!289871 m!377131))

(declare-fun m!377133 () Bool)

(assert (=> b!289871 m!377133))

(declare-fun m!377135 () Bool)

(assert (=> b!289871 m!377135))

(declare-fun m!377137 () Bool)

(assert (=> b!289856 m!377137))

(declare-fun m!377139 () Bool)

(assert (=> b!289867 m!377139))

(declare-fun m!377141 () Bool)

(assert (=> b!289870 m!377141))

(declare-fun m!377143 () Bool)

(assert (=> b!289872 m!377143))

(declare-fun m!377145 () Bool)

(assert (=> b!289865 m!377145))

(declare-fun m!377147 () Bool)

(assert (=> b!289861 m!377147))

(declare-fun m!377149 () Bool)

(assert (=> b!289861 m!377149))

(declare-fun m!377151 () Bool)

(assert (=> b!289859 m!377151))

(declare-fun m!377153 () Bool)

(assert (=> b!289859 m!377153))

(declare-fun m!377155 () Bool)

(assert (=> b!289859 m!377155))

(declare-fun m!377157 () Bool)

(assert (=> b!289859 m!377157))

(declare-fun m!377159 () Bool)

(assert (=> b!289859 m!377159))

(assert (=> b!289859 m!377157))

(declare-fun m!377161 () Bool)

(assert (=> b!289859 m!377161))

(declare-fun m!377163 () Bool)

(assert (=> b!289859 m!377163))

(declare-fun m!377165 () Bool)

(assert (=> b!289859 m!377165))

(declare-fun m!377167 () Bool)

(assert (=> b!289859 m!377167))

(assert (=> b!289859 m!377151))

(assert (=> b!289859 m!377161))

(declare-fun m!377169 () Bool)

(assert (=> b!289859 m!377169))

(declare-fun m!377171 () Bool)

(assert (=> b!289859 m!377171))

(assert (=> b!289859 m!377167))

(declare-fun m!377173 () Bool)

(assert (=> b!289859 m!377173))

(assert (=> b!289859 m!377163))

(declare-fun m!377175 () Bool)

(assert (=> b!289859 m!377175))

(declare-fun m!377177 () Bool)

(assert (=> b!289855 m!377177))

(declare-fun m!377179 () Bool)

(assert (=> b!289877 m!377179))

(assert (=> b!289877 m!377179))

(declare-fun m!377181 () Bool)

(assert (=> b!289877 m!377181))

(declare-fun m!377183 () Bool)

(assert (=> b!289877 m!377183))

(declare-fun m!377185 () Bool)

(assert (=> b!289875 m!377185))

(declare-fun m!377187 () Bool)

(assert (=> b!289875 m!377187))

(declare-fun m!377189 () Bool)

(assert (=> start!31534 m!377189))

(declare-fun m!377191 () Bool)

(assert (=> b!289869 m!377191))

(declare-fun m!377193 () Bool)

(assert (=> b!289869 m!377193))

(declare-fun m!377195 () Bool)

(assert (=> b!289869 m!377195))

(declare-fun m!377197 () Bool)

(assert (=> b!289869 m!377197))

(declare-fun m!377199 () Bool)

(assert (=> b!289869 m!377199))

(declare-fun m!377201 () Bool)

(assert (=> b!289852 m!377201))

(assert (=> b!289852 m!377201))

(declare-fun m!377203 () Bool)

(assert (=> b!289852 m!377203))

(assert (=> b!289852 m!377203))

(declare-fun m!377205 () Bool)

(assert (=> b!289852 m!377205))

(declare-fun m!377207 () Bool)

(assert (=> b!289852 m!377207))

(declare-fun m!377209 () Bool)

(assert (=> b!289850 m!377209))

(declare-fun m!377211 () Bool)

(assert (=> b!289851 m!377211))

(declare-fun m!377213 () Bool)

(assert (=> b!289851 m!377213))

(declare-fun m!377215 () Bool)

(assert (=> b!289864 m!377215))

(assert (=> b!289864 m!377215))

(declare-fun m!377217 () Bool)

(assert (=> b!289864 m!377217))

(declare-fun m!377219 () Bool)

(assert (=> b!289873 m!377219))

(declare-fun m!377221 () Bool)

(assert (=> b!289874 m!377221))

(declare-fun m!377223 () Bool)

(assert (=> b!289874 m!377223))

(declare-fun m!377225 () Bool)

(assert (=> b!289874 m!377225))

(declare-fun m!377227 () Bool)

(assert (=> b!289858 m!377227))

(declare-fun m!377229 () Bool)

(assert (=> b!289858 m!377229))

(check-sat (not b_next!10593) (not b!289850) (not b!289854) (not b!289871) (not b!289865) (not b_next!10591) (not start!31534) (not b!289855) (not b!289874) (not b_next!10587) b_and!23535 (not b!289852) (not b!289851) b_and!23537 (not b_next!10589) (not b!289869) b_and!23529 (not b!289872) (not b!289867) (not b_next!10595) b_and!23531 (not b!289866) (not b_next!10585) (not b!289861) (not b!289868) (not b!289858) (not b!289875) (not b!289856) (not b!289870) (not b!289859) (not b!289873) (not b!289864) (not b!289886) (not b!289877) b_and!23539 b_and!23533)
(check-sat (not b_next!10593) b_and!23529 (not b_next!10591) (not b_next!10587) b_and!23535 b_and!23537 (not b_next!10589) (not b_next!10595) b_and!23531 (not b_next!10585) b_and!23539 b_and!23533)
(get-model)

(declare-fun d!86236 () Bool)

(assert (=> d!86236 (= (inv!4888 (tag!973 (h!9351 rules!1920))) (= (mod (str.len (value!25889 (tag!973 (h!9351 rules!1920)))) 2) 0))))

(assert (=> b!289861 d!86236))

(declare-fun d!86238 () Bool)

(declare-fun res!132308 () Bool)

(declare-fun e!180446 () Bool)

(assert (=> d!86238 (=> (not res!132308) (not e!180446))))

(declare-fun semiInverseModEq!281 (Int Int) Bool)

(assert (=> d!86238 (= res!132308 (semiInverseModEq!281 (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (h!9351 rules!1920)))))))

(assert (=> d!86238 (= (inv!4892 (transformation!757 (h!9351 rules!1920))) e!180446)))

(declare-fun b!289893 () Bool)

(declare-fun equivClasses!264 (Int Int) Bool)

(assert (=> b!289893 (= e!180446 (equivClasses!264 (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (h!9351 rules!1920)))))))

(assert (= (and d!86238 res!132308) b!289893))

(declare-fun m!377231 () Bool)

(assert (=> d!86238 m!377231))

(declare-fun m!377233 () Bool)

(assert (=> b!289893 m!377233))

(assert (=> b!289861 d!86238))

(declare-fun bs!32911 () Bool)

(declare-fun d!86240 () Bool)

(assert (= bs!32911 (and d!86240 b!289856)))

(declare-fun lambda!9957 () Int)

(assert (=> bs!32911 (not (= lambda!9957 lambda!9951))))

(declare-fun bs!32912 () Bool)

(assert (= bs!32912 (and d!86240 b!289852)))

(assert (=> bs!32912 (= lambda!9957 lambda!9952)))

(declare-fun b!290003 () Bool)

(declare-fun e!180511 () Bool)

(assert (=> b!290003 (= e!180511 true)))

(declare-fun b!290002 () Bool)

(declare-fun e!180510 () Bool)

(assert (=> b!290002 (= e!180510 e!180511)))

(declare-fun b!290001 () Bool)

(declare-fun e!180509 () Bool)

(assert (=> b!290001 (= e!180509 e!180510)))

(assert (=> d!86240 e!180509))

(assert (= b!290002 b!290003))

(assert (= b!290001 b!290002))

(assert (= (and d!86240 ((_ is Cons!3954) rules!1920)) b!290001))

(assert (=> b!290003 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9957))))

(assert (=> b!290003 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9957))))

(assert (=> d!86240 true))

(declare-fun e!180508 () Bool)

(assert (=> d!86240 e!180508))

(declare-fun res!132373 () Bool)

(assert (=> d!86240 (=> (not res!132373) (not e!180508))))

(declare-fun lt!122529 () Bool)

(declare-fun list!1658 (BalanceConc!2682) List!3965)

(assert (=> d!86240 (= res!132373 (= lt!122529 (forall!1024 (list!1658 lt!122463) lambda!9957)))))

(declare-fun forall!1025 (BalanceConc!2682 Int) Bool)

(assert (=> d!86240 (= lt!122529 (forall!1025 lt!122463 lambda!9957))))

(assert (=> d!86240 (not (isEmpty!2627 rules!1920))))

(assert (=> d!86240 (= (rulesProduceEachTokenIndividually!435 thiss!17480 rules!1920 lt!122463) lt!122529)))

(declare-fun b!290000 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!250 (LexerInterface!643 List!3964 List!3965) Bool)

(assert (=> b!290000 (= e!180508 (= lt!122529 (rulesProduceEachTokenIndividuallyList!250 thiss!17480 rules!1920 (list!1658 lt!122463))))))

(assert (= (and d!86240 res!132373) b!290000))

(declare-fun m!377403 () Bool)

(assert (=> d!86240 m!377403))

(assert (=> d!86240 m!377403))

(declare-fun m!377405 () Bool)

(assert (=> d!86240 m!377405))

(declare-fun m!377407 () Bool)

(assert (=> d!86240 m!377407))

(assert (=> d!86240 m!377139))

(assert (=> b!290000 m!377403))

(assert (=> b!290000 m!377403))

(declare-fun m!377409 () Bool)

(assert (=> b!290000 m!377409))

(assert (=> b!289851 d!86240))

(declare-fun d!86280 () Bool)

(declare-fun fromListB!361 (List!3965) BalanceConc!2682)

(assert (=> d!86280 (= (seqFromList!879 tokens!465) (fromListB!361 tokens!465))))

(declare-fun bs!32913 () Bool)

(assert (= bs!32913 d!86280))

(declare-fun m!377411 () Bool)

(assert (=> bs!32913 m!377411))

(assert (=> b!289851 d!86280))

(declare-fun d!86282 () Bool)

(declare-fun res!132376 () Bool)

(declare-fun e!180514 () Bool)

(assert (=> d!86282 (=> (not res!132376) (not e!180514))))

(declare-fun rulesValid!246 (LexerInterface!643 List!3964) Bool)

(assert (=> d!86282 (= res!132376 (rulesValid!246 thiss!17480 rules!1920))))

(assert (=> d!86282 (= (rulesInvariant!609 thiss!17480 rules!1920) e!180514)))

(declare-fun b!290006 () Bool)

(declare-datatypes ((List!3967 0))(
  ( (Nil!3957) (Cons!3957 (h!9354 String!4975) (t!40663 List!3967)) )
))
(declare-fun noDuplicateTag!246 (LexerInterface!643 List!3964 List!3967) Bool)

(assert (=> b!290006 (= e!180514 (noDuplicateTag!246 thiss!17480 rules!1920 Nil!3957))))

(assert (= (and d!86282 res!132376) b!290006))

(declare-fun m!377413 () Bool)

(assert (=> d!86282 m!377413))

(declare-fun m!377415 () Bool)

(assert (=> b!290006 m!377415))

(assert (=> b!289850 d!86282))

(declare-fun b!290017 () Bool)

(declare-fun e!180521 () Bool)

(declare-fun inv!16 (TokenValue!779) Bool)

(assert (=> b!290017 (= e!180521 (inv!16 (value!25890 separatorToken!170)))))

(declare-fun b!290018 () Bool)

(declare-fun res!132379 () Bool)

(declare-fun e!180523 () Bool)

(assert (=> b!290018 (=> res!132379 e!180523)))

(assert (=> b!290018 (= res!132379 (not ((_ is IntegerValue!2339) (value!25890 separatorToken!170))))))

(declare-fun e!180522 () Bool)

(assert (=> b!290018 (= e!180522 e!180523)))

(declare-fun d!86284 () Bool)

(declare-fun c!54902 () Bool)

(assert (=> d!86284 (= c!54902 ((_ is IntegerValue!2337) (value!25890 separatorToken!170)))))

(assert (=> d!86284 (= (inv!21 (value!25890 separatorToken!170)) e!180521)))

(declare-fun b!290019 () Bool)

(assert (=> b!290019 (= e!180521 e!180522)))

(declare-fun c!54903 () Bool)

(assert (=> b!290019 (= c!54903 ((_ is IntegerValue!2338) (value!25890 separatorToken!170)))))

(declare-fun b!290020 () Bool)

(declare-fun inv!15 (TokenValue!779) Bool)

(assert (=> b!290020 (= e!180523 (inv!15 (value!25890 separatorToken!170)))))

(declare-fun b!290021 () Bool)

(declare-fun inv!17 (TokenValue!779) Bool)

(assert (=> b!290021 (= e!180522 (inv!17 (value!25890 separatorToken!170)))))

(assert (= (and d!86284 c!54902) b!290017))

(assert (= (and d!86284 (not c!54902)) b!290019))

(assert (= (and b!290019 c!54903) b!290021))

(assert (= (and b!290019 (not c!54903)) b!290018))

(assert (= (and b!290018 (not res!132379)) b!290020))

(declare-fun m!377417 () Bool)

(assert (=> b!290017 m!377417))

(declare-fun m!377419 () Bool)

(assert (=> b!290020 m!377419))

(declare-fun m!377421 () Bool)

(assert (=> b!290021 m!377421))

(assert (=> b!289872 d!86284))

(declare-fun d!86286 () Bool)

(declare-fun isEmpty!2634 (Option!876) Bool)

(assert (=> d!86286 (= (isDefined!715 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))) (not (isEmpty!2634 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))

(declare-fun bs!32914 () Bool)

(assert (= bs!32914 d!86286))

(assert (=> bs!32914 m!377203))

(declare-fun m!377423 () Bool)

(assert (=> bs!32914 m!377423))

(assert (=> b!289852 d!86286))

(declare-fun b!290062 () Bool)

(declare-fun e!180556 () Option!876)

(declare-fun lt!122552 () Option!876)

(declare-fun lt!122549 () Option!876)

(assert (=> b!290062 (= e!180556 (ite (and ((_ is None!875) lt!122552) ((_ is None!875) lt!122549)) None!875 (ite ((_ is None!875) lt!122549) lt!122552 (ite ((_ is None!875) lt!122552) lt!122549 (ite (>= (size!3171 (_1!2469 (v!14826 lt!122552))) (size!3171 (_1!2469 (v!14826 lt!122549)))) lt!122552 lt!122549)))))))

(declare-fun call!16402 () Option!876)

(assert (=> b!290062 (= lt!122552 call!16402)))

(assert (=> b!290062 (= lt!122549 (maxPrefixZipperSequence!322 thiss!17480 (t!40596 rules!1920) (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(declare-fun b!290063 () Bool)

(declare-fun e!180554 () Bool)

(declare-fun e!180555 () Bool)

(assert (=> b!290063 (= e!180554 e!180555)))

(declare-fun res!132412 () Bool)

(assert (=> b!290063 (=> res!132412 e!180555)))

(declare-fun lt!122551 () Option!876)

(assert (=> b!290063 (= res!132412 (not (isDefined!715 lt!122551)))))

(declare-fun b!290064 () Bool)

(declare-fun e!180557 () Bool)

(declare-fun get!1337 (Option!876) tuple2!4506)

(declare-fun maxPrefixZipper!130 (LexerInterface!643 List!3964 List!3963) Option!877)

(assert (=> b!290064 (= e!180557 (= (list!1655 (_2!2469 (get!1337 lt!122551))) (_2!2471 (get!1336 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(declare-fun b!290065 () Bool)

(declare-fun res!132415 () Bool)

(assert (=> b!290065 (=> (not res!132415) (not e!180554))))

(declare-fun e!180559 () Bool)

(assert (=> b!290065 (= res!132415 e!180559)))

(declare-fun res!132411 () Bool)

(assert (=> b!290065 (=> res!132411 e!180559)))

(assert (=> b!290065 (= res!132411 (not (isDefined!715 lt!122551)))))

(declare-fun d!86288 () Bool)

(assert (=> d!86288 e!180554))

(declare-fun res!132413 () Bool)

(assert (=> d!86288 (=> (not res!132413) (not e!180554))))

(assert (=> d!86288 (= res!132413 (= (isDefined!715 lt!122551) (isDefined!716 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))))

(assert (=> d!86288 (= lt!122551 e!180556)))

(declare-fun c!54909 () Bool)

(assert (=> d!86288 (= c!54909 (and ((_ is Cons!3954) rules!1920) ((_ is Nil!3954) (t!40596 rules!1920))))))

(declare-fun lt!122547 () Unit!5362)

(declare-fun lt!122553 () Unit!5362)

(assert (=> d!86288 (= lt!122547 lt!122553)))

(declare-fun lt!122550 () List!3963)

(declare-fun lt!122548 () List!3963)

(declare-fun isPrefix!421 (List!3963 List!3963) Bool)

(assert (=> d!86288 (isPrefix!421 lt!122550 lt!122548)))

(declare-fun lemmaIsPrefixRefl!227 (List!3963 List!3963) Unit!5362)

(assert (=> d!86288 (= lt!122553 (lemmaIsPrefixRefl!227 lt!122550 lt!122548))))

(assert (=> d!86288 (= lt!122548 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (=> d!86288 (= lt!122550 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(declare-fun rulesValidInductive!222 (LexerInterface!643 List!3964) Bool)

(assert (=> d!86288 (rulesValidInductive!222 thiss!17480 rules!1920)))

(assert (=> d!86288 (= (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))) lt!122551)))

(declare-fun b!290066 () Bool)

(assert (=> b!290066 (= e!180559 e!180557)))

(declare-fun res!132410 () Bool)

(assert (=> b!290066 (=> (not res!132410) (not e!180557))))

(assert (=> b!290066 (= res!132410 (= (_1!2469 (get!1337 lt!122551)) (_1!2471 (get!1336 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(declare-fun bm!16397 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!131 (LexerInterface!643 Rule!1314 BalanceConc!2680) Option!876)

(assert (=> bm!16397 (= call!16402 (maxPrefixOneRuleZipperSequence!131 thiss!17480 (h!9351 rules!1920) (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(declare-fun b!290067 () Bool)

(assert (=> b!290067 (= e!180556 call!16402)))

(declare-fun b!290068 () Bool)

(declare-fun e!180558 () Bool)

(assert (=> b!290068 (= e!180555 e!180558)))

(declare-fun res!132414 () Bool)

(assert (=> b!290068 (=> (not res!132414) (not e!180558))))

(assert (=> b!290068 (= res!132414 (= (_1!2469 (get!1337 lt!122551)) (_1!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(declare-fun b!290069 () Bool)

(assert (=> b!290069 (= e!180558 (= (list!1655 (_2!2469 (get!1337 lt!122551))) (_2!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(assert (= (and d!86288 c!54909) b!290067))

(assert (= (and d!86288 (not c!54909)) b!290062))

(assert (= (or b!290067 b!290062) bm!16397))

(assert (= (and d!86288 res!132413) b!290065))

(assert (= (and b!290065 (not res!132411)) b!290066))

(assert (= (and b!290066 res!132410) b!290064))

(assert (= (and b!290065 res!132415) b!290063))

(assert (= (and b!290063 (not res!132412)) b!290068))

(assert (= (and b!290068 res!132414) b!290069))

(declare-fun m!377455 () Bool)

(assert (=> b!290064 m!377455))

(assert (=> b!290064 m!377201))

(declare-fun m!377457 () Bool)

(assert (=> b!290064 m!377457))

(assert (=> b!290064 m!377457))

(declare-fun m!377459 () Bool)

(assert (=> b!290064 m!377459))

(declare-fun m!377461 () Bool)

(assert (=> b!290064 m!377461))

(assert (=> b!290064 m!377459))

(declare-fun m!377463 () Bool)

(assert (=> b!290064 m!377463))

(declare-fun m!377465 () Bool)

(assert (=> b!290065 m!377465))

(assert (=> b!290066 m!377455))

(assert (=> b!290066 m!377201))

(assert (=> b!290066 m!377457))

(assert (=> b!290066 m!377457))

(assert (=> b!290066 m!377459))

(assert (=> b!290066 m!377459))

(assert (=> b!290066 m!377463))

(assert (=> bm!16397 m!377201))

(declare-fun m!377467 () Bool)

(assert (=> bm!16397 m!377467))

(assert (=> b!290069 m!377455))

(assert (=> b!290069 m!377201))

(assert (=> b!290069 m!377457))

(assert (=> b!290069 m!377457))

(declare-fun m!377469 () Bool)

(assert (=> b!290069 m!377469))

(assert (=> b!290069 m!377469))

(declare-fun m!377471 () Bool)

(assert (=> b!290069 m!377471))

(assert (=> b!290069 m!377461))

(assert (=> b!290062 m!377201))

(declare-fun m!377473 () Bool)

(assert (=> b!290062 m!377473))

(assert (=> d!86288 m!377201))

(assert (=> d!86288 m!377457))

(assert (=> d!86288 m!377465))

(assert (=> d!86288 m!377457))

(assert (=> d!86288 m!377459))

(declare-fun m!377475 () Bool)

(assert (=> d!86288 m!377475))

(assert (=> d!86288 m!377459))

(declare-fun m!377477 () Bool)

(assert (=> d!86288 m!377477))

(declare-fun m!377479 () Bool)

(assert (=> d!86288 m!377479))

(declare-fun m!377481 () Bool)

(assert (=> d!86288 m!377481))

(assert (=> b!290063 m!377465))

(assert (=> b!290068 m!377455))

(assert (=> b!290068 m!377201))

(assert (=> b!290068 m!377457))

(assert (=> b!290068 m!377457))

(assert (=> b!290068 m!377469))

(assert (=> b!290068 m!377469))

(assert (=> b!290068 m!377471))

(assert (=> b!289852 d!86288))

(declare-fun d!86302 () Bool)

(declare-fun fromListB!362 (List!3963) BalanceConc!2680)

(assert (=> d!86302 (= (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))) (fromListB!362 (originalCharacters!800 (h!9352 tokens!465))))))

(declare-fun bs!32917 () Bool)

(assert (= bs!32917 d!86302))

(declare-fun m!377483 () Bool)

(assert (=> bs!32917 m!377483))

(assert (=> b!289852 d!86302))

(declare-fun d!86304 () Bool)

(declare-fun dynLambda!2110 (Int Token!1258) Bool)

(assert (=> d!86304 (dynLambda!2110 lambda!9952 (h!9352 tokens!465))))

(declare-fun lt!122556 () Unit!5362)

(declare-fun choose!2606 (List!3965 Int Token!1258) Unit!5362)

(assert (=> d!86304 (= lt!122556 (choose!2606 tokens!465 lambda!9952 (h!9352 tokens!465)))))

(declare-fun e!180562 () Bool)

(assert (=> d!86304 e!180562))

(declare-fun res!132418 () Bool)

(assert (=> d!86304 (=> (not res!132418) (not e!180562))))

(assert (=> d!86304 (= res!132418 (forall!1024 tokens!465 lambda!9952))))

(assert (=> d!86304 (= (forallContained!310 tokens!465 lambda!9952 (h!9352 tokens!465)) lt!122556)))

(declare-fun b!290072 () Bool)

(declare-fun contains!775 (List!3965 Token!1258) Bool)

(assert (=> b!290072 (= e!180562 (contains!775 tokens!465 (h!9352 tokens!465)))))

(assert (= (and d!86304 res!132418) b!290072))

(declare-fun b_lambda!9685 () Bool)

(assert (=> (not b_lambda!9685) (not d!86304)))

(declare-fun m!377485 () Bool)

(assert (=> d!86304 m!377485))

(declare-fun m!377487 () Bool)

(assert (=> d!86304 m!377487))

(declare-fun m!377489 () Bool)

(assert (=> d!86304 m!377489))

(declare-fun m!377491 () Bool)

(assert (=> b!290072 m!377491))

(assert (=> b!289852 d!86304))

(declare-fun b!290083 () Bool)

(declare-fun res!132424 () Bool)

(declare-fun e!180567 () Bool)

(assert (=> b!290083 (=> (not res!132424) (not e!180567))))

(declare-fun lt!122559 () List!3963)

(declare-fun size!3175 (List!3963) Int)

(assert (=> b!290083 (= res!132424 (= (size!3175 lt!122559) (+ (size!3175 lt!122467) (size!3175 lt!122458))))))

(declare-fun b!290081 () Bool)

(declare-fun e!180568 () List!3963)

(assert (=> b!290081 (= e!180568 lt!122458)))

(declare-fun d!86306 () Bool)

(assert (=> d!86306 e!180567))

(declare-fun res!132423 () Bool)

(assert (=> d!86306 (=> (not res!132423) (not e!180567))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!585 (List!3963) (InoxSet C!2884))

(assert (=> d!86306 (= res!132423 (= (content!585 lt!122559) ((_ map or) (content!585 lt!122467) (content!585 lt!122458))))))

(assert (=> d!86306 (= lt!122559 e!180568)))

(declare-fun c!54912 () Bool)

(assert (=> d!86306 (= c!54912 ((_ is Nil!3953) lt!122467))))

(assert (=> d!86306 (= (++!1058 lt!122467 lt!122458) lt!122559)))

(declare-fun b!290082 () Bool)

(assert (=> b!290082 (= e!180568 (Cons!3953 (h!9350 lt!122467) (++!1058 (t!40595 lt!122467) lt!122458)))))

(declare-fun b!290084 () Bool)

(assert (=> b!290084 (= e!180567 (or (not (= lt!122458 Nil!3953)) (= lt!122559 lt!122467)))))

(assert (= (and d!86306 c!54912) b!290081))

(assert (= (and d!86306 (not c!54912)) b!290082))

(assert (= (and d!86306 res!132423) b!290083))

(assert (= (and b!290083 res!132424) b!290084))

(declare-fun m!377493 () Bool)

(assert (=> b!290083 m!377493))

(declare-fun m!377495 () Bool)

(assert (=> b!290083 m!377495))

(declare-fun m!377497 () Bool)

(assert (=> b!290083 m!377497))

(declare-fun m!377499 () Bool)

(assert (=> d!86306 m!377499))

(declare-fun m!377501 () Bool)

(assert (=> d!86306 m!377501))

(declare-fun m!377503 () Bool)

(assert (=> d!86306 m!377503))

(declare-fun m!377505 () Bool)

(assert (=> b!290082 m!377505))

(assert (=> b!289873 d!86306))

(declare-fun d!86308 () Bool)

(declare-fun lt!122562 () BalanceConc!2680)

(assert (=> d!86308 (= (list!1655 lt!122562) (printList!317 thiss!17480 (list!1658 lt!122472)))))

(assert (=> d!86308 (= lt!122562 (printTailRec!329 thiss!17480 lt!122472 0 (BalanceConc!2681 Empty!1336)))))

(assert (=> d!86308 (= (print!368 thiss!17480 lt!122472) lt!122562)))

(declare-fun bs!32918 () Bool)

(assert (= bs!32918 d!86308))

(declare-fun m!377507 () Bool)

(assert (=> bs!32918 m!377507))

(declare-fun m!377509 () Bool)

(assert (=> bs!32918 m!377509))

(assert (=> bs!32918 m!377509))

(declare-fun m!377511 () Bool)

(assert (=> bs!32918 m!377511))

(assert (=> bs!32918 m!377197))

(assert (=> b!289869 d!86308))

(declare-fun d!86310 () Bool)

(declare-fun lt!122578 () BalanceConc!2680)

(declare-fun printListTailRec!150 (LexerInterface!643 List!3965 List!3963) List!3963)

(declare-fun dropList!184 (BalanceConc!2682 Int) List!3965)

(assert (=> d!86310 (= (list!1655 lt!122578) (printListTailRec!150 thiss!17480 (dropList!184 lt!122472 0) (list!1655 (BalanceConc!2681 Empty!1336))))))

(declare-fun e!180573 () BalanceConc!2680)

(assert (=> d!86310 (= lt!122578 e!180573)))

(declare-fun c!54915 () Bool)

(declare-fun size!3176 (BalanceConc!2682) Int)

(assert (=> d!86310 (= c!54915 (>= 0 (size!3176 lt!122472)))))

(declare-fun e!180574 () Bool)

(assert (=> d!86310 e!180574))

(declare-fun res!132427 () Bool)

(assert (=> d!86310 (=> (not res!132427) (not e!180574))))

(assert (=> d!86310 (= res!132427 (>= 0 0))))

(assert (=> d!86310 (= (printTailRec!329 thiss!17480 lt!122472 0 (BalanceConc!2681 Empty!1336)) lt!122578)))

(declare-fun b!290091 () Bool)

(assert (=> b!290091 (= e!180574 (<= 0 (size!3176 lt!122472)))))

(declare-fun b!290092 () Bool)

(assert (=> b!290092 (= e!180573 (BalanceConc!2681 Empty!1336))))

(declare-fun b!290093 () Bool)

(declare-fun ++!1060 (BalanceConc!2680 BalanceConc!2680) BalanceConc!2680)

(declare-fun apply!850 (BalanceConc!2682 Int) Token!1258)

(assert (=> b!290093 (= e!180573 (printTailRec!329 thiss!17480 lt!122472 (+ 0 1) (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 lt!122472 0)))))))

(declare-fun lt!122580 () List!3965)

(assert (=> b!290093 (= lt!122580 (list!1658 lt!122472))))

(declare-fun lt!122583 () Unit!5362)

(declare-fun lemmaDropApply!224 (List!3965 Int) Unit!5362)

(assert (=> b!290093 (= lt!122583 (lemmaDropApply!224 lt!122580 0))))

(declare-fun head!934 (List!3965) Token!1258)

(declare-fun drop!237 (List!3965 Int) List!3965)

(declare-fun apply!851 (List!3965 Int) Token!1258)

(assert (=> b!290093 (= (head!934 (drop!237 lt!122580 0)) (apply!851 lt!122580 0))))

(declare-fun lt!122581 () Unit!5362)

(assert (=> b!290093 (= lt!122581 lt!122583)))

(declare-fun lt!122582 () List!3965)

(assert (=> b!290093 (= lt!122582 (list!1658 lt!122472))))

(declare-fun lt!122579 () Unit!5362)

(declare-fun lemmaDropTail!216 (List!3965 Int) Unit!5362)

(assert (=> b!290093 (= lt!122579 (lemmaDropTail!216 lt!122582 0))))

(declare-fun tail!516 (List!3965) List!3965)

(assert (=> b!290093 (= (tail!516 (drop!237 lt!122582 0)) (drop!237 lt!122582 (+ 0 1)))))

(declare-fun lt!122577 () Unit!5362)

(assert (=> b!290093 (= lt!122577 lt!122579)))

(assert (= (and d!86310 res!132427) b!290091))

(assert (= (and d!86310 c!54915) b!290092))

(assert (= (and d!86310 (not c!54915)) b!290093))

(declare-fun m!377513 () Bool)

(assert (=> d!86310 m!377513))

(declare-fun m!377515 () Bool)

(assert (=> d!86310 m!377515))

(declare-fun m!377517 () Bool)

(assert (=> d!86310 m!377517))

(assert (=> d!86310 m!377517))

(assert (=> d!86310 m!377513))

(declare-fun m!377519 () Bool)

(assert (=> d!86310 m!377519))

(declare-fun m!377521 () Bool)

(assert (=> d!86310 m!377521))

(assert (=> b!290091 m!377515))

(declare-fun m!377523 () Bool)

(assert (=> b!290093 m!377523))

(declare-fun m!377525 () Bool)

(assert (=> b!290093 m!377525))

(declare-fun m!377527 () Bool)

(assert (=> b!290093 m!377527))

(declare-fun m!377529 () Bool)

(assert (=> b!290093 m!377529))

(declare-fun m!377531 () Bool)

(assert (=> b!290093 m!377531))

(declare-fun m!377533 () Bool)

(assert (=> b!290093 m!377533))

(declare-fun m!377535 () Bool)

(assert (=> b!290093 m!377535))

(declare-fun m!377537 () Bool)

(assert (=> b!290093 m!377537))

(declare-fun m!377539 () Bool)

(assert (=> b!290093 m!377539))

(declare-fun m!377541 () Bool)

(assert (=> b!290093 m!377541))

(assert (=> b!290093 m!377525))

(declare-fun m!377543 () Bool)

(assert (=> b!290093 m!377543))

(assert (=> b!290093 m!377509))

(assert (=> b!290093 m!377537))

(assert (=> b!290093 m!377543))

(assert (=> b!290093 m!377527))

(assert (=> b!290093 m!377533))

(declare-fun m!377545 () Bool)

(assert (=> b!290093 m!377545))

(assert (=> b!289869 d!86310))

(declare-fun d!86312 () Bool)

(declare-fun list!1659 (Conc!1336) List!3963)

(assert (=> d!86312 (= (list!1655 lt!122465) (list!1659 (c!54877 lt!122465)))))

(declare-fun bs!32919 () Bool)

(assert (= bs!32919 d!86312))

(declare-fun m!377547 () Bool)

(assert (=> bs!32919 m!377547))

(assert (=> b!289869 d!86312))

(declare-fun d!86314 () Bool)

(declare-fun e!180577 () Bool)

(assert (=> d!86314 e!180577))

(declare-fun res!132430 () Bool)

(assert (=> d!86314 (=> (not res!132430) (not e!180577))))

(declare-fun lt!122586 () BalanceConc!2682)

(assert (=> d!86314 (= res!132430 (= (list!1658 lt!122586) (Cons!3955 (h!9352 tokens!465) Nil!3955)))))

(declare-fun singleton!134 (Token!1258) BalanceConc!2682)

(assert (=> d!86314 (= lt!122586 (singleton!134 (h!9352 tokens!465)))))

(assert (=> d!86314 (= (singletonSeq!303 (h!9352 tokens!465)) lt!122586)))

(declare-fun b!290096 () Bool)

(declare-fun isBalanced!379 (Conc!1337) Bool)

(assert (=> b!290096 (= e!180577 (isBalanced!379 (c!54879 lt!122586)))))

(assert (= (and d!86314 res!132430) b!290096))

(declare-fun m!377549 () Bool)

(assert (=> d!86314 m!377549))

(declare-fun m!377551 () Bool)

(assert (=> d!86314 m!377551))

(declare-fun m!377553 () Bool)

(assert (=> b!290096 m!377553))

(assert (=> b!289869 d!86314))

(declare-fun d!86316 () Bool)

(declare-fun c!54918 () Bool)

(assert (=> d!86316 (= c!54918 ((_ is Cons!3955) (Cons!3955 (h!9352 tokens!465) Nil!3955)))))

(declare-fun e!180580 () List!3963)

(assert (=> d!86316 (= (printList!317 thiss!17480 (Cons!3955 (h!9352 tokens!465) Nil!3955)) e!180580)))

(declare-fun b!290101 () Bool)

(assert (=> b!290101 (= e!180580 (++!1058 (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))) (printList!317 thiss!17480 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))))

(declare-fun b!290102 () Bool)

(assert (=> b!290102 (= e!180580 Nil!3953)))

(assert (= (and d!86316 c!54918) b!290101))

(assert (= (and d!86316 (not c!54918)) b!290102))

(declare-fun m!377555 () Bool)

(assert (=> b!290101 m!377555))

(assert (=> b!290101 m!377555))

(declare-fun m!377557 () Bool)

(assert (=> b!290101 m!377557))

(declare-fun m!377559 () Bool)

(assert (=> b!290101 m!377559))

(assert (=> b!290101 m!377557))

(assert (=> b!290101 m!377559))

(declare-fun m!377561 () Bool)

(assert (=> b!290101 m!377561))

(assert (=> b!289869 d!86316))

(declare-fun d!86318 () Bool)

(assert (=> d!86318 (= (inv!4888 (tag!973 (rule!1360 separatorToken!170))) (= (mod (str.len (value!25889 (tag!973 (rule!1360 separatorToken!170)))) 2) 0))))

(assert (=> b!289858 d!86318))

(declare-fun d!86320 () Bool)

(declare-fun res!132431 () Bool)

(declare-fun e!180581 () Bool)

(assert (=> d!86320 (=> (not res!132431) (not e!180581))))

(assert (=> d!86320 (= res!132431 (semiInverseModEq!281 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toValue!1508 (transformation!757 (rule!1360 separatorToken!170)))))))

(assert (=> d!86320 (= (inv!4892 (transformation!757 (rule!1360 separatorToken!170))) e!180581)))

(declare-fun b!290103 () Bool)

(assert (=> b!290103 (= e!180581 (equivClasses!264 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toValue!1508 (transformation!757 (rule!1360 separatorToken!170)))))))

(assert (= (and d!86320 res!132431) b!290103))

(declare-fun m!377563 () Bool)

(assert (=> d!86320 m!377563))

(declare-fun m!377565 () Bool)

(assert (=> b!290103 m!377565))

(assert (=> b!289858 d!86320))

(declare-fun d!86322 () Bool)

(assert (=> d!86322 (= (seqFromList!879 (t!40597 tokens!465)) (fromListB!361 (t!40597 tokens!465)))))

(declare-fun bs!32920 () Bool)

(assert (= bs!32920 d!86322))

(declare-fun m!377567 () Bool)

(assert (=> bs!32920 m!377567))

(assert (=> b!289859 d!86322))

(declare-fun b!290106 () Bool)

(declare-fun res!132433 () Bool)

(declare-fun e!180582 () Bool)

(assert (=> b!290106 (=> (not res!132433) (not e!180582))))

(declare-fun lt!122587 () List!3963)

(assert (=> b!290106 (= res!132433 (= (size!3175 lt!122587) (+ (size!3175 lt!122461) (size!3175 lt!122458))))))

(declare-fun b!290104 () Bool)

(declare-fun e!180583 () List!3963)

(assert (=> b!290104 (= e!180583 lt!122458)))

(declare-fun d!86324 () Bool)

(assert (=> d!86324 e!180582))

(declare-fun res!132432 () Bool)

(assert (=> d!86324 (=> (not res!132432) (not e!180582))))

(assert (=> d!86324 (= res!132432 (= (content!585 lt!122587) ((_ map or) (content!585 lt!122461) (content!585 lt!122458))))))

(assert (=> d!86324 (= lt!122587 e!180583)))

(declare-fun c!54919 () Bool)

(assert (=> d!86324 (= c!54919 ((_ is Nil!3953) lt!122461))))

(assert (=> d!86324 (= (++!1058 lt!122461 lt!122458) lt!122587)))

(declare-fun b!290105 () Bool)

(assert (=> b!290105 (= e!180583 (Cons!3953 (h!9350 lt!122461) (++!1058 (t!40595 lt!122461) lt!122458)))))

(declare-fun b!290107 () Bool)

(assert (=> b!290107 (= e!180582 (or (not (= lt!122458 Nil!3953)) (= lt!122587 lt!122461)))))

(assert (= (and d!86324 c!54919) b!290104))

(assert (= (and d!86324 (not c!54919)) b!290105))

(assert (= (and d!86324 res!132432) b!290106))

(assert (= (and b!290106 res!132433) b!290107))

(declare-fun m!377569 () Bool)

(assert (=> b!290106 m!377569))

(declare-fun m!377571 () Bool)

(assert (=> b!290106 m!377571))

(assert (=> b!290106 m!377497))

(declare-fun m!377573 () Bool)

(assert (=> d!86324 m!377573))

(declare-fun m!377575 () Bool)

(assert (=> d!86324 m!377575))

(assert (=> d!86324 m!377503))

(declare-fun m!377577 () Bool)

(assert (=> b!290105 m!377577))

(assert (=> b!289859 d!86324))

(declare-fun d!86326 () Bool)

(assert (=> d!86326 (= (list!1655 (charsOf!400 separatorToken!170)) (list!1659 (c!54877 (charsOf!400 separatorToken!170))))))

(declare-fun bs!32921 () Bool)

(assert (= bs!32921 d!86326))

(declare-fun m!377579 () Bool)

(assert (=> bs!32921 m!377579))

(assert (=> b!289859 d!86326))

(declare-fun bs!32927 () Bool)

(declare-fun b!290164 () Bool)

(assert (= bs!32927 (and b!290164 b!289856)))

(declare-fun lambda!9966 () Int)

(assert (=> bs!32927 (not (= lambda!9966 lambda!9951))))

(declare-fun bs!32928 () Bool)

(assert (= bs!32928 (and b!290164 b!289852)))

(assert (=> bs!32928 (= lambda!9966 lambda!9952)))

(declare-fun bs!32929 () Bool)

(assert (= bs!32929 (and b!290164 d!86240)))

(assert (=> bs!32929 (= lambda!9966 lambda!9957)))

(declare-fun b!290176 () Bool)

(declare-fun e!180625 () Bool)

(assert (=> b!290176 (= e!180625 true)))

(declare-fun b!290175 () Bool)

(declare-fun e!180624 () Bool)

(assert (=> b!290175 (= e!180624 e!180625)))

(declare-fun b!290174 () Bool)

(declare-fun e!180623 () Bool)

(assert (=> b!290174 (= e!180623 e!180624)))

(assert (=> b!290164 e!180623))

(assert (= b!290175 b!290176))

(assert (= b!290174 b!290175))

(assert (= (and b!290164 ((_ is Cons!3954) rules!1920)) b!290174))

(assert (=> b!290176 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9966))))

(assert (=> b!290176 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9966))))

(assert (=> b!290164 true))

(declare-fun e!180622 () List!3963)

(declare-fun e!180620 () List!3963)

(assert (=> b!290164 (= e!180622 e!180620)))

(declare-fun lt!122647 () Unit!5362)

(assert (=> b!290164 (= lt!122647 (forallContained!310 (t!40597 tokens!465) lambda!9966 (h!9352 (t!40597 tokens!465))))))

(declare-fun lt!122644 () List!3963)

(assert (=> b!290164 (= lt!122644 (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (t!40597 (t!40597 tokens!465)) separatorToken!170))))

(declare-fun lt!122645 () Option!877)

(assert (=> b!290164 (= lt!122645 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644)))))

(declare-fun c!54944 () Bool)

(assert (=> b!290164 (= c!54944 (and ((_ is Some!876) lt!122645) (= (_1!2471 (v!14827 lt!122645)) (h!9352 (t!40597 tokens!465)))))))

(declare-fun d!86328 () Bool)

(declare-fun c!54945 () Bool)

(assert (=> d!86328 (= c!54945 ((_ is Cons!3955) (t!40597 tokens!465)))))

(assert (=> d!86328 (= (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (t!40597 tokens!465) separatorToken!170) e!180622)))

(declare-fun b!290165 () Bool)

(declare-fun e!180621 () List!3963)

(declare-fun call!16431 () List!3963)

(assert (=> b!290165 (= e!180621 (++!1058 call!16431 lt!122644))))

(declare-fun bm!16423 () Bool)

(declare-fun call!16429 () List!3963)

(declare-fun call!16430 () List!3963)

(assert (=> bm!16423 (= call!16429 call!16430)))

(declare-fun c!54946 () Bool)

(declare-fun c!54942 () Bool)

(assert (=> bm!16423 (= c!54946 c!54942)))

(declare-fun b!290166 () Bool)

(assert (=> b!290166 (= e!180620 call!16431)))

(declare-fun bm!16424 () Bool)

(declare-fun call!16432 () BalanceConc!2680)

(assert (=> bm!16424 (= call!16432 (charsOf!400 (h!9352 (t!40597 tokens!465))))))

(declare-fun b!290167 () Bool)

(declare-fun e!180619 () BalanceConc!2680)

(declare-fun call!16428 () BalanceConc!2680)

(assert (=> b!290167 (= e!180619 call!16428)))

(declare-fun bm!16425 () Bool)

(declare-fun c!54943 () Bool)

(assert (=> bm!16425 (= c!54943 c!54944)))

(declare-fun e!180618 () List!3963)

(assert (=> bm!16425 (= call!16431 (++!1058 e!180618 (ite c!54944 lt!122644 call!16429)))))

(declare-fun b!290168 () Bool)

(assert (=> b!290168 (= e!180621 Nil!3953)))

(assert (=> b!290168 (= (print!368 thiss!17480 (singletonSeq!303 (h!9352 (t!40597 tokens!465)))) (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 (t!40597 tokens!465))) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!122643 () Unit!5362)

(declare-fun Unit!5368 () Unit!5362)

(assert (=> b!290168 (= lt!122643 Unit!5368)))

(declare-fun lt!122646 () Unit!5362)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 (LexerInterface!643 List!3964 List!3963 List!3963) Unit!5362)

(assert (=> b!290168 (= lt!122646 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 call!16429 lt!122644))))

(assert (=> b!290168 false))

(declare-fun lt!122642 () Unit!5362)

(declare-fun Unit!5369 () Unit!5362)

(assert (=> b!290168 (= lt!122642 Unit!5369)))

(declare-fun b!290169 () Bool)

(assert (=> b!290169 (= e!180622 Nil!3953)))

(declare-fun b!290170 () Bool)

(assert (=> b!290170 (= e!180618 (list!1655 call!16428))))

(declare-fun b!290171 () Bool)

(assert (=> b!290171 (= e!180619 (charsOf!400 separatorToken!170))))

(declare-fun bm!16426 () Bool)

(assert (=> bm!16426 (= call!16428 call!16432)))

(declare-fun b!290172 () Bool)

(assert (=> b!290172 (= c!54942 (and ((_ is Some!876) lt!122645) (not (= (_1!2471 (v!14827 lt!122645)) (h!9352 (t!40597 tokens!465))))))))

(assert (=> b!290172 (= e!180620 e!180621)))

(declare-fun bm!16427 () Bool)

(assert (=> bm!16427 (= call!16430 (list!1655 (ite c!54944 call!16432 e!180619)))))

(declare-fun b!290173 () Bool)

(assert (=> b!290173 (= e!180618 call!16430)))

(assert (= (and d!86328 c!54945) b!290164))

(assert (= (and d!86328 (not c!54945)) b!290169))

(assert (= (and b!290164 c!54944) b!290166))

(assert (= (and b!290164 (not c!54944)) b!290172))

(assert (= (and b!290172 c!54942) b!290165))

(assert (= (and b!290172 (not c!54942)) b!290168))

(assert (= (or b!290165 b!290168) bm!16426))

(assert (= (or b!290165 b!290168) bm!16423))

(assert (= (and bm!16423 c!54946) b!290171))

(assert (= (and bm!16423 (not c!54946)) b!290167))

(assert (= (or b!290166 bm!16426) bm!16424))

(assert (= (or b!290166 bm!16423) bm!16427))

(assert (= (or b!290166 b!290165) bm!16425))

(assert (= (and bm!16425 c!54943) b!290173))

(assert (= (and bm!16425 (not c!54943)) b!290170))

(declare-fun m!377641 () Bool)

(assert (=> b!290168 m!377641))

(assert (=> b!290168 m!377641))

(declare-fun m!377643 () Bool)

(assert (=> b!290168 m!377643))

(assert (=> b!290168 m!377641))

(declare-fun m!377645 () Bool)

(assert (=> b!290168 m!377645))

(declare-fun m!377647 () Bool)

(assert (=> b!290168 m!377647))

(declare-fun m!377649 () Bool)

(assert (=> bm!16424 m!377649))

(assert (=> b!290164 m!377649))

(declare-fun m!377651 () Bool)

(assert (=> b!290164 m!377651))

(declare-fun m!377653 () Bool)

(assert (=> b!290164 m!377653))

(declare-fun m!377655 () Bool)

(assert (=> b!290164 m!377655))

(declare-fun m!377657 () Bool)

(assert (=> b!290164 m!377657))

(assert (=> b!290164 m!377657))

(declare-fun m!377659 () Bool)

(assert (=> b!290164 m!377659))

(assert (=> b!290164 m!377649))

(assert (=> b!290164 m!377655))

(declare-fun m!377661 () Bool)

(assert (=> bm!16425 m!377661))

(declare-fun m!377663 () Bool)

(assert (=> b!290170 m!377663))

(assert (=> b!290171 m!377157))

(declare-fun m!377665 () Bool)

(assert (=> bm!16427 m!377665))

(declare-fun m!377667 () Bool)

(assert (=> b!290165 m!377667))

(assert (=> b!289859 d!86328))

(declare-fun b!290179 () Bool)

(declare-fun res!132444 () Bool)

(declare-fun e!180626 () Bool)

(assert (=> b!290179 (=> (not res!132444) (not e!180626))))

(declare-fun lt!122648 () List!3963)

(assert (=> b!290179 (= res!132444 (= (size!3175 lt!122648) (+ (size!3175 lt!122467) (size!3175 lt!122461))))))

(declare-fun b!290177 () Bool)

(declare-fun e!180627 () List!3963)

(assert (=> b!290177 (= e!180627 lt!122461)))

(declare-fun d!86332 () Bool)

(assert (=> d!86332 e!180626))

(declare-fun res!132443 () Bool)

(assert (=> d!86332 (=> (not res!132443) (not e!180626))))

(assert (=> d!86332 (= res!132443 (= (content!585 lt!122648) ((_ map or) (content!585 lt!122467) (content!585 lt!122461))))))

(assert (=> d!86332 (= lt!122648 e!180627)))

(declare-fun c!54947 () Bool)

(assert (=> d!86332 (= c!54947 ((_ is Nil!3953) lt!122467))))

(assert (=> d!86332 (= (++!1058 lt!122467 lt!122461) lt!122648)))

(declare-fun b!290178 () Bool)

(assert (=> b!290178 (= e!180627 (Cons!3953 (h!9350 lt!122467) (++!1058 (t!40595 lt!122467) lt!122461)))))

(declare-fun b!290180 () Bool)

(assert (=> b!290180 (= e!180626 (or (not (= lt!122461 Nil!3953)) (= lt!122648 lt!122467)))))

(assert (= (and d!86332 c!54947) b!290177))

(assert (= (and d!86332 (not c!54947)) b!290178))

(assert (= (and d!86332 res!132443) b!290179))

(assert (= (and b!290179 res!132444) b!290180))

(declare-fun m!377669 () Bool)

(assert (=> b!290179 m!377669))

(assert (=> b!290179 m!377495))

(assert (=> b!290179 m!377571))

(declare-fun m!377671 () Bool)

(assert (=> d!86332 m!377671))

(assert (=> d!86332 m!377501))

(assert (=> d!86332 m!377575))

(declare-fun m!377673 () Bool)

(assert (=> b!290178 m!377673))

(assert (=> b!289859 d!86332))

(declare-fun bs!32959 () Bool)

(declare-fun d!86334 () Bool)

(assert (= bs!32959 (and d!86334 b!289856)))

(declare-fun lambda!9977 () Int)

(assert (=> bs!32959 (= lambda!9977 lambda!9951)))

(declare-fun bs!32960 () Bool)

(assert (= bs!32960 (and d!86334 b!289852)))

(assert (=> bs!32960 (not (= lambda!9977 lambda!9952))))

(declare-fun bs!32961 () Bool)

(assert (= bs!32961 (and d!86334 d!86240)))

(assert (=> bs!32961 (not (= lambda!9977 lambda!9957))))

(declare-fun bs!32962 () Bool)

(assert (= bs!32962 (and d!86334 b!290164)))

(assert (=> bs!32962 (not (= lambda!9977 lambda!9966))))

(declare-fun bs!32963 () Bool)

(declare-fun b!290313 () Bool)

(assert (= bs!32963 (and b!290313 d!86334)))

(declare-fun lambda!9978 () Int)

(assert (=> bs!32963 (not (= lambda!9978 lambda!9977))))

(declare-fun bs!32964 () Bool)

(assert (= bs!32964 (and b!290313 b!289852)))

(assert (=> bs!32964 (= lambda!9978 lambda!9952)))

(declare-fun bs!32965 () Bool)

(assert (= bs!32965 (and b!290313 b!289856)))

(assert (=> bs!32965 (not (= lambda!9978 lambda!9951))))

(declare-fun bs!32966 () Bool)

(assert (= bs!32966 (and b!290313 b!290164)))

(assert (=> bs!32966 (= lambda!9978 lambda!9966)))

(declare-fun bs!32967 () Bool)

(assert (= bs!32967 (and b!290313 d!86240)))

(assert (=> bs!32967 (= lambda!9978 lambda!9957)))

(declare-fun b!290321 () Bool)

(declare-fun e!180719 () Bool)

(assert (=> b!290321 (= e!180719 true)))

(declare-fun b!290320 () Bool)

(declare-fun e!180718 () Bool)

(assert (=> b!290320 (= e!180718 e!180719)))

(declare-fun b!290319 () Bool)

(declare-fun e!180717 () Bool)

(assert (=> b!290319 (= e!180717 e!180718)))

(assert (=> b!290313 e!180717))

(assert (= b!290320 b!290321))

(assert (= b!290319 b!290320))

(assert (= (and b!290313 ((_ is Cons!3954) rules!1920)) b!290319))

(assert (=> b!290321 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9978))))

(assert (=> b!290321 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9978))))

(assert (=> b!290313 true))

(declare-fun lt!122753 () BalanceConc!2680)

(assert (=> d!86334 (= (list!1655 lt!122753) (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0) separatorToken!170))))

(declare-fun e!180716 () BalanceConc!2680)

(assert (=> d!86334 (= lt!122753 e!180716)))

(declare-fun c!54985 () Bool)

(assert (=> d!86334 (= c!54985 (>= 0 (size!3176 (seqFromList!879 (t!40597 tokens!465)))))))

(declare-fun lt!122764 () Unit!5362)

(declare-fun lemmaContentSubsetPreservesForall!128 (List!3965 List!3965 Int) Unit!5362)

(assert (=> d!86334 (= lt!122764 (lemmaContentSubsetPreservesForall!128 (list!1658 (seqFromList!879 (t!40597 tokens!465))) (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0) lambda!9977))))

(declare-fun e!180711 () Bool)

(assert (=> d!86334 e!180711))

(declare-fun res!132490 () Bool)

(assert (=> d!86334 (=> (not res!132490) (not e!180711))))

(assert (=> d!86334 (= res!132490 (>= 0 0))))

(assert (=> d!86334 (= (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0) lt!122753)))

(declare-fun b!290308 () Bool)

(declare-fun e!180714 () Bool)

(declare-fun lt!122762 () Option!876)

(assert (=> b!290308 (= e!180714 (= (_1!2469 (v!14826 lt!122762)) (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))))

(declare-fun b!290309 () Bool)

(declare-fun e!180713 () BalanceConc!2680)

(declare-fun call!16475 () Token!1258)

(assert (=> b!290309 (= e!180713 (charsOf!400 call!16475))))

(declare-fun bm!16466 () Bool)

(declare-fun call!16474 () Token!1258)

(assert (=> bm!16466 (= call!16474 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))

(declare-fun bm!16467 () Bool)

(declare-fun call!16472 () BalanceConc!2680)

(declare-fun call!16471 () BalanceConc!2680)

(assert (=> bm!16467 (= call!16472 call!16471)))

(declare-fun b!290310 () Bool)

(declare-fun e!180712 () BalanceConc!2680)

(declare-fun call!16473 () BalanceConc!2680)

(declare-fun lt!122754 () BalanceConc!2680)

(assert (=> b!290310 (= e!180712 (++!1060 call!16473 lt!122754))))

(declare-fun b!290311 () Bool)

(declare-fun e!180710 () Bool)

(assert (=> b!290311 (= e!180710 (not (= (_1!2469 (v!14826 lt!122762)) call!16474)))))

(declare-fun c!54987 () Bool)

(declare-fun c!54988 () Bool)

(declare-fun bm!16468 () Bool)

(assert (=> bm!16468 (= call!16471 (charsOf!400 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475))))))

(declare-fun b!290312 () Bool)

(assert (=> b!290312 (= c!54988 e!180710)))

(declare-fun res!132491 () Bool)

(assert (=> b!290312 (=> (not res!132491) (not e!180710))))

(assert (=> b!290312 (= res!132491 ((_ is Some!875) lt!122762))))

(declare-fun e!180715 () BalanceConc!2680)

(assert (=> b!290312 (= e!180715 e!180712)))

(assert (=> b!290313 (= e!180716 e!180715)))

(declare-fun lt!122765 () List!3965)

(assert (=> b!290313 (= lt!122765 (list!1658 (seqFromList!879 (t!40597 tokens!465))))))

(declare-fun lt!122755 () Unit!5362)

(assert (=> b!290313 (= lt!122755 (lemmaDropApply!224 lt!122765 0))))

(assert (=> b!290313 (= (head!934 (drop!237 lt!122765 0)) (apply!851 lt!122765 0))))

(declare-fun lt!122752 () Unit!5362)

(assert (=> b!290313 (= lt!122752 lt!122755)))

(declare-fun lt!122760 () List!3965)

(assert (=> b!290313 (= lt!122760 (list!1658 (seqFromList!879 (t!40597 tokens!465))))))

(declare-fun lt!122758 () Unit!5362)

(assert (=> b!290313 (= lt!122758 (lemmaDropTail!216 lt!122760 0))))

(assert (=> b!290313 (= (tail!516 (drop!237 lt!122760 0)) (drop!237 lt!122760 (+ 0 1)))))

(declare-fun lt!122763 () Unit!5362)

(assert (=> b!290313 (= lt!122763 lt!122758)))

(declare-fun lt!122756 () Unit!5362)

(assert (=> b!290313 (= lt!122756 (forallContained!310 (list!1658 (seqFromList!879 (t!40597 tokens!465))) lambda!9978 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))))

(assert (=> b!290313 (= lt!122754 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!290313 (= lt!122762 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))

(declare-fun res!132489 () Bool)

(assert (=> b!290313 (= res!132489 ((_ is Some!875) lt!122762))))

(assert (=> b!290313 (=> (not res!132489) (not e!180714))))

(assert (=> b!290313 (= c!54987 e!180714)))

(declare-fun bm!16469 () Bool)

(declare-fun c!54986 () Bool)

(assert (=> bm!16469 (= c!54986 c!54987)))

(assert (=> bm!16469 (= call!16473 (++!1060 e!180713 (ite c!54987 lt!122754 call!16472)))))

(declare-fun b!290314 () Bool)

(assert (=> b!290314 (= e!180716 (BalanceConc!2681 Empty!1336))))

(declare-fun b!290315 () Bool)

(assert (=> b!290315 (= e!180711 (<= 0 (size!3176 (seqFromList!879 (t!40597 tokens!465)))))))

(declare-fun b!290316 () Bool)

(assert (=> b!290316 (= e!180715 call!16473)))

(declare-fun b!290317 () Bool)

(assert (=> b!290317 (= e!180712 (BalanceConc!2681 Empty!1336))))

(assert (=> b!290317 (= (print!368 thiss!17480 (singletonSeq!303 call!16475)) (printTailRec!329 thiss!17480 (singletonSeq!303 call!16475) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!122761 () Unit!5362)

(declare-fun Unit!5372 () Unit!5362)

(assert (=> b!290317 (= lt!122761 Unit!5372)))

(declare-fun lt!122759 () Unit!5362)

(assert (=> b!290317 (= lt!122759 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 (list!1655 call!16472) (list!1655 lt!122754)))))

(assert (=> b!290317 false))

(declare-fun lt!122757 () Unit!5362)

(declare-fun Unit!5373 () Unit!5362)

(assert (=> b!290317 (= lt!122757 Unit!5373)))

(declare-fun b!290318 () Bool)

(assert (=> b!290318 (= e!180713 call!16471)))

(declare-fun bm!16470 () Bool)

(assert (=> bm!16470 (= call!16475 call!16474)))

(assert (= (and d!86334 res!132490) b!290315))

(assert (= (and d!86334 c!54985) b!290314))

(assert (= (and d!86334 (not c!54985)) b!290313))

(assert (= (and b!290313 res!132489) b!290308))

(assert (= (and b!290313 c!54987) b!290316))

(assert (= (and b!290313 (not c!54987)) b!290312))

(assert (= (and b!290312 res!132491) b!290311))

(assert (= (and b!290312 c!54988) b!290310))

(assert (= (and b!290312 (not c!54988)) b!290317))

(assert (= (or b!290310 b!290317) bm!16470))

(assert (= (or b!290310 b!290317) bm!16467))

(assert (= (or b!290316 b!290311 bm!16470) bm!16466))

(assert (= (or b!290316 bm!16467) bm!16468))

(assert (= (or b!290316 b!290310) bm!16469))

(assert (= (and bm!16469 c!54986) b!290318))

(assert (= (and bm!16469 (not c!54986)) b!290309))

(assert (=> bm!16466 m!377161))

(declare-fun m!377903 () Bool)

(assert (=> bm!16466 m!377903))

(assert (=> b!290315 m!377161))

(declare-fun m!377905 () Bool)

(assert (=> b!290315 m!377905))

(declare-fun m!377907 () Bool)

(assert (=> b!290310 m!377907))

(assert (=> b!290308 m!377161))

(assert (=> b!290308 m!377903))

(declare-fun m!377909 () Bool)

(assert (=> b!290309 m!377909))

(declare-fun m!377911 () Bool)

(assert (=> b!290313 m!377911))

(declare-fun m!377913 () Bool)

(assert (=> b!290313 m!377913))

(assert (=> b!290313 m!377161))

(declare-fun m!377915 () Bool)

(assert (=> b!290313 m!377915))

(declare-fun m!377917 () Bool)

(assert (=> b!290313 m!377917))

(declare-fun m!377919 () Bool)

(assert (=> b!290313 m!377919))

(declare-fun m!377921 () Bool)

(assert (=> b!290313 m!377921))

(assert (=> b!290313 m!377161))

(declare-fun m!377923 () Bool)

(assert (=> b!290313 m!377923))

(assert (=> b!290313 m!377903))

(declare-fun m!377925 () Bool)

(assert (=> b!290313 m!377925))

(declare-fun m!377927 () Bool)

(assert (=> b!290313 m!377927))

(declare-fun m!377929 () Bool)

(assert (=> b!290313 m!377929))

(assert (=> b!290313 m!377919))

(declare-fun m!377931 () Bool)

(assert (=> b!290313 m!377931))

(assert (=> b!290313 m!377925))

(assert (=> b!290313 m!377927))

(assert (=> b!290313 m!377161))

(assert (=> b!290313 m!377903))

(declare-fun m!377933 () Bool)

(assert (=> b!290313 m!377933))

(assert (=> b!290313 m!377911))

(declare-fun m!377935 () Bool)

(assert (=> b!290313 m!377935))

(assert (=> b!290313 m!377915))

(assert (=> b!290313 m!377903))

(declare-fun m!377937 () Bool)

(assert (=> b!290313 m!377937))

(declare-fun m!377939 () Bool)

(assert (=> bm!16469 m!377939))

(declare-fun m!377941 () Bool)

(assert (=> b!290317 m!377941))

(declare-fun m!377943 () Bool)

(assert (=> b!290317 m!377943))

(declare-fun m!377945 () Bool)

(assert (=> b!290317 m!377945))

(assert (=> b!290317 m!377943))

(assert (=> b!290317 m!377943))

(declare-fun m!377947 () Bool)

(assert (=> b!290317 m!377947))

(declare-fun m!377949 () Bool)

(assert (=> b!290317 m!377949))

(assert (=> b!290317 m!377941))

(declare-fun m!377951 () Bool)

(assert (=> b!290317 m!377951))

(assert (=> b!290317 m!377949))

(assert (=> d!86334 m!377161))

(assert (=> d!86334 m!377905))

(assert (=> d!86334 m!377161))

(assert (=> d!86334 m!377915))

(declare-fun m!377953 () Bool)

(assert (=> d!86334 m!377953))

(declare-fun m!377955 () Bool)

(assert (=> d!86334 m!377955))

(declare-fun m!377957 () Bool)

(assert (=> d!86334 m!377957))

(assert (=> d!86334 m!377161))

(assert (=> d!86334 m!377955))

(assert (=> d!86334 m!377915))

(assert (=> d!86334 m!377955))

(declare-fun m!377959 () Bool)

(assert (=> d!86334 m!377959))

(declare-fun m!377961 () Bool)

(assert (=> bm!16468 m!377961))

(assert (=> b!289859 d!86334))

(declare-fun d!86384 () Bool)

(declare-fun lt!122768 () BalanceConc!2680)

(assert (=> d!86384 (= (list!1655 lt!122768) (originalCharacters!800 separatorToken!170))))

(declare-fun dynLambda!2111 (Int TokenValue!779) BalanceConc!2680)

(assert (=> d!86384 (= lt!122768 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))))

(assert (=> d!86384 (= (charsOf!400 separatorToken!170) lt!122768)))

(declare-fun b_lambda!9693 () Bool)

(assert (=> (not b_lambda!9693) (not d!86384)))

(declare-fun t!40630 () Bool)

(declare-fun tb!16997 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) t!40630) tb!16997))

(declare-fun b!290326 () Bool)

(declare-fun e!180722 () Bool)

(declare-fun tp!105794 () Bool)

(declare-fun inv!4895 (Conc!1336) Bool)

(assert (=> b!290326 (= e!180722 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))) tp!105794))))

(declare-fun result!20846 () Bool)

(declare-fun inv!4896 (BalanceConc!2680) Bool)

(assert (=> tb!16997 (= result!20846 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))) e!180722))))

(assert (= tb!16997 b!290326))

(declare-fun m!377963 () Bool)

(assert (=> b!290326 m!377963))

(declare-fun m!377965 () Bool)

(assert (=> tb!16997 m!377965))

(assert (=> d!86384 t!40630))

(declare-fun b_and!23565 () Bool)

(assert (= b_and!23531 (and (=> t!40630 result!20846) b_and!23565)))

(declare-fun t!40632 () Bool)

(declare-fun tb!16999 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) t!40632) tb!16999))

(declare-fun result!20850 () Bool)

(assert (= result!20850 result!20846))

(assert (=> d!86384 t!40632))

(declare-fun b_and!23567 () Bool)

(assert (= b_and!23535 (and (=> t!40632 result!20850) b_and!23567)))

(declare-fun t!40634 () Bool)

(declare-fun tb!17001 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) t!40634) tb!17001))

(declare-fun result!20852 () Bool)

(assert (= result!20852 result!20846))

(assert (=> d!86384 t!40634))

(declare-fun b_and!23569 () Bool)

(assert (= b_and!23539 (and (=> t!40634 result!20852) b_and!23569)))

(declare-fun m!377967 () Bool)

(assert (=> d!86384 m!377967))

(declare-fun m!377969 () Bool)

(assert (=> d!86384 m!377969))

(assert (=> b!289859 d!86384))

(declare-fun d!86386 () Bool)

(assert (=> d!86386 (= (++!1058 (++!1058 lt!122467 lt!122461) lt!122458) (++!1058 lt!122467 (++!1058 lt!122461 lt!122458)))))

(declare-fun lt!122771 () Unit!5362)

(declare-fun choose!2608 (List!3963 List!3963 List!3963) Unit!5362)

(assert (=> d!86386 (= lt!122771 (choose!2608 lt!122467 lt!122461 lt!122458))))

(assert (=> d!86386 (= (lemmaConcatAssociativity!460 lt!122467 lt!122461 lt!122458) lt!122771)))

(declare-fun bs!32968 () Bool)

(assert (= bs!32968 d!86386))

(assert (=> bs!32968 m!377151))

(assert (=> bs!32968 m!377165))

(assert (=> bs!32968 m!377151))

(assert (=> bs!32968 m!377153))

(declare-fun m!377971 () Bool)

(assert (=> bs!32968 m!377971))

(assert (=> bs!32968 m!377165))

(declare-fun m!377973 () Bool)

(assert (=> bs!32968 m!377973))

(assert (=> b!289859 d!86386))

(declare-fun d!86388 () Bool)

(assert (=> d!86388 (= (list!1655 (charsOf!400 (h!9352 tokens!465))) (list!1659 (c!54877 (charsOf!400 (h!9352 tokens!465)))))))

(declare-fun bs!32969 () Bool)

(assert (= bs!32969 d!86388))

(declare-fun m!377975 () Bool)

(assert (=> bs!32969 m!377975))

(assert (=> b!289859 d!86388))

(declare-fun d!86390 () Bool)

(declare-fun lt!122772 () BalanceConc!2680)

(assert (=> d!86390 (= (list!1655 lt!122772) (originalCharacters!800 (h!9352 tokens!465)))))

(assert (=> d!86390 (= lt!122772 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))))

(assert (=> d!86390 (= (charsOf!400 (h!9352 tokens!465)) lt!122772)))

(declare-fun b_lambda!9695 () Bool)

(assert (=> (not b_lambda!9695) (not d!86390)))

(declare-fun tb!17003 () Bool)

(declare-fun t!40636 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465))))) t!40636) tb!17003))

(declare-fun b!290327 () Bool)

(declare-fun e!180723 () Bool)

(declare-fun tp!105795 () Bool)

(assert (=> b!290327 (= e!180723 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))) tp!105795))))

(declare-fun result!20854 () Bool)

(assert (=> tb!17003 (= result!20854 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))) e!180723))))

(assert (= tb!17003 b!290327))

(declare-fun m!377977 () Bool)

(assert (=> b!290327 m!377977))

(declare-fun m!377979 () Bool)

(assert (=> tb!17003 m!377979))

(assert (=> d!86390 t!40636))

(declare-fun b_and!23571 () Bool)

(assert (= b_and!23565 (and (=> t!40636 result!20854) b_and!23571)))

(declare-fun t!40638 () Bool)

(declare-fun tb!17005 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465))))) t!40638) tb!17005))

(declare-fun result!20856 () Bool)

(assert (= result!20856 result!20854))

(assert (=> d!86390 t!40638))

(declare-fun b_and!23573 () Bool)

(assert (= b_and!23567 (and (=> t!40638 result!20856) b_and!23573)))

(declare-fun t!40640 () Bool)

(declare-fun tb!17007 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465))))) t!40640) tb!17007))

(declare-fun result!20858 () Bool)

(assert (= result!20858 result!20854))

(assert (=> d!86390 t!40640))

(declare-fun b_and!23575 () Bool)

(assert (= b_and!23569 (and (=> t!40640 result!20858) b_and!23575)))

(declare-fun m!377981 () Bool)

(assert (=> d!86390 m!377981))

(declare-fun m!377983 () Bool)

(assert (=> d!86390 m!377983))

(assert (=> b!289859 d!86390))

(declare-fun b!290330 () Bool)

(declare-fun res!132493 () Bool)

(declare-fun e!180724 () Bool)

(assert (=> b!290330 (=> (not res!132493) (not e!180724))))

(declare-fun lt!122773 () List!3963)

(assert (=> b!290330 (= res!132493 (= (size!3175 lt!122773) (+ (size!3175 (++!1058 lt!122467 lt!122461)) (size!3175 lt!122458))))))

(declare-fun b!290328 () Bool)

(declare-fun e!180725 () List!3963)

(assert (=> b!290328 (= e!180725 lt!122458)))

(declare-fun d!86392 () Bool)

(assert (=> d!86392 e!180724))

(declare-fun res!132492 () Bool)

(assert (=> d!86392 (=> (not res!132492) (not e!180724))))

(assert (=> d!86392 (= res!132492 (= (content!585 lt!122773) ((_ map or) (content!585 (++!1058 lt!122467 lt!122461)) (content!585 lt!122458))))))

(assert (=> d!86392 (= lt!122773 e!180725)))

(declare-fun c!54989 () Bool)

(assert (=> d!86392 (= c!54989 ((_ is Nil!3953) (++!1058 lt!122467 lt!122461)))))

(assert (=> d!86392 (= (++!1058 (++!1058 lt!122467 lt!122461) lt!122458) lt!122773)))

(declare-fun b!290329 () Bool)

(assert (=> b!290329 (= e!180725 (Cons!3953 (h!9350 (++!1058 lt!122467 lt!122461)) (++!1058 (t!40595 (++!1058 lt!122467 lt!122461)) lt!122458)))))

(declare-fun b!290331 () Bool)

(assert (=> b!290331 (= e!180724 (or (not (= lt!122458 Nil!3953)) (= lt!122773 (++!1058 lt!122467 lt!122461))))))

(assert (= (and d!86392 c!54989) b!290328))

(assert (= (and d!86392 (not c!54989)) b!290329))

(assert (= (and d!86392 res!132492) b!290330))

(assert (= (and b!290330 res!132493) b!290331))

(declare-fun m!377985 () Bool)

(assert (=> b!290330 m!377985))

(assert (=> b!290330 m!377151))

(declare-fun m!377987 () Bool)

(assert (=> b!290330 m!377987))

(assert (=> b!290330 m!377497))

(declare-fun m!377989 () Bool)

(assert (=> d!86392 m!377989))

(assert (=> d!86392 m!377151))

(declare-fun m!377991 () Bool)

(assert (=> d!86392 m!377991))

(assert (=> d!86392 m!377503))

(declare-fun m!377993 () Bool)

(assert (=> b!290329 m!377993))

(assert (=> b!289859 d!86392))

(declare-fun d!86394 () Bool)

(assert (=> d!86394 (= (list!1655 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0)) (list!1659 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!32970 () Bool)

(assert (= bs!32970 d!86394))

(declare-fun m!377995 () Bool)

(assert (=> bs!32970 m!377995))

(assert (=> b!289859 d!86394))

(declare-fun b!290334 () Bool)

(declare-fun res!132495 () Bool)

(declare-fun e!180726 () Bool)

(assert (=> b!290334 (=> (not res!132495) (not e!180726))))

(declare-fun lt!122774 () List!3963)

(assert (=> b!290334 (= res!132495 (= (size!3175 lt!122774) (+ (size!3175 lt!122467) (size!3175 lt!122470))))))

(declare-fun b!290332 () Bool)

(declare-fun e!180727 () List!3963)

(assert (=> b!290332 (= e!180727 lt!122470)))

(declare-fun d!86396 () Bool)

(assert (=> d!86396 e!180726))

(declare-fun res!132494 () Bool)

(assert (=> d!86396 (=> (not res!132494) (not e!180726))))

(assert (=> d!86396 (= res!132494 (= (content!585 lt!122774) ((_ map or) (content!585 lt!122467) (content!585 lt!122470))))))

(assert (=> d!86396 (= lt!122774 e!180727)))

(declare-fun c!54990 () Bool)

(assert (=> d!86396 (= c!54990 ((_ is Nil!3953) lt!122467))))

(assert (=> d!86396 (= (++!1058 lt!122467 lt!122470) lt!122774)))

(declare-fun b!290333 () Bool)

(assert (=> b!290333 (= e!180727 (Cons!3953 (h!9350 lt!122467) (++!1058 (t!40595 lt!122467) lt!122470)))))

(declare-fun b!290335 () Bool)

(assert (=> b!290335 (= e!180726 (or (not (= lt!122470 Nil!3953)) (= lt!122774 lt!122467)))))

(assert (= (and d!86396 c!54990) b!290332))

(assert (= (and d!86396 (not c!54990)) b!290333))

(assert (= (and d!86396 res!132494) b!290334))

(assert (= (and b!290334 res!132495) b!290335))

(declare-fun m!377997 () Bool)

(assert (=> b!290334 m!377997))

(assert (=> b!290334 m!377495))

(declare-fun m!377999 () Bool)

(assert (=> b!290334 m!377999))

(declare-fun m!378001 () Bool)

(assert (=> d!86396 m!378001))

(assert (=> d!86396 m!377501))

(declare-fun m!378003 () Bool)

(assert (=> d!86396 m!378003))

(declare-fun m!378005 () Bool)

(assert (=> b!290333 m!378005))

(assert (=> b!289859 d!86396))

(declare-fun d!86398 () Bool)

(declare-fun lt!122782 () Bool)

(declare-fun e!180781 () Bool)

(assert (=> d!86398 (= lt!122782 e!180781)))

(declare-fun res!132507 () Bool)

(assert (=> d!86398 (=> (not res!132507) (not e!180781))))

(assert (=> d!86398 (= res!132507 (= (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170))))) (list!1658 (singletonSeq!303 separatorToken!170))))))

(declare-fun e!180780 () Bool)

(assert (=> d!86398 (= lt!122782 e!180780)))

(declare-fun res!132506 () Bool)

(assert (=> d!86398 (=> (not res!132506) (not e!180780))))

(declare-fun lt!122783 () tuple2!4508)

(assert (=> d!86398 (= res!132506 (= (size!3176 (_1!2470 lt!122783)) 1))))

(assert (=> d!86398 (= lt!122783 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170))))))

(assert (=> d!86398 (not (isEmpty!2627 rules!1920))))

(assert (=> d!86398 (= (rulesProduceIndividualToken!392 thiss!17480 rules!1920 separatorToken!170) lt!122782)))

(declare-fun b!290404 () Bool)

(declare-fun res!132505 () Bool)

(assert (=> b!290404 (=> (not res!132505) (not e!180780))))

(assert (=> b!290404 (= res!132505 (= (apply!850 (_1!2470 lt!122783) 0) separatorToken!170))))

(declare-fun b!290405 () Bool)

(declare-fun isEmpty!2636 (BalanceConc!2680) Bool)

(assert (=> b!290405 (= e!180780 (isEmpty!2636 (_2!2470 lt!122783)))))

(declare-fun b!290406 () Bool)

(assert (=> b!290406 (= e!180781 (isEmpty!2636 (_2!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170))))))))

(assert (= (and d!86398 res!132506) b!290404))

(assert (= (and b!290404 res!132505) b!290405))

(assert (= (and d!86398 res!132507) b!290406))

(assert (=> d!86398 m!377139))

(declare-fun m!378027 () Bool)

(assert (=> d!86398 m!378027))

(declare-fun m!378029 () Bool)

(assert (=> d!86398 m!378029))

(declare-fun m!378031 () Bool)

(assert (=> d!86398 m!378031))

(declare-fun m!378033 () Bool)

(assert (=> d!86398 m!378033))

(declare-fun m!378035 () Bool)

(assert (=> d!86398 m!378035))

(assert (=> d!86398 m!378031))

(assert (=> d!86398 m!378027))

(assert (=> d!86398 m!378031))

(declare-fun m!378037 () Bool)

(assert (=> d!86398 m!378037))

(declare-fun m!378039 () Bool)

(assert (=> b!290404 m!378039))

(declare-fun m!378041 () Bool)

(assert (=> b!290405 m!378041))

(assert (=> b!290406 m!378031))

(assert (=> b!290406 m!378031))

(assert (=> b!290406 m!378027))

(assert (=> b!290406 m!378027))

(assert (=> b!290406 m!378029))

(declare-fun m!378043 () Bool)

(assert (=> b!290406 m!378043))

(assert (=> b!289870 d!86398))

(declare-fun lt!122786 () Bool)

(declare-fun d!86406 () Bool)

(declare-fun isEmpty!2637 (List!3965) Bool)

(assert (=> d!86406 (= lt!122786 (isEmpty!2637 (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))))))

(declare-fun isEmpty!2638 (Conc!1337) Bool)

(assert (=> d!86406 (= lt!122786 (isEmpty!2638 (c!54879 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))))))

(assert (=> d!86406 (= (isEmpty!2628 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467)))) lt!122786)))

(declare-fun bs!32982 () Bool)

(assert (= bs!32982 d!86406))

(declare-fun m!378045 () Bool)

(assert (=> bs!32982 m!378045))

(assert (=> bs!32982 m!378045))

(declare-fun m!378047 () Bool)

(assert (=> bs!32982 m!378047))

(declare-fun m!378049 () Bool)

(assert (=> bs!32982 m!378049))

(assert (=> b!289871 d!86406))

(declare-fun b!290417 () Bool)

(declare-fun res!132514 () Bool)

(declare-fun e!180788 () Bool)

(assert (=> b!290417 (=> (not res!132514) (not e!180788))))

(declare-fun lt!122789 () tuple2!4508)

(declare-datatypes ((tuple2!4514 0))(
  ( (tuple2!4515 (_1!2473 List!3965) (_2!2473 List!3963)) )
))
(declare-fun lexList!229 (LexerInterface!643 List!3964 List!3963) tuple2!4514)

(assert (=> b!290417 (= res!132514 (= (list!1658 (_1!2470 lt!122789)) (_1!2473 (lexList!229 thiss!17480 rules!1920 (list!1655 (seqFromList!880 lt!122467))))))))

(declare-fun d!86408 () Bool)

(assert (=> d!86408 e!180788))

(declare-fun res!132515 () Bool)

(assert (=> d!86408 (=> (not res!132515) (not e!180788))))

(declare-fun e!180790 () Bool)

(assert (=> d!86408 (= res!132515 e!180790)))

(declare-fun c!54993 () Bool)

(assert (=> d!86408 (= c!54993 (> (size!3176 (_1!2470 lt!122789)) 0))))

(declare-fun lexTailRecV2!196 (LexerInterface!643 List!3964 BalanceConc!2680 BalanceConc!2680 BalanceConc!2680 BalanceConc!2682) tuple2!4508)

(assert (=> d!86408 (= lt!122789 (lexTailRecV2!196 thiss!17480 rules!1920 (seqFromList!880 lt!122467) (BalanceConc!2681 Empty!1336) (seqFromList!880 lt!122467) (BalanceConc!2683 Empty!1337)))))

(assert (=> d!86408 (= (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467)) lt!122789)))

(declare-fun b!290418 () Bool)

(assert (=> b!290418 (= e!180790 (= (_2!2470 lt!122789) (seqFromList!880 lt!122467)))))

(declare-fun b!290419 () Bool)

(declare-fun e!180789 () Bool)

(assert (=> b!290419 (= e!180790 e!180789)))

(declare-fun res!132516 () Bool)

(declare-fun size!3177 (BalanceConc!2680) Int)

(assert (=> b!290419 (= res!132516 (< (size!3177 (_2!2470 lt!122789)) (size!3177 (seqFromList!880 lt!122467))))))

(assert (=> b!290419 (=> (not res!132516) (not e!180789))))

(declare-fun b!290420 () Bool)

(assert (=> b!290420 (= e!180788 (= (list!1655 (_2!2470 lt!122789)) (_2!2473 (lexList!229 thiss!17480 rules!1920 (list!1655 (seqFromList!880 lt!122467))))))))

(declare-fun b!290421 () Bool)

(assert (=> b!290421 (= e!180789 (not (isEmpty!2628 (_1!2470 lt!122789))))))

(assert (= (and d!86408 c!54993) b!290419))

(assert (= (and d!86408 (not c!54993)) b!290418))

(assert (= (and b!290419 res!132516) b!290421))

(assert (= (and d!86408 res!132515) b!290417))

(assert (= (and b!290417 res!132514) b!290420))

(declare-fun m!378051 () Bool)

(assert (=> b!290420 m!378051))

(assert (=> b!290420 m!377131))

(declare-fun m!378053 () Bool)

(assert (=> b!290420 m!378053))

(assert (=> b!290420 m!378053))

(declare-fun m!378055 () Bool)

(assert (=> b!290420 m!378055))

(declare-fun m!378057 () Bool)

(assert (=> b!290419 m!378057))

(assert (=> b!290419 m!377131))

(declare-fun m!378059 () Bool)

(assert (=> b!290419 m!378059))

(declare-fun m!378061 () Bool)

(assert (=> d!86408 m!378061))

(assert (=> d!86408 m!377131))

(assert (=> d!86408 m!377131))

(declare-fun m!378063 () Bool)

(assert (=> d!86408 m!378063))

(declare-fun m!378065 () Bool)

(assert (=> b!290421 m!378065))

(declare-fun m!378067 () Bool)

(assert (=> b!290417 m!378067))

(assert (=> b!290417 m!377131))

(assert (=> b!290417 m!378053))

(assert (=> b!290417 m!378053))

(assert (=> b!290417 m!378055))

(assert (=> b!289871 d!86408))

(declare-fun d!86410 () Bool)

(assert (=> d!86410 (= (seqFromList!880 lt!122467) (fromListB!362 lt!122467))))

(declare-fun bs!32983 () Bool)

(assert (= bs!32983 d!86410))

(declare-fun m!378069 () Bool)

(assert (=> bs!32983 m!378069))

(assert (=> b!289871 d!86410))

(declare-fun d!86412 () Bool)

(declare-fun res!132521 () Bool)

(declare-fun e!180795 () Bool)

(assert (=> d!86412 (=> res!132521 e!180795)))

(assert (=> d!86412 (= res!132521 ((_ is Nil!3955) tokens!465))))

(assert (=> d!86412 (= (forall!1024 tokens!465 lambda!9951) e!180795)))

(declare-fun b!290426 () Bool)

(declare-fun e!180796 () Bool)

(assert (=> b!290426 (= e!180795 e!180796)))

(declare-fun res!132522 () Bool)

(assert (=> b!290426 (=> (not res!132522) (not e!180796))))

(assert (=> b!290426 (= res!132522 (dynLambda!2110 lambda!9951 (h!9352 tokens!465)))))

(declare-fun b!290427 () Bool)

(assert (=> b!290427 (= e!180796 (forall!1024 (t!40597 tokens!465) lambda!9951))))

(assert (= (and d!86412 (not res!132521)) b!290426))

(assert (= (and b!290426 res!132522) b!290427))

(declare-fun b_lambda!9709 () Bool)

(assert (=> (not b_lambda!9709) (not b!290426)))

(declare-fun m!378071 () Bool)

(assert (=> b!290426 m!378071))

(declare-fun m!378073 () Bool)

(assert (=> b!290427 m!378073))

(assert (=> b!289856 d!86412))

(declare-fun d!86414 () Bool)

(assert (=> d!86414 (= (list!1655 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0)) (list!1659 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0))))))

(declare-fun bs!32984 () Bool)

(assert (= bs!32984 d!86414))

(declare-fun m!378075 () Bool)

(assert (=> bs!32984 m!378075))

(assert (=> b!289877 d!86414))

(declare-fun bs!32985 () Bool)

(declare-fun d!86416 () Bool)

(assert (= bs!32985 (and d!86416 b!289852)))

(declare-fun lambda!9984 () Int)

(assert (=> bs!32985 (not (= lambda!9984 lambda!9952))))

(declare-fun bs!32986 () Bool)

(assert (= bs!32986 (and d!86416 b!289856)))

(assert (=> bs!32986 (= lambda!9984 lambda!9951)))

(declare-fun bs!32987 () Bool)

(assert (= bs!32987 (and d!86416 b!290164)))

(assert (=> bs!32987 (not (= lambda!9984 lambda!9966))))

(declare-fun bs!32988 () Bool)

(assert (= bs!32988 (and d!86416 d!86240)))

(assert (=> bs!32988 (not (= lambda!9984 lambda!9957))))

(declare-fun bs!32989 () Bool)

(assert (= bs!32989 (and d!86416 d!86334)))

(assert (=> bs!32989 (= lambda!9984 lambda!9977)))

(declare-fun bs!32990 () Bool)

(assert (= bs!32990 (and d!86416 b!290313)))

(assert (=> bs!32990 (not (= lambda!9984 lambda!9978))))

(declare-fun bs!32991 () Bool)

(declare-fun b!290433 () Bool)

(assert (= bs!32991 (and b!290433 b!289852)))

(declare-fun lambda!9985 () Int)

(assert (=> bs!32991 (= lambda!9985 lambda!9952)))

(declare-fun bs!32992 () Bool)

(assert (= bs!32992 (and b!290433 b!289856)))

(assert (=> bs!32992 (not (= lambda!9985 lambda!9951))))

(declare-fun bs!32993 () Bool)

(assert (= bs!32993 (and b!290433 b!290164)))

(assert (=> bs!32993 (= lambda!9985 lambda!9966)))

(declare-fun bs!32994 () Bool)

(assert (= bs!32994 (and b!290433 d!86240)))

(assert (=> bs!32994 (= lambda!9985 lambda!9957)))

(declare-fun bs!32995 () Bool)

(assert (= bs!32995 (and b!290433 d!86416)))

(assert (=> bs!32995 (not (= lambda!9985 lambda!9984))))

(declare-fun bs!32996 () Bool)

(assert (= bs!32996 (and b!290433 d!86334)))

(assert (=> bs!32996 (not (= lambda!9985 lambda!9977))))

(declare-fun bs!32997 () Bool)

(assert (= bs!32997 (and b!290433 b!290313)))

(assert (=> bs!32997 (= lambda!9985 lambda!9978)))

(declare-fun b!290441 () Bool)

(declare-fun e!180806 () Bool)

(assert (=> b!290441 (= e!180806 true)))

(declare-fun b!290440 () Bool)

(declare-fun e!180805 () Bool)

(assert (=> b!290440 (= e!180805 e!180806)))

(declare-fun b!290439 () Bool)

(declare-fun e!180804 () Bool)

(assert (=> b!290439 (= e!180804 e!180805)))

(assert (=> b!290433 e!180804))

(assert (= b!290440 b!290441))

(assert (= b!290439 b!290440))

(assert (= (and b!290433 ((_ is Cons!3954) rules!1920)) b!290439))

(assert (=> b!290441 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9985))))

(assert (=> b!290441 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9985))))

(assert (=> b!290433 true))

(declare-fun lt!122791 () BalanceConc!2680)

(assert (=> d!86416 (= (list!1655 lt!122791) (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (dropList!184 lt!122463 0) separatorToken!170))))

(declare-fun e!180803 () BalanceConc!2680)

(assert (=> d!86416 (= lt!122791 e!180803)))

(declare-fun c!54994 () Bool)

(assert (=> d!86416 (= c!54994 (>= 0 (size!3176 lt!122463)))))

(declare-fun lt!122802 () Unit!5362)

(assert (=> d!86416 (= lt!122802 (lemmaContentSubsetPreservesForall!128 (list!1658 lt!122463) (dropList!184 lt!122463 0) lambda!9984))))

(declare-fun e!180798 () Bool)

(assert (=> d!86416 e!180798))

(declare-fun res!132524 () Bool)

(assert (=> d!86416 (=> (not res!132524) (not e!180798))))

(assert (=> d!86416 (= res!132524 (>= 0 0))))

(assert (=> d!86416 (= (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0) lt!122791)))

(declare-fun b!290428 () Bool)

(declare-fun e!180801 () Bool)

(declare-fun lt!122800 () Option!876)

(assert (=> b!290428 (= e!180801 (= (_1!2469 (v!14826 lt!122800)) (apply!850 lt!122463 0)))))

(declare-fun b!290429 () Bool)

(declare-fun e!180800 () BalanceConc!2680)

(declare-fun call!16480 () Token!1258)

(assert (=> b!290429 (= e!180800 (charsOf!400 call!16480))))

(declare-fun bm!16471 () Bool)

(declare-fun call!16479 () Token!1258)

(assert (=> bm!16471 (= call!16479 (apply!850 lt!122463 0))))

(declare-fun bm!16472 () Bool)

(declare-fun call!16477 () BalanceConc!2680)

(declare-fun call!16476 () BalanceConc!2680)

(assert (=> bm!16472 (= call!16477 call!16476)))

(declare-fun b!290430 () Bool)

(declare-fun e!180799 () BalanceConc!2680)

(declare-fun call!16478 () BalanceConc!2680)

(declare-fun lt!122792 () BalanceConc!2680)

(assert (=> b!290430 (= e!180799 (++!1060 call!16478 lt!122792))))

(declare-fun b!290431 () Bool)

(declare-fun e!180797 () Bool)

(assert (=> b!290431 (= e!180797 (not (= (_1!2469 (v!14826 lt!122800)) call!16479)))))

(declare-fun bm!16473 () Bool)

(declare-fun c!54997 () Bool)

(declare-fun c!54996 () Bool)

(assert (=> bm!16473 (= call!16476 (charsOf!400 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480))))))

(declare-fun b!290432 () Bool)

(assert (=> b!290432 (= c!54997 e!180797)))

(declare-fun res!132525 () Bool)

(assert (=> b!290432 (=> (not res!132525) (not e!180797))))

(assert (=> b!290432 (= res!132525 ((_ is Some!875) lt!122800))))

(declare-fun e!180802 () BalanceConc!2680)

(assert (=> b!290432 (= e!180802 e!180799)))

(assert (=> b!290433 (= e!180803 e!180802)))

(declare-fun lt!122803 () List!3965)

(assert (=> b!290433 (= lt!122803 (list!1658 lt!122463))))

(declare-fun lt!122793 () Unit!5362)

(assert (=> b!290433 (= lt!122793 (lemmaDropApply!224 lt!122803 0))))

(assert (=> b!290433 (= (head!934 (drop!237 lt!122803 0)) (apply!851 lt!122803 0))))

(declare-fun lt!122790 () Unit!5362)

(assert (=> b!290433 (= lt!122790 lt!122793)))

(declare-fun lt!122798 () List!3965)

(assert (=> b!290433 (= lt!122798 (list!1658 lt!122463))))

(declare-fun lt!122796 () Unit!5362)

(assert (=> b!290433 (= lt!122796 (lemmaDropTail!216 lt!122798 0))))

(assert (=> b!290433 (= (tail!516 (drop!237 lt!122798 0)) (drop!237 lt!122798 (+ 0 1)))))

(declare-fun lt!122801 () Unit!5362)

(assert (=> b!290433 (= lt!122801 lt!122796)))

(declare-fun lt!122794 () Unit!5362)

(assert (=> b!290433 (= lt!122794 (forallContained!310 (list!1658 lt!122463) lambda!9985 (apply!850 lt!122463 0)))))

(assert (=> b!290433 (= lt!122792 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 (+ 0 1)))))

(assert (=> b!290433 (= lt!122800 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))

(declare-fun res!132523 () Bool)

(assert (=> b!290433 (= res!132523 ((_ is Some!875) lt!122800))))

(assert (=> b!290433 (=> (not res!132523) (not e!180801))))

(assert (=> b!290433 (= c!54996 e!180801)))

(declare-fun bm!16474 () Bool)

(declare-fun c!54995 () Bool)

(assert (=> bm!16474 (= c!54995 c!54996)))

(assert (=> bm!16474 (= call!16478 (++!1060 e!180800 (ite c!54996 lt!122792 call!16477)))))

(declare-fun b!290434 () Bool)

(assert (=> b!290434 (= e!180803 (BalanceConc!2681 Empty!1336))))

(declare-fun b!290435 () Bool)

(assert (=> b!290435 (= e!180798 (<= 0 (size!3176 lt!122463)))))

(declare-fun b!290436 () Bool)

(assert (=> b!290436 (= e!180802 call!16478)))

(declare-fun b!290437 () Bool)

(assert (=> b!290437 (= e!180799 (BalanceConc!2681 Empty!1336))))

(assert (=> b!290437 (= (print!368 thiss!17480 (singletonSeq!303 call!16480)) (printTailRec!329 thiss!17480 (singletonSeq!303 call!16480) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!122799 () Unit!5362)

(declare-fun Unit!5376 () Unit!5362)

(assert (=> b!290437 (= lt!122799 Unit!5376)))

(declare-fun lt!122797 () Unit!5362)

(assert (=> b!290437 (= lt!122797 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 (list!1655 call!16477) (list!1655 lt!122792)))))

(assert (=> b!290437 false))

(declare-fun lt!122795 () Unit!5362)

(declare-fun Unit!5377 () Unit!5362)

(assert (=> b!290437 (= lt!122795 Unit!5377)))

(declare-fun b!290438 () Bool)

(assert (=> b!290438 (= e!180800 call!16476)))

(declare-fun bm!16475 () Bool)

(assert (=> bm!16475 (= call!16480 call!16479)))

(assert (= (and d!86416 res!132524) b!290435))

(assert (= (and d!86416 c!54994) b!290434))

(assert (= (and d!86416 (not c!54994)) b!290433))

(assert (= (and b!290433 res!132523) b!290428))

(assert (= (and b!290433 c!54996) b!290436))

(assert (= (and b!290433 (not c!54996)) b!290432))

(assert (= (and b!290432 res!132525) b!290431))

(assert (= (and b!290432 c!54997) b!290430))

(assert (= (and b!290432 (not c!54997)) b!290437))

(assert (= (or b!290430 b!290437) bm!16475))

(assert (= (or b!290430 b!290437) bm!16472))

(assert (= (or b!290436 b!290431 bm!16475) bm!16471))

(assert (= (or b!290436 bm!16472) bm!16473))

(assert (= (or b!290436 b!290430) bm!16474))

(assert (= (and bm!16474 c!54995) b!290438))

(assert (= (and bm!16474 (not c!54995)) b!290429))

(declare-fun m!378077 () Bool)

(assert (=> bm!16471 m!378077))

(declare-fun m!378079 () Bool)

(assert (=> b!290435 m!378079))

(declare-fun m!378081 () Bool)

(assert (=> b!290430 m!378081))

(assert (=> b!290428 m!378077))

(declare-fun m!378083 () Bool)

(assert (=> b!290429 m!378083))

(declare-fun m!378085 () Bool)

(assert (=> b!290433 m!378085))

(declare-fun m!378087 () Bool)

(assert (=> b!290433 m!378087))

(assert (=> b!290433 m!377403))

(declare-fun m!378089 () Bool)

(assert (=> b!290433 m!378089))

(declare-fun m!378091 () Bool)

(assert (=> b!290433 m!378091))

(declare-fun m!378093 () Bool)

(assert (=> b!290433 m!378093))

(declare-fun m!378095 () Bool)

(assert (=> b!290433 m!378095))

(assert (=> b!290433 m!378077))

(declare-fun m!378097 () Bool)

(assert (=> b!290433 m!378097))

(declare-fun m!378099 () Bool)

(assert (=> b!290433 m!378099))

(declare-fun m!378101 () Bool)

(assert (=> b!290433 m!378101))

(assert (=> b!290433 m!378091))

(declare-fun m!378103 () Bool)

(assert (=> b!290433 m!378103))

(assert (=> b!290433 m!378097))

(assert (=> b!290433 m!378099))

(assert (=> b!290433 m!378077))

(declare-fun m!378105 () Bool)

(assert (=> b!290433 m!378105))

(assert (=> b!290433 m!378085))

(declare-fun m!378107 () Bool)

(assert (=> b!290433 m!378107))

(assert (=> b!290433 m!377403))

(assert (=> b!290433 m!378077))

(declare-fun m!378109 () Bool)

(assert (=> b!290433 m!378109))

(declare-fun m!378111 () Bool)

(assert (=> bm!16474 m!378111))

(declare-fun m!378113 () Bool)

(assert (=> b!290437 m!378113))

(declare-fun m!378115 () Bool)

(assert (=> b!290437 m!378115))

(declare-fun m!378117 () Bool)

(assert (=> b!290437 m!378117))

(assert (=> b!290437 m!378115))

(assert (=> b!290437 m!378115))

(declare-fun m!378119 () Bool)

(assert (=> b!290437 m!378119))

(declare-fun m!378121 () Bool)

(assert (=> b!290437 m!378121))

(assert (=> b!290437 m!378113))

(declare-fun m!378123 () Bool)

(assert (=> b!290437 m!378123))

(assert (=> b!290437 m!378121))

(assert (=> d!86416 m!378079))

(assert (=> d!86416 m!377403))

(declare-fun m!378125 () Bool)

(assert (=> d!86416 m!378125))

(declare-fun m!378127 () Bool)

(assert (=> d!86416 m!378127))

(declare-fun m!378129 () Bool)

(assert (=> d!86416 m!378129))

(assert (=> d!86416 m!378127))

(assert (=> d!86416 m!377403))

(assert (=> d!86416 m!378127))

(declare-fun m!378131 () Bool)

(assert (=> d!86416 m!378131))

(declare-fun m!378133 () Bool)

(assert (=> bm!16473 m!378133))

(assert (=> b!289877 d!86416))

(declare-fun bs!32998 () Bool)

(declare-fun b!290442 () Bool)

(assert (= bs!32998 (and b!290442 b!290433)))

(declare-fun lambda!9986 () Int)

(assert (=> bs!32998 (= lambda!9986 lambda!9985)))

(declare-fun bs!32999 () Bool)

(assert (= bs!32999 (and b!290442 b!289852)))

(assert (=> bs!32999 (= lambda!9986 lambda!9952)))

(declare-fun bs!33000 () Bool)

(assert (= bs!33000 (and b!290442 b!289856)))

(assert (=> bs!33000 (not (= lambda!9986 lambda!9951))))

(declare-fun bs!33001 () Bool)

(assert (= bs!33001 (and b!290442 b!290164)))

(assert (=> bs!33001 (= lambda!9986 lambda!9966)))

(declare-fun bs!33002 () Bool)

(assert (= bs!33002 (and b!290442 d!86240)))

(assert (=> bs!33002 (= lambda!9986 lambda!9957)))

(declare-fun bs!33003 () Bool)

(assert (= bs!33003 (and b!290442 d!86416)))

(assert (=> bs!33003 (not (= lambda!9986 lambda!9984))))

(declare-fun bs!33004 () Bool)

(assert (= bs!33004 (and b!290442 d!86334)))

(assert (=> bs!33004 (not (= lambda!9986 lambda!9977))))

(declare-fun bs!33005 () Bool)

(assert (= bs!33005 (and b!290442 b!290313)))

(assert (=> bs!33005 (= lambda!9986 lambda!9978)))

(declare-fun b!290454 () Bool)

(declare-fun e!180814 () Bool)

(assert (=> b!290454 (= e!180814 true)))

(declare-fun b!290453 () Bool)

(declare-fun e!180813 () Bool)

(assert (=> b!290453 (= e!180813 e!180814)))

(declare-fun b!290452 () Bool)

(declare-fun e!180812 () Bool)

(assert (=> b!290452 (= e!180812 e!180813)))

(assert (=> b!290442 e!180812))

(assert (= b!290453 b!290454))

(assert (= b!290452 b!290453))

(assert (= (and b!290442 ((_ is Cons!3954) rules!1920)) b!290452))

(assert (=> b!290454 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9986))))

(assert (=> b!290454 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9986))))

(assert (=> b!290442 true))

(declare-fun e!180811 () List!3963)

(declare-fun e!180809 () List!3963)

(assert (=> b!290442 (= e!180811 e!180809)))

(declare-fun lt!122809 () Unit!5362)

(assert (=> b!290442 (= lt!122809 (forallContained!310 tokens!465 lambda!9986 (h!9352 tokens!465)))))

(declare-fun lt!122806 () List!3963)

(assert (=> b!290442 (= lt!122806 (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (t!40597 tokens!465) separatorToken!170))))

(declare-fun lt!122807 () Option!877)

(assert (=> b!290442 (= lt!122807 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806)))))

(declare-fun c!55000 () Bool)

(assert (=> b!290442 (= c!55000 (and ((_ is Some!876) lt!122807) (= (_1!2471 (v!14827 lt!122807)) (h!9352 tokens!465))))))

(declare-fun d!86418 () Bool)

(declare-fun c!55001 () Bool)

(assert (=> d!86418 (= c!55001 ((_ is Cons!3955) tokens!465))))

(assert (=> d!86418 (= (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!180811)))

(declare-fun b!290443 () Bool)

(declare-fun e!180810 () List!3963)

(declare-fun call!16484 () List!3963)

(assert (=> b!290443 (= e!180810 (++!1058 call!16484 lt!122806))))

(declare-fun bm!16476 () Bool)

(declare-fun call!16482 () List!3963)

(declare-fun call!16483 () List!3963)

(assert (=> bm!16476 (= call!16482 call!16483)))

(declare-fun c!55002 () Bool)

(declare-fun c!54998 () Bool)

(assert (=> bm!16476 (= c!55002 c!54998)))

(declare-fun b!290444 () Bool)

(assert (=> b!290444 (= e!180809 call!16484)))

(declare-fun bm!16477 () Bool)

(declare-fun call!16485 () BalanceConc!2680)

(assert (=> bm!16477 (= call!16485 (charsOf!400 (h!9352 tokens!465)))))

(declare-fun b!290445 () Bool)

(declare-fun e!180808 () BalanceConc!2680)

(declare-fun call!16481 () BalanceConc!2680)

(assert (=> b!290445 (= e!180808 call!16481)))

(declare-fun bm!16478 () Bool)

(declare-fun c!54999 () Bool)

(assert (=> bm!16478 (= c!54999 c!55000)))

(declare-fun e!180807 () List!3963)

(assert (=> bm!16478 (= call!16484 (++!1058 e!180807 (ite c!55000 lt!122806 call!16482)))))

(declare-fun b!290446 () Bool)

(assert (=> b!290446 (= e!180810 Nil!3953)))

(assert (=> b!290446 (= (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))) (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!122805 () Unit!5362)

(declare-fun Unit!5378 () Unit!5362)

(assert (=> b!290446 (= lt!122805 Unit!5378)))

(declare-fun lt!122808 () Unit!5362)

(assert (=> b!290446 (= lt!122808 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 call!16482 lt!122806))))

(assert (=> b!290446 false))

(declare-fun lt!122804 () Unit!5362)

(declare-fun Unit!5379 () Unit!5362)

(assert (=> b!290446 (= lt!122804 Unit!5379)))

(declare-fun b!290447 () Bool)

(assert (=> b!290447 (= e!180811 Nil!3953)))

(declare-fun b!290448 () Bool)

(assert (=> b!290448 (= e!180807 (list!1655 call!16481))))

(declare-fun b!290449 () Bool)

(assert (=> b!290449 (= e!180808 (charsOf!400 separatorToken!170))))

(declare-fun bm!16479 () Bool)

(assert (=> bm!16479 (= call!16481 call!16485)))

(declare-fun b!290450 () Bool)

(assert (=> b!290450 (= c!54998 (and ((_ is Some!876) lt!122807) (not (= (_1!2471 (v!14827 lt!122807)) (h!9352 tokens!465)))))))

(assert (=> b!290450 (= e!180809 e!180810)))

(declare-fun bm!16480 () Bool)

(assert (=> bm!16480 (= call!16483 (list!1655 (ite c!55000 call!16485 e!180808)))))

(declare-fun b!290451 () Bool)

(assert (=> b!290451 (= e!180807 call!16483)))

(assert (= (and d!86418 c!55001) b!290442))

(assert (= (and d!86418 (not c!55001)) b!290447))

(assert (= (and b!290442 c!55000) b!290444))

(assert (= (and b!290442 (not c!55000)) b!290450))

(assert (= (and b!290450 c!54998) b!290443))

(assert (= (and b!290450 (not c!54998)) b!290446))

(assert (= (or b!290443 b!290446) bm!16479))

(assert (= (or b!290443 b!290446) bm!16476))

(assert (= (and bm!16476 c!55002) b!290449))

(assert (= (and bm!16476 (not c!55002)) b!290445))

(assert (= (or b!290444 bm!16479) bm!16477))

(assert (= (or b!290444 bm!16476) bm!16480))

(assert (= (or b!290444 b!290443) bm!16478))

(assert (= (and bm!16478 c!54999) b!290451))

(assert (= (and bm!16478 (not c!54999)) b!290448))

(assert (=> b!290446 m!377195))

(assert (=> b!290446 m!377195))

(declare-fun m!378135 () Bool)

(assert (=> b!290446 m!378135))

(assert (=> b!290446 m!377195))

(declare-fun m!378137 () Bool)

(assert (=> b!290446 m!378137))

(declare-fun m!378139 () Bool)

(assert (=> b!290446 m!378139))

(assert (=> bm!16477 m!377167))

(assert (=> b!290442 m!377167))

(declare-fun m!378141 () Bool)

(assert (=> b!290442 m!378141))

(assert (=> b!290442 m!377155))

(assert (=> b!290442 m!377173))

(declare-fun m!378143 () Bool)

(assert (=> b!290442 m!378143))

(assert (=> b!290442 m!378143))

(declare-fun m!378145 () Bool)

(assert (=> b!290442 m!378145))

(assert (=> b!290442 m!377167))

(assert (=> b!290442 m!377173))

(declare-fun m!378147 () Bool)

(assert (=> bm!16478 m!378147))

(declare-fun m!378149 () Bool)

(assert (=> b!290448 m!378149))

(assert (=> b!290449 m!377157))

(declare-fun m!378151 () Bool)

(assert (=> bm!16480 m!378151))

(declare-fun m!378153 () Bool)

(assert (=> b!290443 m!378153))

(assert (=> b!289877 d!86418))

(declare-fun d!86420 () Bool)

(declare-fun lt!122810 () Bool)

(declare-fun e!180816 () Bool)

(assert (=> d!86420 (= lt!122810 e!180816)))

(declare-fun res!132528 () Bool)

(assert (=> d!86420 (=> (not res!132528) (not e!180816))))

(assert (=> d!86420 (= res!132528 (= (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)))))) (list!1658 (singletonSeq!303 (h!9352 tokens!465)))))))

(declare-fun e!180815 () Bool)

(assert (=> d!86420 (= lt!122810 e!180815)))

(declare-fun res!132527 () Bool)

(assert (=> d!86420 (=> (not res!132527) (not e!180815))))

(declare-fun lt!122811 () tuple2!4508)

(assert (=> d!86420 (= res!132527 (= (size!3176 (_1!2470 lt!122811)) 1))))

(assert (=> d!86420 (= lt!122811 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)))))))

(assert (=> d!86420 (not (isEmpty!2627 rules!1920))))

(assert (=> d!86420 (= (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (h!9352 tokens!465)) lt!122810)))

(declare-fun b!290455 () Bool)

(declare-fun res!132526 () Bool)

(assert (=> b!290455 (=> (not res!132526) (not e!180815))))

(assert (=> b!290455 (= res!132526 (= (apply!850 (_1!2470 lt!122811) 0) (h!9352 tokens!465)))))

(declare-fun b!290456 () Bool)

(assert (=> b!290456 (= e!180815 (isEmpty!2636 (_2!2470 lt!122811)))))

(declare-fun b!290457 () Bool)

(assert (=> b!290457 (= e!180816 (isEmpty!2636 (_2!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)))))))))

(assert (= (and d!86420 res!132527) b!290455))

(assert (= (and b!290455 res!132526) b!290456))

(assert (= (and d!86420 res!132528) b!290457))

(assert (=> d!86420 m!377139))

(assert (=> d!86420 m!378135))

(declare-fun m!378155 () Bool)

(assert (=> d!86420 m!378155))

(assert (=> d!86420 m!377195))

(declare-fun m!378157 () Bool)

(assert (=> d!86420 m!378157))

(declare-fun m!378159 () Bool)

(assert (=> d!86420 m!378159))

(assert (=> d!86420 m!377195))

(assert (=> d!86420 m!378135))

(assert (=> d!86420 m!377195))

(declare-fun m!378161 () Bool)

(assert (=> d!86420 m!378161))

(declare-fun m!378163 () Bool)

(assert (=> b!290455 m!378163))

(declare-fun m!378165 () Bool)

(assert (=> b!290456 m!378165))

(assert (=> b!290457 m!377195))

(assert (=> b!290457 m!377195))

(assert (=> b!290457 m!378135))

(assert (=> b!290457 m!378135))

(assert (=> b!290457 m!378155))

(declare-fun m!378167 () Bool)

(assert (=> b!290457 m!378167))

(assert (=> b!289866 d!86420))

(declare-fun d!86422 () Bool)

(assert (=> d!86422 (= (isEmpty!2627 rules!1920) ((_ is Nil!3954) rules!1920))))

(assert (=> b!289867 d!86422))

(declare-fun d!86424 () Bool)

(declare-fun res!132533 () Bool)

(declare-fun e!180819 () Bool)

(assert (=> d!86424 (=> (not res!132533) (not e!180819))))

(declare-fun isEmpty!2639 (List!3963) Bool)

(assert (=> d!86424 (= res!132533 (not (isEmpty!2639 (originalCharacters!800 separatorToken!170))))))

(assert (=> d!86424 (= (inv!4891 separatorToken!170) e!180819)))

(declare-fun b!290462 () Bool)

(declare-fun res!132534 () Bool)

(assert (=> b!290462 (=> (not res!132534) (not e!180819))))

(assert (=> b!290462 (= res!132534 (= (originalCharacters!800 separatorToken!170) (list!1655 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))))))

(declare-fun b!290463 () Bool)

(assert (=> b!290463 (= e!180819 (= (size!3171 separatorToken!170) (size!3175 (originalCharacters!800 separatorToken!170))))))

(assert (= (and d!86424 res!132533) b!290462))

(assert (= (and b!290462 res!132534) b!290463))

(declare-fun b_lambda!9711 () Bool)

(assert (=> (not b_lambda!9711) (not b!290462)))

(assert (=> b!290462 t!40630))

(declare-fun b_and!23585 () Bool)

(assert (= b_and!23571 (and (=> t!40630 result!20846) b_and!23585)))

(assert (=> b!290462 t!40632))

(declare-fun b_and!23587 () Bool)

(assert (= b_and!23573 (and (=> t!40632 result!20850) b_and!23587)))

(assert (=> b!290462 t!40634))

(declare-fun b_and!23589 () Bool)

(assert (= b_and!23575 (and (=> t!40634 result!20852) b_and!23589)))

(declare-fun m!378169 () Bool)

(assert (=> d!86424 m!378169))

(assert (=> b!290462 m!377969))

(assert (=> b!290462 m!377969))

(declare-fun m!378171 () Bool)

(assert (=> b!290462 m!378171))

(declare-fun m!378173 () Bool)

(assert (=> b!290463 m!378173))

(assert (=> start!31534 d!86424))

(declare-fun d!86426 () Bool)

(declare-fun res!132539 () Bool)

(declare-fun e!180824 () Bool)

(assert (=> d!86426 (=> res!132539 e!180824)))

(assert (=> d!86426 (= res!132539 (not ((_ is Cons!3954) rules!1920)))))

(assert (=> d!86426 (= (sepAndNonSepRulesDisjointChars!346 rules!1920 rules!1920) e!180824)))

(declare-fun b!290468 () Bool)

(declare-fun e!180825 () Bool)

(assert (=> b!290468 (= e!180824 e!180825)))

(declare-fun res!132540 () Bool)

(assert (=> b!290468 (=> (not res!132540) (not e!180825))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!139 (Rule!1314 List!3964) Bool)

(assert (=> b!290468 (= res!132540 (ruleDisjointCharsFromAllFromOtherType!139 (h!9351 rules!1920) rules!1920))))

(declare-fun b!290469 () Bool)

(assert (=> b!290469 (= e!180825 (sepAndNonSepRulesDisjointChars!346 rules!1920 (t!40596 rules!1920)))))

(assert (= (and d!86426 (not res!132539)) b!290468))

(assert (= (and b!290468 res!132540) b!290469))

(declare-fun m!378175 () Bool)

(assert (=> b!290468 m!378175))

(declare-fun m!378177 () Bool)

(assert (=> b!290469 m!378177))

(assert (=> b!289868 d!86426))

(declare-fun d!86428 () Bool)

(assert (=> d!86428 (= (get!1336 lt!122469) (v!14827 lt!122469))))

(assert (=> b!289874 d!86428))

(declare-fun d!86430 () Bool)

(declare-fun isEmpty!2640 (Option!877) Bool)

(assert (=> d!86430 (= (isDefined!716 lt!122469) (not (isEmpty!2640 lt!122469)))))

(declare-fun bs!33006 () Bool)

(assert (= bs!33006 d!86430))

(declare-fun m!378179 () Bool)

(assert (=> bs!33006 m!378179))

(assert (=> b!289874 d!86430))

(declare-fun b!290488 () Bool)

(declare-fun res!132561 () Bool)

(declare-fun e!180834 () Bool)

(assert (=> b!290488 (=> (not res!132561) (not e!180834))))

(declare-fun lt!122824 () Option!877)

(assert (=> b!290488 (= res!132561 (= (++!1058 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824)))) (_2!2471 (get!1336 lt!122824))) lt!122467))))

(declare-fun call!16488 () Option!877)

(declare-fun bm!16483 () Bool)

(declare-fun maxPrefixOneRule!161 (LexerInterface!643 Rule!1314 List!3963) Option!877)

(assert (=> bm!16483 (= call!16488 (maxPrefixOneRule!161 thiss!17480 (h!9351 rules!1920) lt!122467))))

(declare-fun b!290489 () Bool)

(declare-fun res!132555 () Bool)

(assert (=> b!290489 (=> (not res!132555) (not e!180834))))

(declare-fun matchR!299 (Regex!981 List!3963) Bool)

(assert (=> b!290489 (= res!132555 (matchR!299 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))) (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))))))

(declare-fun b!290490 () Bool)

(declare-fun contains!777 (List!3964 Rule!1314) Bool)

(assert (=> b!290490 (= e!180834 (contains!777 rules!1920 (rule!1360 (_1!2471 (get!1336 lt!122824)))))))

(declare-fun b!290491 () Bool)

(declare-fun res!132559 () Bool)

(assert (=> b!290491 (=> (not res!132559) (not e!180834))))

(assert (=> b!290491 (= res!132559 (< (size!3175 (_2!2471 (get!1336 lt!122824))) (size!3175 lt!122467)))))

(declare-fun b!290492 () Bool)

(declare-fun res!132558 () Bool)

(assert (=> b!290492 (=> (not res!132558) (not e!180834))))

(assert (=> b!290492 (= res!132558 (= (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824)))) (originalCharacters!800 (_1!2471 (get!1336 lt!122824)))))))

(declare-fun b!290493 () Bool)

(declare-fun e!180833 () Option!877)

(assert (=> b!290493 (= e!180833 call!16488)))

(declare-fun b!290495 () Bool)

(declare-fun e!180832 () Bool)

(assert (=> b!290495 (= e!180832 e!180834)))

(declare-fun res!132557 () Bool)

(assert (=> b!290495 (=> (not res!132557) (not e!180834))))

(assert (=> b!290495 (= res!132557 (isDefined!716 lt!122824))))

(declare-fun b!290496 () Bool)

(declare-fun lt!122823 () Option!877)

(declare-fun lt!122826 () Option!877)

(assert (=> b!290496 (= e!180833 (ite (and ((_ is None!876) lt!122823) ((_ is None!876) lt!122826)) None!876 (ite ((_ is None!876) lt!122826) lt!122823 (ite ((_ is None!876) lt!122823) lt!122826 (ite (>= (size!3171 (_1!2471 (v!14827 lt!122823))) (size!3171 (_1!2471 (v!14827 lt!122826)))) lt!122823 lt!122826)))))))

(assert (=> b!290496 (= lt!122823 call!16488)))

(assert (=> b!290496 (= lt!122826 (maxPrefix!359 thiss!17480 (t!40596 rules!1920) lt!122467))))

(declare-fun d!86432 () Bool)

(assert (=> d!86432 e!180832))

(declare-fun res!132556 () Bool)

(assert (=> d!86432 (=> res!132556 e!180832)))

(assert (=> d!86432 (= res!132556 (isEmpty!2640 lt!122824))))

(assert (=> d!86432 (= lt!122824 e!180833)))

(declare-fun c!55005 () Bool)

(assert (=> d!86432 (= c!55005 (and ((_ is Cons!3954) rules!1920) ((_ is Nil!3954) (t!40596 rules!1920))))))

(declare-fun lt!122825 () Unit!5362)

(declare-fun lt!122822 () Unit!5362)

(assert (=> d!86432 (= lt!122825 lt!122822)))

(assert (=> d!86432 (isPrefix!421 lt!122467 lt!122467)))

(assert (=> d!86432 (= lt!122822 (lemmaIsPrefixRefl!227 lt!122467 lt!122467))))

(assert (=> d!86432 (rulesValidInductive!222 thiss!17480 rules!1920)))

(assert (=> d!86432 (= (maxPrefix!359 thiss!17480 rules!1920 lt!122467) lt!122824)))

(declare-fun b!290494 () Bool)

(declare-fun res!132560 () Bool)

(assert (=> b!290494 (=> (not res!132560) (not e!180834))))

(declare-fun apply!852 (TokenValueInjection!1330 BalanceConc!2680) TokenValue!779)

(assert (=> b!290494 (= res!132560 (= (value!25890 (_1!2471 (get!1336 lt!122824))) (apply!852 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!122824)))))))))

(assert (= (and d!86432 c!55005) b!290493))

(assert (= (and d!86432 (not c!55005)) b!290496))

(assert (= (or b!290493 b!290496) bm!16483))

(assert (= (and d!86432 (not res!132556)) b!290495))

(assert (= (and b!290495 res!132557) b!290492))

(assert (= (and b!290492 res!132558) b!290491))

(assert (= (and b!290491 res!132559) b!290488))

(assert (= (and b!290488 res!132561) b!290494))

(assert (= (and b!290494 res!132560) b!290489))

(assert (= (and b!290489 res!132555) b!290490))

(declare-fun m!378181 () Bool)

(assert (=> bm!16483 m!378181))

(declare-fun m!378183 () Bool)

(assert (=> d!86432 m!378183))

(declare-fun m!378185 () Bool)

(assert (=> d!86432 m!378185))

(declare-fun m!378187 () Bool)

(assert (=> d!86432 m!378187))

(assert (=> d!86432 m!377481))

(declare-fun m!378189 () Bool)

(assert (=> b!290489 m!378189))

(declare-fun m!378191 () Bool)

(assert (=> b!290489 m!378191))

(assert (=> b!290489 m!378191))

(declare-fun m!378193 () Bool)

(assert (=> b!290489 m!378193))

(assert (=> b!290489 m!378193))

(declare-fun m!378195 () Bool)

(assert (=> b!290489 m!378195))

(assert (=> b!290490 m!378189))

(declare-fun m!378197 () Bool)

(assert (=> b!290490 m!378197))

(assert (=> b!290488 m!378189))

(assert (=> b!290488 m!378191))

(assert (=> b!290488 m!378191))

(assert (=> b!290488 m!378193))

(assert (=> b!290488 m!378193))

(declare-fun m!378199 () Bool)

(assert (=> b!290488 m!378199))

(assert (=> b!290494 m!378189))

(declare-fun m!378201 () Bool)

(assert (=> b!290494 m!378201))

(assert (=> b!290494 m!378201))

(declare-fun m!378203 () Bool)

(assert (=> b!290494 m!378203))

(declare-fun m!378205 () Bool)

(assert (=> b!290495 m!378205))

(assert (=> b!290492 m!378189))

(assert (=> b!290492 m!378191))

(assert (=> b!290492 m!378191))

(assert (=> b!290492 m!378193))

(assert (=> b!290491 m!378189))

(declare-fun m!378207 () Bool)

(assert (=> b!290491 m!378207))

(assert (=> b!290491 m!377495))

(declare-fun m!378209 () Bool)

(assert (=> b!290496 m!378209))

(assert (=> b!289874 d!86432))

(declare-fun d!86434 () Bool)

(assert (=> d!86434 (= (inv!4888 (tag!973 (rule!1360 (h!9352 tokens!465)))) (= (mod (str.len (value!25889 (tag!973 (rule!1360 (h!9352 tokens!465))))) 2) 0))))

(assert (=> b!289875 d!86434))

(declare-fun d!86436 () Bool)

(declare-fun res!132562 () Bool)

(declare-fun e!180835 () Bool)

(assert (=> d!86436 (=> (not res!132562) (not e!180835))))

(assert (=> d!86436 (= res!132562 (semiInverseModEq!281 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465))))))))

(assert (=> d!86436 (= (inv!4892 (transformation!757 (rule!1360 (h!9352 tokens!465)))) e!180835)))

(declare-fun b!290497 () Bool)

(assert (=> b!290497 (= e!180835 (equivClasses!264 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465))))))))

(assert (= (and d!86436 res!132562) b!290497))

(declare-fun m!378211 () Bool)

(assert (=> d!86436 m!378211))

(declare-fun m!378213 () Bool)

(assert (=> b!290497 m!378213))

(assert (=> b!289875 d!86436))

(declare-fun d!86438 () Bool)

(assert (=> d!86438 (= (list!1655 (seqFromList!880 lt!122466)) (list!1659 (c!54877 (seqFromList!880 lt!122466))))))

(declare-fun bs!33007 () Bool)

(assert (= bs!33007 d!86438))

(declare-fun m!378215 () Bool)

(assert (=> bs!33007 m!378215))

(assert (=> b!289864 d!86438))

(declare-fun d!86440 () Bool)

(assert (=> d!86440 (= (seqFromList!880 lt!122466) (fromListB!362 lt!122466))))

(declare-fun bs!33008 () Bool)

(assert (= bs!33008 d!86440))

(declare-fun m!378217 () Bool)

(assert (=> bs!33008 m!378217))

(assert (=> b!289864 d!86440))

(declare-fun b!290498 () Bool)

(declare-fun e!180836 () Bool)

(assert (=> b!290498 (= e!180836 (inv!16 (value!25890 (h!9352 tokens!465))))))

(declare-fun b!290499 () Bool)

(declare-fun res!132563 () Bool)

(declare-fun e!180838 () Bool)

(assert (=> b!290499 (=> res!132563 e!180838)))

(assert (=> b!290499 (= res!132563 (not ((_ is IntegerValue!2339) (value!25890 (h!9352 tokens!465)))))))

(declare-fun e!180837 () Bool)

(assert (=> b!290499 (= e!180837 e!180838)))

(declare-fun d!86442 () Bool)

(declare-fun c!55006 () Bool)

(assert (=> d!86442 (= c!55006 ((_ is IntegerValue!2337) (value!25890 (h!9352 tokens!465))))))

(assert (=> d!86442 (= (inv!21 (value!25890 (h!9352 tokens!465))) e!180836)))

(declare-fun b!290500 () Bool)

(assert (=> b!290500 (= e!180836 e!180837)))

(declare-fun c!55007 () Bool)

(assert (=> b!290500 (= c!55007 ((_ is IntegerValue!2338) (value!25890 (h!9352 tokens!465))))))

(declare-fun b!290501 () Bool)

(assert (=> b!290501 (= e!180838 (inv!15 (value!25890 (h!9352 tokens!465))))))

(declare-fun b!290502 () Bool)

(assert (=> b!290502 (= e!180837 (inv!17 (value!25890 (h!9352 tokens!465))))))

(assert (= (and d!86442 c!55006) b!290498))

(assert (= (and d!86442 (not c!55006)) b!290500))

(assert (= (and b!290500 c!55007) b!290502))

(assert (= (and b!290500 (not c!55007)) b!290499))

(assert (= (and b!290499 (not res!132563)) b!290501))

(declare-fun m!378219 () Bool)

(assert (=> b!290498 m!378219))

(declare-fun m!378221 () Bool)

(assert (=> b!290501 m!378221))

(declare-fun m!378223 () Bool)

(assert (=> b!290502 m!378223))

(assert (=> b!289865 d!86442))

(declare-fun d!86444 () Bool)

(declare-fun res!132564 () Bool)

(declare-fun e!180839 () Bool)

(assert (=> d!86444 (=> (not res!132564) (not e!180839))))

(assert (=> d!86444 (= res!132564 (not (isEmpty!2639 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (=> d!86444 (= (inv!4891 (h!9352 tokens!465)) e!180839)))

(declare-fun b!290503 () Bool)

(declare-fun res!132565 () Bool)

(assert (=> b!290503 (=> (not res!132565) (not e!180839))))

(assert (=> b!290503 (= res!132565 (= (originalCharacters!800 (h!9352 tokens!465)) (list!1655 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))))))

(declare-fun b!290504 () Bool)

(assert (=> b!290504 (= e!180839 (= (size!3171 (h!9352 tokens!465)) (size!3175 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (= (and d!86444 res!132564) b!290503))

(assert (= (and b!290503 res!132565) b!290504))

(declare-fun b_lambda!9713 () Bool)

(assert (=> (not b_lambda!9713) (not b!290503)))

(assert (=> b!290503 t!40636))

(declare-fun b_and!23591 () Bool)

(assert (= b_and!23585 (and (=> t!40636 result!20854) b_and!23591)))

(assert (=> b!290503 t!40638))

(declare-fun b_and!23593 () Bool)

(assert (= b_and!23587 (and (=> t!40638 result!20856) b_and!23593)))

(assert (=> b!290503 t!40640))

(declare-fun b_and!23595 () Bool)

(assert (= b_and!23589 (and (=> t!40640 result!20858) b_and!23595)))

(declare-fun m!378225 () Bool)

(assert (=> d!86444 m!378225))

(assert (=> b!290503 m!377983))

(assert (=> b!290503 m!377983))

(declare-fun m!378227 () Bool)

(assert (=> b!290503 m!378227))

(declare-fun m!378229 () Bool)

(assert (=> b!290504 m!378229))

(assert (=> b!289855 d!86444))

(declare-fun b!290515 () Bool)

(declare-fun e!180842 () Bool)

(declare-fun tp_is_empty!1859 () Bool)

(assert (=> b!290515 (= e!180842 tp_is_empty!1859)))

(declare-fun b!290517 () Bool)

(declare-fun tp!105865 () Bool)

(assert (=> b!290517 (= e!180842 tp!105865)))

(declare-fun b!290518 () Bool)

(declare-fun tp!105866 () Bool)

(declare-fun tp!105863 () Bool)

(assert (=> b!290518 (= e!180842 (and tp!105866 tp!105863))))

(declare-fun b!290516 () Bool)

(declare-fun tp!105864 () Bool)

(declare-fun tp!105862 () Bool)

(assert (=> b!290516 (= e!180842 (and tp!105864 tp!105862))))

(assert (=> b!289861 (= tp!105787 e!180842)))

(assert (= (and b!289861 ((_ is ElementMatch!981) (regex!757 (h!9351 rules!1920)))) b!290515))

(assert (= (and b!289861 ((_ is Concat!1761) (regex!757 (h!9351 rules!1920)))) b!290516))

(assert (= (and b!289861 ((_ is Star!981) (regex!757 (h!9351 rules!1920)))) b!290517))

(assert (= (and b!289861 ((_ is Union!981) (regex!757 (h!9351 rules!1920)))) b!290518))

(declare-fun b!290523 () Bool)

(declare-fun e!180845 () Bool)

(declare-fun tp!105869 () Bool)

(assert (=> b!290523 (= e!180845 (and tp_is_empty!1859 tp!105869))))

(assert (=> b!289872 (= tp!105776 e!180845)))

(assert (= (and b!289872 ((_ is Cons!3953) (originalCharacters!800 separatorToken!170))) b!290523))

(declare-fun b!290524 () Bool)

(declare-fun e!180846 () Bool)

(assert (=> b!290524 (= e!180846 tp_is_empty!1859)))

(declare-fun b!290526 () Bool)

(declare-fun tp!105873 () Bool)

(assert (=> b!290526 (= e!180846 tp!105873)))

(declare-fun b!290527 () Bool)

(declare-fun tp!105874 () Bool)

(declare-fun tp!105871 () Bool)

(assert (=> b!290527 (= e!180846 (and tp!105874 tp!105871))))

(declare-fun b!290525 () Bool)

(declare-fun tp!105872 () Bool)

(declare-fun tp!105870 () Bool)

(assert (=> b!290525 (= e!180846 (and tp!105872 tp!105870))))

(assert (=> b!289858 (= tp!105778 e!180846)))

(assert (= (and b!289858 ((_ is ElementMatch!981) (regex!757 (rule!1360 separatorToken!170)))) b!290524))

(assert (= (and b!289858 ((_ is Concat!1761) (regex!757 (rule!1360 separatorToken!170)))) b!290525))

(assert (= (and b!289858 ((_ is Star!981) (regex!757 (rule!1360 separatorToken!170)))) b!290526))

(assert (= (and b!289858 ((_ is Union!981) (regex!757 (rule!1360 separatorToken!170)))) b!290527))

(declare-fun b!290530 () Bool)

(declare-fun e!180849 () Bool)

(assert (=> b!290530 (= e!180849 true)))

(declare-fun b!290529 () Bool)

(declare-fun e!180848 () Bool)

(assert (=> b!290529 (= e!180848 e!180849)))

(declare-fun b!290528 () Bool)

(declare-fun e!180847 () Bool)

(assert (=> b!290528 (= e!180847 e!180848)))

(assert (=> b!289886 e!180847))

(assert (= b!290529 b!290530))

(assert (= b!290528 b!290529))

(assert (= (and b!289886 ((_ is Cons!3954) (t!40596 rules!1920))) b!290528))

(assert (=> b!290530 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9952))))

(assert (=> b!290530 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9952))))

(declare-fun b!290531 () Bool)

(declare-fun e!180850 () Bool)

(assert (=> b!290531 (= e!180850 tp_is_empty!1859)))

(declare-fun b!290533 () Bool)

(declare-fun tp!105878 () Bool)

(assert (=> b!290533 (= e!180850 tp!105878)))

(declare-fun b!290534 () Bool)

(declare-fun tp!105879 () Bool)

(declare-fun tp!105876 () Bool)

(assert (=> b!290534 (= e!180850 (and tp!105879 tp!105876))))

(declare-fun b!290532 () Bool)

(declare-fun tp!105877 () Bool)

(declare-fun tp!105875 () Bool)

(assert (=> b!290532 (= e!180850 (and tp!105877 tp!105875))))

(assert (=> b!289875 (= tp!105777 e!180850)))

(assert (= (and b!289875 ((_ is ElementMatch!981) (regex!757 (rule!1360 (h!9352 tokens!465))))) b!290531))

(assert (= (and b!289875 ((_ is Concat!1761) (regex!757 (rule!1360 (h!9352 tokens!465))))) b!290532))

(assert (= (and b!289875 ((_ is Star!981) (regex!757 (rule!1360 (h!9352 tokens!465))))) b!290533))

(assert (= (and b!289875 ((_ is Union!981) (regex!757 (rule!1360 (h!9352 tokens!465))))) b!290534))

(declare-fun b!290535 () Bool)

(declare-fun e!180851 () Bool)

(declare-fun tp!105880 () Bool)

(assert (=> b!290535 (= e!180851 (and tp_is_empty!1859 tp!105880))))

(assert (=> b!289865 (= tp!105779 e!180851)))

(assert (= (and b!289865 ((_ is Cons!3953) (originalCharacters!800 (h!9352 tokens!465)))) b!290535))

(declare-fun b!290549 () Bool)

(declare-fun b_free!10605 () Bool)

(declare-fun b_next!10605 () Bool)

(assert (=> b!290549 (= b_free!10605 (not b_next!10605))))

(declare-fun tp!105891 () Bool)

(declare-fun b_and!23597 () Bool)

(assert (=> b!290549 (= tp!105891 b_and!23597)))

(declare-fun b_free!10607 () Bool)

(declare-fun b_next!10607 () Bool)

(assert (=> b!290549 (= b_free!10607 (not b_next!10607))))

(declare-fun t!40656 () Bool)

(declare-fun tb!17017 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) t!40656) tb!17017))

(declare-fun result!20882 () Bool)

(assert (= result!20882 result!20846))

(assert (=> d!86384 t!40656))

(declare-fun t!40658 () Bool)

(declare-fun tb!17019 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465))))) t!40658) tb!17019))

(declare-fun result!20884 () Bool)

(assert (= result!20884 result!20854))

(assert (=> d!86390 t!40658))

(assert (=> b!290462 t!40656))

(assert (=> b!290503 t!40658))

(declare-fun tp!105893 () Bool)

(declare-fun b_and!23599 () Bool)

(assert (=> b!290549 (= tp!105893 (and (=> t!40656 result!20882) (=> t!40658 result!20884) b_and!23599))))

(declare-fun e!180867 () Bool)

(assert (=> b!289855 (= tp!105785 e!180867)))

(declare-fun tp!105892 () Bool)

(declare-fun b!290546 () Bool)

(declare-fun e!180865 () Bool)

(assert (=> b!290546 (= e!180867 (and (inv!4891 (h!9352 (t!40597 tokens!465))) e!180865 tp!105892))))

(declare-fun b!290547 () Bool)

(declare-fun tp!105895 () Bool)

(declare-fun e!180869 () Bool)

(assert (=> b!290547 (= e!180865 (and (inv!21 (value!25890 (h!9352 (t!40597 tokens!465)))) e!180869 tp!105895))))

(declare-fun e!180866 () Bool)

(assert (=> b!290549 (= e!180866 (and tp!105891 tp!105893))))

(declare-fun tp!105894 () Bool)

(declare-fun b!290548 () Bool)

(assert (=> b!290548 (= e!180869 (and tp!105894 (inv!4888 (tag!973 (rule!1360 (h!9352 (t!40597 tokens!465))))) (inv!4892 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) e!180866))))

(assert (= b!290548 b!290549))

(assert (= b!290547 b!290548))

(assert (= b!290546 b!290547))

(assert (= (and b!289855 ((_ is Cons!3955) (t!40597 tokens!465))) b!290546))

(declare-fun m!378231 () Bool)

(assert (=> b!290546 m!378231))

(declare-fun m!378233 () Bool)

(assert (=> b!290547 m!378233))

(declare-fun m!378235 () Bool)

(assert (=> b!290548 m!378235))

(declare-fun m!378237 () Bool)

(assert (=> b!290548 m!378237))

(declare-fun b!290560 () Bool)

(declare-fun b_free!10609 () Bool)

(declare-fun b_next!10609 () Bool)

(assert (=> b!290560 (= b_free!10609 (not b_next!10609))))

(declare-fun tp!105906 () Bool)

(declare-fun b_and!23601 () Bool)

(assert (=> b!290560 (= tp!105906 b_and!23601)))

(declare-fun b_free!10611 () Bool)

(declare-fun b_next!10611 () Bool)

(assert (=> b!290560 (= b_free!10611 (not b_next!10611))))

(declare-fun t!40660 () Bool)

(declare-fun tb!17021 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) t!40660) tb!17021))

(declare-fun result!20888 () Bool)

(assert (= result!20888 result!20846))

(assert (=> d!86384 t!40660))

(declare-fun tb!17023 () Bool)

(declare-fun t!40662 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465))))) t!40662) tb!17023))

(declare-fun result!20890 () Bool)

(assert (= result!20890 result!20854))

(assert (=> d!86390 t!40662))

(assert (=> b!290462 t!40660))

(assert (=> b!290503 t!40662))

(declare-fun b_and!23603 () Bool)

(declare-fun tp!105905 () Bool)

(assert (=> b!290560 (= tp!105905 (and (=> t!40660 result!20888) (=> t!40662 result!20890) b_and!23603))))

(declare-fun e!180880 () Bool)

(assert (=> b!290560 (= e!180880 (and tp!105906 tp!105905))))

(declare-fun b!290559 () Bool)

(declare-fun e!180879 () Bool)

(declare-fun tp!105907 () Bool)

(assert (=> b!290559 (= e!180879 (and tp!105907 (inv!4888 (tag!973 (h!9351 (t!40596 rules!1920)))) (inv!4892 (transformation!757 (h!9351 (t!40596 rules!1920)))) e!180880))))

(declare-fun b!290558 () Bool)

(declare-fun e!180881 () Bool)

(declare-fun tp!105904 () Bool)

(assert (=> b!290558 (= e!180881 (and e!180879 tp!105904))))

(assert (=> b!289854 (= tp!105786 e!180881)))

(assert (= b!290559 b!290560))

(assert (= b!290558 b!290559))

(assert (= (and b!289854 ((_ is Cons!3954) (t!40596 rules!1920))) b!290558))

(declare-fun m!378239 () Bool)

(assert (=> b!290559 m!378239))

(declare-fun m!378241 () Bool)

(assert (=> b!290559 m!378241))

(declare-fun b_lambda!9715 () Bool)

(assert (= b_lambda!9693 (or (and b!290549 b_free!10607 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))))) (and b!289860 b_free!10595 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))))) (and b!290560 b_free!10611 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))))) (and b!289857 b_free!10591 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))))) (and b!289862 b_free!10587) b_lambda!9715)))

(declare-fun b_lambda!9717 () Bool)

(assert (= b_lambda!9711 (or (and b!290549 b_free!10607 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))))) (and b!289860 b_free!10595 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))))) (and b!290560 b_free!10611 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))))) (and b!289857 b_free!10591 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))))) (and b!289862 b_free!10587) b_lambda!9717)))

(declare-fun b_lambda!9719 () Bool)

(assert (= b_lambda!9695 (or (and b!290549 b_free!10607 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))))) (and b!289857 b_free!10591) (and b!290560 b_free!10611 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))))) (and b!289860 b_free!10595 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))))) (and b!289862 b_free!10587 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))))) b_lambda!9719)))

(declare-fun b_lambda!9721 () Bool)

(assert (= b_lambda!9709 (or b!289856 b_lambda!9721)))

(declare-fun bs!33009 () Bool)

(declare-fun d!86446 () Bool)

(assert (= bs!33009 (and d!86446 b!289856)))

(assert (=> bs!33009 (= (dynLambda!2110 lambda!9951 (h!9352 tokens!465)) (not (isSeparator!757 (rule!1360 (h!9352 tokens!465)))))))

(assert (=> b!290426 d!86446))

(declare-fun b_lambda!9723 () Bool)

(assert (= b_lambda!9685 (or b!289852 b_lambda!9723)))

(declare-fun bs!33010 () Bool)

(declare-fun d!86448 () Bool)

(assert (= bs!33010 (and d!86448 b!289852)))

(assert (=> bs!33010 (= (dynLambda!2110 lambda!9952 (h!9352 tokens!465)) (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (h!9352 tokens!465)))))

(assert (=> bs!33010 m!377127))

(assert (=> d!86304 d!86448))

(declare-fun b_lambda!9725 () Bool)

(assert (= b_lambda!9713 (or (and b!290549 b_free!10607 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))))) (and b!289857 b_free!10591) (and b!290560 b_free!10611 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))))) (and b!289860 b_free!10595 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))))) (and b!289862 b_free!10587 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))))) b_lambda!9725)))

(check-sat (not b_next!10593) (not b!290430) (not bm!16397) (not b!290001) (not b!290448) (not b!289893) (not d!86392) (not b!290101) (not b_lambda!9715) (not b!290329) (not b_next!10589) (not b!290496) (not b_lambda!9725) (not d!86384) b_and!23537 (not d!86306) (not b!290516) (not b!290170) (not b!290313) (not b!290428) b_and!23593 (not b!290532) (not b!290165) (not b!290490) (not bm!16480) (not b!290546) (not b!290463) (not bm!16425) (not bm!16468) b_and!23603 b_and!23529 (not bm!16424) (not b!290171) (not d!86430) (not b!290502) (not b!290492) (not b!290333) (not b!290533) (not b!290558) (not b_next!10595) (not d!86324) (not b!290437) (not tb!16997) (not b_next!10585) (not b!290420) (not d!86388) (not b!290063) (not b!290452) (not b!290417) (not b!290534) (not bm!16466) (not b!290310) (not b_lambda!9719) (not b!290528) (not d!86280) (not b!290308) (not b!290548) (not bm!16473) (not d!86390) (not d!86408) (not b_next!10605) (not b!290068) (not b!290405) (not d!86406) (not d!86396) (not d!86332) (not d!86320) (not b!290000) (not b!290093) (not b!290062) (not b!290168) (not b!290309) (not bm!16469) (not b!290526) (not b!290504) (not b!290517) (not b!290106) (not b!290069) (not d!86444) (not d!86310) (not b!290468) (not b!290439) (not b_next!10607) b_and!23595 (not b!290334) (not b!290442) (not b!290495) (not d!86322) (not b!290082) (not b_next!10591) (not d!86410) (not b!290096) (not b!290535) (not b!290429) (not d!86288) (not bm!16478) (not b!290498) (not b!290419) (not b!290435) (not d!86432) (not b!290315) (not b!290455) (not b!290523) (not b!290547) (not d!86414) (not b!290164) (not d!86238) (not b!290559) (not d!86314) (not b!290006) b_and!23591 (not d!86282) (not b!290017) (not b!290525) b_and!23597 (not b!290488) (not b!290020) (not d!86302) (not b!290443) (not b!290091) (not b!290456) (not b_next!10609) (not b!290179) (not b!290406) (not d!86440) (not b!290021) (not b!290072) (not bm!16471) (not d!86240) (not b!290083) (not d!86386) (not b!290064) (not d!86334) (not b_next!10611) (not tb!17003) (not b!290489) (not b_lambda!9717) tp_is_empty!1859 (not bs!33010) (not d!86438) (not b!290433) (not b!290527) (not d!86304) (not b!290421) (not d!86308) (not b!290330) (not b!290497) (not b!290491) (not d!86424) (not d!86436) (not b!290469) (not d!86394) (not b!290446) (not b!290494) (not b!290105) b_and!23601 (not d!86312) (not b!290326) (not d!86398) b_and!23599 (not b!290449) (not b!290462) b_and!23533 (not b!290518) (not b_next!10587) (not b_lambda!9721) (not b!290501) (not bm!16483) (not b!290065) (not d!86420) (not b!290427) (not b!290319) (not d!86326) (not b!290503) (not b!290317) (not bm!16474) (not bm!16477) (not b!290066) (not d!86286) (not b!290457) (not b_lambda!9723) (not b!290327) (not b!290103) (not bm!16427) (not b!290174) (not b!290404) (not b!290178) (not d!86416))
(check-sat (not b_next!10593) b_and!23593 (not b_next!10605) (not b_next!10591) (not b_next!10609) (not b_next!10611) b_and!23601 (not b_next!10587) b_and!23537 (not b_next!10589) b_and!23603 b_and!23529 (not b_next!10595) (not b_next!10585) (not b_next!10607) b_and!23595 b_and!23591 b_and!23597 b_and!23533 b_and!23599)
(get-model)

(declare-fun d!86464 () Bool)

(declare-fun e!180892 () Bool)

(assert (=> d!86464 e!180892))

(declare-fun res!132586 () Bool)

(assert (=> d!86464 (=> (not res!132586) (not e!180892))))

(declare-fun lt!122841 () BalanceConc!2682)

(assert (=> d!86464 (= res!132586 (= (list!1658 lt!122841) (t!40597 tokens!465)))))

(declare-fun fromList!191 (List!3965) Conc!1337)

(assert (=> d!86464 (= lt!122841 (BalanceConc!2683 (fromList!191 (t!40597 tokens!465))))))

(assert (=> d!86464 (= (fromListB!361 (t!40597 tokens!465)) lt!122841)))

(declare-fun b!290574 () Bool)

(assert (=> b!290574 (= e!180892 (isBalanced!379 (fromList!191 (t!40597 tokens!465))))))

(assert (= (and d!86464 res!132586) b!290574))

(declare-fun m!378301 () Bool)

(assert (=> d!86464 m!378301))

(declare-fun m!378303 () Bool)

(assert (=> d!86464 m!378303))

(assert (=> b!290574 m!378303))

(assert (=> b!290574 m!378303))

(declare-fun m!378305 () Bool)

(assert (=> b!290574 m!378305))

(assert (=> d!86322 d!86464))

(assert (=> bs!33010 d!86420))

(declare-fun d!86466 () Bool)

(declare-fun charsToInt!0 (List!3962) (_ BitVec 32))

(assert (=> d!86466 (= (inv!16 (value!25890 separatorToken!170)) (= (charsToInt!0 (text!5900 (value!25890 separatorToken!170))) (value!25881 (value!25890 separatorToken!170))))))

(declare-fun bs!33013 () Bool)

(assert (= bs!33013 d!86466))

(declare-fun m!378307 () Bool)

(assert (=> bs!33013 m!378307))

(assert (=> b!290017 d!86466))

(declare-fun d!86468 () Bool)

(declare-fun lt!122878 () Int)

(declare-fun size!3178 (List!3965) Int)

(assert (=> d!86468 (= lt!122878 (size!3178 (list!1658 (_1!2470 lt!122789))))))

(declare-fun size!3179 (Conc!1337) Int)

(assert (=> d!86468 (= lt!122878 (size!3179 (c!54879 (_1!2470 lt!122789))))))

(assert (=> d!86468 (= (size!3176 (_1!2470 lt!122789)) lt!122878)))

(declare-fun bs!33014 () Bool)

(assert (= bs!33014 d!86468))

(assert (=> bs!33014 m!378067))

(assert (=> bs!33014 m!378067))

(declare-fun m!378309 () Bool)

(assert (=> bs!33014 m!378309))

(declare-fun m!378311 () Bool)

(assert (=> bs!33014 m!378311))

(assert (=> d!86408 d!86468))

(declare-fun b!290701 () Bool)

(declare-fun e!180972 () tuple2!4508)

(assert (=> b!290701 (= e!180972 (tuple2!4509 (BalanceConc!2683 Empty!1337) (seqFromList!880 lt!122467)))))

(declare-fun lt!123032 () tuple2!4508)

(declare-fun b!290702 () Bool)

(declare-fun e!180973 () Bool)

(declare-fun lexRec!97 (LexerInterface!643 List!3964 BalanceConc!2680) tuple2!4508)

(assert (=> b!290702 (= e!180973 (= (list!1655 (_2!2470 lt!123032)) (list!1655 (_2!2470 (lexRec!97 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))))))

(declare-fun e!180971 () tuple2!4508)

(declare-fun lt!123038 () BalanceConc!2680)

(declare-fun b!290703 () Bool)

(declare-fun lt!123042 () Option!876)

(declare-fun append!102 (BalanceConc!2682 Token!1258) BalanceConc!2682)

(assert (=> b!290703 (= e!180971 (lexTailRecV2!196 thiss!17480 rules!1920 (seqFromList!880 lt!122467) lt!123038 (_2!2469 (v!14826 lt!123042)) (append!102 (BalanceConc!2683 Empty!1337) (_1!2469 (v!14826 lt!123042)))))))

(declare-fun lt!123034 () tuple2!4508)

(assert (=> b!290703 (= lt!123034 (lexRec!97 thiss!17480 rules!1920 (_2!2469 (v!14826 lt!123042))))))

(declare-fun lt!123010 () List!3963)

(assert (=> b!290703 (= lt!123010 (list!1655 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!123024 () List!3963)

(assert (=> b!290703 (= lt!123024 (list!1655 (charsOf!400 (_1!2469 (v!14826 lt!123042)))))))

(declare-fun lt!123012 () List!3963)

(assert (=> b!290703 (= lt!123012 (list!1655 (_2!2469 (v!14826 lt!123042))))))

(declare-fun lt!123035 () Unit!5362)

(assert (=> b!290703 (= lt!123035 (lemmaConcatAssociativity!460 lt!123010 lt!123024 lt!123012))))

(assert (=> b!290703 (= (++!1058 (++!1058 lt!123010 lt!123024) lt!123012) (++!1058 lt!123010 (++!1058 lt!123024 lt!123012)))))

(declare-fun lt!123013 () Unit!5362)

(assert (=> b!290703 (= lt!123013 lt!123035)))

(declare-fun lt!123037 () Option!876)

(assert (=> b!290703 (= lt!123037 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (seqFromList!880 lt!122467)))))

(declare-fun c!55050 () Bool)

(assert (=> b!290703 (= c!55050 ((_ is Some!875) lt!123037))))

(assert (=> b!290703 (= (lexRec!97 thiss!17480 rules!1920 (seqFromList!880 lt!122467)) e!180972)))

(declare-fun lt!123025 () Unit!5362)

(declare-fun Unit!5382 () Unit!5362)

(assert (=> b!290703 (= lt!123025 Unit!5382)))

(declare-fun lt!123023 () List!3965)

(assert (=> b!290703 (= lt!123023 (list!1658 (BalanceConc!2683 Empty!1337)))))

(declare-fun lt!123033 () List!3965)

(assert (=> b!290703 (= lt!123033 (Cons!3955 (_1!2469 (v!14826 lt!123042)) Nil!3955))))

(declare-fun lt!123030 () List!3965)

(assert (=> b!290703 (= lt!123030 (list!1658 (_1!2470 lt!123034)))))

(declare-fun lt!123015 () Unit!5362)

(declare-fun lemmaConcatAssociativity!461 (List!3965 List!3965 List!3965) Unit!5362)

(assert (=> b!290703 (= lt!123015 (lemmaConcatAssociativity!461 lt!123023 lt!123033 lt!123030))))

(declare-fun ++!1062 (List!3965 List!3965) List!3965)

(assert (=> b!290703 (= (++!1062 (++!1062 lt!123023 lt!123033) lt!123030) (++!1062 lt!123023 (++!1062 lt!123033 lt!123030)))))

(declare-fun lt!123029 () Unit!5362)

(assert (=> b!290703 (= lt!123029 lt!123015)))

(declare-fun lt!123020 () List!3963)

(assert (=> b!290703 (= lt!123020 (++!1058 (list!1655 (BalanceConc!2681 Empty!1336)) (list!1655 (charsOf!400 (_1!2469 (v!14826 lt!123042))))))))

(declare-fun lt!123009 () List!3963)

(assert (=> b!290703 (= lt!123009 (list!1655 (_2!2469 (v!14826 lt!123042))))))

(declare-fun lt!123017 () List!3965)

(assert (=> b!290703 (= lt!123017 (list!1658 (append!102 (BalanceConc!2683 Empty!1337) (_1!2469 (v!14826 lt!123042)))))))

(declare-fun lt!123031 () Unit!5362)

(declare-fun lemmaLexThenLexPrefix!84 (LexerInterface!643 List!3964 List!3963 List!3963 List!3965 List!3965 List!3963) Unit!5362)

(assert (=> b!290703 (= lt!123031 (lemmaLexThenLexPrefix!84 thiss!17480 rules!1920 lt!123020 lt!123009 lt!123017 (list!1658 (_1!2470 lt!123034)) (list!1655 (_2!2470 lt!123034))))))

(assert (=> b!290703 (= (lexList!229 thiss!17480 rules!1920 lt!123020) (tuple2!4515 lt!123017 Nil!3953))))

(declare-fun lt!123040 () Unit!5362)

(assert (=> b!290703 (= lt!123040 lt!123031)))

(declare-fun lt!123011 () BalanceConc!2680)

(assert (=> b!290703 (= lt!123011 (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (_1!2469 (v!14826 lt!123042)))))))

(declare-fun lt!123027 () Option!876)

(assert (=> b!290703 (= lt!123027 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 lt!123011))))

(declare-fun c!55049 () Bool)

(assert (=> b!290703 (= c!55049 ((_ is Some!875) lt!123027))))

(declare-fun e!180970 () tuple2!4508)

(assert (=> b!290703 (= (lexRec!97 thiss!17480 rules!1920 (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (_1!2469 (v!14826 lt!123042))))) e!180970)))

(declare-fun lt!123018 () Unit!5362)

(declare-fun Unit!5383 () Unit!5362)

(assert (=> b!290703 (= lt!123018 Unit!5383)))

(assert (=> b!290703 (= lt!123038 (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (_1!2469 (v!14826 lt!123042)))))))

(declare-fun lt!123026 () List!3963)

(assert (=> b!290703 (= lt!123026 (list!1655 lt!123038))))

(declare-fun lt!123039 () List!3963)

(assert (=> b!290703 (= lt!123039 (list!1655 (_2!2469 (v!14826 lt!123042))))))

(declare-fun lt!123019 () Unit!5362)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!82 (List!3963 List!3963) Unit!5362)

(assert (=> b!290703 (= lt!123019 (lemmaConcatTwoListThenFSndIsSuffix!82 lt!123026 lt!123039))))

(declare-fun isSuffix!82 (List!3963 List!3963) Bool)

(assert (=> b!290703 (isSuffix!82 lt!123039 (++!1058 lt!123026 lt!123039))))

(declare-fun lt!123041 () Unit!5362)

(assert (=> b!290703 (= lt!123041 lt!123019)))

(declare-fun d!86470 () Bool)

(assert (=> d!86470 e!180973))

(declare-fun res!132639 () Bool)

(assert (=> d!86470 (=> (not res!132639) (not e!180973))))

(assert (=> d!86470 (= res!132639 (= (list!1658 (_1!2470 lt!123032)) (list!1658 (_1!2470 (lexRec!97 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))))))

(assert (=> d!86470 (= lt!123032 e!180971)))

(declare-fun c!55051 () Bool)

(assert (=> d!86470 (= c!55051 ((_ is Some!875) lt!123042))))

(declare-fun maxPrefixZipperSequenceV2!82 (LexerInterface!643 List!3964 BalanceConc!2680 BalanceConc!2680) Option!876)

(assert (=> d!86470 (= lt!123042 (maxPrefixZipperSequenceV2!82 thiss!17480 rules!1920 (seqFromList!880 lt!122467) (seqFromList!880 lt!122467)))))

(declare-fun lt!123022 () Unit!5362)

(declare-fun lt!123028 () Unit!5362)

(assert (=> d!86470 (= lt!123022 lt!123028)))

(declare-fun lt!123036 () List!3963)

(declare-fun lt!123021 () List!3963)

(assert (=> d!86470 (isSuffix!82 lt!123036 (++!1058 lt!123021 lt!123036))))

(assert (=> d!86470 (= lt!123028 (lemmaConcatTwoListThenFSndIsSuffix!82 lt!123021 lt!123036))))

(assert (=> d!86470 (= lt!123036 (list!1655 (seqFromList!880 lt!122467)))))

(assert (=> d!86470 (= lt!123021 (list!1655 (BalanceConc!2681 Empty!1336)))))

(assert (=> d!86470 (= (lexTailRecV2!196 thiss!17480 rules!1920 (seqFromList!880 lt!122467) (BalanceConc!2681 Empty!1336) (seqFromList!880 lt!122467) (BalanceConc!2683 Empty!1337)) lt!123032)))

(declare-fun lt!123014 () tuple2!4508)

(declare-fun b!290704 () Bool)

(assert (=> b!290704 (= lt!123014 (lexRec!97 thiss!17480 rules!1920 (_2!2469 (v!14826 lt!123027))))))

(declare-fun prepend!180 (BalanceConc!2682 Token!1258) BalanceConc!2682)

(assert (=> b!290704 (= e!180970 (tuple2!4509 (prepend!180 (_1!2470 lt!123014) (_1!2469 (v!14826 lt!123027))) (_2!2470 lt!123014)))))

(declare-fun b!290705 () Bool)

(assert (=> b!290705 (= e!180970 (tuple2!4509 (BalanceConc!2683 Empty!1337) lt!123011))))

(declare-fun lt!123016 () tuple2!4508)

(declare-fun b!290706 () Bool)

(assert (=> b!290706 (= lt!123016 (lexRec!97 thiss!17480 rules!1920 (_2!2469 (v!14826 lt!123037))))))

(assert (=> b!290706 (= e!180972 (tuple2!4509 (prepend!180 (_1!2470 lt!123016) (_1!2469 (v!14826 lt!123037))) (_2!2470 lt!123016)))))

(declare-fun b!290707 () Bool)

(assert (=> b!290707 (= e!180971 (tuple2!4509 (BalanceConc!2683 Empty!1337) (seqFromList!880 lt!122467)))))

(assert (= (and d!86470 c!55051) b!290703))

(assert (= (and d!86470 (not c!55051)) b!290707))

(assert (= (and b!290703 c!55050) b!290706))

(assert (= (and b!290703 (not c!55050)) b!290701))

(assert (= (and b!290703 c!55049) b!290704))

(assert (= (and b!290703 (not c!55049)) b!290705))

(assert (= (and d!86470 res!132639) b!290702))

(declare-fun m!378551 () Bool)

(assert (=> b!290702 m!378551))

(assert (=> b!290702 m!377131))

(declare-fun m!378553 () Bool)

(assert (=> b!290702 m!378553))

(declare-fun m!378555 () Bool)

(assert (=> b!290702 m!378555))

(declare-fun m!378557 () Bool)

(assert (=> b!290704 m!378557))

(declare-fun m!378559 () Bool)

(assert (=> b!290704 m!378559))

(declare-fun m!378561 () Bool)

(assert (=> d!86470 m!378561))

(declare-fun m!378563 () Bool)

(assert (=> d!86470 m!378563))

(assert (=> d!86470 m!377131))

(assert (=> d!86470 m!378553))

(assert (=> d!86470 m!378561))

(declare-fun m!378565 () Bool)

(assert (=> d!86470 m!378565))

(declare-fun m!378567 () Bool)

(assert (=> d!86470 m!378567))

(assert (=> d!86470 m!377131))

(assert (=> d!86470 m!377131))

(declare-fun m!378569 () Bool)

(assert (=> d!86470 m!378569))

(declare-fun m!378571 () Bool)

(assert (=> d!86470 m!378571))

(assert (=> d!86470 m!377131))

(assert (=> d!86470 m!378053))

(assert (=> d!86470 m!377513))

(declare-fun m!378573 () Bool)

(assert (=> b!290703 m!378573))

(declare-fun m!378575 () Bool)

(assert (=> b!290703 m!378575))

(declare-fun m!378577 () Bool)

(assert (=> b!290703 m!378577))

(declare-fun m!378579 () Bool)

(assert (=> b!290703 m!378579))

(declare-fun m!378581 () Bool)

(assert (=> b!290703 m!378581))

(declare-fun m!378583 () Bool)

(assert (=> b!290703 m!378583))

(assert (=> b!290703 m!378575))

(assert (=> b!290703 m!377131))

(declare-fun m!378585 () Bool)

(assert (=> b!290703 m!378585))

(declare-fun m!378587 () Bool)

(assert (=> b!290703 m!378587))

(declare-fun m!378589 () Bool)

(assert (=> b!290703 m!378589))

(declare-fun m!378591 () Bool)

(assert (=> b!290703 m!378591))

(assert (=> b!290703 m!377131))

(declare-fun m!378593 () Bool)

(assert (=> b!290703 m!378593))

(assert (=> b!290703 m!378589))

(declare-fun m!378597 () Bool)

(assert (=> b!290703 m!378597))

(declare-fun m!378601 () Bool)

(assert (=> b!290703 m!378601))

(assert (=> b!290703 m!377513))

(declare-fun m!378607 () Bool)

(assert (=> b!290703 m!378607))

(declare-fun m!378611 () Bool)

(assert (=> b!290703 m!378611))

(assert (=> b!290703 m!378585))

(declare-fun m!378619 () Bool)

(assert (=> b!290703 m!378619))

(declare-fun m!378623 () Bool)

(assert (=> b!290703 m!378623))

(assert (=> b!290703 m!378579))

(declare-fun m!378627 () Bool)

(assert (=> b!290703 m!378627))

(declare-fun m!378629 () Bool)

(assert (=> b!290703 m!378629))

(declare-fun m!378631 () Bool)

(assert (=> b!290703 m!378631))

(assert (=> b!290703 m!377131))

(assert (=> b!290703 m!378553))

(declare-fun m!378635 () Bool)

(assert (=> b!290703 m!378635))

(declare-fun m!378641 () Bool)

(assert (=> b!290703 m!378641))

(declare-fun m!378643 () Bool)

(assert (=> b!290703 m!378643))

(assert (=> b!290703 m!378585))

(declare-fun m!378647 () Bool)

(assert (=> b!290703 m!378647))

(assert (=> b!290703 m!378623))

(declare-fun m!378649 () Bool)

(assert (=> b!290703 m!378649))

(assert (=> b!290703 m!378635))

(declare-fun m!378653 () Bool)

(assert (=> b!290703 m!378653))

(declare-fun m!378655 () Bool)

(assert (=> b!290703 m!378655))

(declare-fun m!378657 () Bool)

(assert (=> b!290703 m!378657))

(declare-fun m!378661 () Bool)

(assert (=> b!290703 m!378661))

(assert (=> b!290703 m!378583))

(assert (=> b!290703 m!378607))

(assert (=> b!290703 m!378583))

(assert (=> b!290703 m!378641))

(assert (=> b!290703 m!378597))

(assert (=> b!290703 m!378591))

(declare-fun m!378675 () Bool)

(assert (=> b!290703 m!378675))

(declare-fun m!378677 () Bool)

(assert (=> b!290703 m!378677))

(assert (=> b!290703 m!377513))

(declare-fun m!378681 () Bool)

(assert (=> b!290706 m!378681))

(declare-fun m!378685 () Bool)

(assert (=> b!290706 m!378685))

(assert (=> d!86408 d!86470))

(declare-fun b!290713 () Bool)

(declare-fun res!132641 () Bool)

(declare-fun e!180977 () Bool)

(assert (=> b!290713 (=> (not res!132641) (not e!180977))))

(declare-fun lt!123043 () List!3963)

(assert (=> b!290713 (= res!132641 (= (size!3175 lt!123043) (+ (size!3175 call!16484) (size!3175 lt!122806))))))

(declare-fun b!290711 () Bool)

(declare-fun e!180978 () List!3963)

(assert (=> b!290711 (= e!180978 lt!122806)))

(declare-fun d!86534 () Bool)

(assert (=> d!86534 e!180977))

(declare-fun res!132640 () Bool)

(assert (=> d!86534 (=> (not res!132640) (not e!180977))))

(assert (=> d!86534 (= res!132640 (= (content!585 lt!123043) ((_ map or) (content!585 call!16484) (content!585 lt!122806))))))

(assert (=> d!86534 (= lt!123043 e!180978)))

(declare-fun c!55052 () Bool)

(assert (=> d!86534 (= c!55052 ((_ is Nil!3953) call!16484))))

(assert (=> d!86534 (= (++!1058 call!16484 lt!122806) lt!123043)))

(declare-fun b!290712 () Bool)

(assert (=> b!290712 (= e!180978 (Cons!3953 (h!9350 call!16484) (++!1058 (t!40595 call!16484) lt!122806)))))

(declare-fun b!290714 () Bool)

(assert (=> b!290714 (= e!180977 (or (not (= lt!122806 Nil!3953)) (= lt!123043 call!16484)))))

(assert (= (and d!86534 c!55052) b!290711))

(assert (= (and d!86534 (not c!55052)) b!290712))

(assert (= (and d!86534 res!132640) b!290713))

(assert (= (and b!290713 res!132641) b!290714))

(declare-fun m!378695 () Bool)

(assert (=> b!290713 m!378695))

(declare-fun m!378697 () Bool)

(assert (=> b!290713 m!378697))

(declare-fun m!378699 () Bool)

(assert (=> b!290713 m!378699))

(declare-fun m!378701 () Bool)

(assert (=> d!86534 m!378701))

(declare-fun m!378703 () Bool)

(assert (=> d!86534 m!378703))

(declare-fun m!378705 () Bool)

(assert (=> d!86534 m!378705))

(declare-fun m!378707 () Bool)

(assert (=> b!290712 m!378707))

(assert (=> b!290443 d!86534))

(declare-fun d!86538 () Bool)

(assert (=> d!86538 (= (list!1655 lt!122562) (list!1659 (c!54877 lt!122562)))))

(declare-fun bs!33054 () Bool)

(assert (= bs!33054 d!86538))

(declare-fun m!378709 () Bool)

(assert (=> bs!33054 m!378709))

(assert (=> d!86308 d!86538))

(declare-fun d!86540 () Bool)

(declare-fun c!55057 () Bool)

(assert (=> d!86540 (= c!55057 ((_ is Cons!3955) (list!1658 lt!122472)))))

(declare-fun e!180984 () List!3963)

(assert (=> d!86540 (= (printList!317 thiss!17480 (list!1658 lt!122472)) e!180984)))

(declare-fun b!290724 () Bool)

(assert (=> b!290724 (= e!180984 (++!1058 (list!1655 (charsOf!400 (h!9352 (list!1658 lt!122472)))) (printList!317 thiss!17480 (t!40597 (list!1658 lt!122472)))))))

(declare-fun b!290725 () Bool)

(assert (=> b!290725 (= e!180984 Nil!3953)))

(assert (= (and d!86540 c!55057) b!290724))

(assert (= (and d!86540 (not c!55057)) b!290725))

(declare-fun m!378717 () Bool)

(assert (=> b!290724 m!378717))

(assert (=> b!290724 m!378717))

(declare-fun m!378719 () Bool)

(assert (=> b!290724 m!378719))

(declare-fun m!378721 () Bool)

(assert (=> b!290724 m!378721))

(assert (=> b!290724 m!378719))

(assert (=> b!290724 m!378721))

(declare-fun m!378723 () Bool)

(assert (=> b!290724 m!378723))

(assert (=> d!86308 d!86540))

(declare-fun d!86544 () Bool)

(declare-fun list!1661 (Conc!1337) List!3965)

(assert (=> d!86544 (= (list!1658 lt!122472) (list!1661 (c!54879 lt!122472)))))

(declare-fun bs!33055 () Bool)

(assert (= bs!33055 d!86544))

(declare-fun m!378743 () Bool)

(assert (=> bs!33055 m!378743))

(assert (=> d!86308 d!86544))

(assert (=> d!86308 d!86310))

(declare-fun d!86546 () Bool)

(declare-fun lt!123050 () Bool)

(declare-fun content!586 (List!3964) (InoxSet Rule!1314))

(assert (=> d!86546 (= lt!123050 (select (content!586 rules!1920) (rule!1360 (_1!2471 (get!1336 lt!122824)))))))

(declare-fun e!180994 () Bool)

(assert (=> d!86546 (= lt!123050 e!180994)))

(declare-fun res!132653 () Bool)

(assert (=> d!86546 (=> (not res!132653) (not e!180994))))

(assert (=> d!86546 (= res!132653 ((_ is Cons!3954) rules!1920))))

(assert (=> d!86546 (= (contains!777 rules!1920 (rule!1360 (_1!2471 (get!1336 lt!122824)))) lt!123050)))

(declare-fun b!290740 () Bool)

(declare-fun e!180995 () Bool)

(assert (=> b!290740 (= e!180994 e!180995)))

(declare-fun res!132654 () Bool)

(assert (=> b!290740 (=> res!132654 e!180995)))

(assert (=> b!290740 (= res!132654 (= (h!9351 rules!1920) (rule!1360 (_1!2471 (get!1336 lt!122824)))))))

(declare-fun b!290741 () Bool)

(assert (=> b!290741 (= e!180995 (contains!777 (t!40596 rules!1920) (rule!1360 (_1!2471 (get!1336 lt!122824)))))))

(assert (= (and d!86546 res!132653) b!290740))

(assert (= (and b!290740 (not res!132654)) b!290741))

(declare-fun m!378747 () Bool)

(assert (=> d!86546 m!378747))

(declare-fun m!378749 () Bool)

(assert (=> d!86546 m!378749))

(declare-fun m!378751 () Bool)

(assert (=> b!290741 m!378751))

(assert (=> b!290490 d!86546))

(declare-fun d!86550 () Bool)

(assert (=> d!86550 (= (get!1336 lt!122824) (v!14827 lt!122824))))

(assert (=> b!290490 d!86550))

(declare-fun d!86552 () Bool)

(declare-fun res!132655 () Bool)

(declare-fun e!180996 () Bool)

(assert (=> d!86552 (=> res!132655 e!180996)))

(assert (=> d!86552 (= res!132655 ((_ is Nil!3955) (list!1658 lt!122463)))))

(assert (=> d!86552 (= (forall!1024 (list!1658 lt!122463) lambda!9957) e!180996)))

(declare-fun b!290742 () Bool)

(declare-fun e!180997 () Bool)

(assert (=> b!290742 (= e!180996 e!180997)))

(declare-fun res!132656 () Bool)

(assert (=> b!290742 (=> (not res!132656) (not e!180997))))

(assert (=> b!290742 (= res!132656 (dynLambda!2110 lambda!9957 (h!9352 (list!1658 lt!122463))))))

(declare-fun b!290743 () Bool)

(assert (=> b!290743 (= e!180997 (forall!1024 (t!40597 (list!1658 lt!122463)) lambda!9957))))

(assert (= (and d!86552 (not res!132655)) b!290742))

(assert (= (and b!290742 res!132656) b!290743))

(declare-fun b_lambda!9737 () Bool)

(assert (=> (not b_lambda!9737) (not b!290742)))

(declare-fun m!378753 () Bool)

(assert (=> b!290742 m!378753))

(declare-fun m!378755 () Bool)

(assert (=> b!290743 m!378755))

(assert (=> d!86240 d!86552))

(declare-fun d!86554 () Bool)

(assert (=> d!86554 (= (list!1658 lt!122463) (list!1661 (c!54879 lt!122463)))))

(declare-fun bs!33056 () Bool)

(assert (= bs!33056 d!86554))

(declare-fun m!378757 () Bool)

(assert (=> bs!33056 m!378757))

(assert (=> d!86240 d!86554))

(declare-fun d!86556 () Bool)

(declare-fun lt!123055 () Bool)

(assert (=> d!86556 (= lt!123055 (forall!1024 (list!1658 lt!122463) lambda!9957))))

(declare-fun forall!1028 (Conc!1337 Int) Bool)

(assert (=> d!86556 (= lt!123055 (forall!1028 (c!54879 lt!122463) lambda!9957))))

(assert (=> d!86556 (= (forall!1025 lt!122463 lambda!9957) lt!123055)))

(declare-fun bs!33057 () Bool)

(assert (= bs!33057 d!86556))

(assert (=> bs!33057 m!377403))

(assert (=> bs!33057 m!377403))

(assert (=> bs!33057 m!377405))

(declare-fun m!378777 () Bool)

(assert (=> bs!33057 m!378777))

(assert (=> d!86240 d!86556))

(assert (=> d!86240 d!86422))

(declare-fun d!86564 () Bool)

(declare-fun c!55067 () Bool)

(assert (=> d!86564 (= c!55067 ((_ is Nil!3953) lt!122559))))

(declare-fun e!181008 () (InoxSet C!2884))

(assert (=> d!86564 (= (content!585 lt!122559) e!181008)))

(declare-fun b!290761 () Bool)

(assert (=> b!290761 (= e!181008 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!290762 () Bool)

(assert (=> b!290762 (= e!181008 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122559) true) (content!585 (t!40595 lt!122559))))))

(assert (= (and d!86564 c!55067) b!290761))

(assert (= (and d!86564 (not c!55067)) b!290762))

(declare-fun m!378787 () Bool)

(assert (=> b!290762 m!378787))

(declare-fun m!378789 () Bool)

(assert (=> b!290762 m!378789))

(assert (=> d!86306 d!86564))

(declare-fun d!86570 () Bool)

(declare-fun c!55068 () Bool)

(assert (=> d!86570 (= c!55068 ((_ is Nil!3953) lt!122467))))

(declare-fun e!181009 () (InoxSet C!2884))

(assert (=> d!86570 (= (content!585 lt!122467) e!181009)))

(declare-fun b!290763 () Bool)

(assert (=> b!290763 (= e!181009 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!290764 () Bool)

(assert (=> b!290764 (= e!181009 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122467) true) (content!585 (t!40595 lt!122467))))))

(assert (= (and d!86570 c!55068) b!290763))

(assert (= (and d!86570 (not c!55068)) b!290764))

(declare-fun m!378791 () Bool)

(assert (=> b!290764 m!378791))

(declare-fun m!378793 () Bool)

(assert (=> b!290764 m!378793))

(assert (=> d!86306 d!86570))

(declare-fun d!86572 () Bool)

(declare-fun c!55069 () Bool)

(assert (=> d!86572 (= c!55069 ((_ is Nil!3953) lt!122458))))

(declare-fun e!181010 () (InoxSet C!2884))

(assert (=> d!86572 (= (content!585 lt!122458) e!181010)))

(declare-fun b!290765 () Bool)

(assert (=> b!290765 (= e!181010 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!290766 () Bool)

(assert (=> b!290766 (= e!181010 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122458) true) (content!585 (t!40595 lt!122458))))))

(assert (= (and d!86572 c!55069) b!290765))

(assert (= (and d!86572 (not c!55069)) b!290766))

(declare-fun m!378795 () Bool)

(assert (=> b!290766 m!378795))

(declare-fun m!378797 () Bool)

(assert (=> b!290766 m!378797))

(assert (=> d!86306 d!86572))

(declare-fun b!290769 () Bool)

(declare-fun res!132660 () Bool)

(declare-fun e!181011 () Bool)

(assert (=> b!290769 (=> (not res!132660) (not e!181011))))

(declare-fun lt!123057 () List!3963)

(assert (=> b!290769 (= res!132660 (= (size!3175 lt!123057) (+ (size!3175 (t!40595 lt!122461)) (size!3175 lt!122458))))))

(declare-fun b!290767 () Bool)

(declare-fun e!181012 () List!3963)

(assert (=> b!290767 (= e!181012 lt!122458)))

(declare-fun d!86574 () Bool)

(assert (=> d!86574 e!181011))

(declare-fun res!132659 () Bool)

(assert (=> d!86574 (=> (not res!132659) (not e!181011))))

(assert (=> d!86574 (= res!132659 (= (content!585 lt!123057) ((_ map or) (content!585 (t!40595 lt!122461)) (content!585 lt!122458))))))

(assert (=> d!86574 (= lt!123057 e!181012)))

(declare-fun c!55070 () Bool)

(assert (=> d!86574 (= c!55070 ((_ is Nil!3953) (t!40595 lt!122461)))))

(assert (=> d!86574 (= (++!1058 (t!40595 lt!122461) lt!122458) lt!123057)))

(declare-fun b!290768 () Bool)

(assert (=> b!290768 (= e!181012 (Cons!3953 (h!9350 (t!40595 lt!122461)) (++!1058 (t!40595 (t!40595 lt!122461)) lt!122458)))))

(declare-fun b!290770 () Bool)

(assert (=> b!290770 (= e!181011 (or (not (= lt!122458 Nil!3953)) (= lt!123057 (t!40595 lt!122461))))))

(assert (= (and d!86574 c!55070) b!290767))

(assert (= (and d!86574 (not c!55070)) b!290768))

(assert (= (and d!86574 res!132659) b!290769))

(assert (= (and b!290769 res!132660) b!290770))

(declare-fun m!378799 () Bool)

(assert (=> b!290769 m!378799))

(declare-fun m!378801 () Bool)

(assert (=> b!290769 m!378801))

(assert (=> b!290769 m!377497))

(declare-fun m!378803 () Bool)

(assert (=> d!86574 m!378803))

(declare-fun m!378805 () Bool)

(assert (=> d!86574 m!378805))

(assert (=> d!86574 m!377503))

(declare-fun m!378807 () Bool)

(assert (=> b!290768 m!378807))

(assert (=> b!290105 d!86574))

(declare-fun d!86576 () Bool)

(declare-fun lt!123063 () Bool)

(assert (=> d!86576 (= lt!123063 (isEmpty!2639 (list!1655 (_2!2470 lt!122811))))))

(declare-fun isEmpty!2641 (Conc!1336) Bool)

(assert (=> d!86576 (= lt!123063 (isEmpty!2641 (c!54877 (_2!2470 lt!122811))))))

(assert (=> d!86576 (= (isEmpty!2636 (_2!2470 lt!122811)) lt!123063)))

(declare-fun bs!33058 () Bool)

(assert (= bs!33058 d!86576))

(declare-fun m!378811 () Bool)

(assert (=> bs!33058 m!378811))

(assert (=> bs!33058 m!378811))

(declare-fun m!378813 () Bool)

(assert (=> bs!33058 m!378813))

(declare-fun m!378815 () Bool)

(assert (=> bs!33058 m!378815))

(assert (=> b!290456 d!86576))

(assert (=> b!290494 d!86550))

(declare-fun d!86580 () Bool)

(declare-fun dynLambda!2112 (Int BalanceConc!2680) TokenValue!779)

(assert (=> d!86580 (= (apply!852 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!122824))))) (dynLambda!2112 (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!122824))))))))

(declare-fun b_lambda!9741 () Bool)

(assert (=> (not b_lambda!9741) (not d!86580)))

(declare-fun t!40707 () Bool)

(declare-fun tb!17065 () Bool)

(assert (=> (and b!289857 (= (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40707) tb!17065))

(declare-fun result!20932 () Bool)

(assert (=> tb!17065 (= result!20932 (inv!21 (dynLambda!2112 (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!122824)))))))))

(declare-fun m!378817 () Bool)

(assert (=> tb!17065 m!378817))

(assert (=> d!86580 t!40707))

(declare-fun b_and!23645 () Bool)

(assert (= b_and!23533 (and (=> t!40707 result!20932) b_and!23645)))

(declare-fun t!40709 () Bool)

(declare-fun tb!17067 () Bool)

(assert (=> (and b!289860 (= (toValue!1508 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40709) tb!17067))

(declare-fun result!20936 () Bool)

(assert (= result!20936 result!20932))

(assert (=> d!86580 t!40709))

(declare-fun b_and!23647 () Bool)

(assert (= b_and!23537 (and (=> t!40709 result!20936) b_and!23647)))

(declare-fun t!40711 () Bool)

(declare-fun tb!17069 () Bool)

(assert (=> (and b!290560 (= (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40711) tb!17069))

(declare-fun result!20938 () Bool)

(assert (= result!20938 result!20932))

(assert (=> d!86580 t!40711))

(declare-fun b_and!23649 () Bool)

(assert (= b_and!23601 (and (=> t!40711 result!20938) b_and!23649)))

(declare-fun tb!17071 () Bool)

(declare-fun t!40713 () Bool)

(assert (=> (and b!290549 (= (toValue!1508 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40713) tb!17071))

(declare-fun result!20940 () Bool)

(assert (= result!20940 result!20932))

(assert (=> d!86580 t!40713))

(declare-fun b_and!23651 () Bool)

(assert (= b_and!23597 (and (=> t!40713 result!20940) b_and!23651)))

(declare-fun tb!17073 () Bool)

(declare-fun t!40715 () Bool)

(assert (=> (and b!289862 (= (toValue!1508 (transformation!757 (rule!1360 separatorToken!170))) (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40715) tb!17073))

(declare-fun result!20942 () Bool)

(assert (= result!20942 result!20932))

(assert (=> d!86580 t!40715))

(declare-fun b_and!23653 () Bool)

(assert (= b_and!23529 (and (=> t!40715 result!20942) b_and!23653)))

(assert (=> d!86580 m!378201))

(declare-fun m!378821 () Bool)

(assert (=> d!86580 m!378821))

(assert (=> b!290494 d!86580))

(declare-fun d!86584 () Bool)

(assert (=> d!86584 (= (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!122824)))) (fromListB!362 (originalCharacters!800 (_1!2471 (get!1336 lt!122824)))))))

(declare-fun bs!33059 () Bool)

(assert (= bs!33059 d!86584))

(declare-fun m!378823 () Bool)

(assert (=> bs!33059 m!378823))

(assert (=> b!290494 d!86584))

(declare-fun d!86586 () Bool)

(declare-fun lt!123069 () Int)

(assert (=> d!86586 (>= lt!123069 0)))

(declare-fun e!181024 () Int)

(assert (=> d!86586 (= lt!123069 e!181024)))

(declare-fun c!55073 () Bool)

(assert (=> d!86586 (= c!55073 ((_ is Nil!3953) lt!122774))))

(assert (=> d!86586 (= (size!3175 lt!122774) lt!123069)))

(declare-fun b!290783 () Bool)

(assert (=> b!290783 (= e!181024 0)))

(declare-fun b!290784 () Bool)

(assert (=> b!290784 (= e!181024 (+ 1 (size!3175 (t!40595 lt!122774))))))

(assert (= (and d!86586 c!55073) b!290783))

(assert (= (and d!86586 (not c!55073)) b!290784))

(declare-fun m!378825 () Bool)

(assert (=> b!290784 m!378825))

(assert (=> b!290334 d!86586))

(declare-fun d!86588 () Bool)

(declare-fun lt!123070 () Int)

(assert (=> d!86588 (>= lt!123070 0)))

(declare-fun e!181025 () Int)

(assert (=> d!86588 (= lt!123070 e!181025)))

(declare-fun c!55074 () Bool)

(assert (=> d!86588 (= c!55074 ((_ is Nil!3953) lt!122467))))

(assert (=> d!86588 (= (size!3175 lt!122467) lt!123070)))

(declare-fun b!290785 () Bool)

(assert (=> b!290785 (= e!181025 0)))

(declare-fun b!290786 () Bool)

(assert (=> b!290786 (= e!181025 (+ 1 (size!3175 (t!40595 lt!122467))))))

(assert (= (and d!86588 c!55074) b!290785))

(assert (= (and d!86588 (not c!55074)) b!290786))

(declare-fun m!378827 () Bool)

(assert (=> b!290786 m!378827))

(assert (=> b!290334 d!86588))

(declare-fun d!86590 () Bool)

(declare-fun lt!123071 () Int)

(assert (=> d!86590 (>= lt!123071 0)))

(declare-fun e!181026 () Int)

(assert (=> d!86590 (= lt!123071 e!181026)))

(declare-fun c!55075 () Bool)

(assert (=> d!86590 (= c!55075 ((_ is Nil!3953) lt!122470))))

(assert (=> d!86590 (= (size!3175 lt!122470) lt!123071)))

(declare-fun b!290787 () Bool)

(assert (=> b!290787 (= e!181026 0)))

(declare-fun b!290788 () Bool)

(assert (=> b!290788 (= e!181026 (+ 1 (size!3175 (t!40595 lt!122470))))))

(assert (= (and d!86590 c!55075) b!290787))

(assert (= (and d!86590 (not c!55075)) b!290788))

(declare-fun m!378829 () Bool)

(assert (=> b!290788 m!378829))

(assert (=> b!290334 d!86590))

(declare-fun d!86592 () Bool)

(assert (=> d!86592 (= (list!1655 call!16477) (list!1659 (c!54877 call!16477)))))

(declare-fun bs!33060 () Bool)

(assert (= bs!33060 d!86592))

(declare-fun m!378831 () Bool)

(assert (=> bs!33060 m!378831))

(assert (=> b!290437 d!86592))

(declare-fun d!86594 () Bool)

(assert (=> d!86594 (= (list!1655 lt!122792) (list!1659 (c!54877 lt!122792)))))

(declare-fun bs!33061 () Bool)

(assert (= bs!33061 d!86594))

(declare-fun m!378833 () Bool)

(assert (=> bs!33061 m!378833))

(assert (=> b!290437 d!86594))

(declare-fun d!86596 () Bool)

(declare-fun e!181031 () Bool)

(assert (=> d!86596 e!181031))

(declare-fun res!132679 () Bool)

(assert (=> d!86596 (=> (not res!132679) (not e!181031))))

(declare-fun lt!123072 () BalanceConc!2682)

(assert (=> d!86596 (= res!132679 (= (list!1658 lt!123072) (Cons!3955 call!16480 Nil!3955)))))

(assert (=> d!86596 (= lt!123072 (singleton!134 call!16480))))

(assert (=> d!86596 (= (singletonSeq!303 call!16480) lt!123072)))

(declare-fun b!290801 () Bool)

(assert (=> b!290801 (= e!181031 (isBalanced!379 (c!54879 lt!123072)))))

(assert (= (and d!86596 res!132679) b!290801))

(declare-fun m!378835 () Bool)

(assert (=> d!86596 m!378835))

(declare-fun m!378837 () Bool)

(assert (=> d!86596 m!378837))

(declare-fun m!378839 () Bool)

(assert (=> b!290801 m!378839))

(assert (=> b!290437 d!86596))

(declare-fun d!86598 () Bool)

(declare-fun lt!123074 () BalanceConc!2680)

(assert (=> d!86598 (= (list!1655 lt!123074) (printListTailRec!150 thiss!17480 (dropList!184 (singletonSeq!303 call!16480) 0) (list!1655 (BalanceConc!2681 Empty!1336))))))

(declare-fun e!181032 () BalanceConc!2680)

(assert (=> d!86598 (= lt!123074 e!181032)))

(declare-fun c!55076 () Bool)

(assert (=> d!86598 (= c!55076 (>= 0 (size!3176 (singletonSeq!303 call!16480))))))

(declare-fun e!181033 () Bool)

(assert (=> d!86598 e!181033))

(declare-fun res!132680 () Bool)

(assert (=> d!86598 (=> (not res!132680) (not e!181033))))

(assert (=> d!86598 (= res!132680 (>= 0 0))))

(assert (=> d!86598 (= (printTailRec!329 thiss!17480 (singletonSeq!303 call!16480) 0 (BalanceConc!2681 Empty!1336)) lt!123074)))

(declare-fun b!290802 () Bool)

(assert (=> b!290802 (= e!181033 (<= 0 (size!3176 (singletonSeq!303 call!16480))))))

(declare-fun b!290803 () Bool)

(assert (=> b!290803 (= e!181032 (BalanceConc!2681 Empty!1336))))

(declare-fun b!290804 () Bool)

(assert (=> b!290804 (= e!181032 (printTailRec!329 thiss!17480 (singletonSeq!303 call!16480) (+ 0 1) (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 (singletonSeq!303 call!16480) 0)))))))

(declare-fun lt!123076 () List!3965)

(assert (=> b!290804 (= lt!123076 (list!1658 (singletonSeq!303 call!16480)))))

(declare-fun lt!123079 () Unit!5362)

(assert (=> b!290804 (= lt!123079 (lemmaDropApply!224 lt!123076 0))))

(assert (=> b!290804 (= (head!934 (drop!237 lt!123076 0)) (apply!851 lt!123076 0))))

(declare-fun lt!123077 () Unit!5362)

(assert (=> b!290804 (= lt!123077 lt!123079)))

(declare-fun lt!123078 () List!3965)

(assert (=> b!290804 (= lt!123078 (list!1658 (singletonSeq!303 call!16480)))))

(declare-fun lt!123075 () Unit!5362)

(assert (=> b!290804 (= lt!123075 (lemmaDropTail!216 lt!123078 0))))

(assert (=> b!290804 (= (tail!516 (drop!237 lt!123078 0)) (drop!237 lt!123078 (+ 0 1)))))

(declare-fun lt!123073 () Unit!5362)

(assert (=> b!290804 (= lt!123073 lt!123075)))

(assert (= (and d!86598 res!132680) b!290802))

(assert (= (and d!86598 c!55076) b!290803))

(assert (= (and d!86598 (not c!55076)) b!290804))

(assert (=> d!86598 m!377513))

(assert (=> d!86598 m!378115))

(declare-fun m!378841 () Bool)

(assert (=> d!86598 m!378841))

(assert (=> d!86598 m!378115))

(declare-fun m!378843 () Bool)

(assert (=> d!86598 m!378843))

(assert (=> d!86598 m!378843))

(assert (=> d!86598 m!377513))

(declare-fun m!378845 () Bool)

(assert (=> d!86598 m!378845))

(declare-fun m!378847 () Bool)

(assert (=> d!86598 m!378847))

(assert (=> b!290802 m!378115))

(assert (=> b!290802 m!378841))

(declare-fun m!378849 () Bool)

(assert (=> b!290804 m!378849))

(assert (=> b!290804 m!378115))

(declare-fun m!378851 () Bool)

(assert (=> b!290804 m!378851))

(assert (=> b!290804 m!378115))

(declare-fun m!378853 () Bool)

(assert (=> b!290804 m!378853))

(declare-fun m!378855 () Bool)

(assert (=> b!290804 m!378855))

(declare-fun m!378857 () Bool)

(assert (=> b!290804 m!378857))

(declare-fun m!378859 () Bool)

(assert (=> b!290804 m!378859))

(declare-fun m!378861 () Bool)

(assert (=> b!290804 m!378861))

(declare-fun m!378863 () Bool)

(assert (=> b!290804 m!378863))

(declare-fun m!378865 () Bool)

(assert (=> b!290804 m!378865))

(declare-fun m!378867 () Bool)

(assert (=> b!290804 m!378867))

(assert (=> b!290804 m!378851))

(declare-fun m!378869 () Bool)

(assert (=> b!290804 m!378869))

(assert (=> b!290804 m!378115))

(declare-fun m!378871 () Bool)

(assert (=> b!290804 m!378871))

(assert (=> b!290804 m!378863))

(assert (=> b!290804 m!378869))

(assert (=> b!290804 m!378853))

(assert (=> b!290804 m!378859))

(declare-fun m!378873 () Bool)

(assert (=> b!290804 m!378873))

(assert (=> b!290437 d!86598))

(declare-fun b!290879 () Bool)

(declare-fun e!181077 () Bool)

(declare-fun lt!123196 () Token!1258)

(declare-datatypes ((Option!879 0))(
  ( (None!878) (Some!878 (v!14839 Rule!1314)) )
))
(declare-fun get!1340 (Option!879) Rule!1314)

(declare-fun getRuleFromTag!140 (LexerInterface!643 List!3964 String!4975) Option!879)

(assert (=> b!290879 (= e!181077 (= (rule!1360 lt!123196) (get!1340 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123196))))))))

(declare-fun d!86600 () Bool)

(assert (=> d!86600 (isDefined!716 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 call!16477) (list!1655 lt!122792))))))

(declare-fun lt!123193 () Unit!5362)

(declare-fun e!181078 () Unit!5362)

(assert (=> d!86600 (= lt!123193 e!181078)))

(declare-fun c!55094 () Bool)

(assert (=> d!86600 (= c!55094 (isEmpty!2640 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 call!16477) (list!1655 lt!122792)))))))

(declare-fun lt!123197 () Unit!5362)

(declare-fun lt!123186 () Unit!5362)

(assert (=> d!86600 (= lt!123197 lt!123186)))

(assert (=> d!86600 e!181077))

(declare-fun res!132716 () Bool)

(assert (=> d!86600 (=> (not res!132716) (not e!181077))))

(declare-fun isDefined!718 (Option!879) Bool)

(assert (=> d!86600 (= res!132716 (isDefined!718 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123196)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!140 (LexerInterface!643 List!3964 List!3963 Token!1258) Unit!5362)

(assert (=> d!86600 (= lt!123186 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!140 thiss!17480 rules!1920 (list!1655 call!16477) lt!123196))))

(declare-fun lt!123189 () Unit!5362)

(declare-fun lt!123191 () Unit!5362)

(assert (=> d!86600 (= lt!123189 lt!123191)))

(declare-fun lt!123190 () List!3963)

(assert (=> d!86600 (isPrefix!421 lt!123190 (++!1058 (list!1655 call!16477) (list!1655 lt!122792)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!64 (List!3963 List!3963 List!3963) Unit!5362)

(assert (=> d!86600 (= lt!123191 (lemmaPrefixStaysPrefixWhenAddingToSuffix!64 lt!123190 (list!1655 call!16477) (list!1655 lt!122792)))))

(assert (=> d!86600 (= lt!123190 (list!1655 (charsOf!400 lt!123196)))))

(declare-fun lt!123182 () Unit!5362)

(declare-fun lt!123198 () Unit!5362)

(assert (=> d!86600 (= lt!123182 lt!123198)))

(declare-fun lt!123185 () List!3963)

(declare-fun lt!123187 () List!3963)

(assert (=> d!86600 (isPrefix!421 lt!123185 (++!1058 lt!123185 lt!123187))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!316 (List!3963 List!3963) Unit!5362)

(assert (=> d!86600 (= lt!123198 (lemmaConcatTwoListThenFirstIsPrefix!316 lt!123185 lt!123187))))

(assert (=> d!86600 (= lt!123187 (_2!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 call!16477)))))))

(assert (=> d!86600 (= lt!123185 (list!1655 (charsOf!400 lt!123196)))))

(assert (=> d!86600 (= lt!123196 (head!934 (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 (list!1655 call!16477)))))))))

(assert (=> d!86600 (not (isEmpty!2627 rules!1920))))

(assert (=> d!86600 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 (list!1655 call!16477) (list!1655 lt!122792)) lt!123193)))

(declare-fun b!290881 () Bool)

(declare-fun Unit!5385 () Unit!5362)

(assert (=> b!290881 (= e!181078 Unit!5385)))

(declare-fun b!290878 () Bool)

(declare-fun res!132715 () Bool)

(assert (=> b!290878 (=> (not res!132715) (not e!181077))))

(assert (=> b!290878 (= res!132715 (matchR!299 (regex!757 (get!1340 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123196))))) (list!1655 (charsOf!400 lt!123196))))))

(declare-fun b!290880 () Bool)

(declare-fun Unit!5387 () Unit!5362)

(assert (=> b!290880 (= e!181078 Unit!5387)))

(declare-fun lt!123184 () List!3963)

(assert (=> b!290880 (= lt!123184 (++!1058 (list!1655 call!16477) (list!1655 lt!122792)))))

(declare-fun lt!123194 () Unit!5362)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!64 (LexerInterface!643 Rule!1314 List!3964 List!3963) Unit!5362)

(assert (=> b!290880 (= lt!123194 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!64 thiss!17480 (rule!1360 lt!123196) rules!1920 lt!123184))))

(assert (=> b!290880 (isEmpty!2640 (maxPrefixOneRule!161 thiss!17480 (rule!1360 lt!123196) lt!123184))))

(declare-fun lt!123188 () Unit!5362)

(assert (=> b!290880 (= lt!123188 lt!123194)))

(declare-fun lt!123195 () List!3963)

(assert (=> b!290880 (= lt!123195 (list!1655 (charsOf!400 lt!123196)))))

(declare-fun lt!123192 () Unit!5362)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!64 (LexerInterface!643 Rule!1314 List!3963 List!3963) Unit!5362)

(assert (=> b!290880 (= lt!123192 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!64 thiss!17480 (rule!1360 lt!123196) lt!123195 (++!1058 (list!1655 call!16477) (list!1655 lt!122792))))))

(assert (=> b!290880 (not (matchR!299 (regex!757 (rule!1360 lt!123196)) lt!123195))))

(declare-fun lt!123183 () Unit!5362)

(assert (=> b!290880 (= lt!123183 lt!123192)))

(assert (=> b!290880 false))

(assert (= (and d!86600 res!132716) b!290878))

(assert (= (and b!290878 res!132715) b!290879))

(assert (= (and d!86600 c!55094) b!290880))

(assert (= (and d!86600 (not c!55094)) b!290881))

(declare-fun m!379103 () Bool)

(assert (=> b!290879 m!379103))

(assert (=> b!290879 m!379103))

(declare-fun m!379105 () Bool)

(assert (=> b!290879 m!379105))

(declare-fun m!379107 () Bool)

(assert (=> d!86600 m!379107))

(declare-fun m!379109 () Bool)

(assert (=> d!86600 m!379109))

(assert (=> d!86600 m!379109))

(declare-fun m!379111 () Bool)

(assert (=> d!86600 m!379111))

(assert (=> d!86600 m!378121))

(declare-fun m!379113 () Bool)

(assert (=> d!86600 m!379113))

(declare-fun m!379115 () Bool)

(assert (=> d!86600 m!379115))

(assert (=> d!86600 m!378121))

(assert (=> d!86600 m!378113))

(declare-fun m!379117 () Bool)

(assert (=> d!86600 m!379117))

(declare-fun m!379119 () Bool)

(assert (=> d!86600 m!379119))

(assert (=> d!86600 m!379113))

(declare-fun m!379121 () Bool)

(assert (=> d!86600 m!379121))

(declare-fun m!379123 () Bool)

(assert (=> d!86600 m!379123))

(declare-fun m!379125 () Bool)

(assert (=> d!86600 m!379125))

(assert (=> d!86600 m!379103))

(declare-fun m!379127 () Bool)

(assert (=> d!86600 m!379127))

(declare-fun m!379129 () Bool)

(assert (=> d!86600 m!379129))

(assert (=> d!86600 m!379123))

(assert (=> d!86600 m!379115))

(declare-fun m!379131 () Bool)

(assert (=> d!86600 m!379131))

(assert (=> d!86600 m!378121))

(declare-fun m!379133 () Bool)

(assert (=> d!86600 m!379133))

(assert (=> d!86600 m!378121))

(assert (=> d!86600 m!378113))

(assert (=> d!86600 m!379107))

(assert (=> d!86600 m!378121))

(declare-fun m!379135 () Bool)

(assert (=> d!86600 m!379135))

(assert (=> d!86600 m!379107))

(declare-fun m!379137 () Bool)

(assert (=> d!86600 m!379137))

(assert (=> d!86600 m!379129))

(declare-fun m!379139 () Bool)

(assert (=> d!86600 m!379139))

(assert (=> d!86600 m!379103))

(assert (=> d!86600 m!379135))

(declare-fun m!379141 () Bool)

(assert (=> d!86600 m!379141))

(assert (=> d!86600 m!377139))

(assert (=> d!86600 m!379109))

(declare-fun m!379143 () Bool)

(assert (=> d!86600 m!379143))

(assert (=> b!290878 m!379139))

(declare-fun m!379145 () Bool)

(assert (=> b!290878 m!379145))

(assert (=> b!290878 m!379129))

(assert (=> b!290878 m!379139))

(assert (=> b!290878 m!379103))

(assert (=> b!290878 m!379105))

(assert (=> b!290878 m!379103))

(assert (=> b!290878 m!379129))

(assert (=> b!290880 m!378121))

(assert (=> b!290880 m!378113))

(assert (=> b!290880 m!379107))

(declare-fun m!379147 () Bool)

(assert (=> b!290880 m!379147))

(declare-fun m!379149 () Bool)

(assert (=> b!290880 m!379149))

(assert (=> b!290880 m!379129))

(assert (=> b!290880 m!379139))

(assert (=> b!290880 m!379107))

(declare-fun m!379151 () Bool)

(assert (=> b!290880 m!379151))

(assert (=> b!290880 m!379149))

(declare-fun m!379153 () Bool)

(assert (=> b!290880 m!379153))

(declare-fun m!379155 () Bool)

(assert (=> b!290880 m!379155))

(assert (=> b!290880 m!379129))

(assert (=> b!290437 d!86600))

(declare-fun d!86672 () Bool)

(declare-fun lt!123199 () BalanceConc!2680)

(assert (=> d!86672 (= (list!1655 lt!123199) (printList!317 thiss!17480 (list!1658 (singletonSeq!303 call!16480))))))

(assert (=> d!86672 (= lt!123199 (printTailRec!329 thiss!17480 (singletonSeq!303 call!16480) 0 (BalanceConc!2681 Empty!1336)))))

(assert (=> d!86672 (= (print!368 thiss!17480 (singletonSeq!303 call!16480)) lt!123199)))

(declare-fun bs!33073 () Bool)

(assert (= bs!33073 d!86672))

(declare-fun m!379157 () Bool)

(assert (=> bs!33073 m!379157))

(assert (=> bs!33073 m!378115))

(assert (=> bs!33073 m!378871))

(assert (=> bs!33073 m!378871))

(declare-fun m!379159 () Bool)

(assert (=> bs!33073 m!379159))

(assert (=> bs!33073 m!378115))

(assert (=> bs!33073 m!378117))

(assert (=> b!290437 d!86672))

(declare-fun d!86674 () Bool)

(assert (=> d!86674 (= (inv!4888 (tag!973 (rule!1360 (h!9352 (t!40597 tokens!465))))) (= (mod (str.len (value!25889 (tag!973 (rule!1360 (h!9352 (t!40597 tokens!465)))))) 2) 0))))

(assert (=> b!290548 d!86674))

(declare-fun d!86676 () Bool)

(declare-fun res!132717 () Bool)

(declare-fun e!181079 () Bool)

(assert (=> d!86676 (=> (not res!132717) (not e!181079))))

(assert (=> d!86676 (= res!132717 (semiInverseModEq!281 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toValue!1508 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))))))

(assert (=> d!86676 (= (inv!4892 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) e!181079)))

(declare-fun b!290882 () Bool)

(assert (=> b!290882 (= e!181079 (equivClasses!264 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toValue!1508 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))))))

(assert (= (and d!86676 res!132717) b!290882))

(declare-fun m!379161 () Bool)

(assert (=> d!86676 m!379161))

(declare-fun m!379163 () Bool)

(assert (=> b!290882 m!379163))

(assert (=> b!290548 d!86676))

(declare-fun d!86678 () Bool)

(assert (=> d!86678 (= (list!1655 lt!122753) (list!1659 (c!54877 lt!122753)))))

(declare-fun bs!33074 () Bool)

(assert (= bs!33074 d!86678))

(declare-fun m!379165 () Bool)

(assert (=> bs!33074 m!379165))

(assert (=> d!86334 d!86678))

(declare-fun bs!33075 () Bool)

(declare-fun b!290883 () Bool)

(assert (= bs!33075 (and b!290883 b!290433)))

(declare-fun lambda!9995 () Int)

(assert (=> bs!33075 (= lambda!9995 lambda!9985)))

(declare-fun bs!33076 () Bool)

(assert (= bs!33076 (and b!290883 b!289852)))

(assert (=> bs!33076 (= lambda!9995 lambda!9952)))

(declare-fun bs!33077 () Bool)

(assert (= bs!33077 (and b!290883 b!289856)))

(assert (=> bs!33077 (not (= lambda!9995 lambda!9951))))

(declare-fun bs!33078 () Bool)

(assert (= bs!33078 (and b!290883 b!290164)))

(assert (=> bs!33078 (= lambda!9995 lambda!9966)))

(declare-fun bs!33079 () Bool)

(assert (= bs!33079 (and b!290883 b!290442)))

(assert (=> bs!33079 (= lambda!9995 lambda!9986)))

(declare-fun bs!33080 () Bool)

(assert (= bs!33080 (and b!290883 d!86240)))

(assert (=> bs!33080 (= lambda!9995 lambda!9957)))

(declare-fun bs!33081 () Bool)

(assert (= bs!33081 (and b!290883 d!86416)))

(assert (=> bs!33081 (not (= lambda!9995 lambda!9984))))

(declare-fun bs!33082 () Bool)

(assert (= bs!33082 (and b!290883 d!86334)))

(assert (=> bs!33082 (not (= lambda!9995 lambda!9977))))

(declare-fun bs!33083 () Bool)

(assert (= bs!33083 (and b!290883 b!290313)))

(assert (=> bs!33083 (= lambda!9995 lambda!9978)))

(declare-fun b!290895 () Bool)

(declare-fun e!181087 () Bool)

(assert (=> b!290895 (= e!181087 true)))

(declare-fun b!290894 () Bool)

(declare-fun e!181086 () Bool)

(assert (=> b!290894 (= e!181086 e!181087)))

(declare-fun b!290893 () Bool)

(declare-fun e!181085 () Bool)

(assert (=> b!290893 (= e!181085 e!181086)))

(assert (=> b!290883 e!181085))

(assert (= b!290894 b!290895))

(assert (= b!290893 b!290894))

(assert (= (and b!290883 ((_ is Cons!3954) rules!1920)) b!290893))

(assert (=> b!290895 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9995))))

(assert (=> b!290895 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9995))))

(assert (=> b!290883 true))

(declare-fun e!181084 () List!3963)

(declare-fun e!181082 () List!3963)

(assert (=> b!290883 (= e!181084 e!181082)))

(declare-fun lt!123205 () Unit!5362)

(assert (=> b!290883 (= lt!123205 (forallContained!310 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0) lambda!9995 (h!9352 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0))))))

(declare-fun lt!123202 () List!3963)

(assert (=> b!290883 (= lt!123202 (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (t!40597 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0)) separatorToken!170))))

(declare-fun lt!123203 () Option!877)

(assert (=> b!290883 (= lt!123203 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 (charsOf!400 (h!9352 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0)))) lt!123202)))))

(declare-fun c!55097 () Bool)

(assert (=> b!290883 (= c!55097 (and ((_ is Some!876) lt!123203) (= (_1!2471 (v!14827 lt!123203)) (h!9352 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0)))))))

(declare-fun d!86680 () Bool)

(declare-fun c!55098 () Bool)

(assert (=> d!86680 (= c!55098 ((_ is Cons!3955) (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0)))))

(assert (=> d!86680 (= (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0) separatorToken!170) e!181084)))

(declare-fun b!290884 () Bool)

(declare-fun e!181083 () List!3963)

(declare-fun call!16507 () List!3963)

(assert (=> b!290884 (= e!181083 (++!1058 call!16507 lt!123202))))

(declare-fun bm!16499 () Bool)

(declare-fun call!16505 () List!3963)

(declare-fun call!16506 () List!3963)

(assert (=> bm!16499 (= call!16505 call!16506)))

(declare-fun c!55099 () Bool)

(declare-fun c!55095 () Bool)

(assert (=> bm!16499 (= c!55099 c!55095)))

(declare-fun b!290885 () Bool)

(assert (=> b!290885 (= e!181082 call!16507)))

(declare-fun bm!16500 () Bool)

(declare-fun call!16508 () BalanceConc!2680)

(assert (=> bm!16500 (= call!16508 (charsOf!400 (h!9352 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0))))))

(declare-fun b!290886 () Bool)

(declare-fun e!181081 () BalanceConc!2680)

(declare-fun call!16504 () BalanceConc!2680)

(assert (=> b!290886 (= e!181081 call!16504)))

(declare-fun bm!16501 () Bool)

(declare-fun c!55096 () Bool)

(assert (=> bm!16501 (= c!55096 c!55097)))

(declare-fun e!181080 () List!3963)

(assert (=> bm!16501 (= call!16507 (++!1058 e!181080 (ite c!55097 lt!123202 call!16505)))))

(declare-fun b!290887 () Bool)

(assert (=> b!290887 (= e!181083 Nil!3953)))

(assert (=> b!290887 (= (print!368 thiss!17480 (singletonSeq!303 (h!9352 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0)))) (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0))) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!123201 () Unit!5362)

(declare-fun Unit!5388 () Unit!5362)

(assert (=> b!290887 (= lt!123201 Unit!5388)))

(declare-fun lt!123204 () Unit!5362)

(assert (=> b!290887 (= lt!123204 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 call!16505 lt!123202))))

(assert (=> b!290887 false))

(declare-fun lt!123200 () Unit!5362)

(declare-fun Unit!5389 () Unit!5362)

(assert (=> b!290887 (= lt!123200 Unit!5389)))

(declare-fun b!290888 () Bool)

(assert (=> b!290888 (= e!181084 Nil!3953)))

(declare-fun b!290889 () Bool)

(assert (=> b!290889 (= e!181080 (list!1655 call!16504))))

(declare-fun b!290890 () Bool)

(assert (=> b!290890 (= e!181081 (charsOf!400 separatorToken!170))))

(declare-fun bm!16502 () Bool)

(assert (=> bm!16502 (= call!16504 call!16508)))

(declare-fun b!290891 () Bool)

(assert (=> b!290891 (= c!55095 (and ((_ is Some!876) lt!123203) (not (= (_1!2471 (v!14827 lt!123203)) (h!9352 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0))))))))

(assert (=> b!290891 (= e!181082 e!181083)))

(declare-fun bm!16503 () Bool)

(assert (=> bm!16503 (= call!16506 (list!1655 (ite c!55097 call!16508 e!181081)))))

(declare-fun b!290892 () Bool)

(assert (=> b!290892 (= e!181080 call!16506)))

(assert (= (and d!86680 c!55098) b!290883))

(assert (= (and d!86680 (not c!55098)) b!290888))

(assert (= (and b!290883 c!55097) b!290885))

(assert (= (and b!290883 (not c!55097)) b!290891))

(assert (= (and b!290891 c!55095) b!290884))

(assert (= (and b!290891 (not c!55095)) b!290887))

(assert (= (or b!290884 b!290887) bm!16502))

(assert (= (or b!290884 b!290887) bm!16499))

(assert (= (and bm!16499 c!55099) b!290890))

(assert (= (and bm!16499 (not c!55099)) b!290886))

(assert (= (or b!290885 bm!16502) bm!16500))

(assert (= (or b!290885 bm!16499) bm!16503))

(assert (= (or b!290885 b!290884) bm!16501))

(assert (= (and bm!16501 c!55096) b!290892))

(assert (= (and bm!16501 (not c!55096)) b!290889))

(declare-fun m!379167 () Bool)

(assert (=> b!290887 m!379167))

(assert (=> b!290887 m!379167))

(declare-fun m!379169 () Bool)

(assert (=> b!290887 m!379169))

(assert (=> b!290887 m!379167))

(declare-fun m!379171 () Bool)

(assert (=> b!290887 m!379171))

(declare-fun m!379173 () Bool)

(assert (=> b!290887 m!379173))

(declare-fun m!379175 () Bool)

(assert (=> bm!16500 m!379175))

(assert (=> b!290883 m!379175))

(assert (=> b!290883 m!377955))

(declare-fun m!379177 () Bool)

(assert (=> b!290883 m!379177))

(declare-fun m!379179 () Bool)

(assert (=> b!290883 m!379179))

(declare-fun m!379181 () Bool)

(assert (=> b!290883 m!379181))

(declare-fun m!379183 () Bool)

(assert (=> b!290883 m!379183))

(assert (=> b!290883 m!379183))

(declare-fun m!379185 () Bool)

(assert (=> b!290883 m!379185))

(assert (=> b!290883 m!379175))

(assert (=> b!290883 m!379181))

(declare-fun m!379187 () Bool)

(assert (=> bm!16501 m!379187))

(declare-fun m!379189 () Bool)

(assert (=> b!290889 m!379189))

(assert (=> b!290890 m!377157))

(declare-fun m!379191 () Bool)

(assert (=> bm!16503 m!379191))

(declare-fun m!379193 () Bool)

(assert (=> b!290884 m!379193))

(assert (=> d!86334 d!86680))

(declare-fun d!86682 () Bool)

(assert (=> d!86682 (forall!1024 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0) lambda!9977)))

(declare-fun lt!123218 () Unit!5362)

(declare-fun choose!2610 (List!3965 List!3965 Int) Unit!5362)

(assert (=> d!86682 (= lt!123218 (choose!2610 (list!1658 (seqFromList!879 (t!40597 tokens!465))) (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0) lambda!9977))))

(assert (=> d!86682 (forall!1024 (list!1658 (seqFromList!879 (t!40597 tokens!465))) lambda!9977)))

(assert (=> d!86682 (= (lemmaContentSubsetPreservesForall!128 (list!1658 (seqFromList!879 (t!40597 tokens!465))) (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0) lambda!9977) lt!123218)))

(declare-fun bs!33084 () Bool)

(assert (= bs!33084 d!86682))

(assert (=> bs!33084 m!377955))

(declare-fun m!379195 () Bool)

(assert (=> bs!33084 m!379195))

(assert (=> bs!33084 m!377915))

(assert (=> bs!33084 m!377955))

(declare-fun m!379197 () Bool)

(assert (=> bs!33084 m!379197))

(assert (=> bs!33084 m!377915))

(declare-fun m!379199 () Bool)

(assert (=> bs!33084 m!379199))

(assert (=> d!86334 d!86682))

(declare-fun d!86684 () Bool)

(assert (=> d!86684 (= (dropList!184 (seqFromList!879 (t!40597 tokens!465)) 0) (drop!237 (list!1661 (c!54879 (seqFromList!879 (t!40597 tokens!465)))) 0))))

(declare-fun bs!33085 () Bool)

(assert (= bs!33085 d!86684))

(declare-fun m!379201 () Bool)

(assert (=> bs!33085 m!379201))

(assert (=> bs!33085 m!379201))

(declare-fun m!379203 () Bool)

(assert (=> bs!33085 m!379203))

(assert (=> d!86334 d!86684))

(declare-fun d!86686 () Bool)

(declare-fun lt!123219 () Int)

(assert (=> d!86686 (= lt!123219 (size!3178 (list!1658 (seqFromList!879 (t!40597 tokens!465)))))))

(assert (=> d!86686 (= lt!123219 (size!3179 (c!54879 (seqFromList!879 (t!40597 tokens!465)))))))

(assert (=> d!86686 (= (size!3176 (seqFromList!879 (t!40597 tokens!465))) lt!123219)))

(declare-fun bs!33086 () Bool)

(assert (= bs!33086 d!86686))

(assert (=> bs!33086 m!377161))

(assert (=> bs!33086 m!377915))

(assert (=> bs!33086 m!377915))

(declare-fun m!379205 () Bool)

(assert (=> bs!33086 m!379205))

(declare-fun m!379207 () Bool)

(assert (=> bs!33086 m!379207))

(assert (=> d!86334 d!86686))

(declare-fun d!86688 () Bool)

(assert (=> d!86688 (= (list!1658 (seqFromList!879 (t!40597 tokens!465))) (list!1661 (c!54879 (seqFromList!879 (t!40597 tokens!465)))))))

(declare-fun bs!33087 () Bool)

(assert (= bs!33087 d!86688))

(assert (=> bs!33087 m!379201))

(assert (=> d!86334 d!86688))

(declare-fun d!86690 () Bool)

(assert (=> d!86690 (= (list!1655 call!16481) (list!1659 (c!54877 call!16481)))))

(declare-fun bs!33088 () Bool)

(assert (= bs!33088 d!86690))

(declare-fun m!379209 () Bool)

(assert (=> bs!33088 m!379209))

(assert (=> b!290448 d!86690))

(declare-fun d!86692 () Bool)

(declare-fun c!55102 () Bool)

(assert (=> d!86692 (= c!55102 ((_ is Nil!3953) lt!122774))))

(declare-fun e!181096 () (InoxSet C!2884))

(assert (=> d!86692 (= (content!585 lt!122774) e!181096)))

(declare-fun b!290914 () Bool)

(assert (=> b!290914 (= e!181096 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!290915 () Bool)

(assert (=> b!290915 (= e!181096 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122774) true) (content!585 (t!40595 lt!122774))))))

(assert (= (and d!86692 c!55102) b!290914))

(assert (= (and d!86692 (not c!55102)) b!290915))

(declare-fun m!379211 () Bool)

(assert (=> b!290915 m!379211))

(declare-fun m!379213 () Bool)

(assert (=> b!290915 m!379213))

(assert (=> d!86396 d!86692))

(assert (=> d!86396 d!86570))

(declare-fun d!86694 () Bool)

(declare-fun c!55103 () Bool)

(assert (=> d!86694 (= c!55103 ((_ is Nil!3953) lt!122470))))

(declare-fun e!181097 () (InoxSet C!2884))

(assert (=> d!86694 (= (content!585 lt!122470) e!181097)))

(declare-fun b!290916 () Bool)

(assert (=> b!290916 (= e!181097 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!290917 () Bool)

(assert (=> b!290917 (= e!181097 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122470) true) (content!585 (t!40595 lt!122470))))))

(assert (= (and d!86694 c!55103) b!290916))

(assert (= (and d!86694 (not c!55103)) b!290917))

(declare-fun m!379215 () Bool)

(assert (=> b!290917 m!379215))

(declare-fun m!379217 () Bool)

(assert (=> b!290917 m!379217))

(assert (=> d!86396 d!86694))

(declare-fun d!86696 () Bool)

(assert (=> d!86696 true))

(declare-fun lambda!9998 () Int)

(declare-fun order!3141 () Int)

(declare-fun dynLambda!2113 (Int Int) Int)

(assert (=> d!86696 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) (dynLambda!2113 order!3141 lambda!9998))))

(assert (=> d!86696 true))

(assert (=> d!86696 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (rule!1360 separatorToken!170)))) (dynLambda!2113 order!3141 lambda!9998))))

(declare-fun Forall!179 (Int) Bool)

(assert (=> d!86696 (= (semiInverseModEq!281 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toValue!1508 (transformation!757 (rule!1360 separatorToken!170)))) (Forall!179 lambda!9998))))

(declare-fun bs!33089 () Bool)

(assert (= bs!33089 d!86696))

(declare-fun m!379219 () Bool)

(assert (=> bs!33089 m!379219))

(assert (=> d!86320 d!86696))

(declare-fun d!86698 () Bool)

(assert (=> d!86698 (= (isEmpty!2634 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))) (not ((_ is Some!875) (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))

(assert (=> d!86286 d!86698))

(assert (=> d!86420 d!86314))

(declare-fun d!86700 () Bool)

(assert (=> d!86700 (= (list!1658 (singletonSeq!303 (h!9352 tokens!465))) (list!1661 (c!54879 (singletonSeq!303 (h!9352 tokens!465)))))))

(declare-fun bs!33090 () Bool)

(assert (= bs!33090 d!86700))

(declare-fun m!379241 () Bool)

(assert (=> bs!33090 m!379241))

(assert (=> d!86420 d!86700))

(declare-fun b!290931 () Bool)

(declare-fun res!132739 () Bool)

(declare-fun e!181102 () Bool)

(assert (=> b!290931 (=> (not res!132739) (not e!181102))))

(declare-fun lt!123225 () tuple2!4508)

(assert (=> b!290931 (= res!132739 (= (list!1658 (_1!2470 lt!123225)) (_1!2473 (lexList!229 thiss!17480 rules!1920 (list!1655 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))))))))))

(declare-fun d!86702 () Bool)

(assert (=> d!86702 e!181102))

(declare-fun res!132740 () Bool)

(assert (=> d!86702 (=> (not res!132740) (not e!181102))))

(declare-fun e!181104 () Bool)

(assert (=> d!86702 (= res!132740 e!181104)))

(declare-fun c!55105 () Bool)

(assert (=> d!86702 (= c!55105 (> (size!3176 (_1!2470 lt!123225)) 0))))

(assert (=> d!86702 (= lt!123225 (lexTailRecV2!196 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))) (BalanceConc!2681 Empty!1336) (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))) (BalanceConc!2683 Empty!1337)))))

(assert (=> d!86702 (= (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)))) lt!123225)))

(declare-fun b!290932 () Bool)

(assert (=> b!290932 (= e!181104 (= (_2!2470 lt!123225) (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)))))))

(declare-fun b!290933 () Bool)

(declare-fun e!181103 () Bool)

(assert (=> b!290933 (= e!181104 e!181103)))

(declare-fun res!132741 () Bool)

(assert (=> b!290933 (= res!132741 (< (size!3177 (_2!2470 lt!123225)) (size!3177 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))))))))

(assert (=> b!290933 (=> (not res!132741) (not e!181103))))

(declare-fun b!290934 () Bool)

(assert (=> b!290934 (= e!181102 (= (list!1655 (_2!2470 lt!123225)) (_2!2473 (lexList!229 thiss!17480 rules!1920 (list!1655 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))))))))))

(declare-fun b!290935 () Bool)

(assert (=> b!290935 (= e!181103 (not (isEmpty!2628 (_1!2470 lt!123225))))))

(assert (= (and d!86702 c!55105) b!290933))

(assert (= (and d!86702 (not c!55105)) b!290932))

(assert (= (and b!290933 res!132741) b!290935))

(assert (= (and d!86702 res!132740) b!290931))

(assert (= (and b!290931 res!132739) b!290934))

(declare-fun m!379261 () Bool)

(assert (=> b!290934 m!379261))

(assert (=> b!290934 m!378135))

(declare-fun m!379263 () Bool)

(assert (=> b!290934 m!379263))

(assert (=> b!290934 m!379263))

(declare-fun m!379267 () Bool)

(assert (=> b!290934 m!379267))

(declare-fun m!379271 () Bool)

(assert (=> b!290933 m!379271))

(assert (=> b!290933 m!378135))

(declare-fun m!379273 () Bool)

(assert (=> b!290933 m!379273))

(declare-fun m!379277 () Bool)

(assert (=> d!86702 m!379277))

(assert (=> d!86702 m!378135))

(assert (=> d!86702 m!378135))

(declare-fun m!379279 () Bool)

(assert (=> d!86702 m!379279))

(declare-fun m!379281 () Bool)

(assert (=> b!290935 m!379281))

(declare-fun m!379283 () Bool)

(assert (=> b!290931 m!379283))

(assert (=> b!290931 m!378135))

(assert (=> b!290931 m!379263))

(assert (=> b!290931 m!379263))

(assert (=> b!290931 m!379267))

(assert (=> d!86420 d!86702))

(declare-fun d!86706 () Bool)

(assert (=> d!86706 (= (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)))))) (list!1661 (c!54879 (_1!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))))))))))

(declare-fun bs!33091 () Bool)

(assert (= bs!33091 d!86706))

(declare-fun m!379289 () Bool)

(assert (=> bs!33091 m!379289))

(assert (=> d!86420 d!86706))

(assert (=> d!86420 d!86422))

(declare-fun d!86710 () Bool)

(declare-fun lt!123226 () Int)

(assert (=> d!86710 (= lt!123226 (size!3178 (list!1658 (_1!2470 lt!122811))))))

(assert (=> d!86710 (= lt!123226 (size!3179 (c!54879 (_1!2470 lt!122811))))))

(assert (=> d!86710 (= (size!3176 (_1!2470 lt!122811)) lt!123226)))

(declare-fun bs!33092 () Bool)

(assert (= bs!33092 d!86710))

(declare-fun m!379293 () Bool)

(assert (=> bs!33092 m!379293))

(assert (=> bs!33092 m!379293))

(declare-fun m!379295 () Bool)

(assert (=> bs!33092 m!379295))

(declare-fun m!379297 () Bool)

(assert (=> bs!33092 m!379297))

(assert (=> d!86420 d!86710))

(declare-fun d!86714 () Bool)

(declare-fun lt!123228 () BalanceConc!2680)

(assert (=> d!86714 (= (list!1655 lt!123228) (printList!317 thiss!17480 (list!1658 (singletonSeq!303 (h!9352 tokens!465)))))))

(assert (=> d!86714 (= lt!123228 (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)) 0 (BalanceConc!2681 Empty!1336)))))

(assert (=> d!86714 (= (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))) lt!123228)))

(declare-fun bs!33094 () Bool)

(assert (= bs!33094 d!86714))

(declare-fun m!379299 () Bool)

(assert (=> bs!33094 m!379299))

(assert (=> bs!33094 m!377195))

(assert (=> bs!33094 m!378161))

(assert (=> bs!33094 m!378161))

(declare-fun m!379305 () Bool)

(assert (=> bs!33094 m!379305))

(assert (=> bs!33094 m!377195))

(assert (=> bs!33094 m!378137))

(assert (=> d!86420 d!86714))

(declare-fun d!86718 () Bool)

(assert (=> d!86718 (= (list!1655 (ite c!55000 call!16485 e!180808)) (list!1659 (c!54877 (ite c!55000 call!16485 e!180808))))))

(declare-fun bs!33096 () Bool)

(assert (= bs!33096 d!86718))

(declare-fun m!379309 () Bool)

(assert (=> bs!33096 m!379309))

(assert (=> bm!16480 d!86718))

(declare-fun d!86722 () Bool)

(declare-fun lt!123229 () Int)

(assert (=> d!86722 (>= lt!123229 0)))

(declare-fun e!181107 () Int)

(assert (=> d!86722 (= lt!123229 e!181107)))

(declare-fun c!55108 () Bool)

(assert (=> d!86722 (= c!55108 ((_ is Nil!3953) (originalCharacters!800 (h!9352 tokens!465))))))

(assert (=> d!86722 (= (size!3175 (originalCharacters!800 (h!9352 tokens!465))) lt!123229)))

(declare-fun b!290940 () Bool)

(assert (=> b!290940 (= e!181107 0)))

(declare-fun b!290941 () Bool)

(assert (=> b!290941 (= e!181107 (+ 1 (size!3175 (t!40595 (originalCharacters!800 (h!9352 tokens!465))))))))

(assert (= (and d!86722 c!55108) b!290940))

(assert (= (and d!86722 (not c!55108)) b!290941))

(declare-fun m!379311 () Bool)

(assert (=> b!290941 m!379311))

(assert (=> b!290504 d!86722))

(declare-fun d!86724 () Bool)

(assert (=> d!86724 (= (get!1337 lt!122551) (v!14826 lt!122551))))

(assert (=> b!290068 d!86724))

(declare-fun d!86726 () Bool)

(assert (=> d!86726 (= (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))) (v!14827 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))

(assert (=> b!290068 d!86726))

(declare-fun b!290942 () Bool)

(declare-fun res!132748 () Bool)

(declare-fun e!181110 () Bool)

(assert (=> b!290942 (=> (not res!132748) (not e!181110))))

(declare-fun lt!123232 () Option!877)

(assert (=> b!290942 (= res!132748 (= (++!1058 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123232)))) (_2!2471 (get!1336 lt!123232))) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(declare-fun call!16509 () Option!877)

(declare-fun bm!16504 () Bool)

(assert (=> bm!16504 (= call!16509 (maxPrefixOneRule!161 thiss!17480 (h!9351 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(declare-fun b!290943 () Bool)

(declare-fun res!132742 () Bool)

(assert (=> b!290943 (=> (not res!132742) (not e!181110))))

(assert (=> b!290943 (= res!132742 (matchR!299 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!123232)))) (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123232))))))))

(declare-fun b!290944 () Bool)

(assert (=> b!290944 (= e!181110 (contains!777 rules!1920 (rule!1360 (_1!2471 (get!1336 lt!123232)))))))

(declare-fun b!290945 () Bool)

(declare-fun res!132746 () Bool)

(assert (=> b!290945 (=> (not res!132746) (not e!181110))))

(assert (=> b!290945 (= res!132746 (< (size!3175 (_2!2471 (get!1336 lt!123232))) (size!3175 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))

(declare-fun b!290946 () Bool)

(declare-fun res!132745 () Bool)

(assert (=> b!290946 (=> (not res!132745) (not e!181110))))

(assert (=> b!290946 (= res!132745 (= (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123232)))) (originalCharacters!800 (_1!2471 (get!1336 lt!123232)))))))

(declare-fun b!290947 () Bool)

(declare-fun e!181109 () Option!877)

(assert (=> b!290947 (= e!181109 call!16509)))

(declare-fun b!290949 () Bool)

(declare-fun e!181108 () Bool)

(assert (=> b!290949 (= e!181108 e!181110)))

(declare-fun res!132744 () Bool)

(assert (=> b!290949 (=> (not res!132744) (not e!181110))))

(assert (=> b!290949 (= res!132744 (isDefined!716 lt!123232))))

(declare-fun b!290950 () Bool)

(declare-fun lt!123231 () Option!877)

(declare-fun lt!123234 () Option!877)

(assert (=> b!290950 (= e!181109 (ite (and ((_ is None!876) lt!123231) ((_ is None!876) lt!123234)) None!876 (ite ((_ is None!876) lt!123234) lt!123231 (ite ((_ is None!876) lt!123231) lt!123234 (ite (>= (size!3171 (_1!2471 (v!14827 lt!123231))) (size!3171 (_1!2471 (v!14827 lt!123234)))) lt!123231 lt!123234)))))))

(assert (=> b!290950 (= lt!123231 call!16509)))

(assert (=> b!290950 (= lt!123234 (maxPrefix!359 thiss!17480 (t!40596 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(declare-fun d!86728 () Bool)

(assert (=> d!86728 e!181108))

(declare-fun res!132743 () Bool)

(assert (=> d!86728 (=> res!132743 e!181108)))

(assert (=> d!86728 (= res!132743 (isEmpty!2640 lt!123232))))

(assert (=> d!86728 (= lt!123232 e!181109)))

(declare-fun c!55109 () Bool)

(assert (=> d!86728 (= c!55109 (and ((_ is Cons!3954) rules!1920) ((_ is Nil!3954) (t!40596 rules!1920))))))

(declare-fun lt!123233 () Unit!5362)

(declare-fun lt!123230 () Unit!5362)

(assert (=> d!86728 (= lt!123233 lt!123230)))

(assert (=> d!86728 (isPrefix!421 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (=> d!86728 (= lt!123230 (lemmaIsPrefixRefl!227 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(assert (=> d!86728 (rulesValidInductive!222 thiss!17480 rules!1920)))

(assert (=> d!86728 (= (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))) lt!123232)))

(declare-fun b!290948 () Bool)

(declare-fun res!132747 () Bool)

(assert (=> b!290948 (=> (not res!132747) (not e!181110))))

(assert (=> b!290948 (= res!132747 (= (value!25890 (_1!2471 (get!1336 lt!123232))) (apply!852 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!123232)))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!123232)))))))))

(assert (= (and d!86728 c!55109) b!290947))

(assert (= (and d!86728 (not c!55109)) b!290950))

(assert (= (or b!290947 b!290950) bm!16504))

(assert (= (and d!86728 (not res!132743)) b!290949))

(assert (= (and b!290949 res!132744) b!290946))

(assert (= (and b!290946 res!132745) b!290945))

(assert (= (and b!290945 res!132746) b!290942))

(assert (= (and b!290942 res!132748) b!290948))

(assert (= (and b!290948 res!132747) b!290943))

(assert (= (and b!290943 res!132742) b!290944))

(assert (=> bm!16504 m!377457))

(declare-fun m!379313 () Bool)

(assert (=> bm!16504 m!379313))

(declare-fun m!379315 () Bool)

(assert (=> d!86728 m!379315))

(assert (=> d!86728 m!377457))

(assert (=> d!86728 m!377457))

(declare-fun m!379317 () Bool)

(assert (=> d!86728 m!379317))

(assert (=> d!86728 m!377457))

(assert (=> d!86728 m!377457))

(declare-fun m!379319 () Bool)

(assert (=> d!86728 m!379319))

(assert (=> d!86728 m!377481))

(declare-fun m!379321 () Bool)

(assert (=> b!290943 m!379321))

(declare-fun m!379323 () Bool)

(assert (=> b!290943 m!379323))

(assert (=> b!290943 m!379323))

(declare-fun m!379325 () Bool)

(assert (=> b!290943 m!379325))

(assert (=> b!290943 m!379325))

(declare-fun m!379327 () Bool)

(assert (=> b!290943 m!379327))

(assert (=> b!290944 m!379321))

(declare-fun m!379329 () Bool)

(assert (=> b!290944 m!379329))

(assert (=> b!290942 m!379321))

(assert (=> b!290942 m!379323))

(assert (=> b!290942 m!379323))

(assert (=> b!290942 m!379325))

(assert (=> b!290942 m!379325))

(declare-fun m!379331 () Bool)

(assert (=> b!290942 m!379331))

(assert (=> b!290948 m!379321))

(declare-fun m!379333 () Bool)

(assert (=> b!290948 m!379333))

(assert (=> b!290948 m!379333))

(declare-fun m!379341 () Bool)

(assert (=> b!290948 m!379341))

(declare-fun m!379343 () Bool)

(assert (=> b!290949 m!379343))

(assert (=> b!290946 m!379321))

(assert (=> b!290946 m!379323))

(assert (=> b!290946 m!379323))

(assert (=> b!290946 m!379325))

(assert (=> b!290945 m!379321))

(declare-fun m!379345 () Bool)

(assert (=> b!290945 m!379345))

(assert (=> b!290945 m!377457))

(declare-fun m!379347 () Bool)

(assert (=> b!290945 m!379347))

(assert (=> b!290950 m!377457))

(declare-fun m!379349 () Bool)

(assert (=> b!290950 m!379349))

(assert (=> b!290068 d!86728))

(declare-fun d!86732 () Bool)

(assert (=> d!86732 (= (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))) (list!1659 (c!54877 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(declare-fun bs!33097 () Bool)

(assert (= bs!33097 d!86732))

(declare-fun m!379353 () Bool)

(assert (=> bs!33097 m!379353))

(assert (=> b!290068 d!86732))

(declare-fun d!86736 () Bool)

(assert (=> d!86736 (= (list!1655 lt!122791) (list!1659 (c!54877 lt!122791)))))

(declare-fun bs!33099 () Bool)

(assert (= bs!33099 d!86736))

(declare-fun m!379357 () Bool)

(assert (=> bs!33099 m!379357))

(assert (=> d!86416 d!86736))

(declare-fun d!86740 () Bool)

(declare-fun lt!123240 () Int)

(assert (=> d!86740 (= lt!123240 (size!3178 (list!1658 lt!122463)))))

(assert (=> d!86740 (= lt!123240 (size!3179 (c!54879 lt!122463)))))

(assert (=> d!86740 (= (size!3176 lt!122463) lt!123240)))

(declare-fun bs!33100 () Bool)

(assert (= bs!33100 d!86740))

(assert (=> bs!33100 m!377403))

(assert (=> bs!33100 m!377403))

(declare-fun m!379359 () Bool)

(assert (=> bs!33100 m!379359))

(declare-fun m!379361 () Bool)

(assert (=> bs!33100 m!379361))

(assert (=> d!86416 d!86740))

(declare-fun d!86742 () Bool)

(assert (=> d!86742 (forall!1024 (dropList!184 lt!122463 0) lambda!9984)))

(declare-fun lt!123241 () Unit!5362)

(assert (=> d!86742 (= lt!123241 (choose!2610 (list!1658 lt!122463) (dropList!184 lt!122463 0) lambda!9984))))

(assert (=> d!86742 (forall!1024 (list!1658 lt!122463) lambda!9984)))

(assert (=> d!86742 (= (lemmaContentSubsetPreservesForall!128 (list!1658 lt!122463) (dropList!184 lt!122463 0) lambda!9984) lt!123241)))

(declare-fun bs!33101 () Bool)

(assert (= bs!33101 d!86742))

(assert (=> bs!33101 m!378127))

(declare-fun m!379363 () Bool)

(assert (=> bs!33101 m!379363))

(assert (=> bs!33101 m!377403))

(assert (=> bs!33101 m!378127))

(declare-fun m!379365 () Bool)

(assert (=> bs!33101 m!379365))

(assert (=> bs!33101 m!377403))

(declare-fun m!379367 () Bool)

(assert (=> bs!33101 m!379367))

(assert (=> d!86416 d!86742))

(declare-fun d!86744 () Bool)

(assert (=> d!86744 (= (dropList!184 lt!122463 0) (drop!237 (list!1661 (c!54879 lt!122463)) 0))))

(declare-fun bs!33102 () Bool)

(assert (= bs!33102 d!86744))

(assert (=> bs!33102 m!378757))

(assert (=> bs!33102 m!378757))

(declare-fun m!379373 () Bool)

(assert (=> bs!33102 m!379373))

(assert (=> d!86416 d!86744))

(assert (=> d!86416 d!86554))

(declare-fun bs!33105 () Bool)

(declare-fun b!290961 () Bool)

(assert (= bs!33105 (and b!290961 b!290883)))

(declare-fun lambda!9999 () Int)

(assert (=> bs!33105 (= lambda!9999 lambda!9995)))

(declare-fun bs!33107 () Bool)

(assert (= bs!33107 (and b!290961 b!290433)))

(assert (=> bs!33107 (= lambda!9999 lambda!9985)))

(declare-fun bs!33108 () Bool)

(assert (= bs!33108 (and b!290961 b!289852)))

(assert (=> bs!33108 (= lambda!9999 lambda!9952)))

(declare-fun bs!33109 () Bool)

(assert (= bs!33109 (and b!290961 b!289856)))

(assert (=> bs!33109 (not (= lambda!9999 lambda!9951))))

(declare-fun bs!33110 () Bool)

(assert (= bs!33110 (and b!290961 b!290164)))

(assert (=> bs!33110 (= lambda!9999 lambda!9966)))

(declare-fun bs!33111 () Bool)

(assert (= bs!33111 (and b!290961 b!290442)))

(assert (=> bs!33111 (= lambda!9999 lambda!9986)))

(declare-fun bs!33112 () Bool)

(assert (= bs!33112 (and b!290961 d!86240)))

(assert (=> bs!33112 (= lambda!9999 lambda!9957)))

(declare-fun bs!33113 () Bool)

(assert (= bs!33113 (and b!290961 d!86416)))

(assert (=> bs!33113 (not (= lambda!9999 lambda!9984))))

(declare-fun bs!33114 () Bool)

(assert (= bs!33114 (and b!290961 d!86334)))

(assert (=> bs!33114 (not (= lambda!9999 lambda!9977))))

(declare-fun bs!33115 () Bool)

(assert (= bs!33115 (and b!290961 b!290313)))

(assert (=> bs!33115 (= lambda!9999 lambda!9978)))

(declare-fun b!290973 () Bool)

(declare-fun e!181125 () Bool)

(assert (=> b!290973 (= e!181125 true)))

(declare-fun b!290972 () Bool)

(declare-fun e!181124 () Bool)

(assert (=> b!290972 (= e!181124 e!181125)))

(declare-fun b!290971 () Bool)

(declare-fun e!181123 () Bool)

(assert (=> b!290971 (= e!181123 e!181124)))

(assert (=> b!290961 e!181123))

(assert (= b!290972 b!290973))

(assert (= b!290971 b!290972))

(assert (= (and b!290961 ((_ is Cons!3954) rules!1920)) b!290971))

(assert (=> b!290973 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9999))))

(assert (=> b!290973 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!9999))))

(assert (=> b!290961 true))

(declare-fun e!181122 () List!3963)

(declare-fun e!181120 () List!3963)

(assert (=> b!290961 (= e!181122 e!181120)))

(declare-fun lt!123247 () Unit!5362)

(assert (=> b!290961 (= lt!123247 (forallContained!310 (dropList!184 lt!122463 0) lambda!9999 (h!9352 (dropList!184 lt!122463 0))))))

(declare-fun lt!123244 () List!3963)

(assert (=> b!290961 (= lt!123244 (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (t!40597 (dropList!184 lt!122463 0)) separatorToken!170))))

(declare-fun lt!123245 () Option!877)

(assert (=> b!290961 (= lt!123245 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 (charsOf!400 (h!9352 (dropList!184 lt!122463 0)))) lt!123244)))))

(declare-fun c!55114 () Bool)

(assert (=> b!290961 (= c!55114 (and ((_ is Some!876) lt!123245) (= (_1!2471 (v!14827 lt!123245)) (h!9352 (dropList!184 lt!122463 0)))))))

(declare-fun d!86746 () Bool)

(declare-fun c!55115 () Bool)

(assert (=> d!86746 (= c!55115 ((_ is Cons!3955) (dropList!184 lt!122463 0)))))

(assert (=> d!86746 (= (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (dropList!184 lt!122463 0) separatorToken!170) e!181122)))

(declare-fun b!290962 () Bool)

(declare-fun e!181121 () List!3963)

(declare-fun call!16513 () List!3963)

(assert (=> b!290962 (= e!181121 (++!1058 call!16513 lt!123244))))

(declare-fun bm!16505 () Bool)

(declare-fun call!16511 () List!3963)

(declare-fun call!16512 () List!3963)

(assert (=> bm!16505 (= call!16511 call!16512)))

(declare-fun c!55116 () Bool)

(declare-fun c!55112 () Bool)

(assert (=> bm!16505 (= c!55116 c!55112)))

(declare-fun b!290963 () Bool)

(assert (=> b!290963 (= e!181120 call!16513)))

(declare-fun bm!16506 () Bool)

(declare-fun call!16514 () BalanceConc!2680)

(assert (=> bm!16506 (= call!16514 (charsOf!400 (h!9352 (dropList!184 lt!122463 0))))))

(declare-fun b!290964 () Bool)

(declare-fun e!181119 () BalanceConc!2680)

(declare-fun call!16510 () BalanceConc!2680)

(assert (=> b!290964 (= e!181119 call!16510)))

(declare-fun bm!16507 () Bool)

(declare-fun c!55113 () Bool)

(assert (=> bm!16507 (= c!55113 c!55114)))

(declare-fun e!181118 () List!3963)

(assert (=> bm!16507 (= call!16513 (++!1058 e!181118 (ite c!55114 lt!123244 call!16511)))))

(declare-fun b!290965 () Bool)

(assert (=> b!290965 (= e!181121 Nil!3953)))

(assert (=> b!290965 (= (print!368 thiss!17480 (singletonSeq!303 (h!9352 (dropList!184 lt!122463 0)))) (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 (dropList!184 lt!122463 0))) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!123243 () Unit!5362)

(declare-fun Unit!5390 () Unit!5362)

(assert (=> b!290965 (= lt!123243 Unit!5390)))

(declare-fun lt!123246 () Unit!5362)

(assert (=> b!290965 (= lt!123246 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 call!16511 lt!123244))))

(assert (=> b!290965 false))

(declare-fun lt!123242 () Unit!5362)

(declare-fun Unit!5391 () Unit!5362)

(assert (=> b!290965 (= lt!123242 Unit!5391)))

(declare-fun b!290966 () Bool)

(assert (=> b!290966 (= e!181122 Nil!3953)))

(declare-fun b!290967 () Bool)

(assert (=> b!290967 (= e!181118 (list!1655 call!16510))))

(declare-fun b!290968 () Bool)

(assert (=> b!290968 (= e!181119 (charsOf!400 separatorToken!170))))

(declare-fun bm!16508 () Bool)

(assert (=> bm!16508 (= call!16510 call!16514)))

(declare-fun b!290969 () Bool)

(assert (=> b!290969 (= c!55112 (and ((_ is Some!876) lt!123245) (not (= (_1!2471 (v!14827 lt!123245)) (h!9352 (dropList!184 lt!122463 0))))))))

(assert (=> b!290969 (= e!181120 e!181121)))

(declare-fun bm!16509 () Bool)

(assert (=> bm!16509 (= call!16512 (list!1655 (ite c!55114 call!16514 e!181119)))))

(declare-fun b!290970 () Bool)

(assert (=> b!290970 (= e!181118 call!16512)))

(assert (= (and d!86746 c!55115) b!290961))

(assert (= (and d!86746 (not c!55115)) b!290966))

(assert (= (and b!290961 c!55114) b!290963))

(assert (= (and b!290961 (not c!55114)) b!290969))

(assert (= (and b!290969 c!55112) b!290962))

(assert (= (and b!290969 (not c!55112)) b!290965))

(assert (= (or b!290962 b!290965) bm!16508))

(assert (= (or b!290962 b!290965) bm!16505))

(assert (= (and bm!16505 c!55116) b!290968))

(assert (= (and bm!16505 (not c!55116)) b!290964))

(assert (= (or b!290963 bm!16508) bm!16506))

(assert (= (or b!290963 bm!16505) bm!16509))

(assert (= (or b!290963 b!290962) bm!16507))

(assert (= (and bm!16507 c!55113) b!290970))

(assert (= (and bm!16507 (not c!55113)) b!290967))

(declare-fun m!379399 () Bool)

(assert (=> b!290965 m!379399))

(assert (=> b!290965 m!379399))

(declare-fun m!379401 () Bool)

(assert (=> b!290965 m!379401))

(assert (=> b!290965 m!379399))

(declare-fun m!379403 () Bool)

(assert (=> b!290965 m!379403))

(declare-fun m!379405 () Bool)

(assert (=> b!290965 m!379405))

(declare-fun m!379407 () Bool)

(assert (=> bm!16506 m!379407))

(assert (=> b!290961 m!379407))

(assert (=> b!290961 m!378127))

(declare-fun m!379409 () Bool)

(assert (=> b!290961 m!379409))

(declare-fun m!379411 () Bool)

(assert (=> b!290961 m!379411))

(declare-fun m!379413 () Bool)

(assert (=> b!290961 m!379413))

(declare-fun m!379415 () Bool)

(assert (=> b!290961 m!379415))

(assert (=> b!290961 m!379415))

(declare-fun m!379417 () Bool)

(assert (=> b!290961 m!379417))

(assert (=> b!290961 m!379407))

(assert (=> b!290961 m!379413))

(declare-fun m!379419 () Bool)

(assert (=> bm!16507 m!379419))

(declare-fun m!379421 () Bool)

(assert (=> b!290967 m!379421))

(assert (=> b!290968 m!377157))

(declare-fun m!379423 () Bool)

(assert (=> bm!16509 m!379423))

(declare-fun m!379425 () Bool)

(assert (=> b!290962 m!379425))

(assert (=> d!86416 d!86746))

(declare-fun d!86756 () Bool)

(assert (=> d!86756 (= (list!1655 call!16428) (list!1659 (c!54877 call!16428)))))

(declare-fun bs!33116 () Bool)

(assert (= bs!33116 d!86756))

(declare-fun m!379427 () Bool)

(assert (=> bs!33116 m!379427))

(assert (=> b!290170 d!86756))

(declare-fun d!86758 () Bool)

(declare-fun lt!123255 () Token!1258)

(assert (=> d!86758 (contains!775 lt!122803 lt!123255)))

(declare-fun e!181142 () Token!1258)

(assert (=> d!86758 (= lt!123255 e!181142)))

(declare-fun c!55125 () Bool)

(assert (=> d!86758 (= c!55125 (= 0 0))))

(declare-fun e!181143 () Bool)

(assert (=> d!86758 e!181143))

(declare-fun res!132763 () Bool)

(assert (=> d!86758 (=> (not res!132763) (not e!181143))))

(assert (=> d!86758 (= res!132763 (<= 0 0))))

(assert (=> d!86758 (= (apply!851 lt!122803 0) lt!123255)))

(declare-fun b!290998 () Bool)

(assert (=> b!290998 (= e!181143 (< 0 (size!3178 lt!122803)))))

(declare-fun b!290999 () Bool)

(assert (=> b!290999 (= e!181142 (head!934 lt!122803))))

(declare-fun b!291000 () Bool)

(assert (=> b!291000 (= e!181142 (apply!851 (tail!516 lt!122803) (- 0 1)))))

(assert (= (and d!86758 res!132763) b!290998))

(assert (= (and d!86758 c!55125) b!290999))

(assert (= (and d!86758 (not c!55125)) b!291000))

(declare-fun m!379443 () Bool)

(assert (=> d!86758 m!379443))

(declare-fun m!379445 () Bool)

(assert (=> b!290998 m!379445))

(declare-fun m!379447 () Bool)

(assert (=> b!290999 m!379447))

(declare-fun m!379449 () Bool)

(assert (=> b!291000 m!379449))

(assert (=> b!291000 m!379449))

(declare-fun m!379451 () Bool)

(assert (=> b!291000 m!379451))

(assert (=> b!290433 d!86758))

(declare-fun b!291001 () Bool)

(declare-fun e!181146 () Option!876)

(declare-fun lt!123261 () Option!876)

(declare-fun lt!123258 () Option!876)

(assert (=> b!291001 (= e!181146 (ite (and ((_ is None!875) lt!123261) ((_ is None!875) lt!123258)) None!875 (ite ((_ is None!875) lt!123258) lt!123261 (ite ((_ is None!875) lt!123261) lt!123258 (ite (>= (size!3171 (_1!2469 (v!14826 lt!123261))) (size!3171 (_1!2469 (v!14826 lt!123258)))) lt!123261 lt!123258)))))))

(declare-fun call!16515 () Option!876)

(assert (=> b!291001 (= lt!123261 call!16515)))

(assert (=> b!291001 (= lt!123258 (maxPrefixZipperSequence!322 thiss!17480 (t!40596 rules!1920) (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))

(declare-fun b!291002 () Bool)

(declare-fun e!181144 () Bool)

(declare-fun e!181145 () Bool)

(assert (=> b!291002 (= e!181144 e!181145)))

(declare-fun res!132766 () Bool)

(assert (=> b!291002 (=> res!132766 e!181145)))

(declare-fun lt!123260 () Option!876)

(assert (=> b!291002 (= res!132766 (not (isDefined!715 lt!123260)))))

(declare-fun e!181147 () Bool)

(declare-fun b!291003 () Bool)

(assert (=> b!291003 (= e!181147 (= (list!1655 (_2!2469 (get!1337 lt!123260))) (_2!2471 (get!1336 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))))))

(declare-fun b!291004 () Bool)

(declare-fun res!132769 () Bool)

(assert (=> b!291004 (=> (not res!132769) (not e!181144))))

(declare-fun e!181149 () Bool)

(assert (=> b!291004 (= res!132769 e!181149)))

(declare-fun res!132765 () Bool)

(assert (=> b!291004 (=> res!132765 e!181149)))

(assert (=> b!291004 (= res!132765 (not (isDefined!715 lt!123260)))))

(declare-fun d!86764 () Bool)

(assert (=> d!86764 e!181144))

(declare-fun res!132767 () Bool)

(assert (=> d!86764 (=> (not res!132767) (not e!181144))))

(assert (=> d!86764 (= res!132767 (= (isDefined!715 lt!123260) (isDefined!716 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792))))))))

(assert (=> d!86764 (= lt!123260 e!181146)))

(declare-fun c!55126 () Bool)

(assert (=> d!86764 (= c!55126 (and ((_ is Cons!3954) rules!1920) ((_ is Nil!3954) (t!40596 rules!1920))))))

(declare-fun lt!123256 () Unit!5362)

(declare-fun lt!123262 () Unit!5362)

(assert (=> d!86764 (= lt!123256 lt!123262)))

(declare-fun lt!123259 () List!3963)

(declare-fun lt!123257 () List!3963)

(assert (=> d!86764 (isPrefix!421 lt!123259 lt!123257)))

(assert (=> d!86764 (= lt!123262 (lemmaIsPrefixRefl!227 lt!123259 lt!123257))))

(assert (=> d!86764 (= lt!123257 (list!1655 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))

(assert (=> d!86764 (= lt!123259 (list!1655 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))

(assert (=> d!86764 (rulesValidInductive!222 thiss!17480 rules!1920)))

(assert (=> d!86764 (= (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)) lt!123260)))

(declare-fun b!291005 () Bool)

(assert (=> b!291005 (= e!181149 e!181147)))

(declare-fun res!132764 () Bool)

(assert (=> b!291005 (=> (not res!132764) (not e!181147))))

(assert (=> b!291005 (= res!132764 (= (_1!2469 (get!1337 lt!123260)) (_1!2471 (get!1336 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))))))

(declare-fun bm!16510 () Bool)

(assert (=> bm!16510 (= call!16515 (maxPrefixOneRuleZipperSequence!131 thiss!17480 (h!9351 rules!1920) (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))

(declare-fun b!291006 () Bool)

(assert (=> b!291006 (= e!181146 call!16515)))

(declare-fun b!291007 () Bool)

(declare-fun e!181148 () Bool)

(assert (=> b!291007 (= e!181145 e!181148)))

(declare-fun res!132768 () Bool)

(assert (=> b!291007 (=> (not res!132768) (not e!181148))))

(assert (=> b!291007 (= res!132768 (= (_1!2469 (get!1337 lt!123260)) (_1!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))))))

(declare-fun b!291008 () Bool)

(assert (=> b!291008 (= e!181148 (= (list!1655 (_2!2469 (get!1337 lt!123260))) (_2!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792)))))))))

(assert (= (and d!86764 c!55126) b!291006))

(assert (= (and d!86764 (not c!55126)) b!291001))

(assert (= (or b!291006 b!291001) bm!16510))

(assert (= (and d!86764 res!132767) b!291004))

(assert (= (and b!291004 (not res!132765)) b!291005))

(assert (= (and b!291005 res!132764) b!291003))

(assert (= (and b!291004 res!132769) b!291002))

(assert (= (and b!291002 (not res!132766)) b!291007))

(assert (= (and b!291007 res!132768) b!291008))

(declare-fun m!379453 () Bool)

(assert (=> b!291003 m!379453))

(assert (=> b!291003 m!378099))

(declare-fun m!379455 () Bool)

(assert (=> b!291003 m!379455))

(assert (=> b!291003 m!379455))

(declare-fun m!379457 () Bool)

(assert (=> b!291003 m!379457))

(declare-fun m!379459 () Bool)

(assert (=> b!291003 m!379459))

(assert (=> b!291003 m!379457))

(declare-fun m!379461 () Bool)

(assert (=> b!291003 m!379461))

(declare-fun m!379463 () Bool)

(assert (=> b!291004 m!379463))

(assert (=> b!291005 m!379453))

(assert (=> b!291005 m!378099))

(assert (=> b!291005 m!379455))

(assert (=> b!291005 m!379455))

(assert (=> b!291005 m!379457))

(assert (=> b!291005 m!379457))

(assert (=> b!291005 m!379461))

(assert (=> bm!16510 m!378099))

(declare-fun m!379465 () Bool)

(assert (=> bm!16510 m!379465))

(assert (=> b!291008 m!379453))

(assert (=> b!291008 m!378099))

(assert (=> b!291008 m!379455))

(assert (=> b!291008 m!379455))

(declare-fun m!379467 () Bool)

(assert (=> b!291008 m!379467))

(assert (=> b!291008 m!379467))

(declare-fun m!379469 () Bool)

(assert (=> b!291008 m!379469))

(assert (=> b!291008 m!379459))

(assert (=> b!291001 m!378099))

(declare-fun m!379471 () Bool)

(assert (=> b!291001 m!379471))

(assert (=> d!86764 m!378099))

(assert (=> d!86764 m!379455))

(assert (=> d!86764 m!379463))

(assert (=> d!86764 m!379455))

(assert (=> d!86764 m!379457))

(declare-fun m!379473 () Bool)

(assert (=> d!86764 m!379473))

(assert (=> d!86764 m!379457))

(declare-fun m!379475 () Bool)

(assert (=> d!86764 m!379475))

(declare-fun m!379477 () Bool)

(assert (=> d!86764 m!379477))

(assert (=> d!86764 m!377481))

(assert (=> b!291002 m!379463))

(assert (=> b!291007 m!379453))

(assert (=> b!291007 m!378099))

(assert (=> b!291007 m!379455))

(assert (=> b!291007 m!379455))

(assert (=> b!291007 m!379467))

(assert (=> b!291007 m!379467))

(assert (=> b!291007 m!379469))

(assert (=> b!290433 d!86764))

(declare-fun d!86768 () Bool)

(declare-fun lt!123263 () BalanceConc!2680)

(assert (=> d!86768 (= (list!1655 lt!123263) (originalCharacters!800 (apply!850 lt!122463 0)))))

(assert (=> d!86768 (= lt!123263 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0)))) (value!25890 (apply!850 lt!122463 0))))))

(assert (=> d!86768 (= (charsOf!400 (apply!850 lt!122463 0)) lt!123263)))

(declare-fun b_lambda!9751 () Bool)

(assert (=> (not b_lambda!9751) (not d!86768)))

(declare-fun t!40731 () Bool)

(declare-fun tb!17085 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0))))) t!40731) tb!17085))

(declare-fun b!291026 () Bool)

(declare-fun e!181160 () Bool)

(declare-fun tp!105913 () Bool)

(assert (=> b!291026 (= e!181160 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0)))) (value!25890 (apply!850 lt!122463 0))))) tp!105913))))

(declare-fun result!20954 () Bool)

(assert (=> tb!17085 (= result!20954 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0)))) (value!25890 (apply!850 lt!122463 0)))) e!181160))))

(assert (= tb!17085 b!291026))

(declare-fun m!379497 () Bool)

(assert (=> b!291026 m!379497))

(declare-fun m!379501 () Bool)

(assert (=> tb!17085 m!379501))

(assert (=> d!86768 t!40731))

(declare-fun b_and!23665 () Bool)

(assert (= b_and!23591 (and (=> t!40731 result!20954) b_and!23665)))

(declare-fun tb!17087 () Bool)

(declare-fun t!40733 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0))))) t!40733) tb!17087))

(declare-fun result!20956 () Bool)

(assert (= result!20956 result!20954))

(assert (=> d!86768 t!40733))

(declare-fun b_and!23667 () Bool)

(assert (= b_and!23593 (and (=> t!40733 result!20956) b_and!23667)))

(declare-fun t!40735 () Bool)

(declare-fun tb!17089 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0))))) t!40735) tb!17089))

(declare-fun result!20958 () Bool)

(assert (= result!20958 result!20954))

(assert (=> d!86768 t!40735))

(declare-fun b_and!23669 () Bool)

(assert (= b_and!23595 (and (=> t!40735 result!20958) b_and!23669)))

(declare-fun t!40737 () Bool)

(declare-fun tb!17091 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0))))) t!40737) tb!17091))

(declare-fun result!20960 () Bool)

(assert (= result!20960 result!20954))

(assert (=> d!86768 t!40737))

(declare-fun b_and!23671 () Bool)

(assert (= b_and!23599 (and (=> t!40737 result!20960) b_and!23671)))

(declare-fun t!40739 () Bool)

(declare-fun tb!17093 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0))))) t!40739) tb!17093))

(declare-fun result!20962 () Bool)

(assert (= result!20962 result!20954))

(assert (=> d!86768 t!40739))

(declare-fun b_and!23673 () Bool)

(assert (= b_and!23603 (and (=> t!40739 result!20962) b_and!23673)))

(declare-fun m!379503 () Bool)

(assert (=> d!86768 m!379503))

(declare-fun m!379505 () Bool)

(assert (=> d!86768 m!379505))

(assert (=> b!290433 d!86768))

(declare-fun d!86774 () Bool)

(assert (=> d!86774 (= (head!934 (drop!237 lt!122803 0)) (apply!851 lt!122803 0))))

(declare-fun lt!123266 () Unit!5362)

(declare-fun choose!2613 (List!3965 Int) Unit!5362)

(assert (=> d!86774 (= lt!123266 (choose!2613 lt!122803 0))))

(declare-fun e!181163 () Bool)

(assert (=> d!86774 e!181163))

(declare-fun res!132775 () Bool)

(assert (=> d!86774 (=> (not res!132775) (not e!181163))))

(assert (=> d!86774 (= res!132775 (>= 0 0))))

(assert (=> d!86774 (= (lemmaDropApply!224 lt!122803 0) lt!123266)))

(declare-fun b!291029 () Bool)

(assert (=> b!291029 (= e!181163 (< 0 (size!3178 lt!122803)))))

(assert (= (and d!86774 res!132775) b!291029))

(assert (=> d!86774 m!378091))

(assert (=> d!86774 m!378091))

(assert (=> d!86774 m!378103))

(assert (=> d!86774 m!378107))

(declare-fun m!379509 () Bool)

(assert (=> d!86774 m!379509))

(assert (=> b!291029 m!379445))

(assert (=> b!290433 d!86774))

(declare-fun d!86778 () Bool)

(assert (=> d!86778 (= (head!934 (drop!237 lt!122803 0)) (h!9352 (drop!237 lt!122803 0)))))

(assert (=> b!290433 d!86778))

(assert (=> b!290433 d!86554))

(declare-fun d!86780 () Bool)

(declare-fun e!181184 () Bool)

(assert (=> d!86780 e!181184))

(declare-fun res!132785 () Bool)

(assert (=> d!86780 (=> (not res!132785) (not e!181184))))

(declare-fun lt!123295 () List!3965)

(declare-fun content!588 (List!3965) (InoxSet Token!1258))

(assert (=> d!86780 (= res!132785 (= ((_ map implies) (content!588 lt!123295) (content!588 lt!122803)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181185 () List!3965)

(assert (=> d!86780 (= lt!123295 e!181185)))

(declare-fun c!55147 () Bool)

(assert (=> d!86780 (= c!55147 ((_ is Nil!3955) lt!122803))))

(assert (=> d!86780 (= (drop!237 lt!122803 0) lt!123295)))

(declare-fun b!291065 () Bool)

(declare-fun e!181186 () Int)

(assert (=> b!291065 (= e!181186 0)))

(declare-fun b!291066 () Bool)

(declare-fun e!181188 () List!3965)

(assert (=> b!291066 (= e!181188 (drop!237 (t!40597 lt!122803) (- 0 1)))))

(declare-fun b!291067 () Bool)

(declare-fun call!16518 () Int)

(assert (=> b!291067 (= e!181186 (- call!16518 0))))

(declare-fun bm!16513 () Bool)

(assert (=> bm!16513 (= call!16518 (size!3178 lt!122803))))

(declare-fun b!291068 () Bool)

(assert (=> b!291068 (= e!181185 Nil!3955)))

(declare-fun b!291069 () Bool)

(assert (=> b!291069 (= e!181188 lt!122803)))

(declare-fun b!291070 () Bool)

(declare-fun e!181187 () Int)

(assert (=> b!291070 (= e!181187 e!181186)))

(declare-fun c!55148 () Bool)

(assert (=> b!291070 (= c!55148 (>= 0 call!16518))))

(declare-fun b!291071 () Bool)

(assert (=> b!291071 (= e!181187 call!16518)))

(declare-fun b!291072 () Bool)

(assert (=> b!291072 (= e!181184 (= (size!3178 lt!123295) e!181187))))

(declare-fun c!55149 () Bool)

(assert (=> b!291072 (= c!55149 (<= 0 0))))

(declare-fun b!291073 () Bool)

(assert (=> b!291073 (= e!181185 e!181188)))

(declare-fun c!55146 () Bool)

(assert (=> b!291073 (= c!55146 (<= 0 0))))

(assert (= (and d!86780 c!55147) b!291068))

(assert (= (and d!86780 (not c!55147)) b!291073))

(assert (= (and b!291073 c!55146) b!291069))

(assert (= (and b!291073 (not c!55146)) b!291066))

(assert (= (and d!86780 res!132785) b!291072))

(assert (= (and b!291072 c!55149) b!291071))

(assert (= (and b!291072 (not c!55149)) b!291070))

(assert (= (and b!291070 c!55148) b!291065))

(assert (= (and b!291070 (not c!55148)) b!291067))

(assert (= (or b!291071 b!291070 b!291067) bm!16513))

(declare-fun m!379621 () Bool)

(assert (=> d!86780 m!379621))

(declare-fun m!379625 () Bool)

(assert (=> d!86780 m!379625))

(declare-fun m!379629 () Bool)

(assert (=> b!291066 m!379629))

(assert (=> bm!16513 m!379445))

(declare-fun m!379631 () Bool)

(assert (=> b!291072 m!379631))

(assert (=> b!290433 d!86780))

(declare-fun d!86800 () Bool)

(assert (=> d!86800 (dynLambda!2110 lambda!9985 (apply!850 lt!122463 0))))

(declare-fun lt!123296 () Unit!5362)

(assert (=> d!86800 (= lt!123296 (choose!2606 (list!1658 lt!122463) lambda!9985 (apply!850 lt!122463 0)))))

(declare-fun e!181189 () Bool)

(assert (=> d!86800 e!181189))

(declare-fun res!132786 () Bool)

(assert (=> d!86800 (=> (not res!132786) (not e!181189))))

(assert (=> d!86800 (= res!132786 (forall!1024 (list!1658 lt!122463) lambda!9985))))

(assert (=> d!86800 (= (forallContained!310 (list!1658 lt!122463) lambda!9985 (apply!850 lt!122463 0)) lt!123296)))

(declare-fun b!291074 () Bool)

(assert (=> b!291074 (= e!181189 (contains!775 (list!1658 lt!122463) (apply!850 lt!122463 0)))))

(assert (= (and d!86800 res!132786) b!291074))

(declare-fun b_lambda!9753 () Bool)

(assert (=> (not b_lambda!9753) (not d!86800)))

(assert (=> d!86800 m!378077))

(declare-fun m!379635 () Bool)

(assert (=> d!86800 m!379635))

(assert (=> d!86800 m!377403))

(assert (=> d!86800 m!378077))

(declare-fun m!379637 () Bool)

(assert (=> d!86800 m!379637))

(assert (=> d!86800 m!377403))

(declare-fun m!379639 () Bool)

(assert (=> d!86800 m!379639))

(assert (=> b!291074 m!377403))

(assert (=> b!291074 m!378077))

(declare-fun m!379641 () Bool)

(assert (=> b!291074 m!379641))

(assert (=> b!290433 d!86800))

(declare-fun d!86804 () Bool)

(assert (=> d!86804 (= (tail!516 (drop!237 lt!122798 0)) (t!40597 (drop!237 lt!122798 0)))))

(assert (=> b!290433 d!86804))

(declare-fun d!86806 () Bool)

(declare-fun e!181193 () Bool)

(assert (=> d!86806 e!181193))

(declare-fun res!132794 () Bool)

(assert (=> d!86806 (=> (not res!132794) (not e!181193))))

(declare-fun lt!123302 () List!3965)

(assert (=> d!86806 (= res!132794 (= ((_ map implies) (content!588 lt!123302) (content!588 lt!122798)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181194 () List!3965)

(assert (=> d!86806 (= lt!123302 e!181194)))

(declare-fun c!55152 () Bool)

(assert (=> d!86806 (= c!55152 ((_ is Nil!3955) lt!122798))))

(assert (=> d!86806 (= (drop!237 lt!122798 0) lt!123302)))

(declare-fun b!291084 () Bool)

(declare-fun e!181195 () Int)

(assert (=> b!291084 (= e!181195 0)))

(declare-fun b!291085 () Bool)

(declare-fun e!181197 () List!3965)

(assert (=> b!291085 (= e!181197 (drop!237 (t!40597 lt!122798) (- 0 1)))))

(declare-fun b!291086 () Bool)

(declare-fun call!16520 () Int)

(assert (=> b!291086 (= e!181195 (- call!16520 0))))

(declare-fun bm!16515 () Bool)

(assert (=> bm!16515 (= call!16520 (size!3178 lt!122798))))

(declare-fun b!291087 () Bool)

(assert (=> b!291087 (= e!181194 Nil!3955)))

(declare-fun b!291088 () Bool)

(assert (=> b!291088 (= e!181197 lt!122798)))

(declare-fun b!291089 () Bool)

(declare-fun e!181196 () Int)

(assert (=> b!291089 (= e!181196 e!181195)))

(declare-fun c!55153 () Bool)

(assert (=> b!291089 (= c!55153 (>= 0 call!16520))))

(declare-fun b!291090 () Bool)

(assert (=> b!291090 (= e!181196 call!16520)))

(declare-fun b!291091 () Bool)

(assert (=> b!291091 (= e!181193 (= (size!3178 lt!123302) e!181196))))

(declare-fun c!55154 () Bool)

(assert (=> b!291091 (= c!55154 (<= 0 0))))

(declare-fun b!291092 () Bool)

(assert (=> b!291092 (= e!181194 e!181197)))

(declare-fun c!55151 () Bool)

(assert (=> b!291092 (= c!55151 (<= 0 0))))

(assert (= (and d!86806 c!55152) b!291087))

(assert (= (and d!86806 (not c!55152)) b!291092))

(assert (= (and b!291092 c!55151) b!291088))

(assert (= (and b!291092 (not c!55151)) b!291085))

(assert (= (and d!86806 res!132794) b!291091))

(assert (= (and b!291091 c!55154) b!291090))

(assert (= (and b!291091 (not c!55154)) b!291089))

(assert (= (and b!291089 c!55153) b!291084))

(assert (= (and b!291089 (not c!55153)) b!291086))

(assert (= (or b!291090 b!291089 b!291086) bm!16515))

(declare-fun m!379643 () Bool)

(assert (=> d!86806 m!379643))

(declare-fun m!379645 () Bool)

(assert (=> d!86806 m!379645))

(declare-fun m!379647 () Bool)

(assert (=> b!291085 m!379647))

(declare-fun m!379651 () Bool)

(assert (=> bm!16515 m!379651))

(declare-fun m!379655 () Bool)

(assert (=> b!291091 m!379655))

(assert (=> b!290433 d!86806))

(declare-fun d!86808 () Bool)

(assert (=> d!86808 (= (tail!516 (drop!237 lt!122798 0)) (drop!237 lt!122798 (+ 0 1)))))

(declare-fun lt!123305 () Unit!5362)

(declare-fun choose!2614 (List!3965 Int) Unit!5362)

(assert (=> d!86808 (= lt!123305 (choose!2614 lt!122798 0))))

(declare-fun e!181202 () Bool)

(assert (=> d!86808 e!181202))

(declare-fun res!132799 () Bool)

(assert (=> d!86808 (=> (not res!132799) (not e!181202))))

(assert (=> d!86808 (= res!132799 (>= 0 0))))

(assert (=> d!86808 (= (lemmaDropTail!216 lt!122798 0) lt!123305)))

(declare-fun b!291098 () Bool)

(assert (=> b!291098 (= e!181202 (< 0 (size!3178 lt!122798)))))

(assert (= (and d!86808 res!132799) b!291098))

(assert (=> d!86808 m!378085))

(assert (=> d!86808 m!378085))

(assert (=> d!86808 m!378087))

(assert (=> d!86808 m!378089))

(declare-fun m!379691 () Bool)

(assert (=> d!86808 m!379691))

(assert (=> b!291098 m!379651))

(assert (=> b!290433 d!86808))

(declare-fun bs!33124 () Bool)

(declare-fun d!86814 () Bool)

(assert (= bs!33124 (and d!86814 b!290883)))

(declare-fun lambda!10004 () Int)

(assert (=> bs!33124 (not (= lambda!10004 lambda!9995))))

(declare-fun bs!33125 () Bool)

(assert (= bs!33125 (and d!86814 b!290433)))

(assert (=> bs!33125 (not (= lambda!10004 lambda!9985))))

(declare-fun bs!33126 () Bool)

(assert (= bs!33126 (and d!86814 b!289852)))

(assert (=> bs!33126 (not (= lambda!10004 lambda!9952))))

(declare-fun bs!33127 () Bool)

(assert (= bs!33127 (and d!86814 b!289856)))

(assert (=> bs!33127 (= lambda!10004 lambda!9951)))

(declare-fun bs!33128 () Bool)

(assert (= bs!33128 (and d!86814 b!290164)))

(assert (=> bs!33128 (not (= lambda!10004 lambda!9966))))

(declare-fun bs!33129 () Bool)

(assert (= bs!33129 (and d!86814 b!290442)))

(assert (=> bs!33129 (not (= lambda!10004 lambda!9986))))

(declare-fun bs!33130 () Bool)

(assert (= bs!33130 (and d!86814 d!86240)))

(assert (=> bs!33130 (not (= lambda!10004 lambda!9957))))

(declare-fun bs!33131 () Bool)

(assert (= bs!33131 (and d!86814 d!86416)))

(assert (=> bs!33131 (= lambda!10004 lambda!9984)))

(declare-fun bs!33132 () Bool)

(assert (= bs!33132 (and d!86814 b!290961)))

(assert (=> bs!33132 (not (= lambda!10004 lambda!9999))))

(declare-fun bs!33133 () Bool)

(assert (= bs!33133 (and d!86814 d!86334)))

(assert (=> bs!33133 (= lambda!10004 lambda!9977)))

(declare-fun bs!33134 () Bool)

(assert (= bs!33134 (and d!86814 b!290313)))

(assert (=> bs!33134 (not (= lambda!10004 lambda!9978))))

(declare-fun bs!33135 () Bool)

(declare-fun b!291104 () Bool)

(assert (= bs!33135 (and b!291104 b!290883)))

(declare-fun lambda!10005 () Int)

(assert (=> bs!33135 (= lambda!10005 lambda!9995)))

(declare-fun bs!33136 () Bool)

(assert (= bs!33136 (and b!291104 b!290433)))

(assert (=> bs!33136 (= lambda!10005 lambda!9985)))

(declare-fun bs!33137 () Bool)

(assert (= bs!33137 (and b!291104 b!289852)))

(assert (=> bs!33137 (= lambda!10005 lambda!9952)))

(declare-fun bs!33138 () Bool)

(assert (= bs!33138 (and b!291104 b!289856)))

(assert (=> bs!33138 (not (= lambda!10005 lambda!9951))))

(declare-fun bs!33139 () Bool)

(assert (= bs!33139 (and b!291104 b!290164)))

(assert (=> bs!33139 (= lambda!10005 lambda!9966)))

(declare-fun bs!33140 () Bool)

(assert (= bs!33140 (and b!291104 b!290442)))

(assert (=> bs!33140 (= lambda!10005 lambda!9986)))

(declare-fun bs!33141 () Bool)

(assert (= bs!33141 (and b!291104 d!86240)))

(assert (=> bs!33141 (= lambda!10005 lambda!9957)))

(declare-fun bs!33142 () Bool)

(assert (= bs!33142 (and b!291104 d!86416)))

(assert (=> bs!33142 (not (= lambda!10005 lambda!9984))))

(declare-fun bs!33143 () Bool)

(assert (= bs!33143 (and b!291104 d!86814)))

(assert (=> bs!33143 (not (= lambda!10005 lambda!10004))))

(declare-fun bs!33144 () Bool)

(assert (= bs!33144 (and b!291104 b!290961)))

(assert (=> bs!33144 (= lambda!10005 lambda!9999)))

(declare-fun bs!33145 () Bool)

(assert (= bs!33145 (and b!291104 d!86334)))

(assert (=> bs!33145 (not (= lambda!10005 lambda!9977))))

(declare-fun bs!33146 () Bool)

(assert (= bs!33146 (and b!291104 b!290313)))

(assert (=> bs!33146 (= lambda!10005 lambda!9978)))

(declare-fun b!291120 () Bool)

(declare-fun e!181216 () Bool)

(assert (=> b!291120 (= e!181216 true)))

(declare-fun b!291119 () Bool)

(declare-fun e!181215 () Bool)

(assert (=> b!291119 (= e!181215 e!181216)))

(declare-fun b!291118 () Bool)

(declare-fun e!181214 () Bool)

(assert (=> b!291118 (= e!181214 e!181215)))

(assert (=> b!291104 e!181214))

(assert (= b!291119 b!291120))

(assert (= b!291118 b!291119))

(assert (= (and b!291104 ((_ is Cons!3954) rules!1920)) b!291118))

(assert (=> b!291120 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!10005))))

(assert (=> b!291120 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!10005))))

(assert (=> b!291104 true))

(declare-fun lt!123307 () BalanceConc!2680)

(assert (=> d!86814 (= (list!1655 lt!123307) (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (dropList!184 lt!122463 (+ 0 1)) separatorToken!170))))

(declare-fun e!181209 () BalanceConc!2680)

(assert (=> d!86814 (= lt!123307 e!181209)))

(declare-fun c!55155 () Bool)

(assert (=> d!86814 (= c!55155 (>= (+ 0 1) (size!3176 lt!122463)))))

(declare-fun lt!123318 () Unit!5362)

(assert (=> d!86814 (= lt!123318 (lemmaContentSubsetPreservesForall!128 (list!1658 lt!122463) (dropList!184 lt!122463 (+ 0 1)) lambda!10004))))

(declare-fun e!181204 () Bool)

(assert (=> d!86814 e!181204))

(declare-fun res!132801 () Bool)

(assert (=> d!86814 (=> (not res!132801) (not e!181204))))

(assert (=> d!86814 (= res!132801 (>= (+ 0 1) 0))))

(assert (=> d!86814 (= (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 (+ 0 1)) lt!123307)))

(declare-fun b!291099 () Bool)

(declare-fun e!181207 () Bool)

(declare-fun lt!123316 () Option!876)

(assert (=> b!291099 (= e!181207 (= (_1!2469 (v!14826 lt!123316)) (apply!850 lt!122463 (+ 0 1))))))

(declare-fun b!291100 () Bool)

(declare-fun e!181206 () BalanceConc!2680)

(declare-fun call!16525 () Token!1258)

(assert (=> b!291100 (= e!181206 (charsOf!400 call!16525))))

(declare-fun bm!16516 () Bool)

(declare-fun call!16524 () Token!1258)

(assert (=> bm!16516 (= call!16524 (apply!850 lt!122463 (+ 0 1)))))

(declare-fun bm!16517 () Bool)

(declare-fun call!16522 () BalanceConc!2680)

(declare-fun call!16521 () BalanceConc!2680)

(assert (=> bm!16517 (= call!16522 call!16521)))

(declare-fun b!291101 () Bool)

(declare-fun e!181205 () BalanceConc!2680)

(declare-fun call!16523 () BalanceConc!2680)

(declare-fun lt!123308 () BalanceConc!2680)

(assert (=> b!291101 (= e!181205 (++!1060 call!16523 lt!123308))))

(declare-fun b!291102 () Bool)

(declare-fun e!181203 () Bool)

(assert (=> b!291102 (= e!181203 (not (= (_1!2469 (v!14826 lt!123316)) call!16524)))))

(declare-fun c!55157 () Bool)

(declare-fun c!55158 () Bool)

(declare-fun bm!16518 () Bool)

(assert (=> bm!16518 (= call!16521 (charsOf!400 (ite c!55157 call!16524 (ite c!55158 separatorToken!170 call!16525))))))

(declare-fun b!291103 () Bool)

(assert (=> b!291103 (= c!55158 e!181203)))

(declare-fun res!132802 () Bool)

(assert (=> b!291103 (=> (not res!132802) (not e!181203))))

(assert (=> b!291103 (= res!132802 ((_ is Some!875) lt!123316))))

(declare-fun e!181208 () BalanceConc!2680)

(assert (=> b!291103 (= e!181208 e!181205)))

(assert (=> b!291104 (= e!181209 e!181208)))

(declare-fun lt!123319 () List!3965)

(assert (=> b!291104 (= lt!123319 (list!1658 lt!122463))))

(declare-fun lt!123309 () Unit!5362)

(assert (=> b!291104 (= lt!123309 (lemmaDropApply!224 lt!123319 (+ 0 1)))))

(assert (=> b!291104 (= (head!934 (drop!237 lt!123319 (+ 0 1))) (apply!851 lt!123319 (+ 0 1)))))

(declare-fun lt!123306 () Unit!5362)

(assert (=> b!291104 (= lt!123306 lt!123309)))

(declare-fun lt!123314 () List!3965)

(assert (=> b!291104 (= lt!123314 (list!1658 lt!122463))))

(declare-fun lt!123312 () Unit!5362)

(assert (=> b!291104 (= lt!123312 (lemmaDropTail!216 lt!123314 (+ 0 1)))))

(assert (=> b!291104 (= (tail!516 (drop!237 lt!123314 (+ 0 1))) (drop!237 lt!123314 (+ 0 1 1)))))

(declare-fun lt!123317 () Unit!5362)

(assert (=> b!291104 (= lt!123317 lt!123312)))

(declare-fun lt!123310 () Unit!5362)

(assert (=> b!291104 (= lt!123310 (forallContained!310 (list!1658 lt!122463) lambda!10005 (apply!850 lt!122463 (+ 0 1))))))

(assert (=> b!291104 (= lt!123308 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!291104 (= lt!123316 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (++!1060 (charsOf!400 (apply!850 lt!122463 (+ 0 1))) lt!123308)))))

(declare-fun res!132800 () Bool)

(assert (=> b!291104 (= res!132800 ((_ is Some!875) lt!123316))))

(assert (=> b!291104 (=> (not res!132800) (not e!181207))))

(assert (=> b!291104 (= c!55157 e!181207)))

(declare-fun bm!16519 () Bool)

(declare-fun c!55156 () Bool)

(assert (=> bm!16519 (= c!55156 c!55157)))

(assert (=> bm!16519 (= call!16523 (++!1060 e!181206 (ite c!55157 lt!123308 call!16522)))))

(declare-fun b!291105 () Bool)

(assert (=> b!291105 (= e!181209 (BalanceConc!2681 Empty!1336))))

(declare-fun b!291106 () Bool)

(assert (=> b!291106 (= e!181204 (<= (+ 0 1) (size!3176 lt!122463)))))

(declare-fun b!291107 () Bool)

(assert (=> b!291107 (= e!181208 call!16523)))

(declare-fun b!291108 () Bool)

(assert (=> b!291108 (= e!181205 (BalanceConc!2681 Empty!1336))))

(assert (=> b!291108 (= (print!368 thiss!17480 (singletonSeq!303 call!16525)) (printTailRec!329 thiss!17480 (singletonSeq!303 call!16525) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!123315 () Unit!5362)

(declare-fun Unit!5394 () Unit!5362)

(assert (=> b!291108 (= lt!123315 Unit!5394)))

(declare-fun lt!123313 () Unit!5362)

(assert (=> b!291108 (= lt!123313 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 (list!1655 call!16522) (list!1655 lt!123308)))))

(assert (=> b!291108 false))

(declare-fun lt!123311 () Unit!5362)

(declare-fun Unit!5395 () Unit!5362)

(assert (=> b!291108 (= lt!123311 Unit!5395)))

(declare-fun b!291109 () Bool)

(assert (=> b!291109 (= e!181206 call!16521)))

(declare-fun bm!16520 () Bool)

(assert (=> bm!16520 (= call!16525 call!16524)))

(assert (= (and d!86814 res!132801) b!291106))

(assert (= (and d!86814 c!55155) b!291105))

(assert (= (and d!86814 (not c!55155)) b!291104))

(assert (= (and b!291104 res!132800) b!291099))

(assert (= (and b!291104 c!55157) b!291107))

(assert (= (and b!291104 (not c!55157)) b!291103))

(assert (= (and b!291103 res!132802) b!291102))

(assert (= (and b!291103 c!55158) b!291101))

(assert (= (and b!291103 (not c!55158)) b!291108))

(assert (= (or b!291101 b!291108) bm!16520))

(assert (= (or b!291101 b!291108) bm!16517))

(assert (= (or b!291107 b!291102 bm!16520) bm!16516))

(assert (= (or b!291107 bm!16517) bm!16518))

(assert (= (or b!291107 b!291101) bm!16519))

(assert (= (and bm!16519 c!55156) b!291109))

(assert (= (and bm!16519 (not c!55156)) b!291100))

(declare-fun m!379739 () Bool)

(assert (=> bm!16516 m!379739))

(assert (=> b!291106 m!378079))

(declare-fun m!379741 () Bool)

(assert (=> b!291101 m!379741))

(assert (=> b!291099 m!379739))

(declare-fun m!379743 () Bool)

(assert (=> b!291100 m!379743))

(declare-fun m!379745 () Bool)

(assert (=> b!291104 m!379745))

(declare-fun m!379747 () Bool)

(assert (=> b!291104 m!379747))

(assert (=> b!291104 m!377403))

(declare-fun m!379749 () Bool)

(assert (=> b!291104 m!379749))

(declare-fun m!379751 () Bool)

(assert (=> b!291104 m!379751))

(declare-fun m!379753 () Bool)

(assert (=> b!291104 m!379753))

(declare-fun m!379755 () Bool)

(assert (=> b!291104 m!379755))

(assert (=> b!291104 m!379739))

(declare-fun m!379757 () Bool)

(assert (=> b!291104 m!379757))

(declare-fun m!379759 () Bool)

(assert (=> b!291104 m!379759))

(declare-fun m!379761 () Bool)

(assert (=> b!291104 m!379761))

(assert (=> b!291104 m!379751))

(declare-fun m!379763 () Bool)

(assert (=> b!291104 m!379763))

(assert (=> b!291104 m!379757))

(assert (=> b!291104 m!379759))

(assert (=> b!291104 m!379739))

(declare-fun m!379769 () Bool)

(assert (=> b!291104 m!379769))

(assert (=> b!291104 m!379745))

(declare-fun m!379771 () Bool)

(assert (=> b!291104 m!379771))

(assert (=> b!291104 m!377403))

(assert (=> b!291104 m!379739))

(declare-fun m!379777 () Bool)

(assert (=> b!291104 m!379777))

(declare-fun m!379781 () Bool)

(assert (=> bm!16519 m!379781))

(declare-fun m!379783 () Bool)

(assert (=> b!291108 m!379783))

(declare-fun m!379787 () Bool)

(assert (=> b!291108 m!379787))

(declare-fun m!379789 () Bool)

(assert (=> b!291108 m!379789))

(assert (=> b!291108 m!379787))

(assert (=> b!291108 m!379787))

(declare-fun m!379791 () Bool)

(assert (=> b!291108 m!379791))

(declare-fun m!379793 () Bool)

(assert (=> b!291108 m!379793))

(assert (=> b!291108 m!379783))

(declare-fun m!379795 () Bool)

(assert (=> b!291108 m!379795))

(assert (=> b!291108 m!379793))

(assert (=> d!86814 m!378079))

(assert (=> d!86814 m!377403))

(declare-fun m!379797 () Bool)

(assert (=> d!86814 m!379797))

(declare-fun m!379799 () Bool)

(assert (=> d!86814 m!379799))

(declare-fun m!379801 () Bool)

(assert (=> d!86814 m!379801))

(assert (=> d!86814 m!379799))

(assert (=> d!86814 m!377403))

(assert (=> d!86814 m!379799))

(declare-fun m!379807 () Bool)

(assert (=> d!86814 m!379807))

(declare-fun m!379811 () Bool)

(assert (=> bm!16518 m!379811))

(assert (=> b!290433 d!86814))

(declare-fun b!291164 () Bool)

(declare-fun res!132834 () Bool)

(declare-fun e!181236 () Bool)

(assert (=> b!291164 (=> (not res!132834) (not e!181236))))

(declare-fun height!171 (Conc!1336) Int)

(declare-fun ++!1063 (Conc!1336 Conc!1336) Conc!1336)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!291164 (= res!132834 (>= (height!171 (++!1063 (c!54877 (charsOf!400 (apply!850 lt!122463 0))) (c!54877 lt!122792))) (max!0 (height!171 (c!54877 (charsOf!400 (apply!850 lt!122463 0)))) (height!171 (c!54877 lt!122792)))))))

(declare-fun b!291162 () Bool)

(declare-fun res!132837 () Bool)

(assert (=> b!291162 (=> (not res!132837) (not e!181236))))

(declare-fun isBalanced!381 (Conc!1336) Bool)

(assert (=> b!291162 (= res!132837 (isBalanced!381 (++!1063 (c!54877 (charsOf!400 (apply!850 lt!122463 0))) (c!54877 lt!122792))))))

(declare-fun d!86830 () Bool)

(assert (=> d!86830 e!181236))

(declare-fun res!132836 () Bool)

(assert (=> d!86830 (=> (not res!132836) (not e!181236))))

(declare-fun appendAssocInst!71 (Conc!1336 Conc!1336) Bool)

(assert (=> d!86830 (= res!132836 (appendAssocInst!71 (c!54877 (charsOf!400 (apply!850 lt!122463 0))) (c!54877 lt!122792)))))

(declare-fun lt!123343 () BalanceConc!2680)

(assert (=> d!86830 (= lt!123343 (BalanceConc!2681 (++!1063 (c!54877 (charsOf!400 (apply!850 lt!122463 0))) (c!54877 lt!122792))))))

(assert (=> d!86830 (= (++!1060 (charsOf!400 (apply!850 lt!122463 0)) lt!122792) lt!123343)))

(declare-fun b!291165 () Bool)

(assert (=> b!291165 (= e!181236 (= (list!1655 lt!123343) (++!1058 (list!1655 (charsOf!400 (apply!850 lt!122463 0))) (list!1655 lt!122792))))))

(declare-fun b!291163 () Bool)

(declare-fun res!132835 () Bool)

(assert (=> b!291163 (=> (not res!132835) (not e!181236))))

(assert (=> b!291163 (= res!132835 (<= (height!171 (++!1063 (c!54877 (charsOf!400 (apply!850 lt!122463 0))) (c!54877 lt!122792))) (+ (max!0 (height!171 (c!54877 (charsOf!400 (apply!850 lt!122463 0)))) (height!171 (c!54877 lt!122792))) 1)))))

(assert (= (and d!86830 res!132836) b!291162))

(assert (= (and b!291162 res!132837) b!291163))

(assert (= (and b!291163 res!132835) b!291164))

(assert (= (and b!291164 res!132834) b!291165))

(declare-fun m!379893 () Bool)

(assert (=> b!291163 m!379893))

(declare-fun m!379895 () Bool)

(assert (=> b!291163 m!379895))

(declare-fun m!379897 () Bool)

(assert (=> b!291163 m!379897))

(assert (=> b!291163 m!379893))

(assert (=> b!291163 m!379897))

(declare-fun m!379899 () Bool)

(assert (=> b!291163 m!379899))

(assert (=> b!291163 m!379895))

(declare-fun m!379901 () Bool)

(assert (=> b!291163 m!379901))

(declare-fun m!379903 () Bool)

(assert (=> b!291165 m!379903))

(assert (=> b!291165 m!378097))

(declare-fun m!379905 () Bool)

(assert (=> b!291165 m!379905))

(assert (=> b!291165 m!378113))

(assert (=> b!291165 m!379905))

(assert (=> b!291165 m!378113))

(declare-fun m!379907 () Bool)

(assert (=> b!291165 m!379907))

(assert (=> b!291164 m!379893))

(assert (=> b!291164 m!379895))

(assert (=> b!291164 m!379897))

(assert (=> b!291164 m!379893))

(assert (=> b!291164 m!379897))

(assert (=> b!291164 m!379899))

(assert (=> b!291164 m!379895))

(assert (=> b!291164 m!379901))

(assert (=> b!291162 m!379895))

(assert (=> b!291162 m!379895))

(declare-fun m!379919 () Bool)

(assert (=> b!291162 m!379919))

(declare-fun m!379921 () Bool)

(assert (=> d!86830 m!379921))

(assert (=> d!86830 m!379895))

(assert (=> b!290433 d!86830))

(declare-fun d!86852 () Bool)

(declare-fun e!181238 () Bool)

(assert (=> d!86852 e!181238))

(declare-fun res!132842 () Bool)

(assert (=> d!86852 (=> (not res!132842) (not e!181238))))

(declare-fun lt!123345 () List!3965)

(assert (=> d!86852 (= res!132842 (= ((_ map implies) (content!588 lt!123345) (content!588 lt!122798)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181239 () List!3965)

(assert (=> d!86852 (= lt!123345 e!181239)))

(declare-fun c!55172 () Bool)

(assert (=> d!86852 (= c!55172 ((_ is Nil!3955) lt!122798))))

(assert (=> d!86852 (= (drop!237 lt!122798 (+ 0 1)) lt!123345)))

(declare-fun b!291170 () Bool)

(declare-fun e!181240 () Int)

(assert (=> b!291170 (= e!181240 0)))

(declare-fun b!291171 () Bool)

(declare-fun e!181242 () List!3965)

(assert (=> b!291171 (= e!181242 (drop!237 (t!40597 lt!122798) (- (+ 0 1) 1)))))

(declare-fun b!291172 () Bool)

(declare-fun call!16527 () Int)

(assert (=> b!291172 (= e!181240 (- call!16527 (+ 0 1)))))

(declare-fun bm!16522 () Bool)

(assert (=> bm!16522 (= call!16527 (size!3178 lt!122798))))

(declare-fun b!291173 () Bool)

(assert (=> b!291173 (= e!181239 Nil!3955)))

(declare-fun b!291174 () Bool)

(assert (=> b!291174 (= e!181242 lt!122798)))

(declare-fun b!291175 () Bool)

(declare-fun e!181241 () Int)

(assert (=> b!291175 (= e!181241 e!181240)))

(declare-fun c!55173 () Bool)

(assert (=> b!291175 (= c!55173 (>= (+ 0 1) call!16527))))

(declare-fun b!291176 () Bool)

(assert (=> b!291176 (= e!181241 call!16527)))

(declare-fun b!291177 () Bool)

(assert (=> b!291177 (= e!181238 (= (size!3178 lt!123345) e!181241))))

(declare-fun c!55174 () Bool)

(assert (=> b!291177 (= c!55174 (<= (+ 0 1) 0))))

(declare-fun b!291178 () Bool)

(assert (=> b!291178 (= e!181239 e!181242)))

(declare-fun c!55171 () Bool)

(assert (=> b!291178 (= c!55171 (<= (+ 0 1) 0))))

(assert (= (and d!86852 c!55172) b!291173))

(assert (= (and d!86852 (not c!55172)) b!291178))

(assert (= (and b!291178 c!55171) b!291174))

(assert (= (and b!291178 (not c!55171)) b!291171))

(assert (= (and d!86852 res!132842) b!291177))

(assert (= (and b!291177 c!55174) b!291176))

(assert (= (and b!291177 (not c!55174)) b!291175))

(assert (= (and b!291175 c!55173) b!291170))

(assert (= (and b!291175 (not c!55173)) b!291172))

(assert (= (or b!291176 b!291175 b!291172) bm!16522))

(declare-fun m!379941 () Bool)

(assert (=> d!86852 m!379941))

(assert (=> d!86852 m!379645))

(declare-fun m!379943 () Bool)

(assert (=> b!291171 m!379943))

(assert (=> bm!16522 m!379651))

(declare-fun m!379945 () Bool)

(assert (=> b!291177 m!379945))

(assert (=> b!290433 d!86852))

(declare-fun d!86860 () Bool)

(declare-fun lt!123349 () Token!1258)

(assert (=> d!86860 (= lt!123349 (apply!851 (list!1658 lt!122463) 0))))

(declare-fun apply!854 (Conc!1337 Int) Token!1258)

(assert (=> d!86860 (= lt!123349 (apply!854 (c!54879 lt!122463) 0))))

(declare-fun e!181247 () Bool)

(assert (=> d!86860 e!181247))

(declare-fun res!132847 () Bool)

(assert (=> d!86860 (=> (not res!132847) (not e!181247))))

(assert (=> d!86860 (= res!132847 (<= 0 0))))

(assert (=> d!86860 (= (apply!850 lt!122463 0) lt!123349)))

(declare-fun b!291185 () Bool)

(assert (=> b!291185 (= e!181247 (< 0 (size!3176 lt!122463)))))

(assert (= (and d!86860 res!132847) b!291185))

(assert (=> d!86860 m!377403))

(assert (=> d!86860 m!377403))

(declare-fun m!379949 () Bool)

(assert (=> d!86860 m!379949))

(declare-fun m!379951 () Bool)

(assert (=> d!86860 m!379951))

(assert (=> b!291185 m!378079))

(assert (=> b!290433 d!86860))

(declare-fun d!86864 () Bool)

(assert (=> d!86864 (= (isDefined!715 lt!122551) (not (isEmpty!2634 lt!122551)))))

(declare-fun bs!33155 () Bool)

(assert (= bs!33155 d!86864))

(declare-fun m!379953 () Bool)

(assert (=> bs!33155 m!379953))

(assert (=> b!290065 d!86864))

(declare-fun d!86866 () Bool)

(declare-fun e!181250 () Bool)

(assert (=> d!86866 e!181250))

(declare-fun res!132850 () Bool)

(assert (=> d!86866 (=> (not res!132850) (not e!181250))))

(declare-fun lt!123352 () BalanceConc!2680)

(assert (=> d!86866 (= res!132850 (= (list!1655 lt!123352) lt!122466))))

(declare-fun fromList!192 (List!3963) Conc!1336)

(assert (=> d!86866 (= lt!123352 (BalanceConc!2681 (fromList!192 lt!122466)))))

(assert (=> d!86866 (= (fromListB!362 lt!122466) lt!123352)))

(declare-fun b!291188 () Bool)

(assert (=> b!291188 (= e!181250 (isBalanced!381 (fromList!192 lt!122466)))))

(assert (= (and d!86866 res!132850) b!291188))

(declare-fun m!379955 () Bool)

(assert (=> d!86866 m!379955))

(declare-fun m!379957 () Bool)

(assert (=> d!86866 m!379957))

(assert (=> b!291188 m!379957))

(assert (=> b!291188 m!379957))

(declare-fun m!379959 () Bool)

(assert (=> b!291188 m!379959))

(assert (=> d!86440 d!86866))

(declare-fun d!86868 () Bool)

(declare-fun res!132855 () Bool)

(declare-fun e!181255 () Bool)

(assert (=> d!86868 (=> res!132855 e!181255)))

(assert (=> d!86868 (= res!132855 ((_ is Nil!3954) rules!1920))))

(assert (=> d!86868 (= (noDuplicateTag!246 thiss!17480 rules!1920 Nil!3957) e!181255)))

(declare-fun b!291193 () Bool)

(declare-fun e!181256 () Bool)

(assert (=> b!291193 (= e!181255 e!181256)))

(declare-fun res!132856 () Bool)

(assert (=> b!291193 (=> (not res!132856) (not e!181256))))

(declare-fun contains!779 (List!3967 String!4975) Bool)

(assert (=> b!291193 (= res!132856 (not (contains!779 Nil!3957 (tag!973 (h!9351 rules!1920)))))))

(declare-fun b!291194 () Bool)

(assert (=> b!291194 (= e!181256 (noDuplicateTag!246 thiss!17480 (t!40596 rules!1920) (Cons!3957 (tag!973 (h!9351 rules!1920)) Nil!3957)))))

(assert (= (and d!86868 (not res!132855)) b!291193))

(assert (= (and b!291193 res!132856) b!291194))

(declare-fun m!379961 () Bool)

(assert (=> b!291193 m!379961))

(declare-fun m!379963 () Bool)

(assert (=> b!291194 m!379963))

(assert (=> b!290006 d!86868))

(declare-fun d!86870 () Bool)

(assert (=> d!86870 (= (list!1655 lt!122772) (list!1659 (c!54877 lt!122772)))))

(declare-fun bs!33156 () Bool)

(assert (= bs!33156 d!86870))

(declare-fun m!379965 () Bool)

(assert (=> bs!33156 m!379965))

(assert (=> d!86390 d!86870))

(declare-fun d!86872 () Bool)

(declare-fun e!181257 () Bool)

(assert (=> d!86872 e!181257))

(declare-fun res!132857 () Bool)

(assert (=> d!86872 (=> (not res!132857) (not e!181257))))

(declare-fun lt!123353 () BalanceConc!2682)

(assert (=> d!86872 (= res!132857 (= (list!1658 lt!123353) tokens!465))))

(assert (=> d!86872 (= lt!123353 (BalanceConc!2683 (fromList!191 tokens!465)))))

(assert (=> d!86872 (= (fromListB!361 tokens!465) lt!123353)))

(declare-fun b!291195 () Bool)

(assert (=> b!291195 (= e!181257 (isBalanced!379 (fromList!191 tokens!465)))))

(assert (= (and d!86872 res!132857) b!291195))

(declare-fun m!379967 () Bool)

(assert (=> d!86872 m!379967))

(declare-fun m!379969 () Bool)

(assert (=> d!86872 m!379969))

(assert (=> b!291195 m!379969))

(assert (=> b!291195 m!379969))

(declare-fun m!379971 () Bool)

(assert (=> b!291195 m!379971))

(assert (=> d!86280 d!86872))

(declare-fun b!291198 () Bool)

(declare-fun res!132859 () Bool)

(declare-fun e!181258 () Bool)

(assert (=> b!291198 (=> (not res!132859) (not e!181258))))

(declare-fun lt!123354 () List!3963)

(assert (=> b!291198 (= res!132859 (= (size!3175 lt!123354) (+ (size!3175 call!16431) (size!3175 lt!122644))))))

(declare-fun b!291196 () Bool)

(declare-fun e!181259 () List!3963)

(assert (=> b!291196 (= e!181259 lt!122644)))

(declare-fun d!86874 () Bool)

(assert (=> d!86874 e!181258))

(declare-fun res!132858 () Bool)

(assert (=> d!86874 (=> (not res!132858) (not e!181258))))

(assert (=> d!86874 (= res!132858 (= (content!585 lt!123354) ((_ map or) (content!585 call!16431) (content!585 lt!122644))))))

(assert (=> d!86874 (= lt!123354 e!181259)))

(declare-fun c!55177 () Bool)

(assert (=> d!86874 (= c!55177 ((_ is Nil!3953) call!16431))))

(assert (=> d!86874 (= (++!1058 call!16431 lt!122644) lt!123354)))

(declare-fun b!291197 () Bool)

(assert (=> b!291197 (= e!181259 (Cons!3953 (h!9350 call!16431) (++!1058 (t!40595 call!16431) lt!122644)))))

(declare-fun b!291199 () Bool)

(assert (=> b!291199 (= e!181258 (or (not (= lt!122644 Nil!3953)) (= lt!123354 call!16431)))))

(assert (= (and d!86874 c!55177) b!291196))

(assert (= (and d!86874 (not c!55177)) b!291197))

(assert (= (and d!86874 res!132858) b!291198))

(assert (= (and b!291198 res!132859) b!291199))

(declare-fun m!379973 () Bool)

(assert (=> b!291198 m!379973))

(declare-fun m!379975 () Bool)

(assert (=> b!291198 m!379975))

(declare-fun m!379977 () Bool)

(assert (=> b!291198 m!379977))

(declare-fun m!379979 () Bool)

(assert (=> d!86874 m!379979))

(declare-fun m!379981 () Bool)

(assert (=> d!86874 m!379981))

(declare-fun m!379983 () Bool)

(assert (=> d!86874 m!379983))

(declare-fun m!379985 () Bool)

(assert (=> b!291197 m!379985))

(assert (=> b!290165 d!86874))

(assert (=> b!290428 d!86860))

(declare-fun d!86876 () Bool)

(declare-fun lt!123355 () Int)

(assert (=> d!86876 (>= lt!123355 0)))

(declare-fun e!181260 () Int)

(assert (=> d!86876 (= lt!123355 e!181260)))

(declare-fun c!55178 () Bool)

(assert (=> d!86876 (= c!55178 ((_ is Nil!3953) lt!122559))))

(assert (=> d!86876 (= (size!3175 lt!122559) lt!123355)))

(declare-fun b!291200 () Bool)

(assert (=> b!291200 (= e!181260 0)))

(declare-fun b!291201 () Bool)

(assert (=> b!291201 (= e!181260 (+ 1 (size!3175 (t!40595 lt!122559))))))

(assert (= (and d!86876 c!55178) b!291200))

(assert (= (and d!86876 (not c!55178)) b!291201))

(declare-fun m!379987 () Bool)

(assert (=> b!291201 m!379987))

(assert (=> b!290083 d!86876))

(assert (=> b!290083 d!86588))

(declare-fun d!86878 () Bool)

(declare-fun lt!123356 () Int)

(assert (=> d!86878 (>= lt!123356 0)))

(declare-fun e!181261 () Int)

(assert (=> d!86878 (= lt!123356 e!181261)))

(declare-fun c!55179 () Bool)

(assert (=> d!86878 (= c!55179 ((_ is Nil!3953) lt!122458))))

(assert (=> d!86878 (= (size!3175 lt!122458) lt!123356)))

(declare-fun b!291202 () Bool)

(assert (=> b!291202 (= e!181261 0)))

(declare-fun b!291203 () Bool)

(assert (=> b!291203 (= e!181261 (+ 1 (size!3175 (t!40595 lt!122458))))))

(assert (= (and d!86878 c!55179) b!291202))

(assert (= (and d!86878 (not c!55179)) b!291203))

(declare-fun m!379989 () Bool)

(assert (=> b!291203 m!379989))

(assert (=> b!290083 d!86878))

(declare-fun b!291206 () Bool)

(declare-fun res!132860 () Bool)

(declare-fun e!181262 () Bool)

(assert (=> b!291206 (=> (not res!132860) (not e!181262))))

(assert (=> b!291206 (= res!132860 (>= (height!171 (++!1063 (c!54877 call!16478) (c!54877 lt!122792))) (max!0 (height!171 (c!54877 call!16478)) (height!171 (c!54877 lt!122792)))))))

(declare-fun b!291204 () Bool)

(declare-fun res!132863 () Bool)

(assert (=> b!291204 (=> (not res!132863) (not e!181262))))

(assert (=> b!291204 (= res!132863 (isBalanced!381 (++!1063 (c!54877 call!16478) (c!54877 lt!122792))))))

(declare-fun d!86880 () Bool)

(assert (=> d!86880 e!181262))

(declare-fun res!132862 () Bool)

(assert (=> d!86880 (=> (not res!132862) (not e!181262))))

(assert (=> d!86880 (= res!132862 (appendAssocInst!71 (c!54877 call!16478) (c!54877 lt!122792)))))

(declare-fun lt!123357 () BalanceConc!2680)

(assert (=> d!86880 (= lt!123357 (BalanceConc!2681 (++!1063 (c!54877 call!16478) (c!54877 lt!122792))))))

(assert (=> d!86880 (= (++!1060 call!16478 lt!122792) lt!123357)))

(declare-fun b!291207 () Bool)

(assert (=> b!291207 (= e!181262 (= (list!1655 lt!123357) (++!1058 (list!1655 call!16478) (list!1655 lt!122792))))))

(declare-fun b!291205 () Bool)

(declare-fun res!132861 () Bool)

(assert (=> b!291205 (=> (not res!132861) (not e!181262))))

(assert (=> b!291205 (= res!132861 (<= (height!171 (++!1063 (c!54877 call!16478) (c!54877 lt!122792))) (+ (max!0 (height!171 (c!54877 call!16478)) (height!171 (c!54877 lt!122792))) 1)))))

(assert (= (and d!86880 res!132862) b!291204))

(assert (= (and b!291204 res!132863) b!291205))

(assert (= (and b!291205 res!132861) b!291206))

(assert (= (and b!291206 res!132860) b!291207))

(declare-fun m!379991 () Bool)

(assert (=> b!291205 m!379991))

(declare-fun m!379993 () Bool)

(assert (=> b!291205 m!379993))

(assert (=> b!291205 m!379897))

(assert (=> b!291205 m!379991))

(assert (=> b!291205 m!379897))

(declare-fun m!379995 () Bool)

(assert (=> b!291205 m!379995))

(assert (=> b!291205 m!379993))

(declare-fun m!379997 () Bool)

(assert (=> b!291205 m!379997))

(declare-fun m!379999 () Bool)

(assert (=> b!291207 m!379999))

(declare-fun m!380001 () Bool)

(assert (=> b!291207 m!380001))

(assert (=> b!291207 m!378113))

(assert (=> b!291207 m!380001))

(assert (=> b!291207 m!378113))

(declare-fun m!380003 () Bool)

(assert (=> b!291207 m!380003))

(assert (=> b!291206 m!379991))

(assert (=> b!291206 m!379993))

(assert (=> b!291206 m!379897))

(assert (=> b!291206 m!379991))

(assert (=> b!291206 m!379897))

(assert (=> b!291206 m!379995))

(assert (=> b!291206 m!379993))

(assert (=> b!291206 m!379997))

(assert (=> b!291204 m!379993))

(assert (=> b!291204 m!379993))

(declare-fun m!380005 () Bool)

(assert (=> b!291204 m!380005))

(declare-fun m!380007 () Bool)

(assert (=> d!86880 m!380007))

(assert (=> d!86880 m!379993))

(assert (=> b!290430 d!86880))

(declare-fun d!86882 () Bool)

(declare-fun lt!123358 () Bool)

(assert (=> d!86882 (= lt!123358 (isEmpty!2639 (list!1655 (_2!2470 lt!122783))))))

(assert (=> d!86882 (= lt!123358 (isEmpty!2641 (c!54877 (_2!2470 lt!122783))))))

(assert (=> d!86882 (= (isEmpty!2636 (_2!2470 lt!122783)) lt!123358)))

(declare-fun bs!33157 () Bool)

(assert (= bs!33157 d!86882))

(declare-fun m!380009 () Bool)

(assert (=> bs!33157 m!380009))

(assert (=> bs!33157 m!380009))

(declare-fun m!380011 () Bool)

(assert (=> bs!33157 m!380011))

(declare-fun m!380013 () Bool)

(assert (=> bs!33157 m!380013))

(assert (=> b!290405 d!86882))

(declare-fun d!86884 () Bool)

(declare-fun charsToBigInt!1 (List!3962) Int)

(assert (=> d!86884 (= (inv!17 (value!25890 separatorToken!170)) (= (charsToBigInt!1 (text!5901 (value!25890 separatorToken!170))) (value!25882 (value!25890 separatorToken!170))))))

(declare-fun bs!33158 () Bool)

(assert (= bs!33158 d!86884))

(declare-fun m!380015 () Bool)

(assert (=> bs!33158 m!380015))

(assert (=> b!290021 d!86884))

(declare-fun d!86886 () Bool)

(assert (=> d!86886 (= (isEmpty!2640 lt!122469) (not ((_ is Some!876) lt!122469)))))

(assert (=> d!86430 d!86886))

(declare-fun d!86888 () Bool)

(declare-fun lt!123361 () Bool)

(assert (=> d!86888 (= lt!123361 (select (content!588 tokens!465) (h!9352 tokens!465)))))

(declare-fun e!181268 () Bool)

(assert (=> d!86888 (= lt!123361 e!181268)))

(declare-fun res!132868 () Bool)

(assert (=> d!86888 (=> (not res!132868) (not e!181268))))

(assert (=> d!86888 (= res!132868 ((_ is Cons!3955) tokens!465))))

(assert (=> d!86888 (= (contains!775 tokens!465 (h!9352 tokens!465)) lt!123361)))

(declare-fun b!291212 () Bool)

(declare-fun e!181267 () Bool)

(assert (=> b!291212 (= e!181268 e!181267)))

(declare-fun res!132869 () Bool)

(assert (=> b!291212 (=> res!132869 e!181267)))

(assert (=> b!291212 (= res!132869 (= (h!9352 tokens!465) (h!9352 tokens!465)))))

(declare-fun b!291213 () Bool)

(assert (=> b!291213 (= e!181267 (contains!775 (t!40597 tokens!465) (h!9352 tokens!465)))))

(assert (= (and d!86888 res!132868) b!291212))

(assert (= (and b!291212 (not res!132869)) b!291213))

(declare-fun m!380017 () Bool)

(assert (=> d!86888 m!380017))

(declare-fun m!380019 () Bool)

(assert (=> d!86888 m!380019))

(declare-fun m!380021 () Bool)

(assert (=> b!291213 m!380021))

(assert (=> b!290072 d!86888))

(declare-fun b!291214 () Bool)

(declare-fun e!181271 () Option!876)

(declare-fun lt!123367 () Option!876)

(declare-fun lt!123364 () Option!876)

(assert (=> b!291214 (= e!181271 (ite (and ((_ is None!875) lt!123367) ((_ is None!875) lt!123364)) None!875 (ite ((_ is None!875) lt!123364) lt!123367 (ite ((_ is None!875) lt!123367) lt!123364 (ite (>= (size!3171 (_1!2469 (v!14826 lt!123367))) (size!3171 (_1!2469 (v!14826 lt!123364)))) lt!123367 lt!123364)))))))

(declare-fun call!16528 () Option!876)

(assert (=> b!291214 (= lt!123367 call!16528)))

(assert (=> b!291214 (= lt!123364 (maxPrefixZipperSequence!322 thiss!17480 (t!40596 (t!40596 rules!1920)) (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(declare-fun b!291215 () Bool)

(declare-fun e!181269 () Bool)

(declare-fun e!181270 () Bool)

(assert (=> b!291215 (= e!181269 e!181270)))

(declare-fun res!132872 () Bool)

(assert (=> b!291215 (=> res!132872 e!181270)))

(declare-fun lt!123366 () Option!876)

(assert (=> b!291215 (= res!132872 (not (isDefined!715 lt!123366)))))

(declare-fun e!181272 () Bool)

(declare-fun b!291216 () Bool)

(assert (=> b!291216 (= e!181272 (= (list!1655 (_2!2469 (get!1337 lt!123366))) (_2!2471 (get!1336 (maxPrefixZipper!130 thiss!17480 (t!40596 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(declare-fun b!291217 () Bool)

(declare-fun res!132875 () Bool)

(assert (=> b!291217 (=> (not res!132875) (not e!181269))))

(declare-fun e!181274 () Bool)

(assert (=> b!291217 (= res!132875 e!181274)))

(declare-fun res!132871 () Bool)

(assert (=> b!291217 (=> res!132871 e!181274)))

(assert (=> b!291217 (= res!132871 (not (isDefined!715 lt!123366)))))

(declare-fun d!86890 () Bool)

(assert (=> d!86890 e!181269))

(declare-fun res!132873 () Bool)

(assert (=> d!86890 (=> (not res!132873) (not e!181269))))

(assert (=> d!86890 (= res!132873 (= (isDefined!715 lt!123366) (isDefined!716 (maxPrefixZipper!130 thiss!17480 (t!40596 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))))

(assert (=> d!86890 (= lt!123366 e!181271)))

(declare-fun c!55180 () Bool)

(assert (=> d!86890 (= c!55180 (and ((_ is Cons!3954) (t!40596 rules!1920)) ((_ is Nil!3954) (t!40596 (t!40596 rules!1920)))))))

(declare-fun lt!123362 () Unit!5362)

(declare-fun lt!123368 () Unit!5362)

(assert (=> d!86890 (= lt!123362 lt!123368)))

(declare-fun lt!123365 () List!3963)

(declare-fun lt!123363 () List!3963)

(assert (=> d!86890 (isPrefix!421 lt!123365 lt!123363)))

(assert (=> d!86890 (= lt!123368 (lemmaIsPrefixRefl!227 lt!123365 lt!123363))))

(assert (=> d!86890 (= lt!123363 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (=> d!86890 (= lt!123365 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (=> d!86890 (rulesValidInductive!222 thiss!17480 (t!40596 rules!1920))))

(assert (=> d!86890 (= (maxPrefixZipperSequence!322 thiss!17480 (t!40596 rules!1920) (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))) lt!123366)))

(declare-fun b!291218 () Bool)

(assert (=> b!291218 (= e!181274 e!181272)))

(declare-fun res!132870 () Bool)

(assert (=> b!291218 (=> (not res!132870) (not e!181272))))

(assert (=> b!291218 (= res!132870 (= (_1!2469 (get!1337 lt!123366)) (_1!2471 (get!1336 (maxPrefixZipper!130 thiss!17480 (t!40596 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(declare-fun bm!16523 () Bool)

(assert (=> bm!16523 (= call!16528 (maxPrefixOneRuleZipperSequence!131 thiss!17480 (h!9351 (t!40596 rules!1920)) (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(declare-fun b!291219 () Bool)

(assert (=> b!291219 (= e!181271 call!16528)))

(declare-fun b!291220 () Bool)

(declare-fun e!181273 () Bool)

(assert (=> b!291220 (= e!181270 e!181273)))

(declare-fun res!132874 () Bool)

(assert (=> b!291220 (=> (not res!132874) (not e!181273))))

(assert (=> b!291220 (= res!132874 (= (_1!2469 (get!1337 lt!123366)) (_1!2471 (get!1336 (maxPrefix!359 thiss!17480 (t!40596 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(declare-fun b!291221 () Bool)

(assert (=> b!291221 (= e!181273 (= (list!1655 (_2!2469 (get!1337 lt!123366))) (_2!2471 (get!1336 (maxPrefix!359 thiss!17480 (t!40596 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(assert (= (and d!86890 c!55180) b!291219))

(assert (= (and d!86890 (not c!55180)) b!291214))

(assert (= (or b!291219 b!291214) bm!16523))

(assert (= (and d!86890 res!132873) b!291217))

(assert (= (and b!291217 (not res!132871)) b!291218))

(assert (= (and b!291218 res!132870) b!291216))

(assert (= (and b!291217 res!132875) b!291215))

(assert (= (and b!291215 (not res!132872)) b!291220))

(assert (= (and b!291220 res!132874) b!291221))

(declare-fun m!380023 () Bool)

(assert (=> b!291216 m!380023))

(assert (=> b!291216 m!377201))

(assert (=> b!291216 m!377457))

(assert (=> b!291216 m!377457))

(declare-fun m!380025 () Bool)

(assert (=> b!291216 m!380025))

(declare-fun m!380027 () Bool)

(assert (=> b!291216 m!380027))

(assert (=> b!291216 m!380025))

(declare-fun m!380029 () Bool)

(assert (=> b!291216 m!380029))

(declare-fun m!380031 () Bool)

(assert (=> b!291217 m!380031))

(assert (=> b!291218 m!380023))

(assert (=> b!291218 m!377201))

(assert (=> b!291218 m!377457))

(assert (=> b!291218 m!377457))

(assert (=> b!291218 m!380025))

(assert (=> b!291218 m!380025))

(assert (=> b!291218 m!380029))

(assert (=> bm!16523 m!377201))

(declare-fun m!380033 () Bool)

(assert (=> bm!16523 m!380033))

(assert (=> b!291221 m!380023))

(assert (=> b!291221 m!377201))

(assert (=> b!291221 m!377457))

(assert (=> b!291221 m!377457))

(assert (=> b!291221 m!379349))

(assert (=> b!291221 m!379349))

(declare-fun m!380035 () Bool)

(assert (=> b!291221 m!380035))

(assert (=> b!291221 m!380027))

(assert (=> b!291214 m!377201))

(declare-fun m!380037 () Bool)

(assert (=> b!291214 m!380037))

(assert (=> d!86890 m!377201))

(assert (=> d!86890 m!377457))

(assert (=> d!86890 m!380031))

(assert (=> d!86890 m!377457))

(assert (=> d!86890 m!380025))

(declare-fun m!380039 () Bool)

(assert (=> d!86890 m!380039))

(assert (=> d!86890 m!380025))

(declare-fun m!380041 () Bool)

(assert (=> d!86890 m!380041))

(declare-fun m!380043 () Bool)

(assert (=> d!86890 m!380043))

(declare-fun m!380045 () Bool)

(assert (=> d!86890 m!380045))

(assert (=> b!291215 m!380031))

(assert (=> b!291220 m!380023))

(assert (=> b!291220 m!377201))

(assert (=> b!291220 m!377457))

(assert (=> b!291220 m!377457))

(assert (=> b!291220 m!379349))

(assert (=> b!291220 m!379349))

(assert (=> b!291220 m!380035))

(assert (=> b!290062 d!86890))

(declare-fun d!86892 () Bool)

(assert (=> d!86892 (= (isDefined!716 lt!122824) (not (isEmpty!2640 lt!122824)))))

(declare-fun bs!33159 () Bool)

(assert (= bs!33159 d!86892))

(assert (=> bs!33159 m!378183))

(assert (=> b!290495 d!86892))

(declare-fun d!86894 () Bool)

(declare-fun e!181275 () Bool)

(assert (=> d!86894 e!181275))

(declare-fun res!132876 () Bool)

(assert (=> d!86894 (=> (not res!132876) (not e!181275))))

(declare-fun lt!123369 () BalanceConc!2680)

(assert (=> d!86894 (= res!132876 (= (list!1655 lt!123369) (originalCharacters!800 (h!9352 tokens!465))))))

(assert (=> d!86894 (= lt!123369 (BalanceConc!2681 (fromList!192 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (=> d!86894 (= (fromListB!362 (originalCharacters!800 (h!9352 tokens!465))) lt!123369)))

(declare-fun b!291222 () Bool)

(assert (=> b!291222 (= e!181275 (isBalanced!381 (fromList!192 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (= (and d!86894 res!132876) b!291222))

(declare-fun m!380047 () Bool)

(assert (=> d!86894 m!380047))

(declare-fun m!380049 () Bool)

(assert (=> d!86894 m!380049))

(assert (=> b!291222 m!380049))

(assert (=> b!291222 m!380049))

(declare-fun m!380051 () Bool)

(assert (=> b!291222 m!380051))

(assert (=> d!86302 d!86894))

(declare-fun b!291235 () Bool)

(declare-fun e!181280 () Bool)

(assert (=> b!291235 (= e!181280 (not (isEmpty!2638 (right!3600 (c!54879 lt!122586)))))))

(declare-fun b!291236 () Bool)

(declare-fun e!181281 () Bool)

(assert (=> b!291236 (= e!181281 e!181280)))

(declare-fun res!132890 () Bool)

(assert (=> b!291236 (=> (not res!132890) (not e!181280))))

(declare-fun height!172 (Conc!1337) Int)

(assert (=> b!291236 (= res!132890 (<= (- 1) (- (height!172 (left!3270 (c!54879 lt!122586))) (height!172 (right!3600 (c!54879 lt!122586))))))))

(declare-fun b!291237 () Bool)

(declare-fun res!132892 () Bool)

(assert (=> b!291237 (=> (not res!132892) (not e!181280))))

(assert (=> b!291237 (= res!132892 (<= (- (height!172 (left!3270 (c!54879 lt!122586))) (height!172 (right!3600 (c!54879 lt!122586)))) 1))))

(declare-fun b!291238 () Bool)

(declare-fun res!132893 () Bool)

(assert (=> b!291238 (=> (not res!132893) (not e!181280))))

(assert (=> b!291238 (= res!132893 (isBalanced!379 (left!3270 (c!54879 lt!122586))))))

(declare-fun d!86896 () Bool)

(declare-fun res!132891 () Bool)

(assert (=> d!86896 (=> res!132891 e!181281)))

(assert (=> d!86896 (= res!132891 (not ((_ is Node!1337) (c!54879 lt!122586))))))

(assert (=> d!86896 (= (isBalanced!379 (c!54879 lt!122586)) e!181281)))

(declare-fun b!291239 () Bool)

(declare-fun res!132894 () Bool)

(assert (=> b!291239 (=> (not res!132894) (not e!181280))))

(assert (=> b!291239 (= res!132894 (isBalanced!379 (right!3600 (c!54879 lt!122586))))))

(declare-fun b!291240 () Bool)

(declare-fun res!132889 () Bool)

(assert (=> b!291240 (=> (not res!132889) (not e!181280))))

(assert (=> b!291240 (= res!132889 (not (isEmpty!2638 (left!3270 (c!54879 lt!122586)))))))

(assert (= (and d!86896 (not res!132891)) b!291236))

(assert (= (and b!291236 res!132890) b!291237))

(assert (= (and b!291237 res!132892) b!291238))

(assert (= (and b!291238 res!132893) b!291239))

(assert (= (and b!291239 res!132894) b!291240))

(assert (= (and b!291240 res!132889) b!291235))

(declare-fun m!380053 () Bool)

(assert (=> b!291240 m!380053))

(declare-fun m!380055 () Bool)

(assert (=> b!291238 m!380055))

(declare-fun m!380057 () Bool)

(assert (=> b!291235 m!380057))

(declare-fun m!380059 () Bool)

(assert (=> b!291237 m!380059))

(declare-fun m!380061 () Bool)

(assert (=> b!291237 m!380061))

(declare-fun m!380063 () Bool)

(assert (=> b!291239 m!380063))

(assert (=> b!291236 m!380059))

(assert (=> b!291236 m!380061))

(assert (=> b!290096 d!86896))

(declare-fun d!86898 () Bool)

(assert (=> d!86898 true))

(declare-fun lambda!10012 () Int)

(declare-fun order!3145 () Int)

(declare-fun dynLambda!2116 (Int Int) Int)

(assert (=> d!86898 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465))))) (dynLambda!2116 order!3145 lambda!10012))))

(declare-fun Forall2!156 (Int) Bool)

(assert (=> d!86898 (= (equivClasses!264 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465))))) (Forall2!156 lambda!10012))))

(declare-fun bs!33160 () Bool)

(assert (= bs!33160 d!86898))

(declare-fun m!380065 () Bool)

(assert (=> bs!33160 m!380065))

(assert (=> b!290497 d!86898))

(declare-fun d!86900 () Bool)

(declare-fun lt!123375 () Int)

(assert (=> d!86900 (>= lt!123375 0)))

(declare-fun e!181286 () Int)

(assert (=> d!86900 (= lt!123375 e!181286)))

(declare-fun c!55183 () Bool)

(assert (=> d!86900 (= c!55183 ((_ is Nil!3953) (_2!2471 (get!1336 lt!122824))))))

(assert (=> d!86900 (= (size!3175 (_2!2471 (get!1336 lt!122824))) lt!123375)))

(declare-fun b!291249 () Bool)

(assert (=> b!291249 (= e!181286 0)))

(declare-fun b!291250 () Bool)

(assert (=> b!291250 (= e!181286 (+ 1 (size!3175 (t!40595 (_2!2471 (get!1336 lt!122824))))))))

(assert (= (and d!86900 c!55183) b!291249))

(assert (= (and d!86900 (not c!55183)) b!291250))

(declare-fun m!380067 () Bool)

(assert (=> b!291250 m!380067))

(assert (=> b!290491 d!86900))

(assert (=> b!290491 d!86550))

(assert (=> b!290491 d!86588))

(declare-fun d!86902 () Bool)

(assert (=> d!86902 (= (list!1655 lt!122578) (list!1659 (c!54877 lt!122578)))))

(declare-fun bs!33161 () Bool)

(assert (= bs!33161 d!86902))

(declare-fun m!380069 () Bool)

(assert (=> bs!33161 m!380069))

(assert (=> d!86310 d!86902))

(declare-fun d!86904 () Bool)

(declare-fun lt!123383 () Int)

(assert (=> d!86904 (= lt!123383 (size!3178 (list!1658 lt!122472)))))

(assert (=> d!86904 (= lt!123383 (size!3179 (c!54879 lt!122472)))))

(assert (=> d!86904 (= (size!3176 lt!122472) lt!123383)))

(declare-fun bs!33162 () Bool)

(assert (= bs!33162 d!86904))

(assert (=> bs!33162 m!377509))

(assert (=> bs!33162 m!377509))

(declare-fun m!380071 () Bool)

(assert (=> bs!33162 m!380071))

(declare-fun m!380073 () Bool)

(assert (=> bs!33162 m!380073))

(assert (=> d!86310 d!86904))

(declare-fun d!86906 () Bool)

(declare-fun lt!123405 () List!3963)

(assert (=> d!86906 (= lt!123405 (++!1058 (list!1655 (BalanceConc!2681 Empty!1336)) (printList!317 thiss!17480 (dropList!184 lt!122472 0))))))

(declare-fun e!181297 () List!3963)

(assert (=> d!86906 (= lt!123405 e!181297)))

(declare-fun c!55186 () Bool)

(assert (=> d!86906 (= c!55186 ((_ is Cons!3955) (dropList!184 lt!122472 0)))))

(assert (=> d!86906 (= (printListTailRec!150 thiss!17480 (dropList!184 lt!122472 0) (list!1655 (BalanceConc!2681 Empty!1336))) lt!123405)))

(declare-fun b!291263 () Bool)

(assert (=> b!291263 (= e!181297 (printListTailRec!150 thiss!17480 (t!40597 (dropList!184 lt!122472 0)) (++!1058 (list!1655 (BalanceConc!2681 Empty!1336)) (list!1655 (charsOf!400 (h!9352 (dropList!184 lt!122472 0)))))))))

(declare-fun lt!123402 () List!3963)

(assert (=> b!291263 (= lt!123402 (list!1655 (charsOf!400 (h!9352 (dropList!184 lt!122472 0)))))))

(declare-fun lt!123403 () List!3963)

(assert (=> b!291263 (= lt!123403 (printList!317 thiss!17480 (t!40597 (dropList!184 lt!122472 0))))))

(declare-fun lt!123406 () Unit!5362)

(assert (=> b!291263 (= lt!123406 (lemmaConcatAssociativity!460 (list!1655 (BalanceConc!2681 Empty!1336)) lt!123402 lt!123403))))

(assert (=> b!291263 (= (++!1058 (++!1058 (list!1655 (BalanceConc!2681 Empty!1336)) lt!123402) lt!123403) (++!1058 (list!1655 (BalanceConc!2681 Empty!1336)) (++!1058 lt!123402 lt!123403)))))

(declare-fun lt!123404 () Unit!5362)

(assert (=> b!291263 (= lt!123404 lt!123406)))

(declare-fun b!291264 () Bool)

(assert (=> b!291264 (= e!181297 (list!1655 (BalanceConc!2681 Empty!1336)))))

(assert (= (and d!86906 c!55186) b!291263))

(assert (= (and d!86906 (not c!55186)) b!291264))

(assert (=> d!86906 m!377517))

(declare-fun m!380075 () Bool)

(assert (=> d!86906 m!380075))

(assert (=> d!86906 m!377513))

(assert (=> d!86906 m!380075))

(declare-fun m!380077 () Bool)

(assert (=> d!86906 m!380077))

(declare-fun m!380079 () Bool)

(assert (=> b!291263 m!380079))

(declare-fun m!380081 () Bool)

(assert (=> b!291263 m!380081))

(declare-fun m!380083 () Bool)

(assert (=> b!291263 m!380083))

(declare-fun m!380085 () Bool)

(assert (=> b!291263 m!380085))

(declare-fun m!380087 () Bool)

(assert (=> b!291263 m!380087))

(declare-fun m!380089 () Bool)

(assert (=> b!291263 m!380089))

(assert (=> b!291263 m!377513))

(declare-fun m!380091 () Bool)

(assert (=> b!291263 m!380091))

(declare-fun m!380093 () Bool)

(assert (=> b!291263 m!380093))

(assert (=> b!291263 m!380091))

(assert (=> b!291263 m!377513))

(declare-fun m!380095 () Bool)

(assert (=> b!291263 m!380095))

(declare-fun m!380097 () Bool)

(assert (=> b!291263 m!380097))

(assert (=> b!291263 m!380079))

(assert (=> b!291263 m!377513))

(assert (=> b!291263 m!380081))

(assert (=> b!291263 m!380083))

(assert (=> b!291263 m!377513))

(assert (=> b!291263 m!380087))

(assert (=> d!86310 d!86906))

(declare-fun d!86908 () Bool)

(assert (=> d!86908 (= (dropList!184 lt!122472 0) (drop!237 (list!1661 (c!54879 lt!122472)) 0))))

(declare-fun bs!33163 () Bool)

(assert (= bs!33163 d!86908))

(assert (=> bs!33163 m!378743))

(assert (=> bs!33163 m!378743))

(declare-fun m!380099 () Bool)

(assert (=> bs!33163 m!380099))

(assert (=> d!86310 d!86908))

(declare-fun d!86910 () Bool)

(assert (=> d!86910 (= (list!1655 (BalanceConc!2681 Empty!1336)) (list!1659 (c!54877 (BalanceConc!2681 Empty!1336))))))

(declare-fun bs!33164 () Bool)

(assert (= bs!33164 d!86910))

(declare-fun m!380101 () Bool)

(assert (=> bs!33164 m!380101))

(assert (=> d!86310 d!86910))

(declare-fun d!86912 () Bool)

(assert (=> d!86912 (= (list!1655 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))) (list!1659 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))))))

(declare-fun bs!33165 () Bool)

(assert (= bs!33165 d!86912))

(declare-fun m!380103 () Bool)

(assert (=> bs!33165 m!380103))

(assert (=> b!290462 d!86912))

(declare-fun b!291267 () Bool)

(declare-fun res!132905 () Bool)

(declare-fun e!181298 () Bool)

(assert (=> b!291267 (=> (not res!132905) (not e!181298))))

(assert (=> b!291267 (= res!132905 (>= (height!171 (++!1063 (c!54877 e!180713) (c!54877 (ite c!54987 lt!122754 call!16472)))) (max!0 (height!171 (c!54877 e!180713)) (height!171 (c!54877 (ite c!54987 lt!122754 call!16472))))))))

(declare-fun b!291265 () Bool)

(declare-fun res!132908 () Bool)

(assert (=> b!291265 (=> (not res!132908) (not e!181298))))

(assert (=> b!291265 (= res!132908 (isBalanced!381 (++!1063 (c!54877 e!180713) (c!54877 (ite c!54987 lt!122754 call!16472)))))))

(declare-fun d!86914 () Bool)

(assert (=> d!86914 e!181298))

(declare-fun res!132907 () Bool)

(assert (=> d!86914 (=> (not res!132907) (not e!181298))))

(assert (=> d!86914 (= res!132907 (appendAssocInst!71 (c!54877 e!180713) (c!54877 (ite c!54987 lt!122754 call!16472))))))

(declare-fun lt!123407 () BalanceConc!2680)

(assert (=> d!86914 (= lt!123407 (BalanceConc!2681 (++!1063 (c!54877 e!180713) (c!54877 (ite c!54987 lt!122754 call!16472)))))))

(assert (=> d!86914 (= (++!1060 e!180713 (ite c!54987 lt!122754 call!16472)) lt!123407)))

(declare-fun b!291268 () Bool)

(assert (=> b!291268 (= e!181298 (= (list!1655 lt!123407) (++!1058 (list!1655 e!180713) (list!1655 (ite c!54987 lt!122754 call!16472)))))))

(declare-fun b!291266 () Bool)

(declare-fun res!132906 () Bool)

(assert (=> b!291266 (=> (not res!132906) (not e!181298))))

(assert (=> b!291266 (= res!132906 (<= (height!171 (++!1063 (c!54877 e!180713) (c!54877 (ite c!54987 lt!122754 call!16472)))) (+ (max!0 (height!171 (c!54877 e!180713)) (height!171 (c!54877 (ite c!54987 lt!122754 call!16472)))) 1)))))

(assert (= (and d!86914 res!132907) b!291265))

(assert (= (and b!291265 res!132908) b!291266))

(assert (= (and b!291266 res!132906) b!291267))

(assert (= (and b!291267 res!132905) b!291268))

(declare-fun m!380105 () Bool)

(assert (=> b!291266 m!380105))

(declare-fun m!380107 () Bool)

(assert (=> b!291266 m!380107))

(declare-fun m!380109 () Bool)

(assert (=> b!291266 m!380109))

(assert (=> b!291266 m!380105))

(assert (=> b!291266 m!380109))

(declare-fun m!380111 () Bool)

(assert (=> b!291266 m!380111))

(assert (=> b!291266 m!380107))

(declare-fun m!380113 () Bool)

(assert (=> b!291266 m!380113))

(declare-fun m!380115 () Bool)

(assert (=> b!291268 m!380115))

(declare-fun m!380117 () Bool)

(assert (=> b!291268 m!380117))

(declare-fun m!380119 () Bool)

(assert (=> b!291268 m!380119))

(assert (=> b!291268 m!380117))

(assert (=> b!291268 m!380119))

(declare-fun m!380121 () Bool)

(assert (=> b!291268 m!380121))

(assert (=> b!291267 m!380105))

(assert (=> b!291267 m!380107))

(assert (=> b!291267 m!380109))

(assert (=> b!291267 m!380105))

(assert (=> b!291267 m!380109))

(assert (=> b!291267 m!380111))

(assert (=> b!291267 m!380107))

(assert (=> b!291267 m!380113))

(assert (=> b!291265 m!380107))

(assert (=> b!291265 m!380107))

(declare-fun m!380123 () Bool)

(assert (=> b!291265 m!380123))

(declare-fun m!380125 () Bool)

(assert (=> d!86914 m!380125))

(assert (=> d!86914 m!380107))

(assert (=> bm!16469 d!86914))

(declare-fun d!86916 () Bool)

(assert (=> d!86916 (= (isEmpty!2639 (originalCharacters!800 separatorToken!170)) ((_ is Nil!3953) (originalCharacters!800 separatorToken!170)))))

(assert (=> d!86424 d!86916))

(declare-fun d!86918 () Bool)

(declare-fun lt!123408 () Bool)

(assert (=> d!86918 (= lt!123408 (isEmpty!2639 (list!1655 (_2!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))))))))))

(assert (=> d!86918 (= lt!123408 (isEmpty!2641 (c!54877 (_2!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465))))))))))

(assert (=> d!86918 (= (isEmpty!2636 (_2!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)))))) lt!123408)))

(declare-fun bs!33166 () Bool)

(assert (= bs!33166 d!86918))

(declare-fun m!380127 () Bool)

(assert (=> bs!33166 m!380127))

(assert (=> bs!33166 m!380127))

(declare-fun m!380129 () Bool)

(assert (=> bs!33166 m!380129))

(declare-fun m!380131 () Bool)

(assert (=> bs!33166 m!380131))

(assert (=> b!290457 d!86918))

(assert (=> b!290457 d!86702))

(assert (=> b!290457 d!86714))

(assert (=> b!290457 d!86314))

(declare-fun d!86920 () Bool)

(assert (=> d!86920 (= (list!1655 call!16472) (list!1659 (c!54877 call!16472)))))

(declare-fun bs!33167 () Bool)

(assert (= bs!33167 d!86920))

(declare-fun m!380133 () Bool)

(assert (=> bs!33167 m!380133))

(assert (=> b!290317 d!86920))

(declare-fun d!86922 () Bool)

(declare-fun lt!123420 () BalanceConc!2680)

(assert (=> d!86922 (= (list!1655 lt!123420) (printListTailRec!150 thiss!17480 (dropList!184 (singletonSeq!303 call!16475) 0) (list!1655 (BalanceConc!2681 Empty!1336))))))

(declare-fun e!181304 () BalanceConc!2680)

(assert (=> d!86922 (= lt!123420 e!181304)))

(declare-fun c!55188 () Bool)

(assert (=> d!86922 (= c!55188 (>= 0 (size!3176 (singletonSeq!303 call!16475))))))

(declare-fun e!181305 () Bool)

(assert (=> d!86922 e!181305))

(declare-fun res!132913 () Bool)

(assert (=> d!86922 (=> (not res!132913) (not e!181305))))

(assert (=> d!86922 (= res!132913 (>= 0 0))))

(assert (=> d!86922 (= (printTailRec!329 thiss!17480 (singletonSeq!303 call!16475) 0 (BalanceConc!2681 Empty!1336)) lt!123420)))

(declare-fun b!291275 () Bool)

(assert (=> b!291275 (= e!181305 (<= 0 (size!3176 (singletonSeq!303 call!16475))))))

(declare-fun b!291276 () Bool)

(assert (=> b!291276 (= e!181304 (BalanceConc!2681 Empty!1336))))

(declare-fun b!291277 () Bool)

(assert (=> b!291277 (= e!181304 (printTailRec!329 thiss!17480 (singletonSeq!303 call!16475) (+ 0 1) (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 (singletonSeq!303 call!16475) 0)))))))

(declare-fun lt!123422 () List!3965)

(assert (=> b!291277 (= lt!123422 (list!1658 (singletonSeq!303 call!16475)))))

(declare-fun lt!123425 () Unit!5362)

(assert (=> b!291277 (= lt!123425 (lemmaDropApply!224 lt!123422 0))))

(assert (=> b!291277 (= (head!934 (drop!237 lt!123422 0)) (apply!851 lt!123422 0))))

(declare-fun lt!123423 () Unit!5362)

(assert (=> b!291277 (= lt!123423 lt!123425)))

(declare-fun lt!123424 () List!3965)

(assert (=> b!291277 (= lt!123424 (list!1658 (singletonSeq!303 call!16475)))))

(declare-fun lt!123421 () Unit!5362)

(assert (=> b!291277 (= lt!123421 (lemmaDropTail!216 lt!123424 0))))

(assert (=> b!291277 (= (tail!516 (drop!237 lt!123424 0)) (drop!237 lt!123424 (+ 0 1)))))

(declare-fun lt!123419 () Unit!5362)

(assert (=> b!291277 (= lt!123419 lt!123421)))

(assert (= (and d!86922 res!132913) b!291275))

(assert (= (and d!86922 c!55188) b!291276))

(assert (= (and d!86922 (not c!55188)) b!291277))

(assert (=> d!86922 m!377513))

(assert (=> d!86922 m!377943))

(declare-fun m!380135 () Bool)

(assert (=> d!86922 m!380135))

(assert (=> d!86922 m!377943))

(declare-fun m!380137 () Bool)

(assert (=> d!86922 m!380137))

(assert (=> d!86922 m!380137))

(assert (=> d!86922 m!377513))

(declare-fun m!380139 () Bool)

(assert (=> d!86922 m!380139))

(declare-fun m!380141 () Bool)

(assert (=> d!86922 m!380141))

(assert (=> b!291275 m!377943))

(assert (=> b!291275 m!380135))

(declare-fun m!380143 () Bool)

(assert (=> b!291277 m!380143))

(assert (=> b!291277 m!377943))

(declare-fun m!380145 () Bool)

(assert (=> b!291277 m!380145))

(assert (=> b!291277 m!377943))

(declare-fun m!380147 () Bool)

(assert (=> b!291277 m!380147))

(declare-fun m!380149 () Bool)

(assert (=> b!291277 m!380149))

(declare-fun m!380151 () Bool)

(assert (=> b!291277 m!380151))

(declare-fun m!380153 () Bool)

(assert (=> b!291277 m!380153))

(declare-fun m!380155 () Bool)

(assert (=> b!291277 m!380155))

(declare-fun m!380157 () Bool)

(assert (=> b!291277 m!380157))

(declare-fun m!380159 () Bool)

(assert (=> b!291277 m!380159))

(declare-fun m!380161 () Bool)

(assert (=> b!291277 m!380161))

(assert (=> b!291277 m!380145))

(declare-fun m!380163 () Bool)

(assert (=> b!291277 m!380163))

(assert (=> b!291277 m!377943))

(declare-fun m!380165 () Bool)

(assert (=> b!291277 m!380165))

(assert (=> b!291277 m!380157))

(assert (=> b!291277 m!380163))

(assert (=> b!291277 m!380147))

(assert (=> b!291277 m!380153))

(declare-fun m!380167 () Bool)

(assert (=> b!291277 m!380167))

(assert (=> b!290317 d!86922))

(declare-fun d!86924 () Bool)

(assert (=> d!86924 (= (list!1655 lt!122754) (list!1659 (c!54877 lt!122754)))))

(declare-fun bs!33168 () Bool)

(assert (= bs!33168 d!86924))

(declare-fun m!380169 () Bool)

(assert (=> bs!33168 m!380169))

(assert (=> b!290317 d!86924))

(declare-fun d!86926 () Bool)

(declare-fun e!181310 () Bool)

(assert (=> d!86926 e!181310))

(declare-fun res!132914 () Bool)

(assert (=> d!86926 (=> (not res!132914) (not e!181310))))

(declare-fun lt!123426 () BalanceConc!2682)

(assert (=> d!86926 (= res!132914 (= (list!1658 lt!123426) (Cons!3955 call!16475 Nil!3955)))))

(assert (=> d!86926 (= lt!123426 (singleton!134 call!16475))))

(assert (=> d!86926 (= (singletonSeq!303 call!16475) lt!123426)))

(declare-fun b!291284 () Bool)

(assert (=> b!291284 (= e!181310 (isBalanced!379 (c!54879 lt!123426)))))

(assert (= (and d!86926 res!132914) b!291284))

(declare-fun m!380171 () Bool)

(assert (=> d!86926 m!380171))

(declare-fun m!380173 () Bool)

(assert (=> d!86926 m!380173))

(declare-fun m!380175 () Bool)

(assert (=> b!291284 m!380175))

(assert (=> b!290317 d!86926))

(declare-fun e!181313 () Bool)

(declare-fun lt!123441 () Token!1258)

(declare-fun b!291288 () Bool)

(assert (=> b!291288 (= e!181313 (= (rule!1360 lt!123441) (get!1340 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123441))))))))

(declare-fun d!86928 () Bool)

(assert (=> d!86928 (isDefined!716 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 call!16472) (list!1655 lt!122754))))))

(declare-fun lt!123438 () Unit!5362)

(declare-fun e!181314 () Unit!5362)

(assert (=> d!86928 (= lt!123438 e!181314)))

(declare-fun c!55189 () Bool)

(assert (=> d!86928 (= c!55189 (isEmpty!2640 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 call!16472) (list!1655 lt!122754)))))))

(declare-fun lt!123442 () Unit!5362)

(declare-fun lt!123431 () Unit!5362)

(assert (=> d!86928 (= lt!123442 lt!123431)))

(assert (=> d!86928 e!181313))

(declare-fun res!132916 () Bool)

(assert (=> d!86928 (=> (not res!132916) (not e!181313))))

(assert (=> d!86928 (= res!132916 (isDefined!718 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123441)))))))

(assert (=> d!86928 (= lt!123431 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!140 thiss!17480 rules!1920 (list!1655 call!16472) lt!123441))))

(declare-fun lt!123434 () Unit!5362)

(declare-fun lt!123436 () Unit!5362)

(assert (=> d!86928 (= lt!123434 lt!123436)))

(declare-fun lt!123435 () List!3963)

(assert (=> d!86928 (isPrefix!421 lt!123435 (++!1058 (list!1655 call!16472) (list!1655 lt!122754)))))

(assert (=> d!86928 (= lt!123436 (lemmaPrefixStaysPrefixWhenAddingToSuffix!64 lt!123435 (list!1655 call!16472) (list!1655 lt!122754)))))

(assert (=> d!86928 (= lt!123435 (list!1655 (charsOf!400 lt!123441)))))

(declare-fun lt!123427 () Unit!5362)

(declare-fun lt!123443 () Unit!5362)

(assert (=> d!86928 (= lt!123427 lt!123443)))

(declare-fun lt!123430 () List!3963)

(declare-fun lt!123432 () List!3963)

(assert (=> d!86928 (isPrefix!421 lt!123430 (++!1058 lt!123430 lt!123432))))

(assert (=> d!86928 (= lt!123443 (lemmaConcatTwoListThenFirstIsPrefix!316 lt!123430 lt!123432))))

(assert (=> d!86928 (= lt!123432 (_2!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 call!16472)))))))

(assert (=> d!86928 (= lt!123430 (list!1655 (charsOf!400 lt!123441)))))

(assert (=> d!86928 (= lt!123441 (head!934 (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 (list!1655 call!16472)))))))))

(assert (=> d!86928 (not (isEmpty!2627 rules!1920))))

(assert (=> d!86928 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 (list!1655 call!16472) (list!1655 lt!122754)) lt!123438)))

(declare-fun b!291290 () Bool)

(declare-fun Unit!5398 () Unit!5362)

(assert (=> b!291290 (= e!181314 Unit!5398)))

(declare-fun b!291287 () Bool)

(declare-fun res!132915 () Bool)

(assert (=> b!291287 (=> (not res!132915) (not e!181313))))

(assert (=> b!291287 (= res!132915 (matchR!299 (regex!757 (get!1340 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123441))))) (list!1655 (charsOf!400 lt!123441))))))

(declare-fun b!291289 () Bool)

(declare-fun Unit!5399 () Unit!5362)

(assert (=> b!291289 (= e!181314 Unit!5399)))

(declare-fun lt!123429 () List!3963)

(assert (=> b!291289 (= lt!123429 (++!1058 (list!1655 call!16472) (list!1655 lt!122754)))))

(declare-fun lt!123439 () Unit!5362)

(assert (=> b!291289 (= lt!123439 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!64 thiss!17480 (rule!1360 lt!123441) rules!1920 lt!123429))))

(assert (=> b!291289 (isEmpty!2640 (maxPrefixOneRule!161 thiss!17480 (rule!1360 lt!123441) lt!123429))))

(declare-fun lt!123433 () Unit!5362)

(assert (=> b!291289 (= lt!123433 lt!123439)))

(declare-fun lt!123440 () List!3963)

(assert (=> b!291289 (= lt!123440 (list!1655 (charsOf!400 lt!123441)))))

(declare-fun lt!123437 () Unit!5362)

(assert (=> b!291289 (= lt!123437 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!64 thiss!17480 (rule!1360 lt!123441) lt!123440 (++!1058 (list!1655 call!16472) (list!1655 lt!122754))))))

(assert (=> b!291289 (not (matchR!299 (regex!757 (rule!1360 lt!123441)) lt!123440))))

(declare-fun lt!123428 () Unit!5362)

(assert (=> b!291289 (= lt!123428 lt!123437)))

(assert (=> b!291289 false))

(assert (= (and d!86928 res!132916) b!291287))

(assert (= (and b!291287 res!132915) b!291288))

(assert (= (and d!86928 c!55189) b!291289))

(assert (= (and d!86928 (not c!55189)) b!291290))

(declare-fun m!380177 () Bool)

(assert (=> b!291288 m!380177))

(assert (=> b!291288 m!380177))

(declare-fun m!380179 () Bool)

(assert (=> b!291288 m!380179))

(declare-fun m!380181 () Bool)

(assert (=> d!86928 m!380181))

(declare-fun m!380183 () Bool)

(assert (=> d!86928 m!380183))

(assert (=> d!86928 m!380183))

(declare-fun m!380185 () Bool)

(assert (=> d!86928 m!380185))

(assert (=> d!86928 m!377949))

(declare-fun m!380187 () Bool)

(assert (=> d!86928 m!380187))

(declare-fun m!380189 () Bool)

(assert (=> d!86928 m!380189))

(assert (=> d!86928 m!377949))

(assert (=> d!86928 m!377941))

(declare-fun m!380191 () Bool)

(assert (=> d!86928 m!380191))

(declare-fun m!380193 () Bool)

(assert (=> d!86928 m!380193))

(assert (=> d!86928 m!380187))

(declare-fun m!380195 () Bool)

(assert (=> d!86928 m!380195))

(declare-fun m!380197 () Bool)

(assert (=> d!86928 m!380197))

(declare-fun m!380199 () Bool)

(assert (=> d!86928 m!380199))

(assert (=> d!86928 m!380177))

(declare-fun m!380201 () Bool)

(assert (=> d!86928 m!380201))

(declare-fun m!380203 () Bool)

(assert (=> d!86928 m!380203))

(assert (=> d!86928 m!380197))

(assert (=> d!86928 m!380189))

(declare-fun m!380205 () Bool)

(assert (=> d!86928 m!380205))

(assert (=> d!86928 m!377949))

(declare-fun m!380207 () Bool)

(assert (=> d!86928 m!380207))

(assert (=> d!86928 m!377949))

(assert (=> d!86928 m!377941))

(assert (=> d!86928 m!380181))

(assert (=> d!86928 m!377949))

(declare-fun m!380209 () Bool)

(assert (=> d!86928 m!380209))

(assert (=> d!86928 m!380181))

(declare-fun m!380211 () Bool)

(assert (=> d!86928 m!380211))

(assert (=> d!86928 m!380203))

(declare-fun m!380213 () Bool)

(assert (=> d!86928 m!380213))

(assert (=> d!86928 m!380177))

(assert (=> d!86928 m!380209))

(declare-fun m!380215 () Bool)

(assert (=> d!86928 m!380215))

(assert (=> d!86928 m!377139))

(assert (=> d!86928 m!380183))

(declare-fun m!380219 () Bool)

(assert (=> d!86928 m!380219))

(assert (=> b!291287 m!380213))

(declare-fun m!380225 () Bool)

(assert (=> b!291287 m!380225))

(assert (=> b!291287 m!380203))

(assert (=> b!291287 m!380213))

(assert (=> b!291287 m!380177))

(assert (=> b!291287 m!380179))

(assert (=> b!291287 m!380177))

(assert (=> b!291287 m!380203))

(assert (=> b!291289 m!377949))

(assert (=> b!291289 m!377941))

(assert (=> b!291289 m!380181))

(declare-fun m!380231 () Bool)

(assert (=> b!291289 m!380231))

(declare-fun m!380235 () Bool)

(assert (=> b!291289 m!380235))

(assert (=> b!291289 m!380203))

(assert (=> b!291289 m!380213))

(assert (=> b!291289 m!380181))

(declare-fun m!380243 () Bool)

(assert (=> b!291289 m!380243))

(assert (=> b!291289 m!380235))

(declare-fun m!380249 () Bool)

(assert (=> b!291289 m!380249))

(declare-fun m!380251 () Bool)

(assert (=> b!291289 m!380251))

(assert (=> b!291289 m!380203))

(assert (=> b!290317 d!86928))

(declare-fun d!86930 () Bool)

(declare-fun lt!123444 () BalanceConc!2680)

(assert (=> d!86930 (= (list!1655 lt!123444) (printList!317 thiss!17480 (list!1658 (singletonSeq!303 call!16475))))))

(assert (=> d!86930 (= lt!123444 (printTailRec!329 thiss!17480 (singletonSeq!303 call!16475) 0 (BalanceConc!2681 Empty!1336)))))

(assert (=> d!86930 (= (print!368 thiss!17480 (singletonSeq!303 call!16475)) lt!123444)))

(declare-fun bs!33171 () Bool)

(assert (= bs!33171 d!86930))

(declare-fun m!380261 () Bool)

(assert (=> bs!33171 m!380261))

(assert (=> bs!33171 m!377943))

(assert (=> bs!33171 m!380165))

(assert (=> bs!33171 m!380165))

(declare-fun m!380265 () Bool)

(assert (=> bs!33171 m!380265))

(assert (=> bs!33171 m!377943))

(assert (=> bs!33171 m!377945))

(assert (=> b!290317 d!86930))

(declare-fun d!86932 () Bool)

(declare-fun lt!123445 () Int)

(assert (=> d!86932 (>= lt!123445 0)))

(declare-fun e!181315 () Int)

(assert (=> d!86932 (= lt!123445 e!181315)))

(declare-fun c!55190 () Bool)

(assert (=> d!86932 (= c!55190 ((_ is Nil!3953) lt!122587))))

(assert (=> d!86932 (= (size!3175 lt!122587) lt!123445)))

(declare-fun b!291291 () Bool)

(assert (=> b!291291 (= e!181315 0)))

(declare-fun b!291292 () Bool)

(assert (=> b!291292 (= e!181315 (+ 1 (size!3175 (t!40595 lt!122587))))))

(assert (= (and d!86932 c!55190) b!291291))

(assert (= (and d!86932 (not c!55190)) b!291292))

(declare-fun m!380275 () Bool)

(assert (=> b!291292 m!380275))

(assert (=> b!290106 d!86932))

(declare-fun d!86934 () Bool)

(declare-fun lt!123446 () Int)

(assert (=> d!86934 (>= lt!123446 0)))

(declare-fun e!181316 () Int)

(assert (=> d!86934 (= lt!123446 e!181316)))

(declare-fun c!55191 () Bool)

(assert (=> d!86934 (= c!55191 ((_ is Nil!3953) lt!122461))))

(assert (=> d!86934 (= (size!3175 lt!122461) lt!123446)))

(declare-fun b!291293 () Bool)

(assert (=> b!291293 (= e!181316 0)))

(declare-fun b!291294 () Bool)

(assert (=> b!291294 (= e!181316 (+ 1 (size!3175 (t!40595 lt!122461))))))

(assert (= (and d!86934 c!55191) b!291293))

(assert (= (and d!86934 (not c!55191)) b!291294))

(assert (=> b!291294 m!378801))

(assert (=> b!290106 d!86934))

(assert (=> b!290106 d!86878))

(assert (=> b!290449 d!86384))

(declare-fun d!86936 () Bool)

(declare-fun lt!123449 () Int)

(assert (=> d!86936 (= lt!123449 (size!3175 (list!1655 (_2!2470 lt!122789))))))

(declare-fun size!3182 (Conc!1336) Int)

(assert (=> d!86936 (= lt!123449 (size!3182 (c!54877 (_2!2470 lt!122789))))))

(assert (=> d!86936 (= (size!3177 (_2!2470 lt!122789)) lt!123449)))

(declare-fun bs!33173 () Bool)

(assert (= bs!33173 d!86936))

(assert (=> bs!33173 m!378051))

(assert (=> bs!33173 m!378051))

(declare-fun m!380281 () Bool)

(assert (=> bs!33173 m!380281))

(declare-fun m!380283 () Bool)

(assert (=> bs!33173 m!380283))

(assert (=> b!290419 d!86936))

(declare-fun d!86942 () Bool)

(declare-fun lt!123450 () Int)

(assert (=> d!86942 (= lt!123450 (size!3175 (list!1655 (seqFromList!880 lt!122467))))))

(assert (=> d!86942 (= lt!123450 (size!3182 (c!54877 (seqFromList!880 lt!122467))))))

(assert (=> d!86942 (= (size!3177 (seqFromList!880 lt!122467)) lt!123450)))

(declare-fun bs!33174 () Bool)

(assert (= bs!33174 d!86942))

(assert (=> bs!33174 m!377131))

(assert (=> bs!33174 m!378053))

(assert (=> bs!33174 m!378053))

(declare-fun m!380285 () Bool)

(assert (=> bs!33174 m!380285))

(declare-fun m!380287 () Bool)

(assert (=> bs!33174 m!380287))

(assert (=> b!290419 d!86942))

(declare-fun d!86944 () Bool)

(assert (=> d!86944 (= (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170))))) (list!1661 (c!54879 (_1!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)))))))))

(declare-fun bs!33175 () Bool)

(assert (= bs!33175 d!86944))

(declare-fun m!380289 () Bool)

(assert (=> bs!33175 m!380289))

(assert (=> d!86398 d!86944))

(declare-fun b!291295 () Bool)

(declare-fun res!132917 () Bool)

(declare-fun e!181317 () Bool)

(assert (=> b!291295 (=> (not res!132917) (not e!181317))))

(declare-fun lt!123451 () tuple2!4508)

(assert (=> b!291295 (= res!132917 (= (list!1658 (_1!2470 lt!123451)) (_1!2473 (lexList!229 thiss!17480 rules!1920 (list!1655 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)))))))))

(declare-fun d!86946 () Bool)

(assert (=> d!86946 e!181317))

(declare-fun res!132918 () Bool)

(assert (=> d!86946 (=> (not res!132918) (not e!181317))))

(declare-fun e!181319 () Bool)

(assert (=> d!86946 (= res!132918 e!181319)))

(declare-fun c!55192 () Bool)

(assert (=> d!86946 (= c!55192 (> (size!3176 (_1!2470 lt!123451)) 0))))

(assert (=> d!86946 (= lt!123451 (lexTailRecV2!196 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)) (BalanceConc!2681 Empty!1336) (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)) (BalanceConc!2683 Empty!1337)))))

(assert (=> d!86946 (= (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170))) lt!123451)))

(declare-fun b!291296 () Bool)

(assert (=> b!291296 (= e!181319 (= (_2!2470 lt!123451) (print!368 thiss!17480 (singletonSeq!303 separatorToken!170))))))

(declare-fun b!291297 () Bool)

(declare-fun e!181318 () Bool)

(assert (=> b!291297 (= e!181319 e!181318)))

(declare-fun res!132919 () Bool)

(assert (=> b!291297 (= res!132919 (< (size!3177 (_2!2470 lt!123451)) (size!3177 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)))))))

(assert (=> b!291297 (=> (not res!132919) (not e!181318))))

(declare-fun b!291298 () Bool)

(assert (=> b!291298 (= e!181317 (= (list!1655 (_2!2470 lt!123451)) (_2!2473 (lexList!229 thiss!17480 rules!1920 (list!1655 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)))))))))

(declare-fun b!291299 () Bool)

(assert (=> b!291299 (= e!181318 (not (isEmpty!2628 (_1!2470 lt!123451))))))

(assert (= (and d!86946 c!55192) b!291297))

(assert (= (and d!86946 (not c!55192)) b!291296))

(assert (= (and b!291297 res!132919) b!291299))

(assert (= (and d!86946 res!132918) b!291295))

(assert (= (and b!291295 res!132917) b!291298))

(declare-fun m!380291 () Bool)

(assert (=> b!291298 m!380291))

(assert (=> b!291298 m!378027))

(declare-fun m!380293 () Bool)

(assert (=> b!291298 m!380293))

(assert (=> b!291298 m!380293))

(declare-fun m!380295 () Bool)

(assert (=> b!291298 m!380295))

(declare-fun m!380297 () Bool)

(assert (=> b!291297 m!380297))

(assert (=> b!291297 m!378027))

(declare-fun m!380299 () Bool)

(assert (=> b!291297 m!380299))

(declare-fun m!380301 () Bool)

(assert (=> d!86946 m!380301))

(assert (=> d!86946 m!378027))

(assert (=> d!86946 m!378027))

(declare-fun m!380303 () Bool)

(assert (=> d!86946 m!380303))

(declare-fun m!380305 () Bool)

(assert (=> b!291299 m!380305))

(declare-fun m!380307 () Bool)

(assert (=> b!291295 m!380307))

(assert (=> b!291295 m!378027))

(assert (=> b!291295 m!380293))

(assert (=> b!291295 m!380293))

(assert (=> b!291295 m!380295))

(assert (=> d!86398 d!86946))

(declare-fun d!86948 () Bool)

(assert (=> d!86948 (= (list!1658 (singletonSeq!303 separatorToken!170)) (list!1661 (c!54879 (singletonSeq!303 separatorToken!170))))))

(declare-fun bs!33176 () Bool)

(assert (= bs!33176 d!86948))

(declare-fun m!380309 () Bool)

(assert (=> bs!33176 m!380309))

(assert (=> d!86398 d!86948))

(declare-fun d!86950 () Bool)

(declare-fun lt!123452 () BalanceConc!2680)

(assert (=> d!86950 (= (list!1655 lt!123452) (printList!317 thiss!17480 (list!1658 (singletonSeq!303 separatorToken!170))))))

(assert (=> d!86950 (= lt!123452 (printTailRec!329 thiss!17480 (singletonSeq!303 separatorToken!170) 0 (BalanceConc!2681 Empty!1336)))))

(assert (=> d!86950 (= (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)) lt!123452)))

(declare-fun bs!33177 () Bool)

(assert (= bs!33177 d!86950))

(declare-fun m!380311 () Bool)

(assert (=> bs!33177 m!380311))

(assert (=> bs!33177 m!378031))

(assert (=> bs!33177 m!378037))

(assert (=> bs!33177 m!378037))

(declare-fun m!380313 () Bool)

(assert (=> bs!33177 m!380313))

(assert (=> bs!33177 m!378031))

(declare-fun m!380315 () Bool)

(assert (=> bs!33177 m!380315))

(assert (=> d!86398 d!86950))

(assert (=> d!86398 d!86422))

(declare-fun d!86952 () Bool)

(declare-fun e!181320 () Bool)

(assert (=> d!86952 e!181320))

(declare-fun res!132920 () Bool)

(assert (=> d!86952 (=> (not res!132920) (not e!181320))))

(declare-fun lt!123453 () BalanceConc!2682)

(assert (=> d!86952 (= res!132920 (= (list!1658 lt!123453) (Cons!3955 separatorToken!170 Nil!3955)))))

(assert (=> d!86952 (= lt!123453 (singleton!134 separatorToken!170))))

(assert (=> d!86952 (= (singletonSeq!303 separatorToken!170) lt!123453)))

(declare-fun b!291300 () Bool)

(assert (=> b!291300 (= e!181320 (isBalanced!379 (c!54879 lt!123453)))))

(assert (= (and d!86952 res!132920) b!291300))

(declare-fun m!380317 () Bool)

(assert (=> d!86952 m!380317))

(declare-fun m!380319 () Bool)

(assert (=> d!86952 m!380319))

(declare-fun m!380321 () Bool)

(assert (=> b!291300 m!380321))

(assert (=> d!86398 d!86952))

(declare-fun d!86954 () Bool)

(declare-fun lt!123454 () Int)

(assert (=> d!86954 (= lt!123454 (size!3178 (list!1658 (_1!2470 lt!122783))))))

(assert (=> d!86954 (= lt!123454 (size!3179 (c!54879 (_1!2470 lt!122783))))))

(assert (=> d!86954 (= (size!3176 (_1!2470 lt!122783)) lt!123454)))

(declare-fun bs!33178 () Bool)

(assert (= bs!33178 d!86954))

(declare-fun m!380323 () Bool)

(assert (=> bs!33178 m!380323))

(assert (=> bs!33178 m!380323))

(declare-fun m!380325 () Bool)

(assert (=> bs!33178 m!380325))

(declare-fun m!380327 () Bool)

(assert (=> bs!33178 m!380327))

(assert (=> d!86398 d!86954))

(declare-fun b!291303 () Bool)

(declare-fun res!132921 () Bool)

(declare-fun e!181321 () Bool)

(assert (=> b!291303 (=> (not res!132921) (not e!181321))))

(assert (=> b!291303 (= res!132921 (>= (height!171 (++!1063 (c!54877 call!16473) (c!54877 lt!122754))) (max!0 (height!171 (c!54877 call!16473)) (height!171 (c!54877 lt!122754)))))))

(declare-fun b!291301 () Bool)

(declare-fun res!132924 () Bool)

(assert (=> b!291301 (=> (not res!132924) (not e!181321))))

(assert (=> b!291301 (= res!132924 (isBalanced!381 (++!1063 (c!54877 call!16473) (c!54877 lt!122754))))))

(declare-fun d!86956 () Bool)

(assert (=> d!86956 e!181321))

(declare-fun res!132923 () Bool)

(assert (=> d!86956 (=> (not res!132923) (not e!181321))))

(assert (=> d!86956 (= res!132923 (appendAssocInst!71 (c!54877 call!16473) (c!54877 lt!122754)))))

(declare-fun lt!123455 () BalanceConc!2680)

(assert (=> d!86956 (= lt!123455 (BalanceConc!2681 (++!1063 (c!54877 call!16473) (c!54877 lt!122754))))))

(assert (=> d!86956 (= (++!1060 call!16473 lt!122754) lt!123455)))

(declare-fun b!291304 () Bool)

(assert (=> b!291304 (= e!181321 (= (list!1655 lt!123455) (++!1058 (list!1655 call!16473) (list!1655 lt!122754))))))

(declare-fun b!291302 () Bool)

(declare-fun res!132922 () Bool)

(assert (=> b!291302 (=> (not res!132922) (not e!181321))))

(assert (=> b!291302 (= res!132922 (<= (height!171 (++!1063 (c!54877 call!16473) (c!54877 lt!122754))) (+ (max!0 (height!171 (c!54877 call!16473)) (height!171 (c!54877 lt!122754))) 1)))))

(assert (= (and d!86956 res!132923) b!291301))

(assert (= (and b!291301 res!132924) b!291302))

(assert (= (and b!291302 res!132922) b!291303))

(assert (= (and b!291303 res!132921) b!291304))

(declare-fun m!380329 () Bool)

(assert (=> b!291302 m!380329))

(declare-fun m!380331 () Bool)

(assert (=> b!291302 m!380331))

(declare-fun m!380333 () Bool)

(assert (=> b!291302 m!380333))

(assert (=> b!291302 m!380329))

(assert (=> b!291302 m!380333))

(declare-fun m!380335 () Bool)

(assert (=> b!291302 m!380335))

(assert (=> b!291302 m!380331))

(declare-fun m!380337 () Bool)

(assert (=> b!291302 m!380337))

(declare-fun m!380339 () Bool)

(assert (=> b!291304 m!380339))

(declare-fun m!380341 () Bool)

(assert (=> b!291304 m!380341))

(assert (=> b!291304 m!377941))

(assert (=> b!291304 m!380341))

(assert (=> b!291304 m!377941))

(declare-fun m!380343 () Bool)

(assert (=> b!291304 m!380343))

(assert (=> b!291303 m!380329))

(assert (=> b!291303 m!380331))

(assert (=> b!291303 m!380333))

(assert (=> b!291303 m!380329))

(assert (=> b!291303 m!380333))

(assert (=> b!291303 m!380335))

(assert (=> b!291303 m!380331))

(assert (=> b!291303 m!380337))

(assert (=> b!291301 m!380331))

(assert (=> b!291301 m!380331))

(declare-fun m!380345 () Bool)

(assert (=> b!291301 m!380345))

(declare-fun m!380347 () Bool)

(assert (=> d!86956 m!380347))

(assert (=> d!86956 m!380331))

(assert (=> b!290310 d!86956))

(declare-fun b!291307 () Bool)

(declare-fun res!132925 () Bool)

(declare-fun e!181322 () Bool)

(assert (=> b!291307 (=> (not res!132925) (not e!181322))))

(assert (=> b!291307 (= res!132925 (>= (height!171 (++!1063 (c!54877 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))) (c!54877 lt!122754))) (max!0 (height!171 (c!54877 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))) (height!171 (c!54877 lt!122754)))))))

(declare-fun b!291305 () Bool)

(declare-fun res!132928 () Bool)

(assert (=> b!291305 (=> (not res!132928) (not e!181322))))

(assert (=> b!291305 (= res!132928 (isBalanced!381 (++!1063 (c!54877 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))) (c!54877 lt!122754))))))

(declare-fun d!86958 () Bool)

(assert (=> d!86958 e!181322))

(declare-fun res!132927 () Bool)

(assert (=> d!86958 (=> (not res!132927) (not e!181322))))

(assert (=> d!86958 (= res!132927 (appendAssocInst!71 (c!54877 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))) (c!54877 lt!122754)))))

(declare-fun lt!123456 () BalanceConc!2680)

(assert (=> d!86958 (= lt!123456 (BalanceConc!2681 (++!1063 (c!54877 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))) (c!54877 lt!122754))))))

(assert (=> d!86958 (= (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754) lt!123456)))

(declare-fun b!291308 () Bool)

(assert (=> b!291308 (= e!181322 (= (list!1655 lt!123456) (++!1058 (list!1655 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))) (list!1655 lt!122754))))))

(declare-fun b!291306 () Bool)

(declare-fun res!132926 () Bool)

(assert (=> b!291306 (=> (not res!132926) (not e!181322))))

(assert (=> b!291306 (= res!132926 (<= (height!171 (++!1063 (c!54877 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))) (c!54877 lt!122754))) (+ (max!0 (height!171 (c!54877 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))) (height!171 (c!54877 lt!122754))) 1)))))

(assert (= (and d!86958 res!132927) b!291305))

(assert (= (and b!291305 res!132928) b!291306))

(assert (= (and b!291306 res!132926) b!291307))

(assert (= (and b!291307 res!132925) b!291308))

(declare-fun m!380349 () Bool)

(assert (=> b!291306 m!380349))

(declare-fun m!380351 () Bool)

(assert (=> b!291306 m!380351))

(assert (=> b!291306 m!380333))

(assert (=> b!291306 m!380349))

(assert (=> b!291306 m!380333))

(declare-fun m!380353 () Bool)

(assert (=> b!291306 m!380353))

(assert (=> b!291306 m!380351))

(declare-fun m!380355 () Bool)

(assert (=> b!291306 m!380355))

(declare-fun m!380357 () Bool)

(assert (=> b!291308 m!380357))

(assert (=> b!291308 m!377925))

(declare-fun m!380359 () Bool)

(assert (=> b!291308 m!380359))

(assert (=> b!291308 m!377941))

(assert (=> b!291308 m!380359))

(assert (=> b!291308 m!377941))

(declare-fun m!380361 () Bool)

(assert (=> b!291308 m!380361))

(assert (=> b!291307 m!380349))

(assert (=> b!291307 m!380351))

(assert (=> b!291307 m!380333))

(assert (=> b!291307 m!380349))

(assert (=> b!291307 m!380333))

(assert (=> b!291307 m!380353))

(assert (=> b!291307 m!380351))

(assert (=> b!291307 m!380355))

(assert (=> b!291305 m!380351))

(assert (=> b!291305 m!380351))

(declare-fun m!380363 () Bool)

(assert (=> b!291305 m!380363))

(declare-fun m!380365 () Bool)

(assert (=> d!86958 m!380365))

(assert (=> d!86958 m!380351))

(assert (=> b!290313 d!86958))

(declare-fun d!86960 () Bool)

(declare-fun e!181323 () Bool)

(assert (=> d!86960 e!181323))

(declare-fun res!132929 () Bool)

(assert (=> d!86960 (=> (not res!132929) (not e!181323))))

(declare-fun lt!123457 () List!3965)

(assert (=> d!86960 (= res!132929 (= ((_ map implies) (content!588 lt!123457) (content!588 lt!122760)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181324 () List!3965)

(assert (=> d!86960 (= lt!123457 e!181324)))

(declare-fun c!55194 () Bool)

(assert (=> d!86960 (= c!55194 ((_ is Nil!3955) lt!122760))))

(assert (=> d!86960 (= (drop!237 lt!122760 0) lt!123457)))

(declare-fun b!291309 () Bool)

(declare-fun e!181325 () Int)

(assert (=> b!291309 (= e!181325 0)))

(declare-fun b!291310 () Bool)

(declare-fun e!181327 () List!3965)

(assert (=> b!291310 (= e!181327 (drop!237 (t!40597 lt!122760) (- 0 1)))))

(declare-fun b!291311 () Bool)

(declare-fun call!16529 () Int)

(assert (=> b!291311 (= e!181325 (- call!16529 0))))

(declare-fun bm!16524 () Bool)

(assert (=> bm!16524 (= call!16529 (size!3178 lt!122760))))

(declare-fun b!291312 () Bool)

(assert (=> b!291312 (= e!181324 Nil!3955)))

(declare-fun b!291313 () Bool)

(assert (=> b!291313 (= e!181327 lt!122760)))

(declare-fun b!291314 () Bool)

(declare-fun e!181326 () Int)

(assert (=> b!291314 (= e!181326 e!181325)))

(declare-fun c!55195 () Bool)

(assert (=> b!291314 (= c!55195 (>= 0 call!16529))))

(declare-fun b!291315 () Bool)

(assert (=> b!291315 (= e!181326 call!16529)))

(declare-fun b!291316 () Bool)

(assert (=> b!291316 (= e!181323 (= (size!3178 lt!123457) e!181326))))

(declare-fun c!55196 () Bool)

(assert (=> b!291316 (= c!55196 (<= 0 0))))

(declare-fun b!291317 () Bool)

(assert (=> b!291317 (= e!181324 e!181327)))

(declare-fun c!55193 () Bool)

(assert (=> b!291317 (= c!55193 (<= 0 0))))

(assert (= (and d!86960 c!55194) b!291312))

(assert (= (and d!86960 (not c!55194)) b!291317))

(assert (= (and b!291317 c!55193) b!291313))

(assert (= (and b!291317 (not c!55193)) b!291310))

(assert (= (and d!86960 res!132929) b!291316))

(assert (= (and b!291316 c!55196) b!291315))

(assert (= (and b!291316 (not c!55196)) b!291314))

(assert (= (and b!291314 c!55195) b!291309))

(assert (= (and b!291314 (not c!55195)) b!291311))

(assert (= (or b!291315 b!291314 b!291311) bm!16524))

(declare-fun m!380367 () Bool)

(assert (=> d!86960 m!380367))

(declare-fun m!380369 () Bool)

(assert (=> d!86960 m!380369))

(declare-fun m!380371 () Bool)

(assert (=> b!291310 m!380371))

(declare-fun m!380373 () Bool)

(assert (=> bm!16524 m!380373))

(declare-fun m!380375 () Bool)

(assert (=> b!291316 m!380375))

(assert (=> b!290313 d!86960))

(declare-fun d!86962 () Bool)

(declare-fun e!181328 () Bool)

(assert (=> d!86962 e!181328))

(declare-fun res!132930 () Bool)

(assert (=> d!86962 (=> (not res!132930) (not e!181328))))

(declare-fun lt!123458 () List!3965)

(assert (=> d!86962 (= res!132930 (= ((_ map implies) (content!588 lt!123458) (content!588 lt!122760)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181329 () List!3965)

(assert (=> d!86962 (= lt!123458 e!181329)))

(declare-fun c!55198 () Bool)

(assert (=> d!86962 (= c!55198 ((_ is Nil!3955) lt!122760))))

(assert (=> d!86962 (= (drop!237 lt!122760 (+ 0 1)) lt!123458)))

(declare-fun b!291318 () Bool)

(declare-fun e!181330 () Int)

(assert (=> b!291318 (= e!181330 0)))

(declare-fun b!291319 () Bool)

(declare-fun e!181332 () List!3965)

(assert (=> b!291319 (= e!181332 (drop!237 (t!40597 lt!122760) (- (+ 0 1) 1)))))

(declare-fun b!291320 () Bool)

(declare-fun call!16530 () Int)

(assert (=> b!291320 (= e!181330 (- call!16530 (+ 0 1)))))

(declare-fun bm!16525 () Bool)

(assert (=> bm!16525 (= call!16530 (size!3178 lt!122760))))

(declare-fun b!291321 () Bool)

(assert (=> b!291321 (= e!181329 Nil!3955)))

(declare-fun b!291322 () Bool)

(assert (=> b!291322 (= e!181332 lt!122760)))

(declare-fun b!291323 () Bool)

(declare-fun e!181331 () Int)

(assert (=> b!291323 (= e!181331 e!181330)))

(declare-fun c!55199 () Bool)

(assert (=> b!291323 (= c!55199 (>= (+ 0 1) call!16530))))

(declare-fun b!291324 () Bool)

(assert (=> b!291324 (= e!181331 call!16530)))

(declare-fun b!291325 () Bool)

(assert (=> b!291325 (= e!181328 (= (size!3178 lt!123458) e!181331))))

(declare-fun c!55200 () Bool)

(assert (=> b!291325 (= c!55200 (<= (+ 0 1) 0))))

(declare-fun b!291326 () Bool)

(assert (=> b!291326 (= e!181329 e!181332)))

(declare-fun c!55197 () Bool)

(assert (=> b!291326 (= c!55197 (<= (+ 0 1) 0))))

(assert (= (and d!86962 c!55198) b!291321))

(assert (= (and d!86962 (not c!55198)) b!291326))

(assert (= (and b!291326 c!55197) b!291322))

(assert (= (and b!291326 (not c!55197)) b!291319))

(assert (= (and d!86962 res!132930) b!291325))

(assert (= (and b!291325 c!55200) b!291324))

(assert (= (and b!291325 (not c!55200)) b!291323))

(assert (= (and b!291323 c!55199) b!291318))

(assert (= (and b!291323 (not c!55199)) b!291320))

(assert (= (or b!291324 b!291323 b!291320) bm!16525))

(declare-fun m!380377 () Bool)

(assert (=> d!86962 m!380377))

(assert (=> d!86962 m!380369))

(declare-fun m!380379 () Bool)

(assert (=> b!291319 m!380379))

(assert (=> bm!16525 m!380373))

(declare-fun m!380381 () Bool)

(assert (=> b!291325 m!380381))

(assert (=> b!290313 d!86962))

(declare-fun d!86964 () Bool)

(assert (=> d!86964 (= (head!934 (drop!237 lt!122765 0)) (h!9352 (drop!237 lt!122765 0)))))

(assert (=> b!290313 d!86964))

(declare-fun d!86966 () Bool)

(assert (=> d!86966 (= (tail!516 (drop!237 lt!122760 0)) (drop!237 lt!122760 (+ 0 1)))))

(declare-fun lt!123459 () Unit!5362)

(assert (=> d!86966 (= lt!123459 (choose!2614 lt!122760 0))))

(declare-fun e!181333 () Bool)

(assert (=> d!86966 e!181333))

(declare-fun res!132931 () Bool)

(assert (=> d!86966 (=> (not res!132931) (not e!181333))))

(assert (=> d!86966 (= res!132931 (>= 0 0))))

(assert (=> d!86966 (= (lemmaDropTail!216 lt!122760 0) lt!123459)))

(declare-fun b!291327 () Bool)

(assert (=> b!291327 (= e!181333 (< 0 (size!3178 lt!122760)))))

(assert (= (and d!86966 res!132931) b!291327))

(assert (=> d!86966 m!377911))

(assert (=> d!86966 m!377911))

(assert (=> d!86966 m!377913))

(assert (=> d!86966 m!377917))

(declare-fun m!380383 () Bool)

(assert (=> d!86966 m!380383))

(assert (=> b!291327 m!380373))

(assert (=> b!290313 d!86966))

(declare-fun d!86968 () Bool)

(declare-fun lt!123460 () Token!1258)

(assert (=> d!86968 (contains!775 lt!122765 lt!123460)))

(declare-fun e!181334 () Token!1258)

(assert (=> d!86968 (= lt!123460 e!181334)))

(declare-fun c!55201 () Bool)

(assert (=> d!86968 (= c!55201 (= 0 0))))

(declare-fun e!181335 () Bool)

(assert (=> d!86968 e!181335))

(declare-fun res!132932 () Bool)

(assert (=> d!86968 (=> (not res!132932) (not e!181335))))

(assert (=> d!86968 (= res!132932 (<= 0 0))))

(assert (=> d!86968 (= (apply!851 lt!122765 0) lt!123460)))

(declare-fun b!291328 () Bool)

(assert (=> b!291328 (= e!181335 (< 0 (size!3178 lt!122765)))))

(declare-fun b!291329 () Bool)

(assert (=> b!291329 (= e!181334 (head!934 lt!122765))))

(declare-fun b!291330 () Bool)

(assert (=> b!291330 (= e!181334 (apply!851 (tail!516 lt!122765) (- 0 1)))))

(assert (= (and d!86968 res!132932) b!291328))

(assert (= (and d!86968 c!55201) b!291329))

(assert (= (and d!86968 (not c!55201)) b!291330))

(declare-fun m!380385 () Bool)

(assert (=> d!86968 m!380385))

(declare-fun m!380387 () Bool)

(assert (=> b!291328 m!380387))

(declare-fun m!380389 () Bool)

(assert (=> b!291329 m!380389))

(declare-fun m!380391 () Bool)

(assert (=> b!291330 m!380391))

(assert (=> b!291330 m!380391))

(declare-fun m!380393 () Bool)

(assert (=> b!291330 m!380393))

(assert (=> b!290313 d!86968))

(assert (=> b!290313 d!86688))

(declare-fun b!291331 () Bool)

(declare-fun e!181338 () Option!876)

(declare-fun lt!123466 () Option!876)

(declare-fun lt!123463 () Option!876)

(assert (=> b!291331 (= e!181338 (ite (and ((_ is None!875) lt!123466) ((_ is None!875) lt!123463)) None!875 (ite ((_ is None!875) lt!123463) lt!123466 (ite ((_ is None!875) lt!123466) lt!123463 (ite (>= (size!3171 (_1!2469 (v!14826 lt!123466))) (size!3171 (_1!2469 (v!14826 lt!123463)))) lt!123466 lt!123463)))))))

(declare-fun call!16531 () Option!876)

(assert (=> b!291331 (= lt!123466 call!16531)))

(assert (=> b!291331 (= lt!123463 (maxPrefixZipperSequence!322 thiss!17480 (t!40596 rules!1920) (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))

(declare-fun b!291332 () Bool)

(declare-fun e!181336 () Bool)

(declare-fun e!181337 () Bool)

(assert (=> b!291332 (= e!181336 e!181337)))

(declare-fun res!132935 () Bool)

(assert (=> b!291332 (=> res!132935 e!181337)))

(declare-fun lt!123465 () Option!876)

(assert (=> b!291332 (= res!132935 (not (isDefined!715 lt!123465)))))

(declare-fun b!291333 () Bool)

(declare-fun e!181339 () Bool)

(assert (=> b!291333 (= e!181339 (= (list!1655 (_2!2469 (get!1337 lt!123465))) (_2!2471 (get!1336 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))))))

(declare-fun b!291334 () Bool)

(declare-fun res!132938 () Bool)

(assert (=> b!291334 (=> (not res!132938) (not e!181336))))

(declare-fun e!181341 () Bool)

(assert (=> b!291334 (= res!132938 e!181341)))

(declare-fun res!132934 () Bool)

(assert (=> b!291334 (=> res!132934 e!181341)))

(assert (=> b!291334 (= res!132934 (not (isDefined!715 lt!123465)))))

(declare-fun d!86970 () Bool)

(assert (=> d!86970 e!181336))

(declare-fun res!132936 () Bool)

(assert (=> d!86970 (=> (not res!132936) (not e!181336))))

(assert (=> d!86970 (= res!132936 (= (isDefined!715 lt!123465) (isDefined!716 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754))))))))

(assert (=> d!86970 (= lt!123465 e!181338)))

(declare-fun c!55202 () Bool)

(assert (=> d!86970 (= c!55202 (and ((_ is Cons!3954) rules!1920) ((_ is Nil!3954) (t!40596 rules!1920))))))

(declare-fun lt!123461 () Unit!5362)

(declare-fun lt!123467 () Unit!5362)

(assert (=> d!86970 (= lt!123461 lt!123467)))

(declare-fun lt!123464 () List!3963)

(declare-fun lt!123462 () List!3963)

(assert (=> d!86970 (isPrefix!421 lt!123464 lt!123462)))

(assert (=> d!86970 (= lt!123467 (lemmaIsPrefixRefl!227 lt!123464 lt!123462))))

(assert (=> d!86970 (= lt!123462 (list!1655 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))

(assert (=> d!86970 (= lt!123464 (list!1655 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))

(assert (=> d!86970 (rulesValidInductive!222 thiss!17480 rules!1920)))

(assert (=> d!86970 (= (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)) lt!123465)))

(declare-fun b!291335 () Bool)

(assert (=> b!291335 (= e!181341 e!181339)))

(declare-fun res!132933 () Bool)

(assert (=> b!291335 (=> (not res!132933) (not e!181339))))

(assert (=> b!291335 (= res!132933 (= (_1!2469 (get!1337 lt!123465)) (_1!2471 (get!1336 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))))))

(declare-fun bm!16526 () Bool)

(assert (=> bm!16526 (= call!16531 (maxPrefixOneRuleZipperSequence!131 thiss!17480 (h!9351 rules!1920) (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))

(declare-fun b!291336 () Bool)

(assert (=> b!291336 (= e!181338 call!16531)))

(declare-fun b!291337 () Bool)

(declare-fun e!181340 () Bool)

(assert (=> b!291337 (= e!181337 e!181340)))

(declare-fun res!132937 () Bool)

(assert (=> b!291337 (=> (not res!132937) (not e!181340))))

(assert (=> b!291337 (= res!132937 (= (_1!2469 (get!1337 lt!123465)) (_1!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))))))

(declare-fun b!291338 () Bool)

(assert (=> b!291338 (= e!181340 (= (list!1655 (_2!2469 (get!1337 lt!123465))) (_2!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!122754)))))))))

(assert (= (and d!86970 c!55202) b!291336))

(assert (= (and d!86970 (not c!55202)) b!291331))

(assert (= (or b!291336 b!291331) bm!16526))

(assert (= (and d!86970 res!132936) b!291334))

(assert (= (and b!291334 (not res!132934)) b!291335))

(assert (= (and b!291335 res!132933) b!291333))

(assert (= (and b!291334 res!132938) b!291332))

(assert (= (and b!291332 (not res!132935)) b!291337))

(assert (= (and b!291337 res!132937) b!291338))

(declare-fun m!380395 () Bool)

(assert (=> b!291333 m!380395))

(assert (=> b!291333 m!377927))

(declare-fun m!380397 () Bool)

(assert (=> b!291333 m!380397))

(assert (=> b!291333 m!380397))

(declare-fun m!380399 () Bool)

(assert (=> b!291333 m!380399))

(declare-fun m!380401 () Bool)

(assert (=> b!291333 m!380401))

(assert (=> b!291333 m!380399))

(declare-fun m!380403 () Bool)

(assert (=> b!291333 m!380403))

(declare-fun m!380405 () Bool)

(assert (=> b!291334 m!380405))

(assert (=> b!291335 m!380395))

(assert (=> b!291335 m!377927))

(assert (=> b!291335 m!380397))

(assert (=> b!291335 m!380397))

(assert (=> b!291335 m!380399))

(assert (=> b!291335 m!380399))

(assert (=> b!291335 m!380403))

(assert (=> bm!16526 m!377927))

(declare-fun m!380407 () Bool)

(assert (=> bm!16526 m!380407))

(assert (=> b!291338 m!380395))

(assert (=> b!291338 m!377927))

(assert (=> b!291338 m!380397))

(assert (=> b!291338 m!380397))

(declare-fun m!380409 () Bool)

(assert (=> b!291338 m!380409))

(assert (=> b!291338 m!380409))

(declare-fun m!380411 () Bool)

(assert (=> b!291338 m!380411))

(assert (=> b!291338 m!380401))

(assert (=> b!291331 m!377927))

(declare-fun m!380413 () Bool)

(assert (=> b!291331 m!380413))

(assert (=> d!86970 m!377927))

(assert (=> d!86970 m!380397))

(assert (=> d!86970 m!380405))

(assert (=> d!86970 m!380397))

(assert (=> d!86970 m!380399))

(declare-fun m!380415 () Bool)

(assert (=> d!86970 m!380415))

(assert (=> d!86970 m!380399))

(declare-fun m!380417 () Bool)

(assert (=> d!86970 m!380417))

(declare-fun m!380419 () Bool)

(assert (=> d!86970 m!380419))

(assert (=> d!86970 m!377481))

(assert (=> b!291332 m!380405))

(assert (=> b!291337 m!380395))

(assert (=> b!291337 m!377927))

(assert (=> b!291337 m!380397))

(assert (=> b!291337 m!380397))

(assert (=> b!291337 m!380409))

(assert (=> b!291337 m!380409))

(assert (=> b!291337 m!380411))

(assert (=> b!290313 d!86970))

(declare-fun bs!33179 () Bool)

(declare-fun d!86972 () Bool)

(assert (= bs!33179 (and d!86972 b!290883)))

(declare-fun lambda!10018 () Int)

(assert (=> bs!33179 (not (= lambda!10018 lambda!9995))))

(declare-fun bs!33180 () Bool)

(assert (= bs!33180 (and d!86972 b!290433)))

(assert (=> bs!33180 (not (= lambda!10018 lambda!9985))))

(declare-fun bs!33181 () Bool)

(assert (= bs!33181 (and d!86972 b!289852)))

(assert (=> bs!33181 (not (= lambda!10018 lambda!9952))))

(declare-fun bs!33182 () Bool)

(assert (= bs!33182 (and d!86972 b!289856)))

(assert (=> bs!33182 (= lambda!10018 lambda!9951)))

(declare-fun bs!33183 () Bool)

(assert (= bs!33183 (and d!86972 b!290164)))

(assert (=> bs!33183 (not (= lambda!10018 lambda!9966))))

(declare-fun bs!33184 () Bool)

(assert (= bs!33184 (and d!86972 b!290442)))

(assert (=> bs!33184 (not (= lambda!10018 lambda!9986))))

(declare-fun bs!33185 () Bool)

(assert (= bs!33185 (and d!86972 b!291104)))

(assert (=> bs!33185 (not (= lambda!10018 lambda!10005))))

(declare-fun bs!33186 () Bool)

(assert (= bs!33186 (and d!86972 d!86240)))

(assert (=> bs!33186 (not (= lambda!10018 lambda!9957))))

(declare-fun bs!33187 () Bool)

(assert (= bs!33187 (and d!86972 d!86416)))

(assert (=> bs!33187 (= lambda!10018 lambda!9984)))

(declare-fun bs!33188 () Bool)

(assert (= bs!33188 (and d!86972 d!86814)))

(assert (=> bs!33188 (= lambda!10018 lambda!10004)))

(declare-fun bs!33189 () Bool)

(assert (= bs!33189 (and d!86972 b!290961)))

(assert (=> bs!33189 (not (= lambda!10018 lambda!9999))))

(declare-fun bs!33190 () Bool)

(assert (= bs!33190 (and d!86972 d!86334)))

(assert (=> bs!33190 (= lambda!10018 lambda!9977)))

(declare-fun bs!33191 () Bool)

(assert (= bs!33191 (and d!86972 b!290313)))

(assert (=> bs!33191 (not (= lambda!10018 lambda!9978))))

(declare-fun bs!33192 () Bool)

(declare-fun b!291344 () Bool)

(assert (= bs!33192 (and b!291344 b!290883)))

(declare-fun lambda!10019 () Int)

(assert (=> bs!33192 (= lambda!10019 lambda!9995)))

(declare-fun bs!33193 () Bool)

(assert (= bs!33193 (and b!291344 b!290433)))

(assert (=> bs!33193 (= lambda!10019 lambda!9985)))

(declare-fun bs!33194 () Bool)

(assert (= bs!33194 (and b!291344 b!289852)))

(assert (=> bs!33194 (= lambda!10019 lambda!9952)))

(declare-fun bs!33195 () Bool)

(assert (= bs!33195 (and b!291344 b!289856)))

(assert (=> bs!33195 (not (= lambda!10019 lambda!9951))))

(declare-fun bs!33196 () Bool)

(assert (= bs!33196 (and b!291344 b!290164)))

(assert (=> bs!33196 (= lambda!10019 lambda!9966)))

(declare-fun bs!33197 () Bool)

(assert (= bs!33197 (and b!291344 b!290442)))

(assert (=> bs!33197 (= lambda!10019 lambda!9986)))

(declare-fun bs!33198 () Bool)

(assert (= bs!33198 (and b!291344 b!291104)))

(assert (=> bs!33198 (= lambda!10019 lambda!10005)))

(declare-fun bs!33199 () Bool)

(assert (= bs!33199 (and b!291344 d!86240)))

(assert (=> bs!33199 (= lambda!10019 lambda!9957)))

(declare-fun bs!33200 () Bool)

(assert (= bs!33200 (and b!291344 d!86814)))

(assert (=> bs!33200 (not (= lambda!10019 lambda!10004))))

(declare-fun bs!33201 () Bool)

(assert (= bs!33201 (and b!291344 b!290961)))

(assert (=> bs!33201 (= lambda!10019 lambda!9999)))

(declare-fun bs!33202 () Bool)

(assert (= bs!33202 (and b!291344 d!86334)))

(assert (=> bs!33202 (not (= lambda!10019 lambda!9977))))

(declare-fun bs!33203 () Bool)

(assert (= bs!33203 (and b!291344 b!290313)))

(assert (=> bs!33203 (= lambda!10019 lambda!9978)))

(declare-fun bs!33204 () Bool)

(assert (= bs!33204 (and b!291344 d!86416)))

(assert (=> bs!33204 (not (= lambda!10019 lambda!9984))))

(declare-fun bs!33205 () Bool)

(assert (= bs!33205 (and b!291344 d!86972)))

(assert (=> bs!33205 (not (= lambda!10019 lambda!10018))))

(declare-fun b!291354 () Bool)

(declare-fun e!181351 () Bool)

(assert (=> b!291354 (= e!181351 true)))

(declare-fun b!291353 () Bool)

(declare-fun e!181350 () Bool)

(assert (=> b!291353 (= e!181350 e!181351)))

(declare-fun b!291352 () Bool)

(declare-fun e!181349 () Bool)

(assert (=> b!291352 (= e!181349 e!181350)))

(assert (=> b!291344 e!181349))

(assert (= b!291353 b!291354))

(assert (= b!291352 b!291353))

(assert (= (and b!291344 ((_ is Cons!3954) rules!1920)) b!291352))

(assert (=> b!291354 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!10019))))

(assert (=> b!291354 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!10019))))

(assert (=> b!291344 true))

(declare-fun lt!123469 () BalanceConc!2680)

(assert (=> d!86972 (= (list!1655 lt!123469) (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (dropList!184 (seqFromList!879 (t!40597 tokens!465)) (+ 0 1)) separatorToken!170))))

(declare-fun e!181348 () BalanceConc!2680)

(assert (=> d!86972 (= lt!123469 e!181348)))

(declare-fun c!55203 () Bool)

(assert (=> d!86972 (= c!55203 (>= (+ 0 1) (size!3176 (seqFromList!879 (t!40597 tokens!465)))))))

(declare-fun lt!123480 () Unit!5362)

(assert (=> d!86972 (= lt!123480 (lemmaContentSubsetPreservesForall!128 (list!1658 (seqFromList!879 (t!40597 tokens!465))) (dropList!184 (seqFromList!879 (t!40597 tokens!465)) (+ 0 1)) lambda!10018))))

(declare-fun e!181343 () Bool)

(assert (=> d!86972 e!181343))

(declare-fun res!132940 () Bool)

(assert (=> d!86972 (=> (not res!132940) (not e!181343))))

(assert (=> d!86972 (= res!132940 (>= (+ 0 1) 0))))

(assert (=> d!86972 (= (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 (+ 0 1)) lt!123469)))

(declare-fun b!291339 () Bool)

(declare-fun e!181346 () Bool)

(declare-fun lt!123478 () Option!876)

(assert (=> b!291339 (= e!181346 (= (_1!2469 (v!14826 lt!123478)) (apply!850 (seqFromList!879 (t!40597 tokens!465)) (+ 0 1))))))

(declare-fun b!291340 () Bool)

(declare-fun e!181345 () BalanceConc!2680)

(declare-fun call!16536 () Token!1258)

(assert (=> b!291340 (= e!181345 (charsOf!400 call!16536))))

(declare-fun bm!16527 () Bool)

(declare-fun call!16535 () Token!1258)

(assert (=> bm!16527 (= call!16535 (apply!850 (seqFromList!879 (t!40597 tokens!465)) (+ 0 1)))))

(declare-fun bm!16528 () Bool)

(declare-fun call!16533 () BalanceConc!2680)

(declare-fun call!16532 () BalanceConc!2680)

(assert (=> bm!16528 (= call!16533 call!16532)))

(declare-fun b!291341 () Bool)

(declare-fun e!181344 () BalanceConc!2680)

(declare-fun call!16534 () BalanceConc!2680)

(declare-fun lt!123470 () BalanceConc!2680)

(assert (=> b!291341 (= e!181344 (++!1060 call!16534 lt!123470))))

(declare-fun b!291342 () Bool)

(declare-fun e!181342 () Bool)

(assert (=> b!291342 (= e!181342 (not (= (_1!2469 (v!14826 lt!123478)) call!16535)))))

(declare-fun c!55206 () Bool)

(declare-fun c!55205 () Bool)

(declare-fun bm!16529 () Bool)

(assert (=> bm!16529 (= call!16532 (charsOf!400 (ite c!55205 call!16535 (ite c!55206 separatorToken!170 call!16536))))))

(declare-fun b!291343 () Bool)

(assert (=> b!291343 (= c!55206 e!181342)))

(declare-fun res!132941 () Bool)

(assert (=> b!291343 (=> (not res!132941) (not e!181342))))

(assert (=> b!291343 (= res!132941 ((_ is Some!875) lt!123478))))

(declare-fun e!181347 () BalanceConc!2680)

(assert (=> b!291343 (= e!181347 e!181344)))

(assert (=> b!291344 (= e!181348 e!181347)))

(declare-fun lt!123481 () List!3965)

(assert (=> b!291344 (= lt!123481 (list!1658 (seqFromList!879 (t!40597 tokens!465))))))

(declare-fun lt!123471 () Unit!5362)

(assert (=> b!291344 (= lt!123471 (lemmaDropApply!224 lt!123481 (+ 0 1)))))

(assert (=> b!291344 (= (head!934 (drop!237 lt!123481 (+ 0 1))) (apply!851 lt!123481 (+ 0 1)))))

(declare-fun lt!123468 () Unit!5362)

(assert (=> b!291344 (= lt!123468 lt!123471)))

(declare-fun lt!123476 () List!3965)

(assert (=> b!291344 (= lt!123476 (list!1658 (seqFromList!879 (t!40597 tokens!465))))))

(declare-fun lt!123474 () Unit!5362)

(assert (=> b!291344 (= lt!123474 (lemmaDropTail!216 lt!123476 (+ 0 1)))))

(assert (=> b!291344 (= (tail!516 (drop!237 lt!123476 (+ 0 1))) (drop!237 lt!123476 (+ 0 1 1)))))

(declare-fun lt!123479 () Unit!5362)

(assert (=> b!291344 (= lt!123479 lt!123474)))

(declare-fun lt!123472 () Unit!5362)

(assert (=> b!291344 (= lt!123472 (forallContained!310 (list!1658 (seqFromList!879 (t!40597 tokens!465))) lambda!10019 (apply!850 (seqFromList!879 (t!40597 tokens!465)) (+ 0 1))))))

(assert (=> b!291344 (= lt!123470 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!291344 (= lt!123478 (maxPrefixZipperSequence!322 thiss!17480 rules!1920 (++!1060 (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) (+ 0 1))) lt!123470)))))

(declare-fun res!132939 () Bool)

(assert (=> b!291344 (= res!132939 ((_ is Some!875) lt!123478))))

(assert (=> b!291344 (=> (not res!132939) (not e!181346))))

(assert (=> b!291344 (= c!55205 e!181346)))

(declare-fun bm!16530 () Bool)

(declare-fun c!55204 () Bool)

(assert (=> bm!16530 (= c!55204 c!55205)))

(assert (=> bm!16530 (= call!16534 (++!1060 e!181345 (ite c!55205 lt!123470 call!16533)))))

(declare-fun b!291345 () Bool)

(assert (=> b!291345 (= e!181348 (BalanceConc!2681 Empty!1336))))

(declare-fun b!291346 () Bool)

(assert (=> b!291346 (= e!181343 (<= (+ 0 1) (size!3176 (seqFromList!879 (t!40597 tokens!465)))))))

(declare-fun b!291347 () Bool)

(assert (=> b!291347 (= e!181347 call!16534)))

(declare-fun b!291348 () Bool)

(assert (=> b!291348 (= e!181344 (BalanceConc!2681 Empty!1336))))

(assert (=> b!291348 (= (print!368 thiss!17480 (singletonSeq!303 call!16536)) (printTailRec!329 thiss!17480 (singletonSeq!303 call!16536) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!123477 () Unit!5362)

(declare-fun Unit!5400 () Unit!5362)

(assert (=> b!291348 (= lt!123477 Unit!5400)))

(declare-fun lt!123475 () Unit!5362)

(assert (=> b!291348 (= lt!123475 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 (list!1655 call!16533) (list!1655 lt!123470)))))

(assert (=> b!291348 false))

(declare-fun lt!123473 () Unit!5362)

(declare-fun Unit!5401 () Unit!5362)

(assert (=> b!291348 (= lt!123473 Unit!5401)))

(declare-fun b!291349 () Bool)

(assert (=> b!291349 (= e!181345 call!16532)))

(declare-fun bm!16531 () Bool)

(assert (=> bm!16531 (= call!16536 call!16535)))

(assert (= (and d!86972 res!132940) b!291346))

(assert (= (and d!86972 c!55203) b!291345))

(assert (= (and d!86972 (not c!55203)) b!291344))

(assert (= (and b!291344 res!132939) b!291339))

(assert (= (and b!291344 c!55205) b!291347))

(assert (= (and b!291344 (not c!55205)) b!291343))

(assert (= (and b!291343 res!132941) b!291342))

(assert (= (and b!291343 c!55206) b!291341))

(assert (= (and b!291343 (not c!55206)) b!291348))

(assert (= (or b!291341 b!291348) bm!16531))

(assert (= (or b!291341 b!291348) bm!16528))

(assert (= (or b!291347 b!291342 bm!16531) bm!16527))

(assert (= (or b!291347 bm!16528) bm!16529))

(assert (= (or b!291347 b!291341) bm!16530))

(assert (= (and bm!16530 c!55204) b!291349))

(assert (= (and bm!16530 (not c!55204)) b!291340))

(assert (=> bm!16527 m!377161))

(declare-fun m!380421 () Bool)

(assert (=> bm!16527 m!380421))

(assert (=> b!291346 m!377161))

(assert (=> b!291346 m!377905))

(declare-fun m!380423 () Bool)

(assert (=> b!291341 m!380423))

(assert (=> b!291339 m!377161))

(assert (=> b!291339 m!380421))

(declare-fun m!380425 () Bool)

(assert (=> b!291340 m!380425))

(declare-fun m!380427 () Bool)

(assert (=> b!291344 m!380427))

(declare-fun m!380429 () Bool)

(assert (=> b!291344 m!380429))

(assert (=> b!291344 m!377161))

(assert (=> b!291344 m!377915))

(declare-fun m!380431 () Bool)

(assert (=> b!291344 m!380431))

(declare-fun m!380433 () Bool)

(assert (=> b!291344 m!380433))

(declare-fun m!380435 () Bool)

(assert (=> b!291344 m!380435))

(assert (=> b!291344 m!377161))

(declare-fun m!380437 () Bool)

(assert (=> b!291344 m!380437))

(assert (=> b!291344 m!380421))

(declare-fun m!380439 () Bool)

(assert (=> b!291344 m!380439))

(declare-fun m!380441 () Bool)

(assert (=> b!291344 m!380441))

(declare-fun m!380443 () Bool)

(assert (=> b!291344 m!380443))

(assert (=> b!291344 m!380433))

(declare-fun m!380445 () Bool)

(assert (=> b!291344 m!380445))

(assert (=> b!291344 m!380439))

(assert (=> b!291344 m!380441))

(assert (=> b!291344 m!377161))

(assert (=> b!291344 m!380421))

(declare-fun m!380449 () Bool)

(assert (=> b!291344 m!380449))

(assert (=> b!291344 m!380427))

(declare-fun m!380451 () Bool)

(assert (=> b!291344 m!380451))

(assert (=> b!291344 m!377915))

(assert (=> b!291344 m!380421))

(declare-fun m!380459 () Bool)

(assert (=> b!291344 m!380459))

(declare-fun m!380463 () Bool)

(assert (=> bm!16530 m!380463))

(declare-fun m!380465 () Bool)

(assert (=> b!291348 m!380465))

(declare-fun m!380469 () Bool)

(assert (=> b!291348 m!380469))

(declare-fun m!380471 () Bool)

(assert (=> b!291348 m!380471))

(assert (=> b!291348 m!380469))

(assert (=> b!291348 m!380469))

(declare-fun m!380473 () Bool)

(assert (=> b!291348 m!380473))

(declare-fun m!380475 () Bool)

(assert (=> b!291348 m!380475))

(assert (=> b!291348 m!380465))

(declare-fun m!380477 () Bool)

(assert (=> b!291348 m!380477))

(assert (=> b!291348 m!380475))

(assert (=> d!86972 m!377161))

(assert (=> d!86972 m!377905))

(assert (=> d!86972 m!377161))

(assert (=> d!86972 m!377915))

(declare-fun m!380481 () Bool)

(assert (=> d!86972 m!380481))

(declare-fun m!380483 () Bool)

(assert (=> d!86972 m!380483))

(declare-fun m!380485 () Bool)

(assert (=> d!86972 m!380485))

(assert (=> d!86972 m!377161))

(assert (=> d!86972 m!380483))

(assert (=> d!86972 m!377915))

(assert (=> d!86972 m!380483))

(declare-fun m!380489 () Bool)

(assert (=> d!86972 m!380489))

(declare-fun m!380491 () Bool)

(assert (=> bm!16529 m!380491))

(assert (=> b!290313 d!86972))

(declare-fun d!86980 () Bool)

(assert (=> d!86980 (= (tail!516 (drop!237 lt!122760 0)) (t!40597 (drop!237 lt!122760 0)))))

(assert (=> b!290313 d!86980))

(declare-fun d!86982 () Bool)

(assert (=> d!86982 (dynLambda!2110 lambda!9978 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))

(declare-fun lt!123491 () Unit!5362)

(assert (=> d!86982 (= lt!123491 (choose!2606 (list!1658 (seqFromList!879 (t!40597 tokens!465))) lambda!9978 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))))

(declare-fun e!181361 () Bool)

(assert (=> d!86982 e!181361))

(declare-fun res!132945 () Bool)

(assert (=> d!86982 (=> (not res!132945) (not e!181361))))

(assert (=> d!86982 (= res!132945 (forall!1024 (list!1658 (seqFromList!879 (t!40597 tokens!465))) lambda!9978))))

(assert (=> d!86982 (= (forallContained!310 (list!1658 (seqFromList!879 (t!40597 tokens!465))) lambda!9978 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!123491)))

(declare-fun b!291368 () Bool)

(assert (=> b!291368 (= e!181361 (contains!775 (list!1658 (seqFromList!879 (t!40597 tokens!465))) (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))))

(assert (= (and d!86982 res!132945) b!291368))

(declare-fun b_lambda!9759 () Bool)

(assert (=> (not b_lambda!9759) (not d!86982)))

(assert (=> d!86982 m!377903))

(declare-fun m!380493 () Bool)

(assert (=> d!86982 m!380493))

(assert (=> d!86982 m!377915))

(assert (=> d!86982 m!377903))

(declare-fun m!380495 () Bool)

(assert (=> d!86982 m!380495))

(assert (=> d!86982 m!377915))

(declare-fun m!380497 () Bool)

(assert (=> d!86982 m!380497))

(assert (=> b!291368 m!377915))

(assert (=> b!291368 m!377903))

(declare-fun m!380499 () Bool)

(assert (=> b!291368 m!380499))

(assert (=> b!290313 d!86982))

(declare-fun d!86984 () Bool)

(declare-fun e!181362 () Bool)

(assert (=> d!86984 e!181362))

(declare-fun res!132946 () Bool)

(assert (=> d!86984 (=> (not res!132946) (not e!181362))))

(declare-fun lt!123492 () List!3965)

(assert (=> d!86984 (= res!132946 (= ((_ map implies) (content!588 lt!123492) (content!588 lt!122765)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181363 () List!3965)

(assert (=> d!86984 (= lt!123492 e!181363)))

(declare-fun c!55214 () Bool)

(assert (=> d!86984 (= c!55214 ((_ is Nil!3955) lt!122765))))

(assert (=> d!86984 (= (drop!237 lt!122765 0) lt!123492)))

(declare-fun b!291369 () Bool)

(declare-fun e!181364 () Int)

(assert (=> b!291369 (= e!181364 0)))

(declare-fun b!291370 () Bool)

(declare-fun e!181366 () List!3965)

(assert (=> b!291370 (= e!181366 (drop!237 (t!40597 lt!122765) (- 0 1)))))

(declare-fun b!291371 () Bool)

(declare-fun call!16537 () Int)

(assert (=> b!291371 (= e!181364 (- call!16537 0))))

(declare-fun bm!16532 () Bool)

(assert (=> bm!16532 (= call!16537 (size!3178 lt!122765))))

(declare-fun b!291372 () Bool)

(assert (=> b!291372 (= e!181363 Nil!3955)))

(declare-fun b!291373 () Bool)

(assert (=> b!291373 (= e!181366 lt!122765)))

(declare-fun b!291374 () Bool)

(declare-fun e!181365 () Int)

(assert (=> b!291374 (= e!181365 e!181364)))

(declare-fun c!55215 () Bool)

(assert (=> b!291374 (= c!55215 (>= 0 call!16537))))

(declare-fun b!291375 () Bool)

(assert (=> b!291375 (= e!181365 call!16537)))

(declare-fun b!291376 () Bool)

(assert (=> b!291376 (= e!181362 (= (size!3178 lt!123492) e!181365))))

(declare-fun c!55216 () Bool)

(assert (=> b!291376 (= c!55216 (<= 0 0))))

(declare-fun b!291377 () Bool)

(assert (=> b!291377 (= e!181363 e!181366)))

(declare-fun c!55213 () Bool)

(assert (=> b!291377 (= c!55213 (<= 0 0))))

(assert (= (and d!86984 c!55214) b!291372))

(assert (= (and d!86984 (not c!55214)) b!291377))

(assert (= (and b!291377 c!55213) b!291373))

(assert (= (and b!291377 (not c!55213)) b!291370))

(assert (= (and d!86984 res!132946) b!291376))

(assert (= (and b!291376 c!55216) b!291375))

(assert (= (and b!291376 (not c!55216)) b!291374))

(assert (= (and b!291374 c!55215) b!291369))

(assert (= (and b!291374 (not c!55215)) b!291371))

(assert (= (or b!291375 b!291374 b!291371) bm!16532))

(declare-fun m!380501 () Bool)

(assert (=> d!86984 m!380501))

(declare-fun m!380503 () Bool)

(assert (=> d!86984 m!380503))

(declare-fun m!380505 () Bool)

(assert (=> b!291370 m!380505))

(assert (=> bm!16532 m!380387))

(declare-fun m!380507 () Bool)

(assert (=> b!291376 m!380507))

(assert (=> b!290313 d!86984))

(declare-fun d!86986 () Bool)

(assert (=> d!86986 (= (head!934 (drop!237 lt!122765 0)) (apply!851 lt!122765 0))))

(declare-fun lt!123495 () Unit!5362)

(assert (=> d!86986 (= lt!123495 (choose!2613 lt!122765 0))))

(declare-fun e!181367 () Bool)

(assert (=> d!86986 e!181367))

(declare-fun res!132947 () Bool)

(assert (=> d!86986 (=> (not res!132947) (not e!181367))))

(assert (=> d!86986 (= res!132947 (>= 0 0))))

(assert (=> d!86986 (= (lemmaDropApply!224 lt!122765 0) lt!123495)))

(declare-fun b!291378 () Bool)

(assert (=> b!291378 (= e!181367 (< 0 (size!3178 lt!122765)))))

(assert (= (and d!86986 res!132947) b!291378))

(assert (=> d!86986 m!377919))

(assert (=> d!86986 m!377919))

(assert (=> d!86986 m!377931))

(assert (=> d!86986 m!377935))

(declare-fun m!380509 () Bool)

(assert (=> d!86986 m!380509))

(assert (=> b!291378 m!380387))

(assert (=> b!290313 d!86986))

(declare-fun d!86988 () Bool)

(declare-fun lt!123497 () Token!1258)

(assert (=> d!86988 (= lt!123497 (apply!851 (list!1658 (seqFromList!879 (t!40597 tokens!465))) 0))))

(assert (=> d!86988 (= lt!123497 (apply!854 (c!54879 (seqFromList!879 (t!40597 tokens!465))) 0))))

(declare-fun e!181368 () Bool)

(assert (=> d!86988 e!181368))

(declare-fun res!132948 () Bool)

(assert (=> d!86988 (=> (not res!132948) (not e!181368))))

(assert (=> d!86988 (= res!132948 (<= 0 0))))

(assert (=> d!86988 (= (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0) lt!123497)))

(declare-fun b!291379 () Bool)

(assert (=> b!291379 (= e!181368 (< 0 (size!3176 (seqFromList!879 (t!40597 tokens!465)))))))

(assert (= (and d!86988 res!132948) b!291379))

(assert (=> d!86988 m!377161))

(assert (=> d!86988 m!377915))

(assert (=> d!86988 m!377915))

(declare-fun m!380517 () Bool)

(assert (=> d!86988 m!380517))

(declare-fun m!380519 () Bool)

(assert (=> d!86988 m!380519))

(assert (=> b!291379 m!377161))

(assert (=> b!291379 m!377905))

(assert (=> b!290313 d!86988))

(declare-fun d!86992 () Bool)

(declare-fun lt!123499 () BalanceConc!2680)

(assert (=> d!86992 (= (list!1655 lt!123499) (originalCharacters!800 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))))

(assert (=> d!86992 (= lt!123499 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))) (value!25890 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))))

(assert (=> d!86992 (= (charsOf!400 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) lt!123499)))

(declare-fun b_lambda!9761 () Bool)

(assert (=> (not b_lambda!9761) (not d!86992)))

(declare-fun t!40752 () Bool)

(declare-fun tb!17105 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))) t!40752) tb!17105))

(declare-fun b!291388 () Bool)

(declare-fun e!181373 () Bool)

(declare-fun tp!105915 () Bool)

(assert (=> b!291388 (= e!181373 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))) (value!25890 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))) tp!105915))))

(declare-fun result!20974 () Bool)

(assert (=> tb!17105 (= result!20974 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))) (value!25890 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))) e!181373))))

(assert (= tb!17105 b!291388))

(declare-fun m!380527 () Bool)

(assert (=> b!291388 m!380527))

(declare-fun m!380529 () Bool)

(assert (=> tb!17105 m!380529))

(assert (=> d!86992 t!40752))

(declare-fun b_and!23685 () Bool)

(assert (= b_and!23671 (and (=> t!40752 result!20974) b_and!23685)))

(declare-fun t!40754 () Bool)

(declare-fun tb!17107 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))) t!40754) tb!17107))

(declare-fun result!20976 () Bool)

(assert (= result!20976 result!20974))

(assert (=> d!86992 t!40754))

(declare-fun b_and!23687 () Bool)

(assert (= b_and!23667 (and (=> t!40754 result!20976) b_and!23687)))

(declare-fun tb!17109 () Bool)

(declare-fun t!40756 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))) t!40756) tb!17109))

(declare-fun result!20978 () Bool)

(assert (= result!20978 result!20974))

(assert (=> d!86992 t!40756))

(declare-fun b_and!23689 () Bool)

(assert (= b_and!23673 (and (=> t!40756 result!20978) b_and!23689)))

(declare-fun tb!17111 () Bool)

(declare-fun t!40758 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))) t!40758) tb!17111))

(declare-fun result!20980 () Bool)

(assert (= result!20980 result!20974))

(assert (=> d!86992 t!40758))

(declare-fun b_and!23691 () Bool)

(assert (= b_and!23665 (and (=> t!40758 result!20980) b_and!23691)))

(declare-fun tb!17113 () Bool)

(declare-fun t!40760 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))) t!40760) tb!17113))

(declare-fun result!20982 () Bool)

(assert (= result!20982 result!20974))

(assert (=> d!86992 t!40760))

(declare-fun b_and!23693 () Bool)

(assert (= b_and!23669 (and (=> t!40760 result!20982) b_and!23693)))

(declare-fun m!380531 () Bool)

(assert (=> d!86992 m!380531))

(declare-fun m!380533 () Bool)

(assert (=> d!86992 m!380533))

(assert (=> b!290313 d!86992))

(declare-fun b!291394 () Bool)

(declare-fun res!132949 () Bool)

(declare-fun e!181377 () Bool)

(assert (=> b!291394 (=> (not res!132949) (not e!181377))))

(assert (=> b!291394 (= res!132949 (>= (height!171 (++!1063 (c!54877 e!180800) (c!54877 (ite c!54996 lt!122792 call!16477)))) (max!0 (height!171 (c!54877 e!180800)) (height!171 (c!54877 (ite c!54996 lt!122792 call!16477))))))))

(declare-fun b!291392 () Bool)

(declare-fun res!132952 () Bool)

(assert (=> b!291392 (=> (not res!132952) (not e!181377))))

(assert (=> b!291392 (= res!132952 (isBalanced!381 (++!1063 (c!54877 e!180800) (c!54877 (ite c!54996 lt!122792 call!16477)))))))

(declare-fun d!86998 () Bool)

(assert (=> d!86998 e!181377))

(declare-fun res!132951 () Bool)

(assert (=> d!86998 (=> (not res!132951) (not e!181377))))

(assert (=> d!86998 (= res!132951 (appendAssocInst!71 (c!54877 e!180800) (c!54877 (ite c!54996 lt!122792 call!16477))))))

(declare-fun lt!123506 () BalanceConc!2680)

(assert (=> d!86998 (= lt!123506 (BalanceConc!2681 (++!1063 (c!54877 e!180800) (c!54877 (ite c!54996 lt!122792 call!16477)))))))

(assert (=> d!86998 (= (++!1060 e!180800 (ite c!54996 lt!122792 call!16477)) lt!123506)))

(declare-fun b!291395 () Bool)

(assert (=> b!291395 (= e!181377 (= (list!1655 lt!123506) (++!1058 (list!1655 e!180800) (list!1655 (ite c!54996 lt!122792 call!16477)))))))

(declare-fun b!291393 () Bool)

(declare-fun res!132950 () Bool)

(assert (=> b!291393 (=> (not res!132950) (not e!181377))))

(assert (=> b!291393 (= res!132950 (<= (height!171 (++!1063 (c!54877 e!180800) (c!54877 (ite c!54996 lt!122792 call!16477)))) (+ (max!0 (height!171 (c!54877 e!180800)) (height!171 (c!54877 (ite c!54996 lt!122792 call!16477)))) 1)))))

(assert (= (and d!86998 res!132951) b!291392))

(assert (= (and b!291392 res!132952) b!291393))

(assert (= (and b!291393 res!132950) b!291394))

(assert (= (and b!291394 res!132949) b!291395))

(declare-fun m!380535 () Bool)

(assert (=> b!291393 m!380535))

(declare-fun m!380537 () Bool)

(assert (=> b!291393 m!380537))

(declare-fun m!380539 () Bool)

(assert (=> b!291393 m!380539))

(assert (=> b!291393 m!380535))

(assert (=> b!291393 m!380539))

(declare-fun m!380541 () Bool)

(assert (=> b!291393 m!380541))

(assert (=> b!291393 m!380537))

(declare-fun m!380543 () Bool)

(assert (=> b!291393 m!380543))

(declare-fun m!380545 () Bool)

(assert (=> b!291395 m!380545))

(declare-fun m!380547 () Bool)

(assert (=> b!291395 m!380547))

(declare-fun m!380549 () Bool)

(assert (=> b!291395 m!380549))

(assert (=> b!291395 m!380547))

(assert (=> b!291395 m!380549))

(declare-fun m!380551 () Bool)

(assert (=> b!291395 m!380551))

(assert (=> b!291394 m!380535))

(assert (=> b!291394 m!380537))

(assert (=> b!291394 m!380539))

(assert (=> b!291394 m!380535))

(assert (=> b!291394 m!380539))

(assert (=> b!291394 m!380541))

(assert (=> b!291394 m!380537))

(assert (=> b!291394 m!380543))

(assert (=> b!291392 m!380537))

(assert (=> b!291392 m!380537))

(declare-fun m!380553 () Bool)

(assert (=> b!291392 m!380553))

(declare-fun m!380555 () Bool)

(assert (=> d!86998 m!380555))

(assert (=> d!86998 m!380537))

(assert (=> bm!16474 d!86998))

(assert (=> b!290171 d!86384))

(declare-fun d!87000 () Bool)

(assert (=> d!87000 (= (list!1655 (_2!2469 (get!1337 lt!122551))) (list!1659 (c!54877 (_2!2469 (get!1337 lt!122551)))))))

(declare-fun bs!33223 () Bool)

(assert (= bs!33223 d!87000))

(declare-fun m!380557 () Bool)

(assert (=> bs!33223 m!380557))

(assert (=> b!290069 d!87000))

(assert (=> b!290069 d!86724))

(assert (=> b!290069 d!86728))

(assert (=> b!290069 d!86726))

(assert (=> b!290069 d!86732))

(assert (=> b!290308 d!86988))

(declare-fun d!87002 () Bool)

(declare-fun c!55221 () Bool)

(assert (=> d!87002 (= c!55221 ((_ is Nil!3953) lt!122587))))

(declare-fun e!181378 () (InoxSet C!2884))

(assert (=> d!87002 (= (content!585 lt!122587) e!181378)))

(declare-fun b!291396 () Bool)

(assert (=> b!291396 (= e!181378 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!291397 () Bool)

(assert (=> b!291397 (= e!181378 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122587) true) (content!585 (t!40595 lt!122587))))))

(assert (= (and d!87002 c!55221) b!291396))

(assert (= (and d!87002 (not c!55221)) b!291397))

(declare-fun m!380559 () Bool)

(assert (=> b!291397 m!380559))

(declare-fun m!380561 () Bool)

(assert (=> b!291397 m!380561))

(assert (=> d!86324 d!87002))

(declare-fun d!87004 () Bool)

(declare-fun c!55222 () Bool)

(assert (=> d!87004 (= c!55222 ((_ is Nil!3953) lt!122461))))

(declare-fun e!181379 () (InoxSet C!2884))

(assert (=> d!87004 (= (content!585 lt!122461) e!181379)))

(declare-fun b!291398 () Bool)

(assert (=> b!291398 (= e!181379 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!291399 () Bool)

(assert (=> b!291399 (= e!181379 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122461) true) (content!585 (t!40595 lt!122461))))))

(assert (= (and d!87004 c!55222) b!291398))

(assert (= (and d!87004 (not c!55222)) b!291399))

(declare-fun m!380565 () Bool)

(assert (=> b!291399 m!380565))

(assert (=> b!291399 m!378805))

(assert (=> d!86324 d!87004))

(assert (=> d!86324 d!86572))

(declare-fun d!87006 () Bool)

(assert (=> d!87006 (dynLambda!2110 lambda!9952 (h!9352 tokens!465))))

(assert (=> d!87006 true))

(declare-fun _$7!370 () Unit!5362)

(assert (=> d!87006 (= (choose!2606 tokens!465 lambda!9952 (h!9352 tokens!465)) _$7!370)))

(declare-fun b_lambda!9763 () Bool)

(assert (=> (not b_lambda!9763) (not d!87006)))

(declare-fun bs!33224 () Bool)

(assert (= bs!33224 d!87006))

(assert (=> bs!33224 m!377485))

(assert (=> d!86304 d!87006))

(declare-fun d!87010 () Bool)

(declare-fun res!132953 () Bool)

(declare-fun e!181380 () Bool)

(assert (=> d!87010 (=> res!132953 e!181380)))

(assert (=> d!87010 (= res!132953 ((_ is Nil!3955) tokens!465))))

(assert (=> d!87010 (= (forall!1024 tokens!465 lambda!9952) e!181380)))

(declare-fun b!291400 () Bool)

(declare-fun e!181381 () Bool)

(assert (=> b!291400 (= e!181380 e!181381)))

(declare-fun res!132954 () Bool)

(assert (=> b!291400 (=> (not res!132954) (not e!181381))))

(assert (=> b!291400 (= res!132954 (dynLambda!2110 lambda!9952 (h!9352 tokens!465)))))

(declare-fun b!291401 () Bool)

(assert (=> b!291401 (= e!181381 (forall!1024 (t!40597 tokens!465) lambda!9952))))

(assert (= (and d!87010 (not res!132953)) b!291400))

(assert (= (and b!291400 res!132954) b!291401))

(declare-fun b_lambda!9765 () Bool)

(assert (=> (not b_lambda!9765) (not b!291400)))

(assert (=> b!291400 m!377485))

(declare-fun m!380593 () Bool)

(assert (=> b!291401 m!380593))

(assert (=> d!86304 d!87010))

(declare-fun d!87012 () Bool)

(declare-fun lt!123507 () BalanceConc!2680)

(assert (=> d!87012 (= (list!1655 lt!123507) (originalCharacters!800 call!16480))))

(assert (=> d!87012 (= lt!123507 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 call!16480))) (value!25890 call!16480)))))

(assert (=> d!87012 (= (charsOf!400 call!16480) lt!123507)))

(declare-fun b_lambda!9767 () Bool)

(assert (=> (not b_lambda!9767) (not d!87012)))

(declare-fun t!40762 () Bool)

(declare-fun tb!17115 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 call!16480)))) t!40762) tb!17115))

(declare-fun b!291402 () Bool)

(declare-fun e!181382 () Bool)

(declare-fun tp!105916 () Bool)

(assert (=> b!291402 (= e!181382 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 call!16480))) (value!25890 call!16480)))) tp!105916))))

(declare-fun result!20984 () Bool)

(assert (=> tb!17115 (= result!20984 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 call!16480))) (value!25890 call!16480))) e!181382))))

(assert (= tb!17115 b!291402))

(declare-fun m!380595 () Bool)

(assert (=> b!291402 m!380595))

(declare-fun m!380597 () Bool)

(assert (=> tb!17115 m!380597))

(assert (=> d!87012 t!40762))

(declare-fun b_and!23695 () Bool)

(assert (= b_and!23689 (and (=> t!40762 result!20984) b_and!23695)))

(declare-fun t!40764 () Bool)

(declare-fun tb!17117 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 call!16480)))) t!40764) tb!17117))

(declare-fun result!20986 () Bool)

(assert (= result!20986 result!20984))

(assert (=> d!87012 t!40764))

(declare-fun b_and!23697 () Bool)

(assert (= b_and!23691 (and (=> t!40764 result!20986) b_and!23697)))

(declare-fun t!40766 () Bool)

(declare-fun tb!17119 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 call!16480)))) t!40766) tb!17119))

(declare-fun result!20988 () Bool)

(assert (= result!20988 result!20984))

(assert (=> d!87012 t!40766))

(declare-fun b_and!23699 () Bool)

(assert (= b_and!23687 (and (=> t!40766 result!20988) b_and!23699)))

(declare-fun t!40768 () Bool)

(declare-fun tb!17121 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 call!16480)))) t!40768) tb!17121))

(declare-fun result!20990 () Bool)

(assert (= result!20990 result!20984))

(assert (=> d!87012 t!40768))

(declare-fun b_and!23701 () Bool)

(assert (= b_and!23685 (and (=> t!40768 result!20990) b_and!23701)))

(declare-fun t!40770 () Bool)

(declare-fun tb!17123 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 call!16480)))) t!40770) tb!17123))

(declare-fun result!20992 () Bool)

(assert (= result!20992 result!20984))

(assert (=> d!87012 t!40770))

(declare-fun b_and!23703 () Bool)

(assert (= b_and!23693 (and (=> t!40770 result!20992) b_and!23703)))

(declare-fun m!380601 () Bool)

(assert (=> d!87012 m!380601))

(declare-fun m!380603 () Bool)

(assert (=> d!87012 m!380603))

(assert (=> b!290429 d!87012))

(assert (=> b!290066 d!86724))

(declare-fun d!87016 () Bool)

(assert (=> d!87016 (= (get!1336 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))) (v!14827 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))

(assert (=> b!290066 d!87016))

(declare-fun lt!123520 () Option!877)

(declare-fun d!87020 () Bool)

(assert (=> d!87020 (= lt!123520 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(declare-fun e!181385 () Option!877)

(assert (=> d!87020 (= lt!123520 e!181385)))

(declare-fun c!55225 () Bool)

(assert (=> d!87020 (= c!55225 (and ((_ is Cons!3954) rules!1920) ((_ is Nil!3954) (t!40596 rules!1920))))))

(declare-fun lt!123522 () Unit!5362)

(declare-fun lt!123519 () Unit!5362)

(assert (=> d!87020 (= lt!123522 lt!123519)))

(assert (=> d!87020 (isPrefix!421 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (=> d!87020 (= lt!123519 (lemmaIsPrefixRefl!227 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(assert (=> d!87020 (rulesValidInductive!222 thiss!17480 rules!1920)))

(assert (=> d!87020 (= (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))) lt!123520)))

(declare-fun bm!16540 () Bool)

(declare-fun call!16545 () Option!877)

(declare-fun maxPrefixOneRuleZipper!41 (LexerInterface!643 Rule!1314 List!3963) Option!877)

(assert (=> bm!16540 (= call!16545 (maxPrefixOneRuleZipper!41 thiss!17480 (h!9351 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(declare-fun b!291407 () Bool)

(assert (=> b!291407 (= e!181385 call!16545)))

(declare-fun b!291408 () Bool)

(declare-fun lt!123521 () Option!877)

(declare-fun lt!123523 () Option!877)

(assert (=> b!291408 (= e!181385 (ite (and ((_ is None!876) lt!123521) ((_ is None!876) lt!123523)) None!876 (ite ((_ is None!876) lt!123523) lt!123521 (ite ((_ is None!876) lt!123521) lt!123523 (ite (>= (size!3171 (_1!2471 (v!14827 lt!123521))) (size!3171 (_1!2471 (v!14827 lt!123523)))) lt!123521 lt!123523)))))))

(assert (=> b!291408 (= lt!123521 call!16545)))

(assert (=> b!291408 (= lt!123523 (maxPrefixZipper!130 thiss!17480 (t!40596 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))

(assert (= (and d!87020 c!55225) b!291407))

(assert (= (and d!87020 (not c!55225)) b!291408))

(assert (= (or b!291407 b!291408) bm!16540))

(assert (=> d!87020 m!377457))

(assert (=> d!87020 m!377469))

(assert (=> d!87020 m!377457))

(assert (=> d!87020 m!377457))

(assert (=> d!87020 m!379317))

(assert (=> d!87020 m!377457))

(assert (=> d!87020 m!377457))

(assert (=> d!87020 m!379319))

(assert (=> d!87020 m!377481))

(assert (=> bm!16540 m!377457))

(declare-fun m!380609 () Bool)

(assert (=> bm!16540 m!380609))

(assert (=> b!291408 m!377457))

(assert (=> b!291408 m!380025))

(assert (=> b!290066 d!87020))

(assert (=> b!290066 d!86732))

(declare-fun b!291411 () Bool)

(declare-fun res!132956 () Bool)

(declare-fun e!181386 () Bool)

(assert (=> b!291411 (=> (not res!132956) (not e!181386))))

(declare-fun lt!123524 () List!3963)

(assert (=> b!291411 (= res!132956 (= (size!3175 lt!123524) (+ (size!3175 e!180618) (size!3175 (ite c!54944 lt!122644 call!16429)))))))

(declare-fun b!291409 () Bool)

(declare-fun e!181387 () List!3963)

(assert (=> b!291409 (= e!181387 (ite c!54944 lt!122644 call!16429))))

(declare-fun d!87022 () Bool)

(assert (=> d!87022 e!181386))

(declare-fun res!132955 () Bool)

(assert (=> d!87022 (=> (not res!132955) (not e!181386))))

(assert (=> d!87022 (= res!132955 (= (content!585 lt!123524) ((_ map or) (content!585 e!180618) (content!585 (ite c!54944 lt!122644 call!16429)))))))

(assert (=> d!87022 (= lt!123524 e!181387)))

(declare-fun c!55226 () Bool)

(assert (=> d!87022 (= c!55226 ((_ is Nil!3953) e!180618))))

(assert (=> d!87022 (= (++!1058 e!180618 (ite c!54944 lt!122644 call!16429)) lt!123524)))

(declare-fun b!291410 () Bool)

(assert (=> b!291410 (= e!181387 (Cons!3953 (h!9350 e!180618) (++!1058 (t!40595 e!180618) (ite c!54944 lt!122644 call!16429))))))

(declare-fun b!291412 () Bool)

(assert (=> b!291412 (= e!181386 (or (not (= (ite c!54944 lt!122644 call!16429) Nil!3953)) (= lt!123524 e!180618)))))

(assert (= (and d!87022 c!55226) b!291409))

(assert (= (and d!87022 (not c!55226)) b!291410))

(assert (= (and d!87022 res!132955) b!291411))

(assert (= (and b!291411 res!132956) b!291412))

(declare-fun m!380611 () Bool)

(assert (=> b!291411 m!380611))

(declare-fun m!380613 () Bool)

(assert (=> b!291411 m!380613))

(declare-fun m!380615 () Bool)

(assert (=> b!291411 m!380615))

(declare-fun m!380617 () Bool)

(assert (=> d!87022 m!380617))

(declare-fun m!380619 () Bool)

(assert (=> d!87022 m!380619))

(declare-fun m!380621 () Bool)

(assert (=> d!87022 m!380621))

(declare-fun m!380623 () Bool)

(assert (=> b!291410 m!380623))

(assert (=> bm!16425 d!87022))

(declare-fun d!87024 () Bool)

(declare-fun lt!123525 () Bool)

(assert (=> d!87024 (= lt!123525 (isEmpty!2639 (list!1655 (_2!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)))))))))

(assert (=> d!87024 (= lt!123525 (isEmpty!2641 (c!54877 (_2!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170)))))))))

(assert (=> d!87024 (= (isEmpty!2636 (_2!2470 (lex!435 thiss!17480 rules!1920 (print!368 thiss!17480 (singletonSeq!303 separatorToken!170))))) lt!123525)))

(declare-fun bs!33227 () Bool)

(assert (= bs!33227 d!87024))

(declare-fun m!380625 () Bool)

(assert (=> bs!33227 m!380625))

(assert (=> bs!33227 m!380625))

(declare-fun m!380627 () Bool)

(assert (=> bs!33227 m!380627))

(declare-fun m!380629 () Bool)

(assert (=> bs!33227 m!380629))

(assert (=> b!290406 d!87024))

(assert (=> b!290406 d!86946))

(assert (=> b!290406 d!86950))

(assert (=> b!290406 d!86952))

(assert (=> b!290093 d!86544))

(declare-fun d!87026 () Bool)

(declare-fun lt!123526 () Token!1258)

(assert (=> d!87026 (contains!775 lt!122580 lt!123526)))

(declare-fun e!181388 () Token!1258)

(assert (=> d!87026 (= lt!123526 e!181388)))

(declare-fun c!55227 () Bool)

(assert (=> d!87026 (= c!55227 (= 0 0))))

(declare-fun e!181389 () Bool)

(assert (=> d!87026 e!181389))

(declare-fun res!132957 () Bool)

(assert (=> d!87026 (=> (not res!132957) (not e!181389))))

(assert (=> d!87026 (= res!132957 (<= 0 0))))

(assert (=> d!87026 (= (apply!851 lt!122580 0) lt!123526)))

(declare-fun b!291413 () Bool)

(assert (=> b!291413 (= e!181389 (< 0 (size!3178 lt!122580)))))

(declare-fun b!291414 () Bool)

(assert (=> b!291414 (= e!181388 (head!934 lt!122580))))

(declare-fun b!291415 () Bool)

(assert (=> b!291415 (= e!181388 (apply!851 (tail!516 lt!122580) (- 0 1)))))

(assert (= (and d!87026 res!132957) b!291413))

(assert (= (and d!87026 c!55227) b!291414))

(assert (= (and d!87026 (not c!55227)) b!291415))

(declare-fun m!380631 () Bool)

(assert (=> d!87026 m!380631))

(declare-fun m!380633 () Bool)

(assert (=> b!291413 m!380633))

(declare-fun m!380635 () Bool)

(assert (=> b!291414 m!380635))

(declare-fun m!380637 () Bool)

(assert (=> b!291415 m!380637))

(assert (=> b!291415 m!380637))

(declare-fun m!380639 () Bool)

(assert (=> b!291415 m!380639))

(assert (=> b!290093 d!87026))

(declare-fun d!87028 () Bool)

(assert (=> d!87028 (= (head!934 (drop!237 lt!122580 0)) (apply!851 lt!122580 0))))

(declare-fun lt!123527 () Unit!5362)

(assert (=> d!87028 (= lt!123527 (choose!2613 lt!122580 0))))

(declare-fun e!181390 () Bool)

(assert (=> d!87028 e!181390))

(declare-fun res!132958 () Bool)

(assert (=> d!87028 (=> (not res!132958) (not e!181390))))

(assert (=> d!87028 (= res!132958 (>= 0 0))))

(assert (=> d!87028 (= (lemmaDropApply!224 lt!122580 0) lt!123527)))

(declare-fun b!291416 () Bool)

(assert (=> b!291416 (= e!181390 (< 0 (size!3178 lt!122580)))))

(assert (= (and d!87028 res!132958) b!291416))

(assert (=> d!87028 m!377537))

(assert (=> d!87028 m!377537))

(assert (=> d!87028 m!377539))

(assert (=> d!87028 m!377541))

(declare-fun m!380641 () Bool)

(assert (=> d!87028 m!380641))

(assert (=> b!291416 m!380633))

(assert (=> b!290093 d!87028))

(declare-fun d!87030 () Bool)

(declare-fun e!181391 () Bool)

(assert (=> d!87030 e!181391))

(declare-fun res!132959 () Bool)

(assert (=> d!87030 (=> (not res!132959) (not e!181391))))

(declare-fun lt!123528 () List!3965)

(assert (=> d!87030 (= res!132959 (= ((_ map implies) (content!588 lt!123528) (content!588 lt!122580)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181392 () List!3965)

(assert (=> d!87030 (= lt!123528 e!181392)))

(declare-fun c!55229 () Bool)

(assert (=> d!87030 (= c!55229 ((_ is Nil!3955) lt!122580))))

(assert (=> d!87030 (= (drop!237 lt!122580 0) lt!123528)))

(declare-fun b!291417 () Bool)

(declare-fun e!181393 () Int)

(assert (=> b!291417 (= e!181393 0)))

(declare-fun b!291418 () Bool)

(declare-fun e!181395 () List!3965)

(assert (=> b!291418 (= e!181395 (drop!237 (t!40597 lt!122580) (- 0 1)))))

(declare-fun b!291419 () Bool)

(declare-fun call!16546 () Int)

(assert (=> b!291419 (= e!181393 (- call!16546 0))))

(declare-fun bm!16541 () Bool)

(assert (=> bm!16541 (= call!16546 (size!3178 lt!122580))))

(declare-fun b!291420 () Bool)

(assert (=> b!291420 (= e!181392 Nil!3955)))

(declare-fun b!291421 () Bool)

(assert (=> b!291421 (= e!181395 lt!122580)))

(declare-fun b!291422 () Bool)

(declare-fun e!181394 () Int)

(assert (=> b!291422 (= e!181394 e!181393)))

(declare-fun c!55230 () Bool)

(assert (=> b!291422 (= c!55230 (>= 0 call!16546))))

(declare-fun b!291423 () Bool)

(assert (=> b!291423 (= e!181394 call!16546)))

(declare-fun b!291424 () Bool)

(assert (=> b!291424 (= e!181391 (= (size!3178 lt!123528) e!181394))))

(declare-fun c!55231 () Bool)

(assert (=> b!291424 (= c!55231 (<= 0 0))))

(declare-fun b!291425 () Bool)

(assert (=> b!291425 (= e!181392 e!181395)))

(declare-fun c!55228 () Bool)

(assert (=> b!291425 (= c!55228 (<= 0 0))))

(assert (= (and d!87030 c!55229) b!291420))

(assert (= (and d!87030 (not c!55229)) b!291425))

(assert (= (and b!291425 c!55228) b!291421))

(assert (= (and b!291425 (not c!55228)) b!291418))

(assert (= (and d!87030 res!132959) b!291424))

(assert (= (and b!291424 c!55231) b!291423))

(assert (= (and b!291424 (not c!55231)) b!291422))

(assert (= (and b!291422 c!55230) b!291417))

(assert (= (and b!291422 (not c!55230)) b!291419))

(assert (= (or b!291423 b!291422 b!291419) bm!16541))

(declare-fun m!380643 () Bool)

(assert (=> d!87030 m!380643))

(declare-fun m!380645 () Bool)

(assert (=> d!87030 m!380645))

(declare-fun m!380647 () Bool)

(assert (=> b!291418 m!380647))

(assert (=> bm!16541 m!380633))

(declare-fun m!380649 () Bool)

(assert (=> b!291424 m!380649))

(assert (=> b!290093 d!87030))

(declare-fun d!87032 () Bool)

(declare-fun lt!123529 () Token!1258)

(assert (=> d!87032 (= lt!123529 (apply!851 (list!1658 lt!122472) 0))))

(assert (=> d!87032 (= lt!123529 (apply!854 (c!54879 lt!122472) 0))))

(declare-fun e!181396 () Bool)

(assert (=> d!87032 e!181396))

(declare-fun res!132960 () Bool)

(assert (=> d!87032 (=> (not res!132960) (not e!181396))))

(assert (=> d!87032 (= res!132960 (<= 0 0))))

(assert (=> d!87032 (= (apply!850 lt!122472 0) lt!123529)))

(declare-fun b!291426 () Bool)

(assert (=> b!291426 (= e!181396 (< 0 (size!3176 lt!122472)))))

(assert (= (and d!87032 res!132960) b!291426))

(assert (=> d!87032 m!377509))

(assert (=> d!87032 m!377509))

(declare-fun m!380651 () Bool)

(assert (=> d!87032 m!380651))

(declare-fun m!380653 () Bool)

(assert (=> d!87032 m!380653))

(assert (=> b!291426 m!377515))

(assert (=> b!290093 d!87032))

(declare-fun d!87034 () Bool)

(declare-fun e!181397 () Bool)

(assert (=> d!87034 e!181397))

(declare-fun res!132961 () Bool)

(assert (=> d!87034 (=> (not res!132961) (not e!181397))))

(declare-fun lt!123530 () List!3965)

(assert (=> d!87034 (= res!132961 (= ((_ map implies) (content!588 lt!123530) (content!588 lt!122582)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181398 () List!3965)

(assert (=> d!87034 (= lt!123530 e!181398)))

(declare-fun c!55233 () Bool)

(assert (=> d!87034 (= c!55233 ((_ is Nil!3955) lt!122582))))

(assert (=> d!87034 (= (drop!237 lt!122582 0) lt!123530)))

(declare-fun b!291427 () Bool)

(declare-fun e!181399 () Int)

(assert (=> b!291427 (= e!181399 0)))

(declare-fun b!291428 () Bool)

(declare-fun e!181401 () List!3965)

(assert (=> b!291428 (= e!181401 (drop!237 (t!40597 lt!122582) (- 0 1)))))

(declare-fun b!291429 () Bool)

(declare-fun call!16547 () Int)

(assert (=> b!291429 (= e!181399 (- call!16547 0))))

(declare-fun bm!16542 () Bool)

(assert (=> bm!16542 (= call!16547 (size!3178 lt!122582))))

(declare-fun b!291430 () Bool)

(assert (=> b!291430 (= e!181398 Nil!3955)))

(declare-fun b!291431 () Bool)

(assert (=> b!291431 (= e!181401 lt!122582)))

(declare-fun b!291432 () Bool)

(declare-fun e!181400 () Int)

(assert (=> b!291432 (= e!181400 e!181399)))

(declare-fun c!55234 () Bool)

(assert (=> b!291432 (= c!55234 (>= 0 call!16547))))

(declare-fun b!291433 () Bool)

(assert (=> b!291433 (= e!181400 call!16547)))

(declare-fun b!291434 () Bool)

(assert (=> b!291434 (= e!181397 (= (size!3178 lt!123530) e!181400))))

(declare-fun c!55235 () Bool)

(assert (=> b!291434 (= c!55235 (<= 0 0))))

(declare-fun b!291435 () Bool)

(assert (=> b!291435 (= e!181398 e!181401)))

(declare-fun c!55232 () Bool)

(assert (=> b!291435 (= c!55232 (<= 0 0))))

(assert (= (and d!87034 c!55233) b!291430))

(assert (= (and d!87034 (not c!55233)) b!291435))

(assert (= (and b!291435 c!55232) b!291431))

(assert (= (and b!291435 (not c!55232)) b!291428))

(assert (= (and d!87034 res!132961) b!291434))

(assert (= (and b!291434 c!55235) b!291433))

(assert (= (and b!291434 (not c!55235)) b!291432))

(assert (= (and b!291432 c!55234) b!291427))

(assert (= (and b!291432 (not c!55234)) b!291429))

(assert (= (or b!291433 b!291432 b!291429) bm!16542))

(declare-fun m!380655 () Bool)

(assert (=> d!87034 m!380655))

(declare-fun m!380657 () Bool)

(assert (=> d!87034 m!380657))

(declare-fun m!380659 () Bool)

(assert (=> b!291428 m!380659))

(declare-fun m!380661 () Bool)

(assert (=> bm!16542 m!380661))

(declare-fun m!380663 () Bool)

(assert (=> b!291434 m!380663))

(assert (=> b!290093 d!87034))

(declare-fun d!87036 () Bool)

(assert (=> d!87036 (= (head!934 (drop!237 lt!122580 0)) (h!9352 (drop!237 lt!122580 0)))))

(assert (=> b!290093 d!87036))

(declare-fun d!87038 () Bool)

(assert (=> d!87038 (= (tail!516 (drop!237 lt!122582 0)) (drop!237 lt!122582 (+ 0 1)))))

(declare-fun lt!123531 () Unit!5362)

(assert (=> d!87038 (= lt!123531 (choose!2614 lt!122582 0))))

(declare-fun e!181402 () Bool)

(assert (=> d!87038 e!181402))

(declare-fun res!132962 () Bool)

(assert (=> d!87038 (=> (not res!132962) (not e!181402))))

(assert (=> d!87038 (= res!132962 (>= 0 0))))

(assert (=> d!87038 (= (lemmaDropTail!216 lt!122582 0) lt!123531)))

(declare-fun b!291436 () Bool)

(assert (=> b!291436 (= e!181402 (< 0 (size!3178 lt!122582)))))

(assert (= (and d!87038 res!132962) b!291436))

(assert (=> d!87038 m!377533))

(assert (=> d!87038 m!377533))

(assert (=> d!87038 m!377535))

(assert (=> d!87038 m!377545))

(declare-fun m!380665 () Bool)

(assert (=> d!87038 m!380665))

(assert (=> b!291436 m!380661))

(assert (=> b!290093 d!87038))

(declare-fun d!87040 () Bool)

(declare-fun lt!123532 () BalanceConc!2680)

(assert (=> d!87040 (= (list!1655 lt!123532) (originalCharacters!800 (apply!850 lt!122472 0)))))

(assert (=> d!87040 (= lt!123532 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0)))) (value!25890 (apply!850 lt!122472 0))))))

(assert (=> d!87040 (= (charsOf!400 (apply!850 lt!122472 0)) lt!123532)))

(declare-fun b_lambda!9769 () Bool)

(assert (=> (not b_lambda!9769) (not d!87040)))

(declare-fun tb!17125 () Bool)

(declare-fun t!40772 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0))))) t!40772) tb!17125))

(declare-fun b!291437 () Bool)

(declare-fun e!181403 () Bool)

(declare-fun tp!105917 () Bool)

(assert (=> b!291437 (= e!181403 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0)))) (value!25890 (apply!850 lt!122472 0))))) tp!105917))))

(declare-fun result!20994 () Bool)

(assert (=> tb!17125 (= result!20994 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0)))) (value!25890 (apply!850 lt!122472 0)))) e!181403))))

(assert (= tb!17125 b!291437))

(declare-fun m!380667 () Bool)

(assert (=> b!291437 m!380667))

(declare-fun m!380669 () Bool)

(assert (=> tb!17125 m!380669))

(assert (=> d!87040 t!40772))

(declare-fun b_and!23705 () Bool)

(assert (= b_and!23695 (and (=> t!40772 result!20994) b_and!23705)))

(declare-fun t!40774 () Bool)

(declare-fun tb!17127 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0))))) t!40774) tb!17127))

(declare-fun result!20996 () Bool)

(assert (= result!20996 result!20994))

(assert (=> d!87040 t!40774))

(declare-fun b_and!23707 () Bool)

(assert (= b_and!23697 (and (=> t!40774 result!20996) b_and!23707)))

(declare-fun t!40776 () Bool)

(declare-fun tb!17129 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0))))) t!40776) tb!17129))

(declare-fun result!20998 () Bool)

(assert (= result!20998 result!20994))

(assert (=> d!87040 t!40776))

(declare-fun b_and!23709 () Bool)

(assert (= b_and!23703 (and (=> t!40776 result!20998) b_and!23709)))

(declare-fun tb!17131 () Bool)

(declare-fun t!40778 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0))))) t!40778) tb!17131))

(declare-fun result!21000 () Bool)

(assert (= result!21000 result!20994))

(assert (=> d!87040 t!40778))

(declare-fun b_and!23711 () Bool)

(assert (= b_and!23699 (and (=> t!40778 result!21000) b_and!23711)))

(declare-fun t!40780 () Bool)

(declare-fun tb!17133 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0))))) t!40780) tb!17133))

(declare-fun result!21002 () Bool)

(assert (= result!21002 result!20994))

(assert (=> d!87040 t!40780))

(declare-fun b_and!23713 () Bool)

(assert (= b_and!23701 (and (=> t!40780 result!21002) b_and!23713)))

(declare-fun m!380671 () Bool)

(assert (=> d!87040 m!380671))

(declare-fun m!380673 () Bool)

(assert (=> d!87040 m!380673))

(assert (=> b!290093 d!87040))

(declare-fun d!87042 () Bool)

(declare-fun lt!123534 () BalanceConc!2680)

(assert (=> d!87042 (= (list!1655 lt!123534) (printListTailRec!150 thiss!17480 (dropList!184 lt!122472 (+ 0 1)) (list!1655 (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 lt!122472 0))))))))

(declare-fun e!181404 () BalanceConc!2680)

(assert (=> d!87042 (= lt!123534 e!181404)))

(declare-fun c!55236 () Bool)

(assert (=> d!87042 (= c!55236 (>= (+ 0 1) (size!3176 lt!122472)))))

(declare-fun e!181405 () Bool)

(assert (=> d!87042 e!181405))

(declare-fun res!132963 () Bool)

(assert (=> d!87042 (=> (not res!132963) (not e!181405))))

(assert (=> d!87042 (= res!132963 (>= (+ 0 1) 0))))

(assert (=> d!87042 (= (printTailRec!329 thiss!17480 lt!122472 (+ 0 1) (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 lt!122472 0)))) lt!123534)))

(declare-fun b!291438 () Bool)

(assert (=> b!291438 (= e!181405 (<= (+ 0 1) (size!3176 lt!122472)))))

(declare-fun b!291439 () Bool)

(assert (=> b!291439 (= e!181404 (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 lt!122472 0))))))

(declare-fun b!291440 () Bool)

(assert (=> b!291440 (= e!181404 (printTailRec!329 thiss!17480 lt!122472 (+ 0 1 1) (++!1060 (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 lt!122472 0))) (charsOf!400 (apply!850 lt!122472 (+ 0 1))))))))

(declare-fun lt!123536 () List!3965)

(assert (=> b!291440 (= lt!123536 (list!1658 lt!122472))))

(declare-fun lt!123539 () Unit!5362)

(assert (=> b!291440 (= lt!123539 (lemmaDropApply!224 lt!123536 (+ 0 1)))))

(assert (=> b!291440 (= (head!934 (drop!237 lt!123536 (+ 0 1))) (apply!851 lt!123536 (+ 0 1)))))

(declare-fun lt!123537 () Unit!5362)

(assert (=> b!291440 (= lt!123537 lt!123539)))

(declare-fun lt!123538 () List!3965)

(assert (=> b!291440 (= lt!123538 (list!1658 lt!122472))))

(declare-fun lt!123535 () Unit!5362)

(assert (=> b!291440 (= lt!123535 (lemmaDropTail!216 lt!123538 (+ 0 1)))))

(assert (=> b!291440 (= (tail!516 (drop!237 lt!123538 (+ 0 1))) (drop!237 lt!123538 (+ 0 1 1)))))

(declare-fun lt!123533 () Unit!5362)

(assert (=> b!291440 (= lt!123533 lt!123535)))

(assert (= (and d!87042 res!132963) b!291438))

(assert (= (and d!87042 c!55236) b!291439))

(assert (= (and d!87042 (not c!55236)) b!291440))

(assert (=> d!87042 m!377527))

(declare-fun m!380675 () Bool)

(assert (=> d!87042 m!380675))

(assert (=> d!87042 m!377515))

(declare-fun m!380677 () Bool)

(assert (=> d!87042 m!380677))

(assert (=> d!87042 m!380677))

(assert (=> d!87042 m!380675))

(declare-fun m!380679 () Bool)

(assert (=> d!87042 m!380679))

(declare-fun m!380681 () Bool)

(assert (=> d!87042 m!380681))

(assert (=> b!291438 m!377515))

(declare-fun m!380683 () Bool)

(assert (=> b!291440 m!380683))

(declare-fun m!380685 () Bool)

(assert (=> b!291440 m!380685))

(declare-fun m!380687 () Bool)

(assert (=> b!291440 m!380687))

(declare-fun m!380689 () Bool)

(assert (=> b!291440 m!380689))

(declare-fun m!380691 () Bool)

(assert (=> b!291440 m!380691))

(declare-fun m!380693 () Bool)

(assert (=> b!291440 m!380693))

(declare-fun m!380695 () Bool)

(assert (=> b!291440 m!380695))

(declare-fun m!380697 () Bool)

(assert (=> b!291440 m!380697))

(declare-fun m!380699 () Bool)

(assert (=> b!291440 m!380699))

(declare-fun m!380701 () Bool)

(assert (=> b!291440 m!380701))

(assert (=> b!291440 m!380685))

(declare-fun m!380703 () Bool)

(assert (=> b!291440 m!380703))

(assert (=> b!291440 m!377509))

(assert (=> b!291440 m!380697))

(assert (=> b!291440 m!377527))

(assert (=> b!291440 m!380703))

(assert (=> b!291440 m!380687))

(assert (=> b!291440 m!380693))

(declare-fun m!380705 () Bool)

(assert (=> b!291440 m!380705))

(assert (=> b!290093 d!87042))

(declare-fun d!87044 () Bool)

(assert (=> d!87044 (= (tail!516 (drop!237 lt!122582 0)) (t!40597 (drop!237 lt!122582 0)))))

(assert (=> b!290093 d!87044))

(declare-fun b!291443 () Bool)

(declare-fun res!132964 () Bool)

(declare-fun e!181406 () Bool)

(assert (=> b!291443 (=> (not res!132964) (not e!181406))))

(assert (=> b!291443 (= res!132964 (>= (height!171 (++!1063 (c!54877 (BalanceConc!2681 Empty!1336)) (c!54877 (charsOf!400 (apply!850 lt!122472 0))))) (max!0 (height!171 (c!54877 (BalanceConc!2681 Empty!1336))) (height!171 (c!54877 (charsOf!400 (apply!850 lt!122472 0)))))))))

(declare-fun b!291441 () Bool)

(declare-fun res!132967 () Bool)

(assert (=> b!291441 (=> (not res!132967) (not e!181406))))

(assert (=> b!291441 (= res!132967 (isBalanced!381 (++!1063 (c!54877 (BalanceConc!2681 Empty!1336)) (c!54877 (charsOf!400 (apply!850 lt!122472 0))))))))

(declare-fun d!87046 () Bool)

(assert (=> d!87046 e!181406))

(declare-fun res!132966 () Bool)

(assert (=> d!87046 (=> (not res!132966) (not e!181406))))

(assert (=> d!87046 (= res!132966 (appendAssocInst!71 (c!54877 (BalanceConc!2681 Empty!1336)) (c!54877 (charsOf!400 (apply!850 lt!122472 0)))))))

(declare-fun lt!123540 () BalanceConc!2680)

(assert (=> d!87046 (= lt!123540 (BalanceConc!2681 (++!1063 (c!54877 (BalanceConc!2681 Empty!1336)) (c!54877 (charsOf!400 (apply!850 lt!122472 0))))))))

(assert (=> d!87046 (= (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 lt!122472 0))) lt!123540)))

(declare-fun b!291444 () Bool)

(assert (=> b!291444 (= e!181406 (= (list!1655 lt!123540) (++!1058 (list!1655 (BalanceConc!2681 Empty!1336)) (list!1655 (charsOf!400 (apply!850 lt!122472 0))))))))

(declare-fun b!291442 () Bool)

(declare-fun res!132965 () Bool)

(assert (=> b!291442 (=> (not res!132965) (not e!181406))))

(assert (=> b!291442 (= res!132965 (<= (height!171 (++!1063 (c!54877 (BalanceConc!2681 Empty!1336)) (c!54877 (charsOf!400 (apply!850 lt!122472 0))))) (+ (max!0 (height!171 (c!54877 (BalanceConc!2681 Empty!1336))) (height!171 (c!54877 (charsOf!400 (apply!850 lt!122472 0))))) 1)))))

(assert (= (and d!87046 res!132966) b!291441))

(assert (= (and b!291441 res!132967) b!291442))

(assert (= (and b!291442 res!132965) b!291443))

(assert (= (and b!291443 res!132964) b!291444))

(declare-fun m!380707 () Bool)

(assert (=> b!291442 m!380707))

(declare-fun m!380709 () Bool)

(assert (=> b!291442 m!380709))

(declare-fun m!380711 () Bool)

(assert (=> b!291442 m!380711))

(assert (=> b!291442 m!380707))

(assert (=> b!291442 m!380711))

(declare-fun m!380713 () Bool)

(assert (=> b!291442 m!380713))

(assert (=> b!291442 m!380709))

(declare-fun m!380715 () Bool)

(assert (=> b!291442 m!380715))

(declare-fun m!380717 () Bool)

(assert (=> b!291444 m!380717))

(assert (=> b!291444 m!377513))

(assert (=> b!291444 m!377543))

(declare-fun m!380719 () Bool)

(assert (=> b!291444 m!380719))

(assert (=> b!291444 m!377513))

(assert (=> b!291444 m!380719))

(declare-fun m!380721 () Bool)

(assert (=> b!291444 m!380721))

(assert (=> b!291443 m!380707))

(assert (=> b!291443 m!380709))

(assert (=> b!291443 m!380711))

(assert (=> b!291443 m!380707))

(assert (=> b!291443 m!380711))

(assert (=> b!291443 m!380713))

(assert (=> b!291443 m!380709))

(assert (=> b!291443 m!380715))

(assert (=> b!291441 m!380709))

(assert (=> b!291441 m!380709))

(declare-fun m!380723 () Bool)

(assert (=> b!291441 m!380723))

(declare-fun m!380725 () Bool)

(assert (=> d!87046 m!380725))

(assert (=> d!87046 m!380709))

(assert (=> b!290093 d!87046))

(declare-fun d!87048 () Bool)

(declare-fun e!181407 () Bool)

(assert (=> d!87048 e!181407))

(declare-fun res!132968 () Bool)

(assert (=> d!87048 (=> (not res!132968) (not e!181407))))

(declare-fun lt!123541 () List!3965)

(assert (=> d!87048 (= res!132968 (= ((_ map implies) (content!588 lt!123541) (content!588 lt!122582)) ((as const (InoxSet Token!1258)) true)))))

(declare-fun e!181408 () List!3965)

(assert (=> d!87048 (= lt!123541 e!181408)))

(declare-fun c!55238 () Bool)

(assert (=> d!87048 (= c!55238 ((_ is Nil!3955) lt!122582))))

(assert (=> d!87048 (= (drop!237 lt!122582 (+ 0 1)) lt!123541)))

(declare-fun b!291445 () Bool)

(declare-fun e!181409 () Int)

(assert (=> b!291445 (= e!181409 0)))

(declare-fun b!291446 () Bool)

(declare-fun e!181411 () List!3965)

(assert (=> b!291446 (= e!181411 (drop!237 (t!40597 lt!122582) (- (+ 0 1) 1)))))

(declare-fun b!291447 () Bool)

(declare-fun call!16548 () Int)

(assert (=> b!291447 (= e!181409 (- call!16548 (+ 0 1)))))

(declare-fun bm!16543 () Bool)

(assert (=> bm!16543 (= call!16548 (size!3178 lt!122582))))

(declare-fun b!291448 () Bool)

(assert (=> b!291448 (= e!181408 Nil!3955)))

(declare-fun b!291449 () Bool)

(assert (=> b!291449 (= e!181411 lt!122582)))

(declare-fun b!291450 () Bool)

(declare-fun e!181410 () Int)

(assert (=> b!291450 (= e!181410 e!181409)))

(declare-fun c!55239 () Bool)

(assert (=> b!291450 (= c!55239 (>= (+ 0 1) call!16548))))

(declare-fun b!291451 () Bool)

(assert (=> b!291451 (= e!181410 call!16548)))

(declare-fun b!291452 () Bool)

(assert (=> b!291452 (= e!181407 (= (size!3178 lt!123541) e!181410))))

(declare-fun c!55240 () Bool)

(assert (=> b!291452 (= c!55240 (<= (+ 0 1) 0))))

(declare-fun b!291453 () Bool)

(assert (=> b!291453 (= e!181408 e!181411)))

(declare-fun c!55237 () Bool)

(assert (=> b!291453 (= c!55237 (<= (+ 0 1) 0))))

(assert (= (and d!87048 c!55238) b!291448))

(assert (= (and d!87048 (not c!55238)) b!291453))

(assert (= (and b!291453 c!55237) b!291449))

(assert (= (and b!291453 (not c!55237)) b!291446))

(assert (= (and d!87048 res!132968) b!291452))

(assert (= (and b!291452 c!55240) b!291451))

(assert (= (and b!291452 (not c!55240)) b!291450))

(assert (= (and b!291450 c!55239) b!291445))

(assert (= (and b!291450 (not c!55239)) b!291447))

(assert (= (or b!291451 b!291450 b!291447) bm!16543))

(declare-fun m!380727 () Bool)

(assert (=> d!87048 m!380727))

(assert (=> d!87048 m!380657))

(declare-fun m!380729 () Bool)

(assert (=> b!291446 m!380729))

(assert (=> bm!16543 m!380661))

(declare-fun m!380731 () Bool)

(assert (=> b!291452 m!380731))

(assert (=> b!290093 d!87048))

(declare-fun d!87050 () Bool)

(assert (=> d!87050 (= (isEmpty!2640 lt!122824) (not ((_ is Some!876) lt!122824)))))

(assert (=> d!86432 d!87050))

(declare-fun b!291462 () Bool)

(declare-fun e!181420 () Bool)

(declare-fun e!181419 () Bool)

(assert (=> b!291462 (= e!181420 e!181419)))

(declare-fun res!132977 () Bool)

(assert (=> b!291462 (=> (not res!132977) (not e!181419))))

(assert (=> b!291462 (= res!132977 (not ((_ is Nil!3953) lt!122467)))))

(declare-fun b!291465 () Bool)

(declare-fun e!181418 () Bool)

(assert (=> b!291465 (= e!181418 (>= (size!3175 lt!122467) (size!3175 lt!122467)))))

(declare-fun d!87052 () Bool)

(assert (=> d!87052 e!181418))

(declare-fun res!132979 () Bool)

(assert (=> d!87052 (=> res!132979 e!181418)))

(declare-fun lt!123544 () Bool)

(assert (=> d!87052 (= res!132979 (not lt!123544))))

(assert (=> d!87052 (= lt!123544 e!181420)))

(declare-fun res!132980 () Bool)

(assert (=> d!87052 (=> res!132980 e!181420)))

(assert (=> d!87052 (= res!132980 ((_ is Nil!3953) lt!122467))))

(assert (=> d!87052 (= (isPrefix!421 lt!122467 lt!122467) lt!123544)))

(declare-fun b!291464 () Bool)

(declare-fun tail!518 (List!3963) List!3963)

(assert (=> b!291464 (= e!181419 (isPrefix!421 (tail!518 lt!122467) (tail!518 lt!122467)))))

(declare-fun b!291463 () Bool)

(declare-fun res!132978 () Bool)

(assert (=> b!291463 (=> (not res!132978) (not e!181419))))

(declare-fun head!936 (List!3963) C!2884)

(assert (=> b!291463 (= res!132978 (= (head!936 lt!122467) (head!936 lt!122467)))))

(assert (= (and d!87052 (not res!132980)) b!291462))

(assert (= (and b!291462 res!132977) b!291463))

(assert (= (and b!291463 res!132978) b!291464))

(assert (= (and d!87052 (not res!132979)) b!291465))

(assert (=> b!291465 m!377495))

(assert (=> b!291465 m!377495))

(declare-fun m!380733 () Bool)

(assert (=> b!291464 m!380733))

(assert (=> b!291464 m!380733))

(assert (=> b!291464 m!380733))

(assert (=> b!291464 m!380733))

(declare-fun m!380735 () Bool)

(assert (=> b!291464 m!380735))

(declare-fun m!380737 () Bool)

(assert (=> b!291463 m!380737))

(assert (=> b!291463 m!380737))

(assert (=> d!86432 d!87052))

(declare-fun d!87054 () Bool)

(assert (=> d!87054 (isPrefix!421 lt!122467 lt!122467)))

(declare-fun lt!123547 () Unit!5362)

(declare-fun choose!2617 (List!3963 List!3963) Unit!5362)

(assert (=> d!87054 (= lt!123547 (choose!2617 lt!122467 lt!122467))))

(assert (=> d!87054 (= (lemmaIsPrefixRefl!227 lt!122467 lt!122467) lt!123547)))

(declare-fun bs!33228 () Bool)

(assert (= bs!33228 d!87054))

(assert (=> bs!33228 m!378185))

(declare-fun m!380739 () Bool)

(assert (=> bs!33228 m!380739))

(assert (=> d!86432 d!87054))

(declare-fun d!87056 () Bool)

(assert (=> d!87056 true))

(declare-fun lt!123550 () Bool)

(declare-fun lambda!10023 () Int)

(declare-fun forall!1030 (List!3964 Int) Bool)

(assert (=> d!87056 (= lt!123550 (forall!1030 rules!1920 lambda!10023))))

(declare-fun e!181425 () Bool)

(assert (=> d!87056 (= lt!123550 e!181425)))

(declare-fun res!132985 () Bool)

(assert (=> d!87056 (=> res!132985 e!181425)))

(assert (=> d!87056 (= res!132985 (not ((_ is Cons!3954) rules!1920)))))

(assert (=> d!87056 (= (rulesValidInductive!222 thiss!17480 rules!1920) lt!123550)))

(declare-fun b!291470 () Bool)

(declare-fun e!181426 () Bool)

(assert (=> b!291470 (= e!181425 e!181426)))

(declare-fun res!132986 () Bool)

(assert (=> b!291470 (=> (not res!132986) (not e!181426))))

(declare-fun ruleValid!96 (LexerInterface!643 Rule!1314) Bool)

(assert (=> b!291470 (= res!132986 (ruleValid!96 thiss!17480 (h!9351 rules!1920)))))

(declare-fun b!291471 () Bool)

(assert (=> b!291471 (= e!181426 (rulesValidInductive!222 thiss!17480 (t!40596 rules!1920)))))

(assert (= (and d!87056 (not res!132985)) b!291470))

(assert (= (and b!291470 res!132986) b!291471))

(declare-fun m!380741 () Bool)

(assert (=> d!87056 m!380741))

(declare-fun m!380743 () Bool)

(assert (=> b!291470 m!380743))

(assert (=> b!291471 m!380045))

(assert (=> d!86432 d!87056))

(declare-fun d!87058 () Bool)

(assert (=> d!87058 (= (isEmpty!2637 (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))) ((_ is Nil!3955) (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))))))

(assert (=> d!86406 d!87058))

(declare-fun d!87060 () Bool)

(assert (=> d!87060 (= (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467)))) (list!1661 (c!54879 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))))))

(declare-fun bs!33229 () Bool)

(assert (= bs!33229 d!87060))

(declare-fun m!380745 () Bool)

(assert (=> bs!33229 m!380745))

(assert (=> d!86406 d!87060))

(declare-fun lt!123553 () Bool)

(declare-fun d!87062 () Bool)

(assert (=> d!87062 (= lt!123553 (isEmpty!2637 (list!1661 (c!54879 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467)))))))))

(assert (=> d!87062 (= lt!123553 (= (size!3179 (c!54879 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))) 0))))

(assert (=> d!87062 (= (isEmpty!2638 (c!54879 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 lt!122467))))) lt!123553)))

(declare-fun bs!33230 () Bool)

(assert (= bs!33230 d!87062))

(assert (=> bs!33230 m!380745))

(assert (=> bs!33230 m!380745))

(declare-fun m!380747 () Bool)

(assert (=> bs!33230 m!380747))

(declare-fun m!380749 () Bool)

(assert (=> bs!33230 m!380749))

(assert (=> d!86406 d!87062))

(declare-fun b!291476 () Bool)

(declare-fun res!132988 () Bool)

(declare-fun e!181427 () Bool)

(assert (=> b!291476 (=> (not res!132988) (not e!181427))))

(declare-fun lt!123554 () List!3963)

(assert (=> b!291476 (= res!132988 (= (size!3175 lt!123554) (+ (size!3175 e!180807) (size!3175 (ite c!55000 lt!122806 call!16482)))))))

(declare-fun e!181428 () List!3963)

(declare-fun b!291474 () Bool)

(assert (=> b!291474 (= e!181428 (ite c!55000 lt!122806 call!16482))))

(declare-fun d!87064 () Bool)

(assert (=> d!87064 e!181427))

(declare-fun res!132987 () Bool)

(assert (=> d!87064 (=> (not res!132987) (not e!181427))))

(assert (=> d!87064 (= res!132987 (= (content!585 lt!123554) ((_ map or) (content!585 e!180807) (content!585 (ite c!55000 lt!122806 call!16482)))))))

(assert (=> d!87064 (= lt!123554 e!181428)))

(declare-fun c!55241 () Bool)

(assert (=> d!87064 (= c!55241 ((_ is Nil!3953) e!180807))))

(assert (=> d!87064 (= (++!1058 e!180807 (ite c!55000 lt!122806 call!16482)) lt!123554)))

(declare-fun b!291475 () Bool)

(assert (=> b!291475 (= e!181428 (Cons!3953 (h!9350 e!180807) (++!1058 (t!40595 e!180807) (ite c!55000 lt!122806 call!16482))))))

(declare-fun b!291477 () Bool)

(assert (=> b!291477 (= e!181427 (or (not (= (ite c!55000 lt!122806 call!16482) Nil!3953)) (= lt!123554 e!180807)))))

(assert (= (and d!87064 c!55241) b!291474))

(assert (= (and d!87064 (not c!55241)) b!291475))

(assert (= (and d!87064 res!132987) b!291476))

(assert (= (and b!291476 res!132988) b!291477))

(declare-fun m!380751 () Bool)

(assert (=> b!291476 m!380751))

(declare-fun m!380753 () Bool)

(assert (=> b!291476 m!380753))

(declare-fun m!380755 () Bool)

(assert (=> b!291476 m!380755))

(declare-fun m!380757 () Bool)

(assert (=> d!87064 m!380757))

(declare-fun m!380759 () Bool)

(assert (=> d!87064 m!380759))

(declare-fun m!380761 () Bool)

(assert (=> d!87064 m!380761))

(declare-fun m!380763 () Bool)

(assert (=> b!291475 m!380763))

(assert (=> bm!16478 d!87064))

(assert (=> d!86386 d!86324))

(declare-fun d!87066 () Bool)

(assert (=> d!87066 (= (++!1058 (++!1058 lt!122467 lt!122461) lt!122458) (++!1058 lt!122467 (++!1058 lt!122461 lt!122458)))))

(assert (=> d!87066 true))

(declare-fun _$52!775 () Unit!5362)

(assert (=> d!87066 (= (choose!2608 lt!122467 lt!122461 lt!122458) _$52!775)))

(declare-fun bs!33231 () Bool)

(assert (= bs!33231 d!87066))

(assert (=> bs!33231 m!377151))

(assert (=> bs!33231 m!377151))

(assert (=> bs!33231 m!377153))

(assert (=> bs!33231 m!377165))

(assert (=> bs!33231 m!377165))

(assert (=> bs!33231 m!377973))

(assert (=> d!86386 d!87066))

(declare-fun b!291480 () Bool)

(declare-fun res!132990 () Bool)

(declare-fun e!181429 () Bool)

(assert (=> b!291480 (=> (not res!132990) (not e!181429))))

(declare-fun lt!123555 () List!3963)

(assert (=> b!291480 (= res!132990 (= (size!3175 lt!123555) (+ (size!3175 lt!122467) (size!3175 (++!1058 lt!122461 lt!122458)))))))

(declare-fun b!291478 () Bool)

(declare-fun e!181430 () List!3963)

(assert (=> b!291478 (= e!181430 (++!1058 lt!122461 lt!122458))))

(declare-fun d!87068 () Bool)

(assert (=> d!87068 e!181429))

(declare-fun res!132989 () Bool)

(assert (=> d!87068 (=> (not res!132989) (not e!181429))))

(assert (=> d!87068 (= res!132989 (= (content!585 lt!123555) ((_ map or) (content!585 lt!122467) (content!585 (++!1058 lt!122461 lt!122458)))))))

(assert (=> d!87068 (= lt!123555 e!181430)))

(declare-fun c!55242 () Bool)

(assert (=> d!87068 (= c!55242 ((_ is Nil!3953) lt!122467))))

(assert (=> d!87068 (= (++!1058 lt!122467 (++!1058 lt!122461 lt!122458)) lt!123555)))

(declare-fun b!291479 () Bool)

(assert (=> b!291479 (= e!181430 (Cons!3953 (h!9350 lt!122467) (++!1058 (t!40595 lt!122467) (++!1058 lt!122461 lt!122458))))))

(declare-fun b!291481 () Bool)

(assert (=> b!291481 (= e!181429 (or (not (= (++!1058 lt!122461 lt!122458) Nil!3953)) (= lt!123555 lt!122467)))))

(assert (= (and d!87068 c!55242) b!291478))

(assert (= (and d!87068 (not c!55242)) b!291479))

(assert (= (and d!87068 res!132989) b!291480))

(assert (= (and b!291480 res!132990) b!291481))

(declare-fun m!380765 () Bool)

(assert (=> b!291480 m!380765))

(assert (=> b!291480 m!377495))

(assert (=> b!291480 m!377165))

(declare-fun m!380767 () Bool)

(assert (=> b!291480 m!380767))

(declare-fun m!380769 () Bool)

(assert (=> d!87068 m!380769))

(assert (=> d!87068 m!377501))

(assert (=> d!87068 m!377165))

(declare-fun m!380771 () Bool)

(assert (=> d!87068 m!380771))

(assert (=> b!291479 m!377165))

(declare-fun m!380773 () Bool)

(assert (=> b!291479 m!380773))

(assert (=> d!86386 d!87068))

(assert (=> d!86386 d!86332))

(assert (=> d!86386 d!86392))

(declare-fun b!291484 () Bool)

(declare-fun res!132992 () Bool)

(declare-fun e!181431 () Bool)

(assert (=> b!291484 (=> (not res!132992) (not e!181431))))

(declare-fun lt!123556 () List!3963)

(assert (=> b!291484 (= res!132992 (= (size!3175 lt!123556) (+ (size!3175 (t!40595 lt!122467)) (size!3175 lt!122461))))))

(declare-fun b!291482 () Bool)

(declare-fun e!181432 () List!3963)

(assert (=> b!291482 (= e!181432 lt!122461)))

(declare-fun d!87070 () Bool)

(assert (=> d!87070 e!181431))

(declare-fun res!132991 () Bool)

(assert (=> d!87070 (=> (not res!132991) (not e!181431))))

(assert (=> d!87070 (= res!132991 (= (content!585 lt!123556) ((_ map or) (content!585 (t!40595 lt!122467)) (content!585 lt!122461))))))

(assert (=> d!87070 (= lt!123556 e!181432)))

(declare-fun c!55243 () Bool)

(assert (=> d!87070 (= c!55243 ((_ is Nil!3953) (t!40595 lt!122467)))))

(assert (=> d!87070 (= (++!1058 (t!40595 lt!122467) lt!122461) lt!123556)))

(declare-fun b!291483 () Bool)

(assert (=> b!291483 (= e!181432 (Cons!3953 (h!9350 (t!40595 lt!122467)) (++!1058 (t!40595 (t!40595 lt!122467)) lt!122461)))))

(declare-fun b!291485 () Bool)

(assert (=> b!291485 (= e!181431 (or (not (= lt!122461 Nil!3953)) (= lt!123556 (t!40595 lt!122467))))))

(assert (= (and d!87070 c!55243) b!291482))

(assert (= (and d!87070 (not c!55243)) b!291483))

(assert (= (and d!87070 res!132991) b!291484))

(assert (= (and b!291484 res!132992) b!291485))

(declare-fun m!380775 () Bool)

(assert (=> b!291484 m!380775))

(assert (=> b!291484 m!378827))

(assert (=> b!291484 m!377571))

(declare-fun m!380777 () Bool)

(assert (=> d!87070 m!380777))

(assert (=> d!87070 m!378793))

(assert (=> d!87070 m!377575))

(declare-fun m!380779 () Bool)

(assert (=> b!291483 m!380779))

(assert (=> b!290178 d!87070))

(declare-fun b!291486 () Bool)

(declare-fun res!132999 () Bool)

(declare-fun e!181435 () Bool)

(assert (=> b!291486 (=> (not res!132999) (not e!181435))))

(declare-fun lt!123559 () Option!877)

(assert (=> b!291486 (= res!132999 (= (++!1058 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123559)))) (_2!2471 (get!1336 lt!123559))) lt!122467))))

(declare-fun call!16549 () Option!877)

(declare-fun bm!16544 () Bool)

(assert (=> bm!16544 (= call!16549 (maxPrefixOneRule!161 thiss!17480 (h!9351 (t!40596 rules!1920)) lt!122467))))

(declare-fun b!291487 () Bool)

(declare-fun res!132993 () Bool)

(assert (=> b!291487 (=> (not res!132993) (not e!181435))))

(assert (=> b!291487 (= res!132993 (matchR!299 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!123559)))) (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123559))))))))

(declare-fun b!291488 () Bool)

(assert (=> b!291488 (= e!181435 (contains!777 (t!40596 rules!1920) (rule!1360 (_1!2471 (get!1336 lt!123559)))))))

(declare-fun b!291489 () Bool)

(declare-fun res!132997 () Bool)

(assert (=> b!291489 (=> (not res!132997) (not e!181435))))

(assert (=> b!291489 (= res!132997 (< (size!3175 (_2!2471 (get!1336 lt!123559))) (size!3175 lt!122467)))))

(declare-fun b!291490 () Bool)

(declare-fun res!132996 () Bool)

(assert (=> b!291490 (=> (not res!132996) (not e!181435))))

(assert (=> b!291490 (= res!132996 (= (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123559)))) (originalCharacters!800 (_1!2471 (get!1336 lt!123559)))))))

(declare-fun b!291491 () Bool)

(declare-fun e!181434 () Option!877)

(assert (=> b!291491 (= e!181434 call!16549)))

(declare-fun b!291493 () Bool)

(declare-fun e!181433 () Bool)

(assert (=> b!291493 (= e!181433 e!181435)))

(declare-fun res!132995 () Bool)

(assert (=> b!291493 (=> (not res!132995) (not e!181435))))

(assert (=> b!291493 (= res!132995 (isDefined!716 lt!123559))))

(declare-fun b!291494 () Bool)

(declare-fun lt!123558 () Option!877)

(declare-fun lt!123561 () Option!877)

(assert (=> b!291494 (= e!181434 (ite (and ((_ is None!876) lt!123558) ((_ is None!876) lt!123561)) None!876 (ite ((_ is None!876) lt!123561) lt!123558 (ite ((_ is None!876) lt!123558) lt!123561 (ite (>= (size!3171 (_1!2471 (v!14827 lt!123558))) (size!3171 (_1!2471 (v!14827 lt!123561)))) lt!123558 lt!123561)))))))

(assert (=> b!291494 (= lt!123558 call!16549)))

(assert (=> b!291494 (= lt!123561 (maxPrefix!359 thiss!17480 (t!40596 (t!40596 rules!1920)) lt!122467))))

(declare-fun d!87072 () Bool)

(assert (=> d!87072 e!181433))

(declare-fun res!132994 () Bool)

(assert (=> d!87072 (=> res!132994 e!181433)))

(assert (=> d!87072 (= res!132994 (isEmpty!2640 lt!123559))))

(assert (=> d!87072 (= lt!123559 e!181434)))

(declare-fun c!55244 () Bool)

(assert (=> d!87072 (= c!55244 (and ((_ is Cons!3954) (t!40596 rules!1920)) ((_ is Nil!3954) (t!40596 (t!40596 rules!1920)))))))

(declare-fun lt!123560 () Unit!5362)

(declare-fun lt!123557 () Unit!5362)

(assert (=> d!87072 (= lt!123560 lt!123557)))

(assert (=> d!87072 (isPrefix!421 lt!122467 lt!122467)))

(assert (=> d!87072 (= lt!123557 (lemmaIsPrefixRefl!227 lt!122467 lt!122467))))

(assert (=> d!87072 (rulesValidInductive!222 thiss!17480 (t!40596 rules!1920))))

(assert (=> d!87072 (= (maxPrefix!359 thiss!17480 (t!40596 rules!1920) lt!122467) lt!123559)))

(declare-fun b!291492 () Bool)

(declare-fun res!132998 () Bool)

(assert (=> b!291492 (=> (not res!132998) (not e!181435))))

(assert (=> b!291492 (= res!132998 (= (value!25890 (_1!2471 (get!1336 lt!123559))) (apply!852 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!123559)))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!123559)))))))))

(assert (= (and d!87072 c!55244) b!291491))

(assert (= (and d!87072 (not c!55244)) b!291494))

(assert (= (or b!291491 b!291494) bm!16544))

(assert (= (and d!87072 (not res!132994)) b!291493))

(assert (= (and b!291493 res!132995) b!291490))

(assert (= (and b!291490 res!132996) b!291489))

(assert (= (and b!291489 res!132997) b!291486))

(assert (= (and b!291486 res!132999) b!291492))

(assert (= (and b!291492 res!132998) b!291487))

(assert (= (and b!291487 res!132993) b!291488))

(declare-fun m!380781 () Bool)

(assert (=> bm!16544 m!380781))

(declare-fun m!380783 () Bool)

(assert (=> d!87072 m!380783))

(assert (=> d!87072 m!378185))

(assert (=> d!87072 m!378187))

(assert (=> d!87072 m!380045))

(declare-fun m!380785 () Bool)

(assert (=> b!291487 m!380785))

(declare-fun m!380787 () Bool)

(assert (=> b!291487 m!380787))

(assert (=> b!291487 m!380787))

(declare-fun m!380789 () Bool)

(assert (=> b!291487 m!380789))

(assert (=> b!291487 m!380789))

(declare-fun m!380791 () Bool)

(assert (=> b!291487 m!380791))

(assert (=> b!291488 m!380785))

(declare-fun m!380793 () Bool)

(assert (=> b!291488 m!380793))

(assert (=> b!291486 m!380785))

(assert (=> b!291486 m!380787))

(assert (=> b!291486 m!380787))

(assert (=> b!291486 m!380789))

(assert (=> b!291486 m!380789))

(declare-fun m!380795 () Bool)

(assert (=> b!291486 m!380795))

(assert (=> b!291492 m!380785))

(declare-fun m!380797 () Bool)

(assert (=> b!291492 m!380797))

(assert (=> b!291492 m!380797))

(declare-fun m!380799 () Bool)

(assert (=> b!291492 m!380799))

(declare-fun m!380801 () Bool)

(assert (=> b!291493 m!380801))

(assert (=> b!291490 m!380785))

(assert (=> b!291490 m!380787))

(assert (=> b!291490 m!380787))

(assert (=> b!291490 m!380789))

(assert (=> b!291489 m!380785))

(declare-fun m!380803 () Bool)

(assert (=> b!291489 m!380803))

(assert (=> b!291489 m!377495))

(declare-fun m!380805 () Bool)

(assert (=> b!291494 m!380805))

(assert (=> b!290496 d!87072))

(declare-fun d!87074 () Bool)

(declare-fun c!55247 () Bool)

(assert (=> d!87074 (= c!55247 ((_ is Node!1336) (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))))))

(declare-fun e!181440 () Bool)

(assert (=> d!87074 (= (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))) e!181440)))

(declare-fun b!291501 () Bool)

(declare-fun inv!4899 (Conc!1336) Bool)

(assert (=> b!291501 (= e!181440 (inv!4899 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))))))

(declare-fun b!291502 () Bool)

(declare-fun e!181441 () Bool)

(assert (=> b!291502 (= e!181440 e!181441)))

(declare-fun res!133002 () Bool)

(assert (=> b!291502 (= res!133002 (not ((_ is Leaf!2054) (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))))))))

(assert (=> b!291502 (=> res!133002 e!181441)))

(declare-fun b!291503 () Bool)

(declare-fun inv!4900 (Conc!1336) Bool)

(assert (=> b!291503 (= e!181441 (inv!4900 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))))))

(assert (= (and d!87074 c!55247) b!291501))

(assert (= (and d!87074 (not c!55247)) b!291502))

(assert (= (and b!291502 (not res!133002)) b!291503))

(declare-fun m!380807 () Bool)

(assert (=> b!291501 m!380807))

(declare-fun m!380809 () Bool)

(assert (=> b!291503 m!380809))

(assert (=> b!290326 d!87074))

(declare-fun d!87076 () Bool)

(declare-fun charsToBigInt!0 (List!3962 Int) Int)

(assert (=> d!87076 (= (inv!15 (value!25890 (h!9352 tokens!465))) (= (charsToBigInt!0 (text!5902 (value!25890 (h!9352 tokens!465))) 0) (value!25885 (value!25890 (h!9352 tokens!465)))))))

(declare-fun bs!33232 () Bool)

(assert (= bs!33232 d!87076))

(declare-fun m!380811 () Bool)

(assert (=> bs!33232 m!380811))

(assert (=> b!290501 d!87076))

(declare-fun d!87078 () Bool)

(declare-fun c!55248 () Bool)

(assert (=> d!87078 (= c!55248 ((_ is Nil!3953) lt!122773))))

(declare-fun e!181442 () (InoxSet C!2884))

(assert (=> d!87078 (= (content!585 lt!122773) e!181442)))

(declare-fun b!291504 () Bool)

(assert (=> b!291504 (= e!181442 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!291505 () Bool)

(assert (=> b!291505 (= e!181442 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122773) true) (content!585 (t!40595 lt!122773))))))

(assert (= (and d!87078 c!55248) b!291504))

(assert (= (and d!87078 (not c!55248)) b!291505))

(declare-fun m!380813 () Bool)

(assert (=> b!291505 m!380813))

(declare-fun m!380815 () Bool)

(assert (=> b!291505 m!380815))

(assert (=> d!86392 d!87078))

(declare-fun d!87080 () Bool)

(declare-fun c!55249 () Bool)

(assert (=> d!87080 (= c!55249 ((_ is Nil!3953) (++!1058 lt!122467 lt!122461)))))

(declare-fun e!181443 () (InoxSet C!2884))

(assert (=> d!87080 (= (content!585 (++!1058 lt!122467 lt!122461)) e!181443)))

(declare-fun b!291506 () Bool)

(assert (=> b!291506 (= e!181443 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!291507 () Bool)

(assert (=> b!291507 (= e!181443 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 (++!1058 lt!122467 lt!122461)) true) (content!585 (t!40595 (++!1058 lt!122467 lt!122461)))))))

(assert (= (and d!87080 c!55249) b!291506))

(assert (= (and d!87080 (not c!55249)) b!291507))

(declare-fun m!380817 () Bool)

(assert (=> b!291507 m!380817))

(declare-fun m!380819 () Bool)

(assert (=> b!291507 m!380819))

(assert (=> d!86392 d!87080))

(assert (=> d!86392 d!86572))

(declare-fun bs!33233 () Bool)

(declare-fun d!87082 () Bool)

(assert (= bs!33233 (and d!87082 d!86898)))

(declare-fun lambda!10024 () Int)

(assert (=> bs!33233 (= (= (toValue!1508 (transformation!757 (rule!1360 separatorToken!170))) (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465))))) (= lambda!10024 lambda!10012))))

(assert (=> d!87082 true))

(assert (=> d!87082 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (rule!1360 separatorToken!170)))) (dynLambda!2116 order!3145 lambda!10024))))

(assert (=> d!87082 (= (equivClasses!264 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toValue!1508 (transformation!757 (rule!1360 separatorToken!170)))) (Forall2!156 lambda!10024))))

(declare-fun bs!33234 () Bool)

(assert (= bs!33234 d!87082))

(declare-fun m!380821 () Bool)

(assert (=> bs!33234 m!380821))

(assert (=> b!290103 d!87082))

(declare-fun d!87084 () Bool)

(declare-fun lt!123562 () Int)

(assert (=> d!87084 (>= lt!123562 0)))

(declare-fun e!181444 () Int)

(assert (=> d!87084 (= lt!123562 e!181444)))

(declare-fun c!55250 () Bool)

(assert (=> d!87084 (= c!55250 ((_ is Nil!3953) (originalCharacters!800 separatorToken!170)))))

(assert (=> d!87084 (= (size!3175 (originalCharacters!800 separatorToken!170)) lt!123562)))

(declare-fun b!291508 () Bool)

(assert (=> b!291508 (= e!181444 0)))

(declare-fun b!291509 () Bool)

(assert (=> b!291509 (= e!181444 (+ 1 (size!3175 (t!40595 (originalCharacters!800 separatorToken!170)))))))

(assert (= (and d!87084 c!55250) b!291508))

(assert (= (and d!87084 (not c!55250)) b!291509))

(declare-fun m!380823 () Bool)

(assert (=> b!291509 m!380823))

(assert (=> b!290463 d!87084))

(assert (=> b!290435 d!86740))

(declare-fun d!87086 () Bool)

(assert (=> d!87086 (= (list!1655 lt!122768) (list!1659 (c!54877 lt!122768)))))

(declare-fun bs!33235 () Bool)

(assert (= bs!33235 d!87086))

(declare-fun m!380825 () Bool)

(assert (=> bs!33235 m!380825))

(assert (=> d!86384 d!87086))

(declare-fun d!87088 () Bool)

(assert (=> d!87088 (= (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824)))) (list!1659 (c!54877 (charsOf!400 (_1!2471 (get!1336 lt!122824))))))))

(declare-fun bs!33236 () Bool)

(assert (= bs!33236 d!87088))

(declare-fun m!380827 () Bool)

(assert (=> bs!33236 m!380827))

(assert (=> b!290492 d!87088))

(declare-fun d!87090 () Bool)

(declare-fun lt!123563 () BalanceConc!2680)

(assert (=> d!87090 (= (list!1655 lt!123563) (originalCharacters!800 (_1!2471 (get!1336 lt!122824))))))

(assert (=> d!87090 (= lt!123563 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))) (value!25890 (_1!2471 (get!1336 lt!122824)))))))

(assert (=> d!87090 (= (charsOf!400 (_1!2471 (get!1336 lt!122824))) lt!123563)))

(declare-fun b_lambda!9771 () Bool)

(assert (=> (not b_lambda!9771) (not d!87090)))

(declare-fun tb!17135 () Bool)

(declare-fun t!40783 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40783) tb!17135))

(declare-fun b!291510 () Bool)

(declare-fun e!181445 () Bool)

(declare-fun tp!105918 () Bool)

(assert (=> b!291510 (= e!181445 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))) (value!25890 (_1!2471 (get!1336 lt!122824)))))) tp!105918))))

(declare-fun result!21004 () Bool)

(assert (=> tb!17135 (= result!21004 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))) (value!25890 (_1!2471 (get!1336 lt!122824))))) e!181445))))

(assert (= tb!17135 b!291510))

(declare-fun m!380829 () Bool)

(assert (=> b!291510 m!380829))

(declare-fun m!380831 () Bool)

(assert (=> tb!17135 m!380831))

(assert (=> d!87090 t!40783))

(declare-fun b_and!23715 () Bool)

(assert (= b_and!23713 (and (=> t!40783 result!21004) b_and!23715)))

(declare-fun tb!17137 () Bool)

(declare-fun t!40785 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40785) tb!17137))

(declare-fun result!21006 () Bool)

(assert (= result!21006 result!21004))

(assert (=> d!87090 t!40785))

(declare-fun b_and!23717 () Bool)

(assert (= b_and!23707 (and (=> t!40785 result!21006) b_and!23717)))

(declare-fun t!40787 () Bool)

(declare-fun tb!17139 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40787) tb!17139))

(declare-fun result!21008 () Bool)

(assert (= result!21008 result!21004))

(assert (=> d!87090 t!40787))

(declare-fun b_and!23719 () Bool)

(assert (= b_and!23705 (and (=> t!40787 result!21008) b_and!23719)))

(declare-fun tb!17141 () Bool)

(declare-fun t!40789 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40789) tb!17141))

(declare-fun result!21010 () Bool)

(assert (= result!21010 result!21004))

(assert (=> d!87090 t!40789))

(declare-fun b_and!23721 () Bool)

(assert (= b_and!23709 (and (=> t!40789 result!21010) b_and!23721)))

(declare-fun tb!17143 () Bool)

(declare-fun t!40791 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40791) tb!17143))

(declare-fun result!21012 () Bool)

(assert (= result!21012 result!21004))

(assert (=> d!87090 t!40791))

(declare-fun b_and!23723 () Bool)

(assert (= b_and!23711 (and (=> t!40791 result!21012) b_and!23723)))

(declare-fun m!380833 () Bool)

(assert (=> d!87090 m!380833))

(declare-fun m!380835 () Bool)

(assert (=> d!87090 m!380835))

(assert (=> b!290492 d!87090))

(assert (=> b!290492 d!86550))

(declare-fun b!291513 () Bool)

(declare-fun res!133004 () Bool)

(declare-fun e!181446 () Bool)

(assert (=> b!291513 (=> (not res!133004) (not e!181446))))

(declare-fun lt!123564 () List!3963)

(assert (=> b!291513 (= res!133004 (= (size!3175 lt!123564) (+ (size!3175 (t!40595 (++!1058 lt!122467 lt!122461))) (size!3175 lt!122458))))))

(declare-fun b!291511 () Bool)

(declare-fun e!181447 () List!3963)

(assert (=> b!291511 (= e!181447 lt!122458)))

(declare-fun d!87092 () Bool)

(assert (=> d!87092 e!181446))

(declare-fun res!133003 () Bool)

(assert (=> d!87092 (=> (not res!133003) (not e!181446))))

(assert (=> d!87092 (= res!133003 (= (content!585 lt!123564) ((_ map or) (content!585 (t!40595 (++!1058 lt!122467 lt!122461))) (content!585 lt!122458))))))

(assert (=> d!87092 (= lt!123564 e!181447)))

(declare-fun c!55251 () Bool)

(assert (=> d!87092 (= c!55251 ((_ is Nil!3953) (t!40595 (++!1058 lt!122467 lt!122461))))))

(assert (=> d!87092 (= (++!1058 (t!40595 (++!1058 lt!122467 lt!122461)) lt!122458) lt!123564)))

(declare-fun b!291512 () Bool)

(assert (=> b!291512 (= e!181447 (Cons!3953 (h!9350 (t!40595 (++!1058 lt!122467 lt!122461))) (++!1058 (t!40595 (t!40595 (++!1058 lt!122467 lt!122461))) lt!122458)))))

(declare-fun b!291514 () Bool)

(assert (=> b!291514 (= e!181446 (or (not (= lt!122458 Nil!3953)) (= lt!123564 (t!40595 (++!1058 lt!122467 lt!122461)))))))

(assert (= (and d!87092 c!55251) b!291511))

(assert (= (and d!87092 (not c!55251)) b!291512))

(assert (= (and d!87092 res!133003) b!291513))

(assert (= (and b!291513 res!133004) b!291514))

(declare-fun m!380837 () Bool)

(assert (=> b!291513 m!380837))

(declare-fun m!380839 () Bool)

(assert (=> b!291513 m!380839))

(assert (=> b!291513 m!377497))

(declare-fun m!380841 () Bool)

(assert (=> d!87092 m!380841))

(assert (=> d!87092 m!380819))

(assert (=> d!87092 m!377503))

(declare-fun m!380843 () Bool)

(assert (=> b!291512 m!380843))

(assert (=> b!290329 d!87092))

(declare-fun d!87094 () Bool)

(declare-fun lt!123565 () BalanceConc!2680)

(assert (=> d!87094 (= (list!1655 lt!123565) (printList!317 thiss!17480 (list!1658 (singletonSeq!303 (h!9352 (t!40597 tokens!465))))))))

(assert (=> d!87094 (= lt!123565 (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 (t!40597 tokens!465))) 0 (BalanceConc!2681 Empty!1336)))))

(assert (=> d!87094 (= (print!368 thiss!17480 (singletonSeq!303 (h!9352 (t!40597 tokens!465)))) lt!123565)))

(declare-fun bs!33237 () Bool)

(assert (= bs!33237 d!87094))

(declare-fun m!380845 () Bool)

(assert (=> bs!33237 m!380845))

(assert (=> bs!33237 m!377641))

(declare-fun m!380847 () Bool)

(assert (=> bs!33237 m!380847))

(assert (=> bs!33237 m!380847))

(declare-fun m!380849 () Bool)

(assert (=> bs!33237 m!380849))

(assert (=> bs!33237 m!377641))

(assert (=> bs!33237 m!377645))

(assert (=> b!290168 d!87094))

(declare-fun d!87096 () Bool)

(declare-fun e!181448 () Bool)

(assert (=> d!87096 e!181448))

(declare-fun res!133005 () Bool)

(assert (=> d!87096 (=> (not res!133005) (not e!181448))))

(declare-fun lt!123566 () BalanceConc!2682)

(assert (=> d!87096 (= res!133005 (= (list!1658 lt!123566) (Cons!3955 (h!9352 (t!40597 tokens!465)) Nil!3955)))))

(assert (=> d!87096 (= lt!123566 (singleton!134 (h!9352 (t!40597 tokens!465))))))

(assert (=> d!87096 (= (singletonSeq!303 (h!9352 (t!40597 tokens!465))) lt!123566)))

(declare-fun b!291515 () Bool)

(assert (=> b!291515 (= e!181448 (isBalanced!379 (c!54879 lt!123566)))))

(assert (= (and d!87096 res!133005) b!291515))

(declare-fun m!380851 () Bool)

(assert (=> d!87096 m!380851))

(declare-fun m!380853 () Bool)

(assert (=> d!87096 m!380853))

(declare-fun m!380855 () Bool)

(assert (=> b!291515 m!380855))

(assert (=> b!290168 d!87096))

(declare-fun d!87098 () Bool)

(declare-fun lt!123568 () BalanceConc!2680)

(assert (=> d!87098 (= (list!1655 lt!123568) (printListTailRec!150 thiss!17480 (dropList!184 (singletonSeq!303 (h!9352 (t!40597 tokens!465))) 0) (list!1655 (BalanceConc!2681 Empty!1336))))))

(declare-fun e!181449 () BalanceConc!2680)

(assert (=> d!87098 (= lt!123568 e!181449)))

(declare-fun c!55252 () Bool)

(assert (=> d!87098 (= c!55252 (>= 0 (size!3176 (singletonSeq!303 (h!9352 (t!40597 tokens!465))))))))

(declare-fun e!181450 () Bool)

(assert (=> d!87098 e!181450))

(declare-fun res!133006 () Bool)

(assert (=> d!87098 (=> (not res!133006) (not e!181450))))

(assert (=> d!87098 (= res!133006 (>= 0 0))))

(assert (=> d!87098 (= (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 (t!40597 tokens!465))) 0 (BalanceConc!2681 Empty!1336)) lt!123568)))

(declare-fun b!291516 () Bool)

(assert (=> b!291516 (= e!181450 (<= 0 (size!3176 (singletonSeq!303 (h!9352 (t!40597 tokens!465))))))))

(declare-fun b!291517 () Bool)

(assert (=> b!291517 (= e!181449 (BalanceConc!2681 Empty!1336))))

(declare-fun b!291518 () Bool)

(assert (=> b!291518 (= e!181449 (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 (t!40597 tokens!465))) (+ 0 1) (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 (singletonSeq!303 (h!9352 (t!40597 tokens!465))) 0)))))))

(declare-fun lt!123570 () List!3965)

(assert (=> b!291518 (= lt!123570 (list!1658 (singletonSeq!303 (h!9352 (t!40597 tokens!465)))))))

(declare-fun lt!123573 () Unit!5362)

(assert (=> b!291518 (= lt!123573 (lemmaDropApply!224 lt!123570 0))))

(assert (=> b!291518 (= (head!934 (drop!237 lt!123570 0)) (apply!851 lt!123570 0))))

(declare-fun lt!123571 () Unit!5362)

(assert (=> b!291518 (= lt!123571 lt!123573)))

(declare-fun lt!123572 () List!3965)

(assert (=> b!291518 (= lt!123572 (list!1658 (singletonSeq!303 (h!9352 (t!40597 tokens!465)))))))

(declare-fun lt!123569 () Unit!5362)

(assert (=> b!291518 (= lt!123569 (lemmaDropTail!216 lt!123572 0))))

(assert (=> b!291518 (= (tail!516 (drop!237 lt!123572 0)) (drop!237 lt!123572 (+ 0 1)))))

(declare-fun lt!123567 () Unit!5362)

(assert (=> b!291518 (= lt!123567 lt!123569)))

(assert (= (and d!87098 res!133006) b!291516))

(assert (= (and d!87098 c!55252) b!291517))

(assert (= (and d!87098 (not c!55252)) b!291518))

(assert (=> d!87098 m!377513))

(assert (=> d!87098 m!377641))

(declare-fun m!380857 () Bool)

(assert (=> d!87098 m!380857))

(assert (=> d!87098 m!377641))

(declare-fun m!380859 () Bool)

(assert (=> d!87098 m!380859))

(assert (=> d!87098 m!380859))

(assert (=> d!87098 m!377513))

(declare-fun m!380861 () Bool)

(assert (=> d!87098 m!380861))

(declare-fun m!380863 () Bool)

(assert (=> d!87098 m!380863))

(assert (=> b!291516 m!377641))

(assert (=> b!291516 m!380857))

(declare-fun m!380865 () Bool)

(assert (=> b!291518 m!380865))

(assert (=> b!291518 m!377641))

(declare-fun m!380867 () Bool)

(assert (=> b!291518 m!380867))

(assert (=> b!291518 m!377641))

(declare-fun m!380869 () Bool)

(assert (=> b!291518 m!380869))

(declare-fun m!380871 () Bool)

(assert (=> b!291518 m!380871))

(declare-fun m!380873 () Bool)

(assert (=> b!291518 m!380873))

(declare-fun m!380875 () Bool)

(assert (=> b!291518 m!380875))

(declare-fun m!380877 () Bool)

(assert (=> b!291518 m!380877))

(declare-fun m!380879 () Bool)

(assert (=> b!291518 m!380879))

(declare-fun m!380881 () Bool)

(assert (=> b!291518 m!380881))

(declare-fun m!380883 () Bool)

(assert (=> b!291518 m!380883))

(assert (=> b!291518 m!380867))

(declare-fun m!380885 () Bool)

(assert (=> b!291518 m!380885))

(assert (=> b!291518 m!377641))

(assert (=> b!291518 m!380847))

(assert (=> b!291518 m!380879))

(assert (=> b!291518 m!380885))

(assert (=> b!291518 m!380869))

(assert (=> b!291518 m!380875))

(declare-fun m!380887 () Bool)

(assert (=> b!291518 m!380887))

(assert (=> b!290168 d!87098))

(declare-fun e!181451 () Bool)

(declare-fun b!291520 () Bool)

(declare-fun lt!123588 () Token!1258)

(assert (=> b!291520 (= e!181451 (= (rule!1360 lt!123588) (get!1340 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123588))))))))

(declare-fun d!87100 () Bool)

(assert (=> d!87100 (isDefined!716 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 call!16429 lt!122644)))))

(declare-fun lt!123585 () Unit!5362)

(declare-fun e!181452 () Unit!5362)

(assert (=> d!87100 (= lt!123585 e!181452)))

(declare-fun c!55253 () Bool)

(assert (=> d!87100 (= c!55253 (isEmpty!2640 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 call!16429 lt!122644))))))

(declare-fun lt!123589 () Unit!5362)

(declare-fun lt!123578 () Unit!5362)

(assert (=> d!87100 (= lt!123589 lt!123578)))

(assert (=> d!87100 e!181451))

(declare-fun res!133008 () Bool)

(assert (=> d!87100 (=> (not res!133008) (not e!181451))))

(assert (=> d!87100 (= res!133008 (isDefined!718 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123588)))))))

(assert (=> d!87100 (= lt!123578 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!140 thiss!17480 rules!1920 call!16429 lt!123588))))

(declare-fun lt!123581 () Unit!5362)

(declare-fun lt!123583 () Unit!5362)

(assert (=> d!87100 (= lt!123581 lt!123583)))

(declare-fun lt!123582 () List!3963)

(assert (=> d!87100 (isPrefix!421 lt!123582 (++!1058 call!16429 lt!122644))))

(assert (=> d!87100 (= lt!123583 (lemmaPrefixStaysPrefixWhenAddingToSuffix!64 lt!123582 call!16429 lt!122644))))

(assert (=> d!87100 (= lt!123582 (list!1655 (charsOf!400 lt!123588)))))

(declare-fun lt!123574 () Unit!5362)

(declare-fun lt!123590 () Unit!5362)

(assert (=> d!87100 (= lt!123574 lt!123590)))

(declare-fun lt!123577 () List!3963)

(declare-fun lt!123579 () List!3963)

(assert (=> d!87100 (isPrefix!421 lt!123577 (++!1058 lt!123577 lt!123579))))

(assert (=> d!87100 (= lt!123590 (lemmaConcatTwoListThenFirstIsPrefix!316 lt!123577 lt!123579))))

(assert (=> d!87100 (= lt!123579 (_2!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 call!16429))))))

(assert (=> d!87100 (= lt!123577 (list!1655 (charsOf!400 lt!123588)))))

(assert (=> d!87100 (= lt!123588 (head!934 (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 call!16429))))))))

(assert (=> d!87100 (not (isEmpty!2627 rules!1920))))

(assert (=> d!87100 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 call!16429 lt!122644) lt!123585)))

(declare-fun b!291522 () Bool)

(declare-fun Unit!5410 () Unit!5362)

(assert (=> b!291522 (= e!181452 Unit!5410)))

(declare-fun b!291519 () Bool)

(declare-fun res!133007 () Bool)

(assert (=> b!291519 (=> (not res!133007) (not e!181451))))

(assert (=> b!291519 (= res!133007 (matchR!299 (regex!757 (get!1340 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123588))))) (list!1655 (charsOf!400 lt!123588))))))

(declare-fun b!291521 () Bool)

(declare-fun Unit!5411 () Unit!5362)

(assert (=> b!291521 (= e!181452 Unit!5411)))

(declare-fun lt!123576 () List!3963)

(assert (=> b!291521 (= lt!123576 (++!1058 call!16429 lt!122644))))

(declare-fun lt!123586 () Unit!5362)

(assert (=> b!291521 (= lt!123586 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!64 thiss!17480 (rule!1360 lt!123588) rules!1920 lt!123576))))

(assert (=> b!291521 (isEmpty!2640 (maxPrefixOneRule!161 thiss!17480 (rule!1360 lt!123588) lt!123576))))

(declare-fun lt!123580 () Unit!5362)

(assert (=> b!291521 (= lt!123580 lt!123586)))

(declare-fun lt!123587 () List!3963)

(assert (=> b!291521 (= lt!123587 (list!1655 (charsOf!400 lt!123588)))))

(declare-fun lt!123584 () Unit!5362)

(assert (=> b!291521 (= lt!123584 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!64 thiss!17480 (rule!1360 lt!123588) lt!123587 (++!1058 call!16429 lt!122644)))))

(assert (=> b!291521 (not (matchR!299 (regex!757 (rule!1360 lt!123588)) lt!123587))))

(declare-fun lt!123575 () Unit!5362)

(assert (=> b!291521 (= lt!123575 lt!123584)))

(assert (=> b!291521 false))

(assert (= (and d!87100 res!133008) b!291519))

(assert (= (and b!291519 res!133007) b!291520))

(assert (= (and d!87100 c!55253) b!291521))

(assert (= (and d!87100 (not c!55253)) b!291522))

(declare-fun m!380889 () Bool)

(assert (=> b!291520 m!380889))

(assert (=> b!291520 m!380889))

(declare-fun m!380891 () Bool)

(assert (=> b!291520 m!380891))

(declare-fun m!380893 () Bool)

(assert (=> d!87100 m!380893))

(declare-fun m!380895 () Bool)

(assert (=> d!87100 m!380895))

(assert (=> d!87100 m!380895))

(declare-fun m!380897 () Bool)

(assert (=> d!87100 m!380897))

(declare-fun m!380899 () Bool)

(assert (=> d!87100 m!380899))

(declare-fun m!380901 () Bool)

(assert (=> d!87100 m!380901))

(declare-fun m!380903 () Bool)

(assert (=> d!87100 m!380903))

(declare-fun m!380905 () Bool)

(assert (=> d!87100 m!380905))

(assert (=> d!87100 m!380899))

(declare-fun m!380907 () Bool)

(assert (=> d!87100 m!380907))

(declare-fun m!380909 () Bool)

(assert (=> d!87100 m!380909))

(declare-fun m!380911 () Bool)

(assert (=> d!87100 m!380911))

(assert (=> d!87100 m!380889))

(declare-fun m!380913 () Bool)

(assert (=> d!87100 m!380913))

(declare-fun m!380915 () Bool)

(assert (=> d!87100 m!380915))

(assert (=> d!87100 m!380909))

(assert (=> d!87100 m!380901))

(declare-fun m!380917 () Bool)

(assert (=> d!87100 m!380917))

(declare-fun m!380919 () Bool)

(assert (=> d!87100 m!380919))

(assert (=> d!87100 m!380893))

(declare-fun m!380921 () Bool)

(assert (=> d!87100 m!380921))

(assert (=> d!87100 m!380893))

(declare-fun m!380923 () Bool)

(assert (=> d!87100 m!380923))

(assert (=> d!87100 m!380915))

(declare-fun m!380925 () Bool)

(assert (=> d!87100 m!380925))

(assert (=> d!87100 m!380889))

(assert (=> d!87100 m!380921))

(declare-fun m!380927 () Bool)

(assert (=> d!87100 m!380927))

(assert (=> d!87100 m!377139))

(assert (=> d!87100 m!380895))

(declare-fun m!380929 () Bool)

(assert (=> d!87100 m!380929))

(assert (=> b!291519 m!380925))

(declare-fun m!380931 () Bool)

(assert (=> b!291519 m!380931))

(assert (=> b!291519 m!380915))

(assert (=> b!291519 m!380925))

(assert (=> b!291519 m!380889))

(assert (=> b!291519 m!380891))

(assert (=> b!291519 m!380889))

(assert (=> b!291519 m!380915))

(assert (=> b!291521 m!380893))

(declare-fun m!380933 () Bool)

(assert (=> b!291521 m!380933))

(declare-fun m!380935 () Bool)

(assert (=> b!291521 m!380935))

(assert (=> b!291521 m!380915))

(assert (=> b!291521 m!380925))

(assert (=> b!291521 m!380893))

(declare-fun m!380937 () Bool)

(assert (=> b!291521 m!380937))

(assert (=> b!291521 m!380935))

(declare-fun m!380939 () Bool)

(assert (=> b!291521 m!380939))

(declare-fun m!380941 () Bool)

(assert (=> b!291521 m!380941))

(assert (=> b!291521 m!380915))

(assert (=> b!290168 d!87100))

(declare-fun d!87102 () Bool)

(declare-fun lt!123591 () BalanceConc!2680)

(assert (=> d!87102 (= (list!1655 lt!123591) (originalCharacters!800 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480))))))

(assert (=> d!87102 (= lt!123591 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480))))) (value!25890 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))))

(assert (=> d!87102 (= (charsOf!400 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480))) lt!123591)))

(declare-fun b_lambda!9773 () Bool)

(assert (=> (not b_lambda!9773) (not d!87102)))

(declare-fun tb!17145 () Bool)

(declare-fun t!40793 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))) t!40793) tb!17145))

(declare-fun e!181453 () Bool)

(declare-fun tp!105919 () Bool)

(declare-fun b!291523 () Bool)

(assert (=> b!291523 (= e!181453 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480))))) (value!25890 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))) tp!105919))))

(declare-fun result!21014 () Bool)

(assert (=> tb!17145 (= result!21014 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480))))) (value!25890 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480))))) e!181453))))

(assert (= tb!17145 b!291523))

(declare-fun m!380943 () Bool)

(assert (=> b!291523 m!380943))

(declare-fun m!380945 () Bool)

(assert (=> tb!17145 m!380945))

(assert (=> d!87102 t!40793))

(declare-fun b_and!23725 () Bool)

(assert (= b_and!23715 (and (=> t!40793 result!21014) b_and!23725)))

(declare-fun t!40795 () Bool)

(declare-fun tb!17147 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))) t!40795) tb!17147))

(declare-fun result!21016 () Bool)

(assert (= result!21016 result!21014))

(assert (=> d!87102 t!40795))

(declare-fun b_and!23727 () Bool)

(assert (= b_and!23717 (and (=> t!40795 result!21016) b_and!23727)))

(declare-fun t!40797 () Bool)

(declare-fun tb!17149 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))) t!40797) tb!17149))

(declare-fun result!21018 () Bool)

(assert (= result!21018 result!21014))

(assert (=> d!87102 t!40797))

(declare-fun b_and!23729 () Bool)

(assert (= b_and!23719 (and (=> t!40797 result!21018) b_and!23729)))

(declare-fun t!40799 () Bool)

(declare-fun tb!17151 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))) t!40799) tb!17151))

(declare-fun result!21020 () Bool)

(assert (= result!21020 result!21014))

(assert (=> d!87102 t!40799))

(declare-fun b_and!23731 () Bool)

(assert (= b_and!23721 (and (=> t!40799 result!21020) b_and!23731)))

(declare-fun t!40801 () Bool)

(declare-fun tb!17153 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))) t!40801) tb!17153))

(declare-fun result!21022 () Bool)

(assert (= result!21022 result!21014))

(assert (=> d!87102 t!40801))

(declare-fun b_and!23733 () Bool)

(assert (= b_and!23723 (and (=> t!40801 result!21022) b_and!23733)))

(declare-fun m!380947 () Bool)

(assert (=> d!87102 m!380947))

(declare-fun m!380949 () Bool)

(assert (=> d!87102 m!380949))

(assert (=> bm!16473 d!87102))

(declare-fun bm!16547 () Bool)

(declare-fun call!16552 () Bool)

(assert (=> bm!16547 (= call!16552 (ruleDisjointCharsFromAllFromOtherType!139 (h!9351 rules!1920) (t!40596 rules!1920)))))

(declare-fun b!291532 () Bool)

(declare-fun e!181462 () Bool)

(declare-fun e!181461 () Bool)

(assert (=> b!291532 (= e!181462 e!181461)))

(declare-fun res!133014 () Bool)

(assert (=> b!291532 (= res!133014 (not ((_ is Cons!3954) rules!1920)))))

(assert (=> b!291532 (=> res!133014 e!181461)))

(declare-fun b!291533 () Bool)

(assert (=> b!291533 (= e!181461 call!16552)))

(declare-fun b!291534 () Bool)

(declare-fun e!181460 () Bool)

(assert (=> b!291534 (= e!181462 e!181460)))

(declare-fun res!133013 () Bool)

(declare-fun rulesUseDisjointChars!69 (Rule!1314 Rule!1314) Bool)

(assert (=> b!291534 (= res!133013 (rulesUseDisjointChars!69 (h!9351 rules!1920) (h!9351 rules!1920)))))

(assert (=> b!291534 (=> (not res!133013) (not e!181460))))

(declare-fun b!291535 () Bool)

(assert (=> b!291535 (= e!181460 call!16552)))

(declare-fun d!87104 () Bool)

(declare-fun c!55256 () Bool)

(assert (=> d!87104 (= c!55256 (and ((_ is Cons!3954) rules!1920) (not (= (isSeparator!757 (h!9351 rules!1920)) (isSeparator!757 (h!9351 rules!1920))))))))

(assert (=> d!87104 (= (ruleDisjointCharsFromAllFromOtherType!139 (h!9351 rules!1920) rules!1920) e!181462)))

(assert (= (and d!87104 c!55256) b!291534))

(assert (= (and d!87104 (not c!55256)) b!291532))

(assert (= (and b!291534 res!133013) b!291535))

(assert (= (and b!291532 (not res!133014)) b!291533))

(assert (= (or b!291535 b!291533) bm!16547))

(declare-fun m!380951 () Bool)

(assert (=> bm!16547 m!380951))

(declare-fun m!380953 () Bool)

(assert (=> b!291534 m!380953))

(assert (=> b!290468 d!87104))

(declare-fun bs!33259 () Bool)

(declare-fun d!87106 () Bool)

(assert (= bs!33259 (and d!87106 b!290883)))

(declare-fun lambda!10029 () Int)

(assert (=> bs!33259 (= lambda!10029 lambda!9995)))

(declare-fun bs!33260 () Bool)

(assert (= bs!33260 (and d!87106 b!290433)))

(assert (=> bs!33260 (= lambda!10029 lambda!9985)))

(declare-fun bs!33261 () Bool)

(assert (= bs!33261 (and d!87106 b!289852)))

(assert (=> bs!33261 (= lambda!10029 lambda!9952)))

(declare-fun bs!33262 () Bool)

(assert (= bs!33262 (and d!87106 b!289856)))

(assert (=> bs!33262 (not (= lambda!10029 lambda!9951))))

(declare-fun bs!33263 () Bool)

(assert (= bs!33263 (and d!87106 b!290164)))

(assert (=> bs!33263 (= lambda!10029 lambda!9966)))

(declare-fun bs!33264 () Bool)

(assert (= bs!33264 (and d!87106 b!290442)))

(assert (=> bs!33264 (= lambda!10029 lambda!9986)))

(declare-fun bs!33265 () Bool)

(assert (= bs!33265 (and d!87106 b!291104)))

(assert (=> bs!33265 (= lambda!10029 lambda!10005)))

(declare-fun bs!33266 () Bool)

(assert (= bs!33266 (and d!87106 d!86240)))

(assert (=> bs!33266 (= lambda!10029 lambda!9957)))

(declare-fun bs!33267 () Bool)

(assert (= bs!33267 (and d!87106 d!86814)))

(assert (=> bs!33267 (not (= lambda!10029 lambda!10004))))

(declare-fun bs!33268 () Bool)

(assert (= bs!33268 (and d!87106 b!291344)))

(assert (=> bs!33268 (= lambda!10029 lambda!10019)))

(declare-fun bs!33269 () Bool)

(assert (= bs!33269 (and d!87106 b!290961)))

(assert (=> bs!33269 (= lambda!10029 lambda!9999)))

(declare-fun bs!33270 () Bool)

(assert (= bs!33270 (and d!87106 d!86334)))

(assert (=> bs!33270 (not (= lambda!10029 lambda!9977))))

(declare-fun bs!33271 () Bool)

(assert (= bs!33271 (and d!87106 b!290313)))

(assert (=> bs!33271 (= lambda!10029 lambda!9978)))

(declare-fun bs!33272 () Bool)

(assert (= bs!33272 (and d!87106 d!86416)))

(assert (=> bs!33272 (not (= lambda!10029 lambda!9984))))

(declare-fun bs!33273 () Bool)

(assert (= bs!33273 (and d!87106 d!86972)))

(assert (=> bs!33273 (not (= lambda!10029 lambda!10018))))

(declare-fun b!291646 () Bool)

(declare-fun e!181528 () Bool)

(assert (=> b!291646 (= e!181528 true)))

(declare-fun b!291645 () Bool)

(declare-fun e!181527 () Bool)

(assert (=> b!291645 (= e!181527 e!181528)))

(declare-fun b!291644 () Bool)

(declare-fun e!181526 () Bool)

(assert (=> b!291644 (= e!181526 e!181527)))

(assert (=> d!87106 e!181526))

(assert (= b!291645 b!291646))

(assert (= b!291644 b!291645))

(assert (= (and d!87106 ((_ is Cons!3954) rules!1920)) b!291644))

(assert (=> b!291646 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!10029))))

(assert (=> b!291646 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!10029))))

(assert (=> d!87106 true))

(declare-fun lt!123719 () Bool)

(assert (=> d!87106 (= lt!123719 (forall!1024 (list!1658 lt!122463) lambda!10029))))

(declare-fun e!181525 () Bool)

(assert (=> d!87106 (= lt!123719 e!181525)))

(declare-fun res!133060 () Bool)

(assert (=> d!87106 (=> res!133060 e!181525)))

(assert (=> d!87106 (= res!133060 (not ((_ is Cons!3955) (list!1658 lt!122463))))))

(assert (=> d!87106 (not (isEmpty!2627 rules!1920))))

(assert (=> d!87106 (= (rulesProduceEachTokenIndividuallyList!250 thiss!17480 rules!1920 (list!1658 lt!122463)) lt!123719)))

(declare-fun b!291642 () Bool)

(declare-fun e!181524 () Bool)

(assert (=> b!291642 (= e!181525 e!181524)))

(declare-fun res!133061 () Bool)

(assert (=> b!291642 (=> (not res!133061) (not e!181524))))

(assert (=> b!291642 (= res!133061 (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (h!9352 (list!1658 lt!122463))))))

(declare-fun b!291643 () Bool)

(assert (=> b!291643 (= e!181524 (rulesProduceEachTokenIndividuallyList!250 thiss!17480 rules!1920 (t!40597 (list!1658 lt!122463))))))

(assert (= (and d!87106 (not res!133060)) b!291642))

(assert (= (and b!291642 res!133061) b!291643))

(assert (=> d!87106 m!377403))

(declare-fun m!381175 () Bool)

(assert (=> d!87106 m!381175))

(assert (=> d!87106 m!377139))

(declare-fun m!381179 () Bool)

(assert (=> b!291642 m!381179))

(declare-fun m!381183 () Bool)

(assert (=> b!291643 m!381183))

(assert (=> b!290000 d!87106))

(assert (=> b!290000 d!86554))

(declare-fun d!87146 () Bool)

(assert (=> d!87146 (= (list!1655 (_2!2470 lt!122789)) (list!1659 (c!54877 (_2!2470 lt!122789))))))

(declare-fun bs!33274 () Bool)

(assert (= bs!33274 d!87146))

(declare-fun m!381191 () Bool)

(assert (=> bs!33274 m!381191))

(assert (=> b!290420 d!87146))

(declare-fun b!291715 () Bool)

(declare-fun e!181566 () tuple2!4514)

(assert (=> b!291715 (= e!181566 (tuple2!4515 Nil!3955 (list!1655 (seqFromList!880 lt!122467))))))

(declare-fun b!291716 () Bool)

(declare-fun e!181567 () Bool)

(declare-fun lt!123753 () tuple2!4514)

(assert (=> b!291716 (= e!181567 (not (isEmpty!2637 (_1!2473 lt!123753))))))

(declare-fun d!87148 () Bool)

(declare-fun e!181568 () Bool)

(assert (=> d!87148 e!181568))

(declare-fun c!55303 () Bool)

(assert (=> d!87148 (= c!55303 (> (size!3178 (_1!2473 lt!123753)) 0))))

(assert (=> d!87148 (= lt!123753 e!181566)))

(declare-fun c!55302 () Bool)

(declare-fun lt!123751 () Option!877)

(assert (=> d!87148 (= c!55302 ((_ is Some!876) lt!123751))))

(assert (=> d!87148 (= lt!123751 (maxPrefix!359 thiss!17480 rules!1920 (list!1655 (seqFromList!880 lt!122467))))))

(assert (=> d!87148 (= (lexList!229 thiss!17480 rules!1920 (list!1655 (seqFromList!880 lt!122467))) lt!123753)))

(declare-fun b!291717 () Bool)

(assert (=> b!291717 (= e!181568 e!181567)))

(declare-fun res!133095 () Bool)

(assert (=> b!291717 (= res!133095 (< (size!3175 (_2!2473 lt!123753)) (size!3175 (list!1655 (seqFromList!880 lt!122467)))))))

(assert (=> b!291717 (=> (not res!133095) (not e!181567))))

(declare-fun b!291718 () Bool)

(assert (=> b!291718 (= e!181568 (= (_2!2473 lt!123753) (list!1655 (seqFromList!880 lt!122467))))))

(declare-fun b!291719 () Bool)

(declare-fun lt!123752 () tuple2!4514)

(assert (=> b!291719 (= e!181566 (tuple2!4515 (Cons!3955 (_1!2471 (v!14827 lt!123751)) (_1!2473 lt!123752)) (_2!2473 lt!123752)))))

(assert (=> b!291719 (= lt!123752 (lexList!229 thiss!17480 rules!1920 (_2!2471 (v!14827 lt!123751))))))

(assert (= (and d!87148 c!55302) b!291719))

(assert (= (and d!87148 (not c!55302)) b!291715))

(assert (= (and d!87148 c!55303) b!291717))

(assert (= (and d!87148 (not c!55303)) b!291718))

(assert (= (and b!291717 res!133095) b!291716))

(declare-fun m!381327 () Bool)

(assert (=> b!291716 m!381327))

(declare-fun m!381329 () Bool)

(assert (=> d!87148 m!381329))

(assert (=> d!87148 m!378053))

(declare-fun m!381331 () Bool)

(assert (=> d!87148 m!381331))

(declare-fun m!381333 () Bool)

(assert (=> b!291717 m!381333))

(assert (=> b!291717 m!378053))

(assert (=> b!291717 m!380285))

(declare-fun m!381335 () Bool)

(assert (=> b!291719 m!381335))

(assert (=> b!290420 d!87148))

(declare-fun d!87188 () Bool)

(assert (=> d!87188 (= (list!1655 (seqFromList!880 lt!122467)) (list!1659 (c!54877 (seqFromList!880 lt!122467))))))

(declare-fun bs!33298 () Bool)

(assert (= bs!33298 d!87188))

(declare-fun m!381337 () Bool)

(assert (=> bs!33298 m!381337))

(assert (=> b!290420 d!87188))

(declare-fun b!291722 () Bool)

(declare-fun res!133097 () Bool)

(declare-fun e!181569 () Bool)

(assert (=> b!291722 (=> (not res!133097) (not e!181569))))

(declare-fun lt!123754 () List!3963)

(assert (=> b!291722 (= res!133097 (= (size!3175 lt!123754) (+ (size!3175 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))) (size!3175 (_2!2471 (get!1336 lt!122824))))))))

(declare-fun b!291720 () Bool)

(declare-fun e!181570 () List!3963)

(assert (=> b!291720 (= e!181570 (_2!2471 (get!1336 lt!122824)))))

(declare-fun d!87190 () Bool)

(assert (=> d!87190 e!181569))

(declare-fun res!133096 () Bool)

(assert (=> d!87190 (=> (not res!133096) (not e!181569))))

(assert (=> d!87190 (= res!133096 (= (content!585 lt!123754) ((_ map or) (content!585 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))) (content!585 (_2!2471 (get!1336 lt!122824))))))))

(assert (=> d!87190 (= lt!123754 e!181570)))

(declare-fun c!55304 () Bool)

(assert (=> d!87190 (= c!55304 ((_ is Nil!3953) (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))))))

(assert (=> d!87190 (= (++!1058 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824)))) (_2!2471 (get!1336 lt!122824))) lt!123754)))

(declare-fun b!291721 () Bool)

(assert (=> b!291721 (= e!181570 (Cons!3953 (h!9350 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))) (++!1058 (t!40595 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))) (_2!2471 (get!1336 lt!122824)))))))

(declare-fun b!291723 () Bool)

(assert (=> b!291723 (= e!181569 (or (not (= (_2!2471 (get!1336 lt!122824)) Nil!3953)) (= lt!123754 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824)))))))))

(assert (= (and d!87190 c!55304) b!291720))

(assert (= (and d!87190 (not c!55304)) b!291721))

(assert (= (and d!87190 res!133096) b!291722))

(assert (= (and b!291722 res!133097) b!291723))

(declare-fun m!381339 () Bool)

(assert (=> b!291722 m!381339))

(assert (=> b!291722 m!378193))

(declare-fun m!381341 () Bool)

(assert (=> b!291722 m!381341))

(assert (=> b!291722 m!378207))

(declare-fun m!381343 () Bool)

(assert (=> d!87190 m!381343))

(assert (=> d!87190 m!378193))

(declare-fun m!381345 () Bool)

(assert (=> d!87190 m!381345))

(declare-fun m!381347 () Bool)

(assert (=> d!87190 m!381347))

(declare-fun m!381349 () Bool)

(assert (=> b!291721 m!381349))

(assert (=> b!290488 d!87190))

(assert (=> b!290488 d!87088))

(assert (=> b!290488 d!87090))

(assert (=> b!290488 d!86550))

(assert (=> bm!16471 d!86860))

(declare-fun d!87192 () Bool)

(assert (=> d!87192 (= (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))) (isBalanced!381 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))))))

(declare-fun bs!33299 () Bool)

(assert (= bs!33299 d!87192))

(declare-fun m!381351 () Bool)

(assert (=> bs!33299 m!381351))

(assert (=> tb!16997 d!87192))

(declare-fun b!291741 () Bool)

(declare-fun e!181582 () List!3963)

(assert (=> b!291741 (= e!181582 (++!1058 (list!1659 (left!3269 (c!54877 (charsOf!400 separatorToken!170)))) (list!1659 (right!3599 (c!54877 (charsOf!400 separatorToken!170))))))))

(declare-fun b!291738 () Bool)

(declare-fun e!181581 () List!3963)

(assert (=> b!291738 (= e!181581 Nil!3953)))

(declare-fun d!87194 () Bool)

(declare-fun c!55309 () Bool)

(assert (=> d!87194 (= c!55309 ((_ is Empty!1336) (c!54877 (charsOf!400 separatorToken!170))))))

(assert (=> d!87194 (= (list!1659 (c!54877 (charsOf!400 separatorToken!170))) e!181581)))

(declare-fun b!291739 () Bool)

(assert (=> b!291739 (= e!181581 e!181582)))

(declare-fun c!55310 () Bool)

(assert (=> b!291739 (= c!55310 ((_ is Leaf!2054) (c!54877 (charsOf!400 separatorToken!170))))))

(declare-fun b!291740 () Bool)

(declare-fun list!1663 (IArray!2673) List!3963)

(assert (=> b!291740 (= e!181582 (list!1663 (xs!3935 (c!54877 (charsOf!400 separatorToken!170)))))))

(assert (= (and d!87194 c!55309) b!291738))

(assert (= (and d!87194 (not c!55309)) b!291739))

(assert (= (and b!291739 c!55310) b!291740))

(assert (= (and b!291739 (not c!55310)) b!291741))

(declare-fun m!381357 () Bool)

(assert (=> b!291741 m!381357))

(declare-fun m!381359 () Bool)

(assert (=> b!291741 m!381359))

(assert (=> b!291741 m!381357))

(assert (=> b!291741 m!381359))

(declare-fun m!381361 () Bool)

(assert (=> b!291741 m!381361))

(declare-fun m!381363 () Bool)

(assert (=> b!291740 m!381363))

(assert (=> d!86326 d!87194))

(declare-fun bs!33353 () Bool)

(declare-fun b!291963 () Bool)

(assert (= bs!33353 (and b!291963 d!86696)))

(declare-fun lambda!10041 () Int)

(assert (=> bs!33353 (= (and (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) (= (toValue!1508 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (rule!1360 separatorToken!170))))) (= lambda!10041 lambda!9998))))

(declare-fun b!291996 () Bool)

(declare-fun e!181744 () Bool)

(assert (=> b!291996 (= e!181744 true)))

(declare-fun b!291995 () Bool)

(declare-fun e!181743 () Bool)

(assert (=> b!291995 (= e!181743 e!181744)))

(assert (=> b!291963 e!181743))

(assert (= b!291995 b!291996))

(assert (= b!291963 b!291995))

(assert (=> b!291996 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2113 order!3141 lambda!10041))))

(assert (=> b!291996 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2113 order!3141 lambda!10041))))

(declare-fun b!291960 () Bool)

(declare-fun e!181725 () Bool)

(declare-fun e!181722 () Bool)

(assert (=> b!291960 (= e!181725 e!181722)))

(declare-fun res!133171 () Bool)

(assert (=> b!291960 (=> res!133171 e!181722)))

(declare-fun lt!123879 () Option!876)

(assert (=> b!291960 (= res!133171 (not (isDefined!715 lt!123879)))))

(declare-fun b!291961 () Bool)

(declare-fun e!181721 () Bool)

(assert (=> b!291961 (= e!181721 (= (list!1655 (_2!2469 (get!1337 lt!123879))) (_2!2471 (get!1336 (maxPrefixOneRule!161 thiss!17480 (h!9351 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(declare-fun b!291962 () Bool)

(declare-fun e!181724 () Option!876)

(assert (=> b!291962 (= e!181724 None!875)))

(declare-datatypes ((tuple2!4520 0))(
  ( (tuple2!4521 (_1!2476 BalanceConc!2680) (_2!2476 BalanceConc!2680)) )
))
(declare-fun lt!123880 () tuple2!4520)

(assert (=> b!291963 (= e!181724 (Some!875 (tuple2!4507 (Token!1259 (apply!852 (transformation!757 (h!9351 rules!1920)) (_1!2476 lt!123880)) (h!9351 rules!1920) (size!3177 (_1!2476 lt!123880)) (list!1655 (_1!2476 lt!123880))) (_2!2476 lt!123880))))))

(declare-fun lt!123885 () List!3963)

(assert (=> b!291963 (= lt!123885 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(declare-fun lt!123882 () Unit!5362)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!66 (Regex!981 List!3963) Unit!5362)

(assert (=> b!291963 (= lt!123882 (longestMatchIsAcceptedByMatchOrIsEmpty!66 (regex!757 (h!9351 rules!1920)) lt!123885))))

(declare-fun res!133170 () Bool)

(declare-datatypes ((tuple2!4522 0))(
  ( (tuple2!4523 (_1!2477 List!3963) (_2!2477 List!3963)) )
))
(declare-fun findLongestMatchInner!82 (Regex!981 List!3963 Int List!3963 List!3963 Int) tuple2!4522)

(assert (=> b!291963 (= res!133170 (isEmpty!2639 (_1!2477 (findLongestMatchInner!82 (regex!757 (h!9351 rules!1920)) Nil!3953 (size!3175 Nil!3953) lt!123885 lt!123885 (size!3175 lt!123885)))))))

(declare-fun e!181723 () Bool)

(assert (=> b!291963 (=> res!133170 e!181723)))

(assert (=> b!291963 e!181723))

(declare-fun lt!123881 () Unit!5362)

(assert (=> b!291963 (= lt!123881 lt!123882)))

(declare-fun lt!123883 () Unit!5362)

(declare-fun lemmaInv!44 (TokenValueInjection!1330) Unit!5362)

(assert (=> b!291963 (= lt!123883 (lemmaInv!44 (transformation!757 (h!9351 rules!1920))))))

(declare-fun lt!123886 () Unit!5362)

(declare-fun ForallOf!41 (Int BalanceConc!2680) Unit!5362)

(assert (=> b!291963 (= lt!123886 (ForallOf!41 lambda!10041 (_1!2476 lt!123880)))))

(declare-fun lt!123888 () Unit!5362)

(assert (=> b!291963 (= lt!123888 (ForallOf!41 lambda!10041 (seqFromList!880 (list!1655 (_1!2476 lt!123880)))))))

(declare-fun lt!123887 () Option!876)

(assert (=> b!291963 (= lt!123887 (Some!875 (tuple2!4507 (Token!1259 (apply!852 (transformation!757 (h!9351 rules!1920)) (_1!2476 lt!123880)) (h!9351 rules!1920) (size!3177 (_1!2476 lt!123880)) (list!1655 (_1!2476 lt!123880))) (_2!2476 lt!123880))))))

(declare-fun lt!123884 () Unit!5362)

(declare-fun lemmaEqSameImage!41 (TokenValueInjection!1330 BalanceConc!2680 BalanceConc!2680) Unit!5362)

(assert (=> b!291963 (= lt!123884 (lemmaEqSameImage!41 (transformation!757 (h!9351 rules!1920)) (_1!2476 lt!123880) (seqFromList!880 (list!1655 (_1!2476 lt!123880)))))))

(declare-fun d!87200 () Bool)

(assert (=> d!87200 e!181725))

(declare-fun res!133168 () Bool)

(assert (=> d!87200 (=> (not res!133168) (not e!181725))))

(assert (=> d!87200 (= res!133168 (= (isDefined!715 lt!123879) (isDefined!716 (maxPrefixOneRule!161 thiss!17480 (h!9351 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))))

(assert (=> d!87200 (= lt!123879 e!181724)))

(declare-fun c!55362 () Bool)

(assert (=> d!87200 (= c!55362 (isEmpty!2636 (_1!2476 lt!123880)))))

(declare-fun findLongestMatchWithZipperSequence!41 (Regex!981 BalanceConc!2680) tuple2!4520)

(assert (=> d!87200 (= lt!123880 (findLongestMatchWithZipperSequence!41 (regex!757 (h!9351 rules!1920)) (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))

(assert (=> d!87200 (ruleValid!96 thiss!17480 (h!9351 rules!1920))))

(assert (=> d!87200 (= (maxPrefixOneRuleZipperSequence!131 thiss!17480 (h!9351 rules!1920) (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))) lt!123879)))

(declare-fun b!291964 () Bool)

(assert (=> b!291964 (= e!181722 e!181721)))

(declare-fun res!133169 () Bool)

(assert (=> b!291964 (=> (not res!133169) (not e!181721))))

(assert (=> b!291964 (= res!133169 (= (_1!2469 (get!1337 lt!123879)) (_1!2471 (get!1336 (maxPrefixOneRule!161 thiss!17480 (h!9351 rules!1920) (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))))))))

(declare-fun b!291965 () Bool)

(assert (=> b!291965 (= e!181723 (matchR!299 (regex!757 (h!9351 rules!1920)) (_1!2477 (findLongestMatchInner!82 (regex!757 (h!9351 rules!1920)) Nil!3953 (size!3175 Nil!3953) lt!123885 lt!123885 (size!3175 lt!123885)))))))

(assert (= (and d!87200 c!55362) b!291962))

(assert (= (and d!87200 (not c!55362)) b!291963))

(assert (= (and b!291963 (not res!133170)) b!291965))

(assert (= (and d!87200 res!133168) b!291960))

(assert (= (and b!291960 (not res!133171)) b!291964))

(assert (= (and b!291964 res!133169) b!291961))

(declare-fun m!381891 () Bool)

(assert (=> b!291965 m!381891))

(declare-fun m!381893 () Bool)

(assert (=> b!291965 m!381893))

(assert (=> b!291965 m!381891))

(assert (=> b!291965 m!381893))

(declare-fun m!381897 () Bool)

(assert (=> b!291965 m!381897))

(declare-fun m!381903 () Bool)

(assert (=> b!291965 m!381903))

(declare-fun m!381905 () Bool)

(assert (=> b!291964 m!381905))

(assert (=> b!291964 m!377201))

(assert (=> b!291964 m!377457))

(assert (=> b!291964 m!377457))

(assert (=> b!291964 m!379313))

(assert (=> b!291964 m!379313))

(declare-fun m!381907 () Bool)

(assert (=> b!291964 m!381907))

(assert (=> d!87200 m!380743))

(assert (=> d!87200 m!377201))

(declare-fun m!381909 () Bool)

(assert (=> d!87200 m!381909))

(declare-fun m!381911 () Bool)

(assert (=> d!87200 m!381911))

(assert (=> d!87200 m!377457))

(assert (=> d!87200 m!379313))

(declare-fun m!381913 () Bool)

(assert (=> d!87200 m!381913))

(assert (=> d!87200 m!379313))

(declare-fun m!381915 () Bool)

(assert (=> d!87200 m!381915))

(assert (=> d!87200 m!377201))

(assert (=> d!87200 m!377457))

(assert (=> b!291961 m!381905))

(declare-fun m!381917 () Bool)

(assert (=> b!291961 m!381917))

(assert (=> b!291961 m!379313))

(assert (=> b!291961 m!381907))

(assert (=> b!291961 m!377457))

(assert (=> b!291961 m!379313))

(assert (=> b!291961 m!377201))

(assert (=> b!291961 m!377457))

(assert (=> b!291960 m!381911))

(assert (=> b!291963 m!381891))

(declare-fun m!381919 () Bool)

(assert (=> b!291963 m!381919))

(assert (=> b!291963 m!381893))

(declare-fun m!381921 () Bool)

(assert (=> b!291963 m!381921))

(declare-fun m!381923 () Bool)

(assert (=> b!291963 m!381923))

(declare-fun m!381925 () Bool)

(assert (=> b!291963 m!381925))

(assert (=> b!291963 m!381891))

(assert (=> b!291963 m!381893))

(assert (=> b!291963 m!381897))

(declare-fun m!381927 () Bool)

(assert (=> b!291963 m!381927))

(declare-fun m!381929 () Bool)

(assert (=> b!291963 m!381929))

(declare-fun m!381931 () Bool)

(assert (=> b!291963 m!381931))

(assert (=> b!291963 m!377201))

(assert (=> b!291963 m!377457))

(declare-fun m!381933 () Bool)

(assert (=> b!291963 m!381933))

(assert (=> b!291963 m!381919))

(assert (=> b!291963 m!381923))

(declare-fun m!381935 () Bool)

(assert (=> b!291963 m!381935))

(assert (=> b!291963 m!381923))

(declare-fun m!381937 () Bool)

(assert (=> b!291963 m!381937))

(assert (=> bm!16397 d!87200))

(assert (=> b!290063 d!86864))

(declare-fun d!87332 () Bool)

(declare-fun res!133172 () Bool)

(declare-fun e!181761 () Bool)

(assert (=> d!87332 (=> (not res!133172) (not e!181761))))

(assert (=> d!87332 (= res!133172 (not (isEmpty!2639 (originalCharacters!800 (h!9352 (t!40597 tokens!465))))))))

(assert (=> d!87332 (= (inv!4891 (h!9352 (t!40597 tokens!465))) e!181761)))

(declare-fun b!292041 () Bool)

(declare-fun res!133173 () Bool)

(assert (=> b!292041 (=> (not res!133173) (not e!181761))))

(assert (=> b!292041 (= res!133173 (= (originalCharacters!800 (h!9352 (t!40597 tokens!465))) (list!1655 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (value!25890 (h!9352 (t!40597 tokens!465)))))))))

(declare-fun b!292042 () Bool)

(assert (=> b!292042 (= e!181761 (= (size!3171 (h!9352 (t!40597 tokens!465))) (size!3175 (originalCharacters!800 (h!9352 (t!40597 tokens!465))))))))

(assert (= (and d!87332 res!133172) b!292041))

(assert (= (and b!292041 res!133173) b!292042))

(declare-fun b_lambda!9811 () Bool)

(assert (=> (not b_lambda!9811) (not b!292041)))

(declare-fun t!40908 () Bool)

(declare-fun tb!17257 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) t!40908) tb!17257))

(declare-fun b!292043 () Bool)

(declare-fun e!181762 () Bool)

(declare-fun tp!106033 () Bool)

(assert (=> b!292043 (= e!181762 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (value!25890 (h!9352 (t!40597 tokens!465)))))) tp!106033))))

(declare-fun result!21130 () Bool)

(assert (=> tb!17257 (= result!21130 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (value!25890 (h!9352 (t!40597 tokens!465))))) e!181762))))

(assert (= tb!17257 b!292043))

(declare-fun m!381945 () Bool)

(assert (=> b!292043 m!381945))

(declare-fun m!381947 () Bool)

(assert (=> tb!17257 m!381947))

(assert (=> b!292041 t!40908))

(declare-fun b_and!23803 () Bool)

(assert (= b_and!23731 (and (=> t!40908 result!21130) b_and!23803)))

(declare-fun t!40910 () Bool)

(declare-fun tb!17259 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) t!40910) tb!17259))

(declare-fun result!21132 () Bool)

(assert (= result!21132 result!21130))

(assert (=> b!292041 t!40910))

(declare-fun b_and!23805 () Bool)

(assert (= b_and!23727 (and (=> t!40910 result!21132) b_and!23805)))

(declare-fun tb!17261 () Bool)

(declare-fun t!40912 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) t!40912) tb!17261))

(declare-fun result!21134 () Bool)

(assert (= result!21134 result!21130))

(assert (=> b!292041 t!40912))

(declare-fun b_and!23807 () Bool)

(assert (= b_and!23729 (and (=> t!40912 result!21134) b_and!23807)))

(declare-fun t!40914 () Bool)

(declare-fun tb!17263 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) t!40914) tb!17263))

(declare-fun result!21136 () Bool)

(assert (= result!21136 result!21130))

(assert (=> b!292041 t!40914))

(declare-fun b_and!23809 () Bool)

(assert (= b_and!23733 (and (=> t!40914 result!21136) b_and!23809)))

(declare-fun t!40916 () Bool)

(declare-fun tb!17265 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) t!40916) tb!17265))

(declare-fun result!21138 () Bool)

(assert (= result!21138 result!21130))

(assert (=> b!292041 t!40916))

(declare-fun b_and!23811 () Bool)

(assert (= b_and!23725 (and (=> t!40916 result!21138) b_and!23811)))

(declare-fun m!381949 () Bool)

(assert (=> d!87332 m!381949))

(declare-fun m!381951 () Bool)

(assert (=> b!292041 m!381951))

(assert (=> b!292041 m!381951))

(declare-fun m!381953 () Bool)

(assert (=> b!292041 m!381953))

(declare-fun m!381955 () Bool)

(assert (=> b!292042 m!381955))

(assert (=> b!290546 d!87332))

(assert (=> b!290446 d!86714))

(assert (=> b!290446 d!86314))

(declare-fun d!87344 () Bool)

(declare-fun lt!123890 () BalanceConc!2680)

(assert (=> d!87344 (= (list!1655 lt!123890) (printListTailRec!150 thiss!17480 (dropList!184 (singletonSeq!303 (h!9352 tokens!465)) 0) (list!1655 (BalanceConc!2681 Empty!1336))))))

(declare-fun e!181763 () BalanceConc!2680)

(assert (=> d!87344 (= lt!123890 e!181763)))

(declare-fun c!55363 () Bool)

(assert (=> d!87344 (= c!55363 (>= 0 (size!3176 (singletonSeq!303 (h!9352 tokens!465)))))))

(declare-fun e!181764 () Bool)

(assert (=> d!87344 e!181764))

(declare-fun res!133174 () Bool)

(assert (=> d!87344 (=> (not res!133174) (not e!181764))))

(assert (=> d!87344 (= res!133174 (>= 0 0))))

(assert (=> d!87344 (= (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)) 0 (BalanceConc!2681 Empty!1336)) lt!123890)))

(declare-fun b!292044 () Bool)

(assert (=> b!292044 (= e!181764 (<= 0 (size!3176 (singletonSeq!303 (h!9352 tokens!465)))))))

(declare-fun b!292045 () Bool)

(assert (=> b!292045 (= e!181763 (BalanceConc!2681 Empty!1336))))

(declare-fun b!292046 () Bool)

(assert (=> b!292046 (= e!181763 (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 tokens!465)) (+ 0 1) (++!1060 (BalanceConc!2681 Empty!1336) (charsOf!400 (apply!850 (singletonSeq!303 (h!9352 tokens!465)) 0)))))))

(declare-fun lt!123892 () List!3965)

(assert (=> b!292046 (= lt!123892 (list!1658 (singletonSeq!303 (h!9352 tokens!465))))))

(declare-fun lt!123895 () Unit!5362)

(assert (=> b!292046 (= lt!123895 (lemmaDropApply!224 lt!123892 0))))

(assert (=> b!292046 (= (head!934 (drop!237 lt!123892 0)) (apply!851 lt!123892 0))))

(declare-fun lt!123893 () Unit!5362)

(assert (=> b!292046 (= lt!123893 lt!123895)))

(declare-fun lt!123894 () List!3965)

(assert (=> b!292046 (= lt!123894 (list!1658 (singletonSeq!303 (h!9352 tokens!465))))))

(declare-fun lt!123891 () Unit!5362)

(assert (=> b!292046 (= lt!123891 (lemmaDropTail!216 lt!123894 0))))

(assert (=> b!292046 (= (tail!516 (drop!237 lt!123894 0)) (drop!237 lt!123894 (+ 0 1)))))

(declare-fun lt!123889 () Unit!5362)

(assert (=> b!292046 (= lt!123889 lt!123891)))

(assert (= (and d!87344 res!133174) b!292044))

(assert (= (and d!87344 c!55363) b!292045))

(assert (= (and d!87344 (not c!55363)) b!292046))

(assert (=> d!87344 m!377513))

(assert (=> d!87344 m!377195))

(declare-fun m!381957 () Bool)

(assert (=> d!87344 m!381957))

(assert (=> d!87344 m!377195))

(declare-fun m!381959 () Bool)

(assert (=> d!87344 m!381959))

(assert (=> d!87344 m!381959))

(assert (=> d!87344 m!377513))

(declare-fun m!381961 () Bool)

(assert (=> d!87344 m!381961))

(declare-fun m!381963 () Bool)

(assert (=> d!87344 m!381963))

(assert (=> b!292044 m!377195))

(assert (=> b!292044 m!381957))

(declare-fun m!381965 () Bool)

(assert (=> b!292046 m!381965))

(assert (=> b!292046 m!377195))

(declare-fun m!381967 () Bool)

(assert (=> b!292046 m!381967))

(assert (=> b!292046 m!377195))

(declare-fun m!381969 () Bool)

(assert (=> b!292046 m!381969))

(declare-fun m!381971 () Bool)

(assert (=> b!292046 m!381971))

(declare-fun m!381973 () Bool)

(assert (=> b!292046 m!381973))

(declare-fun m!381975 () Bool)

(assert (=> b!292046 m!381975))

(declare-fun m!381977 () Bool)

(assert (=> b!292046 m!381977))

(declare-fun m!381979 () Bool)

(assert (=> b!292046 m!381979))

(declare-fun m!381981 () Bool)

(assert (=> b!292046 m!381981))

(declare-fun m!381983 () Bool)

(assert (=> b!292046 m!381983))

(assert (=> b!292046 m!381967))

(declare-fun m!381985 () Bool)

(assert (=> b!292046 m!381985))

(assert (=> b!292046 m!377195))

(assert (=> b!292046 m!378161))

(assert (=> b!292046 m!381979))

(assert (=> b!292046 m!381985))

(assert (=> b!292046 m!381969))

(assert (=> b!292046 m!381975))

(declare-fun m!381987 () Bool)

(assert (=> b!292046 m!381987))

(assert (=> b!290446 d!87344))

(declare-fun e!181765 () Bool)

(declare-fun lt!123910 () Token!1258)

(declare-fun b!292048 () Bool)

(assert (=> b!292048 (= e!181765 (= (rule!1360 lt!123910) (get!1340 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123910))))))))

(declare-fun d!87346 () Bool)

(assert (=> d!87346 (isDefined!716 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 call!16482 lt!122806)))))

(declare-fun lt!123907 () Unit!5362)

(declare-fun e!181766 () Unit!5362)

(assert (=> d!87346 (= lt!123907 e!181766)))

(declare-fun c!55364 () Bool)

(assert (=> d!87346 (= c!55364 (isEmpty!2640 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 call!16482 lt!122806))))))

(declare-fun lt!123911 () Unit!5362)

(declare-fun lt!123900 () Unit!5362)

(assert (=> d!87346 (= lt!123911 lt!123900)))

(assert (=> d!87346 e!181765))

(declare-fun res!133176 () Bool)

(assert (=> d!87346 (=> (not res!133176) (not e!181765))))

(assert (=> d!87346 (= res!133176 (isDefined!718 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123910)))))))

(assert (=> d!87346 (= lt!123900 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!140 thiss!17480 rules!1920 call!16482 lt!123910))))

(declare-fun lt!123903 () Unit!5362)

(declare-fun lt!123905 () Unit!5362)

(assert (=> d!87346 (= lt!123903 lt!123905)))

(declare-fun lt!123904 () List!3963)

(assert (=> d!87346 (isPrefix!421 lt!123904 (++!1058 call!16482 lt!122806))))

(assert (=> d!87346 (= lt!123905 (lemmaPrefixStaysPrefixWhenAddingToSuffix!64 lt!123904 call!16482 lt!122806))))

(assert (=> d!87346 (= lt!123904 (list!1655 (charsOf!400 lt!123910)))))

(declare-fun lt!123896 () Unit!5362)

(declare-fun lt!123912 () Unit!5362)

(assert (=> d!87346 (= lt!123896 lt!123912)))

(declare-fun lt!123899 () List!3963)

(declare-fun lt!123901 () List!3963)

(assert (=> d!87346 (isPrefix!421 lt!123899 (++!1058 lt!123899 lt!123901))))

(assert (=> d!87346 (= lt!123912 (lemmaConcatTwoListThenFirstIsPrefix!316 lt!123899 lt!123901))))

(assert (=> d!87346 (= lt!123901 (_2!2471 (get!1336 (maxPrefix!359 thiss!17480 rules!1920 call!16482))))))

(assert (=> d!87346 (= lt!123899 (list!1655 (charsOf!400 lt!123910)))))

(assert (=> d!87346 (= lt!123910 (head!934 (list!1658 (_1!2470 (lex!435 thiss!17480 rules!1920 (seqFromList!880 call!16482))))))))

(assert (=> d!87346 (not (isEmpty!2627 rules!1920))))

(assert (=> d!87346 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 call!16482 lt!122806) lt!123907)))

(declare-fun b!292050 () Bool)

(declare-fun Unit!5412 () Unit!5362)

(assert (=> b!292050 (= e!181766 Unit!5412)))

(declare-fun b!292047 () Bool)

(declare-fun res!133175 () Bool)

(assert (=> b!292047 (=> (not res!133175) (not e!181765))))

(assert (=> b!292047 (= res!133175 (matchR!299 (regex!757 (get!1340 (getRuleFromTag!140 thiss!17480 rules!1920 (tag!973 (rule!1360 lt!123910))))) (list!1655 (charsOf!400 lt!123910))))))

(declare-fun b!292049 () Bool)

(declare-fun Unit!5413 () Unit!5362)

(assert (=> b!292049 (= e!181766 Unit!5413)))

(declare-fun lt!123898 () List!3963)

(assert (=> b!292049 (= lt!123898 (++!1058 call!16482 lt!122806))))

(declare-fun lt!123908 () Unit!5362)

(assert (=> b!292049 (= lt!123908 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!64 thiss!17480 (rule!1360 lt!123910) rules!1920 lt!123898))))

(assert (=> b!292049 (isEmpty!2640 (maxPrefixOneRule!161 thiss!17480 (rule!1360 lt!123910) lt!123898))))

(declare-fun lt!123902 () Unit!5362)

(assert (=> b!292049 (= lt!123902 lt!123908)))

(declare-fun lt!123909 () List!3963)

(assert (=> b!292049 (= lt!123909 (list!1655 (charsOf!400 lt!123910)))))

(declare-fun lt!123906 () Unit!5362)

(assert (=> b!292049 (= lt!123906 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!64 thiss!17480 (rule!1360 lt!123910) lt!123909 (++!1058 call!16482 lt!122806)))))

(assert (=> b!292049 (not (matchR!299 (regex!757 (rule!1360 lt!123910)) lt!123909))))

(declare-fun lt!123897 () Unit!5362)

(assert (=> b!292049 (= lt!123897 lt!123906)))

(assert (=> b!292049 false))

(assert (= (and d!87346 res!133176) b!292047))

(assert (= (and b!292047 res!133175) b!292048))

(assert (= (and d!87346 c!55364) b!292049))

(assert (= (and d!87346 (not c!55364)) b!292050))

(declare-fun m!381989 () Bool)

(assert (=> b!292048 m!381989))

(assert (=> b!292048 m!381989))

(declare-fun m!381991 () Bool)

(assert (=> b!292048 m!381991))

(declare-fun m!381993 () Bool)

(assert (=> d!87346 m!381993))

(declare-fun m!381995 () Bool)

(assert (=> d!87346 m!381995))

(assert (=> d!87346 m!381995))

(declare-fun m!381997 () Bool)

(assert (=> d!87346 m!381997))

(declare-fun m!381999 () Bool)

(assert (=> d!87346 m!381999))

(declare-fun m!382001 () Bool)

(assert (=> d!87346 m!382001))

(declare-fun m!382003 () Bool)

(assert (=> d!87346 m!382003))

(declare-fun m!382005 () Bool)

(assert (=> d!87346 m!382005))

(assert (=> d!87346 m!381999))

(declare-fun m!382007 () Bool)

(assert (=> d!87346 m!382007))

(declare-fun m!382009 () Bool)

(assert (=> d!87346 m!382009))

(declare-fun m!382011 () Bool)

(assert (=> d!87346 m!382011))

(assert (=> d!87346 m!381989))

(declare-fun m!382013 () Bool)

(assert (=> d!87346 m!382013))

(declare-fun m!382015 () Bool)

(assert (=> d!87346 m!382015))

(assert (=> d!87346 m!382009))

(assert (=> d!87346 m!382001))

(declare-fun m!382017 () Bool)

(assert (=> d!87346 m!382017))

(declare-fun m!382019 () Bool)

(assert (=> d!87346 m!382019))

(assert (=> d!87346 m!381993))

(declare-fun m!382021 () Bool)

(assert (=> d!87346 m!382021))

(assert (=> d!87346 m!381993))

(declare-fun m!382023 () Bool)

(assert (=> d!87346 m!382023))

(assert (=> d!87346 m!382015))

(declare-fun m!382025 () Bool)

(assert (=> d!87346 m!382025))

(assert (=> d!87346 m!381989))

(assert (=> d!87346 m!382021))

(declare-fun m!382027 () Bool)

(assert (=> d!87346 m!382027))

(assert (=> d!87346 m!377139))

(assert (=> d!87346 m!381995))

(declare-fun m!382029 () Bool)

(assert (=> d!87346 m!382029))

(assert (=> b!292047 m!382025))

(declare-fun m!382031 () Bool)

(assert (=> b!292047 m!382031))

(assert (=> b!292047 m!382015))

(assert (=> b!292047 m!382025))

(assert (=> b!292047 m!381989))

(assert (=> b!292047 m!381991))

(assert (=> b!292047 m!381989))

(assert (=> b!292047 m!382015))

(assert (=> b!292049 m!381993))

(declare-fun m!382033 () Bool)

(assert (=> b!292049 m!382033))

(declare-fun m!382035 () Bool)

(assert (=> b!292049 m!382035))

(assert (=> b!292049 m!382015))

(assert (=> b!292049 m!382025))

(assert (=> b!292049 m!381993))

(declare-fun m!382037 () Bool)

(assert (=> b!292049 m!382037))

(assert (=> b!292049 m!382035))

(declare-fun m!382039 () Bool)

(assert (=> b!292049 m!382039))

(declare-fun m!382041 () Bool)

(assert (=> b!292049 m!382041))

(assert (=> b!292049 m!382015))

(assert (=> b!290446 d!87346))

(declare-fun d!87348 () Bool)

(declare-fun lt!123913 () BalanceConc!2680)

(assert (=> d!87348 (= (list!1655 lt!123913) (originalCharacters!800 call!16475))))

(assert (=> d!87348 (= lt!123913 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 call!16475))) (value!25890 call!16475)))))

(assert (=> d!87348 (= (charsOf!400 call!16475) lt!123913)))

(declare-fun b_lambda!9813 () Bool)

(assert (=> (not b_lambda!9813) (not d!87348)))

(declare-fun t!40918 () Bool)

(declare-fun tb!17267 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 call!16475)))) t!40918) tb!17267))

(declare-fun b!292051 () Bool)

(declare-fun e!181767 () Bool)

(declare-fun tp!106034 () Bool)

(assert (=> b!292051 (= e!181767 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 call!16475))) (value!25890 call!16475)))) tp!106034))))

(declare-fun result!21140 () Bool)

(assert (=> tb!17267 (= result!21140 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 call!16475))) (value!25890 call!16475))) e!181767))))

(assert (= tb!17267 b!292051))

(declare-fun m!382043 () Bool)

(assert (=> b!292051 m!382043))

(declare-fun m!382045 () Bool)

(assert (=> tb!17267 m!382045))

(assert (=> d!87348 t!40918))

(declare-fun b_and!23813 () Bool)

(assert (= b_and!23805 (and (=> t!40918 result!21140) b_and!23813)))

(declare-fun t!40920 () Bool)

(declare-fun tb!17269 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 call!16475)))) t!40920) tb!17269))

(declare-fun result!21142 () Bool)

(assert (= result!21142 result!21140))

(assert (=> d!87348 t!40920))

(declare-fun b_and!23815 () Bool)

(assert (= b_and!23803 (and (=> t!40920 result!21142) b_and!23815)))

(declare-fun t!40922 () Bool)

(declare-fun tb!17271 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 call!16475)))) t!40922) tb!17271))

(declare-fun result!21144 () Bool)

(assert (= result!21144 result!21140))

(assert (=> d!87348 t!40922))

(declare-fun b_and!23817 () Bool)

(assert (= b_and!23807 (and (=> t!40922 result!21144) b_and!23817)))

(declare-fun tb!17273 () Bool)

(declare-fun t!40924 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 call!16475)))) t!40924) tb!17273))

(declare-fun result!21146 () Bool)

(assert (= result!21146 result!21140))

(assert (=> d!87348 t!40924))

(declare-fun b_and!23819 () Bool)

(assert (= b_and!23811 (and (=> t!40924 result!21146) b_and!23819)))

(declare-fun t!40926 () Bool)

(declare-fun tb!17275 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 call!16475)))) t!40926) tb!17275))

(declare-fun result!21148 () Bool)

(assert (= result!21148 result!21140))

(assert (=> d!87348 t!40926))

(declare-fun b_and!23821 () Bool)

(assert (= b_and!23809 (and (=> t!40926 result!21148) b_and!23821)))

(declare-fun m!382047 () Bool)

(assert (=> d!87348 m!382047))

(declare-fun m!382049 () Bool)

(assert (=> d!87348 m!382049))

(assert (=> b!290309 d!87348))

(declare-fun b!292054 () Bool)

(declare-fun res!133178 () Bool)

(declare-fun e!181768 () Bool)

(assert (=> b!292054 (=> (not res!133178) (not e!181768))))

(declare-fun lt!123914 () List!3963)

(assert (=> b!292054 (= res!133178 (= (size!3175 lt!123914) (+ (size!3175 (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) (size!3175 (printList!317 thiss!17480 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))))))

(declare-fun b!292052 () Bool)

(declare-fun e!181769 () List!3963)

(assert (=> b!292052 (= e!181769 (printList!317 thiss!17480 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955))))))

(declare-fun d!87350 () Bool)

(assert (=> d!87350 e!181768))

(declare-fun res!133177 () Bool)

(assert (=> d!87350 (=> (not res!133177) (not e!181768))))

(assert (=> d!87350 (= res!133177 (= (content!585 lt!123914) ((_ map or) (content!585 (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) (content!585 (printList!317 thiss!17480 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))))))

(assert (=> d!87350 (= lt!123914 e!181769)))

(declare-fun c!55365 () Bool)

(assert (=> d!87350 (= c!55365 ((_ is Nil!3953) (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))))))

(assert (=> d!87350 (= (++!1058 (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))) (printList!317 thiss!17480 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955)))) lt!123914)))

(declare-fun b!292053 () Bool)

(assert (=> b!292053 (= e!181769 (Cons!3953 (h!9350 (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) (++!1058 (t!40595 (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) (printList!317 thiss!17480 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955))))))))

(declare-fun b!292055 () Bool)

(assert (=> b!292055 (= e!181768 (or (not (= (printList!317 thiss!17480 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955))) Nil!3953)) (= lt!123914 (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))))))

(assert (= (and d!87350 c!55365) b!292052))

(assert (= (and d!87350 (not c!55365)) b!292053))

(assert (= (and d!87350 res!133177) b!292054))

(assert (= (and b!292054 res!133178) b!292055))

(declare-fun m!382051 () Bool)

(assert (=> b!292054 m!382051))

(assert (=> b!292054 m!377557))

(declare-fun m!382053 () Bool)

(assert (=> b!292054 m!382053))

(assert (=> b!292054 m!377559))

(declare-fun m!382055 () Bool)

(assert (=> b!292054 m!382055))

(declare-fun m!382057 () Bool)

(assert (=> d!87350 m!382057))

(assert (=> d!87350 m!377557))

(declare-fun m!382059 () Bool)

(assert (=> d!87350 m!382059))

(assert (=> d!87350 m!377559))

(declare-fun m!382061 () Bool)

(assert (=> d!87350 m!382061))

(assert (=> b!292053 m!377559))

(declare-fun m!382063 () Bool)

(assert (=> b!292053 m!382063))

(assert (=> b!290101 d!87350))

(declare-fun d!87352 () Bool)

(assert (=> d!87352 (= (list!1655 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))) (list!1659 (c!54877 (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))))))

(declare-fun bs!33360 () Bool)

(assert (= bs!33360 d!87352))

(declare-fun m!382065 () Bool)

(assert (=> bs!33360 m!382065))

(assert (=> b!290101 d!87352))

(declare-fun d!87354 () Bool)

(declare-fun lt!123915 () BalanceConc!2680)

(assert (=> d!87354 (= (list!1655 lt!123915) (originalCharacters!800 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))))

(assert (=> d!87354 (= lt!123915 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) (value!25890 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))))

(assert (=> d!87354 (= (charsOf!400 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))) lt!123915)))

(declare-fun b_lambda!9815 () Bool)

(assert (=> (not b_lambda!9815) (not d!87354)))

(declare-fun t!40928 () Bool)

(declare-fun tb!17277 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))) t!40928) tb!17277))

(declare-fun b!292056 () Bool)

(declare-fun e!181770 () Bool)

(declare-fun tp!106035 () Bool)

(assert (=> b!292056 (= e!181770 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) (value!25890 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))) tp!106035))))

(declare-fun result!21150 () Bool)

(assert (=> tb!17277 (= result!21150 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) (value!25890 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) e!181770))))

(assert (= tb!17277 b!292056))

(declare-fun m!382067 () Bool)

(assert (=> b!292056 m!382067))

(declare-fun m!382069 () Bool)

(assert (=> tb!17277 m!382069))

(assert (=> d!87354 t!40928))

(declare-fun b_and!23823 () Bool)

(assert (= b_and!23819 (and (=> t!40928 result!21150) b_and!23823)))

(declare-fun tb!17279 () Bool)

(declare-fun t!40930 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))) t!40930) tb!17279))

(declare-fun result!21152 () Bool)

(assert (= result!21152 result!21150))

(assert (=> d!87354 t!40930))

(declare-fun b_and!23825 () Bool)

(assert (= b_and!23817 (and (=> t!40930 result!21152) b_and!23825)))

(declare-fun t!40932 () Bool)

(declare-fun tb!17281 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))) t!40932) tb!17281))

(declare-fun result!21154 () Bool)

(assert (= result!21154 result!21150))

(assert (=> d!87354 t!40932))

(declare-fun b_and!23827 () Bool)

(assert (= b_and!23815 (and (=> t!40932 result!21154) b_and!23827)))

(declare-fun t!40934 () Bool)

(declare-fun tb!17283 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))) t!40934) tb!17283))

(declare-fun result!21156 () Bool)

(assert (= result!21156 result!21150))

(assert (=> d!87354 t!40934))

(declare-fun b_and!23829 () Bool)

(assert (= b_and!23821 (and (=> t!40934 result!21156) b_and!23829)))

(declare-fun t!40936 () Bool)

(declare-fun tb!17285 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))) t!40936) tb!17285))

(declare-fun result!21158 () Bool)

(assert (= result!21158 result!21150))

(assert (=> d!87354 t!40936))

(declare-fun b_and!23831 () Bool)

(assert (= b_and!23813 (and (=> t!40936 result!21158) b_and!23831)))

(declare-fun m!382071 () Bool)

(assert (=> d!87354 m!382071))

(declare-fun m!382073 () Bool)

(assert (=> d!87354 m!382073))

(assert (=> b!290101 d!87354))

(declare-fun d!87356 () Bool)

(declare-fun c!55366 () Bool)

(assert (=> d!87356 (= c!55366 ((_ is Cons!3955) (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955))))))

(declare-fun e!181771 () List!3963)

(assert (=> d!87356 (= (printList!317 thiss!17480 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955))) e!181771)))

(declare-fun b!292057 () Bool)

(assert (=> b!292057 (= e!181771 (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955))))) (printList!317 thiss!17480 (t!40597 (t!40597 (Cons!3955 (h!9352 tokens!465) Nil!3955))))))))

(declare-fun b!292058 () Bool)

(assert (=> b!292058 (= e!181771 Nil!3953)))

(assert (= (and d!87356 c!55366) b!292057))

(assert (= (and d!87356 (not c!55366)) b!292058))

(declare-fun m!382075 () Bool)

(assert (=> b!292057 m!382075))

(assert (=> b!292057 m!382075))

(declare-fun m!382077 () Bool)

(assert (=> b!292057 m!382077))

(declare-fun m!382079 () Bool)

(assert (=> b!292057 m!382079))

(assert (=> b!292057 m!382077))

(assert (=> b!292057 m!382079))

(declare-fun m!382081 () Bool)

(assert (=> b!292057 m!382081))

(assert (=> b!290101 d!87356))

(declare-fun d!87358 () Bool)

(assert (=> d!87358 (= (inv!17 (value!25890 (h!9352 tokens!465))) (= (charsToBigInt!1 (text!5901 (value!25890 (h!9352 tokens!465)))) (value!25882 (value!25890 (h!9352 tokens!465)))))))

(declare-fun bs!33361 () Bool)

(assert (= bs!33361 d!87358))

(declare-fun m!382083 () Bool)

(assert (=> bs!33361 m!382083))

(assert (=> b!290502 d!87358))

(declare-fun bs!33362 () Bool)

(declare-fun d!87360 () Bool)

(assert (= bs!33362 (and d!87360 d!86696)))

(declare-fun lambda!10042 () Int)

(assert (=> bs!33362 (= (and (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) (= (toValue!1508 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (rule!1360 separatorToken!170))))) (= lambda!10042 lambda!9998))))

(declare-fun bs!33363 () Bool)

(assert (= bs!33363 (and d!87360 b!291963)))

(assert (=> bs!33363 (= lambda!10042 lambda!10041)))

(assert (=> d!87360 true))

(assert (=> d!87360 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2113 order!3141 lambda!10042))))

(assert (=> d!87360 true))

(assert (=> d!87360 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2113 order!3141 lambda!10042))))

(assert (=> d!87360 (= (semiInverseModEq!281 (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (Forall!179 lambda!10042))))

(declare-fun bs!33364 () Bool)

(assert (= bs!33364 d!87360))

(declare-fun m!382085 () Bool)

(assert (=> bs!33364 m!382085))

(assert (=> d!86238 d!87360))

(declare-fun d!87362 () Bool)

(declare-fun res!133179 () Bool)

(declare-fun e!181772 () Bool)

(assert (=> d!87362 (=> res!133179 e!181772)))

(assert (=> d!87362 (= res!133179 ((_ is Nil!3955) (t!40597 tokens!465)))))

(assert (=> d!87362 (= (forall!1024 (t!40597 tokens!465) lambda!9951) e!181772)))

(declare-fun b!292059 () Bool)

(declare-fun e!181773 () Bool)

(assert (=> b!292059 (= e!181772 e!181773)))

(declare-fun res!133180 () Bool)

(assert (=> b!292059 (=> (not res!133180) (not e!181773))))

(assert (=> b!292059 (= res!133180 (dynLambda!2110 lambda!9951 (h!9352 (t!40597 tokens!465))))))

(declare-fun b!292060 () Bool)

(assert (=> b!292060 (= e!181773 (forall!1024 (t!40597 (t!40597 tokens!465)) lambda!9951))))

(assert (= (and d!87362 (not res!133179)) b!292059))

(assert (= (and b!292059 res!133180) b!292060))

(declare-fun b_lambda!9817 () Bool)

(assert (=> (not b_lambda!9817) (not b!292059)))

(declare-fun m!382087 () Bool)

(assert (=> b!292059 m!382087))

(declare-fun m!382089 () Bool)

(assert (=> b!292060 m!382089))

(assert (=> b!290427 d!87362))

(declare-fun b!292064 () Bool)

(declare-fun e!181775 () List!3963)

(assert (=> b!292064 (= e!181775 (++!1058 (list!1659 (left!3269 (c!54877 (seqFromList!880 lt!122466)))) (list!1659 (right!3599 (c!54877 (seqFromList!880 lt!122466))))))))

(declare-fun b!292061 () Bool)

(declare-fun e!181774 () List!3963)

(assert (=> b!292061 (= e!181774 Nil!3953)))

(declare-fun d!87364 () Bool)

(declare-fun c!55367 () Bool)

(assert (=> d!87364 (= c!55367 ((_ is Empty!1336) (c!54877 (seqFromList!880 lt!122466))))))

(assert (=> d!87364 (= (list!1659 (c!54877 (seqFromList!880 lt!122466))) e!181774)))

(declare-fun b!292062 () Bool)

(assert (=> b!292062 (= e!181774 e!181775)))

(declare-fun c!55368 () Bool)

(assert (=> b!292062 (= c!55368 ((_ is Leaf!2054) (c!54877 (seqFromList!880 lt!122466))))))

(declare-fun b!292063 () Bool)

(assert (=> b!292063 (= e!181775 (list!1663 (xs!3935 (c!54877 (seqFromList!880 lt!122466)))))))

(assert (= (and d!87364 c!55367) b!292061))

(assert (= (and d!87364 (not c!55367)) b!292062))

(assert (= (and b!292062 c!55368) b!292063))

(assert (= (and b!292062 (not c!55368)) b!292064))

(declare-fun m!382091 () Bool)

(assert (=> b!292064 m!382091))

(declare-fun m!382093 () Bool)

(assert (=> b!292064 m!382093))

(assert (=> b!292064 m!382091))

(assert (=> b!292064 m!382093))

(declare-fun m!382095 () Bool)

(assert (=> b!292064 m!382095))

(declare-fun m!382097 () Bool)

(assert (=> b!292063 m!382097))

(assert (=> d!86438 d!87364))

(assert (=> b!290091 d!86904))

(declare-fun d!87366 () Bool)

(assert (=> d!87366 (dynLambda!2110 lambda!9966 (h!9352 (t!40597 tokens!465)))))

(declare-fun lt!123916 () Unit!5362)

(assert (=> d!87366 (= lt!123916 (choose!2606 (t!40597 tokens!465) lambda!9966 (h!9352 (t!40597 tokens!465))))))

(declare-fun e!181776 () Bool)

(assert (=> d!87366 e!181776))

(declare-fun res!133181 () Bool)

(assert (=> d!87366 (=> (not res!133181) (not e!181776))))

(assert (=> d!87366 (= res!133181 (forall!1024 (t!40597 tokens!465) lambda!9966))))

(assert (=> d!87366 (= (forallContained!310 (t!40597 tokens!465) lambda!9966 (h!9352 (t!40597 tokens!465))) lt!123916)))

(declare-fun b!292065 () Bool)

(assert (=> b!292065 (= e!181776 (contains!775 (t!40597 tokens!465) (h!9352 (t!40597 tokens!465))))))

(assert (= (and d!87366 res!133181) b!292065))

(declare-fun b_lambda!9819 () Bool)

(assert (=> (not b_lambda!9819) (not d!87366)))

(declare-fun m!382099 () Bool)

(assert (=> d!87366 m!382099))

(declare-fun m!382101 () Bool)

(assert (=> d!87366 m!382101))

(declare-fun m!382103 () Bool)

(assert (=> d!87366 m!382103))

(declare-fun m!382105 () Bool)

(assert (=> b!292065 m!382105))

(assert (=> b!290164 d!87366))

(declare-fun b!292068 () Bool)

(declare-fun res!133183 () Bool)

(declare-fun e!181777 () Bool)

(assert (=> b!292068 (=> (not res!133183) (not e!181777))))

(declare-fun lt!123917 () List!3963)

(assert (=> b!292068 (= res!133183 (= (size!3175 lt!123917) (+ (size!3175 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465))))) (size!3175 lt!122644))))))

(declare-fun b!292066 () Bool)

(declare-fun e!181778 () List!3963)

(assert (=> b!292066 (= e!181778 lt!122644)))

(declare-fun d!87368 () Bool)

(assert (=> d!87368 e!181777))

(declare-fun res!133182 () Bool)

(assert (=> d!87368 (=> (not res!133182) (not e!181777))))

(assert (=> d!87368 (= res!133182 (= (content!585 lt!123917) ((_ map or) (content!585 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465))))) (content!585 lt!122644))))))

(assert (=> d!87368 (= lt!123917 e!181778)))

(declare-fun c!55369 () Bool)

(assert (=> d!87368 (= c!55369 ((_ is Nil!3953) (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465))))))))

(assert (=> d!87368 (= (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644) lt!123917)))

(declare-fun b!292067 () Bool)

(assert (=> b!292067 (= e!181778 (Cons!3953 (h!9350 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465))))) (++!1058 (t!40595 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465))))) lt!122644)))))

(declare-fun b!292069 () Bool)

(assert (=> b!292069 (= e!181777 (or (not (= lt!122644 Nil!3953)) (= lt!123917 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))))))))

(assert (= (and d!87368 c!55369) b!292066))

(assert (= (and d!87368 (not c!55369)) b!292067))

(assert (= (and d!87368 res!133182) b!292068))

(assert (= (and b!292068 res!133183) b!292069))

(declare-fun m!382107 () Bool)

(assert (=> b!292068 m!382107))

(assert (=> b!292068 m!377655))

(declare-fun m!382109 () Bool)

(assert (=> b!292068 m!382109))

(assert (=> b!292068 m!379977))

(declare-fun m!382111 () Bool)

(assert (=> d!87368 m!382111))

(assert (=> d!87368 m!377655))

(declare-fun m!382113 () Bool)

(assert (=> d!87368 m!382113))

(assert (=> d!87368 m!379983))

(declare-fun m!382115 () Bool)

(assert (=> b!292067 m!382115))

(assert (=> b!290164 d!87368))

(declare-fun b!292070 () Bool)

(declare-fun res!133190 () Bool)

(declare-fun e!181781 () Bool)

(assert (=> b!292070 (=> (not res!133190) (not e!181781))))

(declare-fun lt!123920 () Option!877)

(assert (=> b!292070 (= res!133190 (= (++!1058 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123920)))) (_2!2471 (get!1336 lt!123920))) (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644)))))

(declare-fun bm!16578 () Bool)

(declare-fun call!16583 () Option!877)

(assert (=> bm!16578 (= call!16583 (maxPrefixOneRule!161 thiss!17480 (h!9351 rules!1920) (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644)))))

(declare-fun b!292071 () Bool)

(declare-fun res!133184 () Bool)

(assert (=> b!292071 (=> (not res!133184) (not e!181781))))

(assert (=> b!292071 (= res!133184 (matchR!299 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!123920)))) (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123920))))))))

(declare-fun b!292072 () Bool)

(assert (=> b!292072 (= e!181781 (contains!777 rules!1920 (rule!1360 (_1!2471 (get!1336 lt!123920)))))))

(declare-fun b!292073 () Bool)

(declare-fun res!133188 () Bool)

(assert (=> b!292073 (=> (not res!133188) (not e!181781))))

(assert (=> b!292073 (= res!133188 (< (size!3175 (_2!2471 (get!1336 lt!123920))) (size!3175 (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644))))))

(declare-fun b!292074 () Bool)

(declare-fun res!133187 () Bool)

(assert (=> b!292074 (=> (not res!133187) (not e!181781))))

(assert (=> b!292074 (= res!133187 (= (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123920)))) (originalCharacters!800 (_1!2471 (get!1336 lt!123920)))))))

(declare-fun b!292075 () Bool)

(declare-fun e!181780 () Option!877)

(assert (=> b!292075 (= e!181780 call!16583)))

(declare-fun b!292077 () Bool)

(declare-fun e!181779 () Bool)

(assert (=> b!292077 (= e!181779 e!181781)))

(declare-fun res!133186 () Bool)

(assert (=> b!292077 (=> (not res!133186) (not e!181781))))

(assert (=> b!292077 (= res!133186 (isDefined!716 lt!123920))))

(declare-fun b!292078 () Bool)

(declare-fun lt!123919 () Option!877)

(declare-fun lt!123922 () Option!877)

(assert (=> b!292078 (= e!181780 (ite (and ((_ is None!876) lt!123919) ((_ is None!876) lt!123922)) None!876 (ite ((_ is None!876) lt!123922) lt!123919 (ite ((_ is None!876) lt!123919) lt!123922 (ite (>= (size!3171 (_1!2471 (v!14827 lt!123919))) (size!3171 (_1!2471 (v!14827 lt!123922)))) lt!123919 lt!123922)))))))

(assert (=> b!292078 (= lt!123919 call!16583)))

(assert (=> b!292078 (= lt!123922 (maxPrefix!359 thiss!17480 (t!40596 rules!1920) (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644)))))

(declare-fun d!87370 () Bool)

(assert (=> d!87370 e!181779))

(declare-fun res!133185 () Bool)

(assert (=> d!87370 (=> res!133185 e!181779)))

(assert (=> d!87370 (= res!133185 (isEmpty!2640 lt!123920))))

(assert (=> d!87370 (= lt!123920 e!181780)))

(declare-fun c!55370 () Bool)

(assert (=> d!87370 (= c!55370 (and ((_ is Cons!3954) rules!1920) ((_ is Nil!3954) (t!40596 rules!1920))))))

(declare-fun lt!123921 () Unit!5362)

(declare-fun lt!123918 () Unit!5362)

(assert (=> d!87370 (= lt!123921 lt!123918)))

(assert (=> d!87370 (isPrefix!421 (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644) (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644))))

(assert (=> d!87370 (= lt!123918 (lemmaIsPrefixRefl!227 (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644) (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644)))))

(assert (=> d!87370 (rulesValidInductive!222 thiss!17480 rules!1920)))

(assert (=> d!87370 (= (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) lt!122644)) lt!123920)))

(declare-fun b!292076 () Bool)

(declare-fun res!133189 () Bool)

(assert (=> b!292076 (=> (not res!133189) (not e!181781))))

(assert (=> b!292076 (= res!133189 (= (value!25890 (_1!2471 (get!1336 lt!123920))) (apply!852 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!123920)))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!123920)))))))))

(assert (= (and d!87370 c!55370) b!292075))

(assert (= (and d!87370 (not c!55370)) b!292078))

(assert (= (or b!292075 b!292078) bm!16578))

(assert (= (and d!87370 (not res!133185)) b!292077))

(assert (= (and b!292077 res!133186) b!292074))

(assert (= (and b!292074 res!133187) b!292073))

(assert (= (and b!292073 res!133188) b!292070))

(assert (= (and b!292070 res!133190) b!292076))

(assert (= (and b!292076 res!133189) b!292071))

(assert (= (and b!292071 res!133184) b!292072))

(assert (=> bm!16578 m!377657))

(declare-fun m!382117 () Bool)

(assert (=> bm!16578 m!382117))

(declare-fun m!382119 () Bool)

(assert (=> d!87370 m!382119))

(assert (=> d!87370 m!377657))

(assert (=> d!87370 m!377657))

(declare-fun m!382121 () Bool)

(assert (=> d!87370 m!382121))

(assert (=> d!87370 m!377657))

(assert (=> d!87370 m!377657))

(declare-fun m!382123 () Bool)

(assert (=> d!87370 m!382123))

(assert (=> d!87370 m!377481))

(declare-fun m!382125 () Bool)

(assert (=> b!292071 m!382125))

(declare-fun m!382127 () Bool)

(assert (=> b!292071 m!382127))

(assert (=> b!292071 m!382127))

(declare-fun m!382129 () Bool)

(assert (=> b!292071 m!382129))

(assert (=> b!292071 m!382129))

(declare-fun m!382131 () Bool)

(assert (=> b!292071 m!382131))

(assert (=> b!292072 m!382125))

(declare-fun m!382133 () Bool)

(assert (=> b!292072 m!382133))

(assert (=> b!292070 m!382125))

(assert (=> b!292070 m!382127))

(assert (=> b!292070 m!382127))

(assert (=> b!292070 m!382129))

(assert (=> b!292070 m!382129))

(declare-fun m!382135 () Bool)

(assert (=> b!292070 m!382135))

(assert (=> b!292076 m!382125))

(declare-fun m!382137 () Bool)

(assert (=> b!292076 m!382137))

(assert (=> b!292076 m!382137))

(declare-fun m!382139 () Bool)

(assert (=> b!292076 m!382139))

(declare-fun m!382141 () Bool)

(assert (=> b!292077 m!382141))

(assert (=> b!292074 m!382125))

(assert (=> b!292074 m!382127))

(assert (=> b!292074 m!382127))

(assert (=> b!292074 m!382129))

(assert (=> b!292073 m!382125))

(declare-fun m!382143 () Bool)

(assert (=> b!292073 m!382143))

(assert (=> b!292073 m!377657))

(declare-fun m!382145 () Bool)

(assert (=> b!292073 m!382145))

(assert (=> b!292078 m!377657))

(declare-fun m!382147 () Bool)

(assert (=> b!292078 m!382147))

(assert (=> b!290164 d!87370))

(declare-fun bs!33365 () Bool)

(declare-fun b!292079 () Bool)

(assert (= bs!33365 (and b!292079 b!290883)))

(declare-fun lambda!10043 () Int)

(assert (=> bs!33365 (= lambda!10043 lambda!9995)))

(declare-fun bs!33366 () Bool)

(assert (= bs!33366 (and b!292079 b!290433)))

(assert (=> bs!33366 (= lambda!10043 lambda!9985)))

(declare-fun bs!33367 () Bool)

(assert (= bs!33367 (and b!292079 b!289856)))

(assert (=> bs!33367 (not (= lambda!10043 lambda!9951))))

(declare-fun bs!33368 () Bool)

(assert (= bs!33368 (and b!292079 b!290164)))

(assert (=> bs!33368 (= lambda!10043 lambda!9966)))

(declare-fun bs!33369 () Bool)

(assert (= bs!33369 (and b!292079 b!290442)))

(assert (=> bs!33369 (= lambda!10043 lambda!9986)))

(declare-fun bs!33370 () Bool)

(assert (= bs!33370 (and b!292079 b!291104)))

(assert (=> bs!33370 (= lambda!10043 lambda!10005)))

(declare-fun bs!33371 () Bool)

(assert (= bs!33371 (and b!292079 d!86240)))

(assert (=> bs!33371 (= lambda!10043 lambda!9957)))

(declare-fun bs!33372 () Bool)

(assert (= bs!33372 (and b!292079 d!86814)))

(assert (=> bs!33372 (not (= lambda!10043 lambda!10004))))

(declare-fun bs!33373 () Bool)

(assert (= bs!33373 (and b!292079 b!291344)))

(assert (=> bs!33373 (= lambda!10043 lambda!10019)))

(declare-fun bs!33374 () Bool)

(assert (= bs!33374 (and b!292079 b!290961)))

(assert (=> bs!33374 (= lambda!10043 lambda!9999)))

(declare-fun bs!33375 () Bool)

(assert (= bs!33375 (and b!292079 d!86334)))

(assert (=> bs!33375 (not (= lambda!10043 lambda!9977))))

(declare-fun bs!33376 () Bool)

(assert (= bs!33376 (and b!292079 b!290313)))

(assert (=> bs!33376 (= lambda!10043 lambda!9978)))

(declare-fun bs!33377 () Bool)

(assert (= bs!33377 (and b!292079 d!87106)))

(assert (=> bs!33377 (= lambda!10043 lambda!10029)))

(declare-fun bs!33378 () Bool)

(assert (= bs!33378 (and b!292079 b!289852)))

(assert (=> bs!33378 (= lambda!10043 lambda!9952)))

(declare-fun bs!33379 () Bool)

(assert (= bs!33379 (and b!292079 d!86416)))

(assert (=> bs!33379 (not (= lambda!10043 lambda!9984))))

(declare-fun bs!33380 () Bool)

(assert (= bs!33380 (and b!292079 d!86972)))

(assert (=> bs!33380 (not (= lambda!10043 lambda!10018))))

(declare-fun b!292091 () Bool)

(declare-fun e!181789 () Bool)

(assert (=> b!292091 (= e!181789 true)))

(declare-fun b!292090 () Bool)

(declare-fun e!181788 () Bool)

(assert (=> b!292090 (= e!181788 e!181789)))

(declare-fun b!292089 () Bool)

(declare-fun e!181787 () Bool)

(assert (=> b!292089 (= e!181787 e!181788)))

(assert (=> b!292079 e!181787))

(assert (= b!292090 b!292091))

(assert (= b!292089 b!292090))

(assert (= (and b!292079 ((_ is Cons!3954) rules!1920)) b!292089))

(assert (=> b!292091 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!10043))))

(assert (=> b!292091 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2106 order!3135 lambda!10043))))

(assert (=> b!292079 true))

(declare-fun e!181786 () List!3963)

(declare-fun e!181784 () List!3963)

(assert (=> b!292079 (= e!181786 e!181784)))

(declare-fun lt!123928 () Unit!5362)

(assert (=> b!292079 (= lt!123928 (forallContained!310 (t!40597 (t!40597 tokens!465)) lambda!10043 (h!9352 (t!40597 (t!40597 tokens!465)))))))

(declare-fun lt!123925 () List!3963)

(assert (=> b!292079 (= lt!123925 (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (t!40597 (t!40597 (t!40597 tokens!465))) separatorToken!170))))

(declare-fun lt!123926 () Option!877)

(assert (=> b!292079 (= lt!123926 (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 (charsOf!400 (h!9352 (t!40597 (t!40597 tokens!465))))) lt!123925)))))

(declare-fun c!55373 () Bool)

(assert (=> b!292079 (= c!55373 (and ((_ is Some!876) lt!123926) (= (_1!2471 (v!14827 lt!123926)) (h!9352 (t!40597 (t!40597 tokens!465))))))))

(declare-fun d!87372 () Bool)

(declare-fun c!55374 () Bool)

(assert (=> d!87372 (= c!55374 ((_ is Cons!3955) (t!40597 (t!40597 tokens!465))))))

(assert (=> d!87372 (= (printWithSeparatorTokenWhenNeededList!324 thiss!17480 rules!1920 (t!40597 (t!40597 tokens!465)) separatorToken!170) e!181786)))

(declare-fun b!292080 () Bool)

(declare-fun e!181785 () List!3963)

(declare-fun call!16587 () List!3963)

(assert (=> b!292080 (= e!181785 (++!1058 call!16587 lt!123925))))

(declare-fun bm!16579 () Bool)

(declare-fun call!16585 () List!3963)

(declare-fun call!16586 () List!3963)

(assert (=> bm!16579 (= call!16585 call!16586)))

(declare-fun c!55375 () Bool)

(declare-fun c!55371 () Bool)

(assert (=> bm!16579 (= c!55375 c!55371)))

(declare-fun b!292081 () Bool)

(assert (=> b!292081 (= e!181784 call!16587)))

(declare-fun bm!16580 () Bool)

(declare-fun call!16588 () BalanceConc!2680)

(assert (=> bm!16580 (= call!16588 (charsOf!400 (h!9352 (t!40597 (t!40597 tokens!465)))))))

(declare-fun b!292082 () Bool)

(declare-fun e!181783 () BalanceConc!2680)

(declare-fun call!16584 () BalanceConc!2680)

(assert (=> b!292082 (= e!181783 call!16584)))

(declare-fun bm!16581 () Bool)

(declare-fun c!55372 () Bool)

(assert (=> bm!16581 (= c!55372 c!55373)))

(declare-fun e!181782 () List!3963)

(assert (=> bm!16581 (= call!16587 (++!1058 e!181782 (ite c!55373 lt!123925 call!16585)))))

(declare-fun b!292083 () Bool)

(assert (=> b!292083 (= e!181785 Nil!3953)))

(assert (=> b!292083 (= (print!368 thiss!17480 (singletonSeq!303 (h!9352 (t!40597 (t!40597 tokens!465))))) (printTailRec!329 thiss!17480 (singletonSeq!303 (h!9352 (t!40597 (t!40597 tokens!465)))) 0 (BalanceConc!2681 Empty!1336)))))

(declare-fun lt!123924 () Unit!5362)

(declare-fun Unit!5416 () Unit!5362)

(assert (=> b!292083 (= lt!123924 Unit!5416)))

(declare-fun lt!123927 () Unit!5362)

(assert (=> b!292083 (= lt!123927 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!132 thiss!17480 rules!1920 call!16585 lt!123925))))

(assert (=> b!292083 false))

(declare-fun lt!123923 () Unit!5362)

(declare-fun Unit!5417 () Unit!5362)

(assert (=> b!292083 (= lt!123923 Unit!5417)))

(declare-fun b!292084 () Bool)

(assert (=> b!292084 (= e!181786 Nil!3953)))

(declare-fun b!292085 () Bool)

(assert (=> b!292085 (= e!181782 (list!1655 call!16584))))

(declare-fun b!292086 () Bool)

(assert (=> b!292086 (= e!181783 (charsOf!400 separatorToken!170))))

(declare-fun bm!16582 () Bool)

(assert (=> bm!16582 (= call!16584 call!16588)))

(declare-fun b!292087 () Bool)

(assert (=> b!292087 (= c!55371 (and ((_ is Some!876) lt!123926) (not (= (_1!2471 (v!14827 lt!123926)) (h!9352 (t!40597 (t!40597 tokens!465)))))))))

(assert (=> b!292087 (= e!181784 e!181785)))

(declare-fun bm!16583 () Bool)

(assert (=> bm!16583 (= call!16586 (list!1655 (ite c!55373 call!16588 e!181783)))))

(declare-fun b!292088 () Bool)

(assert (=> b!292088 (= e!181782 call!16586)))

(assert (= (and d!87372 c!55374) b!292079))

(assert (= (and d!87372 (not c!55374)) b!292084))

(assert (= (and b!292079 c!55373) b!292081))

(assert (= (and b!292079 (not c!55373)) b!292087))

(assert (= (and b!292087 c!55371) b!292080))

(assert (= (and b!292087 (not c!55371)) b!292083))

(assert (= (or b!292080 b!292083) bm!16582))

(assert (= (or b!292080 b!292083) bm!16579))

(assert (= (and bm!16579 c!55375) b!292086))

(assert (= (and bm!16579 (not c!55375)) b!292082))

(assert (= (or b!292081 bm!16582) bm!16580))

(assert (= (or b!292081 bm!16579) bm!16583))

(assert (= (or b!292081 b!292080) bm!16581))

(assert (= (and bm!16581 c!55372) b!292088))

(assert (= (and bm!16581 (not c!55372)) b!292085))

(declare-fun m!382149 () Bool)

(assert (=> b!292083 m!382149))

(assert (=> b!292083 m!382149))

(declare-fun m!382151 () Bool)

(assert (=> b!292083 m!382151))

(assert (=> b!292083 m!382149))

(declare-fun m!382153 () Bool)

(assert (=> b!292083 m!382153))

(declare-fun m!382155 () Bool)

(assert (=> b!292083 m!382155))

(declare-fun m!382157 () Bool)

(assert (=> bm!16580 m!382157))

(assert (=> b!292079 m!382157))

(declare-fun m!382159 () Bool)

(assert (=> b!292079 m!382159))

(declare-fun m!382161 () Bool)

(assert (=> b!292079 m!382161))

(declare-fun m!382163 () Bool)

(assert (=> b!292079 m!382163))

(declare-fun m!382165 () Bool)

(assert (=> b!292079 m!382165))

(assert (=> b!292079 m!382165))

(declare-fun m!382167 () Bool)

(assert (=> b!292079 m!382167))

(assert (=> b!292079 m!382157))

(assert (=> b!292079 m!382163))

(declare-fun m!382169 () Bool)

(assert (=> bm!16581 m!382169))

(declare-fun m!382171 () Bool)

(assert (=> b!292085 m!382171))

(assert (=> b!292086 m!377157))

(declare-fun m!382173 () Bool)

(assert (=> bm!16583 m!382173))

(declare-fun m!382175 () Bool)

(assert (=> b!292080 m!382175))

(assert (=> b!290164 d!87372))

(declare-fun d!87374 () Bool)

(assert (=> d!87374 (= (list!1655 (charsOf!400 (h!9352 (t!40597 tokens!465)))) (list!1659 (c!54877 (charsOf!400 (h!9352 (t!40597 tokens!465))))))))

(declare-fun bs!33381 () Bool)

(assert (= bs!33381 d!87374))

(declare-fun m!382177 () Bool)

(assert (=> bs!33381 m!382177))

(assert (=> b!290164 d!87374))

(declare-fun d!87376 () Bool)

(declare-fun lt!123929 () BalanceConc!2680)

(assert (=> d!87376 (= (list!1655 lt!123929) (originalCharacters!800 (h!9352 (t!40597 tokens!465))))))

(assert (=> d!87376 (= lt!123929 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (value!25890 (h!9352 (t!40597 tokens!465)))))))

(assert (=> d!87376 (= (charsOf!400 (h!9352 (t!40597 tokens!465))) lt!123929)))

(declare-fun b_lambda!9821 () Bool)

(assert (=> (not b_lambda!9821) (not d!87376)))

(assert (=> d!87376 t!40916))

(declare-fun b_and!23833 () Bool)

(assert (= b_and!23823 (and (=> t!40916 result!21138) b_and!23833)))

(assert (=> d!87376 t!40912))

(declare-fun b_and!23835 () Bool)

(assert (= b_and!23825 (and (=> t!40912 result!21134) b_and!23835)))

(assert (=> d!87376 t!40908))

(declare-fun b_and!23837 () Bool)

(assert (= b_and!23827 (and (=> t!40908 result!21130) b_and!23837)))

(assert (=> d!87376 t!40910))

(declare-fun b_and!23839 () Bool)

(assert (= b_and!23831 (and (=> t!40910 result!21132) b_and!23839)))

(assert (=> d!87376 t!40914))

(declare-fun b_and!23841 () Bool)

(assert (= b_and!23829 (and (=> t!40914 result!21136) b_and!23841)))

(declare-fun m!382179 () Bool)

(assert (=> d!87376 m!382179))

(assert (=> d!87376 m!381951))

(assert (=> b!290164 d!87376))

(declare-fun d!87378 () Bool)

(declare-fun lt!123930 () Int)

(assert (=> d!87378 (>= lt!123930 0)))

(declare-fun e!181790 () Int)

(assert (=> d!87378 (= lt!123930 e!181790)))

(declare-fun c!55376 () Bool)

(assert (=> d!87378 (= c!55376 ((_ is Nil!3953) lt!122648))))

(assert (=> d!87378 (= (size!3175 lt!122648) lt!123930)))

(declare-fun b!292092 () Bool)

(assert (=> b!292092 (= e!181790 0)))

(declare-fun b!292093 () Bool)

(assert (=> b!292093 (= e!181790 (+ 1 (size!3175 (t!40595 lt!122648))))))

(assert (= (and d!87378 c!55376) b!292092))

(assert (= (and d!87378 (not c!55376)) b!292093))

(declare-fun m!382181 () Bool)

(assert (=> b!292093 m!382181))

(assert (=> b!290179 d!87378))

(assert (=> b!290179 d!86588))

(assert (=> b!290179 d!86934))

(declare-fun b!292096 () Bool)

(declare-fun res!133192 () Bool)

(declare-fun e!181791 () Bool)

(assert (=> b!292096 (=> (not res!133192) (not e!181791))))

(declare-fun lt!123931 () List!3963)

(assert (=> b!292096 (= res!133192 (= (size!3175 lt!123931) (+ (size!3175 (list!1655 (charsOf!400 (h!9352 tokens!465)))) (size!3175 lt!122806))))))

(declare-fun b!292094 () Bool)

(declare-fun e!181792 () List!3963)

(assert (=> b!292094 (= e!181792 lt!122806)))

(declare-fun d!87380 () Bool)

(assert (=> d!87380 e!181791))

(declare-fun res!133191 () Bool)

(assert (=> d!87380 (=> (not res!133191) (not e!181791))))

(assert (=> d!87380 (= res!133191 (= (content!585 lt!123931) ((_ map or) (content!585 (list!1655 (charsOf!400 (h!9352 tokens!465)))) (content!585 lt!122806))))))

(assert (=> d!87380 (= lt!123931 e!181792)))

(declare-fun c!55377 () Bool)

(assert (=> d!87380 (= c!55377 ((_ is Nil!3953) (list!1655 (charsOf!400 (h!9352 tokens!465)))))))

(assert (=> d!87380 (= (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806) lt!123931)))

(declare-fun b!292095 () Bool)

(assert (=> b!292095 (= e!181792 (Cons!3953 (h!9350 (list!1655 (charsOf!400 (h!9352 tokens!465)))) (++!1058 (t!40595 (list!1655 (charsOf!400 (h!9352 tokens!465)))) lt!122806)))))

(declare-fun b!292097 () Bool)

(assert (=> b!292097 (= e!181791 (or (not (= lt!122806 Nil!3953)) (= lt!123931 (list!1655 (charsOf!400 (h!9352 tokens!465))))))))

(assert (= (and d!87380 c!55377) b!292094))

(assert (= (and d!87380 (not c!55377)) b!292095))

(assert (= (and d!87380 res!133191) b!292096))

(assert (= (and b!292096 res!133192) b!292097))

(declare-fun m!382183 () Bool)

(assert (=> b!292096 m!382183))

(assert (=> b!292096 m!377173))

(declare-fun m!382185 () Bool)

(assert (=> b!292096 m!382185))

(assert (=> b!292096 m!378699))

(declare-fun m!382187 () Bool)

(assert (=> d!87380 m!382187))

(assert (=> d!87380 m!377173))

(declare-fun m!382189 () Bool)

(assert (=> d!87380 m!382189))

(assert (=> d!87380 m!378705))

(declare-fun m!382191 () Bool)

(assert (=> b!292095 m!382191))

(assert (=> b!290442 d!87380))

(declare-fun d!87382 () Bool)

(assert (=> d!87382 (dynLambda!2110 lambda!9986 (h!9352 tokens!465))))

(declare-fun lt!123932 () Unit!5362)

(assert (=> d!87382 (= lt!123932 (choose!2606 tokens!465 lambda!9986 (h!9352 tokens!465)))))

(declare-fun e!181793 () Bool)

(assert (=> d!87382 e!181793))

(declare-fun res!133193 () Bool)

(assert (=> d!87382 (=> (not res!133193) (not e!181793))))

(assert (=> d!87382 (= res!133193 (forall!1024 tokens!465 lambda!9986))))

(assert (=> d!87382 (= (forallContained!310 tokens!465 lambda!9986 (h!9352 tokens!465)) lt!123932)))

(declare-fun b!292098 () Bool)

(assert (=> b!292098 (= e!181793 (contains!775 tokens!465 (h!9352 tokens!465)))))

(assert (= (and d!87382 res!133193) b!292098))

(declare-fun b_lambda!9823 () Bool)

(assert (=> (not b_lambda!9823) (not d!87382)))

(declare-fun m!382193 () Bool)

(assert (=> d!87382 m!382193))

(declare-fun m!382195 () Bool)

(assert (=> d!87382 m!382195))

(declare-fun m!382197 () Bool)

(assert (=> d!87382 m!382197))

(assert (=> b!292098 m!377491))

(assert (=> b!290442 d!87382))

(assert (=> b!290442 d!86328))

(declare-fun b!292099 () Bool)

(declare-fun res!133200 () Bool)

(declare-fun e!181796 () Bool)

(assert (=> b!292099 (=> (not res!133200) (not e!181796))))

(declare-fun lt!123935 () Option!877)

(assert (=> b!292099 (= res!133200 (= (++!1058 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123935)))) (_2!2471 (get!1336 lt!123935))) (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806)))))

(declare-fun call!16589 () Option!877)

(declare-fun bm!16584 () Bool)

(assert (=> bm!16584 (= call!16589 (maxPrefixOneRule!161 thiss!17480 (h!9351 rules!1920) (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806)))))

(declare-fun b!292100 () Bool)

(declare-fun res!133194 () Bool)

(assert (=> b!292100 (=> (not res!133194) (not e!181796))))

(assert (=> b!292100 (= res!133194 (matchR!299 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!123935)))) (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123935))))))))

(declare-fun b!292101 () Bool)

(assert (=> b!292101 (= e!181796 (contains!777 rules!1920 (rule!1360 (_1!2471 (get!1336 lt!123935)))))))

(declare-fun b!292102 () Bool)

(declare-fun res!133198 () Bool)

(assert (=> b!292102 (=> (not res!133198) (not e!181796))))

(assert (=> b!292102 (= res!133198 (< (size!3175 (_2!2471 (get!1336 lt!123935))) (size!3175 (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806))))))

(declare-fun b!292103 () Bool)

(declare-fun res!133197 () Bool)

(assert (=> b!292103 (=> (not res!133197) (not e!181796))))

(assert (=> b!292103 (= res!133197 (= (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123935)))) (originalCharacters!800 (_1!2471 (get!1336 lt!123935)))))))

(declare-fun b!292104 () Bool)

(declare-fun e!181795 () Option!877)

(assert (=> b!292104 (= e!181795 call!16589)))

(declare-fun b!292106 () Bool)

(declare-fun e!181794 () Bool)

(assert (=> b!292106 (= e!181794 e!181796)))

(declare-fun res!133196 () Bool)

(assert (=> b!292106 (=> (not res!133196) (not e!181796))))

(assert (=> b!292106 (= res!133196 (isDefined!716 lt!123935))))

(declare-fun b!292107 () Bool)

(declare-fun lt!123934 () Option!877)

(declare-fun lt!123937 () Option!877)

(assert (=> b!292107 (= e!181795 (ite (and ((_ is None!876) lt!123934) ((_ is None!876) lt!123937)) None!876 (ite ((_ is None!876) lt!123937) lt!123934 (ite ((_ is None!876) lt!123934) lt!123937 (ite (>= (size!3171 (_1!2471 (v!14827 lt!123934))) (size!3171 (_1!2471 (v!14827 lt!123937)))) lt!123934 lt!123937)))))))

(assert (=> b!292107 (= lt!123934 call!16589)))

(assert (=> b!292107 (= lt!123937 (maxPrefix!359 thiss!17480 (t!40596 rules!1920) (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806)))))

(declare-fun d!87384 () Bool)

(assert (=> d!87384 e!181794))

(declare-fun res!133195 () Bool)

(assert (=> d!87384 (=> res!133195 e!181794)))

(assert (=> d!87384 (= res!133195 (isEmpty!2640 lt!123935))))

(assert (=> d!87384 (= lt!123935 e!181795)))

(declare-fun c!55378 () Bool)

(assert (=> d!87384 (= c!55378 (and ((_ is Cons!3954) rules!1920) ((_ is Nil!3954) (t!40596 rules!1920))))))

(declare-fun lt!123936 () Unit!5362)

(declare-fun lt!123933 () Unit!5362)

(assert (=> d!87384 (= lt!123936 lt!123933)))

(assert (=> d!87384 (isPrefix!421 (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806) (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806))))

(assert (=> d!87384 (= lt!123933 (lemmaIsPrefixRefl!227 (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806) (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806)))))

(assert (=> d!87384 (rulesValidInductive!222 thiss!17480 rules!1920)))

(assert (=> d!87384 (= (maxPrefix!359 thiss!17480 rules!1920 (++!1058 (list!1655 (charsOf!400 (h!9352 tokens!465))) lt!122806)) lt!123935)))

(declare-fun b!292105 () Bool)

(declare-fun res!133199 () Bool)

(assert (=> b!292105 (=> (not res!133199) (not e!181796))))

(assert (=> b!292105 (= res!133199 (= (value!25890 (_1!2471 (get!1336 lt!123935))) (apply!852 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!123935)))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!123935)))))))))

(assert (= (and d!87384 c!55378) b!292104))

(assert (= (and d!87384 (not c!55378)) b!292107))

(assert (= (or b!292104 b!292107) bm!16584))

(assert (= (and d!87384 (not res!133195)) b!292106))

(assert (= (and b!292106 res!133196) b!292103))

(assert (= (and b!292103 res!133197) b!292102))

(assert (= (and b!292102 res!133198) b!292099))

(assert (= (and b!292099 res!133200) b!292105))

(assert (= (and b!292105 res!133199) b!292100))

(assert (= (and b!292100 res!133194) b!292101))

(assert (=> bm!16584 m!378143))

(declare-fun m!382199 () Bool)

(assert (=> bm!16584 m!382199))

(declare-fun m!382201 () Bool)

(assert (=> d!87384 m!382201))

(assert (=> d!87384 m!378143))

(assert (=> d!87384 m!378143))

(declare-fun m!382203 () Bool)

(assert (=> d!87384 m!382203))

(assert (=> d!87384 m!378143))

(assert (=> d!87384 m!378143))

(declare-fun m!382205 () Bool)

(assert (=> d!87384 m!382205))

(assert (=> d!87384 m!377481))

(declare-fun m!382207 () Bool)

(assert (=> b!292100 m!382207))

(declare-fun m!382209 () Bool)

(assert (=> b!292100 m!382209))

(assert (=> b!292100 m!382209))

(declare-fun m!382211 () Bool)

(assert (=> b!292100 m!382211))

(assert (=> b!292100 m!382211))

(declare-fun m!382213 () Bool)

(assert (=> b!292100 m!382213))

(assert (=> b!292101 m!382207))

(declare-fun m!382215 () Bool)

(assert (=> b!292101 m!382215))

(assert (=> b!292099 m!382207))

(assert (=> b!292099 m!382209))

(assert (=> b!292099 m!382209))

(assert (=> b!292099 m!382211))

(assert (=> b!292099 m!382211))

(declare-fun m!382217 () Bool)

(assert (=> b!292099 m!382217))

(assert (=> b!292105 m!382207))

(declare-fun m!382219 () Bool)

(assert (=> b!292105 m!382219))

(assert (=> b!292105 m!382219))

(declare-fun m!382221 () Bool)

(assert (=> b!292105 m!382221))

(declare-fun m!382223 () Bool)

(assert (=> b!292106 m!382223))

(assert (=> b!292103 m!382207))

(assert (=> b!292103 m!382209))

(assert (=> b!292103 m!382209))

(assert (=> b!292103 m!382211))

(assert (=> b!292102 m!382207))

(declare-fun m!382225 () Bool)

(assert (=> b!292102 m!382225))

(assert (=> b!292102 m!378143))

(declare-fun m!382227 () Bool)

(assert (=> b!292102 m!382227))

(assert (=> b!292107 m!378143))

(declare-fun m!382229 () Bool)

(assert (=> b!292107 m!382229))

(assert (=> b!290442 d!87384))

(assert (=> b!290442 d!86388))

(assert (=> b!290442 d!86390))

(declare-fun b!292111 () Bool)

(declare-fun e!181798 () List!3963)

(assert (=> b!292111 (= e!181798 (++!1058 (list!1659 (left!3269 (c!54877 (charsOf!400 (h!9352 tokens!465))))) (list!1659 (right!3599 (c!54877 (charsOf!400 (h!9352 tokens!465)))))))))

(declare-fun b!292108 () Bool)

(declare-fun e!181797 () List!3963)

(assert (=> b!292108 (= e!181797 Nil!3953)))

(declare-fun d!87386 () Bool)

(declare-fun c!55379 () Bool)

(assert (=> d!87386 (= c!55379 ((_ is Empty!1336) (c!54877 (charsOf!400 (h!9352 tokens!465)))))))

(assert (=> d!87386 (= (list!1659 (c!54877 (charsOf!400 (h!9352 tokens!465)))) e!181797)))

(declare-fun b!292109 () Bool)

(assert (=> b!292109 (= e!181797 e!181798)))

(declare-fun c!55380 () Bool)

(assert (=> b!292109 (= c!55380 ((_ is Leaf!2054) (c!54877 (charsOf!400 (h!9352 tokens!465)))))))

(declare-fun b!292110 () Bool)

(assert (=> b!292110 (= e!181798 (list!1663 (xs!3935 (c!54877 (charsOf!400 (h!9352 tokens!465))))))))

(assert (= (and d!87386 c!55379) b!292108))

(assert (= (and d!87386 (not c!55379)) b!292109))

(assert (= (and b!292109 c!55380) b!292110))

(assert (= (and b!292109 (not c!55380)) b!292111))

(declare-fun m!382231 () Bool)

(assert (=> b!292111 m!382231))

(declare-fun m!382233 () Bool)

(assert (=> b!292111 m!382233))

(assert (=> b!292111 m!382231))

(assert (=> b!292111 m!382233))

(declare-fun m!382235 () Bool)

(assert (=> b!292111 m!382235))

(declare-fun m!382237 () Bool)

(assert (=> b!292110 m!382237))

(assert (=> d!86388 d!87386))

(assert (=> d!86288 d!87056))

(assert (=> d!86288 d!87020))

(declare-fun d!87388 () Bool)

(assert (=> d!87388 (= (isDefined!716 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465)))))) (not (isEmpty!2640 (maxPrefixZipper!130 thiss!17480 rules!1920 (list!1655 (seqFromList!880 (originalCharacters!800 (h!9352 tokens!465))))))))))

(declare-fun bs!33382 () Bool)

(assert (= bs!33382 d!87388))

(assert (=> bs!33382 m!377459))

(declare-fun m!382239 () Bool)

(assert (=> bs!33382 m!382239))

(assert (=> d!86288 d!87388))

(assert (=> d!86288 d!86864))

(declare-fun d!87390 () Bool)

(assert (=> d!87390 (isPrefix!421 lt!122550 lt!122548)))

(declare-fun lt!123938 () Unit!5362)

(assert (=> d!87390 (= lt!123938 (choose!2617 lt!122550 lt!122548))))

(assert (=> d!87390 (= (lemmaIsPrefixRefl!227 lt!122550 lt!122548) lt!123938)))

(declare-fun bs!33383 () Bool)

(assert (= bs!33383 d!87390))

(assert (=> bs!33383 m!377475))

(declare-fun m!382241 () Bool)

(assert (=> bs!33383 m!382241))

(assert (=> d!86288 d!87390))

(declare-fun b!292112 () Bool)

(declare-fun e!181801 () Bool)

(declare-fun e!181800 () Bool)

(assert (=> b!292112 (= e!181801 e!181800)))

(declare-fun res!133201 () Bool)

(assert (=> b!292112 (=> (not res!133201) (not e!181800))))

(assert (=> b!292112 (= res!133201 (not ((_ is Nil!3953) lt!122548)))))

(declare-fun b!292115 () Bool)

(declare-fun e!181799 () Bool)

(assert (=> b!292115 (= e!181799 (>= (size!3175 lt!122548) (size!3175 lt!122550)))))

(declare-fun d!87392 () Bool)

(assert (=> d!87392 e!181799))

(declare-fun res!133203 () Bool)

(assert (=> d!87392 (=> res!133203 e!181799)))

(declare-fun lt!123939 () Bool)

(assert (=> d!87392 (= res!133203 (not lt!123939))))

(assert (=> d!87392 (= lt!123939 e!181801)))

(declare-fun res!133204 () Bool)

(assert (=> d!87392 (=> res!133204 e!181801)))

(assert (=> d!87392 (= res!133204 ((_ is Nil!3953) lt!122550))))

(assert (=> d!87392 (= (isPrefix!421 lt!122550 lt!122548) lt!123939)))

(declare-fun b!292114 () Bool)

(assert (=> b!292114 (= e!181800 (isPrefix!421 (tail!518 lt!122550) (tail!518 lt!122548)))))

(declare-fun b!292113 () Bool)

(declare-fun res!133202 () Bool)

(assert (=> b!292113 (=> (not res!133202) (not e!181800))))

(assert (=> b!292113 (= res!133202 (= (head!936 lt!122550) (head!936 lt!122548)))))

(assert (= (and d!87392 (not res!133204)) b!292112))

(assert (= (and b!292112 res!133201) b!292113))

(assert (= (and b!292113 res!133202) b!292114))

(assert (= (and d!87392 (not res!133203)) b!292115))

(declare-fun m!382243 () Bool)

(assert (=> b!292115 m!382243))

(declare-fun m!382245 () Bool)

(assert (=> b!292115 m!382245))

(declare-fun m!382247 () Bool)

(assert (=> b!292114 m!382247))

(declare-fun m!382249 () Bool)

(assert (=> b!292114 m!382249))

(assert (=> b!292114 m!382247))

(assert (=> b!292114 m!382249))

(declare-fun m!382251 () Bool)

(assert (=> b!292114 m!382251))

(declare-fun m!382253 () Bool)

(assert (=> b!292113 m!382253))

(declare-fun m!382255 () Bool)

(assert (=> b!292113 m!382255))

(assert (=> d!86288 d!87392))

(assert (=> d!86288 d!86732))

(assert (=> b!290315 d!86686))

(declare-fun d!87394 () Bool)

(assert (=> d!87394 (= (list!1655 (ite c!54944 call!16432 e!180619)) (list!1659 (c!54877 (ite c!54944 call!16432 e!180619))))))

(declare-fun bs!33384 () Bool)

(assert (= bs!33384 d!87394))

(declare-fun m!382257 () Bool)

(assert (=> bs!33384 m!382257))

(assert (=> bm!16427 d!87394))

(declare-fun b!292144 () Bool)

(declare-fun e!181821 () Bool)

(declare-fun e!181816 () Bool)

(assert (=> b!292144 (= e!181821 e!181816)))

(declare-fun res!133226 () Bool)

(assert (=> b!292144 (=> res!133226 e!181816)))

(declare-fun call!16592 () Bool)

(assert (=> b!292144 (= res!133226 call!16592)))

(declare-fun b!292145 () Bool)

(declare-fun e!181818 () Bool)

(declare-fun nullable!184 (Regex!981) Bool)

(assert (=> b!292145 (= e!181818 (nullable!184 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))))))

(declare-fun b!292146 () Bool)

(declare-fun e!181819 () Bool)

(assert (=> b!292146 (= e!181819 e!181821)))

(declare-fun res!133225 () Bool)

(assert (=> b!292146 (=> (not res!133225) (not e!181821))))

(declare-fun lt!123942 () Bool)

(assert (=> b!292146 (= res!133225 (not lt!123942))))

(declare-fun b!292147 () Bool)

(declare-fun e!181822 () Bool)

(assert (=> b!292147 (= e!181822 (= lt!123942 call!16592))))

(declare-fun d!87396 () Bool)

(assert (=> d!87396 e!181822))

(declare-fun c!55389 () Bool)

(assert (=> d!87396 (= c!55389 ((_ is EmptyExpr!981) (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))))))

(assert (=> d!87396 (= lt!123942 e!181818)))

(declare-fun c!55388 () Bool)

(assert (=> d!87396 (= c!55388 (isEmpty!2639 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))))))

(declare-fun validRegex!259 (Regex!981) Bool)

(assert (=> d!87396 (validRegex!259 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))))

(assert (=> d!87396 (= (matchR!299 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))) (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))) lt!123942)))

(declare-fun bm!16587 () Bool)

(assert (=> bm!16587 (= call!16592 (isEmpty!2639 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))))))

(declare-fun b!292148 () Bool)

(declare-fun e!181820 () Bool)

(assert (=> b!292148 (= e!181822 e!181820)))

(declare-fun c!55387 () Bool)

(assert (=> b!292148 (= c!55387 ((_ is EmptyLang!981) (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))))))

(declare-fun b!292149 () Bool)

(declare-fun res!133223 () Bool)

(assert (=> b!292149 (=> res!133223 e!181819)))

(assert (=> b!292149 (= res!133223 (not ((_ is ElementMatch!981) (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))))))

(assert (=> b!292149 (= e!181820 e!181819)))

(declare-fun b!292150 () Bool)

(declare-fun res!133222 () Bool)

(assert (=> b!292150 (=> res!133222 e!181819)))

(declare-fun e!181817 () Bool)

(assert (=> b!292150 (= res!133222 e!181817)))

(declare-fun res!133221 () Bool)

(assert (=> b!292150 (=> (not res!133221) (not e!181817))))

(assert (=> b!292150 (= res!133221 lt!123942)))

(declare-fun b!292151 () Bool)

(assert (=> b!292151 (= e!181817 (= (head!936 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))) (c!54878 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))))))

(declare-fun b!292152 () Bool)

(assert (=> b!292152 (= e!181820 (not lt!123942))))

(declare-fun b!292153 () Bool)

(declare-fun res!133227 () Bool)

(assert (=> b!292153 (=> (not res!133227) (not e!181817))))

(assert (=> b!292153 (= res!133227 (isEmpty!2639 (tail!518 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824)))))))))

(declare-fun b!292154 () Bool)

(assert (=> b!292154 (= e!181816 (not (= (head!936 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))) (c!54878 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824))))))))))

(declare-fun b!292155 () Bool)

(declare-fun res!133224 () Bool)

(assert (=> b!292155 (=> (not res!133224) (not e!181817))))

(assert (=> b!292155 (= res!133224 (not call!16592))))

(declare-fun b!292156 () Bool)

(declare-fun res!133228 () Bool)

(assert (=> b!292156 (=> res!133228 e!181816)))

(assert (=> b!292156 (= res!133228 (not (isEmpty!2639 (tail!518 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824))))))))))

(declare-fun b!292157 () Bool)

(declare-fun derivativeStep!150 (Regex!981 C!2884) Regex!981)

(assert (=> b!292157 (= e!181818 (matchR!299 (derivativeStep!150 (regex!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))) (head!936 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824)))))) (tail!518 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!122824)))))))))

(assert (= (and d!87396 c!55388) b!292145))

(assert (= (and d!87396 (not c!55388)) b!292157))

(assert (= (and d!87396 c!55389) b!292147))

(assert (= (and d!87396 (not c!55389)) b!292148))

(assert (= (and b!292148 c!55387) b!292152))

(assert (= (and b!292148 (not c!55387)) b!292149))

(assert (= (and b!292149 (not res!133223)) b!292150))

(assert (= (and b!292150 res!133221) b!292155))

(assert (= (and b!292155 res!133224) b!292153))

(assert (= (and b!292153 res!133227) b!292151))

(assert (= (and b!292150 (not res!133222)) b!292146))

(assert (= (and b!292146 res!133225) b!292144))

(assert (= (and b!292144 (not res!133226)) b!292156))

(assert (= (and b!292156 (not res!133228)) b!292154))

(assert (= (or b!292147 b!292144 b!292155) bm!16587))

(assert (=> d!87396 m!378193))

(declare-fun m!382259 () Bool)

(assert (=> d!87396 m!382259))

(declare-fun m!382261 () Bool)

(assert (=> d!87396 m!382261))

(assert (=> b!292156 m!378193))

(declare-fun m!382263 () Bool)

(assert (=> b!292156 m!382263))

(assert (=> b!292156 m!382263))

(declare-fun m!382265 () Bool)

(assert (=> b!292156 m!382265))

(assert (=> bm!16587 m!378193))

(assert (=> bm!16587 m!382259))

(assert (=> b!292151 m!378193))

(declare-fun m!382267 () Bool)

(assert (=> b!292151 m!382267))

(assert (=> b!292154 m!378193))

(assert (=> b!292154 m!382267))

(declare-fun m!382269 () Bool)

(assert (=> b!292145 m!382269))

(assert (=> b!292157 m!378193))

(assert (=> b!292157 m!382267))

(assert (=> b!292157 m!382267))

(declare-fun m!382271 () Bool)

(assert (=> b!292157 m!382271))

(assert (=> b!292157 m!378193))

(assert (=> b!292157 m!382263))

(assert (=> b!292157 m!382271))

(assert (=> b!292157 m!382263))

(declare-fun m!382273 () Bool)

(assert (=> b!292157 m!382273))

(assert (=> b!292153 m!378193))

(assert (=> b!292153 m!382263))

(assert (=> b!292153 m!382263))

(assert (=> b!292153 m!382265))

(assert (=> b!290489 d!87396))

(assert (=> b!290489 d!86550))

(assert (=> b!290489 d!87088))

(assert (=> b!290489 d!87090))

(declare-fun b!292161 () Bool)

(declare-fun e!181824 () List!3963)

(assert (=> b!292161 (= e!181824 (++!1058 (list!1659 (left!3269 (c!54877 lt!122465))) (list!1659 (right!3599 (c!54877 lt!122465)))))))

(declare-fun b!292158 () Bool)

(declare-fun e!181823 () List!3963)

(assert (=> b!292158 (= e!181823 Nil!3953)))

(declare-fun d!87398 () Bool)

(declare-fun c!55390 () Bool)

(assert (=> d!87398 (= c!55390 ((_ is Empty!1336) (c!54877 lt!122465)))))

(assert (=> d!87398 (= (list!1659 (c!54877 lt!122465)) e!181823)))

(declare-fun b!292159 () Bool)

(assert (=> b!292159 (= e!181823 e!181824)))

(declare-fun c!55391 () Bool)

(assert (=> b!292159 (= c!55391 ((_ is Leaf!2054) (c!54877 lt!122465)))))

(declare-fun b!292160 () Bool)

(assert (=> b!292160 (= e!181824 (list!1663 (xs!3935 (c!54877 lt!122465))))))

(assert (= (and d!87398 c!55390) b!292158))

(assert (= (and d!87398 (not c!55390)) b!292159))

(assert (= (and b!292159 c!55391) b!292160))

(assert (= (and b!292159 (not c!55391)) b!292161))

(declare-fun m!382275 () Bool)

(assert (=> b!292161 m!382275))

(declare-fun m!382277 () Bool)

(assert (=> b!292161 m!382277))

(assert (=> b!292161 m!382275))

(assert (=> b!292161 m!382277))

(declare-fun m!382279 () Bool)

(assert (=> b!292161 m!382279))

(declare-fun m!382281 () Bool)

(assert (=> b!292160 m!382281))

(assert (=> d!86312 d!87398))

(declare-fun bs!33385 () Bool)

(declare-fun d!87400 () Bool)

(assert (= bs!33385 (and d!87400 d!87056)))

(declare-fun lambda!10046 () Int)

(assert (=> bs!33385 (= lambda!10046 lambda!10023)))

(assert (=> d!87400 true))

(declare-fun lt!123945 () Bool)

(assert (=> d!87400 (= lt!123945 (rulesValidInductive!222 thiss!17480 rules!1920))))

(assert (=> d!87400 (= lt!123945 (forall!1030 rules!1920 lambda!10046))))

(assert (=> d!87400 (= (rulesValid!246 thiss!17480 rules!1920) lt!123945)))

(declare-fun bs!33386 () Bool)

(assert (= bs!33386 d!87400))

(assert (=> bs!33386 m!377481))

(declare-fun m!382283 () Bool)

(assert (=> bs!33386 m!382283))

(assert (=> d!86282 d!87400))

(declare-fun d!87402 () Bool)

(assert (=> d!87402 (= (inv!16 (value!25890 (h!9352 tokens!465))) (= (charsToInt!0 (text!5900 (value!25890 (h!9352 tokens!465)))) (value!25881 (value!25890 (h!9352 tokens!465)))))))

(declare-fun bs!33387 () Bool)

(assert (= bs!33387 d!87402))

(declare-fun m!382285 () Bool)

(assert (=> bs!33387 m!382285))

(assert (=> b!290498 d!87402))

(declare-fun d!87404 () Bool)

(declare-fun c!55392 () Bool)

(assert (=> d!87404 (= c!55392 ((_ is Node!1336) (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))))))

(declare-fun e!181825 () Bool)

(assert (=> d!87404 (= (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))) e!181825)))

(declare-fun b!292162 () Bool)

(assert (=> b!292162 (= e!181825 (inv!4899 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))))))

(declare-fun b!292163 () Bool)

(declare-fun e!181826 () Bool)

(assert (=> b!292163 (= e!181825 e!181826)))

(declare-fun res!133229 () Bool)

(assert (=> b!292163 (= res!133229 (not ((_ is Leaf!2054) (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))))))))

(assert (=> b!292163 (=> res!133229 e!181826)))

(declare-fun b!292164 () Bool)

(assert (=> b!292164 (= e!181826 (inv!4900 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))))))

(assert (= (and d!87404 c!55392) b!292162))

(assert (= (and d!87404 (not c!55392)) b!292163))

(assert (= (and b!292163 (not res!133229)) b!292164))

(declare-fun m!382287 () Bool)

(assert (=> b!292162 m!382287))

(declare-fun m!382289 () Bool)

(assert (=> b!292164 m!382289))

(assert (=> b!290327 d!87404))

(declare-fun b!292167 () Bool)

(declare-fun res!133231 () Bool)

(declare-fun e!181827 () Bool)

(assert (=> b!292167 (=> (not res!133231) (not e!181827))))

(declare-fun lt!123946 () List!3963)

(assert (=> b!292167 (= res!133231 (= (size!3175 lt!123946) (+ (size!3175 (t!40595 lt!122467)) (size!3175 lt!122470))))))

(declare-fun b!292165 () Bool)

(declare-fun e!181828 () List!3963)

(assert (=> b!292165 (= e!181828 lt!122470)))

(declare-fun d!87406 () Bool)

(assert (=> d!87406 e!181827))

(declare-fun res!133230 () Bool)

(assert (=> d!87406 (=> (not res!133230) (not e!181827))))

(assert (=> d!87406 (= res!133230 (= (content!585 lt!123946) ((_ map or) (content!585 (t!40595 lt!122467)) (content!585 lt!122470))))))

(assert (=> d!87406 (= lt!123946 e!181828)))

(declare-fun c!55393 () Bool)

(assert (=> d!87406 (= c!55393 ((_ is Nil!3953) (t!40595 lt!122467)))))

(assert (=> d!87406 (= (++!1058 (t!40595 lt!122467) lt!122470) lt!123946)))

(declare-fun b!292166 () Bool)

(assert (=> b!292166 (= e!181828 (Cons!3953 (h!9350 (t!40595 lt!122467)) (++!1058 (t!40595 (t!40595 lt!122467)) lt!122470)))))

(declare-fun b!292168 () Bool)

(assert (=> b!292168 (= e!181827 (or (not (= lt!122470 Nil!3953)) (= lt!123946 (t!40595 lt!122467))))))

(assert (= (and d!87406 c!55393) b!292165))

(assert (= (and d!87406 (not c!55393)) b!292166))

(assert (= (and d!87406 res!133230) b!292167))

(assert (= (and b!292167 res!133231) b!292168))

(declare-fun m!382291 () Bool)

(assert (=> b!292167 m!382291))

(assert (=> b!292167 m!378827))

(assert (=> b!292167 m!377999))

(declare-fun m!382293 () Bool)

(assert (=> d!87406 m!382293))

(assert (=> d!87406 m!378793))

(assert (=> d!87406 m!378003))

(declare-fun m!382295 () Bool)

(assert (=> b!292166 m!382295))

(assert (=> b!290333 d!87406))

(declare-fun d!87408 () Bool)

(declare-fun lt!123947 () Token!1258)

(assert (=> d!87408 (= lt!123947 (apply!851 (list!1658 (_1!2470 lt!122811)) 0))))

(assert (=> d!87408 (= lt!123947 (apply!854 (c!54879 (_1!2470 lt!122811)) 0))))

(declare-fun e!181829 () Bool)

(assert (=> d!87408 e!181829))

(declare-fun res!133232 () Bool)

(assert (=> d!87408 (=> (not res!133232) (not e!181829))))

(assert (=> d!87408 (= res!133232 (<= 0 0))))

(assert (=> d!87408 (= (apply!850 (_1!2470 lt!122811) 0) lt!123947)))

(declare-fun b!292169 () Bool)

(assert (=> b!292169 (= e!181829 (< 0 (size!3176 (_1!2470 lt!122811))))))

(assert (= (and d!87408 res!133232) b!292169))

(assert (=> d!87408 m!379293))

(assert (=> d!87408 m!379293))

(declare-fun m!382297 () Bool)

(assert (=> d!87408 m!382297))

(declare-fun m!382299 () Bool)

(assert (=> d!87408 m!382299))

(assert (=> b!292169 m!378157))

(assert (=> b!290455 d!87408))

(declare-fun d!87410 () Bool)

(assert (=> d!87410 (= (inv!4888 (tag!973 (h!9351 (t!40596 rules!1920)))) (= (mod (str.len (value!25889 (tag!973 (h!9351 (t!40596 rules!1920))))) 2) 0))))

(assert (=> b!290559 d!87410))

(declare-fun d!87412 () Bool)

(declare-fun res!133233 () Bool)

(declare-fun e!181830 () Bool)

(assert (=> d!87412 (=> (not res!133233) (not e!181830))))

(assert (=> d!87412 (= res!133233 (semiInverseModEq!281 (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920))))))))

(assert (=> d!87412 (= (inv!4892 (transformation!757 (h!9351 (t!40596 rules!1920)))) e!181830)))

(declare-fun b!292170 () Bool)

(assert (=> b!292170 (= e!181830 (equivClasses!264 (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920))))))))

(assert (= (and d!87412 res!133233) b!292170))

(declare-fun m!382301 () Bool)

(assert (=> d!87412 m!382301))

(declare-fun m!382303 () Bool)

(assert (=> b!292170 m!382303))

(assert (=> b!290559 d!87412))

(declare-fun d!87414 () Bool)

(declare-fun res!133234 () Bool)

(declare-fun e!181831 () Bool)

(assert (=> d!87414 (=> res!133234 e!181831)))

(assert (=> d!87414 (= res!133234 (not ((_ is Cons!3954) (t!40596 rules!1920))))))

(assert (=> d!87414 (= (sepAndNonSepRulesDisjointChars!346 rules!1920 (t!40596 rules!1920)) e!181831)))

(declare-fun b!292171 () Bool)

(declare-fun e!181832 () Bool)

(assert (=> b!292171 (= e!181831 e!181832)))

(declare-fun res!133235 () Bool)

(assert (=> b!292171 (=> (not res!133235) (not e!181832))))

(assert (=> b!292171 (= res!133235 (ruleDisjointCharsFromAllFromOtherType!139 (h!9351 (t!40596 rules!1920)) rules!1920))))

(declare-fun b!292172 () Bool)

(assert (=> b!292172 (= e!181832 (sepAndNonSepRulesDisjointChars!346 rules!1920 (t!40596 (t!40596 rules!1920))))))

(assert (= (and d!87414 (not res!133234)) b!292171))

(assert (= (and b!292171 res!133235) b!292172))

(declare-fun m!382305 () Bool)

(assert (=> b!292171 m!382305))

(declare-fun m!382307 () Bool)

(assert (=> b!292172 m!382307))

(assert (=> b!290469 d!87414))

(declare-fun bs!33388 () Bool)

(declare-fun d!87416 () Bool)

(assert (= bs!33388 (and d!87416 d!86898)))

(declare-fun lambda!10047 () Int)

(assert (=> bs!33388 (= (= (toValue!1508 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465))))) (= lambda!10047 lambda!10012))))

(declare-fun bs!33389 () Bool)

(assert (= bs!33389 (and d!87416 d!87082)))

(assert (=> bs!33389 (= (= (toValue!1508 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (rule!1360 separatorToken!170)))) (= lambda!10047 lambda!10024))))

(assert (=> d!87416 true))

(assert (=> d!87416 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (dynLambda!2116 order!3145 lambda!10047))))

(assert (=> d!87416 (= (equivClasses!264 (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toValue!1508 (transformation!757 (h!9351 rules!1920)))) (Forall2!156 lambda!10047))))

(declare-fun bs!33390 () Bool)

(assert (= bs!33390 d!87416))

(declare-fun m!382309 () Bool)

(assert (=> bs!33390 m!382309))

(assert (=> b!289893 d!87416))

(declare-fun b!292173 () Bool)

(declare-fun e!181833 () Bool)

(assert (=> b!292173 (= e!181833 (inv!16 (value!25890 (h!9352 (t!40597 tokens!465)))))))

(declare-fun b!292174 () Bool)

(declare-fun res!133236 () Bool)

(declare-fun e!181835 () Bool)

(assert (=> b!292174 (=> res!133236 e!181835)))

(assert (=> b!292174 (= res!133236 (not ((_ is IntegerValue!2339) (value!25890 (h!9352 (t!40597 tokens!465))))))))

(declare-fun e!181834 () Bool)

(assert (=> b!292174 (= e!181834 e!181835)))

(declare-fun d!87418 () Bool)

(declare-fun c!55394 () Bool)

(assert (=> d!87418 (= c!55394 ((_ is IntegerValue!2337) (value!25890 (h!9352 (t!40597 tokens!465)))))))

(assert (=> d!87418 (= (inv!21 (value!25890 (h!9352 (t!40597 tokens!465)))) e!181833)))

(declare-fun b!292175 () Bool)

(assert (=> b!292175 (= e!181833 e!181834)))

(declare-fun c!55395 () Bool)

(assert (=> b!292175 (= c!55395 ((_ is IntegerValue!2338) (value!25890 (h!9352 (t!40597 tokens!465)))))))

(declare-fun b!292176 () Bool)

(assert (=> b!292176 (= e!181835 (inv!15 (value!25890 (h!9352 (t!40597 tokens!465)))))))

(declare-fun b!292177 () Bool)

(assert (=> b!292177 (= e!181834 (inv!17 (value!25890 (h!9352 (t!40597 tokens!465)))))))

(assert (= (and d!87418 c!55394) b!292173))

(assert (= (and d!87418 (not c!55394)) b!292175))

(assert (= (and b!292175 c!55395) b!292177))

(assert (= (and b!292175 (not c!55395)) b!292174))

(assert (= (and b!292174 (not res!133236)) b!292176))

(declare-fun m!382311 () Bool)

(assert (=> b!292173 m!382311))

(declare-fun m!382313 () Bool)

(assert (=> b!292176 m!382313))

(declare-fun m!382315 () Bool)

(assert (=> b!292177 m!382315))

(assert (=> b!290547 d!87418))

(declare-fun d!87420 () Bool)

(declare-fun c!55396 () Bool)

(assert (=> d!87420 (= c!55396 ((_ is Nil!3953) lt!122648))))

(declare-fun e!181836 () (InoxSet C!2884))

(assert (=> d!87420 (= (content!585 lt!122648) e!181836)))

(declare-fun b!292178 () Bool)

(assert (=> b!292178 (= e!181836 ((as const (Array C!2884 Bool)) false))))

(declare-fun b!292179 () Bool)

(assert (=> b!292179 (= e!181836 ((_ map or) (store ((as const (Array C!2884 Bool)) false) (h!9350 lt!122648) true) (content!585 (t!40595 lt!122648))))))

(assert (= (and d!87420 c!55396) b!292178))

(assert (= (and d!87420 (not c!55396)) b!292179))

(declare-fun m!382317 () Bool)

(assert (=> b!292179 m!382317))

(declare-fun m!382319 () Bool)

(assert (=> b!292179 m!382319))

(assert (=> d!86332 d!87420))

(assert (=> d!86332 d!86570))

(assert (=> d!86332 d!87004))

(declare-fun b!292198 () Bool)

(declare-fun res!133253 () Bool)

(declare-fun e!181846 () Bool)

(assert (=> b!292198 (=> (not res!133253) (not e!181846))))

(declare-fun lt!123960 () Option!877)

(assert (=> b!292198 (= res!133253 (= (++!1058 (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123960)))) (_2!2471 (get!1336 lt!123960))) lt!122467))))

(declare-fun b!292199 () Bool)

(declare-fun res!133252 () Bool)

(assert (=> b!292199 (=> (not res!133252) (not e!181846))))

(assert (=> b!292199 (= res!133252 (= (rule!1360 (_1!2471 (get!1336 lt!123960))) (h!9351 rules!1920)))))

(declare-fun b!292200 () Bool)

(declare-fun e!181845 () Option!877)

(assert (=> b!292200 (= e!181845 None!876)))

(declare-fun b!292201 () Bool)

(declare-fun lt!123958 () tuple2!4522)

(assert (=> b!292201 (= e!181845 (Some!876 (tuple2!4511 (Token!1259 (apply!852 (transformation!757 (h!9351 rules!1920)) (seqFromList!880 (_1!2477 lt!123958))) (h!9351 rules!1920) (size!3177 (seqFromList!880 (_1!2477 lt!123958))) (_1!2477 lt!123958)) (_2!2477 lt!123958))))))

(declare-fun lt!123961 () Unit!5362)

(assert (=> b!292201 (= lt!123961 (longestMatchIsAcceptedByMatchOrIsEmpty!66 (regex!757 (h!9351 rules!1920)) lt!122467))))

(declare-fun res!133256 () Bool)

(assert (=> b!292201 (= res!133256 (isEmpty!2639 (_1!2477 (findLongestMatchInner!82 (regex!757 (h!9351 rules!1920)) Nil!3953 (size!3175 Nil!3953) lt!122467 lt!122467 (size!3175 lt!122467)))))))

(declare-fun e!181848 () Bool)

(assert (=> b!292201 (=> res!133256 e!181848)))

(assert (=> b!292201 e!181848))

(declare-fun lt!123962 () Unit!5362)

(assert (=> b!292201 (= lt!123962 lt!123961)))

(declare-fun lt!123959 () Unit!5362)

(declare-fun lemmaSemiInverse!60 (TokenValueInjection!1330 BalanceConc!2680) Unit!5362)

(assert (=> b!292201 (= lt!123959 (lemmaSemiInverse!60 (transformation!757 (h!9351 rules!1920)) (seqFromList!880 (_1!2477 lt!123958))))))

(declare-fun b!292202 () Bool)

(declare-fun res!133255 () Bool)

(assert (=> b!292202 (=> (not res!133255) (not e!181846))))

(assert (=> b!292202 (= res!133255 (= (value!25890 (_1!2471 (get!1336 lt!123960))) (apply!852 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!123960)))) (seqFromList!880 (originalCharacters!800 (_1!2471 (get!1336 lt!123960)))))))))

(declare-fun d!87422 () Bool)

(declare-fun e!181847 () Bool)

(assert (=> d!87422 e!181847))

(declare-fun res!133251 () Bool)

(assert (=> d!87422 (=> res!133251 e!181847)))

(assert (=> d!87422 (= res!133251 (isEmpty!2640 lt!123960))))

(assert (=> d!87422 (= lt!123960 e!181845)))

(declare-fun c!55399 () Bool)

(assert (=> d!87422 (= c!55399 (isEmpty!2639 (_1!2477 lt!123958)))))

(declare-fun findLongestMatch!62 (Regex!981 List!3963) tuple2!4522)

(assert (=> d!87422 (= lt!123958 (findLongestMatch!62 (regex!757 (h!9351 rules!1920)) lt!122467))))

(assert (=> d!87422 (ruleValid!96 thiss!17480 (h!9351 rules!1920))))

(assert (=> d!87422 (= (maxPrefixOneRule!161 thiss!17480 (h!9351 rules!1920) lt!122467) lt!123960)))

(declare-fun b!292203 () Bool)

(declare-fun res!133257 () Bool)

(assert (=> b!292203 (=> (not res!133257) (not e!181846))))

(assert (=> b!292203 (= res!133257 (< (size!3175 (_2!2471 (get!1336 lt!123960))) (size!3175 lt!122467)))))

(declare-fun b!292204 () Bool)

(assert (=> b!292204 (= e!181847 e!181846)))

(declare-fun res!133254 () Bool)

(assert (=> b!292204 (=> (not res!133254) (not e!181846))))

(assert (=> b!292204 (= res!133254 (matchR!299 (regex!757 (h!9351 rules!1920)) (list!1655 (charsOf!400 (_1!2471 (get!1336 lt!123960))))))))

(declare-fun b!292205 () Bool)

(assert (=> b!292205 (= e!181848 (matchR!299 (regex!757 (h!9351 rules!1920)) (_1!2477 (findLongestMatchInner!82 (regex!757 (h!9351 rules!1920)) Nil!3953 (size!3175 Nil!3953) lt!122467 lt!122467 (size!3175 lt!122467)))))))

(declare-fun b!292206 () Bool)

(assert (=> b!292206 (= e!181846 (= (size!3171 (_1!2471 (get!1336 lt!123960))) (size!3175 (originalCharacters!800 (_1!2471 (get!1336 lt!123960))))))))

(assert (= (and d!87422 c!55399) b!292200))

(assert (= (and d!87422 (not c!55399)) b!292201))

(assert (= (and b!292201 (not res!133256)) b!292205))

(assert (= (and d!87422 (not res!133251)) b!292204))

(assert (= (and b!292204 res!133254) b!292198))

(assert (= (and b!292198 res!133253) b!292203))

(assert (= (and b!292203 res!133257) b!292199))

(assert (= (and b!292199 res!133252) b!292202))

(assert (= (and b!292202 res!133255) b!292206))

(assert (=> b!292205 m!381891))

(assert (=> b!292205 m!377495))

(assert (=> b!292205 m!381891))

(assert (=> b!292205 m!377495))

(declare-fun m!382321 () Bool)

(assert (=> b!292205 m!382321))

(declare-fun m!382323 () Bool)

(assert (=> b!292205 m!382323))

(assert (=> b!292201 m!381891))

(declare-fun m!382325 () Bool)

(assert (=> b!292201 m!382325))

(declare-fun m!382327 () Bool)

(assert (=> b!292201 m!382327))

(assert (=> b!292201 m!382325))

(declare-fun m!382329 () Bool)

(assert (=> b!292201 m!382329))

(declare-fun m!382331 () Bool)

(assert (=> b!292201 m!382331))

(assert (=> b!292201 m!382325))

(declare-fun m!382333 () Bool)

(assert (=> b!292201 m!382333))

(assert (=> b!292201 m!381891))

(assert (=> b!292201 m!377495))

(assert (=> b!292201 m!382321))

(assert (=> b!292201 m!377495))

(assert (=> b!292201 m!382325))

(declare-fun m!382335 () Bool)

(assert (=> b!292201 m!382335))

(declare-fun m!382337 () Bool)

(assert (=> b!292198 m!382337))

(declare-fun m!382339 () Bool)

(assert (=> b!292198 m!382339))

(assert (=> b!292198 m!382339))

(declare-fun m!382341 () Bool)

(assert (=> b!292198 m!382341))

(assert (=> b!292198 m!382341))

(declare-fun m!382343 () Bool)

(assert (=> b!292198 m!382343))

(assert (=> b!292199 m!382337))

(assert (=> b!292202 m!382337))

(declare-fun m!382345 () Bool)

(assert (=> b!292202 m!382345))

(assert (=> b!292202 m!382345))

(declare-fun m!382347 () Bool)

(assert (=> b!292202 m!382347))

(assert (=> b!292203 m!382337))

(declare-fun m!382349 () Bool)

(assert (=> b!292203 m!382349))

(assert (=> b!292203 m!377495))

(assert (=> b!292206 m!382337))

(declare-fun m!382351 () Bool)

(assert (=> b!292206 m!382351))

(assert (=> b!292204 m!382337))

(assert (=> b!292204 m!382339))

(assert (=> b!292204 m!382339))

(assert (=> b!292204 m!382341))

(assert (=> b!292204 m!382341))

(declare-fun m!382353 () Bool)

(assert (=> b!292204 m!382353))

(declare-fun m!382355 () Bool)

(assert (=> d!87422 m!382355))

(declare-fun m!382357 () Bool)

(assert (=> d!87422 m!382357))

(declare-fun m!382359 () Bool)

(assert (=> d!87422 m!382359))

(assert (=> d!87422 m!380743))

(assert (=> bm!16483 d!87422))

(declare-fun d!87424 () Bool)

(assert (=> d!87424 (= (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))) (isBalanced!381 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))))))

(declare-fun bs!33391 () Bool)

(assert (= bs!33391 d!87424))

(declare-fun m!382361 () Bool)

(assert (=> bs!33391 m!382361))

(assert (=> tb!17003 d!87424))

(declare-fun d!87426 () Bool)

(declare-fun e!181849 () Bool)

(assert (=> d!87426 e!181849))

(declare-fun res!133258 () Bool)

(assert (=> d!87426 (=> (not res!133258) (not e!181849))))

(declare-fun lt!123963 () BalanceConc!2680)

(assert (=> d!87426 (= res!133258 (= (list!1655 lt!123963) lt!122467))))

(assert (=> d!87426 (= lt!123963 (BalanceConc!2681 (fromList!192 lt!122467)))))

(assert (=> d!87426 (= (fromListB!362 lt!122467) lt!123963)))

(declare-fun b!292207 () Bool)

(assert (=> b!292207 (= e!181849 (isBalanced!381 (fromList!192 lt!122467)))))

(assert (= (and d!87426 res!133258) b!292207))

(declare-fun m!382363 () Bool)

(assert (=> d!87426 m!382363))

(declare-fun m!382365 () Bool)

(assert (=> d!87426 m!382365))

(assert (=> b!292207 m!382365))

(assert (=> b!292207 m!382365))

(declare-fun m!382367 () Bool)

(assert (=> b!292207 m!382367))

(assert (=> d!86410 d!87426))

(declare-fun d!87428 () Bool)

(declare-fun lt!123964 () Int)

(assert (=> d!87428 (>= lt!123964 0)))

(declare-fun e!181850 () Int)

(assert (=> d!87428 (= lt!123964 e!181850)))

(declare-fun c!55400 () Bool)

(assert (=> d!87428 (= c!55400 ((_ is Nil!3953) lt!122773))))

(assert (=> d!87428 (= (size!3175 lt!122773) lt!123964)))

(declare-fun b!292208 () Bool)

(assert (=> b!292208 (= e!181850 0)))

(declare-fun b!292209 () Bool)

(assert (=> b!292209 (= e!181850 (+ 1 (size!3175 (t!40595 lt!122773))))))

(assert (= (and d!87428 c!55400) b!292208))

(assert (= (and d!87428 (not c!55400)) b!292209))

(declare-fun m!382369 () Bool)

(assert (=> b!292209 m!382369))

(assert (=> b!290330 d!87428))

(declare-fun d!87430 () Bool)

(declare-fun lt!123965 () Int)

(assert (=> d!87430 (>= lt!123965 0)))

(declare-fun e!181851 () Int)

(assert (=> d!87430 (= lt!123965 e!181851)))

(declare-fun c!55401 () Bool)

(assert (=> d!87430 (= c!55401 ((_ is Nil!3953) (++!1058 lt!122467 lt!122461)))))

(assert (=> d!87430 (= (size!3175 (++!1058 lt!122467 lt!122461)) lt!123965)))

(declare-fun b!292210 () Bool)

(assert (=> b!292210 (= e!181851 0)))

(declare-fun b!292211 () Bool)

(assert (=> b!292211 (= e!181851 (+ 1 (size!3175 (t!40595 (++!1058 lt!122467 lt!122461)))))))

(assert (= (and d!87430 c!55401) b!292210))

(assert (= (and d!87430 (not c!55401)) b!292211))

(assert (=> b!292211 m!380839))

(assert (=> b!290330 d!87430))

(assert (=> b!290330 d!86878))

(declare-fun d!87432 () Bool)

(assert (=> d!87432 (= (list!1655 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))) (list!1659 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))))))

(declare-fun bs!33392 () Bool)

(assert (= bs!33392 d!87432))

(declare-fun m!382371 () Bool)

(assert (=> bs!33392 m!382371))

(assert (=> b!290503 d!87432))

(declare-fun d!87434 () Bool)

(declare-fun lt!123966 () Bool)

(assert (=> d!87434 (= lt!123966 (isEmpty!2637 (list!1658 (_1!2470 lt!122789))))))

(assert (=> d!87434 (= lt!123966 (isEmpty!2638 (c!54879 (_1!2470 lt!122789))))))

(assert (=> d!87434 (= (isEmpty!2628 (_1!2470 lt!122789)) lt!123966)))

(declare-fun bs!33393 () Bool)

(assert (= bs!33393 d!87434))

(assert (=> bs!33393 m!378067))

(assert (=> bs!33393 m!378067))

(declare-fun m!382373 () Bool)

(assert (=> bs!33393 m!382373))

(declare-fun m!382375 () Bool)

(assert (=> bs!33393 m!382375))

(assert (=> b!290421 d!87434))

(declare-fun d!87436 () Bool)

(declare-fun lt!123967 () BalanceConc!2680)

(assert (=> d!87436 (= (list!1655 lt!123967) (originalCharacters!800 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475))))))

(assert (=> d!87436 (= lt!123967 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475))))) (value!25890 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))))

(assert (=> d!87436 (= (charsOf!400 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475))) lt!123967)))

(declare-fun b_lambda!9825 () Bool)

(assert (=> (not b_lambda!9825) (not d!87436)))

(declare-fun tb!17287 () Bool)

(declare-fun t!40938 () Bool)

(assert (=> (and b!290549 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))) t!40938) tb!17287))

(declare-fun e!181852 () Bool)

(declare-fun b!292212 () Bool)

(declare-fun tp!106036 () Bool)

(assert (=> b!292212 (= e!181852 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475))))) (value!25890 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))) tp!106036))))

(declare-fun result!21160 () Bool)

(assert (=> tb!17287 (= result!21160 (and (inv!4896 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475))))) (value!25890 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475))))) e!181852))))

(assert (= tb!17287 b!292212))

(declare-fun m!382377 () Bool)

(assert (=> b!292212 m!382377))

(declare-fun m!382379 () Bool)

(assert (=> tb!17287 m!382379))

(assert (=> d!87436 t!40938))

(declare-fun b_and!23843 () Bool)

(assert (= b_and!23833 (and (=> t!40938 result!21160) b_and!23843)))

(declare-fun tb!17289 () Bool)

(declare-fun t!40940 () Bool)

(assert (=> (and b!289857 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))) t!40940) tb!17289))

(declare-fun result!21162 () Bool)

(assert (= result!21162 result!21160))

(assert (=> d!87436 t!40940))

(declare-fun b_and!23845 () Bool)

(assert (= b_and!23841 (and (=> t!40940 result!21162) b_and!23845)))

(declare-fun tb!17291 () Bool)

(declare-fun t!40942 () Bool)

(assert (=> (and b!290560 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))) t!40942) tb!17291))

(declare-fun result!21164 () Bool)

(assert (= result!21164 result!21160))

(assert (=> d!87436 t!40942))

(declare-fun b_and!23847 () Bool)

(assert (= b_and!23835 (and (=> t!40942 result!21164) b_and!23847)))

(declare-fun tb!17293 () Bool)

(declare-fun t!40944 () Bool)

(assert (=> (and b!289862 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))) t!40944) tb!17293))

(declare-fun result!21166 () Bool)

(assert (= result!21166 result!21160))

(assert (=> d!87436 t!40944))

(declare-fun b_and!23849 () Bool)

(assert (= b_and!23839 (and (=> t!40944 result!21166) b_and!23849)))

(declare-fun t!40946 () Bool)

(declare-fun tb!17295 () Bool)

(assert (=> (and b!289860 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))) t!40946) tb!17295))

(declare-fun result!21168 () Bool)

(assert (= result!21168 result!21160))

(assert (=> d!87436 t!40946))

(declare-fun b_and!23851 () Bool)

(assert (= b_and!23837 (and (=> t!40946 result!21168) b_and!23851)))

(declare-fun m!382381 () Bool)

(assert (=> d!87436 m!382381))

(declare-fun m!382383 () Bool)

(assert (=> d!87436 m!382383))

(assert (=> bm!16468 d!87436))

(declare-fun bs!33394 () Bool)

(declare-fun d!87438 () Bool)

(assert (= bs!33394 (and d!87438 d!86696)))

(declare-fun lambda!10048 () Int)

(assert (=> bs!33394 (= (and (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) (= (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toValue!1508 (transformation!757 (rule!1360 separatorToken!170))))) (= lambda!10048 lambda!9998))))

(declare-fun bs!33395 () Bool)

(assert (= bs!33395 (and d!87438 b!291963)))

(assert (=> bs!33395 (= (and (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (= (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toValue!1508 (transformation!757 (h!9351 rules!1920))))) (= lambda!10048 lambda!10041))))

(declare-fun bs!33396 () Bool)

(assert (= bs!33396 (and d!87438 d!87360)))

(assert (=> bs!33396 (= (and (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (h!9351 rules!1920)))) (= (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toValue!1508 (transformation!757 (h!9351 rules!1920))))) (= lambda!10048 lambda!10042))))

(assert (=> d!87438 true))

(assert (=> d!87438 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465))))) (dynLambda!2113 order!3141 lambda!10048))))

(assert (=> d!87438 true))

(assert (=> d!87438 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465))))) (dynLambda!2113 order!3141 lambda!10048))))

(assert (=> d!87438 (= (semiInverseModEq!281 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toValue!1508 (transformation!757 (rule!1360 (h!9352 tokens!465))))) (Forall!179 lambda!10048))))

(declare-fun bs!33397 () Bool)

(assert (= bs!33397 d!87438))

(declare-fun m!382385 () Bool)

(assert (=> bs!33397 m!382385))

(assert (=> d!86436 d!87438))

(assert (=> bm!16477 d!86390))

(declare-fun b!292216 () Bool)

(declare-fun e!181854 () List!3963)

(assert (=> b!292216 (= e!181854 (++!1058 (list!1659 (left!3269 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0)))) (list!1659 (right!3599 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0))))))))

(declare-fun b!292213 () Bool)

(declare-fun e!181853 () List!3963)

(assert (=> b!292213 (= e!181853 Nil!3953)))

(declare-fun d!87440 () Bool)

(declare-fun c!55402 () Bool)

(assert (=> d!87440 (= c!55402 ((_ is Empty!1336) (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0))))))

(assert (=> d!87440 (= (list!1659 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0))) e!181853)))

(declare-fun b!292214 () Bool)

(assert (=> b!292214 (= e!181853 e!181854)))

(declare-fun c!55403 () Bool)

(assert (=> b!292214 (= c!55403 ((_ is Leaf!2054) (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0))))))

(declare-fun b!292215 () Bool)

(assert (=> b!292215 (= e!181854 (list!1663 (xs!3935 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 (seqFromList!879 (t!40597 tokens!465)) separatorToken!170 0)))))))

(assert (= (and d!87440 c!55402) b!292213))

(assert (= (and d!87440 (not c!55402)) b!292214))

(assert (= (and b!292214 c!55403) b!292215))

(assert (= (and b!292214 (not c!55403)) b!292216))

(declare-fun m!382387 () Bool)

(assert (=> b!292216 m!382387))

(declare-fun m!382389 () Bool)

(assert (=> b!292216 m!382389))

(assert (=> b!292216 m!382387))

(assert (=> b!292216 m!382389))

(declare-fun m!382391 () Bool)

(assert (=> b!292216 m!382391))

(declare-fun m!382393 () Bool)

(assert (=> b!292215 m!382393))

(assert (=> d!86394 d!87440))

(declare-fun b!292219 () Bool)

(declare-fun res!133260 () Bool)

(declare-fun e!181855 () Bool)

(assert (=> b!292219 (=> (not res!133260) (not e!181855))))

(declare-fun lt!123968 () List!3963)

(assert (=> b!292219 (= res!133260 (= (size!3175 lt!123968) (+ (size!3175 (t!40595 lt!122467)) (size!3175 lt!122458))))))

(declare-fun b!292217 () Bool)

(declare-fun e!181856 () List!3963)

(assert (=> b!292217 (= e!181856 lt!122458)))

(declare-fun d!87442 () Bool)

(assert (=> d!87442 e!181855))

(declare-fun res!133259 () Bool)

(assert (=> d!87442 (=> (not res!133259) (not e!181855))))

(assert (=> d!87442 (= res!133259 (= (content!585 lt!123968) ((_ map or) (content!585 (t!40595 lt!122467)) (content!585 lt!122458))))))

(assert (=> d!87442 (= lt!123968 e!181856)))

(declare-fun c!55404 () Bool)

(assert (=> d!87442 (= c!55404 ((_ is Nil!3953) (t!40595 lt!122467)))))

(assert (=> d!87442 (= (++!1058 (t!40595 lt!122467) lt!122458) lt!123968)))

(declare-fun b!292218 () Bool)

(assert (=> b!292218 (= e!181856 (Cons!3953 (h!9350 (t!40595 lt!122467)) (++!1058 (t!40595 (t!40595 lt!122467)) lt!122458)))))

(declare-fun b!292220 () Bool)

(assert (=> b!292220 (= e!181855 (or (not (= lt!122458 Nil!3953)) (= lt!123968 (t!40595 lt!122467))))))

(assert (= (and d!87442 c!55404) b!292217))

(assert (= (and d!87442 (not c!55404)) b!292218))

(assert (= (and d!87442 res!133259) b!292219))

(assert (= (and b!292219 res!133260) b!292220))

(declare-fun m!382395 () Bool)

(assert (=> b!292219 m!382395))

(assert (=> b!292219 m!378827))

(assert (=> b!292219 m!377497))

(declare-fun m!382397 () Bool)

(assert (=> d!87442 m!382397))

(assert (=> d!87442 m!378793))

(assert (=> d!87442 m!377503))

(declare-fun m!382399 () Bool)

(assert (=> b!292218 m!382399))

(assert (=> b!290082 d!87442))

(declare-fun d!87444 () Bool)

(assert (=> d!87444 (= (isEmpty!2639 (originalCharacters!800 (h!9352 tokens!465))) ((_ is Nil!3953) (originalCharacters!800 (h!9352 tokens!465))))))

(assert (=> d!86444 d!87444))

(declare-fun d!87446 () Bool)

(assert (=> d!87446 (= (list!1658 (_1!2470 lt!122789)) (list!1661 (c!54879 (_1!2470 lt!122789))))))

(declare-fun bs!33398 () Bool)

(assert (= bs!33398 d!87446))

(declare-fun m!382401 () Bool)

(assert (=> bs!33398 m!382401))

(assert (=> b!290417 d!87446))

(assert (=> b!290417 d!87148))

(assert (=> b!290417 d!87188))

(declare-fun b!292224 () Bool)

(declare-fun e!181858 () List!3963)

(assert (=> b!292224 (= e!181858 (++!1058 (list!1659 (left!3269 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0)))) (list!1659 (right!3599 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0))))))))

(declare-fun b!292221 () Bool)

(declare-fun e!181857 () List!3963)

(assert (=> b!292221 (= e!181857 Nil!3953)))

(declare-fun c!55405 () Bool)

(declare-fun d!87448 () Bool)

(assert (=> d!87448 (= c!55405 ((_ is Empty!1336) (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0))))))

(assert (=> d!87448 (= (list!1659 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0))) e!181857)))

(declare-fun b!292222 () Bool)

(assert (=> b!292222 (= e!181857 e!181858)))

(declare-fun c!55406 () Bool)

(assert (=> b!292222 (= c!55406 ((_ is Leaf!2054) (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0))))))

(declare-fun b!292223 () Bool)

(assert (=> b!292223 (= e!181858 (list!1663 (xs!3935 (c!54877 (printWithSeparatorTokenWhenNeededRec!316 thiss!17480 rules!1920 lt!122463 separatorToken!170 0)))))))

(assert (= (and d!87448 c!55405) b!292221))

(assert (= (and d!87448 (not c!55405)) b!292222))

(assert (= (and b!292222 c!55406) b!292223))

(assert (= (and b!292222 (not c!55406)) b!292224))

(declare-fun m!382403 () Bool)

(assert (=> b!292224 m!382403))

(declare-fun m!382405 () Bool)

(assert (=> b!292224 m!382405))

(assert (=> b!292224 m!382403))

(assert (=> b!292224 m!382405))

(declare-fun m!382407 () Bool)

(assert (=> b!292224 m!382407))

(declare-fun m!382409 () Bool)

(assert (=> b!292223 m!382409))

(assert (=> d!86414 d!87448))

(assert (=> bm!16466 d!86988))

(declare-fun d!87450 () Bool)

(assert (=> d!87450 (= (inv!15 (value!25890 separatorToken!170)) (= (charsToBigInt!0 (text!5902 (value!25890 separatorToken!170)) 0) (value!25885 (value!25890 separatorToken!170))))))

(declare-fun bs!33399 () Bool)

(assert (= bs!33399 d!87450))

(declare-fun m!382411 () Bool)

(assert (=> bs!33399 m!382411))

(assert (=> b!290020 d!87450))

(assert (=> b!290064 d!87020))

(assert (=> b!290064 d!87000))

(assert (=> b!290064 d!86724))

(assert (=> b!290064 d!87016))

(assert (=> b!290064 d!86732))

(declare-fun d!87452 () Bool)

(assert (=> d!87452 (= (list!1658 lt!122586) (list!1661 (c!54879 lt!122586)))))

(declare-fun bs!33400 () Bool)

(assert (= bs!33400 d!87452))

(declare-fun m!382413 () Bool)

(assert (=> bs!33400 m!382413))

(assert (=> d!86314 d!87452))

(declare-fun d!87454 () Bool)

(declare-fun e!181861 () Bool)

(assert (=> d!87454 e!181861))

(declare-fun res!133263 () Bool)

(assert (=> d!87454 (=> (not res!133263) (not e!181861))))

(declare-fun lt!123971 () BalanceConc!2682)

(assert (=> d!87454 (= res!133263 (= (list!1658 lt!123971) (Cons!3955 (h!9352 tokens!465) Nil!3955)))))

(declare-fun choose!2619 (Token!1258) BalanceConc!2682)

(assert (=> d!87454 (= lt!123971 (choose!2619 (h!9352 tokens!465)))))

(assert (=> d!87454 (= (singleton!134 (h!9352 tokens!465)) lt!123971)))

(declare-fun b!292227 () Bool)

(assert (=> b!292227 (= e!181861 (isBalanced!379 (c!54879 lt!123971)))))

(assert (= (and d!87454 res!133263) b!292227))

(declare-fun m!382415 () Bool)

(assert (=> d!87454 m!382415))

(declare-fun m!382417 () Bool)

(assert (=> d!87454 m!382417))

(declare-fun m!382419 () Bool)

(assert (=> b!292227 m!382419))

(assert (=> d!86314 d!87454))

(assert (=> bm!16424 d!87376))

(declare-fun d!87456 () Bool)

(declare-fun lt!123972 () Token!1258)

(assert (=> d!87456 (= lt!123972 (apply!851 (list!1658 (_1!2470 lt!122783)) 0))))

(assert (=> d!87456 (= lt!123972 (apply!854 (c!54879 (_1!2470 lt!122783)) 0))))

(declare-fun e!181862 () Bool)

(assert (=> d!87456 e!181862))

(declare-fun res!133264 () Bool)

(assert (=> d!87456 (=> (not res!133264) (not e!181862))))

(assert (=> d!87456 (= res!133264 (<= 0 0))))

(assert (=> d!87456 (= (apply!850 (_1!2470 lt!122783) 0) lt!123972)))

(declare-fun b!292228 () Bool)

(assert (=> b!292228 (= e!181862 (< 0 (size!3176 (_1!2470 lt!122783))))))

(assert (= (and d!87456 res!133264) b!292228))

(assert (=> d!87456 m!380323))

(assert (=> d!87456 m!380323))

(declare-fun m!382421 () Bool)

(assert (=> d!87456 m!382421))

(declare-fun m!382423 () Bool)

(assert (=> d!87456 m!382423))

(assert (=> b!292228 m!378033))

(assert (=> b!290404 d!87456))

(declare-fun b!292229 () Bool)

(declare-fun e!181863 () Bool)

(assert (=> b!292229 (= e!181863 tp_is_empty!1859)))

(declare-fun b!292231 () Bool)

(declare-fun tp!106040 () Bool)

(assert (=> b!292231 (= e!181863 tp!106040)))

(declare-fun b!292232 () Bool)

(declare-fun tp!106041 () Bool)

(declare-fun tp!106038 () Bool)

(assert (=> b!292232 (= e!181863 (and tp!106041 tp!106038))))

(declare-fun b!292230 () Bool)

(declare-fun tp!106039 () Bool)

(declare-fun tp!106037 () Bool)

(assert (=> b!292230 (= e!181863 (and tp!106039 tp!106037))))

(assert (=> b!290517 (= tp!105865 e!181863)))

(assert (= (and b!290517 ((_ is ElementMatch!981) (reg!1310 (regex!757 (h!9351 rules!1920))))) b!292229))

(assert (= (and b!290517 ((_ is Concat!1761) (reg!1310 (regex!757 (h!9351 rules!1920))))) b!292230))

(assert (= (and b!290517 ((_ is Star!981) (reg!1310 (regex!757 (h!9351 rules!1920))))) b!292231))

(assert (= (and b!290517 ((_ is Union!981) (reg!1310 (regex!757 (h!9351 rules!1920))))) b!292232))

(declare-fun b!292235 () Bool)

(declare-fun e!181866 () Bool)

(assert (=> b!292235 (= e!181866 true)))

(declare-fun b!292234 () Bool)

(declare-fun e!181865 () Bool)

(assert (=> b!292234 (= e!181865 e!181866)))

(declare-fun b!292233 () Bool)

(declare-fun e!181864 () Bool)

(assert (=> b!292233 (= e!181864 e!181865)))

(assert (=> b!290174 e!181864))

(assert (= b!292234 b!292235))

(assert (= b!292233 b!292234))

(assert (= (and b!290174 ((_ is Cons!3954) (t!40596 rules!1920))) b!292233))

(assert (=> b!292235 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9966))))

(assert (=> b!292235 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9966))))

(declare-fun tp!106048 () Bool)

(declare-fun tp!106050 () Bool)

(declare-fun b!292244 () Bool)

(declare-fun e!181871 () Bool)

(assert (=> b!292244 (= e!181871 (and (inv!4895 (left!3269 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))))) tp!106048 (inv!4895 (right!3599 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))))) tp!106050))))

(declare-fun b!292246 () Bool)

(declare-fun e!181872 () Bool)

(declare-fun tp!106049 () Bool)

(assert (=> b!292246 (= e!181872 tp!106049)))

(declare-fun b!292245 () Bool)

(declare-fun inv!4901 (IArray!2673) Bool)

(assert (=> b!292245 (= e!181871 (and (inv!4901 (xs!3935 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))))) e!181872))))

(assert (=> b!290326 (= tp!105794 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170)))) e!181871))))

(assert (= (and b!290326 ((_ is Node!1336) (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))))) b!292244))

(assert (= b!292245 b!292246))

(assert (= (and b!290326 ((_ is Leaf!2054) (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (value!25890 separatorToken!170))))) b!292245))

(declare-fun m!382425 () Bool)

(assert (=> b!292244 m!382425))

(declare-fun m!382427 () Bool)

(assert (=> b!292244 m!382427))

(declare-fun m!382429 () Bool)

(assert (=> b!292245 m!382429))

(assert (=> b!290326 m!377963))

(declare-fun b!292247 () Bool)

(declare-fun e!181873 () Bool)

(assert (=> b!292247 (= e!181873 tp_is_empty!1859)))

(declare-fun b!292249 () Bool)

(declare-fun tp!106054 () Bool)

(assert (=> b!292249 (= e!181873 tp!106054)))

(declare-fun b!292250 () Bool)

(declare-fun tp!106055 () Bool)

(declare-fun tp!106052 () Bool)

(assert (=> b!292250 (= e!181873 (and tp!106055 tp!106052))))

(declare-fun b!292248 () Bool)

(declare-fun tp!106053 () Bool)

(declare-fun tp!106051 () Bool)

(assert (=> b!292248 (= e!181873 (and tp!106053 tp!106051))))

(assert (=> b!290533 (= tp!105878 e!181873)))

(assert (= (and b!290533 ((_ is ElementMatch!981) (reg!1310 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292247))

(assert (= (and b!290533 ((_ is Concat!1761) (reg!1310 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292248))

(assert (= (and b!290533 ((_ is Star!981) (reg!1310 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292249))

(assert (= (and b!290533 ((_ is Union!981) (reg!1310 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292250))

(declare-fun b!292251 () Bool)

(declare-fun e!181874 () Bool)

(assert (=> b!292251 (= e!181874 tp_is_empty!1859)))

(declare-fun b!292253 () Bool)

(declare-fun tp!106059 () Bool)

(assert (=> b!292253 (= e!181874 tp!106059)))

(declare-fun b!292254 () Bool)

(declare-fun tp!106060 () Bool)

(declare-fun tp!106057 () Bool)

(assert (=> b!292254 (= e!181874 (and tp!106060 tp!106057))))

(declare-fun b!292252 () Bool)

(declare-fun tp!106058 () Bool)

(declare-fun tp!106056 () Bool)

(assert (=> b!292252 (= e!181874 (and tp!106058 tp!106056))))

(assert (=> b!290534 (= tp!105879 e!181874)))

(assert (= (and b!290534 ((_ is ElementMatch!981) (regOne!2475 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292251))

(assert (= (and b!290534 ((_ is Concat!1761) (regOne!2475 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292252))

(assert (= (and b!290534 ((_ is Star!981) (regOne!2475 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292253))

(assert (= (and b!290534 ((_ is Union!981) (regOne!2475 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292254))

(declare-fun b!292255 () Bool)

(declare-fun e!181875 () Bool)

(assert (=> b!292255 (= e!181875 tp_is_empty!1859)))

(declare-fun b!292257 () Bool)

(declare-fun tp!106064 () Bool)

(assert (=> b!292257 (= e!181875 tp!106064)))

(declare-fun b!292258 () Bool)

(declare-fun tp!106065 () Bool)

(declare-fun tp!106062 () Bool)

(assert (=> b!292258 (= e!181875 (and tp!106065 tp!106062))))

(declare-fun b!292256 () Bool)

(declare-fun tp!106063 () Bool)

(declare-fun tp!106061 () Bool)

(assert (=> b!292256 (= e!181875 (and tp!106063 tp!106061))))

(assert (=> b!290534 (= tp!105876 e!181875)))

(assert (= (and b!290534 ((_ is ElementMatch!981) (regTwo!2475 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292255))

(assert (= (and b!290534 ((_ is Concat!1761) (regTwo!2475 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292256))

(assert (= (and b!290534 ((_ is Star!981) (regTwo!2475 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292257))

(assert (= (and b!290534 ((_ is Union!981) (regTwo!2475 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292258))

(declare-fun b!292261 () Bool)

(declare-fun e!181878 () Bool)

(assert (=> b!292261 (= e!181878 true)))

(declare-fun b!292260 () Bool)

(declare-fun e!181877 () Bool)

(assert (=> b!292260 (= e!181877 e!181878)))

(declare-fun b!292259 () Bool)

(declare-fun e!181876 () Bool)

(assert (=> b!292259 (= e!181876 e!181877)))

(assert (=> b!290452 e!181876))

(assert (= b!292260 b!292261))

(assert (= b!292259 b!292260))

(assert (= (and b!290452 ((_ is Cons!3954) (t!40596 rules!1920))) b!292259))

(assert (=> b!292261 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9986))))

(assert (=> b!292261 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9986))))

(declare-fun b!292262 () Bool)

(declare-fun e!181879 () Bool)

(assert (=> b!292262 (= e!181879 tp_is_empty!1859)))

(declare-fun b!292264 () Bool)

(declare-fun tp!106069 () Bool)

(assert (=> b!292264 (= e!181879 tp!106069)))

(declare-fun b!292265 () Bool)

(declare-fun tp!106070 () Bool)

(declare-fun tp!106067 () Bool)

(assert (=> b!292265 (= e!181879 (and tp!106070 tp!106067))))

(declare-fun b!292263 () Bool)

(declare-fun tp!106068 () Bool)

(declare-fun tp!106066 () Bool)

(assert (=> b!292263 (= e!181879 (and tp!106068 tp!106066))))

(assert (=> b!290516 (= tp!105864 e!181879)))

(assert (= (and b!290516 ((_ is ElementMatch!981) (regOne!2474 (regex!757 (h!9351 rules!1920))))) b!292262))

(assert (= (and b!290516 ((_ is Concat!1761) (regOne!2474 (regex!757 (h!9351 rules!1920))))) b!292263))

(assert (= (and b!290516 ((_ is Star!981) (regOne!2474 (regex!757 (h!9351 rules!1920))))) b!292264))

(assert (= (and b!290516 ((_ is Union!981) (regOne!2474 (regex!757 (h!9351 rules!1920))))) b!292265))

(declare-fun b!292266 () Bool)

(declare-fun e!181880 () Bool)

(assert (=> b!292266 (= e!181880 tp_is_empty!1859)))

(declare-fun b!292268 () Bool)

(declare-fun tp!106074 () Bool)

(assert (=> b!292268 (= e!181880 tp!106074)))

(declare-fun b!292269 () Bool)

(declare-fun tp!106075 () Bool)

(declare-fun tp!106072 () Bool)

(assert (=> b!292269 (= e!181880 (and tp!106075 tp!106072))))

(declare-fun b!292267 () Bool)

(declare-fun tp!106073 () Bool)

(declare-fun tp!106071 () Bool)

(assert (=> b!292267 (= e!181880 (and tp!106073 tp!106071))))

(assert (=> b!290516 (= tp!105862 e!181880)))

(assert (= (and b!290516 ((_ is ElementMatch!981) (regTwo!2474 (regex!757 (h!9351 rules!1920))))) b!292266))

(assert (= (and b!290516 ((_ is Concat!1761) (regTwo!2474 (regex!757 (h!9351 rules!1920))))) b!292267))

(assert (= (and b!290516 ((_ is Star!981) (regTwo!2474 (regex!757 (h!9351 rules!1920))))) b!292268))

(assert (= (and b!290516 ((_ is Union!981) (regTwo!2474 (regex!757 (h!9351 rules!1920))))) b!292269))

(declare-fun b!292270 () Bool)

(declare-fun e!181881 () Bool)

(assert (=> b!292270 (= e!181881 tp_is_empty!1859)))

(declare-fun b!292272 () Bool)

(declare-fun tp!106079 () Bool)

(assert (=> b!292272 (= e!181881 tp!106079)))

(declare-fun b!292273 () Bool)

(declare-fun tp!106080 () Bool)

(declare-fun tp!106077 () Bool)

(assert (=> b!292273 (= e!181881 (and tp!106080 tp!106077))))

(declare-fun b!292271 () Bool)

(declare-fun tp!106078 () Bool)

(declare-fun tp!106076 () Bool)

(assert (=> b!292271 (= e!181881 (and tp!106078 tp!106076))))

(assert (=> b!290525 (= tp!105872 e!181881)))

(assert (= (and b!290525 ((_ is ElementMatch!981) (regOne!2474 (regex!757 (rule!1360 separatorToken!170))))) b!292270))

(assert (= (and b!290525 ((_ is Concat!1761) (regOne!2474 (regex!757 (rule!1360 separatorToken!170))))) b!292271))

(assert (= (and b!290525 ((_ is Star!981) (regOne!2474 (regex!757 (rule!1360 separatorToken!170))))) b!292272))

(assert (= (and b!290525 ((_ is Union!981) (regOne!2474 (regex!757 (rule!1360 separatorToken!170))))) b!292273))

(declare-fun b!292274 () Bool)

(declare-fun e!181882 () Bool)

(assert (=> b!292274 (= e!181882 tp_is_empty!1859)))

(declare-fun b!292276 () Bool)

(declare-fun tp!106084 () Bool)

(assert (=> b!292276 (= e!181882 tp!106084)))

(declare-fun b!292277 () Bool)

(declare-fun tp!106085 () Bool)

(declare-fun tp!106082 () Bool)

(assert (=> b!292277 (= e!181882 (and tp!106085 tp!106082))))

(declare-fun b!292275 () Bool)

(declare-fun tp!106083 () Bool)

(declare-fun tp!106081 () Bool)

(assert (=> b!292275 (= e!181882 (and tp!106083 tp!106081))))

(assert (=> b!290525 (= tp!105870 e!181882)))

(assert (= (and b!290525 ((_ is ElementMatch!981) (regTwo!2474 (regex!757 (rule!1360 separatorToken!170))))) b!292274))

(assert (= (and b!290525 ((_ is Concat!1761) (regTwo!2474 (regex!757 (rule!1360 separatorToken!170))))) b!292275))

(assert (= (and b!290525 ((_ is Star!981) (regTwo!2474 (regex!757 (rule!1360 separatorToken!170))))) b!292276))

(assert (= (and b!290525 ((_ is Union!981) (regTwo!2474 (regex!757 (rule!1360 separatorToken!170))))) b!292277))

(declare-fun b!292278 () Bool)

(declare-fun e!181883 () Bool)

(declare-fun tp!106086 () Bool)

(assert (=> b!292278 (= e!181883 (and tp_is_empty!1859 tp!106086))))

(assert (=> b!290535 (= tp!105880 e!181883)))

(assert (= (and b!290535 ((_ is Cons!3953) (t!40595 (originalCharacters!800 (h!9352 tokens!465))))) b!292278))

(declare-fun b!292279 () Bool)

(declare-fun e!181884 () Bool)

(assert (=> b!292279 (= e!181884 tp_is_empty!1859)))

(declare-fun b!292281 () Bool)

(declare-fun tp!106090 () Bool)

(assert (=> b!292281 (= e!181884 tp!106090)))

(declare-fun b!292282 () Bool)

(declare-fun tp!106091 () Bool)

(declare-fun tp!106088 () Bool)

(assert (=> b!292282 (= e!181884 (and tp!106091 tp!106088))))

(declare-fun b!292280 () Bool)

(declare-fun tp!106089 () Bool)

(declare-fun tp!106087 () Bool)

(assert (=> b!292280 (= e!181884 (and tp!106089 tp!106087))))

(assert (=> b!290518 (= tp!105866 e!181884)))

(assert (= (and b!290518 ((_ is ElementMatch!981) (regOne!2475 (regex!757 (h!9351 rules!1920))))) b!292279))

(assert (= (and b!290518 ((_ is Concat!1761) (regOne!2475 (regex!757 (h!9351 rules!1920))))) b!292280))

(assert (= (and b!290518 ((_ is Star!981) (regOne!2475 (regex!757 (h!9351 rules!1920))))) b!292281))

(assert (= (and b!290518 ((_ is Union!981) (regOne!2475 (regex!757 (h!9351 rules!1920))))) b!292282))

(declare-fun b!292283 () Bool)

(declare-fun e!181885 () Bool)

(assert (=> b!292283 (= e!181885 tp_is_empty!1859)))

(declare-fun b!292285 () Bool)

(declare-fun tp!106095 () Bool)

(assert (=> b!292285 (= e!181885 tp!106095)))

(declare-fun b!292286 () Bool)

(declare-fun tp!106096 () Bool)

(declare-fun tp!106093 () Bool)

(assert (=> b!292286 (= e!181885 (and tp!106096 tp!106093))))

(declare-fun b!292284 () Bool)

(declare-fun tp!106094 () Bool)

(declare-fun tp!106092 () Bool)

(assert (=> b!292284 (= e!181885 (and tp!106094 tp!106092))))

(assert (=> b!290518 (= tp!105863 e!181885)))

(assert (= (and b!290518 ((_ is ElementMatch!981) (regTwo!2475 (regex!757 (h!9351 rules!1920))))) b!292283))

(assert (= (and b!290518 ((_ is Concat!1761) (regTwo!2475 (regex!757 (h!9351 rules!1920))))) b!292284))

(assert (= (and b!290518 ((_ is Star!981) (regTwo!2475 (regex!757 (h!9351 rules!1920))))) b!292285))

(assert (= (and b!290518 ((_ is Union!981) (regTwo!2475 (regex!757 (h!9351 rules!1920))))) b!292286))

(declare-fun b!292287 () Bool)

(declare-fun e!181886 () Bool)

(declare-fun tp!106097 () Bool)

(assert (=> b!292287 (= e!181886 (and tp_is_empty!1859 tp!106097))))

(assert (=> b!290523 (= tp!105869 e!181886)))

(assert (= (and b!290523 ((_ is Cons!3953) (t!40595 (originalCharacters!800 separatorToken!170)))) b!292287))

(declare-fun b!292290 () Bool)

(declare-fun b_free!10621 () Bool)

(declare-fun b_next!10621 () Bool)

(assert (=> b!292290 (= b_free!10621 (not b_next!10621))))

(declare-fun t!40949 () Bool)

(declare-fun tb!17297 () Bool)

(assert (=> (and b!292290 (= (toValue!1508 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40949) tb!17297))

(declare-fun result!21172 () Bool)

(assert (= result!21172 result!20932))

(assert (=> d!86580 t!40949))

(declare-fun tp!106100 () Bool)

(declare-fun b_and!23853 () Bool)

(assert (=> b!292290 (= tp!106100 (and (=> t!40949 result!21172) b_and!23853))))

(declare-fun b_free!10623 () Bool)

(declare-fun b_next!10623 () Bool)

(assert (=> b!292290 (= b_free!10623 (not b_next!10623))))

(declare-fun tb!17299 () Bool)

(declare-fun t!40951 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))) t!40951) tb!17299))

(declare-fun result!21174 () Bool)

(assert (= result!21174 result!21150))

(assert (=> d!87354 t!40951))

(declare-fun t!40953 () Bool)

(declare-fun tb!17301 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))) t!40953) tb!17301))

(declare-fun result!21176 () Bool)

(assert (= result!21176 result!21160))

(assert (=> d!87436 t!40953))

(declare-fun tb!17303 () Bool)

(declare-fun t!40955 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0))))) t!40955) tb!17303))

(declare-fun result!21178 () Bool)

(assert (= result!21178 result!20994))

(assert (=> d!87040 t!40955))

(declare-fun tb!17305 () Bool)

(declare-fun t!40957 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0))))) t!40957) tb!17305))

(declare-fun result!21180 () Bool)

(assert (= result!21180 result!20954))

(assert (=> d!86768 t!40957))

(declare-fun t!40959 () Bool)

(declare-fun tb!17307 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) t!40959) tb!17307))

(declare-fun result!21182 () Bool)

(assert (= result!21182 result!20846))

(assert (=> d!86384 t!40959))

(declare-fun tb!17309 () Bool)

(declare-fun t!40961 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465))))) t!40961) tb!17309))

(declare-fun result!21184 () Bool)

(assert (= result!21184 result!20854))

(assert (=> b!290503 t!40961))

(declare-fun tb!17311 () Bool)

(declare-fun t!40963 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))) t!40963) tb!17311))

(declare-fun result!21186 () Bool)

(assert (= result!21186 result!20974))

(assert (=> d!86992 t!40963))

(declare-fun t!40965 () Bool)

(declare-fun tb!17313 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40965) tb!17313))

(declare-fun result!21188 () Bool)

(assert (= result!21188 result!21004))

(assert (=> d!87090 t!40965))

(declare-fun tb!17315 () Bool)

(declare-fun t!40967 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) t!40967) tb!17315))

(declare-fun result!21190 () Bool)

(assert (= result!21190 result!21130))

(assert (=> d!87376 t!40967))

(assert (=> b!290462 t!40959))

(assert (=> d!86390 t!40961))

(declare-fun t!40969 () Bool)

(declare-fun tb!17317 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))) t!40969) tb!17317))

(declare-fun result!21192 () Bool)

(assert (= result!21192 result!21014))

(assert (=> d!87102 t!40969))

(declare-fun t!40971 () Bool)

(declare-fun tb!17319 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 call!16480)))) t!40971) tb!17319))

(declare-fun result!21194 () Bool)

(assert (= result!21194 result!20984))

(assert (=> d!87012 t!40971))

(assert (=> b!292041 t!40967))

(declare-fun tb!17321 () Bool)

(declare-fun t!40973 () Bool)

(assert (=> (and b!292290 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 call!16475)))) t!40973) tb!17321))

(declare-fun result!21196 () Bool)

(assert (= result!21196 result!21140))

(assert (=> d!87348 t!40973))

(declare-fun tp!106099 () Bool)

(declare-fun b_and!23855 () Bool)

(assert (=> b!292290 (= tp!106099 (and (=> t!40969 result!21192) (=> t!40971 result!21194) (=> t!40961 result!21184) (=> t!40963 result!21186) (=> t!40951 result!21174) (=> t!40955 result!21178) (=> t!40967 result!21190) (=> t!40973 result!21196) (=> t!40959 result!21182) (=> t!40957 result!21180) (=> t!40953 result!21176) (=> t!40965 result!21188) b_and!23855))))

(declare-fun e!181889 () Bool)

(assert (=> b!292290 (= e!181889 (and tp!106100 tp!106099))))

(declare-fun tp!106101 () Bool)

(declare-fun e!181888 () Bool)

(declare-fun b!292289 () Bool)

(assert (=> b!292289 (= e!181888 (and tp!106101 (inv!4888 (tag!973 (h!9351 (t!40596 (t!40596 rules!1920))))) (inv!4892 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) e!181889))))

(declare-fun b!292288 () Bool)

(declare-fun e!181890 () Bool)

(declare-fun tp!106098 () Bool)

(assert (=> b!292288 (= e!181890 (and e!181888 tp!106098))))

(assert (=> b!290558 (= tp!105904 e!181890)))

(assert (= b!292289 b!292290))

(assert (= b!292288 b!292289))

(assert (= (and b!290558 ((_ is Cons!3954) (t!40596 (t!40596 rules!1920)))) b!292288))

(declare-fun m!382431 () Bool)

(assert (=> b!292289 m!382431))

(declare-fun m!382433 () Bool)

(assert (=> b!292289 m!382433))

(declare-fun b!292293 () Bool)

(declare-fun e!181893 () Bool)

(assert (=> b!292293 (= e!181893 true)))

(declare-fun b!292292 () Bool)

(declare-fun e!181892 () Bool)

(assert (=> b!292292 (= e!181892 e!181893)))

(declare-fun b!292291 () Bool)

(declare-fun e!181891 () Bool)

(assert (=> b!292291 (= e!181891 e!181892)))

(assert (=> b!290001 e!181891))

(assert (= b!292292 b!292293))

(assert (= b!292291 b!292292))

(assert (= (and b!290001 ((_ is Cons!3954) (t!40596 rules!1920))) b!292291))

(assert (=> b!292293 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9957))))

(assert (=> b!292293 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9957))))

(declare-fun b!292294 () Bool)

(declare-fun e!181894 () Bool)

(assert (=> b!292294 (= e!181894 tp_is_empty!1859)))

(declare-fun b!292296 () Bool)

(declare-fun tp!106105 () Bool)

(assert (=> b!292296 (= e!181894 tp!106105)))

(declare-fun b!292297 () Bool)

(declare-fun tp!106106 () Bool)

(declare-fun tp!106103 () Bool)

(assert (=> b!292297 (= e!181894 (and tp!106106 tp!106103))))

(declare-fun b!292295 () Bool)

(declare-fun tp!106104 () Bool)

(declare-fun tp!106102 () Bool)

(assert (=> b!292295 (= e!181894 (and tp!106104 tp!106102))))

(assert (=> b!290532 (= tp!105877 e!181894)))

(assert (= (and b!290532 ((_ is ElementMatch!981) (regOne!2474 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292294))

(assert (= (and b!290532 ((_ is Concat!1761) (regOne!2474 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292295))

(assert (= (and b!290532 ((_ is Star!981) (regOne!2474 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292296))

(assert (= (and b!290532 ((_ is Union!981) (regOne!2474 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292297))

(declare-fun b!292298 () Bool)

(declare-fun e!181895 () Bool)

(assert (=> b!292298 (= e!181895 tp_is_empty!1859)))

(declare-fun b!292300 () Bool)

(declare-fun tp!106110 () Bool)

(assert (=> b!292300 (= e!181895 tp!106110)))

(declare-fun b!292301 () Bool)

(declare-fun tp!106111 () Bool)

(declare-fun tp!106108 () Bool)

(assert (=> b!292301 (= e!181895 (and tp!106111 tp!106108))))

(declare-fun b!292299 () Bool)

(declare-fun tp!106109 () Bool)

(declare-fun tp!106107 () Bool)

(assert (=> b!292299 (= e!181895 (and tp!106109 tp!106107))))

(assert (=> b!290532 (= tp!105875 e!181895)))

(assert (= (and b!290532 ((_ is ElementMatch!981) (regTwo!2474 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292298))

(assert (= (and b!290532 ((_ is Concat!1761) (regTwo!2474 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292299))

(assert (= (and b!290532 ((_ is Star!981) (regTwo!2474 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292300))

(assert (= (and b!290532 ((_ is Union!981) (regTwo!2474 (regex!757 (rule!1360 (h!9352 tokens!465)))))) b!292301))

(declare-fun b!292302 () Bool)

(declare-fun tp!106114 () Bool)

(declare-fun tp!106112 () Bool)

(declare-fun e!181896 () Bool)

(assert (=> b!292302 (= e!181896 (and (inv!4895 (left!3269 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))))) tp!106112 (inv!4895 (right!3599 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))))) tp!106114))))

(declare-fun b!292304 () Bool)

(declare-fun e!181897 () Bool)

(declare-fun tp!106113 () Bool)

(assert (=> b!292304 (= e!181897 tp!106113)))

(declare-fun b!292303 () Bool)

(assert (=> b!292303 (= e!181896 (and (inv!4901 (xs!3935 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))))) e!181897))))

(assert (=> b!290327 (= tp!105795 (and (inv!4895 (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465))))) e!181896))))

(assert (= (and b!290327 ((_ is Node!1336) (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))))) b!292302))

(assert (= b!292303 b!292304))

(assert (= (and b!290327 ((_ is Leaf!2054) (c!54877 (dynLambda!2111 (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (value!25890 (h!9352 tokens!465)))))) b!292303))

(declare-fun m!382435 () Bool)

(assert (=> b!292302 m!382435))

(declare-fun m!382437 () Bool)

(assert (=> b!292302 m!382437))

(declare-fun m!382439 () Bool)

(assert (=> b!292303 m!382439))

(assert (=> b!290327 m!377977))

(declare-fun b!292305 () Bool)

(declare-fun e!181898 () Bool)

(assert (=> b!292305 (= e!181898 tp_is_empty!1859)))

(declare-fun b!292307 () Bool)

(declare-fun tp!106118 () Bool)

(assert (=> b!292307 (= e!181898 tp!106118)))

(declare-fun b!292308 () Bool)

(declare-fun tp!106119 () Bool)

(declare-fun tp!106116 () Bool)

(assert (=> b!292308 (= e!181898 (and tp!106119 tp!106116))))

(declare-fun b!292306 () Bool)

(declare-fun tp!106117 () Bool)

(declare-fun tp!106115 () Bool)

(assert (=> b!292306 (= e!181898 (and tp!106117 tp!106115))))

(assert (=> b!290559 (= tp!105907 e!181898)))

(assert (= (and b!290559 ((_ is ElementMatch!981) (regex!757 (h!9351 (t!40596 rules!1920))))) b!292305))

(assert (= (and b!290559 ((_ is Concat!1761) (regex!757 (h!9351 (t!40596 rules!1920))))) b!292306))

(assert (= (and b!290559 ((_ is Star!981) (regex!757 (h!9351 (t!40596 rules!1920))))) b!292307))

(assert (= (and b!290559 ((_ is Union!981) (regex!757 (h!9351 (t!40596 rules!1920))))) b!292308))

(declare-fun b!292309 () Bool)

(declare-fun e!181899 () Bool)

(assert (=> b!292309 (= e!181899 tp_is_empty!1859)))

(declare-fun b!292311 () Bool)

(declare-fun tp!106123 () Bool)

(assert (=> b!292311 (= e!181899 tp!106123)))

(declare-fun b!292312 () Bool)

(declare-fun tp!106124 () Bool)

(declare-fun tp!106121 () Bool)

(assert (=> b!292312 (= e!181899 (and tp!106124 tp!106121))))

(declare-fun b!292310 () Bool)

(declare-fun tp!106122 () Bool)

(declare-fun tp!106120 () Bool)

(assert (=> b!292310 (= e!181899 (and tp!106122 tp!106120))))

(assert (=> b!290548 (= tp!105894 e!181899)))

(assert (= (and b!290548 ((_ is ElementMatch!981) (regex!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) b!292309))

(assert (= (and b!290548 ((_ is Concat!1761) (regex!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) b!292310))

(assert (= (and b!290548 ((_ is Star!981) (regex!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) b!292311))

(assert (= (and b!290548 ((_ is Union!981) (regex!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) b!292312))

(declare-fun b!292315 () Bool)

(declare-fun e!181902 () Bool)

(assert (=> b!292315 (= e!181902 true)))

(declare-fun b!292314 () Bool)

(declare-fun e!181901 () Bool)

(assert (=> b!292314 (= e!181901 e!181902)))

(declare-fun b!292313 () Bool)

(declare-fun e!181900 () Bool)

(assert (=> b!292313 (= e!181900 e!181901)))

(assert (=> b!290439 e!181900))

(assert (= b!292314 b!292315))

(assert (= b!292313 b!292314))

(assert (= (and b!290439 ((_ is Cons!3954) (t!40596 rules!1920))) b!292313))

(assert (=> b!292315 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9985))))

(assert (=> b!292315 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9985))))

(declare-fun b!292318 () Bool)

(declare-fun e!181905 () Bool)

(assert (=> b!292318 (= e!181905 true)))

(declare-fun b!292317 () Bool)

(declare-fun e!181904 () Bool)

(assert (=> b!292317 (= e!181904 e!181905)))

(declare-fun b!292316 () Bool)

(declare-fun e!181903 () Bool)

(assert (=> b!292316 (= e!181903 e!181904)))

(assert (=> b!290319 e!181903))

(assert (= b!292317 b!292318))

(assert (= b!292316 b!292317))

(assert (= (and b!290319 ((_ is Cons!3954) (t!40596 rules!1920))) b!292316))

(assert (=> b!292318 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9978))))

(assert (=> b!292318 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920))))) (dynLambda!2106 order!3135 lambda!9978))))

(declare-fun b!292319 () Bool)

(declare-fun e!181906 () Bool)

(declare-fun tp!106125 () Bool)

(assert (=> b!292319 (= e!181906 (and tp_is_empty!1859 tp!106125))))

(assert (=> b!290547 (= tp!105895 e!181906)))

(assert (= (and b!290547 ((_ is Cons!3953) (originalCharacters!800 (h!9352 (t!40597 tokens!465))))) b!292319))

(declare-fun b!292320 () Bool)

(declare-fun e!181907 () Bool)

(assert (=> b!292320 (= e!181907 tp_is_empty!1859)))

(declare-fun b!292322 () Bool)

(declare-fun tp!106129 () Bool)

(assert (=> b!292322 (= e!181907 tp!106129)))

(declare-fun b!292323 () Bool)

(declare-fun tp!106130 () Bool)

(declare-fun tp!106127 () Bool)

(assert (=> b!292323 (= e!181907 (and tp!106130 tp!106127))))

(declare-fun b!292321 () Bool)

(declare-fun tp!106128 () Bool)

(declare-fun tp!106126 () Bool)

(assert (=> b!292321 (= e!181907 (and tp!106128 tp!106126))))

(assert (=> b!290526 (= tp!105873 e!181907)))

(assert (= (and b!290526 ((_ is ElementMatch!981) (reg!1310 (regex!757 (rule!1360 separatorToken!170))))) b!292320))

(assert (= (and b!290526 ((_ is Concat!1761) (reg!1310 (regex!757 (rule!1360 separatorToken!170))))) b!292321))

(assert (= (and b!290526 ((_ is Star!981) (reg!1310 (regex!757 (rule!1360 separatorToken!170))))) b!292322))

(assert (= (and b!290526 ((_ is Union!981) (reg!1310 (regex!757 (rule!1360 separatorToken!170))))) b!292323))

(declare-fun b!292324 () Bool)

(declare-fun e!181908 () Bool)

(assert (=> b!292324 (= e!181908 tp_is_empty!1859)))

(declare-fun b!292326 () Bool)

(declare-fun tp!106134 () Bool)

(assert (=> b!292326 (= e!181908 tp!106134)))

(declare-fun b!292327 () Bool)

(declare-fun tp!106135 () Bool)

(declare-fun tp!106132 () Bool)

(assert (=> b!292327 (= e!181908 (and tp!106135 tp!106132))))

(declare-fun b!292325 () Bool)

(declare-fun tp!106133 () Bool)

(declare-fun tp!106131 () Bool)

(assert (=> b!292325 (= e!181908 (and tp!106133 tp!106131))))

(assert (=> b!290527 (= tp!105874 e!181908)))

(assert (= (and b!290527 ((_ is ElementMatch!981) (regOne!2475 (regex!757 (rule!1360 separatorToken!170))))) b!292324))

(assert (= (and b!290527 ((_ is Concat!1761) (regOne!2475 (regex!757 (rule!1360 separatorToken!170))))) b!292325))

(assert (= (and b!290527 ((_ is Star!981) (regOne!2475 (regex!757 (rule!1360 separatorToken!170))))) b!292326))

(assert (= (and b!290527 ((_ is Union!981) (regOne!2475 (regex!757 (rule!1360 separatorToken!170))))) b!292327))

(declare-fun b!292328 () Bool)

(declare-fun e!181909 () Bool)

(assert (=> b!292328 (= e!181909 tp_is_empty!1859)))

(declare-fun b!292330 () Bool)

(declare-fun tp!106139 () Bool)

(assert (=> b!292330 (= e!181909 tp!106139)))

(declare-fun b!292331 () Bool)

(declare-fun tp!106140 () Bool)

(declare-fun tp!106137 () Bool)

(assert (=> b!292331 (= e!181909 (and tp!106140 tp!106137))))

(declare-fun b!292329 () Bool)

(declare-fun tp!106138 () Bool)

(declare-fun tp!106136 () Bool)

(assert (=> b!292329 (= e!181909 (and tp!106138 tp!106136))))

(assert (=> b!290527 (= tp!105871 e!181909)))

(assert (= (and b!290527 ((_ is ElementMatch!981) (regTwo!2475 (regex!757 (rule!1360 separatorToken!170))))) b!292328))

(assert (= (and b!290527 ((_ is Concat!1761) (regTwo!2475 (regex!757 (rule!1360 separatorToken!170))))) b!292329))

(assert (= (and b!290527 ((_ is Star!981) (regTwo!2475 (regex!757 (rule!1360 separatorToken!170))))) b!292330))

(assert (= (and b!290527 ((_ is Union!981) (regTwo!2475 (regex!757 (rule!1360 separatorToken!170))))) b!292331))

(declare-fun b!292335 () Bool)

(declare-fun b_free!10625 () Bool)

(declare-fun b_next!10625 () Bool)

(assert (=> b!292335 (= b_free!10625 (not b_next!10625))))

(declare-fun tb!17323 () Bool)

(declare-fun t!40975 () Bool)

(assert (=> (and b!292335 (= (toValue!1508 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toValue!1508 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40975) tb!17323))

(declare-fun result!21198 () Bool)

(assert (= result!21198 result!20932))

(assert (=> d!86580 t!40975))

(declare-fun b_and!23857 () Bool)

(declare-fun tp!106141 () Bool)

(assert (=> b!292335 (= tp!106141 (and (=> t!40975 result!21198) b_and!23857))))

(declare-fun b_free!10627 () Bool)

(declare-fun b_next!10627 () Bool)

(assert (=> b!292335 (= b_free!10627 (not b_next!10627))))

(declare-fun t!40977 () Bool)

(declare-fun tb!17325 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (Cons!3955 (h!9352 tokens!465) Nil!3955)))))) t!40977) tb!17325))

(declare-fun result!21200 () Bool)

(assert (= result!21200 result!21150))

(assert (=> d!87354 t!40977))

(declare-fun t!40979 () Bool)

(declare-fun tb!17327 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54987 call!16474 (ite c!54988 separatorToken!170 call!16475)))))) t!40979) tb!17327))

(declare-fun result!21202 () Bool)

(assert (= result!21202 result!21160))

(assert (=> d!87436 t!40979))

(declare-fun t!40981 () Bool)

(declare-fun tb!17329 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122472 0))))) t!40981) tb!17329))

(declare-fun result!21204 () Bool)

(assert (= result!21204 result!20994))

(assert (=> d!87040 t!40981))

(declare-fun t!40983 () Bool)

(declare-fun tb!17331 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 lt!122463 0))))) t!40983) tb!17331))

(declare-fun result!21206 () Bool)

(assert (= result!21206 result!20954))

(assert (=> d!86768 t!40983))

(declare-fun t!40985 () Bool)

(declare-fun tb!17333 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 separatorToken!170)))) t!40985) tb!17333))

(declare-fun result!21208 () Bool)

(assert (= result!21208 result!20846))

(assert (=> d!86384 t!40985))

(declare-fun t!40987 () Bool)

(declare-fun tb!17335 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465))))) t!40987) tb!17335))

(declare-fun result!21210 () Bool)

(assert (= result!21210 result!20854))

(assert (=> b!290503 t!40987))

(declare-fun t!40989 () Bool)

(declare-fun tb!17337 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0))))) t!40989) tb!17337))

(declare-fun result!21212 () Bool)

(assert (= result!21212 result!20974))

(assert (=> d!86992 t!40989))

(declare-fun tb!17339 () Bool)

(declare-fun t!40991 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (_1!2471 (get!1336 lt!122824)))))) t!40991) tb!17339))

(declare-fun result!21214 () Bool)

(assert (= result!21214 result!21004))

(assert (=> d!87090 t!40991))

(declare-fun t!40993 () Bool)

(declare-fun tb!17341 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465)))))) t!40993) tb!17341))

(declare-fun result!21216 () Bool)

(assert (= result!21216 result!21130))

(assert (=> d!87376 t!40993))

(assert (=> b!290462 t!40985))

(assert (=> d!86390 t!40987))

(declare-fun t!40995 () Bool)

(declare-fun tb!17343 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (ite c!54996 call!16479 (ite c!54997 separatorToken!170 call!16480)))))) t!40995) tb!17343))

(declare-fun result!21218 () Bool)

(assert (= result!21218 result!21014))

(assert (=> d!87102 t!40995))

(declare-fun t!40997 () Bool)

(declare-fun tb!17345 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 call!16480)))) t!40997) tb!17345))

(declare-fun result!21220 () Bool)

(assert (= result!21220 result!20984))

(assert (=> d!87012 t!40997))

(assert (=> b!292041 t!40993))

(declare-fun t!40999 () Bool)

(declare-fun tb!17347 () Bool)

(assert (=> (and b!292335 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 call!16475)))) t!40999) tb!17347))

(declare-fun result!21222 () Bool)

(assert (= result!21222 result!21140))

(assert (=> d!87348 t!40999))

(declare-fun tp!106143 () Bool)

(declare-fun b_and!23859 () Bool)

(assert (=> b!292335 (= tp!106143 (and (=> t!40993 result!21216) (=> t!40999 result!21222) (=> t!40985 result!21208) (=> t!40987 result!21210) (=> t!40983 result!21206) (=> t!40991 result!21214) (=> t!40989 result!21212) (=> t!40977 result!21200) (=> t!40981 result!21204) (=> t!40997 result!21220) (=> t!40995 result!21218) (=> t!40979 result!21202) b_and!23859))))

(declare-fun e!181913 () Bool)

(assert (=> b!290546 (= tp!105892 e!181913)))

(declare-fun tp!106142 () Bool)

(declare-fun b!292332 () Bool)

(declare-fun e!181911 () Bool)

(assert (=> b!292332 (= e!181913 (and (inv!4891 (h!9352 (t!40597 (t!40597 tokens!465)))) e!181911 tp!106142))))

(declare-fun e!181915 () Bool)

(declare-fun tp!106145 () Bool)

(declare-fun b!292333 () Bool)

(assert (=> b!292333 (= e!181911 (and (inv!21 (value!25890 (h!9352 (t!40597 (t!40597 tokens!465))))) e!181915 tp!106145))))

(declare-fun e!181912 () Bool)

(assert (=> b!292335 (= e!181912 (and tp!106141 tp!106143))))

(declare-fun b!292334 () Bool)

(declare-fun tp!106144 () Bool)

(assert (=> b!292334 (= e!181915 (and tp!106144 (inv!4888 (tag!973 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (inv!4892 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) e!181912))))

(assert (= b!292334 b!292335))

(assert (= b!292333 b!292334))

(assert (= b!292332 b!292333))

(assert (= (and b!290546 ((_ is Cons!3955) (t!40597 (t!40597 tokens!465)))) b!292332))

(declare-fun m!382441 () Bool)

(assert (=> b!292332 m!382441))

(declare-fun m!382443 () Bool)

(assert (=> b!292333 m!382443))

(declare-fun m!382445 () Bool)

(assert (=> b!292334 m!382445))

(declare-fun m!382447 () Bool)

(assert (=> b!292334 m!382447))

(declare-fun b!292338 () Bool)

(declare-fun e!181918 () Bool)

(assert (=> b!292338 (= e!181918 true)))

(declare-fun b!292337 () Bool)

(declare-fun e!181917 () Bool)

(assert (=> b!292337 (= e!181917 e!181918)))

(declare-fun b!292336 () Bool)

(declare-fun e!181916 () Bool)

(assert (=> b!292336 (= e!181916 e!181917)))

(assert (=> b!290528 e!181916))

(assert (= b!292337 b!292338))

(assert (= b!292336 b!292337))

(assert (= (and b!290528 ((_ is Cons!3954) (t!40596 (t!40596 rules!1920)))) b!292336))

(assert (=> b!292338 (< (dynLambda!2105 order!3133 (toValue!1508 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920)))))) (dynLambda!2106 order!3135 lambda!9952))))

(assert (=> b!292338 (< (dynLambda!2107 order!3137 (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920)))))) (dynLambda!2106 order!3135 lambda!9952))))

(declare-fun b_lambda!9827 () Bool)

(assert (= b_lambda!9817 (or b!289856 b_lambda!9827)))

(declare-fun bs!33401 () Bool)

(declare-fun d!87458 () Bool)

(assert (= bs!33401 (and d!87458 b!289856)))

(assert (=> bs!33401 (= (dynLambda!2110 lambda!9951 (h!9352 (t!40597 tokens!465))) (not (isSeparator!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))))

(assert (=> b!292059 d!87458))

(declare-fun b_lambda!9829 () Bool)

(assert (= b_lambda!9763 (or b!289852 b_lambda!9829)))

(assert (=> d!87006 d!86448))

(declare-fun b_lambda!9831 () Bool)

(assert (= b_lambda!9759 (or b!290313 b_lambda!9831)))

(declare-fun bs!33402 () Bool)

(declare-fun d!87460 () Bool)

(assert (= bs!33402 (and d!87460 b!290313)))

(assert (=> bs!33402 (= (dynLambda!2110 lambda!9978 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)) (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (apply!850 (seqFromList!879 (t!40597 tokens!465)) 0)))))

(assert (=> bs!33402 m!377903))

(declare-fun m!382449 () Bool)

(assert (=> bs!33402 m!382449))

(assert (=> d!86982 d!87460))

(declare-fun b_lambda!9833 () Bool)

(assert (= b_lambda!9819 (or b!290164 b_lambda!9833)))

(declare-fun bs!33403 () Bool)

(declare-fun d!87462 () Bool)

(assert (= bs!33403 (and d!87462 b!290164)))

(assert (=> bs!33403 (= (dynLambda!2110 lambda!9966 (h!9352 (t!40597 tokens!465))) (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (h!9352 (t!40597 tokens!465))))))

(declare-fun m!382451 () Bool)

(assert (=> bs!33403 m!382451))

(assert (=> d!87366 d!87462))

(declare-fun b_lambda!9835 () Bool)

(assert (= b_lambda!9823 (or b!290442 b_lambda!9835)))

(declare-fun bs!33404 () Bool)

(declare-fun d!87464 () Bool)

(assert (= bs!33404 (and d!87464 b!290442)))

(assert (=> bs!33404 (= (dynLambda!2110 lambda!9986 (h!9352 tokens!465)) (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (h!9352 tokens!465)))))

(assert (=> bs!33404 m!377127))

(assert (=> d!87382 d!87464))

(declare-fun b_lambda!9837 () Bool)

(assert (= b_lambda!9821 (or (and b!292290 b_free!10623 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!289862 b_free!10587 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!290560 b_free!10611 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!289860 b_free!10595 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!290549 b_free!10607) (and b!289857 b_free!10591 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!292335 b_free!10627 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) b_lambda!9837)))

(declare-fun b_lambda!9839 () Bool)

(assert (= b_lambda!9765 (or b!289852 b_lambda!9839)))

(assert (=> b!291400 d!86448))

(declare-fun b_lambda!9841 () Bool)

(assert (= b_lambda!9737 (or d!86240 b_lambda!9841)))

(declare-fun bs!33405 () Bool)

(declare-fun d!87466 () Bool)

(assert (= bs!33405 (and d!87466 d!86240)))

(assert (=> bs!33405 (= (dynLambda!2110 lambda!9957 (h!9352 (list!1658 lt!122463))) (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (h!9352 (list!1658 lt!122463))))))

(assert (=> bs!33405 m!381179))

(assert (=> b!290742 d!87466))

(declare-fun b_lambda!9843 () Bool)

(assert (= b_lambda!9811 (or (and b!292290 b_free!10623 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 (t!40596 rules!1920))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!289862 b_free!10587 (= (toChars!1367 (transformation!757 (rule!1360 separatorToken!170))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!290560 b_free!10611 (= (toChars!1367 (transformation!757 (h!9351 (t!40596 rules!1920)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!289860 b_free!10595 (= (toChars!1367 (transformation!757 (h!9351 rules!1920))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!290549 b_free!10607) (and b!289857 b_free!10591 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 tokens!465)))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) (and b!292335 b_free!10627 (= (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 (t!40597 tokens!465)))))) (toChars!1367 (transformation!757 (rule!1360 (h!9352 (t!40597 tokens!465))))))) b_lambda!9843)))

(declare-fun b_lambda!9845 () Bool)

(assert (= b_lambda!9753 (or b!290433 b_lambda!9845)))

(declare-fun bs!33406 () Bool)

(declare-fun d!87468 () Bool)

(assert (= bs!33406 (and d!87468 b!290433)))

(assert (=> bs!33406 (= (dynLambda!2110 lambda!9985 (apply!850 lt!122463 0)) (rulesProduceIndividualToken!392 thiss!17480 rules!1920 (apply!850 lt!122463 0)))))

(assert (=> bs!33406 m!378077))

(declare-fun m!382453 () Bool)

(assert (=> bs!33406 m!382453))

(assert (=> d!86800 d!87468))

(check-sat (not d!87030) (not b!292325) (not b!292230) (not b!290889) (not bm!16504) (not bm!16500) (not b!291002) (not b!292271) (not b!291218) (not d!86744) (not d!87056) (not b_lambda!9767) (not tb!17287) (not b!291507) (not b_next!10593) (not b!292100) (not d!87200) (not d!87070) (not b!290574) (not b!290741) (not b!291101) (not b!291334) (not b!292172) (not b!291476) (not d!87452) (not b!292156) (not b!291277) (not b!292102) (not b_lambda!9725) (not b!291505) (not b!292113) (not b!292153) (not bm!16580) (not b_next!10589) (not b!292041) (not tb!17115) (not b!292281) (not d!86852) (not b_lambda!9715) (not b!291408) b_and!23647 (not b_lambda!9813) (not tb!17145) (not b!291401) (not d!86672) (not b!291240) (not d!86928) (not b!290879) (not b!292162) (not b_lambda!9751) (not b!292086) (not b!292336) (not b!292310) (not b!291213) (not d!87370) (not b!292322) (not b!291428) (not b!291287) (not d!86998) (not d!87416) (not b!291066) (not b!291717) (not b!291198) (not d!86678) (not b!292332) (not b!292160) (not b!292259) (not d!87146) (not b!292257) (not d!86946) (not b!292203) (not b!292046) (not d!87094) (not d!86898) (not b!291207) (not b!291004) (not d!87012) (not b!291642) (not b!291392) (not b!291298) (not b!291961) (not d!86908) (not b!292263) (not b_lambda!9833) (not b!292073) (not bm!16527) (not b!292103) (not b!290769) (not b!292076) (not d!87366) (not d!87090) (not b!291440) (not b!292202) (not d!86800) (not d!87388) (not b!290942) (not b!292253) (not b!292216) (not b!291512) (not bm!16525) (not d!86574) b_and!23857 (not b!291267) (not b!292264) (not b!291415) (not b!290766) (not tb!17267) (not tb!17105) (not b!291106) (not b!290764) (not b!292204) (not b!292093) (not b!291960) (not b!292249) (not b!292201) (not tb!17277) (not b!291266) (not b!290915) (not d!87354) (not b_next!10627) (not b!291487) (not b!291426) (not b_lambda!9841) (not d!86736) (not b!291368) (not b!291394) (not d!86718) (not d!86984) (not b!291444) (not b!291235) (not b!292312) (not b!292067) (not b!292169) (not bm!16507) (not d!87350) (not b!291099) (not b!292295) (not d!87390) b_and!23843 (not d!87082) (not b!291305) (not b!291331) (not b!292256) (not d!87332) (not b_next!10595) (not b!292044) (not b!291294) (not b!291488) (not d!86936) (not b_next!10585) (not b!291216) (not b!292228) (not b!292223) (not d!86592) (not d!86968) (not b!292289) (not b!291171) (not b!292111) (not bs!33405) (not d!86544) (not b_lambda!9719) (not b!291740) (not d!86882) (not b!291220) (not d!86910) (not b!290804) (not d!86538) (not b!291215) (not b!292065) (not b!292302) (not d!86892) (not b!291437) (not d!86890) (not b!291237) (not d!86688) (not d!87454) (not bm!16578) (not b!291416) (not b!290784) (not b!292304) (not b!291204) (not b!290713) (not b!291395) (not d!87022) (not b!291494) (not d!87424) (not b!291268) (not b!292068) (not b!291378) (not d!86874) (not b!292170) (not b!292206) (not b!292316) (not b!292089) (not b!290917) (not d!86468) (not b!291397) (not b!290712) (not d!86774) (not d!86464) (not b!291339) (not b!291188) (not b!291203) (not d!87412) (not b!291480) (not d!86702) (not b!291325) (not bm!16506) (not b!292215) (not b!292245) (not b!290724) (not tb!17085) (not tb!17125) (not bm!16529) (not b!292176) (not b!291483) (not b!292252) (not b_lambda!9835) (not b!291236) (not b!291463) (not b!291295) (not b_next!10605) (not b!292048) (not b!290883) (not d!87396) (not b!292043) (not b!292233) (not b_lambda!9773) (not b!291722) (not b_lambda!9829) (not b!291741) (not b!291275) (not b!291164) (not b!292049) b_and!23859 (not d!87046) (not b!291644) (not b_lambda!9827) (not b!292313) (not b!291104) (not b!292110) (not d!86700) (not d!87400) (not b!291302) (not bm!16544) (not b!292042) (not b!291328) (not d!87358) (not b!291001) (not d!86756) (not b!291521) (not b!292291) (not b_lambda!9831) (not b!292106) (not b!291352) (not b!290934) (not d!87380) (not b!292167) (not b!291238) (not b!292278) (not b!291443) (not d!87024) (not d!86584) (not b!291965) (not b!291341) (not b!291534) (not bm!16547) (not b!291501) (not b!292054) (not d!87382) (not d!87426) (not d!87088) (not b!291195) (not d!86870) (not d!87192) (not b!292269) (not d!86682) (not b!292306) (not bm!16524) (not d!86814) (not b!292164) (not d!87432) (not b!291337) (not bm!16542) (not b!292275) (not bm!16523) (not b!292327) (not b!291471) (not b!291475) (not b!290762) (not b!292078) (not b!292077) (not b!291201) (not b!291319) (not b_next!10607) (not b!292329) (not b!292254) (not d!86690) (not b!292296) (not b!292311) (not b_next!10621) (not d!87456) (not b!291091) (not b!291289) (not bm!16583) (not b!292321) (not d!86764) (not b!292212) (not bm!16541) (not b!292071) (not b!291292) (not d!86894) (not b!292053) (not b!291177) (not d!86954) (not d!86556) (not b!291516) (not d!87060) (not b!290884) (not d!87360) (not b!292154) (not d!86866) (not tb!17257) (not b!291441) (not b_lambda!9771) b_and!23653 (not b!291265) (not b!292248) (not b_next!10591) (not b!291964) (not d!86888) (not b!292079) (not d!86906) (not bs!33404) (not d!86918) (not b!292211) (not d!87376) (not b!292070) (not b!290935) (not b!291442) (not d!87368) (not b!292199) (not bm!16540) (not d!86706) (not b!291007) (not b!292219) (not b!291465) (not b!290967) (not d!86594) (not b!291297) (not d!87434) (not b!291452) (not b!291008) (not d!86546) (not bm!16513) (not b!292072) (not b!291316) (not b!292299) (not d!86986) (not b!291411) (not d!87042) (not b!291402) (not d!86864) (not d!86600) (not b!292166) (not b!291329) (not b!290945) (not d!86972) (not b!291513) (not b!290999) (not b!292157) (not d!86676) (not b!291410) (not b!291515) (not b!290933) (not d!86944) b_and!23851 (not d!87032) (not b!292056) (not b!291222) (not b!290893) (not bm!16518) (not b!292227) (not b!292096) (not d!86942) (not d!86904) (not d!87068) (not d!86768) (not d!87374) (not b!291721) (not b!292047) (not b!292330) (not d!87346) (not b!290961) (not b!292280) (not b!292083) (not b!291399) (not d!86948) (not b!291489) (not d!86950) (not b!291492) (not b!292287) (not d!87040) (not d!86860) (not b_lambda!9825) (not b!292060) (not d!87096) (not d!86576) (not b!292308) (not b!292207) (not b!291185) (not b!291520) (not b!292051) (not d!86992) (not b!292105) (not b!291643) (not d!87344) (not b!291509) (not b!291098) (not b!292057) (not d!86710) (not b!290882) (not d!87100) (not d!87098) (not b!292179) (not b!290962) (not d!87442) (not b!292244) (not b!291719) (not d!86598) (not d!87054) (not d!86470) (not d!86554) (not d!87092) (not b!292334) (not d!86960) (not b!292297) (not b!292198) (not b!291340) (not bm!16509) (not d!87148) (not d!87408) (not b!292265) b_and!23649 (not b!290968) (not b!292173) (not b!290943) (not b!292267) (not d!86808) (not b!290946) (not d!87436) (not d!87384) (not b_next!10623) (not b!290998) (not b!292205) (not d!86966) (not b!291165) (not bm!16526) (not d!87438) (not d!87072) (not b!292080) (not b!290890) (not d!87406) (not b!291217) (not b!291100) (not b!291300) (not b!291304) (not b!292282) (not b!292300) (not b!291000) (not d!87038) (not b!291288) (not b_next!10609) (not b!290802) (not d!86988) (not b_lambda!9741) (not b!290880) (not b!292258) (not b!291308) (not b!291438) (not b!290704) (not d!87066) (not d!86740) (not b_lambda!9845) (not b_lambda!9717) (not tb!17065) (not b_next!10625) (not b!291344) (not b!291162) (not d!87446) (not b_next!10611) (not b!291379) (not b!290703) (not b!291284) (not d!86926) (not b!292114) (not bm!16516) (not b!291074) (not b!292284) (not d!87026) (not b!292331) (not b_lambda!9761) (not d!87020) (not b!291214) (not d!87062) (not d!86880) (not bm!16503) (not d!87422) (not b!291493) (not b!291335) tp_is_empty!1859 (not b_lambda!9843) (not d!87106) (not b!291446) b_and!23849 (not b!292323) (not b!291486) (not d!86686) (not b!291072) (not d!86714) (not d!87034) (not b!292288) (not b!292161) (not d!87348) (not b!290801) (not b!291005) b_and!23845 (not b!291003) (not b!291330) (not b!291464) (not b!291193) (not bs!33402) (not bm!16543) (not b!291026) (not d!86806) (not b!291239) (not d!86970) (not b!292268) (not b!291332) b_and!23651 (not b!290887) (not b!292232) (not d!86924) (not b!290768) (not b!292085) (not d!87076) (not b!291436) (not b!292231) b_and!23645 (not b!291424) (not d!86758) (not b!290931) (not b!292115) (not b!291163) (not b!291085) (not b!292101) (not b!290743) (not b!291479) (not bm!16587) (not b!291716) (not b!291338) (not b!292301) (not d!87394) (not b!292177) (not b!292326) (not b!292307) (not d!86684) (not bm!16519) (not b!291519) (not b!290948) (not d!86914) (not bs!33406) (not b!292063) (not d!86952) (not b!291194) (not b!290788) (not d!87028) (not b!291299) (not b!291310) (not d!86902) (not d!86930) (not d!87000) (not b!290326) (not b!291434) (not b!291470) (not b!291484) (not b!292074) (not d!87402) (not b!291205) (not b_lambda!9769) (not d!86958) (not bm!16532) (not b!291333) (not b!292171) (not b!290965) (not b!291388) (not b!292276) (not d!86780) (not b!291523) (not b!290950) (not b!290944) (not bm!16581) (not b_next!10587) (not b_lambda!9815) (not b!291263) (not d!86732) (not b!291250) (not bm!16515) (not b_lambda!9721) (not bm!16522) (not b!291221) (not b!290941) b_and!23853 (not b!290971) b_and!23855 (not b!290702) (not d!86696) (not b!291108) (not d!87190) (not d!86922) (not b!292209) (not b!291307) (not tb!17135) (not b!292277) (not b!291414) (not bs!33403) (not b!291206) (not b!292303) (not b!291393) (not b!291370) (not b!291029) (not d!87064) (not b!291301) (not d!86956) (not b!291490) (not b!292099) (not d!86920) (not bm!16584) (not b!292151) (not b!291418) (not b!292224) (not b!291503) (not d!86596) (not b!291303) (not b!291118) (not b!292250) (not b!292333) (not b_lambda!9839) (not b_lambda!9837) (not d!87450) (not d!86830) (not b!291346) (not b!292218) (not b!291413) (not b!291327) (not d!87048) b_and!23847 (not b!292098) (not b!292246) (not d!87352) (not b!291348) (not d!87188) (not d!86962) (not bm!16501) (not b!291518) (not d!86884) (not d!86912) (not d!86728) (not d!86982) (not b!292273) (not b_lambda!9723) (not b!290327) (not b!290878) (not d!87102) (not bm!16510) (not bm!16530) (not b!291197) (not b!290949) (not b!292145) (not b!291376) (not b!290786) (not d!86466) (not b!292095) (not b!292064) (not d!87086) (not d!86742) (not b!292107) (not b!292286) (not b!292272) (not b!290706) (not b!291510) (not b!292285) (not b!291963) (not d!86872) (not b!291306) (not d!86534) (not b!292319))
(check-sat (not b_next!10593) b_and!23857 (not b_next!10627) (not b_next!10605) b_and!23859 b_and!23851 (not b_next!10609) b_and!23849 b_and!23645 b_and!23847 b_and!23647 (not b_next!10589) (not b_next!10595) b_and!23843 (not b_next!10585) (not b_next!10607) (not b_next!10621) b_and!23653 (not b_next!10591) b_and!23649 (not b_next!10623) (not b_next!10625) (not b_next!10611) b_and!23845 b_and!23651 (not b_next!10587) b_and!23853 b_and!23855)
