; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363652 () Bool)

(assert start!363652)

(declare-fun b!3873557 () Bool)

(declare-fun b_free!104653 () Bool)

(declare-fun b_next!105357 () Bool)

(assert (=> b!3873557 (= b_free!104653 (not b_next!105357))))

(declare-fun tp!1174373 () Bool)

(declare-fun b_and!290403 () Bool)

(assert (=> b!3873557 (= tp!1174373 b_and!290403)))

(declare-fun b_free!104655 () Bool)

(declare-fun b_next!105359 () Bool)

(assert (=> b!3873557 (= b_free!104655 (not b_next!105359))))

(declare-fun tp!1174376 () Bool)

(declare-fun b_and!290405 () Bool)

(assert (=> b!3873557 (= tp!1174376 b_and!290405)))

(declare-fun b!3873543 () Bool)

(declare-fun b_free!104657 () Bool)

(declare-fun b_next!105361 () Bool)

(assert (=> b!3873543 (= b_free!104657 (not b_next!105361))))

(declare-fun tp!1174379 () Bool)

(declare-fun b_and!290407 () Bool)

(assert (=> b!3873543 (= tp!1174379 b_and!290407)))

(declare-fun b_free!104659 () Bool)

(declare-fun b_next!105363 () Bool)

(assert (=> b!3873543 (= b_free!104659 (not b_next!105363))))

(declare-fun tp!1174365 () Bool)

(declare-fun b_and!290409 () Bool)

(assert (=> b!3873543 (= tp!1174365 b_and!290409)))

(declare-fun b!3873528 () Bool)

(declare-fun b_free!104661 () Bool)

(declare-fun b_next!105365 () Bool)

(assert (=> b!3873528 (= b_free!104661 (not b_next!105365))))

(declare-fun tp!1174374 () Bool)

(declare-fun b_and!290411 () Bool)

(assert (=> b!3873528 (= tp!1174374 b_and!290411)))

(declare-fun b_free!104663 () Bool)

(declare-fun b_next!105367 () Bool)

(assert (=> b!3873528 (= b_free!104663 (not b_next!105367))))

(declare-fun tp!1174369 () Bool)

(declare-fun b_and!290413 () Bool)

(assert (=> b!3873528 (= tp!1174369 b_and!290413)))

(declare-fun tp!1174367 () Bool)

(declare-datatypes ((C!22764 0))(
  ( (C!22765 (val!13476 Int)) )
))
(declare-datatypes ((List!41274 0))(
  ( (Nil!41150) (Cons!41150 (h!46570 C!22764) (t!314725 List!41274)) )
))
(declare-datatypes ((IArray!25195 0))(
  ( (IArray!25196 (innerList!12655 List!41274)) )
))
(declare-datatypes ((Conc!12595 0))(
  ( (Node!12595 (left!31605 Conc!12595) (right!31935 Conc!12595) (csize!25420 Int) (cheight!12806 Int)) (Leaf!19494 (xs!15901 IArray!25195) (csize!25421 Int)) (Empty!12595) )
))
(declare-datatypes ((BalanceConc!24784 0))(
  ( (BalanceConc!24785 (c!674026 Conc!12595)) )
))
(declare-datatypes ((List!41275 0))(
  ( (Nil!41151) (Cons!41151 (h!46571 (_ BitVec 16)) (t!314726 List!41275)) )
))
(declare-datatypes ((TokenValue!6614 0))(
  ( (FloatLiteralValue!13228 (text!46743 List!41275)) (TokenValueExt!6613 (__x!25445 Int)) (Broken!33070 (value!202552 List!41275)) (Object!6737) (End!6614) (Def!6614) (Underscore!6614) (Match!6614) (Else!6614) (Error!6614) (Case!6614) (If!6614) (Extends!6614) (Abstract!6614) (Class!6614) (Val!6614) (DelimiterValue!13228 (del!6674 List!41275)) (KeywordValue!6620 (value!202553 List!41275)) (CommentValue!13228 (value!202554 List!41275)) (WhitespaceValue!13228 (value!202555 List!41275)) (IndentationValue!6614 (value!202556 List!41275)) (String!46787) (Int32!6614) (Broken!33071 (value!202557 List!41275)) (Boolean!6615) (Unit!59034) (OperatorValue!6617 (op!6674 List!41275)) (IdentifierValue!13228 (value!202558 List!41275)) (IdentifierValue!13229 (value!202559 List!41275)) (WhitespaceValue!13229 (value!202560 List!41275)) (True!13228) (False!13228) (Broken!33072 (value!202561 List!41275)) (Broken!33073 (value!202562 List!41275)) (True!13229) (RightBrace!6614) (RightBracket!6614) (Colon!6614) (Null!6614) (Comma!6614) (LeftBracket!6614) (False!13229) (LeftBrace!6614) (ImaginaryLiteralValue!6614 (text!46744 List!41275)) (StringLiteralValue!19842 (value!202563 List!41275)) (EOFValue!6614 (value!202564 List!41275)) (IdentValue!6614 (value!202565 List!41275)) (DelimiterValue!13229 (value!202566 List!41275)) (DedentValue!6614 (value!202567 List!41275)) (NewLineValue!6614 (value!202568 List!41275)) (IntegerValue!19842 (value!202569 (_ BitVec 32)) (text!46745 List!41275)) (IntegerValue!19843 (value!202570 Int) (text!46746 List!41275)) (Times!6614) (Or!6614) (Equal!6614) (Minus!6614) (Broken!33074 (value!202571 List!41275)) (And!6614) (Div!6614) (LessEqual!6614) (Mod!6614) (Concat!17903) (Not!6614) (Plus!6614) (SpaceValue!6614 (value!202572 List!41275)) (IntegerValue!19844 (value!202573 Int) (text!46747 List!41275)) (StringLiteralValue!19843 (text!46748 List!41275)) (FloatLiteralValue!13229 (text!46749 List!41275)) (BytesLiteralValue!6614 (value!202574 List!41275)) (CommentValue!13229 (value!202575 List!41275)) (StringLiteralValue!19844 (value!202576 List!41275)) (ErrorTokenValue!6614 (msg!6675 List!41275)) )
))
(declare-datatypes ((Regex!11289 0))(
  ( (ElementMatch!11289 (c!674027 C!22764)) (Concat!17904 (regOne!23090 Regex!11289) (regTwo!23090 Regex!11289)) (EmptyExpr!11289) (Star!11289 (reg!11618 Regex!11289)) (EmptyLang!11289) (Union!11289 (regOne!23091 Regex!11289) (regTwo!23091 Regex!11289)) )
))
(declare-datatypes ((String!46788 0))(
  ( (String!46789 (value!202577 String)) )
))
(declare-datatypes ((TokenValueInjection!12656 0))(
  ( (TokenValueInjection!12657 (toValue!8812 Int) (toChars!8671 Int)) )
))
(declare-datatypes ((Rule!12568 0))(
  ( (Rule!12569 (regex!6384 Regex!11289) (tag!7244 String!46788) (isSeparator!6384 Bool) (transformation!6384 TokenValueInjection!12656)) )
))
(declare-datatypes ((List!41276 0))(
  ( (Nil!41152) (Cons!41152 (h!46572 Rule!12568) (t!314727 List!41276)) )
))
(declare-fun rules!2768 () List!41276)

(declare-fun e!2396066 () Bool)

(declare-fun b!3873512 () Bool)

(declare-fun e!2396037 () Bool)

(declare-fun inv!55309 (String!46788) Bool)

(declare-fun inv!55312 (TokenValueInjection!12656) Bool)

(assert (=> b!3873512 (= e!2396066 (and tp!1174367 (inv!55309 (tag!7244 (h!46572 rules!2768))) (inv!55312 (transformation!6384 (h!46572 rules!2768))) e!2396037))))

(declare-fun b!3873513 () Bool)

(declare-fun e!2396052 () Bool)

(declare-fun tp_is_empty!19549 () Bool)

(declare-fun tp!1174377 () Bool)

(assert (=> b!3873513 (= e!2396052 (and tp_is_empty!19549 tp!1174377))))

(declare-fun b!3873514 () Bool)

(declare-fun e!2396044 () Bool)

(declare-fun e!2396063 () Bool)

(assert (=> b!3873514 (= e!2396044 e!2396063)))

(declare-fun res!1569086 () Bool)

(assert (=> b!3873514 (=> res!1569086 e!2396063)))

(declare-fun lt!1349153 () List!41274)

(declare-fun lt!1349114 () List!41274)

(declare-fun lt!1349152 () List!41274)

(declare-fun lt!1349141 () List!41274)

(assert (=> b!3873514 (= res!1569086 (or (not (= lt!1349153 lt!1349114)) (not (= lt!1349153 lt!1349152)) (not (= lt!1349141 lt!1349152))))))

(assert (=> b!3873514 (= lt!1349114 lt!1349152)))

(declare-fun lt!1349132 () List!41274)

(declare-fun lt!1349146 () List!41274)

(declare-fun ++!10525 (List!41274 List!41274) List!41274)

(assert (=> b!3873514 (= lt!1349152 (++!10525 lt!1349132 lt!1349146))))

(declare-fun lt!1349139 () List!41274)

(declare-fun suffix!1176 () List!41274)

(assert (=> b!3873514 (= lt!1349146 (++!10525 lt!1349139 suffix!1176))))

(declare-datatypes ((Unit!59035 0))(
  ( (Unit!59036) )
))
(declare-fun lt!1349109 () Unit!59035)

(declare-fun lemmaConcatAssociativity!2239 (List!41274 List!41274 List!41274) Unit!59035)

(assert (=> b!3873514 (= lt!1349109 (lemmaConcatAssociativity!2239 lt!1349132 lt!1349139 suffix!1176))))

(declare-fun b!3873515 () Bool)

(declare-fun e!2396055 () Unit!59035)

(declare-fun Unit!59037 () Unit!59035)

(assert (=> b!3873515 (= e!2396055 Unit!59037)))

(declare-fun lt!1349140 () Unit!59035)

(declare-fun suffixResult!91 () List!41274)

(declare-datatypes ((LexerInterface!5973 0))(
  ( (LexerInterfaceExt!5970 (__x!25446 Int)) (Lexer!5971) )
))
(declare-fun thiss!20629 () LexerInterface!5973)

(declare-datatypes ((Token!11906 0))(
  ( (Token!11907 (value!202578 TokenValue!6614) (rule!9276 Rule!12568) (size!30929 Int) (originalCharacters!6984 List!41274)) )
))
(declare-datatypes ((List!41277 0))(
  ( (Nil!41153) (Cons!41153 (h!46573 Token!11906) (t!314728 List!41277)) )
))
(declare-fun lt!1349127 () List!41277)

(declare-fun suffixTokens!72 () List!41277)

(declare-datatypes ((tuple2!40378 0))(
  ( (tuple2!40379 (_1!23323 Token!11906) (_2!23323 List!41274)) )
))
(declare-fun lt!1349149 () tuple2!40378)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!44 (LexerInterface!5973 List!41276 List!41274 List!41274 List!41277 List!41274 List!41277) Unit!59035)

(assert (=> b!3873515 (= lt!1349140 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!44 thiss!20629 rules!2768 suffix!1176 (_2!23323 lt!1349149) suffixTokens!72 suffixResult!91 lt!1349127))))

(declare-datatypes ((tuple2!40380 0))(
  ( (tuple2!40381 (_1!23324 List!41277) (_2!23324 List!41274)) )
))
(declare-fun call!282762 () tuple2!40380)

(declare-fun res!1569079 () Bool)

(declare-fun ++!10526 (List!41277 List!41277) List!41277)

(assert (=> b!3873515 (= res!1569079 (not (= call!282762 (tuple2!40381 (++!10526 lt!1349127 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2396064 () Bool)

(assert (=> b!3873515 (=> (not res!1569079) (not e!2396064))))

(assert (=> b!3873515 e!2396064))

(declare-fun b!3873516 () Bool)

(declare-fun e!2396071 () Bool)

(declare-fun e!2396034 () Bool)

(declare-fun tp!1174375 () Bool)

(declare-fun inv!55313 (Token!11906) Bool)

(assert (=> b!3873516 (= e!2396071 (and (inv!55313 (h!46573 suffixTokens!72)) e!2396034 tp!1174375))))

(declare-fun b!3873517 () Bool)

(declare-fun e!2396047 () Bool)

(declare-fun e!2396056 () Bool)

(assert (=> b!3873517 (= e!2396047 e!2396056)))

(declare-fun res!1569080 () Bool)

(assert (=> b!3873517 (=> (not res!1569080) (not e!2396056))))

(declare-fun lt!1349112 () tuple2!40380)

(declare-fun lt!1349147 () List!41277)

(assert (=> b!3873517 (= res!1569080 (= lt!1349112 (tuple2!40381 lt!1349147 suffixResult!91)))))

(declare-fun lexList!1741 (LexerInterface!5973 List!41276 List!41274) tuple2!40380)

(assert (=> b!3873517 (= lt!1349112 (lexList!1741 thiss!20629 rules!2768 lt!1349153))))

(declare-fun prefixTokens!80 () List!41277)

(assert (=> b!3873517 (= lt!1349147 (++!10526 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41274)

(assert (=> b!3873517 (= lt!1349153 (++!10525 prefix!426 suffix!1176))))

(declare-fun b!3873518 () Bool)

(declare-fun res!1569071 () Bool)

(assert (=> b!3873518 (=> (not res!1569071) (not e!2396047))))

(declare-fun isEmpty!24418 (List!41277) Bool)

(assert (=> b!3873518 (= res!1569071 (not (isEmpty!24418 prefixTokens!80)))))

(declare-fun b!3873519 () Bool)

(declare-fun e!2396032 () Bool)

(declare-fun e!2396050 () Bool)

(assert (=> b!3873519 (= e!2396032 e!2396050)))

(declare-fun res!1569081 () Bool)

(assert (=> b!3873519 (=> res!1569081 e!2396050)))

(declare-fun lt!1349122 () List!41277)

(declare-fun lt!1349150 () tuple2!40380)

(assert (=> b!3873519 (= res!1569081 (not (= lt!1349112 (tuple2!40381 (++!10526 lt!1349122 (_1!23324 lt!1349150)) (_2!23324 lt!1349150)))))))

(declare-datatypes ((Option!8802 0))(
  ( (None!8801) (Some!8801 (v!39099 tuple2!40378)) )
))
(declare-fun lt!1349107 () Option!8802)

(assert (=> b!3873519 (= lt!1349122 (Cons!41153 (_1!23323 (v!39099 lt!1349107)) Nil!41153))))

(declare-fun e!2396051 () Bool)

(declare-fun b!3873520 () Bool)

(declare-fun tp!1174368 () Bool)

(declare-fun e!2396058 () Bool)

(declare-fun inv!21 (TokenValue!6614) Bool)

(assert (=> b!3873520 (= e!2396051 (and (inv!21 (value!202578 (h!46573 prefixTokens!80))) e!2396058 tp!1174368))))

(declare-fun b!3873521 () Bool)

(assert (=> b!3873521 (= e!2396064 false)))

(declare-fun b!3873522 () Bool)

(declare-fun e!2396048 () Bool)

(declare-fun tp!1174372 () Bool)

(assert (=> b!3873522 (= e!2396048 (and tp_is_empty!19549 tp!1174372))))

(declare-fun b!3873523 () Bool)

(declare-fun e!2396059 () Bool)

(assert (=> b!3873523 (= e!2396063 e!2396059)))

(declare-fun res!1569077 () Bool)

(assert (=> b!3873523 (=> res!1569077 e!2396059)))

(assert (=> b!3873523 (= res!1569077 (not (= lt!1349146 (_2!23323 (v!39099 lt!1349107)))))))

(assert (=> b!3873523 (= (_2!23323 (v!39099 lt!1349107)) lt!1349146)))

(declare-fun lt!1349120 () Unit!59035)

(declare-fun lemmaSamePrefixThenSameSuffix!1704 (List!41274 List!41274 List!41274 List!41274 List!41274) Unit!59035)

(assert (=> b!3873523 (= lt!1349120 (lemmaSamePrefixThenSameSuffix!1704 lt!1349132 (_2!23323 (v!39099 lt!1349107)) lt!1349132 lt!1349146 lt!1349153))))

(declare-fun isPrefix!3483 (List!41274 List!41274) Bool)

(assert (=> b!3873523 (isPrefix!3483 lt!1349132 lt!1349152)))

(declare-fun lt!1349138 () Unit!59035)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2346 (List!41274 List!41274) Unit!59035)

(assert (=> b!3873523 (= lt!1349138 (lemmaConcatTwoListThenFirstIsPrefix!2346 lt!1349132 lt!1349146))))

(declare-fun bm!282757 () Bool)

(assert (=> bm!282757 (= call!282762 (lexList!1741 thiss!20629 rules!2768 (_2!23323 lt!1349149)))))

(declare-fun b!3873524 () Bool)

(declare-fun e!2396069 () Unit!59035)

(declare-fun Unit!59038 () Unit!59035)

(assert (=> b!3873524 (= e!2396069 Unit!59038)))

(declare-fun b!3873525 () Bool)

(declare-fun e!2396068 () Bool)

(assert (=> b!3873525 (= e!2396068 false)))

(declare-fun e!2396045 () Bool)

(declare-fun b!3873526 () Bool)

(declare-fun tp!1174366 () Bool)

(assert (=> b!3873526 (= e!2396058 (and tp!1174366 (inv!55309 (tag!7244 (rule!9276 (h!46573 prefixTokens!80)))) (inv!55312 (transformation!6384 (rule!9276 (h!46573 prefixTokens!80)))) e!2396045))))

(declare-fun b!3873527 () Bool)

(declare-fun res!1569089 () Bool)

(assert (=> b!3873527 (=> (not res!1569089) (not e!2396047))))

(declare-fun isEmpty!24419 (List!41274) Bool)

(assert (=> b!3873527 (= res!1569089 (not (isEmpty!24419 prefix!426)))))

(assert (=> b!3873528 (= e!2396045 (and tp!1174374 tp!1174369))))

(declare-fun b!3873529 () Bool)

(declare-fun e!2396039 () Bool)

(declare-fun e!2396053 () Bool)

(assert (=> b!3873529 (= e!2396039 e!2396053)))

(declare-fun res!1569072 () Bool)

(assert (=> b!3873529 (=> res!1569072 e!2396053)))

(declare-fun lt!1349133 () List!41277)

(assert (=> b!3873529 (= res!1569072 (not (= lt!1349133 lt!1349147)))))

(declare-fun lt!1349142 () List!41277)

(assert (=> b!3873529 (= lt!1349133 (++!10526 lt!1349122 lt!1349142))))

(declare-fun lt!1349108 () List!41277)

(assert (=> b!3873529 (= lt!1349133 (++!10526 (++!10526 lt!1349122 lt!1349108) suffixTokens!72))))

(declare-fun lt!1349155 () Unit!59035)

(declare-fun lemmaConcatAssociativity!2240 (List!41277 List!41277 List!41277) Unit!59035)

(assert (=> b!3873529 (= lt!1349155 (lemmaConcatAssociativity!2240 lt!1349122 lt!1349108 suffixTokens!72))))

(declare-fun lt!1349136 () Unit!59035)

(declare-fun e!2396041 () Unit!59035)

(assert (=> b!3873529 (= lt!1349136 e!2396041)))

(declare-fun c!674024 () Bool)

(assert (=> b!3873529 (= c!674024 (isEmpty!24418 lt!1349108))))

(declare-fun b!3873530 () Bool)

(declare-fun res!1569083 () Bool)

(assert (=> b!3873530 (=> (not res!1569083) (not e!2396047))))

(declare-fun rulesInvariant!5316 (LexerInterface!5973 List!41276) Bool)

(assert (=> b!3873530 (= res!1569083 (rulesInvariant!5316 thiss!20629 rules!2768))))

(declare-fun tp!1174370 () Bool)

(declare-fun e!2396042 () Bool)

(declare-fun e!2396067 () Bool)

(declare-fun b!3873531 () Bool)

(assert (=> b!3873531 (= e!2396042 (and tp!1174370 (inv!55309 (tag!7244 (rule!9276 (h!46573 suffixTokens!72)))) (inv!55312 (transformation!6384 (rule!9276 (h!46573 suffixTokens!72)))) e!2396067))))

(declare-fun b!3873532 () Bool)

(declare-fun Unit!59039 () Unit!59035)

(assert (=> b!3873532 (= e!2396069 Unit!59039)))

(declare-fun lt!1349118 () Int)

(declare-fun size!30930 (List!41274) Int)

(assert (=> b!3873532 (= lt!1349118 (size!30930 lt!1349153))))

(declare-fun lt!1349126 () Unit!59035)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1257 (LexerInterface!5973 List!41276 List!41274 List!41274 List!41274 Rule!12568) Unit!59035)

(assert (=> b!3873532 (= lt!1349126 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1257 thiss!20629 rules!2768 lt!1349132 lt!1349153 (_2!23323 (v!39099 lt!1349107)) (rule!9276 (_1!23323 (v!39099 lt!1349107)))))))

(declare-fun lt!1349124 () Int)

(declare-fun lt!1349135 () TokenValue!6614)

(declare-fun maxPrefixOneRule!2359 (LexerInterface!5973 Rule!12568 List!41274) Option!8802)

(assert (=> b!3873532 (= (maxPrefixOneRule!2359 thiss!20629 (rule!9276 (_1!23323 (v!39099 lt!1349107))) lt!1349153) (Some!8801 (tuple2!40379 (Token!11907 lt!1349135 (rule!9276 (_1!23323 (v!39099 lt!1349107))) lt!1349124 lt!1349132) (_2!23323 (v!39099 lt!1349107)))))))

(declare-fun get!13616 (Option!8802) tuple2!40378)

(assert (=> b!3873532 (= lt!1349149 (get!13616 lt!1349107))))

(declare-fun c!674023 () Bool)

(declare-fun lt!1349117 () Int)

(assert (=> b!3873532 (= c!674023 (< (size!30930 (_2!23323 lt!1349149)) lt!1349117))))

(declare-fun lt!1349154 () Unit!59035)

(declare-fun e!2396046 () Unit!59035)

(assert (=> b!3873532 (= lt!1349154 e!2396046)))

(assert (=> b!3873532 false))

(declare-fun b!3873533 () Bool)

(declare-fun res!1569073 () Bool)

(assert (=> b!3873533 (=> res!1569073 e!2396050)))

(assert (=> b!3873533 (= res!1569073 (or (not (= lt!1349150 (tuple2!40381 (_1!23324 lt!1349150) (_2!23324 lt!1349150)))) (= (_2!23323 (v!39099 lt!1349107)) suffix!1176)))))

(declare-fun b!3873534 () Bool)

(declare-fun e!2396070 () Bool)

(declare-fun e!2396035 () Bool)

(assert (=> b!3873534 (= e!2396070 e!2396035)))

(declare-fun res!1569088 () Bool)

(assert (=> b!3873534 (=> res!1569088 e!2396035)))

(declare-fun lt!1349116 () List!41274)

(assert (=> b!3873534 (= res!1569088 (not (= lt!1349116 prefix!426)))))

(assert (=> b!3873534 (= lt!1349116 (++!10525 lt!1349132 lt!1349139))))

(declare-fun getSuffix!1938 (List!41274 List!41274) List!41274)

(assert (=> b!3873534 (= lt!1349139 (getSuffix!1938 prefix!426 lt!1349132))))

(declare-fun b!3873535 () Bool)

(declare-fun e!2396062 () Bool)

(declare-fun tp!1174378 () Bool)

(assert (=> b!3873535 (= e!2396062 (and (inv!55313 (h!46573 prefixTokens!80)) e!2396051 tp!1174378))))

(declare-fun b!3873536 () Bool)

(declare-fun Unit!59040 () Unit!59035)

(assert (=> b!3873536 (= e!2396041 Unit!59040)))

(declare-fun b!3873537 () Bool)

(declare-fun Unit!59041 () Unit!59035)

(assert (=> b!3873537 (= e!2396055 Unit!59041)))

(declare-fun lt!1349130 () Unit!59035)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!468 (List!41274 List!41274 List!41274 List!41274) Unit!59035)

(assert (=> b!3873537 (= lt!1349130 (lemmaConcatSameAndSameSizesThenSameLists!468 lt!1349132 (_2!23323 (v!39099 lt!1349107)) lt!1349132 (_2!23323 lt!1349149)))))

(assert (=> b!3873537 (= (_2!23323 (v!39099 lt!1349107)) (_2!23323 lt!1349149))))

(declare-fun lt!1349110 () Unit!59035)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!44 (LexerInterface!5973 List!41276 List!41274 List!41274 List!41277 List!41274) Unit!59035)

(assert (=> b!3873537 (= lt!1349110 (lemmaLexWithSmallerInputCannotProduceSameResults!44 thiss!20629 rules!2768 suffix!1176 (_2!23323 lt!1349149) suffixTokens!72 suffixResult!91))))

(declare-fun res!1569084 () Bool)

(declare-fun lt!1349134 () tuple2!40380)

(assert (=> b!3873537 (= res!1569084 (not (= call!282762 lt!1349134)))))

(assert (=> b!3873537 (=> (not res!1569084) (not e!2396068))))

(assert (=> b!3873537 e!2396068))

(declare-fun b!3873538 () Bool)

(declare-fun e!2396038 () Bool)

(declare-fun tp!1174364 () Bool)

(assert (=> b!3873538 (= e!2396038 (and tp_is_empty!19549 tp!1174364))))

(declare-fun b!3873539 () Bool)

(declare-fun e!2396054 () Unit!59035)

(declare-fun Unit!59042 () Unit!59035)

(assert (=> b!3873539 (= e!2396054 Unit!59042)))

(declare-fun b!3873540 () Bool)

(declare-fun c!674025 () Bool)

(assert (=> b!3873540 (= c!674025 (isEmpty!24418 lt!1349127))))

(declare-fun tail!5923 (List!41277) List!41277)

(assert (=> b!3873540 (= lt!1349127 (tail!5923 prefixTokens!80))))

(assert (=> b!3873540 (= e!2396046 e!2396055)))

(declare-fun b!3873541 () Bool)

(declare-fun e!2396072 () Bool)

(assert (=> b!3873541 (= e!2396072 (not e!2396032))))

(declare-fun res!1569082 () Bool)

(assert (=> b!3873541 (=> res!1569082 e!2396032)))

(assert (=> b!3873541 (= res!1569082 (not (= lt!1349141 lt!1349153)))))

(assert (=> b!3873541 (= lt!1349150 (lexList!1741 thiss!20629 rules!2768 (_2!23323 (v!39099 lt!1349107))))))

(declare-fun lt!1349113 () List!41274)

(assert (=> b!3873541 (and (= (size!30929 (_1!23323 (v!39099 lt!1349107))) lt!1349124) (= (originalCharacters!6984 (_1!23323 (v!39099 lt!1349107))) lt!1349132) (= (v!39099 lt!1349107) (tuple2!40379 (Token!11907 lt!1349135 (rule!9276 (_1!23323 (v!39099 lt!1349107))) lt!1349124 lt!1349132) lt!1349113)))))

(assert (=> b!3873541 (= lt!1349124 (size!30930 lt!1349132))))

(declare-fun e!2396060 () Bool)

(assert (=> b!3873541 e!2396060))

(declare-fun res!1569085 () Bool)

(assert (=> b!3873541 (=> (not res!1569085) (not e!2396060))))

(assert (=> b!3873541 (= res!1569085 (= (value!202578 (_1!23323 (v!39099 lt!1349107))) lt!1349135))))

(declare-fun apply!9627 (TokenValueInjection!12656 BalanceConc!24784) TokenValue!6614)

(declare-fun seqFromList!4655 (List!41274) BalanceConc!24784)

(assert (=> b!3873541 (= lt!1349135 (apply!9627 (transformation!6384 (rule!9276 (_1!23323 (v!39099 lt!1349107)))) (seqFromList!4655 lt!1349132)))))

(assert (=> b!3873541 (= (_2!23323 (v!39099 lt!1349107)) lt!1349113)))

(declare-fun lt!1349137 () Unit!59035)

(assert (=> b!3873541 (= lt!1349137 (lemmaSamePrefixThenSameSuffix!1704 lt!1349132 (_2!23323 (v!39099 lt!1349107)) lt!1349132 lt!1349113 lt!1349153))))

(assert (=> b!3873541 (= lt!1349113 (getSuffix!1938 lt!1349153 lt!1349132))))

(assert (=> b!3873541 (isPrefix!3483 lt!1349132 lt!1349141)))

(assert (=> b!3873541 (= lt!1349141 (++!10525 lt!1349132 (_2!23323 (v!39099 lt!1349107))))))

(declare-fun lt!1349111 () Unit!59035)

(assert (=> b!3873541 (= lt!1349111 (lemmaConcatTwoListThenFirstIsPrefix!2346 lt!1349132 (_2!23323 (v!39099 lt!1349107))))))

(declare-fun list!15308 (BalanceConc!24784) List!41274)

(declare-fun charsOf!4212 (Token!11906) BalanceConc!24784)

(assert (=> b!3873541 (= lt!1349132 (list!15308 (charsOf!4212 (_1!23323 (v!39099 lt!1349107)))))))

(declare-fun ruleValid!2336 (LexerInterface!5973 Rule!12568) Bool)

(assert (=> b!3873541 (ruleValid!2336 thiss!20629 (rule!9276 (_1!23323 (v!39099 lt!1349107))))))

(declare-fun lt!1349121 () Unit!59035)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1416 (LexerInterface!5973 Rule!12568 List!41276) Unit!59035)

(assert (=> b!3873541 (= lt!1349121 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1416 thiss!20629 (rule!9276 (_1!23323 (v!39099 lt!1349107))) rules!2768))))

(declare-fun lt!1349148 () Unit!59035)

(declare-fun lemmaCharactersSize!1045 (Token!11906) Unit!59035)

(assert (=> b!3873541 (= lt!1349148 (lemmaCharactersSize!1045 (_1!23323 (v!39099 lt!1349107))))))

(declare-fun b!3873542 () Bool)

(declare-fun Unit!59043 () Unit!59035)

(assert (=> b!3873542 (= e!2396041 Unit!59043)))

(declare-fun lt!1349123 () Unit!59035)

(assert (=> b!3873542 (= lt!1349123 (lemmaLexWithSmallerInputCannotProduceSameResults!44 thiss!20629 rules!2768 (_2!23323 (v!39099 lt!1349107)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3873542 false))

(declare-fun res!1569074 () Bool)

(assert (=> start!363652 (=> (not res!1569074) (not e!2396047))))

(get-info :version)

(assert (=> start!363652 (= res!1569074 ((_ is Lexer!5971) thiss!20629))))

(assert (=> start!363652 e!2396047))

(assert (=> start!363652 e!2396048))

(assert (=> start!363652 true))

(assert (=> start!363652 e!2396038))

(declare-fun e!2396057 () Bool)

(assert (=> start!363652 e!2396057))

(assert (=> start!363652 e!2396062))

(assert (=> start!363652 e!2396071))

(assert (=> start!363652 e!2396052))

(assert (=> b!3873543 (= e!2396067 (and tp!1174379 tp!1174365))))

(declare-fun b!3873544 () Bool)

(declare-fun e!2396036 () Bool)

(assert (=> b!3873544 (= e!2396036 e!2396070)))

(declare-fun res!1569092 () Bool)

(assert (=> b!3873544 (=> res!1569092 e!2396070)))

(assert (=> b!3873544 (= res!1569092 (>= lt!1349124 (size!30930 prefix!426)))))

(assert (=> b!3873544 (isPrefix!3483 lt!1349132 prefix!426)))

(declare-fun lt!1349145 () Unit!59035)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!233 (List!41274 List!41274 List!41274) Unit!59035)

(assert (=> b!3873544 (= lt!1349145 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!233 prefix!426 lt!1349132 lt!1349153))))

(assert (=> b!3873544 (isPrefix!3483 prefix!426 lt!1349153)))

(declare-fun lt!1349128 () Unit!59035)

(assert (=> b!3873544 (= lt!1349128 (lemmaConcatTwoListThenFirstIsPrefix!2346 prefix!426 suffix!1176))))

(declare-fun b!3873545 () Bool)

(declare-fun e!2396061 () Bool)

(assert (=> b!3873545 (= e!2396061 e!2396072)))

(declare-fun res!1569075 () Bool)

(assert (=> b!3873545 (=> (not res!1569075) (not e!2396072))))

(assert (=> b!3873545 (= res!1569075 ((_ is Some!8801) lt!1349107))))

(declare-fun maxPrefix!3277 (LexerInterface!5973 List!41276 List!41274) Option!8802)

(assert (=> b!3873545 (= lt!1349107 (maxPrefix!3277 thiss!20629 rules!2768 lt!1349153))))

(declare-fun b!3873546 () Bool)

(declare-fun res!1569076 () Bool)

(assert (=> b!3873546 (=> (not res!1569076) (not e!2396047))))

(declare-fun isEmpty!24420 (List!41276) Bool)

(assert (=> b!3873546 (= res!1569076 (not (isEmpty!24420 rules!2768)))))

(declare-fun b!3873547 () Bool)

(assert (=> b!3873547 (= e!2396060 (= (size!30929 (_1!23323 (v!39099 lt!1349107))) (size!30930 (originalCharacters!6984 (_1!23323 (v!39099 lt!1349107))))))))

(declare-fun b!3873548 () Bool)

(declare-fun Unit!59044 () Unit!59035)

(assert (=> b!3873548 (= e!2396054 Unit!59044)))

(declare-fun lt!1349151 () Unit!59035)

(assert (=> b!3873548 (= lt!1349151 (lemmaConcatTwoListThenFirstIsPrefix!2346 prefix!426 suffix!1176))))

(assert (=> b!3873548 (isPrefix!3483 prefix!426 lt!1349153)))

(declare-fun lt!1349144 () Unit!59035)

(declare-fun lemmaIsPrefixSameLengthThenSameList!735 (List!41274 List!41274 List!41274) Unit!59035)

(assert (=> b!3873548 (= lt!1349144 (lemmaIsPrefixSameLengthThenSameList!735 lt!1349132 prefix!426 lt!1349153))))

(assert (=> b!3873548 (= lt!1349132 prefix!426)))

(declare-fun lt!1349131 () Unit!59035)

(assert (=> b!3873548 (= lt!1349131 (lemmaSamePrefixThenSameSuffix!1704 lt!1349132 (_2!23323 (v!39099 lt!1349107)) prefix!426 suffix!1176 lt!1349153))))

(assert (=> b!3873548 false))

(declare-fun b!3873549 () Bool)

(assert (=> b!3873549 (= e!2396059 e!2396039)))

(declare-fun res!1569091 () Bool)

(assert (=> b!3873549 (=> res!1569091 e!2396039)))

(assert (=> b!3873549 (= res!1569091 (not (= lt!1349150 (tuple2!40381 lt!1349142 suffixResult!91))))))

(assert (=> b!3873549 (= lt!1349142 (++!10526 lt!1349108 suffixTokens!72))))

(assert (=> b!3873549 (= lt!1349108 (tail!5923 prefixTokens!80))))

(assert (=> b!3873549 (isPrefix!3483 lt!1349139 lt!1349146)))

(declare-fun lt!1349143 () Unit!59035)

(assert (=> b!3873549 (= lt!1349143 (lemmaConcatTwoListThenFirstIsPrefix!2346 lt!1349139 suffix!1176))))

(declare-fun b!3873550 () Bool)

(declare-fun tp!1174371 () Bool)

(assert (=> b!3873550 (= e!2396057 (and e!2396066 tp!1174371))))

(declare-fun b!3873551 () Bool)

(assert (=> b!3873551 (= e!2396056 e!2396061)))

(declare-fun res!1569093 () Bool)

(assert (=> b!3873551 (=> (not res!1569093) (not e!2396061))))

(assert (=> b!3873551 (= res!1569093 (= (lexList!1741 thiss!20629 rules!2768 suffix!1176) lt!1349134))))

(assert (=> b!3873551 (= lt!1349134 (tuple2!40381 suffixTokens!72 suffixResult!91))))

(declare-fun b!3873552 () Bool)

(assert (=> b!3873552 (= e!2396053 true)))

(declare-fun lt!1349125 () tuple2!40380)

(assert (=> b!3873552 (= lt!1349125 (lexList!1741 thiss!20629 rules!2768 lt!1349146))))

(declare-fun b!3873553 () Bool)

(declare-fun res!1569087 () Bool)

(assert (=> b!3873553 (=> res!1569087 e!2396036)))

(declare-fun head!8206 (List!41277) Token!11906)

(assert (=> b!3873553 (= res!1569087 (not (= (head!8206 prefixTokens!80) (_1!23323 (v!39099 lt!1349107)))))))

(declare-fun tp!1174380 () Bool)

(declare-fun b!3873554 () Bool)

(assert (=> b!3873554 (= e!2396034 (and (inv!21 (value!202578 (h!46573 suffixTokens!72))) e!2396042 tp!1174380))))

(declare-fun b!3873555 () Bool)

(assert (=> b!3873555 (= e!2396050 e!2396036)))

(declare-fun res!1569090 () Bool)

(assert (=> b!3873555 (=> res!1569090 e!2396036)))

(declare-fun lt!1349119 () Int)

(assert (=> b!3873555 (= res!1569090 (<= lt!1349119 lt!1349117))))

(declare-fun lt!1349129 () Unit!59035)

(assert (=> b!3873555 (= lt!1349129 e!2396054)))

(declare-fun c!674021 () Bool)

(assert (=> b!3873555 (= c!674021 (= lt!1349119 lt!1349117))))

(declare-fun lt!1349115 () Unit!59035)

(assert (=> b!3873555 (= lt!1349115 e!2396069)))

(declare-fun c!674022 () Bool)

(assert (=> b!3873555 (= c!674022 (< lt!1349119 lt!1349117))))

(assert (=> b!3873555 (= lt!1349117 (size!30930 suffix!1176))))

(assert (=> b!3873555 (= lt!1349119 (size!30930 (_2!23323 (v!39099 lt!1349107))))))

(declare-fun b!3873556 () Bool)

(declare-fun Unit!59045 () Unit!59035)

(assert (=> b!3873556 (= e!2396046 Unit!59045)))

(assert (=> b!3873557 (= e!2396037 (and tp!1174373 tp!1174376))))

(declare-fun b!3873558 () Bool)

(assert (=> b!3873558 (= e!2396035 e!2396044)))

(declare-fun res!1569078 () Bool)

(assert (=> b!3873558 (=> res!1569078 e!2396044)))

(assert (=> b!3873558 (= res!1569078 (or (not (= lt!1349114 lt!1349153)) (not (= lt!1349114 lt!1349141))))))

(assert (=> b!3873558 (= lt!1349114 (++!10525 lt!1349116 suffix!1176))))

(assert (= (and start!363652 res!1569074) b!3873546))

(assert (= (and b!3873546 res!1569076) b!3873530))

(assert (= (and b!3873530 res!1569083) b!3873518))

(assert (= (and b!3873518 res!1569071) b!3873527))

(assert (= (and b!3873527 res!1569089) b!3873517))

(assert (= (and b!3873517 res!1569080) b!3873551))

(assert (= (and b!3873551 res!1569093) b!3873545))

(assert (= (and b!3873545 res!1569075) b!3873541))

(assert (= (and b!3873541 res!1569085) b!3873547))

(assert (= (and b!3873541 (not res!1569082)) b!3873519))

(assert (= (and b!3873519 (not res!1569081)) b!3873533))

(assert (= (and b!3873533 (not res!1569073)) b!3873555))

(assert (= (and b!3873555 c!674022) b!3873532))

(assert (= (and b!3873555 (not c!674022)) b!3873524))

(assert (= (and b!3873532 c!674023) b!3873540))

(assert (= (and b!3873532 (not c!674023)) b!3873556))

(assert (= (and b!3873540 c!674025) b!3873537))

(assert (= (and b!3873540 (not c!674025)) b!3873515))

(assert (= (and b!3873537 res!1569084) b!3873525))

(assert (= (and b!3873515 res!1569079) b!3873521))

(assert (= (or b!3873537 b!3873515) bm!282757))

(assert (= (and b!3873555 c!674021) b!3873548))

(assert (= (and b!3873555 (not c!674021)) b!3873539))

(assert (= (and b!3873555 (not res!1569090)) b!3873553))

(assert (= (and b!3873553 (not res!1569087)) b!3873544))

(assert (= (and b!3873544 (not res!1569092)) b!3873534))

(assert (= (and b!3873534 (not res!1569088)) b!3873558))

(assert (= (and b!3873558 (not res!1569078)) b!3873514))

(assert (= (and b!3873514 (not res!1569086)) b!3873523))

(assert (= (and b!3873523 (not res!1569077)) b!3873549))

(assert (= (and b!3873549 (not res!1569091)) b!3873529))

(assert (= (and b!3873529 c!674024) b!3873542))

(assert (= (and b!3873529 (not c!674024)) b!3873536))

(assert (= (and b!3873529 (not res!1569072)) b!3873552))

(assert (= (and start!363652 ((_ is Cons!41150) suffixResult!91)) b!3873522))

(assert (= (and start!363652 ((_ is Cons!41150) suffix!1176)) b!3873538))

(assert (= b!3873512 b!3873557))

(assert (= b!3873550 b!3873512))

(assert (= (and start!363652 ((_ is Cons!41152) rules!2768)) b!3873550))

(assert (= b!3873526 b!3873528))

(assert (= b!3873520 b!3873526))

(assert (= b!3873535 b!3873520))

(assert (= (and start!363652 ((_ is Cons!41153) prefixTokens!80)) b!3873535))

(assert (= b!3873531 b!3873543))

(assert (= b!3873554 b!3873531))

(assert (= b!3873516 b!3873554))

(assert (= (and start!363652 ((_ is Cons!41153) suffixTokens!72)) b!3873516))

(assert (= (and start!363652 ((_ is Cons!41150) prefix!426)) b!3873513))

(declare-fun m!4430745 () Bool)

(assert (=> b!3873546 m!4430745))

(declare-fun m!4430747 () Bool)

(assert (=> b!3873515 m!4430747))

(declare-fun m!4430749 () Bool)

(assert (=> b!3873515 m!4430749))

(declare-fun m!4430751 () Bool)

(assert (=> b!3873518 m!4430751))

(declare-fun m!4430753 () Bool)

(assert (=> b!3873554 m!4430753))

(declare-fun m!4430755 () Bool)

(assert (=> b!3873552 m!4430755))

(declare-fun m!4430757 () Bool)

(assert (=> b!3873547 m!4430757))

(declare-fun m!4430759 () Bool)

(assert (=> b!3873558 m!4430759))

(declare-fun m!4430761 () Bool)

(assert (=> b!3873517 m!4430761))

(declare-fun m!4430763 () Bool)

(assert (=> b!3873517 m!4430763))

(declare-fun m!4430765 () Bool)

(assert (=> b!3873517 m!4430765))

(declare-fun m!4430767 () Bool)

(assert (=> b!3873512 m!4430767))

(declare-fun m!4430769 () Bool)

(assert (=> b!3873512 m!4430769))

(declare-fun m!4430771 () Bool)

(assert (=> b!3873514 m!4430771))

(declare-fun m!4430773 () Bool)

(assert (=> b!3873514 m!4430773))

(declare-fun m!4430775 () Bool)

(assert (=> b!3873514 m!4430775))

(declare-fun m!4430777 () Bool)

(assert (=> b!3873523 m!4430777))

(declare-fun m!4430779 () Bool)

(assert (=> b!3873523 m!4430779))

(declare-fun m!4430781 () Bool)

(assert (=> b!3873523 m!4430781))

(declare-fun m!4430783 () Bool)

(assert (=> b!3873532 m!4430783))

(declare-fun m!4430785 () Bool)

(assert (=> b!3873532 m!4430785))

(declare-fun m!4430787 () Bool)

(assert (=> b!3873532 m!4430787))

(declare-fun m!4430789 () Bool)

(assert (=> b!3873532 m!4430789))

(declare-fun m!4430791 () Bool)

(assert (=> b!3873532 m!4430791))

(declare-fun m!4430793 () Bool)

(assert (=> b!3873519 m!4430793))

(declare-fun m!4430795 () Bool)

(assert (=> b!3873520 m!4430795))

(declare-fun m!4430797 () Bool)

(assert (=> b!3873529 m!4430797))

(declare-fun m!4430799 () Bool)

(assert (=> b!3873529 m!4430799))

(assert (=> b!3873529 m!4430797))

(declare-fun m!4430801 () Bool)

(assert (=> b!3873529 m!4430801))

(declare-fun m!4430803 () Bool)

(assert (=> b!3873529 m!4430803))

(declare-fun m!4430805 () Bool)

(assert (=> b!3873529 m!4430805))

(declare-fun m!4430807 () Bool)

(assert (=> b!3873548 m!4430807))

(declare-fun m!4430809 () Bool)

(assert (=> b!3873548 m!4430809))

(declare-fun m!4430811 () Bool)

(assert (=> b!3873548 m!4430811))

(declare-fun m!4430813 () Bool)

(assert (=> b!3873548 m!4430813))

(declare-fun m!4430815 () Bool)

(assert (=> b!3873549 m!4430815))

(declare-fun m!4430817 () Bool)

(assert (=> b!3873549 m!4430817))

(declare-fun m!4430819 () Bool)

(assert (=> b!3873549 m!4430819))

(declare-fun m!4430821 () Bool)

(assert (=> b!3873549 m!4430821))

(declare-fun m!4430823 () Bool)

(assert (=> b!3873531 m!4430823))

(declare-fun m!4430825 () Bool)

(assert (=> b!3873531 m!4430825))

(declare-fun m!4430827 () Bool)

(assert (=> b!3873527 m!4430827))

(declare-fun m!4430829 () Bool)

(assert (=> b!3873555 m!4430829))

(declare-fun m!4430831 () Bool)

(assert (=> b!3873555 m!4430831))

(declare-fun m!4430833 () Bool)

(assert (=> bm!282757 m!4430833))

(declare-fun m!4430835 () Bool)

(assert (=> b!3873542 m!4430835))

(declare-fun m!4430837 () Bool)

(assert (=> b!3873530 m!4430837))

(declare-fun m!4430839 () Bool)

(assert (=> b!3873551 m!4430839))

(declare-fun m!4430841 () Bool)

(assert (=> b!3873541 m!4430841))

(declare-fun m!4430843 () Bool)

(assert (=> b!3873541 m!4430843))

(declare-fun m!4430845 () Bool)

(assert (=> b!3873541 m!4430845))

(declare-fun m!4430847 () Bool)

(assert (=> b!3873541 m!4430847))

(declare-fun m!4430849 () Bool)

(assert (=> b!3873541 m!4430849))

(assert (=> b!3873541 m!4430843))

(assert (=> b!3873541 m!4430841))

(declare-fun m!4430851 () Bool)

(assert (=> b!3873541 m!4430851))

(declare-fun m!4430853 () Bool)

(assert (=> b!3873541 m!4430853))

(declare-fun m!4430855 () Bool)

(assert (=> b!3873541 m!4430855))

(declare-fun m!4430857 () Bool)

(assert (=> b!3873541 m!4430857))

(declare-fun m!4430859 () Bool)

(assert (=> b!3873541 m!4430859))

(declare-fun m!4430861 () Bool)

(assert (=> b!3873541 m!4430861))

(declare-fun m!4430863 () Bool)

(assert (=> b!3873541 m!4430863))

(declare-fun m!4430865 () Bool)

(assert (=> b!3873541 m!4430865))

(declare-fun m!4430867 () Bool)

(assert (=> b!3873541 m!4430867))

(declare-fun m!4430869 () Bool)

(assert (=> b!3873526 m!4430869))

(declare-fun m!4430871 () Bool)

(assert (=> b!3873526 m!4430871))

(declare-fun m!4430873 () Bool)

(assert (=> b!3873553 m!4430873))

(declare-fun m!4430875 () Bool)

(assert (=> b!3873545 m!4430875))

(declare-fun m!4430877 () Bool)

(assert (=> b!3873540 m!4430877))

(assert (=> b!3873540 m!4430817))

(declare-fun m!4430879 () Bool)

(assert (=> b!3873535 m!4430879))

(declare-fun m!4430881 () Bool)

(assert (=> b!3873544 m!4430881))

(assert (=> b!3873544 m!4430807))

(declare-fun m!4430883 () Bool)

(assert (=> b!3873544 m!4430883))

(declare-fun m!4430885 () Bool)

(assert (=> b!3873544 m!4430885))

(assert (=> b!3873544 m!4430809))

(declare-fun m!4430887 () Bool)

(assert (=> b!3873537 m!4430887))

(declare-fun m!4430889 () Bool)

(assert (=> b!3873537 m!4430889))

(declare-fun m!4430891 () Bool)

(assert (=> b!3873534 m!4430891))

(declare-fun m!4430893 () Bool)

(assert (=> b!3873534 m!4430893))

(declare-fun m!4430895 () Bool)

(assert (=> b!3873516 m!4430895))

(check-sat (not b!3873540) (not b!3873531) (not b!3873512) (not b!3873545) (not b!3873546) (not b!3873542) (not b!3873558) (not b!3873529) (not b!3873523) (not b!3873551) (not b!3873530) (not b_next!105363) (not b!3873550) (not b!3873541) (not b!3873535) (not b!3873537) (not b!3873549) (not b!3873519) (not b_next!105357) (not b!3873553) (not b!3873522) (not b!3873555) (not b!3873526) (not b!3873548) (not b!3873516) (not b_next!105361) (not b_next!105365) (not b!3873517) b_and!290409 (not b!3873514) (not b!3873534) b_and!290405 (not b!3873554) (not b!3873513) (not b!3873518) b_and!290413 (not b!3873544) b_and!290411 (not b!3873515) (not b_next!105367) (not b!3873520) b_and!290403 (not b!3873527) (not b!3873532) (not b!3873547) (not b!3873552) (not bm!282757) (not b!3873538) tp_is_empty!19549 (not b_next!105359) b_and!290407)
(check-sat (not b_next!105363) (not b_next!105357) b_and!290405 b_and!290413 b_and!290411 (not b_next!105367) b_and!290403 (not b_next!105361) (not b_next!105365) b_and!290409 (not b_next!105359) b_and!290407)
