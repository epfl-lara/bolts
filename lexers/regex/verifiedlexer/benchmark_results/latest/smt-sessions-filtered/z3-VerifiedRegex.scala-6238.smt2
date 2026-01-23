; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302722 () Bool)

(assert start!302722)

(declare-fun b!3224090 () Bool)

(declare-fun b_free!85897 () Bool)

(declare-fun b_next!86601 () Bool)

(assert (=> b!3224090 (= b_free!85897 (not b_next!86601))))

(declare-fun tp!1015709 () Bool)

(declare-fun b_and!215623 () Bool)

(assert (=> b!3224090 (= tp!1015709 b_and!215623)))

(declare-fun b_free!85899 () Bool)

(declare-fun b_next!86603 () Bool)

(assert (=> b!3224090 (= b_free!85899 (not b_next!86603))))

(declare-fun tp!1015711 () Bool)

(declare-fun b_and!215625 () Bool)

(assert (=> b!3224090 (= tp!1015711 b_and!215625)))

(declare-fun b!3224091 () Bool)

(declare-fun b_free!85901 () Bool)

(declare-fun b_next!86605 () Bool)

(assert (=> b!3224091 (= b_free!85901 (not b_next!86605))))

(declare-fun tp!1015715 () Bool)

(declare-fun b_and!215627 () Bool)

(assert (=> b!3224091 (= tp!1015715 b_and!215627)))

(declare-fun b_free!85903 () Bool)

(declare-fun b_next!86607 () Bool)

(assert (=> b!3224091 (= b_free!85903 (not b_next!86607))))

(declare-fun tp!1015714 () Bool)

(declare-fun b_and!215629 () Bool)

(assert (=> b!3224091 (= tp!1015714 b_and!215629)))

(declare-fun b!3224092 () Bool)

(declare-fun b_free!85905 () Bool)

(declare-fun b_next!86609 () Bool)

(assert (=> b!3224092 (= b_free!85905 (not b_next!86609))))

(declare-fun tp!1015712 () Bool)

(declare-fun b_and!215631 () Bool)

(assert (=> b!3224092 (= tp!1015712 b_and!215631)))

(declare-fun b_free!85907 () Bool)

(declare-fun b_next!86611 () Bool)

(assert (=> b!3224092 (= b_free!85907 (not b_next!86611))))

(declare-fun tp!1015706 () Bool)

(declare-fun b_and!215633 () Bool)

(assert (=> b!3224092 (= tp!1015706 b_and!215633)))

(declare-fun b!3224088 () Bool)

(declare-fun res!1313115 () Bool)

(declare-fun e!2010783 () Bool)

(assert (=> b!3224088 (=> (not res!1313115) (not e!2010783))))

(declare-datatypes ((C!20216 0))(
  ( (C!20217 (val!12156 Int)) )
))
(declare-datatypes ((Regex!10015 0))(
  ( (ElementMatch!10015 (c!541876 C!20216)) (Concat!15501 (regOne!20542 Regex!10015) (regTwo!20542 Regex!10015)) (EmptyExpr!10015) (Star!10015 (reg!10344 Regex!10015)) (EmptyLang!10015) (Union!10015 (regOne!20543 Regex!10015) (regTwo!20543 Regex!10015)) )
))
(declare-datatypes ((List!36436 0))(
  ( (Nil!36312) (Cons!36312 (h!41732 (_ BitVec 16)) (t!240733 List!36436)) )
))
(declare-datatypes ((TokenValue!5486 0))(
  ( (FloatLiteralValue!10972 (text!38847 List!36436)) (TokenValueExt!5485 (__x!23189 Int)) (Broken!27430 (value!170230 List!36436)) (Object!5609) (End!5486) (Def!5486) (Underscore!5486) (Match!5486) (Else!5486) (Error!5486) (Case!5486) (If!5486) (Extends!5486) (Abstract!5486) (Class!5486) (Val!5486) (DelimiterValue!10972 (del!5546 List!36436)) (KeywordValue!5492 (value!170231 List!36436)) (CommentValue!10972 (value!170232 List!36436)) (WhitespaceValue!10972 (value!170233 List!36436)) (IndentationValue!5486 (value!170234 List!36436)) (String!40763) (Int32!5486) (Broken!27431 (value!170235 List!36436)) (Boolean!5487) (Unit!50913) (OperatorValue!5489 (op!5546 List!36436)) (IdentifierValue!10972 (value!170236 List!36436)) (IdentifierValue!10973 (value!170237 List!36436)) (WhitespaceValue!10973 (value!170238 List!36436)) (True!10972) (False!10972) (Broken!27432 (value!170239 List!36436)) (Broken!27433 (value!170240 List!36436)) (True!10973) (RightBrace!5486) (RightBracket!5486) (Colon!5486) (Null!5486) (Comma!5486) (LeftBracket!5486) (False!10973) (LeftBrace!5486) (ImaginaryLiteralValue!5486 (text!38848 List!36436)) (StringLiteralValue!16458 (value!170241 List!36436)) (EOFValue!5486 (value!170242 List!36436)) (IdentValue!5486 (value!170243 List!36436)) (DelimiterValue!10973 (value!170244 List!36436)) (DedentValue!5486 (value!170245 List!36436)) (NewLineValue!5486 (value!170246 List!36436)) (IntegerValue!16458 (value!170247 (_ BitVec 32)) (text!38849 List!36436)) (IntegerValue!16459 (value!170248 Int) (text!38850 List!36436)) (Times!5486) (Or!5486) (Equal!5486) (Minus!5486) (Broken!27434 (value!170249 List!36436)) (And!5486) (Div!5486) (LessEqual!5486) (Mod!5486) (Concat!15502) (Not!5486) (Plus!5486) (SpaceValue!5486 (value!170250 List!36436)) (IntegerValue!16460 (value!170251 Int) (text!38851 List!36436)) (StringLiteralValue!16459 (text!38852 List!36436)) (FloatLiteralValue!10973 (text!38853 List!36436)) (BytesLiteralValue!5486 (value!170252 List!36436)) (CommentValue!10973 (value!170253 List!36436)) (StringLiteralValue!16460 (value!170254 List!36436)) (ErrorTokenValue!5486 (msg!5547 List!36436)) )
))
(declare-datatypes ((List!36437 0))(
  ( (Nil!36313) (Cons!36313 (h!41733 C!20216) (t!240734 List!36437)) )
))
(declare-datatypes ((IArray!21779 0))(
  ( (IArray!21780 (innerList!10947 List!36437)) )
))
(declare-datatypes ((Conc!10887 0))(
  ( (Node!10887 (left!28273 Conc!10887) (right!28603 Conc!10887) (csize!22004 Int) (cheight!11098 Int)) (Leaf!17126 (xs!14005 IArray!21779) (csize!22005 Int)) (Empty!10887) )
))
(declare-datatypes ((BalanceConc!21388 0))(
  ( (BalanceConc!21389 (c!541877 Conc!10887)) )
))
(declare-datatypes ((String!40764 0))(
  ( (String!40765 (value!170255 String)) )
))
(declare-datatypes ((TokenValueInjection!10400 0))(
  ( (TokenValueInjection!10401 (toValue!7352 Int) (toChars!7211 Int)) )
))
(declare-datatypes ((Rule!10312 0))(
  ( (Rule!10313 (regex!5256 Regex!10015) (tag!5788 String!40764) (isSeparator!5256 Bool) (transformation!5256 TokenValueInjection!10400)) )
))
(declare-datatypes ((Token!9878 0))(
  ( (Token!9879 (value!170256 TokenValue!5486) (rule!7714 Rule!10312) (size!27377 Int) (originalCharacters!5970 List!36437)) )
))
(declare-fun separatorToken!241 () Token!9878)

(declare-datatypes ((LexerInterface!4845 0))(
  ( (LexerInterfaceExt!4842 (__x!23190 Int)) (Lexer!4843) )
))
(declare-fun thiss!18206 () LexerInterface!4845)

(declare-datatypes ((List!36438 0))(
  ( (Nil!36314) (Cons!36314 (h!41734 Rule!10312) (t!240735 List!36438)) )
))
(declare-fun rules!2135 () List!36438)

(declare-fun rulesProduceIndividualToken!2337 (LexerInterface!4845 List!36438 Token!9878) Bool)

(assert (=> b!3224088 (= res!1313115 (rulesProduceIndividualToken!2337 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3224089 () Bool)

(declare-fun e!2010790 () Bool)

(declare-fun e!2010785 () Bool)

(declare-fun tp!1015717 () Bool)

(assert (=> b!3224089 (= e!2010790 (and e!2010785 tp!1015717))))

(declare-fun e!2010778 () Bool)

(assert (=> b!3224090 (= e!2010778 (and tp!1015709 tp!1015711))))

(declare-fun e!2010782 () Bool)

(assert (=> b!3224091 (= e!2010782 (and tp!1015715 tp!1015714))))

(declare-fun e!2010779 () Bool)

(assert (=> b!3224092 (= e!2010779 (and tp!1015712 tp!1015706))))

(declare-fun b!3224093 () Bool)

(declare-fun e!2010786 () Bool)

(assert (=> b!3224093 (= e!2010783 (not e!2010786))))

(declare-fun res!1313120 () Bool)

(assert (=> b!3224093 (=> res!1313120 e!2010786)))

(declare-fun lt!1093806 () List!36437)

(declare-fun lt!1093805 () List!36437)

(assert (=> b!3224093 (= res!1313120 (not (= lt!1093806 lt!1093805)))))

(declare-datatypes ((List!36439 0))(
  ( (Nil!36315) (Cons!36315 (h!41735 Token!9878) (t!240736 List!36439)) )
))
(declare-fun tokens!494 () List!36439)

(declare-fun printList!1395 (LexerInterface!4845 List!36439) List!36437)

(assert (=> b!3224093 (= lt!1093805 (printList!1395 thiss!18206 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))

(declare-fun lt!1093803 () BalanceConc!21388)

(declare-fun list!12937 (BalanceConc!21388) List!36437)

(assert (=> b!3224093 (= lt!1093806 (list!12937 lt!1093803))))

(declare-datatypes ((IArray!21781 0))(
  ( (IArray!21782 (innerList!10948 List!36439)) )
))
(declare-datatypes ((Conc!10888 0))(
  ( (Node!10888 (left!28274 Conc!10888) (right!28604 Conc!10888) (csize!22006 Int) (cheight!11099 Int)) (Leaf!17127 (xs!14006 IArray!21781) (csize!22007 Int)) (Empty!10888) )
))
(declare-datatypes ((BalanceConc!21390 0))(
  ( (BalanceConc!21391 (c!541878 Conc!10888)) )
))
(declare-fun lt!1093804 () BalanceConc!21390)

(declare-fun printTailRec!1342 (LexerInterface!4845 BalanceConc!21390 Int BalanceConc!21388) BalanceConc!21388)

(assert (=> b!3224093 (= lt!1093803 (printTailRec!1342 thiss!18206 lt!1093804 0 (BalanceConc!21389 Empty!10887)))))

(declare-fun print!1910 (LexerInterface!4845 BalanceConc!21390) BalanceConc!21388)

(assert (=> b!3224093 (= lt!1093803 (print!1910 thiss!18206 lt!1093804))))

(declare-fun singletonSeq!2352 (Token!9878) BalanceConc!21390)

(assert (=> b!3224093 (= lt!1093804 (singletonSeq!2352 (h!41735 tokens!494)))))

(declare-fun res!1313124 () Bool)

(assert (=> start!302722 (=> (not res!1313124) (not e!2010783))))

(get-info :version)

(assert (=> start!302722 (= res!1313124 ((_ is Lexer!4843) thiss!18206))))

(assert (=> start!302722 e!2010783))

(assert (=> start!302722 true))

(assert (=> start!302722 e!2010790))

(declare-fun e!2010781 () Bool)

(assert (=> start!302722 e!2010781))

(declare-fun e!2010788 () Bool)

(declare-fun inv!49180 (Token!9878) Bool)

(assert (=> start!302722 (and (inv!49180 separatorToken!241) e!2010788)))

(declare-fun b!3224087 () Bool)

(declare-fun res!1313117 () Bool)

(assert (=> b!3224087 (=> (not res!1313117) (not e!2010783))))

(declare-fun lambda!118033 () Int)

(declare-fun forall!7440 (List!36439 Int) Bool)

(assert (=> b!3224087 (= res!1313117 (forall!7440 tokens!494 lambda!118033))))

(declare-fun b!3224094 () Bool)

(declare-fun res!1313119 () Bool)

(assert (=> b!3224094 (=> (not res!1313119) (not e!2010783))))

(declare-fun isEmpty!20393 (List!36438) Bool)

(assert (=> b!3224094 (= res!1313119 (not (isEmpty!20393 rules!2135)))))

(declare-fun b!3224095 () Bool)

(declare-fun tp!1015718 () Bool)

(declare-fun e!2010789 () Bool)

(declare-fun inv!49177 (String!40764) Bool)

(declare-fun inv!49181 (TokenValueInjection!10400) Bool)

(assert (=> b!3224095 (= e!2010789 (and tp!1015718 (inv!49177 (tag!5788 (rule!7714 (h!41735 tokens!494)))) (inv!49181 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) e!2010778))))

(declare-fun b!3224096 () Bool)

(declare-fun res!1313122 () Bool)

(assert (=> b!3224096 (=> (not res!1313122) (not e!2010783))))

(assert (=> b!3224096 (= res!1313122 (and (not ((_ is Nil!36315) tokens!494)) ((_ is Nil!36315) (t!240736 tokens!494))))))

(declare-fun b!3224097 () Bool)

(declare-fun res!1313121 () Bool)

(assert (=> b!3224097 (=> (not res!1313121) (not e!2010783))))

(assert (=> b!3224097 (= res!1313121 (isSeparator!5256 (rule!7714 separatorToken!241)))))

(declare-fun b!3224098 () Bool)

(declare-fun res!1313123 () Bool)

(assert (=> b!3224098 (=> (not res!1313123) (not e!2010783))))

(declare-fun sepAndNonSepRulesDisjointChars!1450 (List!36438 List!36438) Bool)

(assert (=> b!3224098 (= res!1313123 (sepAndNonSepRulesDisjointChars!1450 rules!2135 rules!2135))))

(declare-fun b!3224099 () Bool)

(declare-fun res!1313116 () Bool)

(assert (=> b!3224099 (=> (not res!1313116) (not e!2010783))))

(declare-fun rulesInvariant!4242 (LexerInterface!4845 List!36438) Bool)

(assert (=> b!3224099 (= res!1313116 (rulesInvariant!4242 thiss!18206 rules!2135))))

(declare-fun b!3224100 () Bool)

(declare-fun res!1313118 () Bool)

(assert (=> b!3224100 (=> (not res!1313118) (not e!2010783))))

(declare-fun rulesProduceEachTokenIndividually!1296 (LexerInterface!4845 List!36438 BalanceConc!21390) Bool)

(declare-fun seqFromList!3580 (List!36439) BalanceConc!21390)

(assert (=> b!3224100 (= res!1313118 (rulesProduceEachTokenIndividually!1296 thiss!18206 rules!2135 (seqFromList!3580 tokens!494)))))

(declare-fun e!2010784 () Bool)

(declare-fun b!3224101 () Bool)

(declare-fun tp!1015713 () Bool)

(assert (=> b!3224101 (= e!2010784 (and tp!1015713 (inv!49177 (tag!5788 (rule!7714 separatorToken!241))) (inv!49181 (transformation!5256 (rule!7714 separatorToken!241))) e!2010779))))

(declare-fun b!3224102 () Bool)

(declare-fun charsOf!3272 (Token!9878) BalanceConc!21388)

(assert (=> b!3224102 (= e!2010786 (= lt!1093805 (list!12937 (charsOf!3272 (h!41735 tokens!494)))))))

(declare-fun b!3224103 () Bool)

(declare-fun e!2010787 () Bool)

(declare-fun tp!1015708 () Bool)

(declare-fun inv!21 (TokenValue!5486) Bool)

(assert (=> b!3224103 (= e!2010787 (and (inv!21 (value!170256 (h!41735 tokens!494))) e!2010789 tp!1015708))))

(declare-fun b!3224104 () Bool)

(declare-fun tp!1015710 () Bool)

(assert (=> b!3224104 (= e!2010781 (and (inv!49180 (h!41735 tokens!494)) e!2010787 tp!1015710))))

(declare-fun tp!1015707 () Bool)

(declare-fun b!3224105 () Bool)

(assert (=> b!3224105 (= e!2010785 (and tp!1015707 (inv!49177 (tag!5788 (h!41734 rules!2135))) (inv!49181 (transformation!5256 (h!41734 rules!2135))) e!2010782))))

(declare-fun b!3224106 () Bool)

(declare-fun tp!1015716 () Bool)

(assert (=> b!3224106 (= e!2010788 (and (inv!21 (value!170256 separatorToken!241)) e!2010784 tp!1015716))))

(assert (= (and start!302722 res!1313124) b!3224094))

(assert (= (and b!3224094 res!1313119) b!3224099))

(assert (= (and b!3224099 res!1313116) b!3224100))

(assert (= (and b!3224100 res!1313118) b!3224088))

(assert (= (and b!3224088 res!1313115) b!3224097))

(assert (= (and b!3224097 res!1313121) b!3224087))

(assert (= (and b!3224087 res!1313117) b!3224098))

(assert (= (and b!3224098 res!1313123) b!3224096))

(assert (= (and b!3224096 res!1313122) b!3224093))

(assert (= (and b!3224093 (not res!1313120)) b!3224102))

(assert (= b!3224105 b!3224091))

(assert (= b!3224089 b!3224105))

(assert (= (and start!302722 ((_ is Cons!36314) rules!2135)) b!3224089))

(assert (= b!3224095 b!3224090))

(assert (= b!3224103 b!3224095))

(assert (= b!3224104 b!3224103))

(assert (= (and start!302722 ((_ is Cons!36315) tokens!494)) b!3224104))

(assert (= b!3224101 b!3224092))

(assert (= b!3224106 b!3224101))

(assert (= start!302722 b!3224106))

(declare-fun m!3502167 () Bool)

(assert (=> start!302722 m!3502167))

(declare-fun m!3502169 () Bool)

(assert (=> b!3224093 m!3502169))

(declare-fun m!3502171 () Bool)

(assert (=> b!3224093 m!3502171))

(declare-fun m!3502173 () Bool)

(assert (=> b!3224093 m!3502173))

(declare-fun m!3502175 () Bool)

(assert (=> b!3224093 m!3502175))

(declare-fun m!3502177 () Bool)

(assert (=> b!3224093 m!3502177))

(declare-fun m!3502179 () Bool)

(assert (=> b!3224106 m!3502179))

(declare-fun m!3502181 () Bool)

(assert (=> b!3224100 m!3502181))

(assert (=> b!3224100 m!3502181))

(declare-fun m!3502183 () Bool)

(assert (=> b!3224100 m!3502183))

(declare-fun m!3502185 () Bool)

(assert (=> b!3224104 m!3502185))

(declare-fun m!3502187 () Bool)

(assert (=> b!3224095 m!3502187))

(declare-fun m!3502189 () Bool)

(assert (=> b!3224095 m!3502189))

(declare-fun m!3502191 () Bool)

(assert (=> b!3224105 m!3502191))

(declare-fun m!3502193 () Bool)

(assert (=> b!3224105 m!3502193))

(declare-fun m!3502195 () Bool)

(assert (=> b!3224088 m!3502195))

(declare-fun m!3502197 () Bool)

(assert (=> b!3224102 m!3502197))

(assert (=> b!3224102 m!3502197))

(declare-fun m!3502199 () Bool)

(assert (=> b!3224102 m!3502199))

(declare-fun m!3502201 () Bool)

(assert (=> b!3224098 m!3502201))

(declare-fun m!3502203 () Bool)

(assert (=> b!3224094 m!3502203))

(declare-fun m!3502205 () Bool)

(assert (=> b!3224087 m!3502205))

(declare-fun m!3502207 () Bool)

(assert (=> b!3224103 m!3502207))

(declare-fun m!3502209 () Bool)

(assert (=> b!3224099 m!3502209))

(declare-fun m!3502211 () Bool)

(assert (=> b!3224101 m!3502211))

(declare-fun m!3502213 () Bool)

(assert (=> b!3224101 m!3502213))

(check-sat b_and!215623 (not b!3224088) (not b!3224100) (not start!302722) (not b!3224094) (not b!3224095) b_and!215631 (not b!3224087) (not b_next!86603) (not b!3224106) (not b!3224101) (not b_next!86605) (not b!3224099) (not b!3224098) b_and!215625 (not b!3224103) b_and!215633 (not b_next!86601) (not b_next!86609) b_and!215627 (not b!3224105) b_and!215629 (not b!3224104) (not b_next!86607) (not b!3224089) (not b!3224093) (not b!3224102) (not b_next!86611))
(check-sat (not b_next!86603) (not b_next!86605) b_and!215625 b_and!215623 b_and!215633 b_and!215627 b_and!215631 b_and!215629 (not b_next!86607) (not b_next!86611) (not b_next!86601) (not b_next!86609))
(get-model)

(declare-fun d!884891 () Bool)

(declare-fun res!1313144 () Bool)

(declare-fun e!2010802 () Bool)

(assert (=> d!884891 (=> res!1313144 e!2010802)))

(assert (=> d!884891 (= res!1313144 ((_ is Nil!36315) tokens!494))))

(assert (=> d!884891 (= (forall!7440 tokens!494 lambda!118033) e!2010802)))

(declare-fun b!3224118 () Bool)

(declare-fun e!2010803 () Bool)

(assert (=> b!3224118 (= e!2010802 e!2010803)))

(declare-fun res!1313145 () Bool)

(assert (=> b!3224118 (=> (not res!1313145) (not e!2010803))))

(declare-fun dynLambda!14739 (Int Token!9878) Bool)

(assert (=> b!3224118 (= res!1313145 (dynLambda!14739 lambda!118033 (h!41735 tokens!494)))))

(declare-fun b!3224119 () Bool)

(assert (=> b!3224119 (= e!2010803 (forall!7440 (t!240736 tokens!494) lambda!118033))))

(assert (= (and d!884891 (not res!1313144)) b!3224118))

(assert (= (and b!3224118 res!1313145) b!3224119))

(declare-fun b_lambda!88643 () Bool)

(assert (=> (not b_lambda!88643) (not b!3224118)))

(declare-fun m!3502227 () Bool)

(assert (=> b!3224118 m!3502227))

(declare-fun m!3502229 () Bool)

(assert (=> b!3224119 m!3502229))

(assert (=> b!3224087 d!884891))

(declare-fun b!3224130 () Bool)

(declare-fun e!2010810 () Bool)

(declare-fun inv!17 (TokenValue!5486) Bool)

(assert (=> b!3224130 (= e!2010810 (inv!17 (value!170256 separatorToken!241)))))

(declare-fun b!3224131 () Bool)

(declare-fun res!1313148 () Bool)

(declare-fun e!2010812 () Bool)

(assert (=> b!3224131 (=> res!1313148 e!2010812)))

(assert (=> b!3224131 (= res!1313148 (not ((_ is IntegerValue!16460) (value!170256 separatorToken!241))))))

(assert (=> b!3224131 (= e!2010810 e!2010812)))

(declare-fun b!3224132 () Bool)

(declare-fun e!2010811 () Bool)

(declare-fun inv!16 (TokenValue!5486) Bool)

(assert (=> b!3224132 (= e!2010811 (inv!16 (value!170256 separatorToken!241)))))

(declare-fun d!884895 () Bool)

(declare-fun c!541883 () Bool)

(assert (=> d!884895 (= c!541883 ((_ is IntegerValue!16458) (value!170256 separatorToken!241)))))

(assert (=> d!884895 (= (inv!21 (value!170256 separatorToken!241)) e!2010811)))

(declare-fun b!3224133 () Bool)

(assert (=> b!3224133 (= e!2010811 e!2010810)))

(declare-fun c!541884 () Bool)

(assert (=> b!3224133 (= c!541884 ((_ is IntegerValue!16459) (value!170256 separatorToken!241)))))

(declare-fun b!3224134 () Bool)

(declare-fun inv!15 (TokenValue!5486) Bool)

(assert (=> b!3224134 (= e!2010812 (inv!15 (value!170256 separatorToken!241)))))

(assert (= (and d!884895 c!541883) b!3224132))

(assert (= (and d!884895 (not c!541883)) b!3224133))

(assert (= (and b!3224133 c!541884) b!3224130))

(assert (= (and b!3224133 (not c!541884)) b!3224131))

(assert (= (and b!3224131 (not res!1313148)) b!3224134))

(declare-fun m!3502231 () Bool)

(assert (=> b!3224130 m!3502231))

(declare-fun m!3502233 () Bool)

(assert (=> b!3224132 m!3502233))

(declare-fun m!3502235 () Bool)

(assert (=> b!3224134 m!3502235))

(assert (=> b!3224106 d!884895))

(declare-fun bs!542657 () Bool)

(declare-fun d!884897 () Bool)

(assert (= bs!542657 (and d!884897 b!3224087)))

(declare-fun lambda!118043 () Int)

(assert (=> bs!542657 (not (= lambda!118043 lambda!118033))))

(declare-fun b!3224214 () Bool)

(declare-fun e!2010869 () Bool)

(assert (=> b!3224214 (= e!2010869 true)))

(declare-fun b!3224213 () Bool)

(declare-fun e!2010868 () Bool)

(assert (=> b!3224213 (= e!2010868 e!2010869)))

(declare-fun b!3224212 () Bool)

(declare-fun e!2010867 () Bool)

(assert (=> b!3224212 (= e!2010867 e!2010868)))

(assert (=> d!884897 e!2010867))

(assert (= b!3224213 b!3224214))

(assert (= b!3224212 b!3224213))

(assert (= (and d!884897 ((_ is Cons!36314) rules!2135)) b!3224212))

(declare-fun order!18691 () Int)

(declare-fun order!18689 () Int)

(declare-fun dynLambda!14740 (Int Int) Int)

(declare-fun dynLambda!14741 (Int Int) Int)

(assert (=> b!3224214 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (h!41734 rules!2135)))) (dynLambda!14741 order!18691 lambda!118043))))

(declare-fun order!18693 () Int)

(declare-fun dynLambda!14742 (Int Int) Int)

(assert (=> b!3224214 (< (dynLambda!14742 order!18693 (toChars!7211 (transformation!5256 (h!41734 rules!2135)))) (dynLambda!14741 order!18691 lambda!118043))))

(assert (=> d!884897 true))

(declare-fun e!2010860 () Bool)

(assert (=> d!884897 e!2010860))

(declare-fun res!1313182 () Bool)

(assert (=> d!884897 (=> (not res!1313182) (not e!2010860))))

(declare-fun lt!1093821 () Bool)

(declare-fun list!12940 (BalanceConc!21390) List!36439)

(assert (=> d!884897 (= res!1313182 (= lt!1093821 (forall!7440 (list!12940 (seqFromList!3580 tokens!494)) lambda!118043)))))

(declare-fun forall!7442 (BalanceConc!21390 Int) Bool)

(assert (=> d!884897 (= lt!1093821 (forall!7442 (seqFromList!3580 tokens!494) lambda!118043))))

(assert (=> d!884897 (not (isEmpty!20393 rules!2135))))

(assert (=> d!884897 (= (rulesProduceEachTokenIndividually!1296 thiss!18206 rules!2135 (seqFromList!3580 tokens!494)) lt!1093821)))

(declare-fun b!3224203 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1735 (LexerInterface!4845 List!36438 List!36439) Bool)

(assert (=> b!3224203 (= e!2010860 (= lt!1093821 (rulesProduceEachTokenIndividuallyList!1735 thiss!18206 rules!2135 (list!12940 (seqFromList!3580 tokens!494)))))))

(assert (= (and d!884897 res!1313182) b!3224203))

(assert (=> d!884897 m!3502181))

(declare-fun m!3502313 () Bool)

(assert (=> d!884897 m!3502313))

(assert (=> d!884897 m!3502313))

(declare-fun m!3502315 () Bool)

(assert (=> d!884897 m!3502315))

(assert (=> d!884897 m!3502181))

(declare-fun m!3502317 () Bool)

(assert (=> d!884897 m!3502317))

(assert (=> d!884897 m!3502203))

(assert (=> b!3224203 m!3502181))

(assert (=> b!3224203 m!3502313))

(assert (=> b!3224203 m!3502313))

(declare-fun m!3502319 () Bool)

(assert (=> b!3224203 m!3502319))

(assert (=> b!3224100 d!884897))

(declare-fun d!884925 () Bool)

(declare-fun fromListB!1554 (List!36439) BalanceConc!21390)

(assert (=> d!884925 (= (seqFromList!3580 tokens!494) (fromListB!1554 tokens!494))))

(declare-fun bs!542658 () Bool)

(assert (= bs!542658 d!884925))

(declare-fun m!3502321 () Bool)

(assert (=> bs!542658 m!3502321))

(assert (=> b!3224100 d!884925))

(declare-fun d!884927 () Bool)

(declare-fun res!1313187 () Bool)

(declare-fun e!2010874 () Bool)

(assert (=> d!884927 (=> res!1313187 e!2010874)))

(assert (=> d!884927 (= res!1313187 (not ((_ is Cons!36314) rules!2135)))))

(assert (=> d!884927 (= (sepAndNonSepRulesDisjointChars!1450 rules!2135 rules!2135) e!2010874)))

(declare-fun b!3224221 () Bool)

(declare-fun e!2010875 () Bool)

(assert (=> b!3224221 (= e!2010874 e!2010875)))

(declare-fun res!1313188 () Bool)

(assert (=> b!3224221 (=> (not res!1313188) (not e!2010875))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!599 (Rule!10312 List!36438) Bool)

(assert (=> b!3224221 (= res!1313188 (ruleDisjointCharsFromAllFromOtherType!599 (h!41734 rules!2135) rules!2135))))

(declare-fun b!3224222 () Bool)

(assert (=> b!3224222 (= e!2010875 (sepAndNonSepRulesDisjointChars!1450 rules!2135 (t!240735 rules!2135)))))

(assert (= (and d!884927 (not res!1313187)) b!3224221))

(assert (= (and b!3224221 res!1313188) b!3224222))

(declare-fun m!3502323 () Bool)

(assert (=> b!3224221 m!3502323))

(declare-fun m!3502325 () Bool)

(assert (=> b!3224222 m!3502325))

(assert (=> b!3224098 d!884927))

(declare-fun d!884929 () Bool)

(declare-fun lt!1093854 () Bool)

(declare-fun e!2010937 () Bool)

(assert (=> d!884929 (= lt!1093854 e!2010937)))

(declare-fun res!1313208 () Bool)

(assert (=> d!884929 (=> (not res!1313208) (not e!2010937))))

(declare-datatypes ((tuple2!35748 0))(
  ( (tuple2!35749 (_1!21008 BalanceConc!21390) (_2!21008 BalanceConc!21388)) )
))
(declare-fun lex!2175 (LexerInterface!4845 List!36438 BalanceConc!21388) tuple2!35748)

(assert (=> d!884929 (= res!1313208 (= (list!12940 (_1!21008 (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241))))) (list!12940 (singletonSeq!2352 separatorToken!241))))))

(declare-fun e!2010938 () Bool)

(assert (=> d!884929 (= lt!1093854 e!2010938)))

(declare-fun res!1313209 () Bool)

(assert (=> d!884929 (=> (not res!1313209) (not e!2010938))))

(declare-fun lt!1093853 () tuple2!35748)

(declare-fun size!27380 (BalanceConc!21390) Int)

(assert (=> d!884929 (= res!1313209 (= (size!27380 (_1!21008 lt!1093853)) 1))))

(assert (=> d!884929 (= lt!1093853 (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241))))))

(assert (=> d!884929 (not (isEmpty!20393 rules!2135))))

(assert (=> d!884929 (= (rulesProduceIndividualToken!2337 thiss!18206 rules!2135 separatorToken!241) lt!1093854)))

(declare-fun b!3224306 () Bool)

(declare-fun res!1313207 () Bool)

(assert (=> b!3224306 (=> (not res!1313207) (not e!2010938))))

(declare-fun apply!8279 (BalanceConc!21390 Int) Token!9878)

(assert (=> b!3224306 (= res!1313207 (= (apply!8279 (_1!21008 lt!1093853) 0) separatorToken!241))))

(declare-fun b!3224307 () Bool)

(declare-fun isEmpty!20396 (BalanceConc!21388) Bool)

(assert (=> b!3224307 (= e!2010938 (isEmpty!20396 (_2!21008 lt!1093853)))))

(declare-fun b!3224308 () Bool)

(assert (=> b!3224308 (= e!2010937 (isEmpty!20396 (_2!21008 (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241))))))))

(assert (= (and d!884929 res!1313209) b!3224306))

(assert (= (and b!3224306 res!1313207) b!3224307))

(assert (= (and d!884929 res!1313208) b!3224308))

(declare-fun m!3502399 () Bool)

(assert (=> d!884929 m!3502399))

(declare-fun m!3502401 () Bool)

(assert (=> d!884929 m!3502401))

(declare-fun m!3502403 () Bool)

(assert (=> d!884929 m!3502403))

(assert (=> d!884929 m!3502401))

(assert (=> d!884929 m!3502403))

(declare-fun m!3502405 () Bool)

(assert (=> d!884929 m!3502405))

(assert (=> d!884929 m!3502203))

(declare-fun m!3502407 () Bool)

(assert (=> d!884929 m!3502407))

(assert (=> d!884929 m!3502401))

(declare-fun m!3502409 () Bool)

(assert (=> d!884929 m!3502409))

(declare-fun m!3502411 () Bool)

(assert (=> b!3224306 m!3502411))

(declare-fun m!3502413 () Bool)

(assert (=> b!3224307 m!3502413))

(assert (=> b!3224308 m!3502401))

(assert (=> b!3224308 m!3502401))

(assert (=> b!3224308 m!3502403))

(assert (=> b!3224308 m!3502403))

(assert (=> b!3224308 m!3502405))

(declare-fun m!3502415 () Bool)

(assert (=> b!3224308 m!3502415))

(assert (=> b!3224088 d!884929))

(declare-fun d!884943 () Bool)

(declare-fun res!1313212 () Bool)

(declare-fun e!2010941 () Bool)

(assert (=> d!884943 (=> (not res!1313212) (not e!2010941))))

(declare-fun rulesValid!1923 (LexerInterface!4845 List!36438) Bool)

(assert (=> d!884943 (= res!1313212 (rulesValid!1923 thiss!18206 rules!2135))))

(assert (=> d!884943 (= (rulesInvariant!4242 thiss!18206 rules!2135) e!2010941)))

(declare-fun b!3224311 () Bool)

(declare-datatypes ((List!36441 0))(
  ( (Nil!36317) (Cons!36317 (h!41737 String!40764) (t!240790 List!36441)) )
))
(declare-fun noDuplicateTag!1919 (LexerInterface!4845 List!36438 List!36441) Bool)

(assert (=> b!3224311 (= e!2010941 (noDuplicateTag!1919 thiss!18206 rules!2135 Nil!36317))))

(assert (= (and d!884943 res!1313212) b!3224311))

(declare-fun m!3502417 () Bool)

(assert (=> d!884943 m!3502417))

(declare-fun m!3502419 () Bool)

(assert (=> b!3224311 m!3502419))

(assert (=> b!3224099 d!884943))

(declare-fun d!884945 () Bool)

(declare-fun list!12941 (Conc!10887) List!36437)

(assert (=> d!884945 (= (list!12937 (charsOf!3272 (h!41735 tokens!494))) (list!12941 (c!541877 (charsOf!3272 (h!41735 tokens!494)))))))

(declare-fun bs!542662 () Bool)

(assert (= bs!542662 d!884945))

(declare-fun m!3502421 () Bool)

(assert (=> bs!542662 m!3502421))

(assert (=> b!3224102 d!884945))

(declare-fun d!884947 () Bool)

(declare-fun lt!1093857 () BalanceConc!21388)

(assert (=> d!884947 (= (list!12937 lt!1093857) (originalCharacters!5970 (h!41735 tokens!494)))))

(declare-fun dynLambda!14743 (Int TokenValue!5486) BalanceConc!21388)

(assert (=> d!884947 (= lt!1093857 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))))

(assert (=> d!884947 (= (charsOf!3272 (h!41735 tokens!494)) lt!1093857)))

(declare-fun b_lambda!88661 () Bool)

(assert (=> (not b_lambda!88661) (not d!884947)))

(declare-fun t!240770 () Bool)

(declare-fun tb!159395 () Bool)

(assert (=> (and b!3224090 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) t!240770) tb!159395))

(declare-fun b!3224316 () Bool)

(declare-fun e!2010944 () Bool)

(declare-fun tp!1015781 () Bool)

(declare-fun inv!49184 (Conc!10887) Bool)

(assert (=> b!3224316 (= e!2010944 (and (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))) tp!1015781))))

(declare-fun result!201850 () Bool)

(declare-fun inv!49185 (BalanceConc!21388) Bool)

(assert (=> tb!159395 (= result!201850 (and (inv!49185 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))) e!2010944))))

(assert (= tb!159395 b!3224316))

(declare-fun m!3502423 () Bool)

(assert (=> b!3224316 m!3502423))

(declare-fun m!3502425 () Bool)

(assert (=> tb!159395 m!3502425))

(assert (=> d!884947 t!240770))

(declare-fun b_and!215661 () Bool)

(assert (= b_and!215625 (and (=> t!240770 result!201850) b_and!215661)))

(declare-fun t!240772 () Bool)

(declare-fun tb!159397 () Bool)

(assert (=> (and b!3224091 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) t!240772) tb!159397))

(declare-fun result!201854 () Bool)

(assert (= result!201854 result!201850))

(assert (=> d!884947 t!240772))

(declare-fun b_and!215663 () Bool)

(assert (= b_and!215629 (and (=> t!240772 result!201854) b_and!215663)))

(declare-fun t!240774 () Bool)

(declare-fun tb!159399 () Bool)

(assert (=> (and b!3224092 (= (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) t!240774) tb!159399))

(declare-fun result!201856 () Bool)

(assert (= result!201856 result!201850))

(assert (=> d!884947 t!240774))

(declare-fun b_and!215665 () Bool)

(assert (= b_and!215633 (and (=> t!240774 result!201856) b_and!215665)))

(declare-fun m!3502427 () Bool)

(assert (=> d!884947 m!3502427))

(declare-fun m!3502429 () Bool)

(assert (=> d!884947 m!3502429))

(assert (=> b!3224102 d!884947))

(declare-fun b!3224317 () Bool)

(declare-fun e!2010945 () Bool)

(assert (=> b!3224317 (= e!2010945 (inv!17 (value!170256 (h!41735 tokens!494))))))

(declare-fun b!3224318 () Bool)

(declare-fun res!1313213 () Bool)

(declare-fun e!2010947 () Bool)

(assert (=> b!3224318 (=> res!1313213 e!2010947)))

(assert (=> b!3224318 (= res!1313213 (not ((_ is IntegerValue!16460) (value!170256 (h!41735 tokens!494)))))))

(assert (=> b!3224318 (= e!2010945 e!2010947)))

(declare-fun b!3224319 () Bool)

(declare-fun e!2010946 () Bool)

(assert (=> b!3224319 (= e!2010946 (inv!16 (value!170256 (h!41735 tokens!494))))))

(declare-fun d!884949 () Bool)

(declare-fun c!541899 () Bool)

(assert (=> d!884949 (= c!541899 ((_ is IntegerValue!16458) (value!170256 (h!41735 tokens!494))))))

(assert (=> d!884949 (= (inv!21 (value!170256 (h!41735 tokens!494))) e!2010946)))

(declare-fun b!3224320 () Bool)

(assert (=> b!3224320 (= e!2010946 e!2010945)))

(declare-fun c!541900 () Bool)

(assert (=> b!3224320 (= c!541900 ((_ is IntegerValue!16459) (value!170256 (h!41735 tokens!494))))))

(declare-fun b!3224321 () Bool)

(assert (=> b!3224321 (= e!2010947 (inv!15 (value!170256 (h!41735 tokens!494))))))

(assert (= (and d!884949 c!541899) b!3224319))

(assert (= (and d!884949 (not c!541899)) b!3224320))

(assert (= (and b!3224320 c!541900) b!3224317))

(assert (= (and b!3224320 (not c!541900)) b!3224318))

(assert (= (and b!3224318 (not res!1313213)) b!3224321))

(declare-fun m!3502431 () Bool)

(assert (=> b!3224317 m!3502431))

(declare-fun m!3502433 () Bool)

(assert (=> b!3224319 m!3502433))

(declare-fun m!3502435 () Bool)

(assert (=> b!3224321 m!3502435))

(assert (=> b!3224103 d!884949))

(declare-fun d!884951 () Bool)

(assert (=> d!884951 (= (inv!49177 (tag!5788 (rule!7714 separatorToken!241))) (= (mod (str.len (value!170255 (tag!5788 (rule!7714 separatorToken!241)))) 2) 0))))

(assert (=> b!3224101 d!884951))

(declare-fun d!884953 () Bool)

(declare-fun res!1313216 () Bool)

(declare-fun e!2010950 () Bool)

(assert (=> d!884953 (=> (not res!1313216) (not e!2010950))))

(declare-fun semiInverseModEq!2163 (Int Int) Bool)

(assert (=> d!884953 (= res!1313216 (semiInverseModEq!2163 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241)))))))

(assert (=> d!884953 (= (inv!49181 (transformation!5256 (rule!7714 separatorToken!241))) e!2010950)))

(declare-fun b!3224324 () Bool)

(declare-fun equivClasses!2062 (Int Int) Bool)

(assert (=> b!3224324 (= e!2010950 (equivClasses!2062 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241)))))))

(assert (= (and d!884953 res!1313216) b!3224324))

(declare-fun m!3502437 () Bool)

(assert (=> d!884953 m!3502437))

(declare-fun m!3502439 () Bool)

(assert (=> b!3224324 m!3502439))

(assert (=> b!3224101 d!884953))

(declare-fun d!884955 () Bool)

(assert (=> d!884955 (= (isEmpty!20393 rules!2135) ((_ is Nil!36314) rules!2135))))

(assert (=> b!3224094 d!884955))

(declare-fun d!884957 () Bool)

(assert (=> d!884957 (= (inv!49177 (tag!5788 (h!41734 rules!2135))) (= (mod (str.len (value!170255 (tag!5788 (h!41734 rules!2135)))) 2) 0))))

(assert (=> b!3224105 d!884957))

(declare-fun d!884959 () Bool)

(declare-fun res!1313217 () Bool)

(declare-fun e!2010951 () Bool)

(assert (=> d!884959 (=> (not res!1313217) (not e!2010951))))

(assert (=> d!884959 (= res!1313217 (semiInverseModEq!2163 (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toValue!7352 (transformation!5256 (h!41734 rules!2135)))))))

(assert (=> d!884959 (= (inv!49181 (transformation!5256 (h!41734 rules!2135))) e!2010951)))

(declare-fun b!3224325 () Bool)

(assert (=> b!3224325 (= e!2010951 (equivClasses!2062 (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toValue!7352 (transformation!5256 (h!41734 rules!2135)))))))

(assert (= (and d!884959 res!1313217) b!3224325))

(declare-fun m!3502441 () Bool)

(assert (=> d!884959 m!3502441))

(declare-fun m!3502443 () Bool)

(assert (=> b!3224325 m!3502443))

(assert (=> b!3224105 d!884959))

(declare-fun d!884961 () Bool)

(declare-fun res!1313222 () Bool)

(declare-fun e!2010954 () Bool)

(assert (=> d!884961 (=> (not res!1313222) (not e!2010954))))

(declare-fun isEmpty!20397 (List!36437) Bool)

(assert (=> d!884961 (= res!1313222 (not (isEmpty!20397 (originalCharacters!5970 separatorToken!241))))))

(assert (=> d!884961 (= (inv!49180 separatorToken!241) e!2010954)))

(declare-fun b!3224330 () Bool)

(declare-fun res!1313223 () Bool)

(assert (=> b!3224330 (=> (not res!1313223) (not e!2010954))))

(assert (=> b!3224330 (= res!1313223 (= (originalCharacters!5970 separatorToken!241) (list!12937 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))))))

(declare-fun b!3224331 () Bool)

(declare-fun size!27381 (List!36437) Int)

(assert (=> b!3224331 (= e!2010954 (= (size!27377 separatorToken!241) (size!27381 (originalCharacters!5970 separatorToken!241))))))

(assert (= (and d!884961 res!1313222) b!3224330))

(assert (= (and b!3224330 res!1313223) b!3224331))

(declare-fun b_lambda!88663 () Bool)

(assert (=> (not b_lambda!88663) (not b!3224330)))

(declare-fun tb!159401 () Bool)

(declare-fun t!240776 () Bool)

(assert (=> (and b!3224090 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) t!240776) tb!159401))

(declare-fun b!3224332 () Bool)

(declare-fun e!2010955 () Bool)

(declare-fun tp!1015782 () Bool)

(assert (=> b!3224332 (= e!2010955 (and (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))) tp!1015782))))

(declare-fun result!201858 () Bool)

(assert (=> tb!159401 (= result!201858 (and (inv!49185 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))) e!2010955))))

(assert (= tb!159401 b!3224332))

(declare-fun m!3502445 () Bool)

(assert (=> b!3224332 m!3502445))

(declare-fun m!3502447 () Bool)

(assert (=> tb!159401 m!3502447))

(assert (=> b!3224330 t!240776))

(declare-fun b_and!215667 () Bool)

(assert (= b_and!215661 (and (=> t!240776 result!201858) b_and!215667)))

(declare-fun t!240778 () Bool)

(declare-fun tb!159403 () Bool)

(assert (=> (and b!3224091 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) t!240778) tb!159403))

(declare-fun result!201860 () Bool)

(assert (= result!201860 result!201858))

(assert (=> b!3224330 t!240778))

(declare-fun b_and!215669 () Bool)

(assert (= b_and!215663 (and (=> t!240778 result!201860) b_and!215669)))

(declare-fun t!240780 () Bool)

(declare-fun tb!159405 () Bool)

(assert (=> (and b!3224092 (= (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) t!240780) tb!159405))

(declare-fun result!201862 () Bool)

(assert (= result!201862 result!201858))

(assert (=> b!3224330 t!240780))

(declare-fun b_and!215671 () Bool)

(assert (= b_and!215665 (and (=> t!240780 result!201862) b_and!215671)))

(declare-fun m!3502449 () Bool)

(assert (=> d!884961 m!3502449))

(declare-fun m!3502451 () Bool)

(assert (=> b!3224330 m!3502451))

(assert (=> b!3224330 m!3502451))

(declare-fun m!3502453 () Bool)

(assert (=> b!3224330 m!3502453))

(declare-fun m!3502455 () Bool)

(assert (=> b!3224331 m!3502455))

(assert (=> start!302722 d!884961))

(declare-fun d!884963 () Bool)

(assert (=> d!884963 (= (inv!49177 (tag!5788 (rule!7714 (h!41735 tokens!494)))) (= (mod (str.len (value!170255 (tag!5788 (rule!7714 (h!41735 tokens!494))))) 2) 0))))

(assert (=> b!3224095 d!884963))

(declare-fun d!884965 () Bool)

(declare-fun res!1313224 () Bool)

(declare-fun e!2010956 () Bool)

(assert (=> d!884965 (=> (not res!1313224) (not e!2010956))))

(assert (=> d!884965 (= res!1313224 (semiInverseModEq!2163 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494))))))))

(assert (=> d!884965 (= (inv!49181 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) e!2010956)))

(declare-fun b!3224333 () Bool)

(assert (=> b!3224333 (= e!2010956 (equivClasses!2062 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494))))))))

(assert (= (and d!884965 res!1313224) b!3224333))

(declare-fun m!3502457 () Bool)

(assert (=> d!884965 m!3502457))

(declare-fun m!3502459 () Bool)

(assert (=> b!3224333 m!3502459))

(assert (=> b!3224095 d!884965))

(declare-fun d!884967 () Bool)

(declare-fun lt!1093860 () BalanceConc!21388)

(assert (=> d!884967 (= (list!12937 lt!1093860) (printList!1395 thiss!18206 (list!12940 lt!1093804)))))

(assert (=> d!884967 (= lt!1093860 (printTailRec!1342 thiss!18206 lt!1093804 0 (BalanceConc!21389 Empty!10887)))))

(assert (=> d!884967 (= (print!1910 thiss!18206 lt!1093804) lt!1093860)))

(declare-fun bs!542663 () Bool)

(assert (= bs!542663 d!884967))

(declare-fun m!3502461 () Bool)

(assert (=> bs!542663 m!3502461))

(declare-fun m!3502463 () Bool)

(assert (=> bs!542663 m!3502463))

(assert (=> bs!542663 m!3502463))

(declare-fun m!3502465 () Bool)

(assert (=> bs!542663 m!3502465))

(assert (=> bs!542663 m!3502169))

(assert (=> b!3224093 d!884967))

(declare-fun d!884969 () Bool)

(assert (=> d!884969 (= (list!12937 lt!1093803) (list!12941 (c!541877 lt!1093803)))))

(declare-fun bs!542664 () Bool)

(assert (= bs!542664 d!884969))

(declare-fun m!3502467 () Bool)

(assert (=> bs!542664 m!3502467))

(assert (=> b!3224093 d!884969))

(declare-fun d!884971 () Bool)

(declare-fun lt!1093881 () BalanceConc!21388)

(declare-fun printListTailRec!569 (LexerInterface!4845 List!36439 List!36437) List!36437)

(declare-fun dropList!1086 (BalanceConc!21390 Int) List!36439)

(assert (=> d!884971 (= (list!12937 lt!1093881) (printListTailRec!569 thiss!18206 (dropList!1086 lt!1093804 0) (list!12937 (BalanceConc!21389 Empty!10887))))))

(declare-fun e!2010961 () BalanceConc!21388)

(assert (=> d!884971 (= lt!1093881 e!2010961)))

(declare-fun c!541903 () Bool)

(assert (=> d!884971 (= c!541903 (>= 0 (size!27380 lt!1093804)))))

(declare-fun e!2010962 () Bool)

(assert (=> d!884971 e!2010962))

(declare-fun res!1313227 () Bool)

(assert (=> d!884971 (=> (not res!1313227) (not e!2010962))))

(assert (=> d!884971 (= res!1313227 (>= 0 0))))

(assert (=> d!884971 (= (printTailRec!1342 thiss!18206 lt!1093804 0 (BalanceConc!21389 Empty!10887)) lt!1093881)))

(declare-fun b!3224340 () Bool)

(assert (=> b!3224340 (= e!2010962 (<= 0 (size!27380 lt!1093804)))))

(declare-fun b!3224341 () Bool)

(assert (=> b!3224341 (= e!2010961 (BalanceConc!21389 Empty!10887))))

(declare-fun b!3224342 () Bool)

(declare-fun ++!8733 (BalanceConc!21388 BalanceConc!21388) BalanceConc!21388)

(assert (=> b!3224342 (= e!2010961 (printTailRec!1342 thiss!18206 lt!1093804 (+ 0 1) (++!8733 (BalanceConc!21389 Empty!10887) (charsOf!3272 (apply!8279 lt!1093804 0)))))))

(declare-fun lt!1093876 () List!36439)

(assert (=> b!3224342 (= lt!1093876 (list!12940 lt!1093804))))

(declare-datatypes ((Unit!50916 0))(
  ( (Unit!50917) )
))
(declare-fun lt!1093878 () Unit!50916)

(declare-fun lemmaDropApply!1045 (List!36439 Int) Unit!50916)

(assert (=> b!3224342 (= lt!1093878 (lemmaDropApply!1045 lt!1093876 0))))

(declare-fun head!7081 (List!36439) Token!9878)

(declare-fun drop!1869 (List!36439 Int) List!36439)

(declare-fun apply!8280 (List!36439 Int) Token!9878)

(assert (=> b!3224342 (= (head!7081 (drop!1869 lt!1093876 0)) (apply!8280 lt!1093876 0))))

(declare-fun lt!1093879 () Unit!50916)

(assert (=> b!3224342 (= lt!1093879 lt!1093878)))

(declare-fun lt!1093877 () List!36439)

(assert (=> b!3224342 (= lt!1093877 (list!12940 lt!1093804))))

(declare-fun lt!1093875 () Unit!50916)

(declare-fun lemmaDropTail!929 (List!36439 Int) Unit!50916)

(assert (=> b!3224342 (= lt!1093875 (lemmaDropTail!929 lt!1093877 0))))

(declare-fun tail!5225 (List!36439) List!36439)

(assert (=> b!3224342 (= (tail!5225 (drop!1869 lt!1093877 0)) (drop!1869 lt!1093877 (+ 0 1)))))

(declare-fun lt!1093880 () Unit!50916)

(assert (=> b!3224342 (= lt!1093880 lt!1093875)))

(assert (= (and d!884971 res!1313227) b!3224340))

(assert (= (and d!884971 c!541903) b!3224341))

(assert (= (and d!884971 (not c!541903)) b!3224342))

(declare-fun m!3502469 () Bool)

(assert (=> d!884971 m!3502469))

(declare-fun m!3502471 () Bool)

(assert (=> d!884971 m!3502471))

(declare-fun m!3502473 () Bool)

(assert (=> d!884971 m!3502473))

(assert (=> d!884971 m!3502469))

(declare-fun m!3502475 () Bool)

(assert (=> d!884971 m!3502475))

(assert (=> d!884971 m!3502473))

(declare-fun m!3502477 () Bool)

(assert (=> d!884971 m!3502477))

(assert (=> b!3224340 m!3502477))

(declare-fun m!3502479 () Bool)

(assert (=> b!3224342 m!3502479))

(declare-fun m!3502481 () Bool)

(assert (=> b!3224342 m!3502481))

(declare-fun m!3502483 () Bool)

(assert (=> b!3224342 m!3502483))

(declare-fun m!3502485 () Bool)

(assert (=> b!3224342 m!3502485))

(declare-fun m!3502487 () Bool)

(assert (=> b!3224342 m!3502487))

(assert (=> b!3224342 m!3502479))

(declare-fun m!3502489 () Bool)

(assert (=> b!3224342 m!3502489))

(assert (=> b!3224342 m!3502483))

(declare-fun m!3502491 () Bool)

(assert (=> b!3224342 m!3502491))

(declare-fun m!3502493 () Bool)

(assert (=> b!3224342 m!3502493))

(assert (=> b!3224342 m!3502485))

(assert (=> b!3224342 m!3502463))

(declare-fun m!3502495 () Bool)

(assert (=> b!3224342 m!3502495))

(declare-fun m!3502497 () Bool)

(assert (=> b!3224342 m!3502497))

(assert (=> b!3224342 m!3502487))

(assert (=> b!3224342 m!3502495))

(declare-fun m!3502499 () Bool)

(assert (=> b!3224342 m!3502499))

(declare-fun m!3502501 () Bool)

(assert (=> b!3224342 m!3502501))

(assert (=> b!3224093 d!884971))

(declare-fun d!884973 () Bool)

(declare-fun e!2010965 () Bool)

(assert (=> d!884973 e!2010965))

(declare-fun res!1313230 () Bool)

(assert (=> d!884973 (=> (not res!1313230) (not e!2010965))))

(declare-fun lt!1093884 () BalanceConc!21390)

(assert (=> d!884973 (= res!1313230 (= (list!12940 lt!1093884) (Cons!36315 (h!41735 tokens!494) Nil!36315)))))

(declare-fun singleton!1002 (Token!9878) BalanceConc!21390)

(assert (=> d!884973 (= lt!1093884 (singleton!1002 (h!41735 tokens!494)))))

(assert (=> d!884973 (= (singletonSeq!2352 (h!41735 tokens!494)) lt!1093884)))

(declare-fun b!3224345 () Bool)

(declare-fun isBalanced!3231 (Conc!10888) Bool)

(assert (=> b!3224345 (= e!2010965 (isBalanced!3231 (c!541878 lt!1093884)))))

(assert (= (and d!884973 res!1313230) b!3224345))

(declare-fun m!3502503 () Bool)

(assert (=> d!884973 m!3502503))

(declare-fun m!3502505 () Bool)

(assert (=> d!884973 m!3502505))

(declare-fun m!3502507 () Bool)

(assert (=> b!3224345 m!3502507))

(assert (=> b!3224093 d!884973))

(declare-fun d!884975 () Bool)

(declare-fun c!541906 () Bool)

(assert (=> d!884975 (= c!541906 ((_ is Cons!36315) (Cons!36315 (h!41735 tokens!494) Nil!36315)))))

(declare-fun e!2010968 () List!36437)

(assert (=> d!884975 (= (printList!1395 thiss!18206 (Cons!36315 (h!41735 tokens!494) Nil!36315)) e!2010968)))

(declare-fun b!3224350 () Bool)

(declare-fun ++!8734 (List!36437 List!36437) List!36437)

(assert (=> b!3224350 (= e!2010968 (++!8734 (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))) (printList!1395 thiss!18206 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))))

(declare-fun b!3224351 () Bool)

(assert (=> b!3224351 (= e!2010968 Nil!36313)))

(assert (= (and d!884975 c!541906) b!3224350))

(assert (= (and d!884975 (not c!541906)) b!3224351))

(declare-fun m!3502509 () Bool)

(assert (=> b!3224350 m!3502509))

(assert (=> b!3224350 m!3502509))

(declare-fun m!3502511 () Bool)

(assert (=> b!3224350 m!3502511))

(declare-fun m!3502513 () Bool)

(assert (=> b!3224350 m!3502513))

(assert (=> b!3224350 m!3502511))

(assert (=> b!3224350 m!3502513))

(declare-fun m!3502515 () Bool)

(assert (=> b!3224350 m!3502515))

(assert (=> b!3224093 d!884975))

(declare-fun d!884977 () Bool)

(declare-fun res!1313231 () Bool)

(declare-fun e!2010969 () Bool)

(assert (=> d!884977 (=> (not res!1313231) (not e!2010969))))

(assert (=> d!884977 (= res!1313231 (not (isEmpty!20397 (originalCharacters!5970 (h!41735 tokens!494)))))))

(assert (=> d!884977 (= (inv!49180 (h!41735 tokens!494)) e!2010969)))

(declare-fun b!3224352 () Bool)

(declare-fun res!1313232 () Bool)

(assert (=> b!3224352 (=> (not res!1313232) (not e!2010969))))

(assert (=> b!3224352 (= res!1313232 (= (originalCharacters!5970 (h!41735 tokens!494)) (list!12937 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))))))

(declare-fun b!3224353 () Bool)

(assert (=> b!3224353 (= e!2010969 (= (size!27377 (h!41735 tokens!494)) (size!27381 (originalCharacters!5970 (h!41735 tokens!494)))))))

(assert (= (and d!884977 res!1313231) b!3224352))

(assert (= (and b!3224352 res!1313232) b!3224353))

(declare-fun b_lambda!88665 () Bool)

(assert (=> (not b_lambda!88665) (not b!3224352)))

(assert (=> b!3224352 t!240770))

(declare-fun b_and!215673 () Bool)

(assert (= b_and!215667 (and (=> t!240770 result!201850) b_and!215673)))

(assert (=> b!3224352 t!240772))

(declare-fun b_and!215675 () Bool)

(assert (= b_and!215669 (and (=> t!240772 result!201854) b_and!215675)))

(assert (=> b!3224352 t!240774))

(declare-fun b_and!215677 () Bool)

(assert (= b_and!215671 (and (=> t!240774 result!201856) b_and!215677)))

(declare-fun m!3502517 () Bool)

(assert (=> d!884977 m!3502517))

(assert (=> b!3224352 m!3502429))

(assert (=> b!3224352 m!3502429))

(declare-fun m!3502519 () Bool)

(assert (=> b!3224352 m!3502519))

(declare-fun m!3502521 () Bool)

(assert (=> b!3224353 m!3502521))

(assert (=> b!3224104 d!884977))

(declare-fun b!3224358 () Bool)

(declare-fun e!2010972 () Bool)

(declare-fun tp_is_empty!17313 () Bool)

(declare-fun tp!1015785 () Bool)

(assert (=> b!3224358 (= e!2010972 (and tp_is_empty!17313 tp!1015785))))

(assert (=> b!3224103 (= tp!1015708 e!2010972)))

(assert (= (and b!3224103 ((_ is Cons!36313) (originalCharacters!5970 (h!41735 tokens!494)))) b!3224358))

(declare-fun b!3224359 () Bool)

(declare-fun e!2010973 () Bool)

(declare-fun tp!1015786 () Bool)

(assert (=> b!3224359 (= e!2010973 (and tp_is_empty!17313 tp!1015786))))

(assert (=> b!3224106 (= tp!1015716 e!2010973)))

(assert (= (and b!3224106 ((_ is Cons!36313) (originalCharacters!5970 separatorToken!241))) b!3224359))

(declare-fun b!3224370 () Bool)

(declare-fun e!2010976 () Bool)

(assert (=> b!3224370 (= e!2010976 tp_is_empty!17313)))

(assert (=> b!3224101 (= tp!1015713 e!2010976)))

(declare-fun b!3224372 () Bool)

(declare-fun tp!1015797 () Bool)

(assert (=> b!3224372 (= e!2010976 tp!1015797)))

(declare-fun b!3224373 () Bool)

(declare-fun tp!1015799 () Bool)

(declare-fun tp!1015798 () Bool)

(assert (=> b!3224373 (= e!2010976 (and tp!1015799 tp!1015798))))

(declare-fun b!3224371 () Bool)

(declare-fun tp!1015800 () Bool)

(declare-fun tp!1015801 () Bool)

(assert (=> b!3224371 (= e!2010976 (and tp!1015800 tp!1015801))))

(assert (= (and b!3224101 ((_ is ElementMatch!10015) (regex!5256 (rule!7714 separatorToken!241)))) b!3224370))

(assert (= (and b!3224101 ((_ is Concat!15501) (regex!5256 (rule!7714 separatorToken!241)))) b!3224371))

(assert (= (and b!3224101 ((_ is Star!10015) (regex!5256 (rule!7714 separatorToken!241)))) b!3224372))

(assert (= (and b!3224101 ((_ is Union!10015) (regex!5256 (rule!7714 separatorToken!241)))) b!3224373))

(declare-fun b!3224384 () Bool)

(declare-fun b_free!85917 () Bool)

(declare-fun b_next!86621 () Bool)

(assert (=> b!3224384 (= b_free!85917 (not b_next!86621))))

(declare-fun tp!1015812 () Bool)

(declare-fun b_and!215679 () Bool)

(assert (=> b!3224384 (= tp!1015812 b_and!215679)))

(declare-fun b_free!85919 () Bool)

(declare-fun b_next!86623 () Bool)

(assert (=> b!3224384 (= b_free!85919 (not b_next!86623))))

(declare-fun t!240783 () Bool)

(declare-fun tb!159407 () Bool)

(assert (=> (and b!3224384 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) t!240783) tb!159407))

(declare-fun result!201870 () Bool)

(assert (= result!201870 result!201850))

(assert (=> d!884947 t!240783))

(declare-fun tb!159409 () Bool)

(declare-fun t!240785 () Bool)

(assert (=> (and b!3224384 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) t!240785) tb!159409))

(declare-fun result!201872 () Bool)

(assert (= result!201872 result!201858))

(assert (=> b!3224330 t!240785))

(assert (=> b!3224352 t!240783))

(declare-fun tp!1015810 () Bool)

(declare-fun b_and!215681 () Bool)

(assert (=> b!3224384 (= tp!1015810 (and (=> t!240783 result!201870) (=> t!240785 result!201872) b_and!215681))))

(declare-fun e!2010986 () Bool)

(assert (=> b!3224384 (= e!2010986 (and tp!1015812 tp!1015810))))

(declare-fun tp!1015811 () Bool)

(declare-fun b!3224383 () Bool)

(declare-fun e!2010987 () Bool)

(assert (=> b!3224383 (= e!2010987 (and tp!1015811 (inv!49177 (tag!5788 (h!41734 (t!240735 rules!2135)))) (inv!49181 (transformation!5256 (h!41734 (t!240735 rules!2135)))) e!2010986))))

(declare-fun b!3224382 () Bool)

(declare-fun e!2010985 () Bool)

(declare-fun tp!1015813 () Bool)

(assert (=> b!3224382 (= e!2010985 (and e!2010987 tp!1015813))))

(assert (=> b!3224089 (= tp!1015717 e!2010985)))

(assert (= b!3224383 b!3224384))

(assert (= b!3224382 b!3224383))

(assert (= (and b!3224089 ((_ is Cons!36314) (t!240735 rules!2135))) b!3224382))

(declare-fun m!3502523 () Bool)

(assert (=> b!3224383 m!3502523))

(declare-fun m!3502525 () Bool)

(assert (=> b!3224383 m!3502525))

(declare-fun b!3224385 () Bool)

(declare-fun e!2010989 () Bool)

(assert (=> b!3224385 (= e!2010989 tp_is_empty!17313)))

(assert (=> b!3224105 (= tp!1015707 e!2010989)))

(declare-fun b!3224387 () Bool)

(declare-fun tp!1015814 () Bool)

(assert (=> b!3224387 (= e!2010989 tp!1015814)))

(declare-fun b!3224388 () Bool)

(declare-fun tp!1015816 () Bool)

(declare-fun tp!1015815 () Bool)

(assert (=> b!3224388 (= e!2010989 (and tp!1015816 tp!1015815))))

(declare-fun b!3224386 () Bool)

(declare-fun tp!1015817 () Bool)

(declare-fun tp!1015818 () Bool)

(assert (=> b!3224386 (= e!2010989 (and tp!1015817 tp!1015818))))

(assert (= (and b!3224105 ((_ is ElementMatch!10015) (regex!5256 (h!41734 rules!2135)))) b!3224385))

(assert (= (and b!3224105 ((_ is Concat!15501) (regex!5256 (h!41734 rules!2135)))) b!3224386))

(assert (= (and b!3224105 ((_ is Star!10015) (regex!5256 (h!41734 rules!2135)))) b!3224387))

(assert (= (and b!3224105 ((_ is Union!10015) (regex!5256 (h!41734 rules!2135)))) b!3224388))

(declare-fun b!3224389 () Bool)

(declare-fun e!2010990 () Bool)

(assert (=> b!3224389 (= e!2010990 tp_is_empty!17313)))

(assert (=> b!3224095 (= tp!1015718 e!2010990)))

(declare-fun b!3224391 () Bool)

(declare-fun tp!1015819 () Bool)

(assert (=> b!3224391 (= e!2010990 tp!1015819)))

(declare-fun b!3224392 () Bool)

(declare-fun tp!1015821 () Bool)

(declare-fun tp!1015820 () Bool)

(assert (=> b!3224392 (= e!2010990 (and tp!1015821 tp!1015820))))

(declare-fun b!3224390 () Bool)

(declare-fun tp!1015822 () Bool)

(declare-fun tp!1015823 () Bool)

(assert (=> b!3224390 (= e!2010990 (and tp!1015822 tp!1015823))))

(assert (= (and b!3224095 ((_ is ElementMatch!10015) (regex!5256 (rule!7714 (h!41735 tokens!494))))) b!3224389))

(assert (= (and b!3224095 ((_ is Concat!15501) (regex!5256 (rule!7714 (h!41735 tokens!494))))) b!3224390))

(assert (= (and b!3224095 ((_ is Star!10015) (regex!5256 (rule!7714 (h!41735 tokens!494))))) b!3224391))

(assert (= (and b!3224095 ((_ is Union!10015) (regex!5256 (rule!7714 (h!41735 tokens!494))))) b!3224392))

(declare-fun b!3224406 () Bool)

(declare-fun b_free!85921 () Bool)

(declare-fun b_next!86625 () Bool)

(assert (=> b!3224406 (= b_free!85921 (not b_next!86625))))

(declare-fun tp!1015838 () Bool)

(declare-fun b_and!215683 () Bool)

(assert (=> b!3224406 (= tp!1015838 b_and!215683)))

(declare-fun b_free!85923 () Bool)

(declare-fun b_next!86627 () Bool)

(assert (=> b!3224406 (= b_free!85923 (not b_next!86627))))

(declare-fun t!240787 () Bool)

(declare-fun tb!159411 () Bool)

(assert (=> (and b!3224406 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) t!240787) tb!159411))

(declare-fun result!201876 () Bool)

(assert (= result!201876 result!201850))

(assert (=> d!884947 t!240787))

(declare-fun t!240789 () Bool)

(declare-fun tb!159413 () Bool)

(assert (=> (and b!3224406 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) t!240789) tb!159413))

(declare-fun result!201878 () Bool)

(assert (= result!201878 result!201858))

(assert (=> b!3224330 t!240789))

(assert (=> b!3224352 t!240787))

(declare-fun b_and!215685 () Bool)

(declare-fun tp!1015836 () Bool)

(assert (=> b!3224406 (= tp!1015836 (and (=> t!240787 result!201876) (=> t!240789 result!201878) b_and!215685))))

(declare-fun tp!1015835 () Bool)

(declare-fun b!3224403 () Bool)

(declare-fun e!2011006 () Bool)

(declare-fun e!2011004 () Bool)

(assert (=> b!3224403 (= e!2011004 (and (inv!49180 (h!41735 (t!240736 tokens!494))) e!2011006 tp!1015835))))

(declare-fun tp!1015834 () Bool)

(declare-fun b!3224405 () Bool)

(declare-fun e!2011008 () Bool)

(declare-fun e!2011005 () Bool)

(assert (=> b!3224405 (= e!2011008 (and tp!1015834 (inv!49177 (tag!5788 (rule!7714 (h!41735 (t!240736 tokens!494))))) (inv!49181 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) e!2011005))))

(assert (=> b!3224406 (= e!2011005 (and tp!1015838 tp!1015836))))

(declare-fun b!3224404 () Bool)

(declare-fun tp!1015837 () Bool)

(assert (=> b!3224404 (= e!2011006 (and (inv!21 (value!170256 (h!41735 (t!240736 tokens!494)))) e!2011008 tp!1015837))))

(assert (=> b!3224104 (= tp!1015710 e!2011004)))

(assert (= b!3224405 b!3224406))

(assert (= b!3224404 b!3224405))

(assert (= b!3224403 b!3224404))

(assert (= (and b!3224104 ((_ is Cons!36315) (t!240736 tokens!494))) b!3224403))

(declare-fun m!3502527 () Bool)

(assert (=> b!3224403 m!3502527))

(declare-fun m!3502529 () Bool)

(assert (=> b!3224405 m!3502529))

(declare-fun m!3502531 () Bool)

(assert (=> b!3224405 m!3502531))

(declare-fun m!3502533 () Bool)

(assert (=> b!3224404 m!3502533))

(declare-fun b_lambda!88667 () Bool)

(assert (= b_lambda!88663 (or (and b!3224092 b_free!85907) (and b!3224406 b_free!85923 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))))) (and b!3224384 b_free!85919 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))))) (and b!3224091 b_free!85903 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))))) (and b!3224090 b_free!85899 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))))) b_lambda!88667)))

(declare-fun b_lambda!88669 () Bool)

(assert (= b_lambda!88661 (or (and b!3224091 b_free!85903 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (and b!3224092 b_free!85907 (= (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (and b!3224384 b_free!85919 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (and b!3224406 b_free!85923 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (and b!3224090 b_free!85899) b_lambda!88669)))

(declare-fun b_lambda!88671 () Bool)

(assert (= b_lambda!88665 (or (and b!3224091 b_free!85903 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (and b!3224092 b_free!85907 (= (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (and b!3224384 b_free!85919 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (and b!3224406 b_free!85923 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (and b!3224090 b_free!85899) b_lambda!88671)))

(declare-fun b_lambda!88673 () Bool)

(assert (= b_lambda!88643 (or b!3224087 b_lambda!88673)))

(declare-fun bs!542665 () Bool)

(declare-fun d!884979 () Bool)

(assert (= bs!542665 (and d!884979 b!3224087)))

(assert (=> bs!542665 (= (dynLambda!14739 lambda!118033 (h!41735 tokens!494)) (not (isSeparator!5256 (rule!7714 (h!41735 tokens!494)))))))

(assert (=> b!3224118 d!884979))

(check-sat (not b!3224372) (not b_next!86603) (not d!884969) (not d!884953) (not b!3224134) (not b!3224130) (not tb!159395) (not d!884945) (not b_next!86605) b_and!215679 b_and!215683 (not b!3224119) (not b!3224388) (not b!3224132) (not d!884977) (not b!3224222) (not b!3224391) (not b!3224306) (not d!884967) (not b!3224321) (not b!3224382) (not b_next!86623) (not d!884965) (not b!3224371) (not b!3224405) b_and!215623 (not b!3224307) (not b!3224353) (not b!3224212) (not b!3224308) b_and!215675 b_and!215685 (not b_lambda!88671) (not b!3224316) (not d!884947) (not b!3224392) (not b!3224358) (not b!3224311) (not b_lambda!88669) (not b!3224324) (not b_next!86621) (not b!3224404) (not d!884973) (not d!884959) (not b_next!86601) (not b_next!86609) (not b!3224325) (not b!3224352) (not b_next!86625) (not b!3224333) (not b!3224386) (not b!3224345) (not b!3224403) b_and!215627 (not b!3224340) tp_is_empty!17313 (not tb!159401) (not b!3224387) (not b!3224319) (not d!884961) b_and!215677 (not d!884925) b_and!215631 (not b!3224221) (not b!3224350) (not b!3224332) (not b!3224330) (not d!884943) (not b!3224203) (not b_lambda!88667) (not b_next!86607) (not d!884971) b_and!215681 (not b!3224317) (not d!884929) (not b!3224390) (not b!3224383) (not b!3224359) (not b!3224342) (not b_lambda!88673) (not b!3224373) b_and!215673 (not b_next!86627) (not b!3224331) (not d!884897) (not b_next!86611))
(check-sat (not b_next!86603) (not b_next!86623) b_and!215623 (not b_next!86621) (not b_next!86625) b_and!215627 b_and!215677 b_and!215631 (not b_next!86607) b_and!215681 (not b_next!86611) (not b_next!86605) b_and!215679 b_and!215683 b_and!215675 b_and!215685 (not b_next!86601) (not b_next!86609) b_and!215673 (not b_next!86627))
(get-model)

(declare-fun d!885021 () Bool)

(declare-fun isBalanced!3232 (Conc!10887) Bool)

(assert (=> d!885021 (= (inv!49185 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))) (isBalanced!3232 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))))))

(declare-fun bs!542680 () Bool)

(assert (= bs!542680 d!885021))

(declare-fun m!3502623 () Bool)

(assert (=> bs!542680 m!3502623))

(assert (=> tb!159401 d!885021))

(declare-fun d!885023 () Bool)

(assert (=> d!885023 (= (inv!49185 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))) (isBalanced!3232 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))))))

(declare-fun bs!542681 () Bool)

(assert (= bs!542681 d!885023))

(declare-fun m!3502625 () Bool)

(assert (=> bs!542681 m!3502625))

(assert (=> tb!159395 d!885023))

(declare-fun d!885025 () Bool)

(assert (=> d!885025 true))

(declare-fun order!18695 () Int)

(declare-fun lambda!118049 () Int)

(declare-fun dynLambda!14744 (Int Int) Int)

(assert (=> d!885025 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) (dynLambda!14744 order!18695 lambda!118049))))

(declare-fun Forall2!869 (Int) Bool)

(assert (=> d!885025 (= (equivClasses!2062 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) (Forall2!869 lambda!118049))))

(declare-fun bs!542682 () Bool)

(assert (= bs!542682 d!885025))

(declare-fun m!3502627 () Bool)

(assert (=> bs!542682 m!3502627))

(assert (=> b!3224333 d!885025))

(declare-fun d!885027 () Bool)

(declare-fun list!12944 (Conc!10888) List!36439)

(assert (=> d!885027 (= (list!12940 lt!1093884) (list!12944 (c!541878 lt!1093884)))))

(declare-fun bs!542683 () Bool)

(assert (= bs!542683 d!885027))

(declare-fun m!3502629 () Bool)

(assert (=> bs!542683 m!3502629))

(assert (=> d!884973 d!885027))

(declare-fun d!885029 () Bool)

(declare-fun e!2011038 () Bool)

(assert (=> d!885029 e!2011038))

(declare-fun res!1313255 () Bool)

(assert (=> d!885029 (=> (not res!1313255) (not e!2011038))))

(declare-fun lt!1093911 () BalanceConc!21390)

(assert (=> d!885029 (= res!1313255 (= (list!12940 lt!1093911) (Cons!36315 (h!41735 tokens!494) Nil!36315)))))

(declare-fun choose!18807 (Token!9878) BalanceConc!21390)

(assert (=> d!885029 (= lt!1093911 (choose!18807 (h!41735 tokens!494)))))

(assert (=> d!885029 (= (singleton!1002 (h!41735 tokens!494)) lt!1093911)))

(declare-fun b!3224452 () Bool)

(assert (=> b!3224452 (= e!2011038 (isBalanced!3231 (c!541878 lt!1093911)))))

(assert (= (and d!885029 res!1313255) b!3224452))

(declare-fun m!3502631 () Bool)

(assert (=> d!885029 m!3502631))

(declare-fun m!3502633 () Bool)

(assert (=> d!885029 m!3502633))

(declare-fun m!3502635 () Bool)

(assert (=> b!3224452 m!3502635))

(assert (=> d!884973 d!885029))

(declare-fun d!885031 () Bool)

(declare-fun lt!1093914 () Token!9878)

(assert (=> d!885031 (= lt!1093914 (apply!8280 (list!12940 (_1!21008 lt!1093853)) 0))))

(declare-fun apply!8282 (Conc!10888 Int) Token!9878)

(assert (=> d!885031 (= lt!1093914 (apply!8282 (c!541878 (_1!21008 lt!1093853)) 0))))

(declare-fun e!2011041 () Bool)

(assert (=> d!885031 e!2011041))

(declare-fun res!1313258 () Bool)

(assert (=> d!885031 (=> (not res!1313258) (not e!2011041))))

(assert (=> d!885031 (= res!1313258 (<= 0 0))))

(assert (=> d!885031 (= (apply!8279 (_1!21008 lt!1093853) 0) lt!1093914)))

(declare-fun b!3224455 () Bool)

(assert (=> b!3224455 (= e!2011041 (< 0 (size!27380 (_1!21008 lt!1093853))))))

(assert (= (and d!885031 res!1313258) b!3224455))

(declare-fun m!3502637 () Bool)

(assert (=> d!885031 m!3502637))

(assert (=> d!885031 m!3502637))

(declare-fun m!3502639 () Bool)

(assert (=> d!885031 m!3502639))

(declare-fun m!3502641 () Bool)

(assert (=> d!885031 m!3502641))

(assert (=> b!3224455 m!3502407))

(assert (=> b!3224306 d!885031))

(declare-fun d!885033 () Bool)

(declare-fun c!541923 () Bool)

(assert (=> d!885033 (= c!541923 ((_ is Empty!10887) (c!541877 lt!1093803)))))

(declare-fun e!2011046 () List!36437)

(assert (=> d!885033 (= (list!12941 (c!541877 lt!1093803)) e!2011046)))

(declare-fun b!3224466 () Bool)

(declare-fun e!2011047 () List!36437)

(declare-fun list!12945 (IArray!21779) List!36437)

(assert (=> b!3224466 (= e!2011047 (list!12945 (xs!14005 (c!541877 lt!1093803))))))

(declare-fun b!3224464 () Bool)

(assert (=> b!3224464 (= e!2011046 Nil!36313)))

(declare-fun b!3224467 () Bool)

(assert (=> b!3224467 (= e!2011047 (++!8734 (list!12941 (left!28273 (c!541877 lt!1093803))) (list!12941 (right!28603 (c!541877 lt!1093803)))))))

(declare-fun b!3224465 () Bool)

(assert (=> b!3224465 (= e!2011046 e!2011047)))

(declare-fun c!541924 () Bool)

(assert (=> b!3224465 (= c!541924 ((_ is Leaf!17126) (c!541877 lt!1093803)))))

(assert (= (and d!885033 c!541923) b!3224464))

(assert (= (and d!885033 (not c!541923)) b!3224465))

(assert (= (and b!3224465 c!541924) b!3224466))

(assert (= (and b!3224465 (not c!541924)) b!3224467))

(declare-fun m!3502643 () Bool)

(assert (=> b!3224466 m!3502643))

(declare-fun m!3502645 () Bool)

(assert (=> b!3224467 m!3502645))

(declare-fun m!3502647 () Bool)

(assert (=> b!3224467 m!3502647))

(assert (=> b!3224467 m!3502645))

(assert (=> b!3224467 m!3502647))

(declare-fun m!3502649 () Bool)

(assert (=> b!3224467 m!3502649))

(assert (=> d!884969 d!885033))

(declare-fun d!885035 () Bool)

(assert (=> d!885035 true))

(declare-fun lambda!118052 () Int)

(declare-fun order!18697 () Int)

(declare-fun dynLambda!14746 (Int Int) Int)

(assert (=> d!885035 (< (dynLambda!14742 order!18693 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) (dynLambda!14746 order!18697 lambda!118052))))

(assert (=> d!885035 true))

(assert (=> d!885035 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241)))) (dynLambda!14746 order!18697 lambda!118052))))

(declare-fun Forall!1272 (Int) Bool)

(assert (=> d!885035 (= (semiInverseModEq!2163 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241)))) (Forall!1272 lambda!118052))))

(declare-fun bs!542684 () Bool)

(assert (= bs!542684 d!885035))

(declare-fun m!3502651 () Bool)

(assert (=> bs!542684 m!3502651))

(assert (=> d!884953 d!885035))

(declare-fun d!885037 () Bool)

(declare-fun lt!1093917 () Bool)

(assert (=> d!885037 (= lt!1093917 (isEmpty!20397 (list!12937 (_2!21008 (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)))))))))

(declare-fun isEmpty!20400 (Conc!10887) Bool)

(assert (=> d!885037 (= lt!1093917 (isEmpty!20400 (c!541877 (_2!21008 (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)))))))))

(assert (=> d!885037 (= (isEmpty!20396 (_2!21008 (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241))))) lt!1093917)))

(declare-fun bs!542685 () Bool)

(assert (= bs!542685 d!885037))

(declare-fun m!3502653 () Bool)

(assert (=> bs!542685 m!3502653))

(assert (=> bs!542685 m!3502653))

(declare-fun m!3502655 () Bool)

(assert (=> bs!542685 m!3502655))

(declare-fun m!3502657 () Bool)

(assert (=> bs!542685 m!3502657))

(assert (=> b!3224308 d!885037))

(declare-fun b!3224539 () Bool)

(declare-fun e!2011088 () Bool)

(declare-fun lt!1093933 () tuple2!35748)

(assert (=> b!3224539 (= e!2011088 (= (_2!21008 lt!1093933) (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241))))))

(declare-fun d!885039 () Bool)

(declare-fun e!2011090 () Bool)

(assert (=> d!885039 e!2011090))

(declare-fun res!1313291 () Bool)

(assert (=> d!885039 (=> (not res!1313291) (not e!2011090))))

(assert (=> d!885039 (= res!1313291 e!2011088)))

(declare-fun c!541940 () Bool)

(assert (=> d!885039 (= c!541940 (> (size!27380 (_1!21008 lt!1093933)) 0))))

(declare-fun lexTailRecV2!939 (LexerInterface!4845 List!36438 BalanceConc!21388 BalanceConc!21388 BalanceConc!21388 BalanceConc!21390) tuple2!35748)

(assert (=> d!885039 (= lt!1093933 (lexTailRecV2!939 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)) (BalanceConc!21389 Empty!10887) (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)) (BalanceConc!21391 Empty!10888)))))

(assert (=> d!885039 (= (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241))) lt!1093933)))

(declare-fun b!3224540 () Bool)

(declare-fun e!2011089 () Bool)

(declare-fun isEmpty!20401 (BalanceConc!21390) Bool)

(assert (=> b!3224540 (= e!2011089 (not (isEmpty!20401 (_1!21008 lt!1093933))))))

(declare-fun b!3224541 () Bool)

(declare-datatypes ((tuple2!35752 0))(
  ( (tuple2!35753 (_1!21010 List!36439) (_2!21010 List!36437)) )
))
(declare-fun lexList!1327 (LexerInterface!4845 List!36438 List!36437) tuple2!35752)

(assert (=> b!3224541 (= e!2011090 (= (list!12937 (_2!21008 lt!1093933)) (_2!21010 (lexList!1327 thiss!18206 rules!2135 (list!12937 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)))))))))

(declare-fun b!3224542 () Bool)

(declare-fun res!1313290 () Bool)

(assert (=> b!3224542 (=> (not res!1313290) (not e!2011090))))

(assert (=> b!3224542 (= res!1313290 (= (list!12940 (_1!21008 lt!1093933)) (_1!21010 (lexList!1327 thiss!18206 rules!2135 (list!12937 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)))))))))

(declare-fun b!3224543 () Bool)

(assert (=> b!3224543 (= e!2011088 e!2011089)))

(declare-fun res!1313289 () Bool)

(declare-fun size!27385 (BalanceConc!21388) Int)

(assert (=> b!3224543 (= res!1313289 (< (size!27385 (_2!21008 lt!1093933)) (size!27385 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)))))))

(assert (=> b!3224543 (=> (not res!1313289) (not e!2011089))))

(assert (= (and d!885039 c!541940) b!3224543))

(assert (= (and d!885039 (not c!541940)) b!3224539))

(assert (= (and b!3224543 res!1313289) b!3224540))

(assert (= (and d!885039 res!1313291) b!3224542))

(assert (= (and b!3224542 res!1313290) b!3224541))

(declare-fun m!3502745 () Bool)

(assert (=> b!3224542 m!3502745))

(assert (=> b!3224542 m!3502403))

(declare-fun m!3502747 () Bool)

(assert (=> b!3224542 m!3502747))

(assert (=> b!3224542 m!3502747))

(declare-fun m!3502749 () Bool)

(assert (=> b!3224542 m!3502749))

(declare-fun m!3502751 () Bool)

(assert (=> b!3224543 m!3502751))

(assert (=> b!3224543 m!3502403))

(declare-fun m!3502753 () Bool)

(assert (=> b!3224543 m!3502753))

(declare-fun m!3502755 () Bool)

(assert (=> d!885039 m!3502755))

(assert (=> d!885039 m!3502403))

(assert (=> d!885039 m!3502403))

(declare-fun m!3502757 () Bool)

(assert (=> d!885039 m!3502757))

(declare-fun m!3502759 () Bool)

(assert (=> b!3224540 m!3502759))

(declare-fun m!3502761 () Bool)

(assert (=> b!3224541 m!3502761))

(assert (=> b!3224541 m!3502403))

(assert (=> b!3224541 m!3502747))

(assert (=> b!3224541 m!3502747))

(assert (=> b!3224541 m!3502749))

(assert (=> b!3224308 d!885039))

(declare-fun d!885085 () Bool)

(declare-fun lt!1093934 () BalanceConc!21388)

(assert (=> d!885085 (= (list!12937 lt!1093934) (printList!1395 thiss!18206 (list!12940 (singletonSeq!2352 separatorToken!241))))))

(assert (=> d!885085 (= lt!1093934 (printTailRec!1342 thiss!18206 (singletonSeq!2352 separatorToken!241) 0 (BalanceConc!21389 Empty!10887)))))

(assert (=> d!885085 (= (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)) lt!1093934)))

(declare-fun bs!542695 () Bool)

(assert (= bs!542695 d!885085))

(declare-fun m!3502763 () Bool)

(assert (=> bs!542695 m!3502763))

(assert (=> bs!542695 m!3502401))

(assert (=> bs!542695 m!3502409))

(assert (=> bs!542695 m!3502409))

(declare-fun m!3502765 () Bool)

(assert (=> bs!542695 m!3502765))

(assert (=> bs!542695 m!3502401))

(declare-fun m!3502767 () Bool)

(assert (=> bs!542695 m!3502767))

(assert (=> b!3224308 d!885085))

(declare-fun d!885087 () Bool)

(declare-fun e!2011091 () Bool)

(assert (=> d!885087 e!2011091))

(declare-fun res!1313292 () Bool)

(assert (=> d!885087 (=> (not res!1313292) (not e!2011091))))

(declare-fun lt!1093935 () BalanceConc!21390)

(assert (=> d!885087 (= res!1313292 (= (list!12940 lt!1093935) (Cons!36315 separatorToken!241 Nil!36315)))))

(assert (=> d!885087 (= lt!1093935 (singleton!1002 separatorToken!241))))

(assert (=> d!885087 (= (singletonSeq!2352 separatorToken!241) lt!1093935)))

(declare-fun b!3224544 () Bool)

(assert (=> b!3224544 (= e!2011091 (isBalanced!3231 (c!541878 lt!1093935)))))

(assert (= (and d!885087 res!1313292) b!3224544))

(declare-fun m!3502769 () Bool)

(assert (=> d!885087 m!3502769))

(declare-fun m!3502771 () Bool)

(assert (=> d!885087 m!3502771))

(declare-fun m!3502773 () Bool)

(assert (=> b!3224544 m!3502773))

(assert (=> b!3224308 d!885087))

(declare-fun d!885089 () Bool)

(assert (=> d!885089 (= (list!12937 lt!1093860) (list!12941 (c!541877 lt!1093860)))))

(declare-fun bs!542696 () Bool)

(assert (= bs!542696 d!885089))

(declare-fun m!3502775 () Bool)

(assert (=> bs!542696 m!3502775))

(assert (=> d!884967 d!885089))

(declare-fun d!885091 () Bool)

(declare-fun c!541941 () Bool)

(assert (=> d!885091 (= c!541941 ((_ is Cons!36315) (list!12940 lt!1093804)))))

(declare-fun e!2011092 () List!36437)

(assert (=> d!885091 (= (printList!1395 thiss!18206 (list!12940 lt!1093804)) e!2011092)))

(declare-fun b!3224545 () Bool)

(assert (=> b!3224545 (= e!2011092 (++!8734 (list!12937 (charsOf!3272 (h!41735 (list!12940 lt!1093804)))) (printList!1395 thiss!18206 (t!240736 (list!12940 lt!1093804)))))))

(declare-fun b!3224546 () Bool)

(assert (=> b!3224546 (= e!2011092 Nil!36313)))

(assert (= (and d!885091 c!541941) b!3224545))

(assert (= (and d!885091 (not c!541941)) b!3224546))

(declare-fun m!3502777 () Bool)

(assert (=> b!3224545 m!3502777))

(assert (=> b!3224545 m!3502777))

(declare-fun m!3502779 () Bool)

(assert (=> b!3224545 m!3502779))

(declare-fun m!3502781 () Bool)

(assert (=> b!3224545 m!3502781))

(assert (=> b!3224545 m!3502779))

(assert (=> b!3224545 m!3502781))

(declare-fun m!3502783 () Bool)

(assert (=> b!3224545 m!3502783))

(assert (=> d!884967 d!885091))

(declare-fun d!885093 () Bool)

(assert (=> d!885093 (= (list!12940 lt!1093804) (list!12944 (c!541878 lt!1093804)))))

(declare-fun bs!542697 () Bool)

(assert (= bs!542697 d!885093))

(declare-fun m!3502785 () Bool)

(assert (=> bs!542697 m!3502785))

(assert (=> d!884967 d!885093))

(assert (=> d!884967 d!884971))

(declare-fun b!3224547 () Bool)

(declare-fun e!2011093 () Bool)

(assert (=> b!3224547 (= e!2011093 (inv!17 (value!170256 (h!41735 (t!240736 tokens!494)))))))

(declare-fun b!3224548 () Bool)

(declare-fun res!1313293 () Bool)

(declare-fun e!2011095 () Bool)

(assert (=> b!3224548 (=> res!1313293 e!2011095)))

(assert (=> b!3224548 (= res!1313293 (not ((_ is IntegerValue!16460) (value!170256 (h!41735 (t!240736 tokens!494))))))))

(assert (=> b!3224548 (= e!2011093 e!2011095)))

(declare-fun b!3224549 () Bool)

(declare-fun e!2011094 () Bool)

(assert (=> b!3224549 (= e!2011094 (inv!16 (value!170256 (h!41735 (t!240736 tokens!494)))))))

(declare-fun d!885095 () Bool)

(declare-fun c!541942 () Bool)

(assert (=> d!885095 (= c!541942 ((_ is IntegerValue!16458) (value!170256 (h!41735 (t!240736 tokens!494)))))))

(assert (=> d!885095 (= (inv!21 (value!170256 (h!41735 (t!240736 tokens!494)))) e!2011094)))

(declare-fun b!3224550 () Bool)

(assert (=> b!3224550 (= e!2011094 e!2011093)))

(declare-fun c!541943 () Bool)

(assert (=> b!3224550 (= c!541943 ((_ is IntegerValue!16459) (value!170256 (h!41735 (t!240736 tokens!494)))))))

(declare-fun b!3224551 () Bool)

(assert (=> b!3224551 (= e!2011095 (inv!15 (value!170256 (h!41735 (t!240736 tokens!494)))))))

(assert (= (and d!885095 c!541942) b!3224549))

(assert (= (and d!885095 (not c!541942)) b!3224550))

(assert (= (and b!3224550 c!541943) b!3224547))

(assert (= (and b!3224550 (not c!541943)) b!3224548))

(assert (= (and b!3224548 (not res!1313293)) b!3224551))

(declare-fun m!3502787 () Bool)

(assert (=> b!3224547 m!3502787))

(declare-fun m!3502789 () Bool)

(assert (=> b!3224549 m!3502789))

(declare-fun m!3502791 () Bool)

(assert (=> b!3224551 m!3502791))

(assert (=> b!3224404 d!885095))

(declare-fun d!885097 () Bool)

(declare-fun lt!1093938 () Int)

(declare-fun size!27386 (List!36439) Int)

(assert (=> d!885097 (= lt!1093938 (size!27386 (list!12940 lt!1093804)))))

(declare-fun size!27387 (Conc!10888) Int)

(assert (=> d!885097 (= lt!1093938 (size!27387 (c!541878 lt!1093804)))))

(assert (=> d!885097 (= (size!27380 lt!1093804) lt!1093938)))

(declare-fun bs!542698 () Bool)

(assert (= bs!542698 d!885097))

(assert (=> bs!542698 m!3502463))

(assert (=> bs!542698 m!3502463))

(declare-fun m!3502793 () Bool)

(assert (=> bs!542698 m!3502793))

(declare-fun m!3502795 () Bool)

(assert (=> bs!542698 m!3502795))

(assert (=> d!884971 d!885097))

(declare-fun d!885099 () Bool)

(declare-fun lt!1093951 () List!36437)

(assert (=> d!885099 (= lt!1093951 (++!8734 (list!12937 (BalanceConc!21389 Empty!10887)) (printList!1395 thiss!18206 (dropList!1086 lt!1093804 0))))))

(declare-fun e!2011098 () List!36437)

(assert (=> d!885099 (= lt!1093951 e!2011098)))

(declare-fun c!541946 () Bool)

(assert (=> d!885099 (= c!541946 ((_ is Cons!36315) (dropList!1086 lt!1093804 0)))))

(assert (=> d!885099 (= (printListTailRec!569 thiss!18206 (dropList!1086 lt!1093804 0) (list!12937 (BalanceConc!21389 Empty!10887))) lt!1093951)))

(declare-fun b!3224556 () Bool)

(assert (=> b!3224556 (= e!2011098 (printListTailRec!569 thiss!18206 (t!240736 (dropList!1086 lt!1093804 0)) (++!8734 (list!12937 (BalanceConc!21389 Empty!10887)) (list!12937 (charsOf!3272 (h!41735 (dropList!1086 lt!1093804 0)))))))))

(declare-fun lt!1093953 () List!36437)

(assert (=> b!3224556 (= lt!1093953 (list!12937 (charsOf!3272 (h!41735 (dropList!1086 lt!1093804 0)))))))

(declare-fun lt!1093949 () List!36437)

(assert (=> b!3224556 (= lt!1093949 (printList!1395 thiss!18206 (t!240736 (dropList!1086 lt!1093804 0))))))

(declare-fun lt!1093950 () Unit!50916)

(declare-fun lemmaConcatAssociativity!1782 (List!36437 List!36437 List!36437) Unit!50916)

(assert (=> b!3224556 (= lt!1093950 (lemmaConcatAssociativity!1782 (list!12937 (BalanceConc!21389 Empty!10887)) lt!1093953 lt!1093949))))

(assert (=> b!3224556 (= (++!8734 (++!8734 (list!12937 (BalanceConc!21389 Empty!10887)) lt!1093953) lt!1093949) (++!8734 (list!12937 (BalanceConc!21389 Empty!10887)) (++!8734 lt!1093953 lt!1093949)))))

(declare-fun lt!1093952 () Unit!50916)

(assert (=> b!3224556 (= lt!1093952 lt!1093950)))

(declare-fun b!3224557 () Bool)

(assert (=> b!3224557 (= e!2011098 (list!12937 (BalanceConc!21389 Empty!10887)))))

(assert (= (and d!885099 c!541946) b!3224556))

(assert (= (and d!885099 (not c!541946)) b!3224557))

(assert (=> d!885099 m!3502473))

(declare-fun m!3502797 () Bool)

(assert (=> d!885099 m!3502797))

(assert (=> d!885099 m!3502469))

(assert (=> d!885099 m!3502797))

(declare-fun m!3502799 () Bool)

(assert (=> d!885099 m!3502799))

(declare-fun m!3502801 () Bool)

(assert (=> b!3224556 m!3502801))

(declare-fun m!3502803 () Bool)

(assert (=> b!3224556 m!3502803))

(assert (=> b!3224556 m!3502469))

(declare-fun m!3502805 () Bool)

(assert (=> b!3224556 m!3502805))

(declare-fun m!3502807 () Bool)

(assert (=> b!3224556 m!3502807))

(declare-fun m!3502809 () Bool)

(assert (=> b!3224556 m!3502809))

(assert (=> b!3224556 m!3502469))

(declare-fun m!3502811 () Bool)

(assert (=> b!3224556 m!3502811))

(assert (=> b!3224556 m!3502807))

(declare-fun m!3502813 () Bool)

(assert (=> b!3224556 m!3502813))

(declare-fun m!3502815 () Bool)

(assert (=> b!3224556 m!3502815))

(assert (=> b!3224556 m!3502469))

(assert (=> b!3224556 m!3502813))

(declare-fun m!3502817 () Bool)

(assert (=> b!3224556 m!3502817))

(declare-fun m!3502819 () Bool)

(assert (=> b!3224556 m!3502819))

(assert (=> b!3224556 m!3502469))

(assert (=> b!3224556 m!3502801))

(assert (=> b!3224556 m!3502819))

(assert (=> b!3224556 m!3502811))

(assert (=> d!884971 d!885099))

(declare-fun d!885101 () Bool)

(assert (=> d!885101 (= (list!12937 lt!1093881) (list!12941 (c!541877 lt!1093881)))))

(declare-fun bs!542699 () Bool)

(assert (= bs!542699 d!885101))

(declare-fun m!3502821 () Bool)

(assert (=> bs!542699 m!3502821))

(assert (=> d!884971 d!885101))

(declare-fun d!885103 () Bool)

(assert (=> d!885103 (= (list!12937 (BalanceConc!21389 Empty!10887)) (list!12941 (c!541877 (BalanceConc!21389 Empty!10887))))))

(declare-fun bs!542700 () Bool)

(assert (= bs!542700 d!885103))

(declare-fun m!3502823 () Bool)

(assert (=> bs!542700 m!3502823))

(assert (=> d!884971 d!885103))

(declare-fun d!885105 () Bool)

(assert (=> d!885105 (= (dropList!1086 lt!1093804 0) (drop!1869 (list!12944 (c!541878 lt!1093804)) 0))))

(declare-fun bs!542701 () Bool)

(assert (= bs!542701 d!885105))

(assert (=> bs!542701 m!3502785))

(assert (=> bs!542701 m!3502785))

(declare-fun m!3502825 () Bool)

(assert (=> bs!542701 m!3502825))

(assert (=> d!884971 d!885105))

(declare-fun d!885107 () Bool)

(declare-fun charsToBigInt!1 (List!36436) Int)

(assert (=> d!885107 (= (inv!17 (value!170256 (h!41735 tokens!494))) (= (charsToBigInt!1 (text!38850 (value!170256 (h!41735 tokens!494)))) (value!170248 (value!170256 (h!41735 tokens!494)))))))

(declare-fun bs!542702 () Bool)

(assert (= bs!542702 d!885107))

(declare-fun m!3502827 () Bool)

(assert (=> bs!542702 m!3502827))

(assert (=> b!3224317 d!885107))

(declare-fun b!3224566 () Bool)

(declare-fun e!2011105 () Bool)

(declare-fun e!2011107 () Bool)

(assert (=> b!3224566 (= e!2011105 e!2011107)))

(declare-fun res!1313298 () Bool)

(assert (=> b!3224566 (= res!1313298 (not ((_ is Cons!36314) rules!2135)))))

(assert (=> b!3224566 (=> res!1313298 e!2011107)))

(declare-fun b!3224567 () Bool)

(declare-fun e!2011106 () Bool)

(declare-fun call!233160 () Bool)

(assert (=> b!3224567 (= e!2011106 call!233160)))

(declare-fun b!3224568 () Bool)

(assert (=> b!3224568 (= e!2011105 e!2011106)))

(declare-fun res!1313299 () Bool)

(declare-fun rulesUseDisjointChars!277 (Rule!10312 Rule!10312) Bool)

(assert (=> b!3224568 (= res!1313299 (rulesUseDisjointChars!277 (h!41734 rules!2135) (h!41734 rules!2135)))))

(assert (=> b!3224568 (=> (not res!1313299) (not e!2011106))))

(declare-fun b!3224569 () Bool)

(assert (=> b!3224569 (= e!2011107 call!233160)))

(declare-fun d!885109 () Bool)

(declare-fun c!541949 () Bool)

(assert (=> d!885109 (= c!541949 (and ((_ is Cons!36314) rules!2135) (not (= (isSeparator!5256 (h!41734 rules!2135)) (isSeparator!5256 (h!41734 rules!2135))))))))

(assert (=> d!885109 (= (ruleDisjointCharsFromAllFromOtherType!599 (h!41734 rules!2135) rules!2135) e!2011105)))

(declare-fun bm!233155 () Bool)

(assert (=> bm!233155 (= call!233160 (ruleDisjointCharsFromAllFromOtherType!599 (h!41734 rules!2135) (t!240735 rules!2135)))))

(assert (= (and d!885109 c!541949) b!3224568))

(assert (= (and d!885109 (not c!541949)) b!3224566))

(assert (= (and b!3224568 res!1313299) b!3224567))

(assert (= (and b!3224566 (not res!1313298)) b!3224569))

(assert (= (or b!3224567 b!3224569) bm!233155))

(declare-fun m!3502829 () Bool)

(assert (=> b!3224568 m!3502829))

(declare-fun m!3502831 () Bool)

(assert (=> bm!233155 m!3502831))

(assert (=> b!3224221 d!885109))

(declare-fun d!885111 () Bool)

(declare-fun charsToInt!0 (List!36436) (_ BitVec 32))

(assert (=> d!885111 (= (inv!16 (value!170256 (h!41735 tokens!494))) (= (charsToInt!0 (text!38849 (value!170256 (h!41735 tokens!494)))) (value!170247 (value!170256 (h!41735 tokens!494)))))))

(declare-fun bs!542703 () Bool)

(assert (= bs!542703 d!885111))

(declare-fun m!3502833 () Bool)

(assert (=> bs!542703 m!3502833))

(assert (=> b!3224319 d!885111))

(declare-fun d!885113 () Bool)

(declare-fun charsToBigInt!0 (List!36436 Int) Int)

(assert (=> d!885113 (= (inv!15 (value!170256 (h!41735 tokens!494))) (= (charsToBigInt!0 (text!38851 (value!170256 (h!41735 tokens!494))) 0) (value!170251 (value!170256 (h!41735 tokens!494)))))))

(declare-fun bs!542704 () Bool)

(assert (= bs!542704 d!885113))

(declare-fun m!3502835 () Bool)

(assert (=> bs!542704 m!3502835))

(assert (=> b!3224321 d!885113))

(declare-fun d!885115 () Bool)

(assert (=> d!885115 (= (list!12940 (singletonSeq!2352 separatorToken!241)) (list!12944 (c!541878 (singletonSeq!2352 separatorToken!241))))))

(declare-fun bs!542705 () Bool)

(assert (= bs!542705 d!885115))

(declare-fun m!3502837 () Bool)

(assert (=> bs!542705 m!3502837))

(assert (=> d!884929 d!885115))

(declare-fun d!885117 () Bool)

(assert (=> d!885117 (= (list!12940 (_1!21008 (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241))))) (list!12944 (c!541878 (_1!21008 (lex!2175 thiss!18206 rules!2135 (print!1910 thiss!18206 (singletonSeq!2352 separatorToken!241)))))))))

(declare-fun bs!542706 () Bool)

(assert (= bs!542706 d!885117))

(declare-fun m!3502839 () Bool)

(assert (=> bs!542706 m!3502839))

(assert (=> d!884929 d!885117))

(assert (=> d!884929 d!885085))

(assert (=> d!884929 d!884955))

(assert (=> d!884929 d!885039))

(declare-fun d!885119 () Bool)

(declare-fun lt!1093954 () Int)

(assert (=> d!885119 (= lt!1093954 (size!27386 (list!12940 (_1!21008 lt!1093853))))))

(assert (=> d!885119 (= lt!1093954 (size!27387 (c!541878 (_1!21008 lt!1093853))))))

(assert (=> d!885119 (= (size!27380 (_1!21008 lt!1093853)) lt!1093954)))

(declare-fun bs!542707 () Bool)

(assert (= bs!542707 d!885119))

(assert (=> bs!542707 m!3502637))

(assert (=> bs!542707 m!3502637))

(declare-fun m!3502841 () Bool)

(assert (=> bs!542707 m!3502841))

(declare-fun m!3502843 () Bool)

(assert (=> bs!542707 m!3502843))

(assert (=> d!884929 d!885119))

(assert (=> d!884929 d!885087))

(declare-fun bs!542708 () Bool)

(declare-fun d!885121 () Bool)

(assert (= bs!542708 (and d!885121 d!885025)))

(declare-fun lambda!118060 () Int)

(assert (=> bs!542708 (= (= (toValue!7352 (transformation!5256 (h!41734 rules!2135))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) (= lambda!118060 lambda!118049))))

(assert (=> d!885121 true))

(assert (=> d!885121 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (h!41734 rules!2135)))) (dynLambda!14744 order!18695 lambda!118060))))

(assert (=> d!885121 (= (equivClasses!2062 (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toValue!7352 (transformation!5256 (h!41734 rules!2135)))) (Forall2!869 lambda!118060))))

(declare-fun bs!542709 () Bool)

(assert (= bs!542709 d!885121))

(declare-fun m!3502845 () Bool)

(assert (=> bs!542709 m!3502845))

(assert (=> b!3224325 d!885121))

(declare-fun d!885123 () Bool)

(declare-fun lt!1093957 () Int)

(assert (=> d!885123 (>= lt!1093957 0)))

(declare-fun e!2011110 () Int)

(assert (=> d!885123 (= lt!1093957 e!2011110)))

(declare-fun c!541952 () Bool)

(assert (=> d!885123 (= c!541952 ((_ is Nil!36313) (originalCharacters!5970 (h!41735 tokens!494))))))

(assert (=> d!885123 (= (size!27381 (originalCharacters!5970 (h!41735 tokens!494))) lt!1093957)))

(declare-fun b!3224574 () Bool)

(assert (=> b!3224574 (= e!2011110 0)))

(declare-fun b!3224575 () Bool)

(assert (=> b!3224575 (= e!2011110 (+ 1 (size!27381 (t!240734 (originalCharacters!5970 (h!41735 tokens!494))))))))

(assert (= (and d!885123 c!541952) b!3224574))

(assert (= (and d!885123 (not c!541952)) b!3224575))

(declare-fun m!3502847 () Bool)

(assert (=> b!3224575 m!3502847))

(assert (=> b!3224353 d!885123))

(declare-fun d!885125 () Bool)

(assert (=> d!885125 (= (list!12937 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))) (list!12941 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))))))

(declare-fun bs!542710 () Bool)

(assert (= bs!542710 d!885125))

(declare-fun m!3502849 () Bool)

(assert (=> bs!542710 m!3502849))

(assert (=> b!3224330 d!885125))

(declare-fun d!885127 () Bool)

(declare-fun res!1313304 () Bool)

(declare-fun e!2011115 () Bool)

(assert (=> d!885127 (=> res!1313304 e!2011115)))

(assert (=> d!885127 (= res!1313304 ((_ is Nil!36314) rules!2135))))

(assert (=> d!885127 (= (noDuplicateTag!1919 thiss!18206 rules!2135 Nil!36317) e!2011115)))

(declare-fun b!3224580 () Bool)

(declare-fun e!2011116 () Bool)

(assert (=> b!3224580 (= e!2011115 e!2011116)))

(declare-fun res!1313305 () Bool)

(assert (=> b!3224580 (=> (not res!1313305) (not e!2011116))))

(declare-fun contains!6513 (List!36441 String!40764) Bool)

(assert (=> b!3224580 (= res!1313305 (not (contains!6513 Nil!36317 (tag!5788 (h!41734 rules!2135)))))))

(declare-fun b!3224581 () Bool)

(assert (=> b!3224581 (= e!2011116 (noDuplicateTag!1919 thiss!18206 (t!240735 rules!2135) (Cons!36317 (tag!5788 (h!41734 rules!2135)) Nil!36317)))))

(assert (= (and d!885127 (not res!1313304)) b!3224580))

(assert (= (and b!3224580 res!1313305) b!3224581))

(declare-fun m!3502851 () Bool)

(assert (=> b!3224580 m!3502851))

(declare-fun m!3502853 () Bool)

(assert (=> b!3224581 m!3502853))

(assert (=> b!3224311 d!885127))

(declare-fun d!885129 () Bool)

(assert (=> d!885129 (= (isEmpty!20397 (originalCharacters!5970 separatorToken!241)) ((_ is Nil!36313) (originalCharacters!5970 separatorToken!241)))))

(assert (=> d!884961 d!885129))

(declare-fun bs!542711 () Bool)

(declare-fun d!885131 () Bool)

(assert (= bs!542711 (and d!885131 d!885035)))

(declare-fun lambda!118061 () Int)

(assert (=> bs!542711 (= (and (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) (= (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241))))) (= lambda!118061 lambda!118052))))

(assert (=> d!885131 true))

(assert (=> d!885131 (< (dynLambda!14742 order!18693 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) (dynLambda!14746 order!18697 lambda!118061))))

(assert (=> d!885131 true))

(assert (=> d!885131 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) (dynLambda!14746 order!18697 lambda!118061))))

(assert (=> d!885131 (= (semiInverseModEq!2163 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) (Forall!1272 lambda!118061))))

(declare-fun bs!542712 () Bool)

(assert (= bs!542712 d!885131))

(declare-fun m!3502855 () Bool)

(assert (=> bs!542712 m!3502855))

(assert (=> d!884965 d!885131))

(declare-fun bs!542729 () Bool)

(declare-fun d!885133 () Bool)

(assert (= bs!542729 (and d!885133 b!3224087)))

(declare-fun lambda!118069 () Int)

(assert (=> bs!542729 (not (= lambda!118069 lambda!118033))))

(declare-fun bs!542730 () Bool)

(assert (= bs!542730 (and d!885133 d!884897)))

(assert (=> bs!542730 (= lambda!118069 lambda!118043)))

(declare-fun b!3224698 () Bool)

(declare-fun e!2011185 () Bool)

(assert (=> b!3224698 (= e!2011185 true)))

(declare-fun b!3224697 () Bool)

(declare-fun e!2011184 () Bool)

(assert (=> b!3224697 (= e!2011184 e!2011185)))

(declare-fun b!3224696 () Bool)

(declare-fun e!2011183 () Bool)

(assert (=> b!3224696 (= e!2011183 e!2011184)))

(assert (=> d!885133 e!2011183))

(assert (= b!3224697 b!3224698))

(assert (= b!3224696 b!3224697))

(assert (= (and d!885133 ((_ is Cons!36314) rules!2135)) b!3224696))

(assert (=> b!3224698 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (h!41734 rules!2135)))) (dynLambda!14741 order!18691 lambda!118069))))

(assert (=> b!3224698 (< (dynLambda!14742 order!18693 (toChars!7211 (transformation!5256 (h!41734 rules!2135)))) (dynLambda!14741 order!18691 lambda!118069))))

(assert (=> d!885133 true))

(declare-fun lt!1093991 () Bool)

(assert (=> d!885133 (= lt!1093991 (forall!7440 (list!12940 (seqFromList!3580 tokens!494)) lambda!118069))))

(declare-fun e!2011182 () Bool)

(assert (=> d!885133 (= lt!1093991 e!2011182)))

(declare-fun res!1313367 () Bool)

(assert (=> d!885133 (=> res!1313367 e!2011182)))

(assert (=> d!885133 (= res!1313367 (not ((_ is Cons!36315) (list!12940 (seqFromList!3580 tokens!494)))))))

(assert (=> d!885133 (not (isEmpty!20393 rules!2135))))

(assert (=> d!885133 (= (rulesProduceEachTokenIndividuallyList!1735 thiss!18206 rules!2135 (list!12940 (seqFromList!3580 tokens!494))) lt!1093991)))

(declare-fun b!3224694 () Bool)

(declare-fun e!2011181 () Bool)

(assert (=> b!3224694 (= e!2011182 e!2011181)))

(declare-fun res!1313366 () Bool)

(assert (=> b!3224694 (=> (not res!1313366) (not e!2011181))))

(assert (=> b!3224694 (= res!1313366 (rulesProduceIndividualToken!2337 thiss!18206 rules!2135 (h!41735 (list!12940 (seqFromList!3580 tokens!494)))))))

(declare-fun b!3224695 () Bool)

(assert (=> b!3224695 (= e!2011181 (rulesProduceEachTokenIndividuallyList!1735 thiss!18206 rules!2135 (t!240736 (list!12940 (seqFromList!3580 tokens!494)))))))

(assert (= (and d!885133 (not res!1313367)) b!3224694))

(assert (= (and b!3224694 res!1313366) b!3224695))

(assert (=> d!885133 m!3502313))

(declare-fun m!3503027 () Bool)

(assert (=> d!885133 m!3503027))

(assert (=> d!885133 m!3502203))

(declare-fun m!3503029 () Bool)

(assert (=> b!3224694 m!3503029))

(declare-fun m!3503031 () Bool)

(assert (=> b!3224695 m!3503031))

(assert (=> b!3224203 d!885133))

(declare-fun d!885189 () Bool)

(assert (=> d!885189 (= (list!12940 (seqFromList!3580 tokens!494)) (list!12944 (c!541878 (seqFromList!3580 tokens!494))))))

(declare-fun bs!542731 () Bool)

(assert (= bs!542731 d!885189))

(declare-fun m!3503033 () Bool)

(assert (=> bs!542731 m!3503033))

(assert (=> b!3224203 d!885189))

(declare-fun d!885191 () Bool)

(declare-fun c!541981 () Bool)

(assert (=> d!885191 (= c!541981 ((_ is Empty!10887) (c!541877 (charsOf!3272 (h!41735 tokens!494)))))))

(declare-fun e!2011186 () List!36437)

(assert (=> d!885191 (= (list!12941 (c!541877 (charsOf!3272 (h!41735 tokens!494)))) e!2011186)))

(declare-fun b!3224701 () Bool)

(declare-fun e!2011187 () List!36437)

(assert (=> b!3224701 (= e!2011187 (list!12945 (xs!14005 (c!541877 (charsOf!3272 (h!41735 tokens!494))))))))

(declare-fun b!3224699 () Bool)

(assert (=> b!3224699 (= e!2011186 Nil!36313)))

(declare-fun b!3224702 () Bool)

(assert (=> b!3224702 (= e!2011187 (++!8734 (list!12941 (left!28273 (c!541877 (charsOf!3272 (h!41735 tokens!494))))) (list!12941 (right!28603 (c!541877 (charsOf!3272 (h!41735 tokens!494)))))))))

(declare-fun b!3224700 () Bool)

(assert (=> b!3224700 (= e!2011186 e!2011187)))

(declare-fun c!541982 () Bool)

(assert (=> b!3224700 (= c!541982 ((_ is Leaf!17126) (c!541877 (charsOf!3272 (h!41735 tokens!494)))))))

(assert (= (and d!885191 c!541981) b!3224699))

(assert (= (and d!885191 (not c!541981)) b!3224700))

(assert (= (and b!3224700 c!541982) b!3224701))

(assert (= (and b!3224700 (not c!541982)) b!3224702))

(declare-fun m!3503035 () Bool)

(assert (=> b!3224701 m!3503035))

(declare-fun m!3503037 () Bool)

(assert (=> b!3224702 m!3503037))

(declare-fun m!3503039 () Bool)

(assert (=> b!3224702 m!3503039))

(assert (=> b!3224702 m!3503037))

(assert (=> b!3224702 m!3503039))

(declare-fun m!3503041 () Bool)

(assert (=> b!3224702 m!3503041))

(assert (=> d!884945 d!885191))

(declare-fun d!885193 () Bool)

(assert (=> d!885193 (= (inv!17 (value!170256 separatorToken!241)) (= (charsToBigInt!1 (text!38850 (value!170256 separatorToken!241))) (value!170248 (value!170256 separatorToken!241))))))

(declare-fun bs!542732 () Bool)

(assert (= bs!542732 d!885193))

(declare-fun m!3503043 () Bool)

(assert (=> bs!542732 m!3503043))

(assert (=> b!3224130 d!885193))

(declare-fun d!885195 () Bool)

(assert (=> d!885195 (= (inv!16 (value!170256 separatorToken!241)) (= (charsToInt!0 (text!38849 (value!170256 separatorToken!241))) (value!170247 (value!170256 separatorToken!241))))))

(declare-fun bs!542733 () Bool)

(assert (= bs!542733 d!885195))

(declare-fun m!3503045 () Bool)

(assert (=> bs!542733 m!3503045))

(assert (=> b!3224132 d!885195))

(declare-fun d!885197 () Bool)

(assert (=> d!885197 true))

(declare-fun lt!1093997 () Bool)

(declare-fun rulesValidInductive!1783 (LexerInterface!4845 List!36438) Bool)

(assert (=> d!885197 (= lt!1093997 (rulesValidInductive!1783 thiss!18206 rules!2135))))

(declare-fun lambda!118072 () Int)

(declare-fun forall!7445 (List!36438 Int) Bool)

(assert (=> d!885197 (= lt!1093997 (forall!7445 rules!2135 lambda!118072))))

(assert (=> d!885197 (= (rulesValid!1923 thiss!18206 rules!2135) lt!1093997)))

(declare-fun bs!542734 () Bool)

(assert (= bs!542734 d!885197))

(declare-fun m!3503051 () Bool)

(assert (=> bs!542734 m!3503051))

(declare-fun m!3503053 () Bool)

(assert (=> bs!542734 m!3503053))

(assert (=> d!884943 d!885197))

(declare-fun d!885201 () Bool)

(declare-fun lt!1093998 () Bool)

(assert (=> d!885201 (= lt!1093998 (isEmpty!20397 (list!12937 (_2!21008 lt!1093853))))))

(assert (=> d!885201 (= lt!1093998 (isEmpty!20400 (c!541877 (_2!21008 lt!1093853))))))

(assert (=> d!885201 (= (isEmpty!20396 (_2!21008 lt!1093853)) lt!1093998)))

(declare-fun bs!542735 () Bool)

(assert (= bs!542735 d!885201))

(declare-fun m!3503055 () Bool)

(assert (=> bs!542735 m!3503055))

(assert (=> bs!542735 m!3503055))

(declare-fun m!3503057 () Bool)

(assert (=> bs!542735 m!3503057))

(declare-fun m!3503059 () Bool)

(assert (=> bs!542735 m!3503059))

(assert (=> b!3224307 d!885201))

(declare-fun d!885203 () Bool)

(declare-fun c!541992 () Bool)

(assert (=> d!885203 (= c!541992 ((_ is Node!10887) (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))))))

(declare-fun e!2011206 () Bool)

(assert (=> d!885203 (= (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))) e!2011206)))

(declare-fun b!3224732 () Bool)

(declare-fun inv!49188 (Conc!10887) Bool)

(assert (=> b!3224732 (= e!2011206 (inv!49188 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))))))

(declare-fun b!3224733 () Bool)

(declare-fun e!2011207 () Bool)

(assert (=> b!3224733 (= e!2011206 e!2011207)))

(declare-fun res!1313377 () Bool)

(assert (=> b!3224733 (= res!1313377 (not ((_ is Leaf!17126) (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))))))))

(assert (=> b!3224733 (=> res!1313377 e!2011207)))

(declare-fun b!3224734 () Bool)

(declare-fun inv!49189 (Conc!10887) Bool)

(assert (=> b!3224734 (= e!2011207 (inv!49189 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))))))

(assert (= (and d!885203 c!541992) b!3224732))

(assert (= (and d!885203 (not c!541992)) b!3224733))

(assert (= (and b!3224733 (not res!1313377)) b!3224734))

(declare-fun m!3503077 () Bool)

(assert (=> b!3224732 m!3503077))

(declare-fun m!3503079 () Bool)

(assert (=> b!3224734 m!3503079))

(assert (=> b!3224332 d!885203))

(assert (=> b!3224340 d!885097))

(declare-fun d!885209 () Bool)

(declare-fun res!1313378 () Bool)

(declare-fun e!2011208 () Bool)

(assert (=> d!885209 (=> res!1313378 e!2011208)))

(assert (=> d!885209 (= res!1313378 ((_ is Nil!36315) (t!240736 tokens!494)))))

(assert (=> d!885209 (= (forall!7440 (t!240736 tokens!494) lambda!118033) e!2011208)))

(declare-fun b!3224735 () Bool)

(declare-fun e!2011209 () Bool)

(assert (=> b!3224735 (= e!2011208 e!2011209)))

(declare-fun res!1313379 () Bool)

(assert (=> b!3224735 (=> (not res!1313379) (not e!2011209))))

(assert (=> b!3224735 (= res!1313379 (dynLambda!14739 lambda!118033 (h!41735 (t!240736 tokens!494))))))

(declare-fun b!3224736 () Bool)

(assert (=> b!3224736 (= e!2011209 (forall!7440 (t!240736 (t!240736 tokens!494)) lambda!118033))))

(assert (= (and d!885209 (not res!1313378)) b!3224735))

(assert (= (and b!3224735 res!1313379) b!3224736))

(declare-fun b_lambda!88681 () Bool)

(assert (=> (not b_lambda!88681) (not b!3224735)))

(declare-fun m!3503081 () Bool)

(assert (=> b!3224735 m!3503081))

(declare-fun m!3503083 () Bool)

(assert (=> b!3224736 m!3503083))

(assert (=> b!3224119 d!885209))

(declare-fun d!885211 () Bool)

(declare-fun res!1313380 () Bool)

(declare-fun e!2011210 () Bool)

(assert (=> d!885211 (=> (not res!1313380) (not e!2011210))))

(assert (=> d!885211 (= res!1313380 (not (isEmpty!20397 (originalCharacters!5970 (h!41735 (t!240736 tokens!494))))))))

(assert (=> d!885211 (= (inv!49180 (h!41735 (t!240736 tokens!494))) e!2011210)))

(declare-fun b!3224737 () Bool)

(declare-fun res!1313381 () Bool)

(assert (=> b!3224737 (=> (not res!1313381) (not e!2011210))))

(assert (=> b!3224737 (= res!1313381 (= (originalCharacters!5970 (h!41735 (t!240736 tokens!494))) (list!12937 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (value!170256 (h!41735 (t!240736 tokens!494)))))))))

(declare-fun b!3224738 () Bool)

(assert (=> b!3224738 (= e!2011210 (= (size!27377 (h!41735 (t!240736 tokens!494))) (size!27381 (originalCharacters!5970 (h!41735 (t!240736 tokens!494))))))))

(assert (= (and d!885211 res!1313380) b!3224737))

(assert (= (and b!3224737 res!1313381) b!3224738))

(declare-fun b_lambda!88683 () Bool)

(assert (=> (not b_lambda!88683) (not b!3224737)))

(declare-fun t!240821 () Bool)

(declare-fun tb!159435 () Bool)

(assert (=> (and b!3224090 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) t!240821) tb!159435))

(declare-fun b!3224741 () Bool)

(declare-fun e!2011213 () Bool)

(declare-fun tp!1015841 () Bool)

(assert (=> b!3224741 (= e!2011213 (and (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (value!170256 (h!41735 (t!240736 tokens!494)))))) tp!1015841))))

(declare-fun result!201900 () Bool)

(assert (=> tb!159435 (= result!201900 (and (inv!49185 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (value!170256 (h!41735 (t!240736 tokens!494))))) e!2011213))))

(assert (= tb!159435 b!3224741))

(declare-fun m!3503085 () Bool)

(assert (=> b!3224741 m!3503085))

(declare-fun m!3503087 () Bool)

(assert (=> tb!159435 m!3503087))

(assert (=> b!3224737 t!240821))

(declare-fun b_and!215707 () Bool)

(assert (= b_and!215673 (and (=> t!240821 result!201900) b_and!215707)))

(declare-fun tb!159437 () Bool)

(declare-fun t!240823 () Bool)

(assert (=> (and b!3224091 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) t!240823) tb!159437))

(declare-fun result!201902 () Bool)

(assert (= result!201902 result!201900))

(assert (=> b!3224737 t!240823))

(declare-fun b_and!215709 () Bool)

(assert (= b_and!215675 (and (=> t!240823 result!201902) b_and!215709)))

(declare-fun t!240825 () Bool)

(declare-fun tb!159439 () Bool)

(assert (=> (and b!3224384 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) t!240825) tb!159439))

(declare-fun result!201904 () Bool)

(assert (= result!201904 result!201900))

(assert (=> b!3224737 t!240825))

(declare-fun b_and!215711 () Bool)

(assert (= b_and!215681 (and (=> t!240825 result!201904) b_and!215711)))

(declare-fun tb!159441 () Bool)

(declare-fun t!240827 () Bool)

(assert (=> (and b!3224092 (= (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) t!240827) tb!159441))

(declare-fun result!201906 () Bool)

(assert (= result!201906 result!201900))

(assert (=> b!3224737 t!240827))

(declare-fun b_and!215713 () Bool)

(assert (= b_and!215677 (and (=> t!240827 result!201906) b_and!215713)))

(declare-fun t!240829 () Bool)

(declare-fun tb!159443 () Bool)

(assert (=> (and b!3224406 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) t!240829) tb!159443))

(declare-fun result!201908 () Bool)

(assert (= result!201908 result!201900))

(assert (=> b!3224737 t!240829))

(declare-fun b_and!215715 () Bool)

(assert (= b_and!215685 (and (=> t!240829 result!201908) b_and!215715)))

(declare-fun m!3503089 () Bool)

(assert (=> d!885211 m!3503089))

(declare-fun m!3503091 () Bool)

(assert (=> b!3224737 m!3503091))

(assert (=> b!3224737 m!3503091))

(declare-fun m!3503093 () Bool)

(assert (=> b!3224737 m!3503093))

(declare-fun m!3503095 () Bool)

(assert (=> b!3224738 m!3503095))

(assert (=> b!3224403 d!885211))

(declare-fun d!885213 () Bool)

(assert (=> d!885213 (= (inv!49177 (tag!5788 (rule!7714 (h!41735 (t!240736 tokens!494))))) (= (mod (str.len (value!170255 (tag!5788 (rule!7714 (h!41735 (t!240736 tokens!494)))))) 2) 0))))

(assert (=> b!3224405 d!885213))

(declare-fun d!885215 () Bool)

(declare-fun res!1313385 () Bool)

(declare-fun e!2011215 () Bool)

(assert (=> d!885215 (=> (not res!1313385) (not e!2011215))))

(assert (=> d!885215 (= res!1313385 (semiInverseModEq!2163 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))))))

(assert (=> d!885215 (= (inv!49181 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) e!2011215)))

(declare-fun b!3224743 () Bool)

(assert (=> b!3224743 (= e!2011215 (equivClasses!2062 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))))))

(assert (= (and d!885215 res!1313385) b!3224743))

(declare-fun m!3503099 () Bool)

(assert (=> d!885215 m!3503099))

(declare-fun m!3503101 () Bool)

(assert (=> b!3224743 m!3503101))

(assert (=> b!3224405 d!885215))

(declare-fun d!885219 () Bool)

(assert (=> d!885219 (= (inv!15 (value!170256 separatorToken!241)) (= (charsToBigInt!0 (text!38851 (value!170256 separatorToken!241)) 0) (value!170251 (value!170256 separatorToken!241))))))

(declare-fun bs!542736 () Bool)

(assert (= bs!542736 d!885219))

(declare-fun m!3503103 () Bool)

(assert (=> bs!542736 m!3503103))

(assert (=> b!3224134 d!885219))

(declare-fun d!885221 () Bool)

(assert (=> d!885221 (= (isEmpty!20397 (originalCharacters!5970 (h!41735 tokens!494))) ((_ is Nil!36313) (originalCharacters!5970 (h!41735 tokens!494))))))

(assert (=> d!884977 d!885221))

(declare-fun d!885223 () Bool)

(declare-fun lt!1094010 () Token!9878)

(declare-fun contains!6514 (List!36439 Token!9878) Bool)

(assert (=> d!885223 (contains!6514 lt!1093876 lt!1094010)))

(declare-fun e!2011227 () Token!9878)

(assert (=> d!885223 (= lt!1094010 e!2011227)))

(declare-fun c!541995 () Bool)

(assert (=> d!885223 (= c!541995 (= 0 0))))

(declare-fun e!2011226 () Bool)

(assert (=> d!885223 e!2011226))

(declare-fun res!1313391 () Bool)

(assert (=> d!885223 (=> (not res!1313391) (not e!2011226))))

(assert (=> d!885223 (= res!1313391 (<= 0 0))))

(assert (=> d!885223 (= (apply!8280 lt!1093876 0) lt!1094010)))

(declare-fun b!3224762 () Bool)

(assert (=> b!3224762 (= e!2011226 (< 0 (size!27386 lt!1093876)))))

(declare-fun b!3224763 () Bool)

(assert (=> b!3224763 (= e!2011227 (head!7081 lt!1093876))))

(declare-fun b!3224764 () Bool)

(assert (=> b!3224764 (= e!2011227 (apply!8280 (tail!5225 lt!1093876) (- 0 1)))))

(assert (= (and d!885223 res!1313391) b!3224762))

(assert (= (and d!885223 c!541995) b!3224763))

(assert (= (and d!885223 (not c!541995)) b!3224764))

(declare-fun m!3503123 () Bool)

(assert (=> d!885223 m!3503123))

(declare-fun m!3503125 () Bool)

(assert (=> b!3224762 m!3503125))

(declare-fun m!3503127 () Bool)

(assert (=> b!3224763 m!3503127))

(declare-fun m!3503129 () Bool)

(assert (=> b!3224764 m!3503129))

(assert (=> b!3224764 m!3503129))

(declare-fun m!3503131 () Bool)

(assert (=> b!3224764 m!3503131))

(assert (=> b!3224342 d!885223))

(declare-fun b!3224870 () Bool)

(declare-fun e!2011280 () List!36439)

(assert (=> b!3224870 (= e!2011280 Nil!36315)))

(declare-fun b!3224871 () Bool)

(declare-fun e!2011279 () Int)

(assert (=> b!3224871 (= e!2011279 0)))

(declare-fun b!3224872 () Bool)

(declare-fun call!233168 () Int)

(assert (=> b!3224872 (= e!2011279 (- call!233168 0))))

(declare-fun b!3224873 () Bool)

(declare-fun e!2011277 () List!36439)

(assert (=> b!3224873 (= e!2011277 (drop!1869 (t!240736 lt!1093876) (- 0 1)))))

(declare-fun b!3224874 () Bool)

(declare-fun e!2011278 () Int)

(assert (=> b!3224874 (= e!2011278 e!2011279)))

(declare-fun c!542006 () Bool)

(assert (=> b!3224874 (= c!542006 (>= 0 call!233168))))

(declare-fun b!3224875 () Bool)

(declare-fun e!2011281 () Bool)

(declare-fun lt!1094013 () List!36439)

(assert (=> b!3224875 (= e!2011281 (= (size!27386 lt!1094013) e!2011278))))

(declare-fun c!542005 () Bool)

(assert (=> b!3224875 (= c!542005 (<= 0 0))))

(declare-fun b!3224876 () Bool)

(assert (=> b!3224876 (= e!2011277 lt!1093876)))

(declare-fun d!885233 () Bool)

(assert (=> d!885233 e!2011281))

(declare-fun res!1313394 () Bool)

(assert (=> d!885233 (=> (not res!1313394) (not e!2011281))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4907 (List!36439) (InoxSet Token!9878))

(assert (=> d!885233 (= res!1313394 (= ((_ map implies) (content!4907 lt!1094013) (content!4907 lt!1093876)) ((as const (InoxSet Token!9878)) true)))))

(assert (=> d!885233 (= lt!1094013 e!2011280)))

(declare-fun c!542007 () Bool)

(assert (=> d!885233 (= c!542007 ((_ is Nil!36315) lt!1093876))))

(assert (=> d!885233 (= (drop!1869 lt!1093876 0) lt!1094013)))

(declare-fun b!3224877 () Bool)

(assert (=> b!3224877 (= e!2011278 call!233168)))

(declare-fun b!3224878 () Bool)

(assert (=> b!3224878 (= e!2011280 e!2011277)))

(declare-fun c!542004 () Bool)

(assert (=> b!3224878 (= c!542004 (<= 0 0))))

(declare-fun bm!233163 () Bool)

(assert (=> bm!233163 (= call!233168 (size!27386 lt!1093876))))

(assert (= (and d!885233 c!542007) b!3224870))

(assert (= (and d!885233 (not c!542007)) b!3224878))

(assert (= (and b!3224878 c!542004) b!3224876))

(assert (= (and b!3224878 (not c!542004)) b!3224873))

(assert (= (and d!885233 res!1313394) b!3224875))

(assert (= (and b!3224875 c!542005) b!3224877))

(assert (= (and b!3224875 (not c!542005)) b!3224874))

(assert (= (and b!3224874 c!542006) b!3224871))

(assert (= (and b!3224874 (not c!542006)) b!3224872))

(assert (= (or b!3224877 b!3224874 b!3224872) bm!233163))

(declare-fun m!3503157 () Bool)

(assert (=> b!3224873 m!3503157))

(declare-fun m!3503159 () Bool)

(assert (=> b!3224875 m!3503159))

(declare-fun m!3503161 () Bool)

(assert (=> d!885233 m!3503161))

(declare-fun m!3503163 () Bool)

(assert (=> d!885233 m!3503163))

(assert (=> bm!233163 m!3503125))

(assert (=> b!3224342 d!885233))

(declare-fun b!3224879 () Bool)

(declare-fun e!2011285 () List!36439)

(assert (=> b!3224879 (= e!2011285 Nil!36315)))

(declare-fun b!3224880 () Bool)

(declare-fun e!2011284 () Int)

(assert (=> b!3224880 (= e!2011284 0)))

(declare-fun b!3224881 () Bool)

(declare-fun call!233169 () Int)

(assert (=> b!3224881 (= e!2011284 (- call!233169 (+ 0 1)))))

(declare-fun b!3224882 () Bool)

(declare-fun e!2011282 () List!36439)

(assert (=> b!3224882 (= e!2011282 (drop!1869 (t!240736 lt!1093877) (- (+ 0 1) 1)))))

(declare-fun b!3224883 () Bool)

(declare-fun e!2011283 () Int)

(assert (=> b!3224883 (= e!2011283 e!2011284)))

(declare-fun c!542010 () Bool)

(assert (=> b!3224883 (= c!542010 (>= (+ 0 1) call!233169))))

(declare-fun b!3224884 () Bool)

(declare-fun e!2011286 () Bool)

(declare-fun lt!1094014 () List!36439)

(assert (=> b!3224884 (= e!2011286 (= (size!27386 lt!1094014) e!2011283))))

(declare-fun c!542009 () Bool)

(assert (=> b!3224884 (= c!542009 (<= (+ 0 1) 0))))

(declare-fun b!3224885 () Bool)

(assert (=> b!3224885 (= e!2011282 lt!1093877)))

(declare-fun d!885239 () Bool)

(assert (=> d!885239 e!2011286))

(declare-fun res!1313395 () Bool)

(assert (=> d!885239 (=> (not res!1313395) (not e!2011286))))

(assert (=> d!885239 (= res!1313395 (= ((_ map implies) (content!4907 lt!1094014) (content!4907 lt!1093877)) ((as const (InoxSet Token!9878)) true)))))

(assert (=> d!885239 (= lt!1094014 e!2011285)))

(declare-fun c!542011 () Bool)

(assert (=> d!885239 (= c!542011 ((_ is Nil!36315) lt!1093877))))

(assert (=> d!885239 (= (drop!1869 lt!1093877 (+ 0 1)) lt!1094014)))

(declare-fun b!3224886 () Bool)

(assert (=> b!3224886 (= e!2011283 call!233169)))

(declare-fun b!3224887 () Bool)

(assert (=> b!3224887 (= e!2011285 e!2011282)))

(declare-fun c!542008 () Bool)

(assert (=> b!3224887 (= c!542008 (<= (+ 0 1) 0))))

(declare-fun bm!233164 () Bool)

(assert (=> bm!233164 (= call!233169 (size!27386 lt!1093877))))

(assert (= (and d!885239 c!542011) b!3224879))

(assert (= (and d!885239 (not c!542011)) b!3224887))

(assert (= (and b!3224887 c!542008) b!3224885))

(assert (= (and b!3224887 (not c!542008)) b!3224882))

(assert (= (and d!885239 res!1313395) b!3224884))

(assert (= (and b!3224884 c!542009) b!3224886))

(assert (= (and b!3224884 (not c!542009)) b!3224883))

(assert (= (and b!3224883 c!542010) b!3224880))

(assert (= (and b!3224883 (not c!542010)) b!3224881))

(assert (= (or b!3224886 b!3224883 b!3224881) bm!233164))

(declare-fun m!3503165 () Bool)

(assert (=> b!3224882 m!3503165))

(declare-fun m!3503167 () Bool)

(assert (=> b!3224884 m!3503167))

(declare-fun m!3503169 () Bool)

(assert (=> d!885239 m!3503169))

(declare-fun m!3503171 () Bool)

(assert (=> d!885239 m!3503171))

(declare-fun m!3503173 () Bool)

(assert (=> bm!233164 m!3503173))

(assert (=> b!3224342 d!885239))

(declare-fun d!885241 () Bool)

(declare-fun lt!1094015 () BalanceConc!21388)

(assert (=> d!885241 (= (list!12937 lt!1094015) (originalCharacters!5970 (apply!8279 lt!1093804 0)))))

(assert (=> d!885241 (= lt!1094015 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0)))) (value!170256 (apply!8279 lt!1093804 0))))))

(assert (=> d!885241 (= (charsOf!3272 (apply!8279 lt!1093804 0)) lt!1094015)))

(declare-fun b_lambda!88695 () Bool)

(assert (=> (not b_lambda!88695) (not d!885241)))

(declare-fun tb!159475 () Bool)

(declare-fun t!240861 () Bool)

(assert (=> (and b!3224406 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0))))) t!240861) tb!159475))

(declare-fun b!3224888 () Bool)

(declare-fun e!2011287 () Bool)

(declare-fun tp!1015952 () Bool)

(assert (=> b!3224888 (= e!2011287 (and (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0)))) (value!170256 (apply!8279 lt!1093804 0))))) tp!1015952))))

(declare-fun result!201942 () Bool)

(assert (=> tb!159475 (= result!201942 (and (inv!49185 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0)))) (value!170256 (apply!8279 lt!1093804 0)))) e!2011287))))

(assert (= tb!159475 b!3224888))

(declare-fun m!3503175 () Bool)

(assert (=> b!3224888 m!3503175))

(declare-fun m!3503177 () Bool)

(assert (=> tb!159475 m!3503177))

(assert (=> d!885241 t!240861))

(declare-fun b_and!215735 () Bool)

(assert (= b_and!215715 (and (=> t!240861 result!201942) b_and!215735)))

(declare-fun tb!159477 () Bool)

(declare-fun t!240863 () Bool)

(assert (=> (and b!3224384 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0))))) t!240863) tb!159477))

(declare-fun result!201944 () Bool)

(assert (= result!201944 result!201942))

(assert (=> d!885241 t!240863))

(declare-fun b_and!215737 () Bool)

(assert (= b_and!215711 (and (=> t!240863 result!201944) b_and!215737)))

(declare-fun tb!159479 () Bool)

(declare-fun t!240865 () Bool)

(assert (=> (and b!3224091 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0))))) t!240865) tb!159479))

(declare-fun result!201946 () Bool)

(assert (= result!201946 result!201942))

(assert (=> d!885241 t!240865))

(declare-fun b_and!215739 () Bool)

(assert (= b_and!215709 (and (=> t!240865 result!201946) b_and!215739)))

(declare-fun tb!159481 () Bool)

(declare-fun t!240867 () Bool)

(assert (=> (and b!3224092 (= (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0))))) t!240867) tb!159481))

(declare-fun result!201948 () Bool)

(assert (= result!201948 result!201942))

(assert (=> d!885241 t!240867))

(declare-fun b_and!215741 () Bool)

(assert (= b_and!215713 (and (=> t!240867 result!201948) b_and!215741)))

(declare-fun tb!159483 () Bool)

(declare-fun t!240869 () Bool)

(assert (=> (and b!3224090 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0))))) t!240869) tb!159483))

(declare-fun result!201950 () Bool)

(assert (= result!201950 result!201942))

(assert (=> d!885241 t!240869))

(declare-fun b_and!215743 () Bool)

(assert (= b_and!215707 (and (=> t!240869 result!201950) b_and!215743)))

(declare-fun m!3503179 () Bool)

(assert (=> d!885241 m!3503179))

(declare-fun m!3503181 () Bool)

(assert (=> d!885241 m!3503181))

(assert (=> b!3224342 d!885241))

(declare-fun d!885243 () Bool)

(assert (=> d!885243 (= (tail!5225 (drop!1869 lt!1093877 0)) (drop!1869 lt!1093877 (+ 0 1)))))

(declare-fun lt!1094018 () Unit!50916)

(declare-fun choose!18809 (List!36439 Int) Unit!50916)

(assert (=> d!885243 (= lt!1094018 (choose!18809 lt!1093877 0))))

(declare-fun e!2011290 () Bool)

(assert (=> d!885243 e!2011290))

(declare-fun res!1313398 () Bool)

(assert (=> d!885243 (=> (not res!1313398) (not e!2011290))))

(assert (=> d!885243 (= res!1313398 (>= 0 0))))

(assert (=> d!885243 (= (lemmaDropTail!929 lt!1093877 0) lt!1094018)))

(declare-fun b!3224891 () Bool)

(assert (=> b!3224891 (= e!2011290 (< 0 (size!27386 lt!1093877)))))

(assert (= (and d!885243 res!1313398) b!3224891))

(assert (=> d!885243 m!3502479))

(assert (=> d!885243 m!3502479))

(assert (=> d!885243 m!3502481))

(assert (=> d!885243 m!3502493))

(declare-fun m!3503183 () Bool)

(assert (=> d!885243 m!3503183))

(assert (=> b!3224891 m!3503173))

(assert (=> b!3224342 d!885243))

(declare-fun d!885245 () Bool)

(assert (=> d!885245 (= (tail!5225 (drop!1869 lt!1093877 0)) (t!240736 (drop!1869 lt!1093877 0)))))

(assert (=> b!3224342 d!885245))

(declare-fun d!885247 () Bool)

(declare-fun lt!1094025 () BalanceConc!21388)

(assert (=> d!885247 (= (list!12937 lt!1094025) (printListTailRec!569 thiss!18206 (dropList!1086 lt!1093804 (+ 0 1)) (list!12937 (++!8733 (BalanceConc!21389 Empty!10887) (charsOf!3272 (apply!8279 lt!1093804 0))))))))

(declare-fun e!2011291 () BalanceConc!21388)

(assert (=> d!885247 (= lt!1094025 e!2011291)))

(declare-fun c!542012 () Bool)

(assert (=> d!885247 (= c!542012 (>= (+ 0 1) (size!27380 lt!1093804)))))

(declare-fun e!2011292 () Bool)

(assert (=> d!885247 e!2011292))

(declare-fun res!1313399 () Bool)

(assert (=> d!885247 (=> (not res!1313399) (not e!2011292))))

(assert (=> d!885247 (= res!1313399 (>= (+ 0 1) 0))))

(assert (=> d!885247 (= (printTailRec!1342 thiss!18206 lt!1093804 (+ 0 1) (++!8733 (BalanceConc!21389 Empty!10887) (charsOf!3272 (apply!8279 lt!1093804 0)))) lt!1094025)))

(declare-fun b!3224892 () Bool)

(assert (=> b!3224892 (= e!2011292 (<= (+ 0 1) (size!27380 lt!1093804)))))

(declare-fun b!3224893 () Bool)

(assert (=> b!3224893 (= e!2011291 (++!8733 (BalanceConc!21389 Empty!10887) (charsOf!3272 (apply!8279 lt!1093804 0))))))

(declare-fun b!3224894 () Bool)

(assert (=> b!3224894 (= e!2011291 (printTailRec!1342 thiss!18206 lt!1093804 (+ 0 1 1) (++!8733 (++!8733 (BalanceConc!21389 Empty!10887) (charsOf!3272 (apply!8279 lt!1093804 0))) (charsOf!3272 (apply!8279 lt!1093804 (+ 0 1))))))))

(declare-fun lt!1094020 () List!36439)

(assert (=> b!3224894 (= lt!1094020 (list!12940 lt!1093804))))

(declare-fun lt!1094022 () Unit!50916)

(assert (=> b!3224894 (= lt!1094022 (lemmaDropApply!1045 lt!1094020 (+ 0 1)))))

(assert (=> b!3224894 (= (head!7081 (drop!1869 lt!1094020 (+ 0 1))) (apply!8280 lt!1094020 (+ 0 1)))))

(declare-fun lt!1094023 () Unit!50916)

(assert (=> b!3224894 (= lt!1094023 lt!1094022)))

(declare-fun lt!1094021 () List!36439)

(assert (=> b!3224894 (= lt!1094021 (list!12940 lt!1093804))))

(declare-fun lt!1094019 () Unit!50916)

(assert (=> b!3224894 (= lt!1094019 (lemmaDropTail!929 lt!1094021 (+ 0 1)))))

(assert (=> b!3224894 (= (tail!5225 (drop!1869 lt!1094021 (+ 0 1))) (drop!1869 lt!1094021 (+ 0 1 1)))))

(declare-fun lt!1094024 () Unit!50916)

(assert (=> b!3224894 (= lt!1094024 lt!1094019)))

(assert (= (and d!885247 res!1313399) b!3224892))

(assert (= (and d!885247 c!542012) b!3224893))

(assert (= (and d!885247 (not c!542012)) b!3224894))

(assert (=> d!885247 m!3502495))

(declare-fun m!3503185 () Bool)

(assert (=> d!885247 m!3503185))

(declare-fun m!3503187 () Bool)

(assert (=> d!885247 m!3503187))

(declare-fun m!3503189 () Bool)

(assert (=> d!885247 m!3503189))

(assert (=> d!885247 m!3503185))

(declare-fun m!3503191 () Bool)

(assert (=> d!885247 m!3503191))

(assert (=> d!885247 m!3503189))

(assert (=> d!885247 m!3502477))

(assert (=> b!3224892 m!3502477))

(declare-fun m!3503193 () Bool)

(assert (=> b!3224894 m!3503193))

(declare-fun m!3503195 () Bool)

(assert (=> b!3224894 m!3503195))

(declare-fun m!3503197 () Bool)

(assert (=> b!3224894 m!3503197))

(declare-fun m!3503199 () Bool)

(assert (=> b!3224894 m!3503199))

(declare-fun m!3503201 () Bool)

(assert (=> b!3224894 m!3503201))

(assert (=> b!3224894 m!3503193))

(declare-fun m!3503203 () Bool)

(assert (=> b!3224894 m!3503203))

(assert (=> b!3224894 m!3503197))

(declare-fun m!3503205 () Bool)

(assert (=> b!3224894 m!3503205))

(declare-fun m!3503207 () Bool)

(assert (=> b!3224894 m!3503207))

(assert (=> b!3224894 m!3503199))

(assert (=> b!3224894 m!3502463))

(declare-fun m!3503209 () Bool)

(assert (=> b!3224894 m!3503209))

(declare-fun m!3503211 () Bool)

(assert (=> b!3224894 m!3503211))

(assert (=> b!3224894 m!3502495))

(assert (=> b!3224894 m!3503201))

(assert (=> b!3224894 m!3503209))

(declare-fun m!3503213 () Bool)

(assert (=> b!3224894 m!3503213))

(declare-fun m!3503215 () Bool)

(assert (=> b!3224894 m!3503215))

(assert (=> b!3224342 d!885247))

(assert (=> b!3224342 d!885093))

(declare-fun b!3224895 () Bool)

(declare-fun e!2011296 () List!36439)

(assert (=> b!3224895 (= e!2011296 Nil!36315)))

(declare-fun b!3224896 () Bool)

(declare-fun e!2011295 () Int)

(assert (=> b!3224896 (= e!2011295 0)))

(declare-fun b!3224897 () Bool)

(declare-fun call!233170 () Int)

(assert (=> b!3224897 (= e!2011295 (- call!233170 0))))

(declare-fun b!3224898 () Bool)

(declare-fun e!2011293 () List!36439)

(assert (=> b!3224898 (= e!2011293 (drop!1869 (t!240736 lt!1093877) (- 0 1)))))

(declare-fun b!3224899 () Bool)

(declare-fun e!2011294 () Int)

(assert (=> b!3224899 (= e!2011294 e!2011295)))

(declare-fun c!542015 () Bool)

(assert (=> b!3224899 (= c!542015 (>= 0 call!233170))))

(declare-fun b!3224900 () Bool)

(declare-fun e!2011297 () Bool)

(declare-fun lt!1094026 () List!36439)

(assert (=> b!3224900 (= e!2011297 (= (size!27386 lt!1094026) e!2011294))))

(declare-fun c!542014 () Bool)

(assert (=> b!3224900 (= c!542014 (<= 0 0))))

(declare-fun b!3224901 () Bool)

(assert (=> b!3224901 (= e!2011293 lt!1093877)))

(declare-fun d!885249 () Bool)

(assert (=> d!885249 e!2011297))

(declare-fun res!1313400 () Bool)

(assert (=> d!885249 (=> (not res!1313400) (not e!2011297))))

(assert (=> d!885249 (= res!1313400 (= ((_ map implies) (content!4907 lt!1094026) (content!4907 lt!1093877)) ((as const (InoxSet Token!9878)) true)))))

(assert (=> d!885249 (= lt!1094026 e!2011296)))

(declare-fun c!542016 () Bool)

(assert (=> d!885249 (= c!542016 ((_ is Nil!36315) lt!1093877))))

(assert (=> d!885249 (= (drop!1869 lt!1093877 0) lt!1094026)))

(declare-fun b!3224902 () Bool)

(assert (=> b!3224902 (= e!2011294 call!233170)))

(declare-fun b!3224903 () Bool)

(assert (=> b!3224903 (= e!2011296 e!2011293)))

(declare-fun c!542013 () Bool)

(assert (=> b!3224903 (= c!542013 (<= 0 0))))

(declare-fun bm!233165 () Bool)

(assert (=> bm!233165 (= call!233170 (size!27386 lt!1093877))))

(assert (= (and d!885249 c!542016) b!3224895))

(assert (= (and d!885249 (not c!542016)) b!3224903))

(assert (= (and b!3224903 c!542013) b!3224901))

(assert (= (and b!3224903 (not c!542013)) b!3224898))

(assert (= (and d!885249 res!1313400) b!3224900))

(assert (= (and b!3224900 c!542014) b!3224902))

(assert (= (and b!3224900 (not c!542014)) b!3224899))

(assert (= (and b!3224899 c!542015) b!3224896))

(assert (= (and b!3224899 (not c!542015)) b!3224897))

(assert (= (or b!3224902 b!3224899 b!3224897) bm!233165))

(declare-fun m!3503217 () Bool)

(assert (=> b!3224898 m!3503217))

(declare-fun m!3503219 () Bool)

(assert (=> b!3224900 m!3503219))

(declare-fun m!3503221 () Bool)

(assert (=> d!885249 m!3503221))

(assert (=> d!885249 m!3503171))

(assert (=> bm!233165 m!3503173))

(assert (=> b!3224342 d!885249))

(declare-fun d!885251 () Bool)

(assert (=> d!885251 (= (head!7081 (drop!1869 lt!1093876 0)) (apply!8280 lt!1093876 0))))

(declare-fun lt!1094029 () Unit!50916)

(declare-fun choose!18812 (List!36439 Int) Unit!50916)

(assert (=> d!885251 (= lt!1094029 (choose!18812 lt!1093876 0))))

(declare-fun e!2011300 () Bool)

(assert (=> d!885251 e!2011300))

(declare-fun res!1313403 () Bool)

(assert (=> d!885251 (=> (not res!1313403) (not e!2011300))))

(assert (=> d!885251 (= res!1313403 (>= 0 0))))

(assert (=> d!885251 (= (lemmaDropApply!1045 lt!1093876 0) lt!1094029)))

(declare-fun b!3224906 () Bool)

(assert (=> b!3224906 (= e!2011300 (< 0 (size!27386 lt!1093876)))))

(assert (= (and d!885251 res!1313403) b!3224906))

(assert (=> d!885251 m!3502483))

(assert (=> d!885251 m!3502483))

(assert (=> d!885251 m!3502491))

(assert (=> d!885251 m!3502489))

(declare-fun m!3503223 () Bool)

(assert (=> d!885251 m!3503223))

(assert (=> b!3224906 m!3503125))

(assert (=> b!3224342 d!885251))

(declare-fun b!3224915 () Bool)

(declare-fun res!1313415 () Bool)

(declare-fun e!2011303 () Bool)

(assert (=> b!3224915 (=> (not res!1313415) (not e!2011303))))

(declare-fun ++!8736 (Conc!10887 Conc!10887) Conc!10887)

(assert (=> b!3224915 (= res!1313415 (isBalanced!3232 (++!8736 (c!541877 (BalanceConc!21389 Empty!10887)) (c!541877 (charsOf!3272 (apply!8279 lt!1093804 0))))))))

(declare-fun b!3224917 () Bool)

(declare-fun res!1313414 () Bool)

(assert (=> b!3224917 (=> (not res!1313414) (not e!2011303))))

(declare-fun height!1567 (Conc!10887) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3224917 (= res!1313414 (>= (height!1567 (++!8736 (c!541877 (BalanceConc!21389 Empty!10887)) (c!541877 (charsOf!3272 (apply!8279 lt!1093804 0))))) (max!0 (height!1567 (c!541877 (BalanceConc!21389 Empty!10887))) (height!1567 (c!541877 (charsOf!3272 (apply!8279 lt!1093804 0)))))))))

(declare-fun b!3224918 () Bool)

(declare-fun lt!1094032 () BalanceConc!21388)

(assert (=> b!3224918 (= e!2011303 (= (list!12937 lt!1094032) (++!8734 (list!12937 (BalanceConc!21389 Empty!10887)) (list!12937 (charsOf!3272 (apply!8279 lt!1093804 0))))))))

(declare-fun d!885253 () Bool)

(assert (=> d!885253 e!2011303))

(declare-fun res!1313413 () Bool)

(assert (=> d!885253 (=> (not res!1313413) (not e!2011303))))

(declare-fun appendAssocInst!739 (Conc!10887 Conc!10887) Bool)

(assert (=> d!885253 (= res!1313413 (appendAssocInst!739 (c!541877 (BalanceConc!21389 Empty!10887)) (c!541877 (charsOf!3272 (apply!8279 lt!1093804 0)))))))

(assert (=> d!885253 (= lt!1094032 (BalanceConc!21389 (++!8736 (c!541877 (BalanceConc!21389 Empty!10887)) (c!541877 (charsOf!3272 (apply!8279 lt!1093804 0))))))))

(assert (=> d!885253 (= (++!8733 (BalanceConc!21389 Empty!10887) (charsOf!3272 (apply!8279 lt!1093804 0))) lt!1094032)))

(declare-fun b!3224916 () Bool)

(declare-fun res!1313412 () Bool)

(assert (=> b!3224916 (=> (not res!1313412) (not e!2011303))))

(assert (=> b!3224916 (= res!1313412 (<= (height!1567 (++!8736 (c!541877 (BalanceConc!21389 Empty!10887)) (c!541877 (charsOf!3272 (apply!8279 lt!1093804 0))))) (+ (max!0 (height!1567 (c!541877 (BalanceConc!21389 Empty!10887))) (height!1567 (c!541877 (charsOf!3272 (apply!8279 lt!1093804 0))))) 1)))))

(assert (= (and d!885253 res!1313413) b!3224915))

(assert (= (and b!3224915 res!1313415) b!3224916))

(assert (= (and b!3224916 res!1313412) b!3224917))

(assert (= (and b!3224917 res!1313414) b!3224918))

(declare-fun m!3503225 () Bool)

(assert (=> b!3224915 m!3503225))

(assert (=> b!3224915 m!3503225))

(declare-fun m!3503227 () Bool)

(assert (=> b!3224915 m!3503227))

(declare-fun m!3503229 () Bool)

(assert (=> b!3224917 m!3503229))

(declare-fun m!3503231 () Bool)

(assert (=> b!3224917 m!3503231))

(declare-fun m!3503233 () Bool)

(assert (=> b!3224917 m!3503233))

(assert (=> b!3224917 m!3503229))

(assert (=> b!3224917 m!3503225))

(declare-fun m!3503235 () Bool)

(assert (=> b!3224917 m!3503235))

(assert (=> b!3224917 m!3503231))

(assert (=> b!3224917 m!3503225))

(assert (=> b!3224916 m!3503229))

(assert (=> b!3224916 m!3503231))

(assert (=> b!3224916 m!3503233))

(assert (=> b!3224916 m!3503229))

(assert (=> b!3224916 m!3503225))

(assert (=> b!3224916 m!3503235))

(assert (=> b!3224916 m!3503231))

(assert (=> b!3224916 m!3503225))

(declare-fun m!3503237 () Bool)

(assert (=> d!885253 m!3503237))

(assert (=> d!885253 m!3503225))

(declare-fun m!3503239 () Bool)

(assert (=> b!3224918 m!3503239))

(assert (=> b!3224918 m!3502469))

(assert (=> b!3224918 m!3502487))

(declare-fun m!3503241 () Bool)

(assert (=> b!3224918 m!3503241))

(assert (=> b!3224918 m!3502469))

(assert (=> b!3224918 m!3503241))

(declare-fun m!3503243 () Bool)

(assert (=> b!3224918 m!3503243))

(assert (=> b!3224342 d!885253))

(declare-fun d!885255 () Bool)

(assert (=> d!885255 (= (head!7081 (drop!1869 lt!1093876 0)) (h!41735 (drop!1869 lt!1093876 0)))))

(assert (=> b!3224342 d!885255))

(declare-fun d!885257 () Bool)

(declare-fun lt!1094033 () Token!9878)

(assert (=> d!885257 (= lt!1094033 (apply!8280 (list!12940 lt!1093804) 0))))

(assert (=> d!885257 (= lt!1094033 (apply!8282 (c!541878 lt!1093804) 0))))

(declare-fun e!2011304 () Bool)

(assert (=> d!885257 e!2011304))

(declare-fun res!1313416 () Bool)

(assert (=> d!885257 (=> (not res!1313416) (not e!2011304))))

(assert (=> d!885257 (= res!1313416 (<= 0 0))))

(assert (=> d!885257 (= (apply!8279 lt!1093804 0) lt!1094033)))

(declare-fun b!3224919 () Bool)

(assert (=> b!3224919 (= e!2011304 (< 0 (size!27380 lt!1093804)))))

(assert (= (and d!885257 res!1313416) b!3224919))

(assert (=> d!885257 m!3502463))

(assert (=> d!885257 m!3502463))

(declare-fun m!3503245 () Bool)

(assert (=> d!885257 m!3503245))

(declare-fun m!3503247 () Bool)

(assert (=> d!885257 m!3503247))

(assert (=> b!3224919 m!3502477))

(assert (=> b!3224342 d!885257))

(declare-fun d!885259 () Bool)

(assert (=> d!885259 (= (list!12937 lt!1093857) (list!12941 (c!541877 lt!1093857)))))

(declare-fun bs!542742 () Bool)

(assert (= bs!542742 d!885259))

(declare-fun m!3503249 () Bool)

(assert (=> bs!542742 m!3503249))

(assert (=> d!884947 d!885259))

(declare-fun bs!542743 () Bool)

(declare-fun d!885261 () Bool)

(assert (= bs!542743 (and d!885261 d!885035)))

(declare-fun lambda!118074 () Int)

(assert (=> bs!542743 (= (and (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) (= (toValue!7352 (transformation!5256 (h!41734 rules!2135))) (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241))))) (= lambda!118074 lambda!118052))))

(declare-fun bs!542744 () Bool)

(assert (= bs!542744 (and d!885261 d!885131)))

(assert (=> bs!542744 (= (and (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) (= (toValue!7352 (transformation!5256 (h!41734 rules!2135))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494)))))) (= lambda!118074 lambda!118061))))

(assert (=> d!885261 true))

(assert (=> d!885261 (< (dynLambda!14742 order!18693 (toChars!7211 (transformation!5256 (h!41734 rules!2135)))) (dynLambda!14746 order!18697 lambda!118074))))

(assert (=> d!885261 true))

(assert (=> d!885261 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (h!41734 rules!2135)))) (dynLambda!14746 order!18697 lambda!118074))))

(assert (=> d!885261 (= (semiInverseModEq!2163 (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toValue!7352 (transformation!5256 (h!41734 rules!2135)))) (Forall!1272 lambda!118074))))

(declare-fun bs!542745 () Bool)

(assert (= bs!542745 d!885261))

(declare-fun m!3503251 () Bool)

(assert (=> bs!542745 m!3503251))

(assert (=> d!884959 d!885261))

(declare-fun d!885263 () Bool)

(assert (=> d!885263 (= (list!12937 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))) (list!12941 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))))))

(declare-fun bs!542746 () Bool)

(assert (= bs!542746 d!885263))

(declare-fun m!3503253 () Bool)

(assert (=> bs!542746 m!3503253))

(assert (=> b!3224352 d!885263))

(declare-fun d!885265 () Bool)

(declare-fun res!1313417 () Bool)

(declare-fun e!2011305 () Bool)

(assert (=> d!885265 (=> res!1313417 e!2011305)))

(assert (=> d!885265 (= res!1313417 (not ((_ is Cons!36314) (t!240735 rules!2135))))))

(assert (=> d!885265 (= (sepAndNonSepRulesDisjointChars!1450 rules!2135 (t!240735 rules!2135)) e!2011305)))

(declare-fun b!3224920 () Bool)

(declare-fun e!2011306 () Bool)

(assert (=> b!3224920 (= e!2011305 e!2011306)))

(declare-fun res!1313418 () Bool)

(assert (=> b!3224920 (=> (not res!1313418) (not e!2011306))))

(assert (=> b!3224920 (= res!1313418 (ruleDisjointCharsFromAllFromOtherType!599 (h!41734 (t!240735 rules!2135)) rules!2135))))

(declare-fun b!3224921 () Bool)

(assert (=> b!3224921 (= e!2011306 (sepAndNonSepRulesDisjointChars!1450 rules!2135 (t!240735 (t!240735 rules!2135))))))

(assert (= (and d!885265 (not res!1313417)) b!3224920))

(assert (= (and b!3224920 res!1313418) b!3224921))

(declare-fun m!3503255 () Bool)

(assert (=> b!3224920 m!3503255))

(declare-fun m!3503257 () Bool)

(assert (=> b!3224921 m!3503257))

(assert (=> b!3224222 d!885265))

(declare-fun d!885267 () Bool)

(declare-fun res!1313419 () Bool)

(declare-fun e!2011307 () Bool)

(assert (=> d!885267 (=> res!1313419 e!2011307)))

(assert (=> d!885267 (= res!1313419 ((_ is Nil!36315) (list!12940 (seqFromList!3580 tokens!494))))))

(assert (=> d!885267 (= (forall!7440 (list!12940 (seqFromList!3580 tokens!494)) lambda!118043) e!2011307)))

(declare-fun b!3224922 () Bool)

(declare-fun e!2011308 () Bool)

(assert (=> b!3224922 (= e!2011307 e!2011308)))

(declare-fun res!1313420 () Bool)

(assert (=> b!3224922 (=> (not res!1313420) (not e!2011308))))

(assert (=> b!3224922 (= res!1313420 (dynLambda!14739 lambda!118043 (h!41735 (list!12940 (seqFromList!3580 tokens!494)))))))

(declare-fun b!3224923 () Bool)

(assert (=> b!3224923 (= e!2011308 (forall!7440 (t!240736 (list!12940 (seqFromList!3580 tokens!494))) lambda!118043))))

(assert (= (and d!885267 (not res!1313419)) b!3224922))

(assert (= (and b!3224922 res!1313420) b!3224923))

(declare-fun b_lambda!88697 () Bool)

(assert (=> (not b_lambda!88697) (not b!3224922)))

(declare-fun m!3503259 () Bool)

(assert (=> b!3224922 m!3503259))

(declare-fun m!3503261 () Bool)

(assert (=> b!3224923 m!3503261))

(assert (=> d!884897 d!885267))

(assert (=> d!884897 d!885189))

(declare-fun d!885269 () Bool)

(declare-fun lt!1094036 () Bool)

(assert (=> d!885269 (= lt!1094036 (forall!7440 (list!12940 (seqFromList!3580 tokens!494)) lambda!118043))))

(declare-fun forall!7446 (Conc!10888 Int) Bool)

(assert (=> d!885269 (= lt!1094036 (forall!7446 (c!541878 (seqFromList!3580 tokens!494)) lambda!118043))))

(assert (=> d!885269 (= (forall!7442 (seqFromList!3580 tokens!494) lambda!118043) lt!1094036)))

(declare-fun bs!542747 () Bool)

(assert (= bs!542747 d!885269))

(assert (=> bs!542747 m!3502181))

(assert (=> bs!542747 m!3502313))

(assert (=> bs!542747 m!3502313))

(assert (=> bs!542747 m!3502315))

(declare-fun m!3503263 () Bool)

(assert (=> bs!542747 m!3503263))

(assert (=> d!884897 d!885269))

(assert (=> d!884897 d!884955))

(declare-fun d!885271 () Bool)

(assert (=> d!885271 (= (inv!49177 (tag!5788 (h!41734 (t!240735 rules!2135)))) (= (mod (str.len (value!170255 (tag!5788 (h!41734 (t!240735 rules!2135))))) 2) 0))))

(assert (=> b!3224383 d!885271))

(declare-fun d!885273 () Bool)

(declare-fun res!1313421 () Bool)

(declare-fun e!2011309 () Bool)

(assert (=> d!885273 (=> (not res!1313421) (not e!2011309))))

(assert (=> d!885273 (= res!1313421 (semiInverseModEq!2163 (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toValue!7352 (transformation!5256 (h!41734 (t!240735 rules!2135))))))))

(assert (=> d!885273 (= (inv!49181 (transformation!5256 (h!41734 (t!240735 rules!2135)))) e!2011309)))

(declare-fun b!3224924 () Bool)

(assert (=> b!3224924 (= e!2011309 (equivClasses!2062 (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toValue!7352 (transformation!5256 (h!41734 (t!240735 rules!2135))))))))

(assert (= (and d!885273 res!1313421) b!3224924))

(declare-fun m!3503265 () Bool)

(assert (=> d!885273 m!3503265))

(declare-fun m!3503267 () Bool)

(assert (=> b!3224924 m!3503267))

(assert (=> b!3224383 d!885273))

(declare-fun d!885275 () Bool)

(declare-fun lt!1094037 () Int)

(assert (=> d!885275 (>= lt!1094037 0)))

(declare-fun e!2011310 () Int)

(assert (=> d!885275 (= lt!1094037 e!2011310)))

(declare-fun c!542020 () Bool)

(assert (=> d!885275 (= c!542020 ((_ is Nil!36313) (originalCharacters!5970 separatorToken!241)))))

(assert (=> d!885275 (= (size!27381 (originalCharacters!5970 separatorToken!241)) lt!1094037)))

(declare-fun b!3224925 () Bool)

(assert (=> b!3224925 (= e!2011310 0)))

(declare-fun b!3224926 () Bool)

(assert (=> b!3224926 (= e!2011310 (+ 1 (size!27381 (t!240734 (originalCharacters!5970 separatorToken!241)))))))

(assert (= (and d!885275 c!542020) b!3224925))

(assert (= (and d!885275 (not c!542020)) b!3224926))

(declare-fun m!3503269 () Bool)

(assert (=> b!3224926 m!3503269))

(assert (=> b!3224331 d!885275))

(declare-fun d!885277 () Bool)

(declare-fun c!542021 () Bool)

(assert (=> d!885277 (= c!542021 ((_ is Node!10887) (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))))))

(declare-fun e!2011311 () Bool)

(assert (=> d!885277 (= (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))) e!2011311)))

(declare-fun b!3224927 () Bool)

(assert (=> b!3224927 (= e!2011311 (inv!49188 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))))))

(declare-fun b!3224928 () Bool)

(declare-fun e!2011312 () Bool)

(assert (=> b!3224928 (= e!2011311 e!2011312)))

(declare-fun res!1313422 () Bool)

(assert (=> b!3224928 (= res!1313422 (not ((_ is Leaf!17126) (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))))))))

(assert (=> b!3224928 (=> res!1313422 e!2011312)))

(declare-fun b!3224929 () Bool)

(assert (=> b!3224929 (= e!2011312 (inv!49189 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))))))

(assert (= (and d!885277 c!542021) b!3224927))

(assert (= (and d!885277 (not c!542021)) b!3224928))

(assert (= (and b!3224928 (not res!1313422)) b!3224929))

(declare-fun m!3503271 () Bool)

(assert (=> b!3224927 m!3503271))

(declare-fun m!3503273 () Bool)

(assert (=> b!3224929 m!3503273))

(assert (=> b!3224316 d!885277))

(declare-fun b!3224942 () Bool)

(declare-fun e!2011317 () Bool)

(declare-fun e!2011318 () Bool)

(assert (=> b!3224942 (= e!2011317 e!2011318)))

(declare-fun res!1313439 () Bool)

(assert (=> b!3224942 (=> (not res!1313439) (not e!2011318))))

(declare-fun height!1568 (Conc!10888) Int)

(assert (=> b!3224942 (= res!1313439 (<= (- 1) (- (height!1568 (left!28274 (c!541878 lt!1093884))) (height!1568 (right!28604 (c!541878 lt!1093884))))))))

(declare-fun b!3224943 () Bool)

(declare-fun isEmpty!20403 (Conc!10888) Bool)

(assert (=> b!3224943 (= e!2011318 (not (isEmpty!20403 (right!28604 (c!541878 lt!1093884)))))))

(declare-fun b!3224944 () Bool)

(declare-fun res!1313435 () Bool)

(assert (=> b!3224944 (=> (not res!1313435) (not e!2011318))))

(assert (=> b!3224944 (= res!1313435 (isBalanced!3231 (right!28604 (c!541878 lt!1093884))))))

(declare-fun b!3224945 () Bool)

(declare-fun res!1313438 () Bool)

(assert (=> b!3224945 (=> (not res!1313438) (not e!2011318))))

(assert (=> b!3224945 (= res!1313438 (not (isEmpty!20403 (left!28274 (c!541878 lt!1093884)))))))

(declare-fun d!885279 () Bool)

(declare-fun res!1313437 () Bool)

(assert (=> d!885279 (=> res!1313437 e!2011317)))

(assert (=> d!885279 (= res!1313437 (not ((_ is Node!10888) (c!541878 lt!1093884))))))

(assert (=> d!885279 (= (isBalanced!3231 (c!541878 lt!1093884)) e!2011317)))

(declare-fun b!3224946 () Bool)

(declare-fun res!1313440 () Bool)

(assert (=> b!3224946 (=> (not res!1313440) (not e!2011318))))

(assert (=> b!3224946 (= res!1313440 (isBalanced!3231 (left!28274 (c!541878 lt!1093884))))))

(declare-fun b!3224947 () Bool)

(declare-fun res!1313436 () Bool)

(assert (=> b!3224947 (=> (not res!1313436) (not e!2011318))))

(assert (=> b!3224947 (= res!1313436 (<= (- (height!1568 (left!28274 (c!541878 lt!1093884))) (height!1568 (right!28604 (c!541878 lt!1093884)))) 1))))

(assert (= (and d!885279 (not res!1313437)) b!3224942))

(assert (= (and b!3224942 res!1313439) b!3224947))

(assert (= (and b!3224947 res!1313436) b!3224946))

(assert (= (and b!3224946 res!1313440) b!3224944))

(assert (= (and b!3224944 res!1313435) b!3224945))

(assert (= (and b!3224945 res!1313438) b!3224943))

(declare-fun m!3503275 () Bool)

(assert (=> b!3224942 m!3503275))

(declare-fun m!3503277 () Bool)

(assert (=> b!3224942 m!3503277))

(declare-fun m!3503279 () Bool)

(assert (=> b!3224943 m!3503279))

(assert (=> b!3224947 m!3503275))

(assert (=> b!3224947 m!3503277))

(declare-fun m!3503281 () Bool)

(assert (=> b!3224945 m!3503281))

(declare-fun m!3503283 () Bool)

(assert (=> b!3224946 m!3503283))

(declare-fun m!3503285 () Bool)

(assert (=> b!3224944 m!3503285))

(assert (=> b!3224345 d!885279))

(declare-fun d!885281 () Bool)

(declare-fun e!2011321 () Bool)

(assert (=> d!885281 e!2011321))

(declare-fun res!1313443 () Bool)

(assert (=> d!885281 (=> (not res!1313443) (not e!2011321))))

(declare-fun lt!1094040 () BalanceConc!21390)

(assert (=> d!885281 (= res!1313443 (= (list!12940 lt!1094040) tokens!494))))

(declare-fun fromList!625 (List!36439) Conc!10888)

(assert (=> d!885281 (= lt!1094040 (BalanceConc!21391 (fromList!625 tokens!494)))))

(assert (=> d!885281 (= (fromListB!1554 tokens!494) lt!1094040)))

(declare-fun b!3224950 () Bool)

(assert (=> b!3224950 (= e!2011321 (isBalanced!3231 (fromList!625 tokens!494)))))

(assert (= (and d!885281 res!1313443) b!3224950))

(declare-fun m!3503287 () Bool)

(assert (=> d!885281 m!3503287))

(declare-fun m!3503289 () Bool)

(assert (=> d!885281 m!3503289))

(assert (=> b!3224950 m!3503289))

(assert (=> b!3224950 m!3503289))

(declare-fun m!3503291 () Bool)

(assert (=> b!3224950 m!3503291))

(assert (=> d!884925 d!885281))

(declare-fun bs!542748 () Bool)

(declare-fun d!885283 () Bool)

(assert (= bs!542748 (and d!885283 d!885025)))

(declare-fun lambda!118075 () Int)

(assert (=> bs!542748 (= (= (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241))) (toValue!7352 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) (= lambda!118075 lambda!118049))))

(declare-fun bs!542749 () Bool)

(assert (= bs!542749 (and d!885283 d!885121)))

(assert (=> bs!542749 (= (= (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241))) (toValue!7352 (transformation!5256 (h!41734 rules!2135)))) (= lambda!118075 lambda!118060))))

(assert (=> d!885283 true))

(assert (=> d!885283 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241)))) (dynLambda!14744 order!18695 lambda!118075))))

(assert (=> d!885283 (= (equivClasses!2062 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toValue!7352 (transformation!5256 (rule!7714 separatorToken!241)))) (Forall2!869 lambda!118075))))

(declare-fun bs!542750 () Bool)

(assert (= bs!542750 d!885283))

(declare-fun m!3503293 () Bool)

(assert (=> bs!542750 m!3503293))

(assert (=> b!3224324 d!885283))

(declare-fun b!3224959 () Bool)

(declare-fun e!2011326 () List!36437)

(assert (=> b!3224959 (= e!2011326 (printList!1395 thiss!18206 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315))))))

(declare-fun d!885285 () Bool)

(declare-fun e!2011327 () Bool)

(assert (=> d!885285 e!2011327))

(declare-fun res!1313449 () Bool)

(assert (=> d!885285 (=> (not res!1313449) (not e!2011327))))

(declare-fun lt!1094043 () List!36437)

(declare-fun content!4908 (List!36437) (InoxSet C!20216))

(assert (=> d!885285 (= res!1313449 (= (content!4908 lt!1094043) ((_ map or) (content!4908 (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) (content!4908 (printList!1395 thiss!18206 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))))))

(assert (=> d!885285 (= lt!1094043 e!2011326)))

(declare-fun c!542025 () Bool)

(assert (=> d!885285 (= c!542025 ((_ is Nil!36313) (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))))))

(assert (=> d!885285 (= (++!8734 (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))) (printList!1395 thiss!18206 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315)))) lt!1094043)))

(declare-fun b!3224961 () Bool)

(declare-fun res!1313448 () Bool)

(assert (=> b!3224961 (=> (not res!1313448) (not e!2011327))))

(assert (=> b!3224961 (= res!1313448 (= (size!27381 lt!1094043) (+ (size!27381 (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) (size!27381 (printList!1395 thiss!18206 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))))))

(declare-fun b!3224960 () Bool)

(assert (=> b!3224960 (= e!2011326 (Cons!36313 (h!41733 (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) (++!8734 (t!240734 (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) (printList!1395 thiss!18206 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315))))))))

(declare-fun b!3224962 () Bool)

(assert (=> b!3224962 (= e!2011327 (or (not (= (printList!1395 thiss!18206 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315))) Nil!36313)) (= lt!1094043 (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))))))

(assert (= (and d!885285 c!542025) b!3224959))

(assert (= (and d!885285 (not c!542025)) b!3224960))

(assert (= (and d!885285 res!1313449) b!3224961))

(assert (= (and b!3224961 res!1313448) b!3224962))

(declare-fun m!3503295 () Bool)

(assert (=> d!885285 m!3503295))

(assert (=> d!885285 m!3502511))

(declare-fun m!3503297 () Bool)

(assert (=> d!885285 m!3503297))

(assert (=> d!885285 m!3502513))

(declare-fun m!3503299 () Bool)

(assert (=> d!885285 m!3503299))

(declare-fun m!3503301 () Bool)

(assert (=> b!3224961 m!3503301))

(assert (=> b!3224961 m!3502511))

(declare-fun m!3503303 () Bool)

(assert (=> b!3224961 m!3503303))

(assert (=> b!3224961 m!3502513))

(declare-fun m!3503305 () Bool)

(assert (=> b!3224961 m!3503305))

(assert (=> b!3224960 m!3502513))

(declare-fun m!3503307 () Bool)

(assert (=> b!3224960 m!3503307))

(assert (=> b!3224350 d!885285))

(declare-fun d!885287 () Bool)

(assert (=> d!885287 (= (list!12937 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))) (list!12941 (c!541877 (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))))))

(declare-fun bs!542751 () Bool)

(assert (= bs!542751 d!885287))

(declare-fun m!3503309 () Bool)

(assert (=> bs!542751 m!3503309))

(assert (=> b!3224350 d!885287))

(declare-fun d!885289 () Bool)

(declare-fun lt!1094044 () BalanceConc!21388)

(assert (=> d!885289 (= (list!12937 lt!1094044) (originalCharacters!5970 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))))

(assert (=> d!885289 (= lt!1094044 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) (value!170256 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))))

(assert (=> d!885289 (= (charsOf!3272 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))) lt!1094044)))

(declare-fun b_lambda!88699 () Bool)

(assert (=> (not b_lambda!88699) (not d!885289)))

(declare-fun t!240872 () Bool)

(declare-fun tb!159485 () Bool)

(assert (=> (and b!3224090 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))) t!240872) tb!159485))

(declare-fun b!3224963 () Bool)

(declare-fun e!2011328 () Bool)

(declare-fun tp!1015953 () Bool)

(assert (=> b!3224963 (= e!2011328 (and (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) (value!170256 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))) tp!1015953))))

(declare-fun result!201952 () Bool)

(assert (=> tb!159485 (= result!201952 (and (inv!49185 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) (value!170256 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) e!2011328))))

(assert (= tb!159485 b!3224963))

(declare-fun m!3503311 () Bool)

(assert (=> b!3224963 m!3503311))

(declare-fun m!3503313 () Bool)

(assert (=> tb!159485 m!3503313))

(assert (=> d!885289 t!240872))

(declare-fun b_and!215745 () Bool)

(assert (= b_and!215743 (and (=> t!240872 result!201952) b_and!215745)))

(declare-fun t!240874 () Bool)

(declare-fun tb!159487 () Bool)

(assert (=> (and b!3224091 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))) t!240874) tb!159487))

(declare-fun result!201954 () Bool)

(assert (= result!201954 result!201952))

(assert (=> d!885289 t!240874))

(declare-fun b_and!215747 () Bool)

(assert (= b_and!215739 (and (=> t!240874 result!201954) b_and!215747)))

(declare-fun t!240876 () Bool)

(declare-fun tb!159489 () Bool)

(assert (=> (and b!3224092 (= (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))) t!240876) tb!159489))

(declare-fun result!201956 () Bool)

(assert (= result!201956 result!201952))

(assert (=> d!885289 t!240876))

(declare-fun b_and!215749 () Bool)

(assert (= b_and!215741 (and (=> t!240876 result!201956) b_and!215749)))

(declare-fun t!240878 () Bool)

(declare-fun tb!159491 () Bool)

(assert (=> (and b!3224406 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))) t!240878) tb!159491))

(declare-fun result!201958 () Bool)

(assert (= result!201958 result!201952))

(assert (=> d!885289 t!240878))

(declare-fun b_and!215751 () Bool)

(assert (= b_and!215735 (and (=> t!240878 result!201958) b_and!215751)))

(declare-fun t!240880 () Bool)

(declare-fun tb!159493 () Bool)

(assert (=> (and b!3224384 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))) t!240880) tb!159493))

(declare-fun result!201960 () Bool)

(assert (= result!201960 result!201952))

(assert (=> d!885289 t!240880))

(declare-fun b_and!215753 () Bool)

(assert (= b_and!215737 (and (=> t!240880 result!201960) b_and!215753)))

(declare-fun m!3503315 () Bool)

(assert (=> d!885289 m!3503315))

(declare-fun m!3503317 () Bool)

(assert (=> d!885289 m!3503317))

(assert (=> b!3224350 d!885289))

(declare-fun d!885291 () Bool)

(declare-fun c!542026 () Bool)

(assert (=> d!885291 (= c!542026 ((_ is Cons!36315) (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315))))))

(declare-fun e!2011329 () List!36437)

(assert (=> d!885291 (= (printList!1395 thiss!18206 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315))) e!2011329)))

(declare-fun b!3224964 () Bool)

(assert (=> b!3224964 (= e!2011329 (++!8734 (list!12937 (charsOf!3272 (h!41735 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315))))) (printList!1395 thiss!18206 (t!240736 (t!240736 (Cons!36315 (h!41735 tokens!494) Nil!36315))))))))

(declare-fun b!3224965 () Bool)

(assert (=> b!3224965 (= e!2011329 Nil!36313)))

(assert (= (and d!885291 c!542026) b!3224964))

(assert (= (and d!885291 (not c!542026)) b!3224965))

(declare-fun m!3503319 () Bool)

(assert (=> b!3224964 m!3503319))

(assert (=> b!3224964 m!3503319))

(declare-fun m!3503321 () Bool)

(assert (=> b!3224964 m!3503321))

(declare-fun m!3503323 () Bool)

(assert (=> b!3224964 m!3503323))

(assert (=> b!3224964 m!3503321))

(assert (=> b!3224964 m!3503323))

(declare-fun m!3503325 () Bool)

(assert (=> b!3224964 m!3503325))

(assert (=> b!3224350 d!885291))

(declare-fun b!3224966 () Bool)

(declare-fun e!2011330 () Bool)

(assert (=> b!3224966 (= e!2011330 tp_is_empty!17313)))

(assert (=> b!3224387 (= tp!1015814 e!2011330)))

(declare-fun b!3224968 () Bool)

(declare-fun tp!1015954 () Bool)

(assert (=> b!3224968 (= e!2011330 tp!1015954)))

(declare-fun b!3224969 () Bool)

(declare-fun tp!1015956 () Bool)

(declare-fun tp!1015955 () Bool)

(assert (=> b!3224969 (= e!2011330 (and tp!1015956 tp!1015955))))

(declare-fun b!3224967 () Bool)

(declare-fun tp!1015957 () Bool)

(declare-fun tp!1015958 () Bool)

(assert (=> b!3224967 (= e!2011330 (and tp!1015957 tp!1015958))))

(assert (= (and b!3224387 ((_ is ElementMatch!10015) (reg!10344 (regex!5256 (h!41734 rules!2135))))) b!3224966))

(assert (= (and b!3224387 ((_ is Concat!15501) (reg!10344 (regex!5256 (h!41734 rules!2135))))) b!3224967))

(assert (= (and b!3224387 ((_ is Star!10015) (reg!10344 (regex!5256 (h!41734 rules!2135))))) b!3224968))

(assert (= (and b!3224387 ((_ is Union!10015) (reg!10344 (regex!5256 (h!41734 rules!2135))))) b!3224969))

(declare-fun b!3224970 () Bool)

(declare-fun e!2011331 () Bool)

(assert (=> b!3224970 (= e!2011331 tp_is_empty!17313)))

(assert (=> b!3224386 (= tp!1015817 e!2011331)))

(declare-fun b!3224972 () Bool)

(declare-fun tp!1015959 () Bool)

(assert (=> b!3224972 (= e!2011331 tp!1015959)))

(declare-fun b!3224973 () Bool)

(declare-fun tp!1015961 () Bool)

(declare-fun tp!1015960 () Bool)

(assert (=> b!3224973 (= e!2011331 (and tp!1015961 tp!1015960))))

(declare-fun b!3224971 () Bool)

(declare-fun tp!1015962 () Bool)

(declare-fun tp!1015963 () Bool)

(assert (=> b!3224971 (= e!2011331 (and tp!1015962 tp!1015963))))

(assert (= (and b!3224386 ((_ is ElementMatch!10015) (regOne!20542 (regex!5256 (h!41734 rules!2135))))) b!3224970))

(assert (= (and b!3224386 ((_ is Concat!15501) (regOne!20542 (regex!5256 (h!41734 rules!2135))))) b!3224971))

(assert (= (and b!3224386 ((_ is Star!10015) (regOne!20542 (regex!5256 (h!41734 rules!2135))))) b!3224972))

(assert (= (and b!3224386 ((_ is Union!10015) (regOne!20542 (regex!5256 (h!41734 rules!2135))))) b!3224973))

(declare-fun b!3224974 () Bool)

(declare-fun e!2011332 () Bool)

(assert (=> b!3224974 (= e!2011332 tp_is_empty!17313)))

(assert (=> b!3224386 (= tp!1015818 e!2011332)))

(declare-fun b!3224976 () Bool)

(declare-fun tp!1015964 () Bool)

(assert (=> b!3224976 (= e!2011332 tp!1015964)))

(declare-fun b!3224977 () Bool)

(declare-fun tp!1015966 () Bool)

(declare-fun tp!1015965 () Bool)

(assert (=> b!3224977 (= e!2011332 (and tp!1015966 tp!1015965))))

(declare-fun b!3224975 () Bool)

(declare-fun tp!1015967 () Bool)

(declare-fun tp!1015968 () Bool)

(assert (=> b!3224975 (= e!2011332 (and tp!1015967 tp!1015968))))

(assert (= (and b!3224386 ((_ is ElementMatch!10015) (regTwo!20542 (regex!5256 (h!41734 rules!2135))))) b!3224974))

(assert (= (and b!3224386 ((_ is Concat!15501) (regTwo!20542 (regex!5256 (h!41734 rules!2135))))) b!3224975))

(assert (= (and b!3224386 ((_ is Star!10015) (regTwo!20542 (regex!5256 (h!41734 rules!2135))))) b!3224976))

(assert (= (and b!3224386 ((_ is Union!10015) (regTwo!20542 (regex!5256 (h!41734 rules!2135))))) b!3224977))

(declare-fun b!3224978 () Bool)

(declare-fun e!2011333 () Bool)

(assert (=> b!3224978 (= e!2011333 tp_is_empty!17313)))

(assert (=> b!3224391 (= tp!1015819 e!2011333)))

(declare-fun b!3224980 () Bool)

(declare-fun tp!1015969 () Bool)

(assert (=> b!3224980 (= e!2011333 tp!1015969)))

(declare-fun b!3224981 () Bool)

(declare-fun tp!1015971 () Bool)

(declare-fun tp!1015970 () Bool)

(assert (=> b!3224981 (= e!2011333 (and tp!1015971 tp!1015970))))

(declare-fun b!3224979 () Bool)

(declare-fun tp!1015972 () Bool)

(declare-fun tp!1015973 () Bool)

(assert (=> b!3224979 (= e!2011333 (and tp!1015972 tp!1015973))))

(assert (= (and b!3224391 ((_ is ElementMatch!10015) (reg!10344 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224978))

(assert (= (and b!3224391 ((_ is Concat!15501) (reg!10344 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224979))

(assert (= (and b!3224391 ((_ is Star!10015) (reg!10344 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224980))

(assert (= (and b!3224391 ((_ is Union!10015) (reg!10344 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224981))

(declare-fun b!3224982 () Bool)

(declare-fun e!2011334 () Bool)

(assert (=> b!3224982 (= e!2011334 tp_is_empty!17313)))

(assert (=> b!3224388 (= tp!1015816 e!2011334)))

(declare-fun b!3224984 () Bool)

(declare-fun tp!1015974 () Bool)

(assert (=> b!3224984 (= e!2011334 tp!1015974)))

(declare-fun b!3224985 () Bool)

(declare-fun tp!1015976 () Bool)

(declare-fun tp!1015975 () Bool)

(assert (=> b!3224985 (= e!2011334 (and tp!1015976 tp!1015975))))

(declare-fun b!3224983 () Bool)

(declare-fun tp!1015977 () Bool)

(declare-fun tp!1015978 () Bool)

(assert (=> b!3224983 (= e!2011334 (and tp!1015977 tp!1015978))))

(assert (= (and b!3224388 ((_ is ElementMatch!10015) (regOne!20543 (regex!5256 (h!41734 rules!2135))))) b!3224982))

(assert (= (and b!3224388 ((_ is Concat!15501) (regOne!20543 (regex!5256 (h!41734 rules!2135))))) b!3224983))

(assert (= (and b!3224388 ((_ is Star!10015) (regOne!20543 (regex!5256 (h!41734 rules!2135))))) b!3224984))

(assert (= (and b!3224388 ((_ is Union!10015) (regOne!20543 (regex!5256 (h!41734 rules!2135))))) b!3224985))

(declare-fun b!3224986 () Bool)

(declare-fun e!2011335 () Bool)

(assert (=> b!3224986 (= e!2011335 tp_is_empty!17313)))

(assert (=> b!3224388 (= tp!1015815 e!2011335)))

(declare-fun b!3224988 () Bool)

(declare-fun tp!1015979 () Bool)

(assert (=> b!3224988 (= e!2011335 tp!1015979)))

(declare-fun b!3224989 () Bool)

(declare-fun tp!1015981 () Bool)

(declare-fun tp!1015980 () Bool)

(assert (=> b!3224989 (= e!2011335 (and tp!1015981 tp!1015980))))

(declare-fun b!3224987 () Bool)

(declare-fun tp!1015982 () Bool)

(declare-fun tp!1015983 () Bool)

(assert (=> b!3224987 (= e!2011335 (and tp!1015982 tp!1015983))))

(assert (= (and b!3224388 ((_ is ElementMatch!10015) (regTwo!20543 (regex!5256 (h!41734 rules!2135))))) b!3224986))

(assert (= (and b!3224388 ((_ is Concat!15501) (regTwo!20543 (regex!5256 (h!41734 rules!2135))))) b!3224987))

(assert (= (and b!3224388 ((_ is Star!10015) (regTwo!20543 (regex!5256 (h!41734 rules!2135))))) b!3224988))

(assert (= (and b!3224388 ((_ is Union!10015) (regTwo!20543 (regex!5256 (h!41734 rules!2135))))) b!3224989))

(declare-fun b!3224990 () Bool)

(declare-fun e!2011336 () Bool)

(assert (=> b!3224990 (= e!2011336 tp_is_empty!17313)))

(assert (=> b!3224392 (= tp!1015821 e!2011336)))

(declare-fun b!3224992 () Bool)

(declare-fun tp!1015984 () Bool)

(assert (=> b!3224992 (= e!2011336 tp!1015984)))

(declare-fun b!3224993 () Bool)

(declare-fun tp!1015986 () Bool)

(declare-fun tp!1015985 () Bool)

(assert (=> b!3224993 (= e!2011336 (and tp!1015986 tp!1015985))))

(declare-fun b!3224991 () Bool)

(declare-fun tp!1015987 () Bool)

(declare-fun tp!1015988 () Bool)

(assert (=> b!3224991 (= e!2011336 (and tp!1015987 tp!1015988))))

(assert (= (and b!3224392 ((_ is ElementMatch!10015) (regOne!20543 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224990))

(assert (= (and b!3224392 ((_ is Concat!15501) (regOne!20543 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224991))

(assert (= (and b!3224392 ((_ is Star!10015) (regOne!20543 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224992))

(assert (= (and b!3224392 ((_ is Union!10015) (regOne!20543 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224993))

(declare-fun b!3224994 () Bool)

(declare-fun e!2011337 () Bool)

(assert (=> b!3224994 (= e!2011337 tp_is_empty!17313)))

(assert (=> b!3224392 (= tp!1015820 e!2011337)))

(declare-fun b!3224996 () Bool)

(declare-fun tp!1015989 () Bool)

(assert (=> b!3224996 (= e!2011337 tp!1015989)))

(declare-fun b!3224997 () Bool)

(declare-fun tp!1015991 () Bool)

(declare-fun tp!1015990 () Bool)

(assert (=> b!3224997 (= e!2011337 (and tp!1015991 tp!1015990))))

(declare-fun b!3224995 () Bool)

(declare-fun tp!1015992 () Bool)

(declare-fun tp!1015993 () Bool)

(assert (=> b!3224995 (= e!2011337 (and tp!1015992 tp!1015993))))

(assert (= (and b!3224392 ((_ is ElementMatch!10015) (regTwo!20543 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224994))

(assert (= (and b!3224392 ((_ is Concat!15501) (regTwo!20543 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224995))

(assert (= (and b!3224392 ((_ is Star!10015) (regTwo!20543 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224996))

(assert (= (and b!3224392 ((_ is Union!10015) (regTwo!20543 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3224997))

(declare-fun b!3224998 () Bool)

(declare-fun e!2011338 () Bool)

(declare-fun tp!1015994 () Bool)

(assert (=> b!3224998 (= e!2011338 (and tp_is_empty!17313 tp!1015994))))

(assert (=> b!3224358 (= tp!1015785 e!2011338)))

(assert (= (and b!3224358 ((_ is Cons!36313) (t!240734 (originalCharacters!5970 (h!41735 tokens!494))))) b!3224998))

(declare-fun b!3225001 () Bool)

(declare-fun b_free!85933 () Bool)

(declare-fun b_next!86637 () Bool)

(assert (=> b!3225001 (= b_free!85933 (not b_next!86637))))

(declare-fun tp!1015997 () Bool)

(declare-fun b_and!215755 () Bool)

(assert (=> b!3225001 (= tp!1015997 b_and!215755)))

(declare-fun b_free!85935 () Bool)

(declare-fun b_next!86639 () Bool)

(assert (=> b!3225001 (= b_free!85935 (not b_next!86639))))

(declare-fun tb!159495 () Bool)

(declare-fun t!240882 () Bool)

(assert (=> (and b!3225001 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 (t!240735 rules!2135))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) t!240882) tb!159495))

(declare-fun result!201962 () Bool)

(assert (= result!201962 result!201900))

(assert (=> b!3224737 t!240882))

(declare-fun t!240884 () Bool)

(declare-fun tb!159497 () Bool)

(assert (=> (and b!3225001 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 (t!240735 rules!2135))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) t!240884) tb!159497))

(declare-fun result!201964 () Bool)

(assert (= result!201964 result!201850))

(assert (=> b!3224352 t!240884))

(assert (=> d!884947 t!240884))

(declare-fun t!240886 () Bool)

(declare-fun tb!159499 () Bool)

(assert (=> (and b!3225001 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 (t!240735 rules!2135))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))) t!240886) tb!159499))

(declare-fun result!201966 () Bool)

(assert (= result!201966 result!201952))

(assert (=> d!885289 t!240886))

(declare-fun tb!159501 () Bool)

(declare-fun t!240888 () Bool)

(assert (=> (and b!3225001 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 (t!240735 rules!2135))))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) t!240888) tb!159501))

(declare-fun result!201968 () Bool)

(assert (= result!201968 result!201858))

(assert (=> b!3224330 t!240888))

(declare-fun t!240890 () Bool)

(declare-fun tb!159503 () Bool)

(assert (=> (and b!3225001 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 (t!240735 rules!2135))))) (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0))))) t!240890) tb!159503))

(declare-fun result!201970 () Bool)

(assert (= result!201970 result!201942))

(assert (=> d!885241 t!240890))

(declare-fun tp!1015995 () Bool)

(declare-fun b_and!215757 () Bool)

(assert (=> b!3225001 (= tp!1015995 (and (=> t!240890 result!201970) (=> t!240888 result!201968) (=> t!240886 result!201966) (=> t!240884 result!201964) (=> t!240882 result!201962) b_and!215757))))

(declare-fun e!2011340 () Bool)

(assert (=> b!3225001 (= e!2011340 (and tp!1015997 tp!1015995))))

(declare-fun tp!1015996 () Bool)

(declare-fun e!2011341 () Bool)

(declare-fun b!3225000 () Bool)

(assert (=> b!3225000 (= e!2011341 (and tp!1015996 (inv!49177 (tag!5788 (h!41734 (t!240735 (t!240735 rules!2135))))) (inv!49181 (transformation!5256 (h!41734 (t!240735 (t!240735 rules!2135))))) e!2011340))))

(declare-fun b!3224999 () Bool)

(declare-fun e!2011339 () Bool)

(declare-fun tp!1015998 () Bool)

(assert (=> b!3224999 (= e!2011339 (and e!2011341 tp!1015998))))

(assert (=> b!3224382 (= tp!1015813 e!2011339)))

(assert (= b!3225000 b!3225001))

(assert (= b!3224999 b!3225000))

(assert (= (and b!3224382 ((_ is Cons!36314) (t!240735 (t!240735 rules!2135)))) b!3224999))

(declare-fun m!3503327 () Bool)

(assert (=> b!3225000 m!3503327))

(declare-fun m!3503329 () Bool)

(assert (=> b!3225000 m!3503329))

(declare-fun b!3225002 () Bool)

(declare-fun e!2011343 () Bool)

(declare-fun tp!1015999 () Bool)

(assert (=> b!3225002 (= e!2011343 (and tp_is_empty!17313 tp!1015999))))

(assert (=> b!3224359 (= tp!1015786 e!2011343)))

(assert (= (and b!3224359 ((_ is Cons!36313) (t!240734 (originalCharacters!5970 separatorToken!241)))) b!3225002))

(declare-fun b!3225003 () Bool)

(declare-fun e!2011344 () Bool)

(assert (=> b!3225003 (= e!2011344 tp_is_empty!17313)))

(assert (=> b!3224383 (= tp!1015811 e!2011344)))

(declare-fun b!3225005 () Bool)

(declare-fun tp!1016000 () Bool)

(assert (=> b!3225005 (= e!2011344 tp!1016000)))

(declare-fun b!3225006 () Bool)

(declare-fun tp!1016002 () Bool)

(declare-fun tp!1016001 () Bool)

(assert (=> b!3225006 (= e!2011344 (and tp!1016002 tp!1016001))))

(declare-fun b!3225004 () Bool)

(declare-fun tp!1016003 () Bool)

(declare-fun tp!1016004 () Bool)

(assert (=> b!3225004 (= e!2011344 (and tp!1016003 tp!1016004))))

(assert (= (and b!3224383 ((_ is ElementMatch!10015) (regex!5256 (h!41734 (t!240735 rules!2135))))) b!3225003))

(assert (= (and b!3224383 ((_ is Concat!15501) (regex!5256 (h!41734 (t!240735 rules!2135))))) b!3225004))

(assert (= (and b!3224383 ((_ is Star!10015) (regex!5256 (h!41734 (t!240735 rules!2135))))) b!3225005))

(assert (= (and b!3224383 ((_ is Union!10015) (regex!5256 (h!41734 (t!240735 rules!2135))))) b!3225006))

(declare-fun b!3225015 () Bool)

(declare-fun tp!1016012 () Bool)

(declare-fun tp!1016013 () Bool)

(declare-fun e!2011350 () Bool)

(assert (=> b!3225015 (= e!2011350 (and (inv!49184 (left!28273 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))))) tp!1016013 (inv!49184 (right!28603 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))))) tp!1016012))))

(declare-fun b!3225017 () Bool)

(declare-fun e!2011349 () Bool)

(declare-fun tp!1016011 () Bool)

(assert (=> b!3225017 (= e!2011349 tp!1016011)))

(declare-fun b!3225016 () Bool)

(declare-fun inv!49191 (IArray!21779) Bool)

(assert (=> b!3225016 (= e!2011350 (and (inv!49191 (xs!14005 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))))) e!2011349))))

(assert (=> b!3224332 (= tp!1015782 (and (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241)))) e!2011350))))

(assert (= (and b!3224332 ((_ is Node!10887) (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))))) b!3225015))

(assert (= b!3225016 b!3225017))

(assert (= (and b!3224332 ((_ is Leaf!17126) (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (value!170256 separatorToken!241))))) b!3225016))

(declare-fun m!3503331 () Bool)

(assert (=> b!3225015 m!3503331))

(declare-fun m!3503333 () Bool)

(assert (=> b!3225015 m!3503333))

(declare-fun m!3503335 () Bool)

(assert (=> b!3225016 m!3503335))

(assert (=> b!3224332 m!3502445))

(declare-fun b!3225018 () Bool)

(declare-fun e!2011351 () Bool)

(declare-fun tp!1016014 () Bool)

(assert (=> b!3225018 (= e!2011351 (and tp_is_empty!17313 tp!1016014))))

(assert (=> b!3224404 (= tp!1015837 e!2011351)))

(assert (= (and b!3224404 ((_ is Cons!36313) (originalCharacters!5970 (h!41735 (t!240736 tokens!494))))) b!3225018))

(declare-fun b!3225022 () Bool)

(declare-fun b_free!85937 () Bool)

(declare-fun b_next!86641 () Bool)

(assert (=> b!3225022 (= b_free!85937 (not b_next!86641))))

(declare-fun tp!1016019 () Bool)

(declare-fun b_and!215759 () Bool)

(assert (=> b!3225022 (= tp!1016019 b_and!215759)))

(declare-fun b_free!85939 () Bool)

(declare-fun b_next!86643 () Bool)

(assert (=> b!3225022 (= b_free!85939 (not b_next!86643))))

(declare-fun t!240892 () Bool)

(declare-fun tb!159505 () Bool)

(assert (=> (and b!3225022 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 (t!240736 tokens!494)))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) t!240892) tb!159505))

(declare-fun result!201974 () Bool)

(assert (= result!201974 result!201900))

(assert (=> b!3224737 t!240892))

(declare-fun t!240894 () Bool)

(declare-fun tb!159507 () Bool)

(assert (=> (and b!3225022 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 (t!240736 tokens!494)))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494))))) t!240894) tb!159507))

(declare-fun result!201976 () Bool)

(assert (= result!201976 result!201850))

(assert (=> b!3224352 t!240894))

(assert (=> d!884947 t!240894))

(declare-fun t!240896 () Bool)

(declare-fun tb!159509 () Bool)

(assert (=> (and b!3225022 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 (t!240736 tokens!494)))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (Cons!36315 (h!41735 tokens!494) Nil!36315)))))) t!240896) tb!159509))

(declare-fun result!201978 () Bool)

(assert (= result!201978 result!201952))

(assert (=> d!885289 t!240896))

(declare-fun tb!159511 () Bool)

(declare-fun t!240898 () Bool)

(assert (=> (and b!3225022 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 (t!240736 tokens!494)))))) (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241)))) t!240898) tb!159511))

(declare-fun result!201980 () Bool)

(assert (= result!201980 result!201858))

(assert (=> b!3224330 t!240898))

(declare-fun t!240900 () Bool)

(declare-fun tb!159513 () Bool)

(assert (=> (and b!3225022 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 (t!240736 tokens!494)))))) (toChars!7211 (transformation!5256 (rule!7714 (apply!8279 lt!1093804 0))))) t!240900) tb!159513))

(declare-fun result!201982 () Bool)

(assert (= result!201982 result!201942))

(assert (=> d!885241 t!240900))

(declare-fun b_and!215761 () Bool)

(declare-fun tp!1016017 () Bool)

(assert (=> b!3225022 (= tp!1016017 (and (=> t!240894 result!201976) (=> t!240896 result!201978) (=> t!240892 result!201974) (=> t!240898 result!201980) (=> t!240900 result!201982) b_and!215761))))

(declare-fun b!3225019 () Bool)

(declare-fun e!2011355 () Bool)

(declare-fun tp!1016016 () Bool)

(declare-fun e!2011353 () Bool)

(assert (=> b!3225019 (= e!2011353 (and (inv!49180 (h!41735 (t!240736 (t!240736 tokens!494)))) e!2011355 tp!1016016))))

(declare-fun b!3225021 () Bool)

(declare-fun tp!1016015 () Bool)

(declare-fun e!2011354 () Bool)

(declare-fun e!2011357 () Bool)

(assert (=> b!3225021 (= e!2011357 (and tp!1016015 (inv!49177 (tag!5788 (rule!7714 (h!41735 (t!240736 (t!240736 tokens!494)))))) (inv!49181 (transformation!5256 (rule!7714 (h!41735 (t!240736 (t!240736 tokens!494)))))) e!2011354))))

(assert (=> b!3225022 (= e!2011354 (and tp!1016019 tp!1016017))))

(declare-fun tp!1016018 () Bool)

(declare-fun b!3225020 () Bool)

(assert (=> b!3225020 (= e!2011355 (and (inv!21 (value!170256 (h!41735 (t!240736 (t!240736 tokens!494))))) e!2011357 tp!1016018))))

(assert (=> b!3224403 (= tp!1015835 e!2011353)))

(assert (= b!3225021 b!3225022))

(assert (= b!3225020 b!3225021))

(assert (= b!3225019 b!3225020))

(assert (= (and b!3224403 ((_ is Cons!36315) (t!240736 (t!240736 tokens!494)))) b!3225019))

(declare-fun m!3503337 () Bool)

(assert (=> b!3225019 m!3503337))

(declare-fun m!3503339 () Bool)

(assert (=> b!3225021 m!3503339))

(declare-fun m!3503341 () Bool)

(assert (=> b!3225021 m!3503341))

(declare-fun m!3503343 () Bool)

(assert (=> b!3225020 m!3503343))

(declare-fun tp!1016022 () Bool)

(declare-fun e!2011359 () Bool)

(declare-fun tp!1016021 () Bool)

(declare-fun b!3225023 () Bool)

(assert (=> b!3225023 (= e!2011359 (and (inv!49184 (left!28273 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))))) tp!1016022 (inv!49184 (right!28603 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))))) tp!1016021))))

(declare-fun b!3225025 () Bool)

(declare-fun e!2011358 () Bool)

(declare-fun tp!1016020 () Bool)

(assert (=> b!3225025 (= e!2011358 tp!1016020)))

(declare-fun b!3225024 () Bool)

(assert (=> b!3225024 (= e!2011359 (and (inv!49191 (xs!14005 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))))) e!2011358))))

(assert (=> b!3224316 (= tp!1015781 (and (inv!49184 (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494))))) e!2011359))))

(assert (= (and b!3224316 ((_ is Node!10887) (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))))) b!3225023))

(assert (= b!3225024 b!3225025))

(assert (= (and b!3224316 ((_ is Leaf!17126) (c!541877 (dynLambda!14743 (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (value!170256 (h!41735 tokens!494)))))) b!3225024))

(declare-fun m!3503345 () Bool)

(assert (=> b!3225023 m!3503345))

(declare-fun m!3503347 () Bool)

(assert (=> b!3225023 m!3503347))

(declare-fun m!3503349 () Bool)

(assert (=> b!3225024 m!3503349))

(assert (=> b!3224316 m!3502423))

(declare-fun b!3225026 () Bool)

(declare-fun e!2011360 () Bool)

(assert (=> b!3225026 (= e!2011360 tp_is_empty!17313)))

(assert (=> b!3224405 (= tp!1015834 e!2011360)))

(declare-fun b!3225028 () Bool)

(declare-fun tp!1016023 () Bool)

(assert (=> b!3225028 (= e!2011360 tp!1016023)))

(declare-fun b!3225029 () Bool)

(declare-fun tp!1016025 () Bool)

(declare-fun tp!1016024 () Bool)

(assert (=> b!3225029 (= e!2011360 (and tp!1016025 tp!1016024))))

(declare-fun b!3225027 () Bool)

(declare-fun tp!1016026 () Bool)

(declare-fun tp!1016027 () Bool)

(assert (=> b!3225027 (= e!2011360 (and tp!1016026 tp!1016027))))

(assert (= (and b!3224405 ((_ is ElementMatch!10015) (regex!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) b!3225026))

(assert (= (and b!3224405 ((_ is Concat!15501) (regex!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) b!3225027))

(assert (= (and b!3224405 ((_ is Star!10015) (regex!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) b!3225028))

(assert (= (and b!3224405 ((_ is Union!10015) (regex!5256 (rule!7714 (h!41735 (t!240736 tokens!494)))))) b!3225029))

(declare-fun b!3225030 () Bool)

(declare-fun e!2011361 () Bool)

(assert (=> b!3225030 (= e!2011361 tp_is_empty!17313)))

(assert (=> b!3224371 (= tp!1015800 e!2011361)))

(declare-fun b!3225032 () Bool)

(declare-fun tp!1016028 () Bool)

(assert (=> b!3225032 (= e!2011361 tp!1016028)))

(declare-fun b!3225033 () Bool)

(declare-fun tp!1016030 () Bool)

(declare-fun tp!1016029 () Bool)

(assert (=> b!3225033 (= e!2011361 (and tp!1016030 tp!1016029))))

(declare-fun b!3225031 () Bool)

(declare-fun tp!1016031 () Bool)

(declare-fun tp!1016032 () Bool)

(assert (=> b!3225031 (= e!2011361 (and tp!1016031 tp!1016032))))

(assert (= (and b!3224371 ((_ is ElementMatch!10015) (regOne!20542 (regex!5256 (rule!7714 separatorToken!241))))) b!3225030))

(assert (= (and b!3224371 ((_ is Concat!15501) (regOne!20542 (regex!5256 (rule!7714 separatorToken!241))))) b!3225031))

(assert (= (and b!3224371 ((_ is Star!10015) (regOne!20542 (regex!5256 (rule!7714 separatorToken!241))))) b!3225032))

(assert (= (and b!3224371 ((_ is Union!10015) (regOne!20542 (regex!5256 (rule!7714 separatorToken!241))))) b!3225033))

(declare-fun b!3225034 () Bool)

(declare-fun e!2011362 () Bool)

(assert (=> b!3225034 (= e!2011362 tp_is_empty!17313)))

(assert (=> b!3224371 (= tp!1015801 e!2011362)))

(declare-fun b!3225036 () Bool)

(declare-fun tp!1016033 () Bool)

(assert (=> b!3225036 (= e!2011362 tp!1016033)))

(declare-fun b!3225037 () Bool)

(declare-fun tp!1016035 () Bool)

(declare-fun tp!1016034 () Bool)

(assert (=> b!3225037 (= e!2011362 (and tp!1016035 tp!1016034))))

(declare-fun b!3225035 () Bool)

(declare-fun tp!1016036 () Bool)

(declare-fun tp!1016037 () Bool)

(assert (=> b!3225035 (= e!2011362 (and tp!1016036 tp!1016037))))

(assert (= (and b!3224371 ((_ is ElementMatch!10015) (regTwo!20542 (regex!5256 (rule!7714 separatorToken!241))))) b!3225034))

(assert (= (and b!3224371 ((_ is Concat!15501) (regTwo!20542 (regex!5256 (rule!7714 separatorToken!241))))) b!3225035))

(assert (= (and b!3224371 ((_ is Star!10015) (regTwo!20542 (regex!5256 (rule!7714 separatorToken!241))))) b!3225036))

(assert (= (and b!3224371 ((_ is Union!10015) (regTwo!20542 (regex!5256 (rule!7714 separatorToken!241))))) b!3225037))

(declare-fun b!3225040 () Bool)

(declare-fun e!2011365 () Bool)

(assert (=> b!3225040 (= e!2011365 true)))

(declare-fun b!3225039 () Bool)

(declare-fun e!2011364 () Bool)

(assert (=> b!3225039 (= e!2011364 e!2011365)))

(declare-fun b!3225038 () Bool)

(declare-fun e!2011363 () Bool)

(assert (=> b!3225038 (= e!2011363 e!2011364)))

(assert (=> b!3224212 e!2011363))

(assert (= b!3225039 b!3225040))

(assert (= b!3225038 b!3225039))

(assert (= (and b!3224212 ((_ is Cons!36314) (t!240735 rules!2135))) b!3225038))

(assert (=> b!3225040 (< (dynLambda!14740 order!18689 (toValue!7352 (transformation!5256 (h!41734 (t!240735 rules!2135))))) (dynLambda!14741 order!18691 lambda!118043))))

(assert (=> b!3225040 (< (dynLambda!14742 order!18693 (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135))))) (dynLambda!14741 order!18691 lambda!118043))))

(declare-fun b!3225041 () Bool)

(declare-fun e!2011366 () Bool)

(assert (=> b!3225041 (= e!2011366 tp_is_empty!17313)))

(assert (=> b!3224390 (= tp!1015822 e!2011366)))

(declare-fun b!3225043 () Bool)

(declare-fun tp!1016038 () Bool)

(assert (=> b!3225043 (= e!2011366 tp!1016038)))

(declare-fun b!3225044 () Bool)

(declare-fun tp!1016040 () Bool)

(declare-fun tp!1016039 () Bool)

(assert (=> b!3225044 (= e!2011366 (and tp!1016040 tp!1016039))))

(declare-fun b!3225042 () Bool)

(declare-fun tp!1016041 () Bool)

(declare-fun tp!1016042 () Bool)

(assert (=> b!3225042 (= e!2011366 (and tp!1016041 tp!1016042))))

(assert (= (and b!3224390 ((_ is ElementMatch!10015) (regOne!20542 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3225041))

(assert (= (and b!3224390 ((_ is Concat!15501) (regOne!20542 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3225042))

(assert (= (and b!3224390 ((_ is Star!10015) (regOne!20542 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3225043))

(assert (= (and b!3224390 ((_ is Union!10015) (regOne!20542 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3225044))

(declare-fun b!3225045 () Bool)

(declare-fun e!2011367 () Bool)

(assert (=> b!3225045 (= e!2011367 tp_is_empty!17313)))

(assert (=> b!3224390 (= tp!1015823 e!2011367)))

(declare-fun b!3225047 () Bool)

(declare-fun tp!1016043 () Bool)

(assert (=> b!3225047 (= e!2011367 tp!1016043)))

(declare-fun b!3225048 () Bool)

(declare-fun tp!1016045 () Bool)

(declare-fun tp!1016044 () Bool)

(assert (=> b!3225048 (= e!2011367 (and tp!1016045 tp!1016044))))

(declare-fun b!3225046 () Bool)

(declare-fun tp!1016046 () Bool)

(declare-fun tp!1016047 () Bool)

(assert (=> b!3225046 (= e!2011367 (and tp!1016046 tp!1016047))))

(assert (= (and b!3224390 ((_ is ElementMatch!10015) (regTwo!20542 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3225045))

(assert (= (and b!3224390 ((_ is Concat!15501) (regTwo!20542 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3225046))

(assert (= (and b!3224390 ((_ is Star!10015) (regTwo!20542 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3225047))

(assert (= (and b!3224390 ((_ is Union!10015) (regTwo!20542 (regex!5256 (rule!7714 (h!41735 tokens!494)))))) b!3225048))

(declare-fun b!3225049 () Bool)

(declare-fun e!2011368 () Bool)

(assert (=> b!3225049 (= e!2011368 tp_is_empty!17313)))

(assert (=> b!3224373 (= tp!1015799 e!2011368)))

(declare-fun b!3225051 () Bool)

(declare-fun tp!1016048 () Bool)

(assert (=> b!3225051 (= e!2011368 tp!1016048)))

(declare-fun b!3225052 () Bool)

(declare-fun tp!1016050 () Bool)

(declare-fun tp!1016049 () Bool)

(assert (=> b!3225052 (= e!2011368 (and tp!1016050 tp!1016049))))

(declare-fun b!3225050 () Bool)

(declare-fun tp!1016051 () Bool)

(declare-fun tp!1016052 () Bool)

(assert (=> b!3225050 (= e!2011368 (and tp!1016051 tp!1016052))))

(assert (= (and b!3224373 ((_ is ElementMatch!10015) (regOne!20543 (regex!5256 (rule!7714 separatorToken!241))))) b!3225049))

(assert (= (and b!3224373 ((_ is Concat!15501) (regOne!20543 (regex!5256 (rule!7714 separatorToken!241))))) b!3225050))

(assert (= (and b!3224373 ((_ is Star!10015) (regOne!20543 (regex!5256 (rule!7714 separatorToken!241))))) b!3225051))

(assert (= (and b!3224373 ((_ is Union!10015) (regOne!20543 (regex!5256 (rule!7714 separatorToken!241))))) b!3225052))

(declare-fun b!3225053 () Bool)

(declare-fun e!2011369 () Bool)

(assert (=> b!3225053 (= e!2011369 tp_is_empty!17313)))

(assert (=> b!3224373 (= tp!1015798 e!2011369)))

(declare-fun b!3225055 () Bool)

(declare-fun tp!1016053 () Bool)

(assert (=> b!3225055 (= e!2011369 tp!1016053)))

(declare-fun b!3225056 () Bool)

(declare-fun tp!1016055 () Bool)

(declare-fun tp!1016054 () Bool)

(assert (=> b!3225056 (= e!2011369 (and tp!1016055 tp!1016054))))

(declare-fun b!3225054 () Bool)

(declare-fun tp!1016056 () Bool)

(declare-fun tp!1016057 () Bool)

(assert (=> b!3225054 (= e!2011369 (and tp!1016056 tp!1016057))))

(assert (= (and b!3224373 ((_ is ElementMatch!10015) (regTwo!20543 (regex!5256 (rule!7714 separatorToken!241))))) b!3225053))

(assert (= (and b!3224373 ((_ is Concat!15501) (regTwo!20543 (regex!5256 (rule!7714 separatorToken!241))))) b!3225054))

(assert (= (and b!3224373 ((_ is Star!10015) (regTwo!20543 (regex!5256 (rule!7714 separatorToken!241))))) b!3225055))

(assert (= (and b!3224373 ((_ is Union!10015) (regTwo!20543 (regex!5256 (rule!7714 separatorToken!241))))) b!3225056))

(declare-fun b!3225057 () Bool)

(declare-fun e!2011370 () Bool)

(assert (=> b!3225057 (= e!2011370 tp_is_empty!17313)))

(assert (=> b!3224372 (= tp!1015797 e!2011370)))

(declare-fun b!3225059 () Bool)

(declare-fun tp!1016058 () Bool)

(assert (=> b!3225059 (= e!2011370 tp!1016058)))

(declare-fun b!3225060 () Bool)

(declare-fun tp!1016060 () Bool)

(declare-fun tp!1016059 () Bool)

(assert (=> b!3225060 (= e!2011370 (and tp!1016060 tp!1016059))))

(declare-fun b!3225058 () Bool)

(declare-fun tp!1016061 () Bool)

(declare-fun tp!1016062 () Bool)

(assert (=> b!3225058 (= e!2011370 (and tp!1016061 tp!1016062))))

(assert (= (and b!3224372 ((_ is ElementMatch!10015) (reg!10344 (regex!5256 (rule!7714 separatorToken!241))))) b!3225057))

(assert (= (and b!3224372 ((_ is Concat!15501) (reg!10344 (regex!5256 (rule!7714 separatorToken!241))))) b!3225058))

(assert (= (and b!3224372 ((_ is Star!10015) (reg!10344 (regex!5256 (rule!7714 separatorToken!241))))) b!3225059))

(assert (= (and b!3224372 ((_ is Union!10015) (reg!10344 (regex!5256 (rule!7714 separatorToken!241))))) b!3225060))

(declare-fun b_lambda!88701 () Bool)

(assert (= b_lambda!88681 (or b!3224087 b_lambda!88701)))

(declare-fun bs!542752 () Bool)

(declare-fun d!885293 () Bool)

(assert (= bs!542752 (and d!885293 b!3224087)))

(assert (=> bs!542752 (= (dynLambda!14739 lambda!118033 (h!41735 (t!240736 tokens!494))) (not (isSeparator!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))))))

(assert (=> b!3224735 d!885293))

(declare-fun b_lambda!88703 () Bool)

(assert (= b_lambda!88697 (or d!884897 b_lambda!88703)))

(declare-fun bs!542753 () Bool)

(declare-fun d!885295 () Bool)

(assert (= bs!542753 (and d!885295 d!884897)))

(assert (=> bs!542753 (= (dynLambda!14739 lambda!118043 (h!41735 (list!12940 (seqFromList!3580 tokens!494)))) (rulesProduceIndividualToken!2337 thiss!18206 rules!2135 (h!41735 (list!12940 (seqFromList!3580 tokens!494)))))))

(assert (=> bs!542753 m!3503029))

(assert (=> b!3224922 d!885295))

(declare-fun b_lambda!88705 () Bool)

(assert (= b_lambda!88683 (or (and b!3224092 b_free!85907 (= (toChars!7211 (transformation!5256 (rule!7714 separatorToken!241))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))))) (and b!3224406 b_free!85923) (and b!3224091 b_free!85903 (= (toChars!7211 (transformation!5256 (h!41734 rules!2135))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))))) (and b!3224384 b_free!85919 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 rules!2135)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))))) (and b!3225022 b_free!85939 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 (t!240736 tokens!494)))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))))) (and b!3225001 b_free!85935 (= (toChars!7211 (transformation!5256 (h!41734 (t!240735 (t!240735 rules!2135))))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))))) (and b!3224090 b_free!85899 (= (toChars!7211 (transformation!5256 (rule!7714 (h!41735 tokens!494)))) (toChars!7211 (transformation!5256 (rule!7714 (h!41735 (t!240736 tokens!494))))))) b_lambda!88705)))

(check-sat (not d!885037) (not b!3225055) (not d!885089) (not b!3224985) (not b!3224541) (not d!885189) (not d!885287) (not b!3224545) (not b_next!86603) (not d!885101) (not b!3224551) (not b_next!86637) (not b!3224891) (not d!885253) (not b!3224540) (not b_next!86605) (not b_lambda!88699) (not b!3224983) (not b!3224991) b_and!215683 (not d!885263) (not b!3225027) (not b!3224736) b_and!215679 (not b!3225016) (not b!3225044) (not b!3224568) b_and!215745 (not b!3225005) (not b!3224921) (not b!3224737) (not b!3225058) (not d!885085) (not b!3225050) (not d!885119) (not d!885115) (not b!3224947) (not d!885131) (not b!3224988) (not b!3225021) (not d!885093) (not b!3225023) (not b!3225037) (not b!3224946) (not d!885215) (not b_next!86623) (not b!3225035) (not b!3224976) b_and!215749 (not b!3224882) (not b!3224702) (not d!885039) (not b!3225017) b_and!215623 (not b!3224980) (not d!885027) (not b!3225042) (not b!3224556) (not d!885023) (not b!3225047) (not d!885259) (not b!3224542) (not b!3224455) (not b!3224945) (not d!885113) (not b!3224884) (not b!3224961) (not bm!233163) (not b!3224999) (not b!3224995) (not b!3224875) (not b!3224549) (not b!3225000) (not b!3224975) (not tb!159485) (not b_lambda!88701) (not b_lambda!88671) (not d!885133) (not b!3225029) (not b!3224467) (not b!3224316) (not b!3224894) (not b!3224763) (not b!3224919) (not d!885125) (not b_lambda!88669) (not d!885239) (not b!3225002) (not tb!159435) (not d!885201) (not b!3224984) (not b!3224993) (not b!3224944) b_and!215751 (not d!885197) (not b_next!86621) b_and!215747 (not b!3224989) (not b!3224942) (not b!3224998) (not d!885285) (not tb!159475) (not b!3225033) (not b_next!86609) (not b!3224943) (not b!3225025) (not b!3224926) (not b_next!86601) (not bm!233155) (not b!3225015) (not d!885111) b_and!215757 (not b!3224892) (not b!3224452) (not b!3224971) (not b!3225019) (not d!885249) (not b!3224547) (not b!3224544) (not d!885219) (not b!3225006) (not b!3224900) (not b!3225048) (not b!3224960) (not d!885029) (not b!3224917) (not b!3224695) (not b_next!86625) (not b_next!86639) (not b!3225046) (not b_next!86643) (not b_next!86641) (not b!3225060) (not b!3224916) (not d!885099) b_and!215627 (not b!3224888) (not d!885261) (not b!3225031) (not b!3225020) b_and!215761 (not d!885087) (not d!885193) (not d!885247) (not bm!233164) (not b!3224764) (not b!3224987) (not b!3224997) tp_is_empty!17313 (not b!3224950) (not d!885273) (not b!3224923) (not b!3224743) (not b!3224732) (not b!3224969) (not bs!542753) (not b!3224973) (not b!3224466) (not b!3224918) (not d!885105) (not b_lambda!88695) (not b!3225024) (not b!3224979) (not b!3224972) b_and!215631 (not d!885289) (not d!885097) (not d!885257) (not b!3224898) (not d!885195) (not b_lambda!88703) (not d!885211) (not d!885223) (not b!3224968) (not b!3224332) (not b!3224762) (not b!3225032) b_and!215755 (not d!885107) (not b!3224977) (not b!3224981) (not d!885241) (not b!3224575) (not b!3224734) (not b!3224906) (not d!885103) (not b!3224996) (not d!885233) (not b_lambda!88667) (not b_next!86607) (not b!3224963) (not b!3224927) (not b!3224581) (not b!3224967) (not d!885269) (not b!3225018) (not b!3224543) (not b!3225038) (not d!885031) (not d!885283) (not bm!233165) (not b!3224696) (not b!3224920) (not b!3224924) (not b!3224915) (not b!3225059) (not b_lambda!88673) (not d!885251) (not b!3224929) (not b!3225036) (not b_next!86627) (not d!885025) (not b!3224964) (not b!3225054) (not d!885121) (not b!3225028) (not b!3225051) (not b_lambda!88705) (not b!3225004) (not b!3224741) (not d!885117) (not b!3225052) (not b!3224873) (not b!3224992) (not d!885243) b_and!215759 (not d!885021) (not b!3224738) (not b_next!86611) b_and!215753 (not b!3224580) (not b!3225056) (not d!885281) (not b!3224701) (not b!3224694) (not b!3225043) (not d!885035))
(check-sat b_and!215745 b_and!215623 b_and!215751 b_and!215757 b_and!215631 b_and!215755 (not b_next!86607) (not b_next!86627) b_and!215753 (not b_next!86603) (not b_next!86637) (not b_next!86605) b_and!215679 b_and!215683 (not b_next!86623) b_and!215749 (not b_next!86621) b_and!215747 (not b_next!86601) (not b_next!86609) (not b_next!86625) (not b_next!86639) (not b_next!86643) (not b_next!86641) b_and!215627 b_and!215761 b_and!215759 (not b_next!86611))
