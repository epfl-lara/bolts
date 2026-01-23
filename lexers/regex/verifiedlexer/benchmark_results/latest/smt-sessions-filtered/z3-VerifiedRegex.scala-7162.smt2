; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!380036 () Bool)

(assert start!380036)

(declare-fun b!4033155 () Bool)

(declare-fun b_free!112385 () Bool)

(declare-fun b_next!113089 () Bool)

(assert (=> b!4033155 (= b_free!112385 (not b_next!113089))))

(declare-fun tp!1225556 () Bool)

(declare-fun b_and!309931 () Bool)

(assert (=> b!4033155 (= tp!1225556 b_and!309931)))

(declare-fun b_free!112387 () Bool)

(declare-fun b_next!113091 () Bool)

(assert (=> b!4033155 (= b_free!112387 (not b_next!113091))))

(declare-fun tp!1225559 () Bool)

(declare-fun b_and!309933 () Bool)

(assert (=> b!4033155 (= tp!1225559 b_and!309933)))

(declare-fun b!4033163 () Bool)

(declare-fun b_free!112389 () Bool)

(declare-fun b_next!113093 () Bool)

(assert (=> b!4033163 (= b_free!112389 (not b_next!113093))))

(declare-fun tp!1225562 () Bool)

(declare-fun b_and!309935 () Bool)

(assert (=> b!4033163 (= tp!1225562 b_and!309935)))

(declare-fun b_free!112391 () Bool)

(declare-fun b_next!113095 () Bool)

(assert (=> b!4033163 (= b_free!112391 (not b_next!113095))))

(declare-fun tp!1225550 () Bool)

(declare-fun b_and!309937 () Bool)

(assert (=> b!4033163 (= tp!1225550 b_and!309937)))

(declare-fun b!4033147 () Bool)

(declare-fun e!2502545 () Bool)

(declare-fun e!2502540 () Bool)

(assert (=> b!4033147 (= e!2502545 e!2502540)))

(declare-fun res!1642046 () Bool)

(assert (=> b!4033147 (=> (not res!1642046) (not e!2502540))))

(declare-fun lt!1434337 () Int)

(declare-fun lt!1434322 () Int)

(assert (=> b!4033147 (= res!1642046 (>= lt!1434337 lt!1434322))))

(declare-datatypes ((C!23820 0))(
  ( (C!23821 (val!14004 Int)) )
))
(declare-datatypes ((List!43327 0))(
  ( (Nil!43203) (Cons!43203 (h!48623 C!23820) (t!334354 List!43327)) )
))
(declare-fun lt!1434345 () List!43327)

(declare-fun size!32291 (List!43327) Int)

(assert (=> b!4033147 (= lt!1434322 (size!32291 lt!1434345))))

(declare-fun prefix!494 () List!43327)

(assert (=> b!4033147 (= lt!1434337 (size!32291 prefix!494))))

(declare-datatypes ((IArray!26251 0))(
  ( (IArray!26252 (innerList!13183 List!43327)) )
))
(declare-datatypes ((Conc!13123 0))(
  ( (Node!13123 (left!32541 Conc!13123) (right!32871 Conc!13123) (csize!26476 Int) (cheight!13334 Int)) (Leaf!20286 (xs!16429 IArray!26251) (csize!26477 Int)) (Empty!13123) )
))
(declare-datatypes ((BalanceConc!25840 0))(
  ( (BalanceConc!25841 (c!696600 Conc!13123)) )
))
(declare-datatypes ((List!43328 0))(
  ( (Nil!43204) (Cons!43204 (h!48624 (_ BitVec 16)) (t!334355 List!43328)) )
))
(declare-datatypes ((TokenValue!7142 0))(
  ( (FloatLiteralValue!14284 (text!50439 List!43328)) (TokenValueExt!7141 (__x!26501 Int)) (Broken!35710 (value!217600 List!43328)) (Object!7265) (End!7142) (Def!7142) (Underscore!7142) (Match!7142) (Else!7142) (Error!7142) (Case!7142) (If!7142) (Extends!7142) (Abstract!7142) (Class!7142) (Val!7142) (DelimiterValue!14284 (del!7202 List!43328)) (KeywordValue!7148 (value!217601 List!43328)) (CommentValue!14284 (value!217602 List!43328)) (WhitespaceValue!14284 (value!217603 List!43328)) (IndentationValue!7142 (value!217604 List!43328)) (String!49427) (Int32!7142) (Broken!35711 (value!217605 List!43328)) (Boolean!7143) (Unit!62379) (OperatorValue!7145 (op!7202 List!43328)) (IdentifierValue!14284 (value!217606 List!43328)) (IdentifierValue!14285 (value!217607 List!43328)) (WhitespaceValue!14285 (value!217608 List!43328)) (True!14284) (False!14284) (Broken!35712 (value!217609 List!43328)) (Broken!35713 (value!217610 List!43328)) (True!14285) (RightBrace!7142) (RightBracket!7142) (Colon!7142) (Null!7142) (Comma!7142) (LeftBracket!7142) (False!14285) (LeftBrace!7142) (ImaginaryLiteralValue!7142 (text!50440 List!43328)) (StringLiteralValue!21426 (value!217611 List!43328)) (EOFValue!7142 (value!217612 List!43328)) (IdentValue!7142 (value!217613 List!43328)) (DelimiterValue!14285 (value!217614 List!43328)) (DedentValue!7142 (value!217615 List!43328)) (NewLineValue!7142 (value!217616 List!43328)) (IntegerValue!21426 (value!217617 (_ BitVec 32)) (text!50441 List!43328)) (IntegerValue!21427 (value!217618 Int) (text!50442 List!43328)) (Times!7142) (Or!7142) (Equal!7142) (Minus!7142) (Broken!35714 (value!217619 List!43328)) (And!7142) (Div!7142) (LessEqual!7142) (Mod!7142) (Concat!18959) (Not!7142) (Plus!7142) (SpaceValue!7142 (value!217620 List!43328)) (IntegerValue!21428 (value!217621 Int) (text!50443 List!43328)) (StringLiteralValue!21427 (text!50444 List!43328)) (FloatLiteralValue!14285 (text!50445 List!43328)) (BytesLiteralValue!7142 (value!217622 List!43328)) (CommentValue!14285 (value!217623 List!43328)) (StringLiteralValue!21428 (value!217624 List!43328)) (ErrorTokenValue!7142 (msg!7203 List!43328)) )
))
(declare-datatypes ((Regex!11817 0))(
  ( (ElementMatch!11817 (c!696601 C!23820)) (Concat!18960 (regOne!24146 Regex!11817) (regTwo!24146 Regex!11817)) (EmptyExpr!11817) (Star!11817 (reg!12146 Regex!11817)) (EmptyLang!11817) (Union!11817 (regOne!24147 Regex!11817) (regTwo!24147 Regex!11817)) )
))
(declare-datatypes ((String!49428 0))(
  ( (String!49429 (value!217625 String)) )
))
(declare-datatypes ((TokenValueInjection!13712 0))(
  ( (TokenValueInjection!13713 (toValue!9440 Int) (toChars!9299 Int)) )
))
(declare-datatypes ((Rule!13624 0))(
  ( (Rule!13625 (regex!6912 Regex!11817) (tag!7772 String!49428) (isSeparator!6912 Bool) (transformation!6912 TokenValueInjection!13712)) )
))
(declare-datatypes ((Token!12962 0))(
  ( (Token!12963 (value!217626 TokenValue!7142) (rule!9976 Rule!13624) (size!32292 Int) (originalCharacters!7512 List!43327)) )
))
(declare-fun token!484 () Token!12962)

(declare-fun list!16076 (BalanceConc!25840) List!43327)

(declare-fun charsOf!4728 (Token!12962) BalanceConc!25840)

(assert (=> b!4033147 (= lt!1434345 (list!16076 (charsOf!4728 token!484)))))

(declare-fun b!4033148 () Bool)

(declare-fun e!2502547 () Bool)

(declare-fun e!2502536 () Bool)

(assert (=> b!4033148 (= e!2502547 e!2502536)))

(declare-fun res!1642037 () Bool)

(assert (=> b!4033148 (=> res!1642037 e!2502536)))

(declare-fun lt!1434353 () List!43327)

(declare-fun isPrefix!3999 (List!43327 List!43327) Bool)

(assert (=> b!4033148 (= res!1642037 (not (isPrefix!3999 lt!1434345 lt!1434353)))))

(assert (=> b!4033148 (isPrefix!3999 prefix!494 lt!1434353)))

(declare-datatypes ((Unit!62380 0))(
  ( (Unit!62381) )
))
(declare-fun lt!1434321 () Unit!62380)

(declare-fun suffix!1299 () List!43327)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2834 (List!43327 List!43327) Unit!62380)

(assert (=> b!4033148 (= lt!1434321 (lemmaConcatTwoListThenFirstIsPrefix!2834 prefix!494 suffix!1299))))

(declare-fun lt!1434351 () List!43327)

(assert (=> b!4033148 (isPrefix!3999 lt!1434345 lt!1434351)))

(declare-fun lt!1434318 () Unit!62380)

(declare-fun suffixResult!105 () List!43327)

(assert (=> b!4033148 (= lt!1434318 (lemmaConcatTwoListThenFirstIsPrefix!2834 lt!1434345 suffixResult!105))))

(declare-fun e!2502541 () Bool)

(declare-fun b!4033149 () Bool)

(assert (=> b!4033149 (= e!2502541 (and (= (size!32292 token!484) lt!1434322) (= (originalCharacters!7512 token!484) lt!1434345)))))

(declare-fun b!4033150 () Bool)

(declare-fun e!2502550 () Bool)

(declare-fun e!2502546 () Bool)

(assert (=> b!4033150 (= e!2502550 e!2502546)))

(declare-fun res!1642054 () Bool)

(assert (=> b!4033150 (=> res!1642054 e!2502546)))

(declare-datatypes ((tuple2!42286 0))(
  ( (tuple2!42287 (_1!24277 Token!12962) (_2!24277 List!43327)) )
))
(declare-datatypes ((Option!9326 0))(
  ( (None!9325) (Some!9325 (v!39717 tuple2!42286)) )
))
(declare-fun lt!1434352 () Option!9326)

(declare-fun lt!1434333 () Option!9326)

(assert (=> b!4033150 (= res!1642054 (not (= lt!1434352 lt!1434333)))))

(declare-fun lt!1434354 () Token!12962)

(assert (=> b!4033150 (= lt!1434352 (Some!9325 (tuple2!42287 lt!1434354 suffixResult!105)))))

(declare-datatypes ((LexerInterface!6501 0))(
  ( (LexerInterfaceExt!6498 (__x!26502 Int)) (Lexer!6499) )
))
(declare-fun thiss!21717 () LexerInterface!6501)

(declare-fun maxPrefixOneRule!2811 (LexerInterface!6501 Rule!13624 List!43327) Option!9326)

(assert (=> b!4033150 (= lt!1434352 (maxPrefixOneRule!2811 thiss!21717 (rule!9976 token!484) lt!1434353))))

(declare-fun lt!1434350 () TokenValue!7142)

(assert (=> b!4033150 (= lt!1434354 (Token!12963 lt!1434350 (rule!9976 token!484) lt!1434322 lt!1434345))))

(declare-fun apply!10101 (TokenValueInjection!13712 BalanceConc!25840) TokenValue!7142)

(declare-fun seqFromList!5129 (List!43327) BalanceConc!25840)

(assert (=> b!4033150 (= lt!1434350 (apply!10101 (transformation!6912 (rule!9976 token!484)) (seqFromList!5129 lt!1434345)))))

(declare-datatypes ((List!43329 0))(
  ( (Nil!43205) (Cons!43205 (h!48625 Rule!13624) (t!334356 List!43329)) )
))
(declare-fun rules!2999 () List!43329)

(declare-fun lt!1434346 () Unit!62380)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1617 (LexerInterface!6501 List!43329 List!43327 List!43327 List!43327 Rule!13624) Unit!62380)

(assert (=> b!4033150 (= lt!1434346 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1617 thiss!21717 rules!2999 lt!1434345 lt!1434353 suffixResult!105 (rule!9976 token!484)))))

(declare-fun lt!1434334 () List!43327)

(assert (=> b!4033150 (= lt!1434334 suffixResult!105)))

(declare-fun lt!1434344 () Unit!62380)

(declare-fun lemmaSamePrefixThenSameSuffix!2160 (List!43327 List!43327 List!43327 List!43327 List!43327) Unit!62380)

(assert (=> b!4033150 (= lt!1434344 (lemmaSamePrefixThenSameSuffix!2160 lt!1434345 lt!1434334 lt!1434345 suffixResult!105 lt!1434353))))

(declare-fun lt!1434340 () List!43327)

(assert (=> b!4033150 (isPrefix!3999 lt!1434345 lt!1434340)))

(declare-fun lt!1434325 () Unit!62380)

(assert (=> b!4033150 (= lt!1434325 (lemmaConcatTwoListThenFirstIsPrefix!2834 lt!1434345 lt!1434334))))

(declare-fun b!4033151 () Bool)

(declare-fun e!2502556 () Bool)

(declare-fun tp_is_empty!20605 () Bool)

(declare-fun tp!1225558 () Bool)

(assert (=> b!4033151 (= e!2502556 (and tp_is_empty!20605 tp!1225558))))

(declare-fun b!4033152 () Bool)

(declare-fun e!2502554 () Bool)

(assert (=> b!4033152 (= e!2502536 e!2502554)))

(declare-fun res!1642055 () Bool)

(assert (=> b!4033152 (=> res!1642055 e!2502554)))

(declare-fun lt!1434327 () List!43327)

(assert (=> b!4033152 (= res!1642055 (not (= lt!1434327 prefix!494)))))

(declare-fun lt!1434320 () List!43327)

(declare-fun ++!11314 (List!43327 List!43327) List!43327)

(assert (=> b!4033152 (= lt!1434327 (++!11314 lt!1434345 lt!1434320))))

(declare-fun getSuffix!2416 (List!43327 List!43327) List!43327)

(assert (=> b!4033152 (= lt!1434320 (getSuffix!2416 prefix!494 lt!1434345))))

(assert (=> b!4033152 (isPrefix!3999 lt!1434345 prefix!494)))

(declare-fun lt!1434319 () Unit!62380)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!563 (List!43327 List!43327 List!43327) Unit!62380)

(assert (=> b!4033152 (= lt!1434319 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!563 prefix!494 lt!1434345 lt!1434353))))

(declare-fun b!4033153 () Bool)

(declare-fun e!2502559 () Bool)

(declare-fun tp!1225555 () Bool)

(declare-fun e!2502548 () Bool)

(declare-fun inv!57717 (String!49428) Bool)

(declare-fun inv!57720 (TokenValueInjection!13712) Bool)

(assert (=> b!4033153 (= e!2502548 (and tp!1225555 (inv!57717 (tag!7772 (h!48625 rules!2999))) (inv!57720 (transformation!6912 (h!48625 rules!2999))) e!2502559))))

(declare-fun b!4033154 () Bool)

(declare-fun res!1642049 () Bool)

(assert (=> b!4033154 (=> (not res!1642049) (not e!2502545))))

(declare-fun rulesInvariant!5844 (LexerInterface!6501 List!43329) Bool)

(assert (=> b!4033154 (= res!1642049 (rulesInvariant!5844 thiss!21717 rules!2999))))

(assert (=> b!4033155 (= e!2502559 (and tp!1225556 tp!1225559))))

(declare-fun b!4033156 () Bool)

(declare-fun e!2502543 () Bool)

(declare-fun tp!1225557 () Bool)

(assert (=> b!4033156 (= e!2502543 (and tp_is_empty!20605 tp!1225557))))

(declare-fun b!4033157 () Bool)

(declare-fun e!2502551 () Bool)

(assert (=> b!4033157 (= e!2502551 (not e!2502547))))

(declare-fun res!1642052 () Bool)

(assert (=> b!4033157 (=> res!1642052 e!2502547)))

(assert (=> b!4033157 (= res!1642052 (not (= lt!1434351 lt!1434353)))))

(assert (=> b!4033157 (= lt!1434351 (++!11314 lt!1434345 suffixResult!105))))

(declare-fun lt!1434329 () Unit!62380)

(declare-fun lemmaInv!1121 (TokenValueInjection!13712) Unit!62380)

(assert (=> b!4033157 (= lt!1434329 (lemmaInv!1121 (transformation!6912 (rule!9976 token!484))))))

(declare-fun ruleValid!2842 (LexerInterface!6501 Rule!13624) Bool)

(assert (=> b!4033157 (ruleValid!2842 thiss!21717 (rule!9976 token!484))))

(declare-fun lt!1434343 () Unit!62380)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1912 (LexerInterface!6501 Rule!13624 List!43329) Unit!62380)

(assert (=> b!4033157 (= lt!1434343 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1912 thiss!21717 (rule!9976 token!484) rules!2999))))

(declare-fun b!4033158 () Bool)

(declare-fun res!1642040 () Bool)

(assert (=> b!4033158 (=> (not res!1642040) (not e!2502545))))

(declare-fun newSuffix!27 () List!43327)

(assert (=> b!4033158 (= res!1642040 (>= (size!32291 suffix!1299) (size!32291 newSuffix!27)))))

(declare-fun b!4033159 () Bool)

(declare-fun e!2502560 () Bool)

(declare-fun tp!1225551 () Bool)

(assert (=> b!4033159 (= e!2502560 (and e!2502548 tp!1225551))))

(declare-fun b!4033160 () Bool)

(declare-fun e!2502552 () Bool)

(assert (=> b!4033160 (= e!2502552 e!2502551)))

(declare-fun res!1642050 () Bool)

(assert (=> b!4033160 (=> (not res!1642050) (not e!2502551))))

(declare-fun maxPrefix!3799 (LexerInterface!6501 List!43329 List!43327) Option!9326)

(assert (=> b!4033160 (= res!1642050 (= (maxPrefix!3799 thiss!21717 rules!2999 lt!1434353) lt!1434333))))

(declare-fun lt!1434335 () tuple2!42286)

(assert (=> b!4033160 (= lt!1434333 (Some!9325 lt!1434335))))

(assert (=> b!4033160 (= lt!1434335 (tuple2!42287 token!484 suffixResult!105))))

(assert (=> b!4033160 (= lt!1434353 (++!11314 prefix!494 suffix!1299))))

(declare-fun b!4033161 () Bool)

(assert (=> b!4033161 (= e!2502554 e!2502550)))

(declare-fun res!1642053 () Bool)

(assert (=> b!4033161 (=> res!1642053 e!2502550)))

(declare-fun lt!1434348 () List!43327)

(assert (=> b!4033161 (= res!1642053 (or (not (= lt!1434353 lt!1434348)) (not (= lt!1434353 lt!1434340))))))

(assert (=> b!4033161 (= lt!1434348 lt!1434340)))

(assert (=> b!4033161 (= lt!1434340 (++!11314 lt!1434345 lt!1434334))))

(assert (=> b!4033161 (= lt!1434348 (++!11314 lt!1434327 suffix!1299))))

(assert (=> b!4033161 (= lt!1434334 (++!11314 lt!1434320 suffix!1299))))

(declare-fun lt!1434330 () Unit!62380)

(declare-fun lemmaConcatAssociativity!2616 (List!43327 List!43327 List!43327) Unit!62380)

(assert (=> b!4033161 (= lt!1434330 (lemmaConcatAssociativity!2616 lt!1434345 lt!1434320 suffix!1299))))

(declare-fun b!4033162 () Bool)

(declare-fun e!2502555 () Bool)

(declare-fun tp!1225553 () Bool)

(assert (=> b!4033162 (= e!2502555 (and tp_is_empty!20605 tp!1225553))))

(declare-fun e!2502549 () Bool)

(assert (=> b!4033163 (= e!2502549 (and tp!1225562 tp!1225550))))

(declare-fun b!4033164 () Bool)

(declare-fun res!1642041 () Bool)

(assert (=> b!4033164 (=> (not res!1642041) (not e!2502541))))

(assert (=> b!4033164 (= res!1642041 (= (size!32292 token!484) (size!32291 (originalCharacters!7512 token!484))))))

(declare-fun b!4033165 () Bool)

(declare-fun e!2502537 () Bool)

(declare-fun tp!1225561 () Bool)

(assert (=> b!4033165 (= e!2502537 (and tp_is_empty!20605 tp!1225561))))

(declare-fun b!4033166 () Bool)

(declare-fun res!1642051 () Bool)

(assert (=> b!4033166 (=> (not res!1642051) (not e!2502545))))

(assert (=> b!4033166 (= res!1642051 (isPrefix!3999 newSuffix!27 suffix!1299))))

(declare-fun b!4033167 () Bool)

(assert (=> b!4033167 (= e!2502540 e!2502552)))

(declare-fun res!1642043 () Bool)

(assert (=> b!4033167 (=> (not res!1642043) (not e!2502552))))

(declare-fun lt!1434326 () List!43327)

(declare-fun lt!1434331 () List!43327)

(assert (=> b!4033167 (= res!1642043 (= lt!1434326 lt!1434331))))

(assert (=> b!4033167 (= lt!1434331 (++!11314 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43327)

(assert (=> b!4033167 (= lt!1434326 (++!11314 lt!1434345 newSuffixResult!27))))

(declare-fun b!4033168 () Bool)

(declare-fun e!2502558 () Bool)

(assert (=> b!4033168 (= e!2502546 e!2502558)))

(declare-fun res!1642042 () Bool)

(assert (=> b!4033168 (=> res!1642042 e!2502558)))

(declare-fun matchR!5770 (Regex!11817 List!43327) Bool)

(assert (=> b!4033168 (= res!1642042 (not (matchR!5770 (regex!6912 (rule!9976 token!484)) lt!1434345)))))

(assert (=> b!4033168 (isPrefix!3999 lt!1434345 lt!1434331)))

(declare-fun lt!1434317 () Unit!62380)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!792 (List!43327 List!43327 List!43327) Unit!62380)

(assert (=> b!4033168 (= lt!1434317 (lemmaPrefixStaysPrefixWhenAddingToSuffix!792 lt!1434345 prefix!494 newSuffix!27))))

(declare-fun lt!1434349 () Unit!62380)

(assert (=> b!4033168 (= lt!1434349 (lemmaPrefixStaysPrefixWhenAddingToSuffix!792 lt!1434345 prefix!494 suffix!1299))))

(declare-fun b!4033169 () Bool)

(declare-fun res!1642038 () Bool)

(assert (=> b!4033169 (=> (not res!1642038) (not e!2502545))))

(declare-fun isEmpty!25781 (List!43329) Bool)

(assert (=> b!4033169 (= res!1642038 (not (isEmpty!25781 rules!2999)))))

(declare-fun b!4033170 () Bool)

(declare-fun res!1642045 () Bool)

(assert (=> b!4033170 (=> (not res!1642045) (not e!2502541))))

(assert (=> b!4033170 (= res!1642045 (= (value!217626 token!484) lt!1434350))))

(declare-fun b!4033171 () Bool)

(declare-fun e!2502542 () Bool)

(assert (=> b!4033171 (= e!2502542 true)))

(declare-fun lt!1434341 () List!43327)

(declare-fun lt!1434332 () Option!9326)

(assert (=> b!4033171 (= lt!1434341 (list!16076 (charsOf!4728 (_1!24277 (v!39717 lt!1434332)))))))

(declare-fun lt!1434347 () Unit!62380)

(assert (=> b!4033171 (= lt!1434347 (lemmaInv!1121 (transformation!6912 (rule!9976 (_1!24277 (v!39717 lt!1434332))))))))

(assert (=> b!4033171 (ruleValid!2842 thiss!21717 (rule!9976 (_1!24277 (v!39717 lt!1434332))))))

(declare-fun lt!1434324 () Unit!62380)

(assert (=> b!4033171 (= lt!1434324 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1912 thiss!21717 (rule!9976 (_1!24277 (v!39717 lt!1434332))) rules!2999))))

(declare-fun lt!1434338 () Unit!62380)

(declare-fun lemmaCharactersSize!1431 (Token!12962) Unit!62380)

(assert (=> b!4033171 (= lt!1434338 (lemmaCharactersSize!1431 token!484))))

(declare-fun lt!1434355 () Unit!62380)

(assert (=> b!4033171 (= lt!1434355 (lemmaCharactersSize!1431 (_1!24277 (v!39717 lt!1434332))))))

(declare-fun b!4033172 () Bool)

(declare-fun e!2502544 () Bool)

(declare-fun tp!1225552 () Bool)

(assert (=> b!4033172 (= e!2502544 (and tp_is_empty!20605 tp!1225552))))

(declare-fun e!2502562 () Bool)

(declare-fun b!4033173 () Bool)

(declare-fun tp!1225560 () Bool)

(declare-fun e!2502561 () Bool)

(declare-fun inv!21 (TokenValue!7142) Bool)

(assert (=> b!4033173 (= e!2502561 (and (inv!21 (value!217626 token!484)) e!2502562 tp!1225560))))

(declare-fun b!4033174 () Bool)

(declare-fun tp!1225554 () Bool)

(assert (=> b!4033174 (= e!2502562 (and tp!1225554 (inv!57717 (tag!7772 (rule!9976 token!484))) (inv!57720 (transformation!6912 (rule!9976 token!484))) e!2502549))))

(declare-fun b!4033175 () Bool)

(declare-fun e!2502557 () Bool)

(assert (=> b!4033175 (= e!2502558 e!2502557)))

(declare-fun res!1642048 () Bool)

(assert (=> b!4033175 (=> res!1642048 e!2502557)))

(declare-fun lt!1434342 () List!43327)

(assert (=> b!4033175 (= res!1642048 (not (= lt!1434342 lt!1434353)))))

(declare-fun lt!1434339 () List!43327)

(assert (=> b!4033175 (= lt!1434342 (++!11314 lt!1434345 lt!1434339))))

(assert (=> b!4033175 (= lt!1434339 (getSuffix!2416 lt!1434353 lt!1434345))))

(assert (=> b!4033175 e!2502541))

(declare-fun res!1642044 () Bool)

(assert (=> b!4033175 (=> (not res!1642044) (not e!2502541))))

(assert (=> b!4033175 (= res!1642044 (isPrefix!3999 lt!1434353 lt!1434353))))

(declare-fun lt!1434323 () Unit!62380)

(declare-fun lemmaIsPrefixRefl!2566 (List!43327 List!43327) Unit!62380)

(assert (=> b!4033175 (= lt!1434323 (lemmaIsPrefixRefl!2566 lt!1434353 lt!1434353))))

(declare-fun res!1642047 () Bool)

(assert (=> start!380036 (=> (not res!1642047) (not e!2502545))))

(get-info :version)

(assert (=> start!380036 (= res!1642047 ((_ is Lexer!6499) thiss!21717))))

(assert (=> start!380036 e!2502545))

(assert (=> start!380036 e!2502537))

(declare-fun inv!57721 (Token!12962) Bool)

(assert (=> start!380036 (and (inv!57721 token!484) e!2502561)))

(assert (=> start!380036 e!2502556))

(assert (=> start!380036 e!2502555))

(assert (=> start!380036 e!2502544))

(assert (=> start!380036 true))

(assert (=> start!380036 e!2502560))

(assert (=> start!380036 e!2502543))

(declare-fun b!4033176 () Bool)

(assert (=> b!4033176 (= e!2502557 e!2502542)))

(declare-fun res!1642039 () Bool)

(assert (=> b!4033176 (=> res!1642039 e!2502542)))

(assert (=> b!4033176 (= res!1642039 (not ((_ is Some!9325) lt!1434332)))))

(assert (=> b!4033176 (= lt!1434332 (maxPrefix!3799 thiss!21717 rules!2999 lt!1434331))))

(assert (=> b!4033176 (and (= suffixResult!105 lt!1434339) (= lt!1434335 (tuple2!42287 lt!1434354 lt!1434339)))))

(declare-fun lt!1434328 () Unit!62380)

(assert (=> b!4033176 (= lt!1434328 (lemmaSamePrefixThenSameSuffix!2160 lt!1434345 suffixResult!105 lt!1434345 lt!1434339 lt!1434353))))

(assert (=> b!4033176 (isPrefix!3999 lt!1434345 lt!1434342)))

(declare-fun lt!1434336 () Unit!62380)

(assert (=> b!4033176 (= lt!1434336 (lemmaConcatTwoListThenFirstIsPrefix!2834 lt!1434345 lt!1434339))))

(assert (= (and start!380036 res!1642047) b!4033169))

(assert (= (and b!4033169 res!1642038) b!4033154))

(assert (= (and b!4033154 res!1642049) b!4033158))

(assert (= (and b!4033158 res!1642040) b!4033166))

(assert (= (and b!4033166 res!1642051) b!4033147))

(assert (= (and b!4033147 res!1642046) b!4033167))

(assert (= (and b!4033167 res!1642043) b!4033160))

(assert (= (and b!4033160 res!1642050) b!4033157))

(assert (= (and b!4033157 (not res!1642052)) b!4033148))

(assert (= (and b!4033148 (not res!1642037)) b!4033152))

(assert (= (and b!4033152 (not res!1642055)) b!4033161))

(assert (= (and b!4033161 (not res!1642053)) b!4033150))

(assert (= (and b!4033150 (not res!1642054)) b!4033168))

(assert (= (and b!4033168 (not res!1642042)) b!4033175))

(assert (= (and b!4033175 res!1642044) b!4033170))

(assert (= (and b!4033170 res!1642045) b!4033164))

(assert (= (and b!4033164 res!1642041) b!4033149))

(assert (= (and b!4033175 (not res!1642048)) b!4033176))

(assert (= (and b!4033176 (not res!1642039)) b!4033171))

(assert (= (and start!380036 ((_ is Cons!43203) prefix!494)) b!4033165))

(assert (= b!4033174 b!4033163))

(assert (= b!4033173 b!4033174))

(assert (= start!380036 b!4033173))

(assert (= (and start!380036 ((_ is Cons!43203) suffixResult!105)) b!4033151))

(assert (= (and start!380036 ((_ is Cons!43203) suffix!1299)) b!4033162))

(assert (= (and start!380036 ((_ is Cons!43203) newSuffix!27)) b!4033172))

(assert (= b!4033153 b!4033155))

(assert (= b!4033159 b!4033153))

(assert (= (and start!380036 ((_ is Cons!43205) rules!2999)) b!4033159))

(assert (= (and start!380036 ((_ is Cons!43203) newSuffixResult!27)) b!4033156))

(declare-fun m!4626143 () Bool)

(assert (=> b!4033173 m!4626143))

(declare-fun m!4626145 () Bool)

(assert (=> b!4033166 m!4626145))

(declare-fun m!4626147 () Bool)

(assert (=> b!4033161 m!4626147))

(declare-fun m!4626149 () Bool)

(assert (=> b!4033161 m!4626149))

(declare-fun m!4626151 () Bool)

(assert (=> b!4033161 m!4626151))

(declare-fun m!4626153 () Bool)

(assert (=> b!4033161 m!4626153))

(declare-fun m!4626155 () Bool)

(assert (=> b!4033150 m!4626155))

(declare-fun m!4626157 () Bool)

(assert (=> b!4033150 m!4626157))

(declare-fun m!4626159 () Bool)

(assert (=> b!4033150 m!4626159))

(declare-fun m!4626161 () Bool)

(assert (=> b!4033150 m!4626161))

(declare-fun m!4626163 () Bool)

(assert (=> b!4033150 m!4626163))

(declare-fun m!4626165 () Bool)

(assert (=> b!4033150 m!4626165))

(assert (=> b!4033150 m!4626165))

(declare-fun m!4626167 () Bool)

(assert (=> b!4033150 m!4626167))

(declare-fun m!4626169 () Bool)

(assert (=> b!4033153 m!4626169))

(declare-fun m!4626171 () Bool)

(assert (=> b!4033153 m!4626171))

(declare-fun m!4626173 () Bool)

(assert (=> b!4033160 m!4626173))

(declare-fun m!4626175 () Bool)

(assert (=> b!4033160 m!4626175))

(declare-fun m!4626177 () Bool)

(assert (=> b!4033158 m!4626177))

(declare-fun m!4626179 () Bool)

(assert (=> b!4033158 m!4626179))

(declare-fun m!4626181 () Bool)

(assert (=> start!380036 m!4626181))

(declare-fun m!4626183 () Bool)

(assert (=> b!4033174 m!4626183))

(declare-fun m!4626185 () Bool)

(assert (=> b!4033174 m!4626185))

(declare-fun m!4626187 () Bool)

(assert (=> b!4033147 m!4626187))

(declare-fun m!4626189 () Bool)

(assert (=> b!4033147 m!4626189))

(declare-fun m!4626191 () Bool)

(assert (=> b!4033147 m!4626191))

(assert (=> b!4033147 m!4626191))

(declare-fun m!4626193 () Bool)

(assert (=> b!4033147 m!4626193))

(declare-fun m!4626195 () Bool)

(assert (=> b!4033175 m!4626195))

(declare-fun m!4626197 () Bool)

(assert (=> b!4033175 m!4626197))

(declare-fun m!4626199 () Bool)

(assert (=> b!4033175 m!4626199))

(declare-fun m!4626201 () Bool)

(assert (=> b!4033175 m!4626201))

(declare-fun m!4626203 () Bool)

(assert (=> b!4033164 m!4626203))

(declare-fun m!4626205 () Bool)

(assert (=> b!4033176 m!4626205))

(declare-fun m!4626207 () Bool)

(assert (=> b!4033176 m!4626207))

(declare-fun m!4626209 () Bool)

(assert (=> b!4033176 m!4626209))

(declare-fun m!4626211 () Bool)

(assert (=> b!4033176 m!4626211))

(declare-fun m!4626213 () Bool)

(assert (=> b!4033148 m!4626213))

(declare-fun m!4626215 () Bool)

(assert (=> b!4033148 m!4626215))

(declare-fun m!4626217 () Bool)

(assert (=> b!4033148 m!4626217))

(declare-fun m!4626219 () Bool)

(assert (=> b!4033148 m!4626219))

(declare-fun m!4626221 () Bool)

(assert (=> b!4033148 m!4626221))

(declare-fun m!4626223 () Bool)

(assert (=> b!4033154 m!4626223))

(declare-fun m!4626225 () Bool)

(assert (=> b!4033168 m!4626225))

(declare-fun m!4626227 () Bool)

(assert (=> b!4033168 m!4626227))

(declare-fun m!4626229 () Bool)

(assert (=> b!4033168 m!4626229))

(declare-fun m!4626231 () Bool)

(assert (=> b!4033168 m!4626231))

(declare-fun m!4626233 () Bool)

(assert (=> b!4033157 m!4626233))

(declare-fun m!4626235 () Bool)

(assert (=> b!4033157 m!4626235))

(declare-fun m!4626237 () Bool)

(assert (=> b!4033157 m!4626237))

(declare-fun m!4626239 () Bool)

(assert (=> b!4033157 m!4626239))

(declare-fun m!4626241 () Bool)

(assert (=> b!4033171 m!4626241))

(declare-fun m!4626243 () Bool)

(assert (=> b!4033171 m!4626243))

(declare-fun m!4626245 () Bool)

(assert (=> b!4033171 m!4626245))

(declare-fun m!4626247 () Bool)

(assert (=> b!4033171 m!4626247))

(declare-fun m!4626249 () Bool)

(assert (=> b!4033171 m!4626249))

(assert (=> b!4033171 m!4626249))

(declare-fun m!4626251 () Bool)

(assert (=> b!4033171 m!4626251))

(declare-fun m!4626253 () Bool)

(assert (=> b!4033171 m!4626253))

(declare-fun m!4626255 () Bool)

(assert (=> b!4033167 m!4626255))

(declare-fun m!4626257 () Bool)

(assert (=> b!4033167 m!4626257))

(declare-fun m!4626259 () Bool)

(assert (=> b!4033169 m!4626259))

(declare-fun m!4626261 () Bool)

(assert (=> b!4033152 m!4626261))

(declare-fun m!4626263 () Bool)

(assert (=> b!4033152 m!4626263))

(declare-fun m!4626265 () Bool)

(assert (=> b!4033152 m!4626265))

(declare-fun m!4626267 () Bool)

(assert (=> b!4033152 m!4626267))

(check-sat (not b!4033172) (not b!4033148) tp_is_empty!20605 b_and!309937 (not b!4033152) (not b!4033169) (not b_next!113091) (not b!4033158) (not b!4033173) (not b!4033171) (not b!4033153) (not b!4033162) (not b_next!113093) b_and!309933 (not b!4033147) (not b!4033165) b_and!309935 (not b!4033174) (not b!4033166) (not b!4033157) (not b_next!113089) (not b!4033176) (not b!4033161) (not b!4033164) (not start!380036) (not b!4033154) (not b!4033150) (not b!4033156) (not b!4033167) (not b!4033160) (not b!4033168) b_and!309931 (not b!4033175) (not b_next!113095) (not b!4033151) (not b!4033159))
(check-sat b_and!309935 (not b_next!113089) b_and!309937 b_and!309931 (not b_next!113091) (not b_next!113095) (not b_next!113093) b_and!309933)
