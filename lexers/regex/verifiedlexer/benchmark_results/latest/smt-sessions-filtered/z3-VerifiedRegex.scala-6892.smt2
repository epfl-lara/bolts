; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363056 () Bool)

(assert start!363056)

(declare-fun b!3869332 () Bool)

(declare-fun b_free!104413 () Bool)

(declare-fun b_next!105117 () Bool)

(assert (=> b!3869332 (= b_free!104413 (not b_next!105117))))

(declare-fun tp!1173208 () Bool)

(declare-fun b_and!289971 () Bool)

(assert (=> b!3869332 (= tp!1173208 b_and!289971)))

(declare-fun b_free!104415 () Bool)

(declare-fun b_next!105119 () Bool)

(assert (=> b!3869332 (= b_free!104415 (not b_next!105119))))

(declare-fun tp!1173207 () Bool)

(declare-fun b_and!289973 () Bool)

(assert (=> b!3869332 (= tp!1173207 b_and!289973)))

(declare-fun b!3869325 () Bool)

(declare-fun b_free!104417 () Bool)

(declare-fun b_next!105121 () Bool)

(assert (=> b!3869325 (= b_free!104417 (not b_next!105121))))

(declare-fun tp!1173204 () Bool)

(declare-fun b_and!289975 () Bool)

(assert (=> b!3869325 (= tp!1173204 b_and!289975)))

(declare-fun b_free!104419 () Bool)

(declare-fun b_next!105123 () Bool)

(assert (=> b!3869325 (= b_free!104419 (not b_next!105123))))

(declare-fun tp!1173201 () Bool)

(declare-fun b_and!289977 () Bool)

(assert (=> b!3869325 (= tp!1173201 b_and!289977)))

(declare-fun b!3869320 () Bool)

(declare-fun b_free!104421 () Bool)

(declare-fun b_next!105125 () Bool)

(assert (=> b!3869320 (= b_free!104421 (not b_next!105125))))

(declare-fun tp!1173216 () Bool)

(declare-fun b_and!289979 () Bool)

(assert (=> b!3869320 (= tp!1173216 b_and!289979)))

(declare-fun b_free!104423 () Bool)

(declare-fun b_next!105127 () Bool)

(assert (=> b!3869320 (= b_free!104423 (not b_next!105127))))

(declare-fun tp!1173212 () Bool)

(declare-fun b_and!289981 () Bool)

(assert (=> b!3869320 (= tp!1173212 b_and!289981)))

(declare-fun e!2393077 () Bool)

(assert (=> b!3869320 (= e!2393077 (and tp!1173216 tp!1173212))))

(declare-fun b!3869321 () Bool)

(declare-fun e!2393102 () Bool)

(declare-fun tp_is_empty!19525 () Bool)

(declare-fun tp!1173213 () Bool)

(assert (=> b!3869321 (= e!2393102 (and tp_is_empty!19525 tp!1173213))))

(declare-fun b!3869322 () Bool)

(declare-fun e!2393096 () Bool)

(declare-fun e!2393105 () Bool)

(assert (=> b!3869322 (= e!2393096 e!2393105)))

(declare-fun res!1567157 () Bool)

(assert (=> b!3869322 (=> res!1567157 e!2393105)))

(declare-datatypes ((C!22740 0))(
  ( (C!22741 (val!13464 Int)) )
))
(declare-datatypes ((List!41218 0))(
  ( (Nil!41094) (Cons!41094 (h!46514 C!22740) (t!314285 List!41218)) )
))
(declare-fun lt!1346419 () List!41218)

(declare-fun lt!1346408 () List!41218)

(declare-fun lt!1346431 () List!41218)

(assert (=> b!3869322 (= res!1567157 (or (not (= lt!1346431 lt!1346408)) (not (= lt!1346431 lt!1346419))))))

(declare-fun lt!1346425 () List!41218)

(declare-fun suffix!1176 () List!41218)

(declare-fun ++!10501 (List!41218 List!41218) List!41218)

(assert (=> b!3869322 (= lt!1346431 (++!10501 lt!1346425 suffix!1176))))

(declare-fun b!3869323 () Bool)

(declare-datatypes ((Unit!58884 0))(
  ( (Unit!58885) )
))
(declare-fun e!2393111 () Unit!58884)

(declare-fun Unit!58886 () Unit!58884)

(assert (=> b!3869323 (= e!2393111 Unit!58886)))

(declare-fun b!3869324 () Bool)

(declare-fun c!673360 () Bool)

(declare-datatypes ((List!41219 0))(
  ( (Nil!41095) (Cons!41095 (h!46515 (_ BitVec 16)) (t!314286 List!41219)) )
))
(declare-datatypes ((TokenValue!6602 0))(
  ( (FloatLiteralValue!13204 (text!46659 List!41219)) (TokenValueExt!6601 (__x!25421 Int)) (Broken!33010 (value!202210 List!41219)) (Object!6725) (End!6602) (Def!6602) (Underscore!6602) (Match!6602) (Else!6602) (Error!6602) (Case!6602) (If!6602) (Extends!6602) (Abstract!6602) (Class!6602) (Val!6602) (DelimiterValue!13204 (del!6662 List!41219)) (KeywordValue!6608 (value!202211 List!41219)) (CommentValue!13204 (value!202212 List!41219)) (WhitespaceValue!13204 (value!202213 List!41219)) (IndentationValue!6602 (value!202214 List!41219)) (String!46727) (Int32!6602) (Broken!33011 (value!202215 List!41219)) (Boolean!6603) (Unit!58887) (OperatorValue!6605 (op!6662 List!41219)) (IdentifierValue!13204 (value!202216 List!41219)) (IdentifierValue!13205 (value!202217 List!41219)) (WhitespaceValue!13205 (value!202218 List!41219)) (True!13204) (False!13204) (Broken!33012 (value!202219 List!41219)) (Broken!33013 (value!202220 List!41219)) (True!13205) (RightBrace!6602) (RightBracket!6602) (Colon!6602) (Null!6602) (Comma!6602) (LeftBracket!6602) (False!13205) (LeftBrace!6602) (ImaginaryLiteralValue!6602 (text!46660 List!41219)) (StringLiteralValue!19806 (value!202221 List!41219)) (EOFValue!6602 (value!202222 List!41219)) (IdentValue!6602 (value!202223 List!41219)) (DelimiterValue!13205 (value!202224 List!41219)) (DedentValue!6602 (value!202225 List!41219)) (NewLineValue!6602 (value!202226 List!41219)) (IntegerValue!19806 (value!202227 (_ BitVec 32)) (text!46661 List!41219)) (IntegerValue!19807 (value!202228 Int) (text!46662 List!41219)) (Times!6602) (Or!6602) (Equal!6602) (Minus!6602) (Broken!33014 (value!202229 List!41219)) (And!6602) (Div!6602) (LessEqual!6602) (Mod!6602) (Concat!17879) (Not!6602) (Plus!6602) (SpaceValue!6602 (value!202230 List!41219)) (IntegerValue!19808 (value!202231 Int) (text!46663 List!41219)) (StringLiteralValue!19807 (text!46664 List!41219)) (FloatLiteralValue!13205 (text!46665 List!41219)) (BytesLiteralValue!6602 (value!202232 List!41219)) (CommentValue!13205 (value!202233 List!41219)) (StringLiteralValue!19808 (value!202234 List!41219)) (ErrorTokenValue!6602 (msg!6663 List!41219)) )
))
(declare-datatypes ((Regex!11277 0))(
  ( (ElementMatch!11277 (c!673364 C!22740)) (Concat!17880 (regOne!23066 Regex!11277) (regTwo!23066 Regex!11277)) (EmptyExpr!11277) (Star!11277 (reg!11606 Regex!11277)) (EmptyLang!11277) (Union!11277 (regOne!23067 Regex!11277) (regTwo!23067 Regex!11277)) )
))
(declare-datatypes ((String!46728 0))(
  ( (String!46729 (value!202235 String)) )
))
(declare-datatypes ((IArray!25171 0))(
  ( (IArray!25172 (innerList!12643 List!41218)) )
))
(declare-datatypes ((Conc!12583 0))(
  ( (Node!12583 (left!31587 Conc!12583) (right!31917 Conc!12583) (csize!25396 Int) (cheight!12794 Int)) (Leaf!19476 (xs!15889 IArray!25171) (csize!25397 Int)) (Empty!12583) )
))
(declare-datatypes ((BalanceConc!24760 0))(
  ( (BalanceConc!24761 (c!673365 Conc!12583)) )
))
(declare-datatypes ((TokenValueInjection!12632 0))(
  ( (TokenValueInjection!12633 (toValue!8800 Int) (toChars!8659 Int)) )
))
(declare-datatypes ((Rule!12544 0))(
  ( (Rule!12545 (regex!6372 Regex!11277) (tag!7232 String!46728) (isSeparator!6372 Bool) (transformation!6372 TokenValueInjection!12632)) )
))
(declare-datatypes ((Token!11882 0))(
  ( (Token!11883 (value!202236 TokenValue!6602) (rule!9256 Rule!12544) (size!30889 Int) (originalCharacters!6972 List!41218)) )
))
(declare-datatypes ((List!41220 0))(
  ( (Nil!41096) (Cons!41096 (h!46516 Token!11882) (t!314287 List!41220)) )
))
(declare-fun lt!1346407 () List!41220)

(declare-fun isEmpty!24374 (List!41220) Bool)

(assert (=> b!3869324 (= c!673360 (isEmpty!24374 lt!1346407))))

(declare-fun prefixTokens!80 () List!41220)

(declare-fun tail!5903 (List!41220) List!41220)

(assert (=> b!3869324 (= lt!1346407 (tail!5903 prefixTokens!80))))

(declare-fun e!2393076 () Unit!58884)

(declare-fun e!2393079 () Unit!58884)

(assert (=> b!3869324 (= e!2393076 e!2393079)))

(declare-fun e!2393109 () Bool)

(assert (=> b!3869325 (= e!2393109 (and tp!1173204 tp!1173201))))

(declare-fun b!3869326 () Bool)

(declare-fun res!1567158 () Bool)

(declare-fun e!2393098 () Bool)

(assert (=> b!3869326 (=> (not res!1567158) (not e!2393098))))

(assert (=> b!3869326 (= res!1567158 (not (isEmpty!24374 prefixTokens!80)))))

(declare-fun b!3869327 () Bool)

(declare-fun res!1567168 () Bool)

(declare-fun e!2393085 () Bool)

(assert (=> b!3869327 (=> res!1567168 e!2393085)))

(declare-datatypes ((tuple2!40314 0))(
  ( (tuple2!40315 (_1!23291 List!41220) (_2!23291 List!41218)) )
))
(declare-fun lt!1346402 () tuple2!40314)

(declare-fun lt!1346403 () tuple2!40314)

(declare-datatypes ((tuple2!40316 0))(
  ( (tuple2!40317 (_1!23292 Token!11882) (_2!23292 List!41218)) )
))
(declare-datatypes ((Option!8790 0))(
  ( (None!8789) (Some!8789 (v!39087 tuple2!40316)) )
))
(declare-fun lt!1346404 () Option!8790)

(declare-fun ++!10502 (List!41220 List!41220) List!41220)

(assert (=> b!3869327 (= res!1567168 (not (= lt!1346403 (tuple2!40315 (++!10502 (Cons!41096 (_1!23292 (v!39087 lt!1346404)) Nil!41096) (_1!23291 lt!1346402)) (_2!23291 lt!1346402)))))))

(declare-fun b!3869328 () Bool)

(declare-fun e!2393083 () Unit!58884)

(declare-fun Unit!58888 () Unit!58884)

(assert (=> b!3869328 (= e!2393083 Unit!58888)))

(declare-fun e!2393107 () Bool)

(declare-fun e!2393099 () Bool)

(declare-fun b!3869329 () Bool)

(declare-fun tp!1173205 () Bool)

(declare-fun inv!55254 (Token!11882) Bool)

(assert (=> b!3869329 (= e!2393107 (and (inv!55254 (h!46516 prefixTokens!80)) e!2393099 tp!1173205))))

(declare-fun b!3869331 () Bool)

(declare-fun res!1567165 () Bool)

(assert (=> b!3869331 (=> (not res!1567165) (not e!2393098))))

(declare-datatypes ((LexerInterface!5961 0))(
  ( (LexerInterfaceExt!5958 (__x!25422 Int)) (Lexer!5959) )
))
(declare-fun thiss!20629 () LexerInterface!5961)

(declare-datatypes ((List!41221 0))(
  ( (Nil!41097) (Cons!41097 (h!46517 Rule!12544) (t!314288 List!41221)) )
))
(declare-fun rules!2768 () List!41221)

(declare-fun rulesInvariant!5304 (LexerInterface!5961 List!41221) Bool)

(assert (=> b!3869331 (= res!1567165 (rulesInvariant!5304 thiss!20629 rules!2768))))

(declare-fun e!2393087 () Bool)

(assert (=> b!3869332 (= e!2393087 (and tp!1173208 tp!1173207))))

(declare-fun b!3869333 () Bool)

(declare-fun e!2393088 () Bool)

(assert (=> b!3869333 (= e!2393088 (not e!2393085))))

(declare-fun res!1567163 () Bool)

(assert (=> b!3869333 (=> res!1567163 e!2393085)))

(assert (=> b!3869333 (= res!1567163 (not (= lt!1346419 lt!1346408)))))

(declare-fun lexList!1729 (LexerInterface!5961 List!41221 List!41218) tuple2!40314)

(assert (=> b!3869333 (= lt!1346402 (lexList!1729 thiss!20629 rules!2768 (_2!23292 (v!39087 lt!1346404))))))

(declare-fun lt!1346412 () Int)

(declare-fun lt!1346401 () List!41218)

(declare-fun lt!1346421 () List!41218)

(declare-fun lt!1346438 () TokenValue!6602)

(assert (=> b!3869333 (and (= (size!30889 (_1!23292 (v!39087 lt!1346404))) lt!1346412) (= (originalCharacters!6972 (_1!23292 (v!39087 lt!1346404))) lt!1346421) (= (v!39087 lt!1346404) (tuple2!40317 (Token!11883 lt!1346438 (rule!9256 (_1!23292 (v!39087 lt!1346404))) lt!1346412 lt!1346421) lt!1346401)))))

(declare-fun size!30890 (List!41218) Int)

(assert (=> b!3869333 (= lt!1346412 (size!30890 lt!1346421))))

(declare-fun e!2393110 () Bool)

(assert (=> b!3869333 e!2393110))

(declare-fun res!1567161 () Bool)

(assert (=> b!3869333 (=> (not res!1567161) (not e!2393110))))

(assert (=> b!3869333 (= res!1567161 (= (value!202236 (_1!23292 (v!39087 lt!1346404))) lt!1346438))))

(declare-fun apply!9615 (TokenValueInjection!12632 BalanceConc!24760) TokenValue!6602)

(declare-fun seqFromList!4643 (List!41218) BalanceConc!24760)

(assert (=> b!3869333 (= lt!1346438 (apply!9615 (transformation!6372 (rule!9256 (_1!23292 (v!39087 lt!1346404)))) (seqFromList!4643 lt!1346421)))))

(assert (=> b!3869333 (= (_2!23292 (v!39087 lt!1346404)) lt!1346401)))

(declare-fun lt!1346418 () Unit!58884)

(declare-fun lemmaSamePrefixThenSameSuffix!1692 (List!41218 List!41218 List!41218 List!41218 List!41218) Unit!58884)

(assert (=> b!3869333 (= lt!1346418 (lemmaSamePrefixThenSameSuffix!1692 lt!1346421 (_2!23292 (v!39087 lt!1346404)) lt!1346421 lt!1346401 lt!1346408))))

(declare-fun getSuffix!1926 (List!41218 List!41218) List!41218)

(assert (=> b!3869333 (= lt!1346401 (getSuffix!1926 lt!1346408 lt!1346421))))

(declare-fun isPrefix!3471 (List!41218 List!41218) Bool)

(assert (=> b!3869333 (isPrefix!3471 lt!1346421 lt!1346419)))

(assert (=> b!3869333 (= lt!1346419 (++!10501 lt!1346421 (_2!23292 (v!39087 lt!1346404))))))

(declare-fun lt!1346440 () Unit!58884)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2334 (List!41218 List!41218) Unit!58884)

(assert (=> b!3869333 (= lt!1346440 (lemmaConcatTwoListThenFirstIsPrefix!2334 lt!1346421 (_2!23292 (v!39087 lt!1346404))))))

(declare-fun list!15288 (BalanceConc!24760) List!41218)

(declare-fun charsOf!4200 (Token!11882) BalanceConc!24760)

(assert (=> b!3869333 (= lt!1346421 (list!15288 (charsOf!4200 (_1!23292 (v!39087 lt!1346404)))))))

(declare-fun ruleValid!2324 (LexerInterface!5961 Rule!12544) Bool)

(assert (=> b!3869333 (ruleValid!2324 thiss!20629 (rule!9256 (_1!23292 (v!39087 lt!1346404))))))

(declare-fun lt!1346405 () Unit!58884)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1404 (LexerInterface!5961 Rule!12544 List!41221) Unit!58884)

(assert (=> b!3869333 (= lt!1346405 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1404 thiss!20629 (rule!9256 (_1!23292 (v!39087 lt!1346404))) rules!2768))))

(declare-fun lt!1346424 () Unit!58884)

(declare-fun lemmaCharactersSize!1033 (Token!11882) Unit!58884)

(assert (=> b!3869333 (= lt!1346424 (lemmaCharactersSize!1033 (_1!23292 (v!39087 lt!1346404))))))

(declare-fun b!3869334 () Bool)

(declare-fun Unit!58889 () Unit!58884)

(assert (=> b!3869334 (= e!2393083 Unit!58889)))

(declare-fun lt!1346437 () Unit!58884)

(declare-fun prefix!426 () List!41218)

(assert (=> b!3869334 (= lt!1346437 (lemmaConcatTwoListThenFirstIsPrefix!2334 prefix!426 suffix!1176))))

(assert (=> b!3869334 (isPrefix!3471 prefix!426 lt!1346408)))

(declare-fun lt!1346423 () Unit!58884)

(declare-fun lemmaIsPrefixSameLengthThenSameList!723 (List!41218 List!41218 List!41218) Unit!58884)

(assert (=> b!3869334 (= lt!1346423 (lemmaIsPrefixSameLengthThenSameList!723 lt!1346421 prefix!426 lt!1346408))))

(assert (=> b!3869334 (= lt!1346421 prefix!426)))

(declare-fun lt!1346416 () Unit!58884)

(assert (=> b!3869334 (= lt!1346416 (lemmaSamePrefixThenSameSuffix!1692 lt!1346421 (_2!23292 (v!39087 lt!1346404)) prefix!426 suffix!1176 lt!1346408))))

(assert (=> b!3869334 false))

(declare-fun b!3869335 () Bool)

(declare-fun e!2393081 () Bool)

(assert (=> b!3869335 (= e!2393081 true)))

(declare-fun lt!1346422 () List!41220)

(declare-fun suffixTokens!72 () List!41220)

(assert (=> b!3869335 (= lt!1346422 (++!10502 (tail!5903 prefixTokens!80) suffixTokens!72))))

(declare-fun lt!1346434 () List!41218)

(declare-fun lt!1346439 () List!41218)

(assert (=> b!3869335 (isPrefix!3471 lt!1346434 lt!1346439)))

(declare-fun lt!1346414 () Unit!58884)

(assert (=> b!3869335 (= lt!1346414 (lemmaConcatTwoListThenFirstIsPrefix!2334 lt!1346434 suffix!1176))))

(declare-fun b!3869336 () Bool)

(declare-fun e!2393108 () Bool)

(declare-fun e!2393095 () Bool)

(assert (=> b!3869336 (= e!2393108 e!2393095)))

(declare-fun res!1567170 () Bool)

(assert (=> b!3869336 (=> (not res!1567170) (not e!2393095))))

(declare-fun lt!1346426 () tuple2!40314)

(assert (=> b!3869336 (= res!1567170 (= (lexList!1729 thiss!20629 rules!2768 suffix!1176) lt!1346426))))

(declare-fun suffixResult!91 () List!41218)

(assert (=> b!3869336 (= lt!1346426 (tuple2!40315 suffixTokens!72 suffixResult!91))))

(declare-fun b!3869337 () Bool)

(declare-fun tp!1173210 () Bool)

(declare-fun e!2393103 () Bool)

(declare-fun e!2393082 () Bool)

(assert (=> b!3869337 (= e!2393082 (and (inv!55254 (h!46516 suffixTokens!72)) e!2393103 tp!1173210))))

(declare-fun tp!1173209 () Bool)

(declare-fun b!3869338 () Bool)

(declare-fun e!2393106 () Bool)

(declare-fun inv!55251 (String!46728) Bool)

(declare-fun inv!55255 (TokenValueInjection!12632) Bool)

(assert (=> b!3869338 (= e!2393106 (and tp!1173209 (inv!55251 (tag!7232 (h!46517 rules!2768))) (inv!55255 (transformation!6372 (h!46517 rules!2768))) e!2393087))))

(declare-fun b!3869339 () Bool)

(declare-fun e!2393112 () Bool)

(assert (=> b!3869339 (= e!2393112 e!2393096)))

(declare-fun res!1567171 () Bool)

(assert (=> b!3869339 (=> res!1567171 e!2393096)))

(assert (=> b!3869339 (= res!1567171 (not (= lt!1346425 prefix!426)))))

(assert (=> b!3869339 (= lt!1346425 (++!10501 lt!1346421 lt!1346434))))

(assert (=> b!3869339 (= lt!1346434 (getSuffix!1926 prefix!426 lt!1346421))))

(declare-fun b!3869340 () Bool)

(declare-fun res!1567176 () Bool)

(assert (=> b!3869340 (=> (not res!1567176) (not e!2393098))))

(declare-fun isEmpty!24375 (List!41221) Bool)

(assert (=> b!3869340 (= res!1567176 (not (isEmpty!24375 rules!2768)))))

(declare-fun b!3869341 () Bool)

(declare-fun tp!1173202 () Bool)

(declare-fun e!2393092 () Bool)

(declare-fun inv!21 (TokenValue!6602) Bool)

(assert (=> b!3869341 (= e!2393103 (and (inv!21 (value!202236 (h!46516 suffixTokens!72))) e!2393092 tp!1173202))))

(declare-fun b!3869342 () Bool)

(declare-fun e!2393097 () Bool)

(declare-fun tp!1173214 () Bool)

(assert (=> b!3869342 (= e!2393097 (and tp_is_empty!19525 tp!1173214))))

(declare-fun tp!1173215 () Bool)

(declare-fun b!3869343 () Bool)

(declare-fun e!2393101 () Bool)

(assert (=> b!3869343 (= e!2393101 (and tp!1173215 (inv!55251 (tag!7232 (rule!9256 (h!46516 prefixTokens!80)))) (inv!55255 (transformation!6372 (rule!9256 (h!46516 prefixTokens!80)))) e!2393109))))

(declare-fun bm!282697 () Bool)

(declare-fun call!282702 () tuple2!40314)

(declare-fun lt!1346429 () tuple2!40316)

(assert (=> bm!282697 (= call!282702 (lexList!1729 thiss!20629 rules!2768 (_2!23292 lt!1346429)))))

(declare-fun b!3869344 () Bool)

(declare-fun e!2393090 () Bool)

(assert (=> b!3869344 (= e!2393090 false)))

(declare-fun b!3869345 () Bool)

(declare-fun Unit!58890 () Unit!58884)

(assert (=> b!3869345 (= e!2393076 Unit!58890)))

(declare-fun b!3869346 () Bool)

(declare-fun e!2393080 () Bool)

(assert (=> b!3869346 (= e!2393080 false)))

(declare-fun b!3869347 () Bool)

(declare-fun e!2393093 () Bool)

(assert (=> b!3869347 (= e!2393093 e!2393081)))

(declare-fun res!1567175 () Bool)

(assert (=> b!3869347 (=> res!1567175 e!2393081)))

(assert (=> b!3869347 (= res!1567175 (not (= lt!1346439 (_2!23292 (v!39087 lt!1346404)))))))

(assert (=> b!3869347 (= (_2!23292 (v!39087 lt!1346404)) lt!1346439)))

(declare-fun lt!1346430 () Unit!58884)

(assert (=> b!3869347 (= lt!1346430 (lemmaSamePrefixThenSameSuffix!1692 lt!1346421 (_2!23292 (v!39087 lt!1346404)) lt!1346421 lt!1346439 lt!1346408))))

(declare-fun lt!1346400 () List!41218)

(assert (=> b!3869347 (isPrefix!3471 lt!1346421 lt!1346400)))

(declare-fun lt!1346420 () Unit!58884)

(assert (=> b!3869347 (= lt!1346420 (lemmaConcatTwoListThenFirstIsPrefix!2334 lt!1346421 lt!1346439))))

(declare-fun b!3869348 () Bool)

(declare-fun e!2393091 () Bool)

(declare-fun tp!1173211 () Bool)

(assert (=> b!3869348 (= e!2393091 (and tp_is_empty!19525 tp!1173211))))

(declare-fun tp!1173206 () Bool)

(declare-fun b!3869349 () Bool)

(assert (=> b!3869349 (= e!2393099 (and (inv!21 (value!202236 (h!46516 prefixTokens!80))) e!2393101 tp!1173206))))

(declare-fun b!3869350 () Bool)

(assert (=> b!3869350 (= e!2393105 e!2393093)))

(declare-fun res!1567174 () Bool)

(assert (=> b!3869350 (=> res!1567174 e!2393093)))

(assert (=> b!3869350 (= res!1567174 (or (not (= lt!1346408 lt!1346431)) (not (= lt!1346408 lt!1346400)) (not (= lt!1346419 lt!1346400))))))

(assert (=> b!3869350 (= lt!1346431 lt!1346400)))

(assert (=> b!3869350 (= lt!1346400 (++!10501 lt!1346421 lt!1346439))))

(assert (=> b!3869350 (= lt!1346439 (++!10501 lt!1346434 suffix!1176))))

(declare-fun lt!1346410 () Unit!58884)

(declare-fun lemmaConcatAssociativity!2218 (List!41218 List!41218 List!41218) Unit!58884)

(assert (=> b!3869350 (= lt!1346410 (lemmaConcatAssociativity!2218 lt!1346421 lt!1346434 suffix!1176))))

(declare-fun b!3869351 () Bool)

(assert (=> b!3869351 (= e!2393098 e!2393108)))

(declare-fun res!1567177 () Bool)

(assert (=> b!3869351 (=> (not res!1567177) (not e!2393108))))

(declare-fun lt!1346441 () List!41220)

(assert (=> b!3869351 (= res!1567177 (= lt!1346403 (tuple2!40315 lt!1346441 suffixResult!91)))))

(assert (=> b!3869351 (= lt!1346403 (lexList!1729 thiss!20629 rules!2768 lt!1346408))))

(assert (=> b!3869351 (= lt!1346441 (++!10502 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3869351 (= lt!1346408 (++!10501 prefix!426 suffix!1176))))

(declare-fun b!3869352 () Bool)

(declare-fun res!1567164 () Bool)

(declare-fun e!2393084 () Bool)

(assert (=> b!3869352 (=> res!1567164 e!2393084)))

(declare-fun head!8186 (List!41220) Token!11882)

(assert (=> b!3869352 (= res!1567164 (not (= (head!8186 prefixTokens!80) (_1!23292 (v!39087 lt!1346404)))))))

(declare-fun b!3869353 () Bool)

(declare-fun Unit!58891 () Unit!58884)

(assert (=> b!3869353 (= e!2393079 Unit!58891)))

(declare-fun lt!1346435 () Unit!58884)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!456 (List!41218 List!41218 List!41218 List!41218) Unit!58884)

(assert (=> b!3869353 (= lt!1346435 (lemmaConcatSameAndSameSizesThenSameLists!456 lt!1346421 (_2!23292 (v!39087 lt!1346404)) lt!1346421 (_2!23292 lt!1346429)))))

(assert (=> b!3869353 (= (_2!23292 (v!39087 lt!1346404)) (_2!23292 lt!1346429))))

(declare-fun lt!1346406 () Unit!58884)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!32 (LexerInterface!5961 List!41221 List!41218 List!41218 List!41220 List!41218) Unit!58884)

(assert (=> b!3869353 (= lt!1346406 (lemmaLexWithSmallerInputCannotProduceSameResults!32 thiss!20629 rules!2768 suffix!1176 (_2!23292 lt!1346429) suffixTokens!72 suffixResult!91))))

(declare-fun res!1567159 () Bool)

(assert (=> b!3869353 (= res!1567159 (not (= call!282702 lt!1346426)))))

(assert (=> b!3869353 (=> (not res!1567159) (not e!2393080))))

(assert (=> b!3869353 e!2393080))

(declare-fun b!3869354 () Bool)

(declare-fun res!1567160 () Bool)

(assert (=> b!3869354 (=> (not res!1567160) (not e!2393098))))

(declare-fun isEmpty!24376 (List!41218) Bool)

(assert (=> b!3869354 (= res!1567160 (not (isEmpty!24376 prefix!426)))))

(declare-fun b!3869355 () Bool)

(declare-fun Unit!58892 () Unit!58884)

(assert (=> b!3869355 (= e!2393111 Unit!58892)))

(declare-fun lt!1346413 () Int)

(assert (=> b!3869355 (= lt!1346413 (size!30890 lt!1346408))))

(declare-fun lt!1346436 () Unit!58884)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1245 (LexerInterface!5961 List!41221 List!41218 List!41218 List!41218 Rule!12544) Unit!58884)

(assert (=> b!3869355 (= lt!1346436 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1245 thiss!20629 rules!2768 lt!1346421 lt!1346408 (_2!23292 (v!39087 lt!1346404)) (rule!9256 (_1!23292 (v!39087 lt!1346404)))))))

(declare-fun maxPrefixOneRule!2347 (LexerInterface!5961 Rule!12544 List!41218) Option!8790)

(assert (=> b!3869355 (= (maxPrefixOneRule!2347 thiss!20629 (rule!9256 (_1!23292 (v!39087 lt!1346404))) lt!1346408) (Some!8789 (tuple2!40317 (Token!11883 lt!1346438 (rule!9256 (_1!23292 (v!39087 lt!1346404))) lt!1346412 lt!1346421) (_2!23292 (v!39087 lt!1346404)))))))

(declare-fun get!13598 (Option!8790) tuple2!40316)

(assert (=> b!3869355 (= lt!1346429 (get!13598 lt!1346404))))

(declare-fun c!673362 () Bool)

(declare-fun lt!1346415 () Int)

(assert (=> b!3869355 (= c!673362 (< (size!30890 (_2!23292 lt!1346429)) lt!1346415))))

(declare-fun lt!1346427 () Unit!58884)

(assert (=> b!3869355 (= lt!1346427 e!2393076)))

(assert (=> b!3869355 false))

(declare-fun b!3869356 () Bool)

(declare-fun e!2393104 () Bool)

(declare-fun tp!1173203 () Bool)

(assert (=> b!3869356 (= e!2393104 (and e!2393106 tp!1173203))))

(declare-fun b!3869357 () Bool)

(declare-fun res!1567167 () Bool)

(assert (=> b!3869357 (=> res!1567167 e!2393085)))

(assert (=> b!3869357 (= res!1567167 (or (not (= lt!1346402 (tuple2!40315 (_1!23291 lt!1346402) (_2!23291 lt!1346402)))) (= (_2!23292 (v!39087 lt!1346404)) suffix!1176)))))

(declare-fun b!3869358 () Bool)

(declare-fun tp!1173200 () Bool)

(assert (=> b!3869358 (= e!2393092 (and tp!1173200 (inv!55251 (tag!7232 (rule!9256 (h!46516 suffixTokens!72)))) (inv!55255 (transformation!6372 (rule!9256 (h!46516 suffixTokens!72)))) e!2393077))))

(declare-fun b!3869359 () Bool)

(assert (=> b!3869359 (= e!2393084 e!2393112)))

(declare-fun res!1567162 () Bool)

(assert (=> b!3869359 (=> res!1567162 e!2393112)))

(assert (=> b!3869359 (= res!1567162 (>= lt!1346412 (size!30890 prefix!426)))))

(assert (=> b!3869359 (isPrefix!3471 lt!1346421 prefix!426)))

(declare-fun lt!1346411 () Unit!58884)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!221 (List!41218 List!41218 List!41218) Unit!58884)

(assert (=> b!3869359 (= lt!1346411 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!221 prefix!426 lt!1346421 lt!1346408))))

(assert (=> b!3869359 (isPrefix!3471 prefix!426 lt!1346408)))

(declare-fun lt!1346428 () Unit!58884)

(assert (=> b!3869359 (= lt!1346428 (lemmaConcatTwoListThenFirstIsPrefix!2334 prefix!426 suffix!1176))))

(declare-fun res!1567173 () Bool)

(assert (=> start!363056 (=> (not res!1567173) (not e!2393098))))

(get-info :version)

(assert (=> start!363056 (= res!1567173 ((_ is Lexer!5959) thiss!20629))))

(assert (=> start!363056 e!2393098))

(assert (=> start!363056 e!2393102))

(assert (=> start!363056 true))

(assert (=> start!363056 e!2393097))

(assert (=> start!363056 e!2393104))

(assert (=> start!363056 e!2393107))

(assert (=> start!363056 e!2393082))

(assert (=> start!363056 e!2393091))

(declare-fun b!3869330 () Bool)

(assert (=> b!3869330 (= e!2393095 e!2393088)))

(declare-fun res!1567172 () Bool)

(assert (=> b!3869330 (=> (not res!1567172) (not e!2393088))))

(assert (=> b!3869330 (= res!1567172 ((_ is Some!8789) lt!1346404))))

(declare-fun maxPrefix!3265 (LexerInterface!5961 List!41221 List!41218) Option!8790)

(assert (=> b!3869330 (= lt!1346404 (maxPrefix!3265 thiss!20629 rules!2768 lt!1346408))))

(declare-fun b!3869360 () Bool)

(assert (=> b!3869360 (= e!2393110 (= (size!30889 (_1!23292 (v!39087 lt!1346404))) (size!30890 (originalCharacters!6972 (_1!23292 (v!39087 lt!1346404))))))))

(declare-fun b!3869361 () Bool)

(declare-fun Unit!58893 () Unit!58884)

(assert (=> b!3869361 (= e!2393079 Unit!58893)))

(declare-fun lt!1346417 () Unit!58884)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!32 (LexerInterface!5961 List!41221 List!41218 List!41218 List!41220 List!41218 List!41220) Unit!58884)

(assert (=> b!3869361 (= lt!1346417 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!32 thiss!20629 rules!2768 suffix!1176 (_2!23292 lt!1346429) suffixTokens!72 suffixResult!91 lt!1346407))))

(declare-fun res!1567166 () Bool)

(assert (=> b!3869361 (= res!1567166 (not (= call!282702 (tuple2!40315 (++!10502 lt!1346407 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3869361 (=> (not res!1567166) (not e!2393090))))

(assert (=> b!3869361 e!2393090))

(declare-fun b!3869362 () Bool)

(assert (=> b!3869362 (= e!2393085 e!2393084)))

(declare-fun res!1567169 () Bool)

(assert (=> b!3869362 (=> res!1567169 e!2393084)))

(declare-fun lt!1346432 () Int)

(assert (=> b!3869362 (= res!1567169 (<= lt!1346432 lt!1346415))))

(declare-fun lt!1346433 () Unit!58884)

(assert (=> b!3869362 (= lt!1346433 e!2393083)))

(declare-fun c!673361 () Bool)

(assert (=> b!3869362 (= c!673361 (= lt!1346432 lt!1346415))))

(declare-fun lt!1346409 () Unit!58884)

(assert (=> b!3869362 (= lt!1346409 e!2393111)))

(declare-fun c!673363 () Bool)

(assert (=> b!3869362 (= c!673363 (< lt!1346432 lt!1346415))))

(assert (=> b!3869362 (= lt!1346415 (size!30890 suffix!1176))))

(assert (=> b!3869362 (= lt!1346432 (size!30890 (_2!23292 (v!39087 lt!1346404))))))

(assert (= (and start!363056 res!1567173) b!3869340))

(assert (= (and b!3869340 res!1567176) b!3869331))

(assert (= (and b!3869331 res!1567165) b!3869326))

(assert (= (and b!3869326 res!1567158) b!3869354))

(assert (= (and b!3869354 res!1567160) b!3869351))

(assert (= (and b!3869351 res!1567177) b!3869336))

(assert (= (and b!3869336 res!1567170) b!3869330))

(assert (= (and b!3869330 res!1567172) b!3869333))

(assert (= (and b!3869333 res!1567161) b!3869360))

(assert (= (and b!3869333 (not res!1567163)) b!3869327))

(assert (= (and b!3869327 (not res!1567168)) b!3869357))

(assert (= (and b!3869357 (not res!1567167)) b!3869362))

(assert (= (and b!3869362 c!673363) b!3869355))

(assert (= (and b!3869362 (not c!673363)) b!3869323))

(assert (= (and b!3869355 c!673362) b!3869324))

(assert (= (and b!3869355 (not c!673362)) b!3869345))

(assert (= (and b!3869324 c!673360) b!3869353))

(assert (= (and b!3869324 (not c!673360)) b!3869361))

(assert (= (and b!3869353 res!1567159) b!3869346))

(assert (= (and b!3869361 res!1567166) b!3869344))

(assert (= (or b!3869353 b!3869361) bm!282697))

(assert (= (and b!3869362 c!673361) b!3869334))

(assert (= (and b!3869362 (not c!673361)) b!3869328))

(assert (= (and b!3869362 (not res!1567169)) b!3869352))

(assert (= (and b!3869352 (not res!1567164)) b!3869359))

(assert (= (and b!3869359 (not res!1567162)) b!3869339))

(assert (= (and b!3869339 (not res!1567171)) b!3869322))

(assert (= (and b!3869322 (not res!1567157)) b!3869350))

(assert (= (and b!3869350 (not res!1567174)) b!3869347))

(assert (= (and b!3869347 (not res!1567175)) b!3869335))

(assert (= (and start!363056 ((_ is Cons!41094) suffixResult!91)) b!3869321))

(assert (= (and start!363056 ((_ is Cons!41094) suffix!1176)) b!3869342))

(assert (= b!3869338 b!3869332))

(assert (= b!3869356 b!3869338))

(assert (= (and start!363056 ((_ is Cons!41097) rules!2768)) b!3869356))

(assert (= b!3869343 b!3869325))

(assert (= b!3869349 b!3869343))

(assert (= b!3869329 b!3869349))

(assert (= (and start!363056 ((_ is Cons!41096) prefixTokens!80)) b!3869329))

(assert (= b!3869358 b!3869320))

(assert (= b!3869341 b!3869358))

(assert (= b!3869337 b!3869341))

(assert (= (and start!363056 ((_ is Cons!41096) suffixTokens!72)) b!3869337))

(assert (= (and start!363056 ((_ is Cons!41094) prefix!426)) b!3869348))

(declare-fun m!4425391 () Bool)

(assert (=> b!3869341 m!4425391))

(declare-fun m!4425393 () Bool)

(assert (=> b!3869324 m!4425393))

(declare-fun m!4425395 () Bool)

(assert (=> b!3869324 m!4425395))

(declare-fun m!4425397 () Bool)

(assert (=> b!3869358 m!4425397))

(declare-fun m!4425399 () Bool)

(assert (=> b!3869358 m!4425399))

(declare-fun m!4425401 () Bool)

(assert (=> b!3869354 m!4425401))

(declare-fun m!4425403 () Bool)

(assert (=> b!3869338 m!4425403))

(declare-fun m!4425405 () Bool)

(assert (=> b!3869338 m!4425405))

(declare-fun m!4425407 () Bool)

(assert (=> b!3869349 m!4425407))

(declare-fun m!4425409 () Bool)

(assert (=> b!3869361 m!4425409))

(declare-fun m!4425411 () Bool)

(assert (=> b!3869361 m!4425411))

(declare-fun m!4425413 () Bool)

(assert (=> bm!282697 m!4425413))

(declare-fun m!4425415 () Bool)

(assert (=> b!3869352 m!4425415))

(declare-fun m!4425417 () Bool)

(assert (=> b!3869326 m!4425417))

(declare-fun m!4425419 () Bool)

(assert (=> b!3869331 m!4425419))

(declare-fun m!4425421 () Bool)

(assert (=> b!3869351 m!4425421))

(declare-fun m!4425423 () Bool)

(assert (=> b!3869351 m!4425423))

(declare-fun m!4425425 () Bool)

(assert (=> b!3869351 m!4425425))

(declare-fun m!4425427 () Bool)

(assert (=> b!3869360 m!4425427))

(declare-fun m!4425429 () Bool)

(assert (=> b!3869362 m!4425429))

(declare-fun m!4425431 () Bool)

(assert (=> b!3869362 m!4425431))

(declare-fun m!4425433 () Bool)

(assert (=> b!3869330 m!4425433))

(declare-fun m!4425435 () Bool)

(assert (=> b!3869322 m!4425435))

(declare-fun m!4425437 () Bool)

(assert (=> b!3869343 m!4425437))

(declare-fun m!4425439 () Bool)

(assert (=> b!3869343 m!4425439))

(declare-fun m!4425441 () Bool)

(assert (=> b!3869350 m!4425441))

(declare-fun m!4425443 () Bool)

(assert (=> b!3869350 m!4425443))

(declare-fun m!4425445 () Bool)

(assert (=> b!3869350 m!4425445))

(declare-fun m!4425447 () Bool)

(assert (=> b!3869347 m!4425447))

(declare-fun m!4425449 () Bool)

(assert (=> b!3869347 m!4425449))

(declare-fun m!4425451 () Bool)

(assert (=> b!3869347 m!4425451))

(declare-fun m!4425453 () Bool)

(assert (=> b!3869329 m!4425453))

(declare-fun m!4425455 () Bool)

(assert (=> b!3869359 m!4425455))

(declare-fun m!4425457 () Bool)

(assert (=> b!3869359 m!4425457))

(declare-fun m!4425459 () Bool)

(assert (=> b!3869359 m!4425459))

(declare-fun m!4425461 () Bool)

(assert (=> b!3869359 m!4425461))

(declare-fun m!4425463 () Bool)

(assert (=> b!3869359 m!4425463))

(declare-fun m!4425465 () Bool)

(assert (=> b!3869339 m!4425465))

(declare-fun m!4425467 () Bool)

(assert (=> b!3869339 m!4425467))

(declare-fun m!4425469 () Bool)

(assert (=> b!3869353 m!4425469))

(declare-fun m!4425471 () Bool)

(assert (=> b!3869353 m!4425471))

(declare-fun m!4425473 () Bool)

(assert (=> b!3869333 m!4425473))

(declare-fun m!4425475 () Bool)

(assert (=> b!3869333 m!4425475))

(declare-fun m!4425477 () Bool)

(assert (=> b!3869333 m!4425477))

(declare-fun m!4425479 () Bool)

(assert (=> b!3869333 m!4425479))

(assert (=> b!3869333 m!4425479))

(declare-fun m!4425481 () Bool)

(assert (=> b!3869333 m!4425481))

(declare-fun m!4425483 () Bool)

(assert (=> b!3869333 m!4425483))

(declare-fun m!4425485 () Bool)

(assert (=> b!3869333 m!4425485))

(declare-fun m!4425487 () Bool)

(assert (=> b!3869333 m!4425487))

(declare-fun m!4425489 () Bool)

(assert (=> b!3869333 m!4425489))

(declare-fun m!4425491 () Bool)

(assert (=> b!3869333 m!4425491))

(declare-fun m!4425493 () Bool)

(assert (=> b!3869333 m!4425493))

(declare-fun m!4425495 () Bool)

(assert (=> b!3869333 m!4425495))

(assert (=> b!3869333 m!4425475))

(declare-fun m!4425497 () Bool)

(assert (=> b!3869333 m!4425497))

(declare-fun m!4425499 () Bool)

(assert (=> b!3869333 m!4425499))

(declare-fun m!4425501 () Bool)

(assert (=> b!3869327 m!4425501))

(assert (=> b!3869334 m!4425459))

(assert (=> b!3869334 m!4425461))

(declare-fun m!4425503 () Bool)

(assert (=> b!3869334 m!4425503))

(declare-fun m!4425505 () Bool)

(assert (=> b!3869334 m!4425505))

(assert (=> b!3869335 m!4425395))

(assert (=> b!3869335 m!4425395))

(declare-fun m!4425507 () Bool)

(assert (=> b!3869335 m!4425507))

(declare-fun m!4425509 () Bool)

(assert (=> b!3869335 m!4425509))

(declare-fun m!4425511 () Bool)

(assert (=> b!3869335 m!4425511))

(declare-fun m!4425513 () Bool)

(assert (=> b!3869355 m!4425513))

(declare-fun m!4425515 () Bool)

(assert (=> b!3869355 m!4425515))

(declare-fun m!4425517 () Bool)

(assert (=> b!3869355 m!4425517))

(declare-fun m!4425519 () Bool)

(assert (=> b!3869355 m!4425519))

(declare-fun m!4425521 () Bool)

(assert (=> b!3869355 m!4425521))

(declare-fun m!4425523 () Bool)

(assert (=> b!3869337 m!4425523))

(declare-fun m!4425525 () Bool)

(assert (=> b!3869336 m!4425525))

(declare-fun m!4425527 () Bool)

(assert (=> b!3869340 m!4425527))

(check-sat (not b!3869326) b_and!289981 (not b!3869351) (not b!3869358) (not b!3869349) (not b!3869330) (not b!3869360) (not b!3869327) b_and!289979 (not b!3869335) (not b!3869353) (not b!3869339) (not b_next!105127) (not b!3869322) (not b_next!105117) (not b!3869359) (not b!3869350) (not b!3869348) (not b_next!105119) (not b!3869333) (not b_next!105123) (not b!3869352) (not b_next!105121) (not b!3869354) (not b!3869341) (not b!3869331) (not b!3869347) (not b!3869356) (not b!3869336) (not b!3869342) (not b!3869338) (not bm!282697) (not b!3869337) (not b!3869321) (not b!3869343) (not b!3869329) b_and!289971 (not b!3869355) (not b!3869324) (not b!3869334) (not b!3869362) b_and!289973 b_and!289977 (not b!3869340) (not b!3869361) (not b_next!105125) b_and!289975 tp_is_empty!19525)
(check-sat b_and!289981 (not b_next!105119) (not b_next!105123) (not b_next!105121) b_and!289971 b_and!289973 b_and!289977 b_and!289979 (not b_next!105125) b_and!289975 (not b_next!105117) (not b_next!105127))
