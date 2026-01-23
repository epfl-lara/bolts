; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361296 () Bool)

(assert start!361296)

(declare-fun b!3855259 () Bool)

(declare-fun b_free!103477 () Bool)

(declare-fun b_next!104181 () Bool)

(assert (=> b!3855259 (= b_free!103477 (not b_next!104181))))

(declare-fun tp!1168636 () Bool)

(declare-fun b_and!288243 () Bool)

(assert (=> b!3855259 (= tp!1168636 b_and!288243)))

(declare-fun b_free!103479 () Bool)

(declare-fun b_next!104183 () Bool)

(assert (=> b!3855259 (= b_free!103479 (not b_next!104183))))

(declare-fun tp!1168640 () Bool)

(declare-fun b_and!288245 () Bool)

(assert (=> b!3855259 (= tp!1168640 b_and!288245)))

(declare-fun b!3855256 () Bool)

(declare-fun b_free!103481 () Bool)

(declare-fun b_next!104185 () Bool)

(assert (=> b!3855256 (= b_free!103481 (not b_next!104185))))

(declare-fun tp!1168639 () Bool)

(declare-fun b_and!288247 () Bool)

(assert (=> b!3855256 (= tp!1168639 b_and!288247)))

(declare-fun b_free!103483 () Bool)

(declare-fun b_next!104187 () Bool)

(assert (=> b!3855256 (= b_free!103483 (not b_next!104187))))

(declare-fun tp!1168634 () Bool)

(declare-fun b_and!288249 () Bool)

(assert (=> b!3855256 (= tp!1168634 b_and!288249)))

(declare-fun b!3855241 () Bool)

(declare-fun b_free!103485 () Bool)

(declare-fun b_next!104189 () Bool)

(assert (=> b!3855241 (= b_free!103485 (not b_next!104189))))

(declare-fun tp!1168643 () Bool)

(declare-fun b_and!288251 () Bool)

(assert (=> b!3855241 (= tp!1168643 b_and!288251)))

(declare-fun b_free!103487 () Bool)

(declare-fun b_next!104191 () Bool)

(assert (=> b!3855241 (= b_free!103487 (not b_next!104191))))

(declare-fun tp!1168632 () Bool)

(declare-fun b_and!288253 () Bool)

(assert (=> b!3855241 (= tp!1168632 b_and!288253)))

(declare-fun e!2383158 () Bool)

(declare-fun b!3855235 () Bool)

(declare-datatypes ((List!40986 0))(
  ( (Nil!40862) (Cons!40862 (h!46282 (_ BitVec 16)) (t!312563 List!40986)) )
))
(declare-datatypes ((TokenValue!6550 0))(
  ( (FloatLiteralValue!13100 (text!46295 List!40986)) (TokenValueExt!6549 (__x!25317 Int)) (Broken!32750 (value!200728 List!40986)) (Object!6673) (End!6550) (Def!6550) (Underscore!6550) (Match!6550) (Else!6550) (Error!6550) (Case!6550) (If!6550) (Extends!6550) (Abstract!6550) (Class!6550) (Val!6550) (DelimiterValue!13100 (del!6610 List!40986)) (KeywordValue!6556 (value!200729 List!40986)) (CommentValue!13100 (value!200730 List!40986)) (WhitespaceValue!13100 (value!200731 List!40986)) (IndentationValue!6550 (value!200732 List!40986)) (String!46467) (Int32!6550) (Broken!32751 (value!200733 List!40986)) (Boolean!6551) (Unit!58529) (OperatorValue!6553 (op!6610 List!40986)) (IdentifierValue!13100 (value!200734 List!40986)) (IdentifierValue!13101 (value!200735 List!40986)) (WhitespaceValue!13101 (value!200736 List!40986)) (True!13100) (False!13100) (Broken!32752 (value!200737 List!40986)) (Broken!32753 (value!200738 List!40986)) (True!13101) (RightBrace!6550) (RightBracket!6550) (Colon!6550) (Null!6550) (Comma!6550) (LeftBracket!6550) (False!13101) (LeftBrace!6550) (ImaginaryLiteralValue!6550 (text!46296 List!40986)) (StringLiteralValue!19650 (value!200739 List!40986)) (EOFValue!6550 (value!200740 List!40986)) (IdentValue!6550 (value!200741 List!40986)) (DelimiterValue!13101 (value!200742 List!40986)) (DedentValue!6550 (value!200743 List!40986)) (NewLineValue!6550 (value!200744 List!40986)) (IntegerValue!19650 (value!200745 (_ BitVec 32)) (text!46297 List!40986)) (IntegerValue!19651 (value!200746 Int) (text!46298 List!40986)) (Times!6550) (Or!6550) (Equal!6550) (Minus!6550) (Broken!32754 (value!200747 List!40986)) (And!6550) (Div!6550) (LessEqual!6550) (Mod!6550) (Concat!17775) (Not!6550) (Plus!6550) (SpaceValue!6550 (value!200748 List!40986)) (IntegerValue!19652 (value!200749 Int) (text!46299 List!40986)) (StringLiteralValue!19651 (text!46300 List!40986)) (FloatLiteralValue!13101 (text!46301 List!40986)) (BytesLiteralValue!6550 (value!200750 List!40986)) (CommentValue!13101 (value!200751 List!40986)) (StringLiteralValue!19652 (value!200752 List!40986)) (ErrorTokenValue!6550 (msg!6611 List!40986)) )
))
(declare-datatypes ((C!22636 0))(
  ( (C!22637 (val!13412 Int)) )
))
(declare-datatypes ((Regex!11225 0))(
  ( (ElementMatch!11225 (c!671348 C!22636)) (Concat!17776 (regOne!22962 Regex!11225) (regTwo!22962 Regex!11225)) (EmptyExpr!11225) (Star!11225 (reg!11554 Regex!11225)) (EmptyLang!11225) (Union!11225 (regOne!22963 Regex!11225) (regTwo!22963 Regex!11225)) )
))
(declare-datatypes ((String!46468 0))(
  ( (String!46469 (value!200753 String)) )
))
(declare-datatypes ((List!40987 0))(
  ( (Nil!40863) (Cons!40863 (h!46283 C!22636) (t!312564 List!40987)) )
))
(declare-datatypes ((IArray!25067 0))(
  ( (IArray!25068 (innerList!12591 List!40987)) )
))
(declare-datatypes ((Conc!12531 0))(
  ( (Node!12531 (left!31501 Conc!12531) (right!31831 Conc!12531) (csize!25292 Int) (cheight!12742 Int)) (Leaf!19398 (xs!15837 IArray!25067) (csize!25293 Int)) (Empty!12531) )
))
(declare-datatypes ((BalanceConc!24656 0))(
  ( (BalanceConc!24657 (c!671349 Conc!12531)) )
))
(declare-datatypes ((TokenValueInjection!12528 0))(
  ( (TokenValueInjection!12529 (toValue!8744 Int) (toChars!8603 Int)) )
))
(declare-datatypes ((Rule!12440 0))(
  ( (Rule!12441 (regex!6320 Regex!11225) (tag!7180 String!46468) (isSeparator!6320 Bool) (transformation!6320 TokenValueInjection!12528)) )
))
(declare-datatypes ((Token!11778 0))(
  ( (Token!11779 (value!200754 TokenValue!6550) (rule!9180 Rule!12440) (size!30735 Int) (originalCharacters!6920 List!40987)) )
))
(declare-datatypes ((List!40988 0))(
  ( (Nil!40864) (Cons!40864 (h!46284 Token!11778) (t!312565 List!40988)) )
))
(declare-fun prefixTokens!80 () List!40988)

(declare-fun tp!1168630 () Bool)

(declare-fun e!2383153 () Bool)

(declare-fun inv!21 (TokenValue!6550) Bool)

(assert (=> b!3855235 (= e!2383153 (and (inv!21 (value!200754 (h!46284 prefixTokens!80))) e!2383158 tp!1168630))))

(declare-fun b!3855236 () Bool)

(declare-fun res!1560790 () Bool)

(declare-fun e!2383146 () Bool)

(assert (=> b!3855236 (=> res!1560790 e!2383146)))

(declare-datatypes ((tuple2!40058 0))(
  ( (tuple2!40059 (_1!23163 List!40988) (_2!23163 List!40987)) )
))
(declare-fun lt!1339266 () tuple2!40058)

(declare-fun suffix!1176 () List!40987)

(declare-datatypes ((tuple2!40060 0))(
  ( (tuple2!40061 (_1!23164 Token!11778) (_2!23164 List!40987)) )
))
(declare-datatypes ((Option!8738 0))(
  ( (None!8737) (Some!8737 (v!39033 tuple2!40060)) )
))
(declare-fun lt!1339271 () Option!8738)

(assert (=> b!3855236 (= res!1560790 (or (not (= lt!1339266 (tuple2!40059 (_1!23163 lt!1339266) (_2!23163 lt!1339266)))) (= (_2!23164 (v!39033 lt!1339271)) suffix!1176)))))

(declare-fun b!3855237 () Bool)

(declare-fun e!2383141 () Bool)

(declare-fun e!2383143 () Bool)

(assert (=> b!3855237 (= e!2383141 e!2383143)))

(declare-fun res!1560802 () Bool)

(assert (=> b!3855237 (=> res!1560802 e!2383143)))

(declare-fun lt!1339268 () Int)

(declare-fun lt!1339258 () Int)

(declare-fun lt!1339261 () Int)

(declare-fun lt!1339255 () Int)

(assert (=> b!3855237 (= res!1560802 (or (not (= (+ lt!1339258 lt!1339268) lt!1339261)) (<= lt!1339255 lt!1339258)))))

(declare-fun prefix!426 () List!40987)

(declare-fun size!30736 (List!40987) Int)

(assert (=> b!3855237 (= lt!1339258 (size!30736 prefix!426))))

(declare-fun b!3855238 () Bool)

(declare-fun res!1560792 () Bool)

(declare-fun e!2383161 () Bool)

(assert (=> b!3855238 (=> res!1560792 e!2383161)))

(declare-fun lt!1339273 () tuple2!40060)

(assert (=> b!3855238 (= res!1560792 (>= (size!30736 (_2!23164 lt!1339273)) lt!1339268))))

(declare-fun b!3855239 () Bool)

(declare-fun res!1560799 () Bool)

(declare-fun e!2383160 () Bool)

(assert (=> b!3855239 (=> (not res!1560799) (not e!2383160))))

(declare-datatypes ((List!40989 0))(
  ( (Nil!40865) (Cons!40865 (h!46285 Rule!12440) (t!312566 List!40989)) )
))
(declare-fun rules!2768 () List!40989)

(declare-fun isEmpty!24194 (List!40989) Bool)

(assert (=> b!3855239 (= res!1560799 (not (isEmpty!24194 rules!2768)))))

(declare-fun b!3855240 () Bool)

(declare-fun isDefined!6857 (Option!8738) Bool)

(assert (=> b!3855240 (= e!2383161 (isDefined!6857 lt!1339271))))

(declare-fun e!2383149 () Bool)

(assert (=> b!3855241 (= e!2383149 (and tp!1168643 tp!1168632))))

(declare-fun b!3855242 () Bool)

(declare-fun e!2383139 () Bool)

(declare-fun e!2383159 () Bool)

(assert (=> b!3855242 (= e!2383139 e!2383159)))

(declare-fun res!1560803 () Bool)

(assert (=> b!3855242 (=> (not res!1560803) (not e!2383159))))

(get-info :version)

(assert (=> b!3855242 (= res!1560803 ((_ is Some!8737) lt!1339271))))

(declare-datatypes ((LexerInterface!5909 0))(
  ( (LexerInterfaceExt!5906 (__x!25318 Int)) (Lexer!5907) )
))
(declare-fun thiss!20629 () LexerInterface!5909)

(declare-fun lt!1339257 () List!40987)

(declare-fun maxPrefix!3213 (LexerInterface!5909 List!40989 List!40987) Option!8738)

(assert (=> b!3855242 (= lt!1339271 (maxPrefix!3213 thiss!20629 rules!2768 lt!1339257))))

(declare-fun b!3855243 () Bool)

(declare-fun e!2383142 () Bool)

(declare-fun e!2383137 () Bool)

(declare-fun tp!1168641 () Bool)

(declare-fun suffixTokens!72 () List!40988)

(declare-fun inv!55015 (String!46468) Bool)

(declare-fun inv!55018 (TokenValueInjection!12528) Bool)

(assert (=> b!3855243 (= e!2383137 (and tp!1168641 (inv!55015 (tag!7180 (rule!9180 (h!46284 suffixTokens!72)))) (inv!55018 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) e!2383142))))

(declare-fun b!3855244 () Bool)

(declare-fun e!2383150 () Bool)

(declare-fun tp_is_empty!19421 () Bool)

(declare-fun tp!1168646 () Bool)

(assert (=> b!3855244 (= e!2383150 (and tp_is_empty!19421 tp!1168646))))

(declare-fun b!3855245 () Bool)

(declare-fun res!1560789 () Bool)

(assert (=> b!3855245 (=> (not res!1560789) (not e!2383160))))

(declare-fun isEmpty!24195 (List!40987) Bool)

(assert (=> b!3855245 (= res!1560789 (not (isEmpty!24195 prefix!426)))))

(declare-fun b!3855246 () Bool)

(declare-fun e!2383147 () Bool)

(assert (=> b!3855246 (= e!2383147 e!2383141)))

(declare-fun res!1560791 () Bool)

(assert (=> b!3855246 (=> res!1560791 e!2383141)))

(declare-fun lt!1339264 () Int)

(assert (=> b!3855246 (= res!1560791 (not (= (+ lt!1339255 lt!1339264) lt!1339261)))))

(assert (=> b!3855246 (= lt!1339261 (size!30736 lt!1339257))))

(declare-fun b!3855247 () Bool)

(declare-fun tp!1168642 () Bool)

(declare-fun e!2383136 () Bool)

(assert (=> b!3855247 (= e!2383136 (and (inv!21 (value!200754 (h!46284 suffixTokens!72))) e!2383137 tp!1168642))))

(declare-fun b!3855248 () Bool)

(assert (=> b!3855248 (= e!2383159 (not e!2383146))))

(declare-fun res!1560798 () Bool)

(assert (=> b!3855248 (=> res!1560798 e!2383146)))

(declare-fun lt!1339270 () List!40987)

(assert (=> b!3855248 (= res!1560798 (not (= lt!1339270 lt!1339257)))))

(declare-fun lexList!1677 (LexerInterface!5909 List!40989 List!40987) tuple2!40058)

(assert (=> b!3855248 (= lt!1339266 (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339271))))))

(declare-fun lt!1339254 () TokenValue!6550)

(declare-fun lt!1339262 () List!40987)

(declare-fun lt!1339269 () List!40987)

(assert (=> b!3855248 (and (= (size!30735 (_1!23164 (v!39033 lt!1339271))) lt!1339255) (= (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271))) lt!1339269) (= (tuple2!40061 (_1!23164 (v!39033 lt!1339271)) (_2!23164 (v!39033 lt!1339271))) (tuple2!40061 (Token!11779 lt!1339254 (rule!9180 (_1!23164 (v!39033 lt!1339271))) lt!1339255 lt!1339269) lt!1339262)))))

(assert (=> b!3855248 (= lt!1339255 (size!30736 lt!1339269))))

(declare-fun e!2383157 () Bool)

(assert (=> b!3855248 e!2383157))

(declare-fun res!1560801 () Bool)

(assert (=> b!3855248 (=> (not res!1560801) (not e!2383157))))

(assert (=> b!3855248 (= res!1560801 (= (value!200754 (_1!23164 (v!39033 lt!1339271))) lt!1339254))))

(declare-fun apply!9563 (TokenValueInjection!12528 BalanceConc!24656) TokenValue!6550)

(declare-fun seqFromList!4591 (List!40987) BalanceConc!24656)

(assert (=> b!3855248 (= lt!1339254 (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (seqFromList!4591 lt!1339269)))))

(assert (=> b!3855248 (= (_2!23164 (v!39033 lt!1339271)) lt!1339262)))

(declare-datatypes ((Unit!58530 0))(
  ( (Unit!58531) )
))
(declare-fun lt!1339265 () Unit!58530)

(declare-fun lemmaSamePrefixThenSameSuffix!1640 (List!40987 List!40987 List!40987 List!40987 List!40987) Unit!58530)

(assert (=> b!3855248 (= lt!1339265 (lemmaSamePrefixThenSameSuffix!1640 lt!1339269 (_2!23164 (v!39033 lt!1339271)) lt!1339269 lt!1339262 lt!1339257))))

(declare-fun getSuffix!1874 (List!40987 List!40987) List!40987)

(assert (=> b!3855248 (= lt!1339262 (getSuffix!1874 lt!1339257 lt!1339269))))

(declare-fun isPrefix!3419 (List!40987 List!40987) Bool)

(assert (=> b!3855248 (isPrefix!3419 lt!1339269 lt!1339270)))

(declare-fun ++!10397 (List!40987 List!40987) List!40987)

(assert (=> b!3855248 (= lt!1339270 (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271))))))

(declare-fun lt!1339256 () Unit!58530)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2282 (List!40987 List!40987) Unit!58530)

(assert (=> b!3855248 (= lt!1339256 (lemmaConcatTwoListThenFirstIsPrefix!2282 lt!1339269 (_2!23164 (v!39033 lt!1339271))))))

(declare-fun list!15210 (BalanceConc!24656) List!40987)

(declare-fun charsOf!4148 (Token!11778) BalanceConc!24656)

(assert (=> b!3855248 (= lt!1339269 (list!15210 (charsOf!4148 (_1!23164 (v!39033 lt!1339271)))))))

(declare-fun ruleValid!2272 (LexerInterface!5909 Rule!12440) Bool)

(assert (=> b!3855248 (ruleValid!2272 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))

(declare-fun lt!1339263 () Unit!58530)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1352 (LexerInterface!5909 Rule!12440 List!40989) Unit!58530)

(assert (=> b!3855248 (= lt!1339263 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1352 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))) rules!2768))))

(declare-fun lt!1339267 () Unit!58530)

(declare-fun lemmaCharactersSize!981 (Token!11778) Unit!58530)

(assert (=> b!3855248 (= lt!1339267 (lemmaCharactersSize!981 (_1!23164 (v!39033 lt!1339271))))))

(declare-fun b!3855249 () Bool)

(declare-fun res!1560788 () Bool)

(assert (=> b!3855249 (=> res!1560788 e!2383146)))

(declare-fun lt!1339272 () tuple2!40058)

(declare-fun ++!10398 (List!40988 List!40988) List!40988)

(assert (=> b!3855249 (= res!1560788 (not (= lt!1339272 (tuple2!40059 (++!10398 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864) (_1!23163 lt!1339266)) (_2!23163 lt!1339266)))))))

(declare-fun b!3855250 () Bool)

(declare-fun tp!1168633 () Bool)

(declare-fun e!2383145 () Bool)

(declare-fun inv!55019 (Token!11778) Bool)

(assert (=> b!3855250 (= e!2383145 (and (inv!55019 (h!46284 prefixTokens!80)) e!2383153 tp!1168633))))

(declare-fun b!3855251 () Bool)

(declare-fun res!1560794 () Bool)

(assert (=> b!3855251 (=> (not res!1560794) (not e!2383160))))

(declare-fun isEmpty!24196 (List!40988) Bool)

(assert (=> b!3855251 (= res!1560794 (not (isEmpty!24196 prefixTokens!80)))))

(declare-fun res!1560805 () Bool)

(assert (=> start!361296 (=> (not res!1560805) (not e!2383160))))

(assert (=> start!361296 (= res!1560805 ((_ is Lexer!5907) thiss!20629))))

(assert (=> start!361296 e!2383160))

(declare-fun e!2383155 () Bool)

(assert (=> start!361296 e!2383155))

(assert (=> start!361296 true))

(declare-fun e!2383151 () Bool)

(assert (=> start!361296 e!2383151))

(declare-fun e!2383162 () Bool)

(assert (=> start!361296 e!2383162))

(assert (=> start!361296 e!2383145))

(declare-fun e!2383144 () Bool)

(assert (=> start!361296 e!2383144))

(assert (=> start!361296 e!2383150))

(declare-fun b!3855252 () Bool)

(declare-fun res!1560797 () Bool)

(assert (=> b!3855252 (=> (not res!1560797) (not e!2383160))))

(declare-fun rulesInvariant!5252 (LexerInterface!5909 List!40989) Bool)

(assert (=> b!3855252 (= res!1560797 (rulesInvariant!5252 thiss!20629 rules!2768))))

(declare-fun tp!1168637 () Bool)

(declare-fun b!3855253 () Bool)

(declare-fun e!2383164 () Bool)

(assert (=> b!3855253 (= e!2383158 (and tp!1168637 (inv!55015 (tag!7180 (rule!9180 (h!46284 prefixTokens!80)))) (inv!55018 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) e!2383164))))

(declare-fun b!3855254 () Bool)

(declare-fun tp!1168631 () Bool)

(assert (=> b!3855254 (= e!2383155 (and tp_is_empty!19421 tp!1168631))))

(declare-fun b!3855255 () Bool)

(declare-fun e!2383138 () Bool)

(assert (=> b!3855255 (= e!2383143 e!2383138)))

(declare-fun res!1560795 () Bool)

(assert (=> b!3855255 (=> res!1560795 e!2383138)))

(declare-fun matchR!5372 (Regex!11225 List!40987) Bool)

(assert (=> b!3855255 (= res!1560795 (not (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339269)))))

(declare-fun maxPrefixOneRule!2295 (LexerInterface!5909 Rule!12440 List!40987) Option!8738)

(assert (=> b!3855255 (= (maxPrefixOneRule!2295 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))) lt!1339257) (Some!8737 (tuple2!40061 (Token!11779 lt!1339254 (rule!9180 (_1!23164 (v!39033 lt!1339271))) lt!1339255 lt!1339269) (_2!23164 (v!39033 lt!1339271)))))))

(declare-fun lt!1339260 () Unit!58530)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1193 (LexerInterface!5909 List!40989 List!40987 List!40987 List!40987 Rule!12440) Unit!58530)

(assert (=> b!3855255 (= lt!1339260 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1193 thiss!20629 rules!2768 lt!1339269 lt!1339257 (_2!23164 (v!39033 lt!1339271)) (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> b!3855256 (= e!2383164 (and tp!1168639 tp!1168634))))

(declare-fun b!3855257 () Bool)

(declare-fun res!1560793 () Bool)

(assert (=> b!3855257 (=> (not res!1560793) (not e!2383139))))

(declare-fun suffixResult!91 () List!40987)

(assert (=> b!3855257 (= res!1560793 (= (lexList!1677 thiss!20629 rules!2768 suffix!1176) (tuple2!40059 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3855258 () Bool)

(assert (=> b!3855258 (= e!2383138 e!2383161)))

(declare-fun res!1560796 () Bool)

(assert (=> b!3855258 (=> res!1560796 e!2383161)))

(declare-fun head!8116 (List!40988) Token!11778)

(assert (=> b!3855258 (= res!1560796 (not (= (_1!23164 lt!1339273) (head!8116 prefixTokens!80))))))

(declare-fun get!13520 (Option!8738) tuple2!40060)

(assert (=> b!3855258 (= lt!1339273 (get!13520 lt!1339271))))

(assert (=> b!3855259 (= e!2383142 (and tp!1168636 tp!1168640))))

(declare-fun b!3855260 () Bool)

(declare-fun tp!1168644 () Bool)

(assert (=> b!3855260 (= e!2383151 (and tp_is_empty!19421 tp!1168644))))

(declare-fun b!3855261 () Bool)

(assert (=> b!3855261 (= e!2383146 e!2383147)))

(declare-fun res!1560800 () Bool)

(assert (=> b!3855261 (=> res!1560800 e!2383147)))

(assert (=> b!3855261 (= res!1560800 (>= lt!1339264 lt!1339268))))

(assert (=> b!3855261 (= lt!1339268 (size!30736 suffix!1176))))

(assert (=> b!3855261 (= lt!1339264 (size!30736 (_2!23164 (v!39033 lt!1339271))))))

(declare-fun b!3855262 () Bool)

(assert (=> b!3855262 (= e!2383157 (= (size!30735 (_1!23164 (v!39033 lt!1339271))) (size!30736 (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3855263 () Bool)

(declare-fun e!2383152 () Bool)

(declare-fun tp!1168638 () Bool)

(assert (=> b!3855263 (= e!2383162 (and e!2383152 tp!1168638))))

(declare-fun tp!1168645 () Bool)

(declare-fun b!3855264 () Bool)

(assert (=> b!3855264 (= e!2383152 (and tp!1168645 (inv!55015 (tag!7180 (h!46285 rules!2768))) (inv!55018 (transformation!6320 (h!46285 rules!2768))) e!2383149))))

(declare-fun b!3855265 () Bool)

(assert (=> b!3855265 (= e!2383160 e!2383139)))

(declare-fun res!1560804 () Bool)

(assert (=> b!3855265 (=> (not res!1560804) (not e!2383139))))

(declare-fun lt!1339259 () List!40988)

(assert (=> b!3855265 (= res!1560804 (= lt!1339272 (tuple2!40059 lt!1339259 suffixResult!91)))))

(assert (=> b!3855265 (= lt!1339272 (lexList!1677 thiss!20629 rules!2768 lt!1339257))))

(assert (=> b!3855265 (= lt!1339259 (++!10398 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3855265 (= lt!1339257 (++!10397 prefix!426 suffix!1176))))

(declare-fun tp!1168635 () Bool)

(declare-fun b!3855266 () Bool)

(assert (=> b!3855266 (= e!2383144 (and (inv!55019 (h!46284 suffixTokens!72)) e!2383136 tp!1168635))))

(assert (= (and start!361296 res!1560805) b!3855239))

(assert (= (and b!3855239 res!1560799) b!3855252))

(assert (= (and b!3855252 res!1560797) b!3855251))

(assert (= (and b!3855251 res!1560794) b!3855245))

(assert (= (and b!3855245 res!1560789) b!3855265))

(assert (= (and b!3855265 res!1560804) b!3855257))

(assert (= (and b!3855257 res!1560793) b!3855242))

(assert (= (and b!3855242 res!1560803) b!3855248))

(assert (= (and b!3855248 res!1560801) b!3855262))

(assert (= (and b!3855248 (not res!1560798)) b!3855249))

(assert (= (and b!3855249 (not res!1560788)) b!3855236))

(assert (= (and b!3855236 (not res!1560790)) b!3855261))

(assert (= (and b!3855261 (not res!1560800)) b!3855246))

(assert (= (and b!3855246 (not res!1560791)) b!3855237))

(assert (= (and b!3855237 (not res!1560802)) b!3855255))

(assert (= (and b!3855255 (not res!1560795)) b!3855258))

(assert (= (and b!3855258 (not res!1560796)) b!3855238))

(assert (= (and b!3855238 (not res!1560792)) b!3855240))

(assert (= (and start!361296 ((_ is Cons!40863) suffixResult!91)) b!3855254))

(assert (= (and start!361296 ((_ is Cons!40863) suffix!1176)) b!3855260))

(assert (= b!3855264 b!3855241))

(assert (= b!3855263 b!3855264))

(assert (= (and start!361296 ((_ is Cons!40865) rules!2768)) b!3855263))

(assert (= b!3855253 b!3855256))

(assert (= b!3855235 b!3855253))

(assert (= b!3855250 b!3855235))

(assert (= (and start!361296 ((_ is Cons!40864) prefixTokens!80)) b!3855250))

(assert (= b!3855243 b!3855259))

(assert (= b!3855247 b!3855243))

(assert (= b!3855266 b!3855247))

(assert (= (and start!361296 ((_ is Cons!40864) suffixTokens!72)) b!3855266))

(assert (= (and start!361296 ((_ is Cons!40863) prefix!426)) b!3855244))

(declare-fun m!4410485 () Bool)

(assert (=> b!3855239 m!4410485))

(declare-fun m!4410487 () Bool)

(assert (=> b!3855247 m!4410487))

(declare-fun m!4410489 () Bool)

(assert (=> b!3855242 m!4410489))

(declare-fun m!4410491 () Bool)

(assert (=> b!3855252 m!4410491))

(declare-fun m!4410493 () Bool)

(assert (=> b!3855243 m!4410493))

(declare-fun m!4410495 () Bool)

(assert (=> b!3855243 m!4410495))

(declare-fun m!4410497 () Bool)

(assert (=> b!3855248 m!4410497))

(declare-fun m!4410499 () Bool)

(assert (=> b!3855248 m!4410499))

(declare-fun m!4410501 () Bool)

(assert (=> b!3855248 m!4410501))

(declare-fun m!4410503 () Bool)

(assert (=> b!3855248 m!4410503))

(declare-fun m!4410505 () Bool)

(assert (=> b!3855248 m!4410505))

(declare-fun m!4410507 () Bool)

(assert (=> b!3855248 m!4410507))

(declare-fun m!4410509 () Bool)

(assert (=> b!3855248 m!4410509))

(assert (=> b!3855248 m!4410507))

(declare-fun m!4410511 () Bool)

(assert (=> b!3855248 m!4410511))

(declare-fun m!4410513 () Bool)

(assert (=> b!3855248 m!4410513))

(declare-fun m!4410515 () Bool)

(assert (=> b!3855248 m!4410515))

(declare-fun m!4410517 () Bool)

(assert (=> b!3855248 m!4410517))

(declare-fun m!4410519 () Bool)

(assert (=> b!3855248 m!4410519))

(assert (=> b!3855248 m!4410501))

(declare-fun m!4410521 () Bool)

(assert (=> b!3855248 m!4410521))

(declare-fun m!4410523 () Bool)

(assert (=> b!3855248 m!4410523))

(declare-fun m!4410525 () Bool)

(assert (=> b!3855237 m!4410525))

(declare-fun m!4410527 () Bool)

(assert (=> b!3855261 m!4410527))

(declare-fun m!4410529 () Bool)

(assert (=> b!3855261 m!4410529))

(declare-fun m!4410531 () Bool)

(assert (=> b!3855255 m!4410531))

(declare-fun m!4410533 () Bool)

(assert (=> b!3855255 m!4410533))

(declare-fun m!4410535 () Bool)

(assert (=> b!3855255 m!4410535))

(declare-fun m!4410537 () Bool)

(assert (=> b!3855240 m!4410537))

(declare-fun m!4410539 () Bool)

(assert (=> b!3855250 m!4410539))

(declare-fun m!4410541 () Bool)

(assert (=> b!3855264 m!4410541))

(declare-fun m!4410543 () Bool)

(assert (=> b!3855264 m!4410543))

(declare-fun m!4410545 () Bool)

(assert (=> b!3855266 m!4410545))

(declare-fun m!4410547 () Bool)

(assert (=> b!3855249 m!4410547))

(declare-fun m!4410549 () Bool)

(assert (=> b!3855258 m!4410549))

(declare-fun m!4410551 () Bool)

(assert (=> b!3855258 m!4410551))

(declare-fun m!4410553 () Bool)

(assert (=> b!3855238 m!4410553))

(declare-fun m!4410555 () Bool)

(assert (=> b!3855246 m!4410555))

(declare-fun m!4410557 () Bool)

(assert (=> b!3855265 m!4410557))

(declare-fun m!4410559 () Bool)

(assert (=> b!3855265 m!4410559))

(declare-fun m!4410561 () Bool)

(assert (=> b!3855265 m!4410561))

(declare-fun m!4410563 () Bool)

(assert (=> b!3855257 m!4410563))

(declare-fun m!4410565 () Bool)

(assert (=> b!3855251 m!4410565))

(declare-fun m!4410567 () Bool)

(assert (=> b!3855245 m!4410567))

(declare-fun m!4410569 () Bool)

(assert (=> b!3855253 m!4410569))

(declare-fun m!4410571 () Bool)

(assert (=> b!3855253 m!4410571))

(declare-fun m!4410573 () Bool)

(assert (=> b!3855262 m!4410573))

(declare-fun m!4410575 () Bool)

(assert (=> b!3855235 m!4410575))

(check-sat (not b!3855264) (not b!3855237) tp_is_empty!19421 (not b!3855260) (not b!3855255) b_and!288251 (not b!3855257) (not b!3855266) (not b!3855244) (not b!3855250) (not b!3855263) (not b_next!104183) (not b!3855252) (not b!3855258) (not b!3855235) (not b!3855251) (not b_next!104181) (not b_next!104189) (not b!3855246) (not b!3855261) (not b!3855248) (not b!3855247) (not b!3855265) (not b!3855240) b_and!288243 (not b!3855245) (not b!3855238) (not b!3855242) (not b!3855239) (not b!3855243) b_and!288249 b_and!288253 b_and!288245 (not b!3855249) (not b!3855262) (not b_next!104187) (not b!3855253) (not b_next!104185) b_and!288247 (not b_next!104191) (not b!3855254))
(check-sat (not b_next!104181) b_and!288251 (not b_next!104189) b_and!288243 b_and!288245 (not b_next!104187) (not b_next!104183) (not b_next!104191) b_and!288249 b_and!288253 (not b_next!104185) b_and!288247)
(get-model)

(declare-fun b!3855277 () Bool)

(declare-fun res!1560812 () Bool)

(declare-fun e!2383171 () Bool)

(assert (=> b!3855277 (=> res!1560812 e!2383171)))

(assert (=> b!3855277 (= res!1560812 (not ((_ is IntegerValue!19652) (value!200754 (h!46284 suffixTokens!72)))))))

(declare-fun e!2383173 () Bool)

(assert (=> b!3855277 (= e!2383173 e!2383171)))

(declare-fun d!1142903 () Bool)

(declare-fun c!671354 () Bool)

(assert (=> d!1142903 (= c!671354 ((_ is IntegerValue!19650) (value!200754 (h!46284 suffixTokens!72))))))

(declare-fun e!2383172 () Bool)

(assert (=> d!1142903 (= (inv!21 (value!200754 (h!46284 suffixTokens!72))) e!2383172)))

(declare-fun b!3855278 () Bool)

(declare-fun inv!16 (TokenValue!6550) Bool)

(assert (=> b!3855278 (= e!2383172 (inv!16 (value!200754 (h!46284 suffixTokens!72))))))

(declare-fun b!3855279 () Bool)

(assert (=> b!3855279 (= e!2383172 e!2383173)))

(declare-fun c!671355 () Bool)

(assert (=> b!3855279 (= c!671355 ((_ is IntegerValue!19651) (value!200754 (h!46284 suffixTokens!72))))))

(declare-fun b!3855280 () Bool)

(declare-fun inv!15 (TokenValue!6550) Bool)

(assert (=> b!3855280 (= e!2383171 (inv!15 (value!200754 (h!46284 suffixTokens!72))))))

(declare-fun b!3855281 () Bool)

(declare-fun inv!17 (TokenValue!6550) Bool)

(assert (=> b!3855281 (= e!2383173 (inv!17 (value!200754 (h!46284 suffixTokens!72))))))

(assert (= (and d!1142903 c!671354) b!3855278))

(assert (= (and d!1142903 (not c!671354)) b!3855279))

(assert (= (and b!3855279 c!671355) b!3855281))

(assert (= (and b!3855279 (not c!671355)) b!3855277))

(assert (= (and b!3855277 (not res!1560812)) b!3855280))

(declare-fun m!4410577 () Bool)

(assert (=> b!3855278 m!4410577))

(declare-fun m!4410579 () Bool)

(assert (=> b!3855280 m!4410579))

(declare-fun m!4410581 () Bool)

(assert (=> b!3855281 m!4410581))

(assert (=> b!3855247 d!1142903))

(declare-fun d!1142905 () Bool)

(assert (=> d!1142905 (= (size!30735 (_1!23164 (v!39033 lt!1339271))) (size!30736 (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271)))))))

(declare-fun Unit!58533 () Unit!58530)

(assert (=> d!1142905 (= (lemmaCharactersSize!981 (_1!23164 (v!39033 lt!1339271))) Unit!58533)))

(declare-fun bs!583013 () Bool)

(assert (= bs!583013 d!1142905))

(assert (=> bs!583013 m!4410573))

(assert (=> b!3855248 d!1142905))

(declare-fun b!3855294 () Bool)

(declare-fun e!2383180 () List!40987)

(assert (=> b!3855294 (= e!2383180 (_2!23164 (v!39033 lt!1339271)))))

(declare-fun b!3855296 () Bool)

(declare-fun res!1560820 () Bool)

(declare-fun e!2383181 () Bool)

(assert (=> b!3855296 (=> (not res!1560820) (not e!2383181))))

(declare-fun lt!1339278 () List!40987)

(assert (=> b!3855296 (= res!1560820 (= (size!30736 lt!1339278) (+ (size!30736 lt!1339269) (size!30736 (_2!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3855297 () Bool)

(assert (=> b!3855297 (= e!2383181 (or (not (= (_2!23164 (v!39033 lt!1339271)) Nil!40863)) (= lt!1339278 lt!1339269)))))

(declare-fun b!3855295 () Bool)

(assert (=> b!3855295 (= e!2383180 (Cons!40863 (h!46283 lt!1339269) (++!10397 (t!312564 lt!1339269) (_2!23164 (v!39033 lt!1339271)))))))

(declare-fun d!1142907 () Bool)

(assert (=> d!1142907 e!2383181))

(declare-fun res!1560821 () Bool)

(assert (=> d!1142907 (=> (not res!1560821) (not e!2383181))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6085 (List!40987) (InoxSet C!22636))

(assert (=> d!1142907 (= res!1560821 (= (content!6085 lt!1339278) ((_ map or) (content!6085 lt!1339269) (content!6085 (_2!23164 (v!39033 lt!1339271))))))))

(assert (=> d!1142907 (= lt!1339278 e!2383180)))

(declare-fun c!671360 () Bool)

(assert (=> d!1142907 (= c!671360 ((_ is Nil!40863) lt!1339269))))

(assert (=> d!1142907 (= (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271))) lt!1339278)))

(assert (= (and d!1142907 c!671360) b!3855294))

(assert (= (and d!1142907 (not c!671360)) b!3855295))

(assert (= (and d!1142907 res!1560821) b!3855296))

(assert (= (and b!3855296 res!1560820) b!3855297))

(declare-fun m!4410585 () Bool)

(assert (=> b!3855296 m!4410585))

(assert (=> b!3855296 m!4410503))

(assert (=> b!3855296 m!4410529))

(declare-fun m!4410587 () Bool)

(assert (=> b!3855295 m!4410587))

(declare-fun m!4410589 () Bool)

(assert (=> d!1142907 m!4410589))

(declare-fun m!4410591 () Bool)

(assert (=> d!1142907 m!4410591))

(declare-fun m!4410593 () Bool)

(assert (=> d!1142907 m!4410593))

(assert (=> b!3855248 d!1142907))

(declare-fun d!1142915 () Bool)

(declare-fun lt!1339284 () Int)

(assert (=> d!1142915 (>= lt!1339284 0)))

(declare-fun e!2383189 () Int)

(assert (=> d!1142915 (= lt!1339284 e!2383189)))

(declare-fun c!671366 () Bool)

(assert (=> d!1142915 (= c!671366 ((_ is Nil!40863) lt!1339269))))

(assert (=> d!1142915 (= (size!30736 lt!1339269) lt!1339284)))

(declare-fun b!3855310 () Bool)

(assert (=> b!3855310 (= e!2383189 0)))

(declare-fun b!3855311 () Bool)

(assert (=> b!3855311 (= e!2383189 (+ 1 (size!30736 (t!312564 lt!1339269))))))

(assert (= (and d!1142915 c!671366) b!3855310))

(assert (= (and d!1142915 (not c!671366)) b!3855311))

(declare-fun m!4410603 () Bool)

(assert (=> b!3855311 m!4410603))

(assert (=> b!3855248 d!1142915))

(declare-fun d!1142931 () Bool)

(declare-fun lt!1339289 () List!40987)

(assert (=> d!1142931 (= (++!10397 lt!1339269 lt!1339289) lt!1339257)))

(declare-fun e!2383201 () List!40987)

(assert (=> d!1142931 (= lt!1339289 e!2383201)))

(declare-fun c!671371 () Bool)

(assert (=> d!1142931 (= c!671371 ((_ is Cons!40863) lt!1339269))))

(assert (=> d!1142931 (>= (size!30736 lt!1339257) (size!30736 lt!1339269))))

(assert (=> d!1142931 (= (getSuffix!1874 lt!1339257 lt!1339269) lt!1339289)))

(declare-fun b!3855332 () Bool)

(declare-fun tail!5831 (List!40987) List!40987)

(assert (=> b!3855332 (= e!2383201 (getSuffix!1874 (tail!5831 lt!1339257) (t!312564 lt!1339269)))))

(declare-fun b!3855333 () Bool)

(assert (=> b!3855333 (= e!2383201 lt!1339257)))

(assert (= (and d!1142931 c!671371) b!3855332))

(assert (= (and d!1142931 (not c!671371)) b!3855333))

(declare-fun m!4410619 () Bool)

(assert (=> d!1142931 m!4410619))

(assert (=> d!1142931 m!4410555))

(assert (=> d!1142931 m!4410503))

(declare-fun m!4410621 () Bool)

(assert (=> b!3855332 m!4410621))

(assert (=> b!3855332 m!4410621))

(declare-fun m!4410625 () Bool)

(assert (=> b!3855332 m!4410625))

(assert (=> b!3855248 d!1142931))

(declare-fun d!1142939 () Bool)

(assert (=> d!1142939 (= (_2!23164 (v!39033 lt!1339271)) lt!1339262)))

(declare-fun lt!1339295 () Unit!58530)

(declare-fun choose!22696 (List!40987 List!40987 List!40987 List!40987 List!40987) Unit!58530)

(assert (=> d!1142939 (= lt!1339295 (choose!22696 lt!1339269 (_2!23164 (v!39033 lt!1339271)) lt!1339269 lt!1339262 lt!1339257))))

(assert (=> d!1142939 (isPrefix!3419 lt!1339269 lt!1339257)))

(assert (=> d!1142939 (= (lemmaSamePrefixThenSameSuffix!1640 lt!1339269 (_2!23164 (v!39033 lt!1339271)) lt!1339269 lt!1339262 lt!1339257) lt!1339295)))

(declare-fun bs!583017 () Bool)

(assert (= bs!583017 d!1142939))

(declare-fun m!4410633 () Bool)

(assert (=> bs!583017 m!4410633))

(declare-fun m!4410635 () Bool)

(assert (=> bs!583017 m!4410635))

(assert (=> b!3855248 d!1142939))

(declare-fun d!1142947 () Bool)

(declare-fun lt!1339299 () BalanceConc!24656)

(assert (=> d!1142947 (= (list!15210 lt!1339299) (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271))))))

(declare-fun dynLambda!17633 (Int TokenValue!6550) BalanceConc!24656)

(assert (=> d!1142947 (= lt!1339299 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1142947 (= (charsOf!4148 (_1!23164 (v!39033 lt!1339271))) lt!1339299)))

(declare-fun b_lambda!112693 () Bool)

(assert (=> (not b_lambda!112693) (not d!1142947)))

(declare-fun t!312574 () Bool)

(declare-fun tb!222887 () Bool)

(assert (=> (and b!3855259 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312574) tb!222887))

(declare-fun b!3855360 () Bool)

(declare-fun e!2383215 () Bool)

(declare-fun tp!1168652 () Bool)

(declare-fun inv!55022 (Conc!12531) Bool)

(assert (=> b!3855360 (= e!2383215 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271)))))) tp!1168652))))

(declare-fun result!271502 () Bool)

(declare-fun inv!55023 (BalanceConc!24656) Bool)

(assert (=> tb!222887 (= result!271502 (and (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271))))) e!2383215))))

(assert (= tb!222887 b!3855360))

(declare-fun m!4410657 () Bool)

(assert (=> b!3855360 m!4410657))

(declare-fun m!4410659 () Bool)

(assert (=> tb!222887 m!4410659))

(assert (=> d!1142947 t!312574))

(declare-fun b_and!288261 () Bool)

(assert (= b_and!288245 (and (=> t!312574 result!271502) b_and!288261)))

(declare-fun t!312576 () Bool)

(declare-fun tb!222889 () Bool)

(assert (=> (and b!3855256 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312576) tb!222889))

(declare-fun result!271506 () Bool)

(assert (= result!271506 result!271502))

(assert (=> d!1142947 t!312576))

(declare-fun b_and!288263 () Bool)

(assert (= b_and!288249 (and (=> t!312576 result!271506) b_and!288263)))

(declare-fun tb!222891 () Bool)

(declare-fun t!312578 () Bool)

(assert (=> (and b!3855241 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312578) tb!222891))

(declare-fun result!271508 () Bool)

(assert (= result!271508 result!271502))

(assert (=> d!1142947 t!312578))

(declare-fun b_and!288265 () Bool)

(assert (= b_and!288253 (and (=> t!312578 result!271508) b_and!288265)))

(declare-fun m!4410661 () Bool)

(assert (=> d!1142947 m!4410661))

(declare-fun m!4410663 () Bool)

(assert (=> d!1142947 m!4410663))

(assert (=> b!3855248 d!1142947))

(declare-fun d!1142957 () Bool)

(assert (=> d!1142957 (isPrefix!3419 lt!1339269 (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271))))))

(declare-fun lt!1339309 () Unit!58530)

(declare-fun choose!22697 (List!40987 List!40987) Unit!58530)

(assert (=> d!1142957 (= lt!1339309 (choose!22697 lt!1339269 (_2!23164 (v!39033 lt!1339271))))))

(assert (=> d!1142957 (= (lemmaConcatTwoListThenFirstIsPrefix!2282 lt!1339269 (_2!23164 (v!39033 lt!1339271))) lt!1339309)))

(declare-fun bs!583020 () Bool)

(assert (= bs!583020 d!1142957))

(assert (=> bs!583020 m!4410499))

(assert (=> bs!583020 m!4410499))

(declare-fun m!4410679 () Bool)

(assert (=> bs!583020 m!4410679))

(declare-fun m!4410681 () Bool)

(assert (=> bs!583020 m!4410681))

(assert (=> b!3855248 d!1142957))

(declare-fun d!1142963 () Bool)

(declare-fun fromListB!2119 (List!40987) BalanceConc!24656)

(assert (=> d!1142963 (= (seqFromList!4591 lt!1339269) (fromListB!2119 lt!1339269))))

(declare-fun bs!583021 () Bool)

(assert (= bs!583021 d!1142963))

(declare-fun m!4410695 () Bool)

(assert (=> bs!583021 m!4410695))

(assert (=> b!3855248 d!1142963))

(declare-fun d!1142969 () Bool)

(declare-fun res!1560859 () Bool)

(declare-fun e!2383231 () Bool)

(assert (=> d!1142969 (=> (not res!1560859) (not e!2383231))))

(declare-fun validRegex!5108 (Regex!11225) Bool)

(assert (=> d!1142969 (= res!1560859 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (=> d!1142969 (= (ruleValid!2272 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) e!2383231)))

(declare-fun b!3855380 () Bool)

(declare-fun res!1560860 () Bool)

(assert (=> b!3855380 (=> (not res!1560860) (not e!2383231))))

(declare-fun nullable!3909 (Regex!11225) Bool)

(assert (=> b!3855380 (= res!1560860 (not (nullable!3909 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(declare-fun b!3855381 () Bool)

(assert (=> b!3855381 (= e!2383231 (not (= (tag!7180 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (String!46469 ""))))))

(assert (= (and d!1142969 res!1560859) b!3855380))

(assert (= (and b!3855380 res!1560860) b!3855381))

(declare-fun m!4410705 () Bool)

(assert (=> d!1142969 m!4410705))

(declare-fun m!4410707 () Bool)

(assert (=> b!3855380 m!4410707))

(assert (=> b!3855248 d!1142969))

(declare-fun b!3855449 () Bool)

(declare-fun e!2383270 () Bool)

(declare-fun lt!1339339 () tuple2!40058)

(assert (=> b!3855449 (= e!2383270 (= (_2!23163 lt!1339339) (_2!23164 (v!39033 lt!1339271))))))

(declare-fun b!3855450 () Bool)

(declare-fun e!2383269 () Bool)

(assert (=> b!3855450 (= e!2383270 e!2383269)))

(declare-fun res!1560890 () Bool)

(assert (=> b!3855450 (= res!1560890 (< (size!30736 (_2!23163 lt!1339339)) (size!30736 (_2!23164 (v!39033 lt!1339271)))))))

(assert (=> b!3855450 (=> (not res!1560890) (not e!2383269))))

(declare-fun d!1142975 () Bool)

(assert (=> d!1142975 e!2383270))

(declare-fun c!671396 () Bool)

(declare-fun size!30738 (List!40988) Int)

(assert (=> d!1142975 (= c!671396 (> (size!30738 (_1!23163 lt!1339339)) 0))))

(declare-fun e!2383268 () tuple2!40058)

(assert (=> d!1142975 (= lt!1339339 e!2383268)))

(declare-fun c!671397 () Bool)

(declare-fun lt!1339338 () Option!8738)

(assert (=> d!1142975 (= c!671397 ((_ is Some!8737) lt!1339338))))

(assert (=> d!1142975 (= lt!1339338 (maxPrefix!3213 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339271))))))

(assert (=> d!1142975 (= (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339271))) lt!1339339)))

(declare-fun b!3855451 () Bool)

(assert (=> b!3855451 (= e!2383269 (not (isEmpty!24196 (_1!23163 lt!1339339))))))

(declare-fun b!3855452 () Bool)

(assert (=> b!3855452 (= e!2383268 (tuple2!40059 Nil!40864 (_2!23164 (v!39033 lt!1339271))))))

(declare-fun b!3855453 () Bool)

(declare-fun lt!1339337 () tuple2!40058)

(assert (=> b!3855453 (= e!2383268 (tuple2!40059 (Cons!40864 (_1!23164 (v!39033 lt!1339338)) (_1!23163 lt!1339337)) (_2!23163 lt!1339337)))))

(assert (=> b!3855453 (= lt!1339337 (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339338))))))

(assert (= (and d!1142975 c!671397) b!3855453))

(assert (= (and d!1142975 (not c!671397)) b!3855452))

(assert (= (and d!1142975 c!671396) b!3855450))

(assert (= (and d!1142975 (not c!671396)) b!3855449))

(assert (= (and b!3855450 res!1560890) b!3855451))

(declare-fun m!4410727 () Bool)

(assert (=> b!3855450 m!4410727))

(assert (=> b!3855450 m!4410529))

(declare-fun m!4410729 () Bool)

(assert (=> d!1142975 m!4410729))

(declare-fun m!4410731 () Bool)

(assert (=> d!1142975 m!4410731))

(declare-fun m!4410733 () Bool)

(assert (=> b!3855451 m!4410733))

(declare-fun m!4410735 () Bool)

(assert (=> b!3855453 m!4410735))

(assert (=> b!3855248 d!1142975))

(declare-fun d!1142981 () Bool)

(assert (=> d!1142981 (ruleValid!2272 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))

(declare-fun lt!1339342 () Unit!58530)

(declare-fun choose!22698 (LexerInterface!5909 Rule!12440 List!40989) Unit!58530)

(assert (=> d!1142981 (= lt!1339342 (choose!22698 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))) rules!2768))))

(declare-fun contains!8259 (List!40989 Rule!12440) Bool)

(assert (=> d!1142981 (contains!8259 rules!2768 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))

(assert (=> d!1142981 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1352 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))) rules!2768) lt!1339342)))

(declare-fun bs!583024 () Bool)

(assert (= bs!583024 d!1142981))

(assert (=> bs!583024 m!4410497))

(declare-fun m!4410737 () Bool)

(assert (=> bs!583024 m!4410737))

(declare-fun m!4410739 () Bool)

(assert (=> bs!583024 m!4410739))

(assert (=> b!3855248 d!1142981))

(declare-fun b!3855463 () Bool)

(declare-fun res!1560900 () Bool)

(declare-fun e!2383277 () Bool)

(assert (=> b!3855463 (=> (not res!1560900) (not e!2383277))))

(declare-fun head!8118 (List!40987) C!22636)

(assert (=> b!3855463 (= res!1560900 (= (head!8118 lt!1339269) (head!8118 lt!1339270)))))

(declare-fun b!3855462 () Bool)

(declare-fun e!2383279 () Bool)

(assert (=> b!3855462 (= e!2383279 e!2383277)))

(declare-fun res!1560902 () Bool)

(assert (=> b!3855462 (=> (not res!1560902) (not e!2383277))))

(assert (=> b!3855462 (= res!1560902 (not ((_ is Nil!40863) lt!1339270)))))

(declare-fun b!3855464 () Bool)

(assert (=> b!3855464 (= e!2383277 (isPrefix!3419 (tail!5831 lt!1339269) (tail!5831 lt!1339270)))))

(declare-fun d!1142983 () Bool)

(declare-fun e!2383278 () Bool)

(assert (=> d!1142983 e!2383278))

(declare-fun res!1560901 () Bool)

(assert (=> d!1142983 (=> res!1560901 e!2383278)))

(declare-fun lt!1339345 () Bool)

(assert (=> d!1142983 (= res!1560901 (not lt!1339345))))

(assert (=> d!1142983 (= lt!1339345 e!2383279)))

(declare-fun res!1560899 () Bool)

(assert (=> d!1142983 (=> res!1560899 e!2383279)))

(assert (=> d!1142983 (= res!1560899 ((_ is Nil!40863) lt!1339269))))

(assert (=> d!1142983 (= (isPrefix!3419 lt!1339269 lt!1339270) lt!1339345)))

(declare-fun b!3855465 () Bool)

(assert (=> b!3855465 (= e!2383278 (>= (size!30736 lt!1339270) (size!30736 lt!1339269)))))

(assert (= (and d!1142983 (not res!1560899)) b!3855462))

(assert (= (and b!3855462 res!1560902) b!3855463))

(assert (= (and b!3855463 res!1560900) b!3855464))

(assert (= (and d!1142983 (not res!1560901)) b!3855465))

(declare-fun m!4410741 () Bool)

(assert (=> b!3855463 m!4410741))

(declare-fun m!4410743 () Bool)

(assert (=> b!3855463 m!4410743))

(declare-fun m!4410745 () Bool)

(assert (=> b!3855464 m!4410745))

(declare-fun m!4410747 () Bool)

(assert (=> b!3855464 m!4410747))

(assert (=> b!3855464 m!4410745))

(assert (=> b!3855464 m!4410747))

(declare-fun m!4410749 () Bool)

(assert (=> b!3855464 m!4410749))

(declare-fun m!4410751 () Bool)

(assert (=> b!3855465 m!4410751))

(assert (=> b!3855465 m!4410503))

(assert (=> b!3855248 d!1142983))

(declare-fun d!1142985 () Bool)

(declare-fun list!15212 (Conc!12531) List!40987)

(assert (=> d!1142985 (= (list!15210 (charsOf!4148 (_1!23164 (v!39033 lt!1339271)))) (list!15212 (c!671349 (charsOf!4148 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun bs!583025 () Bool)

(assert (= bs!583025 d!1142985))

(declare-fun m!4410753 () Bool)

(assert (=> bs!583025 m!4410753))

(assert (=> b!3855248 d!1142985))

(declare-fun d!1142987 () Bool)

(declare-fun dynLambda!17634 (Int BalanceConc!24656) TokenValue!6550)

(assert (=> d!1142987 (= (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (seqFromList!4591 lt!1339269)) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269)))))

(declare-fun b_lambda!112699 () Bool)

(assert (=> (not b_lambda!112699) (not d!1142987)))

(declare-fun t!312592 () Bool)

(declare-fun tb!222905 () Bool)

(assert (=> (and b!3855259 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312592) tb!222905))

(declare-fun result!271524 () Bool)

(assert (=> tb!222905 (= result!271524 (inv!21 (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269))))))

(declare-fun m!4410755 () Bool)

(assert (=> tb!222905 m!4410755))

(assert (=> d!1142987 t!312592))

(declare-fun b_and!288279 () Bool)

(assert (= b_and!288243 (and (=> t!312592 result!271524) b_and!288279)))

(declare-fun t!312594 () Bool)

(declare-fun tb!222907 () Bool)

(assert (=> (and b!3855256 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312594) tb!222907))

(declare-fun result!271528 () Bool)

(assert (= result!271528 result!271524))

(assert (=> d!1142987 t!312594))

(declare-fun b_and!288281 () Bool)

(assert (= b_and!288247 (and (=> t!312594 result!271528) b_and!288281)))

(declare-fun t!312596 () Bool)

(declare-fun tb!222909 () Bool)

(assert (=> (and b!3855241 (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312596) tb!222909))

(declare-fun result!271530 () Bool)

(assert (= result!271530 result!271524))

(assert (=> d!1142987 t!312596))

(declare-fun b_and!288283 () Bool)

(assert (= b_and!288251 (and (=> t!312596 result!271530) b_and!288283)))

(assert (=> d!1142987 m!4410501))

(declare-fun m!4410757 () Bool)

(assert (=> d!1142987 m!4410757))

(assert (=> b!3855248 d!1142987))

(declare-fun d!1142989 () Bool)

(declare-fun lt!1339346 () Int)

(assert (=> d!1142989 (>= lt!1339346 0)))

(declare-fun e!2383283 () Int)

(assert (=> d!1142989 (= lt!1339346 e!2383283)))

(declare-fun c!671398 () Bool)

(assert (=> d!1142989 (= c!671398 ((_ is Nil!40863) lt!1339257))))

(assert (=> d!1142989 (= (size!30736 lt!1339257) lt!1339346)))

(declare-fun b!3855468 () Bool)

(assert (=> b!3855468 (= e!2383283 0)))

(declare-fun b!3855469 () Bool)

(assert (=> b!3855469 (= e!2383283 (+ 1 (size!30736 (t!312564 lt!1339257))))))

(assert (= (and d!1142989 c!671398) b!3855468))

(assert (= (and d!1142989 (not c!671398)) b!3855469))

(declare-fun m!4410759 () Bool)

(assert (=> b!3855469 m!4410759))

(assert (=> b!3855246 d!1142989))

(declare-fun d!1142991 () Bool)

(declare-fun res!1560921 () Bool)

(declare-fun e!2383294 () Bool)

(assert (=> d!1142991 (=> (not res!1560921) (not e!2383294))))

(assert (=> d!1142991 (= res!1560921 (not (isEmpty!24195 (originalCharacters!6920 (h!46284 suffixTokens!72)))))))

(assert (=> d!1142991 (= (inv!55019 (h!46284 suffixTokens!72)) e!2383294)))

(declare-fun b!3855492 () Bool)

(declare-fun res!1560922 () Bool)

(assert (=> b!3855492 (=> (not res!1560922) (not e!2383294))))

(assert (=> b!3855492 (= res!1560922 (= (originalCharacters!6920 (h!46284 suffixTokens!72)) (list!15210 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))))))

(declare-fun b!3855493 () Bool)

(assert (=> b!3855493 (= e!2383294 (= (size!30735 (h!46284 suffixTokens!72)) (size!30736 (originalCharacters!6920 (h!46284 suffixTokens!72)))))))

(assert (= (and d!1142991 res!1560921) b!3855492))

(assert (= (and b!3855492 res!1560922) b!3855493))

(declare-fun b_lambda!112701 () Bool)

(assert (=> (not b_lambda!112701) (not b!3855492)))

(declare-fun t!312598 () Bool)

(declare-fun tb!222911 () Bool)

(assert (=> (and b!3855259 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312598) tb!222911))

(declare-fun b!3855494 () Bool)

(declare-fun e!2383295 () Bool)

(declare-fun tp!1168654 () Bool)

(assert (=> b!3855494 (= e!2383295 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))) tp!1168654))))

(declare-fun result!271532 () Bool)

(assert (=> tb!222911 (= result!271532 (and (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))) e!2383295))))

(assert (= tb!222911 b!3855494))

(declare-fun m!4410761 () Bool)

(assert (=> b!3855494 m!4410761))

(declare-fun m!4410763 () Bool)

(assert (=> tb!222911 m!4410763))

(assert (=> b!3855492 t!312598))

(declare-fun b_and!288285 () Bool)

(assert (= b_and!288261 (and (=> t!312598 result!271532) b_and!288285)))

(declare-fun tb!222913 () Bool)

(declare-fun t!312600 () Bool)

(assert (=> (and b!3855256 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312600) tb!222913))

(declare-fun result!271534 () Bool)

(assert (= result!271534 result!271532))

(assert (=> b!3855492 t!312600))

(declare-fun b_and!288287 () Bool)

(assert (= b_and!288263 (and (=> t!312600 result!271534) b_and!288287)))

(declare-fun tb!222915 () Bool)

(declare-fun t!312602 () Bool)

(assert (=> (and b!3855241 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312602) tb!222915))

(declare-fun result!271536 () Bool)

(assert (= result!271536 result!271532))

(assert (=> b!3855492 t!312602))

(declare-fun b_and!288289 () Bool)

(assert (= b_and!288265 (and (=> t!312602 result!271536) b_and!288289)))

(declare-fun m!4410765 () Bool)

(assert (=> d!1142991 m!4410765))

(declare-fun m!4410767 () Bool)

(assert (=> b!3855492 m!4410767))

(assert (=> b!3855492 m!4410767))

(declare-fun m!4410769 () Bool)

(assert (=> b!3855492 m!4410769))

(declare-fun m!4410771 () Bool)

(assert (=> b!3855493 m!4410771))

(assert (=> b!3855266 d!1142991))

(declare-fun d!1142993 () Bool)

(assert (=> d!1142993 (= (isEmpty!24195 prefix!426) ((_ is Nil!40863) prefix!426))))

(assert (=> b!3855245 d!1142993))

(declare-fun d!1142995 () Bool)

(assert (=> d!1142995 (= (inv!55015 (tag!7180 (rule!9180 (h!46284 suffixTokens!72)))) (= (mod (str.len (value!200753 (tag!7180 (rule!9180 (h!46284 suffixTokens!72))))) 2) 0))))

(assert (=> b!3855243 d!1142995))

(declare-fun d!1142997 () Bool)

(declare-fun res!1560932 () Bool)

(declare-fun e!2383302 () Bool)

(assert (=> d!1142997 (=> (not res!1560932) (not e!2383302))))

(declare-fun semiInverseModEq!2709 (Int Int) Bool)

(assert (=> d!1142997 (= res!1560932 (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))))))

(assert (=> d!1142997 (= (inv!55018 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) e!2383302)))

(declare-fun b!3855506 () Bool)

(declare-fun equivClasses!2608 (Int Int) Bool)

(assert (=> b!3855506 (= e!2383302 (equivClasses!2608 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))))))

(assert (= (and d!1142997 res!1560932) b!3855506))

(declare-fun m!4410813 () Bool)

(assert (=> d!1142997 m!4410813))

(declare-fun m!4410817 () Bool)

(assert (=> b!3855506 m!4410817))

(assert (=> b!3855243 d!1142997))

(declare-fun b!3855507 () Bool)

(declare-fun e!2383305 () Bool)

(declare-fun lt!1339364 () tuple2!40058)

(assert (=> b!3855507 (= e!2383305 (= (_2!23163 lt!1339364) lt!1339257))))

(declare-fun b!3855508 () Bool)

(declare-fun e!2383304 () Bool)

(assert (=> b!3855508 (= e!2383305 e!2383304)))

(declare-fun res!1560933 () Bool)

(assert (=> b!3855508 (= res!1560933 (< (size!30736 (_2!23163 lt!1339364)) (size!30736 lt!1339257)))))

(assert (=> b!3855508 (=> (not res!1560933) (not e!2383304))))

(declare-fun d!1143001 () Bool)

(assert (=> d!1143001 e!2383305))

(declare-fun c!671402 () Bool)

(assert (=> d!1143001 (= c!671402 (> (size!30738 (_1!23163 lt!1339364)) 0))))

(declare-fun e!2383303 () tuple2!40058)

(assert (=> d!1143001 (= lt!1339364 e!2383303)))

(declare-fun c!671403 () Bool)

(declare-fun lt!1339363 () Option!8738)

(assert (=> d!1143001 (= c!671403 ((_ is Some!8737) lt!1339363))))

(assert (=> d!1143001 (= lt!1339363 (maxPrefix!3213 thiss!20629 rules!2768 lt!1339257))))

(assert (=> d!1143001 (= (lexList!1677 thiss!20629 rules!2768 lt!1339257) lt!1339364)))

(declare-fun b!3855509 () Bool)

(assert (=> b!3855509 (= e!2383304 (not (isEmpty!24196 (_1!23163 lt!1339364))))))

(declare-fun b!3855510 () Bool)

(assert (=> b!3855510 (= e!2383303 (tuple2!40059 Nil!40864 lt!1339257))))

(declare-fun b!3855511 () Bool)

(declare-fun lt!1339362 () tuple2!40058)

(assert (=> b!3855511 (= e!2383303 (tuple2!40059 (Cons!40864 (_1!23164 (v!39033 lt!1339363)) (_1!23163 lt!1339362)) (_2!23163 lt!1339362)))))

(assert (=> b!3855511 (= lt!1339362 (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339363))))))

(assert (= (and d!1143001 c!671403) b!3855511))

(assert (= (and d!1143001 (not c!671403)) b!3855510))

(assert (= (and d!1143001 c!671402) b!3855508))

(assert (= (and d!1143001 (not c!671402)) b!3855507))

(assert (= (and b!3855508 res!1560933) b!3855509))

(declare-fun m!4410819 () Bool)

(assert (=> b!3855508 m!4410819))

(assert (=> b!3855508 m!4410555))

(declare-fun m!4410821 () Bool)

(assert (=> d!1143001 m!4410821))

(assert (=> d!1143001 m!4410489))

(declare-fun m!4410823 () Bool)

(assert (=> b!3855509 m!4410823))

(declare-fun m!4410825 () Bool)

(assert (=> b!3855511 m!4410825))

(assert (=> b!3855265 d!1143001))

(declare-fun b!3855523 () Bool)

(declare-fun lt!1339367 () List!40988)

(declare-fun e!2383310 () Bool)

(assert (=> b!3855523 (= e!2383310 (or (not (= suffixTokens!72 Nil!40864)) (= lt!1339367 prefixTokens!80)))))

(declare-fun b!3855522 () Bool)

(declare-fun res!1560939 () Bool)

(assert (=> b!3855522 (=> (not res!1560939) (not e!2383310))))

(assert (=> b!3855522 (= res!1560939 (= (size!30738 lt!1339367) (+ (size!30738 prefixTokens!80) (size!30738 suffixTokens!72))))))

(declare-fun d!1143003 () Bool)

(assert (=> d!1143003 e!2383310))

(declare-fun res!1560938 () Bool)

(assert (=> d!1143003 (=> (not res!1560938) (not e!2383310))))

(declare-fun content!6086 (List!40988) (InoxSet Token!11778))

(assert (=> d!1143003 (= res!1560938 (= (content!6086 lt!1339367) ((_ map or) (content!6086 prefixTokens!80) (content!6086 suffixTokens!72))))))

(declare-fun e!2383311 () List!40988)

(assert (=> d!1143003 (= lt!1339367 e!2383311)))

(declare-fun c!671406 () Bool)

(assert (=> d!1143003 (= c!671406 ((_ is Nil!40864) prefixTokens!80))))

(assert (=> d!1143003 (= (++!10398 prefixTokens!80 suffixTokens!72) lt!1339367)))

(declare-fun b!3855521 () Bool)

(assert (=> b!3855521 (= e!2383311 (Cons!40864 (h!46284 prefixTokens!80) (++!10398 (t!312565 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3855520 () Bool)

(assert (=> b!3855520 (= e!2383311 suffixTokens!72)))

(assert (= (and d!1143003 c!671406) b!3855520))

(assert (= (and d!1143003 (not c!671406)) b!3855521))

(assert (= (and d!1143003 res!1560938) b!3855522))

(assert (= (and b!3855522 res!1560939) b!3855523))

(declare-fun m!4410827 () Bool)

(assert (=> b!3855522 m!4410827))

(declare-fun m!4410829 () Bool)

(assert (=> b!3855522 m!4410829))

(declare-fun m!4410831 () Bool)

(assert (=> b!3855522 m!4410831))

(declare-fun m!4410833 () Bool)

(assert (=> d!1143003 m!4410833))

(declare-fun m!4410835 () Bool)

(assert (=> d!1143003 m!4410835))

(declare-fun m!4410837 () Bool)

(assert (=> d!1143003 m!4410837))

(declare-fun m!4410839 () Bool)

(assert (=> b!3855521 m!4410839))

(assert (=> b!3855265 d!1143003))

(declare-fun b!3855524 () Bool)

(declare-fun e!2383312 () List!40987)

(assert (=> b!3855524 (= e!2383312 suffix!1176)))

(declare-fun b!3855526 () Bool)

(declare-fun res!1560940 () Bool)

(declare-fun e!2383313 () Bool)

(assert (=> b!3855526 (=> (not res!1560940) (not e!2383313))))

(declare-fun lt!1339368 () List!40987)

(assert (=> b!3855526 (= res!1560940 (= (size!30736 lt!1339368) (+ (size!30736 prefix!426) (size!30736 suffix!1176))))))

(declare-fun b!3855527 () Bool)

(assert (=> b!3855527 (= e!2383313 (or (not (= suffix!1176 Nil!40863)) (= lt!1339368 prefix!426)))))

(declare-fun b!3855525 () Bool)

(assert (=> b!3855525 (= e!2383312 (Cons!40863 (h!46283 prefix!426) (++!10397 (t!312564 prefix!426) suffix!1176)))))

(declare-fun d!1143005 () Bool)

(assert (=> d!1143005 e!2383313))

(declare-fun res!1560941 () Bool)

(assert (=> d!1143005 (=> (not res!1560941) (not e!2383313))))

(assert (=> d!1143005 (= res!1560941 (= (content!6085 lt!1339368) ((_ map or) (content!6085 prefix!426) (content!6085 suffix!1176))))))

(assert (=> d!1143005 (= lt!1339368 e!2383312)))

(declare-fun c!671407 () Bool)

(assert (=> d!1143005 (= c!671407 ((_ is Nil!40863) prefix!426))))

(assert (=> d!1143005 (= (++!10397 prefix!426 suffix!1176) lt!1339368)))

(assert (= (and d!1143005 c!671407) b!3855524))

(assert (= (and d!1143005 (not c!671407)) b!3855525))

(assert (= (and d!1143005 res!1560941) b!3855526))

(assert (= (and b!3855526 res!1560940) b!3855527))

(declare-fun m!4410841 () Bool)

(assert (=> b!3855526 m!4410841))

(assert (=> b!3855526 m!4410525))

(assert (=> b!3855526 m!4410527))

(declare-fun m!4410843 () Bool)

(assert (=> b!3855525 m!4410843))

(declare-fun m!4410845 () Bool)

(assert (=> d!1143005 m!4410845))

(declare-fun m!4410847 () Bool)

(assert (=> d!1143005 m!4410847))

(declare-fun m!4410849 () Bool)

(assert (=> d!1143005 m!4410849))

(assert (=> b!3855265 d!1143005))

(declare-fun b!3855546 () Bool)

(declare-fun res!1560960 () Bool)

(declare-fun e!2383322 () Bool)

(assert (=> b!3855546 (=> (not res!1560960) (not e!2383322))))

(declare-fun lt!1339385 () Option!8738)

(assert (=> b!3855546 (= res!1560960 (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))))))

(declare-fun b!3855548 () Bool)

(assert (=> b!3855548 (= e!2383322 (contains!8259 rules!2768 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))))

(declare-fun b!3855549 () Bool)

(declare-fun res!1560957 () Bool)

(assert (=> b!3855549 (=> (not res!1560957) (not e!2383322))))

(assert (=> b!3855549 (= res!1560957 (= (++!10397 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385)))) (_2!23164 (get!13520 lt!1339385))) lt!1339257))))

(declare-fun bm!282377 () Bool)

(declare-fun call!282382 () Option!8738)

(assert (=> bm!282377 (= call!282382 (maxPrefixOneRule!2295 thiss!20629 (h!46285 rules!2768) lt!1339257))))

(declare-fun b!3855550 () Bool)

(declare-fun res!1560956 () Bool)

(assert (=> b!3855550 (=> (not res!1560956) (not e!2383322))))

(assert (=> b!3855550 (= res!1560956 (= (value!200754 (_1!23164 (get!13520 lt!1339385))) (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339385)))))))))

(declare-fun d!1143007 () Bool)

(declare-fun e!2383321 () Bool)

(assert (=> d!1143007 e!2383321))

(declare-fun res!1560959 () Bool)

(assert (=> d!1143007 (=> res!1560959 e!2383321)))

(declare-fun isEmpty!24198 (Option!8738) Bool)

(assert (=> d!1143007 (= res!1560959 (isEmpty!24198 lt!1339385))))

(declare-fun e!2383320 () Option!8738)

(assert (=> d!1143007 (= lt!1339385 e!2383320)))

(declare-fun c!671410 () Bool)

(assert (=> d!1143007 (= c!671410 (and ((_ is Cons!40865) rules!2768) ((_ is Nil!40865) (t!312566 rules!2768))))))

(declare-fun lt!1339384 () Unit!58530)

(declare-fun lt!1339382 () Unit!58530)

(assert (=> d!1143007 (= lt!1339384 lt!1339382)))

(assert (=> d!1143007 (isPrefix!3419 lt!1339257 lt!1339257)))

(declare-fun lemmaIsPrefixRefl!2180 (List!40987 List!40987) Unit!58530)

(assert (=> d!1143007 (= lt!1339382 (lemmaIsPrefixRefl!2180 lt!1339257 lt!1339257))))

(declare-fun rulesValidInductive!2252 (LexerInterface!5909 List!40989) Bool)

(assert (=> d!1143007 (rulesValidInductive!2252 thiss!20629 rules!2768)))

(assert (=> d!1143007 (= (maxPrefix!3213 thiss!20629 rules!2768 lt!1339257) lt!1339385)))

(declare-fun b!3855547 () Bool)

(declare-fun res!1560958 () Bool)

(assert (=> b!3855547 (=> (not res!1560958) (not e!2383322))))

(assert (=> b!3855547 (= res!1560958 (< (size!30736 (_2!23164 (get!13520 lt!1339385))) (size!30736 lt!1339257)))))

(declare-fun b!3855551 () Bool)

(assert (=> b!3855551 (= e!2383320 call!282382)))

(declare-fun b!3855552 () Bool)

(declare-fun lt!1339383 () Option!8738)

(declare-fun lt!1339386 () Option!8738)

(assert (=> b!3855552 (= e!2383320 (ite (and ((_ is None!8737) lt!1339383) ((_ is None!8737) lt!1339386)) None!8737 (ite ((_ is None!8737) lt!1339386) lt!1339383 (ite ((_ is None!8737) lt!1339383) lt!1339386 (ite (>= (size!30735 (_1!23164 (v!39033 lt!1339383))) (size!30735 (_1!23164 (v!39033 lt!1339386)))) lt!1339383 lt!1339386)))))))

(assert (=> b!3855552 (= lt!1339383 call!282382)))

(assert (=> b!3855552 (= lt!1339386 (maxPrefix!3213 thiss!20629 (t!312566 rules!2768) lt!1339257))))

(declare-fun b!3855553 () Bool)

(declare-fun res!1560962 () Bool)

(assert (=> b!3855553 (=> (not res!1560962) (not e!2383322))))

(assert (=> b!3855553 (= res!1560962 (= (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385)))) (originalCharacters!6920 (_1!23164 (get!13520 lt!1339385)))))))

(declare-fun b!3855554 () Bool)

(assert (=> b!3855554 (= e!2383321 e!2383322)))

(declare-fun res!1560961 () Bool)

(assert (=> b!3855554 (=> (not res!1560961) (not e!2383322))))

(assert (=> b!3855554 (= res!1560961 (isDefined!6857 lt!1339385))))

(assert (= (and d!1143007 c!671410) b!3855551))

(assert (= (and d!1143007 (not c!671410)) b!3855552))

(assert (= (or b!3855551 b!3855552) bm!282377))

(assert (= (and d!1143007 (not res!1560959)) b!3855554))

(assert (= (and b!3855554 res!1560961) b!3855553))

(assert (= (and b!3855553 res!1560962) b!3855547))

(assert (= (and b!3855547 res!1560958) b!3855549))

(assert (= (and b!3855549 res!1560957) b!3855550))

(assert (= (and b!3855550 res!1560956) b!3855546))

(assert (= (and b!3855546 res!1560960) b!3855548))

(declare-fun m!4410853 () Bool)

(assert (=> b!3855554 m!4410853))

(declare-fun m!4410855 () Bool)

(assert (=> b!3855553 m!4410855))

(declare-fun m!4410857 () Bool)

(assert (=> b!3855553 m!4410857))

(assert (=> b!3855553 m!4410857))

(declare-fun m!4410859 () Bool)

(assert (=> b!3855553 m!4410859))

(declare-fun m!4410861 () Bool)

(assert (=> bm!282377 m!4410861))

(assert (=> b!3855549 m!4410855))

(assert (=> b!3855549 m!4410857))

(assert (=> b!3855549 m!4410857))

(assert (=> b!3855549 m!4410859))

(assert (=> b!3855549 m!4410859))

(declare-fun m!4410863 () Bool)

(assert (=> b!3855549 m!4410863))

(assert (=> b!3855547 m!4410855))

(declare-fun m!4410865 () Bool)

(assert (=> b!3855547 m!4410865))

(assert (=> b!3855547 m!4410555))

(declare-fun m!4410867 () Bool)

(assert (=> b!3855552 m!4410867))

(assert (=> b!3855548 m!4410855))

(declare-fun m!4410869 () Bool)

(assert (=> b!3855548 m!4410869))

(assert (=> b!3855546 m!4410855))

(assert (=> b!3855546 m!4410857))

(assert (=> b!3855546 m!4410857))

(assert (=> b!3855546 m!4410859))

(assert (=> b!3855546 m!4410859))

(declare-fun m!4410871 () Bool)

(assert (=> b!3855546 m!4410871))

(assert (=> b!3855550 m!4410855))

(declare-fun m!4410873 () Bool)

(assert (=> b!3855550 m!4410873))

(assert (=> b!3855550 m!4410873))

(declare-fun m!4410875 () Bool)

(assert (=> b!3855550 m!4410875))

(declare-fun m!4410877 () Bool)

(assert (=> d!1143007 m!4410877))

(declare-fun m!4410879 () Bool)

(assert (=> d!1143007 m!4410879))

(declare-fun m!4410881 () Bool)

(assert (=> d!1143007 m!4410881))

(declare-fun m!4410883 () Bool)

(assert (=> d!1143007 m!4410883))

(assert (=> b!3855242 d!1143007))

(declare-fun d!1143011 () Bool)

(assert (=> d!1143011 (= (inv!55015 (tag!7180 (h!46285 rules!2768))) (= (mod (str.len (value!200753 (tag!7180 (h!46285 rules!2768)))) 2) 0))))

(assert (=> b!3855264 d!1143011))

(declare-fun d!1143013 () Bool)

(declare-fun res!1560963 () Bool)

(declare-fun e!2383323 () Bool)

(assert (=> d!1143013 (=> (not res!1560963) (not e!2383323))))

(assert (=> d!1143013 (= res!1560963 (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (h!46285 rules!2768)))))))

(assert (=> d!1143013 (= (inv!55018 (transformation!6320 (h!46285 rules!2768))) e!2383323)))

(declare-fun b!3855555 () Bool)

(assert (=> b!3855555 (= e!2383323 (equivClasses!2608 (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (h!46285 rules!2768)))))))

(assert (= (and d!1143013 res!1560963) b!3855555))

(declare-fun m!4410885 () Bool)

(assert (=> d!1143013 m!4410885))

(declare-fun m!4410887 () Bool)

(assert (=> b!3855555 m!4410887))

(assert (=> b!3855264 d!1143013))

(declare-fun d!1143015 () Bool)

(declare-fun lt!1339387 () Int)

(assert (=> d!1143015 (>= lt!1339387 0)))

(declare-fun e!2383324 () Int)

(assert (=> d!1143015 (= lt!1339387 e!2383324)))

(declare-fun c!671411 () Bool)

(assert (=> d!1143015 (= c!671411 ((_ is Nil!40863) (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143015 (= (size!30736 (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271)))) lt!1339387)))

(declare-fun b!3855556 () Bool)

(assert (=> b!3855556 (= e!2383324 0)))

(declare-fun b!3855557 () Bool)

(assert (=> b!3855557 (= e!2383324 (+ 1 (size!30736 (t!312564 (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271)))))))))

(assert (= (and d!1143015 c!671411) b!3855556))

(assert (= (and d!1143015 (not c!671411)) b!3855557))

(declare-fun m!4410889 () Bool)

(assert (=> b!3855557 m!4410889))

(assert (=> b!3855262 d!1143015))

(declare-fun d!1143017 () Bool)

(assert (=> d!1143017 (= (isEmpty!24194 rules!2768) ((_ is Nil!40865) rules!2768))))

(assert (=> b!3855239 d!1143017))

(declare-fun d!1143019 () Bool)

(assert (=> d!1143019 (= (isDefined!6857 lt!1339271) (not (isEmpty!24198 lt!1339271)))))

(declare-fun bs!583027 () Bool)

(assert (= bs!583027 d!1143019))

(declare-fun m!4410891 () Bool)

(assert (=> bs!583027 m!4410891))

(assert (=> b!3855240 d!1143019))

(declare-fun d!1143021 () Bool)

(declare-fun lt!1339388 () Int)

(assert (=> d!1143021 (>= lt!1339388 0)))

(declare-fun e!2383325 () Int)

(assert (=> d!1143021 (= lt!1339388 e!2383325)))

(declare-fun c!671412 () Bool)

(assert (=> d!1143021 (= c!671412 ((_ is Nil!40863) suffix!1176))))

(assert (=> d!1143021 (= (size!30736 suffix!1176) lt!1339388)))

(declare-fun b!3855558 () Bool)

(assert (=> b!3855558 (= e!2383325 0)))

(declare-fun b!3855559 () Bool)

(assert (=> b!3855559 (= e!2383325 (+ 1 (size!30736 (t!312564 suffix!1176))))))

(assert (= (and d!1143021 c!671412) b!3855558))

(assert (= (and d!1143021 (not c!671412)) b!3855559))

(declare-fun m!4410893 () Bool)

(assert (=> b!3855559 m!4410893))

(assert (=> b!3855261 d!1143021))

(declare-fun d!1143023 () Bool)

(declare-fun lt!1339389 () Int)

(assert (=> d!1143023 (>= lt!1339389 0)))

(declare-fun e!2383326 () Int)

(assert (=> d!1143023 (= lt!1339389 e!2383326)))

(declare-fun c!671413 () Bool)

(assert (=> d!1143023 (= c!671413 ((_ is Nil!40863) (_2!23164 (v!39033 lt!1339271))))))

(assert (=> d!1143023 (= (size!30736 (_2!23164 (v!39033 lt!1339271))) lt!1339389)))

(declare-fun b!3855560 () Bool)

(assert (=> b!3855560 (= e!2383326 0)))

(declare-fun b!3855561 () Bool)

(assert (=> b!3855561 (= e!2383326 (+ 1 (size!30736 (t!312564 (_2!23164 (v!39033 lt!1339271))))))))

(assert (= (and d!1143023 c!671413) b!3855560))

(assert (= (and d!1143023 (not c!671413)) b!3855561))

(declare-fun m!4410895 () Bool)

(assert (=> b!3855561 m!4410895))

(assert (=> b!3855261 d!1143023))

(declare-fun d!1143025 () Bool)

(declare-fun lt!1339390 () Int)

(assert (=> d!1143025 (>= lt!1339390 0)))

(declare-fun e!2383327 () Int)

(assert (=> d!1143025 (= lt!1339390 e!2383327)))

(declare-fun c!671414 () Bool)

(assert (=> d!1143025 (= c!671414 ((_ is Nil!40863) (_2!23164 lt!1339273)))))

(assert (=> d!1143025 (= (size!30736 (_2!23164 lt!1339273)) lt!1339390)))

(declare-fun b!3855562 () Bool)

(assert (=> b!3855562 (= e!2383327 0)))

(declare-fun b!3855563 () Bool)

(assert (=> b!3855563 (= e!2383327 (+ 1 (size!30736 (t!312564 (_2!23164 lt!1339273)))))))

(assert (= (and d!1143025 c!671414) b!3855562))

(assert (= (and d!1143025 (not c!671414)) b!3855563))

(declare-fun m!4410897 () Bool)

(assert (=> b!3855563 m!4410897))

(assert (=> b!3855238 d!1143025))

(declare-fun d!1143027 () Bool)

(assert (=> d!1143027 (= (head!8116 prefixTokens!80) (h!46284 prefixTokens!80))))

(assert (=> b!3855258 d!1143027))

(declare-fun d!1143029 () Bool)

(assert (=> d!1143029 (= (get!13520 lt!1339271) (v!39033 lt!1339271))))

(assert (=> b!3855258 d!1143029))

(declare-fun d!1143031 () Bool)

(declare-fun lt!1339391 () Int)

(assert (=> d!1143031 (>= lt!1339391 0)))

(declare-fun e!2383328 () Int)

(assert (=> d!1143031 (= lt!1339391 e!2383328)))

(declare-fun c!671415 () Bool)

(assert (=> d!1143031 (= c!671415 ((_ is Nil!40863) prefix!426))))

(assert (=> d!1143031 (= (size!30736 prefix!426) lt!1339391)))

(declare-fun b!3855564 () Bool)

(assert (=> b!3855564 (= e!2383328 0)))

(declare-fun b!3855565 () Bool)

(assert (=> b!3855565 (= e!2383328 (+ 1 (size!30736 (t!312564 prefix!426))))))

(assert (= (and d!1143031 c!671415) b!3855564))

(assert (= (and d!1143031 (not c!671415)) b!3855565))

(declare-fun m!4410899 () Bool)

(assert (=> b!3855565 m!4410899))

(assert (=> b!3855237 d!1143031))

(declare-fun b!3855566 () Bool)

(declare-fun res!1560964 () Bool)

(declare-fun e!2383329 () Bool)

(assert (=> b!3855566 (=> res!1560964 e!2383329)))

(assert (=> b!3855566 (= res!1560964 (not ((_ is IntegerValue!19652) (value!200754 (h!46284 prefixTokens!80)))))))

(declare-fun e!2383331 () Bool)

(assert (=> b!3855566 (= e!2383331 e!2383329)))

(declare-fun d!1143033 () Bool)

(declare-fun c!671416 () Bool)

(assert (=> d!1143033 (= c!671416 ((_ is IntegerValue!19650) (value!200754 (h!46284 prefixTokens!80))))))

(declare-fun e!2383330 () Bool)

(assert (=> d!1143033 (= (inv!21 (value!200754 (h!46284 prefixTokens!80))) e!2383330)))

(declare-fun b!3855567 () Bool)

(assert (=> b!3855567 (= e!2383330 (inv!16 (value!200754 (h!46284 prefixTokens!80))))))

(declare-fun b!3855568 () Bool)

(assert (=> b!3855568 (= e!2383330 e!2383331)))

(declare-fun c!671417 () Bool)

(assert (=> b!3855568 (= c!671417 ((_ is IntegerValue!19651) (value!200754 (h!46284 prefixTokens!80))))))

(declare-fun b!3855569 () Bool)

(assert (=> b!3855569 (= e!2383329 (inv!15 (value!200754 (h!46284 prefixTokens!80))))))

(declare-fun b!3855570 () Bool)

(assert (=> b!3855570 (= e!2383331 (inv!17 (value!200754 (h!46284 prefixTokens!80))))))

(assert (= (and d!1143033 c!671416) b!3855567))

(assert (= (and d!1143033 (not c!671416)) b!3855568))

(assert (= (and b!3855568 c!671417) b!3855570))

(assert (= (and b!3855568 (not c!671417)) b!3855566))

(assert (= (and b!3855566 (not res!1560964)) b!3855569))

(declare-fun m!4410901 () Bool)

(assert (=> b!3855567 m!4410901))

(declare-fun m!4410903 () Bool)

(assert (=> b!3855569 m!4410903))

(declare-fun m!4410905 () Bool)

(assert (=> b!3855570 m!4410905))

(assert (=> b!3855235 d!1143033))

(declare-fun b!3855571 () Bool)

(declare-fun e!2383334 () Bool)

(declare-fun lt!1339394 () tuple2!40058)

(assert (=> b!3855571 (= e!2383334 (= (_2!23163 lt!1339394) suffix!1176))))

(declare-fun b!3855572 () Bool)

(declare-fun e!2383333 () Bool)

(assert (=> b!3855572 (= e!2383334 e!2383333)))

(declare-fun res!1560965 () Bool)

(assert (=> b!3855572 (= res!1560965 (< (size!30736 (_2!23163 lt!1339394)) (size!30736 suffix!1176)))))

(assert (=> b!3855572 (=> (not res!1560965) (not e!2383333))))

(declare-fun d!1143035 () Bool)

(assert (=> d!1143035 e!2383334))

(declare-fun c!671418 () Bool)

(assert (=> d!1143035 (= c!671418 (> (size!30738 (_1!23163 lt!1339394)) 0))))

(declare-fun e!2383332 () tuple2!40058)

(assert (=> d!1143035 (= lt!1339394 e!2383332)))

(declare-fun c!671419 () Bool)

(declare-fun lt!1339393 () Option!8738)

(assert (=> d!1143035 (= c!671419 ((_ is Some!8737) lt!1339393))))

(assert (=> d!1143035 (= lt!1339393 (maxPrefix!3213 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1143035 (= (lexList!1677 thiss!20629 rules!2768 suffix!1176) lt!1339394)))

(declare-fun b!3855573 () Bool)

(assert (=> b!3855573 (= e!2383333 (not (isEmpty!24196 (_1!23163 lt!1339394))))))

(declare-fun b!3855574 () Bool)

(assert (=> b!3855574 (= e!2383332 (tuple2!40059 Nil!40864 suffix!1176))))

(declare-fun b!3855575 () Bool)

(declare-fun lt!1339392 () tuple2!40058)

(assert (=> b!3855575 (= e!2383332 (tuple2!40059 (Cons!40864 (_1!23164 (v!39033 lt!1339393)) (_1!23163 lt!1339392)) (_2!23163 lt!1339392)))))

(assert (=> b!3855575 (= lt!1339392 (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339393))))))

(assert (= (and d!1143035 c!671419) b!3855575))

(assert (= (and d!1143035 (not c!671419)) b!3855574))

(assert (= (and d!1143035 c!671418) b!3855572))

(assert (= (and d!1143035 (not c!671418)) b!3855571))

(assert (= (and b!3855572 res!1560965) b!3855573))

(declare-fun m!4410907 () Bool)

(assert (=> b!3855572 m!4410907))

(assert (=> b!3855572 m!4410527))

(declare-fun m!4410909 () Bool)

(assert (=> d!1143035 m!4410909))

(declare-fun m!4410911 () Bool)

(assert (=> d!1143035 m!4410911))

(declare-fun m!4410913 () Bool)

(assert (=> b!3855573 m!4410913))

(declare-fun m!4410915 () Bool)

(assert (=> b!3855575 m!4410915))

(assert (=> b!3855257 d!1143035))

(declare-fun b!3855631 () Bool)

(declare-fun e!2383363 () Bool)

(declare-fun e!2383362 () Bool)

(assert (=> b!3855631 (= e!2383363 e!2383362)))

(declare-fun res!1561008 () Bool)

(assert (=> b!3855631 (=> res!1561008 e!2383362)))

(declare-fun call!282388 () Bool)

(assert (=> b!3855631 (= res!1561008 call!282388)))

(declare-fun b!3855632 () Bool)

(declare-fun e!2383360 () Bool)

(declare-fun derivativeStep!3408 (Regex!11225 C!22636) Regex!11225)

(assert (=> b!3855632 (= e!2383360 (matchR!5372 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269)) (tail!5831 lt!1339269)))))

(declare-fun b!3855633 () Bool)

(declare-fun e!2383358 () Bool)

(assert (=> b!3855633 (= e!2383358 e!2383363)))

(declare-fun res!1561009 () Bool)

(assert (=> b!3855633 (=> (not res!1561009) (not e!2383363))))

(declare-fun lt!1339412 () Bool)

(assert (=> b!3855633 (= res!1561009 (not lt!1339412))))

(declare-fun b!3855634 () Bool)

(declare-fun res!1561005 () Bool)

(declare-fun e!2383361 () Bool)

(assert (=> b!3855634 (=> (not res!1561005) (not e!2383361))))

(assert (=> b!3855634 (= res!1561005 (not call!282388))))

(declare-fun b!3855636 () Bool)

(assert (=> b!3855636 (= e!2383362 (not (= (head!8118 lt!1339269) (c!671348 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))))

(declare-fun b!3855637 () Bool)

(declare-fun e!2383359 () Bool)

(assert (=> b!3855637 (= e!2383359 (= lt!1339412 call!282388))))

(declare-fun b!3855638 () Bool)

(assert (=> b!3855638 (= e!2383361 (= (head!8118 lt!1339269) (c!671348 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(declare-fun b!3855639 () Bool)

(declare-fun res!1561004 () Bool)

(assert (=> b!3855639 (=> (not res!1561004) (not e!2383361))))

(assert (=> b!3855639 (= res!1561004 (isEmpty!24195 (tail!5831 lt!1339269)))))

(declare-fun b!3855640 () Bool)

(declare-fun e!2383364 () Bool)

(assert (=> b!3855640 (= e!2383359 e!2383364)))

(declare-fun c!671431 () Bool)

(assert (=> b!3855640 (= c!671431 ((_ is EmptyLang!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3855635 () Bool)

(declare-fun res!1561003 () Bool)

(assert (=> b!3855635 (=> res!1561003 e!2383358)))

(assert (=> b!3855635 (= res!1561003 e!2383361)))

(declare-fun res!1561007 () Bool)

(assert (=> b!3855635 (=> (not res!1561007) (not e!2383361))))

(assert (=> b!3855635 (= res!1561007 lt!1339412)))

(declare-fun d!1143037 () Bool)

(assert (=> d!1143037 e!2383359))

(declare-fun c!671430 () Bool)

(assert (=> d!1143037 (= c!671430 ((_ is EmptyExpr!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (=> d!1143037 (= lt!1339412 e!2383360)))

(declare-fun c!671429 () Bool)

(assert (=> d!1143037 (= c!671429 (isEmpty!24195 lt!1339269))))

(assert (=> d!1143037 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143037 (= (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339269) lt!1339412)))

(declare-fun b!3855641 () Bool)

(assert (=> b!3855641 (= e!2383364 (not lt!1339412))))

(declare-fun b!3855642 () Bool)

(declare-fun res!1561010 () Bool)

(assert (=> b!3855642 (=> res!1561010 e!2383362)))

(assert (=> b!3855642 (= res!1561010 (not (isEmpty!24195 (tail!5831 lt!1339269))))))

(declare-fun b!3855643 () Bool)

(declare-fun res!1561006 () Bool)

(assert (=> b!3855643 (=> res!1561006 e!2383358)))

(assert (=> b!3855643 (= res!1561006 (not ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(assert (=> b!3855643 (= e!2383364 e!2383358)))

(declare-fun bm!282383 () Bool)

(assert (=> bm!282383 (= call!282388 (isEmpty!24195 lt!1339269))))

(declare-fun b!3855644 () Bool)

(assert (=> b!3855644 (= e!2383360 (nullable!3909 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (= (and d!1143037 c!671429) b!3855644))

(assert (= (and d!1143037 (not c!671429)) b!3855632))

(assert (= (and d!1143037 c!671430) b!3855637))

(assert (= (and d!1143037 (not c!671430)) b!3855640))

(assert (= (and b!3855640 c!671431) b!3855641))

(assert (= (and b!3855640 (not c!671431)) b!3855643))

(assert (= (and b!3855643 (not res!1561006)) b!3855635))

(assert (= (and b!3855635 res!1561007) b!3855634))

(assert (= (and b!3855634 res!1561005) b!3855639))

(assert (= (and b!3855639 res!1561004) b!3855638))

(assert (= (and b!3855635 (not res!1561003)) b!3855633))

(assert (= (and b!3855633 res!1561009) b!3855631))

(assert (= (and b!3855631 (not res!1561008)) b!3855642))

(assert (= (and b!3855642 (not res!1561010)) b!3855636))

(assert (= (or b!3855637 b!3855631 b!3855634) bm!282383))

(assert (=> b!3855642 m!4410745))

(assert (=> b!3855642 m!4410745))

(declare-fun m!4410949 () Bool)

(assert (=> b!3855642 m!4410949))

(assert (=> b!3855632 m!4410741))

(assert (=> b!3855632 m!4410741))

(declare-fun m!4410951 () Bool)

(assert (=> b!3855632 m!4410951))

(assert (=> b!3855632 m!4410745))

(assert (=> b!3855632 m!4410951))

(assert (=> b!3855632 m!4410745))

(declare-fun m!4410953 () Bool)

(assert (=> b!3855632 m!4410953))

(declare-fun m!4410955 () Bool)

(assert (=> d!1143037 m!4410955))

(assert (=> d!1143037 m!4410705))

(assert (=> b!3855644 m!4410707))

(assert (=> b!3855639 m!4410745))

(assert (=> b!3855639 m!4410745))

(assert (=> b!3855639 m!4410949))

(assert (=> b!3855638 m!4410741))

(assert (=> b!3855636 m!4410741))

(assert (=> bm!282383 m!4410955))

(assert (=> b!3855255 d!1143037))

(declare-fun b!3855787 () Bool)

(declare-fun res!1561051 () Bool)

(declare-fun e!2383460 () Bool)

(assert (=> b!3855787 (=> (not res!1561051) (not e!2383460))))

(declare-fun lt!1339441 () Option!8738)

(assert (=> b!3855787 (= res!1561051 (= (++!10397 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441)))) (_2!23164 (get!13520 lt!1339441))) lt!1339257))))

(declare-fun b!3855788 () Bool)

(assert (=> b!3855788 (= e!2383460 (= (size!30735 (_1!23164 (get!13520 lt!1339441))) (size!30736 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441))))))))

(declare-fun b!3855789 () Bool)

(declare-fun res!1561052 () Bool)

(assert (=> b!3855789 (=> (not res!1561052) (not e!2383460))))

(assert (=> b!3855789 (= res!1561052 (= (rule!9180 (_1!23164 (get!13520 lt!1339441))) (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(declare-fun b!3855790 () Bool)

(declare-fun e!2383459 () Option!8738)

(declare-datatypes ((tuple2!40064 0))(
  ( (tuple2!40065 (_1!23166 List!40987) (_2!23166 List!40987)) )
))
(declare-fun lt!1339438 () tuple2!40064)

(declare-fun size!30740 (BalanceConc!24656) Int)

(assert (=> b!3855790 (= e!2383459 (Some!8737 (tuple2!40061 (Token!11779 (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (seqFromList!4591 (_1!23166 lt!1339438))) (rule!9180 (_1!23164 (v!39033 lt!1339271))) (size!30740 (seqFromList!4591 (_1!23166 lt!1339438))) (_1!23166 lt!1339438)) (_2!23166 lt!1339438))))))

(declare-fun lt!1339440 () Unit!58530)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1149 (Regex!11225 List!40987) Unit!58530)

(assert (=> b!3855790 (= lt!1339440 (longestMatchIsAcceptedByMatchOrIsEmpty!1149 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339257))))

(declare-fun res!1561053 () Bool)

(declare-fun findLongestMatchInner!1176 (Regex!11225 List!40987 Int List!40987 List!40987 Int) tuple2!40064)

(assert (=> b!3855790 (= res!1561053 (isEmpty!24195 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(declare-fun e!2383462 () Bool)

(assert (=> b!3855790 (=> res!1561053 e!2383462)))

(assert (=> b!3855790 e!2383462))

(declare-fun lt!1339439 () Unit!58530)

(assert (=> b!3855790 (= lt!1339439 lt!1339440)))

(declare-fun lt!1339437 () Unit!58530)

(declare-fun lemmaSemiInverse!1682 (TokenValueInjection!12528 BalanceConc!24656) Unit!58530)

(assert (=> b!3855790 (= lt!1339437 (lemmaSemiInverse!1682 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (seqFromList!4591 (_1!23166 lt!1339438))))))

(declare-fun b!3855791 () Bool)

(declare-fun res!1561048 () Bool)

(assert (=> b!3855791 (=> (not res!1561048) (not e!2383460))))

(assert (=> b!3855791 (= res!1561048 (= (value!200754 (_1!23164 (get!13520 lt!1339441))) (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441)))))))))

(declare-fun b!3855793 () Bool)

(assert (=> b!3855793 (= e!2383462 (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(declare-fun b!3855794 () Bool)

(declare-fun res!1561050 () Bool)

(assert (=> b!3855794 (=> (not res!1561050) (not e!2383460))))

(assert (=> b!3855794 (= res!1561050 (< (size!30736 (_2!23164 (get!13520 lt!1339441))) (size!30736 lt!1339257)))))

(declare-fun b!3855795 () Bool)

(declare-fun e!2383461 () Bool)

(assert (=> b!3855795 (= e!2383461 e!2383460)))

(declare-fun res!1561049 () Bool)

(assert (=> b!3855795 (=> (not res!1561049) (not e!2383460))))

(assert (=> b!3855795 (= res!1561049 (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))))))

(declare-fun b!3855792 () Bool)

(assert (=> b!3855792 (= e!2383459 None!8737)))

(declare-fun d!1143041 () Bool)

(assert (=> d!1143041 e!2383461))

(declare-fun res!1561054 () Bool)

(assert (=> d!1143041 (=> res!1561054 e!2383461)))

(assert (=> d!1143041 (= res!1561054 (isEmpty!24198 lt!1339441))))

(assert (=> d!1143041 (= lt!1339441 e!2383459)))

(declare-fun c!671454 () Bool)

(assert (=> d!1143041 (= c!671454 (isEmpty!24195 (_1!23166 lt!1339438)))))

(declare-fun findLongestMatch!1089 (Regex!11225 List!40987) tuple2!40064)

(assert (=> d!1143041 (= lt!1339438 (findLongestMatch!1089 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339257))))

(assert (=> d!1143041 (ruleValid!2272 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))

(assert (=> d!1143041 (= (maxPrefixOneRule!2295 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))) lt!1339257) lt!1339441)))

(assert (= (and d!1143041 c!671454) b!3855792))

(assert (= (and d!1143041 (not c!671454)) b!3855790))

(assert (= (and b!3855790 (not res!1561053)) b!3855793))

(assert (= (and d!1143041 (not res!1561054)) b!3855795))

(assert (= (and b!3855795 res!1561049) b!3855787))

(assert (= (and b!3855787 res!1561051) b!3855794))

(assert (= (and b!3855794 res!1561050) b!3855789))

(assert (= (and b!3855789 res!1561052) b!3855791))

(assert (= (and b!3855791 res!1561048) b!3855788))

(declare-fun m!4411075 () Bool)

(assert (=> b!3855787 m!4411075))

(declare-fun m!4411077 () Bool)

(assert (=> b!3855787 m!4411077))

(assert (=> b!3855787 m!4411077))

(declare-fun m!4411079 () Bool)

(assert (=> b!3855787 m!4411079))

(assert (=> b!3855787 m!4411079))

(declare-fun m!4411081 () Bool)

(assert (=> b!3855787 m!4411081))

(assert (=> b!3855791 m!4411075))

(declare-fun m!4411083 () Bool)

(assert (=> b!3855791 m!4411083))

(assert (=> b!3855791 m!4411083))

(declare-fun m!4411085 () Bool)

(assert (=> b!3855791 m!4411085))

(declare-fun m!4411087 () Bool)

(assert (=> b!3855793 m!4411087))

(assert (=> b!3855793 m!4410555))

(assert (=> b!3855793 m!4411087))

(assert (=> b!3855793 m!4410555))

(declare-fun m!4411089 () Bool)

(assert (=> b!3855793 m!4411089))

(declare-fun m!4411091 () Bool)

(assert (=> b!3855793 m!4411091))

(assert (=> b!3855789 m!4411075))

(assert (=> b!3855795 m!4411075))

(assert (=> b!3855795 m!4411077))

(assert (=> b!3855795 m!4411077))

(assert (=> b!3855795 m!4411079))

(assert (=> b!3855795 m!4411079))

(declare-fun m!4411093 () Bool)

(assert (=> b!3855795 m!4411093))

(assert (=> b!3855788 m!4411075))

(declare-fun m!4411095 () Bool)

(assert (=> b!3855788 m!4411095))

(declare-fun m!4411097 () Bool)

(assert (=> b!3855790 m!4411097))

(declare-fun m!4411099 () Bool)

(assert (=> b!3855790 m!4411099))

(declare-fun m!4411101 () Bool)

(assert (=> b!3855790 m!4411101))

(assert (=> b!3855790 m!4411097))

(declare-fun m!4411103 () Bool)

(assert (=> b!3855790 m!4411103))

(assert (=> b!3855790 m!4411097))

(declare-fun m!4411105 () Bool)

(assert (=> b!3855790 m!4411105))

(assert (=> b!3855790 m!4411087))

(assert (=> b!3855790 m!4410555))

(assert (=> b!3855790 m!4411087))

(assert (=> b!3855790 m!4410555))

(assert (=> b!3855790 m!4411089))

(assert (=> b!3855790 m!4411097))

(declare-fun m!4411107 () Bool)

(assert (=> b!3855790 m!4411107))

(assert (=> b!3855794 m!4411075))

(declare-fun m!4411109 () Bool)

(assert (=> b!3855794 m!4411109))

(assert (=> b!3855794 m!4410555))

(declare-fun m!4411111 () Bool)

(assert (=> d!1143041 m!4411111))

(declare-fun m!4411113 () Bool)

(assert (=> d!1143041 m!4411113))

(declare-fun m!4411115 () Bool)

(assert (=> d!1143041 m!4411115))

(assert (=> d!1143041 m!4410497))

(assert (=> b!3855255 d!1143041))

(declare-fun d!1143073 () Bool)

(assert (=> d!1143073 (= (maxPrefixOneRule!2295 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))) lt!1339257) (Some!8737 (tuple2!40061 (Token!11779 (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (seqFromList!4591 lt!1339269)) (rule!9180 (_1!23164 (v!39033 lt!1339271))) (size!30736 lt!1339269) lt!1339269) (_2!23164 (v!39033 lt!1339271)))))))

(declare-fun lt!1339444 () Unit!58530)

(declare-fun choose!22700 (LexerInterface!5909 List!40989 List!40987 List!40987 List!40987 Rule!12440) Unit!58530)

(assert (=> d!1143073 (= lt!1339444 (choose!22700 thiss!20629 rules!2768 lt!1339269 lt!1339257 (_2!23164 (v!39033 lt!1339271)) (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143073 (not (isEmpty!24194 rules!2768))))

(assert (=> d!1143073 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1193 thiss!20629 rules!2768 lt!1339269 lt!1339257 (_2!23164 (v!39033 lt!1339271)) (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339444)))

(declare-fun bs!583028 () Bool)

(assert (= bs!583028 d!1143073))

(declare-fun m!4411117 () Bool)

(assert (=> bs!583028 m!4411117))

(assert (=> bs!583028 m!4410501))

(assert (=> bs!583028 m!4410521))

(assert (=> bs!583028 m!4410501))

(assert (=> bs!583028 m!4410533))

(assert (=> bs!583028 m!4410503))

(assert (=> bs!583028 m!4410485))

(assert (=> b!3855255 d!1143073))

(declare-fun d!1143075 () Bool)

(assert (=> d!1143075 (= (inv!55015 (tag!7180 (rule!9180 (h!46284 prefixTokens!80)))) (= (mod (str.len (value!200753 (tag!7180 (rule!9180 (h!46284 prefixTokens!80))))) 2) 0))))

(assert (=> b!3855253 d!1143075))

(declare-fun d!1143077 () Bool)

(declare-fun res!1561055 () Bool)

(declare-fun e!2383463 () Bool)

(assert (=> d!1143077 (=> (not res!1561055) (not e!2383463))))

(assert (=> d!1143077 (= res!1561055 (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))))))

(assert (=> d!1143077 (= (inv!55018 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) e!2383463)))

(declare-fun b!3855796 () Bool)

(assert (=> b!3855796 (= e!2383463 (equivClasses!2608 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))))))

(assert (= (and d!1143077 res!1561055) b!3855796))

(declare-fun m!4411119 () Bool)

(assert (=> d!1143077 m!4411119))

(declare-fun m!4411121 () Bool)

(assert (=> b!3855796 m!4411121))

(assert (=> b!3855253 d!1143077))

(declare-fun d!1143079 () Bool)

(assert (=> d!1143079 (= (isEmpty!24196 prefixTokens!80) ((_ is Nil!40864) prefixTokens!80))))

(assert (=> b!3855251 d!1143079))

(declare-fun d!1143081 () Bool)

(declare-fun res!1561058 () Bool)

(declare-fun e!2383466 () Bool)

(assert (=> d!1143081 (=> (not res!1561058) (not e!2383466))))

(declare-fun rulesValid!2444 (LexerInterface!5909 List!40989) Bool)

(assert (=> d!1143081 (= res!1561058 (rulesValid!2444 thiss!20629 rules!2768))))

(assert (=> d!1143081 (= (rulesInvariant!5252 thiss!20629 rules!2768) e!2383466)))

(declare-fun b!3855799 () Bool)

(declare-datatypes ((List!40991 0))(
  ( (Nil!40867) (Cons!40867 (h!46287 String!46468) (t!312664 List!40991)) )
))
(declare-fun noDuplicateTag!2445 (LexerInterface!5909 List!40989 List!40991) Bool)

(assert (=> b!3855799 (= e!2383466 (noDuplicateTag!2445 thiss!20629 rules!2768 Nil!40867))))

(assert (= (and d!1143081 res!1561058) b!3855799))

(declare-fun m!4411123 () Bool)

(assert (=> d!1143081 m!4411123))

(declare-fun m!4411125 () Bool)

(assert (=> b!3855799 m!4411125))

(assert (=> b!3855252 d!1143081))

(declare-fun d!1143083 () Bool)

(declare-fun res!1561059 () Bool)

(declare-fun e!2383467 () Bool)

(assert (=> d!1143083 (=> (not res!1561059) (not e!2383467))))

(assert (=> d!1143083 (= res!1561059 (not (isEmpty!24195 (originalCharacters!6920 (h!46284 prefixTokens!80)))))))

(assert (=> d!1143083 (= (inv!55019 (h!46284 prefixTokens!80)) e!2383467)))

(declare-fun b!3855800 () Bool)

(declare-fun res!1561060 () Bool)

(assert (=> b!3855800 (=> (not res!1561060) (not e!2383467))))

(assert (=> b!3855800 (= res!1561060 (= (originalCharacters!6920 (h!46284 prefixTokens!80)) (list!15210 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))))))

(declare-fun b!3855801 () Bool)

(assert (=> b!3855801 (= e!2383467 (= (size!30735 (h!46284 prefixTokens!80)) (size!30736 (originalCharacters!6920 (h!46284 prefixTokens!80)))))))

(assert (= (and d!1143083 res!1561059) b!3855800))

(assert (= (and b!3855800 res!1561060) b!3855801))

(declare-fun b_lambda!112709 () Bool)

(assert (=> (not b_lambda!112709) (not b!3855800)))

(declare-fun t!312634 () Bool)

(declare-fun tb!222947 () Bool)

(assert (=> (and b!3855259 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312634) tb!222947))

(declare-fun b!3855802 () Bool)

(declare-fun e!2383468 () Bool)

(declare-fun tp!1168720 () Bool)

(assert (=> b!3855802 (= e!2383468 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))) tp!1168720))))

(declare-fun result!271576 () Bool)

(assert (=> tb!222947 (= result!271576 (and (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))) e!2383468))))

(assert (= tb!222947 b!3855802))

(declare-fun m!4411127 () Bool)

(assert (=> b!3855802 m!4411127))

(declare-fun m!4411129 () Bool)

(assert (=> tb!222947 m!4411129))

(assert (=> b!3855800 t!312634))

(declare-fun b_and!288309 () Bool)

(assert (= b_and!288285 (and (=> t!312634 result!271576) b_and!288309)))

(declare-fun t!312636 () Bool)

(declare-fun tb!222949 () Bool)

(assert (=> (and b!3855256 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312636) tb!222949))

(declare-fun result!271578 () Bool)

(assert (= result!271578 result!271576))

(assert (=> b!3855800 t!312636))

(declare-fun b_and!288311 () Bool)

(assert (= b_and!288287 (and (=> t!312636 result!271578) b_and!288311)))

(declare-fun t!312638 () Bool)

(declare-fun tb!222951 () Bool)

(assert (=> (and b!3855241 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312638) tb!222951))

(declare-fun result!271580 () Bool)

(assert (= result!271580 result!271576))

(assert (=> b!3855800 t!312638))

(declare-fun b_and!288313 () Bool)

(assert (= b_and!288289 (and (=> t!312638 result!271580) b_and!288313)))

(declare-fun m!4411131 () Bool)

(assert (=> d!1143083 m!4411131))

(declare-fun m!4411133 () Bool)

(assert (=> b!3855800 m!4411133))

(assert (=> b!3855800 m!4411133))

(declare-fun m!4411135 () Bool)

(assert (=> b!3855800 m!4411135))

(declare-fun m!4411137 () Bool)

(assert (=> b!3855801 m!4411137))

(assert (=> b!3855250 d!1143083))

(declare-fun lt!1339445 () List!40988)

(declare-fun b!3855806 () Bool)

(declare-fun e!2383469 () Bool)

(assert (=> b!3855806 (= e!2383469 (or (not (= (_1!23163 lt!1339266) Nil!40864)) (= lt!1339445 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864))))))

(declare-fun b!3855805 () Bool)

(declare-fun res!1561062 () Bool)

(assert (=> b!3855805 (=> (not res!1561062) (not e!2383469))))

(assert (=> b!3855805 (= res!1561062 (= (size!30738 lt!1339445) (+ (size!30738 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)) (size!30738 (_1!23163 lt!1339266)))))))

(declare-fun d!1143085 () Bool)

(assert (=> d!1143085 e!2383469))

(declare-fun res!1561061 () Bool)

(assert (=> d!1143085 (=> (not res!1561061) (not e!2383469))))

(assert (=> d!1143085 (= res!1561061 (= (content!6086 lt!1339445) ((_ map or) (content!6086 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)) (content!6086 (_1!23163 lt!1339266)))))))

(declare-fun e!2383470 () List!40988)

(assert (=> d!1143085 (= lt!1339445 e!2383470)))

(declare-fun c!671455 () Bool)

(assert (=> d!1143085 (= c!671455 ((_ is Nil!40864) (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)))))

(assert (=> d!1143085 (= (++!10398 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864) (_1!23163 lt!1339266)) lt!1339445)))

(declare-fun b!3855804 () Bool)

(assert (=> b!3855804 (= e!2383470 (Cons!40864 (h!46284 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)) (++!10398 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)) (_1!23163 lt!1339266))))))

(declare-fun b!3855803 () Bool)

(assert (=> b!3855803 (= e!2383470 (_1!23163 lt!1339266))))

(assert (= (and d!1143085 c!671455) b!3855803))

(assert (= (and d!1143085 (not c!671455)) b!3855804))

(assert (= (and d!1143085 res!1561061) b!3855805))

(assert (= (and b!3855805 res!1561062) b!3855806))

(declare-fun m!4411139 () Bool)

(assert (=> b!3855805 m!4411139))

(declare-fun m!4411141 () Bool)

(assert (=> b!3855805 m!4411141))

(declare-fun m!4411143 () Bool)

(assert (=> b!3855805 m!4411143))

(declare-fun m!4411145 () Bool)

(assert (=> d!1143085 m!4411145))

(declare-fun m!4411147 () Bool)

(assert (=> d!1143085 m!4411147))

(declare-fun m!4411149 () Bool)

(assert (=> d!1143085 m!4411149))

(declare-fun m!4411151 () Bool)

(assert (=> b!3855804 m!4411151))

(assert (=> b!3855249 d!1143085))

(declare-fun b!3855811 () Bool)

(declare-fun e!2383473 () Bool)

(declare-fun tp!1168723 () Bool)

(assert (=> b!3855811 (= e!2383473 (and tp_is_empty!19421 tp!1168723))))

(assert (=> b!3855247 (= tp!1168642 e!2383473)))

(assert (= (and b!3855247 ((_ is Cons!40863) (originalCharacters!6920 (h!46284 suffixTokens!72)))) b!3855811))

(declare-fun b!3855812 () Bool)

(declare-fun e!2383474 () Bool)

(declare-fun tp!1168724 () Bool)

(assert (=> b!3855812 (= e!2383474 (and tp_is_empty!19421 tp!1168724))))

(assert (=> b!3855235 (= tp!1168630 e!2383474)))

(assert (= (and b!3855235 ((_ is Cons!40863) (originalCharacters!6920 (h!46284 prefixTokens!80)))) b!3855812))

(declare-fun b!3855826 () Bool)

(declare-fun b_free!103501 () Bool)

(declare-fun b_next!104205 () Bool)

(assert (=> b!3855826 (= b_free!103501 (not b_next!104205))))

(declare-fun t!312640 () Bool)

(declare-fun tb!222953 () Bool)

(assert (=> (and b!3855826 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312640) tb!222953))

(declare-fun result!271586 () Bool)

(assert (= result!271586 result!271524))

(assert (=> d!1142987 t!312640))

(declare-fun tp!1168738 () Bool)

(declare-fun b_and!288315 () Bool)

(assert (=> b!3855826 (= tp!1168738 (and (=> t!312640 result!271586) b_and!288315))))

(declare-fun b_free!103503 () Bool)

(declare-fun b_next!104207 () Bool)

(assert (=> b!3855826 (= b_free!103503 (not b_next!104207))))

(declare-fun t!312642 () Bool)

(declare-fun tb!222955 () Bool)

(assert (=> (and b!3855826 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312642) tb!222955))

(declare-fun result!271588 () Bool)

(assert (= result!271588 result!271502))

(assert (=> d!1142947 t!312642))

(declare-fun t!312644 () Bool)

(declare-fun tb!222957 () Bool)

(assert (=> (and b!3855826 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312644) tb!222957))

(declare-fun result!271590 () Bool)

(assert (= result!271590 result!271532))

(assert (=> b!3855492 t!312644))

(declare-fun t!312646 () Bool)

(declare-fun tb!222959 () Bool)

(assert (=> (and b!3855826 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312646) tb!222959))

(declare-fun result!271592 () Bool)

(assert (= result!271592 result!271576))

(assert (=> b!3855800 t!312646))

(declare-fun b_and!288317 () Bool)

(declare-fun tp!1168739 () Bool)

(assert (=> b!3855826 (= tp!1168739 (and (=> t!312642 result!271588) (=> t!312644 result!271590) (=> t!312646 result!271592) b_and!288317))))

(declare-fun tp!1168737 () Bool)

(declare-fun e!2383490 () Bool)

(declare-fun b!3855825 () Bool)

(declare-fun e!2383488 () Bool)

(assert (=> b!3855825 (= e!2383490 (and tp!1168737 (inv!55015 (tag!7180 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (inv!55018 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) e!2383488))))

(assert (=> b!3855826 (= e!2383488 (and tp!1168738 tp!1168739))))

(declare-fun b!3855824 () Bool)

(declare-fun tp!1168736 () Bool)

(declare-fun e!2383487 () Bool)

(assert (=> b!3855824 (= e!2383487 (and (inv!21 (value!200754 (h!46284 (t!312565 suffixTokens!72)))) e!2383490 tp!1168736))))

(declare-fun b!3855823 () Bool)

(declare-fun e!2383492 () Bool)

(declare-fun tp!1168735 () Bool)

(assert (=> b!3855823 (= e!2383492 (and (inv!55019 (h!46284 (t!312565 suffixTokens!72))) e!2383487 tp!1168735))))

(assert (=> b!3855266 (= tp!1168635 e!2383492)))

(assert (= b!3855825 b!3855826))

(assert (= b!3855824 b!3855825))

(assert (= b!3855823 b!3855824))

(assert (= (and b!3855266 ((_ is Cons!40864) (t!312565 suffixTokens!72))) b!3855823))

(declare-fun m!4411153 () Bool)

(assert (=> b!3855825 m!4411153))

(declare-fun m!4411155 () Bool)

(assert (=> b!3855825 m!4411155))

(declare-fun m!4411157 () Bool)

(assert (=> b!3855824 m!4411157))

(declare-fun m!4411159 () Bool)

(assert (=> b!3855823 m!4411159))

(declare-fun b!3855827 () Bool)

(declare-fun e!2383493 () Bool)

(declare-fun tp!1168740 () Bool)

(assert (=> b!3855827 (= e!2383493 (and tp_is_empty!19421 tp!1168740))))

(assert (=> b!3855254 (= tp!1168631 e!2383493)))

(assert (= (and b!3855254 ((_ is Cons!40863) (t!312564 suffixResult!91))) b!3855827))

(declare-fun b!3855840 () Bool)

(declare-fun e!2383496 () Bool)

(declare-fun tp!1168755 () Bool)

(assert (=> b!3855840 (= e!2383496 tp!1168755)))

(declare-fun b!3855838 () Bool)

(assert (=> b!3855838 (= e!2383496 tp_is_empty!19421)))

(declare-fun b!3855841 () Bool)

(declare-fun tp!1168754 () Bool)

(declare-fun tp!1168752 () Bool)

(assert (=> b!3855841 (= e!2383496 (and tp!1168754 tp!1168752))))

(assert (=> b!3855243 (= tp!1168641 e!2383496)))

(declare-fun b!3855839 () Bool)

(declare-fun tp!1168751 () Bool)

(declare-fun tp!1168753 () Bool)

(assert (=> b!3855839 (= e!2383496 (and tp!1168751 tp!1168753))))

(assert (= (and b!3855243 ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (h!46284 suffixTokens!72))))) b!3855838))

(assert (= (and b!3855243 ((_ is Concat!17776) (regex!6320 (rule!9180 (h!46284 suffixTokens!72))))) b!3855839))

(assert (= (and b!3855243 ((_ is Star!11225) (regex!6320 (rule!9180 (h!46284 suffixTokens!72))))) b!3855840))

(assert (= (and b!3855243 ((_ is Union!11225) (regex!6320 (rule!9180 (h!46284 suffixTokens!72))))) b!3855841))

(declare-fun b!3855842 () Bool)

(declare-fun e!2383497 () Bool)

(declare-fun tp!1168756 () Bool)

(assert (=> b!3855842 (= e!2383497 (and tp_is_empty!19421 tp!1168756))))

(assert (=> b!3855244 (= tp!1168646 e!2383497)))

(assert (= (and b!3855244 ((_ is Cons!40863) (t!312564 prefix!426))) b!3855842))

(declare-fun b!3855853 () Bool)

(declare-fun b_free!103505 () Bool)

(declare-fun b_next!104209 () Bool)

(assert (=> b!3855853 (= b_free!103505 (not b_next!104209))))

(declare-fun tb!222961 () Bool)

(declare-fun t!312648 () Bool)

(assert (=> (and b!3855853 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312648) tb!222961))

(declare-fun result!271598 () Bool)

(assert (= result!271598 result!271524))

(assert (=> d!1142987 t!312648))

(declare-fun b_and!288319 () Bool)

(declare-fun tp!1168767 () Bool)

(assert (=> b!3855853 (= tp!1168767 (and (=> t!312648 result!271598) b_and!288319))))

(declare-fun b_free!103507 () Bool)

(declare-fun b_next!104211 () Bool)

(assert (=> b!3855853 (= b_free!103507 (not b_next!104211))))

(declare-fun t!312650 () Bool)

(declare-fun tb!222963 () Bool)

(assert (=> (and b!3855853 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312650) tb!222963))

(declare-fun result!271600 () Bool)

(assert (= result!271600 result!271502))

(assert (=> d!1142947 t!312650))

(declare-fun tb!222965 () Bool)

(declare-fun t!312652 () Bool)

(assert (=> (and b!3855853 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312652) tb!222965))

(declare-fun result!271602 () Bool)

(assert (= result!271602 result!271532))

(assert (=> b!3855492 t!312652))

(declare-fun t!312654 () Bool)

(declare-fun tb!222967 () Bool)

(assert (=> (and b!3855853 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312654) tb!222967))

(declare-fun result!271604 () Bool)

(assert (= result!271604 result!271576))

(assert (=> b!3855800 t!312654))

(declare-fun b_and!288321 () Bool)

(declare-fun tp!1168768 () Bool)

(assert (=> b!3855853 (= tp!1168768 (and (=> t!312650 result!271600) (=> t!312652 result!271602) (=> t!312654 result!271604) b_and!288321))))

(declare-fun e!2383507 () Bool)

(assert (=> b!3855853 (= e!2383507 (and tp!1168767 tp!1168768))))

(declare-fun e!2383508 () Bool)

(declare-fun b!3855852 () Bool)

(declare-fun tp!1168766 () Bool)

(assert (=> b!3855852 (= e!2383508 (and tp!1168766 (inv!55015 (tag!7180 (h!46285 (t!312566 rules!2768)))) (inv!55018 (transformation!6320 (h!46285 (t!312566 rules!2768)))) e!2383507))))

(declare-fun b!3855851 () Bool)

(declare-fun e!2383509 () Bool)

(declare-fun tp!1168765 () Bool)

(assert (=> b!3855851 (= e!2383509 (and e!2383508 tp!1168765))))

(assert (=> b!3855263 (= tp!1168638 e!2383509)))

(assert (= b!3855852 b!3855853))

(assert (= b!3855851 b!3855852))

(assert (= (and b!3855263 ((_ is Cons!40865) (t!312566 rules!2768))) b!3855851))

(declare-fun m!4411161 () Bool)

(assert (=> b!3855852 m!4411161))

(declare-fun m!4411163 () Bool)

(assert (=> b!3855852 m!4411163))

(declare-fun b!3855856 () Bool)

(declare-fun e!2383510 () Bool)

(declare-fun tp!1168773 () Bool)

(assert (=> b!3855856 (= e!2383510 tp!1168773)))

(declare-fun b!3855854 () Bool)

(assert (=> b!3855854 (= e!2383510 tp_is_empty!19421)))

(declare-fun b!3855857 () Bool)

(declare-fun tp!1168772 () Bool)

(declare-fun tp!1168770 () Bool)

(assert (=> b!3855857 (= e!2383510 (and tp!1168772 tp!1168770))))

(assert (=> b!3855264 (= tp!1168645 e!2383510)))

(declare-fun b!3855855 () Bool)

(declare-fun tp!1168769 () Bool)

(declare-fun tp!1168771 () Bool)

(assert (=> b!3855855 (= e!2383510 (and tp!1168769 tp!1168771))))

(assert (= (and b!3855264 ((_ is ElementMatch!11225) (regex!6320 (h!46285 rules!2768)))) b!3855854))

(assert (= (and b!3855264 ((_ is Concat!17776) (regex!6320 (h!46285 rules!2768)))) b!3855855))

(assert (= (and b!3855264 ((_ is Star!11225) (regex!6320 (h!46285 rules!2768)))) b!3855856))

(assert (= (and b!3855264 ((_ is Union!11225) (regex!6320 (h!46285 rules!2768)))) b!3855857))

(declare-fun b!3855860 () Bool)

(declare-fun e!2383511 () Bool)

(declare-fun tp!1168778 () Bool)

(assert (=> b!3855860 (= e!2383511 tp!1168778)))

(declare-fun b!3855858 () Bool)

(assert (=> b!3855858 (= e!2383511 tp_is_empty!19421)))

(declare-fun b!3855861 () Bool)

(declare-fun tp!1168777 () Bool)

(declare-fun tp!1168775 () Bool)

(assert (=> b!3855861 (= e!2383511 (and tp!1168777 tp!1168775))))

(assert (=> b!3855253 (= tp!1168637 e!2383511)))

(declare-fun b!3855859 () Bool)

(declare-fun tp!1168774 () Bool)

(declare-fun tp!1168776 () Bool)

(assert (=> b!3855859 (= e!2383511 (and tp!1168774 tp!1168776))))

(assert (= (and b!3855253 ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (h!46284 prefixTokens!80))))) b!3855858))

(assert (= (and b!3855253 ((_ is Concat!17776) (regex!6320 (rule!9180 (h!46284 prefixTokens!80))))) b!3855859))

(assert (= (and b!3855253 ((_ is Star!11225) (regex!6320 (rule!9180 (h!46284 prefixTokens!80))))) b!3855860))

(assert (= (and b!3855253 ((_ is Union!11225) (regex!6320 (rule!9180 (h!46284 prefixTokens!80))))) b!3855861))

(declare-fun b!3855865 () Bool)

(declare-fun b_free!103509 () Bool)

(declare-fun b_next!104213 () Bool)

(assert (=> b!3855865 (= b_free!103509 (not b_next!104213))))

(declare-fun t!312656 () Bool)

(declare-fun tb!222969 () Bool)

(assert (=> (and b!3855865 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312656) tb!222969))

(declare-fun result!271606 () Bool)

(assert (= result!271606 result!271524))

(assert (=> d!1142987 t!312656))

(declare-fun tp!1168782 () Bool)

(declare-fun b_and!288323 () Bool)

(assert (=> b!3855865 (= tp!1168782 (and (=> t!312656 result!271606) b_and!288323))))

(declare-fun b_free!103511 () Bool)

(declare-fun b_next!104215 () Bool)

(assert (=> b!3855865 (= b_free!103511 (not b_next!104215))))

(declare-fun tb!222971 () Bool)

(declare-fun t!312658 () Bool)

(assert (=> (and b!3855865 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312658) tb!222971))

(declare-fun result!271608 () Bool)

(assert (= result!271608 result!271502))

(assert (=> d!1142947 t!312658))

(declare-fun t!312660 () Bool)

(declare-fun tb!222973 () Bool)

(assert (=> (and b!3855865 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312660) tb!222973))

(declare-fun result!271610 () Bool)

(assert (= result!271610 result!271532))

(assert (=> b!3855492 t!312660))

(declare-fun t!312662 () Bool)

(declare-fun tb!222975 () Bool)

(assert (=> (and b!3855865 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312662) tb!222975))

(declare-fun result!271612 () Bool)

(assert (= result!271612 result!271576))

(assert (=> b!3855800 t!312662))

(declare-fun b_and!288325 () Bool)

(declare-fun tp!1168783 () Bool)

(assert (=> b!3855865 (= tp!1168783 (and (=> t!312658 result!271608) (=> t!312660 result!271610) (=> t!312662 result!271612) b_and!288325))))

(declare-fun e!2383513 () Bool)

(declare-fun b!3855864 () Bool)

(declare-fun tp!1168781 () Bool)

(declare-fun e!2383515 () Bool)

(assert (=> b!3855864 (= e!2383515 (and tp!1168781 (inv!55015 (tag!7180 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (inv!55018 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) e!2383513))))

(assert (=> b!3855865 (= e!2383513 (and tp!1168782 tp!1168783))))

(declare-fun e!2383512 () Bool)

(declare-fun tp!1168780 () Bool)

(declare-fun b!3855863 () Bool)

(assert (=> b!3855863 (= e!2383512 (and (inv!21 (value!200754 (h!46284 (t!312565 prefixTokens!80)))) e!2383515 tp!1168780))))

(declare-fun b!3855862 () Bool)

(declare-fun tp!1168779 () Bool)

(declare-fun e!2383517 () Bool)

(assert (=> b!3855862 (= e!2383517 (and (inv!55019 (h!46284 (t!312565 prefixTokens!80))) e!2383512 tp!1168779))))

(assert (=> b!3855250 (= tp!1168633 e!2383517)))

(assert (= b!3855864 b!3855865))

(assert (= b!3855863 b!3855864))

(assert (= b!3855862 b!3855863))

(assert (= (and b!3855250 ((_ is Cons!40864) (t!312565 prefixTokens!80))) b!3855862))

(declare-fun m!4411165 () Bool)

(assert (=> b!3855864 m!4411165))

(declare-fun m!4411167 () Bool)

(assert (=> b!3855864 m!4411167))

(declare-fun m!4411169 () Bool)

(assert (=> b!3855863 m!4411169))

(declare-fun m!4411171 () Bool)

(assert (=> b!3855862 m!4411171))

(declare-fun b!3855866 () Bool)

(declare-fun e!2383518 () Bool)

(declare-fun tp!1168784 () Bool)

(assert (=> b!3855866 (= e!2383518 (and tp_is_empty!19421 tp!1168784))))

(assert (=> b!3855260 (= tp!1168644 e!2383518)))

(assert (= (and b!3855260 ((_ is Cons!40863) (t!312564 suffix!1176))) b!3855866))

(declare-fun b_lambda!112711 () Bool)

(assert (= b_lambda!112701 (or (and b!3855241 b_free!103487 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))))) (and b!3855865 b_free!103511 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))))) (and b!3855259 b_free!103479) (and b!3855256 b_free!103483 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))))) (and b!3855853 b_free!103507 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))))) (and b!3855826 b_free!103503 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b_lambda!112711)))

(declare-fun b_lambda!112713 () Bool)

(assert (= b_lambda!112709 (or (and b!3855256 b_free!103483) (and b!3855241 b_free!103487 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))))) (and b!3855826 b_free!103503 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))))) (and b!3855259 b_free!103479 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))))) (and b!3855865 b_free!103511 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))))) (and b!3855853 b_free!103507 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b_lambda!112713)))

(check-sat (not b!3855842) (not b!3855506) (not b!3855549) (not b!3855380) (not b!3855855) (not b!3855794) (not d!1143073) (not d!1142985) (not b!3855522) (not b!3855553) (not b!3855863) (not b_next!104213) (not b!3855860) (not b!3855555) (not d!1142975) (not b!3855852) (not d!1142939) (not d!1143001) (not b!3855521) b_and!288309 (not b!3855281) (not b!3855825) (not b!3855790) (not b!3855280) (not b!3855557) (not b!3855469) b_and!288313 b_and!288321 (not d!1142969) (not b_lambda!112713) (not b!3855494) (not b!3855548) (not d!1143013) (not d!1142997) (not b!3855827) (not tb!222947) (not b_next!104181) (not b!3855632) (not b!3855857) (not b!3855840) (not tb!222911) (not b!3855569) tp_is_empty!19421 (not b!3855493) (not b!3855861) (not b!3855787) (not d!1142991) (not b!3855823) (not b!3855839) (not b!3855862) (not b!3855799) (not d!1143077) b_and!288283 (not b_lambda!112699) (not b_next!104215) (not d!1142947) (not b!3855451) (not b!3855296) (not b!3855796) (not b!3855644) (not b!3855804) (not tb!222887) (not b!3855550) (not b!3855859) (not tb!222905) (not bm!282383) (not d!1143005) (not b_next!104189) (not b_next!104207) (not b!3855311) (not b!3855332) (not b!3855791) (not b!3855526) (not b!3855508) (not b!3855573) (not d!1143083) (not b!3855805) (not d!1143085) (not b!3855453) (not b!3855866) (not d!1142905) (not d!1143081) (not b!3855360) b_and!288281 (not b!3855642) (not b!3855509) (not b!3855561) (not b!3855567) (not b_lambda!112711) b_and!288279 (not b!3855546) (not b_next!104209) (not b!3855463) (not b!3855464) (not d!1142957) b_and!288317 (not b!3855552) (not b!3855465) (not d!1142907) (not b!3855638) (not b!3855565) (not b_next!104211) (not b!3855841) (not b_lambda!112693) (not d!1142931) (not b!3855639) (not d!1142963) b_and!288311 (not d!1143019) (not b!3855575) (not b!3855563) (not b!3855789) (not b!3855278) (not d!1143035) (not b!3855793) (not b!3855636) (not b!3855812) (not b!3855492) (not b_next!104205) (not d!1142981) (not b!3855864) (not d!1143037) b_and!288323 (not d!1143003) (not bm!282377) (not b!3855554) (not b_next!104187) (not d!1143007) (not b!3855450) (not b!3855800) (not b_next!104185) (not b!3855511) b_and!288315 (not b!3855851) (not b!3855572) (not b!3855801) (not b!3855788) (not b!3855525) (not b!3855802) b_and!288319 (not d!1143041) (not b!3855824) (not b_next!104183) (not b!3855559) (not b!3855811) b_and!288325 (not b!3855795) (not b!3855547) (not b!3855570) (not b!3855856) (not b_next!104191) (not b!3855295))
(check-sat (not b_next!104213) b_and!288309 b_and!288313 b_and!288321 (not b_next!104181) b_and!288281 b_and!288279 (not b_next!104209) b_and!288317 (not b_next!104211) b_and!288311 (not b_next!104205) b_and!288283 (not b_next!104215) (not b_next!104189) (not b_next!104207) b_and!288323 (not b_next!104187) (not b_next!104185) b_and!288315 (not b_next!104183) b_and!288319 b_and!288325 (not b_next!104191))
(get-model)

(declare-fun d!1143233 () Bool)

(assert (=> d!1143233 true))

(declare-fun order!22185 () Int)

(declare-fun lambda!126223 () Int)

(declare-fun order!22183 () Int)

(declare-fun dynLambda!17638 (Int Int) Int)

(declare-fun dynLambda!17639 (Int Int) Int)

(assert (=> d!1143233 (< (dynLambda!17638 order!22183 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (dynLambda!17639 order!22185 lambda!126223))))

(assert (=> d!1143233 true))

(declare-fun order!22187 () Int)

(declare-fun dynLambda!17640 (Int Int) Int)

(assert (=> d!1143233 (< (dynLambda!17640 order!22187 (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (dynLambda!17639 order!22185 lambda!126223))))

(declare-fun Forall!1436 (Int) Bool)

(assert (=> d!1143233 (= (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (Forall!1436 lambda!126223))))

(declare-fun bs!583071 () Bool)

(assert (= bs!583071 d!1143233))

(declare-fun m!4411891 () Bool)

(assert (=> bs!583071 m!4411891))

(assert (=> d!1142997 d!1143233))

(declare-fun b!3856417 () Bool)

(declare-fun e!2383827 () Bool)

(declare-fun e!2383826 () Bool)

(assert (=> b!3856417 (= e!2383827 e!2383826)))

(declare-fun res!1561225 () Bool)

(assert (=> b!3856417 (=> res!1561225 e!2383826)))

(declare-fun call!282441 () Bool)

(assert (=> b!3856417 (= res!1561225 call!282441)))

(declare-fun b!3856418 () Bool)

(declare-fun e!2383824 () Bool)

(assert (=> b!3856418 (= e!2383824 (matchR!5372 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))) (head!8118 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385)))))) (tail!5831 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385)))))))))

(declare-fun b!3856419 () Bool)

(declare-fun e!2383822 () Bool)

(assert (=> b!3856419 (= e!2383822 e!2383827)))

(declare-fun res!1561226 () Bool)

(assert (=> b!3856419 (=> (not res!1561226) (not e!2383827))))

(declare-fun lt!1339659 () Bool)

(assert (=> b!3856419 (= res!1561226 (not lt!1339659))))

(declare-fun b!3856420 () Bool)

(declare-fun res!1561222 () Bool)

(declare-fun e!2383825 () Bool)

(assert (=> b!3856420 (=> (not res!1561222) (not e!2383825))))

(assert (=> b!3856420 (= res!1561222 (not call!282441))))

(declare-fun b!3856422 () Bool)

(assert (=> b!3856422 (= e!2383826 (not (= (head!8118 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))) (c!671348 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))))))))

(declare-fun b!3856423 () Bool)

(declare-fun e!2383823 () Bool)

(assert (=> b!3856423 (= e!2383823 (= lt!1339659 call!282441))))

(declare-fun b!3856424 () Bool)

(assert (=> b!3856424 (= e!2383825 (= (head!8118 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))) (c!671348 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))))))

(declare-fun b!3856425 () Bool)

(declare-fun res!1561221 () Bool)

(assert (=> b!3856425 (=> (not res!1561221) (not e!2383825))))

(assert (=> b!3856425 (= res!1561221 (isEmpty!24195 (tail!5831 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385)))))))))

(declare-fun b!3856426 () Bool)

(declare-fun e!2383828 () Bool)

(assert (=> b!3856426 (= e!2383823 e!2383828)))

(declare-fun c!671592 () Bool)

(assert (=> b!3856426 (= c!671592 ((_ is EmptyLang!11225) (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))))))

(declare-fun b!3856421 () Bool)

(declare-fun res!1561220 () Bool)

(assert (=> b!3856421 (=> res!1561220 e!2383822)))

(assert (=> b!3856421 (= res!1561220 e!2383825)))

(declare-fun res!1561224 () Bool)

(assert (=> b!3856421 (=> (not res!1561224) (not e!2383825))))

(assert (=> b!3856421 (= res!1561224 lt!1339659)))

(declare-fun d!1143379 () Bool)

(assert (=> d!1143379 e!2383823))

(declare-fun c!671591 () Bool)

(assert (=> d!1143379 (= c!671591 ((_ is EmptyExpr!11225) (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))))))

(assert (=> d!1143379 (= lt!1339659 e!2383824)))

(declare-fun c!671590 () Bool)

(assert (=> d!1143379 (= c!671590 (isEmpty!24195 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))))))

(assert (=> d!1143379 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))))

(assert (=> d!1143379 (= (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))) lt!1339659)))

(declare-fun b!3856427 () Bool)

(assert (=> b!3856427 (= e!2383828 (not lt!1339659))))

(declare-fun b!3856428 () Bool)

(declare-fun res!1561227 () Bool)

(assert (=> b!3856428 (=> res!1561227 e!2383826)))

(assert (=> b!3856428 (= res!1561227 (not (isEmpty!24195 (tail!5831 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))))))))

(declare-fun b!3856429 () Bool)

(declare-fun res!1561223 () Bool)

(assert (=> b!3856429 (=> res!1561223 e!2383822)))

(assert (=> b!3856429 (= res!1561223 (not ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))))))

(assert (=> b!3856429 (= e!2383828 e!2383822)))

(declare-fun bm!282436 () Bool)

(assert (=> bm!282436 (= call!282441 (isEmpty!24195 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))))))

(declare-fun b!3856430 () Bool)

(assert (=> b!3856430 (= e!2383824 (nullable!3909 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))))))

(assert (= (and d!1143379 c!671590) b!3856430))

(assert (= (and d!1143379 (not c!671590)) b!3856418))

(assert (= (and d!1143379 c!671591) b!3856423))

(assert (= (and d!1143379 (not c!671591)) b!3856426))

(assert (= (and b!3856426 c!671592) b!3856427))

(assert (= (and b!3856426 (not c!671592)) b!3856429))

(assert (= (and b!3856429 (not res!1561223)) b!3856421))

(assert (= (and b!3856421 res!1561224) b!3856420))

(assert (= (and b!3856420 res!1561222) b!3856425))

(assert (= (and b!3856425 res!1561221) b!3856424))

(assert (= (and b!3856421 (not res!1561220)) b!3856419))

(assert (= (and b!3856419 res!1561226) b!3856417))

(assert (= (and b!3856417 (not res!1561225)) b!3856428))

(assert (= (and b!3856428 (not res!1561227)) b!3856422))

(assert (= (or b!3856423 b!3856417 b!3856420) bm!282436))

(assert (=> b!3856428 m!4410859))

(declare-fun m!4411893 () Bool)

(assert (=> b!3856428 m!4411893))

(assert (=> b!3856428 m!4411893))

(declare-fun m!4411895 () Bool)

(assert (=> b!3856428 m!4411895))

(assert (=> b!3856418 m!4410859))

(declare-fun m!4411897 () Bool)

(assert (=> b!3856418 m!4411897))

(assert (=> b!3856418 m!4411897))

(declare-fun m!4411899 () Bool)

(assert (=> b!3856418 m!4411899))

(assert (=> b!3856418 m!4410859))

(assert (=> b!3856418 m!4411893))

(assert (=> b!3856418 m!4411899))

(assert (=> b!3856418 m!4411893))

(declare-fun m!4411901 () Bool)

(assert (=> b!3856418 m!4411901))

(assert (=> d!1143379 m!4410859))

(declare-fun m!4411903 () Bool)

(assert (=> d!1143379 m!4411903))

(declare-fun m!4411905 () Bool)

(assert (=> d!1143379 m!4411905))

(declare-fun m!4411907 () Bool)

(assert (=> b!3856430 m!4411907))

(assert (=> b!3856425 m!4410859))

(assert (=> b!3856425 m!4411893))

(assert (=> b!3856425 m!4411893))

(assert (=> b!3856425 m!4411895))

(assert (=> b!3856424 m!4410859))

(assert (=> b!3856424 m!4411897))

(assert (=> b!3856422 m!4410859))

(assert (=> b!3856422 m!4411897))

(assert (=> bm!282436 m!4410859))

(assert (=> bm!282436 m!4411903))

(assert (=> b!3855546 d!1143379))

(declare-fun d!1143381 () Bool)

(assert (=> d!1143381 (= (get!13520 lt!1339385) (v!39033 lt!1339385))))

(assert (=> b!3855546 d!1143381))

(declare-fun d!1143383 () Bool)

(assert (=> d!1143383 (= (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385)))) (list!15212 (c!671349 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))))))

(declare-fun bs!583072 () Bool)

(assert (= bs!583072 d!1143383))

(declare-fun m!4411909 () Bool)

(assert (=> bs!583072 m!4411909))

(assert (=> b!3855546 d!1143383))

(declare-fun d!1143385 () Bool)

(declare-fun lt!1339660 () BalanceConc!24656)

(assert (=> d!1143385 (= (list!15210 lt!1339660) (originalCharacters!6920 (_1!23164 (get!13520 lt!1339385))))))

(assert (=> d!1143385 (= lt!1339660 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))) (value!200754 (_1!23164 (get!13520 lt!1339385)))))))

(assert (=> d!1143385 (= (charsOf!4148 (_1!23164 (get!13520 lt!1339385))) lt!1339660)))

(declare-fun b_lambda!112741 () Bool)

(assert (=> (not b_lambda!112741) (not d!1143385)))

(declare-fun tb!223145 () Bool)

(declare-fun t!312835 () Bool)

(assert (=> (and b!3855826 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312835) tb!223145))

(declare-fun b!3856431 () Bool)

(declare-fun e!2383829 () Bool)

(declare-fun tp!1168916 () Bool)

(assert (=> b!3856431 (= e!2383829 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))) (value!200754 (_1!23164 (get!13520 lt!1339385)))))) tp!1168916))))

(declare-fun result!271784 () Bool)

(assert (=> tb!223145 (= result!271784 (and (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))) (value!200754 (_1!23164 (get!13520 lt!1339385))))) e!2383829))))

(assert (= tb!223145 b!3856431))

(declare-fun m!4411911 () Bool)

(assert (=> b!3856431 m!4411911))

(declare-fun m!4411913 () Bool)

(assert (=> tb!223145 m!4411913))

(assert (=> d!1143385 t!312835))

(declare-fun b_and!288447 () Bool)

(assert (= b_and!288317 (and (=> t!312835 result!271784) b_and!288447)))

(declare-fun tb!223147 () Bool)

(declare-fun t!312837 () Bool)

(assert (=> (and b!3855865 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312837) tb!223147))

(declare-fun result!271786 () Bool)

(assert (= result!271786 result!271784))

(assert (=> d!1143385 t!312837))

(declare-fun b_and!288449 () Bool)

(assert (= b_and!288325 (and (=> t!312837 result!271786) b_and!288449)))

(declare-fun t!312839 () Bool)

(declare-fun tb!223149 () Bool)

(assert (=> (and b!3855259 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312839) tb!223149))

(declare-fun result!271788 () Bool)

(assert (= result!271788 result!271784))

(assert (=> d!1143385 t!312839))

(declare-fun b_and!288451 () Bool)

(assert (= b_and!288309 (and (=> t!312839 result!271788) b_and!288451)))

(declare-fun t!312841 () Bool)

(declare-fun tb!223151 () Bool)

(assert (=> (and b!3855256 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312841) tb!223151))

(declare-fun result!271790 () Bool)

(assert (= result!271790 result!271784))

(assert (=> d!1143385 t!312841))

(declare-fun b_and!288453 () Bool)

(assert (= b_and!288311 (and (=> t!312841 result!271790) b_and!288453)))

(declare-fun tb!223153 () Bool)

(declare-fun t!312843 () Bool)

(assert (=> (and b!3855241 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312843) tb!223153))

(declare-fun result!271792 () Bool)

(assert (= result!271792 result!271784))

(assert (=> d!1143385 t!312843))

(declare-fun b_and!288455 () Bool)

(assert (= b_and!288313 (and (=> t!312843 result!271792) b_and!288455)))

(declare-fun t!312845 () Bool)

(declare-fun tb!223155 () Bool)

(assert (=> (and b!3855853 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312845) tb!223155))

(declare-fun result!271794 () Bool)

(assert (= result!271794 result!271784))

(assert (=> d!1143385 t!312845))

(declare-fun b_and!288457 () Bool)

(assert (= b_and!288321 (and (=> t!312845 result!271794) b_and!288457)))

(declare-fun m!4411915 () Bool)

(assert (=> d!1143385 m!4411915))

(declare-fun m!4411917 () Bool)

(assert (=> d!1143385 m!4411917))

(assert (=> b!3855546 d!1143385))

(declare-fun d!1143387 () Bool)

(declare-fun c!671595 () Bool)

(assert (=> d!1143387 (= c!671595 ((_ is Node!12531) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))))))

(declare-fun e!2383834 () Bool)

(assert (=> d!1143387 (= (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))) e!2383834)))

(declare-fun b!3856438 () Bool)

(declare-fun inv!55026 (Conc!12531) Bool)

(assert (=> b!3856438 (= e!2383834 (inv!55026 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))))))

(declare-fun b!3856439 () Bool)

(declare-fun e!2383835 () Bool)

(assert (=> b!3856439 (= e!2383834 e!2383835)))

(declare-fun res!1561230 () Bool)

(assert (=> b!3856439 (= res!1561230 (not ((_ is Leaf!19398) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))))))))

(assert (=> b!3856439 (=> res!1561230 e!2383835)))

(declare-fun b!3856440 () Bool)

(declare-fun inv!55027 (Conc!12531) Bool)

(assert (=> b!3856440 (= e!2383835 (inv!55027 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))))))

(assert (= (and d!1143387 c!671595) b!3856438))

(assert (= (and d!1143387 (not c!671595)) b!3856439))

(assert (= (and b!3856439 (not res!1561230)) b!3856440))

(declare-fun m!4411919 () Bool)

(assert (=> b!3856438 m!4411919))

(declare-fun m!4411921 () Bool)

(assert (=> b!3856440 m!4411921))

(assert (=> b!3855494 d!1143387))

(declare-fun d!1143389 () Bool)

(declare-fun lt!1339661 () Int)

(assert (=> d!1143389 (>= lt!1339661 0)))

(declare-fun e!2383836 () Int)

(assert (=> d!1143389 (= lt!1339661 e!2383836)))

(declare-fun c!671596 () Bool)

(assert (=> d!1143389 (= c!671596 ((_ is Nil!40863) lt!1339278))))

(assert (=> d!1143389 (= (size!30736 lt!1339278) lt!1339661)))

(declare-fun b!3856441 () Bool)

(assert (=> b!3856441 (= e!2383836 0)))

(declare-fun b!3856442 () Bool)

(assert (=> b!3856442 (= e!2383836 (+ 1 (size!30736 (t!312564 lt!1339278))))))

(assert (= (and d!1143389 c!671596) b!3856441))

(assert (= (and d!1143389 (not c!671596)) b!3856442))

(declare-fun m!4411923 () Bool)

(assert (=> b!3856442 m!4411923))

(assert (=> b!3855296 d!1143389))

(assert (=> b!3855296 d!1142915))

(assert (=> b!3855296 d!1143023))

(declare-fun b!3856443 () Bool)

(declare-fun e!2383837 () List!40987)

(assert (=> b!3856443 (= e!2383837 lt!1339289)))

(declare-fun b!3856445 () Bool)

(declare-fun res!1561231 () Bool)

(declare-fun e!2383838 () Bool)

(assert (=> b!3856445 (=> (not res!1561231) (not e!2383838))))

(declare-fun lt!1339662 () List!40987)

(assert (=> b!3856445 (= res!1561231 (= (size!30736 lt!1339662) (+ (size!30736 lt!1339269) (size!30736 lt!1339289))))))

(declare-fun b!3856446 () Bool)

(assert (=> b!3856446 (= e!2383838 (or (not (= lt!1339289 Nil!40863)) (= lt!1339662 lt!1339269)))))

(declare-fun b!3856444 () Bool)

(assert (=> b!3856444 (= e!2383837 (Cons!40863 (h!46283 lt!1339269) (++!10397 (t!312564 lt!1339269) lt!1339289)))))

(declare-fun d!1143391 () Bool)

(assert (=> d!1143391 e!2383838))

(declare-fun res!1561232 () Bool)

(assert (=> d!1143391 (=> (not res!1561232) (not e!2383838))))

(assert (=> d!1143391 (= res!1561232 (= (content!6085 lt!1339662) ((_ map or) (content!6085 lt!1339269) (content!6085 lt!1339289))))))

(assert (=> d!1143391 (= lt!1339662 e!2383837)))

(declare-fun c!671597 () Bool)

(assert (=> d!1143391 (= c!671597 ((_ is Nil!40863) lt!1339269))))

(assert (=> d!1143391 (= (++!10397 lt!1339269 lt!1339289) lt!1339662)))

(assert (= (and d!1143391 c!671597) b!3856443))

(assert (= (and d!1143391 (not c!671597)) b!3856444))

(assert (= (and d!1143391 res!1561232) b!3856445))

(assert (= (and b!3856445 res!1561231) b!3856446))

(declare-fun m!4411925 () Bool)

(assert (=> b!3856445 m!4411925))

(assert (=> b!3856445 m!4410503))

(declare-fun m!4411927 () Bool)

(assert (=> b!3856445 m!4411927))

(declare-fun m!4411929 () Bool)

(assert (=> b!3856444 m!4411929))

(declare-fun m!4411931 () Bool)

(assert (=> d!1143391 m!4411931))

(assert (=> d!1143391 m!4410591))

(declare-fun m!4411933 () Bool)

(assert (=> d!1143391 m!4411933))

(assert (=> d!1142931 d!1143391))

(assert (=> d!1142931 d!1142989))

(assert (=> d!1142931 d!1142915))

(declare-fun b!3856447 () Bool)

(declare-fun res!1561233 () Bool)

(declare-fun e!2383839 () Bool)

(assert (=> b!3856447 (=> res!1561233 e!2383839)))

(assert (=> b!3856447 (= res!1561233 (not ((_ is IntegerValue!19652) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269)))))))

(declare-fun e!2383841 () Bool)

(assert (=> b!3856447 (= e!2383841 e!2383839)))

(declare-fun d!1143393 () Bool)

(declare-fun c!671598 () Bool)

(assert (=> d!1143393 (= c!671598 ((_ is IntegerValue!19650) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269))))))

(declare-fun e!2383840 () Bool)

(assert (=> d!1143393 (= (inv!21 (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269))) e!2383840)))

(declare-fun b!3856448 () Bool)

(assert (=> b!3856448 (= e!2383840 (inv!16 (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269))))))

(declare-fun b!3856449 () Bool)

(assert (=> b!3856449 (= e!2383840 e!2383841)))

(declare-fun c!671599 () Bool)

(assert (=> b!3856449 (= c!671599 ((_ is IntegerValue!19651) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269))))))

(declare-fun b!3856450 () Bool)

(assert (=> b!3856450 (= e!2383839 (inv!15 (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269))))))

(declare-fun b!3856451 () Bool)

(assert (=> b!3856451 (= e!2383841 (inv!17 (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 lt!1339269))))))

(assert (= (and d!1143393 c!671598) b!3856448))

(assert (= (and d!1143393 (not c!671598)) b!3856449))

(assert (= (and b!3856449 c!671599) b!3856451))

(assert (= (and b!3856449 (not c!671599)) b!3856447))

(assert (= (and b!3856447 (not res!1561233)) b!3856450))

(declare-fun m!4411935 () Bool)

(assert (=> b!3856448 m!4411935))

(declare-fun m!4411937 () Bool)

(assert (=> b!3856450 m!4411937))

(declare-fun m!4411939 () Bool)

(assert (=> b!3856451 m!4411939))

(assert (=> tb!222905 d!1143393))

(declare-fun d!1143395 () Bool)

(declare-fun lt!1339663 () Int)

(assert (=> d!1143395 (>= lt!1339663 0)))

(declare-fun e!2383842 () Int)

(assert (=> d!1143395 (= lt!1339663 e!2383842)))

(declare-fun c!671600 () Bool)

(assert (=> d!1143395 (= c!671600 ((_ is Nil!40863) (t!312564 (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271))))))))

(assert (=> d!1143395 (= (size!30736 (t!312564 (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271))))) lt!1339663)))

(declare-fun b!3856452 () Bool)

(assert (=> b!3856452 (= e!2383842 0)))

(declare-fun b!3856453 () Bool)

(assert (=> b!3856453 (= e!2383842 (+ 1 (size!30736 (t!312564 (t!312564 (originalCharacters!6920 (_1!23164 (v!39033 lt!1339271))))))))))

(assert (= (and d!1143395 c!671600) b!3856452))

(assert (= (and d!1143395 (not c!671600)) b!3856453))

(declare-fun m!4411941 () Bool)

(assert (=> b!3856453 m!4411941))

(assert (=> b!3855557 d!1143395))

(declare-fun d!1143397 () Bool)

(declare-fun res!1561234 () Bool)

(declare-fun e!2383843 () Bool)

(assert (=> d!1143397 (=> (not res!1561234) (not e!2383843))))

(assert (=> d!1143397 (= res!1561234 (not (isEmpty!24195 (originalCharacters!6920 (h!46284 (t!312565 suffixTokens!72))))))))

(assert (=> d!1143397 (= (inv!55019 (h!46284 (t!312565 suffixTokens!72))) e!2383843)))

(declare-fun b!3856454 () Bool)

(declare-fun res!1561235 () Bool)

(assert (=> b!3856454 (=> (not res!1561235) (not e!2383843))))

(assert (=> b!3856454 (= res!1561235 (= (originalCharacters!6920 (h!46284 (t!312565 suffixTokens!72))) (list!15210 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (value!200754 (h!46284 (t!312565 suffixTokens!72)))))))))

(declare-fun b!3856455 () Bool)

(assert (=> b!3856455 (= e!2383843 (= (size!30735 (h!46284 (t!312565 suffixTokens!72))) (size!30736 (originalCharacters!6920 (h!46284 (t!312565 suffixTokens!72))))))))

(assert (= (and d!1143397 res!1561234) b!3856454))

(assert (= (and b!3856454 res!1561235) b!3856455))

(declare-fun b_lambda!112743 () Bool)

(assert (=> (not b_lambda!112743) (not b!3856454)))

(declare-fun t!312847 () Bool)

(declare-fun tb!223157 () Bool)

(assert (=> (and b!3855826 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312847) tb!223157))

(declare-fun b!3856456 () Bool)

(declare-fun e!2383844 () Bool)

(declare-fun tp!1168917 () Bool)

(assert (=> b!3856456 (= e!2383844 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (value!200754 (h!46284 (t!312565 suffixTokens!72)))))) tp!1168917))))

(declare-fun result!271796 () Bool)

(assert (=> tb!223157 (= result!271796 (and (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (value!200754 (h!46284 (t!312565 suffixTokens!72))))) e!2383844))))

(assert (= tb!223157 b!3856456))

(declare-fun m!4411943 () Bool)

(assert (=> b!3856456 m!4411943))

(declare-fun m!4411945 () Bool)

(assert (=> tb!223157 m!4411945))

(assert (=> b!3856454 t!312847))

(declare-fun b_and!288459 () Bool)

(assert (= b_and!288447 (and (=> t!312847 result!271796) b_and!288459)))

(declare-fun tb!223159 () Bool)

(declare-fun t!312849 () Bool)

(assert (=> (and b!3855853 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312849) tb!223159))

(declare-fun result!271798 () Bool)

(assert (= result!271798 result!271796))

(assert (=> b!3856454 t!312849))

(declare-fun b_and!288461 () Bool)

(assert (= b_and!288457 (and (=> t!312849 result!271798) b_and!288461)))

(declare-fun tb!223161 () Bool)

(declare-fun t!312851 () Bool)

(assert (=> (and b!3855865 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312851) tb!223161))

(declare-fun result!271800 () Bool)

(assert (= result!271800 result!271796))

(assert (=> b!3856454 t!312851))

(declare-fun b_and!288463 () Bool)

(assert (= b_and!288449 (and (=> t!312851 result!271800) b_and!288463)))

(declare-fun t!312853 () Bool)

(declare-fun tb!223163 () Bool)

(assert (=> (and b!3855256 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312853) tb!223163))

(declare-fun result!271802 () Bool)

(assert (= result!271802 result!271796))

(assert (=> b!3856454 t!312853))

(declare-fun b_and!288465 () Bool)

(assert (= b_and!288453 (and (=> t!312853 result!271802) b_and!288465)))

(declare-fun tb!223165 () Bool)

(declare-fun t!312855 () Bool)

(assert (=> (and b!3855241 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312855) tb!223165))

(declare-fun result!271804 () Bool)

(assert (= result!271804 result!271796))

(assert (=> b!3856454 t!312855))

(declare-fun b_and!288467 () Bool)

(assert (= b_and!288455 (and (=> t!312855 result!271804) b_and!288467)))

(declare-fun t!312857 () Bool)

(declare-fun tb!223167 () Bool)

(assert (=> (and b!3855259 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312857) tb!223167))

(declare-fun result!271806 () Bool)

(assert (= result!271806 result!271796))

(assert (=> b!3856454 t!312857))

(declare-fun b_and!288469 () Bool)

(assert (= b_and!288451 (and (=> t!312857 result!271806) b_and!288469)))

(declare-fun m!4411947 () Bool)

(assert (=> d!1143397 m!4411947))

(declare-fun m!4411949 () Bool)

(assert (=> b!3856454 m!4411949))

(assert (=> b!3856454 m!4411949))

(declare-fun m!4411951 () Bool)

(assert (=> b!3856454 m!4411951))

(declare-fun m!4411953 () Bool)

(assert (=> b!3856455 m!4411953))

(assert (=> b!3855823 d!1143397))

(declare-fun d!1143399 () Bool)

(assert (=> d!1143399 (= (isEmpty!24198 lt!1339441) (not ((_ is Some!8737) lt!1339441)))))

(assert (=> d!1143041 d!1143399))

(declare-fun d!1143401 () Bool)

(assert (=> d!1143401 (= (isEmpty!24195 (_1!23166 lt!1339438)) ((_ is Nil!40863) (_1!23166 lt!1339438)))))

(assert (=> d!1143041 d!1143401))

(declare-fun d!1143403 () Bool)

(declare-fun lt!1339687 () tuple2!40064)

(assert (=> d!1143403 (= (++!10397 (_1!23166 lt!1339687) (_2!23166 lt!1339687)) lt!1339257)))

(declare-fun sizeTr!239 (List!40987 Int) Int)

(assert (=> d!1143403 (= lt!1339687 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 0 lt!1339257 lt!1339257 (sizeTr!239 lt!1339257 0)))))

(declare-fun lt!1339684 () Unit!58530)

(declare-fun lt!1339686 () Unit!58530)

(assert (=> d!1143403 (= lt!1339684 lt!1339686)))

(declare-fun lt!1339682 () List!40987)

(declare-fun lt!1339683 () Int)

(assert (=> d!1143403 (= (sizeTr!239 lt!1339682 lt!1339683) (+ (size!30736 lt!1339682) lt!1339683))))

(declare-fun lemmaSizeTrEqualsSize!238 (List!40987 Int) Unit!58530)

(assert (=> d!1143403 (= lt!1339686 (lemmaSizeTrEqualsSize!238 lt!1339682 lt!1339683))))

(assert (=> d!1143403 (= lt!1339683 0)))

(assert (=> d!1143403 (= lt!1339682 Nil!40863)))

(declare-fun lt!1339685 () Unit!58530)

(declare-fun lt!1339680 () Unit!58530)

(assert (=> d!1143403 (= lt!1339685 lt!1339680)))

(declare-fun lt!1339681 () Int)

(assert (=> d!1143403 (= (sizeTr!239 lt!1339257 lt!1339681) (+ (size!30736 lt!1339257) lt!1339681))))

(assert (=> d!1143403 (= lt!1339680 (lemmaSizeTrEqualsSize!238 lt!1339257 lt!1339681))))

(assert (=> d!1143403 (= lt!1339681 0)))

(assert (=> d!1143403 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143403 (= (findLongestMatch!1089 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339257) lt!1339687)))

(declare-fun bs!583073 () Bool)

(assert (= bs!583073 d!1143403))

(declare-fun m!4411955 () Bool)

(assert (=> bs!583073 m!4411955))

(declare-fun m!4411957 () Bool)

(assert (=> bs!583073 m!4411957))

(assert (=> bs!583073 m!4410555))

(assert (=> bs!583073 m!4410705))

(declare-fun m!4411959 () Bool)

(assert (=> bs!583073 m!4411959))

(declare-fun m!4411961 () Bool)

(assert (=> bs!583073 m!4411961))

(assert (=> bs!583073 m!4411959))

(declare-fun m!4411963 () Bool)

(assert (=> bs!583073 m!4411963))

(declare-fun m!4411965 () Bool)

(assert (=> bs!583073 m!4411965))

(declare-fun m!4411967 () Bool)

(assert (=> bs!583073 m!4411967))

(declare-fun m!4411969 () Bool)

(assert (=> bs!583073 m!4411969))

(assert (=> d!1143041 d!1143403))

(assert (=> d!1143041 d!1142969))

(declare-fun d!1143405 () Bool)

(assert (=> d!1143405 true))

(declare-fun order!22189 () Int)

(declare-fun lambda!126226 () Int)

(declare-fun dynLambda!17642 (Int Int) Int)

(assert (=> d!1143405 (< (dynLambda!17640 order!22187 (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) (dynLambda!17642 order!22189 lambda!126226))))

(declare-fun Forall2!1034 (Int) Bool)

(assert (=> d!1143405 (= (equivClasses!2608 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) (Forall2!1034 lambda!126226))))

(declare-fun bs!583074 () Bool)

(assert (= bs!583074 d!1143405))

(declare-fun m!4411971 () Bool)

(assert (=> bs!583074 m!4411971))

(assert (=> b!3855796 d!1143405))

(declare-fun d!1143407 () Bool)

(assert (=> d!1143407 (= (isEmpty!24195 lt!1339269) ((_ is Nil!40863) lt!1339269))))

(assert (=> bm!282383 d!1143407))

(assert (=> d!1143073 d!1143017))

(assert (=> d!1143073 d!1142915))

(declare-fun d!1143409 () Bool)

(assert (=> d!1143409 (= (maxPrefixOneRule!2295 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))) lt!1339257) (Some!8737 (tuple2!40061 (Token!11779 (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (seqFromList!4591 lt!1339269)) (rule!9180 (_1!23164 (v!39033 lt!1339271))) (size!30736 lt!1339269) lt!1339269) (_2!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143409 true))

(declare-fun _$59!599 () Unit!58530)

(assert (=> d!1143409 (= (choose!22700 thiss!20629 rules!2768 lt!1339269 lt!1339257 (_2!23164 (v!39033 lt!1339271)) (rule!9180 (_1!23164 (v!39033 lt!1339271)))) _$59!599)))

(declare-fun bs!583075 () Bool)

(assert (= bs!583075 d!1143409))

(assert (=> bs!583075 m!4410533))

(assert (=> bs!583075 m!4410501))

(assert (=> bs!583075 m!4410501))

(assert (=> bs!583075 m!4410521))

(assert (=> bs!583075 m!4410503))

(assert (=> d!1143073 d!1143409))

(assert (=> d!1143073 d!1142987))

(assert (=> d!1143073 d!1142963))

(assert (=> d!1143073 d!1143041))

(declare-fun d!1143411 () Bool)

(assert (=> d!1143411 (= (list!15210 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))) (list!15212 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))))))

(declare-fun bs!583076 () Bool)

(assert (= bs!583076 d!1143411))

(declare-fun m!4411973 () Bool)

(assert (=> bs!583076 m!4411973))

(assert (=> b!3855492 d!1143411))

(declare-fun d!1143413 () Bool)

(declare-fun lt!1339688 () Int)

(assert (=> d!1143413 (>= lt!1339688 0)))

(declare-fun e!2383847 () Int)

(assert (=> d!1143413 (= lt!1339688 e!2383847)))

(declare-fun c!671601 () Bool)

(assert (=> d!1143413 (= c!671601 ((_ is Nil!40863) (t!312564 prefix!426)))))

(assert (=> d!1143413 (= (size!30736 (t!312564 prefix!426)) lt!1339688)))

(declare-fun b!3856461 () Bool)

(assert (=> b!3856461 (= e!2383847 0)))

(declare-fun b!3856462 () Bool)

(assert (=> b!3856462 (= e!2383847 (+ 1 (size!30736 (t!312564 (t!312564 prefix!426)))))))

(assert (= (and d!1143413 c!671601) b!3856461))

(assert (= (and d!1143413 (not c!671601)) b!3856462))

(declare-fun m!4411975 () Bool)

(assert (=> b!3856462 m!4411975))

(assert (=> b!3855565 d!1143413))

(declare-fun d!1143415 () Bool)

(declare-fun nullableFct!1116 (Regex!11225) Bool)

(assert (=> d!1143415 (= (nullable!3909 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (nullableFct!1116 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun bs!583077 () Bool)

(assert (= bs!583077 d!1143415))

(declare-fun m!4411977 () Bool)

(assert (=> bs!583077 m!4411977))

(assert (=> b!3855380 d!1143415))

(declare-fun d!1143417 () Bool)

(declare-fun lt!1339689 () Int)

(assert (=> d!1143417 (>= lt!1339689 0)))

(declare-fun e!2383848 () Int)

(assert (=> d!1143417 (= lt!1339689 e!2383848)))

(declare-fun c!671602 () Bool)

(assert (=> d!1143417 (= c!671602 ((_ is Nil!40863) (_2!23164 (get!13520 lt!1339441))))))

(assert (=> d!1143417 (= (size!30736 (_2!23164 (get!13520 lt!1339441))) lt!1339689)))

(declare-fun b!3856463 () Bool)

(assert (=> b!3856463 (= e!2383848 0)))

(declare-fun b!3856464 () Bool)

(assert (=> b!3856464 (= e!2383848 (+ 1 (size!30736 (t!312564 (_2!23164 (get!13520 lt!1339441))))))))

(assert (= (and d!1143417 c!671602) b!3856463))

(assert (= (and d!1143417 (not c!671602)) b!3856464))

(declare-fun m!4411979 () Bool)

(assert (=> b!3856464 m!4411979))

(assert (=> b!3855794 d!1143417))

(declare-fun d!1143419 () Bool)

(assert (=> d!1143419 (= (get!13520 lt!1339441) (v!39033 lt!1339441))))

(assert (=> b!3855794 d!1143419))

(assert (=> b!3855794 d!1142989))

(declare-fun d!1143421 () Bool)

(declare-fun lt!1339690 () List!40987)

(assert (=> d!1143421 (= (++!10397 (t!312564 lt!1339269) lt!1339690) (tail!5831 lt!1339257))))

(declare-fun e!2383849 () List!40987)

(assert (=> d!1143421 (= lt!1339690 e!2383849)))

(declare-fun c!671603 () Bool)

(assert (=> d!1143421 (= c!671603 ((_ is Cons!40863) (t!312564 lt!1339269)))))

(assert (=> d!1143421 (>= (size!30736 (tail!5831 lt!1339257)) (size!30736 (t!312564 lt!1339269)))))

(assert (=> d!1143421 (= (getSuffix!1874 (tail!5831 lt!1339257) (t!312564 lt!1339269)) lt!1339690)))

(declare-fun b!3856465 () Bool)

(assert (=> b!3856465 (= e!2383849 (getSuffix!1874 (tail!5831 (tail!5831 lt!1339257)) (t!312564 (t!312564 lt!1339269))))))

(declare-fun b!3856466 () Bool)

(assert (=> b!3856466 (= e!2383849 (tail!5831 lt!1339257))))

(assert (= (and d!1143421 c!671603) b!3856465))

(assert (= (and d!1143421 (not c!671603)) b!3856466))

(declare-fun m!4411981 () Bool)

(assert (=> d!1143421 m!4411981))

(assert (=> d!1143421 m!4410621))

(declare-fun m!4411983 () Bool)

(assert (=> d!1143421 m!4411983))

(assert (=> d!1143421 m!4410603))

(assert (=> b!3856465 m!4410621))

(declare-fun m!4411985 () Bool)

(assert (=> b!3856465 m!4411985))

(assert (=> b!3856465 m!4411985))

(declare-fun m!4411987 () Bool)

(assert (=> b!3856465 m!4411987))

(assert (=> b!3855332 d!1143421))

(declare-fun d!1143423 () Bool)

(assert (=> d!1143423 (= (tail!5831 lt!1339257) (t!312564 lt!1339257))))

(assert (=> b!3855332 d!1143423))

(declare-fun d!1143425 () Bool)

(assert (=> d!1143425 (= (isDefined!6857 lt!1339385) (not (isEmpty!24198 lt!1339385)))))

(declare-fun bs!583078 () Bool)

(assert (= bs!583078 d!1143425))

(assert (=> bs!583078 m!4410877))

(assert (=> b!3855554 d!1143425))

(declare-fun b!3856468 () Bool)

(declare-fun res!1561239 () Bool)

(declare-fun e!2383850 () Bool)

(assert (=> b!3856468 (=> (not res!1561239) (not e!2383850))))

(assert (=> b!3856468 (= res!1561239 (= (head!8118 (tail!5831 lt!1339269)) (head!8118 (tail!5831 lt!1339270))))))

(declare-fun b!3856467 () Bool)

(declare-fun e!2383852 () Bool)

(assert (=> b!3856467 (= e!2383852 e!2383850)))

(declare-fun res!1561241 () Bool)

(assert (=> b!3856467 (=> (not res!1561241) (not e!2383850))))

(assert (=> b!3856467 (= res!1561241 (not ((_ is Nil!40863) (tail!5831 lt!1339270))))))

(declare-fun b!3856469 () Bool)

(assert (=> b!3856469 (= e!2383850 (isPrefix!3419 (tail!5831 (tail!5831 lt!1339269)) (tail!5831 (tail!5831 lt!1339270))))))

(declare-fun d!1143427 () Bool)

(declare-fun e!2383851 () Bool)

(assert (=> d!1143427 e!2383851))

(declare-fun res!1561240 () Bool)

(assert (=> d!1143427 (=> res!1561240 e!2383851)))

(declare-fun lt!1339691 () Bool)

(assert (=> d!1143427 (= res!1561240 (not lt!1339691))))

(assert (=> d!1143427 (= lt!1339691 e!2383852)))

(declare-fun res!1561238 () Bool)

(assert (=> d!1143427 (=> res!1561238 e!2383852)))

(assert (=> d!1143427 (= res!1561238 ((_ is Nil!40863) (tail!5831 lt!1339269)))))

(assert (=> d!1143427 (= (isPrefix!3419 (tail!5831 lt!1339269) (tail!5831 lt!1339270)) lt!1339691)))

(declare-fun b!3856470 () Bool)

(assert (=> b!3856470 (= e!2383851 (>= (size!30736 (tail!5831 lt!1339270)) (size!30736 (tail!5831 lt!1339269))))))

(assert (= (and d!1143427 (not res!1561238)) b!3856467))

(assert (= (and b!3856467 res!1561241) b!3856468))

(assert (= (and b!3856468 res!1561239) b!3856469))

(assert (= (and d!1143427 (not res!1561240)) b!3856470))

(assert (=> b!3856468 m!4410745))

(declare-fun m!4411989 () Bool)

(assert (=> b!3856468 m!4411989))

(assert (=> b!3856468 m!4410747))

(declare-fun m!4411991 () Bool)

(assert (=> b!3856468 m!4411991))

(assert (=> b!3856469 m!4410745))

(declare-fun m!4411993 () Bool)

(assert (=> b!3856469 m!4411993))

(assert (=> b!3856469 m!4410747))

(declare-fun m!4411995 () Bool)

(assert (=> b!3856469 m!4411995))

(assert (=> b!3856469 m!4411993))

(assert (=> b!3856469 m!4411995))

(declare-fun m!4411997 () Bool)

(assert (=> b!3856469 m!4411997))

(assert (=> b!3856470 m!4410747))

(declare-fun m!4411999 () Bool)

(assert (=> b!3856470 m!4411999))

(assert (=> b!3856470 m!4410745))

(declare-fun m!4412001 () Bool)

(assert (=> b!3856470 m!4412001))

(assert (=> b!3855464 d!1143427))

(declare-fun d!1143429 () Bool)

(assert (=> d!1143429 (= (tail!5831 lt!1339269) (t!312564 lt!1339269))))

(assert (=> b!3855464 d!1143429))

(declare-fun d!1143431 () Bool)

(assert (=> d!1143431 (= (tail!5831 lt!1339270) (t!312564 lt!1339270))))

(assert (=> b!3855464 d!1143431))

(assert (=> b!3855550 d!1143381))

(declare-fun d!1143433 () Bool)

(assert (=> d!1143433 (= (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339385))))) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339385))))))))

(declare-fun b_lambda!112745 () Bool)

(assert (=> (not b_lambda!112745) (not d!1143433)))

(declare-fun t!312859 () Bool)

(declare-fun tb!223169 () Bool)

(assert (=> (and b!3855241 (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312859) tb!223169))

(declare-fun result!271808 () Bool)

(assert (=> tb!223169 (= result!271808 (inv!21 (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385))))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339385)))))))))

(declare-fun m!4412003 () Bool)

(assert (=> tb!223169 m!4412003))

(assert (=> d!1143433 t!312859))

(declare-fun b_and!288471 () Bool)

(assert (= b_and!288283 (and (=> t!312859 result!271808) b_and!288471)))

(declare-fun tb!223171 () Bool)

(declare-fun t!312861 () Bool)

(assert (=> (and b!3855259 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312861) tb!223171))

(declare-fun result!271810 () Bool)

(assert (= result!271810 result!271808))

(assert (=> d!1143433 t!312861))

(declare-fun b_and!288473 () Bool)

(assert (= b_and!288279 (and (=> t!312861 result!271810) b_and!288473)))

(declare-fun tb!223173 () Bool)

(declare-fun t!312863 () Bool)

(assert (=> (and b!3855865 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312863) tb!223173))

(declare-fun result!271812 () Bool)

(assert (= result!271812 result!271808))

(assert (=> d!1143433 t!312863))

(declare-fun b_and!288475 () Bool)

(assert (= b_and!288323 (and (=> t!312863 result!271812) b_and!288475)))

(declare-fun t!312865 () Bool)

(declare-fun tb!223175 () Bool)

(assert (=> (and b!3855853 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312865) tb!223175))

(declare-fun result!271814 () Bool)

(assert (= result!271814 result!271808))

(assert (=> d!1143433 t!312865))

(declare-fun b_and!288477 () Bool)

(assert (= b_and!288319 (and (=> t!312865 result!271814) b_and!288477)))

(declare-fun t!312867 () Bool)

(declare-fun tb!223177 () Bool)

(assert (=> (and b!3855256 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312867) tb!223177))

(declare-fun result!271816 () Bool)

(assert (= result!271816 result!271808))

(assert (=> d!1143433 t!312867))

(declare-fun b_and!288479 () Bool)

(assert (= b_and!288281 (and (=> t!312867 result!271816) b_and!288479)))

(declare-fun tb!223179 () Bool)

(declare-fun t!312869 () Bool)

(assert (=> (and b!3855826 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312869) tb!223179))

(declare-fun result!271818 () Bool)

(assert (= result!271818 result!271808))

(assert (=> d!1143433 t!312869))

(declare-fun b_and!288481 () Bool)

(assert (= b_and!288315 (and (=> t!312869 result!271818) b_and!288481)))

(assert (=> d!1143433 m!4410873))

(declare-fun m!4412005 () Bool)

(assert (=> d!1143433 m!4412005))

(assert (=> b!3855550 d!1143433))

(declare-fun d!1143435 () Bool)

(assert (=> d!1143435 (= (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339385)))) (fromListB!2119 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339385)))))))

(declare-fun bs!583079 () Bool)

(assert (= bs!583079 d!1143435))

(declare-fun m!4412007 () Bool)

(assert (=> bs!583079 m!4412007))

(assert (=> b!3855550 d!1143435))

(declare-fun d!1143437 () Bool)

(assert (=> d!1143437 (= (head!8118 lt!1339269) (h!46283 lt!1339269))))

(assert (=> b!3855636 d!1143437))

(declare-fun d!1143439 () Bool)

(declare-fun lt!1339692 () Int)

(assert (=> d!1143439 (>= lt!1339692 0)))

(declare-fun e!2383854 () Int)

(assert (=> d!1143439 (= lt!1339692 e!2383854)))

(declare-fun c!671604 () Bool)

(assert (=> d!1143439 (= c!671604 ((_ is Nil!40863) (_2!23163 lt!1339394)))))

(assert (=> d!1143439 (= (size!30736 (_2!23163 lt!1339394)) lt!1339692)))

(declare-fun b!3856471 () Bool)

(assert (=> b!3856471 (= e!2383854 0)))

(declare-fun b!3856472 () Bool)

(assert (=> b!3856472 (= e!2383854 (+ 1 (size!30736 (t!312564 (_2!23163 lt!1339394)))))))

(assert (= (and d!1143439 c!671604) b!3856471))

(assert (= (and d!1143439 (not c!671604)) b!3856472))

(declare-fun m!4412009 () Bool)

(assert (=> b!3856472 m!4412009))

(assert (=> b!3855572 d!1143439))

(assert (=> b!3855572 d!1143021))

(declare-fun d!1143441 () Bool)

(assert (=> d!1143441 (= (isEmpty!24198 lt!1339271) (not ((_ is Some!8737) lt!1339271)))))

(assert (=> d!1143019 d!1143441))

(declare-fun bs!583080 () Bool)

(declare-fun d!1143443 () Bool)

(assert (= bs!583080 (and d!1143443 d!1143233)))

(declare-fun lambda!126229 () Int)

(assert (=> bs!583080 (= (and (= (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (= (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))))) (= lambda!126229 lambda!126223))))

(declare-fun b!3856477 () Bool)

(declare-fun e!2383857 () Bool)

(assert (=> b!3856477 (= e!2383857 true)))

(assert (=> d!1143443 e!2383857))

(assert (= d!1143443 b!3856477))

(assert (=> b!3856477 (< (dynLambda!17640 order!22187 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) (dynLambda!17639 order!22185 lambda!126229))))

(assert (=> b!3856477 (< (dynLambda!17638 order!22183 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) (dynLambda!17639 order!22185 lambda!126229))))

(assert (=> d!1143443 (= (list!15210 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 (_1!23166 lt!1339438))))) (list!15210 (seqFromList!4591 (_1!23166 lt!1339438))))))

(declare-fun lt!1339695 () Unit!58530)

(declare-fun ForallOf!784 (Int BalanceConc!24656) Unit!58530)

(assert (=> d!1143443 (= lt!1339695 (ForallOf!784 lambda!126229 (seqFromList!4591 (_1!23166 lt!1339438))))))

(assert (=> d!1143443 (= (lemmaSemiInverse!1682 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (seqFromList!4591 (_1!23166 lt!1339438))) lt!1339695)))

(declare-fun b_lambda!112747 () Bool)

(assert (=> (not b_lambda!112747) (not d!1143443)))

(declare-fun t!312871 () Bool)

(declare-fun tb!223181 () Bool)

(assert (=> (and b!3855853 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312871) tb!223181))

(declare-fun e!2383858 () Bool)

(declare-fun b!3856478 () Bool)

(declare-fun tp!1168918 () Bool)

(assert (=> b!3856478 (= e!2383858 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 (_1!23166 lt!1339438)))))) tp!1168918))))

(declare-fun result!271820 () Bool)

(assert (=> tb!223181 (= result!271820 (and (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 (_1!23166 lt!1339438))))) e!2383858))))

(assert (= tb!223181 b!3856478))

(declare-fun m!4412011 () Bool)

(assert (=> b!3856478 m!4412011))

(declare-fun m!4412013 () Bool)

(assert (=> tb!223181 m!4412013))

(assert (=> d!1143443 t!312871))

(declare-fun b_and!288483 () Bool)

(assert (= b_and!288461 (and (=> t!312871 result!271820) b_and!288483)))

(declare-fun t!312873 () Bool)

(declare-fun tb!223183 () Bool)

(assert (=> (and b!3855865 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312873) tb!223183))

(declare-fun result!271822 () Bool)

(assert (= result!271822 result!271820))

(assert (=> d!1143443 t!312873))

(declare-fun b_and!288485 () Bool)

(assert (= b_and!288463 (and (=> t!312873 result!271822) b_and!288485)))

(declare-fun tb!223185 () Bool)

(declare-fun t!312875 () Bool)

(assert (=> (and b!3855241 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312875) tb!223185))

(declare-fun result!271824 () Bool)

(assert (= result!271824 result!271820))

(assert (=> d!1143443 t!312875))

(declare-fun b_and!288487 () Bool)

(assert (= b_and!288467 (and (=> t!312875 result!271824) b_and!288487)))

(declare-fun tb!223187 () Bool)

(declare-fun t!312877 () Bool)

(assert (=> (and b!3855259 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312877) tb!223187))

(declare-fun result!271826 () Bool)

(assert (= result!271826 result!271820))

(assert (=> d!1143443 t!312877))

(declare-fun b_and!288489 () Bool)

(assert (= b_and!288469 (and (=> t!312877 result!271826) b_and!288489)))

(declare-fun t!312879 () Bool)

(declare-fun tb!223189 () Bool)

(assert (=> (and b!3855826 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312879) tb!223189))

(declare-fun result!271828 () Bool)

(assert (= result!271828 result!271820))

(assert (=> d!1143443 t!312879))

(declare-fun b_and!288491 () Bool)

(assert (= b_and!288459 (and (=> t!312879 result!271828) b_and!288491)))

(declare-fun tb!223191 () Bool)

(declare-fun t!312881 () Bool)

(assert (=> (and b!3855256 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312881) tb!223191))

(declare-fun result!271830 () Bool)

(assert (= result!271830 result!271820))

(assert (=> d!1143443 t!312881))

(declare-fun b_and!288493 () Bool)

(assert (= b_and!288465 (and (=> t!312881 result!271830) b_and!288493)))

(declare-fun b_lambda!112749 () Bool)

(assert (=> (not b_lambda!112749) (not d!1143443)))

(declare-fun tb!223193 () Bool)

(declare-fun t!312883 () Bool)

(assert (=> (and b!3855259 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312883) tb!223193))

(declare-fun result!271832 () Bool)

(assert (=> tb!223193 (= result!271832 (inv!21 (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 (_1!23166 lt!1339438)))))))

(declare-fun m!4412015 () Bool)

(assert (=> tb!223193 m!4412015))

(assert (=> d!1143443 t!312883))

(declare-fun b_and!288495 () Bool)

(assert (= b_and!288473 (and (=> t!312883 result!271832) b_and!288495)))

(declare-fun tb!223195 () Bool)

(declare-fun t!312885 () Bool)

(assert (=> (and b!3855826 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312885) tb!223195))

(declare-fun result!271834 () Bool)

(assert (= result!271834 result!271832))

(assert (=> d!1143443 t!312885))

(declare-fun b_and!288497 () Bool)

(assert (= b_and!288481 (and (=> t!312885 result!271834) b_and!288497)))

(declare-fun t!312887 () Bool)

(declare-fun tb!223197 () Bool)

(assert (=> (and b!3855865 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312887) tb!223197))

(declare-fun result!271836 () Bool)

(assert (= result!271836 result!271832))

(assert (=> d!1143443 t!312887))

(declare-fun b_and!288499 () Bool)

(assert (= b_and!288475 (and (=> t!312887 result!271836) b_and!288499)))

(declare-fun tb!223199 () Bool)

(declare-fun t!312889 () Bool)

(assert (=> (and b!3855853 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312889) tb!223199))

(declare-fun result!271838 () Bool)

(assert (= result!271838 result!271832))

(assert (=> d!1143443 t!312889))

(declare-fun b_and!288501 () Bool)

(assert (= b_and!288477 (and (=> t!312889 result!271838) b_and!288501)))

(declare-fun tb!223201 () Bool)

(declare-fun t!312891 () Bool)

(assert (=> (and b!3855241 (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312891) tb!223201))

(declare-fun result!271840 () Bool)

(assert (= result!271840 result!271832))

(assert (=> d!1143443 t!312891))

(declare-fun b_and!288503 () Bool)

(assert (= b_and!288471 (and (=> t!312891 result!271840) b_and!288503)))

(declare-fun tb!223203 () Bool)

(declare-fun t!312893 () Bool)

(assert (=> (and b!3855256 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312893) tb!223203))

(declare-fun result!271842 () Bool)

(assert (= result!271842 result!271832))

(assert (=> d!1143443 t!312893))

(declare-fun b_and!288505 () Bool)

(assert (= b_and!288479 (and (=> t!312893 result!271842) b_and!288505)))

(assert (=> d!1143443 m!4411097))

(declare-fun m!4412017 () Bool)

(assert (=> d!1143443 m!4412017))

(assert (=> d!1143443 m!4412017))

(declare-fun m!4412019 () Bool)

(assert (=> d!1143443 m!4412019))

(assert (=> d!1143443 m!4411097))

(declare-fun m!4412021 () Bool)

(assert (=> d!1143443 m!4412021))

(assert (=> d!1143443 m!4412019))

(declare-fun m!4412023 () Bool)

(assert (=> d!1143443 m!4412023))

(assert (=> d!1143443 m!4411097))

(declare-fun m!4412025 () Bool)

(assert (=> d!1143443 m!4412025))

(assert (=> b!3855790 d!1143443))

(declare-fun bm!282453 () Bool)

(declare-fun call!282465 () Regex!11225)

(declare-fun call!282464 () C!22636)

(assert (=> bm!282453 (= call!282465 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) call!282464))))

(declare-fun b!3856507 () Bool)

(declare-fun e!2383876 () tuple2!40064)

(declare-fun e!2383882 () tuple2!40064)

(assert (=> b!3856507 (= e!2383876 e!2383882)))

(declare-fun c!671622 () Bool)

(assert (=> b!3856507 (= c!671622 (= (size!30736 Nil!40863) (size!30736 lt!1339257)))))

(declare-fun bm!282454 () Bool)

(declare-fun call!282462 () List!40987)

(assert (=> bm!282454 (= call!282462 (tail!5831 lt!1339257))))

(declare-fun bm!282455 () Bool)

(declare-fun call!282461 () Unit!58530)

(assert (=> bm!282455 (= call!282461 (lemmaIsPrefixRefl!2180 lt!1339257 lt!1339257))))

(declare-fun b!3856508 () Bool)

(declare-fun e!2383877 () Bool)

(declare-fun e!2383879 () Bool)

(assert (=> b!3856508 (= e!2383877 e!2383879)))

(declare-fun res!1561246 () Bool)

(assert (=> b!3856508 (=> res!1561246 e!2383879)))

(declare-fun lt!1339762 () tuple2!40064)

(assert (=> b!3856508 (= res!1561246 (isEmpty!24195 (_1!23166 lt!1339762)))))

(declare-fun b!3856509 () Bool)

(assert (=> b!3856509 (= e!2383879 (>= (size!30736 (_1!23166 lt!1339762)) (size!30736 Nil!40863)))))

(declare-fun b!3856510 () Bool)

(declare-fun e!2383881 () tuple2!40064)

(declare-fun e!2383880 () tuple2!40064)

(assert (=> b!3856510 (= e!2383881 e!2383880)))

(declare-fun lt!1339759 () tuple2!40064)

(declare-fun call!282458 () tuple2!40064)

(assert (=> b!3856510 (= lt!1339759 call!282458)))

(declare-fun c!671621 () Bool)

(assert (=> b!3856510 (= c!671621 (isEmpty!24195 (_1!23166 lt!1339759)))))

(declare-fun bm!282456 () Bool)

(assert (=> bm!282456 (= call!282464 (head!8118 lt!1339257))))

(declare-fun bm!282457 () Bool)

(declare-fun call!282460 () Unit!58530)

(declare-fun lemmaIsPrefixSameLengthThenSameList!703 (List!40987 List!40987 List!40987) Unit!58530)

(assert (=> bm!282457 (= call!282460 (lemmaIsPrefixSameLengthThenSameList!703 lt!1339257 Nil!40863 lt!1339257))))

(declare-fun b!3856511 () Bool)

(assert (=> b!3856511 (= e!2383880 lt!1339759)))

(declare-fun b!3856512 () Bool)

(declare-fun c!671619 () Bool)

(declare-fun call!282463 () Bool)

(assert (=> b!3856512 (= c!671619 call!282463)))

(declare-fun lt!1339771 () Unit!58530)

(declare-fun lt!1339755 () Unit!58530)

(assert (=> b!3856512 (= lt!1339771 lt!1339755)))

(assert (=> b!3856512 (= lt!1339257 Nil!40863)))

(assert (=> b!3856512 (= lt!1339755 call!282460)))

(declare-fun lt!1339760 () Unit!58530)

(declare-fun lt!1339766 () Unit!58530)

(assert (=> b!3856512 (= lt!1339760 lt!1339766)))

(declare-fun call!282459 () Bool)

(assert (=> b!3856512 call!282459))

(assert (=> b!3856512 (= lt!1339766 call!282461)))

(declare-fun e!2383878 () tuple2!40064)

(assert (=> b!3856512 (= e!2383882 e!2383878)))

(declare-fun b!3856513 () Bool)

(declare-fun c!671618 () Bool)

(assert (=> b!3856513 (= c!671618 call!282463)))

(declare-fun lt!1339767 () Unit!58530)

(declare-fun lt!1339774 () Unit!58530)

(assert (=> b!3856513 (= lt!1339767 lt!1339774)))

(declare-fun lt!1339773 () C!22636)

(declare-fun lt!1339761 () List!40987)

(assert (=> b!3856513 (= (++!10397 (++!10397 Nil!40863 (Cons!40863 lt!1339773 Nil!40863)) lt!1339761) lt!1339257)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1220 (List!40987 C!22636 List!40987 List!40987) Unit!58530)

(assert (=> b!3856513 (= lt!1339774 (lemmaMoveElementToOtherListKeepsConcatEq!1220 Nil!40863 lt!1339773 lt!1339761 lt!1339257))))

(assert (=> b!3856513 (= lt!1339761 (tail!5831 lt!1339257))))

(assert (=> b!3856513 (= lt!1339773 (head!8118 lt!1339257))))

(declare-fun lt!1339763 () Unit!58530)

(declare-fun lt!1339753 () Unit!58530)

(assert (=> b!3856513 (= lt!1339763 lt!1339753)))

(assert (=> b!3856513 (isPrefix!3419 (++!10397 Nil!40863 (Cons!40863 (head!8118 (getSuffix!1874 lt!1339257 Nil!40863)) Nil!40863)) lt!1339257)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!602 (List!40987 List!40987) Unit!58530)

(assert (=> b!3856513 (= lt!1339753 (lemmaAddHeadSuffixToPrefixStillPrefix!602 Nil!40863 lt!1339257))))

(declare-fun lt!1339764 () Unit!58530)

(declare-fun lt!1339778 () Unit!58530)

(assert (=> b!3856513 (= lt!1339764 lt!1339778)))

(assert (=> b!3856513 (= lt!1339778 (lemmaAddHeadSuffixToPrefixStillPrefix!602 Nil!40863 lt!1339257))))

(declare-fun lt!1339768 () List!40987)

(assert (=> b!3856513 (= lt!1339768 (++!10397 Nil!40863 (Cons!40863 (head!8118 lt!1339257) Nil!40863)))))

(declare-fun lt!1339775 () Unit!58530)

(declare-fun e!2383883 () Unit!58530)

(assert (=> b!3856513 (= lt!1339775 e!2383883)))

(declare-fun c!671620 () Bool)

(assert (=> b!3856513 (= c!671620 (= (size!30736 Nil!40863) (size!30736 lt!1339257)))))

(declare-fun lt!1339757 () Unit!58530)

(declare-fun lt!1339765 () Unit!58530)

(assert (=> b!3856513 (= lt!1339757 lt!1339765)))

(assert (=> b!3856513 (<= (size!30736 Nil!40863) (size!30736 lt!1339257))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!410 (List!40987 List!40987) Unit!58530)

(assert (=> b!3856513 (= lt!1339765 (lemmaIsPrefixThenSmallerEqSize!410 Nil!40863 lt!1339257))))

(assert (=> b!3856513 (= e!2383882 e!2383881)))

(declare-fun b!3856514 () Bool)

(assert (=> b!3856514 (= e!2383880 (tuple2!40065 Nil!40863 lt!1339257))))

(declare-fun b!3856515 () Bool)

(declare-fun Unit!58537 () Unit!58530)

(assert (=> b!3856515 (= e!2383883 Unit!58537)))

(declare-fun lt!1339779 () Unit!58530)

(assert (=> b!3856515 (= lt!1339779 call!282461)))

(assert (=> b!3856515 call!282459))

(declare-fun lt!1339770 () Unit!58530)

(assert (=> b!3856515 (= lt!1339770 lt!1339779)))

(declare-fun lt!1339772 () Unit!58530)

(assert (=> b!3856515 (= lt!1339772 call!282460)))

(assert (=> b!3856515 (= lt!1339257 Nil!40863)))

(declare-fun lt!1339758 () Unit!58530)

(assert (=> b!3856515 (= lt!1339758 lt!1339772)))

(assert (=> b!3856515 false))

(declare-fun b!3856516 () Bool)

(declare-fun Unit!58538 () Unit!58530)

(assert (=> b!3856516 (= e!2383883 Unit!58538)))

(declare-fun b!3856517 () Bool)

(assert (=> b!3856517 (= e!2383881 call!282458)))

(declare-fun d!1143445 () Bool)

(assert (=> d!1143445 e!2383877))

(declare-fun res!1561247 () Bool)

(assert (=> d!1143445 (=> (not res!1561247) (not e!2383877))))

(assert (=> d!1143445 (= res!1561247 (= (++!10397 (_1!23166 lt!1339762) (_2!23166 lt!1339762)) lt!1339257))))

(assert (=> d!1143445 (= lt!1339762 e!2383876)))

(declare-fun c!671623 () Bool)

(declare-fun lostCause!976 (Regex!11225) Bool)

(assert (=> d!1143445 (= c!671623 (lostCause!976 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun lt!1339769 () Unit!58530)

(declare-fun Unit!58539 () Unit!58530)

(assert (=> d!1143445 (= lt!1339769 Unit!58539)))

(assert (=> d!1143445 (= (getSuffix!1874 lt!1339257 Nil!40863) lt!1339257)))

(declare-fun lt!1339777 () Unit!58530)

(declare-fun lt!1339756 () Unit!58530)

(assert (=> d!1143445 (= lt!1339777 lt!1339756)))

(declare-fun lt!1339776 () List!40987)

(assert (=> d!1143445 (= lt!1339257 lt!1339776)))

(assert (=> d!1143445 (= lt!1339756 (lemmaSamePrefixThenSameSuffix!1640 Nil!40863 lt!1339257 Nil!40863 lt!1339776 lt!1339257))))

(assert (=> d!1143445 (= lt!1339776 (getSuffix!1874 lt!1339257 Nil!40863))))

(declare-fun lt!1339754 () Unit!58530)

(declare-fun lt!1339752 () Unit!58530)

(assert (=> d!1143445 (= lt!1339754 lt!1339752)))

(assert (=> d!1143445 (isPrefix!3419 Nil!40863 (++!10397 Nil!40863 lt!1339257))))

(assert (=> d!1143445 (= lt!1339752 (lemmaConcatTwoListThenFirstIsPrefix!2282 Nil!40863 lt!1339257))))

(assert (=> d!1143445 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143445 (= (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)) lt!1339762)))

(declare-fun bm!282458 () Bool)

(assert (=> bm!282458 (= call!282463 (nullable!3909 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856518 () Bool)

(assert (=> b!3856518 (= e!2383878 (tuple2!40065 Nil!40863 lt!1339257))))

(declare-fun b!3856519 () Bool)

(assert (=> b!3856519 (= e!2383876 (tuple2!40065 Nil!40863 lt!1339257))))

(declare-fun b!3856520 () Bool)

(assert (=> b!3856520 (= e!2383878 (tuple2!40065 Nil!40863 Nil!40863))))

(declare-fun bm!282459 () Bool)

(assert (=> bm!282459 (= call!282458 (findLongestMatchInner!1176 call!282465 lt!1339768 (+ (size!30736 Nil!40863) 1) call!282462 lt!1339257 (size!30736 lt!1339257)))))

(declare-fun bm!282460 () Bool)

(assert (=> bm!282460 (= call!282459 (isPrefix!3419 lt!1339257 lt!1339257))))

(assert (= (and d!1143445 c!671623) b!3856519))

(assert (= (and d!1143445 (not c!671623)) b!3856507))

(assert (= (and b!3856507 c!671622) b!3856512))

(assert (= (and b!3856507 (not c!671622)) b!3856513))

(assert (= (and b!3856512 c!671619) b!3856520))

(assert (= (and b!3856512 (not c!671619)) b!3856518))

(assert (= (and b!3856513 c!671620) b!3856515))

(assert (= (and b!3856513 (not c!671620)) b!3856516))

(assert (= (and b!3856513 c!671618) b!3856510))

(assert (= (and b!3856513 (not c!671618)) b!3856517))

(assert (= (and b!3856510 c!671621) b!3856514))

(assert (= (and b!3856510 (not c!671621)) b!3856511))

(assert (= (or b!3856510 b!3856517) bm!282456))

(assert (= (or b!3856510 b!3856517) bm!282454))

(assert (= (or b!3856510 b!3856517) bm!282453))

(assert (= (or b!3856510 b!3856517) bm!282459))

(assert (= (or b!3856512 b!3856515) bm!282457))

(assert (= (or b!3856512 b!3856513) bm!282458))

(assert (= (or b!3856512 b!3856515) bm!282460))

(assert (= (or b!3856512 b!3856515) bm!282455))

(assert (= (and d!1143445 res!1561247) b!3856508))

(assert (= (and b!3856508 (not res!1561246)) b!3856509))

(declare-fun m!4412027 () Bool)

(assert (=> b!3856510 m!4412027))

(assert (=> bm!282458 m!4410707))

(declare-fun m!4412029 () Bool)

(assert (=> d!1143445 m!4412029))

(declare-fun m!4412031 () Bool)

(assert (=> d!1143445 m!4412031))

(declare-fun m!4412033 () Bool)

(assert (=> d!1143445 m!4412033))

(assert (=> d!1143445 m!4412029))

(declare-fun m!4412035 () Bool)

(assert (=> d!1143445 m!4412035))

(declare-fun m!4412037 () Bool)

(assert (=> d!1143445 m!4412037))

(assert (=> d!1143445 m!4410705))

(declare-fun m!4412039 () Bool)

(assert (=> d!1143445 m!4412039))

(declare-fun m!4412041 () Bool)

(assert (=> d!1143445 m!4412041))

(assert (=> bm!282454 m!4410621))

(assert (=> bm!282455 m!4410881))

(declare-fun m!4412043 () Bool)

(assert (=> bm!282453 m!4412043))

(assert (=> bm!282459 m!4410555))

(declare-fun m!4412045 () Bool)

(assert (=> bm!282459 m!4412045))

(declare-fun m!4412047 () Bool)

(assert (=> bm!282457 m!4412047))

(declare-fun m!4412049 () Bool)

(assert (=> b!3856509 m!4412049))

(assert (=> b!3856509 m!4411087))

(declare-fun m!4412051 () Bool)

(assert (=> b!3856508 m!4412051))

(declare-fun m!4412053 () Bool)

(assert (=> bm!282456 m!4412053))

(assert (=> b!3856513 m!4412039))

(declare-fun m!4412055 () Bool)

(assert (=> b!3856513 m!4412055))

(declare-fun m!4412057 () Bool)

(assert (=> b!3856513 m!4412057))

(declare-fun m!4412059 () Bool)

(assert (=> b!3856513 m!4412059))

(declare-fun m!4412061 () Bool)

(assert (=> b!3856513 m!4412061))

(assert (=> b!3856513 m!4410621))

(declare-fun m!4412063 () Bool)

(assert (=> b!3856513 m!4412063))

(assert (=> b!3856513 m!4411087))

(assert (=> b!3856513 m!4412039))

(assert (=> b!3856513 m!4410555))

(declare-fun m!4412065 () Bool)

(assert (=> b!3856513 m!4412065))

(assert (=> b!3856513 m!4412065))

(declare-fun m!4412067 () Bool)

(assert (=> b!3856513 m!4412067))

(assert (=> b!3856513 m!4412057))

(declare-fun m!4412069 () Bool)

(assert (=> b!3856513 m!4412069))

(declare-fun m!4412071 () Bool)

(assert (=> b!3856513 m!4412071))

(assert (=> b!3856513 m!4412053))

(assert (=> bm!282460 m!4410879))

(assert (=> b!3855790 d!1143445))

(declare-fun d!1143447 () Bool)

(declare-fun lt!1339780 () Int)

(assert (=> d!1143447 (>= lt!1339780 0)))

(declare-fun e!2383884 () Int)

(assert (=> d!1143447 (= lt!1339780 e!2383884)))

(declare-fun c!671624 () Bool)

(assert (=> d!1143447 (= c!671624 ((_ is Nil!40863) Nil!40863))))

(assert (=> d!1143447 (= (size!30736 Nil!40863) lt!1339780)))

(declare-fun b!3856521 () Bool)

(assert (=> b!3856521 (= e!2383884 0)))

(declare-fun b!3856522 () Bool)

(assert (=> b!3856522 (= e!2383884 (+ 1 (size!30736 (t!312564 Nil!40863))))))

(assert (= (and d!1143447 c!671624) b!3856521))

(assert (= (and d!1143447 (not c!671624)) b!3856522))

(declare-fun m!4412073 () Bool)

(assert (=> b!3856522 m!4412073))

(assert (=> b!3855790 d!1143447))

(declare-fun d!1143449 () Bool)

(assert (=> d!1143449 (= (seqFromList!4591 (_1!23166 lt!1339438)) (fromListB!2119 (_1!23166 lt!1339438)))))

(declare-fun bs!583081 () Bool)

(assert (= bs!583081 d!1143449))

(declare-fun m!4412075 () Bool)

(assert (=> bs!583081 m!4412075))

(assert (=> b!3855790 d!1143449))

(declare-fun d!1143451 () Bool)

(assert (=> d!1143451 (= (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (seqFromList!4591 (_1!23166 lt!1339438))) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (seqFromList!4591 (_1!23166 lt!1339438))))))

(declare-fun b_lambda!112751 () Bool)

(assert (=> (not b_lambda!112751) (not d!1143451)))

(assert (=> d!1143451 t!312883))

(declare-fun b_and!288507 () Bool)

(assert (= b_and!288495 (and (=> t!312883 result!271832) b_and!288507)))

(assert (=> d!1143451 t!312885))

(declare-fun b_and!288509 () Bool)

(assert (= b_and!288497 (and (=> t!312885 result!271834) b_and!288509)))

(assert (=> d!1143451 t!312889))

(declare-fun b_and!288511 () Bool)

(assert (= b_and!288501 (and (=> t!312889 result!271838) b_and!288511)))

(assert (=> d!1143451 t!312887))

(declare-fun b_and!288513 () Bool)

(assert (= b_and!288499 (and (=> t!312887 result!271836) b_and!288513)))

(assert (=> d!1143451 t!312893))

(declare-fun b_and!288515 () Bool)

(assert (= b_and!288505 (and (=> t!312893 result!271842) b_and!288515)))

(assert (=> d!1143451 t!312891))

(declare-fun b_and!288517 () Bool)

(assert (= b_and!288503 (and (=> t!312891 result!271840) b_and!288517)))

(assert (=> d!1143451 m!4411097))

(assert (=> d!1143451 m!4412017))

(assert (=> b!3855790 d!1143451))

(declare-fun d!1143453 () Bool)

(declare-fun lt!1339783 () Int)

(assert (=> d!1143453 (= lt!1339783 (size!30736 (list!15210 (seqFromList!4591 (_1!23166 lt!1339438)))))))

(declare-fun size!30742 (Conc!12531) Int)

(assert (=> d!1143453 (= lt!1339783 (size!30742 (c!671349 (seqFromList!4591 (_1!23166 lt!1339438)))))))

(assert (=> d!1143453 (= (size!30740 (seqFromList!4591 (_1!23166 lt!1339438))) lt!1339783)))

(declare-fun bs!583082 () Bool)

(assert (= bs!583082 d!1143453))

(assert (=> bs!583082 m!4411097))

(assert (=> bs!583082 m!4412021))

(assert (=> bs!583082 m!4412021))

(declare-fun m!4412077 () Bool)

(assert (=> bs!583082 m!4412077))

(declare-fun m!4412079 () Bool)

(assert (=> bs!583082 m!4412079))

(assert (=> b!3855790 d!1143453))

(declare-fun d!1143455 () Bool)

(assert (=> d!1143455 (= (isEmpty!24195 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))) ((_ is Nil!40863) (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(assert (=> b!3855790 d!1143455))

(declare-fun d!1143457 () Bool)

(declare-fun e!2383887 () Bool)

(assert (=> d!1143457 e!2383887))

(declare-fun res!1561250 () Bool)

(assert (=> d!1143457 (=> res!1561250 e!2383887)))

(assert (=> d!1143457 (= res!1561250 (isEmpty!24195 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(declare-fun lt!1339786 () Unit!58530)

(declare-fun choose!22702 (Regex!11225 List!40987) Unit!58530)

(assert (=> d!1143457 (= lt!1339786 (choose!22702 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339257))))

(assert (=> d!1143457 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143457 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1149 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339257) lt!1339786)))

(declare-fun b!3856525 () Bool)

(assert (=> b!3856525 (= e!2383887 (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(assert (= (and d!1143457 (not res!1561250)) b!3856525))

(assert (=> d!1143457 m!4410705))

(assert (=> d!1143457 m!4411087))

(assert (=> d!1143457 m!4411101))

(assert (=> d!1143457 m!4410555))

(assert (=> d!1143457 m!4411087))

(assert (=> d!1143457 m!4410555))

(assert (=> d!1143457 m!4411089))

(declare-fun m!4412081 () Bool)

(assert (=> d!1143457 m!4412081))

(assert (=> b!3856525 m!4411087))

(assert (=> b!3856525 m!4410555))

(assert (=> b!3856525 m!4411087))

(assert (=> b!3856525 m!4410555))

(assert (=> b!3856525 m!4411089))

(assert (=> b!3856525 m!4411091))

(assert (=> b!3855790 d!1143457))

(assert (=> b!3855790 d!1142989))

(declare-fun b!3856526 () Bool)

(declare-fun res!1561251 () Bool)

(declare-fun e!2383888 () Bool)

(assert (=> b!3856526 (=> res!1561251 e!2383888)))

(assert (=> b!3856526 (= res!1561251 (not ((_ is IntegerValue!19652) (value!200754 (h!46284 (t!312565 prefixTokens!80))))))))

(declare-fun e!2383890 () Bool)

(assert (=> b!3856526 (= e!2383890 e!2383888)))

(declare-fun d!1143459 () Bool)

(declare-fun c!671625 () Bool)

(assert (=> d!1143459 (= c!671625 ((_ is IntegerValue!19650) (value!200754 (h!46284 (t!312565 prefixTokens!80)))))))

(declare-fun e!2383889 () Bool)

(assert (=> d!1143459 (= (inv!21 (value!200754 (h!46284 (t!312565 prefixTokens!80)))) e!2383889)))

(declare-fun b!3856527 () Bool)

(assert (=> b!3856527 (= e!2383889 (inv!16 (value!200754 (h!46284 (t!312565 prefixTokens!80)))))))

(declare-fun b!3856528 () Bool)

(assert (=> b!3856528 (= e!2383889 e!2383890)))

(declare-fun c!671626 () Bool)

(assert (=> b!3856528 (= c!671626 ((_ is IntegerValue!19651) (value!200754 (h!46284 (t!312565 prefixTokens!80)))))))

(declare-fun b!3856529 () Bool)

(assert (=> b!3856529 (= e!2383888 (inv!15 (value!200754 (h!46284 (t!312565 prefixTokens!80)))))))

(declare-fun b!3856530 () Bool)

(assert (=> b!3856530 (= e!2383890 (inv!17 (value!200754 (h!46284 (t!312565 prefixTokens!80)))))))

(assert (= (and d!1143459 c!671625) b!3856527))

(assert (= (and d!1143459 (not c!671625)) b!3856528))

(assert (= (and b!3856528 c!671626) b!3856530))

(assert (= (and b!3856528 (not c!671626)) b!3856526))

(assert (= (and b!3856526 (not res!1561251)) b!3856529))

(declare-fun m!4412083 () Bool)

(assert (=> b!3856527 m!4412083))

(declare-fun m!4412085 () Bool)

(assert (=> b!3856529 m!4412085))

(declare-fun m!4412087 () Bool)

(assert (=> b!3856530 m!4412087))

(assert (=> b!3855863 d!1143459))

(declare-fun d!1143461 () Bool)

(declare-fun c!671627 () Bool)

(assert (=> d!1143461 (= c!671627 ((_ is Node!12531) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))))))

(declare-fun e!2383891 () Bool)

(assert (=> d!1143461 (= (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))) e!2383891)))

(declare-fun b!3856531 () Bool)

(assert (=> b!3856531 (= e!2383891 (inv!55026 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))))))

(declare-fun b!3856532 () Bool)

(declare-fun e!2383892 () Bool)

(assert (=> b!3856532 (= e!2383891 e!2383892)))

(declare-fun res!1561252 () Bool)

(assert (=> b!3856532 (= res!1561252 (not ((_ is Leaf!19398) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))))))))

(assert (=> b!3856532 (=> res!1561252 e!2383892)))

(declare-fun b!3856533 () Bool)

(assert (=> b!3856533 (= e!2383892 (inv!55027 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))))))

(assert (= (and d!1143461 c!671627) b!3856531))

(assert (= (and d!1143461 (not c!671627)) b!3856532))

(assert (= (and b!3856532 (not res!1561252)) b!3856533))

(declare-fun m!4412089 () Bool)

(assert (=> b!3856531 m!4412089))

(declare-fun m!4412091 () Bool)

(assert (=> b!3856533 m!4412091))

(assert (=> b!3855802 d!1143461))

(assert (=> b!3855788 d!1143419))

(declare-fun d!1143463 () Bool)

(declare-fun lt!1339787 () Int)

(assert (=> d!1143463 (>= lt!1339787 0)))

(declare-fun e!2383893 () Int)

(assert (=> d!1143463 (= lt!1339787 e!2383893)))

(declare-fun c!671628 () Bool)

(assert (=> d!1143463 (= c!671628 ((_ is Nil!40863) (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441)))))))

(assert (=> d!1143463 (= (size!30736 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441)))) lt!1339787)))

(declare-fun b!3856534 () Bool)

(assert (=> b!3856534 (= e!2383893 0)))

(declare-fun b!3856535 () Bool)

(assert (=> b!3856535 (= e!2383893 (+ 1 (size!30736 (t!312564 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441)))))))))

(assert (= (and d!1143463 c!671628) b!3856534))

(assert (= (and d!1143463 (not c!671628)) b!3856535))

(declare-fun m!4412093 () Bool)

(assert (=> b!3856535 m!4412093))

(assert (=> b!3855788 d!1143463))

(declare-fun d!1143465 () Bool)

(declare-fun lt!1339788 () Int)

(assert (=> d!1143465 (>= lt!1339788 0)))

(declare-fun e!2383894 () Int)

(assert (=> d!1143465 (= lt!1339788 e!2383894)))

(declare-fun c!671629 () Bool)

(assert (=> d!1143465 (= c!671629 ((_ is Nil!40863) lt!1339368))))

(assert (=> d!1143465 (= (size!30736 lt!1339368) lt!1339788)))

(declare-fun b!3856536 () Bool)

(assert (=> b!3856536 (= e!2383894 0)))

(declare-fun b!3856537 () Bool)

(assert (=> b!3856537 (= e!2383894 (+ 1 (size!30736 (t!312564 lt!1339368))))))

(assert (= (and d!1143465 c!671629) b!3856536))

(assert (= (and d!1143465 (not c!671629)) b!3856537))

(declare-fun m!4412095 () Bool)

(assert (=> b!3856537 m!4412095))

(assert (=> b!3855526 d!1143465))

(assert (=> b!3855526 d!1143031))

(assert (=> b!3855526 d!1143021))

(declare-fun d!1143467 () Bool)

(declare-fun lt!1339791 () Int)

(assert (=> d!1143467 (>= lt!1339791 0)))

(declare-fun e!2383897 () Int)

(assert (=> d!1143467 (= lt!1339791 e!2383897)))

(declare-fun c!671632 () Bool)

(assert (=> d!1143467 (= c!671632 ((_ is Nil!40864) lt!1339445))))

(assert (=> d!1143467 (= (size!30738 lt!1339445) lt!1339791)))

(declare-fun b!3856542 () Bool)

(assert (=> b!3856542 (= e!2383897 0)))

(declare-fun b!3856543 () Bool)

(assert (=> b!3856543 (= e!2383897 (+ 1 (size!30738 (t!312565 lt!1339445))))))

(assert (= (and d!1143467 c!671632) b!3856542))

(assert (= (and d!1143467 (not c!671632)) b!3856543))

(declare-fun m!4412097 () Bool)

(assert (=> b!3856543 m!4412097))

(assert (=> b!3855805 d!1143467))

(declare-fun d!1143469 () Bool)

(declare-fun lt!1339792 () Int)

(assert (=> d!1143469 (>= lt!1339792 0)))

(declare-fun e!2383898 () Int)

(assert (=> d!1143469 (= lt!1339792 e!2383898)))

(declare-fun c!671633 () Bool)

(assert (=> d!1143469 (= c!671633 ((_ is Nil!40864) (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)))))

(assert (=> d!1143469 (= (size!30738 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)) lt!1339792)))

(declare-fun b!3856544 () Bool)

(assert (=> b!3856544 (= e!2383898 0)))

(declare-fun b!3856545 () Bool)

(assert (=> b!3856545 (= e!2383898 (+ 1 (size!30738 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)))))))

(assert (= (and d!1143469 c!671633) b!3856544))

(assert (= (and d!1143469 (not c!671633)) b!3856545))

(declare-fun m!4412099 () Bool)

(assert (=> b!3856545 m!4412099))

(assert (=> b!3855805 d!1143469))

(declare-fun d!1143471 () Bool)

(declare-fun lt!1339793 () Int)

(assert (=> d!1143471 (>= lt!1339793 0)))

(declare-fun e!2383899 () Int)

(assert (=> d!1143471 (= lt!1339793 e!2383899)))

(declare-fun c!671634 () Bool)

(assert (=> d!1143471 (= c!671634 ((_ is Nil!40864) (_1!23163 lt!1339266)))))

(assert (=> d!1143471 (= (size!30738 (_1!23163 lt!1339266)) lt!1339793)))

(declare-fun b!3856546 () Bool)

(assert (=> b!3856546 (= e!2383899 0)))

(declare-fun b!3856547 () Bool)

(assert (=> b!3856547 (= e!2383899 (+ 1 (size!30738 (t!312565 (_1!23163 lt!1339266)))))))

(assert (= (and d!1143471 c!671634) b!3856546))

(assert (= (and d!1143471 (not c!671634)) b!3856547))

(declare-fun m!4412101 () Bool)

(assert (=> b!3856547 m!4412101))

(assert (=> b!3855805 d!1143471))

(declare-fun b!3856548 () Bool)

(declare-fun e!2383900 () List!40987)

(assert (=> b!3856548 (= e!2383900 (_2!23164 (v!39033 lt!1339271)))))

(declare-fun b!3856550 () Bool)

(declare-fun res!1561253 () Bool)

(declare-fun e!2383901 () Bool)

(assert (=> b!3856550 (=> (not res!1561253) (not e!2383901))))

(declare-fun lt!1339794 () List!40987)

(assert (=> b!3856550 (= res!1561253 (= (size!30736 lt!1339794) (+ (size!30736 (t!312564 lt!1339269)) (size!30736 (_2!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856551 () Bool)

(assert (=> b!3856551 (= e!2383901 (or (not (= (_2!23164 (v!39033 lt!1339271)) Nil!40863)) (= lt!1339794 (t!312564 lt!1339269))))))

(declare-fun b!3856549 () Bool)

(assert (=> b!3856549 (= e!2383900 (Cons!40863 (h!46283 (t!312564 lt!1339269)) (++!10397 (t!312564 (t!312564 lt!1339269)) (_2!23164 (v!39033 lt!1339271)))))))

(declare-fun d!1143473 () Bool)

(assert (=> d!1143473 e!2383901))

(declare-fun res!1561254 () Bool)

(assert (=> d!1143473 (=> (not res!1561254) (not e!2383901))))

(assert (=> d!1143473 (= res!1561254 (= (content!6085 lt!1339794) ((_ map or) (content!6085 (t!312564 lt!1339269)) (content!6085 (_2!23164 (v!39033 lt!1339271))))))))

(assert (=> d!1143473 (= lt!1339794 e!2383900)))

(declare-fun c!671635 () Bool)

(assert (=> d!1143473 (= c!671635 ((_ is Nil!40863) (t!312564 lt!1339269)))))

(assert (=> d!1143473 (= (++!10397 (t!312564 lt!1339269) (_2!23164 (v!39033 lt!1339271))) lt!1339794)))

(assert (= (and d!1143473 c!671635) b!3856548))

(assert (= (and d!1143473 (not c!671635)) b!3856549))

(assert (= (and d!1143473 res!1561254) b!3856550))

(assert (= (and b!3856550 res!1561253) b!3856551))

(declare-fun m!4412103 () Bool)

(assert (=> b!3856550 m!4412103))

(assert (=> b!3856550 m!4410603))

(assert (=> b!3856550 m!4410529))

(declare-fun m!4412105 () Bool)

(assert (=> b!3856549 m!4412105))

(declare-fun m!4412107 () Bool)

(assert (=> d!1143473 m!4412107))

(declare-fun m!4412109 () Bool)

(assert (=> d!1143473 m!4412109))

(assert (=> d!1143473 m!4410593))

(assert (=> b!3855295 d!1143473))

(declare-fun d!1143475 () Bool)

(declare-fun isBalanced!3626 (Conc!12531) Bool)

(assert (=> d!1143475 (= (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))) (isBalanced!3626 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))))))

(declare-fun bs!583083 () Bool)

(assert (= bs!583083 d!1143475))

(declare-fun m!4412111 () Bool)

(assert (=> bs!583083 m!4412111))

(assert (=> tb!222911 d!1143475))

(declare-fun d!1143477 () Bool)

(declare-fun lt!1339795 () Int)

(assert (=> d!1143477 (>= lt!1339795 0)))

(declare-fun e!2383902 () Int)

(assert (=> d!1143477 (= lt!1339795 e!2383902)))

(declare-fun c!671636 () Bool)

(assert (=> d!1143477 (= c!671636 ((_ is Nil!40864) (_1!23163 lt!1339339)))))

(assert (=> d!1143477 (= (size!30738 (_1!23163 lt!1339339)) lt!1339795)))

(declare-fun b!3856552 () Bool)

(assert (=> b!3856552 (= e!2383902 0)))

(declare-fun b!3856553 () Bool)

(assert (=> b!3856553 (= e!2383902 (+ 1 (size!30738 (t!312565 (_1!23163 lt!1339339)))))))

(assert (= (and d!1143477 c!671636) b!3856552))

(assert (= (and d!1143477 (not c!671636)) b!3856553))

(declare-fun m!4412113 () Bool)

(assert (=> b!3856553 m!4412113))

(assert (=> d!1142975 d!1143477))

(declare-fun b!3856554 () Bool)

(declare-fun res!1561259 () Bool)

(declare-fun e!2383905 () Bool)

(assert (=> b!3856554 (=> (not res!1561259) (not e!2383905))))

(declare-fun lt!1339799 () Option!8738)

(assert (=> b!3856554 (= res!1561259 (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339799)))) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339799))))))))

(declare-fun b!3856556 () Bool)

(assert (=> b!3856556 (= e!2383905 (contains!8259 rules!2768 (rule!9180 (_1!23164 (get!13520 lt!1339799)))))))

(declare-fun b!3856557 () Bool)

(declare-fun res!1561256 () Bool)

(assert (=> b!3856557 (=> (not res!1561256) (not e!2383905))))

(assert (=> b!3856557 (= res!1561256 (= (++!10397 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339799)))) (_2!23164 (get!13520 lt!1339799))) (_2!23164 (v!39033 lt!1339271))))))

(declare-fun bm!282461 () Bool)

(declare-fun call!282466 () Option!8738)

(assert (=> bm!282461 (= call!282466 (maxPrefixOneRule!2295 thiss!20629 (h!46285 rules!2768) (_2!23164 (v!39033 lt!1339271))))))

(declare-fun b!3856558 () Bool)

(declare-fun res!1561255 () Bool)

(assert (=> b!3856558 (=> (not res!1561255) (not e!2383905))))

(assert (=> b!3856558 (= res!1561255 (= (value!200754 (_1!23164 (get!13520 lt!1339799))) (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339799)))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339799)))))))))

(declare-fun d!1143479 () Bool)

(declare-fun e!2383904 () Bool)

(assert (=> d!1143479 e!2383904))

(declare-fun res!1561258 () Bool)

(assert (=> d!1143479 (=> res!1561258 e!2383904)))

(assert (=> d!1143479 (= res!1561258 (isEmpty!24198 lt!1339799))))

(declare-fun e!2383903 () Option!8738)

(assert (=> d!1143479 (= lt!1339799 e!2383903)))

(declare-fun c!671637 () Bool)

(assert (=> d!1143479 (= c!671637 (and ((_ is Cons!40865) rules!2768) ((_ is Nil!40865) (t!312566 rules!2768))))))

(declare-fun lt!1339798 () Unit!58530)

(declare-fun lt!1339796 () Unit!58530)

(assert (=> d!1143479 (= lt!1339798 lt!1339796)))

(assert (=> d!1143479 (isPrefix!3419 (_2!23164 (v!39033 lt!1339271)) (_2!23164 (v!39033 lt!1339271)))))

(assert (=> d!1143479 (= lt!1339796 (lemmaIsPrefixRefl!2180 (_2!23164 (v!39033 lt!1339271)) (_2!23164 (v!39033 lt!1339271))))))

(assert (=> d!1143479 (rulesValidInductive!2252 thiss!20629 rules!2768)))

(assert (=> d!1143479 (= (maxPrefix!3213 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339271))) lt!1339799)))

(declare-fun b!3856555 () Bool)

(declare-fun res!1561257 () Bool)

(assert (=> b!3856555 (=> (not res!1561257) (not e!2383905))))

(assert (=> b!3856555 (= res!1561257 (< (size!30736 (_2!23164 (get!13520 lt!1339799))) (size!30736 (_2!23164 (v!39033 lt!1339271)))))))

(declare-fun b!3856559 () Bool)

(assert (=> b!3856559 (= e!2383903 call!282466)))

(declare-fun b!3856560 () Bool)

(declare-fun lt!1339797 () Option!8738)

(declare-fun lt!1339800 () Option!8738)

(assert (=> b!3856560 (= e!2383903 (ite (and ((_ is None!8737) lt!1339797) ((_ is None!8737) lt!1339800)) None!8737 (ite ((_ is None!8737) lt!1339800) lt!1339797 (ite ((_ is None!8737) lt!1339797) lt!1339800 (ite (>= (size!30735 (_1!23164 (v!39033 lt!1339797))) (size!30735 (_1!23164 (v!39033 lt!1339800)))) lt!1339797 lt!1339800)))))))

(assert (=> b!3856560 (= lt!1339797 call!282466)))

(assert (=> b!3856560 (= lt!1339800 (maxPrefix!3213 thiss!20629 (t!312566 rules!2768) (_2!23164 (v!39033 lt!1339271))))))

(declare-fun b!3856561 () Bool)

(declare-fun res!1561261 () Bool)

(assert (=> b!3856561 (=> (not res!1561261) (not e!2383905))))

(assert (=> b!3856561 (= res!1561261 (= (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339799)))) (originalCharacters!6920 (_1!23164 (get!13520 lt!1339799)))))))

(declare-fun b!3856562 () Bool)

(assert (=> b!3856562 (= e!2383904 e!2383905)))

(declare-fun res!1561260 () Bool)

(assert (=> b!3856562 (=> (not res!1561260) (not e!2383905))))

(assert (=> b!3856562 (= res!1561260 (isDefined!6857 lt!1339799))))

(assert (= (and d!1143479 c!671637) b!3856559))

(assert (= (and d!1143479 (not c!671637)) b!3856560))

(assert (= (or b!3856559 b!3856560) bm!282461))

(assert (= (and d!1143479 (not res!1561258)) b!3856562))

(assert (= (and b!3856562 res!1561260) b!3856561))

(assert (= (and b!3856561 res!1561261) b!3856555))

(assert (= (and b!3856555 res!1561257) b!3856557))

(assert (= (and b!3856557 res!1561256) b!3856558))

(assert (= (and b!3856558 res!1561255) b!3856554))

(assert (= (and b!3856554 res!1561259) b!3856556))

(declare-fun m!4412115 () Bool)

(assert (=> b!3856562 m!4412115))

(declare-fun m!4412117 () Bool)

(assert (=> b!3856561 m!4412117))

(declare-fun m!4412119 () Bool)

(assert (=> b!3856561 m!4412119))

(assert (=> b!3856561 m!4412119))

(declare-fun m!4412121 () Bool)

(assert (=> b!3856561 m!4412121))

(declare-fun m!4412123 () Bool)

(assert (=> bm!282461 m!4412123))

(assert (=> b!3856557 m!4412117))

(assert (=> b!3856557 m!4412119))

(assert (=> b!3856557 m!4412119))

(assert (=> b!3856557 m!4412121))

(assert (=> b!3856557 m!4412121))

(declare-fun m!4412125 () Bool)

(assert (=> b!3856557 m!4412125))

(assert (=> b!3856555 m!4412117))

(declare-fun m!4412127 () Bool)

(assert (=> b!3856555 m!4412127))

(assert (=> b!3856555 m!4410529))

(declare-fun m!4412129 () Bool)

(assert (=> b!3856560 m!4412129))

(assert (=> b!3856556 m!4412117))

(declare-fun m!4412131 () Bool)

(assert (=> b!3856556 m!4412131))

(assert (=> b!3856554 m!4412117))

(assert (=> b!3856554 m!4412119))

(assert (=> b!3856554 m!4412119))

(assert (=> b!3856554 m!4412121))

(assert (=> b!3856554 m!4412121))

(declare-fun m!4412133 () Bool)

(assert (=> b!3856554 m!4412133))

(assert (=> b!3856558 m!4412117))

(declare-fun m!4412135 () Bool)

(assert (=> b!3856558 m!4412135))

(assert (=> b!3856558 m!4412135))

(declare-fun m!4412137 () Bool)

(assert (=> b!3856558 m!4412137))

(declare-fun m!4412139 () Bool)

(assert (=> d!1143479 m!4412139))

(declare-fun m!4412141 () Bool)

(assert (=> d!1143479 m!4412141))

(declare-fun m!4412143 () Bool)

(assert (=> d!1143479 m!4412143))

(assert (=> d!1143479 m!4410883))

(assert (=> d!1142975 d!1143479))

(declare-fun d!1143481 () Bool)

(assert (=> d!1143481 (= (isEmpty!24198 lt!1339385) (not ((_ is Some!8737) lt!1339385)))))

(assert (=> d!1143007 d!1143481))

(declare-fun b!3856564 () Bool)

(declare-fun res!1561263 () Bool)

(declare-fun e!2383906 () Bool)

(assert (=> b!3856564 (=> (not res!1561263) (not e!2383906))))

(assert (=> b!3856564 (= res!1561263 (= (head!8118 lt!1339257) (head!8118 lt!1339257)))))

(declare-fun b!3856563 () Bool)

(declare-fun e!2383908 () Bool)

(assert (=> b!3856563 (= e!2383908 e!2383906)))

(declare-fun res!1561265 () Bool)

(assert (=> b!3856563 (=> (not res!1561265) (not e!2383906))))

(assert (=> b!3856563 (= res!1561265 (not ((_ is Nil!40863) lt!1339257)))))

(declare-fun b!3856565 () Bool)

(assert (=> b!3856565 (= e!2383906 (isPrefix!3419 (tail!5831 lt!1339257) (tail!5831 lt!1339257)))))

(declare-fun d!1143483 () Bool)

(declare-fun e!2383907 () Bool)

(assert (=> d!1143483 e!2383907))

(declare-fun res!1561264 () Bool)

(assert (=> d!1143483 (=> res!1561264 e!2383907)))

(declare-fun lt!1339801 () Bool)

(assert (=> d!1143483 (= res!1561264 (not lt!1339801))))

(assert (=> d!1143483 (= lt!1339801 e!2383908)))

(declare-fun res!1561262 () Bool)

(assert (=> d!1143483 (=> res!1561262 e!2383908)))

(assert (=> d!1143483 (= res!1561262 ((_ is Nil!40863) lt!1339257))))

(assert (=> d!1143483 (= (isPrefix!3419 lt!1339257 lt!1339257) lt!1339801)))

(declare-fun b!3856566 () Bool)

(assert (=> b!3856566 (= e!2383907 (>= (size!30736 lt!1339257) (size!30736 lt!1339257)))))

(assert (= (and d!1143483 (not res!1561262)) b!3856563))

(assert (= (and b!3856563 res!1561265) b!3856564))

(assert (= (and b!3856564 res!1561263) b!3856565))

(assert (= (and d!1143483 (not res!1561264)) b!3856566))

(assert (=> b!3856564 m!4412053))

(assert (=> b!3856564 m!4412053))

(assert (=> b!3856565 m!4410621))

(assert (=> b!3856565 m!4410621))

(assert (=> b!3856565 m!4410621))

(assert (=> b!3856565 m!4410621))

(declare-fun m!4412145 () Bool)

(assert (=> b!3856565 m!4412145))

(assert (=> b!3856566 m!4410555))

(assert (=> b!3856566 m!4410555))

(assert (=> d!1143007 d!1143483))

(declare-fun d!1143485 () Bool)

(assert (=> d!1143485 (isPrefix!3419 lt!1339257 lt!1339257)))

(declare-fun lt!1339804 () Unit!58530)

(declare-fun choose!22704 (List!40987 List!40987) Unit!58530)

(assert (=> d!1143485 (= lt!1339804 (choose!22704 lt!1339257 lt!1339257))))

(assert (=> d!1143485 (= (lemmaIsPrefixRefl!2180 lt!1339257 lt!1339257) lt!1339804)))

(declare-fun bs!583084 () Bool)

(assert (= bs!583084 d!1143485))

(assert (=> bs!583084 m!4410879))

(declare-fun m!4412147 () Bool)

(assert (=> bs!583084 m!4412147))

(assert (=> d!1143007 d!1143485))

(declare-fun d!1143487 () Bool)

(assert (=> d!1143487 true))

(declare-fun lt!1339807 () Bool)

(declare-fun lambda!126232 () Int)

(declare-fun forall!8294 (List!40989 Int) Bool)

(assert (=> d!1143487 (= lt!1339807 (forall!8294 rules!2768 lambda!126232))))

(declare-fun e!2383913 () Bool)

(assert (=> d!1143487 (= lt!1339807 e!2383913)))

(declare-fun res!1561271 () Bool)

(assert (=> d!1143487 (=> res!1561271 e!2383913)))

(assert (=> d!1143487 (= res!1561271 (not ((_ is Cons!40865) rules!2768)))))

(assert (=> d!1143487 (= (rulesValidInductive!2252 thiss!20629 rules!2768) lt!1339807)))

(declare-fun b!3856571 () Bool)

(declare-fun e!2383914 () Bool)

(assert (=> b!3856571 (= e!2383913 e!2383914)))

(declare-fun res!1561270 () Bool)

(assert (=> b!3856571 (=> (not res!1561270) (not e!2383914))))

(assert (=> b!3856571 (= res!1561270 (ruleValid!2272 thiss!20629 (h!46285 rules!2768)))))

(declare-fun b!3856572 () Bool)

(assert (=> b!3856572 (= e!2383914 (rulesValidInductive!2252 thiss!20629 (t!312566 rules!2768)))))

(assert (= (and d!1143487 (not res!1561271)) b!3856571))

(assert (= (and b!3856571 res!1561270) b!3856572))

(declare-fun m!4412149 () Bool)

(assert (=> d!1143487 m!4412149))

(declare-fun m!4412151 () Bool)

(assert (=> b!3856571 m!4412151))

(declare-fun m!4412153 () Bool)

(assert (=> b!3856572 m!4412153))

(assert (=> d!1143007 d!1143487))

(declare-fun d!1143489 () Bool)

(assert (=> d!1143489 (= (isEmpty!24196 (_1!23163 lt!1339364)) ((_ is Nil!40864) (_1!23163 lt!1339364)))))

(assert (=> b!3855509 d!1143489))

(assert (=> d!1142905 d!1143015))

(declare-fun b!3856593 () Bool)

(declare-fun e!2383930 () Bool)

(declare-fun e!2383933 () Bool)

(assert (=> b!3856593 (= e!2383930 e!2383933)))

(declare-fun res!1561282 () Bool)

(assert (=> b!3856593 (=> (not res!1561282) (not e!2383933))))

(declare-fun call!282474 () Bool)

(assert (=> b!3856593 (= res!1561282 call!282474)))

(declare-fun b!3856594 () Bool)

(declare-fun e!2383931 () Bool)

(declare-fun call!282475 () Bool)

(assert (=> b!3856594 (= e!2383931 call!282475)))

(declare-fun b!3856595 () Bool)

(declare-fun e!2383935 () Bool)

(assert (=> b!3856595 (= e!2383935 call!282474)))

(declare-fun bm!282468 () Bool)

(declare-fun call!282473 () Bool)

(declare-fun c!671643 () Bool)

(assert (=> bm!282468 (= call!282473 (validRegex!5108 (ite c!671643 (regOne!22963 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (regTwo!22962 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))))

(declare-fun d!1143491 () Bool)

(declare-fun res!1561285 () Bool)

(declare-fun e!2383929 () Bool)

(assert (=> d!1143491 (=> res!1561285 e!2383929)))

(assert (=> d!1143491 (= res!1561285 ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (=> d!1143491 (= (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) e!2383929)))

(declare-fun b!3856596 () Bool)

(declare-fun e!2383934 () Bool)

(declare-fun e!2383932 () Bool)

(assert (=> b!3856596 (= e!2383934 e!2383932)))

(assert (=> b!3856596 (= c!671643 ((_ is Union!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856597 () Bool)

(assert (=> b!3856597 (= e!2383933 call!282473)))

(declare-fun bm!282469 () Bool)

(declare-fun c!671642 () Bool)

(assert (=> bm!282469 (= call!282475 (validRegex!5108 (ite c!671642 (reg!11554 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (ite c!671643 (regTwo!22963 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (regOne!22962 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))))

(declare-fun b!3856598 () Bool)

(assert (=> b!3856598 (= e!2383934 e!2383931)))

(declare-fun res!1561283 () Bool)

(assert (=> b!3856598 (= res!1561283 (not (nullable!3909 (reg!11554 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))))

(assert (=> b!3856598 (=> (not res!1561283) (not e!2383931))))

(declare-fun b!3856599 () Bool)

(declare-fun res!1561286 () Bool)

(assert (=> b!3856599 (=> (not res!1561286) (not e!2383935))))

(assert (=> b!3856599 (= res!1561286 call!282473)))

(assert (=> b!3856599 (= e!2383932 e!2383935)))

(declare-fun b!3856600 () Bool)

(assert (=> b!3856600 (= e!2383929 e!2383934)))

(assert (=> b!3856600 (= c!671642 ((_ is Star!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856601 () Bool)

(declare-fun res!1561284 () Bool)

(assert (=> b!3856601 (=> res!1561284 e!2383930)))

(assert (=> b!3856601 (= res!1561284 (not ((_ is Concat!17776) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(assert (=> b!3856601 (= e!2383932 e!2383930)))

(declare-fun bm!282470 () Bool)

(assert (=> bm!282470 (= call!282474 call!282475)))

(assert (= (and d!1143491 (not res!1561285)) b!3856600))

(assert (= (and b!3856600 c!671642) b!3856598))

(assert (= (and b!3856600 (not c!671642)) b!3856596))

(assert (= (and b!3856598 res!1561283) b!3856594))

(assert (= (and b!3856596 c!671643) b!3856599))

(assert (= (and b!3856596 (not c!671643)) b!3856601))

(assert (= (and b!3856599 res!1561286) b!3856595))

(assert (= (and b!3856601 (not res!1561284)) b!3856593))

(assert (= (and b!3856593 res!1561282) b!3856597))

(assert (= (or b!3856595 b!3856593) bm!282470))

(assert (= (or b!3856599 b!3856597) bm!282468))

(assert (= (or b!3856594 bm!282470) bm!282469))

(declare-fun m!4412155 () Bool)

(assert (=> bm!282468 m!4412155))

(declare-fun m!4412157 () Bool)

(assert (=> bm!282469 m!4412157))

(declare-fun m!4412159 () Bool)

(assert (=> b!3856598 m!4412159))

(assert (=> d!1142969 d!1143491))

(assert (=> b!3855553 d!1143383))

(assert (=> b!3855553 d!1143385))

(assert (=> b!3855553 d!1143381))

(assert (=> b!3855463 d!1143437))

(declare-fun d!1143493 () Bool)

(assert (=> d!1143493 (= (head!8118 lt!1339270) (h!46283 lt!1339270))))

(assert (=> b!3855463 d!1143493))

(declare-fun d!1143495 () Bool)

(declare-fun lt!1339808 () Int)

(assert (=> d!1143495 (>= lt!1339808 0)))

(declare-fun e!2383936 () Int)

(assert (=> d!1143495 (= lt!1339808 e!2383936)))

(declare-fun c!671644 () Bool)

(assert (=> d!1143495 (= c!671644 ((_ is Nil!40863) (originalCharacters!6920 (h!46284 prefixTokens!80))))))

(assert (=> d!1143495 (= (size!30736 (originalCharacters!6920 (h!46284 prefixTokens!80))) lt!1339808)))

(declare-fun b!3856602 () Bool)

(assert (=> b!3856602 (= e!2383936 0)))

(declare-fun b!3856603 () Bool)

(assert (=> b!3856603 (= e!2383936 (+ 1 (size!30736 (t!312564 (originalCharacters!6920 (h!46284 prefixTokens!80))))))))

(assert (= (and d!1143495 c!671644) b!3856602))

(assert (= (and d!1143495 (not c!671644)) b!3856603))

(declare-fun m!4412161 () Bool)

(assert (=> b!3856603 m!4412161))

(assert (=> b!3855801 d!1143495))

(declare-fun b!3856604 () Bool)

(declare-fun e!2383939 () Bool)

(declare-fun lt!1339811 () tuple2!40058)

(assert (=> b!3856604 (= e!2383939 (= (_2!23163 lt!1339811) (_2!23164 (v!39033 lt!1339393))))))

(declare-fun b!3856605 () Bool)

(declare-fun e!2383938 () Bool)

(assert (=> b!3856605 (= e!2383939 e!2383938)))

(declare-fun res!1561287 () Bool)

(assert (=> b!3856605 (= res!1561287 (< (size!30736 (_2!23163 lt!1339811)) (size!30736 (_2!23164 (v!39033 lt!1339393)))))))

(assert (=> b!3856605 (=> (not res!1561287) (not e!2383938))))

(declare-fun d!1143497 () Bool)

(assert (=> d!1143497 e!2383939))

(declare-fun c!671645 () Bool)

(assert (=> d!1143497 (= c!671645 (> (size!30738 (_1!23163 lt!1339811)) 0))))

(declare-fun e!2383937 () tuple2!40058)

(assert (=> d!1143497 (= lt!1339811 e!2383937)))

(declare-fun c!671646 () Bool)

(declare-fun lt!1339810 () Option!8738)

(assert (=> d!1143497 (= c!671646 ((_ is Some!8737) lt!1339810))))

(assert (=> d!1143497 (= lt!1339810 (maxPrefix!3213 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339393))))))

(assert (=> d!1143497 (= (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339393))) lt!1339811)))

(declare-fun b!3856606 () Bool)

(assert (=> b!3856606 (= e!2383938 (not (isEmpty!24196 (_1!23163 lt!1339811))))))

(declare-fun b!3856607 () Bool)

(assert (=> b!3856607 (= e!2383937 (tuple2!40059 Nil!40864 (_2!23164 (v!39033 lt!1339393))))))

(declare-fun b!3856608 () Bool)

(declare-fun lt!1339809 () tuple2!40058)

(assert (=> b!3856608 (= e!2383937 (tuple2!40059 (Cons!40864 (_1!23164 (v!39033 lt!1339810)) (_1!23163 lt!1339809)) (_2!23163 lt!1339809)))))

(assert (=> b!3856608 (= lt!1339809 (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339810))))))

(assert (= (and d!1143497 c!671646) b!3856608))

(assert (= (and d!1143497 (not c!671646)) b!3856607))

(assert (= (and d!1143497 c!671645) b!3856605))

(assert (= (and d!1143497 (not c!671645)) b!3856604))

(assert (= (and b!3856605 res!1561287) b!3856606))

(declare-fun m!4412163 () Bool)

(assert (=> b!3856605 m!4412163))

(declare-fun m!4412165 () Bool)

(assert (=> b!3856605 m!4412165))

(declare-fun m!4412167 () Bool)

(assert (=> d!1143497 m!4412167))

(declare-fun m!4412169 () Bool)

(assert (=> d!1143497 m!4412169))

(declare-fun m!4412171 () Bool)

(assert (=> b!3856606 m!4412171))

(declare-fun m!4412173 () Bool)

(assert (=> b!3856608 m!4412173))

(assert (=> b!3855575 d!1143497))

(declare-fun d!1143499 () Bool)

(assert (=> d!1143499 (= (_2!23164 (v!39033 lt!1339271)) lt!1339262)))

(assert (=> d!1143499 true))

(declare-fun _$63!945 () Unit!58530)

(assert (=> d!1143499 (= (choose!22696 lt!1339269 (_2!23164 (v!39033 lt!1339271)) lt!1339269 lt!1339262 lt!1339257) _$63!945)))

(assert (=> d!1142939 d!1143499))

(declare-fun b!3856610 () Bool)

(declare-fun res!1561289 () Bool)

(declare-fun e!2383940 () Bool)

(assert (=> b!3856610 (=> (not res!1561289) (not e!2383940))))

(assert (=> b!3856610 (= res!1561289 (= (head!8118 lt!1339269) (head!8118 lt!1339257)))))

(declare-fun b!3856609 () Bool)

(declare-fun e!2383942 () Bool)

(assert (=> b!3856609 (= e!2383942 e!2383940)))

(declare-fun res!1561291 () Bool)

(assert (=> b!3856609 (=> (not res!1561291) (not e!2383940))))

(assert (=> b!3856609 (= res!1561291 (not ((_ is Nil!40863) lt!1339257)))))

(declare-fun b!3856611 () Bool)

(assert (=> b!3856611 (= e!2383940 (isPrefix!3419 (tail!5831 lt!1339269) (tail!5831 lt!1339257)))))

(declare-fun d!1143501 () Bool)

(declare-fun e!2383941 () Bool)

(assert (=> d!1143501 e!2383941))

(declare-fun res!1561290 () Bool)

(assert (=> d!1143501 (=> res!1561290 e!2383941)))

(declare-fun lt!1339812 () Bool)

(assert (=> d!1143501 (= res!1561290 (not lt!1339812))))

(assert (=> d!1143501 (= lt!1339812 e!2383942)))

(declare-fun res!1561288 () Bool)

(assert (=> d!1143501 (=> res!1561288 e!2383942)))

(assert (=> d!1143501 (= res!1561288 ((_ is Nil!40863) lt!1339269))))

(assert (=> d!1143501 (= (isPrefix!3419 lt!1339269 lt!1339257) lt!1339812)))

(declare-fun b!3856612 () Bool)

(assert (=> b!3856612 (= e!2383941 (>= (size!30736 lt!1339257) (size!30736 lt!1339269)))))

(assert (= (and d!1143501 (not res!1561288)) b!3856609))

(assert (= (and b!3856609 res!1561291) b!3856610))

(assert (= (and b!3856610 res!1561289) b!3856611))

(assert (= (and d!1143501 (not res!1561290)) b!3856612))

(assert (=> b!3856610 m!4410741))

(assert (=> b!3856610 m!4412053))

(assert (=> b!3856611 m!4410745))

(assert (=> b!3856611 m!4410621))

(assert (=> b!3856611 m!4410745))

(assert (=> b!3856611 m!4410621))

(declare-fun m!4412175 () Bool)

(assert (=> b!3856611 m!4412175))

(assert (=> b!3856612 m!4410555))

(assert (=> b!3856612 m!4410503))

(assert (=> d!1142939 d!1143501))

(declare-fun d!1143503 () Bool)

(assert (=> d!1143503 (= (isEmpty!24196 (_1!23163 lt!1339339)) ((_ is Nil!40864) (_1!23163 lt!1339339)))))

(assert (=> b!3855451 d!1143503))

(declare-fun bs!583085 () Bool)

(declare-fun d!1143505 () Bool)

(assert (= bs!583085 (and d!1143505 d!1143487)))

(declare-fun lambda!126235 () Int)

(assert (=> bs!583085 (= lambda!126235 lambda!126232)))

(assert (=> d!1143505 true))

(declare-fun lt!1339815 () Bool)

(assert (=> d!1143505 (= lt!1339815 (rulesValidInductive!2252 thiss!20629 rules!2768))))

(assert (=> d!1143505 (= lt!1339815 (forall!8294 rules!2768 lambda!126235))))

(assert (=> d!1143505 (= (rulesValid!2444 thiss!20629 rules!2768) lt!1339815)))

(declare-fun bs!583086 () Bool)

(assert (= bs!583086 d!1143505))

(assert (=> bs!583086 m!4410883))

(declare-fun m!4412177 () Bool)

(assert (=> bs!583086 m!4412177))

(assert (=> d!1143081 d!1143505))

(declare-fun d!1143507 () Bool)

(declare-fun lt!1339816 () Int)

(assert (=> d!1143507 (>= lt!1339816 0)))

(declare-fun e!2383943 () Int)

(assert (=> d!1143507 (= lt!1339816 e!2383943)))

(declare-fun c!671647 () Bool)

(assert (=> d!1143507 (= c!671647 ((_ is Nil!40863) (t!312564 lt!1339269)))))

(assert (=> d!1143507 (= (size!30736 (t!312564 lt!1339269)) lt!1339816)))

(declare-fun b!3856613 () Bool)

(assert (=> b!3856613 (= e!2383943 0)))

(declare-fun b!3856614 () Bool)

(assert (=> b!3856614 (= e!2383943 (+ 1 (size!30736 (t!312564 (t!312564 lt!1339269)))))))

(assert (= (and d!1143507 c!671647) b!3856613))

(assert (= (and d!1143507 (not c!671647)) b!3856614))

(declare-fun m!4412179 () Bool)

(assert (=> b!3856614 m!4412179))

(assert (=> b!3855311 d!1143507))

(declare-fun d!1143509 () Bool)

(assert (=> d!1143509 (= (isEmpty!24195 (tail!5831 lt!1339269)) ((_ is Nil!40863) (tail!5831 lt!1339269)))))

(assert (=> b!3855639 d!1143509))

(assert (=> b!3855639 d!1143429))

(declare-fun b!3856615 () Bool)

(declare-fun e!2383949 () Bool)

(declare-fun e!2383948 () Bool)

(assert (=> b!3856615 (= e!2383949 e!2383948)))

(declare-fun res!1561297 () Bool)

(assert (=> b!3856615 (=> res!1561297 e!2383948)))

(declare-fun call!282476 () Bool)

(assert (=> b!3856615 (= res!1561297 call!282476)))

(declare-fun b!3856616 () Bool)

(declare-fun e!2383946 () Bool)

(assert (=> b!3856616 (= e!2383946 (matchR!5372 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257))))) (tail!5831 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257))))))))

(declare-fun b!3856617 () Bool)

(declare-fun e!2383944 () Bool)

(assert (=> b!3856617 (= e!2383944 e!2383949)))

(declare-fun res!1561298 () Bool)

(assert (=> b!3856617 (=> (not res!1561298) (not e!2383949))))

(declare-fun lt!1339817 () Bool)

(assert (=> b!3856617 (= res!1561298 (not lt!1339817))))

(declare-fun b!3856618 () Bool)

(declare-fun res!1561294 () Bool)

(declare-fun e!2383947 () Bool)

(assert (=> b!3856618 (=> (not res!1561294) (not e!2383947))))

(assert (=> b!3856618 (= res!1561294 (not call!282476))))

(declare-fun b!3856620 () Bool)

(assert (=> b!3856620 (= e!2383948 (not (= (head!8118 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))) (c!671348 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))))

(declare-fun b!3856621 () Bool)

(declare-fun e!2383945 () Bool)

(assert (=> b!3856621 (= e!2383945 (= lt!1339817 call!282476))))

(declare-fun b!3856622 () Bool)

(assert (=> b!3856622 (= e!2383947 (= (head!8118 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))) (c!671348 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(declare-fun b!3856623 () Bool)

(declare-fun res!1561293 () Bool)

(assert (=> b!3856623 (=> (not res!1561293) (not e!2383947))))

(assert (=> b!3856623 (= res!1561293 (isEmpty!24195 (tail!5831 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257))))))))

(declare-fun b!3856624 () Bool)

(declare-fun e!2383950 () Bool)

(assert (=> b!3856624 (= e!2383945 e!2383950)))

(declare-fun c!671650 () Bool)

(assert (=> b!3856624 (= c!671650 ((_ is EmptyLang!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856619 () Bool)

(declare-fun res!1561292 () Bool)

(assert (=> b!3856619 (=> res!1561292 e!2383944)))

(assert (=> b!3856619 (= res!1561292 e!2383947)))

(declare-fun res!1561296 () Bool)

(assert (=> b!3856619 (=> (not res!1561296) (not e!2383947))))

(assert (=> b!3856619 (= res!1561296 lt!1339817)))

(declare-fun d!1143511 () Bool)

(assert (=> d!1143511 e!2383945))

(declare-fun c!671649 () Bool)

(assert (=> d!1143511 (= c!671649 ((_ is EmptyExpr!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (=> d!1143511 (= lt!1339817 e!2383946)))

(declare-fun c!671648 () Bool)

(assert (=> d!1143511 (= c!671648 (isEmpty!24195 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(assert (=> d!1143511 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143511 (= (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))) lt!1339817)))

(declare-fun b!3856625 () Bool)

(assert (=> b!3856625 (= e!2383950 (not lt!1339817))))

(declare-fun b!3856626 () Bool)

(declare-fun res!1561299 () Bool)

(assert (=> b!3856626 (=> res!1561299 e!2383948)))

(assert (=> b!3856626 (= res!1561299 (not (isEmpty!24195 (tail!5831 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))))

(declare-fun b!3856627 () Bool)

(declare-fun res!1561295 () Bool)

(assert (=> b!3856627 (=> res!1561295 e!2383944)))

(assert (=> b!3856627 (= res!1561295 (not ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(assert (=> b!3856627 (= e!2383950 e!2383944)))

(declare-fun bm!282471 () Bool)

(assert (=> bm!282471 (= call!282476 (isEmpty!24195 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(declare-fun b!3856628 () Bool)

(assert (=> b!3856628 (= e!2383946 (nullable!3909 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (= (and d!1143511 c!671648) b!3856628))

(assert (= (and d!1143511 (not c!671648)) b!3856616))

(assert (= (and d!1143511 c!671649) b!3856621))

(assert (= (and d!1143511 (not c!671649)) b!3856624))

(assert (= (and b!3856624 c!671650) b!3856625))

(assert (= (and b!3856624 (not c!671650)) b!3856627))

(assert (= (and b!3856627 (not res!1561295)) b!3856619))

(assert (= (and b!3856619 res!1561296) b!3856618))

(assert (= (and b!3856618 res!1561294) b!3856623))

(assert (= (and b!3856623 res!1561293) b!3856622))

(assert (= (and b!3856619 (not res!1561292)) b!3856617))

(assert (= (and b!3856617 res!1561298) b!3856615))

(assert (= (and b!3856615 (not res!1561297)) b!3856626))

(assert (= (and b!3856626 (not res!1561299)) b!3856620))

(assert (= (or b!3856621 b!3856615 b!3856618) bm!282471))

(declare-fun m!4412181 () Bool)

(assert (=> b!3856626 m!4412181))

(assert (=> b!3856626 m!4412181))

(declare-fun m!4412183 () Bool)

(assert (=> b!3856626 m!4412183))

(declare-fun m!4412185 () Bool)

(assert (=> b!3856616 m!4412185))

(assert (=> b!3856616 m!4412185))

(declare-fun m!4412187 () Bool)

(assert (=> b!3856616 m!4412187))

(assert (=> b!3856616 m!4412181))

(assert (=> b!3856616 m!4412187))

(assert (=> b!3856616 m!4412181))

(declare-fun m!4412189 () Bool)

(assert (=> b!3856616 m!4412189))

(assert (=> d!1143511 m!4411101))

(assert (=> d!1143511 m!4410705))

(assert (=> b!3856628 m!4410707))

(assert (=> b!3856623 m!4412181))

(assert (=> b!3856623 m!4412181))

(assert (=> b!3856623 m!4412183))

(assert (=> b!3856622 m!4412185))

(assert (=> b!3856620 m!4412185))

(assert (=> bm!282471 m!4411101))

(assert (=> b!3855793 d!1143511))

(assert (=> b!3855793 d!1143445))

(assert (=> b!3855793 d!1143447))

(assert (=> b!3855793 d!1142989))

(declare-fun d!1143513 () Bool)

(declare-fun lt!1339818 () Int)

(assert (=> d!1143513 (>= lt!1339818 0)))

(declare-fun e!2383951 () Int)

(assert (=> d!1143513 (= lt!1339818 e!2383951)))

(declare-fun c!671651 () Bool)

(assert (=> d!1143513 (= c!671651 ((_ is Nil!40864) (_1!23163 lt!1339364)))))

(assert (=> d!1143513 (= (size!30738 (_1!23163 lt!1339364)) lt!1339818)))

(declare-fun b!3856629 () Bool)

(assert (=> b!3856629 (= e!2383951 0)))

(declare-fun b!3856630 () Bool)

(assert (=> b!3856630 (= e!2383951 (+ 1 (size!30738 (t!312565 (_1!23163 lt!1339364)))))))

(assert (= (and d!1143513 c!671651) b!3856629))

(assert (= (and d!1143513 (not c!671651)) b!3856630))

(declare-fun m!4412191 () Bool)

(assert (=> b!3856630 m!4412191))

(assert (=> d!1143001 d!1143513))

(assert (=> d!1143001 d!1143007))

(declare-fun d!1143515 () Bool)

(declare-fun charsToBigInt!1 (List!40986) Int)

(assert (=> d!1143515 (= (inv!17 (value!200754 (h!46284 suffixTokens!72))) (= (charsToBigInt!1 (text!46298 (value!200754 (h!46284 suffixTokens!72)))) (value!200746 (value!200754 (h!46284 suffixTokens!72)))))))

(declare-fun bs!583087 () Bool)

(assert (= bs!583087 d!1143515))

(declare-fun m!4412193 () Bool)

(assert (=> bs!583087 m!4412193))

(assert (=> b!3855281 d!1143515))

(declare-fun d!1143517 () Bool)

(declare-fun charsToInt!0 (List!40986) (_ BitVec 32))

(assert (=> d!1143517 (= (inv!16 (value!200754 (h!46284 prefixTokens!80))) (= (charsToInt!0 (text!46297 (value!200754 (h!46284 prefixTokens!80)))) (value!200745 (value!200754 (h!46284 prefixTokens!80)))))))

(declare-fun bs!583088 () Bool)

(assert (= bs!583088 d!1143517))

(declare-fun m!4412195 () Bool)

(assert (=> bs!583088 m!4412195))

(assert (=> b!3855567 d!1143517))

(assert (=> b!3855789 d!1143419))

(declare-fun b!3856631 () Bool)

(declare-fun res!1561303 () Bool)

(declare-fun e!2383953 () Bool)

(assert (=> b!3856631 (=> (not res!1561303) (not e!2383953))))

(declare-fun lt!1339823 () Option!8738)

(assert (=> b!3856631 (= res!1561303 (= (++!10397 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339823)))) (_2!23164 (get!13520 lt!1339823))) lt!1339257))))

(declare-fun b!3856632 () Bool)

(assert (=> b!3856632 (= e!2383953 (= (size!30735 (_1!23164 (get!13520 lt!1339823))) (size!30736 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339823))))))))

(declare-fun b!3856633 () Bool)

(declare-fun res!1561304 () Bool)

(assert (=> b!3856633 (=> (not res!1561304) (not e!2383953))))

(assert (=> b!3856633 (= res!1561304 (= (rule!9180 (_1!23164 (get!13520 lt!1339823))) (h!46285 rules!2768)))))

(declare-fun b!3856634 () Bool)

(declare-fun e!2383952 () Option!8738)

(declare-fun lt!1339820 () tuple2!40064)

(assert (=> b!3856634 (= e!2383952 (Some!8737 (tuple2!40061 (Token!11779 (apply!9563 (transformation!6320 (h!46285 rules!2768)) (seqFromList!4591 (_1!23166 lt!1339820))) (h!46285 rules!2768) (size!30740 (seqFromList!4591 (_1!23166 lt!1339820))) (_1!23166 lt!1339820)) (_2!23166 lt!1339820))))))

(declare-fun lt!1339822 () Unit!58530)

(assert (=> b!3856634 (= lt!1339822 (longestMatchIsAcceptedByMatchOrIsEmpty!1149 (regex!6320 (h!46285 rules!2768)) lt!1339257))))

(declare-fun res!1561305 () Bool)

(assert (=> b!3856634 (= res!1561305 (isEmpty!24195 (_1!23166 (findLongestMatchInner!1176 (regex!6320 (h!46285 rules!2768)) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(declare-fun e!2383955 () Bool)

(assert (=> b!3856634 (=> res!1561305 e!2383955)))

(assert (=> b!3856634 e!2383955))

(declare-fun lt!1339821 () Unit!58530)

(assert (=> b!3856634 (= lt!1339821 lt!1339822)))

(declare-fun lt!1339819 () Unit!58530)

(assert (=> b!3856634 (= lt!1339819 (lemmaSemiInverse!1682 (transformation!6320 (h!46285 rules!2768)) (seqFromList!4591 (_1!23166 lt!1339820))))))

(declare-fun b!3856635 () Bool)

(declare-fun res!1561300 () Bool)

(assert (=> b!3856635 (=> (not res!1561300) (not e!2383953))))

(assert (=> b!3856635 (= res!1561300 (= (value!200754 (_1!23164 (get!13520 lt!1339823))) (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339823)))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339823)))))))))

(declare-fun b!3856637 () Bool)

(assert (=> b!3856637 (= e!2383955 (matchR!5372 (regex!6320 (h!46285 rules!2768)) (_1!23166 (findLongestMatchInner!1176 (regex!6320 (h!46285 rules!2768)) Nil!40863 (size!30736 Nil!40863) lt!1339257 lt!1339257 (size!30736 lt!1339257)))))))

(declare-fun b!3856638 () Bool)

(declare-fun res!1561302 () Bool)

(assert (=> b!3856638 (=> (not res!1561302) (not e!2383953))))

(assert (=> b!3856638 (= res!1561302 (< (size!30736 (_2!23164 (get!13520 lt!1339823))) (size!30736 lt!1339257)))))

(declare-fun b!3856639 () Bool)

(declare-fun e!2383954 () Bool)

(assert (=> b!3856639 (= e!2383954 e!2383953)))

(declare-fun res!1561301 () Bool)

(assert (=> b!3856639 (=> (not res!1561301) (not e!2383953))))

(assert (=> b!3856639 (= res!1561301 (matchR!5372 (regex!6320 (h!46285 rules!2768)) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339823))))))))

(declare-fun b!3856636 () Bool)

(assert (=> b!3856636 (= e!2383952 None!8737)))

(declare-fun d!1143519 () Bool)

(assert (=> d!1143519 e!2383954))

(declare-fun res!1561306 () Bool)

(assert (=> d!1143519 (=> res!1561306 e!2383954)))

(assert (=> d!1143519 (= res!1561306 (isEmpty!24198 lt!1339823))))

(assert (=> d!1143519 (= lt!1339823 e!2383952)))

(declare-fun c!671652 () Bool)

(assert (=> d!1143519 (= c!671652 (isEmpty!24195 (_1!23166 lt!1339820)))))

(assert (=> d!1143519 (= lt!1339820 (findLongestMatch!1089 (regex!6320 (h!46285 rules!2768)) lt!1339257))))

(assert (=> d!1143519 (ruleValid!2272 thiss!20629 (h!46285 rules!2768))))

(assert (=> d!1143519 (= (maxPrefixOneRule!2295 thiss!20629 (h!46285 rules!2768) lt!1339257) lt!1339823)))

(assert (= (and d!1143519 c!671652) b!3856636))

(assert (= (and d!1143519 (not c!671652)) b!3856634))

(assert (= (and b!3856634 (not res!1561305)) b!3856637))

(assert (= (and d!1143519 (not res!1561306)) b!3856639))

(assert (= (and b!3856639 res!1561301) b!3856631))

(assert (= (and b!3856631 res!1561303) b!3856638))

(assert (= (and b!3856638 res!1561302) b!3856633))

(assert (= (and b!3856633 res!1561304) b!3856635))

(assert (= (and b!3856635 res!1561300) b!3856632))

(declare-fun m!4412197 () Bool)

(assert (=> b!3856631 m!4412197))

(declare-fun m!4412199 () Bool)

(assert (=> b!3856631 m!4412199))

(assert (=> b!3856631 m!4412199))

(declare-fun m!4412201 () Bool)

(assert (=> b!3856631 m!4412201))

(assert (=> b!3856631 m!4412201))

(declare-fun m!4412203 () Bool)

(assert (=> b!3856631 m!4412203))

(assert (=> b!3856635 m!4412197))

(declare-fun m!4412205 () Bool)

(assert (=> b!3856635 m!4412205))

(assert (=> b!3856635 m!4412205))

(declare-fun m!4412207 () Bool)

(assert (=> b!3856635 m!4412207))

(assert (=> b!3856637 m!4411087))

(assert (=> b!3856637 m!4410555))

(assert (=> b!3856637 m!4411087))

(assert (=> b!3856637 m!4410555))

(declare-fun m!4412209 () Bool)

(assert (=> b!3856637 m!4412209))

(declare-fun m!4412211 () Bool)

(assert (=> b!3856637 m!4412211))

(assert (=> b!3856633 m!4412197))

(assert (=> b!3856639 m!4412197))

(assert (=> b!3856639 m!4412199))

(assert (=> b!3856639 m!4412199))

(assert (=> b!3856639 m!4412201))

(assert (=> b!3856639 m!4412201))

(declare-fun m!4412213 () Bool)

(assert (=> b!3856639 m!4412213))

(assert (=> b!3856632 m!4412197))

(declare-fun m!4412215 () Bool)

(assert (=> b!3856632 m!4412215))

(declare-fun m!4412217 () Bool)

(assert (=> b!3856634 m!4412217))

(declare-fun m!4412219 () Bool)

(assert (=> b!3856634 m!4412219))

(declare-fun m!4412221 () Bool)

(assert (=> b!3856634 m!4412221))

(assert (=> b!3856634 m!4412217))

(declare-fun m!4412223 () Bool)

(assert (=> b!3856634 m!4412223))

(assert (=> b!3856634 m!4412217))

(declare-fun m!4412225 () Bool)

(assert (=> b!3856634 m!4412225))

(assert (=> b!3856634 m!4411087))

(assert (=> b!3856634 m!4410555))

(assert (=> b!3856634 m!4411087))

(assert (=> b!3856634 m!4410555))

(assert (=> b!3856634 m!4412209))

(assert (=> b!3856634 m!4412217))

(declare-fun m!4412227 () Bool)

(assert (=> b!3856634 m!4412227))

(assert (=> b!3856638 m!4412197))

(declare-fun m!4412229 () Bool)

(assert (=> b!3856638 m!4412229))

(assert (=> b!3856638 m!4410555))

(declare-fun m!4412231 () Bool)

(assert (=> d!1143519 m!4412231))

(declare-fun m!4412233 () Bool)

(assert (=> d!1143519 m!4412233))

(declare-fun m!4412235 () Bool)

(assert (=> d!1143519 m!4412235))

(assert (=> d!1143519 m!4412151))

(assert (=> bm!282377 d!1143519))

(declare-fun d!1143521 () Bool)

(declare-fun res!1561307 () Bool)

(declare-fun e!2383956 () Bool)

(assert (=> d!1143521 (=> (not res!1561307) (not e!2383956))))

(assert (=> d!1143521 (= res!1561307 (not (isEmpty!24195 (originalCharacters!6920 (h!46284 (t!312565 prefixTokens!80))))))))

(assert (=> d!1143521 (= (inv!55019 (h!46284 (t!312565 prefixTokens!80))) e!2383956)))

(declare-fun b!3856640 () Bool)

(declare-fun res!1561308 () Bool)

(assert (=> b!3856640 (=> (not res!1561308) (not e!2383956))))

(assert (=> b!3856640 (= res!1561308 (= (originalCharacters!6920 (h!46284 (t!312565 prefixTokens!80))) (list!15210 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (value!200754 (h!46284 (t!312565 prefixTokens!80)))))))))

(declare-fun b!3856641 () Bool)

(assert (=> b!3856641 (= e!2383956 (= (size!30735 (h!46284 (t!312565 prefixTokens!80))) (size!30736 (originalCharacters!6920 (h!46284 (t!312565 prefixTokens!80))))))))

(assert (= (and d!1143521 res!1561307) b!3856640))

(assert (= (and b!3856640 res!1561308) b!3856641))

(declare-fun b_lambda!112753 () Bool)

(assert (=> (not b_lambda!112753) (not b!3856640)))

(declare-fun t!312895 () Bool)

(declare-fun tb!223205 () Bool)

(assert (=> (and b!3855256 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312895) tb!223205))

(declare-fun b!3856642 () Bool)

(declare-fun e!2383957 () Bool)

(declare-fun tp!1168919 () Bool)

(assert (=> b!3856642 (= e!2383957 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (value!200754 (h!46284 (t!312565 prefixTokens!80)))))) tp!1168919))))

(declare-fun result!271844 () Bool)

(assert (=> tb!223205 (= result!271844 (and (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (value!200754 (h!46284 (t!312565 prefixTokens!80))))) e!2383957))))

(assert (= tb!223205 b!3856642))

(declare-fun m!4412237 () Bool)

(assert (=> b!3856642 m!4412237))

(declare-fun m!4412239 () Bool)

(assert (=> tb!223205 m!4412239))

(assert (=> b!3856640 t!312895))

(declare-fun b_and!288519 () Bool)

(assert (= b_and!288493 (and (=> t!312895 result!271844) b_and!288519)))

(declare-fun t!312897 () Bool)

(declare-fun tb!223207 () Bool)

(assert (=> (and b!3855826 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312897) tb!223207))

(declare-fun result!271846 () Bool)

(assert (= result!271846 result!271844))

(assert (=> b!3856640 t!312897))

(declare-fun b_and!288521 () Bool)

(assert (= b_and!288491 (and (=> t!312897 result!271846) b_and!288521)))

(declare-fun tb!223209 () Bool)

(declare-fun t!312899 () Bool)

(assert (=> (and b!3855853 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312899) tb!223209))

(declare-fun result!271848 () Bool)

(assert (= result!271848 result!271844))

(assert (=> b!3856640 t!312899))

(declare-fun b_and!288523 () Bool)

(assert (= b_and!288483 (and (=> t!312899 result!271848) b_and!288523)))

(declare-fun tb!223211 () Bool)

(declare-fun t!312901 () Bool)

(assert (=> (and b!3855241 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312901) tb!223211))

(declare-fun result!271850 () Bool)

(assert (= result!271850 result!271844))

(assert (=> b!3856640 t!312901))

(declare-fun b_and!288525 () Bool)

(assert (= b_and!288487 (and (=> t!312901 result!271850) b_and!288525)))

(declare-fun t!312903 () Bool)

(declare-fun tb!223213 () Bool)

(assert (=> (and b!3855259 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312903) tb!223213))

(declare-fun result!271852 () Bool)

(assert (= result!271852 result!271844))

(assert (=> b!3856640 t!312903))

(declare-fun b_and!288527 () Bool)

(assert (= b_and!288489 (and (=> t!312903 result!271852) b_and!288527)))

(declare-fun t!312905 () Bool)

(declare-fun tb!223215 () Bool)

(assert (=> (and b!3855865 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312905) tb!223215))

(declare-fun result!271854 () Bool)

(assert (= result!271854 result!271844))

(assert (=> b!3856640 t!312905))

(declare-fun b_and!288529 () Bool)

(assert (= b_and!288485 (and (=> t!312905 result!271854) b_and!288529)))

(declare-fun m!4412241 () Bool)

(assert (=> d!1143521 m!4412241))

(declare-fun m!4412243 () Bool)

(assert (=> b!3856640 m!4412243))

(assert (=> b!3856640 m!4412243))

(declare-fun m!4412245 () Bool)

(assert (=> b!3856640 m!4412245))

(declare-fun m!4412247 () Bool)

(assert (=> b!3856641 m!4412247))

(assert (=> b!3855862 d!1143521))

(declare-fun d!1143523 () Bool)

(assert (=> d!1143523 (= (isEmpty!24195 (originalCharacters!6920 (h!46284 suffixTokens!72))) ((_ is Nil!40863) (originalCharacters!6920 (h!46284 suffixTokens!72))))))

(assert (=> d!1142991 d!1143523))

(declare-fun b!3856643 () Bool)

(declare-fun e!2383958 () List!40987)

(assert (=> b!3856643 (= e!2383958 (_2!23164 (get!13520 lt!1339441)))))

(declare-fun b!3856645 () Bool)

(declare-fun res!1561309 () Bool)

(declare-fun e!2383959 () Bool)

(assert (=> b!3856645 (=> (not res!1561309) (not e!2383959))))

(declare-fun lt!1339824 () List!40987)

(assert (=> b!3856645 (= res!1561309 (= (size!30736 lt!1339824) (+ (size!30736 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))) (size!30736 (_2!23164 (get!13520 lt!1339441))))))))

(declare-fun b!3856646 () Bool)

(assert (=> b!3856646 (= e!2383959 (or (not (= (_2!23164 (get!13520 lt!1339441)) Nil!40863)) (= lt!1339824 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441)))))))))

(declare-fun b!3856644 () Bool)

(assert (=> b!3856644 (= e!2383958 (Cons!40863 (h!46283 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))) (++!10397 (t!312564 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))) (_2!23164 (get!13520 lt!1339441)))))))

(declare-fun d!1143525 () Bool)

(assert (=> d!1143525 e!2383959))

(declare-fun res!1561310 () Bool)

(assert (=> d!1143525 (=> (not res!1561310) (not e!2383959))))

(assert (=> d!1143525 (= res!1561310 (= (content!6085 lt!1339824) ((_ map or) (content!6085 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))) (content!6085 (_2!23164 (get!13520 lt!1339441))))))))

(assert (=> d!1143525 (= lt!1339824 e!2383958)))

(declare-fun c!671653 () Bool)

(assert (=> d!1143525 (= c!671653 ((_ is Nil!40863) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))))))

(assert (=> d!1143525 (= (++!10397 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441)))) (_2!23164 (get!13520 lt!1339441))) lt!1339824)))

(assert (= (and d!1143525 c!671653) b!3856643))

(assert (= (and d!1143525 (not c!671653)) b!3856644))

(assert (= (and d!1143525 res!1561310) b!3856645))

(assert (= (and b!3856645 res!1561309) b!3856646))

(declare-fun m!4412249 () Bool)

(assert (=> b!3856645 m!4412249))

(assert (=> b!3856645 m!4411079))

(declare-fun m!4412251 () Bool)

(assert (=> b!3856645 m!4412251))

(assert (=> b!3856645 m!4411109))

(declare-fun m!4412253 () Bool)

(assert (=> b!3856644 m!4412253))

(declare-fun m!4412255 () Bool)

(assert (=> d!1143525 m!4412255))

(assert (=> d!1143525 m!4411079))

(declare-fun m!4412257 () Bool)

(assert (=> d!1143525 m!4412257))

(declare-fun m!4412259 () Bool)

(assert (=> d!1143525 m!4412259))

(assert (=> b!3855787 d!1143525))

(declare-fun d!1143527 () Bool)

(assert (=> d!1143527 (= (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441)))) (list!15212 (c!671349 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))))))

(declare-fun bs!583089 () Bool)

(assert (= bs!583089 d!1143527))

(declare-fun m!4412261 () Bool)

(assert (=> bs!583089 m!4412261))

(assert (=> b!3855787 d!1143527))

(declare-fun d!1143529 () Bool)

(declare-fun lt!1339825 () BalanceConc!24656)

(assert (=> d!1143529 (= (list!15210 lt!1339825) (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441))))))

(assert (=> d!1143529 (= lt!1339825 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441))))) (value!200754 (_1!23164 (get!13520 lt!1339441)))))))

(assert (=> d!1143529 (= (charsOf!4148 (_1!23164 (get!13520 lt!1339441))) lt!1339825)))

(declare-fun b_lambda!112755 () Bool)

(assert (=> (not b_lambda!112755) (not d!1143529)))

(declare-fun t!312907 () Bool)

(declare-fun tb!223217 () Bool)

(assert (=> (and b!3855853 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312907) tb!223217))

(declare-fun b!3856647 () Bool)

(declare-fun e!2383960 () Bool)

(declare-fun tp!1168920 () Bool)

(assert (=> b!3856647 (= e!2383960 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441))))) (value!200754 (_1!23164 (get!13520 lt!1339441)))))) tp!1168920))))

(declare-fun result!271856 () Bool)

(assert (=> tb!223217 (= result!271856 (and (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441))))) (value!200754 (_1!23164 (get!13520 lt!1339441))))) e!2383960))))

(assert (= tb!223217 b!3856647))

(declare-fun m!4412263 () Bool)

(assert (=> b!3856647 m!4412263))

(declare-fun m!4412265 () Bool)

(assert (=> tb!223217 m!4412265))

(assert (=> d!1143529 t!312907))

(declare-fun b_and!288531 () Bool)

(assert (= b_and!288523 (and (=> t!312907 result!271856) b_and!288531)))

(declare-fun tb!223219 () Bool)

(declare-fun t!312909 () Bool)

(assert (=> (and b!3855241 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312909) tb!223219))

(declare-fun result!271858 () Bool)

(assert (= result!271858 result!271856))

(assert (=> d!1143529 t!312909))

(declare-fun b_and!288533 () Bool)

(assert (= b_and!288525 (and (=> t!312909 result!271858) b_and!288533)))

(declare-fun tb!223221 () Bool)

(declare-fun t!312911 () Bool)

(assert (=> (and b!3855256 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312911) tb!223221))

(declare-fun result!271860 () Bool)

(assert (= result!271860 result!271856))

(assert (=> d!1143529 t!312911))

(declare-fun b_and!288535 () Bool)

(assert (= b_and!288519 (and (=> t!312911 result!271860) b_and!288535)))

(declare-fun tb!223223 () Bool)

(declare-fun t!312913 () Bool)

(assert (=> (and b!3855826 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312913) tb!223223))

(declare-fun result!271862 () Bool)

(assert (= result!271862 result!271856))

(assert (=> d!1143529 t!312913))

(declare-fun b_and!288537 () Bool)

(assert (= b_and!288521 (and (=> t!312913 result!271862) b_and!288537)))

(declare-fun t!312915 () Bool)

(declare-fun tb!223225 () Bool)

(assert (=> (and b!3855865 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312915) tb!223225))

(declare-fun result!271864 () Bool)

(assert (= result!271864 result!271856))

(assert (=> d!1143529 t!312915))

(declare-fun b_and!288539 () Bool)

(assert (= b_and!288529 (and (=> t!312915 result!271864) b_and!288539)))

(declare-fun t!312917 () Bool)

(declare-fun tb!223227 () Bool)

(assert (=> (and b!3855259 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312917) tb!223227))

(declare-fun result!271866 () Bool)

(assert (= result!271866 result!271856))

(assert (=> d!1143529 t!312917))

(declare-fun b_and!288541 () Bool)

(assert (= b_and!288527 (and (=> t!312917 result!271866) b_and!288541)))

(declare-fun m!4412267 () Bool)

(assert (=> d!1143529 m!4412267))

(declare-fun m!4412269 () Bool)

(assert (=> d!1143529 m!4412269))

(assert (=> b!3855787 d!1143529))

(assert (=> b!3855787 d!1143419))

(declare-fun b!3856648 () Bool)

(declare-fun e!2383961 () List!40987)

(assert (=> b!3856648 (= e!2383961 suffix!1176)))

(declare-fun b!3856650 () Bool)

(declare-fun res!1561311 () Bool)

(declare-fun e!2383962 () Bool)

(assert (=> b!3856650 (=> (not res!1561311) (not e!2383962))))

(declare-fun lt!1339826 () List!40987)

(assert (=> b!3856650 (= res!1561311 (= (size!30736 lt!1339826) (+ (size!30736 (t!312564 prefix!426)) (size!30736 suffix!1176))))))

(declare-fun b!3856651 () Bool)

(assert (=> b!3856651 (= e!2383962 (or (not (= suffix!1176 Nil!40863)) (= lt!1339826 (t!312564 prefix!426))))))

(declare-fun b!3856649 () Bool)

(assert (=> b!3856649 (= e!2383961 (Cons!40863 (h!46283 (t!312564 prefix!426)) (++!10397 (t!312564 (t!312564 prefix!426)) suffix!1176)))))

(declare-fun d!1143531 () Bool)

(assert (=> d!1143531 e!2383962))

(declare-fun res!1561312 () Bool)

(assert (=> d!1143531 (=> (not res!1561312) (not e!2383962))))

(assert (=> d!1143531 (= res!1561312 (= (content!6085 lt!1339826) ((_ map or) (content!6085 (t!312564 prefix!426)) (content!6085 suffix!1176))))))

(assert (=> d!1143531 (= lt!1339826 e!2383961)))

(declare-fun c!671654 () Bool)

(assert (=> d!1143531 (= c!671654 ((_ is Nil!40863) (t!312564 prefix!426)))))

(assert (=> d!1143531 (= (++!10397 (t!312564 prefix!426) suffix!1176) lt!1339826)))

(assert (= (and d!1143531 c!671654) b!3856648))

(assert (= (and d!1143531 (not c!671654)) b!3856649))

(assert (= (and d!1143531 res!1561312) b!3856650))

(assert (= (and b!3856650 res!1561311) b!3856651))

(declare-fun m!4412271 () Bool)

(assert (=> b!3856650 m!4412271))

(assert (=> b!3856650 m!4410899))

(assert (=> b!3856650 m!4410527))

(declare-fun m!4412273 () Bool)

(assert (=> b!3856649 m!4412273))

(declare-fun m!4412275 () Bool)

(assert (=> d!1143531 m!4412275))

(declare-fun m!4412277 () Bool)

(assert (=> d!1143531 m!4412277))

(assert (=> d!1143531 m!4410849))

(assert (=> b!3855525 d!1143531))

(declare-fun d!1143533 () Bool)

(assert (=> d!1143533 (= (list!15210 lt!1339299) (list!15212 (c!671349 lt!1339299)))))

(declare-fun bs!583090 () Bool)

(assert (= bs!583090 d!1143533))

(declare-fun m!4412279 () Bool)

(assert (=> bs!583090 m!4412279))

(assert (=> d!1142947 d!1143533))

(declare-fun b!3856655 () Bool)

(declare-fun lt!1339827 () List!40988)

(declare-fun e!2383963 () Bool)

(assert (=> b!3856655 (= e!2383963 (or (not (= (_1!23163 lt!1339266) Nil!40864)) (= lt!1339827 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)))))))

(declare-fun b!3856654 () Bool)

(declare-fun res!1561314 () Bool)

(assert (=> b!3856654 (=> (not res!1561314) (not e!2383963))))

(assert (=> b!3856654 (= res!1561314 (= (size!30738 lt!1339827) (+ (size!30738 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864))) (size!30738 (_1!23163 lt!1339266)))))))

(declare-fun d!1143535 () Bool)

(assert (=> d!1143535 e!2383963))

(declare-fun res!1561313 () Bool)

(assert (=> d!1143535 (=> (not res!1561313) (not e!2383963))))

(assert (=> d!1143535 (= res!1561313 (= (content!6086 lt!1339827) ((_ map or) (content!6086 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864))) (content!6086 (_1!23163 lt!1339266)))))))

(declare-fun e!2383964 () List!40988)

(assert (=> d!1143535 (= lt!1339827 e!2383964)))

(declare-fun c!671655 () Bool)

(assert (=> d!1143535 (= c!671655 ((_ is Nil!40864) (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864))))))

(assert (=> d!1143535 (= (++!10398 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)) (_1!23163 lt!1339266)) lt!1339827)))

(declare-fun b!3856653 () Bool)

(assert (=> b!3856653 (= e!2383964 (Cons!40864 (h!46284 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864))) (++!10398 (t!312565 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864))) (_1!23163 lt!1339266))))))

(declare-fun b!3856652 () Bool)

(assert (=> b!3856652 (= e!2383964 (_1!23163 lt!1339266))))

(assert (= (and d!1143535 c!671655) b!3856652))

(assert (= (and d!1143535 (not c!671655)) b!3856653))

(assert (= (and d!1143535 res!1561313) b!3856654))

(assert (= (and b!3856654 res!1561314) b!3856655))

(declare-fun m!4412281 () Bool)

(assert (=> b!3856654 m!4412281))

(assert (=> b!3856654 m!4412099))

(assert (=> b!3856654 m!4411143))

(declare-fun m!4412283 () Bool)

(assert (=> d!1143535 m!4412283))

(declare-fun m!4412285 () Bool)

(assert (=> d!1143535 m!4412285))

(assert (=> d!1143535 m!4411149))

(declare-fun m!4412287 () Bool)

(assert (=> b!3856653 m!4412287))

(assert (=> b!3855804 d!1143535))

(declare-fun d!1143537 () Bool)

(assert (=> d!1143537 (= (inv!55015 (tag!7180 (h!46285 (t!312566 rules!2768)))) (= (mod (str.len (value!200753 (tag!7180 (h!46285 (t!312566 rules!2768))))) 2) 0))))

(assert (=> b!3855852 d!1143537))

(declare-fun d!1143539 () Bool)

(declare-fun res!1561315 () Bool)

(declare-fun e!2383965 () Bool)

(assert (=> d!1143539 (=> (not res!1561315) (not e!2383965))))

(assert (=> d!1143539 (= res!1561315 (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toValue!8744 (transformation!6320 (h!46285 (t!312566 rules!2768))))))))

(assert (=> d!1143539 (= (inv!55018 (transformation!6320 (h!46285 (t!312566 rules!2768)))) e!2383965)))

(declare-fun b!3856656 () Bool)

(assert (=> b!3856656 (= e!2383965 (equivClasses!2608 (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toValue!8744 (transformation!6320 (h!46285 (t!312566 rules!2768))))))))

(assert (= (and d!1143539 res!1561315) b!3856656))

(declare-fun m!4412289 () Bool)

(assert (=> d!1143539 m!4412289))

(declare-fun m!4412291 () Bool)

(assert (=> b!3856656 m!4412291))

(assert (=> b!3855852 d!1143539))

(declare-fun d!1143541 () Bool)

(assert (=> d!1143541 (= (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))) (isBalanced!3626 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))))))

(declare-fun bs!583091 () Bool)

(assert (= bs!583091 d!1143541))

(declare-fun m!4412293 () Bool)

(assert (=> bs!583091 m!4412293))

(assert (=> tb!222947 d!1143541))

(declare-fun d!1143543 () Bool)

(declare-fun lt!1339828 () Int)

(assert (=> d!1143543 (>= lt!1339828 0)))

(declare-fun e!2383966 () Int)

(assert (=> d!1143543 (= lt!1339828 e!2383966)))

(declare-fun c!671656 () Bool)

(assert (=> d!1143543 (= c!671656 ((_ is Nil!40863) (t!312564 lt!1339257)))))

(assert (=> d!1143543 (= (size!30736 (t!312564 lt!1339257)) lt!1339828)))

(declare-fun b!3856657 () Bool)

(assert (=> b!3856657 (= e!2383966 0)))

(declare-fun b!3856658 () Bool)

(assert (=> b!3856658 (= e!2383966 (+ 1 (size!30736 (t!312564 (t!312564 lt!1339257)))))))

(assert (= (and d!1143543 c!671656) b!3856657))

(assert (= (and d!1143543 (not c!671656)) b!3856658))

(declare-fun m!4412295 () Bool)

(assert (=> b!3856658 m!4412295))

(assert (=> b!3855469 d!1143543))

(declare-fun d!1143545 () Bool)

(declare-fun lt!1339829 () Int)

(assert (=> d!1143545 (>= lt!1339829 0)))

(declare-fun e!2383967 () Int)

(assert (=> d!1143545 (= lt!1339829 e!2383967)))

(declare-fun c!671657 () Bool)

(assert (=> d!1143545 (= c!671657 ((_ is Nil!40864) lt!1339367))))

(assert (=> d!1143545 (= (size!30738 lt!1339367) lt!1339829)))

(declare-fun b!3856659 () Bool)

(assert (=> b!3856659 (= e!2383967 0)))

(declare-fun b!3856660 () Bool)

(assert (=> b!3856660 (= e!2383967 (+ 1 (size!30738 (t!312565 lt!1339367))))))

(assert (= (and d!1143545 c!671657) b!3856659))

(assert (= (and d!1143545 (not c!671657)) b!3856660))

(declare-fun m!4412297 () Bool)

(assert (=> b!3856660 m!4412297))

(assert (=> b!3855522 d!1143545))

(declare-fun d!1143547 () Bool)

(declare-fun lt!1339830 () Int)

(assert (=> d!1143547 (>= lt!1339830 0)))

(declare-fun e!2383968 () Int)

(assert (=> d!1143547 (= lt!1339830 e!2383968)))

(declare-fun c!671658 () Bool)

(assert (=> d!1143547 (= c!671658 ((_ is Nil!40864) prefixTokens!80))))

(assert (=> d!1143547 (= (size!30738 prefixTokens!80) lt!1339830)))

(declare-fun b!3856661 () Bool)

(assert (=> b!3856661 (= e!2383968 0)))

(declare-fun b!3856662 () Bool)

(assert (=> b!3856662 (= e!2383968 (+ 1 (size!30738 (t!312565 prefixTokens!80))))))

(assert (= (and d!1143547 c!671658) b!3856661))

(assert (= (and d!1143547 (not c!671658)) b!3856662))

(declare-fun m!4412299 () Bool)

(assert (=> b!3856662 m!4412299))

(assert (=> b!3855522 d!1143547))

(declare-fun d!1143549 () Bool)

(declare-fun lt!1339831 () Int)

(assert (=> d!1143549 (>= lt!1339831 0)))

(declare-fun e!2383969 () Int)

(assert (=> d!1143549 (= lt!1339831 e!2383969)))

(declare-fun c!671659 () Bool)

(assert (=> d!1143549 (= c!671659 ((_ is Nil!40864) suffixTokens!72))))

(assert (=> d!1143549 (= (size!30738 suffixTokens!72) lt!1339831)))

(declare-fun b!3856663 () Bool)

(assert (=> b!3856663 (= e!2383969 0)))

(declare-fun b!3856664 () Bool)

(assert (=> b!3856664 (= e!2383969 (+ 1 (size!30738 (t!312565 suffixTokens!72))))))

(assert (= (and d!1143549 c!671659) b!3856663))

(assert (= (and d!1143549 (not c!671659)) b!3856664))

(declare-fun m!4412301 () Bool)

(assert (=> b!3856664 m!4412301))

(assert (=> b!3855522 d!1143549))

(declare-fun d!1143551 () Bool)

(assert (=> d!1143551 (= (inv!55015 (tag!7180 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (= (mod (str.len (value!200753 (tag!7180 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3855825 d!1143551))

(declare-fun d!1143553 () Bool)

(declare-fun res!1561316 () Bool)

(declare-fun e!2383970 () Bool)

(assert (=> d!1143553 (=> (not res!1561316) (not e!2383970))))

(assert (=> d!1143553 (= res!1561316 (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))))))

(assert (=> d!1143553 (= (inv!55018 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) e!2383970)))

(declare-fun b!3856665 () Bool)

(assert (=> b!3856665 (= e!2383970 (equivClasses!2608 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))))))

(assert (= (and d!1143553 res!1561316) b!3856665))

(declare-fun m!4412303 () Bool)

(assert (=> d!1143553 m!4412303))

(declare-fun m!4412305 () Bool)

(assert (=> b!3856665 m!4412305))

(assert (=> b!3855825 d!1143553))

(declare-fun d!1143555 () Bool)

(declare-fun lt!1339832 () Int)

(assert (=> d!1143555 (>= lt!1339832 0)))

(declare-fun e!2383971 () Int)

(assert (=> d!1143555 (= lt!1339832 e!2383971)))

(declare-fun c!671660 () Bool)

(assert (=> d!1143555 (= c!671660 ((_ is Nil!40863) (t!312564 (_2!23164 lt!1339273))))))

(assert (=> d!1143555 (= (size!30736 (t!312564 (_2!23164 lt!1339273))) lt!1339832)))

(declare-fun b!3856666 () Bool)

(assert (=> b!3856666 (= e!2383971 0)))

(declare-fun b!3856667 () Bool)

(assert (=> b!3856667 (= e!2383971 (+ 1 (size!30736 (t!312564 (t!312564 (_2!23164 lt!1339273))))))))

(assert (= (and d!1143555 c!671660) b!3856666))

(assert (= (and d!1143555 (not c!671660)) b!3856667))

(declare-fun m!4412307 () Bool)

(assert (=> b!3856667 m!4412307))

(assert (=> b!3855563 d!1143555))

(declare-fun d!1143557 () Bool)

(declare-fun lt!1339833 () Int)

(assert (=> d!1143557 (>= lt!1339833 0)))

(declare-fun e!2383972 () Int)

(assert (=> d!1143557 (= lt!1339833 e!2383972)))

(declare-fun c!671661 () Bool)

(assert (=> d!1143557 (= c!671661 ((_ is Nil!40864) (_1!23163 lt!1339394)))))

(assert (=> d!1143557 (= (size!30738 (_1!23163 lt!1339394)) lt!1339833)))

(declare-fun b!3856668 () Bool)

(assert (=> b!3856668 (= e!2383972 0)))

(declare-fun b!3856669 () Bool)

(assert (=> b!3856669 (= e!2383972 (+ 1 (size!30738 (t!312565 (_1!23163 lt!1339394)))))))

(assert (= (and d!1143557 c!671661) b!3856668))

(assert (= (and d!1143557 (not c!671661)) b!3856669))

(declare-fun m!4412309 () Bool)

(assert (=> b!3856669 m!4412309))

(assert (=> d!1143035 d!1143557))

(declare-fun b!3856670 () Bool)

(declare-fun res!1561321 () Bool)

(declare-fun e!2383975 () Bool)

(assert (=> b!3856670 (=> (not res!1561321) (not e!2383975))))

(declare-fun lt!1339837 () Option!8738)

(assert (=> b!3856670 (= res!1561321 (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339837)))) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339837))))))))

(declare-fun b!3856672 () Bool)

(assert (=> b!3856672 (= e!2383975 (contains!8259 rules!2768 (rule!9180 (_1!23164 (get!13520 lt!1339837)))))))

(declare-fun b!3856673 () Bool)

(declare-fun res!1561318 () Bool)

(assert (=> b!3856673 (=> (not res!1561318) (not e!2383975))))

(assert (=> b!3856673 (= res!1561318 (= (++!10397 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339837)))) (_2!23164 (get!13520 lt!1339837))) suffix!1176))))

(declare-fun call!282477 () Option!8738)

(declare-fun bm!282472 () Bool)

(assert (=> bm!282472 (= call!282477 (maxPrefixOneRule!2295 thiss!20629 (h!46285 rules!2768) suffix!1176))))

(declare-fun b!3856674 () Bool)

(declare-fun res!1561317 () Bool)

(assert (=> b!3856674 (=> (not res!1561317) (not e!2383975))))

(assert (=> b!3856674 (= res!1561317 (= (value!200754 (_1!23164 (get!13520 lt!1339837))) (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339837)))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339837)))))))))

(declare-fun d!1143559 () Bool)

(declare-fun e!2383974 () Bool)

(assert (=> d!1143559 e!2383974))

(declare-fun res!1561320 () Bool)

(assert (=> d!1143559 (=> res!1561320 e!2383974)))

(assert (=> d!1143559 (= res!1561320 (isEmpty!24198 lt!1339837))))

(declare-fun e!2383973 () Option!8738)

(assert (=> d!1143559 (= lt!1339837 e!2383973)))

(declare-fun c!671662 () Bool)

(assert (=> d!1143559 (= c!671662 (and ((_ is Cons!40865) rules!2768) ((_ is Nil!40865) (t!312566 rules!2768))))))

(declare-fun lt!1339836 () Unit!58530)

(declare-fun lt!1339834 () Unit!58530)

(assert (=> d!1143559 (= lt!1339836 lt!1339834)))

(assert (=> d!1143559 (isPrefix!3419 suffix!1176 suffix!1176)))

(assert (=> d!1143559 (= lt!1339834 (lemmaIsPrefixRefl!2180 suffix!1176 suffix!1176))))

(assert (=> d!1143559 (rulesValidInductive!2252 thiss!20629 rules!2768)))

(assert (=> d!1143559 (= (maxPrefix!3213 thiss!20629 rules!2768 suffix!1176) lt!1339837)))

(declare-fun b!3856671 () Bool)

(declare-fun res!1561319 () Bool)

(assert (=> b!3856671 (=> (not res!1561319) (not e!2383975))))

(assert (=> b!3856671 (= res!1561319 (< (size!30736 (_2!23164 (get!13520 lt!1339837))) (size!30736 suffix!1176)))))

(declare-fun b!3856675 () Bool)

(assert (=> b!3856675 (= e!2383973 call!282477)))

(declare-fun b!3856676 () Bool)

(declare-fun lt!1339835 () Option!8738)

(declare-fun lt!1339838 () Option!8738)

(assert (=> b!3856676 (= e!2383973 (ite (and ((_ is None!8737) lt!1339835) ((_ is None!8737) lt!1339838)) None!8737 (ite ((_ is None!8737) lt!1339838) lt!1339835 (ite ((_ is None!8737) lt!1339835) lt!1339838 (ite (>= (size!30735 (_1!23164 (v!39033 lt!1339835))) (size!30735 (_1!23164 (v!39033 lt!1339838)))) lt!1339835 lt!1339838)))))))

(assert (=> b!3856676 (= lt!1339835 call!282477)))

(assert (=> b!3856676 (= lt!1339838 (maxPrefix!3213 thiss!20629 (t!312566 rules!2768) suffix!1176))))

(declare-fun b!3856677 () Bool)

(declare-fun res!1561323 () Bool)

(assert (=> b!3856677 (=> (not res!1561323) (not e!2383975))))

(assert (=> b!3856677 (= res!1561323 (= (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339837)))) (originalCharacters!6920 (_1!23164 (get!13520 lt!1339837)))))))

(declare-fun b!3856678 () Bool)

(assert (=> b!3856678 (= e!2383974 e!2383975)))

(declare-fun res!1561322 () Bool)

(assert (=> b!3856678 (=> (not res!1561322) (not e!2383975))))

(assert (=> b!3856678 (= res!1561322 (isDefined!6857 lt!1339837))))

(assert (= (and d!1143559 c!671662) b!3856675))

(assert (= (and d!1143559 (not c!671662)) b!3856676))

(assert (= (or b!3856675 b!3856676) bm!282472))

(assert (= (and d!1143559 (not res!1561320)) b!3856678))

(assert (= (and b!3856678 res!1561322) b!3856677))

(assert (= (and b!3856677 res!1561323) b!3856671))

(assert (= (and b!3856671 res!1561319) b!3856673))

(assert (= (and b!3856673 res!1561318) b!3856674))

(assert (= (and b!3856674 res!1561317) b!3856670))

(assert (= (and b!3856670 res!1561321) b!3856672))

(declare-fun m!4412311 () Bool)

(assert (=> b!3856678 m!4412311))

(declare-fun m!4412313 () Bool)

(assert (=> b!3856677 m!4412313))

(declare-fun m!4412315 () Bool)

(assert (=> b!3856677 m!4412315))

(assert (=> b!3856677 m!4412315))

(declare-fun m!4412317 () Bool)

(assert (=> b!3856677 m!4412317))

(declare-fun m!4412319 () Bool)

(assert (=> bm!282472 m!4412319))

(assert (=> b!3856673 m!4412313))

(assert (=> b!3856673 m!4412315))

(assert (=> b!3856673 m!4412315))

(assert (=> b!3856673 m!4412317))

(assert (=> b!3856673 m!4412317))

(declare-fun m!4412321 () Bool)

(assert (=> b!3856673 m!4412321))

(assert (=> b!3856671 m!4412313))

(declare-fun m!4412323 () Bool)

(assert (=> b!3856671 m!4412323))

(assert (=> b!3856671 m!4410527))

(declare-fun m!4412325 () Bool)

(assert (=> b!3856676 m!4412325))

(assert (=> b!3856672 m!4412313))

(declare-fun m!4412327 () Bool)

(assert (=> b!3856672 m!4412327))

(assert (=> b!3856670 m!4412313))

(assert (=> b!3856670 m!4412315))

(assert (=> b!3856670 m!4412315))

(assert (=> b!3856670 m!4412317))

(assert (=> b!3856670 m!4412317))

(declare-fun m!4412329 () Bool)

(assert (=> b!3856670 m!4412329))

(assert (=> b!3856674 m!4412313))

(declare-fun m!4412331 () Bool)

(assert (=> b!3856674 m!4412331))

(assert (=> b!3856674 m!4412331))

(declare-fun m!4412333 () Bool)

(assert (=> b!3856674 m!4412333))

(declare-fun m!4412335 () Bool)

(assert (=> d!1143559 m!4412335))

(declare-fun m!4412337 () Bool)

(assert (=> d!1143559 m!4412337))

(declare-fun m!4412339 () Bool)

(assert (=> d!1143559 m!4412339))

(assert (=> d!1143559 m!4410883))

(assert (=> d!1143035 d!1143559))

(declare-fun d!1143561 () Bool)

(declare-fun c!671665 () Bool)

(assert (=> d!1143561 (= c!671665 ((_ is Nil!40863) lt!1339368))))

(declare-fun e!2383978 () (InoxSet C!22636))

(assert (=> d!1143561 (= (content!6085 lt!1339368) e!2383978)))

(declare-fun b!3856683 () Bool)

(assert (=> b!3856683 (= e!2383978 ((as const (Array C!22636 Bool)) false))))

(declare-fun b!3856684 () Bool)

(assert (=> b!3856684 (= e!2383978 ((_ map or) (store ((as const (Array C!22636 Bool)) false) (h!46283 lt!1339368) true) (content!6085 (t!312564 lt!1339368))))))

(assert (= (and d!1143561 c!671665) b!3856683))

(assert (= (and d!1143561 (not c!671665)) b!3856684))

(declare-fun m!4412341 () Bool)

(assert (=> b!3856684 m!4412341))

(declare-fun m!4412343 () Bool)

(assert (=> b!3856684 m!4412343))

(assert (=> d!1143005 d!1143561))

(declare-fun d!1143563 () Bool)

(declare-fun c!671666 () Bool)

(assert (=> d!1143563 (= c!671666 ((_ is Nil!40863) prefix!426))))

(declare-fun e!2383979 () (InoxSet C!22636))

(assert (=> d!1143563 (= (content!6085 prefix!426) e!2383979)))

(declare-fun b!3856685 () Bool)

(assert (=> b!3856685 (= e!2383979 ((as const (Array C!22636 Bool)) false))))

(declare-fun b!3856686 () Bool)

(assert (=> b!3856686 (= e!2383979 ((_ map or) (store ((as const (Array C!22636 Bool)) false) (h!46283 prefix!426) true) (content!6085 (t!312564 prefix!426))))))

(assert (= (and d!1143563 c!671666) b!3856685))

(assert (= (and d!1143563 (not c!671666)) b!3856686))

(declare-fun m!4412345 () Bool)

(assert (=> b!3856686 m!4412345))

(assert (=> b!3856686 m!4412277))

(assert (=> d!1143005 d!1143563))

(declare-fun d!1143565 () Bool)

(declare-fun c!671667 () Bool)

(assert (=> d!1143565 (= c!671667 ((_ is Nil!40863) suffix!1176))))

(declare-fun e!2383980 () (InoxSet C!22636))

(assert (=> d!1143565 (= (content!6085 suffix!1176) e!2383980)))

(declare-fun b!3856687 () Bool)

(assert (=> b!3856687 (= e!2383980 ((as const (Array C!22636 Bool)) false))))

(declare-fun b!3856688 () Bool)

(assert (=> b!3856688 (= e!2383980 ((_ map or) (store ((as const (Array C!22636 Bool)) false) (h!46283 suffix!1176) true) (content!6085 (t!312564 suffix!1176))))))

(assert (= (and d!1143565 c!671667) b!3856687))

(assert (= (and d!1143565 (not c!671667)) b!3856688))

(declare-fun m!4412347 () Bool)

(assert (=> b!3856688 m!4412347))

(declare-fun m!4412349 () Bool)

(assert (=> b!3856688 m!4412349))

(assert (=> d!1143005 d!1143565))

(declare-fun d!1143567 () Bool)

(declare-fun lt!1339839 () Int)

(assert (=> d!1143567 (>= lt!1339839 0)))

(declare-fun e!2383981 () Int)

(assert (=> d!1143567 (= lt!1339839 e!2383981)))

(declare-fun c!671668 () Bool)

(assert (=> d!1143567 (= c!671668 ((_ is Nil!40863) (_2!23163 lt!1339364)))))

(assert (=> d!1143567 (= (size!30736 (_2!23163 lt!1339364)) lt!1339839)))

(declare-fun b!3856689 () Bool)

(assert (=> b!3856689 (= e!2383981 0)))

(declare-fun b!3856690 () Bool)

(assert (=> b!3856690 (= e!2383981 (+ 1 (size!30736 (t!312564 (_2!23163 lt!1339364)))))))

(assert (= (and d!1143567 c!671668) b!3856689))

(assert (= (and d!1143567 (not c!671668)) b!3856690))

(declare-fun m!4412351 () Bool)

(assert (=> b!3856690 m!4412351))

(assert (=> b!3855508 d!1143567))

(assert (=> b!3855508 d!1142989))

(declare-fun d!1143569 () Bool)

(declare-fun c!671671 () Bool)

(assert (=> d!1143569 (= c!671671 ((_ is Nil!40864) lt!1339445))))

(declare-fun e!2383984 () (InoxSet Token!11778))

(assert (=> d!1143569 (= (content!6086 lt!1339445) e!2383984)))

(declare-fun b!3856695 () Bool)

(assert (=> b!3856695 (= e!2383984 ((as const (Array Token!11778 Bool)) false))))

(declare-fun b!3856696 () Bool)

(assert (=> b!3856696 (= e!2383984 ((_ map or) (store ((as const (Array Token!11778 Bool)) false) (h!46284 lt!1339445) true) (content!6086 (t!312565 lt!1339445))))))

(assert (= (and d!1143569 c!671671) b!3856695))

(assert (= (and d!1143569 (not c!671671)) b!3856696))

(declare-fun m!4412353 () Bool)

(assert (=> b!3856696 m!4412353))

(declare-fun m!4412355 () Bool)

(assert (=> b!3856696 m!4412355))

(assert (=> d!1143085 d!1143569))

(declare-fun d!1143571 () Bool)

(declare-fun c!671672 () Bool)

(assert (=> d!1143571 (= c!671672 ((_ is Nil!40864) (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)))))

(declare-fun e!2383985 () (InoxSet Token!11778))

(assert (=> d!1143571 (= (content!6086 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)) e!2383985)))

(declare-fun b!3856697 () Bool)

(assert (=> b!3856697 (= e!2383985 ((as const (Array Token!11778 Bool)) false))))

(declare-fun b!3856698 () Bool)

(assert (=> b!3856698 (= e!2383985 ((_ map or) (store ((as const (Array Token!11778 Bool)) false) (h!46284 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)) true) (content!6086 (t!312565 (Cons!40864 (_1!23164 (v!39033 lt!1339271)) Nil!40864)))))))

(assert (= (and d!1143571 c!671672) b!3856697))

(assert (= (and d!1143571 (not c!671672)) b!3856698))

(declare-fun m!4412357 () Bool)

(assert (=> b!3856698 m!4412357))

(assert (=> b!3856698 m!4412285))

(assert (=> d!1143085 d!1143571))

(declare-fun d!1143573 () Bool)

(declare-fun c!671673 () Bool)

(assert (=> d!1143573 (= c!671673 ((_ is Nil!40864) (_1!23163 lt!1339266)))))

(declare-fun e!2383986 () (InoxSet Token!11778))

(assert (=> d!1143573 (= (content!6086 (_1!23163 lt!1339266)) e!2383986)))

(declare-fun b!3856699 () Bool)

(assert (=> b!3856699 (= e!2383986 ((as const (Array Token!11778 Bool)) false))))

(declare-fun b!3856700 () Bool)

(assert (=> b!3856700 (= e!2383986 ((_ map or) (store ((as const (Array Token!11778 Bool)) false) (h!46284 (_1!23163 lt!1339266)) true) (content!6086 (t!312565 (_1!23163 lt!1339266)))))))

(assert (= (and d!1143573 c!671673) b!3856699))

(assert (= (and d!1143573 (not c!671673)) b!3856700))

(declare-fun m!4412359 () Bool)

(assert (=> b!3856700 m!4412359))

(declare-fun m!4412361 () Bool)

(assert (=> b!3856700 m!4412361))

(assert (=> d!1143085 d!1143573))

(declare-fun d!1143575 () Bool)

(assert (=> d!1143575 (= (list!15210 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))) (list!15212 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))))))

(declare-fun bs!583092 () Bool)

(assert (= bs!583092 d!1143575))

(declare-fun m!4412363 () Bool)

(assert (=> bs!583092 m!4412363))

(assert (=> b!3855800 d!1143575))

(assert (=> b!3855642 d!1143509))

(assert (=> b!3855642 d!1143429))

(declare-fun d!1143577 () Bool)

(declare-fun c!671674 () Bool)

(assert (=> d!1143577 (= c!671674 ((_ is Nil!40864) lt!1339367))))

(declare-fun e!2383987 () (InoxSet Token!11778))

(assert (=> d!1143577 (= (content!6086 lt!1339367) e!2383987)))

(declare-fun b!3856701 () Bool)

(assert (=> b!3856701 (= e!2383987 ((as const (Array Token!11778 Bool)) false))))

(declare-fun b!3856702 () Bool)

(assert (=> b!3856702 (= e!2383987 ((_ map or) (store ((as const (Array Token!11778 Bool)) false) (h!46284 lt!1339367) true) (content!6086 (t!312565 lt!1339367))))))

(assert (= (and d!1143577 c!671674) b!3856701))

(assert (= (and d!1143577 (not c!671674)) b!3856702))

(declare-fun m!4412365 () Bool)

(assert (=> b!3856702 m!4412365))

(declare-fun m!4412367 () Bool)

(assert (=> b!3856702 m!4412367))

(assert (=> d!1143003 d!1143577))

(declare-fun d!1143579 () Bool)

(declare-fun c!671675 () Bool)

(assert (=> d!1143579 (= c!671675 ((_ is Nil!40864) prefixTokens!80))))

(declare-fun e!2383988 () (InoxSet Token!11778))

(assert (=> d!1143579 (= (content!6086 prefixTokens!80) e!2383988)))

(declare-fun b!3856703 () Bool)

(assert (=> b!3856703 (= e!2383988 ((as const (Array Token!11778 Bool)) false))))

(declare-fun b!3856704 () Bool)

(assert (=> b!3856704 (= e!2383988 ((_ map or) (store ((as const (Array Token!11778 Bool)) false) (h!46284 prefixTokens!80) true) (content!6086 (t!312565 prefixTokens!80))))))

(assert (= (and d!1143579 c!671675) b!3856703))

(assert (= (and d!1143579 (not c!671675)) b!3856704))

(declare-fun m!4412369 () Bool)

(assert (=> b!3856704 m!4412369))

(declare-fun m!4412371 () Bool)

(assert (=> b!3856704 m!4412371))

(assert (=> d!1143003 d!1143579))

(declare-fun d!1143581 () Bool)

(declare-fun c!671676 () Bool)

(assert (=> d!1143581 (= c!671676 ((_ is Nil!40864) suffixTokens!72))))

(declare-fun e!2383989 () (InoxSet Token!11778))

(assert (=> d!1143581 (= (content!6086 suffixTokens!72) e!2383989)))

(declare-fun b!3856705 () Bool)

(assert (=> b!3856705 (= e!2383989 ((as const (Array Token!11778 Bool)) false))))

(declare-fun b!3856706 () Bool)

(assert (=> b!3856706 (= e!2383989 ((_ map or) (store ((as const (Array Token!11778 Bool)) false) (h!46284 suffixTokens!72) true) (content!6086 (t!312565 suffixTokens!72))))))

(assert (= (and d!1143581 c!671676) b!3856705))

(assert (= (and d!1143581 (not c!671676)) b!3856706))

(declare-fun m!4412373 () Bool)

(assert (=> b!3856706 m!4412373))

(declare-fun m!4412375 () Bool)

(assert (=> b!3856706 m!4412375))

(assert (=> d!1143003 d!1143581))

(declare-fun b!3856708 () Bool)

(declare-fun res!1561325 () Bool)

(declare-fun e!2383990 () Bool)

(assert (=> b!3856708 (=> (not res!1561325) (not e!2383990))))

(assert (=> b!3856708 (= res!1561325 (= (head!8118 lt!1339269) (head!8118 (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856707 () Bool)

(declare-fun e!2383992 () Bool)

(assert (=> b!3856707 (= e!2383992 e!2383990)))

(declare-fun res!1561327 () Bool)

(assert (=> b!3856707 (=> (not res!1561327) (not e!2383990))))

(assert (=> b!3856707 (= res!1561327 (not ((_ is Nil!40863) (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856709 () Bool)

(assert (=> b!3856709 (= e!2383990 (isPrefix!3419 (tail!5831 lt!1339269) (tail!5831 (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271))))))))

(declare-fun d!1143583 () Bool)

(declare-fun e!2383991 () Bool)

(assert (=> d!1143583 e!2383991))

(declare-fun res!1561326 () Bool)

(assert (=> d!1143583 (=> res!1561326 e!2383991)))

(declare-fun lt!1339840 () Bool)

(assert (=> d!1143583 (= res!1561326 (not lt!1339840))))

(assert (=> d!1143583 (= lt!1339840 e!2383992)))

(declare-fun res!1561324 () Bool)

(assert (=> d!1143583 (=> res!1561324 e!2383992)))

(assert (=> d!1143583 (= res!1561324 ((_ is Nil!40863) lt!1339269))))

(assert (=> d!1143583 (= (isPrefix!3419 lt!1339269 (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271)))) lt!1339840)))

(declare-fun b!3856710 () Bool)

(assert (=> b!3856710 (= e!2383991 (>= (size!30736 (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271)))) (size!30736 lt!1339269)))))

(assert (= (and d!1143583 (not res!1561324)) b!3856707))

(assert (= (and b!3856707 res!1561327) b!3856708))

(assert (= (and b!3856708 res!1561325) b!3856709))

(assert (= (and d!1143583 (not res!1561326)) b!3856710))

(assert (=> b!3856708 m!4410741))

(assert (=> b!3856708 m!4410499))

(declare-fun m!4412377 () Bool)

(assert (=> b!3856708 m!4412377))

(assert (=> b!3856709 m!4410745))

(assert (=> b!3856709 m!4410499))

(declare-fun m!4412379 () Bool)

(assert (=> b!3856709 m!4412379))

(assert (=> b!3856709 m!4410745))

(assert (=> b!3856709 m!4412379))

(declare-fun m!4412381 () Bool)

(assert (=> b!3856709 m!4412381))

(assert (=> b!3856710 m!4410499))

(declare-fun m!4412383 () Bool)

(assert (=> b!3856710 m!4412383))

(assert (=> b!3856710 m!4410503))

(assert (=> d!1142957 d!1143583))

(assert (=> d!1142957 d!1142907))

(declare-fun d!1143585 () Bool)

(assert (=> d!1143585 (isPrefix!3419 lt!1339269 (++!10397 lt!1339269 (_2!23164 (v!39033 lt!1339271))))))

(assert (=> d!1143585 true))

(declare-fun _$46!1523 () Unit!58530)

(assert (=> d!1143585 (= (choose!22697 lt!1339269 (_2!23164 (v!39033 lt!1339271))) _$46!1523)))

(declare-fun bs!583093 () Bool)

(assert (= bs!583093 d!1143585))

(assert (=> bs!583093 m!4410499))

(assert (=> bs!583093 m!4410499))

(assert (=> bs!583093 m!4410679))

(assert (=> d!1142957 d!1143585))

(assert (=> b!3855638 d!1143437))

(declare-fun d!1143587 () Bool)

(assert (=> d!1143587 (= (inv!17 (value!200754 (h!46284 prefixTokens!80))) (= (charsToBigInt!1 (text!46298 (value!200754 (h!46284 prefixTokens!80)))) (value!200746 (value!200754 (h!46284 prefixTokens!80)))))))

(declare-fun bs!583094 () Bool)

(assert (= bs!583094 d!1143587))

(declare-fun m!4412385 () Bool)

(assert (=> bs!583094 m!4412385))

(assert (=> b!3855570 d!1143587))

(declare-fun b!3856711 () Bool)

(declare-fun res!1561332 () Bool)

(declare-fun e!2383995 () Bool)

(assert (=> b!3856711 (=> (not res!1561332) (not e!2383995))))

(declare-fun lt!1339844 () Option!8738)

(assert (=> b!3856711 (= res!1561332 (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (get!13520 lt!1339844)))) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339844))))))))

(declare-fun b!3856713 () Bool)

(assert (=> b!3856713 (= e!2383995 (contains!8259 (t!312566 rules!2768) (rule!9180 (_1!23164 (get!13520 lt!1339844)))))))

(declare-fun b!3856714 () Bool)

(declare-fun res!1561329 () Bool)

(assert (=> b!3856714 (=> (not res!1561329) (not e!2383995))))

(assert (=> b!3856714 (= res!1561329 (= (++!10397 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339844)))) (_2!23164 (get!13520 lt!1339844))) lt!1339257))))

(declare-fun bm!282473 () Bool)

(declare-fun call!282478 () Option!8738)

(assert (=> bm!282473 (= call!282478 (maxPrefixOneRule!2295 thiss!20629 (h!46285 (t!312566 rules!2768)) lt!1339257))))

(declare-fun b!3856715 () Bool)

(declare-fun res!1561328 () Bool)

(assert (=> b!3856715 (=> (not res!1561328) (not e!2383995))))

(assert (=> b!3856715 (= res!1561328 (= (value!200754 (_1!23164 (get!13520 lt!1339844))) (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339844)))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339844)))))))))

(declare-fun d!1143589 () Bool)

(declare-fun e!2383994 () Bool)

(assert (=> d!1143589 e!2383994))

(declare-fun res!1561331 () Bool)

(assert (=> d!1143589 (=> res!1561331 e!2383994)))

(assert (=> d!1143589 (= res!1561331 (isEmpty!24198 lt!1339844))))

(declare-fun e!2383993 () Option!8738)

(assert (=> d!1143589 (= lt!1339844 e!2383993)))

(declare-fun c!671677 () Bool)

(assert (=> d!1143589 (= c!671677 (and ((_ is Cons!40865) (t!312566 rules!2768)) ((_ is Nil!40865) (t!312566 (t!312566 rules!2768)))))))

(declare-fun lt!1339843 () Unit!58530)

(declare-fun lt!1339841 () Unit!58530)

(assert (=> d!1143589 (= lt!1339843 lt!1339841)))

(assert (=> d!1143589 (isPrefix!3419 lt!1339257 lt!1339257)))

(assert (=> d!1143589 (= lt!1339841 (lemmaIsPrefixRefl!2180 lt!1339257 lt!1339257))))

(assert (=> d!1143589 (rulesValidInductive!2252 thiss!20629 (t!312566 rules!2768))))

(assert (=> d!1143589 (= (maxPrefix!3213 thiss!20629 (t!312566 rules!2768) lt!1339257) lt!1339844)))

(declare-fun b!3856712 () Bool)

(declare-fun res!1561330 () Bool)

(assert (=> b!3856712 (=> (not res!1561330) (not e!2383995))))

(assert (=> b!3856712 (= res!1561330 (< (size!30736 (_2!23164 (get!13520 lt!1339844))) (size!30736 lt!1339257)))))

(declare-fun b!3856716 () Bool)

(assert (=> b!3856716 (= e!2383993 call!282478)))

(declare-fun b!3856717 () Bool)

(declare-fun lt!1339842 () Option!8738)

(declare-fun lt!1339845 () Option!8738)

(assert (=> b!3856717 (= e!2383993 (ite (and ((_ is None!8737) lt!1339842) ((_ is None!8737) lt!1339845)) None!8737 (ite ((_ is None!8737) lt!1339845) lt!1339842 (ite ((_ is None!8737) lt!1339842) lt!1339845 (ite (>= (size!30735 (_1!23164 (v!39033 lt!1339842))) (size!30735 (_1!23164 (v!39033 lt!1339845)))) lt!1339842 lt!1339845)))))))

(assert (=> b!3856717 (= lt!1339842 call!282478)))

(assert (=> b!3856717 (= lt!1339845 (maxPrefix!3213 thiss!20629 (t!312566 (t!312566 rules!2768)) lt!1339257))))

(declare-fun b!3856718 () Bool)

(declare-fun res!1561334 () Bool)

(assert (=> b!3856718 (=> (not res!1561334) (not e!2383995))))

(assert (=> b!3856718 (= res!1561334 (= (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339844)))) (originalCharacters!6920 (_1!23164 (get!13520 lt!1339844)))))))

(declare-fun b!3856719 () Bool)

(assert (=> b!3856719 (= e!2383994 e!2383995)))

(declare-fun res!1561333 () Bool)

(assert (=> b!3856719 (=> (not res!1561333) (not e!2383995))))

(assert (=> b!3856719 (= res!1561333 (isDefined!6857 lt!1339844))))

(assert (= (and d!1143589 c!671677) b!3856716))

(assert (= (and d!1143589 (not c!671677)) b!3856717))

(assert (= (or b!3856716 b!3856717) bm!282473))

(assert (= (and d!1143589 (not res!1561331)) b!3856719))

(assert (= (and b!3856719 res!1561333) b!3856718))

(assert (= (and b!3856718 res!1561334) b!3856712))

(assert (= (and b!3856712 res!1561330) b!3856714))

(assert (= (and b!3856714 res!1561329) b!3856715))

(assert (= (and b!3856715 res!1561328) b!3856711))

(assert (= (and b!3856711 res!1561332) b!3856713))

(declare-fun m!4412387 () Bool)

(assert (=> b!3856719 m!4412387))

(declare-fun m!4412389 () Bool)

(assert (=> b!3856718 m!4412389))

(declare-fun m!4412391 () Bool)

(assert (=> b!3856718 m!4412391))

(assert (=> b!3856718 m!4412391))

(declare-fun m!4412393 () Bool)

(assert (=> b!3856718 m!4412393))

(declare-fun m!4412395 () Bool)

(assert (=> bm!282473 m!4412395))

(assert (=> b!3856714 m!4412389))

(assert (=> b!3856714 m!4412391))

(assert (=> b!3856714 m!4412391))

(assert (=> b!3856714 m!4412393))

(assert (=> b!3856714 m!4412393))

(declare-fun m!4412397 () Bool)

(assert (=> b!3856714 m!4412397))

(assert (=> b!3856712 m!4412389))

(declare-fun m!4412399 () Bool)

(assert (=> b!3856712 m!4412399))

(assert (=> b!3856712 m!4410555))

(declare-fun m!4412401 () Bool)

(assert (=> b!3856717 m!4412401))

(assert (=> b!3856713 m!4412389))

(declare-fun m!4412403 () Bool)

(assert (=> b!3856713 m!4412403))

(assert (=> b!3856711 m!4412389))

(assert (=> b!3856711 m!4412391))

(assert (=> b!3856711 m!4412391))

(assert (=> b!3856711 m!4412393))

(assert (=> b!3856711 m!4412393))

(declare-fun m!4412405 () Bool)

(assert (=> b!3856711 m!4412405))

(assert (=> b!3856715 m!4412389))

(declare-fun m!4412407 () Bool)

(assert (=> b!3856715 m!4412407))

(assert (=> b!3856715 m!4412407))

(declare-fun m!4412409 () Bool)

(assert (=> b!3856715 m!4412409))

(declare-fun m!4412411 () Bool)

(assert (=> d!1143589 m!4412411))

(assert (=> d!1143589 m!4410879))

(assert (=> d!1143589 m!4410881))

(assert (=> d!1143589 m!4412153))

(assert (=> b!3855552 d!1143589))

(declare-fun bs!583095 () Bool)

(declare-fun d!1143591 () Bool)

(assert (= bs!583095 (and d!1143591 d!1143405)))

(declare-fun lambda!126236 () Int)

(assert (=> bs!583095 (= (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) (= lambda!126236 lambda!126226))))

(assert (=> d!1143591 true))

(assert (=> d!1143591 (< (dynLambda!17640 order!22187 (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (dynLambda!17642 order!22189 lambda!126236))))

(assert (=> d!1143591 (= (equivClasses!2608 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (Forall2!1034 lambda!126236))))

(declare-fun bs!583096 () Bool)

(assert (= bs!583096 d!1143591))

(declare-fun m!4412413 () Bool)

(assert (=> bs!583096 m!4412413))

(assert (=> b!3855506 d!1143591))

(declare-fun b!3856720 () Bool)

(declare-fun e!2383996 () List!40987)

(assert (=> b!3856720 (= e!2383996 (_2!23164 (get!13520 lt!1339385)))))

(declare-fun b!3856722 () Bool)

(declare-fun res!1561335 () Bool)

(declare-fun e!2383997 () Bool)

(assert (=> b!3856722 (=> (not res!1561335) (not e!2383997))))

(declare-fun lt!1339846 () List!40987)

(assert (=> b!3856722 (= res!1561335 (= (size!30736 lt!1339846) (+ (size!30736 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))) (size!30736 (_2!23164 (get!13520 lt!1339385))))))))

(declare-fun b!3856723 () Bool)

(assert (=> b!3856723 (= e!2383997 (or (not (= (_2!23164 (get!13520 lt!1339385)) Nil!40863)) (= lt!1339846 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385)))))))))

(declare-fun b!3856721 () Bool)

(assert (=> b!3856721 (= e!2383996 (Cons!40863 (h!46283 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))) (++!10397 (t!312564 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))) (_2!23164 (get!13520 lt!1339385)))))))

(declare-fun d!1143593 () Bool)

(assert (=> d!1143593 e!2383997))

(declare-fun res!1561336 () Bool)

(assert (=> d!1143593 (=> (not res!1561336) (not e!2383997))))

(assert (=> d!1143593 (= res!1561336 (= (content!6085 lt!1339846) ((_ map or) (content!6085 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))) (content!6085 (_2!23164 (get!13520 lt!1339385))))))))

(assert (=> d!1143593 (= lt!1339846 e!2383996)))

(declare-fun c!671678 () Bool)

(assert (=> d!1143593 (= c!671678 ((_ is Nil!40863) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385))))))))

(assert (=> d!1143593 (= (++!10397 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339385)))) (_2!23164 (get!13520 lt!1339385))) lt!1339846)))

(assert (= (and d!1143593 c!671678) b!3856720))

(assert (= (and d!1143593 (not c!671678)) b!3856721))

(assert (= (and d!1143593 res!1561336) b!3856722))

(assert (= (and b!3856722 res!1561335) b!3856723))

(declare-fun m!4412415 () Bool)

(assert (=> b!3856722 m!4412415))

(assert (=> b!3856722 m!4410859))

(declare-fun m!4412417 () Bool)

(assert (=> b!3856722 m!4412417))

(assert (=> b!3856722 m!4410865))

(declare-fun m!4412419 () Bool)

(assert (=> b!3856721 m!4412419))

(declare-fun m!4412421 () Bool)

(assert (=> d!1143593 m!4412421))

(assert (=> d!1143593 m!4410859))

(declare-fun m!4412423 () Bool)

(assert (=> d!1143593 m!4412423))

(declare-fun m!4412425 () Bool)

(assert (=> d!1143593 m!4412425))

(assert (=> b!3855549 d!1143593))

(assert (=> b!3855549 d!1143383))

(assert (=> b!3855549 d!1143385))

(assert (=> b!3855549 d!1143381))

(declare-fun d!1143595 () Bool)

(declare-fun c!671683 () Bool)

(assert (=> d!1143595 (= c!671683 ((_ is Empty!12531) (c!671349 (charsOf!4148 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun e!2384002 () List!40987)

(assert (=> d!1143595 (= (list!15212 (c!671349 (charsOf!4148 (_1!23164 (v!39033 lt!1339271))))) e!2384002)))

(declare-fun b!3856732 () Bool)

(assert (=> b!3856732 (= e!2384002 Nil!40863)))

(declare-fun b!3856734 () Bool)

(declare-fun e!2384003 () List!40987)

(declare-fun list!15214 (IArray!25067) List!40987)

(assert (=> b!3856734 (= e!2384003 (list!15214 (xs!15837 (c!671349 (charsOf!4148 (_1!23164 (v!39033 lt!1339271)))))))))

(declare-fun b!3856733 () Bool)

(assert (=> b!3856733 (= e!2384002 e!2384003)))

(declare-fun c!671684 () Bool)

(assert (=> b!3856733 (= c!671684 ((_ is Leaf!19398) (c!671349 (charsOf!4148 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856735 () Bool)

(assert (=> b!3856735 (= e!2384003 (++!10397 (list!15212 (left!31501 (c!671349 (charsOf!4148 (_1!23164 (v!39033 lt!1339271)))))) (list!15212 (right!31831 (c!671349 (charsOf!4148 (_1!23164 (v!39033 lt!1339271))))))))))

(assert (= (and d!1143595 c!671683) b!3856732))

(assert (= (and d!1143595 (not c!671683)) b!3856733))

(assert (= (and b!3856733 c!671684) b!3856734))

(assert (= (and b!3856733 (not c!671684)) b!3856735))

(declare-fun m!4412427 () Bool)

(assert (=> b!3856734 m!4412427))

(declare-fun m!4412429 () Bool)

(assert (=> b!3856735 m!4412429))

(declare-fun m!4412431 () Bool)

(assert (=> b!3856735 m!4412431))

(assert (=> b!3856735 m!4412429))

(assert (=> b!3856735 m!4412431))

(declare-fun m!4412433 () Bool)

(assert (=> b!3856735 m!4412433))

(assert (=> d!1142985 d!1143595))

(declare-fun bs!583097 () Bool)

(declare-fun d!1143597 () Bool)

(assert (= bs!583097 (and d!1143597 d!1143233)))

(declare-fun lambda!126237 () Int)

(assert (=> bs!583097 (= (and (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))))) (= lambda!126237 lambda!126223))))

(declare-fun bs!583098 () Bool)

(assert (= bs!583098 (and d!1143597 d!1143443)))

(assert (=> bs!583098 (= (and (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (= lambda!126237 lambda!126229))))

(assert (=> d!1143597 true))

(assert (=> d!1143597 (< (dynLambda!17638 order!22183 (toChars!8603 (transformation!6320 (h!46285 rules!2768)))) (dynLambda!17639 order!22185 lambda!126237))))

(assert (=> d!1143597 true))

(assert (=> d!1143597 (< (dynLambda!17640 order!22187 (toValue!8744 (transformation!6320 (h!46285 rules!2768)))) (dynLambda!17639 order!22185 lambda!126237))))

(assert (=> d!1143597 (= (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (h!46285 rules!2768)))) (Forall!1436 lambda!126237))))

(declare-fun bs!583099 () Bool)

(assert (= bs!583099 d!1143597))

(declare-fun m!4412435 () Bool)

(assert (=> bs!583099 m!4412435))

(assert (=> d!1143013 d!1143597))

(declare-fun d!1143599 () Bool)

(declare-fun charsToBigInt!0 (List!40986 Int) Int)

(assert (=> d!1143599 (= (inv!15 (value!200754 (h!46284 suffixTokens!72))) (= (charsToBigInt!0 (text!46299 (value!200754 (h!46284 suffixTokens!72))) 0) (value!200749 (value!200754 (h!46284 suffixTokens!72)))))))

(declare-fun bs!583100 () Bool)

(assert (= bs!583100 d!1143599))

(declare-fun m!4412437 () Bool)

(assert (=> bs!583100 m!4412437))

(assert (=> b!3855280 d!1143599))

(declare-fun d!1143601 () Bool)

(declare-fun lt!1339847 () Int)

(assert (=> d!1143601 (>= lt!1339847 0)))

(declare-fun e!2384004 () Int)

(assert (=> d!1143601 (= lt!1339847 e!2384004)))

(declare-fun c!671685 () Bool)

(assert (=> d!1143601 (= c!671685 ((_ is Nil!40863) (_2!23163 lt!1339339)))))

(assert (=> d!1143601 (= (size!30736 (_2!23163 lt!1339339)) lt!1339847)))

(declare-fun b!3856736 () Bool)

(assert (=> b!3856736 (= e!2384004 0)))

(declare-fun b!3856737 () Bool)

(assert (=> b!3856737 (= e!2384004 (+ 1 (size!30736 (t!312564 (_2!23163 lt!1339339)))))))

(assert (= (and d!1143601 c!671685) b!3856736))

(assert (= (and d!1143601 (not c!671685)) b!3856737))

(declare-fun m!4412439 () Bool)

(assert (=> b!3856737 m!4412439))

(assert (=> b!3855450 d!1143601))

(assert (=> b!3855450 d!1143023))

(declare-fun d!1143603 () Bool)

(assert (=> d!1143603 (= (isEmpty!24195 (originalCharacters!6920 (h!46284 prefixTokens!80))) ((_ is Nil!40863) (originalCharacters!6920 (h!46284 prefixTokens!80))))))

(assert (=> d!1143083 d!1143603))

(declare-fun d!1143605 () Bool)

(assert (=> d!1143605 (= (inv!16 (value!200754 (h!46284 suffixTokens!72))) (= (charsToInt!0 (text!46297 (value!200754 (h!46284 suffixTokens!72)))) (value!200745 (value!200754 (h!46284 suffixTokens!72)))))))

(declare-fun bs!583101 () Bool)

(assert (= bs!583101 d!1143605))

(declare-fun m!4412441 () Bool)

(assert (=> bs!583101 m!4412441))

(assert (=> b!3855278 d!1143605))

(declare-fun d!1143607 () Bool)

(assert (=> d!1143607 (= (inv!55023 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271))))) (isBalanced!3626 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271)))))))))

(declare-fun bs!583102 () Bool)

(assert (= bs!583102 d!1143607))

(declare-fun m!4412443 () Bool)

(assert (=> bs!583102 m!4412443))

(assert (=> tb!222887 d!1143607))

(declare-fun d!1143609 () Bool)

(declare-fun lt!1339848 () Int)

(assert (=> d!1143609 (>= lt!1339848 0)))

(declare-fun e!2384005 () Int)

(assert (=> d!1143609 (= lt!1339848 e!2384005)))

(declare-fun c!671686 () Bool)

(assert (=> d!1143609 (= c!671686 ((_ is Nil!40863) (_2!23164 (get!13520 lt!1339385))))))

(assert (=> d!1143609 (= (size!30736 (_2!23164 (get!13520 lt!1339385))) lt!1339848)))

(declare-fun b!3856738 () Bool)

(assert (=> b!3856738 (= e!2384005 0)))

(declare-fun b!3856739 () Bool)

(assert (=> b!3856739 (= e!2384005 (+ 1 (size!30736 (t!312564 (_2!23164 (get!13520 lt!1339385))))))))

(assert (= (and d!1143609 c!671686) b!3856738))

(assert (= (and d!1143609 (not c!671686)) b!3856739))

(declare-fun m!4412445 () Bool)

(assert (=> b!3856739 m!4412445))

(assert (=> b!3855547 d!1143609))

(assert (=> b!3855547 d!1143381))

(assert (=> b!3855547 d!1142989))

(assert (=> d!1142981 d!1142969))

(declare-fun d!1143611 () Bool)

(assert (=> d!1143611 (ruleValid!2272 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))

(assert (=> d!1143611 true))

(declare-fun _$65!1332 () Unit!58530)

(assert (=> d!1143611 (= (choose!22698 thiss!20629 (rule!9180 (_1!23164 (v!39033 lt!1339271))) rules!2768) _$65!1332)))

(declare-fun bs!583103 () Bool)

(assert (= bs!583103 d!1143611))

(assert (=> bs!583103 m!4410497))

(assert (=> d!1142981 d!1143611))

(declare-fun d!1143613 () Bool)

(declare-fun lt!1339851 () Bool)

(declare-fun content!6089 (List!40989) (InoxSet Rule!12440))

(assert (=> d!1143613 (= lt!1339851 (select (content!6089 rules!2768) (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(declare-fun e!2384011 () Bool)

(assert (=> d!1143613 (= lt!1339851 e!2384011)))

(declare-fun res!1561342 () Bool)

(assert (=> d!1143613 (=> (not res!1561342) (not e!2384011))))

(assert (=> d!1143613 (= res!1561342 ((_ is Cons!40865) rules!2768))))

(assert (=> d!1143613 (= (contains!8259 rules!2768 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) lt!1339851)))

(declare-fun b!3856744 () Bool)

(declare-fun e!2384010 () Bool)

(assert (=> b!3856744 (= e!2384011 e!2384010)))

(declare-fun res!1561341 () Bool)

(assert (=> b!3856744 (=> res!1561341 e!2384010)))

(assert (=> b!3856744 (= res!1561341 (= (h!46285 rules!2768) (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(declare-fun b!3856745 () Bool)

(assert (=> b!3856745 (= e!2384010 (contains!8259 (t!312566 rules!2768) (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (= (and d!1143613 res!1561342) b!3856744))

(assert (= (and b!3856744 (not res!1561341)) b!3856745))

(declare-fun m!4412447 () Bool)

(assert (=> d!1143613 m!4412447))

(declare-fun m!4412449 () Bool)

(assert (=> d!1143613 m!4412449))

(declare-fun m!4412451 () Bool)

(assert (=> b!3856745 m!4412451))

(assert (=> d!1142981 d!1143613))

(declare-fun d!1143615 () Bool)

(declare-fun res!1561347 () Bool)

(declare-fun e!2384016 () Bool)

(assert (=> d!1143615 (=> res!1561347 e!2384016)))

(assert (=> d!1143615 (= res!1561347 ((_ is Nil!40865) rules!2768))))

(assert (=> d!1143615 (= (noDuplicateTag!2445 thiss!20629 rules!2768 Nil!40867) e!2384016)))

(declare-fun b!3856750 () Bool)

(declare-fun e!2384017 () Bool)

(assert (=> b!3856750 (= e!2384016 e!2384017)))

(declare-fun res!1561348 () Bool)

(assert (=> b!3856750 (=> (not res!1561348) (not e!2384017))))

(declare-fun contains!8261 (List!40991 String!46468) Bool)

(assert (=> b!3856750 (= res!1561348 (not (contains!8261 Nil!40867 (tag!7180 (h!46285 rules!2768)))))))

(declare-fun b!3856751 () Bool)

(assert (=> b!3856751 (= e!2384017 (noDuplicateTag!2445 thiss!20629 (t!312566 rules!2768) (Cons!40867 (tag!7180 (h!46285 rules!2768)) Nil!40867)))))

(assert (= (and d!1143615 (not res!1561347)) b!3856750))

(assert (= (and b!3856750 res!1561348) b!3856751))

(declare-fun m!4412453 () Bool)

(assert (=> b!3856750 m!4412453))

(declare-fun m!4412455 () Bool)

(assert (=> b!3856751 m!4412455))

(assert (=> b!3855799 d!1143615))

(declare-fun b!3856752 () Bool)

(declare-fun e!2384023 () Bool)

(declare-fun e!2384022 () Bool)

(assert (=> b!3856752 (= e!2384023 e!2384022)))

(declare-fun res!1561354 () Bool)

(assert (=> b!3856752 (=> res!1561354 e!2384022)))

(declare-fun call!282479 () Bool)

(assert (=> b!3856752 (= res!1561354 call!282479)))

(declare-fun b!3856753 () Bool)

(declare-fun e!2384020 () Bool)

(assert (=> b!3856753 (= e!2384020 (matchR!5372 (derivativeStep!3408 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269)) (head!8118 (tail!5831 lt!1339269))) (tail!5831 (tail!5831 lt!1339269))))))

(declare-fun b!3856754 () Bool)

(declare-fun e!2384018 () Bool)

(assert (=> b!3856754 (= e!2384018 e!2384023)))

(declare-fun res!1561355 () Bool)

(assert (=> b!3856754 (=> (not res!1561355) (not e!2384023))))

(declare-fun lt!1339852 () Bool)

(assert (=> b!3856754 (= res!1561355 (not lt!1339852))))

(declare-fun b!3856755 () Bool)

(declare-fun res!1561351 () Bool)

(declare-fun e!2384021 () Bool)

(assert (=> b!3856755 (=> (not res!1561351) (not e!2384021))))

(assert (=> b!3856755 (= res!1561351 (not call!282479))))

(declare-fun b!3856757 () Bool)

(assert (=> b!3856757 (= e!2384022 (not (= (head!8118 (tail!5831 lt!1339269)) (c!671348 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269))))))))

(declare-fun b!3856758 () Bool)

(declare-fun e!2384019 () Bool)

(assert (=> b!3856758 (= e!2384019 (= lt!1339852 call!282479))))

(declare-fun b!3856759 () Bool)

(assert (=> b!3856759 (= e!2384021 (= (head!8118 (tail!5831 lt!1339269)) (c!671348 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269)))))))

(declare-fun b!3856760 () Bool)

(declare-fun res!1561350 () Bool)

(assert (=> b!3856760 (=> (not res!1561350) (not e!2384021))))

(assert (=> b!3856760 (= res!1561350 (isEmpty!24195 (tail!5831 (tail!5831 lt!1339269))))))

(declare-fun b!3856761 () Bool)

(declare-fun e!2384024 () Bool)

(assert (=> b!3856761 (= e!2384019 e!2384024)))

(declare-fun c!671689 () Bool)

(assert (=> b!3856761 (= c!671689 ((_ is EmptyLang!11225) (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269))))))

(declare-fun b!3856756 () Bool)

(declare-fun res!1561349 () Bool)

(assert (=> b!3856756 (=> res!1561349 e!2384018)))

(assert (=> b!3856756 (= res!1561349 e!2384021)))

(declare-fun res!1561353 () Bool)

(assert (=> b!3856756 (=> (not res!1561353) (not e!2384021))))

(assert (=> b!3856756 (= res!1561353 lt!1339852)))

(declare-fun d!1143617 () Bool)

(assert (=> d!1143617 e!2384019))

(declare-fun c!671688 () Bool)

(assert (=> d!1143617 (= c!671688 ((_ is EmptyExpr!11225) (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269))))))

(assert (=> d!1143617 (= lt!1339852 e!2384020)))

(declare-fun c!671687 () Bool)

(assert (=> d!1143617 (= c!671687 (isEmpty!24195 (tail!5831 lt!1339269)))))

(assert (=> d!1143617 (validRegex!5108 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269)))))

(assert (=> d!1143617 (= (matchR!5372 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269)) (tail!5831 lt!1339269)) lt!1339852)))

(declare-fun b!3856762 () Bool)

(assert (=> b!3856762 (= e!2384024 (not lt!1339852))))

(declare-fun b!3856763 () Bool)

(declare-fun res!1561356 () Bool)

(assert (=> b!3856763 (=> res!1561356 e!2384022)))

(assert (=> b!3856763 (= res!1561356 (not (isEmpty!24195 (tail!5831 (tail!5831 lt!1339269)))))))

(declare-fun b!3856764 () Bool)

(declare-fun res!1561352 () Bool)

(assert (=> b!3856764 (=> res!1561352 e!2384018)))

(assert (=> b!3856764 (= res!1561352 (not ((_ is ElementMatch!11225) (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269)))))))

(assert (=> b!3856764 (= e!2384024 e!2384018)))

(declare-fun bm!282474 () Bool)

(assert (=> bm!282474 (= call!282479 (isEmpty!24195 (tail!5831 lt!1339269)))))

(declare-fun b!3856765 () Bool)

(assert (=> b!3856765 (= e!2384020 (nullable!3909 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269))))))

(assert (= (and d!1143617 c!671687) b!3856765))

(assert (= (and d!1143617 (not c!671687)) b!3856753))

(assert (= (and d!1143617 c!671688) b!3856758))

(assert (= (and d!1143617 (not c!671688)) b!3856761))

(assert (= (and b!3856761 c!671689) b!3856762))

(assert (= (and b!3856761 (not c!671689)) b!3856764))

(assert (= (and b!3856764 (not res!1561352)) b!3856756))

(assert (= (and b!3856756 res!1561353) b!3856755))

(assert (= (and b!3856755 res!1561351) b!3856760))

(assert (= (and b!3856760 res!1561350) b!3856759))

(assert (= (and b!3856756 (not res!1561349)) b!3856754))

(assert (= (and b!3856754 res!1561355) b!3856752))

(assert (= (and b!3856752 (not res!1561354)) b!3856763))

(assert (= (and b!3856763 (not res!1561356)) b!3856757))

(assert (= (or b!3856758 b!3856752 b!3856755) bm!282474))

(assert (=> b!3856763 m!4410745))

(assert (=> b!3856763 m!4411993))

(assert (=> b!3856763 m!4411993))

(declare-fun m!4412457 () Bool)

(assert (=> b!3856763 m!4412457))

(assert (=> b!3856753 m!4410745))

(assert (=> b!3856753 m!4411989))

(assert (=> b!3856753 m!4410951))

(assert (=> b!3856753 m!4411989))

(declare-fun m!4412459 () Bool)

(assert (=> b!3856753 m!4412459))

(assert (=> b!3856753 m!4410745))

(assert (=> b!3856753 m!4411993))

(assert (=> b!3856753 m!4412459))

(assert (=> b!3856753 m!4411993))

(declare-fun m!4412461 () Bool)

(assert (=> b!3856753 m!4412461))

(assert (=> d!1143617 m!4410745))

(assert (=> d!1143617 m!4410949))

(assert (=> d!1143617 m!4410951))

(declare-fun m!4412463 () Bool)

(assert (=> d!1143617 m!4412463))

(assert (=> b!3856765 m!4410951))

(declare-fun m!4412465 () Bool)

(assert (=> b!3856765 m!4412465))

(assert (=> b!3856760 m!4410745))

(assert (=> b!3856760 m!4411993))

(assert (=> b!3856760 m!4411993))

(assert (=> b!3856760 m!4412457))

(assert (=> b!3856759 m!4410745))

(assert (=> b!3856759 m!4411989))

(assert (=> b!3856757 m!4410745))

(assert (=> b!3856757 m!4411989))

(assert (=> bm!282474 m!4410745))

(assert (=> bm!282474 m!4410949))

(assert (=> b!3855632 d!1143617))

(declare-fun bm!282483 () Bool)

(declare-fun call!282488 () Regex!11225)

(declare-fun call!282490 () Regex!11225)

(assert (=> bm!282483 (= call!282488 call!282490)))

(declare-fun b!3856786 () Bool)

(declare-fun e!2384035 () Regex!11225)

(assert (=> b!3856786 (= e!2384035 EmptyLang!11225)))

(declare-fun b!3856787 () Bool)

(declare-fun e!2384036 () Regex!11225)

(assert (=> b!3856787 (= e!2384036 (ite (= (head!8118 lt!1339269) (c!671348 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) EmptyExpr!11225 EmptyLang!11225))))

(declare-fun e!2384039 () Regex!11225)

(declare-fun call!282489 () Regex!11225)

(declare-fun call!282491 () Regex!11225)

(declare-fun b!3856788 () Bool)

(assert (=> b!3856788 (= e!2384039 (Union!11225 (Concat!17776 call!282489 (regTwo!22962 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) call!282491))))

(declare-fun c!671700 () Bool)

(declare-fun bm!282484 () Bool)

(declare-fun c!671703 () Bool)

(assert (=> bm!282484 (= call!282490 (derivativeStep!3408 (ite c!671700 (regOne!22963 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (ite c!671703 (reg!11554 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (regOne!22962 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (head!8118 lt!1339269)))))

(declare-fun bm!282485 () Bool)

(assert (=> bm!282485 (= call!282489 call!282488)))

(declare-fun d!1143619 () Bool)

(declare-fun lt!1339855 () Regex!11225)

(assert (=> d!1143619 (validRegex!5108 lt!1339855)))

(assert (=> d!1143619 (= lt!1339855 e!2384035)))

(declare-fun c!671701 () Bool)

(assert (=> d!1143619 (= c!671701 (or ((_ is EmptyExpr!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) ((_ is EmptyLang!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(assert (=> d!1143619 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143619 (= (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 lt!1339269)) lt!1339855)))

(declare-fun b!3856789 () Bool)

(assert (=> b!3856789 (= e!2384035 e!2384036)))

(declare-fun c!671702 () Bool)

(assert (=> b!3856789 (= c!671702 ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun bm!282486 () Bool)

(assert (=> bm!282486 (= call!282491 (derivativeStep!3408 (ite c!671700 (regTwo!22963 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (regTwo!22962 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) (head!8118 lt!1339269)))))

(declare-fun b!3856790 () Bool)

(assert (=> b!3856790 (= e!2384039 (Union!11225 (Concat!17776 call!282489 (regTwo!22962 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) EmptyLang!11225))))

(declare-fun b!3856791 () Bool)

(assert (=> b!3856791 (= c!671700 ((_ is Union!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun e!2384037 () Regex!11225)

(assert (=> b!3856791 (= e!2384036 e!2384037)))

(declare-fun b!3856792 () Bool)

(declare-fun e!2384038 () Regex!11225)

(assert (=> b!3856792 (= e!2384037 e!2384038)))

(assert (=> b!3856792 (= c!671703 ((_ is Star!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856793 () Bool)

(assert (=> b!3856793 (= e!2384037 (Union!11225 call!282490 call!282491))))

(declare-fun b!3856794 () Bool)

(declare-fun c!671704 () Bool)

(assert (=> b!3856794 (= c!671704 (nullable!3909 (regOne!22962 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(assert (=> b!3856794 (= e!2384038 e!2384039)))

(declare-fun b!3856795 () Bool)

(assert (=> b!3856795 (= e!2384038 (Concat!17776 call!282488 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (= (and d!1143619 c!671701) b!3856786))

(assert (= (and d!1143619 (not c!671701)) b!3856789))

(assert (= (and b!3856789 c!671702) b!3856787))

(assert (= (and b!3856789 (not c!671702)) b!3856791))

(assert (= (and b!3856791 c!671700) b!3856793))

(assert (= (and b!3856791 (not c!671700)) b!3856792))

(assert (= (and b!3856792 c!671703) b!3856795))

(assert (= (and b!3856792 (not c!671703)) b!3856794))

(assert (= (and b!3856794 c!671704) b!3856788))

(assert (= (and b!3856794 (not c!671704)) b!3856790))

(assert (= (or b!3856788 b!3856790) bm!282485))

(assert (= (or b!3856795 bm!282485) bm!282483))

(assert (= (or b!3856793 b!3856788) bm!282486))

(assert (= (or b!3856793 bm!282483) bm!282484))

(assert (=> bm!282484 m!4410741))

(declare-fun m!4412467 () Bool)

(assert (=> bm!282484 m!4412467))

(declare-fun m!4412469 () Bool)

(assert (=> d!1143619 m!4412469))

(assert (=> d!1143619 m!4410705))

(assert (=> bm!282486 m!4410741))

(declare-fun m!4412471 () Bool)

(assert (=> bm!282486 m!4412471))

(declare-fun m!4412473 () Bool)

(assert (=> b!3856794 m!4412473))

(assert (=> b!3855632 d!1143619))

(assert (=> b!3855632 d!1143437))

(assert (=> b!3855632 d!1143429))

(declare-fun d!1143621 () Bool)

(declare-fun e!2384042 () Bool)

(assert (=> d!1143621 e!2384042))

(declare-fun res!1561359 () Bool)

(assert (=> d!1143621 (=> (not res!1561359) (not e!2384042))))

(declare-fun lt!1339858 () BalanceConc!24656)

(assert (=> d!1143621 (= res!1561359 (= (list!15210 lt!1339858) lt!1339269))))

(declare-fun fromList!816 (List!40987) Conc!12531)

(assert (=> d!1143621 (= lt!1339858 (BalanceConc!24657 (fromList!816 lt!1339269)))))

(assert (=> d!1143621 (= (fromListB!2119 lt!1339269) lt!1339858)))

(declare-fun b!3856798 () Bool)

(assert (=> b!3856798 (= e!2384042 (isBalanced!3626 (fromList!816 lt!1339269)))))

(assert (= (and d!1143621 res!1561359) b!3856798))

(declare-fun m!4412475 () Bool)

(assert (=> d!1143621 m!4412475))

(declare-fun m!4412477 () Bool)

(assert (=> d!1143621 m!4412477))

(assert (=> b!3856798 m!4412477))

(assert (=> b!3856798 m!4412477))

(declare-fun m!4412479 () Bool)

(assert (=> b!3856798 m!4412479))

(assert (=> d!1142963 d!1143621))

(declare-fun lt!1339859 () List!40988)

(declare-fun e!2384043 () Bool)

(declare-fun b!3856802 () Bool)

(assert (=> b!3856802 (= e!2384043 (or (not (= suffixTokens!72 Nil!40864)) (= lt!1339859 (t!312565 prefixTokens!80))))))

(declare-fun b!3856801 () Bool)

(declare-fun res!1561361 () Bool)

(assert (=> b!3856801 (=> (not res!1561361) (not e!2384043))))

(assert (=> b!3856801 (= res!1561361 (= (size!30738 lt!1339859) (+ (size!30738 (t!312565 prefixTokens!80)) (size!30738 suffixTokens!72))))))

(declare-fun d!1143623 () Bool)

(assert (=> d!1143623 e!2384043))

(declare-fun res!1561360 () Bool)

(assert (=> d!1143623 (=> (not res!1561360) (not e!2384043))))

(assert (=> d!1143623 (= res!1561360 (= (content!6086 lt!1339859) ((_ map or) (content!6086 (t!312565 prefixTokens!80)) (content!6086 suffixTokens!72))))))

(declare-fun e!2384044 () List!40988)

(assert (=> d!1143623 (= lt!1339859 e!2384044)))

(declare-fun c!671706 () Bool)

(assert (=> d!1143623 (= c!671706 ((_ is Nil!40864) (t!312565 prefixTokens!80)))))

(assert (=> d!1143623 (= (++!10398 (t!312565 prefixTokens!80) suffixTokens!72) lt!1339859)))

(declare-fun b!3856800 () Bool)

(assert (=> b!3856800 (= e!2384044 (Cons!40864 (h!46284 (t!312565 prefixTokens!80)) (++!10398 (t!312565 (t!312565 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3856799 () Bool)

(assert (=> b!3856799 (= e!2384044 suffixTokens!72)))

(assert (= (and d!1143623 c!671706) b!3856799))

(assert (= (and d!1143623 (not c!671706)) b!3856800))

(assert (= (and d!1143623 res!1561360) b!3856801))

(assert (= (and b!3856801 res!1561361) b!3856802))

(declare-fun m!4412481 () Bool)

(assert (=> b!3856801 m!4412481))

(assert (=> b!3856801 m!4412299))

(assert (=> b!3856801 m!4410831))

(declare-fun m!4412483 () Bool)

(assert (=> d!1143623 m!4412483))

(assert (=> d!1143623 m!4412371))

(assert (=> d!1143623 m!4410837))

(declare-fun m!4412485 () Bool)

(assert (=> b!3856800 m!4412485))

(assert (=> b!3855521 d!1143623))

(declare-fun d!1143625 () Bool)

(declare-fun c!671707 () Bool)

(assert (=> d!1143625 (= c!671707 ((_ is Nil!40863) lt!1339278))))

(declare-fun e!2384045 () (InoxSet C!22636))

(assert (=> d!1143625 (= (content!6085 lt!1339278) e!2384045)))

(declare-fun b!3856803 () Bool)

(assert (=> b!3856803 (= e!2384045 ((as const (Array C!22636 Bool)) false))))

(declare-fun b!3856804 () Bool)

(assert (=> b!3856804 (= e!2384045 ((_ map or) (store ((as const (Array C!22636 Bool)) false) (h!46283 lt!1339278) true) (content!6085 (t!312564 lt!1339278))))))

(assert (= (and d!1143625 c!671707) b!3856803))

(assert (= (and d!1143625 (not c!671707)) b!3856804))

(declare-fun m!4412487 () Bool)

(assert (=> b!3856804 m!4412487))

(declare-fun m!4412489 () Bool)

(assert (=> b!3856804 m!4412489))

(assert (=> d!1142907 d!1143625))

(declare-fun d!1143627 () Bool)

(declare-fun c!671708 () Bool)

(assert (=> d!1143627 (= c!671708 ((_ is Nil!40863) lt!1339269))))

(declare-fun e!2384046 () (InoxSet C!22636))

(assert (=> d!1143627 (= (content!6085 lt!1339269) e!2384046)))

(declare-fun b!3856805 () Bool)

(assert (=> b!3856805 (= e!2384046 ((as const (Array C!22636 Bool)) false))))

(declare-fun b!3856806 () Bool)

(assert (=> b!3856806 (= e!2384046 ((_ map or) (store ((as const (Array C!22636 Bool)) false) (h!46283 lt!1339269) true) (content!6085 (t!312564 lt!1339269))))))

(assert (= (and d!1143627 c!671708) b!3856805))

(assert (= (and d!1143627 (not c!671708)) b!3856806))

(declare-fun m!4412491 () Bool)

(assert (=> b!3856806 m!4412491))

(assert (=> b!3856806 m!4412109))

(assert (=> d!1142907 d!1143627))

(declare-fun d!1143629 () Bool)

(declare-fun c!671709 () Bool)

(assert (=> d!1143629 (= c!671709 ((_ is Nil!40863) (_2!23164 (v!39033 lt!1339271))))))

(declare-fun e!2384047 () (InoxSet C!22636))

(assert (=> d!1143629 (= (content!6085 (_2!23164 (v!39033 lt!1339271))) e!2384047)))

(declare-fun b!3856807 () Bool)

(assert (=> b!3856807 (= e!2384047 ((as const (Array C!22636 Bool)) false))))

(declare-fun b!3856808 () Bool)

(assert (=> b!3856808 (= e!2384047 ((_ map or) (store ((as const (Array C!22636 Bool)) false) (h!46283 (_2!23164 (v!39033 lt!1339271))) true) (content!6085 (t!312564 (_2!23164 (v!39033 lt!1339271))))))))

(assert (= (and d!1143629 c!671709) b!3856807))

(assert (= (and d!1143629 (not c!671709)) b!3856808))

(declare-fun m!4412493 () Bool)

(assert (=> b!3856808 m!4412493))

(declare-fun m!4412495 () Bool)

(assert (=> b!3856808 m!4412495))

(assert (=> d!1142907 d!1143629))

(assert (=> d!1143037 d!1143407))

(assert (=> d!1143037 d!1143491))

(declare-fun b!3856809 () Bool)

(declare-fun e!2384050 () Bool)

(declare-fun lt!1339862 () tuple2!40058)

(assert (=> b!3856809 (= e!2384050 (= (_2!23163 lt!1339862) (_2!23164 (v!39033 lt!1339363))))))

(declare-fun b!3856810 () Bool)

(declare-fun e!2384049 () Bool)

(assert (=> b!3856810 (= e!2384050 e!2384049)))

(declare-fun res!1561362 () Bool)

(assert (=> b!3856810 (= res!1561362 (< (size!30736 (_2!23163 lt!1339862)) (size!30736 (_2!23164 (v!39033 lt!1339363)))))))

(assert (=> b!3856810 (=> (not res!1561362) (not e!2384049))))

(declare-fun d!1143631 () Bool)

(assert (=> d!1143631 e!2384050))

(declare-fun c!671710 () Bool)

(assert (=> d!1143631 (= c!671710 (> (size!30738 (_1!23163 lt!1339862)) 0))))

(declare-fun e!2384048 () tuple2!40058)

(assert (=> d!1143631 (= lt!1339862 e!2384048)))

(declare-fun c!671711 () Bool)

(declare-fun lt!1339861 () Option!8738)

(assert (=> d!1143631 (= c!671711 ((_ is Some!8737) lt!1339861))))

(assert (=> d!1143631 (= lt!1339861 (maxPrefix!3213 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339363))))))

(assert (=> d!1143631 (= (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339363))) lt!1339862)))

(declare-fun b!3856811 () Bool)

(assert (=> b!3856811 (= e!2384049 (not (isEmpty!24196 (_1!23163 lt!1339862))))))

(declare-fun b!3856812 () Bool)

(assert (=> b!3856812 (= e!2384048 (tuple2!40059 Nil!40864 (_2!23164 (v!39033 lt!1339363))))))

(declare-fun b!3856813 () Bool)

(declare-fun lt!1339860 () tuple2!40058)

(assert (=> b!3856813 (= e!2384048 (tuple2!40059 (Cons!40864 (_1!23164 (v!39033 lt!1339861)) (_1!23163 lt!1339860)) (_2!23163 lt!1339860)))))

(assert (=> b!3856813 (= lt!1339860 (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339861))))))

(assert (= (and d!1143631 c!671711) b!3856813))

(assert (= (and d!1143631 (not c!671711)) b!3856812))

(assert (= (and d!1143631 c!671710) b!3856810))

(assert (= (and d!1143631 (not c!671710)) b!3856809))

(assert (= (and b!3856810 res!1561362) b!3856811))

(declare-fun m!4412497 () Bool)

(assert (=> b!3856810 m!4412497))

(declare-fun m!4412499 () Bool)

(assert (=> b!3856810 m!4412499))

(declare-fun m!4412501 () Bool)

(assert (=> d!1143631 m!4412501))

(declare-fun m!4412503 () Bool)

(assert (=> d!1143631 m!4412503))

(declare-fun m!4412505 () Bool)

(assert (=> b!3856811 m!4412505))

(declare-fun m!4412507 () Bool)

(assert (=> b!3856813 m!4412507))

(assert (=> b!3855511 d!1143631))

(declare-fun d!1143633 () Bool)

(declare-fun lt!1339863 () Int)

(assert (=> d!1143633 (>= lt!1339863 0)))

(declare-fun e!2384051 () Int)

(assert (=> d!1143633 (= lt!1339863 e!2384051)))

(declare-fun c!671712 () Bool)

(assert (=> d!1143633 (= c!671712 ((_ is Nil!40863) (t!312564 suffix!1176)))))

(assert (=> d!1143633 (= (size!30736 (t!312564 suffix!1176)) lt!1339863)))

(declare-fun b!3856814 () Bool)

(assert (=> b!3856814 (= e!2384051 0)))

(declare-fun b!3856815 () Bool)

(assert (=> b!3856815 (= e!2384051 (+ 1 (size!30736 (t!312564 (t!312564 suffix!1176)))))))

(assert (= (and d!1143633 c!671712) b!3856814))

(assert (= (and d!1143633 (not c!671712)) b!3856815))

(declare-fun m!4412509 () Bool)

(assert (=> b!3856815 m!4412509))

(assert (=> b!3855559 d!1143633))

(declare-fun b!3856816 () Bool)

(declare-fun res!1561363 () Bool)

(declare-fun e!2384052 () Bool)

(assert (=> b!3856816 (=> res!1561363 e!2384052)))

(assert (=> b!3856816 (= res!1561363 (not ((_ is IntegerValue!19652) (value!200754 (h!46284 (t!312565 suffixTokens!72))))))))

(declare-fun e!2384054 () Bool)

(assert (=> b!3856816 (= e!2384054 e!2384052)))

(declare-fun d!1143635 () Bool)

(declare-fun c!671713 () Bool)

(assert (=> d!1143635 (= c!671713 ((_ is IntegerValue!19650) (value!200754 (h!46284 (t!312565 suffixTokens!72)))))))

(declare-fun e!2384053 () Bool)

(assert (=> d!1143635 (= (inv!21 (value!200754 (h!46284 (t!312565 suffixTokens!72)))) e!2384053)))

(declare-fun b!3856817 () Bool)

(assert (=> b!3856817 (= e!2384053 (inv!16 (value!200754 (h!46284 (t!312565 suffixTokens!72)))))))

(declare-fun b!3856818 () Bool)

(assert (=> b!3856818 (= e!2384053 e!2384054)))

(declare-fun c!671714 () Bool)

(assert (=> b!3856818 (= c!671714 ((_ is IntegerValue!19651) (value!200754 (h!46284 (t!312565 suffixTokens!72)))))))

(declare-fun b!3856819 () Bool)

(assert (=> b!3856819 (= e!2384052 (inv!15 (value!200754 (h!46284 (t!312565 suffixTokens!72)))))))

(declare-fun b!3856820 () Bool)

(assert (=> b!3856820 (= e!2384054 (inv!17 (value!200754 (h!46284 (t!312565 suffixTokens!72)))))))

(assert (= (and d!1143635 c!671713) b!3856817))

(assert (= (and d!1143635 (not c!671713)) b!3856818))

(assert (= (and b!3856818 c!671714) b!3856820))

(assert (= (and b!3856818 (not c!671714)) b!3856816))

(assert (= (and b!3856816 (not res!1561363)) b!3856819))

(declare-fun m!4412511 () Bool)

(assert (=> b!3856817 m!4412511))

(declare-fun m!4412513 () Bool)

(assert (=> b!3856819 m!4412513))

(declare-fun m!4412515 () Bool)

(assert (=> b!3856820 m!4412515))

(assert (=> b!3855824 d!1143635))

(declare-fun d!1143637 () Bool)

(declare-fun c!671715 () Bool)

(assert (=> d!1143637 (= c!671715 ((_ is Node!12531) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271)))))))))

(declare-fun e!2384055 () Bool)

(assert (=> d!1143637 (= (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271)))))) e!2384055)))

(declare-fun b!3856821 () Bool)

(assert (=> b!3856821 (= e!2384055 (inv!55026 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271)))))))))

(declare-fun b!3856822 () Bool)

(declare-fun e!2384056 () Bool)

(assert (=> b!3856822 (= e!2384055 e!2384056)))

(declare-fun res!1561364 () Bool)

(assert (=> b!3856822 (= res!1561364 (not ((_ is Leaf!19398) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271))))))))))

(assert (=> b!3856822 (=> res!1561364 e!2384056)))

(declare-fun b!3856823 () Bool)

(assert (=> b!3856823 (= e!2384056 (inv!55027 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271)))))))))

(assert (= (and d!1143637 c!671715) b!3856821))

(assert (= (and d!1143637 (not c!671715)) b!3856822))

(assert (= (and b!3856822 (not res!1561364)) b!3856823))

(declare-fun m!4412517 () Bool)

(assert (=> b!3856821 m!4412517))

(declare-fun m!4412519 () Bool)

(assert (=> b!3856823 m!4412519))

(assert (=> b!3855360 d!1143637))

(assert (=> b!3855644 d!1143415))

(declare-fun bs!583104 () Bool)

(declare-fun d!1143639 () Bool)

(assert (= bs!583104 (and d!1143639 d!1143233)))

(declare-fun lambda!126238 () Int)

(assert (=> bs!583104 (= (and (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))))) (= lambda!126238 lambda!126223))))

(declare-fun bs!583105 () Bool)

(assert (= bs!583105 (and d!1143639 d!1143443)))

(assert (=> bs!583105 (= (and (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (= lambda!126238 lambda!126229))))

(declare-fun bs!583106 () Bool)

(assert (= bs!583106 (and d!1143639 d!1143597)))

(assert (=> bs!583106 (= (and (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (h!46285 rules!2768)))) (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (h!46285 rules!2768))))) (= lambda!126238 lambda!126237))))

(assert (=> d!1143639 true))

(assert (=> d!1143639 (< (dynLambda!17638 order!22183 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) (dynLambda!17639 order!22185 lambda!126238))))

(assert (=> d!1143639 true))

(assert (=> d!1143639 (< (dynLambda!17640 order!22187 (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) (dynLambda!17639 order!22185 lambda!126238))))

(assert (=> d!1143639 (= (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) (Forall!1436 lambda!126238))))

(declare-fun bs!583107 () Bool)

(assert (= bs!583107 d!1143639))

(declare-fun m!4412521 () Bool)

(assert (=> bs!583107 m!4412521))

(assert (=> d!1143077 d!1143639))

(declare-fun d!1143641 () Bool)

(declare-fun lt!1339864 () Int)

(assert (=> d!1143641 (>= lt!1339864 0)))

(declare-fun e!2384057 () Int)

(assert (=> d!1143641 (= lt!1339864 e!2384057)))

(declare-fun c!671716 () Bool)

(assert (=> d!1143641 (= c!671716 ((_ is Nil!40863) (originalCharacters!6920 (h!46284 suffixTokens!72))))))

(assert (=> d!1143641 (= (size!30736 (originalCharacters!6920 (h!46284 suffixTokens!72))) lt!1339864)))

(declare-fun b!3856824 () Bool)

(assert (=> b!3856824 (= e!2384057 0)))

(declare-fun b!3856825 () Bool)

(assert (=> b!3856825 (= e!2384057 (+ 1 (size!30736 (t!312564 (originalCharacters!6920 (h!46284 suffixTokens!72))))))))

(assert (= (and d!1143641 c!671716) b!3856824))

(assert (= (and d!1143641 (not c!671716)) b!3856825))

(declare-fun m!4412523 () Bool)

(assert (=> b!3856825 m!4412523))

(assert (=> b!3855493 d!1143641))

(declare-fun b!3856826 () Bool)

(declare-fun e!2384063 () Bool)

(declare-fun e!2384062 () Bool)

(assert (=> b!3856826 (= e!2384063 e!2384062)))

(declare-fun res!1561370 () Bool)

(assert (=> b!3856826 (=> res!1561370 e!2384062)))

(declare-fun call!282492 () Bool)

(assert (=> b!3856826 (= res!1561370 call!282492)))

(declare-fun b!3856827 () Bool)

(declare-fun e!2384060 () Bool)

(assert (=> b!3856827 (= e!2384060 (matchR!5372 (derivativeStep!3408 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (head!8118 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441)))))) (tail!5831 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441)))))))))

(declare-fun b!3856828 () Bool)

(declare-fun e!2384058 () Bool)

(assert (=> b!3856828 (= e!2384058 e!2384063)))

(declare-fun res!1561371 () Bool)

(assert (=> b!3856828 (=> (not res!1561371) (not e!2384063))))

(declare-fun lt!1339865 () Bool)

(assert (=> b!3856828 (= res!1561371 (not lt!1339865))))

(declare-fun b!3856829 () Bool)

(declare-fun res!1561367 () Bool)

(declare-fun e!2384061 () Bool)

(assert (=> b!3856829 (=> (not res!1561367) (not e!2384061))))

(assert (=> b!3856829 (= res!1561367 (not call!282492))))

(declare-fun b!3856831 () Bool)

(assert (=> b!3856831 (= e!2384062 (not (= (head!8118 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))) (c!671348 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))))

(declare-fun b!3856832 () Bool)

(declare-fun e!2384059 () Bool)

(assert (=> b!3856832 (= e!2384059 (= lt!1339865 call!282492))))

(declare-fun b!3856833 () Bool)

(assert (=> b!3856833 (= e!2384061 (= (head!8118 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))) (c!671348 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(declare-fun b!3856834 () Bool)

(declare-fun res!1561366 () Bool)

(assert (=> b!3856834 (=> (not res!1561366) (not e!2384061))))

(assert (=> b!3856834 (= res!1561366 (isEmpty!24195 (tail!5831 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441)))))))))

(declare-fun b!3856835 () Bool)

(declare-fun e!2384064 () Bool)

(assert (=> b!3856835 (= e!2384059 e!2384064)))

(declare-fun c!671719 () Bool)

(assert (=> b!3856835 (= c!671719 ((_ is EmptyLang!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(declare-fun b!3856830 () Bool)

(declare-fun res!1561365 () Bool)

(assert (=> b!3856830 (=> res!1561365 e!2384058)))

(assert (=> b!3856830 (= res!1561365 e!2384061)))

(declare-fun res!1561369 () Bool)

(assert (=> b!3856830 (=> (not res!1561369) (not e!2384061))))

(assert (=> b!3856830 (= res!1561369 lt!1339865)))

(declare-fun d!1143643 () Bool)

(assert (=> d!1143643 e!2384059))

(declare-fun c!671718 () Bool)

(assert (=> d!1143643 (= c!671718 ((_ is EmptyExpr!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (=> d!1143643 (= lt!1339865 e!2384060)))

(declare-fun c!671717 () Bool)

(assert (=> d!1143643 (= c!671717 (isEmpty!24195 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))))))

(assert (=> d!1143643 (validRegex!5108 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143643 (= (matchR!5372 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))) (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))) lt!1339865)))

(declare-fun b!3856836 () Bool)

(assert (=> b!3856836 (= e!2384064 (not lt!1339865))))

(declare-fun b!3856837 () Bool)

(declare-fun res!1561372 () Bool)

(assert (=> b!3856837 (=> res!1561372 e!2384062)))

(assert (=> b!3856837 (= res!1561372 (not (isEmpty!24195 (tail!5831 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))))))))

(declare-fun b!3856838 () Bool)

(declare-fun res!1561368 () Bool)

(assert (=> b!3856838 (=> res!1561368 e!2384058)))

(assert (=> b!3856838 (= res!1561368 (not ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))))))

(assert (=> b!3856838 (= e!2384064 e!2384058)))

(declare-fun bm!282487 () Bool)

(assert (=> bm!282487 (= call!282492 (isEmpty!24195 (list!15210 (charsOf!4148 (_1!23164 (get!13520 lt!1339441))))))))

(declare-fun b!3856839 () Bool)

(assert (=> b!3856839 (= e!2384060 (nullable!3909 (regex!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))))

(assert (= (and d!1143643 c!671717) b!3856839))

(assert (= (and d!1143643 (not c!671717)) b!3856827))

(assert (= (and d!1143643 c!671718) b!3856832))

(assert (= (and d!1143643 (not c!671718)) b!3856835))

(assert (= (and b!3856835 c!671719) b!3856836))

(assert (= (and b!3856835 (not c!671719)) b!3856838))

(assert (= (and b!3856838 (not res!1561368)) b!3856830))

(assert (= (and b!3856830 res!1561369) b!3856829))

(assert (= (and b!3856829 res!1561367) b!3856834))

(assert (= (and b!3856834 res!1561366) b!3856833))

(assert (= (and b!3856830 (not res!1561365)) b!3856828))

(assert (= (and b!3856828 res!1561371) b!3856826))

(assert (= (and b!3856826 (not res!1561370)) b!3856837))

(assert (= (and b!3856837 (not res!1561372)) b!3856831))

(assert (= (or b!3856832 b!3856826 b!3856829) bm!282487))

(assert (=> b!3856837 m!4411079))

(declare-fun m!4412525 () Bool)

(assert (=> b!3856837 m!4412525))

(assert (=> b!3856837 m!4412525))

(declare-fun m!4412527 () Bool)

(assert (=> b!3856837 m!4412527))

(assert (=> b!3856827 m!4411079))

(declare-fun m!4412529 () Bool)

(assert (=> b!3856827 m!4412529))

(assert (=> b!3856827 m!4412529))

(declare-fun m!4412531 () Bool)

(assert (=> b!3856827 m!4412531))

(assert (=> b!3856827 m!4411079))

(assert (=> b!3856827 m!4412525))

(assert (=> b!3856827 m!4412531))

(assert (=> b!3856827 m!4412525))

(declare-fun m!4412533 () Bool)

(assert (=> b!3856827 m!4412533))

(assert (=> d!1143643 m!4411079))

(declare-fun m!4412535 () Bool)

(assert (=> d!1143643 m!4412535))

(assert (=> d!1143643 m!4410705))

(assert (=> b!3856839 m!4410707))

(assert (=> b!3856834 m!4411079))

(assert (=> b!3856834 m!4412525))

(assert (=> b!3856834 m!4412525))

(assert (=> b!3856834 m!4412527))

(assert (=> b!3856833 m!4411079))

(assert (=> b!3856833 m!4412529))

(assert (=> b!3856831 m!4411079))

(assert (=> b!3856831 m!4412529))

(assert (=> bm!282487 m!4411079))

(assert (=> bm!282487 m!4412535))

(assert (=> b!3855795 d!1143643))

(assert (=> b!3855795 d!1143527))

(assert (=> b!3855795 d!1143529))

(assert (=> b!3855795 d!1143419))

(declare-fun d!1143645 () Bool)

(declare-fun lt!1339866 () Int)

(assert (=> d!1143645 (>= lt!1339866 0)))

(declare-fun e!2384065 () Int)

(assert (=> d!1143645 (= lt!1339866 e!2384065)))

(declare-fun c!671720 () Bool)

(assert (=> d!1143645 (= c!671720 ((_ is Nil!40863) lt!1339270))))

(assert (=> d!1143645 (= (size!30736 lt!1339270) lt!1339866)))

(declare-fun b!3856840 () Bool)

(assert (=> b!3856840 (= e!2384065 0)))

(declare-fun b!3856841 () Bool)

(assert (=> b!3856841 (= e!2384065 (+ 1 (size!30736 (t!312564 lt!1339270))))))

(assert (= (and d!1143645 c!671720) b!3856840))

(assert (= (and d!1143645 (not c!671720)) b!3856841))

(declare-fun m!4412537 () Bool)

(assert (=> b!3856841 m!4412537))

(assert (=> b!3855465 d!1143645))

(assert (=> b!3855465 d!1142915))

(declare-fun bs!583108 () Bool)

(declare-fun d!1143647 () Bool)

(assert (= bs!583108 (and d!1143647 d!1143405)))

(declare-fun lambda!126239 () Int)

(assert (=> bs!583108 (= (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) (= lambda!126239 lambda!126226))))

(declare-fun bs!583109 () Bool)

(assert (= bs!583109 (and d!1143647 d!1143591)))

(assert (=> bs!583109 (= (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) (= lambda!126239 lambda!126236))))

(assert (=> d!1143647 true))

(assert (=> d!1143647 (< (dynLambda!17640 order!22187 (toValue!8744 (transformation!6320 (h!46285 rules!2768)))) (dynLambda!17642 order!22189 lambda!126239))))

(assert (=> d!1143647 (= (equivClasses!2608 (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (h!46285 rules!2768)))) (Forall2!1034 lambda!126239))))

(declare-fun bs!583110 () Bool)

(assert (= bs!583110 d!1143647))

(declare-fun m!4412539 () Bool)

(assert (=> bs!583110 m!4412539))

(assert (=> b!3855555 d!1143647))

(declare-fun d!1143649 () Bool)

(declare-fun lt!1339867 () Int)

(assert (=> d!1143649 (>= lt!1339867 0)))

(declare-fun e!2384066 () Int)

(assert (=> d!1143649 (= lt!1339867 e!2384066)))

(declare-fun c!671721 () Bool)

(assert (=> d!1143649 (= c!671721 ((_ is Nil!40863) (t!312564 (_2!23164 (v!39033 lt!1339271)))))))

(assert (=> d!1143649 (= (size!30736 (t!312564 (_2!23164 (v!39033 lt!1339271)))) lt!1339867)))

(declare-fun b!3856842 () Bool)

(assert (=> b!3856842 (= e!2384066 0)))

(declare-fun b!3856843 () Bool)

(assert (=> b!3856843 (= e!2384066 (+ 1 (size!30736 (t!312564 (t!312564 (_2!23164 (v!39033 lt!1339271)))))))))

(assert (= (and d!1143649 c!671721) b!3856842))

(assert (= (and d!1143649 (not c!671721)) b!3856843))

(declare-fun m!4412541 () Bool)

(assert (=> b!3856843 m!4412541))

(assert (=> b!3855561 d!1143649))

(declare-fun d!1143651 () Bool)

(assert (=> d!1143651 (= (inv!55015 (tag!7180 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (= (mod (str.len (value!200753 (tag!7180 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3855864 d!1143651))

(declare-fun d!1143653 () Bool)

(declare-fun res!1561373 () Bool)

(declare-fun e!2384067 () Bool)

(assert (=> d!1143653 (=> (not res!1561373) (not e!2384067))))

(assert (=> d!1143653 (= res!1561373 (semiInverseModEq!2709 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))))))

(assert (=> d!1143653 (= (inv!55018 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) e!2384067)))

(declare-fun b!3856844 () Bool)

(assert (=> b!3856844 (= e!2384067 (equivClasses!2608 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))))))

(assert (= (and d!1143653 res!1561373) b!3856844))

(declare-fun m!4412543 () Bool)

(assert (=> d!1143653 m!4412543))

(declare-fun m!4412545 () Bool)

(assert (=> b!3856844 m!4412545))

(assert (=> b!3855864 d!1143653))

(declare-fun b!3856845 () Bool)

(declare-fun e!2384070 () Bool)

(declare-fun lt!1339870 () tuple2!40058)

(assert (=> b!3856845 (= e!2384070 (= (_2!23163 lt!1339870) (_2!23164 (v!39033 lt!1339338))))))

(declare-fun b!3856846 () Bool)

(declare-fun e!2384069 () Bool)

(assert (=> b!3856846 (= e!2384070 e!2384069)))

(declare-fun res!1561374 () Bool)

(assert (=> b!3856846 (= res!1561374 (< (size!30736 (_2!23163 lt!1339870)) (size!30736 (_2!23164 (v!39033 lt!1339338)))))))

(assert (=> b!3856846 (=> (not res!1561374) (not e!2384069))))

(declare-fun d!1143655 () Bool)

(assert (=> d!1143655 e!2384070))

(declare-fun c!671722 () Bool)

(assert (=> d!1143655 (= c!671722 (> (size!30738 (_1!23163 lt!1339870)) 0))))

(declare-fun e!2384068 () tuple2!40058)

(assert (=> d!1143655 (= lt!1339870 e!2384068)))

(declare-fun c!671723 () Bool)

(declare-fun lt!1339869 () Option!8738)

(assert (=> d!1143655 (= c!671723 ((_ is Some!8737) lt!1339869))))

(assert (=> d!1143655 (= lt!1339869 (maxPrefix!3213 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339338))))))

(assert (=> d!1143655 (= (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339338))) lt!1339870)))

(declare-fun b!3856847 () Bool)

(assert (=> b!3856847 (= e!2384069 (not (isEmpty!24196 (_1!23163 lt!1339870))))))

(declare-fun b!3856848 () Bool)

(assert (=> b!3856848 (= e!2384068 (tuple2!40059 Nil!40864 (_2!23164 (v!39033 lt!1339338))))))

(declare-fun b!3856849 () Bool)

(declare-fun lt!1339868 () tuple2!40058)

(assert (=> b!3856849 (= e!2384068 (tuple2!40059 (Cons!40864 (_1!23164 (v!39033 lt!1339869)) (_1!23163 lt!1339868)) (_2!23163 lt!1339868)))))

(assert (=> b!3856849 (= lt!1339868 (lexList!1677 thiss!20629 rules!2768 (_2!23164 (v!39033 lt!1339869))))))

(assert (= (and d!1143655 c!671723) b!3856849))

(assert (= (and d!1143655 (not c!671723)) b!3856848))

(assert (= (and d!1143655 c!671722) b!3856846))

(assert (= (and d!1143655 (not c!671722)) b!3856845))

(assert (= (and b!3856846 res!1561374) b!3856847))

(declare-fun m!4412547 () Bool)

(assert (=> b!3856846 m!4412547))

(declare-fun m!4412549 () Bool)

(assert (=> b!3856846 m!4412549))

(declare-fun m!4412551 () Bool)

(assert (=> d!1143655 m!4412551))

(declare-fun m!4412553 () Bool)

(assert (=> d!1143655 m!4412553))

(declare-fun m!4412555 () Bool)

(assert (=> b!3856847 m!4412555))

(declare-fun m!4412557 () Bool)

(assert (=> b!3856849 m!4412557))

(assert (=> b!3855453 d!1143655))

(declare-fun d!1143657 () Bool)

(declare-fun lt!1339871 () Bool)

(assert (=> d!1143657 (= lt!1339871 (select (content!6089 rules!2768) (rule!9180 (_1!23164 (get!13520 lt!1339385)))))))

(declare-fun e!2384072 () Bool)

(assert (=> d!1143657 (= lt!1339871 e!2384072)))

(declare-fun res!1561376 () Bool)

(assert (=> d!1143657 (=> (not res!1561376) (not e!2384072))))

(assert (=> d!1143657 (= res!1561376 ((_ is Cons!40865) rules!2768))))

(assert (=> d!1143657 (= (contains!8259 rules!2768 (rule!9180 (_1!23164 (get!13520 lt!1339385)))) lt!1339871)))

(declare-fun b!3856850 () Bool)

(declare-fun e!2384071 () Bool)

(assert (=> b!3856850 (= e!2384072 e!2384071)))

(declare-fun res!1561375 () Bool)

(assert (=> b!3856850 (=> res!1561375 e!2384071)))

(assert (=> b!3856850 (= res!1561375 (= (h!46285 rules!2768) (rule!9180 (_1!23164 (get!13520 lt!1339385)))))))

(declare-fun b!3856851 () Bool)

(assert (=> b!3856851 (= e!2384071 (contains!8259 (t!312566 rules!2768) (rule!9180 (_1!23164 (get!13520 lt!1339385)))))))

(assert (= (and d!1143657 res!1561376) b!3856850))

(assert (= (and b!3856850 (not res!1561375)) b!3856851))

(assert (=> d!1143657 m!4412447))

(declare-fun m!4412559 () Bool)

(assert (=> d!1143657 m!4412559))

(declare-fun m!4412561 () Bool)

(assert (=> b!3856851 m!4412561))

(assert (=> b!3855548 d!1143657))

(assert (=> b!3855548 d!1143381))

(declare-fun d!1143659 () Bool)

(assert (=> d!1143659 (= (inv!15 (value!200754 (h!46284 prefixTokens!80))) (= (charsToBigInt!0 (text!46299 (value!200754 (h!46284 prefixTokens!80))) 0) (value!200749 (value!200754 (h!46284 prefixTokens!80)))))))

(declare-fun bs!583111 () Bool)

(assert (= bs!583111 d!1143659))

(declare-fun m!4412563 () Bool)

(assert (=> bs!583111 m!4412563))

(assert (=> b!3855569 d!1143659))

(assert (=> b!3855791 d!1143419))

(declare-fun d!1143661 () Bool)

(assert (=> d!1143661 (= (apply!9563 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441))))) (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441))))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441))))))))

(declare-fun b_lambda!112757 () Bool)

(assert (=> (not b_lambda!112757) (not d!1143661)))

(declare-fun t!312920 () Bool)

(declare-fun tb!223229 () Bool)

(assert (=> (and b!3855826 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312920) tb!223229))

(declare-fun result!271868 () Bool)

(assert (=> tb!223229 (= result!271868 (inv!21 (dynLambda!17634 (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441))))) (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441)))))))))

(declare-fun m!4412565 () Bool)

(assert (=> tb!223229 m!4412565))

(assert (=> d!1143661 t!312920))

(declare-fun b_and!288543 () Bool)

(assert (= b_and!288509 (and (=> t!312920 result!271868) b_and!288543)))

(declare-fun tb!223231 () Bool)

(declare-fun t!312922 () Bool)

(assert (=> (and b!3855259 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312922) tb!223231))

(declare-fun result!271870 () Bool)

(assert (= result!271870 result!271868))

(assert (=> d!1143661 t!312922))

(declare-fun b_and!288545 () Bool)

(assert (= b_and!288507 (and (=> t!312922 result!271870) b_and!288545)))

(declare-fun tb!223233 () Bool)

(declare-fun t!312924 () Bool)

(assert (=> (and b!3855865 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312924) tb!223233))

(declare-fun result!271872 () Bool)

(assert (= result!271872 result!271868))

(assert (=> d!1143661 t!312924))

(declare-fun b_and!288547 () Bool)

(assert (= b_and!288513 (and (=> t!312924 result!271872) b_and!288547)))

(declare-fun t!312926 () Bool)

(declare-fun tb!223235 () Bool)

(assert (=> (and b!3855256 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312926) tb!223235))

(declare-fun result!271874 () Bool)

(assert (= result!271874 result!271868))

(assert (=> d!1143661 t!312926))

(declare-fun b_and!288549 () Bool)

(assert (= b_and!288515 (and (=> t!312926 result!271874) b_and!288549)))

(declare-fun tb!223237 () Bool)

(declare-fun t!312928 () Bool)

(assert (=> (and b!3855853 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312928) tb!223237))

(declare-fun result!271876 () Bool)

(assert (= result!271876 result!271868))

(assert (=> d!1143661 t!312928))

(declare-fun b_and!288551 () Bool)

(assert (= b_and!288511 (and (=> t!312928 result!271876) b_and!288551)))

(declare-fun tb!223239 () Bool)

(declare-fun t!312930 () Bool)

(assert (=> (and b!3855241 (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312930) tb!223239))

(declare-fun result!271878 () Bool)

(assert (= result!271878 result!271868))

(assert (=> d!1143661 t!312930))

(declare-fun b_and!288553 () Bool)

(assert (= b_and!288517 (and (=> t!312930 result!271878) b_and!288553)))

(assert (=> d!1143661 m!4411083))

(declare-fun m!4412567 () Bool)

(assert (=> d!1143661 m!4412567))

(assert (=> b!3855791 d!1143661))

(declare-fun d!1143663 () Bool)

(assert (=> d!1143663 (= (seqFromList!4591 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441)))) (fromListB!2119 (originalCharacters!6920 (_1!23164 (get!13520 lt!1339441)))))))

(declare-fun bs!583112 () Bool)

(assert (= bs!583112 d!1143663))

(declare-fun m!4412569 () Bool)

(assert (=> bs!583112 m!4412569))

(assert (=> b!3855791 d!1143663))

(declare-fun d!1143665 () Bool)

(assert (=> d!1143665 (= (isEmpty!24196 (_1!23163 lt!1339394)) ((_ is Nil!40864) (_1!23163 lt!1339394)))))

(assert (=> b!3855573 d!1143665))

(declare-fun tp!1168929 () Bool)

(declare-fun b!3856860 () Bool)

(declare-fun tp!1168928 () Bool)

(declare-fun e!2384079 () Bool)

(assert (=> b!3856860 (= e!2384079 (and (inv!55022 (left!31501 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))))) tp!1168929 (inv!55022 (right!31831 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))))) tp!1168928))))

(declare-fun b!3856862 () Bool)

(declare-fun e!2384078 () Bool)

(declare-fun tp!1168927 () Bool)

(assert (=> b!3856862 (= e!2384078 tp!1168927)))

(declare-fun b!3856861 () Bool)

(declare-fun inv!55029 (IArray!25067) Bool)

(assert (=> b!3856861 (= e!2384079 (and (inv!55029 (xs!15837 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))))) e!2384078))))

(assert (=> b!3855802 (= tp!1168720 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80))))) e!2384079))))

(assert (= (and b!3855802 ((_ is Node!12531) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))))) b!3856860))

(assert (= b!3856861 b!3856862))

(assert (= (and b!3855802 ((_ is Leaf!19398) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (value!200754 (h!46284 prefixTokens!80)))))) b!3856861))

(declare-fun m!4412571 () Bool)

(assert (=> b!3856860 m!4412571))

(declare-fun m!4412573 () Bool)

(assert (=> b!3856860 m!4412573))

(declare-fun m!4412575 () Bool)

(assert (=> b!3856861 m!4412575))

(assert (=> b!3855802 m!4411127))

(declare-fun b!3856865 () Bool)

(declare-fun e!2384080 () Bool)

(declare-fun tp!1168934 () Bool)

(assert (=> b!3856865 (= e!2384080 tp!1168934)))

(declare-fun b!3856863 () Bool)

(assert (=> b!3856863 (= e!2384080 tp_is_empty!19421)))

(declare-fun b!3856866 () Bool)

(declare-fun tp!1168933 () Bool)

(declare-fun tp!1168931 () Bool)

(assert (=> b!3856866 (= e!2384080 (and tp!1168933 tp!1168931))))

(assert (=> b!3855855 (= tp!1168769 e!2384080)))

(declare-fun b!3856864 () Bool)

(declare-fun tp!1168930 () Bool)

(declare-fun tp!1168932 () Bool)

(assert (=> b!3856864 (= e!2384080 (and tp!1168930 tp!1168932))))

(assert (= (and b!3855855 ((_ is ElementMatch!11225) (regOne!22962 (regex!6320 (h!46285 rules!2768))))) b!3856863))

(assert (= (and b!3855855 ((_ is Concat!17776) (regOne!22962 (regex!6320 (h!46285 rules!2768))))) b!3856864))

(assert (= (and b!3855855 ((_ is Star!11225) (regOne!22962 (regex!6320 (h!46285 rules!2768))))) b!3856865))

(assert (= (and b!3855855 ((_ is Union!11225) (regOne!22962 (regex!6320 (h!46285 rules!2768))))) b!3856866))

(declare-fun b!3856869 () Bool)

(declare-fun e!2384081 () Bool)

(declare-fun tp!1168939 () Bool)

(assert (=> b!3856869 (= e!2384081 tp!1168939)))

(declare-fun b!3856867 () Bool)

(assert (=> b!3856867 (= e!2384081 tp_is_empty!19421)))

(declare-fun b!3856870 () Bool)

(declare-fun tp!1168938 () Bool)

(declare-fun tp!1168936 () Bool)

(assert (=> b!3856870 (= e!2384081 (and tp!1168938 tp!1168936))))

(assert (=> b!3855855 (= tp!1168771 e!2384081)))

(declare-fun b!3856868 () Bool)

(declare-fun tp!1168935 () Bool)

(declare-fun tp!1168937 () Bool)

(assert (=> b!3856868 (= e!2384081 (and tp!1168935 tp!1168937))))

(assert (= (and b!3855855 ((_ is ElementMatch!11225) (regTwo!22962 (regex!6320 (h!46285 rules!2768))))) b!3856867))

(assert (= (and b!3855855 ((_ is Concat!17776) (regTwo!22962 (regex!6320 (h!46285 rules!2768))))) b!3856868))

(assert (= (and b!3855855 ((_ is Star!11225) (regTwo!22962 (regex!6320 (h!46285 rules!2768))))) b!3856869))

(assert (= (and b!3855855 ((_ is Union!11225) (regTwo!22962 (regex!6320 (h!46285 rules!2768))))) b!3856870))

(declare-fun tp!1168941 () Bool)

(declare-fun b!3856871 () Bool)

(declare-fun tp!1168942 () Bool)

(declare-fun e!2384083 () Bool)

(assert (=> b!3856871 (= e!2384083 (and (inv!55022 (left!31501 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))))) tp!1168942 (inv!55022 (right!31831 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))))) tp!1168941))))

(declare-fun b!3856873 () Bool)

(declare-fun e!2384082 () Bool)

(declare-fun tp!1168940 () Bool)

(assert (=> b!3856873 (= e!2384082 tp!1168940)))

(declare-fun b!3856872 () Bool)

(assert (=> b!3856872 (= e!2384083 (and (inv!55029 (xs!15837 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))))) e!2384082))))

(assert (=> b!3855494 (= tp!1168654 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72))))) e!2384083))))

(assert (= (and b!3855494 ((_ is Node!12531) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))))) b!3856871))

(assert (= b!3856872 b!3856873))

(assert (= (and b!3855494 ((_ is Leaf!19398) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (value!200754 (h!46284 suffixTokens!72)))))) b!3856872))

(declare-fun m!4412577 () Bool)

(assert (=> b!3856871 m!4412577))

(declare-fun m!4412579 () Bool)

(assert (=> b!3856871 m!4412579))

(declare-fun m!4412581 () Bool)

(assert (=> b!3856872 m!4412581))

(assert (=> b!3855494 m!4410761))

(declare-fun b!3856876 () Bool)

(declare-fun e!2384084 () Bool)

(declare-fun tp!1168947 () Bool)

(assert (=> b!3856876 (= e!2384084 tp!1168947)))

(declare-fun b!3856874 () Bool)

(assert (=> b!3856874 (= e!2384084 tp_is_empty!19421)))

(declare-fun b!3856877 () Bool)

(declare-fun tp!1168946 () Bool)

(declare-fun tp!1168944 () Bool)

(assert (=> b!3856877 (= e!2384084 (and tp!1168946 tp!1168944))))

(assert (=> b!3855856 (= tp!1168773 e!2384084)))

(declare-fun b!3856875 () Bool)

(declare-fun tp!1168943 () Bool)

(declare-fun tp!1168945 () Bool)

(assert (=> b!3856875 (= e!2384084 (and tp!1168943 tp!1168945))))

(assert (= (and b!3855856 ((_ is ElementMatch!11225) (reg!11554 (regex!6320 (h!46285 rules!2768))))) b!3856874))

(assert (= (and b!3855856 ((_ is Concat!17776) (reg!11554 (regex!6320 (h!46285 rules!2768))))) b!3856875))

(assert (= (and b!3855856 ((_ is Star!11225) (reg!11554 (regex!6320 (h!46285 rules!2768))))) b!3856876))

(assert (= (and b!3855856 ((_ is Union!11225) (reg!11554 (regex!6320 (h!46285 rules!2768))))) b!3856877))

(declare-fun b!3856878 () Bool)

(declare-fun e!2384085 () Bool)

(declare-fun tp!1168948 () Bool)

(assert (=> b!3856878 (= e!2384085 (and tp_is_empty!19421 tp!1168948))))

(assert (=> b!3855842 (= tp!1168756 e!2384085)))

(assert (= (and b!3855842 ((_ is Cons!40863) (t!312564 (t!312564 prefix!426)))) b!3856878))

(declare-fun b!3856881 () Bool)

(declare-fun e!2384086 () Bool)

(declare-fun tp!1168953 () Bool)

(assert (=> b!3856881 (= e!2384086 tp!1168953)))

(declare-fun b!3856879 () Bool)

(assert (=> b!3856879 (= e!2384086 tp_is_empty!19421)))

(declare-fun b!3856882 () Bool)

(declare-fun tp!1168952 () Bool)

(declare-fun tp!1168950 () Bool)

(assert (=> b!3856882 (= e!2384086 (and tp!1168952 tp!1168950))))

(assert (=> b!3855852 (= tp!1168766 e!2384086)))

(declare-fun b!3856880 () Bool)

(declare-fun tp!1168949 () Bool)

(declare-fun tp!1168951 () Bool)

(assert (=> b!3856880 (= e!2384086 (and tp!1168949 tp!1168951))))

(assert (= (and b!3855852 ((_ is ElementMatch!11225) (regex!6320 (h!46285 (t!312566 rules!2768))))) b!3856879))

(assert (= (and b!3855852 ((_ is Concat!17776) (regex!6320 (h!46285 (t!312566 rules!2768))))) b!3856880))

(assert (= (and b!3855852 ((_ is Star!11225) (regex!6320 (h!46285 (t!312566 rules!2768))))) b!3856881))

(assert (= (and b!3855852 ((_ is Union!11225) (regex!6320 (h!46285 (t!312566 rules!2768))))) b!3856882))

(declare-fun b!3856885 () Bool)

(declare-fun e!2384087 () Bool)

(declare-fun tp!1168958 () Bool)

(assert (=> b!3856885 (= e!2384087 tp!1168958)))

(declare-fun b!3856883 () Bool)

(assert (=> b!3856883 (= e!2384087 tp_is_empty!19421)))

(declare-fun b!3856886 () Bool)

(declare-fun tp!1168957 () Bool)

(declare-fun tp!1168955 () Bool)

(assert (=> b!3856886 (= e!2384087 (and tp!1168957 tp!1168955))))

(assert (=> b!3855840 (= tp!1168755 e!2384087)))

(declare-fun b!3856884 () Bool)

(declare-fun tp!1168954 () Bool)

(declare-fun tp!1168956 () Bool)

(assert (=> b!3856884 (= e!2384087 (and tp!1168954 tp!1168956))))

(assert (= (and b!3855840 ((_ is ElementMatch!11225) (reg!11554 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856883))

(assert (= (and b!3855840 ((_ is Concat!17776) (reg!11554 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856884))

(assert (= (and b!3855840 ((_ is Star!11225) (reg!11554 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856885))

(assert (= (and b!3855840 ((_ is Union!11225) (reg!11554 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856886))

(declare-fun b!3856889 () Bool)

(declare-fun e!2384088 () Bool)

(declare-fun tp!1168963 () Bool)

(assert (=> b!3856889 (= e!2384088 tp!1168963)))

(declare-fun b!3856887 () Bool)

(assert (=> b!3856887 (= e!2384088 tp_is_empty!19421)))

(declare-fun b!3856890 () Bool)

(declare-fun tp!1168962 () Bool)

(declare-fun tp!1168960 () Bool)

(assert (=> b!3856890 (= e!2384088 (and tp!1168962 tp!1168960))))

(assert (=> b!3855839 (= tp!1168751 e!2384088)))

(declare-fun b!3856888 () Bool)

(declare-fun tp!1168959 () Bool)

(declare-fun tp!1168961 () Bool)

(assert (=> b!3856888 (= e!2384088 (and tp!1168959 tp!1168961))))

(assert (= (and b!3855839 ((_ is ElementMatch!11225) (regOne!22962 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856887))

(assert (= (and b!3855839 ((_ is Concat!17776) (regOne!22962 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856888))

(assert (= (and b!3855839 ((_ is Star!11225) (regOne!22962 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856889))

(assert (= (and b!3855839 ((_ is Union!11225) (regOne!22962 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856890))

(declare-fun b!3856893 () Bool)

(declare-fun e!2384089 () Bool)

(declare-fun tp!1168968 () Bool)

(assert (=> b!3856893 (= e!2384089 tp!1168968)))

(declare-fun b!3856891 () Bool)

(assert (=> b!3856891 (= e!2384089 tp_is_empty!19421)))

(declare-fun b!3856894 () Bool)

(declare-fun tp!1168967 () Bool)

(declare-fun tp!1168965 () Bool)

(assert (=> b!3856894 (= e!2384089 (and tp!1168967 tp!1168965))))

(assert (=> b!3855839 (= tp!1168753 e!2384089)))

(declare-fun b!3856892 () Bool)

(declare-fun tp!1168964 () Bool)

(declare-fun tp!1168966 () Bool)

(assert (=> b!3856892 (= e!2384089 (and tp!1168964 tp!1168966))))

(assert (= (and b!3855839 ((_ is ElementMatch!11225) (regTwo!22962 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856891))

(assert (= (and b!3855839 ((_ is Concat!17776) (regTwo!22962 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856892))

(assert (= (and b!3855839 ((_ is Star!11225) (regTwo!22962 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856893))

(assert (= (and b!3855839 ((_ is Union!11225) (regTwo!22962 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856894))

(declare-fun b!3856898 () Bool)

(declare-fun b_free!103525 () Bool)

(declare-fun b_next!104229 () Bool)

(assert (=> b!3856898 (= b_free!103525 (not b_next!104229))))

(declare-fun tb!223241 () Bool)

(declare-fun t!312932 () Bool)

(assert (=> (and b!3856898 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312932) tb!223241))

(declare-fun result!271882 () Bool)

(assert (= result!271882 result!271808))

(assert (=> d!1143433 t!312932))

(declare-fun t!312934 () Bool)

(declare-fun tb!223243 () Bool)

(assert (=> (and b!3856898 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312934) tb!223243))

(declare-fun result!271884 () Bool)

(assert (= result!271884 result!271832))

(assert (=> d!1143443 t!312934))

(declare-fun t!312936 () Bool)

(declare-fun tb!223245 () Bool)

(assert (=> (and b!3856898 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312936) tb!223245))

(declare-fun result!271886 () Bool)

(assert (= result!271886 result!271524))

(assert (=> d!1142987 t!312936))

(assert (=> d!1143451 t!312934))

(declare-fun tb!223247 () Bool)

(declare-fun t!312938 () Bool)

(assert (=> (and b!3856898 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312938) tb!223247))

(declare-fun result!271888 () Bool)

(assert (= result!271888 result!271868))

(assert (=> d!1143661 t!312938))

(declare-fun b_and!288555 () Bool)

(declare-fun tp!1168972 () Bool)

(assert (=> b!3856898 (= tp!1168972 (and (=> t!312938 result!271888) (=> t!312934 result!271884) (=> t!312936 result!271886) (=> t!312932 result!271882) b_and!288555))))

(declare-fun b_free!103527 () Bool)

(declare-fun b_next!104231 () Bool)

(assert (=> b!3856898 (= b_free!103527 (not b_next!104231))))

(declare-fun t!312940 () Bool)

(declare-fun tb!223249 () Bool)

(assert (=> (and b!3856898 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312940) tb!223249))

(declare-fun result!271890 () Bool)

(assert (= result!271890 result!271796))

(assert (=> b!3856454 t!312940))

(declare-fun tb!223251 () Bool)

(declare-fun t!312942 () Bool)

(assert (=> (and b!3856898 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312942) tb!223251))

(declare-fun result!271892 () Bool)

(assert (= result!271892 result!271502))

(assert (=> d!1142947 t!312942))

(declare-fun tb!223253 () Bool)

(declare-fun t!312944 () Bool)

(assert (=> (and b!3856898 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312944) tb!223253))

(declare-fun result!271894 () Bool)

(assert (= result!271894 result!271784))

(assert (=> d!1143385 t!312944))

(declare-fun tb!223255 () Bool)

(declare-fun t!312946 () Bool)

(assert (=> (and b!3856898 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312946) tb!223255))

(declare-fun result!271896 () Bool)

(assert (= result!271896 result!271844))

(assert (=> b!3856640 t!312946))

(declare-fun t!312948 () Bool)

(declare-fun tb!223257 () Bool)

(assert (=> (and b!3856898 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312948) tb!223257))

(declare-fun result!271898 () Bool)

(assert (= result!271898 result!271532))

(assert (=> b!3855492 t!312948))

(declare-fun t!312950 () Bool)

(declare-fun tb!223259 () Bool)

(assert (=> (and b!3856898 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312950) tb!223259))

(declare-fun result!271900 () Bool)

(assert (= result!271900 result!271576))

(assert (=> b!3855800 t!312950))

(declare-fun t!312952 () Bool)

(declare-fun tb!223261 () Bool)

(assert (=> (and b!3856898 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312952) tb!223261))

(declare-fun result!271902 () Bool)

(assert (= result!271902 result!271820))

(assert (=> d!1143443 t!312952))

(declare-fun t!312954 () Bool)

(declare-fun tb!223263 () Bool)

(assert (=> (and b!3856898 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312954) tb!223263))

(declare-fun result!271904 () Bool)

(assert (= result!271904 result!271856))

(assert (=> d!1143529 t!312954))

(declare-fun tp!1168973 () Bool)

(declare-fun b_and!288557 () Bool)

(assert (=> b!3856898 (= tp!1168973 (and (=> t!312946 result!271896) (=> t!312944 result!271894) (=> t!312942 result!271892) (=> t!312940 result!271890) (=> t!312948 result!271898) (=> t!312954 result!271904) (=> t!312952 result!271902) (=> t!312950 result!271900) b_and!288557))))

(declare-fun b!3856897 () Bool)

(declare-fun e!2384091 () Bool)

(declare-fun tp!1168971 () Bool)

(declare-fun e!2384093 () Bool)

(assert (=> b!3856897 (= e!2384093 (and tp!1168971 (inv!55015 (tag!7180 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (inv!55018 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) e!2384091))))

(assert (=> b!3856898 (= e!2384091 (and tp!1168972 tp!1168973))))

(declare-fun e!2384090 () Bool)

(declare-fun b!3856896 () Bool)

(declare-fun tp!1168970 () Bool)

(assert (=> b!3856896 (= e!2384090 (and (inv!21 (value!200754 (h!46284 (t!312565 (t!312565 suffixTokens!72))))) e!2384093 tp!1168970))))

(declare-fun e!2384095 () Bool)

(declare-fun tp!1168969 () Bool)

(declare-fun b!3856895 () Bool)

(assert (=> b!3856895 (= e!2384095 (and (inv!55019 (h!46284 (t!312565 (t!312565 suffixTokens!72)))) e!2384090 tp!1168969))))

(assert (=> b!3855823 (= tp!1168735 e!2384095)))

(assert (= b!3856897 b!3856898))

(assert (= b!3856896 b!3856897))

(assert (= b!3856895 b!3856896))

(assert (= (and b!3855823 ((_ is Cons!40864) (t!312565 (t!312565 suffixTokens!72)))) b!3856895))

(declare-fun m!4412583 () Bool)

(assert (=> b!3856897 m!4412583))

(declare-fun m!4412585 () Bool)

(assert (=> b!3856897 m!4412585))

(declare-fun m!4412587 () Bool)

(assert (=> b!3856896 m!4412587))

(declare-fun m!4412589 () Bool)

(assert (=> b!3856895 m!4412589))

(declare-fun b!3856901 () Bool)

(declare-fun e!2384096 () Bool)

(declare-fun tp!1168978 () Bool)

(assert (=> b!3856901 (= e!2384096 tp!1168978)))

(declare-fun b!3856899 () Bool)

(assert (=> b!3856899 (= e!2384096 tp_is_empty!19421)))

(declare-fun b!3856902 () Bool)

(declare-fun tp!1168977 () Bool)

(declare-fun tp!1168975 () Bool)

(assert (=> b!3856902 (= e!2384096 (and tp!1168977 tp!1168975))))

(assert (=> b!3855841 (= tp!1168754 e!2384096)))

(declare-fun b!3856900 () Bool)

(declare-fun tp!1168974 () Bool)

(declare-fun tp!1168976 () Bool)

(assert (=> b!3856900 (= e!2384096 (and tp!1168974 tp!1168976))))

(assert (= (and b!3855841 ((_ is ElementMatch!11225) (regOne!22963 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856899))

(assert (= (and b!3855841 ((_ is Concat!17776) (regOne!22963 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856900))

(assert (= (and b!3855841 ((_ is Star!11225) (regOne!22963 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856901))

(assert (= (and b!3855841 ((_ is Union!11225) (regOne!22963 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856902))

(declare-fun b!3856905 () Bool)

(declare-fun e!2384097 () Bool)

(declare-fun tp!1168983 () Bool)

(assert (=> b!3856905 (= e!2384097 tp!1168983)))

(declare-fun b!3856903 () Bool)

(assert (=> b!3856903 (= e!2384097 tp_is_empty!19421)))

(declare-fun b!3856906 () Bool)

(declare-fun tp!1168982 () Bool)

(declare-fun tp!1168980 () Bool)

(assert (=> b!3856906 (= e!2384097 (and tp!1168982 tp!1168980))))

(assert (=> b!3855841 (= tp!1168752 e!2384097)))

(declare-fun b!3856904 () Bool)

(declare-fun tp!1168979 () Bool)

(declare-fun tp!1168981 () Bool)

(assert (=> b!3856904 (= e!2384097 (and tp!1168979 tp!1168981))))

(assert (= (and b!3855841 ((_ is ElementMatch!11225) (regTwo!22963 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856903))

(assert (= (and b!3855841 ((_ is Concat!17776) (regTwo!22963 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856904))

(assert (= (and b!3855841 ((_ is Star!11225) (regTwo!22963 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856905))

(assert (= (and b!3855841 ((_ is Union!11225) (regTwo!22963 (regex!6320 (rule!9180 (h!46284 suffixTokens!72)))))) b!3856906))

(declare-fun b!3856909 () Bool)

(declare-fun e!2384098 () Bool)

(declare-fun tp!1168988 () Bool)

(assert (=> b!3856909 (= e!2384098 tp!1168988)))

(declare-fun b!3856907 () Bool)

(assert (=> b!3856907 (= e!2384098 tp_is_empty!19421)))

(declare-fun b!3856910 () Bool)

(declare-fun tp!1168987 () Bool)

(declare-fun tp!1168985 () Bool)

(assert (=> b!3856910 (= e!2384098 (and tp!1168987 tp!1168985))))

(assert (=> b!3855825 (= tp!1168737 e!2384098)))

(declare-fun b!3856908 () Bool)

(declare-fun tp!1168984 () Bool)

(declare-fun tp!1168986 () Bool)

(assert (=> b!3856908 (= e!2384098 (and tp!1168984 tp!1168986))))

(assert (= (and b!3855825 ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) b!3856907))

(assert (= (and b!3855825 ((_ is Concat!17776) (regex!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) b!3856908))

(assert (= (and b!3855825 ((_ is Star!11225) (regex!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) b!3856909))

(assert (= (and b!3855825 ((_ is Union!11225) (regex!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) b!3856910))

(declare-fun b!3856911 () Bool)

(declare-fun e!2384099 () Bool)

(declare-fun tp!1168989 () Bool)

(assert (=> b!3856911 (= e!2384099 (and tp_is_empty!19421 tp!1168989))))

(assert (=> b!3855824 (= tp!1168736 e!2384099)))

(assert (= (and b!3855824 ((_ is Cons!40863) (originalCharacters!6920 (h!46284 (t!312565 suffixTokens!72))))) b!3856911))

(declare-fun tp!1168991 () Bool)

(declare-fun tp!1168992 () Bool)

(declare-fun b!3856912 () Bool)

(declare-fun e!2384101 () Bool)

(assert (=> b!3856912 (= e!2384101 (and (inv!55022 (left!31501 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271))))))) tp!1168992 (inv!55022 (right!31831 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271))))))) tp!1168991))))

(declare-fun b!3856914 () Bool)

(declare-fun e!2384100 () Bool)

(declare-fun tp!1168990 () Bool)

(assert (=> b!3856914 (= e!2384100 tp!1168990)))

(declare-fun b!3856913 () Bool)

(assert (=> b!3856913 (= e!2384101 (and (inv!55029 (xs!15837 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271))))))) e!2384100))))

(assert (=> b!3855360 (= tp!1168652 (and (inv!55022 (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271)))))) e!2384101))))

(assert (= (and b!3855360 ((_ is Node!12531) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271))))))) b!3856912))

(assert (= b!3856913 b!3856914))

(assert (= (and b!3855360 ((_ is Leaf!19398) (c!671349 (dynLambda!17633 (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))) (value!200754 (_1!23164 (v!39033 lt!1339271))))))) b!3856913))

(declare-fun m!4412591 () Bool)

(assert (=> b!3856912 m!4412591))

(declare-fun m!4412593 () Bool)

(assert (=> b!3856912 m!4412593))

(declare-fun m!4412595 () Bool)

(assert (=> b!3856913 m!4412595))

(assert (=> b!3855360 m!4410657))

(declare-fun b!3856917 () Bool)

(declare-fun e!2384102 () Bool)

(declare-fun tp!1168997 () Bool)

(assert (=> b!3856917 (= e!2384102 tp!1168997)))

(declare-fun b!3856915 () Bool)

(assert (=> b!3856915 (= e!2384102 tp_is_empty!19421)))

(declare-fun b!3856918 () Bool)

(declare-fun tp!1168996 () Bool)

(declare-fun tp!1168994 () Bool)

(assert (=> b!3856918 (= e!2384102 (and tp!1168996 tp!1168994))))

(assert (=> b!3855861 (= tp!1168777 e!2384102)))

(declare-fun b!3856916 () Bool)

(declare-fun tp!1168993 () Bool)

(declare-fun tp!1168995 () Bool)

(assert (=> b!3856916 (= e!2384102 (and tp!1168993 tp!1168995))))

(assert (= (and b!3855861 ((_ is ElementMatch!11225) (regOne!22963 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856915))

(assert (= (and b!3855861 ((_ is Concat!17776) (regOne!22963 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856916))

(assert (= (and b!3855861 ((_ is Star!11225) (regOne!22963 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856917))

(assert (= (and b!3855861 ((_ is Union!11225) (regOne!22963 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856918))

(declare-fun b!3856921 () Bool)

(declare-fun e!2384103 () Bool)

(declare-fun tp!1169002 () Bool)

(assert (=> b!3856921 (= e!2384103 tp!1169002)))

(declare-fun b!3856919 () Bool)

(assert (=> b!3856919 (= e!2384103 tp_is_empty!19421)))

(declare-fun b!3856922 () Bool)

(declare-fun tp!1169001 () Bool)

(declare-fun tp!1168999 () Bool)

(assert (=> b!3856922 (= e!2384103 (and tp!1169001 tp!1168999))))

(assert (=> b!3855861 (= tp!1168775 e!2384103)))

(declare-fun b!3856920 () Bool)

(declare-fun tp!1168998 () Bool)

(declare-fun tp!1169000 () Bool)

(assert (=> b!3856920 (= e!2384103 (and tp!1168998 tp!1169000))))

(assert (= (and b!3855861 ((_ is ElementMatch!11225) (regTwo!22963 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856919))

(assert (= (and b!3855861 ((_ is Concat!17776) (regTwo!22963 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856920))

(assert (= (and b!3855861 ((_ is Star!11225) (regTwo!22963 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856921))

(assert (= (and b!3855861 ((_ is Union!11225) (regTwo!22963 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856922))

(declare-fun b!3856925 () Bool)

(declare-fun b_free!103529 () Bool)

(declare-fun b_next!104233 () Bool)

(assert (=> b!3856925 (= b_free!103529 (not b_next!104233))))

(declare-fun tb!223265 () Bool)

(declare-fun t!312956 () Bool)

(assert (=> (and b!3856925 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312956) tb!223265))

(declare-fun result!271906 () Bool)

(assert (= result!271906 result!271808))

(assert (=> d!1143433 t!312956))

(declare-fun tb!223267 () Bool)

(declare-fun t!312958 () Bool)

(assert (=> (and b!3856925 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312958) tb!223267))

(declare-fun result!271908 () Bool)

(assert (= result!271908 result!271832))

(assert (=> d!1143443 t!312958))

(declare-fun tb!223269 () Bool)

(declare-fun t!312960 () Bool)

(assert (=> (and b!3856925 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312960) tb!223269))

(declare-fun result!271910 () Bool)

(assert (= result!271910 result!271524))

(assert (=> d!1142987 t!312960))

(assert (=> d!1143451 t!312958))

(declare-fun tb!223271 () Bool)

(declare-fun t!312962 () Bool)

(assert (=> (and b!3856925 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312962) tb!223271))

(declare-fun result!271912 () Bool)

(assert (= result!271912 result!271868))

(assert (=> d!1143661 t!312962))

(declare-fun b_and!288559 () Bool)

(declare-fun tp!1169005 () Bool)

(assert (=> b!3856925 (= tp!1169005 (and (=> t!312962 result!271912) (=> t!312960 result!271910) (=> t!312956 result!271906) (=> t!312958 result!271908) b_and!288559))))

(declare-fun b_free!103531 () Bool)

(declare-fun b_next!104235 () Bool)

(assert (=> b!3856925 (= b_free!103531 (not b_next!104235))))

(declare-fun t!312964 () Bool)

(declare-fun tb!223273 () Bool)

(assert (=> (and b!3856925 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312964) tb!223273))

(declare-fun result!271914 () Bool)

(assert (= result!271914 result!271796))

(assert (=> b!3856454 t!312964))

(declare-fun tb!223275 () Bool)

(declare-fun t!312966 () Bool)

(assert (=> (and b!3856925 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312966) tb!223275))

(declare-fun result!271916 () Bool)

(assert (= result!271916 result!271502))

(assert (=> d!1142947 t!312966))

(declare-fun t!312968 () Bool)

(declare-fun tb!223277 () Bool)

(assert (=> (and b!3856925 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312968) tb!223277))

(declare-fun result!271918 () Bool)

(assert (= result!271918 result!271784))

(assert (=> d!1143385 t!312968))

(declare-fun tb!223279 () Bool)

(declare-fun t!312970 () Bool)

(assert (=> (and b!3856925 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312970) tb!223279))

(declare-fun result!271920 () Bool)

(assert (= result!271920 result!271844))

(assert (=> b!3856640 t!312970))

(declare-fun t!312972 () Bool)

(declare-fun tb!223281 () Bool)

(assert (=> (and b!3856925 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312972) tb!223281))

(declare-fun result!271922 () Bool)

(assert (= result!271922 result!271532))

(assert (=> b!3855492 t!312972))

(declare-fun tb!223283 () Bool)

(declare-fun t!312974 () Bool)

(assert (=> (and b!3856925 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312974) tb!223283))

(declare-fun result!271924 () Bool)

(assert (= result!271924 result!271576))

(assert (=> b!3855800 t!312974))

(declare-fun t!312976 () Bool)

(declare-fun tb!223285 () Bool)

(assert (=> (and b!3856925 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312976) tb!223285))

(declare-fun result!271926 () Bool)

(assert (= result!271926 result!271820))

(assert (=> d!1143443 t!312976))

(declare-fun t!312978 () Bool)

(declare-fun tb!223287 () Bool)

(assert (=> (and b!3856925 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312978) tb!223287))

(declare-fun result!271928 () Bool)

(assert (= result!271928 result!271856))

(assert (=> d!1143529 t!312978))

(declare-fun tp!1169006 () Bool)

(declare-fun b_and!288561 () Bool)

(assert (=> b!3856925 (= tp!1169006 (and (=> t!312972 result!271922) (=> t!312964 result!271914) (=> t!312976 result!271926) (=> t!312974 result!271924) (=> t!312968 result!271918) (=> t!312978 result!271928) (=> t!312970 result!271920) (=> t!312966 result!271916) b_and!288561))))

(declare-fun e!2384105 () Bool)

(assert (=> b!3856925 (= e!2384105 (and tp!1169005 tp!1169006))))

(declare-fun e!2384106 () Bool)

(declare-fun tp!1169004 () Bool)

(declare-fun b!3856924 () Bool)

(assert (=> b!3856924 (= e!2384106 (and tp!1169004 (inv!55015 (tag!7180 (h!46285 (t!312566 (t!312566 rules!2768))))) (inv!55018 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) e!2384105))))

(declare-fun b!3856923 () Bool)

(declare-fun e!2384107 () Bool)

(declare-fun tp!1169003 () Bool)

(assert (=> b!3856923 (= e!2384107 (and e!2384106 tp!1169003))))

(assert (=> b!3855851 (= tp!1168765 e!2384107)))

(assert (= b!3856924 b!3856925))

(assert (= b!3856923 b!3856924))

(assert (= (and b!3855851 ((_ is Cons!40865) (t!312566 (t!312566 rules!2768)))) b!3856923))

(declare-fun m!4412597 () Bool)

(assert (=> b!3856924 m!4412597))

(declare-fun m!4412599 () Bool)

(assert (=> b!3856924 m!4412599))

(declare-fun b!3856926 () Bool)

(declare-fun e!2384108 () Bool)

(declare-fun tp!1169007 () Bool)

(assert (=> b!3856926 (= e!2384108 (and tp_is_empty!19421 tp!1169007))))

(assert (=> b!3855812 (= tp!1168724 e!2384108)))

(assert (= (and b!3855812 ((_ is Cons!40863) (t!312564 (originalCharacters!6920 (h!46284 prefixTokens!80))))) b!3856926))

(declare-fun b!3856929 () Bool)

(declare-fun e!2384109 () Bool)

(declare-fun tp!1169012 () Bool)

(assert (=> b!3856929 (= e!2384109 tp!1169012)))

(declare-fun b!3856927 () Bool)

(assert (=> b!3856927 (= e!2384109 tp_is_empty!19421)))

(declare-fun b!3856930 () Bool)

(declare-fun tp!1169011 () Bool)

(declare-fun tp!1169009 () Bool)

(assert (=> b!3856930 (= e!2384109 (and tp!1169011 tp!1169009))))

(assert (=> b!3855859 (= tp!1168774 e!2384109)))

(declare-fun b!3856928 () Bool)

(declare-fun tp!1169008 () Bool)

(declare-fun tp!1169010 () Bool)

(assert (=> b!3856928 (= e!2384109 (and tp!1169008 tp!1169010))))

(assert (= (and b!3855859 ((_ is ElementMatch!11225) (regOne!22962 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856927))

(assert (= (and b!3855859 ((_ is Concat!17776) (regOne!22962 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856928))

(assert (= (and b!3855859 ((_ is Star!11225) (regOne!22962 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856929))

(assert (= (and b!3855859 ((_ is Union!11225) (regOne!22962 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856930))

(declare-fun b!3856933 () Bool)

(declare-fun e!2384110 () Bool)

(declare-fun tp!1169017 () Bool)

(assert (=> b!3856933 (= e!2384110 tp!1169017)))

(declare-fun b!3856931 () Bool)

(assert (=> b!3856931 (= e!2384110 tp_is_empty!19421)))

(declare-fun b!3856934 () Bool)

(declare-fun tp!1169016 () Bool)

(declare-fun tp!1169014 () Bool)

(assert (=> b!3856934 (= e!2384110 (and tp!1169016 tp!1169014))))

(assert (=> b!3855859 (= tp!1168776 e!2384110)))

(declare-fun b!3856932 () Bool)

(declare-fun tp!1169013 () Bool)

(declare-fun tp!1169015 () Bool)

(assert (=> b!3856932 (= e!2384110 (and tp!1169013 tp!1169015))))

(assert (= (and b!3855859 ((_ is ElementMatch!11225) (regTwo!22962 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856931))

(assert (= (and b!3855859 ((_ is Concat!17776) (regTwo!22962 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856932))

(assert (= (and b!3855859 ((_ is Star!11225) (regTwo!22962 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856933))

(assert (= (and b!3855859 ((_ is Union!11225) (regTwo!22962 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856934))

(declare-fun b!3856937 () Bool)

(declare-fun e!2384111 () Bool)

(declare-fun tp!1169022 () Bool)

(assert (=> b!3856937 (= e!2384111 tp!1169022)))

(declare-fun b!3856935 () Bool)

(assert (=> b!3856935 (= e!2384111 tp_is_empty!19421)))

(declare-fun b!3856938 () Bool)

(declare-fun tp!1169021 () Bool)

(declare-fun tp!1169019 () Bool)

(assert (=> b!3856938 (= e!2384111 (and tp!1169021 tp!1169019))))

(assert (=> b!3855860 (= tp!1168778 e!2384111)))

(declare-fun b!3856936 () Bool)

(declare-fun tp!1169018 () Bool)

(declare-fun tp!1169020 () Bool)

(assert (=> b!3856936 (= e!2384111 (and tp!1169018 tp!1169020))))

(assert (= (and b!3855860 ((_ is ElementMatch!11225) (reg!11554 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856935))

(assert (= (and b!3855860 ((_ is Concat!17776) (reg!11554 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856936))

(assert (= (and b!3855860 ((_ is Star!11225) (reg!11554 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856937))

(assert (= (and b!3855860 ((_ is Union!11225) (reg!11554 (regex!6320 (rule!9180 (h!46284 prefixTokens!80)))))) b!3856938))

(declare-fun b!3856939 () Bool)

(declare-fun e!2384112 () Bool)

(declare-fun tp!1169023 () Bool)

(assert (=> b!3856939 (= e!2384112 (and tp_is_empty!19421 tp!1169023))))

(assert (=> b!3855866 (= tp!1168784 e!2384112)))

(assert (= (and b!3855866 ((_ is Cons!40863) (t!312564 (t!312564 suffix!1176)))) b!3856939))

(declare-fun b!3856940 () Bool)

(declare-fun e!2384113 () Bool)

(declare-fun tp!1169024 () Bool)

(assert (=> b!3856940 (= e!2384113 (and tp_is_empty!19421 tp!1169024))))

(assert (=> b!3855811 (= tp!1168723 e!2384113)))

(assert (= (and b!3855811 ((_ is Cons!40863) (t!312564 (originalCharacters!6920 (h!46284 suffixTokens!72))))) b!3856940))

(declare-fun b!3856943 () Bool)

(declare-fun e!2384114 () Bool)

(declare-fun tp!1169029 () Bool)

(assert (=> b!3856943 (= e!2384114 tp!1169029)))

(declare-fun b!3856941 () Bool)

(assert (=> b!3856941 (= e!2384114 tp_is_empty!19421)))

(declare-fun b!3856944 () Bool)

(declare-fun tp!1169028 () Bool)

(declare-fun tp!1169026 () Bool)

(assert (=> b!3856944 (= e!2384114 (and tp!1169028 tp!1169026))))

(assert (=> b!3855864 (= tp!1168781 e!2384114)))

(declare-fun b!3856942 () Bool)

(declare-fun tp!1169025 () Bool)

(declare-fun tp!1169027 () Bool)

(assert (=> b!3856942 (= e!2384114 (and tp!1169025 tp!1169027))))

(assert (= (and b!3855864 ((_ is ElementMatch!11225) (regex!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) b!3856941))

(assert (= (and b!3855864 ((_ is Concat!17776) (regex!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) b!3856942))

(assert (= (and b!3855864 ((_ is Star!11225) (regex!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) b!3856943))

(assert (= (and b!3855864 ((_ is Union!11225) (regex!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) b!3856944))

(declare-fun b!3856945 () Bool)

(declare-fun e!2384115 () Bool)

(declare-fun tp!1169030 () Bool)

(assert (=> b!3856945 (= e!2384115 (and tp_is_empty!19421 tp!1169030))))

(assert (=> b!3855827 (= tp!1168740 e!2384115)))

(assert (= (and b!3855827 ((_ is Cons!40863) (t!312564 (t!312564 suffixResult!91)))) b!3856945))

(declare-fun b!3856948 () Bool)

(declare-fun e!2384116 () Bool)

(declare-fun tp!1169035 () Bool)

(assert (=> b!3856948 (= e!2384116 tp!1169035)))

(declare-fun b!3856946 () Bool)

(assert (=> b!3856946 (= e!2384116 tp_is_empty!19421)))

(declare-fun b!3856949 () Bool)

(declare-fun tp!1169034 () Bool)

(declare-fun tp!1169032 () Bool)

(assert (=> b!3856949 (= e!2384116 (and tp!1169034 tp!1169032))))

(assert (=> b!3855857 (= tp!1168772 e!2384116)))

(declare-fun b!3856947 () Bool)

(declare-fun tp!1169031 () Bool)

(declare-fun tp!1169033 () Bool)

(assert (=> b!3856947 (= e!2384116 (and tp!1169031 tp!1169033))))

(assert (= (and b!3855857 ((_ is ElementMatch!11225) (regOne!22963 (regex!6320 (h!46285 rules!2768))))) b!3856946))

(assert (= (and b!3855857 ((_ is Concat!17776) (regOne!22963 (regex!6320 (h!46285 rules!2768))))) b!3856947))

(assert (= (and b!3855857 ((_ is Star!11225) (regOne!22963 (regex!6320 (h!46285 rules!2768))))) b!3856948))

(assert (= (and b!3855857 ((_ is Union!11225) (regOne!22963 (regex!6320 (h!46285 rules!2768))))) b!3856949))

(declare-fun b!3856952 () Bool)

(declare-fun e!2384117 () Bool)

(declare-fun tp!1169040 () Bool)

(assert (=> b!3856952 (= e!2384117 tp!1169040)))

(declare-fun b!3856950 () Bool)

(assert (=> b!3856950 (= e!2384117 tp_is_empty!19421)))

(declare-fun b!3856953 () Bool)

(declare-fun tp!1169039 () Bool)

(declare-fun tp!1169037 () Bool)

(assert (=> b!3856953 (= e!2384117 (and tp!1169039 tp!1169037))))

(assert (=> b!3855857 (= tp!1168770 e!2384117)))

(declare-fun b!3856951 () Bool)

(declare-fun tp!1169036 () Bool)

(declare-fun tp!1169038 () Bool)

(assert (=> b!3856951 (= e!2384117 (and tp!1169036 tp!1169038))))

(assert (= (and b!3855857 ((_ is ElementMatch!11225) (regTwo!22963 (regex!6320 (h!46285 rules!2768))))) b!3856950))

(assert (= (and b!3855857 ((_ is Concat!17776) (regTwo!22963 (regex!6320 (h!46285 rules!2768))))) b!3856951))

(assert (= (and b!3855857 ((_ is Star!11225) (regTwo!22963 (regex!6320 (h!46285 rules!2768))))) b!3856952))

(assert (= (and b!3855857 ((_ is Union!11225) (regTwo!22963 (regex!6320 (h!46285 rules!2768))))) b!3856953))

(declare-fun b!3856957 () Bool)

(declare-fun b_free!103533 () Bool)

(declare-fun b_next!104237 () Bool)

(assert (=> b!3856957 (= b_free!103533 (not b_next!104237))))

(declare-fun t!312980 () Bool)

(declare-fun tb!223289 () Bool)

(assert (=> (and b!3856957 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312980) tb!223289))

(declare-fun result!271930 () Bool)

(assert (= result!271930 result!271808))

(assert (=> d!1143433 t!312980))

(declare-fun t!312982 () Bool)

(declare-fun tb!223291 () Bool)

(assert (=> (and b!3856957 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312982) tb!223291))

(declare-fun result!271932 () Bool)

(assert (= result!271932 result!271832))

(assert (=> d!1143443 t!312982))

(declare-fun t!312984 () Bool)

(declare-fun tb!223293 () Bool)

(assert (=> (and b!3856957 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312984) tb!223293))

(declare-fun result!271934 () Bool)

(assert (= result!271934 result!271524))

(assert (=> d!1142987 t!312984))

(assert (=> d!1143451 t!312982))

(declare-fun tb!223295 () Bool)

(declare-fun t!312986 () Bool)

(assert (=> (and b!3856957 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!312986) tb!223295))

(declare-fun result!271936 () Bool)

(assert (= result!271936 result!271868))

(assert (=> d!1143661 t!312986))

(declare-fun b_and!288563 () Bool)

(declare-fun tp!1169044 () Bool)

(assert (=> b!3856957 (= tp!1169044 (and (=> t!312980 result!271930) (=> t!312986 result!271936) (=> t!312984 result!271934) (=> t!312982 result!271932) b_and!288563))))

(declare-fun b_free!103535 () Bool)

(declare-fun b_next!104239 () Bool)

(assert (=> b!3856957 (= b_free!103535 (not b_next!104239))))

(declare-fun t!312988 () Bool)

(declare-fun tb!223297 () Bool)

(assert (=> (and b!3856957 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72)))))) t!312988) tb!223297))

(declare-fun result!271938 () Bool)

(assert (= result!271938 result!271796))

(assert (=> b!3856454 t!312988))

(declare-fun tb!223299 () Bool)

(declare-fun t!312990 () Bool)

(assert (=> (and b!3856957 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!312990) tb!223299))

(declare-fun result!271940 () Bool)

(assert (= result!271940 result!271502))

(assert (=> d!1142947 t!312990))

(declare-fun t!312992 () Bool)

(declare-fun tb!223301 () Bool)

(assert (=> (and b!3856957 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339385)))))) t!312992) tb!223301))

(declare-fun result!271942 () Bool)

(assert (= result!271942 result!271784))

(assert (=> d!1143385 t!312992))

(declare-fun t!312994 () Bool)

(declare-fun tb!223303 () Bool)

(assert (=> (and b!3856957 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80)))))) t!312994) tb!223303))

(declare-fun result!271944 () Bool)

(assert (= result!271944 result!271844))

(assert (=> b!3856640 t!312994))

(declare-fun tb!223305 () Bool)

(declare-fun t!312996 () Bool)

(assert (=> (and b!3856957 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72))))) t!312996) tb!223305))

(declare-fun result!271946 () Bool)

(assert (= result!271946 result!271532))

(assert (=> b!3855492 t!312996))

(declare-fun t!312998 () Bool)

(declare-fun tb!223307 () Bool)

(assert (=> (and b!3856957 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80))))) t!312998) tb!223307))

(declare-fun result!271948 () Bool)

(assert (= result!271948 result!271576))

(assert (=> b!3855800 t!312998))

(declare-fun tb!223309 () Bool)

(declare-fun t!313000 () Bool)

(assert (=> (and b!3856957 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271)))))) t!313000) tb!223309))

(declare-fun result!271950 () Bool)

(assert (= result!271950 result!271820))

(assert (=> d!1143443 t!313000))

(declare-fun tb!223311 () Bool)

(declare-fun t!313002 () Bool)

(assert (=> (and b!3856957 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (get!13520 lt!1339441)))))) t!313002) tb!223311))

(declare-fun result!271952 () Bool)

(assert (= result!271952 result!271856))

(assert (=> d!1143529 t!313002))

(declare-fun b_and!288565 () Bool)

(declare-fun tp!1169045 () Bool)

(assert (=> b!3856957 (= tp!1169045 (and (=> t!313000 result!271950) (=> t!312994 result!271944) (=> t!312998 result!271948) (=> t!312988 result!271938) (=> t!312992 result!271942) (=> t!312990 result!271940) (=> t!312996 result!271946) (=> t!313002 result!271952) b_and!288565))))

(declare-fun e!2384119 () Bool)

(declare-fun b!3856956 () Bool)

(declare-fun tp!1169043 () Bool)

(declare-fun e!2384121 () Bool)

(assert (=> b!3856956 (= e!2384121 (and tp!1169043 (inv!55015 (tag!7180 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (inv!55018 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) e!2384119))))

(assert (=> b!3856957 (= e!2384119 (and tp!1169044 tp!1169045))))

(declare-fun tp!1169042 () Bool)

(declare-fun b!3856955 () Bool)

(declare-fun e!2384118 () Bool)

(assert (=> b!3856955 (= e!2384118 (and (inv!21 (value!200754 (h!46284 (t!312565 (t!312565 prefixTokens!80))))) e!2384121 tp!1169042))))

(declare-fun tp!1169041 () Bool)

(declare-fun e!2384123 () Bool)

(declare-fun b!3856954 () Bool)

(assert (=> b!3856954 (= e!2384123 (and (inv!55019 (h!46284 (t!312565 (t!312565 prefixTokens!80)))) e!2384118 tp!1169041))))

(assert (=> b!3855862 (= tp!1168779 e!2384123)))

(assert (= b!3856956 b!3856957))

(assert (= b!3856955 b!3856956))

(assert (= b!3856954 b!3856955))

(assert (= (and b!3855862 ((_ is Cons!40864) (t!312565 (t!312565 prefixTokens!80)))) b!3856954))

(declare-fun m!4412601 () Bool)

(assert (=> b!3856956 m!4412601))

(declare-fun m!4412603 () Bool)

(assert (=> b!3856956 m!4412603))

(declare-fun m!4412605 () Bool)

(assert (=> b!3856955 m!4412605))

(declare-fun m!4412607 () Bool)

(assert (=> b!3856954 m!4412607))

(declare-fun b!3856958 () Bool)

(declare-fun e!2384124 () Bool)

(declare-fun tp!1169046 () Bool)

(assert (=> b!3856958 (= e!2384124 (and tp_is_empty!19421 tp!1169046))))

(assert (=> b!3855863 (= tp!1168780 e!2384124)))

(assert (= (and b!3855863 ((_ is Cons!40863) (originalCharacters!6920 (h!46284 (t!312565 prefixTokens!80))))) b!3856958))

(declare-fun b_lambda!112759 () Bool)

(assert (= b_lambda!112753 (or (and b!3856925 b_free!103531 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))))) (and b!3855865 b_free!103511) (and b!3856898 b_free!103527 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))))) (and b!3855241 b_free!103487 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))))) (and b!3855853 b_free!103507 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))))) (and b!3855259 b_free!103479 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))))) (and b!3855826 b_free!103503 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))))) (and b!3856957 b_free!103535 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))))) (and b!3855256 b_free!103483 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))))) b_lambda!112759)))

(declare-fun b_lambda!112761 () Bool)

(assert (= b_lambda!112699 (or (and b!3855865 b_free!103509 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855256 b_free!103481 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855826 b_free!103501 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855241 b_free!103485 (= (toValue!8744 (transformation!6320 (h!46285 rules!2768))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3856957 b_free!103533 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855259 b_free!103477 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3856898 b_free!103525 (= (toValue!8744 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855853 b_free!103505 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3856925 b_free!103529 (= (toValue!8744 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toValue!8744 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) b_lambda!112761)))

(declare-fun b_lambda!112763 () Bool)

(assert (= b_lambda!112743 (or (and b!3855865 b_free!103511 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))))) (and b!3855826 b_free!103503) (and b!3855256 b_free!103483 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))))) (and b!3856898 b_free!103527 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))))) (and b!3856925 b_free!103531 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))))) (and b!3855241 b_free!103487 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))))) (and b!3856957 b_free!103535 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))))) (and b!3855259 b_free!103479 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))))) (and b!3855853 b_free!103507 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))))) b_lambda!112763)))

(declare-fun b_lambda!112765 () Bool)

(assert (= b_lambda!112693 (or (and b!3855853 b_free!103507 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 rules!2768)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855241 b_free!103487 (= (toChars!8603 (transformation!6320 (h!46285 rules!2768))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855256 b_free!103483 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 prefixTokens!80)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855865 b_free!103511 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 prefixTokens!80))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3856925 b_free!103531 (= (toChars!8603 (transformation!6320 (h!46285 (t!312566 (t!312566 rules!2768))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855826 b_free!103503 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 suffixTokens!72))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3855259 b_free!103479 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 suffixTokens!72)))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3856898 b_free!103527 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 suffixTokens!72)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) (and b!3856957 b_free!103535 (= (toChars!8603 (transformation!6320 (rule!9180 (h!46284 (t!312565 (t!312565 prefixTokens!80)))))) (toChars!8603 (transformation!6320 (rule!9180 (_1!23164 (v!39033 lt!1339271))))))) b_lambda!112765)))

(check-sat (not b!3856572) (not b!3856869) (not b!3856956) (not b!3856464) (not b!3856465) (not b_lambda!112763) (not b!3856734) (not b!3856684) (not b!3856808) (not b_lambda!112759) (not b!3856634) (not d!1143449) (not b!3856763) (not bm!282472) (not b!3856924) (not b!3856810) (not b!3856478) (not b!3856933) (not b!3856900) (not b!3856955) (not b_next!104213) (not b!3856892) (not b!3856922) b_and!288535 (not b!3856862) (not b!3856690) (not d!1143611) (not b!3856448) b_and!288543 (not tb!223205) (not tb!223169) (not d!1143445) (not b!3856455) (not b!3856424) (not b!3856717) (not d!1143457) (not b!3856864) (not b!3856709) (not b!3856630) (not b!3856815) (not b_next!104229) (not d!1143453) (not d!1143435) (not d!1143599) (not b!3856737) (not b!3856564) (not bm!282484) (not b!3856801) (not b!3856527) b_and!288553 (not b!3856719) (not d!1143425) (not b!3856711) (not d!1143605) (not bm!282468) (not b!3856877) (not b!3856837) (not b!3856760) (not b!3856713) (not b!3856561) (not d!1143511) (not b!3856871) (not b!3856820) (not b!3856631) (not b_lambda!112713) (not b!3856469) (not b!3856710) (not b!3856913) (not b_lambda!112751) (not b!3856612) (not b!3856904) (not b!3855494) (not b!3856555) b_and!288563 (not b!3856951) (not b!3856910) (not b!3856912) (not b!3856722) (not b!3856939) (not b!3856470) (not d!1143535) (not b_next!104181) (not b!3856425) (not b!3856442) (not b!3856718) (not b!3856667) (not b!3856547) (not b!3856665) (not b_next!104233) (not d!1143475) (not b!3856664) (not b_next!104231) tp_is_empty!19421 (not d!1143379) (not d!1143485) b_and!288559 (not b!3856606) (not b!3856932) (not b!3856639) (not b!3856896) (not b!3856678) (not d!1143643) (not b!3856638) (not d!1143575) (not b!3856706) (not d!1143659) (not b!3856873) (not b!3856553) (not b_next!104239) (not b!3856895) (not b!3856870) (not b!3856753) (not b!3856508) (not b!3856800) (not b!3856875) (not b!3856936) (not b!3856759) (not b!3856537) (not b!3856938) (not b!3856431) (not b!3856430) (not b!3856735) (not b!3856901) (not b!3856739) (not d!1143587) (not d!1143517) (not b!3856454) (not b_lambda!112765) (not b!3856860) b_and!288533 (not b!3856849) (not b!3856686) (not b!3856700) (not b!3856509) (not b!3856827) (not b_next!104215) (not b!3856620) (not tb!223193) (not d!1143403) (not b!3856943) (not b!3856545) (not b!3856533) (not b!3856450) b_and!288551 (not b!3856605) (not b!3856893) (not d!1143533) (not b!3856947) (not b!3856611) (not b!3856865) (not b!3856444) (not b!3856821) (not b!3856674) (not b!3856757) (not d!1143623) (not d!1143233) (not b!3856712) (not b!3856468) (not b!3856897) (not b!3856823) (not b!3856958) (not b!3856556) (not b!3856934) (not bm!282486) (not d!1143479) b_and!288561 (not b!3856660) (not d!1143443) (not b!3856831) (not b!3856628) (not b!3856908) (not b_next!104189) (not bm!282469) b_and!288557 (not b_next!104207) (not b!3856698) (not d!1143589) (not b!3856876) (not d!1143505) (not bm!282473) (not b!3856672) (not d!1143385) (not b!3856911) (not b!3856884) (not b!3856843) (not b_lambda!112755) (not d!1143553) (not b!3856715) (not b!3856794) (not b_next!104237) (not b!3856881) (not b!3856817) (not b!3856671) (not b!3856949) (not b_lambda!112749) (not b!3856451) (not tb!223229) (not b!3856669) (not b!3856550) (not b!3856626) (not b_lambda!112741) (not b_lambda!112745) (not b!3856637) (not b!3856633) (not b!3856813) (not b!3856944) (not b!3856549) (not b!3856890) (not d!1143405) (not b!3856642) (not b!3856622) (not b!3856529) (not b!3856839) (not b!3856535) (not b!3856654) b_and!288541 (not b!3856940) (not b!3856645) (not b!3856635) (not b!3856885) (not d!1143411) (not b!3856704) (not b!3856917) (not d!1143613) b_and!288547 (not bm!282453) (not b!3856525) (not b!3855360) (not b!3856886) (not d!1143525) (not b!3856418) (not d!1143593) (not d!1143585) (not b!3856872) (not b!3856937) (not d!1143559) (not b!3856765) (not bm!282455) (not b!3856608) (not b!3856948) (not b!3856462) (not b!3856929) (not b!3856616) (not b!3856677) (not b!3856905) (not b!3856888) (not b!3856868) (not tb!223217) (not b!3856878) (not b!3856513) (not b!3856566) b_and!288555 (not b!3856554) (not b_lambda!112711) (not b!3856866) (not b_next!104209) (not tb!223145) (not d!1143409) (not b!3856522) (not b!3856557) (not d!1143521) (not b!3856714) b_and!288537 (not b!3856902) (not b_lambda!112757) (not b!3856560) (not bm!282458) (not d!1143619) (not b!3856882) (not bm!282474) (not bm!282460) (not b!3856531) (not d!1143617) b_and!288565 (not b!3856647) (not b!3856673) (not d!1143397) (not b!3856614) (not b!3856562) (not tb!223157) (not b_next!104211) (not b!3856806) (not d!1143487) (not bm!282461) (not bm!282471) (not b!3856641) (not b!3856906) b_and!288545 (not b!3856819) (not b!3856472) (not d!1143657) (not bm!282454) (not b!3856750) (not d!1143383) (not b!3856510) (not b!3856422) (not b!3856953) (not d!1143647) (not b!3856453) (not b!3856445) (not b!3856751) (not b!3856662) (not b!3856952) (not d!1143415) (not b!3856670) (not d!1143519) (not b!3856623) (not d!1143497) (not b!3856702) (not b!3856656) (not b_next!104235) (not b!3856916) (not b!3856610) (not d!1143391) (not d!1143653) (not b!3856745) (not d!1143663) (not b!3856708) (not d!1143597) (not b!3856844) (not b!3856688) (not b!3856861) (not b!3856942) (not b!3856923) (not d!1143529) (not d!1143631) (not b!3856804) (not b!3856676) (not b!3856945) (not b!3856598) (not b!3856894) (not d!1143473) (not d!1143591) (not b!3856889) (not d!1143655) (not b!3856811) (not bm!282456) (not b_next!104205) (not b!3856847) (not b!3856428) (not b!3856640) (not b!3856649) (not b!3856930) (not b!3856571) (not d!1143607) (not b_lambda!112747) (not b!3856696) (not b!3856644) (not b!3856658) (not tb!223181) (not b!3856565) (not b!3856440) (not b!3856921) (not d!1143539) (not b!3856954) (not b!3856825) (not b!3856603) (not b!3856438) (not b_next!104187) (not b!3856558) (not d!1143515) (not d!1143621) (not b_next!104185) (not bm!282457) (not d!1143531) (not d!1143541) (not b!3856543) (not b!3856721) (not b!3856632) (not b!3856456) (not bm!282436) (not b!3856653) (not b!3856846) (not d!1143639) (not b!3856928) b_and!288549 (not b!3856918) (not b!3856914) (not b!3856920) (not bm!282459) (not b!3855802) b_and!288531 (not b!3856841) (not b!3856926) (not b!3856650) (not b_next!104183) (not bm!282487) (not b!3856909) (not b!3856880) (not b!3856834) (not b!3856833) (not b!3856530) (not b!3856798) b_and!288539 (not d!1143421) (not d!1143527) (not b!3856851) (not b_next!104191) (not b_lambda!112761))
(check-sat b_and!288543 (not b_next!104229) b_and!288553 (not b_next!104239) b_and!288551 (not b_next!104237) b_and!288555 b_and!288565 (not b_next!104235) (not b_next!104205) (not b_next!104187) (not b_next!104213) b_and!288535 b_and!288563 (not b_next!104181) (not b_next!104233) (not b_next!104231) b_and!288559 b_and!288533 (not b_next!104215) (not b_next!104189) b_and!288561 b_and!288557 (not b_next!104207) b_and!288541 b_and!288547 (not b_next!104209) b_and!288537 (not b_next!104211) b_and!288545 (not b_next!104185) b_and!288549 b_and!288531 (not b_next!104183) b_and!288539 (not b_next!104191))
