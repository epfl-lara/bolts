; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359656 () Bool)

(assert start!359656)

(declare-fun b!3841505 () Bool)

(declare-fun b_free!102505 () Bool)

(declare-fun b_next!103209 () Bool)

(assert (=> b!3841505 (= b_free!102505 (not b_next!103209))))

(declare-fun tp!1163791 () Bool)

(declare-fun b_and!286183 () Bool)

(assert (=> b!3841505 (= tp!1163791 b_and!286183)))

(declare-fun b_free!102507 () Bool)

(declare-fun b_next!103211 () Bool)

(assert (=> b!3841505 (= b_free!102507 (not b_next!103211))))

(declare-fun tp!1163784 () Bool)

(declare-fun b_and!286185 () Bool)

(assert (=> b!3841505 (= tp!1163784 b_and!286185)))

(declare-fun b!3841503 () Bool)

(declare-fun b_free!102509 () Bool)

(declare-fun b_next!103213 () Bool)

(assert (=> b!3841503 (= b_free!102509 (not b_next!103213))))

(declare-fun tp!1163782 () Bool)

(declare-fun b_and!286187 () Bool)

(assert (=> b!3841503 (= tp!1163782 b_and!286187)))

(declare-fun b_free!102511 () Bool)

(declare-fun b_next!103215 () Bool)

(assert (=> b!3841503 (= b_free!102511 (not b_next!103215))))

(declare-fun tp!1163785 () Bool)

(declare-fun b_and!286189 () Bool)

(assert (=> b!3841503 (= tp!1163785 b_and!286189)))

(declare-fun b!3841506 () Bool)

(declare-fun b_free!102513 () Bool)

(declare-fun b_next!103217 () Bool)

(assert (=> b!3841506 (= b_free!102513 (not b_next!103217))))

(declare-fun tp!1163776 () Bool)

(declare-fun b_and!286191 () Bool)

(assert (=> b!3841506 (= tp!1163776 b_and!286191)))

(declare-fun b_free!102515 () Bool)

(declare-fun b_next!103219 () Bool)

(assert (=> b!3841506 (= b_free!102515 (not b_next!103219))))

(declare-fun tp!1163790 () Bool)

(declare-fun b_and!286193 () Bool)

(assert (=> b!3841506 (= tp!1163790 b_and!286193)))

(declare-fun b!3841525 () Bool)

(declare-fun b_free!102517 () Bool)

(declare-fun b_next!103221 () Bool)

(assert (=> b!3841525 (= b_free!102517 (not b_next!103221))))

(declare-fun tp!1163780 () Bool)

(declare-fun b_and!286195 () Bool)

(assert (=> b!3841525 (= tp!1163780 b_and!286195)))

(declare-fun b_free!102519 () Bool)

(declare-fun b_next!103223 () Bool)

(assert (=> b!3841525 (= b_free!102519 (not b_next!103223))))

(declare-fun tp!1163777 () Bool)

(declare-fun b_and!286197 () Bool)

(assert (=> b!3841525 (= tp!1163777 b_and!286197)))

(declare-fun b!3841496 () Bool)

(declare-fun e!2373405 () Bool)

(declare-fun tp_is_empty!19325 () Bool)

(declare-fun tp!1163786 () Bool)

(assert (=> b!3841496 (= e!2373405 (and tp_is_empty!19325 tp!1163786))))

(declare-fun tp!1163775 () Bool)

(declare-datatypes ((List!40772 0))(
  ( (Nil!40648) (Cons!40648 (h!46068 (_ BitVec 16)) (t!310441 List!40772)) )
))
(declare-datatypes ((TokenValue!6502 0))(
  ( (FloatLiteralValue!13004 (text!45959 List!40772)) (TokenValueExt!6501 (__x!25221 Int)) (Broken!32510 (value!199360 List!40772)) (Object!6625) (End!6502) (Def!6502) (Underscore!6502) (Match!6502) (Else!6502) (Error!6502) (Case!6502) (If!6502) (Extends!6502) (Abstract!6502) (Class!6502) (Val!6502) (DelimiterValue!13004 (del!6562 List!40772)) (KeywordValue!6508 (value!199361 List!40772)) (CommentValue!13004 (value!199362 List!40772)) (WhitespaceValue!13004 (value!199363 List!40772)) (IndentationValue!6502 (value!199364 List!40772)) (String!46227) (Int32!6502) (Broken!32511 (value!199365 List!40772)) (Boolean!6503) (Unit!58351) (OperatorValue!6505 (op!6562 List!40772)) (IdentifierValue!13004 (value!199366 List!40772)) (IdentifierValue!13005 (value!199367 List!40772)) (WhitespaceValue!13005 (value!199368 List!40772)) (True!13004) (False!13004) (Broken!32512 (value!199369 List!40772)) (Broken!32513 (value!199370 List!40772)) (True!13005) (RightBrace!6502) (RightBracket!6502) (Colon!6502) (Null!6502) (Comma!6502) (LeftBracket!6502) (False!13005) (LeftBrace!6502) (ImaginaryLiteralValue!6502 (text!45960 List!40772)) (StringLiteralValue!19506 (value!199371 List!40772)) (EOFValue!6502 (value!199372 List!40772)) (IdentValue!6502 (value!199373 List!40772)) (DelimiterValue!13005 (value!199374 List!40772)) (DedentValue!6502 (value!199375 List!40772)) (NewLineValue!6502 (value!199376 List!40772)) (IntegerValue!19506 (value!199377 (_ BitVec 32)) (text!45961 List!40772)) (IntegerValue!19507 (value!199378 Int) (text!45962 List!40772)) (Times!6502) (Or!6502) (Equal!6502) (Minus!6502) (Broken!32514 (value!199379 List!40772)) (And!6502) (Div!6502) (LessEqual!6502) (Mod!6502) (Concat!17679) (Not!6502) (Plus!6502) (SpaceValue!6502 (value!199380 List!40772)) (IntegerValue!19508 (value!199381 Int) (text!45963 List!40772)) (StringLiteralValue!19507 (text!45964 List!40772)) (FloatLiteralValue!13005 (text!45965 List!40772)) (BytesLiteralValue!6502 (value!199382 List!40772)) (CommentValue!13005 (value!199383 List!40772)) (StringLiteralValue!19508 (value!199384 List!40772)) (ErrorTokenValue!6502 (msg!6563 List!40772)) )
))
(declare-datatypes ((C!22540 0))(
  ( (C!22541 (val!13364 Int)) )
))
(declare-datatypes ((Regex!11177 0))(
  ( (ElementMatch!11177 (c!669470 C!22540)) (Concat!17680 (regOne!22866 Regex!11177) (regTwo!22866 Regex!11177)) (EmptyExpr!11177) (Star!11177 (reg!11506 Regex!11177)) (EmptyLang!11177) (Union!11177 (regOne!22867 Regex!11177) (regTwo!22867 Regex!11177)) )
))
(declare-datatypes ((String!46228 0))(
  ( (String!46229 (value!199385 String)) )
))
(declare-datatypes ((List!40773 0))(
  ( (Nil!40649) (Cons!40649 (h!46069 C!22540) (t!310442 List!40773)) )
))
(declare-datatypes ((IArray!24971 0))(
  ( (IArray!24972 (innerList!12543 List!40773)) )
))
(declare-datatypes ((Conc!12483 0))(
  ( (Node!12483 (left!31393 Conc!12483) (right!31723 Conc!12483) (csize!25196 Int) (cheight!12694 Int)) (Leaf!19326 (xs!15789 IArray!24971) (csize!25197 Int)) (Empty!12483) )
))
(declare-datatypes ((BalanceConc!24560 0))(
  ( (BalanceConc!24561 (c!669471 Conc!12483)) )
))
(declare-datatypes ((TokenValueInjection!12432 0))(
  ( (TokenValueInjection!12433 (toValue!8688 Int) (toChars!8547 Int)) )
))
(declare-datatypes ((Rule!12344 0))(
  ( (Rule!12345 (regex!6272 Regex!11177) (tag!7132 String!46228) (isSeparator!6272 Bool) (transformation!6272 TokenValueInjection!12432)) )
))
(declare-datatypes ((Token!11682 0))(
  ( (Token!11683 (value!199386 TokenValue!6502) (rule!9110 Rule!12344) (size!30591 Int) (originalCharacters!6872 List!40773)) )
))
(declare-datatypes ((List!40774 0))(
  ( (Nil!40650) (Cons!40650 (h!46070 Token!11682) (t!310443 List!40774)) )
))
(declare-fun prefixTokens!80 () List!40774)

(declare-fun e!2373379 () Bool)

(declare-fun b!3841497 () Bool)

(declare-fun e!2373389 () Bool)

(declare-fun inv!21 (TokenValue!6502) Bool)

(assert (=> b!3841497 (= e!2373389 (and (inv!21 (value!199386 (h!46070 prefixTokens!80))) e!2373379 tp!1163775))))

(declare-fun b!3841498 () Bool)

(declare-fun e!2373386 () Bool)

(declare-fun tp!1163783 () Bool)

(assert (=> b!3841498 (= e!2373386 (and tp_is_empty!19325 tp!1163783))))

(declare-fun b!3841499 () Bool)

(declare-fun e!2373412 () Bool)

(declare-datatypes ((tuple2!39822 0))(
  ( (tuple2!39823 (_1!23045 Token!11682) (_2!23045 List!40773)) )
))
(declare-datatypes ((Option!8690 0))(
  ( (None!8689) (Some!8689 (v!38981 tuple2!39822)) )
))
(declare-fun lt!1333378 () Option!8690)

(declare-fun e!2373382 () Option!8690)

(assert (=> b!3841499 (= e!2373412 (= lt!1333378 e!2373382))))

(declare-fun c!669469 () Bool)

(declare-datatypes ((List!40775 0))(
  ( (Nil!40651) (Cons!40651 (h!46071 Rule!12344) (t!310444 List!40775)) )
))
(declare-fun rules!2768 () List!40775)

(get-info :version)

(assert (=> b!3841499 (= c!669469 (and ((_ is Cons!40651) rules!2768) ((_ is Nil!40651) (t!310444 rules!2768))))))

(declare-fun b!3841501 () Bool)

(declare-fun e!2373407 () Bool)

(declare-fun e!2373398 () Bool)

(assert (=> b!3841501 (= e!2373407 e!2373398)))

(declare-fun res!1554798 () Bool)

(assert (=> b!3841501 (=> (not res!1554798) (not e!2373398))))

(declare-fun suffixResult!91 () List!40773)

(declare-fun lt!1333376 () List!40774)

(declare-datatypes ((tuple2!39824 0))(
  ( (tuple2!39825 (_1!23046 List!40774) (_2!23046 List!40773)) )
))
(declare-fun lt!1333371 () tuple2!39824)

(assert (=> b!3841501 (= res!1554798 (= lt!1333371 (tuple2!39825 lt!1333376 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5861 0))(
  ( (LexerInterfaceExt!5858 (__x!25222 Int)) (Lexer!5859) )
))
(declare-fun thiss!20629 () LexerInterface!5861)

(declare-fun lt!1333359 () List!40773)

(declare-fun lexList!1629 (LexerInterface!5861 List!40775 List!40773) tuple2!39824)

(assert (=> b!3841501 (= lt!1333371 (lexList!1629 thiss!20629 rules!2768 lt!1333359))))

(declare-fun suffixTokens!72 () List!40774)

(declare-fun ++!10301 (List!40774 List!40774) List!40774)

(assert (=> b!3841501 (= lt!1333376 (++!10301 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40773)

(declare-fun suffix!1176 () List!40773)

(declare-fun ++!10302 (List!40773 List!40773) List!40773)

(assert (=> b!3841501 (= lt!1333359 (++!10302 prefix!426 suffix!1176))))

(declare-fun b!3841502 () Bool)

(declare-fun e!2373410 () Bool)

(declare-fun e!2373411 () Bool)

(assert (=> b!3841502 (= e!2373410 (not e!2373411))))

(declare-fun res!1554797 () Bool)

(assert (=> b!3841502 (=> res!1554797 e!2373411)))

(declare-fun lt!1333362 () List!40773)

(assert (=> b!3841502 (= res!1554797 (not (= lt!1333362 lt!1333359)))))

(declare-fun lt!1333360 () tuple2!39824)

(assert (=> b!3841502 (= lt!1333360 (lexList!1629 thiss!20629 rules!2768 (_2!23045 (v!38981 lt!1333378))))))

(declare-fun lt!1333364 () TokenValue!6502)

(declare-fun lt!1333372 () Int)

(declare-fun lt!1333375 () List!40773)

(declare-fun lt!1333373 () List!40773)

(assert (=> b!3841502 (and (= (size!30591 (_1!23045 (v!38981 lt!1333378))) lt!1333372) (= (originalCharacters!6872 (_1!23045 (v!38981 lt!1333378))) lt!1333373) (= (tuple2!39823 (_1!23045 (v!38981 lt!1333378)) (_2!23045 (v!38981 lt!1333378))) (tuple2!39823 (Token!11683 lt!1333364 (rule!9110 (_1!23045 (v!38981 lt!1333378))) lt!1333372 lt!1333373) lt!1333375)))))

(declare-fun size!30592 (List!40773) Int)

(assert (=> b!3841502 (= lt!1333372 (size!30592 lt!1333373))))

(declare-fun e!2373381 () Bool)

(assert (=> b!3841502 e!2373381))

(declare-fun res!1554804 () Bool)

(assert (=> b!3841502 (=> (not res!1554804) (not e!2373381))))

(assert (=> b!3841502 (= res!1554804 (= (value!199386 (_1!23045 (v!38981 lt!1333378))) lt!1333364))))

(declare-fun apply!9515 (TokenValueInjection!12432 BalanceConc!24560) TokenValue!6502)

(declare-fun seqFromList!4543 (List!40773) BalanceConc!24560)

(assert (=> b!3841502 (= lt!1333364 (apply!9515 (transformation!6272 (rule!9110 (_1!23045 (v!38981 lt!1333378)))) (seqFromList!4543 lt!1333373)))))

(assert (=> b!3841502 (= (_2!23045 (v!38981 lt!1333378)) lt!1333375)))

(declare-datatypes ((Unit!58352 0))(
  ( (Unit!58353) )
))
(declare-fun lt!1333374 () Unit!58352)

(declare-fun lemmaSamePrefixThenSameSuffix!1592 (List!40773 List!40773 List!40773 List!40773 List!40773) Unit!58352)

(assert (=> b!3841502 (= lt!1333374 (lemmaSamePrefixThenSameSuffix!1592 lt!1333373 (_2!23045 (v!38981 lt!1333378)) lt!1333373 lt!1333375 lt!1333359))))

(declare-fun getSuffix!1826 (List!40773 List!40773) List!40773)

(assert (=> b!3841502 (= lt!1333375 (getSuffix!1826 lt!1333359 lt!1333373))))

(declare-fun isPrefix!3371 (List!40773 List!40773) Bool)

(assert (=> b!3841502 (isPrefix!3371 lt!1333373 lt!1333362)))

(assert (=> b!3841502 (= lt!1333362 (++!10302 lt!1333373 (_2!23045 (v!38981 lt!1333378))))))

(declare-fun lt!1333368 () Unit!58352)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2234 (List!40773 List!40773) Unit!58352)

(assert (=> b!3841502 (= lt!1333368 (lemmaConcatTwoListThenFirstIsPrefix!2234 lt!1333373 (_2!23045 (v!38981 lt!1333378))))))

(declare-fun list!15136 (BalanceConc!24560) List!40773)

(declare-fun charsOf!4100 (Token!11682) BalanceConc!24560)

(assert (=> b!3841502 (= lt!1333373 (list!15136 (charsOf!4100 (_1!23045 (v!38981 lt!1333378)))))))

(declare-fun ruleValid!2224 (LexerInterface!5861 Rule!12344) Bool)

(assert (=> b!3841502 (ruleValid!2224 thiss!20629 (rule!9110 (_1!23045 (v!38981 lt!1333378))))))

(declare-fun lt!1333369 () Unit!58352)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1304 (LexerInterface!5861 Rule!12344 List!40775) Unit!58352)

(assert (=> b!3841502 (= lt!1333369 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1304 thiss!20629 (rule!9110 (_1!23045 (v!38981 lt!1333378))) rules!2768))))

(declare-fun lt!1333361 () Unit!58352)

(declare-fun lemmaCharactersSize!933 (Token!11682) Unit!58352)

(assert (=> b!3841502 (= lt!1333361 (lemmaCharactersSize!933 (_1!23045 (v!38981 lt!1333378))))))

(declare-fun e!2373388 () Bool)

(assert (=> b!3841503 (= e!2373388 (and tp!1163782 tp!1163785))))

(declare-fun b!3841504 () Bool)

(declare-fun res!1554805 () Bool)

(assert (=> b!3841504 (=> (not res!1554805) (not e!2373407))))

(declare-fun isEmpty!24028 (List!40774) Bool)

(assert (=> b!3841504 (= res!1554805 (not (isEmpty!24028 prefixTokens!80)))))

(declare-fun e!2373392 () Bool)

(assert (=> b!3841505 (= e!2373392 (and tp!1163791 tp!1163784))))

(declare-fun e!2373406 () Bool)

(assert (=> b!3841506 (= e!2373406 (and tp!1163776 tp!1163790))))

(declare-fun b!3841507 () Bool)

(assert (=> b!3841507 true))

(declare-fun e!2373401 () Bool)

(assert (=> b!3841507 e!2373401))

(declare-fun e!2373394 () Option!8690)

(declare-fun err!4241 () Option!8690)

(assert (=> b!3841507 (= e!2373394 err!4241)))

(declare-fun b!3841508 () Bool)

(assert (=> b!3841508 (= e!2373381 (= (size!30591 (_1!23045 (v!38981 lt!1333378))) (size!30592 (originalCharacters!6872 (_1!23045 (v!38981 lt!1333378))))))))

(declare-fun b!3841509 () Bool)

(assert (=> b!3841509 (= e!2373382 e!2373394)))

(declare-fun c!669468 () Bool)

(assert (=> b!3841509 (= c!669468 ((_ is Cons!40651) rules!2768))))

(declare-fun b!3841510 () Bool)

(declare-fun res!1554795 () Bool)

(assert (=> b!3841510 (=> (not res!1554795) (not e!2373398))))

(assert (=> b!3841510 (= res!1554795 (= (lexList!1629 thiss!20629 rules!2768 suffix!1176) (tuple2!39825 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3841511 () Bool)

(declare-fun res!1554806 () Bool)

(assert (=> b!3841511 (=> (not res!1554806) (not e!2373407))))

(declare-fun rulesInvariant!5204 (LexerInterface!5861 List!40775) Bool)

(assert (=> b!3841511 (= res!1554806 (rulesInvariant!5204 thiss!20629 rules!2768))))

(declare-fun tp!1163787 () Bool)

(declare-fun b!3841512 () Bool)

(declare-fun e!2373377 () Bool)

(declare-fun e!2373380 () Bool)

(assert (=> b!3841512 (= e!2373380 (and (inv!21 (value!199386 (h!46070 suffixTokens!72))) e!2373377 tp!1163787))))

(declare-fun b!3841500 () Bool)

(declare-fun e!2373397 () Bool)

(declare-fun e!2373409 () Bool)

(declare-fun tp!1163774 () Bool)

(assert (=> b!3841500 (= e!2373397 (and e!2373409 tp!1163774))))

(declare-fun res!1554802 () Bool)

(assert (=> start!359656 (=> (not res!1554802) (not e!2373407))))

(assert (=> start!359656 (= res!1554802 ((_ is Lexer!5859) thiss!20629))))

(assert (=> start!359656 e!2373407))

(assert (=> start!359656 e!2373405))

(assert (=> start!359656 true))

(assert (=> start!359656 e!2373386))

(assert (=> start!359656 e!2373397))

(declare-fun e!2373387 () Bool)

(assert (=> start!359656 e!2373387))

(declare-fun e!2373390 () Bool)

(assert (=> start!359656 e!2373390))

(declare-fun e!2373378 () Bool)

(assert (=> start!359656 e!2373378))

(declare-fun call!281966 () Option!8690)

(declare-fun bm!281961 () Bool)

(declare-fun maxPrefixOneRule!2249 (LexerInterface!5861 Rule!12344 List!40773) Option!8690)

(assert (=> bm!281961 (= call!281966 (maxPrefixOneRule!2249 thiss!20629 (h!46071 rules!2768) lt!1333359))))

(declare-fun b!3841513 () Bool)

(declare-fun res!1554799 () Bool)

(assert (=> b!3841513 (=> (not res!1554799) (not e!2373407))))

(declare-fun isEmpty!24029 (List!40773) Bool)

(assert (=> b!3841513 (= res!1554799 (not (isEmpty!24029 prefix!426)))))

(declare-fun b!3841514 () Bool)

(declare-fun tp!1163778 () Bool)

(declare-fun inv!54795 (Token!11682) Bool)

(assert (=> b!3841514 (= e!2373390 (and (inv!54795 (h!46070 suffixTokens!72)) e!2373380 tp!1163778))))

(declare-fun e!2373385 () Bool)

(declare-fun e!2373391 () Bool)

(declare-fun b!3841515 () Bool)

(declare-fun tp!1163779 () Bool)

(assert (=> b!3841515 (= e!2373391 (and (inv!21 (value!199386 (_1!23045 (v!38981 err!4241)))) e!2373385 tp!1163779))))

(declare-fun b!3841516 () Bool)

(declare-fun tp!1163773 () Bool)

(assert (=> b!3841516 (= e!2373378 (and tp_is_empty!19325 tp!1163773))))

(declare-fun b!3841517 () Bool)

(assert (=> b!3841517 (= e!2373382 call!281966)))

(declare-fun tp!1163772 () Bool)

(declare-fun b!3841518 () Bool)

(assert (=> b!3841518 (= e!2373401 (and (inv!54795 (_1!23045 (v!38981 err!4241))) e!2373391 tp!1163772))))

(declare-fun b!3841519 () Bool)

(declare-fun res!1554794 () Bool)

(declare-fun e!2373404 () Bool)

(assert (=> b!3841519 (=> res!1554794 e!2373404)))

(assert (=> b!3841519 (= res!1554794 (not (isPrefix!3371 Nil!40649 suffix!1176)))))

(declare-fun b!3841520 () Bool)

(declare-fun e!2373402 () Bool)

(assert (=> b!3841520 (= e!2373411 e!2373402)))

(declare-fun res!1554796 () Bool)

(assert (=> b!3841520 (=> res!1554796 e!2373402)))

(declare-fun lt!1333366 () List!40774)

(assert (=> b!3841520 (= res!1554796 (or (not (= lt!1333371 (tuple2!39825 lt!1333366 (_2!23046 lt!1333360)))) (not (= lt!1333360 (tuple2!39825 (_1!23046 lt!1333360) (_2!23046 lt!1333360)))) (not (= (_2!23045 (v!38981 lt!1333378)) suffix!1176))))))

(declare-fun lt!1333379 () List!40774)

(assert (=> b!3841520 (= lt!1333366 (++!10301 lt!1333379 (_1!23046 lt!1333360)))))

(assert (=> b!3841520 (= lt!1333379 (Cons!40650 (_1!23045 (v!38981 lt!1333378)) Nil!40650))))

(declare-fun b!3841521 () Bool)

(declare-fun tp!1163789 () Bool)

(declare-fun inv!54792 (String!46228) Bool)

(declare-fun inv!54796 (TokenValueInjection!12432) Bool)

(assert (=> b!3841521 (= e!2373409 (and tp!1163789 (inv!54792 (tag!7132 (h!46071 rules!2768))) (inv!54796 (transformation!6272 (h!46071 rules!2768))) e!2373392))))

(declare-fun b!3841522 () Bool)

(declare-fun e!2373384 () Bool)

(assert (=> b!3841522 (= e!2373384 e!2373404)))

(declare-fun res!1554807 () Bool)

(assert (=> b!3841522 (=> res!1554807 e!2373404)))

(assert (=> b!3841522 (= res!1554807 (or (not (= lt!1333376 (_1!23046 lt!1333371))) (not (= lt!1333376 lt!1333366)) (not (= prefixTokens!80 lt!1333379)) (not (= prefix!426 lt!1333373))))))

(assert (=> b!3841522 (= lt!1333373 prefix!426)))

(declare-fun lt!1333377 () Unit!58352)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!400 (List!40773 List!40773 List!40773 List!40773) Unit!58352)

(assert (=> b!3841522 (= lt!1333377 (lemmaConcatSameAndSameSizesThenSameLists!400 lt!1333373 (_2!23045 (v!38981 lt!1333378)) prefix!426 suffix!1176))))

(declare-fun b!3841523 () Bool)

(assert (=> b!3841523 (= e!2373402 e!2373384)))

(declare-fun res!1554801 () Bool)

(assert (=> b!3841523 (=> res!1554801 e!2373384)))

(assert (=> b!3841523 (= res!1554801 (not (= lt!1333378 (Some!8689 (tuple2!39823 (_1!23045 (v!38981 lt!1333378)) (_2!23045 (v!38981 lt!1333378)))))))))

(assert (=> b!3841523 e!2373412))

(declare-fun res!1554800 () Bool)

(assert (=> b!3841523 (=> (not res!1554800) (not e!2373412))))

(assert (=> b!3841523 (= res!1554800 (isPrefix!3371 lt!1333359 lt!1333359))))

(declare-fun lt!1333365 () Unit!58352)

(declare-fun lemmaIsPrefixRefl!2144 (List!40773 List!40773) Unit!58352)

(assert (=> b!3841523 (= lt!1333365 (lemmaIsPrefixRefl!2144 lt!1333359 lt!1333359))))

(assert (=> b!3841523 (= lt!1333371 (tuple2!39825 (Cons!40650 (_1!23045 (v!38981 lt!1333378)) (_1!23046 lt!1333360)) (_2!23046 lt!1333360)))))

(declare-fun b!3841524 () Bool)

(assert (=> b!3841524 (= e!2373398 e!2373410)))

(declare-fun res!1554803 () Bool)

(assert (=> b!3841524 (=> (not res!1554803) (not e!2373410))))

(assert (=> b!3841524 (= res!1554803 ((_ is Some!8689) lt!1333378))))

(declare-fun maxPrefix!3165 (LexerInterface!5861 List!40775 List!40773) Option!8690)

(assert (=> b!3841524 (= lt!1333378 (maxPrefix!3165 thiss!20629 rules!2768 lt!1333359))))

(declare-fun e!2373396 () Bool)

(assert (=> b!3841525 (= e!2373396 (and tp!1163780 tp!1163777))))

(declare-fun b!3841526 () Bool)

(declare-fun lt!1333370 () Option!8690)

(assert (=> b!3841526 (= lt!1333370 (maxPrefix!3165 thiss!20629 (t!310444 rules!2768) lt!1333359))))

(declare-fun lt!1333367 () Option!8690)

(assert (=> b!3841526 (= lt!1333367 call!281966)))

(assert (=> b!3841526 (= e!2373394 (ite (and ((_ is None!8689) lt!1333367) ((_ is None!8689) lt!1333370)) None!8689 (ite ((_ is None!8689) lt!1333370) lt!1333367 (ite ((_ is None!8689) lt!1333367) lt!1333370 (ite (>= (size!30591 (_1!23045 (v!38981 lt!1333367))) (size!30591 (_1!23045 (v!38981 lt!1333370)))) (Some!8689 (v!38981 lt!1333367)) lt!1333370)))))))

(declare-fun b!3841527 () Bool)

(declare-fun res!1554808 () Bool)

(assert (=> b!3841527 (=> (not res!1554808) (not e!2373407))))

(declare-fun isEmpty!24030 (List!40775) Bool)

(assert (=> b!3841527 (= res!1554808 (not (isEmpty!24030 rules!2768)))))

(declare-fun tp!1163771 () Bool)

(declare-fun b!3841528 () Bool)

(assert (=> b!3841528 (= e!2373379 (and tp!1163771 (inv!54792 (tag!7132 (rule!9110 (h!46070 prefixTokens!80)))) (inv!54796 (transformation!6272 (rule!9110 (h!46070 prefixTokens!80)))) e!2373406))))

(declare-fun b!3841529 () Bool)

(assert (=> b!3841529 (= e!2373404 true)))

(assert (=> b!3841529 (= (maxPrefix!3165 thiss!20629 rules!2768 (++!10302 prefix!426 Nil!40649)) (Some!8689 (tuple2!39823 (_1!23045 (v!38981 lt!1333378)) Nil!40649)))))

(declare-fun lt!1333363 () Unit!58352)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!2 (LexerInterface!5861 List!40775 List!40773 List!40773 List!40773 Token!11682 List!40773 List!40773) Unit!58352)

(assert (=> b!3841529 (= lt!1333363 (lemmaMaxPrefixThenWithShorterSuffix!2 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40649 (_1!23045 (v!38981 lt!1333378)) suffix!1176 Nil!40649))))

(declare-fun tp!1163781 () Bool)

(declare-fun b!3841530 () Bool)

(assert (=> b!3841530 (= e!2373385 (and tp!1163781 (inv!54792 (tag!7132 (rule!9110 (_1!23045 (v!38981 err!4241))))) (inv!54796 (transformation!6272 (rule!9110 (_1!23045 (v!38981 err!4241))))) e!2373388))))

(declare-fun tp!1163788 () Bool)

(declare-fun b!3841531 () Bool)

(assert (=> b!3841531 (= e!2373377 (and tp!1163788 (inv!54792 (tag!7132 (rule!9110 (h!46070 suffixTokens!72)))) (inv!54796 (transformation!6272 (rule!9110 (h!46070 suffixTokens!72)))) e!2373396))))

(declare-fun tp!1163792 () Bool)

(declare-fun b!3841532 () Bool)

(assert (=> b!3841532 (= e!2373387 (and (inv!54795 (h!46070 prefixTokens!80)) e!2373389 tp!1163792))))

(assert (= (and start!359656 res!1554802) b!3841527))

(assert (= (and b!3841527 res!1554808) b!3841511))

(assert (= (and b!3841511 res!1554806) b!3841504))

(assert (= (and b!3841504 res!1554805) b!3841513))

(assert (= (and b!3841513 res!1554799) b!3841501))

(assert (= (and b!3841501 res!1554798) b!3841510))

(assert (= (and b!3841510 res!1554795) b!3841524))

(assert (= (and b!3841524 res!1554803) b!3841502))

(assert (= (and b!3841502 res!1554804) b!3841508))

(assert (= (and b!3841502 (not res!1554797)) b!3841520))

(assert (= (and b!3841520 (not res!1554796)) b!3841523))

(assert (= (and b!3841523 res!1554800) b!3841499))

(assert (= (and b!3841499 c!669469) b!3841517))

(assert (= (and b!3841499 (not c!669469)) b!3841509))

(assert (= (and b!3841509 c!669468) b!3841526))

(assert (= (and b!3841509 (not c!669468)) b!3841507))

(assert (= b!3841530 b!3841503))

(assert (= b!3841515 b!3841530))

(assert (= b!3841518 b!3841515))

(assert (= (and b!3841507 ((_ is Some!8689) err!4241)) b!3841518))

(assert (= (or b!3841517 b!3841526) bm!281961))

(assert (= (and b!3841523 (not res!1554801)) b!3841522))

(assert (= (and b!3841522 (not res!1554807)) b!3841519))

(assert (= (and b!3841519 (not res!1554794)) b!3841529))

(assert (= (and start!359656 ((_ is Cons!40649) suffixResult!91)) b!3841496))

(assert (= (and start!359656 ((_ is Cons!40649) suffix!1176)) b!3841498))

(assert (= b!3841521 b!3841505))

(assert (= b!3841500 b!3841521))

(assert (= (and start!359656 ((_ is Cons!40651) rules!2768)) b!3841500))

(assert (= b!3841528 b!3841506))

(assert (= b!3841497 b!3841528))

(assert (= b!3841532 b!3841497))

(assert (= (and start!359656 ((_ is Cons!40650) prefixTokens!80)) b!3841532))

(assert (= b!3841531 b!3841525))

(assert (= b!3841512 b!3841531))

(assert (= b!3841514 b!3841512))

(assert (= (and start!359656 ((_ is Cons!40650) suffixTokens!72)) b!3841514))

(assert (= (and start!359656 ((_ is Cons!40649) prefix!426)) b!3841516))

(declare-fun m!4395665 () Bool)

(assert (=> b!3841510 m!4395665))

(declare-fun m!4395667 () Bool)

(assert (=> b!3841529 m!4395667))

(assert (=> b!3841529 m!4395667))

(declare-fun m!4395669 () Bool)

(assert (=> b!3841529 m!4395669))

(declare-fun m!4395671 () Bool)

(assert (=> b!3841529 m!4395671))

(declare-fun m!4395673 () Bool)

(assert (=> b!3841526 m!4395673))

(declare-fun m!4395675 () Bool)

(assert (=> b!3841518 m!4395675))

(declare-fun m!4395677 () Bool)

(assert (=> b!3841532 m!4395677))

(declare-fun m!4395679 () Bool)

(assert (=> b!3841520 m!4395679))

(declare-fun m!4395681 () Bool)

(assert (=> b!3841524 m!4395681))

(declare-fun m!4395683 () Bool)

(assert (=> b!3841530 m!4395683))

(declare-fun m!4395685 () Bool)

(assert (=> b!3841530 m!4395685))

(declare-fun m!4395687 () Bool)

(assert (=> b!3841502 m!4395687))

(declare-fun m!4395689 () Bool)

(assert (=> b!3841502 m!4395689))

(assert (=> b!3841502 m!4395687))

(declare-fun m!4395691 () Bool)

(assert (=> b!3841502 m!4395691))

(declare-fun m!4395693 () Bool)

(assert (=> b!3841502 m!4395693))

(declare-fun m!4395695 () Bool)

(assert (=> b!3841502 m!4395695))

(declare-fun m!4395697 () Bool)

(assert (=> b!3841502 m!4395697))

(declare-fun m!4395699 () Bool)

(assert (=> b!3841502 m!4395699))

(declare-fun m!4395701 () Bool)

(assert (=> b!3841502 m!4395701))

(declare-fun m!4395703 () Bool)

(assert (=> b!3841502 m!4395703))

(declare-fun m!4395705 () Bool)

(assert (=> b!3841502 m!4395705))

(declare-fun m!4395707 () Bool)

(assert (=> b!3841502 m!4395707))

(declare-fun m!4395709 () Bool)

(assert (=> b!3841502 m!4395709))

(declare-fun m!4395711 () Bool)

(assert (=> b!3841502 m!4395711))

(assert (=> b!3841502 m!4395693))

(declare-fun m!4395713 () Bool)

(assert (=> b!3841502 m!4395713))

(declare-fun m!4395715 () Bool)

(assert (=> b!3841501 m!4395715))

(declare-fun m!4395717 () Bool)

(assert (=> b!3841501 m!4395717))

(declare-fun m!4395719 () Bool)

(assert (=> b!3841501 m!4395719))

(declare-fun m!4395721 () Bool)

(assert (=> b!3841512 m!4395721))

(declare-fun m!4395723 () Bool)

(assert (=> b!3841515 m!4395723))

(declare-fun m!4395725 () Bool)

(assert (=> b!3841504 m!4395725))

(declare-fun m!4395727 () Bool)

(assert (=> b!3841514 m!4395727))

(declare-fun m!4395729 () Bool)

(assert (=> b!3841531 m!4395729))

(declare-fun m!4395731 () Bool)

(assert (=> b!3841531 m!4395731))

(declare-fun m!4395733 () Bool)

(assert (=> b!3841508 m!4395733))

(declare-fun m!4395735 () Bool)

(assert (=> b!3841528 m!4395735))

(declare-fun m!4395737 () Bool)

(assert (=> b!3841528 m!4395737))

(declare-fun m!4395739 () Bool)

(assert (=> b!3841522 m!4395739))

(declare-fun m!4395741 () Bool)

(assert (=> b!3841519 m!4395741))

(declare-fun m!4395743 () Bool)

(assert (=> bm!281961 m!4395743))

(declare-fun m!4395745 () Bool)

(assert (=> b!3841513 m!4395745))

(declare-fun m!4395747 () Bool)

(assert (=> b!3841521 m!4395747))

(declare-fun m!4395749 () Bool)

(assert (=> b!3841521 m!4395749))

(declare-fun m!4395751 () Bool)

(assert (=> b!3841497 m!4395751))

(declare-fun m!4395753 () Bool)

(assert (=> b!3841511 m!4395753))

(declare-fun m!4395755 () Bool)

(assert (=> b!3841527 m!4395755))

(declare-fun m!4395757 () Bool)

(assert (=> b!3841523 m!4395757))

(declare-fun m!4395759 () Bool)

(assert (=> b!3841523 m!4395759))

(check-sat (not b!3841511) (not b!3841522) (not b!3841502) b_and!286185 (not b!3841519) (not b!3841514) (not b!3841513) (not b!3841529) (not b_next!103217) (not b!3841520) (not b_next!103215) b_and!286197 (not b!3841527) b_and!286191 (not b!3841501) (not b_next!103211) (not b!3841496) (not b_next!103223) b_and!286183 (not b!3841521) (not b_next!103213) (not b!3841528) (not b!3841530) (not b_next!103219) (not b!3841526) b_and!286187 b_and!286195 (not b!3841500) (not b!3841510) (not b!3841532) (not b!3841512) b_and!286193 (not bm!281961) (not b!3841518) (not b!3841523) (not b!3841524) (not b!3841531) b_and!286189 (not b!3841516) (not b!3841497) (not b!3841504) (not b!3841515) (not b!3841498) (not b_next!103221) (not b!3841508) (not b_next!103209) tp_is_empty!19325)
(check-sat b_and!286191 b_and!286185 (not b_next!103211) (not b_next!103223) (not b_next!103219) b_and!286187 b_and!286195 b_and!286193 b_and!286189 (not b_next!103217) (not b_next!103221) (not b_next!103209) (not b_next!103215) b_and!286197 b_and!286183 (not b_next!103213))
