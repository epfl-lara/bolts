; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302618 () Bool)

(assert start!302618)

(declare-fun b!3221199 () Bool)

(declare-fun b_free!85641 () Bool)

(declare-fun b_next!86345 () Bool)

(assert (=> b!3221199 (= b_free!85641 (not b_next!86345))))

(declare-fun tp!1014808 () Bool)

(declare-fun b_and!215343 () Bool)

(assert (=> b!3221199 (= tp!1014808 b_and!215343)))

(declare-fun b_free!85643 () Bool)

(declare-fun b_next!86347 () Bool)

(assert (=> b!3221199 (= b_free!85643 (not b_next!86347))))

(declare-fun tp!1014813 () Bool)

(declare-fun b_and!215345 () Bool)

(assert (=> b!3221199 (= tp!1014813 b_and!215345)))

(declare-fun b!3221200 () Bool)

(declare-fun b_free!85645 () Bool)

(declare-fun b_next!86349 () Bool)

(assert (=> b!3221200 (= b_free!85645 (not b_next!86349))))

(declare-fun tp!1014809 () Bool)

(declare-fun b_and!215347 () Bool)

(assert (=> b!3221200 (= tp!1014809 b_and!215347)))

(declare-fun b_free!85647 () Bool)

(declare-fun b_next!86351 () Bool)

(assert (=> b!3221200 (= b_free!85647 (not b_next!86351))))

(declare-fun tp!1014812 () Bool)

(declare-fun b_and!215349 () Bool)

(assert (=> b!3221200 (= tp!1014812 b_and!215349)))

(declare-fun b!3221210 () Bool)

(declare-fun b_free!85649 () Bool)

(declare-fun b_next!86353 () Bool)

(assert (=> b!3221210 (= b_free!85649 (not b_next!86353))))

(declare-fun tp!1014816 () Bool)

(declare-fun b_and!215351 () Bool)

(assert (=> b!3221210 (= tp!1014816 b_and!215351)))

(declare-fun b_free!85651 () Bool)

(declare-fun b_next!86355 () Bool)

(assert (=> b!3221210 (= b_free!85651 (not b_next!86355))))

(declare-fun tp!1014810 () Bool)

(declare-fun b_and!215353 () Bool)

(assert (=> b!3221210 (= tp!1014810 b_and!215353)))

(declare-fun bs!542607 () Bool)

(declare-fun b!3221214 () Bool)

(declare-fun b!3221186 () Bool)

(assert (= bs!542607 (and b!3221214 b!3221186)))

(declare-fun lambda!117767 () Int)

(declare-fun lambda!117766 () Int)

(assert (=> bs!542607 (not (= lambda!117767 lambda!117766))))

(declare-fun b!3221226 () Bool)

(declare-fun e!2008502 () Bool)

(assert (=> b!3221226 (= e!2008502 true)))

(declare-fun b!3221225 () Bool)

(declare-fun e!2008501 () Bool)

(assert (=> b!3221225 (= e!2008501 e!2008502)))

(declare-fun b!3221224 () Bool)

(declare-fun e!2008500 () Bool)

(assert (=> b!3221224 (= e!2008500 e!2008501)))

(assert (=> b!3221214 e!2008500))

(assert (= b!3221225 b!3221226))

(assert (= b!3221224 b!3221225))

(declare-datatypes ((C!20176 0))(
  ( (C!20177 (val!12136 Int)) )
))
(declare-datatypes ((Regex!9995 0))(
  ( (ElementMatch!9995 (c!541672 C!20176)) (Concat!15461 (regOne!20502 Regex!9995) (regTwo!20502 Regex!9995)) (EmptyExpr!9995) (Star!9995 (reg!10324 Regex!9995)) (EmptyLang!9995) (Union!9995 (regOne!20503 Regex!9995) (regTwo!20503 Regex!9995)) )
))
(declare-datatypes ((List!36354 0))(
  ( (Nil!36230) (Cons!36230 (h!41650 (_ BitVec 16)) (t!240503 List!36354)) )
))
(declare-datatypes ((TokenValue!5466 0))(
  ( (FloatLiteralValue!10932 (text!38707 List!36354)) (TokenValueExt!5465 (__x!23149 Int)) (Broken!27330 (value!169660 List!36354)) (Object!5589) (End!5466) (Def!5466) (Underscore!5466) (Match!5466) (Else!5466) (Error!5466) (Case!5466) (If!5466) (Extends!5466) (Abstract!5466) (Class!5466) (Val!5466) (DelimiterValue!10932 (del!5526 List!36354)) (KeywordValue!5472 (value!169661 List!36354)) (CommentValue!10932 (value!169662 List!36354)) (WhitespaceValue!10932 (value!169663 List!36354)) (IndentationValue!5466 (value!169664 List!36354)) (String!40663) (Int32!5466) (Broken!27331 (value!169665 List!36354)) (Boolean!5467) (Unit!50787) (OperatorValue!5469 (op!5526 List!36354)) (IdentifierValue!10932 (value!169666 List!36354)) (IdentifierValue!10933 (value!169667 List!36354)) (WhitespaceValue!10933 (value!169668 List!36354)) (True!10932) (False!10932) (Broken!27332 (value!169669 List!36354)) (Broken!27333 (value!169670 List!36354)) (True!10933) (RightBrace!5466) (RightBracket!5466) (Colon!5466) (Null!5466) (Comma!5466) (LeftBracket!5466) (False!10933) (LeftBrace!5466) (ImaginaryLiteralValue!5466 (text!38708 List!36354)) (StringLiteralValue!16398 (value!169671 List!36354)) (EOFValue!5466 (value!169672 List!36354)) (IdentValue!5466 (value!169673 List!36354)) (DelimiterValue!10933 (value!169674 List!36354)) (DedentValue!5466 (value!169675 List!36354)) (NewLineValue!5466 (value!169676 List!36354)) (IntegerValue!16398 (value!169677 (_ BitVec 32)) (text!38709 List!36354)) (IntegerValue!16399 (value!169678 Int) (text!38710 List!36354)) (Times!5466) (Or!5466) (Equal!5466) (Minus!5466) (Broken!27334 (value!169679 List!36354)) (And!5466) (Div!5466) (LessEqual!5466) (Mod!5466) (Concat!15462) (Not!5466) (Plus!5466) (SpaceValue!5466 (value!169680 List!36354)) (IntegerValue!16400 (value!169681 Int) (text!38711 List!36354)) (StringLiteralValue!16399 (text!38712 List!36354)) (FloatLiteralValue!10933 (text!38713 List!36354)) (BytesLiteralValue!5466 (value!169682 List!36354)) (CommentValue!10933 (value!169683 List!36354)) (StringLiteralValue!16400 (value!169684 List!36354)) (ErrorTokenValue!5466 (msg!5527 List!36354)) )
))
(declare-datatypes ((List!36355 0))(
  ( (Nil!36231) (Cons!36231 (h!41651 C!20176) (t!240504 List!36355)) )
))
(declare-datatypes ((IArray!21699 0))(
  ( (IArray!21700 (innerList!10907 List!36355)) )
))
(declare-datatypes ((Conc!10847 0))(
  ( (Node!10847 (left!28187 Conc!10847) (right!28517 Conc!10847) (csize!21924 Int) (cheight!11058 Int)) (Leaf!17076 (xs!13965 IArray!21699) (csize!21925 Int)) (Empty!10847) )
))
(declare-datatypes ((BalanceConc!21308 0))(
  ( (BalanceConc!21309 (c!541673 Conc!10847)) )
))
(declare-datatypes ((String!40664 0))(
  ( (String!40665 (value!169685 String)) )
))
(declare-datatypes ((TokenValueInjection!10360 0))(
  ( (TokenValueInjection!10361 (toValue!7332 Int) (toChars!7191 Int)) )
))
(declare-datatypes ((Rule!10272 0))(
  ( (Rule!10273 (regex!5236 Regex!9995) (tag!5768 String!40664) (isSeparator!5236 Bool) (transformation!5236 TokenValueInjection!10360)) )
))
(declare-datatypes ((List!36356 0))(
  ( (Nil!36232) (Cons!36232 (h!41652 Rule!10272) (t!240505 List!36356)) )
))
(declare-fun rules!2135 () List!36356)

(get-info :version)

(assert (= (and b!3221214 ((_ is Cons!36232) rules!2135)) b!3221224))

(declare-fun order!18569 () Int)

(declare-fun order!18571 () Int)

(declare-fun dynLambda!14673 (Int Int) Int)

(declare-fun dynLambda!14674 (Int Int) Int)

(assert (=> b!3221226 (< (dynLambda!14673 order!18569 (toValue!7332 (transformation!5236 (h!41652 rules!2135)))) (dynLambda!14674 order!18571 lambda!117767))))

(declare-fun order!18573 () Int)

(declare-fun dynLambda!14675 (Int Int) Int)

(assert (=> b!3221226 (< (dynLambda!14675 order!18573 (toChars!7191 (transformation!5236 (h!41652 rules!2135)))) (dynLambda!14674 order!18571 lambda!117767))))

(assert (=> b!3221214 true))

(declare-fun tp!1014807 () Bool)

(declare-datatypes ((Token!9838 0))(
  ( (Token!9839 (value!169686 TokenValue!5466) (rule!7694 Rule!10272) (size!27319 Int) (originalCharacters!5950 List!36355)) )
))
(declare-datatypes ((List!36357 0))(
  ( (Nil!36233) (Cons!36233 (h!41653 Token!9838) (t!240506 List!36357)) )
))
(declare-fun tokens!494 () List!36357)

(declare-fun e!2008491 () Bool)

(declare-fun e!2008485 () Bool)

(declare-fun b!3221172 () Bool)

(declare-fun inv!21 (TokenValue!5466) Bool)

(assert (=> b!3221172 (= e!2008485 (and (inv!21 (value!169686 (h!41653 tokens!494))) e!2008491 tp!1014807))))

(declare-fun b!3221173 () Bool)

(declare-fun e!2008477 () Bool)

(assert (=> b!3221173 (= e!2008477 true)))

(declare-fun b!3221174 () Bool)

(declare-fun e!2008484 () Bool)

(assert (=> b!3221174 (= e!2008484 false)))

(declare-fun e!2008478 () Bool)

(declare-fun b!3221175 () Bool)

(declare-fun tp!1014818 () Bool)

(declare-fun inv!49103 (String!40664) Bool)

(declare-fun inv!49106 (TokenValueInjection!10360) Bool)

(assert (=> b!3221175 (= e!2008491 (and tp!1014818 (inv!49103 (tag!5768 (rule!7694 (h!41653 tokens!494)))) (inv!49106 (transformation!5236 (rule!7694 (h!41653 tokens!494)))) e!2008478))))

(declare-fun b!3221176 () Bool)

(declare-fun res!1311424 () Bool)

(declare-fun e!2008481 () Bool)

(assert (=> b!3221176 (=> (not res!1311424) (not e!2008481))))

(declare-datatypes ((LexerInterface!4825 0))(
  ( (LexerInterfaceExt!4822 (__x!23150 Int)) (Lexer!4823) )
))
(declare-fun thiss!18206 () LexerInterface!4825)

(declare-datatypes ((IArray!21701 0))(
  ( (IArray!21702 (innerList!10908 List!36357)) )
))
(declare-datatypes ((Conc!10848 0))(
  ( (Node!10848 (left!28188 Conc!10848) (right!28518 Conc!10848) (csize!21926 Int) (cheight!11059 Int)) (Leaf!17077 (xs!13966 IArray!21701) (csize!21927 Int)) (Empty!10848) )
))
(declare-datatypes ((BalanceConc!21310 0))(
  ( (BalanceConc!21311 (c!541674 Conc!10848)) )
))
(declare-fun rulesProduceEachTokenIndividually!1276 (LexerInterface!4825 List!36356 BalanceConc!21310) Bool)

(declare-fun seqFromList!3543 (List!36357) BalanceConc!21310)

(assert (=> b!3221176 (= res!1311424 (rulesProduceEachTokenIndividually!1276 thiss!18206 rules!2135 (seqFromList!3543 tokens!494)))))

(declare-fun b!3221177 () Bool)

(declare-datatypes ((Unit!50788 0))(
  ( (Unit!50789) )
))
(declare-fun e!2008483 () Unit!50788)

(declare-fun Unit!50790 () Unit!50788)

(assert (=> b!3221177 (= e!2008483 Unit!50790)))

(declare-fun lt!1091206 () Unit!50788)

(declare-fun separatorToken!241 () Token!9838)

(declare-fun lt!1091237 () C!20176)

(declare-fun lt!1091208 () List!36355)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!400 (Regex!9995 List!36355 C!20176) Unit!50788)

(assert (=> b!3221177 (= lt!1091206 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!400 (regex!5236 (rule!7694 separatorToken!241)) lt!1091208 lt!1091237))))

(declare-fun res!1311409 () Bool)

(declare-fun matchR!4629 (Regex!9995 List!36355) Bool)

(assert (=> b!3221177 (= res!1311409 (not (matchR!4629 (regex!5236 (rule!7694 separatorToken!241)) lt!1091208)))))

(declare-fun e!2008487 () Bool)

(assert (=> b!3221177 (=> (not res!1311409) (not e!2008487))))

(assert (=> b!3221177 e!2008487))

(declare-fun b!3221178 () Bool)

(declare-fun res!1311411 () Bool)

(assert (=> b!3221178 (=> (not res!1311411) (not e!2008481))))

(declare-fun isEmpty!20335 (List!36356) Bool)

(assert (=> b!3221178 (= res!1311411 (not (isEmpty!20335 rules!2135)))))

(declare-fun b!3221179 () Bool)

(declare-fun res!1311428 () Bool)

(assert (=> b!3221179 (=> (not res!1311428) (not e!2008481))))

(declare-fun sepAndNonSepRulesDisjointChars!1430 (List!36356 List!36356) Bool)

(assert (=> b!3221179 (= res!1311428 (sepAndNonSepRulesDisjointChars!1430 rules!2135 rules!2135))))

(declare-fun b!3221180 () Bool)

(declare-fun e!2008474 () Bool)

(declare-fun lt!1091202 () Rule!10272)

(assert (=> b!3221180 (= e!2008474 (= (rule!7694 (h!41653 tokens!494)) lt!1091202))))

(declare-fun b!3221181 () Bool)

(declare-fun e!2008473 () Bool)

(declare-fun e!2008476 () Bool)

(declare-fun tp!1014811 () Bool)

(assert (=> b!3221181 (= e!2008473 (and e!2008476 tp!1014811))))

(declare-fun b!3221182 () Bool)

(declare-fun e!2008490 () Unit!50788)

(declare-fun Unit!50791 () Unit!50788)

(assert (=> b!3221182 (= e!2008490 Unit!50791)))

(declare-fun lt!1091230 () C!20176)

(declare-fun lt!1091216 () List!36355)

(declare-fun lt!1091228 () Unit!50788)

(assert (=> b!3221182 (= lt!1091228 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!400 (regex!5236 (rule!7694 (h!41653 (t!240506 tokens!494)))) lt!1091216 lt!1091230))))

(declare-fun res!1311413 () Bool)

(assert (=> b!3221182 (= res!1311413 (not (matchR!4629 (regex!5236 (rule!7694 (h!41653 (t!240506 tokens!494)))) lt!1091216)))))

(assert (=> b!3221182 (=> (not res!1311413) (not e!2008484))))

(assert (=> b!3221182 e!2008484))

(declare-fun b!3221183 () Bool)

(declare-fun res!1311433 () Bool)

(declare-fun e!2008475 () Bool)

(assert (=> b!3221183 (=> res!1311433 e!2008475)))

(declare-datatypes ((tuple2!35658 0))(
  ( (tuple2!35659 (_1!20963 BalanceConc!21310) (_2!20963 BalanceConc!21308)) )
))
(declare-fun lt!1091200 () tuple2!35658)

(declare-fun apply!8239 (BalanceConc!21310 Int) Token!9838)

(assert (=> b!3221183 (= res!1311433 (not (= (apply!8239 (_1!20963 lt!1091200) 0) (h!41653 (t!240506 tokens!494)))))))

(declare-fun b!3221184 () Bool)

(declare-fun e!2008459 () Bool)

(declare-fun e!2008461 () Bool)

(assert (=> b!3221184 (= e!2008459 e!2008461)))

(declare-fun res!1311422 () Bool)

(assert (=> b!3221184 (=> res!1311422 e!2008461)))

(declare-fun lt!1091213 () List!36355)

(declare-fun ++!8710 (List!36355 List!36355) List!36355)

(declare-fun printWithSeparatorTokenList!170 (LexerInterface!4825 List!36357 Token!9838) List!36355)

(assert (=> b!3221184 (= res!1311422 (not (= lt!1091213 (++!8710 (++!8710 lt!1091216 lt!1091208) (printWithSeparatorTokenList!170 thiss!18206 (t!240506 (t!240506 tokens!494)) separatorToken!241)))))))

(declare-fun list!12901 (BalanceConc!21308) List!36355)

(declare-fun charsOf!3252 (Token!9838) BalanceConc!21308)

(assert (=> b!3221184 (= lt!1091216 (list!12901 (charsOf!3252 (h!41653 (t!240506 tokens!494)))))))

(declare-fun lt!1091207 () List!36355)

(assert (=> b!3221184 (= lt!1091207 (++!8710 lt!1091208 lt!1091213))))

(assert (=> b!3221184 (= lt!1091208 (list!12901 (charsOf!3252 separatorToken!241)))))

(assert (=> b!3221184 (= lt!1091213 (printWithSeparatorTokenList!170 thiss!18206 (t!240506 tokens!494) separatorToken!241))))

(declare-fun lt!1091218 () List!36355)

(assert (=> b!3221184 (= lt!1091218 (printWithSeparatorTokenList!170 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2008479 () Bool)

(declare-fun tp!1014817 () Bool)

(declare-fun b!3221185 () Bool)

(declare-fun inv!49107 (Token!9838) Bool)

(assert (=> b!3221185 (= e!2008479 (and (inv!49107 (h!41653 tokens!494)) e!2008485 tp!1014817))))

(declare-fun res!1311434 () Bool)

(assert (=> b!3221186 (=> (not res!1311434) (not e!2008481))))

(declare-fun forall!7418 (List!36357 Int) Bool)

(assert (=> b!3221186 (= res!1311434 (forall!7418 tokens!494 lambda!117766))))

(declare-fun b!3221187 () Bool)

(declare-fun e!2008470 () Bool)

(declare-fun lt!1091210 () Rule!10272)

(assert (=> b!3221187 (= e!2008470 (= (rule!7694 (h!41653 (t!240506 tokens!494))) lt!1091210))))

(declare-fun b!3221188 () Bool)

(declare-fun e!2008471 () Bool)

(assert (=> b!3221188 (= e!2008461 e!2008471)))

(declare-fun res!1311420 () Bool)

(assert (=> b!3221188 (=> res!1311420 e!2008471)))

(declare-fun lt!1091225 () List!36355)

(assert (=> b!3221188 (= res!1311420 (not (= lt!1091218 lt!1091225)))))

(declare-fun lt!1091223 () List!36355)

(assert (=> b!3221188 (= lt!1091225 (++!8710 (++!8710 lt!1091223 lt!1091208) lt!1091213))))

(declare-fun b!3221189 () Bool)

(declare-fun res!1311429 () Bool)

(declare-fun e!2008472 () Bool)

(assert (=> b!3221189 (=> (not res!1311429) (not e!2008472))))

(declare-fun lt!1091203 () tuple2!35658)

(assert (=> b!3221189 (= res!1311429 (= (apply!8239 (_1!20963 lt!1091203) 0) separatorToken!241))))

(declare-fun b!3221190 () Bool)

(declare-fun e!2008489 () Bool)

(assert (=> b!3221190 (= e!2008489 e!2008474)))

(declare-fun res!1311426 () Bool)

(assert (=> b!3221190 (=> (not res!1311426) (not e!2008474))))

(assert (=> b!3221190 (= res!1311426 (matchR!4629 (regex!5236 lt!1091202) lt!1091223))))

(declare-datatypes ((Option!7177 0))(
  ( (None!7176) (Some!7176 (v!35756 Rule!10272)) )
))
(declare-fun lt!1091192 () Option!7177)

(declare-fun get!11545 (Option!7177) Rule!10272)

(assert (=> b!3221190 (= lt!1091202 (get!11545 lt!1091192))))

(declare-fun tp!1014814 () Bool)

(declare-fun b!3221191 () Bool)

(declare-fun e!2008468 () Bool)

(assert (=> b!3221191 (= e!2008476 (and tp!1014814 (inv!49103 (tag!5768 (h!41652 rules!2135))) (inv!49106 (transformation!5236 (h!41652 rules!2135))) e!2008468))))

(declare-fun b!3221192 () Bool)

(declare-fun e!2008493 () Bool)

(declare-fun e!2008464 () Bool)

(declare-fun tp!1014815 () Bool)

(assert (=> b!3221192 (= e!2008464 (and (inv!21 (value!169686 separatorToken!241)) e!2008493 tp!1014815))))

(declare-fun b!3221193 () Bool)

(declare-fun isEmpty!20336 (BalanceConc!21308) Bool)

(assert (=> b!3221193 (= e!2008475 (not (isEmpty!20336 (_2!20963 lt!1091200))))))

(declare-fun b!3221194 () Bool)

(declare-fun res!1311418 () Bool)

(assert (=> b!3221194 (=> (not res!1311418) (not e!2008481))))

(declare-fun rulesProduceIndividualToken!2317 (LexerInterface!4825 List!36356 Token!9838) Bool)

(assert (=> b!3221194 (= res!1311418 (rulesProduceIndividualToken!2317 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3221195 () Bool)

(declare-fun res!1311425 () Bool)

(assert (=> b!3221195 (=> (not res!1311425) (not e!2008481))))

(assert (=> b!3221195 (= res!1311425 (and (not ((_ is Nil!36233) tokens!494)) (not ((_ is Nil!36233) (t!240506 tokens!494)))))))

(declare-fun b!3221196 () Bool)

(declare-fun e!2008467 () Bool)

(assert (=> b!3221196 (= e!2008481 (not e!2008467))))

(declare-fun res!1311431 () Bool)

(assert (=> b!3221196 (=> res!1311431 e!2008467)))

(declare-fun lt!1091209 () List!36355)

(declare-fun lt!1091219 () List!36355)

(assert (=> b!3221196 (= res!1311431 (not (= lt!1091209 lt!1091219)))))

(declare-fun printList!1375 (LexerInterface!4825 List!36357) List!36355)

(assert (=> b!3221196 (= lt!1091219 (printList!1375 thiss!18206 (Cons!36233 (h!41653 tokens!494) Nil!36233)))))

(declare-fun lt!1091212 () BalanceConc!21308)

(assert (=> b!3221196 (= lt!1091209 (list!12901 lt!1091212))))

(declare-fun lt!1091233 () BalanceConc!21310)

(declare-fun printTailRec!1322 (LexerInterface!4825 BalanceConc!21310 Int BalanceConc!21308) BalanceConc!21308)

(assert (=> b!3221196 (= lt!1091212 (printTailRec!1322 thiss!18206 lt!1091233 0 (BalanceConc!21309 Empty!10847)))))

(declare-fun print!1890 (LexerInterface!4825 BalanceConc!21310) BalanceConc!21308)

(assert (=> b!3221196 (= lt!1091212 (print!1890 thiss!18206 lt!1091233))))

(declare-fun singletonSeq!2332 (Token!9838) BalanceConc!21310)

(assert (=> b!3221196 (= lt!1091233 (singletonSeq!2332 (h!41653 tokens!494)))))

(declare-fun b!3221197 () Bool)

(declare-fun res!1311412 () Bool)

(assert (=> b!3221197 (=> (not res!1311412) (not e!2008481))))

(assert (=> b!3221197 (= res!1311412 (isSeparator!5236 (rule!7694 separatorToken!241)))))

(declare-fun b!3221198 () Bool)

(declare-fun e!2008466 () Bool)

(declare-fun lt!1091201 () Rule!10272)

(assert (=> b!3221198 (= e!2008466 (= (rule!7694 separatorToken!241) lt!1091201))))

(assert (=> b!3221199 (= e!2008468 (and tp!1014808 tp!1014813))))

(assert (=> b!3221200 (= e!2008478 (and tp!1014809 tp!1014812))))

(declare-fun b!3221201 () Bool)

(declare-fun res!1311432 () Bool)

(assert (=> b!3221201 (=> (not res!1311432) (not e!2008481))))

(declare-fun rulesInvariant!4222 (LexerInterface!4825 List!36356) Bool)

(assert (=> b!3221201 (= res!1311432 (rulesInvariant!4222 thiss!18206 rules!2135))))

(declare-fun b!3221202 () Bool)

(declare-fun e!2008492 () Bool)

(declare-fun e!2008482 () Bool)

(assert (=> b!3221202 (= e!2008492 e!2008482)))

(declare-fun res!1311419 () Bool)

(assert (=> b!3221202 (=> res!1311419 e!2008482)))

(declare-fun lt!1091220 () BalanceConc!21308)

(declare-fun isEmpty!20337 (BalanceConc!21310) Bool)

(declare-fun lex!2155 (LexerInterface!4825 List!36356 BalanceConc!21308) tuple2!35658)

(assert (=> b!3221202 (= res!1311419 (isEmpty!20337 (_1!20963 (lex!2155 thiss!18206 rules!2135 lt!1091220))))))

(declare-fun seqFromList!3544 (List!36355) BalanceConc!21308)

(assert (=> b!3221202 (= lt!1091220 (seqFromList!3544 lt!1091223))))

(declare-fun tp!1014806 () Bool)

(declare-fun e!2008480 () Bool)

(declare-fun b!3221203 () Bool)

(assert (=> b!3221203 (= e!2008493 (and tp!1014806 (inv!49103 (tag!5768 (rule!7694 separatorToken!241))) (inv!49106 (transformation!5236 (rule!7694 separatorToken!241))) e!2008480))))

(declare-fun res!1311438 () Bool)

(assert (=> start!302618 (=> (not res!1311438) (not e!2008481))))

(assert (=> start!302618 (= res!1311438 ((_ is Lexer!4823) thiss!18206))))

(assert (=> start!302618 e!2008481))

(assert (=> start!302618 true))

(assert (=> start!302618 e!2008473))

(assert (=> start!302618 e!2008479))

(assert (=> start!302618 (and (inv!49107 separatorToken!241) e!2008464)))

(declare-fun b!3221204 () Bool)

(declare-fun e!2008463 () Bool)

(assert (=> b!3221204 (= e!2008463 e!2008466)))

(declare-fun res!1311417 () Bool)

(assert (=> b!3221204 (=> (not res!1311417) (not e!2008466))))

(assert (=> b!3221204 (= res!1311417 (matchR!4629 (regex!5236 lt!1091201) lt!1091208))))

(declare-fun lt!1091217 () Option!7177)

(assert (=> b!3221204 (= lt!1091201 (get!11545 lt!1091217))))

(declare-fun b!3221205 () Bool)

(assert (=> b!3221205 (= e!2008487 false)))

(declare-fun b!3221206 () Bool)

(declare-fun Unit!50792 () Unit!50788)

(assert (=> b!3221206 (= e!2008490 Unit!50792)))

(declare-fun b!3221207 () Bool)

(assert (=> b!3221207 (= e!2008482 e!2008459)))

(declare-fun res!1311436 () Bool)

(assert (=> b!3221207 (=> res!1311436 e!2008459)))

(assert (=> b!3221207 (= res!1311436 (or (isSeparator!5236 (rule!7694 (h!41653 tokens!494))) (isSeparator!5236 (rule!7694 (h!41653 (t!240506 tokens!494))))))))

(declare-fun lt!1091191 () Unit!50788)

(declare-fun forallContained!1207 (List!36357 Int Token!9838) Unit!50788)

(assert (=> b!3221207 (= lt!1091191 (forallContained!1207 tokens!494 lambda!117766 (h!41653 (t!240506 tokens!494))))))

(declare-fun lt!1091204 () Unit!50788)

(assert (=> b!3221207 (= lt!1091204 (forallContained!1207 tokens!494 lambda!117766 (h!41653 tokens!494)))))

(declare-fun b!3221208 () Bool)

(declare-fun Unit!50793 () Unit!50788)

(assert (=> b!3221208 (= e!2008483 Unit!50793)))

(declare-fun b!3221209 () Bool)

(declare-fun e!2008462 () Bool)

(assert (=> b!3221209 (= e!2008471 e!2008462)))

(declare-fun res!1311421 () Bool)

(assert (=> b!3221209 (=> res!1311421 e!2008462)))

(declare-fun lt!1091235 () List!36355)

(assert (=> b!3221209 (= res!1311421 (not (= lt!1091218 lt!1091235)))))

(assert (=> b!3221209 (= lt!1091225 lt!1091235)))

(assert (=> b!3221209 (= lt!1091235 (++!8710 lt!1091223 lt!1091207))))

(declare-fun lt!1091224 () Unit!50788)

(declare-fun lemmaConcatAssociativity!1764 (List!36355 List!36355 List!36355) Unit!50788)

(assert (=> b!3221209 (= lt!1091224 (lemmaConcatAssociativity!1764 lt!1091223 lt!1091208 lt!1091213))))

(assert (=> b!3221210 (= e!2008480 (and tp!1014816 tp!1014810))))

(declare-fun b!3221211 () Bool)

(declare-fun e!2008465 () Bool)

(assert (=> b!3221211 (= e!2008465 e!2008470)))

(declare-fun res!1311423 () Bool)

(assert (=> b!3221211 (=> (not res!1311423) (not e!2008470))))

(assert (=> b!3221211 (= res!1311423 (matchR!4629 (regex!5236 lt!1091210) lt!1091216))))

(declare-fun lt!1091190 () Option!7177)

(assert (=> b!3221211 (= lt!1091210 (get!11545 lt!1091190))))

(declare-fun b!3221212 () Bool)

(assert (=> b!3221212 (= e!2008467 e!2008492)))

(declare-fun res!1311414 () Bool)

(assert (=> b!3221212 (=> res!1311414 e!2008492)))

(assert (=> b!3221212 (= res!1311414 (or (not (= lt!1091219 lt!1091223)) (not (= lt!1091209 lt!1091223))))))

(assert (=> b!3221212 (= lt!1091223 (list!12901 (charsOf!3252 (h!41653 tokens!494))))))

(declare-fun b!3221213 () Bool)

(declare-fun res!1311427 () Bool)

(assert (=> b!3221213 (=> res!1311427 e!2008492)))

(assert (=> b!3221213 (= res!1311427 (not (rulesProduceIndividualToken!2317 thiss!18206 rules!2135 (h!41653 tokens!494))))))

(assert (=> b!3221214 (= e!2008462 e!2008477)))

(declare-fun res!1311410 () Bool)

(assert (=> b!3221214 (=> res!1311410 e!2008477)))

(assert (=> b!3221214 (= res!1311410 (not (rulesProduceEachTokenIndividually!1276 thiss!18206 rules!2135 (seqFromList!3543 (t!240506 tokens!494)))))))

(declare-datatypes ((tuple2!35660 0))(
  ( (tuple2!35661 (_1!20964 Token!9838) (_2!20964 List!36355)) )
))
(declare-datatypes ((Option!7178 0))(
  ( (None!7177) (Some!7177 (v!35757 tuple2!35660)) )
))
(declare-fun maxPrefix!2467 (LexerInterface!4825 List!36356 List!36355) Option!7178)

(assert (=> b!3221214 (= (maxPrefix!2467 thiss!18206 rules!2135 lt!1091207) (Some!7177 (tuple2!35661 separatorToken!241 lt!1091213)))))

(declare-fun lt!1091229 () Unit!50788)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!160 (LexerInterface!4825 List!36356 Token!9838 Rule!10272 List!36355 Rule!10272) Unit!50788)

(assert (=> b!3221214 (= lt!1091229 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!160 thiss!18206 rules!2135 separatorToken!241 (rule!7694 separatorToken!241) lt!1091213 (rule!7694 (h!41653 (t!240506 tokens!494)))))))

(declare-fun lt!1091196 () List!36355)

(declare-fun contains!6495 (List!36355 C!20176) Bool)

(assert (=> b!3221214 (not (contains!6495 lt!1091196 lt!1091230))))

(declare-fun lt!1091199 () Unit!50788)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!144 (LexerInterface!4825 List!36356 List!36356 Rule!10272 Rule!10272 C!20176) Unit!50788)

(assert (=> b!3221214 (= lt!1091199 (lemmaSepRuleNotContainsCharContainedInANonSepRule!144 thiss!18206 rules!2135 rules!2135 (rule!7694 (h!41653 (t!240506 tokens!494))) (rule!7694 separatorToken!241) lt!1091230))))

(declare-fun lt!1091227 () Unit!50788)

(assert (=> b!3221214 (= lt!1091227 e!2008490)))

(declare-fun c!541671 () Bool)

(declare-fun usedCharacters!552 (Regex!9995) List!36355)

(assert (=> b!3221214 (= c!541671 (not (contains!6495 (usedCharacters!552 (regex!5236 (rule!7694 (h!41653 (t!240506 tokens!494))))) lt!1091230)))))

(declare-fun head!7061 (List!36355) C!20176)

(assert (=> b!3221214 (= lt!1091230 (head!7061 lt!1091216))))

(declare-fun maxPrefixOneRule!1604 (LexerInterface!4825 Rule!10272 List!36355) Option!7178)

(declare-fun apply!8240 (TokenValueInjection!10360 BalanceConc!21308) TokenValue!5466)

(declare-fun size!27320 (List!36355) Int)

(assert (=> b!3221214 (= (maxPrefixOneRule!1604 thiss!18206 (rule!7694 (h!41653 (t!240506 tokens!494))) lt!1091216) (Some!7177 (tuple2!35661 (Token!9839 (apply!8240 (transformation!5236 (rule!7694 (h!41653 (t!240506 tokens!494)))) (seqFromList!3544 lt!1091216)) (rule!7694 (h!41653 (t!240506 tokens!494))) (size!27320 lt!1091216) lt!1091216) Nil!36231)))))

(declare-fun lt!1091231 () Unit!50788)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!717 (LexerInterface!4825 List!36356 List!36355 List!36355 List!36355 Rule!10272) Unit!50788)

(assert (=> b!3221214 (= lt!1091231 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!717 thiss!18206 rules!2135 lt!1091216 lt!1091216 Nil!36231 (rule!7694 (h!41653 (t!240506 tokens!494)))))))

(assert (=> b!3221214 e!2008465))

(declare-fun res!1311435 () Bool)

(assert (=> b!3221214 (=> (not res!1311435) (not e!2008465))))

(declare-fun isDefined!5574 (Option!7177) Bool)

(assert (=> b!3221214 (= res!1311435 (isDefined!5574 lt!1091190))))

(declare-fun getRuleFromTag!941 (LexerInterface!4825 List!36356 String!40664) Option!7177)

(assert (=> b!3221214 (= lt!1091190 (getRuleFromTag!941 thiss!18206 rules!2135 (tag!5768 (rule!7694 (h!41653 (t!240506 tokens!494))))))))

(declare-fun lt!1091232 () Unit!50788)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!941 (LexerInterface!4825 List!36356 List!36355 Token!9838) Unit!50788)

(assert (=> b!3221214 (= lt!1091232 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!941 thiss!18206 rules!2135 lt!1091216 (h!41653 (t!240506 tokens!494))))))

(declare-fun lt!1091222 () Bool)

(assert (=> b!3221214 lt!1091222))

(declare-fun lt!1091194 () Unit!50788)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!864 (LexerInterface!4825 List!36356 List!36357 Token!9838) Unit!50788)

(assert (=> b!3221214 (= lt!1091194 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!864 thiss!18206 rules!2135 tokens!494 (h!41653 (t!240506 tokens!494))))))

(assert (=> b!3221214 (= (maxPrefix!2467 thiss!18206 rules!2135 lt!1091235) (Some!7177 (tuple2!35661 (h!41653 tokens!494) lt!1091207)))))

(declare-fun lt!1091234 () Unit!50788)

(assert (=> b!3221214 (= lt!1091234 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!160 thiss!18206 rules!2135 (h!41653 tokens!494) (rule!7694 (h!41653 tokens!494)) lt!1091207 (rule!7694 separatorToken!241)))))

(assert (=> b!3221214 (not (contains!6495 (usedCharacters!552 (regex!5236 (rule!7694 (h!41653 tokens!494)))) lt!1091237))))

(declare-fun lt!1091226 () Unit!50788)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!160 (LexerInterface!4825 List!36356 List!36356 Rule!10272 Rule!10272 C!20176) Unit!50788)

(assert (=> b!3221214 (= lt!1091226 (lemmaNonSepRuleNotContainsCharContainedInASepRule!160 thiss!18206 rules!2135 rules!2135 (rule!7694 (h!41653 tokens!494)) (rule!7694 separatorToken!241) lt!1091237))))

(declare-fun lt!1091211 () Unit!50788)

(assert (=> b!3221214 (= lt!1091211 (forallContained!1207 tokens!494 lambda!117767 (h!41653 (t!240506 tokens!494))))))

(declare-fun lt!1091205 () Bool)

(assert (=> b!3221214 (= lt!1091222 (not lt!1091205))))

(assert (=> b!3221214 (= lt!1091222 (rulesProduceIndividualToken!2317 thiss!18206 rules!2135 (h!41653 (t!240506 tokens!494))))))

(assert (=> b!3221214 (= lt!1091205 e!2008475)))

(declare-fun res!1311415 () Bool)

(assert (=> b!3221214 (=> res!1311415 e!2008475)))

(declare-fun size!27321 (BalanceConc!21310) Int)

(assert (=> b!3221214 (= res!1311415 (not (= (size!27321 (_1!20963 lt!1091200)) 1)))))

(declare-fun lt!1091215 () BalanceConc!21308)

(assert (=> b!3221214 (= lt!1091200 (lex!2155 thiss!18206 rules!2135 lt!1091215))))

(declare-fun lt!1091197 () BalanceConc!21310)

(assert (=> b!3221214 (= lt!1091215 (printTailRec!1322 thiss!18206 lt!1091197 0 (BalanceConc!21309 Empty!10847)))))

(assert (=> b!3221214 (= lt!1091215 (print!1890 thiss!18206 lt!1091197))))

(assert (=> b!3221214 (= lt!1091197 (singletonSeq!2332 (h!41653 (t!240506 tokens!494))))))

(assert (=> b!3221214 e!2008472))

(declare-fun res!1311437 () Bool)

(assert (=> b!3221214 (=> (not res!1311437) (not e!2008472))))

(assert (=> b!3221214 (= res!1311437 (= (size!27321 (_1!20963 lt!1091203)) 1))))

(declare-fun lt!1091238 () BalanceConc!21308)

(assert (=> b!3221214 (= lt!1091203 (lex!2155 thiss!18206 rules!2135 lt!1091238))))

(declare-fun lt!1091195 () BalanceConc!21310)

(assert (=> b!3221214 (= lt!1091238 (printTailRec!1322 thiss!18206 lt!1091195 0 (BalanceConc!21309 Empty!10847)))))

(assert (=> b!3221214 (= lt!1091238 (print!1890 thiss!18206 lt!1091195))))

(assert (=> b!3221214 (= lt!1091195 (singletonSeq!2332 separatorToken!241))))

(declare-fun lt!1091198 () Unit!50788)

(assert (=> b!3221214 (= lt!1091198 e!2008483)))

(declare-fun c!541670 () Bool)

(assert (=> b!3221214 (= c!541670 (not (contains!6495 lt!1091196 lt!1091237)))))

(assert (=> b!3221214 (= lt!1091237 (head!7061 lt!1091208))))

(assert (=> b!3221214 (= lt!1091196 (usedCharacters!552 (regex!5236 (rule!7694 separatorToken!241))))))

(assert (=> b!3221214 e!2008463))

(declare-fun res!1311430 () Bool)

(assert (=> b!3221214 (=> (not res!1311430) (not e!2008463))))

(assert (=> b!3221214 (= res!1311430 (isDefined!5574 lt!1091217))))

(assert (=> b!3221214 (= lt!1091217 (getRuleFromTag!941 thiss!18206 rules!2135 (tag!5768 (rule!7694 separatorToken!241))))))

(declare-fun lt!1091221 () Unit!50788)

(assert (=> b!3221214 (= lt!1091221 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!941 thiss!18206 rules!2135 lt!1091208 separatorToken!241))))

(assert (=> b!3221214 (= (maxPrefixOneRule!1604 thiss!18206 (rule!7694 (h!41653 tokens!494)) lt!1091223) (Some!7177 (tuple2!35661 (Token!9839 (apply!8240 (transformation!5236 (rule!7694 (h!41653 tokens!494))) lt!1091220) (rule!7694 (h!41653 tokens!494)) (size!27320 lt!1091223) lt!1091223) Nil!36231)))))

(declare-fun lt!1091193 () Unit!50788)

(assert (=> b!3221214 (= lt!1091193 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!717 thiss!18206 rules!2135 lt!1091223 lt!1091223 Nil!36231 (rule!7694 (h!41653 tokens!494))))))

(assert (=> b!3221214 e!2008489))

(declare-fun res!1311416 () Bool)

(assert (=> b!3221214 (=> (not res!1311416) (not e!2008489))))

(assert (=> b!3221214 (= res!1311416 (isDefined!5574 lt!1091192))))

(assert (=> b!3221214 (= lt!1091192 (getRuleFromTag!941 thiss!18206 rules!2135 (tag!5768 (rule!7694 (h!41653 tokens!494)))))))

(declare-fun lt!1091214 () Unit!50788)

(assert (=> b!3221214 (= lt!1091214 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!941 thiss!18206 rules!2135 lt!1091223 (h!41653 tokens!494)))))

(declare-fun lt!1091236 () Unit!50788)

(assert (=> b!3221214 (= lt!1091236 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!864 thiss!18206 rules!2135 tokens!494 (h!41653 tokens!494)))))

(declare-fun b!3221215 () Bool)

(assert (=> b!3221215 (= e!2008472 (isEmpty!20336 (_2!20963 lt!1091203)))))

(assert (= (and start!302618 res!1311438) b!3221178))

(assert (= (and b!3221178 res!1311411) b!3221201))

(assert (= (and b!3221201 res!1311432) b!3221176))

(assert (= (and b!3221176 res!1311424) b!3221194))

(assert (= (and b!3221194 res!1311418) b!3221197))

(assert (= (and b!3221197 res!1311412) b!3221186))

(assert (= (and b!3221186 res!1311434) b!3221179))

(assert (= (and b!3221179 res!1311428) b!3221195))

(assert (= (and b!3221195 res!1311425) b!3221196))

(assert (= (and b!3221196 (not res!1311431)) b!3221212))

(assert (= (and b!3221212 (not res!1311414)) b!3221213))

(assert (= (and b!3221213 (not res!1311427)) b!3221202))

(assert (= (and b!3221202 (not res!1311419)) b!3221207))

(assert (= (and b!3221207 (not res!1311436)) b!3221184))

(assert (= (and b!3221184 (not res!1311422)) b!3221188))

(assert (= (and b!3221188 (not res!1311420)) b!3221209))

(assert (= (and b!3221209 (not res!1311421)) b!3221214))

(assert (= (and b!3221214 res!1311416) b!3221190))

(assert (= (and b!3221190 res!1311426) b!3221180))

(assert (= (and b!3221214 res!1311430) b!3221204))

(assert (= (and b!3221204 res!1311417) b!3221198))

(assert (= (and b!3221214 c!541670) b!3221177))

(assert (= (and b!3221214 (not c!541670)) b!3221208))

(assert (= (and b!3221177 res!1311409) b!3221205))

(assert (= (and b!3221214 res!1311437) b!3221189))

(assert (= (and b!3221189 res!1311429) b!3221215))

(assert (= (and b!3221214 (not res!1311415)) b!3221183))

(assert (= (and b!3221183 (not res!1311433)) b!3221193))

(assert (= (and b!3221214 res!1311435) b!3221211))

(assert (= (and b!3221211 res!1311423) b!3221187))

(assert (= (and b!3221214 c!541671) b!3221182))

(assert (= (and b!3221214 (not c!541671)) b!3221206))

(assert (= (and b!3221182 res!1311413) b!3221174))

(assert (= (and b!3221214 (not res!1311410)) b!3221173))

(assert (= b!3221191 b!3221199))

(assert (= b!3221181 b!3221191))

(assert (= (and start!302618 ((_ is Cons!36232) rules!2135)) b!3221181))

(assert (= b!3221175 b!3221200))

(assert (= b!3221172 b!3221175))

(assert (= b!3221185 b!3221172))

(assert (= (and start!302618 ((_ is Cons!36233) tokens!494)) b!3221185))

(assert (= b!3221203 b!3221210))

(assert (= b!3221192 b!3221203))

(assert (= start!302618 b!3221192))

(declare-fun m!3497905 () Bool)

(assert (=> b!3221204 m!3497905))

(declare-fun m!3497907 () Bool)

(assert (=> b!3221204 m!3497907))

(declare-fun m!3497909 () Bool)

(assert (=> b!3221189 m!3497909))

(declare-fun m!3497911 () Bool)

(assert (=> b!3221172 m!3497911))

(declare-fun m!3497913 () Bool)

(assert (=> b!3221209 m!3497913))

(declare-fun m!3497915 () Bool)

(assert (=> b!3221209 m!3497915))

(declare-fun m!3497917 () Bool)

(assert (=> b!3221215 m!3497917))

(declare-fun m!3497919 () Bool)

(assert (=> b!3221192 m!3497919))

(declare-fun m!3497921 () Bool)

(assert (=> b!3221185 m!3497921))

(declare-fun m!3497923 () Bool)

(assert (=> b!3221176 m!3497923))

(assert (=> b!3221176 m!3497923))

(declare-fun m!3497925 () Bool)

(assert (=> b!3221176 m!3497925))

(declare-fun m!3497927 () Bool)

(assert (=> b!3221183 m!3497927))

(declare-fun m!3497929 () Bool)

(assert (=> b!3221214 m!3497929))

(declare-fun m!3497931 () Bool)

(assert (=> b!3221214 m!3497931))

(declare-fun m!3497933 () Bool)

(assert (=> b!3221214 m!3497933))

(declare-fun m!3497935 () Bool)

(assert (=> b!3221214 m!3497935))

(declare-fun m!3497937 () Bool)

(assert (=> b!3221214 m!3497937))

(declare-fun m!3497939 () Bool)

(assert (=> b!3221214 m!3497939))

(declare-fun m!3497941 () Bool)

(assert (=> b!3221214 m!3497941))

(declare-fun m!3497943 () Bool)

(assert (=> b!3221214 m!3497943))

(declare-fun m!3497945 () Bool)

(assert (=> b!3221214 m!3497945))

(declare-fun m!3497947 () Bool)

(assert (=> b!3221214 m!3497947))

(declare-fun m!3497949 () Bool)

(assert (=> b!3221214 m!3497949))

(declare-fun m!3497951 () Bool)

(assert (=> b!3221214 m!3497951))

(declare-fun m!3497953 () Bool)

(assert (=> b!3221214 m!3497953))

(declare-fun m!3497955 () Bool)

(assert (=> b!3221214 m!3497955))

(declare-fun m!3497957 () Bool)

(assert (=> b!3221214 m!3497957))

(declare-fun m!3497959 () Bool)

(assert (=> b!3221214 m!3497959))

(assert (=> b!3221214 m!3497933))

(declare-fun m!3497961 () Bool)

(assert (=> b!3221214 m!3497961))

(declare-fun m!3497963 () Bool)

(assert (=> b!3221214 m!3497963))

(declare-fun m!3497965 () Bool)

(assert (=> b!3221214 m!3497965))

(assert (=> b!3221214 m!3497959))

(declare-fun m!3497967 () Bool)

(assert (=> b!3221214 m!3497967))

(declare-fun m!3497969 () Bool)

(assert (=> b!3221214 m!3497969))

(declare-fun m!3497971 () Bool)

(assert (=> b!3221214 m!3497971))

(declare-fun m!3497973 () Bool)

(assert (=> b!3221214 m!3497973))

(declare-fun m!3497975 () Bool)

(assert (=> b!3221214 m!3497975))

(assert (=> b!3221214 m!3497937))

(declare-fun m!3497977 () Bool)

(assert (=> b!3221214 m!3497977))

(declare-fun m!3497979 () Bool)

(assert (=> b!3221214 m!3497979))

(declare-fun m!3497981 () Bool)

(assert (=> b!3221214 m!3497981))

(declare-fun m!3497983 () Bool)

(assert (=> b!3221214 m!3497983))

(declare-fun m!3497985 () Bool)

(assert (=> b!3221214 m!3497985))

(declare-fun m!3497987 () Bool)

(assert (=> b!3221214 m!3497987))

(declare-fun m!3497989 () Bool)

(assert (=> b!3221214 m!3497989))

(declare-fun m!3497991 () Bool)

(assert (=> b!3221214 m!3497991))

(declare-fun m!3497993 () Bool)

(assert (=> b!3221214 m!3497993))

(declare-fun m!3497995 () Bool)

(assert (=> b!3221214 m!3497995))

(declare-fun m!3497997 () Bool)

(assert (=> b!3221214 m!3497997))

(declare-fun m!3497999 () Bool)

(assert (=> b!3221214 m!3497999))

(declare-fun m!3498001 () Bool)

(assert (=> b!3221214 m!3498001))

(declare-fun m!3498003 () Bool)

(assert (=> b!3221214 m!3498003))

(declare-fun m!3498005 () Bool)

(assert (=> b!3221214 m!3498005))

(declare-fun m!3498007 () Bool)

(assert (=> b!3221214 m!3498007))

(declare-fun m!3498009 () Bool)

(assert (=> b!3221214 m!3498009))

(declare-fun m!3498011 () Bool)

(assert (=> b!3221214 m!3498011))

(declare-fun m!3498013 () Bool)

(assert (=> b!3221214 m!3498013))

(declare-fun m!3498015 () Bool)

(assert (=> b!3221214 m!3498015))

(assert (=> b!3221214 m!3497979))

(declare-fun m!3498017 () Bool)

(assert (=> b!3221214 m!3498017))

(declare-fun m!3498019 () Bool)

(assert (=> b!3221214 m!3498019))

(declare-fun m!3498021 () Bool)

(assert (=> b!3221214 m!3498021))

(declare-fun m!3498023 () Bool)

(assert (=> b!3221214 m!3498023))

(declare-fun m!3498025 () Bool)

(assert (=> b!3221214 m!3498025))

(declare-fun m!3498027 () Bool)

(assert (=> b!3221182 m!3498027))

(declare-fun m!3498029 () Bool)

(assert (=> b!3221182 m!3498029))

(declare-fun m!3498031 () Bool)

(assert (=> b!3221188 m!3498031))

(assert (=> b!3221188 m!3498031))

(declare-fun m!3498033 () Bool)

(assert (=> b!3221188 m!3498033))

(declare-fun m!3498035 () Bool)

(assert (=> b!3221201 m!3498035))

(declare-fun m!3498037 () Bool)

(assert (=> b!3221202 m!3498037))

(declare-fun m!3498039 () Bool)

(assert (=> b!3221202 m!3498039))

(declare-fun m!3498041 () Bool)

(assert (=> b!3221202 m!3498041))

(declare-fun m!3498043 () Bool)

(assert (=> b!3221213 m!3498043))

(declare-fun m!3498045 () Bool)

(assert (=> b!3221191 m!3498045))

(declare-fun m!3498047 () Bool)

(assert (=> b!3221191 m!3498047))

(declare-fun m!3498049 () Bool)

(assert (=> b!3221207 m!3498049))

(declare-fun m!3498051 () Bool)

(assert (=> b!3221207 m!3498051))

(declare-fun m!3498053 () Bool)

(assert (=> b!3221203 m!3498053))

(declare-fun m!3498055 () Bool)

(assert (=> b!3221203 m!3498055))

(declare-fun m!3498057 () Bool)

(assert (=> start!302618 m!3498057))

(declare-fun m!3498059 () Bool)

(assert (=> b!3221186 m!3498059))

(declare-fun m!3498061 () Bool)

(assert (=> b!3221196 m!3498061))

(declare-fun m!3498063 () Bool)

(assert (=> b!3221196 m!3498063))

(declare-fun m!3498065 () Bool)

(assert (=> b!3221196 m!3498065))

(declare-fun m!3498067 () Bool)

(assert (=> b!3221196 m!3498067))

(declare-fun m!3498069 () Bool)

(assert (=> b!3221196 m!3498069))

(declare-fun m!3498071 () Bool)

(assert (=> b!3221179 m!3498071))

(declare-fun m!3498073 () Bool)

(assert (=> b!3221193 m!3498073))

(declare-fun m!3498075 () Bool)

(assert (=> b!3221194 m!3498075))

(declare-fun m!3498077 () Bool)

(assert (=> b!3221177 m!3498077))

(declare-fun m!3498079 () Bool)

(assert (=> b!3221177 m!3498079))

(declare-fun m!3498081 () Bool)

(assert (=> b!3221190 m!3498081))

(declare-fun m!3498083 () Bool)

(assert (=> b!3221190 m!3498083))

(declare-fun m!3498085 () Bool)

(assert (=> b!3221175 m!3498085))

(declare-fun m!3498087 () Bool)

(assert (=> b!3221175 m!3498087))

(declare-fun m!3498089 () Bool)

(assert (=> b!3221178 m!3498089))

(declare-fun m!3498091 () Bool)

(assert (=> b!3221212 m!3498091))

(assert (=> b!3221212 m!3498091))

(declare-fun m!3498093 () Bool)

(assert (=> b!3221212 m!3498093))

(declare-fun m!3498095 () Bool)

(assert (=> b!3221211 m!3498095))

(declare-fun m!3498097 () Bool)

(assert (=> b!3221211 m!3498097))

(declare-fun m!3498099 () Bool)

(assert (=> b!3221184 m!3498099))

(declare-fun m!3498101 () Bool)

(assert (=> b!3221184 m!3498101))

(declare-fun m!3498103 () Bool)

(assert (=> b!3221184 m!3498103))

(declare-fun m!3498105 () Bool)

(assert (=> b!3221184 m!3498105))

(declare-fun m!3498107 () Bool)

(assert (=> b!3221184 m!3498107))

(declare-fun m!3498109 () Bool)

(assert (=> b!3221184 m!3498109))

(declare-fun m!3498111 () Bool)

(assert (=> b!3221184 m!3498111))

(assert (=> b!3221184 m!3498099))

(declare-fun m!3498113 () Bool)

(assert (=> b!3221184 m!3498113))

(assert (=> b!3221184 m!3498105))

(assert (=> b!3221184 m!3498107))

(assert (=> b!3221184 m!3498101))

(declare-fun m!3498115 () Bool)

(assert (=> b!3221184 m!3498115))

(declare-fun m!3498117 () Bool)

(assert (=> b!3221184 m!3498117))

(check-sat (not b!3221213) (not b_next!86345) (not b!3221191) (not start!302618) (not b_next!86353) b_and!215349 b_and!215343 (not b!3221184) (not b!3221176) (not b!3221202) b_and!215345 (not b!3221215) (not b!3221194) (not b!3221207) (not b!3221190) (not b!3221178) (not b!3221196) (not b!3221192) (not b!3221193) (not b!3221188) (not b!3221183) (not b!3221186) (not b_next!86351) (not b!3221189) (not b!3221214) (not b!3221201) b_and!215353 (not b!3221212) (not b!3221185) (not b!3221209) (not b!3221204) (not b!3221175) (not b!3221224) (not b!3221177) (not b!3221181) b_and!215351 (not b!3221172) b_and!215347 (not b!3221203) (not b!3221182) (not b!3221179) (not b_next!86349) (not b_next!86347) (not b!3221211) (not b_next!86355))
(check-sat b_and!215345 (not b_next!86351) (not b_next!86345) (not b_next!86353) b_and!215353 b_and!215349 b_and!215351 b_and!215343 b_and!215347 (not b_next!86355) (not b_next!86349) (not b_next!86347))
