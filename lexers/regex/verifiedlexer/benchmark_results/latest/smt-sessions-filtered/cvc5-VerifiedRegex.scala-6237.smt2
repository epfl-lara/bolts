; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!302652 () Bool)

(assert start!302652)

(declare-fun b!3223611 () Bool)

(declare-fun b_free!85845 () Bool)

(declare-fun b_next!86549 () Bool)

(assert (=> b!3223611 (= b_free!85845 (not b_next!86549))))

(declare-fun tp!1015472 () Bool)

(declare-fun b_and!215547 () Bool)

(assert (=> b!3223611 (= tp!1015472 b_and!215547)))

(declare-fun b_free!85847 () Bool)

(declare-fun b_next!86551 () Bool)

(assert (=> b!3223611 (= b_free!85847 (not b_next!86551))))

(declare-fun tp!1015471 () Bool)

(declare-fun b_and!215549 () Bool)

(assert (=> b!3223611 (= tp!1015471 b_and!215549)))

(declare-fun b!3223614 () Bool)

(declare-fun b_free!85849 () Bool)

(declare-fun b_next!86553 () Bool)

(assert (=> b!3223614 (= b_free!85849 (not b_next!86553))))

(declare-fun tp!1015473 () Bool)

(declare-fun b_and!215551 () Bool)

(assert (=> b!3223614 (= tp!1015473 b_and!215551)))

(declare-fun b_free!85851 () Bool)

(declare-fun b_next!86555 () Bool)

(assert (=> b!3223614 (= b_free!85851 (not b_next!86555))))

(declare-fun tp!1015477 () Bool)

(declare-fun b_and!215553 () Bool)

(assert (=> b!3223614 (= tp!1015477 b_and!215553)))

(declare-fun b!3223620 () Bool)

(declare-fun b_free!85853 () Bool)

(declare-fun b_next!86557 () Bool)

(assert (=> b!3223620 (= b_free!85853 (not b_next!86557))))

(declare-fun tp!1015480 () Bool)

(declare-fun b_and!215555 () Bool)

(assert (=> b!3223620 (= tp!1015480 b_and!215555)))

(declare-fun b_free!85855 () Bool)

(declare-fun b_next!86559 () Bool)

(assert (=> b!3223620 (= b_free!85855 (not b_next!86559))))

(declare-fun tp!1015474 () Bool)

(declare-fun b_and!215557 () Bool)

(assert (=> b!3223620 (= tp!1015474 b_and!215557)))

(declare-fun e!2010417 () Bool)

(assert (=> b!3223611 (= e!2010417 (and tp!1015472 tp!1015471))))

(declare-fun b!3223612 () Bool)

(declare-fun e!2010414 () Bool)

(declare-fun e!2010412 () Bool)

(declare-fun tp!1015478 () Bool)

(declare-datatypes ((C!20210 0))(
  ( (C!20211 (val!12153 Int)) )
))
(declare-datatypes ((Regex!10012 0))(
  ( (ElementMatch!10012 (c!541836 C!20210)) (Concat!15495 (regOne!20536 Regex!10012) (regTwo!20536 Regex!10012)) (EmptyExpr!10012) (Star!10012 (reg!10341 Regex!10012)) (EmptyLang!10012) (Union!10012 (regOne!20537 Regex!10012) (regTwo!20537 Regex!10012)) )
))
(declare-datatypes ((List!36422 0))(
  ( (Nil!36298) (Cons!36298 (h!41718 (_ BitVec 16)) (t!240667 List!36422)) )
))
(declare-datatypes ((TokenValue!5483 0))(
  ( (FloatLiteralValue!10966 (text!38826 List!36422)) (TokenValueExt!5482 (__x!23183 Int)) (Broken!27415 (value!170146 List!36422)) (Object!5606) (End!5483) (Def!5483) (Underscore!5483) (Match!5483) (Else!5483) (Error!5483) (Case!5483) (If!5483) (Extends!5483) (Abstract!5483) (Class!5483) (Val!5483) (DelimiterValue!10966 (del!5543 List!36422)) (KeywordValue!5489 (value!170147 List!36422)) (CommentValue!10966 (value!170148 List!36422)) (WhitespaceValue!10966 (value!170149 List!36422)) (IndentationValue!5483 (value!170150 List!36422)) (String!40750) (Int32!5483) (Broken!27416 (value!170151 List!36422)) (Boolean!5484) (Unit!50906) (OperatorValue!5486 (op!5543 List!36422)) (IdentifierValue!10966 (value!170152 List!36422)) (IdentifierValue!10967 (value!170153 List!36422)) (WhitespaceValue!10967 (value!170154 List!36422)) (True!10966) (False!10966) (Broken!27417 (value!170155 List!36422)) (Broken!27418 (value!170156 List!36422)) (True!10967) (RightBrace!5483) (RightBracket!5483) (Colon!5483) (Null!5483) (Comma!5483) (LeftBracket!5483) (False!10967) (LeftBrace!5483) (ImaginaryLiteralValue!5483 (text!38827 List!36422)) (StringLiteralValue!16449 (value!170157 List!36422)) (EOFValue!5483 (value!170158 List!36422)) (IdentValue!5483 (value!170159 List!36422)) (DelimiterValue!10967 (value!170160 List!36422)) (DedentValue!5483 (value!170161 List!36422)) (NewLineValue!5483 (value!170162 List!36422)) (IntegerValue!16449 (value!170163 (_ BitVec 32)) (text!38828 List!36422)) (IntegerValue!16450 (value!170164 Int) (text!38829 List!36422)) (Times!5483) (Or!5483) (Equal!5483) (Minus!5483) (Broken!27419 (value!170165 List!36422)) (And!5483) (Div!5483) (LessEqual!5483) (Mod!5483) (Concat!15496) (Not!5483) (Plus!5483) (SpaceValue!5483 (value!170166 List!36422)) (IntegerValue!16451 (value!170167 Int) (text!38830 List!36422)) (StringLiteralValue!16450 (text!38831 List!36422)) (FloatLiteralValue!10967 (text!38832 List!36422)) (BytesLiteralValue!5483 (value!170168 List!36422)) (CommentValue!10967 (value!170169 List!36422)) (StringLiteralValue!16451 (value!170170 List!36422)) (ErrorTokenValue!5483 (msg!5544 List!36422)) )
))
(declare-datatypes ((List!36423 0))(
  ( (Nil!36299) (Cons!36299 (h!41719 C!20210) (t!240668 List!36423)) )
))
(declare-datatypes ((IArray!21767 0))(
  ( (IArray!21768 (innerList!10941 List!36423)) )
))
(declare-datatypes ((Conc!10881 0))(
  ( (Node!10881 (left!28262 Conc!10881) (right!28592 Conc!10881) (csize!21992 Int) (cheight!11092 Int)) (Leaf!17119 (xs!13999 IArray!21767) (csize!21993 Int)) (Empty!10881) )
))
(declare-datatypes ((BalanceConc!21376 0))(
  ( (BalanceConc!21377 (c!541837 Conc!10881)) )
))
(declare-datatypes ((String!40751 0))(
  ( (String!40752 (value!170171 String)) )
))
(declare-datatypes ((TokenValueInjection!10394 0))(
  ( (TokenValueInjection!10395 (toValue!7349 Int) (toChars!7208 Int)) )
))
(declare-datatypes ((Rule!10306 0))(
  ( (Rule!10307 (regex!5253 Regex!10012) (tag!5785 String!40751) (isSeparator!5253 Bool) (transformation!5253 TokenValueInjection!10394)) )
))
(declare-datatypes ((List!36424 0))(
  ( (Nil!36300) (Cons!36300 (h!41720 Rule!10306) (t!240669 List!36424)) )
))
(declare-fun rules!2135 () List!36424)

(declare-fun inv!49164 (String!40751) Bool)

(declare-fun inv!49167 (TokenValueInjection!10394) Bool)

(assert (=> b!3223612 (= e!2010414 (and tp!1015478 (inv!49164 (tag!5785 (h!41720 rules!2135))) (inv!49167 (transformation!5253 (h!41720 rules!2135))) e!2010412))))

(declare-fun e!2010409 () Bool)

(declare-datatypes ((Token!9872 0))(
  ( (Token!9873 (value!170172 TokenValue!5483) (rule!7711 Rule!10306) (size!27370 Int) (originalCharacters!5967 List!36423)) )
))
(declare-fun separatorToken!241 () Token!9872)

(declare-fun e!2010422 () Bool)

(declare-fun tp!1015475 () Bool)

(declare-fun b!3223613 () Bool)

(declare-fun inv!21 (TokenValue!5483) Bool)

(assert (=> b!3223613 (= e!2010409 (and (inv!21 (value!170172 separatorToken!241)) e!2010422 tp!1015475))))

(assert (=> b!3223614 (= e!2010412 (and tp!1015473 tp!1015477))))

(declare-fun b!3223615 () Bool)

(declare-fun res!1312922 () Bool)

(declare-fun e!2010407 () Bool)

(assert (=> b!3223615 (=> (not res!1312922) (not e!2010407))))

(declare-datatypes ((List!36425 0))(
  ( (Nil!36301) (Cons!36301 (h!41721 Token!9872) (t!240670 List!36425)) )
))
(declare-fun tokens!494 () List!36425)

(declare-fun lambda!118014 () Int)

(declare-fun forall!7435 (List!36425 Int) Bool)

(assert (=> b!3223615 (= res!1312922 (forall!7435 tokens!494 lambda!118014))))

(declare-fun b!3223616 () Bool)

(declare-fun res!1312926 () Bool)

(assert (=> b!3223616 (=> (not res!1312926) (not e!2010407))))

(assert (=> b!3223616 (= res!1312926 (and (not (is-Nil!36301 tokens!494)) (is-Nil!36301 (t!240670 tokens!494))))))

(declare-fun b!3223617 () Bool)

(declare-fun res!1312923 () Bool)

(assert (=> b!3223617 (=> (not res!1312923) (not e!2010407))))

(declare-datatypes ((LexerInterface!4842 0))(
  ( (LexerInterfaceExt!4839 (__x!23184 Int)) (Lexer!4840) )
))
(declare-fun thiss!18206 () LexerInterface!4842)

(declare-fun rulesProduceIndividualToken!2334 (LexerInterface!4842 List!36424 Token!9872) Bool)

(assert (=> b!3223617 (= res!1312923 (rulesProduceIndividualToken!2334 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2010410 () Bool)

(declare-fun b!3223618 () Bool)

(declare-fun tp!1015479 () Bool)

(assert (=> b!3223618 (= e!2010422 (and tp!1015479 (inv!49164 (tag!5785 (rule!7711 separatorToken!241))) (inv!49167 (transformation!5253 (rule!7711 separatorToken!241))) e!2010410))))

(declare-fun e!2010418 () Bool)

(declare-fun b!3223619 () Bool)

(declare-fun tp!1015481 () Bool)

(declare-fun e!2010413 () Bool)

(declare-fun inv!49168 (Token!9872) Bool)

(assert (=> b!3223619 (= e!2010413 (and (inv!49168 (h!41721 tokens!494)) e!2010418 tp!1015481))))

(assert (=> b!3223620 (= e!2010410 (and tp!1015480 tp!1015474))))

(declare-fun b!3223622 () Bool)

(declare-fun tp!1015469 () Bool)

(declare-fun e!2010421 () Bool)

(assert (=> b!3223622 (= e!2010421 (and tp!1015469 (inv!49164 (tag!5785 (rule!7711 (h!41721 tokens!494)))) (inv!49167 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) e!2010417))))

(declare-fun tp!1015476 () Bool)

(declare-fun b!3223623 () Bool)

(assert (=> b!3223623 (= e!2010418 (and (inv!21 (value!170172 (h!41721 tokens!494))) e!2010421 tp!1015476))))

(declare-fun lt!1093703 () BalanceConc!21376)

(declare-fun b!3223621 () Bool)

(declare-fun list!12930 (BalanceConc!21376) List!36423)

(declare-fun printList!1392 (LexerInterface!4842 List!36425) List!36423)

(assert (=> b!3223621 (= e!2010407 (not (= (list!12930 lt!1093703) (printList!1392 thiss!18206 (Cons!36301 (h!41721 tokens!494) Nil!36301)))))))

(declare-datatypes ((IArray!21769 0))(
  ( (IArray!21770 (innerList!10942 List!36425)) )
))
(declare-datatypes ((Conc!10882 0))(
  ( (Node!10882 (left!28263 Conc!10882) (right!28593 Conc!10882) (csize!21994 Int) (cheight!11093 Int)) (Leaf!17120 (xs!14000 IArray!21769) (csize!21995 Int)) (Empty!10882) )
))
(declare-datatypes ((BalanceConc!21378 0))(
  ( (BalanceConc!21379 (c!541838 Conc!10882)) )
))
(declare-fun lt!1093704 () BalanceConc!21378)

(declare-fun printTailRec!1339 (LexerInterface!4842 BalanceConc!21378 Int BalanceConc!21376) BalanceConc!21376)

(assert (=> b!3223621 (= lt!1093703 (printTailRec!1339 thiss!18206 lt!1093704 0 (BalanceConc!21377 Empty!10881)))))

(declare-fun print!1907 (LexerInterface!4842 BalanceConc!21378) BalanceConc!21376)

(assert (=> b!3223621 (= lt!1093703 (print!1907 thiss!18206 lt!1093704))))

(declare-fun singletonSeq!2349 (Token!9872) BalanceConc!21378)

(assert (=> b!3223621 (= lt!1093704 (singletonSeq!2349 (h!41721 tokens!494)))))

(declare-fun res!1312925 () Bool)

(assert (=> start!302652 (=> (not res!1312925) (not e!2010407))))

(assert (=> start!302652 (= res!1312925 (is-Lexer!4840 thiss!18206))))

(assert (=> start!302652 e!2010407))

(assert (=> start!302652 true))

(declare-fun e!2010408 () Bool)

(assert (=> start!302652 e!2010408))

(assert (=> start!302652 e!2010413))

(assert (=> start!302652 (and (inv!49168 separatorToken!241) e!2010409)))

(declare-fun b!3223624 () Bool)

(declare-fun res!1312927 () Bool)

(assert (=> b!3223624 (=> (not res!1312927) (not e!2010407))))

(declare-fun rulesProduceEachTokenIndividually!1293 (LexerInterface!4842 List!36424 BalanceConc!21378) Bool)

(declare-fun seqFromList!3577 (List!36425) BalanceConc!21378)

(assert (=> b!3223624 (= res!1312927 (rulesProduceEachTokenIndividually!1293 thiss!18206 rules!2135 (seqFromList!3577 tokens!494)))))

(declare-fun b!3223625 () Bool)

(declare-fun tp!1015470 () Bool)

(assert (=> b!3223625 (= e!2010408 (and e!2010414 tp!1015470))))

(declare-fun b!3223626 () Bool)

(declare-fun res!1312921 () Bool)

(assert (=> b!3223626 (=> (not res!1312921) (not e!2010407))))

(declare-fun rulesInvariant!4239 (LexerInterface!4842 List!36424) Bool)

(assert (=> b!3223626 (= res!1312921 (rulesInvariant!4239 thiss!18206 rules!2135))))

(declare-fun b!3223627 () Bool)

(declare-fun res!1312929 () Bool)

(assert (=> b!3223627 (=> (not res!1312929) (not e!2010407))))

(assert (=> b!3223627 (= res!1312929 (isSeparator!5253 (rule!7711 separatorToken!241)))))

(declare-fun b!3223628 () Bool)

(declare-fun res!1312928 () Bool)

(assert (=> b!3223628 (=> (not res!1312928) (not e!2010407))))

(declare-fun isEmpty!20386 (List!36424) Bool)

(assert (=> b!3223628 (= res!1312928 (not (isEmpty!20386 rules!2135)))))

(declare-fun b!3223629 () Bool)

(declare-fun res!1312924 () Bool)

(assert (=> b!3223629 (=> (not res!1312924) (not e!2010407))))

(declare-fun sepAndNonSepRulesDisjointChars!1447 (List!36424 List!36424) Bool)

(assert (=> b!3223629 (= res!1312924 (sepAndNonSepRulesDisjointChars!1447 rules!2135 rules!2135))))

(assert (= (and start!302652 res!1312925) b!3223628))

(assert (= (and b!3223628 res!1312928) b!3223626))

(assert (= (and b!3223626 res!1312921) b!3223624))

(assert (= (and b!3223624 res!1312927) b!3223617))

(assert (= (and b!3223617 res!1312923) b!3223627))

(assert (= (and b!3223627 res!1312929) b!3223615))

(assert (= (and b!3223615 res!1312922) b!3223629))

(assert (= (and b!3223629 res!1312924) b!3223616))

(assert (= (and b!3223616 res!1312926) b!3223621))

(assert (= b!3223612 b!3223614))

(assert (= b!3223625 b!3223612))

(assert (= (and start!302652 (is-Cons!36300 rules!2135)) b!3223625))

(assert (= b!3223622 b!3223611))

(assert (= b!3223623 b!3223622))

(assert (= b!3223619 b!3223623))

(assert (= (and start!302652 (is-Cons!36301 tokens!494)) b!3223619))

(assert (= b!3223618 b!3223620))

(assert (= b!3223613 b!3223618))

(assert (= start!302652 b!3223613))

(declare-fun m!3501719 () Bool)

(assert (=> b!3223621 m!3501719))

(declare-fun m!3501721 () Bool)

(assert (=> b!3223621 m!3501721))

(declare-fun m!3501723 () Bool)

(assert (=> b!3223621 m!3501723))

(declare-fun m!3501725 () Bool)

(assert (=> b!3223621 m!3501725))

(declare-fun m!3501727 () Bool)

(assert (=> b!3223621 m!3501727))

(declare-fun m!3501729 () Bool)

(assert (=> b!3223623 m!3501729))

(declare-fun m!3501731 () Bool)

(assert (=> b!3223619 m!3501731))

(declare-fun m!3501733 () Bool)

(assert (=> b!3223626 m!3501733))

(declare-fun m!3501735 () Bool)

(assert (=> b!3223612 m!3501735))

(declare-fun m!3501737 () Bool)

(assert (=> b!3223612 m!3501737))

(declare-fun m!3501739 () Bool)

(assert (=> b!3223617 m!3501739))

(declare-fun m!3501741 () Bool)

(assert (=> start!302652 m!3501741))

(declare-fun m!3501743 () Bool)

(assert (=> b!3223615 m!3501743))

(declare-fun m!3501745 () Bool)

(assert (=> b!3223613 m!3501745))

(declare-fun m!3501747 () Bool)

(assert (=> b!3223618 m!3501747))

(declare-fun m!3501749 () Bool)

(assert (=> b!3223618 m!3501749))

(declare-fun m!3501751 () Bool)

(assert (=> b!3223622 m!3501751))

(declare-fun m!3501753 () Bool)

(assert (=> b!3223622 m!3501753))

(declare-fun m!3501755 () Bool)

(assert (=> b!3223624 m!3501755))

(assert (=> b!3223624 m!3501755))

(declare-fun m!3501757 () Bool)

(assert (=> b!3223624 m!3501757))

(declare-fun m!3501759 () Bool)

(assert (=> b!3223628 m!3501759))

(declare-fun m!3501761 () Bool)

(assert (=> b!3223629 m!3501761))

(push 1)

(assert (not b!3223628))

(assert (not b!3223617))

(assert (not b!3223612))

(assert b_and!215557)

(assert b_and!215547)

(assert (not b!3223623))

(assert (not b_next!86559))

(assert (not b_next!86555))

(assert (not b!3223615))

(assert (not b!3223613))

(assert b_and!215549)

(assert b_and!215551)

(assert b_and!215555)

(assert (not b_next!86549))

(assert (not b!3223624))

(assert (not b!3223618))

(assert (not b!3223625))

(assert (not b!3223629))

(assert (not b_next!86557))

(assert (not b!3223621))

(assert b_and!215553)

(assert (not b_next!86553))

(assert (not b_next!86551))

(assert (not b!3223622))

(assert (not start!302652))

(assert (not b!3223626))

(assert (not b!3223619))

(check-sat)

(pop 1)

(push 1)

(assert b_and!215557)

(assert b_and!215547)

(assert (not b_next!86557))

(assert (not b_next!86559))

(assert (not b_next!86555))

(assert b_and!215553)

(assert b_and!215549)

(assert b_and!215551)

(assert b_and!215555)

(assert (not b_next!86549))

(assert (not b_next!86553))

(assert (not b_next!86551))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!542642 () Bool)

(declare-fun d!884788 () Bool)

(assert (= bs!542642 (and d!884788 b!3223615)))

(declare-fun lambda!118022 () Int)

(assert (=> bs!542642 (not (= lambda!118022 lambda!118014))))

(declare-fun b!3223723 () Bool)

(declare-fun e!2010497 () Bool)

(assert (=> b!3223723 (= e!2010497 true)))

(declare-fun b!3223722 () Bool)

(declare-fun e!2010496 () Bool)

(assert (=> b!3223722 (= e!2010496 e!2010497)))

(declare-fun b!3223721 () Bool)

(declare-fun e!2010495 () Bool)

(assert (=> b!3223721 (= e!2010495 e!2010496)))

(assert (=> d!884788 e!2010495))

(assert (= b!3223722 b!3223723))

(assert (= b!3223721 b!3223722))

(assert (= (and d!884788 (is-Cons!36300 rules!2135)) b!3223721))

(declare-fun order!18673 () Int)

(declare-fun order!18671 () Int)

(declare-fun dynLambda!14724 (Int Int) Int)

(declare-fun dynLambda!14725 (Int Int) Int)

(assert (=> b!3223723 (< (dynLambda!14724 order!18671 (toValue!7349 (transformation!5253 (h!41720 rules!2135)))) (dynLambda!14725 order!18673 lambda!118022))))

(declare-fun order!18675 () Int)

(declare-fun dynLambda!14726 (Int Int) Int)

(assert (=> b!3223723 (< (dynLambda!14726 order!18675 (toChars!7208 (transformation!5253 (h!41720 rules!2135)))) (dynLambda!14725 order!18673 lambda!118022))))

(assert (=> d!884788 true))

(declare-fun e!2010488 () Bool)

(assert (=> d!884788 e!2010488))

(declare-fun res!1312974 () Bool)

(assert (=> d!884788 (=> (not res!1312974) (not e!2010488))))

(declare-fun lt!1093715 () Bool)

(declare-fun list!12932 (BalanceConc!21378) List!36425)

(assert (=> d!884788 (= res!1312974 (= lt!1093715 (forall!7435 (list!12932 (seqFromList!3577 tokens!494)) lambda!118022)))))

(declare-fun forall!7437 (BalanceConc!21378 Int) Bool)

(assert (=> d!884788 (= lt!1093715 (forall!7437 (seqFromList!3577 tokens!494) lambda!118022))))

(assert (=> d!884788 (not (isEmpty!20386 rules!2135))))

(assert (=> d!884788 (= (rulesProduceEachTokenIndividually!1293 thiss!18206 rules!2135 (seqFromList!3577 tokens!494)) lt!1093715)))

(declare-fun b!3223712 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1732 (LexerInterface!4842 List!36424 List!36425) Bool)

(assert (=> b!3223712 (= e!2010488 (= lt!1093715 (rulesProduceEachTokenIndividuallyList!1732 thiss!18206 rules!2135 (list!12932 (seqFromList!3577 tokens!494)))))))

(assert (= (and d!884788 res!1312974) b!3223712))

(assert (=> d!884788 m!3501755))

(declare-fun m!3501823 () Bool)

(assert (=> d!884788 m!3501823))

(assert (=> d!884788 m!3501823))

(declare-fun m!3501825 () Bool)

(assert (=> d!884788 m!3501825))

(assert (=> d!884788 m!3501755))

(declare-fun m!3501827 () Bool)

(assert (=> d!884788 m!3501827))

(assert (=> d!884788 m!3501759))

(assert (=> b!3223712 m!3501755))

(assert (=> b!3223712 m!3501823))

(assert (=> b!3223712 m!3501823))

(declare-fun m!3501829 () Bool)

(assert (=> b!3223712 m!3501829))

(assert (=> b!3223624 d!884788))

(declare-fun d!884802 () Bool)

(declare-fun fromListB!1551 (List!36425) BalanceConc!21378)

(assert (=> d!884802 (= (seqFromList!3577 tokens!494) (fromListB!1551 tokens!494))))

(declare-fun bs!542643 () Bool)

(assert (= bs!542643 d!884802))

(declare-fun m!3501831 () Bool)

(assert (=> bs!542643 m!3501831))

(assert (=> b!3223624 d!884802))

(declare-fun b!3223736 () Bool)

(declare-fun e!2010506 () Bool)

(declare-fun e!2010504 () Bool)

(assert (=> b!3223736 (= e!2010506 e!2010504)))

(declare-fun c!541855 () Bool)

(assert (=> b!3223736 (= c!541855 (is-IntegerValue!16450 (value!170172 separatorToken!241)))))

(declare-fun b!3223737 () Bool)

(declare-fun inv!17 (TokenValue!5483) Bool)

(assert (=> b!3223737 (= e!2010504 (inv!17 (value!170172 separatorToken!241)))))

(declare-fun b!3223738 () Bool)

(declare-fun e!2010505 () Bool)

(declare-fun inv!15 (TokenValue!5483) Bool)

(assert (=> b!3223738 (= e!2010505 (inv!15 (value!170172 separatorToken!241)))))

(declare-fun b!3223740 () Bool)

(declare-fun inv!16 (TokenValue!5483) Bool)

(assert (=> b!3223740 (= e!2010506 (inv!16 (value!170172 separatorToken!241)))))

(declare-fun b!3223739 () Bool)

(declare-fun res!1312977 () Bool)

(assert (=> b!3223739 (=> res!1312977 e!2010505)))

(assert (=> b!3223739 (= res!1312977 (not (is-IntegerValue!16451 (value!170172 separatorToken!241))))))

(assert (=> b!3223739 (= e!2010504 e!2010505)))

(declare-fun d!884804 () Bool)

(declare-fun c!541856 () Bool)

(assert (=> d!884804 (= c!541856 (is-IntegerValue!16449 (value!170172 separatorToken!241)))))

(assert (=> d!884804 (= (inv!21 (value!170172 separatorToken!241)) e!2010506)))

(assert (= (and d!884804 c!541856) b!3223740))

(assert (= (and d!884804 (not c!541856)) b!3223736))

(assert (= (and b!3223736 c!541855) b!3223737))

(assert (= (and b!3223736 (not c!541855)) b!3223739))

(assert (= (and b!3223739 (not res!1312977)) b!3223738))

(declare-fun m!3501833 () Bool)

(assert (=> b!3223737 m!3501833))

(declare-fun m!3501835 () Bool)

(assert (=> b!3223738 m!3501835))

(declare-fun m!3501837 () Bool)

(assert (=> b!3223740 m!3501837))

(assert (=> b!3223613 d!884804))

(declare-fun b!3223741 () Bool)

(declare-fun e!2010509 () Bool)

(declare-fun e!2010507 () Bool)

(assert (=> b!3223741 (= e!2010509 e!2010507)))

(declare-fun c!541857 () Bool)

(assert (=> b!3223741 (= c!541857 (is-IntegerValue!16450 (value!170172 (h!41721 tokens!494))))))

(declare-fun b!3223742 () Bool)

(assert (=> b!3223742 (= e!2010507 (inv!17 (value!170172 (h!41721 tokens!494))))))

(declare-fun b!3223743 () Bool)

(declare-fun e!2010508 () Bool)

(assert (=> b!3223743 (= e!2010508 (inv!15 (value!170172 (h!41721 tokens!494))))))

(declare-fun b!3223745 () Bool)

(assert (=> b!3223745 (= e!2010509 (inv!16 (value!170172 (h!41721 tokens!494))))))

(declare-fun b!3223744 () Bool)

(declare-fun res!1312978 () Bool)

(assert (=> b!3223744 (=> res!1312978 e!2010508)))

(assert (=> b!3223744 (= res!1312978 (not (is-IntegerValue!16451 (value!170172 (h!41721 tokens!494)))))))

(assert (=> b!3223744 (= e!2010507 e!2010508)))

(declare-fun d!884806 () Bool)

(declare-fun c!541858 () Bool)

(assert (=> d!884806 (= c!541858 (is-IntegerValue!16449 (value!170172 (h!41721 tokens!494))))))

(assert (=> d!884806 (= (inv!21 (value!170172 (h!41721 tokens!494))) e!2010509)))

(assert (= (and d!884806 c!541858) b!3223745))

(assert (= (and d!884806 (not c!541858)) b!3223741))

(assert (= (and b!3223741 c!541857) b!3223742))

(assert (= (and b!3223741 (not c!541857)) b!3223744))

(assert (= (and b!3223744 (not res!1312978)) b!3223743))

(declare-fun m!3501839 () Bool)

(assert (=> b!3223742 m!3501839))

(declare-fun m!3501841 () Bool)

(assert (=> b!3223743 m!3501841))

(declare-fun m!3501843 () Bool)

(assert (=> b!3223745 m!3501843))

(assert (=> b!3223623 d!884806))

(declare-fun d!884808 () Bool)

(assert (=> d!884808 (= (isEmpty!20386 rules!2135) (is-Nil!36300 rules!2135))))

(assert (=> b!3223628 d!884808))

(declare-fun d!884810 () Bool)

(declare-fun lt!1093721 () Bool)

(declare-fun e!2010514 () Bool)

(assert (=> d!884810 (= lt!1093721 e!2010514)))

(declare-fun res!1312987 () Bool)

(assert (=> d!884810 (=> (not res!1312987) (not e!2010514))))

(declare-datatypes ((tuple2!35742 0))(
  ( (tuple2!35743 (_1!21005 BalanceConc!21378) (_2!21005 BalanceConc!21376)) )
))
(declare-fun lex!2172 (LexerInterface!4842 List!36424 BalanceConc!21376) tuple2!35742)

(assert (=> d!884810 (= res!1312987 (= (list!12932 (_1!21005 (lex!2172 thiss!18206 rules!2135 (print!1907 thiss!18206 (singletonSeq!2349 separatorToken!241))))) (list!12932 (singletonSeq!2349 separatorToken!241))))))

(declare-fun e!2010515 () Bool)

(assert (=> d!884810 (= lt!1093721 e!2010515)))

(declare-fun res!1312986 () Bool)

(assert (=> d!884810 (=> (not res!1312986) (not e!2010515))))

(declare-fun lt!1093720 () tuple2!35742)

(declare-fun size!27372 (BalanceConc!21378) Int)

(assert (=> d!884810 (= res!1312986 (= (size!27372 (_1!21005 lt!1093720)) 1))))

(assert (=> d!884810 (= lt!1093720 (lex!2172 thiss!18206 rules!2135 (print!1907 thiss!18206 (singletonSeq!2349 separatorToken!241))))))

(assert (=> d!884810 (not (isEmpty!20386 rules!2135))))

(assert (=> d!884810 (= (rulesProduceIndividualToken!2334 thiss!18206 rules!2135 separatorToken!241) lt!1093721)))

(declare-fun b!3223752 () Bool)

(declare-fun res!1312985 () Bool)

(assert (=> b!3223752 (=> (not res!1312985) (not e!2010515))))

(declare-fun apply!8273 (BalanceConc!21378 Int) Token!9872)

(assert (=> b!3223752 (= res!1312985 (= (apply!8273 (_1!21005 lt!1093720) 0) separatorToken!241))))

(declare-fun b!3223753 () Bool)

(declare-fun isEmpty!20388 (BalanceConc!21376) Bool)

(assert (=> b!3223753 (= e!2010515 (isEmpty!20388 (_2!21005 lt!1093720)))))

(declare-fun b!3223754 () Bool)

(assert (=> b!3223754 (= e!2010514 (isEmpty!20388 (_2!21005 (lex!2172 thiss!18206 rules!2135 (print!1907 thiss!18206 (singletonSeq!2349 separatorToken!241))))))))

(assert (= (and d!884810 res!1312986) b!3223752))

(assert (= (and b!3223752 res!1312985) b!3223753))

(assert (= (and d!884810 res!1312987) b!3223754))

(declare-fun m!3501845 () Bool)

(assert (=> d!884810 m!3501845))

(declare-fun m!3501847 () Bool)

(assert (=> d!884810 m!3501847))

(assert (=> d!884810 m!3501759))

(declare-fun m!3501849 () Bool)

(assert (=> d!884810 m!3501849))

(assert (=> d!884810 m!3501847))

(declare-fun m!3501851 () Bool)

(assert (=> d!884810 m!3501851))

(assert (=> d!884810 m!3501845))

(declare-fun m!3501853 () Bool)

(assert (=> d!884810 m!3501853))

(assert (=> d!884810 m!3501845))

(declare-fun m!3501855 () Bool)

(assert (=> d!884810 m!3501855))

(declare-fun m!3501857 () Bool)

(assert (=> b!3223752 m!3501857))

(declare-fun m!3501859 () Bool)

(assert (=> b!3223753 m!3501859))

(assert (=> b!3223754 m!3501845))

(assert (=> b!3223754 m!3501845))

(assert (=> b!3223754 m!3501847))

(assert (=> b!3223754 m!3501847))

(assert (=> b!3223754 m!3501851))

(declare-fun m!3501861 () Bool)

(assert (=> b!3223754 m!3501861))

(assert (=> b!3223617 d!884810))

(declare-fun d!884812 () Bool)

(declare-fun res!1312990 () Bool)

(declare-fun e!2010518 () Bool)

(assert (=> d!884812 (=> (not res!1312990) (not e!2010518))))

(declare-fun rulesValid!1920 (LexerInterface!4842 List!36424) Bool)

(assert (=> d!884812 (= res!1312990 (rulesValid!1920 thiss!18206 rules!2135))))

(assert (=> d!884812 (= (rulesInvariant!4239 thiss!18206 rules!2135) e!2010518)))

(declare-fun b!3223757 () Bool)

(declare-datatypes ((List!36430 0))(
  ( (Nil!36306) (Cons!36306 (h!41726 String!40751) (t!240711 List!36430)) )
))
(declare-fun noDuplicateTag!1916 (LexerInterface!4842 List!36424 List!36430) Bool)

(assert (=> b!3223757 (= e!2010518 (noDuplicateTag!1916 thiss!18206 rules!2135 Nil!36306))))

(assert (= (and d!884812 res!1312990) b!3223757))

(declare-fun m!3501863 () Bool)

(assert (=> d!884812 m!3501863))

(declare-fun m!3501865 () Bool)

(assert (=> b!3223757 m!3501865))

(assert (=> b!3223626 d!884812))

(declare-fun d!884814 () Bool)

(declare-fun res!1312995 () Bool)

(declare-fun e!2010523 () Bool)

(assert (=> d!884814 (=> res!1312995 e!2010523)))

(assert (=> d!884814 (= res!1312995 (is-Nil!36301 tokens!494))))

(assert (=> d!884814 (= (forall!7435 tokens!494 lambda!118014) e!2010523)))

(declare-fun b!3223762 () Bool)

(declare-fun e!2010524 () Bool)

(assert (=> b!3223762 (= e!2010523 e!2010524)))

(declare-fun res!1312996 () Bool)

(assert (=> b!3223762 (=> (not res!1312996) (not e!2010524))))

(declare-fun dynLambda!14727 (Int Token!9872) Bool)

(assert (=> b!3223762 (= res!1312996 (dynLambda!14727 lambda!118014 (h!41721 tokens!494)))))

(declare-fun b!3223763 () Bool)

(assert (=> b!3223763 (= e!2010524 (forall!7435 (t!240670 tokens!494) lambda!118014))))

(assert (= (and d!884814 (not res!1312995)) b!3223762))

(assert (= (and b!3223762 res!1312996) b!3223763))

(declare-fun b_lambda!88619 () Bool)

(assert (=> (not b_lambda!88619) (not b!3223762)))

(declare-fun m!3501867 () Bool)

(assert (=> b!3223762 m!3501867))

(declare-fun m!3501869 () Bool)

(assert (=> b!3223763 m!3501869))

(assert (=> b!3223615 d!884814))

(declare-fun d!884816 () Bool)

(declare-fun res!1313001 () Bool)

(declare-fun e!2010527 () Bool)

(assert (=> d!884816 (=> (not res!1313001) (not e!2010527))))

(declare-fun isEmpty!20389 (List!36423) Bool)

(assert (=> d!884816 (= res!1313001 (not (isEmpty!20389 (originalCharacters!5967 (h!41721 tokens!494)))))))

(assert (=> d!884816 (= (inv!49168 (h!41721 tokens!494)) e!2010527)))

(declare-fun b!3223768 () Bool)

(declare-fun res!1313002 () Bool)

(assert (=> b!3223768 (=> (not res!1313002) (not e!2010527))))

(declare-fun dynLambda!14728 (Int TokenValue!5483) BalanceConc!21376)

(assert (=> b!3223768 (= res!1313002 (= (originalCharacters!5967 (h!41721 tokens!494)) (list!12930 (dynLambda!14728 (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) (value!170172 (h!41721 tokens!494))))))))

(declare-fun b!3223769 () Bool)

(declare-fun size!27373 (List!36423) Int)

(assert (=> b!3223769 (= e!2010527 (= (size!27370 (h!41721 tokens!494)) (size!27373 (originalCharacters!5967 (h!41721 tokens!494)))))))

(assert (= (and d!884816 res!1313001) b!3223768))

(assert (= (and b!3223768 res!1313002) b!3223769))

(declare-fun b_lambda!88621 () Bool)

(assert (=> (not b_lambda!88621) (not b!3223768)))

(declare-fun t!240683 () Bool)

(declare-fun tb!159335 () Bool)

(assert (=> (and b!3223611 (= (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494))))) t!240683) tb!159335))

(declare-fun b!3223774 () Bool)

(declare-fun e!2010530 () Bool)

(declare-fun tp!1015523 () Bool)

(declare-fun inv!49171 (Conc!10881) Bool)

(assert (=> b!3223774 (= e!2010530 (and (inv!49171 (c!541837 (dynLambda!14728 (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) (value!170172 (h!41721 tokens!494))))) tp!1015523))))

(declare-fun result!201760 () Bool)

(declare-fun inv!49172 (BalanceConc!21376) Bool)

(assert (=> tb!159335 (= result!201760 (and (inv!49172 (dynLambda!14728 (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) (value!170172 (h!41721 tokens!494)))) e!2010530))))

(assert (= tb!159335 b!3223774))

(declare-fun m!3501871 () Bool)

(assert (=> b!3223774 m!3501871))

(declare-fun m!3501873 () Bool)

(assert (=> tb!159335 m!3501873))

(assert (=> b!3223768 t!240683))

(declare-fun b_and!215571 () Bool)

(assert (= b_and!215549 (and (=> t!240683 result!201760) b_and!215571)))

(declare-fun tb!159337 () Bool)

(declare-fun t!240685 () Bool)

(assert (=> (and b!3223614 (= (toChars!7208 (transformation!5253 (h!41720 rules!2135))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494))))) t!240685) tb!159337))

(declare-fun result!201764 () Bool)

(assert (= result!201764 result!201760))

(assert (=> b!3223768 t!240685))

(declare-fun b_and!215573 () Bool)

(assert (= b_and!215553 (and (=> t!240685 result!201764) b_and!215573)))

(declare-fun t!240687 () Bool)

(declare-fun tb!159339 () Bool)

(assert (=> (and b!3223620 (= (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494))))) t!240687) tb!159339))

(declare-fun result!201766 () Bool)

(assert (= result!201766 result!201760))

(assert (=> b!3223768 t!240687))

(declare-fun b_and!215575 () Bool)

(assert (= b_and!215557 (and (=> t!240687 result!201766) b_and!215575)))

(declare-fun m!3501875 () Bool)

(assert (=> d!884816 m!3501875))

(declare-fun m!3501877 () Bool)

(assert (=> b!3223768 m!3501877))

(assert (=> b!3223768 m!3501877))

(declare-fun m!3501879 () Bool)

(assert (=> b!3223768 m!3501879))

(declare-fun m!3501881 () Bool)

(assert (=> b!3223769 m!3501881))

(assert (=> b!3223619 d!884816))

(declare-fun d!884818 () Bool)

(declare-fun res!1313007 () Bool)

(declare-fun e!2010535 () Bool)

(assert (=> d!884818 (=> res!1313007 e!2010535)))

(assert (=> d!884818 (= res!1313007 (not (is-Cons!36300 rules!2135)))))

(assert (=> d!884818 (= (sepAndNonSepRulesDisjointChars!1447 rules!2135 rules!2135) e!2010535)))

(declare-fun b!3223779 () Bool)

(declare-fun e!2010536 () Bool)

(assert (=> b!3223779 (= e!2010535 e!2010536)))

(declare-fun res!1313008 () Bool)

(assert (=> b!3223779 (=> (not res!1313008) (not e!2010536))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!596 (Rule!10306 List!36424) Bool)

(assert (=> b!3223779 (= res!1313008 (ruleDisjointCharsFromAllFromOtherType!596 (h!41720 rules!2135) rules!2135))))

(declare-fun b!3223780 () Bool)

(assert (=> b!3223780 (= e!2010536 (sepAndNonSepRulesDisjointChars!1447 rules!2135 (t!240669 rules!2135)))))

(assert (= (and d!884818 (not res!1313007)) b!3223779))

(assert (= (and b!3223779 res!1313008) b!3223780))

(declare-fun m!3501883 () Bool)

(assert (=> b!3223779 m!3501883))

(declare-fun m!3501885 () Bool)

(assert (=> b!3223780 m!3501885))

(assert (=> b!3223629 d!884818))

(declare-fun d!884820 () Bool)

(assert (=> d!884820 (= (inv!49164 (tag!5785 (rule!7711 separatorToken!241))) (= (mod (str.len (value!170171 (tag!5785 (rule!7711 separatorToken!241)))) 2) 0))))

(assert (=> b!3223618 d!884820))

(declare-fun d!884822 () Bool)

(declare-fun res!1313011 () Bool)

(declare-fun e!2010539 () Bool)

(assert (=> d!884822 (=> (not res!1313011) (not e!2010539))))

(declare-fun semiInverseModEq!2160 (Int Int) Bool)

(assert (=> d!884822 (= res!1313011 (semiInverseModEq!2160 (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))) (toValue!7349 (transformation!5253 (rule!7711 separatorToken!241)))))))

(assert (=> d!884822 (= (inv!49167 (transformation!5253 (rule!7711 separatorToken!241))) e!2010539)))

(declare-fun b!3223783 () Bool)

(declare-fun equivClasses!2059 (Int Int) Bool)

(assert (=> b!3223783 (= e!2010539 (equivClasses!2059 (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))) (toValue!7349 (transformation!5253 (rule!7711 separatorToken!241)))))))

(assert (= (and d!884822 res!1313011) b!3223783))

(declare-fun m!3501887 () Bool)

(assert (=> d!884822 m!3501887))

(declare-fun m!3501889 () Bool)

(assert (=> b!3223783 m!3501889))

(assert (=> b!3223618 d!884822))

(declare-fun d!884824 () Bool)

(assert (=> d!884824 (= (inv!49164 (tag!5785 (h!41720 rules!2135))) (= (mod (str.len (value!170171 (tag!5785 (h!41720 rules!2135)))) 2) 0))))

(assert (=> b!3223612 d!884824))

(declare-fun d!884826 () Bool)

(declare-fun res!1313012 () Bool)

(declare-fun e!2010540 () Bool)

(assert (=> d!884826 (=> (not res!1313012) (not e!2010540))))

(assert (=> d!884826 (= res!1313012 (semiInverseModEq!2160 (toChars!7208 (transformation!5253 (h!41720 rules!2135))) (toValue!7349 (transformation!5253 (h!41720 rules!2135)))))))

(assert (=> d!884826 (= (inv!49167 (transformation!5253 (h!41720 rules!2135))) e!2010540)))

(declare-fun b!3223784 () Bool)

(assert (=> b!3223784 (= e!2010540 (equivClasses!2059 (toChars!7208 (transformation!5253 (h!41720 rules!2135))) (toValue!7349 (transformation!5253 (h!41720 rules!2135)))))))

(assert (= (and d!884826 res!1313012) b!3223784))

(declare-fun m!3501891 () Bool)

(assert (=> d!884826 m!3501891))

(declare-fun m!3501893 () Bool)

(assert (=> b!3223784 m!3501893))

(assert (=> b!3223612 d!884826))

(declare-fun d!884828 () Bool)

(declare-fun res!1313013 () Bool)

(declare-fun e!2010541 () Bool)

(assert (=> d!884828 (=> (not res!1313013) (not e!2010541))))

(assert (=> d!884828 (= res!1313013 (not (isEmpty!20389 (originalCharacters!5967 separatorToken!241))))))

(assert (=> d!884828 (= (inv!49168 separatorToken!241) e!2010541)))

(declare-fun b!3223785 () Bool)

(declare-fun res!1313014 () Bool)

(assert (=> b!3223785 (=> (not res!1313014) (not e!2010541))))

(assert (=> b!3223785 (= res!1313014 (= (originalCharacters!5967 separatorToken!241) (list!12930 (dynLambda!14728 (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))) (value!170172 separatorToken!241)))))))

(declare-fun b!3223786 () Bool)

(assert (=> b!3223786 (= e!2010541 (= (size!27370 separatorToken!241) (size!27373 (originalCharacters!5967 separatorToken!241))))))

(assert (= (and d!884828 res!1313013) b!3223785))

(assert (= (and b!3223785 res!1313014) b!3223786))

(declare-fun b_lambda!88623 () Bool)

(assert (=> (not b_lambda!88623) (not b!3223785)))

(declare-fun tb!159341 () Bool)

(declare-fun t!240689 () Bool)

(assert (=> (and b!3223611 (= (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241)))) t!240689) tb!159341))

(declare-fun b!3223787 () Bool)

(declare-fun e!2010542 () Bool)

(declare-fun tp!1015524 () Bool)

(assert (=> b!3223787 (= e!2010542 (and (inv!49171 (c!541837 (dynLambda!14728 (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))) (value!170172 separatorToken!241)))) tp!1015524))))

(declare-fun result!201768 () Bool)

(assert (=> tb!159341 (= result!201768 (and (inv!49172 (dynLambda!14728 (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))) (value!170172 separatorToken!241))) e!2010542))))

(assert (= tb!159341 b!3223787))

(declare-fun m!3501895 () Bool)

(assert (=> b!3223787 m!3501895))

(declare-fun m!3501897 () Bool)

(assert (=> tb!159341 m!3501897))

(assert (=> b!3223785 t!240689))

(declare-fun b_and!215577 () Bool)

(assert (= b_and!215571 (and (=> t!240689 result!201768) b_and!215577)))

(declare-fun tb!159343 () Bool)

(declare-fun t!240691 () Bool)

(assert (=> (and b!3223614 (= (toChars!7208 (transformation!5253 (h!41720 rules!2135))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241)))) t!240691) tb!159343))

(declare-fun result!201770 () Bool)

(assert (= result!201770 result!201768))

(assert (=> b!3223785 t!240691))

(declare-fun b_and!215579 () Bool)

(assert (= b_and!215573 (and (=> t!240691 result!201770) b_and!215579)))

(declare-fun t!240693 () Bool)

(declare-fun tb!159345 () Bool)

(assert (=> (and b!3223620 (= (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241)))) t!240693) tb!159345))

(declare-fun result!201772 () Bool)

(assert (= result!201772 result!201768))

(assert (=> b!3223785 t!240693))

(declare-fun b_and!215581 () Bool)

(assert (= b_and!215575 (and (=> t!240693 result!201772) b_and!215581)))

(declare-fun m!3501899 () Bool)

(assert (=> d!884828 m!3501899))

(declare-fun m!3501901 () Bool)

(assert (=> b!3223785 m!3501901))

(assert (=> b!3223785 m!3501901))

(declare-fun m!3501903 () Bool)

(assert (=> b!3223785 m!3501903))

(declare-fun m!3501905 () Bool)

(assert (=> b!3223786 m!3501905))

(assert (=> start!302652 d!884828))

(declare-fun d!884830 () Bool)

(assert (=> d!884830 (= (inv!49164 (tag!5785 (rule!7711 (h!41721 tokens!494)))) (= (mod (str.len (value!170171 (tag!5785 (rule!7711 (h!41721 tokens!494))))) 2) 0))))

(assert (=> b!3223622 d!884830))

(declare-fun d!884832 () Bool)

(declare-fun res!1313015 () Bool)

(declare-fun e!2010543 () Bool)

(assert (=> d!884832 (=> (not res!1313015) (not e!2010543))))

(assert (=> d!884832 (= res!1313015 (semiInverseModEq!2160 (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) (toValue!7349 (transformation!5253 (rule!7711 (h!41721 tokens!494))))))))

(assert (=> d!884832 (= (inv!49167 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) e!2010543)))

(declare-fun b!3223788 () Bool)

(assert (=> b!3223788 (= e!2010543 (equivClasses!2059 (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) (toValue!7349 (transformation!5253 (rule!7711 (h!41721 tokens!494))))))))

(assert (= (and d!884832 res!1313015) b!3223788))

(declare-fun m!3501907 () Bool)

(assert (=> d!884832 m!3501907))

(declare-fun m!3501909 () Bool)

(assert (=> b!3223788 m!3501909))

(assert (=> b!3223622 d!884832))

(declare-fun d!884834 () Bool)

(declare-fun lt!1093724 () BalanceConc!21376)

(assert (=> d!884834 (= (list!12930 lt!1093724) (printList!1392 thiss!18206 (list!12932 lt!1093704)))))

(assert (=> d!884834 (= lt!1093724 (printTailRec!1339 thiss!18206 lt!1093704 0 (BalanceConc!21377 Empty!10881)))))

(assert (=> d!884834 (= (print!1907 thiss!18206 lt!1093704) lt!1093724)))

(declare-fun bs!542644 () Bool)

(assert (= bs!542644 d!884834))

(declare-fun m!3501911 () Bool)

(assert (=> bs!542644 m!3501911))

(declare-fun m!3501913 () Bool)

(assert (=> bs!542644 m!3501913))

(assert (=> bs!542644 m!3501913))

(declare-fun m!3501915 () Bool)

(assert (=> bs!542644 m!3501915))

(assert (=> bs!542644 m!3501721))

(assert (=> b!3223621 d!884834))

(declare-fun d!884836 () Bool)

(declare-fun lt!1093741 () BalanceConc!21376)

(declare-fun printListTailRec!566 (LexerInterface!4842 List!36425 List!36423) List!36423)

(declare-fun dropList!1083 (BalanceConc!21378 Int) List!36425)

(assert (=> d!884836 (= (list!12930 lt!1093741) (printListTailRec!566 thiss!18206 (dropList!1083 lt!1093704 0) (list!12930 (BalanceConc!21377 Empty!10881))))))

(declare-fun e!2010569 () BalanceConc!21376)

(assert (=> d!884836 (= lt!1093741 e!2010569)))

(declare-fun c!541861 () Bool)

(assert (=> d!884836 (= c!541861 (>= 0 (size!27372 lt!1093704)))))

(declare-fun e!2010570 () Bool)

(assert (=> d!884836 e!2010570))

(declare-fun res!1313030 () Bool)

(assert (=> d!884836 (=> (not res!1313030) (not e!2010570))))

(assert (=> d!884836 (= res!1313030 (>= 0 0))))

(assert (=> d!884836 (= (printTailRec!1339 thiss!18206 lt!1093704 0 (BalanceConc!21377 Empty!10881)) lt!1093741)))

(declare-fun b!3223825 () Bool)

(assert (=> b!3223825 (= e!2010570 (<= 0 (size!27372 lt!1093704)))))

(declare-fun b!3223826 () Bool)

(assert (=> b!3223826 (= e!2010569 (BalanceConc!21377 Empty!10881))))

(declare-fun b!3223827 () Bool)

(declare-fun ++!8727 (BalanceConc!21376 BalanceConc!21376) BalanceConc!21376)

(declare-fun charsOf!3269 (Token!9872) BalanceConc!21376)

(assert (=> b!3223827 (= e!2010569 (printTailRec!1339 thiss!18206 lt!1093704 (+ 0 1) (++!8727 (BalanceConc!21377 Empty!10881) (charsOf!3269 (apply!8273 lt!1093704 0)))))))

(declare-fun lt!1093743 () List!36425)

(assert (=> b!3223827 (= lt!1093743 (list!12932 lt!1093704))))

(declare-datatypes ((Unit!50908 0))(
  ( (Unit!50909) )
))
(declare-fun lt!1093740 () Unit!50908)

(declare-fun lemmaDropApply!1042 (List!36425 Int) Unit!50908)

(assert (=> b!3223827 (= lt!1093740 (lemmaDropApply!1042 lt!1093743 0))))

(declare-fun head!7078 (List!36425) Token!9872)

(declare-fun drop!1866 (List!36425 Int) List!36425)

(declare-fun apply!8274 (List!36425 Int) Token!9872)

(assert (=> b!3223827 (= (head!7078 (drop!1866 lt!1093743 0)) (apply!8274 lt!1093743 0))))

(declare-fun lt!1093744 () Unit!50908)

(assert (=> b!3223827 (= lt!1093744 lt!1093740)))

(declare-fun lt!1093742 () List!36425)

(assert (=> b!3223827 (= lt!1093742 (list!12932 lt!1093704))))

(declare-fun lt!1093746 () Unit!50908)

(declare-fun lemmaDropTail!926 (List!36425 Int) Unit!50908)

(assert (=> b!3223827 (= lt!1093746 (lemmaDropTail!926 lt!1093742 0))))

(declare-fun tail!5222 (List!36425) List!36425)

(assert (=> b!3223827 (= (tail!5222 (drop!1866 lt!1093742 0)) (drop!1866 lt!1093742 (+ 0 1)))))

(declare-fun lt!1093745 () Unit!50908)

(assert (=> b!3223827 (= lt!1093745 lt!1093746)))

(assert (= (and d!884836 res!1313030) b!3223825))

(assert (= (and d!884836 c!541861) b!3223826))

(assert (= (and d!884836 (not c!541861)) b!3223827))

(declare-fun m!3501943 () Bool)

(assert (=> d!884836 m!3501943))

(declare-fun m!3501945 () Bool)

(assert (=> d!884836 m!3501945))

(assert (=> d!884836 m!3501943))

(declare-fun m!3501947 () Bool)

(assert (=> d!884836 m!3501947))

(declare-fun m!3501949 () Bool)

(assert (=> d!884836 m!3501949))

(assert (=> d!884836 m!3501945))

(declare-fun m!3501951 () Bool)

(assert (=> d!884836 m!3501951))

(assert (=> b!3223825 m!3501951))

(declare-fun m!3501953 () Bool)

(assert (=> b!3223827 m!3501953))

(declare-fun m!3501955 () Bool)

(assert (=> b!3223827 m!3501955))

(declare-fun m!3501957 () Bool)

(assert (=> b!3223827 m!3501957))

(assert (=> b!3223827 m!3501913))

(declare-fun m!3501959 () Bool)

(assert (=> b!3223827 m!3501959))

(assert (=> b!3223827 m!3501959))

(declare-fun m!3501961 () Bool)

(assert (=> b!3223827 m!3501961))

(declare-fun m!3501963 () Bool)

(assert (=> b!3223827 m!3501963))

(declare-fun m!3501965 () Bool)

(assert (=> b!3223827 m!3501965))

(declare-fun m!3501967 () Bool)

(assert (=> b!3223827 m!3501967))

(declare-fun m!3501969 () Bool)

(assert (=> b!3223827 m!3501969))

(assert (=> b!3223827 m!3501953))

(assert (=> b!3223827 m!3501965))

(declare-fun m!3501971 () Bool)

(assert (=> b!3223827 m!3501971))

(assert (=> b!3223827 m!3501967))

(assert (=> b!3223827 m!3501969))

(declare-fun m!3501973 () Bool)

(assert (=> b!3223827 m!3501973))

(declare-fun m!3501975 () Bool)

(assert (=> b!3223827 m!3501975))

(assert (=> b!3223621 d!884836))

(declare-fun d!884846 () Bool)

(declare-fun e!2010573 () Bool)

(assert (=> d!884846 e!2010573))

(declare-fun res!1313033 () Bool)

(assert (=> d!884846 (=> (not res!1313033) (not e!2010573))))

(declare-fun lt!1093749 () BalanceConc!21378)

(assert (=> d!884846 (= res!1313033 (= (list!12932 lt!1093749) (Cons!36301 (h!41721 tokens!494) Nil!36301)))))

(declare-fun singleton!999 (Token!9872) BalanceConc!21378)

(assert (=> d!884846 (= lt!1093749 (singleton!999 (h!41721 tokens!494)))))

(assert (=> d!884846 (= (singletonSeq!2349 (h!41721 tokens!494)) lt!1093749)))

(declare-fun b!3223830 () Bool)

(declare-fun isBalanced!3228 (Conc!10882) Bool)

(assert (=> b!3223830 (= e!2010573 (isBalanced!3228 (c!541838 lt!1093749)))))

(assert (= (and d!884846 res!1313033) b!3223830))

(declare-fun m!3501977 () Bool)

(assert (=> d!884846 m!3501977))

(declare-fun m!3501979 () Bool)

(assert (=> d!884846 m!3501979))

(declare-fun m!3501981 () Bool)

(assert (=> b!3223830 m!3501981))

(assert (=> b!3223621 d!884846))

(declare-fun d!884848 () Bool)

(declare-fun c!541864 () Bool)

(assert (=> d!884848 (= c!541864 (is-Cons!36301 (Cons!36301 (h!41721 tokens!494) Nil!36301)))))

(declare-fun e!2010576 () List!36423)

(assert (=> d!884848 (= (printList!1392 thiss!18206 (Cons!36301 (h!41721 tokens!494) Nil!36301)) e!2010576)))

(declare-fun b!3223835 () Bool)

(declare-fun ++!8728 (List!36423 List!36423) List!36423)

(assert (=> b!3223835 (= e!2010576 (++!8728 (list!12930 (charsOf!3269 (h!41721 (Cons!36301 (h!41721 tokens!494) Nil!36301)))) (printList!1392 thiss!18206 (t!240670 (Cons!36301 (h!41721 tokens!494) Nil!36301)))))))

(declare-fun b!3223836 () Bool)

(assert (=> b!3223836 (= e!2010576 Nil!36299)))

(assert (= (and d!884848 c!541864) b!3223835))

(assert (= (and d!884848 (not c!541864)) b!3223836))

(declare-fun m!3501983 () Bool)

(assert (=> b!3223835 m!3501983))

(assert (=> b!3223835 m!3501983))

(declare-fun m!3501985 () Bool)

(assert (=> b!3223835 m!3501985))

(declare-fun m!3501987 () Bool)

(assert (=> b!3223835 m!3501987))

(assert (=> b!3223835 m!3501985))

(assert (=> b!3223835 m!3501987))

(declare-fun m!3501989 () Bool)

(assert (=> b!3223835 m!3501989))

(assert (=> b!3223621 d!884848))

(declare-fun d!884850 () Bool)

(declare-fun list!12933 (Conc!10881) List!36423)

(assert (=> d!884850 (= (list!12930 lt!1093703) (list!12933 (c!541837 lt!1093703)))))

(declare-fun bs!542647 () Bool)

(assert (= bs!542647 d!884850))

(declare-fun m!3501991 () Bool)

(assert (=> bs!542647 m!3501991))

(assert (=> b!3223621 d!884850))

(declare-fun b!3223847 () Bool)

(declare-fun b_free!85869 () Bool)

(declare-fun b_next!86573 () Bool)

(assert (=> b!3223847 (= b_free!85869 (not b_next!86573))))

(declare-fun tp!1015536 () Bool)

(declare-fun b_and!215589 () Bool)

(assert (=> b!3223847 (= tp!1015536 b_and!215589)))

(declare-fun b_free!85871 () Bool)

(declare-fun b_next!86575 () Bool)

(assert (=> b!3223847 (= b_free!85871 (not b_next!86575))))

(declare-fun tb!159353 () Bool)

(declare-fun t!240704 () Bool)

(assert (=> (and b!3223847 (= (toChars!7208 (transformation!5253 (h!41720 (t!240669 rules!2135)))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494))))) t!240704) tb!159353))

(declare-fun result!201784 () Bool)

(assert (= result!201784 result!201760))

(assert (=> b!3223768 t!240704))

(declare-fun tb!159355 () Bool)

(declare-fun t!240706 () Bool)

(assert (=> (and b!3223847 (= (toChars!7208 (transformation!5253 (h!41720 (t!240669 rules!2135)))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241)))) t!240706) tb!159355))

(declare-fun result!201786 () Bool)

(assert (= result!201786 result!201768))

(assert (=> b!3223785 t!240706))

(declare-fun b_and!215591 () Bool)

(declare-fun tp!1015537 () Bool)

(assert (=> b!3223847 (= tp!1015537 (and (=> t!240704 result!201784) (=> t!240706 result!201786) b_and!215591))))

(declare-fun e!2010585 () Bool)

(assert (=> b!3223847 (= e!2010585 (and tp!1015536 tp!1015537))))

(declare-fun e!2010586 () Bool)

(declare-fun tp!1015539 () Bool)

(declare-fun b!3223846 () Bool)

(assert (=> b!3223846 (= e!2010586 (and tp!1015539 (inv!49164 (tag!5785 (h!41720 (t!240669 rules!2135)))) (inv!49167 (transformation!5253 (h!41720 (t!240669 rules!2135)))) e!2010585))))

(declare-fun b!3223845 () Bool)

(declare-fun e!2010587 () Bool)

(declare-fun tp!1015538 () Bool)

(assert (=> b!3223845 (= e!2010587 (and e!2010586 tp!1015538))))

(assert (=> b!3223625 (= tp!1015470 e!2010587)))

(assert (= b!3223846 b!3223847))

(assert (= b!3223845 b!3223846))

(assert (= (and b!3223625 (is-Cons!36300 (t!240669 rules!2135))) b!3223845))

(declare-fun m!3501993 () Bool)

(assert (=> b!3223846 m!3501993))

(declare-fun m!3501995 () Bool)

(assert (=> b!3223846 m!3501995))

(declare-fun b!3223861 () Bool)

(declare-fun b_free!85873 () Bool)

(declare-fun b_next!86577 () Bool)

(assert (=> b!3223861 (= b_free!85873 (not b_next!86577))))

(declare-fun tp!1015550 () Bool)

(declare-fun b_and!215593 () Bool)

(assert (=> b!3223861 (= tp!1015550 b_and!215593)))

(declare-fun b_free!85875 () Bool)

(declare-fun b_next!86579 () Bool)

(assert (=> b!3223861 (= b_free!85875 (not b_next!86579))))

(declare-fun t!240708 () Bool)

(declare-fun tb!159357 () Bool)

(assert (=> (and b!3223861 (= (toChars!7208 (transformation!5253 (rule!7711 (h!41721 (t!240670 tokens!494))))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494))))) t!240708) tb!159357))

(declare-fun result!201790 () Bool)

(assert (= result!201790 result!201760))

(assert (=> b!3223768 t!240708))

(declare-fun t!240710 () Bool)

(declare-fun tb!159359 () Bool)

(assert (=> (and b!3223861 (= (toChars!7208 (transformation!5253 (rule!7711 (h!41721 (t!240670 tokens!494))))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241)))) t!240710) tb!159359))

(declare-fun result!201792 () Bool)

(assert (= result!201792 result!201768))

(assert (=> b!3223785 t!240710))

(declare-fun tp!1015551 () Bool)

(declare-fun b_and!215595 () Bool)

(assert (=> b!3223861 (= tp!1015551 (and (=> t!240708 result!201790) (=> t!240710 result!201792) b_and!215595))))

(declare-fun tp!1015552 () Bool)

(declare-fun e!2010602 () Bool)

(declare-fun e!2010601 () Bool)

(declare-fun b!3223859 () Bool)

(assert (=> b!3223859 (= e!2010601 (and (inv!21 (value!170172 (h!41721 (t!240670 tokens!494)))) e!2010602 tp!1015552))))

(declare-fun e!2010603 () Bool)

(assert (=> b!3223861 (= e!2010603 (and tp!1015550 tp!1015551))))

(declare-fun tp!1015554 () Bool)

(declare-fun b!3223860 () Bool)

(assert (=> b!3223860 (= e!2010602 (and tp!1015554 (inv!49164 (tag!5785 (rule!7711 (h!41721 (t!240670 tokens!494))))) (inv!49167 (transformation!5253 (rule!7711 (h!41721 (t!240670 tokens!494))))) e!2010603))))

(declare-fun e!2010606 () Bool)

(declare-fun tp!1015553 () Bool)

(declare-fun b!3223858 () Bool)

(assert (=> b!3223858 (= e!2010606 (and (inv!49168 (h!41721 (t!240670 tokens!494))) e!2010601 tp!1015553))))

(assert (=> b!3223619 (= tp!1015481 e!2010606)))

(assert (= b!3223860 b!3223861))

(assert (= b!3223859 b!3223860))

(assert (= b!3223858 b!3223859))

(assert (= (and b!3223619 (is-Cons!36301 (t!240670 tokens!494))) b!3223858))

(declare-fun m!3501997 () Bool)

(assert (=> b!3223859 m!3501997))

(declare-fun m!3501999 () Bool)

(assert (=> b!3223860 m!3501999))

(declare-fun m!3502001 () Bool)

(assert (=> b!3223860 m!3502001))

(declare-fun m!3502003 () Bool)

(assert (=> b!3223858 m!3502003))

(declare-fun b!3223866 () Bool)

(declare-fun e!2010609 () Bool)

(declare-fun tp_is_empty!17307 () Bool)

(declare-fun tp!1015557 () Bool)

(assert (=> b!3223866 (= e!2010609 (and tp_is_empty!17307 tp!1015557))))

(assert (=> b!3223613 (= tp!1015475 e!2010609)))

(assert (= (and b!3223613 (is-Cons!36299 (originalCharacters!5967 separatorToken!241))) b!3223866))

(declare-fun b!3223880 () Bool)

(declare-fun e!2010612 () Bool)

(declare-fun tp!1015571 () Bool)

(declare-fun tp!1015569 () Bool)

(assert (=> b!3223880 (= e!2010612 (and tp!1015571 tp!1015569))))

(assert (=> b!3223618 (= tp!1015479 e!2010612)))

(declare-fun b!3223878 () Bool)

(declare-fun tp!1015570 () Bool)

(declare-fun tp!1015572 () Bool)

(assert (=> b!3223878 (= e!2010612 (and tp!1015570 tp!1015572))))

(declare-fun b!3223877 () Bool)

(assert (=> b!3223877 (= e!2010612 tp_is_empty!17307)))

(declare-fun b!3223879 () Bool)

(declare-fun tp!1015568 () Bool)

(assert (=> b!3223879 (= e!2010612 tp!1015568)))

(assert (= (and b!3223618 (is-ElementMatch!10012 (regex!5253 (rule!7711 separatorToken!241)))) b!3223877))

(assert (= (and b!3223618 (is-Concat!15495 (regex!5253 (rule!7711 separatorToken!241)))) b!3223878))

(assert (= (and b!3223618 (is-Star!10012 (regex!5253 (rule!7711 separatorToken!241)))) b!3223879))

(assert (= (and b!3223618 (is-Union!10012 (regex!5253 (rule!7711 separatorToken!241)))) b!3223880))

(declare-fun b!3223881 () Bool)

(declare-fun e!2010613 () Bool)

(declare-fun tp!1015573 () Bool)

(assert (=> b!3223881 (= e!2010613 (and tp_is_empty!17307 tp!1015573))))

(assert (=> b!3223623 (= tp!1015476 e!2010613)))

(assert (= (and b!3223623 (is-Cons!36299 (originalCharacters!5967 (h!41721 tokens!494)))) b!3223881))

(declare-fun b!3223885 () Bool)

(declare-fun e!2010614 () Bool)

(declare-fun tp!1015577 () Bool)

(declare-fun tp!1015575 () Bool)

(assert (=> b!3223885 (= e!2010614 (and tp!1015577 tp!1015575))))

(assert (=> b!3223612 (= tp!1015478 e!2010614)))

(declare-fun b!3223883 () Bool)

(declare-fun tp!1015576 () Bool)

(declare-fun tp!1015578 () Bool)

(assert (=> b!3223883 (= e!2010614 (and tp!1015576 tp!1015578))))

(declare-fun b!3223882 () Bool)

(assert (=> b!3223882 (= e!2010614 tp_is_empty!17307)))

(declare-fun b!3223884 () Bool)

(declare-fun tp!1015574 () Bool)

(assert (=> b!3223884 (= e!2010614 tp!1015574)))

(assert (= (and b!3223612 (is-ElementMatch!10012 (regex!5253 (h!41720 rules!2135)))) b!3223882))

(assert (= (and b!3223612 (is-Concat!15495 (regex!5253 (h!41720 rules!2135)))) b!3223883))

(assert (= (and b!3223612 (is-Star!10012 (regex!5253 (h!41720 rules!2135)))) b!3223884))

(assert (= (and b!3223612 (is-Union!10012 (regex!5253 (h!41720 rules!2135)))) b!3223885))

(declare-fun b!3223889 () Bool)

(declare-fun e!2010615 () Bool)

(declare-fun tp!1015582 () Bool)

(declare-fun tp!1015580 () Bool)

(assert (=> b!3223889 (= e!2010615 (and tp!1015582 tp!1015580))))

(assert (=> b!3223622 (= tp!1015469 e!2010615)))

(declare-fun b!3223887 () Bool)

(declare-fun tp!1015581 () Bool)

(declare-fun tp!1015583 () Bool)

(assert (=> b!3223887 (= e!2010615 (and tp!1015581 tp!1015583))))

(declare-fun b!3223886 () Bool)

(assert (=> b!3223886 (= e!2010615 tp_is_empty!17307)))

(declare-fun b!3223888 () Bool)

(declare-fun tp!1015579 () Bool)

(assert (=> b!3223888 (= e!2010615 tp!1015579)))

(assert (= (and b!3223622 (is-ElementMatch!10012 (regex!5253 (rule!7711 (h!41721 tokens!494))))) b!3223886))

(assert (= (and b!3223622 (is-Concat!15495 (regex!5253 (rule!7711 (h!41721 tokens!494))))) b!3223887))

(assert (= (and b!3223622 (is-Star!10012 (regex!5253 (rule!7711 (h!41721 tokens!494))))) b!3223888))

(assert (= (and b!3223622 (is-Union!10012 (regex!5253 (rule!7711 (h!41721 tokens!494))))) b!3223889))

(declare-fun b_lambda!88627 () Bool)

(assert (= b_lambda!88623 (or (and b!3223614 b_free!85851 (= (toChars!7208 (transformation!5253 (h!41720 rules!2135))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))))) (and b!3223861 b_free!85875 (= (toChars!7208 (transformation!5253 (rule!7711 (h!41721 (t!240670 tokens!494))))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))))) (and b!3223611 b_free!85847 (= (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))))) (and b!3223847 b_free!85871 (= (toChars!7208 (transformation!5253 (h!41720 (t!240669 rules!2135)))) (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))))) (and b!3223620 b_free!85855) b_lambda!88627)))

(declare-fun b_lambda!88629 () Bool)

(assert (= b_lambda!88619 (or b!3223615 b_lambda!88629)))

(declare-fun bs!542648 () Bool)

(declare-fun d!884852 () Bool)

(assert (= bs!542648 (and d!884852 b!3223615)))

(assert (=> bs!542648 (= (dynLambda!14727 lambda!118014 (h!41721 tokens!494)) (not (isSeparator!5253 (rule!7711 (h!41721 tokens!494)))))))

(assert (=> b!3223762 d!884852))

(declare-fun b_lambda!88631 () Bool)

(assert (= b_lambda!88621 (or (and b!3223861 b_free!85875 (= (toChars!7208 (transformation!5253 (rule!7711 (h!41721 (t!240670 tokens!494))))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))))) (and b!3223614 b_free!85851 (= (toChars!7208 (transformation!5253 (h!41720 rules!2135))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))))) (and b!3223611 b_free!85847) (and b!3223847 b_free!85871 (= (toChars!7208 (transformation!5253 (h!41720 (t!240669 rules!2135)))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))))) (and b!3223620 b_free!85855 (= (toChars!7208 (transformation!5253 (rule!7711 separatorToken!241))) (toChars!7208 (transformation!5253 (rule!7711 (h!41721 tokens!494)))))) b_lambda!88631)))

(push 1)

(assert (not b!3223768))

(assert (not b!3223846))

(assert (not d!884850))

(assert (not b_next!86573))

(assert (not b!3223721))

(assert (not b_lambda!88627))

(assert (not b!3223752))

(assert (not d!884828))

(assert (not b!3223786))

(assert (not d!884816))

(assert (not b!3223830))

(assert (not b_lambda!88629))

(assert (not b!3223742))

(assert (not b!3223827))

(assert b_and!215555)

(assert (not b_next!86549))

(assert (not b!3223754))

(assert (not d!884846))

(assert (not d!884802))

(assert (not b!3223712))

(assert (not b!3223887))

(assert (not b!3223763))

(assert (not d!884836))

(assert (not b!3223825))

(assert (not b!3223883))

(assert b_and!215547)

(assert b_and!215589)

(assert (not b!3223888))

(assert (not b_next!86557))

(assert (not d!884826))

(assert (not b!3223779))

(assert (not tb!159335))

(assert (not b!3223884))

(assert (not b!3223845))

(assert (not b_lambda!88631))

(assert (not b!3223787))

(assert (not b_next!86559))

(assert (not b_next!86577))

(assert tp_is_empty!17307)

(assert (not b!3223866))

(assert b_and!215581)

(assert (not b_next!86555))

(assert (not d!884810))

(assert (not b!3223757))

(assert b_and!215595)

(assert (not d!884832))

(assert (not tb!159341))

(assert (not b_next!86579))

(assert (not b!3223785))

(assert (not b_next!86575))

(assert (not b!3223885))

(assert (not d!884788))

(assert (not b!3223745))

(assert (not b!3223740))

(assert (not b!3223780))

(assert (not b!3223858))

(assert b_and!215577)

(assert (not b!3223769))

(assert (not b!3223860))

(assert (not d!884812))

(assert (not b!3223889))

(assert (not b!3223788))

(assert (not b!3223738))

(assert (not b!3223878))

(assert (not b!3223784))

(assert (not b!3223835))

(assert (not b!3223881))

(assert (not b_next!86553))

(assert (not b_next!86551))

(assert (not d!884834))

(assert (not b!3223880))

(assert b_and!215593)

(assert (not b!3223859))

(assert b_and!215591)

(assert (not b!3223753))

(assert (not b!3223743))

(assert b_and!215551)

(assert (not b!3223879))

(assert (not b!3223737))

(assert b_and!215579)

(assert (not b!3223774))

(assert (not d!884822))

(assert (not b!3223783))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!86557))

(assert (not b_next!86573))

(assert (not b_next!86559))

(assert (not b_next!86577))

(assert b_and!215595)

(assert b_and!215577)

(assert b_and!215593)

(assert b_and!215579)

(assert b_and!215555)

(assert (not b_next!86549))

(assert b_and!215547)

(assert b_and!215589)

(assert b_and!215581)

(assert (not b_next!86555))

(assert (not b_next!86579))

(assert (not b_next!86575))

(assert (not b_next!86553))

(assert (not b_next!86551))

(assert b_and!215591)

(assert b_and!215551)

(check-sat)

(pop 1)

