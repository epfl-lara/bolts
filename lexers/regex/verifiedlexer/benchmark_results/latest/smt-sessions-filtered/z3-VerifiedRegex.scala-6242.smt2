; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!303370 () Bool)

(assert start!303370)

(declare-fun b!3227602 () Bool)

(declare-fun b_free!86089 () Bool)

(declare-fun b_next!86793 () Bool)

(assert (=> b!3227602 (= b_free!86089 (not b_next!86793))))

(declare-fun tp!1017062 () Bool)

(declare-fun b_and!216103 () Bool)

(assert (=> b!3227602 (= tp!1017062 b_and!216103)))

(declare-fun b_free!86091 () Bool)

(declare-fun b_next!86795 () Bool)

(assert (=> b!3227602 (= b_free!86091 (not b_next!86795))))

(declare-fun tp!1017060 () Bool)

(declare-fun b_and!216105 () Bool)

(assert (=> b!3227602 (= tp!1017060 b_and!216105)))

(declare-fun b!3227595 () Bool)

(declare-fun b_free!86093 () Bool)

(declare-fun b_next!86797 () Bool)

(assert (=> b!3227595 (= b_free!86093 (not b_next!86797))))

(declare-fun tp!1017052 () Bool)

(declare-fun b_and!216107 () Bool)

(assert (=> b!3227595 (= tp!1017052 b_and!216107)))

(declare-fun b_free!86095 () Bool)

(declare-fun b_next!86799 () Bool)

(assert (=> b!3227595 (= b_free!86095 (not b_next!86799))))

(declare-fun tp!1017055 () Bool)

(declare-fun b_and!216109 () Bool)

(assert (=> b!3227595 (= tp!1017055 b_and!216109)))

(declare-fun b!3227606 () Bool)

(declare-fun b_free!86097 () Bool)

(declare-fun b_next!86801 () Bool)

(assert (=> b!3227606 (= b_free!86097 (not b_next!86801))))

(declare-fun tp!1017057 () Bool)

(declare-fun b_and!216111 () Bool)

(assert (=> b!3227606 (= tp!1017057 b_and!216111)))

(declare-fun b_free!86099 () Bool)

(declare-fun b_next!86803 () Bool)

(assert (=> b!3227606 (= b_free!86099 (not b_next!86803))))

(declare-fun tp!1017053 () Bool)

(declare-fun b_and!216113 () Bool)

(assert (=> b!3227606 (= tp!1017053 b_and!216113)))

(declare-fun b!3227586 () Bool)

(declare-fun res!1314427 () Bool)

(declare-fun e!2013020 () Bool)

(assert (=> b!3227586 (=> (not res!1314427) (not e!2013020))))

(declare-datatypes ((C!20232 0))(
  ( (C!20233 (val!12164 Int)) )
))
(declare-datatypes ((Regex!10023 0))(
  ( (ElementMatch!10023 (c!542390 C!20232)) (Concat!15517 (regOne!20558 Regex!10023) (regTwo!20558 Regex!10023)) (EmptyExpr!10023) (Star!10023 (reg!10352 Regex!10023)) (EmptyLang!10023) (Union!10023 (regOne!20559 Regex!10023) (regTwo!20559 Regex!10023)) )
))
(declare-datatypes ((List!36474 0))(
  ( (Nil!36350) (Cons!36350 (h!41770 (_ BitVec 16)) (t!241263 List!36474)) )
))
(declare-datatypes ((TokenValue!5494 0))(
  ( (FloatLiteralValue!10988 (text!38903 List!36474)) (TokenValueExt!5493 (__x!23205 Int)) (Broken!27470 (value!170458 List!36474)) (Object!5617) (End!5494) (Def!5494) (Underscore!5494) (Match!5494) (Else!5494) (Error!5494) (Case!5494) (If!5494) (Extends!5494) (Abstract!5494) (Class!5494) (Val!5494) (DelimiterValue!10988 (del!5554 List!36474)) (KeywordValue!5500 (value!170459 List!36474)) (CommentValue!10988 (value!170460 List!36474)) (WhitespaceValue!10988 (value!170461 List!36474)) (IndentationValue!5494 (value!170462 List!36474)) (String!40803) (Int32!5494) (Broken!27471 (value!170463 List!36474)) (Boolean!5495) (Unit!50939) (OperatorValue!5497 (op!5554 List!36474)) (IdentifierValue!10988 (value!170464 List!36474)) (IdentifierValue!10989 (value!170465 List!36474)) (WhitespaceValue!10989 (value!170466 List!36474)) (True!10988) (False!10988) (Broken!27472 (value!170467 List!36474)) (Broken!27473 (value!170468 List!36474)) (True!10989) (RightBrace!5494) (RightBracket!5494) (Colon!5494) (Null!5494) (Comma!5494) (LeftBracket!5494) (False!10989) (LeftBrace!5494) (ImaginaryLiteralValue!5494 (text!38904 List!36474)) (StringLiteralValue!16482 (value!170469 List!36474)) (EOFValue!5494 (value!170470 List!36474)) (IdentValue!5494 (value!170471 List!36474)) (DelimiterValue!10989 (value!170472 List!36474)) (DedentValue!5494 (value!170473 List!36474)) (NewLineValue!5494 (value!170474 List!36474)) (IntegerValue!16482 (value!170475 (_ BitVec 32)) (text!38905 List!36474)) (IntegerValue!16483 (value!170476 Int) (text!38906 List!36474)) (Times!5494) (Or!5494) (Equal!5494) (Minus!5494) (Broken!27474 (value!170477 List!36474)) (And!5494) (Div!5494) (LessEqual!5494) (Mod!5494) (Concat!15518) (Not!5494) (Plus!5494) (SpaceValue!5494 (value!170478 List!36474)) (IntegerValue!16484 (value!170479 Int) (text!38907 List!36474)) (StringLiteralValue!16483 (text!38908 List!36474)) (FloatLiteralValue!10989 (text!38909 List!36474)) (BytesLiteralValue!5494 (value!170480 List!36474)) (CommentValue!10989 (value!170481 List!36474)) (StringLiteralValue!16484 (value!170482 List!36474)) (ErrorTokenValue!5494 (msg!5555 List!36474)) )
))
(declare-datatypes ((List!36475 0))(
  ( (Nil!36351) (Cons!36351 (h!41771 C!20232) (t!241264 List!36475)) )
))
(declare-datatypes ((IArray!21811 0))(
  ( (IArray!21812 (innerList!10963 List!36475)) )
))
(declare-datatypes ((Conc!10903 0))(
  ( (Node!10903 (left!28305 Conc!10903) (right!28635 Conc!10903) (csize!22036 Int) (cheight!11114 Int)) (Leaf!17146 (xs!14021 IArray!21811) (csize!22037 Int)) (Empty!10903) )
))
(declare-datatypes ((BalanceConc!21420 0))(
  ( (BalanceConc!21421 (c!542391 Conc!10903)) )
))
(declare-datatypes ((String!40804 0))(
  ( (String!40805 (value!170483 String)) )
))
(declare-datatypes ((TokenValueInjection!10416 0))(
  ( (TokenValueInjection!10417 (toValue!7372 Int) (toChars!7231 Int)) )
))
(declare-datatypes ((Rule!10328 0))(
  ( (Rule!10329 (regex!5264 Regex!10023) (tag!5796 String!40804) (isSeparator!5264 Bool) (transformation!5264 TokenValueInjection!10416)) )
))
(declare-datatypes ((Token!9894 0))(
  ( (Token!9895 (value!170484 TokenValue!5494) (rule!7722 Rule!10328) (size!27417 Int) (originalCharacters!5978 List!36475)) )
))
(declare-datatypes ((List!36476 0))(
  ( (Nil!36352) (Cons!36352 (h!41772 Token!9894) (t!241265 List!36476)) )
))
(declare-fun tokens!494 () List!36476)

(declare-datatypes ((LexerInterface!4853 0))(
  ( (LexerInterfaceExt!4850 (__x!23206 Int)) (Lexer!4851) )
))
(declare-fun thiss!18206 () LexerInterface!4853)

(declare-datatypes ((List!36477 0))(
  ( (Nil!36353) (Cons!36353 (h!41773 Rule!10328) (t!241266 List!36477)) )
))
(declare-fun rules!2135 () List!36477)

(declare-datatypes ((IArray!21813 0))(
  ( (IArray!21814 (innerList!10964 List!36476)) )
))
(declare-datatypes ((Conc!10904 0))(
  ( (Node!10904 (left!28306 Conc!10904) (right!28636 Conc!10904) (csize!22038 Int) (cheight!11115 Int)) (Leaf!17147 (xs!14022 IArray!21813) (csize!22039 Int)) (Empty!10904) )
))
(declare-datatypes ((BalanceConc!21422 0))(
  ( (BalanceConc!21423 (c!542392 Conc!10904)) )
))
(declare-fun rulesProduceEachTokenIndividually!1304 (LexerInterface!4853 List!36477 BalanceConc!21422) Bool)

(declare-fun seqFromList!3591 (List!36476) BalanceConc!21422)

(assert (=> b!3227586 (= res!1314427 (rulesProduceEachTokenIndividually!1304 thiss!18206 rules!2135 (seqFromList!3591 tokens!494)))))

(declare-fun b!3227587 () Bool)

(declare-fun e!2013022 () Bool)

(declare-fun e!2013019 () Bool)

(declare-fun tp!1017054 () Bool)

(assert (=> b!3227587 (= e!2013022 (and e!2013019 tp!1017054))))

(declare-fun b!3227588 () Bool)

(declare-fun e!2013026 () Bool)

(assert (=> b!3227588 (= e!2013020 (not e!2013026))))

(declare-fun res!1314419 () Bool)

(assert (=> b!3227588 (=> res!1314419 e!2013026)))

(declare-fun lt!1094927 () List!36475)

(declare-fun lt!1094932 () List!36475)

(assert (=> b!3227588 (= res!1314419 (not (= lt!1094927 lt!1094932)))))

(declare-fun printList!1403 (LexerInterface!4853 List!36476) List!36475)

(assert (=> b!3227588 (= lt!1094932 (printList!1403 thiss!18206 (Cons!36352 (h!41772 tokens!494) Nil!36352)))))

(declare-fun lt!1094928 () BalanceConc!21420)

(declare-fun list!12969 (BalanceConc!21420) List!36475)

(assert (=> b!3227588 (= lt!1094927 (list!12969 lt!1094928))))

(declare-fun lt!1094930 () BalanceConc!21422)

(declare-fun printTailRec!1350 (LexerInterface!4853 BalanceConc!21422 Int BalanceConc!21420) BalanceConc!21420)

(assert (=> b!3227588 (= lt!1094928 (printTailRec!1350 thiss!18206 lt!1094930 0 (BalanceConc!21421 Empty!10903)))))

(declare-fun print!1918 (LexerInterface!4853 BalanceConc!21422) BalanceConc!21420)

(assert (=> b!3227588 (= lt!1094928 (print!1918 thiss!18206 lt!1094930))))

(declare-fun singletonSeq!2360 (Token!9894) BalanceConc!21422)

(assert (=> b!3227588 (= lt!1094930 (singletonSeq!2360 (h!41772 tokens!494)))))

(declare-fun b!3227589 () Bool)

(declare-fun e!2013030 () Bool)

(assert (=> b!3227589 (= e!2013026 e!2013030)))

(declare-fun res!1314422 () Bool)

(assert (=> b!3227589 (=> res!1314422 e!2013030)))

(declare-fun lt!1094931 () List!36475)

(assert (=> b!3227589 (= res!1314422 (or (not (= lt!1094932 lt!1094931)) (not (= lt!1094927 lt!1094931))))))

(declare-fun charsOf!3280 (Token!9894) BalanceConc!21420)

(assert (=> b!3227589 (= lt!1094931 (list!12969 (charsOf!3280 (h!41772 tokens!494))))))

(declare-fun b!3227590 () Bool)

(declare-fun tp!1017051 () Bool)

(declare-fun e!2013029 () Bool)

(declare-fun e!2013033 () Bool)

(declare-fun inv!49238 (Token!9894) Bool)

(assert (=> b!3227590 (= e!2013029 (and (inv!49238 (h!41772 tokens!494)) e!2013033 tp!1017051))))

(declare-fun b!3227591 () Bool)

(declare-fun res!1314417 () Bool)

(assert (=> b!3227591 (=> res!1314417 e!2013030)))

(declare-fun rulesProduceIndividualToken!2345 (LexerInterface!4853 List!36477 Token!9894) Bool)

(assert (=> b!3227591 (= res!1314417 (not (rulesProduceIndividualToken!2345 thiss!18206 rules!2135 (h!41772 tokens!494))))))

(declare-fun b!3227592 () Bool)

(declare-fun res!1314418 () Bool)

(assert (=> b!3227592 (=> (not res!1314418) (not e!2013020))))

(declare-fun separatorToken!241 () Token!9894)

(assert (=> b!3227592 (= res!1314418 (isSeparator!5264 (rule!7722 separatorToken!241)))))

(declare-fun b!3227593 () Bool)

(declare-fun res!1314415 () Bool)

(assert (=> b!3227593 (=> (not res!1314415) (not e!2013020))))

(assert (=> b!3227593 (= res!1314415 (rulesProduceIndividualToken!2345 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3227594 () Bool)

(declare-fun res!1314421 () Bool)

(assert (=> b!3227594 (=> (not res!1314421) (not e!2013020))))

(declare-fun isEmpty!20434 (List!36477) Bool)

(assert (=> b!3227594 (= res!1314421 (not (isEmpty!20434 rules!2135)))))

(declare-fun e!2013021 () Bool)

(assert (=> b!3227595 (= e!2013021 (and tp!1017052 tp!1017055))))

(declare-fun tp!1017061 () Bool)

(declare-fun e!2013034 () Bool)

(declare-fun b!3227596 () Bool)

(declare-fun e!2013031 () Bool)

(declare-fun inv!21 (TokenValue!5494) Bool)

(assert (=> b!3227596 (= e!2013034 (and (inv!21 (value!170484 separatorToken!241)) e!2013031 tp!1017061))))

(declare-fun tp!1017050 () Bool)

(declare-fun e!2013024 () Bool)

(declare-fun e!2013027 () Bool)

(declare-fun b!3227597 () Bool)

(declare-fun inv!49235 (String!40804) Bool)

(declare-fun inv!49239 (TokenValueInjection!10416) Bool)

(assert (=> b!3227597 (= e!2013024 (and tp!1017050 (inv!49235 (tag!5796 (rule!7722 (h!41772 tokens!494)))) (inv!49239 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) e!2013027))))

(declare-fun b!3227598 () Bool)

(declare-fun res!1314424 () Bool)

(assert (=> b!3227598 (=> (not res!1314424) (not e!2013020))))

(declare-fun sepAndNonSepRulesDisjointChars!1458 (List!36477 List!36477) Bool)

(assert (=> b!3227598 (= res!1314424 (sepAndNonSepRulesDisjointChars!1458 rules!2135 rules!2135))))

(declare-fun b!3227599 () Bool)

(declare-fun res!1314423 () Bool)

(assert (=> b!3227599 (=> (not res!1314423) (not e!2013020))))

(declare-fun rulesInvariant!4250 (LexerInterface!4853 List!36477) Bool)

(assert (=> b!3227599 (= res!1314423 (rulesInvariant!4250 thiss!18206 rules!2135))))

(declare-fun b!3227601 () Bool)

(declare-fun tp!1017059 () Bool)

(assert (=> b!3227601 (= e!2013031 (and tp!1017059 (inv!49235 (tag!5796 (rule!7722 separatorToken!241))) (inv!49239 (transformation!5264 (rule!7722 separatorToken!241))) e!2013021))))

(assert (=> b!3227602 (= e!2013027 (and tp!1017062 tp!1017060))))

(declare-fun b!3227603 () Bool)

(declare-fun res!1314425 () Bool)

(assert (=> b!3227603 (=> (not res!1314425) (not e!2013020))))

(declare-fun lambda!118187 () Int)

(declare-fun forall!7466 (List!36476 Int) Bool)

(assert (=> b!3227603 (= res!1314425 (forall!7466 tokens!494 lambda!118187))))

(declare-fun tp!1017056 () Bool)

(declare-fun b!3227604 () Bool)

(declare-fun e!2013032 () Bool)

(assert (=> b!3227604 (= e!2013019 (and tp!1017056 (inv!49235 (tag!5796 (h!41773 rules!2135))) (inv!49239 (transformation!5264 (h!41773 rules!2135))) e!2013032))))

(declare-fun b!3227605 () Bool)

(declare-fun res!1314426 () Bool)

(assert (=> b!3227605 (=> res!1314426 e!2013030)))

(declare-fun isEmpty!20435 (BalanceConc!21422) Bool)

(declare-datatypes ((tuple2!35780 0))(
  ( (tuple2!35781 (_1!21024 BalanceConc!21422) (_2!21024 BalanceConc!21420)) )
))
(declare-fun lex!2181 (LexerInterface!4853 List!36477 BalanceConc!21420) tuple2!35780)

(declare-fun seqFromList!3592 (List!36475) BalanceConc!21420)

(assert (=> b!3227605 (= res!1314426 (isEmpty!20435 (_1!21024 (lex!2181 thiss!18206 rules!2135 (seqFromList!3592 lt!1094931)))))))

(assert (=> b!3227606 (= e!2013032 (and tp!1017057 tp!1017053))))

(declare-fun b!3227607 () Bool)

(assert (=> b!3227607 (= e!2013030 (not (isSeparator!5264 (rule!7722 (h!41772 tokens!494)))))))

(declare-datatypes ((Unit!50940 0))(
  ( (Unit!50941) )
))
(declare-fun lt!1094929 () Unit!50940)

(declare-fun forallContained!1225 (List!36476 Int Token!9894) Unit!50940)

(assert (=> b!3227607 (= lt!1094929 (forallContained!1225 tokens!494 lambda!118187 (h!41772 tokens!494)))))

(declare-fun tp!1017058 () Bool)

(declare-fun b!3227608 () Bool)

(assert (=> b!3227608 (= e!2013033 (and (inv!21 (value!170484 (h!41772 tokens!494))) e!2013024 tp!1017058))))

(declare-fun b!3227600 () Bool)

(declare-fun res!1314420 () Bool)

(assert (=> b!3227600 (=> (not res!1314420) (not e!2013020))))

(get-info :version)

(assert (=> b!3227600 (= res!1314420 (and (not ((_ is Nil!36352) tokens!494)) ((_ is Nil!36352) (t!241265 tokens!494))))))

(declare-fun res!1314416 () Bool)

(assert (=> start!303370 (=> (not res!1314416) (not e!2013020))))

(assert (=> start!303370 (= res!1314416 ((_ is Lexer!4851) thiss!18206))))

(assert (=> start!303370 e!2013020))

(assert (=> start!303370 true))

(assert (=> start!303370 e!2013022))

(assert (=> start!303370 e!2013029))

(assert (=> start!303370 (and (inv!49238 separatorToken!241) e!2013034)))

(assert (= (and start!303370 res!1314416) b!3227594))

(assert (= (and b!3227594 res!1314421) b!3227599))

(assert (= (and b!3227599 res!1314423) b!3227586))

(assert (= (and b!3227586 res!1314427) b!3227593))

(assert (= (and b!3227593 res!1314415) b!3227592))

(assert (= (and b!3227592 res!1314418) b!3227603))

(assert (= (and b!3227603 res!1314425) b!3227598))

(assert (= (and b!3227598 res!1314424) b!3227600))

(assert (= (and b!3227600 res!1314420) b!3227588))

(assert (= (and b!3227588 (not res!1314419)) b!3227589))

(assert (= (and b!3227589 (not res!1314422)) b!3227591))

(assert (= (and b!3227591 (not res!1314417)) b!3227605))

(assert (= (and b!3227605 (not res!1314426)) b!3227607))

(assert (= b!3227604 b!3227606))

(assert (= b!3227587 b!3227604))

(assert (= (and start!303370 ((_ is Cons!36353) rules!2135)) b!3227587))

(assert (= b!3227597 b!3227602))

(assert (= b!3227608 b!3227597))

(assert (= b!3227590 b!3227608))

(assert (= (and start!303370 ((_ is Cons!36352) tokens!494)) b!3227590))

(assert (= b!3227601 b!3227595))

(assert (= b!3227596 b!3227601))

(assert (= start!303370 b!3227596))

(declare-fun m!3506569 () Bool)

(assert (=> b!3227597 m!3506569))

(declare-fun m!3506571 () Bool)

(assert (=> b!3227597 m!3506571))

(declare-fun m!3506573 () Bool)

(assert (=> b!3227591 m!3506573))

(declare-fun m!3506575 () Bool)

(assert (=> start!303370 m!3506575))

(declare-fun m!3506577 () Bool)

(assert (=> b!3227590 m!3506577))

(declare-fun m!3506579 () Bool)

(assert (=> b!3227594 m!3506579))

(declare-fun m!3506581 () Bool)

(assert (=> b!3227586 m!3506581))

(assert (=> b!3227586 m!3506581))

(declare-fun m!3506583 () Bool)

(assert (=> b!3227586 m!3506583))

(declare-fun m!3506585 () Bool)

(assert (=> b!3227603 m!3506585))

(declare-fun m!3506587 () Bool)

(assert (=> b!3227596 m!3506587))

(declare-fun m!3506589 () Bool)

(assert (=> b!3227599 m!3506589))

(declare-fun m!3506591 () Bool)

(assert (=> b!3227608 m!3506591))

(declare-fun m!3506593 () Bool)

(assert (=> b!3227601 m!3506593))

(declare-fun m!3506595 () Bool)

(assert (=> b!3227601 m!3506595))

(declare-fun m!3506597 () Bool)

(assert (=> b!3227605 m!3506597))

(assert (=> b!3227605 m!3506597))

(declare-fun m!3506599 () Bool)

(assert (=> b!3227605 m!3506599))

(declare-fun m!3506601 () Bool)

(assert (=> b!3227605 m!3506601))

(declare-fun m!3506603 () Bool)

(assert (=> b!3227588 m!3506603))

(declare-fun m!3506605 () Bool)

(assert (=> b!3227588 m!3506605))

(declare-fun m!3506607 () Bool)

(assert (=> b!3227588 m!3506607))

(declare-fun m!3506609 () Bool)

(assert (=> b!3227588 m!3506609))

(declare-fun m!3506611 () Bool)

(assert (=> b!3227588 m!3506611))

(declare-fun m!3506613 () Bool)

(assert (=> b!3227598 m!3506613))

(declare-fun m!3506615 () Bool)

(assert (=> b!3227593 m!3506615))

(declare-fun m!3506617 () Bool)

(assert (=> b!3227607 m!3506617))

(declare-fun m!3506619 () Bool)

(assert (=> b!3227604 m!3506619))

(declare-fun m!3506621 () Bool)

(assert (=> b!3227604 m!3506621))

(declare-fun m!3506623 () Bool)

(assert (=> b!3227589 m!3506623))

(assert (=> b!3227589 m!3506623))

(declare-fun m!3506625 () Bool)

(assert (=> b!3227589 m!3506625))

(check-sat (not b!3227587) (not b!3227593) (not b!3227608) (not b_next!86795) (not b_next!86793) (not b!3227597) b_and!216113 (not b!3227596) b_and!216107 (not start!303370) (not b!3227598) (not b!3227594) (not b!3227607) (not b_next!86797) (not b_next!86801) (not b!3227588) (not b!3227586) (not b!3227601) (not b!3227603) (not b_next!86803) b_and!216105 b_and!216103 b_and!216109 (not b_next!86799) (not b!3227590) b_and!216111 (not b!3227599) (not b!3227604) (not b!3227589) (not b!3227591) (not b!3227605))
(check-sat (not b_next!86795) (not b_next!86793) b_and!216113 b_and!216107 (not b_next!86799) b_and!216111 (not b_next!86797) (not b_next!86801) (not b_next!86803) b_and!216105 b_and!216103 b_and!216109)
(get-model)

(declare-fun d!886269 () Bool)

(assert (=> d!886269 (= (inv!49235 (tag!5796 (rule!7722 separatorToken!241))) (= (mod (str.len (value!170483 (tag!5796 (rule!7722 separatorToken!241)))) 2) 0))))

(assert (=> b!3227601 d!886269))

(declare-fun d!886271 () Bool)

(declare-fun res!1314434 () Bool)

(declare-fun e!2013037 () Bool)

(assert (=> d!886271 (=> (not res!1314434) (not e!2013037))))

(declare-fun semiInverseModEq!2168 (Int Int) Bool)

(assert (=> d!886271 (= res!1314434 (semiInverseModEq!2168 (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (toValue!7372 (transformation!5264 (rule!7722 separatorToken!241)))))))

(assert (=> d!886271 (= (inv!49239 (transformation!5264 (rule!7722 separatorToken!241))) e!2013037)))

(declare-fun b!3227611 () Bool)

(declare-fun equivClasses!2067 (Int Int) Bool)

(assert (=> b!3227611 (= e!2013037 (equivClasses!2067 (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (toValue!7372 (transformation!5264 (rule!7722 separatorToken!241)))))))

(assert (= (and d!886271 res!1314434) b!3227611))

(declare-fun m!3506627 () Bool)

(assert (=> d!886271 m!3506627))

(declare-fun m!3506629 () Bool)

(assert (=> b!3227611 m!3506629))

(assert (=> b!3227601 d!886271))

(declare-fun d!886273 () Bool)

(declare-fun res!1314439 () Bool)

(declare-fun e!2013040 () Bool)

(assert (=> d!886273 (=> (not res!1314439) (not e!2013040))))

(declare-fun isEmpty!20436 (List!36475) Bool)

(assert (=> d!886273 (= res!1314439 (not (isEmpty!20436 (originalCharacters!5978 (h!41772 tokens!494)))))))

(assert (=> d!886273 (= (inv!49238 (h!41772 tokens!494)) e!2013040)))

(declare-fun b!3227616 () Bool)

(declare-fun res!1314440 () Bool)

(assert (=> b!3227616 (=> (not res!1314440) (not e!2013040))))

(declare-fun dynLambda!14776 (Int TokenValue!5494) BalanceConc!21420)

(assert (=> b!3227616 (= res!1314440 (= (originalCharacters!5978 (h!41772 tokens!494)) (list!12969 (dynLambda!14776 (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (value!170484 (h!41772 tokens!494))))))))

(declare-fun b!3227617 () Bool)

(declare-fun size!27418 (List!36475) Int)

(assert (=> b!3227617 (= e!2013040 (= (size!27417 (h!41772 tokens!494)) (size!27418 (originalCharacters!5978 (h!41772 tokens!494)))))))

(assert (= (and d!886273 res!1314439) b!3227616))

(assert (= (and b!3227616 res!1314440) b!3227617))

(declare-fun b_lambda!88835 () Bool)

(assert (=> (not b_lambda!88835) (not b!3227616)))

(declare-fun t!241268 () Bool)

(declare-fun tb!159795 () Bool)

(assert (=> (and b!3227602 (= (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494))))) t!241268) tb!159795))

(declare-fun b!3227622 () Bool)

(declare-fun e!2013043 () Bool)

(declare-fun tp!1017065 () Bool)

(declare-fun inv!49240 (Conc!10903) Bool)

(assert (=> b!3227622 (= e!2013043 (and (inv!49240 (c!542391 (dynLambda!14776 (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (value!170484 (h!41772 tokens!494))))) tp!1017065))))

(declare-fun result!202312 () Bool)

(declare-fun inv!49241 (BalanceConc!21420) Bool)

(assert (=> tb!159795 (= result!202312 (and (inv!49241 (dynLambda!14776 (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (value!170484 (h!41772 tokens!494)))) e!2013043))))

(assert (= tb!159795 b!3227622))

(declare-fun m!3506631 () Bool)

(assert (=> b!3227622 m!3506631))

(declare-fun m!3506633 () Bool)

(assert (=> tb!159795 m!3506633))

(assert (=> b!3227616 t!241268))

(declare-fun b_and!216115 () Bool)

(assert (= b_and!216105 (and (=> t!241268 result!202312) b_and!216115)))

(declare-fun t!241270 () Bool)

(declare-fun tb!159797 () Bool)

(assert (=> (and b!3227595 (= (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494))))) t!241270) tb!159797))

(declare-fun result!202316 () Bool)

(assert (= result!202316 result!202312))

(assert (=> b!3227616 t!241270))

(declare-fun b_and!216117 () Bool)

(assert (= b_and!216109 (and (=> t!241270 result!202316) b_and!216117)))

(declare-fun t!241272 () Bool)

(declare-fun tb!159799 () Bool)

(assert (=> (and b!3227606 (= (toChars!7231 (transformation!5264 (h!41773 rules!2135))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494))))) t!241272) tb!159799))

(declare-fun result!202318 () Bool)

(assert (= result!202318 result!202312))

(assert (=> b!3227616 t!241272))

(declare-fun b_and!216119 () Bool)

(assert (= b_and!216113 (and (=> t!241272 result!202318) b_and!216119)))

(declare-fun m!3506635 () Bool)

(assert (=> d!886273 m!3506635))

(declare-fun m!3506637 () Bool)

(assert (=> b!3227616 m!3506637))

(assert (=> b!3227616 m!3506637))

(declare-fun m!3506639 () Bool)

(assert (=> b!3227616 m!3506639))

(declare-fun m!3506641 () Bool)

(assert (=> b!3227617 m!3506641))

(assert (=> b!3227590 d!886273))

(declare-fun d!886275 () Bool)

(declare-fun res!1314443 () Bool)

(declare-fun e!2013046 () Bool)

(assert (=> d!886275 (=> (not res!1314443) (not e!2013046))))

(declare-fun rulesValid!1928 (LexerInterface!4853 List!36477) Bool)

(assert (=> d!886275 (= res!1314443 (rulesValid!1928 thiss!18206 rules!2135))))

(assert (=> d!886275 (= (rulesInvariant!4250 thiss!18206 rules!2135) e!2013046)))

(declare-fun b!3227625 () Bool)

(declare-datatypes ((List!36478 0))(
  ( (Nil!36354) (Cons!36354 (h!41774 String!40804) (t!241319 List!36478)) )
))
(declare-fun noDuplicateTag!1924 (LexerInterface!4853 List!36477 List!36478) Bool)

(assert (=> b!3227625 (= e!2013046 (noDuplicateTag!1924 thiss!18206 rules!2135 Nil!36354))))

(assert (= (and d!886275 res!1314443) b!3227625))

(declare-fun m!3506643 () Bool)

(assert (=> d!886275 m!3506643))

(declare-fun m!3506645 () Bool)

(assert (=> b!3227625 m!3506645))

(assert (=> b!3227599 d!886275))

(declare-fun d!886277 () Bool)

(declare-fun lt!1094935 () BalanceConc!21420)

(declare-fun list!12970 (BalanceConc!21422) List!36476)

(assert (=> d!886277 (= (list!12969 lt!1094935) (printList!1403 thiss!18206 (list!12970 lt!1094930)))))

(assert (=> d!886277 (= lt!1094935 (printTailRec!1350 thiss!18206 lt!1094930 0 (BalanceConc!21421 Empty!10903)))))

(assert (=> d!886277 (= (print!1918 thiss!18206 lt!1094930) lt!1094935)))

(declare-fun bs!543008 () Bool)

(assert (= bs!543008 d!886277))

(declare-fun m!3506647 () Bool)

(assert (=> bs!543008 m!3506647))

(declare-fun m!3506649 () Bool)

(assert (=> bs!543008 m!3506649))

(assert (=> bs!543008 m!3506649))

(declare-fun m!3506651 () Bool)

(assert (=> bs!543008 m!3506651))

(assert (=> bs!543008 m!3506603))

(assert (=> b!3227588 d!886277))

(declare-fun d!886283 () Bool)

(declare-fun list!12971 (Conc!10903) List!36475)

(assert (=> d!886283 (= (list!12969 lt!1094928) (list!12971 (c!542391 lt!1094928)))))

(declare-fun bs!543009 () Bool)

(assert (= bs!543009 d!886283))

(declare-fun m!3506653 () Bool)

(assert (=> bs!543009 m!3506653))

(assert (=> b!3227588 d!886283))

(declare-fun d!886285 () Bool)

(declare-fun lt!1094956 () BalanceConc!21420)

(declare-fun printListTailRec!574 (LexerInterface!4853 List!36476 List!36475) List!36475)

(declare-fun dropList!1091 (BalanceConc!21422 Int) List!36476)

(assert (=> d!886285 (= (list!12969 lt!1094956) (printListTailRec!574 thiss!18206 (dropList!1091 lt!1094930 0) (list!12969 (BalanceConc!21421 Empty!10903))))))

(declare-fun e!2013057 () BalanceConc!21420)

(assert (=> d!886285 (= lt!1094956 e!2013057)))

(declare-fun c!542395 () Bool)

(declare-fun size!27420 (BalanceConc!21422) Int)

(assert (=> d!886285 (= c!542395 (>= 0 (size!27420 lt!1094930)))))

(declare-fun e!2013058 () Bool)

(assert (=> d!886285 e!2013058))

(declare-fun res!1314456 () Bool)

(assert (=> d!886285 (=> (not res!1314456) (not e!2013058))))

(assert (=> d!886285 (= res!1314456 (>= 0 0))))

(assert (=> d!886285 (= (printTailRec!1350 thiss!18206 lt!1094930 0 (BalanceConc!21421 Empty!10903)) lt!1094956)))

(declare-fun b!3227643 () Bool)

(assert (=> b!3227643 (= e!2013058 (<= 0 (size!27420 lt!1094930)))))

(declare-fun b!3227644 () Bool)

(assert (=> b!3227644 (= e!2013057 (BalanceConc!21421 Empty!10903))))

(declare-fun b!3227645 () Bool)

(declare-fun ++!8751 (BalanceConc!21420 BalanceConc!21420) BalanceConc!21420)

(declare-fun apply!8295 (BalanceConc!21422 Int) Token!9894)

(assert (=> b!3227645 (= e!2013057 (printTailRec!1350 thiss!18206 lt!1094930 (+ 0 1) (++!8751 (BalanceConc!21421 Empty!10903) (charsOf!3280 (apply!8295 lt!1094930 0)))))))

(declare-fun lt!1094951 () List!36476)

(assert (=> b!3227645 (= lt!1094951 (list!12970 lt!1094930))))

(declare-fun lt!1094953 () Unit!50940)

(declare-fun lemmaDropApply!1050 (List!36476 Int) Unit!50940)

(assert (=> b!3227645 (= lt!1094953 (lemmaDropApply!1050 lt!1094951 0))))

(declare-fun head!7086 (List!36476) Token!9894)

(declare-fun drop!1874 (List!36476 Int) List!36476)

(declare-fun apply!8296 (List!36476 Int) Token!9894)

(assert (=> b!3227645 (= (head!7086 (drop!1874 lt!1094951 0)) (apply!8296 lt!1094951 0))))

(declare-fun lt!1094955 () Unit!50940)

(assert (=> b!3227645 (= lt!1094955 lt!1094953)))

(declare-fun lt!1094952 () List!36476)

(assert (=> b!3227645 (= lt!1094952 (list!12970 lt!1094930))))

(declare-fun lt!1094950 () Unit!50940)

(declare-fun lemmaDropTail!934 (List!36476 Int) Unit!50940)

(assert (=> b!3227645 (= lt!1094950 (lemmaDropTail!934 lt!1094952 0))))

(declare-fun tail!5230 (List!36476) List!36476)

(assert (=> b!3227645 (= (tail!5230 (drop!1874 lt!1094952 0)) (drop!1874 lt!1094952 (+ 0 1)))))

(declare-fun lt!1094954 () Unit!50940)

(assert (=> b!3227645 (= lt!1094954 lt!1094950)))

(assert (= (and d!886285 res!1314456) b!3227643))

(assert (= (and d!886285 c!542395) b!3227644))

(assert (= (and d!886285 (not c!542395)) b!3227645))

(declare-fun m!3506667 () Bool)

(assert (=> d!886285 m!3506667))

(declare-fun m!3506669 () Bool)

(assert (=> d!886285 m!3506669))

(declare-fun m!3506671 () Bool)

(assert (=> d!886285 m!3506671))

(declare-fun m!3506673 () Bool)

(assert (=> d!886285 m!3506673))

(assert (=> d!886285 m!3506671))

(assert (=> d!886285 m!3506667))

(declare-fun m!3506675 () Bool)

(assert (=> d!886285 m!3506675))

(assert (=> b!3227643 m!3506669))

(declare-fun m!3506677 () Bool)

(assert (=> b!3227645 m!3506677))

(declare-fun m!3506679 () Bool)

(assert (=> b!3227645 m!3506679))

(declare-fun m!3506681 () Bool)

(assert (=> b!3227645 m!3506681))

(declare-fun m!3506683 () Bool)

(assert (=> b!3227645 m!3506683))

(assert (=> b!3227645 m!3506649))

(declare-fun m!3506685 () Bool)

(assert (=> b!3227645 m!3506685))

(assert (=> b!3227645 m!3506679))

(declare-fun m!3506687 () Bool)

(assert (=> b!3227645 m!3506687))

(assert (=> b!3227645 m!3506685))

(declare-fun m!3506689 () Bool)

(assert (=> b!3227645 m!3506689))

(declare-fun m!3506691 () Bool)

(assert (=> b!3227645 m!3506691))

(assert (=> b!3227645 m!3506677))

(declare-fun m!3506693 () Bool)

(assert (=> b!3227645 m!3506693))

(declare-fun m!3506695 () Bool)

(assert (=> b!3227645 m!3506695))

(assert (=> b!3227645 m!3506687))

(declare-fun m!3506697 () Bool)

(assert (=> b!3227645 m!3506697))

(assert (=> b!3227645 m!3506689))

(declare-fun m!3506699 () Bool)

(assert (=> b!3227645 m!3506699))

(assert (=> b!3227588 d!886285))

(declare-fun d!886289 () Bool)

(declare-fun e!2013061 () Bool)

(assert (=> d!886289 e!2013061))

(declare-fun res!1314459 () Bool)

(assert (=> d!886289 (=> (not res!1314459) (not e!2013061))))

(declare-fun lt!1094959 () BalanceConc!21422)

(assert (=> d!886289 (= res!1314459 (= (list!12970 lt!1094959) (Cons!36352 (h!41772 tokens!494) Nil!36352)))))

(declare-fun singleton!1007 (Token!9894) BalanceConc!21422)

(assert (=> d!886289 (= lt!1094959 (singleton!1007 (h!41772 tokens!494)))))

(assert (=> d!886289 (= (singletonSeq!2360 (h!41772 tokens!494)) lt!1094959)))

(declare-fun b!3227648 () Bool)

(declare-fun isBalanced!3242 (Conc!10904) Bool)

(assert (=> b!3227648 (= e!2013061 (isBalanced!3242 (c!542392 lt!1094959)))))

(assert (= (and d!886289 res!1314459) b!3227648))

(declare-fun m!3506701 () Bool)

(assert (=> d!886289 m!3506701))

(declare-fun m!3506703 () Bool)

(assert (=> d!886289 m!3506703))

(declare-fun m!3506705 () Bool)

(assert (=> b!3227648 m!3506705))

(assert (=> b!3227588 d!886289))

(declare-fun d!886291 () Bool)

(declare-fun c!542398 () Bool)

(assert (=> d!886291 (= c!542398 ((_ is Cons!36352) (Cons!36352 (h!41772 tokens!494) Nil!36352)))))

(declare-fun e!2013064 () List!36475)

(assert (=> d!886291 (= (printList!1403 thiss!18206 (Cons!36352 (h!41772 tokens!494) Nil!36352)) e!2013064)))

(declare-fun b!3227653 () Bool)

(declare-fun ++!8752 (List!36475 List!36475) List!36475)

(assert (=> b!3227653 (= e!2013064 (++!8752 (list!12969 (charsOf!3280 (h!41772 (Cons!36352 (h!41772 tokens!494) Nil!36352)))) (printList!1403 thiss!18206 (t!241265 (Cons!36352 (h!41772 tokens!494) Nil!36352)))))))

(declare-fun b!3227654 () Bool)

(assert (=> b!3227654 (= e!2013064 Nil!36351)))

(assert (= (and d!886291 c!542398) b!3227653))

(assert (= (and d!886291 (not c!542398)) b!3227654))

(declare-fun m!3506707 () Bool)

(assert (=> b!3227653 m!3506707))

(assert (=> b!3227653 m!3506707))

(declare-fun m!3506709 () Bool)

(assert (=> b!3227653 m!3506709))

(declare-fun m!3506711 () Bool)

(assert (=> b!3227653 m!3506711))

(assert (=> b!3227653 m!3506709))

(assert (=> b!3227653 m!3506711))

(declare-fun m!3506713 () Bool)

(assert (=> b!3227653 m!3506713))

(assert (=> b!3227588 d!886291))

(declare-fun d!886293 () Bool)

(assert (=> d!886293 (= (list!12969 (charsOf!3280 (h!41772 tokens!494))) (list!12971 (c!542391 (charsOf!3280 (h!41772 tokens!494)))))))

(declare-fun bs!543010 () Bool)

(assert (= bs!543010 d!886293))

(declare-fun m!3506715 () Bool)

(assert (=> bs!543010 m!3506715))

(assert (=> b!3227589 d!886293))

(declare-fun d!886295 () Bool)

(declare-fun lt!1094962 () BalanceConc!21420)

(assert (=> d!886295 (= (list!12969 lt!1094962) (originalCharacters!5978 (h!41772 tokens!494)))))

(assert (=> d!886295 (= lt!1094962 (dynLambda!14776 (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (value!170484 (h!41772 tokens!494))))))

(assert (=> d!886295 (= (charsOf!3280 (h!41772 tokens!494)) lt!1094962)))

(declare-fun b_lambda!88839 () Bool)

(assert (=> (not b_lambda!88839) (not d!886295)))

(assert (=> d!886295 t!241268))

(declare-fun b_and!216127 () Bool)

(assert (= b_and!216115 (and (=> t!241268 result!202312) b_and!216127)))

(assert (=> d!886295 t!241270))

(declare-fun b_and!216129 () Bool)

(assert (= b_and!216117 (and (=> t!241270 result!202316) b_and!216129)))

(assert (=> d!886295 t!241272))

(declare-fun b_and!216131 () Bool)

(assert (= b_and!216119 (and (=> t!241272 result!202318) b_and!216131)))

(declare-fun m!3506717 () Bool)

(assert (=> d!886295 m!3506717))

(assert (=> d!886295 m!3506637))

(assert (=> b!3227589 d!886295))

(declare-fun d!886297 () Bool)

(declare-fun res!1314460 () Bool)

(declare-fun e!2013065 () Bool)

(assert (=> d!886297 (=> (not res!1314460) (not e!2013065))))

(assert (=> d!886297 (= res!1314460 (not (isEmpty!20436 (originalCharacters!5978 separatorToken!241))))))

(assert (=> d!886297 (= (inv!49238 separatorToken!241) e!2013065)))

(declare-fun b!3227655 () Bool)

(declare-fun res!1314461 () Bool)

(assert (=> b!3227655 (=> (not res!1314461) (not e!2013065))))

(assert (=> b!3227655 (= res!1314461 (= (originalCharacters!5978 separatorToken!241) (list!12969 (dynLambda!14776 (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (value!170484 separatorToken!241)))))))

(declare-fun b!3227656 () Bool)

(assert (=> b!3227656 (= e!2013065 (= (size!27417 separatorToken!241) (size!27418 (originalCharacters!5978 separatorToken!241))))))

(assert (= (and d!886297 res!1314460) b!3227655))

(assert (= (and b!3227655 res!1314461) b!3227656))

(declare-fun b_lambda!88841 () Bool)

(assert (=> (not b_lambda!88841) (not b!3227655)))

(declare-fun t!241281 () Bool)

(declare-fun tb!159807 () Bool)

(assert (=> (and b!3227602 (= (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241)))) t!241281) tb!159807))

(declare-fun b!3227657 () Bool)

(declare-fun e!2013066 () Bool)

(declare-fun tp!1017069 () Bool)

(assert (=> b!3227657 (= e!2013066 (and (inv!49240 (c!542391 (dynLambda!14776 (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (value!170484 separatorToken!241)))) tp!1017069))))

(declare-fun result!202328 () Bool)

(assert (=> tb!159807 (= result!202328 (and (inv!49241 (dynLambda!14776 (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (value!170484 separatorToken!241))) e!2013066))))

(assert (= tb!159807 b!3227657))

(declare-fun m!3506719 () Bool)

(assert (=> b!3227657 m!3506719))

(declare-fun m!3506721 () Bool)

(assert (=> tb!159807 m!3506721))

(assert (=> b!3227655 t!241281))

(declare-fun b_and!216133 () Bool)

(assert (= b_and!216127 (and (=> t!241281 result!202328) b_and!216133)))

(declare-fun t!241283 () Bool)

(declare-fun tb!159809 () Bool)

(assert (=> (and b!3227595 (= (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241)))) t!241283) tb!159809))

(declare-fun result!202330 () Bool)

(assert (= result!202330 result!202328))

(assert (=> b!3227655 t!241283))

(declare-fun b_and!216135 () Bool)

(assert (= b_and!216129 (and (=> t!241283 result!202330) b_and!216135)))

(declare-fun t!241285 () Bool)

(declare-fun tb!159811 () Bool)

(assert (=> (and b!3227606 (= (toChars!7231 (transformation!5264 (h!41773 rules!2135))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241)))) t!241285) tb!159811))

(declare-fun result!202332 () Bool)

(assert (= result!202332 result!202328))

(assert (=> b!3227655 t!241285))

(declare-fun b_and!216137 () Bool)

(assert (= b_and!216131 (and (=> t!241285 result!202332) b_and!216137)))

(declare-fun m!3506723 () Bool)

(assert (=> d!886297 m!3506723))

(declare-fun m!3506725 () Bool)

(assert (=> b!3227655 m!3506725))

(assert (=> b!3227655 m!3506725))

(declare-fun m!3506727 () Bool)

(assert (=> b!3227655 m!3506727))

(declare-fun m!3506729 () Bool)

(assert (=> b!3227656 m!3506729))

(assert (=> start!303370 d!886297))

(declare-fun b!3227668 () Bool)

(declare-fun res!1314464 () Bool)

(declare-fun e!2013075 () Bool)

(assert (=> b!3227668 (=> res!1314464 e!2013075)))

(assert (=> b!3227668 (= res!1314464 (not ((_ is IntegerValue!16484) (value!170484 (h!41772 tokens!494)))))))

(declare-fun e!2013074 () Bool)

(assert (=> b!3227668 (= e!2013074 e!2013075)))

(declare-fun b!3227669 () Bool)

(declare-fun inv!17 (TokenValue!5494) Bool)

(assert (=> b!3227669 (= e!2013074 (inv!17 (value!170484 (h!41772 tokens!494))))))

(declare-fun b!3227670 () Bool)

(declare-fun e!2013073 () Bool)

(assert (=> b!3227670 (= e!2013073 e!2013074)))

(declare-fun c!542404 () Bool)

(assert (=> b!3227670 (= c!542404 ((_ is IntegerValue!16483) (value!170484 (h!41772 tokens!494))))))

(declare-fun d!886299 () Bool)

(declare-fun c!542403 () Bool)

(assert (=> d!886299 (= c!542403 ((_ is IntegerValue!16482) (value!170484 (h!41772 tokens!494))))))

(assert (=> d!886299 (= (inv!21 (value!170484 (h!41772 tokens!494))) e!2013073)))

(declare-fun b!3227671 () Bool)

(declare-fun inv!15 (TokenValue!5494) Bool)

(assert (=> b!3227671 (= e!2013075 (inv!15 (value!170484 (h!41772 tokens!494))))))

(declare-fun b!3227672 () Bool)

(declare-fun inv!16 (TokenValue!5494) Bool)

(assert (=> b!3227672 (= e!2013073 (inv!16 (value!170484 (h!41772 tokens!494))))))

(assert (= (and d!886299 c!542403) b!3227672))

(assert (= (and d!886299 (not c!542403)) b!3227670))

(assert (= (and b!3227670 c!542404) b!3227669))

(assert (= (and b!3227670 (not c!542404)) b!3227668))

(assert (= (and b!3227668 (not res!1314464)) b!3227671))

(declare-fun m!3506731 () Bool)

(assert (=> b!3227669 m!3506731))

(declare-fun m!3506733 () Bool)

(assert (=> b!3227671 m!3506733))

(declare-fun m!3506735 () Bool)

(assert (=> b!3227672 m!3506735))

(assert (=> b!3227608 d!886299))

(declare-fun d!886301 () Bool)

(declare-fun res!1314469 () Bool)

(declare-fun e!2013080 () Bool)

(assert (=> d!886301 (=> res!1314469 e!2013080)))

(assert (=> d!886301 (= res!1314469 (not ((_ is Cons!36353) rules!2135)))))

(assert (=> d!886301 (= (sepAndNonSepRulesDisjointChars!1458 rules!2135 rules!2135) e!2013080)))

(declare-fun b!3227677 () Bool)

(declare-fun e!2013081 () Bool)

(assert (=> b!3227677 (= e!2013080 e!2013081)))

(declare-fun res!1314470 () Bool)

(assert (=> b!3227677 (=> (not res!1314470) (not e!2013081))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!604 (Rule!10328 List!36477) Bool)

(assert (=> b!3227677 (= res!1314470 (ruleDisjointCharsFromAllFromOtherType!604 (h!41773 rules!2135) rules!2135))))

(declare-fun b!3227678 () Bool)

(assert (=> b!3227678 (= e!2013081 (sepAndNonSepRulesDisjointChars!1458 rules!2135 (t!241266 rules!2135)))))

(assert (= (and d!886301 (not res!1314469)) b!3227677))

(assert (= (and b!3227677 res!1314470) b!3227678))

(declare-fun m!3506737 () Bool)

(assert (=> b!3227677 m!3506737))

(declare-fun m!3506739 () Bool)

(assert (=> b!3227678 m!3506739))

(assert (=> b!3227598 d!886301))

(declare-fun d!886303 () Bool)

(declare-fun dynLambda!14778 (Int Token!9894) Bool)

(assert (=> d!886303 (dynLambda!14778 lambda!118187 (h!41772 tokens!494))))

(declare-fun lt!1094965 () Unit!50940)

(declare-fun choose!18825 (List!36476 Int Token!9894) Unit!50940)

(assert (=> d!886303 (= lt!1094965 (choose!18825 tokens!494 lambda!118187 (h!41772 tokens!494)))))

(declare-fun e!2013084 () Bool)

(assert (=> d!886303 e!2013084))

(declare-fun res!1314473 () Bool)

(assert (=> d!886303 (=> (not res!1314473) (not e!2013084))))

(assert (=> d!886303 (= res!1314473 (forall!7466 tokens!494 lambda!118187))))

(assert (=> d!886303 (= (forallContained!1225 tokens!494 lambda!118187 (h!41772 tokens!494)) lt!1094965)))

(declare-fun b!3227681 () Bool)

(declare-fun contains!6524 (List!36476 Token!9894) Bool)

(assert (=> b!3227681 (= e!2013084 (contains!6524 tokens!494 (h!41772 tokens!494)))))

(assert (= (and d!886303 res!1314473) b!3227681))

(declare-fun b_lambda!88843 () Bool)

(assert (=> (not b_lambda!88843) (not d!886303)))

(declare-fun m!3506741 () Bool)

(assert (=> d!886303 m!3506741))

(declare-fun m!3506743 () Bool)

(assert (=> d!886303 m!3506743))

(assert (=> d!886303 m!3506585))

(declare-fun m!3506745 () Bool)

(assert (=> b!3227681 m!3506745))

(assert (=> b!3227607 d!886303))

(declare-fun b!3227682 () Bool)

(declare-fun res!1314474 () Bool)

(declare-fun e!2013087 () Bool)

(assert (=> b!3227682 (=> res!1314474 e!2013087)))

(assert (=> b!3227682 (= res!1314474 (not ((_ is IntegerValue!16484) (value!170484 separatorToken!241))))))

(declare-fun e!2013086 () Bool)

(assert (=> b!3227682 (= e!2013086 e!2013087)))

(declare-fun b!3227683 () Bool)

(assert (=> b!3227683 (= e!2013086 (inv!17 (value!170484 separatorToken!241)))))

(declare-fun b!3227684 () Bool)

(declare-fun e!2013085 () Bool)

(assert (=> b!3227684 (= e!2013085 e!2013086)))

(declare-fun c!542406 () Bool)

(assert (=> b!3227684 (= c!542406 ((_ is IntegerValue!16483) (value!170484 separatorToken!241)))))

(declare-fun d!886305 () Bool)

(declare-fun c!542405 () Bool)

(assert (=> d!886305 (= c!542405 ((_ is IntegerValue!16482) (value!170484 separatorToken!241)))))

(assert (=> d!886305 (= (inv!21 (value!170484 separatorToken!241)) e!2013085)))

(declare-fun b!3227685 () Bool)

(assert (=> b!3227685 (= e!2013087 (inv!15 (value!170484 separatorToken!241)))))

(declare-fun b!3227686 () Bool)

(assert (=> b!3227686 (= e!2013085 (inv!16 (value!170484 separatorToken!241)))))

(assert (= (and d!886305 c!542405) b!3227686))

(assert (= (and d!886305 (not c!542405)) b!3227684))

(assert (= (and b!3227684 c!542406) b!3227683))

(assert (= (and b!3227684 (not c!542406)) b!3227682))

(assert (= (and b!3227682 (not res!1314474)) b!3227685))

(declare-fun m!3506747 () Bool)

(assert (=> b!3227683 m!3506747))

(declare-fun m!3506749 () Bool)

(assert (=> b!3227685 m!3506749))

(declare-fun m!3506751 () Bool)

(assert (=> b!3227686 m!3506751))

(assert (=> b!3227596 d!886305))

(declare-fun d!886307 () Bool)

(assert (=> d!886307 (= (inv!49235 (tag!5796 (rule!7722 (h!41772 tokens!494)))) (= (mod (str.len (value!170483 (tag!5796 (rule!7722 (h!41772 tokens!494))))) 2) 0))))

(assert (=> b!3227597 d!886307))

(declare-fun d!886309 () Bool)

(declare-fun res!1314475 () Bool)

(declare-fun e!2013088 () Bool)

(assert (=> d!886309 (=> (not res!1314475) (not e!2013088))))

(assert (=> d!886309 (= res!1314475 (semiInverseModEq!2168 (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (toValue!7372 (transformation!5264 (rule!7722 (h!41772 tokens!494))))))))

(assert (=> d!886309 (= (inv!49239 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) e!2013088)))

(declare-fun b!3227687 () Bool)

(assert (=> b!3227687 (= e!2013088 (equivClasses!2067 (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (toValue!7372 (transformation!5264 (rule!7722 (h!41772 tokens!494))))))))

(assert (= (and d!886309 res!1314475) b!3227687))

(declare-fun m!3506753 () Bool)

(assert (=> d!886309 m!3506753))

(declare-fun m!3506755 () Bool)

(assert (=> b!3227687 m!3506755))

(assert (=> b!3227597 d!886309))

(declare-fun bs!543013 () Bool)

(declare-fun d!886311 () Bool)

(assert (= bs!543013 (and d!886311 b!3227603)))

(declare-fun lambda!118192 () Int)

(assert (=> bs!543013 (not (= lambda!118192 lambda!118187))))

(declare-fun b!3227758 () Bool)

(declare-fun e!2013138 () Bool)

(assert (=> b!3227758 (= e!2013138 true)))

(declare-fun b!3227757 () Bool)

(declare-fun e!2013137 () Bool)

(assert (=> b!3227757 (= e!2013137 e!2013138)))

(declare-fun b!3227756 () Bool)

(declare-fun e!2013136 () Bool)

(assert (=> b!3227756 (= e!2013136 e!2013137)))

(assert (=> d!886311 e!2013136))

(assert (= b!3227757 b!3227758))

(assert (= b!3227756 b!3227757))

(assert (= (and d!886311 ((_ is Cons!36353) rules!2135)) b!3227756))

(declare-fun order!18745 () Int)

(declare-fun order!18743 () Int)

(declare-fun dynLambda!14779 (Int Int) Int)

(declare-fun dynLambda!14780 (Int Int) Int)

(assert (=> b!3227758 (< (dynLambda!14779 order!18743 (toValue!7372 (transformation!5264 (h!41773 rules!2135)))) (dynLambda!14780 order!18745 lambda!118192))))

(declare-fun order!18747 () Int)

(declare-fun dynLambda!14781 (Int Int) Int)

(assert (=> b!3227758 (< (dynLambda!14781 order!18747 (toChars!7231 (transformation!5264 (h!41773 rules!2135)))) (dynLambda!14780 order!18745 lambda!118192))))

(assert (=> d!886311 true))

(declare-fun e!2013129 () Bool)

(assert (=> d!886311 e!2013129))

(declare-fun res!1314512 () Bool)

(assert (=> d!886311 (=> (not res!1314512) (not e!2013129))))

(declare-fun lt!1094984 () Bool)

(assert (=> d!886311 (= res!1314512 (= lt!1094984 (forall!7466 (list!12970 (seqFromList!3591 tokens!494)) lambda!118192)))))

(declare-fun forall!7467 (BalanceConc!21422 Int) Bool)

(assert (=> d!886311 (= lt!1094984 (forall!7467 (seqFromList!3591 tokens!494) lambda!118192))))

(assert (=> d!886311 (not (isEmpty!20434 rules!2135))))

(assert (=> d!886311 (= (rulesProduceEachTokenIndividually!1304 thiss!18206 rules!2135 (seqFromList!3591 tokens!494)) lt!1094984)))

(declare-fun b!3227747 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1740 (LexerInterface!4853 List!36477 List!36476) Bool)

(assert (=> b!3227747 (= e!2013129 (= lt!1094984 (rulesProduceEachTokenIndividuallyList!1740 thiss!18206 rules!2135 (list!12970 (seqFromList!3591 tokens!494)))))))

(assert (= (and d!886311 res!1314512) b!3227747))

(assert (=> d!886311 m!3506581))

(declare-fun m!3506853 () Bool)

(assert (=> d!886311 m!3506853))

(assert (=> d!886311 m!3506853))

(declare-fun m!3506855 () Bool)

(assert (=> d!886311 m!3506855))

(assert (=> d!886311 m!3506581))

(declare-fun m!3506857 () Bool)

(assert (=> d!886311 m!3506857))

(assert (=> d!886311 m!3506579))

(assert (=> b!3227747 m!3506581))

(assert (=> b!3227747 m!3506853))

(assert (=> b!3227747 m!3506853))

(declare-fun m!3506859 () Bool)

(assert (=> b!3227747 m!3506859))

(assert (=> b!3227586 d!886311))

(declare-fun d!886339 () Bool)

(declare-fun fromListB!1561 (List!36476) BalanceConc!21422)

(assert (=> d!886339 (= (seqFromList!3591 tokens!494) (fromListB!1561 tokens!494))))

(declare-fun bs!543014 () Bool)

(assert (= bs!543014 d!886339))

(declare-fun m!3506861 () Bool)

(assert (=> bs!543014 m!3506861))

(assert (=> b!3227586 d!886339))

(declare-fun d!886341 () Bool)

(assert (=> d!886341 (= (inv!49235 (tag!5796 (h!41773 rules!2135))) (= (mod (str.len (value!170483 (tag!5796 (h!41773 rules!2135)))) 2) 0))))

(assert (=> b!3227604 d!886341))

(declare-fun d!886343 () Bool)

(declare-fun res!1314513 () Bool)

(declare-fun e!2013139 () Bool)

(assert (=> d!886343 (=> (not res!1314513) (not e!2013139))))

(assert (=> d!886343 (= res!1314513 (semiInverseModEq!2168 (toChars!7231 (transformation!5264 (h!41773 rules!2135))) (toValue!7372 (transformation!5264 (h!41773 rules!2135)))))))

(assert (=> d!886343 (= (inv!49239 (transformation!5264 (h!41773 rules!2135))) e!2013139)))

(declare-fun b!3227761 () Bool)

(assert (=> b!3227761 (= e!2013139 (equivClasses!2067 (toChars!7231 (transformation!5264 (h!41773 rules!2135))) (toValue!7372 (transformation!5264 (h!41773 rules!2135)))))))

(assert (= (and d!886343 res!1314513) b!3227761))

(declare-fun m!3506863 () Bool)

(assert (=> d!886343 m!3506863))

(declare-fun m!3506865 () Bool)

(assert (=> b!3227761 m!3506865))

(assert (=> b!3227604 d!886343))

(declare-fun d!886345 () Bool)

(declare-fun lt!1094987 () Bool)

(declare-fun isEmpty!20441 (List!36476) Bool)

(assert (=> d!886345 (= lt!1094987 (isEmpty!20441 (list!12970 (_1!21024 (lex!2181 thiss!18206 rules!2135 (seqFromList!3592 lt!1094931))))))))

(declare-fun isEmpty!20442 (Conc!10904) Bool)

(assert (=> d!886345 (= lt!1094987 (isEmpty!20442 (c!542392 (_1!21024 (lex!2181 thiss!18206 rules!2135 (seqFromList!3592 lt!1094931))))))))

(assert (=> d!886345 (= (isEmpty!20435 (_1!21024 (lex!2181 thiss!18206 rules!2135 (seqFromList!3592 lt!1094931)))) lt!1094987)))

(declare-fun bs!543015 () Bool)

(assert (= bs!543015 d!886345))

(declare-fun m!3506867 () Bool)

(assert (=> bs!543015 m!3506867))

(assert (=> bs!543015 m!3506867))

(declare-fun m!3506869 () Bool)

(assert (=> bs!543015 m!3506869))

(declare-fun m!3506871 () Bool)

(assert (=> bs!543015 m!3506871))

(assert (=> b!3227605 d!886345))

(declare-fun d!886347 () Bool)

(declare-fun e!2013148 () Bool)

(assert (=> d!886347 e!2013148))

(declare-fun res!1314520 () Bool)

(assert (=> d!886347 (=> (not res!1314520) (not e!2013148))))

(declare-fun e!2013146 () Bool)

(assert (=> d!886347 (= res!1314520 e!2013146)))

(declare-fun c!542420 () Bool)

(declare-fun lt!1094990 () tuple2!35780)

(assert (=> d!886347 (= c!542420 (> (size!27420 (_1!21024 lt!1094990)) 0))))

(declare-fun lexTailRecV2!945 (LexerInterface!4853 List!36477 BalanceConc!21420 BalanceConc!21420 BalanceConc!21420 BalanceConc!21422) tuple2!35780)

(assert (=> d!886347 (= lt!1094990 (lexTailRecV2!945 thiss!18206 rules!2135 (seqFromList!3592 lt!1094931) (BalanceConc!21421 Empty!10903) (seqFromList!3592 lt!1094931) (BalanceConc!21423 Empty!10904)))))

(assert (=> d!886347 (= (lex!2181 thiss!18206 rules!2135 (seqFromList!3592 lt!1094931)) lt!1094990)))

(declare-fun b!3227772 () Bool)

(declare-fun e!2013147 () Bool)

(assert (=> b!3227772 (= e!2013147 (not (isEmpty!20435 (_1!21024 lt!1094990))))))

(declare-fun b!3227773 () Bool)

(assert (=> b!3227773 (= e!2013146 (= (_2!21024 lt!1094990) (seqFromList!3592 lt!1094931)))))

(declare-fun b!3227774 () Bool)

(declare-fun res!1314522 () Bool)

(assert (=> b!3227774 (=> (not res!1314522) (not e!2013148))))

(declare-datatypes ((tuple2!35784 0))(
  ( (tuple2!35785 (_1!21026 List!36476) (_2!21026 List!36475)) )
))
(declare-fun lexList!1333 (LexerInterface!4853 List!36477 List!36475) tuple2!35784)

(assert (=> b!3227774 (= res!1314522 (= (list!12970 (_1!21024 lt!1094990)) (_1!21026 (lexList!1333 thiss!18206 rules!2135 (list!12969 (seqFromList!3592 lt!1094931))))))))

(declare-fun b!3227775 () Bool)

(assert (=> b!3227775 (= e!2013148 (= (list!12969 (_2!21024 lt!1094990)) (_2!21026 (lexList!1333 thiss!18206 rules!2135 (list!12969 (seqFromList!3592 lt!1094931))))))))

(declare-fun b!3227776 () Bool)

(assert (=> b!3227776 (= e!2013146 e!2013147)))

(declare-fun res!1314521 () Bool)

(declare-fun size!27423 (BalanceConc!21420) Int)

(assert (=> b!3227776 (= res!1314521 (< (size!27423 (_2!21024 lt!1094990)) (size!27423 (seqFromList!3592 lt!1094931))))))

(assert (=> b!3227776 (=> (not res!1314521) (not e!2013147))))

(assert (= (and d!886347 c!542420) b!3227776))

(assert (= (and d!886347 (not c!542420)) b!3227773))

(assert (= (and b!3227776 res!1314521) b!3227772))

(assert (= (and d!886347 res!1314520) b!3227774))

(assert (= (and b!3227774 res!1314522) b!3227775))

(declare-fun m!3506873 () Bool)

(assert (=> b!3227774 m!3506873))

(assert (=> b!3227774 m!3506597))

(declare-fun m!3506875 () Bool)

(assert (=> b!3227774 m!3506875))

(assert (=> b!3227774 m!3506875))

(declare-fun m!3506877 () Bool)

(assert (=> b!3227774 m!3506877))

(declare-fun m!3506879 () Bool)

(assert (=> b!3227775 m!3506879))

(assert (=> b!3227775 m!3506597))

(assert (=> b!3227775 m!3506875))

(assert (=> b!3227775 m!3506875))

(assert (=> b!3227775 m!3506877))

(declare-fun m!3506881 () Bool)

(assert (=> b!3227776 m!3506881))

(assert (=> b!3227776 m!3506597))

(declare-fun m!3506883 () Bool)

(assert (=> b!3227776 m!3506883))

(declare-fun m!3506885 () Bool)

(assert (=> d!886347 m!3506885))

(assert (=> d!886347 m!3506597))

(assert (=> d!886347 m!3506597))

(declare-fun m!3506887 () Bool)

(assert (=> d!886347 m!3506887))

(declare-fun m!3506889 () Bool)

(assert (=> b!3227772 m!3506889))

(assert (=> b!3227605 d!886347))

(declare-fun d!886349 () Bool)

(declare-fun fromListB!1563 (List!36475) BalanceConc!21420)

(assert (=> d!886349 (= (seqFromList!3592 lt!1094931) (fromListB!1563 lt!1094931))))

(declare-fun bs!543016 () Bool)

(assert (= bs!543016 d!886349))

(declare-fun m!3506891 () Bool)

(assert (=> bs!543016 m!3506891))

(assert (=> b!3227605 d!886349))

(declare-fun d!886351 () Bool)

(assert (=> d!886351 (= (isEmpty!20434 rules!2135) ((_ is Nil!36353) rules!2135))))

(assert (=> b!3227594 d!886351))

(declare-fun d!886353 () Bool)

(declare-fun res!1314527 () Bool)

(declare-fun e!2013153 () Bool)

(assert (=> d!886353 (=> res!1314527 e!2013153)))

(assert (=> d!886353 (= res!1314527 ((_ is Nil!36352) tokens!494))))

(assert (=> d!886353 (= (forall!7466 tokens!494 lambda!118187) e!2013153)))

(declare-fun b!3227781 () Bool)

(declare-fun e!2013154 () Bool)

(assert (=> b!3227781 (= e!2013153 e!2013154)))

(declare-fun res!1314528 () Bool)

(assert (=> b!3227781 (=> (not res!1314528) (not e!2013154))))

(assert (=> b!3227781 (= res!1314528 (dynLambda!14778 lambda!118187 (h!41772 tokens!494)))))

(declare-fun b!3227782 () Bool)

(assert (=> b!3227782 (= e!2013154 (forall!7466 (t!241265 tokens!494) lambda!118187))))

(assert (= (and d!886353 (not res!1314527)) b!3227781))

(assert (= (and b!3227781 res!1314528) b!3227782))

(declare-fun b_lambda!88847 () Bool)

(assert (=> (not b_lambda!88847) (not b!3227781)))

(assert (=> b!3227781 m!3506741))

(declare-fun m!3506893 () Bool)

(assert (=> b!3227782 m!3506893))

(assert (=> b!3227603 d!886353))

(declare-fun d!886355 () Bool)

(declare-fun lt!1095017 () Bool)

(declare-fun e!2013191 () Bool)

(assert (=> d!886355 (= lt!1095017 e!2013191)))

(declare-fun res!1314558 () Bool)

(assert (=> d!886355 (=> (not res!1314558) (not e!2013191))))

(assert (=> d!886355 (= res!1314558 (= (list!12970 (_1!21024 (lex!2181 thiss!18206 rules!2135 (print!1918 thiss!18206 (singletonSeq!2360 separatorToken!241))))) (list!12970 (singletonSeq!2360 separatorToken!241))))))

(declare-fun e!2013192 () Bool)

(assert (=> d!886355 (= lt!1095017 e!2013192)))

(declare-fun res!1314557 () Bool)

(assert (=> d!886355 (=> (not res!1314557) (not e!2013192))))

(declare-fun lt!1095016 () tuple2!35780)

(assert (=> d!886355 (= res!1314557 (= (size!27420 (_1!21024 lt!1095016)) 1))))

(assert (=> d!886355 (= lt!1095016 (lex!2181 thiss!18206 rules!2135 (print!1918 thiss!18206 (singletonSeq!2360 separatorToken!241))))))

(assert (=> d!886355 (not (isEmpty!20434 rules!2135))))

(assert (=> d!886355 (= (rulesProduceIndividualToken!2345 thiss!18206 rules!2135 separatorToken!241) lt!1095017)))

(declare-fun b!3227827 () Bool)

(declare-fun res!1314556 () Bool)

(assert (=> b!3227827 (=> (not res!1314556) (not e!2013192))))

(assert (=> b!3227827 (= res!1314556 (= (apply!8295 (_1!21024 lt!1095016) 0) separatorToken!241))))

(declare-fun b!3227828 () Bool)

(declare-fun isEmpty!20443 (BalanceConc!21420) Bool)

(assert (=> b!3227828 (= e!2013192 (isEmpty!20443 (_2!21024 lt!1095016)))))

(declare-fun b!3227829 () Bool)

(assert (=> b!3227829 (= e!2013191 (isEmpty!20443 (_2!21024 (lex!2181 thiss!18206 rules!2135 (print!1918 thiss!18206 (singletonSeq!2360 separatorToken!241))))))))

(assert (= (and d!886355 res!1314557) b!3227827))

(assert (= (and b!3227827 res!1314556) b!3227828))

(assert (= (and d!886355 res!1314558) b!3227829))

(declare-fun m!3506925 () Bool)

(assert (=> d!886355 m!3506925))

(declare-fun m!3506927 () Bool)

(assert (=> d!886355 m!3506927))

(declare-fun m!3506929 () Bool)

(assert (=> d!886355 m!3506929))

(declare-fun m!3506931 () Bool)

(assert (=> d!886355 m!3506931))

(assert (=> d!886355 m!3506579))

(assert (=> d!886355 m!3506929))

(assert (=> d!886355 m!3506925))

(declare-fun m!3506933 () Bool)

(assert (=> d!886355 m!3506933))

(assert (=> d!886355 m!3506929))

(declare-fun m!3506935 () Bool)

(assert (=> d!886355 m!3506935))

(declare-fun m!3506937 () Bool)

(assert (=> b!3227827 m!3506937))

(declare-fun m!3506939 () Bool)

(assert (=> b!3227828 m!3506939))

(assert (=> b!3227829 m!3506929))

(assert (=> b!3227829 m!3506929))

(assert (=> b!3227829 m!3506925))

(assert (=> b!3227829 m!3506925))

(assert (=> b!3227829 m!3506927))

(declare-fun m!3506941 () Bool)

(assert (=> b!3227829 m!3506941))

(assert (=> b!3227593 d!886355))

(declare-fun d!886375 () Bool)

(declare-fun lt!1095026 () Bool)

(declare-fun e!2013195 () Bool)

(assert (=> d!886375 (= lt!1095026 e!2013195)))

(declare-fun res!1314562 () Bool)

(assert (=> d!886375 (=> (not res!1314562) (not e!2013195))))

(assert (=> d!886375 (= res!1314562 (= (list!12970 (_1!21024 (lex!2181 thiss!18206 rules!2135 (print!1918 thiss!18206 (singletonSeq!2360 (h!41772 tokens!494)))))) (list!12970 (singletonSeq!2360 (h!41772 tokens!494)))))))

(declare-fun e!2013196 () Bool)

(assert (=> d!886375 (= lt!1095026 e!2013196)))

(declare-fun res!1314561 () Bool)

(assert (=> d!886375 (=> (not res!1314561) (not e!2013196))))

(declare-fun lt!1095025 () tuple2!35780)

(assert (=> d!886375 (= res!1314561 (= (size!27420 (_1!21024 lt!1095025)) 1))))

(assert (=> d!886375 (= lt!1095025 (lex!2181 thiss!18206 rules!2135 (print!1918 thiss!18206 (singletonSeq!2360 (h!41772 tokens!494)))))))

(assert (=> d!886375 (not (isEmpty!20434 rules!2135))))

(assert (=> d!886375 (= (rulesProduceIndividualToken!2345 thiss!18206 rules!2135 (h!41772 tokens!494)) lt!1095026)))

(declare-fun b!3227833 () Bool)

(declare-fun res!1314560 () Bool)

(assert (=> b!3227833 (=> (not res!1314560) (not e!2013196))))

(assert (=> b!3227833 (= res!1314560 (= (apply!8295 (_1!21024 lt!1095025) 0) (h!41772 tokens!494)))))

(declare-fun b!3227834 () Bool)

(assert (=> b!3227834 (= e!2013196 (isEmpty!20443 (_2!21024 lt!1095025)))))

(declare-fun b!3227835 () Bool)

(assert (=> b!3227835 (= e!2013195 (isEmpty!20443 (_2!21024 (lex!2181 thiss!18206 rules!2135 (print!1918 thiss!18206 (singletonSeq!2360 (h!41772 tokens!494)))))))))

(assert (= (and d!886375 res!1314561) b!3227833))

(assert (= (and b!3227833 res!1314560) b!3227834))

(assert (= (and d!886375 res!1314562) b!3227835))

(declare-fun m!3506953 () Bool)

(assert (=> d!886375 m!3506953))

(declare-fun m!3506955 () Bool)

(assert (=> d!886375 m!3506955))

(assert (=> d!886375 m!3506605))

(declare-fun m!3506965 () Bool)

(assert (=> d!886375 m!3506965))

(assert (=> d!886375 m!3506579))

(assert (=> d!886375 m!3506605))

(assert (=> d!886375 m!3506953))

(declare-fun m!3506973 () Bool)

(assert (=> d!886375 m!3506973))

(assert (=> d!886375 m!3506605))

(declare-fun m!3506977 () Bool)

(assert (=> d!886375 m!3506977))

(declare-fun m!3506981 () Bool)

(assert (=> b!3227833 m!3506981))

(declare-fun m!3506983 () Bool)

(assert (=> b!3227834 m!3506983))

(assert (=> b!3227835 m!3506605))

(assert (=> b!3227835 m!3506605))

(assert (=> b!3227835 m!3506953))

(assert (=> b!3227835 m!3506953))

(assert (=> b!3227835 m!3506955))

(declare-fun m!3506991 () Bool)

(assert (=> b!3227835 m!3506991))

(assert (=> b!3227591 d!886375))

(declare-fun b!3227849 () Bool)

(declare-fun e!2013199 () Bool)

(declare-fun tp!1017081 () Bool)

(declare-fun tp!1017085 () Bool)

(assert (=> b!3227849 (= e!2013199 (and tp!1017081 tp!1017085))))

(declare-fun b!3227846 () Bool)

(declare-fun tp_is_empty!17323 () Bool)

(assert (=> b!3227846 (= e!2013199 tp_is_empty!17323)))

(declare-fun b!3227847 () Bool)

(declare-fun tp!1017082 () Bool)

(declare-fun tp!1017083 () Bool)

(assert (=> b!3227847 (= e!2013199 (and tp!1017082 tp!1017083))))

(assert (=> b!3227601 (= tp!1017059 e!2013199)))

(declare-fun b!3227848 () Bool)

(declare-fun tp!1017084 () Bool)

(assert (=> b!3227848 (= e!2013199 tp!1017084)))

(assert (= (and b!3227601 ((_ is ElementMatch!10023) (regex!5264 (rule!7722 separatorToken!241)))) b!3227846))

(assert (= (and b!3227601 ((_ is Concat!15517) (regex!5264 (rule!7722 separatorToken!241)))) b!3227847))

(assert (= (and b!3227601 ((_ is Star!10023) (regex!5264 (rule!7722 separatorToken!241)))) b!3227848))

(assert (= (and b!3227601 ((_ is Union!10023) (regex!5264 (rule!7722 separatorToken!241)))) b!3227849))

(declare-fun b!3227863 () Bool)

(declare-fun b_free!86101 () Bool)

(declare-fun b_next!86805 () Bool)

(assert (=> b!3227863 (= b_free!86101 (not b_next!86805))))

(declare-fun tp!1017098 () Bool)

(declare-fun b_and!216151 () Bool)

(assert (=> b!3227863 (= tp!1017098 b_and!216151)))

(declare-fun b_free!86103 () Bool)

(declare-fun b_next!86807 () Bool)

(assert (=> b!3227863 (= b_free!86103 (not b_next!86807))))

(declare-fun t!241303 () Bool)

(declare-fun tb!159819 () Bool)

(assert (=> (and b!3227863 (= (toChars!7231 (transformation!5264 (rule!7722 (h!41772 (t!241265 tokens!494))))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494))))) t!241303) tb!159819))

(declare-fun result!202344 () Bool)

(assert (= result!202344 result!202312))

(assert (=> b!3227616 t!241303))

(assert (=> d!886295 t!241303))

(declare-fun tb!159821 () Bool)

(declare-fun t!241305 () Bool)

(assert (=> (and b!3227863 (= (toChars!7231 (transformation!5264 (rule!7722 (h!41772 (t!241265 tokens!494))))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241)))) t!241305) tb!159821))

(declare-fun result!202346 () Bool)

(assert (= result!202346 result!202328))

(assert (=> b!3227655 t!241305))

(declare-fun b_and!216153 () Bool)

(declare-fun tp!1017100 () Bool)

(assert (=> b!3227863 (= tp!1017100 (and (=> t!241303 result!202344) (=> t!241305 result!202346) b_and!216153))))

(declare-fun e!2013216 () Bool)

(assert (=> b!3227863 (= e!2013216 (and tp!1017098 tp!1017100))))

(declare-fun b!3227860 () Bool)

(declare-fun e!2013217 () Bool)

(declare-fun tp!1017099 () Bool)

(declare-fun e!2013215 () Bool)

(assert (=> b!3227860 (= e!2013217 (and (inv!49238 (h!41772 (t!241265 tokens!494))) e!2013215 tp!1017099))))

(declare-fun b!3227862 () Bool)

(declare-fun tp!1017096 () Bool)

(declare-fun e!2013214 () Bool)

(assert (=> b!3227862 (= e!2013214 (and tp!1017096 (inv!49235 (tag!5796 (rule!7722 (h!41772 (t!241265 tokens!494))))) (inv!49239 (transformation!5264 (rule!7722 (h!41772 (t!241265 tokens!494))))) e!2013216))))

(declare-fun b!3227861 () Bool)

(declare-fun tp!1017097 () Bool)

(assert (=> b!3227861 (= e!2013215 (and (inv!21 (value!170484 (h!41772 (t!241265 tokens!494)))) e!2013214 tp!1017097))))

(assert (=> b!3227590 (= tp!1017051 e!2013217)))

(assert (= b!3227862 b!3227863))

(assert (= b!3227861 b!3227862))

(assert (= b!3227860 b!3227861))

(assert (= (and b!3227590 ((_ is Cons!36352) (t!241265 tokens!494))) b!3227860))

(declare-fun m!3506995 () Bool)

(assert (=> b!3227860 m!3506995))

(declare-fun m!3506997 () Bool)

(assert (=> b!3227862 m!3506997))

(declare-fun m!3506999 () Bool)

(assert (=> b!3227862 m!3506999))

(declare-fun m!3507001 () Bool)

(assert (=> b!3227861 m!3507001))

(declare-fun b!3227867 () Bool)

(declare-fun e!2013218 () Bool)

(declare-fun tp!1017101 () Bool)

(declare-fun tp!1017105 () Bool)

(assert (=> b!3227867 (= e!2013218 (and tp!1017101 tp!1017105))))

(declare-fun b!3227864 () Bool)

(assert (=> b!3227864 (= e!2013218 tp_is_empty!17323)))

(declare-fun b!3227865 () Bool)

(declare-fun tp!1017102 () Bool)

(declare-fun tp!1017103 () Bool)

(assert (=> b!3227865 (= e!2013218 (and tp!1017102 tp!1017103))))

(assert (=> b!3227604 (= tp!1017056 e!2013218)))

(declare-fun b!3227866 () Bool)

(declare-fun tp!1017104 () Bool)

(assert (=> b!3227866 (= e!2013218 tp!1017104)))

(assert (= (and b!3227604 ((_ is ElementMatch!10023) (regex!5264 (h!41773 rules!2135)))) b!3227864))

(assert (= (and b!3227604 ((_ is Concat!15517) (regex!5264 (h!41773 rules!2135)))) b!3227865))

(assert (= (and b!3227604 ((_ is Star!10023) (regex!5264 (h!41773 rules!2135)))) b!3227866))

(assert (= (and b!3227604 ((_ is Union!10023) (regex!5264 (h!41773 rules!2135)))) b!3227867))

(declare-fun b!3227878 () Bool)

(declare-fun b_free!86105 () Bool)

(declare-fun b_next!86809 () Bool)

(assert (=> b!3227878 (= b_free!86105 (not b_next!86809))))

(declare-fun tp!1017115 () Bool)

(declare-fun b_and!216155 () Bool)

(assert (=> b!3227878 (= tp!1017115 b_and!216155)))

(declare-fun b_free!86107 () Bool)

(declare-fun b_next!86811 () Bool)

(assert (=> b!3227878 (= b_free!86107 (not b_next!86811))))

(declare-fun tb!159823 () Bool)

(declare-fun t!241307 () Bool)

(assert (=> (and b!3227878 (= (toChars!7231 (transformation!5264 (h!41773 (t!241266 rules!2135)))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494))))) t!241307) tb!159823))

(declare-fun result!202350 () Bool)

(assert (= result!202350 result!202312))

(assert (=> b!3227616 t!241307))

(assert (=> d!886295 t!241307))

(declare-fun tb!159825 () Bool)

(declare-fun t!241309 () Bool)

(assert (=> (and b!3227878 (= (toChars!7231 (transformation!5264 (h!41773 (t!241266 rules!2135)))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241)))) t!241309) tb!159825))

(declare-fun result!202352 () Bool)

(assert (= result!202352 result!202328))

(assert (=> b!3227655 t!241309))

(declare-fun tp!1017117 () Bool)

(declare-fun b_and!216157 () Bool)

(assert (=> b!3227878 (= tp!1017117 (and (=> t!241307 result!202350) (=> t!241309 result!202352) b_and!216157))))

(declare-fun e!2013227 () Bool)

(assert (=> b!3227878 (= e!2013227 (and tp!1017115 tp!1017117))))

(declare-fun e!2013230 () Bool)

(declare-fun tp!1017116 () Bool)

(declare-fun b!3227877 () Bool)

(assert (=> b!3227877 (= e!2013230 (and tp!1017116 (inv!49235 (tag!5796 (h!41773 (t!241266 rules!2135)))) (inv!49239 (transformation!5264 (h!41773 (t!241266 rules!2135)))) e!2013227))))

(declare-fun b!3227876 () Bool)

(declare-fun e!2013229 () Bool)

(declare-fun tp!1017114 () Bool)

(assert (=> b!3227876 (= e!2013229 (and e!2013230 tp!1017114))))

(assert (=> b!3227587 (= tp!1017054 e!2013229)))

(assert (= b!3227877 b!3227878))

(assert (= b!3227876 b!3227877))

(assert (= (and b!3227587 ((_ is Cons!36353) (t!241266 rules!2135))) b!3227876))

(declare-fun m!3507003 () Bool)

(assert (=> b!3227877 m!3507003))

(declare-fun m!3507005 () Bool)

(assert (=> b!3227877 m!3507005))

(declare-fun b!3227883 () Bool)

(declare-fun e!2013233 () Bool)

(declare-fun tp!1017120 () Bool)

(assert (=> b!3227883 (= e!2013233 (and tp_is_empty!17323 tp!1017120))))

(assert (=> b!3227608 (= tp!1017058 e!2013233)))

(assert (= (and b!3227608 ((_ is Cons!36351) (originalCharacters!5978 (h!41772 tokens!494)))) b!3227883))

(declare-fun b!3227884 () Bool)

(declare-fun e!2013234 () Bool)

(declare-fun tp!1017121 () Bool)

(assert (=> b!3227884 (= e!2013234 (and tp_is_empty!17323 tp!1017121))))

(assert (=> b!3227596 (= tp!1017061 e!2013234)))

(assert (= (and b!3227596 ((_ is Cons!36351) (originalCharacters!5978 separatorToken!241))) b!3227884))

(declare-fun b!3227888 () Bool)

(declare-fun e!2013235 () Bool)

(declare-fun tp!1017122 () Bool)

(declare-fun tp!1017126 () Bool)

(assert (=> b!3227888 (= e!2013235 (and tp!1017122 tp!1017126))))

(declare-fun b!3227885 () Bool)

(assert (=> b!3227885 (= e!2013235 tp_is_empty!17323)))

(declare-fun b!3227886 () Bool)

(declare-fun tp!1017123 () Bool)

(declare-fun tp!1017124 () Bool)

(assert (=> b!3227886 (= e!2013235 (and tp!1017123 tp!1017124))))

(assert (=> b!3227597 (= tp!1017050 e!2013235)))

(declare-fun b!3227887 () Bool)

(declare-fun tp!1017125 () Bool)

(assert (=> b!3227887 (= e!2013235 tp!1017125)))

(assert (= (and b!3227597 ((_ is ElementMatch!10023) (regex!5264 (rule!7722 (h!41772 tokens!494))))) b!3227885))

(assert (= (and b!3227597 ((_ is Concat!15517) (regex!5264 (rule!7722 (h!41772 tokens!494))))) b!3227886))

(assert (= (and b!3227597 ((_ is Star!10023) (regex!5264 (rule!7722 (h!41772 tokens!494))))) b!3227887))

(assert (= (and b!3227597 ((_ is Union!10023) (regex!5264 (rule!7722 (h!41772 tokens!494))))) b!3227888))

(declare-fun b_lambda!88855 () Bool)

(assert (= b_lambda!88841 (or (and b!3227595 b_free!86095) (and b!3227602 b_free!86091 (= (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))))) (and b!3227878 b_free!86107 (= (toChars!7231 (transformation!5264 (h!41773 (t!241266 rules!2135)))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))))) (and b!3227863 b_free!86103 (= (toChars!7231 (transformation!5264 (rule!7722 (h!41772 (t!241265 tokens!494))))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))))) (and b!3227606 b_free!86099 (= (toChars!7231 (transformation!5264 (h!41773 rules!2135))) (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))))) b_lambda!88855)))

(declare-fun b_lambda!88857 () Bool)

(assert (= b_lambda!88843 (or b!3227603 b_lambda!88857)))

(declare-fun bs!543020 () Bool)

(declare-fun d!886379 () Bool)

(assert (= bs!543020 (and d!886379 b!3227603)))

(assert (=> bs!543020 (= (dynLambda!14778 lambda!118187 (h!41772 tokens!494)) (not (isSeparator!5264 (rule!7722 (h!41772 tokens!494)))))))

(assert (=> d!886303 d!886379))

(declare-fun b_lambda!88859 () Bool)

(assert (= b_lambda!88835 (or (and b!3227595 b_free!86095 (= (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))))) (and b!3227602 b_free!86091) (and b!3227863 b_free!86103 (= (toChars!7231 (transformation!5264 (rule!7722 (h!41772 (t!241265 tokens!494))))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))))) (and b!3227606 b_free!86099 (= (toChars!7231 (transformation!5264 (h!41773 rules!2135))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))))) (and b!3227878 b_free!86107 (= (toChars!7231 (transformation!5264 (h!41773 (t!241266 rules!2135)))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))))) b_lambda!88859)))

(declare-fun b_lambda!88861 () Bool)

(assert (= b_lambda!88847 (or b!3227603 b_lambda!88861)))

(assert (=> b!3227781 d!886379))

(declare-fun b_lambda!88863 () Bool)

(assert (= b_lambda!88839 (or (and b!3227595 b_free!86095 (= (toChars!7231 (transformation!5264 (rule!7722 separatorToken!241))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))))) (and b!3227602 b_free!86091) (and b!3227863 b_free!86103 (= (toChars!7231 (transformation!5264 (rule!7722 (h!41772 (t!241265 tokens!494))))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))))) (and b!3227606 b_free!86099 (= (toChars!7231 (transformation!5264 (h!41773 rules!2135))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))))) (and b!3227878 b_free!86107 (= (toChars!7231 (transformation!5264 (h!41773 (t!241266 rules!2135)))) (toChars!7231 (transformation!5264 (rule!7722 (h!41772 tokens!494)))))) b_lambda!88863)))

(check-sat (not b_next!86793) (not b!3227653) b_and!216107 (not b!3227761) (not b!3227671) (not b_next!86807) (not b_lambda!88861) (not b_next!86801) (not b_next!86797) b_and!216153 (not b_lambda!88857) (not b_lambda!88855) (not b!3227774) (not d!886289) (not d!886355) (not b!3227876) (not d!886375) (not b!3227861) (not d!886349) (not b!3227866) (not b!3227678) (not b_next!86795) (not b!3227683) (not b!3227886) tp_is_empty!17323 (not b!3227655) (not b!3227860) (not b!3227847) (not tb!159807) (not b_lambda!88859) (not d!886343) b_and!216155 (not b!3227685) (not b!3227833) (not b!3227867) (not b!3227884) (not b_next!86809) (not b!3227756) (not b_next!86811) (not b!3227775) (not b!3227862) (not b!3227772) (not b!3227835) (not d!886339) (not b!3227648) (not b!3227883) (not b_next!86805) (not b!3227782) (not b!3227829) (not b_next!86803) (not b!3227656) b_and!216133 (not b!3227687) (not d!886297) (not b!3227677) (not b!3227827) (not b_lambda!88863) (not d!886271) (not tb!159795) (not b!3227617) (not b!3227747) (not d!886277) (not b!3227616) b_and!216137 (not b!3227776) b_and!216103 b_and!216157 (not b!3227622) (not d!886275) (not b!3227643) (not b_next!86799) (not b!3227848) (not d!886285) b_and!216111 (not d!886295) (not b!3227887) (not b!3227681) b_and!216135 (not d!886311) (not d!886345) (not b!3227669) (not b!3227834) (not d!886303) (not d!886293) (not b!3227625) (not b!3227611) (not b!3227645) (not b!3227828) (not d!886309) (not b!3227657) (not b!3227877) (not b!3227865) (not d!886347) (not b!3227672) (not d!886283) (not b!3227888) (not b!3227849) (not b!3227686) b_and!216151 (not d!886273))
(check-sat (not b_next!86795) (not b_next!86793) b_and!216155 (not b_next!86809) (not b_next!86811) (not b_next!86805) b_and!216157 b_and!216107 (not b_next!86799) b_and!216151 (not b_next!86807) (not b_next!86801) (not b_next!86797) b_and!216153 (not b_next!86803) b_and!216133 b_and!216137 b_and!216103 b_and!216111 b_and!216135)
