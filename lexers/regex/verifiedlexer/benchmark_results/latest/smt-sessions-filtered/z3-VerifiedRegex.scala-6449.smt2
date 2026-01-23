; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337274 () Bool)

(assert start!337274)

(declare-fun b!3621259 () Bool)

(declare-fun b_free!94425 () Bool)

(declare-fun b_next!95129 () Bool)

(assert (=> b!3621259 (= b_free!94425 (not b_next!95129))))

(declare-fun tp!1106078 () Bool)

(declare-fun b_and!264795 () Bool)

(assert (=> b!3621259 (= tp!1106078 b_and!264795)))

(declare-fun b_free!94427 () Bool)

(declare-fun b_next!95131 () Bool)

(assert (=> b!3621259 (= b_free!94427 (not b_next!95131))))

(declare-fun tp!1106076 () Bool)

(declare-fun b_and!264797 () Bool)

(assert (=> b!3621259 (= tp!1106076 b_and!264797)))

(declare-fun b!3621253 () Bool)

(declare-fun b_free!94429 () Bool)

(declare-fun b_next!95133 () Bool)

(assert (=> b!3621253 (= b_free!94429 (not b_next!95133))))

(declare-fun tp!1106077 () Bool)

(declare-fun b_and!264799 () Bool)

(assert (=> b!3621253 (= tp!1106077 b_and!264799)))

(declare-fun b_free!94431 () Bool)

(declare-fun b_next!95135 () Bool)

(assert (=> b!3621253 (= b_free!94431 (not b_next!95135))))

(declare-fun tp!1106070 () Bool)

(declare-fun b_and!264801 () Bool)

(assert (=> b!3621253 (= tp!1106070 b_and!264801)))

(declare-fun b!3621265 () Bool)

(declare-fun b_free!94433 () Bool)

(declare-fun b_next!95137 () Bool)

(assert (=> b!3621265 (= b_free!94433 (not b_next!95137))))

(declare-fun tp!1106068 () Bool)

(declare-fun b_and!264803 () Bool)

(assert (=> b!3621265 (= tp!1106068 b_and!264803)))

(declare-fun b_free!94435 () Bool)

(declare-fun b_next!95139 () Bool)

(assert (=> b!3621265 (= b_free!94435 (not b_next!95139))))

(declare-fun tp!1106071 () Bool)

(declare-fun b_and!264805 () Bool)

(assert (=> b!3621265 (= tp!1106071 b_and!264805)))

(declare-fun b!3621239 () Bool)

(declare-fun b_free!94437 () Bool)

(declare-fun b_next!95141 () Bool)

(assert (=> b!3621239 (= b_free!94437 (not b_next!95141))))

(declare-fun tp!1106067 () Bool)

(declare-fun b_and!264807 () Bool)

(assert (=> b!3621239 (= tp!1106067 b_and!264807)))

(declare-fun b_free!94439 () Bool)

(declare-fun b_next!95143 () Bool)

(assert (=> b!3621239 (= b_free!94439 (not b_next!95143))))

(declare-fun tp!1106079 () Bool)

(declare-fun b_and!264809 () Bool)

(assert (=> b!3621239 (= tp!1106079 b_and!264809)))

(declare-fun e!2241462 () Bool)

(assert (=> b!3621239 (= e!2241462 (and tp!1106067 tp!1106079))))

(declare-fun tp!1106075 () Bool)

(declare-datatypes ((List!38267 0))(
  ( (Nil!38143) (Cons!38143 (h!43563 (_ BitVec 16)) (t!294198 List!38267)) )
))
(declare-datatypes ((TokenValue!5908 0))(
  ( (FloatLiteralValue!11816 (text!41801 List!38267)) (TokenValueExt!5907 (__x!24033 Int)) (Broken!29540 (value!182257 List!38267)) (Object!6031) (End!5908) (Def!5908) (Underscore!5908) (Match!5908) (Else!5908) (Error!5908) (Case!5908) (If!5908) (Extends!5908) (Abstract!5908) (Class!5908) (Val!5908) (DelimiterValue!11816 (del!5968 List!38267)) (KeywordValue!5914 (value!182258 List!38267)) (CommentValue!11816 (value!182259 List!38267)) (WhitespaceValue!11816 (value!182260 List!38267)) (IndentationValue!5908 (value!182261 List!38267)) (String!42873) (Int32!5908) (Broken!29541 (value!182262 List!38267)) (Boolean!5909) (Unit!54891) (OperatorValue!5911 (op!5968 List!38267)) (IdentifierValue!11816 (value!182263 List!38267)) (IdentifierValue!11817 (value!182264 List!38267)) (WhitespaceValue!11817 (value!182265 List!38267)) (True!11816) (False!11816) (Broken!29542 (value!182266 List!38267)) (Broken!29543 (value!182267 List!38267)) (True!11817) (RightBrace!5908) (RightBracket!5908) (Colon!5908) (Null!5908) (Comma!5908) (LeftBracket!5908) (False!11817) (LeftBrace!5908) (ImaginaryLiteralValue!5908 (text!41802 List!38267)) (StringLiteralValue!17724 (value!182268 List!38267)) (EOFValue!5908 (value!182269 List!38267)) (IdentValue!5908 (value!182270 List!38267)) (DelimiterValue!11817 (value!182271 List!38267)) (DedentValue!5908 (value!182272 List!38267)) (NewLineValue!5908 (value!182273 List!38267)) (IntegerValue!17724 (value!182274 (_ BitVec 32)) (text!41803 List!38267)) (IntegerValue!17725 (value!182275 Int) (text!41804 List!38267)) (Times!5908) (Or!5908) (Equal!5908) (Minus!5908) (Broken!29544 (value!182276 List!38267)) (And!5908) (Div!5908) (LessEqual!5908) (Mod!5908) (Concat!16345) (Not!5908) (Plus!5908) (SpaceValue!5908 (value!182277 List!38267)) (IntegerValue!17726 (value!182278 Int) (text!41805 List!38267)) (StringLiteralValue!17725 (text!41806 List!38267)) (FloatLiteralValue!11817 (text!41807 List!38267)) (BytesLiteralValue!5908 (value!182279 List!38267)) (CommentValue!11817 (value!182280 List!38267)) (StringLiteralValue!17726 (value!182281 List!38267)) (ErrorTokenValue!5908 (msg!5969 List!38267)) )
))
(declare-datatypes ((C!21060 0))(
  ( (C!21061 (val!12578 Int)) )
))
(declare-datatypes ((Regex!10437 0))(
  ( (ElementMatch!10437 (c!626670 C!21060)) (Concat!16346 (regOne!21386 Regex!10437) (regTwo!21386 Regex!10437)) (EmptyExpr!10437) (Star!10437 (reg!10766 Regex!10437)) (EmptyLang!10437) (Union!10437 (regOne!21387 Regex!10437) (regTwo!21387 Regex!10437)) )
))
(declare-datatypes ((String!42874 0))(
  ( (String!42875 (value!182282 String)) )
))
(declare-datatypes ((List!38268 0))(
  ( (Nil!38144) (Cons!38144 (h!43564 C!21060) (t!294199 List!38268)) )
))
(declare-datatypes ((IArray!23267 0))(
  ( (IArray!23268 (innerList!11691 List!38268)) )
))
(declare-datatypes ((Conc!11631 0))(
  ( (Node!11631 (left!29784 Conc!11631) (right!30114 Conc!11631) (csize!23492 Int) (cheight!11842 Int)) (Leaf!18081 (xs!14833 IArray!23267) (csize!23493 Int)) (Empty!11631) )
))
(declare-datatypes ((BalanceConc!22876 0))(
  ( (BalanceConc!22877 (c!626671 Conc!11631)) )
))
(declare-datatypes ((TokenValueInjection!11244 0))(
  ( (TokenValueInjection!11245 (toValue!7962 Int) (toChars!7821 Int)) )
))
(declare-datatypes ((Rule!11156 0))(
  ( (Rule!11157 (regex!5678 Regex!10437) (tag!6396 String!42874) (isSeparator!5678 Bool) (transformation!5678 TokenValueInjection!11244)) )
))
(declare-fun rule!403 () Rule!11156)

(declare-fun e!2241470 () Bool)

(declare-fun b!3621240 () Bool)

(declare-fun inv!51535 (String!42874) Bool)

(declare-fun inv!51538 (TokenValueInjection!11244) Bool)

(assert (=> b!3621240 (= e!2241470 (and tp!1106075 (inv!51535 (tag!6396 rule!403)) (inv!51538 (transformation!5678 rule!403)) e!2241462))))

(declare-fun b!3621241 () Bool)

(declare-fun res!1465444 () Bool)

(declare-fun e!2241467 () Bool)

(assert (=> b!3621241 (=> res!1465444 e!2241467)))

(declare-datatypes ((List!38269 0))(
  ( (Nil!38145) (Cons!38145 (h!43565 Rule!11156) (t!294200 List!38269)) )
))
(declare-fun rules!3307 () List!38269)

(declare-fun sepAndNonSepRulesDisjointChars!1848 (List!38269 List!38269) Bool)

(assert (=> b!3621241 (= res!1465444 (not (sepAndNonSepRulesDisjointChars!1848 rules!3307 rules!3307)))))

(declare-fun b!3621242 () Bool)

(declare-fun e!2241471 () Bool)

(declare-fun e!2241476 () Bool)

(assert (=> b!3621242 (= e!2241471 e!2241476)))

(declare-fun res!1465452 () Bool)

(assert (=> b!3621242 (=> (not res!1465452) (not e!2241476))))

(declare-datatypes ((Token!10722 0))(
  ( (Token!10723 (value!182283 TokenValue!5908) (rule!8440 Rule!11156) (size!29101 Int) (originalCharacters!6392 List!38268)) )
))
(declare-datatypes ((tuple2!38020 0))(
  ( (tuple2!38021 (_1!22144 Token!10722) (_2!22144 List!38268)) )
))
(declare-fun lt!1251545 () tuple2!38020)

(declare-fun token!511 () Token!10722)

(assert (=> b!3621242 (= res!1465452 (= (_1!22144 lt!1251545) token!511))))

(declare-datatypes ((Option!7986 0))(
  ( (None!7985) (Some!7985 (v!37751 tuple2!38020)) )
))
(declare-fun lt!1251544 () Option!7986)

(declare-fun get!12435 (Option!7986) tuple2!38020)

(assert (=> b!3621242 (= lt!1251545 (get!12435 lt!1251544))))

(declare-fun e!2241465 () Bool)

(declare-fun b!3621243 () Bool)

(declare-fun tp!1106074 () Bool)

(declare-fun e!2241472 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11156)

(assert (=> b!3621243 (= e!2241465 (and tp!1106074 (inv!51535 (tag!6396 anOtherTypeRule!33)) (inv!51538 (transformation!5678 anOtherTypeRule!33)) e!2241472))))

(declare-fun b!3621244 () Bool)

(declare-fun e!2241464 () Bool)

(declare-fun e!2241480 () Bool)

(declare-fun tp!1106073 () Bool)

(assert (=> b!3621244 (= e!2241464 (and e!2241480 tp!1106073))))

(declare-fun b!3621245 () Bool)

(declare-fun e!2241481 () Bool)

(assert (=> b!3621245 (= e!2241476 (not e!2241481))))

(declare-fun res!1465445 () Bool)

(assert (=> b!3621245 (=> res!1465445 e!2241481)))

(declare-fun lt!1251554 () List!38268)

(declare-fun matchR!5006 (Regex!10437 List!38268) Bool)

(assert (=> b!3621245 (= res!1465445 (not (matchR!5006 (regex!5678 rule!403) lt!1251554)))))

(declare-datatypes ((LexerInterface!5267 0))(
  ( (LexerInterfaceExt!5264 (__x!24034 Int)) (Lexer!5265) )
))
(declare-fun thiss!23823 () LexerInterface!5267)

(declare-fun ruleValid!1943 (LexerInterface!5267 Rule!11156) Bool)

(assert (=> b!3621245 (ruleValid!1943 thiss!23823 rule!403)))

(declare-datatypes ((Unit!54892 0))(
  ( (Unit!54893) )
))
(declare-fun lt!1251552 () Unit!54892)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1098 (LexerInterface!5267 Rule!11156 List!38269) Unit!54892)

(assert (=> b!3621245 (= lt!1251552 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1098 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3621246 () Bool)

(declare-fun e!2241463 () Bool)

(declare-fun tp!1106072 () Bool)

(declare-fun e!2241469 () Bool)

(declare-fun inv!21 (TokenValue!5908) Bool)

(assert (=> b!3621246 (= e!2241469 (and (inv!21 (value!182283 token!511)) e!2241463 tp!1106072))))

(declare-fun b!3621247 () Bool)

(declare-fun res!1465459 () Bool)

(assert (=> b!3621247 (=> res!1465459 e!2241481)))

(declare-fun suffix!1395 () List!38268)

(declare-fun isEmpty!22542 (List!38268) Bool)

(assert (=> b!3621247 (= res!1465459 (isEmpty!22542 suffix!1395))))

(declare-fun b!3621249 () Bool)

(declare-fun res!1465449 () Bool)

(assert (=> b!3621249 (=> (not res!1465449) (not e!2241476))))

(assert (=> b!3621249 (= res!1465449 (= (rule!8440 token!511) rule!403))))

(declare-fun b!3621250 () Bool)

(declare-fun res!1465458 () Bool)

(declare-fun e!2241468 () Bool)

(assert (=> b!3621250 (=> (not res!1465458) (not e!2241468))))

(assert (=> b!3621250 (= res!1465458 (not (= (isSeparator!5678 anOtherTypeRule!33) (isSeparator!5678 rule!403))))))

(declare-fun b!3621251 () Bool)

(declare-fun res!1465443 () Bool)

(assert (=> b!3621251 (=> (not res!1465443) (not e!2241476))))

(assert (=> b!3621251 (= res!1465443 (isEmpty!22542 (_2!22144 lt!1251545)))))

(declare-fun b!3621252 () Bool)

(declare-fun res!1465456 () Bool)

(assert (=> b!3621252 (=> (not res!1465456) (not e!2241468))))

(declare-fun contains!7419 (List!38269 Rule!11156) Bool)

(assert (=> b!3621252 (= res!1465456 (contains!7419 rules!3307 rule!403))))

(declare-fun e!2241477 () Bool)

(assert (=> b!3621253 (= e!2241477 (and tp!1106077 tp!1106070))))

(declare-fun b!3621254 () Bool)

(declare-fun e!2241460 () Bool)

(declare-fun tp_is_empty!17957 () Bool)

(declare-fun tp!1106069 () Bool)

(assert (=> b!3621254 (= e!2241460 (and tp_is_empty!17957 tp!1106069))))

(declare-fun b!3621255 () Bool)

(declare-fun tp!1106080 () Bool)

(assert (=> b!3621255 (= e!2241480 (and tp!1106080 (inv!51535 (tag!6396 (h!43565 rules!3307))) (inv!51538 (transformation!5678 (h!43565 rules!3307))) e!2241477))))

(declare-fun b!3621256 () Bool)

(declare-fun e!2241466 () Bool)

(declare-fun lt!1251553 () tuple2!38020)

(declare-fun lt!1251546 () Rule!11156)

(assert (=> b!3621256 (= e!2241466 (= (rule!8440 (_1!22144 lt!1251553)) lt!1251546))))

(declare-fun b!3621257 () Bool)

(declare-fun e!2241473 () Bool)

(assert (=> b!3621257 (= e!2241473 e!2241466)))

(declare-fun res!1465453 () Bool)

(assert (=> b!3621257 (=> (not res!1465453) (not e!2241466))))

(declare-fun list!14078 (BalanceConc!22876) List!38268)

(declare-fun charsOf!3692 (Token!10722) BalanceConc!22876)

(assert (=> b!3621257 (= res!1465453 (matchR!5006 (regex!5678 lt!1251546) (list!14078 (charsOf!3692 (_1!22144 lt!1251553)))))))

(declare-datatypes ((Option!7987 0))(
  ( (None!7986) (Some!7986 (v!37752 Rule!11156)) )
))
(declare-fun lt!1251556 () Option!7987)

(declare-fun get!12436 (Option!7987) Rule!11156)

(assert (=> b!3621257 (= lt!1251546 (get!12436 lt!1251556))))

(declare-fun e!2241482 () Bool)

(declare-fun b!3621258 () Bool)

(declare-fun tp!1106066 () Bool)

(assert (=> b!3621258 (= e!2241463 (and tp!1106066 (inv!51535 (tag!6396 (rule!8440 token!511))) (inv!51538 (transformation!5678 (rule!8440 token!511))) e!2241482))))

(assert (=> b!3621259 (= e!2241472 (and tp!1106078 tp!1106076))))

(declare-fun b!3621260 () Bool)

(assert (=> b!3621260 (= e!2241468 e!2241471)))

(declare-fun res!1465447 () Bool)

(assert (=> b!3621260 (=> (not res!1465447) (not e!2241471))))

(declare-fun isDefined!6218 (Option!7986) Bool)

(assert (=> b!3621260 (= res!1465447 (isDefined!6218 lt!1251544))))

(declare-fun maxPrefix!2801 (LexerInterface!5267 List!38269 List!38268) Option!7986)

(assert (=> b!3621260 (= lt!1251544 (maxPrefix!2801 thiss!23823 rules!3307 lt!1251554))))

(assert (=> b!3621260 (= lt!1251554 (list!14078 (charsOf!3692 token!511)))))

(declare-fun b!3621261 () Bool)

(declare-fun res!1465448 () Bool)

(assert (=> b!3621261 (=> (not res!1465448) (not e!2241468))))

(declare-fun isEmpty!22543 (List!38269) Bool)

(assert (=> b!3621261 (= res!1465448 (not (isEmpty!22543 rules!3307)))))

(declare-fun b!3621262 () Bool)

(declare-fun res!1465446 () Bool)

(assert (=> b!3621262 (=> (not res!1465446) (not e!2241468))))

(assert (=> b!3621262 (= res!1465446 (contains!7419 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3621263 () Bool)

(declare-fun lt!1251547 () List!38268)

(declare-fun lt!1251557 () List!38268)

(declare-fun isPrefix!3041 (List!38268 List!38268) Bool)

(assert (=> b!3621263 (= e!2241467 (isPrefix!3041 lt!1251547 lt!1251557))))

(declare-fun ++!9494 (List!38268 List!38268) List!38268)

(assert (=> b!3621263 (isPrefix!3041 lt!1251547 (++!9494 lt!1251547 (_2!22144 lt!1251553)))))

(declare-fun lt!1251548 () Unit!54892)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1962 (List!38268 List!38268) Unit!54892)

(assert (=> b!3621263 (= lt!1251548 (lemmaConcatTwoListThenFirstIsPrefix!1962 lt!1251547 (_2!22144 lt!1251553)))))

(assert (=> b!3621263 (= lt!1251547 (list!14078 (charsOf!3692 (_1!22144 lt!1251553))))))

(assert (=> b!3621263 e!2241473))

(declare-fun res!1465450 () Bool)

(assert (=> b!3621263 (=> (not res!1465450) (not e!2241473))))

(declare-fun isDefined!6219 (Option!7987) Bool)

(assert (=> b!3621263 (= res!1465450 (isDefined!6219 lt!1251556))))

(declare-fun getRuleFromTag!1284 (LexerInterface!5267 List!38269 String!42874) Option!7987)

(assert (=> b!3621263 (= lt!1251556 (getRuleFromTag!1284 thiss!23823 rules!3307 (tag!6396 (rule!8440 (_1!22144 lt!1251553)))))))

(declare-fun lt!1251558 () Unit!54892)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1284 (LexerInterface!5267 List!38269 List!38268 Token!10722) Unit!54892)

(assert (=> b!3621263 (= lt!1251558 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1284 thiss!23823 rules!3307 lt!1251557 (_1!22144 lt!1251553)))))

(declare-fun lt!1251551 () Option!7986)

(assert (=> b!3621263 (= lt!1251553 (get!12435 lt!1251551))))

(declare-fun lt!1251550 () Unit!54892)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!947 (LexerInterface!5267 List!38269 List!38268 List!38268) Unit!54892)

(assert (=> b!3621263 (= lt!1251550 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!947 thiss!23823 rules!3307 lt!1251554 suffix!1395))))

(assert (=> b!3621263 (= lt!1251551 (maxPrefix!2801 thiss!23823 rules!3307 lt!1251557))))

(assert (=> b!3621263 (isPrefix!3041 lt!1251554 lt!1251557)))

(declare-fun lt!1251555 () Unit!54892)

(assert (=> b!3621263 (= lt!1251555 (lemmaConcatTwoListThenFirstIsPrefix!1962 lt!1251554 suffix!1395))))

(assert (=> b!3621263 (= lt!1251557 (++!9494 lt!1251554 suffix!1395))))

(declare-fun b!3621264 () Bool)

(assert (=> b!3621264 (= e!2241481 e!2241467)))

(declare-fun res!1465451 () Bool)

(assert (=> b!3621264 (=> res!1465451 e!2241467)))

(declare-fun lt!1251549 () C!21060)

(declare-fun contains!7420 (List!38268 C!21060) Bool)

(declare-fun usedCharacters!892 (Regex!10437) List!38268)

(assert (=> b!3621264 (= res!1465451 (contains!7420 (usedCharacters!892 (regex!5678 rule!403)) lt!1251549))))

(declare-fun head!7648 (List!38268) C!21060)

(assert (=> b!3621264 (= lt!1251549 (head!7648 suffix!1395))))

(declare-fun res!1465454 () Bool)

(assert (=> start!337274 (=> (not res!1465454) (not e!2241468))))

(get-info :version)

(assert (=> start!337274 (= res!1465454 ((_ is Lexer!5265) thiss!23823))))

(assert (=> start!337274 e!2241468))

(assert (=> start!337274 e!2241464))

(assert (=> start!337274 e!2241460))

(assert (=> start!337274 true))

(declare-fun inv!51539 (Token!10722) Bool)

(assert (=> start!337274 (and (inv!51539 token!511) e!2241469)))

(assert (=> start!337274 e!2241470))

(assert (=> start!337274 e!2241465))

(declare-fun b!3621248 () Bool)

(declare-fun res!1465455 () Bool)

(assert (=> b!3621248 (=> (not res!1465455) (not e!2241468))))

(declare-fun rulesInvariant!4664 (LexerInterface!5267 List!38269) Bool)

(assert (=> b!3621248 (= res!1465455 (rulesInvariant!4664 thiss!23823 rules!3307))))

(assert (=> b!3621265 (= e!2241482 (and tp!1106068 tp!1106071))))

(declare-fun b!3621266 () Bool)

(declare-fun res!1465457 () Bool)

(assert (=> b!3621266 (=> res!1465457 e!2241467)))

(assert (=> b!3621266 (= res!1465457 (not (contains!7420 (usedCharacters!892 (regex!5678 anOtherTypeRule!33)) lt!1251549)))))

(assert (= (and start!337274 res!1465454) b!3621261))

(assert (= (and b!3621261 res!1465448) b!3621248))

(assert (= (and b!3621248 res!1465455) b!3621252))

(assert (= (and b!3621252 res!1465456) b!3621262))

(assert (= (and b!3621262 res!1465446) b!3621250))

(assert (= (and b!3621250 res!1465458) b!3621260))

(assert (= (and b!3621260 res!1465447) b!3621242))

(assert (= (and b!3621242 res!1465452) b!3621251))

(assert (= (and b!3621251 res!1465443) b!3621249))

(assert (= (and b!3621249 res!1465449) b!3621245))

(assert (= (and b!3621245 (not res!1465445)) b!3621247))

(assert (= (and b!3621247 (not res!1465459)) b!3621264))

(assert (= (and b!3621264 (not res!1465451)) b!3621266))

(assert (= (and b!3621266 (not res!1465457)) b!3621241))

(assert (= (and b!3621241 (not res!1465444)) b!3621263))

(assert (= (and b!3621263 res!1465450) b!3621257))

(assert (= (and b!3621257 res!1465453) b!3621256))

(assert (= b!3621255 b!3621253))

(assert (= b!3621244 b!3621255))

(assert (= (and start!337274 ((_ is Cons!38145) rules!3307)) b!3621244))

(assert (= (and start!337274 ((_ is Cons!38144) suffix!1395)) b!3621254))

(assert (= b!3621258 b!3621265))

(assert (= b!3621246 b!3621258))

(assert (= start!337274 b!3621246))

(assert (= b!3621240 b!3621239))

(assert (= start!337274 b!3621240))

(assert (= b!3621243 b!3621259))

(assert (= start!337274 b!3621243))

(declare-fun m!4120967 () Bool)

(assert (=> b!3621255 m!4120967))

(declare-fun m!4120969 () Bool)

(assert (=> b!3621255 m!4120969))

(declare-fun m!4120971 () Bool)

(assert (=> b!3621248 m!4120971))

(declare-fun m!4120973 () Bool)

(assert (=> b!3621258 m!4120973))

(declare-fun m!4120975 () Bool)

(assert (=> b!3621258 m!4120975))

(declare-fun m!4120977 () Bool)

(assert (=> b!3621262 m!4120977))

(declare-fun m!4120979 () Bool)

(assert (=> b!3621243 m!4120979))

(declare-fun m!4120981 () Bool)

(assert (=> b!3621243 m!4120981))

(declare-fun m!4120983 () Bool)

(assert (=> b!3621247 m!4120983))

(declare-fun m!4120985 () Bool)

(assert (=> b!3621241 m!4120985))

(declare-fun m!4120987 () Bool)

(assert (=> b!3621257 m!4120987))

(assert (=> b!3621257 m!4120987))

(declare-fun m!4120989 () Bool)

(assert (=> b!3621257 m!4120989))

(assert (=> b!3621257 m!4120989))

(declare-fun m!4120991 () Bool)

(assert (=> b!3621257 m!4120991))

(declare-fun m!4120993 () Bool)

(assert (=> b!3621257 m!4120993))

(declare-fun m!4120995 () Bool)

(assert (=> b!3621252 m!4120995))

(declare-fun m!4120997 () Bool)

(assert (=> b!3621261 m!4120997))

(declare-fun m!4120999 () Bool)

(assert (=> b!3621242 m!4120999))

(declare-fun m!4121001 () Bool)

(assert (=> b!3621246 m!4121001))

(declare-fun m!4121003 () Bool)

(assert (=> b!3621251 m!4121003))

(declare-fun m!4121005 () Bool)

(assert (=> b!3621260 m!4121005))

(declare-fun m!4121007 () Bool)

(assert (=> b!3621260 m!4121007))

(declare-fun m!4121009 () Bool)

(assert (=> b!3621260 m!4121009))

(assert (=> b!3621260 m!4121009))

(declare-fun m!4121011 () Bool)

(assert (=> b!3621260 m!4121011))

(declare-fun m!4121013 () Bool)

(assert (=> b!3621266 m!4121013))

(assert (=> b!3621266 m!4121013))

(declare-fun m!4121015 () Bool)

(assert (=> b!3621266 m!4121015))

(declare-fun m!4121017 () Bool)

(assert (=> b!3621240 m!4121017))

(declare-fun m!4121019 () Bool)

(assert (=> b!3621240 m!4121019))

(declare-fun m!4121021 () Bool)

(assert (=> b!3621245 m!4121021))

(declare-fun m!4121023 () Bool)

(assert (=> b!3621245 m!4121023))

(declare-fun m!4121025 () Bool)

(assert (=> b!3621245 m!4121025))

(declare-fun m!4121027 () Bool)

(assert (=> start!337274 m!4121027))

(declare-fun m!4121029 () Bool)

(assert (=> b!3621263 m!4121029))

(declare-fun m!4121031 () Bool)

(assert (=> b!3621263 m!4121031))

(assert (=> b!3621263 m!4121029))

(declare-fun m!4121033 () Bool)

(assert (=> b!3621263 m!4121033))

(declare-fun m!4121035 () Bool)

(assert (=> b!3621263 m!4121035))

(declare-fun m!4121037 () Bool)

(assert (=> b!3621263 m!4121037))

(assert (=> b!3621263 m!4120987))

(declare-fun m!4121039 () Bool)

(assert (=> b!3621263 m!4121039))

(assert (=> b!3621263 m!4120987))

(assert (=> b!3621263 m!4120989))

(declare-fun m!4121041 () Bool)

(assert (=> b!3621263 m!4121041))

(declare-fun m!4121043 () Bool)

(assert (=> b!3621263 m!4121043))

(declare-fun m!4121045 () Bool)

(assert (=> b!3621263 m!4121045))

(declare-fun m!4121047 () Bool)

(assert (=> b!3621263 m!4121047))

(declare-fun m!4121049 () Bool)

(assert (=> b!3621263 m!4121049))

(declare-fun m!4121051 () Bool)

(assert (=> b!3621263 m!4121051))

(declare-fun m!4121053 () Bool)

(assert (=> b!3621263 m!4121053))

(declare-fun m!4121055 () Bool)

(assert (=> b!3621264 m!4121055))

(assert (=> b!3621264 m!4121055))

(declare-fun m!4121057 () Bool)

(assert (=> b!3621264 m!4121057))

(declare-fun m!4121059 () Bool)

(assert (=> b!3621264 m!4121059))

(check-sat (not b!3621258) b_and!264801 (not b!3621254) (not b_next!95135) (not b!3621255) tp_is_empty!17957 b_and!264797 (not b!3621242) b_and!264803 b_and!264795 (not b!3621247) (not b!3621244) (not b!3621264) (not b_next!95143) (not b_next!95133) b_and!264807 (not b!3621241) (not b_next!95141) (not b!3621243) (not b!3621262) (not b!3621246) b_and!264809 (not b!3621240) (not b!3621261) (not b_next!95131) (not b!3621251) (not b!3621252) (not b!3621245) (not b!3621260) (not b!3621263) (not b_next!95137) (not b!3621266) (not b_next!95139) (not b!3621248) (not b_next!95129) b_and!264805 (not b!3621257) b_and!264799 (not start!337274))
(check-sat (not b_next!95141) b_and!264809 b_and!264801 (not b_next!95135) (not b_next!95131) b_and!264797 (not b_next!95137) (not b_next!95139) b_and!264799 b_and!264803 b_and!264795 (not b_next!95143) (not b_next!95133) b_and!264807 (not b_next!95129) b_and!264805)
(get-model)

(declare-fun bm!262016 () Bool)

(declare-fun call!262021 () Bool)

(assert (=> bm!262016 (= call!262021 (isEmpty!22542 lt!1251554))))

(declare-fun d!1065188 () Bool)

(declare-fun e!2241550 () Bool)

(assert (=> d!1065188 e!2241550))

(declare-fun c!626696 () Bool)

(assert (=> d!1065188 (= c!626696 ((_ is EmptyExpr!10437) (regex!5678 rule!403)))))

(declare-fun lt!1251586 () Bool)

(declare-fun e!2241547 () Bool)

(assert (=> d!1065188 (= lt!1251586 e!2241547)))

(declare-fun c!626697 () Bool)

(assert (=> d!1065188 (= c!626697 (isEmpty!22542 lt!1251554))))

(declare-fun validRegex!4772 (Regex!10437) Bool)

(assert (=> d!1065188 (validRegex!4772 (regex!5678 rule!403))))

(assert (=> d!1065188 (= (matchR!5006 (regex!5678 rule!403) lt!1251554) lt!1251586)))

(declare-fun b!3621370 () Bool)

(declare-fun res!1465525 () Bool)

(declare-fun e!2241545 () Bool)

(assert (=> b!3621370 (=> res!1465525 e!2241545)))

(declare-fun tail!5609 (List!38268) List!38268)

(assert (=> b!3621370 (= res!1465525 (not (isEmpty!22542 (tail!5609 lt!1251554))))))

(declare-fun b!3621371 () Bool)

(declare-fun e!2241549 () Bool)

(assert (=> b!3621371 (= e!2241549 (= (head!7648 lt!1251554) (c!626670 (regex!5678 rule!403))))))

(declare-fun b!3621372 () Bool)

(declare-fun e!2241551 () Bool)

(assert (=> b!3621372 (= e!2241551 (not lt!1251586))))

(declare-fun b!3621373 () Bool)

(declare-fun derivativeStep!3159 (Regex!10437 C!21060) Regex!10437)

(assert (=> b!3621373 (= e!2241547 (matchR!5006 (derivativeStep!3159 (regex!5678 rule!403) (head!7648 lt!1251554)) (tail!5609 lt!1251554)))))

(declare-fun b!3621374 () Bool)

(assert (=> b!3621374 (= e!2241550 e!2241551)))

(declare-fun c!626698 () Bool)

(assert (=> b!3621374 (= c!626698 ((_ is EmptyLang!10437) (regex!5678 rule!403)))))

(declare-fun b!3621375 () Bool)

(declare-fun res!1465522 () Bool)

(declare-fun e!2241548 () Bool)

(assert (=> b!3621375 (=> res!1465522 e!2241548)))

(assert (=> b!3621375 (= res!1465522 e!2241549)))

(declare-fun res!1465523 () Bool)

(assert (=> b!3621375 (=> (not res!1465523) (not e!2241549))))

(assert (=> b!3621375 (= res!1465523 lt!1251586)))

(declare-fun b!3621376 () Bool)

(declare-fun e!2241546 () Bool)

(assert (=> b!3621376 (= e!2241548 e!2241546)))

(declare-fun res!1465527 () Bool)

(assert (=> b!3621376 (=> (not res!1465527) (not e!2241546))))

(assert (=> b!3621376 (= res!1465527 (not lt!1251586))))

(declare-fun b!3621377 () Bool)

(declare-fun res!1465526 () Bool)

(assert (=> b!3621377 (=> (not res!1465526) (not e!2241549))))

(assert (=> b!3621377 (= res!1465526 (isEmpty!22542 (tail!5609 lt!1251554)))))

(declare-fun b!3621378 () Bool)

(declare-fun res!1465529 () Bool)

(assert (=> b!3621378 (=> res!1465529 e!2241548)))

(assert (=> b!3621378 (= res!1465529 (not ((_ is ElementMatch!10437) (regex!5678 rule!403))))))

(assert (=> b!3621378 (= e!2241551 e!2241548)))

(declare-fun b!3621379 () Bool)

(assert (=> b!3621379 (= e!2241550 (= lt!1251586 call!262021))))

(declare-fun b!3621380 () Bool)

(assert (=> b!3621380 (= e!2241546 e!2241545)))

(declare-fun res!1465524 () Bool)

(assert (=> b!3621380 (=> res!1465524 e!2241545)))

(assert (=> b!3621380 (= res!1465524 call!262021)))

(declare-fun b!3621381 () Bool)

(assert (=> b!3621381 (= e!2241545 (not (= (head!7648 lt!1251554) (c!626670 (regex!5678 rule!403)))))))

(declare-fun b!3621382 () Bool)

(declare-fun nullable!3610 (Regex!10437) Bool)

(assert (=> b!3621382 (= e!2241547 (nullable!3610 (regex!5678 rule!403)))))

(declare-fun b!3621383 () Bool)

(declare-fun res!1465528 () Bool)

(assert (=> b!3621383 (=> (not res!1465528) (not e!2241549))))

(assert (=> b!3621383 (= res!1465528 (not call!262021))))

(assert (= (and d!1065188 c!626697) b!3621382))

(assert (= (and d!1065188 (not c!626697)) b!3621373))

(assert (= (and d!1065188 c!626696) b!3621379))

(assert (= (and d!1065188 (not c!626696)) b!3621374))

(assert (= (and b!3621374 c!626698) b!3621372))

(assert (= (and b!3621374 (not c!626698)) b!3621378))

(assert (= (and b!3621378 (not res!1465529)) b!3621375))

(assert (= (and b!3621375 res!1465523) b!3621383))

(assert (= (and b!3621383 res!1465528) b!3621377))

(assert (= (and b!3621377 res!1465526) b!3621371))

(assert (= (and b!3621375 (not res!1465522)) b!3621376))

(assert (= (and b!3621376 res!1465527) b!3621380))

(assert (= (and b!3621380 (not res!1465524)) b!3621370))

(assert (= (and b!3621370 (not res!1465525)) b!3621381))

(assert (= (or b!3621379 b!3621383 b!3621380) bm!262016))

(declare-fun m!4121135 () Bool)

(assert (=> d!1065188 m!4121135))

(declare-fun m!4121137 () Bool)

(assert (=> d!1065188 m!4121137))

(declare-fun m!4121139 () Bool)

(assert (=> b!3621382 m!4121139))

(declare-fun m!4121141 () Bool)

(assert (=> b!3621371 m!4121141))

(declare-fun m!4121143 () Bool)

(assert (=> b!3621377 m!4121143))

(assert (=> b!3621377 m!4121143))

(declare-fun m!4121145 () Bool)

(assert (=> b!3621377 m!4121145))

(assert (=> b!3621370 m!4121143))

(assert (=> b!3621370 m!4121143))

(assert (=> b!3621370 m!4121145))

(assert (=> b!3621381 m!4121141))

(assert (=> bm!262016 m!4121135))

(assert (=> b!3621373 m!4121141))

(assert (=> b!3621373 m!4121141))

(declare-fun m!4121147 () Bool)

(assert (=> b!3621373 m!4121147))

(assert (=> b!3621373 m!4121143))

(assert (=> b!3621373 m!4121147))

(assert (=> b!3621373 m!4121143))

(declare-fun m!4121149 () Bool)

(assert (=> b!3621373 m!4121149))

(assert (=> b!3621245 d!1065188))

(declare-fun d!1065202 () Bool)

(declare-fun res!1465534 () Bool)

(declare-fun e!2241556 () Bool)

(assert (=> d!1065202 (=> (not res!1465534) (not e!2241556))))

(assert (=> d!1065202 (= res!1465534 (validRegex!4772 (regex!5678 rule!403)))))

(assert (=> d!1065202 (= (ruleValid!1943 thiss!23823 rule!403) e!2241556)))

(declare-fun b!3621392 () Bool)

(declare-fun res!1465535 () Bool)

(assert (=> b!3621392 (=> (not res!1465535) (not e!2241556))))

(assert (=> b!3621392 (= res!1465535 (not (nullable!3610 (regex!5678 rule!403))))))

(declare-fun b!3621393 () Bool)

(assert (=> b!3621393 (= e!2241556 (not (= (tag!6396 rule!403) (String!42875 ""))))))

(assert (= (and d!1065202 res!1465534) b!3621392))

(assert (= (and b!3621392 res!1465535) b!3621393))

(assert (=> d!1065202 m!4121137))

(assert (=> b!3621392 m!4121139))

(assert (=> b!3621245 d!1065202))

(declare-fun d!1065204 () Bool)

(assert (=> d!1065204 (ruleValid!1943 thiss!23823 rule!403)))

(declare-fun lt!1251604 () Unit!54892)

(declare-fun choose!21249 (LexerInterface!5267 Rule!11156 List!38269) Unit!54892)

(assert (=> d!1065204 (= lt!1251604 (choose!21249 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1065204 (contains!7419 rules!3307 rule!403)))

(assert (=> d!1065204 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1098 thiss!23823 rule!403 rules!3307) lt!1251604)))

(declare-fun bs!571205 () Bool)

(assert (= bs!571205 d!1065204))

(assert (=> bs!571205 m!4121023))

(declare-fun m!4121151 () Bool)

(assert (=> bs!571205 m!4121151))

(assert (=> bs!571205 m!4120995))

(assert (=> b!3621245 d!1065204))

(declare-fun d!1065206 () Bool)

(declare-fun lt!1251610 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5460 (List!38268) (InoxSet C!21060))

(assert (=> d!1065206 (= lt!1251610 (select (content!5460 (usedCharacters!892 (regex!5678 anOtherTypeRule!33))) lt!1251549))))

(declare-fun e!2241573 () Bool)

(assert (=> d!1065206 (= lt!1251610 e!2241573)))

(declare-fun res!1465565 () Bool)

(assert (=> d!1065206 (=> (not res!1465565) (not e!2241573))))

(assert (=> d!1065206 (= res!1465565 ((_ is Cons!38144) (usedCharacters!892 (regex!5678 anOtherTypeRule!33))))))

(assert (=> d!1065206 (= (contains!7420 (usedCharacters!892 (regex!5678 anOtherTypeRule!33)) lt!1251549) lt!1251610)))

(declare-fun b!3621429 () Bool)

(declare-fun e!2241572 () Bool)

(assert (=> b!3621429 (= e!2241573 e!2241572)))

(declare-fun res!1465566 () Bool)

(assert (=> b!3621429 (=> res!1465566 e!2241572)))

(assert (=> b!3621429 (= res!1465566 (= (h!43564 (usedCharacters!892 (regex!5678 anOtherTypeRule!33))) lt!1251549))))

(declare-fun b!3621430 () Bool)

(assert (=> b!3621430 (= e!2241572 (contains!7420 (t!294199 (usedCharacters!892 (regex!5678 anOtherTypeRule!33))) lt!1251549))))

(assert (= (and d!1065206 res!1465565) b!3621429))

(assert (= (and b!3621429 (not res!1465566)) b!3621430))

(assert (=> d!1065206 m!4121013))

(declare-fun m!4121189 () Bool)

(assert (=> d!1065206 m!4121189))

(declare-fun m!4121193 () Bool)

(assert (=> d!1065206 m!4121193))

(declare-fun m!4121201 () Bool)

(assert (=> b!3621430 m!4121201))

(assert (=> b!3621266 d!1065206))

(declare-fun b!3621451 () Bool)

(declare-fun e!2241586 () List!38268)

(assert (=> b!3621451 (= e!2241586 (Cons!38144 (c!626670 (regex!5678 anOtherTypeRule!33)) Nil!38144))))

(declare-fun bm!262028 () Bool)

(declare-fun call!262035 () List!38268)

(declare-fun c!626713 () Bool)

(assert (=> bm!262028 (= call!262035 (usedCharacters!892 (ite c!626713 (regOne!21387 (regex!5678 anOtherTypeRule!33)) (regTwo!21386 (regex!5678 anOtherTypeRule!33)))))))

(declare-fun b!3621452 () Bool)

(declare-fun c!626715 () Bool)

(assert (=> b!3621452 (= c!626715 ((_ is Star!10437) (regex!5678 anOtherTypeRule!33)))))

(declare-fun e!2241585 () List!38268)

(assert (=> b!3621452 (= e!2241586 e!2241585)))

(declare-fun call!262036 () List!38268)

(declare-fun bm!262029 () Bool)

(declare-fun call!262034 () List!38268)

(assert (=> bm!262029 (= call!262034 (++!9494 (ite c!626713 call!262035 call!262036) (ite c!626713 call!262036 call!262035)))))

(declare-fun d!1065216 () Bool)

(declare-fun c!626716 () Bool)

(assert (=> d!1065216 (= c!626716 (or ((_ is EmptyExpr!10437) (regex!5678 anOtherTypeRule!33)) ((_ is EmptyLang!10437) (regex!5678 anOtherTypeRule!33))))))

(declare-fun e!2241587 () List!38268)

(assert (=> d!1065216 (= (usedCharacters!892 (regex!5678 anOtherTypeRule!33)) e!2241587)))

(declare-fun call!262033 () List!38268)

(declare-fun bm!262030 () Bool)

(assert (=> bm!262030 (= call!262033 (usedCharacters!892 (ite c!626715 (reg!10766 (regex!5678 anOtherTypeRule!33)) (ite c!626713 (regTwo!21387 (regex!5678 anOtherTypeRule!33)) (regOne!21386 (regex!5678 anOtherTypeRule!33))))))))

(declare-fun b!3621453 () Bool)

(declare-fun e!2241584 () List!38268)

(assert (=> b!3621453 (= e!2241584 call!262034)))

(declare-fun bm!262031 () Bool)

(assert (=> bm!262031 (= call!262036 call!262033)))

(declare-fun b!3621454 () Bool)

(assert (=> b!3621454 (= e!2241587 e!2241586)))

(declare-fun c!626714 () Bool)

(assert (=> b!3621454 (= c!626714 ((_ is ElementMatch!10437) (regex!5678 anOtherTypeRule!33)))))

(declare-fun b!3621455 () Bool)

(assert (=> b!3621455 (= e!2241587 Nil!38144)))

(declare-fun b!3621456 () Bool)

(assert (=> b!3621456 (= e!2241584 call!262034)))

(declare-fun b!3621457 () Bool)

(assert (=> b!3621457 (= e!2241585 e!2241584)))

(assert (=> b!3621457 (= c!626713 ((_ is Union!10437) (regex!5678 anOtherTypeRule!33)))))

(declare-fun b!3621458 () Bool)

(assert (=> b!3621458 (= e!2241585 call!262033)))

(assert (= (and d!1065216 c!626716) b!3621455))

(assert (= (and d!1065216 (not c!626716)) b!3621454))

(assert (= (and b!3621454 c!626714) b!3621451))

(assert (= (and b!3621454 (not c!626714)) b!3621452))

(assert (= (and b!3621452 c!626715) b!3621458))

(assert (= (and b!3621452 (not c!626715)) b!3621457))

(assert (= (and b!3621457 c!626713) b!3621456))

(assert (= (and b!3621457 (not c!626713)) b!3621453))

(assert (= (or b!3621456 b!3621453) bm!262028))

(assert (= (or b!3621456 b!3621453) bm!262031))

(assert (= (or b!3621456 b!3621453) bm!262029))

(assert (= (or b!3621458 bm!262031) bm!262030))

(declare-fun m!4121207 () Bool)

(assert (=> bm!262028 m!4121207))

(declare-fun m!4121209 () Bool)

(assert (=> bm!262029 m!4121209))

(declare-fun m!4121211 () Bool)

(assert (=> bm!262030 m!4121211))

(assert (=> b!3621266 d!1065216))

(declare-fun d!1065218 () Bool)

(assert (=> d!1065218 (= (inv!51535 (tag!6396 (h!43565 rules!3307))) (= (mod (str.len (value!182282 (tag!6396 (h!43565 rules!3307)))) 2) 0))))

(assert (=> b!3621255 d!1065218))

(declare-fun d!1065220 () Bool)

(declare-fun res!1465571 () Bool)

(declare-fun e!2241590 () Bool)

(assert (=> d!1065220 (=> (not res!1465571) (not e!2241590))))

(declare-fun semiInverseModEq!2408 (Int Int) Bool)

(assert (=> d!1065220 (= res!1465571 (semiInverseModEq!2408 (toChars!7821 (transformation!5678 (h!43565 rules!3307))) (toValue!7962 (transformation!5678 (h!43565 rules!3307)))))))

(assert (=> d!1065220 (= (inv!51538 (transformation!5678 (h!43565 rules!3307))) e!2241590)))

(declare-fun b!3621461 () Bool)

(declare-fun equivClasses!2307 (Int Int) Bool)

(assert (=> b!3621461 (= e!2241590 (equivClasses!2307 (toChars!7821 (transformation!5678 (h!43565 rules!3307))) (toValue!7962 (transformation!5678 (h!43565 rules!3307)))))))

(assert (= (and d!1065220 res!1465571) b!3621461))

(declare-fun m!4121213 () Bool)

(assert (=> d!1065220 m!4121213))

(declare-fun m!4121215 () Bool)

(assert (=> b!3621461 m!4121215))

(assert (=> b!3621255 d!1065220))

(declare-fun d!1065222 () Bool)

(assert (=> d!1065222 (= (inv!51535 (tag!6396 anOtherTypeRule!33)) (= (mod (str.len (value!182282 (tag!6396 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3621243 d!1065222))

(declare-fun d!1065224 () Bool)

(declare-fun res!1465572 () Bool)

(declare-fun e!2241591 () Bool)

(assert (=> d!1065224 (=> (not res!1465572) (not e!2241591))))

(assert (=> d!1065224 (= res!1465572 (semiInverseModEq!2408 (toChars!7821 (transformation!5678 anOtherTypeRule!33)) (toValue!7962 (transformation!5678 anOtherTypeRule!33))))))

(assert (=> d!1065224 (= (inv!51538 (transformation!5678 anOtherTypeRule!33)) e!2241591)))

(declare-fun b!3621462 () Bool)

(assert (=> b!3621462 (= e!2241591 (equivClasses!2307 (toChars!7821 (transformation!5678 anOtherTypeRule!33)) (toValue!7962 (transformation!5678 anOtherTypeRule!33))))))

(assert (= (and d!1065224 res!1465572) b!3621462))

(declare-fun m!4121217 () Bool)

(assert (=> d!1065224 m!4121217))

(declare-fun m!4121219 () Bool)

(assert (=> b!3621462 m!4121219))

(assert (=> b!3621243 d!1065224))

(declare-fun d!1065226 () Bool)

(declare-fun lt!1251612 () Bool)

(assert (=> d!1065226 (= lt!1251612 (select (content!5460 (usedCharacters!892 (regex!5678 rule!403))) lt!1251549))))

(declare-fun e!2241593 () Bool)

(assert (=> d!1065226 (= lt!1251612 e!2241593)))

(declare-fun res!1465573 () Bool)

(assert (=> d!1065226 (=> (not res!1465573) (not e!2241593))))

(assert (=> d!1065226 (= res!1465573 ((_ is Cons!38144) (usedCharacters!892 (regex!5678 rule!403))))))

(assert (=> d!1065226 (= (contains!7420 (usedCharacters!892 (regex!5678 rule!403)) lt!1251549) lt!1251612)))

(declare-fun b!3621463 () Bool)

(declare-fun e!2241592 () Bool)

(assert (=> b!3621463 (= e!2241593 e!2241592)))

(declare-fun res!1465574 () Bool)

(assert (=> b!3621463 (=> res!1465574 e!2241592)))

(assert (=> b!3621463 (= res!1465574 (= (h!43564 (usedCharacters!892 (regex!5678 rule!403))) lt!1251549))))

(declare-fun b!3621464 () Bool)

(assert (=> b!3621464 (= e!2241592 (contains!7420 (t!294199 (usedCharacters!892 (regex!5678 rule!403))) lt!1251549))))

(assert (= (and d!1065226 res!1465573) b!3621463))

(assert (= (and b!3621463 (not res!1465574)) b!3621464))

(assert (=> d!1065226 m!4121055))

(declare-fun m!4121221 () Bool)

(assert (=> d!1065226 m!4121221))

(declare-fun m!4121223 () Bool)

(assert (=> d!1065226 m!4121223))

(declare-fun m!4121225 () Bool)

(assert (=> b!3621464 m!4121225))

(assert (=> b!3621264 d!1065226))

(declare-fun b!3621465 () Bool)

(declare-fun e!2241596 () List!38268)

(assert (=> b!3621465 (= e!2241596 (Cons!38144 (c!626670 (regex!5678 rule!403)) Nil!38144))))

(declare-fun bm!262032 () Bool)

(declare-fun call!262039 () List!38268)

(declare-fun c!626717 () Bool)

(assert (=> bm!262032 (= call!262039 (usedCharacters!892 (ite c!626717 (regOne!21387 (regex!5678 rule!403)) (regTwo!21386 (regex!5678 rule!403)))))))

(declare-fun b!3621466 () Bool)

(declare-fun c!626719 () Bool)

(assert (=> b!3621466 (= c!626719 ((_ is Star!10437) (regex!5678 rule!403)))))

(declare-fun e!2241595 () List!38268)

(assert (=> b!3621466 (= e!2241596 e!2241595)))

(declare-fun bm!262033 () Bool)

(declare-fun call!262038 () List!38268)

(declare-fun call!262040 () List!38268)

(assert (=> bm!262033 (= call!262038 (++!9494 (ite c!626717 call!262039 call!262040) (ite c!626717 call!262040 call!262039)))))

(declare-fun d!1065228 () Bool)

(declare-fun c!626720 () Bool)

(assert (=> d!1065228 (= c!626720 (or ((_ is EmptyExpr!10437) (regex!5678 rule!403)) ((_ is EmptyLang!10437) (regex!5678 rule!403))))))

(declare-fun e!2241597 () List!38268)

(assert (=> d!1065228 (= (usedCharacters!892 (regex!5678 rule!403)) e!2241597)))

(declare-fun call!262037 () List!38268)

(declare-fun bm!262034 () Bool)

(assert (=> bm!262034 (= call!262037 (usedCharacters!892 (ite c!626719 (reg!10766 (regex!5678 rule!403)) (ite c!626717 (regTwo!21387 (regex!5678 rule!403)) (regOne!21386 (regex!5678 rule!403))))))))

(declare-fun b!3621467 () Bool)

(declare-fun e!2241594 () List!38268)

(assert (=> b!3621467 (= e!2241594 call!262038)))

(declare-fun bm!262035 () Bool)

(assert (=> bm!262035 (= call!262040 call!262037)))

(declare-fun b!3621468 () Bool)

(assert (=> b!3621468 (= e!2241597 e!2241596)))

(declare-fun c!626718 () Bool)

(assert (=> b!3621468 (= c!626718 ((_ is ElementMatch!10437) (regex!5678 rule!403)))))

(declare-fun b!3621469 () Bool)

(assert (=> b!3621469 (= e!2241597 Nil!38144)))

(declare-fun b!3621470 () Bool)

(assert (=> b!3621470 (= e!2241594 call!262038)))

(declare-fun b!3621471 () Bool)

(assert (=> b!3621471 (= e!2241595 e!2241594)))

(assert (=> b!3621471 (= c!626717 ((_ is Union!10437) (regex!5678 rule!403)))))

(declare-fun b!3621472 () Bool)

(assert (=> b!3621472 (= e!2241595 call!262037)))

(assert (= (and d!1065228 c!626720) b!3621469))

(assert (= (and d!1065228 (not c!626720)) b!3621468))

(assert (= (and b!3621468 c!626718) b!3621465))

(assert (= (and b!3621468 (not c!626718)) b!3621466))

(assert (= (and b!3621466 c!626719) b!3621472))

(assert (= (and b!3621466 (not c!626719)) b!3621471))

(assert (= (and b!3621471 c!626717) b!3621470))

(assert (= (and b!3621471 (not c!626717)) b!3621467))

(assert (= (or b!3621470 b!3621467) bm!262032))

(assert (= (or b!3621470 b!3621467) bm!262035))

(assert (= (or b!3621470 b!3621467) bm!262033))

(assert (= (or b!3621472 bm!262035) bm!262034))

(declare-fun m!4121227 () Bool)

(assert (=> bm!262032 m!4121227))

(declare-fun m!4121229 () Bool)

(assert (=> bm!262033 m!4121229))

(declare-fun m!4121231 () Bool)

(assert (=> bm!262034 m!4121231))

(assert (=> b!3621264 d!1065228))

(declare-fun d!1065230 () Bool)

(assert (=> d!1065230 (= (head!7648 suffix!1395) (h!43564 suffix!1395))))

(assert (=> b!3621264 d!1065230))

(declare-fun d!1065232 () Bool)

(assert (=> d!1065232 (= (get!12435 lt!1251544) (v!37751 lt!1251544))))

(assert (=> b!3621242 d!1065232))

(declare-fun d!1065234 () Bool)

(assert (=> d!1065234 (isPrefix!3041 lt!1251547 (++!9494 lt!1251547 (_2!22144 lt!1251553)))))

(declare-fun lt!1251615 () Unit!54892)

(declare-fun choose!21250 (List!38268 List!38268) Unit!54892)

(assert (=> d!1065234 (= lt!1251615 (choose!21250 lt!1251547 (_2!22144 lt!1251553)))))

(assert (=> d!1065234 (= (lemmaConcatTwoListThenFirstIsPrefix!1962 lt!1251547 (_2!22144 lt!1251553)) lt!1251615)))

(declare-fun bs!571207 () Bool)

(assert (= bs!571207 d!1065234))

(assert (=> bs!571207 m!4121029))

(assert (=> bs!571207 m!4121029))

(assert (=> bs!571207 m!4121031))

(declare-fun m!4121233 () Bool)

(assert (=> bs!571207 m!4121233))

(assert (=> b!3621263 d!1065234))

(declare-fun b!3621481 () Bool)

(declare-fun e!2241603 () List!38268)

(assert (=> b!3621481 (= e!2241603 suffix!1395)))

(declare-fun b!3621483 () Bool)

(declare-fun res!1465580 () Bool)

(declare-fun e!2241602 () Bool)

(assert (=> b!3621483 (=> (not res!1465580) (not e!2241602))))

(declare-fun lt!1251618 () List!38268)

(declare-fun size!29103 (List!38268) Int)

(assert (=> b!3621483 (= res!1465580 (= (size!29103 lt!1251618) (+ (size!29103 lt!1251554) (size!29103 suffix!1395))))))

(declare-fun b!3621484 () Bool)

(assert (=> b!3621484 (= e!2241602 (or (not (= suffix!1395 Nil!38144)) (= lt!1251618 lt!1251554)))))

(declare-fun b!3621482 () Bool)

(assert (=> b!3621482 (= e!2241603 (Cons!38144 (h!43564 lt!1251554) (++!9494 (t!294199 lt!1251554) suffix!1395)))))

(declare-fun d!1065236 () Bool)

(assert (=> d!1065236 e!2241602))

(declare-fun res!1465579 () Bool)

(assert (=> d!1065236 (=> (not res!1465579) (not e!2241602))))

(assert (=> d!1065236 (= res!1465579 (= (content!5460 lt!1251618) ((_ map or) (content!5460 lt!1251554) (content!5460 suffix!1395))))))

(assert (=> d!1065236 (= lt!1251618 e!2241603)))

(declare-fun c!626723 () Bool)

(assert (=> d!1065236 (= c!626723 ((_ is Nil!38144) lt!1251554))))

(assert (=> d!1065236 (= (++!9494 lt!1251554 suffix!1395) lt!1251618)))

(assert (= (and d!1065236 c!626723) b!3621481))

(assert (= (and d!1065236 (not c!626723)) b!3621482))

(assert (= (and d!1065236 res!1465579) b!3621483))

(assert (= (and b!3621483 res!1465580) b!3621484))

(declare-fun m!4121235 () Bool)

(assert (=> b!3621483 m!4121235))

(declare-fun m!4121237 () Bool)

(assert (=> b!3621483 m!4121237))

(declare-fun m!4121239 () Bool)

(assert (=> b!3621483 m!4121239))

(declare-fun m!4121241 () Bool)

(assert (=> b!3621482 m!4121241))

(declare-fun m!4121243 () Bool)

(assert (=> d!1065236 m!4121243))

(declare-fun m!4121245 () Bool)

(assert (=> d!1065236 m!4121245))

(declare-fun m!4121247 () Bool)

(assert (=> d!1065236 m!4121247))

(assert (=> b!3621263 d!1065236))

(declare-fun d!1065238 () Bool)

(assert (=> d!1065238 (isDefined!6218 (maxPrefix!2801 thiss!23823 rules!3307 (++!9494 lt!1251554 suffix!1395)))))

(declare-fun lt!1251735 () Unit!54892)

(declare-fun e!2241718 () Unit!54892)

(assert (=> d!1065238 (= lt!1251735 e!2241718)))

(declare-fun c!626753 () Bool)

(declare-fun isEmpty!22546 (Option!7986) Bool)

(assert (=> d!1065238 (= c!626753 (isEmpty!22546 (maxPrefix!2801 thiss!23823 rules!3307 (++!9494 lt!1251554 suffix!1395))))))

(declare-fun lt!1251738 () Unit!54892)

(declare-fun lt!1251728 () Unit!54892)

(assert (=> d!1065238 (= lt!1251738 lt!1251728)))

(declare-fun e!2241717 () Bool)

(assert (=> d!1065238 e!2241717))

(declare-fun res!1465677 () Bool)

(assert (=> d!1065238 (=> (not res!1465677) (not e!2241717))))

(declare-fun lt!1251736 () Token!10722)

(assert (=> d!1065238 (= res!1465677 (isDefined!6219 (getRuleFromTag!1284 thiss!23823 rules!3307 (tag!6396 (rule!8440 lt!1251736)))))))

(assert (=> d!1065238 (= lt!1251728 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1284 thiss!23823 rules!3307 lt!1251554 lt!1251736))))

(declare-fun lt!1251725 () Unit!54892)

(declare-fun lt!1251733 () Unit!54892)

(assert (=> d!1065238 (= lt!1251725 lt!1251733)))

(declare-fun lt!1251732 () List!38268)

(assert (=> d!1065238 (isPrefix!3041 lt!1251732 (++!9494 lt!1251554 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!462 (List!38268 List!38268 List!38268) Unit!54892)

(assert (=> d!1065238 (= lt!1251733 (lemmaPrefixStaysPrefixWhenAddingToSuffix!462 lt!1251732 lt!1251554 suffix!1395))))

(assert (=> d!1065238 (= lt!1251732 (list!14078 (charsOf!3692 lt!1251736)))))

(declare-fun lt!1251731 () Unit!54892)

(declare-fun lt!1251739 () Unit!54892)

(assert (=> d!1065238 (= lt!1251731 lt!1251739)))

(declare-fun lt!1251729 () List!38268)

(declare-fun lt!1251740 () List!38268)

(assert (=> d!1065238 (isPrefix!3041 lt!1251729 (++!9494 lt!1251729 lt!1251740))))

(assert (=> d!1065238 (= lt!1251739 (lemmaConcatTwoListThenFirstIsPrefix!1962 lt!1251729 lt!1251740))))

(assert (=> d!1065238 (= lt!1251740 (_2!22144 (get!12435 (maxPrefix!2801 thiss!23823 rules!3307 lt!1251554))))))

(assert (=> d!1065238 (= lt!1251729 (list!14078 (charsOf!3692 lt!1251736)))))

(declare-datatypes ((List!38272 0))(
  ( (Nil!38148) (Cons!38148 (h!43568 Token!10722) (t!294243 List!38272)) )
))
(declare-fun head!7650 (List!38272) Token!10722)

(declare-datatypes ((IArray!23271 0))(
  ( (IArray!23272 (innerList!11693 List!38272)) )
))
(declare-datatypes ((Conc!11633 0))(
  ( (Node!11633 (left!29786 Conc!11633) (right!30116 Conc!11633) (csize!23496 Int) (cheight!11844 Int)) (Leaf!18083 (xs!14835 IArray!23271) (csize!23497 Int)) (Empty!11633) )
))
(declare-datatypes ((BalanceConc!22880 0))(
  ( (BalanceConc!22881 (c!626775 Conc!11633)) )
))
(declare-fun list!14081 (BalanceConc!22880) List!38272)

(declare-datatypes ((tuple2!38024 0))(
  ( (tuple2!38025 (_1!22146 BalanceConc!22880) (_2!22146 BalanceConc!22876)) )
))
(declare-fun lex!2494 (LexerInterface!5267 List!38269 BalanceConc!22876) tuple2!38024)

(declare-fun seqFromList!4231 (List!38268) BalanceConc!22876)

(assert (=> d!1065238 (= lt!1251736 (head!7650 (list!14081 (_1!22146 (lex!2494 thiss!23823 rules!3307 (seqFromList!4231 lt!1251554))))))))

(assert (=> d!1065238 (not (isEmpty!22543 rules!3307))))

(assert (=> d!1065238 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!947 thiss!23823 rules!3307 lt!1251554 suffix!1395) lt!1251735)))

(declare-fun b!3621683 () Bool)

(assert (=> b!3621683 (= e!2241717 (= (rule!8440 lt!1251736) (get!12436 (getRuleFromTag!1284 thiss!23823 rules!3307 (tag!6396 (rule!8440 lt!1251736))))))))

(declare-fun b!3621684 () Bool)

(declare-fun Unit!54896 () Unit!54892)

(assert (=> b!3621684 (= e!2241718 Unit!54896)))

(declare-fun lt!1251730 () List!38268)

(assert (=> b!3621684 (= lt!1251730 (++!9494 lt!1251554 suffix!1395))))

(declare-fun lt!1251727 () Unit!54892)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!498 (LexerInterface!5267 Rule!11156 List!38269 List!38268) Unit!54892)

(assert (=> b!3621684 (= lt!1251727 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!498 thiss!23823 (rule!8440 lt!1251736) rules!3307 lt!1251730))))

(declare-fun maxPrefixOneRule!1945 (LexerInterface!5267 Rule!11156 List!38268) Option!7986)

(assert (=> b!3621684 (isEmpty!22546 (maxPrefixOneRule!1945 thiss!23823 (rule!8440 lt!1251736) lt!1251730))))

(declare-fun lt!1251734 () Unit!54892)

(assert (=> b!3621684 (= lt!1251734 lt!1251727)))

(declare-fun lt!1251737 () List!38268)

(assert (=> b!3621684 (= lt!1251737 (list!14078 (charsOf!3692 lt!1251736)))))

(declare-fun lt!1251726 () Unit!54892)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!486 (LexerInterface!5267 Rule!11156 List!38268 List!38268) Unit!54892)

(assert (=> b!3621684 (= lt!1251726 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!486 thiss!23823 (rule!8440 lt!1251736) lt!1251737 (++!9494 lt!1251554 suffix!1395)))))

(assert (=> b!3621684 (not (matchR!5006 (regex!5678 (rule!8440 lt!1251736)) lt!1251737))))

(declare-fun lt!1251724 () Unit!54892)

(assert (=> b!3621684 (= lt!1251724 lt!1251726)))

(assert (=> b!3621684 false))

(declare-fun b!3621685 () Bool)

(declare-fun Unit!54897 () Unit!54892)

(assert (=> b!3621685 (= e!2241718 Unit!54897)))

(declare-fun b!3621682 () Bool)

(declare-fun res!1465676 () Bool)

(assert (=> b!3621682 (=> (not res!1465676) (not e!2241717))))

(assert (=> b!3621682 (= res!1465676 (matchR!5006 (regex!5678 (get!12436 (getRuleFromTag!1284 thiss!23823 rules!3307 (tag!6396 (rule!8440 lt!1251736))))) (list!14078 (charsOf!3692 lt!1251736))))))

(assert (= (and d!1065238 res!1465677) b!3621682))

(assert (= (and b!3621682 res!1465676) b!3621683))

(assert (= (and d!1065238 c!626753) b!3621684))

(assert (= (and d!1065238 (not c!626753)) b!3621685))

(declare-fun m!4121447 () Bool)

(assert (=> d!1065238 m!4121447))

(assert (=> d!1065238 m!4121037))

(declare-fun m!4121449 () Bool)

(assert (=> d!1065238 m!4121449))

(declare-fun m!4121451 () Bool)

(assert (=> d!1065238 m!4121451))

(assert (=> d!1065238 m!4121451))

(declare-fun m!4121453 () Bool)

(assert (=> d!1065238 m!4121453))

(declare-fun m!4121455 () Bool)

(assert (=> d!1065238 m!4121455))

(declare-fun m!4121457 () Bool)

(assert (=> d!1065238 m!4121457))

(declare-fun m!4121459 () Bool)

(assert (=> d!1065238 m!4121459))

(assert (=> d!1065238 m!4121007))

(declare-fun m!4121461 () Bool)

(assert (=> d!1065238 m!4121461))

(declare-fun m!4121463 () Bool)

(assert (=> d!1065238 m!4121463))

(assert (=> d!1065238 m!4120997))

(declare-fun m!4121465 () Bool)

(assert (=> d!1065238 m!4121465))

(assert (=> d!1065238 m!4121461))

(declare-fun m!4121467 () Bool)

(assert (=> d!1065238 m!4121467))

(assert (=> d!1065238 m!4121455))

(declare-fun m!4121469 () Bool)

(assert (=> d!1065238 m!4121469))

(assert (=> d!1065238 m!4121037))

(assert (=> d!1065238 m!4121457))

(declare-fun m!4121471 () Bool)

(assert (=> d!1065238 m!4121471))

(assert (=> d!1065238 m!4121449))

(declare-fun m!4121473 () Bool)

(assert (=> d!1065238 m!4121473))

(assert (=> d!1065238 m!4121449))

(declare-fun m!4121475 () Bool)

(assert (=> d!1065238 m!4121475))

(assert (=> d!1065238 m!4121467))

(declare-fun m!4121477 () Bool)

(assert (=> d!1065238 m!4121477))

(assert (=> d!1065238 m!4121007))

(declare-fun m!4121479 () Bool)

(assert (=> d!1065238 m!4121479))

(assert (=> d!1065238 m!4121037))

(declare-fun m!4121481 () Bool)

(assert (=> d!1065238 m!4121481))

(assert (=> b!3621683 m!4121467))

(assert (=> b!3621683 m!4121467))

(declare-fun m!4121483 () Bool)

(assert (=> b!3621683 m!4121483))

(declare-fun m!4121485 () Bool)

(assert (=> b!3621684 m!4121485))

(assert (=> b!3621684 m!4121037))

(declare-fun m!4121487 () Bool)

(assert (=> b!3621684 m!4121487))

(declare-fun m!4121489 () Bool)

(assert (=> b!3621684 m!4121489))

(declare-fun m!4121491 () Bool)

(assert (=> b!3621684 m!4121491))

(declare-fun m!4121493 () Bool)

(assert (=> b!3621684 m!4121493))

(assert (=> b!3621684 m!4121457))

(assert (=> b!3621684 m!4121459))

(assert (=> b!3621684 m!4121491))

(assert (=> b!3621684 m!4121037))

(assert (=> b!3621684 m!4121457))

(assert (=> b!3621682 m!4121457))

(assert (=> b!3621682 m!4121457))

(assert (=> b!3621682 m!4121459))

(assert (=> b!3621682 m!4121459))

(declare-fun m!4121495 () Bool)

(assert (=> b!3621682 m!4121495))

(assert (=> b!3621682 m!4121467))

(assert (=> b!3621682 m!4121467))

(assert (=> b!3621682 m!4121483))

(assert (=> b!3621263 d!1065238))

(declare-fun b!3621698 () Bool)

(declare-fun e!2241730 () Bool)

(declare-fun e!2241727 () Bool)

(assert (=> b!3621698 (= e!2241730 e!2241727)))

(declare-fun res!1465682 () Bool)

(assert (=> b!3621698 (=> (not res!1465682) (not e!2241727))))

(declare-fun lt!1251749 () Option!7987)

(assert (=> b!3621698 (= res!1465682 (contains!7419 rules!3307 (get!12436 lt!1251749)))))

(declare-fun b!3621699 () Bool)

(declare-fun e!2241728 () Option!7987)

(declare-fun e!2241729 () Option!7987)

(assert (=> b!3621699 (= e!2241728 e!2241729)))

(declare-fun c!626758 () Bool)

(assert (=> b!3621699 (= c!626758 (and ((_ is Cons!38145) rules!3307) (not (= (tag!6396 (h!43565 rules!3307)) (tag!6396 (rule!8440 (_1!22144 lt!1251553)))))))))

(declare-fun b!3621700 () Bool)

(assert (=> b!3621700 (= e!2241728 (Some!7986 (h!43565 rules!3307)))))

(declare-fun b!3621701 () Bool)

(declare-fun lt!1251747 () Unit!54892)

(declare-fun lt!1251748 () Unit!54892)

(assert (=> b!3621701 (= lt!1251747 lt!1251748)))

(assert (=> b!3621701 (rulesInvariant!4664 thiss!23823 (t!294200 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!541 (LexerInterface!5267 Rule!11156 List!38269) Unit!54892)

(assert (=> b!3621701 (= lt!1251748 (lemmaInvariantOnRulesThenOnTail!541 thiss!23823 (h!43565 rules!3307) (t!294200 rules!3307)))))

(assert (=> b!3621701 (= e!2241729 (getRuleFromTag!1284 thiss!23823 (t!294200 rules!3307) (tag!6396 (rule!8440 (_1!22144 lt!1251553)))))))

(declare-fun b!3621702 () Bool)

(assert (=> b!3621702 (= e!2241729 None!7986)))

(declare-fun b!3621703 () Bool)

(assert (=> b!3621703 (= e!2241727 (= (tag!6396 (get!12436 lt!1251749)) (tag!6396 (rule!8440 (_1!22144 lt!1251553)))))))

(declare-fun d!1065302 () Bool)

(assert (=> d!1065302 e!2241730))

(declare-fun res!1465683 () Bool)

(assert (=> d!1065302 (=> res!1465683 e!2241730)))

(declare-fun isEmpty!22547 (Option!7987) Bool)

(assert (=> d!1065302 (= res!1465683 (isEmpty!22547 lt!1251749))))

(assert (=> d!1065302 (= lt!1251749 e!2241728)))

(declare-fun c!626759 () Bool)

(assert (=> d!1065302 (= c!626759 (and ((_ is Cons!38145) rules!3307) (= (tag!6396 (h!43565 rules!3307)) (tag!6396 (rule!8440 (_1!22144 lt!1251553))))))))

(assert (=> d!1065302 (rulesInvariant!4664 thiss!23823 rules!3307)))

(assert (=> d!1065302 (= (getRuleFromTag!1284 thiss!23823 rules!3307 (tag!6396 (rule!8440 (_1!22144 lt!1251553)))) lt!1251749)))

(assert (= (and d!1065302 c!626759) b!3621700))

(assert (= (and d!1065302 (not c!626759)) b!3621699))

(assert (= (and b!3621699 c!626758) b!3621701))

(assert (= (and b!3621699 (not c!626758)) b!3621702))

(assert (= (and d!1065302 (not res!1465683)) b!3621698))

(assert (= (and b!3621698 res!1465682) b!3621703))

(declare-fun m!4121497 () Bool)

(assert (=> b!3621698 m!4121497))

(assert (=> b!3621698 m!4121497))

(declare-fun m!4121499 () Bool)

(assert (=> b!3621698 m!4121499))

(declare-fun m!4121501 () Bool)

(assert (=> b!3621701 m!4121501))

(declare-fun m!4121503 () Bool)

(assert (=> b!3621701 m!4121503))

(declare-fun m!4121505 () Bool)

(assert (=> b!3621701 m!4121505))

(assert (=> b!3621703 m!4121497))

(declare-fun m!4121507 () Bool)

(assert (=> d!1065302 m!4121507))

(assert (=> d!1065302 m!4120971))

(assert (=> b!3621263 d!1065302))

(declare-fun b!3621715 () Bool)

(declare-fun e!2241738 () Bool)

(assert (=> b!3621715 (= e!2241738 (>= (size!29103 lt!1251557) (size!29103 lt!1251554)))))

(declare-fun b!3621713 () Bool)

(declare-fun res!1465692 () Bool)

(declare-fun e!2241737 () Bool)

(assert (=> b!3621713 (=> (not res!1465692) (not e!2241737))))

(assert (=> b!3621713 (= res!1465692 (= (head!7648 lt!1251554) (head!7648 lt!1251557)))))

(declare-fun b!3621712 () Bool)

(declare-fun e!2241739 () Bool)

(assert (=> b!3621712 (= e!2241739 e!2241737)))

(declare-fun res!1465694 () Bool)

(assert (=> b!3621712 (=> (not res!1465694) (not e!2241737))))

(assert (=> b!3621712 (= res!1465694 (not ((_ is Nil!38144) lt!1251557)))))

(declare-fun b!3621714 () Bool)

(assert (=> b!3621714 (= e!2241737 (isPrefix!3041 (tail!5609 lt!1251554) (tail!5609 lt!1251557)))))

(declare-fun d!1065304 () Bool)

(assert (=> d!1065304 e!2241738))

(declare-fun res!1465695 () Bool)

(assert (=> d!1065304 (=> res!1465695 e!2241738)))

(declare-fun lt!1251752 () Bool)

(assert (=> d!1065304 (= res!1465695 (not lt!1251752))))

(assert (=> d!1065304 (= lt!1251752 e!2241739)))

(declare-fun res!1465693 () Bool)

(assert (=> d!1065304 (=> res!1465693 e!2241739)))

(assert (=> d!1065304 (= res!1465693 ((_ is Nil!38144) lt!1251554))))

(assert (=> d!1065304 (= (isPrefix!3041 lt!1251554 lt!1251557) lt!1251752)))

(assert (= (and d!1065304 (not res!1465693)) b!3621712))

(assert (= (and b!3621712 res!1465694) b!3621713))

(assert (= (and b!3621713 res!1465692) b!3621714))

(assert (= (and d!1065304 (not res!1465695)) b!3621715))

(declare-fun m!4121509 () Bool)

(assert (=> b!3621715 m!4121509))

(assert (=> b!3621715 m!4121237))

(assert (=> b!3621713 m!4121141))

(declare-fun m!4121511 () Bool)

(assert (=> b!3621713 m!4121511))

(assert (=> b!3621714 m!4121143))

(declare-fun m!4121513 () Bool)

(assert (=> b!3621714 m!4121513))

(assert (=> b!3621714 m!4121143))

(assert (=> b!3621714 m!4121513))

(declare-fun m!4121515 () Bool)

(assert (=> b!3621714 m!4121515))

(assert (=> b!3621263 d!1065304))

(declare-fun b!3621719 () Bool)

(declare-fun e!2241741 () Bool)

(assert (=> b!3621719 (= e!2241741 (>= (size!29103 lt!1251557) (size!29103 lt!1251547)))))

(declare-fun b!3621717 () Bool)

(declare-fun res!1465696 () Bool)

(declare-fun e!2241740 () Bool)

(assert (=> b!3621717 (=> (not res!1465696) (not e!2241740))))

(assert (=> b!3621717 (= res!1465696 (= (head!7648 lt!1251547) (head!7648 lt!1251557)))))

(declare-fun b!3621716 () Bool)

(declare-fun e!2241742 () Bool)

(assert (=> b!3621716 (= e!2241742 e!2241740)))

(declare-fun res!1465698 () Bool)

(assert (=> b!3621716 (=> (not res!1465698) (not e!2241740))))

(assert (=> b!3621716 (= res!1465698 (not ((_ is Nil!38144) lt!1251557)))))

(declare-fun b!3621718 () Bool)

(assert (=> b!3621718 (= e!2241740 (isPrefix!3041 (tail!5609 lt!1251547) (tail!5609 lt!1251557)))))

(declare-fun d!1065306 () Bool)

(assert (=> d!1065306 e!2241741))

(declare-fun res!1465699 () Bool)

(assert (=> d!1065306 (=> res!1465699 e!2241741)))

(declare-fun lt!1251753 () Bool)

(assert (=> d!1065306 (= res!1465699 (not lt!1251753))))

(assert (=> d!1065306 (= lt!1251753 e!2241742)))

(declare-fun res!1465697 () Bool)

(assert (=> d!1065306 (=> res!1465697 e!2241742)))

(assert (=> d!1065306 (= res!1465697 ((_ is Nil!38144) lt!1251547))))

(assert (=> d!1065306 (= (isPrefix!3041 lt!1251547 lt!1251557) lt!1251753)))

(assert (= (and d!1065306 (not res!1465697)) b!3621716))

(assert (= (and b!3621716 res!1465698) b!3621717))

(assert (= (and b!3621717 res!1465696) b!3621718))

(assert (= (and d!1065306 (not res!1465699)) b!3621719))

(assert (=> b!3621719 m!4121509))

(declare-fun m!4121517 () Bool)

(assert (=> b!3621719 m!4121517))

(declare-fun m!4121519 () Bool)

(assert (=> b!3621717 m!4121519))

(assert (=> b!3621717 m!4121511))

(declare-fun m!4121521 () Bool)

(assert (=> b!3621718 m!4121521))

(assert (=> b!3621718 m!4121513))

(assert (=> b!3621718 m!4121521))

(assert (=> b!3621718 m!4121513))

(declare-fun m!4121523 () Bool)

(assert (=> b!3621718 m!4121523))

(assert (=> b!3621263 d!1065306))

(declare-fun d!1065308 () Bool)

(assert (=> d!1065308 (isPrefix!3041 lt!1251554 (++!9494 lt!1251554 suffix!1395))))

(declare-fun lt!1251754 () Unit!54892)

(assert (=> d!1065308 (= lt!1251754 (choose!21250 lt!1251554 suffix!1395))))

(assert (=> d!1065308 (= (lemmaConcatTwoListThenFirstIsPrefix!1962 lt!1251554 suffix!1395) lt!1251754)))

(declare-fun bs!571211 () Bool)

(assert (= bs!571211 d!1065308))

(assert (=> bs!571211 m!4121037))

(assert (=> bs!571211 m!4121037))

(declare-fun m!4121525 () Bool)

(assert (=> bs!571211 m!4121525))

(declare-fun m!4121527 () Bool)

(assert (=> bs!571211 m!4121527))

(assert (=> b!3621263 d!1065308))

(declare-fun d!1065310 () Bool)

(assert (=> d!1065310 (= (get!12435 lt!1251551) (v!37751 lt!1251551))))

(assert (=> b!3621263 d!1065310))

(declare-fun d!1065312 () Bool)

(assert (=> d!1065312 (= (isDefined!6219 lt!1251556) (not (isEmpty!22547 lt!1251556)))))

(declare-fun bs!571212 () Bool)

(assert (= bs!571212 d!1065312))

(declare-fun m!4121529 () Bool)

(assert (=> bs!571212 m!4121529))

(assert (=> b!3621263 d!1065312))

(declare-fun b!3621738 () Bool)

(declare-fun res!1465718 () Bool)

(declare-fun e!2241751 () Bool)

(assert (=> b!3621738 (=> (not res!1465718) (not e!2241751))))

(declare-fun lt!1251769 () Option!7986)

(assert (=> b!3621738 (= res!1465718 (matchR!5006 (regex!5678 (rule!8440 (_1!22144 (get!12435 lt!1251769)))) (list!14078 (charsOf!3692 (_1!22144 (get!12435 lt!1251769))))))))

(declare-fun d!1065314 () Bool)

(declare-fun e!2241750 () Bool)

(assert (=> d!1065314 e!2241750))

(declare-fun res!1465717 () Bool)

(assert (=> d!1065314 (=> res!1465717 e!2241750)))

(assert (=> d!1065314 (= res!1465717 (isEmpty!22546 lt!1251769))))

(declare-fun e!2241749 () Option!7986)

(assert (=> d!1065314 (= lt!1251769 e!2241749)))

(declare-fun c!626762 () Bool)

(assert (=> d!1065314 (= c!626762 (and ((_ is Cons!38145) rules!3307) ((_ is Nil!38145) (t!294200 rules!3307))))))

(declare-fun lt!1251766 () Unit!54892)

(declare-fun lt!1251767 () Unit!54892)

(assert (=> d!1065314 (= lt!1251766 lt!1251767)))

(assert (=> d!1065314 (isPrefix!3041 lt!1251557 lt!1251557)))

(declare-fun lemmaIsPrefixRefl!1930 (List!38268 List!38268) Unit!54892)

(assert (=> d!1065314 (= lt!1251767 (lemmaIsPrefixRefl!1930 lt!1251557 lt!1251557))))

(declare-fun rulesValidInductive!1995 (LexerInterface!5267 List!38269) Bool)

(assert (=> d!1065314 (rulesValidInductive!1995 thiss!23823 rules!3307)))

(assert (=> d!1065314 (= (maxPrefix!2801 thiss!23823 rules!3307 lt!1251557) lt!1251769)))

(declare-fun b!3621739 () Bool)

(declare-fun res!1465716 () Bool)

(assert (=> b!3621739 (=> (not res!1465716) (not e!2241751))))

(declare-fun apply!9184 (TokenValueInjection!11244 BalanceConc!22876) TokenValue!5908)

(assert (=> b!3621739 (= res!1465716 (= (value!182283 (_1!22144 (get!12435 lt!1251769))) (apply!9184 (transformation!5678 (rule!8440 (_1!22144 (get!12435 lt!1251769)))) (seqFromList!4231 (originalCharacters!6392 (_1!22144 (get!12435 lt!1251769)))))))))

(declare-fun bm!262047 () Bool)

(declare-fun call!262052 () Option!7986)

(assert (=> bm!262047 (= call!262052 (maxPrefixOneRule!1945 thiss!23823 (h!43565 rules!3307) lt!1251557))))

(declare-fun b!3621740 () Bool)

(assert (=> b!3621740 (= e!2241749 call!262052)))

(declare-fun b!3621741 () Bool)

(declare-fun res!1465719 () Bool)

(assert (=> b!3621741 (=> (not res!1465719) (not e!2241751))))

(assert (=> b!3621741 (= res!1465719 (= (++!9494 (list!14078 (charsOf!3692 (_1!22144 (get!12435 lt!1251769)))) (_2!22144 (get!12435 lt!1251769))) lt!1251557))))

(declare-fun b!3621742 () Bool)

(assert (=> b!3621742 (= e!2241750 e!2241751)))

(declare-fun res!1465720 () Bool)

(assert (=> b!3621742 (=> (not res!1465720) (not e!2241751))))

(assert (=> b!3621742 (= res!1465720 (isDefined!6218 lt!1251769))))

(declare-fun b!3621743 () Bool)

(assert (=> b!3621743 (= e!2241751 (contains!7419 rules!3307 (rule!8440 (_1!22144 (get!12435 lt!1251769)))))))

(declare-fun b!3621744 () Bool)

(declare-fun res!1465714 () Bool)

(assert (=> b!3621744 (=> (not res!1465714) (not e!2241751))))

(assert (=> b!3621744 (= res!1465714 (< (size!29103 (_2!22144 (get!12435 lt!1251769))) (size!29103 lt!1251557)))))

(declare-fun b!3621745 () Bool)

(declare-fun lt!1251765 () Option!7986)

(declare-fun lt!1251768 () Option!7986)

(assert (=> b!3621745 (= e!2241749 (ite (and ((_ is None!7985) lt!1251765) ((_ is None!7985) lt!1251768)) None!7985 (ite ((_ is None!7985) lt!1251768) lt!1251765 (ite ((_ is None!7985) lt!1251765) lt!1251768 (ite (>= (size!29101 (_1!22144 (v!37751 lt!1251765))) (size!29101 (_1!22144 (v!37751 lt!1251768)))) lt!1251765 lt!1251768)))))))

(assert (=> b!3621745 (= lt!1251765 call!262052)))

(assert (=> b!3621745 (= lt!1251768 (maxPrefix!2801 thiss!23823 (t!294200 rules!3307) lt!1251557))))

(declare-fun b!3621746 () Bool)

(declare-fun res!1465715 () Bool)

(assert (=> b!3621746 (=> (not res!1465715) (not e!2241751))))

(assert (=> b!3621746 (= res!1465715 (= (list!14078 (charsOf!3692 (_1!22144 (get!12435 lt!1251769)))) (originalCharacters!6392 (_1!22144 (get!12435 lt!1251769)))))))

(assert (= (and d!1065314 c!626762) b!3621740))

(assert (= (and d!1065314 (not c!626762)) b!3621745))

(assert (= (or b!3621740 b!3621745) bm!262047))

(assert (= (and d!1065314 (not res!1465717)) b!3621742))

(assert (= (and b!3621742 res!1465720) b!3621746))

(assert (= (and b!3621746 res!1465715) b!3621744))

(assert (= (and b!3621744 res!1465714) b!3621741))

(assert (= (and b!3621741 res!1465719) b!3621739))

(assert (= (and b!3621739 res!1465716) b!3621738))

(assert (= (and b!3621738 res!1465718) b!3621743))

(declare-fun m!4121531 () Bool)

(assert (=> b!3621746 m!4121531))

(declare-fun m!4121533 () Bool)

(assert (=> b!3621746 m!4121533))

(assert (=> b!3621746 m!4121533))

(declare-fun m!4121535 () Bool)

(assert (=> b!3621746 m!4121535))

(declare-fun m!4121537 () Bool)

(assert (=> b!3621742 m!4121537))

(assert (=> b!3621741 m!4121531))

(assert (=> b!3621741 m!4121533))

(assert (=> b!3621741 m!4121533))

(assert (=> b!3621741 m!4121535))

(assert (=> b!3621741 m!4121535))

(declare-fun m!4121539 () Bool)

(assert (=> b!3621741 m!4121539))

(assert (=> b!3621739 m!4121531))

(declare-fun m!4121541 () Bool)

(assert (=> b!3621739 m!4121541))

(assert (=> b!3621739 m!4121541))

(declare-fun m!4121543 () Bool)

(assert (=> b!3621739 m!4121543))

(assert (=> b!3621744 m!4121531))

(declare-fun m!4121545 () Bool)

(assert (=> b!3621744 m!4121545))

(assert (=> b!3621744 m!4121509))

(declare-fun m!4121547 () Bool)

(assert (=> b!3621745 m!4121547))

(assert (=> b!3621743 m!4121531))

(declare-fun m!4121549 () Bool)

(assert (=> b!3621743 m!4121549))

(declare-fun m!4121551 () Bool)

(assert (=> bm!262047 m!4121551))

(declare-fun m!4121553 () Bool)

(assert (=> d!1065314 m!4121553))

(declare-fun m!4121555 () Bool)

(assert (=> d!1065314 m!4121555))

(declare-fun m!4121557 () Bool)

(assert (=> d!1065314 m!4121557))

(declare-fun m!4121559 () Bool)

(assert (=> d!1065314 m!4121559))

(assert (=> b!3621738 m!4121531))

(assert (=> b!3621738 m!4121533))

(assert (=> b!3621738 m!4121533))

(assert (=> b!3621738 m!4121535))

(assert (=> b!3621738 m!4121535))

(declare-fun m!4121561 () Bool)

(assert (=> b!3621738 m!4121561))

(assert (=> b!3621263 d!1065314))

(declare-fun b!3621747 () Bool)

(declare-fun e!2241753 () List!38268)

(assert (=> b!3621747 (= e!2241753 (_2!22144 lt!1251553))))

(declare-fun b!3621749 () Bool)

(declare-fun res!1465722 () Bool)

(declare-fun e!2241752 () Bool)

(assert (=> b!3621749 (=> (not res!1465722) (not e!2241752))))

(declare-fun lt!1251770 () List!38268)

(assert (=> b!3621749 (= res!1465722 (= (size!29103 lt!1251770) (+ (size!29103 lt!1251547) (size!29103 (_2!22144 lt!1251553)))))))

(declare-fun b!3621750 () Bool)

(assert (=> b!3621750 (= e!2241752 (or (not (= (_2!22144 lt!1251553) Nil!38144)) (= lt!1251770 lt!1251547)))))

(declare-fun b!3621748 () Bool)

(assert (=> b!3621748 (= e!2241753 (Cons!38144 (h!43564 lt!1251547) (++!9494 (t!294199 lt!1251547) (_2!22144 lt!1251553))))))

(declare-fun d!1065316 () Bool)

(assert (=> d!1065316 e!2241752))

(declare-fun res!1465721 () Bool)

(assert (=> d!1065316 (=> (not res!1465721) (not e!2241752))))

(assert (=> d!1065316 (= res!1465721 (= (content!5460 lt!1251770) ((_ map or) (content!5460 lt!1251547) (content!5460 (_2!22144 lt!1251553)))))))

(assert (=> d!1065316 (= lt!1251770 e!2241753)))

(declare-fun c!626763 () Bool)

(assert (=> d!1065316 (= c!626763 ((_ is Nil!38144) lt!1251547))))

(assert (=> d!1065316 (= (++!9494 lt!1251547 (_2!22144 lt!1251553)) lt!1251770)))

(assert (= (and d!1065316 c!626763) b!3621747))

(assert (= (and d!1065316 (not c!626763)) b!3621748))

(assert (= (and d!1065316 res!1465721) b!3621749))

(assert (= (and b!3621749 res!1465722) b!3621750))

(declare-fun m!4121563 () Bool)

(assert (=> b!3621749 m!4121563))

(assert (=> b!3621749 m!4121517))

(declare-fun m!4121565 () Bool)

(assert (=> b!3621749 m!4121565))

(declare-fun m!4121567 () Bool)

(assert (=> b!3621748 m!4121567))

(declare-fun m!4121569 () Bool)

(assert (=> d!1065316 m!4121569))

(declare-fun m!4121571 () Bool)

(assert (=> d!1065316 m!4121571))

(declare-fun m!4121573 () Bool)

(assert (=> d!1065316 m!4121573))

(assert (=> b!3621263 d!1065316))

(declare-fun d!1065318 () Bool)

(declare-fun lt!1251773 () BalanceConc!22876)

(assert (=> d!1065318 (= (list!14078 lt!1251773) (originalCharacters!6392 (_1!22144 lt!1251553)))))

(declare-fun dynLambda!16507 (Int TokenValue!5908) BalanceConc!22876)

(assert (=> d!1065318 (= lt!1251773 (dynLambda!16507 (toChars!7821 (transformation!5678 (rule!8440 (_1!22144 lt!1251553)))) (value!182283 (_1!22144 lt!1251553))))))

(assert (=> d!1065318 (= (charsOf!3692 (_1!22144 lt!1251553)) lt!1251773)))

(declare-fun b_lambda!107109 () Bool)

(assert (=> (not b_lambda!107109) (not d!1065318)))

(declare-fun tb!207717 () Bool)

(declare-fun t!294222 () Bool)

(assert (=> (and b!3621259 (= (toChars!7821 (transformation!5678 anOtherTypeRule!33)) (toChars!7821 (transformation!5678 (rule!8440 (_1!22144 lt!1251553))))) t!294222) tb!207717))

(declare-fun b!3621755 () Bool)

(declare-fun e!2241756 () Bool)

(declare-fun tp!1106133 () Bool)

(declare-fun inv!51542 (Conc!11631) Bool)

(assert (=> b!3621755 (= e!2241756 (and (inv!51542 (c!626671 (dynLambda!16507 (toChars!7821 (transformation!5678 (rule!8440 (_1!22144 lt!1251553)))) (value!182283 (_1!22144 lt!1251553))))) tp!1106133))))

(declare-fun result!253106 () Bool)

(declare-fun inv!51543 (BalanceConc!22876) Bool)

(assert (=> tb!207717 (= result!253106 (and (inv!51543 (dynLambda!16507 (toChars!7821 (transformation!5678 (rule!8440 (_1!22144 lt!1251553)))) (value!182283 (_1!22144 lt!1251553)))) e!2241756))))

(assert (= tb!207717 b!3621755))

(declare-fun m!4121575 () Bool)

(assert (=> b!3621755 m!4121575))

(declare-fun m!4121577 () Bool)

(assert (=> tb!207717 m!4121577))

(assert (=> d!1065318 t!294222))

(declare-fun b_and!264839 () Bool)

(assert (= b_and!264797 (and (=> t!294222 result!253106) b_and!264839)))

(declare-fun t!294224 () Bool)

(declare-fun tb!207719 () Bool)

(assert (=> (and b!3621253 (= (toChars!7821 (transformation!5678 (h!43565 rules!3307))) (toChars!7821 (transformation!5678 (rule!8440 (_1!22144 lt!1251553))))) t!294224) tb!207719))

(declare-fun result!253110 () Bool)

(assert (= result!253110 result!253106))

(assert (=> d!1065318 t!294224))

(declare-fun b_and!264841 () Bool)

(assert (= b_and!264801 (and (=> t!294224 result!253110) b_and!264841)))

(declare-fun tb!207721 () Bool)

(declare-fun t!294226 () Bool)

(assert (=> (and b!3621265 (= (toChars!7821 (transformation!5678 (rule!8440 token!511))) (toChars!7821 (transformation!5678 (rule!8440 (_1!22144 lt!1251553))))) t!294226) tb!207721))

(declare-fun result!253112 () Bool)

(assert (= result!253112 result!253106))

(assert (=> d!1065318 t!294226))

(declare-fun b_and!264843 () Bool)

(assert (= b_and!264805 (and (=> t!294226 result!253112) b_and!264843)))

(declare-fun tb!207723 () Bool)

(declare-fun t!294228 () Bool)

(assert (=> (and b!3621239 (= (toChars!7821 (transformation!5678 rule!403)) (toChars!7821 (transformation!5678 (rule!8440 (_1!22144 lt!1251553))))) t!294228) tb!207723))

(declare-fun result!253114 () Bool)

(assert (= result!253114 result!253106))

(assert (=> d!1065318 t!294228))

(declare-fun b_and!264845 () Bool)

(assert (= b_and!264809 (and (=> t!294228 result!253114) b_and!264845)))

(declare-fun m!4121579 () Bool)

(assert (=> d!1065318 m!4121579))

(declare-fun m!4121581 () Bool)

(assert (=> d!1065318 m!4121581))

(assert (=> b!3621263 d!1065318))

(declare-fun d!1065320 () Bool)

(declare-fun e!2241759 () Bool)

(assert (=> d!1065320 e!2241759))

(declare-fun res!1465727 () Bool)

(assert (=> d!1065320 (=> (not res!1465727) (not e!2241759))))

(assert (=> d!1065320 (= res!1465727 (isDefined!6219 (getRuleFromTag!1284 thiss!23823 rules!3307 (tag!6396 (rule!8440 (_1!22144 lt!1251553))))))))

(declare-fun lt!1251776 () Unit!54892)

(declare-fun choose!21252 (LexerInterface!5267 List!38269 List!38268 Token!10722) Unit!54892)

(assert (=> d!1065320 (= lt!1251776 (choose!21252 thiss!23823 rules!3307 lt!1251557 (_1!22144 lt!1251553)))))

(assert (=> d!1065320 (rulesInvariant!4664 thiss!23823 rules!3307)))

(assert (=> d!1065320 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1284 thiss!23823 rules!3307 lt!1251557 (_1!22144 lt!1251553)) lt!1251776)))

(declare-fun b!3621760 () Bool)

(declare-fun res!1465728 () Bool)

(assert (=> b!3621760 (=> (not res!1465728) (not e!2241759))))

(assert (=> b!3621760 (= res!1465728 (matchR!5006 (regex!5678 (get!12436 (getRuleFromTag!1284 thiss!23823 rules!3307 (tag!6396 (rule!8440 (_1!22144 lt!1251553)))))) (list!14078 (charsOf!3692 (_1!22144 lt!1251553)))))))

(declare-fun b!3621761 () Bool)

(assert (=> b!3621761 (= e!2241759 (= (rule!8440 (_1!22144 lt!1251553)) (get!12436 (getRuleFromTag!1284 thiss!23823 rules!3307 (tag!6396 (rule!8440 (_1!22144 lt!1251553)))))))))

(assert (= (and d!1065320 res!1465727) b!3621760))

(assert (= (and b!3621760 res!1465728) b!3621761))

(assert (=> d!1065320 m!4121041))

(assert (=> d!1065320 m!4121041))

(declare-fun m!4121583 () Bool)

(assert (=> d!1065320 m!4121583))

(declare-fun m!4121585 () Bool)

(assert (=> d!1065320 m!4121585))

(assert (=> d!1065320 m!4120971))

(assert (=> b!3621760 m!4120987))

(assert (=> b!3621760 m!4120989))

(assert (=> b!3621760 m!4121041))

(declare-fun m!4121587 () Bool)

(assert (=> b!3621760 m!4121587))

(assert (=> b!3621760 m!4120989))

(declare-fun m!4121589 () Bool)

(assert (=> b!3621760 m!4121589))

(assert (=> b!3621760 m!4120987))

(assert (=> b!3621760 m!4121041))

(assert (=> b!3621761 m!4121041))

(assert (=> b!3621761 m!4121041))

(assert (=> b!3621761 m!4121587))

(assert (=> b!3621263 d!1065320))

(declare-fun d!1065322 () Bool)

(declare-fun list!14082 (Conc!11631) List!38268)

(assert (=> d!1065322 (= (list!14078 (charsOf!3692 (_1!22144 lt!1251553))) (list!14082 (c!626671 (charsOf!3692 (_1!22144 lt!1251553)))))))

(declare-fun bs!571213 () Bool)

(assert (= bs!571213 d!1065322))

(declare-fun m!4121591 () Bool)

(assert (=> bs!571213 m!4121591))

(assert (=> b!3621263 d!1065322))

(declare-fun b!3621765 () Bool)

(declare-fun e!2241761 () Bool)

(assert (=> b!3621765 (= e!2241761 (>= (size!29103 (++!9494 lt!1251547 (_2!22144 lt!1251553))) (size!29103 lt!1251547)))))

(declare-fun b!3621763 () Bool)

(declare-fun res!1465729 () Bool)

(declare-fun e!2241760 () Bool)

(assert (=> b!3621763 (=> (not res!1465729) (not e!2241760))))

(assert (=> b!3621763 (= res!1465729 (= (head!7648 lt!1251547) (head!7648 (++!9494 lt!1251547 (_2!22144 lt!1251553)))))))

(declare-fun b!3621762 () Bool)

(declare-fun e!2241762 () Bool)

(assert (=> b!3621762 (= e!2241762 e!2241760)))

(declare-fun res!1465731 () Bool)

(assert (=> b!3621762 (=> (not res!1465731) (not e!2241760))))

(assert (=> b!3621762 (= res!1465731 (not ((_ is Nil!38144) (++!9494 lt!1251547 (_2!22144 lt!1251553)))))))

(declare-fun b!3621764 () Bool)

(assert (=> b!3621764 (= e!2241760 (isPrefix!3041 (tail!5609 lt!1251547) (tail!5609 (++!9494 lt!1251547 (_2!22144 lt!1251553)))))))

(declare-fun d!1065324 () Bool)

(assert (=> d!1065324 e!2241761))

(declare-fun res!1465732 () Bool)

(assert (=> d!1065324 (=> res!1465732 e!2241761)))

(declare-fun lt!1251777 () Bool)

(assert (=> d!1065324 (= res!1465732 (not lt!1251777))))

(assert (=> d!1065324 (= lt!1251777 e!2241762)))

(declare-fun res!1465730 () Bool)

(assert (=> d!1065324 (=> res!1465730 e!2241762)))

(assert (=> d!1065324 (= res!1465730 ((_ is Nil!38144) lt!1251547))))

(assert (=> d!1065324 (= (isPrefix!3041 lt!1251547 (++!9494 lt!1251547 (_2!22144 lt!1251553))) lt!1251777)))

(assert (= (and d!1065324 (not res!1465730)) b!3621762))

(assert (= (and b!3621762 res!1465731) b!3621763))

(assert (= (and b!3621763 res!1465729) b!3621764))

(assert (= (and d!1065324 (not res!1465732)) b!3621765))

(assert (=> b!3621765 m!4121029))

(declare-fun m!4121593 () Bool)

(assert (=> b!3621765 m!4121593))

(assert (=> b!3621765 m!4121517))

(assert (=> b!3621763 m!4121519))

(assert (=> b!3621763 m!4121029))

(declare-fun m!4121595 () Bool)

(assert (=> b!3621763 m!4121595))

(assert (=> b!3621764 m!4121521))

(assert (=> b!3621764 m!4121029))

(declare-fun m!4121597 () Bool)

(assert (=> b!3621764 m!4121597))

(assert (=> b!3621764 m!4121521))

(assert (=> b!3621764 m!4121597))

(declare-fun m!4121599 () Bool)

(assert (=> b!3621764 m!4121599))

(assert (=> b!3621263 d!1065324))

(declare-fun d!1065326 () Bool)

(declare-fun lt!1251780 () Bool)

(declare-fun content!5461 (List!38269) (InoxSet Rule!11156))

(assert (=> d!1065326 (= lt!1251780 (select (content!5461 rules!3307) rule!403))))

(declare-fun e!2241767 () Bool)

(assert (=> d!1065326 (= lt!1251780 e!2241767)))

(declare-fun res!1465737 () Bool)

(assert (=> d!1065326 (=> (not res!1465737) (not e!2241767))))

(assert (=> d!1065326 (= res!1465737 ((_ is Cons!38145) rules!3307))))

(assert (=> d!1065326 (= (contains!7419 rules!3307 rule!403) lt!1251780)))

(declare-fun b!3621770 () Bool)

(declare-fun e!2241768 () Bool)

(assert (=> b!3621770 (= e!2241767 e!2241768)))

(declare-fun res!1465738 () Bool)

(assert (=> b!3621770 (=> res!1465738 e!2241768)))

(assert (=> b!3621770 (= res!1465738 (= (h!43565 rules!3307) rule!403))))

(declare-fun b!3621771 () Bool)

(assert (=> b!3621771 (= e!2241768 (contains!7419 (t!294200 rules!3307) rule!403))))

(assert (= (and d!1065326 res!1465737) b!3621770))

(assert (= (and b!3621770 (not res!1465738)) b!3621771))

(declare-fun m!4121601 () Bool)

(assert (=> d!1065326 m!4121601))

(declare-fun m!4121603 () Bool)

(assert (=> d!1065326 m!4121603))

(declare-fun m!4121605 () Bool)

(assert (=> b!3621771 m!4121605))

(assert (=> b!3621252 d!1065326))

(declare-fun d!1065328 () Bool)

(declare-fun res!1465743 () Bool)

(declare-fun e!2241773 () Bool)

(assert (=> d!1065328 (=> res!1465743 e!2241773)))

(assert (=> d!1065328 (= res!1465743 (not ((_ is Cons!38145) rules!3307)))))

(assert (=> d!1065328 (= (sepAndNonSepRulesDisjointChars!1848 rules!3307 rules!3307) e!2241773)))

(declare-fun b!3621776 () Bool)

(declare-fun e!2241774 () Bool)

(assert (=> b!3621776 (= e!2241773 e!2241774)))

(declare-fun res!1465744 () Bool)

(assert (=> b!3621776 (=> (not res!1465744) (not e!2241774))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!835 (Rule!11156 List!38269) Bool)

(assert (=> b!3621776 (= res!1465744 (ruleDisjointCharsFromAllFromOtherType!835 (h!43565 rules!3307) rules!3307))))

(declare-fun b!3621777 () Bool)

(assert (=> b!3621777 (= e!2241774 (sepAndNonSepRulesDisjointChars!1848 rules!3307 (t!294200 rules!3307)))))

(assert (= (and d!1065328 (not res!1465743)) b!3621776))

(assert (= (and b!3621776 res!1465744) b!3621777))

(declare-fun m!4121607 () Bool)

(assert (=> b!3621776 m!4121607))

(declare-fun m!4121609 () Bool)

(assert (=> b!3621777 m!4121609))

(assert (=> b!3621241 d!1065328))

(declare-fun d!1065330 () Bool)

(declare-fun lt!1251781 () Bool)

(assert (=> d!1065330 (= lt!1251781 (select (content!5461 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2241775 () Bool)

(assert (=> d!1065330 (= lt!1251781 e!2241775)))

(declare-fun res!1465745 () Bool)

(assert (=> d!1065330 (=> (not res!1465745) (not e!2241775))))

(assert (=> d!1065330 (= res!1465745 ((_ is Cons!38145) rules!3307))))

(assert (=> d!1065330 (= (contains!7419 rules!3307 anOtherTypeRule!33) lt!1251781)))

(declare-fun b!3621778 () Bool)

(declare-fun e!2241776 () Bool)

(assert (=> b!3621778 (= e!2241775 e!2241776)))

(declare-fun res!1465746 () Bool)

(assert (=> b!3621778 (=> res!1465746 e!2241776)))

(assert (=> b!3621778 (= res!1465746 (= (h!43565 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3621779 () Bool)

(assert (=> b!3621779 (= e!2241776 (contains!7419 (t!294200 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1065330 res!1465745) b!3621778))

(assert (= (and b!3621778 (not res!1465746)) b!3621779))

(assert (=> d!1065330 m!4121601))

(declare-fun m!4121611 () Bool)

(assert (=> d!1065330 m!4121611))

(declare-fun m!4121613 () Bool)

(assert (=> b!3621779 m!4121613))

(assert (=> b!3621262 d!1065330))

(declare-fun d!1065332 () Bool)

(assert (=> d!1065332 (= (isEmpty!22542 (_2!22144 lt!1251545)) ((_ is Nil!38144) (_2!22144 lt!1251545)))))

(assert (=> b!3621251 d!1065332))

(declare-fun d!1065334 () Bool)

(assert (=> d!1065334 (= (inv!51535 (tag!6396 rule!403)) (= (mod (str.len (value!182282 (tag!6396 rule!403))) 2) 0))))

(assert (=> b!3621240 d!1065334))

(declare-fun d!1065336 () Bool)

(declare-fun res!1465747 () Bool)

(declare-fun e!2241777 () Bool)

(assert (=> d!1065336 (=> (not res!1465747) (not e!2241777))))

(assert (=> d!1065336 (= res!1465747 (semiInverseModEq!2408 (toChars!7821 (transformation!5678 rule!403)) (toValue!7962 (transformation!5678 rule!403))))))

(assert (=> d!1065336 (= (inv!51538 (transformation!5678 rule!403)) e!2241777)))

(declare-fun b!3621780 () Bool)

(assert (=> b!3621780 (= e!2241777 (equivClasses!2307 (toChars!7821 (transformation!5678 rule!403)) (toValue!7962 (transformation!5678 rule!403))))))

(assert (= (and d!1065336 res!1465747) b!3621780))

(declare-fun m!4121615 () Bool)

(assert (=> d!1065336 m!4121615))

(declare-fun m!4121617 () Bool)

(assert (=> b!3621780 m!4121617))

(assert (=> b!3621240 d!1065336))

(declare-fun d!1065338 () Bool)

(assert (=> d!1065338 (= (isEmpty!22543 rules!3307) ((_ is Nil!38145) rules!3307))))

(assert (=> b!3621261 d!1065338))

(declare-fun d!1065340 () Bool)

(assert (=> d!1065340 (= (isDefined!6218 lt!1251544) (not (isEmpty!22546 lt!1251544)))))

(declare-fun bs!571214 () Bool)

(assert (= bs!571214 d!1065340))

(declare-fun m!4121619 () Bool)

(assert (=> bs!571214 m!4121619))

(assert (=> b!3621260 d!1065340))

(declare-fun b!3621781 () Bool)

(declare-fun res!1465752 () Bool)

(declare-fun e!2241780 () Bool)

(assert (=> b!3621781 (=> (not res!1465752) (not e!2241780))))

(declare-fun lt!1251786 () Option!7986)

(assert (=> b!3621781 (= res!1465752 (matchR!5006 (regex!5678 (rule!8440 (_1!22144 (get!12435 lt!1251786)))) (list!14078 (charsOf!3692 (_1!22144 (get!12435 lt!1251786))))))))

(declare-fun d!1065342 () Bool)

(declare-fun e!2241779 () Bool)

(assert (=> d!1065342 e!2241779))

(declare-fun res!1465751 () Bool)

(assert (=> d!1065342 (=> res!1465751 e!2241779)))

(assert (=> d!1065342 (= res!1465751 (isEmpty!22546 lt!1251786))))

(declare-fun e!2241778 () Option!7986)

(assert (=> d!1065342 (= lt!1251786 e!2241778)))

(declare-fun c!626764 () Bool)

(assert (=> d!1065342 (= c!626764 (and ((_ is Cons!38145) rules!3307) ((_ is Nil!38145) (t!294200 rules!3307))))))

(declare-fun lt!1251783 () Unit!54892)

(declare-fun lt!1251784 () Unit!54892)

(assert (=> d!1065342 (= lt!1251783 lt!1251784)))

(assert (=> d!1065342 (isPrefix!3041 lt!1251554 lt!1251554)))

(assert (=> d!1065342 (= lt!1251784 (lemmaIsPrefixRefl!1930 lt!1251554 lt!1251554))))

(assert (=> d!1065342 (rulesValidInductive!1995 thiss!23823 rules!3307)))

(assert (=> d!1065342 (= (maxPrefix!2801 thiss!23823 rules!3307 lt!1251554) lt!1251786)))

(declare-fun b!3621782 () Bool)

(declare-fun res!1465750 () Bool)

(assert (=> b!3621782 (=> (not res!1465750) (not e!2241780))))

(assert (=> b!3621782 (= res!1465750 (= (value!182283 (_1!22144 (get!12435 lt!1251786))) (apply!9184 (transformation!5678 (rule!8440 (_1!22144 (get!12435 lt!1251786)))) (seqFromList!4231 (originalCharacters!6392 (_1!22144 (get!12435 lt!1251786)))))))))

(declare-fun bm!262048 () Bool)

(declare-fun call!262053 () Option!7986)

(assert (=> bm!262048 (= call!262053 (maxPrefixOneRule!1945 thiss!23823 (h!43565 rules!3307) lt!1251554))))

(declare-fun b!3621783 () Bool)

(assert (=> b!3621783 (= e!2241778 call!262053)))

(declare-fun b!3621784 () Bool)

(declare-fun res!1465753 () Bool)

(assert (=> b!3621784 (=> (not res!1465753) (not e!2241780))))

(assert (=> b!3621784 (= res!1465753 (= (++!9494 (list!14078 (charsOf!3692 (_1!22144 (get!12435 lt!1251786)))) (_2!22144 (get!12435 lt!1251786))) lt!1251554))))

(declare-fun b!3621785 () Bool)

(assert (=> b!3621785 (= e!2241779 e!2241780)))

(declare-fun res!1465754 () Bool)

(assert (=> b!3621785 (=> (not res!1465754) (not e!2241780))))

(assert (=> b!3621785 (= res!1465754 (isDefined!6218 lt!1251786))))

(declare-fun b!3621786 () Bool)

(assert (=> b!3621786 (= e!2241780 (contains!7419 rules!3307 (rule!8440 (_1!22144 (get!12435 lt!1251786)))))))

(declare-fun b!3621787 () Bool)

(declare-fun res!1465748 () Bool)

(assert (=> b!3621787 (=> (not res!1465748) (not e!2241780))))

(assert (=> b!3621787 (= res!1465748 (< (size!29103 (_2!22144 (get!12435 lt!1251786))) (size!29103 lt!1251554)))))

(declare-fun b!3621788 () Bool)

(declare-fun lt!1251782 () Option!7986)

(declare-fun lt!1251785 () Option!7986)

(assert (=> b!3621788 (= e!2241778 (ite (and ((_ is None!7985) lt!1251782) ((_ is None!7985) lt!1251785)) None!7985 (ite ((_ is None!7985) lt!1251785) lt!1251782 (ite ((_ is None!7985) lt!1251782) lt!1251785 (ite (>= (size!29101 (_1!22144 (v!37751 lt!1251782))) (size!29101 (_1!22144 (v!37751 lt!1251785)))) lt!1251782 lt!1251785)))))))

(assert (=> b!3621788 (= lt!1251782 call!262053)))

(assert (=> b!3621788 (= lt!1251785 (maxPrefix!2801 thiss!23823 (t!294200 rules!3307) lt!1251554))))

(declare-fun b!3621789 () Bool)

(declare-fun res!1465749 () Bool)

(assert (=> b!3621789 (=> (not res!1465749) (not e!2241780))))

(assert (=> b!3621789 (= res!1465749 (= (list!14078 (charsOf!3692 (_1!22144 (get!12435 lt!1251786)))) (originalCharacters!6392 (_1!22144 (get!12435 lt!1251786)))))))

(assert (= (and d!1065342 c!626764) b!3621783))

(assert (= (and d!1065342 (not c!626764)) b!3621788))

(assert (= (or b!3621783 b!3621788) bm!262048))

(assert (= (and d!1065342 (not res!1465751)) b!3621785))

(assert (= (and b!3621785 res!1465754) b!3621789))

(assert (= (and b!3621789 res!1465749) b!3621787))

(assert (= (and b!3621787 res!1465748) b!3621784))

(assert (= (and b!3621784 res!1465753) b!3621782))

(assert (= (and b!3621782 res!1465750) b!3621781))

(assert (= (and b!3621781 res!1465752) b!3621786))

(declare-fun m!4121621 () Bool)

(assert (=> b!3621789 m!4121621))

(declare-fun m!4121623 () Bool)

(assert (=> b!3621789 m!4121623))

(assert (=> b!3621789 m!4121623))

(declare-fun m!4121625 () Bool)

(assert (=> b!3621789 m!4121625))

(declare-fun m!4121627 () Bool)

(assert (=> b!3621785 m!4121627))

(assert (=> b!3621784 m!4121621))

(assert (=> b!3621784 m!4121623))

(assert (=> b!3621784 m!4121623))

(assert (=> b!3621784 m!4121625))

(assert (=> b!3621784 m!4121625))

(declare-fun m!4121629 () Bool)

(assert (=> b!3621784 m!4121629))

(assert (=> b!3621782 m!4121621))

(declare-fun m!4121631 () Bool)

(assert (=> b!3621782 m!4121631))

(assert (=> b!3621782 m!4121631))

(declare-fun m!4121633 () Bool)

(assert (=> b!3621782 m!4121633))

(assert (=> b!3621787 m!4121621))

(declare-fun m!4121635 () Bool)

(assert (=> b!3621787 m!4121635))

(assert (=> b!3621787 m!4121237))

(declare-fun m!4121637 () Bool)

(assert (=> b!3621788 m!4121637))

(assert (=> b!3621786 m!4121621))

(declare-fun m!4121639 () Bool)

(assert (=> b!3621786 m!4121639))

(declare-fun m!4121641 () Bool)

(assert (=> bm!262048 m!4121641))

(declare-fun m!4121643 () Bool)

(assert (=> d!1065342 m!4121643))

(declare-fun m!4121645 () Bool)

(assert (=> d!1065342 m!4121645))

(declare-fun m!4121647 () Bool)

(assert (=> d!1065342 m!4121647))

(assert (=> d!1065342 m!4121559))

(assert (=> b!3621781 m!4121621))

(assert (=> b!3621781 m!4121623))

(assert (=> b!3621781 m!4121623))

(assert (=> b!3621781 m!4121625))

(assert (=> b!3621781 m!4121625))

(declare-fun m!4121649 () Bool)

(assert (=> b!3621781 m!4121649))

(assert (=> b!3621260 d!1065342))

(declare-fun d!1065344 () Bool)

(assert (=> d!1065344 (= (list!14078 (charsOf!3692 token!511)) (list!14082 (c!626671 (charsOf!3692 token!511))))))

(declare-fun bs!571215 () Bool)

(assert (= bs!571215 d!1065344))

(declare-fun m!4121651 () Bool)

(assert (=> bs!571215 m!4121651))

(assert (=> b!3621260 d!1065344))

(declare-fun d!1065346 () Bool)

(declare-fun lt!1251787 () BalanceConc!22876)

(assert (=> d!1065346 (= (list!14078 lt!1251787) (originalCharacters!6392 token!511))))

(assert (=> d!1065346 (= lt!1251787 (dynLambda!16507 (toChars!7821 (transformation!5678 (rule!8440 token!511))) (value!182283 token!511)))))

(assert (=> d!1065346 (= (charsOf!3692 token!511) lt!1251787)))

(declare-fun b_lambda!107111 () Bool)

(assert (=> (not b_lambda!107111) (not d!1065346)))

(declare-fun tb!207725 () Bool)

(declare-fun t!294230 () Bool)

(assert (=> (and b!3621259 (= (toChars!7821 (transformation!5678 anOtherTypeRule!33)) (toChars!7821 (transformation!5678 (rule!8440 token!511)))) t!294230) tb!207725))

(declare-fun b!3621790 () Bool)

(declare-fun e!2241781 () Bool)

(declare-fun tp!1106134 () Bool)

(assert (=> b!3621790 (= e!2241781 (and (inv!51542 (c!626671 (dynLambda!16507 (toChars!7821 (transformation!5678 (rule!8440 token!511))) (value!182283 token!511)))) tp!1106134))))

(declare-fun result!253116 () Bool)

(assert (=> tb!207725 (= result!253116 (and (inv!51543 (dynLambda!16507 (toChars!7821 (transformation!5678 (rule!8440 token!511))) (value!182283 token!511))) e!2241781))))

(assert (= tb!207725 b!3621790))

(declare-fun m!4121653 () Bool)

(assert (=> b!3621790 m!4121653))

(declare-fun m!4121655 () Bool)

(assert (=> tb!207725 m!4121655))

(assert (=> d!1065346 t!294230))

(declare-fun b_and!264847 () Bool)

(assert (= b_and!264839 (and (=> t!294230 result!253116) b_and!264847)))

(declare-fun tb!207727 () Bool)

(declare-fun t!294232 () Bool)

(assert (=> (and b!3621253 (= (toChars!7821 (transformation!5678 (h!43565 rules!3307))) (toChars!7821 (transformation!5678 (rule!8440 token!511)))) t!294232) tb!207727))

(declare-fun result!253118 () Bool)

(assert (= result!253118 result!253116))

(assert (=> d!1065346 t!294232))

(declare-fun b_and!264849 () Bool)

(assert (= b_and!264841 (and (=> t!294232 result!253118) b_and!264849)))

(declare-fun t!294234 () Bool)

(declare-fun tb!207729 () Bool)

(assert (=> (and b!3621265 (= (toChars!7821 (transformation!5678 (rule!8440 token!511))) (toChars!7821 (transformation!5678 (rule!8440 token!511)))) t!294234) tb!207729))

(declare-fun result!253120 () Bool)

(assert (= result!253120 result!253116))

(assert (=> d!1065346 t!294234))

(declare-fun b_and!264851 () Bool)

(assert (= b_and!264843 (and (=> t!294234 result!253120) b_and!264851)))

(declare-fun tb!207731 () Bool)

(declare-fun t!294236 () Bool)

(assert (=> (and b!3621239 (= (toChars!7821 (transformation!5678 rule!403)) (toChars!7821 (transformation!5678 (rule!8440 token!511)))) t!294236) tb!207731))

(declare-fun result!253122 () Bool)

(assert (= result!253122 result!253116))

(assert (=> d!1065346 t!294236))

(declare-fun b_and!264853 () Bool)

(assert (= b_and!264845 (and (=> t!294236 result!253122) b_and!264853)))

(declare-fun m!4121657 () Bool)

(assert (=> d!1065346 m!4121657))

(declare-fun m!4121659 () Bool)

(assert (=> d!1065346 m!4121659))

(assert (=> b!3621260 d!1065346))

(declare-fun d!1065348 () Bool)

(declare-fun res!1465757 () Bool)

(declare-fun e!2241784 () Bool)

(assert (=> d!1065348 (=> (not res!1465757) (not e!2241784))))

(declare-fun rulesValid!2166 (LexerInterface!5267 List!38269) Bool)

(assert (=> d!1065348 (= res!1465757 (rulesValid!2166 thiss!23823 rules!3307))))

(assert (=> d!1065348 (= (rulesInvariant!4664 thiss!23823 rules!3307) e!2241784)))

(declare-fun b!3621793 () Bool)

(declare-datatypes ((List!38273 0))(
  ( (Nil!38149) (Cons!38149 (h!43569 String!42874) (t!294244 List!38273)) )
))
(declare-fun noDuplicateTag!2162 (LexerInterface!5267 List!38269 List!38273) Bool)

(assert (=> b!3621793 (= e!2241784 (noDuplicateTag!2162 thiss!23823 rules!3307 Nil!38149))))

(assert (= (and d!1065348 res!1465757) b!3621793))

(declare-fun m!4121661 () Bool)

(assert (=> d!1065348 m!4121661))

(declare-fun m!4121663 () Bool)

(assert (=> b!3621793 m!4121663))

(assert (=> b!3621248 d!1065348))

(declare-fun d!1065350 () Bool)

(assert (=> d!1065350 (= (inv!51535 (tag!6396 (rule!8440 token!511))) (= (mod (str.len (value!182282 (tag!6396 (rule!8440 token!511)))) 2) 0))))

(assert (=> b!3621258 d!1065350))

(declare-fun d!1065352 () Bool)

(declare-fun res!1465758 () Bool)

(declare-fun e!2241785 () Bool)

(assert (=> d!1065352 (=> (not res!1465758) (not e!2241785))))

(assert (=> d!1065352 (= res!1465758 (semiInverseModEq!2408 (toChars!7821 (transformation!5678 (rule!8440 token!511))) (toValue!7962 (transformation!5678 (rule!8440 token!511)))))))

(assert (=> d!1065352 (= (inv!51538 (transformation!5678 (rule!8440 token!511))) e!2241785)))

(declare-fun b!3621794 () Bool)

(assert (=> b!3621794 (= e!2241785 (equivClasses!2307 (toChars!7821 (transformation!5678 (rule!8440 token!511))) (toValue!7962 (transformation!5678 (rule!8440 token!511)))))))

(assert (= (and d!1065352 res!1465758) b!3621794))

(declare-fun m!4121665 () Bool)

(assert (=> d!1065352 m!4121665))

(declare-fun m!4121667 () Bool)

(assert (=> b!3621794 m!4121667))

(assert (=> b!3621258 d!1065352))

(declare-fun d!1065354 () Bool)

(assert (=> d!1065354 (= (isEmpty!22542 suffix!1395) ((_ is Nil!38144) suffix!1395))))

(assert (=> b!3621247 d!1065354))

(declare-fun d!1065356 () Bool)

(declare-fun res!1465763 () Bool)

(declare-fun e!2241788 () Bool)

(assert (=> d!1065356 (=> (not res!1465763) (not e!2241788))))

(assert (=> d!1065356 (= res!1465763 (not (isEmpty!22542 (originalCharacters!6392 token!511))))))

(assert (=> d!1065356 (= (inv!51539 token!511) e!2241788)))

(declare-fun b!3621799 () Bool)

(declare-fun res!1465764 () Bool)

(assert (=> b!3621799 (=> (not res!1465764) (not e!2241788))))

(assert (=> b!3621799 (= res!1465764 (= (originalCharacters!6392 token!511) (list!14078 (dynLambda!16507 (toChars!7821 (transformation!5678 (rule!8440 token!511))) (value!182283 token!511)))))))

(declare-fun b!3621800 () Bool)

(assert (=> b!3621800 (= e!2241788 (= (size!29101 token!511) (size!29103 (originalCharacters!6392 token!511))))))

(assert (= (and d!1065356 res!1465763) b!3621799))

(assert (= (and b!3621799 res!1465764) b!3621800))

(declare-fun b_lambda!107113 () Bool)

(assert (=> (not b_lambda!107113) (not b!3621799)))

(assert (=> b!3621799 t!294230))

(declare-fun b_and!264855 () Bool)

(assert (= b_and!264847 (and (=> t!294230 result!253116) b_and!264855)))

(assert (=> b!3621799 t!294232))

(declare-fun b_and!264857 () Bool)

(assert (= b_and!264849 (and (=> t!294232 result!253118) b_and!264857)))

(assert (=> b!3621799 t!294234))

(declare-fun b_and!264859 () Bool)

(assert (= b_and!264851 (and (=> t!294234 result!253120) b_and!264859)))

(assert (=> b!3621799 t!294236))

(declare-fun b_and!264861 () Bool)

(assert (= b_and!264853 (and (=> t!294236 result!253122) b_and!264861)))

(declare-fun m!4121669 () Bool)

(assert (=> d!1065356 m!4121669))

(assert (=> b!3621799 m!4121659))

(assert (=> b!3621799 m!4121659))

(declare-fun m!4121671 () Bool)

(assert (=> b!3621799 m!4121671))

(declare-fun m!4121673 () Bool)

(assert (=> b!3621800 m!4121673))

(assert (=> start!337274 d!1065356))

(declare-fun bm!262049 () Bool)

(declare-fun call!262054 () Bool)

(assert (=> bm!262049 (= call!262054 (isEmpty!22542 (list!14078 (charsOf!3692 (_1!22144 lt!1251553)))))))

(declare-fun d!1065358 () Bool)

(declare-fun e!2241794 () Bool)

(assert (=> d!1065358 e!2241794))

(declare-fun c!626766 () Bool)

(assert (=> d!1065358 (= c!626766 ((_ is EmptyExpr!10437) (regex!5678 lt!1251546)))))

(declare-fun lt!1251788 () Bool)

(declare-fun e!2241791 () Bool)

(assert (=> d!1065358 (= lt!1251788 e!2241791)))

(declare-fun c!626767 () Bool)

(assert (=> d!1065358 (= c!626767 (isEmpty!22542 (list!14078 (charsOf!3692 (_1!22144 lt!1251553)))))))

(assert (=> d!1065358 (validRegex!4772 (regex!5678 lt!1251546))))

(assert (=> d!1065358 (= (matchR!5006 (regex!5678 lt!1251546) (list!14078 (charsOf!3692 (_1!22144 lt!1251553)))) lt!1251788)))

(declare-fun b!3621801 () Bool)

(declare-fun res!1465768 () Bool)

(declare-fun e!2241789 () Bool)

(assert (=> b!3621801 (=> res!1465768 e!2241789)))

(assert (=> b!3621801 (= res!1465768 (not (isEmpty!22542 (tail!5609 (list!14078 (charsOf!3692 (_1!22144 lt!1251553)))))))))

(declare-fun b!3621802 () Bool)

(declare-fun e!2241793 () Bool)

(assert (=> b!3621802 (= e!2241793 (= (head!7648 (list!14078 (charsOf!3692 (_1!22144 lt!1251553)))) (c!626670 (regex!5678 lt!1251546))))))

(declare-fun b!3621803 () Bool)

(declare-fun e!2241795 () Bool)

(assert (=> b!3621803 (= e!2241795 (not lt!1251788))))

(declare-fun b!3621804 () Bool)

(assert (=> b!3621804 (= e!2241791 (matchR!5006 (derivativeStep!3159 (regex!5678 lt!1251546) (head!7648 (list!14078 (charsOf!3692 (_1!22144 lt!1251553))))) (tail!5609 (list!14078 (charsOf!3692 (_1!22144 lt!1251553))))))))

(declare-fun b!3621805 () Bool)

(assert (=> b!3621805 (= e!2241794 e!2241795)))

(declare-fun c!626768 () Bool)

(assert (=> b!3621805 (= c!626768 ((_ is EmptyLang!10437) (regex!5678 lt!1251546)))))

(declare-fun b!3621806 () Bool)

(declare-fun res!1465765 () Bool)

(declare-fun e!2241792 () Bool)

(assert (=> b!3621806 (=> res!1465765 e!2241792)))

(assert (=> b!3621806 (= res!1465765 e!2241793)))

(declare-fun res!1465766 () Bool)

(assert (=> b!3621806 (=> (not res!1465766) (not e!2241793))))

(assert (=> b!3621806 (= res!1465766 lt!1251788)))

(declare-fun b!3621807 () Bool)

(declare-fun e!2241790 () Bool)

(assert (=> b!3621807 (= e!2241792 e!2241790)))

(declare-fun res!1465770 () Bool)

(assert (=> b!3621807 (=> (not res!1465770) (not e!2241790))))

(assert (=> b!3621807 (= res!1465770 (not lt!1251788))))

(declare-fun b!3621808 () Bool)

(declare-fun res!1465769 () Bool)

(assert (=> b!3621808 (=> (not res!1465769) (not e!2241793))))

(assert (=> b!3621808 (= res!1465769 (isEmpty!22542 (tail!5609 (list!14078 (charsOf!3692 (_1!22144 lt!1251553))))))))

(declare-fun b!3621809 () Bool)

(declare-fun res!1465772 () Bool)

(assert (=> b!3621809 (=> res!1465772 e!2241792)))

(assert (=> b!3621809 (= res!1465772 (not ((_ is ElementMatch!10437) (regex!5678 lt!1251546))))))

(assert (=> b!3621809 (= e!2241795 e!2241792)))

(declare-fun b!3621810 () Bool)

(assert (=> b!3621810 (= e!2241794 (= lt!1251788 call!262054))))

(declare-fun b!3621811 () Bool)

(assert (=> b!3621811 (= e!2241790 e!2241789)))

(declare-fun res!1465767 () Bool)

(assert (=> b!3621811 (=> res!1465767 e!2241789)))

(assert (=> b!3621811 (= res!1465767 call!262054)))

(declare-fun b!3621812 () Bool)

(assert (=> b!3621812 (= e!2241789 (not (= (head!7648 (list!14078 (charsOf!3692 (_1!22144 lt!1251553)))) (c!626670 (regex!5678 lt!1251546)))))))

(declare-fun b!3621813 () Bool)

(assert (=> b!3621813 (= e!2241791 (nullable!3610 (regex!5678 lt!1251546)))))

(declare-fun b!3621814 () Bool)

(declare-fun res!1465771 () Bool)

(assert (=> b!3621814 (=> (not res!1465771) (not e!2241793))))

(assert (=> b!3621814 (= res!1465771 (not call!262054))))

(assert (= (and d!1065358 c!626767) b!3621813))

(assert (= (and d!1065358 (not c!626767)) b!3621804))

(assert (= (and d!1065358 c!626766) b!3621810))

(assert (= (and d!1065358 (not c!626766)) b!3621805))

(assert (= (and b!3621805 c!626768) b!3621803))

(assert (= (and b!3621805 (not c!626768)) b!3621809))

(assert (= (and b!3621809 (not res!1465772)) b!3621806))

(assert (= (and b!3621806 res!1465766) b!3621814))

(assert (= (and b!3621814 res!1465771) b!3621808))

(assert (= (and b!3621808 res!1465769) b!3621802))

(assert (= (and b!3621806 (not res!1465765)) b!3621807))

(assert (= (and b!3621807 res!1465770) b!3621811))

(assert (= (and b!3621811 (not res!1465767)) b!3621801))

(assert (= (and b!3621801 (not res!1465768)) b!3621812))

(assert (= (or b!3621810 b!3621814 b!3621811) bm!262049))

(assert (=> d!1065358 m!4120989))

(declare-fun m!4121675 () Bool)

(assert (=> d!1065358 m!4121675))

(declare-fun m!4121677 () Bool)

(assert (=> d!1065358 m!4121677))

(declare-fun m!4121679 () Bool)

(assert (=> b!3621813 m!4121679))

(assert (=> b!3621802 m!4120989))

(declare-fun m!4121681 () Bool)

(assert (=> b!3621802 m!4121681))

(assert (=> b!3621808 m!4120989))

(declare-fun m!4121683 () Bool)

(assert (=> b!3621808 m!4121683))

(assert (=> b!3621808 m!4121683))

(declare-fun m!4121685 () Bool)

(assert (=> b!3621808 m!4121685))

(assert (=> b!3621801 m!4120989))

(assert (=> b!3621801 m!4121683))

(assert (=> b!3621801 m!4121683))

(assert (=> b!3621801 m!4121685))

(assert (=> b!3621812 m!4120989))

(assert (=> b!3621812 m!4121681))

(assert (=> bm!262049 m!4120989))

(assert (=> bm!262049 m!4121675))

(assert (=> b!3621804 m!4120989))

(assert (=> b!3621804 m!4121681))

(assert (=> b!3621804 m!4121681))

(declare-fun m!4121687 () Bool)

(assert (=> b!3621804 m!4121687))

(assert (=> b!3621804 m!4120989))

(assert (=> b!3621804 m!4121683))

(assert (=> b!3621804 m!4121687))

(assert (=> b!3621804 m!4121683))

(declare-fun m!4121689 () Bool)

(assert (=> b!3621804 m!4121689))

(assert (=> b!3621257 d!1065358))

(assert (=> b!3621257 d!1065322))

(assert (=> b!3621257 d!1065318))

(declare-fun d!1065360 () Bool)

(assert (=> d!1065360 (= (get!12436 lt!1251556) (v!37752 lt!1251556))))

(assert (=> b!3621257 d!1065360))

(declare-fun b!3621825 () Bool)

(declare-fun e!2241803 () Bool)

(declare-fun inv!17 (TokenValue!5908) Bool)

(assert (=> b!3621825 (= e!2241803 (inv!17 (value!182283 token!511)))))

(declare-fun b!3621826 () Bool)

(declare-fun res!1465775 () Bool)

(declare-fun e!2241804 () Bool)

(assert (=> b!3621826 (=> res!1465775 e!2241804)))

(assert (=> b!3621826 (= res!1465775 (not ((_ is IntegerValue!17726) (value!182283 token!511))))))

(assert (=> b!3621826 (= e!2241803 e!2241804)))

(declare-fun b!3621827 () Bool)

(declare-fun e!2241802 () Bool)

(assert (=> b!3621827 (= e!2241802 e!2241803)))

(declare-fun c!626774 () Bool)

(assert (=> b!3621827 (= c!626774 ((_ is IntegerValue!17725) (value!182283 token!511)))))

(declare-fun b!3621828 () Bool)

(declare-fun inv!15 (TokenValue!5908) Bool)

(assert (=> b!3621828 (= e!2241804 (inv!15 (value!182283 token!511)))))

(declare-fun b!3621829 () Bool)

(declare-fun inv!16 (TokenValue!5908) Bool)

(assert (=> b!3621829 (= e!2241802 (inv!16 (value!182283 token!511)))))

(declare-fun d!1065362 () Bool)

(declare-fun c!626773 () Bool)

(assert (=> d!1065362 (= c!626773 ((_ is IntegerValue!17724) (value!182283 token!511)))))

(assert (=> d!1065362 (= (inv!21 (value!182283 token!511)) e!2241802)))

(assert (= (and d!1065362 c!626773) b!3621829))

(assert (= (and d!1065362 (not c!626773)) b!3621827))

(assert (= (and b!3621827 c!626774) b!3621825))

(assert (= (and b!3621827 (not c!626774)) b!3621826))

(assert (= (and b!3621826 (not res!1465775)) b!3621828))

(declare-fun m!4121691 () Bool)

(assert (=> b!3621825 m!4121691))

(declare-fun m!4121693 () Bool)

(assert (=> b!3621828 m!4121693))

(declare-fun m!4121695 () Bool)

(assert (=> b!3621829 m!4121695))

(assert (=> b!3621246 d!1065362))

(declare-fun b!3621840 () Bool)

(declare-fun e!2241807 () Bool)

(assert (=> b!3621840 (= e!2241807 tp_is_empty!17957)))

(assert (=> b!3621255 (= tp!1106080 e!2241807)))

(declare-fun b!3621841 () Bool)

(declare-fun tp!1106147 () Bool)

(declare-fun tp!1106149 () Bool)

(assert (=> b!3621841 (= e!2241807 (and tp!1106147 tp!1106149))))

(declare-fun b!3621842 () Bool)

(declare-fun tp!1106148 () Bool)

(assert (=> b!3621842 (= e!2241807 tp!1106148)))

(declare-fun b!3621843 () Bool)

(declare-fun tp!1106146 () Bool)

(declare-fun tp!1106145 () Bool)

(assert (=> b!3621843 (= e!2241807 (and tp!1106146 tp!1106145))))

(assert (= (and b!3621255 ((_ is ElementMatch!10437) (regex!5678 (h!43565 rules!3307)))) b!3621840))

(assert (= (and b!3621255 ((_ is Concat!16346) (regex!5678 (h!43565 rules!3307)))) b!3621841))

(assert (= (and b!3621255 ((_ is Star!10437) (regex!5678 (h!43565 rules!3307)))) b!3621842))

(assert (= (and b!3621255 ((_ is Union!10437) (regex!5678 (h!43565 rules!3307)))) b!3621843))

(declare-fun b!3621854 () Bool)

(declare-fun b_free!94445 () Bool)

(declare-fun b_next!95149 () Bool)

(assert (=> b!3621854 (= b_free!94445 (not b_next!95149))))

(declare-fun tp!1106161 () Bool)

(declare-fun b_and!264863 () Bool)

(assert (=> b!3621854 (= tp!1106161 b_and!264863)))

(declare-fun b_free!94447 () Bool)

(declare-fun b_next!95151 () Bool)

(assert (=> b!3621854 (= b_free!94447 (not b_next!95151))))

(declare-fun t!294239 () Bool)

(declare-fun tb!207733 () Bool)

(assert (=> (and b!3621854 (= (toChars!7821 (transformation!5678 (h!43565 (t!294200 rules!3307)))) (toChars!7821 (transformation!5678 (rule!8440 (_1!22144 lt!1251553))))) t!294239) tb!207733))

(declare-fun result!253128 () Bool)

(assert (= result!253128 result!253106))

(assert (=> d!1065318 t!294239))

(declare-fun tb!207735 () Bool)

(declare-fun t!294241 () Bool)

(assert (=> (and b!3621854 (= (toChars!7821 (transformation!5678 (h!43565 (t!294200 rules!3307)))) (toChars!7821 (transformation!5678 (rule!8440 token!511)))) t!294241) tb!207735))

(declare-fun result!253130 () Bool)

(assert (= result!253130 result!253116))

(assert (=> d!1065346 t!294241))

(assert (=> b!3621799 t!294241))

(declare-fun b_and!264865 () Bool)

(declare-fun tp!1106158 () Bool)

(assert (=> b!3621854 (= tp!1106158 (and (=> t!294239 result!253128) (=> t!294241 result!253130) b_and!264865))))

(declare-fun e!2241818 () Bool)

(assert (=> b!3621854 (= e!2241818 (and tp!1106161 tp!1106158))))

(declare-fun tp!1106160 () Bool)

(declare-fun e!2241819 () Bool)

(declare-fun b!3621853 () Bool)

(assert (=> b!3621853 (= e!2241819 (and tp!1106160 (inv!51535 (tag!6396 (h!43565 (t!294200 rules!3307)))) (inv!51538 (transformation!5678 (h!43565 (t!294200 rules!3307)))) e!2241818))))

(declare-fun b!3621852 () Bool)

(declare-fun e!2241816 () Bool)

(declare-fun tp!1106159 () Bool)

(assert (=> b!3621852 (= e!2241816 (and e!2241819 tp!1106159))))

(assert (=> b!3621244 (= tp!1106073 e!2241816)))

(assert (= b!3621853 b!3621854))

(assert (= b!3621852 b!3621853))

(assert (= (and b!3621244 ((_ is Cons!38145) (t!294200 rules!3307))) b!3621852))

(declare-fun m!4121697 () Bool)

(assert (=> b!3621853 m!4121697))

(declare-fun m!4121699 () Bool)

(assert (=> b!3621853 m!4121699))

(declare-fun b!3621859 () Bool)

(declare-fun e!2241822 () Bool)

(declare-fun tp!1106164 () Bool)

(assert (=> b!3621859 (= e!2241822 (and tp_is_empty!17957 tp!1106164))))

(assert (=> b!3621254 (= tp!1106069 e!2241822)))

(assert (= (and b!3621254 ((_ is Cons!38144) (t!294199 suffix!1395))) b!3621859))

(declare-fun b!3621860 () Bool)

(declare-fun e!2241823 () Bool)

(assert (=> b!3621860 (= e!2241823 tp_is_empty!17957)))

(assert (=> b!3621243 (= tp!1106074 e!2241823)))

(declare-fun b!3621861 () Bool)

(declare-fun tp!1106167 () Bool)

(declare-fun tp!1106169 () Bool)

(assert (=> b!3621861 (= e!2241823 (and tp!1106167 tp!1106169))))

(declare-fun b!3621862 () Bool)

(declare-fun tp!1106168 () Bool)

(assert (=> b!3621862 (= e!2241823 tp!1106168)))

(declare-fun b!3621863 () Bool)

(declare-fun tp!1106166 () Bool)

(declare-fun tp!1106165 () Bool)

(assert (=> b!3621863 (= e!2241823 (and tp!1106166 tp!1106165))))

(assert (= (and b!3621243 ((_ is ElementMatch!10437) (regex!5678 anOtherTypeRule!33))) b!3621860))

(assert (= (and b!3621243 ((_ is Concat!16346) (regex!5678 anOtherTypeRule!33))) b!3621861))

(assert (= (and b!3621243 ((_ is Star!10437) (regex!5678 anOtherTypeRule!33))) b!3621862))

(assert (= (and b!3621243 ((_ is Union!10437) (regex!5678 anOtherTypeRule!33))) b!3621863))

(declare-fun b!3621864 () Bool)

(declare-fun e!2241824 () Bool)

(assert (=> b!3621864 (= e!2241824 tp_is_empty!17957)))

(assert (=> b!3621258 (= tp!1106066 e!2241824)))

(declare-fun b!3621865 () Bool)

(declare-fun tp!1106172 () Bool)

(declare-fun tp!1106174 () Bool)

(assert (=> b!3621865 (= e!2241824 (and tp!1106172 tp!1106174))))

(declare-fun b!3621866 () Bool)

(declare-fun tp!1106173 () Bool)

(assert (=> b!3621866 (= e!2241824 tp!1106173)))

(declare-fun b!3621867 () Bool)

(declare-fun tp!1106171 () Bool)

(declare-fun tp!1106170 () Bool)

(assert (=> b!3621867 (= e!2241824 (and tp!1106171 tp!1106170))))

(assert (= (and b!3621258 ((_ is ElementMatch!10437) (regex!5678 (rule!8440 token!511)))) b!3621864))

(assert (= (and b!3621258 ((_ is Concat!16346) (regex!5678 (rule!8440 token!511)))) b!3621865))

(assert (= (and b!3621258 ((_ is Star!10437) (regex!5678 (rule!8440 token!511)))) b!3621866))

(assert (= (and b!3621258 ((_ is Union!10437) (regex!5678 (rule!8440 token!511)))) b!3621867))

(declare-fun b!3621868 () Bool)

(declare-fun e!2241825 () Bool)

(declare-fun tp!1106175 () Bool)

(assert (=> b!3621868 (= e!2241825 (and tp_is_empty!17957 tp!1106175))))

(assert (=> b!3621246 (= tp!1106072 e!2241825)))

(assert (= (and b!3621246 ((_ is Cons!38144) (originalCharacters!6392 token!511))) b!3621868))

(declare-fun b!3621869 () Bool)

(declare-fun e!2241826 () Bool)

(assert (=> b!3621869 (= e!2241826 tp_is_empty!17957)))

(assert (=> b!3621240 (= tp!1106075 e!2241826)))

(declare-fun b!3621870 () Bool)

(declare-fun tp!1106178 () Bool)

(declare-fun tp!1106180 () Bool)

(assert (=> b!3621870 (= e!2241826 (and tp!1106178 tp!1106180))))

(declare-fun b!3621871 () Bool)

(declare-fun tp!1106179 () Bool)

(assert (=> b!3621871 (= e!2241826 tp!1106179)))

(declare-fun b!3621872 () Bool)

(declare-fun tp!1106177 () Bool)

(declare-fun tp!1106176 () Bool)

(assert (=> b!3621872 (= e!2241826 (and tp!1106177 tp!1106176))))

(assert (= (and b!3621240 ((_ is ElementMatch!10437) (regex!5678 rule!403))) b!3621869))

(assert (= (and b!3621240 ((_ is Concat!16346) (regex!5678 rule!403))) b!3621870))

(assert (= (and b!3621240 ((_ is Star!10437) (regex!5678 rule!403))) b!3621871))

(assert (= (and b!3621240 ((_ is Union!10437) (regex!5678 rule!403))) b!3621872))

(declare-fun b_lambda!107115 () Bool)

(assert (= b_lambda!107111 (or (and b!3621259 b_free!94427 (= (toChars!7821 (transformation!5678 anOtherTypeRule!33)) (toChars!7821 (transformation!5678 (rule!8440 token!511))))) (and b!3621854 b_free!94447 (= (toChars!7821 (transformation!5678 (h!43565 (t!294200 rules!3307)))) (toChars!7821 (transformation!5678 (rule!8440 token!511))))) (and b!3621253 b_free!94431 (= (toChars!7821 (transformation!5678 (h!43565 rules!3307))) (toChars!7821 (transformation!5678 (rule!8440 token!511))))) (and b!3621239 b_free!94439 (= (toChars!7821 (transformation!5678 rule!403)) (toChars!7821 (transformation!5678 (rule!8440 token!511))))) (and b!3621265 b_free!94435) b_lambda!107115)))

(declare-fun b_lambda!107117 () Bool)

(assert (= b_lambda!107113 (or (and b!3621259 b_free!94427 (= (toChars!7821 (transformation!5678 anOtherTypeRule!33)) (toChars!7821 (transformation!5678 (rule!8440 token!511))))) (and b!3621854 b_free!94447 (= (toChars!7821 (transformation!5678 (h!43565 (t!294200 rules!3307)))) (toChars!7821 (transformation!5678 (rule!8440 token!511))))) (and b!3621253 b_free!94431 (= (toChars!7821 (transformation!5678 (h!43565 rules!3307))) (toChars!7821 (transformation!5678 (rule!8440 token!511))))) (and b!3621239 b_free!94439 (= (toChars!7821 (transformation!5678 rule!403)) (toChars!7821 (transformation!5678 (rule!8440 token!511))))) (and b!3621265 b_free!94435) b_lambda!107117)))

(check-sat (not bm!262028) b_and!264859 (not d!1065238) (not b!3621790) (not b!3621719) (not b!3621373) (not b!3621872) (not b!3621852) (not d!1065226) (not b!3621788) (not b!3621482) (not bm!262049) (not d!1065204) (not b!3621382) (not b_lambda!107109) (not d!1065234) (not b!3621787) (not bm!262048) (not b!3621804) (not b!3621761) (not d!1065302) (not b!3621738) (not b!3621861) (not b_next!95143) (not b_next!95133) b_and!264807 (not b!3621703) (not b_next!95141) (not b_next!95151) (not d!1065224) b_and!264863 (not b!3621748) (not b!3621799) (not b!3621867) (not bm!262033) (not d!1065202) (not b!3621779) (not b!3621780) (not b!3621764) (not b!3621841) (not b!3621793) b_and!264855 (not d!1065318) (not b!3621743) (not b!3621801) (not b!3621865) (not d!1065188) (not d!1065348) (not b!3621784) (not b!3621717) (not b!3621765) (not b!3621461) (not b!3621392) b_and!264865 (not d!1065316) (not d!1065206) (not b!3621683) (not d!1065236) (not bm!262016) (not b!3621842) (not b!3621744) (not b!3621746) (not b!3621828) (not b_next!95135) (not b!3621786) (not d!1065336) (not b!3621713) (not b!3621760) (not b!3621808) (not b!3621868) (not d!1065340) (not d!1065322) (not b!3621430) (not b!3621862) (not b!3621718) (not b!3621812) (not b!3621464) (not b!3621781) (not b!3621870) (not b!3621742) (not bm!262047) (not b!3621771) (not b!3621684) (not b_next!95131) (not b!3621682) (not d!1065342) (not b!3621701) (not b!3621863) (not b!3621825) tp_is_empty!17957 (not b_lambda!107117) (not d!1065312) b_and!264857 (not d!1065326) (not b!3621370) (not b!3621381) (not b!3621741) (not b_lambda!107115) (not b!3621371) (not b!3621853) (not b!3621763) (not tb!207725) (not b!3621782) (not d!1065358) (not b!3621745) (not bm!262034) (not b_next!95137) (not d!1065220) (not d!1065356) (not bm!262029) b_and!264861 (not b_next!95139) (not b!3621462) (not b!3621777) (not b!3621698) (not b_next!95129) (not b!3621755) (not b!3621859) (not b!3621776) (not d!1065346) (not d!1065308) (not d!1065352) b_and!264799 (not b!3621789) (not d!1065314) (not b!3621813) (not b!3621800) (not b!3621829) (not d!1065330) (not b!3621749) (not d!1065344) (not b_next!95149) (not b!3621739) (not b!3621866) (not b!3621802) (not b!3621714) (not b!3621871) (not b!3621843) b_and!264803 (not bm!262032) (not b!3621483) (not b!3621715) b_and!264795 (not b!3621785) (not b!3621794) (not d!1065320) (not b!3621377) (not bm!262030) (not tb!207717))
(check-sat b_and!264859 b_and!264855 b_and!264865 (not b_next!95135) (not b_next!95131) b_and!264857 (not b_next!95137) (not b_next!95129) b_and!264799 (not b_next!95149) b_and!264803 b_and!264795 (not b_next!95143) (not b_next!95133) b_and!264807 (not b_next!95141) (not b_next!95151) b_and!264863 b_and!264861 (not b_next!95139))
