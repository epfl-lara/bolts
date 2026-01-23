; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363976 () Bool)

(assert start!363976)

(declare-fun b!3876637 () Bool)

(declare-fun b_free!104845 () Bool)

(declare-fun b_next!105549 () Bool)

(assert (=> b!3876637 (= b_free!104845 (not b_next!105549))))

(declare-fun tp!1175266 () Bool)

(declare-fun b_and!290691 () Bool)

(assert (=> b!3876637 (= tp!1175266 b_and!290691)))

(declare-fun b_free!104847 () Bool)

(declare-fun b_next!105551 () Bool)

(assert (=> b!3876637 (= b_free!104847 (not b_next!105551))))

(declare-fun tp!1175261 () Bool)

(declare-fun b_and!290693 () Bool)

(assert (=> b!3876637 (= tp!1175261 b_and!290693)))

(declare-fun b!3876636 () Bool)

(declare-fun b_free!104849 () Bool)

(declare-fun b_next!105553 () Bool)

(assert (=> b!3876636 (= b_free!104849 (not b_next!105553))))

(declare-fun tp!1175252 () Bool)

(declare-fun b_and!290695 () Bool)

(assert (=> b!3876636 (= tp!1175252 b_and!290695)))

(declare-fun b_free!104851 () Bool)

(declare-fun b_next!105555 () Bool)

(assert (=> b!3876636 (= b_free!104851 (not b_next!105555))))

(declare-fun tp!1175265 () Bool)

(declare-fun b_and!290697 () Bool)

(assert (=> b!3876636 (= tp!1175265 b_and!290697)))

(declare-fun b!3876627 () Bool)

(declare-fun b_free!104853 () Bool)

(declare-fun b_next!105557 () Bool)

(assert (=> b!3876627 (= b_free!104853 (not b_next!105557))))

(declare-fun tp!1175267 () Bool)

(declare-fun b_and!290699 () Bool)

(assert (=> b!3876627 (= tp!1175267 b_and!290699)))

(declare-fun b_free!104855 () Bool)

(declare-fun b_next!105559 () Bool)

(assert (=> b!3876627 (= b_free!104855 (not b_next!105559))))

(declare-fun tp!1175254 () Bool)

(declare-fun b_and!290701 () Bool)

(assert (=> b!3876627 (= tp!1175254 b_and!290701)))

(declare-fun b!3876597 () Bool)

(declare-fun res!1570546 () Bool)

(declare-fun e!2398339 () Bool)

(assert (=> b!3876597 (=> res!1570546 e!2398339)))

(declare-datatypes ((C!22788 0))(
  ( (C!22789 (val!13488 Int)) )
))
(declare-datatypes ((List!41326 0))(
  ( (Nil!41202) (Cons!41202 (h!46622 C!22788) (t!314969 List!41326)) )
))
(declare-fun suffix!1176 () List!41326)

(declare-fun isEmpty!24458 (List!41326) Bool)

(assert (=> b!3876597 (= res!1570546 (isEmpty!24458 suffix!1176))))

(declare-fun b!3876598 () Bool)

(declare-datatypes ((Unit!59182 0))(
  ( (Unit!59183) )
))
(declare-fun e!2398322 () Unit!59182)

(declare-fun Unit!59184 () Unit!59182)

(assert (=> b!3876598 (= e!2398322 Unit!59184)))

(declare-datatypes ((IArray!25219 0))(
  ( (IArray!25220 (innerList!12667 List!41326)) )
))
(declare-datatypes ((Conc!12607 0))(
  ( (Node!12607 (left!31627 Conc!12607) (right!31957 Conc!12607) (csize!25444 Int) (cheight!12818 Int)) (Leaf!19512 (xs!15913 IArray!25219) (csize!25445 Int)) (Empty!12607) )
))
(declare-datatypes ((BalanceConc!24808 0))(
  ( (BalanceConc!24809 (c!674482 Conc!12607)) )
))
(declare-datatypes ((List!41327 0))(
  ( (Nil!41203) (Cons!41203 (h!46623 (_ BitVec 16)) (t!314970 List!41327)) )
))
(declare-datatypes ((TokenValue!6626 0))(
  ( (FloatLiteralValue!13252 (text!46827 List!41327)) (TokenValueExt!6625 (__x!25469 Int)) (Broken!33130 (value!202894 List!41327)) (Object!6749) (End!6626) (Def!6626) (Underscore!6626) (Match!6626) (Else!6626) (Error!6626) (Case!6626) (If!6626) (Extends!6626) (Abstract!6626) (Class!6626) (Val!6626) (DelimiterValue!13252 (del!6686 List!41327)) (KeywordValue!6632 (value!202895 List!41327)) (CommentValue!13252 (value!202896 List!41327)) (WhitespaceValue!13252 (value!202897 List!41327)) (IndentationValue!6626 (value!202898 List!41327)) (String!46847) (Int32!6626) (Broken!33131 (value!202899 List!41327)) (Boolean!6627) (Unit!59185) (OperatorValue!6629 (op!6686 List!41327)) (IdentifierValue!13252 (value!202900 List!41327)) (IdentifierValue!13253 (value!202901 List!41327)) (WhitespaceValue!13253 (value!202902 List!41327)) (True!13252) (False!13252) (Broken!33132 (value!202903 List!41327)) (Broken!33133 (value!202904 List!41327)) (True!13253) (RightBrace!6626) (RightBracket!6626) (Colon!6626) (Null!6626) (Comma!6626) (LeftBracket!6626) (False!13253) (LeftBrace!6626) (ImaginaryLiteralValue!6626 (text!46828 List!41327)) (StringLiteralValue!19878 (value!202905 List!41327)) (EOFValue!6626 (value!202906 List!41327)) (IdentValue!6626 (value!202907 List!41327)) (DelimiterValue!13253 (value!202908 List!41327)) (DedentValue!6626 (value!202909 List!41327)) (NewLineValue!6626 (value!202910 List!41327)) (IntegerValue!19878 (value!202911 (_ BitVec 32)) (text!46829 List!41327)) (IntegerValue!19879 (value!202912 Int) (text!46830 List!41327)) (Times!6626) (Or!6626) (Equal!6626) (Minus!6626) (Broken!33134 (value!202913 List!41327)) (And!6626) (Div!6626) (LessEqual!6626) (Mod!6626) (Concat!17927) (Not!6626) (Plus!6626) (SpaceValue!6626 (value!202914 List!41327)) (IntegerValue!19880 (value!202915 Int) (text!46831 List!41327)) (StringLiteralValue!19879 (text!46832 List!41327)) (FloatLiteralValue!13253 (text!46833 List!41327)) (BytesLiteralValue!6626 (value!202916 List!41327)) (CommentValue!13253 (value!202917 List!41327)) (StringLiteralValue!19880 (value!202918 List!41327)) (ErrorTokenValue!6626 (msg!6687 List!41327)) )
))
(declare-datatypes ((Regex!11301 0))(
  ( (ElementMatch!11301 (c!674483 C!22788)) (Concat!17928 (regOne!23114 Regex!11301) (regTwo!23114 Regex!11301)) (EmptyExpr!11301) (Star!11301 (reg!11630 Regex!11301)) (EmptyLang!11301) (Union!11301 (regOne!23115 Regex!11301) (regTwo!23115 Regex!11301)) )
))
(declare-datatypes ((String!46848 0))(
  ( (String!46849 (value!202919 String)) )
))
(declare-datatypes ((TokenValueInjection!12680 0))(
  ( (TokenValueInjection!12681 (toValue!8824 Int) (toChars!8683 Int)) )
))
(declare-datatypes ((Rule!12592 0))(
  ( (Rule!12593 (regex!6396 Regex!11301) (tag!7256 String!46848) (isSeparator!6396 Bool) (transformation!6396 TokenValueInjection!12680)) )
))
(declare-datatypes ((Token!11930 0))(
  ( (Token!11931 (value!202920 TokenValue!6626) (rule!9292 Rule!12592) (size!30961 Int) (originalCharacters!6996 List!41326)) )
))
(declare-datatypes ((tuple2!40434 0))(
  ( (tuple2!40435 (_1!23351 Token!11930) (_2!23351 List!41326)) )
))
(declare-fun lt!1351487 () tuple2!40434)

(declare-datatypes ((List!41328 0))(
  ( (Nil!41204) (Cons!41204 (h!46624 Token!11930) (t!314971 List!41328)) )
))
(declare-fun lt!1351494 () List!41328)

(declare-fun suffixResult!91 () List!41326)

(declare-datatypes ((LexerInterface!5985 0))(
  ( (LexerInterfaceExt!5982 (__x!25470 Int)) (Lexer!5983) )
))
(declare-fun thiss!20629 () LexerInterface!5985)

(declare-datatypes ((List!41329 0))(
  ( (Nil!41205) (Cons!41205 (h!46625 Rule!12592) (t!314972 List!41329)) )
))
(declare-fun rules!2768 () List!41329)

(declare-fun suffixTokens!72 () List!41328)

(declare-fun lt!1351474 () Unit!59182)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!56 (LexerInterface!5985 List!41329 List!41326 List!41326 List!41328 List!41326 List!41328) Unit!59182)

(assert (=> b!3876598 (= lt!1351474 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!56 thiss!20629 rules!2768 suffix!1176 (_2!23351 lt!1351487) suffixTokens!72 suffixResult!91 lt!1351494))))

(declare-fun res!1570558 () Bool)

(declare-datatypes ((tuple2!40436 0))(
  ( (tuple2!40437 (_1!23352 List!41328) (_2!23352 List!41326)) )
))
(declare-fun call!282810 () tuple2!40436)

(declare-fun ++!10549 (List!41328 List!41328) List!41328)

(assert (=> b!3876598 (= res!1570558 (not (= call!282810 (tuple2!40437 (++!10549 lt!1351494 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2398338 () Bool)

(assert (=> b!3876598 (=> (not res!1570558) (not e!2398338))))

(assert (=> b!3876598 e!2398338))

(declare-fun b!3876599 () Bool)

(declare-fun res!1570550 () Bool)

(declare-fun e!2398316 () Bool)

(assert (=> b!3876599 (=> (not res!1570550) (not e!2398316))))

(declare-fun isEmpty!24459 (List!41329) Bool)

(assert (=> b!3876599 (= res!1570550 (not (isEmpty!24459 rules!2768)))))

(declare-fun e!2398341 () Bool)

(declare-fun tp!1175258 () Bool)

(declare-fun e!2398335 () Bool)

(declare-fun b!3876600 () Bool)

(declare-fun prefixTokens!80 () List!41328)

(declare-fun inv!55362 (Token!11930) Bool)

(assert (=> b!3876600 (= e!2398341 (and (inv!55362 (h!46624 prefixTokens!80)) e!2398335 tp!1175258))))

(declare-fun b!3876601 () Bool)

(assert (=> b!3876601 (= e!2398338 false)))

(declare-fun b!3876602 () Bool)

(declare-fun e!2398354 () Bool)

(declare-datatypes ((Option!8814 0))(
  ( (None!8813) (Some!8813 (v!39111 tuple2!40434)) )
))
(declare-fun lt!1351510 () Option!8814)

(declare-fun size!30962 (List!41326) Int)

(assert (=> b!3876602 (= e!2398354 (= (size!30961 (_1!23351 (v!39111 lt!1351510))) (size!30962 (originalCharacters!6996 (_1!23351 (v!39111 lt!1351510))))))))

(declare-fun b!3876603 () Bool)

(declare-fun res!1570556 () Bool)

(declare-fun e!2398343 () Bool)

(assert (=> b!3876603 (=> res!1570556 e!2398343)))

(declare-fun head!8222 (List!41328) Token!11930)

(assert (=> b!3876603 (= res!1570556 (not (= (head!8222 prefixTokens!80) (_1!23351 (v!39111 lt!1351510)))))))

(declare-fun b!3876604 () Bool)

(declare-fun e!2398334 () Unit!59182)

(declare-fun Unit!59186 () Unit!59182)

(assert (=> b!3876604 (= e!2398334 Unit!59186)))

(declare-fun b!3876605 () Bool)

(declare-fun e!2398318 () Bool)

(assert (=> b!3876605 (= e!2398318 false)))

(declare-fun b!3876606 () Bool)

(declare-fun e!2398326 () Bool)

(declare-fun e!2398336 () Bool)

(assert (=> b!3876606 (= e!2398326 (not e!2398336))))

(declare-fun res!1570561 () Bool)

(assert (=> b!3876606 (=> res!1570561 e!2398336)))

(declare-fun lt!1351502 () List!41326)

(declare-fun lt!1351475 () List!41326)

(assert (=> b!3876606 (= res!1570561 (not (= lt!1351502 lt!1351475)))))

(declare-fun lt!1351491 () tuple2!40436)

(declare-fun lexList!1753 (LexerInterface!5985 List!41329 List!41326) tuple2!40436)

(assert (=> b!3876606 (= lt!1351491 (lexList!1753 thiss!20629 rules!2768 (_2!23351 (v!39111 lt!1351510))))))

(declare-fun lt!1351481 () Int)

(declare-fun lt!1351492 () List!41326)

(declare-fun lt!1351480 () List!41326)

(declare-fun lt!1351517 () TokenValue!6626)

(assert (=> b!3876606 (and (= (size!30961 (_1!23351 (v!39111 lt!1351510))) lt!1351481) (= (originalCharacters!6996 (_1!23351 (v!39111 lt!1351510))) lt!1351480) (= (tuple2!40435 (_1!23351 (v!39111 lt!1351510)) (_2!23351 (v!39111 lt!1351510))) (tuple2!40435 (Token!11931 lt!1351517 (rule!9292 (_1!23351 (v!39111 lt!1351510))) lt!1351481 lt!1351480) lt!1351492)))))

(assert (=> b!3876606 (= lt!1351481 (size!30962 lt!1351480))))

(assert (=> b!3876606 e!2398354))

(declare-fun res!1570549 () Bool)

(assert (=> b!3876606 (=> (not res!1570549) (not e!2398354))))

(assert (=> b!3876606 (= res!1570549 (= (value!202920 (_1!23351 (v!39111 lt!1351510))) lt!1351517))))

(declare-fun apply!9639 (TokenValueInjection!12680 BalanceConc!24808) TokenValue!6626)

(declare-fun seqFromList!4667 (List!41326) BalanceConc!24808)

(assert (=> b!3876606 (= lt!1351517 (apply!9639 (transformation!6396 (rule!9292 (_1!23351 (v!39111 lt!1351510)))) (seqFromList!4667 lt!1351480)))))

(assert (=> b!3876606 (= (_2!23351 (v!39111 lt!1351510)) lt!1351492)))

(declare-fun lt!1351485 () Unit!59182)

(declare-fun lemmaSamePrefixThenSameSuffix!1716 (List!41326 List!41326 List!41326 List!41326 List!41326) Unit!59182)

(assert (=> b!3876606 (= lt!1351485 (lemmaSamePrefixThenSameSuffix!1716 lt!1351480 (_2!23351 (v!39111 lt!1351510)) lt!1351480 lt!1351492 lt!1351475))))

(declare-fun getSuffix!1950 (List!41326 List!41326) List!41326)

(assert (=> b!3876606 (= lt!1351492 (getSuffix!1950 lt!1351475 lt!1351480))))

(declare-fun isPrefix!3495 (List!41326 List!41326) Bool)

(assert (=> b!3876606 (isPrefix!3495 lt!1351480 lt!1351502)))

(declare-fun ++!10550 (List!41326 List!41326) List!41326)

(assert (=> b!3876606 (= lt!1351502 (++!10550 lt!1351480 (_2!23351 (v!39111 lt!1351510))))))

(declare-fun lt!1351477 () Unit!59182)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2358 (List!41326 List!41326) Unit!59182)

(assert (=> b!3876606 (= lt!1351477 (lemmaConcatTwoListThenFirstIsPrefix!2358 lt!1351480 (_2!23351 (v!39111 lt!1351510))))))

(declare-fun list!15324 (BalanceConc!24808) List!41326)

(declare-fun charsOf!4224 (Token!11930) BalanceConc!24808)

(assert (=> b!3876606 (= lt!1351480 (list!15324 (charsOf!4224 (_1!23351 (v!39111 lt!1351510)))))))

(declare-fun ruleValid!2348 (LexerInterface!5985 Rule!12592) Bool)

(assert (=> b!3876606 (ruleValid!2348 thiss!20629 (rule!9292 (_1!23351 (v!39111 lt!1351510))))))

(declare-fun lt!1351506 () Unit!59182)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1428 (LexerInterface!5985 Rule!12592 List!41329) Unit!59182)

(assert (=> b!3876606 (= lt!1351506 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1428 thiss!20629 (rule!9292 (_1!23351 (v!39111 lt!1351510))) rules!2768))))

(declare-fun lt!1351508 () Unit!59182)

(declare-fun lemmaCharactersSize!1057 (Token!11930) Unit!59182)

(assert (=> b!3876606 (= lt!1351508 (lemmaCharactersSize!1057 (_1!23351 (v!39111 lt!1351510))))))

(declare-fun b!3876607 () Bool)

(declare-fun e!2398324 () Bool)

(declare-fun e!2398353 () Bool)

(assert (=> b!3876607 (= e!2398324 e!2398353)))

(declare-fun res!1570571 () Bool)

(assert (=> b!3876607 (=> res!1570571 e!2398353)))

(declare-fun lt!1351515 () tuple2!40436)

(assert (=> b!3876607 (= res!1570571 (not (= lt!1351491 lt!1351515)))))

(declare-fun lt!1351514 () List!41328)

(assert (=> b!3876607 (= lt!1351515 (tuple2!40437 lt!1351514 suffixResult!91))))

(declare-fun lt!1351513 () List!41328)

(assert (=> b!3876607 (= lt!1351514 (++!10549 lt!1351513 suffixTokens!72))))

(declare-fun tail!5939 (List!41328) List!41328)

(assert (=> b!3876607 (= lt!1351513 (tail!5939 prefixTokens!80))))

(declare-fun lt!1351482 () List!41326)

(declare-fun lt!1351490 () List!41326)

(assert (=> b!3876607 (isPrefix!3495 lt!1351482 lt!1351490)))

(declare-fun lt!1351473 () Unit!59182)

(assert (=> b!3876607 (= lt!1351473 (lemmaConcatTwoListThenFirstIsPrefix!2358 lt!1351482 suffix!1176))))

(declare-fun b!3876608 () Bool)

(declare-fun e!2398355 () Bool)

(assert (=> b!3876608 (= e!2398355 e!2398339)))

(declare-fun res!1570548 () Bool)

(assert (=> b!3876608 (=> res!1570548 e!2398339)))

(assert (=> b!3876608 (= res!1570548 (not (= lt!1351510 (Some!8813 (tuple2!40435 (_1!23351 (v!39111 lt!1351510)) (_2!23351 (v!39111 lt!1351510)))))))))

(assert (=> b!3876608 (= (lexList!1753 thiss!20629 rules!2768 lt!1351482) (tuple2!40437 lt!1351513 Nil!41202))))

(declare-fun lt!1351483 () Unit!59182)

(declare-fun lemmaLexThenLexPrefix!585 (LexerInterface!5985 List!41329 List!41326 List!41326 List!41328 List!41328 List!41326) Unit!59182)

(assert (=> b!3876608 (= lt!1351483 (lemmaLexThenLexPrefix!585 thiss!20629 rules!2768 lt!1351482 suffix!1176 lt!1351513 suffixTokens!72 suffixResult!91))))

(declare-fun tp!1175260 () Bool)

(declare-fun e!2398328 () Bool)

(declare-fun e!2398321 () Bool)

(declare-fun b!3876609 () Bool)

(declare-fun inv!21 (TokenValue!6626) Bool)

(assert (=> b!3876609 (= e!2398321 (and (inv!21 (value!202920 (h!46624 suffixTokens!72))) e!2398328 tp!1175260))))

(declare-fun b!3876610 () Bool)

(declare-fun e!2398330 () Unit!59182)

(declare-fun Unit!59187 () Unit!59182)

(assert (=> b!3876610 (= e!2398330 Unit!59187)))

(declare-fun b!3876611 () Bool)

(declare-fun Unit!59188 () Unit!59182)

(assert (=> b!3876611 (= e!2398334 Unit!59188)))

(declare-fun lt!1351516 () Int)

(assert (=> b!3876611 (= lt!1351516 (size!30962 lt!1351475))))

(declare-fun lt!1351495 () Unit!59182)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1269 (LexerInterface!5985 List!41329 List!41326 List!41326 List!41326 Rule!12592) Unit!59182)

(assert (=> b!3876611 (= lt!1351495 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1269 thiss!20629 rules!2768 lt!1351480 lt!1351475 (_2!23351 (v!39111 lt!1351510)) (rule!9292 (_1!23351 (v!39111 lt!1351510)))))))

(declare-fun maxPrefixOneRule!2371 (LexerInterface!5985 Rule!12592 List!41326) Option!8814)

(assert (=> b!3876611 (= (maxPrefixOneRule!2371 thiss!20629 (rule!9292 (_1!23351 (v!39111 lt!1351510))) lt!1351475) (Some!8813 (tuple2!40435 (Token!11931 lt!1351517 (rule!9292 (_1!23351 (v!39111 lt!1351510))) lt!1351481 lt!1351480) (_2!23351 (v!39111 lt!1351510)))))))

(declare-fun get!13634 (Option!8814) tuple2!40434)

(assert (=> b!3876611 (= lt!1351487 (get!13634 lt!1351510))))

(declare-fun c!674481 () Bool)

(declare-fun lt!1351519 () Int)

(assert (=> b!3876611 (= c!674481 (< (size!30962 (_2!23351 lt!1351487)) lt!1351519))))

(declare-fun lt!1351497 () Unit!59182)

(declare-fun e!2398315 () Unit!59182)

(assert (=> b!3876611 (= lt!1351497 e!2398315)))

(assert (=> b!3876611 false))

(declare-fun b!3876612 () Bool)

(declare-fun Unit!59189 () Unit!59182)

(assert (=> b!3876612 (= e!2398315 Unit!59189)))

(declare-fun b!3876613 () Bool)

(declare-fun tp!1175255 () Bool)

(declare-fun e!2398333 () Bool)

(assert (=> b!3876613 (= e!2398333 (and (inv!55362 (h!46624 suffixTokens!72)) e!2398321 tp!1175255))))

(declare-fun b!3876614 () Bool)

(declare-fun e!2398356 () Bool)

(assert (=> b!3876614 (= e!2398336 e!2398356)))

(declare-fun res!1570569 () Bool)

(assert (=> b!3876614 (=> res!1570569 e!2398356)))

(declare-fun lt!1351507 () tuple2!40436)

(declare-fun lt!1351501 () List!41328)

(assert (=> b!3876614 (= res!1570569 (not (= lt!1351507 (tuple2!40437 (++!10549 lt!1351501 (_1!23352 lt!1351491)) (_2!23352 lt!1351491)))))))

(assert (=> b!3876614 (= lt!1351501 (Cons!41204 (_1!23351 (v!39111 lt!1351510)) Nil!41204))))

(declare-fun b!3876615 () Bool)

(declare-fun res!1570564 () Bool)

(assert (=> b!3876615 (=> (not res!1570564) (not e!2398316))))

(declare-fun prefix!426 () List!41326)

(assert (=> b!3876615 (= res!1570564 (not (isEmpty!24458 prefix!426)))))

(declare-fun b!3876616 () Bool)

(declare-fun res!1570563 () Bool)

(assert (=> b!3876616 (=> res!1570563 e!2398355)))

(assert (=> b!3876616 (= res!1570563 (not (= (lexList!1753 thiss!20629 rules!2768 lt!1351490) lt!1351515)))))

(declare-fun b!3876617 () Bool)

(declare-fun c!674477 () Bool)

(declare-fun isEmpty!24460 (List!41328) Bool)

(assert (=> b!3876617 (= c!674477 (isEmpty!24460 lt!1351494))))

(assert (=> b!3876617 (= lt!1351494 (tail!5939 prefixTokens!80))))

(assert (=> b!3876617 (= e!2398315 e!2398322)))

(declare-fun b!3876618 () Bool)

(declare-fun e!2398350 () Bool)

(declare-fun tp_is_empty!19573 () Bool)

(declare-fun tp!1175264 () Bool)

(assert (=> b!3876618 (= e!2398350 (and tp_is_empty!19573 tp!1175264))))

(declare-fun e!2398340 () Bool)

(declare-fun b!3876619 () Bool)

(declare-fun tp!1175262 () Bool)

(declare-fun e!2398352 () Bool)

(declare-fun inv!55359 (String!46848) Bool)

(declare-fun inv!55363 (TokenValueInjection!12680) Bool)

(assert (=> b!3876619 (= e!2398352 (and tp!1175262 (inv!55359 (tag!7256 (rule!9292 (h!46624 prefixTokens!80)))) (inv!55363 (transformation!6396 (rule!9292 (h!46624 prefixTokens!80)))) e!2398340))))

(declare-fun b!3876620 () Bool)

(declare-fun e!2398327 () Bool)

(declare-fun tp!1175259 () Bool)

(assert (=> b!3876620 (= e!2398327 (and tp_is_empty!19573 tp!1175259))))

(declare-fun b!3876621 () Bool)

(declare-fun e!2398347 () Bool)

(assert (=> b!3876621 (= e!2398343 e!2398347)))

(declare-fun res!1570551 () Bool)

(assert (=> b!3876621 (=> res!1570551 e!2398347)))

(assert (=> b!3876621 (= res!1570551 (>= lt!1351481 (size!30962 prefix!426)))))

(assert (=> b!3876621 (isPrefix!3495 lt!1351480 prefix!426)))

(declare-fun lt!1351478 () Unit!59182)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!245 (List!41326 List!41326 List!41326) Unit!59182)

(assert (=> b!3876621 (= lt!1351478 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!245 prefix!426 lt!1351480 lt!1351475))))

(assert (=> b!3876621 (isPrefix!3495 prefix!426 lt!1351475)))

(declare-fun lt!1351511 () Unit!59182)

(assert (=> b!3876621 (= lt!1351511 (lemmaConcatTwoListThenFirstIsPrefix!2358 prefix!426 suffix!1176))))

(declare-fun b!3876622 () Bool)

(declare-fun e!2398331 () Bool)

(declare-fun tp!1175257 () Bool)

(assert (=> b!3876622 (= e!2398331 (and tp_is_empty!19573 tp!1175257))))

(declare-fun b!3876623 () Bool)

(declare-fun e!2398337 () Bool)

(assert (=> b!3876623 (= e!2398347 e!2398337)))

(declare-fun res!1570552 () Bool)

(assert (=> b!3876623 (=> res!1570552 e!2398337)))

(declare-fun lt!1351499 () List!41326)

(assert (=> b!3876623 (= res!1570552 (not (= lt!1351499 prefix!426)))))

(assert (=> b!3876623 (= lt!1351499 (++!10550 lt!1351480 lt!1351482))))

(assert (=> b!3876623 (= lt!1351482 (getSuffix!1950 prefix!426 lt!1351480))))

(declare-fun bm!282805 () Bool)

(assert (=> bm!282805 (= call!282810 (lexList!1753 thiss!20629 rules!2768 (_2!23351 lt!1351487)))))

(declare-fun b!3876624 () Bool)

(assert (=> b!3876624 (= e!2398339 true)))

(declare-fun lt!1351489 () Bool)

(assert (=> b!3876624 (= lt!1351489 (isPrefix!3495 lt!1351482 (_2!23351 (v!39111 lt!1351510))))))

(declare-fun b!3876625 () Bool)

(declare-fun e!2398325 () Unit!59182)

(declare-fun Unit!59190 () Unit!59182)

(assert (=> b!3876625 (= e!2398325 Unit!59190)))

(declare-fun b!3876626 () Bool)

(declare-fun e!2398317 () Bool)

(assert (=> b!3876626 (= e!2398317 e!2398324)))

(declare-fun res!1570562 () Bool)

(assert (=> b!3876626 (=> res!1570562 e!2398324)))

(assert (=> b!3876626 (= res!1570562 (not (= lt!1351490 (_2!23351 (v!39111 lt!1351510)))))))

(assert (=> b!3876626 (= (_2!23351 (v!39111 lt!1351510)) lt!1351490)))

(declare-fun lt!1351521 () Unit!59182)

(assert (=> b!3876626 (= lt!1351521 (lemmaSamePrefixThenSameSuffix!1716 lt!1351480 (_2!23351 (v!39111 lt!1351510)) lt!1351480 lt!1351490 lt!1351475))))

(declare-fun lt!1351523 () List!41326)

(assert (=> b!3876626 (isPrefix!3495 lt!1351480 lt!1351523)))

(declare-fun lt!1351503 () Unit!59182)

(assert (=> b!3876626 (= lt!1351503 (lemmaConcatTwoListThenFirstIsPrefix!2358 lt!1351480 lt!1351490))))

(declare-fun e!2398349 () Bool)

(assert (=> b!3876627 (= e!2398349 (and tp!1175267 tp!1175254))))

(declare-fun b!3876628 () Bool)

(declare-fun res!1570570 () Bool)

(assert (=> b!3876628 (=> res!1570570 e!2398356)))

(assert (=> b!3876628 (= res!1570570 (or (not (= lt!1351491 (tuple2!40437 (_1!23352 lt!1351491) (_2!23352 lt!1351491)))) (= (_2!23351 (v!39111 lt!1351510)) suffix!1176)))))

(declare-fun b!3876629 () Bool)

(declare-fun e!2398351 () Bool)

(declare-fun e!2398319 () Bool)

(assert (=> b!3876629 (= e!2398351 e!2398319)))

(declare-fun res!1570559 () Bool)

(assert (=> b!3876629 (=> (not res!1570559) (not e!2398319))))

(declare-fun lt!1351512 () tuple2!40436)

(assert (=> b!3876629 (= res!1570559 (= (lexList!1753 thiss!20629 rules!2768 suffix!1176) lt!1351512))))

(assert (=> b!3876629 (= lt!1351512 (tuple2!40437 suffixTokens!72 suffixResult!91))))

(declare-fun b!3876630 () Bool)

(declare-fun res!1570547 () Bool)

(assert (=> b!3876630 (=> (not res!1570547) (not e!2398316))))

(assert (=> b!3876630 (= res!1570547 (not (isEmpty!24460 prefixTokens!80)))))

(declare-fun b!3876631 () Bool)

(declare-fun Unit!59191 () Unit!59182)

(assert (=> b!3876631 (= e!2398322 Unit!59191)))

(declare-fun lt!1351493 () Unit!59182)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!480 (List!41326 List!41326 List!41326 List!41326) Unit!59182)

(assert (=> b!3876631 (= lt!1351493 (lemmaConcatSameAndSameSizesThenSameLists!480 lt!1351480 (_2!23351 (v!39111 lt!1351510)) lt!1351480 (_2!23351 lt!1351487)))))

(assert (=> b!3876631 (= (_2!23351 (v!39111 lt!1351510)) (_2!23351 lt!1351487))))

(declare-fun lt!1351504 () Unit!59182)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!56 (LexerInterface!5985 List!41329 List!41326 List!41326 List!41328 List!41326) Unit!59182)

(assert (=> b!3876631 (= lt!1351504 (lemmaLexWithSmallerInputCannotProduceSameResults!56 thiss!20629 rules!2768 suffix!1176 (_2!23351 lt!1351487) suffixTokens!72 suffixResult!91))))

(declare-fun res!1570555 () Bool)

(assert (=> b!3876631 (= res!1570555 (not (= call!282810 lt!1351512)))))

(assert (=> b!3876631 (=> (not res!1570555) (not e!2398318))))

(assert (=> b!3876631 e!2398318))

(declare-fun tp!1175253 () Bool)

(declare-fun b!3876632 () Bool)

(assert (=> b!3876632 (= e!2398335 (and (inv!21 (value!202920 (h!46624 prefixTokens!80))) e!2398352 tp!1175253))))

(declare-fun b!3876633 () Bool)

(declare-fun e!2398329 () Bool)

(assert (=> b!3876633 (= e!2398337 e!2398329)))

(declare-fun res!1570565 () Bool)

(assert (=> b!3876633 (=> res!1570565 e!2398329)))

(declare-fun lt!1351484 () List!41326)

(assert (=> b!3876633 (= res!1570565 (or (not (= lt!1351484 lt!1351475)) (not (= lt!1351484 lt!1351502))))))

(assert (=> b!3876633 (= lt!1351484 (++!10550 lt!1351499 suffix!1176))))

(declare-fun b!3876634 () Bool)

(declare-fun e!2398346 () Bool)

(declare-fun e!2398344 () Bool)

(declare-fun tp!1175268 () Bool)

(assert (=> b!3876634 (= e!2398346 (and e!2398344 tp!1175268))))

(declare-fun b!3876635 () Bool)

(assert (=> b!3876635 (= e!2398353 e!2398355)))

(declare-fun res!1570566 () Bool)

(assert (=> b!3876635 (=> res!1570566 e!2398355)))

(declare-fun lt!1351476 () List!41328)

(declare-fun lt!1351479 () List!41328)

(assert (=> b!3876635 (= res!1570566 (not (= lt!1351476 lt!1351479)))))

(assert (=> b!3876635 (= lt!1351476 (++!10549 lt!1351501 lt!1351514))))

(assert (=> b!3876635 (= lt!1351476 (++!10549 (++!10549 lt!1351501 lt!1351513) suffixTokens!72))))

(declare-fun lt!1351498 () Unit!59182)

(declare-fun lemmaConcatAssociativity!2263 (List!41328 List!41328 List!41328) Unit!59182)

(assert (=> b!3876635 (= lt!1351498 (lemmaConcatAssociativity!2263 lt!1351501 lt!1351513 suffixTokens!72))))

(declare-fun lt!1351520 () Unit!59182)

(assert (=> b!3876635 (= lt!1351520 e!2398330)))

(declare-fun c!674478 () Bool)

(assert (=> b!3876635 (= c!674478 (isEmpty!24460 lt!1351513))))

(declare-fun e!2398342 () Bool)

(assert (=> b!3876636 (= e!2398342 (and tp!1175252 tp!1175265))))

(assert (=> b!3876637 (= e!2398340 (and tp!1175266 tp!1175261))))

(declare-fun b!3876638 () Bool)

(declare-fun Unit!59192 () Unit!59182)

(assert (=> b!3876638 (= e!2398325 Unit!59192)))

(declare-fun lt!1351496 () Unit!59182)

(assert (=> b!3876638 (= lt!1351496 (lemmaConcatTwoListThenFirstIsPrefix!2358 prefix!426 suffix!1176))))

(assert (=> b!3876638 (isPrefix!3495 prefix!426 lt!1351475)))

(declare-fun lt!1351500 () Unit!59182)

(declare-fun lemmaIsPrefixSameLengthThenSameList!747 (List!41326 List!41326 List!41326) Unit!59182)

(assert (=> b!3876638 (= lt!1351500 (lemmaIsPrefixSameLengthThenSameList!747 lt!1351480 prefix!426 lt!1351475))))

(assert (=> b!3876638 (= lt!1351480 prefix!426)))

(declare-fun lt!1351486 () Unit!59182)

(assert (=> b!3876638 (= lt!1351486 (lemmaSamePrefixThenSameSuffix!1716 lt!1351480 (_2!23351 (v!39111 lt!1351510)) prefix!426 suffix!1176 lt!1351475))))

(assert (=> b!3876638 false))

(declare-fun tp!1175256 () Bool)

(declare-fun b!3876639 () Bool)

(assert (=> b!3876639 (= e!2398328 (and tp!1175256 (inv!55359 (tag!7256 (rule!9292 (h!46624 suffixTokens!72)))) (inv!55363 (transformation!6396 (rule!9292 (h!46624 suffixTokens!72)))) e!2398342))))

(declare-fun b!3876640 () Bool)

(declare-fun Unit!59193 () Unit!59182)

(assert (=> b!3876640 (= e!2398330 Unit!59193)))

(declare-fun lt!1351488 () Unit!59182)

(assert (=> b!3876640 (= lt!1351488 (lemmaLexWithSmallerInputCannotProduceSameResults!56 thiss!20629 rules!2768 (_2!23351 (v!39111 lt!1351510)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3876640 false))

(declare-fun b!3876641 () Bool)

(assert (=> b!3876641 (= e!2398316 e!2398351)))

(declare-fun res!1570554 () Bool)

(assert (=> b!3876641 (=> (not res!1570554) (not e!2398351))))

(assert (=> b!3876641 (= res!1570554 (= lt!1351507 (tuple2!40437 lt!1351479 suffixResult!91)))))

(assert (=> b!3876641 (= lt!1351507 (lexList!1753 thiss!20629 rules!2768 lt!1351475))))

(assert (=> b!3876641 (= lt!1351479 (++!10549 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3876641 (= lt!1351475 (++!10550 prefix!426 suffix!1176))))

(declare-fun b!3876642 () Bool)

(assert (=> b!3876642 (= e!2398329 e!2398317)))

(declare-fun res!1570567 () Bool)

(assert (=> b!3876642 (=> res!1570567 e!2398317)))

(assert (=> b!3876642 (= res!1570567 (or (not (= lt!1351475 lt!1351484)) (not (= lt!1351475 lt!1351523)) (not (= lt!1351502 lt!1351523))))))

(assert (=> b!3876642 (= lt!1351484 lt!1351523)))

(assert (=> b!3876642 (= lt!1351523 (++!10550 lt!1351480 lt!1351490))))

(assert (=> b!3876642 (= lt!1351490 (++!10550 lt!1351482 suffix!1176))))

(declare-fun lt!1351522 () Unit!59182)

(declare-fun lemmaConcatAssociativity!2264 (List!41326 List!41326 List!41326) Unit!59182)

(assert (=> b!3876642 (= lt!1351522 (lemmaConcatAssociativity!2264 lt!1351480 lt!1351482 suffix!1176))))

(declare-fun b!3876643 () Bool)

(assert (=> b!3876643 (= e!2398319 e!2398326)))

(declare-fun res!1570560 () Bool)

(assert (=> b!3876643 (=> (not res!1570560) (not e!2398326))))

(get-info :version)

(assert (=> b!3876643 (= res!1570560 ((_ is Some!8813) lt!1351510))))

(declare-fun maxPrefix!3289 (LexerInterface!5985 List!41329 List!41326) Option!8814)

(assert (=> b!3876643 (= lt!1351510 (maxPrefix!3289 thiss!20629 rules!2768 lt!1351475))))

(declare-fun tp!1175263 () Bool)

(declare-fun b!3876644 () Bool)

(assert (=> b!3876644 (= e!2398344 (and tp!1175263 (inv!55359 (tag!7256 (h!46625 rules!2768))) (inv!55363 (transformation!6396 (h!46625 rules!2768))) e!2398349))))

(declare-fun b!3876646 () Bool)

(declare-fun res!1570553 () Bool)

(assert (=> b!3876646 (=> (not res!1570553) (not e!2398316))))

(declare-fun rulesInvariant!5328 (LexerInterface!5985 List!41329) Bool)

(assert (=> b!3876646 (= res!1570553 (rulesInvariant!5328 thiss!20629 rules!2768))))

(declare-fun res!1570568 () Bool)

(assert (=> start!363976 (=> (not res!1570568) (not e!2398316))))

(assert (=> start!363976 (= res!1570568 ((_ is Lexer!5983) thiss!20629))))

(assert (=> start!363976 e!2398316))

(assert (=> start!363976 e!2398327))

(assert (=> start!363976 true))

(assert (=> start!363976 e!2398350))

(assert (=> start!363976 e!2398346))

(assert (=> start!363976 e!2398341))

(assert (=> start!363976 e!2398333))

(assert (=> start!363976 e!2398331))

(declare-fun b!3876645 () Bool)

(assert (=> b!3876645 (= e!2398356 e!2398343)))

(declare-fun res!1570557 () Bool)

(assert (=> b!3876645 (=> res!1570557 e!2398343)))

(declare-fun lt!1351518 () Int)

(assert (=> b!3876645 (= res!1570557 (<= lt!1351518 lt!1351519))))

(declare-fun lt!1351505 () Unit!59182)

(assert (=> b!3876645 (= lt!1351505 e!2398325)))

(declare-fun c!674479 () Bool)

(assert (=> b!3876645 (= c!674479 (= lt!1351518 lt!1351519))))

(declare-fun lt!1351509 () Unit!59182)

(assert (=> b!3876645 (= lt!1351509 e!2398334)))

(declare-fun c!674480 () Bool)

(assert (=> b!3876645 (= c!674480 (< lt!1351518 lt!1351519))))

(assert (=> b!3876645 (= lt!1351519 (size!30962 suffix!1176))))

(assert (=> b!3876645 (= lt!1351518 (size!30962 (_2!23351 (v!39111 lt!1351510))))))

(assert (= (and start!363976 res!1570568) b!3876599))

(assert (= (and b!3876599 res!1570550) b!3876646))

(assert (= (and b!3876646 res!1570553) b!3876630))

(assert (= (and b!3876630 res!1570547) b!3876615))

(assert (= (and b!3876615 res!1570564) b!3876641))

(assert (= (and b!3876641 res!1570554) b!3876629))

(assert (= (and b!3876629 res!1570559) b!3876643))

(assert (= (and b!3876643 res!1570560) b!3876606))

(assert (= (and b!3876606 res!1570549) b!3876602))

(assert (= (and b!3876606 (not res!1570561)) b!3876614))

(assert (= (and b!3876614 (not res!1570569)) b!3876628))

(assert (= (and b!3876628 (not res!1570570)) b!3876645))

(assert (= (and b!3876645 c!674480) b!3876611))

(assert (= (and b!3876645 (not c!674480)) b!3876604))

(assert (= (and b!3876611 c!674481) b!3876617))

(assert (= (and b!3876611 (not c!674481)) b!3876612))

(assert (= (and b!3876617 c!674477) b!3876631))

(assert (= (and b!3876617 (not c!674477)) b!3876598))

(assert (= (and b!3876631 res!1570555) b!3876605))

(assert (= (and b!3876598 res!1570558) b!3876601))

(assert (= (or b!3876631 b!3876598) bm!282805))

(assert (= (and b!3876645 c!674479) b!3876638))

(assert (= (and b!3876645 (not c!674479)) b!3876625))

(assert (= (and b!3876645 (not res!1570557)) b!3876603))

(assert (= (and b!3876603 (not res!1570556)) b!3876621))

(assert (= (and b!3876621 (not res!1570551)) b!3876623))

(assert (= (and b!3876623 (not res!1570552)) b!3876633))

(assert (= (and b!3876633 (not res!1570565)) b!3876642))

(assert (= (and b!3876642 (not res!1570567)) b!3876626))

(assert (= (and b!3876626 (not res!1570562)) b!3876607))

(assert (= (and b!3876607 (not res!1570571)) b!3876635))

(assert (= (and b!3876635 c!674478) b!3876640))

(assert (= (and b!3876635 (not c!674478)) b!3876610))

(assert (= (and b!3876635 (not res!1570566)) b!3876616))

(assert (= (and b!3876616 (not res!1570563)) b!3876608))

(assert (= (and b!3876608 (not res!1570548)) b!3876597))

(assert (= (and b!3876597 (not res!1570546)) b!3876624))

(assert (= (and start!363976 ((_ is Cons!41202) suffixResult!91)) b!3876620))

(assert (= (and start!363976 ((_ is Cons!41202) suffix!1176)) b!3876618))

(assert (= b!3876644 b!3876627))

(assert (= b!3876634 b!3876644))

(assert (= (and start!363976 ((_ is Cons!41205) rules!2768)) b!3876634))

(assert (= b!3876619 b!3876637))

(assert (= b!3876632 b!3876619))

(assert (= b!3876600 b!3876632))

(assert (= (and start!363976 ((_ is Cons!41204) prefixTokens!80)) b!3876600))

(assert (= b!3876639 b!3876636))

(assert (= b!3876609 b!3876639))

(assert (= b!3876613 b!3876609))

(assert (= (and start!363976 ((_ is Cons!41204) suffixTokens!72)) b!3876613))

(assert (= (and start!363976 ((_ is Cons!41202) prefix!426)) b!3876622))

(declare-fun m!4434545 () Bool)

(assert (=> b!3876641 m!4434545))

(declare-fun m!4434547 () Bool)

(assert (=> b!3876641 m!4434547))

(declare-fun m!4434549 () Bool)

(assert (=> b!3876641 m!4434549))

(declare-fun m!4434551 () Bool)

(assert (=> b!3876624 m!4434551))

(declare-fun m!4434553 () Bool)

(assert (=> b!3876607 m!4434553))

(declare-fun m!4434555 () Bool)

(assert (=> b!3876607 m!4434555))

(declare-fun m!4434557 () Bool)

(assert (=> b!3876607 m!4434557))

(declare-fun m!4434559 () Bool)

(assert (=> b!3876607 m!4434559))

(declare-fun m!4434561 () Bool)

(assert (=> b!3876619 m!4434561))

(declare-fun m!4434563 () Bool)

(assert (=> b!3876619 m!4434563))

(declare-fun m!4434565 () Bool)

(assert (=> b!3876617 m!4434565))

(assert (=> b!3876617 m!4434555))

(declare-fun m!4434567 () Bool)

(assert (=> b!3876597 m!4434567))

(declare-fun m!4434569 () Bool)

(assert (=> b!3876646 m!4434569))

(declare-fun m!4434571 () Bool)

(assert (=> b!3876645 m!4434571))

(declare-fun m!4434573 () Bool)

(assert (=> b!3876645 m!4434573))

(declare-fun m!4434575 () Bool)

(assert (=> b!3876614 m!4434575))

(declare-fun m!4434577 () Bool)

(assert (=> b!3876621 m!4434577))

(declare-fun m!4434579 () Bool)

(assert (=> b!3876621 m!4434579))

(declare-fun m!4434581 () Bool)

(assert (=> b!3876621 m!4434581))

(declare-fun m!4434583 () Bool)

(assert (=> b!3876621 m!4434583))

(declare-fun m!4434585 () Bool)

(assert (=> b!3876621 m!4434585))

(declare-fun m!4434587 () Bool)

(assert (=> b!3876642 m!4434587))

(declare-fun m!4434589 () Bool)

(assert (=> b!3876642 m!4434589))

(declare-fun m!4434591 () Bool)

(assert (=> b!3876642 m!4434591))

(declare-fun m!4434593 () Bool)

(assert (=> b!3876626 m!4434593))

(declare-fun m!4434595 () Bool)

(assert (=> b!3876626 m!4434595))

(declare-fun m!4434597 () Bool)

(assert (=> b!3876626 m!4434597))

(declare-fun m!4434599 () Bool)

(assert (=> b!3876640 m!4434599))

(declare-fun m!4434601 () Bool)

(assert (=> b!3876608 m!4434601))

(declare-fun m!4434603 () Bool)

(assert (=> b!3876608 m!4434603))

(declare-fun m!4434605 () Bool)

(assert (=> b!3876602 m!4434605))

(declare-fun m!4434607 () Bool)

(assert (=> b!3876639 m!4434607))

(declare-fun m!4434609 () Bool)

(assert (=> b!3876639 m!4434609))

(declare-fun m!4434611 () Bool)

(assert (=> b!3876598 m!4434611))

(declare-fun m!4434613 () Bool)

(assert (=> b!3876598 m!4434613))

(declare-fun m!4434615 () Bool)

(assert (=> b!3876609 m!4434615))

(declare-fun m!4434617 () Bool)

(assert (=> b!3876633 m!4434617))

(declare-fun m!4434619 () Bool)

(assert (=> b!3876630 m!4434619))

(declare-fun m!4434621 () Bool)

(assert (=> b!3876643 m!4434621))

(declare-fun m!4434623 () Bool)

(assert (=> b!3876632 m!4434623))

(declare-fun m!4434625 () Bool)

(assert (=> b!3876603 m!4434625))

(assert (=> b!3876638 m!4434581))

(assert (=> b!3876638 m!4434585))

(declare-fun m!4434627 () Bool)

(assert (=> b!3876638 m!4434627))

(declare-fun m!4434629 () Bool)

(assert (=> b!3876638 m!4434629))

(declare-fun m!4434631 () Bool)

(assert (=> b!3876616 m!4434631))

(declare-fun m!4434633 () Bool)

(assert (=> bm!282805 m!4434633))

(declare-fun m!4434635 () Bool)

(assert (=> b!3876613 m!4434635))

(declare-fun m!4434637 () Bool)

(assert (=> b!3876635 m!4434637))

(declare-fun m!4434639 () Bool)

(assert (=> b!3876635 m!4434639))

(declare-fun m!4434641 () Bool)

(assert (=> b!3876635 m!4434641))

(declare-fun m!4434643 () Bool)

(assert (=> b!3876635 m!4434643))

(declare-fun m!4434645 () Bool)

(assert (=> b!3876635 m!4434645))

(assert (=> b!3876635 m!4434643))

(declare-fun m!4434647 () Bool)

(assert (=> b!3876644 m!4434647))

(declare-fun m!4434649 () Bool)

(assert (=> b!3876644 m!4434649))

(declare-fun m!4434651 () Bool)

(assert (=> b!3876631 m!4434651))

(declare-fun m!4434653 () Bool)

(assert (=> b!3876631 m!4434653))

(declare-fun m!4434655 () Bool)

(assert (=> b!3876599 m!4434655))

(declare-fun m!4434657 () Bool)

(assert (=> b!3876606 m!4434657))

(declare-fun m!4434659 () Bool)

(assert (=> b!3876606 m!4434659))

(declare-fun m!4434661 () Bool)

(assert (=> b!3876606 m!4434661))

(declare-fun m!4434663 () Bool)

(assert (=> b!3876606 m!4434663))

(declare-fun m!4434665 () Bool)

(assert (=> b!3876606 m!4434665))

(assert (=> b!3876606 m!4434665))

(declare-fun m!4434667 () Bool)

(assert (=> b!3876606 m!4434667))

(declare-fun m!4434669 () Bool)

(assert (=> b!3876606 m!4434669))

(declare-fun m!4434671 () Bool)

(assert (=> b!3876606 m!4434671))

(declare-fun m!4434673 () Bool)

(assert (=> b!3876606 m!4434673))

(declare-fun m!4434675 () Bool)

(assert (=> b!3876606 m!4434675))

(declare-fun m!4434677 () Bool)

(assert (=> b!3876606 m!4434677))

(assert (=> b!3876606 m!4434659))

(declare-fun m!4434679 () Bool)

(assert (=> b!3876606 m!4434679))

(declare-fun m!4434681 () Bool)

(assert (=> b!3876606 m!4434681))

(declare-fun m!4434683 () Bool)

(assert (=> b!3876606 m!4434683))

(declare-fun m!4434685 () Bool)

(assert (=> b!3876615 m!4434685))

(declare-fun m!4434687 () Bool)

(assert (=> b!3876623 m!4434687))

(declare-fun m!4434689 () Bool)

(assert (=> b!3876623 m!4434689))

(declare-fun m!4434691 () Bool)

(assert (=> b!3876629 m!4434691))

(declare-fun m!4434693 () Bool)

(assert (=> b!3876611 m!4434693))

(declare-fun m!4434695 () Bool)

(assert (=> b!3876611 m!4434695))

(declare-fun m!4434697 () Bool)

(assert (=> b!3876611 m!4434697))

(declare-fun m!4434699 () Bool)

(assert (=> b!3876611 m!4434699))

(declare-fun m!4434701 () Bool)

(assert (=> b!3876611 m!4434701))

(declare-fun m!4434703 () Bool)

(assert (=> b!3876600 m!4434703))

(check-sat (not b!3876598) (not b!3876624) (not b!3876631) b_and!290695 (not b!3876618) (not b!3876597) (not b!3876623) (not b!3876626) (not b!3876646) (not b!3876611) (not b!3876639) b_and!290701 b_and!290691 (not b!3876622) (not b!3876615) (not b!3876632) (not b!3876602) (not b!3876633) (not b!3876640) b_and!290693 (not b_next!105553) (not b!3876635) (not b!3876609) (not b_next!105557) (not b!3876614) (not b!3876606) b_and!290697 (not b!3876616) (not b!3876630) (not b!3876641) (not b_next!105559) (not b!3876617) (not b!3876634) (not b!3876638) (not b_next!105555) (not b_next!105549) (not b!3876621) (not b!3876643) (not b!3876619) (not b!3876613) (not b!3876620) (not bm!282805) (not b!3876603) (not b!3876644) (not b!3876608) (not b_next!105551) (not b!3876600) tp_is_empty!19573 (not b!3876642) (not b!3876607) (not b!3876599) (not b!3876645) (not b!3876629) b_and!290699)
(check-sat (not b_next!105557) b_and!290697 b_and!290695 (not b_next!105559) (not b_next!105551) b_and!290701 b_and!290691 b_and!290699 b_and!290693 (not b_next!105553) (not b_next!105549) (not b_next!105555))
