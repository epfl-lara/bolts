; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!310476 () Bool)

(assert start!310476)

(declare-fun b!3326579 () Bool)

(declare-fun b_free!87517 () Bool)

(declare-fun b_next!88221 () Bool)

(assert (=> b!3326579 (= b_free!87517 (not b_next!88221))))

(declare-fun tp!1039689 () Bool)

(declare-fun b_and!229203 () Bool)

(assert (=> b!3326579 (= tp!1039689 b_and!229203)))

(declare-fun b_free!87519 () Bool)

(declare-fun b_next!88223 () Bool)

(assert (=> b!3326579 (= b_free!87519 (not b_next!88223))))

(declare-fun tp!1039692 () Bool)

(declare-fun b_and!229205 () Bool)

(assert (=> b!3326579 (= tp!1039692 b_and!229205)))

(declare-fun b!3326581 () Bool)

(declare-fun b_free!87521 () Bool)

(declare-fun b_next!88225 () Bool)

(assert (=> b!3326581 (= b_free!87521 (not b_next!88225))))

(declare-fun tp!1039693 () Bool)

(declare-fun b_and!229207 () Bool)

(assert (=> b!3326581 (= tp!1039693 b_and!229207)))

(declare-fun b_free!87523 () Bool)

(declare-fun b_next!88227 () Bool)

(assert (=> b!3326581 (= b_free!87523 (not b_next!88227))))

(declare-fun tp!1039685 () Bool)

(declare-fun b_and!229209 () Bool)

(assert (=> b!3326581 (= tp!1039685 b_and!229209)))

(declare-fun b!3326571 () Bool)

(declare-fun b_free!87525 () Bool)

(declare-fun b_next!88229 () Bool)

(assert (=> b!3326571 (= b_free!87525 (not b_next!88229))))

(declare-fun tp!1039684 () Bool)

(declare-fun b_and!229211 () Bool)

(assert (=> b!3326571 (= tp!1039684 b_and!229211)))

(declare-fun b_free!87527 () Bool)

(declare-fun b_next!88231 () Bool)

(assert (=> b!3326571 (= b_free!87527 (not b_next!88231))))

(declare-fun tp!1039687 () Bool)

(declare-fun b_and!229213 () Bool)

(assert (=> b!3326571 (= tp!1039687 b_and!229213)))

(declare-fun b!3326559 () Bool)

(declare-fun res!1349179 () Bool)

(declare-fun e!2068620 () Bool)

(assert (=> b!3326559 (=> (not res!1349179) (not e!2068620))))

(declare-datatypes ((C!20358 0))(
  ( (C!20359 (val!12227 Int)) )
))
(declare-datatypes ((Regex!10086 0))(
  ( (ElementMatch!10086 (c!565002 C!20358)) (Concat!15643 (regOne!20684 Regex!10086) (regTwo!20684 Regex!10086)) (EmptyExpr!10086) (Star!10086 (reg!10415 Regex!10086)) (EmptyLang!10086) (Union!10086 (regOne!20685 Regex!10086) (regTwo!20685 Regex!10086)) )
))
(declare-datatypes ((List!36768 0))(
  ( (Nil!36644) (Cons!36644 (h!42064 (_ BitVec 16)) (t!256667 List!36768)) )
))
(declare-datatypes ((String!41120 0))(
  ( (String!41121 (value!172255 String)) )
))
(declare-datatypes ((TokenValue!5557 0))(
  ( (FloatLiteralValue!11114 (text!39344 List!36768)) (TokenValueExt!5556 (__x!23331 Int)) (Broken!27785 (value!172256 List!36768)) (Object!5680) (End!5557) (Def!5557) (Underscore!5557) (Match!5557) (Else!5557) (Error!5557) (Case!5557) (If!5557) (Extends!5557) (Abstract!5557) (Class!5557) (Val!5557) (DelimiterValue!11114 (del!5617 List!36768)) (KeywordValue!5563 (value!172257 List!36768)) (CommentValue!11114 (value!172258 List!36768)) (WhitespaceValue!11114 (value!172259 List!36768)) (IndentationValue!5557 (value!172260 List!36768)) (String!41122) (Int32!5557) (Broken!27786 (value!172261 List!36768)) (Boolean!5558) (Unit!51662) (OperatorValue!5560 (op!5617 List!36768)) (IdentifierValue!11114 (value!172262 List!36768)) (IdentifierValue!11115 (value!172263 List!36768)) (WhitespaceValue!11115 (value!172264 List!36768)) (True!11114) (False!11114) (Broken!27787 (value!172265 List!36768)) (Broken!27788 (value!172266 List!36768)) (True!11115) (RightBrace!5557) (RightBracket!5557) (Colon!5557) (Null!5557) (Comma!5557) (LeftBracket!5557) (False!11115) (LeftBrace!5557) (ImaginaryLiteralValue!5557 (text!39345 List!36768)) (StringLiteralValue!16671 (value!172267 List!36768)) (EOFValue!5557 (value!172268 List!36768)) (IdentValue!5557 (value!172269 List!36768)) (DelimiterValue!11115 (value!172270 List!36768)) (DedentValue!5557 (value!172271 List!36768)) (NewLineValue!5557 (value!172272 List!36768)) (IntegerValue!16671 (value!172273 (_ BitVec 32)) (text!39346 List!36768)) (IntegerValue!16672 (value!172274 Int) (text!39347 List!36768)) (Times!5557) (Or!5557) (Equal!5557) (Minus!5557) (Broken!27789 (value!172275 List!36768)) (And!5557) (Div!5557) (LessEqual!5557) (Mod!5557) (Concat!15644) (Not!5557) (Plus!5557) (SpaceValue!5557 (value!172276 List!36768)) (IntegerValue!16673 (value!172277 Int) (text!39348 List!36768)) (StringLiteralValue!16672 (text!39349 List!36768)) (FloatLiteralValue!11115 (text!39350 List!36768)) (BytesLiteralValue!5557 (value!172278 List!36768)) (CommentValue!11115 (value!172279 List!36768)) (StringLiteralValue!16673 (value!172280 List!36768)) (ErrorTokenValue!5557 (msg!5618 List!36768)) )
))
(declare-datatypes ((List!36769 0))(
  ( (Nil!36645) (Cons!36645 (h!42065 C!20358) (t!256668 List!36769)) )
))
(declare-datatypes ((IArray!22063 0))(
  ( (IArray!22064 (innerList!11089 List!36769)) )
))
(declare-datatypes ((Conc!11029 0))(
  ( (Node!11029 (left!28559 Conc!11029) (right!28889 Conc!11029) (csize!22288 Int) (cheight!11240 Int)) (Leaf!17304 (xs!14167 IArray!22063) (csize!22289 Int)) (Empty!11029) )
))
(declare-datatypes ((BalanceConc!21672 0))(
  ( (BalanceConc!21673 (c!565003 Conc!11029)) )
))
(declare-datatypes ((TokenValueInjection!10542 0))(
  ( (TokenValueInjection!10543 (toValue!7487 Int) (toChars!7346 Int)) )
))
(declare-datatypes ((Rule!10454 0))(
  ( (Rule!10455 (regex!5327 Regex!10086) (tag!5879 String!41120) (isSeparator!5327 Bool) (transformation!5327 TokenValueInjection!10542)) )
))
(declare-datatypes ((List!36770 0))(
  ( (Nil!36646) (Cons!36646 (h!42066 Rule!10454) (t!256669 List!36770)) )
))
(declare-fun rules!2135 () List!36770)

(declare-fun isEmpty!20804 (List!36770) Bool)

(assert (=> b!3326559 (= res!1349179 (not (isEmpty!20804 rules!2135)))))

(declare-fun b!3326561 () Bool)

(declare-fun res!1349174 () Bool)

(declare-fun e!2068610 () Bool)

(assert (=> b!3326561 (=> (not res!1349174) (not e!2068610))))

(declare-datatypes ((Token!10020 0))(
  ( (Token!10021 (value!172281 TokenValue!5557) (rule!7849 Rule!10454) (size!27700 Int) (originalCharacters!6041 List!36769)) )
))
(declare-fun separatorToken!241 () Token!10020)

(assert (=> b!3326561 (= res!1349174 (isSeparator!5327 (rule!7849 separatorToken!241)))))

(declare-fun b!3326562 () Bool)

(declare-fun res!1349176 () Bool)

(declare-fun e!2068613 () Bool)

(assert (=> b!3326562 (=> res!1349176 e!2068613)))

(declare-datatypes ((LexerInterface!4916 0))(
  ( (LexerInterfaceExt!4913 (__x!23332 Int)) (Lexer!4914) )
))
(declare-fun thiss!18206 () LexerInterface!4916)

(declare-fun lt!1130357 () List!36769)

(declare-datatypes ((List!36771 0))(
  ( (Nil!36647) (Cons!36647 (h!42067 Token!10020) (t!256670 List!36771)) )
))
(declare-datatypes ((IArray!22065 0))(
  ( (IArray!22066 (innerList!11090 List!36771)) )
))
(declare-datatypes ((Conc!11030 0))(
  ( (Node!11030 (left!28560 Conc!11030) (right!28890 Conc!11030) (csize!22290 Int) (cheight!11241 Int)) (Leaf!17305 (xs!14168 IArray!22065) (csize!22291 Int)) (Empty!11030) )
))
(declare-datatypes ((BalanceConc!21674 0))(
  ( (BalanceConc!21675 (c!565004 Conc!11030)) )
))
(declare-fun isEmpty!20805 (BalanceConc!21674) Bool)

(declare-datatypes ((tuple2!36148 0))(
  ( (tuple2!36149 (_1!21208 BalanceConc!21674) (_2!21208 BalanceConc!21672)) )
))
(declare-fun lex!2242 (LexerInterface!4916 List!36770 BalanceConc!21672) tuple2!36148)

(declare-fun seqFromList!3707 (List!36769) BalanceConc!21672)

(assert (=> b!3326562 (= res!1349176 (isEmpty!20805 (_1!21208 (lex!2242 thiss!18206 rules!2135 (seqFromList!3707 lt!1130357)))))))

(declare-fun tokens!494 () List!36771)

(declare-fun tp!1039682 () Bool)

(declare-fun e!2068606 () Bool)

(declare-fun b!3326563 () Bool)

(declare-fun e!2068611 () Bool)

(declare-fun inv!49648 (Token!10020) Bool)

(assert (=> b!3326563 (= e!2068606 (and (inv!49648 (h!42067 tokens!494)) e!2068611 tp!1039682))))

(declare-fun b!3326564 () Bool)

(declare-fun res!1349173 () Bool)

(assert (=> b!3326564 (=> (not res!1349173) (not e!2068610))))

(declare-fun lambda!119676 () Int)

(declare-fun forall!7642 (List!36771 Int) Bool)

(assert (=> b!3326564 (= res!1349173 (forall!7642 tokens!494 lambda!119676))))

(declare-fun b!3326565 () Bool)

(declare-fun e!2068616 () Bool)

(declare-fun tp!1039686 () Bool)

(declare-fun e!2068604 () Bool)

(declare-fun inv!49645 (String!41120) Bool)

(declare-fun inv!49649 (TokenValueInjection!10542) Bool)

(assert (=> b!3326565 (= e!2068616 (and tp!1039686 (inv!49645 (tag!5879 (rule!7849 separatorToken!241))) (inv!49649 (transformation!5327 (rule!7849 separatorToken!241))) e!2068604))))

(declare-fun e!2068605 () Bool)

(declare-fun b!3326566 () Bool)

(declare-fun tp!1039681 () Bool)

(declare-fun inv!21 (TokenValue!5557) Bool)

(assert (=> b!3326566 (= e!2068611 (and (inv!21 (value!172281 (h!42067 tokens!494))) e!2068605 tp!1039681))))

(declare-fun b!3326567 () Bool)

(declare-fun res!1349184 () Bool)

(assert (=> b!3326567 (=> res!1349184 e!2068613)))

(declare-fun rulesProduceIndividualToken!2408 (LexerInterface!4916 List!36770 Token!10020) Bool)

(assert (=> b!3326567 (= res!1349184 (not (rulesProduceIndividualToken!2408 thiss!18206 rules!2135 (h!42067 tokens!494))))))

(declare-fun b!3326568 () Bool)

(assert (=> b!3326568 (= e!2068620 e!2068610)))

(declare-fun res!1349172 () Bool)

(assert (=> b!3326568 (=> (not res!1349172) (not e!2068610))))

(declare-fun lt!1130360 () BalanceConc!21674)

(declare-fun rulesProduceEachTokenIndividually!1367 (LexerInterface!4916 List!36770 BalanceConc!21674) Bool)

(assert (=> b!3326568 (= res!1349172 (rulesProduceEachTokenIndividually!1367 thiss!18206 rules!2135 lt!1130360))))

(declare-fun seqFromList!3708 (List!36771) BalanceConc!21674)

(assert (=> b!3326568 (= lt!1130360 (seqFromList!3708 tokens!494))))

(declare-fun b!3326569 () Bool)

(declare-fun res!1349178 () Bool)

(assert (=> b!3326569 (=> (not res!1349178) (not e!2068610))))

(declare-fun sepAndNonSepRulesDisjointChars!1521 (List!36770 List!36770) Bool)

(assert (=> b!3326569 (= res!1349178 (sepAndNonSepRulesDisjointChars!1521 rules!2135 rules!2135))))

(declare-fun b!3326570 () Bool)

(declare-fun res!1349182 () Bool)

(assert (=> b!3326570 (=> (not res!1349182) (not e!2068610))))

(assert (=> b!3326570 (= res!1349182 (and (not (is-Nil!36647 tokens!494)) (is-Nil!36647 (t!256670 tokens!494))))))

(assert (=> b!3326571 (= e!2068604 (and tp!1039684 tp!1039687))))

(declare-fun b!3326560 () Bool)

(declare-fun e!2068614 () Bool)

(assert (=> b!3326560 (= e!2068613 e!2068614)))

(declare-fun res!1349183 () Bool)

(assert (=> b!3326560 (=> res!1349183 e!2068614)))

(assert (=> b!3326560 (= res!1349183 (isSeparator!5327 (rule!7849 (h!42067 tokens!494))))))

(declare-datatypes ((Unit!51663 0))(
  ( (Unit!51664) )
))
(declare-fun lt!1130358 () Unit!51663)

(declare-fun forallContained!1274 (List!36771 Int Token!10020) Unit!51663)

(assert (=> b!3326560 (= lt!1130358 (forallContained!1274 tokens!494 lambda!119676 (h!42067 tokens!494)))))

(declare-fun res!1349185 () Bool)

(assert (=> start!310476 (=> (not res!1349185) (not e!2068620))))

(assert (=> start!310476 (= res!1349185 (is-Lexer!4914 thiss!18206))))

(assert (=> start!310476 e!2068620))

(assert (=> start!310476 true))

(declare-fun e!2068618 () Bool)

(assert (=> start!310476 e!2068618))

(declare-fun e!2068615 () Bool)

(assert (=> start!310476 (and (inv!49648 separatorToken!241) e!2068615)))

(assert (=> start!310476 e!2068606))

(declare-fun b!3326572 () Bool)

(declare-fun res!1349177 () Bool)

(assert (=> b!3326572 (=> res!1349177 e!2068614)))

(declare-fun list!13190 (BalanceConc!21672) List!36769)

(declare-fun printWithSeparatorToken!107 (LexerInterface!4916 BalanceConc!21674 Token!10020) BalanceConc!21672)

(declare-fun ++!8902 (List!36769 List!36769) List!36769)

(declare-fun charsOf!3341 (Token!10020) BalanceConc!21672)

(assert (=> b!3326572 (= res!1349177 (not (= (list!13190 (printWithSeparatorToken!107 thiss!18206 lt!1130360 separatorToken!241)) (++!8902 lt!1130357 (list!13190 (charsOf!3341 separatorToken!241))))))))

(declare-fun b!3326573 () Bool)

(declare-fun e!2068609 () Bool)

(assert (=> b!3326573 (= e!2068609 e!2068613)))

(declare-fun res!1349181 () Bool)

(assert (=> b!3326573 (=> res!1349181 e!2068613)))

(declare-fun lt!1130356 () List!36769)

(declare-fun lt!1130354 () List!36769)

(assert (=> b!3326573 (= res!1349181 (or (not (= lt!1130354 lt!1130357)) (not (= lt!1130356 lt!1130357))))))

(assert (=> b!3326573 (= lt!1130357 (list!13190 (charsOf!3341 (h!42067 tokens!494))))))

(declare-fun e!2068602 () Bool)

(declare-fun b!3326574 () Bool)

(declare-fun tp!1039691 () Bool)

(assert (=> b!3326574 (= e!2068605 (and tp!1039691 (inv!49645 (tag!5879 (rule!7849 (h!42067 tokens!494)))) (inv!49649 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) e!2068602))))

(declare-fun b!3326575 () Bool)

(declare-fun tp!1039683 () Bool)

(assert (=> b!3326575 (= e!2068615 (and (inv!21 (value!172281 separatorToken!241)) e!2068616 tp!1039683))))

(declare-fun b!3326576 () Bool)

(declare-fun res!1349175 () Bool)

(assert (=> b!3326576 (=> (not res!1349175) (not e!2068610))))

(assert (=> b!3326576 (= res!1349175 (rulesProduceIndividualToken!2408 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3326577 () Bool)

(declare-fun contains!6642 (List!36771 Token!10020) Bool)

(assert (=> b!3326577 (= e!2068614 (contains!6642 tokens!494 (h!42067 tokens!494)))))

(declare-fun isEmpty!20806 (List!36769) Bool)

(declare-fun getSuffix!1421 (List!36769 List!36769) List!36769)

(assert (=> b!3326577 (isEmpty!20806 (getSuffix!1421 lt!1130357 lt!1130357))))

(declare-fun lt!1130355 () Unit!51663)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!79 (List!36769) Unit!51663)

(assert (=> b!3326577 (= lt!1130355 (lemmaGetSuffixOnListWithItSelfIsEmpty!79 lt!1130357))))

(declare-fun b!3326578 () Bool)

(declare-fun e!2068612 () Bool)

(declare-fun tp!1039690 () Bool)

(assert (=> b!3326578 (= e!2068618 (and e!2068612 tp!1039690))))

(assert (=> b!3326579 (= e!2068602 (and tp!1039689 tp!1039692))))

(declare-fun b!3326580 () Bool)

(assert (=> b!3326580 (= e!2068610 (not e!2068609))))

(declare-fun res!1349186 () Bool)

(assert (=> b!3326580 (=> res!1349186 e!2068609)))

(assert (=> b!3326580 (= res!1349186 (not (= lt!1130356 lt!1130354)))))

(declare-fun printList!1464 (LexerInterface!4916 List!36771) List!36769)

(assert (=> b!3326580 (= lt!1130354 (printList!1464 thiss!18206 (Cons!36647 (h!42067 tokens!494) Nil!36647)))))

(declare-fun lt!1130353 () BalanceConc!21672)

(assert (=> b!3326580 (= lt!1130356 (list!13190 lt!1130353))))

(declare-fun lt!1130359 () BalanceConc!21674)

(declare-fun printTailRec!1411 (LexerInterface!4916 BalanceConc!21674 Int BalanceConc!21672) BalanceConc!21672)

(assert (=> b!3326580 (= lt!1130353 (printTailRec!1411 thiss!18206 lt!1130359 0 (BalanceConc!21673 Empty!11029)))))

(declare-fun print!1981 (LexerInterface!4916 BalanceConc!21674) BalanceConc!21672)

(assert (=> b!3326580 (= lt!1130353 (print!1981 thiss!18206 lt!1130359))))

(declare-fun singletonSeq!2423 (Token!10020) BalanceConc!21674)

(assert (=> b!3326580 (= lt!1130359 (singletonSeq!2423 (h!42067 tokens!494)))))

(declare-fun e!2068617 () Bool)

(assert (=> b!3326581 (= e!2068617 (and tp!1039693 tp!1039685))))

(declare-fun b!3326582 () Bool)

(declare-fun tp!1039688 () Bool)

(assert (=> b!3326582 (= e!2068612 (and tp!1039688 (inv!49645 (tag!5879 (h!42066 rules!2135))) (inv!49649 (transformation!5327 (h!42066 rules!2135))) e!2068617))))

(declare-fun b!3326583 () Bool)

(declare-fun res!1349180 () Bool)

(assert (=> b!3326583 (=> (not res!1349180) (not e!2068620))))

(declare-fun rulesInvariant!4313 (LexerInterface!4916 List!36770) Bool)

(assert (=> b!3326583 (= res!1349180 (rulesInvariant!4313 thiss!18206 rules!2135))))

(assert (= (and start!310476 res!1349185) b!3326559))

(assert (= (and b!3326559 res!1349179) b!3326583))

(assert (= (and b!3326583 res!1349180) b!3326568))

(assert (= (and b!3326568 res!1349172) b!3326576))

(assert (= (and b!3326576 res!1349175) b!3326561))

(assert (= (and b!3326561 res!1349174) b!3326564))

(assert (= (and b!3326564 res!1349173) b!3326569))

(assert (= (and b!3326569 res!1349178) b!3326570))

(assert (= (and b!3326570 res!1349182) b!3326580))

(assert (= (and b!3326580 (not res!1349186)) b!3326573))

(assert (= (and b!3326573 (not res!1349181)) b!3326567))

(assert (= (and b!3326567 (not res!1349184)) b!3326562))

(assert (= (and b!3326562 (not res!1349176)) b!3326560))

(assert (= (and b!3326560 (not res!1349183)) b!3326572))

(assert (= (and b!3326572 (not res!1349177)) b!3326577))

(assert (= b!3326582 b!3326581))

(assert (= b!3326578 b!3326582))

(assert (= (and start!310476 (is-Cons!36646 rules!2135)) b!3326578))

(assert (= b!3326565 b!3326571))

(assert (= b!3326575 b!3326565))

(assert (= start!310476 b!3326575))

(assert (= b!3326574 b!3326579))

(assert (= b!3326566 b!3326574))

(assert (= b!3326563 b!3326566))

(assert (= (and start!310476 (is-Cons!36647 tokens!494)) b!3326563))

(declare-fun m!3666651 () Bool)

(assert (=> b!3326583 m!3666651))

(declare-fun m!3666653 () Bool)

(assert (=> start!310476 m!3666653))

(declare-fun m!3666655 () Bool)

(assert (=> b!3326574 m!3666655))

(declare-fun m!3666657 () Bool)

(assert (=> b!3326574 m!3666657))

(declare-fun m!3666659 () Bool)

(assert (=> b!3326566 m!3666659))

(declare-fun m!3666661 () Bool)

(assert (=> b!3326562 m!3666661))

(assert (=> b!3326562 m!3666661))

(declare-fun m!3666663 () Bool)

(assert (=> b!3326562 m!3666663))

(declare-fun m!3666665 () Bool)

(assert (=> b!3326562 m!3666665))

(declare-fun m!3666667 () Bool)

(assert (=> b!3326564 m!3666667))

(declare-fun m!3666669 () Bool)

(assert (=> b!3326563 m!3666669))

(declare-fun m!3666671 () Bool)

(assert (=> b!3326580 m!3666671))

(declare-fun m!3666673 () Bool)

(assert (=> b!3326580 m!3666673))

(declare-fun m!3666675 () Bool)

(assert (=> b!3326580 m!3666675))

(declare-fun m!3666677 () Bool)

(assert (=> b!3326580 m!3666677))

(declare-fun m!3666679 () Bool)

(assert (=> b!3326580 m!3666679))

(declare-fun m!3666681 () Bool)

(assert (=> b!3326573 m!3666681))

(assert (=> b!3326573 m!3666681))

(declare-fun m!3666683 () Bool)

(assert (=> b!3326573 m!3666683))

(declare-fun m!3666685 () Bool)

(assert (=> b!3326567 m!3666685))

(declare-fun m!3666687 () Bool)

(assert (=> b!3326582 m!3666687))

(declare-fun m!3666689 () Bool)

(assert (=> b!3326582 m!3666689))

(declare-fun m!3666691 () Bool)

(assert (=> b!3326569 m!3666691))

(declare-fun m!3666693 () Bool)

(assert (=> b!3326559 m!3666693))

(declare-fun m!3666695 () Bool)

(assert (=> b!3326568 m!3666695))

(declare-fun m!3666697 () Bool)

(assert (=> b!3326568 m!3666697))

(declare-fun m!3666699 () Bool)

(assert (=> b!3326577 m!3666699))

(declare-fun m!3666701 () Bool)

(assert (=> b!3326577 m!3666701))

(assert (=> b!3326577 m!3666701))

(declare-fun m!3666703 () Bool)

(assert (=> b!3326577 m!3666703))

(declare-fun m!3666705 () Bool)

(assert (=> b!3326577 m!3666705))

(declare-fun m!3666707 () Bool)

(assert (=> b!3326575 m!3666707))

(declare-fun m!3666709 () Bool)

(assert (=> b!3326565 m!3666709))

(declare-fun m!3666711 () Bool)

(assert (=> b!3326565 m!3666711))

(declare-fun m!3666713 () Bool)

(assert (=> b!3326576 m!3666713))

(declare-fun m!3666715 () Bool)

(assert (=> b!3326572 m!3666715))

(declare-fun m!3666717 () Bool)

(assert (=> b!3326572 m!3666717))

(declare-fun m!3666719 () Bool)

(assert (=> b!3326572 m!3666719))

(assert (=> b!3326572 m!3666715))

(assert (=> b!3326572 m!3666717))

(declare-fun m!3666721 () Bool)

(assert (=> b!3326572 m!3666721))

(assert (=> b!3326572 m!3666721))

(declare-fun m!3666723 () Bool)

(assert (=> b!3326572 m!3666723))

(declare-fun m!3666725 () Bool)

(assert (=> b!3326560 m!3666725))

(push 1)

(assert (not b!3326563))

(assert (not b!3326576))

(assert b_and!229213)

(assert (not b!3326573))

(assert (not b!3326565))

(assert (not b_next!88229))

(assert (not b!3326582))

(assert (not b!3326569))

(assert b_and!229211)

(assert (not b!3326580))

(assert (not b!3326562))

(assert (not b!3326564))

(assert (not b_next!88223))

(assert (not b!3326567))

(assert (not b!3326577))

(assert (not b_next!88227))

(assert (not b!3326578))

(assert b_and!229209)

(assert (not b!3326583))

(assert (not b!3326568))

(assert (not b!3326566))

(assert (not b!3326559))

(assert (not b!3326575))

(assert (not b_next!88231))

(assert (not b!3326572))

(assert (not b!3326560))

(assert b_and!229207)

(assert b_and!229203)

(assert b_and!229205)

(assert (not b!3326574))

(assert (not b_next!88221))

(assert (not b_next!88225))

(assert (not start!310476))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!88223))

(assert (not b_next!88227))

(assert b_and!229209)

(assert b_and!229213)

(assert (not b_next!88231))

(assert (not b_next!88229))

(assert b_and!229207)

(assert b_and!229211)

(assert (not b_next!88225))

(assert b_and!229203)

(assert b_and!229205)

(assert (not b_next!88221))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!935389 () Bool)

(declare-fun list!13192 (Conc!11029) List!36769)

(assert (=> d!935389 (= (list!13190 (printWithSeparatorToken!107 thiss!18206 lt!1130360 separatorToken!241)) (list!13192 (c!565003 (printWithSeparatorToken!107 thiss!18206 lt!1130360 separatorToken!241))))))

(declare-fun bs!550942 () Bool)

(assert (= bs!550942 d!935389))

(declare-fun m!3666803 () Bool)

(assert (=> bs!550942 m!3666803))

(assert (=> b!3326572 d!935389))

(declare-fun b!3326667 () Bool)

(declare-fun e!2068685 () List!36769)

(assert (=> b!3326667 (= e!2068685 (list!13190 (charsOf!3341 separatorToken!241)))))

(declare-fun b!3326669 () Bool)

(declare-fun res!1349243 () Bool)

(declare-fun e!2068686 () Bool)

(assert (=> b!3326669 (=> (not res!1349243) (not e!2068686))))

(declare-fun lt!1130387 () List!36769)

(declare-fun size!27702 (List!36769) Int)

(assert (=> b!3326669 (= res!1349243 (= (size!27702 lt!1130387) (+ (size!27702 lt!1130357) (size!27702 (list!13190 (charsOf!3341 separatorToken!241))))))))

(declare-fun d!935391 () Bool)

(assert (=> d!935391 e!2068686))

(declare-fun res!1349242 () Bool)

(assert (=> d!935391 (=> (not res!1349242) (not e!2068686))))

(declare-fun content!5002 (List!36769) (Set C!20358))

(assert (=> d!935391 (= res!1349242 (= (content!5002 lt!1130387) (set.union (content!5002 lt!1130357) (content!5002 (list!13190 (charsOf!3341 separatorToken!241))))))))

(assert (=> d!935391 (= lt!1130387 e!2068685)))

(declare-fun c!565011 () Bool)

(assert (=> d!935391 (= c!565011 (is-Nil!36645 lt!1130357))))

(assert (=> d!935391 (= (++!8902 lt!1130357 (list!13190 (charsOf!3341 separatorToken!241))) lt!1130387)))

(declare-fun b!3326668 () Bool)

(assert (=> b!3326668 (= e!2068685 (Cons!36645 (h!42065 lt!1130357) (++!8902 (t!256668 lt!1130357) (list!13190 (charsOf!3341 separatorToken!241)))))))

(declare-fun b!3326670 () Bool)

(assert (=> b!3326670 (= e!2068686 (or (not (= (list!13190 (charsOf!3341 separatorToken!241)) Nil!36645)) (= lt!1130387 lt!1130357)))))

(assert (= (and d!935391 c!565011) b!3326667))

(assert (= (and d!935391 (not c!565011)) b!3326668))

(assert (= (and d!935391 res!1349242) b!3326669))

(assert (= (and b!3326669 res!1349243) b!3326670))

(declare-fun m!3666805 () Bool)

(assert (=> b!3326669 m!3666805))

(declare-fun m!3666807 () Bool)

(assert (=> b!3326669 m!3666807))

(assert (=> b!3326669 m!3666717))

(declare-fun m!3666809 () Bool)

(assert (=> b!3326669 m!3666809))

(declare-fun m!3666811 () Bool)

(assert (=> d!935391 m!3666811))

(declare-fun m!3666813 () Bool)

(assert (=> d!935391 m!3666813))

(assert (=> d!935391 m!3666717))

(declare-fun m!3666815 () Bool)

(assert (=> d!935391 m!3666815))

(assert (=> b!3326668 m!3666717))

(declare-fun m!3666817 () Bool)

(assert (=> b!3326668 m!3666817))

(assert (=> b!3326572 d!935391))

(declare-fun d!935393 () Bool)

(declare-fun lt!1130390 () BalanceConc!21672)

(assert (=> d!935393 (= (list!13190 lt!1130390) (originalCharacters!6041 separatorToken!241))))

(declare-fun dynLambda!15101 (Int TokenValue!5557) BalanceConc!21672)

(assert (=> d!935393 (= lt!1130390 (dynLambda!15101 (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (value!172281 separatorToken!241)))))

(assert (=> d!935393 (= (charsOf!3341 separatorToken!241) lt!1130390)))

(declare-fun b_lambda!93843 () Bool)

(assert (=> (not b_lambda!93843) (not d!935393)))

(declare-fun t!256678 () Bool)

(declare-fun tb!174159 () Bool)

(assert (=> (and b!3326579 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241)))) t!256678) tb!174159))

(declare-fun b!3326675 () Bool)

(declare-fun e!2068689 () Bool)

(declare-fun tp!1039735 () Bool)

(declare-fun inv!49652 (Conc!11029) Bool)

(assert (=> b!3326675 (= e!2068689 (and (inv!49652 (c!565003 (dynLambda!15101 (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (value!172281 separatorToken!241)))) tp!1039735))))

(declare-fun result!217216 () Bool)

(declare-fun inv!49653 (BalanceConc!21672) Bool)

(assert (=> tb!174159 (= result!217216 (and (inv!49653 (dynLambda!15101 (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (value!172281 separatorToken!241))) e!2068689))))

(assert (= tb!174159 b!3326675))

(declare-fun m!3666819 () Bool)

(assert (=> b!3326675 m!3666819))

(declare-fun m!3666821 () Bool)

(assert (=> tb!174159 m!3666821))

(assert (=> d!935393 t!256678))

(declare-fun b_and!229227 () Bool)

(assert (= b_and!229205 (and (=> t!256678 result!217216) b_and!229227)))

(declare-fun t!256680 () Bool)

(declare-fun tb!174161 () Bool)

(assert (=> (and b!3326581 (= (toChars!7346 (transformation!5327 (h!42066 rules!2135))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241)))) t!256680) tb!174161))

(declare-fun result!217220 () Bool)

(assert (= result!217220 result!217216))

(assert (=> d!935393 t!256680))

(declare-fun b_and!229229 () Bool)

(assert (= b_and!229209 (and (=> t!256680 result!217220) b_and!229229)))

(declare-fun t!256682 () Bool)

(declare-fun tb!174163 () Bool)

(assert (=> (and b!3326571 (= (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241)))) t!256682) tb!174163))

(declare-fun result!217222 () Bool)

(assert (= result!217222 result!217216))

(assert (=> d!935393 t!256682))

(declare-fun b_and!229231 () Bool)

(assert (= b_and!229213 (and (=> t!256682 result!217222) b_and!229231)))

(declare-fun m!3666823 () Bool)

(assert (=> d!935393 m!3666823))

(declare-fun m!3666825 () Bool)

(assert (=> d!935393 m!3666825))

(assert (=> b!3326572 d!935393))

(declare-fun d!935395 () Bool)

(assert (=> d!935395 (= (list!13190 (charsOf!3341 separatorToken!241)) (list!13192 (c!565003 (charsOf!3341 separatorToken!241))))))

(declare-fun bs!550943 () Bool)

(assert (= bs!550943 d!935395))

(declare-fun m!3666827 () Bool)

(assert (=> bs!550943 m!3666827))

(assert (=> b!3326572 d!935395))

(declare-fun lt!1130393 () BalanceConc!21672)

(declare-fun d!935397 () Bool)

(declare-fun printWithSeparatorTokenList!223 (LexerInterface!4916 List!36771 Token!10020) List!36769)

(declare-fun list!13193 (BalanceConc!21674) List!36771)

(assert (=> d!935397 (= (list!13190 lt!1130393) (printWithSeparatorTokenList!223 thiss!18206 (list!13193 lt!1130360) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!39 (LexerInterface!4916 BalanceConc!21674 Token!10020 Int BalanceConc!21672) BalanceConc!21672)

(assert (=> d!935397 (= lt!1130393 (printWithSeparatorTokenTailRec!39 thiss!18206 lt!1130360 separatorToken!241 0 (BalanceConc!21673 Empty!11029)))))

(assert (=> d!935397 (isSeparator!5327 (rule!7849 separatorToken!241))))

(assert (=> d!935397 (= (printWithSeparatorToken!107 thiss!18206 lt!1130360 separatorToken!241) lt!1130393)))

(declare-fun bs!550944 () Bool)

(assert (= bs!550944 d!935397))

(declare-fun m!3666829 () Bool)

(assert (=> bs!550944 m!3666829))

(declare-fun m!3666831 () Bool)

(assert (=> bs!550944 m!3666831))

(assert (=> bs!550944 m!3666831))

(declare-fun m!3666833 () Bool)

(assert (=> bs!550944 m!3666833))

(declare-fun m!3666835 () Bool)

(assert (=> bs!550944 m!3666835))

(assert (=> b!3326572 d!935397))

(declare-fun d!935399 () Bool)

(declare-fun res!1349248 () Bool)

(declare-fun e!2068692 () Bool)

(assert (=> d!935399 (=> (not res!1349248) (not e!2068692))))

(declare-fun rulesValid!1970 (LexerInterface!4916 List!36770) Bool)

(assert (=> d!935399 (= res!1349248 (rulesValid!1970 thiss!18206 rules!2135))))

(assert (=> d!935399 (= (rulesInvariant!4313 thiss!18206 rules!2135) e!2068692)))

(declare-fun b!3326678 () Bool)

(declare-datatypes ((List!36776 0))(
  ( (Nil!36652) (Cons!36652 (h!42072 String!41120) (t!256719 List!36776)) )
))
(declare-fun noDuplicateTag!1966 (LexerInterface!4916 List!36770 List!36776) Bool)

(assert (=> b!3326678 (= e!2068692 (noDuplicateTag!1966 thiss!18206 rules!2135 Nil!36652))))

(assert (= (and d!935399 res!1349248) b!3326678))

(declare-fun m!3666837 () Bool)

(assert (=> d!935399 m!3666837))

(declare-fun m!3666839 () Bool)

(assert (=> b!3326678 m!3666839))

(assert (=> b!3326583 d!935399))

(declare-fun d!935401 () Bool)

(assert (=> d!935401 (= (inv!49645 (tag!5879 (h!42066 rules!2135))) (= (mod (str.len (value!172255 (tag!5879 (h!42066 rules!2135)))) 2) 0))))

(assert (=> b!3326582 d!935401))

(declare-fun d!935403 () Bool)

(declare-fun res!1349251 () Bool)

(declare-fun e!2068695 () Bool)

(assert (=> d!935403 (=> (not res!1349251) (not e!2068695))))

(declare-fun semiInverseModEq!2210 (Int Int) Bool)

(assert (=> d!935403 (= res!1349251 (semiInverseModEq!2210 (toChars!7346 (transformation!5327 (h!42066 rules!2135))) (toValue!7487 (transformation!5327 (h!42066 rules!2135)))))))

(assert (=> d!935403 (= (inv!49649 (transformation!5327 (h!42066 rules!2135))) e!2068695)))

(declare-fun b!3326681 () Bool)

(declare-fun equivClasses!2109 (Int Int) Bool)

(assert (=> b!3326681 (= e!2068695 (equivClasses!2109 (toChars!7346 (transformation!5327 (h!42066 rules!2135))) (toValue!7487 (transformation!5327 (h!42066 rules!2135)))))))

(assert (= (and d!935403 res!1349251) b!3326681))

(declare-fun m!3666841 () Bool)

(assert (=> d!935403 m!3666841))

(declare-fun m!3666843 () Bool)

(assert (=> b!3326681 m!3666843))

(assert (=> b!3326582 d!935403))

(declare-fun d!935405 () Bool)

(declare-fun dynLambda!15102 (Int Token!10020) Bool)

(assert (=> d!935405 (dynLambda!15102 lambda!119676 (h!42067 tokens!494))))

(declare-fun lt!1130396 () Unit!51663)

(declare-fun choose!19271 (List!36771 Int Token!10020) Unit!51663)

(assert (=> d!935405 (= lt!1130396 (choose!19271 tokens!494 lambda!119676 (h!42067 tokens!494)))))

(declare-fun e!2068698 () Bool)

(assert (=> d!935405 e!2068698))

(declare-fun res!1349254 () Bool)

(assert (=> d!935405 (=> (not res!1349254) (not e!2068698))))

(assert (=> d!935405 (= res!1349254 (forall!7642 tokens!494 lambda!119676))))

(assert (=> d!935405 (= (forallContained!1274 tokens!494 lambda!119676 (h!42067 tokens!494)) lt!1130396)))

(declare-fun b!3326684 () Bool)

(assert (=> b!3326684 (= e!2068698 (contains!6642 tokens!494 (h!42067 tokens!494)))))

(assert (= (and d!935405 res!1349254) b!3326684))

(declare-fun b_lambda!93845 () Bool)

(assert (=> (not b_lambda!93845) (not d!935405)))

(declare-fun m!3666845 () Bool)

(assert (=> d!935405 m!3666845))

(declare-fun m!3666847 () Bool)

(assert (=> d!935405 m!3666847))

(assert (=> d!935405 m!3666667))

(assert (=> b!3326684 m!3666699))

(assert (=> b!3326560 d!935405))

(declare-fun d!935409 () Bool)

(declare-fun res!1349259 () Bool)

(declare-fun e!2068701 () Bool)

(assert (=> d!935409 (=> (not res!1349259) (not e!2068701))))

(assert (=> d!935409 (= res!1349259 (not (isEmpty!20806 (originalCharacters!6041 separatorToken!241))))))

(assert (=> d!935409 (= (inv!49648 separatorToken!241) e!2068701)))

(declare-fun b!3326689 () Bool)

(declare-fun res!1349260 () Bool)

(assert (=> b!3326689 (=> (not res!1349260) (not e!2068701))))

(assert (=> b!3326689 (= res!1349260 (= (originalCharacters!6041 separatorToken!241) (list!13190 (dynLambda!15101 (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (value!172281 separatorToken!241)))))))

(declare-fun b!3326690 () Bool)

(assert (=> b!3326690 (= e!2068701 (= (size!27700 separatorToken!241) (size!27702 (originalCharacters!6041 separatorToken!241))))))

(assert (= (and d!935409 res!1349259) b!3326689))

(assert (= (and b!3326689 res!1349260) b!3326690))

(declare-fun b_lambda!93847 () Bool)

(assert (=> (not b_lambda!93847) (not b!3326689)))

(assert (=> b!3326689 t!256678))

(declare-fun b_and!229233 () Bool)

(assert (= b_and!229227 (and (=> t!256678 result!217216) b_and!229233)))

(assert (=> b!3326689 t!256680))

(declare-fun b_and!229235 () Bool)

(assert (= b_and!229229 (and (=> t!256680 result!217220) b_and!229235)))

(assert (=> b!3326689 t!256682))

(declare-fun b_and!229237 () Bool)

(assert (= b_and!229231 (and (=> t!256682 result!217222) b_and!229237)))

(declare-fun m!3666849 () Bool)

(assert (=> d!935409 m!3666849))

(assert (=> b!3326689 m!3666825))

(assert (=> b!3326689 m!3666825))

(declare-fun m!3666851 () Bool)

(assert (=> b!3326689 m!3666851))

(declare-fun m!3666853 () Bool)

(assert (=> b!3326690 m!3666853))

(assert (=> start!310476 d!935409))

(declare-fun d!935411 () Bool)

(declare-fun res!1349265 () Bool)

(declare-fun e!2068706 () Bool)

(assert (=> d!935411 (=> res!1349265 e!2068706)))

(assert (=> d!935411 (= res!1349265 (is-Nil!36647 tokens!494))))

(assert (=> d!935411 (= (forall!7642 tokens!494 lambda!119676) e!2068706)))

(declare-fun b!3326695 () Bool)

(declare-fun e!2068707 () Bool)

(assert (=> b!3326695 (= e!2068706 e!2068707)))

(declare-fun res!1349266 () Bool)

(assert (=> b!3326695 (=> (not res!1349266) (not e!2068707))))

(assert (=> b!3326695 (= res!1349266 (dynLambda!15102 lambda!119676 (h!42067 tokens!494)))))

(declare-fun b!3326696 () Bool)

(assert (=> b!3326696 (= e!2068707 (forall!7642 (t!256670 tokens!494) lambda!119676))))

(assert (= (and d!935411 (not res!1349265)) b!3326695))

(assert (= (and b!3326695 res!1349266) b!3326696))

(declare-fun b_lambda!93849 () Bool)

(assert (=> (not b_lambda!93849) (not b!3326695)))

(assert (=> b!3326695 m!3666845))

(declare-fun m!3666855 () Bool)

(assert (=> b!3326696 m!3666855))

(assert (=> b!3326564 d!935411))

(declare-fun b!3326708 () Bool)

(declare-fun e!2068716 () Bool)

(declare-fun e!2068715 () Bool)

(assert (=> b!3326708 (= e!2068716 e!2068715)))

(declare-fun c!565016 () Bool)

(assert (=> b!3326708 (= c!565016 (is-IntegerValue!16672 (value!172281 separatorToken!241)))))

(declare-fun b!3326709 () Bool)

(declare-fun inv!16 (TokenValue!5557) Bool)

(assert (=> b!3326709 (= e!2068716 (inv!16 (value!172281 separatorToken!241)))))

(declare-fun b!3326710 () Bool)

(declare-fun inv!17 (TokenValue!5557) Bool)

(assert (=> b!3326710 (= e!2068715 (inv!17 (value!172281 separatorToken!241)))))

(declare-fun b!3326711 () Bool)

(declare-fun e!2068714 () Bool)

(declare-fun inv!15 (TokenValue!5557) Bool)

(assert (=> b!3326711 (= e!2068714 (inv!15 (value!172281 separatorToken!241)))))

(declare-fun d!935413 () Bool)

(declare-fun c!565017 () Bool)

(assert (=> d!935413 (= c!565017 (is-IntegerValue!16671 (value!172281 separatorToken!241)))))

(assert (=> d!935413 (= (inv!21 (value!172281 separatorToken!241)) e!2068716)))

(declare-fun b!3326707 () Bool)

(declare-fun res!1349269 () Bool)

(assert (=> b!3326707 (=> res!1349269 e!2068714)))

(assert (=> b!3326707 (= res!1349269 (not (is-IntegerValue!16673 (value!172281 separatorToken!241))))))

(assert (=> b!3326707 (= e!2068715 e!2068714)))

(assert (= (and d!935413 c!565017) b!3326709))

(assert (= (and d!935413 (not c!565017)) b!3326708))

(assert (= (and b!3326708 c!565016) b!3326710))

(assert (= (and b!3326708 (not c!565016)) b!3326707))

(assert (= (and b!3326707 (not res!1349269)) b!3326711))

(declare-fun m!3666857 () Bool)

(assert (=> b!3326709 m!3666857))

(declare-fun m!3666859 () Bool)

(assert (=> b!3326710 m!3666859))

(declare-fun m!3666861 () Bool)

(assert (=> b!3326711 m!3666861))

(assert (=> b!3326575 d!935413))

(declare-fun d!935415 () Bool)

(assert (=> d!935415 (= (inv!49645 (tag!5879 (rule!7849 (h!42067 tokens!494)))) (= (mod (str.len (value!172255 (tag!5879 (rule!7849 (h!42067 tokens!494))))) 2) 0))))

(assert (=> b!3326574 d!935415))

(declare-fun d!935417 () Bool)

(declare-fun res!1349270 () Bool)

(declare-fun e!2068717 () Bool)

(assert (=> d!935417 (=> (not res!1349270) (not e!2068717))))

(assert (=> d!935417 (= res!1349270 (semiInverseModEq!2210 (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (toValue!7487 (transformation!5327 (rule!7849 (h!42067 tokens!494))))))))

(assert (=> d!935417 (= (inv!49649 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) e!2068717)))

(declare-fun b!3326712 () Bool)

(assert (=> b!3326712 (= e!2068717 (equivClasses!2109 (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (toValue!7487 (transformation!5327 (rule!7849 (h!42067 tokens!494))))))))

(assert (= (and d!935417 res!1349270) b!3326712))

(declare-fun m!3666863 () Bool)

(assert (=> d!935417 m!3666863))

(declare-fun m!3666865 () Bool)

(assert (=> b!3326712 m!3666865))

(assert (=> b!3326574 d!935417))

(declare-fun d!935419 () Bool)

(declare-fun res!1349271 () Bool)

(declare-fun e!2068718 () Bool)

(assert (=> d!935419 (=> (not res!1349271) (not e!2068718))))

(assert (=> d!935419 (= res!1349271 (not (isEmpty!20806 (originalCharacters!6041 (h!42067 tokens!494)))))))

(assert (=> d!935419 (= (inv!49648 (h!42067 tokens!494)) e!2068718)))

(declare-fun b!3326713 () Bool)

(declare-fun res!1349272 () Bool)

(assert (=> b!3326713 (=> (not res!1349272) (not e!2068718))))

(assert (=> b!3326713 (= res!1349272 (= (originalCharacters!6041 (h!42067 tokens!494)) (list!13190 (dynLambda!15101 (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (value!172281 (h!42067 tokens!494))))))))

(declare-fun b!3326714 () Bool)

(assert (=> b!3326714 (= e!2068718 (= (size!27700 (h!42067 tokens!494)) (size!27702 (originalCharacters!6041 (h!42067 tokens!494)))))))

(assert (= (and d!935419 res!1349271) b!3326713))

(assert (= (and b!3326713 res!1349272) b!3326714))

(declare-fun b_lambda!93851 () Bool)

(assert (=> (not b_lambda!93851) (not b!3326713)))

(declare-fun t!256684 () Bool)

(declare-fun tb!174165 () Bool)

(assert (=> (and b!3326579 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494))))) t!256684) tb!174165))

(declare-fun b!3326715 () Bool)

(declare-fun e!2068719 () Bool)

(declare-fun tp!1039736 () Bool)

(assert (=> b!3326715 (= e!2068719 (and (inv!49652 (c!565003 (dynLambda!15101 (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (value!172281 (h!42067 tokens!494))))) tp!1039736))))

(declare-fun result!217224 () Bool)

(assert (=> tb!174165 (= result!217224 (and (inv!49653 (dynLambda!15101 (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (value!172281 (h!42067 tokens!494)))) e!2068719))))

(assert (= tb!174165 b!3326715))

(declare-fun m!3666867 () Bool)

(assert (=> b!3326715 m!3666867))

(declare-fun m!3666869 () Bool)

(assert (=> tb!174165 m!3666869))

(assert (=> b!3326713 t!256684))

(declare-fun b_and!229239 () Bool)

(assert (= b_and!229233 (and (=> t!256684 result!217224) b_and!229239)))

(declare-fun tb!174167 () Bool)

(declare-fun t!256686 () Bool)

(assert (=> (and b!3326581 (= (toChars!7346 (transformation!5327 (h!42066 rules!2135))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494))))) t!256686) tb!174167))

(declare-fun result!217226 () Bool)

(assert (= result!217226 result!217224))

(assert (=> b!3326713 t!256686))

(declare-fun b_and!229241 () Bool)

(assert (= b_and!229235 (and (=> t!256686 result!217226) b_and!229241)))

(declare-fun tb!174169 () Bool)

(declare-fun t!256688 () Bool)

(assert (=> (and b!3326571 (= (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494))))) t!256688) tb!174169))

(declare-fun result!217228 () Bool)

(assert (= result!217228 result!217224))

(assert (=> b!3326713 t!256688))

(declare-fun b_and!229243 () Bool)

(assert (= b_and!229237 (and (=> t!256688 result!217228) b_and!229243)))

(declare-fun m!3666871 () Bool)

(assert (=> d!935419 m!3666871))

(declare-fun m!3666873 () Bool)

(assert (=> b!3326713 m!3666873))

(assert (=> b!3326713 m!3666873))

(declare-fun m!3666875 () Bool)

(assert (=> b!3326713 m!3666875))

(declare-fun m!3666877 () Bool)

(assert (=> b!3326714 m!3666877))

(assert (=> b!3326563 d!935419))

(declare-fun d!935421 () Bool)

(declare-fun lt!1130399 () Bool)

(declare-fun isEmpty!20810 (List!36771) Bool)

(assert (=> d!935421 (= lt!1130399 (isEmpty!20810 (list!13193 (_1!21208 (lex!2242 thiss!18206 rules!2135 (seqFromList!3707 lt!1130357))))))))

(declare-fun isEmpty!20811 (Conc!11030) Bool)

(assert (=> d!935421 (= lt!1130399 (isEmpty!20811 (c!565004 (_1!21208 (lex!2242 thiss!18206 rules!2135 (seqFromList!3707 lt!1130357))))))))

(assert (=> d!935421 (= (isEmpty!20805 (_1!21208 (lex!2242 thiss!18206 rules!2135 (seqFromList!3707 lt!1130357)))) lt!1130399)))

(declare-fun bs!550945 () Bool)

(assert (= bs!550945 d!935421))

(declare-fun m!3666879 () Bool)

(assert (=> bs!550945 m!3666879))

(assert (=> bs!550945 m!3666879))

(declare-fun m!3666881 () Bool)

(assert (=> bs!550945 m!3666881))

(declare-fun m!3666883 () Bool)

(assert (=> bs!550945 m!3666883))

(assert (=> b!3326562 d!935421))

(declare-fun b!3326742 () Bool)

(declare-fun res!1349286 () Bool)

(declare-fun e!2068738 () Bool)

(assert (=> b!3326742 (=> (not res!1349286) (not e!2068738))))

(declare-fun lt!1130429 () tuple2!36148)

(declare-datatypes ((tuple2!36152 0))(
  ( (tuple2!36153 (_1!21210 List!36771) (_2!21210 List!36769)) )
))
(declare-fun lexList!1373 (LexerInterface!4916 List!36770 List!36769) tuple2!36152)

(assert (=> b!3326742 (= res!1349286 (= (list!13193 (_1!21208 lt!1130429)) (_1!21210 (lexList!1373 thiss!18206 rules!2135 (list!13190 (seqFromList!3707 lt!1130357))))))))

(declare-fun b!3326743 () Bool)

(declare-fun e!2068739 () Bool)

(declare-fun e!2068737 () Bool)

(assert (=> b!3326743 (= e!2068739 e!2068737)))

(declare-fun res!1349287 () Bool)

(declare-fun size!27703 (BalanceConc!21672) Int)

(assert (=> b!3326743 (= res!1349287 (< (size!27703 (_2!21208 lt!1130429)) (size!27703 (seqFromList!3707 lt!1130357))))))

(assert (=> b!3326743 (=> (not res!1349287) (not e!2068737))))

(declare-fun b!3326744 () Bool)

(assert (=> b!3326744 (= e!2068739 (= (_2!21208 lt!1130429) (seqFromList!3707 lt!1130357)))))

(declare-fun d!935423 () Bool)

(assert (=> d!935423 e!2068738))

(declare-fun res!1349285 () Bool)

(assert (=> d!935423 (=> (not res!1349285) (not e!2068738))))

(assert (=> d!935423 (= res!1349285 e!2068739)))

(declare-fun c!565025 () Bool)

(declare-fun size!27704 (BalanceConc!21674) Int)

(assert (=> d!935423 (= c!565025 (> (size!27704 (_1!21208 lt!1130429)) 0))))

(declare-fun lexTailRecV2!983 (LexerInterface!4916 List!36770 BalanceConc!21672 BalanceConc!21672 BalanceConc!21672 BalanceConc!21674) tuple2!36148)

(assert (=> d!935423 (= lt!1130429 (lexTailRecV2!983 thiss!18206 rules!2135 (seqFromList!3707 lt!1130357) (BalanceConc!21673 Empty!11029) (seqFromList!3707 lt!1130357) (BalanceConc!21675 Empty!11030)))))

(assert (=> d!935423 (= (lex!2242 thiss!18206 rules!2135 (seqFromList!3707 lt!1130357)) lt!1130429)))

(declare-fun b!3326745 () Bool)

(assert (=> b!3326745 (= e!2068738 (= (list!13190 (_2!21208 lt!1130429)) (_2!21210 (lexList!1373 thiss!18206 rules!2135 (list!13190 (seqFromList!3707 lt!1130357))))))))

(declare-fun b!3326746 () Bool)

(assert (=> b!3326746 (= e!2068737 (not (isEmpty!20805 (_1!21208 lt!1130429))))))

(assert (= (and d!935423 c!565025) b!3326743))

(assert (= (and d!935423 (not c!565025)) b!3326744))

(assert (= (and b!3326743 res!1349287) b!3326746))

(assert (= (and d!935423 res!1349285) b!3326742))

(assert (= (and b!3326742 res!1349286) b!3326745))

(declare-fun m!3666933 () Bool)

(assert (=> b!3326745 m!3666933))

(assert (=> b!3326745 m!3666661))

(declare-fun m!3666935 () Bool)

(assert (=> b!3326745 m!3666935))

(assert (=> b!3326745 m!3666935))

(declare-fun m!3666937 () Bool)

(assert (=> b!3326745 m!3666937))

(declare-fun m!3666939 () Bool)

(assert (=> b!3326743 m!3666939))

(assert (=> b!3326743 m!3666661))

(declare-fun m!3666941 () Bool)

(assert (=> b!3326743 m!3666941))

(declare-fun m!3666943 () Bool)

(assert (=> b!3326742 m!3666943))

(assert (=> b!3326742 m!3666661))

(assert (=> b!3326742 m!3666935))

(assert (=> b!3326742 m!3666935))

(assert (=> b!3326742 m!3666937))

(declare-fun m!3666945 () Bool)

(assert (=> d!935423 m!3666945))

(assert (=> d!935423 m!3666661))

(assert (=> d!935423 m!3666661))

(declare-fun m!3666947 () Bool)

(assert (=> d!935423 m!3666947))

(declare-fun m!3666949 () Bool)

(assert (=> b!3326746 m!3666949))

(assert (=> b!3326562 d!935423))

(declare-fun d!935433 () Bool)

(declare-fun fromListB!1636 (List!36769) BalanceConc!21672)

(assert (=> d!935433 (= (seqFromList!3707 lt!1130357) (fromListB!1636 lt!1130357))))

(declare-fun bs!550948 () Bool)

(assert (= bs!550948 d!935433))

(declare-fun m!3666959 () Bool)

(assert (=> bs!550948 m!3666959))

(assert (=> b!3326562 d!935433))

(declare-fun d!935437 () Bool)

(assert (=> d!935437 (= (list!13190 (charsOf!3341 (h!42067 tokens!494))) (list!13192 (c!565003 (charsOf!3341 (h!42067 tokens!494)))))))

(declare-fun bs!550949 () Bool)

(assert (= bs!550949 d!935437))

(declare-fun m!3666961 () Bool)

(assert (=> bs!550949 m!3666961))

(assert (=> b!3326573 d!935437))

(declare-fun d!935439 () Bool)

(declare-fun lt!1130430 () BalanceConc!21672)

(assert (=> d!935439 (= (list!13190 lt!1130430) (originalCharacters!6041 (h!42067 tokens!494)))))

(assert (=> d!935439 (= lt!1130430 (dynLambda!15101 (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (value!172281 (h!42067 tokens!494))))))

(assert (=> d!935439 (= (charsOf!3341 (h!42067 tokens!494)) lt!1130430)))

(declare-fun b_lambda!93853 () Bool)

(assert (=> (not b_lambda!93853) (not d!935439)))

(assert (=> d!935439 t!256684))

(declare-fun b_and!229245 () Bool)

(assert (= b_and!229239 (and (=> t!256684 result!217224) b_and!229245)))

(assert (=> d!935439 t!256686))

(declare-fun b_and!229247 () Bool)

(assert (= b_and!229241 (and (=> t!256686 result!217226) b_and!229247)))

(assert (=> d!935439 t!256688))

(declare-fun b_and!229249 () Bool)

(assert (= b_and!229243 (and (=> t!256688 result!217228) b_and!229249)))

(declare-fun m!3666963 () Bool)

(assert (=> d!935439 m!3666963))

(assert (=> d!935439 m!3666873))

(assert (=> b!3326573 d!935439))

(declare-fun d!935441 () Bool)

(declare-fun lt!1130438 () Bool)

(declare-fun e!2068746 () Bool)

(assert (=> d!935441 (= lt!1130438 e!2068746)))

(declare-fun res!1349296 () Bool)

(assert (=> d!935441 (=> (not res!1349296) (not e!2068746))))

(assert (=> d!935441 (= res!1349296 (= (list!13193 (_1!21208 (lex!2242 thiss!18206 rules!2135 (print!1981 thiss!18206 (singletonSeq!2423 (h!42067 tokens!494)))))) (list!13193 (singletonSeq!2423 (h!42067 tokens!494)))))))

(declare-fun e!2068745 () Bool)

(assert (=> d!935441 (= lt!1130438 e!2068745)))

(declare-fun res!1349295 () Bool)

(assert (=> d!935441 (=> (not res!1349295) (not e!2068745))))

(declare-fun lt!1130439 () tuple2!36148)

(assert (=> d!935441 (= res!1349295 (= (size!27704 (_1!21208 lt!1130439)) 1))))

(assert (=> d!935441 (= lt!1130439 (lex!2242 thiss!18206 rules!2135 (print!1981 thiss!18206 (singletonSeq!2423 (h!42067 tokens!494)))))))

(assert (=> d!935441 (not (isEmpty!20804 rules!2135))))

(assert (=> d!935441 (= (rulesProduceIndividualToken!2408 thiss!18206 rules!2135 (h!42067 tokens!494)) lt!1130438)))

(declare-fun b!3326755 () Bool)

(declare-fun res!1349294 () Bool)

(assert (=> b!3326755 (=> (not res!1349294) (not e!2068745))))

(declare-fun apply!8458 (BalanceConc!21674 Int) Token!10020)

(assert (=> b!3326755 (= res!1349294 (= (apply!8458 (_1!21208 lt!1130439) 0) (h!42067 tokens!494)))))

(declare-fun b!3326756 () Bool)

(declare-fun isEmpty!20812 (BalanceConc!21672) Bool)

(assert (=> b!3326756 (= e!2068745 (isEmpty!20812 (_2!21208 lt!1130439)))))

(declare-fun b!3326757 () Bool)

(assert (=> b!3326757 (= e!2068746 (isEmpty!20812 (_2!21208 (lex!2242 thiss!18206 rules!2135 (print!1981 thiss!18206 (singletonSeq!2423 (h!42067 tokens!494)))))))))

(assert (= (and d!935441 res!1349295) b!3326755))

(assert (= (and b!3326755 res!1349294) b!3326756))

(assert (= (and d!935441 res!1349296) b!3326757))

(declare-fun m!3666971 () Bool)

(assert (=> d!935441 m!3666971))

(declare-fun m!3666973 () Bool)

(assert (=> d!935441 m!3666973))

(assert (=> d!935441 m!3666671))

(declare-fun m!3666975 () Bool)

(assert (=> d!935441 m!3666975))

(assert (=> d!935441 m!3666693))

(assert (=> d!935441 m!3666671))

(declare-fun m!3666977 () Bool)

(assert (=> d!935441 m!3666977))

(assert (=> d!935441 m!3666671))

(assert (=> d!935441 m!3666971))

(declare-fun m!3666979 () Bool)

(assert (=> d!935441 m!3666979))

(declare-fun m!3666981 () Bool)

(assert (=> b!3326755 m!3666981))

(declare-fun m!3666983 () Bool)

(assert (=> b!3326756 m!3666983))

(assert (=> b!3326757 m!3666671))

(assert (=> b!3326757 m!3666671))

(assert (=> b!3326757 m!3666971))

(assert (=> b!3326757 m!3666971))

(assert (=> b!3326757 m!3666973))

(declare-fun m!3666985 () Bool)

(assert (=> b!3326757 m!3666985))

(assert (=> b!3326567 d!935441))

(declare-fun b!3326759 () Bool)

(declare-fun e!2068749 () Bool)

(declare-fun e!2068748 () Bool)

(assert (=> b!3326759 (= e!2068749 e!2068748)))

(declare-fun c!565027 () Bool)

(assert (=> b!3326759 (= c!565027 (is-IntegerValue!16672 (value!172281 (h!42067 tokens!494))))))

(declare-fun b!3326760 () Bool)

(assert (=> b!3326760 (= e!2068749 (inv!16 (value!172281 (h!42067 tokens!494))))))

(declare-fun b!3326761 () Bool)

(assert (=> b!3326761 (= e!2068748 (inv!17 (value!172281 (h!42067 tokens!494))))))

(declare-fun b!3326762 () Bool)

(declare-fun e!2068747 () Bool)

(assert (=> b!3326762 (= e!2068747 (inv!15 (value!172281 (h!42067 tokens!494))))))

(declare-fun d!935445 () Bool)

(declare-fun c!565028 () Bool)

(assert (=> d!935445 (= c!565028 (is-IntegerValue!16671 (value!172281 (h!42067 tokens!494))))))

(assert (=> d!935445 (= (inv!21 (value!172281 (h!42067 tokens!494))) e!2068749)))

(declare-fun b!3326758 () Bool)

(declare-fun res!1349297 () Bool)

(assert (=> b!3326758 (=> res!1349297 e!2068747)))

(assert (=> b!3326758 (= res!1349297 (not (is-IntegerValue!16673 (value!172281 (h!42067 tokens!494)))))))

(assert (=> b!3326758 (= e!2068748 e!2068747)))

(assert (= (and d!935445 c!565028) b!3326760))

(assert (= (and d!935445 (not c!565028)) b!3326759))

(assert (= (and b!3326759 c!565027) b!3326761))

(assert (= (and b!3326759 (not c!565027)) b!3326758))

(assert (= (and b!3326758 (not res!1349297)) b!3326762))

(declare-fun m!3666987 () Bool)

(assert (=> b!3326760 m!3666987))

(declare-fun m!3666989 () Bool)

(assert (=> b!3326761 m!3666989))

(declare-fun m!3666991 () Bool)

(assert (=> b!3326762 m!3666991))

(assert (=> b!3326566 d!935445))

(declare-fun d!935447 () Bool)

(declare-fun lt!1130442 () Bool)

(declare-fun content!5003 (List!36771) (Set Token!10020))

(assert (=> d!935447 (= lt!1130442 (set.member (h!42067 tokens!494) (content!5003 tokens!494)))))

(declare-fun e!2068755 () Bool)

(assert (=> d!935447 (= lt!1130442 e!2068755)))

(declare-fun res!1349302 () Bool)

(assert (=> d!935447 (=> (not res!1349302) (not e!2068755))))

(assert (=> d!935447 (= res!1349302 (is-Cons!36647 tokens!494))))

(assert (=> d!935447 (= (contains!6642 tokens!494 (h!42067 tokens!494)) lt!1130442)))

(declare-fun b!3326767 () Bool)

(declare-fun e!2068754 () Bool)

(assert (=> b!3326767 (= e!2068755 e!2068754)))

(declare-fun res!1349303 () Bool)

(assert (=> b!3326767 (=> res!1349303 e!2068754)))

(assert (=> b!3326767 (= res!1349303 (= (h!42067 tokens!494) (h!42067 tokens!494)))))

(declare-fun b!3326768 () Bool)

(assert (=> b!3326768 (= e!2068754 (contains!6642 (t!256670 tokens!494) (h!42067 tokens!494)))))

(assert (= (and d!935447 res!1349302) b!3326767))

(assert (= (and b!3326767 (not res!1349303)) b!3326768))

(declare-fun m!3666993 () Bool)

(assert (=> d!935447 m!3666993))

(declare-fun m!3666995 () Bool)

(assert (=> d!935447 m!3666995))

(declare-fun m!3666997 () Bool)

(assert (=> b!3326768 m!3666997))

(assert (=> b!3326577 d!935447))

(declare-fun d!935449 () Bool)

(assert (=> d!935449 (= (isEmpty!20806 (getSuffix!1421 lt!1130357 lt!1130357)) (is-Nil!36645 (getSuffix!1421 lt!1130357 lt!1130357)))))

(assert (=> b!3326577 d!935449))

(declare-fun d!935451 () Bool)

(declare-fun lt!1130445 () List!36769)

(assert (=> d!935451 (= (++!8902 lt!1130357 lt!1130445) lt!1130357)))

(declare-fun e!2068758 () List!36769)

(assert (=> d!935451 (= lt!1130445 e!2068758)))

(declare-fun c!565031 () Bool)

(assert (=> d!935451 (= c!565031 (is-Cons!36645 lt!1130357))))

(assert (=> d!935451 (>= (size!27702 lt!1130357) (size!27702 lt!1130357))))

(assert (=> d!935451 (= (getSuffix!1421 lt!1130357 lt!1130357) lt!1130445)))

(declare-fun b!3326773 () Bool)

(declare-fun tail!5290 (List!36769) List!36769)

(assert (=> b!3326773 (= e!2068758 (getSuffix!1421 (tail!5290 lt!1130357) (t!256668 lt!1130357)))))

(declare-fun b!3326774 () Bool)

(assert (=> b!3326774 (= e!2068758 lt!1130357)))

(assert (= (and d!935451 c!565031) b!3326773))

(assert (= (and d!935451 (not c!565031)) b!3326774))

(declare-fun m!3666999 () Bool)

(assert (=> d!935451 m!3666999))

(assert (=> d!935451 m!3666807))

(assert (=> d!935451 m!3666807))

(declare-fun m!3667001 () Bool)

(assert (=> b!3326773 m!3667001))

(assert (=> b!3326773 m!3667001))

(declare-fun m!3667003 () Bool)

(assert (=> b!3326773 m!3667003))

(assert (=> b!3326577 d!935451))

(declare-fun d!935453 () Bool)

(assert (=> d!935453 (isEmpty!20806 (getSuffix!1421 lt!1130357 lt!1130357))))

(declare-fun lt!1130448 () Unit!51663)

(declare-fun choose!19272 (List!36769) Unit!51663)

(assert (=> d!935453 (= lt!1130448 (choose!19272 lt!1130357))))

(assert (=> d!935453 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!79 lt!1130357) lt!1130448)))

(declare-fun bs!550951 () Bool)

(assert (= bs!550951 d!935453))

(assert (=> bs!550951 m!3666701))

(assert (=> bs!550951 m!3666701))

(assert (=> bs!550951 m!3666703))

(declare-fun m!3667005 () Bool)

(assert (=> bs!550951 m!3667005))

(assert (=> b!3326577 d!935453))

(declare-fun d!935455 () Bool)

(declare-fun lt!1130449 () Bool)

(declare-fun e!2068760 () Bool)

(assert (=> d!935455 (= lt!1130449 e!2068760)))

(declare-fun res!1349306 () Bool)

(assert (=> d!935455 (=> (not res!1349306) (not e!2068760))))

(assert (=> d!935455 (= res!1349306 (= (list!13193 (_1!21208 (lex!2242 thiss!18206 rules!2135 (print!1981 thiss!18206 (singletonSeq!2423 separatorToken!241))))) (list!13193 (singletonSeq!2423 separatorToken!241))))))

(declare-fun e!2068759 () Bool)

(assert (=> d!935455 (= lt!1130449 e!2068759)))

(declare-fun res!1349305 () Bool)

(assert (=> d!935455 (=> (not res!1349305) (not e!2068759))))

(declare-fun lt!1130450 () tuple2!36148)

(assert (=> d!935455 (= res!1349305 (= (size!27704 (_1!21208 lt!1130450)) 1))))

(assert (=> d!935455 (= lt!1130450 (lex!2242 thiss!18206 rules!2135 (print!1981 thiss!18206 (singletonSeq!2423 separatorToken!241))))))

(assert (=> d!935455 (not (isEmpty!20804 rules!2135))))

(assert (=> d!935455 (= (rulesProduceIndividualToken!2408 thiss!18206 rules!2135 separatorToken!241) lt!1130449)))

(declare-fun b!3326775 () Bool)

(declare-fun res!1349304 () Bool)

(assert (=> b!3326775 (=> (not res!1349304) (not e!2068759))))

(assert (=> b!3326775 (= res!1349304 (= (apply!8458 (_1!21208 lt!1130450) 0) separatorToken!241))))

(declare-fun b!3326776 () Bool)

(assert (=> b!3326776 (= e!2068759 (isEmpty!20812 (_2!21208 lt!1130450)))))

(declare-fun b!3326777 () Bool)

(assert (=> b!3326777 (= e!2068760 (isEmpty!20812 (_2!21208 (lex!2242 thiss!18206 rules!2135 (print!1981 thiss!18206 (singletonSeq!2423 separatorToken!241))))))))

(assert (= (and d!935455 res!1349305) b!3326775))

(assert (= (and b!3326775 res!1349304) b!3326776))

(assert (= (and d!935455 res!1349306) b!3326777))

(declare-fun m!3667007 () Bool)

(assert (=> d!935455 m!3667007))

(declare-fun m!3667009 () Bool)

(assert (=> d!935455 m!3667009))

(declare-fun m!3667011 () Bool)

(assert (=> d!935455 m!3667011))

(declare-fun m!3667013 () Bool)

(assert (=> d!935455 m!3667013))

(assert (=> d!935455 m!3666693))

(assert (=> d!935455 m!3667011))

(declare-fun m!3667015 () Bool)

(assert (=> d!935455 m!3667015))

(assert (=> d!935455 m!3667011))

(assert (=> d!935455 m!3667007))

(declare-fun m!3667017 () Bool)

(assert (=> d!935455 m!3667017))

(declare-fun m!3667019 () Bool)

(assert (=> b!3326775 m!3667019))

(declare-fun m!3667021 () Bool)

(assert (=> b!3326776 m!3667021))

(assert (=> b!3326777 m!3667011))

(assert (=> b!3326777 m!3667011))

(assert (=> b!3326777 m!3667007))

(assert (=> b!3326777 m!3667007))

(assert (=> b!3326777 m!3667009))

(declare-fun m!3667023 () Bool)

(assert (=> b!3326777 m!3667023))

(assert (=> b!3326576 d!935455))

(declare-fun d!935457 () Bool)

(assert (=> d!935457 (= (inv!49645 (tag!5879 (rule!7849 separatorToken!241))) (= (mod (str.len (value!172255 (tag!5879 (rule!7849 separatorToken!241)))) 2) 0))))

(assert (=> b!3326565 d!935457))

(declare-fun d!935459 () Bool)

(declare-fun res!1349307 () Bool)

(declare-fun e!2068761 () Bool)

(assert (=> d!935459 (=> (not res!1349307) (not e!2068761))))

(assert (=> d!935459 (= res!1349307 (semiInverseModEq!2210 (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (toValue!7487 (transformation!5327 (rule!7849 separatorToken!241)))))))

(assert (=> d!935459 (= (inv!49649 (transformation!5327 (rule!7849 separatorToken!241))) e!2068761)))

(declare-fun b!3326778 () Bool)

(assert (=> b!3326778 (= e!2068761 (equivClasses!2109 (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (toValue!7487 (transformation!5327 (rule!7849 separatorToken!241)))))))

(assert (= (and d!935459 res!1349307) b!3326778))

(declare-fun m!3667025 () Bool)

(assert (=> d!935459 m!3667025))

(declare-fun m!3667027 () Bool)

(assert (=> b!3326778 m!3667027))

(assert (=> b!3326565 d!935459))

(declare-fun d!935461 () Bool)

(declare-fun lt!1130453 () BalanceConc!21672)

(assert (=> d!935461 (= (list!13190 lt!1130453) (printList!1464 thiss!18206 (list!13193 lt!1130359)))))

(assert (=> d!935461 (= lt!1130453 (printTailRec!1411 thiss!18206 lt!1130359 0 (BalanceConc!21673 Empty!11029)))))

(assert (=> d!935461 (= (print!1981 thiss!18206 lt!1130359) lt!1130453)))

(declare-fun bs!550952 () Bool)

(assert (= bs!550952 d!935461))

(declare-fun m!3667029 () Bool)

(assert (=> bs!550952 m!3667029))

(declare-fun m!3667031 () Bool)

(assert (=> bs!550952 m!3667031))

(assert (=> bs!550952 m!3667031))

(declare-fun m!3667033 () Bool)

(assert (=> bs!550952 m!3667033))

(assert (=> bs!550952 m!3666673))

(assert (=> b!3326580 d!935461))

(declare-fun d!935463 () Bool)

(declare-fun lt!1130471 () BalanceConc!21672)

(declare-fun printListTailRec!615 (LexerInterface!4916 List!36771 List!36769) List!36769)

(declare-fun dropList!1132 (BalanceConc!21674 Int) List!36771)

(assert (=> d!935463 (= (list!13190 lt!1130471) (printListTailRec!615 thiss!18206 (dropList!1132 lt!1130359 0) (list!13190 (BalanceConc!21673 Empty!11029))))))

(declare-fun e!2068767 () BalanceConc!21672)

(assert (=> d!935463 (= lt!1130471 e!2068767)))

(declare-fun c!565034 () Bool)

(assert (=> d!935463 (= c!565034 (>= 0 (size!27704 lt!1130359)))))

(declare-fun e!2068766 () Bool)

(assert (=> d!935463 e!2068766))

(declare-fun res!1349310 () Bool)

(assert (=> d!935463 (=> (not res!1349310) (not e!2068766))))

(assert (=> d!935463 (= res!1349310 (>= 0 0))))

(assert (=> d!935463 (= (printTailRec!1411 thiss!18206 lt!1130359 0 (BalanceConc!21673 Empty!11029)) lt!1130471)))

(declare-fun b!3326785 () Bool)

(assert (=> b!3326785 (= e!2068766 (<= 0 (size!27704 lt!1130359)))))

(declare-fun b!3326786 () Bool)

(assert (=> b!3326786 (= e!2068767 (BalanceConc!21673 Empty!11029))))

(declare-fun b!3326787 () Bool)

(declare-fun ++!8904 (BalanceConc!21672 BalanceConc!21672) BalanceConc!21672)

(assert (=> b!3326787 (= e!2068767 (printTailRec!1411 thiss!18206 lt!1130359 (+ 0 1) (++!8904 (BalanceConc!21673 Empty!11029) (charsOf!3341 (apply!8458 lt!1130359 0)))))))

(declare-fun lt!1130473 () List!36771)

(assert (=> b!3326787 (= lt!1130473 (list!13193 lt!1130359))))

(declare-fun lt!1130470 () Unit!51663)

(declare-fun lemmaDropApply!1090 (List!36771 Int) Unit!51663)

(assert (=> b!3326787 (= lt!1130470 (lemmaDropApply!1090 lt!1130473 0))))

(declare-fun head!7156 (List!36771) Token!10020)

(declare-fun drop!1924 (List!36771 Int) List!36771)

(declare-fun apply!8459 (List!36771 Int) Token!10020)

(assert (=> b!3326787 (= (head!7156 (drop!1924 lt!1130473 0)) (apply!8459 lt!1130473 0))))

(declare-fun lt!1130468 () Unit!51663)

(assert (=> b!3326787 (= lt!1130468 lt!1130470)))

(declare-fun lt!1130472 () List!36771)

(assert (=> b!3326787 (= lt!1130472 (list!13193 lt!1130359))))

(declare-fun lt!1130469 () Unit!51663)

(declare-fun lemmaDropTail!974 (List!36771 Int) Unit!51663)

(assert (=> b!3326787 (= lt!1130469 (lemmaDropTail!974 lt!1130472 0))))

(declare-fun tail!5291 (List!36771) List!36771)

(assert (=> b!3326787 (= (tail!5291 (drop!1924 lt!1130472 0)) (drop!1924 lt!1130472 (+ 0 1)))))

(declare-fun lt!1130474 () Unit!51663)

(assert (=> b!3326787 (= lt!1130474 lt!1130469)))

(assert (= (and d!935463 res!1349310) b!3326785))

(assert (= (and d!935463 c!565034) b!3326786))

(assert (= (and d!935463 (not c!565034)) b!3326787))

(declare-fun m!3667035 () Bool)

(assert (=> d!935463 m!3667035))

(declare-fun m!3667037 () Bool)

(assert (=> d!935463 m!3667037))

(assert (=> d!935463 m!3667037))

(declare-fun m!3667039 () Bool)

(assert (=> d!935463 m!3667039))

(declare-fun m!3667041 () Bool)

(assert (=> d!935463 m!3667041))

(assert (=> d!935463 m!3667039))

(declare-fun m!3667043 () Bool)

(assert (=> d!935463 m!3667043))

(assert (=> b!3326785 m!3667043))

(declare-fun m!3667045 () Bool)

(assert (=> b!3326787 m!3667045))

(declare-fun m!3667047 () Bool)

(assert (=> b!3326787 m!3667047))

(assert (=> b!3326787 m!3667031))

(declare-fun m!3667049 () Bool)

(assert (=> b!3326787 m!3667049))

(declare-fun m!3667051 () Bool)

(assert (=> b!3326787 m!3667051))

(declare-fun m!3667053 () Bool)

(assert (=> b!3326787 m!3667053))

(declare-fun m!3667055 () Bool)

(assert (=> b!3326787 m!3667055))

(assert (=> b!3326787 m!3667045))

(declare-fun m!3667057 () Bool)

(assert (=> b!3326787 m!3667057))

(declare-fun m!3667059 () Bool)

(assert (=> b!3326787 m!3667059))

(declare-fun m!3667061 () Bool)

(assert (=> b!3326787 m!3667061))

(assert (=> b!3326787 m!3667047))

(assert (=> b!3326787 m!3667049))

(declare-fun m!3667063 () Bool)

(assert (=> b!3326787 m!3667063))

(assert (=> b!3326787 m!3667063))

(declare-fun m!3667065 () Bool)

(assert (=> b!3326787 m!3667065))

(declare-fun m!3667067 () Bool)

(assert (=> b!3326787 m!3667067))

(assert (=> b!3326787 m!3667057))

(assert (=> b!3326580 d!935463))

(declare-fun d!935465 () Bool)

(assert (=> d!935465 (= (list!13190 lt!1130353) (list!13192 (c!565003 lt!1130353)))))

(declare-fun bs!550953 () Bool)

(assert (= bs!550953 d!935465))

(declare-fun m!3667069 () Bool)

(assert (=> bs!550953 m!3667069))

(assert (=> b!3326580 d!935465))

(declare-fun d!935467 () Bool)

(declare-fun e!2068774 () Bool)

(assert (=> d!935467 e!2068774))

(declare-fun res!1349315 () Bool)

(assert (=> d!935467 (=> (not res!1349315) (not e!2068774))))

(declare-fun lt!1130479 () BalanceConc!21674)

(assert (=> d!935467 (= res!1349315 (= (list!13193 lt!1130479) (Cons!36647 (h!42067 tokens!494) Nil!36647)))))

(declare-fun singleton!1047 (Token!10020) BalanceConc!21674)

(assert (=> d!935467 (= lt!1130479 (singleton!1047 (h!42067 tokens!494)))))

(assert (=> d!935467 (= (singletonSeq!2423 (h!42067 tokens!494)) lt!1130479)))

(declare-fun b!3326794 () Bool)

(declare-fun isBalanced!3308 (Conc!11030) Bool)

(assert (=> b!3326794 (= e!2068774 (isBalanced!3308 (c!565004 lt!1130479)))))

(assert (= (and d!935467 res!1349315) b!3326794))

(declare-fun m!3667071 () Bool)

(assert (=> d!935467 m!3667071))

(declare-fun m!3667073 () Bool)

(assert (=> d!935467 m!3667073))

(declare-fun m!3667075 () Bool)

(assert (=> b!3326794 m!3667075))

(assert (=> b!3326580 d!935467))

(declare-fun d!935469 () Bool)

(declare-fun c!565039 () Bool)

(assert (=> d!935469 (= c!565039 (is-Cons!36647 (Cons!36647 (h!42067 tokens!494) Nil!36647)))))

(declare-fun e!2068779 () List!36769)

(assert (=> d!935469 (= (printList!1464 thiss!18206 (Cons!36647 (h!42067 tokens!494) Nil!36647)) e!2068779)))

(declare-fun b!3326805 () Bool)

(assert (=> b!3326805 (= e!2068779 (++!8902 (list!13190 (charsOf!3341 (h!42067 (Cons!36647 (h!42067 tokens!494) Nil!36647)))) (printList!1464 thiss!18206 (t!256670 (Cons!36647 (h!42067 tokens!494) Nil!36647)))))))

(declare-fun b!3326806 () Bool)

(assert (=> b!3326806 (= e!2068779 Nil!36645)))

(assert (= (and d!935469 c!565039) b!3326805))

(assert (= (and d!935469 (not c!565039)) b!3326806))

(declare-fun m!3667077 () Bool)

(assert (=> b!3326805 m!3667077))

(assert (=> b!3326805 m!3667077))

(declare-fun m!3667079 () Bool)

(assert (=> b!3326805 m!3667079))

(declare-fun m!3667081 () Bool)

(assert (=> b!3326805 m!3667081))

(assert (=> b!3326805 m!3667079))

(assert (=> b!3326805 m!3667081))

(declare-fun m!3667083 () Bool)

(assert (=> b!3326805 m!3667083))

(assert (=> b!3326580 d!935469))

(declare-fun d!935471 () Bool)

(assert (=> d!935471 (= (isEmpty!20804 rules!2135) (is-Nil!36646 rules!2135))))

(assert (=> b!3326559 d!935471))

(declare-fun d!935473 () Bool)

(declare-fun res!1349327 () Bool)

(declare-fun e!2068787 () Bool)

(assert (=> d!935473 (=> res!1349327 e!2068787)))

(assert (=> d!935473 (= res!1349327 (not (is-Cons!36646 rules!2135)))))

(assert (=> d!935473 (= (sepAndNonSepRulesDisjointChars!1521 rules!2135 rules!2135) e!2068787)))

(declare-fun b!3326816 () Bool)

(declare-fun e!2068788 () Bool)

(assert (=> b!3326816 (= e!2068787 e!2068788)))

(declare-fun res!1349328 () Bool)

(assert (=> b!3326816 (=> (not res!1349328) (not e!2068788))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!646 (Rule!10454 List!36770) Bool)

(assert (=> b!3326816 (= res!1349328 (ruleDisjointCharsFromAllFromOtherType!646 (h!42066 rules!2135) rules!2135))))

(declare-fun b!3326817 () Bool)

(assert (=> b!3326817 (= e!2068788 (sepAndNonSepRulesDisjointChars!1521 rules!2135 (t!256669 rules!2135)))))

(assert (= (and d!935473 (not res!1349327)) b!3326816))

(assert (= (and b!3326816 res!1349328) b!3326817))

(declare-fun m!3667105 () Bool)

(assert (=> b!3326816 m!3667105))

(declare-fun m!3667107 () Bool)

(assert (=> b!3326817 m!3667107))

(assert (=> b!3326569 d!935473))

(declare-fun bs!550957 () Bool)

(declare-fun d!935479 () Bool)

(assert (= bs!550957 (and d!935479 b!3326564)))

(declare-fun lambda!119686 () Int)

(assert (=> bs!550957 (not (= lambda!119686 lambda!119676))))

(declare-fun b!3326896 () Bool)

(declare-fun e!2068847 () Bool)

(assert (=> b!3326896 (= e!2068847 true)))

(declare-fun b!3326895 () Bool)

(declare-fun e!2068846 () Bool)

(assert (=> b!3326895 (= e!2068846 e!2068847)))

(declare-fun b!3326894 () Bool)

(declare-fun e!2068845 () Bool)

(assert (=> b!3326894 (= e!2068845 e!2068846)))

(assert (=> d!935479 e!2068845))

(assert (= b!3326895 b!3326896))

(assert (= b!3326894 b!3326895))

(assert (= (and d!935479 (is-Cons!36646 rules!2135)) b!3326894))

(declare-fun order!19155 () Int)

(declare-fun order!19157 () Int)

(declare-fun dynLambda!15103 (Int Int) Int)

(declare-fun dynLambda!15104 (Int Int) Int)

(assert (=> b!3326896 (< (dynLambda!15103 order!19155 (toValue!7487 (transformation!5327 (h!42066 rules!2135)))) (dynLambda!15104 order!19157 lambda!119686))))

(declare-fun order!19159 () Int)

(declare-fun dynLambda!15105 (Int Int) Int)

(assert (=> b!3326896 (< (dynLambda!15105 order!19159 (toChars!7346 (transformation!5327 (h!42066 rules!2135)))) (dynLambda!15104 order!19157 lambda!119686))))

(assert (=> d!935479 true))

(declare-fun e!2068838 () Bool)

(assert (=> d!935479 e!2068838))

(declare-fun res!1349372 () Bool)

(assert (=> d!935479 (=> (not res!1349372) (not e!2068838))))

(declare-fun lt!1130503 () Bool)

(assert (=> d!935479 (= res!1349372 (= lt!1130503 (forall!7642 (list!13193 lt!1130360) lambda!119686)))))

(declare-fun forall!7644 (BalanceConc!21674 Int) Bool)

(assert (=> d!935479 (= lt!1130503 (forall!7644 lt!1130360 lambda!119686))))

(assert (=> d!935479 (not (isEmpty!20804 rules!2135))))

(assert (=> d!935479 (= (rulesProduceEachTokenIndividually!1367 thiss!18206 rules!2135 lt!1130360) lt!1130503)))

(declare-fun b!3326885 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1782 (LexerInterface!4916 List!36770 List!36771) Bool)

(assert (=> b!3326885 (= e!2068838 (= lt!1130503 (rulesProduceEachTokenIndividuallyList!1782 thiss!18206 rules!2135 (list!13193 lt!1130360))))))

(assert (= (and d!935479 res!1349372) b!3326885))

(assert (=> d!935479 m!3666831))

(assert (=> d!935479 m!3666831))

(declare-fun m!3667189 () Bool)

(assert (=> d!935479 m!3667189))

(declare-fun m!3667191 () Bool)

(assert (=> d!935479 m!3667191))

(assert (=> d!935479 m!3666693))

(assert (=> b!3326885 m!3666831))

(assert (=> b!3326885 m!3666831))

(declare-fun m!3667193 () Bool)

(assert (=> b!3326885 m!3667193))

(assert (=> b!3326568 d!935479))

(declare-fun d!935509 () Bool)

(declare-fun fromListB!1637 (List!36771) BalanceConc!21674)

(assert (=> d!935509 (= (seqFromList!3708 tokens!494) (fromListB!1637 tokens!494))))

(declare-fun bs!550958 () Bool)

(assert (= bs!550958 d!935509))

(declare-fun m!3667195 () Bool)

(assert (=> bs!550958 m!3667195))

(assert (=> b!3326568 d!935509))

(declare-fun b!3326903 () Bool)

(declare-fun e!2068850 () Bool)

(declare-fun tp_is_empty!17411 () Bool)

(declare-fun tp!1039743 () Bool)

(assert (=> b!3326903 (= e!2068850 (and tp_is_empty!17411 tp!1039743))))

(assert (=> b!3326566 (= tp!1039681 e!2068850)))

(assert (= (and b!3326566 (is-Cons!36645 (originalCharacters!6041 (h!42067 tokens!494)))) b!3326903))

(declare-fun b!3326915 () Bool)

(declare-fun e!2068853 () Bool)

(declare-fun tp!1039754 () Bool)

(declare-fun tp!1039755 () Bool)

(assert (=> b!3326915 (= e!2068853 (and tp!1039754 tp!1039755))))

(declare-fun b!3326916 () Bool)

(declare-fun tp!1039756 () Bool)

(assert (=> b!3326916 (= e!2068853 tp!1039756)))

(assert (=> b!3326582 (= tp!1039688 e!2068853)))

(declare-fun b!3326917 () Bool)

(declare-fun tp!1039758 () Bool)

(declare-fun tp!1039757 () Bool)

(assert (=> b!3326917 (= e!2068853 (and tp!1039758 tp!1039757))))

(declare-fun b!3326914 () Bool)

(assert (=> b!3326914 (= e!2068853 tp_is_empty!17411)))

(assert (= (and b!3326582 (is-ElementMatch!10086 (regex!5327 (h!42066 rules!2135)))) b!3326914))

(assert (= (and b!3326582 (is-Concat!15643 (regex!5327 (h!42066 rules!2135)))) b!3326915))

(assert (= (and b!3326582 (is-Star!10086 (regex!5327 (h!42066 rules!2135)))) b!3326916))

(assert (= (and b!3326582 (is-Union!10086 (regex!5327 (h!42066 rules!2135)))) b!3326917))

(declare-fun b!3326919 () Bool)

(declare-fun e!2068854 () Bool)

(declare-fun tp!1039759 () Bool)

(declare-fun tp!1039760 () Bool)

(assert (=> b!3326919 (= e!2068854 (and tp!1039759 tp!1039760))))

(declare-fun b!3326920 () Bool)

(declare-fun tp!1039761 () Bool)

(assert (=> b!3326920 (= e!2068854 tp!1039761)))

(assert (=> b!3326565 (= tp!1039686 e!2068854)))

(declare-fun b!3326921 () Bool)

(declare-fun tp!1039763 () Bool)

(declare-fun tp!1039762 () Bool)

(assert (=> b!3326921 (= e!2068854 (and tp!1039763 tp!1039762))))

(declare-fun b!3326918 () Bool)

(assert (=> b!3326918 (= e!2068854 tp_is_empty!17411)))

(assert (= (and b!3326565 (is-ElementMatch!10086 (regex!5327 (rule!7849 separatorToken!241)))) b!3326918))

(assert (= (and b!3326565 (is-Concat!15643 (regex!5327 (rule!7849 separatorToken!241)))) b!3326919))

(assert (= (and b!3326565 (is-Star!10086 (regex!5327 (rule!7849 separatorToken!241)))) b!3326920))

(assert (= (and b!3326565 (is-Union!10086 (regex!5327 (rule!7849 separatorToken!241)))) b!3326921))

(declare-fun b!3326922 () Bool)

(declare-fun e!2068855 () Bool)

(declare-fun tp!1039764 () Bool)

(assert (=> b!3326922 (= e!2068855 (and tp_is_empty!17411 tp!1039764))))

(assert (=> b!3326575 (= tp!1039683 e!2068855)))

(assert (= (and b!3326575 (is-Cons!36645 (originalCharacters!6041 separatorToken!241))) b!3326922))

(declare-fun b!3326924 () Bool)

(declare-fun e!2068856 () Bool)

(declare-fun tp!1039765 () Bool)

(declare-fun tp!1039766 () Bool)

(assert (=> b!3326924 (= e!2068856 (and tp!1039765 tp!1039766))))

(declare-fun b!3326925 () Bool)

(declare-fun tp!1039767 () Bool)

(assert (=> b!3326925 (= e!2068856 tp!1039767)))

(assert (=> b!3326574 (= tp!1039691 e!2068856)))

(declare-fun b!3326926 () Bool)

(declare-fun tp!1039769 () Bool)

(declare-fun tp!1039768 () Bool)

(assert (=> b!3326926 (= e!2068856 (and tp!1039769 tp!1039768))))

(declare-fun b!3326923 () Bool)

(assert (=> b!3326923 (= e!2068856 tp_is_empty!17411)))

(assert (= (and b!3326574 (is-ElementMatch!10086 (regex!5327 (rule!7849 (h!42067 tokens!494))))) b!3326923))

(assert (= (and b!3326574 (is-Concat!15643 (regex!5327 (rule!7849 (h!42067 tokens!494))))) b!3326924))

(assert (= (and b!3326574 (is-Star!10086 (regex!5327 (rule!7849 (h!42067 tokens!494))))) b!3326925))

(assert (= (and b!3326574 (is-Union!10086 (regex!5327 (rule!7849 (h!42067 tokens!494))))) b!3326926))

(declare-fun b!3326940 () Bool)

(declare-fun b_free!87541 () Bool)

(declare-fun b_next!88245 () Bool)

(assert (=> b!3326940 (= b_free!87541 (not b_next!88245))))

(declare-fun tp!1039783 () Bool)

(declare-fun b_and!229269 () Bool)

(assert (=> b!3326940 (= tp!1039783 b_and!229269)))

(declare-fun b_free!87543 () Bool)

(declare-fun b_next!88247 () Bool)

(assert (=> b!3326940 (= b_free!87543 (not b_next!88247))))

(declare-fun t!256712 () Bool)

(declare-fun tb!174183 () Bool)

(assert (=> (and b!3326940 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 (t!256670 tokens!494))))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241)))) t!256712) tb!174183))

(declare-fun result!217250 () Bool)

(assert (= result!217250 result!217216))

(assert (=> d!935393 t!256712))

(assert (=> b!3326689 t!256712))

(declare-fun t!256714 () Bool)

(declare-fun tb!174185 () Bool)

(assert (=> (and b!3326940 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 (t!256670 tokens!494))))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494))))) t!256714) tb!174185))

(declare-fun result!217252 () Bool)

(assert (= result!217252 result!217224))

(assert (=> b!3326713 t!256714))

(assert (=> d!935439 t!256714))

(declare-fun tp!1039781 () Bool)

(declare-fun b_and!229271 () Bool)

(assert (=> b!3326940 (= tp!1039781 (and (=> t!256712 result!217250) (=> t!256714 result!217252) b_and!229271))))

(declare-fun e!2068873 () Bool)

(declare-fun b!3326938 () Bool)

(declare-fun e!2068872 () Bool)

(declare-fun tp!1039782 () Bool)

(assert (=> b!3326938 (= e!2068872 (and (inv!21 (value!172281 (h!42067 (t!256670 tokens!494)))) e!2068873 tp!1039782))))

(declare-fun e!2068870 () Bool)

(assert (=> b!3326940 (= e!2068870 (and tp!1039783 tp!1039781))))

(declare-fun b!3326937 () Bool)

(declare-fun e!2068871 () Bool)

(declare-fun tp!1039784 () Bool)

(assert (=> b!3326937 (= e!2068871 (and (inv!49648 (h!42067 (t!256670 tokens!494))) e!2068872 tp!1039784))))

(declare-fun b!3326939 () Bool)

(declare-fun tp!1039780 () Bool)

(assert (=> b!3326939 (= e!2068873 (and tp!1039780 (inv!49645 (tag!5879 (rule!7849 (h!42067 (t!256670 tokens!494))))) (inv!49649 (transformation!5327 (rule!7849 (h!42067 (t!256670 tokens!494))))) e!2068870))))

(assert (=> b!3326563 (= tp!1039682 e!2068871)))

(assert (= b!3326939 b!3326940))

(assert (= b!3326938 b!3326939))

(assert (= b!3326937 b!3326938))

(assert (= (and b!3326563 (is-Cons!36647 (t!256670 tokens!494))) b!3326937))

(declare-fun m!3667197 () Bool)

(assert (=> b!3326938 m!3667197))

(declare-fun m!3667199 () Bool)

(assert (=> b!3326937 m!3667199))

(declare-fun m!3667201 () Bool)

(assert (=> b!3326939 m!3667201))

(declare-fun m!3667203 () Bool)

(assert (=> b!3326939 m!3667203))

(declare-fun b!3326951 () Bool)

(declare-fun b_free!87545 () Bool)

(declare-fun b_next!88249 () Bool)

(assert (=> b!3326951 (= b_free!87545 (not b_next!88249))))

(declare-fun tp!1039794 () Bool)

(declare-fun b_and!229273 () Bool)

(assert (=> b!3326951 (= tp!1039794 b_and!229273)))

(declare-fun b_free!87547 () Bool)

(declare-fun b_next!88251 () Bool)

(assert (=> b!3326951 (= b_free!87547 (not b_next!88251))))

(declare-fun t!256716 () Bool)

(declare-fun tb!174187 () Bool)

(assert (=> (and b!3326951 (= (toChars!7346 (transformation!5327 (h!42066 (t!256669 rules!2135)))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241)))) t!256716) tb!174187))

(declare-fun result!217256 () Bool)

(assert (= result!217256 result!217216))

(assert (=> d!935393 t!256716))

(assert (=> b!3326689 t!256716))

(declare-fun tb!174189 () Bool)

(declare-fun t!256718 () Bool)

(assert (=> (and b!3326951 (= (toChars!7346 (transformation!5327 (h!42066 (t!256669 rules!2135)))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494))))) t!256718) tb!174189))

(declare-fun result!217258 () Bool)

(assert (= result!217258 result!217224))

(assert (=> b!3326713 t!256718))

(assert (=> d!935439 t!256718))

(declare-fun tp!1039793 () Bool)

(declare-fun b_and!229275 () Bool)

(assert (=> b!3326951 (= tp!1039793 (and (=> t!256716 result!217256) (=> t!256718 result!217258) b_and!229275))))

(declare-fun e!2068885 () Bool)

(assert (=> b!3326951 (= e!2068885 (and tp!1039794 tp!1039793))))

(declare-fun b!3326950 () Bool)

(declare-fun e!2068884 () Bool)

(declare-fun tp!1039795 () Bool)

(assert (=> b!3326950 (= e!2068884 (and tp!1039795 (inv!49645 (tag!5879 (h!42066 (t!256669 rules!2135)))) (inv!49649 (transformation!5327 (h!42066 (t!256669 rules!2135)))) e!2068885))))

(declare-fun b!3326949 () Bool)

(declare-fun e!2068883 () Bool)

(declare-fun tp!1039796 () Bool)

(assert (=> b!3326949 (= e!2068883 (and e!2068884 tp!1039796))))

(assert (=> b!3326578 (= tp!1039690 e!2068883)))

(assert (= b!3326950 b!3326951))

(assert (= b!3326949 b!3326950))

(assert (= (and b!3326578 (is-Cons!36646 (t!256669 rules!2135))) b!3326949))

(declare-fun m!3667205 () Bool)

(assert (=> b!3326950 m!3667205))

(declare-fun m!3667207 () Bool)

(assert (=> b!3326950 m!3667207))

(declare-fun b_lambda!93863 () Bool)

(assert (= b_lambda!93851 (or (and b!3326951 b_free!87547 (= (toChars!7346 (transformation!5327 (h!42066 (t!256669 rules!2135)))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))))) (and b!3326579 b_free!87519) (and b!3326940 b_free!87543 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 (t!256670 tokens!494))))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))))) (and b!3326581 b_free!87523 (= (toChars!7346 (transformation!5327 (h!42066 rules!2135))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))))) (and b!3326571 b_free!87527 (= (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))))) b_lambda!93863)))

(declare-fun b_lambda!93865 () Bool)

(assert (= b_lambda!93853 (or (and b!3326951 b_free!87547 (= (toChars!7346 (transformation!5327 (h!42066 (t!256669 rules!2135)))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))))) (and b!3326579 b_free!87519) (and b!3326940 b_free!87543 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 (t!256670 tokens!494))))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))))) (and b!3326581 b_free!87523 (= (toChars!7346 (transformation!5327 (h!42066 rules!2135))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))))) (and b!3326571 b_free!87527 (= (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))) (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))))) b_lambda!93865)))

(declare-fun b_lambda!93867 () Bool)

(assert (= b_lambda!93843 (or (and b!3326571 b_free!87527) (and b!3326581 b_free!87523 (= (toChars!7346 (transformation!5327 (h!42066 rules!2135))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))))) (and b!3326951 b_free!87547 (= (toChars!7346 (transformation!5327 (h!42066 (t!256669 rules!2135)))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))))) (and b!3326940 b_free!87543 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 (t!256670 tokens!494))))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))))) (and b!3326579 b_free!87519 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))))) b_lambda!93867)))

(declare-fun b_lambda!93869 () Bool)

(assert (= b_lambda!93847 (or (and b!3326571 b_free!87527) (and b!3326581 b_free!87523 (= (toChars!7346 (transformation!5327 (h!42066 rules!2135))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))))) (and b!3326951 b_free!87547 (= (toChars!7346 (transformation!5327 (h!42066 (t!256669 rules!2135)))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))))) (and b!3326940 b_free!87543 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 (t!256670 tokens!494))))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))))) (and b!3326579 b_free!87519 (= (toChars!7346 (transformation!5327 (rule!7849 (h!42067 tokens!494)))) (toChars!7346 (transformation!5327 (rule!7849 separatorToken!241))))) b_lambda!93869)))

(declare-fun b_lambda!93871 () Bool)

(assert (= b_lambda!93849 (or b!3326564 b_lambda!93871)))

(declare-fun bs!550959 () Bool)

(declare-fun d!935511 () Bool)

(assert (= bs!550959 (and d!935511 b!3326564)))

(assert (=> bs!550959 (= (dynLambda!15102 lambda!119676 (h!42067 tokens!494)) (not (isSeparator!5327 (rule!7849 (h!42067 tokens!494)))))))

(assert (=> b!3326695 d!935511))

(declare-fun b_lambda!93873 () Bool)

(assert (= b_lambda!93845 (or b!3326564 b_lambda!93873)))

(assert (=> d!935405 d!935511))

(push 1)

(assert (not b!3326775))

(assert (not d!935409))

(assert b_and!229275)

(assert (not d!935393))

(assert b_and!229245)

(assert (not d!935437))

(assert (not b_lambda!93867))

(assert (not b_next!88223))

(assert (not b!3326757))

(assert (not d!935433))

(assert (not b_next!88227))

(assert (not d!935447))

(assert b_and!229271)

(assert (not b!3326894))

(assert (not b!3326903))

(assert (not d!935403))

(assert (not d!935417))

(assert (not b_lambda!93873))

(assert (not b!3326712))

(assert (not tb!174159))

(assert (not d!935465))

(assert (not b!3326920))

(assert (not b!3326742))

(assert (not b!3326924))

(assert (not b!3326916))

(assert (not b!3326709))

(assert (not b!3326915))

(assert (not d!935423))

(assert (not b_next!88249))

(assert (not b!3326696))

(assert (not b!3326926))

(assert (not b!3326710))

(assert (not b_lambda!93871))

(assert (not b!3326711))

(assert (not b!3326755))

(assert (not b!3326921))

(assert (not b!3326714))

(assert (not d!935455))

(assert (not b!3326785))

(assert (not b!3326939))

(assert (not b!3326778))

(assert (not b!3326745))

(assert (not d!935479))

(assert (not b!3326743))

(assert (not tb!174165))

(assert (not b!3326681))

(assert (not d!935421))

(assert (not b!3326816))

(assert (not b!3326715))

(assert b_and!229273)

(assert (not b_lambda!93865))

(assert (not d!935441))

(assert (not b!3326760))

(assert (not b!3326787))

(assert (not d!935419))

(assert (not d!935399))

(assert (not b!3326756))

(assert b_and!229247)

(assert (not d!935459))

(assert (not b!3326885))

(assert (not b!3326805))

(assert b_and!229269)

(assert (not b!3326919))

(assert (not b!3326917))

(assert (not d!935389))

(assert (not d!935509))

(assert (not b!3326794))

(assert (not b_next!88231))

(assert b_and!229249)

(assert (not b!3326937))

(assert (not b!3326949))

(assert (not b_next!88247))

(assert (not d!935463))

(assert (not b!3326668))

(assert (not b!3326713))

(assert (not b!3326746))

(assert (not d!935439))

(assert (not b!3326768))

(assert (not d!935461))

(assert (not b!3326773))

(assert (not d!935397))

(assert (not b_lambda!93863))

(assert (not b!3326761))

(assert (not d!935391))

(assert (not b!3326776))

(assert (not b!3326938))

(assert (not b!3326689))

(assert (not b_lambda!93869))

(assert (not b!3326925))

(assert (not d!935395))

(assert (not b_next!88229))

(assert (not b_next!88251))

(assert (not b!3326950))

(assert (not b!3326777))

(assert (not b!3326762))

(assert (not d!935467))

(assert (not b!3326922))

(assert (not d!935451))

(assert b_and!229207)

(assert (not d!935405))

(assert (not b!3326669))

(assert (not b!3326678))

(assert (not b!3326817))

(assert (not d!935453))

(assert b_and!229203)

(assert (not b!3326675))

(assert (not b_next!88221))

(assert (not b!3326690))

(assert (not b!3326684))

(assert b_and!229211)

(assert tp_is_empty!17411)

(assert (not b_next!88225))

(assert (not b_next!88245))

(check-sat)

(pop 1)

(push 1)

(assert b_and!229245)

(assert (not b_next!88223))

(assert (not b_next!88249))

(assert b_and!229273)

(assert b_and!229247)

(assert b_and!229269)

(assert (not b_next!88247))

(assert (not b_next!88229))

(assert (not b_next!88251))

(assert b_and!229207)

(assert b_and!229275)

(assert b_and!229211)

(assert (not b_next!88227))

(assert b_and!229271)

(assert (not b_next!88231))

(assert b_and!229249)

(assert b_and!229203)

(assert (not b_next!88221))

(assert (not b_next!88225))

(assert (not b_next!88245))

(check-sat)

(pop 1)

