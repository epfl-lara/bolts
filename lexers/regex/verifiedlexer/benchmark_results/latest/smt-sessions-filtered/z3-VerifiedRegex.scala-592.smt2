; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18078 () Bool)

(assert start!18078)

(declare-fun b!167511 () Bool)

(declare-fun b_free!6369 () Bool)

(declare-fun b_next!6369 () Bool)

(assert (=> b!167511 (= b_free!6369 (not b_next!6369))))

(declare-fun tp!83388 () Bool)

(declare-fun b_and!10849 () Bool)

(assert (=> b!167511 (= tp!83388 b_and!10849)))

(declare-fun b_free!6371 () Bool)

(declare-fun b_next!6371 () Bool)

(assert (=> b!167511 (= b_free!6371 (not b_next!6371))))

(declare-fun tp!83377 () Bool)

(declare-fun b_and!10851 () Bool)

(assert (=> b!167511 (= tp!83377 b_and!10851)))

(declare-fun b!167512 () Bool)

(declare-fun b_free!6373 () Bool)

(declare-fun b_next!6373 () Bool)

(assert (=> b!167512 (= b_free!6373 (not b_next!6373))))

(declare-fun tp!83378 () Bool)

(declare-fun b_and!10853 () Bool)

(assert (=> b!167512 (= tp!83378 b_and!10853)))

(declare-fun b_free!6375 () Bool)

(declare-fun b_next!6375 () Bool)

(assert (=> b!167512 (= b_free!6375 (not b_next!6375))))

(declare-fun tp!83381 () Bool)

(declare-fun b_and!10855 () Bool)

(assert (=> b!167512 (= tp!83381 b_and!10855)))

(declare-fun b!167506 () Bool)

(declare-fun b_free!6377 () Bool)

(declare-fun b_next!6377 () Bool)

(assert (=> b!167506 (= b_free!6377 (not b_next!6377))))

(declare-fun tp!83386 () Bool)

(declare-fun b_and!10857 () Bool)

(assert (=> b!167506 (= tp!83386 b_and!10857)))

(declare-fun b_free!6379 () Bool)

(declare-fun b_next!6379 () Bool)

(assert (=> b!167506 (= b_free!6379 (not b_next!6379))))

(declare-fun tp!83383 () Bool)

(declare-fun b_and!10859 () Bool)

(assert (=> b!167506 (= tp!83383 b_and!10859)))

(declare-fun bs!16248 () Bool)

(declare-fun b!167496 () Bool)

(declare-fun b!167523 () Bool)

(assert (= bs!16248 (and b!167496 b!167523)))

(declare-fun lambda!4676 () Int)

(declare-fun lambda!4675 () Int)

(assert (=> bs!16248 (not (= lambda!4676 lambda!4675))))

(declare-fun b!167534 () Bool)

(declare-fun e!101120 () Bool)

(assert (=> b!167534 (= e!101120 true)))

(declare-fun b!167533 () Bool)

(declare-fun e!101119 () Bool)

(assert (=> b!167533 (= e!101119 e!101120)))

(declare-fun b!167532 () Bool)

(declare-fun e!101118 () Bool)

(assert (=> b!167532 (= e!101118 e!101119)))

(assert (=> b!167496 e!101118))

(assert (= b!167533 b!167534))

(assert (= b!167532 b!167533))

(declare-datatypes ((List!2857 0))(
  ( (Nil!2847) (Cons!2847 (h!8244 (_ BitVec 16)) (t!26835 List!2857)) )
))
(declare-datatypes ((TokenValue!529 0))(
  ( (FloatLiteralValue!1058 (text!4148 List!2857)) (TokenValueExt!528 (__x!2545 Int)) (Broken!2645 (value!18739 List!2857)) (Object!538) (End!529) (Def!529) (Underscore!529) (Match!529) (Else!529) (Error!529) (Case!529) (If!529) (Extends!529) (Abstract!529) (Class!529) (Val!529) (DelimiterValue!1058 (del!589 List!2857)) (KeywordValue!535 (value!18740 List!2857)) (CommentValue!1058 (value!18741 List!2857)) (WhitespaceValue!1058 (value!18742 List!2857)) (IndentationValue!529 (value!18743 List!2857)) (String!3724) (Int32!529) (Broken!2646 (value!18744 List!2857)) (Boolean!530) (Unit!2451) (OperatorValue!532 (op!589 List!2857)) (IdentifierValue!1058 (value!18745 List!2857)) (IdentifierValue!1059 (value!18746 List!2857)) (WhitespaceValue!1059 (value!18747 List!2857)) (True!1058) (False!1058) (Broken!2647 (value!18748 List!2857)) (Broken!2648 (value!18749 List!2857)) (True!1059) (RightBrace!529) (RightBracket!529) (Colon!529) (Null!529) (Comma!529) (LeftBracket!529) (False!1059) (LeftBrace!529) (ImaginaryLiteralValue!529 (text!4149 List!2857)) (StringLiteralValue!1587 (value!18750 List!2857)) (EOFValue!529 (value!18751 List!2857)) (IdentValue!529 (value!18752 List!2857)) (DelimiterValue!1059 (value!18753 List!2857)) (DedentValue!529 (value!18754 List!2857)) (NewLineValue!529 (value!18755 List!2857)) (IntegerValue!1587 (value!18756 (_ BitVec 32)) (text!4150 List!2857)) (IntegerValue!1588 (value!18757 Int) (text!4151 List!2857)) (Times!529) (Or!529) (Equal!529) (Minus!529) (Broken!2649 (value!18758 List!2857)) (And!529) (Div!529) (LessEqual!529) (Mod!529) (Concat!1260) (Not!529) (Plus!529) (SpaceValue!529 (value!18759 List!2857)) (IntegerValue!1589 (value!18760 Int) (text!4152 List!2857)) (StringLiteralValue!1588 (text!4153 List!2857)) (FloatLiteralValue!1059 (text!4154 List!2857)) (BytesLiteralValue!529 (value!18761 List!2857)) (CommentValue!1059 (value!18762 List!2857)) (StringLiteralValue!1589 (value!18763 List!2857)) (ErrorTokenValue!529 (msg!590 List!2857)) )
))
(declare-datatypes ((C!2384 0))(
  ( (C!2385 (val!1078 Int)) )
))
(declare-datatypes ((List!2858 0))(
  ( (Nil!2848) (Cons!2848 (h!8245 C!2384) (t!26836 List!2858)) )
))
(declare-datatypes ((IArray!1673 0))(
  ( (IArray!1674 (innerList!894 List!2858)) )
))
(declare-datatypes ((Conc!836 0))(
  ( (Node!836 (left!2160 Conc!836) (right!2490 Conc!836) (csize!1902 Int) (cheight!1047 Int)) (Leaf!1429 (xs!3431 IArray!1673) (csize!1903 Int)) (Empty!836) )
))
(declare-datatypes ((BalanceConc!1680 0))(
  ( (BalanceConc!1681 (c!33394 Conc!836)) )
))
(declare-datatypes ((TokenValueInjection!830 0))(
  ( (TokenValueInjection!831 (toValue!1170 Int) (toChars!1029 Int)) )
))
(declare-datatypes ((Regex!731 0))(
  ( (ElementMatch!731 (c!33395 C!2384)) (Concat!1261 (regOne!1974 Regex!731) (regTwo!1974 Regex!731)) (EmptyExpr!731) (Star!731 (reg!1060 Regex!731)) (EmptyLang!731) (Union!731 (regOne!1975 Regex!731) (regTwo!1975 Regex!731)) )
))
(declare-datatypes ((String!3725 0))(
  ( (String!3726 (value!18764 String)) )
))
(declare-datatypes ((Rule!814 0))(
  ( (Rule!815 (regex!507 Regex!731) (tag!685 String!3725) (isSeparator!507 Bool) (transformation!507 TokenValueInjection!830)) )
))
(declare-datatypes ((List!2859 0))(
  ( (Nil!2849) (Cons!2849 (h!8246 Rule!814) (t!26837 List!2859)) )
))
(declare-fun rules!1920 () List!2859)

(get-info :version)

(assert (= (and b!167496 ((_ is Cons!2849) rules!1920)) b!167532))

(declare-fun order!1501 () Int)

(declare-fun order!1503 () Int)

(declare-fun dynLambda!1047 (Int Int) Int)

(declare-fun dynLambda!1048 (Int Int) Int)

(assert (=> b!167534 (< (dynLambda!1047 order!1501 (toValue!1170 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4676))))

(declare-fun order!1505 () Int)

(declare-fun dynLambda!1049 (Int Int) Int)

(assert (=> b!167534 (< (dynLambda!1049 order!1505 (toChars!1029 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4676))))

(assert (=> b!167496 true))

(declare-fun e!101108 () Bool)

(declare-fun e!101101 () Bool)

(assert (=> b!167496 (= e!101108 e!101101)))

(declare-fun res!75689 () Bool)

(assert (=> b!167496 (=> res!75689 e!101101)))

(declare-datatypes ((Token!758 0))(
  ( (Token!759 (value!18765 TokenValue!529) (rule!1014 Rule!814) (size!2377 Int) (originalCharacters!550 List!2858)) )
))
(declare-datatypes ((List!2860 0))(
  ( (Nil!2850) (Cons!2850 (h!8247 Token!758) (t!26838 List!2860)) )
))
(declare-fun tokens!465 () List!2860)

(declare-datatypes ((LexerInterface!393 0))(
  ( (LexerInterfaceExt!390 (__x!2546 Int)) (Lexer!391) )
))
(declare-fun thiss!17480 () LexerInterface!393)

(declare-datatypes ((tuple2!2720 0))(
  ( (tuple2!2721 (_1!1576 Token!758) (_2!1576 BalanceConc!1680)) )
))
(declare-datatypes ((Option!289 0))(
  ( (None!288) (Some!288 (v!13713 tuple2!2720)) )
))
(declare-fun isDefined!140 (Option!289) Bool)

(declare-fun maxPrefixZipperSequence!86 (LexerInterface!393 List!2859 BalanceConc!1680) Option!289)

(declare-fun seqFromList!391 (List!2858) BalanceConc!1680)

(assert (=> b!167496 (= res!75689 (not (isDefined!140 (maxPrefixZipperSequence!86 thiss!17480 rules!1920 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))))

(declare-datatypes ((Unit!2452 0))(
  ( (Unit!2453) )
))
(declare-fun lt!52296 () Unit!2452)

(declare-fun forallContained!74 (List!2860 Int Token!758) Unit!2452)

(assert (=> b!167496 (= lt!52296 (forallContained!74 tokens!465 lambda!4676 (h!8247 tokens!465)))))

(declare-fun lt!52290 () List!2858)

(assert (=> b!167496 (= lt!52290 (originalCharacters!550 (h!8247 tokens!465)))))

(declare-fun b!167498 () Bool)

(declare-fun e!101110 () Bool)

(declare-fun lt!52297 () List!2858)

(declare-fun lt!52294 () List!2858)

(declare-fun ++!648 (List!2858 List!2858) List!2858)

(assert (=> b!167498 (= e!101110 (not (= lt!52297 (++!648 lt!52290 lt!52294))))))

(declare-fun b!167499 () Bool)

(declare-fun e!101098 () Bool)

(declare-fun e!101094 () Bool)

(assert (=> b!167499 (= e!101098 (not e!101094))))

(declare-fun res!75687 () Bool)

(assert (=> b!167499 (=> res!75687 e!101094)))

(declare-fun separatorToken!170 () Token!758)

(declare-fun list!1033 (BalanceConc!1680) List!2858)

(declare-datatypes ((IArray!1675 0))(
  ( (IArray!1676 (innerList!895 List!2860)) )
))
(declare-datatypes ((Conc!837 0))(
  ( (Node!837 (left!2161 Conc!837) (right!2491 Conc!837) (csize!1904 Int) (cheight!1048 Int)) (Leaf!1430 (xs!3432 IArray!1675) (csize!1905 Int)) (Empty!837) )
))
(declare-datatypes ((BalanceConc!1682 0))(
  ( (BalanceConc!1683 (c!33396 Conc!837)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!76 (LexerInterface!393 List!2859 BalanceConc!1682 Token!758 Int) BalanceConc!1680)

(declare-fun seqFromList!392 (List!2860) BalanceConc!1682)

(assert (=> b!167499 (= res!75687 (not (= lt!52294 (list!1033 (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 (seqFromList!392 (t!26838 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!52293 () List!2858)

(declare-fun lt!52299 () List!2858)

(assert (=> b!167499 (= lt!52293 lt!52299)))

(declare-fun lt!52288 () List!2858)

(assert (=> b!167499 (= lt!52299 (++!648 lt!52290 lt!52288))))

(declare-fun lt!52291 () List!2858)

(assert (=> b!167499 (= lt!52293 (++!648 (++!648 lt!52290 lt!52291) lt!52294))))

(declare-fun lt!52295 () Unit!2452)

(declare-fun lemmaConcatAssociativity!192 (List!2858 List!2858 List!2858) Unit!2452)

(assert (=> b!167499 (= lt!52295 (lemmaConcatAssociativity!192 lt!52290 lt!52291 lt!52294))))

(declare-fun charsOf!162 (Token!758) BalanceConc!1680)

(assert (=> b!167499 (= lt!52290 (list!1033 (charsOf!162 (h!8247 tokens!465))))))

(assert (=> b!167499 (= lt!52288 (++!648 lt!52291 lt!52294))))

(declare-fun printWithSeparatorTokenWhenNeededList!86 (LexerInterface!393 List!2859 List!2860 Token!758) List!2858)

(assert (=> b!167499 (= lt!52294 (printWithSeparatorTokenWhenNeededList!86 thiss!17480 rules!1920 (t!26838 tokens!465) separatorToken!170))))

(assert (=> b!167499 (= lt!52291 (list!1033 (charsOf!162 separatorToken!170)))))

(declare-fun b!167500 () Bool)

(declare-fun res!75682 () Bool)

(assert (=> b!167500 (=> res!75682 e!101108)))

(declare-fun rulesProduceIndividualToken!142 (LexerInterface!393 List!2859 Token!758) Bool)

(assert (=> b!167500 (= res!75682 (not (rulesProduceIndividualToken!142 thiss!17480 rules!1920 (h!8247 tokens!465))))))

(declare-fun e!101099 () Bool)

(declare-fun tp!83380 () Bool)

(declare-fun e!101109 () Bool)

(declare-fun b!167501 () Bool)

(declare-fun inv!3672 (String!3725) Bool)

(declare-fun inv!3675 (TokenValueInjection!830) Bool)

(assert (=> b!167501 (= e!101109 (and tp!83380 (inv!3672 (tag!685 (rule!1014 separatorToken!170))) (inv!3675 (transformation!507 (rule!1014 separatorToken!170))) e!101099))))

(declare-fun b!167502 () Bool)

(declare-fun e!101092 () Bool)

(declare-fun e!101093 () Bool)

(declare-fun tp!83387 () Bool)

(assert (=> b!167502 (= e!101092 (and e!101093 tp!83387))))

(declare-fun b!167503 () Bool)

(declare-fun res!75677 () Bool)

(declare-fun e!101096 () Bool)

(assert (=> b!167503 (=> (not res!75677) (not e!101096))))

(declare-fun rulesInvariant!359 (LexerInterface!393 List!2859) Bool)

(assert (=> b!167503 (= res!75677 (rulesInvariant!359 thiss!17480 rules!1920))))

(declare-fun e!101097 () Bool)

(declare-fun e!101107 () Bool)

(declare-fun b!167504 () Bool)

(declare-fun tp!83389 () Bool)

(declare-fun inv!21 (TokenValue!529) Bool)

(assert (=> b!167504 (= e!101097 (and (inv!21 (value!18765 (h!8247 tokens!465))) e!101107 tp!83389))))

(declare-fun tp!83384 () Bool)

(declare-fun e!101090 () Bool)

(declare-fun b!167505 () Bool)

(assert (=> b!167505 (= e!101107 (and tp!83384 (inv!3672 (tag!685 (rule!1014 (h!8247 tokens!465)))) (inv!3675 (transformation!507 (rule!1014 (h!8247 tokens!465)))) e!101090))))

(assert (=> b!167506 (= e!101090 (and tp!83386 tp!83383))))

(declare-fun b!167497 () Bool)

(declare-fun res!75680 () Bool)

(declare-fun e!101100 () Bool)

(assert (=> b!167497 (=> (not res!75680) (not e!101100))))

(assert (=> b!167497 (= res!75680 (rulesProduceIndividualToken!142 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!75683 () Bool)

(assert (=> start!18078 (=> (not res!75683) (not e!101096))))

(assert (=> start!18078 (= res!75683 ((_ is Lexer!391) thiss!17480))))

(assert (=> start!18078 e!101096))

(assert (=> start!18078 true))

(assert (=> start!18078 e!101092))

(declare-fun e!101105 () Bool)

(declare-fun inv!3676 (Token!758) Bool)

(assert (=> start!18078 (and (inv!3676 separatorToken!170) e!101105)))

(declare-fun e!101102 () Bool)

(assert (=> start!18078 e!101102))

(declare-fun b!167507 () Bool)

(declare-fun res!75686 () Bool)

(assert (=> b!167507 (=> res!75686 e!101094)))

(assert (=> b!167507 (= res!75686 e!101110)))

(declare-fun res!75679 () Bool)

(assert (=> b!167507 (=> (not res!75679) (not e!101110))))

(assert (=> b!167507 (= res!75679 (not (= lt!52297 lt!52299)))))

(declare-fun b!167508 () Bool)

(declare-fun res!75684 () Bool)

(assert (=> b!167508 (=> (not res!75684) (not e!101100))))

(assert (=> b!167508 (= res!75684 (isSeparator!507 (rule!1014 separatorToken!170)))))

(declare-fun b!167509 () Bool)

(assert (=> b!167509 (= e!101100 e!101098)))

(declare-fun res!75688 () Bool)

(assert (=> b!167509 (=> (not res!75688) (not e!101098))))

(declare-fun lt!52289 () List!2858)

(assert (=> b!167509 (= res!75688 (= lt!52297 lt!52289))))

(declare-fun lt!52302 () BalanceConc!1682)

(assert (=> b!167509 (= lt!52289 (list!1033 (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 lt!52302 separatorToken!170 0)))))

(assert (=> b!167509 (= lt!52297 (printWithSeparatorTokenWhenNeededList!86 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!167510 () Bool)

(assert (=> b!167510 (= e!101094 e!101108)))

(declare-fun res!75675 () Bool)

(assert (=> b!167510 (=> res!75675 e!101108)))

(declare-fun lt!52298 () List!2858)

(declare-fun lt!52300 () List!2858)

(assert (=> b!167510 (= res!75675 (or (not (= lt!52298 lt!52300)) (not (= lt!52300 lt!52290)) (not (= lt!52298 lt!52290))))))

(declare-fun printList!77 (LexerInterface!393 List!2860) List!2858)

(assert (=> b!167510 (= lt!52300 (printList!77 thiss!17480 (Cons!2850 (h!8247 tokens!465) Nil!2850)))))

(declare-fun lt!52301 () BalanceConc!1680)

(assert (=> b!167510 (= lt!52298 (list!1033 lt!52301))))

(declare-fun lt!52292 () BalanceConc!1682)

(declare-fun printTailRec!87 (LexerInterface!393 BalanceConc!1682 Int BalanceConc!1680) BalanceConc!1680)

(assert (=> b!167510 (= lt!52301 (printTailRec!87 thiss!17480 lt!52292 0 (BalanceConc!1681 Empty!836)))))

(declare-fun print!124 (LexerInterface!393 BalanceConc!1682) BalanceConc!1680)

(assert (=> b!167510 (= lt!52301 (print!124 thiss!17480 lt!52292))))

(declare-fun singletonSeq!59 (Token!758) BalanceConc!1682)

(assert (=> b!167510 (= lt!52292 (singletonSeq!59 (h!8247 tokens!465)))))

(declare-fun e!101095 () Bool)

(assert (=> b!167511 (= e!101095 (and tp!83388 tp!83377))))

(assert (=> b!167512 (= e!101099 (and tp!83378 tp!83381))))

(declare-fun b!167513 () Bool)

(declare-fun res!75678 () Bool)

(assert (=> b!167513 (=> (not res!75678) (not e!101100))))

(assert (=> b!167513 (= res!75678 ((_ is Cons!2850) tokens!465))))

(declare-fun b!167514 () Bool)

(declare-fun tp!83379 () Bool)

(assert (=> b!167514 (= e!101102 (and (inv!3676 (h!8247 tokens!465)) e!101097 tp!83379))))

(declare-fun b!167515 () Bool)

(declare-fun res!75681 () Bool)

(assert (=> b!167515 (=> (not res!75681) (not e!101098))))

(assert (=> b!167515 (= res!75681 (= (list!1033 (seqFromList!391 lt!52297)) lt!52289))))

(declare-fun b!167516 () Bool)

(declare-fun res!75685 () Bool)

(assert (=> b!167516 (=> (not res!75685) (not e!101096))))

(declare-fun isEmpty!1179 (List!2859) Bool)

(assert (=> b!167516 (= res!75685 (not (isEmpty!1179 rules!1920)))))

(declare-fun b!167517 () Bool)

(declare-fun rulesValidInductive!112 (LexerInterface!393 List!2859) Bool)

(assert (=> b!167517 (= e!101101 (rulesValidInductive!112 thiss!17480 rules!1920))))

(declare-fun b!167518 () Bool)

(declare-fun tp!83385 () Bool)

(assert (=> b!167518 (= e!101105 (and (inv!21 (value!18765 separatorToken!170)) e!101109 tp!83385))))

(declare-fun b!167519 () Bool)

(declare-fun res!75690 () Bool)

(assert (=> b!167519 (=> res!75690 e!101108)))

(declare-fun isEmpty!1180 (BalanceConc!1682) Bool)

(declare-datatypes ((tuple2!2722 0))(
  ( (tuple2!2723 (_1!1577 BalanceConc!1682) (_2!1577 BalanceConc!1680)) )
))
(declare-fun lex!193 (LexerInterface!393 List!2859 BalanceConc!1680) tuple2!2722)

(assert (=> b!167519 (= res!75690 (isEmpty!1180 (_1!1577 (lex!193 thiss!17480 rules!1920 (seqFromList!391 lt!52290)))))))

(declare-fun tp!83382 () Bool)

(declare-fun b!167520 () Bool)

(assert (=> b!167520 (= e!101093 (and tp!83382 (inv!3672 (tag!685 (h!8246 rules!1920))) (inv!3675 (transformation!507 (h!8246 rules!1920))) e!101095))))

(declare-fun b!167521 () Bool)

(assert (=> b!167521 (= e!101096 e!101100)))

(declare-fun res!75673 () Bool)

(assert (=> b!167521 (=> (not res!75673) (not e!101100))))

(declare-fun rulesProduceEachTokenIndividually!185 (LexerInterface!393 List!2859 BalanceConc!1682) Bool)

(assert (=> b!167521 (= res!75673 (rulesProduceEachTokenIndividually!185 thiss!17480 rules!1920 lt!52302))))

(assert (=> b!167521 (= lt!52302 (seqFromList!392 tokens!465))))

(declare-fun b!167522 () Bool)

(declare-fun res!75674 () Bool)

(assert (=> b!167522 (=> (not res!75674) (not e!101100))))

(declare-fun sepAndNonSepRulesDisjointChars!96 (List!2859 List!2859) Bool)

(assert (=> b!167522 (= res!75674 (sepAndNonSepRulesDisjointChars!96 rules!1920 rules!1920))))

(declare-fun res!75676 () Bool)

(assert (=> b!167523 (=> (not res!75676) (not e!101100))))

(declare-fun forall!545 (List!2860 Int) Bool)

(assert (=> b!167523 (= res!75676 (forall!545 tokens!465 lambda!4675))))

(assert (= (and start!18078 res!75683) b!167516))

(assert (= (and b!167516 res!75685) b!167503))

(assert (= (and b!167503 res!75677) b!167521))

(assert (= (and b!167521 res!75673) b!167497))

(assert (= (and b!167497 res!75680) b!167508))

(assert (= (and b!167508 res!75684) b!167523))

(assert (= (and b!167523 res!75676) b!167522))

(assert (= (and b!167522 res!75674) b!167513))

(assert (= (and b!167513 res!75678) b!167509))

(assert (= (and b!167509 res!75688) b!167515))

(assert (= (and b!167515 res!75681) b!167499))

(assert (= (and b!167499 (not res!75687)) b!167507))

(assert (= (and b!167507 res!75679) b!167498))

(assert (= (and b!167507 (not res!75686)) b!167510))

(assert (= (and b!167510 (not res!75675)) b!167500))

(assert (= (and b!167500 (not res!75682)) b!167519))

(assert (= (and b!167519 (not res!75690)) b!167496))

(assert (= (and b!167496 (not res!75689)) b!167517))

(assert (= b!167520 b!167511))

(assert (= b!167502 b!167520))

(assert (= (and start!18078 ((_ is Cons!2849) rules!1920)) b!167502))

(assert (= b!167501 b!167512))

(assert (= b!167518 b!167501))

(assert (= start!18078 b!167518))

(assert (= b!167505 b!167506))

(assert (= b!167504 b!167505))

(assert (= b!167514 b!167504))

(assert (= (and start!18078 ((_ is Cons!2850) tokens!465)) b!167514))

(declare-fun m!162431 () Bool)

(assert (=> b!167515 m!162431))

(assert (=> b!167515 m!162431))

(declare-fun m!162433 () Bool)

(assert (=> b!167515 m!162433))

(declare-fun m!162435 () Bool)

(assert (=> b!167521 m!162435))

(declare-fun m!162437 () Bool)

(assert (=> b!167521 m!162437))

(declare-fun m!162439 () Bool)

(assert (=> b!167517 m!162439))

(declare-fun m!162441 () Bool)

(assert (=> b!167519 m!162441))

(assert (=> b!167519 m!162441))

(declare-fun m!162443 () Bool)

(assert (=> b!167519 m!162443))

(declare-fun m!162445 () Bool)

(assert (=> b!167519 m!162445))

(declare-fun m!162447 () Bool)

(assert (=> b!167499 m!162447))

(declare-fun m!162449 () Bool)

(assert (=> b!167499 m!162449))

(declare-fun m!162451 () Bool)

(assert (=> b!167499 m!162451))

(assert (=> b!167499 m!162449))

(declare-fun m!162453 () Bool)

(assert (=> b!167499 m!162453))

(declare-fun m!162455 () Bool)

(assert (=> b!167499 m!162455))

(declare-fun m!162457 () Bool)

(assert (=> b!167499 m!162457))

(declare-fun m!162459 () Bool)

(assert (=> b!167499 m!162459))

(assert (=> b!167499 m!162455))

(declare-fun m!162461 () Bool)

(assert (=> b!167499 m!162461))

(declare-fun m!162463 () Bool)

(assert (=> b!167499 m!162463))

(assert (=> b!167499 m!162447))

(declare-fun m!162465 () Bool)

(assert (=> b!167499 m!162465))

(declare-fun m!162467 () Bool)

(assert (=> b!167499 m!162467))

(assert (=> b!167499 m!162467))

(declare-fun m!162469 () Bool)

(assert (=> b!167499 m!162469))

(assert (=> b!167499 m!162465))

(declare-fun m!162471 () Bool)

(assert (=> b!167499 m!162471))

(declare-fun m!162473 () Bool)

(assert (=> b!167498 m!162473))

(declare-fun m!162475 () Bool)

(assert (=> b!167504 m!162475))

(declare-fun m!162477 () Bool)

(assert (=> b!167509 m!162477))

(assert (=> b!167509 m!162477))

(declare-fun m!162479 () Bool)

(assert (=> b!167509 m!162479))

(declare-fun m!162481 () Bool)

(assert (=> b!167509 m!162481))

(declare-fun m!162483 () Bool)

(assert (=> b!167496 m!162483))

(assert (=> b!167496 m!162483))

(declare-fun m!162485 () Bool)

(assert (=> b!167496 m!162485))

(assert (=> b!167496 m!162485))

(declare-fun m!162487 () Bool)

(assert (=> b!167496 m!162487))

(declare-fun m!162489 () Bool)

(assert (=> b!167496 m!162489))

(declare-fun m!162491 () Bool)

(assert (=> b!167520 m!162491))

(declare-fun m!162493 () Bool)

(assert (=> b!167520 m!162493))

(declare-fun m!162495 () Bool)

(assert (=> b!167505 m!162495))

(declare-fun m!162497 () Bool)

(assert (=> b!167505 m!162497))

(declare-fun m!162499 () Bool)

(assert (=> start!18078 m!162499))

(declare-fun m!162501 () Bool)

(assert (=> b!167518 m!162501))

(declare-fun m!162503 () Bool)

(assert (=> b!167523 m!162503))

(declare-fun m!162505 () Bool)

(assert (=> b!167522 m!162505))

(declare-fun m!162507 () Bool)

(assert (=> b!167503 m!162507))

(declare-fun m!162509 () Bool)

(assert (=> b!167497 m!162509))

(declare-fun m!162511 () Bool)

(assert (=> b!167501 m!162511))

(declare-fun m!162513 () Bool)

(assert (=> b!167501 m!162513))

(declare-fun m!162515 () Bool)

(assert (=> b!167514 m!162515))

(declare-fun m!162517 () Bool)

(assert (=> b!167516 m!162517))

(declare-fun m!162519 () Bool)

(assert (=> b!167510 m!162519))

(declare-fun m!162521 () Bool)

(assert (=> b!167510 m!162521))

(declare-fun m!162523 () Bool)

(assert (=> b!167510 m!162523))

(declare-fun m!162525 () Bool)

(assert (=> b!167510 m!162525))

(declare-fun m!162527 () Bool)

(assert (=> b!167510 m!162527))

(declare-fun m!162529 () Bool)

(assert (=> b!167500 m!162529))

(check-sat b_and!10851 (not b!167502) (not b!167517) (not b_next!6377) (not b!167499) (not b!167521) b_and!10853 (not b!167505) (not b!167520) (not b!167518) (not b!167503) (not b_next!6375) b_and!10859 (not b!167515) (not b_next!6371) b_and!10857 b_and!10849 (not b!167523) (not b!167522) (not b!167496) (not b!167497) (not b!167510) (not b!167498) (not b!167500) (not b!167501) (not b_next!6373) b_and!10855 (not b!167532) (not b!167504) (not b!167519) (not b!167509) (not b_next!6369) (not b!167514) (not start!18078) (not b_next!6379) (not b!167516))
(check-sat b_and!10851 (not b_next!6375) b_and!10859 (not b_next!6377) b_and!10849 b_and!10853 (not b_next!6369) (not b_next!6379) (not b_next!6371) b_and!10857 (not b_next!6373) b_and!10855)
(get-model)

(declare-fun d!42031 () Bool)

(declare-fun res!75706 () Bool)

(declare-fun e!101128 () Bool)

(assert (=> d!42031 (=> res!75706 e!101128)))

(assert (=> d!42031 (= res!75706 (not ((_ is Cons!2849) rules!1920)))))

(assert (=> d!42031 (= (sepAndNonSepRulesDisjointChars!96 rules!1920 rules!1920) e!101128)))

(declare-fun b!167544 () Bool)

(declare-fun e!101129 () Bool)

(assert (=> b!167544 (= e!101128 e!101129)))

(declare-fun res!75707 () Bool)

(assert (=> b!167544 (=> (not res!75707) (not e!101129))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!33 (Rule!814 List!2859) Bool)

(assert (=> b!167544 (= res!75707 (ruleDisjointCharsFromAllFromOtherType!33 (h!8246 rules!1920) rules!1920))))

(declare-fun b!167545 () Bool)

(assert (=> b!167545 (= e!101129 (sepAndNonSepRulesDisjointChars!96 rules!1920 (t!26837 rules!1920)))))

(assert (= (and d!42031 (not res!75706)) b!167544))

(assert (= (and b!167544 res!75707) b!167545))

(declare-fun m!162535 () Bool)

(assert (=> b!167544 m!162535))

(declare-fun m!162537 () Bool)

(assert (=> b!167545 m!162537))

(assert (=> b!167522 d!42031))

(declare-fun d!42033 () Bool)

(assert (=> d!42033 (= (inv!3672 (tag!685 (rule!1014 separatorToken!170))) (= (mod (str.len (value!18764 (tag!685 (rule!1014 separatorToken!170)))) 2) 0))))

(assert (=> b!167501 d!42033))

(declare-fun d!42035 () Bool)

(declare-fun res!75710 () Bool)

(declare-fun e!101132 () Bool)

(assert (=> d!42035 (=> (not res!75710) (not e!101132))))

(declare-fun semiInverseModEq!175 (Int Int) Bool)

(assert (=> d!42035 (= res!75710 (semiInverseModEq!175 (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (toValue!1170 (transformation!507 (rule!1014 separatorToken!170)))))))

(assert (=> d!42035 (= (inv!3675 (transformation!507 (rule!1014 separatorToken!170))) e!101132)))

(declare-fun b!167548 () Bool)

(declare-fun equivClasses!158 (Int Int) Bool)

(assert (=> b!167548 (= e!101132 (equivClasses!158 (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (toValue!1170 (transformation!507 (rule!1014 separatorToken!170)))))))

(assert (= (and d!42035 res!75710) b!167548))

(declare-fun m!162539 () Bool)

(assert (=> d!42035 m!162539))

(declare-fun m!162541 () Bool)

(assert (=> b!167548 m!162541))

(assert (=> b!167501 d!42035))

(declare-fun d!42037 () Bool)

(declare-fun lt!52317 () Bool)

(declare-fun e!101160 () Bool)

(assert (=> d!42037 (= lt!52317 e!101160)))

(declare-fun res!75743 () Bool)

(assert (=> d!42037 (=> (not res!75743) (not e!101160))))

(declare-fun list!1036 (BalanceConc!1682) List!2860)

(assert (=> d!42037 (= res!75743 (= (list!1036 (_1!1577 (lex!193 thiss!17480 rules!1920 (print!124 thiss!17480 (singletonSeq!59 (h!8247 tokens!465)))))) (list!1036 (singletonSeq!59 (h!8247 tokens!465)))))))

(declare-fun e!101159 () Bool)

(assert (=> d!42037 (= lt!52317 e!101159)))

(declare-fun res!75744 () Bool)

(assert (=> d!42037 (=> (not res!75744) (not e!101159))))

(declare-fun lt!52316 () tuple2!2722)

(declare-fun size!2380 (BalanceConc!1682) Int)

(assert (=> d!42037 (= res!75744 (= (size!2380 (_1!1577 lt!52316)) 1))))

(assert (=> d!42037 (= lt!52316 (lex!193 thiss!17480 rules!1920 (print!124 thiss!17480 (singletonSeq!59 (h!8247 tokens!465)))))))

(assert (=> d!42037 (not (isEmpty!1179 rules!1920))))

(assert (=> d!42037 (= (rulesProduceIndividualToken!142 thiss!17480 rules!1920 (h!8247 tokens!465)) lt!52317)))

(declare-fun b!167591 () Bool)

(declare-fun res!75742 () Bool)

(assert (=> b!167591 (=> (not res!75742) (not e!101159))))

(declare-fun apply!405 (BalanceConc!1682 Int) Token!758)

(assert (=> b!167591 (= res!75742 (= (apply!405 (_1!1577 lt!52316) 0) (h!8247 tokens!465)))))

(declare-fun b!167592 () Bool)

(declare-fun isEmpty!1183 (BalanceConc!1680) Bool)

(assert (=> b!167592 (= e!101159 (isEmpty!1183 (_2!1577 lt!52316)))))

(declare-fun b!167593 () Bool)

(assert (=> b!167593 (= e!101160 (isEmpty!1183 (_2!1577 (lex!193 thiss!17480 rules!1920 (print!124 thiss!17480 (singletonSeq!59 (h!8247 tokens!465)))))))))

(assert (= (and d!42037 res!75744) b!167591))

(assert (= (and b!167591 res!75742) b!167592))

(assert (= (and d!42037 res!75743) b!167593))

(assert (=> d!42037 m!162517))

(declare-fun m!162603 () Bool)

(assert (=> d!42037 m!162603))

(assert (=> d!42037 m!162523))

(declare-fun m!162605 () Bool)

(assert (=> d!42037 m!162605))

(assert (=> d!42037 m!162605))

(declare-fun m!162607 () Bool)

(assert (=> d!42037 m!162607))

(declare-fun m!162609 () Bool)

(assert (=> d!42037 m!162609))

(assert (=> d!42037 m!162523))

(assert (=> d!42037 m!162523))

(declare-fun m!162611 () Bool)

(assert (=> d!42037 m!162611))

(declare-fun m!162613 () Bool)

(assert (=> b!167591 m!162613))

(declare-fun m!162615 () Bool)

(assert (=> b!167592 m!162615))

(assert (=> b!167593 m!162523))

(assert (=> b!167593 m!162523))

(assert (=> b!167593 m!162605))

(assert (=> b!167593 m!162605))

(assert (=> b!167593 m!162607))

(declare-fun m!162617 () Bool)

(assert (=> b!167593 m!162617))

(assert (=> b!167500 d!42037))

(declare-fun d!42063 () Bool)

(declare-fun res!75749 () Bool)

(declare-fun e!101165 () Bool)

(assert (=> d!42063 (=> res!75749 e!101165)))

(assert (=> d!42063 (= res!75749 ((_ is Nil!2850) tokens!465))))

(assert (=> d!42063 (= (forall!545 tokens!465 lambda!4675) e!101165)))

(declare-fun b!167598 () Bool)

(declare-fun e!101166 () Bool)

(assert (=> b!167598 (= e!101165 e!101166)))

(declare-fun res!75750 () Bool)

(assert (=> b!167598 (=> (not res!75750) (not e!101166))))

(declare-fun dynLambda!1051 (Int Token!758) Bool)

(assert (=> b!167598 (= res!75750 (dynLambda!1051 lambda!4675 (h!8247 tokens!465)))))

(declare-fun b!167599 () Bool)

(assert (=> b!167599 (= e!101166 (forall!545 (t!26838 tokens!465) lambda!4675))))

(assert (= (and d!42063 (not res!75749)) b!167598))

(assert (= (and b!167598 res!75750) b!167599))

(declare-fun b_lambda!3717 () Bool)

(assert (=> (not b_lambda!3717) (not b!167598)))

(declare-fun m!162619 () Bool)

(assert (=> b!167598 m!162619))

(declare-fun m!162621 () Bool)

(assert (=> b!167599 m!162621))

(assert (=> b!167523 d!42063))

(declare-fun d!42065 () Bool)

(declare-fun e!101171 () Bool)

(assert (=> d!42065 e!101171))

(declare-fun res!75756 () Bool)

(assert (=> d!42065 (=> (not res!75756) (not e!101171))))

(declare-fun lt!52320 () List!2858)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!395 (List!2858) (InoxSet C!2384))

(assert (=> d!42065 (= res!75756 (= (content!395 lt!52320) ((_ map or) (content!395 lt!52290) (content!395 lt!52294))))))

(declare-fun e!101172 () List!2858)

(assert (=> d!42065 (= lt!52320 e!101172)))

(declare-fun c!33402 () Bool)

(assert (=> d!42065 (= c!33402 ((_ is Nil!2848) lt!52290))))

(assert (=> d!42065 (= (++!648 lt!52290 lt!52294) lt!52320)))

(declare-fun b!167609 () Bool)

(assert (=> b!167609 (= e!101172 (Cons!2848 (h!8245 lt!52290) (++!648 (t!26836 lt!52290) lt!52294)))))

(declare-fun b!167610 () Bool)

(declare-fun res!75755 () Bool)

(assert (=> b!167610 (=> (not res!75755) (not e!101171))))

(declare-fun size!2381 (List!2858) Int)

(assert (=> b!167610 (= res!75755 (= (size!2381 lt!52320) (+ (size!2381 lt!52290) (size!2381 lt!52294))))))

(declare-fun b!167608 () Bool)

(assert (=> b!167608 (= e!101172 lt!52294)))

(declare-fun b!167611 () Bool)

(assert (=> b!167611 (= e!101171 (or (not (= lt!52294 Nil!2848)) (= lt!52320 lt!52290)))))

(assert (= (and d!42065 c!33402) b!167608))

(assert (= (and d!42065 (not c!33402)) b!167609))

(assert (= (and d!42065 res!75756) b!167610))

(assert (= (and b!167610 res!75755) b!167611))

(declare-fun m!162623 () Bool)

(assert (=> d!42065 m!162623))

(declare-fun m!162625 () Bool)

(assert (=> d!42065 m!162625))

(declare-fun m!162627 () Bool)

(assert (=> d!42065 m!162627))

(declare-fun m!162629 () Bool)

(assert (=> b!167609 m!162629))

(declare-fun m!162631 () Bool)

(assert (=> b!167610 m!162631))

(declare-fun m!162633 () Bool)

(assert (=> b!167610 m!162633))

(declare-fun m!162635 () Bool)

(assert (=> b!167610 m!162635))

(assert (=> b!167498 d!42065))

(declare-fun d!42067 () Bool)

(declare-fun list!1037 (Conc!836) List!2858)

(assert (=> d!42067 (= (list!1033 (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 lt!52302 separatorToken!170 0)) (list!1037 (c!33394 (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 lt!52302 separatorToken!170 0))))))

(declare-fun bs!16254 () Bool)

(assert (= bs!16254 d!42067))

(declare-fun m!162637 () Bool)

(assert (=> bs!16254 m!162637))

(assert (=> b!167509 d!42067))

(declare-fun bs!16257 () Bool)

(declare-fun d!42069 () Bool)

(assert (= bs!16257 (and d!42069 b!167523)))

(declare-fun lambda!4686 () Int)

(assert (=> bs!16257 (= lambda!4686 lambda!4675)))

(declare-fun bs!16258 () Bool)

(assert (= bs!16258 (and d!42069 b!167496)))

(assert (=> bs!16258 (not (= lambda!4686 lambda!4676))))

(declare-fun bs!16259 () Bool)

(declare-fun b!167666 () Bool)

(assert (= bs!16259 (and b!167666 b!167523)))

(declare-fun lambda!4687 () Int)

(assert (=> bs!16259 (not (= lambda!4687 lambda!4675))))

(declare-fun bs!16260 () Bool)

(assert (= bs!16260 (and b!167666 b!167496)))

(assert (=> bs!16260 (= lambda!4687 lambda!4676)))

(declare-fun bs!16261 () Bool)

(assert (= bs!16261 (and b!167666 d!42069)))

(assert (=> bs!16261 (not (= lambda!4687 lambda!4686))))

(declare-fun b!167678 () Bool)

(declare-fun e!101214 () Bool)

(assert (=> b!167678 (= e!101214 true)))

(declare-fun b!167677 () Bool)

(declare-fun e!101213 () Bool)

(assert (=> b!167677 (= e!101213 e!101214)))

(declare-fun b!167676 () Bool)

(declare-fun e!101212 () Bool)

(assert (=> b!167676 (= e!101212 e!101213)))

(assert (=> b!167666 e!101212))

(assert (= b!167677 b!167678))

(assert (= b!167676 b!167677))

(assert (= (and b!167666 ((_ is Cons!2849) rules!1920)) b!167676))

(assert (=> b!167678 (< (dynLambda!1047 order!1501 (toValue!1170 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4687))))

(assert (=> b!167678 (< (dynLambda!1049 order!1505 (toChars!1029 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4687))))

(assert (=> b!167666 true))

(declare-fun c!33424 () Bool)

(declare-fun call!7210 () Token!758)

(declare-fun call!7214 () BalanceConc!1680)

(declare-fun bm!7205 () Bool)

(assert (=> bm!7205 (= call!7214 (charsOf!162 (ite c!33424 separatorToken!170 call!7210)))))

(declare-fun lt!52379 () BalanceConc!1680)

(declare-fun dropList!84 (BalanceConc!1682 Int) List!2860)

(assert (=> d!42069 (= (list!1033 lt!52379) (printWithSeparatorTokenWhenNeededList!86 thiss!17480 rules!1920 (dropList!84 lt!52302 0) separatorToken!170))))

(declare-fun e!101206 () BalanceConc!1680)

(assert (=> d!42069 (= lt!52379 e!101206)))

(declare-fun c!33423 () Bool)

(assert (=> d!42069 (= c!33423 (>= 0 (size!2380 lt!52302)))))

(declare-fun lt!52377 () Unit!2452)

(declare-fun lemmaContentSubsetPreservesForall!28 (List!2860 List!2860 Int) Unit!2452)

(assert (=> d!42069 (= lt!52377 (lemmaContentSubsetPreservesForall!28 (list!1036 lt!52302) (dropList!84 lt!52302 0) lambda!4686))))

(declare-fun e!101205 () Bool)

(assert (=> d!42069 e!101205))

(declare-fun res!75767 () Bool)

(assert (=> d!42069 (=> (not res!75767) (not e!101205))))

(assert (=> d!42069 (= res!75767 (>= 0 0))))

(assert (=> d!42069 (= (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 lt!52302 separatorToken!170 0) lt!52379)))

(declare-fun b!167665 () Bool)

(declare-fun e!101207 () Bool)

(declare-fun lt!52374 () Option!289)

(declare-fun call!7212 () Token!758)

(assert (=> b!167665 (= e!101207 (not (= (_1!1576 (v!13713 lt!52374)) call!7212)))))

(declare-fun call!7213 () BalanceConc!1680)

(declare-fun c!33422 () Bool)

(declare-fun bm!7206 () Bool)

(assert (=> bm!7206 (= call!7213 (charsOf!162 (ite c!33422 call!7212 call!7210)))))

(declare-fun e!101208 () BalanceConc!1680)

(assert (=> b!167666 (= e!101206 e!101208)))

(declare-fun lt!52382 () List!2860)

(assert (=> b!167666 (= lt!52382 (list!1036 lt!52302))))

(declare-fun lt!52372 () Unit!2452)

(declare-fun lemmaDropApply!124 (List!2860 Int) Unit!2452)

(assert (=> b!167666 (= lt!52372 (lemmaDropApply!124 lt!52382 0))))

(declare-fun head!598 (List!2860) Token!758)

(declare-fun drop!137 (List!2860 Int) List!2860)

(declare-fun apply!406 (List!2860 Int) Token!758)

(assert (=> b!167666 (= (head!598 (drop!137 lt!52382 0)) (apply!406 lt!52382 0))))

(declare-fun lt!52373 () Unit!2452)

(assert (=> b!167666 (= lt!52373 lt!52372)))

(declare-fun lt!52385 () List!2860)

(assert (=> b!167666 (= lt!52385 (list!1036 lt!52302))))

(declare-fun lt!52378 () Unit!2452)

(declare-fun lemmaDropTail!116 (List!2860 Int) Unit!2452)

(assert (=> b!167666 (= lt!52378 (lemmaDropTail!116 lt!52385 0))))

(declare-fun tail!338 (List!2860) List!2860)

(assert (=> b!167666 (= (tail!338 (drop!137 lt!52385 0)) (drop!137 lt!52385 (+ 0 1)))))

(declare-fun lt!52381 () Unit!2452)

(assert (=> b!167666 (= lt!52381 lt!52378)))

(declare-fun lt!52383 () Unit!2452)

(assert (=> b!167666 (= lt!52383 (forallContained!74 (list!1036 lt!52302) lambda!4687 (apply!405 lt!52302 0)))))

(declare-fun lt!52375 () BalanceConc!1680)

(assert (=> b!167666 (= lt!52375 (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 lt!52302 separatorToken!170 (+ 0 1)))))

(declare-fun ++!650 (BalanceConc!1680 BalanceConc!1680) BalanceConc!1680)

(assert (=> b!167666 (= lt!52374 (maxPrefixZipperSequence!86 thiss!17480 rules!1920 (++!650 (charsOf!162 (apply!405 lt!52302 0)) lt!52375)))))

(declare-fun res!75769 () Bool)

(assert (=> b!167666 (= res!75769 ((_ is Some!288) lt!52374))))

(declare-fun e!101209 () Bool)

(assert (=> b!167666 (=> (not res!75769) (not e!101209))))

(assert (=> b!167666 (= c!33422 e!101209)))

(declare-fun b!167667 () Bool)

(declare-fun e!101204 () BalanceConc!1680)

(declare-fun call!7211 () BalanceConc!1680)

(assert (=> b!167667 (= e!101204 (++!650 call!7211 lt!52375))))

(declare-fun bm!7207 () Bool)

(assert (=> bm!7207 (= call!7210 call!7212)))

(declare-fun b!167668 () Bool)

(assert (=> b!167668 (= e!101204 (BalanceConc!1681 Empty!836))))

(assert (=> b!167668 (= (print!124 thiss!17480 (singletonSeq!59 call!7210)) (printTailRec!87 thiss!17480 (singletonSeq!59 call!7210) 0 (BalanceConc!1681 Empty!836)))))

(declare-fun lt!52384 () Unit!2452)

(declare-fun Unit!2458 () Unit!2452)

(assert (=> b!167668 (= lt!52384 Unit!2458)))

(declare-fun lt!52376 () Unit!2452)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!32 (LexerInterface!393 List!2859 List!2858 List!2858) Unit!2452)

(assert (=> b!167668 (= lt!52376 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!32 thiss!17480 rules!1920 (list!1033 call!7214) (list!1033 lt!52375)))))

(assert (=> b!167668 false))

(declare-fun lt!52380 () Unit!2452)

(declare-fun Unit!2459 () Unit!2452)

(assert (=> b!167668 (= lt!52380 Unit!2459)))

(declare-fun b!167669 () Bool)

(assert (=> b!167669 (= e!101205 (<= 0 (size!2380 lt!52302)))))

(declare-fun b!167670 () Bool)

(assert (=> b!167670 (= e!101206 (BalanceConc!1681 Empty!836))))

(declare-fun bm!7208 () Bool)

(assert (=> bm!7208 (= call!7212 (apply!405 lt!52302 0))))

(declare-fun b!167671 () Bool)

(assert (=> b!167671 (= c!33424 e!101207)))

(declare-fun res!75768 () Bool)

(assert (=> b!167671 (=> (not res!75768) (not e!101207))))

(assert (=> b!167671 (= res!75768 ((_ is Some!288) lt!52374))))

(assert (=> b!167671 (= e!101208 e!101204)))

(declare-fun bm!7209 () Bool)

(assert (=> bm!7209 (= call!7211 (++!650 call!7213 (ite c!33422 lt!52375 call!7214)))))

(declare-fun b!167672 () Bool)

(assert (=> b!167672 (= e!101208 call!7211)))

(declare-fun b!167673 () Bool)

(assert (=> b!167673 (= e!101209 (= (_1!1576 (v!13713 lt!52374)) (apply!405 lt!52302 0)))))

(assert (= (and d!42069 res!75767) b!167669))

(assert (= (and d!42069 c!33423) b!167670))

(assert (= (and d!42069 (not c!33423)) b!167666))

(assert (= (and b!167666 res!75769) b!167673))

(assert (= (and b!167666 c!33422) b!167672))

(assert (= (and b!167666 (not c!33422)) b!167671))

(assert (= (and b!167671 res!75768) b!167665))

(assert (= (and b!167671 c!33424) b!167667))

(assert (= (and b!167671 (not c!33424)) b!167668))

(assert (= (or b!167667 b!167668) bm!7207))

(assert (= (or b!167667 b!167668) bm!7205))

(assert (= (or b!167672 b!167665 bm!7207) bm!7208))

(assert (= (or b!167672 b!167667) bm!7206))

(assert (= (or b!167672 b!167667) bm!7209))

(declare-fun m!162677 () Bool)

(assert (=> b!167668 m!162677))

(declare-fun m!162679 () Bool)

(assert (=> b!167668 m!162679))

(assert (=> b!167668 m!162677))

(declare-fun m!162681 () Bool)

(assert (=> b!167668 m!162681))

(assert (=> b!167668 m!162677))

(declare-fun m!162683 () Bool)

(assert (=> b!167668 m!162683))

(assert (=> b!167668 m!162679))

(declare-fun m!162685 () Bool)

(assert (=> b!167668 m!162685))

(declare-fun m!162687 () Bool)

(assert (=> b!167668 m!162687))

(assert (=> b!167668 m!162685))

(declare-fun m!162689 () Bool)

(assert (=> bm!7208 m!162689))

(declare-fun m!162691 () Bool)

(assert (=> b!167666 m!162691))

(declare-fun m!162693 () Bool)

(assert (=> b!167666 m!162693))

(declare-fun m!162695 () Bool)

(assert (=> b!167666 m!162695))

(assert (=> b!167666 m!162689))

(declare-fun m!162697 () Bool)

(assert (=> b!167666 m!162697))

(declare-fun m!162699 () Bool)

(assert (=> b!167666 m!162699))

(assert (=> b!167666 m!162689))

(declare-fun m!162701 () Bool)

(assert (=> b!167666 m!162701))

(assert (=> b!167666 m!162695))

(declare-fun m!162703 () Bool)

(assert (=> b!167666 m!162703))

(assert (=> b!167666 m!162691))

(declare-fun m!162705 () Bool)

(assert (=> b!167666 m!162705))

(declare-fun m!162707 () Bool)

(assert (=> b!167666 m!162707))

(declare-fun m!162709 () Bool)

(assert (=> b!167666 m!162709))

(declare-fun m!162711 () Bool)

(assert (=> b!167666 m!162711))

(assert (=> b!167666 m!162689))

(assert (=> b!167666 m!162707))

(assert (=> b!167666 m!162701))

(declare-fun m!162713 () Bool)

(assert (=> b!167666 m!162713))

(assert (=> b!167666 m!162713))

(declare-fun m!162715 () Bool)

(assert (=> b!167666 m!162715))

(declare-fun m!162717 () Bool)

(assert (=> b!167666 m!162717))

(declare-fun m!162719 () Bool)

(assert (=> b!167669 m!162719))

(declare-fun m!162721 () Bool)

(assert (=> bm!7206 m!162721))

(declare-fun m!162723 () Bool)

(assert (=> bm!7205 m!162723))

(declare-fun m!162725 () Bool)

(assert (=> bm!7209 m!162725))

(declare-fun m!162727 () Bool)

(assert (=> b!167667 m!162727))

(assert (=> b!167673 m!162689))

(declare-fun m!162729 () Bool)

(assert (=> d!42069 m!162729))

(assert (=> d!42069 m!162719))

(declare-fun m!162731 () Bool)

(assert (=> d!42069 m!162731))

(assert (=> d!42069 m!162731))

(declare-fun m!162733 () Bool)

(assert (=> d!42069 m!162733))

(assert (=> d!42069 m!162695))

(assert (=> d!42069 m!162695))

(assert (=> d!42069 m!162731))

(declare-fun m!162735 () Bool)

(assert (=> d!42069 m!162735))

(assert (=> b!167509 d!42069))

(declare-fun bs!16293 () Bool)

(declare-fun b!167804 () Bool)

(assert (= bs!16293 (and b!167804 b!167523)))

(declare-fun lambda!4697 () Int)

(assert (=> bs!16293 (not (= lambda!4697 lambda!4675))))

(declare-fun bs!16294 () Bool)

(assert (= bs!16294 (and b!167804 b!167496)))

(assert (=> bs!16294 (= lambda!4697 lambda!4676)))

(declare-fun bs!16295 () Bool)

(assert (= bs!16295 (and b!167804 d!42069)))

(assert (=> bs!16295 (not (= lambda!4697 lambda!4686))))

(declare-fun bs!16296 () Bool)

(assert (= bs!16296 (and b!167804 b!167666)))

(assert (=> bs!16296 (= lambda!4697 lambda!4687)))

(declare-fun b!167807 () Bool)

(declare-fun e!101301 () Bool)

(assert (=> b!167807 (= e!101301 true)))

(declare-fun b!167806 () Bool)

(declare-fun e!101300 () Bool)

(assert (=> b!167806 (= e!101300 e!101301)))

(declare-fun b!167805 () Bool)

(declare-fun e!101299 () Bool)

(assert (=> b!167805 (= e!101299 e!101300)))

(assert (=> b!167804 e!101299))

(assert (= b!167806 b!167807))

(assert (= b!167805 b!167806))

(assert (= (and b!167804 ((_ is Cons!2849) rules!1920)) b!167805))

(assert (=> b!167807 (< (dynLambda!1047 order!1501 (toValue!1170 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4697))))

(assert (=> b!167807 (< (dynLambda!1049 order!1505 (toChars!1029 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4697))))

(assert (=> b!167804 true))

(declare-fun bm!7248 () Bool)

(declare-fun call!7255 () List!2858)

(declare-fun call!7253 () List!2858)

(assert (=> bm!7248 (= call!7255 call!7253)))

(declare-fun c!33458 () Bool)

(declare-fun c!33460 () Bool)

(assert (=> bm!7248 (= c!33458 c!33460)))

(declare-fun b!167795 () Bool)

(declare-fun e!101297 () List!2858)

(assert (=> b!167795 (= e!101297 Nil!2848)))

(declare-fun b!167796 () Bool)

(declare-fun e!101295 () List!2858)

(declare-fun call!7257 () BalanceConc!1680)

(assert (=> b!167796 (= e!101295 (list!1033 call!7257))))

(declare-fun b!167797 () Bool)

(declare-fun e!101298 () List!2858)

(declare-fun call!7256 () List!2858)

(declare-fun lt!52499 () List!2858)

(assert (=> b!167797 (= e!101298 (++!648 call!7256 lt!52499))))

(declare-fun b!167798 () Bool)

(assert (=> b!167798 (= e!101298 Nil!2848)))

(assert (=> b!167798 (= (print!124 thiss!17480 (singletonSeq!59 (h!8247 tokens!465))) (printTailRec!87 thiss!17480 (singletonSeq!59 (h!8247 tokens!465)) 0 (BalanceConc!1681 Empty!836)))))

(declare-fun lt!52495 () Unit!2452)

(declare-fun Unit!2460 () Unit!2452)

(assert (=> b!167798 (= lt!52495 Unit!2460)))

(declare-fun lt!52500 () Unit!2452)

(assert (=> b!167798 (= lt!52500 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!32 thiss!17480 rules!1920 call!7255 lt!52499))))

(assert (=> b!167798 false))

(declare-fun lt!52497 () Unit!2452)

(declare-fun Unit!2461 () Unit!2452)

(assert (=> b!167798 (= lt!52497 Unit!2461)))

(declare-fun b!167799 () Bool)

(declare-fun e!101294 () BalanceConc!1680)

(assert (=> b!167799 (= e!101294 (charsOf!162 separatorToken!170))))

(declare-fun b!167800 () Bool)

(assert (=> b!167800 (= e!101295 call!7253)))

(declare-fun b!167801 () Bool)

(declare-datatypes ((tuple2!2726 0))(
  ( (tuple2!2727 (_1!1579 Token!758) (_2!1579 List!2858)) )
))
(declare-datatypes ((Option!291 0))(
  ( (None!290) (Some!290 (v!13721 tuple2!2726)) )
))
(declare-fun lt!52498 () Option!291)

(assert (=> b!167801 (= c!33460 (and ((_ is Some!290) lt!52498) (not (= (_1!1579 (v!13721 lt!52498)) (h!8247 tokens!465)))))))

(declare-fun e!101296 () List!2858)

(assert (=> b!167801 (= e!101296 e!101298)))

(declare-fun call!7254 () BalanceConc!1680)

(declare-fun c!33459 () Bool)

(declare-fun bm!7250 () Bool)

(assert (=> bm!7250 (= call!7253 (list!1033 (ite c!33459 call!7254 e!101294)))))

(declare-fun b!167802 () Bool)

(assert (=> b!167802 (= e!101296 call!7256)))

(declare-fun b!167803 () Bool)

(assert (=> b!167803 (= e!101294 call!7257)))

(declare-fun bm!7251 () Bool)

(assert (=> bm!7251 (= call!7254 (charsOf!162 (h!8247 tokens!465)))))

(declare-fun d!42075 () Bool)

(declare-fun c!33461 () Bool)

(assert (=> d!42075 (= c!33461 ((_ is Cons!2850) tokens!465))))

(assert (=> d!42075 (= (printWithSeparatorTokenWhenNeededList!86 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!101297)))

(declare-fun bm!7249 () Bool)

(declare-fun c!33457 () Bool)

(assert (=> bm!7249 (= c!33457 c!33459)))

(assert (=> bm!7249 (= call!7256 (++!648 e!101295 (ite c!33459 lt!52499 call!7255)))))

(assert (=> b!167804 (= e!101297 e!101296)))

(declare-fun lt!52496 () Unit!2452)

(assert (=> b!167804 (= lt!52496 (forallContained!74 tokens!465 lambda!4697 (h!8247 tokens!465)))))

(assert (=> b!167804 (= lt!52499 (printWithSeparatorTokenWhenNeededList!86 thiss!17480 rules!1920 (t!26838 tokens!465) separatorToken!170))))

(declare-fun maxPrefix!125 (LexerInterface!393 List!2859 List!2858) Option!291)

(assert (=> b!167804 (= lt!52498 (maxPrefix!125 thiss!17480 rules!1920 (++!648 (list!1033 (charsOf!162 (h!8247 tokens!465))) lt!52499)))))

(assert (=> b!167804 (= c!33459 (and ((_ is Some!290) lt!52498) (= (_1!1579 (v!13721 lt!52498)) (h!8247 tokens!465))))))

(declare-fun bm!7252 () Bool)

(assert (=> bm!7252 (= call!7257 call!7254)))

(assert (= (and d!42075 c!33461) b!167804))

(assert (= (and d!42075 (not c!33461)) b!167795))

(assert (= (and b!167804 c!33459) b!167802))

(assert (= (and b!167804 (not c!33459)) b!167801))

(assert (= (and b!167801 c!33460) b!167797))

(assert (= (and b!167801 (not c!33460)) b!167798))

(assert (= (or b!167797 b!167798) bm!7252))

(assert (= (or b!167797 b!167798) bm!7248))

(assert (= (and bm!7248 c!33458) b!167799))

(assert (= (and bm!7248 (not c!33458)) b!167803))

(assert (= (or b!167802 bm!7252) bm!7251))

(assert (= (or b!167802 bm!7248) bm!7250))

(assert (= (or b!167802 b!167797) bm!7249))

(assert (= (and bm!7249 c!33457) b!167800))

(assert (= (and bm!7249 (not c!33457)) b!167796))

(declare-fun m!162985 () Bool)

(assert (=> b!167796 m!162985))

(declare-fun m!162987 () Bool)

(assert (=> bm!7250 m!162987))

(assert (=> bm!7251 m!162467))

(assert (=> b!167804 m!162469))

(declare-fun m!162989 () Bool)

(assert (=> b!167804 m!162989))

(declare-fun m!162991 () Bool)

(assert (=> b!167804 m!162991))

(assert (=> b!167804 m!162453))

(assert (=> b!167804 m!162467))

(assert (=> b!167804 m!162469))

(assert (=> b!167804 m!162467))

(assert (=> b!167804 m!162989))

(declare-fun m!162993 () Bool)

(assert (=> b!167804 m!162993))

(assert (=> b!167799 m!162455))

(declare-fun m!162995 () Bool)

(assert (=> b!167797 m!162995))

(declare-fun m!162997 () Bool)

(assert (=> bm!7249 m!162997))

(assert (=> b!167798 m!162523))

(assert (=> b!167798 m!162523))

(assert (=> b!167798 m!162605))

(assert (=> b!167798 m!162523))

(declare-fun m!162999 () Bool)

(assert (=> b!167798 m!162999))

(declare-fun m!163001 () Bool)

(assert (=> b!167798 m!163001))

(assert (=> b!167509 d!42075))

(declare-fun lt!52503 () Bool)

(declare-fun d!42113 () Bool)

(declare-fun isEmpty!1185 (List!2860) Bool)

(assert (=> d!42113 (= lt!52503 (isEmpty!1185 (list!1036 (_1!1577 (lex!193 thiss!17480 rules!1920 (seqFromList!391 lt!52290))))))))

(declare-fun isEmpty!1186 (Conc!837) Bool)

(assert (=> d!42113 (= lt!52503 (isEmpty!1186 (c!33396 (_1!1577 (lex!193 thiss!17480 rules!1920 (seqFromList!391 lt!52290))))))))

(assert (=> d!42113 (= (isEmpty!1180 (_1!1577 (lex!193 thiss!17480 rules!1920 (seqFromList!391 lt!52290)))) lt!52503)))

(declare-fun bs!16297 () Bool)

(assert (= bs!16297 d!42113))

(declare-fun m!163003 () Bool)

(assert (=> bs!16297 m!163003))

(assert (=> bs!16297 m!163003))

(declare-fun m!163005 () Bool)

(assert (=> bs!16297 m!163005))

(declare-fun m!163007 () Bool)

(assert (=> bs!16297 m!163007))

(assert (=> b!167519 d!42113))

(declare-fun b!167842 () Bool)

(declare-fun e!101325 () Bool)

(declare-fun lt!52509 () tuple2!2722)

(assert (=> b!167842 (= e!101325 (not (isEmpty!1180 (_1!1577 lt!52509))))))

(declare-fun e!101326 () Bool)

(declare-fun b!167843 () Bool)

(declare-datatypes ((tuple2!2728 0))(
  ( (tuple2!2729 (_1!1580 List!2860) (_2!1580 List!2858)) )
))
(declare-fun lexList!108 (LexerInterface!393 List!2859 List!2858) tuple2!2728)

(assert (=> b!167843 (= e!101326 (= (list!1033 (_2!1577 lt!52509)) (_2!1580 (lexList!108 thiss!17480 rules!1920 (list!1033 (seqFromList!391 lt!52290))))))))

(declare-fun b!167844 () Bool)

(declare-fun e!101327 () Bool)

(assert (=> b!167844 (= e!101327 e!101325)))

(declare-fun res!75840 () Bool)

(declare-fun size!2382 (BalanceConc!1680) Int)

(assert (=> b!167844 (= res!75840 (< (size!2382 (_2!1577 lt!52509)) (size!2382 (seqFromList!391 lt!52290))))))

(assert (=> b!167844 (=> (not res!75840) (not e!101325))))

(declare-fun d!42115 () Bool)

(assert (=> d!42115 e!101326))

(declare-fun res!75841 () Bool)

(assert (=> d!42115 (=> (not res!75841) (not e!101326))))

(assert (=> d!42115 (= res!75841 e!101327)))

(declare-fun c!33467 () Bool)

(assert (=> d!42115 (= c!33467 (> (size!2380 (_1!1577 lt!52509)) 0))))

(declare-fun lexTailRecV2!95 (LexerInterface!393 List!2859 BalanceConc!1680 BalanceConc!1680 BalanceConc!1680 BalanceConc!1682) tuple2!2722)

(assert (=> d!42115 (= lt!52509 (lexTailRecV2!95 thiss!17480 rules!1920 (seqFromList!391 lt!52290) (BalanceConc!1681 Empty!836) (seqFromList!391 lt!52290) (BalanceConc!1683 Empty!837)))))

(assert (=> d!42115 (= (lex!193 thiss!17480 rules!1920 (seqFromList!391 lt!52290)) lt!52509)))

(declare-fun b!167845 () Bool)

(declare-fun res!75842 () Bool)

(assert (=> b!167845 (=> (not res!75842) (not e!101326))))

(assert (=> b!167845 (= res!75842 (= (list!1036 (_1!1577 lt!52509)) (_1!1580 (lexList!108 thiss!17480 rules!1920 (list!1033 (seqFromList!391 lt!52290))))))))

(declare-fun b!167846 () Bool)

(assert (=> b!167846 (= e!101327 (= (_2!1577 lt!52509) (seqFromList!391 lt!52290)))))

(assert (= (and d!42115 c!33467) b!167844))

(assert (= (and d!42115 (not c!33467)) b!167846))

(assert (= (and b!167844 res!75840) b!167842))

(assert (= (and d!42115 res!75841) b!167845))

(assert (= (and b!167845 res!75842) b!167843))

(declare-fun m!163043 () Bool)

(assert (=> b!167844 m!163043))

(assert (=> b!167844 m!162441))

(declare-fun m!163045 () Bool)

(assert (=> b!167844 m!163045))

(declare-fun m!163047 () Bool)

(assert (=> b!167842 m!163047))

(declare-fun m!163049 () Bool)

(assert (=> b!167845 m!163049))

(assert (=> b!167845 m!162441))

(declare-fun m!163051 () Bool)

(assert (=> b!167845 m!163051))

(assert (=> b!167845 m!163051))

(declare-fun m!163053 () Bool)

(assert (=> b!167845 m!163053))

(declare-fun m!163055 () Bool)

(assert (=> b!167843 m!163055))

(assert (=> b!167843 m!162441))

(assert (=> b!167843 m!163051))

(assert (=> b!167843 m!163051))

(assert (=> b!167843 m!163053))

(declare-fun m!163057 () Bool)

(assert (=> d!42115 m!163057))

(assert (=> d!42115 m!162441))

(assert (=> d!42115 m!162441))

(declare-fun m!163059 () Bool)

(assert (=> d!42115 m!163059))

(assert (=> b!167519 d!42115))

(declare-fun d!42129 () Bool)

(declare-fun fromListB!156 (List!2858) BalanceConc!1680)

(assert (=> d!42129 (= (seqFromList!391 lt!52290) (fromListB!156 lt!52290))))

(declare-fun bs!16299 () Bool)

(assert (= bs!16299 d!42129))

(declare-fun m!163061 () Bool)

(assert (=> bs!16299 m!163061))

(assert (=> b!167519 d!42129))

(declare-fun d!42131 () Bool)

(declare-fun lt!52512 () BalanceConc!1680)

(assert (=> d!42131 (= (list!1033 lt!52512) (printList!77 thiss!17480 (list!1036 lt!52292)))))

(assert (=> d!42131 (= lt!52512 (printTailRec!87 thiss!17480 lt!52292 0 (BalanceConc!1681 Empty!836)))))

(assert (=> d!42131 (= (print!124 thiss!17480 lt!52292) lt!52512)))

(declare-fun bs!16300 () Bool)

(assert (= bs!16300 d!42131))

(declare-fun m!163063 () Bool)

(assert (=> bs!16300 m!163063))

(declare-fun m!163065 () Bool)

(assert (=> bs!16300 m!163065))

(assert (=> bs!16300 m!163065))

(declare-fun m!163067 () Bool)

(assert (=> bs!16300 m!163067))

(assert (=> bs!16300 m!162525))

(assert (=> b!167510 d!42131))

(declare-fun d!42133 () Bool)

(assert (=> d!42133 (= (list!1033 lt!52301) (list!1037 (c!33394 lt!52301)))))

(declare-fun bs!16301 () Bool)

(assert (= bs!16301 d!42133))

(declare-fun m!163069 () Bool)

(assert (=> bs!16301 m!163069))

(assert (=> b!167510 d!42133))

(declare-fun d!42135 () Bool)

(declare-fun lt!52532 () BalanceConc!1680)

(declare-fun printListTailRec!51 (LexerInterface!393 List!2860 List!2858) List!2858)

(assert (=> d!42135 (= (list!1033 lt!52532) (printListTailRec!51 thiss!17480 (dropList!84 lt!52292 0) (list!1033 (BalanceConc!1681 Empty!836))))))

(declare-fun e!101333 () BalanceConc!1680)

(assert (=> d!42135 (= lt!52532 e!101333)))

(declare-fun c!33470 () Bool)

(assert (=> d!42135 (= c!33470 (>= 0 (size!2380 lt!52292)))))

(declare-fun e!101332 () Bool)

(assert (=> d!42135 e!101332))

(declare-fun res!75845 () Bool)

(assert (=> d!42135 (=> (not res!75845) (not e!101332))))

(assert (=> d!42135 (= res!75845 (>= 0 0))))

(assert (=> d!42135 (= (printTailRec!87 thiss!17480 lt!52292 0 (BalanceConc!1681 Empty!836)) lt!52532)))

(declare-fun b!167853 () Bool)

(assert (=> b!167853 (= e!101332 (<= 0 (size!2380 lt!52292)))))

(declare-fun b!167854 () Bool)

(assert (=> b!167854 (= e!101333 (BalanceConc!1681 Empty!836))))

(declare-fun b!167855 () Bool)

(assert (=> b!167855 (= e!101333 (printTailRec!87 thiss!17480 lt!52292 (+ 0 1) (++!650 (BalanceConc!1681 Empty!836) (charsOf!162 (apply!405 lt!52292 0)))))))

(declare-fun lt!52531 () List!2860)

(assert (=> b!167855 (= lt!52531 (list!1036 lt!52292))))

(declare-fun lt!52529 () Unit!2452)

(assert (=> b!167855 (= lt!52529 (lemmaDropApply!124 lt!52531 0))))

(assert (=> b!167855 (= (head!598 (drop!137 lt!52531 0)) (apply!406 lt!52531 0))))

(declare-fun lt!52533 () Unit!2452)

(assert (=> b!167855 (= lt!52533 lt!52529)))

(declare-fun lt!52530 () List!2860)

(assert (=> b!167855 (= lt!52530 (list!1036 lt!52292))))

(declare-fun lt!52528 () Unit!2452)

(assert (=> b!167855 (= lt!52528 (lemmaDropTail!116 lt!52530 0))))

(assert (=> b!167855 (= (tail!338 (drop!137 lt!52530 0)) (drop!137 lt!52530 (+ 0 1)))))

(declare-fun lt!52527 () Unit!2452)

(assert (=> b!167855 (= lt!52527 lt!52528)))

(assert (= (and d!42135 res!75845) b!167853))

(assert (= (and d!42135 c!33470) b!167854))

(assert (= (and d!42135 (not c!33470)) b!167855))

(declare-fun m!163071 () Bool)

(assert (=> d!42135 m!163071))

(declare-fun m!163073 () Bool)

(assert (=> d!42135 m!163073))

(assert (=> d!42135 m!163071))

(declare-fun m!163075 () Bool)

(assert (=> d!42135 m!163075))

(declare-fun m!163077 () Bool)

(assert (=> d!42135 m!163077))

(declare-fun m!163079 () Bool)

(assert (=> d!42135 m!163079))

(assert (=> d!42135 m!163075))

(assert (=> b!167853 m!163079))

(declare-fun m!163081 () Bool)

(assert (=> b!167855 m!163081))

(declare-fun m!163083 () Bool)

(assert (=> b!167855 m!163083))

(declare-fun m!163085 () Bool)

(assert (=> b!167855 m!163085))

(declare-fun m!163087 () Bool)

(assert (=> b!167855 m!163087))

(assert (=> b!167855 m!163087))

(declare-fun m!163089 () Bool)

(assert (=> b!167855 m!163089))

(declare-fun m!163091 () Bool)

(assert (=> b!167855 m!163091))

(declare-fun m!163093 () Bool)

(assert (=> b!167855 m!163093))

(declare-fun m!163095 () Bool)

(assert (=> b!167855 m!163095))

(assert (=> b!167855 m!163095))

(assert (=> b!167855 m!163081))

(declare-fun m!163097 () Bool)

(assert (=> b!167855 m!163097))

(declare-fun m!163099 () Bool)

(assert (=> b!167855 m!163099))

(declare-fun m!163101 () Bool)

(assert (=> b!167855 m!163101))

(assert (=> b!167855 m!163099))

(assert (=> b!167855 m!163065))

(declare-fun m!163103 () Bool)

(assert (=> b!167855 m!163103))

(assert (=> b!167855 m!163093))

(assert (=> b!167510 d!42135))

(declare-fun d!42137 () Bool)

(declare-fun e!101336 () Bool)

(assert (=> d!42137 e!101336))

(declare-fun res!75848 () Bool)

(assert (=> d!42137 (=> (not res!75848) (not e!101336))))

(declare-fun lt!52536 () BalanceConc!1682)

(assert (=> d!42137 (= res!75848 (= (list!1036 lt!52536) (Cons!2850 (h!8247 tokens!465) Nil!2850)))))

(declare-fun singleton!32 (Token!758) BalanceConc!1682)

(assert (=> d!42137 (= lt!52536 (singleton!32 (h!8247 tokens!465)))))

(assert (=> d!42137 (= (singletonSeq!59 (h!8247 tokens!465)) lt!52536)))

(declare-fun b!167858 () Bool)

(declare-fun isBalanced!233 (Conc!837) Bool)

(assert (=> b!167858 (= e!101336 (isBalanced!233 (c!33396 lt!52536)))))

(assert (= (and d!42137 res!75848) b!167858))

(declare-fun m!163105 () Bool)

(assert (=> d!42137 m!163105))

(declare-fun m!163107 () Bool)

(assert (=> d!42137 m!163107))

(declare-fun m!163109 () Bool)

(assert (=> b!167858 m!163109))

(assert (=> b!167510 d!42137))

(declare-fun d!42139 () Bool)

(declare-fun c!33473 () Bool)

(assert (=> d!42139 (= c!33473 ((_ is Cons!2850) (Cons!2850 (h!8247 tokens!465) Nil!2850)))))

(declare-fun e!101339 () List!2858)

(assert (=> d!42139 (= (printList!77 thiss!17480 (Cons!2850 (h!8247 tokens!465) Nil!2850)) e!101339)))

(declare-fun b!167863 () Bool)

(assert (=> b!167863 (= e!101339 (++!648 (list!1033 (charsOf!162 (h!8247 (Cons!2850 (h!8247 tokens!465) Nil!2850)))) (printList!77 thiss!17480 (t!26838 (Cons!2850 (h!8247 tokens!465) Nil!2850)))))))

(declare-fun b!167864 () Bool)

(assert (=> b!167864 (= e!101339 Nil!2848)))

(assert (= (and d!42139 c!33473) b!167863))

(assert (= (and d!42139 (not c!33473)) b!167864))

(declare-fun m!163111 () Bool)

(assert (=> b!167863 m!163111))

(assert (=> b!167863 m!163111))

(declare-fun m!163113 () Bool)

(assert (=> b!167863 m!163113))

(declare-fun m!163115 () Bool)

(assert (=> b!167863 m!163115))

(assert (=> b!167863 m!163113))

(assert (=> b!167863 m!163115))

(declare-fun m!163117 () Bool)

(assert (=> b!167863 m!163117))

(assert (=> b!167510 d!42139))

(declare-fun bs!16313 () Bool)

(declare-fun d!42141 () Bool)

(assert (= bs!16313 (and d!42141 b!167804)))

(declare-fun lambda!4707 () Int)

(assert (=> bs!16313 (= lambda!4707 lambda!4697)))

(declare-fun bs!16314 () Bool)

(assert (= bs!16314 (and d!42141 d!42069)))

(assert (=> bs!16314 (not (= lambda!4707 lambda!4686))))

(declare-fun bs!16315 () Bool)

(assert (= bs!16315 (and d!42141 b!167496)))

(assert (=> bs!16315 (= lambda!4707 lambda!4676)))

(declare-fun bs!16316 () Bool)

(assert (= bs!16316 (and d!42141 b!167666)))

(assert (=> bs!16316 (= lambda!4707 lambda!4687)))

(declare-fun bs!16317 () Bool)

(assert (= bs!16317 (and d!42141 b!167523)))

(assert (=> bs!16317 (not (= lambda!4707 lambda!4675))))

(declare-fun b!167903 () Bool)

(declare-fun e!101369 () Bool)

(assert (=> b!167903 (= e!101369 true)))

(declare-fun b!167902 () Bool)

(declare-fun e!101368 () Bool)

(assert (=> b!167902 (= e!101368 e!101369)))

(declare-fun b!167901 () Bool)

(declare-fun e!101367 () Bool)

(assert (=> b!167901 (= e!101367 e!101368)))

(assert (=> d!42141 e!101367))

(assert (= b!167902 b!167903))

(assert (= b!167901 b!167902))

(assert (= (and d!42141 ((_ is Cons!2849) rules!1920)) b!167901))

(assert (=> b!167903 (< (dynLambda!1047 order!1501 (toValue!1170 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4707))))

(assert (=> b!167903 (< (dynLambda!1049 order!1505 (toChars!1029 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4707))))

(assert (=> d!42141 true))

(declare-fun e!101366 () Bool)

(assert (=> d!42141 e!101366))

(declare-fun res!75863 () Bool)

(assert (=> d!42141 (=> (not res!75863) (not e!101366))))

(declare-fun lt!52569 () Bool)

(assert (=> d!42141 (= res!75863 (= lt!52569 (forall!545 (list!1036 lt!52302) lambda!4707)))))

(declare-fun forall!546 (BalanceConc!1682 Int) Bool)

(assert (=> d!42141 (= lt!52569 (forall!546 lt!52302 lambda!4707))))

(assert (=> d!42141 (not (isEmpty!1179 rules!1920))))

(assert (=> d!42141 (= (rulesProduceEachTokenIndividually!185 thiss!17480 rules!1920 lt!52302) lt!52569)))

(declare-fun b!167900 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!106 (LexerInterface!393 List!2859 List!2860) Bool)

(assert (=> b!167900 (= e!101366 (= lt!52569 (rulesProduceEachTokenIndividuallyList!106 thiss!17480 rules!1920 (list!1036 lt!52302))))))

(assert (= (and d!42141 res!75863) b!167900))

(assert (=> d!42141 m!162695))

(assert (=> d!42141 m!162695))

(declare-fun m!163181 () Bool)

(assert (=> d!42141 m!163181))

(declare-fun m!163183 () Bool)

(assert (=> d!42141 m!163183))

(assert (=> d!42141 m!162517))

(assert (=> b!167900 m!162695))

(assert (=> b!167900 m!162695))

(declare-fun m!163185 () Bool)

(assert (=> b!167900 m!163185))

(assert (=> b!167521 d!42141))

(declare-fun d!42157 () Bool)

(declare-fun fromListB!157 (List!2860) BalanceConc!1682)

(assert (=> d!42157 (= (seqFromList!392 tokens!465) (fromListB!157 tokens!465))))

(declare-fun bs!16318 () Bool)

(assert (= bs!16318 d!42157))

(declare-fun m!163201 () Bool)

(assert (=> bs!16318 m!163201))

(assert (=> b!167521 d!42157))

(declare-fun d!42163 () Bool)

(assert (=> d!42163 (= (inv!3672 (tag!685 (h!8246 rules!1920))) (= (mod (str.len (value!18764 (tag!685 (h!8246 rules!1920)))) 2) 0))))

(assert (=> b!167520 d!42163))

(declare-fun d!42165 () Bool)

(declare-fun res!75865 () Bool)

(declare-fun e!101376 () Bool)

(assert (=> d!42165 (=> (not res!75865) (not e!101376))))

(assert (=> d!42165 (= res!75865 (semiInverseModEq!175 (toChars!1029 (transformation!507 (h!8246 rules!1920))) (toValue!1170 (transformation!507 (h!8246 rules!1920)))))))

(assert (=> d!42165 (= (inv!3675 (transformation!507 (h!8246 rules!1920))) e!101376)))

(declare-fun b!167915 () Bool)

(assert (=> b!167915 (= e!101376 (equivClasses!158 (toChars!1029 (transformation!507 (h!8246 rules!1920))) (toValue!1170 (transformation!507 (h!8246 rules!1920)))))))

(assert (= (and d!42165 res!75865) b!167915))

(declare-fun m!163203 () Bool)

(assert (=> d!42165 m!163203))

(declare-fun m!163205 () Bool)

(assert (=> b!167915 m!163205))

(assert (=> b!167520 d!42165))

(declare-fun d!42167 () Bool)

(declare-fun e!101377 () Bool)

(assert (=> d!42167 e!101377))

(declare-fun res!75867 () Bool)

(assert (=> d!42167 (=> (not res!75867) (not e!101377))))

(declare-fun lt!52570 () List!2858)

(assert (=> d!42167 (= res!75867 (= (content!395 lt!52570) ((_ map or) (content!395 (++!648 lt!52290 lt!52291)) (content!395 lt!52294))))))

(declare-fun e!101378 () List!2858)

(assert (=> d!42167 (= lt!52570 e!101378)))

(declare-fun c!33488 () Bool)

(assert (=> d!42167 (= c!33488 ((_ is Nil!2848) (++!648 lt!52290 lt!52291)))))

(assert (=> d!42167 (= (++!648 (++!648 lt!52290 lt!52291) lt!52294) lt!52570)))

(declare-fun b!167917 () Bool)

(assert (=> b!167917 (= e!101378 (Cons!2848 (h!8245 (++!648 lt!52290 lt!52291)) (++!648 (t!26836 (++!648 lt!52290 lt!52291)) lt!52294)))))

(declare-fun b!167918 () Bool)

(declare-fun res!75866 () Bool)

(assert (=> b!167918 (=> (not res!75866) (not e!101377))))

(assert (=> b!167918 (= res!75866 (= (size!2381 lt!52570) (+ (size!2381 (++!648 lt!52290 lt!52291)) (size!2381 lt!52294))))))

(declare-fun b!167916 () Bool)

(assert (=> b!167916 (= e!101378 lt!52294)))

(declare-fun b!167919 () Bool)

(assert (=> b!167919 (= e!101377 (or (not (= lt!52294 Nil!2848)) (= lt!52570 (++!648 lt!52290 lt!52291))))))

(assert (= (and d!42167 c!33488) b!167916))

(assert (= (and d!42167 (not c!33488)) b!167917))

(assert (= (and d!42167 res!75867) b!167918))

(assert (= (and b!167918 res!75866) b!167919))

(declare-fun m!163207 () Bool)

(assert (=> d!42167 m!163207))

(assert (=> d!42167 m!162449))

(declare-fun m!163209 () Bool)

(assert (=> d!42167 m!163209))

(assert (=> d!42167 m!162627))

(declare-fun m!163211 () Bool)

(assert (=> b!167917 m!163211))

(declare-fun m!163213 () Bool)

(assert (=> b!167918 m!163213))

(assert (=> b!167918 m!162449))

(declare-fun m!163215 () Bool)

(assert (=> b!167918 m!163215))

(assert (=> b!167918 m!162635))

(assert (=> b!167499 d!42167))

(declare-fun d!42169 () Bool)

(assert (=> d!42169 (= (list!1033 (charsOf!162 separatorToken!170)) (list!1037 (c!33394 (charsOf!162 separatorToken!170))))))

(declare-fun bs!16319 () Bool)

(assert (= bs!16319 d!42169))

(declare-fun m!163217 () Bool)

(assert (=> bs!16319 m!163217))

(assert (=> b!167499 d!42169))

(declare-fun d!42171 () Bool)

(assert (=> d!42171 (= (list!1033 (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 (seqFromList!392 (t!26838 tokens!465)) separatorToken!170 0)) (list!1037 (c!33394 (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 (seqFromList!392 (t!26838 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!16320 () Bool)

(assert (= bs!16320 d!42171))

(declare-fun m!163219 () Bool)

(assert (=> bs!16320 m!163219))

(assert (=> b!167499 d!42171))

(declare-fun bs!16321 () Bool)

(declare-fun d!42173 () Bool)

(assert (= bs!16321 (and d!42173 d!42141)))

(declare-fun lambda!4710 () Int)

(assert (=> bs!16321 (not (= lambda!4710 lambda!4707))))

(declare-fun bs!16322 () Bool)

(assert (= bs!16322 (and d!42173 b!167804)))

(assert (=> bs!16322 (not (= lambda!4710 lambda!4697))))

(declare-fun bs!16323 () Bool)

(assert (= bs!16323 (and d!42173 d!42069)))

(assert (=> bs!16323 (= lambda!4710 lambda!4686)))

(declare-fun bs!16324 () Bool)

(assert (= bs!16324 (and d!42173 b!167496)))

(assert (=> bs!16324 (not (= lambda!4710 lambda!4676))))

(declare-fun bs!16325 () Bool)

(assert (= bs!16325 (and d!42173 b!167666)))

(assert (=> bs!16325 (not (= lambda!4710 lambda!4687))))

(declare-fun bs!16326 () Bool)

(assert (= bs!16326 (and d!42173 b!167523)))

(assert (=> bs!16326 (= lambda!4710 lambda!4675)))

(declare-fun bs!16327 () Bool)

(declare-fun b!167925 () Bool)

(assert (= bs!16327 (and b!167925 d!42173)))

(declare-fun lambda!4711 () Int)

(assert (=> bs!16327 (not (= lambda!4711 lambda!4710))))

(declare-fun bs!16328 () Bool)

(assert (= bs!16328 (and b!167925 d!42141)))

(assert (=> bs!16328 (= lambda!4711 lambda!4707)))

(declare-fun bs!16329 () Bool)

(assert (= bs!16329 (and b!167925 b!167804)))

(assert (=> bs!16329 (= lambda!4711 lambda!4697)))

(declare-fun bs!16330 () Bool)

(assert (= bs!16330 (and b!167925 d!42069)))

(assert (=> bs!16330 (not (= lambda!4711 lambda!4686))))

(declare-fun bs!16331 () Bool)

(assert (= bs!16331 (and b!167925 b!167496)))

(assert (=> bs!16331 (= lambda!4711 lambda!4676)))

(declare-fun bs!16332 () Bool)

(assert (= bs!16332 (and b!167925 b!167666)))

(assert (=> bs!16332 (= lambda!4711 lambda!4687)))

(declare-fun bs!16333 () Bool)

(assert (= bs!16333 (and b!167925 b!167523)))

(assert (=> bs!16333 (not (= lambda!4711 lambda!4675))))

(declare-fun b!167937 () Bool)

(declare-fun e!101393 () Bool)

(assert (=> b!167937 (= e!101393 true)))

(declare-fun b!167936 () Bool)

(declare-fun e!101392 () Bool)

(assert (=> b!167936 (= e!101392 e!101393)))

(declare-fun b!167935 () Bool)

(declare-fun e!101391 () Bool)

(assert (=> b!167935 (= e!101391 e!101392)))

(assert (=> b!167925 e!101391))

(assert (= b!167936 b!167937))

(assert (= b!167935 b!167936))

(assert (= (and b!167925 ((_ is Cons!2849) rules!1920)) b!167935))

(assert (=> b!167937 (< (dynLambda!1047 order!1501 (toValue!1170 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4711))))

(assert (=> b!167937 (< (dynLambda!1049 order!1505 (toChars!1029 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4711))))

(assert (=> b!167925 true))

(declare-fun call!7258 () Token!758)

(declare-fun bm!7253 () Bool)

(declare-fun call!7262 () BalanceConc!1680)

(declare-fun c!33491 () Bool)

(assert (=> bm!7253 (= call!7262 (charsOf!162 (ite c!33491 separatorToken!170 call!7258)))))

(declare-fun lt!52580 () BalanceConc!1680)

(assert (=> d!42173 (= (list!1033 lt!52580) (printWithSeparatorTokenWhenNeededList!86 thiss!17480 rules!1920 (dropList!84 (seqFromList!392 (t!26838 tokens!465)) 0) separatorToken!170))))

(declare-fun e!101385 () BalanceConc!1680)

(assert (=> d!42173 (= lt!52580 e!101385)))

(declare-fun c!33490 () Bool)

(assert (=> d!42173 (= c!33490 (>= 0 (size!2380 (seqFromList!392 (t!26838 tokens!465)))))))

(declare-fun lt!52578 () Unit!2452)

(assert (=> d!42173 (= lt!52578 (lemmaContentSubsetPreservesForall!28 (list!1036 (seqFromList!392 (t!26838 tokens!465))) (dropList!84 (seqFromList!392 (t!26838 tokens!465)) 0) lambda!4710))))

(declare-fun e!101384 () Bool)

(assert (=> d!42173 e!101384))

(declare-fun res!75872 () Bool)

(assert (=> d!42173 (=> (not res!75872) (not e!101384))))

(assert (=> d!42173 (= res!75872 (>= 0 0))))

(assert (=> d!42173 (= (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 (seqFromList!392 (t!26838 tokens!465)) separatorToken!170 0) lt!52580)))

(declare-fun b!167924 () Bool)

(declare-fun e!101386 () Bool)

(declare-fun lt!52575 () Option!289)

(declare-fun call!7260 () Token!758)

(assert (=> b!167924 (= e!101386 (not (= (_1!1576 (v!13713 lt!52575)) call!7260)))))

(declare-fun c!33489 () Bool)

(declare-fun bm!7254 () Bool)

(declare-fun call!7261 () BalanceConc!1680)

(assert (=> bm!7254 (= call!7261 (charsOf!162 (ite c!33489 call!7260 call!7258)))))

(declare-fun e!101387 () BalanceConc!1680)

(assert (=> b!167925 (= e!101385 e!101387)))

(declare-fun lt!52583 () List!2860)

(assert (=> b!167925 (= lt!52583 (list!1036 (seqFromList!392 (t!26838 tokens!465))))))

(declare-fun lt!52573 () Unit!2452)

(assert (=> b!167925 (= lt!52573 (lemmaDropApply!124 lt!52583 0))))

(assert (=> b!167925 (= (head!598 (drop!137 lt!52583 0)) (apply!406 lt!52583 0))))

(declare-fun lt!52574 () Unit!2452)

(assert (=> b!167925 (= lt!52574 lt!52573)))

(declare-fun lt!52586 () List!2860)

(assert (=> b!167925 (= lt!52586 (list!1036 (seqFromList!392 (t!26838 tokens!465))))))

(declare-fun lt!52579 () Unit!2452)

(assert (=> b!167925 (= lt!52579 (lemmaDropTail!116 lt!52586 0))))

(assert (=> b!167925 (= (tail!338 (drop!137 lt!52586 0)) (drop!137 lt!52586 (+ 0 1)))))

(declare-fun lt!52582 () Unit!2452)

(assert (=> b!167925 (= lt!52582 lt!52579)))

(declare-fun lt!52584 () Unit!2452)

(assert (=> b!167925 (= lt!52584 (forallContained!74 (list!1036 (seqFromList!392 (t!26838 tokens!465))) lambda!4711 (apply!405 (seqFromList!392 (t!26838 tokens!465)) 0)))))

(declare-fun lt!52576 () BalanceConc!1680)

(assert (=> b!167925 (= lt!52576 (printWithSeparatorTokenWhenNeededRec!76 thiss!17480 rules!1920 (seqFromList!392 (t!26838 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!167925 (= lt!52575 (maxPrefixZipperSequence!86 thiss!17480 rules!1920 (++!650 (charsOf!162 (apply!405 (seqFromList!392 (t!26838 tokens!465)) 0)) lt!52576)))))

(declare-fun res!75874 () Bool)

(assert (=> b!167925 (= res!75874 ((_ is Some!288) lt!52575))))

(declare-fun e!101388 () Bool)

(assert (=> b!167925 (=> (not res!75874) (not e!101388))))

(assert (=> b!167925 (= c!33489 e!101388)))

(declare-fun b!167926 () Bool)

(declare-fun e!101383 () BalanceConc!1680)

(declare-fun call!7259 () BalanceConc!1680)

(assert (=> b!167926 (= e!101383 (++!650 call!7259 lt!52576))))

(declare-fun bm!7255 () Bool)

(assert (=> bm!7255 (= call!7258 call!7260)))

(declare-fun b!167927 () Bool)

(assert (=> b!167927 (= e!101383 (BalanceConc!1681 Empty!836))))

(assert (=> b!167927 (= (print!124 thiss!17480 (singletonSeq!59 call!7258)) (printTailRec!87 thiss!17480 (singletonSeq!59 call!7258) 0 (BalanceConc!1681 Empty!836)))))

(declare-fun lt!52585 () Unit!2452)

(declare-fun Unit!2466 () Unit!2452)

(assert (=> b!167927 (= lt!52585 Unit!2466)))

(declare-fun lt!52577 () Unit!2452)

(assert (=> b!167927 (= lt!52577 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!32 thiss!17480 rules!1920 (list!1033 call!7262) (list!1033 lt!52576)))))

(assert (=> b!167927 false))

(declare-fun lt!52581 () Unit!2452)

(declare-fun Unit!2467 () Unit!2452)

(assert (=> b!167927 (= lt!52581 Unit!2467)))

(declare-fun b!167928 () Bool)

(assert (=> b!167928 (= e!101384 (<= 0 (size!2380 (seqFromList!392 (t!26838 tokens!465)))))))

(declare-fun b!167929 () Bool)

(assert (=> b!167929 (= e!101385 (BalanceConc!1681 Empty!836))))

(declare-fun bm!7256 () Bool)

(assert (=> bm!7256 (= call!7260 (apply!405 (seqFromList!392 (t!26838 tokens!465)) 0))))

(declare-fun b!167930 () Bool)

(assert (=> b!167930 (= c!33491 e!101386)))

(declare-fun res!75873 () Bool)

(assert (=> b!167930 (=> (not res!75873) (not e!101386))))

(assert (=> b!167930 (= res!75873 ((_ is Some!288) lt!52575))))

(assert (=> b!167930 (= e!101387 e!101383)))

(declare-fun bm!7257 () Bool)

(assert (=> bm!7257 (= call!7259 (++!650 call!7261 (ite c!33489 lt!52576 call!7262)))))

(declare-fun b!167931 () Bool)

(assert (=> b!167931 (= e!101387 call!7259)))

(declare-fun b!167932 () Bool)

(assert (=> b!167932 (= e!101388 (= (_1!1576 (v!13713 lt!52575)) (apply!405 (seqFromList!392 (t!26838 tokens!465)) 0)))))

(assert (= (and d!42173 res!75872) b!167928))

(assert (= (and d!42173 c!33490) b!167929))

(assert (= (and d!42173 (not c!33490)) b!167925))

(assert (= (and b!167925 res!75874) b!167932))

(assert (= (and b!167925 c!33489) b!167931))

(assert (= (and b!167925 (not c!33489)) b!167930))

(assert (= (and b!167930 res!75873) b!167924))

(assert (= (and b!167930 c!33491) b!167926))

(assert (= (and b!167930 (not c!33491)) b!167927))

(assert (= (or b!167926 b!167927) bm!7255))

(assert (= (or b!167926 b!167927) bm!7253))

(assert (= (or b!167931 b!167924 bm!7255) bm!7256))

(assert (= (or b!167931 b!167926) bm!7254))

(assert (= (or b!167931 b!167926) bm!7257))

(declare-fun m!163227 () Bool)

(assert (=> b!167927 m!163227))

(declare-fun m!163229 () Bool)

(assert (=> b!167927 m!163229))

(assert (=> b!167927 m!163227))

(declare-fun m!163231 () Bool)

(assert (=> b!167927 m!163231))

(assert (=> b!167927 m!163227))

(declare-fun m!163233 () Bool)

(assert (=> b!167927 m!163233))

(assert (=> b!167927 m!163229))

(declare-fun m!163235 () Bool)

(assert (=> b!167927 m!163235))

(declare-fun m!163237 () Bool)

(assert (=> b!167927 m!163237))

(assert (=> b!167927 m!163235))

(assert (=> bm!7256 m!162447))

(declare-fun m!163239 () Bool)

(assert (=> bm!7256 m!163239))

(declare-fun m!163241 () Bool)

(assert (=> b!167925 m!163241))

(declare-fun m!163243 () Bool)

(assert (=> b!167925 m!163243))

(declare-fun m!163245 () Bool)

(assert (=> b!167925 m!163245))

(assert (=> b!167925 m!163239))

(declare-fun m!163247 () Bool)

(assert (=> b!167925 m!163247))

(declare-fun m!163249 () Bool)

(assert (=> b!167925 m!163249))

(assert (=> b!167925 m!163239))

(declare-fun m!163251 () Bool)

(assert (=> b!167925 m!163251))

(assert (=> b!167925 m!162447))

(assert (=> b!167925 m!163245))

(declare-fun m!163253 () Bool)

(assert (=> b!167925 m!163253))

(assert (=> b!167925 m!163241))

(declare-fun m!163255 () Bool)

(assert (=> b!167925 m!163255))

(declare-fun m!163257 () Bool)

(assert (=> b!167925 m!163257))

(declare-fun m!163259 () Bool)

(assert (=> b!167925 m!163259))

(declare-fun m!163261 () Bool)

(assert (=> b!167925 m!163261))

(assert (=> b!167925 m!162447))

(assert (=> b!167925 m!163239))

(assert (=> b!167925 m!163257))

(assert (=> b!167925 m!163251))

(declare-fun m!163263 () Bool)

(assert (=> b!167925 m!163263))

(assert (=> b!167925 m!163263))

(declare-fun m!163265 () Bool)

(assert (=> b!167925 m!163265))

(assert (=> b!167925 m!162447))

(declare-fun m!163267 () Bool)

(assert (=> b!167925 m!163267))

(assert (=> b!167928 m!162447))

(declare-fun m!163269 () Bool)

(assert (=> b!167928 m!163269))

(declare-fun m!163271 () Bool)

(assert (=> bm!7254 m!163271))

(declare-fun m!163273 () Bool)

(assert (=> bm!7253 m!163273))

(declare-fun m!163275 () Bool)

(assert (=> bm!7257 m!163275))

(declare-fun m!163277 () Bool)

(assert (=> b!167926 m!163277))

(assert (=> b!167932 m!162447))

(assert (=> b!167932 m!163239))

(declare-fun m!163279 () Bool)

(assert (=> d!42173 m!163279))

(assert (=> d!42173 m!162447))

(assert (=> d!42173 m!163269))

(assert (=> d!42173 m!162447))

(declare-fun m!163281 () Bool)

(assert (=> d!42173 m!163281))

(assert (=> d!42173 m!163281))

(declare-fun m!163283 () Bool)

(assert (=> d!42173 m!163283))

(assert (=> d!42173 m!162447))

(assert (=> d!42173 m!163245))

(assert (=> d!42173 m!163245))

(assert (=> d!42173 m!163281))

(declare-fun m!163285 () Bool)

(assert (=> d!42173 m!163285))

(assert (=> b!167499 d!42173))

(declare-fun d!42175 () Bool)

(assert (=> d!42175 (= (list!1033 (charsOf!162 (h!8247 tokens!465))) (list!1037 (c!33394 (charsOf!162 (h!8247 tokens!465)))))))

(declare-fun bs!16334 () Bool)

(assert (= bs!16334 d!42175))

(declare-fun m!163287 () Bool)

(assert (=> bs!16334 m!163287))

(assert (=> b!167499 d!42175))

(declare-fun d!42177 () Bool)

(declare-fun lt!52590 () BalanceConc!1680)

(assert (=> d!42177 (= (list!1033 lt!52590) (originalCharacters!550 (h!8247 tokens!465)))))

(declare-fun dynLambda!1053 (Int TokenValue!529) BalanceConc!1680)

(assert (=> d!42177 (= lt!52590 (dynLambda!1053 (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (value!18765 (h!8247 tokens!465))))))

(assert (=> d!42177 (= (charsOf!162 (h!8247 tokens!465)) lt!52590)))

(declare-fun b_lambda!3729 () Bool)

(assert (=> (not b_lambda!3729) (not d!42177)))

(declare-fun tb!6597 () Bool)

(declare-fun t!26880 () Bool)

(assert (=> (and b!167511 (= (toChars!1029 (transformation!507 (h!8246 rules!1920))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465))))) t!26880) tb!6597))

(declare-fun b!167979 () Bool)

(declare-fun e!101423 () Bool)

(declare-fun tp!83433 () Bool)

(declare-fun inv!3679 (Conc!836) Bool)

(assert (=> b!167979 (= e!101423 (and (inv!3679 (c!33394 (dynLambda!1053 (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (value!18765 (h!8247 tokens!465))))) tp!83433))))

(declare-fun result!9248 () Bool)

(declare-fun inv!3680 (BalanceConc!1680) Bool)

(assert (=> tb!6597 (= result!9248 (and (inv!3680 (dynLambda!1053 (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (value!18765 (h!8247 tokens!465)))) e!101423))))

(assert (= tb!6597 b!167979))

(declare-fun m!163293 () Bool)

(assert (=> b!167979 m!163293))

(declare-fun m!163295 () Bool)

(assert (=> tb!6597 m!163295))

(assert (=> d!42177 t!26880))

(declare-fun b_and!10889 () Bool)

(assert (= b_and!10851 (and (=> t!26880 result!9248) b_and!10889)))

(declare-fun tb!6599 () Bool)

(declare-fun t!26882 () Bool)

(assert (=> (and b!167512 (= (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465))))) t!26882) tb!6599))

(declare-fun result!9252 () Bool)

(assert (= result!9252 result!9248))

(assert (=> d!42177 t!26882))

(declare-fun b_and!10891 () Bool)

(assert (= b_and!10855 (and (=> t!26882 result!9252) b_and!10891)))

(declare-fun t!26884 () Bool)

(declare-fun tb!6601 () Bool)

(assert (=> (and b!167506 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465))))) t!26884) tb!6601))

(declare-fun result!9254 () Bool)

(assert (= result!9254 result!9248))

(assert (=> d!42177 t!26884))

(declare-fun b_and!10893 () Bool)

(assert (= b_and!10859 (and (=> t!26884 result!9254) b_and!10893)))

(declare-fun m!163297 () Bool)

(assert (=> d!42177 m!163297))

(declare-fun m!163299 () Bool)

(assert (=> d!42177 m!163299))

(assert (=> b!167499 d!42177))

(declare-fun d!42179 () Bool)

(declare-fun e!101430 () Bool)

(assert (=> d!42179 e!101430))

(declare-fun res!75878 () Bool)

(assert (=> d!42179 (=> (not res!75878) (not e!101430))))

(declare-fun lt!52591 () List!2858)

(assert (=> d!42179 (= res!75878 (= (content!395 lt!52591) ((_ map or) (content!395 lt!52290) (content!395 lt!52288))))))

(declare-fun e!101431 () List!2858)

(assert (=> d!42179 (= lt!52591 e!101431)))

(declare-fun c!33492 () Bool)

(assert (=> d!42179 (= c!33492 ((_ is Nil!2848) lt!52290))))

(assert (=> d!42179 (= (++!648 lt!52290 lt!52288) lt!52591)))

(declare-fun b!167985 () Bool)

(assert (=> b!167985 (= e!101431 (Cons!2848 (h!8245 lt!52290) (++!648 (t!26836 lt!52290) lt!52288)))))

(declare-fun b!167986 () Bool)

(declare-fun res!75877 () Bool)

(assert (=> b!167986 (=> (not res!75877) (not e!101430))))

(assert (=> b!167986 (= res!75877 (= (size!2381 lt!52591) (+ (size!2381 lt!52290) (size!2381 lt!52288))))))

(declare-fun b!167984 () Bool)

(assert (=> b!167984 (= e!101431 lt!52288)))

(declare-fun b!167987 () Bool)

(assert (=> b!167987 (= e!101430 (or (not (= lt!52288 Nil!2848)) (= lt!52591 lt!52290)))))

(assert (= (and d!42179 c!33492) b!167984))

(assert (= (and d!42179 (not c!33492)) b!167985))

(assert (= (and d!42179 res!75878) b!167986))

(assert (= (and b!167986 res!75877) b!167987))

(declare-fun m!163301 () Bool)

(assert (=> d!42179 m!163301))

(assert (=> d!42179 m!162625))

(declare-fun m!163303 () Bool)

(assert (=> d!42179 m!163303))

(declare-fun m!163305 () Bool)

(assert (=> b!167985 m!163305))

(declare-fun m!163307 () Bool)

(assert (=> b!167986 m!163307))

(assert (=> b!167986 m!162633))

(declare-fun m!163309 () Bool)

(assert (=> b!167986 m!163309))

(assert (=> b!167499 d!42179))

(declare-fun d!42181 () Bool)

(assert (=> d!42181 (= (seqFromList!392 (t!26838 tokens!465)) (fromListB!157 (t!26838 tokens!465)))))

(declare-fun bs!16335 () Bool)

(assert (= bs!16335 d!42181))

(declare-fun m!163311 () Bool)

(assert (=> bs!16335 m!163311))

(assert (=> b!167499 d!42181))

(declare-fun d!42183 () Bool)

(declare-fun e!101432 () Bool)

(assert (=> d!42183 e!101432))

(declare-fun res!75880 () Bool)

(assert (=> d!42183 (=> (not res!75880) (not e!101432))))

(declare-fun lt!52592 () List!2858)

(assert (=> d!42183 (= res!75880 (= (content!395 lt!52592) ((_ map or) (content!395 lt!52291) (content!395 lt!52294))))))

(declare-fun e!101433 () List!2858)

(assert (=> d!42183 (= lt!52592 e!101433)))

(declare-fun c!33493 () Bool)

(assert (=> d!42183 (= c!33493 ((_ is Nil!2848) lt!52291))))

(assert (=> d!42183 (= (++!648 lt!52291 lt!52294) lt!52592)))

(declare-fun b!167989 () Bool)

(assert (=> b!167989 (= e!101433 (Cons!2848 (h!8245 lt!52291) (++!648 (t!26836 lt!52291) lt!52294)))))

(declare-fun b!167990 () Bool)

(declare-fun res!75879 () Bool)

(assert (=> b!167990 (=> (not res!75879) (not e!101432))))

(assert (=> b!167990 (= res!75879 (= (size!2381 lt!52592) (+ (size!2381 lt!52291) (size!2381 lt!52294))))))

(declare-fun b!167988 () Bool)

(assert (=> b!167988 (= e!101433 lt!52294)))

(declare-fun b!167991 () Bool)

(assert (=> b!167991 (= e!101432 (or (not (= lt!52294 Nil!2848)) (= lt!52592 lt!52291)))))

(assert (= (and d!42183 c!33493) b!167988))

(assert (= (and d!42183 (not c!33493)) b!167989))

(assert (= (and d!42183 res!75880) b!167990))

(assert (= (and b!167990 res!75879) b!167991))

(declare-fun m!163321 () Bool)

(assert (=> d!42183 m!163321))

(declare-fun m!163323 () Bool)

(assert (=> d!42183 m!163323))

(assert (=> d!42183 m!162627))

(declare-fun m!163325 () Bool)

(assert (=> b!167989 m!163325))

(declare-fun m!163327 () Bool)

(assert (=> b!167990 m!163327))

(declare-fun m!163329 () Bool)

(assert (=> b!167990 m!163329))

(assert (=> b!167990 m!162635))

(assert (=> b!167499 d!42183))

(declare-fun d!42185 () Bool)

(assert (=> d!42185 (= (++!648 (++!648 lt!52290 lt!52291) lt!52294) (++!648 lt!52290 (++!648 lt!52291 lt!52294)))))

(declare-fun lt!52595 () Unit!2452)

(declare-fun choose!1821 (List!2858 List!2858 List!2858) Unit!2452)

(assert (=> d!42185 (= lt!52595 (choose!1821 lt!52290 lt!52291 lt!52294))))

(assert (=> d!42185 (= (lemmaConcatAssociativity!192 lt!52290 lt!52291 lt!52294) lt!52595)))

(declare-fun bs!16338 () Bool)

(assert (= bs!16338 d!42185))

(assert (=> bs!16338 m!162449))

(assert (=> bs!16338 m!162449))

(assert (=> bs!16338 m!162451))

(assert (=> bs!16338 m!162459))

(declare-fun m!163331 () Bool)

(assert (=> bs!16338 m!163331))

(assert (=> bs!16338 m!162459))

(declare-fun m!163333 () Bool)

(assert (=> bs!16338 m!163333))

(assert (=> b!167499 d!42185))

(declare-fun bs!16339 () Bool)

(declare-fun b!168018 () Bool)

(assert (= bs!16339 (and b!168018 d!42173)))

(declare-fun lambda!4713 () Int)

(assert (=> bs!16339 (not (= lambda!4713 lambda!4710))))

(declare-fun bs!16340 () Bool)

(assert (= bs!16340 (and b!168018 d!42141)))

(assert (=> bs!16340 (= lambda!4713 lambda!4707)))

(declare-fun bs!16341 () Bool)

(assert (= bs!16341 (and b!168018 b!167925)))

(assert (=> bs!16341 (= lambda!4713 lambda!4711)))

(declare-fun bs!16342 () Bool)

(assert (= bs!16342 (and b!168018 b!167804)))

(assert (=> bs!16342 (= lambda!4713 lambda!4697)))

(declare-fun bs!16343 () Bool)

(assert (= bs!16343 (and b!168018 d!42069)))

(assert (=> bs!16343 (not (= lambda!4713 lambda!4686))))

(declare-fun bs!16344 () Bool)

(assert (= bs!16344 (and b!168018 b!167496)))

(assert (=> bs!16344 (= lambda!4713 lambda!4676)))

(declare-fun bs!16345 () Bool)

(assert (= bs!16345 (and b!168018 b!167666)))

(assert (=> bs!16345 (= lambda!4713 lambda!4687)))

(declare-fun bs!16346 () Bool)

(assert (= bs!16346 (and b!168018 b!167523)))

(assert (=> bs!16346 (not (= lambda!4713 lambda!4675))))

(declare-fun b!168021 () Bool)

(declare-fun e!101450 () Bool)

(assert (=> b!168021 (= e!101450 true)))

(declare-fun b!168020 () Bool)

(declare-fun e!101449 () Bool)

(assert (=> b!168020 (= e!101449 e!101450)))

(declare-fun b!168019 () Bool)

(declare-fun e!101448 () Bool)

(assert (=> b!168019 (= e!101448 e!101449)))

(assert (=> b!168018 e!101448))

(assert (= b!168020 b!168021))

(assert (= b!168019 b!168020))

(assert (= (and b!168018 ((_ is Cons!2849) rules!1920)) b!168019))

(assert (=> b!168021 (< (dynLambda!1047 order!1501 (toValue!1170 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4713))))

(assert (=> b!168021 (< (dynLambda!1049 order!1505 (toChars!1029 (transformation!507 (h!8246 rules!1920)))) (dynLambda!1048 order!1503 lambda!4713))))

(assert (=> b!168018 true))

(declare-fun bm!7258 () Bool)

(declare-fun call!7265 () List!2858)

(declare-fun call!7263 () List!2858)

(assert (=> bm!7258 (= call!7265 call!7263)))

(declare-fun c!33495 () Bool)

(declare-fun c!33497 () Bool)

(assert (=> bm!7258 (= c!33495 c!33497)))

(declare-fun b!168009 () Bool)

(declare-fun e!101446 () List!2858)

(assert (=> b!168009 (= e!101446 Nil!2848)))

(declare-fun b!168010 () Bool)

(declare-fun e!101444 () List!2858)

(declare-fun call!7267 () BalanceConc!1680)

(assert (=> b!168010 (= e!101444 (list!1033 call!7267))))

(declare-fun b!168011 () Bool)

(declare-fun e!101447 () List!2858)

(declare-fun call!7266 () List!2858)

(declare-fun lt!52600 () List!2858)

(assert (=> b!168011 (= e!101447 (++!648 call!7266 lt!52600))))

(declare-fun b!168012 () Bool)

(assert (=> b!168012 (= e!101447 Nil!2848)))

(assert (=> b!168012 (= (print!124 thiss!17480 (singletonSeq!59 (h!8247 (t!26838 tokens!465)))) (printTailRec!87 thiss!17480 (singletonSeq!59 (h!8247 (t!26838 tokens!465))) 0 (BalanceConc!1681 Empty!836)))))

(declare-fun lt!52596 () Unit!2452)

(declare-fun Unit!2468 () Unit!2452)

(assert (=> b!168012 (= lt!52596 Unit!2468)))

(declare-fun lt!52601 () Unit!2452)

(assert (=> b!168012 (= lt!52601 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!32 thiss!17480 rules!1920 call!7265 lt!52600))))

(assert (=> b!168012 false))

(declare-fun lt!52598 () Unit!2452)

(declare-fun Unit!2469 () Unit!2452)

(assert (=> b!168012 (= lt!52598 Unit!2469)))

(declare-fun b!168013 () Bool)

(declare-fun e!101443 () BalanceConc!1680)

(assert (=> b!168013 (= e!101443 (charsOf!162 separatorToken!170))))

(declare-fun b!168014 () Bool)

(assert (=> b!168014 (= e!101444 call!7263)))

(declare-fun b!168015 () Bool)

(declare-fun lt!52599 () Option!291)

(assert (=> b!168015 (= c!33497 (and ((_ is Some!290) lt!52599) (not (= (_1!1579 (v!13721 lt!52599)) (h!8247 (t!26838 tokens!465))))))))

(declare-fun e!101445 () List!2858)

(assert (=> b!168015 (= e!101445 e!101447)))

(declare-fun call!7264 () BalanceConc!1680)

(declare-fun bm!7260 () Bool)

(declare-fun c!33496 () Bool)

(assert (=> bm!7260 (= call!7263 (list!1033 (ite c!33496 call!7264 e!101443)))))

(declare-fun b!168016 () Bool)

(assert (=> b!168016 (= e!101445 call!7266)))

(declare-fun b!168017 () Bool)

(assert (=> b!168017 (= e!101443 call!7267)))

(declare-fun bm!7261 () Bool)

(assert (=> bm!7261 (= call!7264 (charsOf!162 (h!8247 (t!26838 tokens!465))))))

(declare-fun d!42191 () Bool)

(declare-fun c!33498 () Bool)

(assert (=> d!42191 (= c!33498 ((_ is Cons!2850) (t!26838 tokens!465)))))

(assert (=> d!42191 (= (printWithSeparatorTokenWhenNeededList!86 thiss!17480 rules!1920 (t!26838 tokens!465) separatorToken!170) e!101446)))

(declare-fun bm!7259 () Bool)

(declare-fun c!33494 () Bool)

(assert (=> bm!7259 (= c!33494 c!33496)))

(assert (=> bm!7259 (= call!7266 (++!648 e!101444 (ite c!33496 lt!52600 call!7265)))))

(assert (=> b!168018 (= e!101446 e!101445)))

(declare-fun lt!52597 () Unit!2452)

(assert (=> b!168018 (= lt!52597 (forallContained!74 (t!26838 tokens!465) lambda!4713 (h!8247 (t!26838 tokens!465))))))

(assert (=> b!168018 (= lt!52600 (printWithSeparatorTokenWhenNeededList!86 thiss!17480 rules!1920 (t!26838 (t!26838 tokens!465)) separatorToken!170))))

(assert (=> b!168018 (= lt!52599 (maxPrefix!125 thiss!17480 rules!1920 (++!648 (list!1033 (charsOf!162 (h!8247 (t!26838 tokens!465)))) lt!52600)))))

(assert (=> b!168018 (= c!33496 (and ((_ is Some!290) lt!52599) (= (_1!1579 (v!13721 lt!52599)) (h!8247 (t!26838 tokens!465)))))))

(declare-fun bm!7262 () Bool)

(assert (=> bm!7262 (= call!7267 call!7264)))

(assert (= (and d!42191 c!33498) b!168018))

(assert (= (and d!42191 (not c!33498)) b!168009))

(assert (= (and b!168018 c!33496) b!168016))

(assert (= (and b!168018 (not c!33496)) b!168015))

(assert (= (and b!168015 c!33497) b!168011))

(assert (= (and b!168015 (not c!33497)) b!168012))

(assert (= (or b!168011 b!168012) bm!7262))

(assert (= (or b!168011 b!168012) bm!7258))

(assert (= (and bm!7258 c!33495) b!168013))

(assert (= (and bm!7258 (not c!33495)) b!168017))

(assert (= (or b!168016 bm!7262) bm!7261))

(assert (= (or b!168016 bm!7258) bm!7260))

(assert (= (or b!168016 b!168011) bm!7259))

(assert (= (and bm!7259 c!33494) b!168014))

(assert (= (and bm!7259 (not c!33494)) b!168010))

(declare-fun m!163335 () Bool)

(assert (=> b!168010 m!163335))

(declare-fun m!163337 () Bool)

(assert (=> bm!7260 m!163337))

(declare-fun m!163339 () Bool)

(assert (=> bm!7261 m!163339))

(declare-fun m!163341 () Bool)

(assert (=> b!168018 m!163341))

(declare-fun m!163343 () Bool)

(assert (=> b!168018 m!163343))

(declare-fun m!163345 () Bool)

(assert (=> b!168018 m!163345))

(declare-fun m!163347 () Bool)

(assert (=> b!168018 m!163347))

(assert (=> b!168018 m!163339))

(assert (=> b!168018 m!163341))

(assert (=> b!168018 m!163339))

(assert (=> b!168018 m!163343))

(declare-fun m!163349 () Bool)

(assert (=> b!168018 m!163349))

(assert (=> b!168013 m!162455))

(declare-fun m!163351 () Bool)

(assert (=> b!168011 m!163351))

(declare-fun m!163353 () Bool)

(assert (=> bm!7259 m!163353))

(declare-fun m!163355 () Bool)

(assert (=> b!168012 m!163355))

(assert (=> b!168012 m!163355))

(declare-fun m!163357 () Bool)

(assert (=> b!168012 m!163357))

(assert (=> b!168012 m!163355))

(declare-fun m!163359 () Bool)

(assert (=> b!168012 m!163359))

(declare-fun m!163361 () Bool)

(assert (=> b!168012 m!163361))

(assert (=> b!167499 d!42191))

(declare-fun d!42193 () Bool)

(declare-fun lt!52602 () BalanceConc!1680)

(assert (=> d!42193 (= (list!1033 lt!52602) (originalCharacters!550 separatorToken!170))))

(assert (=> d!42193 (= lt!52602 (dynLambda!1053 (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (value!18765 separatorToken!170)))))

(assert (=> d!42193 (= (charsOf!162 separatorToken!170) lt!52602)))

(declare-fun b_lambda!3743 () Bool)

(assert (=> (not b_lambda!3743) (not d!42193)))

(declare-fun t!26890 () Bool)

(declare-fun tb!6607 () Bool)

(assert (=> (and b!167511 (= (toChars!1029 (transformation!507 (h!8246 rules!1920))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170)))) t!26890) tb!6607))

(declare-fun b!168022 () Bool)

(declare-fun e!101451 () Bool)

(declare-fun tp!83453 () Bool)

(assert (=> b!168022 (= e!101451 (and (inv!3679 (c!33394 (dynLambda!1053 (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (value!18765 separatorToken!170)))) tp!83453))))

(declare-fun result!9262 () Bool)

(assert (=> tb!6607 (= result!9262 (and (inv!3680 (dynLambda!1053 (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (value!18765 separatorToken!170))) e!101451))))

(assert (= tb!6607 b!168022))

(declare-fun m!163363 () Bool)

(assert (=> b!168022 m!163363))

(declare-fun m!163365 () Bool)

(assert (=> tb!6607 m!163365))

(assert (=> d!42193 t!26890))

(declare-fun b_and!10899 () Bool)

(assert (= b_and!10889 (and (=> t!26890 result!9262) b_and!10899)))

(declare-fun t!26892 () Bool)

(declare-fun tb!6609 () Bool)

(assert (=> (and b!167512 (= (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170)))) t!26892) tb!6609))

(declare-fun result!9264 () Bool)

(assert (= result!9264 result!9262))

(assert (=> d!42193 t!26892))

(declare-fun b_and!10901 () Bool)

(assert (= b_and!10891 (and (=> t!26892 result!9264) b_and!10901)))

(declare-fun t!26894 () Bool)

(declare-fun tb!6611 () Bool)

(assert (=> (and b!167506 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170)))) t!26894) tb!6611))

(declare-fun result!9266 () Bool)

(assert (= result!9266 result!9262))

(assert (=> d!42193 t!26894))

(declare-fun b_and!10903 () Bool)

(assert (= b_and!10893 (and (=> t!26894 result!9266) b_and!10903)))

(declare-fun m!163367 () Bool)

(assert (=> d!42193 m!163367))

(declare-fun m!163369 () Bool)

(assert (=> d!42193 m!163369))

(assert (=> b!167499 d!42193))

(declare-fun d!42195 () Bool)

(declare-fun e!101452 () Bool)

(assert (=> d!42195 e!101452))

(declare-fun res!75882 () Bool)

(assert (=> d!42195 (=> (not res!75882) (not e!101452))))

(declare-fun lt!52603 () List!2858)

(assert (=> d!42195 (= res!75882 (= (content!395 lt!52603) ((_ map or) (content!395 lt!52290) (content!395 lt!52291))))))

(declare-fun e!101453 () List!2858)

(assert (=> d!42195 (= lt!52603 e!101453)))

(declare-fun c!33499 () Bool)

(assert (=> d!42195 (= c!33499 ((_ is Nil!2848) lt!52290))))

(assert (=> d!42195 (= (++!648 lt!52290 lt!52291) lt!52603)))

(declare-fun b!168024 () Bool)

(assert (=> b!168024 (= e!101453 (Cons!2848 (h!8245 lt!52290) (++!648 (t!26836 lt!52290) lt!52291)))))

(declare-fun b!168025 () Bool)

(declare-fun res!75881 () Bool)

(assert (=> b!168025 (=> (not res!75881) (not e!101452))))

(assert (=> b!168025 (= res!75881 (= (size!2381 lt!52603) (+ (size!2381 lt!52290) (size!2381 lt!52291))))))

(declare-fun b!168023 () Bool)

(assert (=> b!168023 (= e!101453 lt!52291)))

(declare-fun b!168026 () Bool)

(assert (=> b!168026 (= e!101452 (or (not (= lt!52291 Nil!2848)) (= lt!52603 lt!52290)))))

(assert (= (and d!42195 c!33499) b!168023))

(assert (= (and d!42195 (not c!33499)) b!168024))

(assert (= (and d!42195 res!75882) b!168025))

(assert (= (and b!168025 res!75881) b!168026))

(declare-fun m!163371 () Bool)

(assert (=> d!42195 m!163371))

(assert (=> d!42195 m!162625))

(assert (=> d!42195 m!163323))

(declare-fun m!163373 () Bool)

(assert (=> b!168024 m!163373))

(declare-fun m!163375 () Bool)

(assert (=> b!168025 m!163375))

(assert (=> b!168025 m!162633))

(assert (=> b!168025 m!163329))

(assert (=> b!167499 d!42195))

(declare-fun d!42197 () Bool)

(declare-fun res!75887 () Bool)

(declare-fun e!101456 () Bool)

(assert (=> d!42197 (=> (not res!75887) (not e!101456))))

(declare-fun isEmpty!1189 (List!2858) Bool)

(assert (=> d!42197 (= res!75887 (not (isEmpty!1189 (originalCharacters!550 separatorToken!170))))))

(assert (=> d!42197 (= (inv!3676 separatorToken!170) e!101456)))

(declare-fun b!168031 () Bool)

(declare-fun res!75888 () Bool)

(assert (=> b!168031 (=> (not res!75888) (not e!101456))))

(assert (=> b!168031 (= res!75888 (= (originalCharacters!550 separatorToken!170) (list!1033 (dynLambda!1053 (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (value!18765 separatorToken!170)))))))

(declare-fun b!168032 () Bool)

(assert (=> b!168032 (= e!101456 (= (size!2377 separatorToken!170) (size!2381 (originalCharacters!550 separatorToken!170))))))

(assert (= (and d!42197 res!75887) b!168031))

(assert (= (and b!168031 res!75888) b!168032))

(declare-fun b_lambda!3745 () Bool)

(assert (=> (not b_lambda!3745) (not b!168031)))

(assert (=> b!168031 t!26890))

(declare-fun b_and!10905 () Bool)

(assert (= b_and!10899 (and (=> t!26890 result!9262) b_and!10905)))

(assert (=> b!168031 t!26892))

(declare-fun b_and!10907 () Bool)

(assert (= b_and!10901 (and (=> t!26892 result!9264) b_and!10907)))

(assert (=> b!168031 t!26894))

(declare-fun b_and!10909 () Bool)

(assert (= b_and!10903 (and (=> t!26894 result!9266) b_and!10909)))

(declare-fun m!163377 () Bool)

(assert (=> d!42197 m!163377))

(assert (=> b!168031 m!163369))

(assert (=> b!168031 m!163369))

(declare-fun m!163379 () Bool)

(assert (=> b!168031 m!163379))

(declare-fun m!163381 () Bool)

(assert (=> b!168032 m!163381))

(assert (=> start!18078 d!42197))

(declare-fun d!42199 () Bool)

(assert (=> d!42199 true))

(declare-fun lt!52606 () Bool)

(declare-fun lambda!4716 () Int)

(declare-fun forall!549 (List!2859 Int) Bool)

(assert (=> d!42199 (= lt!52606 (forall!549 rules!1920 lambda!4716))))

(declare-fun e!101462 () Bool)

(assert (=> d!42199 (= lt!52606 e!101462)))

(declare-fun res!75893 () Bool)

(assert (=> d!42199 (=> res!75893 e!101462)))

(assert (=> d!42199 (= res!75893 (not ((_ is Cons!2849) rules!1920)))))

(assert (=> d!42199 (= (rulesValidInductive!112 thiss!17480 rules!1920) lt!52606)))

(declare-fun b!168037 () Bool)

(declare-fun e!101461 () Bool)

(assert (=> b!168037 (= e!101462 e!101461)))

(declare-fun res!75894 () Bool)

(assert (=> b!168037 (=> (not res!75894) (not e!101461))))

(declare-fun ruleValid!52 (LexerInterface!393 Rule!814) Bool)

(assert (=> b!168037 (= res!75894 (ruleValid!52 thiss!17480 (h!8246 rules!1920)))))

(declare-fun b!168038 () Bool)

(assert (=> b!168038 (= e!101461 (rulesValidInductive!112 thiss!17480 (t!26837 rules!1920)))))

(assert (= (and d!42199 (not res!75893)) b!168037))

(assert (= (and b!168037 res!75894) b!168038))

(declare-fun m!163383 () Bool)

(assert (=> d!42199 m!163383))

(declare-fun m!163385 () Bool)

(assert (=> b!168037 m!163385))

(declare-fun m!163387 () Bool)

(assert (=> b!168038 m!163387))

(assert (=> b!167517 d!42199))

(declare-fun d!42201 () Bool)

(assert (=> d!42201 (= (isEmpty!1179 rules!1920) ((_ is Nil!2849) rules!1920))))

(assert (=> b!167516 d!42201))

(declare-fun b!168051 () Bool)

(declare-fun e!101470 () Bool)

(declare-fun inv!17 (TokenValue!529) Bool)

(assert (=> b!168051 (= e!101470 (inv!17 (value!18765 separatorToken!170)))))

(declare-fun b!168052 () Bool)

(declare-fun e!101471 () Bool)

(declare-fun inv!16 (TokenValue!529) Bool)

(assert (=> b!168052 (= e!101471 (inv!16 (value!18765 separatorToken!170)))))

(declare-fun b!168053 () Bool)

(assert (=> b!168053 (= e!101471 e!101470)))

(declare-fun c!33504 () Bool)

(assert (=> b!168053 (= c!33504 ((_ is IntegerValue!1588) (value!18765 separatorToken!170)))))

(declare-fun b!168054 () Bool)

(declare-fun res!75897 () Bool)

(declare-fun e!101469 () Bool)

(assert (=> b!168054 (=> res!75897 e!101469)))

(assert (=> b!168054 (= res!75897 (not ((_ is IntegerValue!1589) (value!18765 separatorToken!170))))))

(assert (=> b!168054 (= e!101470 e!101469)))

(declare-fun d!42203 () Bool)

(declare-fun c!33505 () Bool)

(assert (=> d!42203 (= c!33505 ((_ is IntegerValue!1587) (value!18765 separatorToken!170)))))

(assert (=> d!42203 (= (inv!21 (value!18765 separatorToken!170)) e!101471)))

(declare-fun b!168055 () Bool)

(declare-fun inv!15 (TokenValue!529) Bool)

(assert (=> b!168055 (= e!101469 (inv!15 (value!18765 separatorToken!170)))))

(assert (= (and d!42203 c!33505) b!168052))

(assert (= (and d!42203 (not c!33505)) b!168053))

(assert (= (and b!168053 c!33504) b!168051))

(assert (= (and b!168053 (not c!33504)) b!168054))

(assert (= (and b!168054 (not res!75897)) b!168055))

(declare-fun m!163389 () Bool)

(assert (=> b!168051 m!163389))

(declare-fun m!163391 () Bool)

(assert (=> b!168052 m!163391))

(declare-fun m!163393 () Bool)

(assert (=> b!168055 m!163393))

(assert (=> b!167518 d!42203))

(declare-fun d!42205 () Bool)

(declare-fun lt!52608 () Bool)

(declare-fun e!101473 () Bool)

(assert (=> d!42205 (= lt!52608 e!101473)))

(declare-fun res!75899 () Bool)

(assert (=> d!42205 (=> (not res!75899) (not e!101473))))

(assert (=> d!42205 (= res!75899 (= (list!1036 (_1!1577 (lex!193 thiss!17480 rules!1920 (print!124 thiss!17480 (singletonSeq!59 separatorToken!170))))) (list!1036 (singletonSeq!59 separatorToken!170))))))

(declare-fun e!101472 () Bool)

(assert (=> d!42205 (= lt!52608 e!101472)))

(declare-fun res!75900 () Bool)

(assert (=> d!42205 (=> (not res!75900) (not e!101472))))

(declare-fun lt!52607 () tuple2!2722)

(assert (=> d!42205 (= res!75900 (= (size!2380 (_1!1577 lt!52607)) 1))))

(assert (=> d!42205 (= lt!52607 (lex!193 thiss!17480 rules!1920 (print!124 thiss!17480 (singletonSeq!59 separatorToken!170))))))

(assert (=> d!42205 (not (isEmpty!1179 rules!1920))))

(assert (=> d!42205 (= (rulesProduceIndividualToken!142 thiss!17480 rules!1920 separatorToken!170) lt!52608)))

(declare-fun b!168056 () Bool)

(declare-fun res!75898 () Bool)

(assert (=> b!168056 (=> (not res!75898) (not e!101472))))

(assert (=> b!168056 (= res!75898 (= (apply!405 (_1!1577 lt!52607) 0) separatorToken!170))))

(declare-fun b!168057 () Bool)

(assert (=> b!168057 (= e!101472 (isEmpty!1183 (_2!1577 lt!52607)))))

(declare-fun b!168058 () Bool)

(assert (=> b!168058 (= e!101473 (isEmpty!1183 (_2!1577 (lex!193 thiss!17480 rules!1920 (print!124 thiss!17480 (singletonSeq!59 separatorToken!170))))))))

(assert (= (and d!42205 res!75900) b!168056))

(assert (= (and b!168056 res!75898) b!168057))

(assert (= (and d!42205 res!75899) b!168058))

(assert (=> d!42205 m!162517))

(declare-fun m!163395 () Bool)

(assert (=> d!42205 m!163395))

(declare-fun m!163397 () Bool)

(assert (=> d!42205 m!163397))

(declare-fun m!163399 () Bool)

(assert (=> d!42205 m!163399))

(assert (=> d!42205 m!163399))

(declare-fun m!163401 () Bool)

(assert (=> d!42205 m!163401))

(declare-fun m!163403 () Bool)

(assert (=> d!42205 m!163403))

(assert (=> d!42205 m!163397))

(assert (=> d!42205 m!163397))

(declare-fun m!163405 () Bool)

(assert (=> d!42205 m!163405))

(declare-fun m!163407 () Bool)

(assert (=> b!168056 m!163407))

(declare-fun m!163409 () Bool)

(assert (=> b!168057 m!163409))

(assert (=> b!168058 m!163397))

(assert (=> b!168058 m!163397))

(assert (=> b!168058 m!163399))

(assert (=> b!168058 m!163399))

(assert (=> b!168058 m!163401))

(declare-fun m!163411 () Bool)

(assert (=> b!168058 m!163411))

(assert (=> b!167497 d!42205))

(declare-fun d!42207 () Bool)

(declare-fun isEmpty!1190 (Option!289) Bool)

(assert (=> d!42207 (= (isDefined!140 (maxPrefixZipperSequence!86 thiss!17480 rules!1920 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465))))) (not (isEmpty!1190 (maxPrefixZipperSequence!86 thiss!17480 rules!1920 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))))

(declare-fun bs!16347 () Bool)

(assert (= bs!16347 d!42207))

(assert (=> bs!16347 m!162485))

(declare-fun m!163413 () Bool)

(assert (=> bs!16347 m!163413))

(assert (=> b!167496 d!42207))

(declare-fun b!168075 () Bool)

(declare-fun e!101487 () Bool)

(declare-fun e!101491 () Bool)

(assert (=> b!168075 (= e!101487 e!101491)))

(declare-fun res!75913 () Bool)

(assert (=> b!168075 (=> (not res!75913) (not e!101491))))

(declare-fun lt!52627 () Option!289)

(declare-fun get!778 (Option!289) tuple2!2720)

(declare-fun get!779 (Option!291) tuple2!2726)

(assert (=> b!168075 (= res!75913 (= (_1!1576 (get!778 lt!52627)) (_1!1579 (get!779 (maxPrefix!125 thiss!17480 rules!1920 (list!1033 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))))))

(declare-fun b!168076 () Bool)

(declare-fun e!101489 () Option!289)

(declare-fun lt!52626 () Option!289)

(declare-fun lt!52625 () Option!289)

(assert (=> b!168076 (= e!101489 (ite (and ((_ is None!288) lt!52626) ((_ is None!288) lt!52625)) None!288 (ite ((_ is None!288) lt!52625) lt!52626 (ite ((_ is None!288) lt!52626) lt!52625 (ite (>= (size!2377 (_1!1576 (v!13713 lt!52626))) (size!2377 (_1!1576 (v!13713 lt!52625)))) lt!52626 lt!52625)))))))

(declare-fun call!7270 () Option!289)

(assert (=> b!168076 (= lt!52626 call!7270)))

(assert (=> b!168076 (= lt!52625 (maxPrefixZipperSequence!86 thiss!17480 (t!26837 rules!1920) (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))

(declare-fun b!168077 () Bool)

(declare-fun e!101488 () Bool)

(declare-fun e!101486 () Bool)

(assert (=> b!168077 (= e!101488 e!101486)))

(declare-fun res!75918 () Bool)

(assert (=> b!168077 (=> (not res!75918) (not e!101486))))

(declare-fun maxPrefixZipper!37 (LexerInterface!393 List!2859 List!2858) Option!291)

(assert (=> b!168077 (= res!75918 (= (_1!1576 (get!778 lt!52627)) (_1!1579 (get!779 (maxPrefixZipper!37 thiss!17480 rules!1920 (list!1033 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))))))

(declare-fun b!168078 () Bool)

(declare-fun e!101490 () Bool)

(assert (=> b!168078 (= e!101490 e!101487)))

(declare-fun res!75914 () Bool)

(assert (=> b!168078 (=> res!75914 e!101487)))

(assert (=> b!168078 (= res!75914 (not (isDefined!140 lt!52627)))))

(declare-fun b!168079 () Bool)

(assert (=> b!168079 (= e!101491 (= (list!1033 (_2!1576 (get!778 lt!52627))) (_2!1579 (get!779 (maxPrefix!125 thiss!17480 rules!1920 (list!1033 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))))))

(declare-fun bm!7265 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!38 (LexerInterface!393 Rule!814 BalanceConc!1680) Option!289)

(assert (=> bm!7265 (= call!7270 (maxPrefixOneRuleZipperSequence!38 thiss!17480 (h!8246 rules!1920) (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))

(declare-fun b!168081 () Bool)

(assert (=> b!168081 (= e!101486 (= (list!1033 (_2!1576 (get!778 lt!52627))) (_2!1579 (get!779 (maxPrefixZipper!37 thiss!17480 rules!1920 (list!1033 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))))))

(declare-fun b!168082 () Bool)

(declare-fun res!75916 () Bool)

(assert (=> b!168082 (=> (not res!75916) (not e!101490))))

(assert (=> b!168082 (= res!75916 e!101488)))

(declare-fun res!75917 () Bool)

(assert (=> b!168082 (=> res!75917 e!101488)))

(assert (=> b!168082 (= res!75917 (not (isDefined!140 lt!52627)))))

(declare-fun d!42209 () Bool)

(assert (=> d!42209 e!101490))

(declare-fun res!75915 () Bool)

(assert (=> d!42209 (=> (not res!75915) (not e!101490))))

(declare-fun isDefined!142 (Option!291) Bool)

(assert (=> d!42209 (= res!75915 (= (isDefined!140 lt!52627) (isDefined!142 (maxPrefixZipper!37 thiss!17480 rules!1920 (list!1033 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465))))))))))

(assert (=> d!42209 (= lt!52627 e!101489)))

(declare-fun c!33508 () Bool)

(assert (=> d!42209 (= c!33508 (and ((_ is Cons!2849) rules!1920) ((_ is Nil!2849) (t!26837 rules!1920))))))

(declare-fun lt!52623 () Unit!2452)

(declare-fun lt!52624 () Unit!2452)

(assert (=> d!42209 (= lt!52623 lt!52624)))

(declare-fun lt!52629 () List!2858)

(declare-fun lt!52628 () List!2858)

(declare-fun isPrefix!225 (List!2858 List!2858) Bool)

(assert (=> d!42209 (isPrefix!225 lt!52629 lt!52628)))

(declare-fun lemmaIsPrefixRefl!133 (List!2858 List!2858) Unit!2452)

(assert (=> d!42209 (= lt!52624 (lemmaIsPrefixRefl!133 lt!52629 lt!52628))))

(assert (=> d!42209 (= lt!52628 (list!1033 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))

(assert (=> d!42209 (= lt!52629 (list!1033 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))))))

(assert (=> d!42209 (rulesValidInductive!112 thiss!17480 rules!1920)))

(assert (=> d!42209 (= (maxPrefixZipperSequence!86 thiss!17480 rules!1920 (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465)))) lt!52627)))

(declare-fun b!168080 () Bool)

(assert (=> b!168080 (= e!101489 call!7270)))

(assert (= (and d!42209 c!33508) b!168080))

(assert (= (and d!42209 (not c!33508)) b!168076))

(assert (= (or b!168080 b!168076) bm!7265))

(assert (= (and d!42209 res!75915) b!168082))

(assert (= (and b!168082 (not res!75917)) b!168077))

(assert (= (and b!168077 res!75918) b!168081))

(assert (= (and b!168082 res!75916) b!168078))

(assert (= (and b!168078 (not res!75914)) b!168075))

(assert (= (and b!168075 res!75913) b!168079))

(declare-fun m!163415 () Bool)

(assert (=> b!168081 m!163415))

(declare-fun m!163417 () Bool)

(assert (=> b!168081 m!163417))

(declare-fun m!163419 () Bool)

(assert (=> b!168081 m!163419))

(assert (=> b!168081 m!163417))

(declare-fun m!163421 () Bool)

(assert (=> b!168081 m!163421))

(declare-fun m!163423 () Bool)

(assert (=> b!168081 m!163423))

(assert (=> b!168081 m!162483))

(assert (=> b!168081 m!163415))

(declare-fun m!163425 () Bool)

(assert (=> b!168078 m!163425))

(assert (=> d!42209 m!163415))

(assert (=> d!42209 m!163417))

(assert (=> d!42209 m!163425))

(assert (=> d!42209 m!163417))

(declare-fun m!163427 () Bool)

(assert (=> d!42209 m!163427))

(declare-fun m!163429 () Bool)

(assert (=> d!42209 m!163429))

(declare-fun m!163431 () Bool)

(assert (=> d!42209 m!163431))

(assert (=> d!42209 m!162439))

(assert (=> d!42209 m!162483))

(assert (=> d!42209 m!163415))

(assert (=> b!168075 m!163419))

(assert (=> b!168075 m!162483))

(assert (=> b!168075 m!163415))

(assert (=> b!168075 m!163415))

(declare-fun m!163433 () Bool)

(assert (=> b!168075 m!163433))

(assert (=> b!168075 m!163433))

(declare-fun m!163435 () Bool)

(assert (=> b!168075 m!163435))

(assert (=> bm!7265 m!162483))

(declare-fun m!163437 () Bool)

(assert (=> bm!7265 m!163437))

(assert (=> b!168077 m!163419))

(assert (=> b!168077 m!162483))

(assert (=> b!168077 m!163415))

(assert (=> b!168077 m!163415))

(assert (=> b!168077 m!163417))

(assert (=> b!168077 m!163417))

(assert (=> b!168077 m!163421))

(assert (=> b!168082 m!163425))

(assert (=> b!168076 m!162483))

(declare-fun m!163439 () Bool)

(assert (=> b!168076 m!163439))

(assert (=> b!168079 m!163423))

(assert (=> b!168079 m!163433))

(assert (=> b!168079 m!163435))

(assert (=> b!168079 m!162483))

(assert (=> b!168079 m!163415))

(assert (=> b!168079 m!163415))

(assert (=> b!168079 m!163433))

(assert (=> b!168079 m!163419))

(assert (=> b!167496 d!42209))

(declare-fun d!42211 () Bool)

(assert (=> d!42211 (= (seqFromList!391 (originalCharacters!550 (h!8247 tokens!465))) (fromListB!156 (originalCharacters!550 (h!8247 tokens!465))))))

(declare-fun bs!16348 () Bool)

(assert (= bs!16348 d!42211))

(declare-fun m!163441 () Bool)

(assert (=> bs!16348 m!163441))

(assert (=> b!167496 d!42211))

(declare-fun d!42213 () Bool)

(assert (=> d!42213 (dynLambda!1051 lambda!4676 (h!8247 tokens!465))))

(declare-fun lt!52632 () Unit!2452)

(declare-fun choose!1822 (List!2860 Int Token!758) Unit!2452)

(assert (=> d!42213 (= lt!52632 (choose!1822 tokens!465 lambda!4676 (h!8247 tokens!465)))))

(declare-fun e!101494 () Bool)

(assert (=> d!42213 e!101494))

(declare-fun res!75921 () Bool)

(assert (=> d!42213 (=> (not res!75921) (not e!101494))))

(assert (=> d!42213 (= res!75921 (forall!545 tokens!465 lambda!4676))))

(assert (=> d!42213 (= (forallContained!74 tokens!465 lambda!4676 (h!8247 tokens!465)) lt!52632)))

(declare-fun b!168085 () Bool)

(declare-fun contains!458 (List!2860 Token!758) Bool)

(assert (=> b!168085 (= e!101494 (contains!458 tokens!465 (h!8247 tokens!465)))))

(assert (= (and d!42213 res!75921) b!168085))

(declare-fun b_lambda!3747 () Bool)

(assert (=> (not b_lambda!3747) (not d!42213)))

(declare-fun m!163443 () Bool)

(assert (=> d!42213 m!163443))

(declare-fun m!163445 () Bool)

(assert (=> d!42213 m!163445))

(declare-fun m!163447 () Bool)

(assert (=> d!42213 m!163447))

(declare-fun m!163449 () Bool)

(assert (=> b!168085 m!163449))

(assert (=> b!167496 d!42213))

(declare-fun d!42215 () Bool)

(declare-fun res!75922 () Bool)

(declare-fun e!101495 () Bool)

(assert (=> d!42215 (=> (not res!75922) (not e!101495))))

(assert (=> d!42215 (= res!75922 (not (isEmpty!1189 (originalCharacters!550 (h!8247 tokens!465)))))))

(assert (=> d!42215 (= (inv!3676 (h!8247 tokens!465)) e!101495)))

(declare-fun b!168086 () Bool)

(declare-fun res!75923 () Bool)

(assert (=> b!168086 (=> (not res!75923) (not e!101495))))

(assert (=> b!168086 (= res!75923 (= (originalCharacters!550 (h!8247 tokens!465)) (list!1033 (dynLambda!1053 (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (value!18765 (h!8247 tokens!465))))))))

(declare-fun b!168087 () Bool)

(assert (=> b!168087 (= e!101495 (= (size!2377 (h!8247 tokens!465)) (size!2381 (originalCharacters!550 (h!8247 tokens!465)))))))

(assert (= (and d!42215 res!75922) b!168086))

(assert (= (and b!168086 res!75923) b!168087))

(declare-fun b_lambda!3749 () Bool)

(assert (=> (not b_lambda!3749) (not b!168086)))

(assert (=> b!168086 t!26880))

(declare-fun b_and!10911 () Bool)

(assert (= b_and!10905 (and (=> t!26880 result!9248) b_and!10911)))

(assert (=> b!168086 t!26882))

(declare-fun b_and!10913 () Bool)

(assert (= b_and!10907 (and (=> t!26882 result!9252) b_and!10913)))

(assert (=> b!168086 t!26884))

(declare-fun b_and!10915 () Bool)

(assert (= b_and!10909 (and (=> t!26884 result!9254) b_and!10915)))

(declare-fun m!163451 () Bool)

(assert (=> d!42215 m!163451))

(assert (=> b!168086 m!163299))

(assert (=> b!168086 m!163299))

(declare-fun m!163453 () Bool)

(assert (=> b!168086 m!163453))

(declare-fun m!163455 () Bool)

(assert (=> b!168087 m!163455))

(assert (=> b!167514 d!42215))

(declare-fun d!42217 () Bool)

(declare-fun res!75926 () Bool)

(declare-fun e!101498 () Bool)

(assert (=> d!42217 (=> (not res!75926) (not e!101498))))

(declare-fun rulesValid!141 (LexerInterface!393 List!2859) Bool)

(assert (=> d!42217 (= res!75926 (rulesValid!141 thiss!17480 rules!1920))))

(assert (=> d!42217 (= (rulesInvariant!359 thiss!17480 rules!1920) e!101498)))

(declare-fun b!168090 () Bool)

(declare-datatypes ((List!2862 0))(
  ( (Nil!2852) (Cons!2852 (h!8249 String!3725) (t!26904 List!2862)) )
))
(declare-fun noDuplicateTag!141 (LexerInterface!393 List!2859 List!2862) Bool)

(assert (=> b!168090 (= e!101498 (noDuplicateTag!141 thiss!17480 rules!1920 Nil!2852))))

(assert (= (and d!42217 res!75926) b!168090))

(declare-fun m!163457 () Bool)

(assert (=> d!42217 m!163457))

(declare-fun m!163459 () Bool)

(assert (=> b!168090 m!163459))

(assert (=> b!167503 d!42217))

(declare-fun d!42219 () Bool)

(assert (=> d!42219 (= (inv!3672 (tag!685 (rule!1014 (h!8247 tokens!465)))) (= (mod (str.len (value!18764 (tag!685 (rule!1014 (h!8247 tokens!465))))) 2) 0))))

(assert (=> b!167505 d!42219))

(declare-fun d!42221 () Bool)

(declare-fun res!75927 () Bool)

(declare-fun e!101499 () Bool)

(assert (=> d!42221 (=> (not res!75927) (not e!101499))))

(assert (=> d!42221 (= res!75927 (semiInverseModEq!175 (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (toValue!1170 (transformation!507 (rule!1014 (h!8247 tokens!465))))))))

(assert (=> d!42221 (= (inv!3675 (transformation!507 (rule!1014 (h!8247 tokens!465)))) e!101499)))

(declare-fun b!168091 () Bool)

(assert (=> b!168091 (= e!101499 (equivClasses!158 (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (toValue!1170 (transformation!507 (rule!1014 (h!8247 tokens!465))))))))

(assert (= (and d!42221 res!75927) b!168091))

(declare-fun m!163461 () Bool)

(assert (=> d!42221 m!163461))

(declare-fun m!163463 () Bool)

(assert (=> b!168091 m!163463))

(assert (=> b!167505 d!42221))

(declare-fun b!168092 () Bool)

(declare-fun e!101501 () Bool)

(assert (=> b!168092 (= e!101501 (inv!17 (value!18765 (h!8247 tokens!465))))))

(declare-fun b!168093 () Bool)

(declare-fun e!101502 () Bool)

(assert (=> b!168093 (= e!101502 (inv!16 (value!18765 (h!8247 tokens!465))))))

(declare-fun b!168094 () Bool)

(assert (=> b!168094 (= e!101502 e!101501)))

(declare-fun c!33509 () Bool)

(assert (=> b!168094 (= c!33509 ((_ is IntegerValue!1588) (value!18765 (h!8247 tokens!465))))))

(declare-fun b!168095 () Bool)

(declare-fun res!75928 () Bool)

(declare-fun e!101500 () Bool)

(assert (=> b!168095 (=> res!75928 e!101500)))

(assert (=> b!168095 (= res!75928 (not ((_ is IntegerValue!1589) (value!18765 (h!8247 tokens!465)))))))

(assert (=> b!168095 (= e!101501 e!101500)))

(declare-fun d!42223 () Bool)

(declare-fun c!33510 () Bool)

(assert (=> d!42223 (= c!33510 ((_ is IntegerValue!1587) (value!18765 (h!8247 tokens!465))))))

(assert (=> d!42223 (= (inv!21 (value!18765 (h!8247 tokens!465))) e!101502)))

(declare-fun b!168096 () Bool)

(assert (=> b!168096 (= e!101500 (inv!15 (value!18765 (h!8247 tokens!465))))))

(assert (= (and d!42223 c!33510) b!168093))

(assert (= (and d!42223 (not c!33510)) b!168094))

(assert (= (and b!168094 c!33509) b!168092))

(assert (= (and b!168094 (not c!33509)) b!168095))

(assert (= (and b!168095 (not res!75928)) b!168096))

(declare-fun m!163465 () Bool)

(assert (=> b!168092 m!163465))

(declare-fun m!163467 () Bool)

(assert (=> b!168093 m!163467))

(declare-fun m!163469 () Bool)

(assert (=> b!168096 m!163469))

(assert (=> b!167504 d!42223))

(declare-fun d!42225 () Bool)

(assert (=> d!42225 (= (list!1033 (seqFromList!391 lt!52297)) (list!1037 (c!33394 (seqFromList!391 lt!52297))))))

(declare-fun bs!16349 () Bool)

(assert (= bs!16349 d!42225))

(declare-fun m!163471 () Bool)

(assert (=> bs!16349 m!163471))

(assert (=> b!167515 d!42225))

(declare-fun d!42227 () Bool)

(assert (=> d!42227 (= (seqFromList!391 lt!52297) (fromListB!156 lt!52297))))

(declare-fun bs!16350 () Bool)

(assert (= bs!16350 d!42227))

(declare-fun m!163473 () Bool)

(assert (=> bs!16350 m!163473))

(assert (=> b!167515 d!42227))

(declare-fun b!168108 () Bool)

(declare-fun e!101505 () Bool)

(declare-fun tp!83466 () Bool)

(declare-fun tp!83464 () Bool)

(assert (=> b!168108 (= e!101505 (and tp!83466 tp!83464))))

(declare-fun b!168107 () Bool)

(declare-fun tp_is_empty!1647 () Bool)

(assert (=> b!168107 (= e!101505 tp_is_empty!1647)))

(declare-fun b!168110 () Bool)

(declare-fun tp!83467 () Bool)

(declare-fun tp!83468 () Bool)

(assert (=> b!168110 (= e!101505 (and tp!83467 tp!83468))))

(assert (=> b!167501 (= tp!83380 e!101505)))

(declare-fun b!168109 () Bool)

(declare-fun tp!83465 () Bool)

(assert (=> b!168109 (= e!101505 tp!83465)))

(assert (= (and b!167501 ((_ is ElementMatch!731) (regex!507 (rule!1014 separatorToken!170)))) b!168107))

(assert (= (and b!167501 ((_ is Concat!1261) (regex!507 (rule!1014 separatorToken!170)))) b!168108))

(assert (= (and b!167501 ((_ is Star!731) (regex!507 (rule!1014 separatorToken!170)))) b!168109))

(assert (= (and b!167501 ((_ is Union!731) (regex!507 (rule!1014 separatorToken!170)))) b!168110))

(declare-fun b!168121 () Bool)

(declare-fun b_free!6389 () Bool)

(declare-fun b_next!6389 () Bool)

(assert (=> b!168121 (= b_free!6389 (not b_next!6389))))

(declare-fun tp!83480 () Bool)

(declare-fun b_and!10917 () Bool)

(assert (=> b!168121 (= tp!83480 b_and!10917)))

(declare-fun b_free!6391 () Bool)

(declare-fun b_next!6391 () Bool)

(assert (=> b!168121 (= b_free!6391 (not b_next!6391))))

(declare-fun tb!6613 () Bool)

(declare-fun t!26897 () Bool)

(assert (=> (and b!168121 (= (toChars!1029 (transformation!507 (h!8246 (t!26837 rules!1920)))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465))))) t!26897) tb!6613))

(declare-fun result!9272 () Bool)

(assert (= result!9272 result!9248))

(assert (=> d!42177 t!26897))

(declare-fun t!26899 () Bool)

(declare-fun tb!6615 () Bool)

(assert (=> (and b!168121 (= (toChars!1029 (transformation!507 (h!8246 (t!26837 rules!1920)))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170)))) t!26899) tb!6615))

(declare-fun result!9274 () Bool)

(assert (= result!9274 result!9262))

(assert (=> d!42193 t!26899))

(assert (=> b!168031 t!26899))

(assert (=> b!168086 t!26897))

(declare-fun tp!83479 () Bool)

(declare-fun b_and!10919 () Bool)

(assert (=> b!168121 (= tp!83479 (and (=> t!26897 result!9272) (=> t!26899 result!9274) b_and!10919))))

(declare-fun e!101515 () Bool)

(assert (=> b!168121 (= e!101515 (and tp!83480 tp!83479))))

(declare-fun e!101514 () Bool)

(declare-fun tp!83477 () Bool)

(declare-fun b!168120 () Bool)

(assert (=> b!168120 (= e!101514 (and tp!83477 (inv!3672 (tag!685 (h!8246 (t!26837 rules!1920)))) (inv!3675 (transformation!507 (h!8246 (t!26837 rules!1920)))) e!101515))))

(declare-fun b!168119 () Bool)

(declare-fun e!101516 () Bool)

(declare-fun tp!83478 () Bool)

(assert (=> b!168119 (= e!101516 (and e!101514 tp!83478))))

(assert (=> b!167502 (= tp!83387 e!101516)))

(assert (= b!168120 b!168121))

(assert (= b!168119 b!168120))

(assert (= (and b!167502 ((_ is Cons!2849) (t!26837 rules!1920))) b!168119))

(declare-fun m!163475 () Bool)

(assert (=> b!168120 m!163475))

(declare-fun m!163477 () Bool)

(assert (=> b!168120 m!163477))

(declare-fun b!168123 () Bool)

(declare-fun e!101518 () Bool)

(declare-fun tp!83483 () Bool)

(declare-fun tp!83481 () Bool)

(assert (=> b!168123 (= e!101518 (and tp!83483 tp!83481))))

(declare-fun b!168122 () Bool)

(assert (=> b!168122 (= e!101518 tp_is_empty!1647)))

(declare-fun b!168125 () Bool)

(declare-fun tp!83484 () Bool)

(declare-fun tp!83485 () Bool)

(assert (=> b!168125 (= e!101518 (and tp!83484 tp!83485))))

(assert (=> b!167520 (= tp!83382 e!101518)))

(declare-fun b!168124 () Bool)

(declare-fun tp!83482 () Bool)

(assert (=> b!168124 (= e!101518 tp!83482)))

(assert (= (and b!167520 ((_ is ElementMatch!731) (regex!507 (h!8246 rules!1920)))) b!168122))

(assert (= (and b!167520 ((_ is Concat!1261) (regex!507 (h!8246 rules!1920)))) b!168123))

(assert (= (and b!167520 ((_ is Star!731) (regex!507 (h!8246 rules!1920)))) b!168124))

(assert (= (and b!167520 ((_ is Union!731) (regex!507 (h!8246 rules!1920)))) b!168125))

(declare-fun b!168130 () Bool)

(declare-fun e!101521 () Bool)

(declare-fun tp!83488 () Bool)

(assert (=> b!168130 (= e!101521 (and tp_is_empty!1647 tp!83488))))

(assert (=> b!167518 (= tp!83385 e!101521)))

(assert (= (and b!167518 ((_ is Cons!2848) (originalCharacters!550 separatorToken!170))) b!168130))

(declare-fun b!168144 () Bool)

(declare-fun b_free!6393 () Bool)

(declare-fun b_next!6393 () Bool)

(assert (=> b!168144 (= b_free!6393 (not b_next!6393))))

(declare-fun tp!83500 () Bool)

(declare-fun b_and!10921 () Bool)

(assert (=> b!168144 (= tp!83500 b_and!10921)))

(declare-fun b_free!6395 () Bool)

(declare-fun b_next!6395 () Bool)

(assert (=> b!168144 (= b_free!6395 (not b_next!6395))))

(declare-fun t!26901 () Bool)

(declare-fun tb!6617 () Bool)

(assert (=> (and b!168144 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 (t!26838 tokens!465))))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465))))) t!26901) tb!6617))

(declare-fun result!9280 () Bool)

(assert (= result!9280 result!9248))

(assert (=> d!42177 t!26901))

(declare-fun t!26903 () Bool)

(declare-fun tb!6619 () Bool)

(assert (=> (and b!168144 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 (t!26838 tokens!465))))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170)))) t!26903) tb!6619))

(declare-fun result!9282 () Bool)

(assert (= result!9282 result!9262))

(assert (=> d!42193 t!26903))

(assert (=> b!168031 t!26903))

(assert (=> b!168086 t!26901))

(declare-fun b_and!10923 () Bool)

(declare-fun tp!83501 () Bool)

(assert (=> b!168144 (= tp!83501 (and (=> t!26901 result!9280) (=> t!26903 result!9282) b_and!10923))))

(declare-fun e!101538 () Bool)

(declare-fun e!101535 () Bool)

(declare-fun b!168142 () Bool)

(declare-fun tp!83503 () Bool)

(assert (=> b!168142 (= e!101535 (and (inv!21 (value!18765 (h!8247 (t!26838 tokens!465)))) e!101538 tp!83503))))

(declare-fun e!101539 () Bool)

(assert (=> b!168144 (= e!101539 (and tp!83500 tp!83501))))

(declare-fun b!168141 () Bool)

(declare-fun e!101537 () Bool)

(declare-fun tp!83499 () Bool)

(assert (=> b!168141 (= e!101537 (and (inv!3676 (h!8247 (t!26838 tokens!465))) e!101535 tp!83499))))

(assert (=> b!167514 (= tp!83379 e!101537)))

(declare-fun tp!83502 () Bool)

(declare-fun b!168143 () Bool)

(assert (=> b!168143 (= e!101538 (and tp!83502 (inv!3672 (tag!685 (rule!1014 (h!8247 (t!26838 tokens!465))))) (inv!3675 (transformation!507 (rule!1014 (h!8247 (t!26838 tokens!465))))) e!101539))))

(assert (= b!168143 b!168144))

(assert (= b!168142 b!168143))

(assert (= b!168141 b!168142))

(assert (= (and b!167514 ((_ is Cons!2850) (t!26838 tokens!465))) b!168141))

(declare-fun m!163479 () Bool)

(assert (=> b!168142 m!163479))

(declare-fun m!163481 () Bool)

(assert (=> b!168141 m!163481))

(declare-fun m!163483 () Bool)

(assert (=> b!168143 m!163483))

(declare-fun m!163485 () Bool)

(assert (=> b!168143 m!163485))

(declare-fun b!168147 () Bool)

(declare-fun e!101542 () Bool)

(assert (=> b!168147 (= e!101542 true)))

(declare-fun b!168146 () Bool)

(declare-fun e!101541 () Bool)

(assert (=> b!168146 (= e!101541 e!101542)))

(declare-fun b!168145 () Bool)

(declare-fun e!101540 () Bool)

(assert (=> b!168145 (= e!101540 e!101541)))

(assert (=> b!167532 e!101540))

(assert (= b!168146 b!168147))

(assert (= b!168145 b!168146))

(assert (= (and b!167532 ((_ is Cons!2849) (t!26837 rules!1920))) b!168145))

(assert (=> b!168147 (< (dynLambda!1047 order!1501 (toValue!1170 (transformation!507 (h!8246 (t!26837 rules!1920))))) (dynLambda!1048 order!1503 lambda!4676))))

(assert (=> b!168147 (< (dynLambda!1049 order!1505 (toChars!1029 (transformation!507 (h!8246 (t!26837 rules!1920))))) (dynLambda!1048 order!1503 lambda!4676))))

(declare-fun b!168149 () Bool)

(declare-fun e!101543 () Bool)

(declare-fun tp!83506 () Bool)

(declare-fun tp!83504 () Bool)

(assert (=> b!168149 (= e!101543 (and tp!83506 tp!83504))))

(declare-fun b!168148 () Bool)

(assert (=> b!168148 (= e!101543 tp_is_empty!1647)))

(declare-fun b!168151 () Bool)

(declare-fun tp!83507 () Bool)

(declare-fun tp!83508 () Bool)

(assert (=> b!168151 (= e!101543 (and tp!83507 tp!83508))))

(assert (=> b!167505 (= tp!83384 e!101543)))

(declare-fun b!168150 () Bool)

(declare-fun tp!83505 () Bool)

(assert (=> b!168150 (= e!101543 tp!83505)))

(assert (= (and b!167505 ((_ is ElementMatch!731) (regex!507 (rule!1014 (h!8247 tokens!465))))) b!168148))

(assert (= (and b!167505 ((_ is Concat!1261) (regex!507 (rule!1014 (h!8247 tokens!465))))) b!168149))

(assert (= (and b!167505 ((_ is Star!731) (regex!507 (rule!1014 (h!8247 tokens!465))))) b!168150))

(assert (= (and b!167505 ((_ is Union!731) (regex!507 (rule!1014 (h!8247 tokens!465))))) b!168151))

(declare-fun b!168152 () Bool)

(declare-fun e!101544 () Bool)

(declare-fun tp!83509 () Bool)

(assert (=> b!168152 (= e!101544 (and tp_is_empty!1647 tp!83509))))

(assert (=> b!167504 (= tp!83389 e!101544)))

(assert (= (and b!167504 ((_ is Cons!2848) (originalCharacters!550 (h!8247 tokens!465)))) b!168152))

(declare-fun b_lambda!3751 () Bool)

(assert (= b_lambda!3749 (or (and b!167506 b_free!6379) (and b!168121 b_free!6391 (= (toChars!1029 (transformation!507 (h!8246 (t!26837 rules!1920)))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))))) (and b!167512 b_free!6375 (= (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))))) (and b!167511 b_free!6371 (= (toChars!1029 (transformation!507 (h!8246 rules!1920))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))))) (and b!168144 b_free!6395 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 (t!26838 tokens!465))))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))))) b_lambda!3751)))

(declare-fun b_lambda!3753 () Bool)

(assert (= b_lambda!3743 (or (and b!167512 b_free!6375) (and b!167511 b_free!6371 (= (toChars!1029 (transformation!507 (h!8246 rules!1920))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))))) (and b!167506 b_free!6379 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))))) (and b!168121 b_free!6391 (= (toChars!1029 (transformation!507 (h!8246 (t!26837 rules!1920)))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))))) (and b!168144 b_free!6395 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 (t!26838 tokens!465))))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))))) b_lambda!3753)))

(declare-fun b_lambda!3755 () Bool)

(assert (= b_lambda!3717 (or b!167523 b_lambda!3755)))

(declare-fun bs!16351 () Bool)

(declare-fun d!42229 () Bool)

(assert (= bs!16351 (and d!42229 b!167523)))

(assert (=> bs!16351 (= (dynLambda!1051 lambda!4675 (h!8247 tokens!465)) (not (isSeparator!507 (rule!1014 (h!8247 tokens!465)))))))

(assert (=> b!167598 d!42229))

(declare-fun b_lambda!3757 () Bool)

(assert (= b_lambda!3745 (or (and b!167512 b_free!6375) (and b!167511 b_free!6371 (= (toChars!1029 (transformation!507 (h!8246 rules!1920))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))))) (and b!167506 b_free!6379 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))))) (and b!168121 b_free!6391 (= (toChars!1029 (transformation!507 (h!8246 (t!26837 rules!1920)))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))))) (and b!168144 b_free!6395 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 (t!26838 tokens!465))))) (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))))) b_lambda!3757)))

(declare-fun b_lambda!3759 () Bool)

(assert (= b_lambda!3729 (or (and b!167506 b_free!6379) (and b!168121 b_free!6391 (= (toChars!1029 (transformation!507 (h!8246 (t!26837 rules!1920)))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))))) (and b!167512 b_free!6375 (= (toChars!1029 (transformation!507 (rule!1014 separatorToken!170))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))))) (and b!167511 b_free!6371 (= (toChars!1029 (transformation!507 (h!8246 rules!1920))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))))) (and b!168144 b_free!6395 (= (toChars!1029 (transformation!507 (rule!1014 (h!8247 (t!26838 tokens!465))))) (toChars!1029 (transformation!507 (rule!1014 (h!8247 tokens!465)))))) b_lambda!3759)))

(declare-fun b_lambda!3761 () Bool)

(assert (= b_lambda!3747 (or b!167496 b_lambda!3761)))

(declare-fun bs!16352 () Bool)

(declare-fun d!42231 () Bool)

(assert (= bs!16352 (and d!42231 b!167496)))

(assert (=> bs!16352 (= (dynLambda!1051 lambda!4676 (h!8247 tokens!465)) (rulesProduceIndividualToken!142 thiss!17480 rules!1920 (h!8247 tokens!465)))))

(assert (=> bs!16352 m!162529))

(assert (=> d!42213 d!42231))

(check-sat (not b!167863) (not b!168142) (not b!167673) (not b!167669) (not b!168056) (not b!168152) (not b!167609) (not b!168019) (not b!168120) (not b!168125) (not b!168119) (not b!168096) (not b!167610) (not b!167990) (not bm!7250) (not d!42207) (not b!168078) (not bm!7205) (not bs!16352) (not b!168086) (not bm!7209) (not d!42065) (not d!42165) (not d!42069) (not b_lambda!3753) (not d!42067) (not b!168079) (not bm!7257) (not d!42167) (not b_lambda!3751) (not b_next!6375) (not b!167989) (not b!168093) (not b!168124) (not b!167917) (not bm!7208) (not b!168110) (not d!42037) (not d!42197) (not d!42141) (not bm!7206) (not bm!7259) (not d!42173) (not b!167842) (not d!42135) (not b!167844) (not b!168109) (not b!168091) (not b!168022) (not d!42137) (not b_next!6391) (not d!42185) (not b!167935) (not b!167804) (not b_next!6371) b_and!10857 (not tb!6607) (not b!168085) (not bm!7249) (not b!168076) (not b!168031) tp_is_empty!1647 (not b!168149) (not d!42183) (not b!168130) (not d!42195) (not b!168123) (not d!42133) (not b_next!6377) (not d!42227) (not b_lambda!3757) (not b!167798) (not b!167544) (not b!168055) (not b!168024) (not d!42131) (not d!42115) (not b!167676) (not d!42205) (not b!167900) (not b!167668) (not b_next!6395) (not bm!7260) (not b!167918) (not b_next!6389) b_and!10849 (not tb!6597) (not b!168075) (not b!168090) (not b_lambda!3755) (not b!167853) (not d!42175) (not b!167805) (not b!167932) (not b!168087) (not b!167591) (not b!168077) (not b!168052) b_and!10913 (not b!167799) (not d!42169) (not b!167926) (not d!42209) (not bm!7261) (not b!167667) (not b!168018) (not b!167985) (not d!42215) (not b!168092) (not b!168037) (not d!42171) (not b_lambda!3761) (not b!168058) b_and!10917 (not b!167855) b_and!10919 b_and!10915 (not d!42035) (not d!42113) (not d!42157) (not d!42217) (not d!42179) (not b!168141) (not d!42199) (not b!168025) (not b_next!6373) (not d!42193) (not b!168108) (not b!167979) (not b!167797) (not b!167592) (not b!168038) (not b!168010) (not b!167666) (not b!168081) b_and!10923 (not d!42177) b_and!10853 (not b_lambda!3759) (not b!167845) (not b!168032) (not b!167927) b_and!10911 (not b!168082) (not d!42181) (not b!168057) (not b_next!6369) (not b!168151) (not bm!7265) (not b!167843) (not b!168143) (not b!167599) (not d!42129) (not b!167593) (not b!168051) (not b!167796) (not d!42213) (not b!167986) (not b!167925) (not b!168150) (not d!42221) (not b!167858) (not b!167915) (not b!168013) (not b!167928) (not d!42211) (not d!42225) (not bm!7253) (not bm!7256) (not b!167548) (not b!167545) (not b!168012) (not b!168145) (not bm!7251) (not b_next!6393) (not b_next!6379) (not bm!7254) b_and!10921 (not b!168011) (not b!167901))
(check-sat (not b_next!6375) (not b_next!6377) (not b_next!6395) b_and!10913 (not b_next!6373) b_and!10911 (not b_next!6369) b_and!10921 (not b_next!6391) (not b_next!6371) b_and!10857 (not b_next!6389) b_and!10849 b_and!10917 b_and!10919 b_and!10915 b_and!10923 b_and!10853 (not b_next!6393) (not b_next!6379))
