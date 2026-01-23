; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368236 () Bool)

(assert start!368236)

(declare-fun b!3926608 () Bool)

(declare-fun b_free!107069 () Bool)

(declare-fun b_next!107773 () Bool)

(assert (=> b!3926608 (= b_free!107069 (not b_next!107773))))

(declare-fun tp!1195496 () Bool)

(declare-fun b_and!299471 () Bool)

(assert (=> b!3926608 (= tp!1195496 b_and!299471)))

(declare-fun b_free!107071 () Bool)

(declare-fun b_next!107775 () Bool)

(assert (=> b!3926608 (= b_free!107071 (not b_next!107775))))

(declare-fun tp!1195503 () Bool)

(declare-fun b_and!299473 () Bool)

(assert (=> b!3926608 (= tp!1195503 b_and!299473)))

(declare-fun b!3926627 () Bool)

(declare-fun b_free!107073 () Bool)

(declare-fun b_next!107777 () Bool)

(assert (=> b!3926627 (= b_free!107073 (not b_next!107777))))

(declare-fun tp!1195491 () Bool)

(declare-fun b_and!299475 () Bool)

(assert (=> b!3926627 (= tp!1195491 b_and!299475)))

(declare-fun b_free!107075 () Bool)

(declare-fun b_next!107779 () Bool)

(assert (=> b!3926627 (= b_free!107075 (not b_next!107779))))

(declare-fun tp!1195502 () Bool)

(declare-fun b_and!299477 () Bool)

(assert (=> b!3926627 (= tp!1195502 b_and!299477)))

(declare-fun b!3926624 () Bool)

(declare-fun b_free!107077 () Bool)

(declare-fun b_next!107781 () Bool)

(assert (=> b!3926624 (= b_free!107077 (not b_next!107781))))

(declare-fun tp!1195504 () Bool)

(declare-fun b_and!299479 () Bool)

(assert (=> b!3926624 (= tp!1195504 b_and!299479)))

(declare-fun b_free!107079 () Bool)

(declare-fun b_next!107783 () Bool)

(assert (=> b!3926624 (= b_free!107079 (not b_next!107783))))

(declare-fun tp!1195492 () Bool)

(declare-fun b_and!299481 () Bool)

(assert (=> b!3926624 (= tp!1195492 b_and!299481)))

(declare-fun b!3926588 () Bool)

(declare-fun c!682215 () Bool)

(declare-datatypes ((List!41815 0))(
  ( (Nil!41691) (Cons!41691 (h!47111 (_ BitVec 16)) (t!325046 List!41815)) )
))
(declare-datatypes ((TokenValue!6736 0))(
  ( (FloatLiteralValue!13472 (text!47597 List!41815)) (TokenValueExt!6735 (__x!25689 Int)) (Broken!33680 (value!206029 List!41815)) (Object!6859) (End!6736) (Def!6736) (Underscore!6736) (Match!6736) (Else!6736) (Error!6736) (Case!6736) (If!6736) (Extends!6736) (Abstract!6736) (Class!6736) (Val!6736) (DelimiterValue!13472 (del!6796 List!41815)) (KeywordValue!6742 (value!206030 List!41815)) (CommentValue!13472 (value!206031 List!41815)) (WhitespaceValue!13472 (value!206032 List!41815)) (IndentationValue!6736 (value!206033 List!41815)) (String!47397) (Int32!6736) (Broken!33681 (value!206034 List!41815)) (Boolean!6737) (Unit!60021) (OperatorValue!6739 (op!6796 List!41815)) (IdentifierValue!13472 (value!206035 List!41815)) (IdentifierValue!13473 (value!206036 List!41815)) (WhitespaceValue!13473 (value!206037 List!41815)) (True!13472) (False!13472) (Broken!33682 (value!206038 List!41815)) (Broken!33683 (value!206039 List!41815)) (True!13473) (RightBrace!6736) (RightBracket!6736) (Colon!6736) (Null!6736) (Comma!6736) (LeftBracket!6736) (False!13473) (LeftBrace!6736) (ImaginaryLiteralValue!6736 (text!47598 List!41815)) (StringLiteralValue!20208 (value!206040 List!41815)) (EOFValue!6736 (value!206041 List!41815)) (IdentValue!6736 (value!206042 List!41815)) (DelimiterValue!13473 (value!206043 List!41815)) (DedentValue!6736 (value!206044 List!41815)) (NewLineValue!6736 (value!206045 List!41815)) (IntegerValue!20208 (value!206046 (_ BitVec 32)) (text!47599 List!41815)) (IntegerValue!20209 (value!206047 Int) (text!47600 List!41815)) (Times!6736) (Or!6736) (Equal!6736) (Minus!6736) (Broken!33684 (value!206048 List!41815)) (And!6736) (Div!6736) (LessEqual!6736) (Mod!6736) (Concat!18147) (Not!6736) (Plus!6736) (SpaceValue!6736 (value!206049 List!41815)) (IntegerValue!20210 (value!206050 Int) (text!47601 List!41815)) (StringLiteralValue!20209 (text!47602 List!41815)) (FloatLiteralValue!13473 (text!47603 List!41815)) (BytesLiteralValue!6736 (value!206051 List!41815)) (CommentValue!13473 (value!206052 List!41815)) (StringLiteralValue!20210 (value!206053 List!41815)) (ErrorTokenValue!6736 (msg!6797 List!41815)) )
))
(declare-datatypes ((C!23008 0))(
  ( (C!23009 (val!13598 Int)) )
))
(declare-datatypes ((Regex!11411 0))(
  ( (ElementMatch!11411 (c!682218 C!23008)) (Concat!18148 (regOne!23334 Regex!11411) (regTwo!23334 Regex!11411)) (EmptyExpr!11411) (Star!11411 (reg!11740 Regex!11411)) (EmptyLang!11411) (Union!11411 (regOne!23335 Regex!11411) (regTwo!23335 Regex!11411)) )
))
(declare-datatypes ((String!47398 0))(
  ( (String!47399 (value!206054 String)) )
))
(declare-datatypes ((List!41816 0))(
  ( (Nil!41692) (Cons!41692 (h!47112 C!23008) (t!325047 List!41816)) )
))
(declare-datatypes ((IArray!25439 0))(
  ( (IArray!25440 (innerList!12777 List!41816)) )
))
(declare-datatypes ((Conc!12717 0))(
  ( (Node!12717 (left!31820 Conc!12717) (right!32150 Conc!12717) (csize!25664 Int) (cheight!12928 Int)) (Leaf!19677 (xs!16023 IArray!25439) (csize!25665 Int)) (Empty!12717) )
))
(declare-datatypes ((BalanceConc!25028 0))(
  ( (BalanceConc!25029 (c!682219 Conc!12717)) )
))
(declare-datatypes ((TokenValueInjection!12900 0))(
  ( (TokenValueInjection!12901 (toValue!8958 Int) (toChars!8817 Int)) )
))
(declare-datatypes ((Rule!12812 0))(
  ( (Rule!12813 (regex!6506 Regex!11411) (tag!7366 String!47398) (isSeparator!6506 Bool) (transformation!6506 TokenValueInjection!12900)) )
))
(declare-datatypes ((Token!12150 0))(
  ( (Token!12151 (value!206055 TokenValue!6736) (rule!9446 Rule!12812) (size!31281 Int) (originalCharacters!7106 List!41816)) )
))
(declare-datatypes ((List!41817 0))(
  ( (Nil!41693) (Cons!41693 (h!47113 Token!12150) (t!325048 List!41817)) )
))
(declare-fun lt!1370462 () List!41817)

(declare-fun isEmpty!24844 (List!41817) Bool)

(assert (=> b!3926588 (= c!682215 (isEmpty!24844 lt!1370462))))

(declare-fun prefixTokens!80 () List!41817)

(declare-fun tail!6053 (List!41817) List!41817)

(assert (=> b!3926588 (= lt!1370462 (tail!6053 prefixTokens!80))))

(declare-datatypes ((Unit!60022 0))(
  ( (Unit!60023) )
))
(declare-fun e!2428865 () Unit!60022)

(declare-fun e!2428854 () Unit!60022)

(assert (=> b!3926588 (= e!2428865 e!2428854)))

(declare-fun e!2428862 () Bool)

(declare-datatypes ((List!41818 0))(
  ( (Nil!41694) (Cons!41694 (h!47114 Rule!12812) (t!325049 List!41818)) )
))
(declare-fun rules!2768 () List!41818)

(declare-fun tp!1195506 () Bool)

(declare-fun e!2428851 () Bool)

(declare-fun b!3926589 () Bool)

(declare-fun inv!55880 (String!47398) Bool)

(declare-fun inv!55883 (TokenValueInjection!12900) Bool)

(assert (=> b!3926589 (= e!2428862 (and tp!1195506 (inv!55880 (tag!7366 (h!47114 rules!2768))) (inv!55883 (transformation!6506 (h!47114 rules!2768))) e!2428851))))

(declare-fun b!3926590 () Bool)

(declare-fun e!2428880 () Bool)

(assert (=> b!3926590 (= e!2428880 false)))

(declare-fun b!3926591 () Bool)

(declare-fun res!1588606 () Bool)

(declare-fun e!2428845 () Bool)

(assert (=> b!3926591 (=> (not res!1588606) (not e!2428845))))

(declare-fun isEmpty!24845 (List!41818) Bool)

(assert (=> b!3926591 (= res!1588606 (not (isEmpty!24845 rules!2768)))))

(declare-fun b!3926592 () Bool)

(declare-fun e!2428864 () Unit!60022)

(declare-fun Unit!60024 () Unit!60022)

(assert (=> b!3926592 (= e!2428864 Unit!60024)))

(declare-fun b!3926593 () Bool)

(declare-fun e!2428868 () Bool)

(declare-fun e!2428855 () Bool)

(assert (=> b!3926593 (= e!2428868 e!2428855)))

(declare-fun res!1588609 () Bool)

(assert (=> b!3926593 (=> res!1588609 e!2428855)))

(declare-fun lt!1370464 () List!41816)

(declare-fun prefix!426 () List!41816)

(assert (=> b!3926593 (= res!1588609 (not (= lt!1370464 prefix!426)))))

(declare-fun lt!1370429 () List!41816)

(declare-fun lt!1370445 () List!41816)

(declare-fun ++!10769 (List!41816 List!41816) List!41816)

(assert (=> b!3926593 (= lt!1370464 (++!10769 lt!1370429 lt!1370445))))

(declare-fun getSuffix!2056 (List!41816 List!41816) List!41816)

(assert (=> b!3926593 (= lt!1370445 (getSuffix!2056 prefix!426 lt!1370429))))

(declare-fun b!3926594 () Bool)

(declare-fun res!1588607 () Bool)

(assert (=> b!3926594 (=> (not res!1588607) (not e!2428845))))

(declare-fun isEmpty!24846 (List!41816) Bool)

(assert (=> b!3926594 (= res!1588607 (not (isEmpty!24846 prefix!426)))))

(declare-fun b!3926595 () Bool)

(declare-fun Unit!60025 () Unit!60022)

(assert (=> b!3926595 (= e!2428854 Unit!60025)))

(declare-datatypes ((tuple2!40962 0))(
  ( (tuple2!40963 (_1!23615 Token!12150) (_2!23615 List!41816)) )
))
(declare-fun lt!1370451 () tuple2!40962)

(declare-fun suffixResult!91 () List!41816)

(declare-fun suffix!1176 () List!41816)

(declare-fun suffixTokens!72 () List!41817)

(declare-fun lt!1370444 () Unit!60022)

(declare-datatypes ((LexerInterface!6095 0))(
  ( (LexerInterfaceExt!6092 (__x!25690 Int)) (Lexer!6093) )
))
(declare-fun thiss!20629 () LexerInterface!6095)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!106 (LexerInterface!6095 List!41818 List!41816 List!41816 List!41817 List!41816 List!41817) Unit!60022)

(assert (=> b!3926595 (= lt!1370444 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!106 thiss!20629 rules!2768 suffix!1176 (_2!23615 lt!1370451) suffixTokens!72 suffixResult!91 lt!1370462))))

(declare-datatypes ((tuple2!40964 0))(
  ( (tuple2!40965 (_1!23616 List!41817) (_2!23616 List!41816)) )
))
(declare-fun call!284728 () tuple2!40964)

(declare-fun res!1588600 () Bool)

(declare-fun ++!10770 (List!41817 List!41817) List!41817)

(assert (=> b!3926595 (= res!1588600 (not (= call!284728 (tuple2!40965 (++!10770 lt!1370462 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2428873 () Bool)

(assert (=> b!3926595 (=> (not res!1588600) (not e!2428873))))

(assert (=> b!3926595 e!2428873))

(declare-fun b!3926596 () Bool)

(declare-fun e!2428857 () Bool)

(declare-fun e!2428870 () Bool)

(assert (=> b!3926596 (= e!2428857 e!2428870)))

(declare-fun res!1588596 () Bool)

(assert (=> b!3926596 (=> res!1588596 e!2428870)))

(declare-fun lt!1370440 () List!41816)

(declare-fun lt!1370428 () List!41816)

(declare-fun lt!1370425 () List!41816)

(declare-fun lt!1370452 () List!41816)

(assert (=> b!3926596 (= res!1588596 (or (not (= lt!1370425 lt!1370428)) (not (= lt!1370425 lt!1370452)) (not (= lt!1370440 lt!1370452))))))

(assert (=> b!3926596 (= lt!1370428 lt!1370452)))

(declare-fun lt!1370439 () List!41816)

(assert (=> b!3926596 (= lt!1370452 (++!10769 lt!1370429 lt!1370439))))

(assert (=> b!3926596 (= lt!1370439 (++!10769 lt!1370445 suffix!1176))))

(declare-fun lt!1370433 () Unit!60022)

(declare-fun lemmaConcatAssociativity!2302 (List!41816 List!41816 List!41816) Unit!60022)

(assert (=> b!3926596 (= lt!1370433 (lemmaConcatAssociativity!2302 lt!1370429 lt!1370445 suffix!1176))))

(declare-fun b!3926598 () Bool)

(declare-fun e!2428875 () Bool)

(declare-fun tp_is_empty!19793 () Bool)

(declare-fun tp!1195493 () Bool)

(assert (=> b!3926598 (= e!2428875 (and tp_is_empty!19793 tp!1195493))))

(declare-fun e!2428847 () Bool)

(declare-fun e!2428846 () Bool)

(declare-fun tp!1195497 () Bool)

(declare-fun b!3926599 () Bool)

(declare-fun inv!55884 (Token!12150) Bool)

(assert (=> b!3926599 (= e!2428846 (and (inv!55884 (h!47113 prefixTokens!80)) e!2428847 tp!1195497))))

(declare-fun b!3926600 () Bool)

(declare-fun e!2428881 () Bool)

(declare-fun e!2428869 () Bool)

(assert (=> b!3926600 (= e!2428881 (not e!2428869))))

(declare-fun res!1588590 () Bool)

(assert (=> b!3926600 (=> res!1588590 e!2428869)))

(assert (=> b!3926600 (= res!1588590 (not (= lt!1370440 lt!1370425)))))

(declare-fun lt!1370460 () tuple2!40964)

(declare-datatypes ((Option!8926 0))(
  ( (None!8925) (Some!8925 (v!39251 tuple2!40962)) )
))
(declare-fun lt!1370424 () Option!8926)

(declare-fun lexList!1863 (LexerInterface!6095 List!41818 List!41816) tuple2!40964)

(assert (=> b!3926600 (= lt!1370460 (lexList!1863 thiss!20629 rules!2768 (_2!23615 (v!39251 lt!1370424))))))

(declare-fun lt!1370443 () TokenValue!6736)

(declare-fun lt!1370463 () List!41816)

(declare-fun lt!1370465 () Int)

(assert (=> b!3926600 (and (= (size!31281 (_1!23615 (v!39251 lt!1370424))) lt!1370465) (= (originalCharacters!7106 (_1!23615 (v!39251 lt!1370424))) lt!1370429) (= (v!39251 lt!1370424) (tuple2!40963 (Token!12151 lt!1370443 (rule!9446 (_1!23615 (v!39251 lt!1370424))) lt!1370465 lt!1370429) lt!1370463)))))

(declare-fun size!31282 (List!41816) Int)

(assert (=> b!3926600 (= lt!1370465 (size!31282 lt!1370429))))

(declare-fun e!2428856 () Bool)

(assert (=> b!3926600 e!2428856))

(declare-fun res!1588597 () Bool)

(assert (=> b!3926600 (=> (not res!1588597) (not e!2428856))))

(assert (=> b!3926600 (= res!1588597 (= (value!206055 (_1!23615 (v!39251 lt!1370424))) lt!1370443))))

(declare-fun apply!9745 (TokenValueInjection!12900 BalanceConc!25028) TokenValue!6736)

(declare-fun seqFromList!4773 (List!41816) BalanceConc!25028)

(assert (=> b!3926600 (= lt!1370443 (apply!9745 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) (seqFromList!4773 lt!1370429)))))

(assert (=> b!3926600 (= (_2!23615 (v!39251 lt!1370424)) lt!1370463)))

(declare-fun lt!1370448 () Unit!60022)

(declare-fun lemmaSamePrefixThenSameSuffix!1822 (List!41816 List!41816 List!41816 List!41816 List!41816) Unit!60022)

(assert (=> b!3926600 (= lt!1370448 (lemmaSamePrefixThenSameSuffix!1822 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 lt!1370463 lt!1370425))))

(assert (=> b!3926600 (= lt!1370463 (getSuffix!2056 lt!1370425 lt!1370429))))

(declare-fun isPrefix!3601 (List!41816 List!41816) Bool)

(assert (=> b!3926600 (isPrefix!3601 lt!1370429 lt!1370440)))

(assert (=> b!3926600 (= lt!1370440 (++!10769 lt!1370429 (_2!23615 (v!39251 lt!1370424))))))

(declare-fun lt!1370437 () Unit!60022)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2464 (List!41816 List!41816) Unit!60022)

(assert (=> b!3926600 (= lt!1370437 (lemmaConcatTwoListThenFirstIsPrefix!2464 lt!1370429 (_2!23615 (v!39251 lt!1370424))))))

(declare-fun list!15491 (BalanceConc!25028) List!41816)

(declare-fun charsOf!4330 (Token!12150) BalanceConc!25028)

(assert (=> b!3926600 (= lt!1370429 (list!15491 (charsOf!4330 (_1!23615 (v!39251 lt!1370424)))))))

(declare-fun ruleValid!2454 (LexerInterface!6095 Rule!12812) Bool)

(assert (=> b!3926600 (ruleValid!2454 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))))))

(declare-fun lt!1370458 () Unit!60022)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1534 (LexerInterface!6095 Rule!12812 List!41818) Unit!60022)

(assert (=> b!3926600 (= lt!1370458 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1534 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))) rules!2768))))

(declare-fun lt!1370427 () Unit!60022)

(declare-fun lemmaCharactersSize!1163 (Token!12150) Unit!60022)

(assert (=> b!3926600 (= lt!1370427 (lemmaCharactersSize!1163 (_1!23615 (v!39251 lt!1370424))))))

(declare-fun b!3926601 () Bool)

(declare-fun e!2428858 () Bool)

(declare-fun tp!1195498 () Bool)

(assert (=> b!3926601 (= e!2428858 (and e!2428862 tp!1195498))))

(declare-fun b!3926602 () Bool)

(declare-fun e!2428866 () Bool)

(declare-fun lt!1370446 () List!41817)

(assert (=> b!3926602 (= e!2428866 (= prefixTokens!80 lt!1370446))))

(declare-fun b!3926603 () Bool)

(declare-fun e!2428860 () Bool)

(declare-fun e!2428863 () Bool)

(assert (=> b!3926603 (= e!2428860 e!2428863)))

(declare-fun res!1588599 () Bool)

(assert (=> b!3926603 (=> res!1588599 e!2428863)))

(declare-fun lt!1370441 () Int)

(declare-fun lt!1370442 () Int)

(assert (=> b!3926603 (= res!1588599 (<= lt!1370441 lt!1370442))))

(declare-fun lt!1370459 () Unit!60022)

(declare-fun e!2428844 () Unit!60022)

(assert (=> b!3926603 (= lt!1370459 e!2428844)))

(declare-fun c!682216 () Bool)

(assert (=> b!3926603 (= c!682216 (= lt!1370441 lt!1370442))))

(declare-fun lt!1370453 () Unit!60022)

(assert (=> b!3926603 (= lt!1370453 e!2428864)))

(declare-fun c!682214 () Bool)

(assert (=> b!3926603 (= c!682214 (< lt!1370441 lt!1370442))))

(assert (=> b!3926603 (= lt!1370442 (size!31282 suffix!1176))))

(assert (=> b!3926603 (= lt!1370441 (size!31282 (_2!23615 (v!39251 lt!1370424))))))

(declare-fun b!3926604 () Bool)

(declare-fun Unit!60026 () Unit!60022)

(assert (=> b!3926604 (= e!2428854 Unit!60026)))

(declare-fun lt!1370432 () Unit!60022)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!554 (List!41816 List!41816 List!41816 List!41816) Unit!60022)

(assert (=> b!3926604 (= lt!1370432 (lemmaConcatSameAndSameSizesThenSameLists!554 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 (_2!23615 lt!1370451)))))

(assert (=> b!3926604 (= (_2!23615 (v!39251 lt!1370424)) (_2!23615 lt!1370451))))

(declare-fun lt!1370430 () Unit!60022)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!106 (LexerInterface!6095 List!41818 List!41816 List!41816 List!41817 List!41816) Unit!60022)

(assert (=> b!3926604 (= lt!1370430 (lemmaLexWithSmallerInputCannotProduceSameResults!106 thiss!20629 rules!2768 suffix!1176 (_2!23615 lt!1370451) suffixTokens!72 suffixResult!91))))

(declare-fun res!1588588 () Bool)

(declare-fun lt!1370461 () tuple2!40964)

(assert (=> b!3926604 (= res!1588588 (not (= call!284728 lt!1370461)))))

(assert (=> b!3926604 (=> (not res!1588588) (not e!2428880))))

(assert (=> b!3926604 e!2428880))

(declare-fun b!3926605 () Bool)

(declare-fun res!1588592 () Bool)

(assert (=> b!3926605 (=> res!1588592 e!2428866)))

(declare-fun lt!1370423 () List!41817)

(assert (=> b!3926605 (= res!1588592 (not (isEmpty!24844 lt!1370423)))))

(declare-fun b!3926606 () Bool)

(declare-fun e!2428872 () Bool)

(declare-fun e!2428859 () Bool)

(assert (=> b!3926606 (= e!2428872 e!2428859)))

(declare-fun res!1588591 () Bool)

(assert (=> b!3926606 (=> (not res!1588591) (not e!2428859))))

(assert (=> b!3926606 (= res!1588591 (= (lexList!1863 thiss!20629 rules!2768 suffix!1176) lt!1370461))))

(assert (=> b!3926606 (= lt!1370461 (tuple2!40965 suffixTokens!72 suffixResult!91))))

(declare-fun b!3926607 () Bool)

(assert (=> b!3926607 (= e!2428855 e!2428857)))

(declare-fun res!1588593 () Bool)

(assert (=> b!3926607 (=> res!1588593 e!2428857)))

(assert (=> b!3926607 (= res!1588593 (or (not (= lt!1370428 lt!1370425)) (not (= lt!1370428 lt!1370440))))))

(assert (=> b!3926607 (= lt!1370428 (++!10769 lt!1370464 suffix!1176))))

(assert (=> b!3926608 (= e!2428851 (and tp!1195496 tp!1195503))))

(declare-fun bm!284723 () Bool)

(assert (=> bm!284723 (= call!284728 (lexList!1863 thiss!20629 rules!2768 (_2!23615 lt!1370451)))))

(declare-fun b!3926609 () Bool)

(declare-fun e!2428882 () Bool)

(declare-fun tp!1195505 () Bool)

(assert (=> b!3926609 (= e!2428882 (and tp_is_empty!19793 tp!1195505))))

(declare-fun b!3926610 () Bool)

(declare-fun res!1588610 () Bool)

(assert (=> b!3926610 (=> (not res!1588610) (not e!2428845))))

(assert (=> b!3926610 (= res!1588610 (not (isEmpty!24844 prefixTokens!80)))))

(declare-fun b!3926611 () Bool)

(assert (=> b!3926611 (= e!2428859 e!2428881)))

(declare-fun res!1588608 () Bool)

(assert (=> b!3926611 (=> (not res!1588608) (not e!2428881))))

(get-info :version)

(assert (=> b!3926611 (= res!1588608 ((_ is Some!8925) lt!1370424))))

(declare-fun maxPrefix!3399 (LexerInterface!6095 List!41818 List!41816) Option!8926)

(assert (=> b!3926611 (= lt!1370424 (maxPrefix!3399 thiss!20629 rules!2768 lt!1370425))))

(declare-fun b!3926612 () Bool)

(declare-fun e!2428852 () Bool)

(assert (=> b!3926612 (= e!2428852 e!2428866)))

(declare-fun res!1588603 () Bool)

(assert (=> b!3926612 (=> res!1588603 e!2428866)))

(assert (=> b!3926612 (= res!1588603 (not (= lt!1370460 (tuple2!40965 (++!10770 lt!1370423 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3926612 (= lt!1370423 (tail!6053 prefixTokens!80))))

(assert (=> b!3926612 (isPrefix!3601 lt!1370445 lt!1370439)))

(declare-fun lt!1370457 () Unit!60022)

(assert (=> b!3926612 (= lt!1370457 (lemmaConcatTwoListThenFirstIsPrefix!2464 lt!1370445 suffix!1176))))

(declare-fun b!3926613 () Bool)

(assert (=> b!3926613 (= e!2428856 (= (size!31281 (_1!23615 (v!39251 lt!1370424))) (size!31282 (originalCharacters!7106 (_1!23615 (v!39251 lt!1370424))))))))

(declare-fun b!3926614 () Bool)

(declare-fun res!1588601 () Bool)

(assert (=> b!3926614 (=> res!1588601 e!2428860)))

(assert (=> b!3926614 (= res!1588601 (or (not (= lt!1370460 (tuple2!40965 (_1!23616 lt!1370460) (_2!23616 lt!1370460)))) (= (_2!23615 (v!39251 lt!1370424)) suffix!1176)))))

(declare-fun b!3926615 () Bool)

(declare-fun e!2428871 () Bool)

(declare-fun tp!1195495 () Bool)

(declare-fun inv!21 (TokenValue!6736) Bool)

(assert (=> b!3926615 (= e!2428847 (and (inv!21 (value!206055 (h!47113 prefixTokens!80))) e!2428871 tp!1195495))))

(declare-fun b!3926616 () Bool)

(declare-fun e!2428878 () Bool)

(declare-fun tp!1195501 () Bool)

(assert (=> b!3926616 (= e!2428878 (and tp_is_empty!19793 tp!1195501))))

(declare-fun b!3926617 () Bool)

(declare-fun e!2428879 () Bool)

(declare-fun e!2428874 () Bool)

(declare-fun tp!1195490 () Bool)

(assert (=> b!3926617 (= e!2428879 (and tp!1195490 (inv!55880 (tag!7366 (rule!9446 (h!47113 suffixTokens!72)))) (inv!55883 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) e!2428874))))

(declare-fun b!3926618 () Bool)

(declare-fun Unit!60027 () Unit!60022)

(assert (=> b!3926618 (= e!2428865 Unit!60027)))

(declare-fun b!3926619 () Bool)

(declare-fun Unit!60028 () Unit!60022)

(assert (=> b!3926619 (= e!2428844 Unit!60028)))

(declare-fun lt!1370450 () Unit!60022)

(assert (=> b!3926619 (= lt!1370450 (lemmaConcatTwoListThenFirstIsPrefix!2464 prefix!426 suffix!1176))))

(assert (=> b!3926619 (isPrefix!3601 prefix!426 lt!1370425)))

(declare-fun lt!1370435 () Unit!60022)

(declare-fun lemmaIsPrefixSameLengthThenSameList!797 (List!41816 List!41816 List!41816) Unit!60022)

(assert (=> b!3926619 (= lt!1370435 (lemmaIsPrefixSameLengthThenSameList!797 lt!1370429 prefix!426 lt!1370425))))

(assert (=> b!3926619 (= lt!1370429 prefix!426)))

(declare-fun lt!1370436 () Unit!60022)

(assert (=> b!3926619 (= lt!1370436 (lemmaSamePrefixThenSameSuffix!1822 lt!1370429 (_2!23615 (v!39251 lt!1370424)) prefix!426 suffix!1176 lt!1370425))))

(assert (=> b!3926619 false))

(declare-fun b!3926620 () Bool)

(declare-fun tp!1195499 () Bool)

(declare-fun e!2428853 () Bool)

(assert (=> b!3926620 (= e!2428853 (and (inv!21 (value!206055 (h!47113 suffixTokens!72))) e!2428879 tp!1195499))))

(declare-fun b!3926621 () Bool)

(assert (=> b!3926621 (= e!2428869 e!2428860)))

(declare-fun res!1588602 () Bool)

(assert (=> b!3926621 (=> res!1588602 e!2428860)))

(declare-fun lt!1370455 () tuple2!40964)

(assert (=> b!3926621 (= res!1588602 (not (= lt!1370455 (tuple2!40965 (++!10770 lt!1370446 (_1!23616 lt!1370460)) (_2!23616 lt!1370460)))))))

(assert (=> b!3926621 (= lt!1370446 (Cons!41693 (_1!23615 (v!39251 lt!1370424)) Nil!41693))))

(declare-fun b!3926622 () Bool)

(assert (=> b!3926622 (= e!2428863 e!2428868)))

(declare-fun res!1588605 () Bool)

(assert (=> b!3926622 (=> res!1588605 e!2428868)))

(assert (=> b!3926622 (= res!1588605 (>= lt!1370465 (size!31282 prefix!426)))))

(assert (=> b!3926622 (isPrefix!3601 lt!1370429 prefix!426)))

(declare-fun lt!1370456 () Unit!60022)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!279 (List!41816 List!41816 List!41816) Unit!60022)

(assert (=> b!3926622 (= lt!1370456 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!279 prefix!426 lt!1370429 lt!1370425))))

(assert (=> b!3926622 (isPrefix!3601 prefix!426 lt!1370425)))

(declare-fun lt!1370438 () Unit!60022)

(assert (=> b!3926622 (= lt!1370438 (lemmaConcatTwoListThenFirstIsPrefix!2464 prefix!426 suffix!1176))))

(declare-fun b!3926623 () Bool)

(declare-fun res!1588595 () Bool)

(assert (=> b!3926623 (=> (not res!1588595) (not e!2428845))))

(declare-fun rulesInvariant!5438 (LexerInterface!6095 List!41818) Bool)

(assert (=> b!3926623 (= res!1588595 (rulesInvariant!5438 thiss!20629 rules!2768))))

(assert (=> b!3926624 (= e!2428874 (and tp!1195504 tp!1195492))))

(declare-fun b!3926625 () Bool)

(assert (=> b!3926625 (= e!2428873 false)))

(declare-fun tp!1195494 () Bool)

(declare-fun b!3926626 () Bool)

(declare-fun e!2428877 () Bool)

(assert (=> b!3926626 (= e!2428871 (and tp!1195494 (inv!55880 (tag!7366 (rule!9446 (h!47113 prefixTokens!80)))) (inv!55883 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) e!2428877))))

(assert (=> b!3926627 (= e!2428877 (and tp!1195491 tp!1195502))))

(declare-fun b!3926628 () Bool)

(declare-fun Unit!60029 () Unit!60022)

(assert (=> b!3926628 (= e!2428864 Unit!60029)))

(declare-fun lt!1370447 () Int)

(assert (=> b!3926628 (= lt!1370447 (size!31282 lt!1370425))))

(declare-fun lt!1370431 () Unit!60022)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1337 (LexerInterface!6095 List!41818 List!41816 List!41816 List!41816 Rule!12812) Unit!60022)

(assert (=> b!3926628 (= lt!1370431 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1337 thiss!20629 rules!2768 lt!1370429 lt!1370425 (_2!23615 (v!39251 lt!1370424)) (rule!9446 (_1!23615 (v!39251 lt!1370424)))))))

(declare-fun maxPrefixOneRule!2469 (LexerInterface!6095 Rule!12812 List!41816) Option!8926)

(assert (=> b!3926628 (= (maxPrefixOneRule!2469 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))) lt!1370425) (Some!8925 (tuple2!40963 (Token!12151 lt!1370443 (rule!9446 (_1!23615 (v!39251 lt!1370424))) lt!1370465 lt!1370429) (_2!23615 (v!39251 lt!1370424)))))))

(declare-fun get!13779 (Option!8926) tuple2!40962)

(assert (=> b!3926628 (= lt!1370451 (get!13779 lt!1370424))))

(declare-fun c!682217 () Bool)

(assert (=> b!3926628 (= c!682217 (< (size!31282 (_2!23615 lt!1370451)) lt!1370442))))

(declare-fun lt!1370434 () Unit!60022)

(assert (=> b!3926628 (= lt!1370434 e!2428865)))

(assert (=> b!3926628 false))

(declare-fun b!3926629 () Bool)

(declare-fun res!1588598 () Bool)

(assert (=> b!3926629 (=> res!1588598 e!2428863)))

(declare-fun head!8327 (List!41817) Token!12150)

(assert (=> b!3926629 (= res!1588598 (not (= (head!8327 prefixTokens!80) (_1!23615 (v!39251 lt!1370424)))))))

(declare-fun b!3926630 () Bool)

(assert (=> b!3926630 (= e!2428870 e!2428852)))

(declare-fun res!1588594 () Bool)

(assert (=> b!3926630 (=> res!1588594 e!2428852)))

(assert (=> b!3926630 (= res!1588594 (not (= lt!1370439 (_2!23615 (v!39251 lt!1370424)))))))

(assert (=> b!3926630 (= (_2!23615 (v!39251 lt!1370424)) lt!1370439)))

(declare-fun lt!1370449 () Unit!60022)

(assert (=> b!3926630 (= lt!1370449 (lemmaSamePrefixThenSameSuffix!1822 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 lt!1370439 lt!1370425))))

(assert (=> b!3926630 (isPrefix!3601 lt!1370429 lt!1370452)))

(declare-fun lt!1370426 () Unit!60022)

(assert (=> b!3926630 (= lt!1370426 (lemmaConcatTwoListThenFirstIsPrefix!2464 lt!1370429 lt!1370439))))

(declare-fun b!3926631 () Bool)

(declare-fun Unit!60030 () Unit!60022)

(assert (=> b!3926631 (= e!2428844 Unit!60030)))

(declare-fun b!3926632 () Bool)

(assert (=> b!3926632 (= e!2428845 e!2428872)))

(declare-fun res!1588604 () Bool)

(assert (=> b!3926632 (=> (not res!1588604) (not e!2428872))))

(declare-fun lt!1370454 () List!41817)

(assert (=> b!3926632 (= res!1588604 (= lt!1370455 (tuple2!40965 lt!1370454 suffixResult!91)))))

(assert (=> b!3926632 (= lt!1370455 (lexList!1863 thiss!20629 rules!2768 lt!1370425))))

(assert (=> b!3926632 (= lt!1370454 (++!10770 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3926632 (= lt!1370425 (++!10769 prefix!426 suffix!1176))))

(declare-fun res!1588589 () Bool)

(assert (=> start!368236 (=> (not res!1588589) (not e!2428845))))

(assert (=> start!368236 (= res!1588589 ((_ is Lexer!6093) thiss!20629))))

(assert (=> start!368236 e!2428845))

(assert (=> start!368236 e!2428882))

(assert (=> start!368236 true))

(assert (=> start!368236 e!2428875))

(assert (=> start!368236 e!2428858))

(assert (=> start!368236 e!2428846))

(declare-fun e!2428867 () Bool)

(assert (=> start!368236 e!2428867))

(assert (=> start!368236 e!2428878))

(declare-fun tp!1195500 () Bool)

(declare-fun b!3926597 () Bool)

(assert (=> b!3926597 (= e!2428867 (and (inv!55884 (h!47113 suffixTokens!72)) e!2428853 tp!1195500))))

(assert (= (and start!368236 res!1588589) b!3926591))

(assert (= (and b!3926591 res!1588606) b!3926623))

(assert (= (and b!3926623 res!1588595) b!3926610))

(assert (= (and b!3926610 res!1588610) b!3926594))

(assert (= (and b!3926594 res!1588607) b!3926632))

(assert (= (and b!3926632 res!1588604) b!3926606))

(assert (= (and b!3926606 res!1588591) b!3926611))

(assert (= (and b!3926611 res!1588608) b!3926600))

(assert (= (and b!3926600 res!1588597) b!3926613))

(assert (= (and b!3926600 (not res!1588590)) b!3926621))

(assert (= (and b!3926621 (not res!1588602)) b!3926614))

(assert (= (and b!3926614 (not res!1588601)) b!3926603))

(assert (= (and b!3926603 c!682214) b!3926628))

(assert (= (and b!3926603 (not c!682214)) b!3926592))

(assert (= (and b!3926628 c!682217) b!3926588))

(assert (= (and b!3926628 (not c!682217)) b!3926618))

(assert (= (and b!3926588 c!682215) b!3926604))

(assert (= (and b!3926588 (not c!682215)) b!3926595))

(assert (= (and b!3926604 res!1588588) b!3926590))

(assert (= (and b!3926595 res!1588600) b!3926625))

(assert (= (or b!3926604 b!3926595) bm!284723))

(assert (= (and b!3926603 c!682216) b!3926619))

(assert (= (and b!3926603 (not c!682216)) b!3926631))

(assert (= (and b!3926603 (not res!1588599)) b!3926629))

(assert (= (and b!3926629 (not res!1588598)) b!3926622))

(assert (= (and b!3926622 (not res!1588605)) b!3926593))

(assert (= (and b!3926593 (not res!1588609)) b!3926607))

(assert (= (and b!3926607 (not res!1588593)) b!3926596))

(assert (= (and b!3926596 (not res!1588596)) b!3926630))

(assert (= (and b!3926630 (not res!1588594)) b!3926612))

(assert (= (and b!3926612 (not res!1588603)) b!3926605))

(assert (= (and b!3926605 (not res!1588592)) b!3926602))

(assert (= (and start!368236 ((_ is Cons!41692) suffixResult!91)) b!3926609))

(assert (= (and start!368236 ((_ is Cons!41692) suffix!1176)) b!3926598))

(assert (= b!3926589 b!3926608))

(assert (= b!3926601 b!3926589))

(assert (= (and start!368236 ((_ is Cons!41694) rules!2768)) b!3926601))

(assert (= b!3926626 b!3926627))

(assert (= b!3926615 b!3926626))

(assert (= b!3926599 b!3926615))

(assert (= (and start!368236 ((_ is Cons!41693) prefixTokens!80)) b!3926599))

(assert (= b!3926617 b!3926624))

(assert (= b!3926620 b!3926617))

(assert (= b!3926597 b!3926620))

(assert (= (and start!368236 ((_ is Cons!41693) suffixTokens!72)) b!3926597))

(assert (= (and start!368236 ((_ is Cons!41692) prefix!426)) b!3926616))

(declare-fun m!4490949 () Bool)

(assert (=> b!3926615 m!4490949))

(declare-fun m!4490951 () Bool)

(assert (=> b!3926596 m!4490951))

(declare-fun m!4490953 () Bool)

(assert (=> b!3926596 m!4490953))

(declare-fun m!4490955 () Bool)

(assert (=> b!3926596 m!4490955))

(declare-fun m!4490957 () Bool)

(assert (=> b!3926617 m!4490957))

(declare-fun m!4490959 () Bool)

(assert (=> b!3926617 m!4490959))

(declare-fun m!4490961 () Bool)

(assert (=> b!3926613 m!4490961))

(declare-fun m!4490963 () Bool)

(assert (=> b!3926597 m!4490963))

(declare-fun m!4490965 () Bool)

(assert (=> b!3926594 m!4490965))

(declare-fun m!4490967 () Bool)

(assert (=> b!3926629 m!4490967))

(declare-fun m!4490969 () Bool)

(assert (=> b!3926611 m!4490969))

(declare-fun m!4490971 () Bool)

(assert (=> b!3926595 m!4490971))

(declare-fun m!4490973 () Bool)

(assert (=> b!3926595 m!4490973))

(declare-fun m!4490975 () Bool)

(assert (=> b!3926628 m!4490975))

(declare-fun m!4490977 () Bool)

(assert (=> b!3926628 m!4490977))

(declare-fun m!4490979 () Bool)

(assert (=> b!3926628 m!4490979))

(declare-fun m!4490981 () Bool)

(assert (=> b!3926628 m!4490981))

(declare-fun m!4490983 () Bool)

(assert (=> b!3926628 m!4490983))

(declare-fun m!4490985 () Bool)

(assert (=> b!3926607 m!4490985))

(declare-fun m!4490987 () Bool)

(assert (=> b!3926603 m!4490987))

(declare-fun m!4490989 () Bool)

(assert (=> b!3926603 m!4490989))

(declare-fun m!4490991 () Bool)

(assert (=> b!3926604 m!4490991))

(declare-fun m!4490993 () Bool)

(assert (=> b!3926604 m!4490993))

(declare-fun m!4490995 () Bool)

(assert (=> b!3926591 m!4490995))

(declare-fun m!4490997 () Bool)

(assert (=> b!3926623 m!4490997))

(declare-fun m!4490999 () Bool)

(assert (=> b!3926605 m!4490999))

(declare-fun m!4491001 () Bool)

(assert (=> b!3926593 m!4491001))

(declare-fun m!4491003 () Bool)

(assert (=> b!3926593 m!4491003))

(declare-fun m!4491005 () Bool)

(assert (=> b!3926589 m!4491005))

(declare-fun m!4491007 () Bool)

(assert (=> b!3926589 m!4491007))

(declare-fun m!4491009 () Bool)

(assert (=> bm!284723 m!4491009))

(declare-fun m!4491011 () Bool)

(assert (=> b!3926621 m!4491011))

(declare-fun m!4491013 () Bool)

(assert (=> b!3926626 m!4491013))

(declare-fun m!4491015 () Bool)

(assert (=> b!3926626 m!4491015))

(declare-fun m!4491017 () Bool)

(assert (=> b!3926599 m!4491017))

(declare-fun m!4491019 () Bool)

(assert (=> b!3926630 m!4491019))

(declare-fun m!4491021 () Bool)

(assert (=> b!3926630 m!4491021))

(declare-fun m!4491023 () Bool)

(assert (=> b!3926630 m!4491023))

(declare-fun m!4491025 () Bool)

(assert (=> b!3926610 m!4491025))

(declare-fun m!4491027 () Bool)

(assert (=> b!3926612 m!4491027))

(declare-fun m!4491029 () Bool)

(assert (=> b!3926612 m!4491029))

(declare-fun m!4491031 () Bool)

(assert (=> b!3926612 m!4491031))

(declare-fun m!4491033 () Bool)

(assert (=> b!3926612 m!4491033))

(declare-fun m!4491035 () Bool)

(assert (=> b!3926600 m!4491035))

(declare-fun m!4491037 () Bool)

(assert (=> b!3926600 m!4491037))

(declare-fun m!4491039 () Bool)

(assert (=> b!3926600 m!4491039))

(declare-fun m!4491041 () Bool)

(assert (=> b!3926600 m!4491041))

(declare-fun m!4491043 () Bool)

(assert (=> b!3926600 m!4491043))

(declare-fun m!4491045 () Bool)

(assert (=> b!3926600 m!4491045))

(declare-fun m!4491047 () Bool)

(assert (=> b!3926600 m!4491047))

(declare-fun m!4491049 () Bool)

(assert (=> b!3926600 m!4491049))

(declare-fun m!4491051 () Bool)

(assert (=> b!3926600 m!4491051))

(declare-fun m!4491053 () Bool)

(assert (=> b!3926600 m!4491053))

(assert (=> b!3926600 m!4491039))

(assert (=> b!3926600 m!4491045))

(declare-fun m!4491055 () Bool)

(assert (=> b!3926600 m!4491055))

(declare-fun m!4491057 () Bool)

(assert (=> b!3926600 m!4491057))

(declare-fun m!4491059 () Bool)

(assert (=> b!3926600 m!4491059))

(declare-fun m!4491061 () Bool)

(assert (=> b!3926600 m!4491061))

(declare-fun m!4491063 () Bool)

(assert (=> b!3926632 m!4491063))

(declare-fun m!4491065 () Bool)

(assert (=> b!3926632 m!4491065))

(declare-fun m!4491067 () Bool)

(assert (=> b!3926632 m!4491067))

(declare-fun m!4491069 () Bool)

(assert (=> b!3926588 m!4491069))

(assert (=> b!3926588 m!4491029))

(declare-fun m!4491071 () Bool)

(assert (=> b!3926619 m!4491071))

(declare-fun m!4491073 () Bool)

(assert (=> b!3926619 m!4491073))

(declare-fun m!4491075 () Bool)

(assert (=> b!3926619 m!4491075))

(declare-fun m!4491077 () Bool)

(assert (=> b!3926619 m!4491077))

(declare-fun m!4491079 () Bool)

(assert (=> b!3926620 m!4491079))

(declare-fun m!4491081 () Bool)

(assert (=> b!3926622 m!4491081))

(declare-fun m!4491083 () Bool)

(assert (=> b!3926622 m!4491083))

(assert (=> b!3926622 m!4491071))

(declare-fun m!4491085 () Bool)

(assert (=> b!3926622 m!4491085))

(assert (=> b!3926622 m!4491073))

(declare-fun m!4491087 () Bool)

(assert (=> b!3926606 m!4491087))

(check-sat (not b!3926597) (not b!3926617) (not b_next!107783) (not bm!284723) (not b!3926610) (not b!3926620) b_and!299473 (not b!3926611) (not b!3926607) b_and!299481 (not b!3926598) (not b!3926628) b_and!299479 (not b!3926600) (not b!3926596) (not b!3926609) (not b!3926612) (not b!3926589) (not b_next!107779) (not b!3926606) (not b!3926630) (not b!3926604) (not b!3926621) (not b!3926594) (not b_next!107777) (not b_next!107781) b_and!299475 (not b!3926588) (not b!3926593) (not b!3926619) (not b!3926616) (not b!3926623) (not b!3926595) (not b_next!107775) (not b!3926622) (not b!3926601) b_and!299471 (not b!3926603) (not b!3926632) (not b!3926613) tp_is_empty!19793 (not b!3926605) (not b!3926626) (not b!3926599) (not b!3926615) (not b!3926591) (not b_next!107773) (not b!3926629) b_and!299477)
(check-sat (not b_next!107779) (not b_next!107783) b_and!299473 b_and!299481 (not b_next!107773) b_and!299479 b_and!299477 (not b_next!107777) (not b_next!107781) b_and!299475 (not b_next!107775) b_and!299471)
(get-model)

(declare-fun d!1163900 () Bool)

(assert (=> d!1163900 (= (_2!23615 (v!39251 lt!1370424)) lt!1370439)))

(declare-fun lt!1370468 () Unit!60022)

(declare-fun choose!23311 (List!41816 List!41816 List!41816 List!41816 List!41816) Unit!60022)

(assert (=> d!1163900 (= lt!1370468 (choose!23311 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 lt!1370439 lt!1370425))))

(assert (=> d!1163900 (isPrefix!3601 lt!1370429 lt!1370425)))

(assert (=> d!1163900 (= (lemmaSamePrefixThenSameSuffix!1822 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 lt!1370439 lt!1370425) lt!1370468)))

(declare-fun bs!586011 () Bool)

(assert (= bs!586011 d!1163900))

(declare-fun m!4491089 () Bool)

(assert (=> bs!586011 m!4491089))

(declare-fun m!4491091 () Bool)

(assert (=> bs!586011 m!4491091))

(assert (=> b!3926630 d!1163900))

(declare-fun b!3926641 () Bool)

(declare-fun e!2428890 () Bool)

(declare-fun e!2428891 () Bool)

(assert (=> b!3926641 (= e!2428890 e!2428891)))

(declare-fun res!1588624 () Bool)

(assert (=> b!3926641 (=> (not res!1588624) (not e!2428891))))

(assert (=> b!3926641 (= res!1588624 (not ((_ is Nil!41692) lt!1370452)))))

(declare-fun b!3926642 () Bool)

(declare-fun res!1588625 () Bool)

(assert (=> b!3926642 (=> (not res!1588625) (not e!2428891))))

(declare-fun head!8328 (List!41816) C!23008)

(assert (=> b!3926642 (= res!1588625 (= (head!8328 lt!1370429) (head!8328 lt!1370452)))))

(declare-fun b!3926643 () Bool)

(declare-fun tail!6055 (List!41816) List!41816)

(assert (=> b!3926643 (= e!2428891 (isPrefix!3601 (tail!6055 lt!1370429) (tail!6055 lt!1370452)))))

(declare-fun b!3926644 () Bool)

(declare-fun e!2428889 () Bool)

(assert (=> b!3926644 (= e!2428889 (>= (size!31282 lt!1370452) (size!31282 lt!1370429)))))

(declare-fun d!1163902 () Bool)

(assert (=> d!1163902 e!2428889))

(declare-fun res!1588626 () Bool)

(assert (=> d!1163902 (=> res!1588626 e!2428889)))

(declare-fun lt!1370471 () Bool)

(assert (=> d!1163902 (= res!1588626 (not lt!1370471))))

(assert (=> d!1163902 (= lt!1370471 e!2428890)))

(declare-fun res!1588623 () Bool)

(assert (=> d!1163902 (=> res!1588623 e!2428890)))

(assert (=> d!1163902 (= res!1588623 ((_ is Nil!41692) lt!1370429))))

(assert (=> d!1163902 (= (isPrefix!3601 lt!1370429 lt!1370452) lt!1370471)))

(assert (= (and d!1163902 (not res!1588623)) b!3926641))

(assert (= (and b!3926641 res!1588624) b!3926642))

(assert (= (and b!3926642 res!1588625) b!3926643))

(assert (= (and d!1163902 (not res!1588626)) b!3926644))

(declare-fun m!4491093 () Bool)

(assert (=> b!3926642 m!4491093))

(declare-fun m!4491095 () Bool)

(assert (=> b!3926642 m!4491095))

(declare-fun m!4491097 () Bool)

(assert (=> b!3926643 m!4491097))

(declare-fun m!4491099 () Bool)

(assert (=> b!3926643 m!4491099))

(assert (=> b!3926643 m!4491097))

(assert (=> b!3926643 m!4491099))

(declare-fun m!4491101 () Bool)

(assert (=> b!3926643 m!4491101))

(declare-fun m!4491103 () Bool)

(assert (=> b!3926644 m!4491103))

(assert (=> b!3926644 m!4491043))

(assert (=> b!3926630 d!1163902))

(declare-fun d!1163904 () Bool)

(assert (=> d!1163904 (isPrefix!3601 lt!1370429 (++!10769 lt!1370429 lt!1370439))))

(declare-fun lt!1370474 () Unit!60022)

(declare-fun choose!23313 (List!41816 List!41816) Unit!60022)

(assert (=> d!1163904 (= lt!1370474 (choose!23313 lt!1370429 lt!1370439))))

(assert (=> d!1163904 (= (lemmaConcatTwoListThenFirstIsPrefix!2464 lt!1370429 lt!1370439) lt!1370474)))

(declare-fun bs!586012 () Bool)

(assert (= bs!586012 d!1163904))

(assert (=> bs!586012 m!4490951))

(assert (=> bs!586012 m!4490951))

(declare-fun m!4491105 () Bool)

(assert (=> bs!586012 m!4491105))

(declare-fun m!4491107 () Bool)

(assert (=> bs!586012 m!4491107))

(assert (=> b!3926630 d!1163904))

(declare-fun d!1163906 () Bool)

(assert (=> d!1163906 (= (isEmpty!24844 lt!1370462) ((_ is Nil!41693) lt!1370462))))

(assert (=> b!3926588 d!1163906))

(declare-fun d!1163908 () Bool)

(assert (=> d!1163908 (= (tail!6053 prefixTokens!80) (t!325048 prefixTokens!80))))

(assert (=> b!3926588 d!1163908))

(declare-fun b!3926703 () Bool)

(declare-fun e!2428926 () tuple2!40964)

(declare-fun lt!1370492 () Option!8926)

(declare-fun lt!1370493 () tuple2!40964)

(assert (=> b!3926703 (= e!2428926 (tuple2!40965 (Cons!41693 (_1!23615 (v!39251 lt!1370492)) (_1!23616 lt!1370493)) (_2!23616 lt!1370493)))))

(assert (=> b!3926703 (= lt!1370493 (lexList!1863 thiss!20629 rules!2768 (_2!23615 (v!39251 lt!1370492))))))

(declare-fun b!3926704 () Bool)

(assert (=> b!3926704 (= e!2428926 (tuple2!40965 Nil!41693 (_2!23615 lt!1370451)))))

(declare-fun b!3926705 () Bool)

(declare-fun e!2428925 () Bool)

(declare-fun lt!1370491 () tuple2!40964)

(assert (=> b!3926705 (= e!2428925 (not (isEmpty!24844 (_1!23616 lt!1370491))))))

(declare-fun b!3926706 () Bool)

(declare-fun e!2428924 () Bool)

(assert (=> b!3926706 (= e!2428924 e!2428925)))

(declare-fun res!1588649 () Bool)

(assert (=> b!3926706 (= res!1588649 (< (size!31282 (_2!23616 lt!1370491)) (size!31282 (_2!23615 lt!1370451))))))

(assert (=> b!3926706 (=> (not res!1588649) (not e!2428925))))

(declare-fun d!1163910 () Bool)

(assert (=> d!1163910 e!2428924))

(declare-fun c!682237 () Bool)

(declare-fun size!31284 (List!41817) Int)

(assert (=> d!1163910 (= c!682237 (> (size!31284 (_1!23616 lt!1370491)) 0))))

(assert (=> d!1163910 (= lt!1370491 e!2428926)))

(declare-fun c!682238 () Bool)

(assert (=> d!1163910 (= c!682238 ((_ is Some!8925) lt!1370492))))

(assert (=> d!1163910 (= lt!1370492 (maxPrefix!3399 thiss!20629 rules!2768 (_2!23615 lt!1370451)))))

(assert (=> d!1163910 (= (lexList!1863 thiss!20629 rules!2768 (_2!23615 lt!1370451)) lt!1370491)))

(declare-fun b!3926707 () Bool)

(assert (=> b!3926707 (= e!2428924 (= (_2!23616 lt!1370491) (_2!23615 lt!1370451)))))

(assert (= (and d!1163910 c!682238) b!3926703))

(assert (= (and d!1163910 (not c!682238)) b!3926704))

(assert (= (and d!1163910 c!682237) b!3926706))

(assert (= (and d!1163910 (not c!682237)) b!3926707))

(assert (= (and b!3926706 res!1588649) b!3926705))

(declare-fun m!4491159 () Bool)

(assert (=> b!3926703 m!4491159))

(declare-fun m!4491161 () Bool)

(assert (=> b!3926705 m!4491161))

(declare-fun m!4491163 () Bool)

(assert (=> b!3926706 m!4491163))

(assert (=> b!3926706 m!4490983))

(declare-fun m!4491165 () Bool)

(assert (=> d!1163910 m!4491165))

(declare-fun m!4491167 () Bool)

(assert (=> d!1163910 m!4491167))

(assert (=> bm!284723 d!1163910))

(declare-fun d!1163930 () Bool)

(assert (=> d!1163930 (= (head!8327 prefixTokens!80) (h!47113 prefixTokens!80))))

(assert (=> b!3926629 d!1163930))

(declare-fun d!1163932 () Bool)

(declare-fun lt!1370499 () Int)

(assert (=> d!1163932 (>= lt!1370499 0)))

(declare-fun e!2428929 () Int)

(assert (=> d!1163932 (= lt!1370499 e!2428929)))

(declare-fun c!682241 () Bool)

(assert (=> d!1163932 (= c!682241 ((_ is Nil!41692) lt!1370425))))

(assert (=> d!1163932 (= (size!31282 lt!1370425) lt!1370499)))

(declare-fun b!3926712 () Bool)

(assert (=> b!3926712 (= e!2428929 0)))

(declare-fun b!3926713 () Bool)

(assert (=> b!3926713 (= e!2428929 (+ 1 (size!31282 (t!325047 lt!1370425))))))

(assert (= (and d!1163932 c!682241) b!3926712))

(assert (= (and d!1163932 (not c!682241)) b!3926713))

(declare-fun m!4491171 () Bool)

(assert (=> b!3926713 m!4491171))

(assert (=> b!3926628 d!1163932))

(declare-fun b!3926810 () Bool)

(declare-fun e!2428989 () Option!8926)

(assert (=> b!3926810 (= e!2428989 None!8925)))

(declare-fun b!3926811 () Bool)

(declare-fun res!1588714 () Bool)

(declare-fun e!2428990 () Bool)

(assert (=> b!3926811 (=> (not res!1588714) (not e!2428990))))

(declare-fun lt!1370550 () Option!8926)

(assert (=> b!3926811 (= res!1588714 (= (rule!9446 (_1!23615 (get!13779 lt!1370550))) (rule!9446 (_1!23615 (v!39251 lt!1370424)))))))

(declare-fun b!3926812 () Bool)

(declare-fun e!2428988 () Bool)

(declare-fun matchR!5475 (Regex!11411 List!41816) Bool)

(declare-datatypes ((tuple2!40966 0))(
  ( (tuple2!40967 (_1!23617 List!41816) (_2!23617 List!41816)) )
))
(declare-fun findLongestMatchInner!1255 (Regex!11411 List!41816 Int List!41816 List!41816 Int) tuple2!40966)

(assert (=> b!3926812 (= e!2428988 (matchR!5475 (regex!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) (_1!23617 (findLongestMatchInner!1255 (regex!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) Nil!41692 (size!31282 Nil!41692) lt!1370425 lt!1370425 (size!31282 lt!1370425)))))))

(declare-fun b!3926813 () Bool)

(declare-fun e!2428991 () Bool)

(assert (=> b!3926813 (= e!2428991 e!2428990)))

(declare-fun res!1588710 () Bool)

(assert (=> b!3926813 (=> (not res!1588710) (not e!2428990))))

(assert (=> b!3926813 (= res!1588710 (matchR!5475 (regex!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) (list!15491 (charsOf!4330 (_1!23615 (get!13779 lt!1370550))))))))

(declare-fun b!3926814 () Bool)

(declare-fun res!1588711 () Bool)

(assert (=> b!3926814 (=> (not res!1588711) (not e!2428990))))

(assert (=> b!3926814 (= res!1588711 (= (value!206055 (_1!23615 (get!13779 lt!1370550))) (apply!9745 (transformation!6506 (rule!9446 (_1!23615 (get!13779 lt!1370550)))) (seqFromList!4773 (originalCharacters!7106 (_1!23615 (get!13779 lt!1370550)))))))))

(declare-fun b!3926815 () Bool)

(declare-fun res!1588709 () Bool)

(assert (=> b!3926815 (=> (not res!1588709) (not e!2428990))))

(assert (=> b!3926815 (= res!1588709 (= (++!10769 (list!15491 (charsOf!4330 (_1!23615 (get!13779 lt!1370550)))) (_2!23615 (get!13779 lt!1370550))) lt!1370425))))

(declare-fun d!1163936 () Bool)

(assert (=> d!1163936 e!2428991))

(declare-fun res!1588708 () Bool)

(assert (=> d!1163936 (=> res!1588708 e!2428991)))

(declare-fun isEmpty!24847 (Option!8926) Bool)

(assert (=> d!1163936 (= res!1588708 (isEmpty!24847 lt!1370550))))

(assert (=> d!1163936 (= lt!1370550 e!2428989)))

(declare-fun c!682259 () Bool)

(declare-fun lt!1370548 () tuple2!40966)

(assert (=> d!1163936 (= c!682259 (isEmpty!24846 (_1!23617 lt!1370548)))))

(declare-fun findLongestMatch!1168 (Regex!11411 List!41816) tuple2!40966)

(assert (=> d!1163936 (= lt!1370548 (findLongestMatch!1168 (regex!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) lt!1370425))))

(assert (=> d!1163936 (ruleValid!2454 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))))))

(assert (=> d!1163936 (= (maxPrefixOneRule!2469 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))) lt!1370425) lt!1370550)))

(declare-fun b!3926816 () Bool)

(declare-fun res!1588712 () Bool)

(assert (=> b!3926816 (=> (not res!1588712) (not e!2428990))))

(assert (=> b!3926816 (= res!1588712 (< (size!31282 (_2!23615 (get!13779 lt!1370550))) (size!31282 lt!1370425)))))

(declare-fun b!3926817 () Bool)

(assert (=> b!3926817 (= e!2428990 (= (size!31281 (_1!23615 (get!13779 lt!1370550))) (size!31282 (originalCharacters!7106 (_1!23615 (get!13779 lt!1370550))))))))

(declare-fun b!3926818 () Bool)

(declare-fun size!31285 (BalanceConc!25028) Int)

(assert (=> b!3926818 (= e!2428989 (Some!8925 (tuple2!40963 (Token!12151 (apply!9745 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) (seqFromList!4773 (_1!23617 lt!1370548))) (rule!9446 (_1!23615 (v!39251 lt!1370424))) (size!31285 (seqFromList!4773 (_1!23617 lt!1370548))) (_1!23617 lt!1370548)) (_2!23617 lt!1370548))))))

(declare-fun lt!1370551 () Unit!60022)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1228 (Regex!11411 List!41816) Unit!60022)

(assert (=> b!3926818 (= lt!1370551 (longestMatchIsAcceptedByMatchOrIsEmpty!1228 (regex!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) lt!1370425))))

(declare-fun res!1588713 () Bool)

(assert (=> b!3926818 (= res!1588713 (isEmpty!24846 (_1!23617 (findLongestMatchInner!1255 (regex!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) Nil!41692 (size!31282 Nil!41692) lt!1370425 lt!1370425 (size!31282 lt!1370425)))))))

(assert (=> b!3926818 (=> res!1588713 e!2428988)))

(assert (=> b!3926818 e!2428988))

(declare-fun lt!1370552 () Unit!60022)

(assert (=> b!3926818 (= lt!1370552 lt!1370551)))

(declare-fun lt!1370549 () Unit!60022)

(declare-fun lemmaSemiInverse!1761 (TokenValueInjection!12900 BalanceConc!25028) Unit!60022)

(assert (=> b!3926818 (= lt!1370549 (lemmaSemiInverse!1761 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) (seqFromList!4773 (_1!23617 lt!1370548))))))

(assert (= (and d!1163936 c!682259) b!3926810))

(assert (= (and d!1163936 (not c!682259)) b!3926818))

(assert (= (and b!3926818 (not res!1588713)) b!3926812))

(assert (= (and d!1163936 (not res!1588708)) b!3926813))

(assert (= (and b!3926813 res!1588710) b!3926815))

(assert (= (and b!3926815 res!1588709) b!3926816))

(assert (= (and b!3926816 res!1588712) b!3926811))

(assert (= (and b!3926811 res!1588714) b!3926814))

(assert (= (and b!3926814 res!1588711) b!3926817))

(declare-fun m!4491311 () Bool)

(assert (=> b!3926812 m!4491311))

(assert (=> b!3926812 m!4490981))

(assert (=> b!3926812 m!4491311))

(assert (=> b!3926812 m!4490981))

(declare-fun m!4491313 () Bool)

(assert (=> b!3926812 m!4491313))

(declare-fun m!4491315 () Bool)

(assert (=> b!3926812 m!4491315))

(declare-fun m!4491317 () Bool)

(assert (=> b!3926813 m!4491317))

(declare-fun m!4491319 () Bool)

(assert (=> b!3926813 m!4491319))

(assert (=> b!3926813 m!4491319))

(declare-fun m!4491321 () Bool)

(assert (=> b!3926813 m!4491321))

(assert (=> b!3926813 m!4491321))

(declare-fun m!4491323 () Bool)

(assert (=> b!3926813 m!4491323))

(assert (=> b!3926814 m!4491317))

(declare-fun m!4491325 () Bool)

(assert (=> b!3926814 m!4491325))

(assert (=> b!3926814 m!4491325))

(declare-fun m!4491327 () Bool)

(assert (=> b!3926814 m!4491327))

(assert (=> b!3926811 m!4491317))

(declare-fun m!4491329 () Bool)

(assert (=> b!3926818 m!4491329))

(declare-fun m!4491331 () Bool)

(assert (=> b!3926818 m!4491331))

(declare-fun m!4491333 () Bool)

(assert (=> b!3926818 m!4491333))

(assert (=> b!3926818 m!4491311))

(assert (=> b!3926818 m!4491311))

(assert (=> b!3926818 m!4490981))

(assert (=> b!3926818 m!4491313))

(declare-fun m!4491335 () Bool)

(assert (=> b!3926818 m!4491335))

(assert (=> b!3926818 m!4490981))

(assert (=> b!3926818 m!4491329))

(declare-fun m!4491337 () Bool)

(assert (=> b!3926818 m!4491337))

(assert (=> b!3926818 m!4491329))

(declare-fun m!4491339 () Bool)

(assert (=> b!3926818 m!4491339))

(assert (=> b!3926818 m!4491329))

(declare-fun m!4491341 () Bool)

(assert (=> d!1163936 m!4491341))

(declare-fun m!4491343 () Bool)

(assert (=> d!1163936 m!4491343))

(declare-fun m!4491345 () Bool)

(assert (=> d!1163936 m!4491345))

(assert (=> d!1163936 m!4491051))

(assert (=> b!3926815 m!4491317))

(assert (=> b!3926815 m!4491319))

(assert (=> b!3926815 m!4491319))

(assert (=> b!3926815 m!4491321))

(assert (=> b!3926815 m!4491321))

(declare-fun m!4491347 () Bool)

(assert (=> b!3926815 m!4491347))

(assert (=> b!3926816 m!4491317))

(declare-fun m!4491349 () Bool)

(assert (=> b!3926816 m!4491349))

(assert (=> b!3926816 m!4490981))

(assert (=> b!3926817 m!4491317))

(declare-fun m!4491351 () Bool)

(assert (=> b!3926817 m!4491351))

(assert (=> b!3926628 d!1163936))

(declare-fun d!1163988 () Bool)

(declare-fun lt!1370553 () Int)

(assert (=> d!1163988 (>= lt!1370553 0)))

(declare-fun e!2428992 () Int)

(assert (=> d!1163988 (= lt!1370553 e!2428992)))

(declare-fun c!682260 () Bool)

(assert (=> d!1163988 (= c!682260 ((_ is Nil!41692) (_2!23615 lt!1370451)))))

(assert (=> d!1163988 (= (size!31282 (_2!23615 lt!1370451)) lt!1370553)))

(declare-fun b!3926819 () Bool)

(assert (=> b!3926819 (= e!2428992 0)))

(declare-fun b!3926820 () Bool)

(assert (=> b!3926820 (= e!2428992 (+ 1 (size!31282 (t!325047 (_2!23615 lt!1370451)))))))

(assert (= (and d!1163988 c!682260) b!3926819))

(assert (= (and d!1163988 (not c!682260)) b!3926820))

(declare-fun m!4491353 () Bool)

(assert (=> b!3926820 m!4491353))

(assert (=> b!3926628 d!1163988))

(declare-fun d!1163990 () Bool)

(assert (=> d!1163990 (= (get!13779 lt!1370424) (v!39251 lt!1370424))))

(assert (=> b!3926628 d!1163990))

(declare-fun d!1163992 () Bool)

(assert (=> d!1163992 (= (maxPrefixOneRule!2469 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))) lt!1370425) (Some!8925 (tuple2!40963 (Token!12151 (apply!9745 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) (seqFromList!4773 lt!1370429)) (rule!9446 (_1!23615 (v!39251 lt!1370424))) (size!31282 lt!1370429) lt!1370429) (_2!23615 (v!39251 lt!1370424)))))))

(declare-fun lt!1370573 () Unit!60022)

(declare-fun choose!23315 (LexerInterface!6095 List!41818 List!41816 List!41816 List!41816 Rule!12812) Unit!60022)

(assert (=> d!1163992 (= lt!1370573 (choose!23315 thiss!20629 rules!2768 lt!1370429 lt!1370425 (_2!23615 (v!39251 lt!1370424)) (rule!9446 (_1!23615 (v!39251 lt!1370424)))))))

(assert (=> d!1163992 (not (isEmpty!24845 rules!2768))))

(assert (=> d!1163992 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1337 thiss!20629 rules!2768 lt!1370429 lt!1370425 (_2!23615 (v!39251 lt!1370424)) (rule!9446 (_1!23615 (v!39251 lt!1370424)))) lt!1370573)))

(declare-fun bs!586024 () Bool)

(assert (= bs!586024 d!1163992))

(declare-fun m!4491401 () Bool)

(assert (=> bs!586024 m!4491401))

(assert (=> bs!586024 m!4491045))

(assert (=> bs!586024 m!4490995))

(assert (=> bs!586024 m!4491043))

(assert (=> bs!586024 m!4491045))

(assert (=> bs!586024 m!4491047))

(assert (=> bs!586024 m!4490977))

(assert (=> b!3926628 d!1163992))

(declare-fun d!1164002 () Bool)

(assert (=> d!1164002 (= (isEmpty!24845 rules!2768) ((_ is Nil!41694) rules!2768))))

(assert (=> b!3926591 d!1164002))

(declare-fun d!1164004 () Bool)

(declare-fun e!2429022 () Bool)

(assert (=> d!1164004 e!2429022))

(declare-fun res!1588760 () Bool)

(assert (=> d!1164004 (=> res!1588760 e!2429022)))

(declare-fun lt!1370594 () Option!8926)

(assert (=> d!1164004 (= res!1588760 (isEmpty!24847 lt!1370594))))

(declare-fun e!2429020 () Option!8926)

(assert (=> d!1164004 (= lt!1370594 e!2429020)))

(declare-fun c!682272 () Bool)

(assert (=> d!1164004 (= c!682272 (and ((_ is Cons!41694) rules!2768) ((_ is Nil!41694) (t!325049 rules!2768))))))

(declare-fun lt!1370592 () Unit!60022)

(declare-fun lt!1370595 () Unit!60022)

(assert (=> d!1164004 (= lt!1370592 lt!1370595)))

(assert (=> d!1164004 (isPrefix!3601 lt!1370425 lt!1370425)))

(declare-fun lemmaIsPrefixRefl!2273 (List!41816 List!41816) Unit!60022)

(assert (=> d!1164004 (= lt!1370595 (lemmaIsPrefixRefl!2273 lt!1370425 lt!1370425))))

(declare-fun rulesValidInductive!2343 (LexerInterface!6095 List!41818) Bool)

(assert (=> d!1164004 (rulesValidInductive!2343 thiss!20629 rules!2768)))

(assert (=> d!1164004 (= (maxPrefix!3399 thiss!20629 rules!2768 lt!1370425) lt!1370594)))

(declare-fun b!3926882 () Bool)

(declare-fun res!1588756 () Bool)

(declare-fun e!2429021 () Bool)

(assert (=> b!3926882 (=> (not res!1588756) (not e!2429021))))

(assert (=> b!3926882 (= res!1588756 (< (size!31282 (_2!23615 (get!13779 lt!1370594))) (size!31282 lt!1370425)))))

(declare-fun b!3926883 () Bool)

(declare-fun res!1588759 () Bool)

(assert (=> b!3926883 (=> (not res!1588759) (not e!2429021))))

(assert (=> b!3926883 (= res!1588759 (= (value!206055 (_1!23615 (get!13779 lt!1370594))) (apply!9745 (transformation!6506 (rule!9446 (_1!23615 (get!13779 lt!1370594)))) (seqFromList!4773 (originalCharacters!7106 (_1!23615 (get!13779 lt!1370594)))))))))

(declare-fun b!3926884 () Bool)

(assert (=> b!3926884 (= e!2429022 e!2429021)))

(declare-fun res!1588758 () Bool)

(assert (=> b!3926884 (=> (not res!1588758) (not e!2429021))))

(declare-fun isDefined!6942 (Option!8926) Bool)

(assert (=> b!3926884 (= res!1588758 (isDefined!6942 lt!1370594))))

(declare-fun b!3926885 () Bool)

(declare-fun res!1588754 () Bool)

(assert (=> b!3926885 (=> (not res!1588754) (not e!2429021))))

(assert (=> b!3926885 (= res!1588754 (matchR!5475 (regex!6506 (rule!9446 (_1!23615 (get!13779 lt!1370594)))) (list!15491 (charsOf!4330 (_1!23615 (get!13779 lt!1370594))))))))

(declare-fun b!3926886 () Bool)

(declare-fun res!1588757 () Bool)

(assert (=> b!3926886 (=> (not res!1588757) (not e!2429021))))

(assert (=> b!3926886 (= res!1588757 (= (++!10769 (list!15491 (charsOf!4330 (_1!23615 (get!13779 lt!1370594)))) (_2!23615 (get!13779 lt!1370594))) lt!1370425))))

(declare-fun b!3926887 () Bool)

(declare-fun call!284731 () Option!8926)

(assert (=> b!3926887 (= e!2429020 call!284731)))

(declare-fun b!3926888 () Bool)

(declare-fun res!1588755 () Bool)

(assert (=> b!3926888 (=> (not res!1588755) (not e!2429021))))

(assert (=> b!3926888 (= res!1588755 (= (list!15491 (charsOf!4330 (_1!23615 (get!13779 lt!1370594)))) (originalCharacters!7106 (_1!23615 (get!13779 lt!1370594)))))))

(declare-fun b!3926889 () Bool)

(declare-fun lt!1370593 () Option!8926)

(declare-fun lt!1370596 () Option!8926)

(assert (=> b!3926889 (= e!2429020 (ite (and ((_ is None!8925) lt!1370593) ((_ is None!8925) lt!1370596)) None!8925 (ite ((_ is None!8925) lt!1370596) lt!1370593 (ite ((_ is None!8925) lt!1370593) lt!1370596 (ite (>= (size!31281 (_1!23615 (v!39251 lt!1370593))) (size!31281 (_1!23615 (v!39251 lt!1370596)))) lt!1370593 lt!1370596)))))))

(assert (=> b!3926889 (= lt!1370593 call!284731)))

(assert (=> b!3926889 (= lt!1370596 (maxPrefix!3399 thiss!20629 (t!325049 rules!2768) lt!1370425))))

(declare-fun bm!284726 () Bool)

(assert (=> bm!284726 (= call!284731 (maxPrefixOneRule!2469 thiss!20629 (h!47114 rules!2768) lt!1370425))))

(declare-fun b!3926890 () Bool)

(declare-fun contains!8358 (List!41818 Rule!12812) Bool)

(assert (=> b!3926890 (= e!2429021 (contains!8358 rules!2768 (rule!9446 (_1!23615 (get!13779 lt!1370594)))))))

(assert (= (and d!1164004 c!682272) b!3926887))

(assert (= (and d!1164004 (not c!682272)) b!3926889))

(assert (= (or b!3926887 b!3926889) bm!284726))

(assert (= (and d!1164004 (not res!1588760)) b!3926884))

(assert (= (and b!3926884 res!1588758) b!3926888))

(assert (= (and b!3926888 res!1588755) b!3926882))

(assert (= (and b!3926882 res!1588756) b!3926886))

(assert (= (and b!3926886 res!1588757) b!3926883))

(assert (= (and b!3926883 res!1588759) b!3926885))

(assert (= (and b!3926885 res!1588754) b!3926890))

(declare-fun m!4491431 () Bool)

(assert (=> d!1164004 m!4491431))

(declare-fun m!4491433 () Bool)

(assert (=> d!1164004 m!4491433))

(declare-fun m!4491435 () Bool)

(assert (=> d!1164004 m!4491435))

(declare-fun m!4491437 () Bool)

(assert (=> d!1164004 m!4491437))

(declare-fun m!4491439 () Bool)

(assert (=> b!3926886 m!4491439))

(declare-fun m!4491441 () Bool)

(assert (=> b!3926886 m!4491441))

(assert (=> b!3926886 m!4491441))

(declare-fun m!4491443 () Bool)

(assert (=> b!3926886 m!4491443))

(assert (=> b!3926886 m!4491443))

(declare-fun m!4491445 () Bool)

(assert (=> b!3926886 m!4491445))

(assert (=> b!3926885 m!4491439))

(assert (=> b!3926885 m!4491441))

(assert (=> b!3926885 m!4491441))

(assert (=> b!3926885 m!4491443))

(assert (=> b!3926885 m!4491443))

(declare-fun m!4491447 () Bool)

(assert (=> b!3926885 m!4491447))

(assert (=> b!3926883 m!4491439))

(declare-fun m!4491451 () Bool)

(assert (=> b!3926883 m!4491451))

(assert (=> b!3926883 m!4491451))

(declare-fun m!4491453 () Bool)

(assert (=> b!3926883 m!4491453))

(assert (=> b!3926888 m!4491439))

(assert (=> b!3926888 m!4491441))

(assert (=> b!3926888 m!4491441))

(assert (=> b!3926888 m!4491443))

(assert (=> b!3926882 m!4491439))

(declare-fun m!4491459 () Bool)

(assert (=> b!3926882 m!4491459))

(assert (=> b!3926882 m!4490981))

(declare-fun m!4491461 () Bool)

(assert (=> bm!284726 m!4491461))

(assert (=> b!3926890 m!4491439))

(declare-fun m!4491463 () Bool)

(assert (=> b!3926890 m!4491463))

(declare-fun m!4491465 () Bool)

(assert (=> b!3926889 m!4491465))

(declare-fun m!4491467 () Bool)

(assert (=> b!3926884 m!4491467))

(assert (=> b!3926611 d!1164004))

(declare-fun b!3926895 () Bool)

(declare-fun e!2429028 () tuple2!40964)

(declare-fun lt!1370603 () Option!8926)

(declare-fun lt!1370604 () tuple2!40964)

(assert (=> b!3926895 (= e!2429028 (tuple2!40965 (Cons!41693 (_1!23615 (v!39251 lt!1370603)) (_1!23616 lt!1370604)) (_2!23616 lt!1370604)))))

(assert (=> b!3926895 (= lt!1370604 (lexList!1863 thiss!20629 rules!2768 (_2!23615 (v!39251 lt!1370603))))))

(declare-fun b!3926896 () Bool)

(assert (=> b!3926896 (= e!2429028 (tuple2!40965 Nil!41693 lt!1370425))))

(declare-fun b!3926897 () Bool)

(declare-fun e!2429027 () Bool)

(declare-fun lt!1370602 () tuple2!40964)

(assert (=> b!3926897 (= e!2429027 (not (isEmpty!24844 (_1!23616 lt!1370602))))))

(declare-fun b!3926898 () Bool)

(declare-fun e!2429026 () Bool)

(assert (=> b!3926898 (= e!2429026 e!2429027)))

(declare-fun res!1588765 () Bool)

(assert (=> b!3926898 (= res!1588765 (< (size!31282 (_2!23616 lt!1370602)) (size!31282 lt!1370425)))))

(assert (=> b!3926898 (=> (not res!1588765) (not e!2429027))))

(declare-fun d!1164030 () Bool)

(assert (=> d!1164030 e!2429026))

(declare-fun c!682273 () Bool)

(assert (=> d!1164030 (= c!682273 (> (size!31284 (_1!23616 lt!1370602)) 0))))

(assert (=> d!1164030 (= lt!1370602 e!2429028)))

(declare-fun c!682274 () Bool)

(assert (=> d!1164030 (= c!682274 ((_ is Some!8925) lt!1370603))))

(assert (=> d!1164030 (= lt!1370603 (maxPrefix!3399 thiss!20629 rules!2768 lt!1370425))))

(assert (=> d!1164030 (= (lexList!1863 thiss!20629 rules!2768 lt!1370425) lt!1370602)))

(declare-fun b!3926899 () Bool)

(assert (=> b!3926899 (= e!2429026 (= (_2!23616 lt!1370602) lt!1370425))))

(assert (= (and d!1164030 c!682274) b!3926895))

(assert (= (and d!1164030 (not c!682274)) b!3926896))

(assert (= (and d!1164030 c!682273) b!3926898))

(assert (= (and d!1164030 (not c!682273)) b!3926899))

(assert (= (and b!3926898 res!1588765) b!3926897))

(declare-fun m!4491475 () Bool)

(assert (=> b!3926895 m!4491475))

(declare-fun m!4491477 () Bool)

(assert (=> b!3926897 m!4491477))

(declare-fun m!4491479 () Bool)

(assert (=> b!3926898 m!4491479))

(assert (=> b!3926898 m!4490981))

(declare-fun m!4491481 () Bool)

(assert (=> d!1164030 m!4491481))

(assert (=> d!1164030 m!4490969))

(assert (=> b!3926632 d!1164030))

(declare-fun b!3926927 () Bool)

(declare-fun e!2429043 () List!41817)

(assert (=> b!3926927 (= e!2429043 (Cons!41693 (h!47113 prefixTokens!80) (++!10770 (t!325048 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1164034 () Bool)

(declare-fun e!2429044 () Bool)

(assert (=> d!1164034 e!2429044))

(declare-fun res!1588774 () Bool)

(assert (=> d!1164034 (=> (not res!1588774) (not e!2429044))))

(declare-fun lt!1370620 () List!41817)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6275 (List!41817) (InoxSet Token!12150))

(assert (=> d!1164034 (= res!1588774 (= (content!6275 lt!1370620) ((_ map or) (content!6275 prefixTokens!80) (content!6275 suffixTokens!72))))))

(assert (=> d!1164034 (= lt!1370620 e!2429043)))

(declare-fun c!682284 () Bool)

(assert (=> d!1164034 (= c!682284 ((_ is Nil!41693) prefixTokens!80))))

(assert (=> d!1164034 (= (++!10770 prefixTokens!80 suffixTokens!72) lt!1370620)))

(declare-fun b!3926929 () Bool)

(assert (=> b!3926929 (= e!2429044 (or (not (= suffixTokens!72 Nil!41693)) (= lt!1370620 prefixTokens!80)))))

(declare-fun b!3926928 () Bool)

(declare-fun res!1588775 () Bool)

(assert (=> b!3926928 (=> (not res!1588775) (not e!2429044))))

(assert (=> b!3926928 (= res!1588775 (= (size!31284 lt!1370620) (+ (size!31284 prefixTokens!80) (size!31284 suffixTokens!72))))))

(declare-fun b!3926926 () Bool)

(assert (=> b!3926926 (= e!2429043 suffixTokens!72)))

(assert (= (and d!1164034 c!682284) b!3926926))

(assert (= (and d!1164034 (not c!682284)) b!3926927))

(assert (= (and d!1164034 res!1588774) b!3926928))

(assert (= (and b!3926928 res!1588775) b!3926929))

(declare-fun m!4491521 () Bool)

(assert (=> b!3926927 m!4491521))

(declare-fun m!4491525 () Bool)

(assert (=> d!1164034 m!4491525))

(declare-fun m!4491529 () Bool)

(assert (=> d!1164034 m!4491529))

(declare-fun m!4491533 () Bool)

(assert (=> d!1164034 m!4491533))

(declare-fun m!4491537 () Bool)

(assert (=> b!3926928 m!4491537))

(declare-fun m!4491541 () Bool)

(assert (=> b!3926928 m!4491541))

(declare-fun m!4491545 () Bool)

(assert (=> b!3926928 m!4491545))

(assert (=> b!3926632 d!1164034))

(declare-fun b!3926942 () Bool)

(declare-fun e!2429052 () List!41816)

(assert (=> b!3926942 (= e!2429052 suffix!1176)))

(declare-fun b!3926943 () Bool)

(assert (=> b!3926943 (= e!2429052 (Cons!41692 (h!47112 prefix!426) (++!10769 (t!325047 prefix!426) suffix!1176)))))

(declare-fun lt!1370624 () List!41816)

(declare-fun b!3926945 () Bool)

(declare-fun e!2429051 () Bool)

(assert (=> b!3926945 (= e!2429051 (or (not (= suffix!1176 Nil!41692)) (= lt!1370624 prefix!426)))))

(declare-fun d!1164052 () Bool)

(assert (=> d!1164052 e!2429051))

(declare-fun res!1588783 () Bool)

(assert (=> d!1164052 (=> (not res!1588783) (not e!2429051))))

(declare-fun content!6276 (List!41816) (InoxSet C!23008))

(assert (=> d!1164052 (= res!1588783 (= (content!6276 lt!1370624) ((_ map or) (content!6276 prefix!426) (content!6276 suffix!1176))))))

(assert (=> d!1164052 (= lt!1370624 e!2429052)))

(declare-fun c!682288 () Bool)

(assert (=> d!1164052 (= c!682288 ((_ is Nil!41692) prefix!426))))

(assert (=> d!1164052 (= (++!10769 prefix!426 suffix!1176) lt!1370624)))

(declare-fun b!3926944 () Bool)

(declare-fun res!1588782 () Bool)

(assert (=> b!3926944 (=> (not res!1588782) (not e!2429051))))

(assert (=> b!3926944 (= res!1588782 (= (size!31282 lt!1370624) (+ (size!31282 prefix!426) (size!31282 suffix!1176))))))

(assert (= (and d!1164052 c!682288) b!3926942))

(assert (= (and d!1164052 (not c!682288)) b!3926943))

(assert (= (and d!1164052 res!1588783) b!3926944))

(assert (= (and b!3926944 res!1588782) b!3926945))

(declare-fun m!4491549 () Bool)

(assert (=> b!3926943 m!4491549))

(declare-fun m!4491551 () Bool)

(assert (=> d!1164052 m!4491551))

(declare-fun m!4491553 () Bool)

(assert (=> d!1164052 m!4491553))

(declare-fun m!4491555 () Bool)

(assert (=> d!1164052 m!4491555))

(declare-fun m!4491557 () Bool)

(assert (=> b!3926944 m!4491557))

(assert (=> b!3926944 m!4491083))

(assert (=> b!3926944 m!4490987))

(assert (=> b!3926632 d!1164052))

(declare-fun d!1164056 () Bool)

(assert (=> d!1164056 (= (isEmpty!24844 prefixTokens!80) ((_ is Nil!41693) prefixTokens!80))))

(assert (=> b!3926610 d!1164056))

(declare-fun d!1164058 () Bool)

(assert (=> d!1164058 (= (inv!55880 (tag!7366 (h!47114 rules!2768))) (= (mod (str.len (value!206054 (tag!7366 (h!47114 rules!2768)))) 2) 0))))

(assert (=> b!3926589 d!1164058))

(declare-fun d!1164060 () Bool)

(declare-fun res!1588786 () Bool)

(declare-fun e!2429055 () Bool)

(assert (=> d!1164060 (=> (not res!1588786) (not e!2429055))))

(declare-fun semiInverseModEq!2795 (Int Int) Bool)

(assert (=> d!1164060 (= res!1588786 (semiInverseModEq!2795 (toChars!8817 (transformation!6506 (h!47114 rules!2768))) (toValue!8958 (transformation!6506 (h!47114 rules!2768)))))))

(assert (=> d!1164060 (= (inv!55883 (transformation!6506 (h!47114 rules!2768))) e!2429055)))

(declare-fun b!3926948 () Bool)

(declare-fun equivClasses!2694 (Int Int) Bool)

(assert (=> b!3926948 (= e!2429055 (equivClasses!2694 (toChars!8817 (transformation!6506 (h!47114 rules!2768))) (toValue!8958 (transformation!6506 (h!47114 rules!2768)))))))

(assert (= (and d!1164060 res!1588786) b!3926948))

(declare-fun m!4491559 () Bool)

(assert (=> d!1164060 m!4491559))

(declare-fun m!4491561 () Bool)

(assert (=> b!3926948 m!4491561))

(assert (=> b!3926589 d!1164060))

(declare-fun b!3926949 () Bool)

(declare-fun e!2429057 () List!41816)

(assert (=> b!3926949 (= e!2429057 lt!1370445)))

(declare-fun b!3926950 () Bool)

(assert (=> b!3926950 (= e!2429057 (Cons!41692 (h!47112 lt!1370429) (++!10769 (t!325047 lt!1370429) lt!1370445)))))

(declare-fun lt!1370625 () List!41816)

(declare-fun e!2429056 () Bool)

(declare-fun b!3926952 () Bool)

(assert (=> b!3926952 (= e!2429056 (or (not (= lt!1370445 Nil!41692)) (= lt!1370625 lt!1370429)))))

(declare-fun d!1164062 () Bool)

(assert (=> d!1164062 e!2429056))

(declare-fun res!1588788 () Bool)

(assert (=> d!1164062 (=> (not res!1588788) (not e!2429056))))

(assert (=> d!1164062 (= res!1588788 (= (content!6276 lt!1370625) ((_ map or) (content!6276 lt!1370429) (content!6276 lt!1370445))))))

(assert (=> d!1164062 (= lt!1370625 e!2429057)))

(declare-fun c!682289 () Bool)

(assert (=> d!1164062 (= c!682289 ((_ is Nil!41692) lt!1370429))))

(assert (=> d!1164062 (= (++!10769 lt!1370429 lt!1370445) lt!1370625)))

(declare-fun b!3926951 () Bool)

(declare-fun res!1588787 () Bool)

(assert (=> b!3926951 (=> (not res!1588787) (not e!2429056))))

(assert (=> b!3926951 (= res!1588787 (= (size!31282 lt!1370625) (+ (size!31282 lt!1370429) (size!31282 lt!1370445))))))

(assert (= (and d!1164062 c!682289) b!3926949))

(assert (= (and d!1164062 (not c!682289)) b!3926950))

(assert (= (and d!1164062 res!1588788) b!3926951))

(assert (= (and b!3926951 res!1588787) b!3926952))

(declare-fun m!4491563 () Bool)

(assert (=> b!3926950 m!4491563))

(declare-fun m!4491565 () Bool)

(assert (=> d!1164062 m!4491565))

(declare-fun m!4491567 () Bool)

(assert (=> d!1164062 m!4491567))

(declare-fun m!4491569 () Bool)

(assert (=> d!1164062 m!4491569))

(declare-fun m!4491571 () Bool)

(assert (=> b!3926951 m!4491571))

(assert (=> b!3926951 m!4491043))

(declare-fun m!4491573 () Bool)

(assert (=> b!3926951 m!4491573))

(assert (=> b!3926593 d!1164062))

(declare-fun d!1164064 () Bool)

(declare-fun lt!1370628 () List!41816)

(assert (=> d!1164064 (= (++!10769 lt!1370429 lt!1370628) prefix!426)))

(declare-fun e!2429060 () List!41816)

(assert (=> d!1164064 (= lt!1370628 e!2429060)))

(declare-fun c!682292 () Bool)

(assert (=> d!1164064 (= c!682292 ((_ is Cons!41692) lt!1370429))))

(assert (=> d!1164064 (>= (size!31282 prefix!426) (size!31282 lt!1370429))))

(assert (=> d!1164064 (= (getSuffix!2056 prefix!426 lt!1370429) lt!1370628)))

(declare-fun b!3926957 () Bool)

(assert (=> b!3926957 (= e!2429060 (getSuffix!2056 (tail!6055 prefix!426) (t!325047 lt!1370429)))))

(declare-fun b!3926958 () Bool)

(assert (=> b!3926958 (= e!2429060 prefix!426)))

(assert (= (and d!1164064 c!682292) b!3926957))

(assert (= (and d!1164064 (not c!682292)) b!3926958))

(declare-fun m!4491575 () Bool)

(assert (=> d!1164064 m!4491575))

(assert (=> d!1164064 m!4491083))

(assert (=> d!1164064 m!4491043))

(declare-fun m!4491577 () Bool)

(assert (=> b!3926957 m!4491577))

(assert (=> b!3926957 m!4491577))

(declare-fun m!4491579 () Bool)

(assert (=> b!3926957 m!4491579))

(assert (=> b!3926593 d!1164064))

(declare-fun d!1164066 () Bool)

(declare-fun lt!1370629 () Int)

(assert (=> d!1164066 (>= lt!1370629 0)))

(declare-fun e!2429061 () Int)

(assert (=> d!1164066 (= lt!1370629 e!2429061)))

(declare-fun c!682293 () Bool)

(assert (=> d!1164066 (= c!682293 ((_ is Nil!41692) (originalCharacters!7106 (_1!23615 (v!39251 lt!1370424)))))))

(assert (=> d!1164066 (= (size!31282 (originalCharacters!7106 (_1!23615 (v!39251 lt!1370424)))) lt!1370629)))

(declare-fun b!3926959 () Bool)

(assert (=> b!3926959 (= e!2429061 0)))

(declare-fun b!3926960 () Bool)

(assert (=> b!3926960 (= e!2429061 (+ 1 (size!31282 (t!325047 (originalCharacters!7106 (_1!23615 (v!39251 lt!1370424)))))))))

(assert (= (and d!1164066 c!682293) b!3926959))

(assert (= (and d!1164066 (not c!682293)) b!3926960))

(declare-fun m!4491581 () Bool)

(assert (=> b!3926960 m!4491581))

(assert (=> b!3926613 d!1164066))

(declare-fun b!3926962 () Bool)

(declare-fun e!2429062 () List!41817)

(assert (=> b!3926962 (= e!2429062 (Cons!41693 (h!47113 lt!1370423) (++!10770 (t!325048 lt!1370423) suffixTokens!72)))))

(declare-fun d!1164068 () Bool)

(declare-fun e!2429063 () Bool)

(assert (=> d!1164068 e!2429063))

(declare-fun res!1588789 () Bool)

(assert (=> d!1164068 (=> (not res!1588789) (not e!2429063))))

(declare-fun lt!1370630 () List!41817)

(assert (=> d!1164068 (= res!1588789 (= (content!6275 lt!1370630) ((_ map or) (content!6275 lt!1370423) (content!6275 suffixTokens!72))))))

(assert (=> d!1164068 (= lt!1370630 e!2429062)))

(declare-fun c!682294 () Bool)

(assert (=> d!1164068 (= c!682294 ((_ is Nil!41693) lt!1370423))))

(assert (=> d!1164068 (= (++!10770 lt!1370423 suffixTokens!72) lt!1370630)))

(declare-fun b!3926964 () Bool)

(assert (=> b!3926964 (= e!2429063 (or (not (= suffixTokens!72 Nil!41693)) (= lt!1370630 lt!1370423)))))

(declare-fun b!3926963 () Bool)

(declare-fun res!1588790 () Bool)

(assert (=> b!3926963 (=> (not res!1588790) (not e!2429063))))

(assert (=> b!3926963 (= res!1588790 (= (size!31284 lt!1370630) (+ (size!31284 lt!1370423) (size!31284 suffixTokens!72))))))

(declare-fun b!3926961 () Bool)

(assert (=> b!3926961 (= e!2429062 suffixTokens!72)))

(assert (= (and d!1164068 c!682294) b!3926961))

(assert (= (and d!1164068 (not c!682294)) b!3926962))

(assert (= (and d!1164068 res!1588789) b!3926963))

(assert (= (and b!3926963 res!1588790) b!3926964))

(declare-fun m!4491583 () Bool)

(assert (=> b!3926962 m!4491583))

(declare-fun m!4491585 () Bool)

(assert (=> d!1164068 m!4491585))

(declare-fun m!4491587 () Bool)

(assert (=> d!1164068 m!4491587))

(assert (=> d!1164068 m!4491533))

(declare-fun m!4491589 () Bool)

(assert (=> b!3926963 m!4491589))

(declare-fun m!4491591 () Bool)

(assert (=> b!3926963 m!4491591))

(assert (=> b!3926963 m!4491545))

(assert (=> b!3926612 d!1164068))

(assert (=> b!3926612 d!1163908))

(declare-fun b!3926965 () Bool)

(declare-fun e!2429065 () Bool)

(declare-fun e!2429066 () Bool)

(assert (=> b!3926965 (= e!2429065 e!2429066)))

(declare-fun res!1588792 () Bool)

(assert (=> b!3926965 (=> (not res!1588792) (not e!2429066))))

(assert (=> b!3926965 (= res!1588792 (not ((_ is Nil!41692) lt!1370439)))))

(declare-fun b!3926966 () Bool)

(declare-fun res!1588793 () Bool)

(assert (=> b!3926966 (=> (not res!1588793) (not e!2429066))))

(assert (=> b!3926966 (= res!1588793 (= (head!8328 lt!1370445) (head!8328 lt!1370439)))))

(declare-fun b!3926967 () Bool)

(assert (=> b!3926967 (= e!2429066 (isPrefix!3601 (tail!6055 lt!1370445) (tail!6055 lt!1370439)))))

(declare-fun b!3926968 () Bool)

(declare-fun e!2429064 () Bool)

(assert (=> b!3926968 (= e!2429064 (>= (size!31282 lt!1370439) (size!31282 lt!1370445)))))

(declare-fun d!1164070 () Bool)

(assert (=> d!1164070 e!2429064))

(declare-fun res!1588794 () Bool)

(assert (=> d!1164070 (=> res!1588794 e!2429064)))

(declare-fun lt!1370631 () Bool)

(assert (=> d!1164070 (= res!1588794 (not lt!1370631))))

(assert (=> d!1164070 (= lt!1370631 e!2429065)))

(declare-fun res!1588791 () Bool)

(assert (=> d!1164070 (=> res!1588791 e!2429065)))

(assert (=> d!1164070 (= res!1588791 ((_ is Nil!41692) lt!1370445))))

(assert (=> d!1164070 (= (isPrefix!3601 lt!1370445 lt!1370439) lt!1370631)))

(assert (= (and d!1164070 (not res!1588791)) b!3926965))

(assert (= (and b!3926965 res!1588792) b!3926966))

(assert (= (and b!3926966 res!1588793) b!3926967))

(assert (= (and d!1164070 (not res!1588794)) b!3926968))

(declare-fun m!4491593 () Bool)

(assert (=> b!3926966 m!4491593))

(declare-fun m!4491595 () Bool)

(assert (=> b!3926966 m!4491595))

(declare-fun m!4491597 () Bool)

(assert (=> b!3926967 m!4491597))

(declare-fun m!4491599 () Bool)

(assert (=> b!3926967 m!4491599))

(assert (=> b!3926967 m!4491597))

(assert (=> b!3926967 m!4491599))

(declare-fun m!4491601 () Bool)

(assert (=> b!3926967 m!4491601))

(declare-fun m!4491603 () Bool)

(assert (=> b!3926968 m!4491603))

(assert (=> b!3926968 m!4491573))

(assert (=> b!3926612 d!1164070))

(declare-fun d!1164072 () Bool)

(assert (=> d!1164072 (isPrefix!3601 lt!1370445 (++!10769 lt!1370445 suffix!1176))))

(declare-fun lt!1370632 () Unit!60022)

(assert (=> d!1164072 (= lt!1370632 (choose!23313 lt!1370445 suffix!1176))))

(assert (=> d!1164072 (= (lemmaConcatTwoListThenFirstIsPrefix!2464 lt!1370445 suffix!1176) lt!1370632)))

(declare-fun bs!586031 () Bool)

(assert (= bs!586031 d!1164072))

(assert (=> bs!586031 m!4490953))

(assert (=> bs!586031 m!4490953))

(declare-fun m!4491605 () Bool)

(assert (=> bs!586031 m!4491605))

(declare-fun m!4491607 () Bool)

(assert (=> bs!586031 m!4491607))

(assert (=> b!3926612 d!1164072))

(declare-fun b!3926969 () Bool)

(declare-fun e!2429068 () List!41816)

(assert (=> b!3926969 (= e!2429068 lt!1370439)))

(declare-fun b!3926970 () Bool)

(assert (=> b!3926970 (= e!2429068 (Cons!41692 (h!47112 lt!1370429) (++!10769 (t!325047 lt!1370429) lt!1370439)))))

(declare-fun e!2429067 () Bool)

(declare-fun lt!1370633 () List!41816)

(declare-fun b!3926972 () Bool)

(assert (=> b!3926972 (= e!2429067 (or (not (= lt!1370439 Nil!41692)) (= lt!1370633 lt!1370429)))))

(declare-fun d!1164074 () Bool)

(assert (=> d!1164074 e!2429067))

(declare-fun res!1588796 () Bool)

(assert (=> d!1164074 (=> (not res!1588796) (not e!2429067))))

(assert (=> d!1164074 (= res!1588796 (= (content!6276 lt!1370633) ((_ map or) (content!6276 lt!1370429) (content!6276 lt!1370439))))))

(assert (=> d!1164074 (= lt!1370633 e!2429068)))

(declare-fun c!682295 () Bool)

(assert (=> d!1164074 (= c!682295 ((_ is Nil!41692) lt!1370429))))

(assert (=> d!1164074 (= (++!10769 lt!1370429 lt!1370439) lt!1370633)))

(declare-fun b!3926971 () Bool)

(declare-fun res!1588795 () Bool)

(assert (=> b!3926971 (=> (not res!1588795) (not e!2429067))))

(assert (=> b!3926971 (= res!1588795 (= (size!31282 lt!1370633) (+ (size!31282 lt!1370429) (size!31282 lt!1370439))))))

(assert (= (and d!1164074 c!682295) b!3926969))

(assert (= (and d!1164074 (not c!682295)) b!3926970))

(assert (= (and d!1164074 res!1588796) b!3926971))

(assert (= (and b!3926971 res!1588795) b!3926972))

(declare-fun m!4491609 () Bool)

(assert (=> b!3926970 m!4491609))

(declare-fun m!4491611 () Bool)

(assert (=> d!1164074 m!4491611))

(assert (=> d!1164074 m!4491567))

(declare-fun m!4491613 () Bool)

(assert (=> d!1164074 m!4491613))

(declare-fun m!4491615 () Bool)

(assert (=> b!3926971 m!4491615))

(assert (=> b!3926971 m!4491043))

(assert (=> b!3926971 m!4491603))

(assert (=> b!3926596 d!1164074))

(declare-fun b!3926973 () Bool)

(declare-fun e!2429070 () List!41816)

(assert (=> b!3926973 (= e!2429070 suffix!1176)))

(declare-fun b!3926974 () Bool)

(assert (=> b!3926974 (= e!2429070 (Cons!41692 (h!47112 lt!1370445) (++!10769 (t!325047 lt!1370445) suffix!1176)))))

(declare-fun e!2429069 () Bool)

(declare-fun lt!1370634 () List!41816)

(declare-fun b!3926976 () Bool)

(assert (=> b!3926976 (= e!2429069 (or (not (= suffix!1176 Nil!41692)) (= lt!1370634 lt!1370445)))))

(declare-fun d!1164076 () Bool)

(assert (=> d!1164076 e!2429069))

(declare-fun res!1588798 () Bool)

(assert (=> d!1164076 (=> (not res!1588798) (not e!2429069))))

(assert (=> d!1164076 (= res!1588798 (= (content!6276 lt!1370634) ((_ map or) (content!6276 lt!1370445) (content!6276 suffix!1176))))))

(assert (=> d!1164076 (= lt!1370634 e!2429070)))

(declare-fun c!682296 () Bool)

(assert (=> d!1164076 (= c!682296 ((_ is Nil!41692) lt!1370445))))

(assert (=> d!1164076 (= (++!10769 lt!1370445 suffix!1176) lt!1370634)))

(declare-fun b!3926975 () Bool)

(declare-fun res!1588797 () Bool)

(assert (=> b!3926975 (=> (not res!1588797) (not e!2429069))))

(assert (=> b!3926975 (= res!1588797 (= (size!31282 lt!1370634) (+ (size!31282 lt!1370445) (size!31282 suffix!1176))))))

(assert (= (and d!1164076 c!682296) b!3926973))

(assert (= (and d!1164076 (not c!682296)) b!3926974))

(assert (= (and d!1164076 res!1588798) b!3926975))

(assert (= (and b!3926975 res!1588797) b!3926976))

(declare-fun m!4491617 () Bool)

(assert (=> b!3926974 m!4491617))

(declare-fun m!4491619 () Bool)

(assert (=> d!1164076 m!4491619))

(assert (=> d!1164076 m!4491569))

(assert (=> d!1164076 m!4491555))

(declare-fun m!4491621 () Bool)

(assert (=> b!3926975 m!4491621))

(assert (=> b!3926975 m!4491573))

(assert (=> b!3926975 m!4490987))

(assert (=> b!3926596 d!1164076))

(declare-fun d!1164078 () Bool)

(assert (=> d!1164078 (= (++!10769 (++!10769 lt!1370429 lt!1370445) suffix!1176) (++!10769 lt!1370429 (++!10769 lt!1370445 suffix!1176)))))

(declare-fun lt!1370637 () Unit!60022)

(declare-fun choose!23318 (List!41816 List!41816 List!41816) Unit!60022)

(assert (=> d!1164078 (= lt!1370637 (choose!23318 lt!1370429 lt!1370445 suffix!1176))))

(assert (=> d!1164078 (= (lemmaConcatAssociativity!2302 lt!1370429 lt!1370445 suffix!1176) lt!1370637)))

(declare-fun bs!586032 () Bool)

(assert (= bs!586032 d!1164078))

(assert (=> bs!586032 m!4490953))

(declare-fun m!4491623 () Bool)

(assert (=> bs!586032 m!4491623))

(assert (=> bs!586032 m!4491001))

(declare-fun m!4491625 () Bool)

(assert (=> bs!586032 m!4491625))

(assert (=> bs!586032 m!4491001))

(assert (=> bs!586032 m!4490953))

(declare-fun m!4491627 () Bool)

(assert (=> bs!586032 m!4491627))

(assert (=> b!3926596 d!1164078))

(declare-fun d!1164080 () Bool)

(assert (=> d!1164080 (not (= (lexList!1863 thiss!20629 rules!2768 (_2!23615 lt!1370451)) (tuple2!40965 (++!10770 lt!1370462 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1370655 () Unit!60022)

(declare-fun choose!23319 (LexerInterface!6095 List!41818 List!41816 List!41816 List!41817 List!41816 List!41817) Unit!60022)

(assert (=> d!1164080 (= lt!1370655 (choose!23319 thiss!20629 rules!2768 suffix!1176 (_2!23615 lt!1370451) suffixTokens!72 suffixResult!91 lt!1370462))))

(assert (=> d!1164080 (not (isEmpty!24845 rules!2768))))

(assert (=> d!1164080 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!106 thiss!20629 rules!2768 suffix!1176 (_2!23615 lt!1370451) suffixTokens!72 suffixResult!91 lt!1370462) lt!1370655)))

(declare-fun bs!586033 () Bool)

(assert (= bs!586033 d!1164080))

(assert (=> bs!586033 m!4491009))

(assert (=> bs!586033 m!4490973))

(declare-fun m!4491661 () Bool)

(assert (=> bs!586033 m!4491661))

(assert (=> bs!586033 m!4490995))

(assert (=> b!3926595 d!1164080))

(declare-fun b!3927005 () Bool)

(declare-fun e!2429080 () List!41817)

(assert (=> b!3927005 (= e!2429080 (Cons!41693 (h!47113 lt!1370462) (++!10770 (t!325048 lt!1370462) suffixTokens!72)))))

(declare-fun d!1164084 () Bool)

(declare-fun e!2429081 () Bool)

(assert (=> d!1164084 e!2429081))

(declare-fun res!1588820 () Bool)

(assert (=> d!1164084 (=> (not res!1588820) (not e!2429081))))

(declare-fun lt!1370656 () List!41817)

(assert (=> d!1164084 (= res!1588820 (= (content!6275 lt!1370656) ((_ map or) (content!6275 lt!1370462) (content!6275 suffixTokens!72))))))

(assert (=> d!1164084 (= lt!1370656 e!2429080)))

(declare-fun c!682300 () Bool)

(assert (=> d!1164084 (= c!682300 ((_ is Nil!41693) lt!1370462))))

(assert (=> d!1164084 (= (++!10770 lt!1370462 suffixTokens!72) lt!1370656)))

(declare-fun b!3927007 () Bool)

(assert (=> b!3927007 (= e!2429081 (or (not (= suffixTokens!72 Nil!41693)) (= lt!1370656 lt!1370462)))))

(declare-fun b!3927006 () Bool)

(declare-fun res!1588821 () Bool)

(assert (=> b!3927006 (=> (not res!1588821) (not e!2429081))))

(assert (=> b!3927006 (= res!1588821 (= (size!31284 lt!1370656) (+ (size!31284 lt!1370462) (size!31284 suffixTokens!72))))))

(declare-fun b!3927004 () Bool)

(assert (=> b!3927004 (= e!2429080 suffixTokens!72)))

(assert (= (and d!1164084 c!682300) b!3927004))

(assert (= (and d!1164084 (not c!682300)) b!3927005))

(assert (= (and d!1164084 res!1588820) b!3927006))

(assert (= (and b!3927006 res!1588821) b!3927007))

(declare-fun m!4491663 () Bool)

(assert (=> b!3927005 m!4491663))

(declare-fun m!4491665 () Bool)

(assert (=> d!1164084 m!4491665))

(declare-fun m!4491667 () Bool)

(assert (=> d!1164084 m!4491667))

(assert (=> d!1164084 m!4491533))

(declare-fun m!4491669 () Bool)

(assert (=> b!3927006 m!4491669))

(declare-fun m!4491671 () Bool)

(assert (=> b!3927006 m!4491671))

(assert (=> b!3927006 m!4491545))

(assert (=> b!3926595 d!1164084))

(declare-fun b!3927021 () Bool)

(declare-fun e!2429091 () Bool)

(declare-fun inv!15 (TokenValue!6736) Bool)

(assert (=> b!3927021 (= e!2429091 (inv!15 (value!206055 (h!47113 prefixTokens!80))))))

(declare-fun b!3927022 () Bool)

(declare-fun e!2429092 () Bool)

(declare-fun inv!17 (TokenValue!6736) Bool)

(assert (=> b!3927022 (= e!2429092 (inv!17 (value!206055 (h!47113 prefixTokens!80))))))

(declare-fun b!3927023 () Bool)

(declare-fun e!2429093 () Bool)

(assert (=> b!3927023 (= e!2429093 e!2429092)))

(declare-fun c!682305 () Bool)

(assert (=> b!3927023 (= c!682305 ((_ is IntegerValue!20209) (value!206055 (h!47113 prefixTokens!80))))))

(declare-fun b!3927024 () Bool)

(declare-fun inv!16 (TokenValue!6736) Bool)

(assert (=> b!3927024 (= e!2429093 (inv!16 (value!206055 (h!47113 prefixTokens!80))))))

(declare-fun b!3927025 () Bool)

(declare-fun res!1588827 () Bool)

(assert (=> b!3927025 (=> res!1588827 e!2429091)))

(assert (=> b!3927025 (= res!1588827 (not ((_ is IntegerValue!20210) (value!206055 (h!47113 prefixTokens!80)))))))

(assert (=> b!3927025 (= e!2429092 e!2429091)))

(declare-fun d!1164086 () Bool)

(declare-fun c!682306 () Bool)

(assert (=> d!1164086 (= c!682306 ((_ is IntegerValue!20208) (value!206055 (h!47113 prefixTokens!80))))))

(assert (=> d!1164086 (= (inv!21 (value!206055 (h!47113 prefixTokens!80))) e!2429093)))

(assert (= (and d!1164086 c!682306) b!3927024))

(assert (= (and d!1164086 (not c!682306)) b!3927023))

(assert (= (and b!3927023 c!682305) b!3927022))

(assert (= (and b!3927023 (not c!682305)) b!3927025))

(assert (= (and b!3927025 (not res!1588827)) b!3927021))

(declare-fun m!4491679 () Bool)

(assert (=> b!3927021 m!4491679))

(declare-fun m!4491681 () Bool)

(assert (=> b!3927022 m!4491681))

(declare-fun m!4491683 () Bool)

(assert (=> b!3927024 m!4491683))

(assert (=> b!3926615 d!1164086))

(declare-fun d!1164092 () Bool)

(assert (=> d!1164092 (= (isEmpty!24846 prefix!426) ((_ is Nil!41692) prefix!426))))

(assert (=> b!3926594 d!1164092))

(declare-fun d!1164096 () Bool)

(declare-fun res!1588842 () Bool)

(declare-fun e!2429110 () Bool)

(assert (=> d!1164096 (=> (not res!1588842) (not e!2429110))))

(assert (=> d!1164096 (= res!1588842 (not (isEmpty!24846 (originalCharacters!7106 (h!47113 prefixTokens!80)))))))

(assert (=> d!1164096 (= (inv!55884 (h!47113 prefixTokens!80)) e!2429110)))

(declare-fun b!3927054 () Bool)

(declare-fun res!1588843 () Bool)

(assert (=> b!3927054 (=> (not res!1588843) (not e!2429110))))

(declare-fun dynLambda!17869 (Int TokenValue!6736) BalanceConc!25028)

(assert (=> b!3927054 (= res!1588843 (= (originalCharacters!7106 (h!47113 prefixTokens!80)) (list!15491 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (value!206055 (h!47113 prefixTokens!80))))))))

(declare-fun b!3927055 () Bool)

(assert (=> b!3927055 (= e!2429110 (= (size!31281 (h!47113 prefixTokens!80)) (size!31282 (originalCharacters!7106 (h!47113 prefixTokens!80)))))))

(assert (= (and d!1164096 res!1588842) b!3927054))

(assert (= (and b!3927054 res!1588843) b!3927055))

(declare-fun b_lambda!114903 () Bool)

(assert (=> (not b_lambda!114903) (not b!3927054)))

(declare-fun tb!234533 () Bool)

(declare-fun t!325075 () Bool)

(assert (=> (and b!3926608 (= (toChars!8817 (transformation!6506 (h!47114 rules!2768))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80))))) t!325075) tb!234533))

(declare-fun b!3927068 () Bool)

(declare-fun e!2429121 () Bool)

(declare-fun tp!1195518 () Bool)

(declare-fun inv!55887 (Conc!12717) Bool)

(assert (=> b!3927068 (= e!2429121 (and (inv!55887 (c!682219 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (value!206055 (h!47113 prefixTokens!80))))) tp!1195518))))

(declare-fun result!284214 () Bool)

(declare-fun inv!55888 (BalanceConc!25028) Bool)

(assert (=> tb!234533 (= result!284214 (and (inv!55888 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (value!206055 (h!47113 prefixTokens!80)))) e!2429121))))

(assert (= tb!234533 b!3927068))

(declare-fun m!4491719 () Bool)

(assert (=> b!3927068 m!4491719))

(declare-fun m!4491721 () Bool)

(assert (=> tb!234533 m!4491721))

(assert (=> b!3927054 t!325075))

(declare-fun b_and!299507 () Bool)

(assert (= b_and!299473 (and (=> t!325075 result!284214) b_and!299507)))

(declare-fun t!325077 () Bool)

(declare-fun tb!234535 () Bool)

(assert (=> (and b!3926627 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80))))) t!325077) tb!234535))

(declare-fun result!284218 () Bool)

(assert (= result!284218 result!284214))

(assert (=> b!3927054 t!325077))

(declare-fun b_and!299509 () Bool)

(assert (= b_and!299477 (and (=> t!325077 result!284218) b_and!299509)))

(declare-fun t!325079 () Bool)

(declare-fun tb!234537 () Bool)

(assert (=> (and b!3926624 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80))))) t!325079) tb!234537))

(declare-fun result!284220 () Bool)

(assert (= result!284220 result!284214))

(assert (=> b!3927054 t!325079))

(declare-fun b_and!299511 () Bool)

(assert (= b_and!299481 (and (=> t!325079 result!284220) b_and!299511)))

(declare-fun m!4491723 () Bool)

(assert (=> d!1164096 m!4491723))

(declare-fun m!4491725 () Bool)

(assert (=> b!3927054 m!4491725))

(assert (=> b!3927054 m!4491725))

(declare-fun m!4491727 () Bool)

(assert (=> b!3927054 m!4491727))

(declare-fun m!4491729 () Bool)

(assert (=> b!3927055 m!4491729))

(assert (=> b!3926599 d!1164096))

(declare-fun d!1164108 () Bool)

(assert (=> d!1164108 (isPrefix!3601 prefix!426 (++!10769 prefix!426 suffix!1176))))

(declare-fun lt!1370667 () Unit!60022)

(assert (=> d!1164108 (= lt!1370667 (choose!23313 prefix!426 suffix!1176))))

(assert (=> d!1164108 (= (lemmaConcatTwoListThenFirstIsPrefix!2464 prefix!426 suffix!1176) lt!1370667)))

(declare-fun bs!586035 () Bool)

(assert (= bs!586035 d!1164108))

(assert (=> bs!586035 m!4491067))

(assert (=> bs!586035 m!4491067))

(declare-fun m!4491731 () Bool)

(assert (=> bs!586035 m!4491731))

(declare-fun m!4491733 () Bool)

(assert (=> bs!586035 m!4491733))

(assert (=> b!3926619 d!1164108))

(declare-fun b!3927073 () Bool)

(declare-fun e!2429129 () Bool)

(declare-fun e!2429130 () Bool)

(assert (=> b!3927073 (= e!2429129 e!2429130)))

(declare-fun res!1588845 () Bool)

(assert (=> b!3927073 (=> (not res!1588845) (not e!2429130))))

(assert (=> b!3927073 (= res!1588845 (not ((_ is Nil!41692) lt!1370425)))))

(declare-fun b!3927074 () Bool)

(declare-fun res!1588846 () Bool)

(assert (=> b!3927074 (=> (not res!1588846) (not e!2429130))))

(assert (=> b!3927074 (= res!1588846 (= (head!8328 prefix!426) (head!8328 lt!1370425)))))

(declare-fun b!3927075 () Bool)

(assert (=> b!3927075 (= e!2429130 (isPrefix!3601 (tail!6055 prefix!426) (tail!6055 lt!1370425)))))

(declare-fun b!3927076 () Bool)

(declare-fun e!2429128 () Bool)

(assert (=> b!3927076 (= e!2429128 (>= (size!31282 lt!1370425) (size!31282 prefix!426)))))

(declare-fun d!1164110 () Bool)

(assert (=> d!1164110 e!2429128))

(declare-fun res!1588847 () Bool)

(assert (=> d!1164110 (=> res!1588847 e!2429128)))

(declare-fun lt!1370668 () Bool)

(assert (=> d!1164110 (= res!1588847 (not lt!1370668))))

(assert (=> d!1164110 (= lt!1370668 e!2429129)))

(declare-fun res!1588844 () Bool)

(assert (=> d!1164110 (=> res!1588844 e!2429129)))

(assert (=> d!1164110 (= res!1588844 ((_ is Nil!41692) prefix!426))))

(assert (=> d!1164110 (= (isPrefix!3601 prefix!426 lt!1370425) lt!1370668)))

(assert (= (and d!1164110 (not res!1588844)) b!3927073))

(assert (= (and b!3927073 res!1588845) b!3927074))

(assert (= (and b!3927074 res!1588846) b!3927075))

(assert (= (and d!1164110 (not res!1588847)) b!3927076))

(declare-fun m!4491735 () Bool)

(assert (=> b!3927074 m!4491735))

(declare-fun m!4491737 () Bool)

(assert (=> b!3927074 m!4491737))

(assert (=> b!3927075 m!4491577))

(declare-fun m!4491739 () Bool)

(assert (=> b!3927075 m!4491739))

(assert (=> b!3927075 m!4491577))

(assert (=> b!3927075 m!4491739))

(declare-fun m!4491741 () Bool)

(assert (=> b!3927075 m!4491741))

(assert (=> b!3927076 m!4490981))

(assert (=> b!3927076 m!4491083))

(assert (=> b!3926619 d!1164110))

(declare-fun d!1164112 () Bool)

(assert (=> d!1164112 (= lt!1370429 prefix!426)))

(declare-fun lt!1370671 () Unit!60022)

(declare-fun choose!23323 (List!41816 List!41816 List!41816) Unit!60022)

(assert (=> d!1164112 (= lt!1370671 (choose!23323 lt!1370429 prefix!426 lt!1370425))))

(assert (=> d!1164112 (isPrefix!3601 lt!1370429 lt!1370425)))

(assert (=> d!1164112 (= (lemmaIsPrefixSameLengthThenSameList!797 lt!1370429 prefix!426 lt!1370425) lt!1370671)))

(declare-fun bs!586036 () Bool)

(assert (= bs!586036 d!1164112))

(declare-fun m!4491751 () Bool)

(assert (=> bs!586036 m!4491751))

(assert (=> bs!586036 m!4491091))

(assert (=> b!3926619 d!1164112))

(declare-fun d!1164114 () Bool)

(assert (=> d!1164114 (= (_2!23615 (v!39251 lt!1370424)) suffix!1176)))

(declare-fun lt!1370672 () Unit!60022)

(assert (=> d!1164114 (= lt!1370672 (choose!23311 lt!1370429 (_2!23615 (v!39251 lt!1370424)) prefix!426 suffix!1176 lt!1370425))))

(assert (=> d!1164114 (isPrefix!3601 lt!1370429 lt!1370425)))

(assert (=> d!1164114 (= (lemmaSamePrefixThenSameSuffix!1822 lt!1370429 (_2!23615 (v!39251 lt!1370424)) prefix!426 suffix!1176 lt!1370425) lt!1370672)))

(declare-fun bs!586037 () Bool)

(assert (= bs!586037 d!1164114))

(declare-fun m!4491753 () Bool)

(assert (=> bs!586037 m!4491753))

(assert (=> bs!586037 m!4491091))

(assert (=> b!3926619 d!1164114))

(declare-fun d!1164116 () Bool)

(declare-fun res!1588848 () Bool)

(declare-fun e!2429144 () Bool)

(assert (=> d!1164116 (=> (not res!1588848) (not e!2429144))))

(assert (=> d!1164116 (= res!1588848 (not (isEmpty!24846 (originalCharacters!7106 (h!47113 suffixTokens!72)))))))

(assert (=> d!1164116 (= (inv!55884 (h!47113 suffixTokens!72)) e!2429144)))

(declare-fun b!3927088 () Bool)

(declare-fun res!1588849 () Bool)

(assert (=> b!3927088 (=> (not res!1588849) (not e!2429144))))

(assert (=> b!3927088 (= res!1588849 (= (originalCharacters!7106 (h!47113 suffixTokens!72)) (list!15491 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (value!206055 (h!47113 suffixTokens!72))))))))

(declare-fun b!3927089 () Bool)

(assert (=> b!3927089 (= e!2429144 (= (size!31281 (h!47113 suffixTokens!72)) (size!31282 (originalCharacters!7106 (h!47113 suffixTokens!72)))))))

(assert (= (and d!1164116 res!1588848) b!3927088))

(assert (= (and b!3927088 res!1588849) b!3927089))

(declare-fun b_lambda!114905 () Bool)

(assert (=> (not b_lambda!114905) (not b!3927088)))

(declare-fun tb!234547 () Bool)

(declare-fun t!325089 () Bool)

(assert (=> (and b!3926608 (= (toChars!8817 (transformation!6506 (h!47114 rules!2768))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72))))) t!325089) tb!234547))

(declare-fun b!3927092 () Bool)

(declare-fun e!2429147 () Bool)

(declare-fun tp!1195543 () Bool)

(assert (=> b!3927092 (= e!2429147 (and (inv!55887 (c!682219 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (value!206055 (h!47113 suffixTokens!72))))) tp!1195543))))

(declare-fun result!284232 () Bool)

(assert (=> tb!234547 (= result!284232 (and (inv!55888 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (value!206055 (h!47113 suffixTokens!72)))) e!2429147))))

(assert (= tb!234547 b!3927092))

(declare-fun m!4491755 () Bool)

(assert (=> b!3927092 m!4491755))

(declare-fun m!4491757 () Bool)

(assert (=> tb!234547 m!4491757))

(assert (=> b!3927088 t!325089))

(declare-fun b_and!299517 () Bool)

(assert (= b_and!299507 (and (=> t!325089 result!284232) b_and!299517)))

(declare-fun tb!234549 () Bool)

(declare-fun t!325091 () Bool)

(assert (=> (and b!3926627 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72))))) t!325091) tb!234549))

(declare-fun result!284234 () Bool)

(assert (= result!284234 result!284232))

(assert (=> b!3927088 t!325091))

(declare-fun b_and!299519 () Bool)

(assert (= b_and!299509 (and (=> t!325091 result!284234) b_and!299519)))

(declare-fun t!325093 () Bool)

(declare-fun tb!234551 () Bool)

(assert (=> (and b!3926624 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72))))) t!325093) tb!234551))

(declare-fun result!284236 () Bool)

(assert (= result!284236 result!284232))

(assert (=> b!3927088 t!325093))

(declare-fun b_and!299521 () Bool)

(assert (= b_and!299511 (and (=> t!325093 result!284236) b_and!299521)))

(declare-fun m!4491759 () Bool)

(assert (=> d!1164116 m!4491759))

(declare-fun m!4491761 () Bool)

(assert (=> b!3927088 m!4491761))

(assert (=> b!3927088 m!4491761))

(declare-fun m!4491763 () Bool)

(assert (=> b!3927088 m!4491763))

(declare-fun m!4491765 () Bool)

(assert (=> b!3927089 m!4491765))

(assert (=> b!3926597 d!1164116))

(declare-fun d!1164118 () Bool)

(assert (=> d!1164118 (= (inv!55880 (tag!7366 (rule!9446 (h!47113 suffixTokens!72)))) (= (mod (str.len (value!206054 (tag!7366 (rule!9446 (h!47113 suffixTokens!72))))) 2) 0))))

(assert (=> b!3926617 d!1164118))

(declare-fun d!1164120 () Bool)

(declare-fun res!1588850 () Bool)

(declare-fun e!2429152 () Bool)

(assert (=> d!1164120 (=> (not res!1588850) (not e!2429152))))

(assert (=> d!1164120 (= res!1588850 (semiInverseModEq!2795 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (toValue!8958 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72))))))))

(assert (=> d!1164120 (= (inv!55883 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) e!2429152)))

(declare-fun b!3927096 () Bool)

(assert (=> b!3927096 (= e!2429152 (equivClasses!2694 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (toValue!8958 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72))))))))

(assert (= (and d!1164120 res!1588850) b!3927096))

(declare-fun m!4491767 () Bool)

(assert (=> d!1164120 m!4491767))

(declare-fun m!4491769 () Bool)

(assert (=> b!3927096 m!4491769))

(assert (=> b!3926617 d!1164120))

(declare-fun d!1164122 () Bool)

(assert (=> d!1164122 (isPrefix!3601 lt!1370429 prefix!426)))

(declare-fun lt!1370675 () Unit!60022)

(declare-fun choose!23324 (List!41816 List!41816 List!41816) Unit!60022)

(assert (=> d!1164122 (= lt!1370675 (choose!23324 prefix!426 lt!1370429 lt!1370425))))

(assert (=> d!1164122 (isPrefix!3601 prefix!426 lt!1370425)))

(assert (=> d!1164122 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!279 prefix!426 lt!1370429 lt!1370425) lt!1370675)))

(declare-fun bs!586038 () Bool)

(assert (= bs!586038 d!1164122))

(assert (=> bs!586038 m!4491081))

(declare-fun m!4491775 () Bool)

(assert (=> bs!586038 m!4491775))

(assert (=> bs!586038 m!4491073))

(assert (=> b!3926622 d!1164122))

(assert (=> b!3926622 d!1164108))

(assert (=> b!3926622 d!1164110))

(declare-fun b!3927115 () Bool)

(declare-fun e!2429163 () Bool)

(declare-fun e!2429164 () Bool)

(assert (=> b!3927115 (= e!2429163 e!2429164)))

(declare-fun res!1588852 () Bool)

(assert (=> b!3927115 (=> (not res!1588852) (not e!2429164))))

(assert (=> b!3927115 (= res!1588852 (not ((_ is Nil!41692) prefix!426)))))

(declare-fun b!3927116 () Bool)

(declare-fun res!1588853 () Bool)

(assert (=> b!3927116 (=> (not res!1588853) (not e!2429164))))

(assert (=> b!3927116 (= res!1588853 (= (head!8328 lt!1370429) (head!8328 prefix!426)))))

(declare-fun b!3927117 () Bool)

(assert (=> b!3927117 (= e!2429164 (isPrefix!3601 (tail!6055 lt!1370429) (tail!6055 prefix!426)))))

(declare-fun b!3927118 () Bool)

(declare-fun e!2429162 () Bool)

(assert (=> b!3927118 (= e!2429162 (>= (size!31282 prefix!426) (size!31282 lt!1370429)))))

(declare-fun d!1164124 () Bool)

(assert (=> d!1164124 e!2429162))

(declare-fun res!1588854 () Bool)

(assert (=> d!1164124 (=> res!1588854 e!2429162)))

(declare-fun lt!1370676 () Bool)

(assert (=> d!1164124 (= res!1588854 (not lt!1370676))))

(assert (=> d!1164124 (= lt!1370676 e!2429163)))

(declare-fun res!1588851 () Bool)

(assert (=> d!1164124 (=> res!1588851 e!2429163)))

(assert (=> d!1164124 (= res!1588851 ((_ is Nil!41692) lt!1370429))))

(assert (=> d!1164124 (= (isPrefix!3601 lt!1370429 prefix!426) lt!1370676)))

(assert (= (and d!1164124 (not res!1588851)) b!3927115))

(assert (= (and b!3927115 res!1588852) b!3927116))

(assert (= (and b!3927116 res!1588853) b!3927117))

(assert (= (and d!1164124 (not res!1588854)) b!3927118))

(assert (=> b!3927116 m!4491093))

(assert (=> b!3927116 m!4491735))

(assert (=> b!3927117 m!4491097))

(assert (=> b!3927117 m!4491577))

(assert (=> b!3927117 m!4491097))

(assert (=> b!3927117 m!4491577))

(declare-fun m!4491777 () Bool)

(assert (=> b!3927117 m!4491777))

(assert (=> b!3927118 m!4491083))

(assert (=> b!3927118 m!4491043))

(assert (=> b!3926622 d!1164124))

(declare-fun d!1164126 () Bool)

(declare-fun lt!1370677 () Int)

(assert (=> d!1164126 (>= lt!1370677 0)))

(declare-fun e!2429165 () Int)

(assert (=> d!1164126 (= lt!1370677 e!2429165)))

(declare-fun c!682312 () Bool)

(assert (=> d!1164126 (= c!682312 ((_ is Nil!41692) prefix!426))))

(assert (=> d!1164126 (= (size!31282 prefix!426) lt!1370677)))

(declare-fun b!3927119 () Bool)

(assert (=> b!3927119 (= e!2429165 0)))

(declare-fun b!3927120 () Bool)

(assert (=> b!3927120 (= e!2429165 (+ 1 (size!31282 (t!325047 prefix!426))))))

(assert (= (and d!1164126 c!682312) b!3927119))

(assert (= (and d!1164126 (not c!682312)) b!3927120))

(declare-fun m!4491779 () Bool)

(assert (=> b!3927120 m!4491779))

(assert (=> b!3926622 d!1164126))

(declare-fun b!3927122 () Bool)

(declare-fun e!2429166 () List!41817)

(assert (=> b!3927122 (= e!2429166 (Cons!41693 (h!47113 lt!1370446) (++!10770 (t!325048 lt!1370446) (_1!23616 lt!1370460))))))

(declare-fun d!1164128 () Bool)

(declare-fun e!2429167 () Bool)

(assert (=> d!1164128 e!2429167))

(declare-fun res!1588855 () Bool)

(assert (=> d!1164128 (=> (not res!1588855) (not e!2429167))))

(declare-fun lt!1370678 () List!41817)

(assert (=> d!1164128 (= res!1588855 (= (content!6275 lt!1370678) ((_ map or) (content!6275 lt!1370446) (content!6275 (_1!23616 lt!1370460)))))))

(assert (=> d!1164128 (= lt!1370678 e!2429166)))

(declare-fun c!682313 () Bool)

(assert (=> d!1164128 (= c!682313 ((_ is Nil!41693) lt!1370446))))

(assert (=> d!1164128 (= (++!10770 lt!1370446 (_1!23616 lt!1370460)) lt!1370678)))

(declare-fun b!3927124 () Bool)

(assert (=> b!3927124 (= e!2429167 (or (not (= (_1!23616 lt!1370460) Nil!41693)) (= lt!1370678 lt!1370446)))))

(declare-fun b!3927123 () Bool)

(declare-fun res!1588856 () Bool)

(assert (=> b!3927123 (=> (not res!1588856) (not e!2429167))))

(assert (=> b!3927123 (= res!1588856 (= (size!31284 lt!1370678) (+ (size!31284 lt!1370446) (size!31284 (_1!23616 lt!1370460)))))))

(declare-fun b!3927121 () Bool)

(assert (=> b!3927121 (= e!2429166 (_1!23616 lt!1370460))))

(assert (= (and d!1164128 c!682313) b!3927121))

(assert (= (and d!1164128 (not c!682313)) b!3927122))

(assert (= (and d!1164128 res!1588855) b!3927123))

(assert (= (and b!3927123 res!1588856) b!3927124))

(declare-fun m!4491789 () Bool)

(assert (=> b!3927122 m!4491789))

(declare-fun m!4491791 () Bool)

(assert (=> d!1164128 m!4491791))

(declare-fun m!4491793 () Bool)

(assert (=> d!1164128 m!4491793))

(declare-fun m!4491795 () Bool)

(assert (=> d!1164128 m!4491795))

(declare-fun m!4491797 () Bool)

(assert (=> b!3927123 m!4491797))

(declare-fun m!4491799 () Bool)

(assert (=> b!3927123 m!4491799))

(declare-fun m!4491801 () Bool)

(assert (=> b!3927123 m!4491801))

(assert (=> b!3926621 d!1164128))

(declare-fun d!1164130 () Bool)

(declare-fun dynLambda!17870 (Int BalanceConc!25028) TokenValue!6736)

(assert (=> d!1164130 (= (apply!9745 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) (seqFromList!4773 lt!1370429)) (dynLambda!17870 (toValue!8958 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424))))) (seqFromList!4773 lt!1370429)))))

(declare-fun b_lambda!114911 () Bool)

(assert (=> (not b_lambda!114911) (not d!1164130)))

(declare-fun t!325111 () Bool)

(declare-fun tb!234569 () Bool)

(assert (=> (and b!3926608 (= (toValue!8958 (transformation!6506 (h!47114 rules!2768))) (toValue!8958 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325111) tb!234569))

(declare-fun result!284256 () Bool)

(assert (=> tb!234569 (= result!284256 (inv!21 (dynLambda!17870 (toValue!8958 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424))))) (seqFromList!4773 lt!1370429))))))

(declare-fun m!4491803 () Bool)

(assert (=> tb!234569 m!4491803))

(assert (=> d!1164130 t!325111))

(declare-fun b_and!299531 () Bool)

(assert (= b_and!299471 (and (=> t!325111 result!284256) b_and!299531)))

(declare-fun t!325113 () Bool)

(declare-fun tb!234571 () Bool)

(assert (=> (and b!3926627 (= (toValue!8958 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (toValue!8958 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325113) tb!234571))

(declare-fun result!284260 () Bool)

(assert (= result!284260 result!284256))

(assert (=> d!1164130 t!325113))

(declare-fun b_and!299533 () Bool)

(assert (= b_and!299475 (and (=> t!325113 result!284260) b_and!299533)))

(declare-fun tb!234573 () Bool)

(declare-fun t!325115 () Bool)

(assert (=> (and b!3926624 (= (toValue!8958 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (toValue!8958 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325115) tb!234573))

(declare-fun result!284262 () Bool)

(assert (= result!284262 result!284256))

(assert (=> d!1164130 t!325115))

(declare-fun b_and!299535 () Bool)

(assert (= b_and!299479 (and (=> t!325115 result!284262) b_and!299535)))

(assert (=> d!1164130 m!4491045))

(declare-fun m!4491805 () Bool)

(assert (=> d!1164130 m!4491805))

(assert (=> b!3926600 d!1164130))

(declare-fun d!1164132 () Bool)

(declare-fun list!15493 (Conc!12717) List!41816)

(assert (=> d!1164132 (= (list!15491 (charsOf!4330 (_1!23615 (v!39251 lt!1370424)))) (list!15493 (c!682219 (charsOf!4330 (_1!23615 (v!39251 lt!1370424))))))))

(declare-fun bs!586039 () Bool)

(assert (= bs!586039 d!1164132))

(declare-fun m!4491807 () Bool)

(assert (=> bs!586039 m!4491807))

(assert (=> b!3926600 d!1164132))

(declare-fun b!3927137 () Bool)

(declare-fun e!2429176 () Bool)

(declare-fun e!2429177 () Bool)

(assert (=> b!3927137 (= e!2429176 e!2429177)))

(declare-fun res!1588858 () Bool)

(assert (=> b!3927137 (=> (not res!1588858) (not e!2429177))))

(assert (=> b!3927137 (= res!1588858 (not ((_ is Nil!41692) lt!1370440)))))

(declare-fun b!3927138 () Bool)

(declare-fun res!1588859 () Bool)

(assert (=> b!3927138 (=> (not res!1588859) (not e!2429177))))

(assert (=> b!3927138 (= res!1588859 (= (head!8328 lt!1370429) (head!8328 lt!1370440)))))

(declare-fun b!3927139 () Bool)

(assert (=> b!3927139 (= e!2429177 (isPrefix!3601 (tail!6055 lt!1370429) (tail!6055 lt!1370440)))))

(declare-fun b!3927140 () Bool)

(declare-fun e!2429175 () Bool)

(assert (=> b!3927140 (= e!2429175 (>= (size!31282 lt!1370440) (size!31282 lt!1370429)))))

(declare-fun d!1164134 () Bool)

(assert (=> d!1164134 e!2429175))

(declare-fun res!1588860 () Bool)

(assert (=> d!1164134 (=> res!1588860 e!2429175)))

(declare-fun lt!1370679 () Bool)

(assert (=> d!1164134 (= res!1588860 (not lt!1370679))))

(assert (=> d!1164134 (= lt!1370679 e!2429176)))

(declare-fun res!1588857 () Bool)

(assert (=> d!1164134 (=> res!1588857 e!2429176)))

(assert (=> d!1164134 (= res!1588857 ((_ is Nil!41692) lt!1370429))))

(assert (=> d!1164134 (= (isPrefix!3601 lt!1370429 lt!1370440) lt!1370679)))

(assert (= (and d!1164134 (not res!1588857)) b!3927137))

(assert (= (and b!3927137 res!1588858) b!3927138))

(assert (= (and b!3927138 res!1588859) b!3927139))

(assert (= (and d!1164134 (not res!1588860)) b!3927140))

(assert (=> b!3927138 m!4491093))

(declare-fun m!4491809 () Bool)

(assert (=> b!3927138 m!4491809))

(assert (=> b!3927139 m!4491097))

(declare-fun m!4491811 () Bool)

(assert (=> b!3927139 m!4491811))

(assert (=> b!3927139 m!4491097))

(assert (=> b!3927139 m!4491811))

(declare-fun m!4491813 () Bool)

(assert (=> b!3927139 m!4491813))

(declare-fun m!4491815 () Bool)

(assert (=> b!3927140 m!4491815))

(assert (=> b!3927140 m!4491043))

(assert (=> b!3926600 d!1164134))

(declare-fun d!1164136 () Bool)

(declare-fun fromListB!2204 (List!41816) BalanceConc!25028)

(assert (=> d!1164136 (= (seqFromList!4773 lt!1370429) (fromListB!2204 lt!1370429))))

(declare-fun bs!586040 () Bool)

(assert (= bs!586040 d!1164136))

(declare-fun m!4491817 () Bool)

(assert (=> bs!586040 m!4491817))

(assert (=> b!3926600 d!1164136))

(declare-fun b!3927141 () Bool)

(declare-fun e!2429179 () List!41816)

(assert (=> b!3927141 (= e!2429179 (_2!23615 (v!39251 lt!1370424)))))

(declare-fun b!3927142 () Bool)

(assert (=> b!3927142 (= e!2429179 (Cons!41692 (h!47112 lt!1370429) (++!10769 (t!325047 lt!1370429) (_2!23615 (v!39251 lt!1370424)))))))

(declare-fun e!2429178 () Bool)

(declare-fun b!3927144 () Bool)

(declare-fun lt!1370680 () List!41816)

(assert (=> b!3927144 (= e!2429178 (or (not (= (_2!23615 (v!39251 lt!1370424)) Nil!41692)) (= lt!1370680 lt!1370429)))))

(declare-fun d!1164138 () Bool)

(assert (=> d!1164138 e!2429178))

(declare-fun res!1588862 () Bool)

(assert (=> d!1164138 (=> (not res!1588862) (not e!2429178))))

(assert (=> d!1164138 (= res!1588862 (= (content!6276 lt!1370680) ((_ map or) (content!6276 lt!1370429) (content!6276 (_2!23615 (v!39251 lt!1370424))))))))

(assert (=> d!1164138 (= lt!1370680 e!2429179)))

(declare-fun c!682314 () Bool)

(assert (=> d!1164138 (= c!682314 ((_ is Nil!41692) lt!1370429))))

(assert (=> d!1164138 (= (++!10769 lt!1370429 (_2!23615 (v!39251 lt!1370424))) lt!1370680)))

(declare-fun b!3927143 () Bool)

(declare-fun res!1588861 () Bool)

(assert (=> b!3927143 (=> (not res!1588861) (not e!2429178))))

(assert (=> b!3927143 (= res!1588861 (= (size!31282 lt!1370680) (+ (size!31282 lt!1370429) (size!31282 (_2!23615 (v!39251 lt!1370424))))))))

(assert (= (and d!1164138 c!682314) b!3927141))

(assert (= (and d!1164138 (not c!682314)) b!3927142))

(assert (= (and d!1164138 res!1588862) b!3927143))

(assert (= (and b!3927143 res!1588861) b!3927144))

(declare-fun m!4491819 () Bool)

(assert (=> b!3927142 m!4491819))

(declare-fun m!4491821 () Bool)

(assert (=> d!1164138 m!4491821))

(assert (=> d!1164138 m!4491567))

(declare-fun m!4491823 () Bool)

(assert (=> d!1164138 m!4491823))

(declare-fun m!4491825 () Bool)

(assert (=> b!3927143 m!4491825))

(assert (=> b!3927143 m!4491043))

(assert (=> b!3927143 m!4490989))

(assert (=> b!3926600 d!1164138))

(declare-fun d!1164140 () Bool)

(declare-fun lt!1370681 () List!41816)

(assert (=> d!1164140 (= (++!10769 lt!1370429 lt!1370681) lt!1370425)))

(declare-fun e!2429180 () List!41816)

(assert (=> d!1164140 (= lt!1370681 e!2429180)))

(declare-fun c!682315 () Bool)

(assert (=> d!1164140 (= c!682315 ((_ is Cons!41692) lt!1370429))))

(assert (=> d!1164140 (>= (size!31282 lt!1370425) (size!31282 lt!1370429))))

(assert (=> d!1164140 (= (getSuffix!2056 lt!1370425 lt!1370429) lt!1370681)))

(declare-fun b!3927145 () Bool)

(assert (=> b!3927145 (= e!2429180 (getSuffix!2056 (tail!6055 lt!1370425) (t!325047 lt!1370429)))))

(declare-fun b!3927146 () Bool)

(assert (=> b!3927146 (= e!2429180 lt!1370425)))

(assert (= (and d!1164140 c!682315) b!3927145))

(assert (= (and d!1164140 (not c!682315)) b!3927146))

(declare-fun m!4491827 () Bool)

(assert (=> d!1164140 m!4491827))

(assert (=> d!1164140 m!4490981))

(assert (=> d!1164140 m!4491043))

(assert (=> b!3927145 m!4491739))

(assert (=> b!3927145 m!4491739))

(declare-fun m!4491829 () Bool)

(assert (=> b!3927145 m!4491829))

(assert (=> b!3926600 d!1164140))

(declare-fun d!1164142 () Bool)

(declare-fun lt!1370684 () BalanceConc!25028)

(assert (=> d!1164142 (= (list!15491 lt!1370684) (originalCharacters!7106 (_1!23615 (v!39251 lt!1370424))))))

(assert (=> d!1164142 (= lt!1370684 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424))))) (value!206055 (_1!23615 (v!39251 lt!1370424)))))))

(assert (=> d!1164142 (= (charsOf!4330 (_1!23615 (v!39251 lt!1370424))) lt!1370684)))

(declare-fun b_lambda!114913 () Bool)

(assert (=> (not b_lambda!114913) (not d!1164142)))

(declare-fun tb!234575 () Bool)

(declare-fun t!325117 () Bool)

(assert (=> (and b!3926608 (= (toChars!8817 (transformation!6506 (h!47114 rules!2768))) (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325117) tb!234575))

(declare-fun b!3927147 () Bool)

(declare-fun e!2429181 () Bool)

(declare-fun tp!1195580 () Bool)

(assert (=> b!3927147 (= e!2429181 (and (inv!55887 (c!682219 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424))))) (value!206055 (_1!23615 (v!39251 lt!1370424)))))) tp!1195580))))

(declare-fun result!284264 () Bool)

(assert (=> tb!234575 (= result!284264 (and (inv!55888 (dynLambda!17869 (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424))))) (value!206055 (_1!23615 (v!39251 lt!1370424))))) e!2429181))))

(assert (= tb!234575 b!3927147))

(declare-fun m!4491831 () Bool)

(assert (=> b!3927147 m!4491831))

(declare-fun m!4491833 () Bool)

(assert (=> tb!234575 m!4491833))

(assert (=> d!1164142 t!325117))

(declare-fun b_and!299537 () Bool)

(assert (= b_and!299517 (and (=> t!325117 result!284264) b_and!299537)))

(declare-fun t!325119 () Bool)

(declare-fun tb!234577 () Bool)

(assert (=> (and b!3926627 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325119) tb!234577))

(declare-fun result!284266 () Bool)

(assert (= result!284266 result!284264))

(assert (=> d!1164142 t!325119))

(declare-fun b_and!299539 () Bool)

(assert (= b_and!299519 (and (=> t!325119 result!284266) b_and!299539)))

(declare-fun t!325121 () Bool)

(declare-fun tb!234579 () Bool)

(assert (=> (and b!3926624 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325121) tb!234579))

(declare-fun result!284268 () Bool)

(assert (= result!284268 result!284264))

(assert (=> d!1164142 t!325121))

(declare-fun b_and!299541 () Bool)

(assert (= b_and!299521 (and (=> t!325121 result!284268) b_and!299541)))

(declare-fun m!4491835 () Bool)

(assert (=> d!1164142 m!4491835))

(declare-fun m!4491837 () Bool)

(assert (=> d!1164142 m!4491837))

(assert (=> b!3926600 d!1164142))

(declare-fun d!1164144 () Bool)

(assert (=> d!1164144 (ruleValid!2454 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))))))

(declare-fun lt!1370687 () Unit!60022)

(declare-fun choose!23326 (LexerInterface!6095 Rule!12812 List!41818) Unit!60022)

(assert (=> d!1164144 (= lt!1370687 (choose!23326 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))) rules!2768))))

(assert (=> d!1164144 (contains!8358 rules!2768 (rule!9446 (_1!23615 (v!39251 lt!1370424))))))

(assert (=> d!1164144 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1534 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424))) rules!2768) lt!1370687)))

(declare-fun bs!586041 () Bool)

(assert (= bs!586041 d!1164144))

(assert (=> bs!586041 m!4491051))

(declare-fun m!4491839 () Bool)

(assert (=> bs!586041 m!4491839))

(declare-fun m!4491841 () Bool)

(assert (=> bs!586041 m!4491841))

(assert (=> b!3926600 d!1164144))

(declare-fun b!3927148 () Bool)

(declare-fun e!2429184 () tuple2!40964)

(declare-fun lt!1370689 () Option!8926)

(declare-fun lt!1370690 () tuple2!40964)

(assert (=> b!3927148 (= e!2429184 (tuple2!40965 (Cons!41693 (_1!23615 (v!39251 lt!1370689)) (_1!23616 lt!1370690)) (_2!23616 lt!1370690)))))

(assert (=> b!3927148 (= lt!1370690 (lexList!1863 thiss!20629 rules!2768 (_2!23615 (v!39251 lt!1370689))))))

(declare-fun b!3927149 () Bool)

(assert (=> b!3927149 (= e!2429184 (tuple2!40965 Nil!41693 (_2!23615 (v!39251 lt!1370424))))))

(declare-fun b!3927150 () Bool)

(declare-fun e!2429183 () Bool)

(declare-fun lt!1370688 () tuple2!40964)

(assert (=> b!3927150 (= e!2429183 (not (isEmpty!24844 (_1!23616 lt!1370688))))))

(declare-fun b!3927151 () Bool)

(declare-fun e!2429182 () Bool)

(assert (=> b!3927151 (= e!2429182 e!2429183)))

(declare-fun res!1588863 () Bool)

(assert (=> b!3927151 (= res!1588863 (< (size!31282 (_2!23616 lt!1370688)) (size!31282 (_2!23615 (v!39251 lt!1370424)))))))

(assert (=> b!3927151 (=> (not res!1588863) (not e!2429183))))

(declare-fun d!1164146 () Bool)

(assert (=> d!1164146 e!2429182))

(declare-fun c!682316 () Bool)

(assert (=> d!1164146 (= c!682316 (> (size!31284 (_1!23616 lt!1370688)) 0))))

(assert (=> d!1164146 (= lt!1370688 e!2429184)))

(declare-fun c!682317 () Bool)

(assert (=> d!1164146 (= c!682317 ((_ is Some!8925) lt!1370689))))

(assert (=> d!1164146 (= lt!1370689 (maxPrefix!3399 thiss!20629 rules!2768 (_2!23615 (v!39251 lt!1370424))))))

(assert (=> d!1164146 (= (lexList!1863 thiss!20629 rules!2768 (_2!23615 (v!39251 lt!1370424))) lt!1370688)))

(declare-fun b!3927152 () Bool)

(assert (=> b!3927152 (= e!2429182 (= (_2!23616 lt!1370688) (_2!23615 (v!39251 lt!1370424))))))

(assert (= (and d!1164146 c!682317) b!3927148))

(assert (= (and d!1164146 (not c!682317)) b!3927149))

(assert (= (and d!1164146 c!682316) b!3927151))

(assert (= (and d!1164146 (not c!682316)) b!3927152))

(assert (= (and b!3927151 res!1588863) b!3927150))

(declare-fun m!4491843 () Bool)

(assert (=> b!3927148 m!4491843))

(declare-fun m!4491845 () Bool)

(assert (=> b!3927150 m!4491845))

(declare-fun m!4491847 () Bool)

(assert (=> b!3927151 m!4491847))

(assert (=> b!3927151 m!4490989))

(declare-fun m!4491849 () Bool)

(assert (=> d!1164146 m!4491849))

(declare-fun m!4491851 () Bool)

(assert (=> d!1164146 m!4491851))

(assert (=> b!3926600 d!1164146))

(declare-fun d!1164148 () Bool)

(declare-fun lt!1370691 () Int)

(assert (=> d!1164148 (>= lt!1370691 0)))

(declare-fun e!2429185 () Int)

(assert (=> d!1164148 (= lt!1370691 e!2429185)))

(declare-fun c!682318 () Bool)

(assert (=> d!1164148 (= c!682318 ((_ is Nil!41692) lt!1370429))))

(assert (=> d!1164148 (= (size!31282 lt!1370429) lt!1370691)))

(declare-fun b!3927153 () Bool)

(assert (=> b!3927153 (= e!2429185 0)))

(declare-fun b!3927154 () Bool)

(assert (=> b!3927154 (= e!2429185 (+ 1 (size!31282 (t!325047 lt!1370429))))))

(assert (= (and d!1164148 c!682318) b!3927153))

(assert (= (and d!1164148 (not c!682318)) b!3927154))

(declare-fun m!4491853 () Bool)

(assert (=> b!3927154 m!4491853))

(assert (=> b!3926600 d!1164148))

(declare-fun d!1164150 () Bool)

(assert (=> d!1164150 (= (_2!23615 (v!39251 lt!1370424)) lt!1370463)))

(declare-fun lt!1370692 () Unit!60022)

(assert (=> d!1164150 (= lt!1370692 (choose!23311 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 lt!1370463 lt!1370425))))

(assert (=> d!1164150 (isPrefix!3601 lt!1370429 lt!1370425)))

(assert (=> d!1164150 (= (lemmaSamePrefixThenSameSuffix!1822 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 lt!1370463 lt!1370425) lt!1370692)))

(declare-fun bs!586042 () Bool)

(assert (= bs!586042 d!1164150))

(declare-fun m!4491855 () Bool)

(assert (=> bs!586042 m!4491855))

(assert (=> bs!586042 m!4491091))

(assert (=> b!3926600 d!1164150))

(declare-fun d!1164152 () Bool)

(assert (=> d!1164152 (= (size!31281 (_1!23615 (v!39251 lt!1370424))) (size!31282 (originalCharacters!7106 (_1!23615 (v!39251 lt!1370424)))))))

(declare-fun Unit!60032 () Unit!60022)

(assert (=> d!1164152 (= (lemmaCharactersSize!1163 (_1!23615 (v!39251 lt!1370424))) Unit!60032)))

(declare-fun bs!586043 () Bool)

(assert (= bs!586043 d!1164152))

(assert (=> bs!586043 m!4490961))

(assert (=> b!3926600 d!1164152))

(declare-fun d!1164154 () Bool)

(declare-fun res!1588868 () Bool)

(declare-fun e!2429188 () Bool)

(assert (=> d!1164154 (=> (not res!1588868) (not e!2429188))))

(declare-fun validRegex!5194 (Regex!11411) Bool)

(assert (=> d!1164154 (= res!1588868 (validRegex!5194 (regex!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424))))))))

(assert (=> d!1164154 (= (ruleValid!2454 thiss!20629 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) e!2429188)))

(declare-fun b!3927159 () Bool)

(declare-fun res!1588869 () Bool)

(assert (=> b!3927159 (=> (not res!1588869) (not e!2429188))))

(declare-fun nullable!3995 (Regex!11411) Bool)

(assert (=> b!3927159 (= res!1588869 (not (nullable!3995 (regex!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))))))

(declare-fun b!3927160 () Bool)

(assert (=> b!3927160 (= e!2429188 (not (= (tag!7366 (rule!9446 (_1!23615 (v!39251 lt!1370424)))) (String!47399 ""))))))

(assert (= (and d!1164154 res!1588868) b!3927159))

(assert (= (and b!3927159 res!1588869) b!3927160))

(declare-fun m!4491857 () Bool)

(assert (=> d!1164154 m!4491857))

(declare-fun m!4491859 () Bool)

(assert (=> b!3927159 m!4491859))

(assert (=> b!3926600 d!1164154))

(declare-fun d!1164156 () Bool)

(assert (=> d!1164156 (isPrefix!3601 lt!1370429 (++!10769 lt!1370429 (_2!23615 (v!39251 lt!1370424))))))

(declare-fun lt!1370693 () Unit!60022)

(assert (=> d!1164156 (= lt!1370693 (choose!23313 lt!1370429 (_2!23615 (v!39251 lt!1370424))))))

(assert (=> d!1164156 (= (lemmaConcatTwoListThenFirstIsPrefix!2464 lt!1370429 (_2!23615 (v!39251 lt!1370424))) lt!1370693)))

(declare-fun bs!586044 () Bool)

(assert (= bs!586044 d!1164156))

(assert (=> bs!586044 m!4491035))

(assert (=> bs!586044 m!4491035))

(declare-fun m!4491861 () Bool)

(assert (=> bs!586044 m!4491861))

(declare-fun m!4491863 () Bool)

(assert (=> bs!586044 m!4491863))

(assert (=> b!3926600 d!1164156))

(declare-fun b!3927161 () Bool)

(declare-fun e!2429189 () Bool)

(assert (=> b!3927161 (= e!2429189 (inv!15 (value!206055 (h!47113 suffixTokens!72))))))

(declare-fun b!3927162 () Bool)

(declare-fun e!2429190 () Bool)

(assert (=> b!3927162 (= e!2429190 (inv!17 (value!206055 (h!47113 suffixTokens!72))))))

(declare-fun b!3927163 () Bool)

(declare-fun e!2429191 () Bool)

(assert (=> b!3927163 (= e!2429191 e!2429190)))

(declare-fun c!682319 () Bool)

(assert (=> b!3927163 (= c!682319 ((_ is IntegerValue!20209) (value!206055 (h!47113 suffixTokens!72))))))

(declare-fun b!3927164 () Bool)

(assert (=> b!3927164 (= e!2429191 (inv!16 (value!206055 (h!47113 suffixTokens!72))))))

(declare-fun b!3927165 () Bool)

(declare-fun res!1588870 () Bool)

(assert (=> b!3927165 (=> res!1588870 e!2429189)))

(assert (=> b!3927165 (= res!1588870 (not ((_ is IntegerValue!20210) (value!206055 (h!47113 suffixTokens!72)))))))

(assert (=> b!3927165 (= e!2429190 e!2429189)))

(declare-fun d!1164158 () Bool)

(declare-fun c!682320 () Bool)

(assert (=> d!1164158 (= c!682320 ((_ is IntegerValue!20208) (value!206055 (h!47113 suffixTokens!72))))))

(assert (=> d!1164158 (= (inv!21 (value!206055 (h!47113 suffixTokens!72))) e!2429191)))

(assert (= (and d!1164158 c!682320) b!3927164))

(assert (= (and d!1164158 (not c!682320)) b!3927163))

(assert (= (and b!3927163 c!682319) b!3927162))

(assert (= (and b!3927163 (not c!682319)) b!3927165))

(assert (= (and b!3927165 (not res!1588870)) b!3927161))

(declare-fun m!4491865 () Bool)

(assert (=> b!3927161 m!4491865))

(declare-fun m!4491867 () Bool)

(assert (=> b!3927162 m!4491867))

(declare-fun m!4491869 () Bool)

(assert (=> b!3927164 m!4491869))

(assert (=> b!3926620 d!1164158))

(declare-fun d!1164160 () Bool)

(assert (=> d!1164160 (and (= lt!1370429 lt!1370429) (= (_2!23615 (v!39251 lt!1370424)) (_2!23615 lt!1370451)))))

(declare-fun lt!1370696 () Unit!60022)

(declare-fun choose!23327 (List!41816 List!41816 List!41816 List!41816) Unit!60022)

(assert (=> d!1164160 (= lt!1370696 (choose!23327 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 (_2!23615 lt!1370451)))))

(assert (=> d!1164160 (= (++!10769 lt!1370429 (_2!23615 (v!39251 lt!1370424))) (++!10769 lt!1370429 (_2!23615 lt!1370451)))))

(assert (=> d!1164160 (= (lemmaConcatSameAndSameSizesThenSameLists!554 lt!1370429 (_2!23615 (v!39251 lt!1370424)) lt!1370429 (_2!23615 lt!1370451)) lt!1370696)))

(declare-fun bs!586045 () Bool)

(assert (= bs!586045 d!1164160))

(declare-fun m!4491871 () Bool)

(assert (=> bs!586045 m!4491871))

(assert (=> bs!586045 m!4491035))

(declare-fun m!4491873 () Bool)

(assert (=> bs!586045 m!4491873))

(assert (=> b!3926604 d!1164160))

(declare-fun d!1164162 () Bool)

(assert (=> d!1164162 (not (= (lexList!1863 thiss!20629 rules!2768 (_2!23615 lt!1370451)) (tuple2!40965 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1370699 () Unit!60022)

(declare-fun choose!23328 (LexerInterface!6095 List!41818 List!41816 List!41816 List!41817 List!41816) Unit!60022)

(assert (=> d!1164162 (= lt!1370699 (choose!23328 thiss!20629 rules!2768 suffix!1176 (_2!23615 lt!1370451) suffixTokens!72 suffixResult!91))))

(assert (=> d!1164162 (not (isEmpty!24845 rules!2768))))

(assert (=> d!1164162 (= (lemmaLexWithSmallerInputCannotProduceSameResults!106 thiss!20629 rules!2768 suffix!1176 (_2!23615 lt!1370451) suffixTokens!72 suffixResult!91) lt!1370699)))

(declare-fun bs!586046 () Bool)

(assert (= bs!586046 d!1164162))

(assert (=> bs!586046 m!4491009))

(declare-fun m!4491875 () Bool)

(assert (=> bs!586046 m!4491875))

(assert (=> bs!586046 m!4490995))

(assert (=> b!3926604 d!1164162))

(declare-fun d!1164164 () Bool)

(declare-fun lt!1370700 () Int)

(assert (=> d!1164164 (>= lt!1370700 0)))

(declare-fun e!2429192 () Int)

(assert (=> d!1164164 (= lt!1370700 e!2429192)))

(declare-fun c!682321 () Bool)

(assert (=> d!1164164 (= c!682321 ((_ is Nil!41692) suffix!1176))))

(assert (=> d!1164164 (= (size!31282 suffix!1176) lt!1370700)))

(declare-fun b!3927166 () Bool)

(assert (=> b!3927166 (= e!2429192 0)))

(declare-fun b!3927167 () Bool)

(assert (=> b!3927167 (= e!2429192 (+ 1 (size!31282 (t!325047 suffix!1176))))))

(assert (= (and d!1164164 c!682321) b!3927166))

(assert (= (and d!1164164 (not c!682321)) b!3927167))

(declare-fun m!4491877 () Bool)

(assert (=> b!3927167 m!4491877))

(assert (=> b!3926603 d!1164164))

(declare-fun d!1164166 () Bool)

(declare-fun lt!1370701 () Int)

(assert (=> d!1164166 (>= lt!1370701 0)))

(declare-fun e!2429193 () Int)

(assert (=> d!1164166 (= lt!1370701 e!2429193)))

(declare-fun c!682322 () Bool)

(assert (=> d!1164166 (= c!682322 ((_ is Nil!41692) (_2!23615 (v!39251 lt!1370424))))))

(assert (=> d!1164166 (= (size!31282 (_2!23615 (v!39251 lt!1370424))) lt!1370701)))

(declare-fun b!3927168 () Bool)

(assert (=> b!3927168 (= e!2429193 0)))

(declare-fun b!3927169 () Bool)

(assert (=> b!3927169 (= e!2429193 (+ 1 (size!31282 (t!325047 (_2!23615 (v!39251 lt!1370424))))))))

(assert (= (and d!1164166 c!682322) b!3927168))

(assert (= (and d!1164166 (not c!682322)) b!3927169))

(declare-fun m!4491879 () Bool)

(assert (=> b!3927169 m!4491879))

(assert (=> b!3926603 d!1164166))

(declare-fun d!1164168 () Bool)

(declare-fun res!1588873 () Bool)

(declare-fun e!2429196 () Bool)

(assert (=> d!1164168 (=> (not res!1588873) (not e!2429196))))

(declare-fun rulesValid!2529 (LexerInterface!6095 List!41818) Bool)

(assert (=> d!1164168 (= res!1588873 (rulesValid!2529 thiss!20629 rules!2768))))

(assert (=> d!1164168 (= (rulesInvariant!5438 thiss!20629 rules!2768) e!2429196)))

(declare-fun b!3927172 () Bool)

(declare-datatypes ((List!41820 0))(
  ( (Nil!41696) (Cons!41696 (h!47116 String!47398) (t!325147 List!41820)) )
))
(declare-fun noDuplicateTag!2530 (LexerInterface!6095 List!41818 List!41820) Bool)

(assert (=> b!3927172 (= e!2429196 (noDuplicateTag!2530 thiss!20629 rules!2768 Nil!41696))))

(assert (= (and d!1164168 res!1588873) b!3927172))

(declare-fun m!4491881 () Bool)

(assert (=> d!1164168 m!4491881))

(declare-fun m!4491883 () Bool)

(assert (=> b!3927172 m!4491883))

(assert (=> b!3926623 d!1164168))

(declare-fun b!3927173 () Bool)

(declare-fun e!2429198 () List!41816)

(assert (=> b!3927173 (= e!2429198 suffix!1176)))

(declare-fun b!3927174 () Bool)

(assert (=> b!3927174 (= e!2429198 (Cons!41692 (h!47112 lt!1370464) (++!10769 (t!325047 lt!1370464) suffix!1176)))))

(declare-fun b!3927176 () Bool)

(declare-fun e!2429197 () Bool)

(declare-fun lt!1370702 () List!41816)

(assert (=> b!3927176 (= e!2429197 (or (not (= suffix!1176 Nil!41692)) (= lt!1370702 lt!1370464)))))

(declare-fun d!1164170 () Bool)

(assert (=> d!1164170 e!2429197))

(declare-fun res!1588875 () Bool)

(assert (=> d!1164170 (=> (not res!1588875) (not e!2429197))))

(assert (=> d!1164170 (= res!1588875 (= (content!6276 lt!1370702) ((_ map or) (content!6276 lt!1370464) (content!6276 suffix!1176))))))

(assert (=> d!1164170 (= lt!1370702 e!2429198)))

(declare-fun c!682323 () Bool)

(assert (=> d!1164170 (= c!682323 ((_ is Nil!41692) lt!1370464))))

(assert (=> d!1164170 (= (++!10769 lt!1370464 suffix!1176) lt!1370702)))

(declare-fun b!3927175 () Bool)

(declare-fun res!1588874 () Bool)

(assert (=> b!3927175 (=> (not res!1588874) (not e!2429197))))

(assert (=> b!3927175 (= res!1588874 (= (size!31282 lt!1370702) (+ (size!31282 lt!1370464) (size!31282 suffix!1176))))))

(assert (= (and d!1164170 c!682323) b!3927173))

(assert (= (and d!1164170 (not c!682323)) b!3927174))

(assert (= (and d!1164170 res!1588875) b!3927175))

(assert (= (and b!3927175 res!1588874) b!3927176))

(declare-fun m!4491885 () Bool)

(assert (=> b!3927174 m!4491885))

(declare-fun m!4491887 () Bool)

(assert (=> d!1164170 m!4491887))

(declare-fun m!4491889 () Bool)

(assert (=> d!1164170 m!4491889))

(assert (=> d!1164170 m!4491555))

(declare-fun m!4491891 () Bool)

(assert (=> b!3927175 m!4491891))

(declare-fun m!4491893 () Bool)

(assert (=> b!3927175 m!4491893))

(assert (=> b!3927175 m!4490987))

(assert (=> b!3926607 d!1164170))

(declare-fun b!3927177 () Bool)

(declare-fun e!2429201 () tuple2!40964)

(declare-fun lt!1370704 () Option!8926)

(declare-fun lt!1370705 () tuple2!40964)

(assert (=> b!3927177 (= e!2429201 (tuple2!40965 (Cons!41693 (_1!23615 (v!39251 lt!1370704)) (_1!23616 lt!1370705)) (_2!23616 lt!1370705)))))

(assert (=> b!3927177 (= lt!1370705 (lexList!1863 thiss!20629 rules!2768 (_2!23615 (v!39251 lt!1370704))))))

(declare-fun b!3927178 () Bool)

(assert (=> b!3927178 (= e!2429201 (tuple2!40965 Nil!41693 suffix!1176))))

(declare-fun b!3927179 () Bool)

(declare-fun e!2429200 () Bool)

(declare-fun lt!1370703 () tuple2!40964)

(assert (=> b!3927179 (= e!2429200 (not (isEmpty!24844 (_1!23616 lt!1370703))))))

(declare-fun b!3927180 () Bool)

(declare-fun e!2429199 () Bool)

(assert (=> b!3927180 (= e!2429199 e!2429200)))

(declare-fun res!1588876 () Bool)

(assert (=> b!3927180 (= res!1588876 (< (size!31282 (_2!23616 lt!1370703)) (size!31282 suffix!1176)))))

(assert (=> b!3927180 (=> (not res!1588876) (not e!2429200))))

(declare-fun d!1164172 () Bool)

(assert (=> d!1164172 e!2429199))

(declare-fun c!682324 () Bool)

(assert (=> d!1164172 (= c!682324 (> (size!31284 (_1!23616 lt!1370703)) 0))))

(assert (=> d!1164172 (= lt!1370703 e!2429201)))

(declare-fun c!682325 () Bool)

(assert (=> d!1164172 (= c!682325 ((_ is Some!8925) lt!1370704))))

(assert (=> d!1164172 (= lt!1370704 (maxPrefix!3399 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1164172 (= (lexList!1863 thiss!20629 rules!2768 suffix!1176) lt!1370703)))

(declare-fun b!3927181 () Bool)

(assert (=> b!3927181 (= e!2429199 (= (_2!23616 lt!1370703) suffix!1176))))

(assert (= (and d!1164172 c!682325) b!3927177))

(assert (= (and d!1164172 (not c!682325)) b!3927178))

(assert (= (and d!1164172 c!682324) b!3927180))

(assert (= (and d!1164172 (not c!682324)) b!3927181))

(assert (= (and b!3927180 res!1588876) b!3927179))

(declare-fun m!4491895 () Bool)

(assert (=> b!3927177 m!4491895))

(declare-fun m!4491897 () Bool)

(assert (=> b!3927179 m!4491897))

(declare-fun m!4491899 () Bool)

(assert (=> b!3927180 m!4491899))

(assert (=> b!3927180 m!4490987))

(declare-fun m!4491901 () Bool)

(assert (=> d!1164172 m!4491901))

(declare-fun m!4491903 () Bool)

(assert (=> d!1164172 m!4491903))

(assert (=> b!3926606 d!1164172))

(declare-fun d!1164174 () Bool)

(assert (=> d!1164174 (= (inv!55880 (tag!7366 (rule!9446 (h!47113 prefixTokens!80)))) (= (mod (str.len (value!206054 (tag!7366 (rule!9446 (h!47113 prefixTokens!80))))) 2) 0))))

(assert (=> b!3926626 d!1164174))

(declare-fun d!1164176 () Bool)

(declare-fun res!1588877 () Bool)

(declare-fun e!2429202 () Bool)

(assert (=> d!1164176 (=> (not res!1588877) (not e!2429202))))

(assert (=> d!1164176 (= res!1588877 (semiInverseModEq!2795 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (toValue!8958 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80))))))))

(assert (=> d!1164176 (= (inv!55883 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) e!2429202)))

(declare-fun b!3927182 () Bool)

(assert (=> b!3927182 (= e!2429202 (equivClasses!2694 (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (toValue!8958 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80))))))))

(assert (= (and d!1164176 res!1588877) b!3927182))

(declare-fun m!4491905 () Bool)

(assert (=> d!1164176 m!4491905))

(declare-fun m!4491907 () Bool)

(assert (=> b!3927182 m!4491907))

(assert (=> b!3926626 d!1164176))

(declare-fun d!1164178 () Bool)

(assert (=> d!1164178 (= (isEmpty!24844 lt!1370423) ((_ is Nil!41693) lt!1370423))))

(assert (=> b!3926605 d!1164178))

(declare-fun b!3927196 () Bool)

(declare-fun b_free!107093 () Bool)

(declare-fun b_next!107797 () Bool)

(assert (=> b!3927196 (= b_free!107093 (not b_next!107797))))

(declare-fun tb!234581 () Bool)

(declare-fun t!325123 () Bool)

(assert (=> (and b!3927196 (= (toValue!8958 (transformation!6506 (rule!9446 (h!47113 (t!325048 prefixTokens!80))))) (toValue!8958 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325123) tb!234581))

(declare-fun result!284272 () Bool)

(assert (= result!284272 result!284256))

(assert (=> d!1164130 t!325123))

(declare-fun b_and!299543 () Bool)

(declare-fun tp!1195593 () Bool)

(assert (=> b!3927196 (= tp!1195593 (and (=> t!325123 result!284272) b_and!299543))))

(declare-fun b_free!107095 () Bool)

(declare-fun b_next!107799 () Bool)

(assert (=> b!3927196 (= b_free!107095 (not b_next!107799))))

(declare-fun t!325125 () Bool)

(declare-fun tb!234583 () Bool)

(assert (=> (and b!3927196 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 prefixTokens!80))))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80))))) t!325125) tb!234583))

(declare-fun result!284274 () Bool)

(assert (= result!284274 result!284214))

(assert (=> b!3927054 t!325125))

(declare-fun tb!234585 () Bool)

(declare-fun t!325127 () Bool)

(assert (=> (and b!3927196 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 prefixTokens!80))))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72))))) t!325127) tb!234585))

(declare-fun result!284276 () Bool)

(assert (= result!284276 result!284232))

(assert (=> b!3927088 t!325127))

(declare-fun tb!234587 () Bool)

(declare-fun t!325129 () Bool)

(assert (=> (and b!3927196 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 prefixTokens!80))))) (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325129) tb!234587))

(declare-fun result!284278 () Bool)

(assert (= result!284278 result!284264))

(assert (=> d!1164142 t!325129))

(declare-fun b_and!299545 () Bool)

(declare-fun tp!1195595 () Bool)

(assert (=> b!3927196 (= tp!1195595 (and (=> t!325125 result!284274) (=> t!325127 result!284276) (=> t!325129 result!284278) b_and!299545))))

(declare-fun e!2429220 () Bool)

(declare-fun b!3927195 () Bool)

(declare-fun e!2429216 () Bool)

(declare-fun tp!1195592 () Bool)

(assert (=> b!3927195 (= e!2429216 (and tp!1195592 (inv!55880 (tag!7366 (rule!9446 (h!47113 (t!325048 prefixTokens!80))))) (inv!55883 (transformation!6506 (rule!9446 (h!47113 (t!325048 prefixTokens!80))))) e!2429220))))

(declare-fun e!2429219 () Bool)

(assert (=> b!3926599 (= tp!1195497 e!2429219)))

(declare-fun e!2429217 () Bool)

(declare-fun tp!1195591 () Bool)

(declare-fun b!3927193 () Bool)

(assert (=> b!3927193 (= e!2429219 (and (inv!55884 (h!47113 (t!325048 prefixTokens!80))) e!2429217 tp!1195591))))

(assert (=> b!3927196 (= e!2429220 (and tp!1195593 tp!1195595))))

(declare-fun tp!1195594 () Bool)

(declare-fun b!3927194 () Bool)

(assert (=> b!3927194 (= e!2429217 (and (inv!21 (value!206055 (h!47113 (t!325048 prefixTokens!80)))) e!2429216 tp!1195594))))

(assert (= b!3927195 b!3927196))

(assert (= b!3927194 b!3927195))

(assert (= b!3927193 b!3927194))

(assert (= (and b!3926599 ((_ is Cons!41693) (t!325048 prefixTokens!80))) b!3927193))

(declare-fun m!4491909 () Bool)

(assert (=> b!3927195 m!4491909))

(declare-fun m!4491911 () Bool)

(assert (=> b!3927195 m!4491911))

(declare-fun m!4491913 () Bool)

(assert (=> b!3927193 m!4491913))

(declare-fun m!4491915 () Bool)

(assert (=> b!3927194 m!4491915))

(declare-fun b!3927201 () Bool)

(declare-fun e!2429223 () Bool)

(declare-fun tp!1195598 () Bool)

(assert (=> b!3927201 (= e!2429223 (and tp_is_empty!19793 tp!1195598))))

(assert (=> b!3926598 (= tp!1195493 e!2429223)))

(assert (= (and b!3926598 ((_ is Cons!41692) (t!325047 suffix!1176))) b!3927201))

(declare-fun b!3927205 () Bool)

(declare-fun b_free!107097 () Bool)

(declare-fun b_next!107801 () Bool)

(assert (=> b!3927205 (= b_free!107097 (not b_next!107801))))

(declare-fun t!325131 () Bool)

(declare-fun tb!234589 () Bool)

(assert (=> (and b!3927205 (= (toValue!8958 (transformation!6506 (rule!9446 (h!47113 (t!325048 suffixTokens!72))))) (toValue!8958 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325131) tb!234589))

(declare-fun result!284282 () Bool)

(assert (= result!284282 result!284256))

(assert (=> d!1164130 t!325131))

(declare-fun tp!1195601 () Bool)

(declare-fun b_and!299547 () Bool)

(assert (=> b!3927205 (= tp!1195601 (and (=> t!325131 result!284282) b_and!299547))))

(declare-fun b_free!107099 () Bool)

(declare-fun b_next!107803 () Bool)

(assert (=> b!3927205 (= b_free!107099 (not b_next!107803))))

(declare-fun t!325133 () Bool)

(declare-fun tb!234591 () Bool)

(assert (=> (and b!3927205 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 suffixTokens!72))))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80))))) t!325133) tb!234591))

(declare-fun result!284284 () Bool)

(assert (= result!284284 result!284214))

(assert (=> b!3927054 t!325133))

(declare-fun t!325135 () Bool)

(declare-fun tb!234593 () Bool)

(assert (=> (and b!3927205 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 suffixTokens!72))))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72))))) t!325135) tb!234593))

(declare-fun result!284286 () Bool)

(assert (= result!284286 result!284232))

(assert (=> b!3927088 t!325135))

(declare-fun t!325137 () Bool)

(declare-fun tb!234595 () Bool)

(assert (=> (and b!3927205 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 suffixTokens!72))))) (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325137) tb!234595))

(declare-fun result!284288 () Bool)

(assert (= result!284288 result!284264))

(assert (=> d!1164142 t!325137))

(declare-fun tp!1195603 () Bool)

(declare-fun b_and!299549 () Bool)

(assert (=> b!3927205 (= tp!1195603 (and (=> t!325133 result!284284) (=> t!325135 result!284286) (=> t!325137 result!284288) b_and!299549))))

(declare-fun e!2429225 () Bool)

(declare-fun e!2429229 () Bool)

(declare-fun b!3927204 () Bool)

(declare-fun tp!1195600 () Bool)

(assert (=> b!3927204 (= e!2429225 (and tp!1195600 (inv!55880 (tag!7366 (rule!9446 (h!47113 (t!325048 suffixTokens!72))))) (inv!55883 (transformation!6506 (rule!9446 (h!47113 (t!325048 suffixTokens!72))))) e!2429229))))

(declare-fun e!2429228 () Bool)

(assert (=> b!3926597 (= tp!1195500 e!2429228)))

(declare-fun e!2429226 () Bool)

(declare-fun b!3927202 () Bool)

(declare-fun tp!1195599 () Bool)

(assert (=> b!3927202 (= e!2429228 (and (inv!55884 (h!47113 (t!325048 suffixTokens!72))) e!2429226 tp!1195599))))

(assert (=> b!3927205 (= e!2429229 (and tp!1195601 tp!1195603))))

(declare-fun b!3927203 () Bool)

(declare-fun tp!1195602 () Bool)

(assert (=> b!3927203 (= e!2429226 (and (inv!21 (value!206055 (h!47113 (t!325048 suffixTokens!72)))) e!2429225 tp!1195602))))

(assert (= b!3927204 b!3927205))

(assert (= b!3927203 b!3927204))

(assert (= b!3927202 b!3927203))

(assert (= (and b!3926597 ((_ is Cons!41693) (t!325048 suffixTokens!72))) b!3927202))

(declare-fun m!4491917 () Bool)

(assert (=> b!3927204 m!4491917))

(declare-fun m!4491919 () Bool)

(assert (=> b!3927204 m!4491919))

(declare-fun m!4491921 () Bool)

(assert (=> b!3927202 m!4491921))

(declare-fun m!4491923 () Bool)

(assert (=> b!3927203 m!4491923))

(declare-fun b!3927218 () Bool)

(declare-fun e!2429232 () Bool)

(declare-fun tp!1195618 () Bool)

(assert (=> b!3927218 (= e!2429232 tp!1195618)))

(declare-fun b!3927219 () Bool)

(declare-fun tp!1195614 () Bool)

(declare-fun tp!1195617 () Bool)

(assert (=> b!3927219 (= e!2429232 (and tp!1195614 tp!1195617))))

(declare-fun b!3927217 () Bool)

(declare-fun tp!1195616 () Bool)

(declare-fun tp!1195615 () Bool)

(assert (=> b!3927217 (= e!2429232 (and tp!1195616 tp!1195615))))

(assert (=> b!3926617 (= tp!1195490 e!2429232)))

(declare-fun b!3927216 () Bool)

(assert (=> b!3927216 (= e!2429232 tp_is_empty!19793)))

(assert (= (and b!3926617 ((_ is ElementMatch!11411) (regex!6506 (rule!9446 (h!47113 suffixTokens!72))))) b!3927216))

(assert (= (and b!3926617 ((_ is Concat!18148) (regex!6506 (rule!9446 (h!47113 suffixTokens!72))))) b!3927217))

(assert (= (and b!3926617 ((_ is Star!11411) (regex!6506 (rule!9446 (h!47113 suffixTokens!72))))) b!3927218))

(assert (= (and b!3926617 ((_ is Union!11411) (regex!6506 (rule!9446 (h!47113 suffixTokens!72))))) b!3927219))

(declare-fun b!3927230 () Bool)

(declare-fun b_free!107101 () Bool)

(declare-fun b_next!107805 () Bool)

(assert (=> b!3927230 (= b_free!107101 (not b_next!107805))))

(declare-fun t!325139 () Bool)

(declare-fun tb!234597 () Bool)

(assert (=> (and b!3927230 (= (toValue!8958 (transformation!6506 (h!47114 (t!325049 rules!2768)))) (toValue!8958 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325139) tb!234597))

(declare-fun result!284294 () Bool)

(assert (= result!284294 result!284256))

(assert (=> d!1164130 t!325139))

(declare-fun tp!1195630 () Bool)

(declare-fun b_and!299551 () Bool)

(assert (=> b!3927230 (= tp!1195630 (and (=> t!325139 result!284294) b_and!299551))))

(declare-fun b_free!107103 () Bool)

(declare-fun b_next!107807 () Bool)

(assert (=> b!3927230 (= b_free!107103 (not b_next!107807))))

(declare-fun tb!234599 () Bool)

(declare-fun t!325141 () Bool)

(assert (=> (and b!3927230 (= (toChars!8817 (transformation!6506 (h!47114 (t!325049 rules!2768)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80))))) t!325141) tb!234599))

(declare-fun result!284296 () Bool)

(assert (= result!284296 result!284214))

(assert (=> b!3927054 t!325141))

(declare-fun t!325143 () Bool)

(declare-fun tb!234601 () Bool)

(assert (=> (and b!3927230 (= (toChars!8817 (transformation!6506 (h!47114 (t!325049 rules!2768)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72))))) t!325143) tb!234601))

(declare-fun result!284298 () Bool)

(assert (= result!284298 result!284232))

(assert (=> b!3927088 t!325143))

(declare-fun t!325145 () Bool)

(declare-fun tb!234603 () Bool)

(assert (=> (and b!3927230 (= (toChars!8817 (transformation!6506 (h!47114 (t!325049 rules!2768)))) (toChars!8817 (transformation!6506 (rule!9446 (_1!23615 (v!39251 lt!1370424)))))) t!325145) tb!234603))

(declare-fun result!284300 () Bool)

(assert (= result!284300 result!284264))

(assert (=> d!1164142 t!325145))

(declare-fun b_and!299553 () Bool)

(declare-fun tp!1195628 () Bool)

(assert (=> b!3927230 (= tp!1195628 (and (=> t!325141 result!284296) (=> t!325143 result!284298) (=> t!325145 result!284300) b_and!299553))))

(declare-fun e!2429241 () Bool)

(assert (=> b!3927230 (= e!2429241 (and tp!1195630 tp!1195628))))

(declare-fun e!2429244 () Bool)

(declare-fun tp!1195629 () Bool)

(declare-fun b!3927229 () Bool)

(assert (=> b!3927229 (= e!2429244 (and tp!1195629 (inv!55880 (tag!7366 (h!47114 (t!325049 rules!2768)))) (inv!55883 (transformation!6506 (h!47114 (t!325049 rules!2768)))) e!2429241))))

(declare-fun b!3927228 () Bool)

(declare-fun e!2429243 () Bool)

(declare-fun tp!1195627 () Bool)

(assert (=> b!3927228 (= e!2429243 (and e!2429244 tp!1195627))))

(assert (=> b!3926601 (= tp!1195498 e!2429243)))

(assert (= b!3927229 b!3927230))

(assert (= b!3927228 b!3927229))

(assert (= (and b!3926601 ((_ is Cons!41694) (t!325049 rules!2768))) b!3927228))

(declare-fun m!4491925 () Bool)

(assert (=> b!3927229 m!4491925))

(declare-fun m!4491927 () Bool)

(assert (=> b!3927229 m!4491927))

(declare-fun b!3927233 () Bool)

(declare-fun e!2429245 () Bool)

(declare-fun tp!1195635 () Bool)

(assert (=> b!3927233 (= e!2429245 tp!1195635)))

(declare-fun b!3927234 () Bool)

(declare-fun tp!1195631 () Bool)

(declare-fun tp!1195634 () Bool)

(assert (=> b!3927234 (= e!2429245 (and tp!1195631 tp!1195634))))

(declare-fun b!3927232 () Bool)

(declare-fun tp!1195633 () Bool)

(declare-fun tp!1195632 () Bool)

(assert (=> b!3927232 (= e!2429245 (and tp!1195633 tp!1195632))))

(assert (=> b!3926589 (= tp!1195506 e!2429245)))

(declare-fun b!3927231 () Bool)

(assert (=> b!3927231 (= e!2429245 tp_is_empty!19793)))

(assert (= (and b!3926589 ((_ is ElementMatch!11411) (regex!6506 (h!47114 rules!2768)))) b!3927231))

(assert (= (and b!3926589 ((_ is Concat!18148) (regex!6506 (h!47114 rules!2768)))) b!3927232))

(assert (= (and b!3926589 ((_ is Star!11411) (regex!6506 (h!47114 rules!2768)))) b!3927233))

(assert (= (and b!3926589 ((_ is Union!11411) (regex!6506 (h!47114 rules!2768)))) b!3927234))

(declare-fun b!3927235 () Bool)

(declare-fun e!2429246 () Bool)

(declare-fun tp!1195636 () Bool)

(assert (=> b!3927235 (= e!2429246 (and tp_is_empty!19793 tp!1195636))))

(assert (=> b!3926620 (= tp!1195499 e!2429246)))

(assert (= (and b!3926620 ((_ is Cons!41692) (originalCharacters!7106 (h!47113 suffixTokens!72)))) b!3927235))

(declare-fun b!3927236 () Bool)

(declare-fun e!2429247 () Bool)

(declare-fun tp!1195637 () Bool)

(assert (=> b!3927236 (= e!2429247 (and tp_is_empty!19793 tp!1195637))))

(assert (=> b!3926609 (= tp!1195505 e!2429247)))

(assert (= (and b!3926609 ((_ is Cons!41692) (t!325047 suffixResult!91))) b!3927236))

(declare-fun b!3927237 () Bool)

(declare-fun e!2429248 () Bool)

(declare-fun tp!1195638 () Bool)

(assert (=> b!3927237 (= e!2429248 (and tp_is_empty!19793 tp!1195638))))

(assert (=> b!3926616 (= tp!1195501 e!2429248)))

(assert (= (and b!3926616 ((_ is Cons!41692) (t!325047 prefix!426))) b!3927237))

(declare-fun b!3927240 () Bool)

(declare-fun e!2429249 () Bool)

(declare-fun tp!1195643 () Bool)

(assert (=> b!3927240 (= e!2429249 tp!1195643)))

(declare-fun b!3927241 () Bool)

(declare-fun tp!1195639 () Bool)

(declare-fun tp!1195642 () Bool)

(assert (=> b!3927241 (= e!2429249 (and tp!1195639 tp!1195642))))

(declare-fun b!3927239 () Bool)

(declare-fun tp!1195641 () Bool)

(declare-fun tp!1195640 () Bool)

(assert (=> b!3927239 (= e!2429249 (and tp!1195641 tp!1195640))))

(assert (=> b!3926626 (= tp!1195494 e!2429249)))

(declare-fun b!3927238 () Bool)

(assert (=> b!3927238 (= e!2429249 tp_is_empty!19793)))

(assert (= (and b!3926626 ((_ is ElementMatch!11411) (regex!6506 (rule!9446 (h!47113 prefixTokens!80))))) b!3927238))

(assert (= (and b!3926626 ((_ is Concat!18148) (regex!6506 (rule!9446 (h!47113 prefixTokens!80))))) b!3927239))

(assert (= (and b!3926626 ((_ is Star!11411) (regex!6506 (rule!9446 (h!47113 prefixTokens!80))))) b!3927240))

(assert (= (and b!3926626 ((_ is Union!11411) (regex!6506 (rule!9446 (h!47113 prefixTokens!80))))) b!3927241))

(declare-fun b!3927242 () Bool)

(declare-fun e!2429250 () Bool)

(declare-fun tp!1195644 () Bool)

(assert (=> b!3927242 (= e!2429250 (and tp_is_empty!19793 tp!1195644))))

(assert (=> b!3926615 (= tp!1195495 e!2429250)))

(assert (= (and b!3926615 ((_ is Cons!41692) (originalCharacters!7106 (h!47113 prefixTokens!80)))) b!3927242))

(declare-fun b_lambda!114915 () Bool)

(assert (= b_lambda!114903 (or (and b!3926608 b_free!107071 (= (toChars!8817 (transformation!6506 (h!47114 rules!2768))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))))) (and b!3927205 b_free!107099 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 suffixTokens!72))))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))))) (and b!3927230 b_free!107103 (= (toChars!8817 (transformation!6506 (h!47114 (t!325049 rules!2768)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))))) (and b!3926624 b_free!107079 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))))) (and b!3927196 b_free!107095 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 prefixTokens!80))))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))))) (and b!3926627 b_free!107075) b_lambda!114915)))

(declare-fun b_lambda!114917 () Bool)

(assert (= b_lambda!114905 (or (and b!3926627 b_free!107075 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 prefixTokens!80)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))))) (and b!3926608 b_free!107071 (= (toChars!8817 (transformation!6506 (h!47114 rules!2768))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))))) (and b!3927196 b_free!107095 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 prefixTokens!80))))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))))) (and b!3927230 b_free!107103 (= (toChars!8817 (transformation!6506 (h!47114 (t!325049 rules!2768)))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))))) (and b!3927205 b_free!107099 (= (toChars!8817 (transformation!6506 (rule!9446 (h!47113 (t!325048 suffixTokens!72))))) (toChars!8817 (transformation!6506 (rule!9446 (h!47113 suffixTokens!72)))))) (and b!3926624 b_free!107079) b_lambda!114917)))

(check-sat (not b!3927177) (not b!3927096) (not b!3927092) (not d!1164030) (not b!3927139) b_and!299545 (not b!3927204) (not d!1164074) (not b!3927162) (not b!3926963) (not b!3927234) (not b!3927076) (not bm!284726) (not d!1164108) (not d!1164128) (not d!1164170) (not b_next!107779) (not b!3927239) (not d!1164004) (not b!3926967) (not d!1164064) (not b_lambda!114917) (not b!3927117) (not b_next!107803) b_and!299531 (not b!3926703) (not d!1164140) (not b!3927024) (not d!1164052) (not b!3926975) (not b!3927068) (not b!3927242) (not b!3926643) (not b!3927140) (not b!3926960) (not b!3926897) (not b!3927218) (not b!3927232) (not b!3926974) b_and!299541 (not b!3927118) (not b!3926885) (not b_next!107799) (not tb!234547) (not d!1164078) (not b!3926970) (not b!3927193) (not b_next!107783) (not tb!234575) (not d!1164136) (not d!1164096) (not b!3927142) (not b!3927233) (not b!3927240) (not tb!234533) b_and!299537 (not d!1164162) (not b!3926706) (not d!1164152) (not b!3926642) (not b_next!107777) (not b_next!107781) (not b!3927194) (not d!1164068) (not b!3927182) (not b!3927147) (not d!1164172) b_and!299551 (not b!3926705) (not b!3926968) (not b!3927180) (not b_next!107797) (not b!3927150) (not d!1164168) b_and!299553 (not b!3927175) (not d!1164072) (not b!3927228) (not b!3927116) (not b!3927006) (not d!1164144) (not b!3927005) (not b!3926815) (not d!1164112) (not d!1164142) (not b!3926944) (not b!3926948) (not b!3927022) (not b!3926820) (not d!1164156) (not b!3926816) b_and!299543 (not b!3926882) (not b!3926883) (not d!1164116) (not b!3926950) (not d!1163910) (not d!1163900) (not b_lambda!114913) (not d!1164150) (not b!3926966) b_and!299539 (not b!3927151) (not b!3927123) (not d!1164080) (not b_next!107775) (not tb!234569) (not d!1164120) (not b!3927145) (not d!1164132) (not b!3927172) b_and!299535 (not b!3927167) (not b!3927143) (not b!3926943) (not b!3926817) (not b!3927154) (not d!1164062) (not b!3927219) (not b_next!107807) tp_is_empty!19793 (not b_next!107805) (not b!3926951) (not b!3926927) (not b!3927169) (not b!3926818) (not b_lambda!114911) (not b!3927241) (not b!3927075) (not b!3926813) (not d!1164122) (not b!3927088) (not b!3927237) (not b!3926898) (not d!1164176) (not b!3927074) (not b!3927179) (not b!3926928) (not d!1164160) (not d!1164114) b_and!299533 (not b!3926644) (not d!1164076) (not b!3926884) b_and!299549 (not d!1164060) (not b!3927120) (not b!3927148) (not b_next!107773) (not d!1164034) (not b!3926888) (not b!3927235) (not b!3926890) (not d!1164146) (not b!3926962) (not b!3926971) (not b_next!107801) (not d!1163992) (not b!3926814) (not d!1163936) (not d!1164084) (not b!3927161) (not b!3927203) (not b!3927195) (not b!3926812) (not b!3927021) (not b!3927229) (not b!3927122) (not b!3927236) (not b!3926957) (not b!3927159) (not b!3926886) (not d!1164154) (not b_lambda!114915) b_and!299547 (not b!3927164) (not b!3926895) (not b!3927055) (not b!3926889) (not b!3927054) (not b!3926713) (not d!1164138) (not b!3926811) (not d!1163904) (not b!3927089) (not b!3927138) (not b!3927202) (not b!3927217) (not b!3927174) (not b!3927201))
(check-sat b_and!299545 (not b_next!107779) b_and!299541 (not b_next!107799) (not b_next!107783) b_and!299537 b_and!299551 (not b_next!107797) b_and!299553 b_and!299543 b_and!299535 b_and!299533 (not b_next!107801) b_and!299547 (not b_next!107803) b_and!299531 (not b_next!107777) (not b_next!107781) (not b_next!107775) b_and!299539 (not b_next!107805) (not b_next!107807) b_and!299549 (not b_next!107773))
