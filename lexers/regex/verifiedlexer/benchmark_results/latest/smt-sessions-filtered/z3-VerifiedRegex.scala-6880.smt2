; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362332 () Bool)

(assert start!362332)

(declare-fun b!3863500 () Bool)

(declare-fun b_free!104005 () Bool)

(declare-fun b_next!104709 () Bool)

(assert (=> b!3863500 (= b_free!104005 (not b_next!104709))))

(declare-fun tp!1171294 () Bool)

(declare-fun b_and!289323 () Bool)

(assert (=> b!3863500 (= tp!1171294 b_and!289323)))

(declare-fun b_free!104007 () Bool)

(declare-fun b_next!104711 () Bool)

(assert (=> b!3863500 (= b_free!104007 (not b_next!104711))))

(declare-fun tp!1171286 () Bool)

(declare-fun b_and!289325 () Bool)

(assert (=> b!3863500 (= tp!1171286 b_and!289325)))

(declare-fun b!3863502 () Bool)

(declare-fun b_free!104009 () Bool)

(declare-fun b_next!104713 () Bool)

(assert (=> b!3863502 (= b_free!104009 (not b_next!104713))))

(declare-fun tp!1171300 () Bool)

(declare-fun b_and!289327 () Bool)

(assert (=> b!3863502 (= tp!1171300 b_and!289327)))

(declare-fun b_free!104011 () Bool)

(declare-fun b_next!104715 () Bool)

(assert (=> b!3863502 (= b_free!104011 (not b_next!104715))))

(declare-fun tp!1171302 () Bool)

(declare-fun b_and!289329 () Bool)

(assert (=> b!3863502 (= tp!1171302 b_and!289329)))

(declare-fun b!3863517 () Bool)

(declare-fun b_free!104013 () Bool)

(declare-fun b_next!104717 () Bool)

(assert (=> b!3863517 (= b_free!104013 (not b_next!104717))))

(declare-fun tp!1171297 () Bool)

(declare-fun b_and!289331 () Bool)

(assert (=> b!3863517 (= tp!1171297 b_and!289331)))

(declare-fun b_free!104015 () Bool)

(declare-fun b_next!104719 () Bool)

(assert (=> b!3863517 (= b_free!104015 (not b_next!104719))))

(declare-fun tp!1171301 () Bool)

(declare-fun b_and!289333 () Bool)

(assert (=> b!3863517 (= tp!1171301 b_and!289333)))

(declare-fun b!3863490 () Bool)

(declare-fun e!2388833 () Bool)

(declare-datatypes ((List!41112 0))(
  ( (Nil!40988) (Cons!40988 (h!46408 (_ BitVec 16)) (t!313699 List!41112)) )
))
(declare-datatypes ((TokenValue!6578 0))(
  ( (FloatLiteralValue!13156 (text!46491 List!41112)) (TokenValueExt!6577 (__x!25373 Int)) (Broken!32890 (value!201526 List!41112)) (Object!6701) (End!6578) (Def!6578) (Underscore!6578) (Match!6578) (Else!6578) (Error!6578) (Case!6578) (If!6578) (Extends!6578) (Abstract!6578) (Class!6578) (Val!6578) (DelimiterValue!13156 (del!6638 List!41112)) (KeywordValue!6584 (value!201527 List!41112)) (CommentValue!13156 (value!201528 List!41112)) (WhitespaceValue!13156 (value!201529 List!41112)) (IndentationValue!6578 (value!201530 List!41112)) (String!46607) (Int32!6578) (Broken!32891 (value!201531 List!41112)) (Boolean!6579) (Unit!58654) (OperatorValue!6581 (op!6638 List!41112)) (IdentifierValue!13156 (value!201532 List!41112)) (IdentifierValue!13157 (value!201533 List!41112)) (WhitespaceValue!13157 (value!201534 List!41112)) (True!13156) (False!13156) (Broken!32892 (value!201535 List!41112)) (Broken!32893 (value!201536 List!41112)) (True!13157) (RightBrace!6578) (RightBracket!6578) (Colon!6578) (Null!6578) (Comma!6578) (LeftBracket!6578) (False!13157) (LeftBrace!6578) (ImaginaryLiteralValue!6578 (text!46492 List!41112)) (StringLiteralValue!19734 (value!201537 List!41112)) (EOFValue!6578 (value!201538 List!41112)) (IdentValue!6578 (value!201539 List!41112)) (DelimiterValue!13157 (value!201540 List!41112)) (DedentValue!6578 (value!201541 List!41112)) (NewLineValue!6578 (value!201542 List!41112)) (IntegerValue!19734 (value!201543 (_ BitVec 32)) (text!46493 List!41112)) (IntegerValue!19735 (value!201544 Int) (text!46494 List!41112)) (Times!6578) (Or!6578) (Equal!6578) (Minus!6578) (Broken!32894 (value!201545 List!41112)) (And!6578) (Div!6578) (LessEqual!6578) (Mod!6578) (Concat!17831) (Not!6578) (Plus!6578) (SpaceValue!6578 (value!201546 List!41112)) (IntegerValue!19736 (value!201547 Int) (text!46495 List!41112)) (StringLiteralValue!19735 (text!46496 List!41112)) (FloatLiteralValue!13157 (text!46497 List!41112)) (BytesLiteralValue!6578 (value!201548 List!41112)) (CommentValue!13157 (value!201549 List!41112)) (StringLiteralValue!19736 (value!201550 List!41112)) (ErrorTokenValue!6578 (msg!6639 List!41112)) )
))
(declare-datatypes ((C!22692 0))(
  ( (C!22693 (val!13440 Int)) )
))
(declare-datatypes ((Regex!11253 0))(
  ( (ElementMatch!11253 (c!672502 C!22692)) (Concat!17832 (regOne!23018 Regex!11253) (regTwo!23018 Regex!11253)) (EmptyExpr!11253) (Star!11253 (reg!11582 Regex!11253)) (EmptyLang!11253) (Union!11253 (regOne!23019 Regex!11253) (regTwo!23019 Regex!11253)) )
))
(declare-datatypes ((String!46608 0))(
  ( (String!46609 (value!201551 String)) )
))
(declare-datatypes ((List!41113 0))(
  ( (Nil!40989) (Cons!40989 (h!46409 C!22692) (t!313700 List!41113)) )
))
(declare-datatypes ((IArray!25123 0))(
  ( (IArray!25124 (innerList!12619 List!41113)) )
))
(declare-datatypes ((Conc!12559 0))(
  ( (Node!12559 (left!31551 Conc!12559) (right!31881 Conc!12559) (csize!25348 Int) (cheight!12770 Int)) (Leaf!19440 (xs!15865 IArray!25123) (csize!25349 Int)) (Empty!12559) )
))
(declare-datatypes ((BalanceConc!24712 0))(
  ( (BalanceConc!24713 (c!672503 Conc!12559)) )
))
(declare-datatypes ((TokenValueInjection!12584 0))(
  ( (TokenValueInjection!12585 (toValue!8776 Int) (toChars!8635 Int)) )
))
(declare-datatypes ((Rule!12496 0))(
  ( (Rule!12497 (regex!6348 Regex!11253) (tag!7208 String!46608) (isSeparator!6348 Bool) (transformation!6348 TokenValueInjection!12584)) )
))
(declare-datatypes ((Token!11834 0))(
  ( (Token!11835 (value!201552 TokenValue!6578) (rule!9222 Rule!12496) (size!30821 Int) (originalCharacters!6948 List!41113)) )
))
(declare-datatypes ((tuple2!40198 0))(
  ( (tuple2!40199 (_1!23233 Token!11834) (_2!23233 List!41113)) )
))
(declare-datatypes ((Option!8766 0))(
  ( (None!8765) (Some!8765 (v!39063 tuple2!40198)) )
))
(declare-fun lt!1342868 () Option!8766)

(declare-fun size!30822 (List!41113) Int)

(assert (=> b!3863490 (= e!2388833 (= (size!30821 (_1!23233 (v!39063 lt!1342868))) (size!30822 (originalCharacters!6948 (_1!23233 (v!39063 lt!1342868))))))))

(declare-fun b!3863491 () Bool)

(declare-datatypes ((Unit!58655 0))(
  ( (Unit!58656) )
))
(declare-fun e!2388856 () Unit!58655)

(declare-fun e!2388857 () Unit!58655)

(assert (=> b!3863491 (= e!2388856 e!2388857)))

(declare-datatypes ((List!41114 0))(
  ( (Nil!40990) (Cons!40990 (h!46410 Token!11834) (t!313701 List!41114)) )
))
(declare-fun lt!1342862 () List!41114)

(declare-fun prefixTokens!80 () List!41114)

(declare-fun tail!5869 (List!41114) List!41114)

(assert (=> b!3863491 (= lt!1342862 (tail!5869 prefixTokens!80))))

(declare-fun c!672500 () Bool)

(declare-fun isEmpty!24292 (List!41114) Bool)

(assert (=> b!3863491 (= c!672500 (isEmpty!24292 lt!1342862))))

(declare-fun b!3863492 () Bool)

(declare-fun e!2388848 () Bool)

(assert (=> b!3863492 e!2388848))

(declare-fun res!1564579 () Bool)

(assert (=> b!3863492 (=> (not res!1564579) (not e!2388848))))

(declare-datatypes ((tuple2!40200 0))(
  ( (tuple2!40201 (_1!23234 List!41114) (_2!23234 List!41113)) )
))
(declare-fun call!282588 () tuple2!40200)

(declare-fun lt!1342852 () tuple2!40200)

(assert (=> b!3863492 (= res!1564579 (not (= call!282588 lt!1342852)))))

(declare-fun lt!1342865 () tuple2!40198)

(declare-fun suffixResult!91 () List!41113)

(declare-datatypes ((LexerInterface!5937 0))(
  ( (LexerInterfaceExt!5934 (__x!25374 Int)) (Lexer!5935) )
))
(declare-fun thiss!20629 () LexerInterface!5937)

(declare-fun lt!1342859 () Unit!58655)

(declare-fun suffix!1176 () List!41113)

(declare-datatypes ((List!41115 0))(
  ( (Nil!40991) (Cons!40991 (h!46411 Rule!12496) (t!313702 List!41115)) )
))
(declare-fun rules!2768 () List!41115)

(declare-fun suffixTokens!72 () List!41114)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!8 (LexerInterface!5937 List!41115 List!41113 List!41113 List!41114 List!41113) Unit!58655)

(assert (=> b!3863492 (= lt!1342859 (lemmaLexWithSmallerInputCannotProduceSameResults!8 thiss!20629 rules!2768 suffix!1176 (_2!23233 lt!1342865) suffixTokens!72 suffixResult!91))))

(assert (=> b!3863492 (= (_2!23233 (v!39063 lt!1342868)) (_2!23233 lt!1342865))))

(declare-fun lt!1342864 () Unit!58655)

(declare-fun lt!1342857 () List!41113)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!432 (List!41113 List!41113 List!41113 List!41113) Unit!58655)

(assert (=> b!3863492 (= lt!1342864 (lemmaConcatSameAndSameSizesThenSameLists!432 lt!1342857 (_2!23233 (v!39063 lt!1342868)) lt!1342857 (_2!23233 lt!1342865)))))

(declare-fun Unit!58657 () Unit!58655)

(assert (=> b!3863492 (= e!2388857 Unit!58657)))

(declare-fun b!3863493 () Bool)

(declare-fun e!2388836 () Bool)

(declare-fun e!2388858 () Bool)

(assert (=> b!3863493 (= e!2388836 e!2388858)))

(declare-fun res!1564567 () Bool)

(assert (=> b!3863493 (=> res!1564567 e!2388858)))

(declare-fun matchR!5400 (Regex!11253 List!41113) Bool)

(assert (=> b!3863493 (= res!1564567 (not (matchR!5400 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) lt!1342857)))))

(declare-fun lt!1342848 () Int)

(declare-fun lt!1342844 () TokenValue!6578)

(declare-fun lt!1342867 () List!41113)

(declare-fun maxPrefixOneRule!2323 (LexerInterface!5937 Rule!12496 List!41113) Option!8766)

(assert (=> b!3863493 (= (maxPrefixOneRule!2323 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))) lt!1342867) (Some!8765 (tuple2!40199 (Token!11835 lt!1342844 (rule!9222 (_1!23233 (v!39063 lt!1342868))) lt!1342848 lt!1342857) (_2!23233 (v!39063 lt!1342868)))))))

(declare-fun lt!1342860 () Unit!58655)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1221 (LexerInterface!5937 List!41115 List!41113 List!41113 List!41113 Rule!12496) Unit!58655)

(assert (=> b!3863493 (= lt!1342860 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1221 thiss!20629 rules!2768 lt!1342857 lt!1342867 (_2!23233 (v!39063 lt!1342868)) (rule!9222 (_1!23233 (v!39063 lt!1342868)))))))

(declare-fun b!3863494 () Bool)

(declare-fun e!2388859 () Bool)

(assert (=> b!3863494 (= e!2388859 e!2388836)))

(declare-fun res!1564582 () Bool)

(assert (=> b!3863494 (=> res!1564582 e!2388836)))

(declare-fun lt!1342849 () Int)

(declare-fun lt!1342866 () Int)

(declare-fun lt!1342851 () Int)

(assert (=> b!3863494 (= res!1564582 (or (not (= (+ lt!1342866 lt!1342851) lt!1342849)) (<= lt!1342848 lt!1342866)))))

(declare-fun prefix!426 () List!41113)

(assert (=> b!3863494 (= lt!1342866 (size!30822 prefix!426))))

(declare-fun b!3863495 () Bool)

(declare-fun e!2388831 () Bool)

(declare-fun tp_is_empty!19477 () Bool)

(declare-fun tp!1171295 () Bool)

(assert (=> b!3863495 (= e!2388831 (and tp_is_empty!19477 tp!1171295))))

(declare-fun b!3863496 () Bool)

(declare-fun e!2388852 () Bool)

(assert (=> b!3863496 (= e!2388858 e!2388852)))

(declare-fun res!1564575 () Bool)

(assert (=> b!3863496 (=> res!1564575 e!2388852)))

(declare-fun head!8158 (List!41114) Token!11834)

(assert (=> b!3863496 (= res!1564575 (not (= (_1!23233 lt!1342865) (head!8158 prefixTokens!80))))))

(declare-fun get!13562 (Option!8766) tuple2!40198)

(assert (=> b!3863496 (= lt!1342865 (get!13562 lt!1342868))))

(declare-fun b!3863497 () Bool)

(declare-fun e!2388837 () Bool)

(declare-fun tp!1171290 () Bool)

(assert (=> b!3863497 (= e!2388837 (and tp_is_empty!19477 tp!1171290))))

(declare-fun b!3863498 () Bool)

(declare-fun res!1564581 () Bool)

(declare-fun e!2388845 () Bool)

(assert (=> b!3863498 (=> (not res!1564581) (not e!2388845))))

(declare-fun rulesInvariant!5280 (LexerInterface!5937 List!41115) Bool)

(assert (=> b!3863498 (= res!1564581 (rulesInvariant!5280 thiss!20629 rules!2768))))

(declare-fun e!2388843 () Bool)

(declare-fun b!3863499 () Bool)

(declare-fun e!2388829 () Bool)

(declare-fun tp!1171287 () Bool)

(declare-fun inv!55150 (Token!11834) Bool)

(assert (=> b!3863499 (= e!2388829 (and (inv!55150 (h!46410 suffixTokens!72)) e!2388843 tp!1171287))))

(declare-fun e!2388838 () Bool)

(assert (=> b!3863500 (= e!2388838 (and tp!1171294 tp!1171286))))

(declare-fun b!3863501 () Bool)

(declare-fun e!2388839 () Bool)

(assert (=> b!3863501 (= e!2388839 e!2388859)))

(declare-fun res!1564580 () Bool)

(assert (=> b!3863501 (=> res!1564580 e!2388859)))

(declare-fun lt!1342861 () Int)

(assert (=> b!3863501 (= res!1564580 (not (= (+ lt!1342848 lt!1342861) lt!1342849)))))

(assert (=> b!3863501 (= lt!1342849 (size!30822 lt!1342867))))

(declare-fun e!2388840 () Bool)

(assert (=> b!3863502 (= e!2388840 (and tp!1171300 tp!1171302))))

(declare-fun b!3863503 () Bool)

(declare-fun tp!1171296 () Bool)

(declare-fun e!2388853 () Bool)

(declare-fun inv!55147 (String!46608) Bool)

(declare-fun inv!55151 (TokenValueInjection!12584) Bool)

(assert (=> b!3863503 (= e!2388853 (and tp!1171296 (inv!55147 (tag!7208 (h!46411 rules!2768))) (inv!55151 (transformation!6348 (h!46411 rules!2768))) e!2388838))))

(declare-fun b!3863504 () Bool)

(declare-fun isDefined!6871 (Option!8766) Bool)

(assert (=> b!3863504 (= e!2388852 (isDefined!6871 lt!1342868))))

(declare-fun lt!1342853 () Unit!58655)

(assert (=> b!3863504 (= lt!1342853 e!2388856)))

(declare-fun c!672501 () Bool)

(assert (=> b!3863504 (= c!672501 (< (size!30822 (_2!23233 lt!1342865)) lt!1342851))))

(declare-fun b!3863505 () Bool)

(declare-fun e!2388841 () Bool)

(assert (=> b!3863505 (= e!2388841 false)))

(declare-fun bm!282583 () Bool)

(declare-fun lexList!1705 (LexerInterface!5937 List!41115 List!41113) tuple2!40200)

(assert (=> bm!282583 (= call!282588 (lexList!1705 thiss!20629 rules!2768 (_2!23233 lt!1342865)))))

(declare-fun b!3863506 () Bool)

(declare-fun res!1564572 () Bool)

(assert (=> b!3863506 (=> (not res!1564572) (not e!2388845))))

(declare-fun isEmpty!24293 (List!41115) Bool)

(assert (=> b!3863506 (= res!1564572 (not (isEmpty!24293 rules!2768)))))

(declare-fun b!3863507 () Bool)

(declare-fun e!2388830 () Bool)

(declare-fun e!2388847 () Bool)

(assert (=> b!3863507 (= e!2388830 e!2388847)))

(declare-fun res!1564565 () Bool)

(assert (=> b!3863507 (=> (not res!1564565) (not e!2388847))))

(assert (=> b!3863507 (= res!1564565 (= (lexList!1705 thiss!20629 rules!2768 suffix!1176) lt!1342852))))

(assert (=> b!3863507 (= lt!1342852 (tuple2!40201 suffixTokens!72 suffixResult!91))))

(declare-fun b!3863508 () Bool)

(assert (=> b!3863508 e!2388841))

(declare-fun res!1564573 () Bool)

(assert (=> b!3863508 (=> (not res!1564573) (not e!2388841))))

(declare-fun ++!10453 (List!41114 List!41114) List!41114)

(assert (=> b!3863508 (= res!1564573 (not (= call!282588 (tuple2!40201 (++!10453 lt!1342862 suffixTokens!72) suffixResult!91))))))

(declare-fun lt!1342847 () Unit!58655)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!8 (LexerInterface!5937 List!41115 List!41113 List!41113 List!41114 List!41113 List!41114) Unit!58655)

(assert (=> b!3863508 (= lt!1342847 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!8 thiss!20629 rules!2768 suffix!1176 (_2!23233 lt!1342865) suffixTokens!72 suffixResult!91 lt!1342862))))

(declare-fun Unit!58658 () Unit!58655)

(assert (=> b!3863508 (= e!2388857 Unit!58658)))

(declare-fun b!3863509 () Bool)

(declare-fun e!2388844 () Bool)

(declare-fun e!2388855 () Bool)

(assert (=> b!3863509 (= e!2388844 (not e!2388855))))

(declare-fun res!1564574 () Bool)

(assert (=> b!3863509 (=> res!1564574 e!2388855)))

(declare-fun lt!1342863 () List!41113)

(assert (=> b!3863509 (= res!1564574 (not (= lt!1342863 lt!1342867)))))

(declare-fun lt!1342858 () tuple2!40200)

(assert (=> b!3863509 (= lt!1342858 (lexList!1705 thiss!20629 rules!2768 (_2!23233 (v!39063 lt!1342868))))))

(declare-fun lt!1342846 () List!41113)

(assert (=> b!3863509 (and (= (size!30821 (_1!23233 (v!39063 lt!1342868))) lt!1342848) (= (originalCharacters!6948 (_1!23233 (v!39063 lt!1342868))) lt!1342857) (= (tuple2!40199 (_1!23233 (v!39063 lt!1342868)) (_2!23233 (v!39063 lt!1342868))) (tuple2!40199 (Token!11835 lt!1342844 (rule!9222 (_1!23233 (v!39063 lt!1342868))) lt!1342848 lt!1342857) lt!1342846)))))

(assert (=> b!3863509 (= lt!1342848 (size!30822 lt!1342857))))

(assert (=> b!3863509 e!2388833))

(declare-fun res!1564568 () Bool)

(assert (=> b!3863509 (=> (not res!1564568) (not e!2388833))))

(assert (=> b!3863509 (= res!1564568 (= (value!201552 (_1!23233 (v!39063 lt!1342868))) lt!1342844))))

(declare-fun apply!9591 (TokenValueInjection!12584 BalanceConc!24712) TokenValue!6578)

(declare-fun seqFromList!4619 (List!41113) BalanceConc!24712)

(assert (=> b!3863509 (= lt!1342844 (apply!9591 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (seqFromList!4619 lt!1342857)))))

(assert (=> b!3863509 (= (_2!23233 (v!39063 lt!1342868)) lt!1342846)))

(declare-fun lt!1342856 () Unit!58655)

(declare-fun lemmaSamePrefixThenSameSuffix!1668 (List!41113 List!41113 List!41113 List!41113 List!41113) Unit!58655)

(assert (=> b!3863509 (= lt!1342856 (lemmaSamePrefixThenSameSuffix!1668 lt!1342857 (_2!23233 (v!39063 lt!1342868)) lt!1342857 lt!1342846 lt!1342867))))

(declare-fun getSuffix!1902 (List!41113 List!41113) List!41113)

(assert (=> b!3863509 (= lt!1342846 (getSuffix!1902 lt!1342867 lt!1342857))))

(declare-fun isPrefix!3447 (List!41113 List!41113) Bool)

(assert (=> b!3863509 (isPrefix!3447 lt!1342857 lt!1342863)))

(declare-fun ++!10454 (List!41113 List!41113) List!41113)

(assert (=> b!3863509 (= lt!1342863 (++!10454 lt!1342857 (_2!23233 (v!39063 lt!1342868))))))

(declare-fun lt!1342855 () Unit!58655)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2310 (List!41113 List!41113) Unit!58655)

(assert (=> b!3863509 (= lt!1342855 (lemmaConcatTwoListThenFirstIsPrefix!2310 lt!1342857 (_2!23233 (v!39063 lt!1342868))))))

(declare-fun list!15254 (BalanceConc!24712) List!41113)

(declare-fun charsOf!4176 (Token!11834) BalanceConc!24712)

(assert (=> b!3863509 (= lt!1342857 (list!15254 (charsOf!4176 (_1!23233 (v!39063 lt!1342868)))))))

(declare-fun ruleValid!2300 (LexerInterface!5937 Rule!12496) Bool)

(assert (=> b!3863509 (ruleValid!2300 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))

(declare-fun lt!1342850 () Unit!58655)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1380 (LexerInterface!5937 Rule!12496 List!41115) Unit!58655)

(assert (=> b!3863509 (= lt!1342850 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1380 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))) rules!2768))))

(declare-fun lt!1342845 () Unit!58655)

(declare-fun lemmaCharactersSize!1009 (Token!11834) Unit!58655)

(assert (=> b!3863509 (= lt!1342845 (lemmaCharactersSize!1009 (_1!23233 (v!39063 lt!1342868))))))

(declare-fun b!3863510 () Bool)

(declare-fun e!2388846 () Bool)

(declare-fun tp!1171293 () Bool)

(assert (=> b!3863510 (= e!2388846 (and tp_is_empty!19477 tp!1171293))))

(declare-fun e!2388834 () Bool)

(declare-fun tp!1171291 () Bool)

(declare-fun b!3863511 () Bool)

(assert (=> b!3863511 (= e!2388834 (and tp!1171291 (inv!55147 (tag!7208 (rule!9222 (h!46410 prefixTokens!80)))) (inv!55151 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) e!2388840))))

(declare-fun b!3863512 () Bool)

(declare-fun e!2388851 () Bool)

(declare-fun tp!1171289 () Bool)

(declare-fun inv!21 (TokenValue!6578) Bool)

(assert (=> b!3863512 (= e!2388851 (and (inv!21 (value!201552 (h!46410 prefixTokens!80))) e!2388834 tp!1171289))))

(declare-fun b!3863513 () Bool)

(declare-fun res!1564570 () Bool)

(assert (=> b!3863513 (=> (not res!1564570) (not e!2388845))))

(declare-fun isEmpty!24294 (List!41113) Bool)

(assert (=> b!3863513 (= res!1564570 (not (isEmpty!24294 prefix!426)))))

(declare-fun b!3863514 () Bool)

(declare-fun res!1564571 () Bool)

(assert (=> b!3863514 (=> res!1564571 e!2388855)))

(assert (=> b!3863514 (= res!1564571 (or (not (= lt!1342858 (tuple2!40201 (_1!23234 lt!1342858) (_2!23234 lt!1342858)))) (= (_2!23233 (v!39063 lt!1342868)) suffix!1176)))))

(declare-fun b!3863515 () Bool)

(assert (=> b!3863515 (= e!2388847 e!2388844)))

(declare-fun res!1564576 () Bool)

(assert (=> b!3863515 (=> (not res!1564576) (not e!2388844))))

(get-info :version)

(assert (=> b!3863515 (= res!1564576 ((_ is Some!8765) lt!1342868))))

(declare-fun maxPrefix!3241 (LexerInterface!5937 List!41115 List!41113) Option!8766)

(assert (=> b!3863515 (= lt!1342868 (maxPrefix!3241 thiss!20629 rules!2768 lt!1342867))))

(declare-fun b!3863516 () Bool)

(declare-fun e!2388828 () Bool)

(declare-fun tp!1171299 () Bool)

(assert (=> b!3863516 (= e!2388828 (and (inv!55150 (h!46410 prefixTokens!80)) e!2388851 tp!1171299))))

(declare-fun e!2388835 () Bool)

(assert (=> b!3863517 (= e!2388835 (and tp!1171297 tp!1171301))))

(declare-fun b!3863518 () Bool)

(declare-fun res!1564569 () Bool)

(assert (=> b!3863518 (=> res!1564569 e!2388855)))

(declare-fun lt!1342854 () tuple2!40200)

(assert (=> b!3863518 (= res!1564569 (not (= lt!1342854 (tuple2!40201 (++!10453 (Cons!40990 (_1!23233 (v!39063 lt!1342868)) Nil!40990) (_1!23234 lt!1342858)) (_2!23234 lt!1342858)))))))

(declare-fun b!3863519 () Bool)

(declare-fun e!2388849 () Bool)

(declare-fun tp!1171292 () Bool)

(assert (=> b!3863519 (= e!2388849 (and e!2388853 tp!1171292))))

(declare-fun b!3863520 () Bool)

(assert (=> b!3863520 (= e!2388845 e!2388830)))

(declare-fun res!1564578 () Bool)

(assert (=> b!3863520 (=> (not res!1564578) (not e!2388830))))

(declare-fun lt!1342869 () List!41114)

(assert (=> b!3863520 (= res!1564578 (= lt!1342854 (tuple2!40201 lt!1342869 suffixResult!91)))))

(assert (=> b!3863520 (= lt!1342854 (lexList!1705 thiss!20629 rules!2768 lt!1342867))))

(assert (=> b!3863520 (= lt!1342869 (++!10453 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3863520 (= lt!1342867 (++!10454 prefix!426 suffix!1176))))

(declare-fun b!3863521 () Bool)

(declare-fun Unit!58659 () Unit!58655)

(assert (=> b!3863521 (= e!2388856 Unit!58659)))

(declare-fun res!1564566 () Bool)

(assert (=> start!362332 (=> (not res!1564566) (not e!2388845))))

(assert (=> start!362332 (= res!1564566 ((_ is Lexer!5935) thiss!20629))))

(assert (=> start!362332 e!2388845))

(assert (=> start!362332 e!2388837))

(assert (=> start!362332 true))

(assert (=> start!362332 e!2388846))

(assert (=> start!362332 e!2388849))

(assert (=> start!362332 e!2388828))

(assert (=> start!362332 e!2388829))

(assert (=> start!362332 e!2388831))

(declare-fun b!3863522 () Bool)

(declare-fun res!1564564 () Bool)

(assert (=> b!3863522 (=> (not res!1564564) (not e!2388845))))

(assert (=> b!3863522 (= res!1564564 (not (isEmpty!24292 prefixTokens!80)))))

(declare-fun b!3863523 () Bool)

(assert (=> b!3863523 (= e!2388855 e!2388839)))

(declare-fun res!1564577 () Bool)

(assert (=> b!3863523 (=> res!1564577 e!2388839)))

(assert (=> b!3863523 (= res!1564577 (>= lt!1342861 lt!1342851))))

(assert (=> b!3863523 (= lt!1342851 (size!30822 suffix!1176))))

(assert (=> b!3863523 (= lt!1342861 (size!30822 (_2!23233 (v!39063 lt!1342868))))))

(declare-fun b!3863524 () Bool)

(declare-fun e!2388842 () Bool)

(declare-fun tp!1171288 () Bool)

(assert (=> b!3863524 (= e!2388842 (and tp!1171288 (inv!55147 (tag!7208 (rule!9222 (h!46410 suffixTokens!72)))) (inv!55151 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) e!2388835))))

(declare-fun b!3863525 () Bool)

(declare-fun tp!1171298 () Bool)

(assert (=> b!3863525 (= e!2388843 (and (inv!21 (value!201552 (h!46410 suffixTokens!72))) e!2388842 tp!1171298))))

(declare-fun b!3863526 () Bool)

(assert (=> b!3863526 (= e!2388848 false)))

(assert (= (and start!362332 res!1564566) b!3863506))

(assert (= (and b!3863506 res!1564572) b!3863498))

(assert (= (and b!3863498 res!1564581) b!3863522))

(assert (= (and b!3863522 res!1564564) b!3863513))

(assert (= (and b!3863513 res!1564570) b!3863520))

(assert (= (and b!3863520 res!1564578) b!3863507))

(assert (= (and b!3863507 res!1564565) b!3863515))

(assert (= (and b!3863515 res!1564576) b!3863509))

(assert (= (and b!3863509 res!1564568) b!3863490))

(assert (= (and b!3863509 (not res!1564574)) b!3863518))

(assert (= (and b!3863518 (not res!1564569)) b!3863514))

(assert (= (and b!3863514 (not res!1564571)) b!3863523))

(assert (= (and b!3863523 (not res!1564577)) b!3863501))

(assert (= (and b!3863501 (not res!1564580)) b!3863494))

(assert (= (and b!3863494 (not res!1564582)) b!3863493))

(assert (= (and b!3863493 (not res!1564567)) b!3863496))

(assert (= (and b!3863496 (not res!1564575)) b!3863504))

(assert (= (and b!3863504 c!672501) b!3863491))

(assert (= (and b!3863504 (not c!672501)) b!3863521))

(assert (= (and b!3863491 c!672500) b!3863492))

(assert (= (and b!3863491 (not c!672500)) b!3863508))

(assert (= (and b!3863492 res!1564579) b!3863526))

(assert (= (and b!3863508 res!1564573) b!3863505))

(assert (= (or b!3863492 b!3863508) bm!282583))

(assert (= (and start!362332 ((_ is Cons!40989) suffixResult!91)) b!3863497))

(assert (= (and start!362332 ((_ is Cons!40989) suffix!1176)) b!3863510))

(assert (= b!3863503 b!3863500))

(assert (= b!3863519 b!3863503))

(assert (= (and start!362332 ((_ is Cons!40991) rules!2768)) b!3863519))

(assert (= b!3863511 b!3863502))

(assert (= b!3863512 b!3863511))

(assert (= b!3863516 b!3863512))

(assert (= (and start!362332 ((_ is Cons!40990) prefixTokens!80)) b!3863516))

(assert (= b!3863524 b!3863517))

(assert (= b!3863525 b!3863524))

(assert (= b!3863499 b!3863525))

(assert (= (and start!362332 ((_ is Cons!40990) suffixTokens!72)) b!3863499))

(assert (= (and start!362332 ((_ is Cons!40989) prefix!426)) b!3863495))

(declare-fun m!4418915 () Bool)

(assert (=> bm!282583 m!4418915))

(declare-fun m!4418917 () Bool)

(assert (=> b!3863492 m!4418917))

(declare-fun m!4418919 () Bool)

(assert (=> b!3863492 m!4418919))

(declare-fun m!4418921 () Bool)

(assert (=> b!3863494 m!4418921))

(declare-fun m!4418923 () Bool)

(assert (=> b!3863524 m!4418923))

(declare-fun m!4418925 () Bool)

(assert (=> b!3863524 m!4418925))

(declare-fun m!4418927 () Bool)

(assert (=> b!3863490 m!4418927))

(declare-fun m!4418929 () Bool)

(assert (=> b!3863518 m!4418929))

(declare-fun m!4418931 () Bool)

(assert (=> b!3863511 m!4418931))

(declare-fun m!4418933 () Bool)

(assert (=> b!3863511 m!4418933))

(declare-fun m!4418935 () Bool)

(assert (=> b!3863493 m!4418935))

(declare-fun m!4418937 () Bool)

(assert (=> b!3863493 m!4418937))

(declare-fun m!4418939 () Bool)

(assert (=> b!3863493 m!4418939))

(declare-fun m!4418941 () Bool)

(assert (=> b!3863507 m!4418941))

(declare-fun m!4418943 () Bool)

(assert (=> b!3863498 m!4418943))

(declare-fun m!4418945 () Bool)

(assert (=> b!3863496 m!4418945))

(declare-fun m!4418947 () Bool)

(assert (=> b!3863496 m!4418947))

(declare-fun m!4418949 () Bool)

(assert (=> b!3863499 m!4418949))

(declare-fun m!4418951 () Bool)

(assert (=> b!3863501 m!4418951))

(declare-fun m!4418953 () Bool)

(assert (=> b!3863513 m!4418953))

(declare-fun m!4418955 () Bool)

(assert (=> b!3863522 m!4418955))

(declare-fun m!4418957 () Bool)

(assert (=> b!3863516 m!4418957))

(declare-fun m!4418959 () Bool)

(assert (=> b!3863509 m!4418959))

(declare-fun m!4418961 () Bool)

(assert (=> b!3863509 m!4418961))

(declare-fun m!4418963 () Bool)

(assert (=> b!3863509 m!4418963))

(declare-fun m!4418965 () Bool)

(assert (=> b!3863509 m!4418965))

(declare-fun m!4418967 () Bool)

(assert (=> b!3863509 m!4418967))

(declare-fun m!4418969 () Bool)

(assert (=> b!3863509 m!4418969))

(declare-fun m!4418971 () Bool)

(assert (=> b!3863509 m!4418971))

(declare-fun m!4418973 () Bool)

(assert (=> b!3863509 m!4418973))

(declare-fun m!4418975 () Bool)

(assert (=> b!3863509 m!4418975))

(assert (=> b!3863509 m!4418973))

(declare-fun m!4418977 () Bool)

(assert (=> b!3863509 m!4418977))

(declare-fun m!4418979 () Bool)

(assert (=> b!3863509 m!4418979))

(declare-fun m!4418981 () Bool)

(assert (=> b!3863509 m!4418981))

(declare-fun m!4418983 () Bool)

(assert (=> b!3863509 m!4418983))

(assert (=> b!3863509 m!4418967))

(declare-fun m!4418985 () Bool)

(assert (=> b!3863509 m!4418985))

(declare-fun m!4418987 () Bool)

(assert (=> b!3863523 m!4418987))

(declare-fun m!4418989 () Bool)

(assert (=> b!3863523 m!4418989))

(declare-fun m!4418991 () Bool)

(assert (=> b!3863508 m!4418991))

(declare-fun m!4418993 () Bool)

(assert (=> b!3863508 m!4418993))

(declare-fun m!4418995 () Bool)

(assert (=> b!3863506 m!4418995))

(declare-fun m!4418997 () Bool)

(assert (=> b!3863512 m!4418997))

(declare-fun m!4418999 () Bool)

(assert (=> b!3863520 m!4418999))

(declare-fun m!4419001 () Bool)

(assert (=> b!3863520 m!4419001))

(declare-fun m!4419003 () Bool)

(assert (=> b!3863520 m!4419003))

(declare-fun m!4419005 () Bool)

(assert (=> b!3863525 m!4419005))

(declare-fun m!4419007 () Bool)

(assert (=> b!3863491 m!4419007))

(declare-fun m!4419009 () Bool)

(assert (=> b!3863491 m!4419009))

(declare-fun m!4419011 () Bool)

(assert (=> b!3863515 m!4419011))

(declare-fun m!4419013 () Bool)

(assert (=> b!3863503 m!4419013))

(declare-fun m!4419015 () Bool)

(assert (=> b!3863503 m!4419015))

(declare-fun m!4419017 () Bool)

(assert (=> b!3863504 m!4419017))

(declare-fun m!4419019 () Bool)

(assert (=> b!3863504 m!4419019))

(check-sat (not b_next!104713) (not b!3863523) b_and!289333 (not b!3863520) b_and!289329 (not b!3863504) (not b!3863503) (not b_next!104711) (not b!3863495) (not b!3863499) (not b!3863494) (not bm!282583) (not b!3863506) (not b!3863507) (not b!3863509) (not b!3863524) b_and!289323 (not b!3863516) (not b!3863519) (not b!3863491) (not b!3863512) (not b!3863513) b_and!289331 (not b_next!104719) (not b!3863515) (not b!3863501) (not b!3863522) (not b!3863518) tp_is_empty!19477 (not b_next!104717) (not b!3863525) (not b!3863511) (not b!3863493) (not b!3863498) (not b!3863497) (not b!3863496) (not b!3863492) b_and!289327 (not b!3863490) (not b_next!104715) b_and!289325 (not b!3863510) (not b!3863508) (not b_next!104709))
(check-sat b_and!289323 (not b_next!104713) b_and!289331 (not b_next!104719) b_and!289333 (not b_next!104717) b_and!289329 (not b_next!104711) b_and!289327 (not b_next!104709) (not b_next!104715) b_and!289325)
(get-model)

(declare-fun b!3863658 () Bool)

(declare-fun e!2388941 () Bool)

(declare-fun lt!1342924 () tuple2!40200)

(assert (=> b!3863658 (= e!2388941 (= (_2!23234 lt!1342924) lt!1342867))))

(declare-fun d!1144863 () Bool)

(assert (=> d!1144863 e!2388941))

(declare-fun c!672539 () Bool)

(declare-fun size!30824 (List!41114) Int)

(assert (=> d!1144863 (= c!672539 (> (size!30824 (_1!23234 lt!1342924)) 0))))

(declare-fun e!2388939 () tuple2!40200)

(assert (=> d!1144863 (= lt!1342924 e!2388939)))

(declare-fun c!672540 () Bool)

(declare-fun lt!1342923 () Option!8766)

(assert (=> d!1144863 (= c!672540 ((_ is Some!8765) lt!1342923))))

(assert (=> d!1144863 (= lt!1342923 (maxPrefix!3241 thiss!20629 rules!2768 lt!1342867))))

(assert (=> d!1144863 (= (lexList!1705 thiss!20629 rules!2768 lt!1342867) lt!1342924)))

(declare-fun b!3863659 () Bool)

(assert (=> b!3863659 (= e!2388939 (tuple2!40201 Nil!40990 lt!1342867))))

(declare-fun b!3863660 () Bool)

(declare-fun e!2388940 () Bool)

(assert (=> b!3863660 (= e!2388941 e!2388940)))

(declare-fun res!1564643 () Bool)

(assert (=> b!3863660 (= res!1564643 (< (size!30822 (_2!23234 lt!1342924)) (size!30822 lt!1342867)))))

(assert (=> b!3863660 (=> (not res!1564643) (not e!2388940))))

(declare-fun b!3863661 () Bool)

(assert (=> b!3863661 (= e!2388940 (not (isEmpty!24292 (_1!23234 lt!1342924))))))

(declare-fun b!3863662 () Bool)

(declare-fun lt!1342922 () tuple2!40200)

(assert (=> b!3863662 (= e!2388939 (tuple2!40201 (Cons!40990 (_1!23233 (v!39063 lt!1342923)) (_1!23234 lt!1342922)) (_2!23234 lt!1342922)))))

(assert (=> b!3863662 (= lt!1342922 (lexList!1705 thiss!20629 rules!2768 (_2!23233 (v!39063 lt!1342923))))))

(assert (= (and d!1144863 c!672540) b!3863662))

(assert (= (and d!1144863 (not c!672540)) b!3863659))

(assert (= (and d!1144863 c!672539) b!3863660))

(assert (= (and d!1144863 (not c!672539)) b!3863658))

(assert (= (and b!3863660 res!1564643) b!3863661))

(declare-fun m!4419173 () Bool)

(assert (=> d!1144863 m!4419173))

(assert (=> d!1144863 m!4419011))

(declare-fun m!4419175 () Bool)

(assert (=> b!3863660 m!4419175))

(assert (=> b!3863660 m!4418951))

(declare-fun m!4419177 () Bool)

(assert (=> b!3863661 m!4419177))

(declare-fun m!4419179 () Bool)

(assert (=> b!3863662 m!4419179))

(assert (=> b!3863520 d!1144863))

(declare-fun b!3863677 () Bool)

(declare-fun res!1564651 () Bool)

(declare-fun e!2388949 () Bool)

(assert (=> b!3863677 (=> (not res!1564651) (not e!2388949))))

(declare-fun lt!1342932 () List!41114)

(assert (=> b!3863677 (= res!1564651 (= (size!30824 lt!1342932) (+ (size!30824 prefixTokens!80) (size!30824 suffixTokens!72))))))

(declare-fun b!3863676 () Bool)

(declare-fun e!2388948 () List!41114)

(assert (=> b!3863676 (= e!2388948 (Cons!40990 (h!46410 prefixTokens!80) (++!10453 (t!313701 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3863675 () Bool)

(assert (=> b!3863675 (= e!2388948 suffixTokens!72)))

(declare-fun b!3863678 () Bool)

(assert (=> b!3863678 (= e!2388949 (or (not (= suffixTokens!72 Nil!40990)) (= lt!1342932 prefixTokens!80)))))

(declare-fun d!1144893 () Bool)

(assert (=> d!1144893 e!2388949))

(declare-fun res!1564650 () Bool)

(assert (=> d!1144893 (=> (not res!1564650) (not e!2388949))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6116 (List!41114) (InoxSet Token!11834))

(assert (=> d!1144893 (= res!1564650 (= (content!6116 lt!1342932) ((_ map or) (content!6116 prefixTokens!80) (content!6116 suffixTokens!72))))))

(assert (=> d!1144893 (= lt!1342932 e!2388948)))

(declare-fun c!672544 () Bool)

(assert (=> d!1144893 (= c!672544 ((_ is Nil!40990) prefixTokens!80))))

(assert (=> d!1144893 (= (++!10453 prefixTokens!80 suffixTokens!72) lt!1342932)))

(assert (= (and d!1144893 c!672544) b!3863675))

(assert (= (and d!1144893 (not c!672544)) b!3863676))

(assert (= (and d!1144893 res!1564650) b!3863677))

(assert (= (and b!3863677 res!1564651) b!3863678))

(declare-fun m!4419195 () Bool)

(assert (=> b!3863677 m!4419195))

(declare-fun m!4419197 () Bool)

(assert (=> b!3863677 m!4419197))

(declare-fun m!4419199 () Bool)

(assert (=> b!3863677 m!4419199))

(declare-fun m!4419201 () Bool)

(assert (=> b!3863676 m!4419201))

(declare-fun m!4419203 () Bool)

(assert (=> d!1144893 m!4419203))

(declare-fun m!4419205 () Bool)

(assert (=> d!1144893 m!4419205))

(declare-fun m!4419207 () Bool)

(assert (=> d!1144893 m!4419207))

(assert (=> b!3863520 d!1144893))

(declare-fun b!3863696 () Bool)

(declare-fun e!2388960 () List!41113)

(assert (=> b!3863696 (= e!2388960 (Cons!40989 (h!46409 prefix!426) (++!10454 (t!313700 prefix!426) suffix!1176)))))

(declare-fun b!3863697 () Bool)

(declare-fun res!1564658 () Bool)

(declare-fun e!2388959 () Bool)

(assert (=> b!3863697 (=> (not res!1564658) (not e!2388959))))

(declare-fun lt!1342942 () List!41113)

(assert (=> b!3863697 (= res!1564658 (= (size!30822 lt!1342942) (+ (size!30822 prefix!426) (size!30822 suffix!1176))))))

(declare-fun d!1144903 () Bool)

(assert (=> d!1144903 e!2388959))

(declare-fun res!1564659 () Bool)

(assert (=> d!1144903 (=> (not res!1564659) (not e!2388959))))

(declare-fun content!6117 (List!41113) (InoxSet C!22692))

(assert (=> d!1144903 (= res!1564659 (= (content!6117 lt!1342942) ((_ map or) (content!6117 prefix!426) (content!6117 suffix!1176))))))

(assert (=> d!1144903 (= lt!1342942 e!2388960)))

(declare-fun c!672550 () Bool)

(assert (=> d!1144903 (= c!672550 ((_ is Nil!40989) prefix!426))))

(assert (=> d!1144903 (= (++!10454 prefix!426 suffix!1176) lt!1342942)))

(declare-fun b!3863698 () Bool)

(assert (=> b!3863698 (= e!2388959 (or (not (= suffix!1176 Nil!40989)) (= lt!1342942 prefix!426)))))

(declare-fun b!3863695 () Bool)

(assert (=> b!3863695 (= e!2388960 suffix!1176)))

(assert (= (and d!1144903 c!672550) b!3863695))

(assert (= (and d!1144903 (not c!672550)) b!3863696))

(assert (= (and d!1144903 res!1564659) b!3863697))

(assert (= (and b!3863697 res!1564658) b!3863698))

(declare-fun m!4419227 () Bool)

(assert (=> b!3863696 m!4419227))

(declare-fun m!4419229 () Bool)

(assert (=> b!3863697 m!4419229))

(assert (=> b!3863697 m!4418921))

(assert (=> b!3863697 m!4418987))

(declare-fun m!4419231 () Bool)

(assert (=> d!1144903 m!4419231))

(declare-fun m!4419233 () Bool)

(assert (=> d!1144903 m!4419233))

(declare-fun m!4419235 () Bool)

(assert (=> d!1144903 m!4419235))

(assert (=> b!3863520 d!1144903))

(declare-fun d!1144919 () Bool)

(assert (=> d!1144919 (= (isEmpty!24292 prefixTokens!80) ((_ is Nil!40990) prefixTokens!80))))

(assert (=> b!3863522 d!1144919))

(declare-fun d!1144921 () Bool)

(declare-fun lt!1342948 () Int)

(assert (=> d!1144921 (>= lt!1342948 0)))

(declare-fun e!2388984 () Int)

(assert (=> d!1144921 (= lt!1342948 e!2388984)))

(declare-fun c!672562 () Bool)

(assert (=> d!1144921 (= c!672562 ((_ is Nil!40989) lt!1342867))))

(assert (=> d!1144921 (= (size!30822 lt!1342867) lt!1342948)))

(declare-fun b!3863745 () Bool)

(assert (=> b!3863745 (= e!2388984 0)))

(declare-fun b!3863746 () Bool)

(assert (=> b!3863746 (= e!2388984 (+ 1 (size!30822 (t!313700 lt!1342867))))))

(assert (= (and d!1144921 c!672562) b!3863745))

(assert (= (and d!1144921 (not c!672562)) b!3863746))

(declare-fun m!4419245 () Bool)

(assert (=> b!3863746 m!4419245))

(assert (=> b!3863501 d!1144921))

(declare-fun d!1144925 () Bool)

(declare-fun res!1564686 () Bool)

(declare-fun e!2388987 () Bool)

(assert (=> d!1144925 (=> (not res!1564686) (not e!2388987))))

(declare-fun rulesValid!2457 (LexerInterface!5937 List!41115) Bool)

(assert (=> d!1144925 (= res!1564686 (rulesValid!2457 thiss!20629 rules!2768))))

(assert (=> d!1144925 (= (rulesInvariant!5280 thiss!20629 rules!2768) e!2388987)))

(declare-fun b!3863749 () Bool)

(declare-datatypes ((List!41116 0))(
  ( (Nil!40992) (Cons!40992 (h!46412 String!46608) (t!313799 List!41116)) )
))
(declare-fun noDuplicateTag!2458 (LexerInterface!5937 List!41115 List!41116) Bool)

(assert (=> b!3863749 (= e!2388987 (noDuplicateTag!2458 thiss!20629 rules!2768 Nil!40992))))

(assert (= (and d!1144925 res!1564686) b!3863749))

(declare-fun m!4419247 () Bool)

(assert (=> d!1144925 m!4419247))

(declare-fun m!4419249 () Bool)

(assert (=> b!3863749 m!4419249))

(assert (=> b!3863498 d!1144925))

(declare-fun b!3863752 () Bool)

(declare-fun res!1564688 () Bool)

(declare-fun e!2388989 () Bool)

(assert (=> b!3863752 (=> (not res!1564688) (not e!2388989))))

(declare-fun lt!1342949 () List!41114)

(assert (=> b!3863752 (= res!1564688 (= (size!30824 lt!1342949) (+ (size!30824 (Cons!40990 (_1!23233 (v!39063 lt!1342868)) Nil!40990)) (size!30824 (_1!23234 lt!1342858)))))))

(declare-fun b!3863751 () Bool)

(declare-fun e!2388988 () List!41114)

(assert (=> b!3863751 (= e!2388988 (Cons!40990 (h!46410 (Cons!40990 (_1!23233 (v!39063 lt!1342868)) Nil!40990)) (++!10453 (t!313701 (Cons!40990 (_1!23233 (v!39063 lt!1342868)) Nil!40990)) (_1!23234 lt!1342858))))))

(declare-fun b!3863750 () Bool)

(assert (=> b!3863750 (= e!2388988 (_1!23234 lt!1342858))))

(declare-fun b!3863753 () Bool)

(assert (=> b!3863753 (= e!2388989 (or (not (= (_1!23234 lt!1342858) Nil!40990)) (= lt!1342949 (Cons!40990 (_1!23233 (v!39063 lt!1342868)) Nil!40990))))))

(declare-fun d!1144927 () Bool)

(assert (=> d!1144927 e!2388989))

(declare-fun res!1564687 () Bool)

(assert (=> d!1144927 (=> (not res!1564687) (not e!2388989))))

(assert (=> d!1144927 (= res!1564687 (= (content!6116 lt!1342949) ((_ map or) (content!6116 (Cons!40990 (_1!23233 (v!39063 lt!1342868)) Nil!40990)) (content!6116 (_1!23234 lt!1342858)))))))

(assert (=> d!1144927 (= lt!1342949 e!2388988)))

(declare-fun c!672563 () Bool)

(assert (=> d!1144927 (= c!672563 ((_ is Nil!40990) (Cons!40990 (_1!23233 (v!39063 lt!1342868)) Nil!40990)))))

(assert (=> d!1144927 (= (++!10453 (Cons!40990 (_1!23233 (v!39063 lt!1342868)) Nil!40990) (_1!23234 lt!1342858)) lt!1342949)))

(assert (= (and d!1144927 c!672563) b!3863750))

(assert (= (and d!1144927 (not c!672563)) b!3863751))

(assert (= (and d!1144927 res!1564687) b!3863752))

(assert (= (and b!3863752 res!1564688) b!3863753))

(declare-fun m!4419251 () Bool)

(assert (=> b!3863752 m!4419251))

(declare-fun m!4419253 () Bool)

(assert (=> b!3863752 m!4419253))

(declare-fun m!4419255 () Bool)

(assert (=> b!3863752 m!4419255))

(declare-fun m!4419257 () Bool)

(assert (=> b!3863751 m!4419257))

(declare-fun m!4419259 () Bool)

(assert (=> d!1144927 m!4419259))

(declare-fun m!4419261 () Bool)

(assert (=> d!1144927 m!4419261))

(declare-fun m!4419263 () Bool)

(assert (=> d!1144927 m!4419263))

(assert (=> b!3863518 d!1144927))

(declare-fun d!1144929 () Bool)

(declare-fun res!1564693 () Bool)

(declare-fun e!2388992 () Bool)

(assert (=> d!1144929 (=> (not res!1564693) (not e!2388992))))

(assert (=> d!1144929 (= res!1564693 (not (isEmpty!24294 (originalCharacters!6948 (h!46410 suffixTokens!72)))))))

(assert (=> d!1144929 (= (inv!55150 (h!46410 suffixTokens!72)) e!2388992)))

(declare-fun b!3863758 () Bool)

(declare-fun res!1564694 () Bool)

(assert (=> b!3863758 (=> (not res!1564694) (not e!2388992))))

(declare-fun dynLambda!17669 (Int TokenValue!6578) BalanceConc!24712)

(assert (=> b!3863758 (= res!1564694 (= (originalCharacters!6948 (h!46410 suffixTokens!72)) (list!15254 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (value!201552 (h!46410 suffixTokens!72))))))))

(declare-fun b!3863759 () Bool)

(assert (=> b!3863759 (= e!2388992 (= (size!30821 (h!46410 suffixTokens!72)) (size!30822 (originalCharacters!6948 (h!46410 suffixTokens!72)))))))

(assert (= (and d!1144929 res!1564693) b!3863758))

(assert (= (and b!3863758 res!1564694) b!3863759))

(declare-fun b_lambda!112917 () Bool)

(assert (=> (not b_lambda!112917) (not b!3863758)))

(declare-fun t!313722 () Bool)

(declare-fun tb!223907 () Bool)

(assert (=> (and b!3863500 (= (toChars!8635 (transformation!6348 (h!46411 rules!2768))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72))))) t!313722) tb!223907))

(declare-fun b!3863764 () Bool)

(declare-fun e!2388995 () Bool)

(declare-fun tp!1171309 () Bool)

(declare-fun inv!55154 (Conc!12559) Bool)

(assert (=> b!3863764 (= e!2388995 (and (inv!55154 (c!672503 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (value!201552 (h!46410 suffixTokens!72))))) tp!1171309))))

(declare-fun result!272696 () Bool)

(declare-fun inv!55155 (BalanceConc!24712) Bool)

(assert (=> tb!223907 (= result!272696 (and (inv!55155 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (value!201552 (h!46410 suffixTokens!72)))) e!2388995))))

(assert (= tb!223907 b!3863764))

(declare-fun m!4419265 () Bool)

(assert (=> b!3863764 m!4419265))

(declare-fun m!4419267 () Bool)

(assert (=> tb!223907 m!4419267))

(assert (=> b!3863758 t!313722))

(declare-fun b_and!289353 () Bool)

(assert (= b_and!289325 (and (=> t!313722 result!272696) b_and!289353)))

(declare-fun tb!223909 () Bool)

(declare-fun t!313724 () Bool)

(assert (=> (and b!3863502 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72))))) t!313724) tb!223909))

(declare-fun result!272700 () Bool)

(assert (= result!272700 result!272696))

(assert (=> b!3863758 t!313724))

(declare-fun b_and!289355 () Bool)

(assert (= b_and!289329 (and (=> t!313724 result!272700) b_and!289355)))

(declare-fun t!313726 () Bool)

(declare-fun tb!223911 () Bool)

(assert (=> (and b!3863517 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72))))) t!313726) tb!223911))

(declare-fun result!272702 () Bool)

(assert (= result!272702 result!272696))

(assert (=> b!3863758 t!313726))

(declare-fun b_and!289357 () Bool)

(assert (= b_and!289333 (and (=> t!313726 result!272702) b_and!289357)))

(declare-fun m!4419269 () Bool)

(assert (=> d!1144929 m!4419269))

(declare-fun m!4419271 () Bool)

(assert (=> b!3863758 m!4419271))

(assert (=> b!3863758 m!4419271))

(declare-fun m!4419273 () Bool)

(assert (=> b!3863758 m!4419273))

(declare-fun m!4419275 () Bool)

(assert (=> b!3863759 m!4419275))

(assert (=> b!3863499 d!1144929))

(declare-fun b!3863765 () Bool)

(declare-fun e!2388998 () Bool)

(declare-fun lt!1342952 () tuple2!40200)

(assert (=> b!3863765 (= e!2388998 (= (_2!23234 lt!1342952) (_2!23233 lt!1342865)))))

(declare-fun d!1144931 () Bool)

(assert (=> d!1144931 e!2388998))

(declare-fun c!672564 () Bool)

(assert (=> d!1144931 (= c!672564 (> (size!30824 (_1!23234 lt!1342952)) 0))))

(declare-fun e!2388996 () tuple2!40200)

(assert (=> d!1144931 (= lt!1342952 e!2388996)))

(declare-fun c!672565 () Bool)

(declare-fun lt!1342951 () Option!8766)

(assert (=> d!1144931 (= c!672565 ((_ is Some!8765) lt!1342951))))

(assert (=> d!1144931 (= lt!1342951 (maxPrefix!3241 thiss!20629 rules!2768 (_2!23233 lt!1342865)))))

(assert (=> d!1144931 (= (lexList!1705 thiss!20629 rules!2768 (_2!23233 lt!1342865)) lt!1342952)))

(declare-fun b!3863766 () Bool)

(assert (=> b!3863766 (= e!2388996 (tuple2!40201 Nil!40990 (_2!23233 lt!1342865)))))

(declare-fun b!3863767 () Bool)

(declare-fun e!2388997 () Bool)

(assert (=> b!3863767 (= e!2388998 e!2388997)))

(declare-fun res!1564695 () Bool)

(assert (=> b!3863767 (= res!1564695 (< (size!30822 (_2!23234 lt!1342952)) (size!30822 (_2!23233 lt!1342865))))))

(assert (=> b!3863767 (=> (not res!1564695) (not e!2388997))))

(declare-fun b!3863768 () Bool)

(assert (=> b!3863768 (= e!2388997 (not (isEmpty!24292 (_1!23234 lt!1342952))))))

(declare-fun b!3863769 () Bool)

(declare-fun lt!1342950 () tuple2!40200)

(assert (=> b!3863769 (= e!2388996 (tuple2!40201 (Cons!40990 (_1!23233 (v!39063 lt!1342951)) (_1!23234 lt!1342950)) (_2!23234 lt!1342950)))))

(assert (=> b!3863769 (= lt!1342950 (lexList!1705 thiss!20629 rules!2768 (_2!23233 (v!39063 lt!1342951))))))

(assert (= (and d!1144931 c!672565) b!3863769))

(assert (= (and d!1144931 (not c!672565)) b!3863766))

(assert (= (and d!1144931 c!672564) b!3863767))

(assert (= (and d!1144931 (not c!672564)) b!3863765))

(assert (= (and b!3863767 res!1564695) b!3863768))

(declare-fun m!4419277 () Bool)

(assert (=> d!1144931 m!4419277))

(declare-fun m!4419279 () Bool)

(assert (=> d!1144931 m!4419279))

(declare-fun m!4419281 () Bool)

(assert (=> b!3863767 m!4419281))

(assert (=> b!3863767 m!4419019))

(declare-fun m!4419283 () Bool)

(assert (=> b!3863768 m!4419283))

(declare-fun m!4419285 () Bool)

(assert (=> b!3863769 m!4419285))

(assert (=> bm!282583 d!1144931))

(declare-fun d!1144933 () Bool)

(assert (=> d!1144933 (= (isEmpty!24293 rules!2768) ((_ is Nil!40991) rules!2768))))

(assert (=> b!3863506 d!1144933))

(declare-fun d!1144935 () Bool)

(assert (=> d!1144935 (= (inv!55147 (tag!7208 (h!46411 rules!2768))) (= (mod (str.len (value!201551 (tag!7208 (h!46411 rules!2768)))) 2) 0))))

(assert (=> b!3863503 d!1144935))

(declare-fun d!1144937 () Bool)

(declare-fun res!1564698 () Bool)

(declare-fun e!2389001 () Bool)

(assert (=> d!1144937 (=> (not res!1564698) (not e!2389001))))

(declare-fun semiInverseModEq!2723 (Int Int) Bool)

(assert (=> d!1144937 (= res!1564698 (semiInverseModEq!2723 (toChars!8635 (transformation!6348 (h!46411 rules!2768))) (toValue!8776 (transformation!6348 (h!46411 rules!2768)))))))

(assert (=> d!1144937 (= (inv!55151 (transformation!6348 (h!46411 rules!2768))) e!2389001)))

(declare-fun b!3863772 () Bool)

(declare-fun equivClasses!2622 (Int Int) Bool)

(assert (=> b!3863772 (= e!2389001 (equivClasses!2622 (toChars!8635 (transformation!6348 (h!46411 rules!2768))) (toValue!8776 (transformation!6348 (h!46411 rules!2768)))))))

(assert (= (and d!1144937 res!1564698) b!3863772))

(declare-fun m!4419287 () Bool)

(assert (=> d!1144937 m!4419287))

(declare-fun m!4419289 () Bool)

(assert (=> b!3863772 m!4419289))

(assert (=> b!3863503 d!1144937))

(declare-fun d!1144939 () Bool)

(declare-fun lt!1342953 () Int)

(assert (=> d!1144939 (>= lt!1342953 0)))

(declare-fun e!2389002 () Int)

(assert (=> d!1144939 (= lt!1342953 e!2389002)))

(declare-fun c!672566 () Bool)

(assert (=> d!1144939 (= c!672566 ((_ is Nil!40989) suffix!1176))))

(assert (=> d!1144939 (= (size!30822 suffix!1176) lt!1342953)))

(declare-fun b!3863773 () Bool)

(assert (=> b!3863773 (= e!2389002 0)))

(declare-fun b!3863774 () Bool)

(assert (=> b!3863774 (= e!2389002 (+ 1 (size!30822 (t!313700 suffix!1176))))))

(assert (= (and d!1144939 c!672566) b!3863773))

(assert (= (and d!1144939 (not c!672566)) b!3863774))

(declare-fun m!4419291 () Bool)

(assert (=> b!3863774 m!4419291))

(assert (=> b!3863523 d!1144939))

(declare-fun d!1144941 () Bool)

(declare-fun lt!1342954 () Int)

(assert (=> d!1144941 (>= lt!1342954 0)))

(declare-fun e!2389003 () Int)

(assert (=> d!1144941 (= lt!1342954 e!2389003)))

(declare-fun c!672567 () Bool)

(assert (=> d!1144941 (= c!672567 ((_ is Nil!40989) (_2!23233 (v!39063 lt!1342868))))))

(assert (=> d!1144941 (= (size!30822 (_2!23233 (v!39063 lt!1342868))) lt!1342954)))

(declare-fun b!3863775 () Bool)

(assert (=> b!3863775 (= e!2389003 0)))

(declare-fun b!3863776 () Bool)

(assert (=> b!3863776 (= e!2389003 (+ 1 (size!30822 (t!313700 (_2!23233 (v!39063 lt!1342868))))))))

(assert (= (and d!1144941 c!672567) b!3863775))

(assert (= (and d!1144941 (not c!672567)) b!3863776))

(declare-fun m!4419293 () Bool)

(assert (=> b!3863776 m!4419293))

(assert (=> b!3863523 d!1144941))

(declare-fun d!1144943 () Bool)

(declare-fun c!672573 () Bool)

(assert (=> d!1144943 (= c!672573 ((_ is IntegerValue!19734) (value!201552 (h!46410 suffixTokens!72))))))

(declare-fun e!2389011 () Bool)

(assert (=> d!1144943 (= (inv!21 (value!201552 (h!46410 suffixTokens!72))) e!2389011)))

(declare-fun b!3863787 () Bool)

(declare-fun res!1564701 () Bool)

(declare-fun e!2389010 () Bool)

(assert (=> b!3863787 (=> res!1564701 e!2389010)))

(assert (=> b!3863787 (= res!1564701 (not ((_ is IntegerValue!19736) (value!201552 (h!46410 suffixTokens!72)))))))

(declare-fun e!2389012 () Bool)

(assert (=> b!3863787 (= e!2389012 e!2389010)))

(declare-fun b!3863788 () Bool)

(declare-fun inv!16 (TokenValue!6578) Bool)

(assert (=> b!3863788 (= e!2389011 (inv!16 (value!201552 (h!46410 suffixTokens!72))))))

(declare-fun b!3863789 () Bool)

(declare-fun inv!17 (TokenValue!6578) Bool)

(assert (=> b!3863789 (= e!2389012 (inv!17 (value!201552 (h!46410 suffixTokens!72))))))

(declare-fun b!3863790 () Bool)

(declare-fun inv!15 (TokenValue!6578) Bool)

(assert (=> b!3863790 (= e!2389010 (inv!15 (value!201552 (h!46410 suffixTokens!72))))))

(declare-fun b!3863791 () Bool)

(assert (=> b!3863791 (= e!2389011 e!2389012)))

(declare-fun c!672572 () Bool)

(assert (=> b!3863791 (= c!672572 ((_ is IntegerValue!19735) (value!201552 (h!46410 suffixTokens!72))))))

(assert (= (and d!1144943 c!672573) b!3863788))

(assert (= (and d!1144943 (not c!672573)) b!3863791))

(assert (= (and b!3863791 c!672572) b!3863789))

(assert (= (and b!3863791 (not c!672572)) b!3863787))

(assert (= (and b!3863787 (not res!1564701)) b!3863790))

(declare-fun m!4419295 () Bool)

(assert (=> b!3863788 m!4419295))

(declare-fun m!4419297 () Bool)

(assert (=> b!3863789 m!4419297))

(declare-fun m!4419299 () Bool)

(assert (=> b!3863790 m!4419299))

(assert (=> b!3863525 d!1144943))

(declare-fun d!1144945 () Bool)

(declare-fun isEmpty!24296 (Option!8766) Bool)

(assert (=> d!1144945 (= (isDefined!6871 lt!1342868) (not (isEmpty!24296 lt!1342868)))))

(declare-fun bs!583240 () Bool)

(assert (= bs!583240 d!1144945))

(declare-fun m!4419301 () Bool)

(assert (=> bs!583240 m!4419301))

(assert (=> b!3863504 d!1144945))

(declare-fun d!1144947 () Bool)

(declare-fun lt!1342955 () Int)

(assert (=> d!1144947 (>= lt!1342955 0)))

(declare-fun e!2389013 () Int)

(assert (=> d!1144947 (= lt!1342955 e!2389013)))

(declare-fun c!672574 () Bool)

(assert (=> d!1144947 (= c!672574 ((_ is Nil!40989) (_2!23233 lt!1342865)))))

(assert (=> d!1144947 (= (size!30822 (_2!23233 lt!1342865)) lt!1342955)))

(declare-fun b!3863792 () Bool)

(assert (=> b!3863792 (= e!2389013 0)))

(declare-fun b!3863793 () Bool)

(assert (=> b!3863793 (= e!2389013 (+ 1 (size!30822 (t!313700 (_2!23233 lt!1342865)))))))

(assert (= (and d!1144947 c!672574) b!3863792))

(assert (= (and d!1144947 (not c!672574)) b!3863793))

(declare-fun m!4419303 () Bool)

(assert (=> b!3863793 m!4419303))

(assert (=> b!3863504 d!1144947))

(declare-fun d!1144949 () Bool)

(assert (=> d!1144949 (= (inv!55147 (tag!7208 (rule!9222 (h!46410 suffixTokens!72)))) (= (mod (str.len (value!201551 (tag!7208 (rule!9222 (h!46410 suffixTokens!72))))) 2) 0))))

(assert (=> b!3863524 d!1144949))

(declare-fun d!1144951 () Bool)

(declare-fun res!1564702 () Bool)

(declare-fun e!2389014 () Bool)

(assert (=> d!1144951 (=> (not res!1564702) (not e!2389014))))

(assert (=> d!1144951 (= res!1564702 (semiInverseModEq!2723 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (toValue!8776 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72))))))))

(assert (=> d!1144951 (= (inv!55151 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) e!2389014)))

(declare-fun b!3863794 () Bool)

(assert (=> b!3863794 (= e!2389014 (equivClasses!2622 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (toValue!8776 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72))))))))

(assert (= (and d!1144951 res!1564702) b!3863794))

(declare-fun m!4419305 () Bool)

(assert (=> d!1144951 m!4419305))

(declare-fun m!4419307 () Bool)

(assert (=> b!3863794 m!4419307))

(assert (=> b!3863524 d!1144951))

(declare-fun d!1144953 () Bool)

(declare-fun lt!1342956 () Int)

(assert (=> d!1144953 (>= lt!1342956 0)))

(declare-fun e!2389015 () Int)

(assert (=> d!1144953 (= lt!1342956 e!2389015)))

(declare-fun c!672575 () Bool)

(assert (=> d!1144953 (= c!672575 ((_ is Nil!40989) (originalCharacters!6948 (_1!23233 (v!39063 lt!1342868)))))))

(assert (=> d!1144953 (= (size!30822 (originalCharacters!6948 (_1!23233 (v!39063 lt!1342868)))) lt!1342956)))

(declare-fun b!3863795 () Bool)

(assert (=> b!3863795 (= e!2389015 0)))

(declare-fun b!3863796 () Bool)

(assert (=> b!3863796 (= e!2389015 (+ 1 (size!30822 (t!313700 (originalCharacters!6948 (_1!23233 (v!39063 lt!1342868)))))))))

(assert (= (and d!1144953 c!672575) b!3863795))

(assert (= (and d!1144953 (not c!672575)) b!3863796))

(declare-fun m!4419309 () Bool)

(assert (=> b!3863796 m!4419309))

(assert (=> b!3863490 d!1144953))

(declare-fun d!1144955 () Bool)

(assert (=> d!1144955 (= (tail!5869 prefixTokens!80) (t!313701 prefixTokens!80))))

(assert (=> b!3863491 d!1144955))

(declare-fun d!1144957 () Bool)

(assert (=> d!1144957 (= (isEmpty!24292 lt!1342862) ((_ is Nil!40990) lt!1342862))))

(assert (=> b!3863491 d!1144957))

(declare-fun d!1144959 () Bool)

(assert (=> d!1144959 (= (inv!55147 (tag!7208 (rule!9222 (h!46410 prefixTokens!80)))) (= (mod (str.len (value!201551 (tag!7208 (rule!9222 (h!46410 prefixTokens!80))))) 2) 0))))

(assert (=> b!3863511 d!1144959))

(declare-fun d!1144961 () Bool)

(declare-fun res!1564703 () Bool)

(declare-fun e!2389016 () Bool)

(assert (=> d!1144961 (=> (not res!1564703) (not e!2389016))))

(assert (=> d!1144961 (= res!1564703 (semiInverseModEq!2723 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (toValue!8776 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80))))))))

(assert (=> d!1144961 (= (inv!55151 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) e!2389016)))

(declare-fun b!3863797 () Bool)

(assert (=> b!3863797 (= e!2389016 (equivClasses!2622 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (toValue!8776 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80))))))))

(assert (= (and d!1144961 res!1564703) b!3863797))

(declare-fun m!4419311 () Bool)

(assert (=> d!1144961 m!4419311))

(declare-fun m!4419313 () Bool)

(assert (=> b!3863797 m!4419313))

(assert (=> b!3863511 d!1144961))

(declare-fun b!3863798 () Bool)

(declare-fun e!2389019 () Bool)

(declare-fun lt!1342959 () tuple2!40200)

(assert (=> b!3863798 (= e!2389019 (= (_2!23234 lt!1342959) suffix!1176))))

(declare-fun d!1144963 () Bool)

(assert (=> d!1144963 e!2389019))

(declare-fun c!672576 () Bool)

(assert (=> d!1144963 (= c!672576 (> (size!30824 (_1!23234 lt!1342959)) 0))))

(declare-fun e!2389017 () tuple2!40200)

(assert (=> d!1144963 (= lt!1342959 e!2389017)))

(declare-fun c!672577 () Bool)

(declare-fun lt!1342958 () Option!8766)

(assert (=> d!1144963 (= c!672577 ((_ is Some!8765) lt!1342958))))

(assert (=> d!1144963 (= lt!1342958 (maxPrefix!3241 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1144963 (= (lexList!1705 thiss!20629 rules!2768 suffix!1176) lt!1342959)))

(declare-fun b!3863799 () Bool)

(assert (=> b!3863799 (= e!2389017 (tuple2!40201 Nil!40990 suffix!1176))))

(declare-fun b!3863800 () Bool)

(declare-fun e!2389018 () Bool)

(assert (=> b!3863800 (= e!2389019 e!2389018)))

(declare-fun res!1564704 () Bool)

(assert (=> b!3863800 (= res!1564704 (< (size!30822 (_2!23234 lt!1342959)) (size!30822 suffix!1176)))))

(assert (=> b!3863800 (=> (not res!1564704) (not e!2389018))))

(declare-fun b!3863801 () Bool)

(assert (=> b!3863801 (= e!2389018 (not (isEmpty!24292 (_1!23234 lt!1342959))))))

(declare-fun b!3863802 () Bool)

(declare-fun lt!1342957 () tuple2!40200)

(assert (=> b!3863802 (= e!2389017 (tuple2!40201 (Cons!40990 (_1!23233 (v!39063 lt!1342958)) (_1!23234 lt!1342957)) (_2!23234 lt!1342957)))))

(assert (=> b!3863802 (= lt!1342957 (lexList!1705 thiss!20629 rules!2768 (_2!23233 (v!39063 lt!1342958))))))

(assert (= (and d!1144963 c!672577) b!3863802))

(assert (= (and d!1144963 (not c!672577)) b!3863799))

(assert (= (and d!1144963 c!672576) b!3863800))

(assert (= (and d!1144963 (not c!672576)) b!3863798))

(assert (= (and b!3863800 res!1564704) b!3863801))

(declare-fun m!4419315 () Bool)

(assert (=> d!1144963 m!4419315))

(declare-fun m!4419317 () Bool)

(assert (=> d!1144963 m!4419317))

(declare-fun m!4419319 () Bool)

(assert (=> b!3863800 m!4419319))

(assert (=> b!3863800 m!4418987))

(declare-fun m!4419321 () Bool)

(assert (=> b!3863801 m!4419321))

(declare-fun m!4419323 () Bool)

(assert (=> b!3863802 m!4419323))

(assert (=> b!3863507 d!1144963))

(declare-fun d!1144965 () Bool)

(assert (=> d!1144965 (ruleValid!2300 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))

(declare-fun lt!1342972 () Unit!58655)

(declare-fun choose!22766 (LexerInterface!5937 Rule!12496 List!41115) Unit!58655)

(assert (=> d!1144965 (= lt!1342972 (choose!22766 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))) rules!2768))))

(declare-fun contains!8275 (List!41115 Rule!12496) Bool)

(assert (=> d!1144965 (contains!8275 rules!2768 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))

(assert (=> d!1144965 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1380 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))) rules!2768) lt!1342972)))

(declare-fun bs!583241 () Bool)

(assert (= bs!583241 d!1144965))

(assert (=> bs!583241 m!4418977))

(declare-fun m!4419325 () Bool)

(assert (=> bs!583241 m!4419325))

(declare-fun m!4419327 () Bool)

(assert (=> bs!583241 m!4419327))

(assert (=> b!3863509 d!1144965))

(declare-fun d!1144967 () Bool)

(assert (=> d!1144967 (= (size!30821 (_1!23233 (v!39063 lt!1342868))) (size!30822 (originalCharacters!6948 (_1!23233 (v!39063 lt!1342868)))))))

(declare-fun Unit!58661 () Unit!58655)

(assert (=> d!1144967 (= (lemmaCharactersSize!1009 (_1!23233 (v!39063 lt!1342868))) Unit!58661)))

(declare-fun bs!583242 () Bool)

(assert (= bs!583242 d!1144967))

(assert (=> bs!583242 m!4418927))

(assert (=> b!3863509 d!1144967))

(declare-fun d!1144969 () Bool)

(declare-fun fromListB!2133 (List!41113) BalanceConc!24712)

(assert (=> d!1144969 (= (seqFromList!4619 lt!1342857) (fromListB!2133 lt!1342857))))

(declare-fun bs!583243 () Bool)

(assert (= bs!583243 d!1144969))

(declare-fun m!4419343 () Bool)

(assert (=> bs!583243 m!4419343))

(assert (=> b!3863509 d!1144969))

(declare-fun d!1144971 () Bool)

(assert (=> d!1144971 (= (_2!23233 (v!39063 lt!1342868)) lt!1342846)))

(declare-fun lt!1342980 () Unit!58655)

(declare-fun choose!22767 (List!41113 List!41113 List!41113 List!41113 List!41113) Unit!58655)

(assert (=> d!1144971 (= lt!1342980 (choose!22767 lt!1342857 (_2!23233 (v!39063 lt!1342868)) lt!1342857 lt!1342846 lt!1342867))))

(assert (=> d!1144971 (isPrefix!3447 lt!1342857 lt!1342867)))

(assert (=> d!1144971 (= (lemmaSamePrefixThenSameSuffix!1668 lt!1342857 (_2!23233 (v!39063 lt!1342868)) lt!1342857 lt!1342846 lt!1342867) lt!1342980)))

(declare-fun bs!583244 () Bool)

(assert (= bs!583244 d!1144971))

(declare-fun m!4419373 () Bool)

(assert (=> bs!583244 m!4419373))

(declare-fun m!4419375 () Bool)

(assert (=> bs!583244 m!4419375))

(assert (=> b!3863509 d!1144971))

(declare-fun d!1144975 () Bool)

(declare-fun dynLambda!17670 (Int BalanceConc!24712) TokenValue!6578)

(assert (=> d!1144975 (= (apply!9591 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (seqFromList!4619 lt!1342857)) (dynLambda!17670 (toValue!8776 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))) (seqFromList!4619 lt!1342857)))))

(declare-fun b_lambda!112919 () Bool)

(assert (=> (not b_lambda!112919) (not d!1144975)))

(declare-fun t!313728 () Bool)

(declare-fun tb!223913 () Bool)

(assert (=> (and b!3863500 (= (toValue!8776 (transformation!6348 (h!46411 rules!2768))) (toValue!8776 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313728) tb!223913))

(declare-fun result!272704 () Bool)

(assert (=> tb!223913 (= result!272704 (inv!21 (dynLambda!17670 (toValue!8776 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))) (seqFromList!4619 lt!1342857))))))

(declare-fun m!4419377 () Bool)

(assert (=> tb!223913 m!4419377))

(assert (=> d!1144975 t!313728))

(declare-fun b_and!289359 () Bool)

(assert (= b_and!289323 (and (=> t!313728 result!272704) b_and!289359)))

(declare-fun t!313730 () Bool)

(declare-fun tb!223915 () Bool)

(assert (=> (and b!3863502 (= (toValue!8776 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (toValue!8776 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313730) tb!223915))

(declare-fun result!272708 () Bool)

(assert (= result!272708 result!272704))

(assert (=> d!1144975 t!313730))

(declare-fun b_and!289361 () Bool)

(assert (= b_and!289327 (and (=> t!313730 result!272708) b_and!289361)))

(declare-fun t!313732 () Bool)

(declare-fun tb!223917 () Bool)

(assert (=> (and b!3863517 (= (toValue!8776 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (toValue!8776 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313732) tb!223917))

(declare-fun result!272710 () Bool)

(assert (= result!272710 result!272704))

(assert (=> d!1144975 t!313732))

(declare-fun b_and!289363 () Bool)

(assert (= b_and!289331 (and (=> t!313732 result!272710) b_and!289363)))

(assert (=> d!1144975 m!4418967))

(declare-fun m!4419379 () Bool)

(assert (=> d!1144975 m!4419379))

(assert (=> b!3863509 d!1144975))

(declare-fun d!1144977 () Bool)

(declare-fun lt!1342981 () Int)

(assert (=> d!1144977 (>= lt!1342981 0)))

(declare-fun e!2389035 () Int)

(assert (=> d!1144977 (= lt!1342981 e!2389035)))

(declare-fun c!672581 () Bool)

(assert (=> d!1144977 (= c!672581 ((_ is Nil!40989) lt!1342857))))

(assert (=> d!1144977 (= (size!30822 lt!1342857) lt!1342981)))

(declare-fun b!3863832 () Bool)

(assert (=> b!3863832 (= e!2389035 0)))

(declare-fun b!3863833 () Bool)

(assert (=> b!3863833 (= e!2389035 (+ 1 (size!30822 (t!313700 lt!1342857))))))

(assert (= (and d!1144977 c!672581) b!3863832))

(assert (= (and d!1144977 (not c!672581)) b!3863833))

(declare-fun m!4419381 () Bool)

(assert (=> b!3863833 m!4419381))

(assert (=> b!3863509 d!1144977))

(declare-fun d!1144979 () Bool)

(declare-fun lt!1342984 () BalanceConc!24712)

(assert (=> d!1144979 (= (list!15254 lt!1342984) (originalCharacters!6948 (_1!23233 (v!39063 lt!1342868))))))

(assert (=> d!1144979 (= lt!1342984 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))) (value!201552 (_1!23233 (v!39063 lt!1342868)))))))

(assert (=> d!1144979 (= (charsOf!4176 (_1!23233 (v!39063 lt!1342868))) lt!1342984)))

(declare-fun b_lambda!112921 () Bool)

(assert (=> (not b_lambda!112921) (not d!1144979)))

(declare-fun tb!223919 () Bool)

(declare-fun t!313734 () Bool)

(assert (=> (and b!3863500 (= (toChars!8635 (transformation!6348 (h!46411 rules!2768))) (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313734) tb!223919))

(declare-fun b!3863834 () Bool)

(declare-fun e!2389036 () Bool)

(declare-fun tp!1171310 () Bool)

(assert (=> b!3863834 (= e!2389036 (and (inv!55154 (c!672503 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))) (value!201552 (_1!23233 (v!39063 lt!1342868)))))) tp!1171310))))

(declare-fun result!272712 () Bool)

(assert (=> tb!223919 (= result!272712 (and (inv!55155 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))) (value!201552 (_1!23233 (v!39063 lt!1342868))))) e!2389036))))

(assert (= tb!223919 b!3863834))

(declare-fun m!4419383 () Bool)

(assert (=> b!3863834 m!4419383))

(declare-fun m!4419385 () Bool)

(assert (=> tb!223919 m!4419385))

(assert (=> d!1144979 t!313734))

(declare-fun b_and!289365 () Bool)

(assert (= b_and!289353 (and (=> t!313734 result!272712) b_and!289365)))

(declare-fun tb!223921 () Bool)

(declare-fun t!313736 () Bool)

(assert (=> (and b!3863502 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313736) tb!223921))

(declare-fun result!272714 () Bool)

(assert (= result!272714 result!272712))

(assert (=> d!1144979 t!313736))

(declare-fun b_and!289367 () Bool)

(assert (= b_and!289355 (and (=> t!313736 result!272714) b_and!289367)))

(declare-fun tb!223923 () Bool)

(declare-fun t!313738 () Bool)

(assert (=> (and b!3863517 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313738) tb!223923))

(declare-fun result!272716 () Bool)

(assert (= result!272716 result!272712))

(assert (=> d!1144979 t!313738))

(declare-fun b_and!289369 () Bool)

(assert (= b_and!289357 (and (=> t!313738 result!272716) b_and!289369)))

(declare-fun m!4419387 () Bool)

(assert (=> d!1144979 m!4419387))

(declare-fun m!4419389 () Bool)

(assert (=> d!1144979 m!4419389))

(assert (=> b!3863509 d!1144979))

(declare-fun d!1144981 () Bool)

(declare-fun lt!1342990 () List!41113)

(assert (=> d!1144981 (= (++!10454 lt!1342857 lt!1342990) lt!1342867)))

(declare-fun e!2389042 () List!41113)

(assert (=> d!1144981 (= lt!1342990 e!2389042)))

(declare-fun c!672586 () Bool)

(assert (=> d!1144981 (= c!672586 ((_ is Cons!40989) lt!1342857))))

(assert (=> d!1144981 (>= (size!30822 lt!1342867) (size!30822 lt!1342857))))

(assert (=> d!1144981 (= (getSuffix!1902 lt!1342867 lt!1342857) lt!1342990)))

(declare-fun b!3863844 () Bool)

(declare-fun tail!5871 (List!41113) List!41113)

(assert (=> b!3863844 (= e!2389042 (getSuffix!1902 (tail!5871 lt!1342867) (t!313700 lt!1342857)))))

(declare-fun b!3863845 () Bool)

(assert (=> b!3863845 (= e!2389042 lt!1342867)))

(assert (= (and d!1144981 c!672586) b!3863844))

(assert (= (and d!1144981 (not c!672586)) b!3863845))

(declare-fun m!4419399 () Bool)

(assert (=> d!1144981 m!4419399))

(assert (=> d!1144981 m!4418951))

(assert (=> d!1144981 m!4418979))

(declare-fun m!4419401 () Bool)

(assert (=> b!3863844 m!4419401))

(assert (=> b!3863844 m!4419401))

(declare-fun m!4419403 () Bool)

(assert (=> b!3863844 m!4419403))

(assert (=> b!3863509 d!1144981))

(declare-fun d!1144987 () Bool)

(declare-fun res!1564731 () Bool)

(declare-fun e!2389045 () Bool)

(assert (=> d!1144987 (=> (not res!1564731) (not e!2389045))))

(declare-fun validRegex!5122 (Regex!11253) Bool)

(assert (=> d!1144987 (= res!1564731 (validRegex!5122 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))))

(assert (=> d!1144987 (= (ruleValid!2300 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) e!2389045)))

(declare-fun b!3863850 () Bool)

(declare-fun res!1564732 () Bool)

(assert (=> b!3863850 (=> (not res!1564732) (not e!2389045))))

(declare-fun nullable!3923 (Regex!11253) Bool)

(assert (=> b!3863850 (= res!1564732 (not (nullable!3923 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))))))

(declare-fun b!3863851 () Bool)

(assert (=> b!3863851 (= e!2389045 (not (= (tag!7208 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (String!46609 ""))))))

(assert (= (and d!1144987 res!1564731) b!3863850))

(assert (= (and b!3863850 res!1564732) b!3863851))

(declare-fun m!4419405 () Bool)

(assert (=> d!1144987 m!4419405))

(declare-fun m!4419407 () Bool)

(assert (=> b!3863850 m!4419407))

(assert (=> b!3863509 d!1144987))

(declare-fun b!3863853 () Bool)

(declare-fun e!2389047 () List!41113)

(assert (=> b!3863853 (= e!2389047 (Cons!40989 (h!46409 lt!1342857) (++!10454 (t!313700 lt!1342857) (_2!23233 (v!39063 lt!1342868)))))))

(declare-fun b!3863854 () Bool)

(declare-fun res!1564733 () Bool)

(declare-fun e!2389046 () Bool)

(assert (=> b!3863854 (=> (not res!1564733) (not e!2389046))))

(declare-fun lt!1342991 () List!41113)

(assert (=> b!3863854 (= res!1564733 (= (size!30822 lt!1342991) (+ (size!30822 lt!1342857) (size!30822 (_2!23233 (v!39063 lt!1342868))))))))

(declare-fun d!1144989 () Bool)

(assert (=> d!1144989 e!2389046))

(declare-fun res!1564734 () Bool)

(assert (=> d!1144989 (=> (not res!1564734) (not e!2389046))))

(assert (=> d!1144989 (= res!1564734 (= (content!6117 lt!1342991) ((_ map or) (content!6117 lt!1342857) (content!6117 (_2!23233 (v!39063 lt!1342868))))))))

(assert (=> d!1144989 (= lt!1342991 e!2389047)))

(declare-fun c!672587 () Bool)

(assert (=> d!1144989 (= c!672587 ((_ is Nil!40989) lt!1342857))))

(assert (=> d!1144989 (= (++!10454 lt!1342857 (_2!23233 (v!39063 lt!1342868))) lt!1342991)))

(declare-fun b!3863855 () Bool)

(assert (=> b!3863855 (= e!2389046 (or (not (= (_2!23233 (v!39063 lt!1342868)) Nil!40989)) (= lt!1342991 lt!1342857)))))

(declare-fun b!3863852 () Bool)

(assert (=> b!3863852 (= e!2389047 (_2!23233 (v!39063 lt!1342868)))))

(assert (= (and d!1144989 c!672587) b!3863852))

(assert (= (and d!1144989 (not c!672587)) b!3863853))

(assert (= (and d!1144989 res!1564734) b!3863854))

(assert (= (and b!3863854 res!1564733) b!3863855))

(declare-fun m!4419409 () Bool)

(assert (=> b!3863853 m!4419409))

(declare-fun m!4419411 () Bool)

(assert (=> b!3863854 m!4419411))

(assert (=> b!3863854 m!4418979))

(assert (=> b!3863854 m!4418989))

(declare-fun m!4419413 () Bool)

(assert (=> d!1144989 m!4419413))

(declare-fun m!4419415 () Bool)

(assert (=> d!1144989 m!4419415))

(declare-fun m!4419417 () Bool)

(assert (=> d!1144989 m!4419417))

(assert (=> b!3863509 d!1144989))

(declare-fun b!3863856 () Bool)

(declare-fun e!2389050 () Bool)

(declare-fun lt!1342994 () tuple2!40200)

(assert (=> b!3863856 (= e!2389050 (= (_2!23234 lt!1342994) (_2!23233 (v!39063 lt!1342868))))))

(declare-fun d!1144991 () Bool)

(assert (=> d!1144991 e!2389050))

(declare-fun c!672588 () Bool)

(assert (=> d!1144991 (= c!672588 (> (size!30824 (_1!23234 lt!1342994)) 0))))

(declare-fun e!2389048 () tuple2!40200)

(assert (=> d!1144991 (= lt!1342994 e!2389048)))

(declare-fun c!672589 () Bool)

(declare-fun lt!1342993 () Option!8766)

(assert (=> d!1144991 (= c!672589 ((_ is Some!8765) lt!1342993))))

(assert (=> d!1144991 (= lt!1342993 (maxPrefix!3241 thiss!20629 rules!2768 (_2!23233 (v!39063 lt!1342868))))))

(assert (=> d!1144991 (= (lexList!1705 thiss!20629 rules!2768 (_2!23233 (v!39063 lt!1342868))) lt!1342994)))

(declare-fun b!3863857 () Bool)

(assert (=> b!3863857 (= e!2389048 (tuple2!40201 Nil!40990 (_2!23233 (v!39063 lt!1342868))))))

(declare-fun b!3863858 () Bool)

(declare-fun e!2389049 () Bool)

(assert (=> b!3863858 (= e!2389050 e!2389049)))

(declare-fun res!1564735 () Bool)

(assert (=> b!3863858 (= res!1564735 (< (size!30822 (_2!23234 lt!1342994)) (size!30822 (_2!23233 (v!39063 lt!1342868)))))))

(assert (=> b!3863858 (=> (not res!1564735) (not e!2389049))))

(declare-fun b!3863859 () Bool)

(assert (=> b!3863859 (= e!2389049 (not (isEmpty!24292 (_1!23234 lt!1342994))))))

(declare-fun b!3863860 () Bool)

(declare-fun lt!1342992 () tuple2!40200)

(assert (=> b!3863860 (= e!2389048 (tuple2!40201 (Cons!40990 (_1!23233 (v!39063 lt!1342993)) (_1!23234 lt!1342992)) (_2!23234 lt!1342992)))))

(assert (=> b!3863860 (= lt!1342992 (lexList!1705 thiss!20629 rules!2768 (_2!23233 (v!39063 lt!1342993))))))

(assert (= (and d!1144991 c!672589) b!3863860))

(assert (= (and d!1144991 (not c!672589)) b!3863857))

(assert (= (and d!1144991 c!672588) b!3863858))

(assert (= (and d!1144991 (not c!672588)) b!3863856))

(assert (= (and b!3863858 res!1564735) b!3863859))

(declare-fun m!4419419 () Bool)

(assert (=> d!1144991 m!4419419))

(declare-fun m!4419421 () Bool)

(assert (=> d!1144991 m!4419421))

(declare-fun m!4419423 () Bool)

(assert (=> b!3863858 m!4419423))

(assert (=> b!3863858 m!4418989))

(declare-fun m!4419425 () Bool)

(assert (=> b!3863859 m!4419425))

(declare-fun m!4419427 () Bool)

(assert (=> b!3863860 m!4419427))

(assert (=> b!3863509 d!1144991))

(declare-fun b!3863869 () Bool)

(declare-fun e!2389058 () Bool)

(declare-fun e!2389059 () Bool)

(assert (=> b!3863869 (= e!2389058 e!2389059)))

(declare-fun res!1564744 () Bool)

(assert (=> b!3863869 (=> (not res!1564744) (not e!2389059))))

(assert (=> b!3863869 (= res!1564744 (not ((_ is Nil!40989) lt!1342863)))))

(declare-fun b!3863872 () Bool)

(declare-fun e!2389057 () Bool)

(assert (=> b!3863872 (= e!2389057 (>= (size!30822 lt!1342863) (size!30822 lt!1342857)))))

(declare-fun b!3863871 () Bool)

(assert (=> b!3863871 (= e!2389059 (isPrefix!3447 (tail!5871 lt!1342857) (tail!5871 lt!1342863)))))

(declare-fun b!3863870 () Bool)

(declare-fun res!1564745 () Bool)

(assert (=> b!3863870 (=> (not res!1564745) (not e!2389059))))

(declare-fun head!8160 (List!41113) C!22692)

(assert (=> b!3863870 (= res!1564745 (= (head!8160 lt!1342857) (head!8160 lt!1342863)))))

(declare-fun d!1144993 () Bool)

(assert (=> d!1144993 e!2389057))

(declare-fun res!1564747 () Bool)

(assert (=> d!1144993 (=> res!1564747 e!2389057)))

(declare-fun lt!1342997 () Bool)

(assert (=> d!1144993 (= res!1564747 (not lt!1342997))))

(assert (=> d!1144993 (= lt!1342997 e!2389058)))

(declare-fun res!1564746 () Bool)

(assert (=> d!1144993 (=> res!1564746 e!2389058)))

(assert (=> d!1144993 (= res!1564746 ((_ is Nil!40989) lt!1342857))))

(assert (=> d!1144993 (= (isPrefix!3447 lt!1342857 lt!1342863) lt!1342997)))

(assert (= (and d!1144993 (not res!1564746)) b!3863869))

(assert (= (and b!3863869 res!1564744) b!3863870))

(assert (= (and b!3863870 res!1564745) b!3863871))

(assert (= (and d!1144993 (not res!1564747)) b!3863872))

(declare-fun m!4419429 () Bool)

(assert (=> b!3863872 m!4419429))

(assert (=> b!3863872 m!4418979))

(declare-fun m!4419431 () Bool)

(assert (=> b!3863871 m!4419431))

(declare-fun m!4419433 () Bool)

(assert (=> b!3863871 m!4419433))

(assert (=> b!3863871 m!4419431))

(assert (=> b!3863871 m!4419433))

(declare-fun m!4419435 () Bool)

(assert (=> b!3863871 m!4419435))

(declare-fun m!4419437 () Bool)

(assert (=> b!3863870 m!4419437))

(declare-fun m!4419439 () Bool)

(assert (=> b!3863870 m!4419439))

(assert (=> b!3863509 d!1144993))

(declare-fun d!1144995 () Bool)

(declare-fun list!15256 (Conc!12559) List!41113)

(assert (=> d!1144995 (= (list!15254 (charsOf!4176 (_1!23233 (v!39063 lt!1342868)))) (list!15256 (c!672503 (charsOf!4176 (_1!23233 (v!39063 lt!1342868))))))))

(declare-fun bs!583246 () Bool)

(assert (= bs!583246 d!1144995))

(declare-fun m!4419441 () Bool)

(assert (=> bs!583246 m!4419441))

(assert (=> b!3863509 d!1144995))

(declare-fun d!1144997 () Bool)

(assert (=> d!1144997 (isPrefix!3447 lt!1342857 (++!10454 lt!1342857 (_2!23233 (v!39063 lt!1342868))))))

(declare-fun lt!1343010 () Unit!58655)

(declare-fun choose!22768 (List!41113 List!41113) Unit!58655)

(assert (=> d!1144997 (= lt!1343010 (choose!22768 lt!1342857 (_2!23233 (v!39063 lt!1342868))))))

(assert (=> d!1144997 (= (lemmaConcatTwoListThenFirstIsPrefix!2310 lt!1342857 (_2!23233 (v!39063 lt!1342868))) lt!1343010)))

(declare-fun bs!583247 () Bool)

(assert (= bs!583247 d!1144997))

(assert (=> bs!583247 m!4418965))

(assert (=> bs!583247 m!4418965))

(declare-fun m!4419443 () Bool)

(assert (=> bs!583247 m!4419443))

(declare-fun m!4419445 () Bool)

(assert (=> bs!583247 m!4419445))

(assert (=> b!3863509 d!1144997))

(declare-fun b!3863889 () Bool)

(declare-fun res!1564761 () Bool)

(declare-fun e!2389067 () Bool)

(assert (=> b!3863889 (=> (not res!1564761) (not e!2389067))))

(declare-fun lt!1343011 () List!41114)

(assert (=> b!3863889 (= res!1564761 (= (size!30824 lt!1343011) (+ (size!30824 lt!1342862) (size!30824 suffixTokens!72))))))

(declare-fun b!3863888 () Bool)

(declare-fun e!2389066 () List!41114)

(assert (=> b!3863888 (= e!2389066 (Cons!40990 (h!46410 lt!1342862) (++!10453 (t!313701 lt!1342862) suffixTokens!72)))))

(declare-fun b!3863887 () Bool)

(assert (=> b!3863887 (= e!2389066 suffixTokens!72)))

(declare-fun b!3863890 () Bool)

(assert (=> b!3863890 (= e!2389067 (or (not (= suffixTokens!72 Nil!40990)) (= lt!1343011 lt!1342862)))))

(declare-fun d!1144999 () Bool)

(assert (=> d!1144999 e!2389067))

(declare-fun res!1564760 () Bool)

(assert (=> d!1144999 (=> (not res!1564760) (not e!2389067))))

(assert (=> d!1144999 (= res!1564760 (= (content!6116 lt!1343011) ((_ map or) (content!6116 lt!1342862) (content!6116 suffixTokens!72))))))

(assert (=> d!1144999 (= lt!1343011 e!2389066)))

(declare-fun c!672592 () Bool)

(assert (=> d!1144999 (= c!672592 ((_ is Nil!40990) lt!1342862))))

(assert (=> d!1144999 (= (++!10453 lt!1342862 suffixTokens!72) lt!1343011)))

(assert (= (and d!1144999 c!672592) b!3863887))

(assert (= (and d!1144999 (not c!672592)) b!3863888))

(assert (= (and d!1144999 res!1564760) b!3863889))

(assert (= (and b!3863889 res!1564761) b!3863890))

(declare-fun m!4419447 () Bool)

(assert (=> b!3863889 m!4419447))

(declare-fun m!4419449 () Bool)

(assert (=> b!3863889 m!4419449))

(assert (=> b!3863889 m!4419199))

(declare-fun m!4419451 () Bool)

(assert (=> b!3863888 m!4419451))

(declare-fun m!4419453 () Bool)

(assert (=> d!1144999 m!4419453))

(declare-fun m!4419455 () Bool)

(assert (=> d!1144999 m!4419455))

(assert (=> d!1144999 m!4419207))

(assert (=> b!3863508 d!1144999))

(declare-fun d!1145001 () Bool)

(assert (=> d!1145001 (not (= (lexList!1705 thiss!20629 rules!2768 (_2!23233 lt!1342865)) (tuple2!40201 (++!10453 lt!1342862 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1343024 () Unit!58655)

(declare-fun choose!22769 (LexerInterface!5937 List!41115 List!41113 List!41113 List!41114 List!41113 List!41114) Unit!58655)

(assert (=> d!1145001 (= lt!1343024 (choose!22769 thiss!20629 rules!2768 suffix!1176 (_2!23233 lt!1342865) suffixTokens!72 suffixResult!91 lt!1342862))))

(assert (=> d!1145001 (not (isEmpty!24293 rules!2768))))

(assert (=> d!1145001 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!8 thiss!20629 rules!2768 suffix!1176 (_2!23233 lt!1342865) suffixTokens!72 suffixResult!91 lt!1342862) lt!1343024)))

(declare-fun bs!583249 () Bool)

(assert (= bs!583249 d!1145001))

(assert (=> bs!583249 m!4418915))

(assert (=> bs!583249 m!4418991))

(declare-fun m!4419521 () Bool)

(assert (=> bs!583249 m!4419521))

(assert (=> bs!583249 m!4418995))

(assert (=> b!3863508 d!1145001))

(declare-fun b!3863997 () Bool)

(declare-fun e!2389137 () Bool)

(declare-fun lt!1343035 () Option!8766)

(assert (=> b!3863997 (= e!2389137 (contains!8275 rules!2768 (rule!9222 (_1!23233 (get!13562 lt!1343035)))))))

(declare-fun b!3863998 () Bool)

(declare-fun res!1564795 () Bool)

(assert (=> b!3863998 (=> (not res!1564795) (not e!2389137))))

(assert (=> b!3863998 (= res!1564795 (matchR!5400 (regex!6348 (rule!9222 (_1!23233 (get!13562 lt!1343035)))) (list!15254 (charsOf!4176 (_1!23233 (get!13562 lt!1343035))))))))

(declare-fun b!3863999 () Bool)

(declare-fun res!1564791 () Bool)

(assert (=> b!3863999 (=> (not res!1564791) (not e!2389137))))

(assert (=> b!3863999 (= res!1564791 (= (++!10454 (list!15254 (charsOf!4176 (_1!23233 (get!13562 lt!1343035)))) (_2!23233 (get!13562 lt!1343035))) lt!1342867))))

(declare-fun d!1145021 () Bool)

(declare-fun e!2389135 () Bool)

(assert (=> d!1145021 e!2389135))

(declare-fun res!1564797 () Bool)

(assert (=> d!1145021 (=> res!1564797 e!2389135)))

(assert (=> d!1145021 (= res!1564797 (isEmpty!24296 lt!1343035))))

(declare-fun e!2389136 () Option!8766)

(assert (=> d!1145021 (= lt!1343035 e!2389136)))

(declare-fun c!672600 () Bool)

(assert (=> d!1145021 (= c!672600 (and ((_ is Cons!40991) rules!2768) ((_ is Nil!40991) (t!313702 rules!2768))))))

(declare-fun lt!1343036 () Unit!58655)

(declare-fun lt!1343037 () Unit!58655)

(assert (=> d!1145021 (= lt!1343036 lt!1343037)))

(assert (=> d!1145021 (isPrefix!3447 lt!1342867 lt!1342867)))

(declare-fun lemmaIsPrefixRefl!2194 (List!41113 List!41113) Unit!58655)

(assert (=> d!1145021 (= lt!1343037 (lemmaIsPrefixRefl!2194 lt!1342867 lt!1342867))))

(declare-fun rulesValidInductive!2268 (LexerInterface!5937 List!41115) Bool)

(assert (=> d!1145021 (rulesValidInductive!2268 thiss!20629 rules!2768)))

(assert (=> d!1145021 (= (maxPrefix!3241 thiss!20629 rules!2768 lt!1342867) lt!1343035)))

(declare-fun b!3864000 () Bool)

(declare-fun call!282597 () Option!8766)

(assert (=> b!3864000 (= e!2389136 call!282597)))

(declare-fun b!3864001 () Bool)

(assert (=> b!3864001 (= e!2389135 e!2389137)))

(declare-fun res!1564793 () Bool)

(assert (=> b!3864001 (=> (not res!1564793) (not e!2389137))))

(assert (=> b!3864001 (= res!1564793 (isDefined!6871 lt!1343035))))

(declare-fun bm!282592 () Bool)

(assert (=> bm!282592 (= call!282597 (maxPrefixOneRule!2323 thiss!20629 (h!46411 rules!2768) lt!1342867))))

(declare-fun b!3864002 () Bool)

(declare-fun res!1564794 () Bool)

(assert (=> b!3864002 (=> (not res!1564794) (not e!2389137))))

(assert (=> b!3864002 (= res!1564794 (= (list!15254 (charsOf!4176 (_1!23233 (get!13562 lt!1343035)))) (originalCharacters!6948 (_1!23233 (get!13562 lt!1343035)))))))

(declare-fun b!3864003 () Bool)

(declare-fun res!1564792 () Bool)

(assert (=> b!3864003 (=> (not res!1564792) (not e!2389137))))

(assert (=> b!3864003 (= res!1564792 (< (size!30822 (_2!23233 (get!13562 lt!1343035))) (size!30822 lt!1342867)))))

(declare-fun b!3864004 () Bool)

(declare-fun lt!1343038 () Option!8766)

(declare-fun lt!1343039 () Option!8766)

(assert (=> b!3864004 (= e!2389136 (ite (and ((_ is None!8765) lt!1343038) ((_ is None!8765) lt!1343039)) None!8765 (ite ((_ is None!8765) lt!1343039) lt!1343038 (ite ((_ is None!8765) lt!1343038) lt!1343039 (ite (>= (size!30821 (_1!23233 (v!39063 lt!1343038))) (size!30821 (_1!23233 (v!39063 lt!1343039)))) lt!1343038 lt!1343039)))))))

(assert (=> b!3864004 (= lt!1343038 call!282597)))

(assert (=> b!3864004 (= lt!1343039 (maxPrefix!3241 thiss!20629 (t!313702 rules!2768) lt!1342867))))

(declare-fun b!3864005 () Bool)

(declare-fun res!1564796 () Bool)

(assert (=> b!3864005 (=> (not res!1564796) (not e!2389137))))

(assert (=> b!3864005 (= res!1564796 (= (value!201552 (_1!23233 (get!13562 lt!1343035))) (apply!9591 (transformation!6348 (rule!9222 (_1!23233 (get!13562 lt!1343035)))) (seqFromList!4619 (originalCharacters!6948 (_1!23233 (get!13562 lt!1343035)))))))))

(assert (= (and d!1145021 c!672600) b!3864000))

(assert (= (and d!1145021 (not c!672600)) b!3864004))

(assert (= (or b!3864000 b!3864004) bm!282592))

(assert (= (and d!1145021 (not res!1564797)) b!3864001))

(assert (= (and b!3864001 res!1564793) b!3864002))

(assert (= (and b!3864002 res!1564794) b!3864003))

(assert (= (and b!3864003 res!1564792) b!3863999))

(assert (= (and b!3863999 res!1564791) b!3864005))

(assert (= (and b!3864005 res!1564796) b!3863998))

(assert (= (and b!3863998 res!1564795) b!3863997))

(declare-fun m!4419543 () Bool)

(assert (=> b!3864001 m!4419543))

(declare-fun m!4419545 () Bool)

(assert (=> b!3864003 m!4419545))

(declare-fun m!4419547 () Bool)

(assert (=> b!3864003 m!4419547))

(assert (=> b!3864003 m!4418951))

(declare-fun m!4419549 () Bool)

(assert (=> b!3864004 m!4419549))

(declare-fun m!4419551 () Bool)

(assert (=> d!1145021 m!4419551))

(declare-fun m!4419553 () Bool)

(assert (=> d!1145021 m!4419553))

(declare-fun m!4419555 () Bool)

(assert (=> d!1145021 m!4419555))

(declare-fun m!4419557 () Bool)

(assert (=> d!1145021 m!4419557))

(assert (=> b!3863999 m!4419545))

(declare-fun m!4419559 () Bool)

(assert (=> b!3863999 m!4419559))

(assert (=> b!3863999 m!4419559))

(declare-fun m!4419561 () Bool)

(assert (=> b!3863999 m!4419561))

(assert (=> b!3863999 m!4419561))

(declare-fun m!4419563 () Bool)

(assert (=> b!3863999 m!4419563))

(assert (=> b!3863997 m!4419545))

(declare-fun m!4419565 () Bool)

(assert (=> b!3863997 m!4419565))

(assert (=> b!3864005 m!4419545))

(declare-fun m!4419567 () Bool)

(assert (=> b!3864005 m!4419567))

(assert (=> b!3864005 m!4419567))

(declare-fun m!4419569 () Bool)

(assert (=> b!3864005 m!4419569))

(assert (=> b!3864002 m!4419545))

(assert (=> b!3864002 m!4419559))

(assert (=> b!3864002 m!4419559))

(assert (=> b!3864002 m!4419561))

(assert (=> b!3863998 m!4419545))

(assert (=> b!3863998 m!4419559))

(assert (=> b!3863998 m!4419559))

(assert (=> b!3863998 m!4419561))

(assert (=> b!3863998 m!4419561))

(declare-fun m!4419571 () Bool)

(assert (=> b!3863998 m!4419571))

(declare-fun m!4419573 () Bool)

(assert (=> bm!282592 m!4419573))

(assert (=> b!3863515 d!1145021))

(declare-fun d!1145023 () Bool)

(assert (=> d!1145023 (= (head!8158 prefixTokens!80) (h!46410 prefixTokens!80))))

(assert (=> b!3863496 d!1145023))

(declare-fun d!1145025 () Bool)

(assert (=> d!1145025 (= (get!13562 lt!1342868) (v!39063 lt!1342868))))

(assert (=> b!3863496 d!1145025))

(declare-fun d!1145027 () Bool)

(declare-fun res!1564798 () Bool)

(declare-fun e!2389138 () Bool)

(assert (=> d!1145027 (=> (not res!1564798) (not e!2389138))))

(assert (=> d!1145027 (= res!1564798 (not (isEmpty!24294 (originalCharacters!6948 (h!46410 prefixTokens!80)))))))

(assert (=> d!1145027 (= (inv!55150 (h!46410 prefixTokens!80)) e!2389138)))

(declare-fun b!3864006 () Bool)

(declare-fun res!1564799 () Bool)

(assert (=> b!3864006 (=> (not res!1564799) (not e!2389138))))

(assert (=> b!3864006 (= res!1564799 (= (originalCharacters!6948 (h!46410 prefixTokens!80)) (list!15254 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (value!201552 (h!46410 prefixTokens!80))))))))

(declare-fun b!3864007 () Bool)

(assert (=> b!3864007 (= e!2389138 (= (size!30821 (h!46410 prefixTokens!80)) (size!30822 (originalCharacters!6948 (h!46410 prefixTokens!80)))))))

(assert (= (and d!1145027 res!1564798) b!3864006))

(assert (= (and b!3864006 res!1564799) b!3864007))

(declare-fun b_lambda!112929 () Bool)

(assert (=> (not b_lambda!112929) (not b!3864006)))

(declare-fun tb!223955 () Bool)

(declare-fun t!313770 () Bool)

(assert (=> (and b!3863500 (= (toChars!8635 (transformation!6348 (h!46411 rules!2768))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80))))) t!313770) tb!223955))

(declare-fun b!3864008 () Bool)

(declare-fun e!2389139 () Bool)

(declare-fun tp!1171376 () Bool)

(assert (=> b!3864008 (= e!2389139 (and (inv!55154 (c!672503 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (value!201552 (h!46410 prefixTokens!80))))) tp!1171376))))

(declare-fun result!272756 () Bool)

(assert (=> tb!223955 (= result!272756 (and (inv!55155 (dynLambda!17669 (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (value!201552 (h!46410 prefixTokens!80)))) e!2389139))))

(assert (= tb!223955 b!3864008))

(declare-fun m!4419575 () Bool)

(assert (=> b!3864008 m!4419575))

(declare-fun m!4419577 () Bool)

(assert (=> tb!223955 m!4419577))

(assert (=> b!3864006 t!313770))

(declare-fun b_and!289389 () Bool)

(assert (= b_and!289365 (and (=> t!313770 result!272756) b_and!289389)))

(declare-fun t!313772 () Bool)

(declare-fun tb!223957 () Bool)

(assert (=> (and b!3863502 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80))))) t!313772) tb!223957))

(declare-fun result!272758 () Bool)

(assert (= result!272758 result!272756))

(assert (=> b!3864006 t!313772))

(declare-fun b_and!289391 () Bool)

(assert (= b_and!289367 (and (=> t!313772 result!272758) b_and!289391)))

(declare-fun tb!223959 () Bool)

(declare-fun t!313774 () Bool)

(assert (=> (and b!3863517 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80))))) t!313774) tb!223959))

(declare-fun result!272760 () Bool)

(assert (= result!272760 result!272756))

(assert (=> b!3864006 t!313774))

(declare-fun b_and!289393 () Bool)

(assert (= b_and!289369 (and (=> t!313774 result!272760) b_and!289393)))

(declare-fun m!4419579 () Bool)

(assert (=> d!1145027 m!4419579))

(declare-fun m!4419581 () Bool)

(assert (=> b!3864006 m!4419581))

(assert (=> b!3864006 m!4419581))

(declare-fun m!4419583 () Bool)

(assert (=> b!3864006 m!4419583))

(declare-fun m!4419585 () Bool)

(assert (=> b!3864007 m!4419585))

(assert (=> b!3863516 d!1145027))

(declare-fun d!1145029 () Bool)

(assert (=> d!1145029 (= (isEmpty!24294 prefix!426) ((_ is Nil!40989) prefix!426))))

(assert (=> b!3863513 d!1145029))

(declare-fun d!1145031 () Bool)

(assert (=> d!1145031 (not (= (lexList!1705 thiss!20629 rules!2768 (_2!23233 lt!1342865)) (tuple2!40201 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1343042 () Unit!58655)

(declare-fun choose!22770 (LexerInterface!5937 List!41115 List!41113 List!41113 List!41114 List!41113) Unit!58655)

(assert (=> d!1145031 (= lt!1343042 (choose!22770 thiss!20629 rules!2768 suffix!1176 (_2!23233 lt!1342865) suffixTokens!72 suffixResult!91))))

(assert (=> d!1145031 (not (isEmpty!24293 rules!2768))))

(assert (=> d!1145031 (= (lemmaLexWithSmallerInputCannotProduceSameResults!8 thiss!20629 rules!2768 suffix!1176 (_2!23233 lt!1342865) suffixTokens!72 suffixResult!91) lt!1343042)))

(declare-fun bs!583250 () Bool)

(assert (= bs!583250 d!1145031))

(assert (=> bs!583250 m!4418915))

(declare-fun m!4419587 () Bool)

(assert (=> bs!583250 m!4419587))

(assert (=> bs!583250 m!4418995))

(assert (=> b!3863492 d!1145031))

(declare-fun d!1145033 () Bool)

(assert (=> d!1145033 (and (= lt!1342857 lt!1342857) (= (_2!23233 (v!39063 lt!1342868)) (_2!23233 lt!1342865)))))

(declare-fun lt!1343045 () Unit!58655)

(declare-fun choose!22771 (List!41113 List!41113 List!41113 List!41113) Unit!58655)

(assert (=> d!1145033 (= lt!1343045 (choose!22771 lt!1342857 (_2!23233 (v!39063 lt!1342868)) lt!1342857 (_2!23233 lt!1342865)))))

(assert (=> d!1145033 (= (++!10454 lt!1342857 (_2!23233 (v!39063 lt!1342868))) (++!10454 lt!1342857 (_2!23233 lt!1342865)))))

(assert (=> d!1145033 (= (lemmaConcatSameAndSameSizesThenSameLists!432 lt!1342857 (_2!23233 (v!39063 lt!1342868)) lt!1342857 (_2!23233 lt!1342865)) lt!1343045)))

(declare-fun bs!583251 () Bool)

(assert (= bs!583251 d!1145033))

(declare-fun m!4419589 () Bool)

(assert (=> bs!583251 m!4419589))

(assert (=> bs!583251 m!4418965))

(declare-fun m!4419591 () Bool)

(assert (=> bs!583251 m!4419591))

(assert (=> b!3863492 d!1145033))

(declare-fun d!1145035 () Bool)

(declare-fun c!672602 () Bool)

(assert (=> d!1145035 (= c!672602 ((_ is IntegerValue!19734) (value!201552 (h!46410 prefixTokens!80))))))

(declare-fun e!2389141 () Bool)

(assert (=> d!1145035 (= (inv!21 (value!201552 (h!46410 prefixTokens!80))) e!2389141)))

(declare-fun b!3864009 () Bool)

(declare-fun res!1564800 () Bool)

(declare-fun e!2389140 () Bool)

(assert (=> b!3864009 (=> res!1564800 e!2389140)))

(assert (=> b!3864009 (= res!1564800 (not ((_ is IntegerValue!19736) (value!201552 (h!46410 prefixTokens!80)))))))

(declare-fun e!2389142 () Bool)

(assert (=> b!3864009 (= e!2389142 e!2389140)))

(declare-fun b!3864010 () Bool)

(assert (=> b!3864010 (= e!2389141 (inv!16 (value!201552 (h!46410 prefixTokens!80))))))

(declare-fun b!3864011 () Bool)

(assert (=> b!3864011 (= e!2389142 (inv!17 (value!201552 (h!46410 prefixTokens!80))))))

(declare-fun b!3864012 () Bool)

(assert (=> b!3864012 (= e!2389140 (inv!15 (value!201552 (h!46410 prefixTokens!80))))))

(declare-fun b!3864013 () Bool)

(assert (=> b!3864013 (= e!2389141 e!2389142)))

(declare-fun c!672601 () Bool)

(assert (=> b!3864013 (= c!672601 ((_ is IntegerValue!19735) (value!201552 (h!46410 prefixTokens!80))))))

(assert (= (and d!1145035 c!672602) b!3864010))

(assert (= (and d!1145035 (not c!672602)) b!3864013))

(assert (= (and b!3864013 c!672601) b!3864011))

(assert (= (and b!3864013 (not c!672601)) b!3864009))

(assert (= (and b!3864009 (not res!1564800)) b!3864012))

(declare-fun m!4419593 () Bool)

(assert (=> b!3864010 m!4419593))

(declare-fun m!4419595 () Bool)

(assert (=> b!3864011 m!4419595))

(declare-fun m!4419597 () Bool)

(assert (=> b!3864012 m!4419597))

(assert (=> b!3863512 d!1145035))

(declare-fun d!1145037 () Bool)

(declare-fun lt!1343046 () Int)

(assert (=> d!1145037 (>= lt!1343046 0)))

(declare-fun e!2389143 () Int)

(assert (=> d!1145037 (= lt!1343046 e!2389143)))

(declare-fun c!672603 () Bool)

(assert (=> d!1145037 (= c!672603 ((_ is Nil!40989) prefix!426))))

(assert (=> d!1145037 (= (size!30822 prefix!426) lt!1343046)))

(declare-fun b!3864014 () Bool)

(assert (=> b!3864014 (= e!2389143 0)))

(declare-fun b!3864015 () Bool)

(assert (=> b!3864015 (= e!2389143 (+ 1 (size!30822 (t!313700 prefix!426))))))

(assert (= (and d!1145037 c!672603) b!3864014))

(assert (= (and d!1145037 (not c!672603)) b!3864015))

(declare-fun m!4419599 () Bool)

(assert (=> b!3864015 m!4419599))

(assert (=> b!3863494 d!1145037))

(declare-fun b!3864044 () Bool)

(declare-fun e!2389163 () Bool)

(declare-fun derivativeStep!3422 (Regex!11253 C!22692) Regex!11253)

(assert (=> b!3864044 (= e!2389163 (matchR!5400 (derivativeStep!3422 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (head!8160 lt!1342857)) (tail!5871 lt!1342857)))))

(declare-fun b!3864045 () Bool)

(declare-fun e!2389159 () Bool)

(declare-fun e!2389164 () Bool)

(assert (=> b!3864045 (= e!2389159 e!2389164)))

(declare-fun c!672612 () Bool)

(assert (=> b!3864045 (= c!672612 ((_ is EmptyLang!11253) (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))))

(declare-fun b!3864046 () Bool)

(declare-fun lt!1343049 () Bool)

(declare-fun call!282600 () Bool)

(assert (=> b!3864046 (= e!2389159 (= lt!1343049 call!282600))))

(declare-fun b!3864047 () Bool)

(assert (=> b!3864047 (= e!2389163 (nullable!3923 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))))

(declare-fun b!3864048 () Bool)

(declare-fun res!1564821 () Bool)

(declare-fun e!2389162 () Bool)

(assert (=> b!3864048 (=> res!1564821 e!2389162)))

(assert (=> b!3864048 (= res!1564821 (not ((_ is ElementMatch!11253) (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))))))

(assert (=> b!3864048 (= e!2389164 e!2389162)))

(declare-fun bm!282595 () Bool)

(assert (=> bm!282595 (= call!282600 (isEmpty!24294 lt!1342857))))

(declare-fun d!1145039 () Bool)

(assert (=> d!1145039 e!2389159))

(declare-fun c!672611 () Bool)

(assert (=> d!1145039 (= c!672611 ((_ is EmptyExpr!11253) (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))))

(assert (=> d!1145039 (= lt!1343049 e!2389163)))

(declare-fun c!672610 () Bool)

(assert (=> d!1145039 (= c!672610 (isEmpty!24294 lt!1342857))))

(assert (=> d!1145039 (validRegex!5122 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))))

(assert (=> d!1145039 (= (matchR!5400 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) lt!1342857) lt!1343049)))

(declare-fun b!3864049 () Bool)

(declare-fun e!2389158 () Bool)

(assert (=> b!3864049 (= e!2389158 (= (head!8160 lt!1342857) (c!672502 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))))))

(declare-fun b!3864050 () Bool)

(assert (=> b!3864050 (= e!2389164 (not lt!1343049))))

(declare-fun b!3864051 () Bool)

(declare-fun res!1564822 () Bool)

(assert (=> b!3864051 (=> (not res!1564822) (not e!2389158))))

(assert (=> b!3864051 (= res!1564822 (not call!282600))))

(declare-fun b!3864052 () Bool)

(declare-fun e!2389160 () Bool)

(declare-fun e!2389161 () Bool)

(assert (=> b!3864052 (= e!2389160 e!2389161)))

(declare-fun res!1564823 () Bool)

(assert (=> b!3864052 (=> res!1564823 e!2389161)))

(assert (=> b!3864052 (= res!1564823 call!282600)))

(declare-fun b!3864053 () Bool)

(declare-fun res!1564820 () Bool)

(assert (=> b!3864053 (=> res!1564820 e!2389161)))

(assert (=> b!3864053 (= res!1564820 (not (isEmpty!24294 (tail!5871 lt!1342857))))))

(declare-fun b!3864054 () Bool)

(assert (=> b!3864054 (= e!2389161 (not (= (head!8160 lt!1342857) (c!672502 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))))))

(declare-fun b!3864055 () Bool)

(declare-fun res!1564817 () Bool)

(assert (=> b!3864055 (=> (not res!1564817) (not e!2389158))))

(assert (=> b!3864055 (= res!1564817 (isEmpty!24294 (tail!5871 lt!1342857)))))

(declare-fun b!3864056 () Bool)

(declare-fun res!1564824 () Bool)

(assert (=> b!3864056 (=> res!1564824 e!2389162)))

(assert (=> b!3864056 (= res!1564824 e!2389158)))

(declare-fun res!1564818 () Bool)

(assert (=> b!3864056 (=> (not res!1564818) (not e!2389158))))

(assert (=> b!3864056 (= res!1564818 lt!1343049)))

(declare-fun b!3864057 () Bool)

(assert (=> b!3864057 (= e!2389162 e!2389160)))

(declare-fun res!1564819 () Bool)

(assert (=> b!3864057 (=> (not res!1564819) (not e!2389160))))

(assert (=> b!3864057 (= res!1564819 (not lt!1343049))))

(assert (= (and d!1145039 c!672610) b!3864047))

(assert (= (and d!1145039 (not c!672610)) b!3864044))

(assert (= (and d!1145039 c!672611) b!3864046))

(assert (= (and d!1145039 (not c!672611)) b!3864045))

(assert (= (and b!3864045 c!672612) b!3864050))

(assert (= (and b!3864045 (not c!672612)) b!3864048))

(assert (= (and b!3864048 (not res!1564821)) b!3864056))

(assert (= (and b!3864056 res!1564818) b!3864051))

(assert (= (and b!3864051 res!1564822) b!3864055))

(assert (= (and b!3864055 res!1564817) b!3864049))

(assert (= (and b!3864056 (not res!1564824)) b!3864057))

(assert (= (and b!3864057 res!1564819) b!3864052))

(assert (= (and b!3864052 (not res!1564823)) b!3864053))

(assert (= (and b!3864053 (not res!1564820)) b!3864054))

(assert (= (or b!3864046 b!3864051 b!3864052) bm!282595))

(assert (=> b!3864049 m!4419437))

(declare-fun m!4419601 () Bool)

(assert (=> bm!282595 m!4419601))

(assert (=> b!3864053 m!4419431))

(assert (=> b!3864053 m!4419431))

(declare-fun m!4419603 () Bool)

(assert (=> b!3864053 m!4419603))

(assert (=> b!3864055 m!4419431))

(assert (=> b!3864055 m!4419431))

(assert (=> b!3864055 m!4419603))

(assert (=> d!1145039 m!4419601))

(assert (=> d!1145039 m!4419405))

(assert (=> b!3864054 m!4419437))

(assert (=> b!3864047 m!4419407))

(assert (=> b!3864044 m!4419437))

(assert (=> b!3864044 m!4419437))

(declare-fun m!4419605 () Bool)

(assert (=> b!3864044 m!4419605))

(assert (=> b!3864044 m!4419431))

(assert (=> b!3864044 m!4419605))

(assert (=> b!3864044 m!4419431))

(declare-fun m!4419607 () Bool)

(assert (=> b!3864044 m!4419607))

(assert (=> b!3863493 d!1145039))

(declare-fun d!1145041 () Bool)

(declare-fun e!2389176 () Bool)

(assert (=> d!1145041 e!2389176))

(declare-fun res!1564840 () Bool)

(assert (=> d!1145041 (=> res!1564840 e!2389176)))

(declare-fun lt!1343063 () Option!8766)

(assert (=> d!1145041 (= res!1564840 (isEmpty!24296 lt!1343063))))

(declare-fun e!2389173 () Option!8766)

(assert (=> d!1145041 (= lt!1343063 e!2389173)))

(declare-fun c!672615 () Bool)

(declare-datatypes ((tuple2!40204 0))(
  ( (tuple2!40205 (_1!23236 List!41113) (_2!23236 List!41113)) )
))
(declare-fun lt!1343064 () tuple2!40204)

(assert (=> d!1145041 (= c!672615 (isEmpty!24294 (_1!23236 lt!1343064)))))

(declare-fun findLongestMatch!1103 (Regex!11253 List!41113) tuple2!40204)

(assert (=> d!1145041 (= lt!1343064 (findLongestMatch!1103 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) lt!1342867))))

(assert (=> d!1145041 (ruleValid!2300 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))))))

(assert (=> d!1145041 (= (maxPrefixOneRule!2323 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))) lt!1342867) lt!1343063)))

(declare-fun b!3864076 () Bool)

(declare-fun res!1564844 () Bool)

(declare-fun e!2389175 () Bool)

(assert (=> b!3864076 (=> (not res!1564844) (not e!2389175))))

(assert (=> b!3864076 (= res!1564844 (= (value!201552 (_1!23233 (get!13562 lt!1343063))) (apply!9591 (transformation!6348 (rule!9222 (_1!23233 (get!13562 lt!1343063)))) (seqFromList!4619 (originalCharacters!6948 (_1!23233 (get!13562 lt!1343063)))))))))

(declare-fun b!3864077 () Bool)

(assert (=> b!3864077 (= e!2389173 None!8765)))

(declare-fun b!3864078 () Bool)

(declare-fun res!1564842 () Bool)

(assert (=> b!3864078 (=> (not res!1564842) (not e!2389175))))

(assert (=> b!3864078 (= res!1564842 (< (size!30822 (_2!23233 (get!13562 lt!1343063))) (size!30822 lt!1342867)))))

(declare-fun b!3864079 () Bool)

(assert (=> b!3864079 (= e!2389175 (= (size!30821 (_1!23233 (get!13562 lt!1343063))) (size!30822 (originalCharacters!6948 (_1!23233 (get!13562 lt!1343063))))))))

(declare-fun b!3864080 () Bool)

(declare-fun size!30826 (BalanceConc!24712) Int)

(assert (=> b!3864080 (= e!2389173 (Some!8765 (tuple2!40199 (Token!11835 (apply!9591 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (seqFromList!4619 (_1!23236 lt!1343064))) (rule!9222 (_1!23233 (v!39063 lt!1342868))) (size!30826 (seqFromList!4619 (_1!23236 lt!1343064))) (_1!23236 lt!1343064)) (_2!23236 lt!1343064))))))

(declare-fun lt!1343061 () Unit!58655)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1163 (Regex!11253 List!41113) Unit!58655)

(assert (=> b!3864080 (= lt!1343061 (longestMatchIsAcceptedByMatchOrIsEmpty!1163 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) lt!1342867))))

(declare-fun res!1564841 () Bool)

(declare-fun findLongestMatchInner!1190 (Regex!11253 List!41113 Int List!41113 List!41113 Int) tuple2!40204)

(assert (=> b!3864080 (= res!1564841 (isEmpty!24294 (_1!23236 (findLongestMatchInner!1190 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) Nil!40989 (size!30822 Nil!40989) lt!1342867 lt!1342867 (size!30822 lt!1342867)))))))

(declare-fun e!2389174 () Bool)

(assert (=> b!3864080 (=> res!1564841 e!2389174)))

(assert (=> b!3864080 e!2389174))

(declare-fun lt!1343062 () Unit!58655)

(assert (=> b!3864080 (= lt!1343062 lt!1343061)))

(declare-fun lt!1343060 () Unit!58655)

(declare-fun lemmaSemiInverse!1696 (TokenValueInjection!12584 BalanceConc!24712) Unit!58655)

(assert (=> b!3864080 (= lt!1343060 (lemmaSemiInverse!1696 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (seqFromList!4619 (_1!23236 lt!1343064))))))

(declare-fun b!3864081 () Bool)

(declare-fun res!1564839 () Bool)

(assert (=> b!3864081 (=> (not res!1564839) (not e!2389175))))

(assert (=> b!3864081 (= res!1564839 (= (++!10454 (list!15254 (charsOf!4176 (_1!23233 (get!13562 lt!1343063)))) (_2!23233 (get!13562 lt!1343063))) lt!1342867))))

(declare-fun b!3864082 () Bool)

(assert (=> b!3864082 (= e!2389174 (matchR!5400 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (_1!23236 (findLongestMatchInner!1190 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) Nil!40989 (size!30822 Nil!40989) lt!1342867 lt!1342867 (size!30822 lt!1342867)))))))

(declare-fun b!3864083 () Bool)

(assert (=> b!3864083 (= e!2389176 e!2389175)))

(declare-fun res!1564845 () Bool)

(assert (=> b!3864083 (=> (not res!1564845) (not e!2389175))))

(assert (=> b!3864083 (= res!1564845 (matchR!5400 (regex!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (list!15254 (charsOf!4176 (_1!23233 (get!13562 lt!1343063))))))))

(declare-fun b!3864084 () Bool)

(declare-fun res!1564843 () Bool)

(assert (=> b!3864084 (=> (not res!1564843) (not e!2389175))))

(assert (=> b!3864084 (= res!1564843 (= (rule!9222 (_1!23233 (get!13562 lt!1343063))) (rule!9222 (_1!23233 (v!39063 lt!1342868)))))))

(assert (= (and d!1145041 c!672615) b!3864077))

(assert (= (and d!1145041 (not c!672615)) b!3864080))

(assert (= (and b!3864080 (not res!1564841)) b!3864082))

(assert (= (and d!1145041 (not res!1564840)) b!3864083))

(assert (= (and b!3864083 res!1564845) b!3864081))

(assert (= (and b!3864081 res!1564839) b!3864078))

(assert (= (and b!3864078 res!1564842) b!3864084))

(assert (= (and b!3864084 res!1564843) b!3864076))

(assert (= (and b!3864076 res!1564844) b!3864079))

(declare-fun m!4419609 () Bool)

(assert (=> b!3864081 m!4419609))

(declare-fun m!4419611 () Bool)

(assert (=> b!3864081 m!4419611))

(assert (=> b!3864081 m!4419611))

(declare-fun m!4419613 () Bool)

(assert (=> b!3864081 m!4419613))

(assert (=> b!3864081 m!4419613))

(declare-fun m!4419615 () Bool)

(assert (=> b!3864081 m!4419615))

(declare-fun m!4419617 () Bool)

(assert (=> b!3864080 m!4419617))

(assert (=> b!3864080 m!4418951))

(declare-fun m!4419619 () Bool)

(assert (=> b!3864080 m!4419619))

(assert (=> b!3864080 m!4419617))

(declare-fun m!4419621 () Bool)

(assert (=> b!3864080 m!4419621))

(declare-fun m!4419623 () Bool)

(assert (=> b!3864080 m!4419623))

(declare-fun m!4419625 () Bool)

(assert (=> b!3864080 m!4419625))

(declare-fun m!4419627 () Bool)

(assert (=> b!3864080 m!4419627))

(assert (=> b!3864080 m!4419625))

(declare-fun m!4419629 () Bool)

(assert (=> b!3864080 m!4419629))

(assert (=> b!3864080 m!4418951))

(assert (=> b!3864080 m!4419625))

(assert (=> b!3864080 m!4419625))

(declare-fun m!4419631 () Bool)

(assert (=> b!3864080 m!4419631))

(assert (=> b!3864076 m!4419609))

(declare-fun m!4419633 () Bool)

(assert (=> b!3864076 m!4419633))

(assert (=> b!3864076 m!4419633))

(declare-fun m!4419635 () Bool)

(assert (=> b!3864076 m!4419635))

(assert (=> b!3864083 m!4419609))

(assert (=> b!3864083 m!4419611))

(assert (=> b!3864083 m!4419611))

(assert (=> b!3864083 m!4419613))

(assert (=> b!3864083 m!4419613))

(declare-fun m!4419637 () Bool)

(assert (=> b!3864083 m!4419637))

(assert (=> b!3864084 m!4419609))

(assert (=> b!3864078 m!4419609))

(declare-fun m!4419639 () Bool)

(assert (=> b!3864078 m!4419639))

(assert (=> b!3864078 m!4418951))

(assert (=> b!3864082 m!4419617))

(assert (=> b!3864082 m!4418951))

(assert (=> b!3864082 m!4419617))

(assert (=> b!3864082 m!4418951))

(assert (=> b!3864082 m!4419619))

(declare-fun m!4419641 () Bool)

(assert (=> b!3864082 m!4419641))

(assert (=> b!3864079 m!4419609))

(declare-fun m!4419643 () Bool)

(assert (=> b!3864079 m!4419643))

(declare-fun m!4419645 () Bool)

(assert (=> d!1145041 m!4419645))

(declare-fun m!4419647 () Bool)

(assert (=> d!1145041 m!4419647))

(declare-fun m!4419649 () Bool)

(assert (=> d!1145041 m!4419649))

(assert (=> d!1145041 m!4418977))

(assert (=> b!3863493 d!1145041))

(declare-fun d!1145043 () Bool)

(assert (=> d!1145043 (= (maxPrefixOneRule!2323 thiss!20629 (rule!9222 (_1!23233 (v!39063 lt!1342868))) lt!1342867) (Some!8765 (tuple2!40199 (Token!11835 (apply!9591 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))) (seqFromList!4619 lt!1342857)) (rule!9222 (_1!23233 (v!39063 lt!1342868))) (size!30822 lt!1342857) lt!1342857) (_2!23233 (v!39063 lt!1342868)))))))

(declare-fun lt!1343067 () Unit!58655)

(declare-fun choose!22772 (LexerInterface!5937 List!41115 List!41113 List!41113 List!41113 Rule!12496) Unit!58655)

(assert (=> d!1145043 (= lt!1343067 (choose!22772 thiss!20629 rules!2768 lt!1342857 lt!1342867 (_2!23233 (v!39063 lt!1342868)) (rule!9222 (_1!23233 (v!39063 lt!1342868)))))))

(assert (=> d!1145043 (not (isEmpty!24293 rules!2768))))

(assert (=> d!1145043 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1221 thiss!20629 rules!2768 lt!1342857 lt!1342867 (_2!23233 (v!39063 lt!1342868)) (rule!9222 (_1!23233 (v!39063 lt!1342868)))) lt!1343067)))

(declare-fun bs!583252 () Bool)

(assert (= bs!583252 d!1145043))

(assert (=> bs!583252 m!4418979))

(assert (=> bs!583252 m!4418967))

(assert (=> bs!583252 m!4418969))

(assert (=> bs!583252 m!4418995))

(declare-fun m!4419651 () Bool)

(assert (=> bs!583252 m!4419651))

(assert (=> bs!583252 m!4418937))

(assert (=> bs!583252 m!4418967))

(assert (=> b!3863493 d!1145043))

(declare-fun b!3864089 () Bool)

(declare-fun e!2389179 () Bool)

(declare-fun tp!1171379 () Bool)

(assert (=> b!3864089 (= e!2389179 (and tp_is_empty!19477 tp!1171379))))

(assert (=> b!3863510 (= tp!1171293 e!2389179)))

(assert (= (and b!3863510 ((_ is Cons!40989) (t!313700 suffix!1176))) b!3864089))

(declare-fun b!3864102 () Bool)

(declare-fun e!2389182 () Bool)

(declare-fun tp!1171392 () Bool)

(assert (=> b!3864102 (= e!2389182 tp!1171392)))

(declare-fun b!3864101 () Bool)

(declare-fun tp!1171391 () Bool)

(declare-fun tp!1171390 () Bool)

(assert (=> b!3864101 (= e!2389182 (and tp!1171391 tp!1171390))))

(declare-fun b!3864103 () Bool)

(declare-fun tp!1171393 () Bool)

(declare-fun tp!1171394 () Bool)

(assert (=> b!3864103 (= e!2389182 (and tp!1171393 tp!1171394))))

(assert (=> b!3863511 (= tp!1171291 e!2389182)))

(declare-fun b!3864100 () Bool)

(assert (=> b!3864100 (= e!2389182 tp_is_empty!19477)))

(assert (= (and b!3863511 ((_ is ElementMatch!11253) (regex!6348 (rule!9222 (h!46410 prefixTokens!80))))) b!3864100))

(assert (= (and b!3863511 ((_ is Concat!17832) (regex!6348 (rule!9222 (h!46410 prefixTokens!80))))) b!3864101))

(assert (= (and b!3863511 ((_ is Star!11253) (regex!6348 (rule!9222 (h!46410 prefixTokens!80))))) b!3864102))

(assert (= (and b!3863511 ((_ is Union!11253) (regex!6348 (rule!9222 (h!46410 prefixTokens!80))))) b!3864103))

(declare-fun b!3864104 () Bool)

(declare-fun e!2389183 () Bool)

(declare-fun tp!1171395 () Bool)

(assert (=> b!3864104 (= e!2389183 (and tp_is_empty!19477 tp!1171395))))

(assert (=> b!3863497 (= tp!1171290 e!2389183)))

(assert (= (and b!3863497 ((_ is Cons!40989) (t!313700 suffixResult!91))) b!3864104))

(declare-fun b!3864118 () Bool)

(declare-fun b_free!104029 () Bool)

(declare-fun b_next!104733 () Bool)

(assert (=> b!3864118 (= b_free!104029 (not b_next!104733))))

(declare-fun t!313776 () Bool)

(declare-fun tb!223961 () Bool)

(assert (=> (and b!3864118 (= (toValue!8776 (transformation!6348 (rule!9222 (h!46410 (t!313701 suffixTokens!72))))) (toValue!8776 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313776) tb!223961))

(declare-fun result!272768 () Bool)

(assert (= result!272768 result!272704))

(assert (=> d!1144975 t!313776))

(declare-fun b_and!289395 () Bool)

(declare-fun tp!1171408 () Bool)

(assert (=> b!3864118 (= tp!1171408 (and (=> t!313776 result!272768) b_and!289395))))

(declare-fun b_free!104031 () Bool)

(declare-fun b_next!104735 () Bool)

(assert (=> b!3864118 (= b_free!104031 (not b_next!104735))))

(declare-fun t!313778 () Bool)

(declare-fun tb!223963 () Bool)

(assert (=> (and b!3864118 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 suffixTokens!72))))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72))))) t!313778) tb!223963))

(declare-fun result!272770 () Bool)

(assert (= result!272770 result!272696))

(assert (=> b!3863758 t!313778))

(declare-fun tb!223965 () Bool)

(declare-fun t!313780 () Bool)

(assert (=> (and b!3864118 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 suffixTokens!72))))) (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313780) tb!223965))

(declare-fun result!272772 () Bool)

(assert (= result!272772 result!272712))

(assert (=> d!1144979 t!313780))

(declare-fun t!313782 () Bool)

(declare-fun tb!223967 () Bool)

(assert (=> (and b!3864118 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 suffixTokens!72))))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80))))) t!313782) tb!223967))

(declare-fun result!272774 () Bool)

(assert (= result!272774 result!272756))

(assert (=> b!3864006 t!313782))

(declare-fun tp!1171406 () Bool)

(declare-fun b_and!289397 () Bool)

(assert (=> b!3864118 (= tp!1171406 (and (=> t!313778 result!272770) (=> t!313780 result!272772) (=> t!313782 result!272774) b_and!289397))))

(declare-fun e!2389196 () Bool)

(assert (=> b!3864118 (= e!2389196 (and tp!1171408 tp!1171406))))

(declare-fun tp!1171410 () Bool)

(declare-fun e!2389200 () Bool)

(declare-fun b!3864117 () Bool)

(assert (=> b!3864117 (= e!2389200 (and tp!1171410 (inv!55147 (tag!7208 (rule!9222 (h!46410 (t!313701 suffixTokens!72))))) (inv!55151 (transformation!6348 (rule!9222 (h!46410 (t!313701 suffixTokens!72))))) e!2389196))))

(declare-fun e!2389197 () Bool)

(assert (=> b!3863499 (= tp!1171287 e!2389197)))

(declare-fun e!2389199 () Bool)

(declare-fun tp!1171409 () Bool)

(declare-fun b!3864115 () Bool)

(assert (=> b!3864115 (= e!2389197 (and (inv!55150 (h!46410 (t!313701 suffixTokens!72))) e!2389199 tp!1171409))))

(declare-fun tp!1171407 () Bool)

(declare-fun b!3864116 () Bool)

(assert (=> b!3864116 (= e!2389199 (and (inv!21 (value!201552 (h!46410 (t!313701 suffixTokens!72)))) e!2389200 tp!1171407))))

(assert (= b!3864117 b!3864118))

(assert (= b!3864116 b!3864117))

(assert (= b!3864115 b!3864116))

(assert (= (and b!3863499 ((_ is Cons!40990) (t!313701 suffixTokens!72))) b!3864115))

(declare-fun m!4419653 () Bool)

(assert (=> b!3864117 m!4419653))

(declare-fun m!4419655 () Bool)

(assert (=> b!3864117 m!4419655))

(declare-fun m!4419657 () Bool)

(assert (=> b!3864115 m!4419657))

(declare-fun m!4419659 () Bool)

(assert (=> b!3864116 m!4419659))

(declare-fun b!3864129 () Bool)

(declare-fun b_free!104033 () Bool)

(declare-fun b_next!104737 () Bool)

(assert (=> b!3864129 (= b_free!104033 (not b_next!104737))))

(declare-fun t!313784 () Bool)

(declare-fun tb!223969 () Bool)

(assert (=> (and b!3864129 (= (toValue!8776 (transformation!6348 (h!46411 (t!313702 rules!2768)))) (toValue!8776 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313784) tb!223969))

(declare-fun result!272778 () Bool)

(assert (= result!272778 result!272704))

(assert (=> d!1144975 t!313784))

(declare-fun tp!1171422 () Bool)

(declare-fun b_and!289399 () Bool)

(assert (=> b!3864129 (= tp!1171422 (and (=> t!313784 result!272778) b_and!289399))))

(declare-fun b_free!104035 () Bool)

(declare-fun b_next!104739 () Bool)

(assert (=> b!3864129 (= b_free!104035 (not b_next!104739))))

(declare-fun t!313786 () Bool)

(declare-fun tb!223971 () Bool)

(assert (=> (and b!3864129 (= (toChars!8635 (transformation!6348 (h!46411 (t!313702 rules!2768)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72))))) t!313786) tb!223971))

(declare-fun result!272780 () Bool)

(assert (= result!272780 result!272696))

(assert (=> b!3863758 t!313786))

(declare-fun t!313788 () Bool)

(declare-fun tb!223973 () Bool)

(assert (=> (and b!3864129 (= (toChars!8635 (transformation!6348 (h!46411 (t!313702 rules!2768)))) (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313788) tb!223973))

(declare-fun result!272782 () Bool)

(assert (= result!272782 result!272712))

(assert (=> d!1144979 t!313788))

(declare-fun t!313790 () Bool)

(declare-fun tb!223975 () Bool)

(assert (=> (and b!3864129 (= (toChars!8635 (transformation!6348 (h!46411 (t!313702 rules!2768)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80))))) t!313790) tb!223975))

(declare-fun result!272784 () Bool)

(assert (= result!272784 result!272756))

(assert (=> b!3864006 t!313790))

(declare-fun b_and!289401 () Bool)

(declare-fun tp!1171421 () Bool)

(assert (=> b!3864129 (= tp!1171421 (and (=> t!313786 result!272780) (=> t!313788 result!272782) (=> t!313790 result!272784) b_and!289401))))

(declare-fun e!2389210 () Bool)

(assert (=> b!3864129 (= e!2389210 (and tp!1171422 tp!1171421))))

(declare-fun tp!1171419 () Bool)

(declare-fun e!2389211 () Bool)

(declare-fun b!3864128 () Bool)

(assert (=> b!3864128 (= e!2389211 (and tp!1171419 (inv!55147 (tag!7208 (h!46411 (t!313702 rules!2768)))) (inv!55151 (transformation!6348 (h!46411 (t!313702 rules!2768)))) e!2389210))))

(declare-fun b!3864127 () Bool)

(declare-fun e!2389212 () Bool)

(declare-fun tp!1171420 () Bool)

(assert (=> b!3864127 (= e!2389212 (and e!2389211 tp!1171420))))

(assert (=> b!3863519 (= tp!1171292 e!2389212)))

(assert (= b!3864128 b!3864129))

(assert (= b!3864127 b!3864128))

(assert (= (and b!3863519 ((_ is Cons!40991) (t!313702 rules!2768))) b!3864127))

(declare-fun m!4419661 () Bool)

(assert (=> b!3864128 m!4419661))

(declare-fun m!4419663 () Bool)

(assert (=> b!3864128 m!4419663))

(declare-fun b!3864130 () Bool)

(declare-fun e!2389214 () Bool)

(declare-fun tp!1171423 () Bool)

(assert (=> b!3864130 (= e!2389214 (and tp_is_empty!19477 tp!1171423))))

(assert (=> b!3863495 (= tp!1171295 e!2389214)))

(assert (= (and b!3863495 ((_ is Cons!40989) (t!313700 prefix!426))) b!3864130))

(declare-fun b!3864134 () Bool)

(declare-fun b_free!104037 () Bool)

(declare-fun b_next!104741 () Bool)

(assert (=> b!3864134 (= b_free!104037 (not b_next!104741))))

(declare-fun tb!223977 () Bool)

(declare-fun t!313792 () Bool)

(assert (=> (and b!3864134 (= (toValue!8776 (transformation!6348 (rule!9222 (h!46410 (t!313701 prefixTokens!80))))) (toValue!8776 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313792) tb!223977))

(declare-fun result!272786 () Bool)

(assert (= result!272786 result!272704))

(assert (=> d!1144975 t!313792))

(declare-fun b_and!289403 () Bool)

(declare-fun tp!1171426 () Bool)

(assert (=> b!3864134 (= tp!1171426 (and (=> t!313792 result!272786) b_and!289403))))

(declare-fun b_free!104039 () Bool)

(declare-fun b_next!104743 () Bool)

(assert (=> b!3864134 (= b_free!104039 (not b_next!104743))))

(declare-fun t!313794 () Bool)

(declare-fun tb!223979 () Bool)

(assert (=> (and b!3864134 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 prefixTokens!80))))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72))))) t!313794) tb!223979))

(declare-fun result!272788 () Bool)

(assert (= result!272788 result!272696))

(assert (=> b!3863758 t!313794))

(declare-fun tb!223981 () Bool)

(declare-fun t!313796 () Bool)

(assert (=> (and b!3864134 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 prefixTokens!80))))) (toChars!8635 (transformation!6348 (rule!9222 (_1!23233 (v!39063 lt!1342868)))))) t!313796) tb!223981))

(declare-fun result!272790 () Bool)

(assert (= result!272790 result!272712))

(assert (=> d!1144979 t!313796))

(declare-fun t!313798 () Bool)

(declare-fun tb!223983 () Bool)

(assert (=> (and b!3864134 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 prefixTokens!80))))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80))))) t!313798) tb!223983))

(declare-fun result!272792 () Bool)

(assert (= result!272792 result!272756))

(assert (=> b!3864006 t!313798))

(declare-fun b_and!289405 () Bool)

(declare-fun tp!1171424 () Bool)

(assert (=> b!3864134 (= tp!1171424 (and (=> t!313794 result!272788) (=> t!313796 result!272790) (=> t!313798 result!272792) b_and!289405))))

(declare-fun e!2389215 () Bool)

(assert (=> b!3864134 (= e!2389215 (and tp!1171426 tp!1171424))))

(declare-fun tp!1171428 () Bool)

(declare-fun b!3864133 () Bool)

(declare-fun e!2389219 () Bool)

(assert (=> b!3864133 (= e!2389219 (and tp!1171428 (inv!55147 (tag!7208 (rule!9222 (h!46410 (t!313701 prefixTokens!80))))) (inv!55151 (transformation!6348 (rule!9222 (h!46410 (t!313701 prefixTokens!80))))) e!2389215))))

(declare-fun e!2389216 () Bool)

(assert (=> b!3863516 (= tp!1171299 e!2389216)))

(declare-fun e!2389218 () Bool)

(declare-fun b!3864131 () Bool)

(declare-fun tp!1171427 () Bool)

(assert (=> b!3864131 (= e!2389216 (and (inv!55150 (h!46410 (t!313701 prefixTokens!80))) e!2389218 tp!1171427))))

(declare-fun b!3864132 () Bool)

(declare-fun tp!1171425 () Bool)

(assert (=> b!3864132 (= e!2389218 (and (inv!21 (value!201552 (h!46410 (t!313701 prefixTokens!80)))) e!2389219 tp!1171425))))

(assert (= b!3864133 b!3864134))

(assert (= b!3864132 b!3864133))

(assert (= b!3864131 b!3864132))

(assert (= (and b!3863516 ((_ is Cons!40990) (t!313701 prefixTokens!80))) b!3864131))

(declare-fun m!4419665 () Bool)

(assert (=> b!3864133 m!4419665))

(declare-fun m!4419667 () Bool)

(assert (=> b!3864133 m!4419667))

(declare-fun m!4419669 () Bool)

(assert (=> b!3864131 m!4419669))

(declare-fun m!4419671 () Bool)

(assert (=> b!3864132 m!4419671))

(declare-fun b!3864137 () Bool)

(declare-fun e!2389221 () Bool)

(declare-fun tp!1171431 () Bool)

(assert (=> b!3864137 (= e!2389221 tp!1171431)))

(declare-fun b!3864136 () Bool)

(declare-fun tp!1171430 () Bool)

(declare-fun tp!1171429 () Bool)

(assert (=> b!3864136 (= e!2389221 (and tp!1171430 tp!1171429))))

(declare-fun b!3864138 () Bool)

(declare-fun tp!1171432 () Bool)

(declare-fun tp!1171433 () Bool)

(assert (=> b!3864138 (= e!2389221 (and tp!1171432 tp!1171433))))

(assert (=> b!3863503 (= tp!1171296 e!2389221)))

(declare-fun b!3864135 () Bool)

(assert (=> b!3864135 (= e!2389221 tp_is_empty!19477)))

(assert (= (and b!3863503 ((_ is ElementMatch!11253) (regex!6348 (h!46411 rules!2768)))) b!3864135))

(assert (= (and b!3863503 ((_ is Concat!17832) (regex!6348 (h!46411 rules!2768)))) b!3864136))

(assert (= (and b!3863503 ((_ is Star!11253) (regex!6348 (h!46411 rules!2768)))) b!3864137))

(assert (= (and b!3863503 ((_ is Union!11253) (regex!6348 (h!46411 rules!2768)))) b!3864138))

(declare-fun b!3864139 () Bool)

(declare-fun e!2389222 () Bool)

(declare-fun tp!1171434 () Bool)

(assert (=> b!3864139 (= e!2389222 (and tp_is_empty!19477 tp!1171434))))

(assert (=> b!3863512 (= tp!1171289 e!2389222)))

(assert (= (and b!3863512 ((_ is Cons!40989) (originalCharacters!6948 (h!46410 prefixTokens!80)))) b!3864139))

(declare-fun b!3864140 () Bool)

(declare-fun e!2389223 () Bool)

(declare-fun tp!1171435 () Bool)

(assert (=> b!3864140 (= e!2389223 (and tp_is_empty!19477 tp!1171435))))

(assert (=> b!3863525 (= tp!1171298 e!2389223)))

(assert (= (and b!3863525 ((_ is Cons!40989) (originalCharacters!6948 (h!46410 suffixTokens!72)))) b!3864140))

(declare-fun b!3864143 () Bool)

(declare-fun e!2389224 () Bool)

(declare-fun tp!1171438 () Bool)

(assert (=> b!3864143 (= e!2389224 tp!1171438)))

(declare-fun b!3864142 () Bool)

(declare-fun tp!1171437 () Bool)

(declare-fun tp!1171436 () Bool)

(assert (=> b!3864142 (= e!2389224 (and tp!1171437 tp!1171436))))

(declare-fun b!3864144 () Bool)

(declare-fun tp!1171439 () Bool)

(declare-fun tp!1171440 () Bool)

(assert (=> b!3864144 (= e!2389224 (and tp!1171439 tp!1171440))))

(assert (=> b!3863524 (= tp!1171288 e!2389224)))

(declare-fun b!3864141 () Bool)

(assert (=> b!3864141 (= e!2389224 tp_is_empty!19477)))

(assert (= (and b!3863524 ((_ is ElementMatch!11253) (regex!6348 (rule!9222 (h!46410 suffixTokens!72))))) b!3864141))

(assert (= (and b!3863524 ((_ is Concat!17832) (regex!6348 (rule!9222 (h!46410 suffixTokens!72))))) b!3864142))

(assert (= (and b!3863524 ((_ is Star!11253) (regex!6348 (rule!9222 (h!46410 suffixTokens!72))))) b!3864143))

(assert (= (and b!3863524 ((_ is Union!11253) (regex!6348 (rule!9222 (h!46410 suffixTokens!72))))) b!3864144))

(declare-fun b_lambda!112931 () Bool)

(assert (= b_lambda!112929 (or (and b!3864118 b_free!104031 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 suffixTokens!72))))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))))) (and b!3863502 b_free!104011) (and b!3864134 b_free!104039 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 prefixTokens!80))))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))))) (and b!3863500 b_free!104007 (= (toChars!8635 (transformation!6348 (h!46411 rules!2768))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))))) (and b!3863517 b_free!104015 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))))) (and b!3864129 b_free!104035 (= (toChars!8635 (transformation!6348 (h!46411 (t!313702 rules!2768)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))))) b_lambda!112931)))

(declare-fun b_lambda!112933 () Bool)

(assert (= b_lambda!112917 (or (and b!3864129 b_free!104035 (= (toChars!8635 (transformation!6348 (h!46411 (t!313702 rules!2768)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))))) (and b!3863500 b_free!104007 (= (toChars!8635 (transformation!6348 (h!46411 rules!2768))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))))) (and b!3863517 b_free!104015) (and b!3864134 b_free!104039 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 prefixTokens!80))))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))))) (and b!3863502 b_free!104011 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 prefixTokens!80)))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))))) (and b!3864118 b_free!104031 (= (toChars!8635 (transformation!6348 (rule!9222 (h!46410 (t!313701 suffixTokens!72))))) (toChars!8635 (transformation!6348 (rule!9222 (h!46410 suffixTokens!72)))))) b_lambda!112933)))

(check-sat (not d!1145021) (not b!3863997) (not b_lambda!112931) (not d!1144981) b_and!289361 (not d!1145001) (not b!3864117) (not b_next!104735) (not b_lambda!112933) (not b!3863749) (not b!3863801) (not d!1144997) b_and!289391 (not b!3863854) (not b!3864130) (not d!1144937) (not b!3864138) (not tb!223913) (not b!3863844) (not d!1145039) (not b!3863776) (not b!3864049) (not b!3864133) b_and!289403 (not b!3864002) (not b!3863802) (not b!3863889) (not b_next!104713) (not b!3864104) (not b!3864012) (not b!3863759) (not tb!223907) (not b!3864007) (not b!3863751) (not b!3864055) (not b!3863769) (not d!1144971) b_and!289395 (not b!3864003) (not b!3863772) (not d!1144963) (not b!3863768) (not b!3863746) (not b!3864005) (not b!3864102) (not b!3864010) (not b_next!104719) (not d!1144903) (not b!3864103) (not b!3863774) (not b!3864144) (not b!3864044) (not b!3863660) (not b!3864080) (not d!1144979) (not b!3863853) (not b!3863998) (not b!3863858) b_and!289359 (not b!3863676) b_and!289393 (not b!3864053) (not b!3864082) (not b!3863696) (not b!3863793) (not b!3864127) (not d!1144945) tp_is_empty!19477 (not b!3863697) (not d!1144931) (not b_next!104717) (not b!3864143) (not b!3864089) (not b!3864137) b_and!289399 (not d!1144863) (not b!3864101) (not b!3863888) (not d!1145033) (not b!3864139) (not d!1145031) b_and!289389 (not b!3864136) (not b!3863752) (not b!3863871) (not d!1144989) (not b!3864008) (not tb!223955) (not b!3863788) (not b!3863797) (not b!3864054) (not bm!282592) (not b!3864115) (not b_next!104711) (not d!1144995) (not d!1144967) (not b!3863796) (not b!3864047) (not b!3864079) (not b!3864083) (not b!3864078) (not b!3864142) (not b_lambda!112919) (not b!3863859) (not b!3863794) (not b!3863789) (not b!3864001) (not b!3863790) (not d!1144999) (not d!1145041) (not d!1145027) (not b!3864006) (not b!3864131) (not b!3864011) (not b!3863661) (not b_next!104733) (not b!3864132) (not b!3864076) (not d!1144991) (not d!1144969) (not b_next!104739) (not b!3863834) (not b!3864081) (not d!1144987) (not d!1144965) (not d!1144951) (not b!3864140) b_and!289363 (not d!1144961) (not b!3863999) (not b_next!104715) (not b!3864004) (not b!3863758) (not b_next!104743) (not b!3864015) b_and!289401 (not b_next!104741) (not b!3864084) (not b!3864116) (not b!3863870) (not d!1144893) (not b!3863833) (not b_lambda!112921) (not b_next!104737) (not b!3863872) (not b!3864128) (not d!1144929) (not d!1144927) (not d!1144925) (not b!3863860) (not b!3863800) b_and!289397 b_and!289405 (not b!3863850) (not b!3863764) (not d!1145043) (not b!3863662) (not bm!282595) (not b_next!104709) (not b!3863677) (not tb!223919) (not b!3863767))
(check-sat b_and!289391 b_and!289395 (not b_next!104719) b_and!289359 b_and!289393 (not b_next!104717) b_and!289399 b_and!289389 (not b_next!104711) (not b_next!104733) (not b_next!104739) b_and!289363 (not b_next!104737) (not b_next!104709) (not b_next!104735) b_and!289361 (not b_next!104713) b_and!289403 (not b_next!104715) (not b_next!104743) b_and!289401 (not b_next!104741) b_and!289397 b_and!289405)
