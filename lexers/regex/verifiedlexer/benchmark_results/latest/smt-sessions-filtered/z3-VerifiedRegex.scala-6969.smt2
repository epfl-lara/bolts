; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!369476 () Bool)

(assert start!369476)

(declare-fun b!3936373 () Bool)

(declare-fun b_free!107501 () Bool)

(declare-fun b_next!108205 () Bool)

(assert (=> b!3936373 (= b_free!107501 (not b_next!108205))))

(declare-fun tp!1197866 () Bool)

(declare-fun b_and!300623 () Bool)

(assert (=> b!3936373 (= tp!1197866 b_and!300623)))

(declare-fun b_free!107503 () Bool)

(declare-fun b_next!108207 () Bool)

(assert (=> b!3936373 (= b_free!107503 (not b_next!108207))))

(declare-fun tp!1197875 () Bool)

(declare-fun b_and!300625 () Bool)

(assert (=> b!3936373 (= tp!1197875 b_and!300625)))

(declare-fun b!3936369 () Bool)

(declare-fun b_free!107505 () Bool)

(declare-fun b_next!108209 () Bool)

(assert (=> b!3936369 (= b_free!107505 (not b_next!108209))))

(declare-fun tp!1197864 () Bool)

(declare-fun b_and!300627 () Bool)

(assert (=> b!3936369 (= tp!1197864 b_and!300627)))

(declare-fun b_free!107507 () Bool)

(declare-fun b_next!108211 () Bool)

(assert (=> b!3936369 (= b_free!107507 (not b_next!108211))))

(declare-fun tp!1197872 () Bool)

(declare-fun b_and!300629 () Bool)

(assert (=> b!3936369 (= tp!1197872 b_and!300629)))

(declare-fun b!3936370 () Bool)

(declare-fun b_free!107509 () Bool)

(declare-fun b_next!108213 () Bool)

(assert (=> b!3936370 (= b_free!107509 (not b_next!108213))))

(declare-fun tp!1197867 () Bool)

(declare-fun b_and!300631 () Bool)

(assert (=> b!3936370 (= tp!1197867 b_and!300631)))

(declare-fun b_free!107511 () Bool)

(declare-fun b_next!108215 () Bool)

(assert (=> b!3936370 (= b_free!107511 (not b_next!108215))))

(declare-fun tp!1197862 () Bool)

(declare-fun b_and!300633 () Bool)

(assert (=> b!3936370 (= tp!1197862 b_and!300633)))

(declare-fun b!3936339 () Bool)

(declare-fun e!2435251 () Bool)

(declare-fun e!2435260 () Bool)

(assert (=> b!3936339 (= e!2435251 e!2435260)))

(declare-fun res!1592788 () Bool)

(assert (=> b!3936339 (=> res!1592788 e!2435260)))

(declare-datatypes ((List!41907 0))(
  ( (Nil!41783) (Cons!41783 (h!47203 (_ BitVec 16)) (t!326390 List!41907)) )
))
(declare-datatypes ((TokenValue!6756 0))(
  ( (FloatLiteralValue!13512 (text!47737 List!41907)) (TokenValueExt!6755 (__x!25729 Int)) (Broken!33780 (value!206599 List!41907)) (Object!6879) (End!6756) (Def!6756) (Underscore!6756) (Match!6756) (Else!6756) (Error!6756) (Case!6756) (If!6756) (Extends!6756) (Abstract!6756) (Class!6756) (Val!6756) (DelimiterValue!13512 (del!6816 List!41907)) (KeywordValue!6762 (value!206600 List!41907)) (CommentValue!13512 (value!206601 List!41907)) (WhitespaceValue!13512 (value!206602 List!41907)) (IndentationValue!6756 (value!206603 List!41907)) (String!47497) (Int32!6756) (Broken!33781 (value!206604 List!41907)) (Boolean!6757) (Unit!60276) (OperatorValue!6759 (op!6816 List!41907)) (IdentifierValue!13512 (value!206605 List!41907)) (IdentifierValue!13513 (value!206606 List!41907)) (WhitespaceValue!13513 (value!206607 List!41907)) (True!13512) (False!13512) (Broken!33782 (value!206608 List!41907)) (Broken!33783 (value!206609 List!41907)) (True!13513) (RightBrace!6756) (RightBracket!6756) (Colon!6756) (Null!6756) (Comma!6756) (LeftBracket!6756) (False!13513) (LeftBrace!6756) (ImaginaryLiteralValue!6756 (text!47738 List!41907)) (StringLiteralValue!20268 (value!206610 List!41907)) (EOFValue!6756 (value!206611 List!41907)) (IdentValue!6756 (value!206612 List!41907)) (DelimiterValue!13513 (value!206613 List!41907)) (DedentValue!6756 (value!206614 List!41907)) (NewLineValue!6756 (value!206615 List!41907)) (IntegerValue!20268 (value!206616 (_ BitVec 32)) (text!47739 List!41907)) (IntegerValue!20269 (value!206617 Int) (text!47740 List!41907)) (Times!6756) (Or!6756) (Equal!6756) (Minus!6756) (Broken!33784 (value!206618 List!41907)) (And!6756) (Div!6756) (LessEqual!6756) (Mod!6756) (Concat!18187) (Not!6756) (Plus!6756) (SpaceValue!6756 (value!206619 List!41907)) (IntegerValue!20270 (value!206620 Int) (text!47741 List!41907)) (StringLiteralValue!20269 (text!47742 List!41907)) (FloatLiteralValue!13513 (text!47743 List!41907)) (BytesLiteralValue!6756 (value!206621 List!41907)) (CommentValue!13513 (value!206622 List!41907)) (StringLiteralValue!20270 (value!206623 List!41907)) (ErrorTokenValue!6756 (msg!6817 List!41907)) )
))
(declare-datatypes ((C!23048 0))(
  ( (C!23049 (val!13618 Int)) )
))
(declare-datatypes ((Regex!11431 0))(
  ( (ElementMatch!11431 (c!684008 C!23048)) (Concat!18188 (regOne!23374 Regex!11431) (regTwo!23374 Regex!11431)) (EmptyExpr!11431) (Star!11431 (reg!11760 Regex!11431)) (EmptyLang!11431) (Union!11431 (regOne!23375 Regex!11431) (regTwo!23375 Regex!11431)) )
))
(declare-datatypes ((String!47498 0))(
  ( (String!47499 (value!206624 String)) )
))
(declare-datatypes ((List!41908 0))(
  ( (Nil!41784) (Cons!41784 (h!47204 C!23048) (t!326391 List!41908)) )
))
(declare-datatypes ((IArray!25479 0))(
  ( (IArray!25480 (innerList!12797 List!41908)) )
))
(declare-datatypes ((Conc!12737 0))(
  ( (Node!12737 (left!31858 Conc!12737) (right!32188 Conc!12737) (csize!25704 Int) (cheight!12948 Int)) (Leaf!19707 (xs!16043 IArray!25479) (csize!25705 Int)) (Empty!12737) )
))
(declare-datatypes ((BalanceConc!25068 0))(
  ( (BalanceConc!25069 (c!684009 Conc!12737)) )
))
(declare-datatypes ((TokenValueInjection!12940 0))(
  ( (TokenValueInjection!12941 (toValue!8986 Int) (toChars!8845 Int)) )
))
(declare-datatypes ((Rule!12852 0))(
  ( (Rule!12853 (regex!6526 Regex!11431) (tag!7386 String!47498) (isSeparator!6526 Bool) (transformation!6526 TokenValueInjection!12940)) )
))
(declare-datatypes ((Token!12190 0))(
  ( (Token!12191 (value!206625 TokenValue!6756) (rule!9478 Rule!12852) (size!31348 Int) (originalCharacters!7126 List!41908)) )
))
(declare-datatypes ((List!41909 0))(
  ( (Nil!41785) (Cons!41785 (h!47205 Token!12190) (t!326392 List!41909)) )
))
(declare-datatypes ((tuple2!41066 0))(
  ( (tuple2!41067 (_1!23667 List!41909) (_2!23667 List!41908)) )
))
(declare-fun lt!1376099 () tuple2!41066)

(declare-fun lt!1376069 () tuple2!41066)

(assert (=> b!3936339 (= res!1592788 (not (= lt!1376099 lt!1376069)))))

(declare-fun lt!1376086 () List!41909)

(declare-fun suffixResult!91 () List!41908)

(assert (=> b!3936339 (= lt!1376069 (tuple2!41067 lt!1376086 suffixResult!91))))

(declare-fun lt!1376059 () List!41909)

(declare-fun suffixTokens!72 () List!41909)

(declare-fun ++!10809 (List!41909 List!41909) List!41909)

(assert (=> b!3936339 (= lt!1376086 (++!10809 lt!1376059 suffixTokens!72))))

(declare-fun prefixTokens!80 () List!41909)

(declare-fun tail!6085 (List!41909) List!41909)

(assert (=> b!3936339 (= lt!1376059 (tail!6085 prefixTokens!80))))

(declare-fun lt!1376085 () List!41908)

(declare-fun lt!1376082 () List!41908)

(declare-fun isPrefix!3621 (List!41908 List!41908) Bool)

(assert (=> b!3936339 (isPrefix!3621 lt!1376085 lt!1376082)))

(declare-datatypes ((Unit!60277 0))(
  ( (Unit!60278) )
))
(declare-fun lt!1376063 () Unit!60277)

(declare-fun suffix!1176 () List!41908)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2484 (List!41908 List!41908) Unit!60277)

(assert (=> b!3936339 (= lt!1376063 (lemmaConcatTwoListThenFirstIsPrefix!2484 lt!1376085 suffix!1176))))

(declare-fun b!3936340 () Bool)

(declare-fun e!2435250 () Unit!60277)

(declare-fun Unit!60279 () Unit!60277)

(assert (=> b!3936340 (= e!2435250 Unit!60279)))

(declare-fun lt!1376089 () Unit!60277)

(declare-fun prefix!426 () List!41908)

(assert (=> b!3936340 (= lt!1376089 (lemmaConcatTwoListThenFirstIsPrefix!2484 prefix!426 suffix!1176))))

(declare-fun lt!1376066 () List!41908)

(assert (=> b!3936340 (isPrefix!3621 prefix!426 lt!1376066)))

(declare-fun lt!1376080 () Unit!60277)

(declare-fun lt!1376077 () List!41908)

(declare-fun lemmaIsPrefixSameLengthThenSameList!817 (List!41908 List!41908 List!41908) Unit!60277)

(assert (=> b!3936340 (= lt!1376080 (lemmaIsPrefixSameLengthThenSameList!817 lt!1376077 prefix!426 lt!1376066))))

(assert (=> b!3936340 (= lt!1376077 prefix!426)))

(declare-fun lt!1376079 () Unit!60277)

(declare-datatypes ((tuple2!41068 0))(
  ( (tuple2!41069 (_1!23668 Token!12190) (_2!23668 List!41908)) )
))
(declare-datatypes ((Option!8946 0))(
  ( (None!8945) (Some!8945 (v!39275 tuple2!41068)) )
))
(declare-fun lt!1376064 () Option!8946)

(declare-fun lemmaSamePrefixThenSameSuffix!1842 (List!41908 List!41908 List!41908 List!41908 List!41908) Unit!60277)

(assert (=> b!3936340 (= lt!1376079 (lemmaSamePrefixThenSameSuffix!1842 lt!1376077 (_2!23668 (v!39275 lt!1376064)) prefix!426 suffix!1176 lt!1376066))))

(assert (=> b!3936340 false))

(declare-fun b!3936341 () Bool)

(declare-fun e!2435267 () Bool)

(declare-fun e!2435274 () Bool)

(assert (=> b!3936341 (= e!2435267 e!2435274)))

(declare-fun res!1592809 () Bool)

(assert (=> b!3936341 (=> (not res!1592809) (not e!2435274))))

(declare-datatypes ((LexerInterface!6115 0))(
  ( (LexerInterfaceExt!6112 (__x!25730 Int)) (Lexer!6113) )
))
(declare-fun thiss!20629 () LexerInterface!6115)

(declare-datatypes ((List!41910 0))(
  ( (Nil!41786) (Cons!41786 (h!47206 Rule!12852) (t!326393 List!41910)) )
))
(declare-fun rules!2768 () List!41910)

(declare-fun lt!1376100 () tuple2!41066)

(declare-fun lexList!1883 (LexerInterface!6115 List!41910 List!41908) tuple2!41066)

(assert (=> b!3936341 (= res!1592809 (= (lexList!1883 thiss!20629 rules!2768 suffix!1176) lt!1376100))))

(assert (=> b!3936341 (= lt!1376100 (tuple2!41067 suffixTokens!72 suffixResult!91))))

(declare-fun b!3936342 () Bool)

(declare-fun res!1592786 () Bool)

(declare-fun e!2435276 () Bool)

(assert (=> b!3936342 (=> res!1592786 e!2435276)))

(declare-fun isEmpty!24916 (List!41908) Bool)

(assert (=> b!3936342 (= res!1592786 (isEmpty!24916 suffix!1176))))

(declare-fun b!3936343 () Bool)

(declare-fun res!1592792 () Bool)

(declare-fun e!2435255 () Bool)

(assert (=> b!3936343 (=> (not res!1592792) (not e!2435255))))

(declare-fun rulesInvariant!5458 (LexerInterface!6115 List!41910) Bool)

(assert (=> b!3936343 (= res!1592792 (rulesInvariant!5458 thiss!20629 rules!2768))))

(declare-fun b!3936344 () Bool)

(declare-fun e!2435287 () Unit!60277)

(declare-fun Unit!60280 () Unit!60277)

(assert (=> b!3936344 (= e!2435287 Unit!60280)))

(declare-fun lt!1376083 () Int)

(declare-fun size!31349 (List!41908) Int)

(assert (=> b!3936344 (= lt!1376083 (size!31349 lt!1376066))))

(declare-fun lt!1376105 () Unit!60277)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1357 (LexerInterface!6115 List!41910 List!41908 List!41908 List!41908 Rule!12852) Unit!60277)

(assert (=> b!3936344 (= lt!1376105 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1357 thiss!20629 rules!2768 lt!1376077 lt!1376066 (_2!23668 (v!39275 lt!1376064)) (rule!9478 (_1!23668 (v!39275 lt!1376064)))))))

(declare-fun lt!1376095 () Int)

(declare-fun lt!1376108 () TokenValue!6756)

(declare-fun maxPrefixOneRule!2489 (LexerInterface!6115 Rule!12852 List!41908) Option!8946)

(assert (=> b!3936344 (= (maxPrefixOneRule!2489 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))) lt!1376066) (Some!8945 (tuple2!41069 (Token!12191 lt!1376108 (rule!9478 (_1!23668 (v!39275 lt!1376064))) lt!1376095 lt!1376077) (_2!23668 (v!39275 lt!1376064)))))))

(declare-fun lt!1376087 () tuple2!41068)

(declare-fun get!13809 (Option!8946) tuple2!41068)

(assert (=> b!3936344 (= lt!1376087 (get!13809 lt!1376064))))

(declare-fun c!684005 () Bool)

(declare-fun lt!1376093 () Int)

(assert (=> b!3936344 (= c!684005 (< (size!31349 (_2!23668 lt!1376087)) lt!1376093))))

(declare-fun lt!1376102 () Unit!60277)

(declare-fun e!2435285 () Unit!60277)

(assert (=> b!3936344 (= lt!1376102 e!2435285)))

(assert (=> b!3936344 false))

(declare-fun b!3936345 () Bool)

(declare-fun e!2435257 () Bool)

(declare-fun e!2435253 () Bool)

(assert (=> b!3936345 (= e!2435257 e!2435253)))

(declare-fun res!1592787 () Bool)

(assert (=> b!3936345 (=> res!1592787 e!2435253)))

(assert (=> b!3936345 (= res!1592787 (>= lt!1376095 (size!31349 prefix!426)))))

(assert (=> b!3936345 (isPrefix!3621 lt!1376077 prefix!426)))

(declare-fun lt!1376096 () Unit!60277)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!299 (List!41908 List!41908 List!41908) Unit!60277)

(assert (=> b!3936345 (= lt!1376096 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!299 prefix!426 lt!1376077 lt!1376066))))

(assert (=> b!3936345 (isPrefix!3621 prefix!426 lt!1376066)))

(declare-fun lt!1376075 () Unit!60277)

(assert (=> b!3936345 (= lt!1376075 (lemmaConcatTwoListThenFirstIsPrefix!2484 prefix!426 suffix!1176))))

(declare-fun b!3936346 () Bool)

(declare-fun e!2435279 () Unit!60277)

(declare-fun Unit!60281 () Unit!60277)

(assert (=> b!3936346 (= e!2435279 Unit!60281)))

(declare-fun lt!1376068 () Unit!60277)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!126 (LexerInterface!6115 List!41910 List!41908 List!41908 List!41909 List!41908) Unit!60277)

(assert (=> b!3936346 (= lt!1376068 (lemmaLexWithSmallerInputCannotProduceSameResults!126 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376064)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3936346 false))

(declare-fun b!3936347 () Bool)

(declare-fun e!2435281 () Bool)

(assert (=> b!3936347 (= e!2435253 e!2435281)))

(declare-fun res!1592784 () Bool)

(assert (=> b!3936347 (=> res!1592784 e!2435281)))

(declare-fun lt!1376074 () List!41908)

(assert (=> b!3936347 (= res!1592784 (not (= lt!1376074 prefix!426)))))

(declare-fun ++!10810 (List!41908 List!41908) List!41908)

(assert (=> b!3936347 (= lt!1376074 (++!10810 lt!1376077 lt!1376085))))

(declare-fun getSuffix!2076 (List!41908 List!41908) List!41908)

(assert (=> b!3936347 (= lt!1376085 (getSuffix!2076 prefix!426 lt!1376077))))

(declare-fun b!3936348 () Bool)

(declare-fun Unit!60282 () Unit!60277)

(assert (=> b!3936348 (= e!2435287 Unit!60282)))

(declare-fun b!3936349 () Bool)

(declare-fun e!2435280 () Bool)

(assert (=> b!3936349 (= e!2435280 (= (size!31348 (_1!23668 (v!39275 lt!1376064))) (size!31349 (originalCharacters!7126 (_1!23668 (v!39275 lt!1376064))))))))

(declare-fun b!3936350 () Bool)

(declare-fun e!2435264 () Bool)

(declare-fun e!2435270 () Bool)

(assert (=> b!3936350 (= e!2435264 (not e!2435270))))

(declare-fun res!1592800 () Bool)

(assert (=> b!3936350 (=> res!1592800 e!2435270)))

(declare-fun lt!1376104 () List!41908)

(assert (=> b!3936350 (= res!1592800 (not (= lt!1376104 lt!1376066)))))

(assert (=> b!3936350 (= lt!1376099 (lexList!1883 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376064))))))

(declare-fun lt!1376084 () List!41908)

(assert (=> b!3936350 (and (= (size!31348 (_1!23668 (v!39275 lt!1376064))) lt!1376095) (= (originalCharacters!7126 (_1!23668 (v!39275 lt!1376064))) lt!1376077) (= (tuple2!41069 (_1!23668 (v!39275 lt!1376064)) (_2!23668 (v!39275 lt!1376064))) (tuple2!41069 (Token!12191 lt!1376108 (rule!9478 (_1!23668 (v!39275 lt!1376064))) lt!1376095 lt!1376077) lt!1376084)))))

(assert (=> b!3936350 (= lt!1376095 (size!31349 lt!1376077))))

(assert (=> b!3936350 e!2435280))

(declare-fun res!1592803 () Bool)

(assert (=> b!3936350 (=> (not res!1592803) (not e!2435280))))

(assert (=> b!3936350 (= res!1592803 (= (value!206625 (_1!23668 (v!39275 lt!1376064))) lt!1376108))))

(declare-fun apply!9765 (TokenValueInjection!12940 BalanceConc!25068) TokenValue!6756)

(declare-fun seqFromList!4793 (List!41908) BalanceConc!25068)

(assert (=> b!3936350 (= lt!1376108 (apply!9765 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) (seqFromList!4793 lt!1376077)))))

(assert (=> b!3936350 (= (_2!23668 (v!39275 lt!1376064)) lt!1376084)))

(declare-fun lt!1376103 () Unit!60277)

(assert (=> b!3936350 (= lt!1376103 (lemmaSamePrefixThenSameSuffix!1842 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 lt!1376084 lt!1376066))))

(assert (=> b!3936350 (= lt!1376084 (getSuffix!2076 lt!1376066 lt!1376077))))

(assert (=> b!3936350 (isPrefix!3621 lt!1376077 lt!1376104)))

(assert (=> b!3936350 (= lt!1376104 (++!10810 lt!1376077 (_2!23668 (v!39275 lt!1376064))))))

(declare-fun lt!1376101 () Unit!60277)

(assert (=> b!3936350 (= lt!1376101 (lemmaConcatTwoListThenFirstIsPrefix!2484 lt!1376077 (_2!23668 (v!39275 lt!1376064))))))

(declare-fun list!15526 (BalanceConc!25068) List!41908)

(declare-fun charsOf!4350 (Token!12190) BalanceConc!25068)

(assert (=> b!3936350 (= lt!1376077 (list!15526 (charsOf!4350 (_1!23668 (v!39275 lt!1376064)))))))

(declare-fun ruleValid!2474 (LexerInterface!6115 Rule!12852) Bool)

(assert (=> b!3936350 (ruleValid!2474 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))))))

(declare-fun lt!1376062 () Unit!60277)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1554 (LexerInterface!6115 Rule!12852 List!41910) Unit!60277)

(assert (=> b!3936350 (= lt!1376062 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1554 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))) rules!2768))))

(declare-fun lt!1376109 () Unit!60277)

(declare-fun lemmaCharactersSize!1183 (Token!12190) Unit!60277)

(assert (=> b!3936350 (= lt!1376109 (lemmaCharactersSize!1183 (_1!23668 (v!39275 lt!1376064))))))

(declare-fun tp!1197869 () Bool)

(declare-fun b!3936351 () Bool)

(declare-fun e!2435284 () Bool)

(declare-fun e!2435258 () Bool)

(declare-fun inv!55982 (String!47498) Bool)

(declare-fun inv!55985 (TokenValueInjection!12940) Bool)

(assert (=> b!3936351 (= e!2435258 (and tp!1197869 (inv!55982 (tag!7386 (h!47206 rules!2768))) (inv!55985 (transformation!6526 (h!47206 rules!2768))) e!2435284))))

(declare-fun b!3936352 () Bool)

(declare-fun tp!1197865 () Bool)

(declare-fun e!2435282 () Bool)

(declare-fun e!2435277 () Bool)

(declare-fun inv!55986 (Token!12190) Bool)

(assert (=> b!3936352 (= e!2435282 (and (inv!55986 (h!47205 prefixTokens!80)) e!2435277 tp!1197865))))

(declare-fun b!3936353 () Bool)

(declare-fun res!1592783 () Bool)

(declare-fun e!2435266 () Bool)

(assert (=> b!3936353 (=> res!1592783 e!2435266)))

(assert (=> b!3936353 (= res!1592783 (not (= (lexList!1883 thiss!20629 rules!2768 lt!1376082) lt!1376069)))))

(declare-fun b!3936354 () Bool)

(declare-fun e!2435268 () Bool)

(assert (=> b!3936354 (= e!2435270 e!2435268)))

(declare-fun res!1592791 () Bool)

(assert (=> b!3936354 (=> res!1592791 e!2435268)))

(declare-fun lt!1376097 () List!41909)

(declare-fun lt!1376098 () tuple2!41066)

(assert (=> b!3936354 (= res!1592791 (not (= lt!1376098 (tuple2!41067 (++!10809 lt!1376097 (_1!23667 lt!1376099)) (_2!23667 lt!1376099)))))))

(assert (=> b!3936354 (= lt!1376097 (Cons!41785 (_1!23668 (v!39275 lt!1376064)) Nil!41785))))

(declare-fun b!3936355 () Bool)

(assert (=> b!3936355 (= e!2435274 e!2435264)))

(declare-fun res!1592805 () Bool)

(assert (=> b!3936355 (=> (not res!1592805) (not e!2435264))))

(get-info :version)

(assert (=> b!3936355 (= res!1592805 ((_ is Some!8945) lt!1376064))))

(declare-fun maxPrefix!3419 (LexerInterface!6115 List!41910 List!41908) Option!8946)

(assert (=> b!3936355 (= lt!1376064 (maxPrefix!3419 thiss!20629 rules!2768 lt!1376066))))

(declare-fun b!3936356 () Bool)

(declare-fun res!1592804 () Bool)

(assert (=> b!3936356 (=> res!1592804 e!2435268)))

(assert (=> b!3936356 (= res!1592804 (or (not (= lt!1376099 (tuple2!41067 (_1!23667 lt!1376099) (_2!23667 lt!1376099)))) (= (_2!23668 (v!39275 lt!1376064)) suffix!1176)))))

(declare-fun e!2435265 () Bool)

(declare-fun tp!1197874 () Bool)

(declare-fun b!3936357 () Bool)

(declare-fun e!2435259 () Bool)

(assert (=> b!3936357 (= e!2435265 (and tp!1197874 (inv!55982 (tag!7386 (rule!9478 (h!47205 suffixTokens!72)))) (inv!55985 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) e!2435259))))

(declare-fun b!3936358 () Bool)

(declare-fun res!1592801 () Bool)

(assert (=> b!3936358 (=> (not res!1592801) (not e!2435255))))

(declare-fun isEmpty!24917 (List!41909) Bool)

(assert (=> b!3936358 (= res!1592801 (not (isEmpty!24917 prefixTokens!80)))))

(declare-fun b!3936359 () Bool)

(assert (=> b!3936359 (= e!2435268 e!2435257)))

(declare-fun res!1592785 () Bool)

(assert (=> b!3936359 (=> res!1592785 e!2435257)))

(declare-fun lt!1376107 () Int)

(assert (=> b!3936359 (= res!1592785 (<= lt!1376107 lt!1376093))))

(declare-fun lt!1376067 () Unit!60277)

(assert (=> b!3936359 (= lt!1376067 e!2435250)))

(declare-fun c!684004 () Bool)

(assert (=> b!3936359 (= c!684004 (= lt!1376107 lt!1376093))))

(declare-fun lt!1376094 () Unit!60277)

(assert (=> b!3936359 (= lt!1376094 e!2435287)))

(declare-fun c!684007 () Bool)

(assert (=> b!3936359 (= c!684007 (< lt!1376107 lt!1376093))))

(assert (=> b!3936359 (= lt!1376093 (size!31349 suffix!1176))))

(assert (=> b!3936359 (= lt!1376107 (size!31349 (_2!23668 (v!39275 lt!1376064))))))

(declare-fun b!3936360 () Bool)

(declare-fun Unit!60283 () Unit!60277)

(assert (=> b!3936360 (= e!2435250 Unit!60283)))

(declare-fun b!3936361 () Bool)

(declare-fun res!1592797 () Bool)

(assert (=> b!3936361 (=> res!1592797 e!2435276)))

(assert (=> b!3936361 (= res!1592797 (not (isPrefix!3621 lt!1376085 (_2!23668 (v!39275 lt!1376064)))))))

(declare-fun b!3936362 () Bool)

(declare-fun e!2435256 () Bool)

(declare-fun e!2435249 () Bool)

(assert (=> b!3936362 (= e!2435256 e!2435249)))

(declare-fun res!1592796 () Bool)

(assert (=> b!3936362 (=> res!1592796 e!2435249)))

(declare-fun lt!1376061 () List!41908)

(declare-fun lt!1376088 () List!41908)

(assert (=> b!3936362 (= res!1592796 (or (not (= lt!1376066 lt!1376061)) (not (= lt!1376066 lt!1376088)) (not (= lt!1376104 lt!1376088))))))

(assert (=> b!3936362 (= lt!1376061 lt!1376088)))

(assert (=> b!3936362 (= lt!1376088 (++!10810 lt!1376077 lt!1376082))))

(assert (=> b!3936362 (= lt!1376082 (++!10810 lt!1376085 suffix!1176))))

(declare-fun lt!1376078 () Unit!60277)

(declare-fun lemmaConcatAssociativity!2339 (List!41908 List!41908 List!41908) Unit!60277)

(assert (=> b!3936362 (= lt!1376078 (lemmaConcatAssociativity!2339 lt!1376077 lt!1376085 suffix!1176))))

(declare-fun b!3936363 () Bool)

(assert (=> b!3936363 (= e!2435276 (isPrefix!3621 Nil!41784 suffix!1176))))

(assert (=> b!3936363 (isPrefix!3621 Nil!41784 (++!10810 Nil!41784 suffix!1176))))

(declare-fun lt!1376081 () Unit!60277)

(assert (=> b!3936363 (= lt!1376081 (lemmaConcatTwoListThenFirstIsPrefix!2484 Nil!41784 suffix!1176))))

(declare-fun b!3936364 () Bool)

(assert (=> b!3936364 (= e!2435249 e!2435251)))

(declare-fun res!1592807 () Bool)

(assert (=> b!3936364 (=> res!1592807 e!2435251)))

(assert (=> b!3936364 (= res!1592807 (not (= lt!1376082 (_2!23668 (v!39275 lt!1376064)))))))

(assert (=> b!3936364 (= (_2!23668 (v!39275 lt!1376064)) lt!1376082)))

(declare-fun lt!1376072 () Unit!60277)

(assert (=> b!3936364 (= lt!1376072 (lemmaSamePrefixThenSameSuffix!1842 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 lt!1376082 lt!1376066))))

(assert (=> b!3936364 (isPrefix!3621 lt!1376077 lt!1376088)))

(declare-fun lt!1376060 () Unit!60277)

(assert (=> b!3936364 (= lt!1376060 (lemmaConcatTwoListThenFirstIsPrefix!2484 lt!1376077 lt!1376082))))

(declare-fun call!285000 () tuple2!41066)

(declare-fun bm!284995 () Bool)

(assert (=> bm!284995 (= call!285000 (lexList!1883 thiss!20629 rules!2768 (_2!23668 lt!1376087)))))

(declare-fun b!3936365 () Bool)

(assert (=> b!3936365 (= e!2435281 e!2435256)))

(declare-fun res!1592789 () Bool)

(assert (=> b!3936365 (=> res!1592789 e!2435256)))

(assert (=> b!3936365 (= res!1592789 (or (not (= lt!1376061 lt!1376066)) (not (= lt!1376061 lt!1376104))))))

(assert (=> b!3936365 (= lt!1376061 (++!10810 lt!1376074 suffix!1176))))

(declare-fun b!3936366 () Bool)

(declare-fun c!684003 () Bool)

(declare-fun lt!1376076 () List!41909)

(assert (=> b!3936366 (= c!684003 (isEmpty!24917 lt!1376076))))

(assert (=> b!3936366 (= lt!1376076 (tail!6085 prefixTokens!80))))

(declare-fun e!2435272 () Unit!60277)

(assert (=> b!3936366 (= e!2435285 e!2435272)))

(declare-fun b!3936367 () Bool)

(assert (=> b!3936367 (= e!2435255 e!2435267)))

(declare-fun res!1592795 () Bool)

(assert (=> b!3936367 (=> (not res!1592795) (not e!2435267))))

(declare-fun lt!1376071 () List!41909)

(assert (=> b!3936367 (= res!1592795 (= lt!1376098 (tuple2!41067 lt!1376071 suffixResult!91)))))

(assert (=> b!3936367 (= lt!1376098 (lexList!1883 thiss!20629 rules!2768 lt!1376066))))

(assert (=> b!3936367 (= lt!1376071 (++!10809 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3936367 (= lt!1376066 (++!10810 prefix!426 suffix!1176))))

(declare-fun b!3936368 () Bool)

(declare-fun Unit!60284 () Unit!60277)

(assert (=> b!3936368 (= e!2435272 Unit!60284)))

(declare-fun lt!1376092 () Unit!60277)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!574 (List!41908 List!41908 List!41908 List!41908) Unit!60277)

(assert (=> b!3936368 (= lt!1376092 (lemmaConcatSameAndSameSizesThenSameLists!574 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 (_2!23668 lt!1376087)))))

(assert (=> b!3936368 (= (_2!23668 (v!39275 lt!1376064)) (_2!23668 lt!1376087))))

(declare-fun lt!1376091 () Unit!60277)

(assert (=> b!3936368 (= lt!1376091 (lemmaLexWithSmallerInputCannotProduceSameResults!126 thiss!20629 rules!2768 suffix!1176 (_2!23668 lt!1376087) suffixTokens!72 suffixResult!91))))

(declare-fun res!1592790 () Bool)

(assert (=> b!3936368 (= res!1592790 (not (= call!285000 lt!1376100)))))

(declare-fun e!2435262 () Bool)

(assert (=> b!3936368 (=> (not res!1592790) (not e!2435262))))

(assert (=> b!3936368 e!2435262))

(declare-fun res!1592802 () Bool)

(assert (=> start!369476 (=> (not res!1592802) (not e!2435255))))

(assert (=> start!369476 (= res!1592802 ((_ is Lexer!6113) thiss!20629))))

(assert (=> start!369476 e!2435255))

(declare-fun e!2435263 () Bool)

(assert (=> start!369476 e!2435263))

(assert (=> start!369476 true))

(declare-fun e!2435290 () Bool)

(assert (=> start!369476 e!2435290))

(declare-fun e!2435273 () Bool)

(assert (=> start!369476 e!2435273))

(assert (=> start!369476 e!2435282))

(declare-fun e!2435261 () Bool)

(assert (=> start!369476 e!2435261))

(declare-fun e!2435288 () Bool)

(assert (=> start!369476 e!2435288))

(assert (=> b!3936369 (= e!2435259 (and tp!1197864 tp!1197872))))

(declare-fun e!2435278 () Bool)

(assert (=> b!3936370 (= e!2435278 (and tp!1197867 tp!1197862))))

(declare-fun b!3936371 () Bool)

(declare-fun res!1592798 () Bool)

(assert (=> b!3936371 (=> (not res!1592798) (not e!2435255))))

(assert (=> b!3936371 (= res!1592798 (not (isEmpty!24916 prefix!426)))))

(declare-fun b!3936372 () Bool)

(declare-fun tp_is_empty!19833 () Bool)

(declare-fun tp!1197870 () Bool)

(assert (=> b!3936372 (= e!2435290 (and tp_is_empty!19833 tp!1197870))))

(assert (=> b!3936373 (= e!2435284 (and tp!1197866 tp!1197875))))

(declare-fun b!3936374 () Bool)

(assert (=> b!3936374 (= e!2435260 e!2435266)))

(declare-fun res!1592793 () Bool)

(assert (=> b!3936374 (=> res!1592793 e!2435266)))

(declare-fun lt!1376090 () List!41909)

(assert (=> b!3936374 (= res!1592793 (not (= lt!1376090 lt!1376071)))))

(assert (=> b!3936374 (= lt!1376090 (++!10809 lt!1376097 lt!1376086))))

(assert (=> b!3936374 (= lt!1376090 (++!10809 (++!10809 lt!1376097 lt!1376059) suffixTokens!72))))

(declare-fun lt!1376073 () Unit!60277)

(declare-fun lemmaConcatAssociativity!2340 (List!41909 List!41909 List!41909) Unit!60277)

(assert (=> b!3936374 (= lt!1376073 (lemmaConcatAssociativity!2340 lt!1376097 lt!1376059 suffixTokens!72))))

(declare-fun lt!1376065 () Unit!60277)

(assert (=> b!3936374 (= lt!1376065 e!2435279)))

(declare-fun c!684006 () Bool)

(assert (=> b!3936374 (= c!684006 (isEmpty!24917 lt!1376059))))

(declare-fun b!3936375 () Bool)

(assert (=> b!3936375 (= e!2435266 e!2435276)))

(declare-fun res!1592794 () Bool)

(assert (=> b!3936375 (=> res!1592794 e!2435276)))

(assert (=> b!3936375 (= res!1592794 (not (= lt!1376064 (Some!8945 (tuple2!41069 (_1!23668 (v!39275 lt!1376064)) (_2!23668 (v!39275 lt!1376064)))))))))

(assert (=> b!3936375 (= (lexList!1883 thiss!20629 rules!2768 lt!1376085) (tuple2!41067 lt!1376059 Nil!41784))))

(declare-fun lt!1376070 () Unit!60277)

(declare-fun lemmaLexThenLexPrefix!611 (LexerInterface!6115 List!41910 List!41908 List!41908 List!41909 List!41909 List!41908) Unit!60277)

(assert (=> b!3936375 (= lt!1376070 (lemmaLexThenLexPrefix!611 thiss!20629 rules!2768 lt!1376085 suffix!1176 lt!1376059 suffixTokens!72 suffixResult!91))))

(declare-fun b!3936376 () Bool)

(declare-fun res!1592782 () Bool)

(assert (=> b!3936376 (=> res!1592782 e!2435276)))

(assert (=> b!3936376 (= res!1592782 (<= lt!1376093 (size!31349 Nil!41784)))))

(declare-fun e!2435283 () Bool)

(declare-fun b!3936377 () Bool)

(declare-fun tp!1197868 () Bool)

(declare-fun inv!21 (TokenValue!6756) Bool)

(assert (=> b!3936377 (= e!2435283 (and (inv!21 (value!206625 (h!47205 suffixTokens!72))) e!2435265 tp!1197868))))

(declare-fun b!3936378 () Bool)

(declare-fun Unit!60285 () Unit!60277)

(assert (=> b!3936378 (= e!2435279 Unit!60285)))

(declare-fun b!3936379 () Bool)

(declare-fun e!2435269 () Bool)

(assert (=> b!3936379 (= e!2435269 false)))

(declare-fun b!3936380 () Bool)

(declare-fun tp!1197863 () Bool)

(assert (=> b!3936380 (= e!2435263 (and tp_is_empty!19833 tp!1197863))))

(declare-fun b!3936381 () Bool)

(declare-fun res!1592806 () Bool)

(assert (=> b!3936381 (=> res!1592806 e!2435257)))

(declare-fun head!8359 (List!41909) Token!12190)

(assert (=> b!3936381 (= res!1592806 (not (= (head!8359 prefixTokens!80) (_1!23668 (v!39275 lt!1376064)))))))

(declare-fun b!3936382 () Bool)

(declare-fun Unit!60286 () Unit!60277)

(assert (=> b!3936382 (= e!2435272 Unit!60286)))

(declare-fun lt!1376106 () Unit!60277)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!126 (LexerInterface!6115 List!41910 List!41908 List!41908 List!41909 List!41908 List!41909) Unit!60277)

(assert (=> b!3936382 (= lt!1376106 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!126 thiss!20629 rules!2768 suffix!1176 (_2!23668 lt!1376087) suffixTokens!72 suffixResult!91 lt!1376076))))

(declare-fun res!1592799 () Bool)

(assert (=> b!3936382 (= res!1592799 (not (= call!285000 (tuple2!41067 (++!10809 lt!1376076 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3936382 (=> (not res!1592799) (not e!2435269))))

(assert (=> b!3936382 e!2435269))

(declare-fun b!3936383 () Bool)

(declare-fun Unit!60287 () Unit!60277)

(assert (=> b!3936383 (= e!2435285 Unit!60287)))

(declare-fun b!3936384 () Bool)

(assert (=> b!3936384 (= e!2435262 false)))

(declare-fun b!3936385 () Bool)

(declare-fun res!1592808 () Bool)

(assert (=> b!3936385 (=> (not res!1592808) (not e!2435255))))

(declare-fun isEmpty!24918 (List!41910) Bool)

(assert (=> b!3936385 (= res!1592808 (not (isEmpty!24918 rules!2768)))))

(declare-fun b!3936386 () Bool)

(declare-fun tp!1197876 () Bool)

(assert (=> b!3936386 (= e!2435288 (and tp_is_empty!19833 tp!1197876))))

(declare-fun b!3936387 () Bool)

(declare-fun tp!1197871 () Bool)

(assert (=> b!3936387 (= e!2435273 (and e!2435258 tp!1197871))))

(declare-fun b!3936388 () Bool)

(declare-fun tp!1197873 () Bool)

(declare-fun e!2435271 () Bool)

(assert (=> b!3936388 (= e!2435277 (and (inv!21 (value!206625 (h!47205 prefixTokens!80))) e!2435271 tp!1197873))))

(declare-fun tp!1197878 () Bool)

(declare-fun b!3936389 () Bool)

(assert (=> b!3936389 (= e!2435261 (and (inv!55986 (h!47205 suffixTokens!72)) e!2435283 tp!1197878))))

(declare-fun tp!1197877 () Bool)

(declare-fun b!3936390 () Bool)

(assert (=> b!3936390 (= e!2435271 (and tp!1197877 (inv!55982 (tag!7386 (rule!9478 (h!47205 prefixTokens!80)))) (inv!55985 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) e!2435278))))

(assert (= (and start!369476 res!1592802) b!3936385))

(assert (= (and b!3936385 res!1592808) b!3936343))

(assert (= (and b!3936343 res!1592792) b!3936358))

(assert (= (and b!3936358 res!1592801) b!3936371))

(assert (= (and b!3936371 res!1592798) b!3936367))

(assert (= (and b!3936367 res!1592795) b!3936341))

(assert (= (and b!3936341 res!1592809) b!3936355))

(assert (= (and b!3936355 res!1592805) b!3936350))

(assert (= (and b!3936350 res!1592803) b!3936349))

(assert (= (and b!3936350 (not res!1592800)) b!3936354))

(assert (= (and b!3936354 (not res!1592791)) b!3936356))

(assert (= (and b!3936356 (not res!1592804)) b!3936359))

(assert (= (and b!3936359 c!684007) b!3936344))

(assert (= (and b!3936359 (not c!684007)) b!3936348))

(assert (= (and b!3936344 c!684005) b!3936366))

(assert (= (and b!3936344 (not c!684005)) b!3936383))

(assert (= (and b!3936366 c!684003) b!3936368))

(assert (= (and b!3936366 (not c!684003)) b!3936382))

(assert (= (and b!3936368 res!1592790) b!3936384))

(assert (= (and b!3936382 res!1592799) b!3936379))

(assert (= (or b!3936368 b!3936382) bm!284995))

(assert (= (and b!3936359 c!684004) b!3936340))

(assert (= (and b!3936359 (not c!684004)) b!3936360))

(assert (= (and b!3936359 (not res!1592785)) b!3936381))

(assert (= (and b!3936381 (not res!1592806)) b!3936345))

(assert (= (and b!3936345 (not res!1592787)) b!3936347))

(assert (= (and b!3936347 (not res!1592784)) b!3936365))

(assert (= (and b!3936365 (not res!1592789)) b!3936362))

(assert (= (and b!3936362 (not res!1592796)) b!3936364))

(assert (= (and b!3936364 (not res!1592807)) b!3936339))

(assert (= (and b!3936339 (not res!1592788)) b!3936374))

(assert (= (and b!3936374 c!684006) b!3936346))

(assert (= (and b!3936374 (not c!684006)) b!3936378))

(assert (= (and b!3936374 (not res!1592793)) b!3936353))

(assert (= (and b!3936353 (not res!1592783)) b!3936375))

(assert (= (and b!3936375 (not res!1592794)) b!3936342))

(assert (= (and b!3936342 (not res!1592786)) b!3936361))

(assert (= (and b!3936361 (not res!1592797)) b!3936376))

(assert (= (and b!3936376 (not res!1592782)) b!3936363))

(assert (= (and start!369476 ((_ is Cons!41784) suffixResult!91)) b!3936380))

(assert (= (and start!369476 ((_ is Cons!41784) suffix!1176)) b!3936372))

(assert (= b!3936351 b!3936373))

(assert (= b!3936387 b!3936351))

(assert (= (and start!369476 ((_ is Cons!41786) rules!2768)) b!3936387))

(assert (= b!3936390 b!3936370))

(assert (= b!3936388 b!3936390))

(assert (= b!3936352 b!3936388))

(assert (= (and start!369476 ((_ is Cons!41785) prefixTokens!80)) b!3936352))

(assert (= b!3936357 b!3936369))

(assert (= b!3936377 b!3936357))

(assert (= b!3936389 b!3936377))

(assert (= (and start!369476 ((_ is Cons!41785) suffixTokens!72)) b!3936389))

(assert (= (and start!369476 ((_ is Cons!41784) prefix!426)) b!3936386))

(declare-fun m!4503971 () Bool)

(assert (=> b!3936350 m!4503971))

(declare-fun m!4503973 () Bool)

(assert (=> b!3936350 m!4503973))

(declare-fun m!4503975 () Bool)

(assert (=> b!3936350 m!4503975))

(declare-fun m!4503977 () Bool)

(assert (=> b!3936350 m!4503977))

(declare-fun m!4503979 () Bool)

(assert (=> b!3936350 m!4503979))

(declare-fun m!4503981 () Bool)

(assert (=> b!3936350 m!4503981))

(declare-fun m!4503983 () Bool)

(assert (=> b!3936350 m!4503983))

(declare-fun m!4503985 () Bool)

(assert (=> b!3936350 m!4503985))

(declare-fun m!4503987 () Bool)

(assert (=> b!3936350 m!4503987))

(assert (=> b!3936350 m!4503971))

(declare-fun m!4503989 () Bool)

(assert (=> b!3936350 m!4503989))

(declare-fun m!4503991 () Bool)

(assert (=> b!3936350 m!4503991))

(assert (=> b!3936350 m!4503985))

(declare-fun m!4503993 () Bool)

(assert (=> b!3936350 m!4503993))

(declare-fun m!4503995 () Bool)

(assert (=> b!3936350 m!4503995))

(declare-fun m!4503997 () Bool)

(assert (=> b!3936350 m!4503997))

(declare-fun m!4503999 () Bool)

(assert (=> b!3936344 m!4503999))

(declare-fun m!4504001 () Bool)

(assert (=> b!3936344 m!4504001))

(declare-fun m!4504003 () Bool)

(assert (=> b!3936344 m!4504003))

(declare-fun m!4504005 () Bool)

(assert (=> b!3936344 m!4504005))

(declare-fun m!4504007 () Bool)

(assert (=> b!3936344 m!4504007))

(declare-fun m!4504009 () Bool)

(assert (=> b!3936352 m!4504009))

(declare-fun m!4504011 () Bool)

(assert (=> b!3936340 m!4504011))

(declare-fun m!4504013 () Bool)

(assert (=> b!3936340 m!4504013))

(declare-fun m!4504015 () Bool)

(assert (=> b!3936340 m!4504015))

(declare-fun m!4504017 () Bool)

(assert (=> b!3936340 m!4504017))

(declare-fun m!4504019 () Bool)

(assert (=> b!3936351 m!4504019))

(declare-fun m!4504021 () Bool)

(assert (=> b!3936351 m!4504021))

(declare-fun m!4504023 () Bool)

(assert (=> b!3936368 m!4504023))

(declare-fun m!4504025 () Bool)

(assert (=> b!3936368 m!4504025))

(declare-fun m!4504027 () Bool)

(assert (=> b!3936375 m!4504027))

(declare-fun m!4504029 () Bool)

(assert (=> b!3936375 m!4504029))

(declare-fun m!4504031 () Bool)

(assert (=> b!3936358 m!4504031))

(declare-fun m!4504033 () Bool)

(assert (=> b!3936366 m!4504033))

(declare-fun m!4504035 () Bool)

(assert (=> b!3936366 m!4504035))

(declare-fun m!4504037 () Bool)

(assert (=> b!3936389 m!4504037))

(declare-fun m!4504039 () Bool)

(assert (=> b!3936347 m!4504039))

(declare-fun m!4504041 () Bool)

(assert (=> b!3936347 m!4504041))

(declare-fun m!4504043 () Bool)

(assert (=> b!3936365 m!4504043))

(declare-fun m!4504045 () Bool)

(assert (=> b!3936361 m!4504045))

(declare-fun m!4504047 () Bool)

(assert (=> b!3936382 m!4504047))

(declare-fun m!4504049 () Bool)

(assert (=> b!3936382 m!4504049))

(declare-fun m!4504051 () Bool)

(assert (=> b!3936388 m!4504051))

(declare-fun m!4504053 () Bool)

(assert (=> b!3936376 m!4504053))

(declare-fun m!4504055 () Bool)

(assert (=> b!3936364 m!4504055))

(declare-fun m!4504057 () Bool)

(assert (=> b!3936364 m!4504057))

(declare-fun m!4504059 () Bool)

(assert (=> b!3936364 m!4504059))

(declare-fun m!4504061 () Bool)

(assert (=> b!3936339 m!4504061))

(assert (=> b!3936339 m!4504035))

(declare-fun m!4504063 () Bool)

(assert (=> b!3936339 m!4504063))

(declare-fun m!4504065 () Bool)

(assert (=> b!3936339 m!4504065))

(declare-fun m!4504067 () Bool)

(assert (=> bm!284995 m!4504067))

(declare-fun m!4504069 () Bool)

(assert (=> b!3936355 m!4504069))

(declare-fun m!4504071 () Bool)

(assert (=> b!3936353 m!4504071))

(declare-fun m!4504073 () Bool)

(assert (=> b!3936346 m!4504073))

(declare-fun m!4504075 () Bool)

(assert (=> b!3936359 m!4504075))

(declare-fun m!4504077 () Bool)

(assert (=> b!3936359 m!4504077))

(declare-fun m!4504079 () Bool)

(assert (=> b!3936357 m!4504079))

(declare-fun m!4504081 () Bool)

(assert (=> b!3936357 m!4504081))

(declare-fun m!4504083 () Bool)

(assert (=> b!3936349 m!4504083))

(declare-fun m!4504085 () Bool)

(assert (=> b!3936381 m!4504085))

(declare-fun m!4504087 () Bool)

(assert (=> b!3936362 m!4504087))

(declare-fun m!4504089 () Bool)

(assert (=> b!3936362 m!4504089))

(declare-fun m!4504091 () Bool)

(assert (=> b!3936362 m!4504091))

(declare-fun m!4504093 () Bool)

(assert (=> b!3936367 m!4504093))

(declare-fun m!4504095 () Bool)

(assert (=> b!3936367 m!4504095))

(declare-fun m!4504097 () Bool)

(assert (=> b!3936367 m!4504097))

(declare-fun m!4504099 () Bool)

(assert (=> b!3936371 m!4504099))

(declare-fun m!4504101 () Bool)

(assert (=> b!3936354 m!4504101))

(declare-fun m!4504103 () Bool)

(assert (=> b!3936385 m!4504103))

(declare-fun m!4504105 () Bool)

(assert (=> b!3936374 m!4504105))

(declare-fun m!4504107 () Bool)

(assert (=> b!3936374 m!4504107))

(declare-fun m!4504109 () Bool)

(assert (=> b!3936374 m!4504109))

(declare-fun m!4504111 () Bool)

(assert (=> b!3936374 m!4504111))

(assert (=> b!3936374 m!4504109))

(declare-fun m!4504113 () Bool)

(assert (=> b!3936374 m!4504113))

(declare-fun m!4504115 () Bool)

(assert (=> b!3936341 m!4504115))

(declare-fun m!4504117 () Bool)

(assert (=> b!3936377 m!4504117))

(assert (=> b!3936345 m!4504013))

(assert (=> b!3936345 m!4504011))

(declare-fun m!4504119 () Bool)

(assert (=> b!3936345 m!4504119))

(declare-fun m!4504121 () Bool)

(assert (=> b!3936345 m!4504121))

(declare-fun m!4504123 () Bool)

(assert (=> b!3936345 m!4504123))

(declare-fun m!4504125 () Bool)

(assert (=> b!3936363 m!4504125))

(declare-fun m!4504127 () Bool)

(assert (=> b!3936363 m!4504127))

(assert (=> b!3936363 m!4504127))

(declare-fun m!4504129 () Bool)

(assert (=> b!3936363 m!4504129))

(declare-fun m!4504131 () Bool)

(assert (=> b!3936363 m!4504131))

(declare-fun m!4504133 () Bool)

(assert (=> b!3936343 m!4504133))

(declare-fun m!4504135 () Bool)

(assert (=> b!3936390 m!4504135))

(declare-fun m!4504137 () Bool)

(assert (=> b!3936390 m!4504137))

(declare-fun m!4504139 () Bool)

(assert (=> b!3936342 m!4504139))

(check-sat (not b!3936380) (not b!3936381) (not b!3936353) b_and!300625 (not b!3936365) (not b!3936357) b_and!300627 (not b!3936371) (not b!3936344) (not b_next!108211) (not b!3936363) (not b!3936351) (not b!3936349) (not b!3936364) (not b!3936339) (not b!3936388) (not b!3936342) (not b!3936382) b_and!300629 (not b!3936361) (not b!3936362) (not b!3936374) (not b!3936375) (not b!3936372) (not b!3936359) b_and!300631 (not bm!284995) (not b!3936367) (not b!3936376) (not b!3936358) (not b!3936390) (not b!3936387) (not b!3936341) (not b_next!108207) (not b!3936389) (not b!3936368) (not b!3936386) tp_is_empty!19833 (not b_next!108209) (not b!3936346) (not b!3936377) (not b!3936345) (not b!3936347) (not b!3936385) (not b!3936354) b_and!300623 (not b!3936350) (not b_next!108215) (not b_next!108205) (not b!3936366) b_and!300633 (not b!3936340) (not b_next!108213) (not b!3936352) (not b!3936343) (not b!3936355))
(check-sat b_and!300629 b_and!300631 (not b_next!108207) b_and!300625 (not b_next!108209) b_and!300627 b_and!300623 (not b_next!108215) (not b_next!108213) (not b_next!108211) (not b_next!108205) b_and!300633)
(get-model)

(declare-fun d!1167642 () Bool)

(assert (=> d!1167642 (= (inv!55982 (tag!7386 (h!47206 rules!2768))) (= (mod (str.len (value!206624 (tag!7386 (h!47206 rules!2768)))) 2) 0))))

(assert (=> b!3936351 d!1167642))

(declare-fun d!1167644 () Bool)

(declare-fun res!1592816 () Bool)

(declare-fun e!2435293 () Bool)

(assert (=> d!1167644 (=> (not res!1592816) (not e!2435293))))

(declare-fun semiInverseModEq!2806 (Int Int) Bool)

(assert (=> d!1167644 (= res!1592816 (semiInverseModEq!2806 (toChars!8845 (transformation!6526 (h!47206 rules!2768))) (toValue!8986 (transformation!6526 (h!47206 rules!2768)))))))

(assert (=> d!1167644 (= (inv!55985 (transformation!6526 (h!47206 rules!2768))) e!2435293)))

(declare-fun b!3936393 () Bool)

(declare-fun equivClasses!2705 (Int Int) Bool)

(assert (=> b!3936393 (= e!2435293 (equivClasses!2705 (toChars!8845 (transformation!6526 (h!47206 rules!2768))) (toValue!8986 (transformation!6526 (h!47206 rules!2768)))))))

(assert (= (and d!1167644 res!1592816) b!3936393))

(declare-fun m!4504141 () Bool)

(assert (=> d!1167644 m!4504141))

(declare-fun m!4504143 () Bool)

(assert (=> b!3936393 m!4504143))

(assert (=> b!3936351 d!1167644))

(declare-fun d!1167646 () Bool)

(declare-fun res!1592821 () Bool)

(declare-fun e!2435296 () Bool)

(assert (=> d!1167646 (=> (not res!1592821) (not e!2435296))))

(assert (=> d!1167646 (= res!1592821 (not (isEmpty!24916 (originalCharacters!7126 (h!47205 prefixTokens!80)))))))

(assert (=> d!1167646 (= (inv!55986 (h!47205 prefixTokens!80)) e!2435296)))

(declare-fun b!3936398 () Bool)

(declare-fun res!1592822 () Bool)

(assert (=> b!3936398 (=> (not res!1592822) (not e!2435296))))

(declare-fun dynLambda!17903 (Int TokenValue!6756) BalanceConc!25068)

(assert (=> b!3936398 (= res!1592822 (= (originalCharacters!7126 (h!47205 prefixTokens!80)) (list!15526 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (value!206625 (h!47205 prefixTokens!80))))))))

(declare-fun b!3936399 () Bool)

(assert (=> b!3936399 (= e!2435296 (= (size!31348 (h!47205 prefixTokens!80)) (size!31349 (originalCharacters!7126 (h!47205 prefixTokens!80)))))))

(assert (= (and d!1167646 res!1592821) b!3936398))

(assert (= (and b!3936398 res!1592822) b!3936399))

(declare-fun b_lambda!115143 () Bool)

(assert (=> (not b_lambda!115143) (not b!3936398)))

(declare-fun t!326395 () Bool)

(declare-fun tb!235757 () Bool)

(assert (=> (and b!3936373 (= (toChars!8845 (transformation!6526 (h!47206 rules!2768))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80))))) t!326395) tb!235757))

(declare-fun b!3936404 () Bool)

(declare-fun e!2435299 () Bool)

(declare-fun tp!1197881 () Bool)

(declare-fun inv!55987 (Conc!12737) Bool)

(assert (=> b!3936404 (= e!2435299 (and (inv!55987 (c!684009 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (value!206625 (h!47205 prefixTokens!80))))) tp!1197881))))

(declare-fun result!285582 () Bool)

(declare-fun inv!55988 (BalanceConc!25068) Bool)

(assert (=> tb!235757 (= result!285582 (and (inv!55988 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (value!206625 (h!47205 prefixTokens!80)))) e!2435299))))

(assert (= tb!235757 b!3936404))

(declare-fun m!4504145 () Bool)

(assert (=> b!3936404 m!4504145))

(declare-fun m!4504147 () Bool)

(assert (=> tb!235757 m!4504147))

(assert (=> b!3936398 t!326395))

(declare-fun b_and!300635 () Bool)

(assert (= b_and!300625 (and (=> t!326395 result!285582) b_and!300635)))

(declare-fun t!326397 () Bool)

(declare-fun tb!235759 () Bool)

(assert (=> (and b!3936369 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80))))) t!326397) tb!235759))

(declare-fun result!285586 () Bool)

(assert (= result!285586 result!285582))

(assert (=> b!3936398 t!326397))

(declare-fun b_and!300637 () Bool)

(assert (= b_and!300629 (and (=> t!326397 result!285586) b_and!300637)))

(declare-fun t!326399 () Bool)

(declare-fun tb!235761 () Bool)

(assert (=> (and b!3936370 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80))))) t!326399) tb!235761))

(declare-fun result!285588 () Bool)

(assert (= result!285588 result!285582))

(assert (=> b!3936398 t!326399))

(declare-fun b_and!300639 () Bool)

(assert (= b_and!300633 (and (=> t!326399 result!285588) b_and!300639)))

(declare-fun m!4504149 () Bool)

(assert (=> d!1167646 m!4504149))

(declare-fun m!4504151 () Bool)

(assert (=> b!3936398 m!4504151))

(assert (=> b!3936398 m!4504151))

(declare-fun m!4504153 () Bool)

(assert (=> b!3936398 m!4504153))

(declare-fun m!4504155 () Bool)

(assert (=> b!3936399 m!4504155))

(assert (=> b!3936352 d!1167646))

(declare-fun b!3936415 () Bool)

(declare-fun e!2435307 () Bool)

(declare-fun e!2435306 () Bool)

(assert (=> b!3936415 (= e!2435307 e!2435306)))

(declare-fun res!1592829 () Bool)

(declare-fun lt!1376117 () tuple2!41066)

(assert (=> b!3936415 (= res!1592829 (< (size!31349 (_2!23667 lt!1376117)) (size!31349 lt!1376082)))))

(assert (=> b!3936415 (=> (not res!1592829) (not e!2435306))))

(declare-fun b!3936416 () Bool)

(declare-fun e!2435308 () tuple2!41066)

(assert (=> b!3936416 (= e!2435308 (tuple2!41067 Nil!41785 lt!1376082))))

(declare-fun b!3936417 () Bool)

(assert (=> b!3936417 (= e!2435307 (= (_2!23667 lt!1376117) lt!1376082))))

(declare-fun b!3936418 () Bool)

(declare-fun lt!1376116 () Option!8946)

(declare-fun lt!1376118 () tuple2!41066)

(assert (=> b!3936418 (= e!2435308 (tuple2!41067 (Cons!41785 (_1!23668 (v!39275 lt!1376116)) (_1!23667 lt!1376118)) (_2!23667 lt!1376118)))))

(assert (=> b!3936418 (= lt!1376118 (lexList!1883 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376116))))))

(declare-fun b!3936419 () Bool)

(assert (=> b!3936419 (= e!2435306 (not (isEmpty!24917 (_1!23667 lt!1376117))))))

(declare-fun d!1167648 () Bool)

(assert (=> d!1167648 e!2435307))

(declare-fun c!684015 () Bool)

(declare-fun size!31351 (List!41909) Int)

(assert (=> d!1167648 (= c!684015 (> (size!31351 (_1!23667 lt!1376117)) 0))))

(assert (=> d!1167648 (= lt!1376117 e!2435308)))

(declare-fun c!684014 () Bool)

(assert (=> d!1167648 (= c!684014 ((_ is Some!8945) lt!1376116))))

(assert (=> d!1167648 (= lt!1376116 (maxPrefix!3419 thiss!20629 rules!2768 lt!1376082))))

(assert (=> d!1167648 (= (lexList!1883 thiss!20629 rules!2768 lt!1376082) lt!1376117)))

(assert (= (and d!1167648 c!684014) b!3936418))

(assert (= (and d!1167648 (not c!684014)) b!3936416))

(assert (= (and d!1167648 c!684015) b!3936415))

(assert (= (and d!1167648 (not c!684015)) b!3936417))

(assert (= (and b!3936415 res!1592829) b!3936419))

(declare-fun m!4504157 () Bool)

(assert (=> b!3936415 m!4504157))

(declare-fun m!4504159 () Bool)

(assert (=> b!3936415 m!4504159))

(declare-fun m!4504161 () Bool)

(assert (=> b!3936418 m!4504161))

(declare-fun m!4504163 () Bool)

(assert (=> b!3936419 m!4504163))

(declare-fun m!4504165 () Bool)

(assert (=> d!1167648 m!4504165))

(declare-fun m!4504167 () Bool)

(assert (=> d!1167648 m!4504167))

(assert (=> b!3936353 d!1167648))

(declare-fun d!1167654 () Bool)

(assert (=> d!1167654 (= (inv!55982 (tag!7386 (rule!9478 (h!47205 prefixTokens!80)))) (= (mod (str.len (value!206624 (tag!7386 (rule!9478 (h!47205 prefixTokens!80))))) 2) 0))))

(assert (=> b!3936390 d!1167654))

(declare-fun d!1167656 () Bool)

(declare-fun res!1592830 () Bool)

(declare-fun e!2435309 () Bool)

(assert (=> d!1167656 (=> (not res!1592830) (not e!2435309))))

(assert (=> d!1167656 (= res!1592830 (semiInverseModEq!2806 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (toValue!8986 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80))))))))

(assert (=> d!1167656 (= (inv!55985 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) e!2435309)))

(declare-fun b!3936420 () Bool)

(assert (=> b!3936420 (= e!2435309 (equivClasses!2705 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (toValue!8986 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80))))))))

(assert (= (and d!1167656 res!1592830) b!3936420))

(declare-fun m!4504169 () Bool)

(assert (=> d!1167656 m!4504169))

(declare-fun m!4504171 () Bool)

(assert (=> b!3936420 m!4504171))

(assert (=> b!3936390 d!1167656))

(declare-fun d!1167658 () Bool)

(declare-fun lt!1376121 () Int)

(assert (=> d!1167658 (>= lt!1376121 0)))

(declare-fun e!2435312 () Int)

(assert (=> d!1167658 (= lt!1376121 e!2435312)))

(declare-fun c!684018 () Bool)

(assert (=> d!1167658 (= c!684018 ((_ is Nil!41784) (originalCharacters!7126 (_1!23668 (v!39275 lt!1376064)))))))

(assert (=> d!1167658 (= (size!31349 (originalCharacters!7126 (_1!23668 (v!39275 lt!1376064)))) lt!1376121)))

(declare-fun b!3936425 () Bool)

(assert (=> b!3936425 (= e!2435312 0)))

(declare-fun b!3936426 () Bool)

(assert (=> b!3936426 (= e!2435312 (+ 1 (size!31349 (t!326391 (originalCharacters!7126 (_1!23668 (v!39275 lt!1376064)))))))))

(assert (= (and d!1167658 c!684018) b!3936425))

(assert (= (and d!1167658 (not c!684018)) b!3936426))

(declare-fun m!4504173 () Bool)

(assert (=> b!3936426 m!4504173))

(assert (=> b!3936349 d!1167658))

(declare-fun d!1167660 () Bool)

(declare-fun fromListB!2215 (List!41908) BalanceConc!25068)

(assert (=> d!1167660 (= (seqFromList!4793 lt!1376077) (fromListB!2215 lt!1376077))))

(declare-fun bs!586479 () Bool)

(assert (= bs!586479 d!1167660))

(declare-fun m!4504175 () Bool)

(assert (=> bs!586479 m!4504175))

(assert (=> b!3936350 d!1167660))

(declare-fun d!1167662 () Bool)

(assert (=> d!1167662 (ruleValid!2474 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))))))

(declare-fun lt!1376129 () Unit!60277)

(declare-fun choose!23454 (LexerInterface!6115 Rule!12852 List!41910) Unit!60277)

(assert (=> d!1167662 (= lt!1376129 (choose!23454 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))) rules!2768))))

(declare-fun contains!8372 (List!41910 Rule!12852) Bool)

(assert (=> d!1167662 (contains!8372 rules!2768 (rule!9478 (_1!23668 (v!39275 lt!1376064))))))

(assert (=> d!1167662 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1554 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))) rules!2768) lt!1376129)))

(declare-fun bs!586481 () Bool)

(assert (= bs!586481 d!1167662))

(assert (=> bs!586481 m!4503975))

(declare-fun m!4504179 () Bool)

(assert (=> bs!586481 m!4504179))

(declare-fun m!4504181 () Bool)

(assert (=> bs!586481 m!4504181))

(assert (=> b!3936350 d!1167662))

(declare-fun d!1167666 () Bool)

(declare-fun e!2435337 () Bool)

(assert (=> d!1167666 e!2435337))

(declare-fun res!1592855 () Bool)

(assert (=> d!1167666 (=> (not res!1592855) (not e!2435337))))

(declare-fun lt!1376145 () List!41908)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6302 (List!41908) (InoxSet C!23048))

(assert (=> d!1167666 (= res!1592855 (= (content!6302 lt!1376145) ((_ map or) (content!6302 lt!1376077) (content!6302 (_2!23668 (v!39275 lt!1376064))))))))

(declare-fun e!2435336 () List!41908)

(assert (=> d!1167666 (= lt!1376145 e!2435336)))

(declare-fun c!684027 () Bool)

(assert (=> d!1167666 (= c!684027 ((_ is Nil!41784) lt!1376077))))

(assert (=> d!1167666 (= (++!10810 lt!1376077 (_2!23668 (v!39275 lt!1376064))) lt!1376145)))

(declare-fun b!3936466 () Bool)

(assert (=> b!3936466 (= e!2435336 (Cons!41784 (h!47204 lt!1376077) (++!10810 (t!326391 lt!1376077) (_2!23668 (v!39275 lt!1376064)))))))

(declare-fun b!3936465 () Bool)

(assert (=> b!3936465 (= e!2435336 (_2!23668 (v!39275 lt!1376064)))))

(declare-fun b!3936470 () Bool)

(assert (=> b!3936470 (= e!2435337 (or (not (= (_2!23668 (v!39275 lt!1376064)) Nil!41784)) (= lt!1376145 lt!1376077)))))

(declare-fun b!3936468 () Bool)

(declare-fun res!1592856 () Bool)

(assert (=> b!3936468 (=> (not res!1592856) (not e!2435337))))

(assert (=> b!3936468 (= res!1592856 (= (size!31349 lt!1376145) (+ (size!31349 lt!1376077) (size!31349 (_2!23668 (v!39275 lt!1376064))))))))

(assert (= (and d!1167666 c!684027) b!3936465))

(assert (= (and d!1167666 (not c!684027)) b!3936466))

(assert (= (and d!1167666 res!1592855) b!3936468))

(assert (= (and b!3936468 res!1592856) b!3936470))

(declare-fun m!4504221 () Bool)

(assert (=> d!1167666 m!4504221))

(declare-fun m!4504223 () Bool)

(assert (=> d!1167666 m!4504223))

(declare-fun m!4504225 () Bool)

(assert (=> d!1167666 m!4504225))

(declare-fun m!4504227 () Bool)

(assert (=> b!3936466 m!4504227))

(declare-fun m!4504229 () Bool)

(assert (=> b!3936468 m!4504229))

(assert (=> b!3936468 m!4503995))

(assert (=> b!3936468 m!4504077))

(assert (=> b!3936350 d!1167666))

(declare-fun d!1167680 () Bool)

(assert (=> d!1167680 (= (size!31348 (_1!23668 (v!39275 lt!1376064))) (size!31349 (originalCharacters!7126 (_1!23668 (v!39275 lt!1376064)))))))

(declare-fun Unit!60288 () Unit!60277)

(assert (=> d!1167680 (= (lemmaCharactersSize!1183 (_1!23668 (v!39275 lt!1376064))) Unit!60288)))

(declare-fun bs!586484 () Bool)

(assert (= bs!586484 d!1167680))

(assert (=> bs!586484 m!4504083))

(assert (=> b!3936350 d!1167680))

(declare-fun d!1167682 () Bool)

(declare-fun lt!1376149 () BalanceConc!25068)

(assert (=> d!1167682 (= (list!15526 lt!1376149) (originalCharacters!7126 (_1!23668 (v!39275 lt!1376064))))))

(assert (=> d!1167682 (= lt!1376149 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064))))) (value!206625 (_1!23668 (v!39275 lt!1376064)))))))

(assert (=> d!1167682 (= (charsOf!4350 (_1!23668 (v!39275 lt!1376064))) lt!1376149)))

(declare-fun b_lambda!115145 () Bool)

(assert (=> (not b_lambda!115145) (not d!1167682)))

(declare-fun t!326401 () Bool)

(declare-fun tb!235763 () Bool)

(assert (=> (and b!3936373 (= (toChars!8845 (transformation!6526 (h!47206 rules!2768))) (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326401) tb!235763))

(declare-fun b!3936473 () Bool)

(declare-fun e!2435340 () Bool)

(declare-fun tp!1197882 () Bool)

(assert (=> b!3936473 (= e!2435340 (and (inv!55987 (c!684009 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064))))) (value!206625 (_1!23668 (v!39275 lt!1376064)))))) tp!1197882))))

(declare-fun result!285590 () Bool)

(assert (=> tb!235763 (= result!285590 (and (inv!55988 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064))))) (value!206625 (_1!23668 (v!39275 lt!1376064))))) e!2435340))))

(assert (= tb!235763 b!3936473))

(declare-fun m!4504231 () Bool)

(assert (=> b!3936473 m!4504231))

(declare-fun m!4504233 () Bool)

(assert (=> tb!235763 m!4504233))

(assert (=> d!1167682 t!326401))

(declare-fun b_and!300641 () Bool)

(assert (= b_and!300635 (and (=> t!326401 result!285590) b_and!300641)))

(declare-fun tb!235765 () Bool)

(declare-fun t!326403 () Bool)

(assert (=> (and b!3936369 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326403) tb!235765))

(declare-fun result!285592 () Bool)

(assert (= result!285592 result!285590))

(assert (=> d!1167682 t!326403))

(declare-fun b_and!300643 () Bool)

(assert (= b_and!300637 (and (=> t!326403 result!285592) b_and!300643)))

(declare-fun t!326405 () Bool)

(declare-fun tb!235767 () Bool)

(assert (=> (and b!3936370 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326405) tb!235767))

(declare-fun result!285594 () Bool)

(assert (= result!285594 result!285590))

(assert (=> d!1167682 t!326405))

(declare-fun b_and!300645 () Bool)

(assert (= b_and!300639 (and (=> t!326405 result!285594) b_and!300645)))

(declare-fun m!4504235 () Bool)

(assert (=> d!1167682 m!4504235))

(declare-fun m!4504237 () Bool)

(assert (=> d!1167682 m!4504237))

(assert (=> b!3936350 d!1167682))

(declare-fun d!1167684 () Bool)

(assert (=> d!1167684 (= (_2!23668 (v!39275 lt!1376064)) lt!1376084)))

(declare-fun lt!1376158 () Unit!60277)

(declare-fun choose!23456 (List!41908 List!41908 List!41908 List!41908 List!41908) Unit!60277)

(assert (=> d!1167684 (= lt!1376158 (choose!23456 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 lt!1376084 lt!1376066))))

(assert (=> d!1167684 (isPrefix!3621 lt!1376077 lt!1376066)))

(assert (=> d!1167684 (= (lemmaSamePrefixThenSameSuffix!1842 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 lt!1376084 lt!1376066) lt!1376158)))

(declare-fun bs!586485 () Bool)

(assert (= bs!586485 d!1167684))

(declare-fun m!4504239 () Bool)

(assert (=> bs!586485 m!4504239))

(declare-fun m!4504241 () Bool)

(assert (=> bs!586485 m!4504241))

(assert (=> b!3936350 d!1167684))

(declare-fun d!1167686 () Bool)

(declare-fun list!15527 (Conc!12737) List!41908)

(assert (=> d!1167686 (= (list!15526 (charsOf!4350 (_1!23668 (v!39275 lt!1376064)))) (list!15527 (c!684009 (charsOf!4350 (_1!23668 (v!39275 lt!1376064))))))))

(declare-fun bs!586486 () Bool)

(assert (= bs!586486 d!1167686))

(declare-fun m!4504261 () Bool)

(assert (=> bs!586486 m!4504261))

(assert (=> b!3936350 d!1167686))

(declare-fun d!1167692 () Bool)

(declare-fun res!1592874 () Bool)

(declare-fun e!2435360 () Bool)

(assert (=> d!1167692 (=> (not res!1592874) (not e!2435360))))

(declare-fun validRegex!5205 (Regex!11431) Bool)

(assert (=> d!1167692 (= res!1592874 (validRegex!5205 (regex!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064))))))))

(assert (=> d!1167692 (= (ruleValid!2474 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) e!2435360)))

(declare-fun b!3936509 () Bool)

(declare-fun res!1592875 () Bool)

(assert (=> b!3936509 (=> (not res!1592875) (not e!2435360))))

(declare-fun nullable!4006 (Regex!11431) Bool)

(assert (=> b!3936509 (= res!1592875 (not (nullable!4006 (regex!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))))))

(declare-fun b!3936510 () Bool)

(assert (=> b!3936510 (= e!2435360 (not (= (tag!7386 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) (String!47499 ""))))))

(assert (= (and d!1167692 res!1592874) b!3936509))

(assert (= (and b!3936509 res!1592875) b!3936510))

(declare-fun m!4504273 () Bool)

(assert (=> d!1167692 m!4504273))

(declare-fun m!4504275 () Bool)

(assert (=> b!3936509 m!4504275))

(assert (=> b!3936350 d!1167692))

(declare-fun d!1167696 () Bool)

(declare-fun lt!1376176 () List!41908)

(assert (=> d!1167696 (= (++!10810 lt!1376077 lt!1376176) lt!1376066)))

(declare-fun e!2435369 () List!41908)

(assert (=> d!1167696 (= lt!1376176 e!2435369)))

(declare-fun c!684042 () Bool)

(assert (=> d!1167696 (= c!684042 ((_ is Cons!41784) lt!1376077))))

(assert (=> d!1167696 (>= (size!31349 lt!1376066) (size!31349 lt!1376077))))

(assert (=> d!1167696 (= (getSuffix!2076 lt!1376066 lt!1376077) lt!1376176)))

(declare-fun b!3936524 () Bool)

(declare-fun tail!6087 (List!41908) List!41908)

(assert (=> b!3936524 (= e!2435369 (getSuffix!2076 (tail!6087 lt!1376066) (t!326391 lt!1376077)))))

(declare-fun b!3936525 () Bool)

(assert (=> b!3936525 (= e!2435369 lt!1376066)))

(assert (= (and d!1167696 c!684042) b!3936524))

(assert (= (and d!1167696 (not c!684042)) b!3936525))

(declare-fun m!4504305 () Bool)

(assert (=> d!1167696 m!4504305))

(assert (=> d!1167696 m!4504005))

(assert (=> d!1167696 m!4503995))

(declare-fun m!4504307 () Bool)

(assert (=> b!3936524 m!4504307))

(assert (=> b!3936524 m!4504307))

(declare-fun m!4504309 () Bool)

(assert (=> b!3936524 m!4504309))

(assert (=> b!3936350 d!1167696))

(declare-fun b!3936526 () Bool)

(declare-fun e!2435371 () Bool)

(declare-fun e!2435370 () Bool)

(assert (=> b!3936526 (= e!2435371 e!2435370)))

(declare-fun res!1592881 () Bool)

(declare-fun lt!1376178 () tuple2!41066)

(assert (=> b!3936526 (= res!1592881 (< (size!31349 (_2!23667 lt!1376178)) (size!31349 (_2!23668 (v!39275 lt!1376064)))))))

(assert (=> b!3936526 (=> (not res!1592881) (not e!2435370))))

(declare-fun b!3936527 () Bool)

(declare-fun e!2435372 () tuple2!41066)

(assert (=> b!3936527 (= e!2435372 (tuple2!41067 Nil!41785 (_2!23668 (v!39275 lt!1376064))))))

(declare-fun b!3936528 () Bool)

(assert (=> b!3936528 (= e!2435371 (= (_2!23667 lt!1376178) (_2!23668 (v!39275 lt!1376064))))))

(declare-fun b!3936529 () Bool)

(declare-fun lt!1376177 () Option!8946)

(declare-fun lt!1376179 () tuple2!41066)

(assert (=> b!3936529 (= e!2435372 (tuple2!41067 (Cons!41785 (_1!23668 (v!39275 lt!1376177)) (_1!23667 lt!1376179)) (_2!23667 lt!1376179)))))

(assert (=> b!3936529 (= lt!1376179 (lexList!1883 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376177))))))

(declare-fun b!3936530 () Bool)

(assert (=> b!3936530 (= e!2435370 (not (isEmpty!24917 (_1!23667 lt!1376178))))))

(declare-fun d!1167706 () Bool)

(assert (=> d!1167706 e!2435371))

(declare-fun c!684044 () Bool)

(assert (=> d!1167706 (= c!684044 (> (size!31351 (_1!23667 lt!1376178)) 0))))

(assert (=> d!1167706 (= lt!1376178 e!2435372)))

(declare-fun c!684043 () Bool)

(assert (=> d!1167706 (= c!684043 ((_ is Some!8945) lt!1376177))))

(assert (=> d!1167706 (= lt!1376177 (maxPrefix!3419 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376064))))))

(assert (=> d!1167706 (= (lexList!1883 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376064))) lt!1376178)))

(assert (= (and d!1167706 c!684043) b!3936529))

(assert (= (and d!1167706 (not c!684043)) b!3936527))

(assert (= (and d!1167706 c!684044) b!3936526))

(assert (= (and d!1167706 (not c!684044)) b!3936528))

(assert (= (and b!3936526 res!1592881) b!3936530))

(declare-fun m!4504311 () Bool)

(assert (=> b!3936526 m!4504311))

(assert (=> b!3936526 m!4504077))

(declare-fun m!4504313 () Bool)

(assert (=> b!3936529 m!4504313))

(declare-fun m!4504315 () Bool)

(assert (=> b!3936530 m!4504315))

(declare-fun m!4504317 () Bool)

(assert (=> d!1167706 m!4504317))

(declare-fun m!4504319 () Bool)

(assert (=> d!1167706 m!4504319))

(assert (=> b!3936350 d!1167706))

(declare-fun d!1167708 () Bool)

(declare-fun dynLambda!17904 (Int BalanceConc!25068) TokenValue!6756)

(assert (=> d!1167708 (= (apply!9765 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) (seqFromList!4793 lt!1376077)) (dynLambda!17904 (toValue!8986 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064))))) (seqFromList!4793 lt!1376077)))))

(declare-fun b_lambda!115147 () Bool)

(assert (=> (not b_lambda!115147) (not d!1167708)))

(declare-fun t!326407 () Bool)

(declare-fun tb!235769 () Bool)

(assert (=> (and b!3936373 (= (toValue!8986 (transformation!6526 (h!47206 rules!2768))) (toValue!8986 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326407) tb!235769))

(declare-fun result!285596 () Bool)

(assert (=> tb!235769 (= result!285596 (inv!21 (dynLambda!17904 (toValue!8986 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064))))) (seqFromList!4793 lt!1376077))))))

(declare-fun m!4504321 () Bool)

(assert (=> tb!235769 m!4504321))

(assert (=> d!1167708 t!326407))

(declare-fun b_and!300647 () Bool)

(assert (= b_and!300623 (and (=> t!326407 result!285596) b_and!300647)))

(declare-fun t!326409 () Bool)

(declare-fun tb!235771 () Bool)

(assert (=> (and b!3936369 (= (toValue!8986 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (toValue!8986 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326409) tb!235771))

(declare-fun result!285600 () Bool)

(assert (= result!285600 result!285596))

(assert (=> d!1167708 t!326409))

(declare-fun b_and!300649 () Bool)

(assert (= b_and!300627 (and (=> t!326409 result!285600) b_and!300649)))

(declare-fun tb!235773 () Bool)

(declare-fun t!326411 () Bool)

(assert (=> (and b!3936370 (= (toValue!8986 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (toValue!8986 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326411) tb!235773))

(declare-fun result!285602 () Bool)

(assert (= result!285602 result!285596))

(assert (=> d!1167708 t!326411))

(declare-fun b_and!300651 () Bool)

(assert (= b_and!300631 (and (=> t!326411 result!285602) b_and!300651)))

(assert (=> d!1167708 m!4503985))

(declare-fun m!4504323 () Bool)

(assert (=> d!1167708 m!4504323))

(assert (=> b!3936350 d!1167708))

(declare-fun d!1167710 () Bool)

(assert (=> d!1167710 (isPrefix!3621 lt!1376077 (++!10810 lt!1376077 (_2!23668 (v!39275 lt!1376064))))))

(declare-fun lt!1376182 () Unit!60277)

(declare-fun choose!23458 (List!41908 List!41908) Unit!60277)

(assert (=> d!1167710 (= lt!1376182 (choose!23458 lt!1376077 (_2!23668 (v!39275 lt!1376064))))))

(assert (=> d!1167710 (= (lemmaConcatTwoListThenFirstIsPrefix!2484 lt!1376077 (_2!23668 (v!39275 lt!1376064))) lt!1376182)))

(declare-fun bs!586489 () Bool)

(assert (= bs!586489 d!1167710))

(assert (=> bs!586489 m!4503987))

(assert (=> bs!586489 m!4503987))

(declare-fun m!4504325 () Bool)

(assert (=> bs!586489 m!4504325))

(declare-fun m!4504327 () Bool)

(assert (=> bs!586489 m!4504327))

(assert (=> b!3936350 d!1167710))

(declare-fun d!1167712 () Bool)

(declare-fun lt!1376183 () Int)

(assert (=> d!1167712 (>= lt!1376183 0)))

(declare-fun e!2435376 () Int)

(assert (=> d!1167712 (= lt!1376183 e!2435376)))

(declare-fun c!684045 () Bool)

(assert (=> d!1167712 (= c!684045 ((_ is Nil!41784) lt!1376077))))

(assert (=> d!1167712 (= (size!31349 lt!1376077) lt!1376183)))

(declare-fun b!3936533 () Bool)

(assert (=> b!3936533 (= e!2435376 0)))

(declare-fun b!3936534 () Bool)

(assert (=> b!3936534 (= e!2435376 (+ 1 (size!31349 (t!326391 lt!1376077))))))

(assert (= (and d!1167712 c!684045) b!3936533))

(assert (= (and d!1167712 (not c!684045)) b!3936534))

(declare-fun m!4504329 () Bool)

(assert (=> b!3936534 m!4504329))

(assert (=> b!3936350 d!1167712))

(declare-fun b!3936555 () Bool)

(declare-fun e!2435389 () Bool)

(assert (=> b!3936555 (= e!2435389 (>= (size!31349 lt!1376104) (size!31349 lt!1376077)))))

(declare-fun b!3936554 () Bool)

(declare-fun e!2435390 () Bool)

(assert (=> b!3936554 (= e!2435390 (isPrefix!3621 (tail!6087 lt!1376077) (tail!6087 lt!1376104)))))

(declare-fun d!1167714 () Bool)

(assert (=> d!1167714 e!2435389))

(declare-fun res!1592898 () Bool)

(assert (=> d!1167714 (=> res!1592898 e!2435389)))

(declare-fun lt!1376193 () Bool)

(assert (=> d!1167714 (= res!1592898 (not lt!1376193))))

(declare-fun e!2435391 () Bool)

(assert (=> d!1167714 (= lt!1376193 e!2435391)))

(declare-fun res!1592896 () Bool)

(assert (=> d!1167714 (=> res!1592896 e!2435391)))

(assert (=> d!1167714 (= res!1592896 ((_ is Nil!41784) lt!1376077))))

(assert (=> d!1167714 (= (isPrefix!3621 lt!1376077 lt!1376104) lt!1376193)))

(declare-fun b!3936553 () Bool)

(declare-fun res!1592897 () Bool)

(assert (=> b!3936553 (=> (not res!1592897) (not e!2435390))))

(declare-fun head!8361 (List!41908) C!23048)

(assert (=> b!3936553 (= res!1592897 (= (head!8361 lt!1376077) (head!8361 lt!1376104)))))

(declare-fun b!3936552 () Bool)

(assert (=> b!3936552 (= e!2435391 e!2435390)))

(declare-fun res!1592895 () Bool)

(assert (=> b!3936552 (=> (not res!1592895) (not e!2435390))))

(assert (=> b!3936552 (= res!1592895 (not ((_ is Nil!41784) lt!1376104)))))

(assert (= (and d!1167714 (not res!1592896)) b!3936552))

(assert (= (and b!3936552 res!1592895) b!3936553))

(assert (= (and b!3936553 res!1592897) b!3936554))

(assert (= (and d!1167714 (not res!1592898)) b!3936555))

(declare-fun m!4504355 () Bool)

(assert (=> b!3936555 m!4504355))

(assert (=> b!3936555 m!4503995))

(declare-fun m!4504357 () Bool)

(assert (=> b!3936554 m!4504357))

(declare-fun m!4504359 () Bool)

(assert (=> b!3936554 m!4504359))

(assert (=> b!3936554 m!4504357))

(assert (=> b!3936554 m!4504359))

(declare-fun m!4504361 () Bool)

(assert (=> b!3936554 m!4504361))

(declare-fun m!4504363 () Bool)

(assert (=> b!3936553 m!4504363))

(declare-fun m!4504365 () Bool)

(assert (=> b!3936553 m!4504365))

(assert (=> b!3936350 d!1167714))

(declare-fun d!1167726 () Bool)

(assert (=> d!1167726 (= (isEmpty!24916 prefix!426) ((_ is Nil!41784) prefix!426))))

(assert (=> b!3936371 d!1167726))

(declare-fun b!3936573 () Bool)

(declare-fun e!2435405 () Bool)

(declare-fun inv!15 (TokenValue!6756) Bool)

(assert (=> b!3936573 (= e!2435405 (inv!15 (value!206625 (h!47205 suffixTokens!72))))))

(declare-fun b!3936574 () Bool)

(declare-fun res!1592906 () Bool)

(assert (=> b!3936574 (=> res!1592906 e!2435405)))

(assert (=> b!3936574 (= res!1592906 (not ((_ is IntegerValue!20270) (value!206625 (h!47205 suffixTokens!72)))))))

(declare-fun e!2435403 () Bool)

(assert (=> b!3936574 (= e!2435403 e!2435405)))

(declare-fun b!3936575 () Bool)

(declare-fun e!2435404 () Bool)

(assert (=> b!3936575 (= e!2435404 e!2435403)))

(declare-fun c!684053 () Bool)

(assert (=> b!3936575 (= c!684053 ((_ is IntegerValue!20269) (value!206625 (h!47205 suffixTokens!72))))))

(declare-fun b!3936576 () Bool)

(declare-fun inv!16 (TokenValue!6756) Bool)

(assert (=> b!3936576 (= e!2435404 (inv!16 (value!206625 (h!47205 suffixTokens!72))))))

(declare-fun b!3936577 () Bool)

(declare-fun inv!17 (TokenValue!6756) Bool)

(assert (=> b!3936577 (= e!2435403 (inv!17 (value!206625 (h!47205 suffixTokens!72))))))

(declare-fun d!1167730 () Bool)

(declare-fun c!684054 () Bool)

(assert (=> d!1167730 (= c!684054 ((_ is IntegerValue!20268) (value!206625 (h!47205 suffixTokens!72))))))

(assert (=> d!1167730 (= (inv!21 (value!206625 (h!47205 suffixTokens!72))) e!2435404)))

(assert (= (and d!1167730 c!684054) b!3936576))

(assert (= (and d!1167730 (not c!684054)) b!3936575))

(assert (= (and b!3936575 c!684053) b!3936577))

(assert (= (and b!3936575 (not c!684053)) b!3936574))

(assert (= (and b!3936574 (not res!1592906)) b!3936573))

(declare-fun m!4504385 () Bool)

(assert (=> b!3936573 m!4504385))

(declare-fun m!4504387 () Bool)

(assert (=> b!3936576 m!4504387))

(declare-fun m!4504389 () Bool)

(assert (=> b!3936577 m!4504389))

(assert (=> b!3936377 d!1167730))

(declare-fun d!1167734 () Bool)

(assert (=> d!1167734 (= (inv!55982 (tag!7386 (rule!9478 (h!47205 suffixTokens!72)))) (= (mod (str.len (value!206624 (tag!7386 (rule!9478 (h!47205 suffixTokens!72))))) 2) 0))))

(assert (=> b!3936357 d!1167734))

(declare-fun d!1167736 () Bool)

(declare-fun res!1592907 () Bool)

(declare-fun e!2435406 () Bool)

(assert (=> d!1167736 (=> (not res!1592907) (not e!2435406))))

(assert (=> d!1167736 (= res!1592907 (semiInverseModEq!2806 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (toValue!8986 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72))))))))

(assert (=> d!1167736 (= (inv!55985 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) e!2435406)))

(declare-fun b!3936578 () Bool)

(assert (=> b!3936578 (= e!2435406 (equivClasses!2705 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (toValue!8986 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72))))))))

(assert (= (and d!1167736 res!1592907) b!3936578))

(declare-fun m!4504391 () Bool)

(assert (=> d!1167736 m!4504391))

(declare-fun m!4504393 () Bool)

(assert (=> b!3936578 m!4504393))

(assert (=> b!3936357 d!1167736))

(declare-fun d!1167738 () Bool)

(assert (=> d!1167738 (= (isEmpty!24917 prefixTokens!80) ((_ is Nil!41785) prefixTokens!80))))

(assert (=> b!3936358 d!1167738))

(declare-fun d!1167740 () Bool)

(assert (=> d!1167740 (= (isEmpty!24917 lt!1376059) ((_ is Nil!41785) lt!1376059))))

(assert (=> b!3936374 d!1167740))

(declare-fun d!1167742 () Bool)

(assert (=> d!1167742 (= (++!10809 (++!10809 lt!1376097 lt!1376059) suffixTokens!72) (++!10809 lt!1376097 (++!10809 lt!1376059 suffixTokens!72)))))

(declare-fun lt!1376199 () Unit!60277)

(declare-fun choose!23459 (List!41909 List!41909 List!41909) Unit!60277)

(assert (=> d!1167742 (= lt!1376199 (choose!23459 lt!1376097 lt!1376059 suffixTokens!72))))

(assert (=> d!1167742 (= (lemmaConcatAssociativity!2340 lt!1376097 lt!1376059 suffixTokens!72) lt!1376199)))

(declare-fun bs!586491 () Bool)

(assert (= bs!586491 d!1167742))

(assert (=> bs!586491 m!4504061))

(assert (=> bs!586491 m!4504109))

(assert (=> bs!586491 m!4504061))

(declare-fun m!4504395 () Bool)

(assert (=> bs!586491 m!4504395))

(declare-fun m!4504397 () Bool)

(assert (=> bs!586491 m!4504397))

(assert (=> bs!586491 m!4504109))

(assert (=> bs!586491 m!4504111))

(assert (=> b!3936374 d!1167742))

(declare-fun b!3936589 () Bool)

(declare-fun res!1592913 () Bool)

(declare-fun e!2435412 () Bool)

(assert (=> b!3936589 (=> (not res!1592913) (not e!2435412))))

(declare-fun lt!1376203 () List!41909)

(assert (=> b!3936589 (= res!1592913 (= (size!31351 lt!1376203) (+ (size!31351 lt!1376097) (size!31351 lt!1376059))))))

(declare-fun b!3936588 () Bool)

(declare-fun e!2435411 () List!41909)

(assert (=> b!3936588 (= e!2435411 (Cons!41785 (h!47205 lt!1376097) (++!10809 (t!326392 lt!1376097) lt!1376059)))))

(declare-fun b!3936590 () Bool)

(assert (=> b!3936590 (= e!2435412 (or (not (= lt!1376059 Nil!41785)) (= lt!1376203 lt!1376097)))))

(declare-fun b!3936587 () Bool)

(assert (=> b!3936587 (= e!2435411 lt!1376059)))

(declare-fun d!1167744 () Bool)

(assert (=> d!1167744 e!2435412))

(declare-fun res!1592912 () Bool)

(assert (=> d!1167744 (=> (not res!1592912) (not e!2435412))))

(declare-fun content!6303 (List!41909) (InoxSet Token!12190))

(assert (=> d!1167744 (= res!1592912 (= (content!6303 lt!1376203) ((_ map or) (content!6303 lt!1376097) (content!6303 lt!1376059))))))

(assert (=> d!1167744 (= lt!1376203 e!2435411)))

(declare-fun c!684057 () Bool)

(assert (=> d!1167744 (= c!684057 ((_ is Nil!41785) lt!1376097))))

(assert (=> d!1167744 (= (++!10809 lt!1376097 lt!1376059) lt!1376203)))

(assert (= (and d!1167744 c!684057) b!3936587))

(assert (= (and d!1167744 (not c!684057)) b!3936588))

(assert (= (and d!1167744 res!1592912) b!3936589))

(assert (= (and b!3936589 res!1592913) b!3936590))

(declare-fun m!4504401 () Bool)

(assert (=> b!3936589 m!4504401))

(declare-fun m!4504403 () Bool)

(assert (=> b!3936589 m!4504403))

(declare-fun m!4504405 () Bool)

(assert (=> b!3936589 m!4504405))

(declare-fun m!4504407 () Bool)

(assert (=> b!3936588 m!4504407))

(declare-fun m!4504409 () Bool)

(assert (=> d!1167744 m!4504409))

(declare-fun m!4504411 () Bool)

(assert (=> d!1167744 m!4504411))

(declare-fun m!4504413 () Bool)

(assert (=> d!1167744 m!4504413))

(assert (=> b!3936374 d!1167744))

(declare-fun b!3936593 () Bool)

(declare-fun res!1592915 () Bool)

(declare-fun e!2435414 () Bool)

(assert (=> b!3936593 (=> (not res!1592915) (not e!2435414))))

(declare-fun lt!1376204 () List!41909)

(assert (=> b!3936593 (= res!1592915 (= (size!31351 lt!1376204) (+ (size!31351 lt!1376097) (size!31351 lt!1376086))))))

(declare-fun b!3936592 () Bool)

(declare-fun e!2435413 () List!41909)

(assert (=> b!3936592 (= e!2435413 (Cons!41785 (h!47205 lt!1376097) (++!10809 (t!326392 lt!1376097) lt!1376086)))))

(declare-fun b!3936594 () Bool)

(assert (=> b!3936594 (= e!2435414 (or (not (= lt!1376086 Nil!41785)) (= lt!1376204 lt!1376097)))))

(declare-fun b!3936591 () Bool)

(assert (=> b!3936591 (= e!2435413 lt!1376086)))

(declare-fun d!1167748 () Bool)

(assert (=> d!1167748 e!2435414))

(declare-fun res!1592914 () Bool)

(assert (=> d!1167748 (=> (not res!1592914) (not e!2435414))))

(assert (=> d!1167748 (= res!1592914 (= (content!6303 lt!1376204) ((_ map or) (content!6303 lt!1376097) (content!6303 lt!1376086))))))

(assert (=> d!1167748 (= lt!1376204 e!2435413)))

(declare-fun c!684058 () Bool)

(assert (=> d!1167748 (= c!684058 ((_ is Nil!41785) lt!1376097))))

(assert (=> d!1167748 (= (++!10809 lt!1376097 lt!1376086) lt!1376204)))

(assert (= (and d!1167748 c!684058) b!3936591))

(assert (= (and d!1167748 (not c!684058)) b!3936592))

(assert (= (and d!1167748 res!1592914) b!3936593))

(assert (= (and b!3936593 res!1592915) b!3936594))

(declare-fun m!4504415 () Bool)

(assert (=> b!3936593 m!4504415))

(assert (=> b!3936593 m!4504403))

(declare-fun m!4504417 () Bool)

(assert (=> b!3936593 m!4504417))

(declare-fun m!4504419 () Bool)

(assert (=> b!3936592 m!4504419))

(declare-fun m!4504421 () Bool)

(assert (=> d!1167748 m!4504421))

(assert (=> d!1167748 m!4504411))

(declare-fun m!4504423 () Bool)

(assert (=> d!1167748 m!4504423))

(assert (=> b!3936374 d!1167748))

(declare-fun b!3936597 () Bool)

(declare-fun res!1592917 () Bool)

(declare-fun e!2435416 () Bool)

(assert (=> b!3936597 (=> (not res!1592917) (not e!2435416))))

(declare-fun lt!1376205 () List!41909)

(assert (=> b!3936597 (= res!1592917 (= (size!31351 lt!1376205) (+ (size!31351 (++!10809 lt!1376097 lt!1376059)) (size!31351 suffixTokens!72))))))

(declare-fun b!3936596 () Bool)

(declare-fun e!2435415 () List!41909)

(assert (=> b!3936596 (= e!2435415 (Cons!41785 (h!47205 (++!10809 lt!1376097 lt!1376059)) (++!10809 (t!326392 (++!10809 lt!1376097 lt!1376059)) suffixTokens!72)))))

(declare-fun b!3936598 () Bool)

(assert (=> b!3936598 (= e!2435416 (or (not (= suffixTokens!72 Nil!41785)) (= lt!1376205 (++!10809 lt!1376097 lt!1376059))))))

(declare-fun b!3936595 () Bool)

(assert (=> b!3936595 (= e!2435415 suffixTokens!72)))

(declare-fun d!1167750 () Bool)

(assert (=> d!1167750 e!2435416))

(declare-fun res!1592916 () Bool)

(assert (=> d!1167750 (=> (not res!1592916) (not e!2435416))))

(assert (=> d!1167750 (= res!1592916 (= (content!6303 lt!1376205) ((_ map or) (content!6303 (++!10809 lt!1376097 lt!1376059)) (content!6303 suffixTokens!72))))))

(assert (=> d!1167750 (= lt!1376205 e!2435415)))

(declare-fun c!684059 () Bool)

(assert (=> d!1167750 (= c!684059 ((_ is Nil!41785) (++!10809 lt!1376097 lt!1376059)))))

(assert (=> d!1167750 (= (++!10809 (++!10809 lt!1376097 lt!1376059) suffixTokens!72) lt!1376205)))

(assert (= (and d!1167750 c!684059) b!3936595))

(assert (= (and d!1167750 (not c!684059)) b!3936596))

(assert (= (and d!1167750 res!1592916) b!3936597))

(assert (= (and b!3936597 res!1592917) b!3936598))

(declare-fun m!4504425 () Bool)

(assert (=> b!3936597 m!4504425))

(assert (=> b!3936597 m!4504109))

(declare-fun m!4504427 () Bool)

(assert (=> b!3936597 m!4504427))

(declare-fun m!4504429 () Bool)

(assert (=> b!3936597 m!4504429))

(declare-fun m!4504431 () Bool)

(assert (=> b!3936596 m!4504431))

(declare-fun m!4504433 () Bool)

(assert (=> d!1167750 m!4504433))

(assert (=> d!1167750 m!4504109))

(declare-fun m!4504435 () Bool)

(assert (=> d!1167750 m!4504435))

(declare-fun m!4504437 () Bool)

(assert (=> d!1167750 m!4504437))

(assert (=> b!3936374 d!1167750))

(declare-fun b!3936601 () Bool)

(declare-fun res!1592919 () Bool)

(declare-fun e!2435418 () Bool)

(assert (=> b!3936601 (=> (not res!1592919) (not e!2435418))))

(declare-fun lt!1376206 () List!41909)

(assert (=> b!3936601 (= res!1592919 (= (size!31351 lt!1376206) (+ (size!31351 lt!1376097) (size!31351 (_1!23667 lt!1376099)))))))

(declare-fun b!3936600 () Bool)

(declare-fun e!2435417 () List!41909)

(assert (=> b!3936600 (= e!2435417 (Cons!41785 (h!47205 lt!1376097) (++!10809 (t!326392 lt!1376097) (_1!23667 lt!1376099))))))

(declare-fun b!3936602 () Bool)

(assert (=> b!3936602 (= e!2435418 (or (not (= (_1!23667 lt!1376099) Nil!41785)) (= lt!1376206 lt!1376097)))))

(declare-fun b!3936599 () Bool)

(assert (=> b!3936599 (= e!2435417 (_1!23667 lt!1376099))))

(declare-fun d!1167752 () Bool)

(assert (=> d!1167752 e!2435418))

(declare-fun res!1592918 () Bool)

(assert (=> d!1167752 (=> (not res!1592918) (not e!2435418))))

(assert (=> d!1167752 (= res!1592918 (= (content!6303 lt!1376206) ((_ map or) (content!6303 lt!1376097) (content!6303 (_1!23667 lt!1376099)))))))

(assert (=> d!1167752 (= lt!1376206 e!2435417)))

(declare-fun c!684060 () Bool)

(assert (=> d!1167752 (= c!684060 ((_ is Nil!41785) lt!1376097))))

(assert (=> d!1167752 (= (++!10809 lt!1376097 (_1!23667 lt!1376099)) lt!1376206)))

(assert (= (and d!1167752 c!684060) b!3936599))

(assert (= (and d!1167752 (not c!684060)) b!3936600))

(assert (= (and d!1167752 res!1592918) b!3936601))

(assert (= (and b!3936601 res!1592919) b!3936602))

(declare-fun m!4504439 () Bool)

(assert (=> b!3936601 m!4504439))

(assert (=> b!3936601 m!4504403))

(declare-fun m!4504441 () Bool)

(assert (=> b!3936601 m!4504441))

(declare-fun m!4504443 () Bool)

(assert (=> b!3936600 m!4504443))

(declare-fun m!4504445 () Bool)

(assert (=> d!1167752 m!4504445))

(assert (=> d!1167752 m!4504411))

(declare-fun m!4504447 () Bool)

(assert (=> d!1167752 m!4504447))

(assert (=> b!3936354 d!1167752))

(declare-fun b!3936603 () Bool)

(declare-fun e!2435420 () Bool)

(declare-fun e!2435419 () Bool)

(assert (=> b!3936603 (= e!2435420 e!2435419)))

(declare-fun res!1592920 () Bool)

(declare-fun lt!1376208 () tuple2!41066)

(assert (=> b!3936603 (= res!1592920 (< (size!31349 (_2!23667 lt!1376208)) (size!31349 lt!1376085)))))

(assert (=> b!3936603 (=> (not res!1592920) (not e!2435419))))

(declare-fun b!3936604 () Bool)

(declare-fun e!2435421 () tuple2!41066)

(assert (=> b!3936604 (= e!2435421 (tuple2!41067 Nil!41785 lt!1376085))))

(declare-fun b!3936605 () Bool)

(assert (=> b!3936605 (= e!2435420 (= (_2!23667 lt!1376208) lt!1376085))))

(declare-fun b!3936606 () Bool)

(declare-fun lt!1376207 () Option!8946)

(declare-fun lt!1376209 () tuple2!41066)

(assert (=> b!3936606 (= e!2435421 (tuple2!41067 (Cons!41785 (_1!23668 (v!39275 lt!1376207)) (_1!23667 lt!1376209)) (_2!23667 lt!1376209)))))

(assert (=> b!3936606 (= lt!1376209 (lexList!1883 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376207))))))

(declare-fun b!3936607 () Bool)

(assert (=> b!3936607 (= e!2435419 (not (isEmpty!24917 (_1!23667 lt!1376208))))))

(declare-fun d!1167754 () Bool)

(assert (=> d!1167754 e!2435420))

(declare-fun c!684062 () Bool)

(assert (=> d!1167754 (= c!684062 (> (size!31351 (_1!23667 lt!1376208)) 0))))

(assert (=> d!1167754 (= lt!1376208 e!2435421)))

(declare-fun c!684061 () Bool)

(assert (=> d!1167754 (= c!684061 ((_ is Some!8945) lt!1376207))))

(assert (=> d!1167754 (= lt!1376207 (maxPrefix!3419 thiss!20629 rules!2768 lt!1376085))))

(assert (=> d!1167754 (= (lexList!1883 thiss!20629 rules!2768 lt!1376085) lt!1376208)))

(assert (= (and d!1167754 c!684061) b!3936606))

(assert (= (and d!1167754 (not c!684061)) b!3936604))

(assert (= (and d!1167754 c!684062) b!3936603))

(assert (= (and d!1167754 (not c!684062)) b!3936605))

(assert (= (and b!3936603 res!1592920) b!3936607))

(declare-fun m!4504449 () Bool)

(assert (=> b!3936603 m!4504449))

(declare-fun m!4504451 () Bool)

(assert (=> b!3936603 m!4504451))

(declare-fun m!4504453 () Bool)

(assert (=> b!3936606 m!4504453))

(declare-fun m!4504455 () Bool)

(assert (=> b!3936607 m!4504455))

(declare-fun m!4504457 () Bool)

(assert (=> d!1167754 m!4504457))

(declare-fun m!4504459 () Bool)

(assert (=> d!1167754 m!4504459))

(assert (=> b!3936375 d!1167754))

(declare-fun d!1167756 () Bool)

(assert (=> d!1167756 (= (lexList!1883 thiss!20629 rules!2768 lt!1376085) (tuple2!41067 lt!1376059 Nil!41784))))

(declare-fun lt!1376212 () Unit!60277)

(declare-fun choose!23462 (LexerInterface!6115 List!41910 List!41908 List!41908 List!41909 List!41909 List!41908) Unit!60277)

(assert (=> d!1167756 (= lt!1376212 (choose!23462 thiss!20629 rules!2768 lt!1376085 suffix!1176 lt!1376059 suffixTokens!72 suffixResult!91))))

(assert (=> d!1167756 (not (isEmpty!24918 rules!2768))))

(assert (=> d!1167756 (= (lemmaLexThenLexPrefix!611 thiss!20629 rules!2768 lt!1376085 suffix!1176 lt!1376059 suffixTokens!72 suffixResult!91) lt!1376212)))

(declare-fun bs!586493 () Bool)

(assert (= bs!586493 d!1167756))

(assert (=> bs!586493 m!4504027))

(declare-fun m!4504461 () Bool)

(assert (=> bs!586493 m!4504461))

(assert (=> bs!586493 m!4504103))

(assert (=> b!3936375 d!1167756))

(declare-fun b!3936669 () Bool)

(declare-fun res!1592964 () Bool)

(declare-fun e!2435449 () Bool)

(assert (=> b!3936669 (=> (not res!1592964) (not e!2435449))))

(declare-fun lt!1376252 () Option!8946)

(assert (=> b!3936669 (= res!1592964 (= (++!10810 (list!15526 (charsOf!4350 (_1!23668 (get!13809 lt!1376252)))) (_2!23668 (get!13809 lt!1376252))) lt!1376066))))

(declare-fun call!285003 () Option!8946)

(declare-fun bm!284998 () Bool)

(assert (=> bm!284998 (= call!285003 (maxPrefixOneRule!2489 thiss!20629 (h!47206 rules!2768) lt!1376066))))

(declare-fun b!3936671 () Bool)

(declare-fun res!1592958 () Bool)

(assert (=> b!3936671 (=> (not res!1592958) (not e!2435449))))

(assert (=> b!3936671 (= res!1592958 (= (list!15526 (charsOf!4350 (_1!23668 (get!13809 lt!1376252)))) (originalCharacters!7126 (_1!23668 (get!13809 lt!1376252)))))))

(declare-fun b!3936672 () Bool)

(declare-fun e!2435451 () Option!8946)

(assert (=> b!3936672 (= e!2435451 call!285003)))

(declare-fun b!3936673 () Bool)

(declare-fun e!2435450 () Bool)

(assert (=> b!3936673 (= e!2435450 e!2435449)))

(declare-fun res!1592963 () Bool)

(assert (=> b!3936673 (=> (not res!1592963) (not e!2435449))))

(declare-fun isDefined!6954 (Option!8946) Bool)

(assert (=> b!3936673 (= res!1592963 (isDefined!6954 lt!1376252))))

(declare-fun b!3936674 () Bool)

(declare-fun res!1592962 () Bool)

(assert (=> b!3936674 (=> (not res!1592962) (not e!2435449))))

(declare-fun matchR!5488 (Regex!11431 List!41908) Bool)

(assert (=> b!3936674 (= res!1592962 (matchR!5488 (regex!6526 (rule!9478 (_1!23668 (get!13809 lt!1376252)))) (list!15526 (charsOf!4350 (_1!23668 (get!13809 lt!1376252))))))))

(declare-fun b!3936675 () Bool)

(declare-fun res!1592959 () Bool)

(assert (=> b!3936675 (=> (not res!1592959) (not e!2435449))))

(assert (=> b!3936675 (= res!1592959 (< (size!31349 (_2!23668 (get!13809 lt!1376252))) (size!31349 lt!1376066)))))

(declare-fun b!3936676 () Bool)

(declare-fun lt!1376253 () Option!8946)

(declare-fun lt!1376251 () Option!8946)

(assert (=> b!3936676 (= e!2435451 (ite (and ((_ is None!8945) lt!1376253) ((_ is None!8945) lt!1376251)) None!8945 (ite ((_ is None!8945) lt!1376251) lt!1376253 (ite ((_ is None!8945) lt!1376253) lt!1376251 (ite (>= (size!31348 (_1!23668 (v!39275 lt!1376253))) (size!31348 (_1!23668 (v!39275 lt!1376251)))) lt!1376253 lt!1376251)))))))

(assert (=> b!3936676 (= lt!1376253 call!285003)))

(assert (=> b!3936676 (= lt!1376251 (maxPrefix!3419 thiss!20629 (t!326393 rules!2768) lt!1376066))))

(declare-fun b!3936677 () Bool)

(declare-fun res!1592961 () Bool)

(assert (=> b!3936677 (=> (not res!1592961) (not e!2435449))))

(assert (=> b!3936677 (= res!1592961 (= (value!206625 (_1!23668 (get!13809 lt!1376252))) (apply!9765 (transformation!6526 (rule!9478 (_1!23668 (get!13809 lt!1376252)))) (seqFromList!4793 (originalCharacters!7126 (_1!23668 (get!13809 lt!1376252)))))))))

(declare-fun b!3936670 () Bool)

(assert (=> b!3936670 (= e!2435449 (contains!8372 rules!2768 (rule!9478 (_1!23668 (get!13809 lt!1376252)))))))

(declare-fun d!1167758 () Bool)

(assert (=> d!1167758 e!2435450))

(declare-fun res!1592960 () Bool)

(assert (=> d!1167758 (=> res!1592960 e!2435450)))

(declare-fun isEmpty!24920 (Option!8946) Bool)

(assert (=> d!1167758 (= res!1592960 (isEmpty!24920 lt!1376252))))

(assert (=> d!1167758 (= lt!1376252 e!2435451)))

(declare-fun c!684075 () Bool)

(assert (=> d!1167758 (= c!684075 (and ((_ is Cons!41786) rules!2768) ((_ is Nil!41786) (t!326393 rules!2768))))))

(declare-fun lt!1376255 () Unit!60277)

(declare-fun lt!1376254 () Unit!60277)

(assert (=> d!1167758 (= lt!1376255 lt!1376254)))

(assert (=> d!1167758 (isPrefix!3621 lt!1376066 lt!1376066)))

(declare-fun lemmaIsPrefixRefl!2285 (List!41908 List!41908) Unit!60277)

(assert (=> d!1167758 (= lt!1376254 (lemmaIsPrefixRefl!2285 lt!1376066 lt!1376066))))

(declare-fun rulesValidInductive!2355 (LexerInterface!6115 List!41910) Bool)

(assert (=> d!1167758 (rulesValidInductive!2355 thiss!20629 rules!2768)))

(assert (=> d!1167758 (= (maxPrefix!3419 thiss!20629 rules!2768 lt!1376066) lt!1376252)))

(assert (= (and d!1167758 c!684075) b!3936672))

(assert (= (and d!1167758 (not c!684075)) b!3936676))

(assert (= (or b!3936672 b!3936676) bm!284998))

(assert (= (and d!1167758 (not res!1592960)) b!3936673))

(assert (= (and b!3936673 res!1592963) b!3936671))

(assert (= (and b!3936671 res!1592958) b!3936675))

(assert (= (and b!3936675 res!1592959) b!3936669))

(assert (= (and b!3936669 res!1592964) b!3936677))

(assert (= (and b!3936677 res!1592961) b!3936674))

(assert (= (and b!3936674 res!1592962) b!3936670))

(declare-fun m!4504533 () Bool)

(assert (=> b!3936669 m!4504533))

(declare-fun m!4504535 () Bool)

(assert (=> b!3936669 m!4504535))

(assert (=> b!3936669 m!4504535))

(declare-fun m!4504537 () Bool)

(assert (=> b!3936669 m!4504537))

(assert (=> b!3936669 m!4504537))

(declare-fun m!4504539 () Bool)

(assert (=> b!3936669 m!4504539))

(assert (=> b!3936674 m!4504533))

(assert (=> b!3936674 m!4504535))

(assert (=> b!3936674 m!4504535))

(assert (=> b!3936674 m!4504537))

(assert (=> b!3936674 m!4504537))

(declare-fun m!4504541 () Bool)

(assert (=> b!3936674 m!4504541))

(declare-fun m!4504543 () Bool)

(assert (=> b!3936673 m!4504543))

(declare-fun m!4504545 () Bool)

(assert (=> b!3936676 m!4504545))

(assert (=> b!3936670 m!4504533))

(declare-fun m!4504547 () Bool)

(assert (=> b!3936670 m!4504547))

(assert (=> b!3936675 m!4504533))

(declare-fun m!4504549 () Bool)

(assert (=> b!3936675 m!4504549))

(assert (=> b!3936675 m!4504005))

(assert (=> b!3936677 m!4504533))

(declare-fun m!4504551 () Bool)

(assert (=> b!3936677 m!4504551))

(assert (=> b!3936677 m!4504551))

(declare-fun m!4504553 () Bool)

(assert (=> b!3936677 m!4504553))

(declare-fun m!4504555 () Bool)

(assert (=> bm!284998 m!4504555))

(assert (=> b!3936671 m!4504533))

(assert (=> b!3936671 m!4504535))

(assert (=> b!3936671 m!4504535))

(assert (=> b!3936671 m!4504537))

(declare-fun m!4504557 () Bool)

(assert (=> d!1167758 m!4504557))

(declare-fun m!4504559 () Bool)

(assert (=> d!1167758 m!4504559))

(declare-fun m!4504561 () Bool)

(assert (=> d!1167758 m!4504561))

(declare-fun m!4504563 () Bool)

(assert (=> d!1167758 m!4504563))

(assert (=> b!3936355 d!1167758))

(declare-fun d!1167778 () Bool)

(declare-fun lt!1376256 () Int)

(assert (=> d!1167778 (>= lt!1376256 0)))

(declare-fun e!2435452 () Int)

(assert (=> d!1167778 (= lt!1376256 e!2435452)))

(declare-fun c!684076 () Bool)

(assert (=> d!1167778 (= c!684076 ((_ is Nil!41784) Nil!41784))))

(assert (=> d!1167778 (= (size!31349 Nil!41784) lt!1376256)))

(declare-fun b!3936678 () Bool)

(assert (=> b!3936678 (= e!2435452 0)))

(declare-fun b!3936679 () Bool)

(assert (=> b!3936679 (= e!2435452 (+ 1 (size!31349 (t!326391 Nil!41784))))))

(assert (= (and d!1167778 c!684076) b!3936678))

(assert (= (and d!1167778 (not c!684076)) b!3936679))

(declare-fun m!4504565 () Bool)

(assert (=> b!3936679 m!4504565))

(assert (=> b!3936376 d!1167778))

(declare-fun d!1167780 () Bool)

(assert (=> d!1167780 (not (= (lexList!1883 thiss!20629 rules!2768 (_2!23668 lt!1376087)) (tuple2!41067 (++!10809 lt!1376076 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1376263 () Unit!60277)

(declare-fun choose!23463 (LexerInterface!6115 List!41910 List!41908 List!41908 List!41909 List!41908 List!41909) Unit!60277)

(assert (=> d!1167780 (= lt!1376263 (choose!23463 thiss!20629 rules!2768 suffix!1176 (_2!23668 lt!1376087) suffixTokens!72 suffixResult!91 lt!1376076))))

(assert (=> d!1167780 (not (isEmpty!24918 rules!2768))))

(assert (=> d!1167780 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!126 thiss!20629 rules!2768 suffix!1176 (_2!23668 lt!1376087) suffixTokens!72 suffixResult!91 lt!1376076) lt!1376263)))

(declare-fun bs!586497 () Bool)

(assert (= bs!586497 d!1167780))

(assert (=> bs!586497 m!4504067))

(assert (=> bs!586497 m!4504049))

(declare-fun m!4504593 () Bool)

(assert (=> bs!586497 m!4504593))

(assert (=> bs!586497 m!4504103))

(assert (=> b!3936382 d!1167780))

(declare-fun b!3936709 () Bool)

(declare-fun res!1592979 () Bool)

(declare-fun e!2435471 () Bool)

(assert (=> b!3936709 (=> (not res!1592979) (not e!2435471))))

(declare-fun lt!1376264 () List!41909)

(assert (=> b!3936709 (= res!1592979 (= (size!31351 lt!1376264) (+ (size!31351 lt!1376076) (size!31351 suffixTokens!72))))))

(declare-fun b!3936708 () Bool)

(declare-fun e!2435470 () List!41909)

(assert (=> b!3936708 (= e!2435470 (Cons!41785 (h!47205 lt!1376076) (++!10809 (t!326392 lt!1376076) suffixTokens!72)))))

(declare-fun b!3936710 () Bool)

(assert (=> b!3936710 (= e!2435471 (or (not (= suffixTokens!72 Nil!41785)) (= lt!1376264 lt!1376076)))))

(declare-fun b!3936707 () Bool)

(assert (=> b!3936707 (= e!2435470 suffixTokens!72)))

(declare-fun d!1167794 () Bool)

(assert (=> d!1167794 e!2435471))

(declare-fun res!1592978 () Bool)

(assert (=> d!1167794 (=> (not res!1592978) (not e!2435471))))

(assert (=> d!1167794 (= res!1592978 (= (content!6303 lt!1376264) ((_ map or) (content!6303 lt!1376076) (content!6303 suffixTokens!72))))))

(assert (=> d!1167794 (= lt!1376264 e!2435470)))

(declare-fun c!684084 () Bool)

(assert (=> d!1167794 (= c!684084 ((_ is Nil!41785) lt!1376076))))

(assert (=> d!1167794 (= (++!10809 lt!1376076 suffixTokens!72) lt!1376264)))

(assert (= (and d!1167794 c!684084) b!3936707))

(assert (= (and d!1167794 (not c!684084)) b!3936708))

(assert (= (and d!1167794 res!1592978) b!3936709))

(assert (= (and b!3936709 res!1592979) b!3936710))

(declare-fun m!4504595 () Bool)

(assert (=> b!3936709 m!4504595))

(declare-fun m!4504597 () Bool)

(assert (=> b!3936709 m!4504597))

(assert (=> b!3936709 m!4504429))

(declare-fun m!4504599 () Bool)

(assert (=> b!3936708 m!4504599))

(declare-fun m!4504601 () Bool)

(assert (=> d!1167794 m!4504601))

(declare-fun m!4504603 () Bool)

(assert (=> d!1167794 m!4504603))

(assert (=> d!1167794 m!4504437))

(assert (=> b!3936382 d!1167794))

(declare-fun d!1167796 () Bool)

(declare-fun e!2435473 () Bool)

(assert (=> d!1167796 e!2435473))

(declare-fun res!1592980 () Bool)

(assert (=> d!1167796 (=> (not res!1592980) (not e!2435473))))

(declare-fun lt!1376265 () List!41908)

(assert (=> d!1167796 (= res!1592980 (= (content!6302 lt!1376265) ((_ map or) (content!6302 lt!1376077) (content!6302 lt!1376082))))))

(declare-fun e!2435472 () List!41908)

(assert (=> d!1167796 (= lt!1376265 e!2435472)))

(declare-fun c!684085 () Bool)

(assert (=> d!1167796 (= c!684085 ((_ is Nil!41784) lt!1376077))))

(assert (=> d!1167796 (= (++!10810 lt!1376077 lt!1376082) lt!1376265)))

(declare-fun b!3936712 () Bool)

(assert (=> b!3936712 (= e!2435472 (Cons!41784 (h!47204 lt!1376077) (++!10810 (t!326391 lt!1376077) lt!1376082)))))

(declare-fun b!3936711 () Bool)

(assert (=> b!3936711 (= e!2435472 lt!1376082)))

(declare-fun b!3936714 () Bool)

(assert (=> b!3936714 (= e!2435473 (or (not (= lt!1376082 Nil!41784)) (= lt!1376265 lt!1376077)))))

(declare-fun b!3936713 () Bool)

(declare-fun res!1592981 () Bool)

(assert (=> b!3936713 (=> (not res!1592981) (not e!2435473))))

(assert (=> b!3936713 (= res!1592981 (= (size!31349 lt!1376265) (+ (size!31349 lt!1376077) (size!31349 lt!1376082))))))

(assert (= (and d!1167796 c!684085) b!3936711))

(assert (= (and d!1167796 (not c!684085)) b!3936712))

(assert (= (and d!1167796 res!1592980) b!3936713))

(assert (= (and b!3936713 res!1592981) b!3936714))

(declare-fun m!4504605 () Bool)

(assert (=> d!1167796 m!4504605))

(assert (=> d!1167796 m!4504223))

(declare-fun m!4504607 () Bool)

(assert (=> d!1167796 m!4504607))

(declare-fun m!4504609 () Bool)

(assert (=> b!3936712 m!4504609))

(declare-fun m!4504611 () Bool)

(assert (=> b!3936713 m!4504611))

(assert (=> b!3936713 m!4503995))

(assert (=> b!3936713 m!4504159))

(assert (=> b!3936362 d!1167796))

(declare-fun d!1167798 () Bool)

(declare-fun e!2435476 () Bool)

(assert (=> d!1167798 e!2435476))

(declare-fun res!1592984 () Bool)

(assert (=> d!1167798 (=> (not res!1592984) (not e!2435476))))

(declare-fun lt!1376266 () List!41908)

(assert (=> d!1167798 (= res!1592984 (= (content!6302 lt!1376266) ((_ map or) (content!6302 lt!1376085) (content!6302 suffix!1176))))))

(declare-fun e!2435475 () List!41908)

(assert (=> d!1167798 (= lt!1376266 e!2435475)))

(declare-fun c!684086 () Bool)

(assert (=> d!1167798 (= c!684086 ((_ is Nil!41784) lt!1376085))))

(assert (=> d!1167798 (= (++!10810 lt!1376085 suffix!1176) lt!1376266)))

(declare-fun b!3936718 () Bool)

(assert (=> b!3936718 (= e!2435475 (Cons!41784 (h!47204 lt!1376085) (++!10810 (t!326391 lt!1376085) suffix!1176)))))

(declare-fun b!3936717 () Bool)

(assert (=> b!3936717 (= e!2435475 suffix!1176)))

(declare-fun b!3936720 () Bool)

(assert (=> b!3936720 (= e!2435476 (or (not (= suffix!1176 Nil!41784)) (= lt!1376266 lt!1376085)))))

(declare-fun b!3936719 () Bool)

(declare-fun res!1592985 () Bool)

(assert (=> b!3936719 (=> (not res!1592985) (not e!2435476))))

(assert (=> b!3936719 (= res!1592985 (= (size!31349 lt!1376266) (+ (size!31349 lt!1376085) (size!31349 suffix!1176))))))

(assert (= (and d!1167798 c!684086) b!3936717))

(assert (= (and d!1167798 (not c!684086)) b!3936718))

(assert (= (and d!1167798 res!1592984) b!3936719))

(assert (= (and b!3936719 res!1592985) b!3936720))

(declare-fun m!4504613 () Bool)

(assert (=> d!1167798 m!4504613))

(declare-fun m!4504615 () Bool)

(assert (=> d!1167798 m!4504615))

(declare-fun m!4504617 () Bool)

(assert (=> d!1167798 m!4504617))

(declare-fun m!4504619 () Bool)

(assert (=> b!3936718 m!4504619))

(declare-fun m!4504621 () Bool)

(assert (=> b!3936719 m!4504621))

(assert (=> b!3936719 m!4504451))

(assert (=> b!3936719 m!4504075))

(assert (=> b!3936362 d!1167798))

(declare-fun d!1167800 () Bool)

(assert (=> d!1167800 (= (++!10810 (++!10810 lt!1376077 lt!1376085) suffix!1176) (++!10810 lt!1376077 (++!10810 lt!1376085 suffix!1176)))))

(declare-fun lt!1376270 () Unit!60277)

(declare-fun choose!23464 (List!41908 List!41908 List!41908) Unit!60277)

(assert (=> d!1167800 (= lt!1376270 (choose!23464 lt!1376077 lt!1376085 suffix!1176))))

(assert (=> d!1167800 (= (lemmaConcatAssociativity!2339 lt!1376077 lt!1376085 suffix!1176) lt!1376270)))

(declare-fun bs!586498 () Bool)

(assert (= bs!586498 d!1167800))

(assert (=> bs!586498 m!4504039))

(declare-fun m!4504641 () Bool)

(assert (=> bs!586498 m!4504641))

(assert (=> bs!586498 m!4504089))

(declare-fun m!4504647 () Bool)

(assert (=> bs!586498 m!4504647))

(assert (=> bs!586498 m!4504039))

(assert (=> bs!586498 m!4504089))

(declare-fun m!4504653 () Bool)

(assert (=> bs!586498 m!4504653))

(assert (=> b!3936362 d!1167800))

(declare-fun b!3936731 () Bool)

(declare-fun e!2435484 () Bool)

(declare-fun e!2435483 () Bool)

(assert (=> b!3936731 (= e!2435484 e!2435483)))

(declare-fun res!1592989 () Bool)

(declare-fun lt!1376272 () tuple2!41066)

(assert (=> b!3936731 (= res!1592989 (< (size!31349 (_2!23667 lt!1376272)) (size!31349 suffix!1176)))))

(assert (=> b!3936731 (=> (not res!1592989) (not e!2435483))))

(declare-fun b!3936732 () Bool)

(declare-fun e!2435485 () tuple2!41066)

(assert (=> b!3936732 (= e!2435485 (tuple2!41067 Nil!41785 suffix!1176))))

(declare-fun b!3936733 () Bool)

(assert (=> b!3936733 (= e!2435484 (= (_2!23667 lt!1376272) suffix!1176))))

(declare-fun b!3936734 () Bool)

(declare-fun lt!1376271 () Option!8946)

(declare-fun lt!1376273 () tuple2!41066)

(assert (=> b!3936734 (= e!2435485 (tuple2!41067 (Cons!41785 (_1!23668 (v!39275 lt!1376271)) (_1!23667 lt!1376273)) (_2!23667 lt!1376273)))))

(assert (=> b!3936734 (= lt!1376273 (lexList!1883 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376271))))))

(declare-fun b!3936735 () Bool)

(assert (=> b!3936735 (= e!2435483 (not (isEmpty!24917 (_1!23667 lt!1376272))))))

(declare-fun d!1167810 () Bool)

(assert (=> d!1167810 e!2435484))

(declare-fun c!684089 () Bool)

(assert (=> d!1167810 (= c!684089 (> (size!31351 (_1!23667 lt!1376272)) 0))))

(assert (=> d!1167810 (= lt!1376272 e!2435485)))

(declare-fun c!684088 () Bool)

(assert (=> d!1167810 (= c!684088 ((_ is Some!8945) lt!1376271))))

(assert (=> d!1167810 (= lt!1376271 (maxPrefix!3419 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1167810 (= (lexList!1883 thiss!20629 rules!2768 suffix!1176) lt!1376272)))

(assert (= (and d!1167810 c!684088) b!3936734))

(assert (= (and d!1167810 (not c!684088)) b!3936732))

(assert (= (and d!1167810 c!684089) b!3936731))

(assert (= (and d!1167810 (not c!684089)) b!3936733))

(assert (= (and b!3936731 res!1592989) b!3936735))

(declare-fun m!4504655 () Bool)

(assert (=> b!3936731 m!4504655))

(assert (=> b!3936731 m!4504075))

(declare-fun m!4504657 () Bool)

(assert (=> b!3936734 m!4504657))

(declare-fun m!4504659 () Bool)

(assert (=> b!3936735 m!4504659))

(declare-fun m!4504661 () Bool)

(assert (=> d!1167810 m!4504661))

(declare-fun m!4504663 () Bool)

(assert (=> d!1167810 m!4504663))

(assert (=> b!3936341 d!1167810))

(declare-fun b!3936743 () Bool)

(declare-fun e!2435489 () Bool)

(assert (=> b!3936743 (= e!2435489 (>= (size!31349 suffix!1176) (size!31349 Nil!41784)))))

(declare-fun b!3936742 () Bool)

(declare-fun e!2435490 () Bool)

(assert (=> b!3936742 (= e!2435490 (isPrefix!3621 (tail!6087 Nil!41784) (tail!6087 suffix!1176)))))

(declare-fun d!1167814 () Bool)

(assert (=> d!1167814 e!2435489))

(declare-fun res!1592997 () Bool)

(assert (=> d!1167814 (=> res!1592997 e!2435489)))

(declare-fun lt!1376275 () Bool)

(assert (=> d!1167814 (= res!1592997 (not lt!1376275))))

(declare-fun e!2435491 () Bool)

(assert (=> d!1167814 (= lt!1376275 e!2435491)))

(declare-fun res!1592995 () Bool)

(assert (=> d!1167814 (=> res!1592995 e!2435491)))

(assert (=> d!1167814 (= res!1592995 ((_ is Nil!41784) Nil!41784))))

(assert (=> d!1167814 (= (isPrefix!3621 Nil!41784 suffix!1176) lt!1376275)))

(declare-fun b!3936741 () Bool)

(declare-fun res!1592996 () Bool)

(assert (=> b!3936741 (=> (not res!1592996) (not e!2435490))))

(assert (=> b!3936741 (= res!1592996 (= (head!8361 Nil!41784) (head!8361 suffix!1176)))))

(declare-fun b!3936740 () Bool)

(assert (=> b!3936740 (= e!2435491 e!2435490)))

(declare-fun res!1592994 () Bool)

(assert (=> b!3936740 (=> (not res!1592994) (not e!2435490))))

(assert (=> b!3936740 (= res!1592994 (not ((_ is Nil!41784) suffix!1176)))))

(assert (= (and d!1167814 (not res!1592995)) b!3936740))

(assert (= (and b!3936740 res!1592994) b!3936741))

(assert (= (and b!3936741 res!1592996) b!3936742))

(assert (= (and d!1167814 (not res!1592997)) b!3936743))

(assert (=> b!3936743 m!4504075))

(assert (=> b!3936743 m!4504053))

(declare-fun m!4504675 () Bool)

(assert (=> b!3936742 m!4504675))

(declare-fun m!4504677 () Bool)

(assert (=> b!3936742 m!4504677))

(assert (=> b!3936742 m!4504675))

(assert (=> b!3936742 m!4504677))

(declare-fun m!4504679 () Bool)

(assert (=> b!3936742 m!4504679))

(declare-fun m!4504681 () Bool)

(assert (=> b!3936741 m!4504681))

(declare-fun m!4504683 () Bool)

(assert (=> b!3936741 m!4504683))

(assert (=> b!3936363 d!1167814))

(declare-fun b!3936751 () Bool)

(declare-fun e!2435494 () Bool)

(assert (=> b!3936751 (= e!2435494 (>= (size!31349 (++!10810 Nil!41784 suffix!1176)) (size!31349 Nil!41784)))))

(declare-fun b!3936750 () Bool)

(declare-fun e!2435495 () Bool)

(assert (=> b!3936750 (= e!2435495 (isPrefix!3621 (tail!6087 Nil!41784) (tail!6087 (++!10810 Nil!41784 suffix!1176))))))

(declare-fun d!1167822 () Bool)

(assert (=> d!1167822 e!2435494))

(declare-fun res!1593001 () Bool)

(assert (=> d!1167822 (=> res!1593001 e!2435494)))

(declare-fun lt!1376279 () Bool)

(assert (=> d!1167822 (= res!1593001 (not lt!1376279))))

(declare-fun e!2435496 () Bool)

(assert (=> d!1167822 (= lt!1376279 e!2435496)))

(declare-fun res!1592999 () Bool)

(assert (=> d!1167822 (=> res!1592999 e!2435496)))

(assert (=> d!1167822 (= res!1592999 ((_ is Nil!41784) Nil!41784))))

(assert (=> d!1167822 (= (isPrefix!3621 Nil!41784 (++!10810 Nil!41784 suffix!1176)) lt!1376279)))

(declare-fun b!3936749 () Bool)

(declare-fun res!1593000 () Bool)

(assert (=> b!3936749 (=> (not res!1593000) (not e!2435495))))

(assert (=> b!3936749 (= res!1593000 (= (head!8361 Nil!41784) (head!8361 (++!10810 Nil!41784 suffix!1176))))))

(declare-fun b!3936748 () Bool)

(assert (=> b!3936748 (= e!2435496 e!2435495)))

(declare-fun res!1592998 () Bool)

(assert (=> b!3936748 (=> (not res!1592998) (not e!2435495))))

(assert (=> b!3936748 (= res!1592998 (not ((_ is Nil!41784) (++!10810 Nil!41784 suffix!1176))))))

(assert (= (and d!1167822 (not res!1592999)) b!3936748))

(assert (= (and b!3936748 res!1592998) b!3936749))

(assert (= (and b!3936749 res!1593000) b!3936750))

(assert (= (and d!1167822 (not res!1593001)) b!3936751))

(assert (=> b!3936751 m!4504127))

(declare-fun m!4504689 () Bool)

(assert (=> b!3936751 m!4504689))

(assert (=> b!3936751 m!4504053))

(assert (=> b!3936750 m!4504675))

(assert (=> b!3936750 m!4504127))

(declare-fun m!4504691 () Bool)

(assert (=> b!3936750 m!4504691))

(assert (=> b!3936750 m!4504675))

(assert (=> b!3936750 m!4504691))

(declare-fun m!4504693 () Bool)

(assert (=> b!3936750 m!4504693))

(assert (=> b!3936749 m!4504681))

(assert (=> b!3936749 m!4504127))

(declare-fun m!4504695 () Bool)

(assert (=> b!3936749 m!4504695))

(assert (=> b!3936363 d!1167822))

(declare-fun d!1167826 () Bool)

(declare-fun e!2435499 () Bool)

(assert (=> d!1167826 e!2435499))

(declare-fun res!1593002 () Bool)

(assert (=> d!1167826 (=> (not res!1593002) (not e!2435499))))

(declare-fun lt!1376281 () List!41908)

(assert (=> d!1167826 (= res!1593002 (= (content!6302 lt!1376281) ((_ map or) (content!6302 Nil!41784) (content!6302 suffix!1176))))))

(declare-fun e!2435498 () List!41908)

(assert (=> d!1167826 (= lt!1376281 e!2435498)))

(declare-fun c!684093 () Bool)

(assert (=> d!1167826 (= c!684093 ((_ is Nil!41784) Nil!41784))))

(assert (=> d!1167826 (= (++!10810 Nil!41784 suffix!1176) lt!1376281)))

(declare-fun b!3936755 () Bool)

(assert (=> b!3936755 (= e!2435498 (Cons!41784 (h!47204 Nil!41784) (++!10810 (t!326391 Nil!41784) suffix!1176)))))

(declare-fun b!3936754 () Bool)

(assert (=> b!3936754 (= e!2435498 suffix!1176)))

(declare-fun b!3936757 () Bool)

(assert (=> b!3936757 (= e!2435499 (or (not (= suffix!1176 Nil!41784)) (= lt!1376281 Nil!41784)))))

(declare-fun b!3936756 () Bool)

(declare-fun res!1593003 () Bool)

(assert (=> b!3936756 (=> (not res!1593003) (not e!2435499))))

(assert (=> b!3936756 (= res!1593003 (= (size!31349 lt!1376281) (+ (size!31349 Nil!41784) (size!31349 suffix!1176))))))

(assert (= (and d!1167826 c!684093) b!3936754))

(assert (= (and d!1167826 (not c!684093)) b!3936755))

(assert (= (and d!1167826 res!1593002) b!3936756))

(assert (= (and b!3936756 res!1593003) b!3936757))

(declare-fun m!4504699 () Bool)

(assert (=> d!1167826 m!4504699))

(declare-fun m!4504701 () Bool)

(assert (=> d!1167826 m!4504701))

(assert (=> d!1167826 m!4504617))

(declare-fun m!4504703 () Bool)

(assert (=> b!3936755 m!4504703))

(declare-fun m!4504705 () Bool)

(assert (=> b!3936756 m!4504705))

(assert (=> b!3936756 m!4504053))

(assert (=> b!3936756 m!4504075))

(assert (=> b!3936363 d!1167826))

(declare-fun d!1167830 () Bool)

(assert (=> d!1167830 (isPrefix!3621 Nil!41784 (++!10810 Nil!41784 suffix!1176))))

(declare-fun lt!1376283 () Unit!60277)

(assert (=> d!1167830 (= lt!1376283 (choose!23458 Nil!41784 suffix!1176))))

(assert (=> d!1167830 (= (lemmaConcatTwoListThenFirstIsPrefix!2484 Nil!41784 suffix!1176) lt!1376283)))

(declare-fun bs!586500 () Bool)

(assert (= bs!586500 d!1167830))

(assert (=> bs!586500 m!4504127))

(assert (=> bs!586500 m!4504127))

(assert (=> bs!586500 m!4504129))

(declare-fun m!4504717 () Bool)

(assert (=> bs!586500 m!4504717))

(assert (=> b!3936363 d!1167830))

(declare-fun d!1167834 () Bool)

(assert (=> d!1167834 (= (isEmpty!24916 suffix!1176) ((_ is Nil!41784) suffix!1176))))

(assert (=> b!3936342 d!1167834))

(declare-fun d!1167836 () Bool)

(assert (=> d!1167836 (= (_2!23668 (v!39275 lt!1376064)) lt!1376082)))

(declare-fun lt!1376285 () Unit!60277)

(assert (=> d!1167836 (= lt!1376285 (choose!23456 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 lt!1376082 lt!1376066))))

(assert (=> d!1167836 (isPrefix!3621 lt!1376077 lt!1376066)))

(assert (=> d!1167836 (= (lemmaSamePrefixThenSameSuffix!1842 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 lt!1376082 lt!1376066) lt!1376285)))

(declare-fun bs!586501 () Bool)

(assert (= bs!586501 d!1167836))

(declare-fun m!4504721 () Bool)

(assert (=> bs!586501 m!4504721))

(assert (=> bs!586501 m!4504241))

(assert (=> b!3936364 d!1167836))

(declare-fun b!3936769 () Bool)

(declare-fun e!2435504 () Bool)

(assert (=> b!3936769 (= e!2435504 (>= (size!31349 lt!1376088) (size!31349 lt!1376077)))))

(declare-fun b!3936768 () Bool)

(declare-fun e!2435505 () Bool)

(assert (=> b!3936768 (= e!2435505 (isPrefix!3621 (tail!6087 lt!1376077) (tail!6087 lt!1376088)))))

(declare-fun d!1167838 () Bool)

(assert (=> d!1167838 e!2435504))

(declare-fun res!1593011 () Bool)

(assert (=> d!1167838 (=> res!1593011 e!2435504)))

(declare-fun lt!1376286 () Bool)

(assert (=> d!1167838 (= res!1593011 (not lt!1376286))))

(declare-fun e!2435506 () Bool)

(assert (=> d!1167838 (= lt!1376286 e!2435506)))

(declare-fun res!1593009 () Bool)

(assert (=> d!1167838 (=> res!1593009 e!2435506)))

(assert (=> d!1167838 (= res!1593009 ((_ is Nil!41784) lt!1376077))))

(assert (=> d!1167838 (= (isPrefix!3621 lt!1376077 lt!1376088) lt!1376286)))

(declare-fun b!3936767 () Bool)

(declare-fun res!1593010 () Bool)

(assert (=> b!3936767 (=> (not res!1593010) (not e!2435505))))

(assert (=> b!3936767 (= res!1593010 (= (head!8361 lt!1376077) (head!8361 lt!1376088)))))

(declare-fun b!3936766 () Bool)

(assert (=> b!3936766 (= e!2435506 e!2435505)))

(declare-fun res!1593008 () Bool)

(assert (=> b!3936766 (=> (not res!1593008) (not e!2435505))))

(assert (=> b!3936766 (= res!1593008 (not ((_ is Nil!41784) lt!1376088)))))

(assert (= (and d!1167838 (not res!1593009)) b!3936766))

(assert (= (and b!3936766 res!1593008) b!3936767))

(assert (= (and b!3936767 res!1593010) b!3936768))

(assert (= (and d!1167838 (not res!1593011)) b!3936769))

(declare-fun m!4504727 () Bool)

(assert (=> b!3936769 m!4504727))

(assert (=> b!3936769 m!4503995))

(assert (=> b!3936768 m!4504357))

(declare-fun m!4504729 () Bool)

(assert (=> b!3936768 m!4504729))

(assert (=> b!3936768 m!4504357))

(assert (=> b!3936768 m!4504729))

(declare-fun m!4504733 () Bool)

(assert (=> b!3936768 m!4504733))

(assert (=> b!3936767 m!4504363))

(declare-fun m!4504737 () Bool)

(assert (=> b!3936767 m!4504737))

(assert (=> b!3936364 d!1167838))

(declare-fun d!1167842 () Bool)

(assert (=> d!1167842 (isPrefix!3621 lt!1376077 (++!10810 lt!1376077 lt!1376082))))

(declare-fun lt!1376288 () Unit!60277)

(assert (=> d!1167842 (= lt!1376288 (choose!23458 lt!1376077 lt!1376082))))

(assert (=> d!1167842 (= (lemmaConcatTwoListThenFirstIsPrefix!2484 lt!1376077 lt!1376082) lt!1376288)))

(declare-fun bs!586502 () Bool)

(assert (= bs!586502 d!1167842))

(assert (=> bs!586502 m!4504087))

(assert (=> bs!586502 m!4504087))

(declare-fun m!4504745 () Bool)

(assert (=> bs!586502 m!4504745))

(declare-fun m!4504747 () Bool)

(assert (=> bs!586502 m!4504747))

(assert (=> b!3936364 d!1167842))

(declare-fun d!1167848 () Bool)

(declare-fun lt!1376289 () Int)

(assert (=> d!1167848 (>= lt!1376289 0)))

(declare-fun e!2435509 () Int)

(assert (=> d!1167848 (= lt!1376289 e!2435509)))

(declare-fun c!684097 () Bool)

(assert (=> d!1167848 (= c!684097 ((_ is Nil!41784) suffix!1176))))

(assert (=> d!1167848 (= (size!31349 suffix!1176) lt!1376289)))

(declare-fun b!3936774 () Bool)

(assert (=> b!3936774 (= e!2435509 0)))

(declare-fun b!3936775 () Bool)

(assert (=> b!3936775 (= e!2435509 (+ 1 (size!31349 (t!326391 suffix!1176))))))

(assert (= (and d!1167848 c!684097) b!3936774))

(assert (= (and d!1167848 (not c!684097)) b!3936775))

(declare-fun m!4504749 () Bool)

(assert (=> b!3936775 m!4504749))

(assert (=> b!3936359 d!1167848))

(declare-fun d!1167850 () Bool)

(declare-fun lt!1376290 () Int)

(assert (=> d!1167850 (>= lt!1376290 0)))

(declare-fun e!2435510 () Int)

(assert (=> d!1167850 (= lt!1376290 e!2435510)))

(declare-fun c!684098 () Bool)

(assert (=> d!1167850 (= c!684098 ((_ is Nil!41784) (_2!23668 (v!39275 lt!1376064))))))

(assert (=> d!1167850 (= (size!31349 (_2!23668 (v!39275 lt!1376064))) lt!1376290)))

(declare-fun b!3936776 () Bool)

(assert (=> b!3936776 (= e!2435510 0)))

(declare-fun b!3936777 () Bool)

(assert (=> b!3936777 (= e!2435510 (+ 1 (size!31349 (t!326391 (_2!23668 (v!39275 lt!1376064))))))))

(assert (= (and d!1167850 c!684098) b!3936776))

(assert (= (and d!1167850 (not c!684098)) b!3936777))

(declare-fun m!4504751 () Bool)

(assert (=> b!3936777 m!4504751))

(assert (=> b!3936359 d!1167850))

(declare-fun b!3936780 () Bool)

(declare-fun res!1593015 () Bool)

(declare-fun e!2435512 () Bool)

(assert (=> b!3936780 (=> (not res!1593015) (not e!2435512))))

(declare-fun lt!1376291 () List!41909)

(assert (=> b!3936780 (= res!1593015 (= (size!31351 lt!1376291) (+ (size!31351 lt!1376059) (size!31351 suffixTokens!72))))))

(declare-fun b!3936779 () Bool)

(declare-fun e!2435511 () List!41909)

(assert (=> b!3936779 (= e!2435511 (Cons!41785 (h!47205 lt!1376059) (++!10809 (t!326392 lt!1376059) suffixTokens!72)))))

(declare-fun b!3936781 () Bool)

(assert (=> b!3936781 (= e!2435512 (or (not (= suffixTokens!72 Nil!41785)) (= lt!1376291 lt!1376059)))))

(declare-fun b!3936778 () Bool)

(assert (=> b!3936778 (= e!2435511 suffixTokens!72)))

(declare-fun d!1167852 () Bool)

(assert (=> d!1167852 e!2435512))

(declare-fun res!1593014 () Bool)

(assert (=> d!1167852 (=> (not res!1593014) (not e!2435512))))

(assert (=> d!1167852 (= res!1593014 (= (content!6303 lt!1376291) ((_ map or) (content!6303 lt!1376059) (content!6303 suffixTokens!72))))))

(assert (=> d!1167852 (= lt!1376291 e!2435511)))

(declare-fun c!684099 () Bool)

(assert (=> d!1167852 (= c!684099 ((_ is Nil!41785) lt!1376059))))

(assert (=> d!1167852 (= (++!10809 lt!1376059 suffixTokens!72) lt!1376291)))

(assert (= (and d!1167852 c!684099) b!3936778))

(assert (= (and d!1167852 (not c!684099)) b!3936779))

(assert (= (and d!1167852 res!1593014) b!3936780))

(assert (= (and b!3936780 res!1593015) b!3936781))

(declare-fun m!4504753 () Bool)

(assert (=> b!3936780 m!4504753))

(assert (=> b!3936780 m!4504405))

(assert (=> b!3936780 m!4504429))

(declare-fun m!4504755 () Bool)

(assert (=> b!3936779 m!4504755))

(declare-fun m!4504757 () Bool)

(assert (=> d!1167852 m!4504757))

(assert (=> d!1167852 m!4504413))

(assert (=> d!1167852 m!4504437))

(assert (=> b!3936339 d!1167852))

(declare-fun d!1167854 () Bool)

(assert (=> d!1167854 (= (tail!6085 prefixTokens!80) (t!326392 prefixTokens!80))))

(assert (=> b!3936339 d!1167854))

(declare-fun b!3936785 () Bool)

(declare-fun e!2435513 () Bool)

(assert (=> b!3936785 (= e!2435513 (>= (size!31349 lt!1376082) (size!31349 lt!1376085)))))

(declare-fun b!3936784 () Bool)

(declare-fun e!2435514 () Bool)

(assert (=> b!3936784 (= e!2435514 (isPrefix!3621 (tail!6087 lt!1376085) (tail!6087 lt!1376082)))))

(declare-fun d!1167856 () Bool)

(assert (=> d!1167856 e!2435513))

(declare-fun res!1593019 () Bool)

(assert (=> d!1167856 (=> res!1593019 e!2435513)))

(declare-fun lt!1376294 () Bool)

(assert (=> d!1167856 (= res!1593019 (not lt!1376294))))

(declare-fun e!2435515 () Bool)

(assert (=> d!1167856 (= lt!1376294 e!2435515)))

(declare-fun res!1593017 () Bool)

(assert (=> d!1167856 (=> res!1593017 e!2435515)))

(assert (=> d!1167856 (= res!1593017 ((_ is Nil!41784) lt!1376085))))

(assert (=> d!1167856 (= (isPrefix!3621 lt!1376085 lt!1376082) lt!1376294)))

(declare-fun b!3936783 () Bool)

(declare-fun res!1593018 () Bool)

(assert (=> b!3936783 (=> (not res!1593018) (not e!2435514))))

(assert (=> b!3936783 (= res!1593018 (= (head!8361 lt!1376085) (head!8361 lt!1376082)))))

(declare-fun b!3936782 () Bool)

(assert (=> b!3936782 (= e!2435515 e!2435514)))

(declare-fun res!1593016 () Bool)

(assert (=> b!3936782 (=> (not res!1593016) (not e!2435514))))

(assert (=> b!3936782 (= res!1593016 (not ((_ is Nil!41784) lt!1376082)))))

(assert (= (and d!1167856 (not res!1593017)) b!3936782))

(assert (= (and b!3936782 res!1593016) b!3936783))

(assert (= (and b!3936783 res!1593018) b!3936784))

(assert (= (and d!1167856 (not res!1593019)) b!3936785))

(assert (=> b!3936785 m!4504159))

(assert (=> b!3936785 m!4504451))

(declare-fun m!4504759 () Bool)

(assert (=> b!3936784 m!4504759))

(declare-fun m!4504761 () Bool)

(assert (=> b!3936784 m!4504761))

(assert (=> b!3936784 m!4504759))

(assert (=> b!3936784 m!4504761))

(declare-fun m!4504763 () Bool)

(assert (=> b!3936784 m!4504763))

(declare-fun m!4504765 () Bool)

(assert (=> b!3936783 m!4504765))

(declare-fun m!4504767 () Bool)

(assert (=> b!3936783 m!4504767))

(assert (=> b!3936339 d!1167856))

(declare-fun d!1167858 () Bool)

(assert (=> d!1167858 (isPrefix!3621 lt!1376085 (++!10810 lt!1376085 suffix!1176))))

(declare-fun lt!1376295 () Unit!60277)

(assert (=> d!1167858 (= lt!1376295 (choose!23458 lt!1376085 suffix!1176))))

(assert (=> d!1167858 (= (lemmaConcatTwoListThenFirstIsPrefix!2484 lt!1376085 suffix!1176) lt!1376295)))

(declare-fun bs!586503 () Bool)

(assert (= bs!586503 d!1167858))

(assert (=> bs!586503 m!4504089))

(assert (=> bs!586503 m!4504089))

(declare-fun m!4504769 () Bool)

(assert (=> bs!586503 m!4504769))

(declare-fun m!4504771 () Bool)

(assert (=> bs!586503 m!4504771))

(assert (=> b!3936339 d!1167858))

(declare-fun d!1167860 () Bool)

(assert (=> d!1167860 (= (head!8359 prefixTokens!80) (h!47205 prefixTokens!80))))

(assert (=> b!3936381 d!1167860))

(declare-fun b!3936789 () Bool)

(declare-fun e!2435516 () Bool)

(assert (=> b!3936789 (= e!2435516 (>= (size!31349 (_2!23668 (v!39275 lt!1376064))) (size!31349 lt!1376085)))))

(declare-fun b!3936788 () Bool)

(declare-fun e!2435517 () Bool)

(assert (=> b!3936788 (= e!2435517 (isPrefix!3621 (tail!6087 lt!1376085) (tail!6087 (_2!23668 (v!39275 lt!1376064)))))))

(declare-fun d!1167864 () Bool)

(assert (=> d!1167864 e!2435516))

(declare-fun res!1593023 () Bool)

(assert (=> d!1167864 (=> res!1593023 e!2435516)))

(declare-fun lt!1376297 () Bool)

(assert (=> d!1167864 (= res!1593023 (not lt!1376297))))

(declare-fun e!2435518 () Bool)

(assert (=> d!1167864 (= lt!1376297 e!2435518)))

(declare-fun res!1593021 () Bool)

(assert (=> d!1167864 (=> res!1593021 e!2435518)))

(assert (=> d!1167864 (= res!1593021 ((_ is Nil!41784) lt!1376085))))

(assert (=> d!1167864 (= (isPrefix!3621 lt!1376085 (_2!23668 (v!39275 lt!1376064))) lt!1376297)))

(declare-fun b!3936787 () Bool)

(declare-fun res!1593022 () Bool)

(assert (=> b!3936787 (=> (not res!1593022) (not e!2435517))))

(assert (=> b!3936787 (= res!1593022 (= (head!8361 lt!1376085) (head!8361 (_2!23668 (v!39275 lt!1376064)))))))

(declare-fun b!3936786 () Bool)

(assert (=> b!3936786 (= e!2435518 e!2435517)))

(declare-fun res!1593020 () Bool)

(assert (=> b!3936786 (=> (not res!1593020) (not e!2435517))))

(assert (=> b!3936786 (= res!1593020 (not ((_ is Nil!41784) (_2!23668 (v!39275 lt!1376064)))))))

(assert (= (and d!1167864 (not res!1593021)) b!3936786))

(assert (= (and b!3936786 res!1593020) b!3936787))

(assert (= (and b!3936787 res!1593022) b!3936788))

(assert (= (and d!1167864 (not res!1593023)) b!3936789))

(assert (=> b!3936789 m!4504077))

(assert (=> b!3936789 m!4504451))

(assert (=> b!3936788 m!4504759))

(declare-fun m!4504777 () Bool)

(assert (=> b!3936788 m!4504777))

(assert (=> b!3936788 m!4504759))

(assert (=> b!3936788 m!4504777))

(declare-fun m!4504779 () Bool)

(assert (=> b!3936788 m!4504779))

(assert (=> b!3936787 m!4504765))

(declare-fun m!4504781 () Bool)

(assert (=> b!3936787 m!4504781))

(assert (=> b!3936361 d!1167864))

(declare-fun d!1167868 () Bool)

(assert (=> d!1167868 (isPrefix!3621 prefix!426 (++!10810 prefix!426 suffix!1176))))

(declare-fun lt!1376298 () Unit!60277)

(assert (=> d!1167868 (= lt!1376298 (choose!23458 prefix!426 suffix!1176))))

(assert (=> d!1167868 (= (lemmaConcatTwoListThenFirstIsPrefix!2484 prefix!426 suffix!1176) lt!1376298)))

(declare-fun bs!586505 () Bool)

(assert (= bs!586505 d!1167868))

(assert (=> bs!586505 m!4504097))

(assert (=> bs!586505 m!4504097))

(declare-fun m!4504783 () Bool)

(assert (=> bs!586505 m!4504783))

(declare-fun m!4504785 () Bool)

(assert (=> bs!586505 m!4504785))

(assert (=> b!3936340 d!1167868))

(declare-fun b!3936793 () Bool)

(declare-fun e!2435519 () Bool)

(assert (=> b!3936793 (= e!2435519 (>= (size!31349 lt!1376066) (size!31349 prefix!426)))))

(declare-fun b!3936792 () Bool)

(declare-fun e!2435520 () Bool)

(assert (=> b!3936792 (= e!2435520 (isPrefix!3621 (tail!6087 prefix!426) (tail!6087 lt!1376066)))))

(declare-fun d!1167870 () Bool)

(assert (=> d!1167870 e!2435519))

(declare-fun res!1593027 () Bool)

(assert (=> d!1167870 (=> res!1593027 e!2435519)))

(declare-fun lt!1376299 () Bool)

(assert (=> d!1167870 (= res!1593027 (not lt!1376299))))

(declare-fun e!2435521 () Bool)

(assert (=> d!1167870 (= lt!1376299 e!2435521)))

(declare-fun res!1593025 () Bool)

(assert (=> d!1167870 (=> res!1593025 e!2435521)))

(assert (=> d!1167870 (= res!1593025 ((_ is Nil!41784) prefix!426))))

(assert (=> d!1167870 (= (isPrefix!3621 prefix!426 lt!1376066) lt!1376299)))

(declare-fun b!3936791 () Bool)

(declare-fun res!1593026 () Bool)

(assert (=> b!3936791 (=> (not res!1593026) (not e!2435520))))

(assert (=> b!3936791 (= res!1593026 (= (head!8361 prefix!426) (head!8361 lt!1376066)))))

(declare-fun b!3936790 () Bool)

(assert (=> b!3936790 (= e!2435521 e!2435520)))

(declare-fun res!1593024 () Bool)

(assert (=> b!3936790 (=> (not res!1593024) (not e!2435520))))

(assert (=> b!3936790 (= res!1593024 (not ((_ is Nil!41784) lt!1376066)))))

(assert (= (and d!1167870 (not res!1593025)) b!3936790))

(assert (= (and b!3936790 res!1593024) b!3936791))

(assert (= (and b!3936791 res!1593026) b!3936792))

(assert (= (and d!1167870 (not res!1593027)) b!3936793))

(assert (=> b!3936793 m!4504005))

(assert (=> b!3936793 m!4504121))

(declare-fun m!4504787 () Bool)

(assert (=> b!3936792 m!4504787))

(assert (=> b!3936792 m!4504307))

(assert (=> b!3936792 m!4504787))

(assert (=> b!3936792 m!4504307))

(declare-fun m!4504789 () Bool)

(assert (=> b!3936792 m!4504789))

(declare-fun m!4504791 () Bool)

(assert (=> b!3936791 m!4504791))

(declare-fun m!4504793 () Bool)

(assert (=> b!3936791 m!4504793))

(assert (=> b!3936340 d!1167870))

(declare-fun d!1167876 () Bool)

(assert (=> d!1167876 (= lt!1376077 prefix!426)))

(declare-fun lt!1376303 () Unit!60277)

(declare-fun choose!23467 (List!41908 List!41908 List!41908) Unit!60277)

(assert (=> d!1167876 (= lt!1376303 (choose!23467 lt!1376077 prefix!426 lt!1376066))))

(assert (=> d!1167876 (isPrefix!3621 lt!1376077 lt!1376066)))

(assert (=> d!1167876 (= (lemmaIsPrefixSameLengthThenSameList!817 lt!1376077 prefix!426 lt!1376066) lt!1376303)))

(declare-fun bs!586506 () Bool)

(assert (= bs!586506 d!1167876))

(declare-fun m!4504805 () Bool)

(assert (=> bs!586506 m!4504805))

(assert (=> bs!586506 m!4504241))

(assert (=> b!3936340 d!1167876))

(declare-fun d!1167880 () Bool)

(assert (=> d!1167880 (= (_2!23668 (v!39275 lt!1376064)) suffix!1176)))

(declare-fun lt!1376306 () Unit!60277)

(assert (=> d!1167880 (= lt!1376306 (choose!23456 lt!1376077 (_2!23668 (v!39275 lt!1376064)) prefix!426 suffix!1176 lt!1376066))))

(assert (=> d!1167880 (isPrefix!3621 lt!1376077 lt!1376066)))

(assert (=> d!1167880 (= (lemmaSamePrefixThenSameSuffix!1842 lt!1376077 (_2!23668 (v!39275 lt!1376064)) prefix!426 suffix!1176 lt!1376066) lt!1376306)))

(declare-fun bs!586507 () Bool)

(assert (= bs!586507 d!1167880))

(declare-fun m!4504807 () Bool)

(assert (=> bs!586507 m!4504807))

(assert (=> bs!586507 m!4504241))

(assert (=> b!3936340 d!1167880))

(declare-fun d!1167882 () Bool)

(assert (=> d!1167882 (= (isEmpty!24917 lt!1376076) ((_ is Nil!41785) lt!1376076))))

(assert (=> b!3936366 d!1167882))

(assert (=> b!3936366 d!1167854))

(declare-fun d!1167884 () Bool)

(assert (=> d!1167884 (not (= (lexList!1883 thiss!20629 rules!2768 suffix!1176) (tuple2!41067 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1376310 () Unit!60277)

(declare-fun choose!23468 (LexerInterface!6115 List!41910 List!41908 List!41908 List!41909 List!41908) Unit!60277)

(assert (=> d!1167884 (= lt!1376310 (choose!23468 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376064)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1167884 (not (isEmpty!24918 rules!2768))))

(assert (=> d!1167884 (= (lemmaLexWithSmallerInputCannotProduceSameResults!126 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376064)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1376310)))

(declare-fun bs!586508 () Bool)

(assert (= bs!586508 d!1167884))

(assert (=> bs!586508 m!4504115))

(declare-fun m!4504819 () Bool)

(assert (=> bs!586508 m!4504819))

(assert (=> bs!586508 m!4504103))

(assert (=> b!3936346 d!1167884))

(declare-fun b!3936809 () Bool)

(declare-fun e!2435532 () Bool)

(assert (=> b!3936809 (= e!2435532 (inv!15 (value!206625 (h!47205 prefixTokens!80))))))

(declare-fun b!3936810 () Bool)

(declare-fun res!1593031 () Bool)

(assert (=> b!3936810 (=> res!1593031 e!2435532)))

(assert (=> b!3936810 (= res!1593031 (not ((_ is IntegerValue!20270) (value!206625 (h!47205 prefixTokens!80)))))))

(declare-fun e!2435530 () Bool)

(assert (=> b!3936810 (= e!2435530 e!2435532)))

(declare-fun b!3936811 () Bool)

(declare-fun e!2435531 () Bool)

(assert (=> b!3936811 (= e!2435531 e!2435530)))

(declare-fun c!684106 () Bool)

(assert (=> b!3936811 (= c!684106 ((_ is IntegerValue!20269) (value!206625 (h!47205 prefixTokens!80))))))

(declare-fun b!3936812 () Bool)

(assert (=> b!3936812 (= e!2435531 (inv!16 (value!206625 (h!47205 prefixTokens!80))))))

(declare-fun b!3936813 () Bool)

(assert (=> b!3936813 (= e!2435530 (inv!17 (value!206625 (h!47205 prefixTokens!80))))))

(declare-fun d!1167890 () Bool)

(declare-fun c!684107 () Bool)

(assert (=> d!1167890 (= c!684107 ((_ is IntegerValue!20268) (value!206625 (h!47205 prefixTokens!80))))))

(assert (=> d!1167890 (= (inv!21 (value!206625 (h!47205 prefixTokens!80))) e!2435531)))

(assert (= (and d!1167890 c!684107) b!3936812))

(assert (= (and d!1167890 (not c!684107)) b!3936811))

(assert (= (and b!3936811 c!684106) b!3936813))

(assert (= (and b!3936811 (not c!684106)) b!3936810))

(assert (= (and b!3936810 (not res!1593031)) b!3936809))

(declare-fun m!4504821 () Bool)

(assert (=> b!3936809 m!4504821))

(declare-fun m!4504823 () Bool)

(assert (=> b!3936812 m!4504823))

(declare-fun m!4504825 () Bool)

(assert (=> b!3936813 m!4504825))

(assert (=> b!3936388 d!1167890))

(declare-fun b!3936814 () Bool)

(declare-fun e!2435534 () Bool)

(declare-fun e!2435533 () Bool)

(assert (=> b!3936814 (= e!2435534 e!2435533)))

(declare-fun res!1593032 () Bool)

(declare-fun lt!1376312 () tuple2!41066)

(assert (=> b!3936814 (= res!1593032 (< (size!31349 (_2!23667 lt!1376312)) (size!31349 lt!1376066)))))

(assert (=> b!3936814 (=> (not res!1593032) (not e!2435533))))

(declare-fun b!3936815 () Bool)

(declare-fun e!2435535 () tuple2!41066)

(assert (=> b!3936815 (= e!2435535 (tuple2!41067 Nil!41785 lt!1376066))))

(declare-fun b!3936816 () Bool)

(assert (=> b!3936816 (= e!2435534 (= (_2!23667 lt!1376312) lt!1376066))))

(declare-fun b!3936817 () Bool)

(declare-fun lt!1376311 () Option!8946)

(declare-fun lt!1376313 () tuple2!41066)

(assert (=> b!3936817 (= e!2435535 (tuple2!41067 (Cons!41785 (_1!23668 (v!39275 lt!1376311)) (_1!23667 lt!1376313)) (_2!23667 lt!1376313)))))

(assert (=> b!3936817 (= lt!1376313 (lexList!1883 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376311))))))

(declare-fun b!3936818 () Bool)

(assert (=> b!3936818 (= e!2435533 (not (isEmpty!24917 (_1!23667 lt!1376312))))))

(declare-fun d!1167892 () Bool)

(assert (=> d!1167892 e!2435534))

(declare-fun c!684109 () Bool)

(assert (=> d!1167892 (= c!684109 (> (size!31351 (_1!23667 lt!1376312)) 0))))

(assert (=> d!1167892 (= lt!1376312 e!2435535)))

(declare-fun c!684108 () Bool)

(assert (=> d!1167892 (= c!684108 ((_ is Some!8945) lt!1376311))))

(assert (=> d!1167892 (= lt!1376311 (maxPrefix!3419 thiss!20629 rules!2768 lt!1376066))))

(assert (=> d!1167892 (= (lexList!1883 thiss!20629 rules!2768 lt!1376066) lt!1376312)))

(assert (= (and d!1167892 c!684108) b!3936817))

(assert (= (and d!1167892 (not c!684108)) b!3936815))

(assert (= (and d!1167892 c!684109) b!3936814))

(assert (= (and d!1167892 (not c!684109)) b!3936816))

(assert (= (and b!3936814 res!1593032) b!3936818))

(declare-fun m!4504827 () Bool)

(assert (=> b!3936814 m!4504827))

(assert (=> b!3936814 m!4504005))

(declare-fun m!4504829 () Bool)

(assert (=> b!3936817 m!4504829))

(declare-fun m!4504831 () Bool)

(assert (=> b!3936818 m!4504831))

(declare-fun m!4504833 () Bool)

(assert (=> d!1167892 m!4504833))

(assert (=> d!1167892 m!4504069))

(assert (=> b!3936367 d!1167892))

(declare-fun b!3936821 () Bool)

(declare-fun res!1593034 () Bool)

(declare-fun e!2435537 () Bool)

(assert (=> b!3936821 (=> (not res!1593034) (not e!2435537))))

(declare-fun lt!1376314 () List!41909)

(assert (=> b!3936821 (= res!1593034 (= (size!31351 lt!1376314) (+ (size!31351 prefixTokens!80) (size!31351 suffixTokens!72))))))

(declare-fun b!3936820 () Bool)

(declare-fun e!2435536 () List!41909)

(assert (=> b!3936820 (= e!2435536 (Cons!41785 (h!47205 prefixTokens!80) (++!10809 (t!326392 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3936822 () Bool)

(assert (=> b!3936822 (= e!2435537 (or (not (= suffixTokens!72 Nil!41785)) (= lt!1376314 prefixTokens!80)))))

(declare-fun b!3936819 () Bool)

(assert (=> b!3936819 (= e!2435536 suffixTokens!72)))

(declare-fun d!1167894 () Bool)

(assert (=> d!1167894 e!2435537))

(declare-fun res!1593033 () Bool)

(assert (=> d!1167894 (=> (not res!1593033) (not e!2435537))))

(assert (=> d!1167894 (= res!1593033 (= (content!6303 lt!1376314) ((_ map or) (content!6303 prefixTokens!80) (content!6303 suffixTokens!72))))))

(assert (=> d!1167894 (= lt!1376314 e!2435536)))

(declare-fun c!684110 () Bool)

(assert (=> d!1167894 (= c!684110 ((_ is Nil!41785) prefixTokens!80))))

(assert (=> d!1167894 (= (++!10809 prefixTokens!80 suffixTokens!72) lt!1376314)))

(assert (= (and d!1167894 c!684110) b!3936819))

(assert (= (and d!1167894 (not c!684110)) b!3936820))

(assert (= (and d!1167894 res!1593033) b!3936821))

(assert (= (and b!3936821 res!1593034) b!3936822))

(declare-fun m!4504835 () Bool)

(assert (=> b!3936821 m!4504835))

(declare-fun m!4504837 () Bool)

(assert (=> b!3936821 m!4504837))

(assert (=> b!3936821 m!4504429))

(declare-fun m!4504839 () Bool)

(assert (=> b!3936820 m!4504839))

(declare-fun m!4504841 () Bool)

(assert (=> d!1167894 m!4504841))

(declare-fun m!4504843 () Bool)

(assert (=> d!1167894 m!4504843))

(assert (=> d!1167894 m!4504437))

(assert (=> b!3936367 d!1167894))

(declare-fun d!1167896 () Bool)

(declare-fun e!2435539 () Bool)

(assert (=> d!1167896 e!2435539))

(declare-fun res!1593035 () Bool)

(assert (=> d!1167896 (=> (not res!1593035) (not e!2435539))))

(declare-fun lt!1376315 () List!41908)

(assert (=> d!1167896 (= res!1593035 (= (content!6302 lt!1376315) ((_ map or) (content!6302 prefix!426) (content!6302 suffix!1176))))))

(declare-fun e!2435538 () List!41908)

(assert (=> d!1167896 (= lt!1376315 e!2435538)))

(declare-fun c!684111 () Bool)

(assert (=> d!1167896 (= c!684111 ((_ is Nil!41784) prefix!426))))

(assert (=> d!1167896 (= (++!10810 prefix!426 suffix!1176) lt!1376315)))

(declare-fun b!3936824 () Bool)

(assert (=> b!3936824 (= e!2435538 (Cons!41784 (h!47204 prefix!426) (++!10810 (t!326391 prefix!426) suffix!1176)))))

(declare-fun b!3936823 () Bool)

(assert (=> b!3936823 (= e!2435538 suffix!1176)))

(declare-fun b!3936826 () Bool)

(assert (=> b!3936826 (= e!2435539 (or (not (= suffix!1176 Nil!41784)) (= lt!1376315 prefix!426)))))

(declare-fun b!3936825 () Bool)

(declare-fun res!1593036 () Bool)

(assert (=> b!3936825 (=> (not res!1593036) (not e!2435539))))

(assert (=> b!3936825 (= res!1593036 (= (size!31349 lt!1376315) (+ (size!31349 prefix!426) (size!31349 suffix!1176))))))

(assert (= (and d!1167896 c!684111) b!3936823))

(assert (= (and d!1167896 (not c!684111)) b!3936824))

(assert (= (and d!1167896 res!1593035) b!3936825))

(assert (= (and b!3936825 res!1593036) b!3936826))

(declare-fun m!4504845 () Bool)

(assert (=> d!1167896 m!4504845))

(declare-fun m!4504847 () Bool)

(assert (=> d!1167896 m!4504847))

(assert (=> d!1167896 m!4504617))

(declare-fun m!4504849 () Bool)

(assert (=> b!3936824 m!4504849))

(declare-fun m!4504851 () Bool)

(assert (=> b!3936825 m!4504851))

(assert (=> b!3936825 m!4504121))

(assert (=> b!3936825 m!4504075))

(assert (=> b!3936367 d!1167896))

(declare-fun d!1167898 () Bool)

(declare-fun e!2435541 () Bool)

(assert (=> d!1167898 e!2435541))

(declare-fun res!1593037 () Bool)

(assert (=> d!1167898 (=> (not res!1593037) (not e!2435541))))

(declare-fun lt!1376316 () List!41908)

(assert (=> d!1167898 (= res!1593037 (= (content!6302 lt!1376316) ((_ map or) (content!6302 lt!1376077) (content!6302 lt!1376085))))))

(declare-fun e!2435540 () List!41908)

(assert (=> d!1167898 (= lt!1376316 e!2435540)))

(declare-fun c!684112 () Bool)

(assert (=> d!1167898 (= c!684112 ((_ is Nil!41784) lt!1376077))))

(assert (=> d!1167898 (= (++!10810 lt!1376077 lt!1376085) lt!1376316)))

(declare-fun b!3936828 () Bool)

(assert (=> b!3936828 (= e!2435540 (Cons!41784 (h!47204 lt!1376077) (++!10810 (t!326391 lt!1376077) lt!1376085)))))

(declare-fun b!3936827 () Bool)

(assert (=> b!3936827 (= e!2435540 lt!1376085)))

(declare-fun b!3936830 () Bool)

(assert (=> b!3936830 (= e!2435541 (or (not (= lt!1376085 Nil!41784)) (= lt!1376316 lt!1376077)))))

(declare-fun b!3936829 () Bool)

(declare-fun res!1593038 () Bool)

(assert (=> b!3936829 (=> (not res!1593038) (not e!2435541))))

(assert (=> b!3936829 (= res!1593038 (= (size!31349 lt!1376316) (+ (size!31349 lt!1376077) (size!31349 lt!1376085))))))

(assert (= (and d!1167898 c!684112) b!3936827))

(assert (= (and d!1167898 (not c!684112)) b!3936828))

(assert (= (and d!1167898 res!1593037) b!3936829))

(assert (= (and b!3936829 res!1593038) b!3936830))

(declare-fun m!4504853 () Bool)

(assert (=> d!1167898 m!4504853))

(assert (=> d!1167898 m!4504223))

(assert (=> d!1167898 m!4504615))

(declare-fun m!4504855 () Bool)

(assert (=> b!3936828 m!4504855))

(declare-fun m!4504857 () Bool)

(assert (=> b!3936829 m!4504857))

(assert (=> b!3936829 m!4503995))

(assert (=> b!3936829 m!4504451))

(assert (=> b!3936347 d!1167898))

(declare-fun d!1167900 () Bool)

(declare-fun lt!1376317 () List!41908)

(assert (=> d!1167900 (= (++!10810 lt!1376077 lt!1376317) prefix!426)))

(declare-fun e!2435542 () List!41908)

(assert (=> d!1167900 (= lt!1376317 e!2435542)))

(declare-fun c!684113 () Bool)

(assert (=> d!1167900 (= c!684113 ((_ is Cons!41784) lt!1376077))))

(assert (=> d!1167900 (>= (size!31349 prefix!426) (size!31349 lt!1376077))))

(assert (=> d!1167900 (= (getSuffix!2076 prefix!426 lt!1376077) lt!1376317)))

(declare-fun b!3936831 () Bool)

(assert (=> b!3936831 (= e!2435542 (getSuffix!2076 (tail!6087 prefix!426) (t!326391 lt!1376077)))))

(declare-fun b!3936832 () Bool)

(assert (=> b!3936832 (= e!2435542 prefix!426)))

(assert (= (and d!1167900 c!684113) b!3936831))

(assert (= (and d!1167900 (not c!684113)) b!3936832))

(declare-fun m!4504859 () Bool)

(assert (=> d!1167900 m!4504859))

(assert (=> d!1167900 m!4504121))

(assert (=> d!1167900 m!4503995))

(assert (=> b!3936831 m!4504787))

(assert (=> b!3936831 m!4504787))

(declare-fun m!4504861 () Bool)

(assert (=> b!3936831 m!4504861))

(assert (=> b!3936347 d!1167900))

(declare-fun d!1167902 () Bool)

(declare-fun res!1593039 () Bool)

(declare-fun e!2435543 () Bool)

(assert (=> d!1167902 (=> (not res!1593039) (not e!2435543))))

(assert (=> d!1167902 (= res!1593039 (not (isEmpty!24916 (originalCharacters!7126 (h!47205 suffixTokens!72)))))))

(assert (=> d!1167902 (= (inv!55986 (h!47205 suffixTokens!72)) e!2435543)))

(declare-fun b!3936833 () Bool)

(declare-fun res!1593040 () Bool)

(assert (=> b!3936833 (=> (not res!1593040) (not e!2435543))))

(assert (=> b!3936833 (= res!1593040 (= (originalCharacters!7126 (h!47205 suffixTokens!72)) (list!15526 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (value!206625 (h!47205 suffixTokens!72))))))))

(declare-fun b!3936834 () Bool)

(assert (=> b!3936834 (= e!2435543 (= (size!31348 (h!47205 suffixTokens!72)) (size!31349 (originalCharacters!7126 (h!47205 suffixTokens!72)))))))

(assert (= (and d!1167902 res!1593039) b!3936833))

(assert (= (and b!3936833 res!1593040) b!3936834))

(declare-fun b_lambda!115151 () Bool)

(assert (=> (not b_lambda!115151) (not b!3936833)))

(declare-fun tb!235781 () Bool)

(declare-fun t!326419 () Bool)

(assert (=> (and b!3936373 (= (toChars!8845 (transformation!6526 (h!47206 rules!2768))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72))))) t!326419) tb!235781))

(declare-fun b!3936835 () Bool)

(declare-fun e!2435544 () Bool)

(declare-fun tp!1197886 () Bool)

(assert (=> b!3936835 (= e!2435544 (and (inv!55987 (c!684009 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (value!206625 (h!47205 suffixTokens!72))))) tp!1197886))))

(declare-fun result!285612 () Bool)

(assert (=> tb!235781 (= result!285612 (and (inv!55988 (dynLambda!17903 (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (value!206625 (h!47205 suffixTokens!72)))) e!2435544))))

(assert (= tb!235781 b!3936835))

(declare-fun m!4504863 () Bool)

(assert (=> b!3936835 m!4504863))

(declare-fun m!4504865 () Bool)

(assert (=> tb!235781 m!4504865))

(assert (=> b!3936833 t!326419))

(declare-fun b_and!300659 () Bool)

(assert (= b_and!300641 (and (=> t!326419 result!285612) b_and!300659)))

(declare-fun t!326421 () Bool)

(declare-fun tb!235783 () Bool)

(assert (=> (and b!3936369 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72))))) t!326421) tb!235783))

(declare-fun result!285614 () Bool)

(assert (= result!285614 result!285612))

(assert (=> b!3936833 t!326421))

(declare-fun b_and!300661 () Bool)

(assert (= b_and!300643 (and (=> t!326421 result!285614) b_and!300661)))

(declare-fun tb!235785 () Bool)

(declare-fun t!326423 () Bool)

(assert (=> (and b!3936370 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72))))) t!326423) tb!235785))

(declare-fun result!285616 () Bool)

(assert (= result!285616 result!285612))

(assert (=> b!3936833 t!326423))

(declare-fun b_and!300663 () Bool)

(assert (= b_and!300645 (and (=> t!326423 result!285616) b_and!300663)))

(declare-fun m!4504867 () Bool)

(assert (=> d!1167902 m!4504867))

(declare-fun m!4504869 () Bool)

(assert (=> b!3936833 m!4504869))

(assert (=> b!3936833 m!4504869))

(declare-fun m!4504871 () Bool)

(assert (=> b!3936833 m!4504871))

(declare-fun m!4504873 () Bool)

(assert (=> b!3936834 m!4504873))

(assert (=> b!3936389 d!1167902))

(declare-fun d!1167904 () Bool)

(assert (=> d!1167904 (and (= lt!1376077 lt!1376077) (= (_2!23668 (v!39275 lt!1376064)) (_2!23668 lt!1376087)))))

(declare-fun lt!1376320 () Unit!60277)

(declare-fun choose!23471 (List!41908 List!41908 List!41908 List!41908) Unit!60277)

(assert (=> d!1167904 (= lt!1376320 (choose!23471 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 (_2!23668 lt!1376087)))))

(assert (=> d!1167904 (= (++!10810 lt!1376077 (_2!23668 (v!39275 lt!1376064))) (++!10810 lt!1376077 (_2!23668 lt!1376087)))))

(assert (=> d!1167904 (= (lemmaConcatSameAndSameSizesThenSameLists!574 lt!1376077 (_2!23668 (v!39275 lt!1376064)) lt!1376077 (_2!23668 lt!1376087)) lt!1376320)))

(declare-fun bs!586509 () Bool)

(assert (= bs!586509 d!1167904))

(declare-fun m!4504875 () Bool)

(assert (=> bs!586509 m!4504875))

(assert (=> bs!586509 m!4503987))

(declare-fun m!4504877 () Bool)

(assert (=> bs!586509 m!4504877))

(assert (=> b!3936368 d!1167904))

(declare-fun d!1167906 () Bool)

(assert (=> d!1167906 (not (= (lexList!1883 thiss!20629 rules!2768 (_2!23668 lt!1376087)) (tuple2!41067 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1376321 () Unit!60277)

(assert (=> d!1167906 (= lt!1376321 (choose!23468 thiss!20629 rules!2768 suffix!1176 (_2!23668 lt!1376087) suffixTokens!72 suffixResult!91))))

(assert (=> d!1167906 (not (isEmpty!24918 rules!2768))))

(assert (=> d!1167906 (= (lemmaLexWithSmallerInputCannotProduceSameResults!126 thiss!20629 rules!2768 suffix!1176 (_2!23668 lt!1376087) suffixTokens!72 suffixResult!91) lt!1376321)))

(declare-fun bs!586510 () Bool)

(assert (= bs!586510 d!1167906))

(assert (=> bs!586510 m!4504067))

(declare-fun m!4504879 () Bool)

(assert (=> bs!586510 m!4504879))

(assert (=> bs!586510 m!4504103))

(assert (=> b!3936368 d!1167906))

(declare-fun d!1167908 () Bool)

(declare-fun res!1593043 () Bool)

(declare-fun e!2435549 () Bool)

(assert (=> d!1167908 (=> (not res!1593043) (not e!2435549))))

(declare-fun rulesValid!2541 (LexerInterface!6115 List!41910) Bool)

(assert (=> d!1167908 (= res!1593043 (rulesValid!2541 thiss!20629 rules!2768))))

(assert (=> d!1167908 (= (rulesInvariant!5458 thiss!20629 rules!2768) e!2435549)))

(declare-fun b!3936842 () Bool)

(declare-datatypes ((List!41912 0))(
  ( (Nil!41788) (Cons!41788 (h!47208 String!47498) (t!326491 List!41912)) )
))
(declare-fun noDuplicateTag!2542 (LexerInterface!6115 List!41910 List!41912) Bool)

(assert (=> b!3936842 (= e!2435549 (noDuplicateTag!2542 thiss!20629 rules!2768 Nil!41788))))

(assert (= (and d!1167908 res!1593043) b!3936842))

(declare-fun m!4504881 () Bool)

(assert (=> d!1167908 m!4504881))

(declare-fun m!4504883 () Bool)

(assert (=> b!3936842 m!4504883))

(assert (=> b!3936343 d!1167908))

(declare-fun d!1167910 () Bool)

(assert (=> d!1167910 (= (isEmpty!24918 rules!2768) ((_ is Nil!41786) rules!2768))))

(assert (=> b!3936385 d!1167910))

(declare-fun b!3936843 () Bool)

(declare-fun e!2435551 () Bool)

(declare-fun e!2435550 () Bool)

(assert (=> b!3936843 (= e!2435551 e!2435550)))

(declare-fun res!1593044 () Bool)

(declare-fun lt!1376333 () tuple2!41066)

(assert (=> b!3936843 (= res!1593044 (< (size!31349 (_2!23667 lt!1376333)) (size!31349 (_2!23668 lt!1376087))))))

(assert (=> b!3936843 (=> (not res!1593044) (not e!2435550))))

(declare-fun b!3936844 () Bool)

(declare-fun e!2435552 () tuple2!41066)

(assert (=> b!3936844 (= e!2435552 (tuple2!41067 Nil!41785 (_2!23668 lt!1376087)))))

(declare-fun b!3936845 () Bool)

(assert (=> b!3936845 (= e!2435551 (= (_2!23667 lt!1376333) (_2!23668 lt!1376087)))))

(declare-fun b!3936846 () Bool)

(declare-fun lt!1376332 () Option!8946)

(declare-fun lt!1376334 () tuple2!41066)

(assert (=> b!3936846 (= e!2435552 (tuple2!41067 (Cons!41785 (_1!23668 (v!39275 lt!1376332)) (_1!23667 lt!1376334)) (_2!23667 lt!1376334)))))

(assert (=> b!3936846 (= lt!1376334 (lexList!1883 thiss!20629 rules!2768 (_2!23668 (v!39275 lt!1376332))))))

(declare-fun b!3936847 () Bool)

(assert (=> b!3936847 (= e!2435550 (not (isEmpty!24917 (_1!23667 lt!1376333))))))

(declare-fun d!1167912 () Bool)

(assert (=> d!1167912 e!2435551))

(declare-fun c!684117 () Bool)

(assert (=> d!1167912 (= c!684117 (> (size!31351 (_1!23667 lt!1376333)) 0))))

(assert (=> d!1167912 (= lt!1376333 e!2435552)))

(declare-fun c!684116 () Bool)

(assert (=> d!1167912 (= c!684116 ((_ is Some!8945) lt!1376332))))

(assert (=> d!1167912 (= lt!1376332 (maxPrefix!3419 thiss!20629 rules!2768 (_2!23668 lt!1376087)))))

(assert (=> d!1167912 (= (lexList!1883 thiss!20629 rules!2768 (_2!23668 lt!1376087)) lt!1376333)))

(assert (= (and d!1167912 c!684116) b!3936846))

(assert (= (and d!1167912 (not c!684116)) b!3936844))

(assert (= (and d!1167912 c!684117) b!3936843))

(assert (= (and d!1167912 (not c!684117)) b!3936845))

(assert (= (and b!3936843 res!1593044) b!3936847))

(declare-fun m!4504885 () Bool)

(assert (=> b!3936843 m!4504885))

(assert (=> b!3936843 m!4504007))

(declare-fun m!4504887 () Bool)

(assert (=> b!3936846 m!4504887))

(declare-fun m!4504889 () Bool)

(assert (=> b!3936847 m!4504889))

(declare-fun m!4504891 () Bool)

(assert (=> d!1167912 m!4504891))

(declare-fun m!4504893 () Bool)

(assert (=> d!1167912 m!4504893))

(assert (=> bm!284995 d!1167912))

(declare-fun d!1167914 () Bool)

(assert (=> d!1167914 (= (maxPrefixOneRule!2489 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))) lt!1376066) (Some!8945 (tuple2!41069 (Token!12191 (apply!9765 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) (seqFromList!4793 lt!1376077)) (rule!9478 (_1!23668 (v!39275 lt!1376064))) (size!31349 lt!1376077) lt!1376077) (_2!23668 (v!39275 lt!1376064)))))))

(declare-fun lt!1376348 () Unit!60277)

(declare-fun choose!23472 (LexerInterface!6115 List!41910 List!41908 List!41908 List!41908 Rule!12852) Unit!60277)

(assert (=> d!1167914 (= lt!1376348 (choose!23472 thiss!20629 rules!2768 lt!1376077 lt!1376066 (_2!23668 (v!39275 lt!1376064)) (rule!9478 (_1!23668 (v!39275 lt!1376064)))))))

(assert (=> d!1167914 (not (isEmpty!24918 rules!2768))))

(assert (=> d!1167914 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1357 thiss!20629 rules!2768 lt!1376077 lt!1376066 (_2!23668 (v!39275 lt!1376064)) (rule!9478 (_1!23668 (v!39275 lt!1376064)))) lt!1376348)))

(declare-fun bs!586513 () Bool)

(assert (= bs!586513 d!1167914))

(declare-fun m!4504947 () Bool)

(assert (=> bs!586513 m!4504947))

(assert (=> bs!586513 m!4503999))

(assert (=> bs!586513 m!4504103))

(assert (=> bs!586513 m!4503985))

(assert (=> bs!586513 m!4503995))

(assert (=> bs!586513 m!4503985))

(assert (=> bs!586513 m!4503993))

(assert (=> b!3936344 d!1167914))

(declare-fun b!3936998 () Bool)

(declare-fun e!2435649 () Option!8946)

(declare-datatypes ((tuple2!41072 0))(
  ( (tuple2!41073 (_1!23670 List!41908) (_2!23670 List!41908)) )
))
(declare-fun lt!1376383 () tuple2!41072)

(declare-fun size!31353 (BalanceConc!25068) Int)

(assert (=> b!3936998 (= e!2435649 (Some!8945 (tuple2!41069 (Token!12191 (apply!9765 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) (seqFromList!4793 (_1!23670 lt!1376383))) (rule!9478 (_1!23668 (v!39275 lt!1376064))) (size!31353 (seqFromList!4793 (_1!23670 lt!1376383))) (_1!23670 lt!1376383)) (_2!23670 lt!1376383))))))

(declare-fun lt!1376381 () Unit!60277)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1241 (Regex!11431 List!41908) Unit!60277)

(assert (=> b!3936998 (= lt!1376381 (longestMatchIsAcceptedByMatchOrIsEmpty!1241 (regex!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) lt!1376066))))

(declare-fun res!1593113 () Bool)

(declare-fun findLongestMatchInner!1268 (Regex!11431 List!41908 Int List!41908 List!41908 Int) tuple2!41072)

(assert (=> b!3936998 (= res!1593113 (isEmpty!24916 (_1!23670 (findLongestMatchInner!1268 (regex!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) Nil!41784 (size!31349 Nil!41784) lt!1376066 lt!1376066 (size!31349 lt!1376066)))))))

(declare-fun e!2435648 () Bool)

(assert (=> b!3936998 (=> res!1593113 e!2435648)))

(assert (=> b!3936998 e!2435648))

(declare-fun lt!1376382 () Unit!60277)

(assert (=> b!3936998 (= lt!1376382 lt!1376381)))

(declare-fun lt!1376385 () Unit!60277)

(declare-fun lemmaSemiInverse!1774 (TokenValueInjection!12940 BalanceConc!25068) Unit!60277)

(assert (=> b!3936998 (= lt!1376385 (lemmaSemiInverse!1774 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) (seqFromList!4793 (_1!23670 lt!1376383))))))

(declare-fun b!3936999 () Bool)

(declare-fun e!2435650 () Bool)

(declare-fun lt!1376384 () Option!8946)

(assert (=> b!3936999 (= e!2435650 (= (size!31348 (_1!23668 (get!13809 lt!1376384))) (size!31349 (originalCharacters!7126 (_1!23668 (get!13809 lt!1376384))))))))

(declare-fun b!3937000 () Bool)

(declare-fun res!1593110 () Bool)

(assert (=> b!3937000 (=> (not res!1593110) (not e!2435650))))

(assert (=> b!3937000 (= res!1593110 (= (rule!9478 (_1!23668 (get!13809 lt!1376384))) (rule!9478 (_1!23668 (v!39275 lt!1376064)))))))

(declare-fun b!3937001 () Bool)

(declare-fun e!2435647 () Bool)

(assert (=> b!3937001 (= e!2435647 e!2435650)))

(declare-fun res!1593109 () Bool)

(assert (=> b!3937001 (=> (not res!1593109) (not e!2435650))))

(assert (=> b!3937001 (= res!1593109 (matchR!5488 (regex!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) (list!15526 (charsOf!4350 (_1!23668 (get!13809 lt!1376384))))))))

(declare-fun b!3937002 () Bool)

(assert (=> b!3937002 (= e!2435649 None!8945)))

(declare-fun b!3937003 () Bool)

(declare-fun res!1593114 () Bool)

(assert (=> b!3937003 (=> (not res!1593114) (not e!2435650))))

(assert (=> b!3937003 (= res!1593114 (< (size!31349 (_2!23668 (get!13809 lt!1376384))) (size!31349 lt!1376066)))))

(declare-fun d!1167926 () Bool)

(assert (=> d!1167926 e!2435647))

(declare-fun res!1593112 () Bool)

(assert (=> d!1167926 (=> res!1593112 e!2435647)))

(assert (=> d!1167926 (= res!1593112 (isEmpty!24920 lt!1376384))))

(assert (=> d!1167926 (= lt!1376384 e!2435649)))

(declare-fun c!684129 () Bool)

(assert (=> d!1167926 (= c!684129 (isEmpty!24916 (_1!23670 lt!1376383)))))

(declare-fun findLongestMatch!1181 (Regex!11431 List!41908) tuple2!41072)

(assert (=> d!1167926 (= lt!1376383 (findLongestMatch!1181 (regex!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) lt!1376066))))

(assert (=> d!1167926 (ruleValid!2474 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))))))

(assert (=> d!1167926 (= (maxPrefixOneRule!2489 thiss!20629 (rule!9478 (_1!23668 (v!39275 lt!1376064))) lt!1376066) lt!1376384)))

(declare-fun b!3937004 () Bool)

(declare-fun res!1593111 () Bool)

(assert (=> b!3937004 (=> (not res!1593111) (not e!2435650))))

(assert (=> b!3937004 (= res!1593111 (= (value!206625 (_1!23668 (get!13809 lt!1376384))) (apply!9765 (transformation!6526 (rule!9478 (_1!23668 (get!13809 lt!1376384)))) (seqFromList!4793 (originalCharacters!7126 (_1!23668 (get!13809 lt!1376384)))))))))

(declare-fun b!3937005 () Bool)

(declare-fun res!1593115 () Bool)

(assert (=> b!3937005 (=> (not res!1593115) (not e!2435650))))

(assert (=> b!3937005 (= res!1593115 (= (++!10810 (list!15526 (charsOf!4350 (_1!23668 (get!13809 lt!1376384)))) (_2!23668 (get!13809 lt!1376384))) lt!1376066))))

(declare-fun b!3937006 () Bool)

(assert (=> b!3937006 (= e!2435648 (matchR!5488 (regex!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) (_1!23670 (findLongestMatchInner!1268 (regex!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))) Nil!41784 (size!31349 Nil!41784) lt!1376066 lt!1376066 (size!31349 lt!1376066)))))))

(assert (= (and d!1167926 c!684129) b!3937002))

(assert (= (and d!1167926 (not c!684129)) b!3936998))

(assert (= (and b!3936998 (not res!1593113)) b!3937006))

(assert (= (and d!1167926 (not res!1593112)) b!3937001))

(assert (= (and b!3937001 res!1593109) b!3937005))

(assert (= (and b!3937005 res!1593115) b!3937003))

(assert (= (and b!3937003 res!1593114) b!3937000))

(assert (= (and b!3937000 res!1593110) b!3937004))

(assert (= (and b!3937004 res!1593111) b!3936999))

(declare-fun m!4505077 () Bool)

(assert (=> b!3936998 m!4505077))

(assert (=> b!3936998 m!4504053))

(assert (=> b!3936998 m!4504005))

(declare-fun m!4505079 () Bool)

(assert (=> b!3936998 m!4505079))

(declare-fun m!4505081 () Bool)

(assert (=> b!3936998 m!4505081))

(assert (=> b!3936998 m!4504053))

(declare-fun m!4505083 () Bool)

(assert (=> b!3936998 m!4505083))

(assert (=> b!3936998 m!4505081))

(declare-fun m!4505085 () Bool)

(assert (=> b!3936998 m!4505085))

(assert (=> b!3936998 m!4505081))

(declare-fun m!4505087 () Bool)

(assert (=> b!3936998 m!4505087))

(assert (=> b!3936998 m!4505081))

(declare-fun m!4505089 () Bool)

(assert (=> b!3936998 m!4505089))

(assert (=> b!3936998 m!4504005))

(declare-fun m!4505091 () Bool)

(assert (=> b!3937005 m!4505091))

(declare-fun m!4505093 () Bool)

(assert (=> b!3937005 m!4505093))

(assert (=> b!3937005 m!4505093))

(declare-fun m!4505095 () Bool)

(assert (=> b!3937005 m!4505095))

(assert (=> b!3937005 m!4505095))

(declare-fun m!4505097 () Bool)

(assert (=> b!3937005 m!4505097))

(assert (=> b!3937003 m!4505091))

(declare-fun m!4505099 () Bool)

(assert (=> b!3937003 m!4505099))

(assert (=> b!3937003 m!4504005))

(assert (=> b!3937006 m!4504053))

(assert (=> b!3937006 m!4504005))

(assert (=> b!3937006 m!4504053))

(assert (=> b!3937006 m!4504005))

(assert (=> b!3937006 m!4505079))

(declare-fun m!4505101 () Bool)

(assert (=> b!3937006 m!4505101))

(assert (=> b!3936999 m!4505091))

(declare-fun m!4505103 () Bool)

(assert (=> b!3936999 m!4505103))

(assert (=> b!3937001 m!4505091))

(assert (=> b!3937001 m!4505093))

(assert (=> b!3937001 m!4505093))

(assert (=> b!3937001 m!4505095))

(assert (=> b!3937001 m!4505095))

(declare-fun m!4505105 () Bool)

(assert (=> b!3937001 m!4505105))

(assert (=> b!3937004 m!4505091))

(declare-fun m!4505107 () Bool)

(assert (=> b!3937004 m!4505107))

(assert (=> b!3937004 m!4505107))

(declare-fun m!4505109 () Bool)

(assert (=> b!3937004 m!4505109))

(assert (=> b!3937000 m!4505091))

(declare-fun m!4505111 () Bool)

(assert (=> d!1167926 m!4505111))

(declare-fun m!4505113 () Bool)

(assert (=> d!1167926 m!4505113))

(declare-fun m!4505115 () Bool)

(assert (=> d!1167926 m!4505115))

(assert (=> d!1167926 m!4503975))

(assert (=> b!3936344 d!1167926))

(declare-fun d!1167968 () Bool)

(declare-fun lt!1376386 () Int)

(assert (=> d!1167968 (>= lt!1376386 0)))

(declare-fun e!2435651 () Int)

(assert (=> d!1167968 (= lt!1376386 e!2435651)))

(declare-fun c!684130 () Bool)

(assert (=> d!1167968 (= c!684130 ((_ is Nil!41784) (_2!23668 lt!1376087)))))

(assert (=> d!1167968 (= (size!31349 (_2!23668 lt!1376087)) lt!1376386)))

(declare-fun b!3937007 () Bool)

(assert (=> b!3937007 (= e!2435651 0)))

(declare-fun b!3937008 () Bool)

(assert (=> b!3937008 (= e!2435651 (+ 1 (size!31349 (t!326391 (_2!23668 lt!1376087)))))))

(assert (= (and d!1167968 c!684130) b!3937007))

(assert (= (and d!1167968 (not c!684130)) b!3937008))

(declare-fun m!4505117 () Bool)

(assert (=> b!3937008 m!4505117))

(assert (=> b!3936344 d!1167968))

(declare-fun d!1167970 () Bool)

(declare-fun lt!1376387 () Int)

(assert (=> d!1167970 (>= lt!1376387 0)))

(declare-fun e!2435652 () Int)

(assert (=> d!1167970 (= lt!1376387 e!2435652)))

(declare-fun c!684131 () Bool)

(assert (=> d!1167970 (= c!684131 ((_ is Nil!41784) lt!1376066))))

(assert (=> d!1167970 (= (size!31349 lt!1376066) lt!1376387)))

(declare-fun b!3937009 () Bool)

(assert (=> b!3937009 (= e!2435652 0)))

(declare-fun b!3937010 () Bool)

(assert (=> b!3937010 (= e!2435652 (+ 1 (size!31349 (t!326391 lt!1376066))))))

(assert (= (and d!1167970 c!684131) b!3937009))

(assert (= (and d!1167970 (not c!684131)) b!3937010))

(declare-fun m!4505119 () Bool)

(assert (=> b!3937010 m!4505119))

(assert (=> b!3936344 d!1167970))

(declare-fun d!1167972 () Bool)

(assert (=> d!1167972 (= (get!13809 lt!1376064) (v!39275 lt!1376064))))

(assert (=> b!3936344 d!1167972))

(declare-fun d!1167974 () Bool)

(declare-fun e!2435654 () Bool)

(assert (=> d!1167974 e!2435654))

(declare-fun res!1593116 () Bool)

(assert (=> d!1167974 (=> (not res!1593116) (not e!2435654))))

(declare-fun lt!1376388 () List!41908)

(assert (=> d!1167974 (= res!1593116 (= (content!6302 lt!1376388) ((_ map or) (content!6302 lt!1376074) (content!6302 suffix!1176))))))

(declare-fun e!2435653 () List!41908)

(assert (=> d!1167974 (= lt!1376388 e!2435653)))

(declare-fun c!684132 () Bool)

(assert (=> d!1167974 (= c!684132 ((_ is Nil!41784) lt!1376074))))

(assert (=> d!1167974 (= (++!10810 lt!1376074 suffix!1176) lt!1376388)))

(declare-fun b!3937012 () Bool)

(assert (=> b!3937012 (= e!2435653 (Cons!41784 (h!47204 lt!1376074) (++!10810 (t!326391 lt!1376074) suffix!1176)))))

(declare-fun b!3937011 () Bool)

(assert (=> b!3937011 (= e!2435653 suffix!1176)))

(declare-fun b!3937014 () Bool)

(assert (=> b!3937014 (= e!2435654 (or (not (= suffix!1176 Nil!41784)) (= lt!1376388 lt!1376074)))))

(declare-fun b!3937013 () Bool)

(declare-fun res!1593117 () Bool)

(assert (=> b!3937013 (=> (not res!1593117) (not e!2435654))))

(assert (=> b!3937013 (= res!1593117 (= (size!31349 lt!1376388) (+ (size!31349 lt!1376074) (size!31349 suffix!1176))))))

(assert (= (and d!1167974 c!684132) b!3937011))

(assert (= (and d!1167974 (not c!684132)) b!3937012))

(assert (= (and d!1167974 res!1593116) b!3937013))

(assert (= (and b!3937013 res!1593117) b!3937014))

(declare-fun m!4505121 () Bool)

(assert (=> d!1167974 m!4505121))

(declare-fun m!4505123 () Bool)

(assert (=> d!1167974 m!4505123))

(assert (=> d!1167974 m!4504617))

(declare-fun m!4505125 () Bool)

(assert (=> b!3937012 m!4505125))

(declare-fun m!4505127 () Bool)

(assert (=> b!3937013 m!4505127))

(declare-fun m!4505129 () Bool)

(assert (=> b!3937013 m!4505129))

(assert (=> b!3937013 m!4504075))

(assert (=> b!3936365 d!1167974))

(assert (=> b!3936345 d!1167868))

(assert (=> b!3936345 d!1167870))

(declare-fun d!1167976 () Bool)

(declare-fun lt!1376389 () Int)

(assert (=> d!1167976 (>= lt!1376389 0)))

(declare-fun e!2435655 () Int)

(assert (=> d!1167976 (= lt!1376389 e!2435655)))

(declare-fun c!684133 () Bool)

(assert (=> d!1167976 (= c!684133 ((_ is Nil!41784) prefix!426))))

(assert (=> d!1167976 (= (size!31349 prefix!426) lt!1376389)))

(declare-fun b!3937015 () Bool)

(assert (=> b!3937015 (= e!2435655 0)))

(declare-fun b!3937016 () Bool)

(assert (=> b!3937016 (= e!2435655 (+ 1 (size!31349 (t!326391 prefix!426))))))

(assert (= (and d!1167976 c!684133) b!3937015))

(assert (= (and d!1167976 (not c!684133)) b!3937016))

(declare-fun m!4505131 () Bool)

(assert (=> b!3937016 m!4505131))

(assert (=> b!3936345 d!1167976))

(declare-fun b!3937020 () Bool)

(declare-fun e!2435656 () Bool)

(assert (=> b!3937020 (= e!2435656 (>= (size!31349 prefix!426) (size!31349 lt!1376077)))))

(declare-fun b!3937019 () Bool)

(declare-fun e!2435657 () Bool)

(assert (=> b!3937019 (= e!2435657 (isPrefix!3621 (tail!6087 lt!1376077) (tail!6087 prefix!426)))))

(declare-fun d!1167978 () Bool)

(assert (=> d!1167978 e!2435656))

(declare-fun res!1593121 () Bool)

(assert (=> d!1167978 (=> res!1593121 e!2435656)))

(declare-fun lt!1376390 () Bool)

(assert (=> d!1167978 (= res!1593121 (not lt!1376390))))

(declare-fun e!2435658 () Bool)

(assert (=> d!1167978 (= lt!1376390 e!2435658)))

(declare-fun res!1593119 () Bool)

(assert (=> d!1167978 (=> res!1593119 e!2435658)))

(assert (=> d!1167978 (= res!1593119 ((_ is Nil!41784) lt!1376077))))

(assert (=> d!1167978 (= (isPrefix!3621 lt!1376077 prefix!426) lt!1376390)))

(declare-fun b!3937018 () Bool)

(declare-fun res!1593120 () Bool)

(assert (=> b!3937018 (=> (not res!1593120) (not e!2435657))))

(assert (=> b!3937018 (= res!1593120 (= (head!8361 lt!1376077) (head!8361 prefix!426)))))

(declare-fun b!3937017 () Bool)

(assert (=> b!3937017 (= e!2435658 e!2435657)))

(declare-fun res!1593118 () Bool)

(assert (=> b!3937017 (=> (not res!1593118) (not e!2435657))))

(assert (=> b!3937017 (= res!1593118 (not ((_ is Nil!41784) prefix!426)))))

(assert (= (and d!1167978 (not res!1593119)) b!3937017))

(assert (= (and b!3937017 res!1593118) b!3937018))

(assert (= (and b!3937018 res!1593120) b!3937019))

(assert (= (and d!1167978 (not res!1593121)) b!3937020))

(assert (=> b!3937020 m!4504121))

(assert (=> b!3937020 m!4503995))

(assert (=> b!3937019 m!4504357))

(assert (=> b!3937019 m!4504787))

(assert (=> b!3937019 m!4504357))

(assert (=> b!3937019 m!4504787))

(declare-fun m!4505133 () Bool)

(assert (=> b!3937019 m!4505133))

(assert (=> b!3937018 m!4504363))

(assert (=> b!3937018 m!4504791))

(assert (=> b!3936345 d!1167978))

(declare-fun d!1167980 () Bool)

(assert (=> d!1167980 (isPrefix!3621 lt!1376077 prefix!426)))

(declare-fun lt!1376393 () Unit!60277)

(declare-fun choose!23473 (List!41908 List!41908 List!41908) Unit!60277)

(assert (=> d!1167980 (= lt!1376393 (choose!23473 prefix!426 lt!1376077 lt!1376066))))

(assert (=> d!1167980 (isPrefix!3621 prefix!426 lt!1376066)))

(assert (=> d!1167980 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!299 prefix!426 lt!1376077 lt!1376066) lt!1376393)))

(declare-fun bs!586522 () Bool)

(assert (= bs!586522 d!1167980))

(assert (=> bs!586522 m!4504119))

(declare-fun m!4505135 () Bool)

(assert (=> bs!586522 m!4505135))

(assert (=> bs!586522 m!4504013))

(assert (=> b!3936345 d!1167980))

(declare-fun b!3937033 () Bool)

(declare-fun e!2435661 () Bool)

(declare-fun tp!1197966 () Bool)

(assert (=> b!3937033 (= e!2435661 tp!1197966)))

(assert (=> b!3936351 (= tp!1197869 e!2435661)))

(declare-fun b!3937032 () Bool)

(declare-fun tp!1197967 () Bool)

(declare-fun tp!1197964 () Bool)

(assert (=> b!3937032 (= e!2435661 (and tp!1197967 tp!1197964))))

(declare-fun b!3937034 () Bool)

(declare-fun tp!1197965 () Bool)

(declare-fun tp!1197963 () Bool)

(assert (=> b!3937034 (= e!2435661 (and tp!1197965 tp!1197963))))

(declare-fun b!3937031 () Bool)

(assert (=> b!3937031 (= e!2435661 tp_is_empty!19833)))

(assert (= (and b!3936351 ((_ is ElementMatch!11431) (regex!6526 (h!47206 rules!2768)))) b!3937031))

(assert (= (and b!3936351 ((_ is Concat!18188) (regex!6526 (h!47206 rules!2768)))) b!3937032))

(assert (= (and b!3936351 ((_ is Star!11431) (regex!6526 (h!47206 rules!2768)))) b!3937033))

(assert (= (and b!3936351 ((_ is Union!11431) (regex!6526 (h!47206 rules!2768)))) b!3937034))

(declare-fun b!3937039 () Bool)

(declare-fun e!2435664 () Bool)

(declare-fun tp!1197970 () Bool)

(assert (=> b!3937039 (= e!2435664 (and tp_is_empty!19833 tp!1197970))))

(assert (=> b!3936372 (= tp!1197870 e!2435664)))

(assert (= (and b!3936372 ((_ is Cons!41784) (t!326391 suffix!1176))) b!3937039))

(declare-fun b!3937053 () Bool)

(declare-fun b_free!107525 () Bool)

(declare-fun b_next!108229 () Bool)

(assert (=> b!3937053 (= b_free!107525 (not b_next!108229))))

(declare-fun tb!235829 () Bool)

(declare-fun t!326467 () Bool)

(assert (=> (and b!3937053 (= (toValue!8986 (transformation!6526 (rule!9478 (h!47205 (t!326392 prefixTokens!80))))) (toValue!8986 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326467) tb!235829))

(declare-fun result!285676 () Bool)

(assert (= result!285676 result!285596))

(assert (=> d!1167708 t!326467))

(declare-fun b_and!300695 () Bool)

(declare-fun tp!1197985 () Bool)

(assert (=> b!3937053 (= tp!1197985 (and (=> t!326467 result!285676) b_and!300695))))

(declare-fun b_free!107527 () Bool)

(declare-fun b_next!108231 () Bool)

(assert (=> b!3937053 (= b_free!107527 (not b_next!108231))))

(declare-fun t!326469 () Bool)

(declare-fun tb!235831 () Bool)

(assert (=> (and b!3937053 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 prefixTokens!80))))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80))))) t!326469) tb!235831))

(declare-fun result!285678 () Bool)

(assert (= result!285678 result!285582))

(assert (=> b!3936398 t!326469))

(declare-fun t!326471 () Bool)

(declare-fun tb!235833 () Bool)

(assert (=> (and b!3937053 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 prefixTokens!80))))) (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326471) tb!235833))

(declare-fun result!285680 () Bool)

(assert (= result!285680 result!285590))

(assert (=> d!1167682 t!326471))

(declare-fun t!326473 () Bool)

(declare-fun tb!235835 () Bool)

(assert (=> (and b!3937053 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 prefixTokens!80))))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72))))) t!326473) tb!235835))

(declare-fun result!285682 () Bool)

(assert (= result!285682 result!285612))

(assert (=> b!3936833 t!326473))

(declare-fun b_and!300697 () Bool)

(declare-fun tp!1197984 () Bool)

(assert (=> b!3937053 (= tp!1197984 (and (=> t!326469 result!285678) (=> t!326471 result!285680) (=> t!326473 result!285682) b_and!300697))))

(declare-fun b!3937051 () Bool)

(declare-fun e!2435680 () Bool)

(declare-fun e!2435679 () Bool)

(declare-fun tp!1197982 () Bool)

(assert (=> b!3937051 (= e!2435680 (and (inv!21 (value!206625 (h!47205 (t!326392 prefixTokens!80)))) e!2435679 tp!1197982))))

(declare-fun b!3937050 () Bool)

(declare-fun e!2435678 () Bool)

(declare-fun tp!1197981 () Bool)

(assert (=> b!3937050 (= e!2435678 (and (inv!55986 (h!47205 (t!326392 prefixTokens!80))) e!2435680 tp!1197981))))

(declare-fun b!3937052 () Bool)

(declare-fun tp!1197983 () Bool)

(declare-fun e!2435681 () Bool)

(assert (=> b!3937052 (= e!2435679 (and tp!1197983 (inv!55982 (tag!7386 (rule!9478 (h!47205 (t!326392 prefixTokens!80))))) (inv!55985 (transformation!6526 (rule!9478 (h!47205 (t!326392 prefixTokens!80))))) e!2435681))))

(assert (=> b!3936352 (= tp!1197865 e!2435678)))

(assert (=> b!3937053 (= e!2435681 (and tp!1197985 tp!1197984))))

(assert (= b!3937052 b!3937053))

(assert (= b!3937051 b!3937052))

(assert (= b!3937050 b!3937051))

(assert (= (and b!3936352 ((_ is Cons!41785) (t!326392 prefixTokens!80))) b!3937050))

(declare-fun m!4505137 () Bool)

(assert (=> b!3937051 m!4505137))

(declare-fun m!4505139 () Bool)

(assert (=> b!3937050 m!4505139))

(declare-fun m!4505141 () Bool)

(assert (=> b!3937052 m!4505141))

(declare-fun m!4505143 () Bool)

(assert (=> b!3937052 m!4505143))

(declare-fun b!3937056 () Bool)

(declare-fun e!2435683 () Bool)

(declare-fun tp!1197989 () Bool)

(assert (=> b!3937056 (= e!2435683 tp!1197989)))

(assert (=> b!3936390 (= tp!1197877 e!2435683)))

(declare-fun b!3937055 () Bool)

(declare-fun tp!1197990 () Bool)

(declare-fun tp!1197987 () Bool)

(assert (=> b!3937055 (= e!2435683 (and tp!1197990 tp!1197987))))

(declare-fun b!3937057 () Bool)

(declare-fun tp!1197988 () Bool)

(declare-fun tp!1197986 () Bool)

(assert (=> b!3937057 (= e!2435683 (and tp!1197988 tp!1197986))))

(declare-fun b!3937054 () Bool)

(assert (=> b!3937054 (= e!2435683 tp_is_empty!19833)))

(assert (= (and b!3936390 ((_ is ElementMatch!11431) (regex!6526 (rule!9478 (h!47205 prefixTokens!80))))) b!3937054))

(assert (= (and b!3936390 ((_ is Concat!18188) (regex!6526 (rule!9478 (h!47205 prefixTokens!80))))) b!3937055))

(assert (= (and b!3936390 ((_ is Star!11431) (regex!6526 (rule!9478 (h!47205 prefixTokens!80))))) b!3937056))

(assert (= (and b!3936390 ((_ is Union!11431) (regex!6526 (rule!9478 (h!47205 prefixTokens!80))))) b!3937057))

(declare-fun b!3937058 () Bool)

(declare-fun e!2435684 () Bool)

(declare-fun tp!1197991 () Bool)

(assert (=> b!3937058 (= e!2435684 (and tp_is_empty!19833 tp!1197991))))

(assert (=> b!3936380 (= tp!1197863 e!2435684)))

(assert (= (and b!3936380 ((_ is Cons!41784) (t!326391 suffixResult!91))) b!3937058))

(declare-fun b!3937059 () Bool)

(declare-fun e!2435685 () Bool)

(declare-fun tp!1197992 () Bool)

(assert (=> b!3937059 (= e!2435685 (and tp_is_empty!19833 tp!1197992))))

(assert (=> b!3936377 (= tp!1197868 e!2435685)))

(assert (= (and b!3936377 ((_ is Cons!41784) (originalCharacters!7126 (h!47205 suffixTokens!72)))) b!3937059))

(declare-fun b!3937062 () Bool)

(declare-fun e!2435686 () Bool)

(declare-fun tp!1197996 () Bool)

(assert (=> b!3937062 (= e!2435686 tp!1197996)))

(assert (=> b!3936357 (= tp!1197874 e!2435686)))

(declare-fun b!3937061 () Bool)

(declare-fun tp!1197997 () Bool)

(declare-fun tp!1197994 () Bool)

(assert (=> b!3937061 (= e!2435686 (and tp!1197997 tp!1197994))))

(declare-fun b!3937063 () Bool)

(declare-fun tp!1197995 () Bool)

(declare-fun tp!1197993 () Bool)

(assert (=> b!3937063 (= e!2435686 (and tp!1197995 tp!1197993))))

(declare-fun b!3937060 () Bool)

(assert (=> b!3937060 (= e!2435686 tp_is_empty!19833)))

(assert (= (and b!3936357 ((_ is ElementMatch!11431) (regex!6526 (rule!9478 (h!47205 suffixTokens!72))))) b!3937060))

(assert (= (and b!3936357 ((_ is Concat!18188) (regex!6526 (rule!9478 (h!47205 suffixTokens!72))))) b!3937061))

(assert (= (and b!3936357 ((_ is Star!11431) (regex!6526 (rule!9478 (h!47205 suffixTokens!72))))) b!3937062))

(assert (= (and b!3936357 ((_ is Union!11431) (regex!6526 (rule!9478 (h!47205 suffixTokens!72))))) b!3937063))

(declare-fun b!3937064 () Bool)

(declare-fun e!2435687 () Bool)

(declare-fun tp!1197998 () Bool)

(assert (=> b!3937064 (= e!2435687 (and tp_is_empty!19833 tp!1197998))))

(assert (=> b!3936388 (= tp!1197873 e!2435687)))

(assert (= (and b!3936388 ((_ is Cons!41784) (originalCharacters!7126 (h!47205 prefixTokens!80)))) b!3937064))

(declare-fun b!3937068 () Bool)

(declare-fun b_free!107529 () Bool)

(declare-fun b_next!108233 () Bool)

(assert (=> b!3937068 (= b_free!107529 (not b_next!108233))))

(declare-fun t!326475 () Bool)

(declare-fun tb!235837 () Bool)

(assert (=> (and b!3937068 (= (toValue!8986 (transformation!6526 (rule!9478 (h!47205 (t!326392 suffixTokens!72))))) (toValue!8986 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326475) tb!235837))

(declare-fun result!285684 () Bool)

(assert (= result!285684 result!285596))

(assert (=> d!1167708 t!326475))

(declare-fun b_and!300699 () Bool)

(declare-fun tp!1198003 () Bool)

(assert (=> b!3937068 (= tp!1198003 (and (=> t!326475 result!285684) b_and!300699))))

(declare-fun b_free!107531 () Bool)

(declare-fun b_next!108235 () Bool)

(assert (=> b!3937068 (= b_free!107531 (not b_next!108235))))

(declare-fun t!326477 () Bool)

(declare-fun tb!235839 () Bool)

(assert (=> (and b!3937068 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 suffixTokens!72))))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80))))) t!326477) tb!235839))

(declare-fun result!285686 () Bool)

(assert (= result!285686 result!285582))

(assert (=> b!3936398 t!326477))

(declare-fun t!326479 () Bool)

(declare-fun tb!235841 () Bool)

(assert (=> (and b!3937068 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 suffixTokens!72))))) (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326479) tb!235841))

(declare-fun result!285688 () Bool)

(assert (= result!285688 result!285590))

(assert (=> d!1167682 t!326479))

(declare-fun t!326481 () Bool)

(declare-fun tb!235843 () Bool)

(assert (=> (and b!3937068 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 suffixTokens!72))))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72))))) t!326481) tb!235843))

(declare-fun result!285690 () Bool)

(assert (= result!285690 result!285612))

(assert (=> b!3936833 t!326481))

(declare-fun tp!1198002 () Bool)

(declare-fun b_and!300701 () Bool)

(assert (=> b!3937068 (= tp!1198002 (and (=> t!326477 result!285686) (=> t!326479 result!285688) (=> t!326481 result!285690) b_and!300701))))

(declare-fun e!2435691 () Bool)

(declare-fun e!2435690 () Bool)

(declare-fun tp!1198000 () Bool)

(declare-fun b!3937066 () Bool)

(assert (=> b!3937066 (= e!2435691 (and (inv!21 (value!206625 (h!47205 (t!326392 suffixTokens!72)))) e!2435690 tp!1198000))))

(declare-fun tp!1197999 () Bool)

(declare-fun b!3937065 () Bool)

(declare-fun e!2435689 () Bool)

(assert (=> b!3937065 (= e!2435689 (and (inv!55986 (h!47205 (t!326392 suffixTokens!72))) e!2435691 tp!1197999))))

(declare-fun tp!1198001 () Bool)

(declare-fun b!3937067 () Bool)

(declare-fun e!2435692 () Bool)

(assert (=> b!3937067 (= e!2435690 (and tp!1198001 (inv!55982 (tag!7386 (rule!9478 (h!47205 (t!326392 suffixTokens!72))))) (inv!55985 (transformation!6526 (rule!9478 (h!47205 (t!326392 suffixTokens!72))))) e!2435692))))

(assert (=> b!3936389 (= tp!1197878 e!2435689)))

(assert (=> b!3937068 (= e!2435692 (and tp!1198003 tp!1198002))))

(assert (= b!3937067 b!3937068))

(assert (= b!3937066 b!3937067))

(assert (= b!3937065 b!3937066))

(assert (= (and b!3936389 ((_ is Cons!41785) (t!326392 suffixTokens!72))) b!3937065))

(declare-fun m!4505145 () Bool)

(assert (=> b!3937066 m!4505145))

(declare-fun m!4505147 () Bool)

(assert (=> b!3937065 m!4505147))

(declare-fun m!4505149 () Bool)

(assert (=> b!3937067 m!4505149))

(declare-fun m!4505151 () Bool)

(assert (=> b!3937067 m!4505151))

(declare-fun b!3937069 () Bool)

(declare-fun e!2435694 () Bool)

(declare-fun tp!1198004 () Bool)

(assert (=> b!3937069 (= e!2435694 (and tp_is_empty!19833 tp!1198004))))

(assert (=> b!3936386 (= tp!1197876 e!2435694)))

(assert (= (and b!3936386 ((_ is Cons!41784) (t!326391 prefix!426))) b!3937069))

(declare-fun b!3937080 () Bool)

(declare-fun b_free!107533 () Bool)

(declare-fun b_next!108237 () Bool)

(assert (=> b!3937080 (= b_free!107533 (not b_next!108237))))

(declare-fun t!326483 () Bool)

(declare-fun tb!235845 () Bool)

(assert (=> (and b!3937080 (= (toValue!8986 (transformation!6526 (h!47206 (t!326393 rules!2768)))) (toValue!8986 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326483) tb!235845))

(declare-fun result!285694 () Bool)

(assert (= result!285694 result!285596))

(assert (=> d!1167708 t!326483))

(declare-fun tp!1198016 () Bool)

(declare-fun b_and!300703 () Bool)

(assert (=> b!3937080 (= tp!1198016 (and (=> t!326483 result!285694) b_and!300703))))

(declare-fun b_free!107535 () Bool)

(declare-fun b_next!108239 () Bool)

(assert (=> b!3937080 (= b_free!107535 (not b_next!108239))))

(declare-fun tb!235847 () Bool)

(declare-fun t!326485 () Bool)

(assert (=> (and b!3937080 (= (toChars!8845 (transformation!6526 (h!47206 (t!326393 rules!2768)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80))))) t!326485) tb!235847))

(declare-fun result!285696 () Bool)

(assert (= result!285696 result!285582))

(assert (=> b!3936398 t!326485))

(declare-fun t!326487 () Bool)

(declare-fun tb!235849 () Bool)

(assert (=> (and b!3937080 (= (toChars!8845 (transformation!6526 (h!47206 (t!326393 rules!2768)))) (toChars!8845 (transformation!6526 (rule!9478 (_1!23668 (v!39275 lt!1376064)))))) t!326487) tb!235849))

(declare-fun result!285698 () Bool)

(assert (= result!285698 result!285590))

(assert (=> d!1167682 t!326487))

(declare-fun t!326489 () Bool)

(declare-fun tb!235851 () Bool)

(assert (=> (and b!3937080 (= (toChars!8845 (transformation!6526 (h!47206 (t!326393 rules!2768)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72))))) t!326489) tb!235851))

(declare-fun result!285700 () Bool)

(assert (= result!285700 result!285612))

(assert (=> b!3936833 t!326489))

(declare-fun b_and!300705 () Bool)

(declare-fun tp!1198013 () Bool)

(assert (=> b!3937080 (= tp!1198013 (and (=> t!326485 result!285696) (=> t!326487 result!285698) (=> t!326489 result!285700) b_and!300705))))

(declare-fun e!2435705 () Bool)

(assert (=> b!3937080 (= e!2435705 (and tp!1198016 tp!1198013))))

(declare-fun b!3937079 () Bool)

(declare-fun tp!1198015 () Bool)

(declare-fun e!2435704 () Bool)

(assert (=> b!3937079 (= e!2435704 (and tp!1198015 (inv!55982 (tag!7386 (h!47206 (t!326393 rules!2768)))) (inv!55985 (transformation!6526 (h!47206 (t!326393 rules!2768)))) e!2435705))))

(declare-fun b!3937078 () Bool)

(declare-fun e!2435706 () Bool)

(declare-fun tp!1198014 () Bool)

(assert (=> b!3937078 (= e!2435706 (and e!2435704 tp!1198014))))

(assert (=> b!3936387 (= tp!1197871 e!2435706)))

(assert (= b!3937079 b!3937080))

(assert (= b!3937078 b!3937079))

(assert (= (and b!3936387 ((_ is Cons!41786) (t!326393 rules!2768))) b!3937078))

(declare-fun m!4505153 () Bool)

(assert (=> b!3937079 m!4505153))

(declare-fun m!4505155 () Bool)

(assert (=> b!3937079 m!4505155))

(declare-fun b_lambda!115163 () Bool)

(assert (= b_lambda!115143 (or (and b!3936370 b_free!107511) (and b!3936369 b_free!107507 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))))) (and b!3936373 b_free!107503 (= (toChars!8845 (transformation!6526 (h!47206 rules!2768))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))))) (and b!3937080 b_free!107535 (= (toChars!8845 (transformation!6526 (h!47206 (t!326393 rules!2768)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))))) (and b!3937068 b_free!107531 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 suffixTokens!72))))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))))) (and b!3937053 b_free!107527 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 prefixTokens!80))))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))))) b_lambda!115163)))

(declare-fun b_lambda!115165 () Bool)

(assert (= b_lambda!115151 (or (and b!3936373 b_free!107503 (= (toChars!8845 (transformation!6526 (h!47206 rules!2768))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))))) (and b!3936369 b_free!107507) (and b!3937080 b_free!107535 (= (toChars!8845 (transformation!6526 (h!47206 (t!326393 rules!2768)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))))) (and b!3937053 b_free!107527 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 prefixTokens!80))))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))))) (and b!3937068 b_free!107531 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 (t!326392 suffixTokens!72))))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))))) (and b!3936370 b_free!107511 (= (toChars!8845 (transformation!6526 (rule!9478 (h!47205 prefixTokens!80)))) (toChars!8845 (transformation!6526 (rule!9478 (h!47205 suffixTokens!72)))))) b_lambda!115165)))

(check-sat (not b!3936780) (not b_next!108237) (not b!3936606) (not d!1167900) (not b!3936779) b_and!300663 (not b!3937051) (not d!1167904) (not b!3937016) (not d!1167902) (not b!3937064) (not b!3937056) (not b!3937055) (not b!3937062) (not b!3936820) (not bm!284998) (not b!3936420) (not tb!235769) (not b!3936530) (not b!3937067) (not b!3936526) (not b!3936785) (not b!3936843) (not b!3936784) (not b!3936419) (not b!3936603) (not d!1167666) (not b!3936708) (not b!3936731) (not b!3937057) (not b!3937008) (not b!3936399) (not d!1167686) b_and!300661 (not b!3937065) (not b!3936769) (not b_next!108235) (not b!3936671) (not b!3936719) (not b!3936742) b_and!300705 (not b!3937003) (not d!1167696) (not b!3936833) (not b!3936597) (not b_next!108233) (not b!3936593) (not b!3937001) (not b!3937078) (not b!3936554) (not b!3936553) (not b!3936817) (not b!3936835) b_and!300695 (not b!3936468) (not b!3936555) (not b!3937058) (not b!3936756) (not d!1167744) (not b!3936768) (not b!3936998) (not b!3936712) (not b!3936814) (not d!1167646) (not b!3936677) (not b!3936741) b_and!300699 (not b!3936791) (not d!1167780) (not d!1167736) (not b!3937012) b_and!300697 (not b!3936426) (not b!3937033) (not d!1167748) (not b!3937000) b_and!300651 (not b!3936713) (not b_next!108231) (not b!3937019) (not b!3936675) (not b!3936775) (not b!3936750) (not b!3936466) (not d!1167800) (not d!1167742) (not b!3936846) (not b!3937050) (not tb!235757) (not b!3936749) (not b_next!108207) (not b!3936829) (not b!3937059) b_and!300659 (not b!3936767) b_and!300647 (not d!1167662) (not b!3936529) (not b!3936415) (not b!3936524) (not b!3936788) (not b!3936813) (not b!3936789) (not d!1167798) (not b_next!108229) (not d!1167836) (not b!3936809) tp_is_empty!19833 (not d!1167660) (not b!3936674) (not b_lambda!115163) (not b!3936709) (not d!1167682) (not d!1167892) (not b!3936792) (not d!1167908) (not b_next!108209) (not d!1167756) (not b!3936679) (not b!3936576) (not b!3936534) (not b!3936592) (not d!1167754) b_and!300649 (not d!1167926) (not d!1167644) (not b!3936596) (not b!3936755) (not b_lambda!115145) (not d!1167710) (not b!3936831) (not b!3936418) (not d!1167680) (not b!3936812) (not d!1167974) (not b!3936670) (not b!3936578) (not b!3936834) (not b!3937079) (not d!1167684) (not b_lambda!115147) (not d!1167906) (not d!1167758) (not d!1167830) (not b!3936824) (not d!1167826) (not b!3936793) (not b!3936821) (not b!3936847) (not d!1167884) (not b!3936509) (not b!3936601) (not b!3936825) (not b!3937004) (not d!1167842) (not b_lambda!115165) (not d!1167810) (not d!1167898) (not d!1167912) (not d!1167794) (not d!1167868) (not b!3937013) (not b!3937069) (not b!3936673) (not b!3936600) (not tb!235781) (not b!3937061) (not d!1167752) (not b_next!108239) (not b!3936783) (not d!1167648) (not tb!235763) (not d!1167980) (not b!3936787) (not d!1167858) (not b!3936743) (not d!1167896) b_and!300701 (not b!3936589) (not b!3937010) b_and!300703 (not b!3937039) (not b!3937032) (not b!3937006) (not d!1167880) (not b!3937052) (not d!1167750) (not d!1167692) (not b!3936734) (not b!3936751) (not b!3936588) (not b!3936999) (not b!3936607) (not d!1167852) (not d!1167656) (not b!3936676) (not b_next!108215) (not b!3937020) (not b!3937066) (not b!3937005) (not b!3937034) (not d!1167894) (not d!1167796) (not b_next!108205) (not b!3936473) (not b!3936735) (not b!3936573) (not b!3936669) (not b!3937018) (not d!1167706) (not b_next!108213) (not d!1167914) (not b!3936404) (not b!3937063) (not b!3936393) (not b!3936842) (not b!3936777) (not b_next!108211) (not b!3936828) (not b!3936577) (not d!1167876) (not b!3936398) (not b!3936718) (not b!3936818))
(check-sat b_and!300695 b_and!300699 b_and!300697 (not b_next!108207) (not b_next!108229) (not b_next!108239) b_and!300701 b_and!300703 (not b_next!108215) (not b_next!108205) (not b_next!108213) (not b_next!108211) (not b_next!108237) b_and!300663 b_and!300661 (not b_next!108235) b_and!300705 (not b_next!108233) b_and!300651 (not b_next!108231) b_and!300659 b_and!300647 (not b_next!108209) b_and!300649)
