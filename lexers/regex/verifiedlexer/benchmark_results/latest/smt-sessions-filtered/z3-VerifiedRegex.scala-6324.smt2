; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!321226 () Bool)

(assert start!321226)

(declare-fun b!3454809 () Bool)

(declare-fun b_free!89705 () Bool)

(declare-fun b_next!90409 () Bool)

(assert (=> b!3454809 (= b_free!89705 (not b_next!90409))))

(declare-fun tp!1077130 () Bool)

(declare-fun b_and!242787 () Bool)

(assert (=> b!3454809 (= tp!1077130 b_and!242787)))

(declare-fun b_free!89707 () Bool)

(declare-fun b_next!90411 () Bool)

(assert (=> b!3454809 (= b_free!89707 (not b_next!90411))))

(declare-fun tp!1077134 () Bool)

(declare-fun b_and!242789 () Bool)

(assert (=> b!3454809 (= tp!1077134 b_and!242789)))

(declare-fun b!3454806 () Bool)

(declare-fun b_free!89709 () Bool)

(declare-fun b_next!90413 () Bool)

(assert (=> b!3454806 (= b_free!89709 (not b_next!90413))))

(declare-fun tp!1077136 () Bool)

(declare-fun b_and!242791 () Bool)

(assert (=> b!3454806 (= tp!1077136 b_and!242791)))

(declare-fun b_free!89711 () Bool)

(declare-fun b_next!90415 () Bool)

(assert (=> b!3454806 (= b_free!89711 (not b_next!90415))))

(declare-fun tp!1077142 () Bool)

(declare-fun b_and!242793 () Bool)

(assert (=> b!3454806 (= tp!1077142 b_and!242793)))

(declare-fun b!3454810 () Bool)

(declare-fun b_free!89713 () Bool)

(declare-fun b_next!90417 () Bool)

(assert (=> b!3454810 (= b_free!89713 (not b_next!90417))))

(declare-fun tp!1077133 () Bool)

(declare-fun b_and!242795 () Bool)

(assert (=> b!3454810 (= tp!1077133 b_and!242795)))

(declare-fun b_free!89715 () Bool)

(declare-fun b_next!90419 () Bool)

(assert (=> b!3454810 (= b_free!89715 (not b_next!90419))))

(declare-fun tp!1077135 () Bool)

(declare-fun b_and!242797 () Bool)

(assert (=> b!3454810 (= tp!1077135 b_and!242797)))

(declare-fun bs!560021 () Bool)

(declare-fun b!3454799 () Bool)

(declare-fun b!3454830 () Bool)

(assert (= bs!560021 (and b!3454799 b!3454830)))

(declare-fun lambda!121667 () Int)

(declare-fun lambda!121666 () Int)

(assert (=> bs!560021 (not (= lambda!121667 lambda!121666))))

(declare-fun b!3454848 () Bool)

(declare-fun e!2140200 () Bool)

(assert (=> b!3454848 (= e!2140200 true)))

(declare-fun b!3454847 () Bool)

(declare-fun e!2140199 () Bool)

(assert (=> b!3454847 (= e!2140199 e!2140200)))

(declare-fun b!3454846 () Bool)

(declare-fun e!2140198 () Bool)

(assert (=> b!3454846 (= e!2140198 e!2140199)))

(assert (=> b!3454799 e!2140198))

(assert (= b!3454847 b!3454848))

(assert (= b!3454846 b!3454847))

(declare-datatypes ((C!20560 0))(
  ( (C!20561 (val!12328 Int)) )
))
(declare-datatypes ((Regex!10187 0))(
  ( (ElementMatch!10187 (c!591378 C!20560)) (Concat!15845 (regOne!20886 Regex!10187) (regTwo!20886 Regex!10187)) (EmptyExpr!10187) (Star!10187 (reg!10516 Regex!10187)) (EmptyLang!10187) (Union!10187 (regOne!20887 Regex!10187) (regTwo!20887 Regex!10187)) )
))
(declare-datatypes ((List!37240 0))(
  ( (Nil!37116) (Cons!37116 (h!42536 (_ BitVec 16)) (t!272245 List!37240)) )
))
(declare-datatypes ((TokenValue!5658 0))(
  ( (FloatLiteralValue!11316 (text!40051 List!37240)) (TokenValueExt!5657 (__x!23533 Int)) (Broken!28290 (value!175132 List!37240)) (Object!5781) (End!5658) (Def!5658) (Underscore!5658) (Match!5658) (Else!5658) (Error!5658) (Case!5658) (If!5658) (Extends!5658) (Abstract!5658) (Class!5658) (Val!5658) (DelimiterValue!11316 (del!5718 List!37240)) (KeywordValue!5664 (value!175133 List!37240)) (CommentValue!11316 (value!175134 List!37240)) (WhitespaceValue!11316 (value!175135 List!37240)) (IndentationValue!5658 (value!175136 List!37240)) (String!41623) (Int32!5658) (Broken!28291 (value!175137 List!37240)) (Boolean!5659) (Unit!52441) (OperatorValue!5661 (op!5718 List!37240)) (IdentifierValue!11316 (value!175138 List!37240)) (IdentifierValue!11317 (value!175139 List!37240)) (WhitespaceValue!11317 (value!175140 List!37240)) (True!11316) (False!11316) (Broken!28292 (value!175141 List!37240)) (Broken!28293 (value!175142 List!37240)) (True!11317) (RightBrace!5658) (RightBracket!5658) (Colon!5658) (Null!5658) (Comma!5658) (LeftBracket!5658) (False!11317) (LeftBrace!5658) (ImaginaryLiteralValue!5658 (text!40052 List!37240)) (StringLiteralValue!16974 (value!175143 List!37240)) (EOFValue!5658 (value!175144 List!37240)) (IdentValue!5658 (value!175145 List!37240)) (DelimiterValue!11317 (value!175146 List!37240)) (DedentValue!5658 (value!175147 List!37240)) (NewLineValue!5658 (value!175148 List!37240)) (IntegerValue!16974 (value!175149 (_ BitVec 32)) (text!40053 List!37240)) (IntegerValue!16975 (value!175150 Int) (text!40054 List!37240)) (Times!5658) (Or!5658) (Equal!5658) (Minus!5658) (Broken!28294 (value!175151 List!37240)) (And!5658) (Div!5658) (LessEqual!5658) (Mod!5658) (Concat!15846) (Not!5658) (Plus!5658) (SpaceValue!5658 (value!175152 List!37240)) (IntegerValue!16976 (value!175153 Int) (text!40055 List!37240)) (StringLiteralValue!16975 (text!40056 List!37240)) (FloatLiteralValue!11317 (text!40057 List!37240)) (BytesLiteralValue!5658 (value!175154 List!37240)) (CommentValue!11317 (value!175155 List!37240)) (StringLiteralValue!16976 (value!175156 List!37240)) (ErrorTokenValue!5658 (msg!5719 List!37240)) )
))
(declare-datatypes ((List!37241 0))(
  ( (Nil!37117) (Cons!37117 (h!42537 C!20560) (t!272246 List!37241)) )
))
(declare-datatypes ((IArray!22467 0))(
  ( (IArray!22468 (innerList!11291 List!37241)) )
))
(declare-datatypes ((Conc!11231 0))(
  ( (Node!11231 (left!28951 Conc!11231) (right!29281 Conc!11231) (csize!22692 Int) (cheight!11442 Int)) (Leaf!17556 (xs!14405 IArray!22467) (csize!22693 Int)) (Empty!11231) )
))
(declare-datatypes ((BalanceConc!22076 0))(
  ( (BalanceConc!22077 (c!591379 Conc!11231)) )
))
(declare-datatypes ((String!41624 0))(
  ( (String!41625 (value!175157 String)) )
))
(declare-datatypes ((TokenValueInjection!10744 0))(
  ( (TokenValueInjection!10745 (toValue!7652 Int) (toChars!7511 Int)) )
))
(declare-datatypes ((Rule!10656 0))(
  ( (Rule!10657 (regex!5428 Regex!10187) (tag!6032 String!41624) (isSeparator!5428 Bool) (transformation!5428 TokenValueInjection!10744)) )
))
(declare-datatypes ((List!37242 0))(
  ( (Nil!37118) (Cons!37118 (h!42538 Rule!10656) (t!272247 List!37242)) )
))
(declare-fun rules!2135 () List!37242)

(get-info :version)

(assert (= (and b!3454799 ((_ is Cons!37118) rules!2135)) b!3454846))

(declare-fun order!19727 () Int)

(declare-fun order!19725 () Int)

(declare-fun dynLambda!15606 (Int Int) Int)

(declare-fun dynLambda!15607 (Int Int) Int)

(assert (=> b!3454848 (< (dynLambda!15606 order!19725 (toValue!7652 (transformation!5428 (h!42538 rules!2135)))) (dynLambda!15607 order!19727 lambda!121667))))

(declare-fun order!19729 () Int)

(declare-fun dynLambda!15608 (Int Int) Int)

(assert (=> b!3454848 (< (dynLambda!15608 order!19729 (toChars!7511 (transformation!5428 (h!42538 rules!2135)))) (dynLambda!15607 order!19727 lambda!121667))))

(assert (=> b!3454799 true))

(declare-fun b!3454798 () Bool)

(declare-fun e!2140166 () Bool)

(declare-datatypes ((Token!10222 0))(
  ( (Token!10223 (value!175158 TokenValue!5658) (rule!8014 Rule!10656) (size!28143 Int) (originalCharacters!6142 List!37241)) )
))
(declare-fun separatorToken!241 () Token!10222)

(declare-fun lt!1173292 () Rule!10656)

(assert (=> b!3454798 (= e!2140166 (= (rule!8014 separatorToken!241) lt!1173292))))

(declare-fun e!2140179 () Bool)

(declare-fun e!2140168 () Bool)

(assert (=> b!3454799 (= e!2140179 e!2140168)))

(declare-fun res!1393467 () Bool)

(assert (=> b!3454799 (=> res!1393467 e!2140168)))

(declare-fun contains!6865 (List!37242 Rule!10656) Bool)

(assert (=> b!3454799 (= res!1393467 (not (contains!6865 rules!2135 (rule!8014 separatorToken!241))))))

(declare-datatypes ((Unit!52442 0))(
  ( (Unit!52443) )
))
(declare-fun lt!1173295 () Unit!52442)

(declare-datatypes ((List!37243 0))(
  ( (Nil!37119) (Cons!37119 (h!42539 Token!10222) (t!272248 List!37243)) )
))
(declare-fun tokens!494 () List!37243)

(declare-fun forallContained!1375 (List!37243 Int Token!10222) Unit!52442)

(assert (=> b!3454799 (= lt!1173295 (forallContained!1375 tokens!494 lambda!121667 (h!42539 (t!272248 tokens!494))))))

(declare-fun e!2140184 () Bool)

(declare-datatypes ((LexerInterface!5017 0))(
  ( (LexerInterfaceExt!5014 (__x!23534 Int)) (Lexer!5015) )
))
(declare-fun thiss!18206 () LexerInterface!5017)

(declare-fun rulesProduceIndividualToken!2509 (LexerInterface!5017 List!37242 Token!10222) Bool)

(assert (=> b!3454799 (= (rulesProduceIndividualToken!2509 thiss!18206 rules!2135 (h!42539 (t!272248 tokens!494))) e!2140184)))

(declare-fun res!1393461 () Bool)

(assert (=> b!3454799 (=> (not res!1393461) (not e!2140184))))

(declare-datatypes ((IArray!22469 0))(
  ( (IArray!22470 (innerList!11292 List!37243)) )
))
(declare-datatypes ((Conc!11232 0))(
  ( (Node!11232 (left!28952 Conc!11232) (right!29282 Conc!11232) (csize!22694 Int) (cheight!11443 Int)) (Leaf!17557 (xs!14406 IArray!22469) (csize!22695 Int)) (Empty!11232) )
))
(declare-datatypes ((BalanceConc!22078 0))(
  ( (BalanceConc!22079 (c!591380 Conc!11232)) )
))
(declare-datatypes ((tuple2!36820 0))(
  ( (tuple2!36821 (_1!21544 BalanceConc!22078) (_2!21544 BalanceConc!22076)) )
))
(declare-fun lt!1173286 () tuple2!36820)

(declare-fun size!28144 (BalanceConc!22078) Int)

(assert (=> b!3454799 (= res!1393461 (= (size!28144 (_1!21544 lt!1173286)) 1))))

(declare-fun lt!1173291 () BalanceConc!22076)

(declare-fun lex!2343 (LexerInterface!5017 List!37242 BalanceConc!22076) tuple2!36820)

(assert (=> b!3454799 (= lt!1173286 (lex!2343 thiss!18206 rules!2135 lt!1173291))))

(declare-fun lt!1173301 () BalanceConc!22078)

(declare-fun printTailRec!1512 (LexerInterface!5017 BalanceConc!22078 Int BalanceConc!22076) BalanceConc!22076)

(assert (=> b!3454799 (= lt!1173291 (printTailRec!1512 thiss!18206 lt!1173301 0 (BalanceConc!22077 Empty!11231)))))

(declare-fun print!2082 (LexerInterface!5017 BalanceConc!22078) BalanceConc!22076)

(assert (=> b!3454799 (= lt!1173291 (print!2082 thiss!18206 lt!1173301))))

(declare-fun singletonSeq!2524 (Token!10222) BalanceConc!22078)

(assert (=> b!3454799 (= lt!1173301 (singletonSeq!2524 (h!42539 (t!272248 tokens!494))))))

(declare-fun e!2140188 () Bool)

(assert (=> b!3454799 e!2140188))

(declare-fun res!1393477 () Bool)

(assert (=> b!3454799 (=> (not res!1393477) (not e!2140188))))

(declare-fun lt!1173278 () tuple2!36820)

(assert (=> b!3454799 (= res!1393477 (= (size!28144 (_1!21544 lt!1173278)) 1))))

(declare-fun lt!1173299 () BalanceConc!22076)

(assert (=> b!3454799 (= lt!1173278 (lex!2343 thiss!18206 rules!2135 lt!1173299))))

(declare-fun lt!1173280 () BalanceConc!22078)

(assert (=> b!3454799 (= lt!1173299 (printTailRec!1512 thiss!18206 lt!1173280 0 (BalanceConc!22077 Empty!11231)))))

(assert (=> b!3454799 (= lt!1173299 (print!2082 thiss!18206 lt!1173280))))

(assert (=> b!3454799 (= lt!1173280 (singletonSeq!2524 separatorToken!241))))

(declare-fun lt!1173302 () Unit!52442)

(declare-fun e!2140182 () Unit!52442)

(assert (=> b!3454799 (= lt!1173302 e!2140182)))

(declare-fun c!591377 () Bool)

(declare-fun lt!1173276 () Bool)

(assert (=> b!3454799 (= c!591377 (not lt!1173276))))

(declare-fun lt!1173279 () C!20560)

(declare-fun contains!6866 (List!37241 C!20560) Bool)

(declare-fun usedCharacters!662 (Regex!10187) List!37241)

(assert (=> b!3454799 (= lt!1173276 (contains!6866 (usedCharacters!662 (regex!5428 (rule!8014 separatorToken!241))) lt!1173279))))

(declare-fun lt!1173282 () List!37241)

(declare-fun head!7303 (List!37241) C!20560)

(assert (=> b!3454799 (= lt!1173279 (head!7303 lt!1173282))))

(declare-fun e!2140161 () Bool)

(assert (=> b!3454799 e!2140161))

(declare-fun res!1393475 () Bool)

(assert (=> b!3454799 (=> (not res!1393475) (not e!2140161))))

(declare-datatypes ((Option!7503 0))(
  ( (None!7502) (Some!7502 (v!36802 Rule!10656)) )
))
(declare-fun lt!1173273 () Option!7503)

(declare-fun isDefined!5782 (Option!7503) Bool)

(assert (=> b!3454799 (= res!1393475 (isDefined!5782 lt!1173273))))

(declare-fun getRuleFromTag!1071 (LexerInterface!5017 List!37242 String!41624) Option!7503)

(assert (=> b!3454799 (= lt!1173273 (getRuleFromTag!1071 thiss!18206 rules!2135 (tag!6032 (rule!8014 separatorToken!241))))))

(declare-fun lt!1173288 () Unit!52442)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1071 (LexerInterface!5017 List!37242 List!37241 Token!10222) Unit!52442)

(assert (=> b!3454799 (= lt!1173288 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1071 thiss!18206 rules!2135 lt!1173282 separatorToken!241))))

(declare-fun lt!1173277 () List!37241)

(declare-fun lt!1173296 () BalanceConc!22076)

(declare-datatypes ((tuple2!36822 0))(
  ( (tuple2!36823 (_1!21545 Token!10222) (_2!21545 List!37241)) )
))
(declare-datatypes ((Option!7504 0))(
  ( (None!7503) (Some!7503 (v!36803 tuple2!36822)) )
))
(declare-fun maxPrefixOneRule!1724 (LexerInterface!5017 Rule!10656 List!37241) Option!7504)

(declare-fun apply!8718 (TokenValueInjection!10744 BalanceConc!22076) TokenValue!5658)

(declare-fun size!28145 (List!37241) Int)

(assert (=> b!3454799 (= (maxPrefixOneRule!1724 thiss!18206 (rule!8014 (h!42539 tokens!494)) lt!1173277) (Some!7503 (tuple2!36823 (Token!10223 (apply!8718 (transformation!5428 (rule!8014 (h!42539 tokens!494))) lt!1173296) (rule!8014 (h!42539 tokens!494)) (size!28145 lt!1173277) lt!1173277) Nil!37117)))))

(declare-fun lt!1173272 () Unit!52442)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!817 (LexerInterface!5017 List!37242 List!37241 List!37241 List!37241 Rule!10656) Unit!52442)

(assert (=> b!3454799 (= lt!1173272 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!817 thiss!18206 rules!2135 lt!1173277 lt!1173277 Nil!37117 (rule!8014 (h!42539 tokens!494))))))

(declare-fun e!2140181 () Bool)

(assert (=> b!3454799 e!2140181))

(declare-fun res!1393473 () Bool)

(assert (=> b!3454799 (=> (not res!1393473) (not e!2140181))))

(declare-fun lt!1173274 () Option!7503)

(assert (=> b!3454799 (= res!1393473 (isDefined!5782 lt!1173274))))

(assert (=> b!3454799 (= lt!1173274 (getRuleFromTag!1071 thiss!18206 rules!2135 (tag!6032 (rule!8014 (h!42539 tokens!494)))))))

(declare-fun lt!1173287 () Unit!52442)

(assert (=> b!3454799 (= lt!1173287 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1071 thiss!18206 rules!2135 lt!1173277 (h!42539 tokens!494)))))

(declare-fun lt!1173285 () Unit!52442)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1006 (LexerInterface!5017 List!37242 List!37243 Token!10222) Unit!52442)

(assert (=> b!3454799 (= lt!1173285 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1006 thiss!18206 rules!2135 tokens!494 (h!42539 tokens!494)))))

(declare-fun b!3454800 () Bool)

(declare-fun res!1393468 () Bool)

(declare-fun e!2140165 () Bool)

(assert (=> b!3454800 (=> (not res!1393468) (not e!2140165))))

(declare-fun sepAndNonSepRulesDisjointChars!1622 (List!37242 List!37242) Bool)

(assert (=> b!3454800 (= res!1393468 (sepAndNonSepRulesDisjointChars!1622 rules!2135 rules!2135))))

(declare-fun b!3454801 () Bool)

(declare-fun e!2140176 () Bool)

(declare-fun e!2140160 () Bool)

(assert (=> b!3454801 (= e!2140176 e!2140160)))

(declare-fun res!1393463 () Bool)

(assert (=> b!3454801 (=> res!1393463 e!2140160)))

(declare-fun lt!1173271 () List!37241)

(declare-fun lt!1173281 () List!37241)

(assert (=> b!3454801 (= res!1393463 (not (= lt!1173271 lt!1173281)))))

(declare-fun lt!1173293 () List!37241)

(declare-fun ++!9143 (List!37241 List!37241) List!37241)

(assert (=> b!3454801 (= lt!1173281 (++!9143 (++!9143 lt!1173277 lt!1173282) lt!1173293))))

(declare-fun b!3454802 () Bool)

(declare-fun res!1393455 () Bool)

(assert (=> b!3454802 (=> (not res!1393455) (not e!2140188))))

(declare-fun apply!8719 (BalanceConc!22078 Int) Token!10222)

(assert (=> b!3454802 (= res!1393455 (= (apply!8719 (_1!21544 lt!1173278) 0) separatorToken!241))))

(declare-fun e!2140164 () Bool)

(declare-fun tp!1077137 () Bool)

(declare-fun b!3454803 () Bool)

(declare-fun e!2140162 () Bool)

(declare-fun inv!50281 (String!41624) Bool)

(declare-fun inv!50284 (TokenValueInjection!10744) Bool)

(assert (=> b!3454803 (= e!2140162 (and tp!1077137 (inv!50281 (tag!6032 (rule!8014 (h!42539 tokens!494)))) (inv!50284 (transformation!5428 (rule!8014 (h!42539 tokens!494)))) e!2140164))))

(declare-fun tp!1077139 () Bool)

(declare-fun e!2140183 () Bool)

(declare-fun b!3454804 () Bool)

(declare-fun e!2140185 () Bool)

(declare-fun inv!50285 (Token!10222) Bool)

(assert (=> b!3454804 (= e!2140183 (and (inv!50285 (h!42539 tokens!494)) e!2140185 tp!1077139))))

(declare-fun b!3454805 () Bool)

(declare-fun e!2140172 () Bool)

(declare-fun lt!1173270 () Rule!10656)

(assert (=> b!3454805 (= e!2140172 (= (rule!8014 (h!42539 tokens!494)) lt!1173270))))

(assert (=> b!3454806 (= e!2140164 (and tp!1077136 tp!1077142))))

(declare-fun b!3454807 () Bool)

(declare-fun res!1393470 () Bool)

(assert (=> b!3454807 (=> (not res!1393470) (not e!2140165))))

(assert (=> b!3454807 (= res!1393470 (and (not ((_ is Nil!37119) tokens!494)) (not ((_ is Nil!37119) (t!272248 tokens!494)))))))

(declare-fun b!3454808 () Bool)

(declare-fun res!1393469 () Bool)

(declare-fun e!2140191 () Bool)

(assert (=> b!3454808 (=> res!1393469 e!2140191)))

(assert (=> b!3454808 (= res!1393469 (not (rulesProduceIndividualToken!2509 thiss!18206 rules!2135 (h!42539 tokens!494))))))

(declare-fun e!2140186 () Bool)

(assert (=> b!3454809 (= e!2140186 (and tp!1077130 tp!1077134))))

(declare-fun e!2140174 () Bool)

(assert (=> b!3454810 (= e!2140174 (and tp!1077133 tp!1077135))))

(declare-fun b!3454811 () Bool)

(declare-fun res!1393471 () Bool)

(assert (=> b!3454811 (=> res!1393471 e!2140168)))

(assert (=> b!3454811 (= res!1393471 (not (contains!6865 rules!2135 (rule!8014 (h!42539 tokens!494)))))))

(declare-fun b!3454812 () Bool)

(assert (=> b!3454812 (= e!2140160 e!2140179)))

(declare-fun res!1393479 () Bool)

(assert (=> b!3454812 (=> res!1393479 e!2140179)))

(declare-fun lt!1173294 () List!37241)

(assert (=> b!3454812 (= res!1393479 (not (= lt!1173271 lt!1173294)))))

(assert (=> b!3454812 (= lt!1173281 lt!1173294)))

(declare-fun lt!1173283 () List!37241)

(assert (=> b!3454812 (= lt!1173294 (++!9143 lt!1173277 lt!1173283))))

(declare-fun lt!1173284 () Unit!52442)

(declare-fun lemmaConcatAssociativity!1946 (List!37241 List!37241 List!37241) Unit!52442)

(assert (=> b!3454812 (= lt!1173284 (lemmaConcatAssociativity!1946 lt!1173277 lt!1173282 lt!1173293))))

(declare-fun b!3454813 () Bool)

(declare-fun res!1393474 () Bool)

(assert (=> b!3454813 (=> (not res!1393474) (not e!2140165))))

(declare-fun rulesProduceEachTokenIndividually!1468 (LexerInterface!5017 List!37242 BalanceConc!22078) Bool)

(declare-fun seqFromList!3909 (List!37243) BalanceConc!22078)

(assert (=> b!3454813 (= res!1393474 (rulesProduceEachTokenIndividually!1468 thiss!18206 rules!2135 (seqFromList!3909 tokens!494)))))

(declare-fun b!3454814 () Bool)

(declare-fun e!2140171 () Bool)

(declare-fun e!2140175 () Bool)

(assert (=> b!3454814 (= e!2140171 e!2140175)))

(declare-fun res!1393480 () Bool)

(assert (=> b!3454814 (=> res!1393480 e!2140175)))

(assert (=> b!3454814 (= res!1393480 (or (isSeparator!5428 (rule!8014 (h!42539 tokens!494))) (isSeparator!5428 (rule!8014 (h!42539 (t!272248 tokens!494))))))))

(declare-fun lt!1173275 () Unit!52442)

(assert (=> b!3454814 (= lt!1173275 (forallContained!1375 tokens!494 lambda!121666 (h!42539 (t!272248 tokens!494))))))

(declare-fun lt!1173297 () Unit!52442)

(assert (=> b!3454814 (= lt!1173297 (forallContained!1375 tokens!494 lambda!121666 (h!42539 tokens!494)))))

(declare-fun b!3454815 () Bool)

(declare-fun res!1393478 () Bool)

(assert (=> b!3454815 (=> (not res!1393478) (not e!2140165))))

(assert (=> b!3454815 (= res!1393478 (isSeparator!5428 (rule!8014 separatorToken!241)))))

(declare-fun b!3454816 () Bool)

(declare-fun res!1393466 () Bool)

(assert (=> b!3454816 (=> (not res!1393466) (not e!2140184))))

(assert (=> b!3454816 (= res!1393466 (= (apply!8719 (_1!21544 lt!1173286) 0) (h!42539 (t!272248 tokens!494))))))

(declare-fun b!3454817 () Bool)

(declare-fun res!1393460 () Bool)

(assert (=> b!3454817 (=> (not res!1393460) (not e!2140165))))

(assert (=> b!3454817 (= res!1393460 (rulesProduceIndividualToken!2509 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3454818 () Bool)

(declare-fun Unit!52444 () Unit!52442)

(assert (=> b!3454818 (= e!2140182 Unit!52444)))

(declare-fun tp!1077138 () Bool)

(declare-fun b!3454819 () Bool)

(declare-fun e!2140163 () Bool)

(assert (=> b!3454819 (= e!2140163 (and tp!1077138 (inv!50281 (tag!6032 (rule!8014 separatorToken!241))) (inv!50284 (transformation!5428 (rule!8014 separatorToken!241))) e!2140174))))

(declare-fun b!3454820 () Bool)

(assert (=> b!3454820 (= e!2140181 e!2140172)))

(declare-fun res!1393462 () Bool)

(assert (=> b!3454820 (=> (not res!1393462) (not e!2140172))))

(declare-fun matchR!4771 (Regex!10187 List!37241) Bool)

(assert (=> b!3454820 (= res!1393462 (matchR!4771 (regex!5428 lt!1173270) lt!1173277))))

(declare-fun get!11873 (Option!7503) Rule!10656)

(assert (=> b!3454820 (= lt!1173270 (get!11873 lt!1173274))))

(declare-fun b!3454821 () Bool)

(declare-fun e!2140173 () Bool)

(declare-fun e!2140180 () Bool)

(declare-fun tp!1077132 () Bool)

(assert (=> b!3454821 (= e!2140173 (and e!2140180 tp!1077132))))

(declare-fun tp!1077140 () Bool)

(declare-fun b!3454822 () Bool)

(assert (=> b!3454822 (= e!2140180 (and tp!1077140 (inv!50281 (tag!6032 (h!42538 rules!2135))) (inv!50284 (transformation!5428 (h!42538 rules!2135))) e!2140186))))

(declare-fun b!3454823 () Bool)

(declare-fun Unit!52445 () Unit!52442)

(assert (=> b!3454823 (= e!2140182 Unit!52445)))

(declare-fun lt!1173269 () Unit!52442)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!486 (Regex!10187 List!37241 C!20560) Unit!52442)

(assert (=> b!3454823 (= lt!1173269 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!486 (regex!5428 (rule!8014 separatorToken!241)) lt!1173282 lt!1173279))))

(declare-fun res!1393465 () Bool)

(assert (=> b!3454823 (= res!1393465 (not (matchR!4771 (regex!5428 (rule!8014 separatorToken!241)) lt!1173282)))))

(declare-fun e!2140187 () Bool)

(assert (=> b!3454823 (=> (not res!1393465) (not e!2140187))))

(assert (=> b!3454823 e!2140187))

(declare-fun res!1393481 () Bool)

(assert (=> start!321226 (=> (not res!1393481) (not e!2140165))))

(assert (=> start!321226 (= res!1393481 ((_ is Lexer!5015) thiss!18206))))

(assert (=> start!321226 e!2140165))

(assert (=> start!321226 true))

(assert (=> start!321226 e!2140173))

(assert (=> start!321226 e!2140183))

(declare-fun e!2140189 () Bool)

(assert (=> start!321226 (and (inv!50285 separatorToken!241) e!2140189)))

(declare-fun b!3454824 () Bool)

(declare-fun tp!1077131 () Bool)

(declare-fun inv!21 (TokenValue!5658) Bool)

(assert (=> b!3454824 (= e!2140185 (and (inv!21 (value!175158 (h!42539 tokens!494))) e!2140162 tp!1077131))))

(declare-fun b!3454825 () Bool)

(assert (=> b!3454825 (= e!2140175 e!2140176)))

(declare-fun res!1393458 () Bool)

(assert (=> b!3454825 (=> res!1393458 e!2140176)))

(declare-fun list!13507 (BalanceConc!22076) List!37241)

(declare-fun charsOf!3442 (Token!10222) BalanceConc!22076)

(declare-fun printWithSeparatorTokenList!304 (LexerInterface!5017 List!37243 Token!10222) List!37241)

(assert (=> b!3454825 (= res!1393458 (not (= lt!1173293 (++!9143 (++!9143 (list!13507 (charsOf!3442 (h!42539 (t!272248 tokens!494)))) lt!1173282) (printWithSeparatorTokenList!304 thiss!18206 (t!272248 (t!272248 tokens!494)) separatorToken!241)))))))

(assert (=> b!3454825 (= lt!1173283 (++!9143 lt!1173282 lt!1173293))))

(assert (=> b!3454825 (= lt!1173282 (list!13507 (charsOf!3442 separatorToken!241)))))

(assert (=> b!3454825 (= lt!1173293 (printWithSeparatorTokenList!304 thiss!18206 (t!272248 tokens!494) separatorToken!241))))

(assert (=> b!3454825 (= lt!1173271 (printWithSeparatorTokenList!304 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3454826 () Bool)

(assert (=> b!3454826 (= e!2140168 lt!1173276)))

(declare-fun b!3454827 () Bool)

(assert (=> b!3454827 (= e!2140161 e!2140166)))

(declare-fun res!1393476 () Bool)

(assert (=> b!3454827 (=> (not res!1393476) (not e!2140166))))

(assert (=> b!3454827 (= res!1393476 (matchR!4771 (regex!5428 lt!1173292) lt!1173282))))

(assert (=> b!3454827 (= lt!1173292 (get!11873 lt!1173273))))

(declare-fun b!3454828 () Bool)

(declare-fun res!1393464 () Bool)

(assert (=> b!3454828 (=> (not res!1393464) (not e!2140165))))

(declare-fun rulesInvariant!4414 (LexerInterface!5017 List!37242) Bool)

(assert (=> b!3454828 (= res!1393464 (rulesInvariant!4414 thiss!18206 rules!2135))))

(declare-fun b!3454829 () Bool)

(assert (=> b!3454829 (= e!2140187 false)))

(declare-fun res!1393456 () Bool)

(assert (=> b!3454830 (=> (not res!1393456) (not e!2140165))))

(declare-fun forall!7903 (List!37243 Int) Bool)

(assert (=> b!3454830 (= res!1393456 (forall!7903 tokens!494 lambda!121666))))

(declare-fun b!3454831 () Bool)

(declare-fun e!2140177 () Bool)

(assert (=> b!3454831 (= e!2140177 e!2140191)))

(declare-fun res!1393454 () Bool)

(assert (=> b!3454831 (=> res!1393454 e!2140191)))

(declare-fun lt!1173289 () List!37241)

(declare-fun lt!1173298 () List!37241)

(assert (=> b!3454831 (= res!1393454 (or (not (= lt!1173289 lt!1173277)) (not (= lt!1173298 lt!1173277))))))

(assert (=> b!3454831 (= lt!1173277 (list!13507 (charsOf!3442 (h!42539 tokens!494))))))

(declare-fun b!3454832 () Bool)

(assert (=> b!3454832 (= e!2140165 (not e!2140177))))

(declare-fun res!1393472 () Bool)

(assert (=> b!3454832 (=> res!1393472 e!2140177)))

(assert (=> b!3454832 (= res!1393472 (not (= lt!1173298 lt!1173289)))))

(declare-fun printList!1565 (LexerInterface!5017 List!37243) List!37241)

(assert (=> b!3454832 (= lt!1173289 (printList!1565 thiss!18206 (Cons!37119 (h!42539 tokens!494) Nil!37119)))))

(declare-fun lt!1173300 () BalanceConc!22076)

(assert (=> b!3454832 (= lt!1173298 (list!13507 lt!1173300))))

(declare-fun lt!1173290 () BalanceConc!22078)

(assert (=> b!3454832 (= lt!1173300 (printTailRec!1512 thiss!18206 lt!1173290 0 (BalanceConc!22077 Empty!11231)))))

(assert (=> b!3454832 (= lt!1173300 (print!2082 thiss!18206 lt!1173290))))

(assert (=> b!3454832 (= lt!1173290 (singletonSeq!2524 (h!42539 tokens!494)))))

(declare-fun b!3454833 () Bool)

(declare-fun isEmpty!21453 (BalanceConc!22076) Bool)

(assert (=> b!3454833 (= e!2140188 (isEmpty!21453 (_2!21544 lt!1173278)))))

(declare-fun b!3454834 () Bool)

(assert (=> b!3454834 (= e!2140184 (isEmpty!21453 (_2!21544 lt!1173286)))))

(declare-fun b!3454835 () Bool)

(assert (=> b!3454835 (= e!2140191 e!2140171)))

(declare-fun res!1393459 () Bool)

(assert (=> b!3454835 (=> res!1393459 e!2140171)))

(declare-fun isEmpty!21454 (BalanceConc!22078) Bool)

(assert (=> b!3454835 (= res!1393459 (isEmpty!21454 (_1!21544 (lex!2343 thiss!18206 rules!2135 lt!1173296))))))

(declare-fun seqFromList!3910 (List!37241) BalanceConc!22076)

(assert (=> b!3454835 (= lt!1173296 (seqFromList!3910 lt!1173277))))

(declare-fun b!3454836 () Bool)

(declare-fun res!1393457 () Bool)

(assert (=> b!3454836 (=> (not res!1393457) (not e!2140165))))

(declare-fun isEmpty!21455 (List!37242) Bool)

(assert (=> b!3454836 (= res!1393457 (not (isEmpty!21455 rules!2135)))))

(declare-fun b!3454837 () Bool)

(declare-fun tp!1077141 () Bool)

(assert (=> b!3454837 (= e!2140189 (and (inv!21 (value!175158 separatorToken!241)) e!2140163 tp!1077141))))

(assert (= (and start!321226 res!1393481) b!3454836))

(assert (= (and b!3454836 res!1393457) b!3454828))

(assert (= (and b!3454828 res!1393464) b!3454813))

(assert (= (and b!3454813 res!1393474) b!3454817))

(assert (= (and b!3454817 res!1393460) b!3454815))

(assert (= (and b!3454815 res!1393478) b!3454830))

(assert (= (and b!3454830 res!1393456) b!3454800))

(assert (= (and b!3454800 res!1393468) b!3454807))

(assert (= (and b!3454807 res!1393470) b!3454832))

(assert (= (and b!3454832 (not res!1393472)) b!3454831))

(assert (= (and b!3454831 (not res!1393454)) b!3454808))

(assert (= (and b!3454808 (not res!1393469)) b!3454835))

(assert (= (and b!3454835 (not res!1393459)) b!3454814))

(assert (= (and b!3454814 (not res!1393480)) b!3454825))

(assert (= (and b!3454825 (not res!1393458)) b!3454801))

(assert (= (and b!3454801 (not res!1393463)) b!3454812))

(assert (= (and b!3454812 (not res!1393479)) b!3454799))

(assert (= (and b!3454799 res!1393473) b!3454820))

(assert (= (and b!3454820 res!1393462) b!3454805))

(assert (= (and b!3454799 res!1393475) b!3454827))

(assert (= (and b!3454827 res!1393476) b!3454798))

(assert (= (and b!3454799 c!591377) b!3454823))

(assert (= (and b!3454799 (not c!591377)) b!3454818))

(assert (= (and b!3454823 res!1393465) b!3454829))

(assert (= (and b!3454799 res!1393477) b!3454802))

(assert (= (and b!3454802 res!1393455) b!3454833))

(assert (= (and b!3454799 res!1393461) b!3454816))

(assert (= (and b!3454816 res!1393466) b!3454834))

(assert (= (and b!3454799 (not res!1393467)) b!3454811))

(assert (= (and b!3454811 (not res!1393471)) b!3454826))

(assert (= b!3454822 b!3454809))

(assert (= b!3454821 b!3454822))

(assert (= (and start!321226 ((_ is Cons!37118) rules!2135)) b!3454821))

(assert (= b!3454803 b!3454806))

(assert (= b!3454824 b!3454803))

(assert (= b!3454804 b!3454824))

(assert (= (and start!321226 ((_ is Cons!37119) tokens!494)) b!3454804))

(assert (= b!3454819 b!3454810))

(assert (= b!3454837 b!3454819))

(assert (= start!321226 b!3454837))

(declare-fun m!3853865 () Bool)

(assert (=> b!3454803 m!3853865))

(declare-fun m!3853867 () Bool)

(assert (=> b!3454803 m!3853867))

(declare-fun m!3853869 () Bool)

(assert (=> b!3454823 m!3853869))

(declare-fun m!3853871 () Bool)

(assert (=> b!3454823 m!3853871))

(declare-fun m!3853873 () Bool)

(assert (=> b!3454813 m!3853873))

(assert (=> b!3454813 m!3853873))

(declare-fun m!3853875 () Bool)

(assert (=> b!3454813 m!3853875))

(declare-fun m!3853877 () Bool)

(assert (=> b!3454835 m!3853877))

(declare-fun m!3853879 () Bool)

(assert (=> b!3454835 m!3853879))

(declare-fun m!3853881 () Bool)

(assert (=> b!3454835 m!3853881))

(declare-fun m!3853883 () Bool)

(assert (=> b!3454828 m!3853883))

(declare-fun m!3853885 () Bool)

(assert (=> b!3454824 m!3853885))

(declare-fun m!3853887 () Bool)

(assert (=> b!3454801 m!3853887))

(assert (=> b!3454801 m!3853887))

(declare-fun m!3853889 () Bool)

(assert (=> b!3454801 m!3853889))

(declare-fun m!3853891 () Bool)

(assert (=> b!3454819 m!3853891))

(declare-fun m!3853893 () Bool)

(assert (=> b!3454819 m!3853893))

(declare-fun m!3853895 () Bool)

(assert (=> b!3454804 m!3853895))

(declare-fun m!3853897 () Bool)

(assert (=> b!3454822 m!3853897))

(declare-fun m!3853899 () Bool)

(assert (=> b!3454822 m!3853899))

(declare-fun m!3853901 () Bool)

(assert (=> b!3454799 m!3853901))

(declare-fun m!3853903 () Bool)

(assert (=> b!3454799 m!3853903))

(declare-fun m!3853905 () Bool)

(assert (=> b!3454799 m!3853905))

(declare-fun m!3853907 () Bool)

(assert (=> b!3454799 m!3853907))

(declare-fun m!3853909 () Bool)

(assert (=> b!3454799 m!3853909))

(declare-fun m!3853911 () Bool)

(assert (=> b!3454799 m!3853911))

(declare-fun m!3853913 () Bool)

(assert (=> b!3454799 m!3853913))

(declare-fun m!3853915 () Bool)

(assert (=> b!3454799 m!3853915))

(declare-fun m!3853917 () Bool)

(assert (=> b!3454799 m!3853917))

(declare-fun m!3853919 () Bool)

(assert (=> b!3454799 m!3853919))

(declare-fun m!3853921 () Bool)

(assert (=> b!3454799 m!3853921))

(declare-fun m!3853923 () Bool)

(assert (=> b!3454799 m!3853923))

(declare-fun m!3853925 () Bool)

(assert (=> b!3454799 m!3853925))

(declare-fun m!3853927 () Bool)

(assert (=> b!3454799 m!3853927))

(declare-fun m!3853929 () Bool)

(assert (=> b!3454799 m!3853929))

(declare-fun m!3853931 () Bool)

(assert (=> b!3454799 m!3853931))

(declare-fun m!3853933 () Bool)

(assert (=> b!3454799 m!3853933))

(declare-fun m!3853935 () Bool)

(assert (=> b!3454799 m!3853935))

(declare-fun m!3853937 () Bool)

(assert (=> b!3454799 m!3853937))

(declare-fun m!3853939 () Bool)

(assert (=> b!3454799 m!3853939))

(declare-fun m!3853941 () Bool)

(assert (=> b!3454799 m!3853941))

(declare-fun m!3853943 () Bool)

(assert (=> b!3454799 m!3853943))

(declare-fun m!3853945 () Bool)

(assert (=> b!3454799 m!3853945))

(declare-fun m!3853947 () Bool)

(assert (=> b!3454799 m!3853947))

(assert (=> b!3454799 m!3853929))

(declare-fun m!3853949 () Bool)

(assert (=> b!3454799 m!3853949))

(declare-fun m!3853951 () Bool)

(assert (=> b!3454799 m!3853951))

(declare-fun m!3853953 () Bool)

(assert (=> b!3454799 m!3853953))

(declare-fun m!3853955 () Bool)

(assert (=> start!321226 m!3853955))

(declare-fun m!3853957 () Bool)

(assert (=> b!3454820 m!3853957))

(declare-fun m!3853959 () Bool)

(assert (=> b!3454820 m!3853959))

(declare-fun m!3853961 () Bool)

(assert (=> b!3454832 m!3853961))

(declare-fun m!3853963 () Bool)

(assert (=> b!3454832 m!3853963))

(declare-fun m!3853965 () Bool)

(assert (=> b!3454832 m!3853965))

(declare-fun m!3853967 () Bool)

(assert (=> b!3454832 m!3853967))

(declare-fun m!3853969 () Bool)

(assert (=> b!3454832 m!3853969))

(declare-fun m!3853971 () Bool)

(assert (=> b!3454808 m!3853971))

(declare-fun m!3853973 () Bool)

(assert (=> b!3454834 m!3853973))

(declare-fun m!3853975 () Bool)

(assert (=> b!3454814 m!3853975))

(declare-fun m!3853977 () Bool)

(assert (=> b!3454814 m!3853977))

(declare-fun m!3853979 () Bool)

(assert (=> b!3454812 m!3853979))

(declare-fun m!3853981 () Bool)

(assert (=> b!3454812 m!3853981))

(declare-fun m!3853983 () Bool)

(assert (=> b!3454811 m!3853983))

(declare-fun m!3853985 () Bool)

(assert (=> b!3454830 m!3853985))

(declare-fun m!3853987 () Bool)

(assert (=> b!3454836 m!3853987))

(declare-fun m!3853989 () Bool)

(assert (=> b!3454831 m!3853989))

(assert (=> b!3454831 m!3853989))

(declare-fun m!3853991 () Bool)

(assert (=> b!3454831 m!3853991))

(declare-fun m!3853993 () Bool)

(assert (=> b!3454837 m!3853993))

(declare-fun m!3853995 () Bool)

(assert (=> b!3454825 m!3853995))

(declare-fun m!3853997 () Bool)

(assert (=> b!3454825 m!3853997))

(declare-fun m!3853999 () Bool)

(assert (=> b!3454825 m!3853999))

(declare-fun m!3854001 () Bool)

(assert (=> b!3454825 m!3854001))

(declare-fun m!3854003 () Bool)

(assert (=> b!3454825 m!3854003))

(assert (=> b!3454825 m!3853999))

(assert (=> b!3454825 m!3853995))

(assert (=> b!3454825 m!3853997))

(declare-fun m!3854005 () Bool)

(assert (=> b!3454825 m!3854005))

(declare-fun m!3854007 () Bool)

(assert (=> b!3454825 m!3854007))

(assert (=> b!3454825 m!3854005))

(assert (=> b!3454825 m!3854001))

(declare-fun m!3854009 () Bool)

(assert (=> b!3454825 m!3854009))

(declare-fun m!3854011 () Bool)

(assert (=> b!3454825 m!3854011))

(declare-fun m!3854013 () Bool)

(assert (=> b!3454825 m!3854013))

(declare-fun m!3854015 () Bool)

(assert (=> b!3454802 m!3854015))

(declare-fun m!3854017 () Bool)

(assert (=> b!3454827 m!3854017))

(declare-fun m!3854019 () Bool)

(assert (=> b!3454827 m!3854019))

(declare-fun m!3854021 () Bool)

(assert (=> b!3454833 m!3854021))

(declare-fun m!3854023 () Bool)

(assert (=> b!3454817 m!3854023))

(declare-fun m!3854025 () Bool)

(assert (=> b!3454816 m!3854025))

(declare-fun m!3854027 () Bool)

(assert (=> b!3454800 m!3854027))

(check-sat (not b!3454825) (not b_next!90419) b_and!242793 (not b!3454828) (not b!3454827) (not b!3454833) (not b!3454811) (not b!3454814) (not b!3454820) (not b!3454823) (not b!3454802) b_and!242795 (not b!3454799) b_and!242787 (not b!3454836) (not b!3454831) (not b!3454800) (not b!3454824) (not b!3454834) (not b!3454846) b_and!242789 (not b!3454803) (not b!3454812) (not b!3454835) (not b!3454822) (not b!3454808) (not b!3454837) (not b_next!90415) (not b_next!90417) (not start!321226) (not b!3454801) (not b!3454817) (not b!3454804) (not b!3454813) (not b!3454821) b_and!242797 (not b!3454819) (not b!3454832) (not b_next!90411) (not b!3454830) (not b_next!90413) b_and!242791 (not b!3454816) (not b_next!90409))
(check-sat b_and!242787 b_and!242789 (not b_next!90419) b_and!242793 (not b_next!90415) (not b_next!90417) b_and!242797 (not b_next!90411) (not b_next!90413) b_and!242795 b_and!242791 (not b_next!90409))
