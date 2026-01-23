; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43678 () Bool)

(assert start!43678)

(declare-fun b!459719 () Bool)

(declare-fun b_free!12857 () Bool)

(declare-fun b_next!12857 () Bool)

(assert (=> b!459719 (= b_free!12857 (not b_next!12857))))

(declare-fun tp!127305 () Bool)

(declare-fun b_and!49393 () Bool)

(assert (=> b!459719 (= tp!127305 b_and!49393)))

(declare-fun b_free!12859 () Bool)

(declare-fun b_next!12859 () Bool)

(assert (=> b!459719 (= b_free!12859 (not b_next!12859))))

(declare-fun tp!127311 () Bool)

(declare-fun b_and!49395 () Bool)

(assert (=> b!459719 (= tp!127311 b_and!49395)))

(declare-fun b!459721 () Bool)

(declare-fun b_free!12861 () Bool)

(declare-fun b_next!12861 () Bool)

(assert (=> b!459721 (= b_free!12861 (not b_next!12861))))

(declare-fun tp!127308 () Bool)

(declare-fun b_and!49397 () Bool)

(assert (=> b!459721 (= tp!127308 b_and!49397)))

(declare-fun b_free!12863 () Bool)

(declare-fun b_next!12863 () Bool)

(assert (=> b!459721 (= b_free!12863 (not b_next!12863))))

(declare-fun tp!127313 () Bool)

(declare-fun b_and!49399 () Bool)

(assert (=> b!459721 (= tp!127313 b_and!49399)))

(declare-fun b!459716 () Bool)

(declare-fun b_free!12865 () Bool)

(declare-fun b_next!12865 () Bool)

(assert (=> b!459716 (= b_free!12865 (not b_next!12865))))

(declare-fun tp!127314 () Bool)

(declare-fun b_and!49401 () Bool)

(assert (=> b!459716 (= tp!127314 b_and!49401)))

(declare-fun b_free!12867 () Bool)

(declare-fun b_next!12867 () Bool)

(assert (=> b!459716 (= b_free!12867 (not b_next!12867))))

(declare-fun tp!127310 () Bool)

(declare-fun b_and!49403 () Bool)

(assert (=> b!459716 (= tp!127310 b_and!49403)))

(declare-fun bs!57012 () Bool)

(declare-fun b!459718 () Bool)

(declare-fun b!459730 () Bool)

(assert (= bs!57012 (and b!459718 b!459730)))

(declare-fun lambda!13526 () Int)

(declare-fun lambda!13525 () Int)

(assert (=> bs!57012 (not (= lambda!13526 lambda!13525))))

(declare-fun b!459752 () Bool)

(declare-fun e!281574 () Bool)

(assert (=> b!459752 (= e!281574 true)))

(declare-fun b!459751 () Bool)

(declare-fun e!281573 () Bool)

(assert (=> b!459751 (= e!281573 e!281574)))

(declare-fun b!459750 () Bool)

(declare-fun e!281572 () Bool)

(assert (=> b!459750 (= e!281572 e!281573)))

(assert (=> b!459718 e!281572))

(assert (= b!459751 b!459752))

(assert (= b!459750 b!459751))

(declare-datatypes ((List!4476 0))(
  ( (Nil!4466) (Cons!4466 (h!9863 (_ BitVec 16)) (t!71780 List!4476)) )
))
(declare-datatypes ((TokenValue!891 0))(
  ( (FloatLiteralValue!1782 (text!6682 List!4476)) (TokenValueExt!890 (__x!3269 Int)) (Broken!4455 (value!29056 List!4476)) (Object!900) (End!891) (Def!891) (Underscore!891) (Match!891) (Else!891) (Error!891) (Case!891) (If!891) (Extends!891) (Abstract!891) (Class!891) (Val!891) (DelimiterValue!1782 (del!951 List!4476)) (KeywordValue!897 (value!29057 List!4476)) (CommentValue!1782 (value!29058 List!4476)) (WhitespaceValue!1782 (value!29059 List!4476)) (IndentationValue!891 (value!29060 List!4476)) (String!5534) (Int32!891) (Broken!4456 (value!29061 List!4476)) (Boolean!892) (Unit!8078) (OperatorValue!894 (op!951 List!4476)) (IdentifierValue!1782 (value!29062 List!4476)) (IdentifierValue!1783 (value!29063 List!4476)) (WhitespaceValue!1783 (value!29064 List!4476)) (True!1782) (False!1782) (Broken!4457 (value!29065 List!4476)) (Broken!4458 (value!29066 List!4476)) (True!1783) (RightBrace!891) (RightBracket!891) (Colon!891) (Null!891) (Comma!891) (LeftBracket!891) (False!1783) (LeftBrace!891) (ImaginaryLiteralValue!891 (text!6683 List!4476)) (StringLiteralValue!2673 (value!29067 List!4476)) (EOFValue!891 (value!29068 List!4476)) (IdentValue!891 (value!29069 List!4476)) (DelimiterValue!1783 (value!29070 List!4476)) (DedentValue!891 (value!29071 List!4476)) (NewLineValue!891 (value!29072 List!4476)) (IntegerValue!2673 (value!29073 (_ BitVec 32)) (text!6684 List!4476)) (IntegerValue!2674 (value!29074 Int) (text!6685 List!4476)) (Times!891) (Or!891) (Equal!891) (Minus!891) (Broken!4459 (value!29075 List!4476)) (And!891) (Div!891) (LessEqual!891) (Mod!891) (Concat!1984) (Not!891) (Plus!891) (SpaceValue!891 (value!29076 List!4476)) (IntegerValue!2675 (value!29077 Int) (text!6686 List!4476)) (StringLiteralValue!2674 (text!6687 List!4476)) (FloatLiteralValue!1783 (text!6688 List!4476)) (BytesLiteralValue!891 (value!29078 List!4476)) (CommentValue!1783 (value!29079 List!4476)) (StringLiteralValue!2675 (value!29080 List!4476)) (ErrorTokenValue!891 (msg!952 List!4476)) )
))
(declare-datatypes ((C!3108 0))(
  ( (C!3109 (val!1440 Int)) )
))
(declare-datatypes ((List!4477 0))(
  ( (Nil!4467) (Cons!4467 (h!9864 C!3108) (t!71781 List!4477)) )
))
(declare-datatypes ((IArray!3121 0))(
  ( (IArray!3122 (innerList!1618 List!4477)) )
))
(declare-datatypes ((Conc!1560 0))(
  ( (Node!1560 (left!3773 Conc!1560) (right!4103 Conc!1560) (csize!3350 Int) (cheight!1771 Int)) (Leaf!2334 (xs!4191 IArray!3121) (csize!3351 Int)) (Empty!1560) )
))
(declare-datatypes ((BalanceConc!3128 0))(
  ( (BalanceConc!3129 (c!92670 Conc!1560)) )
))
(declare-datatypes ((TokenValueInjection!1554 0))(
  ( (TokenValueInjection!1555 (toValue!1688 Int) (toChars!1547 Int)) )
))
(declare-datatypes ((String!5535 0))(
  ( (String!5536 (value!29081 String)) )
))
(declare-datatypes ((Regex!1093 0))(
  ( (ElementMatch!1093 (c!92671 C!3108)) (Concat!1985 (regOne!2698 Regex!1093) (regTwo!2698 Regex!1093)) (EmptyExpr!1093) (Star!1093 (reg!1422 Regex!1093)) (EmptyLang!1093) (Union!1093 (regOne!2699 Regex!1093) (regTwo!2699 Regex!1093)) )
))
(declare-datatypes ((Rule!1538 0))(
  ( (Rule!1539 (regex!869 Regex!1093) (tag!1129 String!5535) (isSeparator!869 Bool) (transformation!869 TokenValueInjection!1554)) )
))
(declare-datatypes ((List!4478 0))(
  ( (Nil!4468) (Cons!4468 (h!9865 Rule!1538) (t!71782 List!4478)) )
))
(declare-fun rules!1920 () List!4478)

(get-info :version)

(assert (= (and b!459718 ((_ is Cons!4468) rules!1920)) b!459750))

(declare-fun order!3973 () Int)

(declare-fun order!3975 () Int)

(declare-fun dynLambda!2722 (Int Int) Int)

(declare-fun dynLambda!2723 (Int Int) Int)

(assert (=> b!459752 (< (dynLambda!2722 order!3973 (toValue!1688 (transformation!869 (h!9865 rules!1920)))) (dynLambda!2723 order!3975 lambda!13526))))

(declare-fun order!3977 () Int)

(declare-fun dynLambda!2724 (Int Int) Int)

(assert (=> b!459752 (< (dynLambda!2724 order!3977 (toChars!1547 (transformation!869 (h!9865 rules!1920)))) (dynLambda!2723 order!3975 lambda!13526))))

(assert (=> b!459718 true))

(declare-fun b!459710 () Bool)

(declare-fun res!204512 () Bool)

(declare-fun e!281564 () Bool)

(assert (=> b!459710 (=> (not res!204512) (not e!281564))))

(declare-datatypes ((Token!1482 0))(
  ( (Token!1483 (value!29082 TokenValue!891) (rule!1564 Rule!1538) (size!3653 Int) (originalCharacters!912 List!4477)) )
))
(declare-datatypes ((tuple2!5450 0))(
  ( (tuple2!5451 (_1!2941 Token!1482) (_2!2941 List!4477)) )
))
(declare-fun lt!205032 () tuple2!5450)

(declare-fun isEmpty!3450 (List!4477) Bool)

(assert (=> b!459710 (= res!204512 (isEmpty!3450 (_2!2941 lt!205032)))))

(declare-fun b!459711 () Bool)

(declare-fun e!281539 () Bool)

(declare-fun e!281551 () Bool)

(assert (=> b!459711 (= e!281539 e!281551)))

(declare-fun res!204517 () Bool)

(assert (=> b!459711 (=> res!204517 e!281551)))

(declare-fun lt!205041 () Bool)

(assert (=> b!459711 (= res!204517 lt!205041)))

(assert (=> b!459711 e!281564))

(declare-fun res!204509 () Bool)

(assert (=> b!459711 (=> (not res!204509) (not e!281564))))

(declare-datatypes ((List!4479 0))(
  ( (Nil!4469) (Cons!4469 (h!9866 Token!1482) (t!71783 List!4479)) )
))
(declare-fun tokens!465 () List!4479)

(assert (=> b!459711 (= res!204509 (= (_1!2941 lt!205032) (h!9866 tokens!465)))))

(declare-datatypes ((Option!1172 0))(
  ( (None!1171) (Some!1171 (v!15514 tuple2!5450)) )
))
(declare-fun lt!205044 () Option!1172)

(declare-fun get!1641 (Option!1172) tuple2!5450)

(assert (=> b!459711 (= lt!205032 (get!1641 lt!205044))))

(declare-fun isDefined!1011 (Option!1172) Bool)

(assert (=> b!459711 (isDefined!1011 lt!205044)))

(declare-fun lt!205031 () List!4477)

(declare-datatypes ((LexerInterface!755 0))(
  ( (LexerInterfaceExt!752 (__x!3270 Int)) (Lexer!753) )
))
(declare-fun thiss!17480 () LexerInterface!755)

(declare-fun maxPrefix!471 (LexerInterface!755 List!4478 List!4477) Option!1172)

(assert (=> b!459711 (= lt!205044 (maxPrefix!471 thiss!17480 rules!1920 lt!205031))))

(declare-fun b!459712 () Bool)

(declare-fun res!204496 () Bool)

(declare-fun e!281548 () Bool)

(assert (=> b!459712 (=> (not res!204496) (not e!281548))))

(declare-fun sepAndNonSepRulesDisjointChars!458 (List!4478 List!4478) Bool)

(assert (=> b!459712 (= res!204496 (sepAndNonSepRulesDisjointChars!458 rules!1920 rules!1920))))

(declare-fun b!459713 () Bool)

(declare-fun res!204506 () Bool)

(declare-fun e!281565 () Bool)

(assert (=> b!459713 (=> (not res!204506) (not e!281565))))

(declare-fun rulesInvariant!721 (LexerInterface!755 List!4478) Bool)

(assert (=> b!459713 (= res!204506 (rulesInvariant!721 thiss!17480 rules!1920))))

(declare-fun b!459714 () Bool)

(declare-fun e!281562 () Bool)

(declare-fun lt!205052 () Option!1172)

(declare-fun head!1124 (List!4479) Token!1482)

(assert (=> b!459714 (= e!281562 (= (_1!2941 (get!1641 lt!205052)) (head!1124 tokens!465)))))

(declare-fun b!459715 () Bool)

(declare-fun e!281550 () Bool)

(declare-fun e!281540 () Bool)

(assert (=> b!459715 (= e!281550 (not e!281540))))

(declare-fun res!204510 () Bool)

(assert (=> b!459715 (=> res!204510 e!281540)))

(declare-fun lt!205033 () List!4477)

(declare-fun lt!205048 () BalanceConc!3128)

(declare-fun list!1988 (BalanceConc!3128) List!4477)

(assert (=> b!459715 (= res!204510 (not (= lt!205033 (list!1988 lt!205048))))))

(declare-fun separatorToken!170 () Token!1482)

(declare-datatypes ((IArray!3123 0))(
  ( (IArray!3124 (innerList!1619 List!4479)) )
))
(declare-datatypes ((Conc!1561 0))(
  ( (Node!1561 (left!3774 Conc!1561) (right!4104 Conc!1561) (csize!3352 Int) (cheight!1772 Int)) (Leaf!2335 (xs!4192 IArray!3123) (csize!3353 Int)) (Empty!1561) )
))
(declare-datatypes ((BalanceConc!3130 0))(
  ( (BalanceConc!3131 (c!92672 Conc!1561)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!428 (LexerInterface!755 List!4478 BalanceConc!3130 Token!1482 Int) BalanceConc!3128)

(declare-fun seqFromList!1103 (List!4479) BalanceConc!3130)

(assert (=> b!459715 (= lt!205048 (printWithSeparatorTokenWhenNeededRec!428 thiss!17480 rules!1920 (seqFromList!1103 (t!71783 tokens!465)) separatorToken!170 0))))

(declare-fun lt!205036 () List!4477)

(declare-fun lt!205051 () List!4477)

(assert (=> b!459715 (= lt!205036 lt!205051)))

(declare-fun lt!205034 () List!4477)

(declare-fun ++!1304 (List!4477 List!4477) List!4477)

(assert (=> b!459715 (= lt!205051 (++!1304 lt!205031 lt!205034))))

(declare-fun lt!205049 () List!4477)

(assert (=> b!459715 (= lt!205036 (++!1304 (++!1304 lt!205031 lt!205049) lt!205033))))

(declare-datatypes ((Unit!8079 0))(
  ( (Unit!8080) )
))
(declare-fun lt!205028 () Unit!8079)

(declare-fun lemmaConcatAssociativity!606 (List!4477 List!4477 List!4477) Unit!8079)

(assert (=> b!459715 (= lt!205028 (lemmaConcatAssociativity!606 lt!205031 lt!205049 lt!205033))))

(declare-fun charsOf!512 (Token!1482) BalanceConc!3128)

(assert (=> b!459715 (= lt!205031 (list!1988 (charsOf!512 (h!9866 tokens!465))))))

(assert (=> b!459715 (= lt!205034 (++!1304 lt!205049 lt!205033))))

(declare-fun printWithSeparatorTokenWhenNeededList!436 (LexerInterface!755 List!4478 List!4479 Token!1482) List!4477)

(assert (=> b!459715 (= lt!205033 (printWithSeparatorTokenWhenNeededList!436 thiss!17480 rules!1920 (t!71783 tokens!465) separatorToken!170))))

(assert (=> b!459715 (= lt!205049 (list!1988 (charsOf!512 separatorToken!170)))))

(declare-fun e!281559 () Bool)

(assert (=> b!459716 (= e!281559 (and tp!127314 tp!127310))))

(declare-fun e!281546 () Bool)

(declare-fun e!281541 () Bool)

(declare-fun tp!127315 () Bool)

(declare-fun b!459717 () Bool)

(declare-fun inv!5548 (Token!1482) Bool)

(assert (=> b!459717 (= e!281541 (and (inv!5548 (h!9866 tokens!465)) e!281546 tp!127315))))

(declare-fun e!281563 () Bool)

(assert (=> b!459718 (= e!281563 e!281539)))

(declare-fun res!204514 () Bool)

(assert (=> b!459718 (=> res!204514 e!281539)))

(declare-datatypes ((tuple2!5452 0))(
  ( (tuple2!5453 (_1!2942 Token!1482) (_2!2942 BalanceConc!3128)) )
))
(declare-datatypes ((Option!1173 0))(
  ( (None!1172) (Some!1172 (v!15515 tuple2!5452)) )
))
(declare-fun isDefined!1012 (Option!1173) Bool)

(declare-fun maxPrefixZipperSequence!434 (LexerInterface!755 List!4478 BalanceConc!3128) Option!1173)

(declare-fun seqFromList!1104 (List!4477) BalanceConc!3128)

(assert (=> b!459718 (= res!204514 (not (isDefined!1012 (maxPrefixZipperSequence!434 thiss!17480 rules!1920 (seqFromList!1104 (originalCharacters!912 (h!9866 tokens!465)))))))))

(declare-fun lt!205043 () Unit!8079)

(declare-fun forallContained!422 (List!4479 Int Token!1482) Unit!8079)

(assert (=> b!459718 (= lt!205043 (forallContained!422 tokens!465 lambda!13526 (h!9866 tokens!465)))))

(assert (=> b!459718 (= lt!205031 (originalCharacters!912 (h!9866 tokens!465)))))

(declare-fun e!281549 () Bool)

(assert (=> b!459719 (= e!281549 (and tp!127305 tp!127311))))

(declare-fun b!459720 () Bool)

(declare-fun e!281545 () Bool)

(assert (=> b!459720 (= e!281545 e!281563)))

(declare-fun res!204513 () Bool)

(assert (=> b!459720 (=> res!204513 e!281563)))

(declare-fun lt!205035 () List!4477)

(declare-fun lt!205050 () List!4477)

(assert (=> b!459720 (= res!204513 (or (not (= lt!205050 lt!205035)) (not (= lt!205035 lt!205031)) (not (= lt!205050 lt!205031))))))

(declare-fun printList!429 (LexerInterface!755 List!4479) List!4477)

(assert (=> b!459720 (= lt!205035 (printList!429 thiss!17480 (Cons!4469 (h!9866 tokens!465) Nil!4469)))))

(declare-fun lt!205038 () BalanceConc!3128)

(assert (=> b!459720 (= lt!205050 (list!1988 lt!205038))))

(declare-fun lt!205042 () BalanceConc!3130)

(declare-fun printTailRec!441 (LexerInterface!755 BalanceConc!3130 Int BalanceConc!3128) BalanceConc!3128)

(assert (=> b!459720 (= lt!205038 (printTailRec!441 thiss!17480 lt!205042 0 (BalanceConc!3129 Empty!1560)))))

(declare-fun print!480 (LexerInterface!755 BalanceConc!3130) BalanceConc!3128)

(assert (=> b!459720 (= lt!205038 (print!480 thiss!17480 lt!205042))))

(declare-fun singletonSeq!415 (Token!1482) BalanceConc!3130)

(assert (=> b!459720 (= lt!205042 (singletonSeq!415 (h!9866 tokens!465)))))

(declare-fun b!459709 () Bool)

(assert (=> b!459709 (= e!281565 e!281548)))

(declare-fun res!204515 () Bool)

(assert (=> b!459709 (=> (not res!204515) (not e!281548))))

(declare-fun lt!205046 () BalanceConc!3130)

(declare-fun rulesProduceEachTokenIndividually!547 (LexerInterface!755 List!4478 BalanceConc!3130) Bool)

(assert (=> b!459709 (= res!204515 (rulesProduceEachTokenIndividually!547 thiss!17480 rules!1920 lt!205046))))

(assert (=> b!459709 (= lt!205046 (seqFromList!1103 tokens!465))))

(declare-fun res!204497 () Bool)

(assert (=> start!43678 (=> (not res!204497) (not e!281565))))

(assert (=> start!43678 (= res!204497 ((_ is Lexer!753) thiss!17480))))

(assert (=> start!43678 e!281565))

(assert (=> start!43678 true))

(declare-fun e!281557 () Bool)

(assert (=> start!43678 e!281557))

(declare-fun e!281544 () Bool)

(assert (=> start!43678 (and (inv!5548 separatorToken!170) e!281544)))

(assert (=> start!43678 e!281541))

(declare-fun e!281555 () Bool)

(assert (=> b!459721 (= e!281555 (and tp!127308 tp!127313))))

(declare-fun b!459722 () Bool)

(declare-fun matchR!411 (Regex!1093 List!4477) Bool)

(assert (=> b!459722 (= e!281564 (matchR!411 (regex!869 (rule!1564 (h!9866 tokens!465))) lt!205031))))

(declare-fun b!459723 () Bool)

(declare-fun res!204499 () Bool)

(assert (=> b!459723 (=> res!204499 e!281563)))

(declare-fun rulesProduceIndividualToken!504 (LexerInterface!755 List!4478 Token!1482) Bool)

(assert (=> b!459723 (= res!204499 (not (rulesProduceIndividualToken!504 thiss!17480 rules!1920 (h!9866 tokens!465))))))

(declare-fun e!281547 () Bool)

(declare-fun tp!127306 () Bool)

(declare-fun b!459724 () Bool)

(declare-fun inv!5545 (String!5535) Bool)

(declare-fun inv!5549 (TokenValueInjection!1554) Bool)

(assert (=> b!459724 (= e!281547 (and tp!127306 (inv!5545 (tag!1129 (rule!1564 separatorToken!170))) (inv!5549 (transformation!869 (rule!1564 separatorToken!170))) e!281549))))

(declare-fun b!459725 () Bool)

(declare-fun res!204516 () Bool)

(assert (=> b!459725 (=> (not res!204516) (not e!281565))))

(declare-fun isEmpty!3451 (List!4478) Bool)

(assert (=> b!459725 (= res!204516 (not (isEmpty!3451 rules!1920)))))

(declare-fun tp!127304 () Bool)

(declare-fun e!281554 () Bool)

(declare-fun b!459726 () Bool)

(assert (=> b!459726 (= e!281554 (and tp!127304 (inv!5545 (tag!1129 (rule!1564 (h!9866 tokens!465)))) (inv!5549 (transformation!869 (rule!1564 (h!9866 tokens!465)))) e!281555))))

(declare-fun b!459727 () Bool)

(declare-fun res!204511 () Bool)

(assert (=> b!459727 (=> (not res!204511) (not e!281550))))

(declare-fun lt!205029 () List!4477)

(declare-fun lt!205045 () List!4477)

(assert (=> b!459727 (= res!204511 (= (list!1988 (seqFromList!1104 lt!205029)) lt!205045))))

(declare-fun b!459728 () Bool)

(assert (=> b!459728 (= e!281548 e!281550)))

(declare-fun res!204502 () Bool)

(assert (=> b!459728 (=> (not res!204502) (not e!281550))))

(assert (=> b!459728 (= res!204502 (= lt!205029 lt!205045))))

(assert (=> b!459728 (= lt!205045 (list!1988 (printWithSeparatorTokenWhenNeededRec!428 thiss!17480 rules!1920 lt!205046 separatorToken!170 0)))))

(assert (=> b!459728 (= lt!205029 (printWithSeparatorTokenWhenNeededList!436 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!459729 () Bool)

(declare-fun e!281558 () Bool)

(assert (=> b!459729 (= e!281558 (not (= lt!205029 (++!1304 lt!205031 lt!205033))))))

(declare-fun res!204501 () Bool)

(assert (=> b!459730 (=> (not res!204501) (not e!281548))))

(declare-fun forall!1300 (List!4479 Int) Bool)

(assert (=> b!459730 (= res!204501 (forall!1300 tokens!465 lambda!13525))))

(declare-fun b!459731 () Bool)

(assert (=> b!459731 (= e!281551 true)))

(declare-fun lt!205040 () Bool)

(declare-fun isPrefix!521 (List!4477 List!4477) Bool)

(assert (=> b!459731 (= lt!205040 (isPrefix!521 lt!205031 lt!205029))))

(declare-fun lt!205039 () Option!1172)

(assert (=> b!459731 (= lt!205039 (maxPrefix!471 thiss!17480 rules!1920 lt!205029))))

(assert (=> b!459731 (isPrefix!521 lt!205031 (++!1304 lt!205031 lt!205033))))

(declare-fun lt!205037 () Unit!8079)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!406 (List!4477 List!4477) Unit!8079)

(assert (=> b!459731 (= lt!205037 (lemmaConcatTwoListThenFirstIsPrefix!406 lt!205031 lt!205033))))

(declare-fun filter!97 (List!4479 Int) List!4479)

(declare-fun list!1989 (BalanceConc!3130) List!4479)

(declare-datatypes ((tuple2!5454 0))(
  ( (tuple2!5455 (_1!2943 BalanceConc!3130) (_2!2943 BalanceConc!3128)) )
))
(declare-fun lex!547 (LexerInterface!755 List!4478 BalanceConc!3128) tuple2!5454)

(assert (=> b!459731 (= (filter!97 (list!1989 (_1!2943 (lex!547 thiss!17480 rules!1920 lt!205048))) lambda!13525) (t!71783 tokens!465))))

(declare-fun lt!205047 () Unit!8079)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!88 (LexerInterface!755 List!4478 List!4479 Token!1482) Unit!8079)

(assert (=> b!459731 (= lt!205047 (theoremInvertabilityFromTokensSepTokenWhenNeeded!88 thiss!17480 rules!1920 (t!71783 tokens!465) separatorToken!170))))

(declare-fun e!281552 () Bool)

(assert (=> b!459731 e!281552))

(declare-fun res!204505 () Bool)

(assert (=> b!459731 (=> res!204505 e!281552)))

(declare-fun isEmpty!3452 (List!4479) Bool)

(assert (=> b!459731 (= res!204505 (isEmpty!3452 tokens!465))))

(declare-fun lt!205030 () Unit!8079)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!270 (LexerInterface!755 List!4478 List!4479 Token!1482) Unit!8079)

(assert (=> b!459731 (= lt!205030 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!270 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!459732 () Bool)

(declare-fun res!204518 () Bool)

(assert (=> b!459732 (=> (not res!204518) (not e!281548))))

(assert (=> b!459732 (= res!204518 ((_ is Cons!4469) tokens!465))))

(declare-fun b!459733 () Bool)

(declare-fun e!281542 () Bool)

(declare-fun tp!127307 () Bool)

(assert (=> b!459733 (= e!281557 (and e!281542 tp!127307))))

(declare-fun b!459734 () Bool)

(assert (=> b!459734 (= e!281552 e!281562)))

(declare-fun res!204507 () Bool)

(assert (=> b!459734 (=> (not res!204507) (not e!281562))))

(assert (=> b!459734 (= res!204507 (isDefined!1011 lt!205052))))

(assert (=> b!459734 (= lt!205052 (maxPrefix!471 thiss!17480 rules!1920 lt!205029))))

(declare-fun b!459735 () Bool)

(declare-fun tp!127312 () Bool)

(declare-fun inv!21 (TokenValue!891) Bool)

(assert (=> b!459735 (= e!281544 (and (inv!21 (value!29082 separatorToken!170)) e!281547 tp!127312))))

(declare-fun b!459736 () Bool)

(assert (=> b!459736 (= e!281540 e!281545)))

(declare-fun res!204498 () Bool)

(assert (=> b!459736 (=> res!204498 e!281545)))

(assert (=> b!459736 (= res!204498 e!281558)))

(declare-fun res!204508 () Bool)

(assert (=> b!459736 (=> (not res!204508) (not e!281558))))

(assert (=> b!459736 (= res!204508 (not lt!205041))))

(assert (=> b!459736 (= lt!205041 (= lt!205029 lt!205051))))

(declare-fun b!459737 () Bool)

(declare-fun res!204503 () Bool)

(assert (=> b!459737 (=> (not res!204503) (not e!281548))))

(assert (=> b!459737 (= res!204503 (rulesProduceIndividualToken!504 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!459738 () Bool)

(declare-fun res!204504 () Bool)

(assert (=> b!459738 (=> (not res!204504) (not e!281548))))

(assert (=> b!459738 (= res!204504 (isSeparator!869 (rule!1564 separatorToken!170)))))

(declare-fun b!459739 () Bool)

(declare-fun res!204500 () Bool)

(assert (=> b!459739 (=> res!204500 e!281563)))

(declare-fun isEmpty!3453 (BalanceConc!3130) Bool)

(assert (=> b!459739 (= res!204500 (isEmpty!3453 (_1!2943 (lex!547 thiss!17480 rules!1920 (seqFromList!1104 lt!205031)))))))

(declare-fun tp!127309 () Bool)

(declare-fun b!459740 () Bool)

(assert (=> b!459740 (= e!281546 (and (inv!21 (value!29082 (h!9866 tokens!465))) e!281554 tp!127309))))

(declare-fun b!459741 () Bool)

(declare-fun tp!127303 () Bool)

(assert (=> b!459741 (= e!281542 (and tp!127303 (inv!5545 (tag!1129 (h!9865 rules!1920))) (inv!5549 (transformation!869 (h!9865 rules!1920))) e!281559))))

(assert (= (and start!43678 res!204497) b!459725))

(assert (= (and b!459725 res!204516) b!459713))

(assert (= (and b!459713 res!204506) b!459709))

(assert (= (and b!459709 res!204515) b!459737))

(assert (= (and b!459737 res!204503) b!459738))

(assert (= (and b!459738 res!204504) b!459730))

(assert (= (and b!459730 res!204501) b!459712))

(assert (= (and b!459712 res!204496) b!459732))

(assert (= (and b!459732 res!204518) b!459728))

(assert (= (and b!459728 res!204502) b!459727))

(assert (= (and b!459727 res!204511) b!459715))

(assert (= (and b!459715 (not res!204510)) b!459736))

(assert (= (and b!459736 res!204508) b!459729))

(assert (= (and b!459736 (not res!204498)) b!459720))

(assert (= (and b!459720 (not res!204513)) b!459723))

(assert (= (and b!459723 (not res!204499)) b!459739))

(assert (= (and b!459739 (not res!204500)) b!459718))

(assert (= (and b!459718 (not res!204514)) b!459711))

(assert (= (and b!459711 res!204509) b!459710))

(assert (= (and b!459710 res!204512) b!459722))

(assert (= (and b!459711 (not res!204517)) b!459731))

(assert (= (and b!459731 (not res!204505)) b!459734))

(assert (= (and b!459734 res!204507) b!459714))

(assert (= b!459741 b!459716))

(assert (= b!459733 b!459741))

(assert (= (and start!43678 ((_ is Cons!4468) rules!1920)) b!459733))

(assert (= b!459724 b!459719))

(assert (= b!459735 b!459724))

(assert (= start!43678 b!459735))

(assert (= b!459726 b!459721))

(assert (= b!459740 b!459726))

(assert (= b!459717 b!459740))

(assert (= (and start!43678 ((_ is Cons!4469) tokens!465)) b!459717))

(declare-fun m!727725 () Bool)

(assert (=> b!459714 m!727725))

(declare-fun m!727727 () Bool)

(assert (=> b!459714 m!727727))

(declare-fun m!727729 () Bool)

(assert (=> b!459735 m!727729))

(declare-fun m!727731 () Bool)

(assert (=> b!459713 m!727731))

(declare-fun m!727733 () Bool)

(assert (=> b!459737 m!727733))

(declare-fun m!727735 () Bool)

(assert (=> b!459720 m!727735))

(declare-fun m!727737 () Bool)

(assert (=> b!459720 m!727737))

(declare-fun m!727739 () Bool)

(assert (=> b!459720 m!727739))

(declare-fun m!727741 () Bool)

(assert (=> b!459720 m!727741))

(declare-fun m!727743 () Bool)

(assert (=> b!459720 m!727743))

(declare-fun m!727745 () Bool)

(assert (=> b!459727 m!727745))

(assert (=> b!459727 m!727745))

(declare-fun m!727747 () Bool)

(assert (=> b!459727 m!727747))

(declare-fun m!727749 () Bool)

(assert (=> b!459723 m!727749))

(declare-fun m!727751 () Bool)

(assert (=> b!459717 m!727751))

(declare-fun m!727753 () Bool)

(assert (=> start!43678 m!727753))

(declare-fun m!727755 () Bool)

(assert (=> b!459712 m!727755))

(declare-fun m!727757 () Bool)

(assert (=> b!459730 m!727757))

(declare-fun m!727759 () Bool)

(assert (=> b!459724 m!727759))

(declare-fun m!727761 () Bool)

(assert (=> b!459724 m!727761))

(declare-fun m!727763 () Bool)

(assert (=> b!459710 m!727763))

(declare-fun m!727765 () Bool)

(assert (=> b!459726 m!727765))

(declare-fun m!727767 () Bool)

(assert (=> b!459726 m!727767))

(declare-fun m!727769 () Bool)

(assert (=> b!459722 m!727769))

(declare-fun m!727771 () Bool)

(assert (=> b!459741 m!727771))

(declare-fun m!727773 () Bool)

(assert (=> b!459741 m!727773))

(declare-fun m!727775 () Bool)

(assert (=> b!459725 m!727775))

(declare-fun m!727777 () Bool)

(assert (=> b!459729 m!727777))

(declare-fun m!727779 () Bool)

(assert (=> b!459739 m!727779))

(assert (=> b!459739 m!727779))

(declare-fun m!727781 () Bool)

(assert (=> b!459739 m!727781))

(declare-fun m!727783 () Bool)

(assert (=> b!459739 m!727783))

(declare-fun m!727785 () Bool)

(assert (=> b!459731 m!727785))

(declare-fun m!727787 () Bool)

(assert (=> b!459731 m!727787))

(declare-fun m!727789 () Bool)

(assert (=> b!459731 m!727789))

(declare-fun m!727791 () Bool)

(assert (=> b!459731 m!727791))

(assert (=> b!459731 m!727777))

(declare-fun m!727793 () Bool)

(assert (=> b!459731 m!727793))

(declare-fun m!727795 () Bool)

(assert (=> b!459731 m!727795))

(declare-fun m!727797 () Bool)

(assert (=> b!459731 m!727797))

(declare-fun m!727799 () Bool)

(assert (=> b!459731 m!727799))

(assert (=> b!459731 m!727795))

(assert (=> b!459731 m!727777))

(declare-fun m!727801 () Bool)

(assert (=> b!459731 m!727801))

(declare-fun m!727803 () Bool)

(assert (=> b!459731 m!727803))

(declare-fun m!727805 () Bool)

(assert (=> b!459709 m!727805))

(declare-fun m!727807 () Bool)

(assert (=> b!459709 m!727807))

(declare-fun m!727809 () Bool)

(assert (=> b!459734 m!727809))

(assert (=> b!459734 m!727789))

(declare-fun m!727811 () Bool)

(assert (=> b!459711 m!727811))

(declare-fun m!727813 () Bool)

(assert (=> b!459711 m!727813))

(declare-fun m!727815 () Bool)

(assert (=> b!459711 m!727815))

(declare-fun m!727817 () Bool)

(assert (=> b!459728 m!727817))

(assert (=> b!459728 m!727817))

(declare-fun m!727819 () Bool)

(assert (=> b!459728 m!727819))

(declare-fun m!727821 () Bool)

(assert (=> b!459728 m!727821))

(declare-fun m!727823 () Bool)

(assert (=> b!459718 m!727823))

(assert (=> b!459718 m!727823))

(declare-fun m!727825 () Bool)

(assert (=> b!459718 m!727825))

(assert (=> b!459718 m!727825))

(declare-fun m!727827 () Bool)

(assert (=> b!459718 m!727827))

(declare-fun m!727829 () Bool)

(assert (=> b!459718 m!727829))

(declare-fun m!727831 () Bool)

(assert (=> b!459715 m!727831))

(declare-fun m!727833 () Bool)

(assert (=> b!459715 m!727833))

(declare-fun m!727835 () Bool)

(assert (=> b!459715 m!727835))

(declare-fun m!727837 () Bool)

(assert (=> b!459715 m!727837))

(declare-fun m!727839 () Bool)

(assert (=> b!459715 m!727839))

(declare-fun m!727841 () Bool)

(assert (=> b!459715 m!727841))

(declare-fun m!727843 () Bool)

(assert (=> b!459715 m!727843))

(declare-fun m!727845 () Bool)

(assert (=> b!459715 m!727845))

(declare-fun m!727847 () Bool)

(assert (=> b!459715 m!727847))

(declare-fun m!727849 () Bool)

(assert (=> b!459715 m!727849))

(assert (=> b!459715 m!727847))

(declare-fun m!727851 () Bool)

(assert (=> b!459715 m!727851))

(assert (=> b!459715 m!727843))

(assert (=> b!459715 m!727837))

(declare-fun m!727853 () Bool)

(assert (=> b!459715 m!727853))

(assert (=> b!459715 m!727833))

(declare-fun m!727855 () Bool)

(assert (=> b!459715 m!727855))

(declare-fun m!727857 () Bool)

(assert (=> b!459740 m!727857))

(check-sat (not b!459729) (not b!459722) b_and!49393 (not b!459737) (not b!459724) (not b!459740) (not b_next!12857) (not b!459750) (not b!459714) (not b!459718) (not b!459709) (not b!459731) (not start!43678) (not b!459715) b_and!49399 (not b!459735) (not b!459710) (not b!459725) (not b!459711) (not b!459713) (not b!459726) b_and!49401 (not b_next!12867) (not b!459720) (not b_next!12861) (not b_next!12865) b_and!49397 (not b!459730) (not b!459733) (not b_next!12859) (not b_next!12863) (not b!459741) (not b!459712) (not b!459739) (not b!459728) b_and!49395 b_and!49403 (not b!459727) (not b!459734) (not b!459717) (not b!459723))
(check-sat b_and!49399 b_and!49393 b_and!49397 (not b_next!12859) (not b_next!12863) (not b_next!12857) b_and!49401 (not b_next!12867) (not b_next!12861) (not b_next!12865) b_and!49395 b_and!49403)
