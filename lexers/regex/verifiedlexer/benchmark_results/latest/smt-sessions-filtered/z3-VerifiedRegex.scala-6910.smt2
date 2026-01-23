; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364156 () Bool)

(assert start!364156)

(declare-fun b!3879344 () Bool)

(declare-fun b_free!105013 () Bool)

(declare-fun b_next!105717 () Bool)

(assert (=> b!3879344 (= b_free!105013 (not b_next!105717))))

(declare-fun tp!1176007 () Bool)

(declare-fun b_and!290907 () Bool)

(assert (=> b!3879344 (= tp!1176007 b_and!290907)))

(declare-fun b_free!105015 () Bool)

(declare-fun b_next!105719 () Bool)

(assert (=> b!3879344 (= b_free!105015 (not b_next!105719))))

(declare-fun tp!1176015 () Bool)

(declare-fun b_and!290909 () Bool)

(assert (=> b!3879344 (= tp!1176015 b_and!290909)))

(declare-fun b!3879336 () Bool)

(declare-fun b_free!105017 () Bool)

(declare-fun b_next!105721 () Bool)

(assert (=> b!3879336 (= b_free!105017 (not b_next!105721))))

(declare-fun tp!1176013 () Bool)

(declare-fun b_and!290911 () Bool)

(assert (=> b!3879336 (= tp!1176013 b_and!290911)))

(declare-fun b_free!105019 () Bool)

(declare-fun b_next!105723 () Bool)

(assert (=> b!3879336 (= b_free!105019 (not b_next!105723))))

(declare-fun tp!1176006 () Bool)

(declare-fun b_and!290913 () Bool)

(assert (=> b!3879336 (= tp!1176006 b_and!290913)))

(declare-fun b!3879331 () Bool)

(declare-fun b_free!105021 () Bool)

(declare-fun b_next!105725 () Bool)

(assert (=> b!3879331 (= b_free!105021 (not b_next!105725))))

(declare-fun tp!1176002 () Bool)

(declare-fun b_and!290915 () Bool)

(assert (=> b!3879331 (= tp!1176002 b_and!290915)))

(declare-fun b_free!105023 () Bool)

(declare-fun b_next!105727 () Bool)

(assert (=> b!3879331 (= b_free!105023 (not b_next!105727))))

(declare-fun tp!1176008 () Bool)

(declare-fun b_and!290917 () Bool)

(assert (=> b!3879331 (= tp!1176008 b_and!290917)))

(declare-fun b!3879303 () Bool)

(declare-fun e!2400340 () Bool)

(declare-fun e!2400357 () Bool)

(assert (=> b!3879303 (= e!2400340 e!2400357)))

(declare-fun res!1572013 () Bool)

(assert (=> b!3879303 (=> res!1572013 e!2400357)))

(declare-datatypes ((C!22812 0))(
  ( (C!22813 (val!13500 Int)) )
))
(declare-datatypes ((List!41376 0))(
  ( (Nil!41252) (Cons!41252 (h!46672 C!22812) (t!315115 List!41376)) )
))
(declare-fun lt!1353775 () List!41376)

(declare-fun prefix!426 () List!41376)

(assert (=> b!3879303 (= res!1572013 (not (= lt!1353775 prefix!426)))))

(declare-fun lt!1353763 () List!41376)

(declare-fun lt!1353749 () List!41376)

(declare-fun ++!10573 (List!41376 List!41376) List!41376)

(assert (=> b!3879303 (= lt!1353775 (++!10573 lt!1353763 lt!1353749))))

(declare-fun getSuffix!1962 (List!41376 List!41376) List!41376)

(assert (=> b!3879303 (= lt!1353749 (getSuffix!1962 prefix!426 lt!1353763))))

(declare-fun b!3879304 () Bool)

(declare-fun e!2400349 () Bool)

(declare-fun tp_is_empty!19597 () Bool)

(declare-fun tp!1176014 () Bool)

(assert (=> b!3879304 (= e!2400349 (and tp_is_empty!19597 tp!1176014))))

(declare-fun b!3879305 () Bool)

(declare-datatypes ((Unit!59328 0))(
  ( (Unit!59329) )
))
(declare-fun e!2400358 () Unit!59328)

(declare-fun Unit!59330 () Unit!59328)

(assert (=> b!3879305 (= e!2400358 Unit!59330)))

(declare-datatypes ((List!41377 0))(
  ( (Nil!41253) (Cons!41253 (h!46673 (_ BitVec 16)) (t!315116 List!41377)) )
))
(declare-datatypes ((TokenValue!6638 0))(
  ( (FloatLiteralValue!13276 (text!46911 List!41377)) (TokenValueExt!6637 (__x!25493 Int)) (Broken!33190 (value!203236 List!41377)) (Object!6761) (End!6638) (Def!6638) (Underscore!6638) (Match!6638) (Else!6638) (Error!6638) (Case!6638) (If!6638) (Extends!6638) (Abstract!6638) (Class!6638) (Val!6638) (DelimiterValue!13276 (del!6698 List!41377)) (KeywordValue!6644 (value!203237 List!41377)) (CommentValue!13276 (value!203238 List!41377)) (WhitespaceValue!13276 (value!203239 List!41377)) (IndentationValue!6638 (value!203240 List!41377)) (String!46907) (Int32!6638) (Broken!33191 (value!203241 List!41377)) (Boolean!6639) (Unit!59331) (OperatorValue!6641 (op!6698 List!41377)) (IdentifierValue!13276 (value!203242 List!41377)) (IdentifierValue!13277 (value!203243 List!41377)) (WhitespaceValue!13277 (value!203244 List!41377)) (True!13276) (False!13276) (Broken!33192 (value!203245 List!41377)) (Broken!33193 (value!203246 List!41377)) (True!13277) (RightBrace!6638) (RightBracket!6638) (Colon!6638) (Null!6638) (Comma!6638) (LeftBracket!6638) (False!13277) (LeftBrace!6638) (ImaginaryLiteralValue!6638 (text!46912 List!41377)) (StringLiteralValue!19914 (value!203247 List!41377)) (EOFValue!6638 (value!203248 List!41377)) (IdentValue!6638 (value!203249 List!41377)) (DelimiterValue!13277 (value!203250 List!41377)) (DedentValue!6638 (value!203251 List!41377)) (NewLineValue!6638 (value!203252 List!41377)) (IntegerValue!19914 (value!203253 (_ BitVec 32)) (text!46913 List!41377)) (IntegerValue!19915 (value!203254 Int) (text!46914 List!41377)) (Times!6638) (Or!6638) (Equal!6638) (Minus!6638) (Broken!33194 (value!203255 List!41377)) (And!6638) (Div!6638) (LessEqual!6638) (Mod!6638) (Concat!17951) (Not!6638) (Plus!6638) (SpaceValue!6638 (value!203256 List!41377)) (IntegerValue!19916 (value!203257 Int) (text!46915 List!41377)) (StringLiteralValue!19915 (text!46916 List!41377)) (FloatLiteralValue!13277 (text!46917 List!41377)) (BytesLiteralValue!6638 (value!203258 List!41377)) (CommentValue!13277 (value!203259 List!41377)) (StringLiteralValue!19916 (value!203260 List!41377)) (ErrorTokenValue!6638 (msg!6699 List!41377)) )
))
(declare-datatypes ((Regex!11313 0))(
  ( (ElementMatch!11313 (c!674826 C!22812)) (Concat!17952 (regOne!23138 Regex!11313) (regTwo!23138 Regex!11313)) (EmptyExpr!11313) (Star!11313 (reg!11642 Regex!11313)) (EmptyLang!11313) (Union!11313 (regOne!23139 Regex!11313) (regTwo!23139 Regex!11313)) )
))
(declare-datatypes ((String!46908 0))(
  ( (String!46909 (value!203261 String)) )
))
(declare-datatypes ((IArray!25243 0))(
  ( (IArray!25244 (innerList!12679 List!41376)) )
))
(declare-datatypes ((Conc!12619 0))(
  ( (Node!12619 (left!31649 Conc!12619) (right!31979 Conc!12619) (csize!25468 Int) (cheight!12830 Int)) (Leaf!19530 (xs!15925 IArray!25243) (csize!25469 Int)) (Empty!12619) )
))
(declare-datatypes ((BalanceConc!24832 0))(
  ( (BalanceConc!24833 (c!674827 Conc!12619)) )
))
(declare-datatypes ((TokenValueInjection!12704 0))(
  ( (TokenValueInjection!12705 (toValue!8836 Int) (toChars!8695 Int)) )
))
(declare-datatypes ((Rule!12616 0))(
  ( (Rule!12617 (regex!6408 Regex!11313) (tag!7268 String!46908) (isSeparator!6408 Bool) (transformation!6408 TokenValueInjection!12704)) )
))
(declare-datatypes ((Token!11954 0))(
  ( (Token!11955 (value!203262 TokenValue!6638) (rule!9306 Rule!12616) (size!30989 Int) (originalCharacters!7008 List!41376)) )
))
(declare-datatypes ((tuple2!40486 0))(
  ( (tuple2!40487 (_1!23377 Token!11954) (_2!23377 List!41376)) )
))
(declare-datatypes ((Option!8826 0))(
  ( (None!8825) (Some!8825 (v!39123 tuple2!40486)) )
))
(declare-fun lt!1353761 () Option!8826)

(declare-fun lt!1353743 () Unit!59328)

(declare-fun lt!1353769 () tuple2!40486)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!492 (List!41376 List!41376 List!41376 List!41376) Unit!59328)

(assert (=> b!3879305 (= lt!1353743 (lemmaConcatSameAndSameSizesThenSameLists!492 lt!1353763 (_2!23377 (v!39123 lt!1353761)) lt!1353763 (_2!23377 lt!1353769)))))

(assert (=> b!3879305 (= (_2!23377 (v!39123 lt!1353761)) (_2!23377 lt!1353769))))

(declare-datatypes ((LexerInterface!5997 0))(
  ( (LexerInterfaceExt!5994 (__x!25494 Int)) (Lexer!5995) )
))
(declare-fun thiss!20629 () LexerInterface!5997)

(declare-fun suffix!1176 () List!41376)

(declare-datatypes ((List!41378 0))(
  ( (Nil!41254) (Cons!41254 (h!46674 Rule!12616) (t!315117 List!41378)) )
))
(declare-fun rules!2768 () List!41378)

(declare-datatypes ((List!41379 0))(
  ( (Nil!41255) (Cons!41255 (h!46675 Token!11954) (t!315118 List!41379)) )
))
(declare-fun suffixTokens!72 () List!41379)

(declare-fun lt!1353738 () Unit!59328)

(declare-fun suffixResult!91 () List!41376)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!68 (LexerInterface!5997 List!41378 List!41376 List!41376 List!41379 List!41376) Unit!59328)

(assert (=> b!3879305 (= lt!1353738 (lemmaLexWithSmallerInputCannotProduceSameResults!68 thiss!20629 rules!2768 suffix!1176 (_2!23377 lt!1353769) suffixTokens!72 suffixResult!91))))

(declare-fun res!1572029 () Bool)

(declare-datatypes ((tuple2!40488 0))(
  ( (tuple2!40489 (_1!23378 List!41379) (_2!23378 List!41376)) )
))
(declare-fun call!282854 () tuple2!40488)

(declare-fun lt!1353781 () tuple2!40488)

(assert (=> b!3879305 (= res!1572029 (not (= call!282854 lt!1353781)))))

(declare-fun e!2400371 () Bool)

(assert (=> b!3879305 (=> (not res!1572029) (not e!2400371))))

(assert (=> b!3879305 e!2400371))

(declare-fun b!3879306 () Bool)

(declare-fun e!2400365 () Bool)

(declare-fun e!2400343 () Bool)

(assert (=> b!3879306 (= e!2400365 e!2400343)))

(declare-fun res!1572020 () Bool)

(assert (=> b!3879306 (=> (not res!1572020) (not e!2400343))))

(declare-fun lt!1353764 () List!41379)

(declare-fun lt!1353757 () tuple2!40488)

(assert (=> b!3879306 (= res!1572020 (= lt!1353757 (tuple2!40489 lt!1353764 suffixResult!91)))))

(declare-fun lt!1353752 () List!41376)

(declare-fun lexList!1765 (LexerInterface!5997 List!41378 List!41376) tuple2!40488)

(assert (=> b!3879306 (= lt!1353757 (lexList!1765 thiss!20629 rules!2768 lt!1353752))))

(declare-fun prefixTokens!80 () List!41379)

(declare-fun ++!10574 (List!41379 List!41379) List!41379)

(assert (=> b!3879306 (= lt!1353764 (++!10574 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3879306 (= lt!1353752 (++!10573 prefix!426 suffix!1176))))

(declare-fun tp!1176003 () Bool)

(declare-fun e!2400370 () Bool)

(declare-fun b!3879307 () Bool)

(declare-fun e!2400336 () Bool)

(declare-fun inv!21 (TokenValue!6638) Bool)

(assert (=> b!3879307 (= e!2400336 (and (inv!21 (value!203262 (h!46675 suffixTokens!72))) e!2400370 tp!1176003))))

(declare-fun b!3879308 () Bool)

(declare-fun e!2400337 () Bool)

(assert (=> b!3879308 (= e!2400337 e!2400340)))

(declare-fun res!1572028 () Bool)

(assert (=> b!3879308 (=> res!1572028 e!2400340)))

(declare-fun lt!1353779 () Int)

(declare-fun lt!1353753 () Int)

(assert (=> b!3879308 (= res!1572028 (>= lt!1353779 lt!1353753))))

(declare-fun size!30990 (List!41376) Int)

(assert (=> b!3879308 (= lt!1353753 (size!30990 prefix!426))))

(declare-fun isPrefix!3507 (List!41376 List!41376) Bool)

(assert (=> b!3879308 (isPrefix!3507 lt!1353763 prefix!426)))

(declare-fun lt!1353754 () Unit!59328)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!257 (List!41376 List!41376 List!41376) Unit!59328)

(assert (=> b!3879308 (= lt!1353754 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!257 prefix!426 lt!1353763 lt!1353752))))

(assert (=> b!3879308 (isPrefix!3507 prefix!426 lt!1353752)))

(declare-fun lt!1353785 () Unit!59328)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2370 (List!41376 List!41376) Unit!59328)

(assert (=> b!3879308 (= lt!1353785 (lemmaConcatTwoListThenFirstIsPrefix!2370 prefix!426 suffix!1176))))

(declare-fun tp!1176011 () Bool)

(declare-fun b!3879309 () Bool)

(declare-fun e!2400338 () Bool)

(declare-fun inv!55408 (Token!11954) Bool)

(assert (=> b!3879309 (= e!2400338 (and (inv!55408 (h!46675 suffixTokens!72)) e!2400336 tp!1176011))))

(declare-fun b!3879310 () Bool)

(declare-fun e!2400378 () Bool)

(assert (=> b!3879310 (= e!2400343 e!2400378)))

(declare-fun res!1572031 () Bool)

(assert (=> b!3879310 (=> (not res!1572031) (not e!2400378))))

(assert (=> b!3879310 (= res!1572031 (= (lexList!1765 thiss!20629 rules!2768 suffix!1176) lt!1353781))))

(assert (=> b!3879310 (= lt!1353781 (tuple2!40489 suffixTokens!72 suffixResult!91))))

(declare-fun b!3879311 () Bool)

(declare-fun e!2400373 () Bool)

(declare-fun e!2400351 () Bool)

(assert (=> b!3879311 (= e!2400373 e!2400351)))

(declare-fun res!1572023 () Bool)

(assert (=> b!3879311 (=> res!1572023 e!2400351)))

(declare-fun lt!1353746 () tuple2!40488)

(declare-fun lt!1353773 () tuple2!40488)

(assert (=> b!3879311 (= res!1572023 (not (= lt!1353746 lt!1353773)))))

(declare-fun lt!1353777 () List!41379)

(assert (=> b!3879311 (= lt!1353773 (tuple2!40489 lt!1353777 suffixResult!91))))

(declare-fun lt!1353740 () List!41379)

(assert (=> b!3879311 (= lt!1353777 (++!10574 lt!1353740 suffixTokens!72))))

(declare-fun tail!5953 (List!41379) List!41379)

(assert (=> b!3879311 (= lt!1353740 (tail!5953 prefixTokens!80))))

(declare-fun lt!1353784 () List!41376)

(assert (=> b!3879311 (isPrefix!3507 lt!1353749 lt!1353784)))

(declare-fun lt!1353760 () Unit!59328)

(assert (=> b!3879311 (= lt!1353760 (lemmaConcatTwoListThenFirstIsPrefix!2370 lt!1353749 suffix!1176))))

(declare-fun b!3879312 () Bool)

(declare-fun e!2400360 () Bool)

(declare-fun e!2400354 () Bool)

(declare-fun tp!1176005 () Bool)

(assert (=> b!3879312 (= e!2400360 (and e!2400354 tp!1176005))))

(declare-fun b!3879313 () Bool)

(declare-fun res!1572030 () Bool)

(assert (=> b!3879313 (=> (not res!1572030) (not e!2400365))))

(declare-fun isEmpty!24496 (List!41379) Bool)

(assert (=> b!3879313 (= res!1572030 (not (isEmpty!24496 prefixTokens!80)))))

(declare-fun b!3879314 () Bool)

(declare-fun e!2400348 () Bool)

(declare-fun e!2400352 () Bool)

(assert (=> b!3879314 (= e!2400348 (not e!2400352))))

(declare-fun res!1572014 () Bool)

(assert (=> b!3879314 (=> res!1572014 e!2400352)))

(declare-fun lt!1353751 () List!41376)

(assert (=> b!3879314 (= res!1572014 (not (= lt!1353751 lt!1353752)))))

(assert (=> b!3879314 (= lt!1353746 (lexList!1765 thiss!20629 rules!2768 (_2!23377 (v!39123 lt!1353761))))))

(declare-fun lt!1353793 () TokenValue!6638)

(declare-fun lt!1353792 () List!41376)

(assert (=> b!3879314 (and (= (size!30989 (_1!23377 (v!39123 lt!1353761))) lt!1353779) (= (originalCharacters!7008 (_1!23377 (v!39123 lt!1353761))) lt!1353763) (= (tuple2!40487 (_1!23377 (v!39123 lt!1353761)) (_2!23377 (v!39123 lt!1353761))) (tuple2!40487 (Token!11955 lt!1353793 (rule!9306 (_1!23377 (v!39123 lt!1353761))) lt!1353779 lt!1353763) lt!1353792)))))

(assert (=> b!3879314 (= lt!1353779 (size!30990 lt!1353763))))

(declare-fun e!2400369 () Bool)

(assert (=> b!3879314 e!2400369))

(declare-fun res!1572003 () Bool)

(assert (=> b!3879314 (=> (not res!1572003) (not e!2400369))))

(assert (=> b!3879314 (= res!1572003 (= (value!203262 (_1!23377 (v!39123 lt!1353761))) lt!1353793))))

(declare-fun apply!9651 (TokenValueInjection!12704 BalanceConc!24832) TokenValue!6638)

(declare-fun seqFromList!4679 (List!41376) BalanceConc!24832)

(assert (=> b!3879314 (= lt!1353793 (apply!9651 (transformation!6408 (rule!9306 (_1!23377 (v!39123 lt!1353761)))) (seqFromList!4679 lt!1353763)))))

(assert (=> b!3879314 (= (_2!23377 (v!39123 lt!1353761)) lt!1353792)))

(declare-fun lt!1353745 () Unit!59328)

(declare-fun lemmaSamePrefixThenSameSuffix!1728 (List!41376 List!41376 List!41376 List!41376 List!41376) Unit!59328)

(assert (=> b!3879314 (= lt!1353745 (lemmaSamePrefixThenSameSuffix!1728 lt!1353763 (_2!23377 (v!39123 lt!1353761)) lt!1353763 lt!1353792 lt!1353752))))

(assert (=> b!3879314 (= lt!1353792 (getSuffix!1962 lt!1353752 lt!1353763))))

(assert (=> b!3879314 (isPrefix!3507 lt!1353763 lt!1353751)))

(assert (=> b!3879314 (= lt!1353751 (++!10573 lt!1353763 (_2!23377 (v!39123 lt!1353761))))))

(declare-fun lt!1353787 () Unit!59328)

(assert (=> b!3879314 (= lt!1353787 (lemmaConcatTwoListThenFirstIsPrefix!2370 lt!1353763 (_2!23377 (v!39123 lt!1353761))))))

(declare-fun list!15338 (BalanceConc!24832) List!41376)

(declare-fun charsOf!4236 (Token!11954) BalanceConc!24832)

(assert (=> b!3879314 (= lt!1353763 (list!15338 (charsOf!4236 (_1!23377 (v!39123 lt!1353761)))))))

(declare-fun ruleValid!2360 (LexerInterface!5997 Rule!12616) Bool)

(assert (=> b!3879314 (ruleValid!2360 thiss!20629 (rule!9306 (_1!23377 (v!39123 lt!1353761))))))

(declare-fun lt!1353748 () Unit!59328)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1440 (LexerInterface!5997 Rule!12616 List!41378) Unit!59328)

(assert (=> b!3879314 (= lt!1353748 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1440 thiss!20629 (rule!9306 (_1!23377 (v!39123 lt!1353761))) rules!2768))))

(declare-fun lt!1353742 () Unit!59328)

(declare-fun lemmaCharactersSize!1069 (Token!11954) Unit!59328)

(assert (=> b!3879314 (= lt!1353742 (lemmaCharactersSize!1069 (_1!23377 (v!39123 lt!1353761))))))

(declare-fun b!3879315 () Bool)

(declare-fun res!1572026 () Bool)

(assert (=> b!3879315 (=> res!1572026 e!2400337)))

(declare-fun head!8236 (List!41379) Token!11954)

(assert (=> b!3879315 (= res!1572026 (not (= (head!8236 prefixTokens!80) (_1!23377 (v!39123 lt!1353761)))))))

(declare-fun b!3879316 () Bool)

(declare-fun res!1572015 () Bool)

(assert (=> b!3879316 (=> (not res!1572015) (not e!2400365))))

(declare-fun rulesInvariant!5340 (LexerInterface!5997 List!41378) Bool)

(assert (=> b!3879316 (= res!1572015 (rulesInvariant!5340 thiss!20629 rules!2768))))

(declare-fun b!3879317 () Bool)

(declare-fun e!2400375 () Unit!59328)

(declare-fun Unit!59332 () Unit!59328)

(assert (=> b!3879317 (= e!2400375 Unit!59332)))

(declare-fun lt!1353776 () Unit!59328)

(assert (=> b!3879317 (= lt!1353776 (lemmaConcatTwoListThenFirstIsPrefix!2370 prefix!426 suffix!1176))))

(assert (=> b!3879317 (isPrefix!3507 prefix!426 lt!1353752)))

(declare-fun lt!1353765 () Unit!59328)

(declare-fun lemmaIsPrefixSameLengthThenSameList!759 (List!41376 List!41376 List!41376) Unit!59328)

(assert (=> b!3879317 (= lt!1353765 (lemmaIsPrefixSameLengthThenSameList!759 lt!1353763 prefix!426 lt!1353752))))

(assert (=> b!3879317 (= lt!1353763 prefix!426)))

(declare-fun lt!1353750 () Unit!59328)

(assert (=> b!3879317 (= lt!1353750 (lemmaSamePrefixThenSameSuffix!1728 lt!1353763 (_2!23377 (v!39123 lt!1353761)) prefix!426 suffix!1176 lt!1353752))))

(assert (=> b!3879317 false))

(declare-fun b!3879318 () Bool)

(declare-fun Unit!59333 () Unit!59328)

(assert (=> b!3879318 (= e!2400375 Unit!59333)))

(declare-fun b!3879319 () Bool)

(declare-fun Unit!59334 () Unit!59328)

(assert (=> b!3879319 (= e!2400358 Unit!59334)))

(declare-fun lt!1353772 () Unit!59328)

(declare-fun lt!1353780 () List!41379)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!68 (LexerInterface!5997 List!41378 List!41376 List!41376 List!41379 List!41376 List!41379) Unit!59328)

(assert (=> b!3879319 (= lt!1353772 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!68 thiss!20629 rules!2768 suffix!1176 (_2!23377 lt!1353769) suffixTokens!72 suffixResult!91 lt!1353780))))

(declare-fun res!1572009 () Bool)

(assert (=> b!3879319 (= res!1572009 (not (= call!282854 (tuple2!40489 (++!10574 lt!1353780 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2400345 () Bool)

(assert (=> b!3879319 (=> (not res!1572009) (not e!2400345))))

(assert (=> b!3879319 e!2400345))

(declare-fun b!3879320 () Bool)

(declare-fun e!2400344 () Unit!59328)

(declare-fun Unit!59335 () Unit!59328)

(assert (=> b!3879320 (= e!2400344 Unit!59335)))

(declare-fun b!3879321 () Bool)

(declare-fun e!2400374 () Bool)

(assert (=> b!3879321 (= e!2400374 e!2400373)))

(declare-fun res!1572022 () Bool)

(assert (=> b!3879321 (=> res!1572022 e!2400373)))

(assert (=> b!3879321 (= res!1572022 (not (= lt!1353784 (_2!23377 (v!39123 lt!1353761)))))))

(assert (=> b!3879321 (= (_2!23377 (v!39123 lt!1353761)) lt!1353784)))

(declare-fun lt!1353778 () Unit!59328)

(assert (=> b!3879321 (= lt!1353778 (lemmaSamePrefixThenSameSuffix!1728 lt!1353763 (_2!23377 (v!39123 lt!1353761)) lt!1353763 lt!1353784 lt!1353752))))

(declare-fun lt!1353788 () List!41376)

(assert (=> b!3879321 (isPrefix!3507 lt!1353763 lt!1353788)))

(declare-fun lt!1353747 () Unit!59328)

(assert (=> b!3879321 (= lt!1353747 (lemmaConcatTwoListThenFirstIsPrefix!2370 lt!1353763 lt!1353784))))

(declare-fun b!3879322 () Bool)

(declare-fun e!2400366 () Unit!59328)

(declare-fun Unit!59336 () Unit!59328)

(assert (=> b!3879322 (= e!2400366 Unit!59336)))

(declare-fun e!2400361 () Bool)

(declare-fun tp!1176017 () Bool)

(declare-fun e!2400359 () Bool)

(declare-fun b!3879323 () Bool)

(assert (=> b!3879323 (= e!2400361 (and (inv!55408 (h!46675 prefixTokens!80)) e!2400359 tp!1176017))))

(declare-fun b!3879324 () Bool)

(assert (=> b!3879324 (= e!2400378 e!2400348)))

(declare-fun res!1572001 () Bool)

(assert (=> b!3879324 (=> (not res!1572001) (not e!2400348))))

(get-info :version)

(assert (=> b!3879324 (= res!1572001 ((_ is Some!8825) lt!1353761))))

(declare-fun maxPrefix!3301 (LexerInterface!5997 List!41378 List!41376) Option!8826)

(assert (=> b!3879324 (= lt!1353761 (maxPrefix!3301 thiss!20629 rules!2768 lt!1353752))))

(declare-fun b!3879325 () Bool)

(declare-fun e!2400377 () Bool)

(assert (=> b!3879325 (= e!2400351 e!2400377)))

(declare-fun res!1572007 () Bool)

(assert (=> b!3879325 (=> res!1572007 e!2400377)))

(declare-fun lt!1353762 () List!41379)

(assert (=> b!3879325 (= res!1572007 (not (= lt!1353762 lt!1353764)))))

(declare-fun lt!1353770 () List!41379)

(assert (=> b!3879325 (= lt!1353762 (++!10574 lt!1353770 lt!1353777))))

(assert (=> b!3879325 (= lt!1353762 (++!10574 (++!10574 lt!1353770 lt!1353740) suffixTokens!72))))

(declare-fun lt!1353739 () Unit!59328)

(declare-fun lemmaConcatAssociativity!2287 (List!41379 List!41379 List!41379) Unit!59328)

(assert (=> b!3879325 (= lt!1353739 (lemmaConcatAssociativity!2287 lt!1353770 lt!1353740 suffixTokens!72))))

(declare-fun lt!1353783 () Unit!59328)

(assert (=> b!3879325 (= lt!1353783 e!2400344)))

(declare-fun c!674822 () Bool)

(assert (=> b!3879325 (= c!674822 (isEmpty!24496 lt!1353740))))

(declare-fun b!3879326 () Bool)

(declare-fun res!1572018 () Bool)

(declare-fun e!2400368 () Bool)

(assert (=> b!3879326 (=> res!1572018 e!2400368)))

(assert (=> b!3879326 (= res!1572018 (not (isPrefix!3507 lt!1353749 (_2!23377 (v!39123 lt!1353761)))))))

(declare-fun b!3879327 () Bool)

(declare-fun e!2400334 () Bool)

(declare-fun tp!1176009 () Bool)

(assert (=> b!3879327 (= e!2400334 (and tp_is_empty!19597 tp!1176009))))

(declare-fun b!3879328 () Bool)

(assert (=> b!3879328 (= e!2400345 false)))

(declare-fun b!3879329 () Bool)

(declare-fun e!2400342 () Bool)

(assert (=> b!3879329 (= e!2400352 e!2400342)))

(declare-fun res!1572006 () Bool)

(assert (=> b!3879329 (=> res!1572006 e!2400342)))

(assert (=> b!3879329 (= res!1572006 (not (= lt!1353757 (tuple2!40489 (++!10574 lt!1353770 (_1!23378 lt!1353746)) (_2!23378 lt!1353746)))))))

(assert (=> b!3879329 (= lt!1353770 (Cons!41255 (_1!23377 (v!39123 lt!1353761)) Nil!41255))))

(declare-fun b!3879330 () Bool)

(declare-fun res!1572017 () Bool)

(assert (=> b!3879330 (=> (not res!1572017) (not e!2400365))))

(declare-fun isEmpty!24497 (List!41376) Bool)

(assert (=> b!3879330 (= res!1572017 (not (isEmpty!24497 prefix!426)))))

(declare-fun e!2400364 () Bool)

(assert (=> b!3879331 (= e!2400364 (and tp!1176002 tp!1176008))))

(declare-fun b!3879332 () Bool)

(declare-fun res!1572008 () Bool)

(assert (=> b!3879332 (=> res!1572008 e!2400342)))

(assert (=> b!3879332 (= res!1572008 (or (not (= lt!1353746 (tuple2!40489 (_1!23378 lt!1353746) (_2!23378 lt!1353746)))) (= (_2!23377 (v!39123 lt!1353761)) suffix!1176)))))

(declare-fun res!1572025 () Bool)

(assert (=> start!364156 (=> (not res!1572025) (not e!2400365))))

(assert (=> start!364156 (= res!1572025 ((_ is Lexer!5995) thiss!20629))))

(assert (=> start!364156 e!2400365))

(assert (=> start!364156 e!2400349))

(assert (=> start!364156 true))

(declare-fun e!2400339 () Bool)

(assert (=> start!364156 e!2400339))

(assert (=> start!364156 e!2400360))

(assert (=> start!364156 e!2400361))

(assert (=> start!364156 e!2400338))

(assert (=> start!364156 e!2400334))

(declare-fun b!3879333 () Bool)

(declare-fun e!2400350 () Bool)

(declare-fun e!2400356 () Bool)

(assert (=> b!3879333 (= e!2400350 e!2400356)))

(declare-fun res!1572010 () Bool)

(assert (=> b!3879333 (=> res!1572010 e!2400356)))

(declare-fun lt!1353759 () List!41376)

(assert (=> b!3879333 (= res!1572010 (not (= lt!1353775 lt!1353759)))))

(assert (=> b!3879333 (= lt!1353759 (++!10573 prefix!426 Nil!41252))))

(declare-fun e!2400347 () Bool)

(declare-fun b!3879334 () Bool)

(declare-fun tp!1176004 () Bool)

(assert (=> b!3879334 (= e!2400359 (and (inv!21 (value!203262 (h!46675 prefixTokens!80))) e!2400347 tp!1176004))))

(declare-fun b!3879335 () Bool)

(assert (=> b!3879335 (= e!2400342 e!2400337)))

(declare-fun res!1572021 () Bool)

(assert (=> b!3879335 (=> res!1572021 e!2400337)))

(declare-fun lt!1353789 () Int)

(declare-fun lt!1353768 () Int)

(assert (=> b!3879335 (= res!1572021 (<= lt!1353789 lt!1353768))))

(declare-fun lt!1353771 () Unit!59328)

(assert (=> b!3879335 (= lt!1353771 e!2400375)))

(declare-fun c!674825 () Bool)

(assert (=> b!3879335 (= c!674825 (= lt!1353789 lt!1353768))))

(declare-fun lt!1353774 () Unit!59328)

(declare-fun e!2400363 () Unit!59328)

(assert (=> b!3879335 (= lt!1353774 e!2400363)))

(declare-fun c!674824 () Bool)

(assert (=> b!3879335 (= c!674824 (< lt!1353789 lt!1353768))))

(assert (=> b!3879335 (= lt!1353768 (size!30990 suffix!1176))))

(assert (=> b!3879335 (= lt!1353789 (size!30990 (_2!23377 (v!39123 lt!1353761))))))

(declare-fun e!2400362 () Bool)

(assert (=> b!3879336 (= e!2400362 (and tp!1176013 tp!1176006))))

(declare-fun b!3879337 () Bool)

(declare-fun res!1572005 () Bool)

(assert (=> b!3879337 (=> res!1572005 e!2400350)))

(assert (=> b!3879337 (= res!1572005 (<= lt!1353753 lt!1353779))))

(declare-fun b!3879338 () Bool)

(declare-fun res!1572012 () Bool)

(assert (=> b!3879338 (=> res!1572012 e!2400377)))

(assert (=> b!3879338 (= res!1572012 (not (= (lexList!1765 thiss!20629 rules!2768 lt!1353784) lt!1353773)))))

(declare-fun b!3879339 () Bool)

(declare-fun e!2400353 () Bool)

(assert (=> b!3879339 (= e!2400353 e!2400374)))

(declare-fun res!1572011 () Bool)

(assert (=> b!3879339 (=> res!1572011 e!2400374)))

(declare-fun lt!1353786 () List!41376)

(assert (=> b!3879339 (= res!1572011 (or (not (= lt!1353752 lt!1353786)) (not (= lt!1353752 lt!1353788)) (not (= lt!1353751 lt!1353788))))))

(assert (=> b!3879339 (= lt!1353786 lt!1353788)))

(assert (=> b!3879339 (= lt!1353788 (++!10573 lt!1353763 lt!1353784))))

(assert (=> b!3879339 (= lt!1353784 (++!10573 lt!1353749 suffix!1176))))

(declare-fun lt!1353758 () Unit!59328)

(declare-fun lemmaConcatAssociativity!2288 (List!41376 List!41376 List!41376) Unit!59328)

(assert (=> b!3879339 (= lt!1353758 (lemmaConcatAssociativity!2288 lt!1353763 lt!1353749 suffix!1176))))

(declare-fun bm!282849 () Bool)

(assert (=> bm!282849 (= call!282854 (lexList!1765 thiss!20629 rules!2768 (_2!23377 lt!1353769)))))

(declare-fun b!3879340 () Bool)

(declare-fun e!2400335 () Bool)

(assert (=> b!3879340 (= e!2400335 true)))

(declare-fun lt!1353756 () tuple2!40488)

(assert (=> b!3879340 (= lt!1353756 (lexList!1765 thiss!20629 rules!2768 prefix!426))))

(declare-fun b!3879341 () Bool)

(declare-fun res!1572002 () Bool)

(assert (=> b!3879341 (=> res!1572002 e!2400368)))

(assert (=> b!3879341 (= res!1572002 (<= lt!1353768 (size!30990 Nil!41252)))))

(declare-fun b!3879342 () Bool)

(assert (=> b!3879342 (= e!2400371 false)))

(declare-fun b!3879343 () Bool)

(declare-fun Unit!59337 () Unit!59328)

(assert (=> b!3879343 (= e!2400363 Unit!59337)))

(declare-fun lt!1353790 () Int)

(assert (=> b!3879343 (= lt!1353790 (size!30990 lt!1353752))))

(declare-fun lt!1353755 () Unit!59328)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1281 (LexerInterface!5997 List!41378 List!41376 List!41376 List!41376 Rule!12616) Unit!59328)

(assert (=> b!3879343 (= lt!1353755 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1281 thiss!20629 rules!2768 lt!1353763 lt!1353752 (_2!23377 (v!39123 lt!1353761)) (rule!9306 (_1!23377 (v!39123 lt!1353761)))))))

(declare-fun maxPrefixOneRule!2383 (LexerInterface!5997 Rule!12616 List!41376) Option!8826)

(assert (=> b!3879343 (= (maxPrefixOneRule!2383 thiss!20629 (rule!9306 (_1!23377 (v!39123 lt!1353761))) lt!1353752) (Some!8825 (tuple2!40487 (Token!11955 lt!1353793 (rule!9306 (_1!23377 (v!39123 lt!1353761))) lt!1353779 lt!1353763) (_2!23377 (v!39123 lt!1353761)))))))

(declare-fun get!13652 (Option!8826) tuple2!40486)

(assert (=> b!3879343 (= lt!1353769 (get!13652 lt!1353761))))

(declare-fun c!674823 () Bool)

(assert (=> b!3879343 (= c!674823 (< (size!30990 (_2!23377 lt!1353769)) lt!1353768))))

(declare-fun lt!1353741 () Unit!59328)

(assert (=> b!3879343 (= lt!1353741 e!2400366)))

(assert (=> b!3879343 false))

(declare-fun e!2400367 () Bool)

(assert (=> b!3879344 (= e!2400367 (and tp!1176007 tp!1176015))))

(declare-fun b!3879345 () Bool)

(assert (=> b!3879345 (= e!2400377 e!2400368)))

(declare-fun res!1572004 () Bool)

(assert (=> b!3879345 (=> res!1572004 e!2400368)))

(assert (=> b!3879345 (= res!1572004 (not (= lt!1353761 (Some!8825 (tuple2!40487 (_1!23377 (v!39123 lt!1353761)) (_2!23377 (v!39123 lt!1353761)))))))))

(assert (=> b!3879345 (= (lexList!1765 thiss!20629 rules!2768 lt!1353749) (tuple2!40489 lt!1353740 Nil!41252))))

(declare-fun lt!1353782 () Unit!59328)

(declare-fun lemmaLexThenLexPrefix!597 (LexerInterface!5997 List!41378 List!41376 List!41376 List!41379 List!41379 List!41376) Unit!59328)

(assert (=> b!3879345 (= lt!1353782 (lemmaLexThenLexPrefix!597 thiss!20629 rules!2768 lt!1353749 suffix!1176 lt!1353740 suffixTokens!72 suffixResult!91))))

(declare-fun b!3879346 () Bool)

(assert (=> b!3879346 (= e!2400369 (= (size!30989 (_1!23377 (v!39123 lt!1353761))) (size!30990 (originalCharacters!7008 (_1!23377 (v!39123 lt!1353761))))))))

(declare-fun b!3879347 () Bool)

(declare-fun tp!1176016 () Bool)

(assert (=> b!3879347 (= e!2400339 (and tp_is_empty!19597 tp!1176016))))

(declare-fun b!3879348 () Bool)

(declare-fun res!1572027 () Bool)

(assert (=> b!3879348 (=> res!1572027 e!2400368)))

(assert (=> b!3879348 (= res!1572027 (isEmpty!24497 suffix!1176))))

(declare-fun b!3879349 () Bool)

(assert (=> b!3879349 (= e!2400357 e!2400353)))

(declare-fun res!1572024 () Bool)

(assert (=> b!3879349 (=> res!1572024 e!2400353)))

(assert (=> b!3879349 (= res!1572024 (or (not (= lt!1353786 lt!1353752)) (not (= lt!1353786 lt!1353751))))))

(assert (=> b!3879349 (= lt!1353786 (++!10573 lt!1353775 suffix!1176))))

(declare-fun b!3879350 () Bool)

(declare-fun res!1572000 () Bool)

(assert (=> b!3879350 (=> (not res!1572000) (not e!2400365))))

(declare-fun isEmpty!24498 (List!41378) Bool)

(assert (=> b!3879350 (= res!1572000 (not (isEmpty!24498 rules!2768)))))

(declare-fun b!3879351 () Bool)

(declare-fun Unit!59338 () Unit!59328)

(assert (=> b!3879351 (= e!2400363 Unit!59338)))

(declare-fun b!3879352 () Bool)

(assert (=> b!3879352 (= e!2400356 e!2400335)))

(declare-fun res!1572016 () Bool)

(assert (=> b!3879352 (=> res!1572016 e!2400335)))

(declare-fun lt!1353791 () Option!8826)

(assert (=> b!3879352 (= res!1572016 (not (= (maxPrefix!3301 thiss!20629 rules!2768 prefix!426) lt!1353791)))))

(assert (=> b!3879352 (= (maxPrefix!3301 thiss!20629 rules!2768 lt!1353759) lt!1353791)))

(assert (=> b!3879352 (= lt!1353791 (Some!8825 (tuple2!40487 (_1!23377 (v!39123 lt!1353761)) lt!1353749)))))

(declare-fun lt!1353744 () Unit!59328)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!32 (LexerInterface!5997 List!41378 List!41376 List!41376 List!41376 Token!11954 List!41376 List!41376) Unit!59328)

(assert (=> b!3879352 (= lt!1353744 (lemmaMaxPrefixThenWithShorterSuffix!32 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41252 (_1!23377 (v!39123 lt!1353761)) (_2!23377 (v!39123 lt!1353761)) lt!1353749))))

(declare-fun b!3879353 () Bool)

(assert (=> b!3879353 (= e!2400368 e!2400350)))

(declare-fun res!1572019 () Bool)

(assert (=> b!3879353 (=> res!1572019 e!2400350)))

(assert (=> b!3879353 (= res!1572019 (not (isPrefix!3507 Nil!41252 suffix!1176)))))

(assert (=> b!3879353 (isPrefix!3507 Nil!41252 (++!10573 Nil!41252 suffix!1176))))

(declare-fun lt!1353766 () Unit!59328)

(assert (=> b!3879353 (= lt!1353766 (lemmaConcatTwoListThenFirstIsPrefix!2370 Nil!41252 suffix!1176))))

(declare-fun b!3879354 () Bool)

(declare-fun tp!1176010 () Bool)

(declare-fun inv!55405 (String!46908) Bool)

(declare-fun inv!55409 (TokenValueInjection!12704) Bool)

(assert (=> b!3879354 (= e!2400347 (and tp!1176010 (inv!55405 (tag!7268 (rule!9306 (h!46675 prefixTokens!80)))) (inv!55409 (transformation!6408 (rule!9306 (h!46675 prefixTokens!80)))) e!2400362))))

(declare-fun b!3879355 () Bool)

(declare-fun Unit!59339 () Unit!59328)

(assert (=> b!3879355 (= e!2400344 Unit!59339)))

(declare-fun lt!1353767 () Unit!59328)

(assert (=> b!3879355 (= lt!1353767 (lemmaLexWithSmallerInputCannotProduceSameResults!68 thiss!20629 rules!2768 (_2!23377 (v!39123 lt!1353761)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3879355 false))

(declare-fun b!3879356 () Bool)

(declare-fun tp!1176012 () Bool)

(assert (=> b!3879356 (= e!2400354 (and tp!1176012 (inv!55405 (tag!7268 (h!46674 rules!2768))) (inv!55409 (transformation!6408 (h!46674 rules!2768))) e!2400364))))

(declare-fun b!3879357 () Bool)

(declare-fun c!674821 () Bool)

(assert (=> b!3879357 (= c!674821 (isEmpty!24496 lt!1353780))))

(assert (=> b!3879357 (= lt!1353780 (tail!5953 prefixTokens!80))))

(assert (=> b!3879357 (= e!2400366 e!2400358)))

(declare-fun tp!1176018 () Bool)

(declare-fun b!3879358 () Bool)

(assert (=> b!3879358 (= e!2400370 (and tp!1176018 (inv!55405 (tag!7268 (rule!9306 (h!46675 suffixTokens!72)))) (inv!55409 (transformation!6408 (rule!9306 (h!46675 suffixTokens!72)))) e!2400367))))

(assert (= (and start!364156 res!1572025) b!3879350))

(assert (= (and b!3879350 res!1572000) b!3879316))

(assert (= (and b!3879316 res!1572015) b!3879313))

(assert (= (and b!3879313 res!1572030) b!3879330))

(assert (= (and b!3879330 res!1572017) b!3879306))

(assert (= (and b!3879306 res!1572020) b!3879310))

(assert (= (and b!3879310 res!1572031) b!3879324))

(assert (= (and b!3879324 res!1572001) b!3879314))

(assert (= (and b!3879314 res!1572003) b!3879346))

(assert (= (and b!3879314 (not res!1572014)) b!3879329))

(assert (= (and b!3879329 (not res!1572006)) b!3879332))

(assert (= (and b!3879332 (not res!1572008)) b!3879335))

(assert (= (and b!3879335 c!674824) b!3879343))

(assert (= (and b!3879335 (not c!674824)) b!3879351))

(assert (= (and b!3879343 c!674823) b!3879357))

(assert (= (and b!3879343 (not c!674823)) b!3879322))

(assert (= (and b!3879357 c!674821) b!3879305))

(assert (= (and b!3879357 (not c!674821)) b!3879319))

(assert (= (and b!3879305 res!1572029) b!3879342))

(assert (= (and b!3879319 res!1572009) b!3879328))

(assert (= (or b!3879305 b!3879319) bm!282849))

(assert (= (and b!3879335 c!674825) b!3879317))

(assert (= (and b!3879335 (not c!674825)) b!3879318))

(assert (= (and b!3879335 (not res!1572021)) b!3879315))

(assert (= (and b!3879315 (not res!1572026)) b!3879308))

(assert (= (and b!3879308 (not res!1572028)) b!3879303))

(assert (= (and b!3879303 (not res!1572013)) b!3879349))

(assert (= (and b!3879349 (not res!1572024)) b!3879339))

(assert (= (and b!3879339 (not res!1572011)) b!3879321))

(assert (= (and b!3879321 (not res!1572022)) b!3879311))

(assert (= (and b!3879311 (not res!1572023)) b!3879325))

(assert (= (and b!3879325 c!674822) b!3879355))

(assert (= (and b!3879325 (not c!674822)) b!3879320))

(assert (= (and b!3879325 (not res!1572007)) b!3879338))

(assert (= (and b!3879338 (not res!1572012)) b!3879345))

(assert (= (and b!3879345 (not res!1572004)) b!3879348))

(assert (= (and b!3879348 (not res!1572027)) b!3879326))

(assert (= (and b!3879326 (not res!1572018)) b!3879341))

(assert (= (and b!3879341 (not res!1572002)) b!3879353))

(assert (= (and b!3879353 (not res!1572019)) b!3879337))

(assert (= (and b!3879337 (not res!1572005)) b!3879333))

(assert (= (and b!3879333 (not res!1572010)) b!3879352))

(assert (= (and b!3879352 (not res!1572016)) b!3879340))

(assert (= (and start!364156 ((_ is Cons!41252) suffixResult!91)) b!3879304))

(assert (= (and start!364156 ((_ is Cons!41252) suffix!1176)) b!3879347))

(assert (= b!3879356 b!3879331))

(assert (= b!3879312 b!3879356))

(assert (= (and start!364156 ((_ is Cons!41254) rules!2768)) b!3879312))

(assert (= b!3879354 b!3879336))

(assert (= b!3879334 b!3879354))

(assert (= b!3879323 b!3879334))

(assert (= (and start!364156 ((_ is Cons!41255) prefixTokens!80)) b!3879323))

(assert (= b!3879358 b!3879344))

(assert (= b!3879307 b!3879358))

(assert (= b!3879309 b!3879307))

(assert (= (and start!364156 ((_ is Cons!41255) suffixTokens!72)) b!3879309))

(assert (= (and start!364156 ((_ is Cons!41252) prefix!426)) b!3879327))

(declare-fun m!4437757 () Bool)

(assert (=> b!3879348 m!4437757))

(declare-fun m!4437759 () Bool)

(assert (=> b!3879315 m!4437759))

(declare-fun m!4437761 () Bool)

(assert (=> b!3879310 m!4437761))

(declare-fun m!4437763 () Bool)

(assert (=> b!3879307 m!4437763))

(declare-fun m!4437765 () Bool)

(assert (=> b!3879334 m!4437765))

(declare-fun m!4437767 () Bool)

(assert (=> b!3879313 m!4437767))

(declare-fun m!4437769 () Bool)

(assert (=> bm!282849 m!4437769))

(declare-fun m!4437771 () Bool)

(assert (=> b!3879357 m!4437771))

(declare-fun m!4437773 () Bool)

(assert (=> b!3879357 m!4437773))

(declare-fun m!4437775 () Bool)

(assert (=> b!3879352 m!4437775))

(declare-fun m!4437777 () Bool)

(assert (=> b!3879352 m!4437777))

(declare-fun m!4437779 () Bool)

(assert (=> b!3879352 m!4437779))

(declare-fun m!4437781 () Bool)

(assert (=> b!3879311 m!4437781))

(assert (=> b!3879311 m!4437773))

(declare-fun m!4437783 () Bool)

(assert (=> b!3879311 m!4437783))

(declare-fun m!4437785 () Bool)

(assert (=> b!3879311 m!4437785))

(declare-fun m!4437787 () Bool)

(assert (=> b!3879326 m!4437787))

(declare-fun m!4437789 () Bool)

(assert (=> b!3879316 m!4437789))

(declare-fun m!4437791 () Bool)

(assert (=> b!3879338 m!4437791))

(declare-fun m!4437793 () Bool)

(assert (=> b!3879350 m!4437793))

(declare-fun m!4437795 () Bool)

(assert (=> b!3879324 m!4437795))

(declare-fun m!4437797 () Bool)

(assert (=> b!3879314 m!4437797))

(declare-fun m!4437799 () Bool)

(assert (=> b!3879314 m!4437799))

(declare-fun m!4437801 () Bool)

(assert (=> b!3879314 m!4437801))

(declare-fun m!4437803 () Bool)

(assert (=> b!3879314 m!4437803))

(declare-fun m!4437805 () Bool)

(assert (=> b!3879314 m!4437805))

(declare-fun m!4437807 () Bool)

(assert (=> b!3879314 m!4437807))

(declare-fun m!4437809 () Bool)

(assert (=> b!3879314 m!4437809))

(declare-fun m!4437811 () Bool)

(assert (=> b!3879314 m!4437811))

(declare-fun m!4437813 () Bool)

(assert (=> b!3879314 m!4437813))

(declare-fun m!4437815 () Bool)

(assert (=> b!3879314 m!4437815))

(declare-fun m!4437817 () Bool)

(assert (=> b!3879314 m!4437817))

(declare-fun m!4437819 () Bool)

(assert (=> b!3879314 m!4437819))

(assert (=> b!3879314 m!4437809))

(declare-fun m!4437821 () Bool)

(assert (=> b!3879314 m!4437821))

(assert (=> b!3879314 m!4437801))

(declare-fun m!4437823 () Bool)

(assert (=> b!3879314 m!4437823))

(declare-fun m!4437825 () Bool)

(assert (=> b!3879340 m!4437825))

(declare-fun m!4437827 () Bool)

(assert (=> b!3879321 m!4437827))

(declare-fun m!4437829 () Bool)

(assert (=> b!3879321 m!4437829))

(declare-fun m!4437831 () Bool)

(assert (=> b!3879321 m!4437831))

(declare-fun m!4437833 () Bool)

(assert (=> b!3879308 m!4437833))

(declare-fun m!4437835 () Bool)

(assert (=> b!3879308 m!4437835))

(declare-fun m!4437837 () Bool)

(assert (=> b!3879308 m!4437837))

(declare-fun m!4437839 () Bool)

(assert (=> b!3879308 m!4437839))

(declare-fun m!4437841 () Bool)

(assert (=> b!3879308 m!4437841))

(declare-fun m!4437843 () Bool)

(assert (=> b!3879306 m!4437843))

(declare-fun m!4437845 () Bool)

(assert (=> b!3879306 m!4437845))

(declare-fun m!4437847 () Bool)

(assert (=> b!3879306 m!4437847))

(declare-fun m!4437849 () Bool)

(assert (=> b!3879353 m!4437849))

(declare-fun m!4437851 () Bool)

(assert (=> b!3879353 m!4437851))

(assert (=> b!3879353 m!4437851))

(declare-fun m!4437853 () Bool)

(assert (=> b!3879353 m!4437853))

(declare-fun m!4437855 () Bool)

(assert (=> b!3879353 m!4437855))

(declare-fun m!4437857 () Bool)

(assert (=> b!3879349 m!4437857))

(declare-fun m!4437859 () Bool)

(assert (=> b!3879333 m!4437859))

(declare-fun m!4437861 () Bool)

(assert (=> b!3879355 m!4437861))

(declare-fun m!4437863 () Bool)

(assert (=> b!3879329 m!4437863))

(declare-fun m!4437865 () Bool)

(assert (=> b!3879358 m!4437865))

(declare-fun m!4437867 () Bool)

(assert (=> b!3879358 m!4437867))

(declare-fun m!4437869 () Bool)

(assert (=> b!3879354 m!4437869))

(declare-fun m!4437871 () Bool)

(assert (=> b!3879354 m!4437871))

(declare-fun m!4437873 () Bool)

(assert (=> b!3879303 m!4437873))

(declare-fun m!4437875 () Bool)

(assert (=> b!3879303 m!4437875))

(declare-fun m!4437877 () Bool)

(assert (=> b!3879346 m!4437877))

(declare-fun m!4437879 () Bool)

(assert (=> b!3879330 m!4437879))

(declare-fun m!4437881 () Bool)

(assert (=> b!3879323 m!4437881))

(declare-fun m!4437883 () Bool)

(assert (=> b!3879309 m!4437883))

(declare-fun m!4437885 () Bool)

(assert (=> b!3879339 m!4437885))

(declare-fun m!4437887 () Bool)

(assert (=> b!3879339 m!4437887))

(declare-fun m!4437889 () Bool)

(assert (=> b!3879339 m!4437889))

(declare-fun m!4437891 () Bool)

(assert (=> b!3879356 m!4437891))

(declare-fun m!4437893 () Bool)

(assert (=> b!3879356 m!4437893))

(declare-fun m!4437895 () Bool)

(assert (=> b!3879335 m!4437895))

(declare-fun m!4437897 () Bool)

(assert (=> b!3879335 m!4437897))

(declare-fun m!4437899 () Bool)

(assert (=> b!3879305 m!4437899))

(declare-fun m!4437901 () Bool)

(assert (=> b!3879305 m!4437901))

(declare-fun m!4437903 () Bool)

(assert (=> b!3879345 m!4437903))

(declare-fun m!4437905 () Bool)

(assert (=> b!3879345 m!4437905))

(declare-fun m!4437907 () Bool)

(assert (=> b!3879343 m!4437907))

(declare-fun m!4437909 () Bool)

(assert (=> b!3879343 m!4437909))

(declare-fun m!4437911 () Bool)

(assert (=> b!3879343 m!4437911))

(declare-fun m!4437913 () Bool)

(assert (=> b!3879343 m!4437913))

(declare-fun m!4437915 () Bool)

(assert (=> b!3879343 m!4437915))

(declare-fun m!4437917 () Bool)

(assert (=> b!3879319 m!4437917))

(declare-fun m!4437919 () Bool)

(assert (=> b!3879319 m!4437919))

(declare-fun m!4437921 () Bool)

(assert (=> b!3879341 m!4437921))

(assert (=> b!3879317 m!4437835))

(assert (=> b!3879317 m!4437839))

(declare-fun m!4437923 () Bool)

(assert (=> b!3879317 m!4437923))

(declare-fun m!4437925 () Bool)

(assert (=> b!3879317 m!4437925))

(declare-fun m!4437927 () Bool)

(assert (=> b!3879325 m!4437927))

(declare-fun m!4437929 () Bool)

(assert (=> b!3879325 m!4437929))

(declare-fun m!4437931 () Bool)

(assert (=> b!3879325 m!4437931))

(declare-fun m!4437933 () Bool)

(assert (=> b!3879325 m!4437933))

(assert (=> b!3879325 m!4437933))

(declare-fun m!4437935 () Bool)

(assert (=> b!3879325 m!4437935))

(check-sat (not b!3879353) (not b!3879350) (not b!3879325) (not b!3879311) (not b!3879313) (not b!3879347) (not b!3879346) b_and!290911 (not b_next!105723) (not b!3879349) tp_is_empty!19597 (not b!3879333) (not b!3879334) (not b!3879358) (not b!3879304) (not b!3879309) (not b!3879315) (not b!3879340) (not b!3879338) (not b!3879329) (not b!3879345) b_and!290907 (not b!3879335) (not b_next!105727) (not b!3879341) (not b!3879314) (not b!3879327) (not b!3879308) (not b!3879354) (not b!3879316) b_and!290913 (not b!3879312) b_and!290915 (not b!3879323) (not b!3879326) (not b!3879352) (not bm!282849) (not b!3879343) (not b!3879317) (not b!3879330) (not b_next!105719) (not b!3879303) (not b!3879321) (not b!3879319) b_and!290909 (not b!3879306) b_and!290917 (not b!3879356) (not b!3879355) (not b!3879348) (not b!3879357) (not b_next!105717) (not b_next!105721) (not b!3879324) (not b!3879339) (not b!3879310) (not b_next!105725) (not b!3879305) (not b!3879307))
(check-sat b_and!290907 (not b_next!105727) b_and!290913 b_and!290915 (not b_next!105719) (not b_next!105725) b_and!290911 (not b_next!105723) b_and!290909 b_and!290917 (not b_next!105717) (not b_next!105721))
