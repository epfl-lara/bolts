; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!360782 () Bool)

(assert start!360782)

(declare-fun b!3851126 () Bool)

(declare-fun b_free!103225 () Bool)

(declare-fun b_next!103929 () Bool)

(assert (=> b!3851126 (= b_free!103225 (not b_next!103929))))

(declare-fun tp!1167295 () Bool)

(declare-fun b_and!287631 () Bool)

(assert (=> b!3851126 (= tp!1167295 b_and!287631)))

(declare-fun b_free!103227 () Bool)

(declare-fun b_next!103931 () Bool)

(assert (=> b!3851126 (= b_free!103227 (not b_next!103931))))

(declare-fun tp!1167300 () Bool)

(declare-fun b_and!287633 () Bool)

(assert (=> b!3851126 (= tp!1167300 b_and!287633)))

(declare-fun b!3851116 () Bool)

(declare-fun b_free!103229 () Bool)

(declare-fun b_next!103933 () Bool)

(assert (=> b!3851116 (= b_free!103229 (not b_next!103933))))

(declare-fun tp!1167301 () Bool)

(declare-fun b_and!287635 () Bool)

(assert (=> b!3851116 (= tp!1167301 b_and!287635)))

(declare-fun b_free!103231 () Bool)

(declare-fun b_next!103935 () Bool)

(assert (=> b!3851116 (= b_free!103231 (not b_next!103935))))

(declare-fun tp!1167293 () Bool)

(declare-fun b_and!287637 () Bool)

(assert (=> b!3851116 (= tp!1167293 b_and!287637)))

(declare-fun b!3851113 () Bool)

(declare-fun b_free!103233 () Bool)

(declare-fun b_next!103937 () Bool)

(assert (=> b!3851113 (= b_free!103233 (not b_next!103937))))

(declare-fun tp!1167296 () Bool)

(declare-fun b_and!287639 () Bool)

(assert (=> b!3851113 (= tp!1167296 b_and!287639)))

(declare-fun b_free!103235 () Bool)

(declare-fun b_next!103939 () Bool)

(assert (=> b!3851113 (= b_free!103235 (not b_next!103939))))

(declare-fun tp!1167307 () Bool)

(declare-fun b_and!287641 () Bool)

(assert (=> b!3851113 (= tp!1167307 b_and!287641)))

(declare-fun b!3851097 () Bool)

(declare-fun res!1559014 () Bool)

(declare-fun e!2380356 () Bool)

(assert (=> b!3851097 (=> (not res!1559014) (not e!2380356))))

(declare-datatypes ((LexerInterface!5896 0))(
  ( (LexerInterfaceExt!5893 (__x!25291 Int)) (Lexer!5894) )
))
(declare-fun thiss!20629 () LexerInterface!5896)

(declare-datatypes ((C!22610 0))(
  ( (C!22611 (val!13399 Int)) )
))
(declare-datatypes ((List!40928 0))(
  ( (Nil!40804) (Cons!40804 (h!46224 C!22610) (t!311879 List!40928)) )
))
(declare-datatypes ((IArray!25041 0))(
  ( (IArray!25042 (innerList!12578 List!40928)) )
))
(declare-datatypes ((Conc!12518 0))(
  ( (Node!12518 (left!31470 Conc!12518) (right!31800 Conc!12518) (csize!25266 Int) (cheight!12729 Int)) (Leaf!19379 (xs!15824 IArray!25041) (csize!25267 Int)) (Empty!12518) )
))
(declare-datatypes ((BalanceConc!24630 0))(
  ( (BalanceConc!24631 (c!670729 Conc!12518)) )
))
(declare-datatypes ((List!40929 0))(
  ( (Nil!40805) (Cons!40805 (h!46225 (_ BitVec 16)) (t!311880 List!40929)) )
))
(declare-datatypes ((TokenValue!6537 0))(
  ( (FloatLiteralValue!13074 (text!46204 List!40929)) (TokenValueExt!6536 (__x!25292 Int)) (Broken!32685 (value!200359 List!40929)) (Object!6660) (End!6537) (Def!6537) (Underscore!6537) (Match!6537) (Else!6537) (Error!6537) (Case!6537) (If!6537) (Extends!6537) (Abstract!6537) (Class!6537) (Val!6537) (DelimiterValue!13074 (del!6597 List!40929)) (KeywordValue!6543 (value!200360 List!40929)) (CommentValue!13074 (value!200361 List!40929)) (WhitespaceValue!13074 (value!200362 List!40929)) (IndentationValue!6537 (value!200363 List!40929)) (String!46404) (Int32!6537) (Broken!32686 (value!200364 List!40929)) (Boolean!6538) (Unit!58478) (OperatorValue!6540 (op!6597 List!40929)) (IdentifierValue!13074 (value!200365 List!40929)) (IdentifierValue!13075 (value!200366 List!40929)) (WhitespaceValue!13075 (value!200367 List!40929)) (True!13074) (False!13074) (Broken!32687 (value!200368 List!40929)) (Broken!32688 (value!200369 List!40929)) (True!13075) (RightBrace!6537) (RightBracket!6537) (Colon!6537) (Null!6537) (Comma!6537) (LeftBracket!6537) (False!13075) (LeftBrace!6537) (ImaginaryLiteralValue!6537 (text!46205 List!40929)) (StringLiteralValue!19611 (value!200370 List!40929)) (EOFValue!6537 (value!200371 List!40929)) (IdentValue!6537 (value!200372 List!40929)) (DelimiterValue!13075 (value!200373 List!40929)) (DedentValue!6537 (value!200374 List!40929)) (NewLineValue!6537 (value!200375 List!40929)) (IntegerValue!19611 (value!200376 (_ BitVec 32)) (text!46206 List!40929)) (IntegerValue!19612 (value!200377 Int) (text!46207 List!40929)) (Times!6537) (Or!6537) (Equal!6537) (Minus!6537) (Broken!32689 (value!200378 List!40929)) (And!6537) (Div!6537) (LessEqual!6537) (Mod!6537) (Concat!17749) (Not!6537) (Plus!6537) (SpaceValue!6537 (value!200379 List!40929)) (IntegerValue!19613 (value!200380 Int) (text!46208 List!40929)) (StringLiteralValue!19612 (text!46209 List!40929)) (FloatLiteralValue!13075 (text!46210 List!40929)) (BytesLiteralValue!6537 (value!200381 List!40929)) (CommentValue!13075 (value!200382 List!40929)) (StringLiteralValue!19613 (value!200383 List!40929)) (ErrorTokenValue!6537 (msg!6598 List!40929)) )
))
(declare-datatypes ((Regex!11212 0))(
  ( (ElementMatch!11212 (c!670730 C!22610)) (Concat!17750 (regOne!22936 Regex!11212) (regTwo!22936 Regex!11212)) (EmptyExpr!11212) (Star!11212 (reg!11541 Regex!11212)) (EmptyLang!11212) (Union!11212 (regOne!22937 Regex!11212) (regTwo!22937 Regex!11212)) )
))
(declare-datatypes ((String!46405 0))(
  ( (String!46406 (value!200384 String)) )
))
(declare-datatypes ((TokenValueInjection!12502 0))(
  ( (TokenValueInjection!12503 (toValue!8727 Int) (toChars!8586 Int)) )
))
(declare-datatypes ((Rule!12414 0))(
  ( (Rule!12415 (regex!6307 Regex!11212) (tag!7167 String!46405) (isSeparator!6307 Bool) (transformation!6307 TokenValueInjection!12502)) )
))
(declare-datatypes ((List!40930 0))(
  ( (Nil!40806) (Cons!40806 (h!46226 Rule!12414) (t!311881 List!40930)) )
))
(declare-fun rules!2768 () List!40930)

(declare-fun rulesInvariant!5239 (LexerInterface!5896 List!40930) Bool)

(assert (=> b!3851097 (= res!1559014 (rulesInvariant!5239 thiss!20629 rules!2768))))

(declare-fun b!3851098 () Bool)

(declare-fun e!2380357 () Bool)

(declare-fun e!2380353 () Bool)

(assert (=> b!3851098 (= e!2380357 e!2380353)))

(declare-fun res!1559011 () Bool)

(assert (=> b!3851098 (=> res!1559011 e!2380353)))

(declare-fun lt!1337534 () Int)

(declare-fun lt!1337540 () Int)

(declare-fun lt!1337533 () Int)

(declare-fun lt!1337524 () Int)

(assert (=> b!3851098 (= res!1559011 (or (not (= (+ lt!1337534 lt!1337524) lt!1337533)) (<= lt!1337540 lt!1337534)))))

(declare-fun prefix!426 () List!40928)

(declare-fun size!30695 (List!40928) Int)

(assert (=> b!3851098 (= lt!1337534 (size!30695 prefix!426))))

(declare-fun b!3851099 () Bool)

(declare-fun res!1559018 () Bool)

(declare-fun e!2380335 () Bool)

(assert (=> b!3851099 (=> res!1559018 e!2380335)))

(declare-datatypes ((Token!11752 0))(
  ( (Token!11753 (value!200385 TokenValue!6537) (rule!9161 Rule!12414) (size!30696 Int) (originalCharacters!6907 List!40928)) )
))
(declare-datatypes ((tuple2!39994 0))(
  ( (tuple2!39995 (_1!23131 Token!11752) (_2!23131 List!40928)) )
))
(declare-datatypes ((Option!8725 0))(
  ( (None!8724) (Some!8724 (v!39018 tuple2!39994)) )
))
(declare-fun lt!1337525 () Option!8725)

(declare-datatypes ((List!40931 0))(
  ( (Nil!40807) (Cons!40807 (h!46227 Token!11752) (t!311882 List!40931)) )
))
(declare-fun prefixTokens!80 () List!40931)

(declare-fun get!13501 (Option!8725) tuple2!39994)

(declare-fun head!8097 (List!40931) Token!11752)

(assert (=> b!3851099 (= res!1559018 (not (= (_1!23131 (get!13501 lt!1337525)) (head!8097 prefixTokens!80))))))

(declare-fun b!3851100 () Bool)

(declare-fun res!1559016 () Bool)

(declare-fun e!2380350 () Bool)

(assert (=> b!3851100 (=> res!1559016 e!2380350)))

(declare-datatypes ((tuple2!39996 0))(
  ( (tuple2!39997 (_1!23132 List!40931) (_2!23132 List!40928)) )
))
(declare-fun lt!1337532 () tuple2!39996)

(declare-fun suffix!1176 () List!40928)

(assert (=> b!3851100 (= res!1559016 (or (not (= lt!1337532 (tuple2!39997 (_1!23132 lt!1337532) (_2!23132 lt!1337532)))) (= (_2!23131 (v!39018 lt!1337525)) suffix!1176)))))

(declare-fun b!3851101 () Bool)

(declare-fun e!2380336 () Bool)

(declare-fun e!2380339 () Bool)

(assert (=> b!3851101 (= e!2380336 e!2380339)))

(declare-fun res!1559010 () Bool)

(assert (=> b!3851101 (=> (not res!1559010) (not e!2380339))))

(assert (=> b!3851101 (= res!1559010 (is-Some!8724 lt!1337525))))

(declare-fun lt!1337529 () List!40928)

(declare-fun maxPrefix!3200 (LexerInterface!5896 List!40930 List!40928) Option!8725)

(assert (=> b!3851101 (= lt!1337525 (maxPrefix!3200 thiss!20629 rules!2768 lt!1337529))))

(declare-fun tp!1167302 () Bool)

(declare-fun e!2380355 () Bool)

(declare-fun suffixTokens!72 () List!40931)

(declare-fun b!3851102 () Bool)

(declare-fun e!2380344 () Bool)

(declare-fun inv!21 (TokenValue!6537) Bool)

(assert (=> b!3851102 (= e!2380344 (and (inv!21 (value!200385 (h!46227 suffixTokens!72))) e!2380355 tp!1167302))))

(declare-fun b!3851103 () Bool)

(declare-fun e!2380352 () Bool)

(declare-fun e!2380361 () Bool)

(declare-fun tp!1167305 () Bool)

(assert (=> b!3851103 (= e!2380352 (and e!2380361 tp!1167305))))

(declare-fun b!3851104 () Bool)

(declare-fun res!1559013 () Bool)

(assert (=> b!3851104 (=> (not res!1559013) (not e!2380356))))

(declare-fun isEmpty!24149 (List!40930) Bool)

(assert (=> b!3851104 (= res!1559013 (not (isEmpty!24149 rules!2768)))))

(declare-fun b!3851105 () Bool)

(declare-fun e!2380348 () Bool)

(assert (=> b!3851105 (= e!2380350 e!2380348)))

(declare-fun res!1559007 () Bool)

(assert (=> b!3851105 (=> res!1559007 e!2380348)))

(declare-fun lt!1337535 () Int)

(assert (=> b!3851105 (= res!1559007 (>= lt!1337535 lt!1337524))))

(assert (=> b!3851105 (= lt!1337524 (size!30695 suffix!1176))))

(assert (=> b!3851105 (= lt!1337535 (size!30695 (_2!23131 (v!39018 lt!1337525))))))

(declare-fun b!3851106 () Bool)

(declare-fun e!2380337 () Bool)

(assert (=> b!3851106 (= e!2380337 (= (size!30696 (_1!23131 (v!39018 lt!1337525))) (size!30695 (originalCharacters!6907 (_1!23131 (v!39018 lt!1337525))))))))

(declare-fun b!3851107 () Bool)

(declare-fun res!1559009 () Bool)

(assert (=> b!3851107 (=> (not res!1559009) (not e!2380336))))

(declare-fun suffixResult!91 () List!40928)

(declare-fun lexList!1664 (LexerInterface!5896 List!40930 List!40928) tuple2!39996)

(assert (=> b!3851107 (= res!1559009 (= (lexList!1664 thiss!20629 rules!2768 suffix!1176) (tuple2!39997 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3851108 () Bool)

(declare-fun rulesValidInductive!2241 (LexerInterface!5896 List!40930) Bool)

(assert (=> b!3851108 (= e!2380335 (rulesValidInductive!2241 thiss!20629 rules!2768))))

(declare-fun res!1559006 () Bool)

(assert (=> start!360782 (=> (not res!1559006) (not e!2380356))))

(assert (=> start!360782 (= res!1559006 (is-Lexer!5894 thiss!20629))))

(assert (=> start!360782 e!2380356))

(declare-fun e!2380359 () Bool)

(assert (=> start!360782 e!2380359))

(assert (=> start!360782 true))

(declare-fun e!2380338 () Bool)

(assert (=> start!360782 e!2380338))

(assert (=> start!360782 e!2380352))

(declare-fun e!2380351 () Bool)

(assert (=> start!360782 e!2380351))

(declare-fun e!2380358 () Bool)

(assert (=> start!360782 e!2380358))

(declare-fun e!2380340 () Bool)

(assert (=> start!360782 e!2380340))

(declare-fun b!3851109 () Bool)

(declare-fun tp_is_empty!19395 () Bool)

(declare-fun tp!1167298 () Bool)

(assert (=> b!3851109 (= e!2380340 (and tp_is_empty!19395 tp!1167298))))

(declare-fun b!3851110 () Bool)

(declare-fun res!1559005 () Bool)

(assert (=> b!3851110 (=> (not res!1559005) (not e!2380356))))

(declare-fun isEmpty!24150 (List!40928) Bool)

(assert (=> b!3851110 (= res!1559005 (not (isEmpty!24150 prefix!426)))))

(declare-fun b!3851111 () Bool)

(declare-fun tp!1167297 () Bool)

(declare-fun e!2380342 () Bool)

(declare-fun e!2380346 () Bool)

(assert (=> b!3851111 (= e!2380342 (and (inv!21 (value!200385 (h!46227 prefixTokens!80))) e!2380346 tp!1167297))))

(declare-fun b!3851112 () Bool)

(declare-fun res!1559012 () Bool)

(assert (=> b!3851112 (=> res!1559012 e!2380350)))

(declare-fun lt!1337531 () tuple2!39996)

(declare-fun ++!10371 (List!40931 List!40931) List!40931)

(assert (=> b!3851112 (= res!1559012 (not (= lt!1337531 (tuple2!39997 (++!10371 (Cons!40807 (_1!23131 (v!39018 lt!1337525)) Nil!40807) (_1!23132 lt!1337532)) (_2!23132 lt!1337532)))))))

(declare-fun e!2380343 () Bool)

(assert (=> b!3851113 (= e!2380343 (and tp!1167296 tp!1167307))))

(declare-fun b!3851114 () Bool)

(declare-fun tp!1167299 () Bool)

(assert (=> b!3851114 (= e!2380338 (and tp_is_empty!19395 tp!1167299))))

(declare-fun b!3851115 () Bool)

(declare-fun res!1559015 () Bool)

(assert (=> b!3851115 (=> (not res!1559015) (not e!2380356))))

(declare-fun isEmpty!24151 (List!40931) Bool)

(assert (=> b!3851115 (= res!1559015 (not (isEmpty!24151 prefixTokens!80)))))

(declare-fun e!2380349 () Bool)

(assert (=> b!3851116 (= e!2380349 (and tp!1167301 tp!1167293))))

(declare-fun b!3851117 () Bool)

(declare-fun e!2380362 () Bool)

(declare-fun tp!1167292 () Bool)

(declare-fun inv!54954 (String!46405) Bool)

(declare-fun inv!54957 (TokenValueInjection!12502) Bool)

(assert (=> b!3851117 (= e!2380346 (and tp!1167292 (inv!54954 (tag!7167 (rule!9161 (h!46227 prefixTokens!80)))) (inv!54957 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) e!2380362))))

(declare-fun b!3851118 () Bool)

(assert (=> b!3851118 (= e!2380353 e!2380335)))

(declare-fun res!1559008 () Bool)

(assert (=> b!3851118 (=> res!1559008 e!2380335)))

(declare-fun lt!1337541 () List!40928)

(declare-fun matchR!5359 (Regex!11212 List!40928) Bool)

(assert (=> b!3851118 (= res!1559008 (not (matchR!5359 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) lt!1337541)))))

(declare-fun lt!1337526 () TokenValue!6537)

(declare-fun maxPrefixOneRule!2282 (LexerInterface!5896 Rule!12414 List!40928) Option!8725)

(assert (=> b!3851118 (= (maxPrefixOneRule!2282 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))) lt!1337529) (Some!8724 (tuple2!39995 (Token!11753 lt!1337526 (rule!9161 (_1!23131 (v!39018 lt!1337525))) lt!1337540 lt!1337541) (_2!23131 (v!39018 lt!1337525)))))))

(declare-datatypes ((Unit!58479 0))(
  ( (Unit!58480) )
))
(declare-fun lt!1337527 () Unit!58479)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1180 (LexerInterface!5896 List!40930 List!40928 List!40928 List!40928 Rule!12414) Unit!58479)

(assert (=> b!3851118 (= lt!1337527 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1180 thiss!20629 rules!2768 lt!1337541 lt!1337529 (_2!23131 (v!39018 lt!1337525)) (rule!9161 (_1!23131 (v!39018 lt!1337525)))))))

(declare-fun b!3851119 () Bool)

(assert (=> b!3851119 (= e!2380348 e!2380357)))

(declare-fun res!1559017 () Bool)

(assert (=> b!3851119 (=> res!1559017 e!2380357)))

(assert (=> b!3851119 (= res!1559017 (not (= (+ lt!1337540 lt!1337535) lt!1337533)))))

(assert (=> b!3851119 (= lt!1337533 (size!30695 lt!1337529))))

(declare-fun tp!1167304 () Bool)

(declare-fun b!3851120 () Bool)

(assert (=> b!3851120 (= e!2380361 (and tp!1167304 (inv!54954 (tag!7167 (h!46226 rules!2768))) (inv!54957 (transformation!6307 (h!46226 rules!2768))) e!2380349))))

(declare-fun b!3851121 () Bool)

(declare-fun tp!1167291 () Bool)

(assert (=> b!3851121 (= e!2380359 (and tp_is_empty!19395 tp!1167291))))

(declare-fun b!3851122 () Bool)

(assert (=> b!3851122 (= e!2380356 e!2380336)))

(declare-fun res!1559003 () Bool)

(assert (=> b!3851122 (=> (not res!1559003) (not e!2380336))))

(declare-fun lt!1337542 () List!40931)

(assert (=> b!3851122 (= res!1559003 (= lt!1337531 (tuple2!39997 lt!1337542 suffixResult!91)))))

(assert (=> b!3851122 (= lt!1337531 (lexList!1664 thiss!20629 rules!2768 lt!1337529))))

(assert (=> b!3851122 (= lt!1337542 (++!10371 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10372 (List!40928 List!40928) List!40928)

(assert (=> b!3851122 (= lt!1337529 (++!10372 prefix!426 suffix!1176))))

(declare-fun b!3851123 () Bool)

(declare-fun tp!1167303 () Bool)

(declare-fun inv!54958 (Token!11752) Bool)

(assert (=> b!3851123 (= e!2380358 (and (inv!54958 (h!46227 suffixTokens!72)) e!2380344 tp!1167303))))

(declare-fun b!3851124 () Bool)

(assert (=> b!3851124 (= e!2380339 (not e!2380350))))

(declare-fun res!1559004 () Bool)

(assert (=> b!3851124 (=> res!1559004 e!2380350)))

(declare-fun lt!1337539 () List!40928)

(assert (=> b!3851124 (= res!1559004 (not (= lt!1337539 lt!1337529)))))

(assert (=> b!3851124 (= lt!1337532 (lexList!1664 thiss!20629 rules!2768 (_2!23131 (v!39018 lt!1337525))))))

(declare-fun lt!1337537 () List!40928)

(assert (=> b!3851124 (and (= (size!30696 (_1!23131 (v!39018 lt!1337525))) lt!1337540) (= (originalCharacters!6907 (_1!23131 (v!39018 lt!1337525))) lt!1337541) (= (v!39018 lt!1337525) (tuple2!39995 (Token!11753 lt!1337526 (rule!9161 (_1!23131 (v!39018 lt!1337525))) lt!1337540 lt!1337541) lt!1337537)))))

(assert (=> b!3851124 (= lt!1337540 (size!30695 lt!1337541))))

(assert (=> b!3851124 e!2380337))

(declare-fun res!1559019 () Bool)

(assert (=> b!3851124 (=> (not res!1559019) (not e!2380337))))

(assert (=> b!3851124 (= res!1559019 (= (value!200385 (_1!23131 (v!39018 lt!1337525))) lt!1337526))))

(declare-fun apply!9550 (TokenValueInjection!12502 BalanceConc!24630) TokenValue!6537)

(declare-fun seqFromList!4578 (List!40928) BalanceConc!24630)

(assert (=> b!3851124 (= lt!1337526 (apply!9550 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (seqFromList!4578 lt!1337541)))))

(assert (=> b!3851124 (= (_2!23131 (v!39018 lt!1337525)) lt!1337537)))

(declare-fun lt!1337528 () Unit!58479)

(declare-fun lemmaSamePrefixThenSameSuffix!1627 (List!40928 List!40928 List!40928 List!40928 List!40928) Unit!58479)

(assert (=> b!3851124 (= lt!1337528 (lemmaSamePrefixThenSameSuffix!1627 lt!1337541 (_2!23131 (v!39018 lt!1337525)) lt!1337541 lt!1337537 lt!1337529))))

(declare-fun getSuffix!1861 (List!40928 List!40928) List!40928)

(assert (=> b!3851124 (= lt!1337537 (getSuffix!1861 lt!1337529 lt!1337541))))

(declare-fun isPrefix!3406 (List!40928 List!40928) Bool)

(assert (=> b!3851124 (isPrefix!3406 lt!1337541 lt!1337539)))

(assert (=> b!3851124 (= lt!1337539 (++!10372 lt!1337541 (_2!23131 (v!39018 lt!1337525))))))

(declare-fun lt!1337530 () Unit!58479)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2269 (List!40928 List!40928) Unit!58479)

(assert (=> b!3851124 (= lt!1337530 (lemmaConcatTwoListThenFirstIsPrefix!2269 lt!1337541 (_2!23131 (v!39018 lt!1337525))))))

(declare-fun list!15189 (BalanceConc!24630) List!40928)

(declare-fun charsOf!4135 (Token!11752) BalanceConc!24630)

(assert (=> b!3851124 (= lt!1337541 (list!15189 (charsOf!4135 (_1!23131 (v!39018 lt!1337525)))))))

(declare-fun ruleValid!2259 (LexerInterface!5896 Rule!12414) Bool)

(assert (=> b!3851124 (ruleValid!2259 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))

(declare-fun lt!1337538 () Unit!58479)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1339 (LexerInterface!5896 Rule!12414 List!40930) Unit!58479)

(assert (=> b!3851124 (= lt!1337538 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1339 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))) rules!2768))))

(declare-fun lt!1337536 () Unit!58479)

(declare-fun lemmaCharactersSize!968 (Token!11752) Unit!58479)

(assert (=> b!3851124 (= lt!1337536 (lemmaCharactersSize!968 (_1!23131 (v!39018 lt!1337525))))))

(declare-fun tp!1167306 () Bool)

(declare-fun b!3851125 () Bool)

(assert (=> b!3851125 (= e!2380355 (and tp!1167306 (inv!54954 (tag!7167 (rule!9161 (h!46227 suffixTokens!72)))) (inv!54957 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) e!2380343))))

(assert (=> b!3851126 (= e!2380362 (and tp!1167295 tp!1167300))))

(declare-fun b!3851127 () Bool)

(declare-fun tp!1167294 () Bool)

(assert (=> b!3851127 (= e!2380351 (and (inv!54958 (h!46227 prefixTokens!80)) e!2380342 tp!1167294))))

(assert (= (and start!360782 res!1559006) b!3851104))

(assert (= (and b!3851104 res!1559013) b!3851097))

(assert (= (and b!3851097 res!1559014) b!3851115))

(assert (= (and b!3851115 res!1559015) b!3851110))

(assert (= (and b!3851110 res!1559005) b!3851122))

(assert (= (and b!3851122 res!1559003) b!3851107))

(assert (= (and b!3851107 res!1559009) b!3851101))

(assert (= (and b!3851101 res!1559010) b!3851124))

(assert (= (and b!3851124 res!1559019) b!3851106))

(assert (= (and b!3851124 (not res!1559004)) b!3851112))

(assert (= (and b!3851112 (not res!1559012)) b!3851100))

(assert (= (and b!3851100 (not res!1559016)) b!3851105))

(assert (= (and b!3851105 (not res!1559007)) b!3851119))

(assert (= (and b!3851119 (not res!1559017)) b!3851098))

(assert (= (and b!3851098 (not res!1559011)) b!3851118))

(assert (= (and b!3851118 (not res!1559008)) b!3851099))

(assert (= (and b!3851099 (not res!1559018)) b!3851108))

(assert (= (and start!360782 (is-Cons!40804 suffixResult!91)) b!3851121))

(assert (= (and start!360782 (is-Cons!40804 suffix!1176)) b!3851114))

(assert (= b!3851120 b!3851116))

(assert (= b!3851103 b!3851120))

(assert (= (and start!360782 (is-Cons!40806 rules!2768)) b!3851103))

(assert (= b!3851117 b!3851126))

(assert (= b!3851111 b!3851117))

(assert (= b!3851127 b!3851111))

(assert (= (and start!360782 (is-Cons!40807 prefixTokens!80)) b!3851127))

(assert (= b!3851125 b!3851113))

(assert (= b!3851102 b!3851125))

(assert (= b!3851123 b!3851102))

(assert (= (and start!360782 (is-Cons!40807 suffixTokens!72)) b!3851123))

(assert (= (and start!360782 (is-Cons!40804 prefix!426)) b!3851109))

(declare-fun m!4406085 () Bool)

(assert (=> b!3851102 m!4406085))

(declare-fun m!4406087 () Bool)

(assert (=> b!3851110 m!4406087))

(declare-fun m!4406089 () Bool)

(assert (=> b!3851106 m!4406089))

(declare-fun m!4406091 () Bool)

(assert (=> b!3851104 m!4406091))

(declare-fun m!4406093 () Bool)

(assert (=> b!3851101 m!4406093))

(declare-fun m!4406095 () Bool)

(assert (=> b!3851119 m!4406095))

(declare-fun m!4406097 () Bool)

(assert (=> b!3851097 m!4406097))

(declare-fun m!4406099 () Bool)

(assert (=> b!3851120 m!4406099))

(declare-fun m!4406101 () Bool)

(assert (=> b!3851120 m!4406101))

(declare-fun m!4406103 () Bool)

(assert (=> b!3851123 m!4406103))

(declare-fun m!4406105 () Bool)

(assert (=> b!3851112 m!4406105))

(declare-fun m!4406107 () Bool)

(assert (=> b!3851111 m!4406107))

(declare-fun m!4406109 () Bool)

(assert (=> b!3851107 m!4406109))

(declare-fun m!4406111 () Bool)

(assert (=> b!3851108 m!4406111))

(declare-fun m!4406113 () Bool)

(assert (=> b!3851098 m!4406113))

(declare-fun m!4406115 () Bool)

(assert (=> b!3851115 m!4406115))

(declare-fun m!4406117 () Bool)

(assert (=> b!3851118 m!4406117))

(declare-fun m!4406119 () Bool)

(assert (=> b!3851118 m!4406119))

(declare-fun m!4406121 () Bool)

(assert (=> b!3851118 m!4406121))

(declare-fun m!4406123 () Bool)

(assert (=> b!3851127 m!4406123))

(declare-fun m!4406125 () Bool)

(assert (=> b!3851099 m!4406125))

(declare-fun m!4406127 () Bool)

(assert (=> b!3851099 m!4406127))

(declare-fun m!4406129 () Bool)

(assert (=> b!3851122 m!4406129))

(declare-fun m!4406131 () Bool)

(assert (=> b!3851122 m!4406131))

(declare-fun m!4406133 () Bool)

(assert (=> b!3851122 m!4406133))

(declare-fun m!4406135 () Bool)

(assert (=> b!3851117 m!4406135))

(declare-fun m!4406137 () Bool)

(assert (=> b!3851117 m!4406137))

(declare-fun m!4406139 () Bool)

(assert (=> b!3851125 m!4406139))

(declare-fun m!4406141 () Bool)

(assert (=> b!3851125 m!4406141))

(declare-fun m!4406143 () Bool)

(assert (=> b!3851124 m!4406143))

(declare-fun m!4406145 () Bool)

(assert (=> b!3851124 m!4406145))

(declare-fun m!4406147 () Bool)

(assert (=> b!3851124 m!4406147))

(declare-fun m!4406149 () Bool)

(assert (=> b!3851124 m!4406149))

(declare-fun m!4406151 () Bool)

(assert (=> b!3851124 m!4406151))

(declare-fun m!4406153 () Bool)

(assert (=> b!3851124 m!4406153))

(declare-fun m!4406155 () Bool)

(assert (=> b!3851124 m!4406155))

(declare-fun m!4406157 () Bool)

(assert (=> b!3851124 m!4406157))

(assert (=> b!3851124 m!4406153))

(declare-fun m!4406159 () Bool)

(assert (=> b!3851124 m!4406159))

(declare-fun m!4406161 () Bool)

(assert (=> b!3851124 m!4406161))

(declare-fun m!4406163 () Bool)

(assert (=> b!3851124 m!4406163))

(declare-fun m!4406165 () Bool)

(assert (=> b!3851124 m!4406165))

(declare-fun m!4406167 () Bool)

(assert (=> b!3851124 m!4406167))

(assert (=> b!3851124 m!4406161))

(declare-fun m!4406169 () Bool)

(assert (=> b!3851124 m!4406169))

(declare-fun m!4406171 () Bool)

(assert (=> b!3851105 m!4406171))

(declare-fun m!4406173 () Bool)

(assert (=> b!3851105 m!4406173))

(push 1)

(assert (not b!3851107))

(assert (not b!3851117))

(assert (not b!3851101))

(assert (not b!3851124))

(assert (not b!3851111))

(assert b_and!287633)

(assert b_and!287639)

(assert (not b!3851110))

(assert tp_is_empty!19395)

(assert (not b!3851127))

(assert (not b_next!103933))

(assert (not b_next!103937))

(assert (not b!3851112))

(assert (not b_next!103931))

(assert (not b!3851109))

(assert (not b!3851098))

(assert (not b!3851118))

(assert (not b!3851119))

(assert (not b!3851114))

(assert (not b!3851122))

(assert (not b!3851108))

(assert (not b_next!103939))

(assert b_and!287631)

(assert (not b!3851121))

(assert (not b_next!103929))

(assert b_and!287637)

(assert (not b!3851105))

(assert (not b!3851120))

(assert b_and!287641)

(assert (not b!3851106))

(assert (not b!3851103))

(assert (not b!3851115))

(assert (not b!3851123))

(assert (not b!3851125))

(assert (not b!3851099))

(assert (not b!3851102))

(assert b_and!287635)

(assert (not b!3851104))

(assert (not b_next!103935))

(assert (not b!3851097))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!103931))

(assert (not b_next!103929))

(assert b_and!287637)

(assert b_and!287641)

(assert b_and!287633)

(assert b_and!287635)

(assert b_and!287639)

(assert (not b_next!103933))

(assert (not b_next!103937))

(assert (not b_next!103935))

(assert (not b_next!103939))

(assert b_and!287631)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1141777 () Bool)

(assert (=> d!1141777 true))

(declare-fun lt!1337649 () Bool)

(declare-fun lambda!126154 () Int)

(declare-fun forall!8288 (List!40930 Int) Bool)

(assert (=> d!1141777 (= lt!1337649 (forall!8288 rules!2768 lambda!126154))))

(declare-fun e!2380504 () Bool)

(assert (=> d!1141777 (= lt!1337649 e!2380504)))

(declare-fun res!1559124 () Bool)

(assert (=> d!1141777 (=> res!1559124 e!2380504)))

(assert (=> d!1141777 (= res!1559124 (not (is-Cons!40806 rules!2768)))))

(assert (=> d!1141777 (= (rulesValidInductive!2241 thiss!20629 rules!2768) lt!1337649)))

(declare-fun b!3851318 () Bool)

(declare-fun e!2380503 () Bool)

(assert (=> b!3851318 (= e!2380504 e!2380503)))

(declare-fun res!1559125 () Bool)

(assert (=> b!3851318 (=> (not res!1559125) (not e!2380503))))

(assert (=> b!3851318 (= res!1559125 (ruleValid!2259 thiss!20629 (h!46226 rules!2768)))))

(declare-fun b!3851319 () Bool)

(assert (=> b!3851319 (= e!2380503 (rulesValidInductive!2241 thiss!20629 (t!311881 rules!2768)))))

(assert (= (and d!1141777 (not res!1559124)) b!3851318))

(assert (= (and b!3851318 res!1559125) b!3851319))

(declare-fun m!4406349 () Bool)

(assert (=> d!1141777 m!4406349))

(declare-fun m!4406351 () Bool)

(assert (=> b!3851318 m!4406351))

(declare-fun m!4406353 () Bool)

(assert (=> b!3851319 m!4406353))

(assert (=> b!3851108 d!1141777))

(declare-fun d!1141827 () Bool)

(declare-fun lt!1337652 () Int)

(assert (=> d!1141827 (>= lt!1337652 0)))

(declare-fun e!2380507 () Int)

(assert (=> d!1141827 (= lt!1337652 e!2380507)))

(declare-fun c!670757 () Bool)

(assert (=> d!1141827 (= c!670757 (is-Nil!40804 lt!1337529))))

(assert (=> d!1141827 (= (size!30695 lt!1337529) lt!1337652)))

(declare-fun b!3851326 () Bool)

(assert (=> b!3851326 (= e!2380507 0)))

(declare-fun b!3851327 () Bool)

(assert (=> b!3851327 (= e!2380507 (+ 1 (size!30695 (t!311879 lt!1337529))))))

(assert (= (and d!1141827 c!670757) b!3851326))

(assert (= (and d!1141827 (not c!670757)) b!3851327))

(declare-fun m!4406355 () Bool)

(assert (=> b!3851327 m!4406355))

(assert (=> b!3851119 d!1141827))

(declare-fun b!3851375 () Bool)

(declare-fun res!1559149 () Bool)

(declare-fun e!2380533 () Bool)

(assert (=> b!3851375 (=> (not res!1559149) (not e!2380533))))

(declare-fun tail!5824 (List!40928) List!40928)

(assert (=> b!3851375 (= res!1559149 (isEmpty!24150 (tail!5824 lt!1337541)))))

(declare-fun b!3851376 () Bool)

(declare-fun e!2380531 () Bool)

(declare-fun derivativeStep!3401 (Regex!11212 C!22610) Regex!11212)

(declare-fun head!8099 (List!40928) C!22610)

(assert (=> b!3851376 (= e!2380531 (matchR!5359 (derivativeStep!3401 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (head!8099 lt!1337541)) (tail!5824 lt!1337541)))))

(declare-fun b!3851377 () Bool)

(declare-fun e!2380534 () Bool)

(declare-fun lt!1337660 () Bool)

(declare-fun call!282242 () Bool)

(assert (=> b!3851377 (= e!2380534 (= lt!1337660 call!282242))))

(declare-fun b!3851378 () Bool)

(declare-fun e!2380535 () Bool)

(declare-fun e!2380537 () Bool)

(assert (=> b!3851378 (= e!2380535 e!2380537)))

(declare-fun res!1559150 () Bool)

(assert (=> b!3851378 (=> res!1559150 e!2380537)))

(assert (=> b!3851378 (= res!1559150 call!282242)))

(declare-fun bm!282237 () Bool)

(assert (=> bm!282237 (= call!282242 (isEmpty!24150 lt!1337541))))

(declare-fun b!3851379 () Bool)

(declare-fun res!1559154 () Bool)

(declare-fun e!2380536 () Bool)

(assert (=> b!3851379 (=> res!1559154 e!2380536)))

(assert (=> b!3851379 (= res!1559154 e!2380533)))

(declare-fun res!1559158 () Bool)

(assert (=> b!3851379 (=> (not res!1559158) (not e!2380533))))

(assert (=> b!3851379 (= res!1559158 lt!1337660)))

(declare-fun b!3851380 () Bool)

(assert (=> b!3851380 (= e!2380536 e!2380535)))

(declare-fun res!1559155 () Bool)

(assert (=> b!3851380 (=> (not res!1559155) (not e!2380535))))

(assert (=> b!3851380 (= res!1559155 (not lt!1337660))))

(declare-fun b!3851381 () Bool)

(declare-fun res!1559156 () Bool)

(assert (=> b!3851381 (=> res!1559156 e!2380536)))

(assert (=> b!3851381 (= res!1559156 (not (is-ElementMatch!11212 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))))))

(declare-fun e!2380532 () Bool)

(assert (=> b!3851381 (= e!2380532 e!2380536)))

(declare-fun b!3851382 () Bool)

(assert (=> b!3851382 (= e!2380537 (not (= (head!8099 lt!1337541) (c!670730 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))))))

(declare-fun b!3851383 () Bool)

(assert (=> b!3851383 (= e!2380532 (not lt!1337660))))

(declare-fun b!3851384 () Bool)

(declare-fun nullable!3902 (Regex!11212) Bool)

(assert (=> b!3851384 (= e!2380531 (nullable!3902 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))))

(declare-fun b!3851385 () Bool)

(assert (=> b!3851385 (= e!2380534 e!2380532)))

(declare-fun c!670771 () Bool)

(assert (=> b!3851385 (= c!670771 (is-EmptyLang!11212 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))))

(declare-fun d!1141829 () Bool)

(assert (=> d!1141829 e!2380534))

(declare-fun c!670770 () Bool)

(assert (=> d!1141829 (= c!670770 (is-EmptyExpr!11212 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))))

(assert (=> d!1141829 (= lt!1337660 e!2380531)))

(declare-fun c!670769 () Bool)

(assert (=> d!1141829 (= c!670769 (isEmpty!24150 lt!1337541))))

(declare-fun validRegex!5101 (Regex!11212) Bool)

(assert (=> d!1141829 (validRegex!5101 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))))

(assert (=> d!1141829 (= (matchR!5359 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) lt!1337541) lt!1337660)))

(declare-fun b!3851386 () Bool)

(declare-fun res!1559157 () Bool)

(assert (=> b!3851386 (=> res!1559157 e!2380537)))

(assert (=> b!3851386 (= res!1559157 (not (isEmpty!24150 (tail!5824 lt!1337541))))))

(declare-fun b!3851387 () Bool)

(assert (=> b!3851387 (= e!2380533 (= (head!8099 lt!1337541) (c!670730 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))))))

(declare-fun b!3851388 () Bool)

(declare-fun res!1559151 () Bool)

(assert (=> b!3851388 (=> (not res!1559151) (not e!2380533))))

(assert (=> b!3851388 (= res!1559151 (not call!282242))))

(assert (= (and d!1141829 c!670769) b!3851384))

(assert (= (and d!1141829 (not c!670769)) b!3851376))

(assert (= (and d!1141829 c!670770) b!3851377))

(assert (= (and d!1141829 (not c!670770)) b!3851385))

(assert (= (and b!3851385 c!670771) b!3851383))

(assert (= (and b!3851385 (not c!670771)) b!3851381))

(assert (= (and b!3851381 (not res!1559156)) b!3851379))

(assert (= (and b!3851379 res!1559158) b!3851388))

(assert (= (and b!3851388 res!1559151) b!3851375))

(assert (= (and b!3851375 res!1559149) b!3851387))

(assert (= (and b!3851379 (not res!1559154)) b!3851380))

(assert (= (and b!3851380 res!1559155) b!3851378))

(assert (= (and b!3851378 (not res!1559150)) b!3851386))

(assert (= (and b!3851386 (not res!1559157)) b!3851382))

(assert (= (or b!3851377 b!3851378 b!3851388) bm!282237))

(declare-fun m!4406387 () Bool)

(assert (=> b!3851387 m!4406387))

(assert (=> b!3851382 m!4406387))

(declare-fun m!4406389 () Bool)

(assert (=> b!3851386 m!4406389))

(assert (=> b!3851386 m!4406389))

(declare-fun m!4406391 () Bool)

(assert (=> b!3851386 m!4406391))

(assert (=> b!3851375 m!4406389))

(assert (=> b!3851375 m!4406389))

(assert (=> b!3851375 m!4406391))

(declare-fun m!4406393 () Bool)

(assert (=> bm!282237 m!4406393))

(declare-fun m!4406395 () Bool)

(assert (=> b!3851384 m!4406395))

(assert (=> d!1141829 m!4406393))

(declare-fun m!4406397 () Bool)

(assert (=> d!1141829 m!4406397))

(assert (=> b!3851376 m!4406387))

(assert (=> b!3851376 m!4406387))

(declare-fun m!4406399 () Bool)

(assert (=> b!3851376 m!4406399))

(assert (=> b!3851376 m!4406389))

(assert (=> b!3851376 m!4406399))

(assert (=> b!3851376 m!4406389))

(declare-fun m!4406401 () Bool)

(assert (=> b!3851376 m!4406401))

(assert (=> b!3851118 d!1141829))

(declare-fun b!3851458 () Bool)

(declare-fun res!1559208 () Bool)

(declare-fun e!2380577 () Bool)

(assert (=> b!3851458 (=> (not res!1559208) (not e!2380577))))

(declare-fun lt!1337678 () Option!8725)

(assert (=> b!3851458 (= res!1559208 (= (value!200385 (_1!23131 (get!13501 lt!1337678))) (apply!9550 (transformation!6307 (rule!9161 (_1!23131 (get!13501 lt!1337678)))) (seqFromList!4578 (originalCharacters!6907 (_1!23131 (get!13501 lt!1337678)))))))))

(declare-fun b!3851459 () Bool)

(declare-fun e!2380576 () Bool)

(assert (=> b!3851459 (= e!2380576 e!2380577)))

(declare-fun res!1559207 () Bool)

(assert (=> b!3851459 (=> (not res!1559207) (not e!2380577))))

(assert (=> b!3851459 (= res!1559207 (matchR!5359 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (list!15189 (charsOf!4135 (_1!23131 (get!13501 lt!1337678))))))))

(declare-fun b!3851460 () Bool)

(declare-fun res!1559205 () Bool)

(assert (=> b!3851460 (=> (not res!1559205) (not e!2380577))))

(assert (=> b!3851460 (= res!1559205 (= (++!10372 (list!15189 (charsOf!4135 (_1!23131 (get!13501 lt!1337678)))) (_2!23131 (get!13501 lt!1337678))) lt!1337529))))

(declare-fun b!3851461 () Bool)

(assert (=> b!3851461 (= e!2380577 (= (size!30696 (_1!23131 (get!13501 lt!1337678))) (size!30695 (originalCharacters!6907 (_1!23131 (get!13501 lt!1337678))))))))

(declare-fun b!3851462 () Bool)

(declare-fun res!1559203 () Bool)

(assert (=> b!3851462 (=> (not res!1559203) (not e!2380577))))

(assert (=> b!3851462 (= res!1559203 (< (size!30695 (_2!23131 (get!13501 lt!1337678))) (size!30695 lt!1337529)))))

(declare-fun b!3851463 () Bool)

(declare-fun e!2380574 () Bool)

(declare-datatypes ((tuple2!40002 0))(
  ( (tuple2!40003 (_1!23135 List!40928) (_2!23135 List!40928)) )
))
(declare-fun findLongestMatchInner!1169 (Regex!11212 List!40928 Int List!40928 List!40928 Int) tuple2!40002)

(assert (=> b!3851463 (= e!2380574 (matchR!5359 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (_1!23135 (findLongestMatchInner!1169 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) Nil!40804 (size!30695 Nil!40804) lt!1337529 lt!1337529 (size!30695 lt!1337529)))))))

(declare-fun b!3851464 () Bool)

(declare-fun e!2380575 () Option!8725)

(assert (=> b!3851464 (= e!2380575 None!8724)))

(declare-fun d!1141835 () Bool)

(assert (=> d!1141835 e!2380576))

(declare-fun res!1559206 () Bool)

(assert (=> d!1141835 (=> res!1559206 e!2380576)))

(declare-fun isEmpty!24155 (Option!8725) Bool)

(assert (=> d!1141835 (= res!1559206 (isEmpty!24155 lt!1337678))))

(assert (=> d!1141835 (= lt!1337678 e!2380575)))

(declare-fun c!670785 () Bool)

(declare-fun lt!1337677 () tuple2!40002)

(assert (=> d!1141835 (= c!670785 (isEmpty!24150 (_1!23135 lt!1337677)))))

(declare-fun findLongestMatch!1082 (Regex!11212 List!40928) tuple2!40002)

(assert (=> d!1141835 (= lt!1337677 (findLongestMatch!1082 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) lt!1337529))))

(assert (=> d!1141835 (ruleValid!2259 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))

(assert (=> d!1141835 (= (maxPrefixOneRule!2282 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))) lt!1337529) lt!1337678)))

(declare-fun b!3851465 () Bool)

(declare-fun res!1559202 () Bool)

(assert (=> b!3851465 (=> (not res!1559202) (not e!2380577))))

(assert (=> b!3851465 (= res!1559202 (= (rule!9161 (_1!23131 (get!13501 lt!1337678))) (rule!9161 (_1!23131 (v!39018 lt!1337525)))))))

(declare-fun b!3851466 () Bool)

(declare-fun size!30699 (BalanceConc!24630) Int)

(assert (=> b!3851466 (= e!2380575 (Some!8724 (tuple2!39995 (Token!11753 (apply!9550 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (seqFromList!4578 (_1!23135 lt!1337677))) (rule!9161 (_1!23131 (v!39018 lt!1337525))) (size!30699 (seqFromList!4578 (_1!23135 lt!1337677))) (_1!23135 lt!1337677)) (_2!23135 lt!1337677))))))

(declare-fun lt!1337674 () Unit!58479)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1142 (Regex!11212 List!40928) Unit!58479)

(assert (=> b!3851466 (= lt!1337674 (longestMatchIsAcceptedByMatchOrIsEmpty!1142 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) lt!1337529))))

(declare-fun res!1559204 () Bool)

(assert (=> b!3851466 (= res!1559204 (isEmpty!24150 (_1!23135 (findLongestMatchInner!1169 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) Nil!40804 (size!30695 Nil!40804) lt!1337529 lt!1337529 (size!30695 lt!1337529)))))))

(assert (=> b!3851466 (=> res!1559204 e!2380574)))

(assert (=> b!3851466 e!2380574))

(declare-fun lt!1337675 () Unit!58479)

(assert (=> b!3851466 (= lt!1337675 lt!1337674)))

(declare-fun lt!1337676 () Unit!58479)

(declare-fun lemmaSemiInverse!1675 (TokenValueInjection!12502 BalanceConc!24630) Unit!58479)

(assert (=> b!3851466 (= lt!1337676 (lemmaSemiInverse!1675 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (seqFromList!4578 (_1!23135 lt!1337677))))))

(assert (= (and d!1141835 c!670785) b!3851464))

(assert (= (and d!1141835 (not c!670785)) b!3851466))

(assert (= (and b!3851466 (not res!1559204)) b!3851463))

(assert (= (and d!1141835 (not res!1559206)) b!3851459))

(assert (= (and b!3851459 res!1559207) b!3851460))

(assert (= (and b!3851460 res!1559205) b!3851462))

(assert (= (and b!3851462 res!1559203) b!3851465))

(assert (= (and b!3851465 res!1559202) b!3851458))

(assert (= (and b!3851458 res!1559208) b!3851461))

(declare-fun m!4406425 () Bool)

(assert (=> b!3851461 m!4406425))

(declare-fun m!4406427 () Bool)

(assert (=> b!3851461 m!4406427))

(assert (=> b!3851459 m!4406425))

(declare-fun m!4406429 () Bool)

(assert (=> b!3851459 m!4406429))

(assert (=> b!3851459 m!4406429))

(declare-fun m!4406431 () Bool)

(assert (=> b!3851459 m!4406431))

(assert (=> b!3851459 m!4406431))

(declare-fun m!4406433 () Bool)

(assert (=> b!3851459 m!4406433))

(assert (=> b!3851458 m!4406425))

(declare-fun m!4406435 () Bool)

(assert (=> b!3851458 m!4406435))

(assert (=> b!3851458 m!4406435))

(declare-fun m!4406437 () Bool)

(assert (=> b!3851458 m!4406437))

(assert (=> b!3851462 m!4406425))

(declare-fun m!4406439 () Bool)

(assert (=> b!3851462 m!4406439))

(assert (=> b!3851462 m!4406095))

(declare-fun m!4406441 () Bool)

(assert (=> b!3851466 m!4406441))

(declare-fun m!4406443 () Bool)

(assert (=> b!3851466 m!4406443))

(declare-fun m!4406445 () Bool)

(assert (=> b!3851466 m!4406445))

(assert (=> b!3851466 m!4406095))

(declare-fun m!4406447 () Bool)

(assert (=> b!3851466 m!4406447))

(assert (=> b!3851466 m!4406445))

(assert (=> b!3851466 m!4406441))

(declare-fun m!4406449 () Bool)

(assert (=> b!3851466 m!4406449))

(assert (=> b!3851466 m!4406095))

(assert (=> b!3851466 m!4406441))

(declare-fun m!4406451 () Bool)

(assert (=> b!3851466 m!4406451))

(declare-fun m!4406453 () Bool)

(assert (=> b!3851466 m!4406453))

(declare-fun m!4406455 () Bool)

(assert (=> b!3851466 m!4406455))

(assert (=> b!3851466 m!4406441))

(assert (=> b!3851465 m!4406425))

(assert (=> b!3851460 m!4406425))

(assert (=> b!3851460 m!4406429))

(assert (=> b!3851460 m!4406429))

(assert (=> b!3851460 m!4406431))

(assert (=> b!3851460 m!4406431))

(declare-fun m!4406457 () Bool)

(assert (=> b!3851460 m!4406457))

(declare-fun m!4406459 () Bool)

(assert (=> d!1141835 m!4406459))

(declare-fun m!4406461 () Bool)

(assert (=> d!1141835 m!4406461))

(declare-fun m!4406463 () Bool)

(assert (=> d!1141835 m!4406463))

(assert (=> d!1141835 m!4406167))

(assert (=> b!3851463 m!4406445))

(assert (=> b!3851463 m!4406095))

(assert (=> b!3851463 m!4406445))

(assert (=> b!3851463 m!4406095))

(assert (=> b!3851463 m!4406447))

(declare-fun m!4406465 () Bool)

(assert (=> b!3851463 m!4406465))

(assert (=> b!3851118 d!1141835))

(declare-fun d!1141849 () Bool)

(assert (=> d!1141849 (= (maxPrefixOneRule!2282 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))) lt!1337529) (Some!8724 (tuple2!39995 (Token!11753 (apply!9550 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (seqFromList!4578 lt!1337541)) (rule!9161 (_1!23131 (v!39018 lt!1337525))) (size!30695 lt!1337541) lt!1337541) (_2!23131 (v!39018 lt!1337525)))))))

(declare-fun lt!1337696 () Unit!58479)

(declare-fun choose!22665 (LexerInterface!5896 List!40930 List!40928 List!40928 List!40928 Rule!12414) Unit!58479)

(assert (=> d!1141849 (= lt!1337696 (choose!22665 thiss!20629 rules!2768 lt!1337541 lt!1337529 (_2!23131 (v!39018 lt!1337525)) (rule!9161 (_1!23131 (v!39018 lt!1337525)))))))

(assert (=> d!1141849 (not (isEmpty!24149 rules!2768))))

(assert (=> d!1141849 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1180 thiss!20629 rules!2768 lt!1337541 lt!1337529 (_2!23131 (v!39018 lt!1337525)) (rule!9161 (_1!23131 (v!39018 lt!1337525)))) lt!1337696)))

(declare-fun bs!582879 () Bool)

(assert (= bs!582879 d!1141849))

(assert (=> bs!582879 m!4406119))

(assert (=> bs!582879 m!4406161))

(assert (=> bs!582879 m!4406163))

(assert (=> bs!582879 m!4406145))

(declare-fun m!4406467 () Bool)

(assert (=> bs!582879 m!4406467))

(assert (=> bs!582879 m!4406091))

(assert (=> bs!582879 m!4406161))

(assert (=> b!3851118 d!1141849))

(declare-fun d!1141851 () Bool)

(declare-fun res!1559232 () Bool)

(declare-fun e!2380592 () Bool)

(assert (=> d!1141851 (=> (not res!1559232) (not e!2380592))))

(declare-fun rulesValid!2437 (LexerInterface!5896 List!40930) Bool)

(assert (=> d!1141851 (= res!1559232 (rulesValid!2437 thiss!20629 rules!2768))))

(assert (=> d!1141851 (= (rulesInvariant!5239 thiss!20629 rules!2768) e!2380592)))

(declare-fun b!3851496 () Bool)

(declare-datatypes ((List!40936 0))(
  ( (Nil!40812) (Cons!40812 (h!46232 String!46405) (t!311959 List!40936)) )
))
(declare-fun noDuplicateTag!2438 (LexerInterface!5896 List!40930 List!40936) Bool)

(assert (=> b!3851496 (= e!2380592 (noDuplicateTag!2438 thiss!20629 rules!2768 Nil!40812))))

(assert (= (and d!1141851 res!1559232) b!3851496))

(declare-fun m!4406511 () Bool)

(assert (=> d!1141851 m!4406511))

(declare-fun m!4406513 () Bool)

(assert (=> b!3851496 m!4406513))

(assert (=> b!3851097 d!1141851))

(declare-fun d!1141855 () Bool)

(declare-fun e!2380609 () Bool)

(assert (=> d!1141855 e!2380609))

(declare-fun c!670796 () Bool)

(declare-fun lt!1337712 () tuple2!39996)

(declare-fun size!30700 (List!40931) Int)

(assert (=> d!1141855 (= c!670796 (> (size!30700 (_1!23132 lt!1337712)) 0))))

(declare-fun e!2380608 () tuple2!39996)

(assert (=> d!1141855 (= lt!1337712 e!2380608)))

(declare-fun c!670797 () Bool)

(declare-fun lt!1337710 () Option!8725)

(assert (=> d!1141855 (= c!670797 (is-Some!8724 lt!1337710))))

(assert (=> d!1141855 (= lt!1337710 (maxPrefix!3200 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1141855 (= (lexList!1664 thiss!20629 rules!2768 suffix!1176) lt!1337712)))

(declare-fun b!3851521 () Bool)

(assert (=> b!3851521 (= e!2380608 (tuple2!39997 Nil!40807 suffix!1176))))

(declare-fun b!3851522 () Bool)

(declare-fun e!2380607 () Bool)

(assert (=> b!3851522 (= e!2380607 (not (isEmpty!24151 (_1!23132 lt!1337712))))))

(declare-fun b!3851523 () Bool)

(assert (=> b!3851523 (= e!2380609 e!2380607)))

(declare-fun res!1559242 () Bool)

(assert (=> b!3851523 (= res!1559242 (< (size!30695 (_2!23132 lt!1337712)) (size!30695 suffix!1176)))))

(assert (=> b!3851523 (=> (not res!1559242) (not e!2380607))))

(declare-fun b!3851524 () Bool)

(assert (=> b!3851524 (= e!2380609 (= (_2!23132 lt!1337712) suffix!1176))))

(declare-fun b!3851525 () Bool)

(declare-fun lt!1337711 () tuple2!39996)

(assert (=> b!3851525 (= e!2380608 (tuple2!39997 (Cons!40807 (_1!23131 (v!39018 lt!1337710)) (_1!23132 lt!1337711)) (_2!23132 lt!1337711)))))

(assert (=> b!3851525 (= lt!1337711 (lexList!1664 thiss!20629 rules!2768 (_2!23131 (v!39018 lt!1337710))))))

(assert (= (and d!1141855 c!670797) b!3851525))

(assert (= (and d!1141855 (not c!670797)) b!3851521))

(assert (= (and d!1141855 c!670796) b!3851523))

(assert (= (and d!1141855 (not c!670796)) b!3851524))

(assert (= (and b!3851523 res!1559242) b!3851522))

(declare-fun m!4406541 () Bool)

(assert (=> d!1141855 m!4406541))

(declare-fun m!4406543 () Bool)

(assert (=> d!1141855 m!4406543))

(declare-fun m!4406545 () Bool)

(assert (=> b!3851522 m!4406545))

(declare-fun m!4406547 () Bool)

(assert (=> b!3851523 m!4406547))

(assert (=> b!3851523 m!4406171))

(declare-fun m!4406549 () Bool)

(assert (=> b!3851525 m!4406549))

(assert (=> b!3851107 d!1141855))

(declare-fun d!1141865 () Bool)

(declare-fun lt!1337713 () Int)

(assert (=> d!1141865 (>= lt!1337713 0)))

(declare-fun e!2380611 () Int)

(assert (=> d!1141865 (= lt!1337713 e!2380611)))

(declare-fun c!670798 () Bool)

(assert (=> d!1141865 (= c!670798 (is-Nil!40804 (originalCharacters!6907 (_1!23131 (v!39018 lt!1337525)))))))

(assert (=> d!1141865 (= (size!30695 (originalCharacters!6907 (_1!23131 (v!39018 lt!1337525)))) lt!1337713)))

(declare-fun b!3851528 () Bool)

(assert (=> b!3851528 (= e!2380611 0)))

(declare-fun b!3851529 () Bool)

(assert (=> b!3851529 (= e!2380611 (+ 1 (size!30695 (t!311879 (originalCharacters!6907 (_1!23131 (v!39018 lt!1337525)))))))))

(assert (= (and d!1141865 c!670798) b!3851528))

(assert (= (and d!1141865 (not c!670798)) b!3851529))

(declare-fun m!4406551 () Bool)

(assert (=> b!3851529 m!4406551))

(assert (=> b!3851106 d!1141865))

(declare-fun d!1141867 () Bool)

(assert (=> d!1141867 (= (inv!54954 (tag!7167 (rule!9161 (h!46227 prefixTokens!80)))) (= (mod (str.len (value!200384 (tag!7167 (rule!9161 (h!46227 prefixTokens!80))))) 2) 0))))

(assert (=> b!3851117 d!1141867))

(declare-fun d!1141873 () Bool)

(declare-fun res!1559249 () Bool)

(declare-fun e!2380619 () Bool)

(assert (=> d!1141873 (=> (not res!1559249) (not e!2380619))))

(declare-fun semiInverseModEq!2702 (Int Int) Bool)

(assert (=> d!1141873 (= res!1559249 (semiInverseModEq!2702 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (toValue!8727 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80))))))))

(assert (=> d!1141873 (= (inv!54957 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) e!2380619)))

(declare-fun b!3851539 () Bool)

(declare-fun equivClasses!2601 (Int Int) Bool)

(assert (=> b!3851539 (= e!2380619 (equivClasses!2601 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (toValue!8727 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80))))))))

(assert (= (and d!1141873 res!1559249) b!3851539))

(declare-fun m!4406577 () Bool)

(assert (=> d!1141873 m!4406577))

(declare-fun m!4406579 () Bool)

(assert (=> b!3851539 m!4406579))

(assert (=> b!3851117 d!1141873))

(declare-fun b!3851566 () Bool)

(declare-fun e!2380634 () Bool)

(declare-fun inv!17 (TokenValue!6537) Bool)

(assert (=> b!3851566 (= e!2380634 (inv!17 (value!200385 (h!46227 prefixTokens!80))))))

(declare-fun b!3851567 () Bool)

(declare-fun e!2380636 () Bool)

(declare-fun inv!15 (TokenValue!6537) Bool)

(assert (=> b!3851567 (= e!2380636 (inv!15 (value!200385 (h!46227 prefixTokens!80))))))

(declare-fun b!3851568 () Bool)

(declare-fun e!2380635 () Bool)

(assert (=> b!3851568 (= e!2380635 e!2380634)))

(declare-fun c!670809 () Bool)

(assert (=> b!3851568 (= c!670809 (is-IntegerValue!19612 (value!200385 (h!46227 prefixTokens!80))))))

(declare-fun b!3851570 () Bool)

(declare-fun res!1559260 () Bool)

(assert (=> b!3851570 (=> res!1559260 e!2380636)))

(assert (=> b!3851570 (= res!1559260 (not (is-IntegerValue!19613 (value!200385 (h!46227 prefixTokens!80)))))))

(assert (=> b!3851570 (= e!2380634 e!2380636)))

(declare-fun d!1141879 () Bool)

(declare-fun c!670811 () Bool)

(assert (=> d!1141879 (= c!670811 (is-IntegerValue!19611 (value!200385 (h!46227 prefixTokens!80))))))

(assert (=> d!1141879 (= (inv!21 (value!200385 (h!46227 prefixTokens!80))) e!2380635)))

(declare-fun b!3851572 () Bool)

(declare-fun inv!16 (TokenValue!6537) Bool)

(assert (=> b!3851572 (= e!2380635 (inv!16 (value!200385 (h!46227 prefixTokens!80))))))

(assert (= (and d!1141879 c!670811) b!3851572))

(assert (= (and d!1141879 (not c!670811)) b!3851568))

(assert (= (and b!3851568 c!670809) b!3851566))

(assert (= (and b!3851568 (not c!670809)) b!3851570))

(assert (= (and b!3851570 (not res!1559260)) b!3851567))

(declare-fun m!4406605 () Bool)

(assert (=> b!3851566 m!4406605))

(declare-fun m!4406609 () Bool)

(assert (=> b!3851567 m!4406609))

(declare-fun m!4406613 () Bool)

(assert (=> b!3851572 m!4406613))

(assert (=> b!3851111 d!1141879))

(declare-fun d!1141885 () Bool)

(assert (=> d!1141885 (= (isEmpty!24150 prefix!426) (is-Nil!40804 prefix!426))))

(assert (=> b!3851110 d!1141885))

(declare-fun d!1141889 () Bool)

(assert (=> d!1141889 (= (inv!54954 (tag!7167 (h!46226 rules!2768))) (= (mod (str.len (value!200384 (tag!7167 (h!46226 rules!2768)))) 2) 0))))

(assert (=> b!3851120 d!1141889))

(declare-fun d!1141891 () Bool)

(declare-fun res!1559264 () Bool)

(declare-fun e!2380642 () Bool)

(assert (=> d!1141891 (=> (not res!1559264) (not e!2380642))))

(assert (=> d!1141891 (= res!1559264 (semiInverseModEq!2702 (toChars!8586 (transformation!6307 (h!46226 rules!2768))) (toValue!8727 (transformation!6307 (h!46226 rules!2768)))))))

(assert (=> d!1141891 (= (inv!54957 (transformation!6307 (h!46226 rules!2768))) e!2380642)))

(declare-fun b!3851580 () Bool)

(assert (=> b!3851580 (= e!2380642 (equivClasses!2601 (toChars!8586 (transformation!6307 (h!46226 rules!2768))) (toValue!8727 (transformation!6307 (h!46226 rules!2768)))))))

(assert (= (and d!1141891 res!1559264) b!3851580))

(declare-fun m!4406631 () Bool)

(assert (=> d!1141891 m!4406631))

(declare-fun m!4406633 () Bool)

(assert (=> b!3851580 m!4406633))

(assert (=> b!3851120 d!1141891))

(declare-fun d!1141895 () Bool)

(assert (=> d!1141895 (= (get!13501 lt!1337525) (v!39018 lt!1337525))))

(assert (=> b!3851099 d!1141895))

(declare-fun d!1141897 () Bool)

(assert (=> d!1141897 (= (head!8097 prefixTokens!80) (h!46227 prefixTokens!80))))

(assert (=> b!3851099 d!1141897))

(declare-fun d!1141899 () Bool)

(declare-fun lt!1337722 () Int)

(assert (=> d!1141899 (>= lt!1337722 0)))

(declare-fun e!2380643 () Int)

(assert (=> d!1141899 (= lt!1337722 e!2380643)))

(declare-fun c!670814 () Bool)

(assert (=> d!1141899 (= c!670814 (is-Nil!40804 prefix!426))))

(assert (=> d!1141899 (= (size!30695 prefix!426) lt!1337722)))

(declare-fun b!3851581 () Bool)

(assert (=> b!3851581 (= e!2380643 0)))

(declare-fun b!3851582 () Bool)

(assert (=> b!3851582 (= e!2380643 (+ 1 (size!30695 (t!311879 prefix!426))))))

(assert (= (and d!1141899 c!670814) b!3851581))

(assert (= (and d!1141899 (not c!670814)) b!3851582))

(declare-fun m!4406635 () Bool)

(assert (=> b!3851582 m!4406635))

(assert (=> b!3851098 d!1141899))

(declare-fun d!1141901 () Bool)

(assert (=> d!1141901 (= (size!30696 (_1!23131 (v!39018 lt!1337525))) (size!30695 (originalCharacters!6907 (_1!23131 (v!39018 lt!1337525)))))))

(declare-fun Unit!58484 () Unit!58479)

(assert (=> d!1141901 (= (lemmaCharactersSize!968 (_1!23131 (v!39018 lt!1337525))) Unit!58484)))

(declare-fun bs!582881 () Bool)

(assert (= bs!582881 d!1141901))

(assert (=> bs!582881 m!4406089))

(assert (=> b!3851124 d!1141901))

(declare-fun d!1141903 () Bool)

(declare-fun lt!1337727 () BalanceConc!24630)

(assert (=> d!1141903 (= (list!15189 lt!1337727) (originalCharacters!6907 (_1!23131 (v!39018 lt!1337525))))))

(declare-fun dynLambda!17611 (Int TokenValue!6537) BalanceConc!24630)

(assert (=> d!1141903 (= lt!1337727 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))) (value!200385 (_1!23131 (v!39018 lt!1337525)))))))

(assert (=> d!1141903 (= (charsOf!4135 (_1!23131 (v!39018 lt!1337525))) lt!1337727)))

(declare-fun b_lambda!112575 () Bool)

(assert (=> (not b_lambda!112575) (not d!1141903)))

(declare-fun t!311912 () Bool)

(declare-fun tb!222281 () Bool)

(assert (=> (and b!3851126 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311912) tb!222281))

(declare-fun b!3851591 () Bool)

(declare-fun e!2380650 () Bool)

(declare-fun tp!1167366 () Bool)

(declare-fun inv!54961 (Conc!12518) Bool)

(assert (=> b!3851591 (= e!2380650 (and (inv!54961 (c!670729 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))) (value!200385 (_1!23131 (v!39018 lt!1337525)))))) tp!1167366))))

(declare-fun result!270822 () Bool)

(declare-fun inv!54962 (BalanceConc!24630) Bool)

(assert (=> tb!222281 (= result!270822 (and (inv!54962 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))) (value!200385 (_1!23131 (v!39018 lt!1337525))))) e!2380650))))

(assert (= tb!222281 b!3851591))

(declare-fun m!4406637 () Bool)

(assert (=> b!3851591 m!4406637))

(declare-fun m!4406639 () Bool)

(assert (=> tb!222281 m!4406639))

(assert (=> d!1141903 t!311912))

(declare-fun b_and!287679 () Bool)

(assert (= b_and!287633 (and (=> t!311912 result!270822) b_and!287679)))

(declare-fun tb!222283 () Bool)

(declare-fun t!311914 () Bool)

(assert (=> (and b!3851116 (= (toChars!8586 (transformation!6307 (h!46226 rules!2768))) (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311914) tb!222283))

(declare-fun result!270826 () Bool)

(assert (= result!270826 result!270822))

(assert (=> d!1141903 t!311914))

(declare-fun b_and!287681 () Bool)

(assert (= b_and!287637 (and (=> t!311914 result!270826) b_and!287681)))

(declare-fun tb!222285 () Bool)

(declare-fun t!311916 () Bool)

(assert (=> (and b!3851113 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311916) tb!222285))

(declare-fun result!270828 () Bool)

(assert (= result!270828 result!270822))

(assert (=> d!1141903 t!311916))

(declare-fun b_and!287683 () Bool)

(assert (= b_and!287641 (and (=> t!311916 result!270828) b_and!287683)))

(declare-fun m!4406641 () Bool)

(assert (=> d!1141903 m!4406641))

(declare-fun m!4406643 () Bool)

(assert (=> d!1141903 m!4406643))

(assert (=> b!3851124 d!1141903))

(declare-fun d!1141905 () Bool)

(assert (=> d!1141905 (isPrefix!3406 lt!1337541 (++!10372 lt!1337541 (_2!23131 (v!39018 lt!1337525))))))

(declare-fun lt!1337730 () Unit!58479)

(declare-fun choose!22666 (List!40928 List!40928) Unit!58479)

(assert (=> d!1141905 (= lt!1337730 (choose!22666 lt!1337541 (_2!23131 (v!39018 lt!1337525))))))

(assert (=> d!1141905 (= (lemmaConcatTwoListThenFirstIsPrefix!2269 lt!1337541 (_2!23131 (v!39018 lt!1337525))) lt!1337730)))

(declare-fun bs!582882 () Bool)

(assert (= bs!582882 d!1141905))

(assert (=> bs!582882 m!4406147))

(assert (=> bs!582882 m!4406147))

(declare-fun m!4406645 () Bool)

(assert (=> bs!582882 m!4406645))

(declare-fun m!4406647 () Bool)

(assert (=> bs!582882 m!4406647))

(assert (=> b!3851124 d!1141905))

(declare-fun d!1141907 () Bool)

(declare-fun res!1559273 () Bool)

(declare-fun e!2380653 () Bool)

(assert (=> d!1141907 (=> (not res!1559273) (not e!2380653))))

(assert (=> d!1141907 (= res!1559273 (validRegex!5101 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))))

(assert (=> d!1141907 (= (ruleValid!2259 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) e!2380653)))

(declare-fun b!3851596 () Bool)

(declare-fun res!1559274 () Bool)

(assert (=> b!3851596 (=> (not res!1559274) (not e!2380653))))

(assert (=> b!3851596 (= res!1559274 (not (nullable!3902 (regex!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))))))

(declare-fun b!3851597 () Bool)

(assert (=> b!3851597 (= e!2380653 (not (= (tag!7167 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (String!46406 ""))))))

(assert (= (and d!1141907 res!1559273) b!3851596))

(assert (= (and b!3851596 res!1559274) b!3851597))

(assert (=> d!1141907 m!4406397))

(assert (=> b!3851596 m!4406395))

(assert (=> b!3851124 d!1141907))

(declare-fun d!1141909 () Bool)

(declare-fun list!15191 (Conc!12518) List!40928)

(assert (=> d!1141909 (= (list!15189 (charsOf!4135 (_1!23131 (v!39018 lt!1337525)))) (list!15191 (c!670729 (charsOf!4135 (_1!23131 (v!39018 lt!1337525))))))))

(declare-fun bs!582883 () Bool)

(assert (= bs!582883 d!1141909))

(declare-fun m!4406649 () Bool)

(assert (=> bs!582883 m!4406649))

(assert (=> b!3851124 d!1141909))

(declare-fun d!1141911 () Bool)

(assert (=> d!1141911 (= (_2!23131 (v!39018 lt!1337525)) lt!1337537)))

(declare-fun lt!1337733 () Unit!58479)

(declare-fun choose!22667 (List!40928 List!40928 List!40928 List!40928 List!40928) Unit!58479)

(assert (=> d!1141911 (= lt!1337733 (choose!22667 lt!1337541 (_2!23131 (v!39018 lt!1337525)) lt!1337541 lt!1337537 lt!1337529))))

(assert (=> d!1141911 (isPrefix!3406 lt!1337541 lt!1337529)))

(assert (=> d!1141911 (= (lemmaSamePrefixThenSameSuffix!1627 lt!1337541 (_2!23131 (v!39018 lt!1337525)) lt!1337541 lt!1337537 lt!1337529) lt!1337733)))

(declare-fun bs!582884 () Bool)

(assert (= bs!582884 d!1141911))

(declare-fun m!4406651 () Bool)

(assert (=> bs!582884 m!4406651))

(declare-fun m!4406653 () Bool)

(assert (=> bs!582884 m!4406653))

(assert (=> b!3851124 d!1141911))

(declare-fun d!1141913 () Bool)

(declare-fun fromListB!2112 (List!40928) BalanceConc!24630)

(assert (=> d!1141913 (= (seqFromList!4578 lt!1337541) (fromListB!2112 lt!1337541))))

(declare-fun bs!582885 () Bool)

(assert (= bs!582885 d!1141913))

(declare-fun m!4406655 () Bool)

(assert (=> bs!582885 m!4406655))

(assert (=> b!3851124 d!1141913))

(declare-fun b!3851606 () Bool)

(declare-fun e!2380658 () List!40928)

(assert (=> b!3851606 (= e!2380658 (_2!23131 (v!39018 lt!1337525)))))

(declare-fun d!1141915 () Bool)

(declare-fun e!2380659 () Bool)

(assert (=> d!1141915 e!2380659))

(declare-fun res!1559280 () Bool)

(assert (=> d!1141915 (=> (not res!1559280) (not e!2380659))))

(declare-fun lt!1337736 () List!40928)

(declare-fun content!6071 (List!40928) (Set C!22610))

(assert (=> d!1141915 (= res!1559280 (= (content!6071 lt!1337736) (set.union (content!6071 lt!1337541) (content!6071 (_2!23131 (v!39018 lt!1337525))))))))

(assert (=> d!1141915 (= lt!1337736 e!2380658)))

(declare-fun c!670817 () Bool)

(assert (=> d!1141915 (= c!670817 (is-Nil!40804 lt!1337541))))

(assert (=> d!1141915 (= (++!10372 lt!1337541 (_2!23131 (v!39018 lt!1337525))) lt!1337736)))

(declare-fun b!3851607 () Bool)

(assert (=> b!3851607 (= e!2380658 (Cons!40804 (h!46224 lt!1337541) (++!10372 (t!311879 lt!1337541) (_2!23131 (v!39018 lt!1337525)))))))

(declare-fun b!3851608 () Bool)

(declare-fun res!1559279 () Bool)

(assert (=> b!3851608 (=> (not res!1559279) (not e!2380659))))

(assert (=> b!3851608 (= res!1559279 (= (size!30695 lt!1337736) (+ (size!30695 lt!1337541) (size!30695 (_2!23131 (v!39018 lt!1337525))))))))

(declare-fun b!3851609 () Bool)

(assert (=> b!3851609 (= e!2380659 (or (not (= (_2!23131 (v!39018 lt!1337525)) Nil!40804)) (= lt!1337736 lt!1337541)))))

(assert (= (and d!1141915 c!670817) b!3851606))

(assert (= (and d!1141915 (not c!670817)) b!3851607))

(assert (= (and d!1141915 res!1559280) b!3851608))

(assert (= (and b!3851608 res!1559279) b!3851609))

(declare-fun m!4406657 () Bool)

(assert (=> d!1141915 m!4406657))

(declare-fun m!4406659 () Bool)

(assert (=> d!1141915 m!4406659))

(declare-fun m!4406661 () Bool)

(assert (=> d!1141915 m!4406661))

(declare-fun m!4406663 () Bool)

(assert (=> b!3851607 m!4406663))

(declare-fun m!4406665 () Bool)

(assert (=> b!3851608 m!4406665))

(assert (=> b!3851608 m!4406145))

(assert (=> b!3851608 m!4406173))

(assert (=> b!3851124 d!1141915))

(declare-fun b!3851620 () Bool)

(declare-fun e!2380666 () Bool)

(assert (=> b!3851620 (= e!2380666 (isPrefix!3406 (tail!5824 lt!1337541) (tail!5824 lt!1337539)))))

(declare-fun b!3851618 () Bool)

(declare-fun e!2380667 () Bool)

(assert (=> b!3851618 (= e!2380667 e!2380666)))

(declare-fun res!1559292 () Bool)

(assert (=> b!3851618 (=> (not res!1559292) (not e!2380666))))

(assert (=> b!3851618 (= res!1559292 (not (is-Nil!40804 lt!1337539)))))

(declare-fun d!1141917 () Bool)

(declare-fun e!2380668 () Bool)

(assert (=> d!1141917 e!2380668))

(declare-fun res!1559291 () Bool)

(assert (=> d!1141917 (=> res!1559291 e!2380668)))

(declare-fun lt!1337739 () Bool)

(assert (=> d!1141917 (= res!1559291 (not lt!1337739))))

(assert (=> d!1141917 (= lt!1337739 e!2380667)))

(declare-fun res!1559289 () Bool)

(assert (=> d!1141917 (=> res!1559289 e!2380667)))

(assert (=> d!1141917 (= res!1559289 (is-Nil!40804 lt!1337541))))

(assert (=> d!1141917 (= (isPrefix!3406 lt!1337541 lt!1337539) lt!1337739)))

(declare-fun b!3851621 () Bool)

(assert (=> b!3851621 (= e!2380668 (>= (size!30695 lt!1337539) (size!30695 lt!1337541)))))

(declare-fun b!3851619 () Bool)

(declare-fun res!1559290 () Bool)

(assert (=> b!3851619 (=> (not res!1559290) (not e!2380666))))

(assert (=> b!3851619 (= res!1559290 (= (head!8099 lt!1337541) (head!8099 lt!1337539)))))

(assert (= (and d!1141917 (not res!1559289)) b!3851618))

(assert (= (and b!3851618 res!1559292) b!3851619))

(assert (= (and b!3851619 res!1559290) b!3851620))

(assert (= (and d!1141917 (not res!1559291)) b!3851621))

(assert (=> b!3851620 m!4406389))

(declare-fun m!4406667 () Bool)

(assert (=> b!3851620 m!4406667))

(assert (=> b!3851620 m!4406389))

(assert (=> b!3851620 m!4406667))

(declare-fun m!4406669 () Bool)

(assert (=> b!3851620 m!4406669))

(declare-fun m!4406671 () Bool)

(assert (=> b!3851621 m!4406671))

(assert (=> b!3851621 m!4406145))

(assert (=> b!3851619 m!4406387))

(declare-fun m!4406673 () Bool)

(assert (=> b!3851619 m!4406673))

(assert (=> b!3851124 d!1141917))

(declare-fun d!1141919 () Bool)

(declare-fun lt!1337740 () Int)

(assert (=> d!1141919 (>= lt!1337740 0)))

(declare-fun e!2380669 () Int)

(assert (=> d!1141919 (= lt!1337740 e!2380669)))

(declare-fun c!670818 () Bool)

(assert (=> d!1141919 (= c!670818 (is-Nil!40804 lt!1337541))))

(assert (=> d!1141919 (= (size!30695 lt!1337541) lt!1337740)))

(declare-fun b!3851622 () Bool)

(assert (=> b!3851622 (= e!2380669 0)))

(declare-fun b!3851623 () Bool)

(assert (=> b!3851623 (= e!2380669 (+ 1 (size!30695 (t!311879 lt!1337541))))))

(assert (= (and d!1141919 c!670818) b!3851622))

(assert (= (and d!1141919 (not c!670818)) b!3851623))

(declare-fun m!4406675 () Bool)

(assert (=> b!3851623 m!4406675))

(assert (=> b!3851124 d!1141919))

(declare-fun d!1141921 () Bool)

(declare-fun e!2380672 () Bool)

(assert (=> d!1141921 e!2380672))

(declare-fun c!670819 () Bool)

(declare-fun lt!1337743 () tuple2!39996)

(assert (=> d!1141921 (= c!670819 (> (size!30700 (_1!23132 lt!1337743)) 0))))

(declare-fun e!2380671 () tuple2!39996)

(assert (=> d!1141921 (= lt!1337743 e!2380671)))

(declare-fun c!670820 () Bool)

(declare-fun lt!1337741 () Option!8725)

(assert (=> d!1141921 (= c!670820 (is-Some!8724 lt!1337741))))

(assert (=> d!1141921 (= lt!1337741 (maxPrefix!3200 thiss!20629 rules!2768 (_2!23131 (v!39018 lt!1337525))))))

(assert (=> d!1141921 (= (lexList!1664 thiss!20629 rules!2768 (_2!23131 (v!39018 lt!1337525))) lt!1337743)))

(declare-fun b!3851624 () Bool)

(assert (=> b!3851624 (= e!2380671 (tuple2!39997 Nil!40807 (_2!23131 (v!39018 lt!1337525))))))

(declare-fun b!3851625 () Bool)

(declare-fun e!2380670 () Bool)

(assert (=> b!3851625 (= e!2380670 (not (isEmpty!24151 (_1!23132 lt!1337743))))))

(declare-fun b!3851626 () Bool)

(assert (=> b!3851626 (= e!2380672 e!2380670)))

(declare-fun res!1559293 () Bool)

(assert (=> b!3851626 (= res!1559293 (< (size!30695 (_2!23132 lt!1337743)) (size!30695 (_2!23131 (v!39018 lt!1337525)))))))

(assert (=> b!3851626 (=> (not res!1559293) (not e!2380670))))

(declare-fun b!3851627 () Bool)

(assert (=> b!3851627 (= e!2380672 (= (_2!23132 lt!1337743) (_2!23131 (v!39018 lt!1337525))))))

(declare-fun b!3851628 () Bool)

(declare-fun lt!1337742 () tuple2!39996)

(assert (=> b!3851628 (= e!2380671 (tuple2!39997 (Cons!40807 (_1!23131 (v!39018 lt!1337741)) (_1!23132 lt!1337742)) (_2!23132 lt!1337742)))))

(assert (=> b!3851628 (= lt!1337742 (lexList!1664 thiss!20629 rules!2768 (_2!23131 (v!39018 lt!1337741))))))

(assert (= (and d!1141921 c!670820) b!3851628))

(assert (= (and d!1141921 (not c!670820)) b!3851624))

(assert (= (and d!1141921 c!670819) b!3851626))

(assert (= (and d!1141921 (not c!670819)) b!3851627))

(assert (= (and b!3851626 res!1559293) b!3851625))

(declare-fun m!4406677 () Bool)

(assert (=> d!1141921 m!4406677))

(declare-fun m!4406679 () Bool)

(assert (=> d!1141921 m!4406679))

(declare-fun m!4406681 () Bool)

(assert (=> b!3851625 m!4406681))

(declare-fun m!4406683 () Bool)

(assert (=> b!3851626 m!4406683))

(assert (=> b!3851626 m!4406173))

(declare-fun m!4406685 () Bool)

(assert (=> b!3851628 m!4406685))

(assert (=> b!3851124 d!1141921))

(declare-fun d!1141923 () Bool)

(declare-fun lt!1337746 () List!40928)

(assert (=> d!1141923 (= (++!10372 lt!1337541 lt!1337746) lt!1337529)))

(declare-fun e!2380675 () List!40928)

(assert (=> d!1141923 (= lt!1337746 e!2380675)))

(declare-fun c!670823 () Bool)

(assert (=> d!1141923 (= c!670823 (is-Cons!40804 lt!1337541))))

(assert (=> d!1141923 (>= (size!30695 lt!1337529) (size!30695 lt!1337541))))

(assert (=> d!1141923 (= (getSuffix!1861 lt!1337529 lt!1337541) lt!1337746)))

(declare-fun b!3851633 () Bool)

(assert (=> b!3851633 (= e!2380675 (getSuffix!1861 (tail!5824 lt!1337529) (t!311879 lt!1337541)))))

(declare-fun b!3851634 () Bool)

(assert (=> b!3851634 (= e!2380675 lt!1337529)))

(assert (= (and d!1141923 c!670823) b!3851633))

(assert (= (and d!1141923 (not c!670823)) b!3851634))

(declare-fun m!4406687 () Bool)

(assert (=> d!1141923 m!4406687))

(assert (=> d!1141923 m!4406095))

(assert (=> d!1141923 m!4406145))

(declare-fun m!4406689 () Bool)

(assert (=> b!3851633 m!4406689))

(assert (=> b!3851633 m!4406689))

(declare-fun m!4406691 () Bool)

(assert (=> b!3851633 m!4406691))

(assert (=> b!3851124 d!1141923))

(declare-fun d!1141925 () Bool)

(assert (=> d!1141925 (ruleValid!2259 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))

(declare-fun lt!1337749 () Unit!58479)

(declare-fun choose!22668 (LexerInterface!5896 Rule!12414 List!40930) Unit!58479)

(assert (=> d!1141925 (= lt!1337749 (choose!22668 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))) rules!2768))))

(declare-fun contains!8251 (List!40930 Rule!12414) Bool)

(assert (=> d!1141925 (contains!8251 rules!2768 (rule!9161 (_1!23131 (v!39018 lt!1337525))))))

(assert (=> d!1141925 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1339 thiss!20629 (rule!9161 (_1!23131 (v!39018 lt!1337525))) rules!2768) lt!1337749)))

(declare-fun bs!582886 () Bool)

(assert (= bs!582886 d!1141925))

(assert (=> bs!582886 m!4406167))

(declare-fun m!4406693 () Bool)

(assert (=> bs!582886 m!4406693))

(declare-fun m!4406695 () Bool)

(assert (=> bs!582886 m!4406695))

(assert (=> b!3851124 d!1141925))

(declare-fun d!1141927 () Bool)

(declare-fun dynLambda!17612 (Int BalanceConc!24630) TokenValue!6537)

(assert (=> d!1141927 (= (apply!9550 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))) (seqFromList!4578 lt!1337541)) (dynLambda!17612 (toValue!8727 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))) (seqFromList!4578 lt!1337541)))))

(declare-fun b_lambda!112577 () Bool)

(assert (=> (not b_lambda!112577) (not d!1141927)))

(declare-fun tb!222287 () Bool)

(declare-fun t!311918 () Bool)

(assert (=> (and b!3851126 (= (toValue!8727 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (toValue!8727 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311918) tb!222287))

(declare-fun result!270830 () Bool)

(assert (=> tb!222287 (= result!270830 (inv!21 (dynLambda!17612 (toValue!8727 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525))))) (seqFromList!4578 lt!1337541))))))

(declare-fun m!4406697 () Bool)

(assert (=> tb!222287 m!4406697))

(assert (=> d!1141927 t!311918))

(declare-fun b_and!287685 () Bool)

(assert (= b_and!287631 (and (=> t!311918 result!270830) b_and!287685)))

(declare-fun t!311920 () Bool)

(declare-fun tb!222289 () Bool)

(assert (=> (and b!3851116 (= (toValue!8727 (transformation!6307 (h!46226 rules!2768))) (toValue!8727 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311920) tb!222289))

(declare-fun result!270834 () Bool)

(assert (= result!270834 result!270830))

(assert (=> d!1141927 t!311920))

(declare-fun b_and!287687 () Bool)

(assert (= b_and!287635 (and (=> t!311920 result!270834) b_and!287687)))

(declare-fun tb!222291 () Bool)

(declare-fun t!311922 () Bool)

(assert (=> (and b!3851113 (= (toValue!8727 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (toValue!8727 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311922) tb!222291))

(declare-fun result!270836 () Bool)

(assert (= result!270836 result!270830))

(assert (=> d!1141927 t!311922))

(declare-fun b_and!287689 () Bool)

(assert (= b_and!287639 (and (=> t!311922 result!270836) b_and!287689)))

(assert (=> d!1141927 m!4406161))

(declare-fun m!4406699 () Bool)

(assert (=> d!1141927 m!4406699))

(assert (=> b!3851124 d!1141927))

(declare-fun b!3851637 () Bool)

(declare-fun e!2380679 () Bool)

(assert (=> b!3851637 (= e!2380679 (inv!17 (value!200385 (h!46227 suffixTokens!72))))))

(declare-fun b!3851638 () Bool)

(declare-fun e!2380681 () Bool)

(assert (=> b!3851638 (= e!2380681 (inv!15 (value!200385 (h!46227 suffixTokens!72))))))

(declare-fun b!3851639 () Bool)

(declare-fun e!2380680 () Bool)

(assert (=> b!3851639 (= e!2380680 e!2380679)))

(declare-fun c!670824 () Bool)

(assert (=> b!3851639 (= c!670824 (is-IntegerValue!19612 (value!200385 (h!46227 suffixTokens!72))))))

(declare-fun b!3851640 () Bool)

(declare-fun res!1559294 () Bool)

(assert (=> b!3851640 (=> res!1559294 e!2380681)))

(assert (=> b!3851640 (= res!1559294 (not (is-IntegerValue!19613 (value!200385 (h!46227 suffixTokens!72)))))))

(assert (=> b!3851640 (= e!2380679 e!2380681)))

(declare-fun d!1141929 () Bool)

(declare-fun c!670825 () Bool)

(assert (=> d!1141929 (= c!670825 (is-IntegerValue!19611 (value!200385 (h!46227 suffixTokens!72))))))

(assert (=> d!1141929 (= (inv!21 (value!200385 (h!46227 suffixTokens!72))) e!2380680)))

(declare-fun b!3851641 () Bool)

(assert (=> b!3851641 (= e!2380680 (inv!16 (value!200385 (h!46227 suffixTokens!72))))))

(assert (= (and d!1141929 c!670825) b!3851641))

(assert (= (and d!1141929 (not c!670825)) b!3851639))

(assert (= (and b!3851639 c!670824) b!3851637))

(assert (= (and b!3851639 (not c!670824)) b!3851640))

(assert (= (and b!3851640 (not res!1559294)) b!3851638))

(declare-fun m!4406701 () Bool)

(assert (=> b!3851637 m!4406701))

(declare-fun m!4406703 () Bool)

(assert (=> b!3851638 m!4406703))

(declare-fun m!4406705 () Bool)

(assert (=> b!3851641 m!4406705))

(assert (=> b!3851102 d!1141929))

(declare-fun e!2380686 () Bool)

(declare-fun b!3851653 () Bool)

(declare-fun lt!1337752 () List!40931)

(assert (=> b!3851653 (= e!2380686 (or (not (= (_1!23132 lt!1337532) Nil!40807)) (= lt!1337752 (Cons!40807 (_1!23131 (v!39018 lt!1337525)) Nil!40807))))))

(declare-fun b!3851652 () Bool)

(declare-fun res!1559299 () Bool)

(assert (=> b!3851652 (=> (not res!1559299) (not e!2380686))))

(assert (=> b!3851652 (= res!1559299 (= (size!30700 lt!1337752) (+ (size!30700 (Cons!40807 (_1!23131 (v!39018 lt!1337525)) Nil!40807)) (size!30700 (_1!23132 lt!1337532)))))))

(declare-fun b!3851651 () Bool)

(declare-fun e!2380687 () List!40931)

(assert (=> b!3851651 (= e!2380687 (Cons!40807 (h!46227 (Cons!40807 (_1!23131 (v!39018 lt!1337525)) Nil!40807)) (++!10371 (t!311882 (Cons!40807 (_1!23131 (v!39018 lt!1337525)) Nil!40807)) (_1!23132 lt!1337532))))))

(declare-fun d!1141931 () Bool)

(assert (=> d!1141931 e!2380686))

(declare-fun res!1559300 () Bool)

(assert (=> d!1141931 (=> (not res!1559300) (not e!2380686))))

(declare-fun content!6072 (List!40931) (Set Token!11752))

(assert (=> d!1141931 (= res!1559300 (= (content!6072 lt!1337752) (set.union (content!6072 (Cons!40807 (_1!23131 (v!39018 lt!1337525)) Nil!40807)) (content!6072 (_1!23132 lt!1337532)))))))

(assert (=> d!1141931 (= lt!1337752 e!2380687)))

(declare-fun c!670828 () Bool)

(assert (=> d!1141931 (= c!670828 (is-Nil!40807 (Cons!40807 (_1!23131 (v!39018 lt!1337525)) Nil!40807)))))

(assert (=> d!1141931 (= (++!10371 (Cons!40807 (_1!23131 (v!39018 lt!1337525)) Nil!40807) (_1!23132 lt!1337532)) lt!1337752)))

(declare-fun b!3851650 () Bool)

(assert (=> b!3851650 (= e!2380687 (_1!23132 lt!1337532))))

(assert (= (and d!1141931 c!670828) b!3851650))

(assert (= (and d!1141931 (not c!670828)) b!3851651))

(assert (= (and d!1141931 res!1559300) b!3851652))

(assert (= (and b!3851652 res!1559299) b!3851653))

(declare-fun m!4406707 () Bool)

(assert (=> b!3851652 m!4406707))

(declare-fun m!4406709 () Bool)

(assert (=> b!3851652 m!4406709))

(declare-fun m!4406711 () Bool)

(assert (=> b!3851652 m!4406711))

(declare-fun m!4406713 () Bool)

(assert (=> b!3851651 m!4406713))

(declare-fun m!4406715 () Bool)

(assert (=> d!1141931 m!4406715))

(declare-fun m!4406717 () Bool)

(assert (=> d!1141931 m!4406717))

(declare-fun m!4406719 () Bool)

(assert (=> d!1141931 m!4406719))

(assert (=> b!3851112 d!1141931))

(declare-fun d!1141933 () Bool)

(declare-fun res!1559305 () Bool)

(declare-fun e!2380690 () Bool)

(assert (=> d!1141933 (=> (not res!1559305) (not e!2380690))))

(assert (=> d!1141933 (= res!1559305 (not (isEmpty!24150 (originalCharacters!6907 (h!46227 suffixTokens!72)))))))

(assert (=> d!1141933 (= (inv!54958 (h!46227 suffixTokens!72)) e!2380690)))

(declare-fun b!3851658 () Bool)

(declare-fun res!1559306 () Bool)

(assert (=> b!3851658 (=> (not res!1559306) (not e!2380690))))

(assert (=> b!3851658 (= res!1559306 (= (originalCharacters!6907 (h!46227 suffixTokens!72)) (list!15189 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (value!200385 (h!46227 suffixTokens!72))))))))

(declare-fun b!3851659 () Bool)

(assert (=> b!3851659 (= e!2380690 (= (size!30696 (h!46227 suffixTokens!72)) (size!30695 (originalCharacters!6907 (h!46227 suffixTokens!72)))))))

(assert (= (and d!1141933 res!1559305) b!3851658))

(assert (= (and b!3851658 res!1559306) b!3851659))

(declare-fun b_lambda!112579 () Bool)

(assert (=> (not b_lambda!112579) (not b!3851658)))

(declare-fun t!311924 () Bool)

(declare-fun tb!222293 () Bool)

(assert (=> (and b!3851126 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72))))) t!311924) tb!222293))

(declare-fun b!3851660 () Bool)

(declare-fun e!2380691 () Bool)

(declare-fun tp!1167367 () Bool)

(assert (=> b!3851660 (= e!2380691 (and (inv!54961 (c!670729 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (value!200385 (h!46227 suffixTokens!72))))) tp!1167367))))

(declare-fun result!270838 () Bool)

(assert (=> tb!222293 (= result!270838 (and (inv!54962 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (value!200385 (h!46227 suffixTokens!72)))) e!2380691))))

(assert (= tb!222293 b!3851660))

(declare-fun m!4406721 () Bool)

(assert (=> b!3851660 m!4406721))

(declare-fun m!4406723 () Bool)

(assert (=> tb!222293 m!4406723))

(assert (=> b!3851658 t!311924))

(declare-fun b_and!287691 () Bool)

(assert (= b_and!287679 (and (=> t!311924 result!270838) b_and!287691)))

(declare-fun tb!222295 () Bool)

(declare-fun t!311926 () Bool)

(assert (=> (and b!3851116 (= (toChars!8586 (transformation!6307 (h!46226 rules!2768))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72))))) t!311926) tb!222295))

(declare-fun result!270840 () Bool)

(assert (= result!270840 result!270838))

(assert (=> b!3851658 t!311926))

(declare-fun b_and!287693 () Bool)

(assert (= b_and!287681 (and (=> t!311926 result!270840) b_and!287693)))

(declare-fun t!311928 () Bool)

(declare-fun tb!222297 () Bool)

(assert (=> (and b!3851113 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72))))) t!311928) tb!222297))

(declare-fun result!270842 () Bool)

(assert (= result!270842 result!270838))

(assert (=> b!3851658 t!311928))

(declare-fun b_and!287695 () Bool)

(assert (= b_and!287683 (and (=> t!311928 result!270842) b_and!287695)))

(declare-fun m!4406725 () Bool)

(assert (=> d!1141933 m!4406725))

(declare-fun m!4406727 () Bool)

(assert (=> b!3851658 m!4406727))

(assert (=> b!3851658 m!4406727))

(declare-fun m!4406729 () Bool)

(assert (=> b!3851658 m!4406729))

(declare-fun m!4406731 () Bool)

(assert (=> b!3851659 m!4406731))

(assert (=> b!3851123 d!1141933))

(declare-fun d!1141935 () Bool)

(declare-fun e!2380694 () Bool)

(assert (=> d!1141935 e!2380694))

(declare-fun c!670829 () Bool)

(declare-fun lt!1337755 () tuple2!39996)

(assert (=> d!1141935 (= c!670829 (> (size!30700 (_1!23132 lt!1337755)) 0))))

(declare-fun e!2380693 () tuple2!39996)

(assert (=> d!1141935 (= lt!1337755 e!2380693)))

(declare-fun c!670830 () Bool)

(declare-fun lt!1337753 () Option!8725)

(assert (=> d!1141935 (= c!670830 (is-Some!8724 lt!1337753))))

(assert (=> d!1141935 (= lt!1337753 (maxPrefix!3200 thiss!20629 rules!2768 lt!1337529))))

(assert (=> d!1141935 (= (lexList!1664 thiss!20629 rules!2768 lt!1337529) lt!1337755)))

(declare-fun b!3851661 () Bool)

(assert (=> b!3851661 (= e!2380693 (tuple2!39997 Nil!40807 lt!1337529))))

(declare-fun b!3851662 () Bool)

(declare-fun e!2380692 () Bool)

(assert (=> b!3851662 (= e!2380692 (not (isEmpty!24151 (_1!23132 lt!1337755))))))

(declare-fun b!3851663 () Bool)

(assert (=> b!3851663 (= e!2380694 e!2380692)))

(declare-fun res!1559307 () Bool)

(assert (=> b!3851663 (= res!1559307 (< (size!30695 (_2!23132 lt!1337755)) (size!30695 lt!1337529)))))

(assert (=> b!3851663 (=> (not res!1559307) (not e!2380692))))

(declare-fun b!3851664 () Bool)

(assert (=> b!3851664 (= e!2380694 (= (_2!23132 lt!1337755) lt!1337529))))

(declare-fun b!3851665 () Bool)

(declare-fun lt!1337754 () tuple2!39996)

(assert (=> b!3851665 (= e!2380693 (tuple2!39997 (Cons!40807 (_1!23131 (v!39018 lt!1337753)) (_1!23132 lt!1337754)) (_2!23132 lt!1337754)))))

(assert (=> b!3851665 (= lt!1337754 (lexList!1664 thiss!20629 rules!2768 (_2!23131 (v!39018 lt!1337753))))))

(assert (= (and d!1141935 c!670830) b!3851665))

(assert (= (and d!1141935 (not c!670830)) b!3851661))

(assert (= (and d!1141935 c!670829) b!3851663))

(assert (= (and d!1141935 (not c!670829)) b!3851664))

(assert (= (and b!3851663 res!1559307) b!3851662))

(declare-fun m!4406733 () Bool)

(assert (=> d!1141935 m!4406733))

(assert (=> d!1141935 m!4406093))

(declare-fun m!4406735 () Bool)

(assert (=> b!3851662 m!4406735))

(declare-fun m!4406737 () Bool)

(assert (=> b!3851663 m!4406737))

(assert (=> b!3851663 m!4406095))

(declare-fun m!4406739 () Bool)

(assert (=> b!3851665 m!4406739))

(assert (=> b!3851122 d!1141935))

(declare-fun b!3851669 () Bool)

(declare-fun e!2380695 () Bool)

(declare-fun lt!1337756 () List!40931)

(assert (=> b!3851669 (= e!2380695 (or (not (= suffixTokens!72 Nil!40807)) (= lt!1337756 prefixTokens!80)))))

(declare-fun b!3851668 () Bool)

(declare-fun res!1559308 () Bool)

(assert (=> b!3851668 (=> (not res!1559308) (not e!2380695))))

(assert (=> b!3851668 (= res!1559308 (= (size!30700 lt!1337756) (+ (size!30700 prefixTokens!80) (size!30700 suffixTokens!72))))))

(declare-fun b!3851667 () Bool)

(declare-fun e!2380696 () List!40931)

(assert (=> b!3851667 (= e!2380696 (Cons!40807 (h!46227 prefixTokens!80) (++!10371 (t!311882 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1141937 () Bool)

(assert (=> d!1141937 e!2380695))

(declare-fun res!1559309 () Bool)

(assert (=> d!1141937 (=> (not res!1559309) (not e!2380695))))

(assert (=> d!1141937 (= res!1559309 (= (content!6072 lt!1337756) (set.union (content!6072 prefixTokens!80) (content!6072 suffixTokens!72))))))

(assert (=> d!1141937 (= lt!1337756 e!2380696)))

(declare-fun c!670831 () Bool)

(assert (=> d!1141937 (= c!670831 (is-Nil!40807 prefixTokens!80))))

(assert (=> d!1141937 (= (++!10371 prefixTokens!80 suffixTokens!72) lt!1337756)))

(declare-fun b!3851666 () Bool)

(assert (=> b!3851666 (= e!2380696 suffixTokens!72)))

(assert (= (and d!1141937 c!670831) b!3851666))

(assert (= (and d!1141937 (not c!670831)) b!3851667))

(assert (= (and d!1141937 res!1559309) b!3851668))

(assert (= (and b!3851668 res!1559308) b!3851669))

(declare-fun m!4406741 () Bool)

(assert (=> b!3851668 m!4406741))

(declare-fun m!4406743 () Bool)

(assert (=> b!3851668 m!4406743))

(declare-fun m!4406745 () Bool)

(assert (=> b!3851668 m!4406745))

(declare-fun m!4406747 () Bool)

(assert (=> b!3851667 m!4406747))

(declare-fun m!4406749 () Bool)

(assert (=> d!1141937 m!4406749))

(declare-fun m!4406751 () Bool)

(assert (=> d!1141937 m!4406751))

(declare-fun m!4406753 () Bool)

(assert (=> d!1141937 m!4406753))

(assert (=> b!3851122 d!1141937))

(declare-fun b!3851670 () Bool)

(declare-fun e!2380697 () List!40928)

(assert (=> b!3851670 (= e!2380697 suffix!1176)))

(declare-fun d!1141939 () Bool)

(declare-fun e!2380698 () Bool)

(assert (=> d!1141939 e!2380698))

(declare-fun res!1559311 () Bool)

(assert (=> d!1141939 (=> (not res!1559311) (not e!2380698))))

(declare-fun lt!1337757 () List!40928)

(assert (=> d!1141939 (= res!1559311 (= (content!6071 lt!1337757) (set.union (content!6071 prefix!426) (content!6071 suffix!1176))))))

(assert (=> d!1141939 (= lt!1337757 e!2380697)))

(declare-fun c!670832 () Bool)

(assert (=> d!1141939 (= c!670832 (is-Nil!40804 prefix!426))))

(assert (=> d!1141939 (= (++!10372 prefix!426 suffix!1176) lt!1337757)))

(declare-fun b!3851671 () Bool)

(assert (=> b!3851671 (= e!2380697 (Cons!40804 (h!46224 prefix!426) (++!10372 (t!311879 prefix!426) suffix!1176)))))

(declare-fun b!3851672 () Bool)

(declare-fun res!1559310 () Bool)

(assert (=> b!3851672 (=> (not res!1559310) (not e!2380698))))

(assert (=> b!3851672 (= res!1559310 (= (size!30695 lt!1337757) (+ (size!30695 prefix!426) (size!30695 suffix!1176))))))

(declare-fun b!3851673 () Bool)

(assert (=> b!3851673 (= e!2380698 (or (not (= suffix!1176 Nil!40804)) (= lt!1337757 prefix!426)))))

(assert (= (and d!1141939 c!670832) b!3851670))

(assert (= (and d!1141939 (not c!670832)) b!3851671))

(assert (= (and d!1141939 res!1559311) b!3851672))

(assert (= (and b!3851672 res!1559310) b!3851673))

(declare-fun m!4406755 () Bool)

(assert (=> d!1141939 m!4406755))

(declare-fun m!4406757 () Bool)

(assert (=> d!1141939 m!4406757))

(declare-fun m!4406759 () Bool)

(assert (=> d!1141939 m!4406759))

(declare-fun m!4406761 () Bool)

(assert (=> b!3851671 m!4406761))

(declare-fun m!4406763 () Bool)

(assert (=> b!3851672 m!4406763))

(assert (=> b!3851672 m!4406113))

(assert (=> b!3851672 m!4406171))

(assert (=> b!3851122 d!1141939))

(declare-fun b!3851692 () Bool)

(declare-fun e!2380706 () Option!8725)

(declare-fun lt!1337768 () Option!8725)

(declare-fun lt!1337771 () Option!8725)

(assert (=> b!3851692 (= e!2380706 (ite (and (is-None!8724 lt!1337768) (is-None!8724 lt!1337771)) None!8724 (ite (is-None!8724 lt!1337771) lt!1337768 (ite (is-None!8724 lt!1337768) lt!1337771 (ite (>= (size!30696 (_1!23131 (v!39018 lt!1337768))) (size!30696 (_1!23131 (v!39018 lt!1337771)))) lt!1337768 lt!1337771)))))))

(declare-fun call!282248 () Option!8725)

(assert (=> b!3851692 (= lt!1337768 call!282248)))

(assert (=> b!3851692 (= lt!1337771 (maxPrefix!3200 thiss!20629 (t!311881 rules!2768) lt!1337529))))

(declare-fun d!1141941 () Bool)

(declare-fun e!2380705 () Bool)

(assert (=> d!1141941 e!2380705))

(declare-fun res!1559332 () Bool)

(assert (=> d!1141941 (=> res!1559332 e!2380705)))

(declare-fun lt!1337772 () Option!8725)

(assert (=> d!1141941 (= res!1559332 (isEmpty!24155 lt!1337772))))

(assert (=> d!1141941 (= lt!1337772 e!2380706)))

(declare-fun c!670835 () Bool)

(assert (=> d!1141941 (= c!670835 (and (is-Cons!40806 rules!2768) (is-Nil!40806 (t!311881 rules!2768))))))

(declare-fun lt!1337770 () Unit!58479)

(declare-fun lt!1337769 () Unit!58479)

(assert (=> d!1141941 (= lt!1337770 lt!1337769)))

(assert (=> d!1141941 (isPrefix!3406 lt!1337529 lt!1337529)))

(declare-fun lemmaIsPrefixRefl!2173 (List!40928 List!40928) Unit!58479)

(assert (=> d!1141941 (= lt!1337769 (lemmaIsPrefixRefl!2173 lt!1337529 lt!1337529))))

(assert (=> d!1141941 (rulesValidInductive!2241 thiss!20629 rules!2768)))

(assert (=> d!1141941 (= (maxPrefix!3200 thiss!20629 rules!2768 lt!1337529) lt!1337772)))

(declare-fun b!3851693 () Bool)

(declare-fun res!1559326 () Bool)

(declare-fun e!2380707 () Bool)

(assert (=> b!3851693 (=> (not res!1559326) (not e!2380707))))

(assert (=> b!3851693 (= res!1559326 (< (size!30695 (_2!23131 (get!13501 lt!1337772))) (size!30695 lt!1337529)))))

(declare-fun b!3851694 () Bool)

(declare-fun res!1559328 () Bool)

(assert (=> b!3851694 (=> (not res!1559328) (not e!2380707))))

(assert (=> b!3851694 (= res!1559328 (= (list!15189 (charsOf!4135 (_1!23131 (get!13501 lt!1337772)))) (originalCharacters!6907 (_1!23131 (get!13501 lt!1337772)))))))

(declare-fun b!3851695 () Bool)

(declare-fun res!1559327 () Bool)

(assert (=> b!3851695 (=> (not res!1559327) (not e!2380707))))

(assert (=> b!3851695 (= res!1559327 (= (value!200385 (_1!23131 (get!13501 lt!1337772))) (apply!9550 (transformation!6307 (rule!9161 (_1!23131 (get!13501 lt!1337772)))) (seqFromList!4578 (originalCharacters!6907 (_1!23131 (get!13501 lt!1337772)))))))))

(declare-fun b!3851696 () Bool)

(assert (=> b!3851696 (= e!2380706 call!282248)))

(declare-fun b!3851697 () Bool)

(declare-fun res!1559329 () Bool)

(assert (=> b!3851697 (=> (not res!1559329) (not e!2380707))))

(assert (=> b!3851697 (= res!1559329 (= (++!10372 (list!15189 (charsOf!4135 (_1!23131 (get!13501 lt!1337772)))) (_2!23131 (get!13501 lt!1337772))) lt!1337529))))

(declare-fun b!3851698 () Bool)

(assert (=> b!3851698 (= e!2380705 e!2380707)))

(declare-fun res!1559331 () Bool)

(assert (=> b!3851698 (=> (not res!1559331) (not e!2380707))))

(declare-fun isDefined!6850 (Option!8725) Bool)

(assert (=> b!3851698 (= res!1559331 (isDefined!6850 lt!1337772))))

(declare-fun b!3851699 () Bool)

(declare-fun res!1559330 () Bool)

(assert (=> b!3851699 (=> (not res!1559330) (not e!2380707))))

(assert (=> b!3851699 (= res!1559330 (matchR!5359 (regex!6307 (rule!9161 (_1!23131 (get!13501 lt!1337772)))) (list!15189 (charsOf!4135 (_1!23131 (get!13501 lt!1337772))))))))

(declare-fun bm!282243 () Bool)

(assert (=> bm!282243 (= call!282248 (maxPrefixOneRule!2282 thiss!20629 (h!46226 rules!2768) lt!1337529))))

(declare-fun b!3851700 () Bool)

(assert (=> b!3851700 (= e!2380707 (contains!8251 rules!2768 (rule!9161 (_1!23131 (get!13501 lt!1337772)))))))

(assert (= (and d!1141941 c!670835) b!3851696))

(assert (= (and d!1141941 (not c!670835)) b!3851692))

(assert (= (or b!3851696 b!3851692) bm!282243))

(assert (= (and d!1141941 (not res!1559332)) b!3851698))

(assert (= (and b!3851698 res!1559331) b!3851694))

(assert (= (and b!3851694 res!1559328) b!3851693))

(assert (= (and b!3851693 res!1559326) b!3851697))

(assert (= (and b!3851697 res!1559329) b!3851695))

(assert (= (and b!3851695 res!1559327) b!3851699))

(assert (= (and b!3851699 res!1559330) b!3851700))

(declare-fun m!4406765 () Bool)

(assert (=> b!3851692 m!4406765))

(declare-fun m!4406767 () Bool)

(assert (=> b!3851693 m!4406767))

(declare-fun m!4406769 () Bool)

(assert (=> b!3851693 m!4406769))

(assert (=> b!3851693 m!4406095))

(declare-fun m!4406771 () Bool)

(assert (=> bm!282243 m!4406771))

(assert (=> b!3851700 m!4406767))

(declare-fun m!4406773 () Bool)

(assert (=> b!3851700 m!4406773))

(assert (=> b!3851699 m!4406767))

(declare-fun m!4406775 () Bool)

(assert (=> b!3851699 m!4406775))

(assert (=> b!3851699 m!4406775))

(declare-fun m!4406777 () Bool)

(assert (=> b!3851699 m!4406777))

(assert (=> b!3851699 m!4406777))

(declare-fun m!4406779 () Bool)

(assert (=> b!3851699 m!4406779))

(assert (=> b!3851695 m!4406767))

(declare-fun m!4406781 () Bool)

(assert (=> b!3851695 m!4406781))

(assert (=> b!3851695 m!4406781))

(declare-fun m!4406783 () Bool)

(assert (=> b!3851695 m!4406783))

(assert (=> b!3851694 m!4406767))

(assert (=> b!3851694 m!4406775))

(assert (=> b!3851694 m!4406775))

(assert (=> b!3851694 m!4406777))

(declare-fun m!4406785 () Bool)

(assert (=> b!3851698 m!4406785))

(declare-fun m!4406787 () Bool)

(assert (=> d!1141941 m!4406787))

(declare-fun m!4406789 () Bool)

(assert (=> d!1141941 m!4406789))

(declare-fun m!4406791 () Bool)

(assert (=> d!1141941 m!4406791))

(assert (=> d!1141941 m!4406111))

(assert (=> b!3851697 m!4406767))

(assert (=> b!3851697 m!4406775))

(assert (=> b!3851697 m!4406775))

(assert (=> b!3851697 m!4406777))

(assert (=> b!3851697 m!4406777))

(declare-fun m!4406793 () Bool)

(assert (=> b!3851697 m!4406793))

(assert (=> b!3851101 d!1141941))

(declare-fun d!1141943 () Bool)

(declare-fun res!1559333 () Bool)

(declare-fun e!2380708 () Bool)

(assert (=> d!1141943 (=> (not res!1559333) (not e!2380708))))

(assert (=> d!1141943 (= res!1559333 (not (isEmpty!24150 (originalCharacters!6907 (h!46227 prefixTokens!80)))))))

(assert (=> d!1141943 (= (inv!54958 (h!46227 prefixTokens!80)) e!2380708)))

(declare-fun b!3851701 () Bool)

(declare-fun res!1559334 () Bool)

(assert (=> b!3851701 (=> (not res!1559334) (not e!2380708))))

(assert (=> b!3851701 (= res!1559334 (= (originalCharacters!6907 (h!46227 prefixTokens!80)) (list!15189 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (value!200385 (h!46227 prefixTokens!80))))))))

(declare-fun b!3851702 () Bool)

(assert (=> b!3851702 (= e!2380708 (= (size!30696 (h!46227 prefixTokens!80)) (size!30695 (originalCharacters!6907 (h!46227 prefixTokens!80)))))))

(assert (= (and d!1141943 res!1559333) b!3851701))

(assert (= (and b!3851701 res!1559334) b!3851702))

(declare-fun b_lambda!112581 () Bool)

(assert (=> (not b_lambda!112581) (not b!3851701)))

(declare-fun t!311930 () Bool)

(declare-fun tb!222299 () Bool)

(assert (=> (and b!3851126 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80))))) t!311930) tb!222299))

(declare-fun b!3851703 () Bool)

(declare-fun e!2380709 () Bool)

(declare-fun tp!1167368 () Bool)

(assert (=> b!3851703 (= e!2380709 (and (inv!54961 (c!670729 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (value!200385 (h!46227 prefixTokens!80))))) tp!1167368))))

(declare-fun result!270844 () Bool)

(assert (=> tb!222299 (= result!270844 (and (inv!54962 (dynLambda!17611 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (value!200385 (h!46227 prefixTokens!80)))) e!2380709))))

(assert (= tb!222299 b!3851703))

(declare-fun m!4406795 () Bool)

(assert (=> b!3851703 m!4406795))

(declare-fun m!4406797 () Bool)

(assert (=> tb!222299 m!4406797))

(assert (=> b!3851701 t!311930))

(declare-fun b_and!287697 () Bool)

(assert (= b_and!287691 (and (=> t!311930 result!270844) b_and!287697)))

(declare-fun t!311932 () Bool)

(declare-fun tb!222301 () Bool)

(assert (=> (and b!3851116 (= (toChars!8586 (transformation!6307 (h!46226 rules!2768))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80))))) t!311932) tb!222301))

(declare-fun result!270846 () Bool)

(assert (= result!270846 result!270844))

(assert (=> b!3851701 t!311932))

(declare-fun b_and!287699 () Bool)

(assert (= b_and!287693 (and (=> t!311932 result!270846) b_and!287699)))

(declare-fun t!311934 () Bool)

(declare-fun tb!222303 () Bool)

(assert (=> (and b!3851113 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80))))) t!311934) tb!222303))

(declare-fun result!270848 () Bool)

(assert (= result!270848 result!270844))

(assert (=> b!3851701 t!311934))

(declare-fun b_and!287701 () Bool)

(assert (= b_and!287695 (and (=> t!311934 result!270848) b_and!287701)))

(declare-fun m!4406799 () Bool)

(assert (=> d!1141943 m!4406799))

(declare-fun m!4406801 () Bool)

(assert (=> b!3851701 m!4406801))

(assert (=> b!3851701 m!4406801))

(declare-fun m!4406803 () Bool)

(assert (=> b!3851701 m!4406803))

(declare-fun m!4406805 () Bool)

(assert (=> b!3851702 m!4406805))

(assert (=> b!3851127 d!1141943))

(declare-fun d!1141945 () Bool)

(declare-fun lt!1337773 () Int)

(assert (=> d!1141945 (>= lt!1337773 0)))

(declare-fun e!2380710 () Int)

(assert (=> d!1141945 (= lt!1337773 e!2380710)))

(declare-fun c!670836 () Bool)

(assert (=> d!1141945 (= c!670836 (is-Nil!40804 suffix!1176))))

(assert (=> d!1141945 (= (size!30695 suffix!1176) lt!1337773)))

(declare-fun b!3851704 () Bool)

(assert (=> b!3851704 (= e!2380710 0)))

(declare-fun b!3851705 () Bool)

(assert (=> b!3851705 (= e!2380710 (+ 1 (size!30695 (t!311879 suffix!1176))))))

(assert (= (and d!1141945 c!670836) b!3851704))

(assert (= (and d!1141945 (not c!670836)) b!3851705))

(declare-fun m!4406807 () Bool)

(assert (=> b!3851705 m!4406807))

(assert (=> b!3851105 d!1141945))

(declare-fun d!1141947 () Bool)

(declare-fun lt!1337774 () Int)

(assert (=> d!1141947 (>= lt!1337774 0)))

(declare-fun e!2380711 () Int)

(assert (=> d!1141947 (= lt!1337774 e!2380711)))

(declare-fun c!670837 () Bool)

(assert (=> d!1141947 (= c!670837 (is-Nil!40804 (_2!23131 (v!39018 lt!1337525))))))

(assert (=> d!1141947 (= (size!30695 (_2!23131 (v!39018 lt!1337525))) lt!1337774)))

(declare-fun b!3851706 () Bool)

(assert (=> b!3851706 (= e!2380711 0)))

(declare-fun b!3851707 () Bool)

(assert (=> b!3851707 (= e!2380711 (+ 1 (size!30695 (t!311879 (_2!23131 (v!39018 lt!1337525))))))))

(assert (= (and d!1141947 c!670837) b!3851706))

(assert (= (and d!1141947 (not c!670837)) b!3851707))

(declare-fun m!4406809 () Bool)

(assert (=> b!3851707 m!4406809))

(assert (=> b!3851105 d!1141947))

(declare-fun d!1141949 () Bool)

(assert (=> d!1141949 (= (isEmpty!24149 rules!2768) (is-Nil!40806 rules!2768))))

(assert (=> b!3851104 d!1141949))

(declare-fun d!1141951 () Bool)

(assert (=> d!1141951 (= (isEmpty!24151 prefixTokens!80) (is-Nil!40807 prefixTokens!80))))

(assert (=> b!3851115 d!1141951))

(declare-fun d!1141953 () Bool)

(assert (=> d!1141953 (= (inv!54954 (tag!7167 (rule!9161 (h!46227 suffixTokens!72)))) (= (mod (str.len (value!200384 (tag!7167 (rule!9161 (h!46227 suffixTokens!72))))) 2) 0))))

(assert (=> b!3851125 d!1141953))

(declare-fun d!1141955 () Bool)

(declare-fun res!1559335 () Bool)

(declare-fun e!2380712 () Bool)

(assert (=> d!1141955 (=> (not res!1559335) (not e!2380712))))

(assert (=> d!1141955 (= res!1559335 (semiInverseModEq!2702 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (toValue!8727 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72))))))))

(assert (=> d!1141955 (= (inv!54957 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) e!2380712)))

(declare-fun b!3851708 () Bool)

(assert (=> b!3851708 (= e!2380712 (equivClasses!2601 (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (toValue!8727 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72))))))))

(assert (= (and d!1141955 res!1559335) b!3851708))

(declare-fun m!4406811 () Bool)

(assert (=> d!1141955 m!4406811))

(declare-fun m!4406813 () Bool)

(assert (=> b!3851708 m!4406813))

(assert (=> b!3851125 d!1141955))

(declare-fun b!3851719 () Bool)

(declare-fun e!2380715 () Bool)

(assert (=> b!3851719 (= e!2380715 tp_is_empty!19395)))

(declare-fun b!3851721 () Bool)

(declare-fun tp!1167382 () Bool)

(assert (=> b!3851721 (= e!2380715 tp!1167382)))

(declare-fun b!3851722 () Bool)

(declare-fun tp!1167381 () Bool)

(declare-fun tp!1167383 () Bool)

(assert (=> b!3851722 (= e!2380715 (and tp!1167381 tp!1167383))))

(assert (=> b!3851117 (= tp!1167292 e!2380715)))

(declare-fun b!3851720 () Bool)

(declare-fun tp!1167380 () Bool)

(declare-fun tp!1167379 () Bool)

(assert (=> b!3851720 (= e!2380715 (and tp!1167380 tp!1167379))))

(assert (= (and b!3851117 (is-ElementMatch!11212 (regex!6307 (rule!9161 (h!46227 prefixTokens!80))))) b!3851719))

(assert (= (and b!3851117 (is-Concat!17750 (regex!6307 (rule!9161 (h!46227 prefixTokens!80))))) b!3851720))

(assert (= (and b!3851117 (is-Star!11212 (regex!6307 (rule!9161 (h!46227 prefixTokens!80))))) b!3851721))

(assert (= (and b!3851117 (is-Union!11212 (regex!6307 (rule!9161 (h!46227 prefixTokens!80))))) b!3851722))

(declare-fun b!3851727 () Bool)

(declare-fun e!2380718 () Bool)

(declare-fun tp!1167386 () Bool)

(assert (=> b!3851727 (= e!2380718 (and tp_is_empty!19395 tp!1167386))))

(assert (=> b!3851111 (= tp!1167297 e!2380718)))

(assert (= (and b!3851111 (is-Cons!40804 (originalCharacters!6907 (h!46227 prefixTokens!80)))) b!3851727))

(declare-fun b!3851728 () Bool)

(declare-fun e!2380719 () Bool)

(declare-fun tp!1167387 () Bool)

(assert (=> b!3851728 (= e!2380719 (and tp_is_empty!19395 tp!1167387))))

(assert (=> b!3851121 (= tp!1167291 e!2380719)))

(assert (= (and b!3851121 (is-Cons!40804 (t!311879 suffixResult!91))) b!3851728))

(declare-fun b!3851729 () Bool)

(declare-fun e!2380720 () Bool)

(assert (=> b!3851729 (= e!2380720 tp_is_empty!19395)))

(declare-fun b!3851731 () Bool)

(declare-fun tp!1167391 () Bool)

(assert (=> b!3851731 (= e!2380720 tp!1167391)))

(declare-fun b!3851732 () Bool)

(declare-fun tp!1167390 () Bool)

(declare-fun tp!1167392 () Bool)

(assert (=> b!3851732 (= e!2380720 (and tp!1167390 tp!1167392))))

(assert (=> b!3851120 (= tp!1167304 e!2380720)))

(declare-fun b!3851730 () Bool)

(declare-fun tp!1167389 () Bool)

(declare-fun tp!1167388 () Bool)

(assert (=> b!3851730 (= e!2380720 (and tp!1167389 tp!1167388))))

(assert (= (and b!3851120 (is-ElementMatch!11212 (regex!6307 (h!46226 rules!2768)))) b!3851729))

(assert (= (and b!3851120 (is-Concat!17750 (regex!6307 (h!46226 rules!2768)))) b!3851730))

(assert (= (and b!3851120 (is-Star!11212 (regex!6307 (h!46226 rules!2768)))) b!3851731))

(assert (= (and b!3851120 (is-Union!11212 (regex!6307 (h!46226 rules!2768)))) b!3851732))

(declare-fun b!3851733 () Bool)

(declare-fun e!2380721 () Bool)

(declare-fun tp!1167393 () Bool)

(assert (=> b!3851733 (= e!2380721 (and tp_is_empty!19395 tp!1167393))))

(assert (=> b!3851109 (= tp!1167298 e!2380721)))

(assert (= (and b!3851109 (is-Cons!40804 (t!311879 prefix!426))) b!3851733))

(declare-fun b!3851744 () Bool)

(declare-fun b_free!103249 () Bool)

(declare-fun b_next!103953 () Bool)

(assert (=> b!3851744 (= b_free!103249 (not b_next!103953))))

(declare-fun tb!222305 () Bool)

(declare-fun t!311936 () Bool)

(assert (=> (and b!3851744 (= (toValue!8727 (transformation!6307 (h!46226 (t!311881 rules!2768)))) (toValue!8727 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311936) tb!222305))

(declare-fun result!270856 () Bool)

(assert (= result!270856 result!270830))

(assert (=> d!1141927 t!311936))

(declare-fun b_and!287703 () Bool)

(declare-fun tp!1167405 () Bool)

(assert (=> b!3851744 (= tp!1167405 (and (=> t!311936 result!270856) b_and!287703))))

(declare-fun b_free!103251 () Bool)

(declare-fun b_next!103955 () Bool)

(assert (=> b!3851744 (= b_free!103251 (not b_next!103955))))

(declare-fun tb!222307 () Bool)

(declare-fun t!311938 () Bool)

(assert (=> (and b!3851744 (= (toChars!8586 (transformation!6307 (h!46226 (t!311881 rules!2768)))) (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311938) tb!222307))

(declare-fun result!270858 () Bool)

(assert (= result!270858 result!270822))

(assert (=> d!1141903 t!311938))

(declare-fun tb!222309 () Bool)

(declare-fun t!311940 () Bool)

(assert (=> (and b!3851744 (= (toChars!8586 (transformation!6307 (h!46226 (t!311881 rules!2768)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72))))) t!311940) tb!222309))

(declare-fun result!270860 () Bool)

(assert (= result!270860 result!270838))

(assert (=> b!3851658 t!311940))

(declare-fun tb!222311 () Bool)

(declare-fun t!311942 () Bool)

(assert (=> (and b!3851744 (= (toChars!8586 (transformation!6307 (h!46226 (t!311881 rules!2768)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80))))) t!311942) tb!222311))

(declare-fun result!270862 () Bool)

(assert (= result!270862 result!270844))

(assert (=> b!3851701 t!311942))

(declare-fun tp!1167403 () Bool)

(declare-fun b_and!287705 () Bool)

(assert (=> b!3851744 (= tp!1167403 (and (=> t!311938 result!270858) (=> t!311940 result!270860) (=> t!311942 result!270862) b_and!287705))))

(declare-fun e!2380731 () Bool)

(assert (=> b!3851744 (= e!2380731 (and tp!1167405 tp!1167403))))

(declare-fun b!3851743 () Bool)

(declare-fun e!2380733 () Bool)

(declare-fun tp!1167402 () Bool)

(assert (=> b!3851743 (= e!2380733 (and tp!1167402 (inv!54954 (tag!7167 (h!46226 (t!311881 rules!2768)))) (inv!54957 (transformation!6307 (h!46226 (t!311881 rules!2768)))) e!2380731))))

(declare-fun b!3851742 () Bool)

(declare-fun e!2380732 () Bool)

(declare-fun tp!1167404 () Bool)

(assert (=> b!3851742 (= e!2380732 (and e!2380733 tp!1167404))))

(assert (=> b!3851103 (= tp!1167305 e!2380732)))

(assert (= b!3851743 b!3851744))

(assert (= b!3851742 b!3851743))

(assert (= (and b!3851103 (is-Cons!40806 (t!311881 rules!2768))) b!3851742))

(declare-fun m!4406815 () Bool)

(assert (=> b!3851743 m!4406815))

(declare-fun m!4406817 () Bool)

(assert (=> b!3851743 m!4406817))

(declare-fun b!3851745 () Bool)

(declare-fun e!2380734 () Bool)

(declare-fun tp!1167406 () Bool)

(assert (=> b!3851745 (= e!2380734 (and tp_is_empty!19395 tp!1167406))))

(assert (=> b!3851102 (= tp!1167302 e!2380734)))

(assert (= (and b!3851102 (is-Cons!40804 (originalCharacters!6907 (h!46227 suffixTokens!72)))) b!3851745))

(declare-fun b!3851759 () Bool)

(declare-fun b_free!103253 () Bool)

(declare-fun b_next!103957 () Bool)

(assert (=> b!3851759 (= b_free!103253 (not b_next!103957))))

(declare-fun t!311944 () Bool)

(declare-fun tb!222313 () Bool)

(assert (=> (and b!3851759 (= (toValue!8727 (transformation!6307 (rule!9161 (h!46227 (t!311882 suffixTokens!72))))) (toValue!8727 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311944) tb!222313))

(declare-fun result!270866 () Bool)

(assert (= result!270866 result!270830))

(assert (=> d!1141927 t!311944))

(declare-fun b_and!287707 () Bool)

(declare-fun tp!1167420 () Bool)

(assert (=> b!3851759 (= tp!1167420 (and (=> t!311944 result!270866) b_and!287707))))

(declare-fun b_free!103255 () Bool)

(declare-fun b_next!103959 () Bool)

(assert (=> b!3851759 (= b_free!103255 (not b_next!103959))))

(declare-fun t!311946 () Bool)

(declare-fun tb!222315 () Bool)

(assert (=> (and b!3851759 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 suffixTokens!72))))) (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311946) tb!222315))

(declare-fun result!270868 () Bool)

(assert (= result!270868 result!270822))

(assert (=> d!1141903 t!311946))

(declare-fun t!311948 () Bool)

(declare-fun tb!222317 () Bool)

(assert (=> (and b!3851759 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 suffixTokens!72))))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72))))) t!311948) tb!222317))

(declare-fun result!270870 () Bool)

(assert (= result!270870 result!270838))

(assert (=> b!3851658 t!311948))

(declare-fun tb!222319 () Bool)

(declare-fun t!311950 () Bool)

(assert (=> (and b!3851759 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 suffixTokens!72))))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80))))) t!311950) tb!222319))

(declare-fun result!270872 () Bool)

(assert (= result!270872 result!270844))

(assert (=> b!3851701 t!311950))

(declare-fun tp!1167417 () Bool)

(declare-fun b_and!287709 () Bool)

(assert (=> b!3851759 (= tp!1167417 (and (=> t!311946 result!270868) (=> t!311948 result!270870) (=> t!311950 result!270872) b_and!287709))))

(declare-fun e!2380750 () Bool)

(assert (=> b!3851123 (= tp!1167303 e!2380750)))

(declare-fun b!3851756 () Bool)

(declare-fun tp!1167418 () Bool)

(declare-fun e!2380752 () Bool)

(assert (=> b!3851756 (= e!2380750 (and (inv!54958 (h!46227 (t!311882 suffixTokens!72))) e!2380752 tp!1167418))))

(declare-fun e!2380748 () Bool)

(assert (=> b!3851759 (= e!2380748 (and tp!1167420 tp!1167417))))

(declare-fun e!2380749 () Bool)

(declare-fun b!3851758 () Bool)

(declare-fun tp!1167419 () Bool)

(assert (=> b!3851758 (= e!2380749 (and tp!1167419 (inv!54954 (tag!7167 (rule!9161 (h!46227 (t!311882 suffixTokens!72))))) (inv!54957 (transformation!6307 (rule!9161 (h!46227 (t!311882 suffixTokens!72))))) e!2380748))))

(declare-fun b!3851757 () Bool)

(declare-fun tp!1167421 () Bool)

(assert (=> b!3851757 (= e!2380752 (and (inv!21 (value!200385 (h!46227 (t!311882 suffixTokens!72)))) e!2380749 tp!1167421))))

(assert (= b!3851758 b!3851759))

(assert (= b!3851757 b!3851758))

(assert (= b!3851756 b!3851757))

(assert (= (and b!3851123 (is-Cons!40807 (t!311882 suffixTokens!72))) b!3851756))

(declare-fun m!4406819 () Bool)

(assert (=> b!3851756 m!4406819))

(declare-fun m!4406821 () Bool)

(assert (=> b!3851758 m!4406821))

(declare-fun m!4406823 () Bool)

(assert (=> b!3851758 m!4406823))

(declare-fun m!4406825 () Bool)

(assert (=> b!3851757 m!4406825))

(declare-fun b!3851763 () Bool)

(declare-fun b_free!103257 () Bool)

(declare-fun b_next!103961 () Bool)

(assert (=> b!3851763 (= b_free!103257 (not b_next!103961))))

(declare-fun tb!222321 () Bool)

(declare-fun t!311952 () Bool)

(assert (=> (and b!3851763 (= (toValue!8727 (transformation!6307 (rule!9161 (h!46227 (t!311882 prefixTokens!80))))) (toValue!8727 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311952) tb!222321))

(declare-fun result!270874 () Bool)

(assert (= result!270874 result!270830))

(assert (=> d!1141927 t!311952))

(declare-fun tp!1167425 () Bool)

(declare-fun b_and!287711 () Bool)

(assert (=> b!3851763 (= tp!1167425 (and (=> t!311952 result!270874) b_and!287711))))

(declare-fun b_free!103259 () Bool)

(declare-fun b_next!103963 () Bool)

(assert (=> b!3851763 (= b_free!103259 (not b_next!103963))))

(declare-fun t!311954 () Bool)

(declare-fun tb!222323 () Bool)

(assert (=> (and b!3851763 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 prefixTokens!80))))) (toChars!8586 (transformation!6307 (rule!9161 (_1!23131 (v!39018 lt!1337525)))))) t!311954) tb!222323))

(declare-fun result!270876 () Bool)

(assert (= result!270876 result!270822))

(assert (=> d!1141903 t!311954))

(declare-fun tb!222325 () Bool)

(declare-fun t!311956 () Bool)

(assert (=> (and b!3851763 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 prefixTokens!80))))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72))))) t!311956) tb!222325))

(declare-fun result!270878 () Bool)

(assert (= result!270878 result!270838))

(assert (=> b!3851658 t!311956))

(declare-fun t!311958 () Bool)

(declare-fun tb!222327 () Bool)

(assert (=> (and b!3851763 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 prefixTokens!80))))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80))))) t!311958) tb!222327))

(declare-fun result!270880 () Bool)

(assert (= result!270880 result!270844))

(assert (=> b!3851701 t!311958))

(declare-fun tp!1167422 () Bool)

(declare-fun b_and!287713 () Bool)

(assert (=> b!3851763 (= tp!1167422 (and (=> t!311954 result!270876) (=> t!311956 result!270878) (=> t!311958 result!270880) b_and!287713))))

(declare-fun e!2380756 () Bool)

(assert (=> b!3851127 (= tp!1167294 e!2380756)))

(declare-fun b!3851760 () Bool)

(declare-fun e!2380758 () Bool)

(declare-fun tp!1167423 () Bool)

(assert (=> b!3851760 (= e!2380756 (and (inv!54958 (h!46227 (t!311882 prefixTokens!80))) e!2380758 tp!1167423))))

(declare-fun e!2380754 () Bool)

(assert (=> b!3851763 (= e!2380754 (and tp!1167425 tp!1167422))))

(declare-fun e!2380755 () Bool)

(declare-fun tp!1167424 () Bool)

(declare-fun b!3851762 () Bool)

(assert (=> b!3851762 (= e!2380755 (and tp!1167424 (inv!54954 (tag!7167 (rule!9161 (h!46227 (t!311882 prefixTokens!80))))) (inv!54957 (transformation!6307 (rule!9161 (h!46227 (t!311882 prefixTokens!80))))) e!2380754))))

(declare-fun tp!1167426 () Bool)

(declare-fun b!3851761 () Bool)

(assert (=> b!3851761 (= e!2380758 (and (inv!21 (value!200385 (h!46227 (t!311882 prefixTokens!80)))) e!2380755 tp!1167426))))

(assert (= b!3851762 b!3851763))

(assert (= b!3851761 b!3851762))

(assert (= b!3851760 b!3851761))

(assert (= (and b!3851127 (is-Cons!40807 (t!311882 prefixTokens!80))) b!3851760))

(declare-fun m!4406827 () Bool)

(assert (=> b!3851760 m!4406827))

(declare-fun m!4406829 () Bool)

(assert (=> b!3851762 m!4406829))

(declare-fun m!4406831 () Bool)

(assert (=> b!3851762 m!4406831))

(declare-fun m!4406833 () Bool)

(assert (=> b!3851761 m!4406833))

(declare-fun b!3851764 () Bool)

(declare-fun e!2380759 () Bool)

(declare-fun tp!1167427 () Bool)

(assert (=> b!3851764 (= e!2380759 (and tp_is_empty!19395 tp!1167427))))

(assert (=> b!3851114 (= tp!1167299 e!2380759)))

(assert (= (and b!3851114 (is-Cons!40804 (t!311879 suffix!1176))) b!3851764))

(declare-fun b!3851765 () Bool)

(declare-fun e!2380760 () Bool)

(assert (=> b!3851765 (= e!2380760 tp_is_empty!19395)))

(declare-fun b!3851767 () Bool)

(declare-fun tp!1167431 () Bool)

(assert (=> b!3851767 (= e!2380760 tp!1167431)))

(declare-fun b!3851768 () Bool)

(declare-fun tp!1167430 () Bool)

(declare-fun tp!1167432 () Bool)

(assert (=> b!3851768 (= e!2380760 (and tp!1167430 tp!1167432))))

(assert (=> b!3851125 (= tp!1167306 e!2380760)))

(declare-fun b!3851766 () Bool)

(declare-fun tp!1167429 () Bool)

(declare-fun tp!1167428 () Bool)

(assert (=> b!3851766 (= e!2380760 (and tp!1167429 tp!1167428))))

(assert (= (and b!3851125 (is-ElementMatch!11212 (regex!6307 (rule!9161 (h!46227 suffixTokens!72))))) b!3851765))

(assert (= (and b!3851125 (is-Concat!17750 (regex!6307 (rule!9161 (h!46227 suffixTokens!72))))) b!3851766))

(assert (= (and b!3851125 (is-Star!11212 (regex!6307 (rule!9161 (h!46227 suffixTokens!72))))) b!3851767))

(assert (= (and b!3851125 (is-Union!11212 (regex!6307 (rule!9161 (h!46227 suffixTokens!72))))) b!3851768))

(declare-fun b_lambda!112583 () Bool)

(assert (= b_lambda!112581 (or (and b!3851113 b_free!103235 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))))) (and b!3851763 b_free!103259 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 prefixTokens!80))))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))))) (and b!3851759 b_free!103255 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 suffixTokens!72))))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))))) (and b!3851744 b_free!103251 (= (toChars!8586 (transformation!6307 (h!46226 (t!311881 rules!2768)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))))) (and b!3851126 b_free!103227) (and b!3851116 b_free!103231 (= (toChars!8586 (transformation!6307 (h!46226 rules!2768))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))))) b_lambda!112583)))

(declare-fun b_lambda!112585 () Bool)

(assert (= b_lambda!112579 (or (and b!3851113 b_free!103235) (and b!3851744 b_free!103251 (= (toChars!8586 (transformation!6307 (h!46226 (t!311881 rules!2768)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))))) (and b!3851126 b_free!103227 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 prefixTokens!80)))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))))) (and b!3851759 b_free!103255 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 suffixTokens!72))))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))))) (and b!3851763 b_free!103259 (= (toChars!8586 (transformation!6307 (rule!9161 (h!46227 (t!311882 prefixTokens!80))))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))))) (and b!3851116 b_free!103231 (= (toChars!8586 (transformation!6307 (h!46226 rules!2768))) (toChars!8586 (transformation!6307 (rule!9161 (h!46227 suffixTokens!72)))))) b_lambda!112585)))

(push 1)

(assert (not b_next!103963))

(assert (not d!1141911))

(assert (not d!1141829))

(assert (not tb!222281))

(assert (not b!3851386))

(assert (not bm!282243))

(assert (not d!1141873))

(assert (not b_lambda!112577))

(assert (not b!3851698))

(assert (not b_next!103931))

(assert (not b!3851694))

(assert (not d!1141921))

(assert (not b!3851523))

(assert (not b!3851387))

(assert (not b!3851376))

(assert (not b!3851623))

(assert (not b!3851318))

(assert b_and!287689)

(assert (not b!3851466))

(assert (not d!1141931))

(assert (not b!3851663))

(assert b_and!287701)

(assert (not b!3851529))

(assert (not b!3851496))

(assert (not b!3851728))

(assert (not d!1141903))

(assert (not b!3851745))

(assert (not d!1141933))

(assert (not b!3851761))

(assert (not b_next!103961))

(assert b_and!287703)

(assert (not b!3851705))

(assert (not b!3851697))

(assert (not b!3851319))

(assert (not b!3851756))

(assert b_and!287707)

(assert (not b!3851539))

(assert (not b!3851522))

(assert (not b!3851732))

(assert (not b!3851766))

(assert (not b!3851742))

(assert (not b!3851620))

(assert (not b!3851764))

(assert (not b!3851591))

(assert (not b_next!103939))

(assert b_and!287697)

(assert (not b!3851572))

(assert (not b!3851637))

(assert (not b!3851700))

(assert (not b!3851722))

(assert (not b!3851608))

(assert (not b!3851652))

(assert (not b_next!103929))

(assert (not b!3851731))

(assert (not b!3851619))

(assert b_and!287685)

(assert b_and!287705)

(assert (not d!1141907))

(assert (not bm!282237))

(assert (not b!3851730))

(assert (not b_next!103957))

(assert (not d!1141915))

(assert (not b!3851659))

(assert (not b!3851667))

(assert (not d!1141925))

(assert (not b!3851660))

(assert (not b!3851460))

(assert (not b!3851702))

(assert (not d!1141923))

(assert (not b!3851628))

(assert (not b!3851758))

(assert (not b!3851525))

(assert (not b!3851733))

(assert (not b!3851762))

(assert (not b!3851707))

(assert (not b!3851708))

(assert (not d!1141855))

(assert (not d!1141849))

(assert (not b!3851459))

(assert (not b!3851693))

(assert (not b!3851727))

(assert (not b!3851665))

(assert (not b!3851461))

(assert (not b!3851626))

(assert b_and!287687)

(assert (not d!1141905))

(assert (not b!3851768))

(assert (not b!3851375))

(assert (not b!3851580))

(assert (not d!1141943))

(assert (not b!3851596))

(assert (not b!3851672))

(assert (not d!1141901))

(assert (not b!3851566))

(assert (not d!1141851))

(assert (not b!3851651))

(assert (not b!3851382))

(assert (not b!3851582))

(assert (not b!3851703))

(assert (not b!3851695))

(assert (not b!3851720))

(assert (not b!3851721))

(assert (not b!3851692))

(assert (not b_next!103953))

(assert (not b!3851668))

(assert (not b!3851757))

(assert (not tb!222299))

(assert (not b!3851760))

(assert (not b!3851701))

(assert (not b_next!103955))

(assert (not d!1141935))

(assert (not b!3851662))

(assert (not d!1141955))

(assert (not d!1141913))

(assert b_and!287699)

(assert (not d!1141909))

(assert b_and!287713)

(assert (not b!3851607))

(assert b_and!287711)

(assert (not b!3851638))

(assert (not b_lambda!112575))

(assert (not d!1141941))

(assert (not d!1141937))

(assert (not b_next!103959))

(assert (not b!3851458))

(assert (not b!3851699))

(assert (not b!3851327))

(assert (not b_lambda!112583))

(assert (not d!1141891))

(assert (not b!3851462))

(assert (not b!3851633))

(assert (not b!3851743))

(assert tp_is_empty!19395)

(assert (not b!3851641))

(assert (not b!3851658))

(assert (not b!3851463))

(assert (not d!1141835))

(assert (not b_lambda!112585))

(assert (not b!3851567))

(assert (not b!3851671))

(assert (not b_next!103933))

(assert (not d!1141777))

(assert (not b!3851621))

(assert (not b!3851767))

(assert (not d!1141939))

(assert (not b_next!103937))

(assert (not tb!222293))

(assert (not b_next!103935))

(assert (not tb!222287))

(assert b_and!287709)

(assert (not b!3851384))

(assert (not b!3851465))

(assert (not b!3851625))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!103931))

(assert b_and!287689)

(assert b_and!287701)

(assert b_and!287707)

(assert (not b_next!103929))

(assert (not b_next!103957))

(assert b_and!287687)

(assert (not b_next!103953))

(assert (not b_next!103959))

(assert (not b_next!103933))

(assert (not b_next!103937))

(assert (not b_next!103963))

(assert (not b_next!103935))

(assert b_and!287709)

(assert (not b_next!103961))

(assert b_and!287703)

(assert (not b_next!103939))

(assert b_and!287697)

(assert b_and!287685)

(assert b_and!287705)

(assert (not b_next!103955))

(assert b_and!287711)

(assert b_and!287699)

(assert b_and!287713)

(check-sat)

(pop 1)

