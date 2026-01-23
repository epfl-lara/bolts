; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117926 () Bool)

(assert start!117926)

(declare-fun b!1326943 () Bool)

(declare-fun b_free!32067 () Bool)

(declare-fun b_next!32771 () Bool)

(assert (=> b!1326943 (= b_free!32067 (not b_next!32771))))

(declare-fun tp!384616 () Bool)

(declare-fun b_and!88639 () Bool)

(assert (=> b!1326943 (= tp!384616 b_and!88639)))

(declare-fun b_free!32069 () Bool)

(declare-fun b_next!32773 () Bool)

(assert (=> b!1326943 (= b_free!32069 (not b_next!32773))))

(declare-fun tp!384617 () Bool)

(declare-fun b_and!88641 () Bool)

(assert (=> b!1326943 (= tp!384617 b_and!88641)))

(declare-fun b!1326945 () Bool)

(declare-fun b_free!32071 () Bool)

(declare-fun b_next!32775 () Bool)

(assert (=> b!1326945 (= b_free!32071 (not b_next!32775))))

(declare-fun tp!384615 () Bool)

(declare-fun b_and!88643 () Bool)

(assert (=> b!1326945 (= tp!384615 b_and!88643)))

(declare-fun b_free!32073 () Bool)

(declare-fun b_next!32777 () Bool)

(assert (=> b!1326945 (= b_free!32073 (not b_next!32777))))

(declare-fun tp!384610 () Bool)

(declare-fun b_and!88645 () Bool)

(assert (=> b!1326945 (= tp!384610 b_and!88645)))

(declare-fun b!1326975 () Bool)

(declare-fun b_free!32075 () Bool)

(declare-fun b_next!32779 () Bool)

(assert (=> b!1326975 (= b_free!32075 (not b_next!32779))))

(declare-fun tp!384619 () Bool)

(declare-fun b_and!88647 () Bool)

(assert (=> b!1326975 (= tp!384619 b_and!88647)))

(declare-fun b_free!32077 () Bool)

(declare-fun b_next!32781 () Bool)

(assert (=> b!1326975 (= b_free!32077 (not b_next!32781))))

(declare-fun tp!384612 () Bool)

(declare-fun b_and!88649 () Bool)

(assert (=> b!1326975 (= tp!384612 b_and!88649)))

(declare-fun b!1326954 () Bool)

(assert (=> b!1326954 true))

(assert (=> b!1326954 true))

(declare-fun b!1326946 () Bool)

(assert (=> b!1326946 true))

(declare-fun b!1326966 () Bool)

(assert (=> b!1326966 true))

(declare-fun bs!331400 () Bool)

(declare-fun b!1326950 () Bool)

(assert (= bs!331400 (and b!1326950 b!1326966)))

(declare-fun lambda!54873 () Int)

(declare-fun lambda!54872 () Int)

(assert (=> bs!331400 (not (= lambda!54873 lambda!54872))))

(assert (=> b!1326950 true))

(declare-fun b!1326939 () Bool)

(declare-fun e!850203 () Bool)

(declare-fun e!850183 () Bool)

(assert (=> b!1326939 (= e!850203 e!850183)))

(declare-fun res!597361 () Bool)

(assert (=> b!1326939 (=> res!597361 e!850183)))

(declare-datatypes ((C!7584 0))(
  ( (C!7585 (val!4352 Int)) )
))
(declare-datatypes ((Regex!3647 0))(
  ( (ElementMatch!3647 (c!217586 C!7584)) (Concat!6070 (regOne!7806 Regex!3647) (regTwo!7806 Regex!3647)) (EmptyExpr!3647) (Star!3647 (reg!3976 Regex!3647)) (EmptyLang!3647) (Union!3647 (regOne!7807 Regex!3647) (regTwo!7807 Regex!3647)) )
))
(declare-fun lt!438655 () Regex!3647)

(declare-fun lambda!54870 () Int)

(declare-datatypes ((List!13542 0))(
  ( (Nil!13476) (Cons!13476 (h!18877 (_ BitVec 16)) (t!118843 List!13542)) )
))
(declare-datatypes ((TokenValue!2423 0))(
  ( (FloatLiteralValue!4846 (text!17406 List!13542)) (TokenValueExt!2422 (__x!8675 Int)) (Broken!12115 (value!76097 List!13542)) (Object!2488) (End!2423) (Def!2423) (Underscore!2423) (Match!2423) (Else!2423) (Error!2423) (Case!2423) (If!2423) (Extends!2423) (Abstract!2423) (Class!2423) (Val!2423) (DelimiterValue!4846 (del!2483 List!13542)) (KeywordValue!2429 (value!76098 List!13542)) (CommentValue!4846 (value!76099 List!13542)) (WhitespaceValue!4846 (value!76100 List!13542)) (IndentationValue!2423 (value!76101 List!13542)) (String!16350) (Int32!2423) (Broken!12116 (value!76102 List!13542)) (Boolean!2424) (Unit!19567) (OperatorValue!2426 (op!2483 List!13542)) (IdentifierValue!4846 (value!76103 List!13542)) (IdentifierValue!4847 (value!76104 List!13542)) (WhitespaceValue!4847 (value!76105 List!13542)) (True!4846) (False!4846) (Broken!12117 (value!76106 List!13542)) (Broken!12118 (value!76107 List!13542)) (True!4847) (RightBrace!2423) (RightBracket!2423) (Colon!2423) (Null!2423) (Comma!2423) (LeftBracket!2423) (False!4847) (LeftBrace!2423) (ImaginaryLiteralValue!2423 (text!17407 List!13542)) (StringLiteralValue!7269 (value!76108 List!13542)) (EOFValue!2423 (value!76109 List!13542)) (IdentValue!2423 (value!76110 List!13542)) (DelimiterValue!4847 (value!76111 List!13542)) (DedentValue!2423 (value!76112 List!13542)) (NewLineValue!2423 (value!76113 List!13542)) (IntegerValue!7269 (value!76114 (_ BitVec 32)) (text!17408 List!13542)) (IntegerValue!7270 (value!76115 Int) (text!17409 List!13542)) (Times!2423) (Or!2423) (Equal!2423) (Minus!2423) (Broken!12119 (value!76116 List!13542)) (And!2423) (Div!2423) (LessEqual!2423) (Mod!2423) (Concat!6071) (Not!2423) (Plus!2423) (SpaceValue!2423 (value!76117 List!13542)) (IntegerValue!7271 (value!76118 Int) (text!17410 List!13542)) (StringLiteralValue!7270 (text!17411 List!13542)) (FloatLiteralValue!4847 (text!17412 List!13542)) (BytesLiteralValue!2423 (value!76119 List!13542)) (CommentValue!4847 (value!76120 List!13542)) (StringLiteralValue!7271 (value!76121 List!13542)) (ErrorTokenValue!2423 (msg!2484 List!13542)) )
))
(declare-datatypes ((List!13543 0))(
  ( (Nil!13477) (Cons!13477 (h!18878 C!7584) (t!118844 List!13543)) )
))
(declare-datatypes ((IArray!8877 0))(
  ( (IArray!8878 (innerList!4496 List!13543)) )
))
(declare-datatypes ((Conc!4436 0))(
  ( (Node!4436 (left!11576 Conc!4436) (right!11906 Conc!4436) (csize!9102 Int) (cheight!4647 Int)) (Leaf!6799 (xs!7151 IArray!8877) (csize!9103 Int)) (Empty!4436) )
))
(declare-datatypes ((BalanceConc!8812 0))(
  ( (BalanceConc!8813 (c!217587 Conc!4436)) )
))
(declare-datatypes ((String!16351 0))(
  ( (String!16352 (value!76122 String)) )
))
(declare-datatypes ((TokenValueInjection!4506 0))(
  ( (TokenValueInjection!4507 (toValue!3564 Int) (toChars!3423 Int)) )
))
(declare-datatypes ((Rule!4466 0))(
  ( (Rule!4467 (regex!2333 Regex!3647) (tag!2595 String!16351) (isSeparator!2333 Bool) (transformation!2333 TokenValueInjection!4506)) )
))
(declare-datatypes ((List!13544 0))(
  ( (Nil!13478) (Cons!13478 (h!18879 Rule!4466) (t!118845 List!13544)) )
))
(declare-fun rules!2550 () List!13544)

(declare-datatypes ((List!13545 0))(
  ( (Nil!13479) (Cons!13479 (h!18880 Regex!3647) (t!118846 List!13545)) )
))
(declare-fun contains!2415 (List!13545 Regex!3647) Bool)

(declare-fun map!2966 (List!13544 Int) List!13545)

(assert (=> b!1326939 (= res!597361 (not (contains!2415 (map!2966 rules!2550 lambda!54870) lt!438655)))))

(declare-fun lambda!54871 () Int)

(declare-fun getWitness!260 (List!13545 Int) Regex!3647)

(assert (=> b!1326939 (= lt!438655 (getWitness!260 (map!2966 rules!2550 lambda!54870) lambda!54871))))

(declare-fun b!1326940 () Bool)

(declare-fun res!597366 () Bool)

(declare-fun e!850186 () Bool)

(assert (=> b!1326940 (=> res!597366 e!850186)))

(declare-datatypes ((Token!4328 0))(
  ( (Token!4329 (value!76123 TokenValue!2423) (rule!4078 Rule!4466) (size!10972 Int) (originalCharacters!3195 List!13543)) )
))
(declare-fun t2!34 () Token!4328)

(declare-fun lt!438652 () List!13543)

(declare-fun matchR!1649 (Regex!3647 List!13543) Bool)

(assert (=> b!1326940 (= res!597366 (not (matchR!1649 (regex!2333 (rule!4078 t2!34)) lt!438652)))))

(declare-fun b!1326941 () Bool)

(declare-fun res!597351 () Bool)

(declare-fun e!850198 () Bool)

(assert (=> b!1326941 (=> res!597351 e!850198)))

(declare-datatypes ((List!13546 0))(
  ( (Nil!13480) (Cons!13480 (h!18881 Token!4328) (t!118847 List!13546)) )
))
(declare-datatypes ((IArray!8879 0))(
  ( (IArray!8880 (innerList!4497 List!13546)) )
))
(declare-datatypes ((Conc!4437 0))(
  ( (Node!4437 (left!11577 Conc!4437) (right!11907 Conc!4437) (csize!9104 Int) (cheight!4648 Int)) (Leaf!6800 (xs!7152 IArray!8879) (csize!9105 Int)) (Empty!4437) )
))
(declare-datatypes ((BalanceConc!8814 0))(
  ( (BalanceConc!8815 (c!217588 Conc!4437)) )
))
(declare-datatypes ((tuple2!13118 0))(
  ( (tuple2!13119 (_1!7445 BalanceConc!8814) (_2!7445 BalanceConc!8812)) )
))
(declare-fun lt!438674 () tuple2!13118)

(declare-fun isEmpty!8022 (BalanceConc!8812) Bool)

(assert (=> b!1326941 (= res!597351 (not (isEmpty!8022 (_2!7445 lt!438674))))))

(declare-fun b!1326942 () Bool)

(declare-datatypes ((Unit!19568 0))(
  ( (Unit!19569) )
))
(declare-fun e!850205 () Unit!19568)

(declare-fun Unit!19570 () Unit!19568)

(assert (=> b!1326942 (= e!850205 Unit!19570)))

(declare-fun lt!438659 () Unit!19568)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!144 (Regex!3647 List!13543 C!7584) Unit!19568)

(declare-fun head!2324 (List!13543) C!7584)

(assert (=> b!1326942 (= lt!438659 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!144 (regex!2333 (rule!4078 t2!34)) lt!438652 (head!2324 lt!438652)))))

(assert (=> b!1326942 false))

(declare-fun e!850208 () Bool)

(assert (=> b!1326943 (= e!850208 (and tp!384616 tp!384617))))

(declare-fun b!1326944 () Bool)

(declare-fun res!597372 () Bool)

(assert (=> b!1326944 (=> res!597372 e!850198)))

(declare-fun lt!438667 () BalanceConc!8812)

(declare-datatypes ((LexerInterface!2028 0))(
  ( (LexerInterfaceExt!2025 (__x!8676 Int)) (Lexer!2026) )
))
(declare-fun thiss!19762 () LexerInterface!2028)

(declare-fun lt!438658 () List!13546)

(declare-datatypes ((tuple2!13120 0))(
  ( (tuple2!13121 (_1!7446 List!13546) (_2!7446 List!13543)) )
))
(declare-fun lexList!566 (LexerInterface!2028 List!13544 List!13543) tuple2!13120)

(declare-fun list!5102 (BalanceConc!8812) List!13543)

(assert (=> b!1326944 (= res!597372 (not (= (lexList!566 thiss!19762 rules!2550 (list!5102 lt!438667)) (tuple2!13121 lt!438658 Nil!13477))))))

(declare-fun e!850182 () Bool)

(assert (=> b!1326945 (= e!850182 (and tp!384615 tp!384610))))

(declare-fun e!850185 () Bool)

(assert (=> b!1326946 (= e!850185 e!850203)))

(declare-fun res!597360 () Bool)

(assert (=> b!1326946 (=> res!597360 e!850203)))

(declare-fun exists!368 (List!13545 Int) Bool)

(assert (=> b!1326946 (= res!597360 (not (exists!368 (map!2966 rules!2550 lambda!54870) lambda!54871)))))

(declare-fun lt!438647 () List!13545)

(assert (=> b!1326946 (exists!368 lt!438647 lambda!54871)))

(declare-fun lt!438662 () List!13543)

(declare-fun lt!438673 () Unit!19568)

(declare-fun lt!438669 () Regex!3647)

(declare-fun matchRGenUnionSpec!84 (Regex!3647 List!13545 List!13543) Unit!19568)

(assert (=> b!1326946 (= lt!438673 (matchRGenUnionSpec!84 lt!438669 lt!438647 lt!438662))))

(assert (=> b!1326946 (= lt!438647 (map!2966 rules!2550 lambda!54870))))

(declare-fun b!1326948 () Bool)

(declare-fun e!850210 () Unit!19568)

(declare-fun Unit!19571 () Unit!19568)

(assert (=> b!1326948 (= e!850210 Unit!19571)))

(declare-fun lt!438670 () Unit!19568)

(declare-fun t1!34 () Token!4328)

(declare-fun lt!438661 () List!13543)

(assert (=> b!1326948 (= lt!438670 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!144 (regex!2333 (rule!4078 t1!34)) lt!438661 (head!2324 lt!438661)))))

(assert (=> b!1326948 false))

(declare-fun tp!384609 () Bool)

(declare-fun b!1326949 () Bool)

(declare-fun e!850190 () Bool)

(declare-fun inv!17831 (String!16351) Bool)

(declare-fun inv!17834 (TokenValueInjection!4506) Bool)

(assert (=> b!1326949 (= e!850190 (and tp!384609 (inv!17831 (tag!2595 (h!18879 rules!2550))) (inv!17834 (transformation!2333 (h!18879 rules!2550))) e!850182))))

(declare-fun e!850194 () Bool)

(assert (=> b!1326950 (= e!850194 e!850186)))

(declare-fun res!597365 () Bool)

(assert (=> b!1326950 (=> res!597365 e!850186)))

(assert (=> b!1326950 (= res!597365 (not (matchR!1649 (regex!2333 (rule!4078 t1!34)) lt!438661)))))

(declare-fun lt!438654 () Unit!19568)

(declare-fun forallContained!584 (List!13544 Int Rule!4466) Unit!19568)

(assert (=> b!1326950 (= lt!438654 (forallContained!584 rules!2550 lambda!54873 (rule!4078 t2!34)))))

(declare-fun lt!438651 () Unit!19568)

(assert (=> b!1326950 (= lt!438651 (forallContained!584 rules!2550 lambda!54873 (rule!4078 t1!34)))))

(declare-fun lt!438663 () Rule!4466)

(declare-fun lt!438646 () Unit!19568)

(assert (=> b!1326950 (= lt!438646 (forallContained!584 rules!2550 lambda!54873 lt!438663))))

(declare-fun b!1326951 () Bool)

(declare-fun res!597375 () Bool)

(assert (=> b!1326951 (=> res!597375 e!850185)))

(declare-fun lt!438668 () List!13543)

(declare-fun lt!438657 () C!7584)

(declare-fun contains!2416 (List!13543 C!7584) Bool)

(assert (=> b!1326951 (= res!597375 (not (contains!2416 lt!438668 lt!438657)))))

(declare-fun b!1326952 () Bool)

(declare-fun e!850195 () Bool)

(assert (=> b!1326952 (= e!850195 e!850185)))

(declare-fun res!597353 () Bool)

(assert (=> b!1326952 (=> res!597353 e!850185)))

(declare-fun lt!438664 () C!7584)

(assert (=> b!1326952 (= res!597353 (not (contains!2416 lt!438668 lt!438664)))))

(declare-fun lt!438648 () BalanceConc!8812)

(declare-fun apply!3111 (BalanceConc!8812 Int) C!7584)

(assert (=> b!1326952 (= lt!438664 (apply!3111 lt!438648 0))))

(declare-fun b!1326953 () Bool)

(declare-fun e!850202 () Bool)

(declare-fun e!850184 () Bool)

(assert (=> b!1326953 (= e!850202 e!850184)))

(declare-fun res!597382 () Bool)

(assert (=> b!1326953 (=> (not res!597382) (not e!850184))))

(declare-fun prefixMatch!160 (Regex!3647 List!13543) Bool)

(assert (=> b!1326953 (= res!597382 (prefixMatch!160 lt!438669 lt!438668))))

(declare-fun rulesRegex!218 (LexerInterface!2028 List!13544) Regex!3647)

(assert (=> b!1326953 (= lt!438669 (rulesRegex!218 thiss!19762 rules!2550))))

(declare-fun ++!3442 (List!13543 List!13543) List!13543)

(assert (=> b!1326953 (= lt!438668 (++!3442 lt!438661 (Cons!13477 lt!438657 Nil!13477)))))

(declare-fun lt!438671 () BalanceConc!8812)

(assert (=> b!1326953 (= lt!438657 (apply!3111 lt!438671 0))))

(assert (=> b!1326953 (= lt!438661 (list!5102 lt!438648))))

(declare-fun charsOf!1305 (Token!4328) BalanceConc!8812)

(assert (=> b!1326953 (= lt!438648 (charsOf!1305 t1!34))))

(declare-fun e!850189 () Bool)

(assert (=> b!1326954 (= e!850184 (not e!850189))))

(declare-fun res!597355 () Bool)

(assert (=> b!1326954 (=> res!597355 e!850189)))

(declare-fun lambda!54869 () Int)

(declare-fun Exists!805 (Int) Bool)

(assert (=> b!1326954 (= res!597355 (not (Exists!805 lambda!54869)))))

(assert (=> b!1326954 (Exists!805 lambda!54869)))

(declare-fun lt!438656 () Unit!19568)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!123 (Regex!3647 List!13543) Unit!19568)

(assert (=> b!1326954 (= lt!438656 (lemmaPrefixMatchThenExistsStringThatMatches!123 lt!438669 lt!438668))))

(declare-fun b!1326955 () Bool)

(declare-fun res!597373 () Bool)

(assert (=> b!1326955 (=> (not res!597373) (not e!850202))))

(declare-fun sepAndNonSepRulesDisjointChars!706 (List!13544 List!13544) Bool)

(assert (=> b!1326955 (= res!597373 (sepAndNonSepRulesDisjointChars!706 rules!2550 rules!2550))))

(declare-fun e!850197 () Bool)

(declare-fun e!850211 () Bool)

(declare-fun b!1326956 () Bool)

(declare-fun tp!384611 () Bool)

(declare-fun inv!21 (TokenValue!2423) Bool)

(assert (=> b!1326956 (= e!850211 (and (inv!21 (value!76123 t1!34)) e!850197 tp!384611))))

(declare-fun b!1326957 () Bool)

(assert (=> b!1326957 (= e!850189 e!850195)))

(declare-fun res!597357 () Bool)

(assert (=> b!1326957 (=> res!597357 e!850195)))

(declare-fun getSuffix!503 (List!13543 List!13543) List!13543)

(assert (=> b!1326957 (= res!597357 (not (= lt!438662 (++!3442 lt!438668 (getSuffix!503 lt!438662 lt!438668)))))))

(declare-fun pickWitness!110 (Int) List!13543)

(assert (=> b!1326957 (= lt!438662 (pickWitness!110 lambda!54869))))

(declare-fun b!1326958 () Bool)

(declare-fun e!850201 () Bool)

(assert (=> b!1326958 (= e!850201 e!850198)))

(declare-fun res!597385 () Bool)

(assert (=> b!1326958 (=> res!597385 e!850198)))

(declare-fun list!5103 (BalanceConc!8814) List!13546)

(assert (=> b!1326958 (= res!597385 (not (= (list!5103 (_1!7445 lt!438674)) lt!438658)))))

(assert (=> b!1326958 (= lt!438658 (Cons!13480 t1!34 Nil!13480))))

(declare-fun lex!863 (LexerInterface!2028 List!13544 BalanceConc!8812) tuple2!13118)

(assert (=> b!1326958 (= lt!438674 (lex!863 thiss!19762 rules!2550 lt!438667))))

(declare-fun print!802 (LexerInterface!2028 BalanceConc!8814) BalanceConc!8812)

(declare-fun singletonSeq!924 (Token!4328) BalanceConc!8814)

(assert (=> b!1326958 (= lt!438667 (print!802 thiss!19762 (singletonSeq!924 t1!34)))))

(declare-fun getWitness!261 (List!13544 Int) Rule!4466)

(assert (=> b!1326958 (= lt!438663 (getWitness!261 rules!2550 lambda!54872))))

(declare-fun b!1326959 () Bool)

(declare-fun res!597362 () Bool)

(assert (=> b!1326959 (=> res!597362 e!850185)))

(assert (=> b!1326959 (= res!597362 (not (matchR!1649 lt!438669 lt!438662)))))

(declare-fun b!1326960 () Bool)

(declare-fun Unit!19572 () Unit!19568)

(assert (=> b!1326960 (= e!850210 Unit!19572)))

(declare-fun b!1326961 () Bool)

(declare-fun res!597381 () Bool)

(declare-fun e!850187 () Bool)

(assert (=> b!1326961 (=> (not res!597381) (not e!850187))))

(declare-fun rulesProduceIndividualToken!997 (LexerInterface!2028 List!13544 Token!4328) Bool)

(assert (=> b!1326961 (= res!597381 (rulesProduceIndividualToken!997 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1326962 () Bool)

(declare-fun res!597356 () Bool)

(assert (=> b!1326962 (=> (not res!597356) (not e!850187))))

(assert (=> b!1326962 (= res!597356 (rulesProduceIndividualToken!997 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!384614 () Bool)

(declare-fun e!850200 () Bool)

(declare-fun e!850181 () Bool)

(declare-fun b!1326963 () Bool)

(assert (=> b!1326963 (= e!850200 (and (inv!21 (value!76123 t2!34)) e!850181 tp!384614))))

(declare-fun b!1326964 () Bool)

(declare-fun res!597377 () Bool)

(assert (=> b!1326964 (=> res!597377 e!850185)))

(assert (=> b!1326964 (= res!597377 (not (contains!2416 lt!438662 lt!438664)))))

(declare-fun b!1326965 () Bool)

(declare-fun e!850191 () Bool)

(assert (=> b!1326965 (= e!850186 e!850191)))

(declare-fun res!597376 () Bool)

(assert (=> b!1326965 (=> res!597376 e!850191)))

(declare-fun lt!438644 () Bool)

(assert (=> b!1326965 (= res!597376 lt!438644)))

(declare-fun lt!438672 () Unit!19568)

(assert (=> b!1326965 (= lt!438672 e!850210)))

(declare-fun c!217584 () Bool)

(assert (=> b!1326965 (= c!217584 lt!438644)))

(declare-fun usedCharacters!198 (Regex!3647) List!13543)

(assert (=> b!1326965 (= lt!438644 (not (contains!2416 (usedCharacters!198 (regex!2333 (rule!4078 t1!34))) lt!438664)))))

(assert (=> b!1326966 (= e!850183 e!850201)))

(declare-fun res!597370 () Bool)

(assert (=> b!1326966 (=> res!597370 e!850201)))

(declare-fun exists!369 (List!13544 Int) Bool)

(assert (=> b!1326966 (= res!597370 (not (exists!369 rules!2550 lambda!54872)))))

(assert (=> b!1326966 (exists!369 rules!2550 lambda!54872)))

(declare-fun lt!438649 () Unit!19568)

(declare-fun lemmaMapContains!76 (List!13544 Int Regex!3647) Unit!19568)

(assert (=> b!1326966 (= lt!438649 (lemmaMapContains!76 rules!2550 lambda!54870 lt!438655))))

(declare-fun b!1326967 () Bool)

(assert (=> b!1326967 (= e!850187 e!850202)))

(declare-fun res!597378 () Bool)

(assert (=> b!1326967 (=> (not res!597378) (not e!850202))))

(declare-fun lt!438645 () Int)

(assert (=> b!1326967 (= res!597378 (> lt!438645 0))))

(declare-fun size!10973 (BalanceConc!8812) Int)

(assert (=> b!1326967 (= lt!438645 (size!10973 lt!438671))))

(assert (=> b!1326967 (= lt!438671 (charsOf!1305 t2!34))))

(declare-fun b!1326968 () Bool)

(declare-fun e!850188 () Bool)

(declare-fun e!850193 () Bool)

(assert (=> b!1326968 (= e!850188 e!850193)))

(declare-fun res!597379 () Bool)

(assert (=> b!1326968 (=> res!597379 e!850193)))

(assert (=> b!1326968 (= res!597379 (or (not (isSeparator!2333 lt!438663)) (not (isSeparator!2333 (rule!4078 t1!34)))))))

(assert (=> b!1326968 (= (regex!2333 lt!438663) lt!438655)))

(declare-fun b!1326969 () Bool)

(declare-fun res!597371 () Bool)

(assert (=> b!1326969 (=> res!597371 e!850198)))

(declare-datatypes ((tuple2!13122 0))(
  ( (tuple2!13123 (_1!7447 Token!4328) (_2!7447 List!13543)) )
))
(declare-datatypes ((Option!2604 0))(
  ( (None!2603) (Some!2603 (v!21208 tuple2!13122)) )
))
(declare-fun maxPrefix!1038 (LexerInterface!2028 List!13544 List!13543) Option!2604)

(assert (=> b!1326969 (= res!597371 (not (= (maxPrefix!1038 thiss!19762 rules!2550 lt!438661) (Some!2603 (tuple2!13123 t1!34 Nil!13477)))))))

(declare-fun b!1326970 () Bool)

(declare-fun res!597369 () Bool)

(assert (=> b!1326970 (=> (not res!597369) (not e!850187))))

(assert (=> b!1326970 (= res!597369 (not (= (isSeparator!2333 (rule!4078 t1!34)) (isSeparator!2333 (rule!4078 t2!34)))))))

(declare-fun b!1326971 () Bool)

(declare-fun res!597384 () Bool)

(assert (=> b!1326971 (=> (not res!597384) (not e!850187))))

(declare-fun isEmpty!8023 (List!13544) Bool)

(assert (=> b!1326971 (= res!597384 (not (isEmpty!8023 rules!2550)))))

(declare-fun b!1326972 () Bool)

(declare-fun res!597352 () Bool)

(declare-fun e!850207 () Bool)

(assert (=> b!1326972 (=> res!597352 e!850207)))

(declare-fun lt!438650 () tuple2!13118)

(assert (=> b!1326972 (= res!597352 (not (isEmpty!8022 (_2!7445 lt!438650))))))

(declare-fun b!1326973 () Bool)

(assert (=> b!1326973 (= e!850207 e!850194)))

(declare-fun res!597358 () Bool)

(assert (=> b!1326973 (=> res!597358 e!850194)))

(assert (=> b!1326973 (= res!597358 (not (= (maxPrefix!1038 thiss!19762 rules!2550 lt!438652) (Some!2603 (tuple2!13123 t2!34 Nil!13477)))))))

(assert (=> b!1326973 (= lt!438652 (list!5102 lt!438671))))

(declare-fun b!1326974 () Bool)

(declare-fun tp!384620 () Bool)

(assert (=> b!1326974 (= e!850181 (and tp!384620 (inv!17831 (tag!2595 (rule!4078 t2!34))) (inv!17834 (transformation!2333 (rule!4078 t2!34))) e!850208))))

(declare-fun res!597368 () Bool)

(assert (=> start!117926 (=> (not res!597368) (not e!850187))))

(get-info :version)

(assert (=> start!117926 (= res!597368 ((_ is Lexer!2026) thiss!19762))))

(assert (=> start!117926 e!850187))

(assert (=> start!117926 true))

(declare-fun e!850206 () Bool)

(assert (=> start!117926 e!850206))

(declare-fun inv!17835 (Token!4328) Bool)

(assert (=> start!117926 (and (inv!17835 t1!34) e!850211)))

(assert (=> start!117926 (and (inv!17835 t2!34) e!850200)))

(declare-fun b!1326947 () Bool)

(declare-fun res!597383 () Bool)

(assert (=> b!1326947 (=> (not res!597383) (not e!850187))))

(declare-fun rulesInvariant!1898 (LexerInterface!2028 List!13544) Bool)

(assert (=> b!1326947 (= res!597383 (rulesInvariant!1898 thiss!19762 rules!2550))))

(declare-fun e!850212 () Bool)

(assert (=> b!1326975 (= e!850212 (and tp!384619 tp!384612))))

(declare-fun b!1326976 () Bool)

(declare-fun Unit!19573 () Unit!19568)

(assert (=> b!1326976 (= e!850205 Unit!19573)))

(declare-fun b!1326977 () Bool)

(assert (=> b!1326977 (= e!850191 e!850188)))

(declare-fun res!597374 () Bool)

(assert (=> b!1326977 (=> res!597374 e!850188)))

(declare-fun lt!438660 () Bool)

(assert (=> b!1326977 (= res!597374 lt!438660)))

(declare-fun lt!438666 () Unit!19568)

(assert (=> b!1326977 (= lt!438666 e!850205)))

(declare-fun c!217585 () Bool)

(assert (=> b!1326977 (= c!217585 lt!438660)))

(assert (=> b!1326977 (= lt!438660 (not (contains!2416 (usedCharacters!198 (regex!2333 (rule!4078 t2!34))) lt!438657)))))

(declare-fun b!1326978 () Bool)

(assert (=> b!1326978 (= e!850193 (< 0 lt!438645))))

(assert (=> b!1326978 (not (contains!2416 (usedCharacters!198 (regex!2333 lt!438663)) lt!438657))))

(declare-fun lt!438653 () Unit!19568)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!110 (LexerInterface!2028 List!13544 List!13544 Rule!4466 Rule!4466 C!7584) Unit!19568)

(assert (=> b!1326978 (= lt!438653 (lemmaSepRuleNotContainsCharContainedInANonSepRule!110 thiss!19762 rules!2550 rules!2550 (rule!4078 t2!34) lt!438663 lt!438657))))

(declare-fun b!1326979 () Bool)

(declare-fun res!597363 () Bool)

(assert (=> b!1326979 (=> res!597363 e!850194)))

(declare-fun contains!2417 (List!13544 Rule!4466) Bool)

(assert (=> b!1326979 (= res!597363 (not (contains!2417 rules!2550 lt!438663)))))

(declare-fun b!1326980 () Bool)

(declare-fun tp!384618 () Bool)

(assert (=> b!1326980 (= e!850197 (and tp!384618 (inv!17831 (tag!2595 (rule!4078 t1!34))) (inv!17834 (transformation!2333 (rule!4078 t1!34))) e!850212))))

(declare-fun b!1326981 () Bool)

(declare-fun res!597354 () Bool)

(assert (=> b!1326981 (=> res!597354 e!850207)))

(declare-fun lt!438643 () List!13546)

(declare-fun lt!438665 () BalanceConc!8812)

(assert (=> b!1326981 (= res!597354 (not (= (lexList!566 thiss!19762 rules!2550 (list!5102 lt!438665)) (tuple2!13121 lt!438643 Nil!13477))))))

(declare-fun b!1326982 () Bool)

(declare-fun res!597367 () Bool)

(assert (=> b!1326982 (=> res!597367 e!850185)))

(assert (=> b!1326982 (= res!597367 (not (contains!2416 lt!438662 lt!438657)))))

(declare-fun b!1326983 () Bool)

(declare-fun res!597380 () Bool)

(assert (=> b!1326983 (=> res!597380 e!850194)))

(assert (=> b!1326983 (= res!597380 (not (contains!2417 rules!2550 (rule!4078 t2!34))))))

(declare-fun b!1326984 () Bool)

(declare-fun tp!384613 () Bool)

(assert (=> b!1326984 (= e!850206 (and e!850190 tp!384613))))

(declare-fun b!1326985 () Bool)

(assert (=> b!1326985 (= e!850198 e!850207)))

(declare-fun res!597359 () Bool)

(assert (=> b!1326985 (=> res!597359 e!850207)))

(assert (=> b!1326985 (= res!597359 (not (= (list!5103 (_1!7445 lt!438650)) lt!438643)))))

(assert (=> b!1326985 (= lt!438643 (Cons!13480 t2!34 Nil!13480))))

(assert (=> b!1326985 (= lt!438650 (lex!863 thiss!19762 rules!2550 lt!438665))))

(assert (=> b!1326985 (= lt!438665 (print!802 thiss!19762 (singletonSeq!924 t2!34)))))

(declare-fun b!1326986 () Bool)

(declare-fun res!597350 () Bool)

(assert (=> b!1326986 (=> res!597350 e!850198)))

(assert (=> b!1326986 (= res!597350 (not (contains!2417 rules!2550 (rule!4078 t1!34))))))

(declare-fun b!1326987 () Bool)

(declare-fun res!597364 () Bool)

(assert (=> b!1326987 (=> (not res!597364) (not e!850202))))

(declare-fun separableTokensPredicate!311 (LexerInterface!2028 Token!4328 Token!4328 List!13544) Bool)

(assert (=> b!1326987 (= res!597364 (not (separableTokensPredicate!311 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (= (and start!117926 res!597368) b!1326971))

(assert (= (and b!1326971 res!597384) b!1326947))

(assert (= (and b!1326947 res!597383) b!1326962))

(assert (= (and b!1326962 res!597356) b!1326961))

(assert (= (and b!1326961 res!597381) b!1326970))

(assert (= (and b!1326970 res!597369) b!1326967))

(assert (= (and b!1326967 res!597378) b!1326955))

(assert (= (and b!1326955 res!597373) b!1326987))

(assert (= (and b!1326987 res!597364) b!1326953))

(assert (= (and b!1326953 res!597382) b!1326954))

(assert (= (and b!1326954 (not res!597355)) b!1326957))

(assert (= (and b!1326957 (not res!597357)) b!1326952))

(assert (= (and b!1326952 (not res!597353)) b!1326964))

(assert (= (and b!1326964 (not res!597377)) b!1326951))

(assert (= (and b!1326951 (not res!597375)) b!1326982))

(assert (= (and b!1326982 (not res!597367)) b!1326959))

(assert (= (and b!1326959 (not res!597362)) b!1326946))

(assert (= (and b!1326946 (not res!597360)) b!1326939))

(assert (= (and b!1326939 (not res!597361)) b!1326966))

(assert (= (and b!1326966 (not res!597370)) b!1326958))

(assert (= (and b!1326958 (not res!597385)) b!1326941))

(assert (= (and b!1326941 (not res!597351)) b!1326944))

(assert (= (and b!1326944 (not res!597372)) b!1326969))

(assert (= (and b!1326969 (not res!597371)) b!1326986))

(assert (= (and b!1326986 (not res!597350)) b!1326985))

(assert (= (and b!1326985 (not res!597359)) b!1326972))

(assert (= (and b!1326972 (not res!597352)) b!1326981))

(assert (= (and b!1326981 (not res!597354)) b!1326973))

(assert (= (and b!1326973 (not res!597358)) b!1326983))

(assert (= (and b!1326983 (not res!597380)) b!1326979))

(assert (= (and b!1326979 (not res!597363)) b!1326950))

(assert (= (and b!1326950 (not res!597365)) b!1326940))

(assert (= (and b!1326940 (not res!597366)) b!1326965))

(assert (= (and b!1326965 c!217584) b!1326948))

(assert (= (and b!1326965 (not c!217584)) b!1326960))

(assert (= (and b!1326965 (not res!597376)) b!1326977))

(assert (= (and b!1326977 c!217585) b!1326942))

(assert (= (and b!1326977 (not c!217585)) b!1326976))

(assert (= (and b!1326977 (not res!597374)) b!1326968))

(assert (= (and b!1326968 (not res!597379)) b!1326978))

(assert (= b!1326949 b!1326945))

(assert (= b!1326984 b!1326949))

(assert (= (and start!117926 ((_ is Cons!13478) rules!2550)) b!1326984))

(assert (= b!1326980 b!1326975))

(assert (= b!1326956 b!1326980))

(assert (= start!117926 b!1326956))

(assert (= b!1326974 b!1326943))

(assert (= b!1326963 b!1326974))

(assert (= start!117926 b!1326963))

(declare-fun m!1483487 () Bool)

(assert (=> b!1326949 m!1483487))

(declare-fun m!1483489 () Bool)

(assert (=> b!1326949 m!1483489))

(declare-fun m!1483491 () Bool)

(assert (=> b!1326982 m!1483491))

(declare-fun m!1483493 () Bool)

(assert (=> b!1326947 m!1483493))

(declare-fun m!1483495 () Bool)

(assert (=> b!1326944 m!1483495))

(assert (=> b!1326944 m!1483495))

(declare-fun m!1483497 () Bool)

(assert (=> b!1326944 m!1483497))

(declare-fun m!1483499 () Bool)

(assert (=> b!1326977 m!1483499))

(assert (=> b!1326977 m!1483499))

(declare-fun m!1483501 () Bool)

(assert (=> b!1326977 m!1483501))

(declare-fun m!1483503 () Bool)

(assert (=> b!1326963 m!1483503))

(declare-fun m!1483505 () Bool)

(assert (=> b!1326964 m!1483505))

(declare-fun m!1483507 () Bool)

(assert (=> b!1326981 m!1483507))

(assert (=> b!1326981 m!1483507))

(declare-fun m!1483509 () Bool)

(assert (=> b!1326981 m!1483509))

(declare-fun m!1483511 () Bool)

(assert (=> b!1326978 m!1483511))

(assert (=> b!1326978 m!1483511))

(declare-fun m!1483513 () Bool)

(assert (=> b!1326978 m!1483513))

(declare-fun m!1483515 () Bool)

(assert (=> b!1326978 m!1483515))

(declare-fun m!1483517 () Bool)

(assert (=> b!1326956 m!1483517))

(declare-fun m!1483519 () Bool)

(assert (=> b!1326966 m!1483519))

(assert (=> b!1326966 m!1483519))

(declare-fun m!1483521 () Bool)

(assert (=> b!1326966 m!1483521))

(declare-fun m!1483523 () Bool)

(assert (=> b!1326942 m!1483523))

(assert (=> b!1326942 m!1483523))

(declare-fun m!1483525 () Bool)

(assert (=> b!1326942 m!1483525))

(declare-fun m!1483527 () Bool)

(assert (=> b!1326948 m!1483527))

(assert (=> b!1326948 m!1483527))

(declare-fun m!1483529 () Bool)

(assert (=> b!1326948 m!1483529))

(declare-fun m!1483531 () Bool)

(assert (=> start!117926 m!1483531))

(declare-fun m!1483533 () Bool)

(assert (=> start!117926 m!1483533))

(declare-fun m!1483535 () Bool)

(assert (=> b!1326973 m!1483535))

(declare-fun m!1483537 () Bool)

(assert (=> b!1326973 m!1483537))

(declare-fun m!1483539 () Bool)

(assert (=> b!1326980 m!1483539))

(declare-fun m!1483541 () Bool)

(assert (=> b!1326980 m!1483541))

(declare-fun m!1483543 () Bool)

(assert (=> b!1326953 m!1483543))

(declare-fun m!1483545 () Bool)

(assert (=> b!1326953 m!1483545))

(declare-fun m!1483547 () Bool)

(assert (=> b!1326953 m!1483547))

(declare-fun m!1483549 () Bool)

(assert (=> b!1326953 m!1483549))

(declare-fun m!1483551 () Bool)

(assert (=> b!1326953 m!1483551))

(declare-fun m!1483553 () Bool)

(assert (=> b!1326953 m!1483553))

(declare-fun m!1483555 () Bool)

(assert (=> b!1326979 m!1483555))

(declare-fun m!1483557 () Bool)

(assert (=> b!1326983 m!1483557))

(declare-fun m!1483559 () Bool)

(assert (=> b!1326954 m!1483559))

(assert (=> b!1326954 m!1483559))

(declare-fun m!1483561 () Bool)

(assert (=> b!1326954 m!1483561))

(declare-fun m!1483563 () Bool)

(assert (=> b!1326969 m!1483563))

(declare-fun m!1483565 () Bool)

(assert (=> b!1326951 m!1483565))

(declare-fun m!1483567 () Bool)

(assert (=> b!1326962 m!1483567))

(declare-fun m!1483569 () Bool)

(assert (=> b!1326972 m!1483569))

(declare-fun m!1483571 () Bool)

(assert (=> b!1326985 m!1483571))

(declare-fun m!1483573 () Bool)

(assert (=> b!1326985 m!1483573))

(declare-fun m!1483575 () Bool)

(assert (=> b!1326985 m!1483575))

(assert (=> b!1326985 m!1483575))

(declare-fun m!1483577 () Bool)

(assert (=> b!1326985 m!1483577))

(declare-fun m!1483579 () Bool)

(assert (=> b!1326958 m!1483579))

(declare-fun m!1483581 () Bool)

(assert (=> b!1326958 m!1483581))

(assert (=> b!1326958 m!1483579))

(declare-fun m!1483583 () Bool)

(assert (=> b!1326958 m!1483583))

(declare-fun m!1483585 () Bool)

(assert (=> b!1326958 m!1483585))

(declare-fun m!1483587 () Bool)

(assert (=> b!1326958 m!1483587))

(declare-fun m!1483589 () Bool)

(assert (=> b!1326940 m!1483589))

(declare-fun m!1483591 () Bool)

(assert (=> b!1326952 m!1483591))

(declare-fun m!1483593 () Bool)

(assert (=> b!1326952 m!1483593))

(declare-fun m!1483595 () Bool)

(assert (=> b!1326955 m!1483595))

(declare-fun m!1483597 () Bool)

(assert (=> b!1326941 m!1483597))

(declare-fun m!1483599 () Bool)

(assert (=> b!1326986 m!1483599))

(declare-fun m!1483601 () Bool)

(assert (=> b!1326957 m!1483601))

(assert (=> b!1326957 m!1483601))

(declare-fun m!1483603 () Bool)

(assert (=> b!1326957 m!1483603))

(declare-fun m!1483605 () Bool)

(assert (=> b!1326957 m!1483605))

(declare-fun m!1483607 () Bool)

(assert (=> b!1326987 m!1483607))

(declare-fun m!1483609 () Bool)

(assert (=> b!1326965 m!1483609))

(assert (=> b!1326965 m!1483609))

(declare-fun m!1483611 () Bool)

(assert (=> b!1326965 m!1483611))

(declare-fun m!1483613 () Bool)

(assert (=> b!1326971 m!1483613))

(declare-fun m!1483615 () Bool)

(assert (=> b!1326974 m!1483615))

(declare-fun m!1483617 () Bool)

(assert (=> b!1326974 m!1483617))

(declare-fun m!1483619 () Bool)

(assert (=> b!1326961 m!1483619))

(declare-fun m!1483621 () Bool)

(assert (=> b!1326950 m!1483621))

(declare-fun m!1483623 () Bool)

(assert (=> b!1326950 m!1483623))

(declare-fun m!1483625 () Bool)

(assert (=> b!1326950 m!1483625))

(declare-fun m!1483627 () Bool)

(assert (=> b!1326950 m!1483627))

(declare-fun m!1483629 () Bool)

(assert (=> b!1326939 m!1483629))

(assert (=> b!1326939 m!1483629))

(declare-fun m!1483631 () Bool)

(assert (=> b!1326939 m!1483631))

(assert (=> b!1326939 m!1483629))

(assert (=> b!1326939 m!1483629))

(declare-fun m!1483633 () Bool)

(assert (=> b!1326939 m!1483633))

(declare-fun m!1483635 () Bool)

(assert (=> b!1326946 m!1483635))

(declare-fun m!1483637 () Bool)

(assert (=> b!1326946 m!1483637))

(assert (=> b!1326946 m!1483629))

(declare-fun m!1483639 () Bool)

(assert (=> b!1326946 m!1483639))

(assert (=> b!1326946 m!1483629))

(assert (=> b!1326946 m!1483629))

(declare-fun m!1483641 () Bool)

(assert (=> b!1326967 m!1483641))

(declare-fun m!1483643 () Bool)

(assert (=> b!1326967 m!1483643))

(declare-fun m!1483645 () Bool)

(assert (=> b!1326959 m!1483645))

(check-sat (not b!1326963) (not b!1326947) b_and!88647 (not b!1326969) (not b!1326962) (not b!1326952) (not b!1326944) (not b_next!32773) (not b!1326949) (not b!1326974) b_and!88641 (not b!1326966) (not b!1326982) (not b!1326977) (not b!1326956) (not b!1326941) (not b!1326955) (not b!1326971) (not b!1326964) (not b_next!32771) (not b!1326961) (not b!1326939) (not b_next!32777) (not b!1326951) (not b!1326942) (not b!1326973) (not b!1326946) (not b!1326972) (not b!1326985) (not b!1326940) (not b!1326987) (not b!1326986) (not b!1326979) b_and!88643 (not b!1326950) (not b!1326983) (not b!1326957) (not b_next!32775) (not b!1326953) b_and!88645 (not b!1326954) (not b_next!32779) b_and!88649 (not b!1326965) (not b!1326981) (not start!117926) (not b!1326980) (not b!1326959) (not b!1326958) (not b!1326984) b_and!88639 (not b!1326978) (not b!1326967) (not b_next!32781) (not b!1326948))
(check-sat b_and!88647 (not b_next!32771) (not b_next!32777) b_and!88643 b_and!88649 (not b_next!32773) b_and!88639 b_and!88641 (not b_next!32781) (not b_next!32775) b_and!88645 (not b_next!32779))
