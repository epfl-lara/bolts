; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368524 () Bool)

(assert start!368524)

(declare-fun b!3928381 () Bool)

(declare-fun b_free!107165 () Bool)

(declare-fun b_next!107869 () Bool)

(assert (=> b!3928381 (= b_free!107165 (not b_next!107869))))

(declare-fun tp!1195982 () Bool)

(declare-fun b_and!299663 () Bool)

(assert (=> b!3928381 (= tp!1195982 b_and!299663)))

(declare-fun b_free!107167 () Bool)

(declare-fun b_next!107871 () Bool)

(assert (=> b!3928381 (= b_free!107167 (not b_next!107871))))

(declare-fun tp!1195980 () Bool)

(declare-fun b_and!299665 () Bool)

(assert (=> b!3928381 (= tp!1195980 b_and!299665)))

(declare-fun b!3928394 () Bool)

(declare-fun b_free!107169 () Bool)

(declare-fun b_next!107873 () Bool)

(assert (=> b!3928394 (= b_free!107169 (not b_next!107873))))

(declare-fun tp!1195971 () Bool)

(declare-fun b_and!299667 () Bool)

(assert (=> b!3928394 (= tp!1195971 b_and!299667)))

(declare-fun b_free!107171 () Bool)

(declare-fun b_next!107875 () Bool)

(assert (=> b!3928394 (= b_free!107171 (not b_next!107875))))

(declare-fun tp!1195986 () Bool)

(declare-fun b_and!299669 () Bool)

(assert (=> b!3928394 (= tp!1195986 b_and!299669)))

(declare-fun b!3928365 () Bool)

(declare-fun b_free!107173 () Bool)

(declare-fun b_next!107877 () Bool)

(assert (=> b!3928365 (= b_free!107173 (not b_next!107877))))

(declare-fun tp!1195983 () Bool)

(declare-fun b_and!299671 () Bool)

(assert (=> b!3928365 (= tp!1195983 b_and!299671)))

(declare-fun b_free!107175 () Bool)

(declare-fun b_next!107879 () Bool)

(assert (=> b!3928365 (= b_free!107175 (not b_next!107879))))

(declare-fun tp!1195981 () Bool)

(declare-fun b_and!299673 () Bool)

(assert (=> b!3928365 (= tp!1195981 b_and!299673)))

(declare-fun b!3928353 () Bool)

(declare-datatypes ((Unit!60067 0))(
  ( (Unit!60068) )
))
(declare-fun e!2430089 () Unit!60067)

(declare-fun Unit!60069 () Unit!60067)

(assert (=> b!3928353 (= e!2430089 Unit!60069)))

(declare-fun lt!1371477 () Unit!60067)

(declare-datatypes ((C!23016 0))(
  ( (C!23017 (val!13602 Int)) )
))
(declare-datatypes ((List!41835 0))(
  ( (Nil!41711) (Cons!41711 (h!47131 C!23016) (t!325258 List!41835)) )
))
(declare-fun prefix!426 () List!41835)

(declare-fun suffix!1176 () List!41835)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2468 (List!41835 List!41835) Unit!60067)

(assert (=> b!3928353 (= lt!1371477 (lemmaConcatTwoListThenFirstIsPrefix!2468 prefix!426 suffix!1176))))

(declare-fun lt!1371450 () List!41835)

(declare-fun isPrefix!3605 (List!41835 List!41835) Bool)

(assert (=> b!3928353 (isPrefix!3605 prefix!426 lt!1371450)))

(declare-fun lt!1371478 () List!41835)

(declare-fun lt!1371444 () Unit!60067)

(declare-fun lemmaIsPrefixSameLengthThenSameList!801 (List!41835 List!41835 List!41835) Unit!60067)

(assert (=> b!3928353 (= lt!1371444 (lemmaIsPrefixSameLengthThenSameList!801 lt!1371478 prefix!426 lt!1371450))))

(assert (=> b!3928353 (= lt!1371478 prefix!426)))

(declare-fun lt!1371479 () Unit!60067)

(declare-datatypes ((List!41836 0))(
  ( (Nil!41712) (Cons!41712 (h!47132 (_ BitVec 16)) (t!325259 List!41836)) )
))
(declare-datatypes ((TokenValue!6740 0))(
  ( (FloatLiteralValue!13480 (text!47625 List!41836)) (TokenValueExt!6739 (__x!25697 Int)) (Broken!33700 (value!206143 List!41836)) (Object!6863) (End!6740) (Def!6740) (Underscore!6740) (Match!6740) (Else!6740) (Error!6740) (Case!6740) (If!6740) (Extends!6740) (Abstract!6740) (Class!6740) (Val!6740) (DelimiterValue!13480 (del!6800 List!41836)) (KeywordValue!6746 (value!206144 List!41836)) (CommentValue!13480 (value!206145 List!41836)) (WhitespaceValue!13480 (value!206146 List!41836)) (IndentationValue!6740 (value!206147 List!41836)) (String!47417) (Int32!6740) (Broken!33701 (value!206148 List!41836)) (Boolean!6741) (Unit!60070) (OperatorValue!6743 (op!6800 List!41836)) (IdentifierValue!13480 (value!206149 List!41836)) (IdentifierValue!13481 (value!206150 List!41836)) (WhitespaceValue!13481 (value!206151 List!41836)) (True!13480) (False!13480) (Broken!33702 (value!206152 List!41836)) (Broken!33703 (value!206153 List!41836)) (True!13481) (RightBrace!6740) (RightBracket!6740) (Colon!6740) (Null!6740) (Comma!6740) (LeftBracket!6740) (False!13481) (LeftBrace!6740) (ImaginaryLiteralValue!6740 (text!47626 List!41836)) (StringLiteralValue!20220 (value!206154 List!41836)) (EOFValue!6740 (value!206155 List!41836)) (IdentValue!6740 (value!206156 List!41836)) (DelimiterValue!13481 (value!206157 List!41836)) (DedentValue!6740 (value!206158 List!41836)) (NewLineValue!6740 (value!206159 List!41836)) (IntegerValue!20220 (value!206160 (_ BitVec 32)) (text!47627 List!41836)) (IntegerValue!20221 (value!206161 Int) (text!47628 List!41836)) (Times!6740) (Or!6740) (Equal!6740) (Minus!6740) (Broken!33704 (value!206162 List!41836)) (And!6740) (Div!6740) (LessEqual!6740) (Mod!6740) (Concat!18155) (Not!6740) (Plus!6740) (SpaceValue!6740 (value!206163 List!41836)) (IntegerValue!20222 (value!206164 Int) (text!47629 List!41836)) (StringLiteralValue!20221 (text!47630 List!41836)) (FloatLiteralValue!13481 (text!47631 List!41836)) (BytesLiteralValue!6740 (value!206165 List!41836)) (CommentValue!13481 (value!206166 List!41836)) (StringLiteralValue!20222 (value!206167 List!41836)) (ErrorTokenValue!6740 (msg!6801 List!41836)) )
))
(declare-datatypes ((Regex!11415 0))(
  ( (ElementMatch!11415 (c!682496 C!23016)) (Concat!18156 (regOne!23342 Regex!11415) (regTwo!23342 Regex!11415)) (EmptyExpr!11415) (Star!11415 (reg!11744 Regex!11415)) (EmptyLang!11415) (Union!11415 (regOne!23343 Regex!11415) (regTwo!23343 Regex!11415)) )
))
(declare-datatypes ((String!47418 0))(
  ( (String!47419 (value!206168 String)) )
))
(declare-datatypes ((IArray!25447 0))(
  ( (IArray!25448 (innerList!12781 List!41835)) )
))
(declare-datatypes ((Conc!12721 0))(
  ( (Node!12721 (left!31826 Conc!12721) (right!32156 Conc!12721) (csize!25672 Int) (cheight!12932 Int)) (Leaf!19683 (xs!16027 IArray!25447) (csize!25673 Int)) (Empty!12721) )
))
(declare-datatypes ((BalanceConc!25036 0))(
  ( (BalanceConc!25037 (c!682497 Conc!12721)) )
))
(declare-datatypes ((TokenValueInjection!12908 0))(
  ( (TokenValueInjection!12909 (toValue!8962 Int) (toChars!8821 Int)) )
))
(declare-datatypes ((Rule!12820 0))(
  ( (Rule!12821 (regex!6510 Regex!11415) (tag!7370 String!47418) (isSeparator!6510 Bool) (transformation!6510 TokenValueInjection!12908)) )
))
(declare-datatypes ((Token!12158 0))(
  ( (Token!12159 (value!206169 TokenValue!6740) (rule!9454 Rule!12820) (size!31297 Int) (originalCharacters!7110 List!41835)) )
))
(declare-datatypes ((tuple2!40986 0))(
  ( (tuple2!40987 (_1!23627 Token!12158) (_2!23627 List!41835)) )
))
(declare-datatypes ((Option!8930 0))(
  ( (None!8929) (Some!8929 (v!39255 tuple2!40986)) )
))
(declare-fun lt!1371457 () Option!8930)

(declare-fun lemmaSamePrefixThenSameSuffix!1826 (List!41835 List!41835 List!41835 List!41835 List!41835) Unit!60067)

(assert (=> b!3928353 (= lt!1371479 (lemmaSamePrefixThenSameSuffix!1826 lt!1371478 (_2!23627 (v!39255 lt!1371457)) prefix!426 suffix!1176 lt!1371450))))

(assert (=> b!3928353 false))

(declare-fun e!2430054 () Bool)

(declare-fun e!2430070 () Bool)

(declare-datatypes ((List!41837 0))(
  ( (Nil!41713) (Cons!41713 (h!47133 Token!12158) (t!325260 List!41837)) )
))
(declare-fun suffixTokens!72 () List!41837)

(declare-fun b!3928354 () Bool)

(declare-fun tp!1195974 () Bool)

(declare-fun inv!55905 (Token!12158) Bool)

(assert (=> b!3928354 (= e!2430054 (and (inv!55905 (h!47133 suffixTokens!72)) e!2430070 tp!1195974))))

(declare-fun b!3928355 () Bool)

(declare-fun res!1589400 () Bool)

(declare-fun e!2430081 () Bool)

(assert (=> b!3928355 (=> res!1589400 e!2430081)))

(declare-datatypes ((tuple2!40988 0))(
  ( (tuple2!40989 (_1!23628 List!41837) (_2!23628 List!41835)) )
))
(declare-fun lt!1371483 () tuple2!40988)

(assert (=> b!3928355 (= res!1589400 (or (not (= lt!1371483 (tuple2!40989 (_1!23628 lt!1371483) (_2!23628 lt!1371483)))) (= (_2!23627 (v!39255 lt!1371457)) suffix!1176)))))

(declare-fun b!3928356 () Bool)

(declare-fun e!2430077 () Bool)

(declare-fun e!2430066 () Bool)

(assert (=> b!3928356 (= e!2430077 e!2430066)))

(declare-fun res!1589402 () Bool)

(assert (=> b!3928356 (=> res!1589402 e!2430066)))

(declare-fun lt!1371484 () List!41835)

(assert (=> b!3928356 (= res!1589402 (not (= lt!1371484 prefix!426)))))

(declare-fun lt!1371451 () List!41835)

(declare-fun ++!10777 (List!41835 List!41835) List!41835)

(assert (=> b!3928356 (= lt!1371484 (++!10777 lt!1371478 lt!1371451))))

(declare-fun getSuffix!2060 (List!41835 List!41835) List!41835)

(assert (=> b!3928356 (= lt!1371451 (getSuffix!2060 prefix!426 lt!1371478))))

(declare-fun b!3928357 () Bool)

(declare-fun Unit!60071 () Unit!60067)

(assert (=> b!3928357 (= e!2430089 Unit!60071)))

(declare-fun b!3928358 () Bool)

(declare-fun res!1589409 () Bool)

(declare-fun e!2430076 () Bool)

(assert (=> b!3928358 (=> (not res!1589409) (not e!2430076))))

(declare-datatypes ((LexerInterface!6099 0))(
  ( (LexerInterfaceExt!6096 (__x!25698 Int)) (Lexer!6097) )
))
(declare-fun thiss!20629 () LexerInterface!6099)

(declare-datatypes ((List!41838 0))(
  ( (Nil!41714) (Cons!41714 (h!47134 Rule!12820) (t!325261 List!41838)) )
))
(declare-fun rules!2768 () List!41838)

(declare-fun rulesInvariant!5442 (LexerInterface!6099 List!41838) Bool)

(assert (=> b!3928358 (= res!1589409 (rulesInvariant!5442 thiss!20629 rules!2768))))

(declare-fun b!3928359 () Bool)

(declare-fun res!1589395 () Bool)

(assert (=> b!3928359 (=> (not res!1589395) (not e!2430076))))

(declare-fun isEmpty!24860 (List!41838) Bool)

(assert (=> b!3928359 (= res!1589395 (not (isEmpty!24860 rules!2768)))))

(declare-fun b!3928360 () Bool)

(declare-fun e!2430059 () Bool)

(declare-fun size!31298 (List!41835) Int)

(assert (=> b!3928360 (= e!2430059 (= (size!31297 (_1!23627 (v!39255 lt!1371457))) (size!31298 (originalCharacters!7110 (_1!23627 (v!39255 lt!1371457))))))))

(declare-fun b!3928361 () Bool)

(declare-fun c!682494 () Bool)

(declare-fun lt!1371455 () List!41837)

(declare-fun isEmpty!24861 (List!41837) Bool)

(assert (=> b!3928361 (= c!682494 (isEmpty!24861 lt!1371455))))

(declare-fun prefixTokens!80 () List!41837)

(declare-fun tail!6061 (List!41837) List!41837)

(assert (=> b!3928361 (= lt!1371455 (tail!6061 prefixTokens!80))))

(declare-fun e!2430083 () Unit!60067)

(declare-fun e!2430072 () Unit!60067)

(assert (=> b!3928361 (= e!2430083 e!2430072)))

(declare-fun b!3928362 () Bool)

(declare-fun e!2430071 () Bool)

(declare-fun e!2430060 () Bool)

(assert (=> b!3928362 (= e!2430071 e!2430060)))

(declare-fun res!1589399 () Bool)

(assert (=> b!3928362 (=> res!1589399 e!2430060)))

(declare-fun lt!1371454 () List!41835)

(assert (=> b!3928362 (= res!1589399 (not (= lt!1371454 (_2!23627 (v!39255 lt!1371457)))))))

(assert (=> b!3928362 (= (_2!23627 (v!39255 lt!1371457)) lt!1371454)))

(declare-fun lt!1371473 () Unit!60067)

(assert (=> b!3928362 (= lt!1371473 (lemmaSamePrefixThenSameSuffix!1826 lt!1371478 (_2!23627 (v!39255 lt!1371457)) lt!1371478 lt!1371454 lt!1371450))))

(declare-fun lt!1371459 () List!41835)

(assert (=> b!3928362 (isPrefix!3605 lt!1371478 lt!1371459)))

(declare-fun lt!1371467 () Unit!60067)

(assert (=> b!3928362 (= lt!1371467 (lemmaConcatTwoListThenFirstIsPrefix!2468 lt!1371478 lt!1371454))))

(declare-fun b!3928363 () Bool)

(declare-fun e!2430065 () Bool)

(declare-fun e!2430078 () Bool)

(declare-fun tp!1195972 () Bool)

(declare-fun inv!55902 (String!47418) Bool)

(declare-fun inv!55906 (TokenValueInjection!12908) Bool)

(assert (=> b!3928363 (= e!2430078 (and tp!1195972 (inv!55902 (tag!7370 (rule!9454 (h!47133 prefixTokens!80)))) (inv!55906 (transformation!6510 (rule!9454 (h!47133 prefixTokens!80)))) e!2430065))))

(declare-fun b!3928364 () Bool)

(declare-fun tp!1195975 () Bool)

(declare-fun e!2430073 () Bool)

(declare-fun e!2430057 () Bool)

(assert (=> b!3928364 (= e!2430073 (and (inv!55905 (h!47133 prefixTokens!80)) e!2430057 tp!1195975))))

(assert (=> b!3928365 (= e!2430065 (and tp!1195983 tp!1195981))))

(declare-fun b!3928366 () Bool)

(declare-fun e!2430062 () Bool)

(assert (=> b!3928366 (= e!2430076 e!2430062)))

(declare-fun res!1589403 () Bool)

(assert (=> b!3928366 (=> (not res!1589403) (not e!2430062))))

(declare-fun suffixResult!91 () List!41835)

(declare-fun lt!1371461 () List!41837)

(declare-fun lt!1371449 () tuple2!40988)

(assert (=> b!3928366 (= res!1589403 (= lt!1371449 (tuple2!40989 lt!1371461 suffixResult!91)))))

(declare-fun lexList!1867 (LexerInterface!6099 List!41838 List!41835) tuple2!40988)

(assert (=> b!3928366 (= lt!1371449 (lexList!1867 thiss!20629 rules!2768 lt!1371450))))

(declare-fun ++!10778 (List!41837 List!41837) List!41837)

(assert (=> b!3928366 (= lt!1371461 (++!10778 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3928366 (= lt!1371450 (++!10777 prefix!426 suffix!1176))))

(declare-fun b!3928367 () Bool)

(declare-fun e!2430063 () Bool)

(declare-fun tp_is_empty!19801 () Bool)

(declare-fun tp!1195985 () Bool)

(assert (=> b!3928367 (= e!2430063 (and tp_is_empty!19801 tp!1195985))))

(declare-fun e!2430058 () Bool)

(declare-fun b!3928368 () Bool)

(declare-fun tp!1195984 () Bool)

(declare-fun inv!21 (TokenValue!6740) Bool)

(assert (=> b!3928368 (= e!2430070 (and (inv!21 (value!206169 (h!47133 suffixTokens!72))) e!2430058 tp!1195984))))

(declare-fun b!3928369 () Bool)

(declare-fun e!2430080 () Unit!60067)

(declare-fun Unit!60072 () Unit!60067)

(assert (=> b!3928369 (= e!2430080 Unit!60072)))

(declare-fun b!3928370 () Bool)

(declare-fun e!2430088 () Bool)

(assert (=> b!3928370 (= e!2430088 false)))

(declare-fun b!3928371 () Bool)

(declare-fun res!1589410 () Bool)

(declare-fun e!2430092 () Bool)

(assert (=> b!3928371 (=> res!1589410 e!2430092)))

(declare-fun head!8335 (List!41837) Token!12158)

(assert (=> b!3928371 (= res!1589410 (not (= (head!8335 prefixTokens!80) (_1!23627 (v!39255 lt!1371457)))))))

(declare-fun tp!1195978 () Bool)

(declare-fun e!2430075 () Bool)

(declare-fun e!2430085 () Bool)

(declare-fun b!3928372 () Bool)

(assert (=> b!3928372 (= e!2430085 (and tp!1195978 (inv!55902 (tag!7370 (h!47134 rules!2768))) (inv!55906 (transformation!6510 (h!47134 rules!2768))) e!2430075))))

(declare-fun b!3928373 () Bool)

(declare-fun e!2430091 () Bool)

(declare-fun tp!1195976 () Bool)

(assert (=> b!3928373 (= e!2430091 (and e!2430085 tp!1195976))))

(declare-fun b!3928374 () Bool)

(declare-fun Unit!60073 () Unit!60067)

(assert (=> b!3928374 (= e!2430080 Unit!60073)))

(declare-fun lt!1371465 () Unit!60067)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!110 (LexerInterface!6099 List!41838 List!41835 List!41835 List!41837 List!41835) Unit!60067)

(assert (=> b!3928374 (= lt!1371465 (lemmaLexWithSmallerInputCannotProduceSameResults!110 thiss!20629 rules!2768 (_2!23627 (v!39255 lt!1371457)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3928374 false))

(declare-fun b!3928375 () Bool)

(assert (=> b!3928375 (= e!2430081 e!2430092)))

(declare-fun res!1589411 () Bool)

(assert (=> b!3928375 (=> res!1589411 e!2430092)))

(declare-fun lt!1371460 () Int)

(declare-fun lt!1371476 () Int)

(assert (=> b!3928375 (= res!1589411 (<= lt!1371460 lt!1371476))))

(declare-fun lt!1371474 () Unit!60067)

(assert (=> b!3928375 (= lt!1371474 e!2430089)))

(declare-fun c!682492 () Bool)

(assert (=> b!3928375 (= c!682492 (= lt!1371460 lt!1371476))))

(declare-fun lt!1371468 () Unit!60067)

(declare-fun e!2430061 () Unit!60067)

(assert (=> b!3928375 (= lt!1371468 e!2430061)))

(declare-fun c!682495 () Bool)

(assert (=> b!3928375 (= c!682495 (< lt!1371460 lt!1371476))))

(assert (=> b!3928375 (= lt!1371476 (size!31298 suffix!1176))))

(assert (=> b!3928375 (= lt!1371460 (size!31298 (_2!23627 (v!39255 lt!1371457))))))

(declare-fun b!3928376 () Bool)

(declare-fun Unit!60074 () Unit!60067)

(assert (=> b!3928376 (= e!2430061 Unit!60074)))

(declare-fun b!3928377 () Bool)

(declare-fun Unit!60075 () Unit!60067)

(assert (=> b!3928377 (= e!2430083 Unit!60075)))

(declare-fun b!3928378 () Bool)

(declare-fun e!2430067 () Bool)

(declare-fun tp!1195977 () Bool)

(assert (=> b!3928378 (= e!2430067 (and tp_is_empty!19801 tp!1195977))))

(declare-fun tp!1195973 () Bool)

(declare-fun b!3928379 () Bool)

(declare-fun e!2430090 () Bool)

(assert (=> b!3928379 (= e!2430058 (and tp!1195973 (inv!55902 (tag!7370 (rule!9454 (h!47133 suffixTokens!72)))) (inv!55906 (transformation!6510 (rule!9454 (h!47133 suffixTokens!72)))) e!2430090))))

(declare-fun b!3928380 () Bool)

(declare-fun e!2430053 () Bool)

(assert (=> b!3928380 (= e!2430053 false)))

(assert (=> b!3928381 (= e!2430075 (and tp!1195982 tp!1195980))))

(declare-fun b!3928382 () Bool)

(declare-fun Unit!60076 () Unit!60067)

(assert (=> b!3928382 (= e!2430072 Unit!60076)))

(declare-fun lt!1371466 () Unit!60067)

(declare-fun lt!1371472 () tuple2!40986)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!558 (List!41835 List!41835 List!41835 List!41835) Unit!60067)

(assert (=> b!3928382 (= lt!1371466 (lemmaConcatSameAndSameSizesThenSameLists!558 lt!1371478 (_2!23627 (v!39255 lt!1371457)) lt!1371478 (_2!23627 lt!1371472)))))

(assert (=> b!3928382 (= (_2!23627 (v!39255 lt!1371457)) (_2!23627 lt!1371472))))

(declare-fun lt!1371458 () Unit!60067)

(assert (=> b!3928382 (= lt!1371458 (lemmaLexWithSmallerInputCannotProduceSameResults!110 thiss!20629 rules!2768 suffix!1176 (_2!23627 lt!1371472) suffixTokens!72 suffixResult!91))))

(declare-fun res!1589408 () Bool)

(declare-fun call!284752 () tuple2!40988)

(declare-fun lt!1371456 () tuple2!40988)

(assert (=> b!3928382 (= res!1589408 (not (= call!284752 lt!1371456)))))

(assert (=> b!3928382 (=> (not res!1589408) (not e!2430088))))

(assert (=> b!3928382 e!2430088))

(declare-fun tp!1195979 () Bool)

(declare-fun b!3928383 () Bool)

(assert (=> b!3928383 (= e!2430057 (and (inv!21 (value!206169 (h!47133 prefixTokens!80))) e!2430078 tp!1195979))))

(declare-fun b!3928384 () Bool)

(declare-fun e!2430056 () Bool)

(declare-fun e!2430068 () Bool)

(assert (=> b!3928384 (= e!2430056 (not e!2430068))))

(declare-fun res!1589407 () Bool)

(assert (=> b!3928384 (=> res!1589407 e!2430068)))

(declare-fun lt!1371488 () List!41835)

(assert (=> b!3928384 (= res!1589407 (not (= lt!1371488 lt!1371450)))))

(assert (=> b!3928384 (= lt!1371483 (lexList!1867 thiss!20629 rules!2768 (_2!23627 (v!39255 lt!1371457))))))

(declare-fun lt!1371463 () TokenValue!6740)

(declare-fun lt!1371453 () Int)

(declare-fun lt!1371489 () List!41835)

(assert (=> b!3928384 (and (= (size!31297 (_1!23627 (v!39255 lt!1371457))) lt!1371453) (= (originalCharacters!7110 (_1!23627 (v!39255 lt!1371457))) lt!1371478) (= (v!39255 lt!1371457) (tuple2!40987 (Token!12159 lt!1371463 (rule!9454 (_1!23627 (v!39255 lt!1371457))) lt!1371453 lt!1371478) lt!1371489)))))

(assert (=> b!3928384 (= lt!1371453 (size!31298 lt!1371478))))

(assert (=> b!3928384 e!2430059))

(declare-fun res!1589415 () Bool)

(assert (=> b!3928384 (=> (not res!1589415) (not e!2430059))))

(assert (=> b!3928384 (= res!1589415 (= (value!206169 (_1!23627 (v!39255 lt!1371457))) lt!1371463))))

(declare-fun apply!9749 (TokenValueInjection!12908 BalanceConc!25036) TokenValue!6740)

(declare-fun seqFromList!4777 (List!41835) BalanceConc!25036)

(assert (=> b!3928384 (= lt!1371463 (apply!9749 (transformation!6510 (rule!9454 (_1!23627 (v!39255 lt!1371457)))) (seqFromList!4777 lt!1371478)))))

(assert (=> b!3928384 (= (_2!23627 (v!39255 lt!1371457)) lt!1371489)))

(declare-fun lt!1371475 () Unit!60067)

(assert (=> b!3928384 (= lt!1371475 (lemmaSamePrefixThenSameSuffix!1826 lt!1371478 (_2!23627 (v!39255 lt!1371457)) lt!1371478 lt!1371489 lt!1371450))))

(assert (=> b!3928384 (= lt!1371489 (getSuffix!2060 lt!1371450 lt!1371478))))

(assert (=> b!3928384 (isPrefix!3605 lt!1371478 lt!1371488)))

(assert (=> b!3928384 (= lt!1371488 (++!10777 lt!1371478 (_2!23627 (v!39255 lt!1371457))))))

(declare-fun lt!1371486 () Unit!60067)

(assert (=> b!3928384 (= lt!1371486 (lemmaConcatTwoListThenFirstIsPrefix!2468 lt!1371478 (_2!23627 (v!39255 lt!1371457))))))

(declare-fun list!15499 (BalanceConc!25036) List!41835)

(declare-fun charsOf!4334 (Token!12158) BalanceConc!25036)

(assert (=> b!3928384 (= lt!1371478 (list!15499 (charsOf!4334 (_1!23627 (v!39255 lt!1371457)))))))

(declare-fun ruleValid!2458 (LexerInterface!6099 Rule!12820) Bool)

(assert (=> b!3928384 (ruleValid!2458 thiss!20629 (rule!9454 (_1!23627 (v!39255 lt!1371457))))))

(declare-fun lt!1371446 () Unit!60067)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1538 (LexerInterface!6099 Rule!12820 List!41838) Unit!60067)

(assert (=> b!3928384 (= lt!1371446 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1538 thiss!20629 (rule!9454 (_1!23627 (v!39255 lt!1371457))) rules!2768))))

(declare-fun lt!1371452 () Unit!60067)

(declare-fun lemmaCharactersSize!1167 (Token!12158) Unit!60067)

(assert (=> b!3928384 (= lt!1371452 (lemmaCharactersSize!1167 (_1!23627 (v!39255 lt!1371457))))))

(declare-fun res!1589401 () Bool)

(assert (=> start!368524 (=> (not res!1589401) (not e!2430076))))

(get-info :version)

(assert (=> start!368524 (= res!1589401 ((_ is Lexer!6097) thiss!20629))))

(assert (=> start!368524 e!2430076))

(assert (=> start!368524 e!2430063))

(assert (=> start!368524 true))

(declare-fun e!2430055 () Bool)

(assert (=> start!368524 e!2430055))

(assert (=> start!368524 e!2430091))

(assert (=> start!368524 e!2430073))

(assert (=> start!368524 e!2430054))

(assert (=> start!368524 e!2430067))

(declare-fun b!3928385 () Bool)

(declare-fun e!2430069 () Bool)

(assert (=> b!3928385 (= e!2430060 e!2430069)))

(declare-fun res!1589398 () Bool)

(assert (=> b!3928385 (=> res!1589398 e!2430069)))

(declare-fun lt!1371445 () List!41837)

(assert (=> b!3928385 (= res!1589398 (not (= lt!1371483 (tuple2!40989 lt!1371445 suffixResult!91))))))

(declare-fun lt!1371462 () List!41837)

(assert (=> b!3928385 (= lt!1371445 (++!10778 lt!1371462 suffixTokens!72))))

(assert (=> b!3928385 (= lt!1371462 (tail!6061 prefixTokens!80))))

(assert (=> b!3928385 (isPrefix!3605 lt!1371451 lt!1371454)))

(declare-fun lt!1371485 () Unit!60067)

(assert (=> b!3928385 (= lt!1371485 (lemmaConcatTwoListThenFirstIsPrefix!2468 lt!1371451 suffix!1176))))

(declare-fun b!3928386 () Bool)

(declare-fun lt!1371480 () List!41837)

(assert (=> b!3928386 (= e!2430069 (= lt!1371480 lt!1371461))))

(declare-fun lt!1371491 () List!41837)

(assert (=> b!3928386 (= lt!1371480 (++!10778 lt!1371491 lt!1371445))))

(assert (=> b!3928386 (= lt!1371480 (++!10778 (++!10778 lt!1371491 lt!1371462) suffixTokens!72))))

(declare-fun lt!1371471 () Unit!60067)

(declare-fun lemmaConcatAssociativity!2307 (List!41837 List!41837 List!41837) Unit!60067)

(assert (=> b!3928386 (= lt!1371471 (lemmaConcatAssociativity!2307 lt!1371491 lt!1371462 suffixTokens!72))))

(declare-fun lt!1371482 () Unit!60067)

(assert (=> b!3928386 (= lt!1371482 e!2430080)))

(declare-fun c!682493 () Bool)

(assert (=> b!3928386 (= c!682493 (isEmpty!24861 lt!1371462))))

(declare-fun b!3928387 () Bool)

(declare-fun Unit!60077 () Unit!60067)

(assert (=> b!3928387 (= e!2430072 Unit!60077)))

(declare-fun lt!1371447 () Unit!60067)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!110 (LexerInterface!6099 List!41838 List!41835 List!41835 List!41837 List!41835 List!41837) Unit!60067)

(assert (=> b!3928387 (= lt!1371447 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!110 thiss!20629 rules!2768 suffix!1176 (_2!23627 lt!1371472) suffixTokens!72 suffixResult!91 lt!1371455))))

(declare-fun res!1589404 () Bool)

(assert (=> b!3928387 (= res!1589404 (not (= call!284752 (tuple2!40989 (++!10778 lt!1371455 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3928387 (=> (not res!1589404) (not e!2430053))))

(assert (=> b!3928387 e!2430053))

(declare-fun b!3928388 () Bool)

(declare-fun res!1589406 () Bool)

(assert (=> b!3928388 (=> (not res!1589406) (not e!2430076))))

(assert (=> b!3928388 (= res!1589406 (not (isEmpty!24861 prefixTokens!80)))))

(declare-fun b!3928389 () Bool)

(declare-fun tp!1195970 () Bool)

(assert (=> b!3928389 (= e!2430055 (and tp_is_empty!19801 tp!1195970))))

(declare-fun b!3928390 () Bool)

(assert (=> b!3928390 (= e!2430068 e!2430081)))

(declare-fun res!1589397 () Bool)

(assert (=> b!3928390 (=> res!1589397 e!2430081)))

(assert (=> b!3928390 (= res!1589397 (not (= lt!1371449 (tuple2!40989 (++!10778 lt!1371491 (_1!23628 lt!1371483)) (_2!23628 lt!1371483)))))))

(assert (=> b!3928390 (= lt!1371491 (Cons!41713 (_1!23627 (v!39255 lt!1371457)) Nil!41713))))

(declare-fun b!3928391 () Bool)

(declare-fun Unit!60078 () Unit!60067)

(assert (=> b!3928391 (= e!2430061 Unit!60078)))

(declare-fun lt!1371464 () Int)

(assert (=> b!3928391 (= lt!1371464 (size!31298 lt!1371450))))

(declare-fun lt!1371490 () Unit!60067)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1341 (LexerInterface!6099 List!41838 List!41835 List!41835 List!41835 Rule!12820) Unit!60067)

(assert (=> b!3928391 (= lt!1371490 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1341 thiss!20629 rules!2768 lt!1371478 lt!1371450 (_2!23627 (v!39255 lt!1371457)) (rule!9454 (_1!23627 (v!39255 lt!1371457)))))))

(declare-fun maxPrefixOneRule!2473 (LexerInterface!6099 Rule!12820 List!41835) Option!8930)

(assert (=> b!3928391 (= (maxPrefixOneRule!2473 thiss!20629 (rule!9454 (_1!23627 (v!39255 lt!1371457))) lt!1371450) (Some!8929 (tuple2!40987 (Token!12159 lt!1371463 (rule!9454 (_1!23627 (v!39255 lt!1371457))) lt!1371453 lt!1371478) (_2!23627 (v!39255 lt!1371457)))))))

(declare-fun get!13785 (Option!8930) tuple2!40986)

(assert (=> b!3928391 (= lt!1371472 (get!13785 lt!1371457))))

(declare-fun c!682491 () Bool)

(assert (=> b!3928391 (= c!682491 (< (size!31298 (_2!23627 lt!1371472)) lt!1371476))))

(declare-fun lt!1371481 () Unit!60067)

(assert (=> b!3928391 (= lt!1371481 e!2430083)))

(assert (=> b!3928391 false))

(declare-fun b!3928392 () Bool)

(declare-fun e!2430074 () Bool)

(assert (=> b!3928392 (= e!2430074 e!2430071)))

(declare-fun res!1589416 () Bool)

(assert (=> b!3928392 (=> res!1589416 e!2430071)))

(declare-fun lt!1371487 () List!41835)

(assert (=> b!3928392 (= res!1589416 (or (not (= lt!1371450 lt!1371487)) (not (= lt!1371450 lt!1371459)) (not (= lt!1371488 lt!1371459))))))

(assert (=> b!3928392 (= lt!1371487 lt!1371459)))

(assert (=> b!3928392 (= lt!1371459 (++!10777 lt!1371478 lt!1371454))))

(assert (=> b!3928392 (= lt!1371454 (++!10777 lt!1371451 suffix!1176))))

(declare-fun lt!1371469 () Unit!60067)

(declare-fun lemmaConcatAssociativity!2308 (List!41835 List!41835 List!41835) Unit!60067)

(assert (=> b!3928392 (= lt!1371469 (lemmaConcatAssociativity!2308 lt!1371478 lt!1371451 suffix!1176))))

(declare-fun b!3928393 () Bool)

(assert (=> b!3928393 (= e!2430092 e!2430077)))

(declare-fun res!1589405 () Bool)

(assert (=> b!3928393 (=> res!1589405 e!2430077)))

(assert (=> b!3928393 (= res!1589405 (>= lt!1371453 (size!31298 prefix!426)))))

(assert (=> b!3928393 (isPrefix!3605 lt!1371478 prefix!426)))

(declare-fun lt!1371448 () Unit!60067)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!283 (List!41835 List!41835 List!41835) Unit!60067)

(assert (=> b!3928393 (= lt!1371448 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!283 prefix!426 lt!1371478 lt!1371450))))

(assert (=> b!3928393 (isPrefix!3605 prefix!426 lt!1371450)))

(declare-fun lt!1371470 () Unit!60067)

(assert (=> b!3928393 (= lt!1371470 (lemmaConcatTwoListThenFirstIsPrefix!2468 prefix!426 suffix!1176))))

(assert (=> b!3928394 (= e!2430090 (and tp!1195971 tp!1195986))))

(declare-fun bm!284747 () Bool)

(assert (=> bm!284747 (= call!284752 (lexList!1867 thiss!20629 rules!2768 (_2!23627 lt!1371472)))))

(declare-fun b!3928395 () Bool)

(declare-fun e!2430079 () Bool)

(assert (=> b!3928395 (= e!2430062 e!2430079)))

(declare-fun res!1589414 () Bool)

(assert (=> b!3928395 (=> (not res!1589414) (not e!2430079))))

(assert (=> b!3928395 (= res!1589414 (= (lexList!1867 thiss!20629 rules!2768 suffix!1176) lt!1371456))))

(assert (=> b!3928395 (= lt!1371456 (tuple2!40989 suffixTokens!72 suffixResult!91))))

(declare-fun b!3928396 () Bool)

(assert (=> b!3928396 (= e!2430079 e!2430056)))

(declare-fun res!1589412 () Bool)

(assert (=> b!3928396 (=> (not res!1589412) (not e!2430056))))

(assert (=> b!3928396 (= res!1589412 ((_ is Some!8929) lt!1371457))))

(declare-fun maxPrefix!3403 (LexerInterface!6099 List!41838 List!41835) Option!8930)

(assert (=> b!3928396 (= lt!1371457 (maxPrefix!3403 thiss!20629 rules!2768 lt!1371450))))

(declare-fun b!3928397 () Bool)

(declare-fun res!1589396 () Bool)

(assert (=> b!3928397 (=> (not res!1589396) (not e!2430076))))

(declare-fun isEmpty!24862 (List!41835) Bool)

(assert (=> b!3928397 (= res!1589396 (not (isEmpty!24862 prefix!426)))))

(declare-fun b!3928398 () Bool)

(assert (=> b!3928398 (= e!2430066 e!2430074)))

(declare-fun res!1589413 () Bool)

(assert (=> b!3928398 (=> res!1589413 e!2430074)))

(assert (=> b!3928398 (= res!1589413 (or (not (= lt!1371487 lt!1371450)) (not (= lt!1371487 lt!1371488))))))

(assert (=> b!3928398 (= lt!1371487 (++!10777 lt!1371484 suffix!1176))))

(assert (= (and start!368524 res!1589401) b!3928359))

(assert (= (and b!3928359 res!1589395) b!3928358))

(assert (= (and b!3928358 res!1589409) b!3928388))

(assert (= (and b!3928388 res!1589406) b!3928397))

(assert (= (and b!3928397 res!1589396) b!3928366))

(assert (= (and b!3928366 res!1589403) b!3928395))

(assert (= (and b!3928395 res!1589414) b!3928396))

(assert (= (and b!3928396 res!1589412) b!3928384))

(assert (= (and b!3928384 res!1589415) b!3928360))

(assert (= (and b!3928384 (not res!1589407)) b!3928390))

(assert (= (and b!3928390 (not res!1589397)) b!3928355))

(assert (= (and b!3928355 (not res!1589400)) b!3928375))

(assert (= (and b!3928375 c!682495) b!3928391))

(assert (= (and b!3928375 (not c!682495)) b!3928376))

(assert (= (and b!3928391 c!682491) b!3928361))

(assert (= (and b!3928391 (not c!682491)) b!3928377))

(assert (= (and b!3928361 c!682494) b!3928382))

(assert (= (and b!3928361 (not c!682494)) b!3928387))

(assert (= (and b!3928382 res!1589408) b!3928370))

(assert (= (and b!3928387 res!1589404) b!3928380))

(assert (= (or b!3928382 b!3928387) bm!284747))

(assert (= (and b!3928375 c!682492) b!3928353))

(assert (= (and b!3928375 (not c!682492)) b!3928357))

(assert (= (and b!3928375 (not res!1589411)) b!3928371))

(assert (= (and b!3928371 (not res!1589410)) b!3928393))

(assert (= (and b!3928393 (not res!1589405)) b!3928356))

(assert (= (and b!3928356 (not res!1589402)) b!3928398))

(assert (= (and b!3928398 (not res!1589413)) b!3928392))

(assert (= (and b!3928392 (not res!1589416)) b!3928362))

(assert (= (and b!3928362 (not res!1589399)) b!3928385))

(assert (= (and b!3928385 (not res!1589398)) b!3928386))

(assert (= (and b!3928386 c!682493) b!3928374))

(assert (= (and b!3928386 (not c!682493)) b!3928369))

(assert (= (and start!368524 ((_ is Cons!41711) suffixResult!91)) b!3928367))

(assert (= (and start!368524 ((_ is Cons!41711) suffix!1176)) b!3928389))

(assert (= b!3928372 b!3928381))

(assert (= b!3928373 b!3928372))

(assert (= (and start!368524 ((_ is Cons!41714) rules!2768)) b!3928373))

(assert (= b!3928363 b!3928365))

(assert (= b!3928383 b!3928363))

(assert (= b!3928364 b!3928383))

(assert (= (and start!368524 ((_ is Cons!41713) prefixTokens!80)) b!3928364))

(assert (= b!3928379 b!3928394))

(assert (= b!3928368 b!3928379))

(assert (= b!3928354 b!3928368))

(assert (= (and start!368524 ((_ is Cons!41713) suffixTokens!72)) b!3928354))

(assert (= (and start!368524 ((_ is Cons!41711) prefix!426)) b!3928378))

(declare-fun m!4493199 () Bool)

(assert (=> b!3928364 m!4493199))

(declare-fun m!4493201 () Bool)

(assert (=> b!3928353 m!4493201))

(declare-fun m!4493203 () Bool)

(assert (=> b!3928353 m!4493203))

(declare-fun m!4493205 () Bool)

(assert (=> b!3928353 m!4493205))

(declare-fun m!4493207 () Bool)

(assert (=> b!3928353 m!4493207))

(declare-fun m!4493209 () Bool)

(assert (=> b!3928391 m!4493209))

(declare-fun m!4493211 () Bool)

(assert (=> b!3928391 m!4493211))

(declare-fun m!4493213 () Bool)

(assert (=> b!3928391 m!4493213))

(declare-fun m!4493215 () Bool)

(assert (=> b!3928391 m!4493215))

(declare-fun m!4493217 () Bool)

(assert (=> b!3928391 m!4493217))

(declare-fun m!4493219 () Bool)

(assert (=> b!3928392 m!4493219))

(declare-fun m!4493221 () Bool)

(assert (=> b!3928392 m!4493221))

(declare-fun m!4493223 () Bool)

(assert (=> b!3928392 m!4493223))

(declare-fun m!4493225 () Bool)

(assert (=> b!3928397 m!4493225))

(declare-fun m!4493227 () Bool)

(assert (=> b!3928360 m!4493227))

(declare-fun m!4493229 () Bool)

(assert (=> b!3928393 m!4493229))

(assert (=> b!3928393 m!4493201))

(assert (=> b!3928393 m!4493203))

(declare-fun m!4493231 () Bool)

(assert (=> b!3928393 m!4493231))

(declare-fun m!4493233 () Bool)

(assert (=> b!3928393 m!4493233))

(declare-fun m!4493235 () Bool)

(assert (=> b!3928354 m!4493235))

(declare-fun m!4493237 () Bool)

(assert (=> b!3928379 m!4493237))

(declare-fun m!4493239 () Bool)

(assert (=> b!3928379 m!4493239))

(declare-fun m!4493241 () Bool)

(assert (=> b!3928371 m!4493241))

(declare-fun m!4493243 () Bool)

(assert (=> b!3928396 m!4493243))

(declare-fun m!4493245 () Bool)

(assert (=> b!3928398 m!4493245))

(declare-fun m!4493247 () Bool)

(assert (=> b!3928384 m!4493247))

(declare-fun m!4493249 () Bool)

(assert (=> b!3928384 m!4493249))

(declare-fun m!4493251 () Bool)

(assert (=> b!3928384 m!4493251))

(declare-fun m!4493253 () Bool)

(assert (=> b!3928384 m!4493253))

(declare-fun m!4493255 () Bool)

(assert (=> b!3928384 m!4493255))

(declare-fun m!4493257 () Bool)

(assert (=> b!3928384 m!4493257))

(declare-fun m!4493259 () Bool)

(assert (=> b!3928384 m!4493259))

(declare-fun m!4493261 () Bool)

(assert (=> b!3928384 m!4493261))

(declare-fun m!4493263 () Bool)

(assert (=> b!3928384 m!4493263))

(assert (=> b!3928384 m!4493247))

(declare-fun m!4493265 () Bool)

(assert (=> b!3928384 m!4493265))

(declare-fun m!4493267 () Bool)

(assert (=> b!3928384 m!4493267))

(declare-fun m!4493269 () Bool)

(assert (=> b!3928384 m!4493269))

(declare-fun m!4493271 () Bool)

(assert (=> b!3928384 m!4493271))

(assert (=> b!3928384 m!4493259))

(declare-fun m!4493273 () Bool)

(assert (=> b!3928384 m!4493273))

(declare-fun m!4493275 () Bool)

(assert (=> b!3928362 m!4493275))

(declare-fun m!4493277 () Bool)

(assert (=> b!3928362 m!4493277))

(declare-fun m!4493279 () Bool)

(assert (=> b!3928362 m!4493279))

(declare-fun m!4493281 () Bool)

(assert (=> bm!284747 m!4493281))

(declare-fun m!4493283 () Bool)

(assert (=> b!3928388 m!4493283))

(declare-fun m!4493285 () Bool)

(assert (=> b!3928358 m!4493285))

(declare-fun m!4493287 () Bool)

(assert (=> b!3928390 m!4493287))

(declare-fun m!4493289 () Bool)

(assert (=> b!3928361 m!4493289))

(declare-fun m!4493291 () Bool)

(assert (=> b!3928361 m!4493291))

(declare-fun m!4493293 () Bool)

(assert (=> b!3928375 m!4493293))

(declare-fun m!4493295 () Bool)

(assert (=> b!3928375 m!4493295))

(declare-fun m!4493297 () Bool)

(assert (=> b!3928374 m!4493297))

(declare-fun m!4493299 () Bool)

(assert (=> b!3928382 m!4493299))

(declare-fun m!4493301 () Bool)

(assert (=> b!3928382 m!4493301))

(declare-fun m!4493303 () Bool)

(assert (=> b!3928363 m!4493303))

(declare-fun m!4493305 () Bool)

(assert (=> b!3928363 m!4493305))

(declare-fun m!4493307 () Bool)

(assert (=> b!3928383 m!4493307))

(declare-fun m!4493309 () Bool)

(assert (=> b!3928372 m!4493309))

(declare-fun m!4493311 () Bool)

(assert (=> b!3928372 m!4493311))

(declare-fun m!4493313 () Bool)

(assert (=> b!3928359 m!4493313))

(declare-fun m!4493315 () Bool)

(assert (=> b!3928387 m!4493315))

(declare-fun m!4493317 () Bool)

(assert (=> b!3928387 m!4493317))

(declare-fun m!4493319 () Bool)

(assert (=> b!3928395 m!4493319))

(declare-fun m!4493321 () Bool)

(assert (=> b!3928366 m!4493321))

(declare-fun m!4493323 () Bool)

(assert (=> b!3928366 m!4493323))

(declare-fun m!4493325 () Bool)

(assert (=> b!3928366 m!4493325))

(declare-fun m!4493327 () Bool)

(assert (=> b!3928386 m!4493327))

(declare-fun m!4493329 () Bool)

(assert (=> b!3928386 m!4493329))

(declare-fun m!4493331 () Bool)

(assert (=> b!3928386 m!4493331))

(assert (=> b!3928386 m!4493327))

(declare-fun m!4493333 () Bool)

(assert (=> b!3928386 m!4493333))

(declare-fun m!4493335 () Bool)

(assert (=> b!3928386 m!4493335))

(declare-fun m!4493337 () Bool)

(assert (=> b!3928356 m!4493337))

(declare-fun m!4493339 () Bool)

(assert (=> b!3928356 m!4493339))

(declare-fun m!4493341 () Bool)

(assert (=> b!3928368 m!4493341))

(declare-fun m!4493343 () Bool)

(assert (=> b!3928385 m!4493343))

(assert (=> b!3928385 m!4493291))

(declare-fun m!4493345 () Bool)

(assert (=> b!3928385 m!4493345))

(declare-fun m!4493347 () Bool)

(assert (=> b!3928385 m!4493347))

(check-sat (not b_next!107877) (not b!3928393) (not b!3928362) (not b!3928375) (not b!3928372) (not b_next!107869) (not b!3928383) (not b!3928387) (not b_next!107873) (not b!3928367) (not b!3928389) (not b_next!107879) (not b!3928390) (not b!3928360) (not b!3928356) (not b!3928398) (not b!3928366) b_and!299663 (not b!3928373) (not b!3928374) (not bm!284747) (not b_next!107871) b_and!299669 b_and!299673 (not b_next!107875) (not b!3928371) b_and!299665 b_and!299671 (not b!3928397) (not b!3928364) (not b!3928354) (not b!3928358) (not b!3928392) (not b!3928384) (not b!3928382) (not b!3928379) (not b!3928385) (not b!3928361) tp_is_empty!19801 (not b!3928363) b_and!299667 (not b!3928386) (not b!3928359) (not b!3928396) (not b!3928353) (not b!3928391) (not b!3928368) (not b!3928388) (not b!3928378) (not b!3928395))
(check-sat (not b_next!107877) b_and!299663 (not b_next!107871) (not b_next!107869) (not b_next!107873) (not b_next!107879) b_and!299667 b_and!299669 b_and!299673 (not b_next!107875) b_and!299665 b_and!299671)
