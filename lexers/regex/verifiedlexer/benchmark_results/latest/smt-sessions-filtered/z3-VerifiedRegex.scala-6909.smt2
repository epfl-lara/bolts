; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364152 () Bool)

(assert start!364152)

(declare-fun b!3878981 () Bool)

(declare-fun b_free!104989 () Bool)

(declare-fun b_next!105693 () Bool)

(assert (=> b!3878981 (= b_free!104989 (not b_next!105693))))

(declare-fun tp!1175912 () Bool)

(declare-fun b_and!290883 () Bool)

(assert (=> b!3878981 (= tp!1175912 b_and!290883)))

(declare-fun b_free!104991 () Bool)

(declare-fun b_next!105695 () Bool)

(assert (=> b!3878981 (= b_free!104991 (not b_next!105695))))

(declare-fun tp!1175916 () Bool)

(declare-fun b_and!290885 () Bool)

(assert (=> b!3878981 (= tp!1175916 b_and!290885)))

(declare-fun b!3878991 () Bool)

(declare-fun b_free!104993 () Bool)

(declare-fun b_next!105697 () Bool)

(assert (=> b!3878991 (= b_free!104993 (not b_next!105697))))

(declare-fun tp!1175904 () Bool)

(declare-fun b_and!290887 () Bool)

(assert (=> b!3878991 (= tp!1175904 b_and!290887)))

(declare-fun b_free!104995 () Bool)

(declare-fun b_next!105699 () Bool)

(assert (=> b!3878991 (= b_free!104995 (not b_next!105699))))

(declare-fun tp!1175901 () Bool)

(declare-fun b_and!290889 () Bool)

(assert (=> b!3878991 (= tp!1175901 b_and!290889)))

(declare-fun b!3878986 () Bool)

(declare-fun b_free!104997 () Bool)

(declare-fun b_next!105701 () Bool)

(assert (=> b!3878986 (= b_free!104997 (not b_next!105701))))

(declare-fun tp!1175915 () Bool)

(declare-fun b_and!290891 () Bool)

(assert (=> b!3878986 (= tp!1175915 b_and!290891)))

(declare-fun b_free!104999 () Bool)

(declare-fun b_next!105703 () Bool)

(assert (=> b!3878986 (= b_free!104999 (not b_next!105703))))

(declare-fun tp!1175914 () Bool)

(declare-fun b_and!290893 () Bool)

(assert (=> b!3878986 (= tp!1175914 b_and!290893)))

(declare-fun b!3878968 () Bool)

(declare-fun e!2400078 () Bool)

(declare-fun e!2400095 () Bool)

(assert (=> b!3878968 (= e!2400078 e!2400095)))

(declare-fun res!1571820 () Bool)

(assert (=> b!3878968 (=> res!1571820 e!2400095)))

(declare-datatypes ((List!41368 0))(
  ( (Nil!41244) (Cons!41244 (h!46664 (_ BitVec 16)) (t!315107 List!41368)) )
))
(declare-datatypes ((TokenValue!6636 0))(
  ( (FloatLiteralValue!13272 (text!46897 List!41368)) (TokenValueExt!6635 (__x!25489 Int)) (Broken!33180 (value!203179 List!41368)) (Object!6759) (End!6636) (Def!6636) (Underscore!6636) (Match!6636) (Else!6636) (Error!6636) (Case!6636) (If!6636) (Extends!6636) (Abstract!6636) (Class!6636) (Val!6636) (DelimiterValue!13272 (del!6696 List!41368)) (KeywordValue!6642 (value!203180 List!41368)) (CommentValue!13272 (value!203181 List!41368)) (WhitespaceValue!13272 (value!203182 List!41368)) (IndentationValue!6636 (value!203183 List!41368)) (String!46897) (Int32!6636) (Broken!33181 (value!203184 List!41368)) (Boolean!6637) (Unit!59304) (OperatorValue!6639 (op!6696 List!41368)) (IdentifierValue!13272 (value!203185 List!41368)) (IdentifierValue!13273 (value!203186 List!41368)) (WhitespaceValue!13273 (value!203187 List!41368)) (True!13272) (False!13272) (Broken!33182 (value!203188 List!41368)) (Broken!33183 (value!203189 List!41368)) (True!13273) (RightBrace!6636) (RightBracket!6636) (Colon!6636) (Null!6636) (Comma!6636) (LeftBracket!6636) (False!13273) (LeftBrace!6636) (ImaginaryLiteralValue!6636 (text!46898 List!41368)) (StringLiteralValue!19908 (value!203190 List!41368)) (EOFValue!6636 (value!203191 List!41368)) (IdentValue!6636 (value!203192 List!41368)) (DelimiterValue!13273 (value!203193 List!41368)) (DedentValue!6636 (value!203194 List!41368)) (NewLineValue!6636 (value!203195 List!41368)) (IntegerValue!19908 (value!203196 (_ BitVec 32)) (text!46899 List!41368)) (IntegerValue!19909 (value!203197 Int) (text!46900 List!41368)) (Times!6636) (Or!6636) (Equal!6636) (Minus!6636) (Broken!33184 (value!203198 List!41368)) (And!6636) (Div!6636) (LessEqual!6636) (Mod!6636) (Concat!17947) (Not!6636) (Plus!6636) (SpaceValue!6636 (value!203199 List!41368)) (IntegerValue!19910 (value!203200 Int) (text!46901 List!41368)) (StringLiteralValue!19909 (text!46902 List!41368)) (FloatLiteralValue!13273 (text!46903 List!41368)) (BytesLiteralValue!6636 (value!203201 List!41368)) (CommentValue!13273 (value!203202 List!41368)) (StringLiteralValue!19910 (value!203203 List!41368)) (ErrorTokenValue!6636 (msg!6697 List!41368)) )
))
(declare-datatypes ((C!22808 0))(
  ( (C!22809 (val!13498 Int)) )
))
(declare-datatypes ((Regex!11311 0))(
  ( (ElementMatch!11311 (c!674790 C!22808)) (Concat!17948 (regOne!23134 Regex!11311) (regTwo!23134 Regex!11311)) (EmptyExpr!11311) (Star!11311 (reg!11640 Regex!11311)) (EmptyLang!11311) (Union!11311 (regOne!23135 Regex!11311) (regTwo!23135 Regex!11311)) )
))
(declare-datatypes ((String!46898 0))(
  ( (String!46899 (value!203204 String)) )
))
(declare-datatypes ((List!41369 0))(
  ( (Nil!41245) (Cons!41245 (h!46665 C!22808) (t!315108 List!41369)) )
))
(declare-datatypes ((IArray!25239 0))(
  ( (IArray!25240 (innerList!12677 List!41369)) )
))
(declare-datatypes ((Conc!12617 0))(
  ( (Node!12617 (left!31646 Conc!12617) (right!31976 Conc!12617) (csize!25464 Int) (cheight!12828 Int)) (Leaf!19527 (xs!15923 IArray!25239) (csize!25465 Int)) (Empty!12617) )
))
(declare-datatypes ((BalanceConc!24828 0))(
  ( (BalanceConc!24829 (c!674791 Conc!12617)) )
))
(declare-datatypes ((TokenValueInjection!12700 0))(
  ( (TokenValueInjection!12701 (toValue!8834 Int) (toChars!8693 Int)) )
))
(declare-datatypes ((Rule!12612 0))(
  ( (Rule!12613 (regex!6406 Regex!11311) (tag!7266 String!46898) (isSeparator!6406 Bool) (transformation!6406 TokenValueInjection!12700)) )
))
(declare-datatypes ((Token!11950 0))(
  ( (Token!11951 (value!203205 TokenValue!6636) (rule!9304 Rule!12612) (size!30985 Int) (originalCharacters!7006 List!41369)) )
))
(declare-datatypes ((List!41370 0))(
  ( (Nil!41246) (Cons!41246 (h!46666 Token!11950) (t!315109 List!41370)) )
))
(declare-fun lt!1353442 () List!41370)

(declare-fun lt!1353456 () List!41370)

(assert (=> b!3878968 (= res!1571820 (not (= lt!1353442 lt!1353456)))))

(declare-fun lt!1353413 () List!41370)

(declare-fun lt!1353415 () List!41370)

(declare-fun ++!10569 (List!41370 List!41370) List!41370)

(assert (=> b!3878968 (= lt!1353442 (++!10569 lt!1353413 lt!1353415))))

(declare-fun lt!1353414 () List!41370)

(declare-fun suffixTokens!72 () List!41370)

(assert (=> b!3878968 (= lt!1353442 (++!10569 (++!10569 lt!1353413 lt!1353414) suffixTokens!72))))

(declare-datatypes ((Unit!59305 0))(
  ( (Unit!59306) )
))
(declare-fun lt!1353445 () Unit!59305)

(declare-fun lemmaConcatAssociativity!2283 (List!41370 List!41370 List!41370) Unit!59305)

(assert (=> b!3878968 (= lt!1353445 (lemmaConcatAssociativity!2283 lt!1353413 lt!1353414 suffixTokens!72))))

(declare-fun lt!1353455 () Unit!59305)

(declare-fun e!2400105 () Unit!59305)

(assert (=> b!3878968 (= lt!1353455 e!2400105)))

(declare-fun c!674785 () Bool)

(declare-fun isEmpty!24490 (List!41370) Bool)

(assert (=> b!3878968 (= c!674785 (isEmpty!24490 lt!1353414))))

(declare-fun b!3878969 () Bool)

(declare-fun res!1571835 () Bool)

(declare-fun e!2400098 () Bool)

(assert (=> b!3878969 (=> res!1571835 e!2400098)))

(declare-fun lt!1353433 () Int)

(declare-fun lt!1353430 () Int)

(assert (=> b!3878969 (= res!1571835 (<= lt!1353433 lt!1353430))))

(declare-fun b!3878970 () Bool)

(declare-fun e!2400072 () Bool)

(declare-fun e!2400103 () Bool)

(assert (=> b!3878970 (= e!2400072 e!2400103)))

(declare-fun res!1571831 () Bool)

(assert (=> b!3878970 (=> res!1571831 e!2400103)))

(declare-datatypes ((tuple2!40478 0))(
  ( (tuple2!40479 (_1!23373 List!41370) (_2!23373 List!41369)) )
))
(declare-fun lt!1353434 () tuple2!40478)

(declare-fun lt!1353419 () tuple2!40478)

(assert (=> b!3878970 (= res!1571831 (not (= lt!1353434 (tuple2!40479 (++!10569 lt!1353413 (_1!23373 lt!1353419)) (_2!23373 lt!1353419)))))))

(declare-datatypes ((tuple2!40480 0))(
  ( (tuple2!40481 (_1!23374 Token!11950) (_2!23374 List!41369)) )
))
(declare-datatypes ((Option!8824 0))(
  ( (None!8823) (Some!8823 (v!39121 tuple2!40480)) )
))
(declare-fun lt!1353453 () Option!8824)

(assert (=> b!3878970 (= lt!1353413 (Cons!41246 (_1!23374 (v!39121 lt!1353453)) Nil!41246))))

(declare-fun b!3878971 () Bool)

(declare-fun e!2400107 () Bool)

(declare-fun e!2400080 () Bool)

(assert (=> b!3878971 (= e!2400107 e!2400080)))

(declare-fun res!1571811 () Bool)

(assert (=> b!3878971 (=> res!1571811 e!2400080)))

(declare-fun lt!1353424 () List!41369)

(declare-fun prefix!426 () List!41369)

(assert (=> b!3878971 (= res!1571811 (not (= lt!1353424 prefix!426)))))

(declare-fun lt!1353452 () List!41369)

(declare-fun lt!1353408 () List!41369)

(declare-fun ++!10570 (List!41369 List!41369) List!41369)

(assert (=> b!3878971 (= lt!1353424 (++!10570 lt!1353452 lt!1353408))))

(declare-fun getSuffix!1960 (List!41369 List!41369) List!41369)

(assert (=> b!3878971 (= lt!1353408 (getSuffix!1960 prefix!426 lt!1353452))))

(declare-fun b!3878972 () Bool)

(declare-fun e!2400100 () Bool)

(assert (=> b!3878972 (= e!2400100 e!2400107)))

(declare-fun res!1571828 () Bool)

(assert (=> b!3878972 (=> res!1571828 e!2400107)))

(assert (=> b!3878972 (= res!1571828 (>= lt!1353430 lt!1353433))))

(declare-fun size!30986 (List!41369) Int)

(assert (=> b!3878972 (= lt!1353433 (size!30986 prefix!426))))

(declare-fun isPrefix!3505 (List!41369 List!41369) Bool)

(assert (=> b!3878972 (isPrefix!3505 lt!1353452 prefix!426)))

(declare-fun lt!1353407 () List!41369)

(declare-fun lt!1353427 () Unit!59305)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!255 (List!41369 List!41369 List!41369) Unit!59305)

(assert (=> b!3878972 (= lt!1353427 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!255 prefix!426 lt!1353452 lt!1353407))))

(assert (=> b!3878972 (isPrefix!3505 prefix!426 lt!1353407)))

(declare-fun lt!1353440 () Unit!59305)

(declare-fun suffix!1176 () List!41369)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2368 (List!41369 List!41369) Unit!59305)

(assert (=> b!3878972 (= lt!1353440 (lemmaConcatTwoListThenFirstIsPrefix!2368 prefix!426 suffix!1176))))

(declare-fun b!3878973 () Bool)

(declare-fun e!2400087 () Unit!59305)

(declare-fun Unit!59307 () Unit!59305)

(assert (=> b!3878973 (= e!2400087 Unit!59307)))

(declare-fun b!3878974 () Bool)

(declare-fun res!1571816 () Bool)

(declare-fun e!2400089 () Bool)

(assert (=> b!3878974 (=> res!1571816 e!2400089)))

(declare-fun isEmpty!24491 (List!41369) Bool)

(assert (=> b!3878974 (= res!1571816 (isEmpty!24491 suffix!1176))))

(declare-fun res!1571819 () Bool)

(declare-fun e!2400074 () Bool)

(assert (=> start!364152 (=> (not res!1571819) (not e!2400074))))

(declare-datatypes ((LexerInterface!5995 0))(
  ( (LexerInterfaceExt!5992 (__x!25490 Int)) (Lexer!5993) )
))
(declare-fun thiss!20629 () LexerInterface!5995)

(get-info :version)

(assert (=> start!364152 (= res!1571819 ((_ is Lexer!5993) thiss!20629))))

(assert (=> start!364152 e!2400074))

(declare-fun e!2400085 () Bool)

(assert (=> start!364152 e!2400085))

(assert (=> start!364152 true))

(declare-fun e!2400071 () Bool)

(assert (=> start!364152 e!2400071))

(declare-fun e!2400090 () Bool)

(assert (=> start!364152 e!2400090))

(declare-fun e!2400075 () Bool)

(assert (=> start!364152 e!2400075))

(declare-fun e!2400088 () Bool)

(assert (=> start!364152 e!2400088))

(declare-fun e!2400082 () Bool)

(assert (=> start!364152 e!2400082))

(declare-fun b!3878975 () Bool)

(declare-fun e!2400073 () Bool)

(assert (=> b!3878975 (= e!2400073 (not e!2400072))))

(declare-fun res!1571821 () Bool)

(assert (=> b!3878975 (=> res!1571821 e!2400072)))

(declare-fun lt!1353429 () List!41369)

(assert (=> b!3878975 (= res!1571821 (not (= lt!1353429 lt!1353407)))))

(declare-datatypes ((List!41371 0))(
  ( (Nil!41247) (Cons!41247 (h!46667 Rule!12612) (t!315110 List!41371)) )
))
(declare-fun rules!2768 () List!41371)

(declare-fun lexList!1763 (LexerInterface!5995 List!41371 List!41369) tuple2!40478)

(assert (=> b!3878975 (= lt!1353419 (lexList!1763 thiss!20629 rules!2768 (_2!23374 (v!39121 lt!1353453))))))

(declare-fun lt!1353432 () List!41369)

(declare-fun lt!1353444 () TokenValue!6636)

(assert (=> b!3878975 (and (= (size!30985 (_1!23374 (v!39121 lt!1353453))) lt!1353430) (= (originalCharacters!7006 (_1!23374 (v!39121 lt!1353453))) lt!1353452) (= (tuple2!40481 (_1!23374 (v!39121 lt!1353453)) (_2!23374 (v!39121 lt!1353453))) (tuple2!40481 (Token!11951 lt!1353444 (rule!9304 (_1!23374 (v!39121 lt!1353453))) lt!1353430 lt!1353452) lt!1353432)))))

(assert (=> b!3878975 (= lt!1353430 (size!30986 lt!1353452))))

(declare-fun e!2400092 () Bool)

(assert (=> b!3878975 e!2400092))

(declare-fun res!1571810 () Bool)

(assert (=> b!3878975 (=> (not res!1571810) (not e!2400092))))

(assert (=> b!3878975 (= res!1571810 (= (value!203205 (_1!23374 (v!39121 lt!1353453))) lt!1353444))))

(declare-fun apply!9649 (TokenValueInjection!12700 BalanceConc!24828) TokenValue!6636)

(declare-fun seqFromList!4677 (List!41369) BalanceConc!24828)

(assert (=> b!3878975 (= lt!1353444 (apply!9649 (transformation!6406 (rule!9304 (_1!23374 (v!39121 lt!1353453)))) (seqFromList!4677 lt!1353452)))))

(assert (=> b!3878975 (= (_2!23374 (v!39121 lt!1353453)) lt!1353432)))

(declare-fun lt!1353450 () Unit!59305)

(declare-fun lemmaSamePrefixThenSameSuffix!1726 (List!41369 List!41369 List!41369 List!41369 List!41369) Unit!59305)

(assert (=> b!3878975 (= lt!1353450 (lemmaSamePrefixThenSameSuffix!1726 lt!1353452 (_2!23374 (v!39121 lt!1353453)) lt!1353452 lt!1353432 lt!1353407))))

(assert (=> b!3878975 (= lt!1353432 (getSuffix!1960 lt!1353407 lt!1353452))))

(assert (=> b!3878975 (isPrefix!3505 lt!1353452 lt!1353429)))

(assert (=> b!3878975 (= lt!1353429 (++!10570 lt!1353452 (_2!23374 (v!39121 lt!1353453))))))

(declare-fun lt!1353417 () Unit!59305)

(assert (=> b!3878975 (= lt!1353417 (lemmaConcatTwoListThenFirstIsPrefix!2368 lt!1353452 (_2!23374 (v!39121 lt!1353453))))))

(declare-fun list!15336 (BalanceConc!24828) List!41369)

(declare-fun charsOf!4234 (Token!11950) BalanceConc!24828)

(assert (=> b!3878975 (= lt!1353452 (list!15336 (charsOf!4234 (_1!23374 (v!39121 lt!1353453)))))))

(declare-fun ruleValid!2358 (LexerInterface!5995 Rule!12612) Bool)

(assert (=> b!3878975 (ruleValid!2358 thiss!20629 (rule!9304 (_1!23374 (v!39121 lt!1353453))))))

(declare-fun lt!1353438 () Unit!59305)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1438 (LexerInterface!5995 Rule!12612 List!41371) Unit!59305)

(assert (=> b!3878975 (= lt!1353438 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1438 thiss!20629 (rule!9304 (_1!23374 (v!39121 lt!1353453))) rules!2768))))

(declare-fun lt!1353457 () Unit!59305)

(declare-fun lemmaCharactersSize!1067 (Token!11950) Unit!59305)

(assert (=> b!3878975 (= lt!1353457 (lemmaCharactersSize!1067 (_1!23374 (v!39121 lt!1353453))))))

(declare-fun b!3878976 () Bool)

(declare-fun tp_is_empty!19593 () Bool)

(declare-fun tp!1175900 () Bool)

(assert (=> b!3878976 (= e!2400082 (and tp_is_empty!19593 tp!1175900))))

(declare-fun b!3878977 () Bool)

(declare-fun e!2400099 () Bool)

(assert (=> b!3878977 (= e!2400080 e!2400099)))

(declare-fun res!1571814 () Bool)

(assert (=> b!3878977 (=> res!1571814 e!2400099)))

(declare-fun lt!1353421 () List!41369)

(assert (=> b!3878977 (= res!1571814 (or (not (= lt!1353421 lt!1353407)) (not (= lt!1353421 lt!1353429))))))

(assert (=> b!3878977 (= lt!1353421 (++!10570 lt!1353424 suffix!1176))))

(declare-fun b!3878978 () Bool)

(assert (=> b!3878978 (= e!2400095 e!2400089)))

(declare-fun res!1571815 () Bool)

(assert (=> b!3878978 (=> res!1571815 e!2400089)))

(assert (=> b!3878978 (= res!1571815 (not (= lt!1353453 (Some!8823 (tuple2!40481 (_1!23374 (v!39121 lt!1353453)) (_2!23374 (v!39121 lt!1353453)))))))))

(assert (=> b!3878978 (= (lexList!1763 thiss!20629 rules!2768 lt!1353408) (tuple2!40479 lt!1353414 Nil!41245))))

(declare-fun suffixResult!91 () List!41369)

(declare-fun lt!1353418 () Unit!59305)

(declare-fun lemmaLexThenLexPrefix!595 (LexerInterface!5995 List!41371 List!41369 List!41369 List!41370 List!41370 List!41369) Unit!59305)

(assert (=> b!3878978 (= lt!1353418 (lemmaLexThenLexPrefix!595 thiss!20629 rules!2768 lt!1353408 suffix!1176 lt!1353414 suffixTokens!72 suffixResult!91))))

(declare-fun b!3878979 () Bool)

(declare-fun tp!1175911 () Bool)

(declare-fun e!2400093 () Bool)

(declare-fun prefixTokens!80 () List!41370)

(declare-fun inv!55401 (Token!11950) Bool)

(assert (=> b!3878979 (= e!2400075 (and (inv!55401 (h!46666 prefixTokens!80)) e!2400093 tp!1175911))))

(declare-fun b!3878980 () Bool)

(declare-fun e!2400102 () Bool)

(declare-fun tp!1175908 () Bool)

(assert (=> b!3878980 (= e!2400090 (and e!2400102 tp!1175908))))

(declare-fun e!2400086 () Bool)

(assert (=> b!3878981 (= e!2400086 (and tp!1175912 tp!1175916))))

(declare-fun b!3878982 () Bool)

(declare-fun e!2400104 () Bool)

(assert (=> b!3878982 (= e!2400098 e!2400104)))

(declare-fun res!1571812 () Bool)

(assert (=> b!3878982 (=> res!1571812 e!2400104)))

(declare-fun lt!1353404 () List!41369)

(assert (=> b!3878982 (= res!1571812 (not (= lt!1353424 lt!1353404)))))

(assert (=> b!3878982 (= lt!1353404 (++!10570 prefix!426 Nil!41245))))

(declare-fun b!3878983 () Bool)

(declare-fun e!2400106 () Bool)

(assert (=> b!3878983 (= e!2400074 e!2400106)))

(declare-fun res!1571838 () Bool)

(assert (=> b!3878983 (=> (not res!1571838) (not e!2400106))))

(assert (=> b!3878983 (= res!1571838 (= lt!1353434 (tuple2!40479 lt!1353456 suffixResult!91)))))

(assert (=> b!3878983 (= lt!1353434 (lexList!1763 thiss!20629 rules!2768 lt!1353407))))

(assert (=> b!3878983 (= lt!1353456 (++!10569 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3878983 (= lt!1353407 (++!10570 prefix!426 suffix!1176))))

(declare-fun b!3878984 () Bool)

(declare-fun e!2400097 () Bool)

(declare-fun tp!1175905 () Bool)

(declare-fun inv!55398 (String!46898) Bool)

(declare-fun inv!55402 (TokenValueInjection!12700) Bool)

(assert (=> b!3878984 (= e!2400097 (and tp!1175905 (inv!55398 (tag!7266 (rule!9304 (h!46666 suffixTokens!72)))) (inv!55402 (transformation!6406 (rule!9304 (h!46666 suffixTokens!72)))) e!2400086))))

(declare-fun b!3878985 () Bool)

(declare-fun e!2400079 () Unit!59305)

(declare-fun Unit!59308 () Unit!59305)

(assert (=> b!3878985 (= e!2400079 Unit!59308)))

(declare-fun e!2400094 () Bool)

(assert (=> b!3878986 (= e!2400094 (and tp!1175915 tp!1175914))))

(declare-fun b!3878987 () Bool)

(declare-fun res!1571826 () Bool)

(assert (=> b!3878987 (=> res!1571826 e!2400095)))

(declare-fun lt!1353406 () List!41369)

(declare-fun lt!1353425 () tuple2!40478)

(assert (=> b!3878987 (= res!1571826 (not (= (lexList!1763 thiss!20629 rules!2768 lt!1353406) lt!1353425)))))

(declare-fun b!3878988 () Bool)

(declare-fun e!2400084 () Unit!59305)

(declare-fun Unit!59309 () Unit!59305)

(assert (=> b!3878988 (= e!2400084 Unit!59309)))

(declare-fun lt!1353416 () Unit!59305)

(declare-fun lt!1353431 () tuple2!40480)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!490 (List!41369 List!41369 List!41369 List!41369) Unit!59305)

(assert (=> b!3878988 (= lt!1353416 (lemmaConcatSameAndSameSizesThenSameLists!490 lt!1353452 (_2!23374 (v!39121 lt!1353453)) lt!1353452 (_2!23374 lt!1353431)))))

(assert (=> b!3878988 (= (_2!23374 (v!39121 lt!1353453)) (_2!23374 lt!1353431))))

(declare-fun lt!1353454 () Unit!59305)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!66 (LexerInterface!5995 List!41371 List!41369 List!41369 List!41370 List!41369) Unit!59305)

(assert (=> b!3878988 (= lt!1353454 (lemmaLexWithSmallerInputCannotProduceSameResults!66 thiss!20629 rules!2768 suffix!1176 (_2!23374 lt!1353431) suffixTokens!72 suffixResult!91))))

(declare-fun res!1571832 () Bool)

(declare-fun call!282848 () tuple2!40478)

(declare-fun lt!1353410 () tuple2!40478)

(assert (=> b!3878988 (= res!1571832 (not (= call!282848 lt!1353410)))))

(declare-fun e!2400076 () Bool)

(assert (=> b!3878988 (=> (not res!1571832) (not e!2400076))))

(assert (=> b!3878988 e!2400076))

(declare-fun b!3878989 () Bool)

(declare-fun e!2400081 () Unit!59305)

(declare-fun Unit!59310 () Unit!59305)

(assert (=> b!3878989 (= e!2400081 Unit!59310)))

(declare-fun b!3878990 () Bool)

(declare-fun res!1571813 () Bool)

(assert (=> b!3878990 (=> res!1571813 e!2400089)))

(declare-fun lt!1353412 () Int)

(assert (=> b!3878990 (= res!1571813 (<= lt!1353412 (size!30986 Nil!41245)))))

(declare-fun e!2400101 () Bool)

(assert (=> b!3878991 (= e!2400101 (and tp!1175904 tp!1175901))))

(declare-fun b!3878992 () Bool)

(assert (=> b!3878992 (= e!2400076 false)))

(declare-fun b!3878993 () Bool)

(declare-fun tp!1175909 () Bool)

(assert (=> b!3878993 (= e!2400085 (and tp_is_empty!19593 tp!1175909))))

(declare-fun bm!282843 () Bool)

(assert (=> bm!282843 (= call!282848 (lexList!1763 thiss!20629 rules!2768 (_2!23374 lt!1353431)))))

(declare-fun tp!1175906 () Bool)

(declare-fun b!3878994 () Bool)

(declare-fun e!2400068 () Bool)

(declare-fun inv!21 (TokenValue!6636) Bool)

(assert (=> b!3878994 (= e!2400068 (and (inv!21 (value!203205 (h!46666 suffixTokens!72))) e!2400097 tp!1175906))))

(declare-fun b!3878995 () Bool)

(declare-fun tp!1175903 () Bool)

(assert (=> b!3878995 (= e!2400088 (and (inv!55401 (h!46666 suffixTokens!72)) e!2400068 tp!1175903))))

(declare-fun b!3878996 () Bool)

(declare-fun res!1571833 () Bool)

(assert (=> b!3878996 (=> (not res!1571833) (not e!2400074))))

(declare-fun isEmpty!24492 (List!41371) Bool)

(assert (=> b!3878996 (= res!1571833 (not (isEmpty!24492 rules!2768)))))

(declare-fun b!3878997 () Bool)

(assert (=> b!3878997 (= e!2400103 e!2400100)))

(declare-fun res!1571829 () Bool)

(assert (=> b!3878997 (=> res!1571829 e!2400100)))

(declare-fun lt!1353448 () Int)

(assert (=> b!3878997 (= res!1571829 (<= lt!1353448 lt!1353412))))

(declare-fun lt!1353447 () Unit!59305)

(assert (=> b!3878997 (= lt!1353447 e!2400081)))

(declare-fun c!674787 () Bool)

(assert (=> b!3878997 (= c!674787 (= lt!1353448 lt!1353412))))

(declare-fun lt!1353422 () Unit!59305)

(assert (=> b!3878997 (= lt!1353422 e!2400079)))

(declare-fun c!674789 () Bool)

(assert (=> b!3878997 (= c!674789 (< lt!1353448 lt!1353412))))

(assert (=> b!3878997 (= lt!1353412 (size!30986 suffix!1176))))

(assert (=> b!3878997 (= lt!1353448 (size!30986 (_2!23374 (v!39121 lt!1353453))))))

(declare-fun b!3878998 () Bool)

(declare-fun res!1571817 () Bool)

(assert (=> b!3878998 (=> res!1571817 e!2400089)))

(assert (=> b!3878998 (= res!1571817 (not (isPrefix!3505 lt!1353408 (_2!23374 (v!39121 lt!1353453)))))))

(declare-fun b!3878999 () Bool)

(declare-fun Unit!59311 () Unit!59305)

(assert (=> b!3878999 (= e!2400079 Unit!59311)))

(declare-fun lt!1353435 () Int)

(assert (=> b!3878999 (= lt!1353435 (size!30986 lt!1353407))))

(declare-fun lt!1353449 () Unit!59305)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1279 (LexerInterface!5995 List!41371 List!41369 List!41369 List!41369 Rule!12612) Unit!59305)

(assert (=> b!3878999 (= lt!1353449 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1279 thiss!20629 rules!2768 lt!1353452 lt!1353407 (_2!23374 (v!39121 lt!1353453)) (rule!9304 (_1!23374 (v!39121 lt!1353453)))))))

(declare-fun maxPrefixOneRule!2381 (LexerInterface!5995 Rule!12612 List!41369) Option!8824)

(assert (=> b!3878999 (= (maxPrefixOneRule!2381 thiss!20629 (rule!9304 (_1!23374 (v!39121 lt!1353453))) lt!1353407) (Some!8823 (tuple2!40481 (Token!11951 lt!1353444 (rule!9304 (_1!23374 (v!39121 lt!1353453))) lt!1353430 lt!1353452) (_2!23374 (v!39121 lt!1353453)))))))

(declare-fun get!13649 (Option!8824) tuple2!40480)

(assert (=> b!3878999 (= lt!1353431 (get!13649 lt!1353453))))

(declare-fun c!674788 () Bool)

(assert (=> b!3878999 (= c!674788 (< (size!30986 (_2!23374 lt!1353431)) lt!1353412))))

(declare-fun lt!1353437 () Unit!59305)

(assert (=> b!3878999 (= lt!1353437 e!2400087)))

(assert (=> b!3878999 false))

(declare-fun b!3879000 () Bool)

(assert (=> b!3879000 (= e!2400104 true)))

(declare-fun lt!1353403 () Option!8824)

(declare-fun maxPrefix!3299 (LexerInterface!5995 List!41371 List!41369) Option!8824)

(assert (=> b!3879000 (= lt!1353403 (maxPrefix!3299 thiss!20629 rules!2768 prefix!426))))

(assert (=> b!3879000 (= (maxPrefix!3299 thiss!20629 rules!2768 lt!1353404) (Some!8823 (tuple2!40481 (_1!23374 (v!39121 lt!1353453)) lt!1353408)))))

(declare-fun lt!1353451 () Unit!59305)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!30 (LexerInterface!5995 List!41371 List!41369 List!41369 List!41369 Token!11950 List!41369 List!41369) Unit!59305)

(assert (=> b!3879000 (= lt!1353451 (lemmaMaxPrefixThenWithShorterSuffix!30 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41245 (_1!23374 (v!39121 lt!1353453)) (_2!23374 (v!39121 lt!1353453)) lt!1353408))))

(declare-fun b!3879001 () Bool)

(declare-fun tp!1175907 () Bool)

(assert (=> b!3879001 (= e!2400071 (and tp_is_empty!19593 tp!1175907))))

(declare-fun b!3879002 () Bool)

(declare-fun res!1571809 () Bool)

(assert (=> b!3879002 (=> (not res!1571809) (not e!2400074))))

(assert (=> b!3879002 (= res!1571809 (not (isEmpty!24490 prefixTokens!80)))))

(declare-fun b!3879003 () Bool)

(declare-fun Unit!59312 () Unit!59305)

(assert (=> b!3879003 (= e!2400105 Unit!59312)))

(declare-fun b!3879004 () Bool)

(declare-fun e!2400096 () Bool)

(assert (=> b!3879004 (= e!2400096 false)))

(declare-fun b!3879005 () Bool)

(declare-fun res!1571837 () Bool)

(assert (=> b!3879005 (=> (not res!1571837) (not e!2400074))))

(declare-fun rulesInvariant!5338 (LexerInterface!5995 List!41371) Bool)

(assert (=> b!3879005 (= res!1571837 (rulesInvariant!5338 thiss!20629 rules!2768))))

(declare-fun b!3879006 () Bool)

(declare-fun e!2400077 () Bool)

(assert (=> b!3879006 (= e!2400077 e!2400073)))

(declare-fun res!1571839 () Bool)

(assert (=> b!3879006 (=> (not res!1571839) (not e!2400073))))

(assert (=> b!3879006 (= res!1571839 ((_ is Some!8823) lt!1353453))))

(assert (=> b!3879006 (= lt!1353453 (maxPrefix!3299 thiss!20629 rules!2768 lt!1353407))))

(declare-fun b!3879007 () Bool)

(declare-fun res!1571818 () Bool)

(assert (=> b!3879007 (=> res!1571818 e!2400103)))

(assert (=> b!3879007 (= res!1571818 (or (not (= lt!1353419 (tuple2!40479 (_1!23373 lt!1353419) (_2!23373 lt!1353419)))) (= (_2!23374 (v!39121 lt!1353453)) suffix!1176)))))

(declare-fun b!3879008 () Bool)

(assert (=> b!3879008 (= e!2400092 (= (size!30985 (_1!23374 (v!39121 lt!1353453))) (size!30986 (originalCharacters!7006 (_1!23374 (v!39121 lt!1353453))))))))

(declare-fun b!3879009 () Bool)

(declare-fun tp!1175910 () Bool)

(assert (=> b!3879009 (= e!2400102 (and tp!1175910 (inv!55398 (tag!7266 (h!46667 rules!2768))) (inv!55402 (transformation!6406 (h!46667 rules!2768))) e!2400094))))

(declare-fun tp!1175913 () Bool)

(declare-fun e!2400108 () Bool)

(declare-fun b!3879010 () Bool)

(assert (=> b!3879010 (= e!2400108 (and tp!1175913 (inv!55398 (tag!7266 (rule!9304 (h!46666 prefixTokens!80)))) (inv!55402 (transformation!6406 (rule!9304 (h!46666 prefixTokens!80)))) e!2400101))))

(declare-fun b!3879011 () Bool)

(declare-fun e!2400067 () Bool)

(declare-fun e!2400065 () Bool)

(assert (=> b!3879011 (= e!2400067 e!2400065)))

(declare-fun res!1571834 () Bool)

(assert (=> b!3879011 (=> res!1571834 e!2400065)))

(assert (=> b!3879011 (= res!1571834 (not (= lt!1353406 (_2!23374 (v!39121 lt!1353453)))))))

(assert (=> b!3879011 (= (_2!23374 (v!39121 lt!1353453)) lt!1353406)))

(declare-fun lt!1353420 () Unit!59305)

(assert (=> b!3879011 (= lt!1353420 (lemmaSamePrefixThenSameSuffix!1726 lt!1353452 (_2!23374 (v!39121 lt!1353453)) lt!1353452 lt!1353406 lt!1353407))))

(declare-fun lt!1353441 () List!41369)

(assert (=> b!3879011 (isPrefix!3505 lt!1353452 lt!1353441)))

(declare-fun lt!1353423 () Unit!59305)

(assert (=> b!3879011 (= lt!1353423 (lemmaConcatTwoListThenFirstIsPrefix!2368 lt!1353452 lt!1353406))))

(declare-fun tp!1175902 () Bool)

(declare-fun b!3879012 () Bool)

(assert (=> b!3879012 (= e!2400093 (and (inv!21 (value!203205 (h!46666 prefixTokens!80))) e!2400108 tp!1175902))))

(declare-fun b!3879013 () Bool)

(declare-fun Unit!59313 () Unit!59305)

(assert (=> b!3879013 (= e!2400084 Unit!59313)))

(declare-fun lt!1353426 () Unit!59305)

(declare-fun lt!1353436 () List!41370)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!66 (LexerInterface!5995 List!41371 List!41369 List!41369 List!41370 List!41369 List!41370) Unit!59305)

(assert (=> b!3879013 (= lt!1353426 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!66 thiss!20629 rules!2768 suffix!1176 (_2!23374 lt!1353431) suffixTokens!72 suffixResult!91 lt!1353436))))

(declare-fun res!1571827 () Bool)

(assert (=> b!3879013 (= res!1571827 (not (= call!282848 (tuple2!40479 (++!10569 lt!1353436 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3879013 (=> (not res!1571827) (not e!2400096))))

(assert (=> b!3879013 e!2400096))

(declare-fun b!3879014 () Bool)

(declare-fun res!1571824 () Bool)

(assert (=> b!3879014 (=> res!1571824 e!2400100)))

(declare-fun head!8234 (List!41370) Token!11950)

(assert (=> b!3879014 (= res!1571824 (not (= (head!8234 prefixTokens!80) (_1!23374 (v!39121 lt!1353453)))))))

(declare-fun b!3879015 () Bool)

(assert (=> b!3879015 (= e!2400099 e!2400067)))

(declare-fun res!1571830 () Bool)

(assert (=> b!3879015 (=> res!1571830 e!2400067)))

(assert (=> b!3879015 (= res!1571830 (or (not (= lt!1353407 lt!1353421)) (not (= lt!1353407 lt!1353441)) (not (= lt!1353429 lt!1353441))))))

(assert (=> b!3879015 (= lt!1353421 lt!1353441)))

(assert (=> b!3879015 (= lt!1353441 (++!10570 lt!1353452 lt!1353406))))

(assert (=> b!3879015 (= lt!1353406 (++!10570 lt!1353408 suffix!1176))))

(declare-fun lt!1353443 () Unit!59305)

(declare-fun lemmaConcatAssociativity!2284 (List!41369 List!41369 List!41369) Unit!59305)

(assert (=> b!3879015 (= lt!1353443 (lemmaConcatAssociativity!2284 lt!1353452 lt!1353408 suffix!1176))))

(declare-fun b!3879016 () Bool)

(declare-fun c!674786 () Bool)

(assert (=> b!3879016 (= c!674786 (isEmpty!24490 lt!1353436))))

(declare-fun tail!5951 (List!41370) List!41370)

(assert (=> b!3879016 (= lt!1353436 (tail!5951 prefixTokens!80))))

(assert (=> b!3879016 (= e!2400087 e!2400084)))

(declare-fun b!3879017 () Bool)

(declare-fun Unit!59314 () Unit!59305)

(assert (=> b!3879017 (= e!2400081 Unit!59314)))

(declare-fun lt!1353405 () Unit!59305)

(assert (=> b!3879017 (= lt!1353405 (lemmaConcatTwoListThenFirstIsPrefix!2368 prefix!426 suffix!1176))))

(assert (=> b!3879017 (isPrefix!3505 prefix!426 lt!1353407)))

(declare-fun lt!1353411 () Unit!59305)

(declare-fun lemmaIsPrefixSameLengthThenSameList!757 (List!41369 List!41369 List!41369) Unit!59305)

(assert (=> b!3879017 (= lt!1353411 (lemmaIsPrefixSameLengthThenSameList!757 lt!1353452 prefix!426 lt!1353407))))

(assert (=> b!3879017 (= lt!1353452 prefix!426)))

(declare-fun lt!1353439 () Unit!59305)

(assert (=> b!3879017 (= lt!1353439 (lemmaSamePrefixThenSameSuffix!1726 lt!1353452 (_2!23374 (v!39121 lt!1353453)) prefix!426 suffix!1176 lt!1353407))))

(assert (=> b!3879017 false))

(declare-fun b!3879018 () Bool)

(declare-fun res!1571825 () Bool)

(assert (=> b!3879018 (=> (not res!1571825) (not e!2400074))))

(assert (=> b!3879018 (= res!1571825 (not (isEmpty!24491 prefix!426)))))

(declare-fun b!3879019 () Bool)

(assert (=> b!3879019 (= e!2400106 e!2400077)))

(declare-fun res!1571823 () Bool)

(assert (=> b!3879019 (=> (not res!1571823) (not e!2400077))))

(assert (=> b!3879019 (= res!1571823 (= (lexList!1763 thiss!20629 rules!2768 suffix!1176) lt!1353410))))

(assert (=> b!3879019 (= lt!1353410 (tuple2!40479 suffixTokens!72 suffixResult!91))))

(declare-fun b!3879020 () Bool)

(declare-fun Unit!59315 () Unit!59305)

(assert (=> b!3879020 (= e!2400105 Unit!59315)))

(declare-fun lt!1353428 () Unit!59305)

(assert (=> b!3879020 (= lt!1353428 (lemmaLexWithSmallerInputCannotProduceSameResults!66 thiss!20629 rules!2768 (_2!23374 (v!39121 lt!1353453)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3879020 false))

(declare-fun b!3879021 () Bool)

(assert (=> b!3879021 (= e!2400089 e!2400098)))

(declare-fun res!1571836 () Bool)

(assert (=> b!3879021 (=> res!1571836 e!2400098)))

(assert (=> b!3879021 (= res!1571836 (not (isPrefix!3505 Nil!41245 suffix!1176)))))

(assert (=> b!3879021 (isPrefix!3505 Nil!41245 (++!10570 Nil!41245 suffix!1176))))

(declare-fun lt!1353409 () Unit!59305)

(assert (=> b!3879021 (= lt!1353409 (lemmaConcatTwoListThenFirstIsPrefix!2368 Nil!41245 suffix!1176))))

(declare-fun b!3879022 () Bool)

(assert (=> b!3879022 (= e!2400065 e!2400078)))

(declare-fun res!1571822 () Bool)

(assert (=> b!3879022 (=> res!1571822 e!2400078)))

(assert (=> b!3879022 (= res!1571822 (not (= lt!1353419 lt!1353425)))))

(assert (=> b!3879022 (= lt!1353425 (tuple2!40479 lt!1353415 suffixResult!91))))

(assert (=> b!3879022 (= lt!1353415 (++!10569 lt!1353414 suffixTokens!72))))

(assert (=> b!3879022 (= lt!1353414 (tail!5951 prefixTokens!80))))

(assert (=> b!3879022 (isPrefix!3505 lt!1353408 lt!1353406)))

(declare-fun lt!1353446 () Unit!59305)

(assert (=> b!3879022 (= lt!1353446 (lemmaConcatTwoListThenFirstIsPrefix!2368 lt!1353408 suffix!1176))))

(assert (= (and start!364152 res!1571819) b!3878996))

(assert (= (and b!3878996 res!1571833) b!3879005))

(assert (= (and b!3879005 res!1571837) b!3879002))

(assert (= (and b!3879002 res!1571809) b!3879018))

(assert (= (and b!3879018 res!1571825) b!3878983))

(assert (= (and b!3878983 res!1571838) b!3879019))

(assert (= (and b!3879019 res!1571823) b!3879006))

(assert (= (and b!3879006 res!1571839) b!3878975))

(assert (= (and b!3878975 res!1571810) b!3879008))

(assert (= (and b!3878975 (not res!1571821)) b!3878970))

(assert (= (and b!3878970 (not res!1571831)) b!3879007))

(assert (= (and b!3879007 (not res!1571818)) b!3878997))

(assert (= (and b!3878997 c!674789) b!3878999))

(assert (= (and b!3878997 (not c!674789)) b!3878985))

(assert (= (and b!3878999 c!674788) b!3879016))

(assert (= (and b!3878999 (not c!674788)) b!3878973))

(assert (= (and b!3879016 c!674786) b!3878988))

(assert (= (and b!3879016 (not c!674786)) b!3879013))

(assert (= (and b!3878988 res!1571832) b!3878992))

(assert (= (and b!3879013 res!1571827) b!3879004))

(assert (= (or b!3878988 b!3879013) bm!282843))

(assert (= (and b!3878997 c!674787) b!3879017))

(assert (= (and b!3878997 (not c!674787)) b!3878989))

(assert (= (and b!3878997 (not res!1571829)) b!3879014))

(assert (= (and b!3879014 (not res!1571824)) b!3878972))

(assert (= (and b!3878972 (not res!1571828)) b!3878971))

(assert (= (and b!3878971 (not res!1571811)) b!3878977))

(assert (= (and b!3878977 (not res!1571814)) b!3879015))

(assert (= (and b!3879015 (not res!1571830)) b!3879011))

(assert (= (and b!3879011 (not res!1571834)) b!3879022))

(assert (= (and b!3879022 (not res!1571822)) b!3878968))

(assert (= (and b!3878968 c!674785) b!3879020))

(assert (= (and b!3878968 (not c!674785)) b!3879003))

(assert (= (and b!3878968 (not res!1571820)) b!3878987))

(assert (= (and b!3878987 (not res!1571826)) b!3878978))

(assert (= (and b!3878978 (not res!1571815)) b!3878974))

(assert (= (and b!3878974 (not res!1571816)) b!3878998))

(assert (= (and b!3878998 (not res!1571817)) b!3878990))

(assert (= (and b!3878990 (not res!1571813)) b!3879021))

(assert (= (and b!3879021 (not res!1571836)) b!3878969))

(assert (= (and b!3878969 (not res!1571835)) b!3878982))

(assert (= (and b!3878982 (not res!1571812)) b!3879000))

(assert (= (and start!364152 ((_ is Cons!41245) suffixResult!91)) b!3878993))

(assert (= (and start!364152 ((_ is Cons!41245) suffix!1176)) b!3879001))

(assert (= b!3879009 b!3878986))

(assert (= b!3878980 b!3879009))

(assert (= (and start!364152 ((_ is Cons!41247) rules!2768)) b!3878980))

(assert (= b!3879010 b!3878991))

(assert (= b!3879012 b!3879010))

(assert (= b!3878979 b!3879012))

(assert (= (and start!364152 ((_ is Cons!41246) prefixTokens!80)) b!3878979))

(assert (= b!3878984 b!3878981))

(assert (= b!3878994 b!3878984))

(assert (= b!3878995 b!3878994))

(assert (= (and start!364152 ((_ is Cons!41246) suffixTokens!72)) b!3878995))

(assert (= (and start!364152 ((_ is Cons!41245) prefix!426)) b!3878976))

(declare-fun m!4437399 () Bool)

(assert (=> b!3879021 m!4437399))

(declare-fun m!4437401 () Bool)

(assert (=> b!3879021 m!4437401))

(assert (=> b!3879021 m!4437401))

(declare-fun m!4437403 () Bool)

(assert (=> b!3879021 m!4437403))

(declare-fun m!4437405 () Bool)

(assert (=> b!3879021 m!4437405))

(declare-fun m!4437407 () Bool)

(assert (=> b!3879018 m!4437407))

(declare-fun m!4437409 () Bool)

(assert (=> b!3878997 m!4437409))

(declare-fun m!4437411 () Bool)

(assert (=> b!3878997 m!4437411))

(declare-fun m!4437413 () Bool)

(assert (=> b!3878972 m!4437413))

(declare-fun m!4437415 () Bool)

(assert (=> b!3878972 m!4437415))

(declare-fun m!4437417 () Bool)

(assert (=> b!3878972 m!4437417))

(declare-fun m!4437419 () Bool)

(assert (=> b!3878972 m!4437419))

(declare-fun m!4437421 () Bool)

(assert (=> b!3878972 m!4437421))

(declare-fun m!4437423 () Bool)

(assert (=> b!3879011 m!4437423))

(declare-fun m!4437425 () Bool)

(assert (=> b!3879011 m!4437425))

(declare-fun m!4437427 () Bool)

(assert (=> b!3879011 m!4437427))

(declare-fun m!4437429 () Bool)

(assert (=> b!3878996 m!4437429))

(declare-fun m!4437431 () Bool)

(assert (=> b!3878990 m!4437431))

(declare-fun m!4437433 () Bool)

(assert (=> b!3879014 m!4437433))

(declare-fun m!4437435 () Bool)

(assert (=> b!3878968 m!4437435))

(declare-fun m!4437437 () Bool)

(assert (=> b!3878968 m!4437437))

(declare-fun m!4437439 () Bool)

(assert (=> b!3878968 m!4437439))

(declare-fun m!4437441 () Bool)

(assert (=> b!3878968 m!4437441))

(assert (=> b!3878968 m!4437435))

(declare-fun m!4437443 () Bool)

(assert (=> b!3878968 m!4437443))

(declare-fun m!4437445 () Bool)

(assert (=> b!3879016 m!4437445))

(declare-fun m!4437447 () Bool)

(assert (=> b!3879016 m!4437447))

(declare-fun m!4437449 () Bool)

(assert (=> b!3878988 m!4437449))

(declare-fun m!4437451 () Bool)

(assert (=> b!3878988 m!4437451))

(assert (=> b!3879017 m!4437417))

(assert (=> b!3879017 m!4437413))

(declare-fun m!4437453 () Bool)

(assert (=> b!3879017 m!4437453))

(declare-fun m!4437455 () Bool)

(assert (=> b!3879017 m!4437455))

(declare-fun m!4437457 () Bool)

(assert (=> b!3878979 m!4437457))

(declare-fun m!4437459 () Bool)

(assert (=> b!3878995 m!4437459))

(declare-fun m!4437461 () Bool)

(assert (=> b!3878971 m!4437461))

(declare-fun m!4437463 () Bool)

(assert (=> b!3878971 m!4437463))

(declare-fun m!4437465 () Bool)

(assert (=> b!3879019 m!4437465))

(declare-fun m!4437467 () Bool)

(assert (=> b!3879006 m!4437467))

(declare-fun m!4437469 () Bool)

(assert (=> b!3878998 m!4437469))

(declare-fun m!4437471 () Bool)

(assert (=> b!3879008 m!4437471))

(declare-fun m!4437473 () Bool)

(assert (=> b!3879015 m!4437473))

(declare-fun m!4437475 () Bool)

(assert (=> b!3879015 m!4437475))

(declare-fun m!4437477 () Bool)

(assert (=> b!3879015 m!4437477))

(declare-fun m!4437479 () Bool)

(assert (=> b!3878994 m!4437479))

(declare-fun m!4437481 () Bool)

(assert (=> b!3878970 m!4437481))

(declare-fun m!4437483 () Bool)

(assert (=> b!3878982 m!4437483))

(declare-fun m!4437485 () Bool)

(assert (=> b!3879010 m!4437485))

(declare-fun m!4437487 () Bool)

(assert (=> b!3879010 m!4437487))

(declare-fun m!4437489 () Bool)

(assert (=> b!3879000 m!4437489))

(declare-fun m!4437491 () Bool)

(assert (=> b!3879000 m!4437491))

(declare-fun m!4437493 () Bool)

(assert (=> b!3879000 m!4437493))

(declare-fun m!4437495 () Bool)

(assert (=> b!3879002 m!4437495))

(declare-fun m!4437497 () Bool)

(assert (=> b!3878977 m!4437497))

(declare-fun m!4437499 () Bool)

(assert (=> b!3879009 m!4437499))

(declare-fun m!4437501 () Bool)

(assert (=> b!3879009 m!4437501))

(declare-fun m!4437503 () Bool)

(assert (=> b!3879005 m!4437503))

(declare-fun m!4437505 () Bool)

(assert (=> b!3879020 m!4437505))

(declare-fun m!4437507 () Bool)

(assert (=> b!3878999 m!4437507))

(declare-fun m!4437509 () Bool)

(assert (=> b!3878999 m!4437509))

(declare-fun m!4437511 () Bool)

(assert (=> b!3878999 m!4437511))

(declare-fun m!4437513 () Bool)

(assert (=> b!3878999 m!4437513))

(declare-fun m!4437515 () Bool)

(assert (=> b!3878999 m!4437515))

(declare-fun m!4437517 () Bool)

(assert (=> b!3878983 m!4437517))

(declare-fun m!4437519 () Bool)

(assert (=> b!3878983 m!4437519))

(declare-fun m!4437521 () Bool)

(assert (=> b!3878983 m!4437521))

(declare-fun m!4437523 () Bool)

(assert (=> b!3878987 m!4437523))

(declare-fun m!4437525 () Bool)

(assert (=> b!3879013 m!4437525))

(declare-fun m!4437527 () Bool)

(assert (=> b!3879013 m!4437527))

(declare-fun m!4437529 () Bool)

(assert (=> b!3878984 m!4437529))

(declare-fun m!4437531 () Bool)

(assert (=> b!3878984 m!4437531))

(declare-fun m!4437533 () Bool)

(assert (=> b!3878975 m!4437533))

(declare-fun m!4437535 () Bool)

(assert (=> b!3878975 m!4437535))

(declare-fun m!4437537 () Bool)

(assert (=> b!3878975 m!4437537))

(declare-fun m!4437539 () Bool)

(assert (=> b!3878975 m!4437539))

(declare-fun m!4437541 () Bool)

(assert (=> b!3878975 m!4437541))

(declare-fun m!4437543 () Bool)

(assert (=> b!3878975 m!4437543))

(assert (=> b!3878975 m!4437541))

(declare-fun m!4437545 () Bool)

(assert (=> b!3878975 m!4437545))

(declare-fun m!4437547 () Bool)

(assert (=> b!3878975 m!4437547))

(declare-fun m!4437549 () Bool)

(assert (=> b!3878975 m!4437549))

(declare-fun m!4437551 () Bool)

(assert (=> b!3878975 m!4437551))

(declare-fun m!4437553 () Bool)

(assert (=> b!3878975 m!4437553))

(declare-fun m!4437555 () Bool)

(assert (=> b!3878975 m!4437555))

(declare-fun m!4437557 () Bool)

(assert (=> b!3878975 m!4437557))

(assert (=> b!3878975 m!4437537))

(declare-fun m!4437559 () Bool)

(assert (=> b!3878975 m!4437559))

(declare-fun m!4437561 () Bool)

(assert (=> b!3878974 m!4437561))

(declare-fun m!4437563 () Bool)

(assert (=> b!3879012 m!4437563))

(declare-fun m!4437565 () Bool)

(assert (=> bm!282843 m!4437565))

(declare-fun m!4437567 () Bool)

(assert (=> b!3879022 m!4437567))

(assert (=> b!3879022 m!4437447))

(declare-fun m!4437569 () Bool)

(assert (=> b!3879022 m!4437569))

(declare-fun m!4437571 () Bool)

(assert (=> b!3879022 m!4437571))

(declare-fun m!4437573 () Bool)

(assert (=> b!3878978 m!4437573))

(declare-fun m!4437575 () Bool)

(assert (=> b!3878978 m!4437575))

(check-sat (not b!3878980) (not b!3878990) (not b!3878974) (not b!3879009) (not b!3879001) b_and!290885 (not b!3878968) b_and!290883 (not b!3879017) (not b!3878993) (not b_next!105695) (not b!3879016) (not b!3879002) (not b!3878996) b_and!290887 tp_is_empty!19593 (not b!3879005) (not b!3878988) (not b!3878970) (not b!3878995) b_and!290889 (not b_next!105693) (not b!3878975) b_and!290891 (not b!3878997) (not b_next!105697) (not b!3878971) (not b!3878983) (not b_next!105699) (not b!3878979) (not b!3878976) (not b!3879008) (not b!3879010) (not b!3879014) (not b!3879011) (not b!3879013) (not b!3878999) (not b!3879015) (not b_next!105701) (not b!3878994) (not b!3878984) (not b!3878978) (not b!3878982) (not b!3879019) (not b!3879022) b_and!290893 (not b!3879020) (not b!3879021) (not b!3878987) (not b!3879018) (not b_next!105703) (not b!3879000) (not b!3879006) (not b!3879012) (not bm!282843) (not b!3878998) (not b!3878972) (not b!3878977))
(check-sat b_and!290887 b_and!290889 (not b_next!105697) (not b_next!105699) b_and!290885 b_and!290883 (not b_next!105701) (not b_next!105695) b_and!290893 (not b_next!105703) (not b_next!105693) b_and!290891)
