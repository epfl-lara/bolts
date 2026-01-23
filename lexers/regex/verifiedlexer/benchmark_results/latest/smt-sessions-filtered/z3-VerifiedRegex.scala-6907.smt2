; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363988 () Bool)

(assert start!363988)

(declare-fun b!3877578 () Bool)

(declare-fun b_free!104917 () Bool)

(declare-fun b_next!105621 () Bool)

(assert (=> b!3877578 (= b_free!104917 (not b_next!105621))))

(declare-fun tp!1175561 () Bool)

(declare-fun b_and!290763 () Bool)

(assert (=> b!3877578 (= tp!1175561 b_and!290763)))

(declare-fun b_free!104919 () Bool)

(declare-fun b_next!105623 () Bool)

(assert (=> b!3877578 (= b_free!104919 (not b_next!105623))))

(declare-fun tp!1175559 () Bool)

(declare-fun b_and!290765 () Bool)

(assert (=> b!3877578 (= tp!1175559 b_and!290765)))

(declare-fun b!3877619 () Bool)

(declare-fun b_free!104921 () Bool)

(declare-fun b_next!105625 () Bool)

(assert (=> b!3877619 (= b_free!104921 (not b_next!105625))))

(declare-fun tp!1175569 () Bool)

(declare-fun b_and!290767 () Bool)

(assert (=> b!3877619 (= tp!1175569 b_and!290767)))

(declare-fun b_free!104923 () Bool)

(declare-fun b_next!105627 () Bool)

(assert (=> b!3877619 (= b_free!104923 (not b_next!105627))))

(declare-fun tp!1175568 () Bool)

(declare-fun b_and!290769 () Bool)

(assert (=> b!3877619 (= tp!1175568 b_and!290769)))

(declare-fun b!3877626 () Bool)

(declare-fun b_free!104925 () Bool)

(declare-fun b_next!105629 () Bool)

(assert (=> b!3877626 (= b_free!104925 (not b_next!105629))))

(declare-fun tp!1175563 () Bool)

(declare-fun b_and!290771 () Bool)

(assert (=> b!3877626 (= tp!1175563 b_and!290771)))

(declare-fun b_free!104927 () Bool)

(declare-fun b_next!105631 () Bool)

(assert (=> b!3877626 (= b_free!104927 (not b_next!105631))))

(declare-fun tp!1175558 () Bool)

(declare-fun b_and!290773 () Bool)

(assert (=> b!3877626 (= tp!1175558 b_and!290773)))

(declare-fun b!3877576 () Bool)

(declare-fun e!2399128 () Bool)

(assert (=> b!3877576 (= e!2399128 false)))

(declare-fun b!3877577 () Bool)

(declare-fun res!1571120 () Bool)

(declare-fun e!2399142 () Bool)

(assert (=> b!3877577 (=> (not res!1571120) (not e!2399142))))

(declare-datatypes ((List!41350 0))(
  ( (Nil!41226) (Cons!41226 (h!46646 (_ BitVec 16)) (t!314993 List!41350)) )
))
(declare-datatypes ((TokenValue!6632 0))(
  ( (FloatLiteralValue!13264 (text!46869 List!41350)) (TokenValueExt!6631 (__x!25481 Int)) (Broken!33160 (value!203065 List!41350)) (Object!6755) (End!6632) (Def!6632) (Underscore!6632) (Match!6632) (Else!6632) (Error!6632) (Case!6632) (If!6632) (Extends!6632) (Abstract!6632) (Class!6632) (Val!6632) (DelimiterValue!13264 (del!6692 List!41350)) (KeywordValue!6638 (value!203066 List!41350)) (CommentValue!13264 (value!203067 List!41350)) (WhitespaceValue!13264 (value!203068 List!41350)) (IndentationValue!6632 (value!203069 List!41350)) (String!46877) (Int32!6632) (Broken!33161 (value!203070 List!41350)) (Boolean!6633) (Unit!59254) (OperatorValue!6635 (op!6692 List!41350)) (IdentifierValue!13264 (value!203071 List!41350)) (IdentifierValue!13265 (value!203072 List!41350)) (WhitespaceValue!13265 (value!203073 List!41350)) (True!13264) (False!13264) (Broken!33162 (value!203074 List!41350)) (Broken!33163 (value!203075 List!41350)) (True!13265) (RightBrace!6632) (RightBracket!6632) (Colon!6632) (Null!6632) (Comma!6632) (LeftBracket!6632) (False!13265) (LeftBrace!6632) (ImaginaryLiteralValue!6632 (text!46870 List!41350)) (StringLiteralValue!19896 (value!203076 List!41350)) (EOFValue!6632 (value!203077 List!41350)) (IdentValue!6632 (value!203078 List!41350)) (DelimiterValue!13265 (value!203079 List!41350)) (DedentValue!6632 (value!203080 List!41350)) (NewLineValue!6632 (value!203081 List!41350)) (IntegerValue!19896 (value!203082 (_ BitVec 32)) (text!46871 List!41350)) (IntegerValue!19897 (value!203083 Int) (text!46872 List!41350)) (Times!6632) (Or!6632) (Equal!6632) (Minus!6632) (Broken!33164 (value!203084 List!41350)) (And!6632) (Div!6632) (LessEqual!6632) (Mod!6632) (Concat!17939) (Not!6632) (Plus!6632) (SpaceValue!6632 (value!203085 List!41350)) (IntegerValue!19898 (value!203086 Int) (text!46873 List!41350)) (StringLiteralValue!19897 (text!46874 List!41350)) (FloatLiteralValue!13265 (text!46875 List!41350)) (BytesLiteralValue!6632 (value!203087 List!41350)) (CommentValue!13265 (value!203088 List!41350)) (StringLiteralValue!19898 (value!203089 List!41350)) (ErrorTokenValue!6632 (msg!6693 List!41350)) )
))
(declare-datatypes ((C!22800 0))(
  ( (C!22801 (val!13494 Int)) )
))
(declare-datatypes ((Regex!11307 0))(
  ( (ElementMatch!11307 (c!674590 C!22800)) (Concat!17940 (regOne!23126 Regex!11307) (regTwo!23126 Regex!11307)) (EmptyExpr!11307) (Star!11307 (reg!11636 Regex!11307)) (EmptyLang!11307) (Union!11307 (regOne!23127 Regex!11307) (regTwo!23127 Regex!11307)) )
))
(declare-datatypes ((String!46878 0))(
  ( (String!46879 (value!203090 String)) )
))
(declare-datatypes ((List!41351 0))(
  ( (Nil!41227) (Cons!41227 (h!46647 C!22800) (t!314994 List!41351)) )
))
(declare-datatypes ((IArray!25231 0))(
  ( (IArray!25232 (innerList!12673 List!41351)) )
))
(declare-datatypes ((Conc!12613 0))(
  ( (Node!12613 (left!31636 Conc!12613) (right!31966 Conc!12613) (csize!25456 Int) (cheight!12824 Int)) (Leaf!19521 (xs!15919 IArray!25231) (csize!25457 Int)) (Empty!12613) )
))
(declare-datatypes ((BalanceConc!24820 0))(
  ( (BalanceConc!24821 (c!674591 Conc!12613)) )
))
(declare-datatypes ((TokenValueInjection!12692 0))(
  ( (TokenValueInjection!12693 (toValue!8830 Int) (toChars!8689 Int)) )
))
(declare-datatypes ((Rule!12604 0))(
  ( (Rule!12605 (regex!6402 Regex!11307) (tag!7262 String!46878) (isSeparator!6402 Bool) (transformation!6402 TokenValueInjection!12692)) )
))
(declare-datatypes ((Token!11942 0))(
  ( (Token!11943 (value!203091 TokenValue!6632) (rule!9298 Rule!12604) (size!30973 Int) (originalCharacters!7002 List!41351)) )
))
(declare-datatypes ((List!41352 0))(
  ( (Nil!41228) (Cons!41228 (h!46648 Token!11942) (t!314995 List!41352)) )
))
(declare-fun prefixTokens!80 () List!41352)

(declare-fun isEmpty!24476 (List!41352) Bool)

(assert (=> b!3877577 (= res!1571120 (not (isEmpty!24476 prefixTokens!80)))))

(declare-fun e!2399118 () Bool)

(assert (=> b!3877578 (= e!2399118 (and tp!1175561 tp!1175559))))

(declare-fun b!3877579 () Bool)

(declare-fun e!2399102 () Bool)

(declare-fun tp_is_empty!19585 () Bool)

(declare-fun tp!1175566 () Bool)

(assert (=> b!3877579 (= e!2399102 (and tp_is_empty!19585 tp!1175566))))

(declare-fun b!3877580 () Bool)

(declare-fun e!2399123 () Bool)

(declare-fun e!2399109 () Bool)

(assert (=> b!3877580 (= e!2399123 e!2399109)))

(declare-fun res!1571103 () Bool)

(assert (=> b!3877580 (=> res!1571103 e!2399109)))

(declare-datatypes ((tuple2!40458 0))(
  ( (tuple2!40459 (_1!23363 List!41352) (_2!23363 List!41351)) )
))
(declare-fun lt!1352468 () tuple2!40458)

(declare-fun lt!1352488 () tuple2!40458)

(assert (=> b!3877580 (= res!1571103 (not (= lt!1352468 lt!1352488)))))

(declare-fun lt!1352467 () List!41352)

(declare-fun suffixResult!91 () List!41351)

(assert (=> b!3877580 (= lt!1352488 (tuple2!40459 lt!1352467 suffixResult!91))))

(declare-fun lt!1352489 () List!41352)

(declare-fun suffixTokens!72 () List!41352)

(declare-fun ++!10561 (List!41352 List!41352) List!41352)

(assert (=> b!3877580 (= lt!1352467 (++!10561 lt!1352489 suffixTokens!72))))

(declare-fun tail!5945 (List!41352) List!41352)

(assert (=> b!3877580 (= lt!1352489 (tail!5945 prefixTokens!80))))

(declare-fun lt!1352448 () List!41351)

(declare-fun lt!1352463 () List!41351)

(declare-fun isPrefix!3501 (List!41351 List!41351) Bool)

(assert (=> b!3877580 (isPrefix!3501 lt!1352448 lt!1352463)))

(declare-datatypes ((Unit!59255 0))(
  ( (Unit!59256) )
))
(declare-fun lt!1352449 () Unit!59255)

(declare-fun suffix!1176 () List!41351)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2364 (List!41351 List!41351) Unit!59255)

(assert (=> b!3877580 (= lt!1352449 (lemmaConcatTwoListThenFirstIsPrefix!2364 lt!1352448 suffix!1176))))

(declare-fun b!3877581 () Bool)

(declare-fun e!2399110 () Bool)

(declare-fun e!2399131 () Bool)

(assert (=> b!3877581 (= e!2399110 e!2399131)))

(declare-fun res!1571115 () Bool)

(assert (=> b!3877581 (=> res!1571115 e!2399131)))

(declare-fun lt!1352472 () List!41351)

(declare-fun lt!1352453 () List!41351)

(declare-fun lt!1352483 () List!41351)

(declare-fun lt!1352487 () List!41351)

(assert (=> b!3877581 (= res!1571115 (or (not (= lt!1352453 lt!1352472)) (not (= lt!1352453 lt!1352487)) (not (= lt!1352483 lt!1352487))))))

(assert (=> b!3877581 (= lt!1352472 lt!1352487)))

(declare-fun lt!1352459 () List!41351)

(declare-fun ++!10562 (List!41351 List!41351) List!41351)

(assert (=> b!3877581 (= lt!1352487 (++!10562 lt!1352459 lt!1352463))))

(assert (=> b!3877581 (= lt!1352463 (++!10562 lt!1352448 suffix!1176))))

(declare-fun lt!1352477 () Unit!59255)

(declare-fun lemmaConcatAssociativity!2275 (List!41351 List!41351 List!41351) Unit!59255)

(assert (=> b!3877581 (= lt!1352477 (lemmaConcatAssociativity!2275 lt!1352459 lt!1352448 suffix!1176))))

(declare-fun b!3877582 () Bool)

(declare-fun e!2399107 () Bool)

(declare-fun tp!1175564 () Bool)

(assert (=> b!3877582 (= e!2399107 (and tp_is_empty!19585 tp!1175564))))

(declare-fun bm!282823 () Bool)

(declare-datatypes ((LexerInterface!5991 0))(
  ( (LexerInterfaceExt!5988 (__x!25482 Int)) (Lexer!5989) )
))
(declare-fun thiss!20629 () LexerInterface!5991)

(declare-datatypes ((List!41353 0))(
  ( (Nil!41229) (Cons!41229 (h!46649 Rule!12604) (t!314996 List!41353)) )
))
(declare-fun rules!2768 () List!41353)

(declare-datatypes ((tuple2!40460 0))(
  ( (tuple2!40461 (_1!23364 Token!11942) (_2!23364 List!41351)) )
))
(declare-fun lt!1352451 () tuple2!40460)

(declare-fun call!282828 () tuple2!40458)

(declare-fun lexList!1759 (LexerInterface!5991 List!41353 List!41351) tuple2!40458)

(assert (=> bm!282823 (= call!282828 (lexList!1759 thiss!20629 rules!2768 (_2!23364 lt!1352451)))))

(declare-fun b!3877584 () Bool)

(declare-fun e!2399106 () Bool)

(assert (=> b!3877584 (= e!2399106 false)))

(declare-fun b!3877585 () Bool)

(declare-fun e!2399125 () Bool)

(declare-fun e!2399136 () Bool)

(assert (=> b!3877585 (= e!2399125 e!2399136)))

(declare-fun res!1571122 () Bool)

(assert (=> b!3877585 (=> res!1571122 e!2399136)))

(declare-fun lt!1352462 () tuple2!40458)

(declare-fun lt!1352478 () List!41352)

(assert (=> b!3877585 (= res!1571122 (not (= lt!1352462 (tuple2!40459 (++!10561 lt!1352478 (_1!23363 lt!1352468)) (_2!23363 lt!1352468)))))))

(declare-datatypes ((Option!8820 0))(
  ( (None!8819) (Some!8819 (v!39117 tuple2!40460)) )
))
(declare-fun lt!1352444 () Option!8820)

(assert (=> b!3877585 (= lt!1352478 (Cons!41228 (_1!23364 (v!39117 lt!1352444)) Nil!41228))))

(declare-fun b!3877586 () Bool)

(declare-fun res!1571111 () Bool)

(declare-fun e!2399112 () Bool)

(assert (=> b!3877586 (=> res!1571111 e!2399112)))

(declare-fun lt!1352454 () Int)

(declare-fun size!30974 (List!41351) Int)

(assert (=> b!3877586 (= res!1571111 (<= lt!1352454 (size!30974 Nil!41227)))))

(declare-fun b!3877587 () Bool)

(declare-fun e!2399129 () Bool)

(declare-fun e!2399138 () Bool)

(assert (=> b!3877587 (= e!2399129 e!2399138)))

(declare-fun res!1571105 () Bool)

(assert (=> b!3877587 (=> res!1571105 e!2399138)))

(declare-fun lt!1352466 () List!41351)

(declare-fun lt!1352442 () List!41351)

(assert (=> b!3877587 (= res!1571105 (not (= lt!1352466 lt!1352442)))))

(declare-fun prefix!426 () List!41351)

(assert (=> b!3877587 (= lt!1352442 (++!10562 prefix!426 Nil!41227))))

(declare-fun b!3877588 () Bool)

(declare-fun res!1571104 () Bool)

(assert (=> b!3877588 (=> res!1571104 e!2399112)))

(assert (=> b!3877588 (= res!1571104 (not (isPrefix!3501 lt!1352448 (_2!23364 (v!39117 lt!1352444)))))))

(declare-fun b!3877589 () Bool)

(declare-fun c!674585 () Bool)

(declare-fun lt!1352457 () List!41352)

(assert (=> b!3877589 (= c!674585 (isEmpty!24476 lt!1352457))))

(assert (=> b!3877589 (= lt!1352457 (tail!5945 prefixTokens!80))))

(declare-fun e!2399133 () Unit!59255)

(declare-fun e!2399101 () Unit!59255)

(assert (=> b!3877589 (= e!2399133 e!2399101)))

(declare-fun b!3877590 () Bool)

(declare-fun e!2399135 () Bool)

(assert (=> b!3877590 (= e!2399109 e!2399135)))

(declare-fun res!1571108 () Bool)

(assert (=> b!3877590 (=> res!1571108 e!2399135)))

(declare-fun lt!1352450 () List!41352)

(declare-fun lt!1352443 () List!41352)

(assert (=> b!3877590 (= res!1571108 (not (= lt!1352450 lt!1352443)))))

(assert (=> b!3877590 (= lt!1352450 (++!10561 lt!1352478 lt!1352467))))

(assert (=> b!3877590 (= lt!1352450 (++!10561 (++!10561 lt!1352478 lt!1352489) suffixTokens!72))))

(declare-fun lt!1352438 () Unit!59255)

(declare-fun lemmaConcatAssociativity!2276 (List!41352 List!41352 List!41352) Unit!59255)

(assert (=> b!3877590 (= lt!1352438 (lemmaConcatAssociativity!2276 lt!1352478 lt!1352489 suffixTokens!72))))

(declare-fun lt!1352464 () Unit!59255)

(declare-fun e!2399113 () Unit!59255)

(assert (=> b!3877590 (= lt!1352464 e!2399113)))

(declare-fun c!674587 () Bool)

(assert (=> b!3877590 (= c!674587 (isEmpty!24476 lt!1352489))))

(declare-fun b!3877591 () Bool)

(declare-fun e!2399124 () Bool)

(declare-fun e!2399121 () Bool)

(assert (=> b!3877591 (= e!2399124 e!2399121)))

(declare-fun res!1571117 () Bool)

(assert (=> b!3877591 (=> res!1571117 e!2399121)))

(assert (=> b!3877591 (= res!1571117 (not (= lt!1352466 prefix!426)))))

(assert (=> b!3877591 (= lt!1352466 (++!10562 lt!1352459 lt!1352448))))

(declare-fun getSuffix!1956 (List!41351 List!41351) List!41351)

(assert (=> b!3877591 (= lt!1352448 (getSuffix!1956 prefix!426 lt!1352459))))

(declare-fun b!3877592 () Bool)

(declare-fun res!1571119 () Bool)

(assert (=> b!3877592 (=> (not res!1571119) (not e!2399142))))

(declare-fun isEmpty!24477 (List!41351) Bool)

(assert (=> b!3877592 (= res!1571119 (not (isEmpty!24477 prefix!426)))))

(declare-fun e!2399115 () Bool)

(declare-fun b!3877593 () Bool)

(declare-fun tp!1175567 () Bool)

(declare-fun e!2399111 () Bool)

(declare-fun inv!55380 (String!46878) Bool)

(declare-fun inv!55383 (TokenValueInjection!12692) Bool)

(assert (=> b!3877593 (= e!2399111 (and tp!1175567 (inv!55380 (tag!7262 (rule!9298 (h!46648 suffixTokens!72)))) (inv!55383 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) e!2399115))))

(declare-fun b!3877594 () Bool)

(declare-fun Unit!59257 () Unit!59255)

(assert (=> b!3877594 (= e!2399113 Unit!59257)))

(declare-fun lt!1352458 () Unit!59255)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!62 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41352 List!41351) Unit!59255)

(assert (=> b!3877594 (= lt!1352458 (lemmaLexWithSmallerInputCannotProduceSameResults!62 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352444)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3877594 false))

(declare-fun b!3877595 () Bool)

(declare-fun tp!1175571 () Bool)

(declare-fun e!2399105 () Bool)

(declare-fun e!2399114 () Bool)

(assert (=> b!3877595 (= e!2399105 (and tp!1175571 (inv!55380 (tag!7262 (rule!9298 (h!46648 prefixTokens!80)))) (inv!55383 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) e!2399114))))

(declare-fun b!3877596 () Bool)

(declare-fun res!1571098 () Bool)

(assert (=> b!3877596 (=> (not res!1571098) (not e!2399142))))

(declare-fun isEmpty!24478 (List!41353) Bool)

(assert (=> b!3877596 (= res!1571098 (not (isEmpty!24478 rules!2768)))))

(declare-fun b!3877597 () Bool)

(declare-fun Unit!59258 () Unit!59255)

(assert (=> b!3877597 (= e!2399101 Unit!59258)))

(declare-fun lt!1352441 () Unit!59255)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!62 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41352 List!41351 List!41352) Unit!59255)

(assert (=> b!3877597 (= lt!1352441 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!62 thiss!20629 rules!2768 suffix!1176 (_2!23364 lt!1352451) suffixTokens!72 suffixResult!91 lt!1352457))))

(declare-fun res!1571094 () Bool)

(assert (=> b!3877597 (= res!1571094 (not (= call!282828 (tuple2!40459 (++!10561 lt!1352457 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3877597 (=> (not res!1571094) (not e!2399106))))

(assert (=> b!3877597 e!2399106))

(declare-fun b!3877598 () Bool)

(assert (=> b!3877598 (= e!2399135 e!2399112)))

(declare-fun res!1571121 () Bool)

(assert (=> b!3877598 (=> res!1571121 e!2399112)))

(assert (=> b!3877598 (= res!1571121 (not (= lt!1352444 (Some!8819 (tuple2!40461 (_1!23364 (v!39117 lt!1352444)) (_2!23364 (v!39117 lt!1352444)))))))))

(assert (=> b!3877598 (= (lexList!1759 thiss!20629 rules!2768 lt!1352448) (tuple2!40459 lt!1352489 Nil!41227))))

(declare-fun lt!1352471 () Unit!59255)

(declare-fun lemmaLexThenLexPrefix!591 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41352 List!41352 List!41351) Unit!59255)

(assert (=> b!3877598 (= lt!1352471 (lemmaLexThenLexPrefix!591 thiss!20629 rules!2768 lt!1352448 suffix!1176 lt!1352489 suffixTokens!72 suffixResult!91))))

(declare-fun b!3877599 () Bool)

(declare-fun e!2399140 () Unit!59255)

(declare-fun Unit!59259 () Unit!59255)

(assert (=> b!3877599 (= e!2399140 Unit!59259)))

(declare-fun e!2399127 () Bool)

(declare-fun b!3877600 () Bool)

(declare-fun tp!1175572 () Bool)

(declare-fun inv!21 (TokenValue!6632) Bool)

(assert (=> b!3877600 (= e!2399127 (and (inv!21 (value!203091 (h!46648 suffixTokens!72))) e!2399111 tp!1175572))))

(declare-fun b!3877601 () Bool)

(declare-fun e!2399117 () Bool)

(declare-fun e!2399141 () Bool)

(declare-fun tp!1175570 () Bool)

(assert (=> b!3877601 (= e!2399117 (and e!2399141 tp!1175570))))

(declare-fun b!3877602 () Bool)

(declare-fun e!2399116 () Bool)

(assert (=> b!3877602 (= e!2399116 (= (size!30973 (_1!23364 (v!39117 lt!1352444))) (size!30974 (originalCharacters!7002 (_1!23364 (v!39117 lt!1352444))))))))

(declare-fun b!3877603 () Bool)

(declare-fun res!1571110 () Bool)

(assert (=> b!3877603 (=> res!1571110 e!2399129)))

(declare-fun lt!1352455 () Int)

(declare-fun lt!1352436 () Int)

(assert (=> b!3877603 (= res!1571110 (<= lt!1352455 lt!1352436))))

(declare-fun b!3877604 () Bool)

(declare-fun Unit!59260 () Unit!59255)

(assert (=> b!3877604 (= e!2399140 Unit!59260)))

(declare-fun lt!1352452 () Int)

(assert (=> b!3877604 (= lt!1352452 (size!30974 lt!1352453))))

(declare-fun lt!1352476 () Unit!59255)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1275 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41351 Rule!12604) Unit!59255)

(assert (=> b!3877604 (= lt!1352476 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1275 thiss!20629 rules!2768 lt!1352459 lt!1352453 (_2!23364 (v!39117 lt!1352444)) (rule!9298 (_1!23364 (v!39117 lt!1352444)))))))

(declare-fun lt!1352480 () TokenValue!6632)

(declare-fun maxPrefixOneRule!2377 (LexerInterface!5991 Rule!12604 List!41351) Option!8820)

(assert (=> b!3877604 (= (maxPrefixOneRule!2377 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))) lt!1352453) (Some!8819 (tuple2!40461 (Token!11943 lt!1352480 (rule!9298 (_1!23364 (v!39117 lt!1352444))) lt!1352436 lt!1352459) (_2!23364 (v!39117 lt!1352444)))))))

(declare-fun get!13643 (Option!8820) tuple2!40460)

(assert (=> b!3877604 (= lt!1352451 (get!13643 lt!1352444))))

(declare-fun c!674589 () Bool)

(assert (=> b!3877604 (= c!674589 (< (size!30974 (_2!23364 lt!1352451)) lt!1352454))))

(declare-fun lt!1352485 () Unit!59255)

(assert (=> b!3877604 (= lt!1352485 e!2399133)))

(assert (=> b!3877604 false))

(declare-fun b!3877605 () Bool)

(declare-fun e!2399103 () Bool)

(declare-fun tp!1175565 () Bool)

(assert (=> b!3877605 (= e!2399103 (and tp_is_empty!19585 tp!1175565))))

(declare-fun b!3877606 () Bool)

(declare-fun e!2399130 () Bool)

(declare-fun e!2399132 () Bool)

(assert (=> b!3877606 (= e!2399130 e!2399132)))

(declare-fun res!1571123 () Bool)

(assert (=> b!3877606 (=> (not res!1571123) (not e!2399132))))

(get-info :version)

(assert (=> b!3877606 (= res!1571123 ((_ is Some!8819) lt!1352444))))

(declare-fun maxPrefix!3295 (LexerInterface!5991 List!41353 List!41351) Option!8820)

(assert (=> b!3877606 (= lt!1352444 (maxPrefix!3295 thiss!20629 rules!2768 lt!1352453))))

(declare-fun b!3877607 () Bool)

(declare-fun tp!1175574 () Bool)

(declare-fun e!2399100 () Bool)

(assert (=> b!3877607 (= e!2399100 (and (inv!21 (value!203091 (h!46648 prefixTokens!80))) e!2399105 tp!1175574))))

(declare-fun b!3877608 () Bool)

(declare-fun Unit!59261 () Unit!59255)

(assert (=> b!3877608 (= e!2399113 Unit!59261)))

(declare-fun b!3877609 () Bool)

(declare-fun tp!1175573 () Bool)

(assert (=> b!3877609 (= e!2399141 (and tp!1175573 (inv!55380 (tag!7262 (h!46649 rules!2768))) (inv!55383 (transformation!6402 (h!46649 rules!2768))) e!2399118))))

(declare-fun b!3877610 () Bool)

(assert (=> b!3877610 (= e!2399131 e!2399123)))

(declare-fun res!1571109 () Bool)

(assert (=> b!3877610 (=> res!1571109 e!2399123)))

(assert (=> b!3877610 (= res!1571109 (not (= lt!1352463 (_2!23364 (v!39117 lt!1352444)))))))

(assert (=> b!3877610 (= (_2!23364 (v!39117 lt!1352444)) lt!1352463)))

(declare-fun lt!1352437 () Unit!59255)

(declare-fun lemmaSamePrefixThenSameSuffix!1722 (List!41351 List!41351 List!41351 List!41351 List!41351) Unit!59255)

(assert (=> b!3877610 (= lt!1352437 (lemmaSamePrefixThenSameSuffix!1722 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 lt!1352463 lt!1352453))))

(assert (=> b!3877610 (isPrefix!3501 lt!1352459 lt!1352487)))

(declare-fun lt!1352475 () Unit!59255)

(assert (=> b!3877610 (= lt!1352475 (lemmaConcatTwoListThenFirstIsPrefix!2364 lt!1352459 lt!1352463))))

(declare-fun b!3877611 () Bool)

(declare-fun Unit!59262 () Unit!59255)

(assert (=> b!3877611 (= e!2399101 Unit!59262)))

(declare-fun lt!1352474 () Unit!59255)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!486 (List!41351 List!41351 List!41351 List!41351) Unit!59255)

(assert (=> b!3877611 (= lt!1352474 (lemmaConcatSameAndSameSizesThenSameLists!486 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 (_2!23364 lt!1352451)))))

(assert (=> b!3877611 (= (_2!23364 (v!39117 lt!1352444)) (_2!23364 lt!1352451))))

(declare-fun lt!1352481 () Unit!59255)

(assert (=> b!3877611 (= lt!1352481 (lemmaLexWithSmallerInputCannotProduceSameResults!62 thiss!20629 rules!2768 suffix!1176 (_2!23364 lt!1352451) suffixTokens!72 suffixResult!91))))

(declare-fun res!1571112 () Bool)

(declare-fun lt!1352479 () tuple2!40458)

(assert (=> b!3877611 (= res!1571112 (not (= call!282828 lt!1352479)))))

(assert (=> b!3877611 (=> (not res!1571112) (not e!2399128))))

(assert (=> b!3877611 e!2399128))

(declare-fun b!3877612 () Bool)

(declare-fun e!2399122 () Unit!59255)

(declare-fun Unit!59263 () Unit!59255)

(assert (=> b!3877612 (= e!2399122 Unit!59263)))

(declare-fun lt!1352473 () Unit!59255)

(assert (=> b!3877612 (= lt!1352473 (lemmaConcatTwoListThenFirstIsPrefix!2364 prefix!426 suffix!1176))))

(assert (=> b!3877612 (isPrefix!3501 prefix!426 lt!1352453)))

(declare-fun lt!1352469 () Unit!59255)

(declare-fun lemmaIsPrefixSameLengthThenSameList!753 (List!41351 List!41351 List!41351) Unit!59255)

(assert (=> b!3877612 (= lt!1352469 (lemmaIsPrefixSameLengthThenSameList!753 lt!1352459 prefix!426 lt!1352453))))

(assert (=> b!3877612 (= lt!1352459 prefix!426)))

(declare-fun lt!1352465 () Unit!59255)

(assert (=> b!3877612 (= lt!1352465 (lemmaSamePrefixThenSameSuffix!1722 lt!1352459 (_2!23364 (v!39117 lt!1352444)) prefix!426 suffix!1176 lt!1352453))))

(assert (=> b!3877612 false))

(declare-fun b!3877613 () Bool)

(declare-fun e!2399099 () Bool)

(assert (=> b!3877613 (= e!2399142 e!2399099)))

(declare-fun res!1571097 () Bool)

(assert (=> b!3877613 (=> (not res!1571097) (not e!2399099))))

(assert (=> b!3877613 (= res!1571097 (= lt!1352462 (tuple2!40459 lt!1352443 suffixResult!91)))))

(assert (=> b!3877613 (= lt!1352462 (lexList!1759 thiss!20629 rules!2768 lt!1352453))))

(assert (=> b!3877613 (= lt!1352443 (++!10561 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3877613 (= lt!1352453 (++!10562 prefix!426 suffix!1176))))

(declare-fun b!3877614 () Bool)

(assert (=> b!3877614 (= e!2399132 (not e!2399125))))

(declare-fun res!1571096 () Bool)

(assert (=> b!3877614 (=> res!1571096 e!2399125)))

(assert (=> b!3877614 (= res!1571096 (not (= lt!1352483 lt!1352453)))))

(assert (=> b!3877614 (= lt!1352468 (lexList!1759 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352444))))))

(declare-fun lt!1352445 () List!41351)

(assert (=> b!3877614 (and (= (size!30973 (_1!23364 (v!39117 lt!1352444))) lt!1352436) (= (originalCharacters!7002 (_1!23364 (v!39117 lt!1352444))) lt!1352459) (= (tuple2!40461 (_1!23364 (v!39117 lt!1352444)) (_2!23364 (v!39117 lt!1352444))) (tuple2!40461 (Token!11943 lt!1352480 (rule!9298 (_1!23364 (v!39117 lt!1352444))) lt!1352436 lt!1352459) lt!1352445)))))

(assert (=> b!3877614 (= lt!1352436 (size!30974 lt!1352459))))

(assert (=> b!3877614 e!2399116))

(declare-fun res!1571116 () Bool)

(assert (=> b!3877614 (=> (not res!1571116) (not e!2399116))))

(assert (=> b!3877614 (= res!1571116 (= (value!203091 (_1!23364 (v!39117 lt!1352444))) lt!1352480))))

(declare-fun apply!9645 (TokenValueInjection!12692 BalanceConc!24820) TokenValue!6632)

(declare-fun seqFromList!4673 (List!41351) BalanceConc!24820)

(assert (=> b!3877614 (= lt!1352480 (apply!9645 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) (seqFromList!4673 lt!1352459)))))

(assert (=> b!3877614 (= (_2!23364 (v!39117 lt!1352444)) lt!1352445)))

(declare-fun lt!1352439 () Unit!59255)

(assert (=> b!3877614 (= lt!1352439 (lemmaSamePrefixThenSameSuffix!1722 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 lt!1352445 lt!1352453))))

(assert (=> b!3877614 (= lt!1352445 (getSuffix!1956 lt!1352453 lt!1352459))))

(assert (=> b!3877614 (isPrefix!3501 lt!1352459 lt!1352483)))

(assert (=> b!3877614 (= lt!1352483 (++!10562 lt!1352459 (_2!23364 (v!39117 lt!1352444))))))

(declare-fun lt!1352440 () Unit!59255)

(assert (=> b!3877614 (= lt!1352440 (lemmaConcatTwoListThenFirstIsPrefix!2364 lt!1352459 (_2!23364 (v!39117 lt!1352444))))))

(declare-fun list!15330 (BalanceConc!24820) List!41351)

(declare-fun charsOf!4230 (Token!11942) BalanceConc!24820)

(assert (=> b!3877614 (= lt!1352459 (list!15330 (charsOf!4230 (_1!23364 (v!39117 lt!1352444)))))))

(declare-fun ruleValid!2354 (LexerInterface!5991 Rule!12604) Bool)

(assert (=> b!3877614 (ruleValid!2354 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))))))

(declare-fun lt!1352447 () Unit!59255)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1434 (LexerInterface!5991 Rule!12604 List!41353) Unit!59255)

(assert (=> b!3877614 (= lt!1352447 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1434 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))) rules!2768))))

(declare-fun lt!1352470 () Unit!59255)

(declare-fun lemmaCharactersSize!1063 (Token!11942) Unit!59255)

(assert (=> b!3877614 (= lt!1352470 (lemmaCharactersSize!1063 (_1!23364 (v!39117 lt!1352444))))))

(declare-fun b!3877615 () Bool)

(declare-fun Unit!59264 () Unit!59255)

(assert (=> b!3877615 (= e!2399133 Unit!59264)))

(declare-fun b!3877616 () Bool)

(assert (=> b!3877616 (= e!2399112 e!2399129)))

(declare-fun res!1571100 () Bool)

(assert (=> b!3877616 (=> res!1571100 e!2399129)))

(assert (=> b!3877616 (= res!1571100 (not (isPrefix!3501 Nil!41227 suffix!1176)))))

(assert (=> b!3877616 (isPrefix!3501 Nil!41227 (++!10562 Nil!41227 suffix!1176))))

(declare-fun lt!1352446 () Unit!59255)

(assert (=> b!3877616 (= lt!1352446 (lemmaConcatTwoListThenFirstIsPrefix!2364 Nil!41227 suffix!1176))))

(declare-fun b!3877617 () Bool)

(declare-fun e!2399108 () Bool)

(assert (=> b!3877617 (= e!2399108 e!2399124)))

(declare-fun res!1571118 () Bool)

(assert (=> b!3877617 (=> res!1571118 e!2399124)))

(assert (=> b!3877617 (= res!1571118 (>= lt!1352436 lt!1352455))))

(assert (=> b!3877617 (= lt!1352455 (size!30974 prefix!426))))

(assert (=> b!3877617 (isPrefix!3501 lt!1352459 prefix!426)))

(declare-fun lt!1352486 () Unit!59255)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!251 (List!41351 List!41351 List!41351) Unit!59255)

(assert (=> b!3877617 (= lt!1352486 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!251 prefix!426 lt!1352459 lt!1352453))))

(assert (=> b!3877617 (isPrefix!3501 prefix!426 lt!1352453)))

(declare-fun lt!1352461 () Unit!59255)

(assert (=> b!3877617 (= lt!1352461 (lemmaConcatTwoListThenFirstIsPrefix!2364 prefix!426 suffix!1176))))

(declare-fun b!3877618 () Bool)

(declare-fun res!1571093 () Bool)

(assert (=> b!3877618 (=> res!1571093 e!2399136)))

(assert (=> b!3877618 (= res!1571093 (or (not (= lt!1352468 (tuple2!40459 (_1!23363 lt!1352468) (_2!23363 lt!1352468)))) (= (_2!23364 (v!39117 lt!1352444)) suffix!1176)))))

(assert (=> b!3877619 (= e!2399114 (and tp!1175569 tp!1175568))))

(declare-fun e!2399104 () Bool)

(declare-fun tp!1175562 () Bool)

(declare-fun b!3877620 () Bool)

(declare-fun inv!55384 (Token!11942) Bool)

(assert (=> b!3877620 (= e!2399104 (and (inv!55384 (h!46648 prefixTokens!80)) e!2399100 tp!1175562))))

(declare-fun b!3877621 () Bool)

(declare-fun res!1571101 () Bool)

(assert (=> b!3877621 (=> res!1571101 e!2399135)))

(assert (=> b!3877621 (= res!1571101 (not (= (lexList!1759 thiss!20629 rules!2768 lt!1352463) lt!1352488)))))

(declare-fun b!3877622 () Bool)

(declare-fun rulesValidInductive!2292 (LexerInterface!5991 List!41353) Bool)

(assert (=> b!3877622 (= e!2399138 (rulesValidInductive!2292 thiss!20629 rules!2768))))

(assert (=> b!3877622 (= (maxPrefix!3295 thiss!20629 rules!2768 lt!1352442) (Some!8819 (tuple2!40461 (_1!23364 (v!39117 lt!1352444)) lt!1352448)))))

(declare-fun lt!1352482 () Unit!59255)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!26 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41351 Token!11942 List!41351 List!41351) Unit!59255)

(assert (=> b!3877622 (= lt!1352482 (lemmaMaxPrefixThenWithShorterSuffix!26 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41227 (_1!23364 (v!39117 lt!1352444)) (_2!23364 (v!39117 lt!1352444)) lt!1352448))))

(declare-fun b!3877623 () Bool)

(assert (=> b!3877623 (= e!2399099 e!2399130)))

(declare-fun res!1571113 () Bool)

(assert (=> b!3877623 (=> (not res!1571113) (not e!2399130))))

(assert (=> b!3877623 (= res!1571113 (= (lexList!1759 thiss!20629 rules!2768 suffix!1176) lt!1352479))))

(assert (=> b!3877623 (= lt!1352479 (tuple2!40459 suffixTokens!72 suffixResult!91))))

(declare-fun b!3877624 () Bool)

(declare-fun res!1571102 () Bool)

(assert (=> b!3877624 (=> (not res!1571102) (not e!2399142))))

(declare-fun rulesInvariant!5334 (LexerInterface!5991 List!41353) Bool)

(assert (=> b!3877624 (= res!1571102 (rulesInvariant!5334 thiss!20629 rules!2768))))

(declare-fun b!3877625 () Bool)

(assert (=> b!3877625 (= e!2399121 e!2399110)))

(declare-fun res!1571095 () Bool)

(assert (=> b!3877625 (=> res!1571095 e!2399110)))

(assert (=> b!3877625 (= res!1571095 (or (not (= lt!1352472 lt!1352453)) (not (= lt!1352472 lt!1352483))))))

(assert (=> b!3877625 (= lt!1352472 (++!10562 lt!1352466 suffix!1176))))

(assert (=> b!3877626 (= e!2399115 (and tp!1175563 tp!1175558))))

(declare-fun tp!1175560 () Bool)

(declare-fun b!3877627 () Bool)

(declare-fun e!2399126 () Bool)

(assert (=> b!3877627 (= e!2399126 (and (inv!55384 (h!46648 suffixTokens!72)) e!2399127 tp!1175560))))

(declare-fun b!3877628 () Bool)

(declare-fun res!1571099 () Bool)

(assert (=> b!3877628 (=> res!1571099 e!2399112)))

(assert (=> b!3877628 (= res!1571099 (isEmpty!24477 suffix!1176))))

(declare-fun res!1571107 () Bool)

(assert (=> start!363988 (=> (not res!1571107) (not e!2399142))))

(assert (=> start!363988 (= res!1571107 ((_ is Lexer!5989) thiss!20629))))

(assert (=> start!363988 e!2399142))

(assert (=> start!363988 e!2399107))

(assert (=> start!363988 true))

(assert (=> start!363988 e!2399103))

(assert (=> start!363988 e!2399117))

(assert (=> start!363988 e!2399104))

(assert (=> start!363988 e!2399126))

(assert (=> start!363988 e!2399102))

(declare-fun b!3877583 () Bool)

(declare-fun Unit!59265 () Unit!59255)

(assert (=> b!3877583 (= e!2399122 Unit!59265)))

(declare-fun b!3877629 () Bool)

(declare-fun res!1571106 () Bool)

(assert (=> b!3877629 (=> res!1571106 e!2399108)))

(declare-fun head!8228 (List!41352) Token!11942)

(assert (=> b!3877629 (= res!1571106 (not (= (head!8228 prefixTokens!80) (_1!23364 (v!39117 lt!1352444)))))))

(declare-fun b!3877630 () Bool)

(assert (=> b!3877630 (= e!2399136 e!2399108)))

(declare-fun res!1571114 () Bool)

(assert (=> b!3877630 (=> res!1571114 e!2399108)))

(declare-fun lt!1352484 () Int)

(assert (=> b!3877630 (= res!1571114 (<= lt!1352484 lt!1352454))))

(declare-fun lt!1352456 () Unit!59255)

(assert (=> b!3877630 (= lt!1352456 e!2399122)))

(declare-fun c!674588 () Bool)

(assert (=> b!3877630 (= c!674588 (= lt!1352484 lt!1352454))))

(declare-fun lt!1352460 () Unit!59255)

(assert (=> b!3877630 (= lt!1352460 e!2399140)))

(declare-fun c!674586 () Bool)

(assert (=> b!3877630 (= c!674586 (< lt!1352484 lt!1352454))))

(assert (=> b!3877630 (= lt!1352454 (size!30974 suffix!1176))))

(assert (=> b!3877630 (= lt!1352484 (size!30974 (_2!23364 (v!39117 lt!1352444))))))

(assert (= (and start!363988 res!1571107) b!3877596))

(assert (= (and b!3877596 res!1571098) b!3877624))

(assert (= (and b!3877624 res!1571102) b!3877577))

(assert (= (and b!3877577 res!1571120) b!3877592))

(assert (= (and b!3877592 res!1571119) b!3877613))

(assert (= (and b!3877613 res!1571097) b!3877623))

(assert (= (and b!3877623 res!1571113) b!3877606))

(assert (= (and b!3877606 res!1571123) b!3877614))

(assert (= (and b!3877614 res!1571116) b!3877602))

(assert (= (and b!3877614 (not res!1571096)) b!3877585))

(assert (= (and b!3877585 (not res!1571122)) b!3877618))

(assert (= (and b!3877618 (not res!1571093)) b!3877630))

(assert (= (and b!3877630 c!674586) b!3877604))

(assert (= (and b!3877630 (not c!674586)) b!3877599))

(assert (= (and b!3877604 c!674589) b!3877589))

(assert (= (and b!3877604 (not c!674589)) b!3877615))

(assert (= (and b!3877589 c!674585) b!3877611))

(assert (= (and b!3877589 (not c!674585)) b!3877597))

(assert (= (and b!3877611 res!1571112) b!3877576))

(assert (= (and b!3877597 res!1571094) b!3877584))

(assert (= (or b!3877611 b!3877597) bm!282823))

(assert (= (and b!3877630 c!674588) b!3877612))

(assert (= (and b!3877630 (not c!674588)) b!3877583))

(assert (= (and b!3877630 (not res!1571114)) b!3877629))

(assert (= (and b!3877629 (not res!1571106)) b!3877617))

(assert (= (and b!3877617 (not res!1571118)) b!3877591))

(assert (= (and b!3877591 (not res!1571117)) b!3877625))

(assert (= (and b!3877625 (not res!1571095)) b!3877581))

(assert (= (and b!3877581 (not res!1571115)) b!3877610))

(assert (= (and b!3877610 (not res!1571109)) b!3877580))

(assert (= (and b!3877580 (not res!1571103)) b!3877590))

(assert (= (and b!3877590 c!674587) b!3877594))

(assert (= (and b!3877590 (not c!674587)) b!3877608))

(assert (= (and b!3877590 (not res!1571108)) b!3877621))

(assert (= (and b!3877621 (not res!1571101)) b!3877598))

(assert (= (and b!3877598 (not res!1571121)) b!3877628))

(assert (= (and b!3877628 (not res!1571099)) b!3877588))

(assert (= (and b!3877588 (not res!1571104)) b!3877586))

(assert (= (and b!3877586 (not res!1571111)) b!3877616))

(assert (= (and b!3877616 (not res!1571100)) b!3877603))

(assert (= (and b!3877603 (not res!1571110)) b!3877587))

(assert (= (and b!3877587 (not res!1571105)) b!3877622))

(assert (= (and start!363988 ((_ is Cons!41227) suffixResult!91)) b!3877582))

(assert (= (and start!363988 ((_ is Cons!41227) suffix!1176)) b!3877605))

(assert (= b!3877609 b!3877578))

(assert (= b!3877601 b!3877609))

(assert (= (and start!363988 ((_ is Cons!41229) rules!2768)) b!3877601))

(assert (= b!3877595 b!3877619))

(assert (= b!3877607 b!3877595))

(assert (= b!3877620 b!3877607))

(assert (= (and start!363988 ((_ is Cons!41228) prefixTokens!80)) b!3877620))

(assert (= b!3877593 b!3877626))

(assert (= b!3877600 b!3877593))

(assert (= b!3877627 b!3877600))

(assert (= (and start!363988 ((_ is Cons!41228) suffixTokens!72)) b!3877627))

(assert (= (and start!363988 ((_ is Cons!41227) prefix!426)) b!3877579))

(declare-fun m!4435579 () Bool)

(assert (=> b!3877604 m!4435579))

(declare-fun m!4435581 () Bool)

(assert (=> b!3877604 m!4435581))

(declare-fun m!4435583 () Bool)

(assert (=> b!3877604 m!4435583))

(declare-fun m!4435585 () Bool)

(assert (=> b!3877604 m!4435585))

(declare-fun m!4435587 () Bool)

(assert (=> b!3877604 m!4435587))

(declare-fun m!4435589 () Bool)

(assert (=> b!3877624 m!4435589))

(declare-fun m!4435591 () Bool)

(assert (=> b!3877586 m!4435591))

(declare-fun m!4435593 () Bool)

(assert (=> b!3877616 m!4435593))

(declare-fun m!4435595 () Bool)

(assert (=> b!3877616 m!4435595))

(assert (=> b!3877616 m!4435595))

(declare-fun m!4435597 () Bool)

(assert (=> b!3877616 m!4435597))

(declare-fun m!4435599 () Bool)

(assert (=> b!3877616 m!4435599))

(declare-fun m!4435601 () Bool)

(assert (=> b!3877621 m!4435601))

(declare-fun m!4435603 () Bool)

(assert (=> b!3877591 m!4435603))

(declare-fun m!4435605 () Bool)

(assert (=> b!3877591 m!4435605))

(declare-fun m!4435607 () Bool)

(assert (=> b!3877581 m!4435607))

(declare-fun m!4435609 () Bool)

(assert (=> b!3877581 m!4435609))

(declare-fun m!4435611 () Bool)

(assert (=> b!3877581 m!4435611))

(declare-fun m!4435613 () Bool)

(assert (=> b!3877628 m!4435613))

(declare-fun m!4435615 () Bool)

(assert (=> b!3877630 m!4435615))

(declare-fun m!4435617 () Bool)

(assert (=> b!3877630 m!4435617))

(declare-fun m!4435619 () Bool)

(assert (=> b!3877620 m!4435619))

(declare-fun m!4435621 () Bool)

(assert (=> b!3877585 m!4435621))

(declare-fun m!4435623 () Bool)

(assert (=> b!3877588 m!4435623))

(declare-fun m!4435625 () Bool)

(assert (=> b!3877614 m!4435625))

(declare-fun m!4435627 () Bool)

(assert (=> b!3877614 m!4435627))

(declare-fun m!4435629 () Bool)

(assert (=> b!3877614 m!4435629))

(declare-fun m!4435631 () Bool)

(assert (=> b!3877614 m!4435631))

(declare-fun m!4435633 () Bool)

(assert (=> b!3877614 m!4435633))

(declare-fun m!4435635 () Bool)

(assert (=> b!3877614 m!4435635))

(declare-fun m!4435637 () Bool)

(assert (=> b!3877614 m!4435637))

(declare-fun m!4435639 () Bool)

(assert (=> b!3877614 m!4435639))

(declare-fun m!4435641 () Bool)

(assert (=> b!3877614 m!4435641))

(declare-fun m!4435643 () Bool)

(assert (=> b!3877614 m!4435643))

(declare-fun m!4435645 () Bool)

(assert (=> b!3877614 m!4435645))

(declare-fun m!4435647 () Bool)

(assert (=> b!3877614 m!4435647))

(assert (=> b!3877614 m!4435633))

(assert (=> b!3877614 m!4435631))

(declare-fun m!4435649 () Bool)

(assert (=> b!3877614 m!4435649))

(declare-fun m!4435651 () Bool)

(assert (=> b!3877614 m!4435651))

(declare-fun m!4435653 () Bool)

(assert (=> b!3877590 m!4435653))

(declare-fun m!4435655 () Bool)

(assert (=> b!3877590 m!4435655))

(declare-fun m!4435657 () Bool)

(assert (=> b!3877590 m!4435657))

(declare-fun m!4435659 () Bool)

(assert (=> b!3877590 m!4435659))

(assert (=> b!3877590 m!4435655))

(declare-fun m!4435661 () Bool)

(assert (=> b!3877590 m!4435661))

(declare-fun m!4435663 () Bool)

(assert (=> b!3877602 m!4435663))

(declare-fun m!4435665 () Bool)

(assert (=> b!3877587 m!4435665))

(declare-fun m!4435667 () Bool)

(assert (=> b!3877593 m!4435667))

(declare-fun m!4435669 () Bool)

(assert (=> b!3877593 m!4435669))

(declare-fun m!4435671 () Bool)

(assert (=> b!3877592 m!4435671))

(declare-fun m!4435673 () Bool)

(assert (=> b!3877612 m!4435673))

(declare-fun m!4435675 () Bool)

(assert (=> b!3877612 m!4435675))

(declare-fun m!4435677 () Bool)

(assert (=> b!3877612 m!4435677))

(declare-fun m!4435679 () Bool)

(assert (=> b!3877612 m!4435679))

(declare-fun m!4435681 () Bool)

(assert (=> b!3877611 m!4435681))

(declare-fun m!4435683 () Bool)

(assert (=> b!3877611 m!4435683))

(declare-fun m!4435685 () Bool)

(assert (=> b!3877607 m!4435685))

(declare-fun m!4435687 () Bool)

(assert (=> b!3877609 m!4435687))

(declare-fun m!4435689 () Bool)

(assert (=> b!3877609 m!4435689))

(declare-fun m!4435691 () Bool)

(assert (=> b!3877623 m!4435691))

(declare-fun m!4435693 () Bool)

(assert (=> bm!282823 m!4435693))

(declare-fun m!4435695 () Bool)

(assert (=> b!3877606 m!4435695))

(declare-fun m!4435697 () Bool)

(assert (=> b!3877580 m!4435697))

(declare-fun m!4435699 () Bool)

(assert (=> b!3877580 m!4435699))

(declare-fun m!4435701 () Bool)

(assert (=> b!3877580 m!4435701))

(declare-fun m!4435703 () Bool)

(assert (=> b!3877580 m!4435703))

(declare-fun m!4435705 () Bool)

(assert (=> b!3877622 m!4435705))

(declare-fun m!4435707 () Bool)

(assert (=> b!3877622 m!4435707))

(declare-fun m!4435709 () Bool)

(assert (=> b!3877622 m!4435709))

(declare-fun m!4435711 () Bool)

(assert (=> b!3877598 m!4435711))

(declare-fun m!4435713 () Bool)

(assert (=> b!3877598 m!4435713))

(declare-fun m!4435715 () Bool)

(assert (=> b!3877613 m!4435715))

(declare-fun m!4435717 () Bool)

(assert (=> b!3877613 m!4435717))

(declare-fun m!4435719 () Bool)

(assert (=> b!3877613 m!4435719))

(declare-fun m!4435721 () Bool)

(assert (=> b!3877597 m!4435721))

(declare-fun m!4435723 () Bool)

(assert (=> b!3877597 m!4435723))

(declare-fun m!4435725 () Bool)

(assert (=> b!3877625 m!4435725))

(declare-fun m!4435727 () Bool)

(assert (=> b!3877589 m!4435727))

(assert (=> b!3877589 m!4435699))

(declare-fun m!4435729 () Bool)

(assert (=> b!3877629 m!4435729))

(declare-fun m!4435731 () Bool)

(assert (=> b!3877617 m!4435731))

(declare-fun m!4435733 () Bool)

(assert (=> b!3877617 m!4435733))

(assert (=> b!3877617 m!4435673))

(declare-fun m!4435735 () Bool)

(assert (=> b!3877617 m!4435735))

(assert (=> b!3877617 m!4435675))

(declare-fun m!4435737 () Bool)

(assert (=> b!3877610 m!4435737))

(declare-fun m!4435739 () Bool)

(assert (=> b!3877610 m!4435739))

(declare-fun m!4435741 () Bool)

(assert (=> b!3877610 m!4435741))

(declare-fun m!4435743 () Bool)

(assert (=> b!3877577 m!4435743))

(declare-fun m!4435745 () Bool)

(assert (=> b!3877627 m!4435745))

(declare-fun m!4435747 () Bool)

(assert (=> b!3877596 m!4435747))

(declare-fun m!4435749 () Bool)

(assert (=> b!3877595 m!4435749))

(declare-fun m!4435751 () Bool)

(assert (=> b!3877595 m!4435751))

(declare-fun m!4435753 () Bool)

(assert (=> b!3877594 m!4435753))

(declare-fun m!4435755 () Bool)

(assert (=> b!3877600 m!4435755))

(check-sat (not b!3877630) (not b!3877582) (not b!3877616) (not b!3877624) (not b!3877577) (not b!3877627) (not b!3877623) (not b!3877587) (not b!3877609) (not b!3877602) (not b!3877589) (not bm!282823) (not b!3877628) (not b!3877604) (not b_next!105623) (not b!3877591) (not b!3877613) (not b!3877588) b_and!290767 (not b!3877617) (not b!3877593) b_and!290763 (not b!3877610) (not b!3877622) (not b!3877629) (not b!3877590) (not b_next!105629) (not b_next!105625) (not b!3877595) (not b_next!105631) (not b!3877579) (not b!3877605) (not b!3877612) (not b!3877598) b_and!290773 (not b!3877581) (not b!3877600) (not b!3877611) b_and!290771 (not b_next!105621) (not b!3877620) (not b_next!105627) (not b!3877614) (not b!3877592) b_and!290769 (not b!3877585) (not b!3877621) (not b!3877607) b_and!290765 (not b!3877625) (not b!3877586) (not b!3877596) tp_is_empty!19585 (not b!3877597) (not b!3877606) (not b!3877580) (not b!3877594) (not b!3877601))
(check-sat (not b_next!105623) b_and!290767 (not b_next!105625) (not b_next!105631) b_and!290773 b_and!290769 b_and!290765 b_and!290763 (not b_next!105629) b_and!290771 (not b_next!105621) (not b_next!105627))
(get-model)

(declare-fun d!1147856 () Bool)

(declare-fun lt!1352492 () Int)

(assert (=> d!1147856 (>= lt!1352492 0)))

(declare-fun e!2399145 () Int)

(assert (=> d!1147856 (= lt!1352492 e!2399145)))

(declare-fun c!674594 () Bool)

(assert (=> d!1147856 (= c!674594 ((_ is Nil!41227) (originalCharacters!7002 (_1!23364 (v!39117 lt!1352444)))))))

(assert (=> d!1147856 (= (size!30974 (originalCharacters!7002 (_1!23364 (v!39117 lt!1352444)))) lt!1352492)))

(declare-fun b!3877635 () Bool)

(assert (=> b!3877635 (= e!2399145 0)))

(declare-fun b!3877636 () Bool)

(assert (=> b!3877636 (= e!2399145 (+ 1 (size!30974 (t!314994 (originalCharacters!7002 (_1!23364 (v!39117 lt!1352444)))))))))

(assert (= (and d!1147856 c!674594) b!3877635))

(assert (= (and d!1147856 (not c!674594)) b!3877636))

(declare-fun m!4435757 () Bool)

(assert (=> b!3877636 m!4435757))

(assert (=> b!3877602 d!1147856))

(declare-fun b!3877647 () Bool)

(declare-fun e!2399154 () tuple2!40458)

(declare-fun lt!1352500 () Option!8820)

(declare-fun lt!1352499 () tuple2!40458)

(assert (=> b!3877647 (= e!2399154 (tuple2!40459 (Cons!41228 (_1!23364 (v!39117 lt!1352500)) (_1!23363 lt!1352499)) (_2!23363 lt!1352499)))))

(assert (=> b!3877647 (= lt!1352499 (lexList!1759 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352500))))))

(declare-fun b!3877649 () Bool)

(declare-fun e!2399153 () Bool)

(declare-fun lt!1352501 () tuple2!40458)

(assert (=> b!3877649 (= e!2399153 (= (_2!23363 lt!1352501) suffix!1176))))

(declare-fun b!3877650 () Bool)

(declare-fun e!2399152 () Bool)

(assert (=> b!3877650 (= e!2399153 e!2399152)))

(declare-fun res!1571136 () Bool)

(assert (=> b!3877650 (= res!1571136 (< (size!30974 (_2!23363 lt!1352501)) (size!30974 suffix!1176)))))

(assert (=> b!3877650 (=> (not res!1571136) (not e!2399152))))

(declare-fun b!3877651 () Bool)

(assert (=> b!3877651 (= e!2399154 (tuple2!40459 Nil!41228 suffix!1176))))

(declare-fun b!3877648 () Bool)

(assert (=> b!3877648 (= e!2399152 (not (isEmpty!24476 (_1!23363 lt!1352501))))))

(declare-fun d!1147858 () Bool)

(assert (=> d!1147858 e!2399153))

(declare-fun c!674599 () Bool)

(declare-fun size!30976 (List!41352) Int)

(assert (=> d!1147858 (= c!674599 (> (size!30976 (_1!23363 lt!1352501)) 0))))

(assert (=> d!1147858 (= lt!1352501 e!2399154)))

(declare-fun c!674600 () Bool)

(assert (=> d!1147858 (= c!674600 ((_ is Some!8819) lt!1352500))))

(assert (=> d!1147858 (= lt!1352500 (maxPrefix!3295 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1147858 (= (lexList!1759 thiss!20629 rules!2768 suffix!1176) lt!1352501)))

(assert (= (and d!1147858 c!674600) b!3877647))

(assert (= (and d!1147858 (not c!674600)) b!3877651))

(assert (= (and d!1147858 c!674599) b!3877650))

(assert (= (and d!1147858 (not c!674599)) b!3877649))

(assert (= (and b!3877650 res!1571136) b!3877648))

(declare-fun m!4435759 () Bool)

(assert (=> b!3877647 m!4435759))

(declare-fun m!4435761 () Bool)

(assert (=> b!3877650 m!4435761))

(assert (=> b!3877650 m!4435615))

(declare-fun m!4435763 () Bool)

(assert (=> b!3877648 m!4435763))

(declare-fun m!4435765 () Bool)

(assert (=> d!1147858 m!4435765))

(declare-fun m!4435767 () Bool)

(assert (=> d!1147858 m!4435767))

(assert (=> b!3877623 d!1147858))

(declare-fun b!3877663 () Bool)

(declare-fun e!2399159 () Bool)

(declare-fun lt!1352507 () List!41351)

(assert (=> b!3877663 (= e!2399159 (or (not (= lt!1352463 Nil!41227)) (= lt!1352507 lt!1352459)))))

(declare-fun d!1147862 () Bool)

(assert (=> d!1147862 e!2399159))

(declare-fun res!1571142 () Bool)

(assert (=> d!1147862 (=> (not res!1571142) (not e!2399159))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6160 (List!41351) (InoxSet C!22800))

(assert (=> d!1147862 (= res!1571142 (= (content!6160 lt!1352507) ((_ map or) (content!6160 lt!1352459) (content!6160 lt!1352463))))))

(declare-fun e!2399160 () List!41351)

(assert (=> d!1147862 (= lt!1352507 e!2399160)))

(declare-fun c!674603 () Bool)

(assert (=> d!1147862 (= c!674603 ((_ is Nil!41227) lt!1352459))))

(assert (=> d!1147862 (= (++!10562 lt!1352459 lt!1352463) lt!1352507)))

(declare-fun b!3877660 () Bool)

(assert (=> b!3877660 (= e!2399160 lt!1352463)))

(declare-fun b!3877661 () Bool)

(assert (=> b!3877661 (= e!2399160 (Cons!41227 (h!46647 lt!1352459) (++!10562 (t!314994 lt!1352459) lt!1352463)))))

(declare-fun b!3877662 () Bool)

(declare-fun res!1571141 () Bool)

(assert (=> b!3877662 (=> (not res!1571141) (not e!2399159))))

(assert (=> b!3877662 (= res!1571141 (= (size!30974 lt!1352507) (+ (size!30974 lt!1352459) (size!30974 lt!1352463))))))

(assert (= (and d!1147862 c!674603) b!3877660))

(assert (= (and d!1147862 (not c!674603)) b!3877661))

(assert (= (and d!1147862 res!1571142) b!3877662))

(assert (= (and b!3877662 res!1571141) b!3877663))

(declare-fun m!4435771 () Bool)

(assert (=> d!1147862 m!4435771))

(declare-fun m!4435773 () Bool)

(assert (=> d!1147862 m!4435773))

(declare-fun m!4435775 () Bool)

(assert (=> d!1147862 m!4435775))

(declare-fun m!4435777 () Bool)

(assert (=> b!3877661 m!4435777))

(declare-fun m!4435779 () Bool)

(assert (=> b!3877662 m!4435779))

(assert (=> b!3877662 m!4435647))

(declare-fun m!4435781 () Bool)

(assert (=> b!3877662 m!4435781))

(assert (=> b!3877581 d!1147862))

(declare-fun b!3877667 () Bool)

(declare-fun lt!1352508 () List!41351)

(declare-fun e!2399161 () Bool)

(assert (=> b!3877667 (= e!2399161 (or (not (= suffix!1176 Nil!41227)) (= lt!1352508 lt!1352448)))))

(declare-fun d!1147866 () Bool)

(assert (=> d!1147866 e!2399161))

(declare-fun res!1571144 () Bool)

(assert (=> d!1147866 (=> (not res!1571144) (not e!2399161))))

(assert (=> d!1147866 (= res!1571144 (= (content!6160 lt!1352508) ((_ map or) (content!6160 lt!1352448) (content!6160 suffix!1176))))))

(declare-fun e!2399162 () List!41351)

(assert (=> d!1147866 (= lt!1352508 e!2399162)))

(declare-fun c!674604 () Bool)

(assert (=> d!1147866 (= c!674604 ((_ is Nil!41227) lt!1352448))))

(assert (=> d!1147866 (= (++!10562 lt!1352448 suffix!1176) lt!1352508)))

(declare-fun b!3877664 () Bool)

(assert (=> b!3877664 (= e!2399162 suffix!1176)))

(declare-fun b!3877665 () Bool)

(assert (=> b!3877665 (= e!2399162 (Cons!41227 (h!46647 lt!1352448) (++!10562 (t!314994 lt!1352448) suffix!1176)))))

(declare-fun b!3877666 () Bool)

(declare-fun res!1571143 () Bool)

(assert (=> b!3877666 (=> (not res!1571143) (not e!2399161))))

(assert (=> b!3877666 (= res!1571143 (= (size!30974 lt!1352508) (+ (size!30974 lt!1352448) (size!30974 suffix!1176))))))

(assert (= (and d!1147866 c!674604) b!3877664))

(assert (= (and d!1147866 (not c!674604)) b!3877665))

(assert (= (and d!1147866 res!1571144) b!3877666))

(assert (= (and b!3877666 res!1571143) b!3877667))

(declare-fun m!4435783 () Bool)

(assert (=> d!1147866 m!4435783))

(declare-fun m!4435785 () Bool)

(assert (=> d!1147866 m!4435785))

(declare-fun m!4435787 () Bool)

(assert (=> d!1147866 m!4435787))

(declare-fun m!4435789 () Bool)

(assert (=> b!3877665 m!4435789))

(declare-fun m!4435791 () Bool)

(assert (=> b!3877666 m!4435791))

(declare-fun m!4435793 () Bool)

(assert (=> b!3877666 m!4435793))

(assert (=> b!3877666 m!4435615))

(assert (=> b!3877581 d!1147866))

(declare-fun d!1147868 () Bool)

(assert (=> d!1147868 (= (++!10562 (++!10562 lt!1352459 lt!1352448) suffix!1176) (++!10562 lt!1352459 (++!10562 lt!1352448 suffix!1176)))))

(declare-fun lt!1352517 () Unit!59255)

(declare-fun choose!22979 (List!41351 List!41351 List!41351) Unit!59255)

(assert (=> d!1147868 (= lt!1352517 (choose!22979 lt!1352459 lt!1352448 suffix!1176))))

(assert (=> d!1147868 (= (lemmaConcatAssociativity!2275 lt!1352459 lt!1352448 suffix!1176) lt!1352517)))

(declare-fun bs!583668 () Bool)

(assert (= bs!583668 d!1147868))

(declare-fun m!4435795 () Bool)

(assert (=> bs!583668 m!4435795))

(assert (=> bs!583668 m!4435609))

(assert (=> bs!583668 m!4435603))

(declare-fun m!4435797 () Bool)

(assert (=> bs!583668 m!4435797))

(assert (=> bs!583668 m!4435603))

(assert (=> bs!583668 m!4435609))

(declare-fun m!4435799 () Bool)

(assert (=> bs!583668 m!4435799))

(assert (=> b!3877581 d!1147868))

(declare-fun d!1147870 () Bool)

(assert (=> d!1147870 true))

(declare-fun lt!1352590 () Bool)

(declare-fun lambda!126254 () Int)

(declare-fun forall!8299 (List!41353 Int) Bool)

(assert (=> d!1147870 (= lt!1352590 (forall!8299 rules!2768 lambda!126254))))

(declare-fun e!2399251 () Bool)

(assert (=> d!1147870 (= lt!1352590 e!2399251)))

(declare-fun res!1571239 () Bool)

(assert (=> d!1147870 (=> res!1571239 e!2399251)))

(assert (=> d!1147870 (= res!1571239 (not ((_ is Cons!41229) rules!2768)))))

(assert (=> d!1147870 (= (rulesValidInductive!2292 thiss!20629 rules!2768) lt!1352590)))

(declare-fun b!3877830 () Bool)

(declare-fun e!2399250 () Bool)

(assert (=> b!3877830 (= e!2399251 e!2399250)))

(declare-fun res!1571238 () Bool)

(assert (=> b!3877830 (=> (not res!1571238) (not e!2399250))))

(assert (=> b!3877830 (= res!1571238 (ruleValid!2354 thiss!20629 (h!46649 rules!2768)))))

(declare-fun b!3877831 () Bool)

(assert (=> b!3877831 (= e!2399250 (rulesValidInductive!2292 thiss!20629 (t!314996 rules!2768)))))

(assert (= (and d!1147870 (not res!1571239)) b!3877830))

(assert (= (and b!3877830 res!1571238) b!3877831))

(declare-fun m!4436003 () Bool)

(assert (=> d!1147870 m!4436003))

(declare-fun m!4436005 () Bool)

(assert (=> b!3877830 m!4436005))

(declare-fun m!4436007 () Bool)

(assert (=> b!3877831 m!4436007))

(assert (=> b!3877622 d!1147870))

(declare-fun b!3877852 () Bool)

(declare-fun res!1571260 () Bool)

(declare-fun e!2399259 () Bool)

(assert (=> b!3877852 (=> (not res!1571260) (not e!2399259))))

(declare-fun lt!1352605 () Option!8820)

(declare-fun matchR!5421 (Regex!11307 List!41351) Bool)

(assert (=> b!3877852 (= res!1571260 (matchR!5421 (regex!6402 (rule!9298 (_1!23364 (get!13643 lt!1352605)))) (list!15330 (charsOf!4230 (_1!23364 (get!13643 lt!1352605))))))))

(declare-fun b!3877853 () Bool)

(declare-fun res!1571258 () Bool)

(assert (=> b!3877853 (=> (not res!1571258) (not e!2399259))))

(assert (=> b!3877853 (= res!1571258 (< (size!30974 (_2!23364 (get!13643 lt!1352605))) (size!30974 lt!1352442)))))

(declare-fun b!3877854 () Bool)

(declare-fun e!2399260 () Option!8820)

(declare-fun call!282834 () Option!8820)

(assert (=> b!3877854 (= e!2399260 call!282834)))

(declare-fun b!3877855 () Bool)

(declare-fun res!1571256 () Bool)

(assert (=> b!3877855 (=> (not res!1571256) (not e!2399259))))

(assert (=> b!3877855 (= res!1571256 (= (++!10562 (list!15330 (charsOf!4230 (_1!23364 (get!13643 lt!1352605)))) (_2!23364 (get!13643 lt!1352605))) lt!1352442))))

(declare-fun b!3877856 () Bool)

(declare-fun lt!1352603 () Option!8820)

(declare-fun lt!1352604 () Option!8820)

(assert (=> b!3877856 (= e!2399260 (ite (and ((_ is None!8819) lt!1352603) ((_ is None!8819) lt!1352604)) None!8819 (ite ((_ is None!8819) lt!1352604) lt!1352603 (ite ((_ is None!8819) lt!1352603) lt!1352604 (ite (>= (size!30973 (_1!23364 (v!39117 lt!1352603))) (size!30973 (_1!23364 (v!39117 lt!1352604)))) lt!1352603 lt!1352604)))))))

(assert (=> b!3877856 (= lt!1352603 call!282834)))

(assert (=> b!3877856 (= lt!1352604 (maxPrefix!3295 thiss!20629 (t!314996 rules!2768) lt!1352442))))

(declare-fun b!3877857 () Bool)

(declare-fun res!1571255 () Bool)

(assert (=> b!3877857 (=> (not res!1571255) (not e!2399259))))

(assert (=> b!3877857 (= res!1571255 (= (value!203091 (_1!23364 (get!13643 lt!1352605))) (apply!9645 (transformation!6402 (rule!9298 (_1!23364 (get!13643 lt!1352605)))) (seqFromList!4673 (originalCharacters!7002 (_1!23364 (get!13643 lt!1352605)))))))))

(declare-fun b!3877858 () Bool)

(declare-fun res!1571257 () Bool)

(assert (=> b!3877858 (=> (not res!1571257) (not e!2399259))))

(assert (=> b!3877858 (= res!1571257 (= (list!15330 (charsOf!4230 (_1!23364 (get!13643 lt!1352605)))) (originalCharacters!7002 (_1!23364 (get!13643 lt!1352605)))))))

(declare-fun d!1147920 () Bool)

(declare-fun e!2399258 () Bool)

(assert (=> d!1147920 e!2399258))

(declare-fun res!1571254 () Bool)

(assert (=> d!1147920 (=> res!1571254 e!2399258)))

(declare-fun isEmpty!24480 (Option!8820) Bool)

(assert (=> d!1147920 (= res!1571254 (isEmpty!24480 lt!1352605))))

(assert (=> d!1147920 (= lt!1352605 e!2399260)))

(declare-fun c!674639 () Bool)

(assert (=> d!1147920 (= c!674639 (and ((_ is Cons!41229) rules!2768) ((_ is Nil!41229) (t!314996 rules!2768))))))

(declare-fun lt!1352601 () Unit!59255)

(declare-fun lt!1352602 () Unit!59255)

(assert (=> d!1147920 (= lt!1352601 lt!1352602)))

(assert (=> d!1147920 (isPrefix!3501 lt!1352442 lt!1352442)))

(declare-fun lemmaIsPrefixRefl!2215 (List!41351 List!41351) Unit!59255)

(assert (=> d!1147920 (= lt!1352602 (lemmaIsPrefixRefl!2215 lt!1352442 lt!1352442))))

(assert (=> d!1147920 (rulesValidInductive!2292 thiss!20629 rules!2768)))

(assert (=> d!1147920 (= (maxPrefix!3295 thiss!20629 rules!2768 lt!1352442) lt!1352605)))

(declare-fun bm!282829 () Bool)

(assert (=> bm!282829 (= call!282834 (maxPrefixOneRule!2377 thiss!20629 (h!46649 rules!2768) lt!1352442))))

(declare-fun b!3877859 () Bool)

(declare-fun contains!8296 (List!41353 Rule!12604) Bool)

(assert (=> b!3877859 (= e!2399259 (contains!8296 rules!2768 (rule!9298 (_1!23364 (get!13643 lt!1352605)))))))

(declare-fun b!3877860 () Bool)

(assert (=> b!3877860 (= e!2399258 e!2399259)))

(declare-fun res!1571259 () Bool)

(assert (=> b!3877860 (=> (not res!1571259) (not e!2399259))))

(declare-fun isDefined!6892 (Option!8820) Bool)

(assert (=> b!3877860 (= res!1571259 (isDefined!6892 lt!1352605))))

(assert (= (and d!1147920 c!674639) b!3877854))

(assert (= (and d!1147920 (not c!674639)) b!3877856))

(assert (= (or b!3877854 b!3877856) bm!282829))

(assert (= (and d!1147920 (not res!1571254)) b!3877860))

(assert (= (and b!3877860 res!1571259) b!3877858))

(assert (= (and b!3877858 res!1571257) b!3877853))

(assert (= (and b!3877853 res!1571258) b!3877855))

(assert (= (and b!3877855 res!1571256) b!3877857))

(assert (= (and b!3877857 res!1571255) b!3877852))

(assert (= (and b!3877852 res!1571260) b!3877859))

(declare-fun m!4436009 () Bool)

(assert (=> b!3877859 m!4436009))

(declare-fun m!4436011 () Bool)

(assert (=> b!3877859 m!4436011))

(assert (=> b!3877857 m!4436009))

(declare-fun m!4436013 () Bool)

(assert (=> b!3877857 m!4436013))

(assert (=> b!3877857 m!4436013))

(declare-fun m!4436015 () Bool)

(assert (=> b!3877857 m!4436015))

(declare-fun m!4436017 () Bool)

(assert (=> d!1147920 m!4436017))

(declare-fun m!4436019 () Bool)

(assert (=> d!1147920 m!4436019))

(declare-fun m!4436021 () Bool)

(assert (=> d!1147920 m!4436021))

(assert (=> d!1147920 m!4435705))

(declare-fun m!4436023 () Bool)

(assert (=> bm!282829 m!4436023))

(assert (=> b!3877852 m!4436009))

(declare-fun m!4436025 () Bool)

(assert (=> b!3877852 m!4436025))

(assert (=> b!3877852 m!4436025))

(declare-fun m!4436027 () Bool)

(assert (=> b!3877852 m!4436027))

(assert (=> b!3877852 m!4436027))

(declare-fun m!4436029 () Bool)

(assert (=> b!3877852 m!4436029))

(assert (=> b!3877855 m!4436009))

(assert (=> b!3877855 m!4436025))

(assert (=> b!3877855 m!4436025))

(assert (=> b!3877855 m!4436027))

(assert (=> b!3877855 m!4436027))

(declare-fun m!4436031 () Bool)

(assert (=> b!3877855 m!4436031))

(declare-fun m!4436033 () Bool)

(assert (=> b!3877856 m!4436033))

(assert (=> b!3877853 m!4436009))

(declare-fun m!4436035 () Bool)

(assert (=> b!3877853 m!4436035))

(declare-fun m!4436037 () Bool)

(assert (=> b!3877853 m!4436037))

(assert (=> b!3877858 m!4436009))

(assert (=> b!3877858 m!4436025))

(assert (=> b!3877858 m!4436025))

(assert (=> b!3877858 m!4436027))

(declare-fun m!4436039 () Bool)

(assert (=> b!3877860 m!4436039))

(assert (=> b!3877622 d!1147920))

(declare-fun d!1147922 () Bool)

(assert (=> d!1147922 (= (maxPrefix!3295 thiss!20629 rules!2768 (++!10562 prefix!426 Nil!41227)) (Some!8819 (tuple2!40461 (_1!23364 (v!39117 lt!1352444)) lt!1352448)))))

(declare-fun lt!1352608 () Unit!59255)

(declare-fun choose!22980 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41351 Token!11942 List!41351 List!41351) Unit!59255)

(assert (=> d!1147922 (= lt!1352608 (choose!22980 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41227 (_1!23364 (v!39117 lt!1352444)) (_2!23364 (v!39117 lt!1352444)) lt!1352448))))

(assert (=> d!1147922 (not (isEmpty!24478 rules!2768))))

(assert (=> d!1147922 (= (lemmaMaxPrefixThenWithShorterSuffix!26 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41227 (_1!23364 (v!39117 lt!1352444)) (_2!23364 (v!39117 lt!1352444)) lt!1352448) lt!1352608)))

(declare-fun bs!583672 () Bool)

(assert (= bs!583672 d!1147922))

(assert (=> bs!583672 m!4435665))

(assert (=> bs!583672 m!4435665))

(declare-fun m!4436041 () Bool)

(assert (=> bs!583672 m!4436041))

(declare-fun m!4436043 () Bool)

(assert (=> bs!583672 m!4436043))

(assert (=> bs!583672 m!4435747))

(assert (=> b!3877622 d!1147922))

(declare-fun d!1147924 () Bool)

(declare-fun e!2399266 () Bool)

(assert (=> d!1147924 e!2399266))

(declare-fun res!1571266 () Bool)

(assert (=> d!1147924 (=> (not res!1571266) (not e!2399266))))

(declare-fun lt!1352611 () List!41352)

(declare-fun content!6161 (List!41352) (InoxSet Token!11942))

(assert (=> d!1147924 (= res!1571266 (= (content!6161 lt!1352611) ((_ map or) (content!6161 lt!1352489) (content!6161 suffixTokens!72))))))

(declare-fun e!2399265 () List!41352)

(assert (=> d!1147924 (= lt!1352611 e!2399265)))

(declare-fun c!674642 () Bool)

(assert (=> d!1147924 (= c!674642 ((_ is Nil!41228) lt!1352489))))

(assert (=> d!1147924 (= (++!10561 lt!1352489 suffixTokens!72) lt!1352611)))

(declare-fun b!3877871 () Bool)

(declare-fun res!1571265 () Bool)

(assert (=> b!3877871 (=> (not res!1571265) (not e!2399266))))

(assert (=> b!3877871 (= res!1571265 (= (size!30976 lt!1352611) (+ (size!30976 lt!1352489) (size!30976 suffixTokens!72))))))

(declare-fun b!3877870 () Bool)

(assert (=> b!3877870 (= e!2399265 (Cons!41228 (h!46648 lt!1352489) (++!10561 (t!314995 lt!1352489) suffixTokens!72)))))

(declare-fun b!3877872 () Bool)

(assert (=> b!3877872 (= e!2399266 (or (not (= suffixTokens!72 Nil!41228)) (= lt!1352611 lt!1352489)))))

(declare-fun b!3877869 () Bool)

(assert (=> b!3877869 (= e!2399265 suffixTokens!72)))

(assert (= (and d!1147924 c!674642) b!3877869))

(assert (= (and d!1147924 (not c!674642)) b!3877870))

(assert (= (and d!1147924 res!1571266) b!3877871))

(assert (= (and b!3877871 res!1571265) b!3877872))

(declare-fun m!4436045 () Bool)

(assert (=> d!1147924 m!4436045))

(declare-fun m!4436047 () Bool)

(assert (=> d!1147924 m!4436047))

(declare-fun m!4436049 () Bool)

(assert (=> d!1147924 m!4436049))

(declare-fun m!4436051 () Bool)

(assert (=> b!3877871 m!4436051))

(declare-fun m!4436053 () Bool)

(assert (=> b!3877871 m!4436053))

(declare-fun m!4436055 () Bool)

(assert (=> b!3877871 m!4436055))

(declare-fun m!4436057 () Bool)

(assert (=> b!3877870 m!4436057))

(assert (=> b!3877580 d!1147924))

(declare-fun d!1147926 () Bool)

(assert (=> d!1147926 (= (tail!5945 prefixTokens!80) (t!314995 prefixTokens!80))))

(assert (=> b!3877580 d!1147926))

(declare-fun b!3877884 () Bool)

(declare-fun e!2399274 () Bool)

(assert (=> b!3877884 (= e!2399274 (>= (size!30974 lt!1352463) (size!30974 lt!1352448)))))

(declare-fun b!3877881 () Bool)

(declare-fun e!2399273 () Bool)

(declare-fun e!2399275 () Bool)

(assert (=> b!3877881 (= e!2399273 e!2399275)))

(declare-fun res!1571275 () Bool)

(assert (=> b!3877881 (=> (not res!1571275) (not e!2399275))))

(assert (=> b!3877881 (= res!1571275 (not ((_ is Nil!41227) lt!1352463)))))

(declare-fun d!1147928 () Bool)

(assert (=> d!1147928 e!2399274))

(declare-fun res!1571276 () Bool)

(assert (=> d!1147928 (=> res!1571276 e!2399274)))

(declare-fun lt!1352614 () Bool)

(assert (=> d!1147928 (= res!1571276 (not lt!1352614))))

(assert (=> d!1147928 (= lt!1352614 e!2399273)))

(declare-fun res!1571277 () Bool)

(assert (=> d!1147928 (=> res!1571277 e!2399273)))

(assert (=> d!1147928 (= res!1571277 ((_ is Nil!41227) lt!1352448))))

(assert (=> d!1147928 (= (isPrefix!3501 lt!1352448 lt!1352463) lt!1352614)))

(declare-fun b!3877882 () Bool)

(declare-fun res!1571278 () Bool)

(assert (=> b!3877882 (=> (not res!1571278) (not e!2399275))))

(declare-fun head!8230 (List!41351) C!22800)

(assert (=> b!3877882 (= res!1571278 (= (head!8230 lt!1352448) (head!8230 lt!1352463)))))

(declare-fun b!3877883 () Bool)

(declare-fun tail!5947 (List!41351) List!41351)

(assert (=> b!3877883 (= e!2399275 (isPrefix!3501 (tail!5947 lt!1352448) (tail!5947 lt!1352463)))))

(assert (= (and d!1147928 (not res!1571277)) b!3877881))

(assert (= (and b!3877881 res!1571275) b!3877882))

(assert (= (and b!3877882 res!1571278) b!3877883))

(assert (= (and d!1147928 (not res!1571276)) b!3877884))

(assert (=> b!3877884 m!4435781))

(assert (=> b!3877884 m!4435793))

(declare-fun m!4436059 () Bool)

(assert (=> b!3877882 m!4436059))

(declare-fun m!4436061 () Bool)

(assert (=> b!3877882 m!4436061))

(declare-fun m!4436063 () Bool)

(assert (=> b!3877883 m!4436063))

(declare-fun m!4436065 () Bool)

(assert (=> b!3877883 m!4436065))

(assert (=> b!3877883 m!4436063))

(assert (=> b!3877883 m!4436065))

(declare-fun m!4436067 () Bool)

(assert (=> b!3877883 m!4436067))

(assert (=> b!3877580 d!1147928))

(declare-fun d!1147930 () Bool)

(assert (=> d!1147930 (isPrefix!3501 lt!1352448 (++!10562 lt!1352448 suffix!1176))))

(declare-fun lt!1352617 () Unit!59255)

(declare-fun choose!22982 (List!41351 List!41351) Unit!59255)

(assert (=> d!1147930 (= lt!1352617 (choose!22982 lt!1352448 suffix!1176))))

(assert (=> d!1147930 (= (lemmaConcatTwoListThenFirstIsPrefix!2364 lt!1352448 suffix!1176) lt!1352617)))

(declare-fun bs!583673 () Bool)

(assert (= bs!583673 d!1147930))

(assert (=> bs!583673 m!4435609))

(assert (=> bs!583673 m!4435609))

(declare-fun m!4436069 () Bool)

(assert (=> bs!583673 m!4436069))

(declare-fun m!4436071 () Bool)

(assert (=> bs!583673 m!4436071))

(assert (=> b!3877580 d!1147930))

(declare-fun b!3877895 () Bool)

(declare-fun e!2399284 () Bool)

(declare-fun inv!17 (TokenValue!6632) Bool)

(assert (=> b!3877895 (= e!2399284 (inv!17 (value!203091 (h!46648 suffixTokens!72))))))

(declare-fun d!1147932 () Bool)

(declare-fun c!674648 () Bool)

(assert (=> d!1147932 (= c!674648 ((_ is IntegerValue!19896) (value!203091 (h!46648 suffixTokens!72))))))

(declare-fun e!2399283 () Bool)

(assert (=> d!1147932 (= (inv!21 (value!203091 (h!46648 suffixTokens!72))) e!2399283)))

(declare-fun b!3877896 () Bool)

(declare-fun e!2399282 () Bool)

(declare-fun inv!15 (TokenValue!6632) Bool)

(assert (=> b!3877896 (= e!2399282 (inv!15 (value!203091 (h!46648 suffixTokens!72))))))

(declare-fun b!3877897 () Bool)

(declare-fun res!1571281 () Bool)

(assert (=> b!3877897 (=> res!1571281 e!2399282)))

(assert (=> b!3877897 (= res!1571281 (not ((_ is IntegerValue!19898) (value!203091 (h!46648 suffixTokens!72)))))))

(assert (=> b!3877897 (= e!2399284 e!2399282)))

(declare-fun b!3877898 () Bool)

(assert (=> b!3877898 (= e!2399283 e!2399284)))

(declare-fun c!674647 () Bool)

(assert (=> b!3877898 (= c!674647 ((_ is IntegerValue!19897) (value!203091 (h!46648 suffixTokens!72))))))

(declare-fun b!3877899 () Bool)

(declare-fun inv!16 (TokenValue!6632) Bool)

(assert (=> b!3877899 (= e!2399283 (inv!16 (value!203091 (h!46648 suffixTokens!72))))))

(assert (= (and d!1147932 c!674648) b!3877899))

(assert (= (and d!1147932 (not c!674648)) b!3877898))

(assert (= (and b!3877898 c!674647) b!3877895))

(assert (= (and b!3877898 (not c!674647)) b!3877897))

(assert (= (and b!3877897 (not res!1571281)) b!3877896))

(declare-fun m!4436073 () Bool)

(assert (=> b!3877895 m!4436073))

(declare-fun m!4436075 () Bool)

(assert (=> b!3877896 m!4436075))

(declare-fun m!4436077 () Bool)

(assert (=> b!3877899 m!4436077))

(assert (=> b!3877600 d!1147932))

(declare-fun b!3877900 () Bool)

(declare-fun e!2399287 () tuple2!40458)

(declare-fun lt!1352619 () Option!8820)

(declare-fun lt!1352618 () tuple2!40458)

(assert (=> b!3877900 (= e!2399287 (tuple2!40459 (Cons!41228 (_1!23364 (v!39117 lt!1352619)) (_1!23363 lt!1352618)) (_2!23363 lt!1352618)))))

(assert (=> b!3877900 (= lt!1352618 (lexList!1759 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352619))))))

(declare-fun b!3877902 () Bool)

(declare-fun e!2399286 () Bool)

(declare-fun lt!1352620 () tuple2!40458)

(assert (=> b!3877902 (= e!2399286 (= (_2!23363 lt!1352620) lt!1352463))))

(declare-fun b!3877903 () Bool)

(declare-fun e!2399285 () Bool)

(assert (=> b!3877903 (= e!2399286 e!2399285)))

(declare-fun res!1571282 () Bool)

(assert (=> b!3877903 (= res!1571282 (< (size!30974 (_2!23363 lt!1352620)) (size!30974 lt!1352463)))))

(assert (=> b!3877903 (=> (not res!1571282) (not e!2399285))))

(declare-fun b!3877904 () Bool)

(assert (=> b!3877904 (= e!2399287 (tuple2!40459 Nil!41228 lt!1352463))))

(declare-fun b!3877901 () Bool)

(assert (=> b!3877901 (= e!2399285 (not (isEmpty!24476 (_1!23363 lt!1352620))))))

(declare-fun d!1147934 () Bool)

(assert (=> d!1147934 e!2399286))

(declare-fun c!674649 () Bool)

(assert (=> d!1147934 (= c!674649 (> (size!30976 (_1!23363 lt!1352620)) 0))))

(assert (=> d!1147934 (= lt!1352620 e!2399287)))

(declare-fun c!674650 () Bool)

(assert (=> d!1147934 (= c!674650 ((_ is Some!8819) lt!1352619))))

(assert (=> d!1147934 (= lt!1352619 (maxPrefix!3295 thiss!20629 rules!2768 lt!1352463))))

(assert (=> d!1147934 (= (lexList!1759 thiss!20629 rules!2768 lt!1352463) lt!1352620)))

(assert (= (and d!1147934 c!674650) b!3877900))

(assert (= (and d!1147934 (not c!674650)) b!3877904))

(assert (= (and d!1147934 c!674649) b!3877903))

(assert (= (and d!1147934 (not c!674649)) b!3877902))

(assert (= (and b!3877903 res!1571282) b!3877901))

(declare-fun m!4436079 () Bool)

(assert (=> b!3877900 m!4436079))

(declare-fun m!4436081 () Bool)

(assert (=> b!3877903 m!4436081))

(assert (=> b!3877903 m!4435781))

(declare-fun m!4436083 () Bool)

(assert (=> b!3877901 m!4436083))

(declare-fun m!4436085 () Bool)

(assert (=> d!1147934 m!4436085))

(declare-fun m!4436087 () Bool)

(assert (=> d!1147934 m!4436087))

(assert (=> b!3877621 d!1147934))

(declare-fun d!1147936 () Bool)

(declare-fun res!1571287 () Bool)

(declare-fun e!2399290 () Bool)

(assert (=> d!1147936 (=> (not res!1571287) (not e!2399290))))

(assert (=> d!1147936 (= res!1571287 (not (isEmpty!24477 (originalCharacters!7002 (h!46648 prefixTokens!80)))))))

(assert (=> d!1147936 (= (inv!55384 (h!46648 prefixTokens!80)) e!2399290)))

(declare-fun b!3877909 () Bool)

(declare-fun res!1571288 () Bool)

(assert (=> b!3877909 (=> (not res!1571288) (not e!2399290))))

(declare-fun dynLambda!17712 (Int TokenValue!6632) BalanceConc!24820)

(assert (=> b!3877909 (= res!1571288 (= (originalCharacters!7002 (h!46648 prefixTokens!80)) (list!15330 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (value!203091 (h!46648 prefixTokens!80))))))))

(declare-fun b!3877910 () Bool)

(assert (=> b!3877910 (= e!2399290 (= (size!30973 (h!46648 prefixTokens!80)) (size!30974 (originalCharacters!7002 (h!46648 prefixTokens!80)))))))

(assert (= (and d!1147936 res!1571287) b!3877909))

(assert (= (and b!3877909 res!1571288) b!3877910))

(declare-fun b_lambda!113177 () Bool)

(assert (=> (not b_lambda!113177) (not b!3877909)))

(declare-fun tb!224951 () Bool)

(declare-fun t!315004 () Bool)

(assert (=> (and b!3877578 (= (toChars!8689 (transformation!6402 (h!46649 rules!2768))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80))))) t!315004) tb!224951))

(declare-fun b!3877915 () Bool)

(declare-fun e!2399293 () Bool)

(declare-fun tp!1175580 () Bool)

(declare-fun inv!55386 (Conc!12613) Bool)

(assert (=> b!3877915 (= e!2399293 (and (inv!55386 (c!674591 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (value!203091 (h!46648 prefixTokens!80))))) tp!1175580))))

(declare-fun result!274002 () Bool)

(declare-fun inv!55388 (BalanceConc!24820) Bool)

(assert (=> tb!224951 (= result!274002 (and (inv!55388 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (value!203091 (h!46648 prefixTokens!80)))) e!2399293))))

(assert (= tb!224951 b!3877915))

(declare-fun m!4436089 () Bool)

(assert (=> b!3877915 m!4436089))

(declare-fun m!4436091 () Bool)

(assert (=> tb!224951 m!4436091))

(assert (=> b!3877909 t!315004))

(declare-fun b_and!290781 () Bool)

(assert (= b_and!290765 (and (=> t!315004 result!274002) b_and!290781)))

(declare-fun t!315006 () Bool)

(declare-fun tb!224953 () Bool)

(assert (=> (and b!3877619 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80))))) t!315006) tb!224953))

(declare-fun result!274006 () Bool)

(assert (= result!274006 result!274002))

(assert (=> b!3877909 t!315006))

(declare-fun b_and!290783 () Bool)

(assert (= b_and!290769 (and (=> t!315006 result!274006) b_and!290783)))

(declare-fun t!315008 () Bool)

(declare-fun tb!224955 () Bool)

(assert (=> (and b!3877626 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80))))) t!315008) tb!224955))

(declare-fun result!274008 () Bool)

(assert (= result!274008 result!274002))

(assert (=> b!3877909 t!315008))

(declare-fun b_and!290785 () Bool)

(assert (= b_and!290773 (and (=> t!315008 result!274008) b_and!290785)))

(declare-fun m!4436093 () Bool)

(assert (=> d!1147936 m!4436093))

(declare-fun m!4436095 () Bool)

(assert (=> b!3877909 m!4436095))

(assert (=> b!3877909 m!4436095))

(declare-fun m!4436097 () Bool)

(assert (=> b!3877909 m!4436097))

(declare-fun m!4436099 () Bool)

(assert (=> b!3877910 m!4436099))

(assert (=> b!3877620 d!1147936))

(declare-fun b!3877916 () Bool)

(declare-fun e!2399296 () tuple2!40458)

(declare-fun lt!1352622 () Option!8820)

(declare-fun lt!1352621 () tuple2!40458)

(assert (=> b!3877916 (= e!2399296 (tuple2!40459 (Cons!41228 (_1!23364 (v!39117 lt!1352622)) (_1!23363 lt!1352621)) (_2!23363 lt!1352621)))))

(assert (=> b!3877916 (= lt!1352621 (lexList!1759 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352622))))))

(declare-fun b!3877918 () Bool)

(declare-fun e!2399295 () Bool)

(declare-fun lt!1352623 () tuple2!40458)

(assert (=> b!3877918 (= e!2399295 (= (_2!23363 lt!1352623) lt!1352448))))

(declare-fun b!3877919 () Bool)

(declare-fun e!2399294 () Bool)

(assert (=> b!3877919 (= e!2399295 e!2399294)))

(declare-fun res!1571289 () Bool)

(assert (=> b!3877919 (= res!1571289 (< (size!30974 (_2!23363 lt!1352623)) (size!30974 lt!1352448)))))

(assert (=> b!3877919 (=> (not res!1571289) (not e!2399294))))

(declare-fun b!3877920 () Bool)

(assert (=> b!3877920 (= e!2399296 (tuple2!40459 Nil!41228 lt!1352448))))

(declare-fun b!3877917 () Bool)

(assert (=> b!3877917 (= e!2399294 (not (isEmpty!24476 (_1!23363 lt!1352623))))))

(declare-fun d!1147938 () Bool)

(assert (=> d!1147938 e!2399295))

(declare-fun c!674651 () Bool)

(assert (=> d!1147938 (= c!674651 (> (size!30976 (_1!23363 lt!1352623)) 0))))

(assert (=> d!1147938 (= lt!1352623 e!2399296)))

(declare-fun c!674652 () Bool)

(assert (=> d!1147938 (= c!674652 ((_ is Some!8819) lt!1352622))))

(assert (=> d!1147938 (= lt!1352622 (maxPrefix!3295 thiss!20629 rules!2768 lt!1352448))))

(assert (=> d!1147938 (= (lexList!1759 thiss!20629 rules!2768 lt!1352448) lt!1352623)))

(assert (= (and d!1147938 c!674652) b!3877916))

(assert (= (and d!1147938 (not c!674652)) b!3877920))

(assert (= (and d!1147938 c!674651) b!3877919))

(assert (= (and d!1147938 (not c!674651)) b!3877918))

(assert (= (and b!3877919 res!1571289) b!3877917))

(declare-fun m!4436101 () Bool)

(assert (=> b!3877916 m!4436101))

(declare-fun m!4436103 () Bool)

(assert (=> b!3877919 m!4436103))

(assert (=> b!3877919 m!4435793))

(declare-fun m!4436105 () Bool)

(assert (=> b!3877917 m!4436105))

(declare-fun m!4436107 () Bool)

(assert (=> d!1147938 m!4436107))

(declare-fun m!4436109 () Bool)

(assert (=> d!1147938 m!4436109))

(assert (=> b!3877598 d!1147938))

(declare-fun d!1147940 () Bool)

(assert (=> d!1147940 (= (lexList!1759 thiss!20629 rules!2768 lt!1352448) (tuple2!40459 lt!1352489 Nil!41227))))

(declare-fun lt!1352626 () Unit!59255)

(declare-fun choose!22983 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41352 List!41352 List!41351) Unit!59255)

(assert (=> d!1147940 (= lt!1352626 (choose!22983 thiss!20629 rules!2768 lt!1352448 suffix!1176 lt!1352489 suffixTokens!72 suffixResult!91))))

(assert (=> d!1147940 (not (isEmpty!24478 rules!2768))))

(assert (=> d!1147940 (= (lemmaLexThenLexPrefix!591 thiss!20629 rules!2768 lt!1352448 suffix!1176 lt!1352489 suffixTokens!72 suffixResult!91) lt!1352626)))

(declare-fun bs!583674 () Bool)

(assert (= bs!583674 d!1147940))

(assert (=> bs!583674 m!4435711))

(declare-fun m!4436111 () Bool)

(assert (=> bs!583674 m!4436111))

(assert (=> bs!583674 m!4435747))

(assert (=> b!3877598 d!1147940))

(declare-fun d!1147942 () Bool)

(assert (=> d!1147942 (= (isEmpty!24476 prefixTokens!80) ((_ is Nil!41228) prefixTokens!80))))

(assert (=> b!3877577 d!1147942))

(declare-fun d!1147944 () Bool)

(assert (=> d!1147944 (= (head!8228 prefixTokens!80) (h!46648 prefixTokens!80))))

(assert (=> b!3877629 d!1147944))

(declare-fun d!1147946 () Bool)

(declare-fun lt!1352627 () Int)

(assert (=> d!1147946 (>= lt!1352627 0)))

(declare-fun e!2399297 () Int)

(assert (=> d!1147946 (= lt!1352627 e!2399297)))

(declare-fun c!674653 () Bool)

(assert (=> d!1147946 (= c!674653 ((_ is Nil!41227) Nil!41227))))

(assert (=> d!1147946 (= (size!30974 Nil!41227) lt!1352627)))

(declare-fun b!3877921 () Bool)

(assert (=> b!3877921 (= e!2399297 0)))

(declare-fun b!3877922 () Bool)

(assert (=> b!3877922 (= e!2399297 (+ 1 (size!30974 (t!314994 Nil!41227))))))

(assert (= (and d!1147946 c!674653) b!3877921))

(assert (= (and d!1147946 (not c!674653)) b!3877922))

(declare-fun m!4436113 () Bool)

(assert (=> b!3877922 m!4436113))

(assert (=> b!3877586 d!1147946))

(declare-fun b!3877923 () Bool)

(declare-fun e!2399300 () Bool)

(assert (=> b!3877923 (= e!2399300 (inv!17 (value!203091 (h!46648 prefixTokens!80))))))

(declare-fun d!1147948 () Bool)

(declare-fun c!674655 () Bool)

(assert (=> d!1147948 (= c!674655 ((_ is IntegerValue!19896) (value!203091 (h!46648 prefixTokens!80))))))

(declare-fun e!2399299 () Bool)

(assert (=> d!1147948 (= (inv!21 (value!203091 (h!46648 prefixTokens!80))) e!2399299)))

(declare-fun b!3877924 () Bool)

(declare-fun e!2399298 () Bool)

(assert (=> b!3877924 (= e!2399298 (inv!15 (value!203091 (h!46648 prefixTokens!80))))))

(declare-fun b!3877925 () Bool)

(declare-fun res!1571290 () Bool)

(assert (=> b!3877925 (=> res!1571290 e!2399298)))

(assert (=> b!3877925 (= res!1571290 (not ((_ is IntegerValue!19898) (value!203091 (h!46648 prefixTokens!80)))))))

(assert (=> b!3877925 (= e!2399300 e!2399298)))

(declare-fun b!3877926 () Bool)

(assert (=> b!3877926 (= e!2399299 e!2399300)))

(declare-fun c!674654 () Bool)

(assert (=> b!3877926 (= c!674654 ((_ is IntegerValue!19897) (value!203091 (h!46648 prefixTokens!80))))))

(declare-fun b!3877927 () Bool)

(assert (=> b!3877927 (= e!2399299 (inv!16 (value!203091 (h!46648 prefixTokens!80))))))

(assert (= (and d!1147948 c!674655) b!3877927))

(assert (= (and d!1147948 (not c!674655)) b!3877926))

(assert (= (and b!3877926 c!674654) b!3877923))

(assert (= (and b!3877926 (not c!674654)) b!3877925))

(assert (= (and b!3877925 (not res!1571290)) b!3877924))

(declare-fun m!4436115 () Bool)

(assert (=> b!3877923 m!4436115))

(declare-fun m!4436117 () Bool)

(assert (=> b!3877924 m!4436117))

(declare-fun m!4436119 () Bool)

(assert (=> b!3877927 m!4436119))

(assert (=> b!3877607 d!1147948))

(declare-fun d!1147950 () Bool)

(assert (=> d!1147950 (= (isEmpty!24477 suffix!1176) ((_ is Nil!41227) suffix!1176))))

(assert (=> b!3877628 d!1147950))

(declare-fun d!1147952 () Bool)

(declare-fun e!2399302 () Bool)

(assert (=> d!1147952 e!2399302))

(declare-fun res!1571292 () Bool)

(assert (=> d!1147952 (=> (not res!1571292) (not e!2399302))))

(declare-fun lt!1352628 () List!41352)

(assert (=> d!1147952 (= res!1571292 (= (content!6161 lt!1352628) ((_ map or) (content!6161 lt!1352478) (content!6161 (_1!23363 lt!1352468)))))))

(declare-fun e!2399301 () List!41352)

(assert (=> d!1147952 (= lt!1352628 e!2399301)))

(declare-fun c!674656 () Bool)

(assert (=> d!1147952 (= c!674656 ((_ is Nil!41228) lt!1352478))))

(assert (=> d!1147952 (= (++!10561 lt!1352478 (_1!23363 lt!1352468)) lt!1352628)))

(declare-fun b!3877930 () Bool)

(declare-fun res!1571291 () Bool)

(assert (=> b!3877930 (=> (not res!1571291) (not e!2399302))))

(assert (=> b!3877930 (= res!1571291 (= (size!30976 lt!1352628) (+ (size!30976 lt!1352478) (size!30976 (_1!23363 lt!1352468)))))))

(declare-fun b!3877929 () Bool)

(assert (=> b!3877929 (= e!2399301 (Cons!41228 (h!46648 lt!1352478) (++!10561 (t!314995 lt!1352478) (_1!23363 lt!1352468))))))

(declare-fun b!3877931 () Bool)

(assert (=> b!3877931 (= e!2399302 (or (not (= (_1!23363 lt!1352468) Nil!41228)) (= lt!1352628 lt!1352478)))))

(declare-fun b!3877928 () Bool)

(assert (=> b!3877928 (= e!2399301 (_1!23363 lt!1352468))))

(assert (= (and d!1147952 c!674656) b!3877928))

(assert (= (and d!1147952 (not c!674656)) b!3877929))

(assert (= (and d!1147952 res!1571292) b!3877930))

(assert (= (and b!3877930 res!1571291) b!3877931))

(declare-fun m!4436121 () Bool)

(assert (=> d!1147952 m!4436121))

(declare-fun m!4436123 () Bool)

(assert (=> d!1147952 m!4436123))

(declare-fun m!4436125 () Bool)

(assert (=> d!1147952 m!4436125))

(declare-fun m!4436127 () Bool)

(assert (=> b!3877930 m!4436127))

(declare-fun m!4436129 () Bool)

(assert (=> b!3877930 m!4436129))

(declare-fun m!4436131 () Bool)

(assert (=> b!3877930 m!4436131))

(declare-fun m!4436133 () Bool)

(assert (=> b!3877929 m!4436133))

(assert (=> b!3877585 d!1147952))

(declare-fun b!3877932 () Bool)

(declare-fun res!1571299 () Bool)

(declare-fun e!2399304 () Bool)

(assert (=> b!3877932 (=> (not res!1571299) (not e!2399304))))

(declare-fun lt!1352633 () Option!8820)

(assert (=> b!3877932 (= res!1571299 (matchR!5421 (regex!6402 (rule!9298 (_1!23364 (get!13643 lt!1352633)))) (list!15330 (charsOf!4230 (_1!23364 (get!13643 lt!1352633))))))))

(declare-fun b!3877933 () Bool)

(declare-fun res!1571297 () Bool)

(assert (=> b!3877933 (=> (not res!1571297) (not e!2399304))))

(assert (=> b!3877933 (= res!1571297 (< (size!30974 (_2!23364 (get!13643 lt!1352633))) (size!30974 lt!1352453)))))

(declare-fun b!3877934 () Bool)

(declare-fun e!2399305 () Option!8820)

(declare-fun call!282835 () Option!8820)

(assert (=> b!3877934 (= e!2399305 call!282835)))

(declare-fun b!3877935 () Bool)

(declare-fun res!1571295 () Bool)

(assert (=> b!3877935 (=> (not res!1571295) (not e!2399304))))

(assert (=> b!3877935 (= res!1571295 (= (++!10562 (list!15330 (charsOf!4230 (_1!23364 (get!13643 lt!1352633)))) (_2!23364 (get!13643 lt!1352633))) lt!1352453))))

(declare-fun b!3877936 () Bool)

(declare-fun lt!1352631 () Option!8820)

(declare-fun lt!1352632 () Option!8820)

(assert (=> b!3877936 (= e!2399305 (ite (and ((_ is None!8819) lt!1352631) ((_ is None!8819) lt!1352632)) None!8819 (ite ((_ is None!8819) lt!1352632) lt!1352631 (ite ((_ is None!8819) lt!1352631) lt!1352632 (ite (>= (size!30973 (_1!23364 (v!39117 lt!1352631))) (size!30973 (_1!23364 (v!39117 lt!1352632)))) lt!1352631 lt!1352632)))))))

(assert (=> b!3877936 (= lt!1352631 call!282835)))

(assert (=> b!3877936 (= lt!1352632 (maxPrefix!3295 thiss!20629 (t!314996 rules!2768) lt!1352453))))

(declare-fun b!3877937 () Bool)

(declare-fun res!1571294 () Bool)

(assert (=> b!3877937 (=> (not res!1571294) (not e!2399304))))

(assert (=> b!3877937 (= res!1571294 (= (value!203091 (_1!23364 (get!13643 lt!1352633))) (apply!9645 (transformation!6402 (rule!9298 (_1!23364 (get!13643 lt!1352633)))) (seqFromList!4673 (originalCharacters!7002 (_1!23364 (get!13643 lt!1352633)))))))))

(declare-fun b!3877938 () Bool)

(declare-fun res!1571296 () Bool)

(assert (=> b!3877938 (=> (not res!1571296) (not e!2399304))))

(assert (=> b!3877938 (= res!1571296 (= (list!15330 (charsOf!4230 (_1!23364 (get!13643 lt!1352633)))) (originalCharacters!7002 (_1!23364 (get!13643 lt!1352633)))))))

(declare-fun d!1147954 () Bool)

(declare-fun e!2399303 () Bool)

(assert (=> d!1147954 e!2399303))

(declare-fun res!1571293 () Bool)

(assert (=> d!1147954 (=> res!1571293 e!2399303)))

(assert (=> d!1147954 (= res!1571293 (isEmpty!24480 lt!1352633))))

(assert (=> d!1147954 (= lt!1352633 e!2399305)))

(declare-fun c!674657 () Bool)

(assert (=> d!1147954 (= c!674657 (and ((_ is Cons!41229) rules!2768) ((_ is Nil!41229) (t!314996 rules!2768))))))

(declare-fun lt!1352629 () Unit!59255)

(declare-fun lt!1352630 () Unit!59255)

(assert (=> d!1147954 (= lt!1352629 lt!1352630)))

(assert (=> d!1147954 (isPrefix!3501 lt!1352453 lt!1352453)))

(assert (=> d!1147954 (= lt!1352630 (lemmaIsPrefixRefl!2215 lt!1352453 lt!1352453))))

(assert (=> d!1147954 (rulesValidInductive!2292 thiss!20629 rules!2768)))

(assert (=> d!1147954 (= (maxPrefix!3295 thiss!20629 rules!2768 lt!1352453) lt!1352633)))

(declare-fun bm!282830 () Bool)

(assert (=> bm!282830 (= call!282835 (maxPrefixOneRule!2377 thiss!20629 (h!46649 rules!2768) lt!1352453))))

(declare-fun b!3877939 () Bool)

(assert (=> b!3877939 (= e!2399304 (contains!8296 rules!2768 (rule!9298 (_1!23364 (get!13643 lt!1352633)))))))

(declare-fun b!3877940 () Bool)

(assert (=> b!3877940 (= e!2399303 e!2399304)))

(declare-fun res!1571298 () Bool)

(assert (=> b!3877940 (=> (not res!1571298) (not e!2399304))))

(assert (=> b!3877940 (= res!1571298 (isDefined!6892 lt!1352633))))

(assert (= (and d!1147954 c!674657) b!3877934))

(assert (= (and d!1147954 (not c!674657)) b!3877936))

(assert (= (or b!3877934 b!3877936) bm!282830))

(assert (= (and d!1147954 (not res!1571293)) b!3877940))

(assert (= (and b!3877940 res!1571298) b!3877938))

(assert (= (and b!3877938 res!1571296) b!3877933))

(assert (= (and b!3877933 res!1571297) b!3877935))

(assert (= (and b!3877935 res!1571295) b!3877937))

(assert (= (and b!3877937 res!1571294) b!3877932))

(assert (= (and b!3877932 res!1571299) b!3877939))

(declare-fun m!4436135 () Bool)

(assert (=> b!3877939 m!4436135))

(declare-fun m!4436137 () Bool)

(assert (=> b!3877939 m!4436137))

(assert (=> b!3877937 m!4436135))

(declare-fun m!4436139 () Bool)

(assert (=> b!3877937 m!4436139))

(assert (=> b!3877937 m!4436139))

(declare-fun m!4436141 () Bool)

(assert (=> b!3877937 m!4436141))

(declare-fun m!4436143 () Bool)

(assert (=> d!1147954 m!4436143))

(declare-fun m!4436145 () Bool)

(assert (=> d!1147954 m!4436145))

(declare-fun m!4436147 () Bool)

(assert (=> d!1147954 m!4436147))

(assert (=> d!1147954 m!4435705))

(declare-fun m!4436149 () Bool)

(assert (=> bm!282830 m!4436149))

(assert (=> b!3877932 m!4436135))

(declare-fun m!4436151 () Bool)

(assert (=> b!3877932 m!4436151))

(assert (=> b!3877932 m!4436151))

(declare-fun m!4436153 () Bool)

(assert (=> b!3877932 m!4436153))

(assert (=> b!3877932 m!4436153))

(declare-fun m!4436155 () Bool)

(assert (=> b!3877932 m!4436155))

(assert (=> b!3877935 m!4436135))

(assert (=> b!3877935 m!4436151))

(assert (=> b!3877935 m!4436151))

(assert (=> b!3877935 m!4436153))

(assert (=> b!3877935 m!4436153))

(declare-fun m!4436157 () Bool)

(assert (=> b!3877935 m!4436157))

(declare-fun m!4436159 () Bool)

(assert (=> b!3877936 m!4436159))

(assert (=> b!3877933 m!4436135))

(declare-fun m!4436161 () Bool)

(assert (=> b!3877933 m!4436161))

(assert (=> b!3877933 m!4435587))

(assert (=> b!3877938 m!4436135))

(assert (=> b!3877938 m!4436151))

(assert (=> b!3877938 m!4436151))

(assert (=> b!3877938 m!4436153))

(declare-fun m!4436163 () Bool)

(assert (=> b!3877940 m!4436163))

(assert (=> b!3877606 d!1147954))

(declare-fun d!1147956 () Bool)

(declare-fun res!1571300 () Bool)

(declare-fun e!2399306 () Bool)

(assert (=> d!1147956 (=> (not res!1571300) (not e!2399306))))

(assert (=> d!1147956 (= res!1571300 (not (isEmpty!24477 (originalCharacters!7002 (h!46648 suffixTokens!72)))))))

(assert (=> d!1147956 (= (inv!55384 (h!46648 suffixTokens!72)) e!2399306)))

(declare-fun b!3877941 () Bool)

(declare-fun res!1571301 () Bool)

(assert (=> b!3877941 (=> (not res!1571301) (not e!2399306))))

(assert (=> b!3877941 (= res!1571301 (= (originalCharacters!7002 (h!46648 suffixTokens!72)) (list!15330 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (value!203091 (h!46648 suffixTokens!72))))))))

(declare-fun b!3877942 () Bool)

(assert (=> b!3877942 (= e!2399306 (= (size!30973 (h!46648 suffixTokens!72)) (size!30974 (originalCharacters!7002 (h!46648 suffixTokens!72)))))))

(assert (= (and d!1147956 res!1571300) b!3877941))

(assert (= (and b!3877941 res!1571301) b!3877942))

(declare-fun b_lambda!113179 () Bool)

(assert (=> (not b_lambda!113179) (not b!3877941)))

(declare-fun tb!224957 () Bool)

(declare-fun t!315010 () Bool)

(assert (=> (and b!3877578 (= (toChars!8689 (transformation!6402 (h!46649 rules!2768))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72))))) t!315010) tb!224957))

(declare-fun b!3877943 () Bool)

(declare-fun e!2399307 () Bool)

(declare-fun tp!1175581 () Bool)

(assert (=> b!3877943 (= e!2399307 (and (inv!55386 (c!674591 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (value!203091 (h!46648 suffixTokens!72))))) tp!1175581))))

(declare-fun result!274010 () Bool)

(assert (=> tb!224957 (= result!274010 (and (inv!55388 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (value!203091 (h!46648 suffixTokens!72)))) e!2399307))))

(assert (= tb!224957 b!3877943))

(declare-fun m!4436165 () Bool)

(assert (=> b!3877943 m!4436165))

(declare-fun m!4436167 () Bool)

(assert (=> tb!224957 m!4436167))

(assert (=> b!3877941 t!315010))

(declare-fun b_and!290787 () Bool)

(assert (= b_and!290781 (and (=> t!315010 result!274010) b_and!290787)))

(declare-fun t!315012 () Bool)

(declare-fun tb!224959 () Bool)

(assert (=> (and b!3877619 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72))))) t!315012) tb!224959))

(declare-fun result!274012 () Bool)

(assert (= result!274012 result!274010))

(assert (=> b!3877941 t!315012))

(declare-fun b_and!290789 () Bool)

(assert (= b_and!290783 (and (=> t!315012 result!274012) b_and!290789)))

(declare-fun t!315014 () Bool)

(declare-fun tb!224961 () Bool)

(assert (=> (and b!3877626 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72))))) t!315014) tb!224961))

(declare-fun result!274014 () Bool)

(assert (= result!274014 result!274010))

(assert (=> b!3877941 t!315014))

(declare-fun b_and!290791 () Bool)

(assert (= b_and!290785 (and (=> t!315014 result!274014) b_and!290791)))

(declare-fun m!4436169 () Bool)

(assert (=> d!1147956 m!4436169))

(declare-fun m!4436171 () Bool)

(assert (=> b!3877941 m!4436171))

(assert (=> b!3877941 m!4436171))

(declare-fun m!4436173 () Bool)

(assert (=> b!3877941 m!4436173))

(declare-fun m!4436175 () Bool)

(assert (=> b!3877942 m!4436175))

(assert (=> b!3877627 d!1147956))

(declare-fun d!1147958 () Bool)

(assert (=> d!1147958 (= (maxPrefixOneRule!2377 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))) lt!1352453) (Some!8819 (tuple2!40461 (Token!11943 (apply!9645 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) (seqFromList!4673 lt!1352459)) (rule!9298 (_1!23364 (v!39117 lt!1352444))) (size!30974 lt!1352459) lt!1352459) (_2!23364 (v!39117 lt!1352444)))))))

(declare-fun lt!1352642 () Unit!59255)

(declare-fun choose!22986 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41351 Rule!12604) Unit!59255)

(assert (=> d!1147958 (= lt!1352642 (choose!22986 thiss!20629 rules!2768 lt!1352459 lt!1352453 (_2!23364 (v!39117 lt!1352444)) (rule!9298 (_1!23364 (v!39117 lt!1352444)))))))

(assert (=> d!1147958 (not (isEmpty!24478 rules!2768))))

(assert (=> d!1147958 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1275 thiss!20629 rules!2768 lt!1352459 lt!1352453 (_2!23364 (v!39117 lt!1352444)) (rule!9298 (_1!23364 (v!39117 lt!1352444)))) lt!1352642)))

(declare-fun bs!583675 () Bool)

(assert (= bs!583675 d!1147958))

(assert (=> bs!583675 m!4435579))

(assert (=> bs!583675 m!4435747))

(declare-fun m!4436215 () Bool)

(assert (=> bs!583675 m!4436215))

(assert (=> bs!583675 m!4435633))

(assert (=> bs!583675 m!4435633))

(assert (=> bs!583675 m!4435635))

(assert (=> bs!583675 m!4435647))

(assert (=> b!3877604 d!1147958))

(declare-fun d!1147964 () Bool)

(declare-fun lt!1352643 () Int)

(assert (=> d!1147964 (>= lt!1352643 0)))

(declare-fun e!2399313 () Int)

(assert (=> d!1147964 (= lt!1352643 e!2399313)))

(declare-fun c!674659 () Bool)

(assert (=> d!1147964 (= c!674659 ((_ is Nil!41227) lt!1352453))))

(assert (=> d!1147964 (= (size!30974 lt!1352453) lt!1352643)))

(declare-fun b!3877957 () Bool)

(assert (=> b!3877957 (= e!2399313 0)))

(declare-fun b!3877958 () Bool)

(assert (=> b!3877958 (= e!2399313 (+ 1 (size!30974 (t!314994 lt!1352453))))))

(assert (= (and d!1147964 c!674659) b!3877957))

(assert (= (and d!1147964 (not c!674659)) b!3877958))

(declare-fun m!4436217 () Bool)

(assert (=> b!3877958 m!4436217))

(assert (=> b!3877604 d!1147964))

(declare-fun d!1147966 () Bool)

(assert (=> d!1147966 (= (get!13643 lt!1352444) (v!39117 lt!1352444))))

(assert (=> b!3877604 d!1147966))

(declare-fun d!1147968 () Bool)

(declare-fun lt!1352644 () Int)

(assert (=> d!1147968 (>= lt!1352644 0)))

(declare-fun e!2399314 () Int)

(assert (=> d!1147968 (= lt!1352644 e!2399314)))

(declare-fun c!674660 () Bool)

(assert (=> d!1147968 (= c!674660 ((_ is Nil!41227) (_2!23364 lt!1352451)))))

(assert (=> d!1147968 (= (size!30974 (_2!23364 lt!1352451)) lt!1352644)))

(declare-fun b!3877959 () Bool)

(assert (=> b!3877959 (= e!2399314 0)))

(declare-fun b!3877960 () Bool)

(assert (=> b!3877960 (= e!2399314 (+ 1 (size!30974 (t!314994 (_2!23364 lt!1352451)))))))

(assert (= (and d!1147968 c!674660) b!3877959))

(assert (= (and d!1147968 (not c!674660)) b!3877960))

(declare-fun m!4436219 () Bool)

(assert (=> b!3877960 m!4436219))

(assert (=> b!3877604 d!1147968))

(declare-fun b!3878031 () Bool)

(declare-fun res!1571350 () Bool)

(declare-fun e!2399360 () Bool)

(assert (=> b!3878031 (=> (not res!1571350) (not e!2399360))))

(declare-fun lt!1352693 () Option!8820)

(assert (=> b!3878031 (= res!1571350 (< (size!30974 (_2!23364 (get!13643 lt!1352693))) (size!30974 lt!1352453)))))

(declare-fun b!3878032 () Bool)

(declare-fun e!2399359 () Bool)

(declare-datatypes ((tuple2!40464 0))(
  ( (tuple2!40465 (_1!23366 List!41351) (_2!23366 List!41351)) )
))
(declare-fun findLongestMatchInner!1212 (Regex!11307 List!41351 Int List!41351 List!41351 Int) tuple2!40464)

(assert (=> b!3878032 (= e!2399359 (matchR!5421 (regex!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) (_1!23366 (findLongestMatchInner!1212 (regex!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) Nil!41227 (size!30974 Nil!41227) lt!1352453 lt!1352453 (size!30974 lt!1352453)))))))

(declare-fun b!3878033 () Bool)

(declare-fun res!1571354 () Bool)

(assert (=> b!3878033 (=> (not res!1571354) (not e!2399360))))

(assert (=> b!3878033 (= res!1571354 (= (value!203091 (_1!23364 (get!13643 lt!1352693))) (apply!9645 (transformation!6402 (rule!9298 (_1!23364 (get!13643 lt!1352693)))) (seqFromList!4673 (originalCharacters!7002 (_1!23364 (get!13643 lt!1352693)))))))))

(declare-fun b!3878034 () Bool)

(declare-fun e!2399357 () Option!8820)

(assert (=> b!3878034 (= e!2399357 None!8819)))

(declare-fun b!3878035 () Bool)

(declare-fun lt!1352695 () tuple2!40464)

(declare-fun size!30978 (BalanceConc!24820) Int)

(assert (=> b!3878035 (= e!2399357 (Some!8819 (tuple2!40461 (Token!11943 (apply!9645 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) (seqFromList!4673 (_1!23366 lt!1352695))) (rule!9298 (_1!23364 (v!39117 lt!1352444))) (size!30978 (seqFromList!4673 (_1!23366 lt!1352695))) (_1!23366 lt!1352695)) (_2!23366 lt!1352695))))))

(declare-fun lt!1352691 () Unit!59255)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1185 (Regex!11307 List!41351) Unit!59255)

(assert (=> b!3878035 (= lt!1352691 (longestMatchIsAcceptedByMatchOrIsEmpty!1185 (regex!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) lt!1352453))))

(declare-fun res!1571356 () Bool)

(assert (=> b!3878035 (= res!1571356 (isEmpty!24477 (_1!23366 (findLongestMatchInner!1212 (regex!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) Nil!41227 (size!30974 Nil!41227) lt!1352453 lt!1352453 (size!30974 lt!1352453)))))))

(assert (=> b!3878035 (=> res!1571356 e!2399359)))

(assert (=> b!3878035 e!2399359))

(declare-fun lt!1352692 () Unit!59255)

(assert (=> b!3878035 (= lt!1352692 lt!1352691)))

(declare-fun lt!1352694 () Unit!59255)

(declare-fun lemmaSemiInverse!1718 (TokenValueInjection!12692 BalanceConc!24820) Unit!59255)

(assert (=> b!3878035 (= lt!1352694 (lemmaSemiInverse!1718 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) (seqFromList!4673 (_1!23366 lt!1352695))))))

(declare-fun b!3878037 () Bool)

(declare-fun res!1571351 () Bool)

(assert (=> b!3878037 (=> (not res!1571351) (not e!2399360))))

(assert (=> b!3878037 (= res!1571351 (= (rule!9298 (_1!23364 (get!13643 lt!1352693))) (rule!9298 (_1!23364 (v!39117 lt!1352444)))))))

(declare-fun b!3878038 () Bool)

(assert (=> b!3878038 (= e!2399360 (= (size!30973 (_1!23364 (get!13643 lt!1352693))) (size!30974 (originalCharacters!7002 (_1!23364 (get!13643 lt!1352693))))))))

(declare-fun b!3878039 () Bool)

(declare-fun e!2399358 () Bool)

(assert (=> b!3878039 (= e!2399358 e!2399360)))

(declare-fun res!1571355 () Bool)

(assert (=> b!3878039 (=> (not res!1571355) (not e!2399360))))

(assert (=> b!3878039 (= res!1571355 (matchR!5421 (regex!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) (list!15330 (charsOf!4230 (_1!23364 (get!13643 lt!1352693))))))))

(declare-fun d!1147970 () Bool)

(assert (=> d!1147970 e!2399358))

(declare-fun res!1571352 () Bool)

(assert (=> d!1147970 (=> res!1571352 e!2399358)))

(assert (=> d!1147970 (= res!1571352 (isEmpty!24480 lt!1352693))))

(assert (=> d!1147970 (= lt!1352693 e!2399357)))

(declare-fun c!674675 () Bool)

(assert (=> d!1147970 (= c!674675 (isEmpty!24477 (_1!23366 lt!1352695)))))

(declare-fun findLongestMatch!1125 (Regex!11307 List!41351) tuple2!40464)

(assert (=> d!1147970 (= lt!1352695 (findLongestMatch!1125 (regex!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) lt!1352453))))

(assert (=> d!1147970 (ruleValid!2354 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))))))

(assert (=> d!1147970 (= (maxPrefixOneRule!2377 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))) lt!1352453) lt!1352693)))

(declare-fun b!3878036 () Bool)

(declare-fun res!1571353 () Bool)

(assert (=> b!3878036 (=> (not res!1571353) (not e!2399360))))

(assert (=> b!3878036 (= res!1571353 (= (++!10562 (list!15330 (charsOf!4230 (_1!23364 (get!13643 lt!1352693)))) (_2!23364 (get!13643 lt!1352693))) lt!1352453))))

(assert (= (and d!1147970 c!674675) b!3878034))

(assert (= (and d!1147970 (not c!674675)) b!3878035))

(assert (= (and b!3878035 (not res!1571356)) b!3878032))

(assert (= (and d!1147970 (not res!1571352)) b!3878039))

(assert (= (and b!3878039 res!1571355) b!3878036))

(assert (= (and b!3878036 res!1571353) b!3878031))

(assert (= (and b!3878031 res!1571350) b!3878037))

(assert (= (and b!3878037 res!1571351) b!3878033))

(assert (= (and b!3878033 res!1571354) b!3878038))

(declare-fun m!4436335 () Bool)

(assert (=> b!3878037 m!4436335))

(declare-fun m!4436337 () Bool)

(assert (=> d!1147970 m!4436337))

(declare-fun m!4436339 () Bool)

(assert (=> d!1147970 m!4436339))

(declare-fun m!4436341 () Bool)

(assert (=> d!1147970 m!4436341))

(assert (=> d!1147970 m!4435643))

(assert (=> b!3878039 m!4436335))

(declare-fun m!4436343 () Bool)

(assert (=> b!3878039 m!4436343))

(assert (=> b!3878039 m!4436343))

(declare-fun m!4436345 () Bool)

(assert (=> b!3878039 m!4436345))

(assert (=> b!3878039 m!4436345))

(declare-fun m!4436347 () Bool)

(assert (=> b!3878039 m!4436347))

(assert (=> b!3878036 m!4436335))

(assert (=> b!3878036 m!4436343))

(assert (=> b!3878036 m!4436343))

(assert (=> b!3878036 m!4436345))

(assert (=> b!3878036 m!4436345))

(declare-fun m!4436349 () Bool)

(assert (=> b!3878036 m!4436349))

(declare-fun m!4436351 () Bool)

(assert (=> b!3878035 m!4436351))

(declare-fun m!4436353 () Bool)

(assert (=> b!3878035 m!4436353))

(assert (=> b!3878035 m!4435591))

(assert (=> b!3878035 m!4436351))

(declare-fun m!4436355 () Bool)

(assert (=> b!3878035 m!4436355))

(assert (=> b!3878035 m!4436351))

(assert (=> b!3878035 m!4436351))

(declare-fun m!4436357 () Bool)

(assert (=> b!3878035 m!4436357))

(assert (=> b!3878035 m!4435587))

(declare-fun m!4436359 () Bool)

(assert (=> b!3878035 m!4436359))

(assert (=> b!3878035 m!4435591))

(assert (=> b!3878035 m!4435587))

(declare-fun m!4436361 () Bool)

(assert (=> b!3878035 m!4436361))

(declare-fun m!4436363 () Bool)

(assert (=> b!3878035 m!4436363))

(assert (=> b!3878038 m!4436335))

(declare-fun m!4436365 () Bool)

(assert (=> b!3878038 m!4436365))

(assert (=> b!3878031 m!4436335))

(declare-fun m!4436367 () Bool)

(assert (=> b!3878031 m!4436367))

(assert (=> b!3878031 m!4435587))

(assert (=> b!3878033 m!4436335))

(declare-fun m!4436369 () Bool)

(assert (=> b!3878033 m!4436369))

(assert (=> b!3878033 m!4436369))

(declare-fun m!4436371 () Bool)

(assert (=> b!3878033 m!4436371))

(assert (=> b!3878032 m!4435591))

(assert (=> b!3878032 m!4435587))

(assert (=> b!3878032 m!4435591))

(assert (=> b!3878032 m!4435587))

(assert (=> b!3878032 m!4436361))

(declare-fun m!4436373 () Bool)

(assert (=> b!3878032 m!4436373))

(assert (=> b!3877604 d!1147970))

(declare-fun lt!1352698 () List!41351)

(declare-fun b!3878043 () Bool)

(declare-fun e!2399361 () Bool)

(assert (=> b!3878043 (= e!2399361 (or (not (= suffix!1176 Nil!41227)) (= lt!1352698 lt!1352466)))))

(declare-fun d!1148030 () Bool)

(assert (=> d!1148030 e!2399361))

(declare-fun res!1571358 () Bool)

(assert (=> d!1148030 (=> (not res!1571358) (not e!2399361))))

(assert (=> d!1148030 (= res!1571358 (= (content!6160 lt!1352698) ((_ map or) (content!6160 lt!1352466) (content!6160 suffix!1176))))))

(declare-fun e!2399362 () List!41351)

(assert (=> d!1148030 (= lt!1352698 e!2399362)))

(declare-fun c!674676 () Bool)

(assert (=> d!1148030 (= c!674676 ((_ is Nil!41227) lt!1352466))))

(assert (=> d!1148030 (= (++!10562 lt!1352466 suffix!1176) lt!1352698)))

(declare-fun b!3878040 () Bool)

(assert (=> b!3878040 (= e!2399362 suffix!1176)))

(declare-fun b!3878041 () Bool)

(assert (=> b!3878041 (= e!2399362 (Cons!41227 (h!46647 lt!1352466) (++!10562 (t!314994 lt!1352466) suffix!1176)))))

(declare-fun b!3878042 () Bool)

(declare-fun res!1571357 () Bool)

(assert (=> b!3878042 (=> (not res!1571357) (not e!2399361))))

(assert (=> b!3878042 (= res!1571357 (= (size!30974 lt!1352698) (+ (size!30974 lt!1352466) (size!30974 suffix!1176))))))

(assert (= (and d!1148030 c!674676) b!3878040))

(assert (= (and d!1148030 (not c!674676)) b!3878041))

(assert (= (and d!1148030 res!1571358) b!3878042))

(assert (= (and b!3878042 res!1571357) b!3878043))

(declare-fun m!4436375 () Bool)

(assert (=> d!1148030 m!4436375))

(declare-fun m!4436379 () Bool)

(assert (=> d!1148030 m!4436379))

(assert (=> d!1148030 m!4435787))

(declare-fun m!4436381 () Bool)

(assert (=> b!3878041 m!4436381))

(declare-fun m!4436383 () Bool)

(assert (=> b!3878042 m!4436383))

(declare-fun m!4436385 () Bool)

(assert (=> b!3878042 m!4436385))

(assert (=> b!3878042 m!4435615))

(assert (=> b!3877625 d!1148030))

(declare-fun b!3878044 () Bool)

(declare-fun e!2399365 () tuple2!40458)

(declare-fun lt!1352701 () Option!8820)

(declare-fun lt!1352700 () tuple2!40458)

(assert (=> b!3878044 (= e!2399365 (tuple2!40459 (Cons!41228 (_1!23364 (v!39117 lt!1352701)) (_1!23363 lt!1352700)) (_2!23363 lt!1352700)))))

(assert (=> b!3878044 (= lt!1352700 (lexList!1759 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352701))))))

(declare-fun b!3878046 () Bool)

(declare-fun e!2399364 () Bool)

(declare-fun lt!1352702 () tuple2!40458)

(assert (=> b!3878046 (= e!2399364 (= (_2!23363 lt!1352702) (_2!23364 lt!1352451)))))

(declare-fun b!3878047 () Bool)

(declare-fun e!2399363 () Bool)

(assert (=> b!3878047 (= e!2399364 e!2399363)))

(declare-fun res!1571359 () Bool)

(assert (=> b!3878047 (= res!1571359 (< (size!30974 (_2!23363 lt!1352702)) (size!30974 (_2!23364 lt!1352451))))))

(assert (=> b!3878047 (=> (not res!1571359) (not e!2399363))))

(declare-fun b!3878048 () Bool)

(assert (=> b!3878048 (= e!2399365 (tuple2!40459 Nil!41228 (_2!23364 lt!1352451)))))

(declare-fun b!3878045 () Bool)

(assert (=> b!3878045 (= e!2399363 (not (isEmpty!24476 (_1!23363 lt!1352702))))))

(declare-fun d!1148034 () Bool)

(assert (=> d!1148034 e!2399364))

(declare-fun c!674677 () Bool)

(assert (=> d!1148034 (= c!674677 (> (size!30976 (_1!23363 lt!1352702)) 0))))

(assert (=> d!1148034 (= lt!1352702 e!2399365)))

(declare-fun c!674678 () Bool)

(assert (=> d!1148034 (= c!674678 ((_ is Some!8819) lt!1352701))))

(assert (=> d!1148034 (= lt!1352701 (maxPrefix!3295 thiss!20629 rules!2768 (_2!23364 lt!1352451)))))

(assert (=> d!1148034 (= (lexList!1759 thiss!20629 rules!2768 (_2!23364 lt!1352451)) lt!1352702)))

(assert (= (and d!1148034 c!674678) b!3878044))

(assert (= (and d!1148034 (not c!674678)) b!3878048))

(assert (= (and d!1148034 c!674677) b!3878047))

(assert (= (and d!1148034 (not c!674677)) b!3878046))

(assert (= (and b!3878047 res!1571359) b!3878045))

(declare-fun m!4436387 () Bool)

(assert (=> b!3878044 m!4436387))

(declare-fun m!4436389 () Bool)

(assert (=> b!3878047 m!4436389))

(assert (=> b!3878047 m!4435581))

(declare-fun m!4436391 () Bool)

(assert (=> b!3878045 m!4436391))

(declare-fun m!4436393 () Bool)

(assert (=> d!1148034 m!4436393))

(declare-fun m!4436395 () Bool)

(assert (=> d!1148034 m!4436395))

(assert (=> bm!282823 d!1148034))

(declare-fun d!1148036 () Bool)

(declare-fun res!1571364 () Bool)

(declare-fun e!2399374 () Bool)

(assert (=> d!1148036 (=> (not res!1571364) (not e!2399374))))

(declare-fun rulesValid!2480 (LexerInterface!5991 List!41353) Bool)

(assert (=> d!1148036 (= res!1571364 (rulesValid!2480 thiss!20629 rules!2768))))

(assert (=> d!1148036 (= (rulesInvariant!5334 thiss!20629 rules!2768) e!2399374)))

(declare-fun b!3878061 () Bool)

(declare-datatypes ((List!41355 0))(
  ( (Nil!41231) (Cons!41231 (h!46651 String!46878) (t!315094 List!41355)) )
))
(declare-fun noDuplicateTag!2481 (LexerInterface!5991 List!41353 List!41355) Bool)

(assert (=> b!3878061 (= e!2399374 (noDuplicateTag!2481 thiss!20629 rules!2768 Nil!41231))))

(assert (= (and d!1148036 res!1571364) b!3878061))

(declare-fun m!4436397 () Bool)

(assert (=> d!1148036 m!4436397))

(declare-fun m!4436399 () Bool)

(assert (=> b!3878061 m!4436399))

(assert (=> b!3877624 d!1148036))

(declare-fun b!3878062 () Bool)

(declare-fun e!2399378 () tuple2!40458)

(declare-fun lt!1352704 () Option!8820)

(declare-fun lt!1352703 () tuple2!40458)

(assert (=> b!3878062 (= e!2399378 (tuple2!40459 (Cons!41228 (_1!23364 (v!39117 lt!1352704)) (_1!23363 lt!1352703)) (_2!23363 lt!1352703)))))

(assert (=> b!3878062 (= lt!1352703 (lexList!1759 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352704))))))

(declare-fun b!3878065 () Bool)

(declare-fun e!2399377 () Bool)

(declare-fun lt!1352705 () tuple2!40458)

(assert (=> b!3878065 (= e!2399377 (= (_2!23363 lt!1352705) lt!1352453))))

(declare-fun b!3878067 () Bool)

(declare-fun e!2399375 () Bool)

(assert (=> b!3878067 (= e!2399377 e!2399375)))

(declare-fun res!1571365 () Bool)

(assert (=> b!3878067 (= res!1571365 (< (size!30974 (_2!23363 lt!1352705)) (size!30974 lt!1352453)))))

(assert (=> b!3878067 (=> (not res!1571365) (not e!2399375))))

(declare-fun b!3878069 () Bool)

(assert (=> b!3878069 (= e!2399378 (tuple2!40459 Nil!41228 lt!1352453))))

(declare-fun b!3878063 () Bool)

(assert (=> b!3878063 (= e!2399375 (not (isEmpty!24476 (_1!23363 lt!1352705))))))

(declare-fun d!1148038 () Bool)

(assert (=> d!1148038 e!2399377))

(declare-fun c!674683 () Bool)

(assert (=> d!1148038 (= c!674683 (> (size!30976 (_1!23363 lt!1352705)) 0))))

(assert (=> d!1148038 (= lt!1352705 e!2399378)))

(declare-fun c!674684 () Bool)

(assert (=> d!1148038 (= c!674684 ((_ is Some!8819) lt!1352704))))

(assert (=> d!1148038 (= lt!1352704 (maxPrefix!3295 thiss!20629 rules!2768 lt!1352453))))

(assert (=> d!1148038 (= (lexList!1759 thiss!20629 rules!2768 lt!1352453) lt!1352705)))

(assert (= (and d!1148038 c!674684) b!3878062))

(assert (= (and d!1148038 (not c!674684)) b!3878069))

(assert (= (and d!1148038 c!674683) b!3878067))

(assert (= (and d!1148038 (not c!674683)) b!3878065))

(assert (= (and b!3878067 res!1571365) b!3878063))

(declare-fun m!4436407 () Bool)

(assert (=> b!3878062 m!4436407))

(declare-fun m!4436409 () Bool)

(assert (=> b!3878067 m!4436409))

(assert (=> b!3878067 m!4435587))

(declare-fun m!4436411 () Bool)

(assert (=> b!3878063 m!4436411))

(declare-fun m!4436413 () Bool)

(assert (=> d!1148038 m!4436413))

(assert (=> d!1148038 m!4435695))

(assert (=> b!3877613 d!1148038))

(declare-fun d!1148044 () Bool)

(declare-fun e!2399383 () Bool)

(assert (=> d!1148044 e!2399383))

(declare-fun res!1571369 () Bool)

(assert (=> d!1148044 (=> (not res!1571369) (not e!2399383))))

(declare-fun lt!1352706 () List!41352)

(assert (=> d!1148044 (= res!1571369 (= (content!6161 lt!1352706) ((_ map or) (content!6161 prefixTokens!80) (content!6161 suffixTokens!72))))))

(declare-fun e!2399382 () List!41352)

(assert (=> d!1148044 (= lt!1352706 e!2399382)))

(declare-fun c!674687 () Bool)

(assert (=> d!1148044 (= c!674687 ((_ is Nil!41228) prefixTokens!80))))

(assert (=> d!1148044 (= (++!10561 prefixTokens!80 suffixTokens!72) lt!1352706)))

(declare-fun b!3878075 () Bool)

(declare-fun res!1571368 () Bool)

(assert (=> b!3878075 (=> (not res!1571368) (not e!2399383))))

(assert (=> b!3878075 (= res!1571368 (= (size!30976 lt!1352706) (+ (size!30976 prefixTokens!80) (size!30976 suffixTokens!72))))))

(declare-fun b!3878074 () Bool)

(assert (=> b!3878074 (= e!2399382 (Cons!41228 (h!46648 prefixTokens!80) (++!10561 (t!314995 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3878076 () Bool)

(assert (=> b!3878076 (= e!2399383 (or (not (= suffixTokens!72 Nil!41228)) (= lt!1352706 prefixTokens!80)))))

(declare-fun b!3878073 () Bool)

(assert (=> b!3878073 (= e!2399382 suffixTokens!72)))

(assert (= (and d!1148044 c!674687) b!3878073))

(assert (= (and d!1148044 (not c!674687)) b!3878074))

(assert (= (and d!1148044 res!1571369) b!3878075))

(assert (= (and b!3878075 res!1571368) b!3878076))

(declare-fun m!4436419 () Bool)

(assert (=> d!1148044 m!4436419))

(declare-fun m!4436421 () Bool)

(assert (=> d!1148044 m!4436421))

(assert (=> d!1148044 m!4436049))

(declare-fun m!4436423 () Bool)

(assert (=> b!3878075 m!4436423))

(declare-fun m!4436425 () Bool)

(assert (=> b!3878075 m!4436425))

(assert (=> b!3878075 m!4436055))

(declare-fun m!4436427 () Bool)

(assert (=> b!3878074 m!4436427))

(assert (=> b!3877613 d!1148044))

(declare-fun b!3878084 () Bool)

(declare-fun e!2399386 () Bool)

(declare-fun lt!1352708 () List!41351)

(assert (=> b!3878084 (= e!2399386 (or (not (= suffix!1176 Nil!41227)) (= lt!1352708 prefix!426)))))

(declare-fun d!1148048 () Bool)

(assert (=> d!1148048 e!2399386))

(declare-fun res!1571373 () Bool)

(assert (=> d!1148048 (=> (not res!1571373) (not e!2399386))))

(assert (=> d!1148048 (= res!1571373 (= (content!6160 lt!1352708) ((_ map or) (content!6160 prefix!426) (content!6160 suffix!1176))))))

(declare-fun e!2399387 () List!41351)

(assert (=> d!1148048 (= lt!1352708 e!2399387)))

(declare-fun c!674689 () Bool)

(assert (=> d!1148048 (= c!674689 ((_ is Nil!41227) prefix!426))))

(assert (=> d!1148048 (= (++!10562 prefix!426 suffix!1176) lt!1352708)))

(declare-fun b!3878081 () Bool)

(assert (=> b!3878081 (= e!2399387 suffix!1176)))

(declare-fun b!3878082 () Bool)

(assert (=> b!3878082 (= e!2399387 (Cons!41227 (h!46647 prefix!426) (++!10562 (t!314994 prefix!426) suffix!1176)))))

(declare-fun b!3878083 () Bool)

(declare-fun res!1571372 () Bool)

(assert (=> b!3878083 (=> (not res!1571372) (not e!2399386))))

(assert (=> b!3878083 (= res!1571372 (= (size!30974 lt!1352708) (+ (size!30974 prefix!426) (size!30974 suffix!1176))))))

(assert (= (and d!1148048 c!674689) b!3878081))

(assert (= (and d!1148048 (not c!674689)) b!3878082))

(assert (= (and d!1148048 res!1571373) b!3878083))

(assert (= (and b!3878083 res!1571372) b!3878084))

(declare-fun m!4436439 () Bool)

(assert (=> d!1148048 m!4436439))

(declare-fun m!4436441 () Bool)

(assert (=> d!1148048 m!4436441))

(assert (=> d!1148048 m!4435787))

(declare-fun m!4436443 () Bool)

(assert (=> b!3878082 m!4436443))

(declare-fun m!4436445 () Bool)

(assert (=> b!3878083 m!4436445))

(assert (=> b!3878083 m!4435733))

(assert (=> b!3878083 m!4435615))

(assert (=> b!3877613 d!1148048))

(declare-fun e!2399391 () Bool)

(declare-fun lt!1352710 () List!41351)

(declare-fun b!3878092 () Bool)

(assert (=> b!3878092 (= e!2399391 (or (not (= lt!1352448 Nil!41227)) (= lt!1352710 lt!1352459)))))

(declare-fun d!1148052 () Bool)

(assert (=> d!1148052 e!2399391))

(declare-fun res!1571379 () Bool)

(assert (=> d!1148052 (=> (not res!1571379) (not e!2399391))))

(assert (=> d!1148052 (= res!1571379 (= (content!6160 lt!1352710) ((_ map or) (content!6160 lt!1352459) (content!6160 lt!1352448))))))

(declare-fun e!2399392 () List!41351)

(assert (=> d!1148052 (= lt!1352710 e!2399392)))

(declare-fun c!674690 () Bool)

(assert (=> d!1148052 (= c!674690 ((_ is Nil!41227) lt!1352459))))

(assert (=> d!1148052 (= (++!10562 lt!1352459 lt!1352448) lt!1352710)))

(declare-fun b!3878089 () Bool)

(assert (=> b!3878089 (= e!2399392 lt!1352448)))

(declare-fun b!3878090 () Bool)

(assert (=> b!3878090 (= e!2399392 (Cons!41227 (h!46647 lt!1352459) (++!10562 (t!314994 lt!1352459) lt!1352448)))))

(declare-fun b!3878091 () Bool)

(declare-fun res!1571378 () Bool)

(assert (=> b!3878091 (=> (not res!1571378) (not e!2399391))))

(assert (=> b!3878091 (= res!1571378 (= (size!30974 lt!1352710) (+ (size!30974 lt!1352459) (size!30974 lt!1352448))))))

(assert (= (and d!1148052 c!674690) b!3878089))

(assert (= (and d!1148052 (not c!674690)) b!3878090))

(assert (= (and d!1148052 res!1571379) b!3878091))

(assert (= (and b!3878091 res!1571378) b!3878092))

(declare-fun m!4436457 () Bool)

(assert (=> d!1148052 m!4436457))

(assert (=> d!1148052 m!4435773))

(assert (=> d!1148052 m!4435785))

(declare-fun m!4436459 () Bool)

(assert (=> b!3878090 m!4436459))

(declare-fun m!4436461 () Bool)

(assert (=> b!3878091 m!4436461))

(assert (=> b!3878091 m!4435647))

(assert (=> b!3878091 m!4435793))

(assert (=> b!3877591 d!1148052))

(declare-fun d!1148056 () Bool)

(declare-fun lt!1352714 () List!41351)

(assert (=> d!1148056 (= (++!10562 lt!1352459 lt!1352714) prefix!426)))

(declare-fun e!2399395 () List!41351)

(assert (=> d!1148056 (= lt!1352714 e!2399395)))

(declare-fun c!674693 () Bool)

(assert (=> d!1148056 (= c!674693 ((_ is Cons!41227) lt!1352459))))

(assert (=> d!1148056 (>= (size!30974 prefix!426) (size!30974 lt!1352459))))

(assert (=> d!1148056 (= (getSuffix!1956 prefix!426 lt!1352459) lt!1352714)))

(declare-fun b!3878097 () Bool)

(assert (=> b!3878097 (= e!2399395 (getSuffix!1956 (tail!5947 prefix!426) (t!314994 lt!1352459)))))

(declare-fun b!3878098 () Bool)

(assert (=> b!3878098 (= e!2399395 prefix!426)))

(assert (= (and d!1148056 c!674693) b!3878097))

(assert (= (and d!1148056 (not c!674693)) b!3878098))

(declare-fun m!4436467 () Bool)

(assert (=> d!1148056 m!4436467))

(assert (=> d!1148056 m!4435733))

(assert (=> d!1148056 m!4435647))

(declare-fun m!4436469 () Bool)

(assert (=> b!3878097 m!4436469))

(assert (=> b!3878097 m!4436469))

(declare-fun m!4436471 () Bool)

(assert (=> b!3878097 m!4436471))

(assert (=> b!3877591 d!1148056))

(declare-fun d!1148060 () Bool)

(assert (=> d!1148060 (isPrefix!3501 prefix!426 (++!10562 prefix!426 suffix!1176))))

(declare-fun lt!1352715 () Unit!59255)

(assert (=> d!1148060 (= lt!1352715 (choose!22982 prefix!426 suffix!1176))))

(assert (=> d!1148060 (= (lemmaConcatTwoListThenFirstIsPrefix!2364 prefix!426 suffix!1176) lt!1352715)))

(declare-fun bs!583689 () Bool)

(assert (= bs!583689 d!1148060))

(assert (=> bs!583689 m!4435719))

(assert (=> bs!583689 m!4435719))

(declare-fun m!4436473 () Bool)

(assert (=> bs!583689 m!4436473))

(declare-fun m!4436475 () Bool)

(assert (=> bs!583689 m!4436475))

(assert (=> b!3877612 d!1148060))

(declare-fun b!3878102 () Bool)

(declare-fun e!2399397 () Bool)

(assert (=> b!3878102 (= e!2399397 (>= (size!30974 lt!1352453) (size!30974 prefix!426)))))

(declare-fun b!3878099 () Bool)

(declare-fun e!2399396 () Bool)

(declare-fun e!2399398 () Bool)

(assert (=> b!3878099 (= e!2399396 e!2399398)))

(declare-fun res!1571380 () Bool)

(assert (=> b!3878099 (=> (not res!1571380) (not e!2399398))))

(assert (=> b!3878099 (= res!1571380 (not ((_ is Nil!41227) lt!1352453)))))

(declare-fun d!1148062 () Bool)

(assert (=> d!1148062 e!2399397))

(declare-fun res!1571381 () Bool)

(assert (=> d!1148062 (=> res!1571381 e!2399397)))

(declare-fun lt!1352716 () Bool)

(assert (=> d!1148062 (= res!1571381 (not lt!1352716))))

(assert (=> d!1148062 (= lt!1352716 e!2399396)))

(declare-fun res!1571382 () Bool)

(assert (=> d!1148062 (=> res!1571382 e!2399396)))

(assert (=> d!1148062 (= res!1571382 ((_ is Nil!41227) prefix!426))))

(assert (=> d!1148062 (= (isPrefix!3501 prefix!426 lt!1352453) lt!1352716)))

(declare-fun b!3878100 () Bool)

(declare-fun res!1571383 () Bool)

(assert (=> b!3878100 (=> (not res!1571383) (not e!2399398))))

(assert (=> b!3878100 (= res!1571383 (= (head!8230 prefix!426) (head!8230 lt!1352453)))))

(declare-fun b!3878101 () Bool)

(assert (=> b!3878101 (= e!2399398 (isPrefix!3501 (tail!5947 prefix!426) (tail!5947 lt!1352453)))))

(assert (= (and d!1148062 (not res!1571382)) b!3878099))

(assert (= (and b!3878099 res!1571380) b!3878100))

(assert (= (and b!3878100 res!1571383) b!3878101))

(assert (= (and d!1148062 (not res!1571381)) b!3878102))

(assert (=> b!3878102 m!4435587))

(assert (=> b!3878102 m!4435733))

(declare-fun m!4436477 () Bool)

(assert (=> b!3878100 m!4436477))

(declare-fun m!4436479 () Bool)

(assert (=> b!3878100 m!4436479))

(assert (=> b!3878101 m!4436469))

(declare-fun m!4436481 () Bool)

(assert (=> b!3878101 m!4436481))

(assert (=> b!3878101 m!4436469))

(assert (=> b!3878101 m!4436481))

(declare-fun m!4436483 () Bool)

(assert (=> b!3878101 m!4436483))

(assert (=> b!3877612 d!1148062))

(declare-fun d!1148064 () Bool)

(assert (=> d!1148064 (= lt!1352459 prefix!426)))

(declare-fun lt!1352719 () Unit!59255)

(declare-fun choose!22990 (List!41351 List!41351 List!41351) Unit!59255)

(assert (=> d!1148064 (= lt!1352719 (choose!22990 lt!1352459 prefix!426 lt!1352453))))

(assert (=> d!1148064 (isPrefix!3501 lt!1352459 lt!1352453)))

(assert (=> d!1148064 (= (lemmaIsPrefixSameLengthThenSameList!753 lt!1352459 prefix!426 lt!1352453) lt!1352719)))

(declare-fun bs!583690 () Bool)

(assert (= bs!583690 d!1148064))

(declare-fun m!4436485 () Bool)

(assert (=> bs!583690 m!4436485))

(declare-fun m!4436487 () Bool)

(assert (=> bs!583690 m!4436487))

(assert (=> b!3877612 d!1148064))

(declare-fun d!1148066 () Bool)

(assert (=> d!1148066 (= (_2!23364 (v!39117 lt!1352444)) suffix!1176)))

(declare-fun lt!1352722 () Unit!59255)

(declare-fun choose!22991 (List!41351 List!41351 List!41351 List!41351 List!41351) Unit!59255)

(assert (=> d!1148066 (= lt!1352722 (choose!22991 lt!1352459 (_2!23364 (v!39117 lt!1352444)) prefix!426 suffix!1176 lt!1352453))))

(assert (=> d!1148066 (isPrefix!3501 lt!1352459 lt!1352453)))

(assert (=> d!1148066 (= (lemmaSamePrefixThenSameSuffix!1722 lt!1352459 (_2!23364 (v!39117 lt!1352444)) prefix!426 suffix!1176 lt!1352453) lt!1352722)))

(declare-fun bs!583691 () Bool)

(assert (= bs!583691 d!1148066))

(declare-fun m!4436489 () Bool)

(assert (=> bs!583691 m!4436489))

(assert (=> bs!583691 m!4436487))

(assert (=> b!3877612 d!1148066))

(declare-fun d!1148068 () Bool)

(assert (=> d!1148068 (= (isEmpty!24476 lt!1352489) ((_ is Nil!41228) lt!1352489))))

(assert (=> b!3877590 d!1148068))

(declare-fun d!1148070 () Bool)

(declare-fun e!2399400 () Bool)

(assert (=> d!1148070 e!2399400))

(declare-fun res!1571385 () Bool)

(assert (=> d!1148070 (=> (not res!1571385) (not e!2399400))))

(declare-fun lt!1352723 () List!41352)

(assert (=> d!1148070 (= res!1571385 (= (content!6161 lt!1352723) ((_ map or) (content!6161 lt!1352478) (content!6161 lt!1352489))))))

(declare-fun e!2399399 () List!41352)

(assert (=> d!1148070 (= lt!1352723 e!2399399)))

(declare-fun c!674694 () Bool)

(assert (=> d!1148070 (= c!674694 ((_ is Nil!41228) lt!1352478))))

(assert (=> d!1148070 (= (++!10561 lt!1352478 lt!1352489) lt!1352723)))

(declare-fun b!3878105 () Bool)

(declare-fun res!1571384 () Bool)

(assert (=> b!3878105 (=> (not res!1571384) (not e!2399400))))

(assert (=> b!3878105 (= res!1571384 (= (size!30976 lt!1352723) (+ (size!30976 lt!1352478) (size!30976 lt!1352489))))))

(declare-fun b!3878104 () Bool)

(assert (=> b!3878104 (= e!2399399 (Cons!41228 (h!46648 lt!1352478) (++!10561 (t!314995 lt!1352478) lt!1352489)))))

(declare-fun b!3878106 () Bool)

(assert (=> b!3878106 (= e!2399400 (or (not (= lt!1352489 Nil!41228)) (= lt!1352723 lt!1352478)))))

(declare-fun b!3878103 () Bool)

(assert (=> b!3878103 (= e!2399399 lt!1352489)))

(assert (= (and d!1148070 c!674694) b!3878103))

(assert (= (and d!1148070 (not c!674694)) b!3878104))

(assert (= (and d!1148070 res!1571385) b!3878105))

(assert (= (and b!3878105 res!1571384) b!3878106))

(declare-fun m!4436491 () Bool)

(assert (=> d!1148070 m!4436491))

(assert (=> d!1148070 m!4436123))

(assert (=> d!1148070 m!4436047))

(declare-fun m!4436493 () Bool)

(assert (=> b!3878105 m!4436493))

(assert (=> b!3878105 m!4436129))

(assert (=> b!3878105 m!4436053))

(declare-fun m!4436495 () Bool)

(assert (=> b!3878104 m!4436495))

(assert (=> b!3877590 d!1148070))

(declare-fun d!1148072 () Bool)

(declare-fun e!2399402 () Bool)

(assert (=> d!1148072 e!2399402))

(declare-fun res!1571387 () Bool)

(assert (=> d!1148072 (=> (not res!1571387) (not e!2399402))))

(declare-fun lt!1352724 () List!41352)

(assert (=> d!1148072 (= res!1571387 (= (content!6161 lt!1352724) ((_ map or) (content!6161 (++!10561 lt!1352478 lt!1352489)) (content!6161 suffixTokens!72))))))

(declare-fun e!2399401 () List!41352)

(assert (=> d!1148072 (= lt!1352724 e!2399401)))

(declare-fun c!674695 () Bool)

(assert (=> d!1148072 (= c!674695 ((_ is Nil!41228) (++!10561 lt!1352478 lt!1352489)))))

(assert (=> d!1148072 (= (++!10561 (++!10561 lt!1352478 lt!1352489) suffixTokens!72) lt!1352724)))

(declare-fun b!3878109 () Bool)

(declare-fun res!1571386 () Bool)

(assert (=> b!3878109 (=> (not res!1571386) (not e!2399402))))

(assert (=> b!3878109 (= res!1571386 (= (size!30976 lt!1352724) (+ (size!30976 (++!10561 lt!1352478 lt!1352489)) (size!30976 suffixTokens!72))))))

(declare-fun b!3878108 () Bool)

(assert (=> b!3878108 (= e!2399401 (Cons!41228 (h!46648 (++!10561 lt!1352478 lt!1352489)) (++!10561 (t!314995 (++!10561 lt!1352478 lt!1352489)) suffixTokens!72)))))

(declare-fun b!3878110 () Bool)

(assert (=> b!3878110 (= e!2399402 (or (not (= suffixTokens!72 Nil!41228)) (= lt!1352724 (++!10561 lt!1352478 lt!1352489))))))

(declare-fun b!3878107 () Bool)

(assert (=> b!3878107 (= e!2399401 suffixTokens!72)))

(assert (= (and d!1148072 c!674695) b!3878107))

(assert (= (and d!1148072 (not c!674695)) b!3878108))

(assert (= (and d!1148072 res!1571387) b!3878109))

(assert (= (and b!3878109 res!1571386) b!3878110))

(declare-fun m!4436497 () Bool)

(assert (=> d!1148072 m!4436497))

(assert (=> d!1148072 m!4435655))

(declare-fun m!4436499 () Bool)

(assert (=> d!1148072 m!4436499))

(assert (=> d!1148072 m!4436049))

(declare-fun m!4436501 () Bool)

(assert (=> b!3878109 m!4436501))

(assert (=> b!3878109 m!4435655))

(declare-fun m!4436503 () Bool)

(assert (=> b!3878109 m!4436503))

(assert (=> b!3878109 m!4436055))

(declare-fun m!4436505 () Bool)

(assert (=> b!3878108 m!4436505))

(assert (=> b!3877590 d!1148072))

(declare-fun d!1148074 () Bool)

(declare-fun e!2399404 () Bool)

(assert (=> d!1148074 e!2399404))

(declare-fun res!1571389 () Bool)

(assert (=> d!1148074 (=> (not res!1571389) (not e!2399404))))

(declare-fun lt!1352725 () List!41352)

(assert (=> d!1148074 (= res!1571389 (= (content!6161 lt!1352725) ((_ map or) (content!6161 lt!1352478) (content!6161 lt!1352467))))))

(declare-fun e!2399403 () List!41352)

(assert (=> d!1148074 (= lt!1352725 e!2399403)))

(declare-fun c!674696 () Bool)

(assert (=> d!1148074 (= c!674696 ((_ is Nil!41228) lt!1352478))))

(assert (=> d!1148074 (= (++!10561 lt!1352478 lt!1352467) lt!1352725)))

(declare-fun b!3878113 () Bool)

(declare-fun res!1571388 () Bool)

(assert (=> b!3878113 (=> (not res!1571388) (not e!2399404))))

(assert (=> b!3878113 (= res!1571388 (= (size!30976 lt!1352725) (+ (size!30976 lt!1352478) (size!30976 lt!1352467))))))

(declare-fun b!3878112 () Bool)

(assert (=> b!3878112 (= e!2399403 (Cons!41228 (h!46648 lt!1352478) (++!10561 (t!314995 lt!1352478) lt!1352467)))))

(declare-fun b!3878114 () Bool)

(assert (=> b!3878114 (= e!2399404 (or (not (= lt!1352467 Nil!41228)) (= lt!1352725 lt!1352478)))))

(declare-fun b!3878111 () Bool)

(assert (=> b!3878111 (= e!2399403 lt!1352467)))

(assert (= (and d!1148074 c!674696) b!3878111))

(assert (= (and d!1148074 (not c!674696)) b!3878112))

(assert (= (and d!1148074 res!1571389) b!3878113))

(assert (= (and b!3878113 res!1571388) b!3878114))

(declare-fun m!4436507 () Bool)

(assert (=> d!1148074 m!4436507))

(assert (=> d!1148074 m!4436123))

(declare-fun m!4436509 () Bool)

(assert (=> d!1148074 m!4436509))

(declare-fun m!4436511 () Bool)

(assert (=> b!3878113 m!4436511))

(assert (=> b!3878113 m!4436129))

(declare-fun m!4436513 () Bool)

(assert (=> b!3878113 m!4436513))

(declare-fun m!4436515 () Bool)

(assert (=> b!3878112 m!4436515))

(assert (=> b!3877590 d!1148074))

(declare-fun d!1148076 () Bool)

(assert (=> d!1148076 (= (++!10561 (++!10561 lt!1352478 lt!1352489) suffixTokens!72) (++!10561 lt!1352478 (++!10561 lt!1352489 suffixTokens!72)))))

(declare-fun lt!1352728 () Unit!59255)

(declare-fun choose!22992 (List!41352 List!41352 List!41352) Unit!59255)

(assert (=> d!1148076 (= lt!1352728 (choose!22992 lt!1352478 lt!1352489 suffixTokens!72))))

(assert (=> d!1148076 (= (lemmaConcatAssociativity!2276 lt!1352478 lt!1352489 suffixTokens!72) lt!1352728)))

(declare-fun bs!583692 () Bool)

(assert (= bs!583692 d!1148076))

(assert (=> bs!583692 m!4435697))

(assert (=> bs!583692 m!4435655))

(assert (=> bs!583692 m!4435655))

(assert (=> bs!583692 m!4435657))

(declare-fun m!4436517 () Bool)

(assert (=> bs!583692 m!4436517))

(assert (=> bs!583692 m!4435697))

(declare-fun m!4436519 () Bool)

(assert (=> bs!583692 m!4436519))

(assert (=> b!3877590 d!1148076))

(declare-fun d!1148078 () Bool)

(assert (=> d!1148078 (and (= lt!1352459 lt!1352459) (= (_2!23364 (v!39117 lt!1352444)) (_2!23364 lt!1352451)))))

(declare-fun lt!1352735 () Unit!59255)

(declare-fun choose!22993 (List!41351 List!41351 List!41351 List!41351) Unit!59255)

(assert (=> d!1148078 (= lt!1352735 (choose!22993 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 (_2!23364 lt!1352451)))))

(assert (=> d!1148078 (= (++!10562 lt!1352459 (_2!23364 (v!39117 lt!1352444))) (++!10562 lt!1352459 (_2!23364 lt!1352451)))))

(assert (=> d!1148078 (= (lemmaConcatSameAndSameSizesThenSameLists!486 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 (_2!23364 lt!1352451)) lt!1352735)))

(declare-fun bs!583694 () Bool)

(assert (= bs!583694 d!1148078))

(declare-fun m!4436533 () Bool)

(assert (=> bs!583694 m!4436533))

(assert (=> bs!583694 m!4435645))

(declare-fun m!4436535 () Bool)

(assert (=> bs!583694 m!4436535))

(assert (=> b!3877611 d!1148078))

(declare-fun d!1148086 () Bool)

(assert (=> d!1148086 (not (= (lexList!1759 thiss!20629 rules!2768 (_2!23364 lt!1352451)) (tuple2!40459 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1352757 () Unit!59255)

(declare-fun choose!22995 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41352 List!41351) Unit!59255)

(assert (=> d!1148086 (= lt!1352757 (choose!22995 thiss!20629 rules!2768 suffix!1176 (_2!23364 lt!1352451) suffixTokens!72 suffixResult!91))))

(assert (=> d!1148086 (not (isEmpty!24478 rules!2768))))

(assert (=> d!1148086 (= (lemmaLexWithSmallerInputCannotProduceSameResults!62 thiss!20629 rules!2768 suffix!1176 (_2!23364 lt!1352451) suffixTokens!72 suffixResult!91) lt!1352757)))

(declare-fun bs!583698 () Bool)

(assert (= bs!583698 d!1148086))

(assert (=> bs!583698 m!4435693))

(declare-fun m!4436663 () Bool)

(assert (=> bs!583698 m!4436663))

(assert (=> bs!583698 m!4435747))

(assert (=> b!3877611 d!1148086))

(declare-fun d!1148130 () Bool)

(assert (=> d!1148130 (= (isEmpty!24476 lt!1352457) ((_ is Nil!41228) lt!1352457))))

(assert (=> b!3877589 d!1148130))

(assert (=> b!3877589 d!1147926))

(declare-fun d!1148132 () Bool)

(assert (=> d!1148132 (= (_2!23364 (v!39117 lt!1352444)) lt!1352463)))

(declare-fun lt!1352758 () Unit!59255)

(assert (=> d!1148132 (= lt!1352758 (choose!22991 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 lt!1352463 lt!1352453))))

(assert (=> d!1148132 (isPrefix!3501 lt!1352459 lt!1352453)))

(assert (=> d!1148132 (= (lemmaSamePrefixThenSameSuffix!1722 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 lt!1352463 lt!1352453) lt!1352758)))

(declare-fun bs!583699 () Bool)

(assert (= bs!583699 d!1148132))

(declare-fun m!4436665 () Bool)

(assert (=> bs!583699 m!4436665))

(assert (=> bs!583699 m!4436487))

(assert (=> b!3877610 d!1148132))

(declare-fun b!3878177 () Bool)

(declare-fun e!2399440 () Bool)

(assert (=> b!3878177 (= e!2399440 (>= (size!30974 lt!1352487) (size!30974 lt!1352459)))))

(declare-fun b!3878174 () Bool)

(declare-fun e!2399439 () Bool)

(declare-fun e!2399441 () Bool)

(assert (=> b!3878174 (= e!2399439 e!2399441)))

(declare-fun res!1571424 () Bool)

(assert (=> b!3878174 (=> (not res!1571424) (not e!2399441))))

(assert (=> b!3878174 (= res!1571424 (not ((_ is Nil!41227) lt!1352487)))))

(declare-fun d!1148134 () Bool)

(assert (=> d!1148134 e!2399440))

(declare-fun res!1571425 () Bool)

(assert (=> d!1148134 (=> res!1571425 e!2399440)))

(declare-fun lt!1352759 () Bool)

(assert (=> d!1148134 (= res!1571425 (not lt!1352759))))

(assert (=> d!1148134 (= lt!1352759 e!2399439)))

(declare-fun res!1571426 () Bool)

(assert (=> d!1148134 (=> res!1571426 e!2399439)))

(assert (=> d!1148134 (= res!1571426 ((_ is Nil!41227) lt!1352459))))

(assert (=> d!1148134 (= (isPrefix!3501 lt!1352459 lt!1352487) lt!1352759)))

(declare-fun b!3878175 () Bool)

(declare-fun res!1571427 () Bool)

(assert (=> b!3878175 (=> (not res!1571427) (not e!2399441))))

(assert (=> b!3878175 (= res!1571427 (= (head!8230 lt!1352459) (head!8230 lt!1352487)))))

(declare-fun b!3878176 () Bool)

(assert (=> b!3878176 (= e!2399441 (isPrefix!3501 (tail!5947 lt!1352459) (tail!5947 lt!1352487)))))

(assert (= (and d!1148134 (not res!1571426)) b!3878174))

(assert (= (and b!3878174 res!1571424) b!3878175))

(assert (= (and b!3878175 res!1571427) b!3878176))

(assert (= (and d!1148134 (not res!1571425)) b!3878177))

(declare-fun m!4436667 () Bool)

(assert (=> b!3878177 m!4436667))

(assert (=> b!3878177 m!4435647))

(declare-fun m!4436669 () Bool)

(assert (=> b!3878175 m!4436669))

(declare-fun m!4436671 () Bool)

(assert (=> b!3878175 m!4436671))

(declare-fun m!4436673 () Bool)

(assert (=> b!3878176 m!4436673))

(declare-fun m!4436675 () Bool)

(assert (=> b!3878176 m!4436675))

(assert (=> b!3878176 m!4436673))

(assert (=> b!3878176 m!4436675))

(declare-fun m!4436677 () Bool)

(assert (=> b!3878176 m!4436677))

(assert (=> b!3877610 d!1148134))

(declare-fun d!1148136 () Bool)

(assert (=> d!1148136 (isPrefix!3501 lt!1352459 (++!10562 lt!1352459 lt!1352463))))

(declare-fun lt!1352763 () Unit!59255)

(assert (=> d!1148136 (= lt!1352763 (choose!22982 lt!1352459 lt!1352463))))

(assert (=> d!1148136 (= (lemmaConcatTwoListThenFirstIsPrefix!2364 lt!1352459 lt!1352463) lt!1352763)))

(declare-fun bs!583700 () Bool)

(assert (= bs!583700 d!1148136))

(assert (=> bs!583700 m!4435607))

(assert (=> bs!583700 m!4435607))

(declare-fun m!4436681 () Bool)

(assert (=> bs!583700 m!4436681))

(declare-fun m!4436683 () Bool)

(assert (=> bs!583700 m!4436683))

(assert (=> b!3877610 d!1148136))

(declare-fun b!3878181 () Bool)

(declare-fun e!2399443 () Bool)

(assert (=> b!3878181 (= e!2399443 (>= (size!30974 (_2!23364 (v!39117 lt!1352444))) (size!30974 lt!1352448)))))

(declare-fun b!3878178 () Bool)

(declare-fun e!2399442 () Bool)

(declare-fun e!2399444 () Bool)

(assert (=> b!3878178 (= e!2399442 e!2399444)))

(declare-fun res!1571428 () Bool)

(assert (=> b!3878178 (=> (not res!1571428) (not e!2399444))))

(assert (=> b!3878178 (= res!1571428 (not ((_ is Nil!41227) (_2!23364 (v!39117 lt!1352444)))))))

(declare-fun d!1148140 () Bool)

(assert (=> d!1148140 e!2399443))

(declare-fun res!1571429 () Bool)

(assert (=> d!1148140 (=> res!1571429 e!2399443)))

(declare-fun lt!1352764 () Bool)

(assert (=> d!1148140 (= res!1571429 (not lt!1352764))))

(assert (=> d!1148140 (= lt!1352764 e!2399442)))

(declare-fun res!1571430 () Bool)

(assert (=> d!1148140 (=> res!1571430 e!2399442)))

(assert (=> d!1148140 (= res!1571430 ((_ is Nil!41227) lt!1352448))))

(assert (=> d!1148140 (= (isPrefix!3501 lt!1352448 (_2!23364 (v!39117 lt!1352444))) lt!1352764)))

(declare-fun b!3878179 () Bool)

(declare-fun res!1571431 () Bool)

(assert (=> b!3878179 (=> (not res!1571431) (not e!2399444))))

(assert (=> b!3878179 (= res!1571431 (= (head!8230 lt!1352448) (head!8230 (_2!23364 (v!39117 lt!1352444)))))))

(declare-fun b!3878180 () Bool)

(assert (=> b!3878180 (= e!2399444 (isPrefix!3501 (tail!5947 lt!1352448) (tail!5947 (_2!23364 (v!39117 lt!1352444)))))))

(assert (= (and d!1148140 (not res!1571430)) b!3878178))

(assert (= (and b!3878178 res!1571428) b!3878179))

(assert (= (and b!3878179 res!1571431) b!3878180))

(assert (= (and d!1148140 (not res!1571429)) b!3878181))

(assert (=> b!3878181 m!4435617))

(assert (=> b!3878181 m!4435793))

(assert (=> b!3878179 m!4436059))

(declare-fun m!4436687 () Bool)

(assert (=> b!3878179 m!4436687))

(assert (=> b!3878180 m!4436063))

(declare-fun m!4436689 () Bool)

(assert (=> b!3878180 m!4436689))

(assert (=> b!3878180 m!4436063))

(assert (=> b!3878180 m!4436689))

(declare-fun m!4436691 () Bool)

(assert (=> b!3878180 m!4436691))

(assert (=> b!3877588 d!1148140))

(declare-fun d!1148142 () Bool)

(assert (=> d!1148142 (= (inv!55380 (tag!7262 (h!46649 rules!2768))) (= (mod (str.len (value!203090 (tag!7262 (h!46649 rules!2768)))) 2) 0))))

(assert (=> b!3877609 d!1148142))

(declare-fun d!1148144 () Bool)

(declare-fun res!1571434 () Bool)

(declare-fun e!2399466 () Bool)

(assert (=> d!1148144 (=> (not res!1571434) (not e!2399466))))

(declare-fun semiInverseModEq!2745 (Int Int) Bool)

(assert (=> d!1148144 (= res!1571434 (semiInverseModEq!2745 (toChars!8689 (transformation!6402 (h!46649 rules!2768))) (toValue!8830 (transformation!6402 (h!46649 rules!2768)))))))

(assert (=> d!1148144 (= (inv!55383 (transformation!6402 (h!46649 rules!2768))) e!2399466)))

(declare-fun b!3878210 () Bool)

(declare-fun equivClasses!2644 (Int Int) Bool)

(assert (=> b!3878210 (= e!2399466 (equivClasses!2644 (toChars!8689 (transformation!6402 (h!46649 rules!2768))) (toValue!8830 (transformation!6402 (h!46649 rules!2768)))))))

(assert (= (and d!1148144 res!1571434) b!3878210))

(declare-fun m!4436697 () Bool)

(assert (=> d!1148144 m!4436697))

(declare-fun m!4436699 () Bool)

(assert (=> b!3878210 m!4436699))

(assert (=> b!3877609 d!1148144))

(declare-fun d!1148146 () Bool)

(declare-fun lt!1352766 () Int)

(assert (=> d!1148146 (>= lt!1352766 0)))

(declare-fun e!2399467 () Int)

(assert (=> d!1148146 (= lt!1352766 e!2399467)))

(declare-fun c!674709 () Bool)

(assert (=> d!1148146 (= c!674709 ((_ is Nil!41227) suffix!1176))))

(assert (=> d!1148146 (= (size!30974 suffix!1176) lt!1352766)))

(declare-fun b!3878213 () Bool)

(assert (=> b!3878213 (= e!2399467 0)))

(declare-fun b!3878214 () Bool)

(assert (=> b!3878214 (= e!2399467 (+ 1 (size!30974 (t!314994 suffix!1176))))))

(assert (= (and d!1148146 c!674709) b!3878213))

(assert (= (and d!1148146 (not c!674709)) b!3878214))

(declare-fun m!4436701 () Bool)

(assert (=> b!3878214 m!4436701))

(assert (=> b!3877630 d!1148146))

(declare-fun d!1148148 () Bool)

(declare-fun lt!1352767 () Int)

(assert (=> d!1148148 (>= lt!1352767 0)))

(declare-fun e!2399468 () Int)

(assert (=> d!1148148 (= lt!1352767 e!2399468)))

(declare-fun c!674710 () Bool)

(assert (=> d!1148148 (= c!674710 ((_ is Nil!41227) (_2!23364 (v!39117 lt!1352444))))))

(assert (=> d!1148148 (= (size!30974 (_2!23364 (v!39117 lt!1352444))) lt!1352767)))

(declare-fun b!3878215 () Bool)

(assert (=> b!3878215 (= e!2399468 0)))

(declare-fun b!3878216 () Bool)

(assert (=> b!3878216 (= e!2399468 (+ 1 (size!30974 (t!314994 (_2!23364 (v!39117 lt!1352444))))))))

(assert (= (and d!1148148 c!674710) b!3878215))

(assert (= (and d!1148148 (not c!674710)) b!3878216))

(declare-fun m!4436703 () Bool)

(assert (=> b!3878216 m!4436703))

(assert (=> b!3877630 d!1148148))

(declare-fun b!3878224 () Bool)

(declare-fun e!2399470 () Bool)

(declare-fun lt!1352768 () List!41351)

(assert (=> b!3878224 (= e!2399470 (or (not (= Nil!41227 Nil!41227)) (= lt!1352768 prefix!426)))))

(declare-fun d!1148150 () Bool)

(assert (=> d!1148150 e!2399470))

(declare-fun res!1571436 () Bool)

(assert (=> d!1148150 (=> (not res!1571436) (not e!2399470))))

(assert (=> d!1148150 (= res!1571436 (= (content!6160 lt!1352768) ((_ map or) (content!6160 prefix!426) (content!6160 Nil!41227))))))

(declare-fun e!2399471 () List!41351)

(assert (=> d!1148150 (= lt!1352768 e!2399471)))

(declare-fun c!674711 () Bool)

(assert (=> d!1148150 (= c!674711 ((_ is Nil!41227) prefix!426))))

(assert (=> d!1148150 (= (++!10562 prefix!426 Nil!41227) lt!1352768)))

(declare-fun b!3878221 () Bool)

(assert (=> b!3878221 (= e!2399471 Nil!41227)))

(declare-fun b!3878222 () Bool)

(assert (=> b!3878222 (= e!2399471 (Cons!41227 (h!46647 prefix!426) (++!10562 (t!314994 prefix!426) Nil!41227)))))

(declare-fun b!3878223 () Bool)

(declare-fun res!1571435 () Bool)

(assert (=> b!3878223 (=> (not res!1571435) (not e!2399470))))

(assert (=> b!3878223 (= res!1571435 (= (size!30974 lt!1352768) (+ (size!30974 prefix!426) (size!30974 Nil!41227))))))

(assert (= (and d!1148150 c!674711) b!3878221))

(assert (= (and d!1148150 (not c!674711)) b!3878222))

(assert (= (and d!1148150 res!1571436) b!3878223))

(assert (= (and b!3878223 res!1571435) b!3878224))

(declare-fun m!4436705 () Bool)

(assert (=> d!1148150 m!4436705))

(assert (=> d!1148150 m!4436441))

(declare-fun m!4436707 () Bool)

(assert (=> d!1148150 m!4436707))

(declare-fun m!4436709 () Bool)

(assert (=> b!3878222 m!4436709))

(declare-fun m!4436711 () Bool)

(assert (=> b!3878223 m!4436711))

(assert (=> b!3878223 m!4435733))

(assert (=> b!3878223 m!4435591))

(assert (=> b!3877587 d!1148150))

(declare-fun d!1148152 () Bool)

(assert (=> d!1148152 (not (= (lexList!1759 thiss!20629 rules!2768 (_2!23364 lt!1352451)) (tuple2!40459 (++!10561 lt!1352457 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1352771 () Unit!59255)

(declare-fun choose!22996 (LexerInterface!5991 List!41353 List!41351 List!41351 List!41352 List!41351 List!41352) Unit!59255)

(assert (=> d!1148152 (= lt!1352771 (choose!22996 thiss!20629 rules!2768 suffix!1176 (_2!23364 lt!1352451) suffixTokens!72 suffixResult!91 lt!1352457))))

(assert (=> d!1148152 (not (isEmpty!24478 rules!2768))))

(assert (=> d!1148152 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!62 thiss!20629 rules!2768 suffix!1176 (_2!23364 lt!1352451) suffixTokens!72 suffixResult!91 lt!1352457) lt!1352771)))

(declare-fun bs!583703 () Bool)

(assert (= bs!583703 d!1148152))

(assert (=> bs!583703 m!4435693))

(assert (=> bs!583703 m!4435723))

(declare-fun m!4436729 () Bool)

(assert (=> bs!583703 m!4436729))

(assert (=> bs!583703 m!4435747))

(assert (=> b!3877597 d!1148152))

(declare-fun d!1148154 () Bool)

(declare-fun e!2399501 () Bool)

(assert (=> d!1148154 e!2399501))

(declare-fun res!1571438 () Bool)

(assert (=> d!1148154 (=> (not res!1571438) (not e!2399501))))

(declare-fun lt!1352772 () List!41352)

(assert (=> d!1148154 (= res!1571438 (= (content!6161 lt!1352772) ((_ map or) (content!6161 lt!1352457) (content!6161 suffixTokens!72))))))

(declare-fun e!2399500 () List!41352)

(assert (=> d!1148154 (= lt!1352772 e!2399500)))

(declare-fun c!674712 () Bool)

(assert (=> d!1148154 (= c!674712 ((_ is Nil!41228) lt!1352457))))

(assert (=> d!1148154 (= (++!10561 lt!1352457 suffixTokens!72) lt!1352772)))

(declare-fun b!3878255 () Bool)

(declare-fun res!1571437 () Bool)

(assert (=> b!3878255 (=> (not res!1571437) (not e!2399501))))

(assert (=> b!3878255 (= res!1571437 (= (size!30976 lt!1352772) (+ (size!30976 lt!1352457) (size!30976 suffixTokens!72))))))

(declare-fun b!3878254 () Bool)

(assert (=> b!3878254 (= e!2399500 (Cons!41228 (h!46648 lt!1352457) (++!10561 (t!314995 lt!1352457) suffixTokens!72)))))

(declare-fun b!3878256 () Bool)

(assert (=> b!3878256 (= e!2399501 (or (not (= suffixTokens!72 Nil!41228)) (= lt!1352772 lt!1352457)))))

(declare-fun b!3878253 () Bool)

(assert (=> b!3878253 (= e!2399500 suffixTokens!72)))

(assert (= (and d!1148154 c!674712) b!3878253))

(assert (= (and d!1148154 (not c!674712)) b!3878254))

(assert (= (and d!1148154 res!1571438) b!3878255))

(assert (= (and b!3878255 res!1571437) b!3878256))

(declare-fun m!4436731 () Bool)

(assert (=> d!1148154 m!4436731))

(declare-fun m!4436733 () Bool)

(assert (=> d!1148154 m!4436733))

(assert (=> d!1148154 m!4436049))

(declare-fun m!4436735 () Bool)

(assert (=> b!3878255 m!4436735))

(declare-fun m!4436737 () Bool)

(assert (=> b!3878255 m!4436737))

(assert (=> b!3878255 m!4436055))

(declare-fun m!4436739 () Bool)

(assert (=> b!3878254 m!4436739))

(assert (=> b!3877597 d!1148154))

(declare-fun d!1148156 () Bool)

(assert (=> d!1148156 (= (isEmpty!24478 rules!2768) ((_ is Nil!41229) rules!2768))))

(assert (=> b!3877596 d!1148156))

(assert (=> b!3877617 d!1148062))

(declare-fun d!1148158 () Bool)

(assert (=> d!1148158 (isPrefix!3501 lt!1352459 prefix!426)))

(declare-fun lt!1352775 () Unit!59255)

(declare-fun choose!22997 (List!41351 List!41351 List!41351) Unit!59255)

(assert (=> d!1148158 (= lt!1352775 (choose!22997 prefix!426 lt!1352459 lt!1352453))))

(assert (=> d!1148158 (isPrefix!3501 prefix!426 lt!1352453)))

(assert (=> d!1148158 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!251 prefix!426 lt!1352459 lt!1352453) lt!1352775)))

(declare-fun bs!583704 () Bool)

(assert (= bs!583704 d!1148158))

(assert (=> bs!583704 m!4435731))

(declare-fun m!4436741 () Bool)

(assert (=> bs!583704 m!4436741))

(assert (=> bs!583704 m!4435675))

(assert (=> b!3877617 d!1148158))

(declare-fun d!1148160 () Bool)

(declare-fun lt!1352776 () Int)

(assert (=> d!1148160 (>= lt!1352776 0)))

(declare-fun e!2399502 () Int)

(assert (=> d!1148160 (= lt!1352776 e!2399502)))

(declare-fun c!674713 () Bool)

(assert (=> d!1148160 (= c!674713 ((_ is Nil!41227) prefix!426))))

(assert (=> d!1148160 (= (size!30974 prefix!426) lt!1352776)))

(declare-fun b!3878257 () Bool)

(assert (=> b!3878257 (= e!2399502 0)))

(declare-fun b!3878258 () Bool)

(assert (=> b!3878258 (= e!2399502 (+ 1 (size!30974 (t!314994 prefix!426))))))

(assert (= (and d!1148160 c!674713) b!3878257))

(assert (= (and d!1148160 (not c!674713)) b!3878258))

(declare-fun m!4436743 () Bool)

(assert (=> b!3878258 m!4436743))

(assert (=> b!3877617 d!1148160))

(assert (=> b!3877617 d!1148060))

(declare-fun b!3878262 () Bool)

(declare-fun e!2399504 () Bool)

(assert (=> b!3878262 (= e!2399504 (>= (size!30974 prefix!426) (size!30974 lt!1352459)))))

(declare-fun b!3878259 () Bool)

(declare-fun e!2399503 () Bool)

(declare-fun e!2399505 () Bool)

(assert (=> b!3878259 (= e!2399503 e!2399505)))

(declare-fun res!1571439 () Bool)

(assert (=> b!3878259 (=> (not res!1571439) (not e!2399505))))

(assert (=> b!3878259 (= res!1571439 (not ((_ is Nil!41227) prefix!426)))))

(declare-fun d!1148162 () Bool)

(assert (=> d!1148162 e!2399504))

(declare-fun res!1571440 () Bool)

(assert (=> d!1148162 (=> res!1571440 e!2399504)))

(declare-fun lt!1352777 () Bool)

(assert (=> d!1148162 (= res!1571440 (not lt!1352777))))

(assert (=> d!1148162 (= lt!1352777 e!2399503)))

(declare-fun res!1571441 () Bool)

(assert (=> d!1148162 (=> res!1571441 e!2399503)))

(assert (=> d!1148162 (= res!1571441 ((_ is Nil!41227) lt!1352459))))

(assert (=> d!1148162 (= (isPrefix!3501 lt!1352459 prefix!426) lt!1352777)))

(declare-fun b!3878260 () Bool)

(declare-fun res!1571442 () Bool)

(assert (=> b!3878260 (=> (not res!1571442) (not e!2399505))))

(assert (=> b!3878260 (= res!1571442 (= (head!8230 lt!1352459) (head!8230 prefix!426)))))

(declare-fun b!3878261 () Bool)

(assert (=> b!3878261 (= e!2399505 (isPrefix!3501 (tail!5947 lt!1352459) (tail!5947 prefix!426)))))

(assert (= (and d!1148162 (not res!1571441)) b!3878259))

(assert (= (and b!3878259 res!1571439) b!3878260))

(assert (= (and b!3878260 res!1571442) b!3878261))

(assert (= (and d!1148162 (not res!1571440)) b!3878262))

(assert (=> b!3878262 m!4435733))

(assert (=> b!3878262 m!4435647))

(assert (=> b!3878260 m!4436669))

(assert (=> b!3878260 m!4436477))

(assert (=> b!3878261 m!4436673))

(assert (=> b!3878261 m!4436469))

(assert (=> b!3878261 m!4436673))

(assert (=> b!3878261 m!4436469))

(declare-fun m!4436745 () Bool)

(assert (=> b!3878261 m!4436745))

(assert (=> b!3877617 d!1148162))

(declare-fun d!1148164 () Bool)

(assert (=> d!1148164 (= (inv!55380 (tag!7262 (rule!9298 (h!46648 prefixTokens!80)))) (= (mod (str.len (value!203090 (tag!7262 (rule!9298 (h!46648 prefixTokens!80))))) 2) 0))))

(assert (=> b!3877595 d!1148164))

(declare-fun d!1148166 () Bool)

(declare-fun res!1571443 () Bool)

(declare-fun e!2399506 () Bool)

(assert (=> d!1148166 (=> (not res!1571443) (not e!2399506))))

(assert (=> d!1148166 (= res!1571443 (semiInverseModEq!2745 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (toValue!8830 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80))))))))

(assert (=> d!1148166 (= (inv!55383 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) e!2399506)))

(declare-fun b!3878263 () Bool)

(assert (=> b!3878263 (= e!2399506 (equivClasses!2644 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (toValue!8830 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80))))))))

(assert (= (and d!1148166 res!1571443) b!3878263))

(declare-fun m!4436747 () Bool)

(assert (=> d!1148166 m!4436747))

(declare-fun m!4436749 () Bool)

(assert (=> b!3878263 m!4436749))

(assert (=> b!3877595 d!1148166))

(declare-fun b!3878267 () Bool)

(declare-fun e!2399508 () Bool)

(assert (=> b!3878267 (= e!2399508 (>= (size!30974 suffix!1176) (size!30974 Nil!41227)))))

(declare-fun b!3878264 () Bool)

(declare-fun e!2399507 () Bool)

(declare-fun e!2399509 () Bool)

(assert (=> b!3878264 (= e!2399507 e!2399509)))

(declare-fun res!1571444 () Bool)

(assert (=> b!3878264 (=> (not res!1571444) (not e!2399509))))

(assert (=> b!3878264 (= res!1571444 (not ((_ is Nil!41227) suffix!1176)))))

(declare-fun d!1148168 () Bool)

(assert (=> d!1148168 e!2399508))

(declare-fun res!1571445 () Bool)

(assert (=> d!1148168 (=> res!1571445 e!2399508)))

(declare-fun lt!1352778 () Bool)

(assert (=> d!1148168 (= res!1571445 (not lt!1352778))))

(assert (=> d!1148168 (= lt!1352778 e!2399507)))

(declare-fun res!1571446 () Bool)

(assert (=> d!1148168 (=> res!1571446 e!2399507)))

(assert (=> d!1148168 (= res!1571446 ((_ is Nil!41227) Nil!41227))))

(assert (=> d!1148168 (= (isPrefix!3501 Nil!41227 suffix!1176) lt!1352778)))

(declare-fun b!3878265 () Bool)

(declare-fun res!1571447 () Bool)

(assert (=> b!3878265 (=> (not res!1571447) (not e!2399509))))

(assert (=> b!3878265 (= res!1571447 (= (head!8230 Nil!41227) (head!8230 suffix!1176)))))

(declare-fun b!3878266 () Bool)

(assert (=> b!3878266 (= e!2399509 (isPrefix!3501 (tail!5947 Nil!41227) (tail!5947 suffix!1176)))))

(assert (= (and d!1148168 (not res!1571446)) b!3878264))

(assert (= (and b!3878264 res!1571444) b!3878265))

(assert (= (and b!3878265 res!1571447) b!3878266))

(assert (= (and d!1148168 (not res!1571445)) b!3878267))

(assert (=> b!3878267 m!4435615))

(assert (=> b!3878267 m!4435591))

(declare-fun m!4436751 () Bool)

(assert (=> b!3878265 m!4436751))

(declare-fun m!4436753 () Bool)

(assert (=> b!3878265 m!4436753))

(declare-fun m!4436755 () Bool)

(assert (=> b!3878266 m!4436755))

(declare-fun m!4436757 () Bool)

(assert (=> b!3878266 m!4436757))

(assert (=> b!3878266 m!4436755))

(assert (=> b!3878266 m!4436757))

(declare-fun m!4436759 () Bool)

(assert (=> b!3878266 m!4436759))

(assert (=> b!3877616 d!1148168))

(declare-fun b!3878271 () Bool)

(declare-fun e!2399511 () Bool)

(assert (=> b!3878271 (= e!2399511 (>= (size!30974 (++!10562 Nil!41227 suffix!1176)) (size!30974 Nil!41227)))))

(declare-fun b!3878268 () Bool)

(declare-fun e!2399510 () Bool)

(declare-fun e!2399512 () Bool)

(assert (=> b!3878268 (= e!2399510 e!2399512)))

(declare-fun res!1571448 () Bool)

(assert (=> b!3878268 (=> (not res!1571448) (not e!2399512))))

(assert (=> b!3878268 (= res!1571448 (not ((_ is Nil!41227) (++!10562 Nil!41227 suffix!1176))))))

(declare-fun d!1148170 () Bool)

(assert (=> d!1148170 e!2399511))

(declare-fun res!1571449 () Bool)

(assert (=> d!1148170 (=> res!1571449 e!2399511)))

(declare-fun lt!1352779 () Bool)

(assert (=> d!1148170 (= res!1571449 (not lt!1352779))))

(assert (=> d!1148170 (= lt!1352779 e!2399510)))

(declare-fun res!1571450 () Bool)

(assert (=> d!1148170 (=> res!1571450 e!2399510)))

(assert (=> d!1148170 (= res!1571450 ((_ is Nil!41227) Nil!41227))))

(assert (=> d!1148170 (= (isPrefix!3501 Nil!41227 (++!10562 Nil!41227 suffix!1176)) lt!1352779)))

(declare-fun b!3878269 () Bool)

(declare-fun res!1571451 () Bool)

(assert (=> b!3878269 (=> (not res!1571451) (not e!2399512))))

(assert (=> b!3878269 (= res!1571451 (= (head!8230 Nil!41227) (head!8230 (++!10562 Nil!41227 suffix!1176))))))

(declare-fun b!3878270 () Bool)

(assert (=> b!3878270 (= e!2399512 (isPrefix!3501 (tail!5947 Nil!41227) (tail!5947 (++!10562 Nil!41227 suffix!1176))))))

(assert (= (and d!1148170 (not res!1571450)) b!3878268))

(assert (= (and b!3878268 res!1571448) b!3878269))

(assert (= (and b!3878269 res!1571451) b!3878270))

(assert (= (and d!1148170 (not res!1571449)) b!3878271))

(assert (=> b!3878271 m!4435595))

(declare-fun m!4436761 () Bool)

(assert (=> b!3878271 m!4436761))

(assert (=> b!3878271 m!4435591))

(assert (=> b!3878269 m!4436751))

(assert (=> b!3878269 m!4435595))

(declare-fun m!4436763 () Bool)

(assert (=> b!3878269 m!4436763))

(assert (=> b!3878270 m!4436755))

(assert (=> b!3878270 m!4435595))

(declare-fun m!4436765 () Bool)

(assert (=> b!3878270 m!4436765))

(assert (=> b!3878270 m!4436755))

(assert (=> b!3878270 m!4436765))

(declare-fun m!4436767 () Bool)

(assert (=> b!3878270 m!4436767))

(assert (=> b!3877616 d!1148170))

(declare-fun b!3878275 () Bool)

(declare-fun e!2399513 () Bool)

(declare-fun lt!1352780 () List!41351)

(assert (=> b!3878275 (= e!2399513 (or (not (= suffix!1176 Nil!41227)) (= lt!1352780 Nil!41227)))))

(declare-fun d!1148172 () Bool)

(assert (=> d!1148172 e!2399513))

(declare-fun res!1571453 () Bool)

(assert (=> d!1148172 (=> (not res!1571453) (not e!2399513))))

(assert (=> d!1148172 (= res!1571453 (= (content!6160 lt!1352780) ((_ map or) (content!6160 Nil!41227) (content!6160 suffix!1176))))))

(declare-fun e!2399514 () List!41351)

(assert (=> d!1148172 (= lt!1352780 e!2399514)))

(declare-fun c!674714 () Bool)

(assert (=> d!1148172 (= c!674714 ((_ is Nil!41227) Nil!41227))))

(assert (=> d!1148172 (= (++!10562 Nil!41227 suffix!1176) lt!1352780)))

(declare-fun b!3878272 () Bool)

(assert (=> b!3878272 (= e!2399514 suffix!1176)))

(declare-fun b!3878273 () Bool)

(assert (=> b!3878273 (= e!2399514 (Cons!41227 (h!46647 Nil!41227) (++!10562 (t!314994 Nil!41227) suffix!1176)))))

(declare-fun b!3878274 () Bool)

(declare-fun res!1571452 () Bool)

(assert (=> b!3878274 (=> (not res!1571452) (not e!2399513))))

(assert (=> b!3878274 (= res!1571452 (= (size!30974 lt!1352780) (+ (size!30974 Nil!41227) (size!30974 suffix!1176))))))

(assert (= (and d!1148172 c!674714) b!3878272))

(assert (= (and d!1148172 (not c!674714)) b!3878273))

(assert (= (and d!1148172 res!1571453) b!3878274))

(assert (= (and b!3878274 res!1571452) b!3878275))

(declare-fun m!4436769 () Bool)

(assert (=> d!1148172 m!4436769))

(assert (=> d!1148172 m!4436707))

(assert (=> d!1148172 m!4435787))

(declare-fun m!4436771 () Bool)

(assert (=> b!3878273 m!4436771))

(declare-fun m!4436773 () Bool)

(assert (=> b!3878274 m!4436773))

(assert (=> b!3878274 m!4435591))

(assert (=> b!3878274 m!4435615))

(assert (=> b!3877616 d!1148172))

(declare-fun d!1148174 () Bool)

(assert (=> d!1148174 (isPrefix!3501 Nil!41227 (++!10562 Nil!41227 suffix!1176))))

(declare-fun lt!1352781 () Unit!59255)

(assert (=> d!1148174 (= lt!1352781 (choose!22982 Nil!41227 suffix!1176))))

(assert (=> d!1148174 (= (lemmaConcatTwoListThenFirstIsPrefix!2364 Nil!41227 suffix!1176) lt!1352781)))

(declare-fun bs!583705 () Bool)

(assert (= bs!583705 d!1148174))

(assert (=> bs!583705 m!4435595))

(assert (=> bs!583705 m!4435595))

(assert (=> bs!583705 m!4435597))

(declare-fun m!4436775 () Bool)

(assert (=> bs!583705 m!4436775))

(assert (=> b!3877616 d!1148174))

(declare-fun d!1148176 () Bool)

(assert (=> d!1148176 (not (= (lexList!1759 thiss!20629 rules!2768 suffix!1176) (tuple2!40459 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1352782 () Unit!59255)

(assert (=> d!1148176 (= lt!1352782 (choose!22995 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352444)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1148176 (not (isEmpty!24478 rules!2768))))

(assert (=> d!1148176 (= (lemmaLexWithSmallerInputCannotProduceSameResults!62 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352444)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1352782)))

(declare-fun bs!583706 () Bool)

(assert (= bs!583706 d!1148176))

(assert (=> bs!583706 m!4435691))

(declare-fun m!4436777 () Bool)

(assert (=> bs!583706 m!4436777))

(assert (=> bs!583706 m!4435747))

(assert (=> b!3877594 d!1148176))

(declare-fun d!1148178 () Bool)

(assert (=> d!1148178 (= (inv!55380 (tag!7262 (rule!9298 (h!46648 suffixTokens!72)))) (= (mod (str.len (value!203090 (tag!7262 (rule!9298 (h!46648 suffixTokens!72))))) 2) 0))))

(assert (=> b!3877593 d!1148178))

(declare-fun d!1148180 () Bool)

(declare-fun res!1571454 () Bool)

(declare-fun e!2399515 () Bool)

(assert (=> d!1148180 (=> (not res!1571454) (not e!2399515))))

(assert (=> d!1148180 (= res!1571454 (semiInverseModEq!2745 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (toValue!8830 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72))))))))

(assert (=> d!1148180 (= (inv!55383 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) e!2399515)))

(declare-fun b!3878276 () Bool)

(assert (=> b!3878276 (= e!2399515 (equivClasses!2644 (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (toValue!8830 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72))))))))

(assert (= (and d!1148180 res!1571454) b!3878276))

(declare-fun m!4436779 () Bool)

(assert (=> d!1148180 m!4436779))

(declare-fun m!4436781 () Bool)

(assert (=> b!3878276 m!4436781))

(assert (=> b!3877593 d!1148180))

(declare-fun d!1148182 () Bool)

(declare-fun list!15332 (Conc!12613) List!41351)

(assert (=> d!1148182 (= (list!15330 (charsOf!4230 (_1!23364 (v!39117 lt!1352444)))) (list!15332 (c!674591 (charsOf!4230 (_1!23364 (v!39117 lt!1352444))))))))

(declare-fun bs!583707 () Bool)

(assert (= bs!583707 d!1148182))

(declare-fun m!4436783 () Bool)

(assert (=> bs!583707 m!4436783))

(assert (=> b!3877614 d!1148182))

(declare-fun d!1148184 () Bool)

(declare-fun lt!1352783 () List!41351)

(assert (=> d!1148184 (= (++!10562 lt!1352459 lt!1352783) lt!1352453)))

(declare-fun e!2399516 () List!41351)

(assert (=> d!1148184 (= lt!1352783 e!2399516)))

(declare-fun c!674715 () Bool)

(assert (=> d!1148184 (= c!674715 ((_ is Cons!41227) lt!1352459))))

(assert (=> d!1148184 (>= (size!30974 lt!1352453) (size!30974 lt!1352459))))

(assert (=> d!1148184 (= (getSuffix!1956 lt!1352453 lt!1352459) lt!1352783)))

(declare-fun b!3878277 () Bool)

(assert (=> b!3878277 (= e!2399516 (getSuffix!1956 (tail!5947 lt!1352453) (t!314994 lt!1352459)))))

(declare-fun b!3878278 () Bool)

(assert (=> b!3878278 (= e!2399516 lt!1352453)))

(assert (= (and d!1148184 c!674715) b!3878277))

(assert (= (and d!1148184 (not c!674715)) b!3878278))

(declare-fun m!4436785 () Bool)

(assert (=> d!1148184 m!4436785))

(assert (=> d!1148184 m!4435587))

(assert (=> d!1148184 m!4435647))

(assert (=> b!3878277 m!4436481))

(assert (=> b!3878277 m!4436481))

(declare-fun m!4436787 () Bool)

(assert (=> b!3878277 m!4436787))

(assert (=> b!3877614 d!1148184))

(declare-fun d!1148186 () Bool)

(declare-fun lt!1352786 () BalanceConc!24820)

(assert (=> d!1148186 (= (list!15330 lt!1352786) (originalCharacters!7002 (_1!23364 (v!39117 lt!1352444))))))

(assert (=> d!1148186 (= lt!1352786 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444))))) (value!203091 (_1!23364 (v!39117 lt!1352444)))))))

(assert (=> d!1148186 (= (charsOf!4230 (_1!23364 (v!39117 lt!1352444))) lt!1352786)))

(declare-fun b_lambda!113191 () Bool)

(assert (=> (not b_lambda!113191) (not d!1148186)))

(declare-fun t!315058 () Bool)

(declare-fun tb!225005 () Bool)

(assert (=> (and b!3877578 (= (toChars!8689 (transformation!6402 (h!46649 rules!2768))) (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315058) tb!225005))

(declare-fun b!3878279 () Bool)

(declare-fun e!2399517 () Bool)

(declare-fun tp!1175648 () Bool)

(assert (=> b!3878279 (= e!2399517 (and (inv!55386 (c!674591 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444))))) (value!203091 (_1!23364 (v!39117 lt!1352444)))))) tp!1175648))))

(declare-fun result!274068 () Bool)

(assert (=> tb!225005 (= result!274068 (and (inv!55388 (dynLambda!17712 (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444))))) (value!203091 (_1!23364 (v!39117 lt!1352444))))) e!2399517))))

(assert (= tb!225005 b!3878279))

(declare-fun m!4436789 () Bool)

(assert (=> b!3878279 m!4436789))

(declare-fun m!4436791 () Bool)

(assert (=> tb!225005 m!4436791))

(assert (=> d!1148186 t!315058))

(declare-fun b_and!290823 () Bool)

(assert (= b_and!290787 (and (=> t!315058 result!274068) b_and!290823)))

(declare-fun tb!225007 () Bool)

(declare-fun t!315060 () Bool)

(assert (=> (and b!3877619 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315060) tb!225007))

(declare-fun result!274070 () Bool)

(assert (= result!274070 result!274068))

(assert (=> d!1148186 t!315060))

(declare-fun b_and!290825 () Bool)

(assert (= b_and!290789 (and (=> t!315060 result!274070) b_and!290825)))

(declare-fun tb!225009 () Bool)

(declare-fun t!315062 () Bool)

(assert (=> (and b!3877626 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315062) tb!225009))

(declare-fun result!274072 () Bool)

(assert (= result!274072 result!274068))

(assert (=> d!1148186 t!315062))

(declare-fun b_and!290827 () Bool)

(assert (= b_and!290791 (and (=> t!315062 result!274072) b_and!290827)))

(declare-fun m!4436793 () Bool)

(assert (=> d!1148186 m!4436793))

(declare-fun m!4436795 () Bool)

(assert (=> d!1148186 m!4436795))

(assert (=> b!3877614 d!1148186))

(declare-fun d!1148188 () Bool)

(assert (=> d!1148188 (ruleValid!2354 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))))))

(declare-fun lt!1352789 () Unit!59255)

(declare-fun choose!23000 (LexerInterface!5991 Rule!12604 List!41353) Unit!59255)

(assert (=> d!1148188 (= lt!1352789 (choose!23000 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))) rules!2768))))

(assert (=> d!1148188 (contains!8296 rules!2768 (rule!9298 (_1!23364 (v!39117 lt!1352444))))))

(assert (=> d!1148188 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1434 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444))) rules!2768) lt!1352789)))

(declare-fun bs!583708 () Bool)

(assert (= bs!583708 d!1148188))

(assert (=> bs!583708 m!4435643))

(declare-fun m!4436797 () Bool)

(assert (=> bs!583708 m!4436797))

(declare-fun m!4436799 () Bool)

(assert (=> bs!583708 m!4436799))

(assert (=> b!3877614 d!1148188))

(declare-fun d!1148190 () Bool)

(declare-fun dynLambda!17714 (Int BalanceConc!24820) TokenValue!6632)

(assert (=> d!1148190 (= (apply!9645 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) (seqFromList!4673 lt!1352459)) (dynLambda!17714 (toValue!8830 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444))))) (seqFromList!4673 lt!1352459)))))

(declare-fun b_lambda!113193 () Bool)

(assert (=> (not b_lambda!113193) (not d!1148190)))

(declare-fun tb!225011 () Bool)

(declare-fun t!315064 () Bool)

(assert (=> (and b!3877578 (= (toValue!8830 (transformation!6402 (h!46649 rules!2768))) (toValue!8830 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315064) tb!225011))

(declare-fun result!274074 () Bool)

(assert (=> tb!225011 (= result!274074 (inv!21 (dynLambda!17714 (toValue!8830 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444))))) (seqFromList!4673 lt!1352459))))))

(declare-fun m!4436801 () Bool)

(assert (=> tb!225011 m!4436801))

(assert (=> d!1148190 t!315064))

(declare-fun b_and!290829 () Bool)

(assert (= b_and!290763 (and (=> t!315064 result!274074) b_and!290829)))

(declare-fun t!315066 () Bool)

(declare-fun tb!225013 () Bool)

(assert (=> (and b!3877619 (= (toValue!8830 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (toValue!8830 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315066) tb!225013))

(declare-fun result!274078 () Bool)

(assert (= result!274078 result!274074))

(assert (=> d!1148190 t!315066))

(declare-fun b_and!290831 () Bool)

(assert (= b_and!290767 (and (=> t!315066 result!274078) b_and!290831)))

(declare-fun tb!225015 () Bool)

(declare-fun t!315068 () Bool)

(assert (=> (and b!3877626 (= (toValue!8830 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (toValue!8830 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315068) tb!225015))

(declare-fun result!274080 () Bool)

(assert (= result!274080 result!274074))

(assert (=> d!1148190 t!315068))

(declare-fun b_and!290833 () Bool)

(assert (= b_and!290771 (and (=> t!315068 result!274080) b_and!290833)))

(assert (=> d!1148190 m!4435633))

(declare-fun m!4436803 () Bool)

(assert (=> d!1148190 m!4436803))

(assert (=> b!3877614 d!1148190))

(declare-fun d!1148192 () Bool)

(declare-fun lt!1352790 () Int)

(assert (=> d!1148192 (>= lt!1352790 0)))

(declare-fun e!2399521 () Int)

(assert (=> d!1148192 (= lt!1352790 e!2399521)))

(declare-fun c!674716 () Bool)

(assert (=> d!1148192 (= c!674716 ((_ is Nil!41227) lt!1352459))))

(assert (=> d!1148192 (= (size!30974 lt!1352459) lt!1352790)))

(declare-fun b!3878282 () Bool)

(assert (=> b!3878282 (= e!2399521 0)))

(declare-fun b!3878283 () Bool)

(assert (=> b!3878283 (= e!2399521 (+ 1 (size!30974 (t!314994 lt!1352459))))))

(assert (= (and d!1148192 c!674716) b!3878282))

(assert (= (and d!1148192 (not c!674716)) b!3878283))

(declare-fun m!4436805 () Bool)

(assert (=> b!3878283 m!4436805))

(assert (=> b!3877614 d!1148192))

(declare-fun d!1148194 () Bool)

(declare-fun fromListB!2155 (List!41351) BalanceConc!24820)

(assert (=> d!1148194 (= (seqFromList!4673 lt!1352459) (fromListB!2155 lt!1352459))))

(declare-fun bs!583709 () Bool)

(assert (= bs!583709 d!1148194))

(declare-fun m!4436807 () Bool)

(assert (=> bs!583709 m!4436807))

(assert (=> b!3877614 d!1148194))

(declare-fun d!1148196 () Bool)

(declare-fun res!1571459 () Bool)

(declare-fun e!2399524 () Bool)

(assert (=> d!1148196 (=> (not res!1571459) (not e!2399524))))

(declare-fun validRegex!5144 (Regex!11307) Bool)

(assert (=> d!1148196 (= res!1571459 (validRegex!5144 (regex!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444))))))))

(assert (=> d!1148196 (= (ruleValid!2354 thiss!20629 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) e!2399524)))

(declare-fun b!3878288 () Bool)

(declare-fun res!1571460 () Bool)

(assert (=> b!3878288 (=> (not res!1571460) (not e!2399524))))

(declare-fun nullable!3945 (Regex!11307) Bool)

(assert (=> b!3878288 (= res!1571460 (not (nullable!3945 (regex!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))))))

(declare-fun b!3878289 () Bool)

(assert (=> b!3878289 (= e!2399524 (not (= (tag!7262 (rule!9298 (_1!23364 (v!39117 lt!1352444)))) (String!46879 ""))))))

(assert (= (and d!1148196 res!1571459) b!3878288))

(assert (= (and b!3878288 res!1571460) b!3878289))

(declare-fun m!4436809 () Bool)

(assert (=> d!1148196 m!4436809))

(declare-fun m!4436811 () Bool)

(assert (=> b!3878288 m!4436811))

(assert (=> b!3877614 d!1148196))

(declare-fun b!3878293 () Bool)

(declare-fun e!2399526 () Bool)

(assert (=> b!3878293 (= e!2399526 (>= (size!30974 lt!1352483) (size!30974 lt!1352459)))))

(declare-fun b!3878290 () Bool)

(declare-fun e!2399525 () Bool)

(declare-fun e!2399527 () Bool)

(assert (=> b!3878290 (= e!2399525 e!2399527)))

(declare-fun res!1571461 () Bool)

(assert (=> b!3878290 (=> (not res!1571461) (not e!2399527))))

(assert (=> b!3878290 (= res!1571461 (not ((_ is Nil!41227) lt!1352483)))))

(declare-fun d!1148198 () Bool)

(assert (=> d!1148198 e!2399526))

(declare-fun res!1571462 () Bool)

(assert (=> d!1148198 (=> res!1571462 e!2399526)))

(declare-fun lt!1352791 () Bool)

(assert (=> d!1148198 (= res!1571462 (not lt!1352791))))

(assert (=> d!1148198 (= lt!1352791 e!2399525)))

(declare-fun res!1571463 () Bool)

(assert (=> d!1148198 (=> res!1571463 e!2399525)))

(assert (=> d!1148198 (= res!1571463 ((_ is Nil!41227) lt!1352459))))

(assert (=> d!1148198 (= (isPrefix!3501 lt!1352459 lt!1352483) lt!1352791)))

(declare-fun b!3878291 () Bool)

(declare-fun res!1571464 () Bool)

(assert (=> b!3878291 (=> (not res!1571464) (not e!2399527))))

(assert (=> b!3878291 (= res!1571464 (= (head!8230 lt!1352459) (head!8230 lt!1352483)))))

(declare-fun b!3878292 () Bool)

(assert (=> b!3878292 (= e!2399527 (isPrefix!3501 (tail!5947 lt!1352459) (tail!5947 lt!1352483)))))

(assert (= (and d!1148198 (not res!1571463)) b!3878290))

(assert (= (and b!3878290 res!1571461) b!3878291))

(assert (= (and b!3878291 res!1571464) b!3878292))

(assert (= (and d!1148198 (not res!1571462)) b!3878293))

(declare-fun m!4436813 () Bool)

(assert (=> b!3878293 m!4436813))

(assert (=> b!3878293 m!4435647))

(assert (=> b!3878291 m!4436669))

(declare-fun m!4436815 () Bool)

(assert (=> b!3878291 m!4436815))

(assert (=> b!3878292 m!4436673))

(declare-fun m!4436817 () Bool)

(assert (=> b!3878292 m!4436817))

(assert (=> b!3878292 m!4436673))

(assert (=> b!3878292 m!4436817))

(declare-fun m!4436819 () Bool)

(assert (=> b!3878292 m!4436819))

(assert (=> b!3877614 d!1148198))

(declare-fun d!1148200 () Bool)

(assert (=> d!1148200 (isPrefix!3501 lt!1352459 (++!10562 lt!1352459 (_2!23364 (v!39117 lt!1352444))))))

(declare-fun lt!1352792 () Unit!59255)

(assert (=> d!1148200 (= lt!1352792 (choose!22982 lt!1352459 (_2!23364 (v!39117 lt!1352444))))))

(assert (=> d!1148200 (= (lemmaConcatTwoListThenFirstIsPrefix!2364 lt!1352459 (_2!23364 (v!39117 lt!1352444))) lt!1352792)))

(declare-fun bs!583710 () Bool)

(assert (= bs!583710 d!1148200))

(assert (=> bs!583710 m!4435645))

(assert (=> bs!583710 m!4435645))

(declare-fun m!4436821 () Bool)

(assert (=> bs!583710 m!4436821))

(declare-fun m!4436823 () Bool)

(assert (=> bs!583710 m!4436823))

(assert (=> b!3877614 d!1148200))

(declare-fun d!1148202 () Bool)

(assert (=> d!1148202 (= (_2!23364 (v!39117 lt!1352444)) lt!1352445)))

(declare-fun lt!1352793 () Unit!59255)

(assert (=> d!1148202 (= lt!1352793 (choose!22991 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 lt!1352445 lt!1352453))))

(assert (=> d!1148202 (isPrefix!3501 lt!1352459 lt!1352453)))

(assert (=> d!1148202 (= (lemmaSamePrefixThenSameSuffix!1722 lt!1352459 (_2!23364 (v!39117 lt!1352444)) lt!1352459 lt!1352445 lt!1352453) lt!1352793)))

(declare-fun bs!583711 () Bool)

(assert (= bs!583711 d!1148202))

(declare-fun m!4436825 () Bool)

(assert (=> bs!583711 m!4436825))

(assert (=> bs!583711 m!4436487))

(assert (=> b!3877614 d!1148202))

(declare-fun b!3878294 () Bool)

(declare-fun e!2399530 () tuple2!40458)

(declare-fun lt!1352795 () Option!8820)

(declare-fun lt!1352794 () tuple2!40458)

(assert (=> b!3878294 (= e!2399530 (tuple2!40459 (Cons!41228 (_1!23364 (v!39117 lt!1352795)) (_1!23363 lt!1352794)) (_2!23363 lt!1352794)))))

(assert (=> b!3878294 (= lt!1352794 (lexList!1759 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352795))))))

(declare-fun b!3878296 () Bool)

(declare-fun e!2399529 () Bool)

(declare-fun lt!1352796 () tuple2!40458)

(assert (=> b!3878296 (= e!2399529 (= (_2!23363 lt!1352796) (_2!23364 (v!39117 lt!1352444))))))

(declare-fun b!3878297 () Bool)

(declare-fun e!2399528 () Bool)

(assert (=> b!3878297 (= e!2399529 e!2399528)))

(declare-fun res!1571465 () Bool)

(assert (=> b!3878297 (= res!1571465 (< (size!30974 (_2!23363 lt!1352796)) (size!30974 (_2!23364 (v!39117 lt!1352444)))))))

(assert (=> b!3878297 (=> (not res!1571465) (not e!2399528))))

(declare-fun b!3878298 () Bool)

(assert (=> b!3878298 (= e!2399530 (tuple2!40459 Nil!41228 (_2!23364 (v!39117 lt!1352444))))))

(declare-fun b!3878295 () Bool)

(assert (=> b!3878295 (= e!2399528 (not (isEmpty!24476 (_1!23363 lt!1352796))))))

(declare-fun d!1148204 () Bool)

(assert (=> d!1148204 e!2399529))

(declare-fun c!674717 () Bool)

(assert (=> d!1148204 (= c!674717 (> (size!30976 (_1!23363 lt!1352796)) 0))))

(assert (=> d!1148204 (= lt!1352796 e!2399530)))

(declare-fun c!674718 () Bool)

(assert (=> d!1148204 (= c!674718 ((_ is Some!8819) lt!1352795))))

(assert (=> d!1148204 (= lt!1352795 (maxPrefix!3295 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352444))))))

(assert (=> d!1148204 (= (lexList!1759 thiss!20629 rules!2768 (_2!23364 (v!39117 lt!1352444))) lt!1352796)))

(assert (= (and d!1148204 c!674718) b!3878294))

(assert (= (and d!1148204 (not c!674718)) b!3878298))

(assert (= (and d!1148204 c!674717) b!3878297))

(assert (= (and d!1148204 (not c!674717)) b!3878296))

(assert (= (and b!3878297 res!1571465) b!3878295))

(declare-fun m!4436827 () Bool)

(assert (=> b!3878294 m!4436827))

(declare-fun m!4436829 () Bool)

(assert (=> b!3878297 m!4436829))

(assert (=> b!3878297 m!4435617))

(declare-fun m!4436831 () Bool)

(assert (=> b!3878295 m!4436831))

(declare-fun m!4436833 () Bool)

(assert (=> d!1148204 m!4436833))

(declare-fun m!4436835 () Bool)

(assert (=> d!1148204 m!4436835))

(assert (=> b!3877614 d!1148204))

(declare-fun d!1148206 () Bool)

(assert (=> d!1148206 (= (size!30973 (_1!23364 (v!39117 lt!1352444))) (size!30974 (originalCharacters!7002 (_1!23364 (v!39117 lt!1352444)))))))

(declare-fun Unit!59267 () Unit!59255)

(assert (=> d!1148206 (= (lemmaCharactersSize!1063 (_1!23364 (v!39117 lt!1352444))) Unit!59267)))

(declare-fun bs!583712 () Bool)

(assert (= bs!583712 d!1148206))

(assert (=> bs!583712 m!4435663))

(assert (=> b!3877614 d!1148206))

(declare-fun b!3878302 () Bool)

(declare-fun lt!1352797 () List!41351)

(declare-fun e!2399531 () Bool)

(assert (=> b!3878302 (= e!2399531 (or (not (= (_2!23364 (v!39117 lt!1352444)) Nil!41227)) (= lt!1352797 lt!1352459)))))

(declare-fun d!1148208 () Bool)

(assert (=> d!1148208 e!2399531))

(declare-fun res!1571467 () Bool)

(assert (=> d!1148208 (=> (not res!1571467) (not e!2399531))))

(assert (=> d!1148208 (= res!1571467 (= (content!6160 lt!1352797) ((_ map or) (content!6160 lt!1352459) (content!6160 (_2!23364 (v!39117 lt!1352444))))))))

(declare-fun e!2399532 () List!41351)

(assert (=> d!1148208 (= lt!1352797 e!2399532)))

(declare-fun c!674719 () Bool)

(assert (=> d!1148208 (= c!674719 ((_ is Nil!41227) lt!1352459))))

(assert (=> d!1148208 (= (++!10562 lt!1352459 (_2!23364 (v!39117 lt!1352444))) lt!1352797)))

(declare-fun b!3878299 () Bool)

(assert (=> b!3878299 (= e!2399532 (_2!23364 (v!39117 lt!1352444)))))

(declare-fun b!3878300 () Bool)

(assert (=> b!3878300 (= e!2399532 (Cons!41227 (h!46647 lt!1352459) (++!10562 (t!314994 lt!1352459) (_2!23364 (v!39117 lt!1352444)))))))

(declare-fun b!3878301 () Bool)

(declare-fun res!1571466 () Bool)

(assert (=> b!3878301 (=> (not res!1571466) (not e!2399531))))

(assert (=> b!3878301 (= res!1571466 (= (size!30974 lt!1352797) (+ (size!30974 lt!1352459) (size!30974 (_2!23364 (v!39117 lt!1352444))))))))

(assert (= (and d!1148208 c!674719) b!3878299))

(assert (= (and d!1148208 (not c!674719)) b!3878300))

(assert (= (and d!1148208 res!1571467) b!3878301))

(assert (= (and b!3878301 res!1571466) b!3878302))

(declare-fun m!4436837 () Bool)

(assert (=> d!1148208 m!4436837))

(assert (=> d!1148208 m!4435773))

(declare-fun m!4436839 () Bool)

(assert (=> d!1148208 m!4436839))

(declare-fun m!4436841 () Bool)

(assert (=> b!3878300 m!4436841))

(declare-fun m!4436843 () Bool)

(assert (=> b!3878301 m!4436843))

(assert (=> b!3878301 m!4435647))

(assert (=> b!3878301 m!4435617))

(assert (=> b!3877614 d!1148208))

(declare-fun d!1148210 () Bool)

(assert (=> d!1148210 (= (isEmpty!24477 prefix!426) ((_ is Nil!41227) prefix!426))))

(assert (=> b!3877592 d!1148210))

(declare-fun b!3878307 () Bool)

(declare-fun e!2399535 () Bool)

(declare-fun tp!1175651 () Bool)

(assert (=> b!3878307 (= e!2399535 (and tp_is_empty!19585 tp!1175651))))

(assert (=> b!3877582 (= tp!1175564 e!2399535)))

(assert (= (and b!3877582 ((_ is Cons!41227) (t!314994 suffixResult!91))) b!3878307))

(declare-fun b!3878318 () Bool)

(declare-fun b_free!104941 () Bool)

(declare-fun b_next!105645 () Bool)

(assert (=> b!3878318 (= b_free!104941 (not b_next!105645))))

(declare-fun t!315070 () Bool)

(declare-fun tb!225017 () Bool)

(assert (=> (and b!3878318 (= (toValue!8830 (transformation!6402 (h!46649 (t!314996 rules!2768)))) (toValue!8830 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315070) tb!225017))

(declare-fun result!274086 () Bool)

(assert (= result!274086 result!274074))

(assert (=> d!1148190 t!315070))

(declare-fun b_and!290835 () Bool)

(declare-fun tp!1175662 () Bool)

(assert (=> b!3878318 (= tp!1175662 (and (=> t!315070 result!274086) b_and!290835))))

(declare-fun b_free!104943 () Bool)

(declare-fun b_next!105647 () Bool)

(assert (=> b!3878318 (= b_free!104943 (not b_next!105647))))

(declare-fun t!315072 () Bool)

(declare-fun tb!225019 () Bool)

(assert (=> (and b!3878318 (= (toChars!8689 (transformation!6402 (h!46649 (t!314996 rules!2768)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80))))) t!315072) tb!225019))

(declare-fun result!274088 () Bool)

(assert (= result!274088 result!274002))

(assert (=> b!3877909 t!315072))

(declare-fun tb!225021 () Bool)

(declare-fun t!315074 () Bool)

(assert (=> (and b!3878318 (= (toChars!8689 (transformation!6402 (h!46649 (t!314996 rules!2768)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72))))) t!315074) tb!225021))

(declare-fun result!274090 () Bool)

(assert (= result!274090 result!274010))

(assert (=> b!3877941 t!315074))

(declare-fun tb!225023 () Bool)

(declare-fun t!315076 () Bool)

(assert (=> (and b!3878318 (= (toChars!8689 (transformation!6402 (h!46649 (t!314996 rules!2768)))) (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315076) tb!225023))

(declare-fun result!274092 () Bool)

(assert (= result!274092 result!274068))

(assert (=> d!1148186 t!315076))

(declare-fun b_and!290837 () Bool)

(declare-fun tp!1175660 () Bool)

(assert (=> b!3878318 (= tp!1175660 (and (=> t!315072 result!274088) (=> t!315074 result!274090) (=> t!315076 result!274092) b_and!290837))))

(declare-fun e!2399546 () Bool)

(assert (=> b!3878318 (= e!2399546 (and tp!1175662 tp!1175660))))

(declare-fun b!3878317 () Bool)

(declare-fun tp!1175661 () Bool)

(declare-fun e!2399545 () Bool)

(assert (=> b!3878317 (= e!2399545 (and tp!1175661 (inv!55380 (tag!7262 (h!46649 (t!314996 rules!2768)))) (inv!55383 (transformation!6402 (h!46649 (t!314996 rules!2768)))) e!2399546))))

(declare-fun b!3878316 () Bool)

(declare-fun e!2399544 () Bool)

(declare-fun tp!1175663 () Bool)

(assert (=> b!3878316 (= e!2399544 (and e!2399545 tp!1175663))))

(assert (=> b!3877601 (= tp!1175570 e!2399544)))

(assert (= b!3878317 b!3878318))

(assert (= b!3878316 b!3878317))

(assert (= (and b!3877601 ((_ is Cons!41229) (t!314996 rules!2768))) b!3878316))

(declare-fun m!4436845 () Bool)

(assert (=> b!3878317 m!4436845))

(declare-fun m!4436847 () Bool)

(assert (=> b!3878317 m!4436847))

(declare-fun b!3878319 () Bool)

(declare-fun e!2399548 () Bool)

(declare-fun tp!1175664 () Bool)

(assert (=> b!3878319 (= e!2399548 (and tp_is_empty!19585 tp!1175664))))

(assert (=> b!3877600 (= tp!1175572 e!2399548)))

(assert (= (and b!3877600 ((_ is Cons!41227) (originalCharacters!7002 (h!46648 suffixTokens!72)))) b!3878319))

(declare-fun b!3878320 () Bool)

(declare-fun e!2399549 () Bool)

(declare-fun tp!1175665 () Bool)

(assert (=> b!3878320 (= e!2399549 (and tp_is_empty!19585 tp!1175665))))

(assert (=> b!3877579 (= tp!1175566 e!2399549)))

(assert (= (and b!3877579 ((_ is Cons!41227) (t!314994 prefix!426))) b!3878320))

(declare-fun b!3878334 () Bool)

(declare-fun b_free!104945 () Bool)

(declare-fun b_next!105649 () Bool)

(assert (=> b!3878334 (= b_free!104945 (not b_next!105649))))

(declare-fun t!315078 () Bool)

(declare-fun tb!225025 () Bool)

(assert (=> (and b!3878334 (= (toValue!8830 (transformation!6402 (rule!9298 (h!46648 (t!314995 prefixTokens!80))))) (toValue!8830 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315078) tb!225025))

(declare-fun result!274096 () Bool)

(assert (= result!274096 result!274074))

(assert (=> d!1148190 t!315078))

(declare-fun tp!1175680 () Bool)

(declare-fun b_and!290839 () Bool)

(assert (=> b!3878334 (= tp!1175680 (and (=> t!315078 result!274096) b_and!290839))))

(declare-fun b_free!104947 () Bool)

(declare-fun b_next!105651 () Bool)

(assert (=> b!3878334 (= b_free!104947 (not b_next!105651))))

(declare-fun t!315080 () Bool)

(declare-fun tb!225027 () Bool)

(assert (=> (and b!3878334 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 prefixTokens!80))))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80))))) t!315080) tb!225027))

(declare-fun result!274098 () Bool)

(assert (= result!274098 result!274002))

(assert (=> b!3877909 t!315080))

(declare-fun tb!225029 () Bool)

(declare-fun t!315082 () Bool)

(assert (=> (and b!3878334 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 prefixTokens!80))))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72))))) t!315082) tb!225029))

(declare-fun result!274100 () Bool)

(assert (= result!274100 result!274010))

(assert (=> b!3877941 t!315082))

(declare-fun t!315084 () Bool)

(declare-fun tb!225031 () Bool)

(assert (=> (and b!3878334 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 prefixTokens!80))))) (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315084) tb!225031))

(declare-fun result!274102 () Bool)

(assert (= result!274102 result!274068))

(assert (=> d!1148186 t!315084))

(declare-fun b_and!290841 () Bool)

(declare-fun tp!1175676 () Bool)

(assert (=> b!3878334 (= tp!1175676 (and (=> t!315080 result!274098) (=> t!315082 result!274100) (=> t!315084 result!274102) b_and!290841))))

(declare-fun tp!1175677 () Bool)

(declare-fun e!2399564 () Bool)

(declare-fun b!3878333 () Bool)

(declare-fun e!2399567 () Bool)

(assert (=> b!3878333 (= e!2399564 (and tp!1175677 (inv!55380 (tag!7262 (rule!9298 (h!46648 (t!314995 prefixTokens!80))))) (inv!55383 (transformation!6402 (rule!9298 (h!46648 (t!314995 prefixTokens!80))))) e!2399567))))

(declare-fun tp!1175678 () Bool)

(declare-fun e!2399566 () Bool)

(declare-fun b!3878331 () Bool)

(declare-fun e!2399563 () Bool)

(assert (=> b!3878331 (= e!2399566 (and (inv!55384 (h!46648 (t!314995 prefixTokens!80))) e!2399563 tp!1175678))))

(declare-fun tp!1175679 () Bool)

(declare-fun b!3878332 () Bool)

(assert (=> b!3878332 (= e!2399563 (and (inv!21 (value!203091 (h!46648 (t!314995 prefixTokens!80)))) e!2399564 tp!1175679))))

(assert (=> b!3878334 (= e!2399567 (and tp!1175680 tp!1175676))))

(assert (=> b!3877620 (= tp!1175562 e!2399566)))

(assert (= b!3878333 b!3878334))

(assert (= b!3878332 b!3878333))

(assert (= b!3878331 b!3878332))

(assert (= (and b!3877620 ((_ is Cons!41228) (t!314995 prefixTokens!80))) b!3878331))

(declare-fun m!4436849 () Bool)

(assert (=> b!3878333 m!4436849))

(declare-fun m!4436851 () Bool)

(assert (=> b!3878333 m!4436851))

(declare-fun m!4436853 () Bool)

(assert (=> b!3878331 m!4436853))

(declare-fun m!4436855 () Bool)

(assert (=> b!3878332 m!4436855))

(declare-fun b!3878345 () Bool)

(declare-fun e!2399570 () Bool)

(assert (=> b!3878345 (= e!2399570 tp_is_empty!19585)))

(assert (=> b!3877609 (= tp!1175573 e!2399570)))

(declare-fun b!3878348 () Bool)

(declare-fun tp!1175691 () Bool)

(declare-fun tp!1175695 () Bool)

(assert (=> b!3878348 (= e!2399570 (and tp!1175691 tp!1175695))))

(declare-fun b!3878346 () Bool)

(declare-fun tp!1175694 () Bool)

(declare-fun tp!1175692 () Bool)

(assert (=> b!3878346 (= e!2399570 (and tp!1175694 tp!1175692))))

(declare-fun b!3878347 () Bool)

(declare-fun tp!1175693 () Bool)

(assert (=> b!3878347 (= e!2399570 tp!1175693)))

(assert (= (and b!3877609 ((_ is ElementMatch!11307) (regex!6402 (h!46649 rules!2768)))) b!3878345))

(assert (= (and b!3877609 ((_ is Concat!17940) (regex!6402 (h!46649 rules!2768)))) b!3878346))

(assert (= (and b!3877609 ((_ is Star!11307) (regex!6402 (h!46649 rules!2768)))) b!3878347))

(assert (= (and b!3877609 ((_ is Union!11307) (regex!6402 (h!46649 rules!2768)))) b!3878348))

(declare-fun b!3878349 () Bool)

(declare-fun e!2399571 () Bool)

(declare-fun tp!1175696 () Bool)

(assert (=> b!3878349 (= e!2399571 (and tp_is_empty!19585 tp!1175696))))

(assert (=> b!3877607 (= tp!1175574 e!2399571)))

(assert (= (and b!3877607 ((_ is Cons!41227) (originalCharacters!7002 (h!46648 prefixTokens!80)))) b!3878349))

(declare-fun b!3878350 () Bool)

(declare-fun e!2399572 () Bool)

(assert (=> b!3878350 (= e!2399572 tp_is_empty!19585)))

(assert (=> b!3877595 (= tp!1175571 e!2399572)))

(declare-fun b!3878353 () Bool)

(declare-fun tp!1175697 () Bool)

(declare-fun tp!1175701 () Bool)

(assert (=> b!3878353 (= e!2399572 (and tp!1175697 tp!1175701))))

(declare-fun b!3878351 () Bool)

(declare-fun tp!1175700 () Bool)

(declare-fun tp!1175698 () Bool)

(assert (=> b!3878351 (= e!2399572 (and tp!1175700 tp!1175698))))

(declare-fun b!3878352 () Bool)

(declare-fun tp!1175699 () Bool)

(assert (=> b!3878352 (= e!2399572 tp!1175699)))

(assert (= (and b!3877595 ((_ is ElementMatch!11307) (regex!6402 (rule!9298 (h!46648 prefixTokens!80))))) b!3878350))

(assert (= (and b!3877595 ((_ is Concat!17940) (regex!6402 (rule!9298 (h!46648 prefixTokens!80))))) b!3878351))

(assert (= (and b!3877595 ((_ is Star!11307) (regex!6402 (rule!9298 (h!46648 prefixTokens!80))))) b!3878352))

(assert (= (and b!3877595 ((_ is Union!11307) (regex!6402 (rule!9298 (h!46648 prefixTokens!80))))) b!3878353))

(declare-fun b!3878357 () Bool)

(declare-fun b_free!104949 () Bool)

(declare-fun b_next!105653 () Bool)

(assert (=> b!3878357 (= b_free!104949 (not b_next!105653))))

(declare-fun tb!225033 () Bool)

(declare-fun t!315086 () Bool)

(assert (=> (and b!3878357 (= (toValue!8830 (transformation!6402 (rule!9298 (h!46648 (t!314995 suffixTokens!72))))) (toValue!8830 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315086) tb!225033))

(declare-fun result!274106 () Bool)

(assert (= result!274106 result!274074))

(assert (=> d!1148190 t!315086))

(declare-fun b_and!290843 () Bool)

(declare-fun tp!1175706 () Bool)

(assert (=> b!3878357 (= tp!1175706 (and (=> t!315086 result!274106) b_and!290843))))

(declare-fun b_free!104951 () Bool)

(declare-fun b_next!105655 () Bool)

(assert (=> b!3878357 (= b_free!104951 (not b_next!105655))))

(declare-fun tb!225035 () Bool)

(declare-fun t!315088 () Bool)

(assert (=> (and b!3878357 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 suffixTokens!72))))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80))))) t!315088) tb!225035))

(declare-fun result!274108 () Bool)

(assert (= result!274108 result!274002))

(assert (=> b!3877909 t!315088))

(declare-fun t!315090 () Bool)

(declare-fun tb!225037 () Bool)

(assert (=> (and b!3878357 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 suffixTokens!72))))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72))))) t!315090) tb!225037))

(declare-fun result!274110 () Bool)

(assert (= result!274110 result!274010))

(assert (=> b!3877941 t!315090))

(declare-fun tb!225039 () Bool)

(declare-fun t!315092 () Bool)

(assert (=> (and b!3878357 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 suffixTokens!72))))) (toChars!8689 (transformation!6402 (rule!9298 (_1!23364 (v!39117 lt!1352444)))))) t!315092) tb!225039))

(declare-fun result!274112 () Bool)

(assert (= result!274112 result!274068))

(assert (=> d!1148186 t!315092))

(declare-fun tp!1175702 () Bool)

(declare-fun b_and!290845 () Bool)

(assert (=> b!3878357 (= tp!1175702 (and (=> t!315088 result!274108) (=> t!315090 result!274110) (=> t!315092 result!274112) b_and!290845))))

(declare-fun b!3878356 () Bool)

(declare-fun e!2399578 () Bool)

(declare-fun e!2399575 () Bool)

(declare-fun tp!1175703 () Bool)

(assert (=> b!3878356 (= e!2399575 (and tp!1175703 (inv!55380 (tag!7262 (rule!9298 (h!46648 (t!314995 suffixTokens!72))))) (inv!55383 (transformation!6402 (rule!9298 (h!46648 (t!314995 suffixTokens!72))))) e!2399578))))

(declare-fun e!2399577 () Bool)

(declare-fun e!2399574 () Bool)

(declare-fun tp!1175704 () Bool)

(declare-fun b!3878354 () Bool)

(assert (=> b!3878354 (= e!2399577 (and (inv!55384 (h!46648 (t!314995 suffixTokens!72))) e!2399574 tp!1175704))))

(declare-fun b!3878355 () Bool)

(declare-fun tp!1175705 () Bool)

(assert (=> b!3878355 (= e!2399574 (and (inv!21 (value!203091 (h!46648 (t!314995 suffixTokens!72)))) e!2399575 tp!1175705))))

(assert (=> b!3878357 (= e!2399578 (and tp!1175706 tp!1175702))))

(assert (=> b!3877627 (= tp!1175560 e!2399577)))

(assert (= b!3878356 b!3878357))

(assert (= b!3878355 b!3878356))

(assert (= b!3878354 b!3878355))

(assert (= (and b!3877627 ((_ is Cons!41228) (t!314995 suffixTokens!72))) b!3878354))

(declare-fun m!4436857 () Bool)

(assert (=> b!3878356 m!4436857))

(declare-fun m!4436859 () Bool)

(assert (=> b!3878356 m!4436859))

(declare-fun m!4436861 () Bool)

(assert (=> b!3878354 m!4436861))

(declare-fun m!4436863 () Bool)

(assert (=> b!3878355 m!4436863))

(declare-fun b!3878358 () Bool)

(declare-fun e!2399579 () Bool)

(declare-fun tp!1175707 () Bool)

(assert (=> b!3878358 (= e!2399579 (and tp_is_empty!19585 tp!1175707))))

(assert (=> b!3877605 (= tp!1175565 e!2399579)))

(assert (= (and b!3877605 ((_ is Cons!41227) (t!314994 suffix!1176))) b!3878358))

(declare-fun b!3878359 () Bool)

(declare-fun e!2399580 () Bool)

(assert (=> b!3878359 (= e!2399580 tp_is_empty!19585)))

(assert (=> b!3877593 (= tp!1175567 e!2399580)))

(declare-fun b!3878362 () Bool)

(declare-fun tp!1175708 () Bool)

(declare-fun tp!1175712 () Bool)

(assert (=> b!3878362 (= e!2399580 (and tp!1175708 tp!1175712))))

(declare-fun b!3878360 () Bool)

(declare-fun tp!1175711 () Bool)

(declare-fun tp!1175709 () Bool)

(assert (=> b!3878360 (= e!2399580 (and tp!1175711 tp!1175709))))

(declare-fun b!3878361 () Bool)

(declare-fun tp!1175710 () Bool)

(assert (=> b!3878361 (= e!2399580 tp!1175710)))

(assert (= (and b!3877593 ((_ is ElementMatch!11307) (regex!6402 (rule!9298 (h!46648 suffixTokens!72))))) b!3878359))

(assert (= (and b!3877593 ((_ is Concat!17940) (regex!6402 (rule!9298 (h!46648 suffixTokens!72))))) b!3878360))

(assert (= (and b!3877593 ((_ is Star!11307) (regex!6402 (rule!9298 (h!46648 suffixTokens!72))))) b!3878361))

(assert (= (and b!3877593 ((_ is Union!11307) (regex!6402 (rule!9298 (h!46648 suffixTokens!72))))) b!3878362))

(declare-fun b_lambda!113195 () Bool)

(assert (= b_lambda!113179 (or (and b!3877619 b_free!104923 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))))) (and b!3877578 b_free!104919 (= (toChars!8689 (transformation!6402 (h!46649 rules!2768))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))))) (and b!3878357 b_free!104951 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 suffixTokens!72))))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))))) (and b!3878318 b_free!104943 (= (toChars!8689 (transformation!6402 (h!46649 (t!314996 rules!2768)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))))) (and b!3878334 b_free!104947 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 prefixTokens!80))))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))))) (and b!3877626 b_free!104927) b_lambda!113195)))

(declare-fun b_lambda!113197 () Bool)

(assert (= b_lambda!113177 (or (and b!3877619 b_free!104923) (and b!3878357 b_free!104951 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 suffixTokens!72))))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))))) (and b!3877626 b_free!104927 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 suffixTokens!72)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))))) (and b!3878318 b_free!104943 (= (toChars!8689 (transformation!6402 (h!46649 (t!314996 rules!2768)))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))))) (and b!3877578 b_free!104919 (= (toChars!8689 (transformation!6402 (h!46649 rules!2768))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))))) (and b!3878334 b_free!104947 (= (toChars!8689 (transformation!6402 (rule!9298 (h!46648 (t!314995 prefixTokens!80))))) (toChars!8689 (transformation!6402 (rule!9298 (h!46648 prefixTokens!80)))))) b_lambda!113197)))

(check-sat (not d!1147934) (not d!1148206) (not d!1148202) (not b!3877943) (not b!3878352) (not d!1148060) (not d!1147922) (not b!3878091) (not b!3878222) (not b!3878061) (not b!3878361) (not b!3878177) (not d!1147930) (not d!1147924) (not b!3878270) (not b!3878295) (not b!3877899) (not b!3878045) (not b!3877923) (not b!3878223) (not d!1148072) (not b!3877647) (not b!3878354) (not d!1148066) (not d!1148204) (not b!3878276) (not b!3878038) (not b!3878307) (not d!1148150) (not b!3877929) (not b!3877938) (not b_next!105623) (not d!1148182) (not d!1148152) (not b!3878255) (not b!3877936) (not b!3877662) (not bm!282830) (not b!3877896) (not d!1147920) (not d!1148166) (not b!3878283) (not b!3877924) (not b!3878113) (not b!3877648) (not d!1148208) (not b!3878102) (not b!3878331) (not b!3878032) (not b!3877650) (not b!3878262) (not d!1147940) (not b!3877900) (not b!3878274) (not b!3878035) (not d!1148144) (not b!3878179) (not b!3877853) (not b!3878067) (not b!3878332) (not b!3877856) (not b_next!105629) (not d!1148176) (not b!3878356) (not b!3878316) (not b!3878355) (not b!3878074) (not b!3878044) (not d!1148064) (not b!3878362) (not d!1147868) (not b!3878260) (not b!3878033) (not d!1148036) (not b!3878351) (not b!3878181) (not b!3878273) (not d!1147970) (not b!3877852) (not b_next!105625) (not d!1148070) (not b!3877941) (not b!3878047) (not b!3878279) (not b!3878346) (not b!3877636) (not b!3878348) (not b!3877942) (not d!1148154) (not b_next!105631) (not d!1148172) (not d!1147954) (not b!3878353) (not b!3878301) (not d!1148196) (not b!3878039) b_and!290827 (not b_next!105647) (not b!3877858) (not b!3878291) (not d!1147956) (not b!3878109) (not b!3877901) b_and!290841 (not d!1148184) (not b!3878090) (not d!1147936) b_and!290823 (not b!3878037) (not d!1148194) (not d!1148052) (not d!1148056) (not b!3878175) (not b!3878317) (not b!3878333) (not d!1148180) (not d!1148174) (not tb!224957) (not d!1147866) b_and!290831 (not b!3877927) (not b!3877910) (not b_next!105627) (not d!1148078) (not tb!224951) (not b!3877937) (not b_next!105621) (not d!1148044) (not b!3878288) (not b!3877882) (not b!3878358) (not b!3878258) (not b!3878097) (not d!1148200) b_and!290833 (not b!3877940) (not b!3877831) (not b!3878271) (not b!3877930) b_and!290837 b_and!290839 (not b_lambda!113193) (not b!3878216) (not b!3878036) b_and!290843 (not b!3877857) (not b!3878347) (not d!1148048) (not tb!225011) (not b!3878360) (not b!3878292) (not b!3877903) (not b!3878266) (not b!3878267) (not b!3877665) (not d!1148188) (not b!3878254) (not b!3878263) (not b!3878180) (not b!3878269) (not b!3877933) (not d!1147858) b_and!290835 (not d!1148074) (not d!1147958) (not tb!225005) (not b!3877917) (not b!3877916) (not b!3878176) (not b!3878082) b_and!290829 (not b!3877939) b_and!290845 (not b_lambda!113195) (not b!3877860) (not b!3877932) (not b!3878214) (not d!1147938) (not b_lambda!113191) (not b!3878320) (not b!3877935) (not b_next!105651) (not d!1148086) (not b!3877855) (not b!3877870) (not d!1148136) (not b!3878100) (not d!1148132) (not b!3878112) (not d!1148038) (not b!3877871) (not d!1148030) (not b!3878031) b_and!290825 (not b!3878075) (not b!3878300) (not b_lambda!113197) (not b_next!105655) (not b!3878319) (not b_next!105649) (not d!1147952) (not b_next!105653) (not b!3878277) (not b!3877666) (not b!3877895) (not b!3877915) (not d!1148076) (not b!3877960) (not b!3877909) (not b!3878063) (not b!3878349) (not b!3877919) tp_is_empty!19585 (not b!3877958) (not d!1148158) (not b!3877922) (not b!3878104) (not b!3877661) (not b!3878297) (not b!3878105) (not d!1148034) (not d!1147862) (not b!3878210) (not b!3878041) (not b!3877884) (not b!3877883) (not b!3878294) (not b!3878265) (not b_next!105645) (not b!3878293) (not b!3878042) (not b!3878101) (not b!3878083) (not b!3878062) (not b!3877830) (not d!1147870) (not b!3877859) (not bm!282829) (not b!3878108) (not d!1148186) (not b!3878261))
(check-sat (not b_next!105623) (not b_next!105629) (not b_next!105625) (not b_next!105631) b_and!290841 b_and!290823 b_and!290833 b_and!290843 b_and!290835 (not b_next!105651) b_and!290825 (not b_next!105645) (not b_next!105647) b_and!290827 b_and!290831 (not b_next!105621) (not b_next!105627) b_and!290837 b_and!290839 b_and!290829 b_and!290845 (not b_next!105655) (not b_next!105649) (not b_next!105653))
