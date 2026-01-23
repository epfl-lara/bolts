; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361808 () Bool)

(assert start!361808)

(declare-fun b!3859569 () Bool)

(declare-fun b_free!103741 () Bool)

(declare-fun b_next!104445 () Bool)

(assert (=> b!3859569 (= b_free!103741 (not b_next!104445))))

(declare-fun tp!1170020 () Bool)

(declare-fun b_and!288867 () Bool)

(assert (=> b!3859569 (= tp!1170020 b_and!288867)))

(declare-fun b_free!103743 () Bool)

(declare-fun b_next!104447 () Bool)

(assert (=> b!3859569 (= b_free!103743 (not b_next!104447))))

(declare-fun tp!1170034 () Bool)

(declare-fun b_and!288869 () Bool)

(assert (=> b!3859569 (= tp!1170034 b_and!288869)))

(declare-fun b!3859549 () Bool)

(declare-fun b_free!103745 () Bool)

(declare-fun b_next!104449 () Bool)

(assert (=> b!3859549 (= b_free!103745 (not b_next!104449))))

(declare-fun tp!1170027 () Bool)

(declare-fun b_and!288871 () Bool)

(assert (=> b!3859549 (= tp!1170027 b_and!288871)))

(declare-fun b_free!103747 () Bool)

(declare-fun b_next!104451 () Bool)

(assert (=> b!3859549 (= b_free!103747 (not b_next!104451))))

(declare-fun tp!1170036 () Bool)

(declare-fun b_and!288873 () Bool)

(assert (=> b!3859549 (= tp!1170036 b_and!288873)))

(declare-fun b!3859552 () Bool)

(declare-fun b_free!103749 () Bool)

(declare-fun b_next!104453 () Bool)

(assert (=> b!3859552 (= b_free!103749 (not b_next!104453))))

(declare-fun tp!1170033 () Bool)

(declare-fun b_and!288875 () Bool)

(assert (=> b!3859552 (= tp!1170033 b_and!288875)))

(declare-fun b_free!103751 () Bool)

(declare-fun b_next!104455 () Bool)

(assert (=> b!3859552 (= b_free!103751 (not b_next!104455))))

(declare-fun tp!1170026 () Bool)

(declare-fun b_and!288877 () Bool)

(assert (=> b!3859552 (= tp!1170026 b_and!288877)))

(declare-fun b!3859542 () Bool)

(declare-fun e!2386055 () Bool)

(declare-fun e!2386041 () Bool)

(assert (=> b!3859542 (= e!2386055 e!2386041)))

(declare-fun res!1562713 () Bool)

(assert (=> b!3859542 (=> res!1562713 e!2386041)))

(declare-datatypes ((List!41048 0))(
  ( (Nil!40924) (Cons!40924 (h!46344 (_ BitVec 16)) (t!313251 List!41048)) )
))
(declare-datatypes ((TokenValue!6564 0))(
  ( (FloatLiteralValue!13128 (text!46393 List!41048)) (TokenValueExt!6563 (__x!25345 Int)) (Broken!32820 (value!201127 List!41048)) (Object!6687) (End!6564) (Def!6564) (Underscore!6564) (Match!6564) (Else!6564) (Error!6564) (Case!6564) (If!6564) (Extends!6564) (Abstract!6564) (Class!6564) (Val!6564) (DelimiterValue!13128 (del!6624 List!41048)) (KeywordValue!6570 (value!201128 List!41048)) (CommentValue!13128 (value!201129 List!41048)) (WhitespaceValue!13128 (value!201130 List!41048)) (IndentationValue!6564 (value!201131 List!41048)) (String!46537) (Int32!6564) (Broken!32821 (value!201132 List!41048)) (Boolean!6565) (Unit!58583) (OperatorValue!6567 (op!6624 List!41048)) (IdentifierValue!13128 (value!201133 List!41048)) (IdentifierValue!13129 (value!201134 List!41048)) (WhitespaceValue!13129 (value!201135 List!41048)) (True!13128) (False!13128) (Broken!32822 (value!201136 List!41048)) (Broken!32823 (value!201137 List!41048)) (True!13129) (RightBrace!6564) (RightBracket!6564) (Colon!6564) (Null!6564) (Comma!6564) (LeftBracket!6564) (False!13129) (LeftBrace!6564) (ImaginaryLiteralValue!6564 (text!46394 List!41048)) (StringLiteralValue!19692 (value!201138 List!41048)) (EOFValue!6564 (value!201139 List!41048)) (IdentValue!6564 (value!201140 List!41048)) (DelimiterValue!13129 (value!201141 List!41048)) (DedentValue!6564 (value!201142 List!41048)) (NewLineValue!6564 (value!201143 List!41048)) (IntegerValue!19692 (value!201144 (_ BitVec 32)) (text!46395 List!41048)) (IntegerValue!19693 (value!201145 Int) (text!46396 List!41048)) (Times!6564) (Or!6564) (Equal!6564) (Minus!6564) (Broken!32824 (value!201146 List!41048)) (And!6564) (Div!6564) (LessEqual!6564) (Mod!6564) (Concat!17803) (Not!6564) (Plus!6564) (SpaceValue!6564 (value!201147 List!41048)) (IntegerValue!19694 (value!201148 Int) (text!46397 List!41048)) (StringLiteralValue!19693 (text!46398 List!41048)) (FloatLiteralValue!13129 (text!46399 List!41048)) (BytesLiteralValue!6564 (value!201149 List!41048)) (CommentValue!13129 (value!201150 List!41048)) (StringLiteralValue!19694 (value!201151 List!41048)) (ErrorTokenValue!6564 (msg!6625 List!41048)) )
))
(declare-datatypes ((C!22664 0))(
  ( (C!22665 (val!13426 Int)) )
))
(declare-datatypes ((Regex!11239 0))(
  ( (ElementMatch!11239 (c!671976 C!22664)) (Concat!17804 (regOne!22990 Regex!11239) (regTwo!22990 Regex!11239)) (EmptyExpr!11239) (Star!11239 (reg!11568 Regex!11239)) (EmptyLang!11239) (Union!11239 (regOne!22991 Regex!11239) (regTwo!22991 Regex!11239)) )
))
(declare-datatypes ((String!46538 0))(
  ( (String!46539 (value!201152 String)) )
))
(declare-datatypes ((List!41049 0))(
  ( (Nil!40925) (Cons!40925 (h!46345 C!22664) (t!313252 List!41049)) )
))
(declare-datatypes ((IArray!25095 0))(
  ( (IArray!25096 (innerList!12605 List!41049)) )
))
(declare-datatypes ((Conc!12545 0))(
  ( (Node!12545 (left!31526 Conc!12545) (right!31856 Conc!12545) (csize!25320 Int) (cheight!12756 Int)) (Leaf!19419 (xs!15851 IArray!25095) (csize!25321 Int)) (Empty!12545) )
))
(declare-datatypes ((BalanceConc!24684 0))(
  ( (BalanceConc!24685 (c!671977 Conc!12545)) )
))
(declare-datatypes ((TokenValueInjection!12556 0))(
  ( (TokenValueInjection!12557 (toValue!8762 Int) (toChars!8621 Int)) )
))
(declare-datatypes ((Rule!12468 0))(
  ( (Rule!12469 (regex!6334 Regex!11239) (tag!7194 String!46538) (isSeparator!6334 Bool) (transformation!6334 TokenValueInjection!12556)) )
))
(declare-datatypes ((Token!11806 0))(
  ( (Token!11807 (value!201153 TokenValue!6564) (rule!9200 Rule!12468) (size!30777 Int) (originalCharacters!6934 List!41049)) )
))
(declare-datatypes ((tuple2!40126 0))(
  ( (tuple2!40127 (_1!23197 Token!11806) (_2!23197 List!41049)) )
))
(declare-datatypes ((Option!8752 0))(
  ( (None!8751) (Some!8751 (v!39049 tuple2!40126)) )
))
(declare-fun lt!1341100 () Option!8752)

(declare-fun lt!1341091 () List!41049)

(declare-fun matchR!5386 (Regex!11239 List!41049) Bool)

(assert (=> b!3859542 (= res!1562713 (not (matchR!5386 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) lt!1341091)))))

(declare-datatypes ((LexerInterface!5923 0))(
  ( (LexerInterfaceExt!5920 (__x!25346 Int)) (Lexer!5921) )
))
(declare-fun thiss!20629 () LexerInterface!5923)

(declare-fun lt!1341097 () Int)

(declare-fun lt!1341109 () TokenValue!6564)

(declare-fun lt!1341102 () List!41049)

(declare-fun maxPrefixOneRule!2309 (LexerInterface!5923 Rule!12468 List!41049) Option!8752)

(assert (=> b!3859542 (= (maxPrefixOneRule!2309 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))) lt!1341102) (Some!8751 (tuple2!40127 (Token!11807 lt!1341109 (rule!9200 (_1!23197 (v!39049 lt!1341100))) lt!1341097 lt!1341091) (_2!23197 (v!39049 lt!1341100)))))))

(declare-datatypes ((List!41050 0))(
  ( (Nil!40926) (Cons!40926 (h!46346 Rule!12468) (t!313253 List!41050)) )
))
(declare-fun rules!2768 () List!41050)

(declare-datatypes ((Unit!58584 0))(
  ( (Unit!58585) )
))
(declare-fun lt!1341098 () Unit!58584)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1207 (LexerInterface!5923 List!41050 List!41049 List!41049 List!41049 Rule!12468) Unit!58584)

(assert (=> b!3859542 (= lt!1341098 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1207 thiss!20629 rules!2768 lt!1341091 lt!1341102 (_2!23197 (v!39049 lt!1341100)) (rule!9200 (_1!23197 (v!39049 lt!1341100)))))))

(declare-fun b!3859543 () Bool)

(declare-fun res!1562712 () Bool)

(declare-fun e!2386059 () Bool)

(assert (=> b!3859543 (=> res!1562712 e!2386059)))

(declare-datatypes ((List!41051 0))(
  ( (Nil!40927) (Cons!40927 (h!46347 Token!11806) (t!313254 List!41051)) )
))
(declare-datatypes ((tuple2!40128 0))(
  ( (tuple2!40129 (_1!23198 List!41051) (_2!23198 List!41049)) )
))
(declare-fun lt!1341105 () tuple2!40128)

(declare-fun lt!1341096 () tuple2!40128)

(declare-fun ++!10425 (List!41051 List!41051) List!41051)

(assert (=> b!3859543 (= res!1562712 (not (= lt!1341096 (tuple2!40129 (++!10425 (Cons!40927 (_1!23197 (v!39049 lt!1341100)) Nil!40927) (_1!23198 lt!1341105)) (_2!23198 lt!1341105)))))))

(declare-fun b!3859544 () Bool)

(declare-fun res!1562707 () Bool)

(declare-fun e!2386040 () Bool)

(assert (=> b!3859544 (=> (not res!1562707) (not e!2386040))))

(declare-fun isEmpty!24242 (List!41050) Bool)

(assert (=> b!3859544 (= res!1562707 (not (isEmpty!24242 rules!2768)))))

(declare-fun b!3859546 () Bool)

(declare-fun e!2386046 () Bool)

(declare-fun e!2386037 () Bool)

(assert (=> b!3859546 (= e!2386046 e!2386037)))

(declare-fun res!1562716 () Bool)

(assert (=> b!3859546 (=> res!1562716 e!2386037)))

(declare-fun lt!1341095 () Int)

(declare-fun lt!1341103 () Int)

(assert (=> b!3859546 (= res!1562716 (not (= (+ lt!1341097 lt!1341095) lt!1341103)))))

(declare-fun size!30778 (List!41049) Int)

(assert (=> b!3859546 (= lt!1341103 (size!30778 lt!1341102))))

(declare-fun b!3859547 () Bool)

(declare-fun e!2386060 () Bool)

(assert (=> b!3859547 (= e!2386060 (= (size!30777 (_1!23197 (v!39049 lt!1341100))) (size!30778 (originalCharacters!6934 (_1!23197 (v!39049 lt!1341100))))))))

(declare-fun b!3859548 () Bool)

(assert (=> b!3859548 (= e!2386059 e!2386046)))

(declare-fun res!1562700 () Bool)

(assert (=> b!3859548 (=> res!1562700 e!2386046)))

(declare-fun lt!1341104 () Int)

(assert (=> b!3859548 (= res!1562700 (>= lt!1341095 lt!1341104))))

(declare-fun suffix!1176 () List!41049)

(assert (=> b!3859548 (= lt!1341104 (size!30778 suffix!1176))))

(assert (=> b!3859548 (= lt!1341095 (size!30778 (_2!23197 (v!39049 lt!1341100))))))

(declare-fun e!2386052 () Bool)

(assert (=> b!3859549 (= e!2386052 (and tp!1170027 tp!1170036))))

(declare-fun tp!1170024 () Bool)

(declare-fun suffixTokens!72 () List!41051)

(declare-fun b!3859550 () Bool)

(declare-fun e!2386042 () Bool)

(declare-fun e!2386057 () Bool)

(declare-fun inv!21 (TokenValue!6564) Bool)

(assert (=> b!3859550 (= e!2386057 (and (inv!21 (value!201153 (h!46347 suffixTokens!72))) e!2386042 tp!1170024))))

(declare-fun b!3859551 () Bool)

(declare-fun e!2386043 () Bool)

(assert (=> b!3859551 (= e!2386041 e!2386043)))

(declare-fun res!1562701 () Bool)

(assert (=> b!3859551 (=> res!1562701 e!2386043)))

(declare-fun lt!1341094 () tuple2!40126)

(declare-fun prefixTokens!80 () List!41051)

(declare-fun head!8136 (List!41051) Token!11806)

(assert (=> b!3859551 (= res!1562701 (not (= (_1!23197 lt!1341094) (head!8136 prefixTokens!80))))))

(declare-fun get!13541 (Option!8752) tuple2!40126)

(assert (=> b!3859551 (= lt!1341094 (get!13541 lt!1341100))))

(declare-fun e!2386039 () Bool)

(assert (=> b!3859552 (= e!2386039 (and tp!1170033 tp!1170026))))

(declare-fun b!3859553 () Bool)

(assert (=> b!3859553 (= e!2386043 (not (= prefixTokens!80 Nil!40927)))))

(declare-fun e!2386062 () Bool)

(declare-fun b!3859554 () Bool)

(declare-fun e!2386053 () Bool)

(declare-fun tp!1170025 () Bool)

(assert (=> b!3859554 (= e!2386053 (and (inv!21 (value!201153 (h!46347 prefixTokens!80))) e!2386062 tp!1170025))))

(declare-fun b!3859555 () Bool)

(declare-fun res!1562702 () Bool)

(assert (=> b!3859555 (=> (not res!1562702) (not e!2386040))))

(declare-fun prefix!426 () List!41049)

(declare-fun isEmpty!24243 (List!41049) Bool)

(assert (=> b!3859555 (= res!1562702 (not (isEmpty!24243 prefix!426)))))

(declare-fun b!3859556 () Bool)

(declare-fun res!1562705 () Bool)

(assert (=> b!3859556 (=> res!1562705 e!2386059)))

(assert (=> b!3859556 (= res!1562705 (or (not (= lt!1341105 (tuple2!40129 (_1!23198 lt!1341105) (_2!23198 lt!1341105)))) (= (_2!23197 (v!39049 lt!1341100)) suffix!1176)))))

(declare-fun b!3859557 () Bool)

(assert (=> b!3859557 (= e!2386037 e!2386055)))

(declare-fun res!1562704 () Bool)

(assert (=> b!3859557 (=> res!1562704 e!2386055)))

(declare-fun lt!1341108 () Int)

(assert (=> b!3859557 (= res!1562704 (or (not (= (+ lt!1341108 lt!1341104) lt!1341103)) (<= lt!1341097 lt!1341108)))))

(assert (=> b!3859557 (= lt!1341108 (size!30778 prefix!426))))

(declare-fun res!1562715 () Bool)

(assert (=> start!361808 (=> (not res!1562715) (not e!2386040))))

(get-info :version)

(assert (=> start!361808 (= res!1562715 ((_ is Lexer!5921) thiss!20629))))

(assert (=> start!361808 e!2386040))

(declare-fun e!2386054 () Bool)

(assert (=> start!361808 e!2386054))

(assert (=> start!361808 true))

(declare-fun e!2386034 () Bool)

(assert (=> start!361808 e!2386034))

(declare-fun e!2386049 () Bool)

(assert (=> start!361808 e!2386049))

(declare-fun e!2386056 () Bool)

(assert (=> start!361808 e!2386056))

(declare-fun e!2386050 () Bool)

(assert (=> start!361808 e!2386050))

(declare-fun e!2386035 () Bool)

(assert (=> start!361808 e!2386035))

(declare-fun b!3859545 () Bool)

(declare-fun tp!1170031 () Bool)

(declare-fun e!2386036 () Bool)

(declare-fun inv!55082 (String!46538) Bool)

(declare-fun inv!55085 (TokenValueInjection!12556) Bool)

(assert (=> b!3859545 (= e!2386036 (and tp!1170031 (inv!55082 (tag!7194 (h!46346 rules!2768))) (inv!55085 (transformation!6334 (h!46346 rules!2768))) e!2386052))))

(declare-fun b!3859558 () Bool)

(declare-fun tp_is_empty!19449 () Bool)

(declare-fun tp!1170030 () Bool)

(assert (=> b!3859558 (= e!2386054 (and tp_is_empty!19449 tp!1170030))))

(declare-fun b!3859559 () Bool)

(declare-fun res!1562711 () Bool)

(declare-fun e!2386038 () Bool)

(assert (=> b!3859559 (=> (not res!1562711) (not e!2386038))))

(declare-fun suffixResult!91 () List!41049)

(declare-fun lexList!1691 (LexerInterface!5923 List!41050 List!41049) tuple2!40128)

(assert (=> b!3859559 (= res!1562711 (= (lexList!1691 thiss!20629 rules!2768 suffix!1176) (tuple2!40129 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3859560 () Bool)

(declare-fun res!1562708 () Bool)

(assert (=> b!3859560 (=> res!1562708 e!2386043)))

(assert (=> b!3859560 (= res!1562708 (>= (size!30778 (_2!23197 lt!1341094)) lt!1341104))))

(declare-fun b!3859561 () Bool)

(declare-fun res!1562710 () Bool)

(assert (=> b!3859561 (=> (not res!1562710) (not e!2386040))))

(declare-fun rulesInvariant!5266 (LexerInterface!5923 List!41050) Bool)

(assert (=> b!3859561 (= res!1562710 (rulesInvariant!5266 thiss!20629 rules!2768))))

(declare-fun b!3859562 () Bool)

(declare-fun e!2386058 () Bool)

(assert (=> b!3859562 (= e!2386038 e!2386058)))

(declare-fun res!1562706 () Bool)

(assert (=> b!3859562 (=> (not res!1562706) (not e!2386058))))

(assert (=> b!3859562 (= res!1562706 ((_ is Some!8751) lt!1341100))))

(declare-fun maxPrefix!3227 (LexerInterface!5923 List!41050 List!41049) Option!8752)

(assert (=> b!3859562 (= lt!1341100 (maxPrefix!3227 thiss!20629 rules!2768 lt!1341102))))

(declare-fun b!3859563 () Bool)

(declare-fun tp!1170028 () Bool)

(assert (=> b!3859563 (= e!2386049 (and e!2386036 tp!1170028))))

(declare-fun b!3859564 () Bool)

(assert (=> b!3859564 (= e!2386058 (not e!2386059))))

(declare-fun res!1562717 () Bool)

(assert (=> b!3859564 (=> res!1562717 e!2386059)))

(declare-fun lt!1341107 () List!41049)

(assert (=> b!3859564 (= res!1562717 (not (= lt!1341107 lt!1341102)))))

(assert (=> b!3859564 (= lt!1341105 (lexList!1691 thiss!20629 rules!2768 (_2!23197 (v!39049 lt!1341100))))))

(declare-fun lt!1341106 () List!41049)

(assert (=> b!3859564 (and (= (size!30777 (_1!23197 (v!39049 lt!1341100))) lt!1341097) (= (originalCharacters!6934 (_1!23197 (v!39049 lt!1341100))) lt!1341091) (= (v!39049 lt!1341100) (tuple2!40127 (Token!11807 lt!1341109 (rule!9200 (_1!23197 (v!39049 lt!1341100))) lt!1341097 lt!1341091) lt!1341106)))))

(assert (=> b!3859564 (= lt!1341097 (size!30778 lt!1341091))))

(assert (=> b!3859564 e!2386060))

(declare-fun res!1562718 () Bool)

(assert (=> b!3859564 (=> (not res!1562718) (not e!2386060))))

(assert (=> b!3859564 (= res!1562718 (= (value!201153 (_1!23197 (v!39049 lt!1341100))) lt!1341109))))

(declare-fun apply!9577 (TokenValueInjection!12556 BalanceConc!24684) TokenValue!6564)

(declare-fun seqFromList!4605 (List!41049) BalanceConc!24684)

(assert (=> b!3859564 (= lt!1341109 (apply!9577 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (seqFromList!4605 lt!1341091)))))

(assert (=> b!3859564 (= (_2!23197 (v!39049 lt!1341100)) lt!1341106)))

(declare-fun lt!1341101 () Unit!58584)

(declare-fun lemmaSamePrefixThenSameSuffix!1654 (List!41049 List!41049 List!41049 List!41049 List!41049) Unit!58584)

(assert (=> b!3859564 (= lt!1341101 (lemmaSamePrefixThenSameSuffix!1654 lt!1341091 (_2!23197 (v!39049 lt!1341100)) lt!1341091 lt!1341106 lt!1341102))))

(declare-fun getSuffix!1888 (List!41049 List!41049) List!41049)

(assert (=> b!3859564 (= lt!1341106 (getSuffix!1888 lt!1341102 lt!1341091))))

(declare-fun isPrefix!3433 (List!41049 List!41049) Bool)

(assert (=> b!3859564 (isPrefix!3433 lt!1341091 lt!1341107)))

(declare-fun ++!10426 (List!41049 List!41049) List!41049)

(assert (=> b!3859564 (= lt!1341107 (++!10426 lt!1341091 (_2!23197 (v!39049 lt!1341100))))))

(declare-fun lt!1341090 () Unit!58584)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2296 (List!41049 List!41049) Unit!58584)

(assert (=> b!3859564 (= lt!1341090 (lemmaConcatTwoListThenFirstIsPrefix!2296 lt!1341091 (_2!23197 (v!39049 lt!1341100))))))

(declare-fun list!15232 (BalanceConc!24684) List!41049)

(declare-fun charsOf!4162 (Token!11806) BalanceConc!24684)

(assert (=> b!3859564 (= lt!1341091 (list!15232 (charsOf!4162 (_1!23197 (v!39049 lt!1341100)))))))

(declare-fun ruleValid!2286 (LexerInterface!5923 Rule!12468) Bool)

(assert (=> b!3859564 (ruleValid!2286 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))

(declare-fun lt!1341092 () Unit!58584)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1366 (LexerInterface!5923 Rule!12468 List!41050) Unit!58584)

(assert (=> b!3859564 (= lt!1341092 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1366 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))) rules!2768))))

(declare-fun lt!1341093 () Unit!58584)

(declare-fun lemmaCharactersSize!995 (Token!11806) Unit!58584)

(assert (=> b!3859564 (= lt!1341093 (lemmaCharactersSize!995 (_1!23197 (v!39049 lt!1341100))))))

(declare-fun b!3859565 () Bool)

(declare-fun res!1562703 () Bool)

(assert (=> b!3859565 (=> (not res!1562703) (not e!2386040))))

(declare-fun isEmpty!24244 (List!41051) Bool)

(assert (=> b!3859565 (= res!1562703 (not (isEmpty!24244 prefixTokens!80)))))

(declare-fun b!3859566 () Bool)

(declare-fun tp!1170021 () Bool)

(declare-fun inv!55086 (Token!11806) Bool)

(assert (=> b!3859566 (= e!2386056 (and (inv!55086 (h!46347 prefixTokens!80)) e!2386053 tp!1170021))))

(declare-fun b!3859567 () Bool)

(declare-fun tp!1170032 () Bool)

(assert (=> b!3859567 (= e!2386062 (and tp!1170032 (inv!55082 (tag!7194 (rule!9200 (h!46347 prefixTokens!80)))) (inv!55085 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) e!2386039))))

(declare-fun e!2386048 () Bool)

(declare-fun tp!1170029 () Bool)

(declare-fun b!3859568 () Bool)

(assert (=> b!3859568 (= e!2386042 (and tp!1170029 (inv!55082 (tag!7194 (rule!9200 (h!46347 suffixTokens!72)))) (inv!55085 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) e!2386048))))

(assert (=> b!3859569 (= e!2386048 (and tp!1170020 tp!1170034))))

(declare-fun b!3859570 () Bool)

(declare-fun tp!1170023 () Bool)

(assert (=> b!3859570 (= e!2386035 (and tp_is_empty!19449 tp!1170023))))

(declare-fun b!3859571 () Bool)

(declare-fun tp!1170035 () Bool)

(assert (=> b!3859571 (= e!2386034 (and tp_is_empty!19449 tp!1170035))))

(declare-fun b!3859572 () Bool)

(assert (=> b!3859572 (= e!2386040 e!2386038)))

(declare-fun res!1562709 () Bool)

(assert (=> b!3859572 (=> (not res!1562709) (not e!2386038))))

(declare-fun lt!1341099 () List!41051)

(assert (=> b!3859572 (= res!1562709 (= lt!1341096 (tuple2!40129 lt!1341099 suffixResult!91)))))

(assert (=> b!3859572 (= lt!1341096 (lexList!1691 thiss!20629 rules!2768 lt!1341102))))

(assert (=> b!3859572 (= lt!1341099 (++!10425 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3859572 (= lt!1341102 (++!10426 prefix!426 suffix!1176))))

(declare-fun b!3859573 () Bool)

(declare-fun tp!1170022 () Bool)

(assert (=> b!3859573 (= e!2386050 (and (inv!55086 (h!46347 suffixTokens!72)) e!2386057 tp!1170022))))

(declare-fun b!3859574 () Bool)

(declare-fun res!1562714 () Bool)

(assert (=> b!3859574 (=> res!1562714 e!2386043)))

(declare-fun tail!5847 (List!41051) List!41051)

(assert (=> b!3859574 (= res!1562714 (isEmpty!24244 (tail!5847 prefixTokens!80)))))

(assert (= (and start!361808 res!1562715) b!3859544))

(assert (= (and b!3859544 res!1562707) b!3859561))

(assert (= (and b!3859561 res!1562710) b!3859565))

(assert (= (and b!3859565 res!1562703) b!3859555))

(assert (= (and b!3859555 res!1562702) b!3859572))

(assert (= (and b!3859572 res!1562709) b!3859559))

(assert (= (and b!3859559 res!1562711) b!3859562))

(assert (= (and b!3859562 res!1562706) b!3859564))

(assert (= (and b!3859564 res!1562718) b!3859547))

(assert (= (and b!3859564 (not res!1562717)) b!3859543))

(assert (= (and b!3859543 (not res!1562712)) b!3859556))

(assert (= (and b!3859556 (not res!1562705)) b!3859548))

(assert (= (and b!3859548 (not res!1562700)) b!3859546))

(assert (= (and b!3859546 (not res!1562716)) b!3859557))

(assert (= (and b!3859557 (not res!1562704)) b!3859542))

(assert (= (and b!3859542 (not res!1562713)) b!3859551))

(assert (= (and b!3859551 (not res!1562701)) b!3859560))

(assert (= (and b!3859560 (not res!1562708)) b!3859574))

(assert (= (and b!3859574 (not res!1562714)) b!3859553))

(assert (= (and start!361808 ((_ is Cons!40925) suffixResult!91)) b!3859558))

(assert (= (and start!361808 ((_ is Cons!40925) suffix!1176)) b!3859571))

(assert (= b!3859545 b!3859549))

(assert (= b!3859563 b!3859545))

(assert (= (and start!361808 ((_ is Cons!40926) rules!2768)) b!3859563))

(assert (= b!3859567 b!3859552))

(assert (= b!3859554 b!3859567))

(assert (= b!3859566 b!3859554))

(assert (= (and start!361808 ((_ is Cons!40927) prefixTokens!80)) b!3859566))

(assert (= b!3859568 b!3859569))

(assert (= b!3859550 b!3859568))

(assert (= b!3859573 b!3859550))

(assert (= (and start!361808 ((_ is Cons!40927) suffixTokens!72)) b!3859573))

(assert (= (and start!361808 ((_ is Cons!40925) prefix!426)) b!3859570))

(declare-fun m!4415031 () Bool)

(assert (=> b!3859542 m!4415031))

(declare-fun m!4415033 () Bool)

(assert (=> b!3859542 m!4415033))

(declare-fun m!4415035 () Bool)

(assert (=> b!3859542 m!4415035))

(declare-fun m!4415037 () Bool)

(assert (=> b!3859543 m!4415037))

(declare-fun m!4415039 () Bool)

(assert (=> b!3859547 m!4415039))

(declare-fun m!4415041 () Bool)

(assert (=> b!3859573 m!4415041))

(declare-fun m!4415043 () Bool)

(assert (=> b!3859545 m!4415043))

(declare-fun m!4415045 () Bool)

(assert (=> b!3859545 m!4415045))

(declare-fun m!4415047 () Bool)

(assert (=> b!3859564 m!4415047))

(declare-fun m!4415049 () Bool)

(assert (=> b!3859564 m!4415049))

(declare-fun m!4415051 () Bool)

(assert (=> b!3859564 m!4415051))

(declare-fun m!4415053 () Bool)

(assert (=> b!3859564 m!4415053))

(declare-fun m!4415055 () Bool)

(assert (=> b!3859564 m!4415055))

(declare-fun m!4415057 () Bool)

(assert (=> b!3859564 m!4415057))

(assert (=> b!3859564 m!4415047))

(declare-fun m!4415059 () Bool)

(assert (=> b!3859564 m!4415059))

(declare-fun m!4415061 () Bool)

(assert (=> b!3859564 m!4415061))

(declare-fun m!4415063 () Bool)

(assert (=> b!3859564 m!4415063))

(declare-fun m!4415065 () Bool)

(assert (=> b!3859564 m!4415065))

(declare-fun m!4415067 () Bool)

(assert (=> b!3859564 m!4415067))

(declare-fun m!4415069 () Bool)

(assert (=> b!3859564 m!4415069))

(declare-fun m!4415071 () Bool)

(assert (=> b!3859564 m!4415071))

(assert (=> b!3859564 m!4415051))

(declare-fun m!4415073 () Bool)

(assert (=> b!3859564 m!4415073))

(declare-fun m!4415075 () Bool)

(assert (=> b!3859548 m!4415075))

(declare-fun m!4415077 () Bool)

(assert (=> b!3859548 m!4415077))

(declare-fun m!4415079 () Bool)

(assert (=> b!3859568 m!4415079))

(declare-fun m!4415081 () Bool)

(assert (=> b!3859568 m!4415081))

(declare-fun m!4415083 () Bool)

(assert (=> b!3859551 m!4415083))

(declare-fun m!4415085 () Bool)

(assert (=> b!3859551 m!4415085))

(declare-fun m!4415087 () Bool)

(assert (=> b!3859550 m!4415087))

(declare-fun m!4415089 () Bool)

(assert (=> b!3859559 m!4415089))

(declare-fun m!4415091 () Bool)

(assert (=> b!3859557 m!4415091))

(declare-fun m!4415093 () Bool)

(assert (=> b!3859554 m!4415093))

(declare-fun m!4415095 () Bool)

(assert (=> b!3859565 m!4415095))

(declare-fun m!4415097 () Bool)

(assert (=> b!3859574 m!4415097))

(assert (=> b!3859574 m!4415097))

(declare-fun m!4415099 () Bool)

(assert (=> b!3859574 m!4415099))

(declare-fun m!4415101 () Bool)

(assert (=> b!3859560 m!4415101))

(declare-fun m!4415103 () Bool)

(assert (=> b!3859555 m!4415103))

(declare-fun m!4415105 () Bool)

(assert (=> b!3859562 m!4415105))

(declare-fun m!4415107 () Bool)

(assert (=> b!3859546 m!4415107))

(declare-fun m!4415109 () Bool)

(assert (=> b!3859567 m!4415109))

(declare-fun m!4415111 () Bool)

(assert (=> b!3859567 m!4415111))

(declare-fun m!4415113 () Bool)

(assert (=> b!3859566 m!4415113))

(declare-fun m!4415115 () Bool)

(assert (=> b!3859561 m!4415115))

(declare-fun m!4415117 () Bool)

(assert (=> b!3859544 m!4415117))

(declare-fun m!4415119 () Bool)

(assert (=> b!3859572 m!4415119))

(declare-fun m!4415121 () Bool)

(assert (=> b!3859572 m!4415121))

(declare-fun m!4415123 () Bool)

(assert (=> b!3859572 m!4415123))

(check-sat (not b!3859547) (not b!3859550) (not b!3859542) (not b!3859560) (not b!3859555) (not b!3859544) (not b!3859551) (not b!3859568) (not b!3859561) (not b_next!104447) (not b!3859567) (not b!3859570) (not b_next!104455) b_and!288867 (not b!3859554) (not b!3859546) b_and!288877 tp_is_empty!19449 (not b!3859558) (not b_next!104453) b_and!288871 (not b!3859543) (not b!3859562) b_and!288869 (not b!3859559) (not b!3859574) (not b!3859571) (not b_next!104451) (not b!3859564) (not b!3859573) (not b!3859572) (not b!3859566) b_and!288875 b_and!288873 (not b!3859565) (not b_next!104449) (not b!3859563) (not b!3859545) (not b_next!104445) (not b!3859548) (not b!3859557))
(check-sat (not b_next!104455) b_and!288867 b_and!288877 b_and!288869 (not b_next!104451) b_and!288875 b_and!288873 (not b_next!104449) (not b_next!104445) (not b_next!104447) (not b_next!104453) b_and!288871)
(get-model)

(declare-fun d!1144068 () Bool)

(assert (=> d!1144068 (= (inv!55082 (tag!7194 (rule!9200 (h!46347 suffixTokens!72)))) (= (mod (str.len (value!201152 (tag!7194 (rule!9200 (h!46347 suffixTokens!72))))) 2) 0))))

(assert (=> b!3859568 d!1144068))

(declare-fun d!1144070 () Bool)

(declare-fun res!1562752 () Bool)

(declare-fun e!2386098 () Bool)

(assert (=> d!1144070 (=> (not res!1562752) (not e!2386098))))

(declare-fun semiInverseModEq!2715 (Int Int) Bool)

(assert (=> d!1144070 (= res!1562752 (semiInverseModEq!2715 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (toValue!8762 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72))))))))

(assert (=> d!1144070 (= (inv!55085 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) e!2386098)))

(declare-fun b!3859631 () Bool)

(declare-fun equivClasses!2614 (Int Int) Bool)

(assert (=> b!3859631 (= e!2386098 (equivClasses!2614 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (toValue!8762 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72))))))))

(assert (= (and d!1144070 res!1562752) b!3859631))

(declare-fun m!4415181 () Bool)

(assert (=> d!1144070 m!4415181))

(declare-fun m!4415183 () Bool)

(assert (=> b!3859631 m!4415183))

(assert (=> b!3859568 d!1144070))

(declare-fun d!1144080 () Bool)

(assert (=> d!1144080 (= (inv!55082 (tag!7194 (rule!9200 (h!46347 prefixTokens!80)))) (= (mod (str.len (value!201152 (tag!7194 (rule!9200 (h!46347 prefixTokens!80))))) 2) 0))))

(assert (=> b!3859567 d!1144080))

(declare-fun d!1144082 () Bool)

(declare-fun res!1562753 () Bool)

(declare-fun e!2386101 () Bool)

(assert (=> d!1144082 (=> (not res!1562753) (not e!2386101))))

(assert (=> d!1144082 (= res!1562753 (semiInverseModEq!2715 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (toValue!8762 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80))))))))

(assert (=> d!1144082 (= (inv!55085 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) e!2386101)))

(declare-fun b!3859634 () Bool)

(assert (=> b!3859634 (= e!2386101 (equivClasses!2614 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (toValue!8762 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80))))))))

(assert (= (and d!1144082 res!1562753) b!3859634))

(declare-fun m!4415187 () Bool)

(assert (=> d!1144082 m!4415187))

(declare-fun m!4415189 () Bool)

(assert (=> b!3859634 m!4415189))

(assert (=> b!3859567 d!1144082))

(declare-fun d!1144084 () Bool)

(declare-fun lt!1341133 () Int)

(assert (=> d!1144084 (>= lt!1341133 0)))

(declare-fun e!2386108 () Int)

(assert (=> d!1144084 (= lt!1341133 e!2386108)))

(declare-fun c!671995 () Bool)

(assert (=> d!1144084 (= c!671995 ((_ is Nil!40925) lt!1341102))))

(assert (=> d!1144084 (= (size!30778 lt!1341102) lt!1341133)))

(declare-fun b!3859645 () Bool)

(assert (=> b!3859645 (= e!2386108 0)))

(declare-fun b!3859646 () Bool)

(assert (=> b!3859646 (= e!2386108 (+ 1 (size!30778 (t!313252 lt!1341102))))))

(assert (= (and d!1144084 c!671995) b!3859645))

(assert (= (and d!1144084 (not c!671995)) b!3859646))

(declare-fun m!4415197 () Bool)

(assert (=> b!3859646 m!4415197))

(assert (=> b!3859546 d!1144084))

(declare-fun d!1144092 () Bool)

(declare-fun lt!1341136 () Int)

(assert (=> d!1144092 (>= lt!1341136 0)))

(declare-fun e!2386109 () Int)

(assert (=> d!1144092 (= lt!1341136 e!2386109)))

(declare-fun c!671996 () Bool)

(assert (=> d!1144092 (= c!671996 ((_ is Nil!40925) suffix!1176))))

(assert (=> d!1144092 (= (size!30778 suffix!1176) lt!1341136)))

(declare-fun b!3859647 () Bool)

(assert (=> b!3859647 (= e!2386109 0)))

(declare-fun b!3859648 () Bool)

(assert (=> b!3859648 (= e!2386109 (+ 1 (size!30778 (t!313252 suffix!1176))))))

(assert (= (and d!1144092 c!671996) b!3859647))

(assert (= (and d!1144092 (not c!671996)) b!3859648))

(declare-fun m!4415199 () Bool)

(assert (=> b!3859648 m!4415199))

(assert (=> b!3859548 d!1144092))

(declare-fun d!1144094 () Bool)

(declare-fun lt!1341138 () Int)

(assert (=> d!1144094 (>= lt!1341138 0)))

(declare-fun e!2386110 () Int)

(assert (=> d!1144094 (= lt!1341138 e!2386110)))

(declare-fun c!671997 () Bool)

(assert (=> d!1144094 (= c!671997 ((_ is Nil!40925) (_2!23197 (v!39049 lt!1341100))))))

(assert (=> d!1144094 (= (size!30778 (_2!23197 (v!39049 lt!1341100))) lt!1341138)))

(declare-fun b!3859649 () Bool)

(assert (=> b!3859649 (= e!2386110 0)))

(declare-fun b!3859650 () Bool)

(assert (=> b!3859650 (= e!2386110 (+ 1 (size!30778 (t!313252 (_2!23197 (v!39049 lt!1341100))))))))

(assert (= (and d!1144094 c!671997) b!3859649))

(assert (= (and d!1144094 (not c!671997)) b!3859650))

(declare-fun m!4415201 () Bool)

(assert (=> b!3859650 m!4415201))

(assert (=> b!3859548 d!1144094))

(declare-fun d!1144096 () Bool)

(declare-fun lt!1341139 () Int)

(assert (=> d!1144096 (>= lt!1341139 0)))

(declare-fun e!2386113 () Int)

(assert (=> d!1144096 (= lt!1341139 e!2386113)))

(declare-fun c!671998 () Bool)

(assert (=> d!1144096 (= c!671998 ((_ is Nil!40925) (originalCharacters!6934 (_1!23197 (v!39049 lt!1341100)))))))

(assert (=> d!1144096 (= (size!30778 (originalCharacters!6934 (_1!23197 (v!39049 lt!1341100)))) lt!1341139)))

(declare-fun b!3859655 () Bool)

(assert (=> b!3859655 (= e!2386113 0)))

(declare-fun b!3859656 () Bool)

(assert (=> b!3859656 (= e!2386113 (+ 1 (size!30778 (t!313252 (originalCharacters!6934 (_1!23197 (v!39049 lt!1341100)))))))))

(assert (= (and d!1144096 c!671998) b!3859655))

(assert (= (and d!1144096 (not c!671998)) b!3859656))

(declare-fun m!4415203 () Bool)

(assert (=> b!3859656 m!4415203))

(assert (=> b!3859547 d!1144096))

(declare-fun d!1144098 () Bool)

(declare-fun e!2386158 () Bool)

(assert (=> d!1144098 e!2386158))

(declare-fun c!672021 () Bool)

(declare-fun lt!1341168 () tuple2!40128)

(declare-fun size!30780 (List!41051) Int)

(assert (=> d!1144098 (= c!672021 (> (size!30780 (_1!23198 lt!1341168)) 0))))

(declare-fun e!2386157 () tuple2!40128)

(assert (=> d!1144098 (= lt!1341168 e!2386157)))

(declare-fun c!672022 () Bool)

(declare-fun lt!1341166 () Option!8752)

(assert (=> d!1144098 (= c!672022 ((_ is Some!8751) lt!1341166))))

(assert (=> d!1144098 (= lt!1341166 (maxPrefix!3227 thiss!20629 rules!2768 lt!1341102))))

(assert (=> d!1144098 (= (lexList!1691 thiss!20629 rules!2768 lt!1341102) lt!1341168)))

(declare-fun b!3859728 () Bool)

(assert (=> b!3859728 (= e!2386158 (= (_2!23198 lt!1341168) lt!1341102))))

(declare-fun b!3859729 () Bool)

(assert (=> b!3859729 (= e!2386157 (tuple2!40129 Nil!40927 lt!1341102))))

(declare-fun b!3859730 () Bool)

(declare-fun e!2386156 () Bool)

(assert (=> b!3859730 (= e!2386158 e!2386156)))

(declare-fun res!1562785 () Bool)

(assert (=> b!3859730 (= res!1562785 (< (size!30778 (_2!23198 lt!1341168)) (size!30778 lt!1341102)))))

(assert (=> b!3859730 (=> (not res!1562785) (not e!2386156))))

(declare-fun b!3859731 () Bool)

(declare-fun lt!1341167 () tuple2!40128)

(assert (=> b!3859731 (= e!2386157 (tuple2!40129 (Cons!40927 (_1!23197 (v!39049 lt!1341166)) (_1!23198 lt!1341167)) (_2!23198 lt!1341167)))))

(assert (=> b!3859731 (= lt!1341167 (lexList!1691 thiss!20629 rules!2768 (_2!23197 (v!39049 lt!1341166))))))

(declare-fun b!3859732 () Bool)

(assert (=> b!3859732 (= e!2386156 (not (isEmpty!24244 (_1!23198 lt!1341168))))))

(assert (= (and d!1144098 c!672022) b!3859731))

(assert (= (and d!1144098 (not c!672022)) b!3859729))

(assert (= (and d!1144098 c!672021) b!3859730))

(assert (= (and d!1144098 (not c!672021)) b!3859728))

(assert (= (and b!3859730 res!1562785) b!3859732))

(declare-fun m!4415289 () Bool)

(assert (=> d!1144098 m!4415289))

(assert (=> d!1144098 m!4415105))

(declare-fun m!4415291 () Bool)

(assert (=> b!3859730 m!4415291))

(assert (=> b!3859730 m!4415107))

(declare-fun m!4415293 () Bool)

(assert (=> b!3859731 m!4415293))

(declare-fun m!4415295 () Bool)

(assert (=> b!3859732 m!4415295))

(assert (=> b!3859572 d!1144098))

(declare-fun e!2386164 () Bool)

(declare-fun lt!1341171 () List!41051)

(declare-fun b!3859744 () Bool)

(assert (=> b!3859744 (= e!2386164 (or (not (= suffixTokens!72 Nil!40927)) (= lt!1341171 prefixTokens!80)))))

(declare-fun b!3859741 () Bool)

(declare-fun e!2386163 () List!41051)

(assert (=> b!3859741 (= e!2386163 suffixTokens!72)))

(declare-fun b!3859743 () Bool)

(declare-fun res!1562790 () Bool)

(assert (=> b!3859743 (=> (not res!1562790) (not e!2386164))))

(assert (=> b!3859743 (= res!1562790 (= (size!30780 lt!1341171) (+ (size!30780 prefixTokens!80) (size!30780 suffixTokens!72))))))

(declare-fun b!3859742 () Bool)

(assert (=> b!3859742 (= e!2386163 (Cons!40927 (h!46347 prefixTokens!80) (++!10425 (t!313254 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1144134 () Bool)

(assert (=> d!1144134 e!2386164))

(declare-fun res!1562791 () Bool)

(assert (=> d!1144134 (=> (not res!1562791) (not e!2386164))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6100 (List!41051) (InoxSet Token!11806))

(assert (=> d!1144134 (= res!1562791 (= (content!6100 lt!1341171) ((_ map or) (content!6100 prefixTokens!80) (content!6100 suffixTokens!72))))))

(assert (=> d!1144134 (= lt!1341171 e!2386163)))

(declare-fun c!672025 () Bool)

(assert (=> d!1144134 (= c!672025 ((_ is Nil!40927) prefixTokens!80))))

(assert (=> d!1144134 (= (++!10425 prefixTokens!80 suffixTokens!72) lt!1341171)))

(assert (= (and d!1144134 c!672025) b!3859741))

(assert (= (and d!1144134 (not c!672025)) b!3859742))

(assert (= (and d!1144134 res!1562791) b!3859743))

(assert (= (and b!3859743 res!1562790) b!3859744))

(declare-fun m!4415297 () Bool)

(assert (=> b!3859743 m!4415297))

(declare-fun m!4415299 () Bool)

(assert (=> b!3859743 m!4415299))

(declare-fun m!4415301 () Bool)

(assert (=> b!3859743 m!4415301))

(declare-fun m!4415303 () Bool)

(assert (=> b!3859742 m!4415303))

(declare-fun m!4415305 () Bool)

(assert (=> d!1144134 m!4415305))

(declare-fun m!4415307 () Bool)

(assert (=> d!1144134 m!4415307))

(declare-fun m!4415309 () Bool)

(assert (=> d!1144134 m!4415309))

(assert (=> b!3859572 d!1144134))

(declare-fun d!1144136 () Bool)

(declare-fun e!2386179 () Bool)

(assert (=> d!1144136 e!2386179))

(declare-fun res!1562817 () Bool)

(assert (=> d!1144136 (=> (not res!1562817) (not e!2386179))))

(declare-fun lt!1341189 () List!41049)

(declare-fun content!6101 (List!41049) (InoxSet C!22664))

(assert (=> d!1144136 (= res!1562817 (= (content!6101 lt!1341189) ((_ map or) (content!6101 prefix!426) (content!6101 suffix!1176))))))

(declare-fun e!2386178 () List!41049)

(assert (=> d!1144136 (= lt!1341189 e!2386178)))

(declare-fun c!672031 () Bool)

(assert (=> d!1144136 (= c!672031 ((_ is Nil!40925) prefix!426))))

(assert (=> d!1144136 (= (++!10426 prefix!426 suffix!1176) lt!1341189)))

(declare-fun b!3859781 () Bool)

(assert (=> b!3859781 (= e!2386178 (Cons!40925 (h!46345 prefix!426) (++!10426 (t!313252 prefix!426) suffix!1176)))))

(declare-fun b!3859782 () Bool)

(declare-fun res!1562818 () Bool)

(assert (=> b!3859782 (=> (not res!1562818) (not e!2386179))))

(assert (=> b!3859782 (= res!1562818 (= (size!30778 lt!1341189) (+ (size!30778 prefix!426) (size!30778 suffix!1176))))))

(declare-fun b!3859780 () Bool)

(assert (=> b!3859780 (= e!2386178 suffix!1176)))

(declare-fun b!3859783 () Bool)

(assert (=> b!3859783 (= e!2386179 (or (not (= suffix!1176 Nil!40925)) (= lt!1341189 prefix!426)))))

(assert (= (and d!1144136 c!672031) b!3859780))

(assert (= (and d!1144136 (not c!672031)) b!3859781))

(assert (= (and d!1144136 res!1562817) b!3859782))

(assert (= (and b!3859782 res!1562818) b!3859783))

(declare-fun m!4415331 () Bool)

(assert (=> d!1144136 m!4415331))

(declare-fun m!4415335 () Bool)

(assert (=> d!1144136 m!4415335))

(declare-fun m!4415339 () Bool)

(assert (=> d!1144136 m!4415339))

(declare-fun m!4415341 () Bool)

(assert (=> b!3859781 m!4415341))

(declare-fun m!4415343 () Bool)

(assert (=> b!3859782 m!4415343))

(assert (=> b!3859782 m!4415091))

(assert (=> b!3859782 m!4415075))

(assert (=> b!3859572 d!1144136))

(declare-fun d!1144138 () Bool)

(declare-fun c!672040 () Bool)

(assert (=> d!1144138 (= c!672040 ((_ is IntegerValue!19692) (value!201153 (h!46347 suffixTokens!72))))))

(declare-fun e!2386194 () Bool)

(assert (=> d!1144138 (= (inv!21 (value!201153 (h!46347 suffixTokens!72))) e!2386194)))

(declare-fun b!3859806 () Bool)

(declare-fun e!2386195 () Bool)

(declare-fun inv!15 (TokenValue!6564) Bool)

(assert (=> b!3859806 (= e!2386195 (inv!15 (value!201153 (h!46347 suffixTokens!72))))))

(declare-fun b!3859807 () Bool)

(declare-fun e!2386193 () Bool)

(assert (=> b!3859807 (= e!2386194 e!2386193)))

(declare-fun c!672039 () Bool)

(assert (=> b!3859807 (= c!672039 ((_ is IntegerValue!19693) (value!201153 (h!46347 suffixTokens!72))))))

(declare-fun b!3859808 () Bool)

(declare-fun inv!17 (TokenValue!6564) Bool)

(assert (=> b!3859808 (= e!2386193 (inv!17 (value!201153 (h!46347 suffixTokens!72))))))

(declare-fun b!3859809 () Bool)

(declare-fun res!1562826 () Bool)

(assert (=> b!3859809 (=> res!1562826 e!2386195)))

(assert (=> b!3859809 (= res!1562826 (not ((_ is IntegerValue!19694) (value!201153 (h!46347 suffixTokens!72)))))))

(assert (=> b!3859809 (= e!2386193 e!2386195)))

(declare-fun b!3859810 () Bool)

(declare-fun inv!16 (TokenValue!6564) Bool)

(assert (=> b!3859810 (= e!2386194 (inv!16 (value!201153 (h!46347 suffixTokens!72))))))

(assert (= (and d!1144138 c!672040) b!3859810))

(assert (= (and d!1144138 (not c!672040)) b!3859807))

(assert (= (and b!3859807 c!672039) b!3859808))

(assert (= (and b!3859807 (not c!672039)) b!3859809))

(assert (= (and b!3859809 (not res!1562826)) b!3859806))

(declare-fun m!4415387 () Bool)

(assert (=> b!3859806 m!4415387))

(declare-fun m!4415389 () Bool)

(assert (=> b!3859808 m!4415389))

(declare-fun m!4415391 () Bool)

(assert (=> b!3859810 m!4415391))

(assert (=> b!3859550 d!1144138))

(declare-fun d!1144154 () Bool)

(declare-fun res!1562855 () Bool)

(declare-fun e!2386219 () Bool)

(assert (=> d!1144154 (=> (not res!1562855) (not e!2386219))))

(assert (=> d!1144154 (= res!1562855 (not (isEmpty!24243 (originalCharacters!6934 (h!46347 suffixTokens!72)))))))

(assert (=> d!1144154 (= (inv!55086 (h!46347 suffixTokens!72)) e!2386219)))

(declare-fun b!3859857 () Bool)

(declare-fun res!1562856 () Bool)

(assert (=> b!3859857 (=> (not res!1562856) (not e!2386219))))

(declare-fun dynLambda!17653 (Int TokenValue!6564) BalanceConc!24684)

(assert (=> b!3859857 (= res!1562856 (= (originalCharacters!6934 (h!46347 suffixTokens!72)) (list!15232 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (value!201153 (h!46347 suffixTokens!72))))))))

(declare-fun b!3859858 () Bool)

(assert (=> b!3859858 (= e!2386219 (= (size!30777 (h!46347 suffixTokens!72)) (size!30778 (originalCharacters!6934 (h!46347 suffixTokens!72)))))))

(assert (= (and d!1144154 res!1562855) b!3859857))

(assert (= (and b!3859857 res!1562856) b!3859858))

(declare-fun b_lambda!112823 () Bool)

(assert (=> (not b_lambda!112823) (not b!3859857)))

(declare-fun t!313280 () Bool)

(declare-fun tb!223529 () Bool)

(assert (=> (and b!3859569 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72))))) t!313280) tb!223529))

(declare-fun b!3859863 () Bool)

(declare-fun e!2386222 () Bool)

(declare-fun tp!1170044 () Bool)

(declare-fun inv!55089 (Conc!12545) Bool)

(assert (=> b!3859863 (= e!2386222 (and (inv!55089 (c!671977 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (value!201153 (h!46347 suffixTokens!72))))) tp!1170044))))

(declare-fun result!272222 () Bool)

(declare-fun inv!55090 (BalanceConc!24684) Bool)

(assert (=> tb!223529 (= result!272222 (and (inv!55090 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (value!201153 (h!46347 suffixTokens!72)))) e!2386222))))

(assert (= tb!223529 b!3859863))

(declare-fun m!4415401 () Bool)

(assert (=> b!3859863 m!4415401))

(declare-fun m!4415403 () Bool)

(assert (=> tb!223529 m!4415403))

(assert (=> b!3859857 t!313280))

(declare-fun b_and!288903 () Bool)

(assert (= b_and!288869 (and (=> t!313280 result!272222) b_and!288903)))

(declare-fun t!313282 () Bool)

(declare-fun tb!223531 () Bool)

(assert (=> (and b!3859549 (= (toChars!8621 (transformation!6334 (h!46346 rules!2768))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72))))) t!313282) tb!223531))

(declare-fun result!272226 () Bool)

(assert (= result!272226 result!272222))

(assert (=> b!3859857 t!313282))

(declare-fun b_and!288905 () Bool)

(assert (= b_and!288873 (and (=> t!313282 result!272226) b_and!288905)))

(declare-fun t!313284 () Bool)

(declare-fun tb!223533 () Bool)

(assert (=> (and b!3859552 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72))))) t!313284) tb!223533))

(declare-fun result!272228 () Bool)

(assert (= result!272228 result!272222))

(assert (=> b!3859857 t!313284))

(declare-fun b_and!288907 () Bool)

(assert (= b_and!288877 (and (=> t!313284 result!272228) b_and!288907)))

(declare-fun m!4415405 () Bool)

(assert (=> d!1144154 m!4415405))

(declare-fun m!4415407 () Bool)

(assert (=> b!3859857 m!4415407))

(assert (=> b!3859857 m!4415407))

(declare-fun m!4415409 () Bool)

(assert (=> b!3859857 m!4415409))

(declare-fun m!4415411 () Bool)

(assert (=> b!3859858 m!4415411))

(assert (=> b!3859573 d!1144154))

(declare-fun d!1144158 () Bool)

(assert (=> d!1144158 (= (head!8136 prefixTokens!80) (h!46347 prefixTokens!80))))

(assert (=> b!3859551 d!1144158))

(declare-fun d!1144160 () Bool)

(assert (=> d!1144160 (= (get!13541 lt!1341100) (v!39049 lt!1341100))))

(assert (=> b!3859551 d!1144160))

(declare-fun d!1144162 () Bool)

(assert (=> d!1144162 (= (isEmpty!24244 (tail!5847 prefixTokens!80)) ((_ is Nil!40927) (tail!5847 prefixTokens!80)))))

(assert (=> b!3859574 d!1144162))

(declare-fun d!1144164 () Bool)

(assert (=> d!1144164 (= (tail!5847 prefixTokens!80) (t!313254 prefixTokens!80))))

(assert (=> b!3859574 d!1144164))

(declare-fun d!1144166 () Bool)

(declare-fun c!672051 () Bool)

(assert (=> d!1144166 (= c!672051 ((_ is IntegerValue!19692) (value!201153 (h!46347 prefixTokens!80))))))

(declare-fun e!2386224 () Bool)

(assert (=> d!1144166 (= (inv!21 (value!201153 (h!46347 prefixTokens!80))) e!2386224)))

(declare-fun b!3859864 () Bool)

(declare-fun e!2386225 () Bool)

(assert (=> b!3859864 (= e!2386225 (inv!15 (value!201153 (h!46347 prefixTokens!80))))))

(declare-fun b!3859865 () Bool)

(declare-fun e!2386223 () Bool)

(assert (=> b!3859865 (= e!2386224 e!2386223)))

(declare-fun c!672050 () Bool)

(assert (=> b!3859865 (= c!672050 ((_ is IntegerValue!19693) (value!201153 (h!46347 prefixTokens!80))))))

(declare-fun b!3859866 () Bool)

(assert (=> b!3859866 (= e!2386223 (inv!17 (value!201153 (h!46347 prefixTokens!80))))))

(declare-fun b!3859867 () Bool)

(declare-fun res!1562857 () Bool)

(assert (=> b!3859867 (=> res!1562857 e!2386225)))

(assert (=> b!3859867 (= res!1562857 (not ((_ is IntegerValue!19694) (value!201153 (h!46347 prefixTokens!80)))))))

(assert (=> b!3859867 (= e!2386223 e!2386225)))

(declare-fun b!3859868 () Bool)

(assert (=> b!3859868 (= e!2386224 (inv!16 (value!201153 (h!46347 prefixTokens!80))))))

(assert (= (and d!1144166 c!672051) b!3859868))

(assert (= (and d!1144166 (not c!672051)) b!3859865))

(assert (= (and b!3859865 c!672050) b!3859866))

(assert (= (and b!3859865 (not c!672050)) b!3859867))

(assert (= (and b!3859867 (not res!1562857)) b!3859864))

(declare-fun m!4415413 () Bool)

(assert (=> b!3859864 m!4415413))

(declare-fun m!4415415 () Bool)

(assert (=> b!3859866 m!4415415))

(declare-fun m!4415417 () Bool)

(assert (=> b!3859868 m!4415417))

(assert (=> b!3859554 d!1144166))

(declare-fun d!1144168 () Bool)

(assert (=> d!1144168 (= (isEmpty!24243 prefix!426) ((_ is Nil!40925) prefix!426))))

(assert (=> b!3859555 d!1144168))

(declare-fun d!1144170 () Bool)

(declare-fun lt!1341196 () Int)

(assert (=> d!1144170 (>= lt!1341196 0)))

(declare-fun e!2386226 () Int)

(assert (=> d!1144170 (= lt!1341196 e!2386226)))

(declare-fun c!672052 () Bool)

(assert (=> d!1144170 (= c!672052 ((_ is Nil!40925) prefix!426))))

(assert (=> d!1144170 (= (size!30778 prefix!426) lt!1341196)))

(declare-fun b!3859869 () Bool)

(assert (=> b!3859869 (= e!2386226 0)))

(declare-fun b!3859870 () Bool)

(assert (=> b!3859870 (= e!2386226 (+ 1 (size!30778 (t!313252 prefix!426))))))

(assert (= (and d!1144170 c!672052) b!3859869))

(assert (= (and d!1144170 (not c!672052)) b!3859870))

(declare-fun m!4415419 () Bool)

(assert (=> b!3859870 m!4415419))

(assert (=> b!3859557 d!1144170))

(declare-fun d!1144172 () Bool)

(declare-fun lt!1341197 () Int)

(assert (=> d!1144172 (>= lt!1341197 0)))

(declare-fun e!2386227 () Int)

(assert (=> d!1144172 (= lt!1341197 e!2386227)))

(declare-fun c!672053 () Bool)

(assert (=> d!1144172 (= c!672053 ((_ is Nil!40925) (_2!23197 lt!1341094)))))

(assert (=> d!1144172 (= (size!30778 (_2!23197 lt!1341094)) lt!1341197)))

(declare-fun b!3859871 () Bool)

(assert (=> b!3859871 (= e!2386227 0)))

(declare-fun b!3859872 () Bool)

(assert (=> b!3859872 (= e!2386227 (+ 1 (size!30778 (t!313252 (_2!23197 lt!1341094)))))))

(assert (= (and d!1144172 c!672053) b!3859871))

(assert (= (and d!1144172 (not c!672053)) b!3859872))

(declare-fun m!4415421 () Bool)

(assert (=> b!3859872 m!4415421))

(assert (=> b!3859560 d!1144172))

(declare-fun d!1144174 () Bool)

(declare-fun e!2386230 () Bool)

(assert (=> d!1144174 e!2386230))

(declare-fun c!672054 () Bool)

(declare-fun lt!1341200 () tuple2!40128)

(assert (=> d!1144174 (= c!672054 (> (size!30780 (_1!23198 lt!1341200)) 0))))

(declare-fun e!2386229 () tuple2!40128)

(assert (=> d!1144174 (= lt!1341200 e!2386229)))

(declare-fun c!672055 () Bool)

(declare-fun lt!1341198 () Option!8752)

(assert (=> d!1144174 (= c!672055 ((_ is Some!8751) lt!1341198))))

(assert (=> d!1144174 (= lt!1341198 (maxPrefix!3227 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1144174 (= (lexList!1691 thiss!20629 rules!2768 suffix!1176) lt!1341200)))

(declare-fun b!3859873 () Bool)

(assert (=> b!3859873 (= e!2386230 (= (_2!23198 lt!1341200) suffix!1176))))

(declare-fun b!3859874 () Bool)

(assert (=> b!3859874 (= e!2386229 (tuple2!40129 Nil!40927 suffix!1176))))

(declare-fun b!3859875 () Bool)

(declare-fun e!2386228 () Bool)

(assert (=> b!3859875 (= e!2386230 e!2386228)))

(declare-fun res!1562858 () Bool)

(assert (=> b!3859875 (= res!1562858 (< (size!30778 (_2!23198 lt!1341200)) (size!30778 suffix!1176)))))

(assert (=> b!3859875 (=> (not res!1562858) (not e!2386228))))

(declare-fun b!3859876 () Bool)

(declare-fun lt!1341199 () tuple2!40128)

(assert (=> b!3859876 (= e!2386229 (tuple2!40129 (Cons!40927 (_1!23197 (v!39049 lt!1341198)) (_1!23198 lt!1341199)) (_2!23198 lt!1341199)))))

(assert (=> b!3859876 (= lt!1341199 (lexList!1691 thiss!20629 rules!2768 (_2!23197 (v!39049 lt!1341198))))))

(declare-fun b!3859877 () Bool)

(assert (=> b!3859877 (= e!2386228 (not (isEmpty!24244 (_1!23198 lt!1341200))))))

(assert (= (and d!1144174 c!672055) b!3859876))

(assert (= (and d!1144174 (not c!672055)) b!3859874))

(assert (= (and d!1144174 c!672054) b!3859875))

(assert (= (and d!1144174 (not c!672054)) b!3859873))

(assert (= (and b!3859875 res!1562858) b!3859877))

(declare-fun m!4415423 () Bool)

(assert (=> d!1144174 m!4415423))

(declare-fun m!4415425 () Bool)

(assert (=> d!1144174 m!4415425))

(declare-fun m!4415427 () Bool)

(assert (=> b!3859875 m!4415427))

(assert (=> b!3859875 m!4415075))

(declare-fun m!4415429 () Bool)

(assert (=> b!3859876 m!4415429))

(declare-fun m!4415431 () Bool)

(assert (=> b!3859877 m!4415431))

(assert (=> b!3859559 d!1144174))

(declare-fun d!1144176 () Bool)

(declare-fun res!1562861 () Bool)

(declare-fun e!2386233 () Bool)

(assert (=> d!1144176 (=> (not res!1562861) (not e!2386233))))

(declare-fun rulesValid!2450 (LexerInterface!5923 List!41050) Bool)

(assert (=> d!1144176 (= res!1562861 (rulesValid!2450 thiss!20629 rules!2768))))

(assert (=> d!1144176 (= (rulesInvariant!5266 thiss!20629 rules!2768) e!2386233)))

(declare-fun b!3859880 () Bool)

(declare-datatypes ((List!41053 0))(
  ( (Nil!40929) (Cons!40929 (h!46349 String!46538) (t!313352 List!41053)) )
))
(declare-fun noDuplicateTag!2451 (LexerInterface!5923 List!41050 List!41053) Bool)

(assert (=> b!3859880 (= e!2386233 (noDuplicateTag!2451 thiss!20629 rules!2768 Nil!40929))))

(assert (= (and d!1144176 res!1562861) b!3859880))

(declare-fun m!4415433 () Bool)

(assert (=> d!1144176 m!4415433))

(declare-fun m!4415435 () Bool)

(assert (=> b!3859880 m!4415435))

(assert (=> b!3859561 d!1144176))

(declare-fun b!3859957 () Bool)

(declare-fun e!2386268 () Option!8752)

(declare-fun lt!1341235 () Option!8752)

(declare-fun lt!1341233 () Option!8752)

(assert (=> b!3859957 (= e!2386268 (ite (and ((_ is None!8751) lt!1341235) ((_ is None!8751) lt!1341233)) None!8751 (ite ((_ is None!8751) lt!1341233) lt!1341235 (ite ((_ is None!8751) lt!1341235) lt!1341233 (ite (>= (size!30777 (_1!23197 (v!39049 lt!1341235))) (size!30777 (_1!23197 (v!39049 lt!1341233)))) lt!1341235 lt!1341233)))))))

(declare-fun call!282525 () Option!8752)

(assert (=> b!3859957 (= lt!1341235 call!282525)))

(assert (=> b!3859957 (= lt!1341233 (maxPrefix!3227 thiss!20629 (t!313253 rules!2768) lt!1341102))))

(declare-fun b!3859958 () Bool)

(declare-fun res!1562899 () Bool)

(declare-fun e!2386269 () Bool)

(assert (=> b!3859958 (=> (not res!1562899) (not e!2386269))))

(declare-fun lt!1341232 () Option!8752)

(assert (=> b!3859958 (= res!1562899 (< (size!30778 (_2!23197 (get!13541 lt!1341232))) (size!30778 lt!1341102)))))

(declare-fun b!3859959 () Bool)

(declare-fun res!1562898 () Bool)

(assert (=> b!3859959 (=> (not res!1562898) (not e!2386269))))

(assert (=> b!3859959 (= res!1562898 (= (list!15232 (charsOf!4162 (_1!23197 (get!13541 lt!1341232)))) (originalCharacters!6934 (_1!23197 (get!13541 lt!1341232)))))))

(declare-fun d!1144178 () Bool)

(declare-fun e!2386270 () Bool)

(assert (=> d!1144178 e!2386270))

(declare-fun res!1562900 () Bool)

(assert (=> d!1144178 (=> res!1562900 e!2386270)))

(declare-fun isEmpty!24246 (Option!8752) Bool)

(assert (=> d!1144178 (= res!1562900 (isEmpty!24246 lt!1341232))))

(assert (=> d!1144178 (= lt!1341232 e!2386268)))

(declare-fun c!672063 () Bool)

(assert (=> d!1144178 (= c!672063 (and ((_ is Cons!40926) rules!2768) ((_ is Nil!40926) (t!313253 rules!2768))))))

(declare-fun lt!1341234 () Unit!58584)

(declare-fun lt!1341236 () Unit!58584)

(assert (=> d!1144178 (= lt!1341234 lt!1341236)))

(assert (=> d!1144178 (isPrefix!3433 lt!1341102 lt!1341102)))

(declare-fun lemmaIsPrefixRefl!2186 (List!41049 List!41049) Unit!58584)

(assert (=> d!1144178 (= lt!1341236 (lemmaIsPrefixRefl!2186 lt!1341102 lt!1341102))))

(declare-fun rulesValidInductive!2258 (LexerInterface!5923 List!41050) Bool)

(assert (=> d!1144178 (rulesValidInductive!2258 thiss!20629 rules!2768)))

(assert (=> d!1144178 (= (maxPrefix!3227 thiss!20629 rules!2768 lt!1341102) lt!1341232)))

(declare-fun b!3859960 () Bool)

(assert (=> b!3859960 (= e!2386270 e!2386269)))

(declare-fun res!1562901 () Bool)

(assert (=> b!3859960 (=> (not res!1562901) (not e!2386269))))

(declare-fun isDefined!6863 (Option!8752) Bool)

(assert (=> b!3859960 (= res!1562901 (isDefined!6863 lt!1341232))))

(declare-fun bm!282520 () Bool)

(assert (=> bm!282520 (= call!282525 (maxPrefixOneRule!2309 thiss!20629 (h!46346 rules!2768) lt!1341102))))

(declare-fun b!3859961 () Bool)

(declare-fun res!1562904 () Bool)

(assert (=> b!3859961 (=> (not res!1562904) (not e!2386269))))

(assert (=> b!3859961 (= res!1562904 (= (++!10426 (list!15232 (charsOf!4162 (_1!23197 (get!13541 lt!1341232)))) (_2!23197 (get!13541 lt!1341232))) lt!1341102))))

(declare-fun b!3859964 () Bool)

(declare-fun contains!8267 (List!41050 Rule!12468) Bool)

(assert (=> b!3859964 (= e!2386269 (contains!8267 rules!2768 (rule!9200 (_1!23197 (get!13541 lt!1341232)))))))

(declare-fun b!3859965 () Bool)

(assert (=> b!3859965 (= e!2386268 call!282525)))

(declare-fun b!3859966 () Bool)

(declare-fun res!1562903 () Bool)

(assert (=> b!3859966 (=> (not res!1562903) (not e!2386269))))

(assert (=> b!3859966 (= res!1562903 (matchR!5386 (regex!6334 (rule!9200 (_1!23197 (get!13541 lt!1341232)))) (list!15232 (charsOf!4162 (_1!23197 (get!13541 lt!1341232))))))))

(declare-fun b!3859967 () Bool)

(declare-fun res!1562902 () Bool)

(assert (=> b!3859967 (=> (not res!1562902) (not e!2386269))))

(assert (=> b!3859967 (= res!1562902 (= (value!201153 (_1!23197 (get!13541 lt!1341232))) (apply!9577 (transformation!6334 (rule!9200 (_1!23197 (get!13541 lt!1341232)))) (seqFromList!4605 (originalCharacters!6934 (_1!23197 (get!13541 lt!1341232)))))))))

(assert (= (and d!1144178 c!672063) b!3859965))

(assert (= (and d!1144178 (not c!672063)) b!3859957))

(assert (= (or b!3859965 b!3859957) bm!282520))

(assert (= (and d!1144178 (not res!1562900)) b!3859960))

(assert (= (and b!3859960 res!1562901) b!3859959))

(assert (= (and b!3859959 res!1562898) b!3859958))

(assert (= (and b!3859958 res!1562899) b!3859961))

(assert (= (and b!3859961 res!1562904) b!3859967))

(assert (= (and b!3859967 res!1562902) b!3859966))

(assert (= (and b!3859966 res!1562903) b!3859964))

(declare-fun m!4415499 () Bool)

(assert (=> b!3859966 m!4415499))

(declare-fun m!4415501 () Bool)

(assert (=> b!3859966 m!4415501))

(assert (=> b!3859966 m!4415501))

(declare-fun m!4415503 () Bool)

(assert (=> b!3859966 m!4415503))

(assert (=> b!3859966 m!4415503))

(declare-fun m!4415505 () Bool)

(assert (=> b!3859966 m!4415505))

(declare-fun m!4415507 () Bool)

(assert (=> d!1144178 m!4415507))

(declare-fun m!4415509 () Bool)

(assert (=> d!1144178 m!4415509))

(declare-fun m!4415511 () Bool)

(assert (=> d!1144178 m!4415511))

(declare-fun m!4415513 () Bool)

(assert (=> d!1144178 m!4415513))

(assert (=> b!3859967 m!4415499))

(declare-fun m!4415515 () Bool)

(assert (=> b!3859967 m!4415515))

(assert (=> b!3859967 m!4415515))

(declare-fun m!4415517 () Bool)

(assert (=> b!3859967 m!4415517))

(declare-fun m!4415519 () Bool)

(assert (=> b!3859960 m!4415519))

(assert (=> b!3859959 m!4415499))

(assert (=> b!3859959 m!4415501))

(assert (=> b!3859959 m!4415501))

(assert (=> b!3859959 m!4415503))

(declare-fun m!4415521 () Bool)

(assert (=> bm!282520 m!4415521))

(assert (=> b!3859964 m!4415499))

(declare-fun m!4415523 () Bool)

(assert (=> b!3859964 m!4415523))

(assert (=> b!3859961 m!4415499))

(assert (=> b!3859961 m!4415501))

(assert (=> b!3859961 m!4415501))

(assert (=> b!3859961 m!4415503))

(assert (=> b!3859961 m!4415503))

(declare-fun m!4415525 () Bool)

(assert (=> b!3859961 m!4415525))

(assert (=> b!3859958 m!4415499))

(declare-fun m!4415527 () Bool)

(assert (=> b!3859958 m!4415527))

(assert (=> b!3859958 m!4415107))

(declare-fun m!4415529 () Bool)

(assert (=> b!3859957 m!4415529))

(assert (=> b!3859562 d!1144178))

(declare-fun d!1144184 () Bool)

(assert (=> d!1144184 (= (_2!23197 (v!39049 lt!1341100)) lt!1341106)))

(declare-fun lt!1341239 () Unit!58584)

(declare-fun choose!22725 (List!41049 List!41049 List!41049 List!41049 List!41049) Unit!58584)

(assert (=> d!1144184 (= lt!1341239 (choose!22725 lt!1341091 (_2!23197 (v!39049 lt!1341100)) lt!1341091 lt!1341106 lt!1341102))))

(assert (=> d!1144184 (isPrefix!3433 lt!1341091 lt!1341102)))

(assert (=> d!1144184 (= (lemmaSamePrefixThenSameSuffix!1654 lt!1341091 (_2!23197 (v!39049 lt!1341100)) lt!1341091 lt!1341106 lt!1341102) lt!1341239)))

(declare-fun bs!583162 () Bool)

(assert (= bs!583162 d!1144184))

(declare-fun m!4415543 () Bool)

(assert (=> bs!583162 m!4415543))

(declare-fun m!4415545 () Bool)

(assert (=> bs!583162 m!4415545))

(assert (=> b!3859564 d!1144184))

(declare-fun d!1144186 () Bool)

(declare-fun list!15234 (Conc!12545) List!41049)

(assert (=> d!1144186 (= (list!15232 (charsOf!4162 (_1!23197 (v!39049 lt!1341100)))) (list!15234 (c!671977 (charsOf!4162 (_1!23197 (v!39049 lt!1341100))))))))

(declare-fun bs!583163 () Bool)

(assert (= bs!583163 d!1144186))

(declare-fun m!4415547 () Bool)

(assert (=> bs!583163 m!4415547))

(assert (=> b!3859564 d!1144186))

(declare-fun d!1144188 () Bool)

(declare-fun lt!1341242 () List!41049)

(assert (=> d!1144188 (= (++!10426 lt!1341091 lt!1341242) lt!1341102)))

(declare-fun e!2386308 () List!41049)

(assert (=> d!1144188 (= lt!1341242 e!2386308)))

(declare-fun c!672066 () Bool)

(assert (=> d!1144188 (= c!672066 ((_ is Cons!40925) lt!1341091))))

(assert (=> d!1144188 (>= (size!30778 lt!1341102) (size!30778 lt!1341091))))

(assert (=> d!1144188 (= (getSuffix!1888 lt!1341102 lt!1341091) lt!1341242)))

(declare-fun b!3860004 () Bool)

(declare-fun tail!5849 (List!41049) List!41049)

(assert (=> b!3860004 (= e!2386308 (getSuffix!1888 (tail!5849 lt!1341102) (t!313252 lt!1341091)))))

(declare-fun b!3860005 () Bool)

(assert (=> b!3860005 (= e!2386308 lt!1341102)))

(assert (= (and d!1144188 c!672066) b!3860004))

(assert (= (and d!1144188 (not c!672066)) b!3860005))

(declare-fun m!4415549 () Bool)

(assert (=> d!1144188 m!4415549))

(assert (=> d!1144188 m!4415107))

(assert (=> d!1144188 m!4415063))

(declare-fun m!4415551 () Bool)

(assert (=> b!3860004 m!4415551))

(assert (=> b!3860004 m!4415551))

(declare-fun m!4415553 () Bool)

(assert (=> b!3860004 m!4415553))

(assert (=> b!3859564 d!1144188))

(declare-fun d!1144190 () Bool)

(assert (=> d!1144190 (= (size!30777 (_1!23197 (v!39049 lt!1341100))) (size!30778 (originalCharacters!6934 (_1!23197 (v!39049 lt!1341100)))))))

(declare-fun Unit!58587 () Unit!58584)

(assert (=> d!1144190 (= (lemmaCharactersSize!995 (_1!23197 (v!39049 lt!1341100))) Unit!58587)))

(declare-fun bs!583164 () Bool)

(assert (= bs!583164 d!1144190))

(assert (=> bs!583164 m!4415039))

(assert (=> b!3859564 d!1144190))

(declare-fun d!1144192 () Bool)

(declare-fun e!2386310 () Bool)

(assert (=> d!1144192 e!2386310))

(declare-fun res!1562905 () Bool)

(assert (=> d!1144192 (=> (not res!1562905) (not e!2386310))))

(declare-fun lt!1341243 () List!41049)

(assert (=> d!1144192 (= res!1562905 (= (content!6101 lt!1341243) ((_ map or) (content!6101 lt!1341091) (content!6101 (_2!23197 (v!39049 lt!1341100))))))))

(declare-fun e!2386309 () List!41049)

(assert (=> d!1144192 (= lt!1341243 e!2386309)))

(declare-fun c!672067 () Bool)

(assert (=> d!1144192 (= c!672067 ((_ is Nil!40925) lt!1341091))))

(assert (=> d!1144192 (= (++!10426 lt!1341091 (_2!23197 (v!39049 lt!1341100))) lt!1341243)))

(declare-fun b!3860007 () Bool)

(assert (=> b!3860007 (= e!2386309 (Cons!40925 (h!46345 lt!1341091) (++!10426 (t!313252 lt!1341091) (_2!23197 (v!39049 lt!1341100)))))))

(declare-fun b!3860008 () Bool)

(declare-fun res!1562906 () Bool)

(assert (=> b!3860008 (=> (not res!1562906) (not e!2386310))))

(assert (=> b!3860008 (= res!1562906 (= (size!30778 lt!1341243) (+ (size!30778 lt!1341091) (size!30778 (_2!23197 (v!39049 lt!1341100))))))))

(declare-fun b!3860006 () Bool)

(assert (=> b!3860006 (= e!2386309 (_2!23197 (v!39049 lt!1341100)))))

(declare-fun b!3860009 () Bool)

(assert (=> b!3860009 (= e!2386310 (or (not (= (_2!23197 (v!39049 lt!1341100)) Nil!40925)) (= lt!1341243 lt!1341091)))))

(assert (= (and d!1144192 c!672067) b!3860006))

(assert (= (and d!1144192 (not c!672067)) b!3860007))

(assert (= (and d!1144192 res!1562905) b!3860008))

(assert (= (and b!3860008 res!1562906) b!3860009))

(declare-fun m!4415555 () Bool)

(assert (=> d!1144192 m!4415555))

(declare-fun m!4415557 () Bool)

(assert (=> d!1144192 m!4415557))

(declare-fun m!4415559 () Bool)

(assert (=> d!1144192 m!4415559))

(declare-fun m!4415561 () Bool)

(assert (=> b!3860007 m!4415561))

(declare-fun m!4415563 () Bool)

(assert (=> b!3860008 m!4415563))

(assert (=> b!3860008 m!4415063))

(assert (=> b!3860008 m!4415077))

(assert (=> b!3859564 d!1144192))

(declare-fun d!1144194 () Bool)

(assert (=> d!1144194 (ruleValid!2286 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))

(declare-fun lt!1341246 () Unit!58584)

(declare-fun choose!22726 (LexerInterface!5923 Rule!12468 List!41050) Unit!58584)

(assert (=> d!1144194 (= lt!1341246 (choose!22726 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))) rules!2768))))

(assert (=> d!1144194 (contains!8267 rules!2768 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))

(assert (=> d!1144194 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1366 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))) rules!2768) lt!1341246)))

(declare-fun bs!583165 () Bool)

(assert (= bs!583165 d!1144194))

(assert (=> bs!583165 m!4415057))

(declare-fun m!4415565 () Bool)

(assert (=> bs!583165 m!4415565))

(declare-fun m!4415567 () Bool)

(assert (=> bs!583165 m!4415567))

(assert (=> b!3859564 d!1144194))

(declare-fun d!1144196 () Bool)

(declare-fun lt!1341247 () Int)

(assert (=> d!1144196 (>= lt!1341247 0)))

(declare-fun e!2386311 () Int)

(assert (=> d!1144196 (= lt!1341247 e!2386311)))

(declare-fun c!672068 () Bool)

(assert (=> d!1144196 (= c!672068 ((_ is Nil!40925) lt!1341091))))

(assert (=> d!1144196 (= (size!30778 lt!1341091) lt!1341247)))

(declare-fun b!3860010 () Bool)

(assert (=> b!3860010 (= e!2386311 0)))

(declare-fun b!3860011 () Bool)

(assert (=> b!3860011 (= e!2386311 (+ 1 (size!30778 (t!313252 lt!1341091))))))

(assert (= (and d!1144196 c!672068) b!3860010))

(assert (= (and d!1144196 (not c!672068)) b!3860011))

(declare-fun m!4415569 () Bool)

(assert (=> b!3860011 m!4415569))

(assert (=> b!3859564 d!1144196))

(declare-fun b!3860022 () Bool)

(declare-fun e!2386319 () Bool)

(assert (=> b!3860022 (= e!2386319 (isPrefix!3433 (tail!5849 lt!1341091) (tail!5849 lt!1341107)))))

(declare-fun d!1144198 () Bool)

(declare-fun e!2386320 () Bool)

(assert (=> d!1144198 e!2386320))

(declare-fun res!1562917 () Bool)

(assert (=> d!1144198 (=> res!1562917 e!2386320)))

(declare-fun lt!1341250 () Bool)

(assert (=> d!1144198 (= res!1562917 (not lt!1341250))))

(declare-fun e!2386318 () Bool)

(assert (=> d!1144198 (= lt!1341250 e!2386318)))

(declare-fun res!1562918 () Bool)

(assert (=> d!1144198 (=> res!1562918 e!2386318)))

(assert (=> d!1144198 (= res!1562918 ((_ is Nil!40925) lt!1341091))))

(assert (=> d!1144198 (= (isPrefix!3433 lt!1341091 lt!1341107) lt!1341250)))

(declare-fun b!3860021 () Bool)

(declare-fun res!1562916 () Bool)

(assert (=> b!3860021 (=> (not res!1562916) (not e!2386319))))

(declare-fun head!8138 (List!41049) C!22664)

(assert (=> b!3860021 (= res!1562916 (= (head!8138 lt!1341091) (head!8138 lt!1341107)))))

(declare-fun b!3860020 () Bool)

(assert (=> b!3860020 (= e!2386318 e!2386319)))

(declare-fun res!1562915 () Bool)

(assert (=> b!3860020 (=> (not res!1562915) (not e!2386319))))

(assert (=> b!3860020 (= res!1562915 (not ((_ is Nil!40925) lt!1341107)))))

(declare-fun b!3860023 () Bool)

(assert (=> b!3860023 (= e!2386320 (>= (size!30778 lt!1341107) (size!30778 lt!1341091)))))

(assert (= (and d!1144198 (not res!1562918)) b!3860020))

(assert (= (and b!3860020 res!1562915) b!3860021))

(assert (= (and b!3860021 res!1562916) b!3860022))

(assert (= (and d!1144198 (not res!1562917)) b!3860023))

(declare-fun m!4415571 () Bool)

(assert (=> b!3860022 m!4415571))

(declare-fun m!4415573 () Bool)

(assert (=> b!3860022 m!4415573))

(assert (=> b!3860022 m!4415571))

(assert (=> b!3860022 m!4415573))

(declare-fun m!4415575 () Bool)

(assert (=> b!3860022 m!4415575))

(declare-fun m!4415577 () Bool)

(assert (=> b!3860021 m!4415577))

(declare-fun m!4415579 () Bool)

(assert (=> b!3860021 m!4415579))

(declare-fun m!4415581 () Bool)

(assert (=> b!3860023 m!4415581))

(assert (=> b!3860023 m!4415063))

(assert (=> b!3859564 d!1144198))

(declare-fun d!1144200 () Bool)

(declare-fun res!1562923 () Bool)

(declare-fun e!2386323 () Bool)

(assert (=> d!1144200 (=> (not res!1562923) (not e!2386323))))

(declare-fun validRegex!5114 (Regex!11239) Bool)

(assert (=> d!1144200 (= res!1562923 (validRegex!5114 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))))

(assert (=> d!1144200 (= (ruleValid!2286 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) e!2386323)))

(declare-fun b!3860028 () Bool)

(declare-fun res!1562924 () Bool)

(assert (=> b!3860028 (=> (not res!1562924) (not e!2386323))))

(declare-fun nullable!3915 (Regex!11239) Bool)

(assert (=> b!3860028 (= res!1562924 (not (nullable!3915 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))))))

(declare-fun b!3860029 () Bool)

(assert (=> b!3860029 (= e!2386323 (not (= (tag!7194 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (String!46539 ""))))))

(assert (= (and d!1144200 res!1562923) b!3860028))

(assert (= (and b!3860028 res!1562924) b!3860029))

(declare-fun m!4415583 () Bool)

(assert (=> d!1144200 m!4415583))

(declare-fun m!4415585 () Bool)

(assert (=> b!3860028 m!4415585))

(assert (=> b!3859564 d!1144200))

(declare-fun d!1144202 () Bool)

(assert (=> d!1144202 (isPrefix!3433 lt!1341091 (++!10426 lt!1341091 (_2!23197 (v!39049 lt!1341100))))))

(declare-fun lt!1341253 () Unit!58584)

(declare-fun choose!22727 (List!41049 List!41049) Unit!58584)

(assert (=> d!1144202 (= lt!1341253 (choose!22727 lt!1341091 (_2!23197 (v!39049 lt!1341100))))))

(assert (=> d!1144202 (= (lemmaConcatTwoListThenFirstIsPrefix!2296 lt!1341091 (_2!23197 (v!39049 lt!1341100))) lt!1341253)))

(declare-fun bs!583166 () Bool)

(assert (= bs!583166 d!1144202))

(assert (=> bs!583166 m!4415067))

(assert (=> bs!583166 m!4415067))

(declare-fun m!4415587 () Bool)

(assert (=> bs!583166 m!4415587))

(declare-fun m!4415589 () Bool)

(assert (=> bs!583166 m!4415589))

(assert (=> b!3859564 d!1144202))

(declare-fun d!1144204 () Bool)

(declare-fun dynLambda!17654 (Int BalanceConc!24684) TokenValue!6564)

(assert (=> d!1144204 (= (apply!9577 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (seqFromList!4605 lt!1341091)) (dynLambda!17654 (toValue!8762 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))) (seqFromList!4605 lt!1341091)))))

(declare-fun b_lambda!112829 () Bool)

(assert (=> (not b_lambda!112829) (not d!1144204)))

(declare-fun t!313310 () Bool)

(declare-fun tb!223559 () Bool)

(assert (=> (and b!3859569 (= (toValue!8762 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (toValue!8762 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313310) tb!223559))

(declare-fun result!272262 () Bool)

(assert (=> tb!223559 (= result!272262 (inv!21 (dynLambda!17654 (toValue!8762 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))) (seqFromList!4605 lt!1341091))))))

(declare-fun m!4415591 () Bool)

(assert (=> tb!223559 m!4415591))

(assert (=> d!1144204 t!313310))

(declare-fun b_and!288921 () Bool)

(assert (= b_and!288867 (and (=> t!313310 result!272262) b_and!288921)))

(declare-fun t!313312 () Bool)

(declare-fun tb!223561 () Bool)

(assert (=> (and b!3859549 (= (toValue!8762 (transformation!6334 (h!46346 rules!2768))) (toValue!8762 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313312) tb!223561))

(declare-fun result!272266 () Bool)

(assert (= result!272266 result!272262))

(assert (=> d!1144204 t!313312))

(declare-fun b_and!288923 () Bool)

(assert (= b_and!288871 (and (=> t!313312 result!272266) b_and!288923)))

(declare-fun tb!223563 () Bool)

(declare-fun t!313314 () Bool)

(assert (=> (and b!3859552 (= (toValue!8762 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (toValue!8762 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313314) tb!223563))

(declare-fun result!272268 () Bool)

(assert (= result!272268 result!272262))

(assert (=> d!1144204 t!313314))

(declare-fun b_and!288925 () Bool)

(assert (= b_and!288875 (and (=> t!313314 result!272268) b_and!288925)))

(assert (=> d!1144204 m!4415051))

(declare-fun m!4415593 () Bool)

(assert (=> d!1144204 m!4415593))

(assert (=> b!3859564 d!1144204))

(declare-fun d!1144206 () Bool)

(declare-fun fromListB!2125 (List!41049) BalanceConc!24684)

(assert (=> d!1144206 (= (seqFromList!4605 lt!1341091) (fromListB!2125 lt!1341091))))

(declare-fun bs!583167 () Bool)

(assert (= bs!583167 d!1144206))

(declare-fun m!4415595 () Bool)

(assert (=> bs!583167 m!4415595))

(assert (=> b!3859564 d!1144206))

(declare-fun d!1144208 () Bool)

(declare-fun lt!1341256 () BalanceConc!24684)

(assert (=> d!1144208 (= (list!15232 lt!1341256) (originalCharacters!6934 (_1!23197 (v!39049 lt!1341100))))))

(assert (=> d!1144208 (= lt!1341256 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))) (value!201153 (_1!23197 (v!39049 lt!1341100)))))))

(assert (=> d!1144208 (= (charsOf!4162 (_1!23197 (v!39049 lt!1341100))) lt!1341256)))

(declare-fun b_lambda!112831 () Bool)

(assert (=> (not b_lambda!112831) (not d!1144208)))

(declare-fun t!313316 () Bool)

(declare-fun tb!223565 () Bool)

(assert (=> (and b!3859569 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313316) tb!223565))

(declare-fun b!3860032 () Bool)

(declare-fun e!2386327 () Bool)

(declare-fun tp!1170109 () Bool)

(assert (=> b!3860032 (= e!2386327 (and (inv!55089 (c!671977 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))) (value!201153 (_1!23197 (v!39049 lt!1341100)))))) tp!1170109))))

(declare-fun result!272270 () Bool)

(assert (=> tb!223565 (= result!272270 (and (inv!55090 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))) (value!201153 (_1!23197 (v!39049 lt!1341100))))) e!2386327))))

(assert (= tb!223565 b!3860032))

(declare-fun m!4415597 () Bool)

(assert (=> b!3860032 m!4415597))

(declare-fun m!4415599 () Bool)

(assert (=> tb!223565 m!4415599))

(assert (=> d!1144208 t!313316))

(declare-fun b_and!288927 () Bool)

(assert (= b_and!288903 (and (=> t!313316 result!272270) b_and!288927)))

(declare-fun tb!223567 () Bool)

(declare-fun t!313318 () Bool)

(assert (=> (and b!3859549 (= (toChars!8621 (transformation!6334 (h!46346 rules!2768))) (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313318) tb!223567))

(declare-fun result!272272 () Bool)

(assert (= result!272272 result!272270))

(assert (=> d!1144208 t!313318))

(declare-fun b_and!288929 () Bool)

(assert (= b_and!288905 (and (=> t!313318 result!272272) b_and!288929)))

(declare-fun tb!223569 () Bool)

(declare-fun t!313320 () Bool)

(assert (=> (and b!3859552 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313320) tb!223569))

(declare-fun result!272274 () Bool)

(assert (= result!272274 result!272270))

(assert (=> d!1144208 t!313320))

(declare-fun b_and!288931 () Bool)

(assert (= b_and!288907 (and (=> t!313320 result!272274) b_and!288931)))

(declare-fun m!4415601 () Bool)

(assert (=> d!1144208 m!4415601))

(declare-fun m!4415603 () Bool)

(assert (=> d!1144208 m!4415603))

(assert (=> b!3859564 d!1144208))

(declare-fun d!1144210 () Bool)

(declare-fun e!2386330 () Bool)

(assert (=> d!1144210 e!2386330))

(declare-fun c!672069 () Bool)

(declare-fun lt!1341259 () tuple2!40128)

(assert (=> d!1144210 (= c!672069 (> (size!30780 (_1!23198 lt!1341259)) 0))))

(declare-fun e!2386329 () tuple2!40128)

(assert (=> d!1144210 (= lt!1341259 e!2386329)))

(declare-fun c!672070 () Bool)

(declare-fun lt!1341257 () Option!8752)

(assert (=> d!1144210 (= c!672070 ((_ is Some!8751) lt!1341257))))

(assert (=> d!1144210 (= lt!1341257 (maxPrefix!3227 thiss!20629 rules!2768 (_2!23197 (v!39049 lt!1341100))))))

(assert (=> d!1144210 (= (lexList!1691 thiss!20629 rules!2768 (_2!23197 (v!39049 lt!1341100))) lt!1341259)))

(declare-fun b!3860033 () Bool)

(assert (=> b!3860033 (= e!2386330 (= (_2!23198 lt!1341259) (_2!23197 (v!39049 lt!1341100))))))

(declare-fun b!3860034 () Bool)

(assert (=> b!3860034 (= e!2386329 (tuple2!40129 Nil!40927 (_2!23197 (v!39049 lt!1341100))))))

(declare-fun b!3860035 () Bool)

(declare-fun e!2386328 () Bool)

(assert (=> b!3860035 (= e!2386330 e!2386328)))

(declare-fun res!1562925 () Bool)

(assert (=> b!3860035 (= res!1562925 (< (size!30778 (_2!23198 lt!1341259)) (size!30778 (_2!23197 (v!39049 lt!1341100)))))))

(assert (=> b!3860035 (=> (not res!1562925) (not e!2386328))))

(declare-fun b!3860036 () Bool)

(declare-fun lt!1341258 () tuple2!40128)

(assert (=> b!3860036 (= e!2386329 (tuple2!40129 (Cons!40927 (_1!23197 (v!39049 lt!1341257)) (_1!23198 lt!1341258)) (_2!23198 lt!1341258)))))

(assert (=> b!3860036 (= lt!1341258 (lexList!1691 thiss!20629 rules!2768 (_2!23197 (v!39049 lt!1341257))))))

(declare-fun b!3860037 () Bool)

(assert (=> b!3860037 (= e!2386328 (not (isEmpty!24244 (_1!23198 lt!1341259))))))

(assert (= (and d!1144210 c!672070) b!3860036))

(assert (= (and d!1144210 (not c!672070)) b!3860034))

(assert (= (and d!1144210 c!672069) b!3860035))

(assert (= (and d!1144210 (not c!672069)) b!3860033))

(assert (= (and b!3860035 res!1562925) b!3860037))

(declare-fun m!4415605 () Bool)

(assert (=> d!1144210 m!4415605))

(declare-fun m!4415607 () Bool)

(assert (=> d!1144210 m!4415607))

(declare-fun m!4415609 () Bool)

(assert (=> b!3860035 m!4415609))

(assert (=> b!3860035 m!4415077))

(declare-fun m!4415611 () Bool)

(assert (=> b!3860036 m!4415611))

(declare-fun m!4415613 () Bool)

(assert (=> b!3860037 m!4415613))

(assert (=> b!3859564 d!1144210))

(declare-fun bm!282523 () Bool)

(declare-fun call!282528 () Bool)

(assert (=> bm!282523 (= call!282528 (isEmpty!24243 lt!1341091))))

(declare-fun b!3860066 () Bool)

(declare-fun e!2386348 () Bool)

(declare-fun e!2386350 () Bool)

(assert (=> b!3860066 (= e!2386348 e!2386350)))

(declare-fun c!672077 () Bool)

(assert (=> b!3860066 (= c!672077 ((_ is EmptyLang!11239) (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))))

(declare-fun d!1144212 () Bool)

(assert (=> d!1144212 e!2386348))

(declare-fun c!672079 () Bool)

(assert (=> d!1144212 (= c!672079 ((_ is EmptyExpr!11239) (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))))

(declare-fun lt!1341262 () Bool)

(declare-fun e!2386347 () Bool)

(assert (=> d!1144212 (= lt!1341262 e!2386347)))

(declare-fun c!672078 () Bool)

(assert (=> d!1144212 (= c!672078 (isEmpty!24243 lt!1341091))))

(assert (=> d!1144212 (validRegex!5114 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))))

(assert (=> d!1144212 (= (matchR!5386 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) lt!1341091) lt!1341262)))

(declare-fun b!3860067 () Bool)

(declare-fun e!2386345 () Bool)

(declare-fun e!2386349 () Bool)

(assert (=> b!3860067 (= e!2386345 e!2386349)))

(declare-fun res!1562943 () Bool)

(assert (=> b!3860067 (=> res!1562943 e!2386349)))

(assert (=> b!3860067 (= res!1562943 call!282528)))

(declare-fun b!3860068 () Bool)

(assert (=> b!3860068 (= e!2386348 (= lt!1341262 call!282528))))

(declare-fun b!3860069 () Bool)

(declare-fun res!1562945 () Bool)

(declare-fun e!2386351 () Bool)

(assert (=> b!3860069 (=> (not res!1562945) (not e!2386351))))

(assert (=> b!3860069 (= res!1562945 (not call!282528))))

(declare-fun b!3860070 () Bool)

(declare-fun res!1562947 () Bool)

(assert (=> b!3860070 (=> (not res!1562947) (not e!2386351))))

(assert (=> b!3860070 (= res!1562947 (isEmpty!24243 (tail!5849 lt!1341091)))))

(declare-fun b!3860071 () Bool)

(assert (=> b!3860071 (= e!2386351 (= (head!8138 lt!1341091) (c!671976 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))))))

(declare-fun b!3860072 () Bool)

(assert (=> b!3860072 (= e!2386350 (not lt!1341262))))

(declare-fun b!3860073 () Bool)

(declare-fun res!1562942 () Bool)

(declare-fun e!2386346 () Bool)

(assert (=> b!3860073 (=> res!1562942 e!2386346)))

(assert (=> b!3860073 (= res!1562942 (not ((_ is ElementMatch!11239) (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))))))

(assert (=> b!3860073 (= e!2386350 e!2386346)))

(declare-fun b!3860074 () Bool)

(assert (=> b!3860074 (= e!2386349 (not (= (head!8138 lt!1341091) (c!671976 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))))))

(declare-fun b!3860075 () Bool)

(assert (=> b!3860075 (= e!2386346 e!2386345)))

(declare-fun res!1562946 () Bool)

(assert (=> b!3860075 (=> (not res!1562946) (not e!2386345))))

(assert (=> b!3860075 (= res!1562946 (not lt!1341262))))

(declare-fun b!3860076 () Bool)

(assert (=> b!3860076 (= e!2386347 (nullable!3915 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))))

(declare-fun b!3860077 () Bool)

(declare-fun res!1562948 () Bool)

(assert (=> b!3860077 (=> res!1562948 e!2386346)))

(assert (=> b!3860077 (= res!1562948 e!2386351)))

(declare-fun res!1562949 () Bool)

(assert (=> b!3860077 (=> (not res!1562949) (not e!2386351))))

(assert (=> b!3860077 (= res!1562949 lt!1341262)))

(declare-fun b!3860078 () Bool)

(declare-fun derivativeStep!3414 (Regex!11239 C!22664) Regex!11239)

(assert (=> b!3860078 (= e!2386347 (matchR!5386 (derivativeStep!3414 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (head!8138 lt!1341091)) (tail!5849 lt!1341091)))))

(declare-fun b!3860079 () Bool)

(declare-fun res!1562944 () Bool)

(assert (=> b!3860079 (=> res!1562944 e!2386349)))

(assert (=> b!3860079 (= res!1562944 (not (isEmpty!24243 (tail!5849 lt!1341091))))))

(assert (= (and d!1144212 c!672078) b!3860076))

(assert (= (and d!1144212 (not c!672078)) b!3860078))

(assert (= (and d!1144212 c!672079) b!3860068))

(assert (= (and d!1144212 (not c!672079)) b!3860066))

(assert (= (and b!3860066 c!672077) b!3860072))

(assert (= (and b!3860066 (not c!672077)) b!3860073))

(assert (= (and b!3860073 (not res!1562942)) b!3860077))

(assert (= (and b!3860077 res!1562949) b!3860069))

(assert (= (and b!3860069 res!1562945) b!3860070))

(assert (= (and b!3860070 res!1562947) b!3860071))

(assert (= (and b!3860077 (not res!1562948)) b!3860075))

(assert (= (and b!3860075 res!1562946) b!3860067))

(assert (= (and b!3860067 (not res!1562943)) b!3860079))

(assert (= (and b!3860079 (not res!1562944)) b!3860074))

(assert (= (or b!3860068 b!3860067 b!3860069) bm!282523))

(declare-fun m!4415615 () Bool)

(assert (=> d!1144212 m!4415615))

(assert (=> d!1144212 m!4415583))

(assert (=> b!3860070 m!4415571))

(assert (=> b!3860070 m!4415571))

(declare-fun m!4415617 () Bool)

(assert (=> b!3860070 m!4415617))

(assert (=> b!3860079 m!4415571))

(assert (=> b!3860079 m!4415571))

(assert (=> b!3860079 m!4415617))

(assert (=> b!3860078 m!4415577))

(assert (=> b!3860078 m!4415577))

(declare-fun m!4415619 () Bool)

(assert (=> b!3860078 m!4415619))

(assert (=> b!3860078 m!4415571))

(assert (=> b!3860078 m!4415619))

(assert (=> b!3860078 m!4415571))

(declare-fun m!4415621 () Bool)

(assert (=> b!3860078 m!4415621))

(assert (=> b!3860076 m!4415585))

(assert (=> bm!282523 m!4415615))

(assert (=> b!3860074 m!4415577))

(assert (=> b!3860071 m!4415577))

(assert (=> b!3859542 d!1144212))

(declare-fun b!3860099 () Bool)

(declare-fun e!2386360 () Bool)

(declare-fun e!2386363 () Bool)

(assert (=> b!3860099 (= e!2386360 e!2386363)))

(declare-fun res!1562965 () Bool)

(assert (=> b!3860099 (=> (not res!1562965) (not e!2386363))))

(declare-fun lt!1341273 () Option!8752)

(assert (=> b!3860099 (= res!1562965 (matchR!5386 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (list!15232 (charsOf!4162 (_1!23197 (get!13541 lt!1341273))))))))

(declare-fun b!3860100 () Bool)

(declare-fun res!1562969 () Bool)

(assert (=> b!3860100 (=> (not res!1562969) (not e!2386363))))

(assert (=> b!3860100 (= res!1562969 (= (++!10426 (list!15232 (charsOf!4162 (_1!23197 (get!13541 lt!1341273)))) (_2!23197 (get!13541 lt!1341273))) lt!1341102))))

(declare-fun b!3860101 () Bool)

(declare-fun e!2386362 () Option!8752)

(declare-datatypes ((tuple2!40132 0))(
  ( (tuple2!40133 (_1!23200 List!41049) (_2!23200 List!41049)) )
))
(declare-fun lt!1341275 () tuple2!40132)

(declare-fun size!30782 (BalanceConc!24684) Int)

(assert (=> b!3860101 (= e!2386362 (Some!8751 (tuple2!40127 (Token!11807 (apply!9577 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (seqFromList!4605 (_1!23200 lt!1341275))) (rule!9200 (_1!23197 (v!39049 lt!1341100))) (size!30782 (seqFromList!4605 (_1!23200 lt!1341275))) (_1!23200 lt!1341275)) (_2!23200 lt!1341275))))))

(declare-fun lt!1341277 () Unit!58584)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1155 (Regex!11239 List!41049) Unit!58584)

(assert (=> b!3860101 (= lt!1341277 (longestMatchIsAcceptedByMatchOrIsEmpty!1155 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) lt!1341102))))

(declare-fun res!1562967 () Bool)

(declare-fun findLongestMatchInner!1182 (Regex!11239 List!41049 Int List!41049 List!41049 Int) tuple2!40132)

(assert (=> b!3860101 (= res!1562967 (isEmpty!24243 (_1!23200 (findLongestMatchInner!1182 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) Nil!40925 (size!30778 Nil!40925) lt!1341102 lt!1341102 (size!30778 lt!1341102)))))))

(declare-fun e!2386361 () Bool)

(assert (=> b!3860101 (=> res!1562967 e!2386361)))

(assert (=> b!3860101 e!2386361))

(declare-fun lt!1341276 () Unit!58584)

(assert (=> b!3860101 (= lt!1341276 lt!1341277)))

(declare-fun lt!1341274 () Unit!58584)

(declare-fun lemmaSemiInverse!1688 (TokenValueInjection!12556 BalanceConc!24684) Unit!58584)

(assert (=> b!3860101 (= lt!1341274 (lemmaSemiInverse!1688 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (seqFromList!4605 (_1!23200 lt!1341275))))))

(declare-fun b!3860102 () Bool)

(declare-fun res!1562966 () Bool)

(assert (=> b!3860102 (=> (not res!1562966) (not e!2386363))))

(assert (=> b!3860102 (= res!1562966 (= (value!201153 (_1!23197 (get!13541 lt!1341273))) (apply!9577 (transformation!6334 (rule!9200 (_1!23197 (get!13541 lt!1341273)))) (seqFromList!4605 (originalCharacters!6934 (_1!23197 (get!13541 lt!1341273)))))))))

(declare-fun b!3860103 () Bool)

(assert (=> b!3860103 (= e!2386363 (= (size!30777 (_1!23197 (get!13541 lt!1341273))) (size!30778 (originalCharacters!6934 (_1!23197 (get!13541 lt!1341273))))))))

(declare-fun b!3860104 () Bool)

(assert (=> b!3860104 (= e!2386361 (matchR!5386 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (_1!23200 (findLongestMatchInner!1182 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) Nil!40925 (size!30778 Nil!40925) lt!1341102 lt!1341102 (size!30778 lt!1341102)))))))

(declare-fun d!1144214 () Bool)

(assert (=> d!1144214 e!2386360))

(declare-fun res!1562964 () Bool)

(assert (=> d!1144214 (=> res!1562964 e!2386360)))

(assert (=> d!1144214 (= res!1562964 (isEmpty!24246 lt!1341273))))

(assert (=> d!1144214 (= lt!1341273 e!2386362)))

(declare-fun c!672082 () Bool)

(assert (=> d!1144214 (= c!672082 (isEmpty!24243 (_1!23200 lt!1341275)))))

(declare-fun findLongestMatch!1095 (Regex!11239 List!41049) tuple2!40132)

(assert (=> d!1144214 (= lt!1341275 (findLongestMatch!1095 (regex!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) lt!1341102))))

(assert (=> d!1144214 (ruleValid!2286 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))))))

(assert (=> d!1144214 (= (maxPrefixOneRule!2309 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))) lt!1341102) lt!1341273)))

(declare-fun b!3860098 () Bool)

(declare-fun res!1562970 () Bool)

(assert (=> b!3860098 (=> (not res!1562970) (not e!2386363))))

(assert (=> b!3860098 (= res!1562970 (= (rule!9200 (_1!23197 (get!13541 lt!1341273))) (rule!9200 (_1!23197 (v!39049 lt!1341100)))))))

(declare-fun b!3860105 () Bool)

(declare-fun res!1562968 () Bool)

(assert (=> b!3860105 (=> (not res!1562968) (not e!2386363))))

(assert (=> b!3860105 (= res!1562968 (< (size!30778 (_2!23197 (get!13541 lt!1341273))) (size!30778 lt!1341102)))))

(declare-fun b!3860106 () Bool)

(assert (=> b!3860106 (= e!2386362 None!8751)))

(assert (= (and d!1144214 c!672082) b!3860106))

(assert (= (and d!1144214 (not c!672082)) b!3860101))

(assert (= (and b!3860101 (not res!1562967)) b!3860104))

(assert (= (and d!1144214 (not res!1562964)) b!3860099))

(assert (= (and b!3860099 res!1562965) b!3860100))

(assert (= (and b!3860100 res!1562969) b!3860105))

(assert (= (and b!3860105 res!1562968) b!3860098))

(assert (= (and b!3860098 res!1562970) b!3860102))

(assert (= (and b!3860102 res!1562966) b!3860103))

(declare-fun m!4415623 () Bool)

(assert (=> b!3860100 m!4415623))

(declare-fun m!4415625 () Bool)

(assert (=> b!3860100 m!4415625))

(assert (=> b!3860100 m!4415625))

(declare-fun m!4415627 () Bool)

(assert (=> b!3860100 m!4415627))

(assert (=> b!3860100 m!4415627))

(declare-fun m!4415629 () Bool)

(assert (=> b!3860100 m!4415629))

(assert (=> b!3860105 m!4415623))

(declare-fun m!4415631 () Bool)

(assert (=> b!3860105 m!4415631))

(assert (=> b!3860105 m!4415107))

(assert (=> b!3860098 m!4415623))

(assert (=> b!3860099 m!4415623))

(assert (=> b!3860099 m!4415625))

(assert (=> b!3860099 m!4415625))

(assert (=> b!3860099 m!4415627))

(assert (=> b!3860099 m!4415627))

(declare-fun m!4415633 () Bool)

(assert (=> b!3860099 m!4415633))

(declare-fun m!4415635 () Bool)

(assert (=> d!1144214 m!4415635))

(declare-fun m!4415637 () Bool)

(assert (=> d!1144214 m!4415637))

(declare-fun m!4415639 () Bool)

(assert (=> d!1144214 m!4415639))

(assert (=> d!1144214 m!4415057))

(assert (=> b!3860102 m!4415623))

(declare-fun m!4415641 () Bool)

(assert (=> b!3860102 m!4415641))

(assert (=> b!3860102 m!4415641))

(declare-fun m!4415643 () Bool)

(assert (=> b!3860102 m!4415643))

(assert (=> b!3860103 m!4415623))

(declare-fun m!4415645 () Bool)

(assert (=> b!3860103 m!4415645))

(declare-fun m!4415647 () Bool)

(assert (=> b!3860101 m!4415647))

(assert (=> b!3860101 m!4415107))

(declare-fun m!4415649 () Bool)

(assert (=> b!3860101 m!4415649))

(declare-fun m!4415651 () Bool)

(assert (=> b!3860101 m!4415651))

(assert (=> b!3860101 m!4415649))

(declare-fun m!4415653 () Bool)

(assert (=> b!3860101 m!4415653))

(declare-fun m!4415655 () Bool)

(assert (=> b!3860101 m!4415655))

(assert (=> b!3860101 m!4415107))

(declare-fun m!4415657 () Bool)

(assert (=> b!3860101 m!4415657))

(assert (=> b!3860101 m!4415655))

(declare-fun m!4415659 () Bool)

(assert (=> b!3860101 m!4415659))

(assert (=> b!3860101 m!4415649))

(declare-fun m!4415661 () Bool)

(assert (=> b!3860101 m!4415661))

(assert (=> b!3860101 m!4415649))

(assert (=> b!3860104 m!4415655))

(assert (=> b!3860104 m!4415107))

(assert (=> b!3860104 m!4415655))

(assert (=> b!3860104 m!4415107))

(assert (=> b!3860104 m!4415657))

(declare-fun m!4415663 () Bool)

(assert (=> b!3860104 m!4415663))

(assert (=> b!3859542 d!1144214))

(declare-fun d!1144216 () Bool)

(assert (=> d!1144216 (= (maxPrefixOneRule!2309 thiss!20629 (rule!9200 (_1!23197 (v!39049 lt!1341100))) lt!1341102) (Some!8751 (tuple2!40127 (Token!11807 (apply!9577 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))) (seqFromList!4605 lt!1341091)) (rule!9200 (_1!23197 (v!39049 lt!1341100))) (size!30778 lt!1341091) lt!1341091) (_2!23197 (v!39049 lt!1341100)))))))

(declare-fun lt!1341280 () Unit!58584)

(declare-fun choose!22728 (LexerInterface!5923 List!41050 List!41049 List!41049 List!41049 Rule!12468) Unit!58584)

(assert (=> d!1144216 (= lt!1341280 (choose!22728 thiss!20629 rules!2768 lt!1341091 lt!1341102 (_2!23197 (v!39049 lt!1341100)) (rule!9200 (_1!23197 (v!39049 lt!1341100)))))))

(assert (=> d!1144216 (not (isEmpty!24242 rules!2768))))

(assert (=> d!1144216 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1207 thiss!20629 rules!2768 lt!1341091 lt!1341102 (_2!23197 (v!39049 lt!1341100)) (rule!9200 (_1!23197 (v!39049 lt!1341100)))) lt!1341280)))

(declare-fun bs!583168 () Bool)

(assert (= bs!583168 d!1144216))

(assert (=> bs!583168 m!4415117))

(assert (=> bs!583168 m!4415051))

(assert (=> bs!583168 m!4415053))

(assert (=> bs!583168 m!4415033))

(assert (=> bs!583168 m!4415051))

(declare-fun m!4415665 () Bool)

(assert (=> bs!583168 m!4415665))

(assert (=> bs!583168 m!4415063))

(assert (=> b!3859542 d!1144216))

(declare-fun d!1144218 () Bool)

(assert (=> d!1144218 (= (isEmpty!24244 prefixTokens!80) ((_ is Nil!40927) prefixTokens!80))))

(assert (=> b!3859565 d!1144218))

(declare-fun d!1144220 () Bool)

(assert (=> d!1144220 (= (isEmpty!24242 rules!2768) ((_ is Nil!40926) rules!2768))))

(assert (=> b!3859544 d!1144220))

(declare-fun e!2386365 () Bool)

(declare-fun b!3860110 () Bool)

(declare-fun lt!1341281 () List!41051)

(assert (=> b!3860110 (= e!2386365 (or (not (= (_1!23198 lt!1341105) Nil!40927)) (= lt!1341281 (Cons!40927 (_1!23197 (v!39049 lt!1341100)) Nil!40927))))))

(declare-fun b!3860107 () Bool)

(declare-fun e!2386364 () List!41051)

(assert (=> b!3860107 (= e!2386364 (_1!23198 lt!1341105))))

(declare-fun b!3860109 () Bool)

(declare-fun res!1562971 () Bool)

(assert (=> b!3860109 (=> (not res!1562971) (not e!2386365))))

(assert (=> b!3860109 (= res!1562971 (= (size!30780 lt!1341281) (+ (size!30780 (Cons!40927 (_1!23197 (v!39049 lt!1341100)) Nil!40927)) (size!30780 (_1!23198 lt!1341105)))))))

(declare-fun b!3860108 () Bool)

(assert (=> b!3860108 (= e!2386364 (Cons!40927 (h!46347 (Cons!40927 (_1!23197 (v!39049 lt!1341100)) Nil!40927)) (++!10425 (t!313254 (Cons!40927 (_1!23197 (v!39049 lt!1341100)) Nil!40927)) (_1!23198 lt!1341105))))))

(declare-fun d!1144222 () Bool)

(assert (=> d!1144222 e!2386365))

(declare-fun res!1562972 () Bool)

(assert (=> d!1144222 (=> (not res!1562972) (not e!2386365))))

(assert (=> d!1144222 (= res!1562972 (= (content!6100 lt!1341281) ((_ map or) (content!6100 (Cons!40927 (_1!23197 (v!39049 lt!1341100)) Nil!40927)) (content!6100 (_1!23198 lt!1341105)))))))

(assert (=> d!1144222 (= lt!1341281 e!2386364)))

(declare-fun c!672083 () Bool)

(assert (=> d!1144222 (= c!672083 ((_ is Nil!40927) (Cons!40927 (_1!23197 (v!39049 lt!1341100)) Nil!40927)))))

(assert (=> d!1144222 (= (++!10425 (Cons!40927 (_1!23197 (v!39049 lt!1341100)) Nil!40927) (_1!23198 lt!1341105)) lt!1341281)))

(assert (= (and d!1144222 c!672083) b!3860107))

(assert (= (and d!1144222 (not c!672083)) b!3860108))

(assert (= (and d!1144222 res!1562972) b!3860109))

(assert (= (and b!3860109 res!1562971) b!3860110))

(declare-fun m!4415667 () Bool)

(assert (=> b!3860109 m!4415667))

(declare-fun m!4415669 () Bool)

(assert (=> b!3860109 m!4415669))

(declare-fun m!4415671 () Bool)

(assert (=> b!3860109 m!4415671))

(declare-fun m!4415673 () Bool)

(assert (=> b!3860108 m!4415673))

(declare-fun m!4415675 () Bool)

(assert (=> d!1144222 m!4415675))

(declare-fun m!4415677 () Bool)

(assert (=> d!1144222 m!4415677))

(declare-fun m!4415679 () Bool)

(assert (=> d!1144222 m!4415679))

(assert (=> b!3859543 d!1144222))

(declare-fun d!1144224 () Bool)

(assert (=> d!1144224 (= (inv!55082 (tag!7194 (h!46346 rules!2768))) (= (mod (str.len (value!201152 (tag!7194 (h!46346 rules!2768)))) 2) 0))))

(assert (=> b!3859545 d!1144224))

(declare-fun d!1144226 () Bool)

(declare-fun res!1562973 () Bool)

(declare-fun e!2386366 () Bool)

(assert (=> d!1144226 (=> (not res!1562973) (not e!2386366))))

(assert (=> d!1144226 (= res!1562973 (semiInverseModEq!2715 (toChars!8621 (transformation!6334 (h!46346 rules!2768))) (toValue!8762 (transformation!6334 (h!46346 rules!2768)))))))

(assert (=> d!1144226 (= (inv!55085 (transformation!6334 (h!46346 rules!2768))) e!2386366)))

(declare-fun b!3860111 () Bool)

(assert (=> b!3860111 (= e!2386366 (equivClasses!2614 (toChars!8621 (transformation!6334 (h!46346 rules!2768))) (toValue!8762 (transformation!6334 (h!46346 rules!2768)))))))

(assert (= (and d!1144226 res!1562973) b!3860111))

(declare-fun m!4415681 () Bool)

(assert (=> d!1144226 m!4415681))

(declare-fun m!4415683 () Bool)

(assert (=> b!3860111 m!4415683))

(assert (=> b!3859545 d!1144226))

(declare-fun d!1144228 () Bool)

(declare-fun res!1562974 () Bool)

(declare-fun e!2386367 () Bool)

(assert (=> d!1144228 (=> (not res!1562974) (not e!2386367))))

(assert (=> d!1144228 (= res!1562974 (not (isEmpty!24243 (originalCharacters!6934 (h!46347 prefixTokens!80)))))))

(assert (=> d!1144228 (= (inv!55086 (h!46347 prefixTokens!80)) e!2386367)))

(declare-fun b!3860112 () Bool)

(declare-fun res!1562975 () Bool)

(assert (=> b!3860112 (=> (not res!1562975) (not e!2386367))))

(assert (=> b!3860112 (= res!1562975 (= (originalCharacters!6934 (h!46347 prefixTokens!80)) (list!15232 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (value!201153 (h!46347 prefixTokens!80))))))))

(declare-fun b!3860113 () Bool)

(assert (=> b!3860113 (= e!2386367 (= (size!30777 (h!46347 prefixTokens!80)) (size!30778 (originalCharacters!6934 (h!46347 prefixTokens!80)))))))

(assert (= (and d!1144228 res!1562974) b!3860112))

(assert (= (and b!3860112 res!1562975) b!3860113))

(declare-fun b_lambda!112833 () Bool)

(assert (=> (not b_lambda!112833) (not b!3860112)))

(declare-fun t!313323 () Bool)

(declare-fun tb!223571 () Bool)

(assert (=> (and b!3859569 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80))))) t!313323) tb!223571))

(declare-fun b!3860114 () Bool)

(declare-fun e!2386368 () Bool)

(declare-fun tp!1170110 () Bool)

(assert (=> b!3860114 (= e!2386368 (and (inv!55089 (c!671977 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (value!201153 (h!46347 prefixTokens!80))))) tp!1170110))))

(declare-fun result!272276 () Bool)

(assert (=> tb!223571 (= result!272276 (and (inv!55090 (dynLambda!17653 (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (value!201153 (h!46347 prefixTokens!80)))) e!2386368))))

(assert (= tb!223571 b!3860114))

(declare-fun m!4415685 () Bool)

(assert (=> b!3860114 m!4415685))

(declare-fun m!4415687 () Bool)

(assert (=> tb!223571 m!4415687))

(assert (=> b!3860112 t!313323))

(declare-fun b_and!288933 () Bool)

(assert (= b_and!288927 (and (=> t!313323 result!272276) b_and!288933)))

(declare-fun tb!223573 () Bool)

(declare-fun t!313325 () Bool)

(assert (=> (and b!3859549 (= (toChars!8621 (transformation!6334 (h!46346 rules!2768))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80))))) t!313325) tb!223573))

(declare-fun result!272278 () Bool)

(assert (= result!272278 result!272276))

(assert (=> b!3860112 t!313325))

(declare-fun b_and!288935 () Bool)

(assert (= b_and!288929 (and (=> t!313325 result!272278) b_and!288935)))

(declare-fun t!313327 () Bool)

(declare-fun tb!223575 () Bool)

(assert (=> (and b!3859552 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80))))) t!313327) tb!223575))

(declare-fun result!272280 () Bool)

(assert (= result!272280 result!272276))

(assert (=> b!3860112 t!313327))

(declare-fun b_and!288937 () Bool)

(assert (= b_and!288931 (and (=> t!313327 result!272280) b_and!288937)))

(declare-fun m!4415689 () Bool)

(assert (=> d!1144228 m!4415689))

(declare-fun m!4415691 () Bool)

(assert (=> b!3860112 m!4415691))

(assert (=> b!3860112 m!4415691))

(declare-fun m!4415693 () Bool)

(assert (=> b!3860112 m!4415693))

(declare-fun m!4415695 () Bool)

(assert (=> b!3860113 m!4415695))

(assert (=> b!3859566 d!1144228))

(declare-fun b!3860126 () Bool)

(declare-fun e!2386371 () Bool)

(declare-fun tp!1170124 () Bool)

(declare-fun tp!1170123 () Bool)

(assert (=> b!3860126 (= e!2386371 (and tp!1170124 tp!1170123))))

(declare-fun b!3860127 () Bool)

(declare-fun tp!1170122 () Bool)

(assert (=> b!3860127 (= e!2386371 tp!1170122)))

(assert (=> b!3859568 (= tp!1170029 e!2386371)))

(declare-fun b!3860125 () Bool)

(assert (=> b!3860125 (= e!2386371 tp_is_empty!19449)))

(declare-fun b!3860128 () Bool)

(declare-fun tp!1170125 () Bool)

(declare-fun tp!1170121 () Bool)

(assert (=> b!3860128 (= e!2386371 (and tp!1170125 tp!1170121))))

(assert (= (and b!3859568 ((_ is ElementMatch!11239) (regex!6334 (rule!9200 (h!46347 suffixTokens!72))))) b!3860125))

(assert (= (and b!3859568 ((_ is Concat!17804) (regex!6334 (rule!9200 (h!46347 suffixTokens!72))))) b!3860126))

(assert (= (and b!3859568 ((_ is Star!11239) (regex!6334 (rule!9200 (h!46347 suffixTokens!72))))) b!3860127))

(assert (= (and b!3859568 ((_ is Union!11239) (regex!6334 (rule!9200 (h!46347 suffixTokens!72))))) b!3860128))

(declare-fun b!3860130 () Bool)

(declare-fun e!2386372 () Bool)

(declare-fun tp!1170129 () Bool)

(declare-fun tp!1170128 () Bool)

(assert (=> b!3860130 (= e!2386372 (and tp!1170129 tp!1170128))))

(declare-fun b!3860131 () Bool)

(declare-fun tp!1170127 () Bool)

(assert (=> b!3860131 (= e!2386372 tp!1170127)))

(assert (=> b!3859567 (= tp!1170032 e!2386372)))

(declare-fun b!3860129 () Bool)

(assert (=> b!3860129 (= e!2386372 tp_is_empty!19449)))

(declare-fun b!3860132 () Bool)

(declare-fun tp!1170130 () Bool)

(declare-fun tp!1170126 () Bool)

(assert (=> b!3860132 (= e!2386372 (and tp!1170130 tp!1170126))))

(assert (= (and b!3859567 ((_ is ElementMatch!11239) (regex!6334 (rule!9200 (h!46347 prefixTokens!80))))) b!3860129))

(assert (= (and b!3859567 ((_ is Concat!17804) (regex!6334 (rule!9200 (h!46347 prefixTokens!80))))) b!3860130))

(assert (= (and b!3859567 ((_ is Star!11239) (regex!6334 (rule!9200 (h!46347 prefixTokens!80))))) b!3860131))

(assert (= (and b!3859567 ((_ is Union!11239) (regex!6334 (rule!9200 (h!46347 prefixTokens!80))))) b!3860132))

(declare-fun b!3860137 () Bool)

(declare-fun e!2386375 () Bool)

(declare-fun tp!1170133 () Bool)

(assert (=> b!3860137 (= e!2386375 (and tp_is_empty!19449 tp!1170133))))

(assert (=> b!3859558 (= tp!1170030 e!2386375)))

(assert (= (and b!3859558 ((_ is Cons!40925) (t!313252 suffixResult!91))) b!3860137))

(declare-fun b!3860138 () Bool)

(declare-fun e!2386376 () Bool)

(declare-fun tp!1170134 () Bool)

(assert (=> b!3860138 (= e!2386376 (and tp_is_empty!19449 tp!1170134))))

(assert (=> b!3859570 (= tp!1170023 e!2386376)))

(assert (= (and b!3859570 ((_ is Cons!40925) (t!313252 prefix!426))) b!3860138))

(declare-fun b!3860139 () Bool)

(declare-fun e!2386377 () Bool)

(declare-fun tp!1170135 () Bool)

(assert (=> b!3860139 (= e!2386377 (and tp_is_empty!19449 tp!1170135))))

(assert (=> b!3859571 (= tp!1170035 e!2386377)))

(assert (= (and b!3859571 ((_ is Cons!40925) (t!313252 suffix!1176))) b!3860139))

(declare-fun b!3860140 () Bool)

(declare-fun e!2386378 () Bool)

(declare-fun tp!1170136 () Bool)

(assert (=> b!3860140 (= e!2386378 (and tp_is_empty!19449 tp!1170136))))

(assert (=> b!3859550 (= tp!1170024 e!2386378)))

(assert (= (and b!3859550 ((_ is Cons!40925) (originalCharacters!6934 (h!46347 suffixTokens!72)))) b!3860140))

(declare-fun b!3860154 () Bool)

(declare-fun b_free!103765 () Bool)

(declare-fun b_next!104469 () Bool)

(assert (=> b!3860154 (= b_free!103765 (not b_next!104469))))

(declare-fun tb!223577 () Bool)

(declare-fun t!313329 () Bool)

(assert (=> (and b!3860154 (= (toValue!8762 (transformation!6334 (rule!9200 (h!46347 (t!313254 suffixTokens!72))))) (toValue!8762 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313329) tb!223577))

(declare-fun result!272288 () Bool)

(assert (= result!272288 result!272262))

(assert (=> d!1144204 t!313329))

(declare-fun b_and!288939 () Bool)

(declare-fun tp!1170148 () Bool)

(assert (=> b!3860154 (= tp!1170148 (and (=> t!313329 result!272288) b_and!288939))))

(declare-fun b_free!103767 () Bool)

(declare-fun b_next!104471 () Bool)

(assert (=> b!3860154 (= b_free!103767 (not b_next!104471))))

(declare-fun t!313331 () Bool)

(declare-fun tb!223579 () Bool)

(assert (=> (and b!3860154 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 suffixTokens!72))))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72))))) t!313331) tb!223579))

(declare-fun result!272290 () Bool)

(assert (= result!272290 result!272222))

(assert (=> b!3859857 t!313331))

(declare-fun t!313333 () Bool)

(declare-fun tb!223581 () Bool)

(assert (=> (and b!3860154 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 suffixTokens!72))))) (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313333) tb!223581))

(declare-fun result!272292 () Bool)

(assert (= result!272292 result!272270))

(assert (=> d!1144208 t!313333))

(declare-fun t!313335 () Bool)

(declare-fun tb!223583 () Bool)

(assert (=> (and b!3860154 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 suffixTokens!72))))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80))))) t!313335) tb!223583))

(declare-fun result!272294 () Bool)

(assert (= result!272294 result!272276))

(assert (=> b!3860112 t!313335))

(declare-fun tp!1170147 () Bool)

(declare-fun b_and!288941 () Bool)

(assert (=> b!3860154 (= tp!1170147 (and (=> t!313331 result!272290) (=> t!313333 result!272292) (=> t!313335 result!272294) b_and!288941))))

(declare-fun e!2386395 () Bool)

(declare-fun b!3860151 () Bool)

(declare-fun e!2386392 () Bool)

(declare-fun tp!1170151 () Bool)

(assert (=> b!3860151 (= e!2386392 (and (inv!55086 (h!46347 (t!313254 suffixTokens!72))) e!2386395 tp!1170151))))

(declare-fun e!2386396 () Bool)

(assert (=> b!3860154 (= e!2386396 (and tp!1170148 tp!1170147))))

(declare-fun e!2386391 () Bool)

(declare-fun tp!1170149 () Bool)

(declare-fun b!3860152 () Bool)

(assert (=> b!3860152 (= e!2386395 (and (inv!21 (value!201153 (h!46347 (t!313254 suffixTokens!72)))) e!2386391 tp!1170149))))

(declare-fun b!3860153 () Bool)

(declare-fun tp!1170150 () Bool)

(assert (=> b!3860153 (= e!2386391 (and tp!1170150 (inv!55082 (tag!7194 (rule!9200 (h!46347 (t!313254 suffixTokens!72))))) (inv!55085 (transformation!6334 (rule!9200 (h!46347 (t!313254 suffixTokens!72))))) e!2386396))))

(assert (=> b!3859573 (= tp!1170022 e!2386392)))

(assert (= b!3860153 b!3860154))

(assert (= b!3860152 b!3860153))

(assert (= b!3860151 b!3860152))

(assert (= (and b!3859573 ((_ is Cons!40927) (t!313254 suffixTokens!72))) b!3860151))

(declare-fun m!4415697 () Bool)

(assert (=> b!3860151 m!4415697))

(declare-fun m!4415699 () Bool)

(assert (=> b!3860152 m!4415699))

(declare-fun m!4415701 () Bool)

(assert (=> b!3860153 m!4415701))

(declare-fun m!4415703 () Bool)

(assert (=> b!3860153 m!4415703))

(declare-fun b!3860165 () Bool)

(declare-fun b_free!103769 () Bool)

(declare-fun b_next!104473 () Bool)

(assert (=> b!3860165 (= b_free!103769 (not b_next!104473))))

(declare-fun t!313337 () Bool)

(declare-fun tb!223585 () Bool)

(assert (=> (and b!3860165 (= (toValue!8762 (transformation!6334 (h!46346 (t!313253 rules!2768)))) (toValue!8762 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313337) tb!223585))

(declare-fun result!272298 () Bool)

(assert (= result!272298 result!272262))

(assert (=> d!1144204 t!313337))

(declare-fun tp!1170161 () Bool)

(declare-fun b_and!288943 () Bool)

(assert (=> b!3860165 (= tp!1170161 (and (=> t!313337 result!272298) b_and!288943))))

(declare-fun b_free!103771 () Bool)

(declare-fun b_next!104475 () Bool)

(assert (=> b!3860165 (= b_free!103771 (not b_next!104475))))

(declare-fun tb!223587 () Bool)

(declare-fun t!313339 () Bool)

(assert (=> (and b!3860165 (= (toChars!8621 (transformation!6334 (h!46346 (t!313253 rules!2768)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72))))) t!313339) tb!223587))

(declare-fun result!272300 () Bool)

(assert (= result!272300 result!272222))

(assert (=> b!3859857 t!313339))

(declare-fun t!313341 () Bool)

(declare-fun tb!223589 () Bool)

(assert (=> (and b!3860165 (= (toChars!8621 (transformation!6334 (h!46346 (t!313253 rules!2768)))) (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313341) tb!223589))

(declare-fun result!272302 () Bool)

(assert (= result!272302 result!272270))

(assert (=> d!1144208 t!313341))

(declare-fun t!313343 () Bool)

(declare-fun tb!223591 () Bool)

(assert (=> (and b!3860165 (= (toChars!8621 (transformation!6334 (h!46346 (t!313253 rules!2768)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80))))) t!313343) tb!223591))

(declare-fun result!272304 () Bool)

(assert (= result!272304 result!272276))

(assert (=> b!3860112 t!313343))

(declare-fun b_and!288945 () Bool)

(declare-fun tp!1170163 () Bool)

(assert (=> b!3860165 (= tp!1170163 (and (=> t!313339 result!272300) (=> t!313341 result!272302) (=> t!313343 result!272304) b_and!288945))))

(declare-fun e!2386407 () Bool)

(assert (=> b!3860165 (= e!2386407 (and tp!1170161 tp!1170163))))

(declare-fun tp!1170160 () Bool)

(declare-fun b!3860164 () Bool)

(declare-fun e!2386408 () Bool)

(assert (=> b!3860164 (= e!2386408 (and tp!1170160 (inv!55082 (tag!7194 (h!46346 (t!313253 rules!2768)))) (inv!55085 (transformation!6334 (h!46346 (t!313253 rules!2768)))) e!2386407))))

(declare-fun b!3860163 () Bool)

(declare-fun e!2386406 () Bool)

(declare-fun tp!1170162 () Bool)

(assert (=> b!3860163 (= e!2386406 (and e!2386408 tp!1170162))))

(assert (=> b!3859563 (= tp!1170028 e!2386406)))

(assert (= b!3860164 b!3860165))

(assert (= b!3860163 b!3860164))

(assert (= (and b!3859563 ((_ is Cons!40926) (t!313253 rules!2768))) b!3860163))

(declare-fun m!4415705 () Bool)

(assert (=> b!3860164 m!4415705))

(declare-fun m!4415707 () Bool)

(assert (=> b!3860164 m!4415707))

(declare-fun b!3860166 () Bool)

(declare-fun e!2386409 () Bool)

(declare-fun tp!1170164 () Bool)

(assert (=> b!3860166 (= e!2386409 (and tp_is_empty!19449 tp!1170164))))

(assert (=> b!3859554 (= tp!1170025 e!2386409)))

(assert (= (and b!3859554 ((_ is Cons!40925) (originalCharacters!6934 (h!46347 prefixTokens!80)))) b!3860166))

(declare-fun b!3860168 () Bool)

(declare-fun e!2386410 () Bool)

(declare-fun tp!1170168 () Bool)

(declare-fun tp!1170167 () Bool)

(assert (=> b!3860168 (= e!2386410 (and tp!1170168 tp!1170167))))

(declare-fun b!3860169 () Bool)

(declare-fun tp!1170166 () Bool)

(assert (=> b!3860169 (= e!2386410 tp!1170166)))

(assert (=> b!3859545 (= tp!1170031 e!2386410)))

(declare-fun b!3860167 () Bool)

(assert (=> b!3860167 (= e!2386410 tp_is_empty!19449)))

(declare-fun b!3860170 () Bool)

(declare-fun tp!1170169 () Bool)

(declare-fun tp!1170165 () Bool)

(assert (=> b!3860170 (= e!2386410 (and tp!1170169 tp!1170165))))

(assert (= (and b!3859545 ((_ is ElementMatch!11239) (regex!6334 (h!46346 rules!2768)))) b!3860167))

(assert (= (and b!3859545 ((_ is Concat!17804) (regex!6334 (h!46346 rules!2768)))) b!3860168))

(assert (= (and b!3859545 ((_ is Star!11239) (regex!6334 (h!46346 rules!2768)))) b!3860169))

(assert (= (and b!3859545 ((_ is Union!11239) (regex!6334 (h!46346 rules!2768)))) b!3860170))

(declare-fun b!3860174 () Bool)

(declare-fun b_free!103773 () Bool)

(declare-fun b_next!104477 () Bool)

(assert (=> b!3860174 (= b_free!103773 (not b_next!104477))))

(declare-fun t!313345 () Bool)

(declare-fun tb!223593 () Bool)

(assert (=> (and b!3860174 (= (toValue!8762 (transformation!6334 (rule!9200 (h!46347 (t!313254 prefixTokens!80))))) (toValue!8762 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313345) tb!223593))

(declare-fun result!272306 () Bool)

(assert (= result!272306 result!272262))

(assert (=> d!1144204 t!313345))

(declare-fun tp!1170171 () Bool)

(declare-fun b_and!288947 () Bool)

(assert (=> b!3860174 (= tp!1170171 (and (=> t!313345 result!272306) b_and!288947))))

(declare-fun b_free!103775 () Bool)

(declare-fun b_next!104479 () Bool)

(assert (=> b!3860174 (= b_free!103775 (not b_next!104479))))

(declare-fun t!313347 () Bool)

(declare-fun tb!223595 () Bool)

(assert (=> (and b!3860174 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 prefixTokens!80))))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72))))) t!313347) tb!223595))

(declare-fun result!272308 () Bool)

(assert (= result!272308 result!272222))

(assert (=> b!3859857 t!313347))

(declare-fun tb!223597 () Bool)

(declare-fun t!313349 () Bool)

(assert (=> (and b!3860174 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 prefixTokens!80))))) (toChars!8621 (transformation!6334 (rule!9200 (_1!23197 (v!39049 lt!1341100)))))) t!313349) tb!223597))

(declare-fun result!272310 () Bool)

(assert (= result!272310 result!272270))

(assert (=> d!1144208 t!313349))

(declare-fun t!313351 () Bool)

(declare-fun tb!223599 () Bool)

(assert (=> (and b!3860174 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 prefixTokens!80))))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80))))) t!313351) tb!223599))

(declare-fun result!272312 () Bool)

(assert (= result!272312 result!272276))

(assert (=> b!3860112 t!313351))

(declare-fun tp!1170170 () Bool)

(declare-fun b_and!288949 () Bool)

(assert (=> b!3860174 (= tp!1170170 (and (=> t!313347 result!272308) (=> t!313349 result!272310) (=> t!313351 result!272312) b_and!288949))))

(declare-fun tp!1170174 () Bool)

(declare-fun e!2386415 () Bool)

(declare-fun e!2386412 () Bool)

(declare-fun b!3860171 () Bool)

(assert (=> b!3860171 (= e!2386412 (and (inv!55086 (h!46347 (t!313254 prefixTokens!80))) e!2386415 tp!1170174))))

(declare-fun e!2386416 () Bool)

(assert (=> b!3860174 (= e!2386416 (and tp!1170171 tp!1170170))))

(declare-fun b!3860172 () Bool)

(declare-fun e!2386411 () Bool)

(declare-fun tp!1170172 () Bool)

(assert (=> b!3860172 (= e!2386415 (and (inv!21 (value!201153 (h!46347 (t!313254 prefixTokens!80)))) e!2386411 tp!1170172))))

(declare-fun tp!1170173 () Bool)

(declare-fun b!3860173 () Bool)

(assert (=> b!3860173 (= e!2386411 (and tp!1170173 (inv!55082 (tag!7194 (rule!9200 (h!46347 (t!313254 prefixTokens!80))))) (inv!55085 (transformation!6334 (rule!9200 (h!46347 (t!313254 prefixTokens!80))))) e!2386416))))

(assert (=> b!3859566 (= tp!1170021 e!2386412)))

(assert (= b!3860173 b!3860174))

(assert (= b!3860172 b!3860173))

(assert (= b!3860171 b!3860172))

(assert (= (and b!3859566 ((_ is Cons!40927) (t!313254 prefixTokens!80))) b!3860171))

(declare-fun m!4415709 () Bool)

(assert (=> b!3860171 m!4415709))

(declare-fun m!4415711 () Bool)

(assert (=> b!3860172 m!4415711))

(declare-fun m!4415713 () Bool)

(assert (=> b!3860173 m!4415713))

(declare-fun m!4415715 () Bool)

(assert (=> b!3860173 m!4415715))

(declare-fun b_lambda!112835 () Bool)

(assert (= b_lambda!112823 (or (and b!3859552 b_free!103751 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))))) (and b!3860154 b_free!103767 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 suffixTokens!72))))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))))) (and b!3859549 b_free!103747 (= (toChars!8621 (transformation!6334 (h!46346 rules!2768))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))))) (and b!3860165 b_free!103771 (= (toChars!8621 (transformation!6334 (h!46346 (t!313253 rules!2768)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))))) (and b!3860174 b_free!103775 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 prefixTokens!80))))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))))) (and b!3859569 b_free!103743) b_lambda!112835)))

(declare-fun b_lambda!112837 () Bool)

(assert (= b_lambda!112833 (or (and b!3860165 b_free!103771 (= (toChars!8621 (transformation!6334 (h!46346 (t!313253 rules!2768)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))))) (and b!3859549 b_free!103747 (= (toChars!8621 (transformation!6334 (h!46346 rules!2768))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))))) (and b!3859569 b_free!103743 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 suffixTokens!72)))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))))) (and b!3859552 b_free!103751) (and b!3860174 b_free!103775 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 prefixTokens!80))))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))))) (and b!3860154 b_free!103767 (= (toChars!8621 (transformation!6334 (rule!9200 (h!46347 (t!313254 suffixTokens!72))))) (toChars!8621 (transformation!6334 (rule!9200 (h!46347 prefixTokens!80)))))) b_lambda!112837)))

(check-sat (not b!3859870) (not b!3860127) (not b_next!104455) (not b!3860037) (not b!3860079) (not d!1144178) (not b!3859868) (not b!3860126) (not b!3860131) (not b!3860169) b_and!288947 b_and!288933 b_and!288945 b_and!288937 (not b!3860105) (not b!3859646) (not b!3860035) (not b!3860112) (not b_next!104479) (not b!3859864) (not d!1144206) (not b!3860021) (not d!1144098) (not b!3860163) (not b!3859961) (not b!3859650) (not b!3860151) (not bm!282520) (not b!3860070) (not b_lambda!112837) (not b!3860098) (not b!3859648) (not b!3860074) (not b!3860152) (not b!3860173) (not b!3860130) (not b!3859959) tp_is_empty!19449 (not d!1144184) (not b!3859863) (not d!1144216) (not d!1144192) (not b!3860071) (not b!3860113) (not b_next!104453) (not d!1144082) (not b!3859742) (not b!3859743) (not b_next!104471) (not b!3859876) (not d!1144208) (not b_lambda!112829) (not d!1144202) (not tb!223559) (not b!3859731) (not b!3859781) (not b!3859634) (not d!1144226) (not b_lambda!112835) (not d!1144190) (not b!3859880) (not d!1144214) (not b!3859877) (not b_next!104469) (not b!3859960) (not tb!223565) (not b!3860109) (not b!3860114) (not b_lambda!112831) (not b!3860111) b_and!288939 (not b_next!104451) b_and!288921 (not d!1144212) (not b!3859782) (not b!3860153) (not b!3860166) (not d!1144188) b_and!288935 (not b!3859957) (not b!3860140) (not b!3859808) (not b!3860171) (not b!3859810) (not b!3860076) (not b!3859732) (not b!3859656) b_and!288949 (not d!1144134) (not b!3859967) (not b!3860172) (not b!3860036) (not d!1144186) (not b!3859730) (not d!1144174) (not d!1144210) (not b!3860023) (not b!3860132) (not b!3859964) (not b!3860011) (not d!1144200) (not d!1144136) (not b!3860139) (not d!1144222) (not b!3860022) (not b_next!104449) (not d!1144194) (not b!3860008) (not tb!223571) (not b!3860170) (not b!3860004) (not b!3859631) (not b!3859866) (not b_next!104445) (not b!3860028) b_and!288923 (not b!3859872) (not d!1144154) (not b!3860103) (not d!1144176) (not b!3860108) (not b!3859858) b_and!288925 (not b!3860101) (not b!3859958) (not tb!223529) (not b!3860128) (not b!3860137) (not b!3860138) (not b!3859857) (not b!3860104) (not b_next!104475) (not b!3860168) (not d!1144070) (not b_next!104473) (not b!3860078) b_and!288941 b_and!288943 (not d!1144228) (not b_next!104477) (not b!3860007) (not b!3860102) (not b!3859966) (not bm!282523) (not b_next!104447) (not b!3860100) (not b!3860164) (not b!3860032) (not b!3860099) (not b!3859806) (not b!3859875))
(check-sat (not b_next!104455) (not b_next!104479) (not b_next!104469) b_and!288939 b_and!288935 b_and!288949 (not b_next!104449) (not b_next!104445) b_and!288923 b_and!288925 (not b_next!104475) (not b_next!104447) b_and!288947 b_and!288933 b_and!288945 b_and!288937 (not b_next!104453) (not b_next!104471) (not b_next!104451) b_and!288921 (not b_next!104473) b_and!288941 b_and!288943 (not b_next!104477))
