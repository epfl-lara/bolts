; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!331376 () Bool)

(assert start!331376)

(declare-fun b!3576136 () Bool)

(declare-fun b_free!91541 () Bool)

(declare-fun b_next!92245 () Bool)

(assert (=> b!3576136 (= b_free!91541 (not b_next!92245))))

(declare-fun tp!1094408 () Bool)

(declare-fun b_and!257643 () Bool)

(assert (=> b!3576136 (= tp!1094408 b_and!257643)))

(declare-fun b_free!91543 () Bool)

(declare-fun b_next!92247 () Bool)

(assert (=> b!3576136 (= b_free!91543 (not b_next!92247))))

(declare-fun tp!1094413 () Bool)

(declare-fun b_and!257645 () Bool)

(assert (=> b!3576136 (= tp!1094413 b_and!257645)))

(declare-fun b!3576131 () Bool)

(declare-fun b_free!91545 () Bool)

(declare-fun b_next!92249 () Bool)

(assert (=> b!3576131 (= b_free!91545 (not b_next!92249))))

(declare-fun tp!1094410 () Bool)

(declare-fun b_and!257647 () Bool)

(assert (=> b!3576131 (= tp!1094410 b_and!257647)))

(declare-fun b_free!91547 () Bool)

(declare-fun b_next!92251 () Bool)

(assert (=> b!3576131 (= b_free!91547 (not b_next!92251))))

(declare-fun tp!1094415 () Bool)

(declare-fun b_and!257649 () Bool)

(assert (=> b!3576131 (= tp!1094415 b_and!257649)))

(declare-fun b!3576119 () Bool)

(declare-fun b_free!91549 () Bool)

(declare-fun b_next!92253 () Bool)

(assert (=> b!3576119 (= b_free!91549 (not b_next!92253))))

(declare-fun tp!1094416 () Bool)

(declare-fun b_and!257651 () Bool)

(assert (=> b!3576119 (= tp!1094416 b_and!257651)))

(declare-fun b_free!91551 () Bool)

(declare-fun b_next!92255 () Bool)

(assert (=> b!3576119 (= b_free!91551 (not b_next!92255))))

(declare-fun tp!1094407 () Bool)

(declare-fun b_and!257653 () Bool)

(assert (=> b!3576119 (= tp!1094407 b_and!257653)))

(declare-fun bs!569626 () Bool)

(declare-fun b!3576137 () Bool)

(declare-fun b!3576145 () Bool)

(assert (= bs!569626 (and b!3576137 b!3576145)))

(declare-fun lambda!123593 () Int)

(declare-fun lambda!123592 () Int)

(assert (=> bs!569626 (not (= lambda!123593 lambda!123592))))

(declare-fun b!3576167 () Bool)

(declare-fun e!2212297 () Bool)

(assert (=> b!3576167 (= e!2212297 true)))

(declare-fun b!3576166 () Bool)

(declare-fun e!2212296 () Bool)

(assert (=> b!3576166 (= e!2212296 e!2212297)))

(declare-fun b!3576165 () Bool)

(declare-fun e!2212295 () Bool)

(assert (=> b!3576165 (= e!2212295 e!2212296)))

(assert (=> b!3576137 e!2212295))

(assert (= b!3576166 b!3576167))

(assert (= b!3576165 b!3576166))

(declare-datatypes ((C!20738 0))(
  ( (C!20739 (val!12417 Int)) )
))
(declare-datatypes ((List!37654 0))(
  ( (Nil!37530) (Cons!37530 (h!42950 (_ BitVec 16)) (t!289881 List!37654)) )
))
(declare-datatypes ((TokenValue!5747 0))(
  ( (FloatLiteralValue!11494 (text!40674 List!37654)) (TokenValueExt!5746 (__x!23711 Int)) (Broken!28735 (value!177670 List!37654)) (Object!5870) (End!5747) (Def!5747) (Underscore!5747) (Match!5747) (Else!5747) (Error!5747) (Case!5747) (If!5747) (Extends!5747) (Abstract!5747) (Class!5747) (Val!5747) (DelimiterValue!11494 (del!5807 List!37654)) (KeywordValue!5753 (value!177671 List!37654)) (CommentValue!11494 (value!177672 List!37654)) (WhitespaceValue!11494 (value!177673 List!37654)) (IndentationValue!5747 (value!177674 List!37654)) (String!42070) (Int32!5747) (Broken!28736 (value!177675 List!37654)) (Boolean!5748) (Unit!53555) (OperatorValue!5750 (op!5807 List!37654)) (IdentifierValue!11494 (value!177676 List!37654)) (IdentifierValue!11495 (value!177677 List!37654)) (WhitespaceValue!11495 (value!177678 List!37654)) (True!11494) (False!11494) (Broken!28737 (value!177679 List!37654)) (Broken!28738 (value!177680 List!37654)) (True!11495) (RightBrace!5747) (RightBracket!5747) (Colon!5747) (Null!5747) (Comma!5747) (LeftBracket!5747) (False!11495) (LeftBrace!5747) (ImaginaryLiteralValue!5747 (text!40675 List!37654)) (StringLiteralValue!17241 (value!177681 List!37654)) (EOFValue!5747 (value!177682 List!37654)) (IdentValue!5747 (value!177683 List!37654)) (DelimiterValue!11495 (value!177684 List!37654)) (DedentValue!5747 (value!177685 List!37654)) (NewLineValue!5747 (value!177686 List!37654)) (IntegerValue!17241 (value!177687 (_ BitVec 32)) (text!40676 List!37654)) (IntegerValue!17242 (value!177688 Int) (text!40677 List!37654)) (Times!5747) (Or!5747) (Equal!5747) (Minus!5747) (Broken!28739 (value!177689 List!37654)) (And!5747) (Div!5747) (LessEqual!5747) (Mod!5747) (Concat!16023) (Not!5747) (Plus!5747) (SpaceValue!5747 (value!177690 List!37654)) (IntegerValue!17243 (value!177691 Int) (text!40678 List!37654)) (StringLiteralValue!17242 (text!40679 List!37654)) (FloatLiteralValue!11495 (text!40680 List!37654)) (BytesLiteralValue!5747 (value!177692 List!37654)) (CommentValue!11495 (value!177693 List!37654)) (StringLiteralValue!17243 (value!177694 List!37654)) (ErrorTokenValue!5747 (msg!5808 List!37654)) )
))
(declare-datatypes ((List!37655 0))(
  ( (Nil!37531) (Cons!37531 (h!42951 C!20738) (t!289882 List!37655)) )
))
(declare-datatypes ((IArray!22823 0))(
  ( (IArray!22824 (innerList!11469 List!37655)) )
))
(declare-datatypes ((Conc!11409 0))(
  ( (Node!11409 (left!29352 Conc!11409) (right!29682 Conc!11409) (csize!23048 Int) (cheight!11620 Int)) (Leaf!17779 (xs!14611 IArray!22823) (csize!23049 Int)) (Empty!11409) )
))
(declare-datatypes ((BalanceConc!22432 0))(
  ( (BalanceConc!22433 (c!619892 Conc!11409)) )
))
(declare-datatypes ((Regex!10276 0))(
  ( (ElementMatch!10276 (c!619893 C!20738)) (Concat!16024 (regOne!21064 Regex!10276) (regTwo!21064 Regex!10276)) (EmptyExpr!10276) (Star!10276 (reg!10605 Regex!10276)) (EmptyLang!10276) (Union!10276 (regOne!21065 Regex!10276) (regTwo!21065 Regex!10276)) )
))
(declare-datatypes ((String!42071 0))(
  ( (String!42072 (value!177695 String)) )
))
(declare-datatypes ((TokenValueInjection!10922 0))(
  ( (TokenValueInjection!10923 (toValue!7789 Int) (toChars!7648 Int)) )
))
(declare-datatypes ((Rule!10834 0))(
  ( (Rule!10835 (regex!5517 Regex!10276) (tag!6179 String!42071) (isSeparator!5517 Bool) (transformation!5517 TokenValueInjection!10922)) )
))
(declare-datatypes ((List!37656 0))(
  ( (Nil!37532) (Cons!37532 (h!42952 Rule!10834) (t!289883 List!37656)) )
))
(declare-fun rules!2135 () List!37656)

(assert (= (and b!3576137 (is-Cons!37532 rules!2135)) b!3576165))

(declare-fun order!20385 () Int)

(declare-fun order!20383 () Int)

(declare-fun dynLambda!16136 (Int Int) Int)

(declare-fun dynLambda!16137 (Int Int) Int)

(assert (=> b!3576167 (< (dynLambda!16136 order!20383 (toValue!7789 (transformation!5517 (h!42952 rules!2135)))) (dynLambda!16137 order!20385 lambda!123593))))

(declare-fun order!20387 () Int)

(declare-fun dynLambda!16138 (Int Int) Int)

(assert (=> b!3576167 (< (dynLambda!16138 order!20387 (toChars!7648 (transformation!5517 (h!42952 rules!2135)))) (dynLambda!16137 order!20385 lambda!123593))))

(assert (=> b!3576137 true))

(declare-fun b!3576113 () Bool)

(declare-fun e!2212281 () Bool)

(assert (=> b!3576113 (= e!2212281 false)))

(declare-fun b!3576114 () Bool)

(declare-fun e!2212279 () Bool)

(assert (=> b!3576114 (= e!2212279 false)))

(declare-datatypes ((Token!10400 0))(
  ( (Token!10401 (value!177696 TokenValue!5747) (rule!8221 Rule!10834) (size!28622 Int) (originalCharacters!6231 List!37655)) )
))
(declare-fun separatorToken!241 () Token!10400)

(declare-fun tp!1094417 () Bool)

(declare-fun e!2212264 () Bool)

(declare-fun b!3576115 () Bool)

(declare-fun e!2212270 () Bool)

(declare-fun inv!50809 (String!42071) Bool)

(declare-fun inv!50812 (TokenValueInjection!10922) Bool)

(assert (=> b!3576115 (= e!2212264 (and tp!1094417 (inv!50809 (tag!6179 (rule!8221 separatorToken!241))) (inv!50812 (transformation!5517 (rule!8221 separatorToken!241))) e!2212270))))

(declare-fun b!3576116 () Bool)

(declare-fun e!2212283 () Bool)

(declare-fun e!2212275 () Bool)

(assert (=> b!3576116 (= e!2212283 e!2212275)))

(declare-fun res!1442484 () Bool)

(assert (=> b!3576116 (=> (not res!1442484) (not e!2212275))))

(declare-fun lt!1226753 () Rule!10834)

(declare-fun lt!1226737 () List!37655)

(declare-fun matchR!4860 (Regex!10276 List!37655) Bool)

(assert (=> b!3576116 (= res!1442484 (matchR!4860 (regex!5517 lt!1226753) lt!1226737))))

(declare-datatypes ((Option!7705 0))(
  ( (None!7704) (Some!7704 (v!37328 Rule!10834)) )
))
(declare-fun lt!1226767 () Option!7705)

(declare-fun get!12083 (Option!7705) Rule!10834)

(assert (=> b!3576116 (= lt!1226753 (get!12083 lt!1226767))))

(declare-fun b!3576117 () Bool)

(declare-fun e!2212257 () Bool)

(declare-fun e!2212280 () Bool)

(assert (=> b!3576117 (= e!2212257 e!2212280)))

(declare-fun res!1442473 () Bool)

(assert (=> b!3576117 (=> res!1442473 e!2212280)))

(declare-datatypes ((LexerInterface!5106 0))(
  ( (LexerInterfaceExt!5103 (__x!23712 Int)) (Lexer!5104) )
))
(declare-fun thiss!18206 () LexerInterface!5106)

(declare-fun lt!1226765 () BalanceConc!22432)

(declare-datatypes ((List!37657 0))(
  ( (Nil!37533) (Cons!37533 (h!42953 Token!10400) (t!289884 List!37657)) )
))
(declare-datatypes ((IArray!22825 0))(
  ( (IArray!22826 (innerList!11470 List!37657)) )
))
(declare-datatypes ((Conc!11410 0))(
  ( (Node!11410 (left!29353 Conc!11410) (right!29683 Conc!11410) (csize!23050 Int) (cheight!11621 Int)) (Leaf!17780 (xs!14612 IArray!22825) (csize!23051 Int)) (Empty!11410) )
))
(declare-datatypes ((BalanceConc!22434 0))(
  ( (BalanceConc!22435 (c!619894 Conc!11410)) )
))
(declare-fun isEmpty!22074 (BalanceConc!22434) Bool)

(declare-datatypes ((tuple2!37456 0))(
  ( (tuple2!37457 (_1!21862 BalanceConc!22434) (_2!21862 BalanceConc!22432)) )
))
(declare-fun lex!2432 (LexerInterface!5106 List!37656 BalanceConc!22432) tuple2!37456)

(assert (=> b!3576117 (= res!1442473 (isEmpty!22074 (_1!21862 (lex!2432 thiss!18206 rules!2135 lt!1226765))))))

(declare-fun lt!1226762 () List!37655)

(declare-fun seqFromList!4087 (List!37655) BalanceConc!22432)

(assert (=> b!3576117 (= lt!1226765 (seqFromList!4087 lt!1226762))))

(declare-fun b!3576118 () Bool)

(declare-datatypes ((Unit!53556 0))(
  ( (Unit!53557) )
))
(declare-fun e!2212259 () Unit!53556)

(declare-fun Unit!53558 () Unit!53556)

(assert (=> b!3576118 (= e!2212259 Unit!53558)))

(declare-fun tokens!494 () List!37657)

(declare-fun lt!1226764 () Unit!53556)

(declare-fun lt!1226740 () List!37655)

(declare-fun lt!1226743 () C!20738)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!575 (Regex!10276 List!37655 C!20738) Unit!53556)

(assert (=> b!3576118 (= lt!1226764 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!575 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1226740 lt!1226743))))

(declare-fun res!1442475 () Bool)

(assert (=> b!3576118 (= res!1442475 (not (matchR!4860 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1226740)))))

(assert (=> b!3576118 (=> (not res!1442475) (not e!2212279))))

(assert (=> b!3576118 e!2212279))

(declare-fun e!2212266 () Bool)

(assert (=> b!3576119 (= e!2212266 (and tp!1094416 tp!1094407))))

(declare-fun b!3576120 () Bool)

(assert (=> b!3576120 (= e!2212275 (= (rule!8221 separatorToken!241) lt!1226753))))

(declare-fun b!3576121 () Bool)

(declare-fun e!2212272 () Bool)

(assert (=> b!3576121 (= e!2212272 e!2212257)))

(declare-fun res!1442483 () Bool)

(assert (=> b!3576121 (=> res!1442483 e!2212257)))

(declare-fun lt!1226768 () List!37655)

(declare-fun lt!1226770 () List!37655)

(assert (=> b!3576121 (= res!1442483 (or (not (= lt!1226768 lt!1226762)) (not (= lt!1226770 lt!1226762))))))

(declare-fun list!13774 (BalanceConc!22432) List!37655)

(declare-fun charsOf!3531 (Token!10400) BalanceConc!22432)

(assert (=> b!3576121 (= lt!1226762 (list!13774 (charsOf!3531 (h!42953 tokens!494))))))

(declare-fun tp!1094412 () Bool)

(declare-fun b!3576122 () Bool)

(declare-fun e!2212269 () Bool)

(declare-fun e!2212261 () Bool)

(assert (=> b!3576122 (= e!2212269 (and tp!1094412 (inv!50809 (tag!6179 (h!42952 rules!2135))) (inv!50812 (transformation!5517 (h!42952 rules!2135))) e!2212261))))

(declare-fun b!3576123 () Bool)

(declare-fun res!1442485 () Bool)

(declare-fun e!2212267 () Bool)

(assert (=> b!3576123 (=> (not res!1442485) (not e!2212267))))

(declare-fun rulesProduceIndividualToken!2598 (LexerInterface!5106 List!37656 Token!10400) Bool)

(assert (=> b!3576123 (= res!1442485 (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3576124 () Bool)

(declare-fun res!1442472 () Bool)

(assert (=> b!3576124 (=> (not res!1442472) (not e!2212267))))

(declare-fun sepAndNonSepRulesDisjointChars!1711 (List!37656 List!37656) Bool)

(assert (=> b!3576124 (= res!1442472 (sepAndNonSepRulesDisjointChars!1711 rules!2135 rules!2135))))

(declare-fun b!3576125 () Bool)

(declare-fun e!2212288 () Bool)

(declare-fun e!2212285 () Bool)

(assert (=> b!3576125 (= e!2212288 e!2212285)))

(declare-fun res!1442465 () Bool)

(assert (=> b!3576125 (=> (not res!1442465) (not e!2212285))))

(declare-fun lt!1226775 () Rule!10834)

(assert (=> b!3576125 (= res!1442465 (matchR!4860 (regex!5517 lt!1226775) lt!1226762))))

(declare-fun lt!1226760 () Option!7705)

(assert (=> b!3576125 (= lt!1226775 (get!12083 lt!1226760))))

(declare-fun b!3576126 () Bool)

(declare-fun res!1442462 () Bool)

(declare-fun e!2212276 () Bool)

(assert (=> b!3576126 (=> (not res!1442462) (not e!2212276))))

(declare-fun lt!1226757 () tuple2!37456)

(declare-fun apply!9036 (BalanceConc!22434 Int) Token!10400)

(assert (=> b!3576126 (= res!1442462 (= (apply!9036 (_1!21862 lt!1226757) 0) separatorToken!241))))

(declare-fun tp!1094414 () Bool)

(declare-fun b!3576127 () Bool)

(declare-fun e!2212262 () Bool)

(assert (=> b!3576127 (= e!2212262 (and tp!1094414 (inv!50809 (tag!6179 (rule!8221 (h!42953 tokens!494)))) (inv!50812 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) e!2212266))))

(declare-fun b!3576128 () Bool)

(declare-fun res!1442481 () Bool)

(assert (=> b!3576128 (=> (not res!1442481) (not e!2212267))))

(declare-fun rulesInvariant!4503 (LexerInterface!5106 List!37656) Bool)

(assert (=> b!3576128 (= res!1442481 (rulesInvariant!4503 thiss!18206 rules!2135))))

(declare-fun b!3576129 () Bool)

(declare-fun res!1442489 () Bool)

(assert (=> b!3576129 (=> (not res!1442489) (not e!2212267))))

(assert (=> b!3576129 (= res!1442489 (isSeparator!5517 (rule!8221 separatorToken!241)))))

(declare-fun b!3576130 () Bool)

(assert (=> b!3576130 (= e!2212267 (not e!2212272))))

(declare-fun res!1442479 () Bool)

(assert (=> b!3576130 (=> res!1442479 e!2212272)))

(assert (=> b!3576130 (= res!1442479 (not (= lt!1226770 lt!1226768)))))

(declare-fun printList!1654 (LexerInterface!5106 List!37657) List!37655)

(assert (=> b!3576130 (= lt!1226768 (printList!1654 thiss!18206 (Cons!37533 (h!42953 tokens!494) Nil!37533)))))

(declare-fun lt!1226774 () BalanceConc!22432)

(assert (=> b!3576130 (= lt!1226770 (list!13774 lt!1226774))))

(declare-fun lt!1226751 () BalanceConc!22434)

(declare-fun printTailRec!1601 (LexerInterface!5106 BalanceConc!22434 Int BalanceConc!22432) BalanceConc!22432)

(assert (=> b!3576130 (= lt!1226774 (printTailRec!1601 thiss!18206 lt!1226751 0 (BalanceConc!22433 Empty!11409)))))

(declare-fun print!2171 (LexerInterface!5106 BalanceConc!22434) BalanceConc!22432)

(assert (=> b!3576130 (= lt!1226774 (print!2171 thiss!18206 lt!1226751))))

(declare-fun singletonSeq!2613 (Token!10400) BalanceConc!22434)

(assert (=> b!3576130 (= lt!1226751 (singletonSeq!2613 (h!42953 tokens!494)))))

(assert (=> b!3576131 (= e!2212270 (and tp!1094410 tp!1094415))))

(declare-fun b!3576132 () Bool)

(declare-fun res!1442486 () Bool)

(declare-fun e!2212273 () Bool)

(assert (=> b!3576132 (=> res!1442486 e!2212273)))

(declare-fun lt!1226776 () tuple2!37456)

(assert (=> b!3576132 (= res!1442486 (not (= (apply!9036 (_1!21862 lt!1226776) 0) (h!42953 (t!289884 tokens!494)))))))

(declare-fun b!3576133 () Bool)

(declare-fun e!2212286 () Bool)

(declare-fun e!2212253 () Bool)

(assert (=> b!3576133 (= e!2212286 e!2212253)))

(declare-fun res!1442480 () Bool)

(assert (=> b!3576133 (=> (not res!1442480) (not e!2212253))))

(declare-fun lt!1226758 () Rule!10834)

(assert (=> b!3576133 (= res!1442480 (matchR!4860 (regex!5517 lt!1226758) lt!1226740))))

(declare-fun lt!1226773 () Option!7705)

(assert (=> b!3576133 (= lt!1226758 (get!12083 lt!1226773))))

(declare-fun res!1442478 () Bool)

(assert (=> start!331376 (=> (not res!1442478) (not e!2212267))))

(assert (=> start!331376 (= res!1442478 (is-Lexer!5104 thiss!18206))))

(assert (=> start!331376 e!2212267))

(assert (=> start!331376 true))

(declare-fun e!2212265 () Bool)

(assert (=> start!331376 e!2212265))

(declare-fun e!2212256 () Bool)

(assert (=> start!331376 e!2212256))

(declare-fun e!2212260 () Bool)

(declare-fun inv!50813 (Token!10400) Bool)

(assert (=> start!331376 (and (inv!50813 separatorToken!241) e!2212260)))

(declare-fun b!3576134 () Bool)

(declare-fun res!1442477 () Bool)

(assert (=> b!3576134 (=> (not res!1442477) (not e!2212267))))

(assert (=> b!3576134 (= res!1442477 (and (not (is-Nil!37533 tokens!494)) (not (is-Nil!37533 (t!289884 tokens!494)))))))

(declare-fun b!3576135 () Bool)

(assert (=> b!3576135 (= e!2212285 (= (rule!8221 (h!42953 tokens!494)) lt!1226775))))

(assert (=> b!3576136 (= e!2212261 (and tp!1094408 tp!1094413))))

(declare-fun e!2212277 () Bool)

(declare-fun e!2212284 () Bool)

(assert (=> b!3576137 (= e!2212277 e!2212284)))

(declare-fun res!1442488 () Bool)

(assert (=> b!3576137 (=> res!1442488 e!2212284)))

(declare-fun rulesProduceEachTokenIndividually!1557 (LexerInterface!5106 List!37656 BalanceConc!22434) Bool)

(declare-fun seqFromList!4088 (List!37657) BalanceConc!22434)

(assert (=> b!3576137 (= res!1442488 (not (rulesProduceEachTokenIndividually!1557 thiss!18206 rules!2135 (seqFromList!4088 (t!289884 tokens!494)))))))

(declare-fun lt!1226756 () List!37655)

(declare-fun lt!1226755 () List!37655)

(declare-datatypes ((tuple2!37458 0))(
  ( (tuple2!37459 (_1!21863 Token!10400) (_2!21863 List!37655)) )
))
(declare-datatypes ((Option!7706 0))(
  ( (None!7705) (Some!7705 (v!37329 tuple2!37458)) )
))
(declare-fun maxPrefix!2646 (LexerInterface!5106 List!37656 List!37655) Option!7706)

(assert (=> b!3576137 (= (maxPrefix!2646 thiss!18206 rules!2135 lt!1226755) (Some!7705 (tuple2!37459 separatorToken!241 lt!1226756)))))

(declare-fun lt!1226749 () Unit!53556)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!273 (LexerInterface!5106 List!37656 Token!10400 Rule!10834 List!37655 Rule!10834) Unit!53556)

(assert (=> b!3576137 (= lt!1226749 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!273 thiss!18206 rules!2135 separatorToken!241 (rule!8221 separatorToken!241) lt!1226756 (rule!8221 (h!42953 (t!289884 tokens!494)))))))

(declare-fun lt!1226745 () List!37655)

(declare-fun contains!7111 (List!37655 C!20738) Bool)

(assert (=> b!3576137 (not (contains!7111 lt!1226745 lt!1226743))))

(declare-fun lt!1226739 () Unit!53556)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!199 (LexerInterface!5106 List!37656 List!37656 Rule!10834 Rule!10834 C!20738) Unit!53556)

(assert (=> b!3576137 (= lt!1226739 (lemmaSepRuleNotContainsCharContainedInANonSepRule!199 thiss!18206 rules!2135 rules!2135 (rule!8221 (h!42953 (t!289884 tokens!494))) (rule!8221 separatorToken!241) lt!1226743))))

(declare-fun lt!1226744 () Unit!53556)

(assert (=> b!3576137 (= lt!1226744 e!2212259)))

(declare-fun c!619891 () Bool)

(declare-fun usedCharacters!751 (Regex!10276) List!37655)

(assert (=> b!3576137 (= c!619891 (not (contains!7111 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) lt!1226743)))))

(declare-fun head!7450 (List!37655) C!20738)

(assert (=> b!3576137 (= lt!1226743 (head!7450 lt!1226740))))

(declare-fun maxPrefixOneRule!1813 (LexerInterface!5106 Rule!10834 List!37655) Option!7706)

(declare-fun apply!9037 (TokenValueInjection!10922 BalanceConc!22432) TokenValue!5747)

(declare-fun size!28623 (List!37655) Int)

(assert (=> b!3576137 (= (maxPrefixOneRule!1813 thiss!18206 (rule!8221 (h!42953 (t!289884 tokens!494))) lt!1226740) (Some!7705 (tuple2!37459 (Token!10401 (apply!9037 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) (seqFromList!4087 lt!1226740)) (rule!8221 (h!42953 (t!289884 tokens!494))) (size!28623 lt!1226740) lt!1226740) Nil!37531)))))

(declare-fun lt!1226771 () Unit!53556)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!906 (LexerInterface!5106 List!37656 List!37655 List!37655 List!37655 Rule!10834) Unit!53556)

(assert (=> b!3576137 (= lt!1226771 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!906 thiss!18206 rules!2135 lt!1226740 lt!1226740 Nil!37531 (rule!8221 (h!42953 (t!289884 tokens!494)))))))

(assert (=> b!3576137 e!2212286))

(declare-fun res!1442463 () Bool)

(assert (=> b!3576137 (=> (not res!1442463) (not e!2212286))))

(declare-fun isDefined!5943 (Option!7705) Bool)

(assert (=> b!3576137 (= res!1442463 (isDefined!5943 lt!1226773))))

(declare-fun getRuleFromTag!1160 (LexerInterface!5106 List!37656 String!42071) Option!7705)

(assert (=> b!3576137 (= lt!1226773 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(declare-fun lt!1226761 () Unit!53556)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1160 (LexerInterface!5106 List!37656 List!37655 Token!10400) Unit!53556)

(assert (=> b!3576137 (= lt!1226761 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1160 thiss!18206 rules!2135 lt!1226740 (h!42953 (t!289884 tokens!494))))))

(declare-fun lt!1226746 () Bool)

(assert (=> b!3576137 lt!1226746))

(declare-fun lt!1226748 () Unit!53556)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1095 (LexerInterface!5106 List!37656 List!37657 Token!10400) Unit!53556)

(assert (=> b!3576137 (= lt!1226748 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1095 thiss!18206 rules!2135 tokens!494 (h!42953 (t!289884 tokens!494))))))

(declare-fun lt!1226742 () List!37655)

(assert (=> b!3576137 (= (maxPrefix!2646 thiss!18206 rules!2135 lt!1226742) (Some!7705 (tuple2!37459 (h!42953 tokens!494) lt!1226755)))))

(declare-fun lt!1226750 () Unit!53556)

(assert (=> b!3576137 (= lt!1226750 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!273 thiss!18206 rules!2135 (h!42953 tokens!494) (rule!8221 (h!42953 tokens!494)) lt!1226755 (rule!8221 separatorToken!241)))))

(declare-fun lt!1226731 () C!20738)

(assert (=> b!3576137 (not (contains!7111 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 tokens!494)))) lt!1226731))))

(declare-fun lt!1226747 () Unit!53556)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!317 (LexerInterface!5106 List!37656 List!37656 Rule!10834 Rule!10834 C!20738) Unit!53556)

(assert (=> b!3576137 (= lt!1226747 (lemmaNonSepRuleNotContainsCharContainedInASepRule!317 thiss!18206 rules!2135 rules!2135 (rule!8221 (h!42953 tokens!494)) (rule!8221 separatorToken!241) lt!1226731))))

(declare-fun lt!1226738 () Unit!53556)

(declare-fun forallContained!1464 (List!37657 Int Token!10400) Unit!53556)

(assert (=> b!3576137 (= lt!1226738 (forallContained!1464 tokens!494 lambda!123593 (h!42953 (t!289884 tokens!494))))))

(declare-fun lt!1226735 () Bool)

(assert (=> b!3576137 (= lt!1226746 (not lt!1226735))))

(assert (=> b!3576137 (= lt!1226746 (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 (h!42953 (t!289884 tokens!494))))))

(assert (=> b!3576137 (= lt!1226735 e!2212273)))

(declare-fun res!1442482 () Bool)

(assert (=> b!3576137 (=> res!1442482 e!2212273)))

(declare-fun size!28624 (BalanceConc!22434) Int)

(assert (=> b!3576137 (= res!1442482 (not (= (size!28624 (_1!21862 lt!1226776)) 1)))))

(declare-fun lt!1226734 () BalanceConc!22432)

(assert (=> b!3576137 (= lt!1226776 (lex!2432 thiss!18206 rules!2135 lt!1226734))))

(declare-fun lt!1226777 () BalanceConc!22434)

(assert (=> b!3576137 (= lt!1226734 (printTailRec!1601 thiss!18206 lt!1226777 0 (BalanceConc!22433 Empty!11409)))))

(assert (=> b!3576137 (= lt!1226734 (print!2171 thiss!18206 lt!1226777))))

(assert (=> b!3576137 (= lt!1226777 (singletonSeq!2613 (h!42953 (t!289884 tokens!494))))))

(assert (=> b!3576137 e!2212276))

(declare-fun res!1442467 () Bool)

(assert (=> b!3576137 (=> (not res!1442467) (not e!2212276))))

(assert (=> b!3576137 (= res!1442467 (= (size!28624 (_1!21862 lt!1226757)) 1))))

(declare-fun lt!1226736 () BalanceConc!22432)

(assert (=> b!3576137 (= lt!1226757 (lex!2432 thiss!18206 rules!2135 lt!1226736))))

(declare-fun lt!1226763 () BalanceConc!22434)

(assert (=> b!3576137 (= lt!1226736 (printTailRec!1601 thiss!18206 lt!1226763 0 (BalanceConc!22433 Empty!11409)))))

(assert (=> b!3576137 (= lt!1226736 (print!2171 thiss!18206 lt!1226763))))

(assert (=> b!3576137 (= lt!1226763 (singletonSeq!2613 separatorToken!241))))

(declare-fun lt!1226772 () Unit!53556)

(declare-fun e!2212255 () Unit!53556)

(assert (=> b!3576137 (= lt!1226772 e!2212255)))

(declare-fun c!619890 () Bool)

(assert (=> b!3576137 (= c!619890 (not (contains!7111 lt!1226745 lt!1226731)))))

(assert (=> b!3576137 (= lt!1226731 (head!7450 lt!1226737))))

(assert (=> b!3576137 (= lt!1226745 (usedCharacters!751 (regex!5517 (rule!8221 separatorToken!241))))))

(assert (=> b!3576137 e!2212283))

(declare-fun res!1442466 () Bool)

(assert (=> b!3576137 (=> (not res!1442466) (not e!2212283))))

(assert (=> b!3576137 (= res!1442466 (isDefined!5943 lt!1226767))))

(assert (=> b!3576137 (= lt!1226767 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 separatorToken!241))))))

(declare-fun lt!1226759 () Unit!53556)

(assert (=> b!3576137 (= lt!1226759 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1160 thiss!18206 rules!2135 lt!1226737 separatorToken!241))))

(assert (=> b!3576137 (= (maxPrefixOneRule!1813 thiss!18206 (rule!8221 (h!42953 tokens!494)) lt!1226762) (Some!7705 (tuple2!37459 (Token!10401 (apply!9037 (transformation!5517 (rule!8221 (h!42953 tokens!494))) lt!1226765) (rule!8221 (h!42953 tokens!494)) (size!28623 lt!1226762) lt!1226762) Nil!37531)))))

(declare-fun lt!1226733 () Unit!53556)

(assert (=> b!3576137 (= lt!1226733 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!906 thiss!18206 rules!2135 lt!1226762 lt!1226762 Nil!37531 (rule!8221 (h!42953 tokens!494))))))

(assert (=> b!3576137 e!2212288))

(declare-fun res!1442476 () Bool)

(assert (=> b!3576137 (=> (not res!1442476) (not e!2212288))))

(assert (=> b!3576137 (= res!1442476 (isDefined!5943 lt!1226760))))

(assert (=> b!3576137 (= lt!1226760 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 tokens!494)))))))

(declare-fun lt!1226752 () Unit!53556)

(assert (=> b!3576137 (= lt!1226752 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1160 thiss!18206 rules!2135 lt!1226762 (h!42953 tokens!494)))))

(declare-fun lt!1226741 () Unit!53556)

(assert (=> b!3576137 (= lt!1226741 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1095 thiss!18206 rules!2135 tokens!494 (h!42953 tokens!494)))))

(declare-fun b!3576138 () Bool)

(declare-fun Unit!53559 () Unit!53556)

(assert (=> b!3576138 (= e!2212259 Unit!53559)))

(declare-fun b!3576139 () Bool)

(declare-fun Unit!53560 () Unit!53556)

(assert (=> b!3576139 (= e!2212255 Unit!53560)))

(declare-fun lt!1226766 () Unit!53556)

(assert (=> b!3576139 (= lt!1226766 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!575 (regex!5517 (rule!8221 separatorToken!241)) lt!1226737 lt!1226731))))

(declare-fun res!1442471 () Bool)

(assert (=> b!3576139 (= res!1442471 (not (matchR!4860 (regex!5517 (rule!8221 separatorToken!241)) lt!1226737)))))

(assert (=> b!3576139 (=> (not res!1442471) (not e!2212281))))

(assert (=> b!3576139 e!2212281))

(declare-fun b!3576140 () Bool)

(declare-fun isEmpty!22075 (BalanceConc!22432) Bool)

(assert (=> b!3576140 (= e!2212273 (not (isEmpty!22075 (_2!21862 lt!1226776))))))

(declare-fun b!3576141 () Bool)

(declare-fun res!1442460 () Bool)

(assert (=> b!3576141 (=> res!1442460 e!2212257)))

(assert (=> b!3576141 (= res!1442460 (not (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 (h!42953 tokens!494))))))

(declare-fun b!3576142 () Bool)

(declare-fun e!2212274 () Bool)

(declare-fun e!2212263 () Bool)

(assert (=> b!3576142 (= e!2212274 e!2212263)))

(declare-fun res!1442474 () Bool)

(assert (=> b!3576142 (=> res!1442474 e!2212263)))

(declare-fun lt!1226769 () List!37655)

(declare-fun lt!1226730 () List!37655)

(assert (=> b!3576142 (= res!1442474 (not (= lt!1226769 lt!1226730)))))

(declare-fun ++!9338 (List!37655 List!37655) List!37655)

(assert (=> b!3576142 (= lt!1226730 (++!9338 (++!9338 lt!1226762 lt!1226737) lt!1226756))))

(declare-fun b!3576143 () Bool)

(assert (=> b!3576143 (= e!2212263 e!2212277)))

(declare-fun res!1442487 () Bool)

(assert (=> b!3576143 (=> res!1442487 e!2212277)))

(assert (=> b!3576143 (= res!1442487 (not (= lt!1226769 lt!1226742)))))

(assert (=> b!3576143 (= lt!1226730 lt!1226742)))

(assert (=> b!3576143 (= lt!1226742 (++!9338 lt!1226762 lt!1226755))))

(declare-fun lt!1226729 () Unit!53556)

(declare-fun lemmaConcatAssociativity!2059 (List!37655 List!37655 List!37655) Unit!53556)

(assert (=> b!3576143 (= lt!1226729 (lemmaConcatAssociativity!2059 lt!1226762 lt!1226737 lt!1226756))))

(declare-fun b!3576144 () Bool)

(assert (=> b!3576144 (= e!2212276 (isEmpty!22075 (_2!21862 lt!1226757)))))

(declare-fun res!1442469 () Bool)

(assert (=> b!3576145 (=> (not res!1442469) (not e!2212267))))

(declare-fun forall!8125 (List!37657 Int) Bool)

(assert (=> b!3576145 (= res!1442469 (forall!8125 tokens!494 lambda!123592))))

(declare-fun b!3576146 () Bool)

(declare-fun e!2212287 () Bool)

(assert (=> b!3576146 (= e!2212280 e!2212287)))

(declare-fun res!1442464 () Bool)

(assert (=> b!3576146 (=> res!1442464 e!2212287)))

(assert (=> b!3576146 (= res!1442464 (or (isSeparator!5517 (rule!8221 (h!42953 tokens!494))) (isSeparator!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(declare-fun lt!1226732 () Unit!53556)

(assert (=> b!3576146 (= lt!1226732 (forallContained!1464 tokens!494 lambda!123592 (h!42953 (t!289884 tokens!494))))))

(declare-fun lt!1226754 () Unit!53556)

(assert (=> b!3576146 (= lt!1226754 (forallContained!1464 tokens!494 lambda!123592 (h!42953 tokens!494)))))

(declare-fun b!3576147 () Bool)

(assert (=> b!3576147 (= e!2212253 (= (rule!8221 (h!42953 (t!289884 tokens!494))) lt!1226758))))

(declare-fun tp!1094405 () Bool)

(declare-fun e!2212268 () Bool)

(declare-fun b!3576148 () Bool)

(declare-fun inv!21 (TokenValue!5747) Bool)

(assert (=> b!3576148 (= e!2212268 (and (inv!21 (value!177696 (h!42953 tokens!494))) e!2212262 tp!1094405))))

(declare-fun b!3576149 () Bool)

(declare-fun tp!1094411 () Bool)

(assert (=> b!3576149 (= e!2212256 (and (inv!50813 (h!42953 tokens!494)) e!2212268 tp!1094411))))

(declare-fun b!3576150 () Bool)

(declare-fun tp!1094406 () Bool)

(assert (=> b!3576150 (= e!2212260 (and (inv!21 (value!177696 separatorToken!241)) e!2212264 tp!1094406))))

(declare-fun b!3576151 () Bool)

(assert (=> b!3576151 (= e!2212284 (forall!8125 (t!289884 tokens!494) lambda!123592))))

(declare-fun b!3576152 () Bool)

(declare-fun res!1442461 () Bool)

(assert (=> b!3576152 (=> (not res!1442461) (not e!2212267))))

(declare-fun isEmpty!22076 (List!37656) Bool)

(assert (=> b!3576152 (= res!1442461 (not (isEmpty!22076 rules!2135)))))

(declare-fun b!3576153 () Bool)

(declare-fun Unit!53561 () Unit!53556)

(assert (=> b!3576153 (= e!2212255 Unit!53561)))

(declare-fun b!3576154 () Bool)

(declare-fun res!1442470 () Bool)

(assert (=> b!3576154 (=> (not res!1442470) (not e!2212267))))

(assert (=> b!3576154 (= res!1442470 (rulesProduceEachTokenIndividually!1557 thiss!18206 rules!2135 (seqFromList!4088 tokens!494)))))

(declare-fun b!3576155 () Bool)

(assert (=> b!3576155 (= e!2212287 e!2212274)))

(declare-fun res!1442468 () Bool)

(assert (=> b!3576155 (=> res!1442468 e!2212274)))

(declare-fun printWithSeparatorTokenList!393 (LexerInterface!5106 List!37657 Token!10400) List!37655)

(assert (=> b!3576155 (= res!1442468 (not (= lt!1226756 (++!9338 (++!9338 lt!1226740 lt!1226737) (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241)))))))

(assert (=> b!3576155 (= lt!1226740 (list!13774 (charsOf!3531 (h!42953 (t!289884 tokens!494)))))))

(assert (=> b!3576155 (= lt!1226755 (++!9338 lt!1226737 lt!1226756))))

(assert (=> b!3576155 (= lt!1226737 (list!13774 (charsOf!3531 separatorToken!241)))))

(assert (=> b!3576155 (= lt!1226756 (printWithSeparatorTokenList!393 thiss!18206 (t!289884 tokens!494) separatorToken!241))))

(assert (=> b!3576155 (= lt!1226769 (printWithSeparatorTokenList!393 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3576156 () Bool)

(declare-fun tp!1094409 () Bool)

(assert (=> b!3576156 (= e!2212265 (and e!2212269 tp!1094409))))

(assert (= (and start!331376 res!1442478) b!3576152))

(assert (= (and b!3576152 res!1442461) b!3576128))

(assert (= (and b!3576128 res!1442481) b!3576154))

(assert (= (and b!3576154 res!1442470) b!3576123))

(assert (= (and b!3576123 res!1442485) b!3576129))

(assert (= (and b!3576129 res!1442489) b!3576145))

(assert (= (and b!3576145 res!1442469) b!3576124))

(assert (= (and b!3576124 res!1442472) b!3576134))

(assert (= (and b!3576134 res!1442477) b!3576130))

(assert (= (and b!3576130 (not res!1442479)) b!3576121))

(assert (= (and b!3576121 (not res!1442483)) b!3576141))

(assert (= (and b!3576141 (not res!1442460)) b!3576117))

(assert (= (and b!3576117 (not res!1442473)) b!3576146))

(assert (= (and b!3576146 (not res!1442464)) b!3576155))

(assert (= (and b!3576155 (not res!1442468)) b!3576142))

(assert (= (and b!3576142 (not res!1442474)) b!3576143))

(assert (= (and b!3576143 (not res!1442487)) b!3576137))

(assert (= (and b!3576137 res!1442476) b!3576125))

(assert (= (and b!3576125 res!1442465) b!3576135))

(assert (= (and b!3576137 res!1442466) b!3576116))

(assert (= (and b!3576116 res!1442484) b!3576120))

(assert (= (and b!3576137 c!619890) b!3576139))

(assert (= (and b!3576137 (not c!619890)) b!3576153))

(assert (= (and b!3576139 res!1442471) b!3576113))

(assert (= (and b!3576137 res!1442467) b!3576126))

(assert (= (and b!3576126 res!1442462) b!3576144))

(assert (= (and b!3576137 (not res!1442482)) b!3576132))

(assert (= (and b!3576132 (not res!1442486)) b!3576140))

(assert (= (and b!3576137 res!1442463) b!3576133))

(assert (= (and b!3576133 res!1442480) b!3576147))

(assert (= (and b!3576137 c!619891) b!3576118))

(assert (= (and b!3576137 (not c!619891)) b!3576138))

(assert (= (and b!3576118 res!1442475) b!3576114))

(assert (= (and b!3576137 (not res!1442488)) b!3576151))

(assert (= b!3576122 b!3576136))

(assert (= b!3576156 b!3576122))

(assert (= (and start!331376 (is-Cons!37532 rules!2135)) b!3576156))

(assert (= b!3576127 b!3576119))

(assert (= b!3576148 b!3576127))

(assert (= b!3576149 b!3576148))

(assert (= (and start!331376 (is-Cons!37533 tokens!494)) b!3576149))

(assert (= b!3576115 b!3576131))

(assert (= b!3576150 b!3576115))

(assert (= start!331376 b!3576150))

(declare-fun m!4068645 () Bool)

(assert (=> b!3576126 m!4068645))

(declare-fun m!4068647 () Bool)

(assert (=> b!3576130 m!4068647))

(declare-fun m!4068649 () Bool)

(assert (=> b!3576130 m!4068649))

(declare-fun m!4068651 () Bool)

(assert (=> b!3576130 m!4068651))

(declare-fun m!4068653 () Bool)

(assert (=> b!3576130 m!4068653))

(declare-fun m!4068655 () Bool)

(assert (=> b!3576130 m!4068655))

(declare-fun m!4068657 () Bool)

(assert (=> b!3576155 m!4068657))

(declare-fun m!4068659 () Bool)

(assert (=> b!3576155 m!4068659))

(declare-fun m!4068661 () Bool)

(assert (=> b!3576155 m!4068661))

(declare-fun m!4068663 () Bool)

(assert (=> b!3576155 m!4068663))

(assert (=> b!3576155 m!4068657))

(declare-fun m!4068665 () Bool)

(assert (=> b!3576155 m!4068665))

(declare-fun m!4068667 () Bool)

(assert (=> b!3576155 m!4068667))

(declare-fun m!4068669 () Bool)

(assert (=> b!3576155 m!4068669))

(assert (=> b!3576155 m!4068667))

(declare-fun m!4068671 () Bool)

(assert (=> b!3576155 m!4068671))

(declare-fun m!4068673 () Bool)

(assert (=> b!3576155 m!4068673))

(assert (=> b!3576155 m!4068659))

(declare-fun m!4068675 () Bool)

(assert (=> b!3576155 m!4068675))

(assert (=> b!3576155 m!4068669))

(declare-fun m!4068677 () Bool)

(assert (=> b!3576149 m!4068677))

(declare-fun m!4068679 () Bool)

(assert (=> b!3576116 m!4068679))

(declare-fun m!4068681 () Bool)

(assert (=> b!3576116 m!4068681))

(declare-fun m!4068683 () Bool)

(assert (=> b!3576145 m!4068683))

(declare-fun m!4068685 () Bool)

(assert (=> b!3576150 m!4068685))

(declare-fun m!4068687 () Bool)

(assert (=> b!3576143 m!4068687))

(declare-fun m!4068689 () Bool)

(assert (=> b!3576143 m!4068689))

(declare-fun m!4068691 () Bool)

(assert (=> start!331376 m!4068691))

(declare-fun m!4068693 () Bool)

(assert (=> b!3576144 m!4068693))

(declare-fun m!4068695 () Bool)

(assert (=> b!3576123 m!4068695))

(declare-fun m!4068697 () Bool)

(assert (=> b!3576125 m!4068697))

(declare-fun m!4068699 () Bool)

(assert (=> b!3576125 m!4068699))

(declare-fun m!4068701 () Bool)

(assert (=> b!3576140 m!4068701))

(declare-fun m!4068703 () Bool)

(assert (=> b!3576117 m!4068703))

(declare-fun m!4068705 () Bool)

(assert (=> b!3576117 m!4068705))

(declare-fun m!4068707 () Bool)

(assert (=> b!3576117 m!4068707))

(declare-fun m!4068709 () Bool)

(assert (=> b!3576115 m!4068709))

(declare-fun m!4068711 () Bool)

(assert (=> b!3576115 m!4068711))

(declare-fun m!4068713 () Bool)

(assert (=> b!3576154 m!4068713))

(assert (=> b!3576154 m!4068713))

(declare-fun m!4068715 () Bool)

(assert (=> b!3576154 m!4068715))

(declare-fun m!4068717 () Bool)

(assert (=> b!3576148 m!4068717))

(declare-fun m!4068719 () Bool)

(assert (=> b!3576127 m!4068719))

(declare-fun m!4068721 () Bool)

(assert (=> b!3576127 m!4068721))

(declare-fun m!4068723 () Bool)

(assert (=> b!3576118 m!4068723))

(declare-fun m!4068725 () Bool)

(assert (=> b!3576118 m!4068725))

(declare-fun m!4068727 () Bool)

(assert (=> b!3576142 m!4068727))

(assert (=> b!3576142 m!4068727))

(declare-fun m!4068729 () Bool)

(assert (=> b!3576142 m!4068729))

(declare-fun m!4068731 () Bool)

(assert (=> b!3576133 m!4068731))

(declare-fun m!4068733 () Bool)

(assert (=> b!3576133 m!4068733))

(declare-fun m!4068735 () Bool)

(assert (=> b!3576139 m!4068735))

(declare-fun m!4068737 () Bool)

(assert (=> b!3576139 m!4068737))

(declare-fun m!4068739 () Bool)

(assert (=> b!3576121 m!4068739))

(assert (=> b!3576121 m!4068739))

(declare-fun m!4068741 () Bool)

(assert (=> b!3576121 m!4068741))

(declare-fun m!4068743 () Bool)

(assert (=> b!3576151 m!4068743))

(declare-fun m!4068745 () Bool)

(assert (=> b!3576124 m!4068745))

(declare-fun m!4068747 () Bool)

(assert (=> b!3576152 m!4068747))

(declare-fun m!4068749 () Bool)

(assert (=> b!3576122 m!4068749))

(declare-fun m!4068751 () Bool)

(assert (=> b!3576122 m!4068751))

(declare-fun m!4068753 () Bool)

(assert (=> b!3576137 m!4068753))

(declare-fun m!4068755 () Bool)

(assert (=> b!3576137 m!4068755))

(declare-fun m!4068757 () Bool)

(assert (=> b!3576137 m!4068757))

(declare-fun m!4068759 () Bool)

(assert (=> b!3576137 m!4068759))

(declare-fun m!4068761 () Bool)

(assert (=> b!3576137 m!4068761))

(declare-fun m!4068763 () Bool)

(assert (=> b!3576137 m!4068763))

(declare-fun m!4068765 () Bool)

(assert (=> b!3576137 m!4068765))

(declare-fun m!4068767 () Bool)

(assert (=> b!3576137 m!4068767))

(declare-fun m!4068769 () Bool)

(assert (=> b!3576137 m!4068769))

(declare-fun m!4068771 () Bool)

(assert (=> b!3576137 m!4068771))

(declare-fun m!4068773 () Bool)

(assert (=> b!3576137 m!4068773))

(declare-fun m!4068775 () Bool)

(assert (=> b!3576137 m!4068775))

(declare-fun m!4068777 () Bool)

(assert (=> b!3576137 m!4068777))

(assert (=> b!3576137 m!4068753))

(declare-fun m!4068779 () Bool)

(assert (=> b!3576137 m!4068779))

(declare-fun m!4068781 () Bool)

(assert (=> b!3576137 m!4068781))

(declare-fun m!4068783 () Bool)

(assert (=> b!3576137 m!4068783))

(declare-fun m!4068785 () Bool)

(assert (=> b!3576137 m!4068785))

(declare-fun m!4068787 () Bool)

(assert (=> b!3576137 m!4068787))

(declare-fun m!4068789 () Bool)

(assert (=> b!3576137 m!4068789))

(declare-fun m!4068791 () Bool)

(assert (=> b!3576137 m!4068791))

(declare-fun m!4068793 () Bool)

(assert (=> b!3576137 m!4068793))

(declare-fun m!4068795 () Bool)

(assert (=> b!3576137 m!4068795))

(declare-fun m!4068797 () Bool)

(assert (=> b!3576137 m!4068797))

(declare-fun m!4068799 () Bool)

(assert (=> b!3576137 m!4068799))

(declare-fun m!4068801 () Bool)

(assert (=> b!3576137 m!4068801))

(declare-fun m!4068803 () Bool)

(assert (=> b!3576137 m!4068803))

(declare-fun m!4068805 () Bool)

(assert (=> b!3576137 m!4068805))

(declare-fun m!4068807 () Bool)

(assert (=> b!3576137 m!4068807))

(declare-fun m!4068809 () Bool)

(assert (=> b!3576137 m!4068809))

(declare-fun m!4068811 () Bool)

(assert (=> b!3576137 m!4068811))

(declare-fun m!4068813 () Bool)

(assert (=> b!3576137 m!4068813))

(assert (=> b!3576137 m!4068793))

(declare-fun m!4068815 () Bool)

(assert (=> b!3576137 m!4068815))

(declare-fun m!4068817 () Bool)

(assert (=> b!3576137 m!4068817))

(declare-fun m!4068819 () Bool)

(assert (=> b!3576137 m!4068819))

(declare-fun m!4068821 () Bool)

(assert (=> b!3576137 m!4068821))

(declare-fun m!4068823 () Bool)

(assert (=> b!3576137 m!4068823))

(declare-fun m!4068825 () Bool)

(assert (=> b!3576137 m!4068825))

(declare-fun m!4068827 () Bool)

(assert (=> b!3576137 m!4068827))

(declare-fun m!4068829 () Bool)

(assert (=> b!3576137 m!4068829))

(declare-fun m!4068831 () Bool)

(assert (=> b!3576137 m!4068831))

(declare-fun m!4068833 () Bool)

(assert (=> b!3576137 m!4068833))

(declare-fun m!4068835 () Bool)

(assert (=> b!3576137 m!4068835))

(declare-fun m!4068837 () Bool)

(assert (=> b!3576137 m!4068837))

(declare-fun m!4068839 () Bool)

(assert (=> b!3576137 m!4068839))

(assert (=> b!3576137 m!4068763))

(declare-fun m!4068841 () Bool)

(assert (=> b!3576137 m!4068841))

(declare-fun m!4068843 () Bool)

(assert (=> b!3576137 m!4068843))

(declare-fun m!4068845 () Bool)

(assert (=> b!3576137 m!4068845))

(assert (=> b!3576137 m!4068823))

(declare-fun m!4068847 () Bool)

(assert (=> b!3576137 m!4068847))

(declare-fun m!4068849 () Bool)

(assert (=> b!3576137 m!4068849))

(declare-fun m!4068851 () Bool)

(assert (=> b!3576132 m!4068851))

(declare-fun m!4068853 () Bool)

(assert (=> b!3576141 m!4068853))

(declare-fun m!4068855 () Bool)

(assert (=> b!3576128 m!4068855))

(declare-fun m!4068857 () Bool)

(assert (=> b!3576146 m!4068857))

(declare-fun m!4068859 () Bool)

(assert (=> b!3576146 m!4068859))

(push 1)

(assert (not b!3576122))

(assert (not b_next!92255))

(assert (not b!3576148))

(assert (not b_next!92245))

(assert b_and!257653)

(assert (not b!3576144))

(assert (not b_next!92247))

(assert (not b!3576149))

(assert (not b!3576150))

(assert (not b!3576127))

(assert (not b!3576115))

(assert b_and!257645)

(assert (not b!3576128))

(assert (not b!3576154))

(assert (not b!3576130))

(assert b_and!257649)

(assert b_and!257647)

(assert b_and!257651)

(assert (not b!3576142))

(assert (not b_next!92249))

(assert (not b!3576133))

(assert (not b!3576140))

(assert (not b!3576117))

(assert (not b_next!92251))

(assert (not b!3576152))

(assert (not b!3576151))

(assert (not b!3576137))

(assert (not b!3576126))

(assert (not b!3576118))

(assert (not start!331376))

(assert (not b!3576155))

(assert (not b_next!92253))

(assert b_and!257643)

(assert (not b!3576165))

(assert (not b!3576139))

(assert (not b!3576132))

(assert (not b!3576141))

(assert (not b!3576116))

(assert (not b!3576125))

(assert (not b!3576121))

(assert (not b!3576124))

(assert (not b!3576156))

(assert (not b!3576145))

(assert (not b!3576143))

(assert (not b!3576146))

(assert (not b!3576123))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92255))

(assert b_and!257645)

(assert (not b_next!92251))

(assert (not b_next!92245))

(assert (not b_next!92253))

(assert b_and!257643)

(assert b_and!257653)

(assert (not b_next!92247))

(assert b_and!257649)

(assert b_and!257647)

(assert b_and!257651)

(assert (not b_next!92249))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1054812 () Bool)

(declare-fun list!13776 (Conc!11409) List!37655)

(assert (=> d!1054812 (= (list!13774 (charsOf!3531 (h!42953 tokens!494))) (list!13776 (c!619892 (charsOf!3531 (h!42953 tokens!494)))))))

(declare-fun bs!569628 () Bool)

(assert (= bs!569628 d!1054812))

(declare-fun m!4069077 () Bool)

(assert (=> bs!569628 m!4069077))

(assert (=> b!3576121 d!1054812))

(declare-fun d!1054814 () Bool)

(declare-fun lt!1226927 () BalanceConc!22432)

(assert (=> d!1054814 (= (list!13774 lt!1226927) (originalCharacters!6231 (h!42953 tokens!494)))))

(declare-fun dynLambda!16142 (Int TokenValue!5747) BalanceConc!22432)

(assert (=> d!1054814 (= lt!1226927 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (value!177696 (h!42953 tokens!494))))))

(assert (=> d!1054814 (= (charsOf!3531 (h!42953 tokens!494)) lt!1226927)))

(declare-fun b_lambda!105579 () Bool)

(assert (=> (not b_lambda!105579) (not d!1054814)))

(declare-fun tb!204059 () Bool)

(declare-fun t!289896 () Bool)

(assert (=> (and b!3576136 (= (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289896) tb!204059))

(declare-fun b!3576319 () Bool)

(declare-fun e!2212417 () Bool)

(declare-fun tp!1094459 () Bool)

(declare-fun inv!50816 (Conc!11409) Bool)

(assert (=> b!3576319 (= e!2212417 (and (inv!50816 (c!619892 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (value!177696 (h!42953 tokens!494))))) tp!1094459))))

(declare-fun result!248716 () Bool)

(declare-fun inv!50817 (BalanceConc!22432) Bool)

(assert (=> tb!204059 (= result!248716 (and (inv!50817 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (value!177696 (h!42953 tokens!494)))) e!2212417))))

(assert (= tb!204059 b!3576319))

(declare-fun m!4069079 () Bool)

(assert (=> b!3576319 m!4069079))

(declare-fun m!4069081 () Bool)

(assert (=> tb!204059 m!4069081))

(assert (=> d!1054814 t!289896))

(declare-fun b_and!257667 () Bool)

(assert (= b_and!257645 (and (=> t!289896 result!248716) b_and!257667)))

(declare-fun t!289898 () Bool)

(declare-fun tb!204061 () Bool)

(assert (=> (and b!3576131 (= (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289898) tb!204061))

(declare-fun result!248720 () Bool)

(assert (= result!248720 result!248716))

(assert (=> d!1054814 t!289898))

(declare-fun b_and!257669 () Bool)

(assert (= b_and!257649 (and (=> t!289898 result!248720) b_and!257669)))

(declare-fun t!289900 () Bool)

(declare-fun tb!204063 () Bool)

(assert (=> (and b!3576119 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289900) tb!204063))

(declare-fun result!248722 () Bool)

(assert (= result!248722 result!248716))

(assert (=> d!1054814 t!289900))

(declare-fun b_and!257671 () Bool)

(assert (= b_and!257653 (and (=> t!289900 result!248722) b_and!257671)))

(declare-fun m!4069083 () Bool)

(assert (=> d!1054814 m!4069083))

(declare-fun m!4069085 () Bool)

(assert (=> d!1054814 m!4069085))

(assert (=> b!3576121 d!1054814))

(declare-fun d!1054816 () Bool)

(assert (=> d!1054816 (= (inv!50809 (tag!6179 (h!42952 rules!2135))) (= (mod (str.len (value!177695 (tag!6179 (h!42952 rules!2135)))) 2) 0))))

(assert (=> b!3576122 d!1054816))

(declare-fun d!1054818 () Bool)

(declare-fun res!1442593 () Bool)

(declare-fun e!2212420 () Bool)

(assert (=> d!1054818 (=> (not res!1442593) (not e!2212420))))

(declare-fun semiInverseModEq!2336 (Int Int) Bool)

(assert (=> d!1054818 (= res!1442593 (semiInverseModEq!2336 (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toValue!7789 (transformation!5517 (h!42952 rules!2135)))))))

(assert (=> d!1054818 (= (inv!50812 (transformation!5517 (h!42952 rules!2135))) e!2212420)))

(declare-fun b!3576322 () Bool)

(declare-fun equivClasses!2235 (Int Int) Bool)

(assert (=> b!3576322 (= e!2212420 (equivClasses!2235 (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toValue!7789 (transformation!5517 (h!42952 rules!2135)))))))

(assert (= (and d!1054818 res!1442593) b!3576322))

(declare-fun m!4069087 () Bool)

(assert (=> d!1054818 m!4069087))

(declare-fun m!4069089 () Bool)

(assert (=> b!3576322 m!4069089))

(assert (=> b!3576122 d!1054818))

(declare-fun d!1054820 () Bool)

(declare-fun e!2212426 () Bool)

(assert (=> d!1054820 e!2212426))

(declare-fun res!1442601 () Bool)

(assert (=> d!1054820 (=> (not res!1442601) (not e!2212426))))

(declare-fun lt!1226930 () List!37655)

(declare-fun content!5325 (List!37655) (Set C!20738))

(assert (=> d!1054820 (= res!1442601 (= (content!5325 lt!1226930) (set.union (content!5325 lt!1226762) (content!5325 lt!1226755))))))

(declare-fun e!2212425 () List!37655)

(assert (=> d!1054820 (= lt!1226930 e!2212425)))

(declare-fun c!619907 () Bool)

(assert (=> d!1054820 (= c!619907 (is-Nil!37531 lt!1226762))))

(assert (=> d!1054820 (= (++!9338 lt!1226762 lt!1226755) lt!1226930)))

(declare-fun b!3576332 () Bool)

(assert (=> b!3576332 (= e!2212425 (Cons!37531 (h!42951 lt!1226762) (++!9338 (t!289882 lt!1226762) lt!1226755)))))

(declare-fun b!3576331 () Bool)

(assert (=> b!3576331 (= e!2212425 lt!1226755)))

(declare-fun b!3576333 () Bool)

(declare-fun res!1442600 () Bool)

(assert (=> b!3576333 (=> (not res!1442600) (not e!2212426))))

(assert (=> b!3576333 (= res!1442600 (= (size!28623 lt!1226930) (+ (size!28623 lt!1226762) (size!28623 lt!1226755))))))

(declare-fun b!3576334 () Bool)

(assert (=> b!3576334 (= e!2212426 (or (not (= lt!1226755 Nil!37531)) (= lt!1226930 lt!1226762)))))

(assert (= (and d!1054820 c!619907) b!3576331))

(assert (= (and d!1054820 (not c!619907)) b!3576332))

(assert (= (and d!1054820 res!1442601) b!3576333))

(assert (= (and b!3576333 res!1442600) b!3576334))

(declare-fun m!4069091 () Bool)

(assert (=> d!1054820 m!4069091))

(declare-fun m!4069093 () Bool)

(assert (=> d!1054820 m!4069093))

(declare-fun m!4069095 () Bool)

(assert (=> d!1054820 m!4069095))

(declare-fun m!4069097 () Bool)

(assert (=> b!3576332 m!4069097))

(declare-fun m!4069099 () Bool)

(assert (=> b!3576333 m!4069099))

(assert (=> b!3576333 m!4068817))

(declare-fun m!4069101 () Bool)

(assert (=> b!3576333 m!4069101))

(assert (=> b!3576143 d!1054820))

(declare-fun d!1054822 () Bool)

(assert (=> d!1054822 (= (++!9338 (++!9338 lt!1226762 lt!1226737) lt!1226756) (++!9338 lt!1226762 (++!9338 lt!1226737 lt!1226756)))))

(declare-fun lt!1226933 () Unit!53556)

(declare-fun choose!20805 (List!37655 List!37655 List!37655) Unit!53556)

(assert (=> d!1054822 (= lt!1226933 (choose!20805 lt!1226762 lt!1226737 lt!1226756))))

(assert (=> d!1054822 (= (lemmaConcatAssociativity!2059 lt!1226762 lt!1226737 lt!1226756) lt!1226933)))

(declare-fun bs!569629 () Bool)

(assert (= bs!569629 d!1054822))

(assert (=> bs!569629 m!4068673))

(assert (=> bs!569629 m!4068673))

(declare-fun m!4069103 () Bool)

(assert (=> bs!569629 m!4069103))

(declare-fun m!4069105 () Bool)

(assert (=> bs!569629 m!4069105))

(assert (=> bs!569629 m!4068727))

(assert (=> bs!569629 m!4068729))

(assert (=> bs!569629 m!4068727))

(assert (=> b!3576143 d!1054822))

(declare-fun d!1054824 () Bool)

(declare-fun lt!1226936 () Bool)

(declare-fun isEmpty!22080 (List!37655) Bool)

(assert (=> d!1054824 (= lt!1226936 (isEmpty!22080 (list!13774 (_2!21862 lt!1226757))))))

(declare-fun isEmpty!22081 (Conc!11409) Bool)

(assert (=> d!1054824 (= lt!1226936 (isEmpty!22081 (c!619892 (_2!21862 lt!1226757))))))

(assert (=> d!1054824 (= (isEmpty!22075 (_2!21862 lt!1226757)) lt!1226936)))

(declare-fun bs!569630 () Bool)

(assert (= bs!569630 d!1054824))

(declare-fun m!4069107 () Bool)

(assert (=> bs!569630 m!4069107))

(assert (=> bs!569630 m!4069107))

(declare-fun m!4069109 () Bool)

(assert (=> bs!569630 m!4069109))

(declare-fun m!4069111 () Bool)

(assert (=> bs!569630 m!4069111))

(assert (=> b!3576144 d!1054824))

(declare-fun d!1054826 () Bool)

(declare-fun lt!1226959 () Bool)

(declare-fun e!2212444 () Bool)

(assert (=> d!1054826 (= lt!1226959 e!2212444)))

(declare-fun res!1442633 () Bool)

(assert (=> d!1054826 (=> (not res!1442633) (not e!2212444))))

(declare-fun list!13777 (BalanceConc!22434) List!37657)

(assert (=> d!1054826 (= res!1442633 (= (list!13777 (_1!21862 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 separatorToken!241))))) (list!13777 (singletonSeq!2613 separatorToken!241))))))

(declare-fun e!2212443 () Bool)

(assert (=> d!1054826 (= lt!1226959 e!2212443)))

(declare-fun res!1442632 () Bool)

(assert (=> d!1054826 (=> (not res!1442632) (not e!2212443))))

(declare-fun lt!1226960 () tuple2!37456)

(assert (=> d!1054826 (= res!1442632 (= (size!28624 (_1!21862 lt!1226960)) 1))))

(assert (=> d!1054826 (= lt!1226960 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 separatorToken!241))))))

(assert (=> d!1054826 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1054826 (= (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 separatorToken!241) lt!1226959)))

(declare-fun b!3576371 () Bool)

(declare-fun res!1442634 () Bool)

(assert (=> b!3576371 (=> (not res!1442634) (not e!2212443))))

(assert (=> b!3576371 (= res!1442634 (= (apply!9036 (_1!21862 lt!1226960) 0) separatorToken!241))))

(declare-fun b!3576372 () Bool)

(assert (=> b!3576372 (= e!2212443 (isEmpty!22075 (_2!21862 lt!1226960)))))

(declare-fun b!3576373 () Bool)

(assert (=> b!3576373 (= e!2212444 (isEmpty!22075 (_2!21862 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 separatorToken!241))))))))

(assert (= (and d!1054826 res!1442632) b!3576371))

(assert (= (and b!3576371 res!1442634) b!3576372))

(assert (= (and d!1054826 res!1442633) b!3576373))

(declare-fun m!4069153 () Bool)

(assert (=> d!1054826 m!4069153))

(declare-fun m!4069155 () Bool)

(assert (=> d!1054826 m!4069155))

(declare-fun m!4069157 () Bool)

(assert (=> d!1054826 m!4069157))

(assert (=> d!1054826 m!4068789))

(assert (=> d!1054826 m!4069155))

(assert (=> d!1054826 m!4068747))

(declare-fun m!4069159 () Bool)

(assert (=> d!1054826 m!4069159))

(assert (=> d!1054826 m!4068789))

(declare-fun m!4069161 () Bool)

(assert (=> d!1054826 m!4069161))

(assert (=> d!1054826 m!4068789))

(declare-fun m!4069163 () Bool)

(assert (=> b!3576371 m!4069163))

(declare-fun m!4069165 () Bool)

(assert (=> b!3576372 m!4069165))

(assert (=> b!3576373 m!4068789))

(assert (=> b!3576373 m!4068789))

(assert (=> b!3576373 m!4069155))

(assert (=> b!3576373 m!4069155))

(assert (=> b!3576373 m!4069157))

(declare-fun m!4069167 () Bool)

(assert (=> b!3576373 m!4069167))

(assert (=> b!3576123 d!1054826))

(declare-fun d!1054834 () Bool)

(declare-fun res!1442639 () Bool)

(declare-fun e!2212449 () Bool)

(assert (=> d!1054834 (=> res!1442639 e!2212449)))

(assert (=> d!1054834 (= res!1442639 (not (is-Cons!37532 rules!2135)))))

(assert (=> d!1054834 (= (sepAndNonSepRulesDisjointChars!1711 rules!2135 rules!2135) e!2212449)))

(declare-fun b!3576378 () Bool)

(declare-fun e!2212450 () Bool)

(assert (=> b!3576378 (= e!2212449 e!2212450)))

(declare-fun res!1442640 () Bool)

(assert (=> b!3576378 (=> (not res!1442640) (not e!2212450))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!772 (Rule!10834 List!37656) Bool)

(assert (=> b!3576378 (= res!1442640 (ruleDisjointCharsFromAllFromOtherType!772 (h!42952 rules!2135) rules!2135))))

(declare-fun b!3576379 () Bool)

(assert (=> b!3576379 (= e!2212450 (sepAndNonSepRulesDisjointChars!1711 rules!2135 (t!289883 rules!2135)))))

(assert (= (and d!1054834 (not res!1442639)) b!3576378))

(assert (= (and b!3576378 res!1442640) b!3576379))

(declare-fun m!4069169 () Bool)

(assert (=> b!3576378 m!4069169))

(declare-fun m!4069171 () Bool)

(assert (=> b!3576379 m!4069171))

(assert (=> b!3576124 d!1054834))

(declare-fun d!1054836 () Bool)

(declare-fun res!1442645 () Bool)

(declare-fun e!2212455 () Bool)

(assert (=> d!1054836 (=> res!1442645 e!2212455)))

(assert (=> d!1054836 (= res!1442645 (is-Nil!37533 tokens!494))))

(assert (=> d!1054836 (= (forall!8125 tokens!494 lambda!123592) e!2212455)))

(declare-fun b!3576384 () Bool)

(declare-fun e!2212456 () Bool)

(assert (=> b!3576384 (= e!2212455 e!2212456)))

(declare-fun res!1442646 () Bool)

(assert (=> b!3576384 (=> (not res!1442646) (not e!2212456))))

(declare-fun dynLambda!16143 (Int Token!10400) Bool)

(assert (=> b!3576384 (= res!1442646 (dynLambda!16143 lambda!123592 (h!42953 tokens!494)))))

(declare-fun b!3576385 () Bool)

(assert (=> b!3576385 (= e!2212456 (forall!8125 (t!289884 tokens!494) lambda!123592))))

(assert (= (and d!1054836 (not res!1442645)) b!3576384))

(assert (= (and b!3576384 res!1442646) b!3576385))

(declare-fun b_lambda!105581 () Bool)

(assert (=> (not b_lambda!105581) (not b!3576384)))

(declare-fun m!4069173 () Bool)

(assert (=> b!3576384 m!4069173))

(assert (=> b!3576385 m!4068743))

(assert (=> b!3576145 d!1054836))

(declare-fun d!1054838 () Bool)

(assert (=> d!1054838 (dynLambda!16143 lambda!123592 (h!42953 (t!289884 tokens!494)))))

(declare-fun lt!1226963 () Unit!53556)

(declare-fun choose!20806 (List!37657 Int Token!10400) Unit!53556)

(assert (=> d!1054838 (= lt!1226963 (choose!20806 tokens!494 lambda!123592 (h!42953 (t!289884 tokens!494))))))

(declare-fun e!2212459 () Bool)

(assert (=> d!1054838 e!2212459))

(declare-fun res!1442649 () Bool)

(assert (=> d!1054838 (=> (not res!1442649) (not e!2212459))))

(assert (=> d!1054838 (= res!1442649 (forall!8125 tokens!494 lambda!123592))))

(assert (=> d!1054838 (= (forallContained!1464 tokens!494 lambda!123592 (h!42953 (t!289884 tokens!494))) lt!1226963)))

(declare-fun b!3576388 () Bool)

(declare-fun contains!7113 (List!37657 Token!10400) Bool)

(assert (=> b!3576388 (= e!2212459 (contains!7113 tokens!494 (h!42953 (t!289884 tokens!494))))))

(assert (= (and d!1054838 res!1442649) b!3576388))

(declare-fun b_lambda!105583 () Bool)

(assert (=> (not b_lambda!105583) (not d!1054838)))

(declare-fun m!4069175 () Bool)

(assert (=> d!1054838 m!4069175))

(declare-fun m!4069177 () Bool)

(assert (=> d!1054838 m!4069177))

(assert (=> d!1054838 m!4068683))

(declare-fun m!4069179 () Bool)

(assert (=> b!3576388 m!4069179))

(assert (=> b!3576146 d!1054838))

(declare-fun d!1054840 () Bool)

(assert (=> d!1054840 (dynLambda!16143 lambda!123592 (h!42953 tokens!494))))

(declare-fun lt!1226964 () Unit!53556)

(assert (=> d!1054840 (= lt!1226964 (choose!20806 tokens!494 lambda!123592 (h!42953 tokens!494)))))

(declare-fun e!2212460 () Bool)

(assert (=> d!1054840 e!2212460))

(declare-fun res!1442650 () Bool)

(assert (=> d!1054840 (=> (not res!1442650) (not e!2212460))))

(assert (=> d!1054840 (= res!1442650 (forall!8125 tokens!494 lambda!123592))))

(assert (=> d!1054840 (= (forallContained!1464 tokens!494 lambda!123592 (h!42953 tokens!494)) lt!1226964)))

(declare-fun b!3576389 () Bool)

(assert (=> b!3576389 (= e!2212460 (contains!7113 tokens!494 (h!42953 tokens!494)))))

(assert (= (and d!1054840 res!1442650) b!3576389))

(declare-fun b_lambda!105585 () Bool)

(assert (=> (not b_lambda!105585) (not d!1054840)))

(assert (=> d!1054840 m!4069173))

(declare-fun m!4069181 () Bool)

(assert (=> d!1054840 m!4069181))

(assert (=> d!1054840 m!4068683))

(declare-fun m!4069183 () Bool)

(assert (=> b!3576389 m!4069183))

(assert (=> b!3576146 d!1054840))

(declare-fun b!3576418 () Bool)

(declare-fun res!1442669 () Bool)

(declare-fun e!2212481 () Bool)

(assert (=> b!3576418 (=> res!1442669 e!2212481)))

(declare-fun e!2212478 () Bool)

(assert (=> b!3576418 (= res!1442669 e!2212478)))

(declare-fun res!1442670 () Bool)

(assert (=> b!3576418 (=> (not res!1442670) (not e!2212478))))

(declare-fun lt!1226967 () Bool)

(assert (=> b!3576418 (= res!1442670 lt!1226967)))

(declare-fun b!3576419 () Bool)

(declare-fun res!1442672 () Bool)

(declare-fun e!2212480 () Bool)

(assert (=> b!3576419 (=> res!1442672 e!2212480)))

(declare-fun tail!5538 (List!37655) List!37655)

(assert (=> b!3576419 (= res!1442672 (not (isEmpty!22080 (tail!5538 lt!1226762))))))

(declare-fun b!3576420 () Bool)

(declare-fun res!1442671 () Bool)

(assert (=> b!3576420 (=> res!1442671 e!2212481)))

(assert (=> b!3576420 (= res!1442671 (not (is-ElementMatch!10276 (regex!5517 lt!1226775))))))

(declare-fun e!2212475 () Bool)

(assert (=> b!3576420 (= e!2212475 e!2212481)))

(declare-fun b!3576421 () Bool)

(declare-fun e!2212479 () Bool)

(declare-fun derivativeStep!3094 (Regex!10276 C!20738) Regex!10276)

(assert (=> b!3576421 (= e!2212479 (matchR!4860 (derivativeStep!3094 (regex!5517 lt!1226775) (head!7450 lt!1226762)) (tail!5538 lt!1226762)))))

(declare-fun b!3576422 () Bool)

(declare-fun e!2212477 () Bool)

(assert (=> b!3576422 (= e!2212481 e!2212477)))

(declare-fun res!1442667 () Bool)

(assert (=> b!3576422 (=> (not res!1442667) (not e!2212477))))

(assert (=> b!3576422 (= res!1442667 (not lt!1226967))))

(declare-fun b!3576423 () Bool)

(declare-fun res!1442674 () Bool)

(assert (=> b!3576423 (=> (not res!1442674) (not e!2212478))))

(declare-fun call!259160 () Bool)

(assert (=> b!3576423 (= res!1442674 (not call!259160))))

(declare-fun b!3576424 () Bool)

(assert (=> b!3576424 (= e!2212480 (not (= (head!7450 lt!1226762) (c!619893 (regex!5517 lt!1226775)))))))

(declare-fun d!1054842 () Bool)

(declare-fun e!2212476 () Bool)

(assert (=> d!1054842 e!2212476))

(declare-fun c!619918 () Bool)

(assert (=> d!1054842 (= c!619918 (is-EmptyExpr!10276 (regex!5517 lt!1226775)))))

(assert (=> d!1054842 (= lt!1226967 e!2212479)))

(declare-fun c!619919 () Bool)

(assert (=> d!1054842 (= c!619919 (isEmpty!22080 lt!1226762))))

(declare-fun validRegex!4697 (Regex!10276) Bool)

(assert (=> d!1054842 (validRegex!4697 (regex!5517 lt!1226775))))

(assert (=> d!1054842 (= (matchR!4860 (regex!5517 lt!1226775) lt!1226762) lt!1226967)))

(declare-fun b!3576425 () Bool)

(assert (=> b!3576425 (= e!2212476 e!2212475)))

(declare-fun c!619917 () Bool)

(assert (=> b!3576425 (= c!619917 (is-EmptyLang!10276 (regex!5517 lt!1226775)))))

(declare-fun b!3576426 () Bool)

(declare-fun res!1442673 () Bool)

(assert (=> b!3576426 (=> (not res!1442673) (not e!2212478))))

(assert (=> b!3576426 (= res!1442673 (isEmpty!22080 (tail!5538 lt!1226762)))))

(declare-fun b!3576427 () Bool)

(assert (=> b!3576427 (= e!2212477 e!2212480)))

(declare-fun res!1442668 () Bool)

(assert (=> b!3576427 (=> res!1442668 e!2212480)))

(assert (=> b!3576427 (= res!1442668 call!259160)))

(declare-fun b!3576428 () Bool)

(assert (=> b!3576428 (= e!2212478 (= (head!7450 lt!1226762) (c!619893 (regex!5517 lt!1226775))))))

(declare-fun b!3576429 () Bool)

(declare-fun nullable!3541 (Regex!10276) Bool)

(assert (=> b!3576429 (= e!2212479 (nullable!3541 (regex!5517 lt!1226775)))))

(declare-fun b!3576430 () Bool)

(assert (=> b!3576430 (= e!2212475 (not lt!1226967))))

(declare-fun b!3576431 () Bool)

(assert (=> b!3576431 (= e!2212476 (= lt!1226967 call!259160))))

(declare-fun bm!259155 () Bool)

(assert (=> bm!259155 (= call!259160 (isEmpty!22080 lt!1226762))))

(assert (= (and d!1054842 c!619919) b!3576429))

(assert (= (and d!1054842 (not c!619919)) b!3576421))

(assert (= (and d!1054842 c!619918) b!3576431))

(assert (= (and d!1054842 (not c!619918)) b!3576425))

(assert (= (and b!3576425 c!619917) b!3576430))

(assert (= (and b!3576425 (not c!619917)) b!3576420))

(assert (= (and b!3576420 (not res!1442671)) b!3576418))

(assert (= (and b!3576418 res!1442670) b!3576423))

(assert (= (and b!3576423 res!1442674) b!3576426))

(assert (= (and b!3576426 res!1442673) b!3576428))

(assert (= (and b!3576418 (not res!1442669)) b!3576422))

(assert (= (and b!3576422 res!1442667) b!3576427))

(assert (= (and b!3576427 (not res!1442668)) b!3576419))

(assert (= (and b!3576419 (not res!1442672)) b!3576424))

(assert (= (or b!3576431 b!3576423 b!3576427) bm!259155))

(declare-fun m!4069185 () Bool)

(assert (=> b!3576428 m!4069185))

(declare-fun m!4069187 () Bool)

(assert (=> b!3576419 m!4069187))

(assert (=> b!3576419 m!4069187))

(declare-fun m!4069189 () Bool)

(assert (=> b!3576419 m!4069189))

(declare-fun m!4069191 () Bool)

(assert (=> bm!259155 m!4069191))

(assert (=> d!1054842 m!4069191))

(declare-fun m!4069193 () Bool)

(assert (=> d!1054842 m!4069193))

(assert (=> b!3576426 m!4069187))

(assert (=> b!3576426 m!4069187))

(assert (=> b!3576426 m!4069189))

(assert (=> b!3576424 m!4069185))

(declare-fun m!4069195 () Bool)

(assert (=> b!3576429 m!4069195))

(assert (=> b!3576421 m!4069185))

(assert (=> b!3576421 m!4069185))

(declare-fun m!4069197 () Bool)

(assert (=> b!3576421 m!4069197))

(assert (=> b!3576421 m!4069187))

(assert (=> b!3576421 m!4069197))

(assert (=> b!3576421 m!4069187))

(declare-fun m!4069199 () Bool)

(assert (=> b!3576421 m!4069199))

(assert (=> b!3576125 d!1054842))

(declare-fun d!1054844 () Bool)

(assert (=> d!1054844 (= (get!12083 lt!1226760) (v!37328 lt!1226760))))

(assert (=> b!3576125 d!1054844))

(declare-fun d!1054846 () Bool)

(declare-fun lt!1226970 () Token!10400)

(declare-fun apply!9040 (List!37657 Int) Token!10400)

(assert (=> d!1054846 (= lt!1226970 (apply!9040 (list!13777 (_1!21862 lt!1226757)) 0))))

(declare-fun apply!9041 (Conc!11410 Int) Token!10400)

(assert (=> d!1054846 (= lt!1226970 (apply!9041 (c!619894 (_1!21862 lt!1226757)) 0))))

(declare-fun e!2212484 () Bool)

(assert (=> d!1054846 e!2212484))

(declare-fun res!1442677 () Bool)

(assert (=> d!1054846 (=> (not res!1442677) (not e!2212484))))

(assert (=> d!1054846 (= res!1442677 (<= 0 0))))

(assert (=> d!1054846 (= (apply!9036 (_1!21862 lt!1226757) 0) lt!1226970)))

(declare-fun b!3576434 () Bool)

(assert (=> b!3576434 (= e!2212484 (< 0 (size!28624 (_1!21862 lt!1226757))))))

(assert (= (and d!1054846 res!1442677) b!3576434))

(declare-fun m!4069201 () Bool)

(assert (=> d!1054846 m!4069201))

(assert (=> d!1054846 m!4069201))

(declare-fun m!4069203 () Bool)

(assert (=> d!1054846 m!4069203))

(declare-fun m!4069205 () Bool)

(assert (=> d!1054846 m!4069205))

(assert (=> b!3576434 m!4068791))

(assert (=> b!3576126 d!1054846))

(declare-fun b!3576445 () Bool)

(declare-fun res!1442680 () Bool)

(declare-fun e!2212492 () Bool)

(assert (=> b!3576445 (=> res!1442680 e!2212492)))

(assert (=> b!3576445 (= res!1442680 (not (is-IntegerValue!17243 (value!177696 (h!42953 tokens!494)))))))

(declare-fun e!2212493 () Bool)

(assert (=> b!3576445 (= e!2212493 e!2212492)))

(declare-fun b!3576446 () Bool)

(declare-fun e!2212491 () Bool)

(assert (=> b!3576446 (= e!2212491 e!2212493)))

(declare-fun c!619925 () Bool)

(assert (=> b!3576446 (= c!619925 (is-IntegerValue!17242 (value!177696 (h!42953 tokens!494))))))

(declare-fun b!3576447 () Bool)

(declare-fun inv!16 (TokenValue!5747) Bool)

(assert (=> b!3576447 (= e!2212491 (inv!16 (value!177696 (h!42953 tokens!494))))))

(declare-fun b!3576448 () Bool)

(declare-fun inv!15 (TokenValue!5747) Bool)

(assert (=> b!3576448 (= e!2212492 (inv!15 (value!177696 (h!42953 tokens!494))))))

(declare-fun b!3576449 () Bool)

(declare-fun inv!17 (TokenValue!5747) Bool)

(assert (=> b!3576449 (= e!2212493 (inv!17 (value!177696 (h!42953 tokens!494))))))

(declare-fun d!1054848 () Bool)

(declare-fun c!619924 () Bool)

(assert (=> d!1054848 (= c!619924 (is-IntegerValue!17241 (value!177696 (h!42953 tokens!494))))))

(assert (=> d!1054848 (= (inv!21 (value!177696 (h!42953 tokens!494))) e!2212491)))

(assert (= (and d!1054848 c!619924) b!3576447))

(assert (= (and d!1054848 (not c!619924)) b!3576446))

(assert (= (and b!3576446 c!619925) b!3576449))

(assert (= (and b!3576446 (not c!619925)) b!3576445))

(assert (= (and b!3576445 (not res!1442680)) b!3576448))

(declare-fun m!4069207 () Bool)

(assert (=> b!3576447 m!4069207))

(declare-fun m!4069209 () Bool)

(assert (=> b!3576448 m!4069209))

(declare-fun m!4069211 () Bool)

(assert (=> b!3576449 m!4069211))

(assert (=> b!3576148 d!1054848))

(declare-fun d!1054850 () Bool)

(assert (=> d!1054850 (= (inv!50809 (tag!6179 (rule!8221 (h!42953 tokens!494)))) (= (mod (str.len (value!177695 (tag!6179 (rule!8221 (h!42953 tokens!494))))) 2) 0))))

(assert (=> b!3576127 d!1054850))

(declare-fun d!1054852 () Bool)

(declare-fun res!1442681 () Bool)

(declare-fun e!2212494 () Bool)

(assert (=> d!1054852 (=> (not res!1442681) (not e!2212494))))

(assert (=> d!1054852 (= res!1442681 (semiInverseModEq!2336 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494))))))))

(assert (=> d!1054852 (= (inv!50812 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) e!2212494)))

(declare-fun b!3576450 () Bool)

(assert (=> b!3576450 (= e!2212494 (equivClasses!2235 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494))))))))

(assert (= (and d!1054852 res!1442681) b!3576450))

(declare-fun m!4069213 () Bool)

(assert (=> d!1054852 m!4069213))

(declare-fun m!4069215 () Bool)

(assert (=> b!3576450 m!4069215))

(assert (=> b!3576127 d!1054852))

(declare-fun d!1054854 () Bool)

(declare-fun res!1442684 () Bool)

(declare-fun e!2212497 () Bool)

(assert (=> d!1054854 (=> (not res!1442684) (not e!2212497))))

(declare-fun rulesValid!2096 (LexerInterface!5106 List!37656) Bool)

(assert (=> d!1054854 (= res!1442684 (rulesValid!2096 thiss!18206 rules!2135))))

(assert (=> d!1054854 (= (rulesInvariant!4503 thiss!18206 rules!2135) e!2212497)))

(declare-fun b!3576453 () Bool)

(declare-datatypes ((List!37662 0))(
  ( (Nil!37538) (Cons!37538 (h!42958 String!42071) (t!290009 List!37662)) )
))
(declare-fun noDuplicateTag!2092 (LexerInterface!5106 List!37656 List!37662) Bool)

(assert (=> b!3576453 (= e!2212497 (noDuplicateTag!2092 thiss!18206 rules!2135 Nil!37538))))

(assert (= (and d!1054854 res!1442684) b!3576453))

(declare-fun m!4069217 () Bool)

(assert (=> d!1054854 m!4069217))

(declare-fun m!4069219 () Bool)

(assert (=> b!3576453 m!4069219))

(assert (=> b!3576128 d!1054854))

(declare-fun d!1054856 () Bool)

(declare-fun res!1442689 () Bool)

(declare-fun e!2212500 () Bool)

(assert (=> d!1054856 (=> (not res!1442689) (not e!2212500))))

(assert (=> d!1054856 (= res!1442689 (not (isEmpty!22080 (originalCharacters!6231 (h!42953 tokens!494)))))))

(assert (=> d!1054856 (= (inv!50813 (h!42953 tokens!494)) e!2212500)))

(declare-fun b!3576458 () Bool)

(declare-fun res!1442690 () Bool)

(assert (=> b!3576458 (=> (not res!1442690) (not e!2212500))))

(assert (=> b!3576458 (= res!1442690 (= (originalCharacters!6231 (h!42953 tokens!494)) (list!13774 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (value!177696 (h!42953 tokens!494))))))))

(declare-fun b!3576459 () Bool)

(assert (=> b!3576459 (= e!2212500 (= (size!28622 (h!42953 tokens!494)) (size!28623 (originalCharacters!6231 (h!42953 tokens!494)))))))

(assert (= (and d!1054856 res!1442689) b!3576458))

(assert (= (and b!3576458 res!1442690) b!3576459))

(declare-fun b_lambda!105587 () Bool)

(assert (=> (not b_lambda!105587) (not b!3576458)))

(assert (=> b!3576458 t!289896))

(declare-fun b_and!257673 () Bool)

(assert (= b_and!257667 (and (=> t!289896 result!248716) b_and!257673)))

(assert (=> b!3576458 t!289898))

(declare-fun b_and!257675 () Bool)

(assert (= b_and!257669 (and (=> t!289898 result!248720) b_and!257675)))

(assert (=> b!3576458 t!289900))

(declare-fun b_and!257677 () Bool)

(assert (= b_and!257671 (and (=> t!289900 result!248722) b_and!257677)))

(declare-fun m!4069221 () Bool)

(assert (=> d!1054856 m!4069221))

(assert (=> b!3576458 m!4069085))

(assert (=> b!3576458 m!4069085))

(declare-fun m!4069223 () Bool)

(assert (=> b!3576458 m!4069223))

(declare-fun m!4069225 () Bool)

(assert (=> b!3576459 m!4069225))

(assert (=> b!3576149 d!1054856))

(declare-fun b!3576460 () Bool)

(declare-fun res!1442691 () Bool)

(declare-fun e!2212502 () Bool)

(assert (=> b!3576460 (=> res!1442691 e!2212502)))

(assert (=> b!3576460 (= res!1442691 (not (is-IntegerValue!17243 (value!177696 separatorToken!241))))))

(declare-fun e!2212503 () Bool)

(assert (=> b!3576460 (= e!2212503 e!2212502)))

(declare-fun b!3576461 () Bool)

(declare-fun e!2212501 () Bool)

(assert (=> b!3576461 (= e!2212501 e!2212503)))

(declare-fun c!619927 () Bool)

(assert (=> b!3576461 (= c!619927 (is-IntegerValue!17242 (value!177696 separatorToken!241)))))

(declare-fun b!3576462 () Bool)

(assert (=> b!3576462 (= e!2212501 (inv!16 (value!177696 separatorToken!241)))))

(declare-fun b!3576463 () Bool)

(assert (=> b!3576463 (= e!2212502 (inv!15 (value!177696 separatorToken!241)))))

(declare-fun b!3576464 () Bool)

(assert (=> b!3576464 (= e!2212503 (inv!17 (value!177696 separatorToken!241)))))

(declare-fun d!1054858 () Bool)

(declare-fun c!619926 () Bool)

(assert (=> d!1054858 (= c!619926 (is-IntegerValue!17241 (value!177696 separatorToken!241)))))

(assert (=> d!1054858 (= (inv!21 (value!177696 separatorToken!241)) e!2212501)))

(assert (= (and d!1054858 c!619926) b!3576462))

(assert (= (and d!1054858 (not c!619926)) b!3576461))

(assert (= (and b!3576461 c!619927) b!3576464))

(assert (= (and b!3576461 (not c!619927)) b!3576460))

(assert (= (and b!3576460 (not res!1442691)) b!3576463))

(declare-fun m!4069227 () Bool)

(assert (=> b!3576462 m!4069227))

(declare-fun m!4069229 () Bool)

(assert (=> b!3576463 m!4069229))

(declare-fun m!4069231 () Bool)

(assert (=> b!3576464 m!4069231))

(assert (=> b!3576150 d!1054858))

(declare-fun d!1054860 () Bool)

(declare-fun lt!1226973 () BalanceConc!22432)

(assert (=> d!1054860 (= (list!13774 lt!1226973) (printList!1654 thiss!18206 (list!13777 lt!1226751)))))

(assert (=> d!1054860 (= lt!1226973 (printTailRec!1601 thiss!18206 lt!1226751 0 (BalanceConc!22433 Empty!11409)))))

(assert (=> d!1054860 (= (print!2171 thiss!18206 lt!1226751) lt!1226973)))

(declare-fun bs!569631 () Bool)

(assert (= bs!569631 d!1054860))

(declare-fun m!4069233 () Bool)

(assert (=> bs!569631 m!4069233))

(declare-fun m!4069235 () Bool)

(assert (=> bs!569631 m!4069235))

(assert (=> bs!569631 m!4069235))

(declare-fun m!4069237 () Bool)

(assert (=> bs!569631 m!4069237))

(assert (=> bs!569631 m!4068653))

(assert (=> b!3576130 d!1054860))

(declare-fun d!1054862 () Bool)

(declare-fun lt!1226994 () BalanceConc!22432)

(declare-fun printListTailRec!741 (LexerInterface!5106 List!37657 List!37655) List!37655)

(declare-fun dropList!1258 (BalanceConc!22434 Int) List!37657)

(assert (=> d!1054862 (= (list!13774 lt!1226994) (printListTailRec!741 thiss!18206 (dropList!1258 lt!1226751 0) (list!13774 (BalanceConc!22433 Empty!11409))))))

(declare-fun e!2212517 () BalanceConc!22432)

(assert (=> d!1054862 (= lt!1226994 e!2212517)))

(declare-fun c!619933 () Bool)

(assert (=> d!1054862 (= c!619933 (>= 0 (size!28624 lt!1226751)))))

(declare-fun e!2212518 () Bool)

(assert (=> d!1054862 e!2212518))

(declare-fun res!1442703 () Bool)

(assert (=> d!1054862 (=> (not res!1442703) (not e!2212518))))

(assert (=> d!1054862 (= res!1442703 (>= 0 0))))

(assert (=> d!1054862 (= (printTailRec!1601 thiss!18206 lt!1226751 0 (BalanceConc!22433 Empty!11409)) lt!1226994)))

(declare-fun b!3576486 () Bool)

(assert (=> b!3576486 (= e!2212518 (<= 0 (size!28624 lt!1226751)))))

(declare-fun b!3576487 () Bool)

(assert (=> b!3576487 (= e!2212517 (BalanceConc!22433 Empty!11409))))

(declare-fun b!3576488 () Bool)

(declare-fun ++!9340 (BalanceConc!22432 BalanceConc!22432) BalanceConc!22432)

(assert (=> b!3576488 (= e!2212517 (printTailRec!1601 thiss!18206 lt!1226751 (+ 0 1) (++!9340 (BalanceConc!22433 Empty!11409) (charsOf!3531 (apply!9036 lt!1226751 0)))))))

(declare-fun lt!1226995 () List!37657)

(assert (=> b!3576488 (= lt!1226995 (list!13777 lt!1226751))))

(declare-fun lt!1226993 () Unit!53556)

(declare-fun lemmaDropApply!1216 (List!37657 Int) Unit!53556)

(assert (=> b!3576488 (= lt!1226993 (lemmaDropApply!1216 lt!1226995 0))))

(declare-fun head!7452 (List!37657) Token!10400)

(declare-fun drop!2078 (List!37657 Int) List!37657)

(assert (=> b!3576488 (= (head!7452 (drop!2078 lt!1226995 0)) (apply!9040 lt!1226995 0))))

(declare-fun lt!1226996 () Unit!53556)

(assert (=> b!3576488 (= lt!1226996 lt!1226993)))

(declare-fun lt!1226991 () List!37657)

(assert (=> b!3576488 (= lt!1226991 (list!13777 lt!1226751))))

(declare-fun lt!1226997 () Unit!53556)

(declare-fun lemmaDropTail!1100 (List!37657 Int) Unit!53556)

(assert (=> b!3576488 (= lt!1226997 (lemmaDropTail!1100 lt!1226991 0))))

(declare-fun tail!5539 (List!37657) List!37657)

(assert (=> b!3576488 (= (tail!5539 (drop!2078 lt!1226991 0)) (drop!2078 lt!1226991 (+ 0 1)))))

(declare-fun lt!1226992 () Unit!53556)

(assert (=> b!3576488 (= lt!1226992 lt!1226997)))

(assert (= (and d!1054862 res!1442703) b!3576486))

(assert (= (and d!1054862 c!619933) b!3576487))

(assert (= (and d!1054862 (not c!619933)) b!3576488))

(declare-fun m!4069257 () Bool)

(assert (=> d!1054862 m!4069257))

(declare-fun m!4069259 () Bool)

(assert (=> d!1054862 m!4069259))

(declare-fun m!4069261 () Bool)

(assert (=> d!1054862 m!4069261))

(declare-fun m!4069263 () Bool)

(assert (=> d!1054862 m!4069263))

(assert (=> d!1054862 m!4069259))

(assert (=> d!1054862 m!4069257))

(declare-fun m!4069265 () Bool)

(assert (=> d!1054862 m!4069265))

(assert (=> b!3576486 m!4069263))

(declare-fun m!4069267 () Bool)

(assert (=> b!3576488 m!4069267))

(declare-fun m!4069269 () Bool)

(assert (=> b!3576488 m!4069269))

(declare-fun m!4069271 () Bool)

(assert (=> b!3576488 m!4069271))

(declare-fun m!4069273 () Bool)

(assert (=> b!3576488 m!4069273))

(declare-fun m!4069275 () Bool)

(assert (=> b!3576488 m!4069275))

(declare-fun m!4069277 () Bool)

(assert (=> b!3576488 m!4069277))

(declare-fun m!4069279 () Bool)

(assert (=> b!3576488 m!4069279))

(assert (=> b!3576488 m!4069279))

(declare-fun m!4069281 () Bool)

(assert (=> b!3576488 m!4069281))

(declare-fun m!4069283 () Bool)

(assert (=> b!3576488 m!4069283))

(assert (=> b!3576488 m!4069283))

(declare-fun m!4069285 () Bool)

(assert (=> b!3576488 m!4069285))

(declare-fun m!4069287 () Bool)

(assert (=> b!3576488 m!4069287))

(assert (=> b!3576488 m!4069269))

(assert (=> b!3576488 m!4069273))

(assert (=> b!3576488 m!4069287))

(assert (=> b!3576488 m!4069235))

(declare-fun m!4069289 () Bool)

(assert (=> b!3576488 m!4069289))

(assert (=> b!3576130 d!1054862))

(declare-fun d!1054866 () Bool)

(assert (=> d!1054866 (= (list!13774 lt!1226774) (list!13776 (c!619892 lt!1226774)))))

(declare-fun bs!569632 () Bool)

(assert (= bs!569632 d!1054866))

(declare-fun m!4069291 () Bool)

(assert (=> bs!569632 m!4069291))

(assert (=> b!3576130 d!1054866))

(declare-fun d!1054868 () Bool)

(declare-fun e!2212521 () Bool)

(assert (=> d!1054868 e!2212521))

(declare-fun res!1442706 () Bool)

(assert (=> d!1054868 (=> (not res!1442706) (not e!2212521))))

(declare-fun lt!1227000 () BalanceConc!22434)

(assert (=> d!1054868 (= res!1442706 (= (list!13777 lt!1227000) (Cons!37533 (h!42953 tokens!494) Nil!37533)))))

(declare-fun singleton!1173 (Token!10400) BalanceConc!22434)

(assert (=> d!1054868 (= lt!1227000 (singleton!1173 (h!42953 tokens!494)))))

(assert (=> d!1054868 (= (singletonSeq!2613 (h!42953 tokens!494)) lt!1227000)))

(declare-fun b!3576491 () Bool)

(declare-fun isBalanced!3490 (Conc!11410) Bool)

(assert (=> b!3576491 (= e!2212521 (isBalanced!3490 (c!619894 lt!1227000)))))

(assert (= (and d!1054868 res!1442706) b!3576491))

(declare-fun m!4069293 () Bool)

(assert (=> d!1054868 m!4069293))

(declare-fun m!4069295 () Bool)

(assert (=> d!1054868 m!4069295))

(declare-fun m!4069297 () Bool)

(assert (=> b!3576491 m!4069297))

(assert (=> b!3576130 d!1054868))

(declare-fun d!1054870 () Bool)

(declare-fun c!619936 () Bool)

(assert (=> d!1054870 (= c!619936 (is-Cons!37533 (Cons!37533 (h!42953 tokens!494) Nil!37533)))))

(declare-fun e!2212524 () List!37655)

(assert (=> d!1054870 (= (printList!1654 thiss!18206 (Cons!37533 (h!42953 tokens!494) Nil!37533)) e!2212524)))

(declare-fun b!3576496 () Bool)

(assert (=> b!3576496 (= e!2212524 (++!9338 (list!13774 (charsOf!3531 (h!42953 (Cons!37533 (h!42953 tokens!494) Nil!37533)))) (printList!1654 thiss!18206 (t!289884 (Cons!37533 (h!42953 tokens!494) Nil!37533)))))))

(declare-fun b!3576497 () Bool)

(assert (=> b!3576497 (= e!2212524 Nil!37531)))

(assert (= (and d!1054870 c!619936) b!3576496))

(assert (= (and d!1054870 (not c!619936)) b!3576497))

(declare-fun m!4069299 () Bool)

(assert (=> b!3576496 m!4069299))

(assert (=> b!3576496 m!4069299))

(declare-fun m!4069301 () Bool)

(assert (=> b!3576496 m!4069301))

(declare-fun m!4069303 () Bool)

(assert (=> b!3576496 m!4069303))

(assert (=> b!3576496 m!4069301))

(assert (=> b!3576496 m!4069303))

(declare-fun m!4069305 () Bool)

(assert (=> b!3576496 m!4069305))

(assert (=> b!3576130 d!1054870))

(declare-fun d!1054872 () Bool)

(declare-fun res!1442707 () Bool)

(declare-fun e!2212525 () Bool)

(assert (=> d!1054872 (=> res!1442707 e!2212525)))

(assert (=> d!1054872 (= res!1442707 (is-Nil!37533 (t!289884 tokens!494)))))

(assert (=> d!1054872 (= (forall!8125 (t!289884 tokens!494) lambda!123592) e!2212525)))

(declare-fun b!3576498 () Bool)

(declare-fun e!2212526 () Bool)

(assert (=> b!3576498 (= e!2212525 e!2212526)))

(declare-fun res!1442708 () Bool)

(assert (=> b!3576498 (=> (not res!1442708) (not e!2212526))))

(assert (=> b!3576498 (= res!1442708 (dynLambda!16143 lambda!123592 (h!42953 (t!289884 tokens!494))))))

(declare-fun b!3576499 () Bool)

(assert (=> b!3576499 (= e!2212526 (forall!8125 (t!289884 (t!289884 tokens!494)) lambda!123592))))

(assert (= (and d!1054872 (not res!1442707)) b!3576498))

(assert (= (and b!3576498 res!1442708) b!3576499))

(declare-fun b_lambda!105589 () Bool)

(assert (=> (not b_lambda!105589) (not b!3576498)))

(assert (=> b!3576498 m!4069175))

(declare-fun m!4069307 () Bool)

(assert (=> b!3576499 m!4069307))

(assert (=> b!3576151 d!1054872))

(declare-fun d!1054874 () Bool)

(assert (=> d!1054874 (= (isEmpty!22076 rules!2135) (is-Nil!37532 rules!2135))))

(assert (=> b!3576152 d!1054874))

(declare-fun d!1054876 () Bool)

(declare-fun lt!1227001 () Token!10400)

(assert (=> d!1054876 (= lt!1227001 (apply!9040 (list!13777 (_1!21862 lt!1226776)) 0))))

(assert (=> d!1054876 (= lt!1227001 (apply!9041 (c!619894 (_1!21862 lt!1226776)) 0))))

(declare-fun e!2212527 () Bool)

(assert (=> d!1054876 e!2212527))

(declare-fun res!1442709 () Bool)

(assert (=> d!1054876 (=> (not res!1442709) (not e!2212527))))

(assert (=> d!1054876 (= res!1442709 (<= 0 0))))

(assert (=> d!1054876 (= (apply!9036 (_1!21862 lt!1226776) 0) lt!1227001)))

(declare-fun b!3576500 () Bool)

(assert (=> b!3576500 (= e!2212527 (< 0 (size!28624 (_1!21862 lt!1226776))))))

(assert (= (and d!1054876 res!1442709) b!3576500))

(declare-fun m!4069309 () Bool)

(assert (=> d!1054876 m!4069309))

(assert (=> d!1054876 m!4069309))

(declare-fun m!4069311 () Bool)

(assert (=> d!1054876 m!4069311))

(declare-fun m!4069313 () Bool)

(assert (=> d!1054876 m!4069313))

(assert (=> b!3576500 m!4068769))

(assert (=> b!3576132 d!1054876))

(declare-fun bs!569634 () Bool)

(declare-fun d!1054878 () Bool)

(assert (= bs!569634 (and d!1054878 b!3576145)))

(declare-fun lambda!123610 () Int)

(assert (=> bs!569634 (not (= lambda!123610 lambda!123592))))

(declare-fun bs!569635 () Bool)

(assert (= bs!569635 (and d!1054878 b!3576137)))

(assert (=> bs!569635 (= lambda!123610 lambda!123593)))

(declare-fun b!3576530 () Bool)

(declare-fun e!2212548 () Bool)

(assert (=> b!3576530 (= e!2212548 true)))

(declare-fun b!3576529 () Bool)

(declare-fun e!2212547 () Bool)

(assert (=> b!3576529 (= e!2212547 e!2212548)))

(declare-fun b!3576528 () Bool)

(declare-fun e!2212546 () Bool)

(assert (=> b!3576528 (= e!2212546 e!2212547)))

(assert (=> d!1054878 e!2212546))

(assert (= b!3576529 b!3576530))

(assert (= b!3576528 b!3576529))

(assert (= (and d!1054878 (is-Cons!37532 rules!2135)) b!3576528))

(assert (=> b!3576530 (< (dynLambda!16136 order!20383 (toValue!7789 (transformation!5517 (h!42952 rules!2135)))) (dynLambda!16137 order!20385 lambda!123610))))

(assert (=> b!3576530 (< (dynLambda!16138 order!20387 (toChars!7648 (transformation!5517 (h!42952 rules!2135)))) (dynLambda!16137 order!20385 lambda!123610))))

(assert (=> d!1054878 true))

(declare-fun e!2212545 () Bool)

(assert (=> d!1054878 e!2212545))

(declare-fun res!1442718 () Bool)

(assert (=> d!1054878 (=> (not res!1442718) (not e!2212545))))

(declare-fun lt!1227019 () Bool)

(assert (=> d!1054878 (= res!1442718 (= lt!1227019 (forall!8125 (list!13777 (seqFromList!4088 tokens!494)) lambda!123610)))))

(declare-fun forall!8127 (BalanceConc!22434 Int) Bool)

(assert (=> d!1054878 (= lt!1227019 (forall!8127 (seqFromList!4088 tokens!494) lambda!123610))))

(assert (=> d!1054878 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1054878 (= (rulesProduceEachTokenIndividually!1557 thiss!18206 rules!2135 (seqFromList!4088 tokens!494)) lt!1227019)))

(declare-fun b!3576527 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1908 (LexerInterface!5106 List!37656 List!37657) Bool)

(assert (=> b!3576527 (= e!2212545 (= lt!1227019 (rulesProduceEachTokenIndividuallyList!1908 thiss!18206 rules!2135 (list!13777 (seqFromList!4088 tokens!494)))))))

(assert (= (and d!1054878 res!1442718) b!3576527))

(assert (=> d!1054878 m!4068713))

(declare-fun m!4069331 () Bool)

(assert (=> d!1054878 m!4069331))

(assert (=> d!1054878 m!4069331))

(declare-fun m!4069333 () Bool)

(assert (=> d!1054878 m!4069333))

(assert (=> d!1054878 m!4068713))

(declare-fun m!4069335 () Bool)

(assert (=> d!1054878 m!4069335))

(assert (=> d!1054878 m!4068747))

(assert (=> b!3576527 m!4068713))

(assert (=> b!3576527 m!4069331))

(assert (=> b!3576527 m!4069331))

(declare-fun m!4069337 () Bool)

(assert (=> b!3576527 m!4069337))

(assert (=> b!3576154 d!1054878))

(declare-fun d!1054886 () Bool)

(declare-fun fromListB!1888 (List!37657) BalanceConc!22434)

(assert (=> d!1054886 (= (seqFromList!4088 tokens!494) (fromListB!1888 tokens!494))))

(declare-fun bs!569637 () Bool)

(assert (= bs!569637 d!1054886))

(declare-fun m!4069343 () Bool)

(assert (=> bs!569637 m!4069343))

(assert (=> b!3576154 d!1054886))

(declare-fun b!3576531 () Bool)

(declare-fun res!1442721 () Bool)

(declare-fun e!2212555 () Bool)

(assert (=> b!3576531 (=> res!1442721 e!2212555)))

(declare-fun e!2212552 () Bool)

(assert (=> b!3576531 (= res!1442721 e!2212552)))

(declare-fun res!1442722 () Bool)

(assert (=> b!3576531 (=> (not res!1442722) (not e!2212552))))

(declare-fun lt!1227023 () Bool)

(assert (=> b!3576531 (= res!1442722 lt!1227023)))

(declare-fun b!3576532 () Bool)

(declare-fun res!1442724 () Bool)

(declare-fun e!2212554 () Bool)

(assert (=> b!3576532 (=> res!1442724 e!2212554)))

(assert (=> b!3576532 (= res!1442724 (not (isEmpty!22080 (tail!5538 lt!1226740))))))

(declare-fun b!3576533 () Bool)

(declare-fun res!1442723 () Bool)

(assert (=> b!3576533 (=> res!1442723 e!2212555)))

(assert (=> b!3576533 (= res!1442723 (not (is-ElementMatch!10276 (regex!5517 lt!1226758))))))

(declare-fun e!2212549 () Bool)

(assert (=> b!3576533 (= e!2212549 e!2212555)))

(declare-fun b!3576534 () Bool)

(declare-fun e!2212553 () Bool)

(assert (=> b!3576534 (= e!2212553 (matchR!4860 (derivativeStep!3094 (regex!5517 lt!1226758) (head!7450 lt!1226740)) (tail!5538 lt!1226740)))))

(declare-fun b!3576535 () Bool)

(declare-fun e!2212551 () Bool)

(assert (=> b!3576535 (= e!2212555 e!2212551)))

(declare-fun res!1442719 () Bool)

(assert (=> b!3576535 (=> (not res!1442719) (not e!2212551))))

(assert (=> b!3576535 (= res!1442719 (not lt!1227023))))

(declare-fun b!3576536 () Bool)

(declare-fun res!1442726 () Bool)

(assert (=> b!3576536 (=> (not res!1442726) (not e!2212552))))

(declare-fun call!259161 () Bool)

(assert (=> b!3576536 (= res!1442726 (not call!259161))))

(declare-fun b!3576537 () Bool)

(assert (=> b!3576537 (= e!2212554 (not (= (head!7450 lt!1226740) (c!619893 (regex!5517 lt!1226758)))))))

(declare-fun d!1054888 () Bool)

(declare-fun e!2212550 () Bool)

(assert (=> d!1054888 e!2212550))

(declare-fun c!619947 () Bool)

(assert (=> d!1054888 (= c!619947 (is-EmptyExpr!10276 (regex!5517 lt!1226758)))))

(assert (=> d!1054888 (= lt!1227023 e!2212553)))

(declare-fun c!619948 () Bool)

(assert (=> d!1054888 (= c!619948 (isEmpty!22080 lt!1226740))))

(assert (=> d!1054888 (validRegex!4697 (regex!5517 lt!1226758))))

(assert (=> d!1054888 (= (matchR!4860 (regex!5517 lt!1226758) lt!1226740) lt!1227023)))

(declare-fun b!3576538 () Bool)

(assert (=> b!3576538 (= e!2212550 e!2212549)))

(declare-fun c!619946 () Bool)

(assert (=> b!3576538 (= c!619946 (is-EmptyLang!10276 (regex!5517 lt!1226758)))))

(declare-fun b!3576539 () Bool)

(declare-fun res!1442725 () Bool)

(assert (=> b!3576539 (=> (not res!1442725) (not e!2212552))))

(assert (=> b!3576539 (= res!1442725 (isEmpty!22080 (tail!5538 lt!1226740)))))

(declare-fun b!3576540 () Bool)

(assert (=> b!3576540 (= e!2212551 e!2212554)))

(declare-fun res!1442720 () Bool)

(assert (=> b!3576540 (=> res!1442720 e!2212554)))

(assert (=> b!3576540 (= res!1442720 call!259161)))

(declare-fun b!3576541 () Bool)

(assert (=> b!3576541 (= e!2212552 (= (head!7450 lt!1226740) (c!619893 (regex!5517 lt!1226758))))))

(declare-fun b!3576542 () Bool)

(assert (=> b!3576542 (= e!2212553 (nullable!3541 (regex!5517 lt!1226758)))))

(declare-fun b!3576543 () Bool)

(assert (=> b!3576543 (= e!2212549 (not lt!1227023))))

(declare-fun b!3576544 () Bool)

(assert (=> b!3576544 (= e!2212550 (= lt!1227023 call!259161))))

(declare-fun bm!259156 () Bool)

(assert (=> bm!259156 (= call!259161 (isEmpty!22080 lt!1226740))))

(assert (= (and d!1054888 c!619948) b!3576542))

(assert (= (and d!1054888 (not c!619948)) b!3576534))

(assert (= (and d!1054888 c!619947) b!3576544))

(assert (= (and d!1054888 (not c!619947)) b!3576538))

(assert (= (and b!3576538 c!619946) b!3576543))

(assert (= (and b!3576538 (not c!619946)) b!3576533))

(assert (= (and b!3576533 (not res!1442723)) b!3576531))

(assert (= (and b!3576531 res!1442722) b!3576536))

(assert (= (and b!3576536 res!1442726) b!3576539))

(assert (= (and b!3576539 res!1442725) b!3576541))

(assert (= (and b!3576531 (not res!1442721)) b!3576535))

(assert (= (and b!3576535 res!1442719) b!3576540))

(assert (= (and b!3576540 (not res!1442720)) b!3576532))

(assert (= (and b!3576532 (not res!1442724)) b!3576537))

(assert (= (or b!3576544 b!3576536 b!3576540) bm!259156))

(assert (=> b!3576541 m!4068805))

(declare-fun m!4069347 () Bool)

(assert (=> b!3576532 m!4069347))

(assert (=> b!3576532 m!4069347))

(declare-fun m!4069349 () Bool)

(assert (=> b!3576532 m!4069349))

(declare-fun m!4069351 () Bool)

(assert (=> bm!259156 m!4069351))

(assert (=> d!1054888 m!4069351))

(declare-fun m!4069353 () Bool)

(assert (=> d!1054888 m!4069353))

(assert (=> b!3576539 m!4069347))

(assert (=> b!3576539 m!4069347))

(assert (=> b!3576539 m!4069349))

(assert (=> b!3576537 m!4068805))

(declare-fun m!4069355 () Bool)

(assert (=> b!3576542 m!4069355))

(assert (=> b!3576534 m!4068805))

(assert (=> b!3576534 m!4068805))

(declare-fun m!4069357 () Bool)

(assert (=> b!3576534 m!4069357))

(assert (=> b!3576534 m!4069347))

(assert (=> b!3576534 m!4069357))

(assert (=> b!3576534 m!4069347))

(declare-fun m!4069359 () Bool)

(assert (=> b!3576534 m!4069359))

(assert (=> b!3576133 d!1054888))

(declare-fun d!1054892 () Bool)

(assert (=> d!1054892 (= (get!12083 lt!1226773) (v!37328 lt!1226773))))

(assert (=> b!3576133 d!1054892))

(declare-fun d!1054894 () Bool)

(declare-fun c!619951 () Bool)

(assert (=> d!1054894 (= c!619951 (is-Cons!37533 tokens!494))))

(declare-fun e!2212558 () List!37655)

(assert (=> d!1054894 (= (printWithSeparatorTokenList!393 thiss!18206 tokens!494 separatorToken!241) e!2212558)))

(declare-fun b!3576549 () Bool)

(assert (=> b!3576549 (= e!2212558 (++!9338 (++!9338 (list!13774 (charsOf!3531 (h!42953 tokens!494))) (list!13774 (charsOf!3531 separatorToken!241))) (printWithSeparatorTokenList!393 thiss!18206 (t!289884 tokens!494) separatorToken!241)))))

(declare-fun b!3576550 () Bool)

(assert (=> b!3576550 (= e!2212558 Nil!37531)))

(assert (= (and d!1054894 c!619951) b!3576549))

(assert (= (and d!1054894 (not c!619951)) b!3576550))

(assert (=> b!3576549 m!4068741))

(assert (=> b!3576549 m!4068675))

(declare-fun m!4069361 () Bool)

(assert (=> b!3576549 m!4069361))

(assert (=> b!3576549 m!4068659))

(assert (=> b!3576549 m!4068675))

(assert (=> b!3576549 m!4068739))

(assert (=> b!3576549 m!4068741))

(assert (=> b!3576549 m!4068663))

(assert (=> b!3576549 m!4068659))

(assert (=> b!3576549 m!4068739))

(assert (=> b!3576549 m!4069361))

(assert (=> b!3576549 m!4068663))

(declare-fun m!4069363 () Bool)

(assert (=> b!3576549 m!4069363))

(assert (=> b!3576155 d!1054894))

(declare-fun d!1054896 () Bool)

(declare-fun e!2212560 () Bool)

(assert (=> d!1054896 e!2212560))

(declare-fun res!1442728 () Bool)

(assert (=> d!1054896 (=> (not res!1442728) (not e!2212560))))

(declare-fun lt!1227024 () List!37655)

(assert (=> d!1054896 (= res!1442728 (= (content!5325 lt!1227024) (set.union (content!5325 lt!1226737) (content!5325 lt!1226756))))))

(declare-fun e!2212559 () List!37655)

(assert (=> d!1054896 (= lt!1227024 e!2212559)))

(declare-fun c!619952 () Bool)

(assert (=> d!1054896 (= c!619952 (is-Nil!37531 lt!1226737))))

(assert (=> d!1054896 (= (++!9338 lt!1226737 lt!1226756) lt!1227024)))

(declare-fun b!3576552 () Bool)

(assert (=> b!3576552 (= e!2212559 (Cons!37531 (h!42951 lt!1226737) (++!9338 (t!289882 lt!1226737) lt!1226756)))))

(declare-fun b!3576551 () Bool)

(assert (=> b!3576551 (= e!2212559 lt!1226756)))

(declare-fun b!3576553 () Bool)

(declare-fun res!1442727 () Bool)

(assert (=> b!3576553 (=> (not res!1442727) (not e!2212560))))

(assert (=> b!3576553 (= res!1442727 (= (size!28623 lt!1227024) (+ (size!28623 lt!1226737) (size!28623 lt!1226756))))))

(declare-fun b!3576554 () Bool)

(assert (=> b!3576554 (= e!2212560 (or (not (= lt!1226756 Nil!37531)) (= lt!1227024 lt!1226737)))))

(assert (= (and d!1054896 c!619952) b!3576551))

(assert (= (and d!1054896 (not c!619952)) b!3576552))

(assert (= (and d!1054896 res!1442728) b!3576553))

(assert (= (and b!3576553 res!1442727) b!3576554))

(declare-fun m!4069365 () Bool)

(assert (=> d!1054896 m!4069365))

(declare-fun m!4069367 () Bool)

(assert (=> d!1054896 m!4069367))

(declare-fun m!4069369 () Bool)

(assert (=> d!1054896 m!4069369))

(declare-fun m!4069371 () Bool)

(assert (=> b!3576552 m!4069371))

(declare-fun m!4069373 () Bool)

(assert (=> b!3576553 m!4069373))

(declare-fun m!4069375 () Bool)

(assert (=> b!3576553 m!4069375))

(declare-fun m!4069377 () Bool)

(assert (=> b!3576553 m!4069377))

(assert (=> b!3576155 d!1054896))

(declare-fun d!1054898 () Bool)

(declare-fun e!2212562 () Bool)

(assert (=> d!1054898 e!2212562))

(declare-fun res!1442730 () Bool)

(assert (=> d!1054898 (=> (not res!1442730) (not e!2212562))))

(declare-fun lt!1227025 () List!37655)

(assert (=> d!1054898 (= res!1442730 (= (content!5325 lt!1227025) (set.union (content!5325 (++!9338 lt!1226740 lt!1226737)) (content!5325 (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241)))))))

(declare-fun e!2212561 () List!37655)

(assert (=> d!1054898 (= lt!1227025 e!2212561)))

(declare-fun c!619953 () Bool)

(assert (=> d!1054898 (= c!619953 (is-Nil!37531 (++!9338 lt!1226740 lt!1226737)))))

(assert (=> d!1054898 (= (++!9338 (++!9338 lt!1226740 lt!1226737) (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241)) lt!1227025)))

(declare-fun b!3576556 () Bool)

(assert (=> b!3576556 (= e!2212561 (Cons!37531 (h!42951 (++!9338 lt!1226740 lt!1226737)) (++!9338 (t!289882 (++!9338 lt!1226740 lt!1226737)) (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241))))))

(declare-fun b!3576555 () Bool)

(assert (=> b!3576555 (= e!2212561 (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241))))

(declare-fun b!3576557 () Bool)

(declare-fun res!1442729 () Bool)

(assert (=> b!3576557 (=> (not res!1442729) (not e!2212562))))

(assert (=> b!3576557 (= res!1442729 (= (size!28623 lt!1227025) (+ (size!28623 (++!9338 lt!1226740 lt!1226737)) (size!28623 (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241)))))))

(declare-fun b!3576558 () Bool)

(assert (=> b!3576558 (= e!2212562 (or (not (= (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241) Nil!37531)) (= lt!1227025 (++!9338 lt!1226740 lt!1226737))))))

(assert (= (and d!1054898 c!619953) b!3576555))

(assert (= (and d!1054898 (not c!619953)) b!3576556))

(assert (= (and d!1054898 res!1442730) b!3576557))

(assert (= (and b!3576557 res!1442729) b!3576558))

(declare-fun m!4069379 () Bool)

(assert (=> d!1054898 m!4069379))

(assert (=> d!1054898 m!4068669))

(declare-fun m!4069381 () Bool)

(assert (=> d!1054898 m!4069381))

(assert (=> d!1054898 m!4068667))

(declare-fun m!4069383 () Bool)

(assert (=> d!1054898 m!4069383))

(assert (=> b!3576556 m!4068667))

(declare-fun m!4069385 () Bool)

(assert (=> b!3576556 m!4069385))

(declare-fun m!4069387 () Bool)

(assert (=> b!3576557 m!4069387))

(assert (=> b!3576557 m!4068669))

(declare-fun m!4069389 () Bool)

(assert (=> b!3576557 m!4069389))

(assert (=> b!3576557 m!4068667))

(declare-fun m!4069391 () Bool)

(assert (=> b!3576557 m!4069391))

(assert (=> b!3576155 d!1054898))

(declare-fun d!1054900 () Bool)

(assert (=> d!1054900 (= (list!13774 (charsOf!3531 (h!42953 (t!289884 tokens!494)))) (list!13776 (c!619892 (charsOf!3531 (h!42953 (t!289884 tokens!494))))))))

(declare-fun bs!569638 () Bool)

(assert (= bs!569638 d!1054900))

(declare-fun m!4069393 () Bool)

(assert (=> bs!569638 m!4069393))

(assert (=> b!3576155 d!1054900))

(declare-fun d!1054902 () Bool)

(declare-fun c!619954 () Bool)

(assert (=> d!1054902 (= c!619954 (is-Cons!37533 (t!289884 (t!289884 tokens!494))))))

(declare-fun e!2212563 () List!37655)

(assert (=> d!1054902 (= (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241) e!2212563)))

(declare-fun b!3576559 () Bool)

(assert (=> b!3576559 (= e!2212563 (++!9338 (++!9338 (list!13774 (charsOf!3531 (h!42953 (t!289884 (t!289884 tokens!494))))) (list!13774 (charsOf!3531 separatorToken!241))) (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 (t!289884 tokens!494))) separatorToken!241)))))

(declare-fun b!3576560 () Bool)

(assert (=> b!3576560 (= e!2212563 Nil!37531)))

(assert (= (and d!1054902 c!619954) b!3576559))

(assert (= (and d!1054902 (not c!619954)) b!3576560))

(declare-fun m!4069395 () Bool)

(assert (=> b!3576559 m!4069395))

(assert (=> b!3576559 m!4068675))

(declare-fun m!4069397 () Bool)

(assert (=> b!3576559 m!4069397))

(assert (=> b!3576559 m!4068659))

(assert (=> b!3576559 m!4068675))

(declare-fun m!4069399 () Bool)

(assert (=> b!3576559 m!4069399))

(assert (=> b!3576559 m!4069395))

(declare-fun m!4069401 () Bool)

(assert (=> b!3576559 m!4069401))

(assert (=> b!3576559 m!4068659))

(assert (=> b!3576559 m!4069399))

(assert (=> b!3576559 m!4069397))

(assert (=> b!3576559 m!4069401))

(declare-fun m!4069403 () Bool)

(assert (=> b!3576559 m!4069403))

(assert (=> b!3576155 d!1054902))

(declare-fun d!1054904 () Bool)

(declare-fun c!619955 () Bool)

(assert (=> d!1054904 (= c!619955 (is-Cons!37533 (t!289884 tokens!494)))))

(declare-fun e!2212564 () List!37655)

(assert (=> d!1054904 (= (printWithSeparatorTokenList!393 thiss!18206 (t!289884 tokens!494) separatorToken!241) e!2212564)))

(declare-fun b!3576561 () Bool)

(assert (=> b!3576561 (= e!2212564 (++!9338 (++!9338 (list!13774 (charsOf!3531 (h!42953 (t!289884 tokens!494)))) (list!13774 (charsOf!3531 separatorToken!241))) (printWithSeparatorTokenList!393 thiss!18206 (t!289884 (t!289884 tokens!494)) separatorToken!241)))))

(declare-fun b!3576562 () Bool)

(assert (=> b!3576562 (= e!2212564 Nil!37531)))

(assert (= (and d!1054904 c!619955) b!3576561))

(assert (= (and d!1054904 (not c!619955)) b!3576562))

(assert (=> b!3576561 m!4068665))

(assert (=> b!3576561 m!4068675))

(declare-fun m!4069405 () Bool)

(assert (=> b!3576561 m!4069405))

(assert (=> b!3576561 m!4068659))

(assert (=> b!3576561 m!4068675))

(assert (=> b!3576561 m!4068657))

(assert (=> b!3576561 m!4068665))

(assert (=> b!3576561 m!4068667))

(assert (=> b!3576561 m!4068659))

(assert (=> b!3576561 m!4068657))

(assert (=> b!3576561 m!4069405))

(assert (=> b!3576561 m!4068667))

(declare-fun m!4069407 () Bool)

(assert (=> b!3576561 m!4069407))

(assert (=> b!3576155 d!1054904))

(declare-fun d!1054906 () Bool)

(declare-fun e!2212566 () Bool)

(assert (=> d!1054906 e!2212566))

(declare-fun res!1442732 () Bool)

(assert (=> d!1054906 (=> (not res!1442732) (not e!2212566))))

(declare-fun lt!1227026 () List!37655)

(assert (=> d!1054906 (= res!1442732 (= (content!5325 lt!1227026) (set.union (content!5325 lt!1226740) (content!5325 lt!1226737))))))

(declare-fun e!2212565 () List!37655)

(assert (=> d!1054906 (= lt!1227026 e!2212565)))

(declare-fun c!619956 () Bool)

(assert (=> d!1054906 (= c!619956 (is-Nil!37531 lt!1226740))))

(assert (=> d!1054906 (= (++!9338 lt!1226740 lt!1226737) lt!1227026)))

(declare-fun b!3576564 () Bool)

(assert (=> b!3576564 (= e!2212565 (Cons!37531 (h!42951 lt!1226740) (++!9338 (t!289882 lt!1226740) lt!1226737)))))

(declare-fun b!3576563 () Bool)

(assert (=> b!3576563 (= e!2212565 lt!1226737)))

(declare-fun b!3576565 () Bool)

(declare-fun res!1442731 () Bool)

(assert (=> b!3576565 (=> (not res!1442731) (not e!2212566))))

(assert (=> b!3576565 (= res!1442731 (= (size!28623 lt!1227026) (+ (size!28623 lt!1226740) (size!28623 lt!1226737))))))

(declare-fun b!3576566 () Bool)

(assert (=> b!3576566 (= e!2212566 (or (not (= lt!1226737 Nil!37531)) (= lt!1227026 lt!1226740)))))

(assert (= (and d!1054906 c!619956) b!3576563))

(assert (= (and d!1054906 (not c!619956)) b!3576564))

(assert (= (and d!1054906 res!1442732) b!3576565))

(assert (= (and b!3576565 res!1442731) b!3576566))

(declare-fun m!4069409 () Bool)

(assert (=> d!1054906 m!4069409))

(declare-fun m!4069411 () Bool)

(assert (=> d!1054906 m!4069411))

(assert (=> d!1054906 m!4069367))

(declare-fun m!4069413 () Bool)

(assert (=> b!3576564 m!4069413))

(declare-fun m!4069415 () Bool)

(assert (=> b!3576565 m!4069415))

(assert (=> b!3576565 m!4068835))

(assert (=> b!3576565 m!4069375))

(assert (=> b!3576155 d!1054906))

(declare-fun d!1054908 () Bool)

(declare-fun lt!1227027 () BalanceConc!22432)

(assert (=> d!1054908 (= (list!13774 lt!1227027) (originalCharacters!6231 separatorToken!241))))

(assert (=> d!1054908 (= lt!1227027 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (value!177696 separatorToken!241)))))

(assert (=> d!1054908 (= (charsOf!3531 separatorToken!241) lt!1227027)))

(declare-fun b_lambda!105591 () Bool)

(assert (=> (not b_lambda!105591) (not d!1054908)))

(declare-fun tb!204065 () Bool)

(declare-fun t!289909 () Bool)

(assert (=> (and b!3576136 (= (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241)))) t!289909) tb!204065))

(declare-fun b!3576567 () Bool)

(declare-fun e!2212567 () Bool)

(declare-fun tp!1094460 () Bool)

(assert (=> b!3576567 (= e!2212567 (and (inv!50816 (c!619892 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (value!177696 separatorToken!241)))) tp!1094460))))

(declare-fun result!248724 () Bool)

(assert (=> tb!204065 (= result!248724 (and (inv!50817 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (value!177696 separatorToken!241))) e!2212567))))

(assert (= tb!204065 b!3576567))

(declare-fun m!4069417 () Bool)

(assert (=> b!3576567 m!4069417))

(declare-fun m!4069419 () Bool)

(assert (=> tb!204065 m!4069419))

(assert (=> d!1054908 t!289909))

(declare-fun b_and!257679 () Bool)

(assert (= b_and!257673 (and (=> t!289909 result!248724) b_and!257679)))

(declare-fun t!289911 () Bool)

(declare-fun tb!204067 () Bool)

(assert (=> (and b!3576131 (= (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241)))) t!289911) tb!204067))

(declare-fun result!248726 () Bool)

(assert (= result!248726 result!248724))

(assert (=> d!1054908 t!289911))

(declare-fun b_and!257681 () Bool)

(assert (= b_and!257675 (and (=> t!289911 result!248726) b_and!257681)))

(declare-fun tb!204069 () Bool)

(declare-fun t!289913 () Bool)

(assert (=> (and b!3576119 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241)))) t!289913) tb!204069))

(declare-fun result!248728 () Bool)

(assert (= result!248728 result!248724))

(assert (=> d!1054908 t!289913))

(declare-fun b_and!257683 () Bool)

(assert (= b_and!257677 (and (=> t!289913 result!248728) b_and!257683)))

(declare-fun m!4069421 () Bool)

(assert (=> d!1054908 m!4069421))

(declare-fun m!4069423 () Bool)

(assert (=> d!1054908 m!4069423))

(assert (=> b!3576155 d!1054908))

(declare-fun d!1054910 () Bool)

(assert (=> d!1054910 (= (list!13774 (charsOf!3531 separatorToken!241)) (list!13776 (c!619892 (charsOf!3531 separatorToken!241))))))

(declare-fun bs!569639 () Bool)

(assert (= bs!569639 d!1054910))

(declare-fun m!4069425 () Bool)

(assert (=> bs!569639 m!4069425))

(assert (=> b!3576155 d!1054910))

(declare-fun d!1054912 () Bool)

(declare-fun lt!1227028 () BalanceConc!22432)

(assert (=> d!1054912 (= (list!13774 lt!1227028) (originalCharacters!6231 (h!42953 (t!289884 tokens!494))))))

(assert (=> d!1054912 (= lt!1227028 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (value!177696 (h!42953 (t!289884 tokens!494)))))))

(assert (=> d!1054912 (= (charsOf!3531 (h!42953 (t!289884 tokens!494))) lt!1227028)))

(declare-fun b_lambda!105593 () Bool)

(assert (=> (not b_lambda!105593) (not d!1054912)))

(declare-fun t!289915 () Bool)

(declare-fun tb!204071 () Bool)

(assert (=> (and b!3576136 (= (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289915) tb!204071))

(declare-fun b!3576568 () Bool)

(declare-fun e!2212568 () Bool)

(declare-fun tp!1094461 () Bool)

(assert (=> b!3576568 (= e!2212568 (and (inv!50816 (c!619892 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (value!177696 (h!42953 (t!289884 tokens!494)))))) tp!1094461))))

(declare-fun result!248730 () Bool)

(assert (=> tb!204071 (= result!248730 (and (inv!50817 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (value!177696 (h!42953 (t!289884 tokens!494))))) e!2212568))))

(assert (= tb!204071 b!3576568))

(declare-fun m!4069427 () Bool)

(assert (=> b!3576568 m!4069427))

(declare-fun m!4069429 () Bool)

(assert (=> tb!204071 m!4069429))

(assert (=> d!1054912 t!289915))

(declare-fun b_and!257685 () Bool)

(assert (= b_and!257679 (and (=> t!289915 result!248730) b_and!257685)))

(declare-fun t!289917 () Bool)

(declare-fun tb!204073 () Bool)

(assert (=> (and b!3576131 (= (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289917) tb!204073))

(declare-fun result!248732 () Bool)

(assert (= result!248732 result!248730))

(assert (=> d!1054912 t!289917))

(declare-fun b_and!257687 () Bool)

(assert (= b_and!257681 (and (=> t!289917 result!248732) b_and!257687)))

(declare-fun t!289919 () Bool)

(declare-fun tb!204075 () Bool)

(assert (=> (and b!3576119 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289919) tb!204075))

(declare-fun result!248734 () Bool)

(assert (= result!248734 result!248730))

(assert (=> d!1054912 t!289919))

(declare-fun b_and!257689 () Bool)

(assert (= b_and!257683 (and (=> t!289919 result!248734) b_and!257689)))

(declare-fun m!4069431 () Bool)

(assert (=> d!1054912 m!4069431))

(declare-fun m!4069433 () Bool)

(assert (=> d!1054912 m!4069433))

(assert (=> b!3576155 d!1054912))

(declare-fun d!1054914 () Bool)

(declare-fun res!1442733 () Bool)

(declare-fun e!2212569 () Bool)

(assert (=> d!1054914 (=> (not res!1442733) (not e!2212569))))

(assert (=> d!1054914 (= res!1442733 (not (isEmpty!22080 (originalCharacters!6231 separatorToken!241))))))

(assert (=> d!1054914 (= (inv!50813 separatorToken!241) e!2212569)))

(declare-fun b!3576569 () Bool)

(declare-fun res!1442734 () Bool)

(assert (=> b!3576569 (=> (not res!1442734) (not e!2212569))))

(assert (=> b!3576569 (= res!1442734 (= (originalCharacters!6231 separatorToken!241) (list!13774 (dynLambda!16142 (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (value!177696 separatorToken!241)))))))

(declare-fun b!3576570 () Bool)

(assert (=> b!3576570 (= e!2212569 (= (size!28622 separatorToken!241) (size!28623 (originalCharacters!6231 separatorToken!241))))))

(assert (= (and d!1054914 res!1442733) b!3576569))

(assert (= (and b!3576569 res!1442734) b!3576570))

(declare-fun b_lambda!105595 () Bool)

(assert (=> (not b_lambda!105595) (not b!3576569)))

(assert (=> b!3576569 t!289909))

(declare-fun b_and!257691 () Bool)

(assert (= b_and!257685 (and (=> t!289909 result!248724) b_and!257691)))

(assert (=> b!3576569 t!289911))

(declare-fun b_and!257693 () Bool)

(assert (= b_and!257687 (and (=> t!289911 result!248726) b_and!257693)))

(assert (=> b!3576569 t!289913))

(declare-fun b_and!257695 () Bool)

(assert (= b_and!257689 (and (=> t!289913 result!248728) b_and!257695)))

(declare-fun m!4069435 () Bool)

(assert (=> d!1054914 m!4069435))

(assert (=> b!3576569 m!4069423))

(assert (=> b!3576569 m!4069423))

(declare-fun m!4069437 () Bool)

(assert (=> b!3576569 m!4069437))

(declare-fun m!4069439 () Bool)

(assert (=> b!3576570 m!4069439))

(assert (=> start!331376 d!1054914))

(declare-fun d!1054916 () Bool)

(assert (=> d!1054916 (= (inv!50809 (tag!6179 (rule!8221 separatorToken!241))) (= (mod (str.len (value!177695 (tag!6179 (rule!8221 separatorToken!241)))) 2) 0))))

(assert (=> b!3576115 d!1054916))

(declare-fun d!1054918 () Bool)

(declare-fun res!1442735 () Bool)

(declare-fun e!2212570 () Bool)

(assert (=> d!1054918 (=> (not res!1442735) (not e!2212570))))

(assert (=> d!1054918 (= res!1442735 (semiInverseModEq!2336 (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (toValue!7789 (transformation!5517 (rule!8221 separatorToken!241)))))))

(assert (=> d!1054918 (= (inv!50812 (transformation!5517 (rule!8221 separatorToken!241))) e!2212570)))

(declare-fun b!3576571 () Bool)

(assert (=> b!3576571 (= e!2212570 (equivClasses!2235 (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (toValue!7789 (transformation!5517 (rule!8221 separatorToken!241)))))))

(assert (= (and d!1054918 res!1442735) b!3576571))

(declare-fun m!4069441 () Bool)

(assert (=> d!1054918 m!4069441))

(declare-fun m!4069443 () Bool)

(assert (=> b!3576571 m!4069443))

(assert (=> b!3576115 d!1054918))

(declare-fun b!3576572 () Bool)

(declare-fun res!1442738 () Bool)

(declare-fun e!2212577 () Bool)

(assert (=> b!3576572 (=> res!1442738 e!2212577)))

(declare-fun e!2212574 () Bool)

(assert (=> b!3576572 (= res!1442738 e!2212574)))

(declare-fun res!1442739 () Bool)

(assert (=> b!3576572 (=> (not res!1442739) (not e!2212574))))

(declare-fun lt!1227029 () Bool)

(assert (=> b!3576572 (= res!1442739 lt!1227029)))

(declare-fun b!3576573 () Bool)

(declare-fun res!1442741 () Bool)

(declare-fun e!2212576 () Bool)

(assert (=> b!3576573 (=> res!1442741 e!2212576)))

(assert (=> b!3576573 (= res!1442741 (not (isEmpty!22080 (tail!5538 lt!1226737))))))

(declare-fun b!3576574 () Bool)

(declare-fun res!1442740 () Bool)

(assert (=> b!3576574 (=> res!1442740 e!2212577)))

(assert (=> b!3576574 (= res!1442740 (not (is-ElementMatch!10276 (regex!5517 lt!1226753))))))

(declare-fun e!2212571 () Bool)

(assert (=> b!3576574 (= e!2212571 e!2212577)))

(declare-fun b!3576575 () Bool)

(declare-fun e!2212575 () Bool)

(assert (=> b!3576575 (= e!2212575 (matchR!4860 (derivativeStep!3094 (regex!5517 lt!1226753) (head!7450 lt!1226737)) (tail!5538 lt!1226737)))))

(declare-fun b!3576576 () Bool)

(declare-fun e!2212573 () Bool)

(assert (=> b!3576576 (= e!2212577 e!2212573)))

(declare-fun res!1442736 () Bool)

(assert (=> b!3576576 (=> (not res!1442736) (not e!2212573))))

(assert (=> b!3576576 (= res!1442736 (not lt!1227029))))

(declare-fun b!3576577 () Bool)

(declare-fun res!1442743 () Bool)

(assert (=> b!3576577 (=> (not res!1442743) (not e!2212574))))

(declare-fun call!259162 () Bool)

(assert (=> b!3576577 (= res!1442743 (not call!259162))))

(declare-fun b!3576578 () Bool)

(assert (=> b!3576578 (= e!2212576 (not (= (head!7450 lt!1226737) (c!619893 (regex!5517 lt!1226753)))))))

(declare-fun d!1054920 () Bool)

(declare-fun e!2212572 () Bool)

(assert (=> d!1054920 e!2212572))

(declare-fun c!619958 () Bool)

(assert (=> d!1054920 (= c!619958 (is-EmptyExpr!10276 (regex!5517 lt!1226753)))))

(assert (=> d!1054920 (= lt!1227029 e!2212575)))

(declare-fun c!619959 () Bool)

(assert (=> d!1054920 (= c!619959 (isEmpty!22080 lt!1226737))))

(assert (=> d!1054920 (validRegex!4697 (regex!5517 lt!1226753))))

(assert (=> d!1054920 (= (matchR!4860 (regex!5517 lt!1226753) lt!1226737) lt!1227029)))

(declare-fun b!3576579 () Bool)

(assert (=> b!3576579 (= e!2212572 e!2212571)))

(declare-fun c!619957 () Bool)

(assert (=> b!3576579 (= c!619957 (is-EmptyLang!10276 (regex!5517 lt!1226753)))))

(declare-fun b!3576580 () Bool)

(declare-fun res!1442742 () Bool)

(assert (=> b!3576580 (=> (not res!1442742) (not e!2212574))))

(assert (=> b!3576580 (= res!1442742 (isEmpty!22080 (tail!5538 lt!1226737)))))

(declare-fun b!3576581 () Bool)

(assert (=> b!3576581 (= e!2212573 e!2212576)))

(declare-fun res!1442737 () Bool)

(assert (=> b!3576581 (=> res!1442737 e!2212576)))

(assert (=> b!3576581 (= res!1442737 call!259162)))

(declare-fun b!3576582 () Bool)

(assert (=> b!3576582 (= e!2212574 (= (head!7450 lt!1226737) (c!619893 (regex!5517 lt!1226753))))))

(declare-fun b!3576583 () Bool)

(assert (=> b!3576583 (= e!2212575 (nullable!3541 (regex!5517 lt!1226753)))))

(declare-fun b!3576584 () Bool)

(assert (=> b!3576584 (= e!2212571 (not lt!1227029))))

(declare-fun b!3576585 () Bool)

(assert (=> b!3576585 (= e!2212572 (= lt!1227029 call!259162))))

(declare-fun bm!259157 () Bool)

(assert (=> bm!259157 (= call!259162 (isEmpty!22080 lt!1226737))))

(assert (= (and d!1054920 c!619959) b!3576583))

(assert (= (and d!1054920 (not c!619959)) b!3576575))

(assert (= (and d!1054920 c!619958) b!3576585))

(assert (= (and d!1054920 (not c!619958)) b!3576579))

(assert (= (and b!3576579 c!619957) b!3576584))

(assert (= (and b!3576579 (not c!619957)) b!3576574))

(assert (= (and b!3576574 (not res!1442740)) b!3576572))

(assert (= (and b!3576572 res!1442739) b!3576577))

(assert (= (and b!3576577 res!1442743) b!3576580))

(assert (= (and b!3576580 res!1442742) b!3576582))

(assert (= (and b!3576572 (not res!1442738)) b!3576576))

(assert (= (and b!3576576 res!1442736) b!3576581))

(assert (= (and b!3576581 (not res!1442737)) b!3576573))

(assert (= (and b!3576573 (not res!1442741)) b!3576578))

(assert (= (or b!3576585 b!3576577 b!3576581) bm!259157))

(assert (=> b!3576582 m!4068809))

(declare-fun m!4069445 () Bool)

(assert (=> b!3576573 m!4069445))

(assert (=> b!3576573 m!4069445))

(declare-fun m!4069447 () Bool)

(assert (=> b!3576573 m!4069447))

(declare-fun m!4069449 () Bool)

(assert (=> bm!259157 m!4069449))

(assert (=> d!1054920 m!4069449))

(declare-fun m!4069451 () Bool)

(assert (=> d!1054920 m!4069451))

(assert (=> b!3576580 m!4069445))

(assert (=> b!3576580 m!4069445))

(assert (=> b!3576580 m!4069447))

(assert (=> b!3576578 m!4068809))

(declare-fun m!4069453 () Bool)

(assert (=> b!3576583 m!4069453))

(assert (=> b!3576575 m!4068809))

(assert (=> b!3576575 m!4068809))

(declare-fun m!4069455 () Bool)

(assert (=> b!3576575 m!4069455))

(assert (=> b!3576575 m!4069445))

(assert (=> b!3576575 m!4069455))

(assert (=> b!3576575 m!4069445))

(declare-fun m!4069457 () Bool)

(assert (=> b!3576575 m!4069457))

(assert (=> b!3576116 d!1054920))

(declare-fun d!1054922 () Bool)

(assert (=> d!1054922 (= (get!12083 lt!1226767) (v!37328 lt!1226767))))

(assert (=> b!3576116 d!1054922))

(declare-fun d!1054924 () Bool)

(declare-fun lt!1227032 () Int)

(declare-fun size!28629 (List!37657) Int)

(assert (=> d!1054924 (= lt!1227032 (size!28629 (list!13777 (_1!21862 lt!1226757))))))

(declare-fun size!28630 (Conc!11410) Int)

(assert (=> d!1054924 (= lt!1227032 (size!28630 (c!619894 (_1!21862 lt!1226757))))))

(assert (=> d!1054924 (= (size!28624 (_1!21862 lt!1226757)) lt!1227032)))

(declare-fun bs!569640 () Bool)

(assert (= bs!569640 d!1054924))

(assert (=> bs!569640 m!4069201))

(assert (=> bs!569640 m!4069201))

(declare-fun m!4069459 () Bool)

(assert (=> bs!569640 m!4069459))

(declare-fun m!4069461 () Bool)

(assert (=> bs!569640 m!4069461))

(assert (=> b!3576137 d!1054924))

(declare-fun d!1054926 () Bool)

(declare-fun dynLambda!16144 (Int BalanceConc!22432) TokenValue!5747)

(assert (=> d!1054926 (= (apply!9037 (transformation!5517 (rule!8221 (h!42953 tokens!494))) lt!1226765) (dynLambda!16144 (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) lt!1226765))))

(declare-fun b_lambda!105597 () Bool)

(assert (=> (not b_lambda!105597) (not d!1054926)))

(declare-fun tb!204077 () Bool)

(declare-fun t!289921 () Bool)

(assert (=> (and b!3576136 (= (toValue!7789 (transformation!5517 (h!42952 rules!2135))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289921) tb!204077))

(declare-fun result!248736 () Bool)

(assert (=> tb!204077 (= result!248736 (inv!21 (dynLambda!16144 (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) lt!1226765)))))

(declare-fun m!4069463 () Bool)

(assert (=> tb!204077 m!4069463))

(assert (=> d!1054926 t!289921))

(declare-fun b_and!257697 () Bool)

(assert (= b_and!257643 (and (=> t!289921 result!248736) b_and!257697)))

(declare-fun t!289923 () Bool)

(declare-fun tb!204079 () Bool)

(assert (=> (and b!3576131 (= (toValue!7789 (transformation!5517 (rule!8221 separatorToken!241))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289923) tb!204079))

(declare-fun result!248740 () Bool)

(assert (= result!248740 result!248736))

(assert (=> d!1054926 t!289923))

(declare-fun b_and!257699 () Bool)

(assert (= b_and!257647 (and (=> t!289923 result!248740) b_and!257699)))

(declare-fun t!289925 () Bool)

(declare-fun tb!204081 () Bool)

(assert (=> (and b!3576119 (= (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289925) tb!204081))

(declare-fun result!248742 () Bool)

(assert (= result!248742 result!248736))

(assert (=> d!1054926 t!289925))

(declare-fun b_and!257701 () Bool)

(assert (= b_and!257651 (and (=> t!289925 result!248742) b_and!257701)))

(declare-fun m!4069465 () Bool)

(assert (=> d!1054926 m!4069465))

(assert (=> b!3576137 d!1054926))

(declare-fun d!1054928 () Bool)

(declare-fun lt!1227033 () Bool)

(declare-fun e!2212582 () Bool)

(assert (=> d!1054928 (= lt!1227033 e!2212582)))

(declare-fun res!1442745 () Bool)

(assert (=> d!1054928 (=> (not res!1442745) (not e!2212582))))

(assert (=> d!1054928 (= res!1442745 (= (list!13777 (_1!21862 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 (h!42953 (t!289884 tokens!494))))))) (list!13777 (singletonSeq!2613 (h!42953 (t!289884 tokens!494))))))))

(declare-fun e!2212581 () Bool)

(assert (=> d!1054928 (= lt!1227033 e!2212581)))

(declare-fun res!1442744 () Bool)

(assert (=> d!1054928 (=> (not res!1442744) (not e!2212581))))

(declare-fun lt!1227034 () tuple2!37456)

(assert (=> d!1054928 (= res!1442744 (= (size!28624 (_1!21862 lt!1227034)) 1))))

(assert (=> d!1054928 (= lt!1227034 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 (h!42953 (t!289884 tokens!494))))))))

(assert (=> d!1054928 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1054928 (= (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 (h!42953 (t!289884 tokens!494))) lt!1227033)))

(declare-fun b!3576588 () Bool)

(declare-fun res!1442746 () Bool)

(assert (=> b!3576588 (=> (not res!1442746) (not e!2212581))))

(assert (=> b!3576588 (= res!1442746 (= (apply!9036 (_1!21862 lt!1227034) 0) (h!42953 (t!289884 tokens!494))))))

(declare-fun b!3576589 () Bool)

(assert (=> b!3576589 (= e!2212581 (isEmpty!22075 (_2!21862 lt!1227034)))))

(declare-fun b!3576590 () Bool)

(assert (=> b!3576590 (= e!2212582 (isEmpty!22075 (_2!21862 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 (h!42953 (t!289884 tokens!494))))))))))

(assert (= (and d!1054928 res!1442744) b!3576588))

(assert (= (and b!3576588 res!1442746) b!3576589))

(assert (= (and d!1054928 res!1442745) b!3576590))

(declare-fun m!4069467 () Bool)

(assert (=> d!1054928 m!4069467))

(declare-fun m!4069469 () Bool)

(assert (=> d!1054928 m!4069469))

(declare-fun m!4069471 () Bool)

(assert (=> d!1054928 m!4069471))

(assert (=> d!1054928 m!4068839))

(assert (=> d!1054928 m!4069469))

(assert (=> d!1054928 m!4068747))

(declare-fun m!4069473 () Bool)

(assert (=> d!1054928 m!4069473))

(assert (=> d!1054928 m!4068839))

(declare-fun m!4069475 () Bool)

(assert (=> d!1054928 m!4069475))

(assert (=> d!1054928 m!4068839))

(declare-fun m!4069477 () Bool)

(assert (=> b!3576588 m!4069477))

(declare-fun m!4069479 () Bool)

(assert (=> b!3576589 m!4069479))

(assert (=> b!3576590 m!4068839))

(assert (=> b!3576590 m!4068839))

(assert (=> b!3576590 m!4069469))

(assert (=> b!3576590 m!4069469))

(assert (=> b!3576590 m!4069471))

(declare-fun m!4069481 () Bool)

(assert (=> b!3576590 m!4069481))

(assert (=> b!3576137 d!1054928))

(declare-fun d!1054930 () Bool)

(declare-fun lt!1227051 () Int)

(assert (=> d!1054930 (>= lt!1227051 0)))

(declare-fun e!2212589 () Int)

(assert (=> d!1054930 (= lt!1227051 e!2212589)))

(declare-fun c!619964 () Bool)

(assert (=> d!1054930 (= c!619964 (is-Nil!37531 lt!1226740))))

(assert (=> d!1054930 (= (size!28623 lt!1226740) lt!1227051)))

(declare-fun b!3576601 () Bool)

(assert (=> b!3576601 (= e!2212589 0)))

(declare-fun b!3576602 () Bool)

(assert (=> b!3576602 (= e!2212589 (+ 1 (size!28623 (t!289882 lt!1226740))))))

(assert (= (and d!1054930 c!619964) b!3576601))

(assert (= (and d!1054930 (not c!619964)) b!3576602))

(declare-fun m!4069483 () Bool)

(assert (=> b!3576602 m!4069483))

(assert (=> b!3576137 d!1054930))

(declare-fun d!1054932 () Bool)

(declare-fun lt!1227055 () BalanceConc!22432)

(assert (=> d!1054932 (= (list!13774 lt!1227055) (printListTailRec!741 thiss!18206 (dropList!1258 lt!1226763 0) (list!13774 (BalanceConc!22433 Empty!11409))))))

(declare-fun e!2212590 () BalanceConc!22432)

(assert (=> d!1054932 (= lt!1227055 e!2212590)))

(declare-fun c!619965 () Bool)

(assert (=> d!1054932 (= c!619965 (>= 0 (size!28624 lt!1226763)))))

(declare-fun e!2212591 () Bool)

(assert (=> d!1054932 e!2212591))

(declare-fun res!1442749 () Bool)

(assert (=> d!1054932 (=> (not res!1442749) (not e!2212591))))

(assert (=> d!1054932 (= res!1442749 (>= 0 0))))

(assert (=> d!1054932 (= (printTailRec!1601 thiss!18206 lt!1226763 0 (BalanceConc!22433 Empty!11409)) lt!1227055)))

(declare-fun b!3576603 () Bool)

(assert (=> b!3576603 (= e!2212591 (<= 0 (size!28624 lt!1226763)))))

(declare-fun b!3576604 () Bool)

(assert (=> b!3576604 (= e!2212590 (BalanceConc!22433 Empty!11409))))

(declare-fun b!3576605 () Bool)

(assert (=> b!3576605 (= e!2212590 (printTailRec!1601 thiss!18206 lt!1226763 (+ 0 1) (++!9340 (BalanceConc!22433 Empty!11409) (charsOf!3531 (apply!9036 lt!1226763 0)))))))

(declare-fun lt!1227056 () List!37657)

(assert (=> b!3576605 (= lt!1227056 (list!13777 lt!1226763))))

(declare-fun lt!1227054 () Unit!53556)

(assert (=> b!3576605 (= lt!1227054 (lemmaDropApply!1216 lt!1227056 0))))

(assert (=> b!3576605 (= (head!7452 (drop!2078 lt!1227056 0)) (apply!9040 lt!1227056 0))))

(declare-fun lt!1227057 () Unit!53556)

(assert (=> b!3576605 (= lt!1227057 lt!1227054)))

(declare-fun lt!1227052 () List!37657)

(assert (=> b!3576605 (= lt!1227052 (list!13777 lt!1226763))))

(declare-fun lt!1227058 () Unit!53556)

(assert (=> b!3576605 (= lt!1227058 (lemmaDropTail!1100 lt!1227052 0))))

(assert (=> b!3576605 (= (tail!5539 (drop!2078 lt!1227052 0)) (drop!2078 lt!1227052 (+ 0 1)))))

(declare-fun lt!1227053 () Unit!53556)

(assert (=> b!3576605 (= lt!1227053 lt!1227058)))

(assert (= (and d!1054932 res!1442749) b!3576603))

(assert (= (and d!1054932 c!619965) b!3576604))

(assert (= (and d!1054932 (not c!619965)) b!3576605))

(assert (=> d!1054932 m!4069257))

(declare-fun m!4069485 () Bool)

(assert (=> d!1054932 m!4069485))

(declare-fun m!4069487 () Bool)

(assert (=> d!1054932 m!4069487))

(declare-fun m!4069489 () Bool)

(assert (=> d!1054932 m!4069489))

(assert (=> d!1054932 m!4069485))

(assert (=> d!1054932 m!4069257))

(declare-fun m!4069491 () Bool)

(assert (=> d!1054932 m!4069491))

(assert (=> b!3576603 m!4069489))

(declare-fun m!4069493 () Bool)

(assert (=> b!3576605 m!4069493))

(declare-fun m!4069495 () Bool)

(assert (=> b!3576605 m!4069495))

(declare-fun m!4069497 () Bool)

(assert (=> b!3576605 m!4069497))

(declare-fun m!4069499 () Bool)

(assert (=> b!3576605 m!4069499))

(declare-fun m!4069501 () Bool)

(assert (=> b!3576605 m!4069501))

(declare-fun m!4069503 () Bool)

(assert (=> b!3576605 m!4069503))

(declare-fun m!4069505 () Bool)

(assert (=> b!3576605 m!4069505))

(assert (=> b!3576605 m!4069505))

(declare-fun m!4069507 () Bool)

(assert (=> b!3576605 m!4069507))

(declare-fun m!4069509 () Bool)

(assert (=> b!3576605 m!4069509))

(assert (=> b!3576605 m!4069509))

(declare-fun m!4069511 () Bool)

(assert (=> b!3576605 m!4069511))

(declare-fun m!4069513 () Bool)

(assert (=> b!3576605 m!4069513))

(assert (=> b!3576605 m!4069495))

(assert (=> b!3576605 m!4069499))

(assert (=> b!3576605 m!4069513))

(declare-fun m!4069515 () Bool)

(assert (=> b!3576605 m!4069515))

(declare-fun m!4069517 () Bool)

(assert (=> b!3576605 m!4069517))

(assert (=> b!3576137 d!1054932))

(declare-fun d!1054934 () Bool)

(declare-fun fromListB!1891 (List!37655) BalanceConc!22432)

(assert (=> d!1054934 (= (seqFromList!4087 lt!1226740) (fromListB!1891 lt!1226740))))

(declare-fun bs!569641 () Bool)

(assert (= bs!569641 d!1054934))

(declare-fun m!4069555 () Bool)

(assert (=> bs!569641 m!4069555))

(assert (=> b!3576137 d!1054934))

(declare-fun b!3576648 () Bool)

(declare-fun e!2212616 () Option!7706)

(assert (=> b!3576648 (= e!2212616 None!7705)))

(declare-fun b!3576649 () Bool)

(declare-fun e!2212615 () Bool)

(declare-fun lt!1227090 () Option!7706)

(declare-fun get!12086 (Option!7706) tuple2!37458)

(assert (=> b!3576649 (= e!2212615 (= (size!28622 (_1!21863 (get!12086 lt!1227090))) (size!28623 (originalCharacters!6231 (_1!21863 (get!12086 lt!1227090))))))))

(declare-fun b!3576650 () Bool)

(declare-fun res!1442786 () Bool)

(assert (=> b!3576650 (=> (not res!1442786) (not e!2212615))))

(assert (=> b!3576650 (= res!1442786 (= (value!177696 (_1!21863 (get!12086 lt!1227090))) (apply!9037 (transformation!5517 (rule!8221 (_1!21863 (get!12086 lt!1227090)))) (seqFromList!4087 (originalCharacters!6231 (_1!21863 (get!12086 lt!1227090)))))))))

(declare-fun b!3576651 () Bool)

(declare-datatypes ((tuple2!37468 0))(
  ( (tuple2!37469 (_1!21868 List!37655) (_2!21868 List!37655)) )
))
(declare-fun lt!1227088 () tuple2!37468)

(declare-fun size!28631 (BalanceConc!22432) Int)

(assert (=> b!3576651 (= e!2212616 (Some!7705 (tuple2!37459 (Token!10401 (apply!9037 (transformation!5517 (rule!8221 (h!42953 tokens!494))) (seqFromList!4087 (_1!21868 lt!1227088))) (rule!8221 (h!42953 tokens!494)) (size!28631 (seqFromList!4087 (_1!21868 lt!1227088))) (_1!21868 lt!1227088)) (_2!21868 lt!1227088))))))

(declare-fun lt!1227089 () Unit!53556)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!936 (Regex!10276 List!37655) Unit!53556)

(assert (=> b!3576651 (= lt!1227089 (longestMatchIsAcceptedByMatchOrIsEmpty!936 (regex!5517 (rule!8221 (h!42953 tokens!494))) lt!1226762))))

(declare-fun res!1442790 () Bool)

(declare-fun findLongestMatchInner!963 (Regex!10276 List!37655 Int List!37655 List!37655 Int) tuple2!37468)

(assert (=> b!3576651 (= res!1442790 (isEmpty!22080 (_1!21868 (findLongestMatchInner!963 (regex!5517 (rule!8221 (h!42953 tokens!494))) Nil!37531 (size!28623 Nil!37531) lt!1226762 lt!1226762 (size!28623 lt!1226762)))))))

(declare-fun e!2212617 () Bool)

(assert (=> b!3576651 (=> res!1442790 e!2212617)))

(assert (=> b!3576651 e!2212617))

(declare-fun lt!1227091 () Unit!53556)

(assert (=> b!3576651 (= lt!1227091 lt!1227089)))

(declare-fun lt!1227087 () Unit!53556)

(declare-fun lemmaSemiInverse!1315 (TokenValueInjection!10922 BalanceConc!22432) Unit!53556)

(assert (=> b!3576651 (= lt!1227087 (lemmaSemiInverse!1315 (transformation!5517 (rule!8221 (h!42953 tokens!494))) (seqFromList!4087 (_1!21868 lt!1227088))))))

(declare-fun b!3576652 () Bool)

(assert (=> b!3576652 (= e!2212617 (matchR!4860 (regex!5517 (rule!8221 (h!42953 tokens!494))) (_1!21868 (findLongestMatchInner!963 (regex!5517 (rule!8221 (h!42953 tokens!494))) Nil!37531 (size!28623 Nil!37531) lt!1226762 lt!1226762 (size!28623 lt!1226762)))))))

(declare-fun d!1054938 () Bool)

(declare-fun e!2212614 () Bool)

(assert (=> d!1054938 e!2212614))

(declare-fun res!1442784 () Bool)

(assert (=> d!1054938 (=> res!1442784 e!2212614)))

(declare-fun isEmpty!22085 (Option!7706) Bool)

(assert (=> d!1054938 (= res!1442784 (isEmpty!22085 lt!1227090))))

(assert (=> d!1054938 (= lt!1227090 e!2212616)))

(declare-fun c!619970 () Bool)

(assert (=> d!1054938 (= c!619970 (isEmpty!22080 (_1!21868 lt!1227088)))))

(declare-fun findLongestMatch!878 (Regex!10276 List!37655) tuple2!37468)

(assert (=> d!1054938 (= lt!1227088 (findLongestMatch!878 (regex!5517 (rule!8221 (h!42953 tokens!494))) lt!1226762))))

(declare-fun ruleValid!1798 (LexerInterface!5106 Rule!10834) Bool)

(assert (=> d!1054938 (ruleValid!1798 thiss!18206 (rule!8221 (h!42953 tokens!494)))))

(assert (=> d!1054938 (= (maxPrefixOneRule!1813 thiss!18206 (rule!8221 (h!42953 tokens!494)) lt!1226762) lt!1227090)))

(declare-fun b!3576653 () Bool)

(declare-fun res!1442785 () Bool)

(assert (=> b!3576653 (=> (not res!1442785) (not e!2212615))))

(assert (=> b!3576653 (= res!1442785 (= (rule!8221 (_1!21863 (get!12086 lt!1227090))) (rule!8221 (h!42953 tokens!494))))))

(declare-fun b!3576654 () Bool)

(declare-fun res!1442787 () Bool)

(assert (=> b!3576654 (=> (not res!1442787) (not e!2212615))))

(assert (=> b!3576654 (= res!1442787 (< (size!28623 (_2!21863 (get!12086 lt!1227090))) (size!28623 lt!1226762)))))

(declare-fun b!3576655 () Bool)

(assert (=> b!3576655 (= e!2212614 e!2212615)))

(declare-fun res!1442788 () Bool)

(assert (=> b!3576655 (=> (not res!1442788) (not e!2212615))))

(assert (=> b!3576655 (= res!1442788 (matchR!4860 (regex!5517 (rule!8221 (h!42953 tokens!494))) (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227090))))))))

(declare-fun b!3576656 () Bool)

(declare-fun res!1442789 () Bool)

(assert (=> b!3576656 (=> (not res!1442789) (not e!2212615))))

(assert (=> b!3576656 (= res!1442789 (= (++!9338 (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227090)))) (_2!21863 (get!12086 lt!1227090))) lt!1226762))))

(assert (= (and d!1054938 c!619970) b!3576648))

(assert (= (and d!1054938 (not c!619970)) b!3576651))

(assert (= (and b!3576651 (not res!1442790)) b!3576652))

(assert (= (and d!1054938 (not res!1442784)) b!3576655))

(assert (= (and b!3576655 res!1442788) b!3576656))

(assert (= (and b!3576656 res!1442789) b!3576654))

(assert (= (and b!3576654 res!1442787) b!3576653))

(assert (= (and b!3576653 res!1442785) b!3576650))

(assert (= (and b!3576650 res!1442786) b!3576649))

(declare-fun m!4069605 () Bool)

(assert (=> b!3576654 m!4069605))

(declare-fun m!4069607 () Bool)

(assert (=> b!3576654 m!4069607))

(assert (=> b!3576654 m!4068817))

(assert (=> b!3576653 m!4069605))

(declare-fun m!4069609 () Bool)

(assert (=> b!3576652 m!4069609))

(assert (=> b!3576652 m!4068817))

(assert (=> b!3576652 m!4069609))

(assert (=> b!3576652 m!4068817))

(declare-fun m!4069611 () Bool)

(assert (=> b!3576652 m!4069611))

(declare-fun m!4069613 () Bool)

(assert (=> b!3576652 m!4069613))

(declare-fun m!4069615 () Bool)

(assert (=> d!1054938 m!4069615))

(declare-fun m!4069617 () Bool)

(assert (=> d!1054938 m!4069617))

(declare-fun m!4069619 () Bool)

(assert (=> d!1054938 m!4069619))

(declare-fun m!4069621 () Bool)

(assert (=> d!1054938 m!4069621))

(assert (=> b!3576656 m!4069605))

(declare-fun m!4069623 () Bool)

(assert (=> b!3576656 m!4069623))

(assert (=> b!3576656 m!4069623))

(declare-fun m!4069625 () Bool)

(assert (=> b!3576656 m!4069625))

(assert (=> b!3576656 m!4069625))

(declare-fun m!4069627 () Bool)

(assert (=> b!3576656 m!4069627))

(declare-fun m!4069629 () Bool)

(assert (=> b!3576651 m!4069629))

(declare-fun m!4069631 () Bool)

(assert (=> b!3576651 m!4069631))

(assert (=> b!3576651 m!4069629))

(declare-fun m!4069633 () Bool)

(assert (=> b!3576651 m!4069633))

(declare-fun m!4069635 () Bool)

(assert (=> b!3576651 m!4069635))

(declare-fun m!4069637 () Bool)

(assert (=> b!3576651 m!4069637))

(assert (=> b!3576651 m!4069629))

(assert (=> b!3576651 m!4069629))

(declare-fun m!4069639 () Bool)

(assert (=> b!3576651 m!4069639))

(assert (=> b!3576651 m!4069609))

(assert (=> b!3576651 m!4069609))

(assert (=> b!3576651 m!4068817))

(assert (=> b!3576651 m!4069611))

(assert (=> b!3576651 m!4068817))

(assert (=> b!3576649 m!4069605))

(declare-fun m!4069641 () Bool)

(assert (=> b!3576649 m!4069641))

(assert (=> b!3576655 m!4069605))

(assert (=> b!3576655 m!4069623))

(assert (=> b!3576655 m!4069623))

(assert (=> b!3576655 m!4069625))

(assert (=> b!3576655 m!4069625))

(declare-fun m!4069643 () Bool)

(assert (=> b!3576655 m!4069643))

(assert (=> b!3576650 m!4069605))

(declare-fun m!4069645 () Bool)

(assert (=> b!3576650 m!4069645))

(assert (=> b!3576650 m!4069645))

(declare-fun m!4069647 () Bool)

(assert (=> b!3576650 m!4069647))

(assert (=> b!3576137 d!1054938))

(declare-fun d!1054948 () Bool)

(assert (=> d!1054948 (= (head!7450 lt!1226740) (h!42951 lt!1226740))))

(assert (=> b!3576137 d!1054948))

(declare-fun d!1054950 () Bool)

(declare-fun lt!1227094 () Bool)

(assert (=> d!1054950 (= lt!1227094 (set.member lt!1226743 (content!5325 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))))

(declare-fun e!2212622 () Bool)

(assert (=> d!1054950 (= lt!1227094 e!2212622)))

(declare-fun res!1442796 () Bool)

(assert (=> d!1054950 (=> (not res!1442796) (not e!2212622))))

(assert (=> d!1054950 (= res!1442796 (is-Cons!37531 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))))))

(assert (=> d!1054950 (= (contains!7111 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) lt!1226743) lt!1227094)))

(declare-fun b!3576661 () Bool)

(declare-fun e!2212623 () Bool)

(assert (=> b!3576661 (= e!2212622 e!2212623)))

(declare-fun res!1442795 () Bool)

(assert (=> b!3576661 (=> res!1442795 e!2212623)))

(assert (=> b!3576661 (= res!1442795 (= (h!42951 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) lt!1226743))))

(declare-fun b!3576662 () Bool)

(assert (=> b!3576662 (= e!2212623 (contains!7111 (t!289882 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) lt!1226743))))

(assert (= (and d!1054950 res!1442796) b!3576661))

(assert (= (and b!3576661 (not res!1442795)) b!3576662))

(assert (=> d!1054950 m!4068793))

(declare-fun m!4069649 () Bool)

(assert (=> d!1054950 m!4069649))

(declare-fun m!4069651 () Bool)

(assert (=> d!1054950 m!4069651))

(declare-fun m!4069653 () Bool)

(assert (=> b!3576662 m!4069653))

(assert (=> b!3576137 d!1054950))

(declare-fun d!1054952 () Bool)

(declare-fun lt!1227095 () Bool)

(assert (=> d!1054952 (= lt!1227095 (set.member lt!1226743 (content!5325 lt!1226745)))))

(declare-fun e!2212624 () Bool)

(assert (=> d!1054952 (= lt!1227095 e!2212624)))

(declare-fun res!1442798 () Bool)

(assert (=> d!1054952 (=> (not res!1442798) (not e!2212624))))

(assert (=> d!1054952 (= res!1442798 (is-Cons!37531 lt!1226745))))

(assert (=> d!1054952 (= (contains!7111 lt!1226745 lt!1226743) lt!1227095)))

(declare-fun b!3576663 () Bool)

(declare-fun e!2212625 () Bool)

(assert (=> b!3576663 (= e!2212624 e!2212625)))

(declare-fun res!1442797 () Bool)

(assert (=> b!3576663 (=> res!1442797 e!2212625)))

(assert (=> b!3576663 (= res!1442797 (= (h!42951 lt!1226745) lt!1226743))))

(declare-fun b!3576664 () Bool)

(assert (=> b!3576664 (= e!2212625 (contains!7111 (t!289882 lt!1226745) lt!1226743))))

(assert (= (and d!1054952 res!1442798) b!3576663))

(assert (= (and b!3576663 (not res!1442797)) b!3576664))

(declare-fun m!4069655 () Bool)

(assert (=> d!1054952 m!4069655))

(declare-fun m!4069657 () Bool)

(assert (=> d!1054952 m!4069657))

(declare-fun m!4069659 () Bool)

(assert (=> b!3576664 m!4069659))

(assert (=> b!3576137 d!1054952))

(declare-fun d!1054954 () Bool)

(assert (=> d!1054954 (= (seqFromList!4088 (t!289884 tokens!494)) (fromListB!1888 (t!289884 tokens!494)))))

(declare-fun bs!569643 () Bool)

(assert (= bs!569643 d!1054954))

(declare-fun m!4069661 () Bool)

(assert (=> bs!569643 m!4069661))

(assert (=> b!3576137 d!1054954))

(declare-fun bm!259167 () Bool)

(declare-fun call!259175 () List!37655)

(declare-fun call!259174 () List!37655)

(assert (=> bm!259167 (= call!259175 call!259174)))

(declare-fun b!3576700 () Bool)

(declare-fun e!2212645 () List!37655)

(assert (=> b!3576700 (= e!2212645 Nil!37531)))

(declare-fun call!259173 () List!37655)

(declare-fun bm!259168 () Bool)

(declare-fun c!619981 () Bool)

(declare-fun call!259172 () List!37655)

(assert (=> bm!259168 (= call!259172 (++!9338 (ite c!619981 call!259173 call!259175) (ite c!619981 call!259175 call!259173)))))

(declare-fun b!3576701 () Bool)

(declare-fun e!2212644 () List!37655)

(assert (=> b!3576701 (= e!2212644 call!259172)))

(declare-fun b!3576702 () Bool)

(declare-fun e!2212642 () List!37655)

(assert (=> b!3576702 (= e!2212642 call!259174)))

(declare-fun b!3576699 () Bool)

(assert (=> b!3576699 (= e!2212642 e!2212644)))

(assert (=> b!3576699 (= c!619981 (is-Union!10276 (regex!5517 (rule!8221 (h!42953 tokens!494)))))))

(declare-fun d!1054956 () Bool)

(declare-fun c!619984 () Bool)

(assert (=> d!1054956 (= c!619984 (or (is-EmptyExpr!10276 (regex!5517 (rule!8221 (h!42953 tokens!494)))) (is-EmptyLang!10276 (regex!5517 (rule!8221 (h!42953 tokens!494))))))))

(assert (=> d!1054956 (= (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 tokens!494)))) e!2212645)))

(declare-fun b!3576703 () Bool)

(declare-fun e!2212643 () List!37655)

(assert (=> b!3576703 (= e!2212643 (Cons!37531 (c!619893 (regex!5517 (rule!8221 (h!42953 tokens!494)))) Nil!37531))))

(declare-fun b!3576704 () Bool)

(assert (=> b!3576704 (= e!2212644 call!259172)))

(declare-fun b!3576705 () Bool)

(declare-fun c!619983 () Bool)

(assert (=> b!3576705 (= c!619983 (is-Star!10276 (regex!5517 (rule!8221 (h!42953 tokens!494)))))))

(assert (=> b!3576705 (= e!2212643 e!2212642)))

(declare-fun bm!259169 () Bool)

(assert (=> bm!259169 (= call!259174 (usedCharacters!751 (ite c!619983 (reg!10605 (regex!5517 (rule!8221 (h!42953 tokens!494)))) (ite c!619981 (regTwo!21065 (regex!5517 (rule!8221 (h!42953 tokens!494)))) (regOne!21064 (regex!5517 (rule!8221 (h!42953 tokens!494))))))))))

(declare-fun bm!259170 () Bool)

(assert (=> bm!259170 (= call!259173 (usedCharacters!751 (ite c!619981 (regOne!21065 (regex!5517 (rule!8221 (h!42953 tokens!494)))) (regTwo!21064 (regex!5517 (rule!8221 (h!42953 tokens!494)))))))))

(declare-fun b!3576706 () Bool)

(assert (=> b!3576706 (= e!2212645 e!2212643)))

(declare-fun c!619982 () Bool)

(assert (=> b!3576706 (= c!619982 (is-ElementMatch!10276 (regex!5517 (rule!8221 (h!42953 tokens!494)))))))

(assert (= (and d!1054956 c!619984) b!3576700))

(assert (= (and d!1054956 (not c!619984)) b!3576706))

(assert (= (and b!3576706 c!619982) b!3576703))

(assert (= (and b!3576706 (not c!619982)) b!3576705))

(assert (= (and b!3576705 c!619983) b!3576702))

(assert (= (and b!3576705 (not c!619983)) b!3576699))

(assert (= (and b!3576699 c!619981) b!3576704))

(assert (= (and b!3576699 (not c!619981)) b!3576701))

(assert (= (or b!3576704 b!3576701) bm!259167))

(assert (= (or b!3576704 b!3576701) bm!259170))

(assert (= (or b!3576704 b!3576701) bm!259168))

(assert (= (or b!3576702 bm!259167) bm!259169))

(declare-fun m!4069663 () Bool)

(assert (=> bm!259168 m!4069663))

(declare-fun m!4069665 () Bool)

(assert (=> bm!259169 m!4069665))

(declare-fun m!4069667 () Bool)

(assert (=> bm!259170 m!4069667))

(assert (=> b!3576137 d!1054956))

(declare-fun d!1054958 () Bool)

(assert (=> d!1054958 (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 (h!42953 tokens!494))))

(declare-fun lt!1227127 () Unit!53556)

(declare-fun choose!20811 (LexerInterface!5106 List!37656 List!37657 Token!10400) Unit!53556)

(assert (=> d!1054958 (= lt!1227127 (choose!20811 thiss!18206 rules!2135 tokens!494 (h!42953 tokens!494)))))

(assert (=> d!1054958 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1054958 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1095 thiss!18206 rules!2135 tokens!494 (h!42953 tokens!494)) lt!1227127)))

(declare-fun bs!569648 () Bool)

(assert (= bs!569648 d!1054958))

(assert (=> bs!569648 m!4068853))

(declare-fun m!4069791 () Bool)

(assert (=> bs!569648 m!4069791))

(assert (=> bs!569648 m!4068747))

(assert (=> b!3576137 d!1054958))

(declare-fun d!1054980 () Bool)

(assert (=> d!1054980 (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 (h!42953 (t!289884 tokens!494)))))

(declare-fun lt!1227128 () Unit!53556)

(assert (=> d!1054980 (= lt!1227128 (choose!20811 thiss!18206 rules!2135 tokens!494 (h!42953 (t!289884 tokens!494))))))

(assert (=> d!1054980 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1054980 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1095 thiss!18206 rules!2135 tokens!494 (h!42953 (t!289884 tokens!494))) lt!1227128)))

(declare-fun bs!569649 () Bool)

(assert (= bs!569649 d!1054980))

(assert (=> bs!569649 m!4068795))

(declare-fun m!4069793 () Bool)

(assert (=> bs!569649 m!4069793))

(assert (=> bs!569649 m!4068747))

(assert (=> b!3576137 d!1054980))

(declare-fun d!1054982 () Bool)

(assert (=> d!1054982 (= (maxPrefixOneRule!1813 thiss!18206 (rule!8221 (h!42953 tokens!494)) lt!1226762) (Some!7705 (tuple2!37459 (Token!10401 (apply!9037 (transformation!5517 (rule!8221 (h!42953 tokens!494))) (seqFromList!4087 lt!1226762)) (rule!8221 (h!42953 tokens!494)) (size!28623 lt!1226762) lt!1226762) Nil!37531)))))

(declare-fun lt!1227131 () Unit!53556)

(declare-fun choose!20812 (LexerInterface!5106 List!37656 List!37655 List!37655 List!37655 Rule!10834) Unit!53556)

(assert (=> d!1054982 (= lt!1227131 (choose!20812 thiss!18206 rules!2135 lt!1226762 lt!1226762 Nil!37531 (rule!8221 (h!42953 tokens!494))))))

(assert (=> d!1054982 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1054982 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!906 thiss!18206 rules!2135 lt!1226762 lt!1226762 Nil!37531 (rule!8221 (h!42953 tokens!494))) lt!1227131)))

(declare-fun bs!569650 () Bool)

(assert (= bs!569650 d!1054982))

(assert (=> bs!569650 m!4068707))

(assert (=> bs!569650 m!4068707))

(declare-fun m!4069795 () Bool)

(assert (=> bs!569650 m!4069795))

(declare-fun m!4069797 () Bool)

(assert (=> bs!569650 m!4069797))

(assert (=> bs!569650 m!4068747))

(assert (=> bs!569650 m!4068817))

(assert (=> bs!569650 m!4068803))

(assert (=> b!3576137 d!1054982))

(declare-fun d!1054984 () Bool)

(declare-fun lt!1227132 () BalanceConc!22432)

(assert (=> d!1054984 (= (list!13774 lt!1227132) (printList!1654 thiss!18206 (list!13777 lt!1226763)))))

(assert (=> d!1054984 (= lt!1227132 (printTailRec!1601 thiss!18206 lt!1226763 0 (BalanceConc!22433 Empty!11409)))))

(assert (=> d!1054984 (= (print!2171 thiss!18206 lt!1226763) lt!1227132)))

(declare-fun bs!569651 () Bool)

(assert (= bs!569651 d!1054984))

(declare-fun m!4069799 () Bool)

(assert (=> bs!569651 m!4069799))

(assert (=> bs!569651 m!4069515))

(assert (=> bs!569651 m!4069515))

(declare-fun m!4069801 () Bool)

(assert (=> bs!569651 m!4069801))

(assert (=> bs!569651 m!4068799))

(assert (=> b!3576137 d!1054984))

(declare-fun d!1054986 () Bool)

(declare-fun isEmpty!22086 (Option!7705) Bool)

(assert (=> d!1054986 (= (isDefined!5943 lt!1226760) (not (isEmpty!22086 lt!1226760)))))

(declare-fun bs!569652 () Bool)

(assert (= bs!569652 d!1054986))

(declare-fun m!4069803 () Bool)

(assert (=> bs!569652 m!4069803))

(assert (=> b!3576137 d!1054986))

(declare-fun b!3576766 () Bool)

(declare-fun lt!1227139 () Unit!53556)

(declare-fun lt!1227141 () Unit!53556)

(assert (=> b!3576766 (= lt!1227139 lt!1227141)))

(assert (=> b!3576766 (rulesInvariant!4503 thiss!18206 (t!289883 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!486 (LexerInterface!5106 Rule!10834 List!37656) Unit!53556)

(assert (=> b!3576766 (= lt!1227141 (lemmaInvariantOnRulesThenOnTail!486 thiss!18206 (h!42952 rules!2135) (t!289883 rules!2135)))))

(declare-fun e!2212679 () Option!7705)

(assert (=> b!3576766 (= e!2212679 (getRuleFromTag!1160 thiss!18206 (t!289883 rules!2135) (tag!6179 (rule!8221 (h!42953 tokens!494)))))))

(declare-fun b!3576767 () Bool)

(assert (=> b!3576767 (= e!2212679 None!7704)))

(declare-fun b!3576768 () Bool)

(declare-fun e!2212681 () Option!7705)

(assert (=> b!3576768 (= e!2212681 (Some!7704 (h!42952 rules!2135)))))

(declare-fun b!3576769 () Bool)

(declare-fun e!2212680 () Bool)

(declare-fun e!2212682 () Bool)

(assert (=> b!3576769 (= e!2212680 e!2212682)))

(declare-fun res!1442837 () Bool)

(assert (=> b!3576769 (=> (not res!1442837) (not e!2212682))))

(declare-fun lt!1227140 () Option!7705)

(declare-fun contains!7116 (List!37656 Rule!10834) Bool)

(assert (=> b!3576769 (= res!1442837 (contains!7116 rules!2135 (get!12083 lt!1227140)))))

(declare-fun b!3576770 () Bool)

(assert (=> b!3576770 (= e!2212681 e!2212679)))

(declare-fun c!620003 () Bool)

(assert (=> b!3576770 (= c!620003 (and (is-Cons!37532 rules!2135) (not (= (tag!6179 (h!42952 rules!2135)) (tag!6179 (rule!8221 (h!42953 tokens!494)))))))))

(declare-fun d!1054988 () Bool)

(assert (=> d!1054988 e!2212680))

(declare-fun res!1442836 () Bool)

(assert (=> d!1054988 (=> res!1442836 e!2212680)))

(assert (=> d!1054988 (= res!1442836 (isEmpty!22086 lt!1227140))))

(assert (=> d!1054988 (= lt!1227140 e!2212681)))

(declare-fun c!620004 () Bool)

(assert (=> d!1054988 (= c!620004 (and (is-Cons!37532 rules!2135) (= (tag!6179 (h!42952 rules!2135)) (tag!6179 (rule!8221 (h!42953 tokens!494))))))))

(assert (=> d!1054988 (rulesInvariant!4503 thiss!18206 rules!2135)))

(assert (=> d!1054988 (= (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 tokens!494)))) lt!1227140)))

(declare-fun b!3576771 () Bool)

(assert (=> b!3576771 (= e!2212682 (= (tag!6179 (get!12083 lt!1227140)) (tag!6179 (rule!8221 (h!42953 tokens!494)))))))

(assert (= (and d!1054988 c!620004) b!3576768))

(assert (= (and d!1054988 (not c!620004)) b!3576770))

(assert (= (and b!3576770 c!620003) b!3576766))

(assert (= (and b!3576770 (not c!620003)) b!3576767))

(assert (= (and d!1054988 (not res!1442836)) b!3576769))

(assert (= (and b!3576769 res!1442837) b!3576771))

(declare-fun m!4069805 () Bool)

(assert (=> b!3576766 m!4069805))

(declare-fun m!4069807 () Bool)

(assert (=> b!3576766 m!4069807))

(declare-fun m!4069809 () Bool)

(assert (=> b!3576766 m!4069809))

(declare-fun m!4069811 () Bool)

(assert (=> b!3576769 m!4069811))

(assert (=> b!3576769 m!4069811))

(declare-fun m!4069813 () Bool)

(assert (=> b!3576769 m!4069813))

(declare-fun m!4069815 () Bool)

(assert (=> d!1054988 m!4069815))

(assert (=> d!1054988 m!4068855))

(assert (=> b!3576771 m!4069811))

(assert (=> b!3576137 d!1054988))

(declare-fun d!1054990 () Bool)

(assert (=> d!1054990 (= (head!7450 lt!1226737) (h!42951 lt!1226737))))

(assert (=> b!3576137 d!1054990))

(declare-fun d!1054992 () Bool)

(declare-fun lt!1227142 () Bool)

(assert (=> d!1054992 (= lt!1227142 (set.member lt!1226731 (content!5325 lt!1226745)))))

(declare-fun e!2212683 () Bool)

(assert (=> d!1054992 (= lt!1227142 e!2212683)))

(declare-fun res!1442839 () Bool)

(assert (=> d!1054992 (=> (not res!1442839) (not e!2212683))))

(assert (=> d!1054992 (= res!1442839 (is-Cons!37531 lt!1226745))))

(assert (=> d!1054992 (= (contains!7111 lt!1226745 lt!1226731) lt!1227142)))

(declare-fun b!3576772 () Bool)

(declare-fun e!2212684 () Bool)

(assert (=> b!3576772 (= e!2212683 e!2212684)))

(declare-fun res!1442838 () Bool)

(assert (=> b!3576772 (=> res!1442838 e!2212684)))

(assert (=> b!3576772 (= res!1442838 (= (h!42951 lt!1226745) lt!1226731))))

(declare-fun b!3576773 () Bool)

(assert (=> b!3576773 (= e!2212684 (contains!7111 (t!289882 lt!1226745) lt!1226731))))

(assert (= (and d!1054992 res!1442839) b!3576772))

(assert (= (and b!3576772 (not res!1442838)) b!3576773))

(assert (=> d!1054992 m!4069655))

(declare-fun m!4069817 () Bool)

(assert (=> d!1054992 m!4069817))

(declare-fun m!4069819 () Bool)

(assert (=> b!3576773 m!4069819))

(assert (=> b!3576137 d!1054992))

(declare-fun d!1054994 () Bool)

(declare-fun lt!1227143 () BalanceConc!22432)

(assert (=> d!1054994 (= (list!13774 lt!1227143) (printList!1654 thiss!18206 (list!13777 lt!1226777)))))

(assert (=> d!1054994 (= lt!1227143 (printTailRec!1601 thiss!18206 lt!1226777 0 (BalanceConc!22433 Empty!11409)))))

(assert (=> d!1054994 (= (print!2171 thiss!18206 lt!1226777) lt!1227143)))

(declare-fun bs!569653 () Bool)

(assert (= bs!569653 d!1054994))

(declare-fun m!4069821 () Bool)

(assert (=> bs!569653 m!4069821))

(declare-fun m!4069823 () Bool)

(assert (=> bs!569653 m!4069823))

(assert (=> bs!569653 m!4069823))

(declare-fun m!4069825 () Bool)

(assert (=> bs!569653 m!4069825))

(assert (=> bs!569653 m!4068771))

(assert (=> b!3576137 d!1054994))

(declare-fun bs!569654 () Bool)

(declare-fun d!1054996 () Bool)

(assert (= bs!569654 (and d!1054996 b!3576145)))

(declare-fun lambda!123611 () Int)

(assert (=> bs!569654 (not (= lambda!123611 lambda!123592))))

(declare-fun bs!569655 () Bool)

(assert (= bs!569655 (and d!1054996 b!3576137)))

(assert (=> bs!569655 (= lambda!123611 lambda!123593)))

(declare-fun bs!569656 () Bool)

(assert (= bs!569656 (and d!1054996 d!1054878)))

(assert (=> bs!569656 (= lambda!123611 lambda!123610)))

(declare-fun b!3576777 () Bool)

(declare-fun e!2212688 () Bool)

(assert (=> b!3576777 (= e!2212688 true)))

(declare-fun b!3576776 () Bool)

(declare-fun e!2212687 () Bool)

(assert (=> b!3576776 (= e!2212687 e!2212688)))

(declare-fun b!3576775 () Bool)

(declare-fun e!2212686 () Bool)

(assert (=> b!3576775 (= e!2212686 e!2212687)))

(assert (=> d!1054996 e!2212686))

(assert (= b!3576776 b!3576777))

(assert (= b!3576775 b!3576776))

(assert (= (and d!1054996 (is-Cons!37532 rules!2135)) b!3576775))

(assert (=> b!3576777 (< (dynLambda!16136 order!20383 (toValue!7789 (transformation!5517 (h!42952 rules!2135)))) (dynLambda!16137 order!20385 lambda!123611))))

(assert (=> b!3576777 (< (dynLambda!16138 order!20387 (toChars!7648 (transformation!5517 (h!42952 rules!2135)))) (dynLambda!16137 order!20385 lambda!123611))))

(assert (=> d!1054996 true))

(declare-fun e!2212685 () Bool)

(assert (=> d!1054996 e!2212685))

(declare-fun res!1442840 () Bool)

(assert (=> d!1054996 (=> (not res!1442840) (not e!2212685))))

(declare-fun lt!1227144 () Bool)

(assert (=> d!1054996 (= res!1442840 (= lt!1227144 (forall!8125 (list!13777 (seqFromList!4088 (t!289884 tokens!494))) lambda!123611)))))

(assert (=> d!1054996 (= lt!1227144 (forall!8127 (seqFromList!4088 (t!289884 tokens!494)) lambda!123611))))

(assert (=> d!1054996 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1054996 (= (rulesProduceEachTokenIndividually!1557 thiss!18206 rules!2135 (seqFromList!4088 (t!289884 tokens!494))) lt!1227144)))

(declare-fun b!3576774 () Bool)

(assert (=> b!3576774 (= e!2212685 (= lt!1227144 (rulesProduceEachTokenIndividuallyList!1908 thiss!18206 rules!2135 (list!13777 (seqFromList!4088 (t!289884 tokens!494))))))))

(assert (= (and d!1054996 res!1442840) b!3576774))

(assert (=> d!1054996 m!4068753))

(declare-fun m!4069827 () Bool)

(assert (=> d!1054996 m!4069827))

(assert (=> d!1054996 m!4069827))

(declare-fun m!4069829 () Bool)

(assert (=> d!1054996 m!4069829))

(assert (=> d!1054996 m!4068753))

(declare-fun m!4069831 () Bool)

(assert (=> d!1054996 m!4069831))

(assert (=> d!1054996 m!4068747))

(assert (=> b!3576774 m!4068753))

(assert (=> b!3576774 m!4069827))

(assert (=> b!3576774 m!4069827))

(declare-fun m!4069833 () Bool)

(assert (=> b!3576774 m!4069833))

(assert (=> b!3576137 d!1054996))

(declare-fun d!1054998 () Bool)

(declare-fun e!2212689 () Bool)

(assert (=> d!1054998 e!2212689))

(declare-fun res!1442841 () Bool)

(assert (=> d!1054998 (=> (not res!1442841) (not e!2212689))))

(declare-fun lt!1227145 () BalanceConc!22434)

(assert (=> d!1054998 (= res!1442841 (= (list!13777 lt!1227145) (Cons!37533 separatorToken!241 Nil!37533)))))

(assert (=> d!1054998 (= lt!1227145 (singleton!1173 separatorToken!241))))

(assert (=> d!1054998 (= (singletonSeq!2613 separatorToken!241) lt!1227145)))

(declare-fun b!3576778 () Bool)

(assert (=> b!3576778 (= e!2212689 (isBalanced!3490 (c!619894 lt!1227145)))))

(assert (= (and d!1054998 res!1442841) b!3576778))

(declare-fun m!4069835 () Bool)

(assert (=> d!1054998 m!4069835))

(declare-fun m!4069837 () Bool)

(assert (=> d!1054998 m!4069837))

(declare-fun m!4069839 () Bool)

(assert (=> b!3576778 m!4069839))

(assert (=> b!3576137 d!1054998))

(declare-fun b!3576779 () Bool)

(declare-fun lt!1227146 () Unit!53556)

(declare-fun lt!1227148 () Unit!53556)

(assert (=> b!3576779 (= lt!1227146 lt!1227148)))

(assert (=> b!3576779 (rulesInvariant!4503 thiss!18206 (t!289883 rules!2135))))

(assert (=> b!3576779 (= lt!1227148 (lemmaInvariantOnRulesThenOnTail!486 thiss!18206 (h!42952 rules!2135) (t!289883 rules!2135)))))

(declare-fun e!2212690 () Option!7705)

(assert (=> b!3576779 (= e!2212690 (getRuleFromTag!1160 thiss!18206 (t!289883 rules!2135) (tag!6179 (rule!8221 separatorToken!241))))))

(declare-fun b!3576780 () Bool)

(assert (=> b!3576780 (= e!2212690 None!7704)))

(declare-fun b!3576781 () Bool)

(declare-fun e!2212692 () Option!7705)

(assert (=> b!3576781 (= e!2212692 (Some!7704 (h!42952 rules!2135)))))

(declare-fun b!3576782 () Bool)

(declare-fun e!2212691 () Bool)

(declare-fun e!2212693 () Bool)

(assert (=> b!3576782 (= e!2212691 e!2212693)))

(declare-fun res!1442843 () Bool)

(assert (=> b!3576782 (=> (not res!1442843) (not e!2212693))))

(declare-fun lt!1227147 () Option!7705)

(assert (=> b!3576782 (= res!1442843 (contains!7116 rules!2135 (get!12083 lt!1227147)))))

(declare-fun b!3576783 () Bool)

(assert (=> b!3576783 (= e!2212692 e!2212690)))

(declare-fun c!620005 () Bool)

(assert (=> b!3576783 (= c!620005 (and (is-Cons!37532 rules!2135) (not (= (tag!6179 (h!42952 rules!2135)) (tag!6179 (rule!8221 separatorToken!241))))))))

(declare-fun d!1055000 () Bool)

(assert (=> d!1055000 e!2212691))

(declare-fun res!1442842 () Bool)

(assert (=> d!1055000 (=> res!1442842 e!2212691)))

(assert (=> d!1055000 (= res!1442842 (isEmpty!22086 lt!1227147))))

(assert (=> d!1055000 (= lt!1227147 e!2212692)))

(declare-fun c!620006 () Bool)

(assert (=> d!1055000 (= c!620006 (and (is-Cons!37532 rules!2135) (= (tag!6179 (h!42952 rules!2135)) (tag!6179 (rule!8221 separatorToken!241)))))))

(assert (=> d!1055000 (rulesInvariant!4503 thiss!18206 rules!2135)))

(assert (=> d!1055000 (= (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 separatorToken!241))) lt!1227147)))

(declare-fun b!3576784 () Bool)

(assert (=> b!3576784 (= e!2212693 (= (tag!6179 (get!12083 lt!1227147)) (tag!6179 (rule!8221 separatorToken!241))))))

(assert (= (and d!1055000 c!620006) b!3576781))

(assert (= (and d!1055000 (not c!620006)) b!3576783))

(assert (= (and b!3576783 c!620005) b!3576779))

(assert (= (and b!3576783 (not c!620005)) b!3576780))

(assert (= (and d!1055000 (not res!1442842)) b!3576782))

(assert (= (and b!3576782 res!1442843) b!3576784))

(assert (=> b!3576779 m!4069805))

(assert (=> b!3576779 m!4069807))

(declare-fun m!4069841 () Bool)

(assert (=> b!3576779 m!4069841))

(declare-fun m!4069843 () Bool)

(assert (=> b!3576782 m!4069843))

(assert (=> b!3576782 m!4069843))

(declare-fun m!4069845 () Bool)

(assert (=> b!3576782 m!4069845))

(declare-fun m!4069847 () Bool)

(assert (=> d!1055000 m!4069847))

(assert (=> d!1055000 m!4068855))

(assert (=> b!3576784 m!4069843))

(assert (=> b!3576137 d!1055000))

(declare-fun bm!259185 () Bool)

(declare-fun call!259190 () Option!7706)

(assert (=> bm!259185 (= call!259190 (maxPrefixOneRule!1813 thiss!18206 (h!42952 rules!2135) lt!1226755))))

(declare-fun b!3576812 () Bool)

(declare-fun res!1442871 () Bool)

(declare-fun e!2212707 () Bool)

(assert (=> b!3576812 (=> (not res!1442871) (not e!2212707))))

(declare-fun lt!1227165 () Option!7706)

(assert (=> b!3576812 (= res!1442871 (= (value!177696 (_1!21863 (get!12086 lt!1227165))) (apply!9037 (transformation!5517 (rule!8221 (_1!21863 (get!12086 lt!1227165)))) (seqFromList!4087 (originalCharacters!6231 (_1!21863 (get!12086 lt!1227165)))))))))

(declare-fun d!1055002 () Bool)

(declare-fun e!2212706 () Bool)

(assert (=> d!1055002 e!2212706))

(declare-fun res!1442868 () Bool)

(assert (=> d!1055002 (=> res!1442868 e!2212706)))

(assert (=> d!1055002 (= res!1442868 (isEmpty!22085 lt!1227165))))

(declare-fun e!2212708 () Option!7706)

(assert (=> d!1055002 (= lt!1227165 e!2212708)))

(declare-fun c!620009 () Bool)

(assert (=> d!1055002 (= c!620009 (and (is-Cons!37532 rules!2135) (is-Nil!37532 (t!289883 rules!2135))))))

(declare-fun lt!1227167 () Unit!53556)

(declare-fun lt!1227166 () Unit!53556)

(assert (=> d!1055002 (= lt!1227167 lt!1227166)))

(declare-fun isPrefix!2898 (List!37655 List!37655) Bool)

(assert (=> d!1055002 (isPrefix!2898 lt!1226755 lt!1226755)))

(declare-fun lemmaIsPrefixRefl!1857 (List!37655 List!37655) Unit!53556)

(assert (=> d!1055002 (= lt!1227166 (lemmaIsPrefixRefl!1857 lt!1226755 lt!1226755))))

(declare-fun rulesValidInductive!1907 (LexerInterface!5106 List!37656) Bool)

(assert (=> d!1055002 (rulesValidInductive!1907 thiss!18206 rules!2135)))

(assert (=> d!1055002 (= (maxPrefix!2646 thiss!18206 rules!2135 lt!1226755) lt!1227165)))

(declare-fun b!3576813 () Bool)

(declare-fun res!1442869 () Bool)

(assert (=> b!3576813 (=> (not res!1442869) (not e!2212707))))

(assert (=> b!3576813 (= res!1442869 (< (size!28623 (_2!21863 (get!12086 lt!1227165))) (size!28623 lt!1226755)))))

(declare-fun b!3576814 () Bool)

(assert (=> b!3576814 (= e!2212706 e!2212707)))

(declare-fun res!1442867 () Bool)

(assert (=> b!3576814 (=> (not res!1442867) (not e!2212707))))

(declare-fun isDefined!5946 (Option!7706) Bool)

(assert (=> b!3576814 (= res!1442867 (isDefined!5946 lt!1227165))))

(declare-fun b!3576815 () Bool)

(declare-fun lt!1227169 () Option!7706)

(declare-fun lt!1227168 () Option!7706)

(assert (=> b!3576815 (= e!2212708 (ite (and (is-None!7705 lt!1227169) (is-None!7705 lt!1227168)) None!7705 (ite (is-None!7705 lt!1227168) lt!1227169 (ite (is-None!7705 lt!1227169) lt!1227168 (ite (>= (size!28622 (_1!21863 (v!37329 lt!1227169))) (size!28622 (_1!21863 (v!37329 lt!1227168)))) lt!1227169 lt!1227168)))))))

(assert (=> b!3576815 (= lt!1227169 call!259190)))

(assert (=> b!3576815 (= lt!1227168 (maxPrefix!2646 thiss!18206 (t!289883 rules!2135) lt!1226755))))

(declare-fun b!3576816 () Bool)

(assert (=> b!3576816 (= e!2212707 (contains!7116 rules!2135 (rule!8221 (_1!21863 (get!12086 lt!1227165)))))))

(declare-fun b!3576817 () Bool)

(declare-fun res!1442872 () Bool)

(assert (=> b!3576817 (=> (not res!1442872) (not e!2212707))))

(assert (=> b!3576817 (= res!1442872 (matchR!4860 (regex!5517 (rule!8221 (_1!21863 (get!12086 lt!1227165)))) (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227165))))))))

(declare-fun b!3576818 () Bool)

(assert (=> b!3576818 (= e!2212708 call!259190)))

(declare-fun b!3576819 () Bool)

(declare-fun res!1442870 () Bool)

(assert (=> b!3576819 (=> (not res!1442870) (not e!2212707))))

(assert (=> b!3576819 (= res!1442870 (= (++!9338 (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227165)))) (_2!21863 (get!12086 lt!1227165))) lt!1226755))))

(declare-fun b!3576820 () Bool)

(declare-fun res!1442873 () Bool)

(assert (=> b!3576820 (=> (not res!1442873) (not e!2212707))))

(assert (=> b!3576820 (= res!1442873 (= (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227165)))) (originalCharacters!6231 (_1!21863 (get!12086 lt!1227165)))))))

(assert (= (and d!1055002 c!620009) b!3576818))

(assert (= (and d!1055002 (not c!620009)) b!3576815))

(assert (= (or b!3576818 b!3576815) bm!259185))

(assert (= (and d!1055002 (not res!1442868)) b!3576814))

(assert (= (and b!3576814 res!1442867) b!3576820))

(assert (= (and b!3576820 res!1442873) b!3576813))

(assert (= (and b!3576813 res!1442869) b!3576819))

(assert (= (and b!3576819 res!1442870) b!3576812))

(assert (= (and b!3576812 res!1442871) b!3576817))

(assert (= (and b!3576817 res!1442872) b!3576816))

(declare-fun m!4069867 () Bool)

(assert (=> b!3576820 m!4069867))

(declare-fun m!4069869 () Bool)

(assert (=> b!3576820 m!4069869))

(assert (=> b!3576820 m!4069869))

(declare-fun m!4069871 () Bool)

(assert (=> b!3576820 m!4069871))

(assert (=> b!3576813 m!4069867))

(declare-fun m!4069873 () Bool)

(assert (=> b!3576813 m!4069873))

(assert (=> b!3576813 m!4069101))

(declare-fun m!4069875 () Bool)

(assert (=> bm!259185 m!4069875))

(assert (=> b!3576816 m!4069867))

(declare-fun m!4069877 () Bool)

(assert (=> b!3576816 m!4069877))

(declare-fun m!4069879 () Bool)

(assert (=> b!3576815 m!4069879))

(assert (=> b!3576812 m!4069867))

(declare-fun m!4069881 () Bool)

(assert (=> b!3576812 m!4069881))

(assert (=> b!3576812 m!4069881))

(declare-fun m!4069883 () Bool)

(assert (=> b!3576812 m!4069883))

(assert (=> b!3576817 m!4069867))

(assert (=> b!3576817 m!4069869))

(assert (=> b!3576817 m!4069869))

(assert (=> b!3576817 m!4069871))

(assert (=> b!3576817 m!4069871))

(declare-fun m!4069885 () Bool)

(assert (=> b!3576817 m!4069885))

(assert (=> b!3576819 m!4069867))

(assert (=> b!3576819 m!4069869))

(assert (=> b!3576819 m!4069869))

(assert (=> b!3576819 m!4069871))

(assert (=> b!3576819 m!4069871))

(declare-fun m!4069887 () Bool)

(assert (=> b!3576819 m!4069887))

(declare-fun m!4069889 () Bool)

(assert (=> d!1055002 m!4069889))

(declare-fun m!4069891 () Bool)

(assert (=> d!1055002 m!4069891))

(declare-fun m!4069893 () Bool)

(assert (=> d!1055002 m!4069893))

(declare-fun m!4069895 () Bool)

(assert (=> d!1055002 m!4069895))

(declare-fun m!4069897 () Bool)

(assert (=> b!3576814 m!4069897))

(assert (=> b!3576137 d!1055002))

(declare-fun call!259191 () Option!7706)

(declare-fun bm!259186 () Bool)

(assert (=> bm!259186 (= call!259191 (maxPrefixOneRule!1813 thiss!18206 (h!42952 rules!2135) lt!1226742))))

(declare-fun b!3576821 () Bool)

(declare-fun res!1442878 () Bool)

(declare-fun e!2212710 () Bool)

(assert (=> b!3576821 (=> (not res!1442878) (not e!2212710))))

(declare-fun lt!1227170 () Option!7706)

(assert (=> b!3576821 (= res!1442878 (= (value!177696 (_1!21863 (get!12086 lt!1227170))) (apply!9037 (transformation!5517 (rule!8221 (_1!21863 (get!12086 lt!1227170)))) (seqFromList!4087 (originalCharacters!6231 (_1!21863 (get!12086 lt!1227170)))))))))

(declare-fun d!1055010 () Bool)

(declare-fun e!2212709 () Bool)

(assert (=> d!1055010 e!2212709))

(declare-fun res!1442875 () Bool)

(assert (=> d!1055010 (=> res!1442875 e!2212709)))

(assert (=> d!1055010 (= res!1442875 (isEmpty!22085 lt!1227170))))

(declare-fun e!2212711 () Option!7706)

(assert (=> d!1055010 (= lt!1227170 e!2212711)))

(declare-fun c!620010 () Bool)

(assert (=> d!1055010 (= c!620010 (and (is-Cons!37532 rules!2135) (is-Nil!37532 (t!289883 rules!2135))))))

(declare-fun lt!1227172 () Unit!53556)

(declare-fun lt!1227171 () Unit!53556)

(assert (=> d!1055010 (= lt!1227172 lt!1227171)))

(assert (=> d!1055010 (isPrefix!2898 lt!1226742 lt!1226742)))

(assert (=> d!1055010 (= lt!1227171 (lemmaIsPrefixRefl!1857 lt!1226742 lt!1226742))))

(assert (=> d!1055010 (rulesValidInductive!1907 thiss!18206 rules!2135)))

(assert (=> d!1055010 (= (maxPrefix!2646 thiss!18206 rules!2135 lt!1226742) lt!1227170)))

(declare-fun b!3576822 () Bool)

(declare-fun res!1442876 () Bool)

(assert (=> b!3576822 (=> (not res!1442876) (not e!2212710))))

(assert (=> b!3576822 (= res!1442876 (< (size!28623 (_2!21863 (get!12086 lt!1227170))) (size!28623 lt!1226742)))))

(declare-fun b!3576823 () Bool)

(assert (=> b!3576823 (= e!2212709 e!2212710)))

(declare-fun res!1442874 () Bool)

(assert (=> b!3576823 (=> (not res!1442874) (not e!2212710))))

(assert (=> b!3576823 (= res!1442874 (isDefined!5946 lt!1227170))))

(declare-fun b!3576824 () Bool)

(declare-fun lt!1227174 () Option!7706)

(declare-fun lt!1227173 () Option!7706)

(assert (=> b!3576824 (= e!2212711 (ite (and (is-None!7705 lt!1227174) (is-None!7705 lt!1227173)) None!7705 (ite (is-None!7705 lt!1227173) lt!1227174 (ite (is-None!7705 lt!1227174) lt!1227173 (ite (>= (size!28622 (_1!21863 (v!37329 lt!1227174))) (size!28622 (_1!21863 (v!37329 lt!1227173)))) lt!1227174 lt!1227173)))))))

(assert (=> b!3576824 (= lt!1227174 call!259191)))

(assert (=> b!3576824 (= lt!1227173 (maxPrefix!2646 thiss!18206 (t!289883 rules!2135) lt!1226742))))

(declare-fun b!3576825 () Bool)

(assert (=> b!3576825 (= e!2212710 (contains!7116 rules!2135 (rule!8221 (_1!21863 (get!12086 lt!1227170)))))))

(declare-fun b!3576826 () Bool)

(declare-fun res!1442879 () Bool)

(assert (=> b!3576826 (=> (not res!1442879) (not e!2212710))))

(assert (=> b!3576826 (= res!1442879 (matchR!4860 (regex!5517 (rule!8221 (_1!21863 (get!12086 lt!1227170)))) (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227170))))))))

(declare-fun b!3576827 () Bool)

(assert (=> b!3576827 (= e!2212711 call!259191)))

(declare-fun b!3576828 () Bool)

(declare-fun res!1442877 () Bool)

(assert (=> b!3576828 (=> (not res!1442877) (not e!2212710))))

(assert (=> b!3576828 (= res!1442877 (= (++!9338 (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227170)))) (_2!21863 (get!12086 lt!1227170))) lt!1226742))))

(declare-fun b!3576829 () Bool)

(declare-fun res!1442880 () Bool)

(assert (=> b!3576829 (=> (not res!1442880) (not e!2212710))))

(assert (=> b!3576829 (= res!1442880 (= (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227170)))) (originalCharacters!6231 (_1!21863 (get!12086 lt!1227170)))))))

(assert (= (and d!1055010 c!620010) b!3576827))

(assert (= (and d!1055010 (not c!620010)) b!3576824))

(assert (= (or b!3576827 b!3576824) bm!259186))

(assert (= (and d!1055010 (not res!1442875)) b!3576823))

(assert (= (and b!3576823 res!1442874) b!3576829))

(assert (= (and b!3576829 res!1442880) b!3576822))

(assert (= (and b!3576822 res!1442876) b!3576828))

(assert (= (and b!3576828 res!1442877) b!3576821))

(assert (= (and b!3576821 res!1442878) b!3576826))

(assert (= (and b!3576826 res!1442879) b!3576825))

(declare-fun m!4069899 () Bool)

(assert (=> b!3576829 m!4069899))

(declare-fun m!4069901 () Bool)

(assert (=> b!3576829 m!4069901))

(assert (=> b!3576829 m!4069901))

(declare-fun m!4069903 () Bool)

(assert (=> b!3576829 m!4069903))

(assert (=> b!3576822 m!4069899))

(declare-fun m!4069905 () Bool)

(assert (=> b!3576822 m!4069905))

(declare-fun m!4069907 () Bool)

(assert (=> b!3576822 m!4069907))

(declare-fun m!4069909 () Bool)

(assert (=> bm!259186 m!4069909))

(assert (=> b!3576825 m!4069899))

(declare-fun m!4069911 () Bool)

(assert (=> b!3576825 m!4069911))

(declare-fun m!4069913 () Bool)

(assert (=> b!3576824 m!4069913))

(assert (=> b!3576821 m!4069899))

(declare-fun m!4069915 () Bool)

(assert (=> b!3576821 m!4069915))

(assert (=> b!3576821 m!4069915))

(declare-fun m!4069917 () Bool)

(assert (=> b!3576821 m!4069917))

(assert (=> b!3576826 m!4069899))

(assert (=> b!3576826 m!4069901))

(assert (=> b!3576826 m!4069901))

(assert (=> b!3576826 m!4069903))

(assert (=> b!3576826 m!4069903))

(declare-fun m!4069919 () Bool)

(assert (=> b!3576826 m!4069919))

(assert (=> b!3576828 m!4069899))

(assert (=> b!3576828 m!4069901))

(assert (=> b!3576828 m!4069901))

(assert (=> b!3576828 m!4069903))

(assert (=> b!3576828 m!4069903))

(declare-fun m!4069921 () Bool)

(assert (=> b!3576828 m!4069921))

(declare-fun m!4069923 () Bool)

(assert (=> d!1055010 m!4069923))

(declare-fun m!4069925 () Bool)

(assert (=> d!1055010 m!4069925))

(declare-fun m!4069927 () Bool)

(assert (=> d!1055010 m!4069927))

(assert (=> d!1055010 m!4069895))

(declare-fun m!4069929 () Bool)

(assert (=> b!3576823 m!4069929))

(assert (=> b!3576137 d!1055010))

(declare-fun b!3576830 () Bool)

(declare-fun e!2212714 () Option!7706)

(assert (=> b!3576830 (= e!2212714 None!7705)))

(declare-fun b!3576831 () Bool)

(declare-fun e!2212713 () Bool)

(declare-fun lt!1227178 () Option!7706)

(assert (=> b!3576831 (= e!2212713 (= (size!28622 (_1!21863 (get!12086 lt!1227178))) (size!28623 (originalCharacters!6231 (_1!21863 (get!12086 lt!1227178))))))))

(declare-fun b!3576832 () Bool)

(declare-fun res!1442883 () Bool)

(assert (=> b!3576832 (=> (not res!1442883) (not e!2212713))))

(assert (=> b!3576832 (= res!1442883 (= (value!177696 (_1!21863 (get!12086 lt!1227178))) (apply!9037 (transformation!5517 (rule!8221 (_1!21863 (get!12086 lt!1227178)))) (seqFromList!4087 (originalCharacters!6231 (_1!21863 (get!12086 lt!1227178)))))))))

(declare-fun b!3576833 () Bool)

(declare-fun lt!1227176 () tuple2!37468)

(assert (=> b!3576833 (= e!2212714 (Some!7705 (tuple2!37459 (Token!10401 (apply!9037 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) (seqFromList!4087 (_1!21868 lt!1227176))) (rule!8221 (h!42953 (t!289884 tokens!494))) (size!28631 (seqFromList!4087 (_1!21868 lt!1227176))) (_1!21868 lt!1227176)) (_2!21868 lt!1227176))))))

(declare-fun lt!1227177 () Unit!53556)

(assert (=> b!3576833 (= lt!1227177 (longestMatchIsAcceptedByMatchOrIsEmpty!936 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1226740))))

(declare-fun res!1442887 () Bool)

(assert (=> b!3576833 (= res!1442887 (isEmpty!22080 (_1!21868 (findLongestMatchInner!963 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) Nil!37531 (size!28623 Nil!37531) lt!1226740 lt!1226740 (size!28623 lt!1226740)))))))

(declare-fun e!2212715 () Bool)

(assert (=> b!3576833 (=> res!1442887 e!2212715)))

(assert (=> b!3576833 e!2212715))

(declare-fun lt!1227179 () Unit!53556)

(assert (=> b!3576833 (= lt!1227179 lt!1227177)))

(declare-fun lt!1227175 () Unit!53556)

(assert (=> b!3576833 (= lt!1227175 (lemmaSemiInverse!1315 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) (seqFromList!4087 (_1!21868 lt!1227176))))))

(declare-fun b!3576834 () Bool)

(assert (=> b!3576834 (= e!2212715 (matchR!4860 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) (_1!21868 (findLongestMatchInner!963 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) Nil!37531 (size!28623 Nil!37531) lt!1226740 lt!1226740 (size!28623 lt!1226740)))))))

(declare-fun d!1055012 () Bool)

(declare-fun e!2212712 () Bool)

(assert (=> d!1055012 e!2212712))

(declare-fun res!1442881 () Bool)

(assert (=> d!1055012 (=> res!1442881 e!2212712)))

(assert (=> d!1055012 (= res!1442881 (isEmpty!22085 lt!1227178))))

(assert (=> d!1055012 (= lt!1227178 e!2212714)))

(declare-fun c!620011 () Bool)

(assert (=> d!1055012 (= c!620011 (isEmpty!22080 (_1!21868 lt!1227176)))))

(assert (=> d!1055012 (= lt!1227176 (findLongestMatch!878 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1226740))))

(assert (=> d!1055012 (ruleValid!1798 thiss!18206 (rule!8221 (h!42953 (t!289884 tokens!494))))))

(assert (=> d!1055012 (= (maxPrefixOneRule!1813 thiss!18206 (rule!8221 (h!42953 (t!289884 tokens!494))) lt!1226740) lt!1227178)))

(declare-fun b!3576835 () Bool)

(declare-fun res!1442882 () Bool)

(assert (=> b!3576835 (=> (not res!1442882) (not e!2212713))))

(assert (=> b!3576835 (= res!1442882 (= (rule!8221 (_1!21863 (get!12086 lt!1227178))) (rule!8221 (h!42953 (t!289884 tokens!494)))))))

(declare-fun b!3576836 () Bool)

(declare-fun res!1442884 () Bool)

(assert (=> b!3576836 (=> (not res!1442884) (not e!2212713))))

(assert (=> b!3576836 (= res!1442884 (< (size!28623 (_2!21863 (get!12086 lt!1227178))) (size!28623 lt!1226740)))))

(declare-fun b!3576837 () Bool)

(assert (=> b!3576837 (= e!2212712 e!2212713)))

(declare-fun res!1442885 () Bool)

(assert (=> b!3576837 (=> (not res!1442885) (not e!2212713))))

(assert (=> b!3576837 (= res!1442885 (matchR!4860 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227178))))))))

(declare-fun b!3576838 () Bool)

(declare-fun res!1442886 () Bool)

(assert (=> b!3576838 (=> (not res!1442886) (not e!2212713))))

(assert (=> b!3576838 (= res!1442886 (= (++!9338 (list!13774 (charsOf!3531 (_1!21863 (get!12086 lt!1227178)))) (_2!21863 (get!12086 lt!1227178))) lt!1226740))))

(assert (= (and d!1055012 c!620011) b!3576830))

(assert (= (and d!1055012 (not c!620011)) b!3576833))

(assert (= (and b!3576833 (not res!1442887)) b!3576834))

(assert (= (and d!1055012 (not res!1442881)) b!3576837))

(assert (= (and b!3576837 res!1442885) b!3576838))

(assert (= (and b!3576838 res!1442886) b!3576836))

(assert (= (and b!3576836 res!1442884) b!3576835))

(assert (= (and b!3576835 res!1442882) b!3576832))

(assert (= (and b!3576832 res!1442883) b!3576831))

(declare-fun m!4069931 () Bool)

(assert (=> b!3576836 m!4069931))

(declare-fun m!4069933 () Bool)

(assert (=> b!3576836 m!4069933))

(assert (=> b!3576836 m!4068835))

(assert (=> b!3576835 m!4069931))

(assert (=> b!3576834 m!4069609))

(assert (=> b!3576834 m!4068835))

(assert (=> b!3576834 m!4069609))

(assert (=> b!3576834 m!4068835))

(declare-fun m!4069935 () Bool)

(assert (=> b!3576834 m!4069935))

(declare-fun m!4069937 () Bool)

(assert (=> b!3576834 m!4069937))

(declare-fun m!4069939 () Bool)

(assert (=> d!1055012 m!4069939))

(declare-fun m!4069941 () Bool)

(assert (=> d!1055012 m!4069941))

(declare-fun m!4069943 () Bool)

(assert (=> d!1055012 m!4069943))

(declare-fun m!4069945 () Bool)

(assert (=> d!1055012 m!4069945))

(assert (=> b!3576838 m!4069931))

(declare-fun m!4069947 () Bool)

(assert (=> b!3576838 m!4069947))

(assert (=> b!3576838 m!4069947))

(declare-fun m!4069949 () Bool)

(assert (=> b!3576838 m!4069949))

(assert (=> b!3576838 m!4069949))

(declare-fun m!4069951 () Bool)

(assert (=> b!3576838 m!4069951))

(declare-fun m!4069953 () Bool)

(assert (=> b!3576833 m!4069953))

(declare-fun m!4069955 () Bool)

(assert (=> b!3576833 m!4069955))

(assert (=> b!3576833 m!4069953))

(declare-fun m!4069957 () Bool)

(assert (=> b!3576833 m!4069957))

(declare-fun m!4069959 () Bool)

(assert (=> b!3576833 m!4069959))

(declare-fun m!4069961 () Bool)

(assert (=> b!3576833 m!4069961))

(assert (=> b!3576833 m!4069953))

(assert (=> b!3576833 m!4069953))

(declare-fun m!4069963 () Bool)

(assert (=> b!3576833 m!4069963))

(assert (=> b!3576833 m!4069609))

(assert (=> b!3576833 m!4069609))

(assert (=> b!3576833 m!4068835))

(assert (=> b!3576833 m!4069935))

(assert (=> b!3576833 m!4068835))

(assert (=> b!3576831 m!4069931))

(declare-fun m!4069965 () Bool)

(assert (=> b!3576831 m!4069965))

(assert (=> b!3576837 m!4069931))

(assert (=> b!3576837 m!4069947))

(assert (=> b!3576837 m!4069947))

(assert (=> b!3576837 m!4069949))

(assert (=> b!3576837 m!4069949))

(declare-fun m!4069967 () Bool)

(assert (=> b!3576837 m!4069967))

(assert (=> b!3576832 m!4069931))

(declare-fun m!4069969 () Bool)

(assert (=> b!3576832 m!4069969))

(assert (=> b!3576832 m!4069969))

(declare-fun m!4069971 () Bool)

(assert (=> b!3576832 m!4069971))

(assert (=> b!3576137 d!1055012))

(declare-fun bm!259187 () Bool)

(declare-fun call!259195 () List!37655)

(declare-fun call!259194 () List!37655)

(assert (=> bm!259187 (= call!259195 call!259194)))

(declare-fun b!3576840 () Bool)

(declare-fun e!2212719 () List!37655)

(assert (=> b!3576840 (= e!2212719 Nil!37531)))

(declare-fun c!620012 () Bool)

(declare-fun call!259192 () List!37655)

(declare-fun bm!259188 () Bool)

(declare-fun call!259193 () List!37655)

(assert (=> bm!259188 (= call!259192 (++!9338 (ite c!620012 call!259193 call!259195) (ite c!620012 call!259195 call!259193)))))

(declare-fun b!3576841 () Bool)

(declare-fun e!2212718 () List!37655)

(assert (=> b!3576841 (= e!2212718 call!259192)))

(declare-fun b!3576842 () Bool)

(declare-fun e!2212716 () List!37655)

(assert (=> b!3576842 (= e!2212716 call!259194)))

(declare-fun b!3576839 () Bool)

(assert (=> b!3576839 (= e!2212716 e!2212718)))

(assert (=> b!3576839 (= c!620012 (is-Union!10276 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(declare-fun d!1055014 () Bool)

(declare-fun c!620015 () Bool)

(assert (=> d!1055014 (= c!620015 (or (is-EmptyExpr!10276 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (is-EmptyLang!10276 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))))))

(assert (=> d!1055014 (= (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) e!2212719)))

(declare-fun b!3576843 () Bool)

(declare-fun e!2212717 () List!37655)

(assert (=> b!3576843 (= e!2212717 (Cons!37531 (c!619893 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) Nil!37531))))

(declare-fun b!3576844 () Bool)

(assert (=> b!3576844 (= e!2212718 call!259192)))

(declare-fun b!3576845 () Bool)

(declare-fun c!620014 () Bool)

(assert (=> b!3576845 (= c!620014 (is-Star!10276 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(assert (=> b!3576845 (= e!2212717 e!2212716)))

(declare-fun bm!259189 () Bool)

(assert (=> bm!259189 (= call!259194 (usedCharacters!751 (ite c!620014 (reg!10605 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (ite c!620012 (regTwo!21065 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (regOne!21064 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))))))))

(declare-fun bm!259190 () Bool)

(assert (=> bm!259190 (= call!259193 (usedCharacters!751 (ite c!620012 (regOne!21065 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (regTwo!21064 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))))

(declare-fun b!3576846 () Bool)

(assert (=> b!3576846 (= e!2212719 e!2212717)))

(declare-fun c!620013 () Bool)

(assert (=> b!3576846 (= c!620013 (is-ElementMatch!10276 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(assert (= (and d!1055014 c!620015) b!3576840))

(assert (= (and d!1055014 (not c!620015)) b!3576846))

(assert (= (and b!3576846 c!620013) b!3576843))

(assert (= (and b!3576846 (not c!620013)) b!3576845))

(assert (= (and b!3576845 c!620014) b!3576842))

(assert (= (and b!3576845 (not c!620014)) b!3576839))

(assert (= (and b!3576839 c!620012) b!3576844))

(assert (= (and b!3576839 (not c!620012)) b!3576841))

(assert (= (or b!3576844 b!3576841) bm!259187))

(assert (= (or b!3576844 b!3576841) bm!259190))

(assert (= (or b!3576844 b!3576841) bm!259188))

(assert (= (or b!3576842 bm!259187) bm!259189))

(declare-fun m!4069973 () Bool)

(assert (=> bm!259188 m!4069973))

(declare-fun m!4069975 () Bool)

(assert (=> bm!259189 m!4069975))

(declare-fun m!4069977 () Bool)

(assert (=> bm!259190 m!4069977))

(assert (=> b!3576137 d!1055014))

(declare-fun d!1055016 () Bool)

(assert (=> d!1055016 (= (isDefined!5943 lt!1226767) (not (isEmpty!22086 lt!1226767)))))

(declare-fun bs!569658 () Bool)

(assert (= bs!569658 d!1055016))

(declare-fun m!4069979 () Bool)

(assert (=> bs!569658 m!4069979))

(assert (=> b!3576137 d!1055016))

(declare-fun d!1055018 () Bool)

(declare-fun e!2212722 () Bool)

(assert (=> d!1055018 e!2212722))

(declare-fun res!1442892 () Bool)

(assert (=> d!1055018 (=> (not res!1442892) (not e!2212722))))

(assert (=> d!1055018 (= res!1442892 (isDefined!5943 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 tokens!494))))))))

(declare-fun lt!1227182 () Unit!53556)

(declare-fun choose!20815 (LexerInterface!5106 List!37656 List!37655 Token!10400) Unit!53556)

(assert (=> d!1055018 (= lt!1227182 (choose!20815 thiss!18206 rules!2135 lt!1226762 (h!42953 tokens!494)))))

(assert (=> d!1055018 (rulesInvariant!4503 thiss!18206 rules!2135)))

(assert (=> d!1055018 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1160 thiss!18206 rules!2135 lt!1226762 (h!42953 tokens!494)) lt!1227182)))

(declare-fun b!3576851 () Bool)

(declare-fun res!1442893 () Bool)

(assert (=> b!3576851 (=> (not res!1442893) (not e!2212722))))

(assert (=> b!3576851 (= res!1442893 (matchR!4860 (regex!5517 (get!12083 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 tokens!494)))))) (list!13774 (charsOf!3531 (h!42953 tokens!494)))))))

(declare-fun b!3576852 () Bool)

(assert (=> b!3576852 (= e!2212722 (= (rule!8221 (h!42953 tokens!494)) (get!12083 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 tokens!494)))))))))

(assert (= (and d!1055018 res!1442892) b!3576851))

(assert (= (and b!3576851 res!1442893) b!3576852))

(assert (=> d!1055018 m!4068787))

(assert (=> d!1055018 m!4068787))

(declare-fun m!4069981 () Bool)

(assert (=> d!1055018 m!4069981))

(declare-fun m!4069983 () Bool)

(assert (=> d!1055018 m!4069983))

(assert (=> d!1055018 m!4068855))

(assert (=> b!3576851 m!4068741))

(declare-fun m!4069985 () Bool)

(assert (=> b!3576851 m!4069985))

(assert (=> b!3576851 m!4068739))

(assert (=> b!3576851 m!4068741))

(assert (=> b!3576851 m!4068787))

(assert (=> b!3576851 m!4068787))

(declare-fun m!4069987 () Bool)

(assert (=> b!3576851 m!4069987))

(assert (=> b!3576851 m!4068739))

(assert (=> b!3576852 m!4068787))

(assert (=> b!3576852 m!4068787))

(assert (=> b!3576852 m!4069987))

(assert (=> b!3576137 d!1055018))

(declare-fun d!1055020 () Bool)

(declare-fun lt!1227183 () Int)

(assert (=> d!1055020 (= lt!1227183 (size!28629 (list!13777 (_1!21862 lt!1226776))))))

(assert (=> d!1055020 (= lt!1227183 (size!28630 (c!619894 (_1!21862 lt!1226776))))))

(assert (=> d!1055020 (= (size!28624 (_1!21862 lt!1226776)) lt!1227183)))

(declare-fun bs!569659 () Bool)

(assert (= bs!569659 d!1055020))

(assert (=> bs!569659 m!4069309))

(assert (=> bs!569659 m!4069309))

(declare-fun m!4069989 () Bool)

(assert (=> bs!569659 m!4069989))

(declare-fun m!4069991 () Bool)

(assert (=> bs!569659 m!4069991))

(assert (=> b!3576137 d!1055020))

(declare-fun d!1055022 () Bool)

(declare-fun e!2212723 () Bool)

(assert (=> d!1055022 e!2212723))

(declare-fun res!1442894 () Bool)

(assert (=> d!1055022 (=> (not res!1442894) (not e!2212723))))

(declare-fun lt!1227184 () BalanceConc!22434)

(assert (=> d!1055022 (= res!1442894 (= (list!13777 lt!1227184) (Cons!37533 (h!42953 (t!289884 tokens!494)) Nil!37533)))))

(assert (=> d!1055022 (= lt!1227184 (singleton!1173 (h!42953 (t!289884 tokens!494))))))

(assert (=> d!1055022 (= (singletonSeq!2613 (h!42953 (t!289884 tokens!494))) lt!1227184)))

(declare-fun b!3576853 () Bool)

(assert (=> b!3576853 (= e!2212723 (isBalanced!3490 (c!619894 lt!1227184)))))

(assert (= (and d!1055022 res!1442894) b!3576853))

(declare-fun m!4069993 () Bool)

(assert (=> d!1055022 m!4069993))

(declare-fun m!4069995 () Bool)

(assert (=> d!1055022 m!4069995))

(declare-fun m!4069997 () Bool)

(assert (=> b!3576853 m!4069997))

(assert (=> b!3576137 d!1055022))

(declare-fun e!2212750 () Bool)

(declare-fun b!3576890 () Bool)

(declare-fun lt!1227206 () tuple2!37456)

(declare-datatypes ((tuple2!37470 0))(
  ( (tuple2!37471 (_1!21869 List!37657) (_2!21869 List!37655)) )
))
(declare-fun lexList!1502 (LexerInterface!5106 List!37656 List!37655) tuple2!37470)

(assert (=> b!3576890 (= e!2212750 (= (list!13774 (_2!21862 lt!1227206)) (_2!21869 (lexList!1502 thiss!18206 rules!2135 (list!13774 lt!1226736)))))))

(declare-fun b!3576891 () Bool)

(declare-fun e!2212751 () Bool)

(assert (=> b!3576891 (= e!2212751 (= (_2!21862 lt!1227206) lt!1226736))))

(declare-fun b!3576892 () Bool)

(declare-fun e!2212752 () Bool)

(assert (=> b!3576892 (= e!2212751 e!2212752)))

(declare-fun res!1442918 () Bool)

(assert (=> b!3576892 (= res!1442918 (< (size!28631 (_2!21862 lt!1227206)) (size!28631 lt!1226736)))))

(assert (=> b!3576892 (=> (not res!1442918) (not e!2212752))))

(declare-fun b!3576893 () Bool)

(declare-fun res!1442916 () Bool)

(assert (=> b!3576893 (=> (not res!1442916) (not e!2212750))))

(assert (=> b!3576893 (= res!1442916 (= (list!13777 (_1!21862 lt!1227206)) (_1!21869 (lexList!1502 thiss!18206 rules!2135 (list!13774 lt!1226736)))))))

(declare-fun d!1055024 () Bool)

(assert (=> d!1055024 e!2212750))

(declare-fun res!1442917 () Bool)

(assert (=> d!1055024 (=> (not res!1442917) (not e!2212750))))

(assert (=> d!1055024 (= res!1442917 e!2212751)))

(declare-fun c!620023 () Bool)

(assert (=> d!1055024 (= c!620023 (> (size!28624 (_1!21862 lt!1227206)) 0))))

(declare-fun lexTailRecV2!1110 (LexerInterface!5106 List!37656 BalanceConc!22432 BalanceConc!22432 BalanceConc!22432 BalanceConc!22434) tuple2!37456)

(assert (=> d!1055024 (= lt!1227206 (lexTailRecV2!1110 thiss!18206 rules!2135 lt!1226736 (BalanceConc!22433 Empty!11409) lt!1226736 (BalanceConc!22435 Empty!11410)))))

(assert (=> d!1055024 (= (lex!2432 thiss!18206 rules!2135 lt!1226736) lt!1227206)))

(declare-fun b!3576894 () Bool)

(assert (=> b!3576894 (= e!2212752 (not (isEmpty!22074 (_1!21862 lt!1227206))))))

(assert (= (and d!1055024 c!620023) b!3576892))

(assert (= (and d!1055024 (not c!620023)) b!3576891))

(assert (= (and b!3576892 res!1442918) b!3576894))

(assert (= (and d!1055024 res!1442917) b!3576893))

(assert (= (and b!3576893 res!1442916) b!3576890))

(declare-fun m!4070059 () Bool)

(assert (=> b!3576890 m!4070059))

(declare-fun m!4070061 () Bool)

(assert (=> b!3576890 m!4070061))

(assert (=> b!3576890 m!4070061))

(declare-fun m!4070063 () Bool)

(assert (=> b!3576890 m!4070063))

(declare-fun m!4070065 () Bool)

(assert (=> d!1055024 m!4070065))

(declare-fun m!4070067 () Bool)

(assert (=> d!1055024 m!4070067))

(declare-fun m!4070069 () Bool)

(assert (=> b!3576893 m!4070069))

(assert (=> b!3576893 m!4070061))

(assert (=> b!3576893 m!4070061))

(assert (=> b!3576893 m!4070063))

(declare-fun m!4070071 () Bool)

(assert (=> b!3576894 m!4070071))

(declare-fun m!4070073 () Bool)

(assert (=> b!3576892 m!4070073))

(declare-fun m!4070075 () Bool)

(assert (=> b!3576892 m!4070075))

(assert (=> b!3576137 d!1055024))

(declare-fun d!1055044 () Bool)

(assert (=> d!1055044 (= (isDefined!5943 lt!1226773) (not (isEmpty!22086 lt!1226773)))))

(declare-fun bs!569664 () Bool)

(assert (= bs!569664 d!1055044))

(declare-fun m!4070077 () Bool)

(assert (=> bs!569664 m!4070077))

(assert (=> b!3576137 d!1055044))

(declare-fun d!1055046 () Bool)

(assert (=> d!1055046 (not (contains!7111 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 tokens!494)))) lt!1226731))))

(declare-fun lt!1227211 () Unit!53556)

(declare-fun choose!20817 (LexerInterface!5106 List!37656 List!37656 Rule!10834 Rule!10834 C!20738) Unit!53556)

(assert (=> d!1055046 (= lt!1227211 (choose!20817 thiss!18206 rules!2135 rules!2135 (rule!8221 (h!42953 tokens!494)) (rule!8221 separatorToken!241) lt!1226731))))

(assert (=> d!1055046 (rulesInvariant!4503 thiss!18206 rules!2135)))

(assert (=> d!1055046 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!317 thiss!18206 rules!2135 rules!2135 (rule!8221 (h!42953 tokens!494)) (rule!8221 separatorToken!241) lt!1226731) lt!1227211)))

(declare-fun bs!569669 () Bool)

(assert (= bs!569669 d!1055046))

(assert (=> bs!569669 m!4068763))

(assert (=> bs!569669 m!4068763))

(assert (=> bs!569669 m!4068841))

(declare-fun m!4070105 () Bool)

(assert (=> bs!569669 m!4070105))

(assert (=> bs!569669 m!4068855))

(assert (=> b!3576137 d!1055046))

(declare-fun d!1055062 () Bool)

(assert (=> d!1055062 (= (maxPrefix!2646 thiss!18206 rules!2135 (++!9338 (list!13774 (charsOf!3531 separatorToken!241)) lt!1226756)) (Some!7705 (tuple2!37459 separatorToken!241 lt!1226756)))))

(declare-fun lt!1227234 () Unit!53556)

(declare-fun choose!20818 (LexerInterface!5106 List!37656 Token!10400 Rule!10834 List!37655 Rule!10834) Unit!53556)

(assert (=> d!1055062 (= lt!1227234 (choose!20818 thiss!18206 rules!2135 separatorToken!241 (rule!8221 separatorToken!241) lt!1226756 (rule!8221 (h!42953 (t!289884 tokens!494)))))))

(assert (=> d!1055062 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1055062 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!273 thiss!18206 rules!2135 separatorToken!241 (rule!8221 separatorToken!241) lt!1226756 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1227234)))

(declare-fun bs!569673 () Bool)

(assert (= bs!569673 d!1055062))

(declare-fun m!4070185 () Bool)

(assert (=> bs!569673 m!4070185))

(declare-fun m!4070187 () Bool)

(assert (=> bs!569673 m!4070187))

(assert (=> bs!569673 m!4068659))

(assert (=> bs!569673 m!4068675))

(assert (=> bs!569673 m!4068659))

(assert (=> bs!569673 m!4068747))

(assert (=> bs!569673 m!4068675))

(assert (=> bs!569673 m!4070185))

(declare-fun m!4070189 () Bool)

(assert (=> bs!569673 m!4070189))

(assert (=> b!3576137 d!1055062))

(declare-fun d!1055082 () Bool)

(declare-fun e!2212775 () Bool)

(assert (=> d!1055082 e!2212775))

(declare-fun res!1442927 () Bool)

(assert (=> d!1055082 (=> (not res!1442927) (not e!2212775))))

(assert (=> d!1055082 (= res!1442927 (isDefined!5943 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494)))))))))

(declare-fun lt!1227235 () Unit!53556)

(assert (=> d!1055082 (= lt!1227235 (choose!20815 thiss!18206 rules!2135 lt!1226740 (h!42953 (t!289884 tokens!494))))))

(assert (=> d!1055082 (rulesInvariant!4503 thiss!18206 rules!2135)))

(assert (=> d!1055082 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1160 thiss!18206 rules!2135 lt!1226740 (h!42953 (t!289884 tokens!494))) lt!1227235)))

(declare-fun b!3576927 () Bool)

(declare-fun res!1442928 () Bool)

(assert (=> b!3576927 (=> (not res!1442928) (not e!2212775))))

(assert (=> b!3576927 (= res!1442928 (matchR!4860 (regex!5517 (get!12083 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494))))))) (list!13774 (charsOf!3531 (h!42953 (t!289884 tokens!494))))))))

(declare-fun b!3576928 () Bool)

(assert (=> b!3576928 (= e!2212775 (= (rule!8221 (h!42953 (t!289884 tokens!494))) (get!12083 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494))))))))))

(assert (= (and d!1055082 res!1442927) b!3576927))

(assert (= (and b!3576927 res!1442928) b!3576928))

(assert (=> d!1055082 m!4068819))

(assert (=> d!1055082 m!4068819))

(declare-fun m!4070191 () Bool)

(assert (=> d!1055082 m!4070191))

(declare-fun m!4070193 () Bool)

(assert (=> d!1055082 m!4070193))

(assert (=> d!1055082 m!4068855))

(assert (=> b!3576927 m!4068665))

(declare-fun m!4070195 () Bool)

(assert (=> b!3576927 m!4070195))

(assert (=> b!3576927 m!4068657))

(assert (=> b!3576927 m!4068665))

(assert (=> b!3576927 m!4068819))

(assert (=> b!3576927 m!4068819))

(declare-fun m!4070197 () Bool)

(assert (=> b!3576927 m!4070197))

(assert (=> b!3576927 m!4068657))

(assert (=> b!3576928 m!4068819))

(assert (=> b!3576928 m!4068819))

(assert (=> b!3576928 m!4070197))

(assert (=> b!3576137 d!1055082))

(declare-fun d!1055084 () Bool)

(assert (=> d!1055084 (dynLambda!16143 lambda!123593 (h!42953 (t!289884 tokens!494)))))

(declare-fun lt!1227236 () Unit!53556)

(assert (=> d!1055084 (= lt!1227236 (choose!20806 tokens!494 lambda!123593 (h!42953 (t!289884 tokens!494))))))

(declare-fun e!2212776 () Bool)

(assert (=> d!1055084 e!2212776))

(declare-fun res!1442929 () Bool)

(assert (=> d!1055084 (=> (not res!1442929) (not e!2212776))))

(assert (=> d!1055084 (= res!1442929 (forall!8125 tokens!494 lambda!123593))))

(assert (=> d!1055084 (= (forallContained!1464 tokens!494 lambda!123593 (h!42953 (t!289884 tokens!494))) lt!1227236)))

(declare-fun b!3576929 () Bool)

(assert (=> b!3576929 (= e!2212776 (contains!7113 tokens!494 (h!42953 (t!289884 tokens!494))))))

(assert (= (and d!1055084 res!1442929) b!3576929))

(declare-fun b_lambda!105605 () Bool)

(assert (=> (not b_lambda!105605) (not d!1055084)))

(declare-fun m!4070199 () Bool)

(assert (=> d!1055084 m!4070199))

(declare-fun m!4070201 () Bool)

(assert (=> d!1055084 m!4070201))

(declare-fun m!4070203 () Bool)

(assert (=> d!1055084 m!4070203))

(assert (=> b!3576929 m!4069179))

(assert (=> b!3576137 d!1055084))

(declare-fun d!1055086 () Bool)

(assert (=> d!1055086 (not (contains!7111 (usedCharacters!751 (regex!5517 (rule!8221 separatorToken!241))) lt!1226743))))

(declare-fun lt!1227241 () Unit!53556)

(declare-fun choose!20819 (LexerInterface!5106 List!37656 List!37656 Rule!10834 Rule!10834 C!20738) Unit!53556)

(assert (=> d!1055086 (= lt!1227241 (choose!20819 thiss!18206 rules!2135 rules!2135 (rule!8221 (h!42953 (t!289884 tokens!494))) (rule!8221 separatorToken!241) lt!1226743))))

(assert (=> d!1055086 (rulesInvariant!4503 thiss!18206 rules!2135)))

(assert (=> d!1055086 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!199 thiss!18206 rules!2135 rules!2135 (rule!8221 (h!42953 (t!289884 tokens!494))) (rule!8221 separatorToken!241) lt!1226743) lt!1227241)))

(declare-fun bs!569674 () Bool)

(assert (= bs!569674 d!1055086))

(assert (=> bs!569674 m!4068779))

(assert (=> bs!569674 m!4068779))

(declare-fun m!4070205 () Bool)

(assert (=> bs!569674 m!4070205))

(declare-fun m!4070207 () Bool)

(assert (=> bs!569674 m!4070207))

(assert (=> bs!569674 m!4068855))

(assert (=> b!3576137 d!1055086))

(declare-fun d!1055088 () Bool)

(declare-fun lt!1227242 () Int)

(assert (=> d!1055088 (>= lt!1227242 0)))

(declare-fun e!2212791 () Int)

(assert (=> d!1055088 (= lt!1227242 e!2212791)))

(declare-fun c!620044 () Bool)

(assert (=> d!1055088 (= c!620044 (is-Nil!37531 lt!1226762))))

(assert (=> d!1055088 (= (size!28623 lt!1226762) lt!1227242)))

(declare-fun b!3576958 () Bool)

(assert (=> b!3576958 (= e!2212791 0)))

(declare-fun b!3576959 () Bool)

(assert (=> b!3576959 (= e!2212791 (+ 1 (size!28623 (t!289882 lt!1226762))))))

(assert (= (and d!1055088 c!620044) b!3576958))

(assert (= (and d!1055088 (not c!620044)) b!3576959))

(declare-fun m!4070209 () Bool)

(assert (=> b!3576959 m!4070209))

(assert (=> b!3576137 d!1055088))

(declare-fun d!1055090 () Bool)

(assert (=> d!1055090 (= (maxPrefix!2646 thiss!18206 rules!2135 (++!9338 (list!13774 (charsOf!3531 (h!42953 tokens!494))) lt!1226755)) (Some!7705 (tuple2!37459 (h!42953 tokens!494) lt!1226755)))))

(declare-fun lt!1227243 () Unit!53556)

(assert (=> d!1055090 (= lt!1227243 (choose!20818 thiss!18206 rules!2135 (h!42953 tokens!494) (rule!8221 (h!42953 tokens!494)) lt!1226755 (rule!8221 separatorToken!241)))))

(assert (=> d!1055090 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1055090 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!273 thiss!18206 rules!2135 (h!42953 tokens!494) (rule!8221 (h!42953 tokens!494)) lt!1226755 (rule!8221 separatorToken!241)) lt!1227243)))

(declare-fun bs!569675 () Bool)

(assert (= bs!569675 d!1055090))

(declare-fun m!4070211 () Bool)

(assert (=> bs!569675 m!4070211))

(declare-fun m!4070213 () Bool)

(assert (=> bs!569675 m!4070213))

(assert (=> bs!569675 m!4068739))

(assert (=> bs!569675 m!4068741))

(assert (=> bs!569675 m!4068739))

(assert (=> bs!569675 m!4068747))

(assert (=> bs!569675 m!4068741))

(assert (=> bs!569675 m!4070211))

(declare-fun m!4070215 () Bool)

(assert (=> bs!569675 m!4070215))

(assert (=> b!3576137 d!1055090))

(declare-fun d!1055092 () Bool)

(declare-fun lt!1227244 () Bool)

(assert (=> d!1055092 (= lt!1227244 (set.member lt!1226731 (content!5325 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 tokens!494)))))))))

(declare-fun e!2212792 () Bool)

(assert (=> d!1055092 (= lt!1227244 e!2212792)))

(declare-fun res!1442947 () Bool)

(assert (=> d!1055092 (=> (not res!1442947) (not e!2212792))))

(assert (=> d!1055092 (= res!1442947 (is-Cons!37531 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 tokens!494))))))))

(assert (=> d!1055092 (= (contains!7111 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 tokens!494)))) lt!1226731) lt!1227244)))

(declare-fun b!3576960 () Bool)

(declare-fun e!2212793 () Bool)

(assert (=> b!3576960 (= e!2212792 e!2212793)))

(declare-fun res!1442946 () Bool)

(assert (=> b!3576960 (=> res!1442946 e!2212793)))

(assert (=> b!3576960 (= res!1442946 (= (h!42951 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 tokens!494))))) lt!1226731))))

(declare-fun b!3576961 () Bool)

(assert (=> b!3576961 (= e!2212793 (contains!7111 (t!289882 (usedCharacters!751 (regex!5517 (rule!8221 (h!42953 tokens!494))))) lt!1226731))))

(assert (= (and d!1055092 res!1442947) b!3576960))

(assert (= (and b!3576960 (not res!1442946)) b!3576961))

(assert (=> d!1055092 m!4068763))

(declare-fun m!4070217 () Bool)

(assert (=> d!1055092 m!4070217))

(declare-fun m!4070219 () Bool)

(assert (=> d!1055092 m!4070219))

(declare-fun m!4070221 () Bool)

(assert (=> b!3576961 m!4070221))

(assert (=> b!3576137 d!1055092))

(declare-fun d!1055094 () Bool)

(declare-fun e!2212794 () Bool)

(assert (=> d!1055094 e!2212794))

(declare-fun res!1442948 () Bool)

(assert (=> d!1055094 (=> (not res!1442948) (not e!2212794))))

(assert (=> d!1055094 (= res!1442948 (isDefined!5943 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 separatorToken!241)))))))

(declare-fun lt!1227245 () Unit!53556)

(assert (=> d!1055094 (= lt!1227245 (choose!20815 thiss!18206 rules!2135 lt!1226737 separatorToken!241))))

(assert (=> d!1055094 (rulesInvariant!4503 thiss!18206 rules!2135)))

(assert (=> d!1055094 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1160 thiss!18206 rules!2135 lt!1226737 separatorToken!241) lt!1227245)))

(declare-fun b!3576962 () Bool)

(declare-fun res!1442949 () Bool)

(assert (=> b!3576962 (=> (not res!1442949) (not e!2212794))))

(assert (=> b!3576962 (= res!1442949 (matchR!4860 (regex!5517 (get!12083 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 separatorToken!241))))) (list!13774 (charsOf!3531 separatorToken!241))))))

(declare-fun b!3576963 () Bool)

(assert (=> b!3576963 (= e!2212794 (= (rule!8221 separatorToken!241) (get!12083 (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 separatorToken!241))))))))

(assert (= (and d!1055094 res!1442948) b!3576962))

(assert (= (and b!3576962 res!1442949) b!3576963))

(assert (=> d!1055094 m!4068833))

(assert (=> d!1055094 m!4068833))

(declare-fun m!4070223 () Bool)

(assert (=> d!1055094 m!4070223))

(declare-fun m!4070225 () Bool)

(assert (=> d!1055094 m!4070225))

(assert (=> d!1055094 m!4068855))

(assert (=> b!3576962 m!4068675))

(declare-fun m!4070227 () Bool)

(assert (=> b!3576962 m!4070227))

(assert (=> b!3576962 m!4068659))

(assert (=> b!3576962 m!4068675))

(assert (=> b!3576962 m!4068833))

(assert (=> b!3576962 m!4068833))

(declare-fun m!4070229 () Bool)

(assert (=> b!3576962 m!4070229))

(assert (=> b!3576962 m!4068659))

(assert (=> b!3576963 m!4068833))

(assert (=> b!3576963 m!4068833))

(assert (=> b!3576963 m!4070229))

(assert (=> b!3576137 d!1055094))

(declare-fun bm!259202 () Bool)

(declare-fun call!259210 () List!37655)

(declare-fun call!259209 () List!37655)

(assert (=> bm!259202 (= call!259210 call!259209)))

(declare-fun b!3576979 () Bool)

(declare-fun e!2212805 () List!37655)

(assert (=> b!3576979 (= e!2212805 Nil!37531)))

(declare-fun call!259207 () List!37655)

(declare-fun call!259208 () List!37655)

(declare-fun c!620048 () Bool)

(declare-fun bm!259203 () Bool)

(assert (=> bm!259203 (= call!259207 (++!9338 (ite c!620048 call!259208 call!259210) (ite c!620048 call!259210 call!259208)))))

(declare-fun b!3576980 () Bool)

(declare-fun e!2212804 () List!37655)

(assert (=> b!3576980 (= e!2212804 call!259207)))

(declare-fun b!3576981 () Bool)

(declare-fun e!2212802 () List!37655)

(assert (=> b!3576981 (= e!2212802 call!259209)))

(declare-fun b!3576978 () Bool)

(assert (=> b!3576978 (= e!2212802 e!2212804)))

(assert (=> b!3576978 (= c!620048 (is-Union!10276 (regex!5517 (rule!8221 separatorToken!241))))))

(declare-fun d!1055096 () Bool)

(declare-fun c!620051 () Bool)

(assert (=> d!1055096 (= c!620051 (or (is-EmptyExpr!10276 (regex!5517 (rule!8221 separatorToken!241))) (is-EmptyLang!10276 (regex!5517 (rule!8221 separatorToken!241)))))))

(assert (=> d!1055096 (= (usedCharacters!751 (regex!5517 (rule!8221 separatorToken!241))) e!2212805)))

(declare-fun b!3576982 () Bool)

(declare-fun e!2212803 () List!37655)

(assert (=> b!3576982 (= e!2212803 (Cons!37531 (c!619893 (regex!5517 (rule!8221 separatorToken!241))) Nil!37531))))

(declare-fun b!3576983 () Bool)

(assert (=> b!3576983 (= e!2212804 call!259207)))

(declare-fun b!3576984 () Bool)

(declare-fun c!620050 () Bool)

(assert (=> b!3576984 (= c!620050 (is-Star!10276 (regex!5517 (rule!8221 separatorToken!241))))))

(assert (=> b!3576984 (= e!2212803 e!2212802)))

(declare-fun bm!259204 () Bool)

(assert (=> bm!259204 (= call!259209 (usedCharacters!751 (ite c!620050 (reg!10605 (regex!5517 (rule!8221 separatorToken!241))) (ite c!620048 (regTwo!21065 (regex!5517 (rule!8221 separatorToken!241))) (regOne!21064 (regex!5517 (rule!8221 separatorToken!241)))))))))

(declare-fun bm!259205 () Bool)

(assert (=> bm!259205 (= call!259208 (usedCharacters!751 (ite c!620048 (regOne!21065 (regex!5517 (rule!8221 separatorToken!241))) (regTwo!21064 (regex!5517 (rule!8221 separatorToken!241))))))))

(declare-fun b!3576985 () Bool)

(assert (=> b!3576985 (= e!2212805 e!2212803)))

(declare-fun c!620049 () Bool)

(assert (=> b!3576985 (= c!620049 (is-ElementMatch!10276 (regex!5517 (rule!8221 separatorToken!241))))))

(assert (= (and d!1055096 c!620051) b!3576979))

(assert (= (and d!1055096 (not c!620051)) b!3576985))

(assert (= (and b!3576985 c!620049) b!3576982))

(assert (= (and b!3576985 (not c!620049)) b!3576984))

(assert (= (and b!3576984 c!620050) b!3576981))

(assert (= (and b!3576984 (not c!620050)) b!3576978))

(assert (= (and b!3576978 c!620048) b!3576983))

(assert (= (and b!3576978 (not c!620048)) b!3576980))

(assert (= (or b!3576983 b!3576980) bm!259202))

(assert (= (or b!3576983 b!3576980) bm!259205))

(assert (= (or b!3576983 b!3576980) bm!259203))

(assert (= (or b!3576981 bm!259202) bm!259204))

(declare-fun m!4070247 () Bool)

(assert (=> bm!259203 m!4070247))

(declare-fun m!4070249 () Bool)

(assert (=> bm!259204 m!4070249))

(declare-fun m!4070251 () Bool)

(assert (=> bm!259205 m!4070251))

(assert (=> b!3576137 d!1055096))

(declare-fun d!1055100 () Bool)

(declare-fun lt!1227251 () BalanceConc!22432)

(assert (=> d!1055100 (= (list!13774 lt!1227251) (printListTailRec!741 thiss!18206 (dropList!1258 lt!1226777 0) (list!13774 (BalanceConc!22433 Empty!11409))))))

(declare-fun e!2212807 () BalanceConc!22432)

(assert (=> d!1055100 (= lt!1227251 e!2212807)))

(declare-fun c!620052 () Bool)

(assert (=> d!1055100 (= c!620052 (>= 0 (size!28624 lt!1226777)))))

(declare-fun e!2212808 () Bool)

(assert (=> d!1055100 e!2212808))

(declare-fun res!1442959 () Bool)

(assert (=> d!1055100 (=> (not res!1442959) (not e!2212808))))

(assert (=> d!1055100 (= res!1442959 (>= 0 0))))

(assert (=> d!1055100 (= (printTailRec!1601 thiss!18206 lt!1226777 0 (BalanceConc!22433 Empty!11409)) lt!1227251)))

(declare-fun b!3576987 () Bool)

(assert (=> b!3576987 (= e!2212808 (<= 0 (size!28624 lt!1226777)))))

(declare-fun b!3576988 () Bool)

(assert (=> b!3576988 (= e!2212807 (BalanceConc!22433 Empty!11409))))

(declare-fun b!3576989 () Bool)

(assert (=> b!3576989 (= e!2212807 (printTailRec!1601 thiss!18206 lt!1226777 (+ 0 1) (++!9340 (BalanceConc!22433 Empty!11409) (charsOf!3531 (apply!9036 lt!1226777 0)))))))

(declare-fun lt!1227252 () List!37657)

(assert (=> b!3576989 (= lt!1227252 (list!13777 lt!1226777))))

(declare-fun lt!1227250 () Unit!53556)

(assert (=> b!3576989 (= lt!1227250 (lemmaDropApply!1216 lt!1227252 0))))

(assert (=> b!3576989 (= (head!7452 (drop!2078 lt!1227252 0)) (apply!9040 lt!1227252 0))))

(declare-fun lt!1227253 () Unit!53556)

(assert (=> b!3576989 (= lt!1227253 lt!1227250)))

(declare-fun lt!1227248 () List!37657)

(assert (=> b!3576989 (= lt!1227248 (list!13777 lt!1226777))))

(declare-fun lt!1227254 () Unit!53556)

(assert (=> b!3576989 (= lt!1227254 (lemmaDropTail!1100 lt!1227248 0))))

(assert (=> b!3576989 (= (tail!5539 (drop!2078 lt!1227248 0)) (drop!2078 lt!1227248 (+ 0 1)))))

(declare-fun lt!1227249 () Unit!53556)

(assert (=> b!3576989 (= lt!1227249 lt!1227254)))

(assert (= (and d!1055100 res!1442959) b!3576987))

(assert (= (and d!1055100 c!620052) b!3576988))

(assert (= (and d!1055100 (not c!620052)) b!3576989))

(assert (=> d!1055100 m!4069257))

(declare-fun m!4070253 () Bool)

(assert (=> d!1055100 m!4070253))

(declare-fun m!4070255 () Bool)

(assert (=> d!1055100 m!4070255))

(declare-fun m!4070257 () Bool)

(assert (=> d!1055100 m!4070257))

(assert (=> d!1055100 m!4070253))

(assert (=> d!1055100 m!4069257))

(declare-fun m!4070259 () Bool)

(assert (=> d!1055100 m!4070259))

(assert (=> b!3576987 m!4070257))

(declare-fun m!4070261 () Bool)

(assert (=> b!3576989 m!4070261))

(declare-fun m!4070263 () Bool)

(assert (=> b!3576989 m!4070263))

(declare-fun m!4070265 () Bool)

(assert (=> b!3576989 m!4070265))

(declare-fun m!4070267 () Bool)

(assert (=> b!3576989 m!4070267))

(declare-fun m!4070269 () Bool)

(assert (=> b!3576989 m!4070269))

(declare-fun m!4070271 () Bool)

(assert (=> b!3576989 m!4070271))

(declare-fun m!4070273 () Bool)

(assert (=> b!3576989 m!4070273))

(assert (=> b!3576989 m!4070273))

(declare-fun m!4070277 () Bool)

(assert (=> b!3576989 m!4070277))

(declare-fun m!4070279 () Bool)

(assert (=> b!3576989 m!4070279))

(assert (=> b!3576989 m!4070279))

(declare-fun m!4070285 () Bool)

(assert (=> b!3576989 m!4070285))

(declare-fun m!4070287 () Bool)

(assert (=> b!3576989 m!4070287))

(assert (=> b!3576989 m!4070263))

(assert (=> b!3576989 m!4070267))

(assert (=> b!3576989 m!4070287))

(assert (=> b!3576989 m!4069823))

(declare-fun m!4070291 () Bool)

(assert (=> b!3576989 m!4070291))

(assert (=> b!3576137 d!1055100))

(declare-fun b!3576993 () Bool)

(declare-fun e!2212812 () Bool)

(declare-fun lt!1227255 () tuple2!37456)

(assert (=> b!3576993 (= e!2212812 (= (list!13774 (_2!21862 lt!1227255)) (_2!21869 (lexList!1502 thiss!18206 rules!2135 (list!13774 lt!1226734)))))))

(declare-fun b!3576994 () Bool)

(declare-fun e!2212813 () Bool)

(assert (=> b!3576994 (= e!2212813 (= (_2!21862 lt!1227255) lt!1226734))))

(declare-fun b!3576995 () Bool)

(declare-fun e!2212814 () Bool)

(assert (=> b!3576995 (= e!2212813 e!2212814)))

(declare-fun res!1442962 () Bool)

(assert (=> b!3576995 (= res!1442962 (< (size!28631 (_2!21862 lt!1227255)) (size!28631 lt!1226734)))))

(assert (=> b!3576995 (=> (not res!1442962) (not e!2212814))))

(declare-fun b!3576996 () Bool)

(declare-fun res!1442960 () Bool)

(assert (=> b!3576996 (=> (not res!1442960) (not e!2212812))))

(assert (=> b!3576996 (= res!1442960 (= (list!13777 (_1!21862 lt!1227255)) (_1!21869 (lexList!1502 thiss!18206 rules!2135 (list!13774 lt!1226734)))))))

(declare-fun d!1055106 () Bool)

(assert (=> d!1055106 e!2212812))

(declare-fun res!1442961 () Bool)

(assert (=> d!1055106 (=> (not res!1442961) (not e!2212812))))

(assert (=> d!1055106 (= res!1442961 e!2212813)))

(declare-fun c!620053 () Bool)

(assert (=> d!1055106 (= c!620053 (> (size!28624 (_1!21862 lt!1227255)) 0))))

(assert (=> d!1055106 (= lt!1227255 (lexTailRecV2!1110 thiss!18206 rules!2135 lt!1226734 (BalanceConc!22433 Empty!11409) lt!1226734 (BalanceConc!22435 Empty!11410)))))

(assert (=> d!1055106 (= (lex!2432 thiss!18206 rules!2135 lt!1226734) lt!1227255)))

(declare-fun b!3576997 () Bool)

(assert (=> b!3576997 (= e!2212814 (not (isEmpty!22074 (_1!21862 lt!1227255))))))

(assert (= (and d!1055106 c!620053) b!3576995))

(assert (= (and d!1055106 (not c!620053)) b!3576994))

(assert (= (and b!3576995 res!1442962) b!3576997))

(assert (= (and d!1055106 res!1442961) b!3576996))

(assert (= (and b!3576996 res!1442960) b!3576993))

(declare-fun m!4070295 () Bool)

(assert (=> b!3576993 m!4070295))

(declare-fun m!4070297 () Bool)

(assert (=> b!3576993 m!4070297))

(assert (=> b!3576993 m!4070297))

(declare-fun m!4070299 () Bool)

(assert (=> b!3576993 m!4070299))

(declare-fun m!4070301 () Bool)

(assert (=> d!1055106 m!4070301))

(declare-fun m!4070303 () Bool)

(assert (=> d!1055106 m!4070303))

(declare-fun m!4070305 () Bool)

(assert (=> b!3576996 m!4070305))

(assert (=> b!3576996 m!4070297))

(assert (=> b!3576996 m!4070297))

(assert (=> b!3576996 m!4070299))

(declare-fun m!4070307 () Bool)

(assert (=> b!3576997 m!4070307))

(declare-fun m!4070309 () Bool)

(assert (=> b!3576995 m!4070309))

(declare-fun m!4070311 () Bool)

(assert (=> b!3576995 m!4070311))

(assert (=> b!3576137 d!1055106))

(declare-fun b!3577012 () Bool)

(declare-fun lt!1227257 () Unit!53556)

(declare-fun lt!1227259 () Unit!53556)

(assert (=> b!3577012 (= lt!1227257 lt!1227259)))

(assert (=> b!3577012 (rulesInvariant!4503 thiss!18206 (t!289883 rules!2135))))

(assert (=> b!3577012 (= lt!1227259 (lemmaInvariantOnRulesThenOnTail!486 thiss!18206 (h!42952 rules!2135) (t!289883 rules!2135)))))

(declare-fun e!2212822 () Option!7705)

(assert (=> b!3577012 (= e!2212822 (getRuleFromTag!1160 thiss!18206 (t!289883 rules!2135) (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(declare-fun b!3577013 () Bool)

(assert (=> b!3577013 (= e!2212822 None!7704)))

(declare-fun b!3577014 () Bool)

(declare-fun e!2212824 () Option!7705)

(assert (=> b!3577014 (= e!2212824 (Some!7704 (h!42952 rules!2135)))))

(declare-fun b!3577015 () Bool)

(declare-fun e!2212823 () Bool)

(declare-fun e!2212825 () Bool)

(assert (=> b!3577015 (= e!2212823 e!2212825)))

(declare-fun res!1442972 () Bool)

(assert (=> b!3577015 (=> (not res!1442972) (not e!2212825))))

(declare-fun lt!1227258 () Option!7705)

(assert (=> b!3577015 (= res!1442972 (contains!7116 rules!2135 (get!12083 lt!1227258)))))

(declare-fun b!3577016 () Bool)

(assert (=> b!3577016 (= e!2212824 e!2212822)))

(declare-fun c!620057 () Bool)

(assert (=> b!3577016 (= c!620057 (and (is-Cons!37532 rules!2135) (not (= (tag!6179 (h!42952 rules!2135)) (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494))))))))))

(declare-fun d!1055110 () Bool)

(assert (=> d!1055110 e!2212823))

(declare-fun res!1442971 () Bool)

(assert (=> d!1055110 (=> res!1442971 e!2212823)))

(assert (=> d!1055110 (= res!1442971 (isEmpty!22086 lt!1227258))))

(assert (=> d!1055110 (= lt!1227258 e!2212824)))

(declare-fun c!620058 () Bool)

(assert (=> d!1055110 (= c!620058 (and (is-Cons!37532 rules!2135) (= (tag!6179 (h!42952 rules!2135)) (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494)))))))))

(assert (=> d!1055110 (rulesInvariant!4503 thiss!18206 rules!2135)))

(assert (=> d!1055110 (= (getRuleFromTag!1160 thiss!18206 rules!2135 (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494))))) lt!1227258)))

(declare-fun b!3577017 () Bool)

(assert (=> b!3577017 (= e!2212825 (= (tag!6179 (get!12083 lt!1227258)) (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(assert (= (and d!1055110 c!620058) b!3577014))

(assert (= (and d!1055110 (not c!620058)) b!3577016))

(assert (= (and b!3577016 c!620057) b!3577012))

(assert (= (and b!3577016 (not c!620057)) b!3577013))

(assert (= (and d!1055110 (not res!1442971)) b!3577015))

(assert (= (and b!3577015 res!1442972) b!3577017))

(assert (=> b!3577012 m!4069805))

(assert (=> b!3577012 m!4069807))

(declare-fun m!4070327 () Bool)

(assert (=> b!3577012 m!4070327))

(declare-fun m!4070329 () Bool)

(assert (=> b!3577015 m!4070329))

(assert (=> b!3577015 m!4070329))

(declare-fun m!4070331 () Bool)

(assert (=> b!3577015 m!4070331))

(declare-fun m!4070333 () Bool)

(assert (=> d!1055110 m!4070333))

(assert (=> d!1055110 m!4068855))

(assert (=> b!3577017 m!4070329))

(assert (=> b!3576137 d!1055110))

(declare-fun d!1055116 () Bool)

(assert (=> d!1055116 (= (apply!9037 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) (seqFromList!4087 lt!1226740)) (dynLambda!16144 (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (seqFromList!4087 lt!1226740)))))

(declare-fun b_lambda!105607 () Bool)

(assert (=> (not b_lambda!105607) (not d!1055116)))

(declare-fun tb!204095 () Bool)

(declare-fun t!289946 () Bool)

(assert (=> (and b!3576136 (= (toValue!7789 (transformation!5517 (h!42952 rules!2135))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289946) tb!204095))

(declare-fun result!248758 () Bool)

(assert (=> tb!204095 (= result!248758 (inv!21 (dynLambda!16144 (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (seqFromList!4087 lt!1226740))))))

(declare-fun m!4070335 () Bool)

(assert (=> tb!204095 m!4070335))

(assert (=> d!1055116 t!289946))

(declare-fun b_and!257715 () Bool)

(assert (= b_and!257697 (and (=> t!289946 result!248758) b_and!257715)))

(declare-fun tb!204097 () Bool)

(declare-fun t!289948 () Bool)

(assert (=> (and b!3576131 (= (toValue!7789 (transformation!5517 (rule!8221 separatorToken!241))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289948) tb!204097))

(declare-fun result!248760 () Bool)

(assert (= result!248760 result!248758))

(assert (=> d!1055116 t!289948))

(declare-fun b_and!257717 () Bool)

(assert (= b_and!257699 (and (=> t!289948 result!248760) b_and!257717)))

(declare-fun t!289950 () Bool)

(declare-fun tb!204099 () Bool)

(assert (=> (and b!3576119 (= (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289950) tb!204099))

(declare-fun result!248762 () Bool)

(assert (= result!248762 result!248758))

(assert (=> d!1055116 t!289950))

(declare-fun b_and!257719 () Bool)

(assert (= b_and!257701 (and (=> t!289950 result!248762) b_and!257719)))

(assert (=> d!1055116 m!4068823))

(declare-fun m!4070337 () Bool)

(assert (=> d!1055116 m!4070337))

(assert (=> b!3576137 d!1055116))

(declare-fun d!1055118 () Bool)

(assert (=> d!1055118 (= (maxPrefixOneRule!1813 thiss!18206 (rule!8221 (h!42953 (t!289884 tokens!494))) lt!1226740) (Some!7705 (tuple2!37459 (Token!10401 (apply!9037 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) (seqFromList!4087 lt!1226740)) (rule!8221 (h!42953 (t!289884 tokens!494))) (size!28623 lt!1226740) lt!1226740) Nil!37531)))))

(declare-fun lt!1227260 () Unit!53556)

(assert (=> d!1055118 (= lt!1227260 (choose!20812 thiss!18206 rules!2135 lt!1226740 lt!1226740 Nil!37531 (rule!8221 (h!42953 (t!289884 tokens!494)))))))

(assert (=> d!1055118 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1055118 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!906 thiss!18206 rules!2135 lt!1226740 lt!1226740 Nil!37531 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1227260)))

(declare-fun bs!569680 () Bool)

(assert (= bs!569680 d!1055118))

(assert (=> bs!569680 m!4068823))

(assert (=> bs!569680 m!4068823))

(assert (=> bs!569680 m!4068825))

(declare-fun m!4070339 () Bool)

(assert (=> bs!569680 m!4070339))

(assert (=> bs!569680 m!4068747))

(assert (=> bs!569680 m!4068835))

(assert (=> bs!569680 m!4068837))

(assert (=> b!3576137 d!1055118))

(declare-fun d!1055120 () Bool)

(declare-fun lt!1227264 () Bool)

(declare-fun isEmpty!22087 (List!37657) Bool)

(assert (=> d!1055120 (= lt!1227264 (isEmpty!22087 (list!13777 (_1!21862 (lex!2432 thiss!18206 rules!2135 lt!1226765)))))))

(declare-fun isEmpty!22088 (Conc!11410) Bool)

(assert (=> d!1055120 (= lt!1227264 (isEmpty!22088 (c!619894 (_1!21862 (lex!2432 thiss!18206 rules!2135 lt!1226765)))))))

(assert (=> d!1055120 (= (isEmpty!22074 (_1!21862 (lex!2432 thiss!18206 rules!2135 lt!1226765))) lt!1227264)))

(declare-fun bs!569681 () Bool)

(assert (= bs!569681 d!1055120))

(declare-fun m!4070359 () Bool)

(assert (=> bs!569681 m!4070359))

(assert (=> bs!569681 m!4070359))

(declare-fun m!4070361 () Bool)

(assert (=> bs!569681 m!4070361))

(declare-fun m!4070363 () Bool)

(assert (=> bs!569681 m!4070363))

(assert (=> b!3576117 d!1055120))

(declare-fun e!2212840 () Bool)

(declare-fun b!3577038 () Bool)

(declare-fun lt!1227265 () tuple2!37456)

(assert (=> b!3577038 (= e!2212840 (= (list!13774 (_2!21862 lt!1227265)) (_2!21869 (lexList!1502 thiss!18206 rules!2135 (list!13774 lt!1226765)))))))

(declare-fun b!3577039 () Bool)

(declare-fun e!2212841 () Bool)

(assert (=> b!3577039 (= e!2212841 (= (_2!21862 lt!1227265) lt!1226765))))

(declare-fun b!3577040 () Bool)

(declare-fun e!2212842 () Bool)

(assert (=> b!3577040 (= e!2212841 e!2212842)))

(declare-fun res!1442989 () Bool)

(assert (=> b!3577040 (= res!1442989 (< (size!28631 (_2!21862 lt!1227265)) (size!28631 lt!1226765)))))

(assert (=> b!3577040 (=> (not res!1442989) (not e!2212842))))

(declare-fun b!3577041 () Bool)

(declare-fun res!1442987 () Bool)

(assert (=> b!3577041 (=> (not res!1442987) (not e!2212840))))

(assert (=> b!3577041 (= res!1442987 (= (list!13777 (_1!21862 lt!1227265)) (_1!21869 (lexList!1502 thiss!18206 rules!2135 (list!13774 lt!1226765)))))))

(declare-fun d!1055128 () Bool)

(assert (=> d!1055128 e!2212840))

(declare-fun res!1442988 () Bool)

(assert (=> d!1055128 (=> (not res!1442988) (not e!2212840))))

(assert (=> d!1055128 (= res!1442988 e!2212841)))

(declare-fun c!620062 () Bool)

(assert (=> d!1055128 (= c!620062 (> (size!28624 (_1!21862 lt!1227265)) 0))))

(assert (=> d!1055128 (= lt!1227265 (lexTailRecV2!1110 thiss!18206 rules!2135 lt!1226765 (BalanceConc!22433 Empty!11409) lt!1226765 (BalanceConc!22435 Empty!11410)))))

(assert (=> d!1055128 (= (lex!2432 thiss!18206 rules!2135 lt!1226765) lt!1227265)))

(declare-fun b!3577042 () Bool)

(assert (=> b!3577042 (= e!2212842 (not (isEmpty!22074 (_1!21862 lt!1227265))))))

(assert (= (and d!1055128 c!620062) b!3577040))

(assert (= (and d!1055128 (not c!620062)) b!3577039))

(assert (= (and b!3577040 res!1442989) b!3577042))

(assert (= (and d!1055128 res!1442988) b!3577041))

(assert (= (and b!3577041 res!1442987) b!3577038))

(declare-fun m!4070365 () Bool)

(assert (=> b!3577038 m!4070365))

(declare-fun m!4070367 () Bool)

(assert (=> b!3577038 m!4070367))

(assert (=> b!3577038 m!4070367))

(declare-fun m!4070369 () Bool)

(assert (=> b!3577038 m!4070369))

(declare-fun m!4070371 () Bool)

(assert (=> d!1055128 m!4070371))

(declare-fun m!4070373 () Bool)

(assert (=> d!1055128 m!4070373))

(declare-fun m!4070375 () Bool)

(assert (=> b!3577041 m!4070375))

(assert (=> b!3577041 m!4070367))

(assert (=> b!3577041 m!4070367))

(assert (=> b!3577041 m!4070369))

(declare-fun m!4070377 () Bool)

(assert (=> b!3577042 m!4070377))

(declare-fun m!4070379 () Bool)

(assert (=> b!3577040 m!4070379))

(declare-fun m!4070381 () Bool)

(assert (=> b!3577040 m!4070381))

(assert (=> b!3576117 d!1055128))

(declare-fun d!1055130 () Bool)

(assert (=> d!1055130 (= (seqFromList!4087 lt!1226762) (fromListB!1891 lt!1226762))))

(declare-fun bs!569682 () Bool)

(assert (= bs!569682 d!1055130))

(declare-fun m!4070383 () Bool)

(assert (=> bs!569682 m!4070383))

(assert (=> b!3576117 d!1055130))

(declare-fun d!1055132 () Bool)

(assert (=> d!1055132 (not (matchR!4860 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1226740))))

(declare-fun lt!1227271 () Unit!53556)

(declare-fun choose!20820 (Regex!10276 List!37655 C!20738) Unit!53556)

(assert (=> d!1055132 (= lt!1227271 (choose!20820 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1226740 lt!1226743))))

(assert (=> d!1055132 (validRegex!4697 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))))

(assert (=> d!1055132 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!575 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1226740 lt!1226743) lt!1227271)))

(declare-fun bs!569683 () Bool)

(assert (= bs!569683 d!1055132))

(assert (=> bs!569683 m!4068725))

(declare-fun m!4070395 () Bool)

(assert (=> bs!569683 m!4070395))

(declare-fun m!4070401 () Bool)

(assert (=> bs!569683 m!4070401))

(assert (=> b!3576118 d!1055132))

(declare-fun b!3577055 () Bool)

(declare-fun res!1442998 () Bool)

(declare-fun e!2212855 () Bool)

(assert (=> b!3577055 (=> res!1442998 e!2212855)))

(declare-fun e!2212852 () Bool)

(assert (=> b!3577055 (= res!1442998 e!2212852)))

(declare-fun res!1442999 () Bool)

(assert (=> b!3577055 (=> (not res!1442999) (not e!2212852))))

(declare-fun lt!1227272 () Bool)

(assert (=> b!3577055 (= res!1442999 lt!1227272)))

(declare-fun b!3577056 () Bool)

(declare-fun res!1443001 () Bool)

(declare-fun e!2212854 () Bool)

(assert (=> b!3577056 (=> res!1443001 e!2212854)))

(assert (=> b!3577056 (= res!1443001 (not (isEmpty!22080 (tail!5538 lt!1226740))))))

(declare-fun b!3577057 () Bool)

(declare-fun res!1443000 () Bool)

(assert (=> b!3577057 (=> res!1443000 e!2212855)))

(assert (=> b!3577057 (= res!1443000 (not (is-ElementMatch!10276 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))))))

(declare-fun e!2212849 () Bool)

(assert (=> b!3577057 (= e!2212849 e!2212855)))

(declare-fun b!3577058 () Bool)

(declare-fun e!2212853 () Bool)

(assert (=> b!3577058 (= e!2212853 (matchR!4860 (derivativeStep!3094 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) (head!7450 lt!1226740)) (tail!5538 lt!1226740)))))

(declare-fun b!3577059 () Bool)

(declare-fun e!2212851 () Bool)

(assert (=> b!3577059 (= e!2212855 e!2212851)))

(declare-fun res!1442996 () Bool)

(assert (=> b!3577059 (=> (not res!1442996) (not e!2212851))))

(assert (=> b!3577059 (= res!1442996 (not lt!1227272))))

(declare-fun b!3577060 () Bool)

(declare-fun res!1443003 () Bool)

(assert (=> b!3577060 (=> (not res!1443003) (not e!2212852))))

(declare-fun call!259213 () Bool)

(assert (=> b!3577060 (= res!1443003 (not call!259213))))

(declare-fun b!3577061 () Bool)

(assert (=> b!3577061 (= e!2212854 (not (= (head!7450 lt!1226740) (c!619893 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))))

(declare-fun d!1055136 () Bool)

(declare-fun e!2212850 () Bool)

(assert (=> d!1055136 e!2212850))

(declare-fun c!620068 () Bool)

(assert (=> d!1055136 (= c!620068 (is-EmptyExpr!10276 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(assert (=> d!1055136 (= lt!1227272 e!2212853)))

(declare-fun c!620069 () Bool)

(assert (=> d!1055136 (= c!620069 (isEmpty!22080 lt!1226740))))

(assert (=> d!1055136 (validRegex!4697 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))))

(assert (=> d!1055136 (= (matchR!4860 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))) lt!1226740) lt!1227272)))

(declare-fun b!3577062 () Bool)

(assert (=> b!3577062 (= e!2212850 e!2212849)))

(declare-fun c!620067 () Bool)

(assert (=> b!3577062 (= c!620067 (is-EmptyLang!10276 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(declare-fun b!3577063 () Bool)

(declare-fun res!1443002 () Bool)

(assert (=> b!3577063 (=> (not res!1443002) (not e!2212852))))

(assert (=> b!3577063 (= res!1443002 (isEmpty!22080 (tail!5538 lt!1226740)))))

(declare-fun b!3577064 () Bool)

(assert (=> b!3577064 (= e!2212851 e!2212854)))

(declare-fun res!1442997 () Bool)

(assert (=> b!3577064 (=> res!1442997 e!2212854)))

(assert (=> b!3577064 (= res!1442997 call!259213)))

(declare-fun b!3577065 () Bool)

(assert (=> b!3577065 (= e!2212852 (= (head!7450 lt!1226740) (c!619893 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))))))

(declare-fun b!3577066 () Bool)

(assert (=> b!3577066 (= e!2212853 (nullable!3541 (regex!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(declare-fun b!3577067 () Bool)

(assert (=> b!3577067 (= e!2212849 (not lt!1227272))))

(declare-fun b!3577068 () Bool)

(assert (=> b!3577068 (= e!2212850 (= lt!1227272 call!259213))))

(declare-fun bm!259208 () Bool)

(assert (=> bm!259208 (= call!259213 (isEmpty!22080 lt!1226740))))

(assert (= (and d!1055136 c!620069) b!3577066))

(assert (= (and d!1055136 (not c!620069)) b!3577058))

(assert (= (and d!1055136 c!620068) b!3577068))

(assert (= (and d!1055136 (not c!620068)) b!3577062))

(assert (= (and b!3577062 c!620067) b!3577067))

(assert (= (and b!3577062 (not c!620067)) b!3577057))

(assert (= (and b!3577057 (not res!1443000)) b!3577055))

(assert (= (and b!3577055 res!1442999) b!3577060))

(assert (= (and b!3577060 res!1443003) b!3577063))

(assert (= (and b!3577063 res!1443002) b!3577065))

(assert (= (and b!3577055 (not res!1442998)) b!3577059))

(assert (= (and b!3577059 res!1442996) b!3577064))

(assert (= (and b!3577064 (not res!1442997)) b!3577056))

(assert (= (and b!3577056 (not res!1443001)) b!3577061))

(assert (= (or b!3577068 b!3577060 b!3577064) bm!259208))

(assert (=> b!3577065 m!4068805))

(assert (=> b!3577056 m!4069347))

(assert (=> b!3577056 m!4069347))

(assert (=> b!3577056 m!4069349))

(assert (=> bm!259208 m!4069351))

(assert (=> d!1055136 m!4069351))

(assert (=> d!1055136 m!4070401))

(assert (=> b!3577063 m!4069347))

(assert (=> b!3577063 m!4069347))

(assert (=> b!3577063 m!4069349))

(assert (=> b!3577061 m!4068805))

(declare-fun m!4070403 () Bool)

(assert (=> b!3577066 m!4070403))

(assert (=> b!3577058 m!4068805))

(assert (=> b!3577058 m!4068805))

(declare-fun m!4070405 () Bool)

(assert (=> b!3577058 m!4070405))

(assert (=> b!3577058 m!4069347))

(assert (=> b!3577058 m!4070405))

(assert (=> b!3577058 m!4069347))

(declare-fun m!4070407 () Bool)

(assert (=> b!3577058 m!4070407))

(assert (=> b!3576118 d!1055136))

(declare-fun d!1055138 () Bool)

(assert (=> d!1055138 (not (matchR!4860 (regex!5517 (rule!8221 separatorToken!241)) lt!1226737))))

(declare-fun lt!1227273 () Unit!53556)

(assert (=> d!1055138 (= lt!1227273 (choose!20820 (regex!5517 (rule!8221 separatorToken!241)) lt!1226737 lt!1226731))))

(assert (=> d!1055138 (validRegex!4697 (regex!5517 (rule!8221 separatorToken!241)))))

(assert (=> d!1055138 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!575 (regex!5517 (rule!8221 separatorToken!241)) lt!1226737 lt!1226731) lt!1227273)))

(declare-fun bs!569684 () Bool)

(assert (= bs!569684 d!1055138))

(assert (=> bs!569684 m!4068737))

(declare-fun m!4070409 () Bool)

(assert (=> bs!569684 m!4070409))

(declare-fun m!4070411 () Bool)

(assert (=> bs!569684 m!4070411))

(assert (=> b!3576139 d!1055138))

(declare-fun b!3577073 () Bool)

(declare-fun res!1443006 () Bool)

(declare-fun e!2212864 () Bool)

(assert (=> b!3577073 (=> res!1443006 e!2212864)))

(declare-fun e!2212861 () Bool)

(assert (=> b!3577073 (= res!1443006 e!2212861)))

(declare-fun res!1443007 () Bool)

(assert (=> b!3577073 (=> (not res!1443007) (not e!2212861))))

(declare-fun lt!1227274 () Bool)

(assert (=> b!3577073 (= res!1443007 lt!1227274)))

(declare-fun b!3577074 () Bool)

(declare-fun res!1443009 () Bool)

(declare-fun e!2212863 () Bool)

(assert (=> b!3577074 (=> res!1443009 e!2212863)))

(assert (=> b!3577074 (= res!1443009 (not (isEmpty!22080 (tail!5538 lt!1226737))))))

(declare-fun b!3577075 () Bool)

(declare-fun res!1443008 () Bool)

(assert (=> b!3577075 (=> res!1443008 e!2212864)))

(assert (=> b!3577075 (= res!1443008 (not (is-ElementMatch!10276 (regex!5517 (rule!8221 separatorToken!241)))))))

(declare-fun e!2212858 () Bool)

(assert (=> b!3577075 (= e!2212858 e!2212864)))

(declare-fun b!3577076 () Bool)

(declare-fun e!2212862 () Bool)

(assert (=> b!3577076 (= e!2212862 (matchR!4860 (derivativeStep!3094 (regex!5517 (rule!8221 separatorToken!241)) (head!7450 lt!1226737)) (tail!5538 lt!1226737)))))

(declare-fun b!3577077 () Bool)

(declare-fun e!2212860 () Bool)

(assert (=> b!3577077 (= e!2212864 e!2212860)))

(declare-fun res!1443004 () Bool)

(assert (=> b!3577077 (=> (not res!1443004) (not e!2212860))))

(assert (=> b!3577077 (= res!1443004 (not lt!1227274))))

(declare-fun b!3577078 () Bool)

(declare-fun res!1443011 () Bool)

(assert (=> b!3577078 (=> (not res!1443011) (not e!2212861))))

(declare-fun call!259214 () Bool)

(assert (=> b!3577078 (= res!1443011 (not call!259214))))

(declare-fun b!3577079 () Bool)

(assert (=> b!3577079 (= e!2212863 (not (= (head!7450 lt!1226737) (c!619893 (regex!5517 (rule!8221 separatorToken!241))))))))

(declare-fun d!1055140 () Bool)

(declare-fun e!2212859 () Bool)

(assert (=> d!1055140 e!2212859))

(declare-fun c!620073 () Bool)

(assert (=> d!1055140 (= c!620073 (is-EmptyExpr!10276 (regex!5517 (rule!8221 separatorToken!241))))))

(assert (=> d!1055140 (= lt!1227274 e!2212862)))

(declare-fun c!620074 () Bool)

(assert (=> d!1055140 (= c!620074 (isEmpty!22080 lt!1226737))))

(assert (=> d!1055140 (validRegex!4697 (regex!5517 (rule!8221 separatorToken!241)))))

(assert (=> d!1055140 (= (matchR!4860 (regex!5517 (rule!8221 separatorToken!241)) lt!1226737) lt!1227274)))

(declare-fun b!3577080 () Bool)

(assert (=> b!3577080 (= e!2212859 e!2212858)))

(declare-fun c!620072 () Bool)

(assert (=> b!3577080 (= c!620072 (is-EmptyLang!10276 (regex!5517 (rule!8221 separatorToken!241))))))

(declare-fun b!3577081 () Bool)

(declare-fun res!1443010 () Bool)

(assert (=> b!3577081 (=> (not res!1443010) (not e!2212861))))

(assert (=> b!3577081 (= res!1443010 (isEmpty!22080 (tail!5538 lt!1226737)))))

(declare-fun b!3577082 () Bool)

(assert (=> b!3577082 (= e!2212860 e!2212863)))

(declare-fun res!1443005 () Bool)

(assert (=> b!3577082 (=> res!1443005 e!2212863)))

(assert (=> b!3577082 (= res!1443005 call!259214)))

(declare-fun b!3577083 () Bool)

(assert (=> b!3577083 (= e!2212861 (= (head!7450 lt!1226737) (c!619893 (regex!5517 (rule!8221 separatorToken!241)))))))

(declare-fun b!3577084 () Bool)

(assert (=> b!3577084 (= e!2212862 (nullable!3541 (regex!5517 (rule!8221 separatorToken!241))))))

(declare-fun b!3577085 () Bool)

(assert (=> b!3577085 (= e!2212858 (not lt!1227274))))

(declare-fun b!3577086 () Bool)

(assert (=> b!3577086 (= e!2212859 (= lt!1227274 call!259214))))

(declare-fun bm!259209 () Bool)

(assert (=> bm!259209 (= call!259214 (isEmpty!22080 lt!1226737))))

(assert (= (and d!1055140 c!620074) b!3577084))

(assert (= (and d!1055140 (not c!620074)) b!3577076))

(assert (= (and d!1055140 c!620073) b!3577086))

(assert (= (and d!1055140 (not c!620073)) b!3577080))

(assert (= (and b!3577080 c!620072) b!3577085))

(assert (= (and b!3577080 (not c!620072)) b!3577075))

(assert (= (and b!3577075 (not res!1443008)) b!3577073))

(assert (= (and b!3577073 res!1443007) b!3577078))

(assert (= (and b!3577078 res!1443011) b!3577081))

(assert (= (and b!3577081 res!1443010) b!3577083))

(assert (= (and b!3577073 (not res!1443006)) b!3577077))

(assert (= (and b!3577077 res!1443004) b!3577082))

(assert (= (and b!3577082 (not res!1443005)) b!3577074))

(assert (= (and b!3577074 (not res!1443009)) b!3577079))

(assert (= (or b!3577086 b!3577078 b!3577082) bm!259209))

(assert (=> b!3577083 m!4068809))

(assert (=> b!3577074 m!4069445))

(assert (=> b!3577074 m!4069445))

(assert (=> b!3577074 m!4069447))

(assert (=> bm!259209 m!4069449))

(assert (=> d!1055140 m!4069449))

(assert (=> d!1055140 m!4070411))

(assert (=> b!3577081 m!4069445))

(assert (=> b!3577081 m!4069445))

(assert (=> b!3577081 m!4069447))

(assert (=> b!3577079 m!4068809))

(declare-fun m!4070413 () Bool)

(assert (=> b!3577084 m!4070413))

(assert (=> b!3577076 m!4068809))

(assert (=> b!3577076 m!4068809))

(declare-fun m!4070415 () Bool)

(assert (=> b!3577076 m!4070415))

(assert (=> b!3577076 m!4069445))

(assert (=> b!3577076 m!4070415))

(assert (=> b!3577076 m!4069445))

(declare-fun m!4070417 () Bool)

(assert (=> b!3577076 m!4070417))

(assert (=> b!3576139 d!1055140))

(declare-fun d!1055142 () Bool)

(declare-fun lt!1227275 () Bool)

(assert (=> d!1055142 (= lt!1227275 (isEmpty!22080 (list!13774 (_2!21862 lt!1226776))))))

(assert (=> d!1055142 (= lt!1227275 (isEmpty!22081 (c!619892 (_2!21862 lt!1226776))))))

(assert (=> d!1055142 (= (isEmpty!22075 (_2!21862 lt!1226776)) lt!1227275)))

(declare-fun bs!569685 () Bool)

(assert (= bs!569685 d!1055142))

(declare-fun m!4070419 () Bool)

(assert (=> bs!569685 m!4070419))

(assert (=> bs!569685 m!4070419))

(declare-fun m!4070421 () Bool)

(assert (=> bs!569685 m!4070421))

(declare-fun m!4070423 () Bool)

(assert (=> bs!569685 m!4070423))

(assert (=> b!3576140 d!1055142))

(declare-fun d!1055144 () Bool)

(declare-fun lt!1227276 () Bool)

(declare-fun e!2212867 () Bool)

(assert (=> d!1055144 (= lt!1227276 e!2212867)))

(declare-fun res!1443013 () Bool)

(assert (=> d!1055144 (=> (not res!1443013) (not e!2212867))))

(assert (=> d!1055144 (= res!1443013 (= (list!13777 (_1!21862 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 (h!42953 tokens!494)))))) (list!13777 (singletonSeq!2613 (h!42953 tokens!494)))))))

(declare-fun e!2212866 () Bool)

(assert (=> d!1055144 (= lt!1227276 e!2212866)))

(declare-fun res!1443012 () Bool)

(assert (=> d!1055144 (=> (not res!1443012) (not e!2212866))))

(declare-fun lt!1227277 () tuple2!37456)

(assert (=> d!1055144 (= res!1443012 (= (size!28624 (_1!21862 lt!1227277)) 1))))

(assert (=> d!1055144 (= lt!1227277 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 (h!42953 tokens!494)))))))

(assert (=> d!1055144 (not (isEmpty!22076 rules!2135))))

(assert (=> d!1055144 (= (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 (h!42953 tokens!494)) lt!1227276)))

(declare-fun b!3577089 () Bool)

(declare-fun res!1443014 () Bool)

(assert (=> b!3577089 (=> (not res!1443014) (not e!2212866))))

(assert (=> b!3577089 (= res!1443014 (= (apply!9036 (_1!21862 lt!1227277) 0) (h!42953 tokens!494)))))

(declare-fun b!3577090 () Bool)

(assert (=> b!3577090 (= e!2212866 (isEmpty!22075 (_2!21862 lt!1227277)))))

(declare-fun b!3577091 () Bool)

(assert (=> b!3577091 (= e!2212867 (isEmpty!22075 (_2!21862 (lex!2432 thiss!18206 rules!2135 (print!2171 thiss!18206 (singletonSeq!2613 (h!42953 tokens!494)))))))))

(assert (= (and d!1055144 res!1443012) b!3577089))

(assert (= (and b!3577089 res!1443014) b!3577090))

(assert (= (and d!1055144 res!1443013) b!3577091))

(declare-fun m!4070429 () Bool)

(assert (=> d!1055144 m!4070429))

(declare-fun m!4070431 () Bool)

(assert (=> d!1055144 m!4070431))

(declare-fun m!4070433 () Bool)

(assert (=> d!1055144 m!4070433))

(assert (=> d!1055144 m!4068649))

(assert (=> d!1055144 m!4070431))

(assert (=> d!1055144 m!4068747))

(declare-fun m!4070435 () Bool)

(assert (=> d!1055144 m!4070435))

(assert (=> d!1055144 m!4068649))

(declare-fun m!4070437 () Bool)

(assert (=> d!1055144 m!4070437))

(assert (=> d!1055144 m!4068649))

(declare-fun m!4070439 () Bool)

(assert (=> b!3577089 m!4070439))

(declare-fun m!4070441 () Bool)

(assert (=> b!3577090 m!4070441))

(assert (=> b!3577091 m!4068649))

(assert (=> b!3577091 m!4068649))

(assert (=> b!3577091 m!4070431))

(assert (=> b!3577091 m!4070431))

(assert (=> b!3577091 m!4070433))

(declare-fun m!4070451 () Bool)

(assert (=> b!3577091 m!4070451))

(assert (=> b!3576141 d!1055144))

(declare-fun d!1055148 () Bool)

(declare-fun e!2212871 () Bool)

(assert (=> d!1055148 e!2212871))

(declare-fun res!1443018 () Bool)

(assert (=> d!1055148 (=> (not res!1443018) (not e!2212871))))

(declare-fun lt!1227279 () List!37655)

(assert (=> d!1055148 (= res!1443018 (= (content!5325 lt!1227279) (set.union (content!5325 (++!9338 lt!1226762 lt!1226737)) (content!5325 lt!1226756))))))

(declare-fun e!2212870 () List!37655)

(assert (=> d!1055148 (= lt!1227279 e!2212870)))

(declare-fun c!620077 () Bool)

(assert (=> d!1055148 (= c!620077 (is-Nil!37531 (++!9338 lt!1226762 lt!1226737)))))

(assert (=> d!1055148 (= (++!9338 (++!9338 lt!1226762 lt!1226737) lt!1226756) lt!1227279)))

(declare-fun b!3577097 () Bool)

(assert (=> b!3577097 (= e!2212870 (Cons!37531 (h!42951 (++!9338 lt!1226762 lt!1226737)) (++!9338 (t!289882 (++!9338 lt!1226762 lt!1226737)) lt!1226756)))))

(declare-fun b!3577096 () Bool)

(assert (=> b!3577096 (= e!2212870 lt!1226756)))

(declare-fun b!3577098 () Bool)

(declare-fun res!1443017 () Bool)

(assert (=> b!3577098 (=> (not res!1443017) (not e!2212871))))

(assert (=> b!3577098 (= res!1443017 (= (size!28623 lt!1227279) (+ (size!28623 (++!9338 lt!1226762 lt!1226737)) (size!28623 lt!1226756))))))

(declare-fun b!3577099 () Bool)

(assert (=> b!3577099 (= e!2212871 (or (not (= lt!1226756 Nil!37531)) (= lt!1227279 (++!9338 lt!1226762 lt!1226737))))))

(assert (= (and d!1055148 c!620077) b!3577096))

(assert (= (and d!1055148 (not c!620077)) b!3577097))

(assert (= (and d!1055148 res!1443018) b!3577098))

(assert (= (and b!3577098 res!1443017) b!3577099))

(declare-fun m!4070453 () Bool)

(assert (=> d!1055148 m!4070453))

(assert (=> d!1055148 m!4068727))

(declare-fun m!4070455 () Bool)

(assert (=> d!1055148 m!4070455))

(assert (=> d!1055148 m!4069369))

(declare-fun m!4070457 () Bool)

(assert (=> b!3577097 m!4070457))

(declare-fun m!4070459 () Bool)

(assert (=> b!3577098 m!4070459))

(assert (=> b!3577098 m!4068727))

(declare-fun m!4070461 () Bool)

(assert (=> b!3577098 m!4070461))

(assert (=> b!3577098 m!4069377))

(assert (=> b!3576142 d!1055148))

(declare-fun d!1055152 () Bool)

(declare-fun e!2212873 () Bool)

(assert (=> d!1055152 e!2212873))

(declare-fun res!1443020 () Bool)

(assert (=> d!1055152 (=> (not res!1443020) (not e!2212873))))

(declare-fun lt!1227280 () List!37655)

(assert (=> d!1055152 (= res!1443020 (= (content!5325 lt!1227280) (set.union (content!5325 lt!1226762) (content!5325 lt!1226737))))))

(declare-fun e!2212872 () List!37655)

(assert (=> d!1055152 (= lt!1227280 e!2212872)))

(declare-fun c!620078 () Bool)

(assert (=> d!1055152 (= c!620078 (is-Nil!37531 lt!1226762))))

(assert (=> d!1055152 (= (++!9338 lt!1226762 lt!1226737) lt!1227280)))

(declare-fun b!3577101 () Bool)

(assert (=> b!3577101 (= e!2212872 (Cons!37531 (h!42951 lt!1226762) (++!9338 (t!289882 lt!1226762) lt!1226737)))))

(declare-fun b!3577100 () Bool)

(assert (=> b!3577100 (= e!2212872 lt!1226737)))

(declare-fun b!3577102 () Bool)

(declare-fun res!1443019 () Bool)

(assert (=> b!3577102 (=> (not res!1443019) (not e!2212873))))

(assert (=> b!3577102 (= res!1443019 (= (size!28623 lt!1227280) (+ (size!28623 lt!1226762) (size!28623 lt!1226737))))))

(declare-fun b!3577103 () Bool)

(assert (=> b!3577103 (= e!2212873 (or (not (= lt!1226737 Nil!37531)) (= lt!1227280 lt!1226762)))))

(assert (= (and d!1055152 c!620078) b!3577100))

(assert (= (and d!1055152 (not c!620078)) b!3577101))

(assert (= (and d!1055152 res!1443020) b!3577102))

(assert (= (and b!3577102 res!1443019) b!3577103))

(declare-fun m!4070463 () Bool)

(assert (=> d!1055152 m!4070463))

(assert (=> d!1055152 m!4069093))

(assert (=> d!1055152 m!4069367))

(declare-fun m!4070465 () Bool)

(assert (=> b!3577101 m!4070465))

(declare-fun m!4070467 () Bool)

(assert (=> b!3577102 m!4070467))

(assert (=> b!3577102 m!4068817))

(assert (=> b!3577102 m!4069375))

(assert (=> b!3576142 d!1055152))

(declare-fun b!3577121 () Bool)

(declare-fun e!2212878 () Bool)

(declare-fun tp!1094478 () Bool)

(declare-fun tp!1094474 () Bool)

(assert (=> b!3577121 (= e!2212878 (and tp!1094478 tp!1094474))))

(assert (=> b!3576122 (= tp!1094412 e!2212878)))

(declare-fun b!3577120 () Bool)

(declare-fun tp!1094477 () Bool)

(assert (=> b!3577120 (= e!2212878 tp!1094477)))

(declare-fun b!3577118 () Bool)

(declare-fun tp_is_empty!17663 () Bool)

(assert (=> b!3577118 (= e!2212878 tp_is_empty!17663)))

(declare-fun b!3577119 () Bool)

(declare-fun tp!1094475 () Bool)

(declare-fun tp!1094476 () Bool)

(assert (=> b!3577119 (= e!2212878 (and tp!1094475 tp!1094476))))

(assert (= (and b!3576122 (is-ElementMatch!10276 (regex!5517 (h!42952 rules!2135)))) b!3577118))

(assert (= (and b!3576122 (is-Concat!16024 (regex!5517 (h!42952 rules!2135)))) b!3577119))

(assert (= (and b!3576122 (is-Star!10276 (regex!5517 (h!42952 rules!2135)))) b!3577120))

(assert (= (and b!3576122 (is-Union!10276 (regex!5517 (h!42952 rules!2135)))) b!3577121))

(declare-fun b!3577133 () Bool)

(declare-fun b_free!91565 () Bool)

(declare-fun b_next!92269 () Bool)

(assert (=> b!3577133 (= b_free!91565 (not b_next!92269))))

(declare-fun t!289958 () Bool)

(declare-fun tb!204107 () Bool)

(assert (=> (and b!3577133 (= (toValue!7789 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289958) tb!204107))

(declare-fun result!248776 () Bool)

(assert (= result!248776 result!248736))

(assert (=> d!1054926 t!289958))

(declare-fun t!289960 () Bool)

(declare-fun tb!204109 () Bool)

(assert (=> (and b!3577133 (= (toValue!7789 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289960) tb!204109))

(declare-fun result!248778 () Bool)

(assert (= result!248778 result!248758))

(assert (=> d!1055116 t!289960))

(declare-fun tp!1094490 () Bool)

(declare-fun b_and!257727 () Bool)

(assert (=> b!3577133 (= tp!1094490 (and (=> t!289958 result!248776) (=> t!289960 result!248778) b_and!257727))))

(declare-fun b_free!91567 () Bool)

(declare-fun b_next!92271 () Bool)

(assert (=> b!3577133 (= b_free!91567 (not b_next!92271))))

(declare-fun tb!204111 () Bool)

(declare-fun t!289962 () Bool)

(assert (=> (and b!3577133 (= (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289962) tb!204111))

(declare-fun result!248780 () Bool)

(assert (= result!248780 result!248716))

(assert (=> b!3576458 t!289962))

(declare-fun t!289964 () Bool)

(declare-fun tb!204113 () Bool)

(assert (=> (and b!3577133 (= (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241)))) t!289964) tb!204113))

(declare-fun result!248782 () Bool)

(assert (= result!248782 result!248724))

(assert (=> b!3576569 t!289964))

(assert (=> d!1054814 t!289962))

(assert (=> d!1054908 t!289964))

(declare-fun t!289966 () Bool)

(declare-fun tb!204115 () Bool)

(assert (=> (and b!3577133 (= (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289966) tb!204115))

(declare-fun result!248784 () Bool)

(assert (= result!248784 result!248730))

(assert (=> d!1054912 t!289966))

(declare-fun b_and!257729 () Bool)

(declare-fun tp!1094491 () Bool)

(assert (=> b!3577133 (= tp!1094491 (and (=> t!289962 result!248780) (=> t!289966 result!248784) (=> t!289964 result!248782) b_and!257729))))

(declare-fun e!2212888 () Bool)

(assert (=> b!3577133 (= e!2212888 (and tp!1094490 tp!1094491))))

(declare-fun tp!1094489 () Bool)

(declare-fun e!2212890 () Bool)

(declare-fun b!3577132 () Bool)

(assert (=> b!3577132 (= e!2212890 (and tp!1094489 (inv!50809 (tag!6179 (h!42952 (t!289883 rules!2135)))) (inv!50812 (transformation!5517 (h!42952 (t!289883 rules!2135)))) e!2212888))))

(declare-fun b!3577131 () Bool)

(declare-fun e!2212889 () Bool)

(declare-fun tp!1094488 () Bool)

(assert (=> b!3577131 (= e!2212889 (and e!2212890 tp!1094488))))

(assert (=> b!3576156 (= tp!1094409 e!2212889)))

(assert (= b!3577132 b!3577133))

(assert (= b!3577131 b!3577132))

(assert (= (and b!3576156 (is-Cons!37532 (t!289883 rules!2135))) b!3577131))

(declare-fun m!4070493 () Bool)

(assert (=> b!3577132 m!4070493))

(declare-fun m!4070499 () Bool)

(assert (=> b!3577132 m!4070499))

(declare-fun b!3577142 () Bool)

(declare-fun e!2212897 () Bool)

(assert (=> b!3577142 (= e!2212897 true)))

(declare-fun b!3577141 () Bool)

(declare-fun e!2212896 () Bool)

(assert (=> b!3577141 (= e!2212896 e!2212897)))

(declare-fun b!3577140 () Bool)

(declare-fun e!2212895 () Bool)

(assert (=> b!3577140 (= e!2212895 e!2212896)))

(assert (=> b!3576165 e!2212895))

(assert (= b!3577141 b!3577142))

(assert (= b!3577140 b!3577141))

(assert (= (and b!3576165 (is-Cons!37532 (t!289883 rules!2135))) b!3577140))

(assert (=> b!3577142 (< (dynLambda!16136 order!20383 (toValue!7789 (transformation!5517 (h!42952 (t!289883 rules!2135))))) (dynLambda!16137 order!20385 lambda!123593))))

(assert (=> b!3577142 (< (dynLambda!16138 order!20387 (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135))))) (dynLambda!16137 order!20385 lambda!123593))))

(declare-fun b!3577146 () Bool)

(declare-fun e!2212898 () Bool)

(declare-fun tp!1094496 () Bool)

(declare-fun tp!1094492 () Bool)

(assert (=> b!3577146 (= e!2212898 (and tp!1094496 tp!1094492))))

(assert (=> b!3576115 (= tp!1094417 e!2212898)))

(declare-fun b!3577145 () Bool)

(declare-fun tp!1094495 () Bool)

(assert (=> b!3577145 (= e!2212898 tp!1094495)))

(declare-fun b!3577143 () Bool)

(assert (=> b!3577143 (= e!2212898 tp_is_empty!17663)))

(declare-fun b!3577144 () Bool)

(declare-fun tp!1094493 () Bool)

(declare-fun tp!1094494 () Bool)

(assert (=> b!3577144 (= e!2212898 (and tp!1094493 tp!1094494))))

(assert (= (and b!3576115 (is-ElementMatch!10276 (regex!5517 (rule!8221 separatorToken!241)))) b!3577143))

(assert (= (and b!3576115 (is-Concat!16024 (regex!5517 (rule!8221 separatorToken!241)))) b!3577144))

(assert (= (and b!3576115 (is-Star!10276 (regex!5517 (rule!8221 separatorToken!241)))) b!3577145))

(assert (= (and b!3576115 (is-Union!10276 (regex!5517 (rule!8221 separatorToken!241)))) b!3577146))

(declare-fun b!3577153 () Bool)

(declare-fun e!2212902 () Bool)

(declare-fun tp!1094499 () Bool)

(assert (=> b!3577153 (= e!2212902 (and tp_is_empty!17663 tp!1094499))))

(assert (=> b!3576148 (= tp!1094405 e!2212902)))

(assert (= (and b!3576148 (is-Cons!37531 (originalCharacters!6231 (h!42953 tokens!494)))) b!3577153))

(declare-fun b!3577157 () Bool)

(declare-fun e!2212903 () Bool)

(declare-fun tp!1094504 () Bool)

(declare-fun tp!1094500 () Bool)

(assert (=> b!3577157 (= e!2212903 (and tp!1094504 tp!1094500))))

(assert (=> b!3576127 (= tp!1094414 e!2212903)))

(declare-fun b!3577156 () Bool)

(declare-fun tp!1094503 () Bool)

(assert (=> b!3577156 (= e!2212903 tp!1094503)))

(declare-fun b!3577154 () Bool)

(assert (=> b!3577154 (= e!2212903 tp_is_empty!17663)))

(declare-fun b!3577155 () Bool)

(declare-fun tp!1094501 () Bool)

(declare-fun tp!1094502 () Bool)

(assert (=> b!3577155 (= e!2212903 (and tp!1094501 tp!1094502))))

(assert (= (and b!3576127 (is-ElementMatch!10276 (regex!5517 (rule!8221 (h!42953 tokens!494))))) b!3577154))

(assert (= (and b!3576127 (is-Concat!16024 (regex!5517 (rule!8221 (h!42953 tokens!494))))) b!3577155))

(assert (= (and b!3576127 (is-Star!10276 (regex!5517 (rule!8221 (h!42953 tokens!494))))) b!3577156))

(assert (= (and b!3576127 (is-Union!10276 (regex!5517 (rule!8221 (h!42953 tokens!494))))) b!3577157))

(declare-fun b!3577174 () Bool)

(declare-fun b_free!91569 () Bool)

(declare-fun b_next!92273 () Bool)

(assert (=> b!3577174 (= b_free!91569 (not b_next!92273))))

(declare-fun t!289974 () Bool)

(declare-fun tb!204123 () Bool)

(assert (=> (and b!3577174 (= (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289974) tb!204123))

(declare-fun result!248796 () Bool)

(assert (= result!248796 result!248736))

(assert (=> d!1054926 t!289974))

(declare-fun t!289976 () Bool)

(declare-fun tb!204125 () Bool)

(assert (=> (and b!3577174 (= (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289976) tb!204125))

(declare-fun result!248798 () Bool)

(assert (= result!248798 result!248758))

(assert (=> d!1055116 t!289976))

(declare-fun tp!1094518 () Bool)

(declare-fun b_and!257737 () Bool)

(assert (=> b!3577174 (= tp!1094518 (and (=> t!289974 result!248796) (=> t!289976 result!248798) b_and!257737))))

(declare-fun b_free!91571 () Bool)

(declare-fun b_next!92275 () Bool)

(assert (=> b!3577174 (= b_free!91571 (not b_next!92275))))

(declare-fun t!289978 () Bool)

(declare-fun tb!204127 () Bool)

(assert (=> (and b!3577174 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494))))) t!289978) tb!204127))

(declare-fun result!248800 () Bool)

(assert (= result!248800 result!248716))

(assert (=> b!3576458 t!289978))

(declare-fun tb!204129 () Bool)

(declare-fun t!289980 () Bool)

(assert (=> (and b!3577174 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241)))) t!289980) tb!204129))

(declare-fun result!248802 () Bool)

(assert (= result!248802 result!248724))

(assert (=> b!3576569 t!289980))

(assert (=> d!1054814 t!289978))

(assert (=> d!1054908 t!289980))

(declare-fun t!289982 () Bool)

(declare-fun tb!204131 () Bool)

(assert (=> (and b!3577174 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494)))))) t!289982) tb!204131))

(declare-fun result!248804 () Bool)

(assert (= result!248804 result!248730))

(assert (=> d!1054912 t!289982))

(declare-fun b_and!257739 () Bool)

(declare-fun tp!1094520 () Bool)

(assert (=> b!3577174 (= tp!1094520 (and (=> t!289978 result!248800) (=> t!289982 result!248804) (=> t!289980 result!248802) b_and!257739))))

(declare-fun tp!1094517 () Bool)

(declare-fun e!2212923 () Bool)

(declare-fun e!2212922 () Bool)

(declare-fun b!3577171 () Bool)

(assert (=> b!3577171 (= e!2212922 (and (inv!50813 (h!42953 (t!289884 tokens!494))) e!2212923 tp!1094517))))

(declare-fun e!2212919 () Bool)

(assert (=> b!3577174 (= e!2212919 (and tp!1094518 tp!1094520))))

(declare-fun tp!1094519 () Bool)

(declare-fun b!3577173 () Bool)

(declare-fun e!2212924 () Bool)

(assert (=> b!3577173 (= e!2212924 (and tp!1094519 (inv!50809 (tag!6179 (rule!8221 (h!42953 (t!289884 tokens!494))))) (inv!50812 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) e!2212919))))

(assert (=> b!3576149 (= tp!1094411 e!2212922)))

(declare-fun tp!1094516 () Bool)

(declare-fun b!3577172 () Bool)

(assert (=> b!3577172 (= e!2212923 (and (inv!21 (value!177696 (h!42953 (t!289884 tokens!494)))) e!2212924 tp!1094516))))

(assert (= b!3577173 b!3577174))

(assert (= b!3577172 b!3577173))

(assert (= b!3577171 b!3577172))

(assert (= (and b!3576149 (is-Cons!37533 (t!289884 tokens!494))) b!3577171))

(declare-fun m!4070523 () Bool)

(assert (=> b!3577171 m!4070523))

(declare-fun m!4070525 () Bool)

(assert (=> b!3577173 m!4070525))

(declare-fun m!4070527 () Bool)

(assert (=> b!3577173 m!4070527))

(declare-fun m!4070529 () Bool)

(assert (=> b!3577172 m!4070529))

(declare-fun b!3577185 () Bool)

(declare-fun e!2212931 () Bool)

(declare-fun tp!1094521 () Bool)

(assert (=> b!3577185 (= e!2212931 (and tp_is_empty!17663 tp!1094521))))

(assert (=> b!3576150 (= tp!1094406 e!2212931)))

(assert (= (and b!3576150 (is-Cons!37531 (originalCharacters!6231 separatorToken!241))) b!3577185))

(declare-fun b_lambda!105617 () Bool)

(assert (= b_lambda!105585 (or b!3576145 b_lambda!105617)))

(declare-fun bs!569688 () Bool)

(declare-fun d!1055170 () Bool)

(assert (= bs!569688 (and d!1055170 b!3576145)))

(assert (=> bs!569688 (= (dynLambda!16143 lambda!123592 (h!42953 tokens!494)) (not (isSeparator!5517 (rule!8221 (h!42953 tokens!494)))))))

(assert (=> d!1054840 d!1055170))

(declare-fun b_lambda!105619 () Bool)

(assert (= b_lambda!105607 (or (and b!3576136 b_free!91541 (= (toValue!7789 (transformation!5517 (h!42952 rules!2135))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))) (and b!3577133 b_free!91565 (= (toValue!7789 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))) (and b!3577174 b_free!91569) (and b!3576131 b_free!91545 (= (toValue!7789 (transformation!5517 (rule!8221 separatorToken!241))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))) (and b!3576119 b_free!91549 (= (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))) b_lambda!105619)))

(declare-fun b_lambda!105621 () Bool)

(assert (= b_lambda!105587 (or (and b!3577174 b_free!91571 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3576119 b_free!91551) (and b!3576136 b_free!91543 (= (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3577133 b_free!91567 (= (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3576131 b_free!91547 (= (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) b_lambda!105621)))

(declare-fun b_lambda!105623 () Bool)

(assert (= b_lambda!105583 (or b!3576145 b_lambda!105623)))

(declare-fun bs!569689 () Bool)

(declare-fun d!1055172 () Bool)

(assert (= bs!569689 (and d!1055172 b!3576145)))

(assert (=> bs!569689 (= (dynLambda!16143 lambda!123592 (h!42953 (t!289884 tokens!494))) (not (isSeparator!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))))

(assert (=> d!1054838 d!1055172))

(declare-fun b_lambda!105625 () Bool)

(assert (= b_lambda!105589 (or b!3576145 b_lambda!105625)))

(assert (=> b!3576498 d!1055172))

(declare-fun b_lambda!105627 () Bool)

(assert (= b_lambda!105605 (or b!3576137 b_lambda!105627)))

(declare-fun bs!569690 () Bool)

(declare-fun d!1055176 () Bool)

(assert (= bs!569690 (and d!1055176 b!3576137)))

(assert (=> bs!569690 (= (dynLambda!16143 lambda!123593 (h!42953 (t!289884 tokens!494))) (rulesProduceIndividualToken!2598 thiss!18206 rules!2135 (h!42953 (t!289884 tokens!494))))))

(assert (=> bs!569690 m!4068795))

(assert (=> d!1055084 d!1055176))

(declare-fun b_lambda!105629 () Bool)

(assert (= b_lambda!105597 (or (and b!3576131 b_free!91545 (= (toValue!7789 (transformation!5517 (rule!8221 separatorToken!241))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3576119 b_free!91549) (and b!3577174 b_free!91569 (= (toValue!7789 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3577133 b_free!91565 (= (toValue!7789 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3576136 b_free!91541 (= (toValue!7789 (transformation!5517 (h!42952 rules!2135))) (toValue!7789 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) b_lambda!105629)))

(declare-fun b_lambda!105631 () Bool)

(assert (= b_lambda!105591 (or (and b!3576119 b_free!91551 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))))) (and b!3577174 b_free!91571 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))))) (and b!3576131 b_free!91547) (and b!3576136 b_free!91543 (= (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))))) (and b!3577133 b_free!91567 (= (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))))) b_lambda!105631)))

(declare-fun b_lambda!105633 () Bool)

(assert (= b_lambda!105581 (or b!3576145 b_lambda!105633)))

(assert (=> b!3576384 d!1055170))

(declare-fun b_lambda!105635 () Bool)

(assert (= b_lambda!105593 (or (and b!3576131 b_free!91547 (= (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))) (and b!3576119 b_free!91551 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))) (and b!3576136 b_free!91543 (= (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))) (and b!3577174 b_free!91571) (and b!3577133 b_free!91567 (= (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))))) b_lambda!105635)))

(declare-fun b_lambda!105637 () Bool)

(assert (= b_lambda!105595 (or (and b!3576119 b_free!91551 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))))) (and b!3577174 b_free!91571 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))))) (and b!3576131 b_free!91547) (and b!3576136 b_free!91543 (= (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))))) (and b!3577133 b_free!91567 (= (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))))) b_lambda!105637)))

(declare-fun b_lambda!105639 () Bool)

(assert (= b_lambda!105579 (or (and b!3577174 b_free!91571 (= (toChars!7648 (transformation!5517 (rule!8221 (h!42953 (t!289884 tokens!494))))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3576119 b_free!91551) (and b!3576136 b_free!91543 (= (toChars!7648 (transformation!5517 (h!42952 rules!2135))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3577133 b_free!91567 (= (toChars!7648 (transformation!5517 (h!42952 (t!289883 rules!2135)))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) (and b!3576131 b_free!91547 (= (toChars!7648 (transformation!5517 (rule!8221 separatorToken!241))) (toChars!7648 (transformation!5517 (rule!8221 (h!42953 tokens!494)))))) b_lambda!105639)))

(push 1)

(assert (not b!3576447))

(assert (not d!1054934))

(assert (not d!1054886))

(assert (not b_lambda!105635))

(assert (not b!3576575))

(assert (not b!3576389))

(assert (not d!1054984))

(assert (not b!3577098))

(assert (not b!3576927))

(assert (not b_next!92255))

(assert (not b_lambda!105627))

(assert (not b!3577153))

(assert (not b!3576385))

(assert (not bm!259208))

(assert (not b!3576959))

(assert (not d!1055092))

(assert (not d!1054932))

(assert (not b!3576434))

(assert (not bm!259204))

(assert (not d!1054938))

(assert (not b_lambda!105619))

(assert (not d!1054866))

(assert (not bm!259156))

(assert (not b!3577132))

(assert (not d!1055142))

(assert (not b!3576322))

(assert (not d!1055020))

(assert (not b!3576997))

(assert (not d!1054868))

(assert (not b!3576570))

(assert b_and!257715)

(assert (not d!1054928))

(assert b_and!257729)

(assert (not b!3576823))

(assert (not b!3576814))

(assert (not d!1055148))

(assert (not d!1055090))

(assert (not b!3576771))

(assert (not b_next!92273))

(assert (not d!1055140))

(assert (not b!3576766))

(assert (not d!1054846))

(assert (not b!3577061))

(assert (not d!1054842))

(assert (not b!3576541))

(assert (not b!3577121))

(assert (not d!1055062))

(assert (not b!3576996))

(assert (not b!3577063))

(assert (not b!3577097))

(assert (not d!1054910))

(assert (not d!1054994))

(assert (not b!3576892))

(assert (not b!3576652))

(assert (not b!3576589))

(assert (not b!3576821))

(assert (not d!1055016))

(assert (not b!3576582))

(assert (not bm!259209))

(assert (not b_next!92249))

(assert (not bm!259170))

(assert (not b!3576567))

(assert (not b!3576429))

(assert (not d!1055000))

(assert (not d!1054814))

(assert (not bm!259189))

(assert (not b!3576773))

(assert (not b!3577066))

(assert (not b!3576813))

(assert (not b!3577120))

(assert (not b!3576528))

(assert (not b!3576552))

(assert (not b_next!92251))

(assert (not d!1055120))

(assert (not d!1054988))

(assert (not b!3576488))

(assert (not b!3576388))

(assert (not b!3576605))

(assert (not b!3577145))

(assert (not d!1055094))

(assert (not b!3577065))

(assert (not d!1055012))

(assert (not d!1054914))

(assert (not b!3577042))

(assert (not b!3576449))

(assert (not b!3576561))

(assert (not b!3576373))

(assert (not b!3576890))

(assert b_and!257693)

(assert (not d!1054958))

(assert b_and!257739)

(assert (not b!3576651))

(assert (not b!3576549))

(assert (not d!1055002))

(assert (not b!3576568))

(assert (not b!3577076))

(assert (not d!1054980))

(assert (not b!3576774))

(assert (not b!3576893))

(assert (not b!3577079))

(assert (not b!3576894))

(assert (not b!3577083))

(assert (not bm!259168))

(assert (not b!3577040))

(assert (not b!3576993))

(assert (not b!3576580))

(assert (not d!1055086))

(assert (not bs!569690))

(assert (not b_lambda!105621))

(assert (not b!3576649))

(assert (not d!1055018))

(assert (not b!3576564))

(assert (not b!3576831))

(assert (not b!3576836))

(assert (not d!1054852))

(assert (not d!1055024))

(assert (not d!1055022))

(assert (not b_next!92245))

(assert (not b!3576987))

(assert (not b!3576421))

(assert (not d!1054900))

(assert (not b!3576428))

(assert (not d!1054812))

(assert (not b!3576462))

(assert (not b!3577101))

(assert b_and!257695)

(assert (not d!1054826))

(assert (not b!3576491))

(assert (not b!3576820))

(assert (not b!3576448))

(assert (not d!1054998))

(assert (not b!3577102))

(assert (not b!3576500))

(assert (not b!3576319))

(assert (not b!3576419))

(assert (not b!3576424))

(assert (not b_next!92253))

(assert (not b_lambda!105639))

(assert (not b!3576499))

(assert (not d!1054918))

(assert (not d!1055082))

(assert (not b!3577157))

(assert (not b!3576784))

(assert (not b!3577041))

(assert (not d!1055144))

(assert (not b!3576961))

(assert (not b_lambda!105623))

(assert (not bm!259155))

(assert (not d!1054856))

(assert (not b!3577056))

(assert (not d!1054924))

(assert (not b_lambda!105625))

(assert (not b!3576371))

(assert (not b!3576496))

(assert (not b!3576928))

(assert (not b!3576450))

(assert (not b!3576819))

(assert (not d!1054896))

(assert (not b!3577140))

(assert (not b_lambda!105617))

(assert (not tb!204059))

(assert (not bm!259185))

(assert (not b!3576769))

(assert (not b!3576534))

(assert (not b!3576828))

(assert (not b!3577171))

(assert (not b!3577090))

(assert (not b!3576833))

(assert b_and!257727)

(assert (not d!1054840))

(assert (not tb!204071))

(assert (not b!3576559))

(assert (not b!3577084))

(assert (not bm!259203))

(assert (not b!3576826))

(assert (not b!3576837))

(assert (not b!3576464))

(assert (not b!3576459))

(assert (not b!3576824))

(assert (not d!1054950))

(assert (not d!1054982))

(assert (not d!1055010))

(assert (not b_lambda!105629))

(assert (not b!3576578))

(assert (not bm!259188))

(assert (not d!1055138))

(assert (not b!3576834))

(assert (not b!3576816))

(assert (not b!3576588))

(assert (not d!1055136))

(assert (not b!3576553))

(assert (not d!1054908))

(assert (not bm!259205))

(assert (not b!3576378))

(assert (not b!3577091))

(assert (not b!3576372))

(assert (not b!3576989))

(assert (not d!1054878))

(assert (not d!1054888))

(assert (not b!3576583))

(assert (not b!3576929))

(assert (not b!3576963))

(assert (not b!3577156))

(assert (not b!3576656))

(assert (not b!3576539))

(assert (not b!3576650))

(assert (not d!1054824))

(assert (not b!3576654))

(assert (not d!1055044))

(assert (not b!3576537))

(assert (not d!1054992))

(assert (not tb!204065))

(assert (not d!1054920))

(assert (not b_next!92247))

(assert (not b!3576527))

(assert (not b!3576532))

(assert (not b!3576825))

(assert (not b!3576590))

(assert (not b!3576775))

(assert (not b!3577155))

(assert (not d!1054820))

(assert (not bm!259186))

(assert (not b!3576838))

(assert (not b!3576486))

(assert (not tb!204095))

(assert (not b!3576815))

(assert (not d!1054996))

(assert tp_is_empty!17663)

(assert (not b!3576829))

(assert b_and!257691)

(assert (not b!3577058))

(assert (not b!3576812))

(assert (not d!1054818))

(assert (not b!3576569))

(assert (not b!3576426))

(assert (not b!3577185))

(assert b_and!257719)

(assert (not bm!259190))

(assert (not b!3576573))

(assert (not d!1055106))

(assert (not b!3577038))

(assert (not d!1054822))

(assert (not b_lambda!105637))

(assert (not d!1054906))

(assert (not bm!259157))

(assert (not b!3577015))

(assert (not b!3576603))

(assert (not b!3577089))

(assert (not b!3577172))

(assert (not b!3577131))

(assert (not b!3577173))

(assert (not b!3577074))

(assert (not b!3577017))

(assert (not bm!259169))

(assert (not d!1054952))

(assert (not b!3576817))

(assert (not b!3576332))

(assert (not b!3577119))

(assert (not d!1054860))

(assert (not b!3576571))

(assert (not d!1054954))

(assert (not b!3576662))

(assert (not b_next!92269))

(assert (not b!3576655))

(assert (not d!1055084))

(assert (not b!3576853))

(assert (not b!3576778))

(assert (not b!3576782))

(assert (not b!3576779))

(assert (not d!1054898))

(assert (not d!1055130))

(assert (not b!3576542))

(assert (not b!3576333))

(assert (not b!3576851))

(assert (not d!1055152))

(assert (not tb!204077))

(assert (not b_lambda!105633))

(assert (not b!3577146))

(assert (not b!3576602))

(assert (not d!1054838))

(assert (not d!1054862))

(assert (not b!3576832))

(assert (not d!1055046))

(assert (not b_lambda!105631))

(assert (not b!3577081))

(assert b_and!257737)

(assert (not b_next!92275))

(assert (not b_next!92271))

(assert (not d!1054854))

(assert (not b!3576458))

(assert (not b!3576653))

(assert (not b!3576822))

(assert (not b!3576379))

(assert (not b!3576852))

(assert (not b!3576962))

(assert (not b!3576664))

(assert (not b!3576835))

(assert (not d!1055128))

(assert (not b!3577144))

(assert (not d!1054986))

(assert (not b!3576463))

(assert (not d!1054876))

(assert (not b!3576453))

(assert (not b!3576565))

(assert (not b!3577012))

(assert (not d!1054912))

(assert b_and!257717)

(assert (not b!3576557))

(assert (not b!3576556))

(assert (not d!1055118))

(assert (not d!1055132))

(assert (not d!1055110))

(assert (not b!3576995))

(assert (not d!1055100))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92255))

(assert (not b_next!92273))

(assert (not b_next!92249))

(assert (not b_next!92251))

(assert (not b_next!92245))

(assert b_and!257695)

(assert (not b_next!92253))

(assert b_and!257727)

(assert (not b_next!92247))

(assert b_and!257691)

(assert b_and!257719)

(assert (not b_next!92269))

(assert b_and!257717)

(assert b_and!257715)

(assert b_and!257729)

(assert b_and!257693)

(assert b_and!257739)

(assert (not b_next!92271))

(assert b_and!257737)

(assert (not b_next!92275))

(check-sat)

(pop 1)

