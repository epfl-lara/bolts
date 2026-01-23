; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125226 () Bool)

(assert start!125226)

(declare-fun b!1382069 () Bool)

(declare-fun b_free!33603 () Bool)

(declare-fun b_next!34307 () Bool)

(assert (=> b!1382069 (= b_free!33603 (not b_next!34307))))

(declare-fun tp!396021 () Bool)

(declare-fun b_and!92627 () Bool)

(assert (=> b!1382069 (= tp!396021 b_and!92627)))

(declare-fun b_free!33605 () Bool)

(declare-fun b_next!34309 () Bool)

(assert (=> b!1382069 (= b_free!33605 (not b_next!34309))))

(declare-fun tp!396015 () Bool)

(declare-fun b_and!92629 () Bool)

(assert (=> b!1382069 (= tp!396015 b_and!92629)))

(declare-fun b!1382051 () Bool)

(declare-fun b_free!33607 () Bool)

(declare-fun b_next!34311 () Bool)

(assert (=> b!1382051 (= b_free!33607 (not b_next!34311))))

(declare-fun tp!396020 () Bool)

(declare-fun b_and!92631 () Bool)

(assert (=> b!1382051 (= tp!396020 b_and!92631)))

(declare-fun b_free!33609 () Bool)

(declare-fun b_next!34313 () Bool)

(assert (=> b!1382051 (= b_free!33609 (not b_next!34313))))

(declare-fun tp!396018 () Bool)

(declare-fun b_and!92633 () Bool)

(assert (=> b!1382051 (= tp!396018 b_and!92633)))

(declare-fun b!1382052 () Bool)

(declare-fun b_free!33611 () Bool)

(declare-fun b_next!34315 () Bool)

(assert (=> b!1382052 (= b_free!33611 (not b_next!34315))))

(declare-fun tp!396017 () Bool)

(declare-fun b_and!92635 () Bool)

(assert (=> b!1382052 (= tp!396017 b_and!92635)))

(declare-fun b_free!33613 () Bool)

(declare-fun b_next!34317 () Bool)

(assert (=> b!1382052 (= b_free!33613 (not b_next!34317))))

(declare-fun tp!396014 () Bool)

(declare-fun b_and!92637 () Bool)

(assert (=> b!1382052 (= tp!396014 b_and!92637)))

(declare-fun b!1382048 () Bool)

(assert (=> b!1382048 true))

(assert (=> b!1382048 true))

(declare-fun b!1382062 () Bool)

(assert (=> b!1382062 true))

(declare-fun b!1382040 () Bool)

(assert (=> b!1382040 true))

(declare-fun bs!336614 () Bool)

(declare-fun b!1382054 () Bool)

(assert (= bs!336614 (and b!1382054 b!1382040)))

(declare-fun lambda!59353 () Int)

(declare-fun lambda!59352 () Int)

(assert (=> bs!336614 (not (= lambda!59353 lambda!59352))))

(assert (=> b!1382054 true))

(declare-fun b!1382027 () Bool)

(declare-fun res!623246 () Bool)

(declare-fun e!883083 () Bool)

(assert (=> b!1382027 (=> res!623246 e!883083)))

(declare-datatypes ((List!14100 0))(
  ( (Nil!14034) (Cons!14034 (h!19435 (_ BitVec 16)) (t!122053 List!14100)) )
))
(declare-datatypes ((TokenValue!2521 0))(
  ( (FloatLiteralValue!5042 (text!18092 List!14100)) (TokenValueExt!2520 (__x!8871 Int)) (Broken!12605 (value!78890 List!14100)) (Object!2586) (End!2521) (Def!2521) (Underscore!2521) (Match!2521) (Else!2521) (Error!2521) (Case!2521) (If!2521) (Extends!2521) (Abstract!2521) (Class!2521) (Val!2521) (DelimiterValue!5042 (del!2581 List!14100)) (KeywordValue!2527 (value!78891 List!14100)) (CommentValue!5042 (value!78892 List!14100)) (WhitespaceValue!5042 (value!78893 List!14100)) (IndentationValue!2521 (value!78894 List!14100)) (String!16840) (Int32!2521) (Broken!12606 (value!78895 List!14100)) (Boolean!2522) (Unit!20284) (OperatorValue!2524 (op!2581 List!14100)) (IdentifierValue!5042 (value!78896 List!14100)) (IdentifierValue!5043 (value!78897 List!14100)) (WhitespaceValue!5043 (value!78898 List!14100)) (True!5042) (False!5042) (Broken!12607 (value!78899 List!14100)) (Broken!12608 (value!78900 List!14100)) (True!5043) (RightBrace!2521) (RightBracket!2521) (Colon!2521) (Null!2521) (Comma!2521) (LeftBracket!2521) (False!5043) (LeftBrace!2521) (ImaginaryLiteralValue!2521 (text!18093 List!14100)) (StringLiteralValue!7563 (value!78901 List!14100)) (EOFValue!2521 (value!78902 List!14100)) (IdentValue!2521 (value!78903 List!14100)) (DelimiterValue!5043 (value!78904 List!14100)) (DedentValue!2521 (value!78905 List!14100)) (NewLineValue!2521 (value!78906 List!14100)) (IntegerValue!7563 (value!78907 (_ BitVec 32)) (text!18094 List!14100)) (IntegerValue!7564 (value!78908 Int) (text!18095 List!14100)) (Times!2521) (Or!2521) (Equal!2521) (Minus!2521) (Broken!12609 (value!78909 List!14100)) (And!2521) (Div!2521) (LessEqual!2521) (Mod!2521) (Concat!6266) (Not!2521) (Plus!2521) (SpaceValue!2521 (value!78910 List!14100)) (IntegerValue!7565 (value!78911 Int) (text!18096 List!14100)) (StringLiteralValue!7564 (text!18097 List!14100)) (FloatLiteralValue!5043 (text!18098 List!14100)) (BytesLiteralValue!2521 (value!78912 List!14100)) (CommentValue!5043 (value!78913 List!14100)) (StringLiteralValue!7565 (value!78914 List!14100)) (ErrorTokenValue!2521 (msg!2582 List!14100)) )
))
(declare-datatypes ((C!7780 0))(
  ( (C!7781 (val!4450 Int)) )
))
(declare-datatypes ((List!14101 0))(
  ( (Nil!14035) (Cons!14035 (h!19436 C!7780) (t!122054 List!14101)) )
))
(declare-datatypes ((IArray!9249 0))(
  ( (IArray!9250 (innerList!4682 List!14101)) )
))
(declare-datatypes ((Conc!4622 0))(
  ( (Node!4622 (left!11999 Conc!4622) (right!12329 Conc!4622) (csize!9474 Int) (cheight!4833 Int)) (Leaf!7034 (xs!7349 IArray!9249) (csize!9475 Int)) (Empty!4622) )
))
(declare-datatypes ((BalanceConc!9184 0))(
  ( (BalanceConc!9185 (c!227386 Conc!4622)) )
))
(declare-datatypes ((Regex!3745 0))(
  ( (ElementMatch!3745 (c!227387 C!7780)) (Concat!6267 (regOne!8002 Regex!3745) (regTwo!8002 Regex!3745)) (EmptyExpr!3745) (Star!3745 (reg!4074 Regex!3745)) (EmptyLang!3745) (Union!3745 (regOne!8003 Regex!3745) (regTwo!8003 Regex!3745)) )
))
(declare-datatypes ((String!16841 0))(
  ( (String!16842 (value!78915 String)) )
))
(declare-datatypes ((TokenValueInjection!4702 0))(
  ( (TokenValueInjection!4703 (toValue!3714 Int) (toChars!3573 Int)) )
))
(declare-datatypes ((Rule!4662 0))(
  ( (Rule!4663 (regex!2431 Regex!3745) (tag!2693 String!16841) (isSeparator!2431 Bool) (transformation!2431 TokenValueInjection!4702)) )
))
(declare-datatypes ((Token!4524 0))(
  ( (Token!4525 (value!78916 TokenValue!2521) (rule!4190 Rule!4662) (size!11509 Int) (originalCharacters!3293 List!14101)) )
))
(declare-datatypes ((List!14102 0))(
  ( (Nil!14036) (Cons!14036 (h!19437 Token!4524) (t!122055 List!14102)) )
))
(declare-datatypes ((IArray!9251 0))(
  ( (IArray!9252 (innerList!4683 List!14102)) )
))
(declare-datatypes ((Conc!4623 0))(
  ( (Node!4623 (left!12000 Conc!4623) (right!12330 Conc!4623) (csize!9476 Int) (cheight!4834 Int)) (Leaf!7035 (xs!7350 IArray!9251) (csize!9477 Int)) (Empty!4623) )
))
(declare-datatypes ((BalanceConc!9186 0))(
  ( (BalanceConc!9187 (c!227388 Conc!4623)) )
))
(declare-datatypes ((tuple2!13630 0))(
  ( (tuple2!13631 (_1!7701 BalanceConc!9186) (_2!7701 BalanceConc!9184)) )
))
(declare-fun lt!459472 () tuple2!13630)

(declare-fun isEmpty!8468 (BalanceConc!9184) Bool)

(assert (=> b!1382027 (= res!623246 (not (isEmpty!8468 (_2!7701 lt!459472))))))

(declare-fun b!1382028 () Bool)

(declare-fun e!883087 () Bool)

(declare-fun e!883093 () Bool)

(assert (=> b!1382028 (= e!883087 e!883093)))

(declare-fun res!623244 () Bool)

(assert (=> b!1382028 (=> res!623244 e!883093)))

(declare-fun lt!459478 () List!14101)

(declare-fun lt!459490 () List!14101)

(declare-fun ++!3638 (List!14101 List!14101) List!14101)

(declare-fun getSuffix!591 (List!14101 List!14101) List!14101)

(assert (=> b!1382028 (= res!623244 (not (= lt!459478 (++!3638 lt!459490 (getSuffix!591 lt!459478 lt!459490)))))))

(declare-fun lambda!59349 () Int)

(declare-fun pickWitness!198 (Int) List!14101)

(assert (=> b!1382028 (= lt!459478 (pickWitness!198 lambda!59349))))

(declare-fun b!1382029 () Bool)

(declare-fun res!623239 () Bool)

(declare-fun e!883076 () Bool)

(assert (=> b!1382029 (=> res!623239 e!883076)))

(declare-fun t2!34 () Token!4524)

(declare-fun lt!459471 () List!14101)

(declare-fun matchR!1736 (Regex!3745 List!14101) Bool)

(assert (=> b!1382029 (= res!623239 (not (matchR!1736 (regex!2431 (rule!4190 t2!34)) lt!459471)))))

(declare-fun b!1382030 () Bool)

(declare-fun e!883079 () Bool)

(declare-fun e!883072 () Bool)

(assert (=> b!1382030 (= e!883079 e!883072)))

(declare-fun res!623247 () Bool)

(assert (=> b!1382030 (=> res!623247 e!883072)))

(declare-fun lambda!59350 () Int)

(declare-fun lt!459473 () Regex!3745)

(declare-datatypes ((List!14103 0))(
  ( (Nil!14037) (Cons!14037 (h!19438 Rule!4662) (t!122056 List!14103)) )
))
(declare-fun rules!2550 () List!14103)

(declare-datatypes ((List!14104 0))(
  ( (Nil!14038) (Cons!14038 (h!19439 Regex!3745) (t!122057 List!14104)) )
))
(declare-fun contains!2671 (List!14104 Regex!3745) Bool)

(declare-fun map!3107 (List!14103 Int) List!14104)

(assert (=> b!1382030 (= res!623247 (not (contains!2671 (map!3107 rules!2550 lambda!59350) lt!459473)))))

(declare-fun lambda!59351 () Int)

(declare-fun getWitness!394 (List!14104 Int) Regex!3745)

(assert (=> b!1382030 (= lt!459473 (getWitness!394 (map!3107 rules!2550 lambda!59350) lambda!59351))))

(declare-fun b!1382031 () Bool)

(declare-fun res!623229 () Bool)

(declare-fun e!883085 () Bool)

(assert (=> b!1382031 (=> (not res!623229) (not e!883085))))

(declare-datatypes ((LexerInterface!2126 0))(
  ( (LexerInterfaceExt!2123 (__x!8872 Int)) (Lexer!2124) )
))
(declare-fun thiss!19762 () LexerInterface!2126)

(declare-fun rulesInvariant!1996 (LexerInterface!2126 List!14103) Bool)

(assert (=> b!1382031 (= res!623229 (rulesInvariant!1996 thiss!19762 rules!2550))))

(declare-fun b!1382032 () Bool)

(declare-fun e!883071 () Bool)

(assert (=> b!1382032 (= e!883085 e!883071)))

(declare-fun res!623226 () Bool)

(assert (=> b!1382032 (=> (not res!623226) (not e!883071))))

(declare-fun lt!459475 () BalanceConc!9184)

(declare-fun size!11510 (BalanceConc!9184) Int)

(assert (=> b!1382032 (= res!623226 (> (size!11510 lt!459475) 0))))

(declare-fun charsOf!1403 (Token!4524) BalanceConc!9184)

(assert (=> b!1382032 (= lt!459475 (charsOf!1403 t2!34))))

(declare-fun b!1382033 () Bool)

(declare-fun res!623238 () Bool)

(assert (=> b!1382033 (=> (not res!623238) (not e!883071))))

(declare-fun sepAndNonSepRulesDisjointChars!804 (List!14103 List!14103) Bool)

(assert (=> b!1382033 (= res!623238 (sepAndNonSepRulesDisjointChars!804 rules!2550 rules!2550))))

(declare-fun tp!396013 () Bool)

(declare-fun e!883068 () Bool)

(declare-fun t1!34 () Token!4524)

(declare-fun b!1382034 () Bool)

(declare-fun e!883080 () Bool)

(declare-fun inv!21 (TokenValue!2521) Bool)

(assert (=> b!1382034 (= e!883080 (and (inv!21 (value!78916 t1!34)) e!883068 tp!396013))))

(declare-fun b!1382035 () Bool)

(declare-fun res!623251 () Bool)

(assert (=> b!1382035 (=> (not res!623251) (not e!883085))))

(declare-fun rulesProduceIndividualToken!1095 (LexerInterface!2126 List!14103 Token!4524) Bool)

(assert (=> b!1382035 (= res!623251 (rulesProduceIndividualToken!1095 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1382036 () Bool)

(declare-fun res!623250 () Bool)

(declare-fun e!883091 () Bool)

(assert (=> b!1382036 (=> res!623250 e!883091)))

(declare-fun contains!2672 (List!14103 Rule!4662) Bool)

(assert (=> b!1382036 (= res!623250 (not (contains!2672 rules!2550 (rule!4190 t1!34))))))

(declare-fun b!1382037 () Bool)

(declare-fun res!623256 () Bool)

(declare-fun e!883078 () Bool)

(assert (=> b!1382037 (=> res!623256 e!883078)))

(declare-fun lt!459484 () Regex!3745)

(assert (=> b!1382037 (= res!623256 (not (matchR!1736 lt!459484 lt!459478)))))

(declare-fun b!1382038 () Bool)

(assert (=> b!1382038 (= e!883093 e!883078)))

(declare-fun res!623245 () Bool)

(assert (=> b!1382038 (=> res!623245 e!883078)))

(declare-fun lt!459476 () C!7780)

(declare-fun contains!2673 (List!14101 C!7780) Bool)

(assert (=> b!1382038 (= res!623245 (not (contains!2673 lt!459490 lt!459476)))))

(declare-fun lt!459470 () BalanceConc!9184)

(declare-fun apply!3491 (BalanceConc!9184 Int) C!7780)

(assert (=> b!1382038 (= lt!459476 (apply!3491 lt!459470 0))))

(declare-fun b!1382039 () Bool)

(assert (=> b!1382039 (= e!883091 e!883083)))

(declare-fun res!623236 () Bool)

(assert (=> b!1382039 (=> res!623236 e!883083)))

(declare-fun lt!459489 () List!14102)

(declare-fun list!5429 (BalanceConc!9186) List!14102)

(assert (=> b!1382039 (= res!623236 (not (= (list!5429 (_1!7701 lt!459472)) lt!459489)))))

(assert (=> b!1382039 (= lt!459489 (Cons!14036 t2!34 Nil!14036))))

(declare-fun lt!459487 () BalanceConc!9184)

(declare-fun lex!951 (LexerInterface!2126 List!14103 BalanceConc!9184) tuple2!13630)

(assert (=> b!1382039 (= lt!459472 (lex!951 thiss!19762 rules!2550 lt!459487))))

(declare-fun print!890 (LexerInterface!2126 BalanceConc!9186) BalanceConc!9184)

(declare-fun singletonSeq!1070 (Token!4524) BalanceConc!9186)

(assert (=> b!1382039 (= lt!459487 (print!890 thiss!19762 (singletonSeq!1070 t2!34)))))

(declare-fun e!883090 () Bool)

(assert (=> b!1382040 (= e!883072 e!883090)))

(declare-fun res!623252 () Bool)

(assert (=> b!1382040 (=> res!623252 e!883090)))

(declare-fun exists!506 (List!14103 Int) Bool)

(assert (=> b!1382040 (= res!623252 (not (exists!506 rules!2550 lambda!59352)))))

(assert (=> b!1382040 (exists!506 rules!2550 lambda!59352)))

(declare-datatypes ((Unit!20285 0))(
  ( (Unit!20286) )
))
(declare-fun lt!459482 () Unit!20285)

(declare-fun lemmaMapContains!142 (List!14103 Int Regex!3745) Unit!20285)

(assert (=> b!1382040 (= lt!459482 (lemmaMapContains!142 rules!2550 lambda!59350 lt!459473))))

(declare-fun res!623241 () Bool)

(assert (=> start!125226 (=> (not res!623241) (not e!883085))))

(get-info :version)

(assert (=> start!125226 (= res!623241 ((_ is Lexer!2124) thiss!19762))))

(assert (=> start!125226 e!883085))

(assert (=> start!125226 true))

(declare-fun e!883075 () Bool)

(assert (=> start!125226 e!883075))

(declare-fun inv!18376 (Token!4524) Bool)

(assert (=> start!125226 (and (inv!18376 t1!34) e!883080)))

(declare-fun e!883092 () Bool)

(assert (=> start!125226 (and (inv!18376 t2!34) e!883092)))

(declare-fun tp!396019 () Bool)

(declare-fun b!1382041 () Bool)

(declare-fun e!883073 () Bool)

(declare-fun e!883070 () Bool)

(declare-fun inv!18373 (String!16841) Bool)

(declare-fun inv!18377 (TokenValueInjection!4702) Bool)

(assert (=> b!1382041 (= e!883073 (and tp!396019 (inv!18373 (tag!2693 (h!19438 rules!2550))) (inv!18377 (transformation!2431 (h!19438 rules!2550))) e!883070))))

(declare-fun b!1382042 () Bool)

(declare-fun res!623230 () Bool)

(assert (=> b!1382042 (=> res!623230 e!883078)))

(declare-fun lt!459481 () C!7780)

(assert (=> b!1382042 (= res!623230 (not (contains!2673 lt!459490 lt!459481)))))

(declare-fun b!1382043 () Bool)

(declare-fun res!623243 () Bool)

(declare-fun e!883094 () Bool)

(assert (=> b!1382043 (=> res!623243 e!883094)))

(declare-fun lt!459469 () Rule!4662)

(assert (=> b!1382043 (= res!623243 (not (contains!2672 rules!2550 lt!459469)))))

(declare-fun b!1382044 () Bool)

(declare-fun tp!396023 () Bool)

(declare-fun e!883089 () Bool)

(assert (=> b!1382044 (= e!883068 (and tp!396023 (inv!18373 (tag!2693 (rule!4190 t1!34))) (inv!18377 (transformation!2431 (rule!4190 t1!34))) e!883089))))

(declare-fun b!1382045 () Bool)

(declare-fun res!623240 () Bool)

(assert (=> b!1382045 (=> res!623240 e!883076)))

(declare-fun usedCharacters!242 (Regex!3745) List!14101)

(assert (=> b!1382045 (= res!623240 (contains!2673 (usedCharacters!242 (regex!2431 (rule!4190 t1!34))) lt!459476))))

(declare-fun tp!396024 () Bool)

(declare-fun b!1382046 () Bool)

(declare-fun e!883077 () Bool)

(declare-fun e!883088 () Bool)

(assert (=> b!1382046 (= e!883077 (and tp!396024 (inv!18373 (tag!2693 (rule!4190 t2!34))) (inv!18377 (transformation!2431 (rule!4190 t2!34))) e!883088))))

(declare-fun b!1382047 () Bool)

(declare-fun res!623242 () Bool)

(assert (=> b!1382047 (=> res!623242 e!883094)))

(assert (=> b!1382047 (= res!623242 (not (contains!2672 rules!2550 (rule!4190 t2!34))))))

(declare-fun e!883069 () Bool)

(assert (=> b!1382048 (= e!883069 (not e!883087))))

(declare-fun res!623231 () Bool)

(assert (=> b!1382048 (=> res!623231 e!883087)))

(declare-fun Exists!895 (Int) Bool)

(assert (=> b!1382048 (= res!623231 (not (Exists!895 lambda!59349)))))

(assert (=> b!1382048 (Exists!895 lambda!59349)))

(declare-fun lt!459488 () Unit!20285)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!213 (Regex!3745 List!14101) Unit!20285)

(assert (=> b!1382048 (= lt!459488 (lemmaPrefixMatchThenExistsStringThatMatches!213 lt!459484 lt!459490))))

(declare-fun b!1382049 () Bool)

(declare-fun validRegex!1629 (Regex!3745) Bool)

(assert (=> b!1382049 (= e!883076 (validRegex!1629 (regex!2431 (rule!4190 t1!34))))))

(declare-fun b!1382050 () Bool)

(declare-fun res!623233 () Bool)

(assert (=> b!1382050 (=> res!623233 e!883091)))

(declare-fun lt!459492 () tuple2!13630)

(assert (=> b!1382050 (= res!623233 (not (isEmpty!8468 (_2!7701 lt!459492))))))

(assert (=> b!1382051 (= e!883070 (and tp!396020 tp!396018))))

(assert (=> b!1382052 (= e!883089 (and tp!396017 tp!396014))))

(declare-fun b!1382053 () Bool)

(declare-fun res!623224 () Bool)

(assert (=> b!1382053 (=> res!623224 e!883078)))

(assert (=> b!1382053 (= res!623224 (not (contains!2673 lt!459478 lt!459481)))))

(assert (=> b!1382054 (= e!883094 e!883076)))

(declare-fun res!623232 () Bool)

(assert (=> b!1382054 (=> res!623232 e!883076)))

(declare-fun lt!459486 () List!14101)

(assert (=> b!1382054 (= res!623232 (not (matchR!1736 (regex!2431 (rule!4190 t1!34)) lt!459486)))))

(declare-fun lt!459477 () Unit!20285)

(declare-fun forallContained!626 (List!14103 Int Rule!4662) Unit!20285)

(assert (=> b!1382054 (= lt!459477 (forallContained!626 rules!2550 lambda!59353 (rule!4190 t2!34)))))

(declare-fun lt!459480 () Unit!20285)

(assert (=> b!1382054 (= lt!459480 (forallContained!626 rules!2550 lambda!59353 (rule!4190 t1!34)))))

(declare-fun lt!459491 () Unit!20285)

(assert (=> b!1382054 (= lt!459491 (forallContained!626 rules!2550 lambda!59353 lt!459469))))

(declare-fun b!1382055 () Bool)

(declare-fun res!623235 () Bool)

(assert (=> b!1382055 (=> (not res!623235) (not e!883071))))

(declare-fun separableTokensPredicate!409 (LexerInterface!2126 Token!4524 Token!4524 List!14103) Bool)

(assert (=> b!1382055 (= res!623235 (not (separableTokensPredicate!409 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1382056 () Bool)

(assert (=> b!1382056 (= e!883071 e!883069)))

(declare-fun res!623228 () Bool)

(assert (=> b!1382056 (=> (not res!623228) (not e!883069))))

(declare-fun prefixMatch!254 (Regex!3745 List!14101) Bool)

(assert (=> b!1382056 (= res!623228 (prefixMatch!254 lt!459484 lt!459490))))

(declare-fun rulesRegex!314 (LexerInterface!2126 List!14103) Regex!3745)

(assert (=> b!1382056 (= lt!459484 (rulesRegex!314 thiss!19762 rules!2550))))

(assert (=> b!1382056 (= lt!459490 (++!3638 lt!459486 (Cons!14035 lt!459481 Nil!14035)))))

(assert (=> b!1382056 (= lt!459481 (apply!3491 lt!459475 0))))

(declare-fun list!5430 (BalanceConc!9184) List!14101)

(assert (=> b!1382056 (= lt!459486 (list!5430 lt!459470))))

(assert (=> b!1382056 (= lt!459470 (charsOf!1403 t1!34))))

(declare-fun b!1382057 () Bool)

(declare-fun res!623225 () Bool)

(assert (=> b!1382057 (=> res!623225 e!883091)))

(declare-fun lt!459474 () List!14102)

(declare-fun lt!459479 () BalanceConc!9184)

(declare-datatypes ((tuple2!13632 0))(
  ( (tuple2!13633 (_1!7702 List!14102) (_2!7702 List!14101)) )
))
(declare-fun lexList!640 (LexerInterface!2126 List!14103 List!14101) tuple2!13632)

(assert (=> b!1382057 (= res!623225 (not (= (lexList!640 thiss!19762 rules!2550 (list!5430 lt!459479)) (tuple2!13633 lt!459474 Nil!14035))))))

(declare-fun b!1382058 () Bool)

(declare-fun res!623253 () Bool)

(assert (=> b!1382058 (=> (not res!623253) (not e!883085))))

(declare-fun isEmpty!8469 (List!14103) Bool)

(assert (=> b!1382058 (= res!623253 (not (isEmpty!8469 rules!2550)))))

(declare-fun b!1382059 () Bool)

(declare-fun res!623234 () Bool)

(assert (=> b!1382059 (=> res!623234 e!883083)))

(assert (=> b!1382059 (= res!623234 (not (= (lexList!640 thiss!19762 rules!2550 (list!5430 lt!459487)) (tuple2!13633 lt!459489 Nil!14035))))))

(declare-fun b!1382060 () Bool)

(assert (=> b!1382060 (= e!883090 e!883091)))

(declare-fun res!623227 () Bool)

(assert (=> b!1382060 (=> res!623227 e!883091)))

(assert (=> b!1382060 (= res!623227 (not (= (list!5429 (_1!7701 lt!459492)) lt!459474)))))

(assert (=> b!1382060 (= lt!459474 (Cons!14036 t1!34 Nil!14036))))

(assert (=> b!1382060 (= lt!459492 (lex!951 thiss!19762 rules!2550 lt!459479))))

(assert (=> b!1382060 (= lt!459479 (print!890 thiss!19762 (singletonSeq!1070 t1!34)))))

(declare-fun getWitness!395 (List!14103 Int) Rule!4662)

(assert (=> b!1382060 (= lt!459469 (getWitness!395 rules!2550 lambda!59352))))

(declare-fun b!1382061 () Bool)

(declare-fun tp!396022 () Bool)

(assert (=> b!1382061 (= e!883092 (and (inv!21 (value!78916 t2!34)) e!883077 tp!396022))))

(assert (=> b!1382062 (= e!883078 e!883079)))

(declare-fun res!623254 () Bool)

(assert (=> b!1382062 (=> res!623254 e!883079)))

(declare-fun exists!507 (List!14104 Int) Bool)

(assert (=> b!1382062 (= res!623254 (not (exists!507 (map!3107 rules!2550 lambda!59350) lambda!59351)))))

(declare-fun lt!459485 () List!14104)

(assert (=> b!1382062 (exists!507 lt!459485 lambda!59351)))

(declare-fun lt!459483 () Unit!20285)

(declare-fun matchRGenUnionSpec!156 (Regex!3745 List!14104 List!14101) Unit!20285)

(assert (=> b!1382062 (= lt!459483 (matchRGenUnionSpec!156 lt!459484 lt!459485 lt!459478))))

(assert (=> b!1382062 (= lt!459485 (map!3107 rules!2550 lambda!59350))))

(declare-fun b!1382063 () Bool)

(declare-fun tp!396016 () Bool)

(assert (=> b!1382063 (= e!883075 (and e!883073 tp!396016))))

(declare-fun b!1382064 () Bool)

(declare-fun res!623237 () Bool)

(assert (=> b!1382064 (=> (not res!623237) (not e!883085))))

(assert (=> b!1382064 (= res!623237 (not (= (isSeparator!2431 (rule!4190 t1!34)) (isSeparator!2431 (rule!4190 t2!34)))))))

(declare-fun b!1382065 () Bool)

(assert (=> b!1382065 (= e!883083 e!883094)))

(declare-fun res!623248 () Bool)

(assert (=> b!1382065 (=> res!623248 e!883094)))

(declare-datatypes ((tuple2!13634 0))(
  ( (tuple2!13635 (_1!7703 Token!4524) (_2!7703 List!14101)) )
))
(declare-datatypes ((Option!2690 0))(
  ( (None!2689) (Some!2689 (v!21527 tuple2!13634)) )
))
(declare-fun maxPrefix!1100 (LexerInterface!2126 List!14103 List!14101) Option!2690)

(assert (=> b!1382065 (= res!623248 (not (= (maxPrefix!1100 thiss!19762 rules!2550 lt!459471) (Some!2689 (tuple2!13635 t2!34 Nil!14035)))))))

(assert (=> b!1382065 (= lt!459471 (list!5430 lt!459475))))

(declare-fun b!1382066 () Bool)

(declare-fun res!623249 () Bool)

(assert (=> b!1382066 (=> res!623249 e!883078)))

(assert (=> b!1382066 (= res!623249 (not (contains!2673 lt!459478 lt!459476)))))

(declare-fun b!1382067 () Bool)

(declare-fun res!623255 () Bool)

(assert (=> b!1382067 (=> (not res!623255) (not e!883085))))

(assert (=> b!1382067 (= res!623255 (rulesProduceIndividualToken!1095 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1382068 () Bool)

(declare-fun res!623257 () Bool)

(assert (=> b!1382068 (=> res!623257 e!883091)))

(assert (=> b!1382068 (= res!623257 (not (= (maxPrefix!1100 thiss!19762 rules!2550 lt!459486) (Some!2689 (tuple2!13635 t1!34 Nil!14035)))))))

(assert (=> b!1382069 (= e!883088 (and tp!396021 tp!396015))))

(assert (= (and start!125226 res!623241) b!1382058))

(assert (= (and b!1382058 res!623253) b!1382031))

(assert (= (and b!1382031 res!623229) b!1382035))

(assert (= (and b!1382035 res!623251) b!1382067))

(assert (= (and b!1382067 res!623255) b!1382064))

(assert (= (and b!1382064 res!623237) b!1382032))

(assert (= (and b!1382032 res!623226) b!1382033))

(assert (= (and b!1382033 res!623238) b!1382055))

(assert (= (and b!1382055 res!623235) b!1382056))

(assert (= (and b!1382056 res!623228) b!1382048))

(assert (= (and b!1382048 (not res!623231)) b!1382028))

(assert (= (and b!1382028 (not res!623244)) b!1382038))

(assert (= (and b!1382038 (not res!623245)) b!1382066))

(assert (= (and b!1382066 (not res!623249)) b!1382042))

(assert (= (and b!1382042 (not res!623230)) b!1382053))

(assert (= (and b!1382053 (not res!623224)) b!1382037))

(assert (= (and b!1382037 (not res!623256)) b!1382062))

(assert (= (and b!1382062 (not res!623254)) b!1382030))

(assert (= (and b!1382030 (not res!623247)) b!1382040))

(assert (= (and b!1382040 (not res!623252)) b!1382060))

(assert (= (and b!1382060 (not res!623227)) b!1382050))

(assert (= (and b!1382050 (not res!623233)) b!1382057))

(assert (= (and b!1382057 (not res!623225)) b!1382068))

(assert (= (and b!1382068 (not res!623257)) b!1382036))

(assert (= (and b!1382036 (not res!623250)) b!1382039))

(assert (= (and b!1382039 (not res!623236)) b!1382027))

(assert (= (and b!1382027 (not res!623246)) b!1382059))

(assert (= (and b!1382059 (not res!623234)) b!1382065))

(assert (= (and b!1382065 (not res!623248)) b!1382047))

(assert (= (and b!1382047 (not res!623242)) b!1382043))

(assert (= (and b!1382043 (not res!623243)) b!1382054))

(assert (= (and b!1382054 (not res!623232)) b!1382029))

(assert (= (and b!1382029 (not res!623239)) b!1382045))

(assert (= (and b!1382045 (not res!623240)) b!1382049))

(assert (= b!1382041 b!1382051))

(assert (= b!1382063 b!1382041))

(assert (= (and start!125226 ((_ is Cons!14037) rules!2550)) b!1382063))

(assert (= b!1382044 b!1382052))

(assert (= b!1382034 b!1382044))

(assert (= start!125226 b!1382034))

(assert (= b!1382046 b!1382069))

(assert (= b!1382061 b!1382046))

(assert (= start!125226 b!1382061))

(declare-fun m!1554815 () Bool)

(assert (=> b!1382029 m!1554815))

(declare-fun m!1554817 () Bool)

(assert (=> b!1382030 m!1554817))

(assert (=> b!1382030 m!1554817))

(declare-fun m!1554819 () Bool)

(assert (=> b!1382030 m!1554819))

(assert (=> b!1382030 m!1554817))

(assert (=> b!1382030 m!1554817))

(declare-fun m!1554821 () Bool)

(assert (=> b!1382030 m!1554821))

(declare-fun m!1554823 () Bool)

(assert (=> b!1382035 m!1554823))

(declare-fun m!1554825 () Bool)

(assert (=> b!1382038 m!1554825))

(declare-fun m!1554827 () Bool)

(assert (=> b!1382038 m!1554827))

(declare-fun m!1554829 () Bool)

(assert (=> b!1382046 m!1554829))

(declare-fun m!1554831 () Bool)

(assert (=> b!1382046 m!1554831))

(declare-fun m!1554833 () Bool)

(assert (=> b!1382047 m!1554833))

(declare-fun m!1554835 () Bool)

(assert (=> b!1382060 m!1554835))

(declare-fun m!1554837 () Bool)

(assert (=> b!1382060 m!1554837))

(declare-fun m!1554839 () Bool)

(assert (=> b!1382060 m!1554839))

(assert (=> b!1382060 m!1554837))

(declare-fun m!1554841 () Bool)

(assert (=> b!1382060 m!1554841))

(declare-fun m!1554843 () Bool)

(assert (=> b!1382060 m!1554843))

(declare-fun m!1554845 () Bool)

(assert (=> b!1382027 m!1554845))

(declare-fun m!1554847 () Bool)

(assert (=> b!1382032 m!1554847))

(declare-fun m!1554849 () Bool)

(assert (=> b!1382032 m!1554849))

(declare-fun m!1554851 () Bool)

(assert (=> b!1382053 m!1554851))

(declare-fun m!1554853 () Bool)

(assert (=> b!1382068 m!1554853))

(declare-fun m!1554855 () Bool)

(assert (=> b!1382054 m!1554855))

(declare-fun m!1554857 () Bool)

(assert (=> b!1382054 m!1554857))

(declare-fun m!1554859 () Bool)

(assert (=> b!1382054 m!1554859))

(declare-fun m!1554861 () Bool)

(assert (=> b!1382054 m!1554861))

(declare-fun m!1554863 () Bool)

(assert (=> start!125226 m!1554863))

(declare-fun m!1554865 () Bool)

(assert (=> start!125226 m!1554865))

(declare-fun m!1554867 () Bool)

(assert (=> b!1382055 m!1554867))

(declare-fun m!1554869 () Bool)

(assert (=> b!1382059 m!1554869))

(assert (=> b!1382059 m!1554869))

(declare-fun m!1554871 () Bool)

(assert (=> b!1382059 m!1554871))

(declare-fun m!1554873 () Bool)

(assert (=> b!1382045 m!1554873))

(assert (=> b!1382045 m!1554873))

(declare-fun m!1554875 () Bool)

(assert (=> b!1382045 m!1554875))

(declare-fun m!1554877 () Bool)

(assert (=> b!1382033 m!1554877))

(declare-fun m!1554879 () Bool)

(assert (=> b!1382044 m!1554879))

(declare-fun m!1554881 () Bool)

(assert (=> b!1382044 m!1554881))

(declare-fun m!1554883 () Bool)

(assert (=> b!1382067 m!1554883))

(declare-fun m!1554885 () Bool)

(assert (=> b!1382066 m!1554885))

(declare-fun m!1554887 () Bool)

(assert (=> b!1382028 m!1554887))

(assert (=> b!1382028 m!1554887))

(declare-fun m!1554889 () Bool)

(assert (=> b!1382028 m!1554889))

(declare-fun m!1554891 () Bool)

(assert (=> b!1382028 m!1554891))

(declare-fun m!1554893 () Bool)

(assert (=> b!1382050 m!1554893))

(declare-fun m!1554895 () Bool)

(assert (=> b!1382042 m!1554895))

(declare-fun m!1554897 () Bool)

(assert (=> b!1382065 m!1554897))

(declare-fun m!1554899 () Bool)

(assert (=> b!1382065 m!1554899))

(declare-fun m!1554901 () Bool)

(assert (=> b!1382048 m!1554901))

(assert (=> b!1382048 m!1554901))

(declare-fun m!1554903 () Bool)

(assert (=> b!1382048 m!1554903))

(declare-fun m!1554905 () Bool)

(assert (=> b!1382058 m!1554905))

(declare-fun m!1554907 () Bool)

(assert (=> b!1382041 m!1554907))

(declare-fun m!1554909 () Bool)

(assert (=> b!1382041 m!1554909))

(declare-fun m!1554911 () Bool)

(assert (=> b!1382034 m!1554911))

(declare-fun m!1554913 () Bool)

(assert (=> b!1382049 m!1554913))

(declare-fun m!1554915 () Bool)

(assert (=> b!1382040 m!1554915))

(assert (=> b!1382040 m!1554915))

(declare-fun m!1554917 () Bool)

(assert (=> b!1382040 m!1554917))

(declare-fun m!1554919 () Bool)

(assert (=> b!1382036 m!1554919))

(declare-fun m!1554921 () Bool)

(assert (=> b!1382039 m!1554921))

(declare-fun m!1554923 () Bool)

(assert (=> b!1382039 m!1554923))

(declare-fun m!1554925 () Bool)

(assert (=> b!1382039 m!1554925))

(assert (=> b!1382039 m!1554925))

(declare-fun m!1554927 () Bool)

(assert (=> b!1382039 m!1554927))

(declare-fun m!1554929 () Bool)

(assert (=> b!1382031 m!1554929))

(assert (=> b!1382062 m!1554817))

(declare-fun m!1554931 () Bool)

(assert (=> b!1382062 m!1554931))

(declare-fun m!1554933 () Bool)

(assert (=> b!1382062 m!1554933))

(assert (=> b!1382062 m!1554817))

(assert (=> b!1382062 m!1554817))

(declare-fun m!1554935 () Bool)

(assert (=> b!1382062 m!1554935))

(declare-fun m!1554937 () Bool)

(assert (=> b!1382056 m!1554937))

(declare-fun m!1554939 () Bool)

(assert (=> b!1382056 m!1554939))

(declare-fun m!1554941 () Bool)

(assert (=> b!1382056 m!1554941))

(declare-fun m!1554943 () Bool)

(assert (=> b!1382056 m!1554943))

(declare-fun m!1554945 () Bool)

(assert (=> b!1382056 m!1554945))

(declare-fun m!1554947 () Bool)

(assert (=> b!1382056 m!1554947))

(declare-fun m!1554949 () Bool)

(assert (=> b!1382037 m!1554949))

(declare-fun m!1554951 () Bool)

(assert (=> b!1382057 m!1554951))

(assert (=> b!1382057 m!1554951))

(declare-fun m!1554953 () Bool)

(assert (=> b!1382057 m!1554953))

(declare-fun m!1554955 () Bool)

(assert (=> b!1382061 m!1554955))

(declare-fun m!1554957 () Bool)

(assert (=> b!1382043 m!1554957))

(check-sat (not b_next!34311) (not b!1382034) (not b!1382061) (not b!1382041) (not b!1382057) (not b!1382050) (not b!1382046) (not b_next!34317) (not b!1382037) (not b!1382067) b_and!92631 (not b!1382039) (not b_next!34307) (not b!1382036) b_and!92627 (not b!1382066) (not b!1382042) (not b!1382033) b_and!92635 (not b!1382047) (not b!1382043) (not b!1382060) (not b!1382062) (not b!1382031) (not b!1382054) (not b!1382035) (not b!1382027) (not b!1382058) (not b!1382030) b_and!92629 (not b!1382053) (not b!1382029) (not b!1382044) (not b!1382065) (not b!1382049) (not b!1382048) (not start!125226) b_and!92633 (not b!1382028) (not b_next!34315) (not b_next!34313) (not b!1382038) (not b!1382056) (not b!1382045) (not b!1382040) (not b!1382055) (not b_next!34309) (not b!1382032) b_and!92637 (not b!1382059) (not b!1382068) (not b!1382063))
(check-sat (not b_next!34311) (not b_next!34307) b_and!92627 b_and!92635 b_and!92629 b_and!92633 (not b_next!34315) (not b_next!34313) (not b_next!34317) (not b_next!34309) b_and!92637 b_and!92631)
(get-model)

(declare-fun d!394662 () Bool)

(assert (=> d!394662 (= (inv!18373 (tag!2693 (rule!4190 t2!34))) (= (mod (str.len (value!78915 (tag!2693 (rule!4190 t2!34)))) 2) 0))))

(assert (=> b!1382046 d!394662))

(declare-fun d!394666 () Bool)

(declare-fun res!623288 () Bool)

(declare-fun e!883126 () Bool)

(assert (=> d!394666 (=> (not res!623288) (not e!883126))))

(declare-fun semiInverseModEq!937 (Int Int) Bool)

(assert (=> d!394666 (= res!623288 (semiInverseModEq!937 (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (toValue!3714 (transformation!2431 (rule!4190 t2!34)))))))

(assert (=> d!394666 (= (inv!18377 (transformation!2431 (rule!4190 t2!34))) e!883126)))

(declare-fun b!1382122 () Bool)

(declare-fun equivClasses!896 (Int Int) Bool)

(assert (=> b!1382122 (= e!883126 (equivClasses!896 (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (toValue!3714 (transformation!2431 (rule!4190 t2!34)))))))

(assert (= (and d!394666 res!623288) b!1382122))

(declare-fun m!1555007 () Bool)

(assert (=> d!394666 m!1555007))

(declare-fun m!1555009 () Bool)

(assert (=> b!1382122 m!1555009))

(assert (=> b!1382046 d!394666))

(declare-fun d!394674 () Bool)

(declare-fun lt!459528 () Bool)

(declare-fun e!883188 () Bool)

(assert (=> d!394674 (= lt!459528 e!883188)))

(declare-fun res!623337 () Bool)

(assert (=> d!394674 (=> (not res!623337) (not e!883188))))

(assert (=> d!394674 (= res!623337 (= (list!5429 (_1!7701 (lex!951 thiss!19762 rules!2550 (print!890 thiss!19762 (singletonSeq!1070 t2!34))))) (list!5429 (singletonSeq!1070 t2!34))))))

(declare-fun e!883187 () Bool)

(assert (=> d!394674 (= lt!459528 e!883187)))

(declare-fun res!623338 () Bool)

(assert (=> d!394674 (=> (not res!623338) (not e!883187))))

(declare-fun lt!459527 () tuple2!13630)

(declare-fun size!11516 (BalanceConc!9186) Int)

(assert (=> d!394674 (= res!623338 (= (size!11516 (_1!7701 lt!459527)) 1))))

(assert (=> d!394674 (= lt!459527 (lex!951 thiss!19762 rules!2550 (print!890 thiss!19762 (singletonSeq!1070 t2!34))))))

(assert (=> d!394674 (not (isEmpty!8469 rules!2550))))

(assert (=> d!394674 (= (rulesProduceIndividualToken!1095 thiss!19762 rules!2550 t2!34) lt!459528)))

(declare-fun b!1382211 () Bool)

(declare-fun res!623339 () Bool)

(assert (=> b!1382211 (=> (not res!623339) (not e!883187))))

(declare-fun apply!3493 (BalanceConc!9186 Int) Token!4524)

(assert (=> b!1382211 (= res!623339 (= (apply!3493 (_1!7701 lt!459527) 0) t2!34))))

(declare-fun b!1382212 () Bool)

(assert (=> b!1382212 (= e!883187 (isEmpty!8468 (_2!7701 lt!459527)))))

(declare-fun b!1382213 () Bool)

(assert (=> b!1382213 (= e!883188 (isEmpty!8468 (_2!7701 (lex!951 thiss!19762 rules!2550 (print!890 thiss!19762 (singletonSeq!1070 t2!34))))))))

(assert (= (and d!394674 res!623338) b!1382211))

(assert (= (and b!1382211 res!623339) b!1382212))

(assert (= (and d!394674 res!623337) b!1382213))

(assert (=> d!394674 m!1554925))

(assert (=> d!394674 m!1554927))

(assert (=> d!394674 m!1554905))

(declare-fun m!1555087 () Bool)

(assert (=> d!394674 m!1555087))

(assert (=> d!394674 m!1554925))

(declare-fun m!1555089 () Bool)

(assert (=> d!394674 m!1555089))

(assert (=> d!394674 m!1554927))

(declare-fun m!1555091 () Bool)

(assert (=> d!394674 m!1555091))

(assert (=> d!394674 m!1554925))

(declare-fun m!1555093 () Bool)

(assert (=> d!394674 m!1555093))

(declare-fun m!1555095 () Bool)

(assert (=> b!1382211 m!1555095))

(declare-fun m!1555097 () Bool)

(assert (=> b!1382212 m!1555097))

(assert (=> b!1382213 m!1554925))

(assert (=> b!1382213 m!1554925))

(assert (=> b!1382213 m!1554927))

(assert (=> b!1382213 m!1554927))

(assert (=> b!1382213 m!1555091))

(declare-fun m!1555099 () Bool)

(assert (=> b!1382213 m!1555099))

(assert (=> b!1382067 d!394674))

(declare-fun d!394696 () Bool)

(declare-fun lt!459531 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2048 (List!14101) (InoxSet C!7780))

(assert (=> d!394696 (= lt!459531 (select (content!2048 (usedCharacters!242 (regex!2431 (rule!4190 t1!34)))) lt!459476))))

(declare-fun e!883193 () Bool)

(assert (=> d!394696 (= lt!459531 e!883193)))

(declare-fun res!623345 () Bool)

(assert (=> d!394696 (=> (not res!623345) (not e!883193))))

(assert (=> d!394696 (= res!623345 ((_ is Cons!14035) (usedCharacters!242 (regex!2431 (rule!4190 t1!34)))))))

(assert (=> d!394696 (= (contains!2673 (usedCharacters!242 (regex!2431 (rule!4190 t1!34))) lt!459476) lt!459531)))

(declare-fun b!1382218 () Bool)

(declare-fun e!883194 () Bool)

(assert (=> b!1382218 (= e!883193 e!883194)))

(declare-fun res!623344 () Bool)

(assert (=> b!1382218 (=> res!623344 e!883194)))

(assert (=> b!1382218 (= res!623344 (= (h!19436 (usedCharacters!242 (regex!2431 (rule!4190 t1!34)))) lt!459476))))

(declare-fun b!1382219 () Bool)

(assert (=> b!1382219 (= e!883194 (contains!2673 (t!122054 (usedCharacters!242 (regex!2431 (rule!4190 t1!34)))) lt!459476))))

(assert (= (and d!394696 res!623345) b!1382218))

(assert (= (and b!1382218 (not res!623344)) b!1382219))

(assert (=> d!394696 m!1554873))

(declare-fun m!1555101 () Bool)

(assert (=> d!394696 m!1555101))

(declare-fun m!1555103 () Bool)

(assert (=> d!394696 m!1555103))

(declare-fun m!1555105 () Bool)

(assert (=> b!1382219 m!1555105))

(assert (=> b!1382045 d!394696))

(declare-fun d!394698 () Bool)

(declare-fun c!227423 () Bool)

(assert (=> d!394698 (= c!227423 (or ((_ is EmptyExpr!3745) (regex!2431 (rule!4190 t1!34))) ((_ is EmptyLang!3745) (regex!2431 (rule!4190 t1!34)))))))

(declare-fun e!883206 () List!14101)

(assert (=> d!394698 (= (usedCharacters!242 (regex!2431 (rule!4190 t1!34))) e!883206)))

(declare-fun b!1382236 () Bool)

(declare-fun e!883204 () List!14101)

(assert (=> b!1382236 (= e!883204 (Cons!14035 (c!227387 (regex!2431 (rule!4190 t1!34))) Nil!14035))))

(declare-fun bm!92516 () Bool)

(declare-fun call!92523 () List!14101)

(declare-fun call!92522 () List!14101)

(assert (=> bm!92516 (= call!92523 call!92522)))

(declare-fun b!1382237 () Bool)

(assert (=> b!1382237 (= e!883206 e!883204)))

(declare-fun c!227425 () Bool)

(assert (=> b!1382237 (= c!227425 ((_ is ElementMatch!3745) (regex!2431 (rule!4190 t1!34))))))

(declare-fun b!1382238 () Bool)

(assert (=> b!1382238 (= e!883206 Nil!14035)))

(declare-fun b!1382239 () Bool)

(declare-fun e!883205 () List!14101)

(declare-fun e!883203 () List!14101)

(assert (=> b!1382239 (= e!883205 e!883203)))

(declare-fun c!227426 () Bool)

(assert (=> b!1382239 (= c!227426 ((_ is Union!3745) (regex!2431 (rule!4190 t1!34))))))

(declare-fun b!1382240 () Bool)

(assert (=> b!1382240 (= e!883205 call!92522)))

(declare-fun bm!92517 () Bool)

(declare-fun call!92524 () List!14101)

(assert (=> bm!92517 (= call!92524 (usedCharacters!242 (ite c!227426 (regTwo!8003 (regex!2431 (rule!4190 t1!34))) (regOne!8002 (regex!2431 (rule!4190 t1!34))))))))

(declare-fun bm!92518 () Bool)

(declare-fun call!92521 () List!14101)

(assert (=> bm!92518 (= call!92521 (++!3638 (ite c!227426 call!92523 call!92524) (ite c!227426 call!92524 call!92523)))))

(declare-fun b!1382241 () Bool)

(declare-fun c!227424 () Bool)

(assert (=> b!1382241 (= c!227424 ((_ is Star!3745) (regex!2431 (rule!4190 t1!34))))))

(assert (=> b!1382241 (= e!883204 e!883205)))

(declare-fun bm!92519 () Bool)

(assert (=> bm!92519 (= call!92522 (usedCharacters!242 (ite c!227424 (reg!4074 (regex!2431 (rule!4190 t1!34))) (ite c!227426 (regOne!8003 (regex!2431 (rule!4190 t1!34))) (regTwo!8002 (regex!2431 (rule!4190 t1!34)))))))))

(declare-fun b!1382242 () Bool)

(assert (=> b!1382242 (= e!883203 call!92521)))

(declare-fun b!1382243 () Bool)

(assert (=> b!1382243 (= e!883203 call!92521)))

(assert (= (and d!394698 c!227423) b!1382238))

(assert (= (and d!394698 (not c!227423)) b!1382237))

(assert (= (and b!1382237 c!227425) b!1382236))

(assert (= (and b!1382237 (not c!227425)) b!1382241))

(assert (= (and b!1382241 c!227424) b!1382240))

(assert (= (and b!1382241 (not c!227424)) b!1382239))

(assert (= (and b!1382239 c!227426) b!1382242))

(assert (= (and b!1382239 (not c!227426)) b!1382243))

(assert (= (or b!1382242 b!1382243) bm!92516))

(assert (= (or b!1382242 b!1382243) bm!92517))

(assert (= (or b!1382242 b!1382243) bm!92518))

(assert (= (or b!1382240 bm!92516) bm!92519))

(declare-fun m!1555107 () Bool)

(assert (=> bm!92517 m!1555107))

(declare-fun m!1555109 () Bool)

(assert (=> bm!92518 m!1555109))

(declare-fun m!1555111 () Bool)

(assert (=> bm!92519 m!1555111))

(assert (=> b!1382045 d!394698))

(declare-fun d!394700 () Bool)

(declare-fun lt!459532 () Bool)

(assert (=> d!394700 (= lt!459532 (select (content!2048 lt!459478) lt!459476))))

(declare-fun e!883207 () Bool)

(assert (=> d!394700 (= lt!459532 e!883207)))

(declare-fun res!623347 () Bool)

(assert (=> d!394700 (=> (not res!623347) (not e!883207))))

(assert (=> d!394700 (= res!623347 ((_ is Cons!14035) lt!459478))))

(assert (=> d!394700 (= (contains!2673 lt!459478 lt!459476) lt!459532)))

(declare-fun b!1382244 () Bool)

(declare-fun e!883208 () Bool)

(assert (=> b!1382244 (= e!883207 e!883208)))

(declare-fun res!623346 () Bool)

(assert (=> b!1382244 (=> res!623346 e!883208)))

(assert (=> b!1382244 (= res!623346 (= (h!19436 lt!459478) lt!459476))))

(declare-fun b!1382245 () Bool)

(assert (=> b!1382245 (= e!883208 (contains!2673 (t!122054 lt!459478) lt!459476))))

(assert (= (and d!394700 res!623347) b!1382244))

(assert (= (and b!1382244 (not res!623346)) b!1382245))

(declare-fun m!1555113 () Bool)

(assert (=> d!394700 m!1555113))

(declare-fun m!1555115 () Bool)

(assert (=> d!394700 m!1555115))

(declare-fun m!1555117 () Bool)

(assert (=> b!1382245 m!1555117))

(assert (=> b!1382066 d!394700))

(declare-fun d!394702 () Bool)

(assert (=> d!394702 (= (inv!18373 (tag!2693 (rule!4190 t1!34))) (= (mod (str.len (value!78915 (tag!2693 (rule!4190 t1!34)))) 2) 0))))

(assert (=> b!1382044 d!394702))

(declare-fun d!394704 () Bool)

(declare-fun res!623348 () Bool)

(declare-fun e!883209 () Bool)

(assert (=> d!394704 (=> (not res!623348) (not e!883209))))

(assert (=> d!394704 (= res!623348 (semiInverseModEq!937 (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (toValue!3714 (transformation!2431 (rule!4190 t1!34)))))))

(assert (=> d!394704 (= (inv!18377 (transformation!2431 (rule!4190 t1!34))) e!883209)))

(declare-fun b!1382246 () Bool)

(assert (=> b!1382246 (= e!883209 (equivClasses!896 (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (toValue!3714 (transformation!2431 (rule!4190 t1!34)))))))

(assert (= (and d!394704 res!623348) b!1382246))

(declare-fun m!1555119 () Bool)

(assert (=> d!394704 m!1555119))

(declare-fun m!1555121 () Bool)

(assert (=> b!1382246 m!1555121))

(assert (=> b!1382044 d!394704))

(declare-fun b!1382276 () Bool)

(declare-fun res!623379 () Bool)

(declare-fun e!883224 () Bool)

(assert (=> b!1382276 (=> (not res!623379) (not e!883224))))

(declare-fun lt!459550 () Option!2690)

(declare-fun size!11517 (List!14101) Int)

(declare-fun get!4363 (Option!2690) tuple2!13634)

(assert (=> b!1382276 (= res!623379 (< (size!11517 (_2!7703 (get!4363 lt!459550))) (size!11517 lt!459471)))))

(declare-fun b!1382277 () Bool)

(declare-fun e!883225 () Option!2690)

(declare-fun call!92527 () Option!2690)

(assert (=> b!1382277 (= e!883225 call!92527)))

(declare-fun bm!92522 () Bool)

(declare-fun maxPrefixOneRule!620 (LexerInterface!2126 Rule!4662 List!14101) Option!2690)

(assert (=> bm!92522 (= call!92527 (maxPrefixOneRule!620 thiss!19762 (h!19438 rules!2550) lt!459471))))

(declare-fun b!1382278 () Bool)

(assert (=> b!1382278 (= e!883224 (contains!2672 rules!2550 (rule!4190 (_1!7703 (get!4363 lt!459550)))))))

(declare-fun b!1382279 () Bool)

(declare-fun res!623376 () Bool)

(assert (=> b!1382279 (=> (not res!623376) (not e!883224))))

(assert (=> b!1382279 (= res!623376 (matchR!1736 (regex!2431 (rule!4190 (_1!7703 (get!4363 lt!459550)))) (list!5430 (charsOf!1403 (_1!7703 (get!4363 lt!459550))))))))

(declare-fun b!1382280 () Bool)

(declare-fun e!883226 () Bool)

(assert (=> b!1382280 (= e!883226 e!883224)))

(declare-fun res!623377 () Bool)

(assert (=> b!1382280 (=> (not res!623377) (not e!883224))))

(declare-fun isDefined!2222 (Option!2690) Bool)

(assert (=> b!1382280 (= res!623377 (isDefined!2222 lt!459550))))

(declare-fun d!394706 () Bool)

(assert (=> d!394706 e!883226))

(declare-fun res!623380 () Bool)

(assert (=> d!394706 (=> res!623380 e!883226)))

(declare-fun isEmpty!8474 (Option!2690) Bool)

(assert (=> d!394706 (= res!623380 (isEmpty!8474 lt!459550))))

(assert (=> d!394706 (= lt!459550 e!883225)))

(declare-fun c!227429 () Bool)

(assert (=> d!394706 (= c!227429 (and ((_ is Cons!14037) rules!2550) ((_ is Nil!14037) (t!122056 rules!2550))))))

(declare-fun lt!459554 () Unit!20285)

(declare-fun lt!459553 () Unit!20285)

(assert (=> d!394706 (= lt!459554 lt!459553)))

(declare-fun isPrefix!1135 (List!14101 List!14101) Bool)

(assert (=> d!394706 (isPrefix!1135 lt!459471 lt!459471)))

(declare-fun lemmaIsPrefixRefl!794 (List!14101 List!14101) Unit!20285)

(assert (=> d!394706 (= lt!459553 (lemmaIsPrefixRefl!794 lt!459471 lt!459471))))

(declare-fun rulesValidInductive!777 (LexerInterface!2126 List!14103) Bool)

(assert (=> d!394706 (rulesValidInductive!777 thiss!19762 rules!2550)))

(assert (=> d!394706 (= (maxPrefix!1100 thiss!19762 rules!2550 lt!459471) lt!459550)))

(declare-fun b!1382281 () Bool)

(declare-fun res!623374 () Bool)

(assert (=> b!1382281 (=> (not res!623374) (not e!883224))))

(assert (=> b!1382281 (= res!623374 (= (++!3638 (list!5430 (charsOf!1403 (_1!7703 (get!4363 lt!459550)))) (_2!7703 (get!4363 lt!459550))) lt!459471))))

(declare-fun b!1382282 () Bool)

(declare-fun res!623378 () Bool)

(assert (=> b!1382282 (=> (not res!623378) (not e!883224))))

(declare-fun apply!3494 (TokenValueInjection!4702 BalanceConc!9184) TokenValue!2521)

(declare-fun seqFromList!1638 (List!14101) BalanceConc!9184)

(assert (=> b!1382282 (= res!623378 (= (value!78916 (_1!7703 (get!4363 lt!459550))) (apply!3494 (transformation!2431 (rule!4190 (_1!7703 (get!4363 lt!459550)))) (seqFromList!1638 (originalCharacters!3293 (_1!7703 (get!4363 lt!459550)))))))))

(declare-fun b!1382283 () Bool)

(declare-fun lt!459551 () Option!2690)

(declare-fun lt!459552 () Option!2690)

(assert (=> b!1382283 (= e!883225 (ite (and ((_ is None!2689) lt!459551) ((_ is None!2689) lt!459552)) None!2689 (ite ((_ is None!2689) lt!459552) lt!459551 (ite ((_ is None!2689) lt!459551) lt!459552 (ite (>= (size!11509 (_1!7703 (v!21527 lt!459551))) (size!11509 (_1!7703 (v!21527 lt!459552)))) lt!459551 lt!459552)))))))

(assert (=> b!1382283 (= lt!459551 call!92527)))

(assert (=> b!1382283 (= lt!459552 (maxPrefix!1100 thiss!19762 (t!122056 rules!2550) lt!459471))))

(declare-fun b!1382284 () Bool)

(declare-fun res!623375 () Bool)

(assert (=> b!1382284 (=> (not res!623375) (not e!883224))))

(assert (=> b!1382284 (= res!623375 (= (list!5430 (charsOf!1403 (_1!7703 (get!4363 lt!459550)))) (originalCharacters!3293 (_1!7703 (get!4363 lt!459550)))))))

(assert (= (and d!394706 c!227429) b!1382277))

(assert (= (and d!394706 (not c!227429)) b!1382283))

(assert (= (or b!1382277 b!1382283) bm!92522))

(assert (= (and d!394706 (not res!623380)) b!1382280))

(assert (= (and b!1382280 res!623377) b!1382284))

(assert (= (and b!1382284 res!623375) b!1382276))

(assert (= (and b!1382276 res!623379) b!1382281))

(assert (= (and b!1382281 res!623374) b!1382282))

(assert (= (and b!1382282 res!623378) b!1382279))

(assert (= (and b!1382279 res!623376) b!1382278))

(declare-fun m!1555141 () Bool)

(assert (=> b!1382280 m!1555141))

(declare-fun m!1555143 () Bool)

(assert (=> b!1382278 m!1555143))

(declare-fun m!1555145 () Bool)

(assert (=> b!1382278 m!1555145))

(declare-fun m!1555147 () Bool)

(assert (=> b!1382283 m!1555147))

(assert (=> b!1382282 m!1555143))

(declare-fun m!1555149 () Bool)

(assert (=> b!1382282 m!1555149))

(assert (=> b!1382282 m!1555149))

(declare-fun m!1555151 () Bool)

(assert (=> b!1382282 m!1555151))

(assert (=> b!1382279 m!1555143))

(declare-fun m!1555153 () Bool)

(assert (=> b!1382279 m!1555153))

(assert (=> b!1382279 m!1555153))

(declare-fun m!1555155 () Bool)

(assert (=> b!1382279 m!1555155))

(assert (=> b!1382279 m!1555155))

(declare-fun m!1555157 () Bool)

(assert (=> b!1382279 m!1555157))

(assert (=> b!1382284 m!1555143))

(assert (=> b!1382284 m!1555153))

(assert (=> b!1382284 m!1555153))

(assert (=> b!1382284 m!1555155))

(declare-fun m!1555159 () Bool)

(assert (=> d!394706 m!1555159))

(declare-fun m!1555161 () Bool)

(assert (=> d!394706 m!1555161))

(declare-fun m!1555163 () Bool)

(assert (=> d!394706 m!1555163))

(declare-fun m!1555165 () Bool)

(assert (=> d!394706 m!1555165))

(assert (=> b!1382281 m!1555143))

(assert (=> b!1382281 m!1555153))

(assert (=> b!1382281 m!1555153))

(assert (=> b!1382281 m!1555155))

(assert (=> b!1382281 m!1555155))

(declare-fun m!1555167 () Bool)

(assert (=> b!1382281 m!1555167))

(assert (=> b!1382276 m!1555143))

(declare-fun m!1555169 () Bool)

(assert (=> b!1382276 m!1555169))

(declare-fun m!1555171 () Bool)

(assert (=> b!1382276 m!1555171))

(declare-fun m!1555173 () Bool)

(assert (=> bm!92522 m!1555173))

(assert (=> b!1382065 d!394706))

(declare-fun d!394712 () Bool)

(declare-fun list!5433 (Conc!4622) List!14101)

(assert (=> d!394712 (= (list!5430 lt!459475) (list!5433 (c!227386 lt!459475)))))

(declare-fun bs!336627 () Bool)

(assert (= bs!336627 d!394712))

(declare-fun m!1555175 () Bool)

(assert (=> bs!336627 m!1555175))

(assert (=> b!1382065 d!394712))

(declare-fun d!394714 () Bool)

(declare-fun lt!459566 () Bool)

(declare-fun content!2049 (List!14103) (InoxSet Rule!4662))

(assert (=> d!394714 (= lt!459566 (select (content!2049 rules!2550) lt!459469))))

(declare-fun e!883240 () Bool)

(assert (=> d!394714 (= lt!459566 e!883240)))

(declare-fun res!623389 () Bool)

(assert (=> d!394714 (=> (not res!623389) (not e!883240))))

(assert (=> d!394714 (= res!623389 ((_ is Cons!14037) rules!2550))))

(assert (=> d!394714 (= (contains!2672 rules!2550 lt!459469) lt!459566)))

(declare-fun b!1382304 () Bool)

(declare-fun e!883241 () Bool)

(assert (=> b!1382304 (= e!883240 e!883241)))

(declare-fun res!623388 () Bool)

(assert (=> b!1382304 (=> res!623388 e!883241)))

(assert (=> b!1382304 (= res!623388 (= (h!19438 rules!2550) lt!459469))))

(declare-fun b!1382305 () Bool)

(assert (=> b!1382305 (= e!883241 (contains!2672 (t!122056 rules!2550) lt!459469))))

(assert (= (and d!394714 res!623389) b!1382304))

(assert (= (and b!1382304 (not res!623388)) b!1382305))

(declare-fun m!1555191 () Bool)

(assert (=> d!394714 m!1555191))

(declare-fun m!1555193 () Bool)

(assert (=> d!394714 m!1555193))

(declare-fun m!1555195 () Bool)

(assert (=> b!1382305 m!1555195))

(assert (=> b!1382043 d!394714))

(declare-fun d!394720 () Bool)

(declare-fun lt!459567 () Bool)

(assert (=> d!394720 (= lt!459567 (select (content!2048 lt!459490) lt!459481))))

(declare-fun e!883242 () Bool)

(assert (=> d!394720 (= lt!459567 e!883242)))

(declare-fun res!623391 () Bool)

(assert (=> d!394720 (=> (not res!623391) (not e!883242))))

(assert (=> d!394720 (= res!623391 ((_ is Cons!14035) lt!459490))))

(assert (=> d!394720 (= (contains!2673 lt!459490 lt!459481) lt!459567)))

(declare-fun b!1382306 () Bool)

(declare-fun e!883243 () Bool)

(assert (=> b!1382306 (= e!883242 e!883243)))

(declare-fun res!623390 () Bool)

(assert (=> b!1382306 (=> res!623390 e!883243)))

(assert (=> b!1382306 (= res!623390 (= (h!19436 lt!459490) lt!459481))))

(declare-fun b!1382307 () Bool)

(assert (=> b!1382307 (= e!883243 (contains!2673 (t!122054 lt!459490) lt!459481))))

(assert (= (and d!394720 res!623391) b!1382306))

(assert (= (and b!1382306 (not res!623390)) b!1382307))

(declare-fun m!1555197 () Bool)

(assert (=> d!394720 m!1555197))

(declare-fun m!1555199 () Bool)

(assert (=> d!394720 m!1555199))

(declare-fun m!1555201 () Bool)

(assert (=> b!1382307 m!1555201))

(assert (=> b!1382042 d!394720))

(declare-fun d!394722 () Bool)

(declare-fun lt!459570 () Bool)

(declare-fun content!2050 (List!14104) (InoxSet Regex!3745))

(assert (=> d!394722 (= lt!459570 (select (content!2050 (map!3107 rules!2550 lambda!59350)) lt!459473))))

(declare-fun e!883248 () Bool)

(assert (=> d!394722 (= lt!459570 e!883248)))

(declare-fun res!623396 () Bool)

(assert (=> d!394722 (=> (not res!623396) (not e!883248))))

(assert (=> d!394722 (= res!623396 ((_ is Cons!14038) (map!3107 rules!2550 lambda!59350)))))

(assert (=> d!394722 (= (contains!2671 (map!3107 rules!2550 lambda!59350) lt!459473) lt!459570)))

(declare-fun b!1382312 () Bool)

(declare-fun e!883249 () Bool)

(assert (=> b!1382312 (= e!883248 e!883249)))

(declare-fun res!623397 () Bool)

(assert (=> b!1382312 (=> res!623397 e!883249)))

(assert (=> b!1382312 (= res!623397 (= (h!19439 (map!3107 rules!2550 lambda!59350)) lt!459473))))

(declare-fun b!1382313 () Bool)

(assert (=> b!1382313 (= e!883249 (contains!2671 (t!122057 (map!3107 rules!2550 lambda!59350)) lt!459473))))

(assert (= (and d!394722 res!623396) b!1382312))

(assert (= (and b!1382312 (not res!623397)) b!1382313))

(assert (=> d!394722 m!1554817))

(declare-fun m!1555203 () Bool)

(assert (=> d!394722 m!1555203))

(declare-fun m!1555205 () Bool)

(assert (=> d!394722 m!1555205))

(declare-fun m!1555207 () Bool)

(assert (=> b!1382313 m!1555207))

(assert (=> b!1382030 d!394722))

(declare-fun d!394724 () Bool)

(declare-fun lt!459575 () List!14104)

(declare-fun size!11518 (List!14104) Int)

(declare-fun size!11519 (List!14103) Int)

(assert (=> d!394724 (= (size!11518 lt!459575) (size!11519 rules!2550))))

(declare-fun e!883266 () List!14104)

(assert (=> d!394724 (= lt!459575 e!883266)))

(declare-fun c!227444 () Bool)

(assert (=> d!394724 (= c!227444 ((_ is Nil!14037) rules!2550))))

(assert (=> d!394724 (= (map!3107 rules!2550 lambda!59350) lt!459575)))

(declare-fun b!1382346 () Bool)

(assert (=> b!1382346 (= e!883266 Nil!14038)))

(declare-fun b!1382347 () Bool)

(declare-fun $colon$colon!211 (List!14104 Regex!3745) List!14104)

(declare-fun dynLambda!6396 (Int Rule!4662) Regex!3745)

(assert (=> b!1382347 (= e!883266 ($colon$colon!211 (map!3107 (t!122056 rules!2550) lambda!59350) (dynLambda!6396 lambda!59350 (h!19438 rules!2550))))))

(assert (= (and d!394724 c!227444) b!1382346))

(assert (= (and d!394724 (not c!227444)) b!1382347))

(declare-fun b_lambda!42589 () Bool)

(assert (=> (not b_lambda!42589) (not b!1382347)))

(declare-fun m!1555209 () Bool)

(assert (=> d!394724 m!1555209))

(declare-fun m!1555211 () Bool)

(assert (=> d!394724 m!1555211))

(declare-fun m!1555213 () Bool)

(assert (=> b!1382347 m!1555213))

(declare-fun m!1555215 () Bool)

(assert (=> b!1382347 m!1555215))

(assert (=> b!1382347 m!1555213))

(assert (=> b!1382347 m!1555215))

(declare-fun m!1555217 () Bool)

(assert (=> b!1382347 m!1555217))

(assert (=> b!1382030 d!394724))

(declare-fun d!394726 () Bool)

(declare-fun e!883287 () Bool)

(assert (=> d!394726 e!883287))

(declare-fun res!623429 () Bool)

(assert (=> d!394726 (=> (not res!623429) (not e!883287))))

(declare-fun lt!459584 () Regex!3745)

(declare-fun dynLambda!6397 (Int Regex!3745) Bool)

(assert (=> d!394726 (= res!623429 (dynLambda!6397 lambda!59351 lt!459584))))

(declare-fun e!883285 () Regex!3745)

(assert (=> d!394726 (= lt!459584 e!883285)))

(declare-fun c!227452 () Bool)

(declare-fun e!883286 () Bool)

(assert (=> d!394726 (= c!227452 e!883286)))

(declare-fun res!623428 () Bool)

(assert (=> d!394726 (=> (not res!623428) (not e!883286))))

(assert (=> d!394726 (= res!623428 ((_ is Cons!14038) (map!3107 rules!2550 lambda!59350)))))

(assert (=> d!394726 (exists!507 (map!3107 rules!2550 lambda!59350) lambda!59351)))

(assert (=> d!394726 (= (getWitness!394 (map!3107 rules!2550 lambda!59350) lambda!59351) lt!459584)))

(declare-fun b!1382376 () Bool)

(assert (=> b!1382376 (= e!883286 (dynLambda!6397 lambda!59351 (h!19439 (map!3107 rules!2550 lambda!59350))))))

(declare-fun b!1382377 () Bool)

(declare-fun e!883284 () Regex!3745)

(assert (=> b!1382377 (= e!883284 (getWitness!394 (t!122057 (map!3107 rules!2550 lambda!59350)) lambda!59351))))

(declare-fun b!1382378 () Bool)

(declare-fun lt!459583 () Unit!20285)

(declare-fun Unit!20288 () Unit!20285)

(assert (=> b!1382378 (= lt!459583 Unit!20288)))

(assert (=> b!1382378 false))

(declare-fun head!2510 (List!14104) Regex!3745)

(assert (=> b!1382378 (= e!883284 (head!2510 (map!3107 rules!2550 lambda!59350)))))

(declare-fun b!1382379 () Bool)

(assert (=> b!1382379 (= e!883285 (h!19439 (map!3107 rules!2550 lambda!59350)))))

(declare-fun b!1382380 () Bool)

(assert (=> b!1382380 (= e!883285 e!883284)))

(declare-fun c!227453 () Bool)

(assert (=> b!1382380 (= c!227453 ((_ is Cons!14038) (map!3107 rules!2550 lambda!59350)))))

(declare-fun b!1382381 () Bool)

(assert (=> b!1382381 (= e!883287 (contains!2671 (map!3107 rules!2550 lambda!59350) lt!459584))))

(assert (= (and d!394726 res!623428) b!1382376))

(assert (= (and d!394726 c!227452) b!1382379))

(assert (= (and d!394726 (not c!227452)) b!1382380))

(assert (= (and b!1382380 c!227453) b!1382377))

(assert (= (and b!1382380 (not c!227453)) b!1382378))

(assert (= (and d!394726 res!623429) b!1382381))

(declare-fun b_lambda!42591 () Bool)

(assert (=> (not b_lambda!42591) (not d!394726)))

(declare-fun b_lambda!42593 () Bool)

(assert (=> (not b_lambda!42593) (not b!1382376)))

(declare-fun m!1555233 () Bool)

(assert (=> b!1382376 m!1555233))

(assert (=> b!1382378 m!1554817))

(declare-fun m!1555235 () Bool)

(assert (=> b!1382378 m!1555235))

(assert (=> b!1382381 m!1554817))

(declare-fun m!1555237 () Bool)

(assert (=> b!1382381 m!1555237))

(declare-fun m!1555239 () Bool)

(assert (=> b!1382377 m!1555239))

(declare-fun m!1555241 () Bool)

(assert (=> d!394726 m!1555241))

(assert (=> d!394726 m!1554817))

(assert (=> d!394726 m!1554935))

(assert (=> b!1382030 d!394726))

(declare-fun b!1382421 () Bool)

(declare-fun e!883311 () Bool)

(declare-fun head!2511 (List!14101) C!7780)

(assert (=> b!1382421 (= e!883311 (= (head!2511 lt!459471) (c!227387 (regex!2431 (rule!4190 t2!34)))))))

(declare-fun b!1382422 () Bool)

(declare-fun e!883309 () Bool)

(declare-fun e!883313 () Bool)

(assert (=> b!1382422 (= e!883309 e!883313)))

(declare-fun c!227462 () Bool)

(assert (=> b!1382422 (= c!227462 ((_ is EmptyLang!3745) (regex!2431 (rule!4190 t2!34))))))

(declare-fun b!1382423 () Bool)

(declare-fun res!623457 () Bool)

(assert (=> b!1382423 (=> (not res!623457) (not e!883311))))

(declare-fun call!92533 () Bool)

(assert (=> b!1382423 (= res!623457 (not call!92533))))

(declare-fun b!1382424 () Bool)

(declare-fun e!883310 () Bool)

(declare-fun nullable!1209 (Regex!3745) Bool)

(assert (=> b!1382424 (= e!883310 (nullable!1209 (regex!2431 (rule!4190 t2!34))))))

(declare-fun b!1382425 () Bool)

(declare-fun res!623453 () Bool)

(declare-fun e!883312 () Bool)

(assert (=> b!1382425 (=> res!623453 e!883312)))

(assert (=> b!1382425 (= res!623453 (not ((_ is ElementMatch!3745) (regex!2431 (rule!4190 t2!34)))))))

(assert (=> b!1382425 (= e!883313 e!883312)))

(declare-fun b!1382426 () Bool)

(declare-fun res!623456 () Bool)

(assert (=> b!1382426 (=> res!623456 e!883312)))

(assert (=> b!1382426 (= res!623456 e!883311)))

(declare-fun res!623451 () Bool)

(assert (=> b!1382426 (=> (not res!623451) (not e!883311))))

(declare-fun lt!459593 () Bool)

(assert (=> b!1382426 (= res!623451 lt!459593)))

(declare-fun b!1382427 () Bool)

(declare-fun e!883307 () Bool)

(assert (=> b!1382427 (= e!883312 e!883307)))

(declare-fun res!623458 () Bool)

(assert (=> b!1382427 (=> (not res!623458) (not e!883307))))

(assert (=> b!1382427 (= res!623458 (not lt!459593))))

(declare-fun b!1382429 () Bool)

(declare-fun e!883308 () Bool)

(assert (=> b!1382429 (= e!883307 e!883308)))

(declare-fun res!623452 () Bool)

(assert (=> b!1382429 (=> res!623452 e!883308)))

(assert (=> b!1382429 (= res!623452 call!92533)))

(declare-fun b!1382430 () Bool)

(assert (=> b!1382430 (= e!883308 (not (= (head!2511 lt!459471) (c!227387 (regex!2431 (rule!4190 t2!34))))))))

(declare-fun b!1382431 () Bool)

(declare-fun res!623454 () Bool)

(assert (=> b!1382431 (=> (not res!623454) (not e!883311))))

(declare-fun isEmpty!8475 (List!14101) Bool)

(declare-fun tail!2006 (List!14101) List!14101)

(assert (=> b!1382431 (= res!623454 (isEmpty!8475 (tail!2006 lt!459471)))))

(declare-fun b!1382432 () Bool)

(assert (=> b!1382432 (= e!883309 (= lt!459593 call!92533))))

(declare-fun b!1382433 () Bool)

(declare-fun res!623455 () Bool)

(assert (=> b!1382433 (=> res!623455 e!883308)))

(assert (=> b!1382433 (= res!623455 (not (isEmpty!8475 (tail!2006 lt!459471))))))

(declare-fun b!1382434 () Bool)

(assert (=> b!1382434 (= e!883313 (not lt!459593))))

(declare-fun bm!92528 () Bool)

(assert (=> bm!92528 (= call!92533 (isEmpty!8475 lt!459471))))

(declare-fun d!394730 () Bool)

(assert (=> d!394730 e!883309))

(declare-fun c!227460 () Bool)

(assert (=> d!394730 (= c!227460 ((_ is EmptyExpr!3745) (regex!2431 (rule!4190 t2!34))))))

(assert (=> d!394730 (= lt!459593 e!883310)))

(declare-fun c!227461 () Bool)

(assert (=> d!394730 (= c!227461 (isEmpty!8475 lt!459471))))

(assert (=> d!394730 (validRegex!1629 (regex!2431 (rule!4190 t2!34)))))

(assert (=> d!394730 (= (matchR!1736 (regex!2431 (rule!4190 t2!34)) lt!459471) lt!459593)))

(declare-fun b!1382428 () Bool)

(declare-fun derivativeStep!967 (Regex!3745 C!7780) Regex!3745)

(assert (=> b!1382428 (= e!883310 (matchR!1736 (derivativeStep!967 (regex!2431 (rule!4190 t2!34)) (head!2511 lt!459471)) (tail!2006 lt!459471)))))

(assert (= (and d!394730 c!227461) b!1382424))

(assert (= (and d!394730 (not c!227461)) b!1382428))

(assert (= (and d!394730 c!227460) b!1382432))

(assert (= (and d!394730 (not c!227460)) b!1382422))

(assert (= (and b!1382422 c!227462) b!1382434))

(assert (= (and b!1382422 (not c!227462)) b!1382425))

(assert (= (and b!1382425 (not res!623453)) b!1382426))

(assert (= (and b!1382426 res!623451) b!1382423))

(assert (= (and b!1382423 res!623457) b!1382431))

(assert (= (and b!1382431 res!623454) b!1382421))

(assert (= (and b!1382426 (not res!623456)) b!1382427))

(assert (= (and b!1382427 res!623458) b!1382429))

(assert (= (and b!1382429 (not res!623452)) b!1382433))

(assert (= (and b!1382433 (not res!623455)) b!1382430))

(assert (= (or b!1382432 b!1382423 b!1382429) bm!92528))

(declare-fun m!1555271 () Bool)

(assert (=> b!1382430 m!1555271))

(declare-fun m!1555273 () Bool)

(assert (=> bm!92528 m!1555273))

(assert (=> b!1382428 m!1555271))

(assert (=> b!1382428 m!1555271))

(declare-fun m!1555279 () Bool)

(assert (=> b!1382428 m!1555279))

(declare-fun m!1555281 () Bool)

(assert (=> b!1382428 m!1555281))

(assert (=> b!1382428 m!1555279))

(assert (=> b!1382428 m!1555281))

(declare-fun m!1555287 () Bool)

(assert (=> b!1382428 m!1555287))

(assert (=> b!1382431 m!1555281))

(assert (=> b!1382431 m!1555281))

(declare-fun m!1555289 () Bool)

(assert (=> b!1382431 m!1555289))

(declare-fun m!1555291 () Bool)

(assert (=> b!1382424 m!1555291))

(assert (=> b!1382421 m!1555271))

(assert (=> d!394730 m!1555273))

(declare-fun m!1555295 () Bool)

(assert (=> d!394730 m!1555295))

(assert (=> b!1382433 m!1555281))

(assert (=> b!1382433 m!1555281))

(assert (=> b!1382433 m!1555289))

(assert (=> b!1382029 d!394730))

(declare-fun d!394750 () Bool)

(declare-fun lt!459600 () Bool)

(assert (=> d!394750 (= lt!459600 (isEmpty!8475 (list!5430 (_2!7701 lt!459492))))))

(declare-fun isEmpty!8476 (Conc!4622) Bool)

(assert (=> d!394750 (= lt!459600 (isEmpty!8476 (c!227386 (_2!7701 lt!459492))))))

(assert (=> d!394750 (= (isEmpty!8468 (_2!7701 lt!459492)) lt!459600)))

(declare-fun bs!336638 () Bool)

(assert (= bs!336638 d!394750))

(declare-fun m!1555315 () Bool)

(assert (=> bs!336638 m!1555315))

(assert (=> bs!336638 m!1555315))

(declare-fun m!1555317 () Bool)

(assert (=> bs!336638 m!1555317))

(declare-fun m!1555319 () Bool)

(assert (=> bs!336638 m!1555319))

(assert (=> b!1382050 d!394750))

(declare-fun b!1382465 () Bool)

(declare-fun res!623473 () Bool)

(declare-fun e!883330 () Bool)

(assert (=> b!1382465 (=> (not res!623473) (not e!883330))))

(declare-fun lt!459606 () List!14101)

(assert (=> b!1382465 (= res!623473 (= (size!11517 lt!459606) (+ (size!11517 lt!459490) (size!11517 (getSuffix!591 lt!459478 lt!459490)))))))

(declare-fun d!394756 () Bool)

(assert (=> d!394756 e!883330))

(declare-fun res!623474 () Bool)

(assert (=> d!394756 (=> (not res!623474) (not e!883330))))

(assert (=> d!394756 (= res!623474 (= (content!2048 lt!459606) ((_ map or) (content!2048 lt!459490) (content!2048 (getSuffix!591 lt!459478 lt!459490)))))))

(declare-fun e!883329 () List!14101)

(assert (=> d!394756 (= lt!459606 e!883329)))

(declare-fun c!227470 () Bool)

(assert (=> d!394756 (= c!227470 ((_ is Nil!14035) lt!459490))))

(assert (=> d!394756 (= (++!3638 lt!459490 (getSuffix!591 lt!459478 lt!459490)) lt!459606)))

(declare-fun b!1382466 () Bool)

(assert (=> b!1382466 (= e!883330 (or (not (= (getSuffix!591 lt!459478 lt!459490) Nil!14035)) (= lt!459606 lt!459490)))))

(declare-fun b!1382464 () Bool)

(assert (=> b!1382464 (= e!883329 (Cons!14035 (h!19436 lt!459490) (++!3638 (t!122054 lt!459490) (getSuffix!591 lt!459478 lt!459490))))))

(declare-fun b!1382463 () Bool)

(assert (=> b!1382463 (= e!883329 (getSuffix!591 lt!459478 lt!459490))))

(assert (= (and d!394756 c!227470) b!1382463))

(assert (= (and d!394756 (not c!227470)) b!1382464))

(assert (= (and d!394756 res!623474) b!1382465))

(assert (= (and b!1382465 res!623473) b!1382466))

(declare-fun m!1555323 () Bool)

(assert (=> b!1382465 m!1555323))

(declare-fun m!1555325 () Bool)

(assert (=> b!1382465 m!1555325))

(assert (=> b!1382465 m!1554887))

(declare-fun m!1555327 () Bool)

(assert (=> b!1382465 m!1555327))

(declare-fun m!1555329 () Bool)

(assert (=> d!394756 m!1555329))

(assert (=> d!394756 m!1555197))

(assert (=> d!394756 m!1554887))

(declare-fun m!1555331 () Bool)

(assert (=> d!394756 m!1555331))

(assert (=> b!1382464 m!1554887))

(declare-fun m!1555333 () Bool)

(assert (=> b!1382464 m!1555333))

(assert (=> b!1382028 d!394756))

(declare-fun d!394760 () Bool)

(declare-fun lt!459612 () List!14101)

(assert (=> d!394760 (= (++!3638 lt!459490 lt!459612) lt!459478)))

(declare-fun e!883336 () List!14101)

(assert (=> d!394760 (= lt!459612 e!883336)))

(declare-fun c!227473 () Bool)

(assert (=> d!394760 (= c!227473 ((_ is Cons!14035) lt!459490))))

(assert (=> d!394760 (>= (size!11517 lt!459478) (size!11517 lt!459490))))

(assert (=> d!394760 (= (getSuffix!591 lt!459478 lt!459490) lt!459612)))

(declare-fun b!1382474 () Bool)

(assert (=> b!1382474 (= e!883336 (getSuffix!591 (tail!2006 lt!459478) (t!122054 lt!459490)))))

(declare-fun b!1382475 () Bool)

(assert (=> b!1382475 (= e!883336 lt!459478)))

(assert (= (and d!394760 c!227473) b!1382474))

(assert (= (and d!394760 (not c!227473)) b!1382475))

(declare-fun m!1555339 () Bool)

(assert (=> d!394760 m!1555339))

(declare-fun m!1555341 () Bool)

(assert (=> d!394760 m!1555341))

(assert (=> d!394760 m!1555325))

(declare-fun m!1555343 () Bool)

(assert (=> b!1382474 m!1555343))

(assert (=> b!1382474 m!1555343))

(declare-fun m!1555345 () Bool)

(assert (=> b!1382474 m!1555345))

(assert (=> b!1382028 d!394760))

(declare-fun d!394764 () Bool)

(declare-fun lt!459615 () List!14101)

(declare-fun dynLambda!6398 (Int List!14101) Bool)

(assert (=> d!394764 (dynLambda!6398 lambda!59349 lt!459615)))

(declare-fun choose!8479 (Int) List!14101)

(assert (=> d!394764 (= lt!459615 (choose!8479 lambda!59349))))

(assert (=> d!394764 (Exists!895 lambda!59349)))

(assert (=> d!394764 (= (pickWitness!198 lambda!59349) lt!459615)))

(declare-fun b_lambda!42603 () Bool)

(assert (=> (not b_lambda!42603) (not d!394764)))

(declare-fun bs!336639 () Bool)

(assert (= bs!336639 d!394764))

(declare-fun m!1555357 () Bool)

(assert (=> bs!336639 m!1555357))

(declare-fun m!1555361 () Bool)

(assert (=> bs!336639 m!1555361))

(assert (=> bs!336639 m!1554901))

(assert (=> b!1382028 d!394764))

(declare-fun b!1382512 () Bool)

(declare-fun e!883361 () Bool)

(declare-fun e!883365 () Bool)

(assert (=> b!1382512 (= e!883361 e!883365)))

(declare-fun c!227485 () Bool)

(assert (=> b!1382512 (= c!227485 ((_ is Union!3745) (regex!2431 (rule!4190 t1!34))))))

(declare-fun b!1382513 () Bool)

(declare-fun e!883364 () Bool)

(assert (=> b!1382513 (= e!883361 e!883364)))

(declare-fun res!623497 () Bool)

(assert (=> b!1382513 (= res!623497 (not (nullable!1209 (reg!4074 (regex!2431 (rule!4190 t1!34))))))))

(assert (=> b!1382513 (=> (not res!623497) (not e!883364))))

(declare-fun b!1382514 () Bool)

(declare-fun e!883363 () Bool)

(declare-fun e!883362 () Bool)

(assert (=> b!1382514 (= e!883363 e!883362)))

(declare-fun res!623494 () Bool)

(assert (=> b!1382514 (=> (not res!623494) (not e!883362))))

(declare-fun call!92543 () Bool)

(assert (=> b!1382514 (= res!623494 call!92543)))

(declare-fun b!1382515 () Bool)

(declare-fun res!623495 () Bool)

(assert (=> b!1382515 (=> res!623495 e!883363)))

(assert (=> b!1382515 (= res!623495 (not ((_ is Concat!6267) (regex!2431 (rule!4190 t1!34)))))))

(assert (=> b!1382515 (= e!883365 e!883363)))

(declare-fun bm!92536 () Bool)

(assert (=> bm!92536 (= call!92543 (validRegex!1629 (ite c!227485 (regOne!8003 (regex!2431 (rule!4190 t1!34))) (regOne!8002 (regex!2431 (rule!4190 t1!34))))))))

(declare-fun b!1382516 () Bool)

(declare-fun res!623498 () Bool)

(declare-fun e!883360 () Bool)

(assert (=> b!1382516 (=> (not res!623498) (not e!883360))))

(assert (=> b!1382516 (= res!623498 call!92543)))

(assert (=> b!1382516 (= e!883365 e!883360)))

(declare-fun c!227484 () Bool)

(declare-fun call!92542 () Bool)

(declare-fun bm!92537 () Bool)

(assert (=> bm!92537 (= call!92542 (validRegex!1629 (ite c!227484 (reg!4074 (regex!2431 (rule!4190 t1!34))) (ite c!227485 (regTwo!8003 (regex!2431 (rule!4190 t1!34))) (regTwo!8002 (regex!2431 (rule!4190 t1!34)))))))))

(declare-fun b!1382517 () Bool)

(declare-fun call!92541 () Bool)

(assert (=> b!1382517 (= e!883362 call!92541)))

(declare-fun b!1382518 () Bool)

(assert (=> b!1382518 (= e!883360 call!92541)))

(declare-fun d!394768 () Bool)

(declare-fun res!623496 () Bool)

(declare-fun e!883366 () Bool)

(assert (=> d!394768 (=> res!623496 e!883366)))

(assert (=> d!394768 (= res!623496 ((_ is ElementMatch!3745) (regex!2431 (rule!4190 t1!34))))))

(assert (=> d!394768 (= (validRegex!1629 (regex!2431 (rule!4190 t1!34))) e!883366)))

(declare-fun b!1382519 () Bool)

(assert (=> b!1382519 (= e!883364 call!92542)))

(declare-fun b!1382520 () Bool)

(assert (=> b!1382520 (= e!883366 e!883361)))

(assert (=> b!1382520 (= c!227484 ((_ is Star!3745) (regex!2431 (rule!4190 t1!34))))))

(declare-fun bm!92538 () Bool)

(assert (=> bm!92538 (= call!92541 call!92542)))

(assert (= (and d!394768 (not res!623496)) b!1382520))

(assert (= (and b!1382520 c!227484) b!1382513))

(assert (= (and b!1382520 (not c!227484)) b!1382512))

(assert (= (and b!1382513 res!623497) b!1382519))

(assert (= (and b!1382512 c!227485) b!1382516))

(assert (= (and b!1382512 (not c!227485)) b!1382515))

(assert (= (and b!1382516 res!623498) b!1382518))

(assert (= (and b!1382515 (not res!623495)) b!1382514))

(assert (= (and b!1382514 res!623494) b!1382517))

(assert (= (or b!1382516 b!1382514) bm!92536))

(assert (= (or b!1382518 b!1382517) bm!92538))

(assert (= (or b!1382519 bm!92538) bm!92537))

(declare-fun m!1555377 () Bool)

(assert (=> b!1382513 m!1555377))

(declare-fun m!1555379 () Bool)

(assert (=> bm!92536 m!1555379))

(declare-fun m!1555381 () Bool)

(assert (=> bm!92537 m!1555381))

(assert (=> b!1382049 d!394768))

(declare-fun d!394772 () Bool)

(declare-fun lt!459619 () Bool)

(assert (=> d!394772 (= lt!459619 (isEmpty!8475 (list!5430 (_2!7701 lt!459472))))))

(assert (=> d!394772 (= lt!459619 (isEmpty!8476 (c!227386 (_2!7701 lt!459472))))))

(assert (=> d!394772 (= (isEmpty!8468 (_2!7701 lt!459472)) lt!459619)))

(declare-fun bs!336640 () Bool)

(assert (= bs!336640 d!394772))

(declare-fun m!1555383 () Bool)

(assert (=> bs!336640 m!1555383))

(assert (=> bs!336640 m!1555383))

(declare-fun m!1555385 () Bool)

(assert (=> bs!336640 m!1555385))

(declare-fun m!1555387 () Bool)

(assert (=> bs!336640 m!1555387))

(assert (=> b!1382027 d!394772))

(declare-fun d!394774 () Bool)

(declare-fun choose!8480 (Int) Bool)

(assert (=> d!394774 (= (Exists!895 lambda!59349) (choose!8480 lambda!59349))))

(declare-fun bs!336641 () Bool)

(assert (= bs!336641 d!394774))

(declare-fun m!1555389 () Bool)

(assert (=> bs!336641 m!1555389))

(assert (=> b!1382048 d!394774))

(declare-fun bs!336644 () Bool)

(declare-fun d!394776 () Bool)

(assert (= bs!336644 (and d!394776 b!1382048)))

(declare-fun lambda!59375 () Int)

(assert (=> bs!336644 (= lambda!59375 lambda!59349)))

(assert (=> d!394776 true))

(assert (=> d!394776 true))

(assert (=> d!394776 (Exists!895 lambda!59375)))

(declare-fun lt!459628 () Unit!20285)

(declare-fun choose!8481 (Regex!3745 List!14101) Unit!20285)

(assert (=> d!394776 (= lt!459628 (choose!8481 lt!459484 lt!459490))))

(assert (=> d!394776 (validRegex!1629 lt!459484)))

(assert (=> d!394776 (= (lemmaPrefixMatchThenExistsStringThatMatches!213 lt!459484 lt!459490) lt!459628)))

(declare-fun bs!336645 () Bool)

(assert (= bs!336645 d!394776))

(declare-fun m!1555431 () Bool)

(assert (=> bs!336645 m!1555431))

(declare-fun m!1555433 () Bool)

(assert (=> bs!336645 m!1555433))

(declare-fun m!1555435 () Bool)

(assert (=> bs!336645 m!1555435))

(assert (=> b!1382048 d!394776))

(declare-fun d!394786 () Bool)

(declare-fun lt!459631 () Bool)

(assert (=> d!394786 (= lt!459631 (select (content!2049 rules!2550) (rule!4190 t2!34)))))

(declare-fun e!883382 () Bool)

(assert (=> d!394786 (= lt!459631 e!883382)))

(declare-fun res!623514 () Bool)

(assert (=> d!394786 (=> (not res!623514) (not e!883382))))

(assert (=> d!394786 (= res!623514 ((_ is Cons!14037) rules!2550))))

(assert (=> d!394786 (= (contains!2672 rules!2550 (rule!4190 t2!34)) lt!459631)))

(declare-fun b!1382547 () Bool)

(declare-fun e!883383 () Bool)

(assert (=> b!1382547 (= e!883382 e!883383)))

(declare-fun res!623513 () Bool)

(assert (=> b!1382547 (=> res!623513 e!883383)))

(assert (=> b!1382547 (= res!623513 (= (h!19438 rules!2550) (rule!4190 t2!34)))))

(declare-fun b!1382548 () Bool)

(assert (=> b!1382548 (= e!883383 (contains!2672 (t!122056 rules!2550) (rule!4190 t2!34)))))

(assert (= (and d!394786 res!623514) b!1382547))

(assert (= (and b!1382547 (not res!623513)) b!1382548))

(assert (=> d!394786 m!1555191))

(declare-fun m!1555437 () Bool)

(assert (=> d!394786 m!1555437))

(declare-fun m!1555439 () Bool)

(assert (=> b!1382548 m!1555439))

(assert (=> b!1382047 d!394786))

(declare-fun d!394788 () Bool)

(declare-fun res!623519 () Bool)

(declare-fun e!883387 () Bool)

(assert (=> d!394788 (=> (not res!623519) (not e!883387))))

(assert (=> d!394788 (= res!623519 (not (isEmpty!8475 (originalCharacters!3293 t1!34))))))

(assert (=> d!394788 (= (inv!18376 t1!34) e!883387)))

(declare-fun b!1382555 () Bool)

(declare-fun res!623520 () Bool)

(assert (=> b!1382555 (=> (not res!623520) (not e!883387))))

(declare-fun dynLambda!6399 (Int TokenValue!2521) BalanceConc!9184)

(assert (=> b!1382555 (= res!623520 (= (originalCharacters!3293 t1!34) (list!5430 (dynLambda!6399 (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (value!78916 t1!34)))))))

(declare-fun b!1382556 () Bool)

(assert (=> b!1382556 (= e!883387 (= (size!11509 t1!34) (size!11517 (originalCharacters!3293 t1!34))))))

(assert (= (and d!394788 res!623519) b!1382555))

(assert (= (and b!1382555 res!623520) b!1382556))

(declare-fun b_lambda!42607 () Bool)

(assert (=> (not b_lambda!42607) (not b!1382555)))

(declare-fun t!122074 () Bool)

(declare-fun tb!72565 () Bool)

(assert (=> (and b!1382069 (= (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (toChars!3573 (transformation!2431 (rule!4190 t1!34)))) t!122074) tb!72565))

(declare-fun b!1382567 () Bool)

(declare-fun e!883396 () Bool)

(declare-fun tp!396031 () Bool)

(declare-fun inv!18380 (Conc!4622) Bool)

(assert (=> b!1382567 (= e!883396 (and (inv!18380 (c!227386 (dynLambda!6399 (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (value!78916 t1!34)))) tp!396031))))

(declare-fun result!88140 () Bool)

(declare-fun inv!18381 (BalanceConc!9184) Bool)

(assert (=> tb!72565 (= result!88140 (and (inv!18381 (dynLambda!6399 (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (value!78916 t1!34))) e!883396))))

(assert (= tb!72565 b!1382567))

(declare-fun m!1555461 () Bool)

(assert (=> b!1382567 m!1555461))

(declare-fun m!1555463 () Bool)

(assert (=> tb!72565 m!1555463))

(assert (=> b!1382555 t!122074))

(declare-fun b_and!92657 () Bool)

(assert (= b_and!92629 (and (=> t!122074 result!88140) b_and!92657)))

(declare-fun tb!72567 () Bool)

(declare-fun t!122076 () Bool)

(assert (=> (and b!1382051 (= (toChars!3573 (transformation!2431 (h!19438 rules!2550))) (toChars!3573 (transformation!2431 (rule!4190 t1!34)))) t!122076) tb!72567))

(declare-fun result!88144 () Bool)

(assert (= result!88144 result!88140))

(assert (=> b!1382555 t!122076))

(declare-fun b_and!92659 () Bool)

(assert (= b_and!92633 (and (=> t!122076 result!88144) b_and!92659)))

(declare-fun t!122078 () Bool)

(declare-fun tb!72569 () Bool)

(assert (=> (and b!1382052 (= (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (toChars!3573 (transformation!2431 (rule!4190 t1!34)))) t!122078) tb!72569))

(declare-fun result!88146 () Bool)

(assert (= result!88146 result!88140))

(assert (=> b!1382555 t!122078))

(declare-fun b_and!92661 () Bool)

(assert (= b_and!92637 (and (=> t!122078 result!88146) b_and!92661)))

(declare-fun m!1555469 () Bool)

(assert (=> d!394788 m!1555469))

(declare-fun m!1555471 () Bool)

(assert (=> b!1382555 m!1555471))

(assert (=> b!1382555 m!1555471))

(declare-fun m!1555473 () Bool)

(assert (=> b!1382555 m!1555473))

(declare-fun m!1555475 () Bool)

(assert (=> b!1382556 m!1555475))

(assert (=> start!125226 d!394788))

(declare-fun d!394802 () Bool)

(declare-fun res!623528 () Bool)

(declare-fun e!883398 () Bool)

(assert (=> d!394802 (=> (not res!623528) (not e!883398))))

(assert (=> d!394802 (= res!623528 (not (isEmpty!8475 (originalCharacters!3293 t2!34))))))

(assert (=> d!394802 (= (inv!18376 t2!34) e!883398)))

(declare-fun b!1382569 () Bool)

(declare-fun res!623529 () Bool)

(assert (=> b!1382569 (=> (not res!623529) (not e!883398))))

(assert (=> b!1382569 (= res!623529 (= (originalCharacters!3293 t2!34) (list!5430 (dynLambda!6399 (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (value!78916 t2!34)))))))

(declare-fun b!1382570 () Bool)

(assert (=> b!1382570 (= e!883398 (= (size!11509 t2!34) (size!11517 (originalCharacters!3293 t2!34))))))

(assert (= (and d!394802 res!623528) b!1382569))

(assert (= (and b!1382569 res!623529) b!1382570))

(declare-fun b_lambda!42609 () Bool)

(assert (=> (not b_lambda!42609) (not b!1382569)))

(declare-fun t!122080 () Bool)

(declare-fun tb!72571 () Bool)

(assert (=> (and b!1382069 (= (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (toChars!3573 (transformation!2431 (rule!4190 t2!34)))) t!122080) tb!72571))

(declare-fun b!1382571 () Bool)

(declare-fun e!883399 () Bool)

(declare-fun tp!396032 () Bool)

(assert (=> b!1382571 (= e!883399 (and (inv!18380 (c!227386 (dynLambda!6399 (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (value!78916 t2!34)))) tp!396032))))

(declare-fun result!88148 () Bool)

(assert (=> tb!72571 (= result!88148 (and (inv!18381 (dynLambda!6399 (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (value!78916 t2!34))) e!883399))))

(assert (= tb!72571 b!1382571))

(declare-fun m!1555477 () Bool)

(assert (=> b!1382571 m!1555477))

(declare-fun m!1555479 () Bool)

(assert (=> tb!72571 m!1555479))

(assert (=> b!1382569 t!122080))

(declare-fun b_and!92663 () Bool)

(assert (= b_and!92657 (and (=> t!122080 result!88148) b_and!92663)))

(declare-fun tb!72573 () Bool)

(declare-fun t!122082 () Bool)

(assert (=> (and b!1382051 (= (toChars!3573 (transformation!2431 (h!19438 rules!2550))) (toChars!3573 (transformation!2431 (rule!4190 t2!34)))) t!122082) tb!72573))

(declare-fun result!88150 () Bool)

(assert (= result!88150 result!88148))

(assert (=> b!1382569 t!122082))

(declare-fun b_and!92665 () Bool)

(assert (= b_and!92659 (and (=> t!122082 result!88150) b_and!92665)))

(declare-fun tb!72575 () Bool)

(declare-fun t!122084 () Bool)

(assert (=> (and b!1382052 (= (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (toChars!3573 (transformation!2431 (rule!4190 t2!34)))) t!122084) tb!72575))

(declare-fun result!88152 () Bool)

(assert (= result!88152 result!88148))

(assert (=> b!1382569 t!122084))

(declare-fun b_and!92667 () Bool)

(assert (= b_and!92661 (and (=> t!122084 result!88152) b_and!92667)))

(declare-fun m!1555481 () Bool)

(assert (=> d!394802 m!1555481))

(declare-fun m!1555483 () Bool)

(assert (=> b!1382569 m!1555483))

(assert (=> b!1382569 m!1555483))

(declare-fun m!1555485 () Bool)

(assert (=> b!1382569 m!1555485))

(declare-fun m!1555487 () Bool)

(assert (=> b!1382570 m!1555487))

(assert (=> start!125226 d!394802))

(declare-fun b!1382572 () Bool)

(declare-fun res!623535 () Bool)

(declare-fun e!883400 () Bool)

(assert (=> b!1382572 (=> (not res!623535) (not e!883400))))

(declare-fun lt!459640 () Option!2690)

(assert (=> b!1382572 (= res!623535 (< (size!11517 (_2!7703 (get!4363 lt!459640))) (size!11517 lt!459486)))))

(declare-fun b!1382573 () Bool)

(declare-fun e!883401 () Option!2690)

(declare-fun call!92545 () Option!2690)

(assert (=> b!1382573 (= e!883401 call!92545)))

(declare-fun bm!92540 () Bool)

(assert (=> bm!92540 (= call!92545 (maxPrefixOneRule!620 thiss!19762 (h!19438 rules!2550) lt!459486))))

(declare-fun b!1382574 () Bool)

(assert (=> b!1382574 (= e!883400 (contains!2672 rules!2550 (rule!4190 (_1!7703 (get!4363 lt!459640)))))))

(declare-fun b!1382575 () Bool)

(declare-fun res!623532 () Bool)

(assert (=> b!1382575 (=> (not res!623532) (not e!883400))))

(assert (=> b!1382575 (= res!623532 (matchR!1736 (regex!2431 (rule!4190 (_1!7703 (get!4363 lt!459640)))) (list!5430 (charsOf!1403 (_1!7703 (get!4363 lt!459640))))))))

(declare-fun b!1382576 () Bool)

(declare-fun e!883402 () Bool)

(assert (=> b!1382576 (= e!883402 e!883400)))

(declare-fun res!623533 () Bool)

(assert (=> b!1382576 (=> (not res!623533) (not e!883400))))

(assert (=> b!1382576 (= res!623533 (isDefined!2222 lt!459640))))

(declare-fun d!394804 () Bool)

(assert (=> d!394804 e!883402))

(declare-fun res!623536 () Bool)

(assert (=> d!394804 (=> res!623536 e!883402)))

(assert (=> d!394804 (= res!623536 (isEmpty!8474 lt!459640))))

(assert (=> d!394804 (= lt!459640 e!883401)))

(declare-fun c!227493 () Bool)

(assert (=> d!394804 (= c!227493 (and ((_ is Cons!14037) rules!2550) ((_ is Nil!14037) (t!122056 rules!2550))))))

(declare-fun lt!459644 () Unit!20285)

(declare-fun lt!459643 () Unit!20285)

(assert (=> d!394804 (= lt!459644 lt!459643)))

(assert (=> d!394804 (isPrefix!1135 lt!459486 lt!459486)))

(assert (=> d!394804 (= lt!459643 (lemmaIsPrefixRefl!794 lt!459486 lt!459486))))

(assert (=> d!394804 (rulesValidInductive!777 thiss!19762 rules!2550)))

(assert (=> d!394804 (= (maxPrefix!1100 thiss!19762 rules!2550 lt!459486) lt!459640)))

(declare-fun b!1382577 () Bool)

(declare-fun res!623530 () Bool)

(assert (=> b!1382577 (=> (not res!623530) (not e!883400))))

(assert (=> b!1382577 (= res!623530 (= (++!3638 (list!5430 (charsOf!1403 (_1!7703 (get!4363 lt!459640)))) (_2!7703 (get!4363 lt!459640))) lt!459486))))

(declare-fun b!1382578 () Bool)

(declare-fun res!623534 () Bool)

(assert (=> b!1382578 (=> (not res!623534) (not e!883400))))

(assert (=> b!1382578 (= res!623534 (= (value!78916 (_1!7703 (get!4363 lt!459640))) (apply!3494 (transformation!2431 (rule!4190 (_1!7703 (get!4363 lt!459640)))) (seqFromList!1638 (originalCharacters!3293 (_1!7703 (get!4363 lt!459640)))))))))

(declare-fun b!1382579 () Bool)

(declare-fun lt!459641 () Option!2690)

(declare-fun lt!459642 () Option!2690)

(assert (=> b!1382579 (= e!883401 (ite (and ((_ is None!2689) lt!459641) ((_ is None!2689) lt!459642)) None!2689 (ite ((_ is None!2689) lt!459642) lt!459641 (ite ((_ is None!2689) lt!459641) lt!459642 (ite (>= (size!11509 (_1!7703 (v!21527 lt!459641))) (size!11509 (_1!7703 (v!21527 lt!459642)))) lt!459641 lt!459642)))))))

(assert (=> b!1382579 (= lt!459641 call!92545)))

(assert (=> b!1382579 (= lt!459642 (maxPrefix!1100 thiss!19762 (t!122056 rules!2550) lt!459486))))

(declare-fun b!1382580 () Bool)

(declare-fun res!623531 () Bool)

(assert (=> b!1382580 (=> (not res!623531) (not e!883400))))

(assert (=> b!1382580 (= res!623531 (= (list!5430 (charsOf!1403 (_1!7703 (get!4363 lt!459640)))) (originalCharacters!3293 (_1!7703 (get!4363 lt!459640)))))))

(assert (= (and d!394804 c!227493) b!1382573))

(assert (= (and d!394804 (not c!227493)) b!1382579))

(assert (= (or b!1382573 b!1382579) bm!92540))

(assert (= (and d!394804 (not res!623536)) b!1382576))

(assert (= (and b!1382576 res!623533) b!1382580))

(assert (= (and b!1382580 res!623531) b!1382572))

(assert (= (and b!1382572 res!623535) b!1382577))

(assert (= (and b!1382577 res!623530) b!1382578))

(assert (= (and b!1382578 res!623534) b!1382575))

(assert (= (and b!1382575 res!623532) b!1382574))

(declare-fun m!1555489 () Bool)

(assert (=> b!1382576 m!1555489))

(declare-fun m!1555491 () Bool)

(assert (=> b!1382574 m!1555491))

(declare-fun m!1555493 () Bool)

(assert (=> b!1382574 m!1555493))

(declare-fun m!1555495 () Bool)

(assert (=> b!1382579 m!1555495))

(assert (=> b!1382578 m!1555491))

(declare-fun m!1555497 () Bool)

(assert (=> b!1382578 m!1555497))

(assert (=> b!1382578 m!1555497))

(declare-fun m!1555499 () Bool)

(assert (=> b!1382578 m!1555499))

(assert (=> b!1382575 m!1555491))

(declare-fun m!1555501 () Bool)

(assert (=> b!1382575 m!1555501))

(assert (=> b!1382575 m!1555501))

(declare-fun m!1555503 () Bool)

(assert (=> b!1382575 m!1555503))

(assert (=> b!1382575 m!1555503))

(declare-fun m!1555505 () Bool)

(assert (=> b!1382575 m!1555505))

(assert (=> b!1382580 m!1555491))

(assert (=> b!1382580 m!1555501))

(assert (=> b!1382580 m!1555501))

(assert (=> b!1382580 m!1555503))

(declare-fun m!1555507 () Bool)

(assert (=> d!394804 m!1555507))

(declare-fun m!1555509 () Bool)

(assert (=> d!394804 m!1555509))

(declare-fun m!1555511 () Bool)

(assert (=> d!394804 m!1555511))

(assert (=> d!394804 m!1555165))

(assert (=> b!1382577 m!1555491))

(assert (=> b!1382577 m!1555501))

(assert (=> b!1382577 m!1555501))

(assert (=> b!1382577 m!1555503))

(assert (=> b!1382577 m!1555503))

(declare-fun m!1555513 () Bool)

(assert (=> b!1382577 m!1555513))

(assert (=> b!1382572 m!1555491))

(declare-fun m!1555515 () Bool)

(assert (=> b!1382572 m!1555515))

(declare-fun m!1555517 () Bool)

(assert (=> b!1382572 m!1555517))

(declare-fun m!1555519 () Bool)

(assert (=> bm!92540 m!1555519))

(assert (=> b!1382068 d!394804))

(declare-fun b!1382591 () Bool)

(declare-fun e!883409 () Bool)

(declare-fun e!883410 () Bool)

(assert (=> b!1382591 (= e!883409 e!883410)))

(declare-fun res!623539 () Bool)

(declare-fun lt!459653 () tuple2!13632)

(assert (=> b!1382591 (= res!623539 (< (size!11517 (_2!7702 lt!459653)) (size!11517 (list!5430 lt!459479))))))

(assert (=> b!1382591 (=> (not res!623539) (not e!883410))))

(declare-fun b!1382592 () Bool)

(declare-fun e!883411 () tuple2!13632)

(assert (=> b!1382592 (= e!883411 (tuple2!13633 Nil!14036 (list!5430 lt!459479)))))

(declare-fun b!1382593 () Bool)

(assert (=> b!1382593 (= e!883409 (= (_2!7702 lt!459653) (list!5430 lt!459479)))))

(declare-fun b!1382595 () Bool)

(declare-fun isEmpty!8478 (List!14102) Bool)

(assert (=> b!1382595 (= e!883410 (not (isEmpty!8478 (_1!7702 lt!459653))))))

(declare-fun d!394806 () Bool)

(assert (=> d!394806 e!883409))

(declare-fun c!227498 () Bool)

(declare-fun size!11520 (List!14102) Int)

(assert (=> d!394806 (= c!227498 (> (size!11520 (_1!7702 lt!459653)) 0))))

(assert (=> d!394806 (= lt!459653 e!883411)))

(declare-fun c!227499 () Bool)

(declare-fun lt!459652 () Option!2690)

(assert (=> d!394806 (= c!227499 ((_ is Some!2689) lt!459652))))

(assert (=> d!394806 (= lt!459652 (maxPrefix!1100 thiss!19762 rules!2550 (list!5430 lt!459479)))))

(assert (=> d!394806 (= (lexList!640 thiss!19762 rules!2550 (list!5430 lt!459479)) lt!459653)))

(declare-fun b!1382594 () Bool)

(declare-fun lt!459651 () tuple2!13632)

(assert (=> b!1382594 (= e!883411 (tuple2!13633 (Cons!14036 (_1!7703 (v!21527 lt!459652)) (_1!7702 lt!459651)) (_2!7702 lt!459651)))))

(assert (=> b!1382594 (= lt!459651 (lexList!640 thiss!19762 rules!2550 (_2!7703 (v!21527 lt!459652))))))

(assert (= (and d!394806 c!227499) b!1382594))

(assert (= (and d!394806 (not c!227499)) b!1382592))

(assert (= (and d!394806 c!227498) b!1382591))

(assert (= (and d!394806 (not c!227498)) b!1382593))

(assert (= (and b!1382591 res!623539) b!1382595))

(declare-fun m!1555521 () Bool)

(assert (=> b!1382591 m!1555521))

(assert (=> b!1382591 m!1554951))

(declare-fun m!1555523 () Bool)

(assert (=> b!1382591 m!1555523))

(declare-fun m!1555525 () Bool)

(assert (=> b!1382595 m!1555525))

(declare-fun m!1555527 () Bool)

(assert (=> d!394806 m!1555527))

(assert (=> d!394806 m!1554951))

(declare-fun m!1555529 () Bool)

(assert (=> d!394806 m!1555529))

(declare-fun m!1555531 () Bool)

(assert (=> b!1382594 m!1555531))

(assert (=> b!1382057 d!394806))

(declare-fun d!394808 () Bool)

(assert (=> d!394808 (= (list!5430 lt!459479) (list!5433 (c!227386 lt!459479)))))

(declare-fun bs!336648 () Bool)

(assert (= bs!336648 d!394808))

(declare-fun m!1555533 () Bool)

(assert (=> bs!336648 m!1555533))

(assert (=> b!1382057 d!394808))

(declare-fun d!394810 () Bool)

(declare-fun lt!459665 () Bool)

(declare-fun e!883415 () Bool)

(assert (=> d!394810 (= lt!459665 e!883415)))

(declare-fun res!623540 () Bool)

(assert (=> d!394810 (=> (not res!623540) (not e!883415))))

(assert (=> d!394810 (= res!623540 (= (list!5429 (_1!7701 (lex!951 thiss!19762 rules!2550 (print!890 thiss!19762 (singletonSeq!1070 t1!34))))) (list!5429 (singletonSeq!1070 t1!34))))))

(declare-fun e!883414 () Bool)

(assert (=> d!394810 (= lt!459665 e!883414)))

(declare-fun res!623541 () Bool)

(assert (=> d!394810 (=> (not res!623541) (not e!883414))))

(declare-fun lt!459662 () tuple2!13630)

(assert (=> d!394810 (= res!623541 (= (size!11516 (_1!7701 lt!459662)) 1))))

(assert (=> d!394810 (= lt!459662 (lex!951 thiss!19762 rules!2550 (print!890 thiss!19762 (singletonSeq!1070 t1!34))))))

(assert (=> d!394810 (not (isEmpty!8469 rules!2550))))

(assert (=> d!394810 (= (rulesProduceIndividualToken!1095 thiss!19762 rules!2550 t1!34) lt!459665)))

(declare-fun b!1382600 () Bool)

(declare-fun res!623542 () Bool)

(assert (=> b!1382600 (=> (not res!623542) (not e!883414))))

(assert (=> b!1382600 (= res!623542 (= (apply!3493 (_1!7701 lt!459662) 0) t1!34))))

(declare-fun b!1382601 () Bool)

(assert (=> b!1382601 (= e!883414 (isEmpty!8468 (_2!7701 lt!459662)))))

(declare-fun b!1382602 () Bool)

(assert (=> b!1382602 (= e!883415 (isEmpty!8468 (_2!7701 (lex!951 thiss!19762 rules!2550 (print!890 thiss!19762 (singletonSeq!1070 t1!34))))))))

(assert (= (and d!394810 res!623541) b!1382600))

(assert (= (and b!1382600 res!623542) b!1382601))

(assert (= (and d!394810 res!623540) b!1382602))

(assert (=> d!394810 m!1554837))

(assert (=> d!394810 m!1554839))

(assert (=> d!394810 m!1554905))

(declare-fun m!1555535 () Bool)

(assert (=> d!394810 m!1555535))

(assert (=> d!394810 m!1554837))

(declare-fun m!1555537 () Bool)

(assert (=> d!394810 m!1555537))

(assert (=> d!394810 m!1554839))

(declare-fun m!1555539 () Bool)

(assert (=> d!394810 m!1555539))

(assert (=> d!394810 m!1554837))

(declare-fun m!1555541 () Bool)

(assert (=> d!394810 m!1555541))

(declare-fun m!1555543 () Bool)

(assert (=> b!1382600 m!1555543))

(declare-fun m!1555545 () Bool)

(assert (=> b!1382601 m!1555545))

(assert (=> b!1382602 m!1554837))

(assert (=> b!1382602 m!1554837))

(assert (=> b!1382602 m!1554839))

(assert (=> b!1382602 m!1554839))

(assert (=> b!1382602 m!1555539))

(declare-fun m!1555547 () Bool)

(assert (=> b!1382602 m!1555547))

(assert (=> b!1382035 d!394810))

(declare-fun b!1382615 () Bool)

(declare-fun res!623553 () Bool)

(declare-fun e!883421 () Bool)

(assert (=> b!1382615 (=> (not res!623553) (not e!883421))))

(declare-fun lt!459666 () List!14101)

(assert (=> b!1382615 (= res!623553 (= (size!11517 lt!459666) (+ (size!11517 lt!459486) (size!11517 (Cons!14035 lt!459481 Nil!14035)))))))

(declare-fun d!394812 () Bool)

(assert (=> d!394812 e!883421))

(declare-fun res!623554 () Bool)

(assert (=> d!394812 (=> (not res!623554) (not e!883421))))

(assert (=> d!394812 (= res!623554 (= (content!2048 lt!459666) ((_ map or) (content!2048 lt!459486) (content!2048 (Cons!14035 lt!459481 Nil!14035)))))))

(declare-fun e!883420 () List!14101)

(assert (=> d!394812 (= lt!459666 e!883420)))

(declare-fun c!227502 () Bool)

(assert (=> d!394812 (= c!227502 ((_ is Nil!14035) lt!459486))))

(assert (=> d!394812 (= (++!3638 lt!459486 (Cons!14035 lt!459481 Nil!14035)) lt!459666)))

(declare-fun b!1382616 () Bool)

(assert (=> b!1382616 (= e!883421 (or (not (= (Cons!14035 lt!459481 Nil!14035) Nil!14035)) (= lt!459666 lt!459486)))))

(declare-fun b!1382614 () Bool)

(assert (=> b!1382614 (= e!883420 (Cons!14035 (h!19436 lt!459486) (++!3638 (t!122054 lt!459486) (Cons!14035 lt!459481 Nil!14035))))))

(declare-fun b!1382613 () Bool)

(assert (=> b!1382613 (= e!883420 (Cons!14035 lt!459481 Nil!14035))))

(assert (= (and d!394812 c!227502) b!1382613))

(assert (= (and d!394812 (not c!227502)) b!1382614))

(assert (= (and d!394812 res!623554) b!1382615))

(assert (= (and b!1382615 res!623553) b!1382616))

(declare-fun m!1555549 () Bool)

(assert (=> b!1382615 m!1555549))

(assert (=> b!1382615 m!1555517))

(declare-fun m!1555551 () Bool)

(assert (=> b!1382615 m!1555551))

(declare-fun m!1555553 () Bool)

(assert (=> d!394812 m!1555553))

(declare-fun m!1555555 () Bool)

(assert (=> d!394812 m!1555555))

(declare-fun m!1555557 () Bool)

(assert (=> d!394812 m!1555557))

(declare-fun m!1555559 () Bool)

(assert (=> b!1382614 m!1555559))

(assert (=> b!1382056 d!394812))

(declare-fun d!394814 () Bool)

(assert (=> d!394814 (= (list!5430 lt!459470) (list!5433 (c!227386 lt!459470)))))

(declare-fun bs!336649 () Bool)

(assert (= bs!336649 d!394814))

(declare-fun m!1555561 () Bool)

(assert (=> bs!336649 m!1555561))

(assert (=> b!1382056 d!394814))

(declare-fun d!394816 () Bool)

(declare-fun lt!459674 () C!7780)

(declare-fun apply!3498 (List!14101 Int) C!7780)

(assert (=> d!394816 (= lt!459674 (apply!3498 (list!5430 lt!459475) 0))))

(declare-fun apply!3499 (Conc!4622 Int) C!7780)

(assert (=> d!394816 (= lt!459674 (apply!3499 (c!227386 lt!459475) 0))))

(declare-fun e!883427 () Bool)

(assert (=> d!394816 e!883427))

(declare-fun res!623568 () Bool)

(assert (=> d!394816 (=> (not res!623568) (not e!883427))))

(assert (=> d!394816 (= res!623568 (<= 0 0))))

(assert (=> d!394816 (= (apply!3491 lt!459475 0) lt!459674)))

(declare-fun b!1382632 () Bool)

(assert (=> b!1382632 (= e!883427 (< 0 (size!11510 lt!459475)))))

(assert (= (and d!394816 res!623568) b!1382632))

(assert (=> d!394816 m!1554899))

(assert (=> d!394816 m!1554899))

(declare-fun m!1555563 () Bool)

(assert (=> d!394816 m!1555563))

(declare-fun m!1555565 () Bool)

(assert (=> d!394816 m!1555565))

(assert (=> b!1382632 m!1554847))

(assert (=> b!1382056 d!394816))

(declare-fun d!394818 () Bool)

(declare-fun lt!459677 () BalanceConc!9184)

(assert (=> d!394818 (= (list!5430 lt!459677) (originalCharacters!3293 t1!34))))

(assert (=> d!394818 (= lt!459677 (dynLambda!6399 (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (value!78916 t1!34)))))

(assert (=> d!394818 (= (charsOf!1403 t1!34) lt!459677)))

(declare-fun b_lambda!42611 () Bool)

(assert (=> (not b_lambda!42611) (not d!394818)))

(assert (=> d!394818 t!122074))

(declare-fun b_and!92669 () Bool)

(assert (= b_and!92663 (and (=> t!122074 result!88140) b_and!92669)))

(assert (=> d!394818 t!122076))

(declare-fun b_and!92671 () Bool)

(assert (= b_and!92665 (and (=> t!122076 result!88144) b_and!92671)))

(assert (=> d!394818 t!122078))

(declare-fun b_and!92673 () Bool)

(assert (= b_and!92667 (and (=> t!122078 result!88146) b_and!92673)))

(declare-fun m!1555595 () Bool)

(assert (=> d!394818 m!1555595))

(assert (=> d!394818 m!1555471))

(assert (=> b!1382056 d!394818))

(declare-fun d!394820 () Bool)

(declare-fun c!227506 () Bool)

(assert (=> d!394820 (= c!227506 (isEmpty!8475 lt!459490))))

(declare-fun e!883432 () Bool)

(assert (=> d!394820 (= (prefixMatch!254 lt!459484 lt!459490) e!883432)))

(declare-fun b!1382639 () Bool)

(declare-fun lostCause!343 (Regex!3745) Bool)

(assert (=> b!1382639 (= e!883432 (not (lostCause!343 lt!459484)))))

(declare-fun b!1382640 () Bool)

(assert (=> b!1382640 (= e!883432 (prefixMatch!254 (derivativeStep!967 lt!459484 (head!2511 lt!459490)) (tail!2006 lt!459490)))))

(assert (= (and d!394820 c!227506) b!1382639))

(assert (= (and d!394820 (not c!227506)) b!1382640))

(declare-fun m!1555607 () Bool)

(assert (=> d!394820 m!1555607))

(declare-fun m!1555609 () Bool)

(assert (=> b!1382639 m!1555609))

(declare-fun m!1555611 () Bool)

(assert (=> b!1382640 m!1555611))

(assert (=> b!1382640 m!1555611))

(declare-fun m!1555613 () Bool)

(assert (=> b!1382640 m!1555613))

(declare-fun m!1555615 () Bool)

(assert (=> b!1382640 m!1555615))

(assert (=> b!1382640 m!1555613))

(assert (=> b!1382640 m!1555615))

(declare-fun m!1555617 () Bool)

(assert (=> b!1382640 m!1555617))

(assert (=> b!1382056 d!394820))

(declare-fun bs!336650 () Bool)

(declare-fun d!394826 () Bool)

(assert (= bs!336650 (and d!394826 b!1382062)))

(declare-fun lambda!59378 () Int)

(assert (=> bs!336650 (= lambda!59378 lambda!59350)))

(declare-fun lt!459681 () Unit!20285)

(declare-fun lemma!137 (List!14103 LexerInterface!2126 List!14103) Unit!20285)

(assert (=> d!394826 (= lt!459681 (lemma!137 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!145 (List!14104) Regex!3745)

(assert (=> d!394826 (= (rulesRegex!314 thiss!19762 rules!2550) (generalisedUnion!145 (map!3107 rules!2550 lambda!59378)))))

(declare-fun bs!336651 () Bool)

(assert (= bs!336651 d!394826))

(declare-fun m!1555619 () Bool)

(assert (=> bs!336651 m!1555619))

(declare-fun m!1555621 () Bool)

(assert (=> bs!336651 m!1555621))

(assert (=> bs!336651 m!1555621))

(declare-fun m!1555623 () Bool)

(assert (=> bs!336651 m!1555623))

(assert (=> b!1382056 d!394826))

(declare-fun b!1382651 () Bool)

(declare-fun e!883440 () Bool)

(declare-fun inv!15 (TokenValue!2521) Bool)

(assert (=> b!1382651 (= e!883440 (inv!15 (value!78916 t1!34)))))

(declare-fun b!1382652 () Bool)

(declare-fun res!623573 () Bool)

(assert (=> b!1382652 (=> res!623573 e!883440)))

(assert (=> b!1382652 (= res!623573 (not ((_ is IntegerValue!7565) (value!78916 t1!34))))))

(declare-fun e!883439 () Bool)

(assert (=> b!1382652 (= e!883439 e!883440)))

(declare-fun b!1382653 () Bool)

(declare-fun e!883441 () Bool)

(declare-fun inv!16 (TokenValue!2521) Bool)

(assert (=> b!1382653 (= e!883441 (inv!16 (value!78916 t1!34)))))

(declare-fun b!1382655 () Bool)

(declare-fun inv!17 (TokenValue!2521) Bool)

(assert (=> b!1382655 (= e!883439 (inv!17 (value!78916 t1!34)))))

(declare-fun d!394828 () Bool)

(declare-fun c!227512 () Bool)

(assert (=> d!394828 (= c!227512 ((_ is IntegerValue!7563) (value!78916 t1!34)))))

(assert (=> d!394828 (= (inv!21 (value!78916 t1!34)) e!883441)))

(declare-fun b!1382654 () Bool)

(assert (=> b!1382654 (= e!883441 e!883439)))

(declare-fun c!227511 () Bool)

(assert (=> b!1382654 (= c!227511 ((_ is IntegerValue!7564) (value!78916 t1!34)))))

(assert (= (and d!394828 c!227512) b!1382653))

(assert (= (and d!394828 (not c!227512)) b!1382654))

(assert (= (and b!1382654 c!227511) b!1382655))

(assert (= (and b!1382654 (not c!227511)) b!1382652))

(assert (= (and b!1382652 (not res!623573)) b!1382651))

(declare-fun m!1555625 () Bool)

(assert (=> b!1382651 m!1555625))

(declare-fun m!1555627 () Bool)

(assert (=> b!1382653 m!1555627))

(declare-fun m!1555629 () Bool)

(assert (=> b!1382655 m!1555629))

(assert (=> b!1382034 d!394828))

(declare-fun d!394830 () Bool)

(declare-fun prefixMatchZipperSequence!276 (Regex!3745 BalanceConc!9184) Bool)

(declare-fun ++!3640 (BalanceConc!9184 BalanceConc!9184) BalanceConc!9184)

(declare-fun singletonSeq!1072 (C!7780) BalanceConc!9184)

(assert (=> d!394830 (= (separableTokensPredicate!409 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!276 (rulesRegex!314 thiss!19762 rules!2550) (++!3640 (charsOf!1403 t1!34) (singletonSeq!1072 (apply!3491 (charsOf!1403 t2!34) 0))))))))

(declare-fun bs!336653 () Bool)

(assert (= bs!336653 d!394830))

(declare-fun m!1555663 () Bool)

(assert (=> bs!336653 m!1555663))

(declare-fun m!1555665 () Bool)

(assert (=> bs!336653 m!1555665))

(assert (=> bs!336653 m!1554849))

(assert (=> bs!336653 m!1554945))

(declare-fun m!1555671 () Bool)

(assert (=> bs!336653 m!1555671))

(declare-fun m!1555673 () Bool)

(assert (=> bs!336653 m!1555673))

(assert (=> bs!336653 m!1554849))

(assert (=> bs!336653 m!1555663))

(assert (=> bs!336653 m!1554937))

(assert (=> bs!336653 m!1554945))

(assert (=> bs!336653 m!1554937))

(assert (=> bs!336653 m!1555665))

(assert (=> bs!336653 m!1555671))

(assert (=> b!1382055 d!394830))

(declare-fun d!394842 () Bool)

(declare-fun res!623589 () Bool)

(declare-fun e!883468 () Bool)

(assert (=> d!394842 (=> res!623589 e!883468)))

(assert (=> d!394842 (= res!623589 (not ((_ is Cons!14037) rules!2550)))))

(assert (=> d!394842 (= (sepAndNonSepRulesDisjointChars!804 rules!2550 rules!2550) e!883468)))

(declare-fun b!1382695 () Bool)

(declare-fun e!883469 () Bool)

(assert (=> b!1382695 (= e!883468 e!883469)))

(declare-fun res!623590 () Bool)

(assert (=> b!1382695 (=> (not res!623590) (not e!883469))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!379 (Rule!4662 List!14103) Bool)

(assert (=> b!1382695 (= res!623590 (ruleDisjointCharsFromAllFromOtherType!379 (h!19438 rules!2550) rules!2550))))

(declare-fun b!1382696 () Bool)

(assert (=> b!1382696 (= e!883469 (sepAndNonSepRulesDisjointChars!804 rules!2550 (t!122056 rules!2550)))))

(assert (= (and d!394842 (not res!623589)) b!1382695))

(assert (= (and b!1382695 res!623590) b!1382696))

(declare-fun m!1555681 () Bool)

(assert (=> b!1382695 m!1555681))

(declare-fun m!1555683 () Bool)

(assert (=> b!1382696 m!1555683))

(assert (=> b!1382033 d!394842))

(declare-fun b!1382697 () Bool)

(declare-fun e!883474 () Bool)

(assert (=> b!1382697 (= e!883474 (= (head!2511 lt!459486) (c!227387 (regex!2431 (rule!4190 t1!34)))))))

(declare-fun b!1382698 () Bool)

(declare-fun e!883472 () Bool)

(declare-fun e!883476 () Bool)

(assert (=> b!1382698 (= e!883472 e!883476)))

(declare-fun c!227527 () Bool)

(assert (=> b!1382698 (= c!227527 ((_ is EmptyLang!3745) (regex!2431 (rule!4190 t1!34))))))

(declare-fun b!1382699 () Bool)

(declare-fun res!623597 () Bool)

(assert (=> b!1382699 (=> (not res!623597) (not e!883474))))

(declare-fun call!92561 () Bool)

(assert (=> b!1382699 (= res!623597 (not call!92561))))

(declare-fun b!1382700 () Bool)

(declare-fun e!883473 () Bool)

(assert (=> b!1382700 (= e!883473 (nullable!1209 (regex!2431 (rule!4190 t1!34))))))

(declare-fun b!1382701 () Bool)

(declare-fun res!623593 () Bool)

(declare-fun e!883475 () Bool)

(assert (=> b!1382701 (=> res!623593 e!883475)))

(assert (=> b!1382701 (= res!623593 (not ((_ is ElementMatch!3745) (regex!2431 (rule!4190 t1!34)))))))

(assert (=> b!1382701 (= e!883476 e!883475)))

(declare-fun b!1382702 () Bool)

(declare-fun res!623596 () Bool)

(assert (=> b!1382702 (=> res!623596 e!883475)))

(assert (=> b!1382702 (= res!623596 e!883474)))

(declare-fun res!623591 () Bool)

(assert (=> b!1382702 (=> (not res!623591) (not e!883474))))

(declare-fun lt!459690 () Bool)

(assert (=> b!1382702 (= res!623591 lt!459690)))

(declare-fun b!1382704 () Bool)

(declare-fun e!883470 () Bool)

(assert (=> b!1382704 (= e!883475 e!883470)))

(declare-fun res!623598 () Bool)

(assert (=> b!1382704 (=> (not res!623598) (not e!883470))))

(assert (=> b!1382704 (= res!623598 (not lt!459690))))

(declare-fun b!1382707 () Bool)

(declare-fun e!883471 () Bool)

(assert (=> b!1382707 (= e!883470 e!883471)))

(declare-fun res!623592 () Bool)

(assert (=> b!1382707 (=> res!623592 e!883471)))

(assert (=> b!1382707 (= res!623592 call!92561)))

(declare-fun b!1382708 () Bool)

(assert (=> b!1382708 (= e!883471 (not (= (head!2511 lt!459486) (c!227387 (regex!2431 (rule!4190 t1!34))))))))

(declare-fun b!1382709 () Bool)

(declare-fun res!623594 () Bool)

(assert (=> b!1382709 (=> (not res!623594) (not e!883474))))

(assert (=> b!1382709 (= res!623594 (isEmpty!8475 (tail!2006 lt!459486)))))

(declare-fun b!1382710 () Bool)

(assert (=> b!1382710 (= e!883472 (= lt!459690 call!92561))))

(declare-fun b!1382711 () Bool)

(declare-fun res!623595 () Bool)

(assert (=> b!1382711 (=> res!623595 e!883471)))

(assert (=> b!1382711 (= res!623595 (not (isEmpty!8475 (tail!2006 lt!459486))))))

(declare-fun b!1382712 () Bool)

(assert (=> b!1382712 (= e!883476 (not lt!459690))))

(declare-fun bm!92556 () Bool)

(assert (=> bm!92556 (= call!92561 (isEmpty!8475 lt!459486))))

(declare-fun d!394848 () Bool)

(assert (=> d!394848 e!883472))

(declare-fun c!227525 () Bool)

(assert (=> d!394848 (= c!227525 ((_ is EmptyExpr!3745) (regex!2431 (rule!4190 t1!34))))))

(assert (=> d!394848 (= lt!459690 e!883473)))

(declare-fun c!227526 () Bool)

(assert (=> d!394848 (= c!227526 (isEmpty!8475 lt!459486))))

(assert (=> d!394848 (validRegex!1629 (regex!2431 (rule!4190 t1!34)))))

(assert (=> d!394848 (= (matchR!1736 (regex!2431 (rule!4190 t1!34)) lt!459486) lt!459690)))

(declare-fun b!1382706 () Bool)

(assert (=> b!1382706 (= e!883473 (matchR!1736 (derivativeStep!967 (regex!2431 (rule!4190 t1!34)) (head!2511 lt!459486)) (tail!2006 lt!459486)))))

(assert (= (and d!394848 c!227526) b!1382700))

(assert (= (and d!394848 (not c!227526)) b!1382706))

(assert (= (and d!394848 c!227525) b!1382710))

(assert (= (and d!394848 (not c!227525)) b!1382698))

(assert (= (and b!1382698 c!227527) b!1382712))

(assert (= (and b!1382698 (not c!227527)) b!1382701))

(assert (= (and b!1382701 (not res!623593)) b!1382702))

(assert (= (and b!1382702 res!623591) b!1382699))

(assert (= (and b!1382699 res!623597) b!1382709))

(assert (= (and b!1382709 res!623594) b!1382697))

(assert (= (and b!1382702 (not res!623596)) b!1382704))

(assert (= (and b!1382704 res!623598) b!1382707))

(assert (= (and b!1382707 (not res!623592)) b!1382711))

(assert (= (and b!1382711 (not res!623595)) b!1382708))

(assert (= (or b!1382710 b!1382699 b!1382707) bm!92556))

(declare-fun m!1555689 () Bool)

(assert (=> b!1382708 m!1555689))

(declare-fun m!1555691 () Bool)

(assert (=> bm!92556 m!1555691))

(assert (=> b!1382706 m!1555689))

(assert (=> b!1382706 m!1555689))

(declare-fun m!1555693 () Bool)

(assert (=> b!1382706 m!1555693))

(declare-fun m!1555695 () Bool)

(assert (=> b!1382706 m!1555695))

(assert (=> b!1382706 m!1555693))

(assert (=> b!1382706 m!1555695))

(declare-fun m!1555697 () Bool)

(assert (=> b!1382706 m!1555697))

(assert (=> b!1382709 m!1555695))

(assert (=> b!1382709 m!1555695))

(declare-fun m!1555699 () Bool)

(assert (=> b!1382709 m!1555699))

(declare-fun m!1555701 () Bool)

(assert (=> b!1382700 m!1555701))

(assert (=> b!1382697 m!1555689))

(assert (=> d!394848 m!1555691))

(assert (=> d!394848 m!1554913))

(assert (=> b!1382711 m!1555695))

(assert (=> b!1382711 m!1555695))

(assert (=> b!1382711 m!1555699))

(assert (=> b!1382054 d!394848))

(declare-fun d!394852 () Bool)

(declare-fun dynLambda!6401 (Int Rule!4662) Bool)

(assert (=> d!394852 (dynLambda!6401 lambda!59353 (rule!4190 t2!34))))

(declare-fun lt!459698 () Unit!20285)

(declare-fun choose!8483 (List!14103 Int Rule!4662) Unit!20285)

(assert (=> d!394852 (= lt!459698 (choose!8483 rules!2550 lambda!59353 (rule!4190 t2!34)))))

(declare-fun e!883484 () Bool)

(assert (=> d!394852 e!883484))

(declare-fun res!623610 () Bool)

(assert (=> d!394852 (=> (not res!623610) (not e!883484))))

(declare-fun forall!3414 (List!14103 Int) Bool)

(assert (=> d!394852 (= res!623610 (forall!3414 rules!2550 lambda!59353))))

(assert (=> d!394852 (= (forallContained!626 rules!2550 lambda!59353 (rule!4190 t2!34)) lt!459698)))

(declare-fun b!1382724 () Bool)

(assert (=> b!1382724 (= e!883484 (contains!2672 rules!2550 (rule!4190 t2!34)))))

(assert (= (and d!394852 res!623610) b!1382724))

(declare-fun b_lambda!42615 () Bool)

(assert (=> (not b_lambda!42615) (not d!394852)))

(declare-fun m!1555739 () Bool)

(assert (=> d!394852 m!1555739))

(declare-fun m!1555741 () Bool)

(assert (=> d!394852 m!1555741))

(declare-fun m!1555743 () Bool)

(assert (=> d!394852 m!1555743))

(assert (=> b!1382724 m!1554833))

(assert (=> b!1382054 d!394852))

(declare-fun d!394862 () Bool)

(assert (=> d!394862 (dynLambda!6401 lambda!59353 (rule!4190 t1!34))))

(declare-fun lt!459699 () Unit!20285)

(assert (=> d!394862 (= lt!459699 (choose!8483 rules!2550 lambda!59353 (rule!4190 t1!34)))))

(declare-fun e!883485 () Bool)

(assert (=> d!394862 e!883485))

(declare-fun res!623611 () Bool)

(assert (=> d!394862 (=> (not res!623611) (not e!883485))))

(assert (=> d!394862 (= res!623611 (forall!3414 rules!2550 lambda!59353))))

(assert (=> d!394862 (= (forallContained!626 rules!2550 lambda!59353 (rule!4190 t1!34)) lt!459699)))

(declare-fun b!1382725 () Bool)

(assert (=> b!1382725 (= e!883485 (contains!2672 rules!2550 (rule!4190 t1!34)))))

(assert (= (and d!394862 res!623611) b!1382725))

(declare-fun b_lambda!42617 () Bool)

(assert (=> (not b_lambda!42617) (not d!394862)))

(declare-fun m!1555745 () Bool)

(assert (=> d!394862 m!1555745))

(declare-fun m!1555747 () Bool)

(assert (=> d!394862 m!1555747))

(assert (=> d!394862 m!1555743))

(assert (=> b!1382725 m!1554919))

(assert (=> b!1382054 d!394862))

(declare-fun d!394864 () Bool)

(assert (=> d!394864 (dynLambda!6401 lambda!59353 lt!459469)))

(declare-fun lt!459700 () Unit!20285)

(assert (=> d!394864 (= lt!459700 (choose!8483 rules!2550 lambda!59353 lt!459469))))

(declare-fun e!883486 () Bool)

(assert (=> d!394864 e!883486))

(declare-fun res!623612 () Bool)

(assert (=> d!394864 (=> (not res!623612) (not e!883486))))

(assert (=> d!394864 (= res!623612 (forall!3414 rules!2550 lambda!59353))))

(assert (=> d!394864 (= (forallContained!626 rules!2550 lambda!59353 lt!459469) lt!459700)))

(declare-fun b!1382726 () Bool)

(assert (=> b!1382726 (= e!883486 (contains!2672 rules!2550 lt!459469))))

(assert (= (and d!394864 res!623612) b!1382726))

(declare-fun b_lambda!42619 () Bool)

(assert (=> (not b_lambda!42619) (not d!394864)))

(declare-fun m!1555749 () Bool)

(assert (=> d!394864 m!1555749))

(declare-fun m!1555751 () Bool)

(assert (=> d!394864 m!1555751))

(assert (=> d!394864 m!1555743))

(assert (=> b!1382726 m!1554957))

(assert (=> b!1382054 d!394864))

(declare-fun d!394866 () Bool)

(declare-fun lt!459703 () Int)

(assert (=> d!394866 (= lt!459703 (size!11517 (list!5430 lt!459475)))))

(declare-fun size!11522 (Conc!4622) Int)

(assert (=> d!394866 (= lt!459703 (size!11522 (c!227386 lt!459475)))))

(assert (=> d!394866 (= (size!11510 lt!459475) lt!459703)))

(declare-fun bs!336657 () Bool)

(assert (= bs!336657 d!394866))

(assert (=> bs!336657 m!1554899))

(assert (=> bs!336657 m!1554899))

(declare-fun m!1555753 () Bool)

(assert (=> bs!336657 m!1555753))

(declare-fun m!1555755 () Bool)

(assert (=> bs!336657 m!1555755))

(assert (=> b!1382032 d!394866))

(declare-fun d!394868 () Bool)

(declare-fun lt!459706 () BalanceConc!9184)

(assert (=> d!394868 (= (list!5430 lt!459706) (originalCharacters!3293 t2!34))))

(assert (=> d!394868 (= lt!459706 (dynLambda!6399 (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (value!78916 t2!34)))))

(assert (=> d!394868 (= (charsOf!1403 t2!34) lt!459706)))

(declare-fun b_lambda!42621 () Bool)

(assert (=> (not b_lambda!42621) (not d!394868)))

(assert (=> d!394868 t!122080))

(declare-fun b_and!92681 () Bool)

(assert (= b_and!92669 (and (=> t!122080 result!88148) b_and!92681)))

(assert (=> d!394868 t!122082))

(declare-fun b_and!92683 () Bool)

(assert (= b_and!92671 (and (=> t!122082 result!88150) b_and!92683)))

(assert (=> d!394868 t!122084))

(declare-fun b_and!92685 () Bool)

(assert (= b_and!92673 (and (=> t!122084 result!88152) b_and!92685)))

(declare-fun m!1555757 () Bool)

(assert (=> d!394868 m!1555757))

(assert (=> d!394868 m!1555483))

(assert (=> b!1382032 d!394868))

(declare-fun d!394870 () Bool)

(declare-fun lt!459707 () Bool)

(assert (=> d!394870 (= lt!459707 (select (content!2048 lt!459478) lt!459481))))

(declare-fun e!883487 () Bool)

(assert (=> d!394870 (= lt!459707 e!883487)))

(declare-fun res!623614 () Bool)

(assert (=> d!394870 (=> (not res!623614) (not e!883487))))

(assert (=> d!394870 (= res!623614 ((_ is Cons!14035) lt!459478))))

(assert (=> d!394870 (= (contains!2673 lt!459478 lt!459481) lt!459707)))

(declare-fun b!1382727 () Bool)

(declare-fun e!883488 () Bool)

(assert (=> b!1382727 (= e!883487 e!883488)))

(declare-fun res!623613 () Bool)

(assert (=> b!1382727 (=> res!623613 e!883488)))

(assert (=> b!1382727 (= res!623613 (= (h!19436 lt!459478) lt!459481))))

(declare-fun b!1382728 () Bool)

(assert (=> b!1382728 (= e!883488 (contains!2673 (t!122054 lt!459478) lt!459481))))

(assert (= (and d!394870 res!623614) b!1382727))

(assert (= (and b!1382727 (not res!623613)) b!1382728))

(assert (=> d!394870 m!1555113))

(declare-fun m!1555759 () Bool)

(assert (=> d!394870 m!1555759))

(declare-fun m!1555761 () Bool)

(assert (=> b!1382728 m!1555761))

(assert (=> b!1382053 d!394870))

(declare-fun d!394872 () Bool)

(declare-fun res!623619 () Bool)

(declare-fun e!883493 () Bool)

(assert (=> d!394872 (=> (not res!623619) (not e!883493))))

(declare-fun rulesValid!907 (LexerInterface!2126 List!14103) Bool)

(assert (=> d!394872 (= res!623619 (rulesValid!907 thiss!19762 rules!2550))))

(assert (=> d!394872 (= (rulesInvariant!1996 thiss!19762 rules!2550) e!883493)))

(declare-fun b!1382733 () Bool)

(declare-datatypes ((List!14106 0))(
  ( (Nil!14040) (Cons!14040 (h!19441 String!16841) (t!122095 List!14106)) )
))
(declare-fun noDuplicateTag!907 (LexerInterface!2126 List!14103 List!14106) Bool)

(assert (=> b!1382733 (= e!883493 (noDuplicateTag!907 thiss!19762 rules!2550 Nil!14040))))

(assert (= (and d!394872 res!623619) b!1382733))

(declare-fun m!1555773 () Bool)

(assert (=> d!394872 m!1555773))

(declare-fun m!1555775 () Bool)

(assert (=> b!1382733 m!1555775))

(assert (=> b!1382031 d!394872))

(declare-fun d!394878 () Bool)

(assert (=> d!394878 (= (inv!18373 (tag!2693 (h!19438 rules!2550))) (= (mod (str.len (value!78915 (tag!2693 (h!19438 rules!2550)))) 2) 0))))

(assert (=> b!1382041 d!394878))

(declare-fun d!394880 () Bool)

(declare-fun res!623620 () Bool)

(declare-fun e!883494 () Bool)

(assert (=> d!394880 (=> (not res!623620) (not e!883494))))

(assert (=> d!394880 (= res!623620 (semiInverseModEq!937 (toChars!3573 (transformation!2431 (h!19438 rules!2550))) (toValue!3714 (transformation!2431 (h!19438 rules!2550)))))))

(assert (=> d!394880 (= (inv!18377 (transformation!2431 (h!19438 rules!2550))) e!883494)))

(declare-fun b!1382734 () Bool)

(assert (=> b!1382734 (= e!883494 (equivClasses!896 (toChars!3573 (transformation!2431 (h!19438 rules!2550))) (toValue!3714 (transformation!2431 (h!19438 rules!2550)))))))

(assert (= (and d!394880 res!623620) b!1382734))

(declare-fun m!1555777 () Bool)

(assert (=> d!394880 m!1555777))

(declare-fun m!1555779 () Bool)

(assert (=> b!1382734 m!1555779))

(assert (=> b!1382041 d!394880))

(assert (=> b!1382062 d!394724))

(declare-fun bs!336661 () Bool)

(declare-fun d!394882 () Bool)

(assert (= bs!336661 (and d!394882 b!1382062)))

(declare-fun lambda!59384 () Int)

(assert (=> bs!336661 (not (= lambda!59384 lambda!59351))))

(assert (=> d!394882 true))

(declare-fun order!8557 () Int)

(declare-fun dynLambda!6402 (Int Int) Int)

(assert (=> d!394882 (< (dynLambda!6402 order!8557 lambda!59351) (dynLambda!6402 order!8557 lambda!59384))))

(declare-fun forall!3415 (List!14104 Int) Bool)

(assert (=> d!394882 (= (exists!507 lt!459485 lambda!59351) (not (forall!3415 lt!459485 lambda!59384)))))

(declare-fun bs!336662 () Bool)

(assert (= bs!336662 d!394882))

(declare-fun m!1555781 () Bool)

(assert (=> bs!336662 m!1555781))

(assert (=> b!1382062 d!394882))

(declare-fun bs!336663 () Bool)

(declare-fun d!394884 () Bool)

(assert (= bs!336663 (and d!394884 b!1382062)))

(declare-fun lambda!59385 () Int)

(assert (=> bs!336663 (not (= lambda!59385 lambda!59351))))

(declare-fun bs!336664 () Bool)

(assert (= bs!336664 (and d!394884 d!394882)))

(assert (=> bs!336664 (= lambda!59385 lambda!59384)))

(assert (=> d!394884 true))

(assert (=> d!394884 (< (dynLambda!6402 order!8557 lambda!59351) (dynLambda!6402 order!8557 lambda!59385))))

(assert (=> d!394884 (= (exists!507 (map!3107 rules!2550 lambda!59350) lambda!59351) (not (forall!3415 (map!3107 rules!2550 lambda!59350) lambda!59385)))))

(declare-fun bs!336665 () Bool)

(assert (= bs!336665 d!394884))

(assert (=> bs!336665 m!1554817))

(declare-fun m!1555783 () Bool)

(assert (=> bs!336665 m!1555783))

(assert (=> b!1382062 d!394884))

(declare-fun bs!336667 () Bool)

(declare-fun d!394886 () Bool)

(assert (= bs!336667 (and d!394886 b!1382062)))

(declare-fun lambda!59390 () Int)

(assert (=> bs!336667 (not (= lambda!59390 lambda!59351))))

(declare-fun bs!336668 () Bool)

(assert (= bs!336668 (and d!394886 d!394882)))

(assert (=> bs!336668 (not (= lambda!59390 lambda!59384))))

(declare-fun bs!336669 () Bool)

(assert (= bs!336669 (and d!394886 d!394884)))

(assert (=> bs!336669 (not (= lambda!59390 lambda!59385))))

(declare-fun lambda!59391 () Int)

(assert (=> bs!336667 (= lambda!59391 lambda!59351)))

(assert (=> bs!336668 (not (= lambda!59391 lambda!59384))))

(assert (=> bs!336669 (not (= lambda!59391 lambda!59385))))

(declare-fun bs!336670 () Bool)

(assert (= bs!336670 d!394886))

(assert (=> bs!336670 (not (= lambda!59391 lambda!59390))))

(assert (=> d!394886 true))

(assert (=> d!394886 (= (matchR!1736 lt!459484 lt!459478) (exists!507 lt!459485 lambda!59391))))

(declare-fun lt!459722 () Unit!20285)

(declare-fun choose!8486 (Regex!3745 List!14104 List!14101) Unit!20285)

(assert (=> d!394886 (= lt!459722 (choose!8486 lt!459484 lt!459485 lt!459478))))

(assert (=> d!394886 (forall!3415 lt!459485 lambda!59390)))

(assert (=> d!394886 (= (matchRGenUnionSpec!156 lt!459484 lt!459485 lt!459478) lt!459722)))

(assert (=> bs!336670 m!1554949))

(declare-fun m!1555831 () Bool)

(assert (=> bs!336670 m!1555831))

(declare-fun m!1555833 () Bool)

(assert (=> bs!336670 m!1555833))

(declare-fun m!1555835 () Bool)

(assert (=> bs!336670 m!1555835))

(assert (=> b!1382062 d!394886))

(declare-fun bs!336671 () Bool)

(declare-fun d!394902 () Bool)

(assert (= bs!336671 (and d!394902 b!1382040)))

(declare-fun lambda!59394 () Int)

(assert (=> bs!336671 (not (= lambda!59394 lambda!59352))))

(declare-fun bs!336672 () Bool)

(assert (= bs!336672 (and d!394902 b!1382054)))

(assert (=> bs!336672 (not (= lambda!59394 lambda!59353))))

(assert (=> d!394902 true))

(declare-fun order!8559 () Int)

(declare-fun dynLambda!6403 (Int Int) Int)

(assert (=> d!394902 (< (dynLambda!6403 order!8559 lambda!59352) (dynLambda!6403 order!8559 lambda!59394))))

(assert (=> d!394902 (= (exists!506 rules!2550 lambda!59352) (not (forall!3414 rules!2550 lambda!59394)))))

(declare-fun bs!336673 () Bool)

(assert (= bs!336673 d!394902))

(declare-fun m!1555837 () Bool)

(assert (=> bs!336673 m!1555837))

(assert (=> b!1382040 d!394902))

(declare-fun bs!336679 () Bool)

(declare-fun d!394904 () Bool)

(assert (= bs!336679 (and d!394904 b!1382040)))

(declare-fun lambda!59397 () Int)

(assert (=> bs!336679 (not (= lambda!59397 lambda!59352))))

(declare-fun bs!336682 () Bool)

(assert (= bs!336682 (and d!394904 b!1382054)))

(assert (=> bs!336682 (not (= lambda!59397 lambda!59353))))

(declare-fun bs!336684 () Bool)

(assert (= bs!336684 (and d!394904 d!394902)))

(assert (=> bs!336684 (not (= lambda!59397 lambda!59394))))

(assert (=> d!394904 true))

(assert (=> d!394904 true))

(declare-fun order!8561 () Int)

(declare-fun dynLambda!6404 (Int Int) Int)

(assert (=> d!394904 (< (dynLambda!6404 order!8561 lambda!59350) (dynLambda!6403 order!8559 lambda!59397))))

(assert (=> d!394904 (exists!506 rules!2550 lambda!59397)))

(declare-fun lt!459725 () Unit!20285)

(declare-fun choose!8487 (List!14103 Int Regex!3745) Unit!20285)

(assert (=> d!394904 (= lt!459725 (choose!8487 rules!2550 lambda!59350 lt!459473))))

(assert (=> d!394904 (contains!2671 (map!3107 rules!2550 lambda!59350) lt!459473)))

(assert (=> d!394904 (= (lemmaMapContains!142 rules!2550 lambda!59350 lt!459473) lt!459725)))

(declare-fun bs!336686 () Bool)

(assert (= bs!336686 d!394904))

(declare-fun m!1555861 () Bool)

(assert (=> bs!336686 m!1555861))

(declare-fun m!1555863 () Bool)

(assert (=> bs!336686 m!1555863))

(assert (=> bs!336686 m!1554817))

(assert (=> bs!336686 m!1554817))

(assert (=> bs!336686 m!1554819))

(assert (=> b!1382040 d!394904))

(declare-fun b!1382815 () Bool)

(declare-fun e!883542 () Bool)

(assert (=> b!1382815 (= e!883542 (inv!15 (value!78916 t2!34)))))

(declare-fun b!1382816 () Bool)

(declare-fun res!623640 () Bool)

(assert (=> b!1382816 (=> res!623640 e!883542)))

(assert (=> b!1382816 (= res!623640 (not ((_ is IntegerValue!7565) (value!78916 t2!34))))))

(declare-fun e!883541 () Bool)

(assert (=> b!1382816 (= e!883541 e!883542)))

(declare-fun b!1382817 () Bool)

(declare-fun e!883543 () Bool)

(assert (=> b!1382817 (= e!883543 (inv!16 (value!78916 t2!34)))))

(declare-fun b!1382819 () Bool)

(assert (=> b!1382819 (= e!883541 (inv!17 (value!78916 t2!34)))))

(declare-fun d!394924 () Bool)

(declare-fun c!227537 () Bool)

(assert (=> d!394924 (= c!227537 ((_ is IntegerValue!7563) (value!78916 t2!34)))))

(assert (=> d!394924 (= (inv!21 (value!78916 t2!34)) e!883543)))

(declare-fun b!1382818 () Bool)

(assert (=> b!1382818 (= e!883543 e!883541)))

(declare-fun c!227536 () Bool)

(assert (=> b!1382818 (= c!227536 ((_ is IntegerValue!7564) (value!78916 t2!34)))))

(assert (= (and d!394924 c!227537) b!1382817))

(assert (= (and d!394924 (not c!227537)) b!1382818))

(assert (= (and b!1382818 c!227536) b!1382819))

(assert (= (and b!1382818 (not c!227536)) b!1382816))

(assert (= (and b!1382816 (not res!623640)) b!1382815))

(declare-fun m!1555865 () Bool)

(assert (=> b!1382815 m!1555865))

(declare-fun m!1555867 () Bool)

(assert (=> b!1382817 m!1555867))

(declare-fun m!1555869 () Bool)

(assert (=> b!1382819 m!1555869))

(assert (=> b!1382061 d!394924))

(declare-fun d!394926 () Bool)

(declare-fun list!5434 (Conc!4623) List!14102)

(assert (=> d!394926 (= (list!5429 (_1!7701 lt!459472)) (list!5434 (c!227388 (_1!7701 lt!459472))))))

(declare-fun bs!336687 () Bool)

(assert (= bs!336687 d!394926))

(declare-fun m!1555871 () Bool)

(assert (=> bs!336687 m!1555871))

(assert (=> b!1382039 d!394926))

(declare-fun e!883551 () Bool)

(declare-fun lt!459728 () tuple2!13630)

(declare-fun b!1382830 () Bool)

(assert (=> b!1382830 (= e!883551 (= (list!5430 (_2!7701 lt!459728)) (_2!7702 (lexList!640 thiss!19762 rules!2550 (list!5430 lt!459487)))))))

(declare-fun b!1382831 () Bool)

(declare-fun e!883552 () Bool)

(declare-fun e!883550 () Bool)

(assert (=> b!1382831 (= e!883552 e!883550)))

(declare-fun res!623649 () Bool)

(assert (=> b!1382831 (= res!623649 (< (size!11510 (_2!7701 lt!459728)) (size!11510 lt!459487)))))

(assert (=> b!1382831 (=> (not res!623649) (not e!883550))))

(declare-fun b!1382832 () Bool)

(declare-fun res!623647 () Bool)

(assert (=> b!1382832 (=> (not res!623647) (not e!883551))))

(assert (=> b!1382832 (= res!623647 (= (list!5429 (_1!7701 lt!459728)) (_1!7702 (lexList!640 thiss!19762 rules!2550 (list!5430 lt!459487)))))))

(declare-fun d!394928 () Bool)

(assert (=> d!394928 e!883551))

(declare-fun res!623648 () Bool)

(assert (=> d!394928 (=> (not res!623648) (not e!883551))))

(assert (=> d!394928 (= res!623648 e!883552)))

(declare-fun c!227540 () Bool)

(assert (=> d!394928 (= c!227540 (> (size!11516 (_1!7701 lt!459728)) 0))))

(declare-fun lexTailRecV2!421 (LexerInterface!2126 List!14103 BalanceConc!9184 BalanceConc!9184 BalanceConc!9184 BalanceConc!9186) tuple2!13630)

(assert (=> d!394928 (= lt!459728 (lexTailRecV2!421 thiss!19762 rules!2550 lt!459487 (BalanceConc!9185 Empty!4622) lt!459487 (BalanceConc!9187 Empty!4623)))))

(assert (=> d!394928 (= (lex!951 thiss!19762 rules!2550 lt!459487) lt!459728)))

(declare-fun b!1382833 () Bool)

(declare-fun isEmpty!8479 (BalanceConc!9186) Bool)

(assert (=> b!1382833 (= e!883550 (not (isEmpty!8479 (_1!7701 lt!459728))))))

(declare-fun b!1382834 () Bool)

(assert (=> b!1382834 (= e!883552 (= (_2!7701 lt!459728) lt!459487))))

(assert (= (and d!394928 c!227540) b!1382831))

(assert (= (and d!394928 (not c!227540)) b!1382834))

(assert (= (and b!1382831 res!623649) b!1382833))

(assert (= (and d!394928 res!623648) b!1382832))

(assert (= (and b!1382832 res!623647) b!1382830))

(declare-fun m!1555873 () Bool)

(assert (=> d!394928 m!1555873))

(declare-fun m!1555875 () Bool)

(assert (=> d!394928 m!1555875))

(declare-fun m!1555877 () Bool)

(assert (=> b!1382831 m!1555877))

(declare-fun m!1555879 () Bool)

(assert (=> b!1382831 m!1555879))

(declare-fun m!1555881 () Bool)

(assert (=> b!1382832 m!1555881))

(assert (=> b!1382832 m!1554869))

(assert (=> b!1382832 m!1554869))

(assert (=> b!1382832 m!1554871))

(declare-fun m!1555883 () Bool)

(assert (=> b!1382833 m!1555883))

(declare-fun m!1555885 () Bool)

(assert (=> b!1382830 m!1555885))

(assert (=> b!1382830 m!1554869))

(assert (=> b!1382830 m!1554869))

(assert (=> b!1382830 m!1554871))

(assert (=> b!1382039 d!394928))

(declare-fun d!394930 () Bool)

(declare-fun lt!459731 () BalanceConc!9184)

(declare-fun printList!616 (LexerInterface!2126 List!14102) List!14101)

(assert (=> d!394930 (= (list!5430 lt!459731) (printList!616 thiss!19762 (list!5429 (singletonSeq!1070 t2!34))))))

(declare-fun printTailRec!598 (LexerInterface!2126 BalanceConc!9186 Int BalanceConc!9184) BalanceConc!9184)

(assert (=> d!394930 (= lt!459731 (printTailRec!598 thiss!19762 (singletonSeq!1070 t2!34) 0 (BalanceConc!9185 Empty!4622)))))

(assert (=> d!394930 (= (print!890 thiss!19762 (singletonSeq!1070 t2!34)) lt!459731)))

(declare-fun bs!336688 () Bool)

(assert (= bs!336688 d!394930))

(declare-fun m!1555887 () Bool)

(assert (=> bs!336688 m!1555887))

(assert (=> bs!336688 m!1554925))

(assert (=> bs!336688 m!1555093))

(assert (=> bs!336688 m!1555093))

(declare-fun m!1555889 () Bool)

(assert (=> bs!336688 m!1555889))

(assert (=> bs!336688 m!1554925))

(declare-fun m!1555891 () Bool)

(assert (=> bs!336688 m!1555891))

(assert (=> b!1382039 d!394930))

(declare-fun d!394932 () Bool)

(declare-fun e!883555 () Bool)

(assert (=> d!394932 e!883555))

(declare-fun res!623652 () Bool)

(assert (=> d!394932 (=> (not res!623652) (not e!883555))))

(declare-fun lt!459734 () BalanceConc!9186)

(assert (=> d!394932 (= res!623652 (= (list!5429 lt!459734) (Cons!14036 t2!34 Nil!14036)))))

(declare-fun singleton!468 (Token!4524) BalanceConc!9186)

(assert (=> d!394932 (= lt!459734 (singleton!468 t2!34))))

(assert (=> d!394932 (= (singletonSeq!1070 t2!34) lt!459734)))

(declare-fun b!1382837 () Bool)

(declare-fun isBalanced!1362 (Conc!4623) Bool)

(assert (=> b!1382837 (= e!883555 (isBalanced!1362 (c!227388 lt!459734)))))

(assert (= (and d!394932 res!623652) b!1382837))

(declare-fun m!1555893 () Bool)

(assert (=> d!394932 m!1555893))

(declare-fun m!1555895 () Bool)

(assert (=> d!394932 m!1555895))

(declare-fun m!1555897 () Bool)

(assert (=> b!1382837 m!1555897))

(assert (=> b!1382039 d!394932))

(declare-fun d!394934 () Bool)

(assert (=> d!394934 (= (list!5429 (_1!7701 lt!459492)) (list!5434 (c!227388 (_1!7701 lt!459492))))))

(declare-fun bs!336689 () Bool)

(assert (= bs!336689 d!394934))

(declare-fun m!1555899 () Bool)

(assert (=> bs!336689 m!1555899))

(assert (=> b!1382060 d!394934))

(declare-fun e!883557 () Bool)

(declare-fun b!1382838 () Bool)

(declare-fun lt!459735 () tuple2!13630)

(assert (=> b!1382838 (= e!883557 (= (list!5430 (_2!7701 lt!459735)) (_2!7702 (lexList!640 thiss!19762 rules!2550 (list!5430 lt!459479)))))))

(declare-fun b!1382839 () Bool)

(declare-fun e!883558 () Bool)

(declare-fun e!883556 () Bool)

(assert (=> b!1382839 (= e!883558 e!883556)))

(declare-fun res!623655 () Bool)

(assert (=> b!1382839 (= res!623655 (< (size!11510 (_2!7701 lt!459735)) (size!11510 lt!459479)))))

(assert (=> b!1382839 (=> (not res!623655) (not e!883556))))

(declare-fun b!1382840 () Bool)

(declare-fun res!623653 () Bool)

(assert (=> b!1382840 (=> (not res!623653) (not e!883557))))

(assert (=> b!1382840 (= res!623653 (= (list!5429 (_1!7701 lt!459735)) (_1!7702 (lexList!640 thiss!19762 rules!2550 (list!5430 lt!459479)))))))

(declare-fun d!394936 () Bool)

(assert (=> d!394936 e!883557))

(declare-fun res!623654 () Bool)

(assert (=> d!394936 (=> (not res!623654) (not e!883557))))

(assert (=> d!394936 (= res!623654 e!883558)))

(declare-fun c!227541 () Bool)

(assert (=> d!394936 (= c!227541 (> (size!11516 (_1!7701 lt!459735)) 0))))

(assert (=> d!394936 (= lt!459735 (lexTailRecV2!421 thiss!19762 rules!2550 lt!459479 (BalanceConc!9185 Empty!4622) lt!459479 (BalanceConc!9187 Empty!4623)))))

(assert (=> d!394936 (= (lex!951 thiss!19762 rules!2550 lt!459479) lt!459735)))

(declare-fun b!1382841 () Bool)

(assert (=> b!1382841 (= e!883556 (not (isEmpty!8479 (_1!7701 lt!459735))))))

(declare-fun b!1382842 () Bool)

(assert (=> b!1382842 (= e!883558 (= (_2!7701 lt!459735) lt!459479))))

(assert (= (and d!394936 c!227541) b!1382839))

(assert (= (and d!394936 (not c!227541)) b!1382842))

(assert (= (and b!1382839 res!623655) b!1382841))

(assert (= (and d!394936 res!623654) b!1382840))

(assert (= (and b!1382840 res!623653) b!1382838))

(declare-fun m!1555901 () Bool)

(assert (=> d!394936 m!1555901))

(declare-fun m!1555903 () Bool)

(assert (=> d!394936 m!1555903))

(declare-fun m!1555905 () Bool)

(assert (=> b!1382839 m!1555905))

(declare-fun m!1555907 () Bool)

(assert (=> b!1382839 m!1555907))

(declare-fun m!1555909 () Bool)

(assert (=> b!1382840 m!1555909))

(assert (=> b!1382840 m!1554951))

(assert (=> b!1382840 m!1554951))

(assert (=> b!1382840 m!1554953))

(declare-fun m!1555911 () Bool)

(assert (=> b!1382841 m!1555911))

(declare-fun m!1555913 () Bool)

(assert (=> b!1382838 m!1555913))

(assert (=> b!1382838 m!1554951))

(assert (=> b!1382838 m!1554951))

(assert (=> b!1382838 m!1554953))

(assert (=> b!1382060 d!394936))

(declare-fun d!394938 () Bool)

(declare-fun lt!459736 () BalanceConc!9184)

(assert (=> d!394938 (= (list!5430 lt!459736) (printList!616 thiss!19762 (list!5429 (singletonSeq!1070 t1!34))))))

(assert (=> d!394938 (= lt!459736 (printTailRec!598 thiss!19762 (singletonSeq!1070 t1!34) 0 (BalanceConc!9185 Empty!4622)))))

(assert (=> d!394938 (= (print!890 thiss!19762 (singletonSeq!1070 t1!34)) lt!459736)))

(declare-fun bs!336690 () Bool)

(assert (= bs!336690 d!394938))

(declare-fun m!1555915 () Bool)

(assert (=> bs!336690 m!1555915))

(assert (=> bs!336690 m!1554837))

(assert (=> bs!336690 m!1555541))

(assert (=> bs!336690 m!1555541))

(declare-fun m!1555917 () Bool)

(assert (=> bs!336690 m!1555917))

(assert (=> bs!336690 m!1554837))

(declare-fun m!1555919 () Bool)

(assert (=> bs!336690 m!1555919))

(assert (=> b!1382060 d!394938))

(declare-fun d!394940 () Bool)

(declare-fun e!883568 () Bool)

(assert (=> d!394940 e!883568))

(declare-fun res!623660 () Bool)

(assert (=> d!394940 (=> (not res!623660) (not e!883568))))

(declare-fun lt!459742 () Rule!4662)

(assert (=> d!394940 (= res!623660 (dynLambda!6401 lambda!59352 lt!459742))))

(declare-fun e!883570 () Rule!4662)

(assert (=> d!394940 (= lt!459742 e!883570)))

(declare-fun c!227547 () Bool)

(declare-fun e!883567 () Bool)

(assert (=> d!394940 (= c!227547 e!883567)))

(declare-fun res!623661 () Bool)

(assert (=> d!394940 (=> (not res!623661) (not e!883567))))

(assert (=> d!394940 (= res!623661 ((_ is Cons!14037) rules!2550))))

(assert (=> d!394940 (exists!506 rules!2550 lambda!59352)))

(assert (=> d!394940 (= (getWitness!395 rules!2550 lambda!59352) lt!459742)))

(declare-fun b!1382855 () Bool)

(assert (=> b!1382855 (= e!883567 (dynLambda!6401 lambda!59352 (h!19438 rules!2550)))))

(declare-fun b!1382856 () Bool)

(declare-fun lt!459741 () Unit!20285)

(declare-fun Unit!20290 () Unit!20285)

(assert (=> b!1382856 (= lt!459741 Unit!20290)))

(assert (=> b!1382856 false))

(declare-fun e!883569 () Rule!4662)

(declare-fun head!2513 (List!14103) Rule!4662)

(assert (=> b!1382856 (= e!883569 (head!2513 rules!2550))))

(declare-fun b!1382857 () Bool)

(assert (=> b!1382857 (= e!883570 e!883569)))

(declare-fun c!227546 () Bool)

(assert (=> b!1382857 (= c!227546 ((_ is Cons!14037) rules!2550))))

(declare-fun b!1382858 () Bool)

(assert (=> b!1382858 (= e!883569 (getWitness!395 (t!122056 rules!2550) lambda!59352))))

(declare-fun b!1382859 () Bool)

(assert (=> b!1382859 (= e!883568 (contains!2672 rules!2550 lt!459742))))

(declare-fun b!1382860 () Bool)

(assert (=> b!1382860 (= e!883570 (h!19438 rules!2550))))

(assert (= (and d!394940 res!623661) b!1382855))

(assert (= (and d!394940 c!227547) b!1382860))

(assert (= (and d!394940 (not c!227547)) b!1382857))

(assert (= (and b!1382857 c!227546) b!1382858))

(assert (= (and b!1382857 (not c!227546)) b!1382856))

(assert (= (and d!394940 res!623660) b!1382859))

(declare-fun b_lambda!42653 () Bool)

(assert (=> (not b_lambda!42653) (not d!394940)))

(declare-fun b_lambda!42655 () Bool)

(assert (=> (not b_lambda!42655) (not b!1382855)))

(declare-fun m!1555921 () Bool)

(assert (=> d!394940 m!1555921))

(assert (=> d!394940 m!1554915))

(declare-fun m!1555923 () Bool)

(assert (=> b!1382859 m!1555923))

(declare-fun m!1555925 () Bool)

(assert (=> b!1382855 m!1555925))

(declare-fun m!1555927 () Bool)

(assert (=> b!1382858 m!1555927))

(declare-fun m!1555929 () Bool)

(assert (=> b!1382856 m!1555929))

(assert (=> b!1382060 d!394940))

(declare-fun d!394942 () Bool)

(declare-fun e!883571 () Bool)

(assert (=> d!394942 e!883571))

(declare-fun res!623662 () Bool)

(assert (=> d!394942 (=> (not res!623662) (not e!883571))))

(declare-fun lt!459743 () BalanceConc!9186)

(assert (=> d!394942 (= res!623662 (= (list!5429 lt!459743) (Cons!14036 t1!34 Nil!14036)))))

(assert (=> d!394942 (= lt!459743 (singleton!468 t1!34))))

(assert (=> d!394942 (= (singletonSeq!1070 t1!34) lt!459743)))

(declare-fun b!1382861 () Bool)

(assert (=> b!1382861 (= e!883571 (isBalanced!1362 (c!227388 lt!459743)))))

(assert (= (and d!394942 res!623662) b!1382861))

(declare-fun m!1555931 () Bool)

(assert (=> d!394942 m!1555931))

(declare-fun m!1555933 () Bool)

(assert (=> d!394942 m!1555933))

(declare-fun m!1555935 () Bool)

(assert (=> b!1382861 m!1555935))

(assert (=> b!1382060 d!394942))

(declare-fun d!394944 () Bool)

(declare-fun lt!459744 () Bool)

(assert (=> d!394944 (= lt!459744 (select (content!2048 lt!459490) lt!459476))))

(declare-fun e!883572 () Bool)

(assert (=> d!394944 (= lt!459744 e!883572)))

(declare-fun res!623664 () Bool)

(assert (=> d!394944 (=> (not res!623664) (not e!883572))))

(assert (=> d!394944 (= res!623664 ((_ is Cons!14035) lt!459490))))

(assert (=> d!394944 (= (contains!2673 lt!459490 lt!459476) lt!459744)))

(declare-fun b!1382862 () Bool)

(declare-fun e!883573 () Bool)

(assert (=> b!1382862 (= e!883572 e!883573)))

(declare-fun res!623663 () Bool)

(assert (=> b!1382862 (=> res!623663 e!883573)))

(assert (=> b!1382862 (= res!623663 (= (h!19436 lt!459490) lt!459476))))

(declare-fun b!1382863 () Bool)

(assert (=> b!1382863 (= e!883573 (contains!2673 (t!122054 lt!459490) lt!459476))))

(assert (= (and d!394944 res!623664) b!1382862))

(assert (= (and b!1382862 (not res!623663)) b!1382863))

(assert (=> d!394944 m!1555197))

(declare-fun m!1555937 () Bool)

(assert (=> d!394944 m!1555937))

(declare-fun m!1555939 () Bool)

(assert (=> b!1382863 m!1555939))

(assert (=> b!1382038 d!394944))

(declare-fun d!394946 () Bool)

(declare-fun lt!459745 () C!7780)

(assert (=> d!394946 (= lt!459745 (apply!3498 (list!5430 lt!459470) 0))))

(assert (=> d!394946 (= lt!459745 (apply!3499 (c!227386 lt!459470) 0))))

(declare-fun e!883574 () Bool)

(assert (=> d!394946 e!883574))

(declare-fun res!623665 () Bool)

(assert (=> d!394946 (=> (not res!623665) (not e!883574))))

(assert (=> d!394946 (= res!623665 (<= 0 0))))

(assert (=> d!394946 (= (apply!3491 lt!459470 0) lt!459745)))

(declare-fun b!1382864 () Bool)

(assert (=> b!1382864 (= e!883574 (< 0 (size!11510 lt!459470)))))

(assert (= (and d!394946 res!623665) b!1382864))

(assert (=> d!394946 m!1554939))

(assert (=> d!394946 m!1554939))

(declare-fun m!1555941 () Bool)

(assert (=> d!394946 m!1555941))

(declare-fun m!1555943 () Bool)

(assert (=> d!394946 m!1555943))

(declare-fun m!1555945 () Bool)

(assert (=> b!1382864 m!1555945))

(assert (=> b!1382038 d!394946))

(declare-fun b!1382865 () Bool)

(declare-fun e!883575 () Bool)

(declare-fun e!883576 () Bool)

(assert (=> b!1382865 (= e!883575 e!883576)))

(declare-fun res!623666 () Bool)

(declare-fun lt!459748 () tuple2!13632)

(assert (=> b!1382865 (= res!623666 (< (size!11517 (_2!7702 lt!459748)) (size!11517 (list!5430 lt!459487))))))

(assert (=> b!1382865 (=> (not res!623666) (not e!883576))))

(declare-fun b!1382866 () Bool)

(declare-fun e!883577 () tuple2!13632)

(assert (=> b!1382866 (= e!883577 (tuple2!13633 Nil!14036 (list!5430 lt!459487)))))

(declare-fun b!1382867 () Bool)

(assert (=> b!1382867 (= e!883575 (= (_2!7702 lt!459748) (list!5430 lt!459487)))))

(declare-fun b!1382869 () Bool)

(assert (=> b!1382869 (= e!883576 (not (isEmpty!8478 (_1!7702 lt!459748))))))

(declare-fun d!394948 () Bool)

(assert (=> d!394948 e!883575))

(declare-fun c!227548 () Bool)

(assert (=> d!394948 (= c!227548 (> (size!11520 (_1!7702 lt!459748)) 0))))

(assert (=> d!394948 (= lt!459748 e!883577)))

(declare-fun c!227549 () Bool)

(declare-fun lt!459747 () Option!2690)

(assert (=> d!394948 (= c!227549 ((_ is Some!2689) lt!459747))))

(assert (=> d!394948 (= lt!459747 (maxPrefix!1100 thiss!19762 rules!2550 (list!5430 lt!459487)))))

(assert (=> d!394948 (= (lexList!640 thiss!19762 rules!2550 (list!5430 lt!459487)) lt!459748)))

(declare-fun b!1382868 () Bool)

(declare-fun lt!459746 () tuple2!13632)

(assert (=> b!1382868 (= e!883577 (tuple2!13633 (Cons!14036 (_1!7703 (v!21527 lt!459747)) (_1!7702 lt!459746)) (_2!7702 lt!459746)))))

(assert (=> b!1382868 (= lt!459746 (lexList!640 thiss!19762 rules!2550 (_2!7703 (v!21527 lt!459747))))))

(assert (= (and d!394948 c!227549) b!1382868))

(assert (= (and d!394948 (not c!227549)) b!1382866))

(assert (= (and d!394948 c!227548) b!1382865))

(assert (= (and d!394948 (not c!227548)) b!1382867))

(assert (= (and b!1382865 res!623666) b!1382869))

(declare-fun m!1555947 () Bool)

(assert (=> b!1382865 m!1555947))

(assert (=> b!1382865 m!1554869))

(declare-fun m!1555949 () Bool)

(assert (=> b!1382865 m!1555949))

(declare-fun m!1555951 () Bool)

(assert (=> b!1382869 m!1555951))

(declare-fun m!1555953 () Bool)

(assert (=> d!394948 m!1555953))

(assert (=> d!394948 m!1554869))

(declare-fun m!1555955 () Bool)

(assert (=> d!394948 m!1555955))

(declare-fun m!1555957 () Bool)

(assert (=> b!1382868 m!1555957))

(assert (=> b!1382059 d!394948))

(declare-fun d!394950 () Bool)

(assert (=> d!394950 (= (list!5430 lt!459487) (list!5433 (c!227386 lt!459487)))))

(declare-fun bs!336691 () Bool)

(assert (= bs!336691 d!394950))

(declare-fun m!1555959 () Bool)

(assert (=> bs!336691 m!1555959))

(assert (=> b!1382059 d!394950))

(declare-fun b!1382870 () Bool)

(declare-fun e!883582 () Bool)

(assert (=> b!1382870 (= e!883582 (= (head!2511 lt!459478) (c!227387 lt!459484)))))

(declare-fun b!1382871 () Bool)

(declare-fun e!883580 () Bool)

(declare-fun e!883584 () Bool)

(assert (=> b!1382871 (= e!883580 e!883584)))

(declare-fun c!227552 () Bool)

(assert (=> b!1382871 (= c!227552 ((_ is EmptyLang!3745) lt!459484))))

(declare-fun b!1382872 () Bool)

(declare-fun res!623673 () Bool)

(assert (=> b!1382872 (=> (not res!623673) (not e!883582))))

(declare-fun call!92563 () Bool)

(assert (=> b!1382872 (= res!623673 (not call!92563))))

(declare-fun b!1382873 () Bool)

(declare-fun e!883581 () Bool)

(assert (=> b!1382873 (= e!883581 (nullable!1209 lt!459484))))

(declare-fun b!1382874 () Bool)

(declare-fun res!623669 () Bool)

(declare-fun e!883583 () Bool)

(assert (=> b!1382874 (=> res!623669 e!883583)))

(assert (=> b!1382874 (= res!623669 (not ((_ is ElementMatch!3745) lt!459484)))))

(assert (=> b!1382874 (= e!883584 e!883583)))

(declare-fun b!1382875 () Bool)

(declare-fun res!623672 () Bool)

(assert (=> b!1382875 (=> res!623672 e!883583)))

(assert (=> b!1382875 (= res!623672 e!883582)))

(declare-fun res!623667 () Bool)

(assert (=> b!1382875 (=> (not res!623667) (not e!883582))))

(declare-fun lt!459749 () Bool)

(assert (=> b!1382875 (= res!623667 lt!459749)))

(declare-fun b!1382876 () Bool)

(declare-fun e!883578 () Bool)

(assert (=> b!1382876 (= e!883583 e!883578)))

(declare-fun res!623674 () Bool)

(assert (=> b!1382876 (=> (not res!623674) (not e!883578))))

(assert (=> b!1382876 (= res!623674 (not lt!459749))))

(declare-fun b!1382878 () Bool)

(declare-fun e!883579 () Bool)

(assert (=> b!1382878 (= e!883578 e!883579)))

(declare-fun res!623668 () Bool)

(assert (=> b!1382878 (=> res!623668 e!883579)))

(assert (=> b!1382878 (= res!623668 call!92563)))

(declare-fun b!1382879 () Bool)

(assert (=> b!1382879 (= e!883579 (not (= (head!2511 lt!459478) (c!227387 lt!459484))))))

(declare-fun b!1382880 () Bool)

(declare-fun res!623670 () Bool)

(assert (=> b!1382880 (=> (not res!623670) (not e!883582))))

(assert (=> b!1382880 (= res!623670 (isEmpty!8475 (tail!2006 lt!459478)))))

(declare-fun b!1382881 () Bool)

(assert (=> b!1382881 (= e!883580 (= lt!459749 call!92563))))

(declare-fun b!1382882 () Bool)

(declare-fun res!623671 () Bool)

(assert (=> b!1382882 (=> res!623671 e!883579)))

(assert (=> b!1382882 (= res!623671 (not (isEmpty!8475 (tail!2006 lt!459478))))))

(declare-fun b!1382883 () Bool)

(assert (=> b!1382883 (= e!883584 (not lt!459749))))

(declare-fun bm!92558 () Bool)

(assert (=> bm!92558 (= call!92563 (isEmpty!8475 lt!459478))))

(declare-fun d!394952 () Bool)

(assert (=> d!394952 e!883580))

(declare-fun c!227550 () Bool)

(assert (=> d!394952 (= c!227550 ((_ is EmptyExpr!3745) lt!459484))))

(assert (=> d!394952 (= lt!459749 e!883581)))

(declare-fun c!227551 () Bool)

(assert (=> d!394952 (= c!227551 (isEmpty!8475 lt!459478))))

(assert (=> d!394952 (validRegex!1629 lt!459484)))

(assert (=> d!394952 (= (matchR!1736 lt!459484 lt!459478) lt!459749)))

(declare-fun b!1382877 () Bool)

(assert (=> b!1382877 (= e!883581 (matchR!1736 (derivativeStep!967 lt!459484 (head!2511 lt!459478)) (tail!2006 lt!459478)))))

(assert (= (and d!394952 c!227551) b!1382873))

(assert (= (and d!394952 (not c!227551)) b!1382877))

(assert (= (and d!394952 c!227550) b!1382881))

(assert (= (and d!394952 (not c!227550)) b!1382871))

(assert (= (and b!1382871 c!227552) b!1382883))

(assert (= (and b!1382871 (not c!227552)) b!1382874))

(assert (= (and b!1382874 (not res!623669)) b!1382875))

(assert (= (and b!1382875 res!623667) b!1382872))

(assert (= (and b!1382872 res!623673) b!1382880))

(assert (= (and b!1382880 res!623670) b!1382870))

(assert (= (and b!1382875 (not res!623672)) b!1382876))

(assert (= (and b!1382876 res!623674) b!1382878))

(assert (= (and b!1382878 (not res!623668)) b!1382882))

(assert (= (and b!1382882 (not res!623671)) b!1382879))

(assert (= (or b!1382881 b!1382872 b!1382878) bm!92558))

(declare-fun m!1555961 () Bool)

(assert (=> b!1382879 m!1555961))

(declare-fun m!1555963 () Bool)

(assert (=> bm!92558 m!1555963))

(assert (=> b!1382877 m!1555961))

(assert (=> b!1382877 m!1555961))

(declare-fun m!1555965 () Bool)

(assert (=> b!1382877 m!1555965))

(assert (=> b!1382877 m!1555343))

(assert (=> b!1382877 m!1555965))

(assert (=> b!1382877 m!1555343))

(declare-fun m!1555967 () Bool)

(assert (=> b!1382877 m!1555967))

(assert (=> b!1382880 m!1555343))

(assert (=> b!1382880 m!1555343))

(declare-fun m!1555969 () Bool)

(assert (=> b!1382880 m!1555969))

(declare-fun m!1555971 () Bool)

(assert (=> b!1382873 m!1555971))

(assert (=> b!1382870 m!1555961))

(assert (=> d!394952 m!1555963))

(assert (=> d!394952 m!1555435))

(assert (=> b!1382882 m!1555343))

(assert (=> b!1382882 m!1555343))

(assert (=> b!1382882 m!1555969))

(assert (=> b!1382037 d!394952))

(declare-fun d!394954 () Bool)

(assert (=> d!394954 (= (isEmpty!8469 rules!2550) ((_ is Nil!14037) rules!2550))))

(assert (=> b!1382058 d!394954))

(declare-fun d!394956 () Bool)

(declare-fun lt!459750 () Bool)

(assert (=> d!394956 (= lt!459750 (select (content!2049 rules!2550) (rule!4190 t1!34)))))

(declare-fun e!883585 () Bool)

(assert (=> d!394956 (= lt!459750 e!883585)))

(declare-fun res!623676 () Bool)

(assert (=> d!394956 (=> (not res!623676) (not e!883585))))

(assert (=> d!394956 (= res!623676 ((_ is Cons!14037) rules!2550))))

(assert (=> d!394956 (= (contains!2672 rules!2550 (rule!4190 t1!34)) lt!459750)))

(declare-fun b!1382884 () Bool)

(declare-fun e!883586 () Bool)

(assert (=> b!1382884 (= e!883585 e!883586)))

(declare-fun res!623675 () Bool)

(assert (=> b!1382884 (=> res!623675 e!883586)))

(assert (=> b!1382884 (= res!623675 (= (h!19438 rules!2550) (rule!4190 t1!34)))))

(declare-fun b!1382885 () Bool)

(assert (=> b!1382885 (= e!883586 (contains!2672 (t!122056 rules!2550) (rule!4190 t1!34)))))

(assert (= (and d!394956 res!623676) b!1382884))

(assert (= (and b!1382884 (not res!623675)) b!1382885))

(assert (=> d!394956 m!1555191))

(declare-fun m!1555973 () Bool)

(assert (=> d!394956 m!1555973))

(declare-fun m!1555975 () Bool)

(assert (=> b!1382885 m!1555975))

(assert (=> b!1382036 d!394956))

(declare-fun b!1382897 () Bool)

(declare-fun e!883589 () Bool)

(declare-fun tp!396085 () Bool)

(declare-fun tp!396087 () Bool)

(assert (=> b!1382897 (= e!883589 (and tp!396085 tp!396087))))

(declare-fun b!1382898 () Bool)

(declare-fun tp!396088 () Bool)

(assert (=> b!1382898 (= e!883589 tp!396088)))

(assert (=> b!1382041 (= tp!396019 e!883589)))

(declare-fun b!1382899 () Bool)

(declare-fun tp!396086 () Bool)

(declare-fun tp!396084 () Bool)

(assert (=> b!1382899 (= e!883589 (and tp!396086 tp!396084))))

(declare-fun b!1382896 () Bool)

(declare-fun tp_is_empty!6767 () Bool)

(assert (=> b!1382896 (= e!883589 tp_is_empty!6767)))

(assert (= (and b!1382041 ((_ is ElementMatch!3745) (regex!2431 (h!19438 rules!2550)))) b!1382896))

(assert (= (and b!1382041 ((_ is Concat!6267) (regex!2431 (h!19438 rules!2550)))) b!1382897))

(assert (= (and b!1382041 ((_ is Star!3745) (regex!2431 (h!19438 rules!2550)))) b!1382898))

(assert (= (and b!1382041 ((_ is Union!3745) (regex!2431 (h!19438 rules!2550)))) b!1382899))

(declare-fun b!1382901 () Bool)

(declare-fun e!883590 () Bool)

(declare-fun tp!396090 () Bool)

(declare-fun tp!396092 () Bool)

(assert (=> b!1382901 (= e!883590 (and tp!396090 tp!396092))))

(declare-fun b!1382902 () Bool)

(declare-fun tp!396093 () Bool)

(assert (=> b!1382902 (= e!883590 tp!396093)))

(assert (=> b!1382046 (= tp!396024 e!883590)))

(declare-fun b!1382903 () Bool)

(declare-fun tp!396091 () Bool)

(declare-fun tp!396089 () Bool)

(assert (=> b!1382903 (= e!883590 (and tp!396091 tp!396089))))

(declare-fun b!1382900 () Bool)

(assert (=> b!1382900 (= e!883590 tp_is_empty!6767)))

(assert (= (and b!1382046 ((_ is ElementMatch!3745) (regex!2431 (rule!4190 t2!34)))) b!1382900))

(assert (= (and b!1382046 ((_ is Concat!6267) (regex!2431 (rule!4190 t2!34)))) b!1382901))

(assert (= (and b!1382046 ((_ is Star!3745) (regex!2431 (rule!4190 t2!34)))) b!1382902))

(assert (= (and b!1382046 ((_ is Union!3745) (regex!2431 (rule!4190 t2!34)))) b!1382903))

(declare-fun b!1382908 () Bool)

(declare-fun e!883593 () Bool)

(declare-fun tp!396096 () Bool)

(assert (=> b!1382908 (= e!883593 (and tp_is_empty!6767 tp!396096))))

(assert (=> b!1382061 (= tp!396022 e!883593)))

(assert (= (and b!1382061 ((_ is Cons!14035) (originalCharacters!3293 t2!34))) b!1382908))

(declare-fun b!1382909 () Bool)

(declare-fun e!883594 () Bool)

(declare-fun tp!396097 () Bool)

(assert (=> b!1382909 (= e!883594 (and tp_is_empty!6767 tp!396097))))

(assert (=> b!1382034 (= tp!396013 e!883594)))

(assert (= (and b!1382034 ((_ is Cons!14035) (originalCharacters!3293 t1!34))) b!1382909))

(declare-fun b!1382911 () Bool)

(declare-fun e!883595 () Bool)

(declare-fun tp!396099 () Bool)

(declare-fun tp!396101 () Bool)

(assert (=> b!1382911 (= e!883595 (and tp!396099 tp!396101))))

(declare-fun b!1382912 () Bool)

(declare-fun tp!396102 () Bool)

(assert (=> b!1382912 (= e!883595 tp!396102)))

(assert (=> b!1382044 (= tp!396023 e!883595)))

(declare-fun b!1382913 () Bool)

(declare-fun tp!396100 () Bool)

(declare-fun tp!396098 () Bool)

(assert (=> b!1382913 (= e!883595 (and tp!396100 tp!396098))))

(declare-fun b!1382910 () Bool)

(assert (=> b!1382910 (= e!883595 tp_is_empty!6767)))

(assert (= (and b!1382044 ((_ is ElementMatch!3745) (regex!2431 (rule!4190 t1!34)))) b!1382910))

(assert (= (and b!1382044 ((_ is Concat!6267) (regex!2431 (rule!4190 t1!34)))) b!1382911))

(assert (= (and b!1382044 ((_ is Star!3745) (regex!2431 (rule!4190 t1!34)))) b!1382912))

(assert (= (and b!1382044 ((_ is Union!3745) (regex!2431 (rule!4190 t1!34)))) b!1382913))

(declare-fun b!1382924 () Bool)

(declare-fun b_free!33619 () Bool)

(declare-fun b_next!34323 () Bool)

(assert (=> b!1382924 (= b_free!33619 (not b_next!34323))))

(declare-fun tp!396111 () Bool)

(declare-fun b_and!92691 () Bool)

(assert (=> b!1382924 (= tp!396111 b_and!92691)))

(declare-fun b_free!33621 () Bool)

(declare-fun b_next!34325 () Bool)

(assert (=> b!1382924 (= b_free!33621 (not b_next!34325))))

(declare-fun tb!72581 () Bool)

(declare-fun t!122092 () Bool)

(assert (=> (and b!1382924 (= (toChars!3573 (transformation!2431 (h!19438 (t!122056 rules!2550)))) (toChars!3573 (transformation!2431 (rule!4190 t1!34)))) t!122092) tb!72581))

(declare-fun result!88170 () Bool)

(assert (= result!88170 result!88140))

(assert (=> b!1382555 t!122092))

(declare-fun tb!72583 () Bool)

(declare-fun t!122094 () Bool)

(assert (=> (and b!1382924 (= (toChars!3573 (transformation!2431 (h!19438 (t!122056 rules!2550)))) (toChars!3573 (transformation!2431 (rule!4190 t2!34)))) t!122094) tb!72583))

(declare-fun result!88172 () Bool)

(assert (= result!88172 result!88148))

(assert (=> b!1382569 t!122094))

(assert (=> d!394818 t!122092))

(assert (=> d!394868 t!122094))

(declare-fun tp!396112 () Bool)

(declare-fun b_and!92693 () Bool)

(assert (=> b!1382924 (= tp!396112 (and (=> t!122092 result!88170) (=> t!122094 result!88172) b_and!92693))))

(declare-fun e!883607 () Bool)

(assert (=> b!1382924 (= e!883607 (and tp!396111 tp!396112))))

(declare-fun e!883605 () Bool)

(declare-fun b!1382923 () Bool)

(declare-fun tp!396114 () Bool)

(assert (=> b!1382923 (= e!883605 (and tp!396114 (inv!18373 (tag!2693 (h!19438 (t!122056 rules!2550)))) (inv!18377 (transformation!2431 (h!19438 (t!122056 rules!2550)))) e!883607))))

(declare-fun b!1382922 () Bool)

(declare-fun e!883606 () Bool)

(declare-fun tp!396113 () Bool)

(assert (=> b!1382922 (= e!883606 (and e!883605 tp!396113))))

(assert (=> b!1382063 (= tp!396016 e!883606)))

(assert (= b!1382923 b!1382924))

(assert (= b!1382922 b!1382923))

(assert (= (and b!1382063 ((_ is Cons!14037) (t!122056 rules!2550))) b!1382922))

(declare-fun m!1555977 () Bool)

(assert (=> b!1382923 m!1555977))

(declare-fun m!1555979 () Bool)

(assert (=> b!1382923 m!1555979))

(declare-fun b_lambda!42657 () Bool)

(assert (= b_lambda!42653 (or b!1382040 b_lambda!42657)))

(declare-fun bs!336692 () Bool)

(declare-fun d!394958 () Bool)

(assert (= bs!336692 (and d!394958 b!1382040)))

(assert (=> bs!336692 (= (dynLambda!6401 lambda!59352 lt!459742) (= (regex!2431 lt!459742) lt!459473))))

(assert (=> d!394940 d!394958))

(declare-fun b_lambda!42659 () Bool)

(assert (= b_lambda!42619 (or b!1382054 b_lambda!42659)))

(declare-fun bs!336693 () Bool)

(declare-fun d!394960 () Bool)

(assert (= bs!336693 (and d!394960 b!1382054)))

(declare-fun ruleValid!596 (LexerInterface!2126 Rule!4662) Bool)

(assert (=> bs!336693 (= (dynLambda!6401 lambda!59353 lt!459469) (ruleValid!596 thiss!19762 lt!459469))))

(declare-fun m!1555981 () Bool)

(assert (=> bs!336693 m!1555981))

(assert (=> d!394864 d!394960))

(declare-fun b_lambda!42661 () Bool)

(assert (= b_lambda!42615 (or b!1382054 b_lambda!42661)))

(declare-fun bs!336694 () Bool)

(declare-fun d!394962 () Bool)

(assert (= bs!336694 (and d!394962 b!1382054)))

(assert (=> bs!336694 (= (dynLambda!6401 lambda!59353 (rule!4190 t2!34)) (ruleValid!596 thiss!19762 (rule!4190 t2!34)))))

(declare-fun m!1555983 () Bool)

(assert (=> bs!336694 m!1555983))

(assert (=> d!394852 d!394962))

(declare-fun b_lambda!42663 () Bool)

(assert (= b_lambda!42589 (or b!1382062 b_lambda!42663)))

(declare-fun bs!336695 () Bool)

(declare-fun d!394964 () Bool)

(assert (= bs!336695 (and d!394964 b!1382062)))

(assert (=> bs!336695 (= (dynLambda!6396 lambda!59350 (h!19438 rules!2550)) (regex!2431 (h!19438 rules!2550)))))

(assert (=> b!1382347 d!394964))

(declare-fun b_lambda!42665 () Bool)

(assert (= b_lambda!42617 (or b!1382054 b_lambda!42665)))

(declare-fun bs!336696 () Bool)

(declare-fun d!394966 () Bool)

(assert (= bs!336696 (and d!394966 b!1382054)))

(assert (=> bs!336696 (= (dynLambda!6401 lambda!59353 (rule!4190 t1!34)) (ruleValid!596 thiss!19762 (rule!4190 t1!34)))))

(declare-fun m!1555985 () Bool)

(assert (=> bs!336696 m!1555985))

(assert (=> d!394862 d!394966))

(declare-fun b_lambda!42667 () Bool)

(assert (= b_lambda!42621 (or (and b!1382069 b_free!33605) (and b!1382051 b_free!33609 (= (toChars!3573 (transformation!2431 (h!19438 rules!2550))) (toChars!3573 (transformation!2431 (rule!4190 t2!34))))) (and b!1382052 b_free!33613 (= (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (toChars!3573 (transformation!2431 (rule!4190 t2!34))))) (and b!1382924 b_free!33621 (= (toChars!3573 (transformation!2431 (h!19438 (t!122056 rules!2550)))) (toChars!3573 (transformation!2431 (rule!4190 t2!34))))) b_lambda!42667)))

(declare-fun b_lambda!42669 () Bool)

(assert (= b_lambda!42603 (or b!1382048 b_lambda!42669)))

(declare-fun bs!336697 () Bool)

(declare-fun d!394968 () Bool)

(assert (= bs!336697 (and d!394968 b!1382048)))

(declare-fun res!623677 () Bool)

(declare-fun e!883608 () Bool)

(assert (=> bs!336697 (=> (not res!623677) (not e!883608))))

(assert (=> bs!336697 (= res!623677 (matchR!1736 lt!459484 lt!459615))))

(assert (=> bs!336697 (= (dynLambda!6398 lambda!59349 lt!459615) e!883608)))

(declare-fun b!1382925 () Bool)

(assert (=> b!1382925 (= e!883608 (isPrefix!1135 lt!459490 lt!459615))))

(assert (= (and bs!336697 res!623677) b!1382925))

(declare-fun m!1555987 () Bool)

(assert (=> bs!336697 m!1555987))

(declare-fun m!1555989 () Bool)

(assert (=> b!1382925 m!1555989))

(assert (=> d!394764 d!394968))

(declare-fun b_lambda!42671 () Bool)

(assert (= b_lambda!42607 (or (and b!1382069 b_free!33605 (= (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (toChars!3573 (transformation!2431 (rule!4190 t1!34))))) (and b!1382051 b_free!33609 (= (toChars!3573 (transformation!2431 (h!19438 rules!2550))) (toChars!3573 (transformation!2431 (rule!4190 t1!34))))) (and b!1382052 b_free!33613) (and b!1382924 b_free!33621 (= (toChars!3573 (transformation!2431 (h!19438 (t!122056 rules!2550)))) (toChars!3573 (transformation!2431 (rule!4190 t1!34))))) b_lambda!42671)))

(declare-fun b_lambda!42673 () Bool)

(assert (= b_lambda!42591 (or b!1382062 b_lambda!42673)))

(declare-fun bs!336698 () Bool)

(declare-fun d!394970 () Bool)

(assert (= bs!336698 (and d!394970 b!1382062)))

(declare-fun res!623678 () Bool)

(declare-fun e!883609 () Bool)

(assert (=> bs!336698 (=> (not res!623678) (not e!883609))))

(assert (=> bs!336698 (= res!623678 (validRegex!1629 lt!459584))))

(assert (=> bs!336698 (= (dynLambda!6397 lambda!59351 lt!459584) e!883609)))

(declare-fun b!1382926 () Bool)

(assert (=> b!1382926 (= e!883609 (matchR!1736 lt!459584 lt!459478))))

(assert (= (and bs!336698 res!623678) b!1382926))

(declare-fun m!1555991 () Bool)

(assert (=> bs!336698 m!1555991))

(declare-fun m!1555993 () Bool)

(assert (=> b!1382926 m!1555993))

(assert (=> d!394726 d!394970))

(declare-fun b_lambda!42675 () Bool)

(assert (= b_lambda!42609 (or (and b!1382069 b_free!33605) (and b!1382051 b_free!33609 (= (toChars!3573 (transformation!2431 (h!19438 rules!2550))) (toChars!3573 (transformation!2431 (rule!4190 t2!34))))) (and b!1382052 b_free!33613 (= (toChars!3573 (transformation!2431 (rule!4190 t1!34))) (toChars!3573 (transformation!2431 (rule!4190 t2!34))))) (and b!1382924 b_free!33621 (= (toChars!3573 (transformation!2431 (h!19438 (t!122056 rules!2550)))) (toChars!3573 (transformation!2431 (rule!4190 t2!34))))) b_lambda!42675)))

(declare-fun b_lambda!42677 () Bool)

(assert (= b_lambda!42655 (or b!1382040 b_lambda!42677)))

(declare-fun bs!336699 () Bool)

(declare-fun d!394972 () Bool)

(assert (= bs!336699 (and d!394972 b!1382040)))

(assert (=> bs!336699 (= (dynLambda!6401 lambda!59352 (h!19438 rules!2550)) (= (regex!2431 (h!19438 rules!2550)) lt!459473))))

(assert (=> b!1382855 d!394972))

(declare-fun b_lambda!42679 () Bool)

(assert (= b_lambda!42593 (or b!1382062 b_lambda!42679)))

(declare-fun bs!336700 () Bool)

(declare-fun d!394974 () Bool)

(assert (= bs!336700 (and d!394974 b!1382062)))

(declare-fun res!623679 () Bool)

(declare-fun e!883610 () Bool)

(assert (=> bs!336700 (=> (not res!623679) (not e!883610))))

(assert (=> bs!336700 (= res!623679 (validRegex!1629 (h!19439 (map!3107 rules!2550 lambda!59350))))))

(assert (=> bs!336700 (= (dynLambda!6397 lambda!59351 (h!19439 (map!3107 rules!2550 lambda!59350))) e!883610)))

(declare-fun b!1382927 () Bool)

(assert (=> b!1382927 (= e!883610 (matchR!1736 (h!19439 (map!3107 rules!2550 lambda!59350)) lt!459478))))

(assert (= (and bs!336700 res!623679) b!1382927))

(declare-fun m!1555995 () Bool)

(assert (=> bs!336700 m!1555995))

(declare-fun m!1555997 () Bool)

(assert (=> b!1382927 m!1555997))

(assert (=> b!1382376 d!394974))

(declare-fun b_lambda!42681 () Bool)

(assert (= b_lambda!42611 (or (and b!1382069 b_free!33605 (= (toChars!3573 (transformation!2431 (rule!4190 t2!34))) (toChars!3573 (transformation!2431 (rule!4190 t1!34))))) (and b!1382051 b_free!33609 (= (toChars!3573 (transformation!2431 (h!19438 rules!2550))) (toChars!3573 (transformation!2431 (rule!4190 t1!34))))) (and b!1382052 b_free!33613) (and b!1382924 b_free!33621 (= (toChars!3573 (transformation!2431 (h!19438 (t!122056 rules!2550)))) (toChars!3573 (transformation!2431 (rule!4190 t1!34))))) b_lambda!42681)))

(check-sat (not b!1382926) (not bm!92517) (not b_next!34311) (not b!1382578) (not d!394956) (not b!1382864) (not b_lambda!42665) (not b_next!34325) (not b!1382841) (not b!1382381) (not b!1382908) (not b!1382211) (not b_lambda!42659) (not d!394868) (not bm!92540) (not b!1382280) (not b!1382925) (not b!1382706) (not d!394788) (not b_next!34307) (not b!1382284) (not b!1382576) (not b_lambda!42661) (not d!394810) (not d!394722) (not b!1382858) (not b!1382591) b_and!92627 (not d!394932) b_and!92691 (not d!394772) (not d!394818) (not d!394944) (not b!1382651) (not b!1382548) (not b_next!34323) (not b!1382839) (not d!394700) (not b!1382831) (not b!1382246) (not b!1382307) tp_is_empty!6767 (not b!1382281) (not b!1382837) b_and!92635 (not b!1382572) (not b!1382602) (not b!1382313) (not d!394756) (not b!1382903) (not d!394946) (not d!394774) (not b!1382428) (not b!1382838) (not d!394928) (not b!1382579) (not b!1382245) (not b!1382898) (not b!1382868) (not b_lambda!42673) (not b!1382725) (not d!394776) (not d!394866) (not d!394952) (not d!394904) (not d!394730) (not b_lambda!42677) (not d!394816) (not d!394706) (not b!1382653) (not b!1382700) (not b!1382305) (not d!394826) (not b!1382474) (not bm!92528) (not d!394926) (not d!394696) (not d!394862) (not b!1382815) (not b!1382465) (not b!1382122) (not b!1382695) (not b!1382601) b_and!92681 (not b!1382421) (not b!1382913) (not b!1382575) (not d!394942) (not b!1382711) (not b!1382279) (not b!1382899) (not b!1382640) (not d!394724) (not b!1382219) (not d!394666) (not d!394712) (not b!1382733) (not d!394950) (not b!1382574) (not b!1382830) (not d!394764) (not b!1382632) (not d!394852) (not b!1382859) (not b!1382833) (not b!1382513) (not tb!72565) (not bs!336693) (not d!394930) (not b!1382555) (not b!1382431) (not b!1382927) (not b_lambda!42679) (not b!1382863) (not b!1382909) (not b!1382556) (not b_lambda!42681) (not d!394882) (not d!394934) (not b!1382580) (not b!1382832) (not b!1382278) (not d!394948) (not b!1382571) (not b_lambda!42669) (not b!1382283) b_and!92683 (not b!1382819) (not d!394786) (not b!1382877) (not b_next!34315) (not b!1382212) (not d!394938) (not b!1382282) (not b!1382879) (not b!1382594) (not b_next!34313) (not b!1382600) (not b!1382614) (not b!1382615) (not b!1382595) (not b!1382728) (not b!1382377) (not bm!92518) (not b!1382697) (not d!394936) (not b!1382724) (not b!1382873) (not b!1382570) (not d!394880) (not d!394726) (not d!394848) (not b!1382639) (not b!1382567) (not d!394870) (not d!394812) (not b!1382856) (not bs!336696) (not b!1382708) (not bm!92522) (not b!1382734) (not bm!92519) (not b!1382378) (not d!394802) (not b!1382911) (not bs!336700) (not b!1382655) (not b!1382923) (not d!394804) (not b!1382922) (not b_next!34317) (not d!394940) (not bs!336698) (not d!394760) (not b!1382902) (not b!1382433) (not d!394750) (not d!394864) (not b!1382901) (not b!1382912) (not b!1382882) (not d!394806) b_and!92685 (not d!394814) (not b!1382885) (not d!394872) (not b!1382880) (not b!1382276) (not d!394886) (not b!1382869) (not b!1382840) (not b_lambda!42667) (not b!1382424) (not b_lambda!42663) (not bm!92558) (not d!394704) (not bm!92537) (not b_lambda!42671) (not b!1382897) (not b!1382861) (not b_next!34309) (not d!394674) (not b!1382577) (not d!394720) (not b!1382213) (not d!394820) b_and!92693 (not bs!336694) (not d!394808) (not d!394884) (not b!1382870) (not b!1382569) (not b!1382726) b_and!92631 (not b!1382817) (not tb!72571) (not b!1382430) (not b_lambda!42657) (not bm!92556) (not b_lambda!42675) (not b!1382464) (not bs!336697) (not b!1382696) (not b!1382709) (not d!394714) (not b!1382865) (not d!394902) (not d!394830) (not bm!92536) (not b!1382347))
(check-sat (not b_next!34307) (not b_next!34323) b_and!92635 b_and!92681 (not b_next!34313) (not b_next!34317) b_and!92685 (not b_next!34309) b_and!92693 b_and!92631 (not b_next!34311) (not b_next!34325) b_and!92627 b_and!92691 b_and!92683 (not b_next!34315))
