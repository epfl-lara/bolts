; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362188 () Bool)

(assert start!362188)

(declare-fun b!3862423 () Bool)

(declare-fun b_free!103933 () Bool)

(declare-fun b_next!104637 () Bool)

(assert (=> b!3862423 (= b_free!103933 (not b_next!104637))))

(declare-fun tp!1170955 () Bool)

(declare-fun b_and!289203 () Bool)

(assert (=> b!3862423 (= tp!1170955 b_and!289203)))

(declare-fun b_free!103935 () Bool)

(declare-fun b_next!104639 () Bool)

(assert (=> b!3862423 (= b_free!103935 (not b_next!104639))))

(declare-fun tp!1170945 () Bool)

(declare-fun b_and!289205 () Bool)

(assert (=> b!3862423 (= tp!1170945 b_and!289205)))

(declare-fun b!3862433 () Bool)

(declare-fun b_free!103937 () Bool)

(declare-fun b_next!104641 () Bool)

(assert (=> b!3862433 (= b_free!103937 (not b_next!104641))))

(declare-fun tp!1170960 () Bool)

(declare-fun b_and!289207 () Bool)

(assert (=> b!3862433 (= tp!1170960 b_and!289207)))

(declare-fun b_free!103939 () Bool)

(declare-fun b_next!104643 () Bool)

(assert (=> b!3862433 (= b_free!103939 (not b_next!104643))))

(declare-fun tp!1170959 () Bool)

(declare-fun b_and!289209 () Bool)

(assert (=> b!3862433 (= tp!1170959 b_and!289209)))

(declare-fun b!3862428 () Bool)

(declare-fun b_free!103941 () Bool)

(declare-fun b_next!104645 () Bool)

(assert (=> b!3862428 (= b_free!103941 (not b_next!104645))))

(declare-fun tp!1170949 () Bool)

(declare-fun b_and!289211 () Bool)

(assert (=> b!3862428 (= tp!1170949 b_and!289211)))

(declare-fun b_free!103943 () Bool)

(declare-fun b_next!104647 () Bool)

(assert (=> b!3862428 (= b_free!103943 (not b_next!104647))))

(declare-fun tp!1170950 () Bool)

(declare-fun b_and!289213 () Bool)

(assert (=> b!3862428 (= tp!1170950 b_and!289213)))

(declare-fun b!3862412 () Bool)

(declare-fun res!1564063 () Bool)

(declare-fun e!2388058 () Bool)

(assert (=> b!3862412 (=> res!1564063 e!2388058)))

(declare-datatypes ((List!41094 0))(
  ( (Nil!40970) (Cons!40970 (h!46390 (_ BitVec 16)) (t!313585 List!41094)) )
))
(declare-datatypes ((TokenValue!6574 0))(
  ( (FloatLiteralValue!13148 (text!46463 List!41094)) (TokenValueExt!6573 (__x!25365 Int)) (Broken!32870 (value!201412 List!41094)) (Object!6697) (End!6574) (Def!6574) (Underscore!6574) (Match!6574) (Else!6574) (Error!6574) (Case!6574) (If!6574) (Extends!6574) (Abstract!6574) (Class!6574) (Val!6574) (DelimiterValue!13148 (del!6634 List!41094)) (KeywordValue!6580 (value!201413 List!41094)) (CommentValue!13148 (value!201414 List!41094)) (WhitespaceValue!13148 (value!201415 List!41094)) (IndentationValue!6574 (value!201416 List!41094)) (String!46587) (Int32!6574) (Broken!32871 (value!201417 List!41094)) (Boolean!6575) (Unit!58628) (OperatorValue!6577 (op!6634 List!41094)) (IdentifierValue!13148 (value!201418 List!41094)) (IdentifierValue!13149 (value!201419 List!41094)) (WhitespaceValue!13149 (value!201420 List!41094)) (True!13148) (False!13148) (Broken!32872 (value!201421 List!41094)) (Broken!32873 (value!201422 List!41094)) (True!13149) (RightBrace!6574) (RightBracket!6574) (Colon!6574) (Null!6574) (Comma!6574) (LeftBracket!6574) (False!13149) (LeftBrace!6574) (ImaginaryLiteralValue!6574 (text!46464 List!41094)) (StringLiteralValue!19722 (value!201423 List!41094)) (EOFValue!6574 (value!201424 List!41094)) (IdentValue!6574 (value!201425 List!41094)) (DelimiterValue!13149 (value!201426 List!41094)) (DedentValue!6574 (value!201427 List!41094)) (NewLineValue!6574 (value!201428 List!41094)) (IntegerValue!19722 (value!201429 (_ BitVec 32)) (text!46465 List!41094)) (IntegerValue!19723 (value!201430 Int) (text!46466 List!41094)) (Times!6574) (Or!6574) (Equal!6574) (Minus!6574) (Broken!32874 (value!201431 List!41094)) (And!6574) (Div!6574) (LessEqual!6574) (Mod!6574) (Concat!17823) (Not!6574) (Plus!6574) (SpaceValue!6574 (value!201432 List!41094)) (IntegerValue!19724 (value!201433 Int) (text!46467 List!41094)) (StringLiteralValue!19723 (text!46468 List!41094)) (FloatLiteralValue!13149 (text!46469 List!41094)) (BytesLiteralValue!6574 (value!201434 List!41094)) (CommentValue!13149 (value!201435 List!41094)) (StringLiteralValue!19724 (value!201436 List!41094)) (ErrorTokenValue!6574 (msg!6635 List!41094)) )
))
(declare-datatypes ((C!22684 0))(
  ( (C!22685 (val!13436 Int)) )
))
(declare-datatypes ((Regex!11249 0))(
  ( (ElementMatch!11249 (c!672354 C!22684)) (Concat!17824 (regOne!23010 Regex!11249) (regTwo!23010 Regex!11249)) (EmptyExpr!11249) (Star!11249 (reg!11578 Regex!11249)) (EmptyLang!11249) (Union!11249 (regOne!23011 Regex!11249) (regTwo!23011 Regex!11249)) )
))
(declare-datatypes ((String!46588 0))(
  ( (String!46589 (value!201437 String)) )
))
(declare-datatypes ((List!41095 0))(
  ( (Nil!40971) (Cons!40971 (h!46391 C!22684) (t!313586 List!41095)) )
))
(declare-datatypes ((IArray!25115 0))(
  ( (IArray!25116 (innerList!12615 List!41095)) )
))
(declare-datatypes ((Conc!12555 0))(
  ( (Node!12555 (left!31541 Conc!12555) (right!31871 Conc!12555) (csize!25340 Int) (cheight!12766 Int)) (Leaf!19434 (xs!15861 IArray!25115) (csize!25341 Int)) (Empty!12555) )
))
(declare-datatypes ((BalanceConc!24704 0))(
  ( (BalanceConc!24705 (c!672355 Conc!12555)) )
))
(declare-datatypes ((TokenValueInjection!12576 0))(
  ( (TokenValueInjection!12577 (toValue!8772 Int) (toChars!8631 Int)) )
))
(declare-datatypes ((Rule!12488 0))(
  ( (Rule!12489 (regex!6344 Regex!11249) (tag!7204 String!46588) (isSeparator!6344 Bool) (transformation!6344 TokenValueInjection!12576)) )
))
(declare-datatypes ((Token!11826 0))(
  ( (Token!11827 (value!201438 TokenValue!6574) (rule!9216 Rule!12488) (size!30809 Int) (originalCharacters!6944 List!41095)) )
))
(declare-datatypes ((List!41096 0))(
  ( (Nil!40972) (Cons!40972 (h!46392 Token!11826) (t!313587 List!41096)) )
))
(declare-datatypes ((tuple2!40178 0))(
  ( (tuple2!40179 (_1!23223 List!41096) (_2!23223 List!41095)) )
))
(declare-fun lt!1342347 () tuple2!40178)

(declare-fun lt!1342343 () tuple2!40178)

(declare-datatypes ((tuple2!40180 0))(
  ( (tuple2!40181 (_1!23224 Token!11826) (_2!23224 List!41095)) )
))
(declare-datatypes ((Option!8762 0))(
  ( (None!8761) (Some!8761 (v!39059 tuple2!40180)) )
))
(declare-fun lt!1342340 () Option!8762)

(declare-fun ++!10445 (List!41096 List!41096) List!41096)

(assert (=> b!3862412 (= res!1564063 (not (= lt!1342343 (tuple2!40179 (++!10445 (Cons!40972 (_1!23224 (v!39059 lt!1342340)) Nil!40972) (_1!23223 lt!1342347)) (_2!23223 lt!1342347)))))))

(declare-fun e!2388064 () Bool)

(declare-fun tp!1170951 () Bool)

(declare-fun prefixTokens!80 () List!41096)

(declare-fun b!3862413 () Bool)

(declare-fun e!2388066 () Bool)

(declare-fun inv!55129 (String!46588) Bool)

(declare-fun inv!55132 (TokenValueInjection!12576) Bool)

(assert (=> b!3862413 (= e!2388064 (and tp!1170951 (inv!55129 (tag!7204 (rule!9216 (h!46392 prefixTokens!80)))) (inv!55132 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) e!2388066))))

(declare-fun e!2388061 () Bool)

(declare-fun tp!1170947 () Bool)

(declare-fun e!2388045 () Bool)

(declare-fun b!3862414 () Bool)

(declare-fun inv!55133 (Token!11826) Bool)

(assert (=> b!3862414 (= e!2388045 (and (inv!55133 (h!46392 prefixTokens!80)) e!2388061 tp!1170947))))

(declare-fun b!3862415 () Bool)

(declare-fun e!2388065 () Bool)

(declare-fun e!2388046 () Bool)

(assert (=> b!3862415 (= e!2388065 e!2388046)))

(declare-fun res!1564078 () Bool)

(assert (=> b!3862415 (=> (not res!1564078) (not e!2388046))))

(declare-fun suffixResult!91 () List!41095)

(declare-fun lt!1342342 () List!41096)

(assert (=> b!3862415 (= res!1564078 (= lt!1342343 (tuple2!40179 lt!1342342 suffixResult!91)))))

(declare-fun lt!1342346 () List!41095)

(declare-datatypes ((LexerInterface!5933 0))(
  ( (LexerInterfaceExt!5930 (__x!25366 Int)) (Lexer!5931) )
))
(declare-fun thiss!20629 () LexerInterface!5933)

(declare-datatypes ((List!41097 0))(
  ( (Nil!40973) (Cons!40973 (h!46393 Rule!12488) (t!313588 List!41097)) )
))
(declare-fun rules!2768 () List!41097)

(declare-fun lexList!1701 (LexerInterface!5933 List!41097 List!41095) tuple2!40178)

(assert (=> b!3862415 (= lt!1342343 (lexList!1701 thiss!20629 rules!2768 lt!1342346))))

(declare-fun suffixTokens!72 () List!41096)

(assert (=> b!3862415 (= lt!1342342 (++!10445 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41095)

(declare-fun suffix!1176 () List!41095)

(declare-fun ++!10446 (List!41095 List!41095) List!41095)

(assert (=> b!3862415 (= lt!1342346 (++!10446 prefix!426 suffix!1176))))

(declare-fun b!3862416 () Bool)

(declare-fun e!2388048 () Bool)

(declare-fun e!2388047 () Bool)

(assert (=> b!3862416 (= e!2388048 e!2388047)))

(declare-fun res!1564074 () Bool)

(assert (=> b!3862416 (=> res!1564074 e!2388047)))

(declare-fun lt!1342325 () Int)

(declare-fun lt!1342326 () Int)

(declare-fun lt!1342331 () Int)

(assert (=> b!3862416 (= res!1564074 (not (= (+ lt!1342331 lt!1342326) lt!1342325)))))

(declare-fun size!30810 (List!41095) Int)

(assert (=> b!3862416 (= lt!1342325 (size!30810 lt!1342346))))

(declare-fun e!2388044 () Bool)

(declare-fun tp!1170957 () Bool)

(declare-fun b!3862417 () Bool)

(declare-fun e!2388071 () Bool)

(assert (=> b!3862417 (= e!2388044 (and tp!1170957 (inv!55129 (tag!7204 (h!46393 rules!2768))) (inv!55132 (transformation!6344 (h!46393 rules!2768))) e!2388071))))

(declare-fun lt!1342335 () tuple2!40180)

(declare-fun call!282564 () tuple2!40178)

(declare-fun bm!282559 () Bool)

(assert (=> bm!282559 (= call!282564 (lexList!1701 thiss!20629 rules!2768 (_2!23224 lt!1342335)))))

(declare-fun b!3862418 () Bool)

(declare-fun e!2388057 () Bool)

(declare-fun e!2388054 () Bool)

(assert (=> b!3862418 (= e!2388057 e!2388054)))

(declare-fun res!1564061 () Bool)

(assert (=> b!3862418 (=> res!1564061 e!2388054)))

(declare-fun head!8152 (List!41096) Token!11826)

(assert (=> b!3862418 (= res!1564061 (not (= (_1!23224 lt!1342335) (head!8152 prefixTokens!80))))))

(declare-fun get!13556 (Option!8762) tuple2!40180)

(assert (=> b!3862418 (= lt!1342335 (get!13556 lt!1342340))))

(declare-fun b!3862419 () Bool)

(declare-fun res!1564076 () Bool)

(assert (=> b!3862419 (=> (not res!1564076) (not e!2388065))))

(declare-fun isEmpty!24278 (List!41095) Bool)

(assert (=> b!3862419 (= res!1564076 (not (isEmpty!24278 prefix!426)))))

(declare-fun b!3862420 () Bool)

(assert (=> b!3862420 (= e!2388058 e!2388048)))

(declare-fun res!1564068 () Bool)

(assert (=> b!3862420 (=> res!1564068 e!2388048)))

(declare-fun lt!1342329 () Int)

(assert (=> b!3862420 (= res!1564068 (>= lt!1342326 lt!1342329))))

(assert (=> b!3862420 (= lt!1342329 (size!30810 suffix!1176))))

(assert (=> b!3862420 (= lt!1342326 (size!30810 (_2!23224 (v!39059 lt!1342340))))))

(declare-fun b!3862421 () Bool)

(declare-fun res!1564066 () Bool)

(assert (=> b!3862421 (=> (not res!1564066) (not e!2388065))))

(declare-fun isEmpty!24279 (List!41097) Bool)

(assert (=> b!3862421 (= res!1564066 (not (isEmpty!24279 rules!2768)))))

(declare-fun e!2388072 () Bool)

(declare-fun e!2388075 () Bool)

(declare-fun b!3862422 () Bool)

(declare-fun tp!1170953 () Bool)

(assert (=> b!3862422 (= e!2388075 (and (inv!55133 (h!46392 suffixTokens!72)) e!2388072 tp!1170953))))

(assert (=> b!3862423 (= e!2388066 (and tp!1170955 tp!1170945))))

(declare-fun b!3862424 () Bool)

(declare-fun e!2388056 () Bool)

(assert (=> b!3862424 (= e!2388047 e!2388056)))

(declare-fun res!1564064 () Bool)

(assert (=> b!3862424 (=> res!1564064 e!2388056)))

(declare-fun lt!1342327 () Int)

(assert (=> b!3862424 (= res!1564064 (or (not (= (+ lt!1342327 lt!1342329) lt!1342325)) (<= lt!1342331 lt!1342327)))))

(assert (=> b!3862424 (= lt!1342327 (size!30810 prefix!426))))

(declare-fun b!3862425 () Bool)

(declare-fun tp!1170956 () Bool)

(declare-fun e!2388076 () Bool)

(declare-fun inv!21 (TokenValue!6574) Bool)

(assert (=> b!3862425 (= e!2388072 (and (inv!21 (value!201438 (h!46392 suffixTokens!72))) e!2388076 tp!1170956))))

(declare-fun b!3862426 () Bool)

(assert (=> b!3862426 (= e!2388056 e!2388057)))

(declare-fun res!1564062 () Bool)

(assert (=> b!3862426 (=> res!1564062 e!2388057)))

(declare-fun lt!1342324 () List!41095)

(declare-fun matchR!5396 (Regex!11249 List!41095) Bool)

(assert (=> b!3862426 (= res!1564062 (not (matchR!5396 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) lt!1342324)))))

(declare-fun lt!1342322 () TokenValue!6574)

(declare-fun maxPrefixOneRule!2319 (LexerInterface!5933 Rule!12488 List!41095) Option!8762)

(assert (=> b!3862426 (= (maxPrefixOneRule!2319 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))) lt!1342346) (Some!8761 (tuple2!40181 (Token!11827 lt!1342322 (rule!9216 (_1!23224 (v!39059 lt!1342340))) lt!1342331 lt!1342324) (_2!23224 (v!39059 lt!1342340)))))))

(declare-datatypes ((Unit!58629 0))(
  ( (Unit!58630) )
))
(declare-fun lt!1342330 () Unit!58629)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1217 (LexerInterface!5933 List!41097 List!41095 List!41095 List!41095 Rule!12488) Unit!58629)

(assert (=> b!3862426 (= lt!1342330 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1217 thiss!20629 rules!2768 lt!1342324 lt!1342346 (_2!23224 (v!39059 lt!1342340)) (rule!9216 (_1!23224 (v!39059 lt!1342340)))))))

(declare-fun b!3862427 () Bool)

(declare-fun e!2388069 () Bool)

(assert (=> b!3862427 (= e!2388069 (not e!2388058))))

(declare-fun res!1564075 () Bool)

(assert (=> b!3862427 (=> res!1564075 e!2388058)))

(declare-fun lt!1342333 () List!41095)

(assert (=> b!3862427 (= res!1564075 (not (= lt!1342333 lt!1342346)))))

(assert (=> b!3862427 (= lt!1342347 (lexList!1701 thiss!20629 rules!2768 (_2!23224 (v!39059 lt!1342340))))))

(declare-fun lt!1342338 () List!41095)

(assert (=> b!3862427 (and (= (size!30809 (_1!23224 (v!39059 lt!1342340))) lt!1342331) (= (originalCharacters!6944 (_1!23224 (v!39059 lt!1342340))) lt!1342324) (= (v!39059 lt!1342340) (tuple2!40181 (Token!11827 lt!1342322 (rule!9216 (_1!23224 (v!39059 lt!1342340))) lt!1342331 lt!1342324) lt!1342338)))))

(assert (=> b!3862427 (= lt!1342331 (size!30810 lt!1342324))))

(declare-fun e!2388074 () Bool)

(assert (=> b!3862427 e!2388074))

(declare-fun res!1564065 () Bool)

(assert (=> b!3862427 (=> (not res!1564065) (not e!2388074))))

(assert (=> b!3862427 (= res!1564065 (= (value!201438 (_1!23224 (v!39059 lt!1342340))) lt!1342322))))

(declare-fun apply!9587 (TokenValueInjection!12576 BalanceConc!24704) TokenValue!6574)

(declare-fun seqFromList!4615 (List!41095) BalanceConc!24704)

(assert (=> b!3862427 (= lt!1342322 (apply!9587 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (seqFromList!4615 lt!1342324)))))

(assert (=> b!3862427 (= (_2!23224 (v!39059 lt!1342340)) lt!1342338)))

(declare-fun lt!1342328 () Unit!58629)

(declare-fun lemmaSamePrefixThenSameSuffix!1664 (List!41095 List!41095 List!41095 List!41095 List!41095) Unit!58629)

(assert (=> b!3862427 (= lt!1342328 (lemmaSamePrefixThenSameSuffix!1664 lt!1342324 (_2!23224 (v!39059 lt!1342340)) lt!1342324 lt!1342338 lt!1342346))))

(declare-fun getSuffix!1898 (List!41095 List!41095) List!41095)

(assert (=> b!3862427 (= lt!1342338 (getSuffix!1898 lt!1342346 lt!1342324))))

(declare-fun isPrefix!3443 (List!41095 List!41095) Bool)

(assert (=> b!3862427 (isPrefix!3443 lt!1342324 lt!1342333)))

(assert (=> b!3862427 (= lt!1342333 (++!10446 lt!1342324 (_2!23224 (v!39059 lt!1342340))))))

(declare-fun lt!1342345 () Unit!58629)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2306 (List!41095 List!41095) Unit!58629)

(assert (=> b!3862427 (= lt!1342345 (lemmaConcatTwoListThenFirstIsPrefix!2306 lt!1342324 (_2!23224 (v!39059 lt!1342340))))))

(declare-fun list!15248 (BalanceConc!24704) List!41095)

(declare-fun charsOf!4172 (Token!11826) BalanceConc!24704)

(assert (=> b!3862427 (= lt!1342324 (list!15248 (charsOf!4172 (_1!23224 (v!39059 lt!1342340)))))))

(declare-fun ruleValid!2296 (LexerInterface!5933 Rule!12488) Bool)

(assert (=> b!3862427 (ruleValid!2296 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))

(declare-fun lt!1342332 () Unit!58629)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1376 (LexerInterface!5933 Rule!12488 List!41097) Unit!58629)

(assert (=> b!3862427 (= lt!1342332 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1376 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))) rules!2768))))

(declare-fun lt!1342334 () Unit!58629)

(declare-fun lemmaCharactersSize!1005 (Token!11826) Unit!58629)

(assert (=> b!3862427 (= lt!1342334 (lemmaCharactersSize!1005 (_1!23224 (v!39059 lt!1342340))))))

(assert (=> b!3862428 (= e!2388071 (and tp!1170949 tp!1170950))))

(declare-fun b!3862429 () Bool)

(declare-fun rulesValidInductive!2264 (LexerInterface!5933 List!41097) Bool)

(assert (=> b!3862429 (= e!2388054 (rulesValidInductive!2264 thiss!20629 rules!2768))))

(declare-fun lt!1342337 () Unit!58629)

(declare-fun e!2388051 () Unit!58629)

(assert (=> b!3862429 (= lt!1342337 e!2388051)))

(declare-fun c!672353 () Bool)

(assert (=> b!3862429 (= c!672353 (< (size!30810 (_2!23224 lt!1342335)) lt!1342329))))

(declare-fun b!3862430 () Bool)

(declare-fun Unit!58631 () Unit!58629)

(assert (=> b!3862430 (= e!2388051 Unit!58631)))

(declare-fun tp!1170946 () Bool)

(declare-fun b!3862431 () Bool)

(declare-fun e!2388063 () Bool)

(assert (=> b!3862431 (= e!2388076 (and tp!1170946 (inv!55129 (tag!7204 (rule!9216 (h!46392 suffixTokens!72)))) (inv!55132 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) e!2388063))))

(declare-fun b!3862432 () Bool)

(declare-fun e!2388050 () Bool)

(assert (=> b!3862432 (= e!2388046 e!2388050)))

(declare-fun res!1564069 () Bool)

(assert (=> b!3862432 (=> (not res!1564069) (not e!2388050))))

(declare-fun lt!1342341 () tuple2!40178)

(assert (=> b!3862432 (= res!1564069 (= (lexList!1701 thiss!20629 rules!2768 suffix!1176) lt!1342341))))

(assert (=> b!3862432 (= lt!1342341 (tuple2!40179 suffixTokens!72 suffixResult!91))))

(assert (=> b!3862433 (= e!2388063 (and tp!1170960 tp!1170959))))

(declare-fun b!3862434 () Bool)

(declare-fun e!2388073 () Bool)

(declare-fun tp_is_empty!19469 () Bool)

(declare-fun tp!1170954 () Bool)

(assert (=> b!3862434 (= e!2388073 (and tp_is_empty!19469 tp!1170954))))

(declare-fun tp!1170948 () Bool)

(declare-fun b!3862435 () Bool)

(assert (=> b!3862435 (= e!2388061 (and (inv!21 (value!201438 (h!46392 prefixTokens!80))) e!2388064 tp!1170948))))

(declare-fun b!3862436 () Bool)

(declare-fun e!2388068 () Bool)

(declare-fun tp!1170952 () Bool)

(assert (=> b!3862436 (= e!2388068 (and tp_is_empty!19469 tp!1170952))))

(declare-fun b!3862437 () Bool)

(assert (=> b!3862437 (= e!2388074 (= (size!30809 (_1!23224 (v!39059 lt!1342340))) (size!30810 (originalCharacters!6944 (_1!23224 (v!39059 lt!1342340))))))))

(declare-fun b!3862438 () Bool)

(declare-fun e!2388070 () Unit!58629)

(assert (=> b!3862438 (= e!2388051 e!2388070)))

(declare-fun lt!1342344 () List!41096)

(declare-fun tail!5863 (List!41096) List!41096)

(assert (=> b!3862438 (= lt!1342344 (tail!5863 prefixTokens!80))))

(declare-fun c!672352 () Bool)

(declare-fun isEmpty!24280 (List!41096) Bool)

(assert (=> b!3862438 (= c!672352 (isEmpty!24280 lt!1342344))))

(declare-fun b!3862439 () Bool)

(declare-fun e!2388043 () Bool)

(declare-fun tp!1170944 () Bool)

(assert (=> b!3862439 (= e!2388043 (and e!2388044 tp!1170944))))

(declare-fun b!3862440 () Bool)

(declare-fun e!2388053 () Bool)

(assert (=> b!3862440 e!2388053))

(declare-fun res!1564070 () Bool)

(assert (=> b!3862440 (=> (not res!1564070) (not e!2388053))))

(assert (=> b!3862440 (= res!1564070 (not (= call!282564 lt!1342341)))))

(declare-fun lt!1342339 () Unit!58629)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!4 (LexerInterface!5933 List!41097 List!41095 List!41095 List!41096 List!41095) Unit!58629)

(assert (=> b!3862440 (= lt!1342339 (lemmaLexWithSmallerInputCannotProduceSameResults!4 thiss!20629 rules!2768 suffix!1176 (_2!23224 lt!1342335) suffixTokens!72 suffixResult!91))))

(assert (=> b!3862440 (= (_2!23224 (v!39059 lt!1342340)) (_2!23224 lt!1342335))))

(declare-fun lt!1342323 () Unit!58629)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!428 (List!41095 List!41095 List!41095 List!41095) Unit!58629)

(assert (=> b!3862440 (= lt!1342323 (lemmaConcatSameAndSameSizesThenSameLists!428 lt!1342324 (_2!23224 (v!39059 lt!1342340)) lt!1342324 (_2!23224 lt!1342335)))))

(declare-fun Unit!58632 () Unit!58629)

(assert (=> b!3862440 (= e!2388070 Unit!58632)))

(declare-fun b!3862441 () Bool)

(declare-fun e!2388055 () Bool)

(declare-fun tp!1170958 () Bool)

(assert (=> b!3862441 (= e!2388055 (and tp_is_empty!19469 tp!1170958))))

(declare-fun b!3862442 () Bool)

(declare-fun res!1564077 () Bool)

(assert (=> b!3862442 (=> (not res!1564077) (not e!2388065))))

(assert (=> b!3862442 (= res!1564077 (not (isEmpty!24280 prefixTokens!80)))))

(declare-fun b!3862443 () Bool)

(declare-fun e!2388049 () Bool)

(assert (=> b!3862443 (= e!2388049 false)))

(declare-fun b!3862444 () Bool)

(declare-fun res!1564067 () Bool)

(assert (=> b!3862444 (=> res!1564067 e!2388058)))

(assert (=> b!3862444 (= res!1564067 (or (not (= lt!1342347 (tuple2!40179 (_1!23223 lt!1342347) (_2!23223 lt!1342347)))) (= (_2!23224 (v!39059 lt!1342340)) suffix!1176)))))

(declare-fun b!3862445 () Bool)

(assert (=> b!3862445 (= e!2388050 e!2388069)))

(declare-fun res!1564079 () Bool)

(assert (=> b!3862445 (=> (not res!1564079) (not e!2388069))))

(get-info :version)

(assert (=> b!3862445 (= res!1564079 ((_ is Some!8761) lt!1342340))))

(declare-fun maxPrefix!3237 (LexerInterface!5933 List!41097 List!41095) Option!8762)

(assert (=> b!3862445 (= lt!1342340 (maxPrefix!3237 thiss!20629 rules!2768 lt!1342346))))

(declare-fun res!1564073 () Bool)

(assert (=> start!362188 (=> (not res!1564073) (not e!2388065))))

(assert (=> start!362188 (= res!1564073 ((_ is Lexer!5931) thiss!20629))))

(assert (=> start!362188 e!2388065))

(assert (=> start!362188 e!2388073))

(assert (=> start!362188 true))

(assert (=> start!362188 e!2388068))

(assert (=> start!362188 e!2388043))

(assert (=> start!362188 e!2388045))

(assert (=> start!362188 e!2388075))

(assert (=> start!362188 e!2388055))

(declare-fun b!3862446 () Bool)

(assert (=> b!3862446 e!2388049))

(declare-fun res!1564072 () Bool)

(assert (=> b!3862446 (=> (not res!1564072) (not e!2388049))))

(assert (=> b!3862446 (= res!1564072 (not (= call!282564 (tuple2!40179 (++!10445 lt!1342344 suffixTokens!72) suffixResult!91))))))

(declare-fun lt!1342336 () Unit!58629)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!4 (LexerInterface!5933 List!41097 List!41095 List!41095 List!41096 List!41095 List!41096) Unit!58629)

(assert (=> b!3862446 (= lt!1342336 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!4 thiss!20629 rules!2768 suffix!1176 (_2!23224 lt!1342335) suffixTokens!72 suffixResult!91 lt!1342344))))

(declare-fun Unit!58633 () Unit!58629)

(assert (=> b!3862446 (= e!2388070 Unit!58633)))

(declare-fun b!3862447 () Bool)

(assert (=> b!3862447 (= e!2388053 false)))

(declare-fun b!3862448 () Bool)

(declare-fun res!1564071 () Bool)

(assert (=> b!3862448 (=> (not res!1564071) (not e!2388065))))

(declare-fun rulesInvariant!5276 (LexerInterface!5933 List!41097) Bool)

(assert (=> b!3862448 (= res!1564071 (rulesInvariant!5276 thiss!20629 rules!2768))))

(assert (= (and start!362188 res!1564073) b!3862421))

(assert (= (and b!3862421 res!1564066) b!3862448))

(assert (= (and b!3862448 res!1564071) b!3862442))

(assert (= (and b!3862442 res!1564077) b!3862419))

(assert (= (and b!3862419 res!1564076) b!3862415))

(assert (= (and b!3862415 res!1564078) b!3862432))

(assert (= (and b!3862432 res!1564069) b!3862445))

(assert (= (and b!3862445 res!1564079) b!3862427))

(assert (= (and b!3862427 res!1564065) b!3862437))

(assert (= (and b!3862427 (not res!1564075)) b!3862412))

(assert (= (and b!3862412 (not res!1564063)) b!3862444))

(assert (= (and b!3862444 (not res!1564067)) b!3862420))

(assert (= (and b!3862420 (not res!1564068)) b!3862416))

(assert (= (and b!3862416 (not res!1564074)) b!3862424))

(assert (= (and b!3862424 (not res!1564064)) b!3862426))

(assert (= (and b!3862426 (not res!1564062)) b!3862418))

(assert (= (and b!3862418 (not res!1564061)) b!3862429))

(assert (= (and b!3862429 c!672353) b!3862438))

(assert (= (and b!3862429 (not c!672353)) b!3862430))

(assert (= (and b!3862438 c!672352) b!3862440))

(assert (= (and b!3862438 (not c!672352)) b!3862446))

(assert (= (and b!3862440 res!1564070) b!3862447))

(assert (= (and b!3862446 res!1564072) b!3862443))

(assert (= (or b!3862440 b!3862446) bm!282559))

(assert (= (and start!362188 ((_ is Cons!40971) suffixResult!91)) b!3862434))

(assert (= (and start!362188 ((_ is Cons!40971) suffix!1176)) b!3862436))

(assert (= b!3862417 b!3862428))

(assert (= b!3862439 b!3862417))

(assert (= (and start!362188 ((_ is Cons!40973) rules!2768)) b!3862439))

(assert (= b!3862413 b!3862423))

(assert (= b!3862435 b!3862413))

(assert (= b!3862414 b!3862435))

(assert (= (and start!362188 ((_ is Cons!40972) prefixTokens!80)) b!3862414))

(assert (= b!3862431 b!3862433))

(assert (= b!3862425 b!3862431))

(assert (= b!3862422 b!3862425))

(assert (= (and start!362188 ((_ is Cons!40972) suffixTokens!72)) b!3862422))

(assert (= (and start!362188 ((_ is Cons!40971) prefix!426)) b!3862441))

(declare-fun m!4417835 () Bool)

(assert (=> b!3862424 m!4417835))

(declare-fun m!4417837 () Bool)

(assert (=> b!3862432 m!4417837))

(declare-fun m!4417839 () Bool)

(assert (=> b!3862413 m!4417839))

(declare-fun m!4417841 () Bool)

(assert (=> b!3862413 m!4417841))

(declare-fun m!4417843 () Bool)

(assert (=> b!3862438 m!4417843))

(declare-fun m!4417845 () Bool)

(assert (=> b!3862438 m!4417845))

(declare-fun m!4417847 () Bool)

(assert (=> b!3862426 m!4417847))

(declare-fun m!4417849 () Bool)

(assert (=> b!3862426 m!4417849))

(declare-fun m!4417851 () Bool)

(assert (=> b!3862426 m!4417851))

(declare-fun m!4417853 () Bool)

(assert (=> b!3862429 m!4417853))

(declare-fun m!4417855 () Bool)

(assert (=> b!3862429 m!4417855))

(declare-fun m!4417857 () Bool)

(assert (=> b!3862415 m!4417857))

(declare-fun m!4417859 () Bool)

(assert (=> b!3862415 m!4417859))

(declare-fun m!4417861 () Bool)

(assert (=> b!3862415 m!4417861))

(declare-fun m!4417863 () Bool)

(assert (=> b!3862420 m!4417863))

(declare-fun m!4417865 () Bool)

(assert (=> b!3862420 m!4417865))

(declare-fun m!4417867 () Bool)

(assert (=> b!3862417 m!4417867))

(declare-fun m!4417869 () Bool)

(assert (=> b!3862417 m!4417869))

(declare-fun m!4417871 () Bool)

(assert (=> b!3862421 m!4417871))

(declare-fun m!4417873 () Bool)

(assert (=> b!3862422 m!4417873))

(declare-fun m!4417875 () Bool)

(assert (=> b!3862416 m!4417875))

(declare-fun m!4417877 () Bool)

(assert (=> b!3862418 m!4417877))

(declare-fun m!4417879 () Bool)

(assert (=> b!3862418 m!4417879))

(declare-fun m!4417881 () Bool)

(assert (=> b!3862437 m!4417881))

(declare-fun m!4417883 () Bool)

(assert (=> b!3862425 m!4417883))

(declare-fun m!4417885 () Bool)

(assert (=> bm!282559 m!4417885))

(declare-fun m!4417887 () Bool)

(assert (=> b!3862435 m!4417887))

(declare-fun m!4417889 () Bool)

(assert (=> b!3862446 m!4417889))

(declare-fun m!4417891 () Bool)

(assert (=> b!3862446 m!4417891))

(declare-fun m!4417893 () Bool)

(assert (=> b!3862419 m!4417893))

(declare-fun m!4417895 () Bool)

(assert (=> b!3862431 m!4417895))

(declare-fun m!4417897 () Bool)

(assert (=> b!3862431 m!4417897))

(declare-fun m!4417899 () Bool)

(assert (=> b!3862448 m!4417899))

(declare-fun m!4417901 () Bool)

(assert (=> b!3862427 m!4417901))

(declare-fun m!4417903 () Bool)

(assert (=> b!3862427 m!4417903))

(declare-fun m!4417905 () Bool)

(assert (=> b!3862427 m!4417905))

(declare-fun m!4417907 () Bool)

(assert (=> b!3862427 m!4417907))

(declare-fun m!4417909 () Bool)

(assert (=> b!3862427 m!4417909))

(declare-fun m!4417911 () Bool)

(assert (=> b!3862427 m!4417911))

(declare-fun m!4417913 () Bool)

(assert (=> b!3862427 m!4417913))

(declare-fun m!4417915 () Bool)

(assert (=> b!3862427 m!4417915))

(assert (=> b!3862427 m!4417911))

(declare-fun m!4417917 () Bool)

(assert (=> b!3862427 m!4417917))

(declare-fun m!4417919 () Bool)

(assert (=> b!3862427 m!4417919))

(declare-fun m!4417921 () Bool)

(assert (=> b!3862427 m!4417921))

(declare-fun m!4417923 () Bool)

(assert (=> b!3862427 m!4417923))

(declare-fun m!4417925 () Bool)

(assert (=> b!3862427 m!4417925))

(declare-fun m!4417927 () Bool)

(assert (=> b!3862427 m!4417927))

(assert (=> b!3862427 m!4417921))

(declare-fun m!4417929 () Bool)

(assert (=> b!3862412 m!4417929))

(declare-fun m!4417931 () Bool)

(assert (=> b!3862414 m!4417931))

(declare-fun m!4417933 () Bool)

(assert (=> b!3862442 m!4417933))

(declare-fun m!4417935 () Bool)

(assert (=> b!3862440 m!4417935))

(declare-fun m!4417937 () Bool)

(assert (=> b!3862440 m!4417937))

(declare-fun m!4417939 () Bool)

(assert (=> b!3862445 m!4417939))

(check-sat b_and!289207 (not b!3862420) (not b!3862426) b_and!289209 b_and!289203 (not b!3862427) (not b!3862415) (not b!3862412) (not b!3862424) (not b!3862441) (not b!3862440) (not b!3862434) (not b!3862448) (not b!3862432) (not b!3862418) (not b!3862437) (not b!3862431) (not b!3862445) (not b!3862436) (not b_next!104637) (not b!3862442) (not b_next!104645) (not b_next!104639) (not b!3862416) (not bm!282559) (not b!3862439) b_and!289211 b_and!289205 (not b!3862425) (not b!3862414) (not b_next!104641) (not b!3862421) (not b!3862446) (not b!3862413) b_and!289213 (not b!3862419) (not b_next!104643) (not b!3862438) (not b!3862429) (not b_next!104647) tp_is_empty!19469 (not b!3862422) (not b!3862435) (not b!3862417))
(check-sat b_and!289207 (not b_next!104637) b_and!289209 b_and!289203 b_and!289211 b_and!289205 (not b_next!104641) (not b_next!104647) (not b_next!104645) (not b_next!104639) b_and!289213 (not b_next!104643))
(get-model)

(declare-fun e!2388086 () Bool)

(declare-fun lt!1342352 () List!41096)

(declare-fun b!3862464 () Bool)

(assert (=> b!3862464 (= e!2388086 (or (not (= (_1!23223 lt!1342347) Nil!40972)) (= lt!1342352 (Cons!40972 (_1!23224 (v!39059 lt!1342340)) Nil!40972))))))

(declare-fun b!3862463 () Bool)

(declare-fun res!1564095 () Bool)

(assert (=> b!3862463 (=> (not res!1564095) (not e!2388086))))

(declare-fun size!30813 (List!41096) Int)

(assert (=> b!3862463 (= res!1564095 (= (size!30813 lt!1342352) (+ (size!30813 (Cons!40972 (_1!23224 (v!39059 lt!1342340)) Nil!40972)) (size!30813 (_1!23223 lt!1342347)))))))

(declare-fun b!3862461 () Bool)

(declare-fun e!2388085 () List!41096)

(assert (=> b!3862461 (= e!2388085 (_1!23223 lt!1342347))))

(declare-fun b!3862462 () Bool)

(assert (=> b!3862462 (= e!2388085 (Cons!40972 (h!46392 (Cons!40972 (_1!23224 (v!39059 lt!1342340)) Nil!40972)) (++!10445 (t!313587 (Cons!40972 (_1!23224 (v!39059 lt!1342340)) Nil!40972)) (_1!23223 lt!1342347))))))

(declare-fun d!1144621 () Bool)

(assert (=> d!1144621 e!2388086))

(declare-fun res!1564096 () Bool)

(assert (=> d!1144621 (=> (not res!1564096) (not e!2388086))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6112 (List!41096) (InoxSet Token!11826))

(assert (=> d!1144621 (= res!1564096 (= (content!6112 lt!1342352) ((_ map or) (content!6112 (Cons!40972 (_1!23224 (v!39059 lt!1342340)) Nil!40972)) (content!6112 (_1!23223 lt!1342347)))))))

(assert (=> d!1144621 (= lt!1342352 e!2388085)))

(declare-fun c!672358 () Bool)

(assert (=> d!1144621 (= c!672358 ((_ is Nil!40972) (Cons!40972 (_1!23224 (v!39059 lt!1342340)) Nil!40972)))))

(assert (=> d!1144621 (= (++!10445 (Cons!40972 (_1!23224 (v!39059 lt!1342340)) Nil!40972) (_1!23223 lt!1342347)) lt!1342352)))

(assert (= (and d!1144621 c!672358) b!3862461))

(assert (= (and d!1144621 (not c!672358)) b!3862462))

(assert (= (and d!1144621 res!1564096) b!3862463))

(assert (= (and b!3862463 res!1564095) b!3862464))

(declare-fun m!4417941 () Bool)

(assert (=> b!3862463 m!4417941))

(declare-fun m!4417943 () Bool)

(assert (=> b!3862463 m!4417943))

(declare-fun m!4417945 () Bool)

(assert (=> b!3862463 m!4417945))

(declare-fun m!4417947 () Bool)

(assert (=> b!3862462 m!4417947))

(declare-fun m!4417949 () Bool)

(assert (=> d!1144621 m!4417949))

(declare-fun m!4417951 () Bool)

(assert (=> d!1144621 m!4417951))

(declare-fun m!4417953 () Bool)

(assert (=> d!1144621 m!4417953))

(assert (=> b!3862412 d!1144621))

(declare-fun d!1144623 () Bool)

(declare-fun e!2388094 () Bool)

(assert (=> d!1144623 e!2388094))

(declare-fun c!672364 () Bool)

(declare-fun lt!1342360 () tuple2!40178)

(assert (=> d!1144623 (= c!672364 (> (size!30813 (_1!23223 lt!1342360)) 0))))

(declare-fun e!2388095 () tuple2!40178)

(assert (=> d!1144623 (= lt!1342360 e!2388095)))

(declare-fun c!672363 () Bool)

(declare-fun lt!1342361 () Option!8762)

(assert (=> d!1144623 (= c!672363 ((_ is Some!8761) lt!1342361))))

(assert (=> d!1144623 (= lt!1342361 (maxPrefix!3237 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1144623 (= (lexList!1701 thiss!20629 rules!2768 suffix!1176) lt!1342360)))

(declare-fun b!3862475 () Bool)

(assert (=> b!3862475 (= e!2388094 (= (_2!23223 lt!1342360) suffix!1176))))

(declare-fun b!3862476 () Bool)

(declare-fun lt!1342359 () tuple2!40178)

(assert (=> b!3862476 (= e!2388095 (tuple2!40179 (Cons!40972 (_1!23224 (v!39059 lt!1342361)) (_1!23223 lt!1342359)) (_2!23223 lt!1342359)))))

(assert (=> b!3862476 (= lt!1342359 (lexList!1701 thiss!20629 rules!2768 (_2!23224 (v!39059 lt!1342361))))))

(declare-fun b!3862477 () Bool)

(declare-fun e!2388093 () Bool)

(assert (=> b!3862477 (= e!2388094 e!2388093)))

(declare-fun res!1564099 () Bool)

(assert (=> b!3862477 (= res!1564099 (< (size!30810 (_2!23223 lt!1342360)) (size!30810 suffix!1176)))))

(assert (=> b!3862477 (=> (not res!1564099) (not e!2388093))))

(declare-fun b!3862478 () Bool)

(assert (=> b!3862478 (= e!2388093 (not (isEmpty!24280 (_1!23223 lt!1342360))))))

(declare-fun b!3862479 () Bool)

(assert (=> b!3862479 (= e!2388095 (tuple2!40179 Nil!40972 suffix!1176))))

(assert (= (and d!1144623 c!672363) b!3862476))

(assert (= (and d!1144623 (not c!672363)) b!3862479))

(assert (= (and d!1144623 c!672364) b!3862477))

(assert (= (and d!1144623 (not c!672364)) b!3862475))

(assert (= (and b!3862477 res!1564099) b!3862478))

(declare-fun m!4417955 () Bool)

(assert (=> d!1144623 m!4417955))

(declare-fun m!4417957 () Bool)

(assert (=> d!1144623 m!4417957))

(declare-fun m!4417959 () Bool)

(assert (=> b!3862476 m!4417959))

(declare-fun m!4417961 () Bool)

(assert (=> b!3862477 m!4417961))

(assert (=> b!3862477 m!4417863))

(declare-fun m!4417963 () Bool)

(assert (=> b!3862478 m!4417963))

(assert (=> b!3862432 d!1144623))

(declare-fun d!1144625 () Bool)

(assert (=> d!1144625 (= (inv!55129 (tag!7204 (rule!9216 (h!46392 prefixTokens!80)))) (= (mod (str.len (value!201437 (tag!7204 (rule!9216 (h!46392 prefixTokens!80))))) 2) 0))))

(assert (=> b!3862413 d!1144625))

(declare-fun d!1144627 () Bool)

(declare-fun res!1564102 () Bool)

(declare-fun e!2388098 () Bool)

(assert (=> d!1144627 (=> (not res!1564102) (not e!2388098))))

(declare-fun semiInverseModEq!2721 (Int Int) Bool)

(assert (=> d!1144627 (= res!1564102 (semiInverseModEq!2721 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (toValue!8772 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80))))))))

(assert (=> d!1144627 (= (inv!55132 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) e!2388098)))

(declare-fun b!3862482 () Bool)

(declare-fun equivClasses!2620 (Int Int) Bool)

(assert (=> b!3862482 (= e!2388098 (equivClasses!2620 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (toValue!8772 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80))))))))

(assert (= (and d!1144627 res!1564102) b!3862482))

(declare-fun m!4417965 () Bool)

(assert (=> d!1144627 m!4417965))

(declare-fun m!4417967 () Bool)

(assert (=> b!3862482 m!4417967))

(assert (=> b!3862413 d!1144627))

(declare-fun d!1144629 () Bool)

(declare-fun res!1564107 () Bool)

(declare-fun e!2388101 () Bool)

(assert (=> d!1144629 (=> (not res!1564107) (not e!2388101))))

(assert (=> d!1144629 (= res!1564107 (not (isEmpty!24278 (originalCharacters!6944 (h!46392 prefixTokens!80)))))))

(assert (=> d!1144629 (= (inv!55133 (h!46392 prefixTokens!80)) e!2388101)))

(declare-fun b!3862487 () Bool)

(declare-fun res!1564108 () Bool)

(assert (=> b!3862487 (=> (not res!1564108) (not e!2388101))))

(declare-fun dynLambda!17665 (Int TokenValue!6574) BalanceConc!24704)

(assert (=> b!3862487 (= res!1564108 (= (originalCharacters!6944 (h!46392 prefixTokens!80)) (list!15248 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (value!201438 (h!46392 prefixTokens!80))))))))

(declare-fun b!3862488 () Bool)

(assert (=> b!3862488 (= e!2388101 (= (size!30809 (h!46392 prefixTokens!80)) (size!30810 (originalCharacters!6944 (h!46392 prefixTokens!80)))))))

(assert (= (and d!1144629 res!1564107) b!3862487))

(assert (= (and b!3862487 res!1564108) b!3862488))

(declare-fun b_lambda!112887 () Bool)

(assert (=> (not b_lambda!112887) (not b!3862487)))

(declare-fun t!313590 () Bool)

(declare-fun tb!223793 () Bool)

(assert (=> (and b!3862423 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80))))) t!313590) tb!223793))

(declare-fun b!3862493 () Bool)

(declare-fun e!2388104 () Bool)

(declare-fun tp!1170963 () Bool)

(declare-fun inv!55136 (Conc!12555) Bool)

(assert (=> b!3862493 (= e!2388104 (and (inv!55136 (c!672355 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (value!201438 (h!46392 prefixTokens!80))))) tp!1170963))))

(declare-fun result!272554 () Bool)

(declare-fun inv!55137 (BalanceConc!24704) Bool)

(assert (=> tb!223793 (= result!272554 (and (inv!55137 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (value!201438 (h!46392 prefixTokens!80)))) e!2388104))))

(assert (= tb!223793 b!3862493))

(declare-fun m!4417969 () Bool)

(assert (=> b!3862493 m!4417969))

(declare-fun m!4417971 () Bool)

(assert (=> tb!223793 m!4417971))

(assert (=> b!3862487 t!313590))

(declare-fun b_and!289215 () Bool)

(assert (= b_and!289205 (and (=> t!313590 result!272554) b_and!289215)))

(declare-fun t!313592 () Bool)

(declare-fun tb!223795 () Bool)

(assert (=> (and b!3862433 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80))))) t!313592) tb!223795))

(declare-fun result!272558 () Bool)

(assert (= result!272558 result!272554))

(assert (=> b!3862487 t!313592))

(declare-fun b_and!289217 () Bool)

(assert (= b_and!289209 (and (=> t!313592 result!272558) b_and!289217)))

(declare-fun tb!223797 () Bool)

(declare-fun t!313594 () Bool)

(assert (=> (and b!3862428 (= (toChars!8631 (transformation!6344 (h!46393 rules!2768))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80))))) t!313594) tb!223797))

(declare-fun result!272560 () Bool)

(assert (= result!272560 result!272554))

(assert (=> b!3862487 t!313594))

(declare-fun b_and!289219 () Bool)

(assert (= b_and!289213 (and (=> t!313594 result!272560) b_and!289219)))

(declare-fun m!4417973 () Bool)

(assert (=> d!1144629 m!4417973))

(declare-fun m!4417975 () Bool)

(assert (=> b!3862487 m!4417975))

(assert (=> b!3862487 m!4417975))

(declare-fun m!4417977 () Bool)

(assert (=> b!3862487 m!4417977))

(declare-fun m!4417979 () Bool)

(assert (=> b!3862488 m!4417979))

(assert (=> b!3862414 d!1144629))

(declare-fun b!3862504 () Bool)

(declare-fun res!1564111 () Bool)

(declare-fun e!2388113 () Bool)

(assert (=> b!3862504 (=> res!1564111 e!2388113)))

(assert (=> b!3862504 (= res!1564111 (not ((_ is IntegerValue!19724) (value!201438 (h!46392 prefixTokens!80)))))))

(declare-fun e!2388112 () Bool)

(assert (=> b!3862504 (= e!2388112 e!2388113)))

(declare-fun b!3862505 () Bool)

(declare-fun inv!17 (TokenValue!6574) Bool)

(assert (=> b!3862505 (= e!2388112 (inv!17 (value!201438 (h!46392 prefixTokens!80))))))

(declare-fun b!3862506 () Bool)

(declare-fun inv!15 (TokenValue!6574) Bool)

(assert (=> b!3862506 (= e!2388113 (inv!15 (value!201438 (h!46392 prefixTokens!80))))))

(declare-fun d!1144631 () Bool)

(declare-fun c!672369 () Bool)

(assert (=> d!1144631 (= c!672369 ((_ is IntegerValue!19722) (value!201438 (h!46392 prefixTokens!80))))))

(declare-fun e!2388111 () Bool)

(assert (=> d!1144631 (= (inv!21 (value!201438 (h!46392 prefixTokens!80))) e!2388111)))

(declare-fun b!3862507 () Bool)

(assert (=> b!3862507 (= e!2388111 e!2388112)))

(declare-fun c!672370 () Bool)

(assert (=> b!3862507 (= c!672370 ((_ is IntegerValue!19723) (value!201438 (h!46392 prefixTokens!80))))))

(declare-fun b!3862508 () Bool)

(declare-fun inv!16 (TokenValue!6574) Bool)

(assert (=> b!3862508 (= e!2388111 (inv!16 (value!201438 (h!46392 prefixTokens!80))))))

(assert (= (and d!1144631 c!672369) b!3862508))

(assert (= (and d!1144631 (not c!672369)) b!3862507))

(assert (= (and b!3862507 c!672370) b!3862505))

(assert (= (and b!3862507 (not c!672370)) b!3862504))

(assert (= (and b!3862504 (not res!1564111)) b!3862506))

(declare-fun m!4417981 () Bool)

(assert (=> b!3862505 m!4417981))

(declare-fun m!4417983 () Bool)

(assert (=> b!3862506 m!4417983))

(declare-fun m!4417985 () Bool)

(assert (=> b!3862508 m!4417985))

(assert (=> b!3862435 d!1144631))

(declare-fun d!1144633 () Bool)

(declare-fun e!2388115 () Bool)

(assert (=> d!1144633 e!2388115))

(declare-fun c!672372 () Bool)

(declare-fun lt!1342363 () tuple2!40178)

(assert (=> d!1144633 (= c!672372 (> (size!30813 (_1!23223 lt!1342363)) 0))))

(declare-fun e!2388116 () tuple2!40178)

(assert (=> d!1144633 (= lt!1342363 e!2388116)))

(declare-fun c!672371 () Bool)

(declare-fun lt!1342364 () Option!8762)

(assert (=> d!1144633 (= c!672371 ((_ is Some!8761) lt!1342364))))

(assert (=> d!1144633 (= lt!1342364 (maxPrefix!3237 thiss!20629 rules!2768 lt!1342346))))

(assert (=> d!1144633 (= (lexList!1701 thiss!20629 rules!2768 lt!1342346) lt!1342363)))

(declare-fun b!3862509 () Bool)

(assert (=> b!3862509 (= e!2388115 (= (_2!23223 lt!1342363) lt!1342346))))

(declare-fun b!3862510 () Bool)

(declare-fun lt!1342362 () tuple2!40178)

(assert (=> b!3862510 (= e!2388116 (tuple2!40179 (Cons!40972 (_1!23224 (v!39059 lt!1342364)) (_1!23223 lt!1342362)) (_2!23223 lt!1342362)))))

(assert (=> b!3862510 (= lt!1342362 (lexList!1701 thiss!20629 rules!2768 (_2!23224 (v!39059 lt!1342364))))))

(declare-fun b!3862511 () Bool)

(declare-fun e!2388114 () Bool)

(assert (=> b!3862511 (= e!2388115 e!2388114)))

(declare-fun res!1564112 () Bool)

(assert (=> b!3862511 (= res!1564112 (< (size!30810 (_2!23223 lt!1342363)) (size!30810 lt!1342346)))))

(assert (=> b!3862511 (=> (not res!1564112) (not e!2388114))))

(declare-fun b!3862512 () Bool)

(assert (=> b!3862512 (= e!2388114 (not (isEmpty!24280 (_1!23223 lt!1342363))))))

(declare-fun b!3862513 () Bool)

(assert (=> b!3862513 (= e!2388116 (tuple2!40179 Nil!40972 lt!1342346))))

(assert (= (and d!1144633 c!672371) b!3862510))

(assert (= (and d!1144633 (not c!672371)) b!3862513))

(assert (= (and d!1144633 c!672372) b!3862511))

(assert (= (and d!1144633 (not c!672372)) b!3862509))

(assert (= (and b!3862511 res!1564112) b!3862512))

(declare-fun m!4417987 () Bool)

(assert (=> d!1144633 m!4417987))

(assert (=> d!1144633 m!4417939))

(declare-fun m!4417989 () Bool)

(assert (=> b!3862510 m!4417989))

(declare-fun m!4417991 () Bool)

(assert (=> b!3862511 m!4417991))

(assert (=> b!3862511 m!4417875))

(declare-fun m!4417993 () Bool)

(assert (=> b!3862512 m!4417993))

(assert (=> b!3862415 d!1144633))

(declare-fun lt!1342365 () List!41096)

(declare-fun e!2388118 () Bool)

(declare-fun b!3862517 () Bool)

(assert (=> b!3862517 (= e!2388118 (or (not (= suffixTokens!72 Nil!40972)) (= lt!1342365 prefixTokens!80)))))

(declare-fun b!3862516 () Bool)

(declare-fun res!1564113 () Bool)

(assert (=> b!3862516 (=> (not res!1564113) (not e!2388118))))

(assert (=> b!3862516 (= res!1564113 (= (size!30813 lt!1342365) (+ (size!30813 prefixTokens!80) (size!30813 suffixTokens!72))))))

(declare-fun b!3862514 () Bool)

(declare-fun e!2388117 () List!41096)

(assert (=> b!3862514 (= e!2388117 suffixTokens!72)))

(declare-fun b!3862515 () Bool)

(assert (=> b!3862515 (= e!2388117 (Cons!40972 (h!46392 prefixTokens!80) (++!10445 (t!313587 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1144635 () Bool)

(assert (=> d!1144635 e!2388118))

(declare-fun res!1564114 () Bool)

(assert (=> d!1144635 (=> (not res!1564114) (not e!2388118))))

(assert (=> d!1144635 (= res!1564114 (= (content!6112 lt!1342365) ((_ map or) (content!6112 prefixTokens!80) (content!6112 suffixTokens!72))))))

(assert (=> d!1144635 (= lt!1342365 e!2388117)))

(declare-fun c!672373 () Bool)

(assert (=> d!1144635 (= c!672373 ((_ is Nil!40972) prefixTokens!80))))

(assert (=> d!1144635 (= (++!10445 prefixTokens!80 suffixTokens!72) lt!1342365)))

(assert (= (and d!1144635 c!672373) b!3862514))

(assert (= (and d!1144635 (not c!672373)) b!3862515))

(assert (= (and d!1144635 res!1564114) b!3862516))

(assert (= (and b!3862516 res!1564113) b!3862517))

(declare-fun m!4417995 () Bool)

(assert (=> b!3862516 m!4417995))

(declare-fun m!4417997 () Bool)

(assert (=> b!3862516 m!4417997))

(declare-fun m!4417999 () Bool)

(assert (=> b!3862516 m!4417999))

(declare-fun m!4418001 () Bool)

(assert (=> b!3862515 m!4418001))

(declare-fun m!4418003 () Bool)

(assert (=> d!1144635 m!4418003))

(declare-fun m!4418005 () Bool)

(assert (=> d!1144635 m!4418005))

(declare-fun m!4418007 () Bool)

(assert (=> d!1144635 m!4418007))

(assert (=> b!3862415 d!1144635))

(declare-fun b!3862526 () Bool)

(declare-fun e!2388124 () List!41095)

(assert (=> b!3862526 (= e!2388124 suffix!1176)))

(declare-fun b!3862527 () Bool)

(assert (=> b!3862527 (= e!2388124 (Cons!40971 (h!46391 prefix!426) (++!10446 (t!313586 prefix!426) suffix!1176)))))

(declare-fun b!3862528 () Bool)

(declare-fun res!1564119 () Bool)

(declare-fun e!2388123 () Bool)

(assert (=> b!3862528 (=> (not res!1564119) (not e!2388123))))

(declare-fun lt!1342368 () List!41095)

(assert (=> b!3862528 (= res!1564119 (= (size!30810 lt!1342368) (+ (size!30810 prefix!426) (size!30810 suffix!1176))))))

(declare-fun b!3862529 () Bool)

(assert (=> b!3862529 (= e!2388123 (or (not (= suffix!1176 Nil!40971)) (= lt!1342368 prefix!426)))))

(declare-fun d!1144637 () Bool)

(assert (=> d!1144637 e!2388123))

(declare-fun res!1564120 () Bool)

(assert (=> d!1144637 (=> (not res!1564120) (not e!2388123))))

(declare-fun content!6113 (List!41095) (InoxSet C!22684))

(assert (=> d!1144637 (= res!1564120 (= (content!6113 lt!1342368) ((_ map or) (content!6113 prefix!426) (content!6113 suffix!1176))))))

(assert (=> d!1144637 (= lt!1342368 e!2388124)))

(declare-fun c!672376 () Bool)

(assert (=> d!1144637 (= c!672376 ((_ is Nil!40971) prefix!426))))

(assert (=> d!1144637 (= (++!10446 prefix!426 suffix!1176) lt!1342368)))

(assert (= (and d!1144637 c!672376) b!3862526))

(assert (= (and d!1144637 (not c!672376)) b!3862527))

(assert (= (and d!1144637 res!1564120) b!3862528))

(assert (= (and b!3862528 res!1564119) b!3862529))

(declare-fun m!4418009 () Bool)

(assert (=> b!3862527 m!4418009))

(declare-fun m!4418011 () Bool)

(assert (=> b!3862528 m!4418011))

(assert (=> b!3862528 m!4417835))

(assert (=> b!3862528 m!4417863))

(declare-fun m!4418013 () Bool)

(assert (=> d!1144637 m!4418013))

(declare-fun m!4418015 () Bool)

(assert (=> d!1144637 m!4418015))

(declare-fun m!4418017 () Bool)

(assert (=> d!1144637 m!4418017))

(assert (=> b!3862415 d!1144637))

(declare-fun d!1144639 () Bool)

(declare-fun lt!1342371 () Int)

(assert (=> d!1144639 (>= lt!1342371 0)))

(declare-fun e!2388127 () Int)

(assert (=> d!1144639 (= lt!1342371 e!2388127)))

(declare-fun c!672379 () Bool)

(assert (=> d!1144639 (= c!672379 ((_ is Nil!40971) lt!1342346))))

(assert (=> d!1144639 (= (size!30810 lt!1342346) lt!1342371)))

(declare-fun b!3862534 () Bool)

(assert (=> b!3862534 (= e!2388127 0)))

(declare-fun b!3862535 () Bool)

(assert (=> b!3862535 (= e!2388127 (+ 1 (size!30810 (t!313586 lt!1342346))))))

(assert (= (and d!1144639 c!672379) b!3862534))

(assert (= (and d!1144639 (not c!672379)) b!3862535))

(declare-fun m!4418019 () Bool)

(assert (=> b!3862535 m!4418019))

(assert (=> b!3862416 d!1144639))

(declare-fun bm!282562 () Bool)

(declare-fun call!282567 () Bool)

(assert (=> bm!282562 (= call!282567 (isEmpty!24278 lt!1342324))))

(declare-fun d!1144641 () Bool)

(declare-fun e!2388144 () Bool)

(assert (=> d!1144641 e!2388144))

(declare-fun c!672386 () Bool)

(assert (=> d!1144641 (= c!672386 ((_ is EmptyExpr!11249) (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))))

(declare-fun lt!1342374 () Bool)

(declare-fun e!2388145 () Bool)

(assert (=> d!1144641 (= lt!1342374 e!2388145)))

(declare-fun c!672388 () Bool)

(assert (=> d!1144641 (= c!672388 (isEmpty!24278 lt!1342324))))

(declare-fun validRegex!5120 (Regex!11249) Bool)

(assert (=> d!1144641 (validRegex!5120 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))))

(assert (=> d!1144641 (= (matchR!5396 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) lt!1342324) lt!1342374)))

(declare-fun b!3862564 () Bool)

(declare-fun res!1564137 () Bool)

(declare-fun e!2388147 () Bool)

(assert (=> b!3862564 (=> (not res!1564137) (not e!2388147))))

(declare-fun tail!5865 (List!41095) List!41095)

(assert (=> b!3862564 (= res!1564137 (isEmpty!24278 (tail!5865 lt!1342324)))))

(declare-fun b!3862565 () Bool)

(declare-fun res!1564140 () Bool)

(declare-fun e!2388142 () Bool)

(assert (=> b!3862565 (=> res!1564140 e!2388142)))

(assert (=> b!3862565 (= res!1564140 (not (isEmpty!24278 (tail!5865 lt!1342324))))))

(declare-fun b!3862566 () Bool)

(declare-fun derivativeStep!3420 (Regex!11249 C!22684) Regex!11249)

(declare-fun head!8154 (List!41095) C!22684)

(assert (=> b!3862566 (= e!2388145 (matchR!5396 (derivativeStep!3420 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (head!8154 lt!1342324)) (tail!5865 lt!1342324)))))

(declare-fun b!3862567 () Bool)

(declare-fun res!1564138 () Bool)

(declare-fun e!2388148 () Bool)

(assert (=> b!3862567 (=> res!1564138 e!2388148)))

(assert (=> b!3862567 (= res!1564138 (not ((_ is ElementMatch!11249) (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))))))

(declare-fun e!2388143 () Bool)

(assert (=> b!3862567 (= e!2388143 e!2388148)))

(declare-fun b!3862568 () Bool)

(assert (=> b!3862568 (= e!2388147 (= (head!8154 lt!1342324) (c!672354 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))))))

(declare-fun b!3862569 () Bool)

(assert (=> b!3862569 (= e!2388144 (= lt!1342374 call!282567))))

(declare-fun b!3862570 () Bool)

(declare-fun e!2388146 () Bool)

(assert (=> b!3862570 (= e!2388148 e!2388146)))

(declare-fun res!1564139 () Bool)

(assert (=> b!3862570 (=> (not res!1564139) (not e!2388146))))

(assert (=> b!3862570 (= res!1564139 (not lt!1342374))))

(declare-fun b!3862571 () Bool)

(assert (=> b!3862571 (= e!2388146 e!2388142)))

(declare-fun res!1564141 () Bool)

(assert (=> b!3862571 (=> res!1564141 e!2388142)))

(assert (=> b!3862571 (= res!1564141 call!282567)))

(declare-fun b!3862572 () Bool)

(assert (=> b!3862572 (= e!2388142 (not (= (head!8154 lt!1342324) (c!672354 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))))))

(declare-fun b!3862573 () Bool)

(assert (=> b!3862573 (= e!2388143 (not lt!1342374))))

(declare-fun b!3862574 () Bool)

(declare-fun res!1564143 () Bool)

(assert (=> b!3862574 (=> res!1564143 e!2388148)))

(assert (=> b!3862574 (= res!1564143 e!2388147)))

(declare-fun res!1564144 () Bool)

(assert (=> b!3862574 (=> (not res!1564144) (not e!2388147))))

(assert (=> b!3862574 (= res!1564144 lt!1342374)))

(declare-fun b!3862575 () Bool)

(declare-fun nullable!3921 (Regex!11249) Bool)

(assert (=> b!3862575 (= e!2388145 (nullable!3921 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))))

(declare-fun b!3862576 () Bool)

(declare-fun res!1564142 () Bool)

(assert (=> b!3862576 (=> (not res!1564142) (not e!2388147))))

(assert (=> b!3862576 (= res!1564142 (not call!282567))))

(declare-fun b!3862577 () Bool)

(assert (=> b!3862577 (= e!2388144 e!2388143)))

(declare-fun c!672387 () Bool)

(assert (=> b!3862577 (= c!672387 ((_ is EmptyLang!11249) (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))))

(assert (= (and d!1144641 c!672388) b!3862575))

(assert (= (and d!1144641 (not c!672388)) b!3862566))

(assert (= (and d!1144641 c!672386) b!3862569))

(assert (= (and d!1144641 (not c!672386)) b!3862577))

(assert (= (and b!3862577 c!672387) b!3862573))

(assert (= (and b!3862577 (not c!672387)) b!3862567))

(assert (= (and b!3862567 (not res!1564138)) b!3862574))

(assert (= (and b!3862574 res!1564144) b!3862576))

(assert (= (and b!3862576 res!1564142) b!3862564))

(assert (= (and b!3862564 res!1564137) b!3862568))

(assert (= (and b!3862574 (not res!1564143)) b!3862570))

(assert (= (and b!3862570 res!1564139) b!3862571))

(assert (= (and b!3862571 (not res!1564141)) b!3862565))

(assert (= (and b!3862565 (not res!1564140)) b!3862572))

(assert (= (or b!3862569 b!3862571 b!3862576) bm!282562))

(declare-fun m!4418021 () Bool)

(assert (=> d!1144641 m!4418021))

(declare-fun m!4418023 () Bool)

(assert (=> d!1144641 m!4418023))

(declare-fun m!4418025 () Bool)

(assert (=> b!3862564 m!4418025))

(assert (=> b!3862564 m!4418025))

(declare-fun m!4418027 () Bool)

(assert (=> b!3862564 m!4418027))

(declare-fun m!4418029 () Bool)

(assert (=> b!3862572 m!4418029))

(assert (=> b!3862565 m!4418025))

(assert (=> b!3862565 m!4418025))

(assert (=> b!3862565 m!4418027))

(declare-fun m!4418031 () Bool)

(assert (=> b!3862575 m!4418031))

(assert (=> b!3862568 m!4418029))

(assert (=> b!3862566 m!4418029))

(assert (=> b!3862566 m!4418029))

(declare-fun m!4418033 () Bool)

(assert (=> b!3862566 m!4418033))

(assert (=> b!3862566 m!4418025))

(assert (=> b!3862566 m!4418033))

(assert (=> b!3862566 m!4418025))

(declare-fun m!4418035 () Bool)

(assert (=> b!3862566 m!4418035))

(assert (=> bm!282562 m!4418021))

(assert (=> b!3862426 d!1144641))

(declare-fun b!3862695 () Bool)

(declare-fun res!1564206 () Bool)

(declare-fun e!2388212 () Bool)

(assert (=> b!3862695 (=> (not res!1564206) (not e!2388212))))

(declare-fun lt!1342399 () Option!8762)

(assert (=> b!3862695 (= res!1564206 (= (value!201438 (_1!23224 (get!13556 lt!1342399))) (apply!9587 (transformation!6344 (rule!9216 (_1!23224 (get!13556 lt!1342399)))) (seqFromList!4615 (originalCharacters!6944 (_1!23224 (get!13556 lt!1342399)))))))))

(declare-fun b!3862696 () Bool)

(declare-fun e!2388213 () Option!8762)

(assert (=> b!3862696 (= e!2388213 None!8761)))

(declare-fun b!3862697 () Bool)

(declare-fun res!1564204 () Bool)

(assert (=> b!3862697 (=> (not res!1564204) (not e!2388212))))

(assert (=> b!3862697 (= res!1564204 (= (rule!9216 (_1!23224 (get!13556 lt!1342399))) (rule!9216 (_1!23224 (v!39059 lt!1342340)))))))

(declare-fun b!3862698 () Bool)

(declare-fun e!2388210 () Bool)

(assert (=> b!3862698 (= e!2388210 e!2388212)))

(declare-fun res!1564209 () Bool)

(assert (=> b!3862698 (=> (not res!1564209) (not e!2388212))))

(assert (=> b!3862698 (= res!1564209 (matchR!5396 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (list!15248 (charsOf!4172 (_1!23224 (get!13556 lt!1342399))))))))

(declare-fun b!3862699 () Bool)

(declare-datatypes ((tuple2!40184 0))(
  ( (tuple2!40185 (_1!23226 List!41095) (_2!23226 List!41095)) )
))
(declare-fun lt!1342398 () tuple2!40184)

(declare-fun size!30814 (BalanceConc!24704) Int)

(assert (=> b!3862699 (= e!2388213 (Some!8761 (tuple2!40181 (Token!11827 (apply!9587 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (seqFromList!4615 (_1!23226 lt!1342398))) (rule!9216 (_1!23224 (v!39059 lt!1342340))) (size!30814 (seqFromList!4615 (_1!23226 lt!1342398))) (_1!23226 lt!1342398)) (_2!23226 lt!1342398))))))

(declare-fun lt!1342402 () Unit!58629)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1161 (Regex!11249 List!41095) Unit!58629)

(assert (=> b!3862699 (= lt!1342402 (longestMatchIsAcceptedByMatchOrIsEmpty!1161 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) lt!1342346))))

(declare-fun res!1564208 () Bool)

(declare-fun findLongestMatchInner!1188 (Regex!11249 List!41095 Int List!41095 List!41095 Int) tuple2!40184)

(assert (=> b!3862699 (= res!1564208 (isEmpty!24278 (_1!23226 (findLongestMatchInner!1188 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) Nil!40971 (size!30810 Nil!40971) lt!1342346 lt!1342346 (size!30810 lt!1342346)))))))

(declare-fun e!2388211 () Bool)

(assert (=> b!3862699 (=> res!1564208 e!2388211)))

(assert (=> b!3862699 e!2388211))

(declare-fun lt!1342401 () Unit!58629)

(assert (=> b!3862699 (= lt!1342401 lt!1342402)))

(declare-fun lt!1342400 () Unit!58629)

(declare-fun lemmaSemiInverse!1694 (TokenValueInjection!12576 BalanceConc!24704) Unit!58629)

(assert (=> b!3862699 (= lt!1342400 (lemmaSemiInverse!1694 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (seqFromList!4615 (_1!23226 lt!1342398))))))

(declare-fun b!3862701 () Bool)

(declare-fun res!1564207 () Bool)

(assert (=> b!3862701 (=> (not res!1564207) (not e!2388212))))

(assert (=> b!3862701 (= res!1564207 (= (++!10446 (list!15248 (charsOf!4172 (_1!23224 (get!13556 lt!1342399)))) (_2!23224 (get!13556 lt!1342399))) lt!1342346))))

(declare-fun b!3862700 () Bool)

(declare-fun res!1564205 () Bool)

(assert (=> b!3862700 (=> (not res!1564205) (not e!2388212))))

(assert (=> b!3862700 (= res!1564205 (< (size!30810 (_2!23224 (get!13556 lt!1342399))) (size!30810 lt!1342346)))))

(declare-fun d!1144643 () Bool)

(assert (=> d!1144643 e!2388210))

(declare-fun res!1564203 () Bool)

(assert (=> d!1144643 (=> res!1564203 e!2388210)))

(declare-fun isEmpty!24282 (Option!8762) Bool)

(assert (=> d!1144643 (= res!1564203 (isEmpty!24282 lt!1342399))))

(assert (=> d!1144643 (= lt!1342399 e!2388213)))

(declare-fun c!672415 () Bool)

(assert (=> d!1144643 (= c!672415 (isEmpty!24278 (_1!23226 lt!1342398)))))

(declare-fun findLongestMatch!1101 (Regex!11249 List!41095) tuple2!40184)

(assert (=> d!1144643 (= lt!1342398 (findLongestMatch!1101 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) lt!1342346))))

(assert (=> d!1144643 (ruleValid!2296 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))

(assert (=> d!1144643 (= (maxPrefixOneRule!2319 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))) lt!1342346) lt!1342399)))

(declare-fun b!3862702 () Bool)

(assert (=> b!3862702 (= e!2388211 (matchR!5396 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (_1!23226 (findLongestMatchInner!1188 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) Nil!40971 (size!30810 Nil!40971) lt!1342346 lt!1342346 (size!30810 lt!1342346)))))))

(declare-fun b!3862703 () Bool)

(assert (=> b!3862703 (= e!2388212 (= (size!30809 (_1!23224 (get!13556 lt!1342399))) (size!30810 (originalCharacters!6944 (_1!23224 (get!13556 lt!1342399))))))))

(assert (= (and d!1144643 c!672415) b!3862696))

(assert (= (and d!1144643 (not c!672415)) b!3862699))

(assert (= (and b!3862699 (not res!1564208)) b!3862702))

(assert (= (and d!1144643 (not res!1564203)) b!3862698))

(assert (= (and b!3862698 res!1564209) b!3862701))

(assert (= (and b!3862701 res!1564207) b!3862700))

(assert (= (and b!3862700 res!1564205) b!3862697))

(assert (= (and b!3862697 res!1564204) b!3862695))

(assert (= (and b!3862695 res!1564206) b!3862703))

(declare-fun m!4418103 () Bool)

(assert (=> b!3862703 m!4418103))

(declare-fun m!4418105 () Bool)

(assert (=> b!3862703 m!4418105))

(assert (=> b!3862700 m!4418103))

(declare-fun m!4418107 () Bool)

(assert (=> b!3862700 m!4418107))

(assert (=> b!3862700 m!4417875))

(assert (=> b!3862697 m!4418103))

(assert (=> b!3862701 m!4418103))

(declare-fun m!4418109 () Bool)

(assert (=> b!3862701 m!4418109))

(assert (=> b!3862701 m!4418109))

(declare-fun m!4418111 () Bool)

(assert (=> b!3862701 m!4418111))

(assert (=> b!3862701 m!4418111))

(declare-fun m!4418113 () Bool)

(assert (=> b!3862701 m!4418113))

(declare-fun m!4418115 () Bool)

(assert (=> d!1144643 m!4418115))

(declare-fun m!4418117 () Bool)

(assert (=> d!1144643 m!4418117))

(declare-fun m!4418119 () Bool)

(assert (=> d!1144643 m!4418119))

(assert (=> d!1144643 m!4417907))

(declare-fun m!4418121 () Bool)

(assert (=> b!3862699 m!4418121))

(declare-fun m!4418123 () Bool)

(assert (=> b!3862699 m!4418123))

(declare-fun m!4418125 () Bool)

(assert (=> b!3862699 m!4418125))

(declare-fun m!4418127 () Bool)

(assert (=> b!3862699 m!4418127))

(assert (=> b!3862699 m!4418123))

(declare-fun m!4418129 () Bool)

(assert (=> b!3862699 m!4418129))

(assert (=> b!3862699 m!4418127))

(assert (=> b!3862699 m!4417875))

(declare-fun m!4418131 () Bool)

(assert (=> b!3862699 m!4418131))

(assert (=> b!3862699 m!4418123))

(declare-fun m!4418133 () Bool)

(assert (=> b!3862699 m!4418133))

(assert (=> b!3862699 m!4417875))

(assert (=> b!3862699 m!4418123))

(declare-fun m!4418135 () Bool)

(assert (=> b!3862699 m!4418135))

(assert (=> b!3862698 m!4418103))

(assert (=> b!3862698 m!4418109))

(assert (=> b!3862698 m!4418109))

(assert (=> b!3862698 m!4418111))

(assert (=> b!3862698 m!4418111))

(declare-fun m!4418137 () Bool)

(assert (=> b!3862698 m!4418137))

(assert (=> b!3862702 m!4418127))

(assert (=> b!3862702 m!4417875))

(assert (=> b!3862702 m!4418127))

(assert (=> b!3862702 m!4417875))

(assert (=> b!3862702 m!4418131))

(declare-fun m!4418139 () Bool)

(assert (=> b!3862702 m!4418139))

(assert (=> b!3862695 m!4418103))

(declare-fun m!4418141 () Bool)

(assert (=> b!3862695 m!4418141))

(assert (=> b!3862695 m!4418141))

(declare-fun m!4418143 () Bool)

(assert (=> b!3862695 m!4418143))

(assert (=> b!3862426 d!1144643))

(declare-fun d!1144675 () Bool)

(assert (=> d!1144675 (= (maxPrefixOneRule!2319 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))) lt!1342346) (Some!8761 (tuple2!40181 (Token!11827 (apply!9587 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (seqFromList!4615 lt!1342324)) (rule!9216 (_1!23224 (v!39059 lt!1342340))) (size!30810 lt!1342324) lt!1342324) (_2!23224 (v!39059 lt!1342340)))))))

(declare-fun lt!1342405 () Unit!58629)

(declare-fun choose!22752 (LexerInterface!5933 List!41097 List!41095 List!41095 List!41095 Rule!12488) Unit!58629)

(assert (=> d!1144675 (= lt!1342405 (choose!22752 thiss!20629 rules!2768 lt!1342324 lt!1342346 (_2!23224 (v!39059 lt!1342340)) (rule!9216 (_1!23224 (v!39059 lt!1342340)))))))

(assert (=> d!1144675 (not (isEmpty!24279 rules!2768))))

(assert (=> d!1144675 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1217 thiss!20629 rules!2768 lt!1342324 lt!1342346 (_2!23224 (v!39059 lt!1342340)) (rule!9216 (_1!23224 (v!39059 lt!1342340)))) lt!1342405)))

(declare-fun bs!583207 () Bool)

(assert (= bs!583207 d!1144675))

(assert (=> bs!583207 m!4417903))

(assert (=> bs!583207 m!4417911))

(assert (=> bs!583207 m!4417913))

(declare-fun m!4418145 () Bool)

(assert (=> bs!583207 m!4418145))

(assert (=> bs!583207 m!4417849))

(assert (=> bs!583207 m!4417871))

(assert (=> bs!583207 m!4417911))

(assert (=> b!3862426 d!1144675))

(declare-fun d!1144677 () Bool)

(assert (=> d!1144677 (ruleValid!2296 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))

(declare-fun lt!1342408 () Unit!58629)

(declare-fun choose!22753 (LexerInterface!5933 Rule!12488 List!41097) Unit!58629)

(assert (=> d!1144677 (= lt!1342408 (choose!22753 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))) rules!2768))))

(declare-fun contains!8273 (List!41097 Rule!12488) Bool)

(assert (=> d!1144677 (contains!8273 rules!2768 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))

(assert (=> d!1144677 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1376 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340))) rules!2768) lt!1342408)))

(declare-fun bs!583208 () Bool)

(assert (= bs!583208 d!1144677))

(assert (=> bs!583208 m!4417907))

(declare-fun m!4418147 () Bool)

(assert (=> bs!583208 m!4418147))

(declare-fun m!4418149 () Bool)

(assert (=> bs!583208 m!4418149))

(assert (=> b!3862427 d!1144677))

(declare-fun d!1144679 () Bool)

(assert (=> d!1144679 (isPrefix!3443 lt!1342324 (++!10446 lt!1342324 (_2!23224 (v!39059 lt!1342340))))))

(declare-fun lt!1342411 () Unit!58629)

(declare-fun choose!22754 (List!41095 List!41095) Unit!58629)

(assert (=> d!1144679 (= lt!1342411 (choose!22754 lt!1342324 (_2!23224 (v!39059 lt!1342340))))))

(assert (=> d!1144679 (= (lemmaConcatTwoListThenFirstIsPrefix!2306 lt!1342324 (_2!23224 (v!39059 lt!1342340))) lt!1342411)))

(declare-fun bs!583209 () Bool)

(assert (= bs!583209 d!1144679))

(assert (=> bs!583209 m!4417919))

(assert (=> bs!583209 m!4417919))

(declare-fun m!4418151 () Bool)

(assert (=> bs!583209 m!4418151))

(declare-fun m!4418153 () Bool)

(assert (=> bs!583209 m!4418153))

(assert (=> b!3862427 d!1144679))

(declare-fun d!1144681 () Bool)

(declare-fun fromListB!2131 (List!41095) BalanceConc!24704)

(assert (=> d!1144681 (= (seqFromList!4615 lt!1342324) (fromListB!2131 lt!1342324))))

(declare-fun bs!583210 () Bool)

(assert (= bs!583210 d!1144681))

(declare-fun m!4418155 () Bool)

(assert (=> bs!583210 m!4418155))

(assert (=> b!3862427 d!1144681))

(declare-fun b!3862704 () Bool)

(declare-fun e!2388215 () List!41095)

(assert (=> b!3862704 (= e!2388215 (_2!23224 (v!39059 lt!1342340)))))

(declare-fun b!3862705 () Bool)

(assert (=> b!3862705 (= e!2388215 (Cons!40971 (h!46391 lt!1342324) (++!10446 (t!313586 lt!1342324) (_2!23224 (v!39059 lt!1342340)))))))

(declare-fun b!3862706 () Bool)

(declare-fun res!1564210 () Bool)

(declare-fun e!2388214 () Bool)

(assert (=> b!3862706 (=> (not res!1564210) (not e!2388214))))

(declare-fun lt!1342412 () List!41095)

(assert (=> b!3862706 (= res!1564210 (= (size!30810 lt!1342412) (+ (size!30810 lt!1342324) (size!30810 (_2!23224 (v!39059 lt!1342340))))))))

(declare-fun b!3862707 () Bool)

(assert (=> b!3862707 (= e!2388214 (or (not (= (_2!23224 (v!39059 lt!1342340)) Nil!40971)) (= lt!1342412 lt!1342324)))))

(declare-fun d!1144683 () Bool)

(assert (=> d!1144683 e!2388214))

(declare-fun res!1564211 () Bool)

(assert (=> d!1144683 (=> (not res!1564211) (not e!2388214))))

(assert (=> d!1144683 (= res!1564211 (= (content!6113 lt!1342412) ((_ map or) (content!6113 lt!1342324) (content!6113 (_2!23224 (v!39059 lt!1342340))))))))

(assert (=> d!1144683 (= lt!1342412 e!2388215)))

(declare-fun c!672416 () Bool)

(assert (=> d!1144683 (= c!672416 ((_ is Nil!40971) lt!1342324))))

(assert (=> d!1144683 (= (++!10446 lt!1342324 (_2!23224 (v!39059 lt!1342340))) lt!1342412)))

(assert (= (and d!1144683 c!672416) b!3862704))

(assert (= (and d!1144683 (not c!672416)) b!3862705))

(assert (= (and d!1144683 res!1564211) b!3862706))

(assert (= (and b!3862706 res!1564210) b!3862707))

(declare-fun m!4418157 () Bool)

(assert (=> b!3862705 m!4418157))

(declare-fun m!4418159 () Bool)

(assert (=> b!3862706 m!4418159))

(assert (=> b!3862706 m!4417903))

(assert (=> b!3862706 m!4417865))

(declare-fun m!4418161 () Bool)

(assert (=> d!1144683 m!4418161))

(declare-fun m!4418163 () Bool)

(assert (=> d!1144683 m!4418163))

(declare-fun m!4418165 () Bool)

(assert (=> d!1144683 m!4418165))

(assert (=> b!3862427 d!1144683))

(declare-fun d!1144685 () Bool)

(assert (=> d!1144685 (= (_2!23224 (v!39059 lt!1342340)) lt!1342338)))

(declare-fun lt!1342415 () Unit!58629)

(declare-fun choose!22755 (List!41095 List!41095 List!41095 List!41095 List!41095) Unit!58629)

(assert (=> d!1144685 (= lt!1342415 (choose!22755 lt!1342324 (_2!23224 (v!39059 lt!1342340)) lt!1342324 lt!1342338 lt!1342346))))

(assert (=> d!1144685 (isPrefix!3443 lt!1342324 lt!1342346)))

(assert (=> d!1144685 (= (lemmaSamePrefixThenSameSuffix!1664 lt!1342324 (_2!23224 (v!39059 lt!1342340)) lt!1342324 lt!1342338 lt!1342346) lt!1342415)))

(declare-fun bs!583211 () Bool)

(assert (= bs!583211 d!1144685))

(declare-fun m!4418167 () Bool)

(assert (=> bs!583211 m!4418167))

(declare-fun m!4418169 () Bool)

(assert (=> bs!583211 m!4418169))

(assert (=> b!3862427 d!1144685))

(declare-fun d!1144687 () Bool)

(declare-fun e!2388224 () Bool)

(assert (=> d!1144687 e!2388224))

(declare-fun res!1564220 () Bool)

(assert (=> d!1144687 (=> res!1564220 e!2388224)))

(declare-fun lt!1342418 () Bool)

(assert (=> d!1144687 (= res!1564220 (not lt!1342418))))

(declare-fun e!2388223 () Bool)

(assert (=> d!1144687 (= lt!1342418 e!2388223)))

(declare-fun res!1564223 () Bool)

(assert (=> d!1144687 (=> res!1564223 e!2388223)))

(assert (=> d!1144687 (= res!1564223 ((_ is Nil!40971) lt!1342324))))

(assert (=> d!1144687 (= (isPrefix!3443 lt!1342324 lt!1342333) lt!1342418)))

(declare-fun b!3862719 () Bool)

(assert (=> b!3862719 (= e!2388224 (>= (size!30810 lt!1342333) (size!30810 lt!1342324)))))

(declare-fun b!3862716 () Bool)

(declare-fun e!2388222 () Bool)

(assert (=> b!3862716 (= e!2388223 e!2388222)))

(declare-fun res!1564222 () Bool)

(assert (=> b!3862716 (=> (not res!1564222) (not e!2388222))))

(assert (=> b!3862716 (= res!1564222 (not ((_ is Nil!40971) lt!1342333)))))

(declare-fun b!3862718 () Bool)

(assert (=> b!3862718 (= e!2388222 (isPrefix!3443 (tail!5865 lt!1342324) (tail!5865 lt!1342333)))))

(declare-fun b!3862717 () Bool)

(declare-fun res!1564221 () Bool)

(assert (=> b!3862717 (=> (not res!1564221) (not e!2388222))))

(assert (=> b!3862717 (= res!1564221 (= (head!8154 lt!1342324) (head!8154 lt!1342333)))))

(assert (= (and d!1144687 (not res!1564223)) b!3862716))

(assert (= (and b!3862716 res!1564222) b!3862717))

(assert (= (and b!3862717 res!1564221) b!3862718))

(assert (= (and d!1144687 (not res!1564220)) b!3862719))

(declare-fun m!4418171 () Bool)

(assert (=> b!3862719 m!4418171))

(assert (=> b!3862719 m!4417903))

(assert (=> b!3862718 m!4418025))

(declare-fun m!4418173 () Bool)

(assert (=> b!3862718 m!4418173))

(assert (=> b!3862718 m!4418025))

(assert (=> b!3862718 m!4418173))

(declare-fun m!4418175 () Bool)

(assert (=> b!3862718 m!4418175))

(assert (=> b!3862717 m!4418029))

(declare-fun m!4418177 () Bool)

(assert (=> b!3862717 m!4418177))

(assert (=> b!3862427 d!1144687))

(declare-fun d!1144689 () Bool)

(assert (=> d!1144689 (= (size!30809 (_1!23224 (v!39059 lt!1342340))) (size!30810 (originalCharacters!6944 (_1!23224 (v!39059 lt!1342340)))))))

(declare-fun Unit!58635 () Unit!58629)

(assert (=> d!1144689 (= (lemmaCharactersSize!1005 (_1!23224 (v!39059 lt!1342340))) Unit!58635)))

(declare-fun bs!583212 () Bool)

(assert (= bs!583212 d!1144689))

(assert (=> bs!583212 m!4417881))

(assert (=> b!3862427 d!1144689))

(declare-fun d!1144691 () Bool)

(declare-fun lt!1342419 () Int)

(assert (=> d!1144691 (>= lt!1342419 0)))

(declare-fun e!2388225 () Int)

(assert (=> d!1144691 (= lt!1342419 e!2388225)))

(declare-fun c!672417 () Bool)

(assert (=> d!1144691 (= c!672417 ((_ is Nil!40971) lt!1342324))))

(assert (=> d!1144691 (= (size!30810 lt!1342324) lt!1342419)))

(declare-fun b!3862720 () Bool)

(assert (=> b!3862720 (= e!2388225 0)))

(declare-fun b!3862721 () Bool)

(assert (=> b!3862721 (= e!2388225 (+ 1 (size!30810 (t!313586 lt!1342324))))))

(assert (= (and d!1144691 c!672417) b!3862720))

(assert (= (and d!1144691 (not c!672417)) b!3862721))

(declare-fun m!4418179 () Bool)

(assert (=> b!3862721 m!4418179))

(assert (=> b!3862427 d!1144691))

(declare-fun d!1144693 () Bool)

(declare-fun lt!1342422 () List!41095)

(assert (=> d!1144693 (= (++!10446 lt!1342324 lt!1342422) lt!1342346)))

(declare-fun e!2388228 () List!41095)

(assert (=> d!1144693 (= lt!1342422 e!2388228)))

(declare-fun c!672420 () Bool)

(assert (=> d!1144693 (= c!672420 ((_ is Cons!40971) lt!1342324))))

(assert (=> d!1144693 (>= (size!30810 lt!1342346) (size!30810 lt!1342324))))

(assert (=> d!1144693 (= (getSuffix!1898 lt!1342346 lt!1342324) lt!1342422)))

(declare-fun b!3862726 () Bool)

(assert (=> b!3862726 (= e!2388228 (getSuffix!1898 (tail!5865 lt!1342346) (t!313586 lt!1342324)))))

(declare-fun b!3862727 () Bool)

(assert (=> b!3862727 (= e!2388228 lt!1342346)))

(assert (= (and d!1144693 c!672420) b!3862726))

(assert (= (and d!1144693 (not c!672420)) b!3862727))

(declare-fun m!4418181 () Bool)

(assert (=> d!1144693 m!4418181))

(assert (=> d!1144693 m!4417875))

(assert (=> d!1144693 m!4417903))

(declare-fun m!4418183 () Bool)

(assert (=> b!3862726 m!4418183))

(assert (=> b!3862726 m!4418183))

(declare-fun m!4418185 () Bool)

(assert (=> b!3862726 m!4418185))

(assert (=> b!3862427 d!1144693))

(declare-fun d!1144695 () Bool)

(declare-fun res!1564228 () Bool)

(declare-fun e!2388231 () Bool)

(assert (=> d!1144695 (=> (not res!1564228) (not e!2388231))))

(assert (=> d!1144695 (= res!1564228 (validRegex!5120 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))))))

(assert (=> d!1144695 (= (ruleValid!2296 thiss!20629 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) e!2388231)))

(declare-fun b!3862732 () Bool)

(declare-fun res!1564229 () Bool)

(assert (=> b!3862732 (=> (not res!1564229) (not e!2388231))))

(assert (=> b!3862732 (= res!1564229 (not (nullable!3921 (regex!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))))))

(declare-fun b!3862733 () Bool)

(assert (=> b!3862733 (= e!2388231 (not (= (tag!7204 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (String!46589 ""))))))

(assert (= (and d!1144695 res!1564228) b!3862732))

(assert (= (and b!3862732 res!1564229) b!3862733))

(assert (=> d!1144695 m!4418023))

(assert (=> b!3862732 m!4418031))

(assert (=> b!3862427 d!1144695))

(declare-fun d!1144697 () Bool)

(declare-fun list!15250 (Conc!12555) List!41095)

(assert (=> d!1144697 (= (list!15248 (charsOf!4172 (_1!23224 (v!39059 lt!1342340)))) (list!15250 (c!672355 (charsOf!4172 (_1!23224 (v!39059 lt!1342340))))))))

(declare-fun bs!583213 () Bool)

(assert (= bs!583213 d!1144697))

(declare-fun m!4418187 () Bool)

(assert (=> bs!583213 m!4418187))

(assert (=> b!3862427 d!1144697))

(declare-fun d!1144699 () Bool)

(declare-fun dynLambda!17666 (Int BalanceConc!24704) TokenValue!6574)

(assert (=> d!1144699 (= (apply!9587 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))) (seqFromList!4615 lt!1342324)) (dynLambda!17666 (toValue!8772 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))) (seqFromList!4615 lt!1342324)))))

(declare-fun b_lambda!112891 () Bool)

(assert (=> (not b_lambda!112891) (not d!1144699)))

(declare-fun t!313602 () Bool)

(declare-fun tb!223805 () Bool)

(assert (=> (and b!3862423 (= (toValue!8772 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (toValue!8772 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313602) tb!223805))

(declare-fun result!272570 () Bool)

(assert (=> tb!223805 (= result!272570 (inv!21 (dynLambda!17666 (toValue!8772 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))) (seqFromList!4615 lt!1342324))))))

(declare-fun m!4418189 () Bool)

(assert (=> tb!223805 m!4418189))

(assert (=> d!1144699 t!313602))

(declare-fun b_and!289227 () Bool)

(assert (= b_and!289203 (and (=> t!313602 result!272570) b_and!289227)))

(declare-fun t!313604 () Bool)

(declare-fun tb!223807 () Bool)

(assert (=> (and b!3862433 (= (toValue!8772 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (toValue!8772 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313604) tb!223807))

(declare-fun result!272574 () Bool)

(assert (= result!272574 result!272570))

(assert (=> d!1144699 t!313604))

(declare-fun b_and!289229 () Bool)

(assert (= b_and!289207 (and (=> t!313604 result!272574) b_and!289229)))

(declare-fun t!313606 () Bool)

(declare-fun tb!223809 () Bool)

(assert (=> (and b!3862428 (= (toValue!8772 (transformation!6344 (h!46393 rules!2768))) (toValue!8772 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313606) tb!223809))

(declare-fun result!272576 () Bool)

(assert (= result!272576 result!272570))

(assert (=> d!1144699 t!313606))

(declare-fun b_and!289231 () Bool)

(assert (= b_and!289211 (and (=> t!313606 result!272576) b_and!289231)))

(assert (=> d!1144699 m!4417911))

(declare-fun m!4418191 () Bool)

(assert (=> d!1144699 m!4418191))

(assert (=> b!3862427 d!1144699))

(declare-fun d!1144701 () Bool)

(declare-fun e!2388236 () Bool)

(assert (=> d!1144701 e!2388236))

(declare-fun c!672422 () Bool)

(declare-fun lt!1342424 () tuple2!40178)

(assert (=> d!1144701 (= c!672422 (> (size!30813 (_1!23223 lt!1342424)) 0))))

(declare-fun e!2388237 () tuple2!40178)

(assert (=> d!1144701 (= lt!1342424 e!2388237)))

(declare-fun c!672421 () Bool)

(declare-fun lt!1342425 () Option!8762)

(assert (=> d!1144701 (= c!672421 ((_ is Some!8761) lt!1342425))))

(assert (=> d!1144701 (= lt!1342425 (maxPrefix!3237 thiss!20629 rules!2768 (_2!23224 (v!39059 lt!1342340))))))

(assert (=> d!1144701 (= (lexList!1701 thiss!20629 rules!2768 (_2!23224 (v!39059 lt!1342340))) lt!1342424)))

(declare-fun b!3862736 () Bool)

(assert (=> b!3862736 (= e!2388236 (= (_2!23223 lt!1342424) (_2!23224 (v!39059 lt!1342340))))))

(declare-fun b!3862737 () Bool)

(declare-fun lt!1342423 () tuple2!40178)

(assert (=> b!3862737 (= e!2388237 (tuple2!40179 (Cons!40972 (_1!23224 (v!39059 lt!1342425)) (_1!23223 lt!1342423)) (_2!23223 lt!1342423)))))

(assert (=> b!3862737 (= lt!1342423 (lexList!1701 thiss!20629 rules!2768 (_2!23224 (v!39059 lt!1342425))))))

(declare-fun b!3862738 () Bool)

(declare-fun e!2388235 () Bool)

(assert (=> b!3862738 (= e!2388236 e!2388235)))

(declare-fun res!1564230 () Bool)

(assert (=> b!3862738 (= res!1564230 (< (size!30810 (_2!23223 lt!1342424)) (size!30810 (_2!23224 (v!39059 lt!1342340)))))))

(assert (=> b!3862738 (=> (not res!1564230) (not e!2388235))))

(declare-fun b!3862739 () Bool)

(assert (=> b!3862739 (= e!2388235 (not (isEmpty!24280 (_1!23223 lt!1342424))))))

(declare-fun b!3862740 () Bool)

(assert (=> b!3862740 (= e!2388237 (tuple2!40179 Nil!40972 (_2!23224 (v!39059 lt!1342340))))))

(assert (= (and d!1144701 c!672421) b!3862737))

(assert (= (and d!1144701 (not c!672421)) b!3862740))

(assert (= (and d!1144701 c!672422) b!3862738))

(assert (= (and d!1144701 (not c!672422)) b!3862736))

(assert (= (and b!3862738 res!1564230) b!3862739))

(declare-fun m!4418193 () Bool)

(assert (=> d!1144701 m!4418193))

(declare-fun m!4418195 () Bool)

(assert (=> d!1144701 m!4418195))

(declare-fun m!4418197 () Bool)

(assert (=> b!3862737 m!4418197))

(declare-fun m!4418199 () Bool)

(assert (=> b!3862738 m!4418199))

(assert (=> b!3862738 m!4417865))

(declare-fun m!4418201 () Bool)

(assert (=> b!3862739 m!4418201))

(assert (=> b!3862427 d!1144701))

(declare-fun d!1144703 () Bool)

(declare-fun lt!1342438 () BalanceConc!24704)

(assert (=> d!1144703 (= (list!15248 lt!1342438) (originalCharacters!6944 (_1!23224 (v!39059 lt!1342340))))))

(assert (=> d!1144703 (= lt!1342438 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))) (value!201438 (_1!23224 (v!39059 lt!1342340)))))))

(assert (=> d!1144703 (= (charsOf!4172 (_1!23224 (v!39059 lt!1342340))) lt!1342438)))

(declare-fun b_lambda!112893 () Bool)

(assert (=> (not b_lambda!112893) (not d!1144703)))

(declare-fun tb!223811 () Bool)

(declare-fun t!313608 () Bool)

(assert (=> (and b!3862423 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313608) tb!223811))

(declare-fun b!3862749 () Bool)

(declare-fun e!2388244 () Bool)

(declare-fun tp!1170967 () Bool)

(assert (=> b!3862749 (= e!2388244 (and (inv!55136 (c!672355 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))) (value!201438 (_1!23224 (v!39059 lt!1342340)))))) tp!1170967))))

(declare-fun result!272578 () Bool)

(assert (=> tb!223811 (= result!272578 (and (inv!55137 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340))))) (value!201438 (_1!23224 (v!39059 lt!1342340))))) e!2388244))))

(assert (= tb!223811 b!3862749))

(declare-fun m!4418203 () Bool)

(assert (=> b!3862749 m!4418203))

(declare-fun m!4418205 () Bool)

(assert (=> tb!223811 m!4418205))

(assert (=> d!1144703 t!313608))

(declare-fun b_and!289233 () Bool)

(assert (= b_and!289215 (and (=> t!313608 result!272578) b_and!289233)))

(declare-fun tb!223813 () Bool)

(declare-fun t!313610 () Bool)

(assert (=> (and b!3862433 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313610) tb!223813))

(declare-fun result!272580 () Bool)

(assert (= result!272580 result!272578))

(assert (=> d!1144703 t!313610))

(declare-fun b_and!289235 () Bool)

(assert (= b_and!289217 (and (=> t!313610 result!272580) b_and!289235)))

(declare-fun tb!223815 () Bool)

(declare-fun t!313612 () Bool)

(assert (=> (and b!3862428 (= (toChars!8631 (transformation!6344 (h!46393 rules!2768))) (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313612) tb!223815))

(declare-fun result!272582 () Bool)

(assert (= result!272582 result!272578))

(assert (=> d!1144703 t!313612))

(declare-fun b_and!289237 () Bool)

(assert (= b_and!289219 (and (=> t!313612 result!272582) b_and!289237)))

(declare-fun m!4418207 () Bool)

(assert (=> d!1144703 m!4418207))

(declare-fun m!4418209 () Bool)

(assert (=> d!1144703 m!4418209))

(assert (=> b!3862427 d!1144703))

(declare-fun d!1144705 () Bool)

(declare-fun res!1564247 () Bool)

(declare-fun e!2388249 () Bool)

(assert (=> d!1144705 (=> (not res!1564247) (not e!2388249))))

(declare-fun rulesValid!2456 (LexerInterface!5933 List!41097) Bool)

(assert (=> d!1144705 (= res!1564247 (rulesValid!2456 thiss!20629 rules!2768))))

(assert (=> d!1144705 (= (rulesInvariant!5276 thiss!20629 rules!2768) e!2388249)))

(declare-fun b!3862762 () Bool)

(declare-datatypes ((List!41099 0))(
  ( (Nil!40975) (Cons!40975 (h!46395 String!46588) (t!313686 List!41099)) )
))
(declare-fun noDuplicateTag!2457 (LexerInterface!5933 List!41097 List!41099) Bool)

(assert (=> b!3862762 (= e!2388249 (noDuplicateTag!2457 thiss!20629 rules!2768 Nil!40975))))

(assert (= (and d!1144705 res!1564247) b!3862762))

(declare-fun m!4418211 () Bool)

(assert (=> d!1144705 m!4418211))

(declare-fun m!4418213 () Bool)

(assert (=> b!3862762 m!4418213))

(assert (=> b!3862448 d!1144705))

(declare-fun d!1144707 () Bool)

(assert (=> d!1144707 true))

(declare-fun lt!1342518 () Bool)

(declare-fun lambda!126245 () Int)

(declare-fun forall!8296 (List!41097 Int) Bool)

(assert (=> d!1144707 (= lt!1342518 (forall!8296 rules!2768 lambda!126245))))

(declare-fun e!2388378 () Bool)

(assert (=> d!1144707 (= lt!1342518 e!2388378)))

(declare-fun res!1564324 () Bool)

(assert (=> d!1144707 (=> res!1564324 e!2388378)))

(assert (=> d!1144707 (= res!1564324 (not ((_ is Cons!40973) rules!2768)))))

(assert (=> d!1144707 (= (rulesValidInductive!2264 thiss!20629 rules!2768) lt!1342518)))

(declare-fun b!3862963 () Bool)

(declare-fun e!2388377 () Bool)

(assert (=> b!3862963 (= e!2388378 e!2388377)))

(declare-fun res!1564325 () Bool)

(assert (=> b!3862963 (=> (not res!1564325) (not e!2388377))))

(assert (=> b!3862963 (= res!1564325 (ruleValid!2296 thiss!20629 (h!46393 rules!2768)))))

(declare-fun b!3862964 () Bool)

(assert (=> b!3862964 (= e!2388377 (rulesValidInductive!2264 thiss!20629 (t!313588 rules!2768)))))

(assert (= (and d!1144707 (not res!1564324)) b!3862963))

(assert (= (and b!3862963 res!1564325) b!3862964))

(declare-fun m!4418477 () Bool)

(assert (=> d!1144707 m!4418477))

(declare-fun m!4418479 () Bool)

(assert (=> b!3862963 m!4418479))

(declare-fun m!4418481 () Bool)

(assert (=> b!3862964 m!4418481))

(assert (=> b!3862429 d!1144707))

(declare-fun d!1144783 () Bool)

(declare-fun lt!1342519 () Int)

(assert (=> d!1144783 (>= lt!1342519 0)))

(declare-fun e!2388379 () Int)

(assert (=> d!1144783 (= lt!1342519 e!2388379)))

(declare-fun c!672455 () Bool)

(assert (=> d!1144783 (= c!672455 ((_ is Nil!40971) (_2!23224 lt!1342335)))))

(assert (=> d!1144783 (= (size!30810 (_2!23224 lt!1342335)) lt!1342519)))

(declare-fun b!3862967 () Bool)

(assert (=> b!3862967 (= e!2388379 0)))

(declare-fun b!3862968 () Bool)

(assert (=> b!3862968 (= e!2388379 (+ 1 (size!30810 (t!313586 (_2!23224 lt!1342335)))))))

(assert (= (and d!1144783 c!672455) b!3862967))

(assert (= (and d!1144783 (not c!672455)) b!3862968))

(declare-fun m!4418483 () Bool)

(assert (=> b!3862968 m!4418483))

(assert (=> b!3862429 d!1144783))

(declare-fun d!1144785 () Bool)

(assert (=> d!1144785 (= (inv!55129 (tag!7204 (rule!9216 (h!46392 suffixTokens!72)))) (= (mod (str.len (value!201437 (tag!7204 (rule!9216 (h!46392 suffixTokens!72))))) 2) 0))))

(assert (=> b!3862431 d!1144785))

(declare-fun d!1144787 () Bool)

(declare-fun res!1564326 () Bool)

(declare-fun e!2388380 () Bool)

(assert (=> d!1144787 (=> (not res!1564326) (not e!2388380))))

(assert (=> d!1144787 (= res!1564326 (semiInverseModEq!2721 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (toValue!8772 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72))))))))

(assert (=> d!1144787 (= (inv!55132 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) e!2388380)))

(declare-fun b!3862969 () Bool)

(assert (=> b!3862969 (= e!2388380 (equivClasses!2620 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (toValue!8772 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72))))))))

(assert (= (and d!1144787 res!1564326) b!3862969))

(declare-fun m!4418485 () Bool)

(assert (=> d!1144787 m!4418485))

(declare-fun m!4418487 () Bool)

(assert (=> b!3862969 m!4418487))

(assert (=> b!3862431 d!1144787))

(declare-fun d!1144789 () Bool)

(assert (=> d!1144789 (= (isEmpty!24279 rules!2768) ((_ is Nil!40973) rules!2768))))

(assert (=> b!3862421 d!1144789))

(declare-fun d!1144791 () Bool)

(assert (=> d!1144791 (= (isEmpty!24280 prefixTokens!80) ((_ is Nil!40972) prefixTokens!80))))

(assert (=> b!3862442 d!1144791))

(declare-fun d!1144793 () Bool)

(declare-fun res!1564327 () Bool)

(declare-fun e!2388381 () Bool)

(assert (=> d!1144793 (=> (not res!1564327) (not e!2388381))))

(assert (=> d!1144793 (= res!1564327 (not (isEmpty!24278 (originalCharacters!6944 (h!46392 suffixTokens!72)))))))

(assert (=> d!1144793 (= (inv!55133 (h!46392 suffixTokens!72)) e!2388381)))

(declare-fun b!3862970 () Bool)

(declare-fun res!1564328 () Bool)

(assert (=> b!3862970 (=> (not res!1564328) (not e!2388381))))

(assert (=> b!3862970 (= res!1564328 (= (originalCharacters!6944 (h!46392 suffixTokens!72)) (list!15248 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (value!201438 (h!46392 suffixTokens!72))))))))

(declare-fun b!3862971 () Bool)

(assert (=> b!3862971 (= e!2388381 (= (size!30809 (h!46392 suffixTokens!72)) (size!30810 (originalCharacters!6944 (h!46392 suffixTokens!72)))))))

(assert (= (and d!1144793 res!1564327) b!3862970))

(assert (= (and b!3862970 res!1564328) b!3862971))

(declare-fun b_lambda!112905 () Bool)

(assert (=> (not b_lambda!112905) (not b!3862970)))

(declare-fun tb!223859 () Bool)

(declare-fun t!313656 () Bool)

(assert (=> (and b!3862423 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72))))) t!313656) tb!223859))

(declare-fun b!3862972 () Bool)

(declare-fun e!2388382 () Bool)

(declare-fun tp!1171034 () Bool)

(assert (=> b!3862972 (= e!2388382 (and (inv!55136 (c!672355 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (value!201438 (h!46392 suffixTokens!72))))) tp!1171034))))

(declare-fun result!272636 () Bool)

(assert (=> tb!223859 (= result!272636 (and (inv!55137 (dynLambda!17665 (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (value!201438 (h!46392 suffixTokens!72)))) e!2388382))))

(assert (= tb!223859 b!3862972))

(declare-fun m!4418489 () Bool)

(assert (=> b!3862972 m!4418489))

(declare-fun m!4418491 () Bool)

(assert (=> tb!223859 m!4418491))

(assert (=> b!3862970 t!313656))

(declare-fun b_and!289269 () Bool)

(assert (= b_and!289233 (and (=> t!313656 result!272636) b_and!289269)))

(declare-fun t!313658 () Bool)

(declare-fun tb!223861 () Bool)

(assert (=> (and b!3862433 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72))))) t!313658) tb!223861))

(declare-fun result!272638 () Bool)

(assert (= result!272638 result!272636))

(assert (=> b!3862970 t!313658))

(declare-fun b_and!289271 () Bool)

(assert (= b_and!289235 (and (=> t!313658 result!272638) b_and!289271)))

(declare-fun tb!223863 () Bool)

(declare-fun t!313660 () Bool)

(assert (=> (and b!3862428 (= (toChars!8631 (transformation!6344 (h!46393 rules!2768))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72))))) t!313660) tb!223863))

(declare-fun result!272640 () Bool)

(assert (= result!272640 result!272636))

(assert (=> b!3862970 t!313660))

(declare-fun b_and!289273 () Bool)

(assert (= b_and!289237 (and (=> t!313660 result!272640) b_and!289273)))

(declare-fun m!4418493 () Bool)

(assert (=> d!1144793 m!4418493))

(declare-fun m!4418495 () Bool)

(assert (=> b!3862970 m!4418495))

(assert (=> b!3862970 m!4418495))

(declare-fun m!4418497 () Bool)

(assert (=> b!3862970 m!4418497))

(declare-fun m!4418499 () Bool)

(assert (=> b!3862971 m!4418499))

(assert (=> b!3862422 d!1144793))

(declare-fun b!3862991 () Bool)

(declare-fun e!2388391 () Option!8762)

(declare-fun lt!1342532 () Option!8762)

(declare-fun lt!1342530 () Option!8762)

(assert (=> b!3862991 (= e!2388391 (ite (and ((_ is None!8761) lt!1342532) ((_ is None!8761) lt!1342530)) None!8761 (ite ((_ is None!8761) lt!1342530) lt!1342532 (ite ((_ is None!8761) lt!1342532) lt!1342530 (ite (>= (size!30809 (_1!23224 (v!39059 lt!1342532))) (size!30809 (_1!23224 (v!39059 lt!1342530)))) lt!1342532 lt!1342530)))))))

(declare-fun call!282576 () Option!8762)

(assert (=> b!3862991 (= lt!1342532 call!282576)))

(assert (=> b!3862991 (= lt!1342530 (maxPrefix!3237 thiss!20629 (t!313588 rules!2768) lt!1342346))))

(declare-fun b!3862992 () Bool)

(assert (=> b!3862992 (= e!2388391 call!282576)))

(declare-fun b!3862993 () Bool)

(declare-fun res!1564346 () Bool)

(declare-fun e!2388389 () Bool)

(assert (=> b!3862993 (=> (not res!1564346) (not e!2388389))))

(declare-fun lt!1342533 () Option!8762)

(assert (=> b!3862993 (= res!1564346 (= (value!201438 (_1!23224 (get!13556 lt!1342533))) (apply!9587 (transformation!6344 (rule!9216 (_1!23224 (get!13556 lt!1342533)))) (seqFromList!4615 (originalCharacters!6944 (_1!23224 (get!13556 lt!1342533)))))))))

(declare-fun b!3862994 () Bool)

(declare-fun res!1564345 () Bool)

(assert (=> b!3862994 (=> (not res!1564345) (not e!2388389))))

(assert (=> b!3862994 (= res!1564345 (= (++!10446 (list!15248 (charsOf!4172 (_1!23224 (get!13556 lt!1342533)))) (_2!23224 (get!13556 lt!1342533))) lt!1342346))))

(declare-fun b!3862995 () Bool)

(declare-fun res!1564347 () Bool)

(assert (=> b!3862995 (=> (not res!1564347) (not e!2388389))))

(assert (=> b!3862995 (= res!1564347 (= (list!15248 (charsOf!4172 (_1!23224 (get!13556 lt!1342533)))) (originalCharacters!6944 (_1!23224 (get!13556 lt!1342533)))))))

(declare-fun d!1144795 () Bool)

(declare-fun e!2388390 () Bool)

(assert (=> d!1144795 e!2388390))

(declare-fun res!1564344 () Bool)

(assert (=> d!1144795 (=> res!1564344 e!2388390)))

(assert (=> d!1144795 (= res!1564344 (isEmpty!24282 lt!1342533))))

(assert (=> d!1144795 (= lt!1342533 e!2388391)))

(declare-fun c!672458 () Bool)

(assert (=> d!1144795 (= c!672458 (and ((_ is Cons!40973) rules!2768) ((_ is Nil!40973) (t!313588 rules!2768))))))

(declare-fun lt!1342531 () Unit!58629)

(declare-fun lt!1342534 () Unit!58629)

(assert (=> d!1144795 (= lt!1342531 lt!1342534)))

(assert (=> d!1144795 (isPrefix!3443 lt!1342346 lt!1342346)))

(declare-fun lemmaIsPrefixRefl!2192 (List!41095 List!41095) Unit!58629)

(assert (=> d!1144795 (= lt!1342534 (lemmaIsPrefixRefl!2192 lt!1342346 lt!1342346))))

(assert (=> d!1144795 (rulesValidInductive!2264 thiss!20629 rules!2768)))

(assert (=> d!1144795 (= (maxPrefix!3237 thiss!20629 rules!2768 lt!1342346) lt!1342533)))

(declare-fun b!3862996 () Bool)

(declare-fun res!1564348 () Bool)

(assert (=> b!3862996 (=> (not res!1564348) (not e!2388389))))

(assert (=> b!3862996 (= res!1564348 (matchR!5396 (regex!6344 (rule!9216 (_1!23224 (get!13556 lt!1342533)))) (list!15248 (charsOf!4172 (_1!23224 (get!13556 lt!1342533))))))))

(declare-fun b!3862997 () Bool)

(assert (=> b!3862997 (= e!2388389 (contains!8273 rules!2768 (rule!9216 (_1!23224 (get!13556 lt!1342533)))))))

(declare-fun b!3862998 () Bool)

(assert (=> b!3862998 (= e!2388390 e!2388389)))

(declare-fun res!1564343 () Bool)

(assert (=> b!3862998 (=> (not res!1564343) (not e!2388389))))

(declare-fun isDefined!6869 (Option!8762) Bool)

(assert (=> b!3862998 (= res!1564343 (isDefined!6869 lt!1342533))))

(declare-fun b!3862999 () Bool)

(declare-fun res!1564349 () Bool)

(assert (=> b!3862999 (=> (not res!1564349) (not e!2388389))))

(assert (=> b!3862999 (= res!1564349 (< (size!30810 (_2!23224 (get!13556 lt!1342533))) (size!30810 lt!1342346)))))

(declare-fun bm!282571 () Bool)

(assert (=> bm!282571 (= call!282576 (maxPrefixOneRule!2319 thiss!20629 (h!46393 rules!2768) lt!1342346))))

(assert (= (and d!1144795 c!672458) b!3862992))

(assert (= (and d!1144795 (not c!672458)) b!3862991))

(assert (= (or b!3862992 b!3862991) bm!282571))

(assert (= (and d!1144795 (not res!1564344)) b!3862998))

(assert (= (and b!3862998 res!1564343) b!3862995))

(assert (= (and b!3862995 res!1564347) b!3862999))

(assert (= (and b!3862999 res!1564349) b!3862994))

(assert (= (and b!3862994 res!1564345) b!3862993))

(assert (= (and b!3862993 res!1564346) b!3862996))

(assert (= (and b!3862996 res!1564348) b!3862997))

(declare-fun m!4418501 () Bool)

(assert (=> b!3862995 m!4418501))

(declare-fun m!4418503 () Bool)

(assert (=> b!3862995 m!4418503))

(assert (=> b!3862995 m!4418503))

(declare-fun m!4418505 () Bool)

(assert (=> b!3862995 m!4418505))

(assert (=> b!3862999 m!4418501))

(declare-fun m!4418507 () Bool)

(assert (=> b!3862999 m!4418507))

(assert (=> b!3862999 m!4417875))

(assert (=> b!3862994 m!4418501))

(assert (=> b!3862994 m!4418503))

(assert (=> b!3862994 m!4418503))

(assert (=> b!3862994 m!4418505))

(assert (=> b!3862994 m!4418505))

(declare-fun m!4418509 () Bool)

(assert (=> b!3862994 m!4418509))

(declare-fun m!4418511 () Bool)

(assert (=> bm!282571 m!4418511))

(declare-fun m!4418513 () Bool)

(assert (=> b!3862991 m!4418513))

(assert (=> b!3862993 m!4418501))

(declare-fun m!4418515 () Bool)

(assert (=> b!3862993 m!4418515))

(assert (=> b!3862993 m!4418515))

(declare-fun m!4418517 () Bool)

(assert (=> b!3862993 m!4418517))

(assert (=> b!3862996 m!4418501))

(assert (=> b!3862996 m!4418503))

(assert (=> b!3862996 m!4418503))

(assert (=> b!3862996 m!4418505))

(assert (=> b!3862996 m!4418505))

(declare-fun m!4418519 () Bool)

(assert (=> b!3862996 m!4418519))

(declare-fun m!4418521 () Bool)

(assert (=> d!1144795 m!4418521))

(declare-fun m!4418523 () Bool)

(assert (=> d!1144795 m!4418523))

(declare-fun m!4418525 () Bool)

(assert (=> d!1144795 m!4418525))

(assert (=> d!1144795 m!4417853))

(declare-fun m!4418527 () Bool)

(assert (=> b!3862998 m!4418527))

(assert (=> b!3862997 m!4418501))

(declare-fun m!4418529 () Bool)

(assert (=> b!3862997 m!4418529))

(assert (=> b!3862445 d!1144795))

(declare-fun d!1144797 () Bool)

(declare-fun lt!1342535 () Int)

(assert (=> d!1144797 (>= lt!1342535 0)))

(declare-fun e!2388392 () Int)

(assert (=> d!1144797 (= lt!1342535 e!2388392)))

(declare-fun c!672459 () Bool)

(assert (=> d!1144797 (= c!672459 ((_ is Nil!40971) prefix!426))))

(assert (=> d!1144797 (= (size!30810 prefix!426) lt!1342535)))

(declare-fun b!3863000 () Bool)

(assert (=> b!3863000 (= e!2388392 0)))

(declare-fun b!3863001 () Bool)

(assert (=> b!3863001 (= e!2388392 (+ 1 (size!30810 (t!313586 prefix!426))))))

(assert (= (and d!1144797 c!672459) b!3863000))

(assert (= (and d!1144797 (not c!672459)) b!3863001))

(declare-fun m!4418531 () Bool)

(assert (=> b!3863001 m!4418531))

(assert (=> b!3862424 d!1144797))

(declare-fun b!3863002 () Bool)

(declare-fun res!1564350 () Bool)

(declare-fun e!2388395 () Bool)

(assert (=> b!3863002 (=> res!1564350 e!2388395)))

(assert (=> b!3863002 (= res!1564350 (not ((_ is IntegerValue!19724) (value!201438 (h!46392 suffixTokens!72)))))))

(declare-fun e!2388394 () Bool)

(assert (=> b!3863002 (= e!2388394 e!2388395)))

(declare-fun b!3863003 () Bool)

(assert (=> b!3863003 (= e!2388394 (inv!17 (value!201438 (h!46392 suffixTokens!72))))))

(declare-fun b!3863004 () Bool)

(assert (=> b!3863004 (= e!2388395 (inv!15 (value!201438 (h!46392 suffixTokens!72))))))

(declare-fun d!1144799 () Bool)

(declare-fun c!672460 () Bool)

(assert (=> d!1144799 (= c!672460 ((_ is IntegerValue!19722) (value!201438 (h!46392 suffixTokens!72))))))

(declare-fun e!2388393 () Bool)

(assert (=> d!1144799 (= (inv!21 (value!201438 (h!46392 suffixTokens!72))) e!2388393)))

(declare-fun b!3863005 () Bool)

(assert (=> b!3863005 (= e!2388393 e!2388394)))

(declare-fun c!672461 () Bool)

(assert (=> b!3863005 (= c!672461 ((_ is IntegerValue!19723) (value!201438 (h!46392 suffixTokens!72))))))

(declare-fun b!3863006 () Bool)

(assert (=> b!3863006 (= e!2388393 (inv!16 (value!201438 (h!46392 suffixTokens!72))))))

(assert (= (and d!1144799 c!672460) b!3863006))

(assert (= (and d!1144799 (not c!672460)) b!3863005))

(assert (= (and b!3863005 c!672461) b!3863003))

(assert (= (and b!3863005 (not c!672461)) b!3863002))

(assert (= (and b!3863002 (not res!1564350)) b!3863004))

(declare-fun m!4418533 () Bool)

(assert (=> b!3863003 m!4418533))

(declare-fun m!4418535 () Bool)

(assert (=> b!3863004 m!4418535))

(declare-fun m!4418537 () Bool)

(assert (=> b!3863006 m!4418537))

(assert (=> b!3862425 d!1144799))

(declare-fun e!2388397 () Bool)

(declare-fun lt!1342536 () List!41096)

(declare-fun b!3863010 () Bool)

(assert (=> b!3863010 (= e!2388397 (or (not (= suffixTokens!72 Nil!40972)) (= lt!1342536 lt!1342344)))))

(declare-fun b!3863009 () Bool)

(declare-fun res!1564351 () Bool)

(assert (=> b!3863009 (=> (not res!1564351) (not e!2388397))))

(assert (=> b!3863009 (= res!1564351 (= (size!30813 lt!1342536) (+ (size!30813 lt!1342344) (size!30813 suffixTokens!72))))))

(declare-fun b!3863007 () Bool)

(declare-fun e!2388396 () List!41096)

(assert (=> b!3863007 (= e!2388396 suffixTokens!72)))

(declare-fun b!3863008 () Bool)

(assert (=> b!3863008 (= e!2388396 (Cons!40972 (h!46392 lt!1342344) (++!10445 (t!313587 lt!1342344) suffixTokens!72)))))

(declare-fun d!1144801 () Bool)

(assert (=> d!1144801 e!2388397))

(declare-fun res!1564352 () Bool)

(assert (=> d!1144801 (=> (not res!1564352) (not e!2388397))))

(assert (=> d!1144801 (= res!1564352 (= (content!6112 lt!1342536) ((_ map or) (content!6112 lt!1342344) (content!6112 suffixTokens!72))))))

(assert (=> d!1144801 (= lt!1342536 e!2388396)))

(declare-fun c!672462 () Bool)

(assert (=> d!1144801 (= c!672462 ((_ is Nil!40972) lt!1342344))))

(assert (=> d!1144801 (= (++!10445 lt!1342344 suffixTokens!72) lt!1342536)))

(assert (= (and d!1144801 c!672462) b!3863007))

(assert (= (and d!1144801 (not c!672462)) b!3863008))

(assert (= (and d!1144801 res!1564352) b!3863009))

(assert (= (and b!3863009 res!1564351) b!3863010))

(declare-fun m!4418539 () Bool)

(assert (=> b!3863009 m!4418539))

(declare-fun m!4418541 () Bool)

(assert (=> b!3863009 m!4418541))

(assert (=> b!3863009 m!4417999))

(declare-fun m!4418543 () Bool)

(assert (=> b!3863008 m!4418543))

(declare-fun m!4418545 () Bool)

(assert (=> d!1144801 m!4418545))

(declare-fun m!4418547 () Bool)

(assert (=> d!1144801 m!4418547))

(assert (=> d!1144801 m!4418007))

(assert (=> b!3862446 d!1144801))

(declare-fun d!1144803 () Bool)

(assert (=> d!1144803 (not (= (lexList!1701 thiss!20629 rules!2768 (_2!23224 lt!1342335)) (tuple2!40179 (++!10445 lt!1342344 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1342539 () Unit!58629)

(declare-fun choose!22756 (LexerInterface!5933 List!41097 List!41095 List!41095 List!41096 List!41095 List!41096) Unit!58629)

(assert (=> d!1144803 (= lt!1342539 (choose!22756 thiss!20629 rules!2768 suffix!1176 (_2!23224 lt!1342335) suffixTokens!72 suffixResult!91 lt!1342344))))

(assert (=> d!1144803 (not (isEmpty!24279 rules!2768))))

(assert (=> d!1144803 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!4 thiss!20629 rules!2768 suffix!1176 (_2!23224 lt!1342335) suffixTokens!72 suffixResult!91 lt!1342344) lt!1342539)))

(declare-fun bs!583224 () Bool)

(assert (= bs!583224 d!1144803))

(assert (=> bs!583224 m!4417885))

(assert (=> bs!583224 m!4417889))

(declare-fun m!4418549 () Bool)

(assert (=> bs!583224 m!4418549))

(assert (=> bs!583224 m!4417871))

(assert (=> b!3862446 d!1144803))

(declare-fun d!1144805 () Bool)

(declare-fun lt!1342540 () Int)

(assert (=> d!1144805 (>= lt!1342540 0)))

(declare-fun e!2388398 () Int)

(assert (=> d!1144805 (= lt!1342540 e!2388398)))

(declare-fun c!672463 () Bool)

(assert (=> d!1144805 (= c!672463 ((_ is Nil!40971) (originalCharacters!6944 (_1!23224 (v!39059 lt!1342340)))))))

(assert (=> d!1144805 (= (size!30810 (originalCharacters!6944 (_1!23224 (v!39059 lt!1342340)))) lt!1342540)))

(declare-fun b!3863011 () Bool)

(assert (=> b!3863011 (= e!2388398 0)))

(declare-fun b!3863012 () Bool)

(assert (=> b!3863012 (= e!2388398 (+ 1 (size!30810 (t!313586 (originalCharacters!6944 (_1!23224 (v!39059 lt!1342340)))))))))

(assert (= (and d!1144805 c!672463) b!3863011))

(assert (= (and d!1144805 (not c!672463)) b!3863012))

(declare-fun m!4418551 () Bool)

(assert (=> b!3863012 m!4418551))

(assert (=> b!3862437 d!1144805))

(declare-fun d!1144807 () Bool)

(assert (=> d!1144807 (= (inv!55129 (tag!7204 (h!46393 rules!2768))) (= (mod (str.len (value!201437 (tag!7204 (h!46393 rules!2768)))) 2) 0))))

(assert (=> b!3862417 d!1144807))

(declare-fun d!1144809 () Bool)

(declare-fun res!1564353 () Bool)

(declare-fun e!2388399 () Bool)

(assert (=> d!1144809 (=> (not res!1564353) (not e!2388399))))

(assert (=> d!1144809 (= res!1564353 (semiInverseModEq!2721 (toChars!8631 (transformation!6344 (h!46393 rules!2768))) (toValue!8772 (transformation!6344 (h!46393 rules!2768)))))))

(assert (=> d!1144809 (= (inv!55132 (transformation!6344 (h!46393 rules!2768))) e!2388399)))

(declare-fun b!3863013 () Bool)

(assert (=> b!3863013 (= e!2388399 (equivClasses!2620 (toChars!8631 (transformation!6344 (h!46393 rules!2768))) (toValue!8772 (transformation!6344 (h!46393 rules!2768)))))))

(assert (= (and d!1144809 res!1564353) b!3863013))

(declare-fun m!4418553 () Bool)

(assert (=> d!1144809 m!4418553))

(declare-fun m!4418555 () Bool)

(assert (=> b!3863013 m!4418555))

(assert (=> b!3862417 d!1144809))

(declare-fun d!1144811 () Bool)

(declare-fun e!2388401 () Bool)

(assert (=> d!1144811 e!2388401))

(declare-fun c!672465 () Bool)

(declare-fun lt!1342542 () tuple2!40178)

(assert (=> d!1144811 (= c!672465 (> (size!30813 (_1!23223 lt!1342542)) 0))))

(declare-fun e!2388402 () tuple2!40178)

(assert (=> d!1144811 (= lt!1342542 e!2388402)))

(declare-fun c!672464 () Bool)

(declare-fun lt!1342543 () Option!8762)

(assert (=> d!1144811 (= c!672464 ((_ is Some!8761) lt!1342543))))

(assert (=> d!1144811 (= lt!1342543 (maxPrefix!3237 thiss!20629 rules!2768 (_2!23224 lt!1342335)))))

(assert (=> d!1144811 (= (lexList!1701 thiss!20629 rules!2768 (_2!23224 lt!1342335)) lt!1342542)))

(declare-fun b!3863014 () Bool)

(assert (=> b!3863014 (= e!2388401 (= (_2!23223 lt!1342542) (_2!23224 lt!1342335)))))

(declare-fun b!3863015 () Bool)

(declare-fun lt!1342541 () tuple2!40178)

(assert (=> b!3863015 (= e!2388402 (tuple2!40179 (Cons!40972 (_1!23224 (v!39059 lt!1342543)) (_1!23223 lt!1342541)) (_2!23223 lt!1342541)))))

(assert (=> b!3863015 (= lt!1342541 (lexList!1701 thiss!20629 rules!2768 (_2!23224 (v!39059 lt!1342543))))))

(declare-fun b!3863016 () Bool)

(declare-fun e!2388400 () Bool)

(assert (=> b!3863016 (= e!2388401 e!2388400)))

(declare-fun res!1564354 () Bool)

(assert (=> b!3863016 (= res!1564354 (< (size!30810 (_2!23223 lt!1342542)) (size!30810 (_2!23224 lt!1342335))))))

(assert (=> b!3863016 (=> (not res!1564354) (not e!2388400))))

(declare-fun b!3863017 () Bool)

(assert (=> b!3863017 (= e!2388400 (not (isEmpty!24280 (_1!23223 lt!1342542))))))

(declare-fun b!3863018 () Bool)

(assert (=> b!3863018 (= e!2388402 (tuple2!40179 Nil!40972 (_2!23224 lt!1342335)))))

(assert (= (and d!1144811 c!672464) b!3863015))

(assert (= (and d!1144811 (not c!672464)) b!3863018))

(assert (= (and d!1144811 c!672465) b!3863016))

(assert (= (and d!1144811 (not c!672465)) b!3863014))

(assert (= (and b!3863016 res!1564354) b!3863017))

(declare-fun m!4418557 () Bool)

(assert (=> d!1144811 m!4418557))

(declare-fun m!4418559 () Bool)

(assert (=> d!1144811 m!4418559))

(declare-fun m!4418561 () Bool)

(assert (=> b!3863015 m!4418561))

(declare-fun m!4418563 () Bool)

(assert (=> b!3863016 m!4418563))

(assert (=> b!3863016 m!4417855))

(declare-fun m!4418565 () Bool)

(assert (=> b!3863017 m!4418565))

(assert (=> bm!282559 d!1144811))

(declare-fun d!1144813 () Bool)

(assert (=> d!1144813 (= (tail!5863 prefixTokens!80) (t!313587 prefixTokens!80))))

(assert (=> b!3862438 d!1144813))

(declare-fun d!1144815 () Bool)

(assert (=> d!1144815 (= (isEmpty!24280 lt!1342344) ((_ is Nil!40972) lt!1342344))))

(assert (=> b!3862438 d!1144815))

(declare-fun d!1144817 () Bool)

(assert (=> d!1144817 (= (head!8152 prefixTokens!80) (h!46392 prefixTokens!80))))

(assert (=> b!3862418 d!1144817))

(declare-fun d!1144819 () Bool)

(assert (=> d!1144819 (= (get!13556 lt!1342340) (v!39059 lt!1342340))))

(assert (=> b!3862418 d!1144819))

(declare-fun d!1144821 () Bool)

(assert (=> d!1144821 (= (isEmpty!24278 prefix!426) ((_ is Nil!40971) prefix!426))))

(assert (=> b!3862419 d!1144821))

(declare-fun d!1144823 () Bool)

(assert (=> d!1144823 (not (= (lexList!1701 thiss!20629 rules!2768 (_2!23224 lt!1342335)) (tuple2!40179 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1342546 () Unit!58629)

(declare-fun choose!22757 (LexerInterface!5933 List!41097 List!41095 List!41095 List!41096 List!41095) Unit!58629)

(assert (=> d!1144823 (= lt!1342546 (choose!22757 thiss!20629 rules!2768 suffix!1176 (_2!23224 lt!1342335) suffixTokens!72 suffixResult!91))))

(assert (=> d!1144823 (not (isEmpty!24279 rules!2768))))

(assert (=> d!1144823 (= (lemmaLexWithSmallerInputCannotProduceSameResults!4 thiss!20629 rules!2768 suffix!1176 (_2!23224 lt!1342335) suffixTokens!72 suffixResult!91) lt!1342546)))

(declare-fun bs!583225 () Bool)

(assert (= bs!583225 d!1144823))

(assert (=> bs!583225 m!4417885))

(declare-fun m!4418567 () Bool)

(assert (=> bs!583225 m!4418567))

(assert (=> bs!583225 m!4417871))

(assert (=> b!3862440 d!1144823))

(declare-fun d!1144825 () Bool)

(assert (=> d!1144825 (and (= lt!1342324 lt!1342324) (= (_2!23224 (v!39059 lt!1342340)) (_2!23224 lt!1342335)))))

(declare-fun lt!1342549 () Unit!58629)

(declare-fun choose!22758 (List!41095 List!41095 List!41095 List!41095) Unit!58629)

(assert (=> d!1144825 (= lt!1342549 (choose!22758 lt!1342324 (_2!23224 (v!39059 lt!1342340)) lt!1342324 (_2!23224 lt!1342335)))))

(assert (=> d!1144825 (= (++!10446 lt!1342324 (_2!23224 (v!39059 lt!1342340))) (++!10446 lt!1342324 (_2!23224 lt!1342335)))))

(assert (=> d!1144825 (= (lemmaConcatSameAndSameSizesThenSameLists!428 lt!1342324 (_2!23224 (v!39059 lt!1342340)) lt!1342324 (_2!23224 lt!1342335)) lt!1342549)))

(declare-fun bs!583226 () Bool)

(assert (= bs!583226 d!1144825))

(declare-fun m!4418569 () Bool)

(assert (=> bs!583226 m!4418569))

(assert (=> bs!583226 m!4417919))

(declare-fun m!4418571 () Bool)

(assert (=> bs!583226 m!4418571))

(assert (=> b!3862440 d!1144825))

(declare-fun d!1144827 () Bool)

(declare-fun lt!1342550 () Int)

(assert (=> d!1144827 (>= lt!1342550 0)))

(declare-fun e!2388403 () Int)

(assert (=> d!1144827 (= lt!1342550 e!2388403)))

(declare-fun c!672466 () Bool)

(assert (=> d!1144827 (= c!672466 ((_ is Nil!40971) suffix!1176))))

(assert (=> d!1144827 (= (size!30810 suffix!1176) lt!1342550)))

(declare-fun b!3863019 () Bool)

(assert (=> b!3863019 (= e!2388403 0)))

(declare-fun b!3863020 () Bool)

(assert (=> b!3863020 (= e!2388403 (+ 1 (size!30810 (t!313586 suffix!1176))))))

(assert (= (and d!1144827 c!672466) b!3863019))

(assert (= (and d!1144827 (not c!672466)) b!3863020))

(declare-fun m!4418573 () Bool)

(assert (=> b!3863020 m!4418573))

(assert (=> b!3862420 d!1144827))

(declare-fun d!1144829 () Bool)

(declare-fun lt!1342551 () Int)

(assert (=> d!1144829 (>= lt!1342551 0)))

(declare-fun e!2388404 () Int)

(assert (=> d!1144829 (= lt!1342551 e!2388404)))

(declare-fun c!672467 () Bool)

(assert (=> d!1144829 (= c!672467 ((_ is Nil!40971) (_2!23224 (v!39059 lt!1342340))))))

(assert (=> d!1144829 (= (size!30810 (_2!23224 (v!39059 lt!1342340))) lt!1342551)))

(declare-fun b!3863021 () Bool)

(assert (=> b!3863021 (= e!2388404 0)))

(declare-fun b!3863022 () Bool)

(assert (=> b!3863022 (= e!2388404 (+ 1 (size!30810 (t!313586 (_2!23224 (v!39059 lt!1342340))))))))

(assert (= (and d!1144829 c!672467) b!3863021))

(assert (= (and d!1144829 (not c!672467)) b!3863022))

(declare-fun m!4418575 () Bool)

(assert (=> b!3863022 m!4418575))

(assert (=> b!3862420 d!1144829))

(declare-fun b!3863036 () Bool)

(declare-fun b_free!103957 () Bool)

(declare-fun b_next!104661 () Bool)

(assert (=> b!3863036 (= b_free!103957 (not b_next!104661))))

(declare-fun tb!223865 () Bool)

(declare-fun t!313663 () Bool)

(assert (=> (and b!3863036 (= (toValue!8772 (transformation!6344 (rule!9216 (h!46392 (t!313587 suffixTokens!72))))) (toValue!8772 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313663) tb!223865))

(declare-fun result!272644 () Bool)

(assert (= result!272644 result!272570))

(assert (=> d!1144699 t!313663))

(declare-fun b_and!289275 () Bool)

(declare-fun tp!1171046 () Bool)

(assert (=> b!3863036 (= tp!1171046 (and (=> t!313663 result!272644) b_and!289275))))

(declare-fun b_free!103959 () Bool)

(declare-fun b_next!104663 () Bool)

(assert (=> b!3863036 (= b_free!103959 (not b_next!104663))))

(declare-fun t!313665 () Bool)

(declare-fun tb!223867 () Bool)

(assert (=> (and b!3863036 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 suffixTokens!72))))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80))))) t!313665) tb!223867))

(declare-fun result!272646 () Bool)

(assert (= result!272646 result!272554))

(assert (=> b!3862487 t!313665))

(declare-fun tb!223869 () Bool)

(declare-fun t!313667 () Bool)

(assert (=> (and b!3863036 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 suffixTokens!72))))) (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313667) tb!223869))

(declare-fun result!272648 () Bool)

(assert (= result!272648 result!272578))

(assert (=> d!1144703 t!313667))

(declare-fun t!313669 () Bool)

(declare-fun tb!223871 () Bool)

(assert (=> (and b!3863036 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 suffixTokens!72))))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72))))) t!313669) tb!223871))

(declare-fun result!272650 () Bool)

(assert (= result!272650 result!272636))

(assert (=> b!3862970 t!313669))

(declare-fun b_and!289277 () Bool)

(declare-fun tp!1171049 () Bool)

(assert (=> b!3863036 (= tp!1171049 (and (=> t!313665 result!272646) (=> t!313667 result!272648) (=> t!313669 result!272650) b_and!289277))))

(declare-fun e!2388417 () Bool)

(assert (=> b!3863036 (= e!2388417 (and tp!1171046 tp!1171049))))

(declare-fun e!2388421 () Bool)

(declare-fun e!2388419 () Bool)

(declare-fun tp!1171047 () Bool)

(declare-fun b!3863034 () Bool)

(assert (=> b!3863034 (= e!2388419 (and (inv!21 (value!201438 (h!46392 (t!313587 suffixTokens!72)))) e!2388421 tp!1171047))))

(declare-fun e!2388422 () Bool)

(assert (=> b!3862422 (= tp!1170953 e!2388422)))

(declare-fun tp!1171045 () Bool)

(declare-fun b!3863035 () Bool)

(assert (=> b!3863035 (= e!2388421 (and tp!1171045 (inv!55129 (tag!7204 (rule!9216 (h!46392 (t!313587 suffixTokens!72))))) (inv!55132 (transformation!6344 (rule!9216 (h!46392 (t!313587 suffixTokens!72))))) e!2388417))))

(declare-fun b!3863033 () Bool)

(declare-fun tp!1171048 () Bool)

(assert (=> b!3863033 (= e!2388422 (and (inv!55133 (h!46392 (t!313587 suffixTokens!72))) e!2388419 tp!1171048))))

(assert (= b!3863035 b!3863036))

(assert (= b!3863034 b!3863035))

(assert (= b!3863033 b!3863034))

(assert (= (and b!3862422 ((_ is Cons!40972) (t!313587 suffixTokens!72))) b!3863033))

(declare-fun m!4418577 () Bool)

(assert (=> b!3863034 m!4418577))

(declare-fun m!4418579 () Bool)

(assert (=> b!3863035 m!4418579))

(declare-fun m!4418581 () Bool)

(assert (=> b!3863035 m!4418581))

(declare-fun m!4418583 () Bool)

(assert (=> b!3863033 m!4418583))

(declare-fun b!3863049 () Bool)

(declare-fun e!2388425 () Bool)

(declare-fun tp!1171064 () Bool)

(assert (=> b!3863049 (= e!2388425 tp!1171064)))

(declare-fun b!3863047 () Bool)

(assert (=> b!3863047 (= e!2388425 tp_is_empty!19469)))

(declare-fun b!3863048 () Bool)

(declare-fun tp!1171063 () Bool)

(declare-fun tp!1171061 () Bool)

(assert (=> b!3863048 (= e!2388425 (and tp!1171063 tp!1171061))))

(declare-fun b!3863050 () Bool)

(declare-fun tp!1171062 () Bool)

(declare-fun tp!1171060 () Bool)

(assert (=> b!3863050 (= e!2388425 (and tp!1171062 tp!1171060))))

(assert (=> b!3862413 (= tp!1170951 e!2388425)))

(assert (= (and b!3862413 ((_ is ElementMatch!11249) (regex!6344 (rule!9216 (h!46392 prefixTokens!80))))) b!3863047))

(assert (= (and b!3862413 ((_ is Concat!17824) (regex!6344 (rule!9216 (h!46392 prefixTokens!80))))) b!3863048))

(assert (= (and b!3862413 ((_ is Star!11249) (regex!6344 (rule!9216 (h!46392 prefixTokens!80))))) b!3863049))

(assert (= (and b!3862413 ((_ is Union!11249) (regex!6344 (rule!9216 (h!46392 prefixTokens!80))))) b!3863050))

(declare-fun b!3863054 () Bool)

(declare-fun b_free!103961 () Bool)

(declare-fun b_next!104665 () Bool)

(assert (=> b!3863054 (= b_free!103961 (not b_next!104665))))

(declare-fun tb!223873 () Bool)

(declare-fun t!313671 () Bool)

(assert (=> (and b!3863054 (= (toValue!8772 (transformation!6344 (rule!9216 (h!46392 (t!313587 prefixTokens!80))))) (toValue!8772 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313671) tb!223873))

(declare-fun result!272654 () Bool)

(assert (= result!272654 result!272570))

(assert (=> d!1144699 t!313671))

(declare-fun b_and!289279 () Bool)

(declare-fun tp!1171066 () Bool)

(assert (=> b!3863054 (= tp!1171066 (and (=> t!313671 result!272654) b_and!289279))))

(declare-fun b_free!103963 () Bool)

(declare-fun b_next!104667 () Bool)

(assert (=> b!3863054 (= b_free!103963 (not b_next!104667))))

(declare-fun t!313673 () Bool)

(declare-fun tb!223875 () Bool)

(assert (=> (and b!3863054 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 prefixTokens!80))))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80))))) t!313673) tb!223875))

(declare-fun result!272656 () Bool)

(assert (= result!272656 result!272554))

(assert (=> b!3862487 t!313673))

(declare-fun tb!223877 () Bool)

(declare-fun t!313675 () Bool)

(assert (=> (and b!3863054 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 prefixTokens!80))))) (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313675) tb!223877))

(declare-fun result!272658 () Bool)

(assert (= result!272658 result!272578))

(assert (=> d!1144703 t!313675))

(declare-fun t!313677 () Bool)

(declare-fun tb!223879 () Bool)

(assert (=> (and b!3863054 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 prefixTokens!80))))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72))))) t!313677) tb!223879))

(declare-fun result!272660 () Bool)

(assert (= result!272660 result!272636))

(assert (=> b!3862970 t!313677))

(declare-fun b_and!289281 () Bool)

(declare-fun tp!1171069 () Bool)

(assert (=> b!3863054 (= tp!1171069 (and (=> t!313673 result!272656) (=> t!313675 result!272658) (=> t!313677 result!272660) b_and!289281))))

(declare-fun e!2388426 () Bool)

(assert (=> b!3863054 (= e!2388426 (and tp!1171066 tp!1171069))))

(declare-fun b!3863052 () Bool)

(declare-fun e!2388430 () Bool)

(declare-fun tp!1171067 () Bool)

(declare-fun e!2388428 () Bool)

(assert (=> b!3863052 (= e!2388428 (and (inv!21 (value!201438 (h!46392 (t!313587 prefixTokens!80)))) e!2388430 tp!1171067))))

(declare-fun e!2388431 () Bool)

(assert (=> b!3862414 (= tp!1170947 e!2388431)))

(declare-fun tp!1171065 () Bool)

(declare-fun b!3863053 () Bool)

(assert (=> b!3863053 (= e!2388430 (and tp!1171065 (inv!55129 (tag!7204 (rule!9216 (h!46392 (t!313587 prefixTokens!80))))) (inv!55132 (transformation!6344 (rule!9216 (h!46392 (t!313587 prefixTokens!80))))) e!2388426))))

(declare-fun b!3863051 () Bool)

(declare-fun tp!1171068 () Bool)

(assert (=> b!3863051 (= e!2388431 (and (inv!55133 (h!46392 (t!313587 prefixTokens!80))) e!2388428 tp!1171068))))

(assert (= b!3863053 b!3863054))

(assert (= b!3863052 b!3863053))

(assert (= b!3863051 b!3863052))

(assert (= (and b!3862414 ((_ is Cons!40972) (t!313587 prefixTokens!80))) b!3863051))

(declare-fun m!4418585 () Bool)

(assert (=> b!3863052 m!4418585))

(declare-fun m!4418587 () Bool)

(assert (=> b!3863053 m!4418587))

(declare-fun m!4418589 () Bool)

(assert (=> b!3863053 m!4418589))

(declare-fun m!4418591 () Bool)

(assert (=> b!3863051 m!4418591))

(declare-fun b!3863059 () Bool)

(declare-fun e!2388434 () Bool)

(declare-fun tp!1171072 () Bool)

(assert (=> b!3863059 (= e!2388434 (and tp_is_empty!19469 tp!1171072))))

(assert (=> b!3862434 (= tp!1170954 e!2388434)))

(assert (= (and b!3862434 ((_ is Cons!40971) (t!313586 suffixResult!91))) b!3863059))

(declare-fun b!3863060 () Bool)

(declare-fun e!2388435 () Bool)

(declare-fun tp!1171073 () Bool)

(assert (=> b!3863060 (= e!2388435 (and tp_is_empty!19469 tp!1171073))))

(assert (=> b!3862435 (= tp!1170948 e!2388435)))

(assert (= (and b!3862435 ((_ is Cons!40971) (originalCharacters!6944 (h!46392 prefixTokens!80)))) b!3863060))

(declare-fun b!3863061 () Bool)

(declare-fun e!2388436 () Bool)

(declare-fun tp!1171074 () Bool)

(assert (=> b!3863061 (= e!2388436 (and tp_is_empty!19469 tp!1171074))))

(assert (=> b!3862425 (= tp!1170956 e!2388436)))

(assert (= (and b!3862425 ((_ is Cons!40971) (originalCharacters!6944 (h!46392 suffixTokens!72)))) b!3863061))

(declare-fun b!3863062 () Bool)

(declare-fun e!2388437 () Bool)

(declare-fun tp!1171075 () Bool)

(assert (=> b!3863062 (= e!2388437 (and tp_is_empty!19469 tp!1171075))))

(assert (=> b!3862436 (= tp!1170952 e!2388437)))

(assert (= (and b!3862436 ((_ is Cons!40971) (t!313586 suffix!1176))) b!3863062))

(declare-fun b!3863065 () Bool)

(declare-fun e!2388438 () Bool)

(declare-fun tp!1171080 () Bool)

(assert (=> b!3863065 (= e!2388438 tp!1171080)))

(declare-fun b!3863063 () Bool)

(assert (=> b!3863063 (= e!2388438 tp_is_empty!19469)))

(declare-fun b!3863064 () Bool)

(declare-fun tp!1171079 () Bool)

(declare-fun tp!1171077 () Bool)

(assert (=> b!3863064 (= e!2388438 (and tp!1171079 tp!1171077))))

(declare-fun b!3863066 () Bool)

(declare-fun tp!1171078 () Bool)

(declare-fun tp!1171076 () Bool)

(assert (=> b!3863066 (= e!2388438 (and tp!1171078 tp!1171076))))

(assert (=> b!3862417 (= tp!1170957 e!2388438)))

(assert (= (and b!3862417 ((_ is ElementMatch!11249) (regex!6344 (h!46393 rules!2768)))) b!3863063))

(assert (= (and b!3862417 ((_ is Concat!17824) (regex!6344 (h!46393 rules!2768)))) b!3863064))

(assert (= (and b!3862417 ((_ is Star!11249) (regex!6344 (h!46393 rules!2768)))) b!3863065))

(assert (= (and b!3862417 ((_ is Union!11249) (regex!6344 (h!46393 rules!2768)))) b!3863066))

(declare-fun b!3863077 () Bool)

(declare-fun b_free!103965 () Bool)

(declare-fun b_next!104669 () Bool)

(assert (=> b!3863077 (= b_free!103965 (not b_next!104669))))

(declare-fun tb!223881 () Bool)

(declare-fun t!313679 () Bool)

(assert (=> (and b!3863077 (= (toValue!8772 (transformation!6344 (h!46393 (t!313588 rules!2768)))) (toValue!8772 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313679) tb!223881))

(declare-fun result!272666 () Bool)

(assert (= result!272666 result!272570))

(assert (=> d!1144699 t!313679))

(declare-fun b_and!289283 () Bool)

(declare-fun tp!1171090 () Bool)

(assert (=> b!3863077 (= tp!1171090 (and (=> t!313679 result!272666) b_and!289283))))

(declare-fun b_free!103967 () Bool)

(declare-fun b_next!104671 () Bool)

(assert (=> b!3863077 (= b_free!103967 (not b_next!104671))))

(declare-fun t!313681 () Bool)

(declare-fun tb!223883 () Bool)

(assert (=> (and b!3863077 (= (toChars!8631 (transformation!6344 (h!46393 (t!313588 rules!2768)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80))))) t!313681) tb!223883))

(declare-fun result!272668 () Bool)

(assert (= result!272668 result!272554))

(assert (=> b!3862487 t!313681))

(declare-fun tb!223885 () Bool)

(declare-fun t!313683 () Bool)

(assert (=> (and b!3863077 (= (toChars!8631 (transformation!6344 (h!46393 (t!313588 rules!2768)))) (toChars!8631 (transformation!6344 (rule!9216 (_1!23224 (v!39059 lt!1342340)))))) t!313683) tb!223885))

(declare-fun result!272670 () Bool)

(assert (= result!272670 result!272578))

(assert (=> d!1144703 t!313683))

(declare-fun tb!223887 () Bool)

(declare-fun t!313685 () Bool)

(assert (=> (and b!3863077 (= (toChars!8631 (transformation!6344 (h!46393 (t!313588 rules!2768)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72))))) t!313685) tb!223887))

(declare-fun result!272672 () Bool)

(assert (= result!272672 result!272636))

(assert (=> b!3862970 t!313685))

(declare-fun tp!1171092 () Bool)

(declare-fun b_and!289285 () Bool)

(assert (=> b!3863077 (= tp!1171092 (and (=> t!313681 result!272668) (=> t!313683 result!272670) (=> t!313685 result!272672) b_and!289285))))

(declare-fun e!2388449 () Bool)

(assert (=> b!3863077 (= e!2388449 (and tp!1171090 tp!1171092))))

(declare-fun tp!1171091 () Bool)

(declare-fun e!2388447 () Bool)

(declare-fun b!3863076 () Bool)

(assert (=> b!3863076 (= e!2388447 (and tp!1171091 (inv!55129 (tag!7204 (h!46393 (t!313588 rules!2768)))) (inv!55132 (transformation!6344 (h!46393 (t!313588 rules!2768)))) e!2388449))))

(declare-fun b!3863075 () Bool)

(declare-fun e!2388450 () Bool)

(declare-fun tp!1171089 () Bool)

(assert (=> b!3863075 (= e!2388450 (and e!2388447 tp!1171089))))

(assert (=> b!3862439 (= tp!1170944 e!2388450)))

(assert (= b!3863076 b!3863077))

(assert (= b!3863075 b!3863076))

(assert (= (and b!3862439 ((_ is Cons!40973) (t!313588 rules!2768))) b!3863075))

(declare-fun m!4418593 () Bool)

(assert (=> b!3863076 m!4418593))

(declare-fun m!4418595 () Bool)

(assert (=> b!3863076 m!4418595))

(declare-fun b!3863078 () Bool)

(declare-fun e!2388451 () Bool)

(declare-fun tp!1171093 () Bool)

(assert (=> b!3863078 (= e!2388451 (and tp_is_empty!19469 tp!1171093))))

(assert (=> b!3862441 (= tp!1170958 e!2388451)))

(assert (= (and b!3862441 ((_ is Cons!40971) (t!313586 prefix!426))) b!3863078))

(declare-fun b!3863081 () Bool)

(declare-fun e!2388452 () Bool)

(declare-fun tp!1171098 () Bool)

(assert (=> b!3863081 (= e!2388452 tp!1171098)))

(declare-fun b!3863079 () Bool)

(assert (=> b!3863079 (= e!2388452 tp_is_empty!19469)))

(declare-fun b!3863080 () Bool)

(declare-fun tp!1171097 () Bool)

(declare-fun tp!1171095 () Bool)

(assert (=> b!3863080 (= e!2388452 (and tp!1171097 tp!1171095))))

(declare-fun b!3863082 () Bool)

(declare-fun tp!1171096 () Bool)

(declare-fun tp!1171094 () Bool)

(assert (=> b!3863082 (= e!2388452 (and tp!1171096 tp!1171094))))

(assert (=> b!3862431 (= tp!1170946 e!2388452)))

(assert (= (and b!3862431 ((_ is ElementMatch!11249) (regex!6344 (rule!9216 (h!46392 suffixTokens!72))))) b!3863079))

(assert (= (and b!3862431 ((_ is Concat!17824) (regex!6344 (rule!9216 (h!46392 suffixTokens!72))))) b!3863080))

(assert (= (and b!3862431 ((_ is Star!11249) (regex!6344 (rule!9216 (h!46392 suffixTokens!72))))) b!3863081))

(assert (= (and b!3862431 ((_ is Union!11249) (regex!6344 (rule!9216 (h!46392 suffixTokens!72))))) b!3863082))

(declare-fun b_lambda!112907 () Bool)

(assert (= b_lambda!112887 (or (and b!3862428 b_free!103943 (= (toChars!8631 (transformation!6344 (h!46393 rules!2768))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))))) (and b!3863054 b_free!103963 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 prefixTokens!80))))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))))) (and b!3862433 b_free!103939 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))))) (and b!3862423 b_free!103935) (and b!3863077 b_free!103967 (= (toChars!8631 (transformation!6344 (h!46393 (t!313588 rules!2768)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))))) (and b!3863036 b_free!103959 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 suffixTokens!72))))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))))) b_lambda!112907)))

(declare-fun b_lambda!112909 () Bool)

(assert (= b_lambda!112905 (or (and b!3862428 b_free!103943 (= (toChars!8631 (transformation!6344 (h!46393 rules!2768))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))))) (and b!3863077 b_free!103967 (= (toChars!8631 (transformation!6344 (h!46393 (t!313588 rules!2768)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))))) (and b!3862433 b_free!103939) (and b!3863054 b_free!103963 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 prefixTokens!80))))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))))) (and b!3863036 b_free!103959 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 (t!313587 suffixTokens!72))))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))))) (and b!3862423 b_free!103935 (= (toChars!8631 (transformation!6344 (rule!9216 (h!46392 prefixTokens!80)))) (toChars!8631 (transformation!6344 (rule!9216 (h!46392 suffixTokens!72)))))) b_lambda!112909)))

(check-sat (not b!3863003) (not b!3862488) (not b!3862971) (not b!3863060) (not d!1144697) (not tb!223811) (not d!1144793) (not tb!223859) (not d!1144685) (not b!3862535) b_and!289277 (not b!3862463) (not b_next!104671) (not b!3862698) (not d!1144795) (not b!3863078) (not b!3863051) (not b!3862701) (not d!1144701) (not bm!282562) (not d!1144811) b_and!289269 (not b!3862970) (not b!3862997) (not d!1144627) (not b_next!104667) (not b!3862508) (not b!3862739) (not b!3863082) (not b!3862487) (not d!1144695) (not b!3863033) (not b!3863004) b_and!289275 (not b!3862568) (not b_next!104665) (not b_next!104661) (not b!3862972) (not b!3863012) (not d!1144825) (not d!1144823) (not b!3862963) (not b!3862726) b_and!289229 (not b!3862575) (not b!3862462) (not b!3862717) (not b_next!104637) (not d!1144621) (not b_lambda!112909) (not b_next!104645) (not b!3862493) (not b_next!104639) (not b!3863049) (not b!3862572) (not b!3862964) (not b!3862695) (not d!1144787) (not b!3863009) (not b!3862702) (not b!3862749) (not b!3862721) (not d!1144801) (not b!3862565) (not b!3863061) b_and!289283 (not b!3862996) (not b!3863016) (not b!3863059) b_and!289279 (not d!1144675) (not b!3862732) (not b!3862993) (not d!1144677) (not b!3862737) (not b!3862527) (not b!3863052) (not b!3863080) (not b!3862510) (not d!1144681) (not b!3862516) (not b!3862505) (not b!3862511) (not b_next!104641) (not b!3863006) (not b!3863035) (not b!3862564) (not d!1144679) (not tb!223793) b_and!289227 (not b!3862506) (not b!3863062) (not b!3863008) (not b!3862566) (not b!3863075) (not b!3863050) (not d!1144707) (not b!3862718) (not b!3862478) (not b!3863053) (not b!3862705) (not b!3862999) (not b!3862697) (not b!3863022) (not b!3862477) (not d!1144623) (not b_next!104663) (not d!1144637) (not b_lambda!112907) (not d!1144641) (not b!3862482) (not b!3862991) (not b!3863001) (not b!3863065) (not b!3862995) (not tb!223805) (not b!3862998) (not b!3862719) (not b!3862994) (not b!3862738) (not b!3862515) (not d!1144809) (not b_next!104643) (not d!1144683) (not d!1144633) (not d!1144689) (not d!1144703) (not b_next!104669) (not b_lambda!112893) (not b!3863048) (not b!3863076) (not b!3862703) (not d!1144643) (not b_lambda!112891) (not b!3862699) (not b!3863013) (not b!3862969) (not b!3863081) (not b!3863066) (not b!3862706) (not b!3862762) b_and!289285 (not b!3863034) b_and!289273 (not b!3863015) (not d!1144629) (not b!3863020) (not d!1144693) (not b_next!104647) (not b!3862476) b_and!289271 tp_is_empty!19469 (not b!3863064) (not d!1144803) b_and!289281 (not d!1144705) b_and!289231 (not b!3862512) (not b!3863017) (not d!1144635) (not b!3862700) (not b!3862968) (not b!3862528) (not bm!282571))
(check-sat b_and!289277 (not b_next!104671) b_and!289275 b_and!289229 (not b_next!104637) b_and!289283 b_and!289279 (not b_next!104641) b_and!289227 (not b_next!104663) (not b_next!104643) (not b_next!104669) b_and!289231 b_and!289269 (not b_next!104667) (not b_next!104665) (not b_next!104661) (not b_next!104645) (not b_next!104639) b_and!289285 b_and!289273 (not b_next!104647) b_and!289271 b_and!289281)
