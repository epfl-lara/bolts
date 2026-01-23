; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!387956 () Bool)

(assert start!387956)

(declare-fun b!4096407 () Bool)

(declare-fun b_free!114577 () Bool)

(declare-fun b_next!115281 () Bool)

(assert (=> b!4096407 (= b_free!114577 (not b_next!115281))))

(declare-fun tp!1239920 () Bool)

(declare-fun b_and!315987 () Bool)

(assert (=> b!4096407 (= tp!1239920 b_and!315987)))

(declare-fun b_free!114579 () Bool)

(declare-fun b_next!115283 () Bool)

(assert (=> b!4096407 (= b_free!114579 (not b_next!115283))))

(declare-fun tp!1239924 () Bool)

(declare-fun b_and!315989 () Bool)

(assert (=> b!4096407 (= tp!1239924 b_and!315989)))

(declare-fun b!4096415 () Bool)

(declare-fun b_free!114581 () Bool)

(declare-fun b_next!115285 () Bool)

(assert (=> b!4096415 (= b_free!114581 (not b_next!115285))))

(declare-fun tp!1239915 () Bool)

(declare-fun b_and!315991 () Bool)

(assert (=> b!4096415 (= tp!1239915 b_and!315991)))

(declare-fun b_free!114583 () Bool)

(declare-fun b_next!115287 () Bool)

(assert (=> b!4096415 (= b_free!114583 (not b_next!115287))))

(declare-fun tp!1239916 () Bool)

(declare-fun b_and!315993 () Bool)

(assert (=> b!4096415 (= tp!1239916 b_and!315993)))

(declare-fun b!4096395 () Bool)

(declare-fun res!1674593 () Bool)

(declare-fun e!2542055 () Bool)

(assert (=> b!4096395 (=> (not res!1674593) (not e!2542055))))

(declare-datatypes ((LexerInterface!6701 0))(
  ( (LexerInterfaceExt!6698 (__x!26901 Int)) (Lexer!6699) )
))
(declare-fun thiss!26199 () LexerInterface!6701)

(declare-datatypes ((List!44055 0))(
  ( (Nil!43931) (Cons!43931 (h!49351 (_ BitVec 16)) (t!339270 List!44055)) )
))
(declare-datatypes ((TokenValue!7342 0))(
  ( (FloatLiteralValue!14684 (text!51839 List!44055)) (TokenValueExt!7341 (__x!26902 Int)) (Broken!36710 (value!223318 List!44055)) (Object!7465) (End!7342) (Def!7342) (Underscore!7342) (Match!7342) (Else!7342) (Error!7342) (Case!7342) (If!7342) (Extends!7342) (Abstract!7342) (Class!7342) (Val!7342) (DelimiterValue!14684 (del!7402 List!44055)) (KeywordValue!7348 (value!223319 List!44055)) (CommentValue!14684 (value!223320 List!44055)) (WhitespaceValue!14684 (value!223321 List!44055)) (IndentationValue!7342 (value!223322 List!44055)) (String!50459) (Int32!7342) (Broken!36711 (value!223323 List!44055)) (Boolean!7343) (Unit!63462) (OperatorValue!7345 (op!7402 List!44055)) (IdentifierValue!14684 (value!223324 List!44055)) (IdentifierValue!14685 (value!223325 List!44055)) (WhitespaceValue!14685 (value!223326 List!44055)) (True!14684) (False!14684) (Broken!36712 (value!223327 List!44055)) (Broken!36713 (value!223328 List!44055)) (True!14685) (RightBrace!7342) (RightBracket!7342) (Colon!7342) (Null!7342) (Comma!7342) (LeftBracket!7342) (False!14685) (LeftBrace!7342) (ImaginaryLiteralValue!7342 (text!51840 List!44055)) (StringLiteralValue!22026 (value!223329 List!44055)) (EOFValue!7342 (value!223330 List!44055)) (IdentValue!7342 (value!223331 List!44055)) (DelimiterValue!14685 (value!223332 List!44055)) (DedentValue!7342 (value!223333 List!44055)) (NewLineValue!7342 (value!223334 List!44055)) (IntegerValue!22026 (value!223335 (_ BitVec 32)) (text!51841 List!44055)) (IntegerValue!22027 (value!223336 Int) (text!51842 List!44055)) (Times!7342) (Or!7342) (Equal!7342) (Minus!7342) (Broken!36714 (value!223337 List!44055)) (And!7342) (Div!7342) (LessEqual!7342) (Mod!7342) (Concat!19359) (Not!7342) (Plus!7342) (SpaceValue!7342 (value!223338 List!44055)) (IntegerValue!22028 (value!223339 Int) (text!51843 List!44055)) (StringLiteralValue!22027 (text!51844 List!44055)) (FloatLiteralValue!14685 (text!51845 List!44055)) (BytesLiteralValue!7342 (value!223340 List!44055)) (CommentValue!14685 (value!223341 List!44055)) (StringLiteralValue!22028 (value!223342 List!44055)) (ErrorTokenValue!7342 (msg!7403 List!44055)) )
))
(declare-datatypes ((String!50460 0))(
  ( (String!50461 (value!223343 String)) )
))
(declare-datatypes ((C!24220 0))(
  ( (C!24221 (val!14220 Int)) )
))
(declare-datatypes ((Regex!12017 0))(
  ( (ElementMatch!12017 (c!705882 C!24220)) (Concat!19360 (regOne!24546 Regex!12017) (regTwo!24546 Regex!12017)) (EmptyExpr!12017) (Star!12017 (reg!12346 Regex!12017)) (EmptyLang!12017) (Union!12017 (regOne!24547 Regex!12017) (regTwo!24547 Regex!12017)) )
))
(declare-datatypes ((List!44056 0))(
  ( (Nil!43932) (Cons!43932 (h!49352 C!24220) (t!339271 List!44056)) )
))
(declare-datatypes ((IArray!26651 0))(
  ( (IArray!26652 (innerList!13383 List!44056)) )
))
(declare-datatypes ((Conc!13323 0))(
  ( (Node!13323 (left!33025 Conc!13323) (right!33355 Conc!13323) (csize!26876 Int) (cheight!13534 Int)) (Leaf!20594 (xs!16629 IArray!26651) (csize!26877 Int)) (Empty!13323) )
))
(declare-datatypes ((BalanceConc!26240 0))(
  ( (BalanceConc!26241 (c!705883 Conc!13323)) )
))
(declare-datatypes ((TokenValueInjection!14112 0))(
  ( (TokenValueInjection!14113 (toValue!9712 Int) (toChars!9571 Int)) )
))
(declare-datatypes ((Rule!14024 0))(
  ( (Rule!14025 (regex!7112 Regex!12017) (tag!7972 String!50460) (isSeparator!7112 Bool) (transformation!7112 TokenValueInjection!14112)) )
))
(declare-datatypes ((List!44057 0))(
  ( (Nil!43933) (Cons!43933 (h!49353 Rule!14024) (t!339272 List!44057)) )
))
(declare-fun rules!3870 () List!44057)

(declare-fun rulesInvariant!6044 (LexerInterface!6701 List!44057) Bool)

(assert (=> b!4096395 (= res!1674593 (rulesInvariant!6044 thiss!26199 rules!3870))))

(declare-fun b!4096396 () Bool)

(declare-fun res!1674602 () Bool)

(assert (=> b!4096396 (=> (not res!1674602) (not e!2542055))))

(declare-fun p!2988 () List!44056)

(declare-fun isEmpty!26289 (List!44056) Bool)

(assert (=> b!4096396 (= res!1674602 (not (isEmpty!26289 p!2988)))))

(declare-fun b!4096397 () Bool)

(declare-fun res!1674599 () Bool)

(declare-fun e!2542057 () Bool)

(assert (=> b!4096397 (=> res!1674599 e!2542057)))

(declare-fun isEmpty!26290 (List!44057) Bool)

(assert (=> b!4096397 (= res!1674599 (isEmpty!26290 (t!339272 rules!3870)))))

(declare-fun b!4096398 () Bool)

(declare-fun e!2542058 () Bool)

(assert (=> b!4096398 (= e!2542055 e!2542058)))

(declare-fun res!1674600 () Bool)

(assert (=> b!4096398 (=> (not res!1674600) (not e!2542058))))

(declare-datatypes ((Token!13350 0))(
  ( (Token!13351 (value!223344 TokenValue!7342) (rule!10266 Rule!14024) (size!32822 Int) (originalCharacters!7706 List!44056)) )
))
(declare-datatypes ((tuple2!42860 0))(
  ( (tuple2!42861 (_1!24564 Token!13350) (_2!24564 List!44056)) )
))
(declare-datatypes ((Option!9518 0))(
  ( (None!9517) (Some!9517 (v!40017 tuple2!42860)) )
))
(declare-fun lt!1465204 () Option!9518)

(declare-fun input!3411 () List!44056)

(declare-fun maxPrefix!3991 (LexerInterface!6701 List!44057 List!44056) Option!9518)

(assert (=> b!4096398 (= res!1674600 (= (maxPrefix!3991 thiss!26199 rules!3870 input!3411) lt!1465204))))

(declare-fun lt!1465201 () Token!13350)

(declare-fun suffix!1518 () List!44056)

(assert (=> b!4096398 (= lt!1465204 (Some!9517 (tuple2!42861 lt!1465201 suffix!1518)))))

(declare-fun lt!1465199 () BalanceConc!26240)

(declare-fun r!4213 () Rule!14024)

(declare-fun apply!10295 (TokenValueInjection!14112 BalanceConc!26240) TokenValue!7342)

(declare-fun size!32823 (List!44056) Int)

(assert (=> b!4096398 (= lt!1465201 (Token!13351 (apply!10295 (transformation!7112 r!4213) lt!1465199) r!4213 (size!32823 p!2988) p!2988))))

(declare-datatypes ((Unit!63463 0))(
  ( (Unit!63464) )
))
(declare-fun lt!1465196 () Unit!63463)

(declare-fun lemmaSemiInverse!2079 (TokenValueInjection!14112 BalanceConc!26240) Unit!63463)

(assert (=> b!4096398 (= lt!1465196 (lemmaSemiInverse!2079 (transformation!7112 r!4213) lt!1465199))))

(declare-fun seqFromList!5329 (List!44056) BalanceConc!26240)

(assert (=> b!4096398 (= lt!1465199 (seqFromList!5329 p!2988))))

(declare-fun b!4096399 () Bool)

(declare-fun res!1674592 () Bool)

(assert (=> b!4096399 (=> (not res!1674592) (not e!2542055))))

(assert (=> b!4096399 (= res!1674592 (not (isEmpty!26290 rules!3870)))))

(declare-fun b!4096400 () Bool)

(declare-fun e!2542068 () Bool)

(declare-fun e!2542067 () Bool)

(declare-fun tp!1239922 () Bool)

(assert (=> b!4096400 (= e!2542068 (and e!2542067 tp!1239922))))

(declare-fun e!2542059 () Bool)

(declare-fun b!4096401 () Bool)

(declare-fun e!2542060 () Bool)

(declare-fun tp!1239923 () Bool)

(declare-fun inv!58655 (String!50460) Bool)

(declare-fun inv!58658 (TokenValueInjection!14112) Bool)

(assert (=> b!4096401 (= e!2542060 (and tp!1239923 (inv!58655 (tag!7972 r!4213)) (inv!58658 (transformation!7112 r!4213)) e!2542059))))

(declare-fun e!2542066 () Bool)

(declare-fun tp!1239919 () Bool)

(declare-fun b!4096402 () Bool)

(assert (=> b!4096402 (= e!2542067 (and tp!1239919 (inv!58655 (tag!7972 (h!49353 rules!3870))) (inv!58658 (transformation!7112 (h!49353 rules!3870))) e!2542066))))

(declare-fun b!4096403 () Bool)

(declare-fun e!2542064 () Bool)

(declare-fun tp_is_empty!21037 () Bool)

(declare-fun tp!1239917 () Bool)

(assert (=> b!4096403 (= e!2542064 (and tp_is_empty!21037 tp!1239917))))

(declare-fun res!1674591 () Bool)

(assert (=> start!387956 (=> (not res!1674591) (not e!2542055))))

(get-info :version)

(assert (=> start!387956 (= res!1674591 ((_ is Lexer!6699) thiss!26199))))

(assert (=> start!387956 e!2542055))

(assert (=> start!387956 true))

(declare-fun e!2542065 () Bool)

(assert (=> start!387956 e!2542065))

(assert (=> start!387956 e!2542068))

(declare-fun e!2542063 () Bool)

(assert (=> start!387956 e!2542063))

(assert (=> start!387956 e!2542064))

(assert (=> start!387956 e!2542060))

(declare-fun b!4096404 () Bool)

(declare-fun e!2542054 () Bool)

(assert (=> b!4096404 (= e!2542058 (not e!2542054))))

(declare-fun res!1674589 () Bool)

(assert (=> b!4096404 (=> res!1674589 e!2542054)))

(declare-fun matchR!5958 (Regex!12017 List!44056) Bool)

(assert (=> b!4096404 (= res!1674589 (not (matchR!5958 (regex!7112 r!4213) p!2988)))))

(declare-fun ruleValid!3032 (LexerInterface!6701 Rule!14024) Bool)

(assert (=> b!4096404 (ruleValid!3032 thiss!26199 r!4213)))

(declare-fun lt!1465198 () Unit!63463)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2098 (LexerInterface!6701 Rule!14024 List!44057) Unit!63463)

(assert (=> b!4096404 (= lt!1465198 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2098 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4096405 () Bool)

(declare-fun res!1674597 () Bool)

(assert (=> b!4096405 (=> res!1674597 e!2542057)))

(assert (=> b!4096405 (= res!1674597 (not (= (maxPrefix!3991 thiss!26199 (t!339272 rules!3870) input!3411) lt!1465204)))))

(declare-fun b!4096406 () Bool)

(declare-fun e!2542061 () Bool)

(assert (=> b!4096406 (= e!2542054 e!2542061)))

(declare-fun res!1674601 () Bool)

(assert (=> b!4096406 (=> res!1674601 e!2542061)))

(declare-fun lt!1465203 () Option!9518)

(declare-fun isEmpty!26291 (Option!9518) Bool)

(assert (=> b!4096406 (= res!1674601 (isEmpty!26291 lt!1465203))))

(declare-fun maxPrefixOneRule!2973 (LexerInterface!6701 Rule!14024 List!44056) Option!9518)

(assert (=> b!4096406 (= lt!1465203 (maxPrefixOneRule!2973 thiss!26199 (h!49353 rules!3870) input!3411))))

(assert (=> b!4096406 (rulesInvariant!6044 thiss!26199 (t!339272 rules!3870))))

(declare-fun lt!1465205 () Unit!63463)

(declare-fun lemmaInvariantOnRulesThenOnTail!814 (LexerInterface!6701 Rule!14024 List!44057) Unit!63463)

(assert (=> b!4096406 (= lt!1465205 (lemmaInvariantOnRulesThenOnTail!814 thiss!26199 (h!49353 rules!3870) (t!339272 rules!3870)))))

(assert (=> b!4096407 (= e!2542059 (and tp!1239920 tp!1239924))))

(declare-fun b!4096408 () Bool)

(declare-fun res!1674594 () Bool)

(assert (=> b!4096408 (=> (not res!1674594) (not e!2542055))))

(declare-fun contains!8797 (List!44057 Rule!14024) Bool)

(assert (=> b!4096408 (= res!1674594 (contains!8797 rules!3870 r!4213))))

(declare-fun b!4096409 () Bool)

(declare-fun res!1674596 () Bool)

(assert (=> b!4096409 (=> res!1674596 e!2542054)))

(assert (=> b!4096409 (= res!1674596 (or (and ((_ is Cons!43933) rules!3870) (= (h!49353 rules!3870) r!4213)) (not ((_ is Cons!43933) rules!3870)) (= (h!49353 rules!3870) r!4213)))))

(declare-fun b!4096410 () Bool)

(declare-fun inv!58659 (Token!13350) Bool)

(assert (=> b!4096410 (= e!2542057 (inv!58659 lt!1465201))))

(assert (=> b!4096410 (= (maxPrefixOneRule!2973 thiss!26199 r!4213 input!3411) lt!1465204)))

(declare-fun lt!1465200 () Unit!63463)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1701 (LexerInterface!6701 List!44057 List!44056 List!44056 List!44056 Rule!14024) Unit!63463)

(assert (=> b!4096410 (= lt!1465200 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1701 thiss!26199 (t!339272 rules!3870) p!2988 input!3411 suffix!1518 r!4213))))

(declare-fun lt!1465202 () Unit!63463)

(assert (=> b!4096410 (= lt!1465202 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2098 thiss!26199 r!4213 (t!339272 rules!3870)))))

(declare-fun b!4096411 () Bool)

(declare-fun tp!1239921 () Bool)

(assert (=> b!4096411 (= e!2542063 (and tp_is_empty!21037 tp!1239921))))

(declare-fun b!4096412 () Bool)

(assert (=> b!4096412 (= e!2542061 e!2542057)))

(declare-fun res!1674595 () Bool)

(assert (=> b!4096412 (=> res!1674595 e!2542057)))

(declare-fun lt!1465197 () tuple2!42860)

(assert (=> b!4096412 (= res!1674595 (or (not (= (rule!10266 (_1!24564 lt!1465197)) (h!49353 rules!3870))) (= (rule!10266 (_1!24564 lt!1465197)) r!4213) (= lt!1465203 lt!1465204)))))

(declare-fun get!14412 (Option!9518) tuple2!42860)

(assert (=> b!4096412 (= lt!1465197 (get!14412 lt!1465203))))

(declare-fun b!4096413 () Bool)

(declare-fun res!1674598 () Bool)

(assert (=> b!4096413 (=> res!1674598 e!2542057)))

(assert (=> b!4096413 (= res!1674598 (not (contains!8797 (t!339272 rules!3870) r!4213)))))

(declare-fun b!4096414 () Bool)

(declare-fun tp!1239918 () Bool)

(assert (=> b!4096414 (= e!2542065 (and tp_is_empty!21037 tp!1239918))))

(assert (=> b!4096415 (= e!2542066 (and tp!1239915 tp!1239916))))

(declare-fun b!4096416 () Bool)

(declare-fun res!1674590 () Bool)

(assert (=> b!4096416 (=> (not res!1674590) (not e!2542055))))

(declare-fun ++!11518 (List!44056 List!44056) List!44056)

(assert (=> b!4096416 (= res!1674590 (= input!3411 (++!11518 p!2988 suffix!1518)))))

(assert (= (and start!387956 res!1674591) b!4096399))

(assert (= (and b!4096399 res!1674592) b!4096395))

(assert (= (and b!4096395 res!1674593) b!4096408))

(assert (= (and b!4096408 res!1674594) b!4096416))

(assert (= (and b!4096416 res!1674590) b!4096396))

(assert (= (and b!4096396 res!1674602) b!4096398))

(assert (= (and b!4096398 res!1674600) b!4096404))

(assert (= (and b!4096404 (not res!1674589)) b!4096409))

(assert (= (and b!4096409 (not res!1674596)) b!4096406))

(assert (= (and b!4096406 (not res!1674601)) b!4096412))

(assert (= (and b!4096412 (not res!1674595)) b!4096405))

(assert (= (and b!4096405 (not res!1674597)) b!4096397))

(assert (= (and b!4096397 (not res!1674599)) b!4096413))

(assert (= (and b!4096413 (not res!1674598)) b!4096410))

(assert (= (and start!387956 ((_ is Cons!43932) suffix!1518)) b!4096414))

(assert (= b!4096402 b!4096415))

(assert (= b!4096400 b!4096402))

(assert (= (and start!387956 ((_ is Cons!43933) rules!3870)) b!4096400))

(assert (= (and start!387956 ((_ is Cons!43932) p!2988)) b!4096411))

(assert (= (and start!387956 ((_ is Cons!43932) input!3411)) b!4096403))

(assert (= b!4096401 b!4096407))

(assert (= start!387956 b!4096401))

(declare-fun m!4703211 () Bool)

(assert (=> b!4096410 m!4703211))

(declare-fun m!4703213 () Bool)

(assert (=> b!4096410 m!4703213))

(declare-fun m!4703215 () Bool)

(assert (=> b!4096410 m!4703215))

(declare-fun m!4703217 () Bool)

(assert (=> b!4096410 m!4703217))

(declare-fun m!4703219 () Bool)

(assert (=> b!4096402 m!4703219))

(declare-fun m!4703221 () Bool)

(assert (=> b!4096402 m!4703221))

(declare-fun m!4703223 () Bool)

(assert (=> b!4096397 m!4703223))

(declare-fun m!4703225 () Bool)

(assert (=> b!4096416 m!4703225))

(declare-fun m!4703227 () Bool)

(assert (=> b!4096405 m!4703227))

(declare-fun m!4703229 () Bool)

(assert (=> b!4096404 m!4703229))

(declare-fun m!4703231 () Bool)

(assert (=> b!4096404 m!4703231))

(declare-fun m!4703233 () Bool)

(assert (=> b!4096404 m!4703233))

(declare-fun m!4703235 () Bool)

(assert (=> b!4096399 m!4703235))

(declare-fun m!4703237 () Bool)

(assert (=> b!4096408 m!4703237))

(declare-fun m!4703239 () Bool)

(assert (=> b!4096396 m!4703239))

(declare-fun m!4703241 () Bool)

(assert (=> b!4096413 m!4703241))

(declare-fun m!4703243 () Bool)

(assert (=> b!4096401 m!4703243))

(declare-fun m!4703245 () Bool)

(assert (=> b!4096401 m!4703245))

(declare-fun m!4703247 () Bool)

(assert (=> b!4096395 m!4703247))

(declare-fun m!4703249 () Bool)

(assert (=> b!4096412 m!4703249))

(declare-fun m!4703251 () Bool)

(assert (=> b!4096406 m!4703251))

(declare-fun m!4703253 () Bool)

(assert (=> b!4096406 m!4703253))

(declare-fun m!4703255 () Bool)

(assert (=> b!4096406 m!4703255))

(declare-fun m!4703257 () Bool)

(assert (=> b!4096406 m!4703257))

(declare-fun m!4703259 () Bool)

(assert (=> b!4096398 m!4703259))

(declare-fun m!4703261 () Bool)

(assert (=> b!4096398 m!4703261))

(declare-fun m!4703263 () Bool)

(assert (=> b!4096398 m!4703263))

(declare-fun m!4703265 () Bool)

(assert (=> b!4096398 m!4703265))

(declare-fun m!4703267 () Bool)

(assert (=> b!4096398 m!4703267))

(check-sat (not b!4096398) (not b!4096402) (not b!4096404) (not b!4096410) (not b_next!115281) (not b_next!115283) (not b!4096413) (not b!4096396) (not b!4096408) b_and!315993 (not b!4096414) (not b!4096395) (not b_next!115285) (not b!4096401) (not b!4096406) (not b!4096403) (not b!4096412) (not b!4096411) b_and!315989 (not b!4096399) (not b!4096405) (not b!4096397) b_and!315987 (not b!4096400) (not b_next!115287) b_and!315991 (not b!4096416) tp_is_empty!21037)
(check-sat (not b_next!115285) (not b_next!115281) (not b_next!115283) b_and!315989 b_and!315987 (not b_next!115287) b_and!315991 b_and!315993)
(get-model)

(declare-fun d!1216181 () Bool)

(assert (=> d!1216181 (= (inv!58655 (tag!7972 (h!49353 rules!3870))) (= (mod (str.len (value!223343 (tag!7972 (h!49353 rules!3870)))) 2) 0))))

(assert (=> b!4096402 d!1216181))

(declare-fun d!1216183 () Bool)

(declare-fun res!1674618 () Bool)

(declare-fun e!2542077 () Bool)

(assert (=> d!1216183 (=> (not res!1674618) (not e!2542077))))

(declare-fun semiInverseModEq!3060 (Int Int) Bool)

(assert (=> d!1216183 (= res!1674618 (semiInverseModEq!3060 (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (h!49353 rules!3870)))))))

(assert (=> d!1216183 (= (inv!58658 (transformation!7112 (h!49353 rules!3870))) e!2542077)))

(declare-fun b!4096430 () Bool)

(declare-fun equivClasses!2959 (Int Int) Bool)

(assert (=> b!4096430 (= e!2542077 (equivClasses!2959 (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (h!49353 rules!3870)))))))

(assert (= (and d!1216183 res!1674618) b!4096430))

(declare-fun m!4703281 () Bool)

(assert (=> d!1216183 m!4703281))

(declare-fun m!4703283 () Bool)

(assert (=> b!4096430 m!4703283))

(assert (=> b!4096402 d!1216183))

(declare-fun d!1216187 () Bool)

(declare-fun lt!1465208 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6781 (List!44057) (InoxSet Rule!14024))

(assert (=> d!1216187 (= lt!1465208 (select (content!6781 (t!339272 rules!3870)) r!4213))))

(declare-fun e!2542082 () Bool)

(assert (=> d!1216187 (= lt!1465208 e!2542082)))

(declare-fun res!1674624 () Bool)

(assert (=> d!1216187 (=> (not res!1674624) (not e!2542082))))

(assert (=> d!1216187 (= res!1674624 ((_ is Cons!43933) (t!339272 rules!3870)))))

(assert (=> d!1216187 (= (contains!8797 (t!339272 rules!3870) r!4213) lt!1465208)))

(declare-fun b!4096435 () Bool)

(declare-fun e!2542083 () Bool)

(assert (=> b!4096435 (= e!2542082 e!2542083)))

(declare-fun res!1674623 () Bool)

(assert (=> b!4096435 (=> res!1674623 e!2542083)))

(assert (=> b!4096435 (= res!1674623 (= (h!49353 (t!339272 rules!3870)) r!4213))))

(declare-fun b!4096436 () Bool)

(assert (=> b!4096436 (= e!2542083 (contains!8797 (t!339272 (t!339272 rules!3870)) r!4213))))

(assert (= (and d!1216187 res!1674624) b!4096435))

(assert (= (and b!4096435 (not res!1674623)) b!4096436))

(declare-fun m!4703285 () Bool)

(assert (=> d!1216187 m!4703285))

(declare-fun m!4703287 () Bool)

(assert (=> d!1216187 m!4703287))

(declare-fun m!4703289 () Bool)

(assert (=> b!4096436 m!4703289))

(assert (=> b!4096413 d!1216187))

(declare-fun d!1216189 () Bool)

(assert (=> d!1216189 (= (inv!58655 (tag!7972 r!4213)) (= (mod (str.len (value!223343 (tag!7972 r!4213))) 2) 0))))

(assert (=> b!4096401 d!1216189))

(declare-fun d!1216191 () Bool)

(declare-fun res!1674625 () Bool)

(declare-fun e!2542084 () Bool)

(assert (=> d!1216191 (=> (not res!1674625) (not e!2542084))))

(assert (=> d!1216191 (= res!1674625 (semiInverseModEq!3060 (toChars!9571 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 r!4213))))))

(assert (=> d!1216191 (= (inv!58658 (transformation!7112 r!4213)) e!2542084)))

(declare-fun b!4096437 () Bool)

(assert (=> b!4096437 (= e!2542084 (equivClasses!2959 (toChars!9571 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 r!4213))))))

(assert (= (and d!1216191 res!1674625) b!4096437))

(declare-fun m!4703291 () Bool)

(assert (=> d!1216191 m!4703291))

(declare-fun m!4703293 () Bool)

(assert (=> b!4096437 m!4703293))

(assert (=> b!4096401 d!1216191))

(declare-fun d!1216193 () Bool)

(assert (=> d!1216193 (= (get!14412 lt!1465203) (v!40017 lt!1465203))))

(assert (=> b!4096412 d!1216193))

(declare-fun d!1216195 () Bool)

(assert (=> d!1216195 (= (isEmpty!26290 rules!3870) ((_ is Nil!43933) rules!3870))))

(assert (=> b!4096399 d!1216195))

(declare-fun d!1216197 () Bool)

(declare-fun res!1674630 () Bool)

(declare-fun e!2542087 () Bool)

(assert (=> d!1216197 (=> (not res!1674630) (not e!2542087))))

(assert (=> d!1216197 (= res!1674630 (not (isEmpty!26289 (originalCharacters!7706 lt!1465201))))))

(assert (=> d!1216197 (= (inv!58659 lt!1465201) e!2542087)))

(declare-fun b!4096442 () Bool)

(declare-fun res!1674631 () Bool)

(assert (=> b!4096442 (=> (not res!1674631) (not e!2542087))))

(declare-fun list!16302 (BalanceConc!26240) List!44056)

(declare-fun dynLambda!18835 (Int TokenValue!7342) BalanceConc!26240)

(assert (=> b!4096442 (= res!1674631 (= (originalCharacters!7706 lt!1465201) (list!16302 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))))))

(declare-fun b!4096443 () Bool)

(assert (=> b!4096443 (= e!2542087 (= (size!32822 lt!1465201) (size!32823 (originalCharacters!7706 lt!1465201))))))

(assert (= (and d!1216197 res!1674630) b!4096442))

(assert (= (and b!4096442 res!1674631) b!4096443))

(declare-fun b_lambda!120265 () Bool)

(assert (=> (not b_lambda!120265) (not b!4096442)))

(declare-fun tb!246445 () Bool)

(declare-fun t!339278 () Bool)

(assert (=> (and b!4096407 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (rule!10266 lt!1465201)))) t!339278) tb!246445))

(declare-fun b!4096448 () Bool)

(declare-fun e!2542090 () Bool)

(declare-fun tp!1239930 () Bool)

(declare-fun inv!58662 (Conc!13323) Bool)

(assert (=> b!4096448 (= e!2542090 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))) tp!1239930))))

(declare-fun result!299068 () Bool)

(declare-fun inv!58663 (BalanceConc!26240) Bool)

(assert (=> tb!246445 (= result!299068 (and (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))) e!2542090))))

(assert (= tb!246445 b!4096448))

(declare-fun m!4703295 () Bool)

(assert (=> b!4096448 m!4703295))

(declare-fun m!4703297 () Bool)

(assert (=> tb!246445 m!4703297))

(assert (=> b!4096442 t!339278))

(declare-fun b_and!315999 () Bool)

(assert (= b_and!315989 (and (=> t!339278 result!299068) b_and!315999)))

(declare-fun t!339280 () Bool)

(declare-fun tb!246447 () Bool)

(assert (=> (and b!4096415 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 (rule!10266 lt!1465201)))) t!339280) tb!246447))

(declare-fun result!299072 () Bool)

(assert (= result!299072 result!299068))

(assert (=> b!4096442 t!339280))

(declare-fun b_and!316001 () Bool)

(assert (= b_and!315993 (and (=> t!339280 result!299072) b_and!316001)))

(declare-fun m!4703299 () Bool)

(assert (=> d!1216197 m!4703299))

(declare-fun m!4703301 () Bool)

(assert (=> b!4096442 m!4703301))

(assert (=> b!4096442 m!4703301))

(declare-fun m!4703303 () Bool)

(assert (=> b!4096442 m!4703303))

(declare-fun m!4703305 () Bool)

(assert (=> b!4096443 m!4703305))

(assert (=> b!4096410 d!1216197))

(declare-fun b!4096551 () Bool)

(declare-fun e!2542142 () Bool)

(declare-fun e!2542140 () Bool)

(assert (=> b!4096551 (= e!2542142 e!2542140)))

(declare-fun res!1674712 () Bool)

(assert (=> b!4096551 (=> (not res!1674712) (not e!2542140))))

(declare-fun lt!1465270 () Option!9518)

(declare-fun charsOf!4868 (Token!13350) BalanceConc!26240)

(assert (=> b!4096551 (= res!1674712 (matchR!5958 (regex!7112 r!4213) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))))))

(declare-fun b!4096552 () Bool)

(declare-fun res!1674711 () Bool)

(assert (=> b!4096552 (=> (not res!1674711) (not e!2542140))))

(assert (=> b!4096552 (= res!1674711 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270)))) (_2!24564 (get!14412 lt!1465270))) input!3411))))

(declare-fun b!4096553 () Bool)

(declare-fun res!1674715 () Bool)

(assert (=> b!4096553 (=> (not res!1674715) (not e!2542140))))

(assert (=> b!4096553 (= res!1674715 (< (size!32823 (_2!24564 (get!14412 lt!1465270))) (size!32823 input!3411)))))

(declare-fun b!4096554 () Bool)

(declare-fun res!1674716 () Bool)

(assert (=> b!4096554 (=> (not res!1674716) (not e!2542140))))

(assert (=> b!4096554 (= res!1674716 (= (value!223344 (_1!24564 (get!14412 lt!1465270))) (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270)))))))))

(declare-fun d!1216199 () Bool)

(assert (=> d!1216199 e!2542142))

(declare-fun res!1674710 () Bool)

(assert (=> d!1216199 (=> res!1674710 e!2542142)))

(assert (=> d!1216199 (= res!1674710 (isEmpty!26291 lt!1465270))))

(declare-fun e!2542141 () Option!9518)

(assert (=> d!1216199 (= lt!1465270 e!2542141)))

(declare-fun c!705896 () Bool)

(declare-datatypes ((tuple2!42864 0))(
  ( (tuple2!42865 (_1!24566 List!44056) (_2!24566 List!44056)) )
))
(declare-fun lt!1465271 () tuple2!42864)

(assert (=> d!1216199 (= c!705896 (isEmpty!26289 (_1!24566 lt!1465271)))))

(declare-fun findLongestMatch!1387 (Regex!12017 List!44056) tuple2!42864)

(assert (=> d!1216199 (= lt!1465271 (findLongestMatch!1387 (regex!7112 r!4213) input!3411))))

(assert (=> d!1216199 (ruleValid!3032 thiss!26199 r!4213)))

(assert (=> d!1216199 (= (maxPrefixOneRule!2973 thiss!26199 r!4213 input!3411) lt!1465270)))

(declare-fun b!4096555 () Bool)

(declare-fun size!32825 (BalanceConc!26240) Int)

(assert (=> b!4096555 (= e!2542141 (Some!9517 (tuple2!42861 (Token!13351 (apply!10295 (transformation!7112 r!4213) (seqFromList!5329 (_1!24566 lt!1465271))) r!4213 (size!32825 (seqFromList!5329 (_1!24566 lt!1465271))) (_1!24566 lt!1465271)) (_2!24566 lt!1465271))))))

(declare-fun lt!1465273 () Unit!63463)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1447 (Regex!12017 List!44056) Unit!63463)

(assert (=> b!4096555 (= lt!1465273 (longestMatchIsAcceptedByMatchOrIsEmpty!1447 (regex!7112 r!4213) input!3411))))

(declare-fun res!1674713 () Bool)

(declare-fun findLongestMatchInner!1474 (Regex!12017 List!44056 Int List!44056 List!44056 Int) tuple2!42864)

(assert (=> b!4096555 (= res!1674713 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(declare-fun e!2542139 () Bool)

(assert (=> b!4096555 (=> res!1674713 e!2542139)))

(assert (=> b!4096555 e!2542139))

(declare-fun lt!1465269 () Unit!63463)

(assert (=> b!4096555 (= lt!1465269 lt!1465273)))

(declare-fun lt!1465272 () Unit!63463)

(assert (=> b!4096555 (= lt!1465272 (lemmaSemiInverse!2079 (transformation!7112 r!4213) (seqFromList!5329 (_1!24566 lt!1465271))))))

(declare-fun b!4096556 () Bool)

(assert (=> b!4096556 (= e!2542140 (= (size!32822 (_1!24564 (get!14412 lt!1465270))) (size!32823 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270))))))))

(declare-fun b!4096557 () Bool)

(declare-fun res!1674714 () Bool)

(assert (=> b!4096557 (=> (not res!1674714) (not e!2542140))))

(assert (=> b!4096557 (= res!1674714 (= (rule!10266 (_1!24564 (get!14412 lt!1465270))) r!4213))))

(declare-fun b!4096558 () Bool)

(assert (=> b!4096558 (= e!2542141 None!9517)))

(declare-fun b!4096559 () Bool)

(assert (=> b!4096559 (= e!2542139 (matchR!5958 (regex!7112 r!4213) (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (= (and d!1216199 c!705896) b!4096558))

(assert (= (and d!1216199 (not c!705896)) b!4096555))

(assert (= (and b!4096555 (not res!1674713)) b!4096559))

(assert (= (and d!1216199 (not res!1674710)) b!4096551))

(assert (= (and b!4096551 res!1674712) b!4096552))

(assert (= (and b!4096552 res!1674711) b!4096553))

(assert (= (and b!4096553 res!1674715) b!4096557))

(assert (= (and b!4096557 res!1674714) b!4096554))

(assert (= (and b!4096554 res!1674716) b!4096556))

(declare-fun m!4703461 () Bool)

(assert (=> b!4096551 m!4703461))

(declare-fun m!4703463 () Bool)

(assert (=> b!4096551 m!4703463))

(assert (=> b!4096551 m!4703463))

(declare-fun m!4703465 () Bool)

(assert (=> b!4096551 m!4703465))

(assert (=> b!4096551 m!4703465))

(declare-fun m!4703467 () Bool)

(assert (=> b!4096551 m!4703467))

(assert (=> b!4096553 m!4703461))

(declare-fun m!4703469 () Bool)

(assert (=> b!4096553 m!4703469))

(declare-fun m!4703471 () Bool)

(assert (=> b!4096553 m!4703471))

(assert (=> b!4096556 m!4703461))

(declare-fun m!4703473 () Bool)

(assert (=> b!4096556 m!4703473))

(assert (=> b!4096557 m!4703461))

(declare-fun m!4703475 () Bool)

(assert (=> d!1216199 m!4703475))

(declare-fun m!4703477 () Bool)

(assert (=> d!1216199 m!4703477))

(declare-fun m!4703479 () Bool)

(assert (=> d!1216199 m!4703479))

(assert (=> d!1216199 m!4703231))

(assert (=> b!4096552 m!4703461))

(assert (=> b!4096552 m!4703463))

(assert (=> b!4096552 m!4703463))

(assert (=> b!4096552 m!4703465))

(assert (=> b!4096552 m!4703465))

(declare-fun m!4703485 () Bool)

(assert (=> b!4096552 m!4703485))

(assert (=> b!4096554 m!4703461))

(declare-fun m!4703487 () Bool)

(assert (=> b!4096554 m!4703487))

(assert (=> b!4096554 m!4703487))

(declare-fun m!4703489 () Bool)

(assert (=> b!4096554 m!4703489))

(declare-fun m!4703491 () Bool)

(assert (=> b!4096555 m!4703491))

(declare-fun m!4703493 () Bool)

(assert (=> b!4096555 m!4703493))

(assert (=> b!4096555 m!4703491))

(declare-fun m!4703495 () Bool)

(assert (=> b!4096555 m!4703495))

(declare-fun m!4703497 () Bool)

(assert (=> b!4096555 m!4703497))

(assert (=> b!4096555 m!4703471))

(assert (=> b!4096555 m!4703491))

(assert (=> b!4096555 m!4703497))

(assert (=> b!4096555 m!4703471))

(declare-fun m!4703499 () Bool)

(assert (=> b!4096555 m!4703499))

(declare-fun m!4703501 () Bool)

(assert (=> b!4096555 m!4703501))

(declare-fun m!4703503 () Bool)

(assert (=> b!4096555 m!4703503))

(assert (=> b!4096555 m!4703491))

(declare-fun m!4703505 () Bool)

(assert (=> b!4096555 m!4703505))

(assert (=> b!4096559 m!4703497))

(assert (=> b!4096559 m!4703471))

(assert (=> b!4096559 m!4703497))

(assert (=> b!4096559 m!4703471))

(assert (=> b!4096559 m!4703499))

(declare-fun m!4703507 () Bool)

(assert (=> b!4096559 m!4703507))

(assert (=> b!4096410 d!1216199))

(declare-fun d!1216233 () Bool)

(assert (=> d!1216233 (= (maxPrefixOneRule!2973 thiss!26199 r!4213 input!3411) (Some!9517 (tuple2!42861 (Token!13351 (apply!10295 (transformation!7112 r!4213) (seqFromList!5329 p!2988)) r!4213 (size!32823 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1465289 () Unit!63463)

(declare-fun choose!25030 (LexerInterface!6701 List!44057 List!44056 List!44056 List!44056 Rule!14024) Unit!63463)

(assert (=> d!1216233 (= lt!1465289 (choose!25030 thiss!26199 (t!339272 rules!3870) p!2988 input!3411 suffix!1518 r!4213))))

(assert (=> d!1216233 (not (isEmpty!26290 (t!339272 rules!3870)))))

(assert (=> d!1216233 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1701 thiss!26199 (t!339272 rules!3870) p!2988 input!3411 suffix!1518 r!4213) lt!1465289)))

(declare-fun bs!593570 () Bool)

(assert (= bs!593570 d!1216233))

(assert (=> bs!593570 m!4703213))

(declare-fun m!4703561 () Bool)

(assert (=> bs!593570 m!4703561))

(assert (=> bs!593570 m!4703223))

(assert (=> bs!593570 m!4703261))

(declare-fun m!4703563 () Bool)

(assert (=> bs!593570 m!4703563))

(assert (=> bs!593570 m!4703261))

(assert (=> bs!593570 m!4703267))

(assert (=> b!4096410 d!1216233))

(declare-fun d!1216255 () Bool)

(assert (=> d!1216255 (ruleValid!3032 thiss!26199 r!4213)))

(declare-fun lt!1465294 () Unit!63463)

(declare-fun choose!25031 (LexerInterface!6701 Rule!14024 List!44057) Unit!63463)

(assert (=> d!1216255 (= lt!1465294 (choose!25031 thiss!26199 r!4213 (t!339272 rules!3870)))))

(assert (=> d!1216255 (contains!8797 (t!339272 rules!3870) r!4213)))

(assert (=> d!1216255 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2098 thiss!26199 r!4213 (t!339272 rules!3870)) lt!1465294)))

(declare-fun bs!593571 () Bool)

(assert (= bs!593571 d!1216255))

(assert (=> bs!593571 m!4703231))

(declare-fun m!4703565 () Bool)

(assert (=> bs!593571 m!4703565))

(assert (=> bs!593571 m!4703241))

(assert (=> b!4096410 d!1216255))

(declare-fun b!4096655 () Bool)

(declare-fun e!2542194 () Bool)

(assert (=> b!4096655 (= e!2542194 true)))

(declare-fun d!1216257 () Bool)

(assert (=> d!1216257 e!2542194))

(assert (= d!1216257 b!4096655))

(declare-fun order!23163 () Int)

(declare-fun order!23161 () Int)

(declare-fun lambda!128137 () Int)

(declare-fun dynLambda!18836 (Int Int) Int)

(declare-fun dynLambda!18837 (Int Int) Int)

(assert (=> b!4096655 (< (dynLambda!18836 order!23161 (toValue!9712 (transformation!7112 r!4213))) (dynLambda!18837 order!23163 lambda!128137))))

(declare-fun order!23165 () Int)

(declare-fun dynLambda!18838 (Int Int) Int)

(assert (=> b!4096655 (< (dynLambda!18838 order!23165 (toChars!9571 (transformation!7112 r!4213))) (dynLambda!18837 order!23163 lambda!128137))))

(declare-fun dynLambda!18839 (Int BalanceConc!26240) TokenValue!7342)

(assert (=> d!1216257 (= (list!16302 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))) (list!16302 lt!1465199))))

(declare-fun lt!1465298 () Unit!63463)

(declare-fun ForallOf!898 (Int BalanceConc!26240) Unit!63463)

(assert (=> d!1216257 (= lt!1465298 (ForallOf!898 lambda!128137 lt!1465199))))

(assert (=> d!1216257 (= (lemmaSemiInverse!2079 (transformation!7112 r!4213) lt!1465199) lt!1465298)))

(declare-fun b_lambda!120273 () Bool)

(assert (=> (not b_lambda!120273) (not d!1216257)))

(declare-fun t!339290 () Bool)

(declare-fun tb!246457 () Bool)

(assert (=> (and b!4096407 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 r!4213))) t!339290) tb!246457))

(declare-fun b!4096658 () Bool)

(declare-fun tp!1239945 () Bool)

(declare-fun e!2542195 () Bool)

(assert (=> b!4096658 (= e!2542195 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))) tp!1239945))))

(declare-fun result!299088 () Bool)

(assert (=> tb!246457 (= result!299088 (and (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))) e!2542195))))

(assert (= tb!246457 b!4096658))

(declare-fun m!4703583 () Bool)

(assert (=> b!4096658 m!4703583))

(declare-fun m!4703585 () Bool)

(assert (=> tb!246457 m!4703585))

(assert (=> d!1216257 t!339290))

(declare-fun b_and!316015 () Bool)

(assert (= b_and!315999 (and (=> t!339290 result!299088) b_and!316015)))

(declare-fun tb!246459 () Bool)

(declare-fun t!339292 () Bool)

(assert (=> (and b!4096415 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 r!4213))) t!339292) tb!246459))

(declare-fun result!299090 () Bool)

(assert (= result!299090 result!299088))

(assert (=> d!1216257 t!339292))

(declare-fun b_and!316017 () Bool)

(assert (= b_and!316001 (and (=> t!339292 result!299090) b_and!316017)))

(declare-fun b_lambda!120275 () Bool)

(assert (=> (not b_lambda!120275) (not d!1216257)))

(declare-fun t!339294 () Bool)

(declare-fun tb!246461 () Bool)

(assert (=> (and b!4096407 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 r!4213))) t!339294) tb!246461))

(declare-fun result!299094 () Bool)

(declare-fun inv!21 (TokenValue!7342) Bool)

(assert (=> tb!246461 (= result!299094 (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))

(declare-fun m!4703587 () Bool)

(assert (=> tb!246461 m!4703587))

(assert (=> d!1216257 t!339294))

(declare-fun b_and!316019 () Bool)

(assert (= b_and!315987 (and (=> t!339294 result!299094) b_and!316019)))

(declare-fun tb!246463 () Bool)

(declare-fun t!339296 () Bool)

(assert (=> (and b!4096415 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213))) t!339296) tb!246463))

(declare-fun result!299098 () Bool)

(assert (= result!299098 result!299094))

(assert (=> d!1216257 t!339296))

(declare-fun b_and!316021 () Bool)

(assert (= b_and!315991 (and (=> t!339296 result!299098) b_and!316021)))

(declare-fun m!4703589 () Bool)

(assert (=> d!1216257 m!4703589))

(assert (=> d!1216257 m!4703589))

(declare-fun m!4703591 () Bool)

(assert (=> d!1216257 m!4703591))

(declare-fun m!4703593 () Bool)

(assert (=> d!1216257 m!4703593))

(assert (=> d!1216257 m!4703591))

(declare-fun m!4703595 () Bool)

(assert (=> d!1216257 m!4703595))

(declare-fun m!4703597 () Bool)

(assert (=> d!1216257 m!4703597))

(assert (=> b!4096398 d!1216257))

(declare-fun call!289506 () Option!9518)

(declare-fun bm!289501 () Bool)

(assert (=> bm!289501 (= call!289506 (maxPrefixOneRule!2973 thiss!26199 (h!49353 rules!3870) input!3411))))

(declare-fun d!1216261 () Bool)

(declare-fun e!2542221 () Bool)

(assert (=> d!1216261 e!2542221))

(declare-fun res!1674775 () Bool)

(assert (=> d!1216261 (=> res!1674775 e!2542221)))

(declare-fun lt!1465312 () Option!9518)

(assert (=> d!1216261 (= res!1674775 (isEmpty!26291 lt!1465312))))

(declare-fun e!2542222 () Option!9518)

(assert (=> d!1216261 (= lt!1465312 e!2542222)))

(declare-fun c!705914 () Bool)

(assert (=> d!1216261 (= c!705914 (and ((_ is Cons!43933) rules!3870) ((_ is Nil!43933) (t!339272 rules!3870))))))

(declare-fun lt!1465313 () Unit!63463)

(declare-fun lt!1465310 () Unit!63463)

(assert (=> d!1216261 (= lt!1465313 lt!1465310)))

(declare-fun isPrefix!4153 (List!44056 List!44056) Bool)

(assert (=> d!1216261 (isPrefix!4153 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2704 (List!44056 List!44056) Unit!63463)

(assert (=> d!1216261 (= lt!1465310 (lemmaIsPrefixRefl!2704 input!3411 input!3411))))

(declare-fun rulesValidInductive!2635 (LexerInterface!6701 List!44057) Bool)

(assert (=> d!1216261 (rulesValidInductive!2635 thiss!26199 rules!3870)))

(assert (=> d!1216261 (= (maxPrefix!3991 thiss!26199 rules!3870 input!3411) lt!1465312)))

(declare-fun b!4096700 () Bool)

(declare-fun res!1674779 () Bool)

(declare-fun e!2542223 () Bool)

(assert (=> b!4096700 (=> (not res!1674779) (not e!2542223))))

(assert (=> b!4096700 (= res!1674779 (< (size!32823 (_2!24564 (get!14412 lt!1465312))) (size!32823 input!3411)))))

(declare-fun b!4096701 () Bool)

(declare-fun res!1674781 () Bool)

(assert (=> b!4096701 (=> (not res!1674781) (not e!2542223))))

(assert (=> b!4096701 (= res!1674781 (matchR!5958 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))))))

(declare-fun b!4096702 () Bool)

(declare-fun lt!1465311 () Option!9518)

(declare-fun lt!1465309 () Option!9518)

(assert (=> b!4096702 (= e!2542222 (ite (and ((_ is None!9517) lt!1465311) ((_ is None!9517) lt!1465309)) None!9517 (ite ((_ is None!9517) lt!1465309) lt!1465311 (ite ((_ is None!9517) lt!1465311) lt!1465309 (ite (>= (size!32822 (_1!24564 (v!40017 lt!1465311))) (size!32822 (_1!24564 (v!40017 lt!1465309)))) lt!1465311 lt!1465309)))))))

(assert (=> b!4096702 (= lt!1465311 call!289506)))

(assert (=> b!4096702 (= lt!1465309 (maxPrefix!3991 thiss!26199 (t!339272 rules!3870) input!3411))))

(declare-fun b!4096703 () Bool)

(assert (=> b!4096703 (= e!2542221 e!2542223)))

(declare-fun res!1674780 () Bool)

(assert (=> b!4096703 (=> (not res!1674780) (not e!2542223))))

(declare-fun isDefined!7202 (Option!9518) Bool)

(assert (=> b!4096703 (= res!1674780 (isDefined!7202 lt!1465312))))

(declare-fun b!4096704 () Bool)

(assert (=> b!4096704 (= e!2542223 (contains!8797 rules!3870 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))))

(declare-fun b!4096705 () Bool)

(declare-fun res!1674776 () Bool)

(assert (=> b!4096705 (=> (not res!1674776) (not e!2542223))))

(assert (=> b!4096705 (= res!1674776 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312)))) (_2!24564 (get!14412 lt!1465312))) input!3411))))

(declare-fun b!4096706 () Bool)

(assert (=> b!4096706 (= e!2542222 call!289506)))

(declare-fun b!4096707 () Bool)

(declare-fun res!1674777 () Bool)

(assert (=> b!4096707 (=> (not res!1674777) (not e!2542223))))

(assert (=> b!4096707 (= res!1674777 (= (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312)))) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465312)))))))

(declare-fun b!4096708 () Bool)

(declare-fun res!1674778 () Bool)

(assert (=> b!4096708 (=> (not res!1674778) (not e!2542223))))

(assert (=> b!4096708 (= res!1674778 (= (value!223344 (_1!24564 (get!14412 lt!1465312))) (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465312)))))))))

(assert (= (and d!1216261 c!705914) b!4096706))

(assert (= (and d!1216261 (not c!705914)) b!4096702))

(assert (= (or b!4096706 b!4096702) bm!289501))

(assert (= (and d!1216261 (not res!1674775)) b!4096703))

(assert (= (and b!4096703 res!1674780) b!4096707))

(assert (= (and b!4096707 res!1674777) b!4096700))

(assert (= (and b!4096700 res!1674779) b!4096705))

(assert (= (and b!4096705 res!1674776) b!4096708))

(assert (= (and b!4096708 res!1674778) b!4096701))

(assert (= (and b!4096701 res!1674781) b!4096704))

(declare-fun m!4703603 () Bool)

(assert (=> d!1216261 m!4703603))

(declare-fun m!4703605 () Bool)

(assert (=> d!1216261 m!4703605))

(declare-fun m!4703607 () Bool)

(assert (=> d!1216261 m!4703607))

(declare-fun m!4703609 () Bool)

(assert (=> d!1216261 m!4703609))

(declare-fun m!4703611 () Bool)

(assert (=> b!4096700 m!4703611))

(declare-fun m!4703613 () Bool)

(assert (=> b!4096700 m!4703613))

(assert (=> b!4096700 m!4703471))

(assert (=> b!4096707 m!4703611))

(declare-fun m!4703615 () Bool)

(assert (=> b!4096707 m!4703615))

(assert (=> b!4096707 m!4703615))

(declare-fun m!4703617 () Bool)

(assert (=> b!4096707 m!4703617))

(assert (=> b!4096705 m!4703611))

(assert (=> b!4096705 m!4703615))

(assert (=> b!4096705 m!4703615))

(assert (=> b!4096705 m!4703617))

(assert (=> b!4096705 m!4703617))

(declare-fun m!4703619 () Bool)

(assert (=> b!4096705 m!4703619))

(assert (=> b!4096708 m!4703611))

(declare-fun m!4703621 () Bool)

(assert (=> b!4096708 m!4703621))

(assert (=> b!4096708 m!4703621))

(declare-fun m!4703623 () Bool)

(assert (=> b!4096708 m!4703623))

(assert (=> b!4096701 m!4703611))

(assert (=> b!4096701 m!4703615))

(assert (=> b!4096701 m!4703615))

(assert (=> b!4096701 m!4703617))

(assert (=> b!4096701 m!4703617))

(declare-fun m!4703625 () Bool)

(assert (=> b!4096701 m!4703625))

(declare-fun m!4703627 () Bool)

(assert (=> b!4096703 m!4703627))

(assert (=> b!4096704 m!4703611))

(declare-fun m!4703629 () Bool)

(assert (=> b!4096704 m!4703629))

(assert (=> b!4096702 m!4703227))

(assert (=> bm!289501 m!4703253))

(assert (=> b!4096398 d!1216261))

(declare-fun d!1216263 () Bool)

(declare-fun lt!1465316 () Int)

(assert (=> d!1216263 (>= lt!1465316 0)))

(declare-fun e!2542226 () Int)

(assert (=> d!1216263 (= lt!1465316 e!2542226)))

(declare-fun c!705917 () Bool)

(assert (=> d!1216263 (= c!705917 ((_ is Nil!43932) p!2988))))

(assert (=> d!1216263 (= (size!32823 p!2988) lt!1465316)))

(declare-fun b!4096713 () Bool)

(assert (=> b!4096713 (= e!2542226 0)))

(declare-fun b!4096714 () Bool)

(assert (=> b!4096714 (= e!2542226 (+ 1 (size!32823 (t!339271 p!2988))))))

(assert (= (and d!1216263 c!705917) b!4096713))

(assert (= (and d!1216263 (not c!705917)) b!4096714))

(declare-fun m!4703631 () Bool)

(assert (=> b!4096714 m!4703631))

(assert (=> b!4096398 d!1216263))

(declare-fun d!1216265 () Bool)

(declare-fun fromListB!2445 (List!44056) BalanceConc!26240)

(assert (=> d!1216265 (= (seqFromList!5329 p!2988) (fromListB!2445 p!2988))))

(declare-fun bs!593572 () Bool)

(assert (= bs!593572 d!1216265))

(declare-fun m!4703633 () Bool)

(assert (=> bs!593572 m!4703633))

(assert (=> b!4096398 d!1216265))

(declare-fun d!1216267 () Bool)

(assert (=> d!1216267 (= (apply!10295 (transformation!7112 r!4213) lt!1465199) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))))

(declare-fun b_lambda!120283 () Bool)

(assert (=> (not b_lambda!120283) (not d!1216267)))

(assert (=> d!1216267 t!339294))

(declare-fun b_and!316027 () Bool)

(assert (= b_and!316019 (and (=> t!339294 result!299094) b_and!316027)))

(assert (=> d!1216267 t!339296))

(declare-fun b_and!316029 () Bool)

(assert (= b_and!316021 (and (=> t!339296 result!299098) b_and!316029)))

(assert (=> d!1216267 m!4703589))

(assert (=> b!4096398 d!1216267))

(declare-fun d!1216269 () Bool)

(assert (=> d!1216269 (= (isEmpty!26290 (t!339272 rules!3870)) ((_ is Nil!43933) (t!339272 rules!3870)))))

(assert (=> b!4096397 d!1216269))

(declare-fun d!1216271 () Bool)

(declare-fun lt!1465317 () Bool)

(assert (=> d!1216271 (= lt!1465317 (select (content!6781 rules!3870) r!4213))))

(declare-fun e!2542227 () Bool)

(assert (=> d!1216271 (= lt!1465317 e!2542227)))

(declare-fun res!1674783 () Bool)

(assert (=> d!1216271 (=> (not res!1674783) (not e!2542227))))

(assert (=> d!1216271 (= res!1674783 ((_ is Cons!43933) rules!3870))))

(assert (=> d!1216271 (= (contains!8797 rules!3870 r!4213) lt!1465317)))

(declare-fun b!4096715 () Bool)

(declare-fun e!2542228 () Bool)

(assert (=> b!4096715 (= e!2542227 e!2542228)))

(declare-fun res!1674782 () Bool)

(assert (=> b!4096715 (=> res!1674782 e!2542228)))

(assert (=> b!4096715 (= res!1674782 (= (h!49353 rules!3870) r!4213))))

(declare-fun b!4096716 () Bool)

(assert (=> b!4096716 (= e!2542228 (contains!8797 (t!339272 rules!3870) r!4213))))

(assert (= (and d!1216271 res!1674783) b!4096715))

(assert (= (and b!4096715 (not res!1674782)) b!4096716))

(declare-fun m!4703635 () Bool)

(assert (=> d!1216271 m!4703635))

(declare-fun m!4703637 () Bool)

(assert (=> d!1216271 m!4703637))

(assert (=> b!4096716 m!4703241))

(assert (=> b!4096408 d!1216271))

(declare-fun d!1216273 () Bool)

(declare-fun res!1674786 () Bool)

(declare-fun e!2542231 () Bool)

(assert (=> d!1216273 (=> (not res!1674786) (not e!2542231))))

(declare-fun rulesValid!2796 (LexerInterface!6701 List!44057) Bool)

(assert (=> d!1216273 (= res!1674786 (rulesValid!2796 thiss!26199 rules!3870))))

(assert (=> d!1216273 (= (rulesInvariant!6044 thiss!26199 rules!3870) e!2542231)))

(declare-fun b!4096719 () Bool)

(declare-datatypes ((List!44059 0))(
  ( (Nil!43935) (Cons!43935 (h!49355 String!50460) (t!339310 List!44059)) )
))
(declare-fun noDuplicateTag!2797 (LexerInterface!6701 List!44057 List!44059) Bool)

(assert (=> b!4096719 (= e!2542231 (noDuplicateTag!2797 thiss!26199 rules!3870 Nil!43935))))

(assert (= (and d!1216273 res!1674786) b!4096719))

(declare-fun m!4703639 () Bool)

(assert (=> d!1216273 m!4703639))

(declare-fun m!4703641 () Bool)

(assert (=> b!4096719 m!4703641))

(assert (=> b!4096395 d!1216273))

(declare-fun d!1216275 () Bool)

(assert (=> d!1216275 (= (isEmpty!26291 lt!1465203) (not ((_ is Some!9517) lt!1465203)))))

(assert (=> b!4096406 d!1216275))

(declare-fun b!4096720 () Bool)

(declare-fun e!2542235 () Bool)

(declare-fun e!2542233 () Bool)

(assert (=> b!4096720 (= e!2542235 e!2542233)))

(declare-fun res!1674789 () Bool)

(assert (=> b!4096720 (=> (not res!1674789) (not e!2542233))))

(declare-fun lt!1465319 () Option!9518)

(assert (=> b!4096720 (= res!1674789 (matchR!5958 (regex!7112 (h!49353 rules!3870)) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))))))

(declare-fun b!4096721 () Bool)

(declare-fun res!1674788 () Bool)

(assert (=> b!4096721 (=> (not res!1674788) (not e!2542233))))

(assert (=> b!4096721 (= res!1674788 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319)))) (_2!24564 (get!14412 lt!1465319))) input!3411))))

(declare-fun b!4096722 () Bool)

(declare-fun res!1674792 () Bool)

(assert (=> b!4096722 (=> (not res!1674792) (not e!2542233))))

(assert (=> b!4096722 (= res!1674792 (< (size!32823 (_2!24564 (get!14412 lt!1465319))) (size!32823 input!3411)))))

(declare-fun b!4096723 () Bool)

(declare-fun res!1674793 () Bool)

(assert (=> b!4096723 (=> (not res!1674793) (not e!2542233))))

(assert (=> b!4096723 (= res!1674793 (= (value!223344 (_1!24564 (get!14412 lt!1465319))) (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319)))))))))

(declare-fun d!1216277 () Bool)

(assert (=> d!1216277 e!2542235))

(declare-fun res!1674787 () Bool)

(assert (=> d!1216277 (=> res!1674787 e!2542235)))

(assert (=> d!1216277 (= res!1674787 (isEmpty!26291 lt!1465319))))

(declare-fun e!2542234 () Option!9518)

(assert (=> d!1216277 (= lt!1465319 e!2542234)))

(declare-fun c!705918 () Bool)

(declare-fun lt!1465320 () tuple2!42864)

(assert (=> d!1216277 (= c!705918 (isEmpty!26289 (_1!24566 lt!1465320)))))

(assert (=> d!1216277 (= lt!1465320 (findLongestMatch!1387 (regex!7112 (h!49353 rules!3870)) input!3411))))

(assert (=> d!1216277 (ruleValid!3032 thiss!26199 (h!49353 rules!3870))))

(assert (=> d!1216277 (= (maxPrefixOneRule!2973 thiss!26199 (h!49353 rules!3870) input!3411) lt!1465319)))

(declare-fun b!4096724 () Bool)

(assert (=> b!4096724 (= e!2542234 (Some!9517 (tuple2!42861 (Token!13351 (apply!10295 (transformation!7112 (h!49353 rules!3870)) (seqFromList!5329 (_1!24566 lt!1465320))) (h!49353 rules!3870) (size!32825 (seqFromList!5329 (_1!24566 lt!1465320))) (_1!24566 lt!1465320)) (_2!24566 lt!1465320))))))

(declare-fun lt!1465322 () Unit!63463)

(assert (=> b!4096724 (= lt!1465322 (longestMatchIsAcceptedByMatchOrIsEmpty!1447 (regex!7112 (h!49353 rules!3870)) input!3411))))

(declare-fun res!1674790 () Bool)

(assert (=> b!4096724 (= res!1674790 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(declare-fun e!2542232 () Bool)

(assert (=> b!4096724 (=> res!1674790 e!2542232)))

(assert (=> b!4096724 e!2542232))

(declare-fun lt!1465318 () Unit!63463)

(assert (=> b!4096724 (= lt!1465318 lt!1465322)))

(declare-fun lt!1465321 () Unit!63463)

(assert (=> b!4096724 (= lt!1465321 (lemmaSemiInverse!2079 (transformation!7112 (h!49353 rules!3870)) (seqFromList!5329 (_1!24566 lt!1465320))))))

(declare-fun b!4096725 () Bool)

(assert (=> b!4096725 (= e!2542233 (= (size!32822 (_1!24564 (get!14412 lt!1465319))) (size!32823 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319))))))))

(declare-fun b!4096726 () Bool)

(declare-fun res!1674791 () Bool)

(assert (=> b!4096726 (=> (not res!1674791) (not e!2542233))))

(assert (=> b!4096726 (= res!1674791 (= (rule!10266 (_1!24564 (get!14412 lt!1465319))) (h!49353 rules!3870)))))

(declare-fun b!4096727 () Bool)

(assert (=> b!4096727 (= e!2542234 None!9517)))

(declare-fun b!4096728 () Bool)

(assert (=> b!4096728 (= e!2542232 (matchR!5958 (regex!7112 (h!49353 rules!3870)) (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (= (and d!1216277 c!705918) b!4096727))

(assert (= (and d!1216277 (not c!705918)) b!4096724))

(assert (= (and b!4096724 (not res!1674790)) b!4096728))

(assert (= (and d!1216277 (not res!1674787)) b!4096720))

(assert (= (and b!4096720 res!1674789) b!4096721))

(assert (= (and b!4096721 res!1674788) b!4096722))

(assert (= (and b!4096722 res!1674792) b!4096726))

(assert (= (and b!4096726 res!1674791) b!4096723))

(assert (= (and b!4096723 res!1674793) b!4096725))

(declare-fun m!4703643 () Bool)

(assert (=> b!4096720 m!4703643))

(declare-fun m!4703645 () Bool)

(assert (=> b!4096720 m!4703645))

(assert (=> b!4096720 m!4703645))

(declare-fun m!4703647 () Bool)

(assert (=> b!4096720 m!4703647))

(assert (=> b!4096720 m!4703647))

(declare-fun m!4703649 () Bool)

(assert (=> b!4096720 m!4703649))

(assert (=> b!4096722 m!4703643))

(declare-fun m!4703651 () Bool)

(assert (=> b!4096722 m!4703651))

(assert (=> b!4096722 m!4703471))

(assert (=> b!4096725 m!4703643))

(declare-fun m!4703653 () Bool)

(assert (=> b!4096725 m!4703653))

(assert (=> b!4096726 m!4703643))

(declare-fun m!4703655 () Bool)

(assert (=> d!1216277 m!4703655))

(declare-fun m!4703657 () Bool)

(assert (=> d!1216277 m!4703657))

(declare-fun m!4703659 () Bool)

(assert (=> d!1216277 m!4703659))

(declare-fun m!4703661 () Bool)

(assert (=> d!1216277 m!4703661))

(assert (=> b!4096721 m!4703643))

(assert (=> b!4096721 m!4703645))

(assert (=> b!4096721 m!4703645))

(assert (=> b!4096721 m!4703647))

(assert (=> b!4096721 m!4703647))

(declare-fun m!4703663 () Bool)

(assert (=> b!4096721 m!4703663))

(assert (=> b!4096723 m!4703643))

(declare-fun m!4703665 () Bool)

(assert (=> b!4096723 m!4703665))

(assert (=> b!4096723 m!4703665))

(declare-fun m!4703667 () Bool)

(assert (=> b!4096723 m!4703667))

(declare-fun m!4703669 () Bool)

(assert (=> b!4096724 m!4703669))

(declare-fun m!4703671 () Bool)

(assert (=> b!4096724 m!4703671))

(assert (=> b!4096724 m!4703669))

(declare-fun m!4703673 () Bool)

(assert (=> b!4096724 m!4703673))

(assert (=> b!4096724 m!4703497))

(assert (=> b!4096724 m!4703471))

(assert (=> b!4096724 m!4703669))

(assert (=> b!4096724 m!4703497))

(assert (=> b!4096724 m!4703471))

(declare-fun m!4703675 () Bool)

(assert (=> b!4096724 m!4703675))

(declare-fun m!4703677 () Bool)

(assert (=> b!4096724 m!4703677))

(declare-fun m!4703679 () Bool)

(assert (=> b!4096724 m!4703679))

(assert (=> b!4096724 m!4703669))

(declare-fun m!4703681 () Bool)

(assert (=> b!4096724 m!4703681))

(assert (=> b!4096728 m!4703497))

(assert (=> b!4096728 m!4703471))

(assert (=> b!4096728 m!4703497))

(assert (=> b!4096728 m!4703471))

(assert (=> b!4096728 m!4703675))

(declare-fun m!4703683 () Bool)

(assert (=> b!4096728 m!4703683))

(assert (=> b!4096406 d!1216277))

(declare-fun d!1216279 () Bool)

(declare-fun res!1674794 () Bool)

(declare-fun e!2542236 () Bool)

(assert (=> d!1216279 (=> (not res!1674794) (not e!2542236))))

(assert (=> d!1216279 (= res!1674794 (rulesValid!2796 thiss!26199 (t!339272 rules!3870)))))

(assert (=> d!1216279 (= (rulesInvariant!6044 thiss!26199 (t!339272 rules!3870)) e!2542236)))

(declare-fun b!4096729 () Bool)

(assert (=> b!4096729 (= e!2542236 (noDuplicateTag!2797 thiss!26199 (t!339272 rules!3870) Nil!43935))))

(assert (= (and d!1216279 res!1674794) b!4096729))

(declare-fun m!4703685 () Bool)

(assert (=> d!1216279 m!4703685))

(declare-fun m!4703687 () Bool)

(assert (=> b!4096729 m!4703687))

(assert (=> b!4096406 d!1216279))

(declare-fun d!1216281 () Bool)

(assert (=> d!1216281 (rulesInvariant!6044 thiss!26199 (t!339272 rules!3870))))

(declare-fun lt!1465325 () Unit!63463)

(declare-fun choose!25032 (LexerInterface!6701 Rule!14024 List!44057) Unit!63463)

(assert (=> d!1216281 (= lt!1465325 (choose!25032 thiss!26199 (h!49353 rules!3870) (t!339272 rules!3870)))))

(assert (=> d!1216281 (rulesInvariant!6044 thiss!26199 (Cons!43933 (h!49353 rules!3870) (t!339272 rules!3870)))))

(assert (=> d!1216281 (= (lemmaInvariantOnRulesThenOnTail!814 thiss!26199 (h!49353 rules!3870) (t!339272 rules!3870)) lt!1465325)))

(declare-fun bs!593573 () Bool)

(assert (= bs!593573 d!1216281))

(assert (=> bs!593573 m!4703255))

(declare-fun m!4703689 () Bool)

(assert (=> bs!593573 m!4703689))

(declare-fun m!4703691 () Bool)

(assert (=> bs!593573 m!4703691))

(assert (=> b!4096406 d!1216281))

(declare-fun d!1216283 () Bool)

(assert (=> d!1216283 (= (isEmpty!26289 p!2988) ((_ is Nil!43932) p!2988))))

(assert (=> b!4096396 d!1216283))

(declare-fun call!289507 () Option!9518)

(declare-fun bm!289502 () Bool)

(assert (=> bm!289502 (= call!289507 (maxPrefixOneRule!2973 thiss!26199 (h!49353 (t!339272 rules!3870)) input!3411))))

(declare-fun d!1216285 () Bool)

(declare-fun e!2542237 () Bool)

(assert (=> d!1216285 e!2542237))

(declare-fun res!1674795 () Bool)

(assert (=> d!1216285 (=> res!1674795 e!2542237)))

(declare-fun lt!1465329 () Option!9518)

(assert (=> d!1216285 (= res!1674795 (isEmpty!26291 lt!1465329))))

(declare-fun e!2542238 () Option!9518)

(assert (=> d!1216285 (= lt!1465329 e!2542238)))

(declare-fun c!705919 () Bool)

(assert (=> d!1216285 (= c!705919 (and ((_ is Cons!43933) (t!339272 rules!3870)) ((_ is Nil!43933) (t!339272 (t!339272 rules!3870)))))))

(declare-fun lt!1465330 () Unit!63463)

(declare-fun lt!1465327 () Unit!63463)

(assert (=> d!1216285 (= lt!1465330 lt!1465327)))

(assert (=> d!1216285 (isPrefix!4153 input!3411 input!3411)))

(assert (=> d!1216285 (= lt!1465327 (lemmaIsPrefixRefl!2704 input!3411 input!3411))))

(assert (=> d!1216285 (rulesValidInductive!2635 thiss!26199 (t!339272 rules!3870))))

(assert (=> d!1216285 (= (maxPrefix!3991 thiss!26199 (t!339272 rules!3870) input!3411) lt!1465329)))

(declare-fun b!4096730 () Bool)

(declare-fun res!1674799 () Bool)

(declare-fun e!2542239 () Bool)

(assert (=> b!4096730 (=> (not res!1674799) (not e!2542239))))

(assert (=> b!4096730 (= res!1674799 (< (size!32823 (_2!24564 (get!14412 lt!1465329))) (size!32823 input!3411)))))

(declare-fun b!4096731 () Bool)

(declare-fun res!1674801 () Bool)

(assert (=> b!4096731 (=> (not res!1674801) (not e!2542239))))

(assert (=> b!4096731 (= res!1674801 (matchR!5958 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))))))

(declare-fun b!4096732 () Bool)

(declare-fun lt!1465328 () Option!9518)

(declare-fun lt!1465326 () Option!9518)

(assert (=> b!4096732 (= e!2542238 (ite (and ((_ is None!9517) lt!1465328) ((_ is None!9517) lt!1465326)) None!9517 (ite ((_ is None!9517) lt!1465326) lt!1465328 (ite ((_ is None!9517) lt!1465328) lt!1465326 (ite (>= (size!32822 (_1!24564 (v!40017 lt!1465328))) (size!32822 (_1!24564 (v!40017 lt!1465326)))) lt!1465328 lt!1465326)))))))

(assert (=> b!4096732 (= lt!1465328 call!289507)))

(assert (=> b!4096732 (= lt!1465326 (maxPrefix!3991 thiss!26199 (t!339272 (t!339272 rules!3870)) input!3411))))

(declare-fun b!4096733 () Bool)

(assert (=> b!4096733 (= e!2542237 e!2542239)))

(declare-fun res!1674800 () Bool)

(assert (=> b!4096733 (=> (not res!1674800) (not e!2542239))))

(assert (=> b!4096733 (= res!1674800 (isDefined!7202 lt!1465329))))

(declare-fun b!4096734 () Bool)

(assert (=> b!4096734 (= e!2542239 (contains!8797 (t!339272 rules!3870) (rule!10266 (_1!24564 (get!14412 lt!1465329)))))))

(declare-fun b!4096735 () Bool)

(declare-fun res!1674796 () Bool)

(assert (=> b!4096735 (=> (not res!1674796) (not e!2542239))))

(assert (=> b!4096735 (= res!1674796 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329)))) (_2!24564 (get!14412 lt!1465329))) input!3411))))

(declare-fun b!4096736 () Bool)

(assert (=> b!4096736 (= e!2542238 call!289507)))

(declare-fun b!4096737 () Bool)

(declare-fun res!1674797 () Bool)

(assert (=> b!4096737 (=> (not res!1674797) (not e!2542239))))

(assert (=> b!4096737 (= res!1674797 (= (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329)))) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465329)))))))

(declare-fun b!4096738 () Bool)

(declare-fun res!1674798 () Bool)

(assert (=> b!4096738 (=> (not res!1674798) (not e!2542239))))

(assert (=> b!4096738 (= res!1674798 (= (value!223344 (_1!24564 (get!14412 lt!1465329))) (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465329)))))))))

(assert (= (and d!1216285 c!705919) b!4096736))

(assert (= (and d!1216285 (not c!705919)) b!4096732))

(assert (= (or b!4096736 b!4096732) bm!289502))

(assert (= (and d!1216285 (not res!1674795)) b!4096733))

(assert (= (and b!4096733 res!1674800) b!4096737))

(assert (= (and b!4096737 res!1674797) b!4096730))

(assert (= (and b!4096730 res!1674799) b!4096735))

(assert (= (and b!4096735 res!1674796) b!4096738))

(assert (= (and b!4096738 res!1674798) b!4096731))

(assert (= (and b!4096731 res!1674801) b!4096734))

(declare-fun m!4703693 () Bool)

(assert (=> d!1216285 m!4703693))

(assert (=> d!1216285 m!4703605))

(assert (=> d!1216285 m!4703607))

(declare-fun m!4703695 () Bool)

(assert (=> d!1216285 m!4703695))

(declare-fun m!4703697 () Bool)

(assert (=> b!4096730 m!4703697))

(declare-fun m!4703699 () Bool)

(assert (=> b!4096730 m!4703699))

(assert (=> b!4096730 m!4703471))

(assert (=> b!4096737 m!4703697))

(declare-fun m!4703701 () Bool)

(assert (=> b!4096737 m!4703701))

(assert (=> b!4096737 m!4703701))

(declare-fun m!4703703 () Bool)

(assert (=> b!4096737 m!4703703))

(assert (=> b!4096735 m!4703697))

(assert (=> b!4096735 m!4703701))

(assert (=> b!4096735 m!4703701))

(assert (=> b!4096735 m!4703703))

(assert (=> b!4096735 m!4703703))

(declare-fun m!4703705 () Bool)

(assert (=> b!4096735 m!4703705))

(assert (=> b!4096738 m!4703697))

(declare-fun m!4703707 () Bool)

(assert (=> b!4096738 m!4703707))

(assert (=> b!4096738 m!4703707))

(declare-fun m!4703709 () Bool)

(assert (=> b!4096738 m!4703709))

(assert (=> b!4096731 m!4703697))

(assert (=> b!4096731 m!4703701))

(assert (=> b!4096731 m!4703701))

(assert (=> b!4096731 m!4703703))

(assert (=> b!4096731 m!4703703))

(declare-fun m!4703711 () Bool)

(assert (=> b!4096731 m!4703711))

(declare-fun m!4703713 () Bool)

(assert (=> b!4096733 m!4703713))

(assert (=> b!4096734 m!4703697))

(declare-fun m!4703715 () Bool)

(assert (=> b!4096734 m!4703715))

(declare-fun m!4703717 () Bool)

(assert (=> b!4096732 m!4703717))

(declare-fun m!4703719 () Bool)

(assert (=> bm!289502 m!4703719))

(assert (=> b!4096405 d!1216285))

(declare-fun d!1216287 () Bool)

(declare-fun e!2542245 () Bool)

(assert (=> d!1216287 e!2542245))

(declare-fun res!1674807 () Bool)

(assert (=> d!1216287 (=> (not res!1674807) (not e!2542245))))

(declare-fun lt!1465333 () List!44056)

(declare-fun content!6784 (List!44056) (InoxSet C!24220))

(assert (=> d!1216287 (= res!1674807 (= (content!6784 lt!1465333) ((_ map or) (content!6784 p!2988) (content!6784 suffix!1518))))))

(declare-fun e!2542244 () List!44056)

(assert (=> d!1216287 (= lt!1465333 e!2542244)))

(declare-fun c!705922 () Bool)

(assert (=> d!1216287 (= c!705922 ((_ is Nil!43932) p!2988))))

(assert (=> d!1216287 (= (++!11518 p!2988 suffix!1518) lt!1465333)))

(declare-fun b!4096749 () Bool)

(declare-fun res!1674806 () Bool)

(assert (=> b!4096749 (=> (not res!1674806) (not e!2542245))))

(assert (=> b!4096749 (= res!1674806 (= (size!32823 lt!1465333) (+ (size!32823 p!2988) (size!32823 suffix!1518))))))

(declare-fun b!4096747 () Bool)

(assert (=> b!4096747 (= e!2542244 suffix!1518)))

(declare-fun b!4096748 () Bool)

(assert (=> b!4096748 (= e!2542244 (Cons!43932 (h!49352 p!2988) (++!11518 (t!339271 p!2988) suffix!1518)))))

(declare-fun b!4096750 () Bool)

(assert (=> b!4096750 (= e!2542245 (or (not (= suffix!1518 Nil!43932)) (= lt!1465333 p!2988)))))

(assert (= (and d!1216287 c!705922) b!4096747))

(assert (= (and d!1216287 (not c!705922)) b!4096748))

(assert (= (and d!1216287 res!1674807) b!4096749))

(assert (= (and b!4096749 res!1674806) b!4096750))

(declare-fun m!4703721 () Bool)

(assert (=> d!1216287 m!4703721))

(declare-fun m!4703723 () Bool)

(assert (=> d!1216287 m!4703723))

(declare-fun m!4703725 () Bool)

(assert (=> d!1216287 m!4703725))

(declare-fun m!4703727 () Bool)

(assert (=> b!4096749 m!4703727))

(assert (=> b!4096749 m!4703267))

(declare-fun m!4703729 () Bool)

(assert (=> b!4096749 m!4703729))

(declare-fun m!4703731 () Bool)

(assert (=> b!4096748 m!4703731))

(assert (=> b!4096416 d!1216287))

(declare-fun b!4096779 () Bool)

(declare-fun res!1674829 () Bool)

(declare-fun e!2542260 () Bool)

(assert (=> b!4096779 (=> (not res!1674829) (not e!2542260))))

(declare-fun call!289510 () Bool)

(assert (=> b!4096779 (= res!1674829 (not call!289510))))

(declare-fun bm!289505 () Bool)

(assert (=> bm!289505 (= call!289510 (isEmpty!26289 p!2988))))

(declare-fun b!4096780 () Bool)

(declare-fun res!1674824 () Bool)

(declare-fun e!2542264 () Bool)

(assert (=> b!4096780 (=> res!1674824 e!2542264)))

(declare-fun tail!6394 (List!44056) List!44056)

(assert (=> b!4096780 (= res!1674824 (not (isEmpty!26289 (tail!6394 p!2988))))))

(declare-fun b!4096781 () Bool)

(declare-fun res!1674827 () Bool)

(declare-fun e!2542262 () Bool)

(assert (=> b!4096781 (=> res!1674827 e!2542262)))

(assert (=> b!4096781 (= res!1674827 (not ((_ is ElementMatch!12017) (regex!7112 r!4213))))))

(declare-fun e!2542261 () Bool)

(assert (=> b!4096781 (= e!2542261 e!2542262)))

(declare-fun b!4096782 () Bool)

(declare-fun e!2542263 () Bool)

(declare-fun derivativeStep!3650 (Regex!12017 C!24220) Regex!12017)

(declare-fun head!8660 (List!44056) C!24220)

(assert (=> b!4096782 (= e!2542263 (matchR!5958 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988)) (tail!6394 p!2988)))))

(declare-fun b!4096783 () Bool)

(assert (=> b!4096783 (= e!2542260 (= (head!8660 p!2988) (c!705882 (regex!7112 r!4213))))))

(declare-fun b!4096784 () Bool)

(declare-fun e!2542266 () Bool)

(assert (=> b!4096784 (= e!2542266 e!2542261)))

(declare-fun c!705931 () Bool)

(assert (=> b!4096784 (= c!705931 ((_ is EmptyLang!12017) (regex!7112 r!4213)))))

(declare-fun b!4096785 () Bool)

(declare-fun res!1674831 () Bool)

(assert (=> b!4096785 (=> res!1674831 e!2542262)))

(assert (=> b!4096785 (= res!1674831 e!2542260)))

(declare-fun res!1674830 () Bool)

(assert (=> b!4096785 (=> (not res!1674830) (not e!2542260))))

(declare-fun lt!1465336 () Bool)

(assert (=> b!4096785 (= res!1674830 lt!1465336)))

(declare-fun b!4096786 () Bool)

(assert (=> b!4096786 (= e!2542266 (= lt!1465336 call!289510))))

(declare-fun d!1216289 () Bool)

(assert (=> d!1216289 e!2542266))

(declare-fun c!705929 () Bool)

(assert (=> d!1216289 (= c!705929 ((_ is EmptyExpr!12017) (regex!7112 r!4213)))))

(assert (=> d!1216289 (= lt!1465336 e!2542263)))

(declare-fun c!705930 () Bool)

(assert (=> d!1216289 (= c!705930 (isEmpty!26289 p!2988))))

(declare-fun validRegex!5449 (Regex!12017) Bool)

(assert (=> d!1216289 (validRegex!5449 (regex!7112 r!4213))))

(assert (=> d!1216289 (= (matchR!5958 (regex!7112 r!4213) p!2988) lt!1465336)))

(declare-fun b!4096787 () Bool)

(declare-fun e!2542265 () Bool)

(assert (=> b!4096787 (= e!2542262 e!2542265)))

(declare-fun res!1674825 () Bool)

(assert (=> b!4096787 (=> (not res!1674825) (not e!2542265))))

(assert (=> b!4096787 (= res!1674825 (not lt!1465336))))

(declare-fun b!4096788 () Bool)

(assert (=> b!4096788 (= e!2542261 (not lt!1465336))))

(declare-fun b!4096789 () Bool)

(assert (=> b!4096789 (= e!2542264 (not (= (head!8660 p!2988) (c!705882 (regex!7112 r!4213)))))))

(declare-fun b!4096790 () Bool)

(declare-fun res!1674826 () Bool)

(assert (=> b!4096790 (=> (not res!1674826) (not e!2542260))))

(assert (=> b!4096790 (= res!1674826 (isEmpty!26289 (tail!6394 p!2988)))))

(declare-fun b!4096791 () Bool)

(declare-fun nullable!4249 (Regex!12017) Bool)

(assert (=> b!4096791 (= e!2542263 (nullable!4249 (regex!7112 r!4213)))))

(declare-fun b!4096792 () Bool)

(assert (=> b!4096792 (= e!2542265 e!2542264)))

(declare-fun res!1674828 () Bool)

(assert (=> b!4096792 (=> res!1674828 e!2542264)))

(assert (=> b!4096792 (= res!1674828 call!289510)))

(assert (= (and d!1216289 c!705930) b!4096791))

(assert (= (and d!1216289 (not c!705930)) b!4096782))

(assert (= (and d!1216289 c!705929) b!4096786))

(assert (= (and d!1216289 (not c!705929)) b!4096784))

(assert (= (and b!4096784 c!705931) b!4096788))

(assert (= (and b!4096784 (not c!705931)) b!4096781))

(assert (= (and b!4096781 (not res!1674827)) b!4096785))

(assert (= (and b!4096785 res!1674830) b!4096779))

(assert (= (and b!4096779 res!1674829) b!4096790))

(assert (= (and b!4096790 res!1674826) b!4096783))

(assert (= (and b!4096785 (not res!1674831)) b!4096787))

(assert (= (and b!4096787 res!1674825) b!4096792))

(assert (= (and b!4096792 (not res!1674828)) b!4096780))

(assert (= (and b!4096780 (not res!1674824)) b!4096789))

(assert (= (or b!4096786 b!4096779 b!4096792) bm!289505))

(declare-fun m!4703733 () Bool)

(assert (=> b!4096789 m!4703733))

(assert (=> d!1216289 m!4703239))

(declare-fun m!4703735 () Bool)

(assert (=> d!1216289 m!4703735))

(assert (=> b!4096783 m!4703733))

(assert (=> bm!289505 m!4703239))

(declare-fun m!4703737 () Bool)

(assert (=> b!4096791 m!4703737))

(declare-fun m!4703739 () Bool)

(assert (=> b!4096780 m!4703739))

(assert (=> b!4096780 m!4703739))

(declare-fun m!4703741 () Bool)

(assert (=> b!4096780 m!4703741))

(assert (=> b!4096790 m!4703739))

(assert (=> b!4096790 m!4703739))

(assert (=> b!4096790 m!4703741))

(assert (=> b!4096782 m!4703733))

(assert (=> b!4096782 m!4703733))

(declare-fun m!4703743 () Bool)

(assert (=> b!4096782 m!4703743))

(assert (=> b!4096782 m!4703739))

(assert (=> b!4096782 m!4703743))

(assert (=> b!4096782 m!4703739))

(declare-fun m!4703745 () Bool)

(assert (=> b!4096782 m!4703745))

(assert (=> b!4096404 d!1216289))

(declare-fun d!1216291 () Bool)

(declare-fun res!1674836 () Bool)

(declare-fun e!2542269 () Bool)

(assert (=> d!1216291 (=> (not res!1674836) (not e!2542269))))

(assert (=> d!1216291 (= res!1674836 (validRegex!5449 (regex!7112 r!4213)))))

(assert (=> d!1216291 (= (ruleValid!3032 thiss!26199 r!4213) e!2542269)))

(declare-fun b!4096797 () Bool)

(declare-fun res!1674837 () Bool)

(assert (=> b!4096797 (=> (not res!1674837) (not e!2542269))))

(assert (=> b!4096797 (= res!1674837 (not (nullable!4249 (regex!7112 r!4213))))))

(declare-fun b!4096798 () Bool)

(assert (=> b!4096798 (= e!2542269 (not (= (tag!7972 r!4213) (String!50461 ""))))))

(assert (= (and d!1216291 res!1674836) b!4096797))

(assert (= (and b!4096797 res!1674837) b!4096798))

(assert (=> d!1216291 m!4703735))

(assert (=> b!4096797 m!4703737))

(assert (=> b!4096404 d!1216291))

(declare-fun d!1216293 () Bool)

(assert (=> d!1216293 (ruleValid!3032 thiss!26199 r!4213)))

(declare-fun lt!1465337 () Unit!63463)

(assert (=> d!1216293 (= lt!1465337 (choose!25031 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1216293 (contains!8797 rules!3870 r!4213)))

(assert (=> d!1216293 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2098 thiss!26199 r!4213 rules!3870) lt!1465337)))

(declare-fun bs!593574 () Bool)

(assert (= bs!593574 d!1216293))

(assert (=> bs!593574 m!4703231))

(declare-fun m!4703747 () Bool)

(assert (=> bs!593574 m!4703747))

(assert (=> bs!593574 m!4703237))

(assert (=> b!4096404 d!1216293))

(declare-fun b!4096809 () Bool)

(declare-fun e!2542272 () Bool)

(assert (=> b!4096809 (= e!2542272 tp_is_empty!21037)))

(assert (=> b!4096402 (= tp!1239919 e!2542272)))

(declare-fun b!4096812 () Bool)

(declare-fun tp!1239983 () Bool)

(declare-fun tp!1239980 () Bool)

(assert (=> b!4096812 (= e!2542272 (and tp!1239983 tp!1239980))))

(declare-fun b!4096810 () Bool)

(declare-fun tp!1239984 () Bool)

(declare-fun tp!1239981 () Bool)

(assert (=> b!4096810 (= e!2542272 (and tp!1239984 tp!1239981))))

(declare-fun b!4096811 () Bool)

(declare-fun tp!1239982 () Bool)

(assert (=> b!4096811 (= e!2542272 tp!1239982)))

(assert (= (and b!4096402 ((_ is ElementMatch!12017) (regex!7112 (h!49353 rules!3870)))) b!4096809))

(assert (= (and b!4096402 ((_ is Concat!19360) (regex!7112 (h!49353 rules!3870)))) b!4096810))

(assert (= (and b!4096402 ((_ is Star!12017) (regex!7112 (h!49353 rules!3870)))) b!4096811))

(assert (= (and b!4096402 ((_ is Union!12017) (regex!7112 (h!49353 rules!3870)))) b!4096812))

(declare-fun b!4096817 () Bool)

(declare-fun e!2542275 () Bool)

(declare-fun tp!1239987 () Bool)

(assert (=> b!4096817 (= e!2542275 (and tp_is_empty!21037 tp!1239987))))

(assert (=> b!4096411 (= tp!1239921 e!2542275)))

(assert (= (and b!4096411 ((_ is Cons!43932) (t!339271 p!2988))) b!4096817))

(declare-fun b!4096818 () Bool)

(declare-fun e!2542276 () Bool)

(assert (=> b!4096818 (= e!2542276 tp_is_empty!21037)))

(assert (=> b!4096401 (= tp!1239923 e!2542276)))

(declare-fun b!4096821 () Bool)

(declare-fun tp!1239991 () Bool)

(declare-fun tp!1239988 () Bool)

(assert (=> b!4096821 (= e!2542276 (and tp!1239991 tp!1239988))))

(declare-fun b!4096819 () Bool)

(declare-fun tp!1239992 () Bool)

(declare-fun tp!1239989 () Bool)

(assert (=> b!4096819 (= e!2542276 (and tp!1239992 tp!1239989))))

(declare-fun b!4096820 () Bool)

(declare-fun tp!1239990 () Bool)

(assert (=> b!4096820 (= e!2542276 tp!1239990)))

(assert (= (and b!4096401 ((_ is ElementMatch!12017) (regex!7112 r!4213))) b!4096818))

(assert (= (and b!4096401 ((_ is Concat!19360) (regex!7112 r!4213))) b!4096819))

(assert (= (and b!4096401 ((_ is Star!12017) (regex!7112 r!4213))) b!4096820))

(assert (= (and b!4096401 ((_ is Union!12017) (regex!7112 r!4213))) b!4096821))

(declare-fun b!4096832 () Bool)

(declare-fun b_free!114589 () Bool)

(declare-fun b_next!115293 () Bool)

(assert (=> b!4096832 (= b_free!114589 (not b_next!115293))))

(declare-fun tb!246471 () Bool)

(declare-fun t!339304 () Bool)

(assert (=> (and b!4096832 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 r!4213))) t!339304) tb!246471))

(declare-fun result!299112 () Bool)

(assert (= result!299112 result!299094))

(assert (=> d!1216257 t!339304))

(assert (=> d!1216267 t!339304))

(declare-fun tp!1240002 () Bool)

(declare-fun b_and!316031 () Bool)

(assert (=> b!4096832 (= tp!1240002 (and (=> t!339304 result!299112) b_and!316031))))

(declare-fun b_free!114591 () Bool)

(declare-fun b_next!115295 () Bool)

(assert (=> b!4096832 (= b_free!114591 (not b_next!115295))))

(declare-fun tb!246473 () Bool)

(declare-fun t!339306 () Bool)

(assert (=> (and b!4096832 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 (rule!10266 lt!1465201)))) t!339306) tb!246473))

(declare-fun result!299114 () Bool)

(assert (= result!299114 result!299068))

(assert (=> b!4096442 t!339306))

(declare-fun t!339308 () Bool)

(declare-fun tb!246475 () Bool)

(assert (=> (and b!4096832 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 r!4213))) t!339308) tb!246475))

(declare-fun result!299116 () Bool)

(assert (= result!299116 result!299088))

(assert (=> d!1216257 t!339308))

(declare-fun b_and!316033 () Bool)

(declare-fun tp!1240003 () Bool)

(assert (=> b!4096832 (= tp!1240003 (and (=> t!339306 result!299114) (=> t!339308 result!299116) b_and!316033))))

(declare-fun e!2542286 () Bool)

(assert (=> b!4096832 (= e!2542286 (and tp!1240002 tp!1240003))))

(declare-fun tp!1240004 () Bool)

(declare-fun b!4096831 () Bool)

(declare-fun e!2542285 () Bool)

(assert (=> b!4096831 (= e!2542285 (and tp!1240004 (inv!58655 (tag!7972 (h!49353 (t!339272 rules!3870)))) (inv!58658 (transformation!7112 (h!49353 (t!339272 rules!3870)))) e!2542286))))

(declare-fun b!4096830 () Bool)

(declare-fun e!2542287 () Bool)

(declare-fun tp!1240001 () Bool)

(assert (=> b!4096830 (= e!2542287 (and e!2542285 tp!1240001))))

(assert (=> b!4096400 (= tp!1239922 e!2542287)))

(assert (= b!4096831 b!4096832))

(assert (= b!4096830 b!4096831))

(assert (= (and b!4096400 ((_ is Cons!43933) (t!339272 rules!3870))) b!4096830))

(declare-fun m!4703749 () Bool)

(assert (=> b!4096831 m!4703749))

(declare-fun m!4703751 () Bool)

(assert (=> b!4096831 m!4703751))

(declare-fun b!4096833 () Bool)

(declare-fun e!2542289 () Bool)

(declare-fun tp!1240005 () Bool)

(assert (=> b!4096833 (= e!2542289 (and tp_is_empty!21037 tp!1240005))))

(assert (=> b!4096403 (= tp!1239917 e!2542289)))

(assert (= (and b!4096403 ((_ is Cons!43932) (t!339271 input!3411))) b!4096833))

(declare-fun b!4096834 () Bool)

(declare-fun e!2542290 () Bool)

(declare-fun tp!1240006 () Bool)

(assert (=> b!4096834 (= e!2542290 (and tp_is_empty!21037 tp!1240006))))

(assert (=> b!4096414 (= tp!1239918 e!2542290)))

(assert (= (and b!4096414 ((_ is Cons!43932) (t!339271 suffix!1518))) b!4096834))

(declare-fun b_lambda!120285 () Bool)

(assert (= b_lambda!120273 (or (and b!4096407 b_free!114579) (and b!4096415 b_free!114583 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 r!4213)))) (and b!4096832 b_free!114591 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 r!4213)))) b_lambda!120285)))

(declare-fun b_lambda!120287 () Bool)

(assert (= b_lambda!120283 (or (and b!4096407 b_free!114577) (and b!4096415 b_free!114581 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (and b!4096832 b_free!114589 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 r!4213)))) b_lambda!120287)))

(declare-fun b_lambda!120289 () Bool)

(assert (= b_lambda!120275 (or (and b!4096407 b_free!114577) (and b!4096415 b_free!114581 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (and b!4096832 b_free!114589 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 r!4213)))) b_lambda!120289)))

(check-sat (not b_next!115285) (not b!4096443) (not b!4096728) (not b!4096797) (not b!4096714) (not b_next!115293) (not b!4096553) (not b!4096442) (not b!4096703) (not b!4096830) (not b!4096821) (not d!1216191) (not b!4096730) (not tb!246445) (not bm!289502) (not tb!246461) (not d!1216199) (not b_lambda!120289) (not b!4096555) (not d!1216279) (not d!1216273) (not d!1216261) b_and!316029 (not b!4096734) (not bm!289501) (not b!4096554) (not d!1216197) (not b_lambda!120287) (not b!4096551) (not b!4096719) (not b!4096557) (not b!4096732) (not b!4096702) (not b!4096790) (not d!1216293) (not b!4096716) (not d!1216277) (not b!4096430) (not b!4096556) (not b!4096722) (not b!4096731) (not b!4096833) (not b_lambda!120265) (not b!4096559) (not b!4096819) b_and!316017 (not b!4096834) (not d!1216271) (not b!4096701) (not b!4096831) (not b!4096723) (not b!4096780) (not b!4096705) (not b!4096658) (not b_next!115281) (not d!1216183) (not b!4096735) (not d!1216285) (not b_next!115283) (not b!4096726) (not b!4096729) (not b!4096733) (not d!1216265) (not d!1216287) (not d!1216289) (not tb!246457) (not b!4096552) (not b!4096721) (not d!1216281) (not b_lambda!120285) b_and!316033 b_and!316027 (not b!4096749) (not b!4096720) (not d!1216187) (not d!1216233) (not b!4096704) b_and!316031 (not b!4096811) (not b!4096789) (not bm!289505) (not b!4096437) (not b!4096708) (not b!4096791) (not b!4096436) (not b!4096707) (not d!1216255) (not b!4096724) (not b!4096448) (not b!4096738) (not b!4096820) (not b!4096748) b_and!316015 (not b_next!115287) (not d!1216257) (not d!1216291) (not b!4096812) tp_is_empty!21037 (not b!4096725) (not b!4096817) (not b!4096782) (not b!4096737) (not b!4096783) (not b!4096810) (not b_next!115295) (not b!4096700))
(check-sat (not b_next!115285) (not b_next!115293) b_and!316029 b_and!316017 (not b_next!115281) (not b_next!115283) b_and!316031 (not b_next!115295) b_and!316033 b_and!316027 b_and!316015 (not b_next!115287))
(get-model)

(declare-fun d!1216343 () Bool)

(assert (=> d!1216343 (= (isEmpty!26289 (originalCharacters!7706 lt!1465201)) ((_ is Nil!43932) (originalCharacters!7706 lt!1465201)))))

(assert (=> d!1216197 d!1216343))

(declare-fun d!1216345 () Bool)

(declare-fun c!705951 () Bool)

(assert (=> d!1216345 (= c!705951 ((_ is Nil!43933) rules!3870))))

(declare-fun e!2542341 () (InoxSet Rule!14024))

(assert (=> d!1216345 (= (content!6781 rules!3870) e!2542341)))

(declare-fun b!4096917 () Bool)

(assert (=> b!4096917 (= e!2542341 ((as const (Array Rule!14024 Bool)) false))))

(declare-fun b!4096918 () Bool)

(assert (=> b!4096918 (= e!2542341 ((_ map or) (store ((as const (Array Rule!14024 Bool)) false) (h!49353 rules!3870) true) (content!6781 (t!339272 rules!3870))))))

(assert (= (and d!1216345 c!705951) b!4096917))

(assert (= (and d!1216345 (not c!705951)) b!4096918))

(declare-fun m!4703831 () Bool)

(assert (=> b!4096918 m!4703831))

(assert (=> b!4096918 m!4703285))

(assert (=> d!1216271 d!1216345))

(declare-fun d!1216351 () Bool)

(assert (=> d!1216351 (= (isEmpty!26291 lt!1465270) (not ((_ is Some!9517) lt!1465270)))))

(assert (=> d!1216199 d!1216351))

(declare-fun d!1216353 () Bool)

(assert (=> d!1216353 (= (isEmpty!26289 (_1!24566 lt!1465271)) ((_ is Nil!43932) (_1!24566 lt!1465271)))))

(assert (=> d!1216199 d!1216353))

(declare-fun d!1216355 () Bool)

(declare-fun lt!1465383 () tuple2!42864)

(assert (=> d!1216355 (= (++!11518 (_1!24566 lt!1465383) (_2!24566 lt!1465383)) input!3411)))

(declare-fun sizeTr!295 (List!44056 Int) Int)

(assert (=> d!1216355 (= lt!1465383 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 0 input!3411 input!3411 (sizeTr!295 input!3411 0)))))

(declare-fun lt!1465382 () Unit!63463)

(declare-fun lt!1465379 () Unit!63463)

(assert (=> d!1216355 (= lt!1465382 lt!1465379)))

(declare-fun lt!1465376 () List!44056)

(declare-fun lt!1465380 () Int)

(assert (=> d!1216355 (= (sizeTr!295 lt!1465376 lt!1465380) (+ (size!32823 lt!1465376) lt!1465380))))

(declare-fun lemmaSizeTrEqualsSize!294 (List!44056 Int) Unit!63463)

(assert (=> d!1216355 (= lt!1465379 (lemmaSizeTrEqualsSize!294 lt!1465376 lt!1465380))))

(assert (=> d!1216355 (= lt!1465380 0)))

(assert (=> d!1216355 (= lt!1465376 Nil!43932)))

(declare-fun lt!1465377 () Unit!63463)

(declare-fun lt!1465378 () Unit!63463)

(assert (=> d!1216355 (= lt!1465377 lt!1465378)))

(declare-fun lt!1465381 () Int)

(assert (=> d!1216355 (= (sizeTr!295 input!3411 lt!1465381) (+ (size!32823 input!3411) lt!1465381))))

(assert (=> d!1216355 (= lt!1465378 (lemmaSizeTrEqualsSize!294 input!3411 lt!1465381))))

(assert (=> d!1216355 (= lt!1465381 0)))

(assert (=> d!1216355 (validRegex!5449 (regex!7112 r!4213))))

(assert (=> d!1216355 (= (findLongestMatch!1387 (regex!7112 r!4213) input!3411) lt!1465383)))

(declare-fun bs!593584 () Bool)

(assert (= bs!593584 d!1216355))

(declare-fun m!4703849 () Bool)

(assert (=> bs!593584 m!4703849))

(declare-fun m!4703851 () Bool)

(assert (=> bs!593584 m!4703851))

(assert (=> bs!593584 m!4703471))

(declare-fun m!4703853 () Bool)

(assert (=> bs!593584 m!4703853))

(assert (=> bs!593584 m!4703735))

(declare-fun m!4703855 () Bool)

(assert (=> bs!593584 m!4703855))

(declare-fun m!4703857 () Bool)

(assert (=> bs!593584 m!4703857))

(declare-fun m!4703859 () Bool)

(assert (=> bs!593584 m!4703859))

(assert (=> bs!593584 m!4703849))

(declare-fun m!4703861 () Bool)

(assert (=> bs!593584 m!4703861))

(declare-fun m!4703863 () Bool)

(assert (=> bs!593584 m!4703863))

(assert (=> d!1216199 d!1216355))

(assert (=> d!1216199 d!1216291))

(assert (=> bm!289501 d!1216277))

(declare-fun d!1216361 () Bool)

(assert (=> d!1216361 (= (get!14412 lt!1465270) (v!40017 lt!1465270))))

(assert (=> b!4096556 d!1216361))

(declare-fun d!1216363 () Bool)

(declare-fun lt!1465384 () Int)

(assert (=> d!1216363 (>= lt!1465384 0)))

(declare-fun e!2542350 () Int)

(assert (=> d!1216363 (= lt!1465384 e!2542350)))

(declare-fun c!705956 () Bool)

(assert (=> d!1216363 (= c!705956 ((_ is Nil!43932) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270)))))))

(assert (=> d!1216363 (= (size!32823 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270)))) lt!1465384)))

(declare-fun b!4096935 () Bool)

(assert (=> b!4096935 (= e!2542350 0)))

(declare-fun b!4096936 () Bool)

(assert (=> b!4096936 (= e!2542350 (+ 1 (size!32823 (t!339271 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270)))))))))

(assert (= (and d!1216363 c!705956) b!4096935))

(assert (= (and d!1216363 (not c!705956)) b!4096936))

(declare-fun m!4703865 () Bool)

(assert (=> b!4096936 m!4703865))

(assert (=> b!4096556 d!1216363))

(assert (=> bm!289505 d!1216283))

(declare-fun d!1216365 () Bool)

(assert (=> d!1216365 (= (get!14412 lt!1465319) (v!40017 lt!1465319))))

(assert (=> b!4096725 d!1216365))

(declare-fun d!1216367 () Bool)

(declare-fun lt!1465385 () Int)

(assert (=> d!1216367 (>= lt!1465385 0)))

(declare-fun e!2542351 () Int)

(assert (=> d!1216367 (= lt!1465385 e!2542351)))

(declare-fun c!705957 () Bool)

(assert (=> d!1216367 (= c!705957 ((_ is Nil!43932) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319)))))))

(assert (=> d!1216367 (= (size!32823 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319)))) lt!1465385)))

(declare-fun b!4096937 () Bool)

(assert (=> b!4096937 (= e!2542351 0)))

(declare-fun b!4096938 () Bool)

(assert (=> b!4096938 (= e!2542351 (+ 1 (size!32823 (t!339271 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319)))))))))

(assert (= (and d!1216367 c!705957) b!4096937))

(assert (= (and d!1216367 (not c!705957)) b!4096938))

(declare-fun m!4703867 () Bool)

(assert (=> b!4096938 m!4703867))

(assert (=> b!4096725 d!1216367))

(assert (=> b!4096554 d!1216361))

(declare-fun d!1216369 () Bool)

(assert (=> d!1216369 (= (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270))))) (dynLambda!18839 (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270))))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270))))))))

(declare-fun b_lambda!120297 () Bool)

(assert (=> (not b_lambda!120297) (not d!1216369)))

(declare-fun tb!246495 () Bool)

(declare-fun t!339330 () Bool)

(assert (=> (and b!4096407 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))))) t!339330) tb!246495))

(declare-fun result!299136 () Bool)

(assert (=> tb!246495 (= result!299136 (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270))))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270)))))))))

(declare-fun m!4703869 () Bool)

(assert (=> tb!246495 m!4703869))

(assert (=> d!1216369 t!339330))

(declare-fun b_and!316053 () Bool)

(assert (= b_and!316027 (and (=> t!339330 result!299136) b_and!316053)))

(declare-fun t!339332 () Bool)

(declare-fun tb!246497 () Bool)

(assert (=> (and b!4096415 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))))) t!339332) tb!246497))

(declare-fun result!299138 () Bool)

(assert (= result!299138 result!299136))

(assert (=> d!1216369 t!339332))

(declare-fun b_and!316055 () Bool)

(assert (= b_and!316029 (and (=> t!339332 result!299138) b_and!316055)))

(declare-fun tb!246499 () Bool)

(declare-fun t!339334 () Bool)

(assert (=> (and b!4096832 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))))) t!339334) tb!246499))

(declare-fun result!299140 () Bool)

(assert (= result!299140 result!299136))

(assert (=> d!1216369 t!339334))

(declare-fun b_and!316057 () Bool)

(assert (= b_and!316031 (and (=> t!339334 result!299140) b_and!316057)))

(assert (=> d!1216369 m!4703487))

(declare-fun m!4703871 () Bool)

(assert (=> d!1216369 m!4703871))

(assert (=> b!4096554 d!1216369))

(declare-fun d!1216371 () Bool)

(assert (=> d!1216371 (= (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270)))) (fromListB!2445 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270)))))))

(declare-fun bs!593585 () Bool)

(assert (= bs!593585 d!1216371))

(declare-fun m!4703873 () Bool)

(assert (=> bs!593585 m!4703873))

(assert (=> b!4096554 d!1216371))

(declare-fun d!1216373 () Bool)

(declare-fun lt!1465386 () Int)

(assert (=> d!1216373 (>= lt!1465386 0)))

(declare-fun e!2542353 () Int)

(assert (=> d!1216373 (= lt!1465386 e!2542353)))

(declare-fun c!705958 () Bool)

(assert (=> d!1216373 (= c!705958 ((_ is Nil!43932) lt!1465333))))

(assert (=> d!1216373 (= (size!32823 lt!1465333) lt!1465386)))

(declare-fun b!4096939 () Bool)

(assert (=> b!4096939 (= e!2542353 0)))

(declare-fun b!4096940 () Bool)

(assert (=> b!4096940 (= e!2542353 (+ 1 (size!32823 (t!339271 lt!1465333))))))

(assert (= (and d!1216373 c!705958) b!4096939))

(assert (= (and d!1216373 (not c!705958)) b!4096940))

(declare-fun m!4703875 () Bool)

(assert (=> b!4096940 m!4703875))

(assert (=> b!4096749 d!1216373))

(assert (=> b!4096749 d!1216263))

(declare-fun d!1216375 () Bool)

(declare-fun lt!1465387 () Int)

(assert (=> d!1216375 (>= lt!1465387 0)))

(declare-fun e!2542354 () Int)

(assert (=> d!1216375 (= lt!1465387 e!2542354)))

(declare-fun c!705959 () Bool)

(assert (=> d!1216375 (= c!705959 ((_ is Nil!43932) suffix!1518))))

(assert (=> d!1216375 (= (size!32823 suffix!1518) lt!1465387)))

(declare-fun b!4096941 () Bool)

(assert (=> b!4096941 (= e!2542354 0)))

(declare-fun b!4096942 () Bool)

(assert (=> b!4096942 (= e!2542354 (+ 1 (size!32823 (t!339271 suffix!1518))))))

(assert (= (and d!1216375 c!705959) b!4096941))

(assert (= (and d!1216375 (not c!705959)) b!4096942))

(declare-fun m!4703877 () Bool)

(assert (=> b!4096942 m!4703877))

(assert (=> b!4096749 d!1216375))

(declare-fun d!1216377 () Bool)

(declare-fun e!2542357 () Bool)

(assert (=> d!1216377 e!2542357))

(declare-fun res!1674884 () Bool)

(assert (=> d!1216377 (=> (not res!1674884) (not e!2542357))))

(declare-fun lt!1465390 () BalanceConc!26240)

(assert (=> d!1216377 (= res!1674884 (= (list!16302 lt!1465390) p!2988))))

(declare-fun fromList!888 (List!44056) Conc!13323)

(assert (=> d!1216377 (= lt!1465390 (BalanceConc!26241 (fromList!888 p!2988)))))

(assert (=> d!1216377 (= (fromListB!2445 p!2988) lt!1465390)))

(declare-fun b!4096945 () Bool)

(declare-fun isBalanced!3709 (Conc!13323) Bool)

(assert (=> b!4096945 (= e!2542357 (isBalanced!3709 (fromList!888 p!2988)))))

(assert (= (and d!1216377 res!1674884) b!4096945))

(declare-fun m!4703879 () Bool)

(assert (=> d!1216377 m!4703879))

(declare-fun m!4703881 () Bool)

(assert (=> d!1216377 m!4703881))

(assert (=> b!4096945 m!4703881))

(assert (=> b!4096945 m!4703881))

(declare-fun m!4703883 () Bool)

(assert (=> b!4096945 m!4703883))

(assert (=> d!1216265 d!1216377))

(declare-fun d!1216379 () Bool)

(declare-fun e!2542359 () Bool)

(assert (=> d!1216379 e!2542359))

(declare-fun res!1674886 () Bool)

(assert (=> d!1216379 (=> (not res!1674886) (not e!2542359))))

(declare-fun lt!1465391 () List!44056)

(assert (=> d!1216379 (= res!1674886 (= (content!6784 lt!1465391) ((_ map or) (content!6784 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))) (content!6784 (_2!24564 (get!14412 lt!1465270))))))))

(declare-fun e!2542358 () List!44056)

(assert (=> d!1216379 (= lt!1465391 e!2542358)))

(declare-fun c!705961 () Bool)

(assert (=> d!1216379 (= c!705961 ((_ is Nil!43932) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))))))

(assert (=> d!1216379 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270)))) (_2!24564 (get!14412 lt!1465270))) lt!1465391)))

(declare-fun b!4096948 () Bool)

(declare-fun res!1674885 () Bool)

(assert (=> b!4096948 (=> (not res!1674885) (not e!2542359))))

(assert (=> b!4096948 (= res!1674885 (= (size!32823 lt!1465391) (+ (size!32823 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))) (size!32823 (_2!24564 (get!14412 lt!1465270))))))))

(declare-fun b!4096946 () Bool)

(assert (=> b!4096946 (= e!2542358 (_2!24564 (get!14412 lt!1465270)))))

(declare-fun b!4096947 () Bool)

(assert (=> b!4096947 (= e!2542358 (Cons!43932 (h!49352 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))) (++!11518 (t!339271 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))) (_2!24564 (get!14412 lt!1465270)))))))

(declare-fun b!4096949 () Bool)

(assert (=> b!4096949 (= e!2542359 (or (not (= (_2!24564 (get!14412 lt!1465270)) Nil!43932)) (= lt!1465391 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270)))))))))

(assert (= (and d!1216379 c!705961) b!4096946))

(assert (= (and d!1216379 (not c!705961)) b!4096947))

(assert (= (and d!1216379 res!1674886) b!4096948))

(assert (= (and b!4096948 res!1674885) b!4096949))

(declare-fun m!4703885 () Bool)

(assert (=> d!1216379 m!4703885))

(assert (=> d!1216379 m!4703465))

(declare-fun m!4703887 () Bool)

(assert (=> d!1216379 m!4703887))

(declare-fun m!4703889 () Bool)

(assert (=> d!1216379 m!4703889))

(declare-fun m!4703891 () Bool)

(assert (=> b!4096948 m!4703891))

(assert (=> b!4096948 m!4703465))

(declare-fun m!4703893 () Bool)

(assert (=> b!4096948 m!4703893))

(assert (=> b!4096948 m!4703469))

(declare-fun m!4703895 () Bool)

(assert (=> b!4096947 m!4703895))

(assert (=> b!4096552 d!1216379))

(declare-fun d!1216381 () Bool)

(declare-fun list!16303 (Conc!13323) List!44056)

(assert (=> d!1216381 (= (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270)))) (list!16303 (c!705883 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))))))

(declare-fun bs!593586 () Bool)

(assert (= bs!593586 d!1216381))

(declare-fun m!4703897 () Bool)

(assert (=> bs!593586 m!4703897))

(assert (=> b!4096552 d!1216381))

(declare-fun d!1216383 () Bool)

(declare-fun lt!1465394 () BalanceConc!26240)

(assert (=> d!1216383 (= (list!16302 lt!1465394) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465270))))))

(assert (=> d!1216383 (= lt!1465394 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270))))) (value!223344 (_1!24564 (get!14412 lt!1465270)))))))

(assert (=> d!1216383 (= (charsOf!4868 (_1!24564 (get!14412 lt!1465270))) lt!1465394)))

(declare-fun b_lambda!120299 () Bool)

(assert (=> (not b_lambda!120299) (not d!1216383)))

(declare-fun tb!246501 () Bool)

(declare-fun t!339336 () Bool)

(assert (=> (and b!4096407 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))))) t!339336) tb!246501))

(declare-fun b!4096950 () Bool)

(declare-fun e!2542360 () Bool)

(declare-fun tp!1240009 () Bool)

(assert (=> b!4096950 (= e!2542360 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270))))) (value!223344 (_1!24564 (get!14412 lt!1465270)))))) tp!1240009))))

(declare-fun result!299142 () Bool)

(assert (=> tb!246501 (= result!299142 (and (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270))))) (value!223344 (_1!24564 (get!14412 lt!1465270))))) e!2542360))))

(assert (= tb!246501 b!4096950))

(declare-fun m!4703899 () Bool)

(assert (=> b!4096950 m!4703899))

(declare-fun m!4703901 () Bool)

(assert (=> tb!246501 m!4703901))

(assert (=> d!1216383 t!339336))

(declare-fun b_and!316059 () Bool)

(assert (= b_and!316015 (and (=> t!339336 result!299142) b_and!316059)))

(declare-fun tb!246503 () Bool)

(declare-fun t!339338 () Bool)

(assert (=> (and b!4096415 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))))) t!339338) tb!246503))

(declare-fun result!299144 () Bool)

(assert (= result!299144 result!299142))

(assert (=> d!1216383 t!339338))

(declare-fun b_and!316061 () Bool)

(assert (= b_and!316017 (and (=> t!339338 result!299144) b_and!316061)))

(declare-fun tb!246505 () Bool)

(declare-fun t!339340 () Bool)

(assert (=> (and b!4096832 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))))) t!339340) tb!246505))

(declare-fun result!299146 () Bool)

(assert (= result!299146 result!299142))

(assert (=> d!1216383 t!339340))

(declare-fun b_and!316063 () Bool)

(assert (= b_and!316033 (and (=> t!339340 result!299146) b_and!316063)))

(declare-fun m!4703903 () Bool)

(assert (=> d!1216383 m!4703903))

(declare-fun m!4703905 () Bool)

(assert (=> d!1216383 m!4703905))

(assert (=> b!4096552 d!1216383))

(assert (=> b!4096552 d!1216361))

(declare-fun d!1216385 () Bool)

(declare-fun lt!1465395 () Int)

(assert (=> d!1216385 (>= lt!1465395 0)))

(declare-fun e!2542361 () Int)

(assert (=> d!1216385 (= lt!1465395 e!2542361)))

(declare-fun c!705962 () Bool)

(assert (=> d!1216385 (= c!705962 ((_ is Nil!43932) (t!339271 p!2988)))))

(assert (=> d!1216385 (= (size!32823 (t!339271 p!2988)) lt!1465395)))

(declare-fun b!4096951 () Bool)

(assert (=> b!4096951 (= e!2542361 0)))

(declare-fun b!4096952 () Bool)

(assert (=> b!4096952 (= e!2542361 (+ 1 (size!32823 (t!339271 (t!339271 p!2988)))))))

(assert (= (and d!1216385 c!705962) b!4096951))

(assert (= (and d!1216385 (not c!705962)) b!4096952))

(declare-fun m!4703907 () Bool)

(assert (=> b!4096952 m!4703907))

(assert (=> b!4096714 d!1216385))

(assert (=> d!1216255 d!1216291))

(declare-fun d!1216387 () Bool)

(assert (=> d!1216387 (ruleValid!3032 thiss!26199 r!4213)))

(assert (=> d!1216387 true))

(declare-fun _$65!1596 () Unit!63463)

(assert (=> d!1216387 (= (choose!25031 thiss!26199 r!4213 (t!339272 rules!3870)) _$65!1596)))

(declare-fun bs!593587 () Bool)

(assert (= bs!593587 d!1216387))

(assert (=> bs!593587 m!4703231))

(assert (=> d!1216255 d!1216387))

(assert (=> d!1216255 d!1216187))

(declare-fun d!1216389 () Bool)

(assert (=> d!1216389 (= (list!16302 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))) (list!16303 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))))

(declare-fun bs!593588 () Bool)

(assert (= bs!593588 d!1216389))

(declare-fun m!4703909 () Bool)

(assert (=> bs!593588 m!4703909))

(assert (=> d!1216257 d!1216389))

(declare-fun d!1216391 () Bool)

(assert (=> d!1216391 (= (list!16302 lt!1465199) (list!16303 (c!705883 lt!1465199)))))

(declare-fun bs!593589 () Bool)

(assert (= bs!593589 d!1216391))

(declare-fun m!4703911 () Bool)

(assert (=> bs!593589 m!4703911))

(assert (=> d!1216257 d!1216391))

(declare-fun d!1216393 () Bool)

(declare-fun dynLambda!18844 (Int BalanceConc!26240) Bool)

(assert (=> d!1216393 (dynLambda!18844 lambda!128137 lt!1465199)))

(declare-fun lt!1465398 () Unit!63463)

(declare-fun choose!25034 (Int BalanceConc!26240) Unit!63463)

(assert (=> d!1216393 (= lt!1465398 (choose!25034 lambda!128137 lt!1465199))))

(declare-fun Forall!1521 (Int) Bool)

(assert (=> d!1216393 (Forall!1521 lambda!128137)))

(assert (=> d!1216393 (= (ForallOf!898 lambda!128137 lt!1465199) lt!1465398)))

(declare-fun b_lambda!120301 () Bool)

(assert (=> (not b_lambda!120301) (not d!1216393)))

(declare-fun bs!593590 () Bool)

(assert (= bs!593590 d!1216393))

(declare-fun m!4703913 () Bool)

(assert (=> bs!593590 m!4703913))

(declare-fun m!4703915 () Bool)

(assert (=> bs!593590 m!4703915))

(declare-fun m!4703917 () Bool)

(assert (=> bs!593590 m!4703917))

(assert (=> d!1216257 d!1216393))

(declare-fun d!1216395 () Bool)

(assert (=> d!1216395 (= (isEmpty!26291 lt!1465312) (not ((_ is Some!9517) lt!1465312)))))

(assert (=> d!1216261 d!1216395))

(declare-fun b!4096962 () Bool)

(declare-fun res!1674896 () Bool)

(declare-fun e!2542368 () Bool)

(assert (=> b!4096962 (=> (not res!1674896) (not e!2542368))))

(assert (=> b!4096962 (= res!1674896 (= (head!8660 input!3411) (head!8660 input!3411)))))

(declare-fun b!4096963 () Bool)

(assert (=> b!4096963 (= e!2542368 (isPrefix!4153 (tail!6394 input!3411) (tail!6394 input!3411)))))

(declare-fun b!4096964 () Bool)

(declare-fun e!2542369 () Bool)

(assert (=> b!4096964 (= e!2542369 (>= (size!32823 input!3411) (size!32823 input!3411)))))

(declare-fun b!4096961 () Bool)

(declare-fun e!2542370 () Bool)

(assert (=> b!4096961 (= e!2542370 e!2542368)))

(declare-fun res!1674895 () Bool)

(assert (=> b!4096961 (=> (not res!1674895) (not e!2542368))))

(assert (=> b!4096961 (= res!1674895 (not ((_ is Nil!43932) input!3411)))))

(declare-fun d!1216397 () Bool)

(assert (=> d!1216397 e!2542369))

(declare-fun res!1674898 () Bool)

(assert (=> d!1216397 (=> res!1674898 e!2542369)))

(declare-fun lt!1465401 () Bool)

(assert (=> d!1216397 (= res!1674898 (not lt!1465401))))

(assert (=> d!1216397 (= lt!1465401 e!2542370)))

(declare-fun res!1674897 () Bool)

(assert (=> d!1216397 (=> res!1674897 e!2542370)))

(assert (=> d!1216397 (= res!1674897 ((_ is Nil!43932) input!3411))))

(assert (=> d!1216397 (= (isPrefix!4153 input!3411 input!3411) lt!1465401)))

(assert (= (and d!1216397 (not res!1674897)) b!4096961))

(assert (= (and b!4096961 res!1674895) b!4096962))

(assert (= (and b!4096962 res!1674896) b!4096963))

(assert (= (and d!1216397 (not res!1674898)) b!4096964))

(declare-fun m!4703919 () Bool)

(assert (=> b!4096962 m!4703919))

(assert (=> b!4096962 m!4703919))

(declare-fun m!4703921 () Bool)

(assert (=> b!4096963 m!4703921))

(assert (=> b!4096963 m!4703921))

(assert (=> b!4096963 m!4703921))

(assert (=> b!4096963 m!4703921))

(declare-fun m!4703923 () Bool)

(assert (=> b!4096963 m!4703923))

(assert (=> b!4096964 m!4703471))

(assert (=> b!4096964 m!4703471))

(assert (=> d!1216261 d!1216397))

(declare-fun d!1216399 () Bool)

(assert (=> d!1216399 (isPrefix!4153 input!3411 input!3411)))

(declare-fun lt!1465404 () Unit!63463)

(declare-fun choose!25035 (List!44056 List!44056) Unit!63463)

(assert (=> d!1216399 (= lt!1465404 (choose!25035 input!3411 input!3411))))

(assert (=> d!1216399 (= (lemmaIsPrefixRefl!2704 input!3411 input!3411) lt!1465404)))

(declare-fun bs!593591 () Bool)

(assert (= bs!593591 d!1216399))

(assert (=> bs!593591 m!4703605))

(declare-fun m!4703925 () Bool)

(assert (=> bs!593591 m!4703925))

(assert (=> d!1216261 d!1216399))

(declare-fun d!1216401 () Bool)

(assert (=> d!1216401 true))

(declare-fun lt!1465407 () Bool)

(declare-fun lambda!128149 () Int)

(declare-fun forall!8418 (List!44057 Int) Bool)

(assert (=> d!1216401 (= lt!1465407 (forall!8418 rules!3870 lambda!128149))))

(declare-fun e!2542376 () Bool)

(assert (=> d!1216401 (= lt!1465407 e!2542376)))

(declare-fun res!1674904 () Bool)

(assert (=> d!1216401 (=> res!1674904 e!2542376)))

(assert (=> d!1216401 (= res!1674904 (not ((_ is Cons!43933) rules!3870)))))

(assert (=> d!1216401 (= (rulesValidInductive!2635 thiss!26199 rules!3870) lt!1465407)))

(declare-fun b!4096969 () Bool)

(declare-fun e!2542375 () Bool)

(assert (=> b!4096969 (= e!2542376 e!2542375)))

(declare-fun res!1674903 () Bool)

(assert (=> b!4096969 (=> (not res!1674903) (not e!2542375))))

(assert (=> b!4096969 (= res!1674903 (ruleValid!3032 thiss!26199 (h!49353 rules!3870)))))

(declare-fun b!4096970 () Bool)

(assert (=> b!4096970 (= e!2542375 (rulesValidInductive!2635 thiss!26199 (t!339272 rules!3870)))))

(assert (= (and d!1216401 (not res!1674904)) b!4096969))

(assert (= (and b!4096969 res!1674903) b!4096970))

(declare-fun m!4703927 () Bool)

(assert (=> d!1216401 m!4703927))

(assert (=> b!4096969 m!4703661))

(assert (=> b!4096970 m!4703695))

(assert (=> d!1216261 d!1216401))

(declare-fun d!1216403 () Bool)

(assert (=> d!1216403 (= (list!16302 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))) (list!16303 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))))))

(declare-fun bs!593592 () Bool)

(assert (= bs!593592 d!1216403))

(declare-fun m!4703929 () Bool)

(assert (=> bs!593592 m!4703929))

(assert (=> b!4096442 d!1216403))

(assert (=> b!4096723 d!1216365))

(declare-fun d!1216405 () Bool)

(assert (=> d!1216405 (= (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319))))) (dynLambda!18839 (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319))))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319))))))))

(declare-fun b_lambda!120303 () Bool)

(assert (=> (not b_lambda!120303) (not d!1216405)))

(declare-fun t!339342 () Bool)

(declare-fun tb!246507 () Bool)

(assert (=> (and b!4096407 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))))) t!339342) tb!246507))

(declare-fun result!299148 () Bool)

(assert (=> tb!246507 (= result!299148 (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319))))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319)))))))))

(declare-fun m!4703931 () Bool)

(assert (=> tb!246507 m!4703931))

(assert (=> d!1216405 t!339342))

(declare-fun b_and!316065 () Bool)

(assert (= b_and!316053 (and (=> t!339342 result!299148) b_and!316065)))

(declare-fun tb!246509 () Bool)

(declare-fun t!339344 () Bool)

(assert (=> (and b!4096415 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))))) t!339344) tb!246509))

(declare-fun result!299150 () Bool)

(assert (= result!299150 result!299148))

(assert (=> d!1216405 t!339344))

(declare-fun b_and!316067 () Bool)

(assert (= b_and!316055 (and (=> t!339344 result!299150) b_and!316067)))

(declare-fun tb!246511 () Bool)

(declare-fun t!339346 () Bool)

(assert (=> (and b!4096832 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))))) t!339346) tb!246511))

(declare-fun result!299152 () Bool)

(assert (= result!299152 result!299148))

(assert (=> d!1216405 t!339346))

(declare-fun b_and!316069 () Bool)

(assert (= b_and!316057 (and (=> t!339346 result!299152) b_and!316069)))

(assert (=> d!1216405 m!4703665))

(declare-fun m!4703933 () Bool)

(assert (=> d!1216405 m!4703933))

(assert (=> b!4096723 d!1216405))

(declare-fun d!1216407 () Bool)

(assert (=> d!1216407 (= (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319)))) (fromListB!2445 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319)))))))

(declare-fun bs!593593 () Bool)

(assert (= bs!593593 d!1216407))

(declare-fun m!4703935 () Bool)

(assert (=> bs!593593 m!4703935))

(assert (=> b!4096723 d!1216407))

(declare-fun d!1216409 () Bool)

(assert (=> d!1216409 (= (isEmpty!26291 lt!1465319) (not ((_ is Some!9517) lt!1465319)))))

(assert (=> d!1216277 d!1216409))

(declare-fun d!1216411 () Bool)

(assert (=> d!1216411 (= (isEmpty!26289 (_1!24566 lt!1465320)) ((_ is Nil!43932) (_1!24566 lt!1465320)))))

(assert (=> d!1216277 d!1216411))

(declare-fun d!1216413 () Bool)

(declare-fun lt!1465415 () tuple2!42864)

(assert (=> d!1216413 (= (++!11518 (_1!24566 lt!1465415) (_2!24566 lt!1465415)) input!3411)))

(assert (=> d!1216413 (= lt!1465415 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 0 input!3411 input!3411 (sizeTr!295 input!3411 0)))))

(declare-fun lt!1465414 () Unit!63463)

(declare-fun lt!1465411 () Unit!63463)

(assert (=> d!1216413 (= lt!1465414 lt!1465411)))

(declare-fun lt!1465408 () List!44056)

(declare-fun lt!1465412 () Int)

(assert (=> d!1216413 (= (sizeTr!295 lt!1465408 lt!1465412) (+ (size!32823 lt!1465408) lt!1465412))))

(assert (=> d!1216413 (= lt!1465411 (lemmaSizeTrEqualsSize!294 lt!1465408 lt!1465412))))

(assert (=> d!1216413 (= lt!1465412 0)))

(assert (=> d!1216413 (= lt!1465408 Nil!43932)))

(declare-fun lt!1465409 () Unit!63463)

(declare-fun lt!1465410 () Unit!63463)

(assert (=> d!1216413 (= lt!1465409 lt!1465410)))

(declare-fun lt!1465413 () Int)

(assert (=> d!1216413 (= (sizeTr!295 input!3411 lt!1465413) (+ (size!32823 input!3411) lt!1465413))))

(assert (=> d!1216413 (= lt!1465410 (lemmaSizeTrEqualsSize!294 input!3411 lt!1465413))))

(assert (=> d!1216413 (= lt!1465413 0)))

(assert (=> d!1216413 (validRegex!5449 (regex!7112 (h!49353 rules!3870)))))

(assert (=> d!1216413 (= (findLongestMatch!1387 (regex!7112 (h!49353 rules!3870)) input!3411) lt!1465415)))

(declare-fun bs!593594 () Bool)

(assert (= bs!593594 d!1216413))

(assert (=> bs!593594 m!4703849))

(declare-fun m!4703937 () Bool)

(assert (=> bs!593594 m!4703937))

(assert (=> bs!593594 m!4703471))

(declare-fun m!4703939 () Bool)

(assert (=> bs!593594 m!4703939))

(declare-fun m!4703941 () Bool)

(assert (=> bs!593594 m!4703941))

(declare-fun m!4703943 () Bool)

(assert (=> bs!593594 m!4703943))

(declare-fun m!4703945 () Bool)

(assert (=> bs!593594 m!4703945))

(declare-fun m!4703947 () Bool)

(assert (=> bs!593594 m!4703947))

(assert (=> bs!593594 m!4703849))

(declare-fun m!4703949 () Bool)

(assert (=> bs!593594 m!4703949))

(declare-fun m!4703951 () Bool)

(assert (=> bs!593594 m!4703951))

(assert (=> d!1216277 d!1216413))

(declare-fun d!1216415 () Bool)

(declare-fun res!1674905 () Bool)

(declare-fun e!2542378 () Bool)

(assert (=> d!1216415 (=> (not res!1674905) (not e!2542378))))

(assert (=> d!1216415 (= res!1674905 (validRegex!5449 (regex!7112 (h!49353 rules!3870))))))

(assert (=> d!1216415 (= (ruleValid!3032 thiss!26199 (h!49353 rules!3870)) e!2542378)))

(declare-fun b!4096973 () Bool)

(declare-fun res!1674906 () Bool)

(assert (=> b!4096973 (=> (not res!1674906) (not e!2542378))))

(assert (=> b!4096973 (= res!1674906 (not (nullable!4249 (regex!7112 (h!49353 rules!3870)))))))

(declare-fun b!4096974 () Bool)

(assert (=> b!4096974 (= e!2542378 (not (= (tag!7972 (h!49353 rules!3870)) (String!50461 ""))))))

(assert (= (and d!1216415 res!1674905) b!4096973))

(assert (= (and b!4096973 res!1674906) b!4096974))

(assert (=> d!1216415 m!4703941))

(declare-fun m!4703953 () Bool)

(assert (=> b!4096973 m!4703953))

(assert (=> d!1216277 d!1216415))

(declare-fun d!1216417 () Bool)

(assert (=> d!1216417 (= (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329)))) (list!16303 (c!705883 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))))))

(declare-fun bs!593595 () Bool)

(assert (= bs!593595 d!1216417))

(declare-fun m!4703955 () Bool)

(assert (=> bs!593595 m!4703955))

(assert (=> b!4096737 d!1216417))

(declare-fun d!1216419 () Bool)

(declare-fun lt!1465416 () BalanceConc!26240)

(assert (=> d!1216419 (= (list!16302 lt!1465416) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465329))))))

(assert (=> d!1216419 (= lt!1465416 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))) (value!223344 (_1!24564 (get!14412 lt!1465329)))))))

(assert (=> d!1216419 (= (charsOf!4868 (_1!24564 (get!14412 lt!1465329))) lt!1465416)))

(declare-fun b_lambda!120305 () Bool)

(assert (=> (not b_lambda!120305) (not d!1216419)))

(declare-fun tb!246513 () Bool)

(declare-fun t!339348 () Bool)

(assert (=> (and b!4096407 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))) t!339348) tb!246513))

(declare-fun b!4096975 () Bool)

(declare-fun e!2542379 () Bool)

(declare-fun tp!1240010 () Bool)

(assert (=> b!4096975 (= e!2542379 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))) (value!223344 (_1!24564 (get!14412 lt!1465329)))))) tp!1240010))))

(declare-fun result!299154 () Bool)

(assert (=> tb!246513 (= result!299154 (and (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))) (value!223344 (_1!24564 (get!14412 lt!1465329))))) e!2542379))))

(assert (= tb!246513 b!4096975))

(declare-fun m!4703957 () Bool)

(assert (=> b!4096975 m!4703957))

(declare-fun m!4703959 () Bool)

(assert (=> tb!246513 m!4703959))

(assert (=> d!1216419 t!339348))

(declare-fun b_and!316071 () Bool)

(assert (= b_and!316059 (and (=> t!339348 result!299154) b_and!316071)))

(declare-fun tb!246515 () Bool)

(declare-fun t!339350 () Bool)

(assert (=> (and b!4096415 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))) t!339350) tb!246515))

(declare-fun result!299156 () Bool)

(assert (= result!299156 result!299154))

(assert (=> d!1216419 t!339350))

(declare-fun b_and!316073 () Bool)

(assert (= b_and!316061 (and (=> t!339350 result!299156) b_and!316073)))

(declare-fun tb!246517 () Bool)

(declare-fun t!339352 () Bool)

(assert (=> (and b!4096832 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))) t!339352) tb!246517))

(declare-fun result!299158 () Bool)

(assert (= result!299158 result!299154))

(assert (=> d!1216419 t!339352))

(declare-fun b_and!316075 () Bool)

(assert (= b_and!316063 (and (=> t!339352 result!299158) b_and!316075)))

(declare-fun m!4703961 () Bool)

(assert (=> d!1216419 m!4703961))

(declare-fun m!4703963 () Bool)

(assert (=> d!1216419 m!4703963))

(assert (=> b!4096737 d!1216419))

(declare-fun d!1216421 () Bool)

(assert (=> d!1216421 (= (get!14412 lt!1465329) (v!40017 lt!1465329))))

(assert (=> b!4096737 d!1216421))

(declare-fun bs!593596 () Bool)

(declare-fun d!1216423 () Bool)

(assert (= bs!593596 (and d!1216423 d!1216401)))

(declare-fun lambda!128152 () Int)

(assert (=> bs!593596 (= lambda!128152 lambda!128149)))

(assert (=> d!1216423 true))

(declare-fun lt!1465419 () Bool)

(assert (=> d!1216423 (= lt!1465419 (rulesValidInductive!2635 thiss!26199 rules!3870))))

(assert (=> d!1216423 (= lt!1465419 (forall!8418 rules!3870 lambda!128152))))

(assert (=> d!1216423 (= (rulesValid!2796 thiss!26199 rules!3870) lt!1465419)))

(declare-fun bs!593597 () Bool)

(assert (= bs!593597 d!1216423))

(assert (=> bs!593597 m!4703609))

(declare-fun m!4703965 () Bool)

(assert (=> bs!593597 m!4703965))

(assert (=> d!1216273 d!1216423))

(declare-fun d!1216425 () Bool)

(declare-fun lt!1465420 () Bool)

(assert (=> d!1216425 (= lt!1465420 (select (content!6781 (t!339272 (t!339272 rules!3870))) r!4213))))

(declare-fun e!2542380 () Bool)

(assert (=> d!1216425 (= lt!1465420 e!2542380)))

(declare-fun res!1674908 () Bool)

(assert (=> d!1216425 (=> (not res!1674908) (not e!2542380))))

(assert (=> d!1216425 (= res!1674908 ((_ is Cons!43933) (t!339272 (t!339272 rules!3870))))))

(assert (=> d!1216425 (= (contains!8797 (t!339272 (t!339272 rules!3870)) r!4213) lt!1465420)))

(declare-fun b!4096976 () Bool)

(declare-fun e!2542381 () Bool)

(assert (=> b!4096976 (= e!2542380 e!2542381)))

(declare-fun res!1674907 () Bool)

(assert (=> b!4096976 (=> res!1674907 e!2542381)))

(assert (=> b!4096976 (= res!1674907 (= (h!49353 (t!339272 (t!339272 rules!3870))) r!4213))))

(declare-fun b!4096977 () Bool)

(assert (=> b!4096977 (= e!2542381 (contains!8797 (t!339272 (t!339272 (t!339272 rules!3870))) r!4213))))

(assert (= (and d!1216425 res!1674908) b!4096976))

(assert (= (and b!4096976 (not res!1674907)) b!4096977))

(declare-fun m!4703967 () Bool)

(assert (=> d!1216425 m!4703967))

(declare-fun m!4703969 () Bool)

(assert (=> d!1216425 m!4703969))

(declare-fun m!4703971 () Bool)

(assert (=> b!4096977 m!4703971))

(assert (=> b!4096436 d!1216425))

(declare-fun d!1216427 () Bool)

(assert (=> d!1216427 (= (isDefined!7202 lt!1465329) (not (isEmpty!26291 lt!1465329)))))

(declare-fun bs!593598 () Bool)

(assert (= bs!593598 d!1216427))

(assert (=> bs!593598 m!4703693))

(assert (=> b!4096733 d!1216427))

(declare-fun d!1216429 () Bool)

(declare-fun e!2542383 () Bool)

(assert (=> d!1216429 e!2542383))

(declare-fun res!1674910 () Bool)

(assert (=> d!1216429 (=> (not res!1674910) (not e!2542383))))

(declare-fun lt!1465421 () List!44056)

(assert (=> d!1216429 (= res!1674910 (= (content!6784 lt!1465421) ((_ map or) (content!6784 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))) (content!6784 (_2!24564 (get!14412 lt!1465319))))))))

(declare-fun e!2542382 () List!44056)

(assert (=> d!1216429 (= lt!1465421 e!2542382)))

(declare-fun c!705963 () Bool)

(assert (=> d!1216429 (= c!705963 ((_ is Nil!43932) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))))))

(assert (=> d!1216429 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319)))) (_2!24564 (get!14412 lt!1465319))) lt!1465421)))

(declare-fun b!4096980 () Bool)

(declare-fun res!1674909 () Bool)

(assert (=> b!4096980 (=> (not res!1674909) (not e!2542383))))

(assert (=> b!4096980 (= res!1674909 (= (size!32823 lt!1465421) (+ (size!32823 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))) (size!32823 (_2!24564 (get!14412 lt!1465319))))))))

(declare-fun b!4096978 () Bool)

(assert (=> b!4096978 (= e!2542382 (_2!24564 (get!14412 lt!1465319)))))

(declare-fun b!4096979 () Bool)

(assert (=> b!4096979 (= e!2542382 (Cons!43932 (h!49352 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))) (++!11518 (t!339271 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))) (_2!24564 (get!14412 lt!1465319)))))))

(declare-fun b!4096981 () Bool)

(assert (=> b!4096981 (= e!2542383 (or (not (= (_2!24564 (get!14412 lt!1465319)) Nil!43932)) (= lt!1465421 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319)))))))))

(assert (= (and d!1216429 c!705963) b!4096978))

(assert (= (and d!1216429 (not c!705963)) b!4096979))

(assert (= (and d!1216429 res!1674910) b!4096980))

(assert (= (and b!4096980 res!1674909) b!4096981))

(declare-fun m!4703973 () Bool)

(assert (=> d!1216429 m!4703973))

(assert (=> d!1216429 m!4703647))

(declare-fun m!4703975 () Bool)

(assert (=> d!1216429 m!4703975))

(declare-fun m!4703977 () Bool)

(assert (=> d!1216429 m!4703977))

(declare-fun m!4703979 () Bool)

(assert (=> b!4096980 m!4703979))

(assert (=> b!4096980 m!4703647))

(declare-fun m!4703981 () Bool)

(assert (=> b!4096980 m!4703981))

(assert (=> b!4096980 m!4703651))

(declare-fun m!4703983 () Bool)

(assert (=> b!4096979 m!4703983))

(assert (=> b!4096721 d!1216429))

(declare-fun d!1216431 () Bool)

(assert (=> d!1216431 (= (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319)))) (list!16303 (c!705883 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))))))

(declare-fun bs!593599 () Bool)

(assert (= bs!593599 d!1216431))

(declare-fun m!4703985 () Bool)

(assert (=> bs!593599 m!4703985))

(assert (=> b!4096721 d!1216431))

(declare-fun d!1216433 () Bool)

(declare-fun lt!1465422 () BalanceConc!26240)

(assert (=> d!1216433 (= (list!16302 lt!1465422) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465319))))))

(assert (=> d!1216433 (= lt!1465422 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319))))) (value!223344 (_1!24564 (get!14412 lt!1465319)))))))

(assert (=> d!1216433 (= (charsOf!4868 (_1!24564 (get!14412 lt!1465319))) lt!1465422)))

(declare-fun b_lambda!120307 () Bool)

(assert (=> (not b_lambda!120307) (not d!1216433)))

(declare-fun tb!246519 () Bool)

(declare-fun t!339354 () Bool)

(assert (=> (and b!4096407 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))))) t!339354) tb!246519))

(declare-fun b!4096982 () Bool)

(declare-fun e!2542384 () Bool)

(declare-fun tp!1240011 () Bool)

(assert (=> b!4096982 (= e!2542384 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319))))) (value!223344 (_1!24564 (get!14412 lt!1465319)))))) tp!1240011))))

(declare-fun result!299160 () Bool)

(assert (=> tb!246519 (= result!299160 (and (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319))))) (value!223344 (_1!24564 (get!14412 lt!1465319))))) e!2542384))))

(assert (= tb!246519 b!4096982))

(declare-fun m!4703987 () Bool)

(assert (=> b!4096982 m!4703987))

(declare-fun m!4703989 () Bool)

(assert (=> tb!246519 m!4703989))

(assert (=> d!1216433 t!339354))

(declare-fun b_and!316077 () Bool)

(assert (= b_and!316071 (and (=> t!339354 result!299160) b_and!316077)))

(declare-fun t!339356 () Bool)

(declare-fun tb!246521 () Bool)

(assert (=> (and b!4096415 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))))) t!339356) tb!246521))

(declare-fun result!299162 () Bool)

(assert (= result!299162 result!299160))

(assert (=> d!1216433 t!339356))

(declare-fun b_and!316079 () Bool)

(assert (= b_and!316073 (and (=> t!339356 result!299162) b_and!316079)))

(declare-fun t!339358 () Bool)

(declare-fun tb!246523 () Bool)

(assert (=> (and b!4096832 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))))) t!339358) tb!246523))

(declare-fun result!299164 () Bool)

(assert (= result!299164 result!299160))

(assert (=> d!1216433 t!339358))

(declare-fun b_and!316081 () Bool)

(assert (= b_and!316075 (and (=> t!339358 result!299164) b_and!316081)))

(declare-fun m!4703991 () Bool)

(assert (=> d!1216433 m!4703991))

(declare-fun m!4703993 () Bool)

(assert (=> d!1216433 m!4703993))

(assert (=> b!4096721 d!1216433))

(assert (=> b!4096721 d!1216365))

(declare-fun d!1216435 () Bool)

(declare-fun e!2542386 () Bool)

(assert (=> d!1216435 e!2542386))

(declare-fun res!1674912 () Bool)

(assert (=> d!1216435 (=> (not res!1674912) (not e!2542386))))

(declare-fun lt!1465423 () List!44056)

(assert (=> d!1216435 (= res!1674912 (= (content!6784 lt!1465423) ((_ map or) (content!6784 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))) (content!6784 (_2!24564 (get!14412 lt!1465329))))))))

(declare-fun e!2542385 () List!44056)

(assert (=> d!1216435 (= lt!1465423 e!2542385)))

(declare-fun c!705964 () Bool)

(assert (=> d!1216435 (= c!705964 ((_ is Nil!43932) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))))))

(assert (=> d!1216435 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329)))) (_2!24564 (get!14412 lt!1465329))) lt!1465423)))

(declare-fun b!4096985 () Bool)

(declare-fun res!1674911 () Bool)

(assert (=> b!4096985 (=> (not res!1674911) (not e!2542386))))

(assert (=> b!4096985 (= res!1674911 (= (size!32823 lt!1465423) (+ (size!32823 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))) (size!32823 (_2!24564 (get!14412 lt!1465329))))))))

(declare-fun b!4096983 () Bool)

(assert (=> b!4096983 (= e!2542385 (_2!24564 (get!14412 lt!1465329)))))

(declare-fun b!4096984 () Bool)

(assert (=> b!4096984 (= e!2542385 (Cons!43932 (h!49352 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))) (++!11518 (t!339271 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))) (_2!24564 (get!14412 lt!1465329)))))))

(declare-fun b!4096986 () Bool)

(assert (=> b!4096986 (= e!2542386 (or (not (= (_2!24564 (get!14412 lt!1465329)) Nil!43932)) (= lt!1465423 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329)))))))))

(assert (= (and d!1216435 c!705964) b!4096983))

(assert (= (and d!1216435 (not c!705964)) b!4096984))

(assert (= (and d!1216435 res!1674912) b!4096985))

(assert (= (and b!4096985 res!1674911) b!4096986))

(declare-fun m!4703995 () Bool)

(assert (=> d!1216435 m!4703995))

(assert (=> d!1216435 m!4703703))

(declare-fun m!4703997 () Bool)

(assert (=> d!1216435 m!4703997))

(declare-fun m!4703999 () Bool)

(assert (=> d!1216435 m!4703999))

(declare-fun m!4704001 () Bool)

(assert (=> b!4096985 m!4704001))

(assert (=> b!4096985 m!4703703))

(declare-fun m!4704003 () Bool)

(assert (=> b!4096985 m!4704003))

(assert (=> b!4096985 m!4703699))

(declare-fun m!4704005 () Bool)

(assert (=> b!4096984 m!4704005))

(assert (=> b!4096735 d!1216435))

(assert (=> b!4096735 d!1216417))

(assert (=> b!4096735 d!1216419))

(assert (=> b!4096735 d!1216421))

(assert (=> d!1216281 d!1216279))

(declare-fun d!1216437 () Bool)

(assert (=> d!1216437 (rulesInvariant!6044 thiss!26199 (t!339272 rules!3870))))

(assert (=> d!1216437 true))

(declare-fun _$66!605 () Unit!63463)

(assert (=> d!1216437 (= (choose!25032 thiss!26199 (h!49353 rules!3870) (t!339272 rules!3870)) _$66!605)))

(declare-fun bs!593600 () Bool)

(assert (= bs!593600 d!1216437))

(assert (=> bs!593600 m!4703255))

(assert (=> d!1216281 d!1216437))

(declare-fun d!1216439 () Bool)

(declare-fun res!1674913 () Bool)

(declare-fun e!2542387 () Bool)

(assert (=> d!1216439 (=> (not res!1674913) (not e!2542387))))

(assert (=> d!1216439 (= res!1674913 (rulesValid!2796 thiss!26199 (Cons!43933 (h!49353 rules!3870) (t!339272 rules!3870))))))

(assert (=> d!1216439 (= (rulesInvariant!6044 thiss!26199 (Cons!43933 (h!49353 rules!3870) (t!339272 rules!3870))) e!2542387)))

(declare-fun b!4096987 () Bool)

(assert (=> b!4096987 (= e!2542387 (noDuplicateTag!2797 thiss!26199 (Cons!43933 (h!49353 rules!3870) (t!339272 rules!3870)) Nil!43935))))

(assert (= (and d!1216439 res!1674913) b!4096987))

(declare-fun m!4704007 () Bool)

(assert (=> d!1216439 m!4704007))

(declare-fun m!4704009 () Bool)

(assert (=> b!4096987 m!4704009))

(assert (=> d!1216281 d!1216439))

(declare-fun d!1216441 () Bool)

(assert (=> d!1216441 (= (head!8660 p!2988) (h!49352 p!2988))))

(assert (=> b!4096789 d!1216441))

(declare-fun d!1216443 () Bool)

(declare-fun lt!1465424 () Int)

(assert (=> d!1216443 (>= lt!1465424 0)))

(declare-fun e!2542388 () Int)

(assert (=> d!1216443 (= lt!1465424 e!2542388)))

(declare-fun c!705965 () Bool)

(assert (=> d!1216443 (= c!705965 ((_ is Nil!43932) (_2!24564 (get!14412 lt!1465329))))))

(assert (=> d!1216443 (= (size!32823 (_2!24564 (get!14412 lt!1465329))) lt!1465424)))

(declare-fun b!4096988 () Bool)

(assert (=> b!4096988 (= e!2542388 0)))

(declare-fun b!4096989 () Bool)

(assert (=> b!4096989 (= e!2542388 (+ 1 (size!32823 (t!339271 (_2!24564 (get!14412 lt!1465329))))))))

(assert (= (and d!1216443 c!705965) b!4096988))

(assert (= (and d!1216443 (not c!705965)) b!4096989))

(declare-fun m!4704011 () Bool)

(assert (=> b!4096989 m!4704011))

(assert (=> b!4096730 d!1216443))

(assert (=> b!4096730 d!1216421))

(declare-fun d!1216445 () Bool)

(declare-fun lt!1465425 () Int)

(assert (=> d!1216445 (>= lt!1465425 0)))

(declare-fun e!2542389 () Int)

(assert (=> d!1216445 (= lt!1465425 e!2542389)))

(declare-fun c!705966 () Bool)

(assert (=> d!1216445 (= c!705966 ((_ is Nil!43932) input!3411))))

(assert (=> d!1216445 (= (size!32823 input!3411) lt!1465425)))

(declare-fun b!4096990 () Bool)

(assert (=> b!4096990 (= e!2542389 0)))

(declare-fun b!4096991 () Bool)

(assert (=> b!4096991 (= e!2542389 (+ 1 (size!32823 (t!339271 input!3411))))))

(assert (= (and d!1216445 c!705966) b!4096990))

(assert (= (and d!1216445 (not c!705966)) b!4096991))

(declare-fun m!4704013 () Bool)

(assert (=> b!4096991 m!4704013))

(assert (=> b!4096730 d!1216445))

(declare-fun bm!289508 () Bool)

(declare-fun call!289513 () Option!9518)

(assert (=> bm!289508 (= call!289513 (maxPrefixOneRule!2973 thiss!26199 (h!49353 (t!339272 (t!339272 rules!3870))) input!3411))))

(declare-fun d!1216447 () Bool)

(declare-fun e!2542390 () Bool)

(assert (=> d!1216447 e!2542390))

(declare-fun res!1674914 () Bool)

(assert (=> d!1216447 (=> res!1674914 e!2542390)))

(declare-fun lt!1465429 () Option!9518)

(assert (=> d!1216447 (= res!1674914 (isEmpty!26291 lt!1465429))))

(declare-fun e!2542391 () Option!9518)

(assert (=> d!1216447 (= lt!1465429 e!2542391)))

(declare-fun c!705967 () Bool)

(assert (=> d!1216447 (= c!705967 (and ((_ is Cons!43933) (t!339272 (t!339272 rules!3870))) ((_ is Nil!43933) (t!339272 (t!339272 (t!339272 rules!3870))))))))

(declare-fun lt!1465430 () Unit!63463)

(declare-fun lt!1465427 () Unit!63463)

(assert (=> d!1216447 (= lt!1465430 lt!1465427)))

(assert (=> d!1216447 (isPrefix!4153 input!3411 input!3411)))

(assert (=> d!1216447 (= lt!1465427 (lemmaIsPrefixRefl!2704 input!3411 input!3411))))

(assert (=> d!1216447 (rulesValidInductive!2635 thiss!26199 (t!339272 (t!339272 rules!3870)))))

(assert (=> d!1216447 (= (maxPrefix!3991 thiss!26199 (t!339272 (t!339272 rules!3870)) input!3411) lt!1465429)))

(declare-fun b!4096992 () Bool)

(declare-fun res!1674918 () Bool)

(declare-fun e!2542392 () Bool)

(assert (=> b!4096992 (=> (not res!1674918) (not e!2542392))))

(assert (=> b!4096992 (= res!1674918 (< (size!32823 (_2!24564 (get!14412 lt!1465429))) (size!32823 input!3411)))))

(declare-fun b!4096993 () Bool)

(declare-fun res!1674920 () Bool)

(assert (=> b!4096993 (=> (not res!1674920) (not e!2542392))))

(assert (=> b!4096993 (= res!1674920 (matchR!5958 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465429)))) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465429))))))))

(declare-fun b!4096994 () Bool)

(declare-fun lt!1465428 () Option!9518)

(declare-fun lt!1465426 () Option!9518)

(assert (=> b!4096994 (= e!2542391 (ite (and ((_ is None!9517) lt!1465428) ((_ is None!9517) lt!1465426)) None!9517 (ite ((_ is None!9517) lt!1465426) lt!1465428 (ite ((_ is None!9517) lt!1465428) lt!1465426 (ite (>= (size!32822 (_1!24564 (v!40017 lt!1465428))) (size!32822 (_1!24564 (v!40017 lt!1465426)))) lt!1465428 lt!1465426)))))))

(assert (=> b!4096994 (= lt!1465428 call!289513)))

(assert (=> b!4096994 (= lt!1465426 (maxPrefix!3991 thiss!26199 (t!339272 (t!339272 (t!339272 rules!3870))) input!3411))))

(declare-fun b!4096995 () Bool)

(assert (=> b!4096995 (= e!2542390 e!2542392)))

(declare-fun res!1674919 () Bool)

(assert (=> b!4096995 (=> (not res!1674919) (not e!2542392))))

(assert (=> b!4096995 (= res!1674919 (isDefined!7202 lt!1465429))))

(declare-fun b!4096996 () Bool)

(assert (=> b!4096996 (= e!2542392 (contains!8797 (t!339272 (t!339272 rules!3870)) (rule!10266 (_1!24564 (get!14412 lt!1465429)))))))

(declare-fun b!4096997 () Bool)

(declare-fun res!1674915 () Bool)

(assert (=> b!4096997 (=> (not res!1674915) (not e!2542392))))

(assert (=> b!4096997 (= res!1674915 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465429)))) (_2!24564 (get!14412 lt!1465429))) input!3411))))

(declare-fun b!4096998 () Bool)

(assert (=> b!4096998 (= e!2542391 call!289513)))

(declare-fun b!4096999 () Bool)

(declare-fun res!1674916 () Bool)

(assert (=> b!4096999 (=> (not res!1674916) (not e!2542392))))

(assert (=> b!4096999 (= res!1674916 (= (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465429)))) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465429)))))))

(declare-fun b!4097000 () Bool)

(declare-fun res!1674917 () Bool)

(assert (=> b!4097000 (=> (not res!1674917) (not e!2542392))))

(assert (=> b!4097000 (= res!1674917 (= (value!223344 (_1!24564 (get!14412 lt!1465429))) (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465429)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465429)))))))))

(assert (= (and d!1216447 c!705967) b!4096998))

(assert (= (and d!1216447 (not c!705967)) b!4096994))

(assert (= (or b!4096998 b!4096994) bm!289508))

(assert (= (and d!1216447 (not res!1674914)) b!4096995))

(assert (= (and b!4096995 res!1674919) b!4096999))

(assert (= (and b!4096999 res!1674916) b!4096992))

(assert (= (and b!4096992 res!1674918) b!4096997))

(assert (= (and b!4096997 res!1674915) b!4097000))

(assert (= (and b!4097000 res!1674917) b!4096993))

(assert (= (and b!4096993 res!1674920) b!4096996))

(declare-fun m!4704015 () Bool)

(assert (=> d!1216447 m!4704015))

(assert (=> d!1216447 m!4703605))

(assert (=> d!1216447 m!4703607))

(declare-fun m!4704017 () Bool)

(assert (=> d!1216447 m!4704017))

(declare-fun m!4704019 () Bool)

(assert (=> b!4096992 m!4704019))

(declare-fun m!4704021 () Bool)

(assert (=> b!4096992 m!4704021))

(assert (=> b!4096992 m!4703471))

(assert (=> b!4096999 m!4704019))

(declare-fun m!4704023 () Bool)

(assert (=> b!4096999 m!4704023))

(assert (=> b!4096999 m!4704023))

(declare-fun m!4704025 () Bool)

(assert (=> b!4096999 m!4704025))

(assert (=> b!4096997 m!4704019))

(assert (=> b!4096997 m!4704023))

(assert (=> b!4096997 m!4704023))

(assert (=> b!4096997 m!4704025))

(assert (=> b!4096997 m!4704025))

(declare-fun m!4704027 () Bool)

(assert (=> b!4096997 m!4704027))

(assert (=> b!4097000 m!4704019))

(declare-fun m!4704029 () Bool)

(assert (=> b!4097000 m!4704029))

(assert (=> b!4097000 m!4704029))

(declare-fun m!4704031 () Bool)

(assert (=> b!4097000 m!4704031))

(assert (=> b!4096993 m!4704019))

(assert (=> b!4096993 m!4704023))

(assert (=> b!4096993 m!4704023))

(assert (=> b!4096993 m!4704025))

(assert (=> b!4096993 m!4704025))

(declare-fun m!4704033 () Bool)

(assert (=> b!4096993 m!4704033))

(declare-fun m!4704035 () Bool)

(assert (=> b!4096995 m!4704035))

(assert (=> b!4096996 m!4704019))

(declare-fun m!4704037 () Bool)

(assert (=> b!4096996 m!4704037))

(declare-fun m!4704039 () Bool)

(assert (=> b!4096994 m!4704039))

(declare-fun m!4704041 () Bool)

(assert (=> bm!289508 m!4704041))

(assert (=> b!4096732 d!1216447))

(declare-fun d!1216449 () Bool)

(assert (=> d!1216449 (= (isEmpty!26291 lt!1465329) (not ((_ is Some!9517) lt!1465329)))))

(assert (=> d!1216285 d!1216449))

(assert (=> d!1216285 d!1216397))

(assert (=> d!1216285 d!1216399))

(declare-fun bs!593601 () Bool)

(declare-fun d!1216451 () Bool)

(assert (= bs!593601 (and d!1216451 d!1216401)))

(declare-fun lambda!128153 () Int)

(assert (=> bs!593601 (= lambda!128153 lambda!128149)))

(declare-fun bs!593602 () Bool)

(assert (= bs!593602 (and d!1216451 d!1216423)))

(assert (=> bs!593602 (= lambda!128153 lambda!128152)))

(assert (=> d!1216451 true))

(declare-fun lt!1465431 () Bool)

(assert (=> d!1216451 (= lt!1465431 (forall!8418 (t!339272 rules!3870) lambda!128153))))

(declare-fun e!2542394 () Bool)

(assert (=> d!1216451 (= lt!1465431 e!2542394)))

(declare-fun res!1674922 () Bool)

(assert (=> d!1216451 (=> res!1674922 e!2542394)))

(assert (=> d!1216451 (= res!1674922 (not ((_ is Cons!43933) (t!339272 rules!3870))))))

(assert (=> d!1216451 (= (rulesValidInductive!2635 thiss!26199 (t!339272 rules!3870)) lt!1465431)))

(declare-fun b!4097001 () Bool)

(declare-fun e!2542393 () Bool)

(assert (=> b!4097001 (= e!2542394 e!2542393)))

(declare-fun res!1674921 () Bool)

(assert (=> b!4097001 (=> (not res!1674921) (not e!2542393))))

(assert (=> b!4097001 (= res!1674921 (ruleValid!3032 thiss!26199 (h!49353 (t!339272 rules!3870))))))

(declare-fun b!4097002 () Bool)

(assert (=> b!4097002 (= e!2542393 (rulesValidInductive!2635 thiss!26199 (t!339272 (t!339272 rules!3870))))))

(assert (= (and d!1216451 (not res!1674922)) b!4097001))

(assert (= (and b!4097001 res!1674921) b!4097002))

(declare-fun m!4704043 () Bool)

(assert (=> d!1216451 m!4704043))

(declare-fun m!4704045 () Bool)

(assert (=> b!4097001 m!4704045))

(assert (=> b!4097002 m!4704017))

(assert (=> d!1216285 d!1216451))

(assert (=> d!1216233 d!1216199))

(assert (=> d!1216233 d!1216263))

(declare-fun d!1216453 () Bool)

(assert (=> d!1216453 (= (apply!10295 (transformation!7112 r!4213) (seqFromList!5329 p!2988)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) (seqFromList!5329 p!2988)))))

(declare-fun b_lambda!120309 () Bool)

(assert (=> (not b_lambda!120309) (not d!1216453)))

(declare-fun t!339360 () Bool)

(declare-fun tb!246525 () Bool)

(assert (=> (and b!4096407 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 r!4213))) t!339360) tb!246525))

(declare-fun result!299166 () Bool)

(assert (=> tb!246525 (= result!299166 (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) (seqFromList!5329 p!2988))))))

(declare-fun m!4704047 () Bool)

(assert (=> tb!246525 m!4704047))

(assert (=> d!1216453 t!339360))

(declare-fun b_and!316083 () Bool)

(assert (= b_and!316065 (and (=> t!339360 result!299166) b_and!316083)))

(declare-fun tb!246527 () Bool)

(declare-fun t!339362 () Bool)

(assert (=> (and b!4096415 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213))) t!339362) tb!246527))

(declare-fun result!299168 () Bool)

(assert (= result!299168 result!299166))

(assert (=> d!1216453 t!339362))

(declare-fun b_and!316085 () Bool)

(assert (= b_and!316067 (and (=> t!339362 result!299168) b_and!316085)))

(declare-fun tb!246529 () Bool)

(declare-fun t!339364 () Bool)

(assert (=> (and b!4096832 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 r!4213))) t!339364) tb!246529))

(declare-fun result!299170 () Bool)

(assert (= result!299170 result!299166))

(assert (=> d!1216453 t!339364))

(declare-fun b_and!316087 () Bool)

(assert (= b_and!316069 (and (=> t!339364 result!299170) b_and!316087)))

(assert (=> d!1216453 m!4703261))

(declare-fun m!4704049 () Bool)

(assert (=> d!1216453 m!4704049))

(assert (=> d!1216233 d!1216453))

(declare-fun d!1216455 () Bool)

(assert (=> d!1216455 (= (maxPrefixOneRule!2973 thiss!26199 r!4213 input!3411) (Some!9517 (tuple2!42861 (Token!13351 (apply!10295 (transformation!7112 r!4213) (seqFromList!5329 p!2988)) r!4213 (size!32823 p!2988) p!2988) suffix!1518)))))

(assert (=> d!1216455 true))

(declare-fun _$59!736 () Unit!63463)

(assert (=> d!1216455 (= (choose!25030 thiss!26199 (t!339272 rules!3870) p!2988 input!3411 suffix!1518 r!4213) _$59!736)))

(declare-fun bs!593603 () Bool)

(assert (= bs!593603 d!1216455))

(assert (=> bs!593603 m!4703213))

(assert (=> bs!593603 m!4703261))

(assert (=> bs!593603 m!4703261))

(assert (=> bs!593603 m!4703563))

(assert (=> bs!593603 m!4703267))

(assert (=> d!1216233 d!1216455))

(assert (=> d!1216233 d!1216269))

(assert (=> d!1216233 d!1216265))

(assert (=> d!1216293 d!1216291))

(declare-fun d!1216457 () Bool)

(assert (=> d!1216457 (ruleValid!3032 thiss!26199 r!4213)))

(assert (=> d!1216457 true))

(declare-fun _$65!1597 () Unit!63463)

(assert (=> d!1216457 (= (choose!25031 thiss!26199 r!4213 rules!3870) _$65!1597)))

(declare-fun bs!593604 () Bool)

(assert (= bs!593604 d!1216457))

(assert (=> bs!593604 m!4703231))

(assert (=> d!1216293 d!1216457))

(assert (=> d!1216293 d!1216271))

(declare-fun d!1216459 () Bool)

(declare-fun e!2542405 () Bool)

(assert (=> d!1216459 e!2542405))

(declare-fun res!1674924 () Bool)

(assert (=> d!1216459 (=> (not res!1674924) (not e!2542405))))

(declare-fun lt!1465486 () List!44056)

(assert (=> d!1216459 (= res!1674924 (= (content!6784 lt!1465486) ((_ map or) (content!6784 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))) (content!6784 (_2!24564 (get!14412 lt!1465312))))))))

(declare-fun e!2542404 () List!44056)

(assert (=> d!1216459 (= lt!1465486 e!2542404)))

(declare-fun c!705976 () Bool)

(assert (=> d!1216459 (= c!705976 ((_ is Nil!43932) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))))))

(assert (=> d!1216459 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312)))) (_2!24564 (get!14412 lt!1465312))) lt!1465486)))

(declare-fun b!4097021 () Bool)

(declare-fun res!1674923 () Bool)

(assert (=> b!4097021 (=> (not res!1674923) (not e!2542405))))

(assert (=> b!4097021 (= res!1674923 (= (size!32823 lt!1465486) (+ (size!32823 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))) (size!32823 (_2!24564 (get!14412 lt!1465312))))))))

(declare-fun b!4097019 () Bool)

(assert (=> b!4097019 (= e!2542404 (_2!24564 (get!14412 lt!1465312)))))

(declare-fun b!4097020 () Bool)

(assert (=> b!4097020 (= e!2542404 (Cons!43932 (h!49352 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))) (++!11518 (t!339271 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))) (_2!24564 (get!14412 lt!1465312)))))))

(declare-fun b!4097022 () Bool)

(assert (=> b!4097022 (= e!2542405 (or (not (= (_2!24564 (get!14412 lt!1465312)) Nil!43932)) (= lt!1465486 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312)))))))))

(assert (= (and d!1216459 c!705976) b!4097019))

(assert (= (and d!1216459 (not c!705976)) b!4097020))

(assert (= (and d!1216459 res!1674924) b!4097021))

(assert (= (and b!4097021 res!1674923) b!4097022))

(declare-fun m!4704051 () Bool)

(assert (=> d!1216459 m!4704051))

(assert (=> d!1216459 m!4703617))

(declare-fun m!4704053 () Bool)

(assert (=> d!1216459 m!4704053))

(declare-fun m!4704055 () Bool)

(assert (=> d!1216459 m!4704055))

(declare-fun m!4704057 () Bool)

(assert (=> b!4097021 m!4704057))

(assert (=> b!4097021 m!4703617))

(declare-fun m!4704059 () Bool)

(assert (=> b!4097021 m!4704059))

(assert (=> b!4097021 m!4703613))

(declare-fun m!4704061 () Bool)

(assert (=> b!4097020 m!4704061))

(assert (=> b!4096705 d!1216459))

(declare-fun d!1216461 () Bool)

(assert (=> d!1216461 (= (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312)))) (list!16303 (c!705883 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))))))

(declare-fun bs!593605 () Bool)

(assert (= bs!593605 d!1216461))

(declare-fun m!4704063 () Bool)

(assert (=> bs!593605 m!4704063))

(assert (=> b!4096705 d!1216461))

(declare-fun d!1216463 () Bool)

(declare-fun lt!1465489 () BalanceConc!26240)

(assert (=> d!1216463 (= (list!16302 lt!1465489) (originalCharacters!7706 (_1!24564 (get!14412 lt!1465312))))))

(assert (=> d!1216463 (= lt!1465489 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))) (value!223344 (_1!24564 (get!14412 lt!1465312)))))))

(assert (=> d!1216463 (= (charsOf!4868 (_1!24564 (get!14412 lt!1465312))) lt!1465489)))

(declare-fun b_lambda!120311 () Bool)

(assert (=> (not b_lambda!120311) (not d!1216463)))

(declare-fun t!339366 () Bool)

(declare-fun tb!246531 () Bool)

(assert (=> (and b!4096407 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))) t!339366) tb!246531))

(declare-fun b!4097031 () Bool)

(declare-fun e!2542410 () Bool)

(declare-fun tp!1240012 () Bool)

(assert (=> b!4097031 (= e!2542410 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))) (value!223344 (_1!24564 (get!14412 lt!1465312)))))) tp!1240012))))

(declare-fun result!299172 () Bool)

(assert (=> tb!246531 (= result!299172 (and (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))) (value!223344 (_1!24564 (get!14412 lt!1465312))))) e!2542410))))

(assert (= tb!246531 b!4097031))

(declare-fun m!4704065 () Bool)

(assert (=> b!4097031 m!4704065))

(declare-fun m!4704067 () Bool)

(assert (=> tb!246531 m!4704067))

(assert (=> d!1216463 t!339366))

(declare-fun b_and!316089 () Bool)

(assert (= b_and!316077 (and (=> t!339366 result!299172) b_and!316089)))

(declare-fun tb!246533 () Bool)

(declare-fun t!339368 () Bool)

(assert (=> (and b!4096415 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))) t!339368) tb!246533))

(declare-fun result!299174 () Bool)

(assert (= result!299174 result!299172))

(assert (=> d!1216463 t!339368))

(declare-fun b_and!316091 () Bool)

(assert (= b_and!316079 (and (=> t!339368 result!299174) b_and!316091)))

(declare-fun tb!246535 () Bool)

(declare-fun t!339370 () Bool)

(assert (=> (and b!4096832 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))) t!339370) tb!246535))

(declare-fun result!299176 () Bool)

(assert (= result!299176 result!299172))

(assert (=> d!1216463 t!339370))

(declare-fun b_and!316093 () Bool)

(assert (= b_and!316081 (and (=> t!339370 result!299176) b_and!316093)))

(declare-fun m!4704069 () Bool)

(assert (=> d!1216463 m!4704069))

(declare-fun m!4704071 () Bool)

(assert (=> d!1216463 m!4704071))

(assert (=> b!4096705 d!1216463))

(declare-fun d!1216465 () Bool)

(assert (=> d!1216465 (= (get!14412 lt!1465312) (v!40017 lt!1465312))))

(assert (=> b!4096705 d!1216465))

(declare-fun d!1216467 () Bool)

(declare-fun c!705983 () Bool)

(assert (=> d!1216467 (= c!705983 ((_ is Node!13323) (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))))

(declare-fun e!2542415 () Bool)

(assert (=> d!1216467 (= (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))) e!2542415)))

(declare-fun b!4097038 () Bool)

(declare-fun inv!58666 (Conc!13323) Bool)

(assert (=> b!4097038 (= e!2542415 (inv!58666 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))))

(declare-fun b!4097039 () Bool)

(declare-fun e!2542416 () Bool)

(assert (=> b!4097039 (= e!2542415 e!2542416)))

(declare-fun res!1674927 () Bool)

(assert (=> b!4097039 (= res!1674927 (not ((_ is Leaf!20594) (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))))))))

(assert (=> b!4097039 (=> res!1674927 e!2542416)))

(declare-fun b!4097040 () Bool)

(declare-fun inv!58667 (Conc!13323) Bool)

(assert (=> b!4097040 (= e!2542416 (inv!58667 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))))

(assert (= (and d!1216467 c!705983) b!4097038))

(assert (= (and d!1216467 (not c!705983)) b!4097039))

(assert (= (and b!4097039 (not res!1674927)) b!4097040))

(declare-fun m!4704073 () Bool)

(assert (=> b!4097038 m!4704073))

(declare-fun m!4704075 () Bool)

(assert (=> b!4097040 m!4704075))

(assert (=> b!4096658 d!1216467))

(assert (=> b!4096707 d!1216461))

(assert (=> b!4096707 d!1216463))

(assert (=> b!4096707 d!1216465))

(declare-fun b!4097063 () Bool)

(declare-fun res!1674943 () Bool)

(declare-fun e!2542440 () Bool)

(assert (=> b!4097063 (=> (not res!1674943) (not e!2542440))))

(declare-fun call!289537 () Bool)

(assert (=> b!4097063 (= res!1674943 call!289537)))

(declare-fun e!2542436 () Bool)

(assert (=> b!4097063 (= e!2542436 e!2542440)))

(declare-fun b!4097064 () Bool)

(declare-fun e!2542441 () Bool)

(declare-fun call!289538 () Bool)

(assert (=> b!4097064 (= e!2542441 call!289538)))

(declare-fun b!4097065 () Bool)

(declare-fun e!2542438 () Bool)

(declare-fun call!289536 () Bool)

(assert (=> b!4097065 (= e!2542438 call!289536)))

(declare-fun b!4097066 () Bool)

(declare-fun e!2542437 () Bool)

(assert (=> b!4097066 (= e!2542437 e!2542441)))

(declare-fun res!1674946 () Bool)

(assert (=> b!4097066 (=> (not res!1674946) (not e!2542441))))

(assert (=> b!4097066 (= res!1674946 call!289537)))

(declare-fun b!4097067 () Bool)

(declare-fun e!2542435 () Bool)

(assert (=> b!4097067 (= e!2542435 e!2542438)))

(declare-fun res!1674942 () Bool)

(assert (=> b!4097067 (= res!1674942 (not (nullable!4249 (reg!12346 (regex!7112 r!4213)))))))

(assert (=> b!4097067 (=> (not res!1674942) (not e!2542438))))

(declare-fun b!4097068 () Bool)

(assert (=> b!4097068 (= e!2542435 e!2542436)))

(declare-fun c!705988 () Bool)

(assert (=> b!4097068 (= c!705988 ((_ is Union!12017) (regex!7112 r!4213)))))

(declare-fun b!4097069 () Bool)

(assert (=> b!4097069 (= e!2542440 call!289538)))

(declare-fun bm!289531 () Bool)

(assert (=> bm!289531 (= call!289537 (validRegex!5449 (ite c!705988 (regOne!24547 (regex!7112 r!4213)) (regOne!24546 (regex!7112 r!4213)))))))

(declare-fun b!4097070 () Bool)

(declare-fun e!2542439 () Bool)

(assert (=> b!4097070 (= e!2542439 e!2542435)))

(declare-fun c!705989 () Bool)

(assert (=> b!4097070 (= c!705989 ((_ is Star!12017) (regex!7112 r!4213)))))

(declare-fun b!4097071 () Bool)

(declare-fun res!1674945 () Bool)

(assert (=> b!4097071 (=> res!1674945 e!2542437)))

(assert (=> b!4097071 (= res!1674945 (not ((_ is Concat!19360) (regex!7112 r!4213))))))

(assert (=> b!4097071 (= e!2542436 e!2542437)))

(declare-fun d!1216469 () Bool)

(declare-fun res!1674944 () Bool)

(assert (=> d!1216469 (=> res!1674944 e!2542439)))

(assert (=> d!1216469 (= res!1674944 ((_ is ElementMatch!12017) (regex!7112 r!4213)))))

(assert (=> d!1216469 (= (validRegex!5449 (regex!7112 r!4213)) e!2542439)))

(declare-fun bm!289532 () Bool)

(assert (=> bm!289532 (= call!289536 (validRegex!5449 (ite c!705989 (reg!12346 (regex!7112 r!4213)) (ite c!705988 (regTwo!24547 (regex!7112 r!4213)) (regTwo!24546 (regex!7112 r!4213))))))))

(declare-fun bm!289533 () Bool)

(assert (=> bm!289533 (= call!289538 call!289536)))

(assert (= (and d!1216469 (not res!1674944)) b!4097070))

(assert (= (and b!4097070 c!705989) b!4097067))

(assert (= (and b!4097070 (not c!705989)) b!4097068))

(assert (= (and b!4097067 res!1674942) b!4097065))

(assert (= (and b!4097068 c!705988) b!4097063))

(assert (= (and b!4097068 (not c!705988)) b!4097071))

(assert (= (and b!4097063 res!1674943) b!4097069))

(assert (= (and b!4097071 (not res!1674945)) b!4097066))

(assert (= (and b!4097066 res!1674946) b!4097064))

(assert (= (or b!4097069 b!4097064) bm!289533))

(assert (= (or b!4097063 b!4097066) bm!289531))

(assert (= (or b!4097065 bm!289533) bm!289532))

(declare-fun m!4704077 () Bool)

(assert (=> b!4097067 m!4704077))

(declare-fun m!4704079 () Bool)

(assert (=> bm!289531 m!4704079))

(declare-fun m!4704081 () Bool)

(assert (=> bm!289532 m!4704081))

(assert (=> d!1216291 d!1216469))

(declare-fun bs!593606 () Bool)

(declare-fun d!1216471 () Bool)

(assert (= bs!593606 (and d!1216471 d!1216257)))

(declare-fun lambda!128156 () Int)

(assert (=> bs!593606 (= (and (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 r!4213))) (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (= lambda!128156 lambda!128137))))

(assert (=> d!1216471 true))

(assert (=> d!1216471 (< (dynLambda!18838 order!23165 (toChars!9571 (transformation!7112 (h!49353 rules!3870)))) (dynLambda!18837 order!23163 lambda!128156))))

(assert (=> d!1216471 true))

(assert (=> d!1216471 (< (dynLambda!18836 order!23161 (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) (dynLambda!18837 order!23163 lambda!128156))))

(assert (=> d!1216471 (= (semiInverseModEq!3060 (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) (Forall!1521 lambda!128156))))

(declare-fun bs!593607 () Bool)

(assert (= bs!593607 d!1216471))

(declare-fun m!4704083 () Bool)

(assert (=> bs!593607 m!4704083))

(assert (=> d!1216183 d!1216471))

(declare-fun d!1216473 () Bool)

(assert (=> d!1216473 (= (isDefined!7202 lt!1465312) (not (isEmpty!26291 lt!1465312)))))

(declare-fun bs!593608 () Bool)

(assert (= bs!593608 d!1216473))

(assert (=> bs!593608 m!4703603))

(assert (=> b!4096703 d!1216473))

(declare-fun d!1216475 () Bool)

(assert (=> d!1216475 (= (inv!58655 (tag!7972 (h!49353 (t!339272 rules!3870)))) (= (mod (str.len (value!223343 (tag!7972 (h!49353 (t!339272 rules!3870))))) 2) 0))))

(assert (=> b!4096831 d!1216475))

(declare-fun d!1216477 () Bool)

(declare-fun res!1674949 () Bool)

(declare-fun e!2542450 () Bool)

(assert (=> d!1216477 (=> (not res!1674949) (not e!2542450))))

(assert (=> d!1216477 (= res!1674949 (semiInverseModEq!3060 (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870))))))))

(assert (=> d!1216477 (= (inv!58658 (transformation!7112 (h!49353 (t!339272 rules!3870)))) e!2542450)))

(declare-fun b!4097090 () Bool)

(assert (=> b!4097090 (= e!2542450 (equivClasses!2959 (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870))))))))

(assert (= (and d!1216477 res!1674949) b!4097090))

(declare-fun m!4704105 () Bool)

(assert (=> d!1216477 m!4704105))

(declare-fun m!4704109 () Bool)

(assert (=> b!4097090 m!4704109))

(assert (=> b!4096831 d!1216477))

(declare-fun d!1216479 () Bool)

(declare-fun res!1674963 () Bool)

(declare-fun e!2542463 () Bool)

(assert (=> d!1216479 (=> res!1674963 e!2542463)))

(assert (=> d!1216479 (= res!1674963 ((_ is Nil!43933) (t!339272 rules!3870)))))

(assert (=> d!1216479 (= (noDuplicateTag!2797 thiss!26199 (t!339272 rules!3870) Nil!43935) e!2542463)))

(declare-fun b!4097112 () Bool)

(declare-fun e!2542464 () Bool)

(assert (=> b!4097112 (= e!2542463 e!2542464)))

(declare-fun res!1674964 () Bool)

(assert (=> b!4097112 (=> (not res!1674964) (not e!2542464))))

(declare-fun contains!8798 (List!44059 String!50460) Bool)

(assert (=> b!4097112 (= res!1674964 (not (contains!8798 Nil!43935 (tag!7972 (h!49353 (t!339272 rules!3870))))))))

(declare-fun b!4097113 () Bool)

(assert (=> b!4097113 (= e!2542464 (noDuplicateTag!2797 thiss!26199 (t!339272 (t!339272 rules!3870)) (Cons!43935 (tag!7972 (h!49353 (t!339272 rules!3870))) Nil!43935)))))

(assert (= (and d!1216479 (not res!1674963)) b!4097112))

(assert (= (and b!4097112 res!1674964) b!4097113))

(declare-fun m!4704149 () Bool)

(assert (=> b!4097112 m!4704149))

(declare-fun m!4704151 () Bool)

(assert (=> b!4097113 m!4704151))

(assert (=> b!4096729 d!1216479))

(declare-fun b!4097124 () Bool)

(declare-fun e!2542471 () Bool)

(declare-fun inv!16 (TokenValue!7342) Bool)

(assert (=> b!4097124 (= e!2542471 (inv!16 (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))

(declare-fun b!4097125 () Bool)

(declare-fun e!2542472 () Bool)

(assert (=> b!4097125 (= e!2542471 e!2542472)))

(declare-fun c!706004 () Bool)

(assert (=> b!4097125 (= c!706004 ((_ is IntegerValue!22027) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))

(declare-fun b!4097126 () Bool)

(declare-fun inv!17 (TokenValue!7342) Bool)

(assert (=> b!4097126 (= e!2542472 (inv!17 (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))

(declare-fun b!4097127 () Bool)

(declare-fun res!1674967 () Bool)

(declare-fun e!2542473 () Bool)

(assert (=> b!4097127 (=> res!1674967 e!2542473)))

(assert (=> b!4097127 (= res!1674967 (not ((_ is IntegerValue!22028) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))))))

(assert (=> b!4097127 (= e!2542472 e!2542473)))

(declare-fun b!4097128 () Bool)

(declare-fun inv!15 (TokenValue!7342) Bool)

(assert (=> b!4097128 (= e!2542473 (inv!15 (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))

(declare-fun d!1216491 () Bool)

(declare-fun c!706005 () Bool)

(assert (=> d!1216491 (= c!706005 ((_ is IntegerValue!22026) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))

(assert (=> d!1216491 (= (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)) e!2542471)))

(assert (= (and d!1216491 c!706005) b!4097124))

(assert (= (and d!1216491 (not c!706005)) b!4097125))

(assert (= (and b!4097125 c!706004) b!4097126))

(assert (= (and b!4097125 (not c!706004)) b!4097127))

(assert (= (and b!4097127 (not res!1674967)) b!4097128))

(declare-fun m!4704195 () Bool)

(assert (=> b!4097124 m!4704195))

(declare-fun m!4704197 () Bool)

(assert (=> b!4097126 m!4704197))

(declare-fun m!4704199 () Bool)

(assert (=> b!4097128 m!4704199))

(assert (=> tb!246461 d!1216491))

(assert (=> b!4096783 d!1216441))

(declare-fun d!1216495 () Bool)

(declare-fun res!1674968 () Bool)

(declare-fun e!2542474 () Bool)

(assert (=> d!1216495 (=> res!1674968 e!2542474)))

(assert (=> d!1216495 (= res!1674968 ((_ is Nil!43933) rules!3870))))

(assert (=> d!1216495 (= (noDuplicateTag!2797 thiss!26199 rules!3870 Nil!43935) e!2542474)))

(declare-fun b!4097129 () Bool)

(declare-fun e!2542475 () Bool)

(assert (=> b!4097129 (= e!2542474 e!2542475)))

(declare-fun res!1674969 () Bool)

(assert (=> b!4097129 (=> (not res!1674969) (not e!2542475))))

(assert (=> b!4097129 (= res!1674969 (not (contains!8798 Nil!43935 (tag!7972 (h!49353 rules!3870)))))))

(declare-fun b!4097130 () Bool)

(assert (=> b!4097130 (= e!2542475 (noDuplicateTag!2797 thiss!26199 (t!339272 rules!3870) (Cons!43935 (tag!7972 (h!49353 rules!3870)) Nil!43935)))))

(assert (= (and d!1216495 (not res!1674968)) b!4097129))

(assert (= (and b!4097129 res!1674969) b!4097130))

(declare-fun m!4704201 () Bool)

(assert (=> b!4097129 m!4704201))

(declare-fun m!4704205 () Bool)

(assert (=> b!4097130 m!4704205))

(assert (=> b!4096719 d!1216495))

(declare-fun bs!593610 () Bool)

(declare-fun d!1216497 () Bool)

(assert (= bs!593610 (and d!1216497 d!1216257)))

(declare-fun lambda!128157 () Int)

(assert (=> bs!593610 (= lambda!128157 lambda!128137)))

(declare-fun bs!593611 () Bool)

(assert (= bs!593611 (and d!1216497 d!1216471)))

(assert (=> bs!593611 (= (and (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (h!49353 rules!3870)))) (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (h!49353 rules!3870))))) (= lambda!128157 lambda!128156))))

(assert (=> d!1216497 true))

(assert (=> d!1216497 (< (dynLambda!18838 order!23165 (toChars!9571 (transformation!7112 r!4213))) (dynLambda!18837 order!23163 lambda!128157))))

(assert (=> d!1216497 true))

(assert (=> d!1216497 (< (dynLambda!18836 order!23161 (toValue!9712 (transformation!7112 r!4213))) (dynLambda!18837 order!23163 lambda!128157))))

(assert (=> d!1216497 (= (semiInverseModEq!3060 (toChars!9571 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 r!4213))) (Forall!1521 lambda!128157))))

(declare-fun bs!593612 () Bool)

(assert (= bs!593612 d!1216497))

(declare-fun m!4704207 () Bool)

(assert (=> bs!593612 m!4704207))

(assert (=> d!1216191 d!1216497))

(declare-fun b!4097131 () Bool)

(declare-fun res!1674975 () Bool)

(declare-fun e!2542476 () Bool)

(assert (=> b!4097131 (=> (not res!1674975) (not e!2542476))))

(declare-fun call!289547 () Bool)

(assert (=> b!4097131 (= res!1674975 (not call!289547))))

(declare-fun bm!289542 () Bool)

(assert (=> bm!289542 (= call!289547 (isEmpty!26289 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))))))

(declare-fun b!4097132 () Bool)

(declare-fun res!1674970 () Bool)

(declare-fun e!2542480 () Bool)

(assert (=> b!4097132 (=> res!1674970 e!2542480)))

(assert (=> b!4097132 (= res!1674970 (not (isEmpty!26289 (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))))))))

(declare-fun b!4097133 () Bool)

(declare-fun res!1674973 () Bool)

(declare-fun e!2542478 () Bool)

(assert (=> b!4097133 (=> res!1674973 e!2542478)))

(assert (=> b!4097133 (= res!1674973 (not ((_ is ElementMatch!12017) (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))))))

(declare-fun e!2542477 () Bool)

(assert (=> b!4097133 (= e!2542477 e!2542478)))

(declare-fun b!4097134 () Bool)

(declare-fun e!2542479 () Bool)

(assert (=> b!4097134 (= e!2542479 (matchR!5958 (derivativeStep!3650 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))) (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312)))))) (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312)))))))))

(declare-fun b!4097135 () Bool)

(assert (=> b!4097135 (= e!2542476 (= (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))) (c!705882 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))))))

(declare-fun b!4097136 () Bool)

(declare-fun e!2542482 () Bool)

(assert (=> b!4097136 (= e!2542482 e!2542477)))

(declare-fun c!706008 () Bool)

(assert (=> b!4097136 (= c!706008 ((_ is EmptyLang!12017) (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))))))

(declare-fun b!4097137 () Bool)

(declare-fun res!1674977 () Bool)

(assert (=> b!4097137 (=> res!1674977 e!2542478)))

(assert (=> b!4097137 (= res!1674977 e!2542476)))

(declare-fun res!1674976 () Bool)

(assert (=> b!4097137 (=> (not res!1674976) (not e!2542476))))

(declare-fun lt!1465526 () Bool)

(assert (=> b!4097137 (= res!1674976 lt!1465526)))

(declare-fun b!4097138 () Bool)

(assert (=> b!4097138 (= e!2542482 (= lt!1465526 call!289547))))

(declare-fun d!1216501 () Bool)

(assert (=> d!1216501 e!2542482))

(declare-fun c!706006 () Bool)

(assert (=> d!1216501 (= c!706006 ((_ is EmptyExpr!12017) (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))))))

(assert (=> d!1216501 (= lt!1465526 e!2542479)))

(declare-fun c!706007 () Bool)

(assert (=> d!1216501 (= c!706007 (isEmpty!26289 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))))))

(assert (=> d!1216501 (validRegex!5449 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))))

(assert (=> d!1216501 (= (matchR!5958 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))) lt!1465526)))

(declare-fun b!4097139 () Bool)

(declare-fun e!2542481 () Bool)

(assert (=> b!4097139 (= e!2542478 e!2542481)))

(declare-fun res!1674971 () Bool)

(assert (=> b!4097139 (=> (not res!1674971) (not e!2542481))))

(assert (=> b!4097139 (= res!1674971 (not lt!1465526))))

(declare-fun b!4097140 () Bool)

(assert (=> b!4097140 (= e!2542477 (not lt!1465526))))

(declare-fun b!4097141 () Bool)

(assert (=> b!4097141 (= e!2542480 (not (= (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312))))) (c!705882 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))))))))

(declare-fun b!4097142 () Bool)

(declare-fun res!1674972 () Bool)

(assert (=> b!4097142 (=> (not res!1674972) (not e!2542476))))

(assert (=> b!4097142 (= res!1674972 (isEmpty!26289 (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465312)))))))))

(declare-fun b!4097143 () Bool)

(assert (=> b!4097143 (= e!2542479 (nullable!4249 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))))))

(declare-fun b!4097144 () Bool)

(assert (=> b!4097144 (= e!2542481 e!2542480)))

(declare-fun res!1674974 () Bool)

(assert (=> b!4097144 (=> res!1674974 e!2542480)))

(assert (=> b!4097144 (= res!1674974 call!289547)))

(assert (= (and d!1216501 c!706007) b!4097143))

(assert (= (and d!1216501 (not c!706007)) b!4097134))

(assert (= (and d!1216501 c!706006) b!4097138))

(assert (= (and d!1216501 (not c!706006)) b!4097136))

(assert (= (and b!4097136 c!706008) b!4097140))

(assert (= (and b!4097136 (not c!706008)) b!4097133))

(assert (= (and b!4097133 (not res!1674973)) b!4097137))

(assert (= (and b!4097137 res!1674976) b!4097131))

(assert (= (and b!4097131 res!1674975) b!4097142))

(assert (= (and b!4097142 res!1674972) b!4097135))

(assert (= (and b!4097137 (not res!1674977)) b!4097139))

(assert (= (and b!4097139 res!1674971) b!4097144))

(assert (= (and b!4097144 (not res!1674974)) b!4097132))

(assert (= (and b!4097132 (not res!1674970)) b!4097141))

(assert (= (or b!4097138 b!4097131 b!4097144) bm!289542))

(assert (=> b!4097141 m!4703617))

(declare-fun m!4704209 () Bool)

(assert (=> b!4097141 m!4704209))

(assert (=> d!1216501 m!4703617))

(declare-fun m!4704211 () Bool)

(assert (=> d!1216501 m!4704211))

(declare-fun m!4704213 () Bool)

(assert (=> d!1216501 m!4704213))

(assert (=> b!4097135 m!4703617))

(assert (=> b!4097135 m!4704209))

(assert (=> bm!289542 m!4703617))

(assert (=> bm!289542 m!4704211))

(declare-fun m!4704215 () Bool)

(assert (=> b!4097143 m!4704215))

(assert (=> b!4097132 m!4703617))

(declare-fun m!4704217 () Bool)

(assert (=> b!4097132 m!4704217))

(assert (=> b!4097132 m!4704217))

(declare-fun m!4704219 () Bool)

(assert (=> b!4097132 m!4704219))

(assert (=> b!4097142 m!4703617))

(assert (=> b!4097142 m!4704217))

(assert (=> b!4097142 m!4704217))

(assert (=> b!4097142 m!4704219))

(assert (=> b!4097134 m!4703617))

(assert (=> b!4097134 m!4704209))

(assert (=> b!4097134 m!4704209))

(declare-fun m!4704221 () Bool)

(assert (=> b!4097134 m!4704221))

(assert (=> b!4097134 m!4703617))

(assert (=> b!4097134 m!4704217))

(assert (=> b!4097134 m!4704221))

(assert (=> b!4097134 m!4704217))

(declare-fun m!4704223 () Bool)

(assert (=> b!4097134 m!4704223))

(assert (=> b!4096701 d!1216501))

(assert (=> b!4096701 d!1216465))

(assert (=> b!4096701 d!1216461))

(assert (=> b!4096701 d!1216463))

(declare-fun b!4097148 () Bool)

(declare-fun res!1674986 () Bool)

(declare-fun e!2542486 () Bool)

(assert (=> b!4097148 (=> (not res!1674986) (not e!2542486))))

(declare-fun call!289548 () Bool)

(assert (=> b!4097148 (= res!1674986 (not call!289548))))

(declare-fun bm!289543 () Bool)

(assert (=> bm!289543 (= call!289548 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(declare-fun b!4097149 () Bool)

(declare-fun res!1674981 () Bool)

(declare-fun e!2542490 () Bool)

(assert (=> b!4097149 (=> res!1674981 e!2542490)))

(assert (=> b!4097149 (= res!1674981 (not (isEmpty!26289 (tail!6394 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))))

(declare-fun b!4097150 () Bool)

(declare-fun res!1674984 () Bool)

(declare-fun e!2542488 () Bool)

(assert (=> b!4097150 (=> res!1674984 e!2542488)))

(assert (=> b!4097150 (= res!1674984 (not ((_ is ElementMatch!12017) (regex!7112 (h!49353 rules!3870)))))))

(declare-fun e!2542487 () Bool)

(assert (=> b!4097150 (= e!2542487 e!2542488)))

(declare-fun b!4097151 () Bool)

(declare-fun e!2542489 () Bool)

(assert (=> b!4097151 (= e!2542489 (matchR!5958 (derivativeStep!3650 (regex!7112 (h!49353 rules!3870)) (head!8660 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411))))) (tail!6394 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411))))))))

(declare-fun b!4097152 () Bool)

(assert (=> b!4097152 (= e!2542486 (= (head!8660 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))) (c!705882 (regex!7112 (h!49353 rules!3870)))))))

(declare-fun b!4097153 () Bool)

(declare-fun e!2542492 () Bool)

(assert (=> b!4097153 (= e!2542492 e!2542487)))

(declare-fun c!706012 () Bool)

(assert (=> b!4097153 (= c!706012 ((_ is EmptyLang!12017) (regex!7112 (h!49353 rules!3870))))))

(declare-fun b!4097154 () Bool)

(declare-fun res!1674988 () Bool)

(assert (=> b!4097154 (=> res!1674988 e!2542488)))

(assert (=> b!4097154 (= res!1674988 e!2542486)))

(declare-fun res!1674987 () Bool)

(assert (=> b!4097154 (=> (not res!1674987) (not e!2542486))))

(declare-fun lt!1465530 () Bool)

(assert (=> b!4097154 (= res!1674987 lt!1465530)))

(declare-fun b!4097155 () Bool)

(assert (=> b!4097155 (= e!2542492 (= lt!1465530 call!289548))))

(declare-fun d!1216503 () Bool)

(assert (=> d!1216503 e!2542492))

(declare-fun c!706010 () Bool)

(assert (=> d!1216503 (= c!706010 ((_ is EmptyExpr!12017) (regex!7112 (h!49353 rules!3870))))))

(assert (=> d!1216503 (= lt!1465530 e!2542489)))

(declare-fun c!706011 () Bool)

(assert (=> d!1216503 (= c!706011 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (=> d!1216503 (validRegex!5449 (regex!7112 (h!49353 rules!3870)))))

(assert (=> d!1216503 (= (matchR!5958 (regex!7112 (h!49353 rules!3870)) (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))) lt!1465530)))

(declare-fun b!4097156 () Bool)

(declare-fun e!2542491 () Bool)

(assert (=> b!4097156 (= e!2542488 e!2542491)))

(declare-fun res!1674982 () Bool)

(assert (=> b!4097156 (=> (not res!1674982) (not e!2542491))))

(assert (=> b!4097156 (= res!1674982 (not lt!1465530))))

(declare-fun b!4097157 () Bool)

(assert (=> b!4097157 (= e!2542487 (not lt!1465530))))

(declare-fun b!4097158 () Bool)

(assert (=> b!4097158 (= e!2542490 (not (= (head!8660 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))) (c!705882 (regex!7112 (h!49353 rules!3870))))))))

(declare-fun b!4097159 () Bool)

(declare-fun res!1674983 () Bool)

(assert (=> b!4097159 (=> (not res!1674983) (not e!2542486))))

(assert (=> b!4097159 (= res!1674983 (isEmpty!26289 (tail!6394 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411))))))))

(declare-fun b!4097160 () Bool)

(assert (=> b!4097160 (= e!2542489 (nullable!4249 (regex!7112 (h!49353 rules!3870))))))

(declare-fun b!4097161 () Bool)

(assert (=> b!4097161 (= e!2542491 e!2542490)))

(declare-fun res!1674985 () Bool)

(assert (=> b!4097161 (=> res!1674985 e!2542490)))

(assert (=> b!4097161 (= res!1674985 call!289548)))

(assert (= (and d!1216503 c!706011) b!4097160))

(assert (= (and d!1216503 (not c!706011)) b!4097151))

(assert (= (and d!1216503 c!706010) b!4097155))

(assert (= (and d!1216503 (not c!706010)) b!4097153))

(assert (= (and b!4097153 c!706012) b!4097157))

(assert (= (and b!4097153 (not c!706012)) b!4097150))

(assert (= (and b!4097150 (not res!1674984)) b!4097154))

(assert (= (and b!4097154 res!1674987) b!4097148))

(assert (= (and b!4097148 res!1674986) b!4097159))

(assert (= (and b!4097159 res!1674983) b!4097152))

(assert (= (and b!4097154 (not res!1674988)) b!4097156))

(assert (= (and b!4097156 res!1674982) b!4097161))

(assert (= (and b!4097161 (not res!1674985)) b!4097149))

(assert (= (and b!4097149 (not res!1674981)) b!4097158))

(assert (= (or b!4097155 b!4097148 b!4097161) bm!289543))

(declare-fun m!4704233 () Bool)

(assert (=> b!4097158 m!4704233))

(assert (=> d!1216503 m!4703677))

(assert (=> d!1216503 m!4703941))

(assert (=> b!4097152 m!4704233))

(assert (=> bm!289543 m!4703677))

(assert (=> b!4097160 m!4703953))

(declare-fun m!4704235 () Bool)

(assert (=> b!4097149 m!4704235))

(assert (=> b!4097149 m!4704235))

(declare-fun m!4704237 () Bool)

(assert (=> b!4097149 m!4704237))

(assert (=> b!4097159 m!4704235))

(assert (=> b!4097159 m!4704235))

(assert (=> b!4097159 m!4704237))

(assert (=> b!4097151 m!4704233))

(assert (=> b!4097151 m!4704233))

(declare-fun m!4704239 () Bool)

(assert (=> b!4097151 m!4704239))

(assert (=> b!4097151 m!4704235))

(assert (=> b!4097151 m!4704239))

(assert (=> b!4097151 m!4704235))

(declare-fun m!4704245 () Bool)

(assert (=> b!4097151 m!4704245))

(assert (=> b!4096728 d!1216503))

(declare-fun b!4097368 () Bool)

(declare-fun e!2542614 () tuple2!42864)

(declare-fun call!289596 () tuple2!42864)

(assert (=> b!4097368 (= e!2542614 call!289596)))

(declare-fun bm!289586 () Bool)

(declare-fun call!289594 () List!44056)

(assert (=> bm!289586 (= call!289594 (tail!6394 input!3411))))

(declare-fun b!4097369 () Bool)

(declare-fun e!2542615 () tuple2!42864)

(declare-fun lt!1465692 () tuple2!42864)

(assert (=> b!4097369 (= e!2542615 lt!1465692)))

(declare-fun b!4097370 () Bool)

(declare-fun e!2542617 () Bool)

(declare-fun lt!1465690 () tuple2!42864)

(assert (=> b!4097370 (= e!2542617 (>= (size!32823 (_1!24566 lt!1465690)) (size!32823 Nil!43932)))))

(declare-fun b!4097371 () Bool)

(declare-fun c!706077 () Bool)

(declare-fun call!289597 () Bool)

(assert (=> b!4097371 (= c!706077 call!289597)))

(declare-fun lt!1465684 () Unit!63463)

(declare-fun lt!1465697 () Unit!63463)

(assert (=> b!4097371 (= lt!1465684 lt!1465697)))

(declare-fun lt!1465703 () C!24220)

(declare-fun lt!1465679 () List!44056)

(assert (=> b!4097371 (= (++!11518 (++!11518 Nil!43932 (Cons!43932 lt!1465703 Nil!43932)) lt!1465679) input!3411)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1277 (List!44056 C!24220 List!44056 List!44056) Unit!63463)

(assert (=> b!4097371 (= lt!1465697 (lemmaMoveElementToOtherListKeepsConcatEq!1277 Nil!43932 lt!1465703 lt!1465679 input!3411))))

(assert (=> b!4097371 (= lt!1465679 (tail!6394 input!3411))))

(assert (=> b!4097371 (= lt!1465703 (head!8660 input!3411))))

(declare-fun lt!1465678 () Unit!63463)

(declare-fun lt!1465700 () Unit!63463)

(assert (=> b!4097371 (= lt!1465678 lt!1465700)))

(declare-fun getSuffix!2506 (List!44056 List!44056) List!44056)

(assert (=> b!4097371 (isPrefix!4153 (++!11518 Nil!43932 (Cons!43932 (head!8660 (getSuffix!2506 input!3411 Nil!43932)) Nil!43932)) input!3411)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!659 (List!44056 List!44056) Unit!63463)

(assert (=> b!4097371 (= lt!1465700 (lemmaAddHeadSuffixToPrefixStillPrefix!659 Nil!43932 input!3411))))

(declare-fun lt!1465689 () Unit!63463)

(declare-fun lt!1465691 () Unit!63463)

(assert (=> b!4097371 (= lt!1465689 lt!1465691)))

(assert (=> b!4097371 (= lt!1465691 (lemmaAddHeadSuffixToPrefixStillPrefix!659 Nil!43932 input!3411))))

(declare-fun lt!1465696 () List!44056)

(assert (=> b!4097371 (= lt!1465696 (++!11518 Nil!43932 (Cons!43932 (head!8660 input!3411) Nil!43932)))))

(declare-fun lt!1465705 () Unit!63463)

(declare-fun e!2542611 () Unit!63463)

(assert (=> b!4097371 (= lt!1465705 e!2542611)))

(declare-fun c!706081 () Bool)

(assert (=> b!4097371 (= c!706081 (= (size!32823 Nil!43932) (size!32823 input!3411)))))

(declare-fun lt!1465685 () Unit!63463)

(declare-fun lt!1465695 () Unit!63463)

(assert (=> b!4097371 (= lt!1465685 lt!1465695)))

(assert (=> b!4097371 (<= (size!32823 Nil!43932) (size!32823 input!3411))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!467 (List!44056 List!44056) Unit!63463)

(assert (=> b!4097371 (= lt!1465695 (lemmaIsPrefixThenSmallerEqSize!467 Nil!43932 input!3411))))

(declare-fun e!2542612 () tuple2!42864)

(assert (=> b!4097371 (= e!2542612 e!2542614)))

(declare-fun d!1216509 () Bool)

(declare-fun e!2542616 () Bool)

(assert (=> d!1216509 e!2542616))

(declare-fun res!1675064 () Bool)

(assert (=> d!1216509 (=> (not res!1675064) (not e!2542616))))

(assert (=> d!1216509 (= res!1675064 (= (++!11518 (_1!24566 lt!1465690) (_2!24566 lt!1465690)) input!3411))))

(declare-fun e!2542613 () tuple2!42864)

(assert (=> d!1216509 (= lt!1465690 e!2542613)))

(declare-fun c!706078 () Bool)

(declare-fun lostCause!1033 (Regex!12017) Bool)

(assert (=> d!1216509 (= c!706078 (lostCause!1033 (regex!7112 (h!49353 rules!3870))))))

(declare-fun lt!1465698 () Unit!63463)

(declare-fun Unit!63468 () Unit!63463)

(assert (=> d!1216509 (= lt!1465698 Unit!63468)))

(assert (=> d!1216509 (= (getSuffix!2506 input!3411 Nil!43932) input!3411)))

(declare-fun lt!1465683 () Unit!63463)

(declare-fun lt!1465701 () Unit!63463)

(assert (=> d!1216509 (= lt!1465683 lt!1465701)))

(declare-fun lt!1465704 () List!44056)

(assert (=> d!1216509 (= input!3411 lt!1465704)))

(declare-fun lemmaSamePrefixThenSameSuffix!2250 (List!44056 List!44056 List!44056 List!44056 List!44056) Unit!63463)

(assert (=> d!1216509 (= lt!1465701 (lemmaSamePrefixThenSameSuffix!2250 Nil!43932 input!3411 Nil!43932 lt!1465704 input!3411))))

(assert (=> d!1216509 (= lt!1465704 (getSuffix!2506 input!3411 Nil!43932))))

(declare-fun lt!1465699 () Unit!63463)

(declare-fun lt!1465686 () Unit!63463)

(assert (=> d!1216509 (= lt!1465699 lt!1465686)))

(assert (=> d!1216509 (isPrefix!4153 Nil!43932 (++!11518 Nil!43932 input!3411))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2924 (List!44056 List!44056) Unit!63463)

(assert (=> d!1216509 (= lt!1465686 (lemmaConcatTwoListThenFirstIsPrefix!2924 Nil!43932 input!3411))))

(assert (=> d!1216509 (validRegex!5449 (regex!7112 (h!49353 rules!3870)))))

(assert (=> d!1216509 (= (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)) lt!1465690)))

(declare-fun bm!289587 () Bool)

(declare-fun call!289593 () C!24220)

(assert (=> bm!289587 (= call!289593 (head!8660 input!3411))))

(declare-fun b!4097372 () Bool)

(declare-fun e!2542618 () tuple2!42864)

(assert (=> b!4097372 (= e!2542618 (tuple2!42865 Nil!43932 Nil!43932))))

(declare-fun b!4097373 () Bool)

(assert (=> b!4097373 (= e!2542614 e!2542615)))

(assert (=> b!4097373 (= lt!1465692 call!289596)))

(declare-fun c!706076 () Bool)

(assert (=> b!4097373 (= c!706076 (isEmpty!26289 (_1!24566 lt!1465692)))))

(declare-fun bm!289588 () Bool)

(assert (=> bm!289588 (= call!289597 (nullable!4249 (regex!7112 (h!49353 rules!3870))))))

(declare-fun bm!289589 () Bool)

(declare-fun call!289592 () Bool)

(assert (=> bm!289589 (= call!289592 (isPrefix!4153 input!3411 input!3411))))

(declare-fun call!289595 () Regex!12017)

(declare-fun bm!289590 () Bool)

(assert (=> bm!289590 (= call!289596 (findLongestMatchInner!1474 call!289595 lt!1465696 (+ (size!32823 Nil!43932) 1) call!289594 input!3411 (size!32823 input!3411)))))

(declare-fun b!4097374 () Bool)

(assert (=> b!4097374 (= e!2542618 (tuple2!42865 Nil!43932 input!3411))))

(declare-fun b!4097375 () Bool)

(assert (=> b!4097375 (= e!2542615 (tuple2!42865 Nil!43932 input!3411))))

(declare-fun b!4097376 () Bool)

(assert (=> b!4097376 (= e!2542613 e!2542612)))

(declare-fun c!706080 () Bool)

(assert (=> b!4097376 (= c!706080 (= (size!32823 Nil!43932) (size!32823 input!3411)))))

(declare-fun b!4097377 () Bool)

(declare-fun Unit!63469 () Unit!63463)

(assert (=> b!4097377 (= e!2542611 Unit!63469)))

(declare-fun b!4097378 () Bool)

(assert (=> b!4097378 (= e!2542613 (tuple2!42865 Nil!43932 input!3411))))

(declare-fun bm!289591 () Bool)

(declare-fun call!289591 () Unit!63463)

(assert (=> bm!289591 (= call!289591 (lemmaIsPrefixRefl!2704 input!3411 input!3411))))

(declare-fun b!4097379 () Bool)

(declare-fun c!706079 () Bool)

(assert (=> b!4097379 (= c!706079 call!289597)))

(declare-fun lt!1465694 () Unit!63463)

(declare-fun lt!1465682 () Unit!63463)

(assert (=> b!4097379 (= lt!1465694 lt!1465682)))

(assert (=> b!4097379 (= input!3411 Nil!43932)))

(declare-fun call!289598 () Unit!63463)

(assert (=> b!4097379 (= lt!1465682 call!289598)))

(declare-fun lt!1465681 () Unit!63463)

(declare-fun lt!1465687 () Unit!63463)

(assert (=> b!4097379 (= lt!1465681 lt!1465687)))

(assert (=> b!4097379 call!289592))

(assert (=> b!4097379 (= lt!1465687 call!289591)))

(assert (=> b!4097379 (= e!2542612 e!2542618)))

(declare-fun bm!289592 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!971 (List!44056 List!44056 List!44056) Unit!63463)

(assert (=> bm!289592 (= call!289598 (lemmaIsPrefixSameLengthThenSameList!971 input!3411 Nil!43932 input!3411))))

(declare-fun bm!289593 () Bool)

(assert (=> bm!289593 (= call!289595 (derivativeStep!3650 (regex!7112 (h!49353 rules!3870)) call!289593))))

(declare-fun b!4097380 () Bool)

(declare-fun Unit!63470 () Unit!63463)

(assert (=> b!4097380 (= e!2542611 Unit!63470)))

(declare-fun lt!1465702 () Unit!63463)

(assert (=> b!4097380 (= lt!1465702 call!289591)))

(assert (=> b!4097380 call!289592))

(declare-fun lt!1465693 () Unit!63463)

(assert (=> b!4097380 (= lt!1465693 lt!1465702)))

(declare-fun lt!1465680 () Unit!63463)

(assert (=> b!4097380 (= lt!1465680 call!289598)))

(assert (=> b!4097380 (= input!3411 Nil!43932)))

(declare-fun lt!1465688 () Unit!63463)

(assert (=> b!4097380 (= lt!1465688 lt!1465680)))

(assert (=> b!4097380 false))

(declare-fun b!4097381 () Bool)

(assert (=> b!4097381 (= e!2542616 e!2542617)))

(declare-fun res!1675063 () Bool)

(assert (=> b!4097381 (=> res!1675063 e!2542617)))

(assert (=> b!4097381 (= res!1675063 (isEmpty!26289 (_1!24566 lt!1465690)))))

(assert (= (and d!1216509 c!706078) b!4097378))

(assert (= (and d!1216509 (not c!706078)) b!4097376))

(assert (= (and b!4097376 c!706080) b!4097379))

(assert (= (and b!4097376 (not c!706080)) b!4097371))

(assert (= (and b!4097379 c!706079) b!4097372))

(assert (= (and b!4097379 (not c!706079)) b!4097374))

(assert (= (and b!4097371 c!706081) b!4097380))

(assert (= (and b!4097371 (not c!706081)) b!4097377))

(assert (= (and b!4097371 c!706077) b!4097373))

(assert (= (and b!4097371 (not c!706077)) b!4097368))

(assert (= (and b!4097373 c!706076) b!4097375))

(assert (= (and b!4097373 (not c!706076)) b!4097369))

(assert (= (or b!4097373 b!4097368) bm!289587))

(assert (= (or b!4097373 b!4097368) bm!289586))

(assert (= (or b!4097373 b!4097368) bm!289593))

(assert (= (or b!4097373 b!4097368) bm!289590))

(assert (= (or b!4097379 b!4097380) bm!289589))

(assert (= (or b!4097379 b!4097380) bm!289591))

(assert (= (or b!4097379 b!4097371) bm!289588))

(assert (= (or b!4097379 b!4097380) bm!289592))

(assert (= (and d!1216509 res!1675064) b!4097381))

(assert (= (and b!4097381 (not res!1675063)) b!4097370))

(assert (=> bm!289591 m!4703607))

(assert (=> bm!289590 m!4703471))

(declare-fun m!4704525 () Bool)

(assert (=> bm!289590 m!4704525))

(assert (=> bm!289588 m!4703953))

(declare-fun m!4704529 () Bool)

(assert (=> b!4097373 m!4704529))

(declare-fun m!4704535 () Bool)

(assert (=> b!4097371 m!4704535))

(declare-fun m!4704539 () Bool)

(assert (=> b!4097371 m!4704539))

(declare-fun m!4704543 () Bool)

(assert (=> b!4097371 m!4704543))

(declare-fun m!4704545 () Bool)

(assert (=> b!4097371 m!4704545))

(assert (=> b!4097371 m!4703919))

(declare-fun m!4704549 () Bool)

(assert (=> b!4097371 m!4704549))

(declare-fun m!4704551 () Bool)

(assert (=> b!4097371 m!4704551))

(assert (=> b!4097371 m!4703471))

(assert (=> b!4097371 m!4703497))

(declare-fun m!4704553 () Bool)

(assert (=> b!4097371 m!4704553))

(assert (=> b!4097371 m!4703921))

(assert (=> b!4097371 m!4704535))

(assert (=> b!4097371 m!4704549))

(declare-fun m!4704555 () Bool)

(assert (=> b!4097371 m!4704555))

(assert (=> b!4097371 m!4704551))

(declare-fun m!4704557 () Bool)

(assert (=> b!4097371 m!4704557))

(declare-fun m!4704559 () Bool)

(assert (=> b!4097371 m!4704559))

(assert (=> bm!289589 m!4703605))

(declare-fun m!4704561 () Bool)

(assert (=> b!4097370 m!4704561))

(assert (=> b!4097370 m!4703497))

(declare-fun m!4704563 () Bool)

(assert (=> bm!289592 m!4704563))

(assert (=> bm!289587 m!4703919))

(assert (=> bm!289586 m!4703921))

(declare-fun m!4704565 () Bool)

(assert (=> bm!289593 m!4704565))

(declare-fun m!4704567 () Bool)

(assert (=> b!4097381 m!4704567))

(declare-fun m!4704569 () Bool)

(assert (=> d!1216509 m!4704569))

(declare-fun m!4704571 () Bool)

(assert (=> d!1216509 m!4704571))

(declare-fun m!4704573 () Bool)

(assert (=> d!1216509 m!4704573))

(declare-fun m!4704575 () Bool)

(assert (=> d!1216509 m!4704575))

(assert (=> d!1216509 m!4704551))

(declare-fun m!4704577 () Bool)

(assert (=> d!1216509 m!4704577))

(declare-fun m!4704579 () Bool)

(assert (=> d!1216509 m!4704579))

(assert (=> d!1216509 m!4703941))

(assert (=> d!1216509 m!4704577))

(assert (=> b!4096728 d!1216509))

(declare-fun d!1216623 () Bool)

(declare-fun lt!1465708 () Int)

(assert (=> d!1216623 (>= lt!1465708 0)))

(declare-fun e!2542623 () Int)

(assert (=> d!1216623 (= lt!1465708 e!2542623)))

(declare-fun c!706083 () Bool)

(assert (=> d!1216623 (= c!706083 ((_ is Nil!43932) Nil!43932))))

(assert (=> d!1216623 (= (size!32823 Nil!43932) lt!1465708)))

(declare-fun b!4097388 () Bool)

(assert (=> b!4097388 (= e!2542623 0)))

(declare-fun b!4097389 () Bool)

(assert (=> b!4097389 (= e!2542623 (+ 1 (size!32823 (t!339271 Nil!43932))))))

(assert (= (and d!1216623 c!706083) b!4097388))

(assert (= (and d!1216623 (not c!706083)) b!4097389))

(declare-fun m!4704583 () Bool)

(assert (=> b!4097389 m!4704583))

(assert (=> b!4096728 d!1216623))

(assert (=> b!4096728 d!1216445))

(declare-fun bs!593632 () Bool)

(declare-fun d!1216627 () Bool)

(assert (= bs!593632 (and d!1216627 d!1216401)))

(declare-fun lambda!128165 () Int)

(assert (=> bs!593632 (= lambda!128165 lambda!128149)))

(declare-fun bs!593633 () Bool)

(assert (= bs!593633 (and d!1216627 d!1216423)))

(assert (=> bs!593633 (= lambda!128165 lambda!128152)))

(declare-fun bs!593635 () Bool)

(assert (= bs!593635 (and d!1216627 d!1216451)))

(assert (=> bs!593635 (= lambda!128165 lambda!128153)))

(assert (=> d!1216627 true))

(declare-fun lt!1465710 () Bool)

(assert (=> d!1216627 (= lt!1465710 (rulesValidInductive!2635 thiss!26199 (t!339272 rules!3870)))))

(assert (=> d!1216627 (= lt!1465710 (forall!8418 (t!339272 rules!3870) lambda!128165))))

(assert (=> d!1216627 (= (rulesValid!2796 thiss!26199 (t!339272 rules!3870)) lt!1465710)))

(declare-fun bs!593638 () Bool)

(assert (= bs!593638 d!1216627))

(assert (=> bs!593638 m!4703695))

(declare-fun m!4704585 () Bool)

(assert (=> bs!593638 m!4704585))

(assert (=> d!1216279 d!1216627))

(declare-fun d!1216629 () Bool)

(declare-fun lt!1465711 () Int)

(assert (=> d!1216629 (>= lt!1465711 0)))

(declare-fun e!2542625 () Int)

(assert (=> d!1216629 (= lt!1465711 e!2542625)))

(declare-fun c!706084 () Bool)

(assert (=> d!1216629 (= c!706084 ((_ is Nil!43932) (originalCharacters!7706 lt!1465201)))))

(assert (=> d!1216629 (= (size!32823 (originalCharacters!7706 lt!1465201)) lt!1465711)))

(declare-fun b!4097391 () Bool)

(assert (=> b!4097391 (= e!2542625 0)))

(declare-fun b!4097392 () Bool)

(assert (=> b!4097392 (= e!2542625 (+ 1 (size!32823 (t!339271 (originalCharacters!7706 lt!1465201)))))))

(assert (= (and d!1216629 c!706084) b!4097391))

(assert (= (and d!1216629 (not c!706084)) b!4097392))

(declare-fun m!4704587 () Bool)

(assert (=> b!4097392 m!4704587))

(assert (=> b!4096443 d!1216629))

(assert (=> b!4096738 d!1216421))

(declare-fun d!1216631 () Bool)

(assert (=> d!1216631 (= (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465329))))) (dynLambda!18839 (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465329))))))))

(declare-fun b_lambda!120331 () Bool)

(assert (=> (not b_lambda!120331) (not d!1216631)))

(declare-fun t!339416 () Bool)

(declare-fun tb!246581 () Bool)

(assert (=> (and b!4096407 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))) t!339416) tb!246581))

(declare-fun result!299222 () Bool)

(assert (=> tb!246581 (= result!299222 (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465329)))))))))

(declare-fun m!4704593 () Bool)

(assert (=> tb!246581 m!4704593))

(assert (=> d!1216631 t!339416))

(declare-fun b_and!316149 () Bool)

(assert (= b_and!316083 (and (=> t!339416 result!299222) b_and!316149)))

(declare-fun tb!246587 () Bool)

(declare-fun t!339422 () Bool)

(assert (=> (and b!4096415 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))) t!339422) tb!246587))

(declare-fun result!299228 () Bool)

(assert (= result!299228 result!299222))

(assert (=> d!1216631 t!339422))

(declare-fun b_and!316151 () Bool)

(assert (= b_and!316085 (and (=> t!339422 result!299228) b_and!316151)))

(declare-fun t!339426 () Bool)

(declare-fun tb!246591 () Bool)

(assert (=> (and b!4096832 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))) t!339426) tb!246591))

(declare-fun result!299232 () Bool)

(assert (= result!299232 result!299222))

(assert (=> d!1216631 t!339426))

(declare-fun b_and!316155 () Bool)

(assert (= b_and!316087 (and (=> t!339426 result!299232) b_and!316155)))

(assert (=> d!1216631 m!4703707))

(declare-fun m!4704597 () Bool)

(assert (=> d!1216631 m!4704597))

(assert (=> b!4096738 d!1216631))

(declare-fun d!1216633 () Bool)

(assert (=> d!1216633 (= (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465329)))) (fromListB!2445 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465329)))))))

(declare-fun bs!593639 () Bool)

(assert (= bs!593639 d!1216633))

(declare-fun m!4704599 () Bool)

(assert (=> bs!593639 m!4704599))

(assert (=> b!4096738 d!1216633))

(declare-fun d!1216635 () Bool)

(declare-fun c!706085 () Bool)

(assert (=> d!1216635 (= c!706085 ((_ is Node!13323) (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))))))

(declare-fun e!2542629 () Bool)

(assert (=> d!1216635 (= (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))) e!2542629)))

(declare-fun b!4097394 () Bool)

(assert (=> b!4097394 (= e!2542629 (inv!58666 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))))))

(declare-fun b!4097395 () Bool)

(declare-fun e!2542630 () Bool)

(assert (=> b!4097395 (= e!2542629 e!2542630)))

(declare-fun res!1675069 () Bool)

(assert (=> b!4097395 (= res!1675069 (not ((_ is Leaf!20594) (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))))))))

(assert (=> b!4097395 (=> res!1675069 e!2542630)))

(declare-fun b!4097396 () Bool)

(assert (=> b!4097396 (= e!2542630 (inv!58667 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))))))

(assert (= (and d!1216635 c!706085) b!4097394))

(assert (= (and d!1216635 (not c!706085)) b!4097395))

(assert (= (and b!4097395 (not res!1675069)) b!4097396))

(declare-fun m!4704611 () Bool)

(assert (=> b!4097394 m!4704611))

(declare-fun m!4704613 () Bool)

(assert (=> b!4097396 m!4704613))

(assert (=> b!4096448 d!1216635))

(declare-fun d!1216639 () Bool)

(assert (=> d!1216639 (= (apply!10295 (transformation!7112 r!4213) (seqFromList!5329 (_1!24566 lt!1465271))) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) (seqFromList!5329 (_1!24566 lt!1465271))))))

(declare-fun b_lambda!120335 () Bool)

(assert (=> (not b_lambda!120335) (not d!1216639)))

(declare-fun t!339432 () Bool)

(declare-fun tb!246597 () Bool)

(assert (=> (and b!4096407 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 r!4213))) t!339432) tb!246597))

(declare-fun result!299238 () Bool)

(assert (=> tb!246597 (= result!299238 (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) (seqFromList!5329 (_1!24566 lt!1465271)))))))

(declare-fun m!4704615 () Bool)

(assert (=> tb!246597 m!4704615))

(assert (=> d!1216639 t!339432))

(declare-fun b_and!316167 () Bool)

(assert (= b_and!316149 (and (=> t!339432 result!299238) b_and!316167)))

(declare-fun t!339434 () Bool)

(declare-fun tb!246599 () Bool)

(assert (=> (and b!4096415 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213))) t!339434) tb!246599))

(declare-fun result!299240 () Bool)

(assert (= result!299240 result!299238))

(assert (=> d!1216639 t!339434))

(declare-fun b_and!316169 () Bool)

(assert (= b_and!316151 (and (=> t!339434 result!299240) b_and!316169)))

(declare-fun t!339436 () Bool)

(declare-fun tb!246601 () Bool)

(assert (=> (and b!4096832 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 r!4213))) t!339436) tb!246601))

(declare-fun result!299242 () Bool)

(assert (= result!299242 result!299238))

(assert (=> d!1216639 t!339436))

(declare-fun b_and!316171 () Bool)

(assert (= b_and!316155 (and (=> t!339436 result!299242) b_and!316171)))

(assert (=> d!1216639 m!4703491))

(declare-fun m!4704621 () Bool)

(assert (=> d!1216639 m!4704621))

(assert (=> b!4096555 d!1216639))

(declare-fun d!1216647 () Bool)

(declare-fun lt!1465716 () Int)

(assert (=> d!1216647 (= lt!1465716 (size!32823 (list!16302 (seqFromList!5329 (_1!24566 lt!1465271)))))))

(declare-fun size!32826 (Conc!13323) Int)

(assert (=> d!1216647 (= lt!1465716 (size!32826 (c!705883 (seqFromList!5329 (_1!24566 lt!1465271)))))))

(assert (=> d!1216647 (= (size!32825 (seqFromList!5329 (_1!24566 lt!1465271))) lt!1465716)))

(declare-fun bs!593647 () Bool)

(assert (= bs!593647 d!1216647))

(assert (=> bs!593647 m!4703491))

(declare-fun m!4704629 () Bool)

(assert (=> bs!593647 m!4704629))

(assert (=> bs!593647 m!4704629))

(declare-fun m!4704631 () Bool)

(assert (=> bs!593647 m!4704631))

(declare-fun m!4704633 () Bool)

(assert (=> bs!593647 m!4704633))

(assert (=> b!4096555 d!1216647))

(declare-fun bs!593651 () Bool)

(declare-fun d!1216657 () Bool)

(assert (= bs!593651 (and d!1216657 d!1216257)))

(declare-fun lambda!128167 () Int)

(assert (=> bs!593651 (= lambda!128167 lambda!128137)))

(declare-fun bs!593652 () Bool)

(assert (= bs!593652 (and d!1216657 d!1216471)))

(assert (=> bs!593652 (= (and (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (h!49353 rules!3870)))) (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (h!49353 rules!3870))))) (= lambda!128167 lambda!128156))))

(declare-fun bs!593653 () Bool)

(assert (= bs!593653 (and d!1216657 d!1216497)))

(assert (=> bs!593653 (= lambda!128167 lambda!128157)))

(declare-fun b!4097398 () Bool)

(declare-fun e!2542633 () Bool)

(assert (=> b!4097398 (= e!2542633 true)))

(assert (=> d!1216657 e!2542633))

(assert (= d!1216657 b!4097398))

(assert (=> b!4097398 (< (dynLambda!18836 order!23161 (toValue!9712 (transformation!7112 r!4213))) (dynLambda!18837 order!23163 lambda!128167))))

(assert (=> b!4097398 (< (dynLambda!18838 order!23165 (toChars!9571 (transformation!7112 r!4213))) (dynLambda!18837 order!23163 lambda!128167))))

(assert (=> d!1216657 (= (list!16302 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) (seqFromList!5329 (_1!24566 lt!1465271))))) (list!16302 (seqFromList!5329 (_1!24566 lt!1465271))))))

(declare-fun lt!1465717 () Unit!63463)

(assert (=> d!1216657 (= lt!1465717 (ForallOf!898 lambda!128167 (seqFromList!5329 (_1!24566 lt!1465271))))))

(assert (=> d!1216657 (= (lemmaSemiInverse!2079 (transformation!7112 r!4213) (seqFromList!5329 (_1!24566 lt!1465271))) lt!1465717)))

(declare-fun b_lambda!120339 () Bool)

(assert (=> (not b_lambda!120339) (not d!1216657)))

(declare-fun t!339438 () Bool)

(declare-fun tb!246603 () Bool)

(assert (=> (and b!4096407 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 r!4213))) t!339438) tb!246603))

(declare-fun e!2542634 () Bool)

(declare-fun tp!1240017 () Bool)

(declare-fun b!4097399 () Bool)

(assert (=> b!4097399 (= e!2542634 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) (seqFromList!5329 (_1!24566 lt!1465271)))))) tp!1240017))))

(declare-fun result!299244 () Bool)

(assert (=> tb!246603 (= result!299244 (and (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) (seqFromList!5329 (_1!24566 lt!1465271))))) e!2542634))))

(assert (= tb!246603 b!4097399))

(declare-fun m!4704639 () Bool)

(assert (=> b!4097399 m!4704639))

(declare-fun m!4704641 () Bool)

(assert (=> tb!246603 m!4704641))

(assert (=> d!1216657 t!339438))

(declare-fun b_and!316173 () Bool)

(assert (= b_and!316089 (and (=> t!339438 result!299244) b_and!316173)))

(declare-fun t!339440 () Bool)

(declare-fun tb!246605 () Bool)

(assert (=> (and b!4096415 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 r!4213))) t!339440) tb!246605))

(declare-fun result!299246 () Bool)

(assert (= result!299246 result!299244))

(assert (=> d!1216657 t!339440))

(declare-fun b_and!316175 () Bool)

(assert (= b_and!316091 (and (=> t!339440 result!299246) b_and!316175)))

(declare-fun t!339442 () Bool)

(declare-fun tb!246607 () Bool)

(assert (=> (and b!4096832 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 r!4213))) t!339442) tb!246607))

(declare-fun result!299248 () Bool)

(assert (= result!299248 result!299244))

(assert (=> d!1216657 t!339442))

(declare-fun b_and!316177 () Bool)

(assert (= b_and!316093 (and (=> t!339442 result!299248) b_and!316177)))

(declare-fun b_lambda!120341 () Bool)

(assert (=> (not b_lambda!120341) (not d!1216657)))

(assert (=> d!1216657 t!339432))

(declare-fun b_and!316179 () Bool)

(assert (= b_and!316167 (and (=> t!339432 result!299238) b_and!316179)))

(assert (=> d!1216657 t!339434))

(declare-fun b_and!316181 () Bool)

(assert (= b_and!316169 (and (=> t!339434 result!299240) b_and!316181)))

(assert (=> d!1216657 t!339436))

(declare-fun b_and!316183 () Bool)

(assert (= b_and!316171 (and (=> t!339436 result!299242) b_and!316183)))

(assert (=> d!1216657 m!4703491))

(assert (=> d!1216657 m!4704621))

(assert (=> d!1216657 m!4704621))

(declare-fun m!4704649 () Bool)

(assert (=> d!1216657 m!4704649))

(assert (=> d!1216657 m!4703491))

(assert (=> d!1216657 m!4704629))

(assert (=> d!1216657 m!4704649))

(declare-fun m!4704651 () Bool)

(assert (=> d!1216657 m!4704651))

(assert (=> d!1216657 m!4703491))

(declare-fun m!4704653 () Bool)

(assert (=> d!1216657 m!4704653))

(assert (=> b!4096555 d!1216657))

(declare-fun d!1216665 () Bool)

(assert (=> d!1216665 (= (seqFromList!5329 (_1!24566 lt!1465271)) (fromListB!2445 (_1!24566 lt!1465271)))))

(declare-fun bs!593655 () Bool)

(assert (= bs!593655 d!1216665))

(declare-fun m!4704657 () Bool)

(assert (=> bs!593655 m!4704657))

(assert (=> b!4096555 d!1216665))

(declare-fun b!4097402 () Bool)

(declare-fun e!2542639 () tuple2!42864)

(declare-fun call!289604 () tuple2!42864)

(assert (=> b!4097402 (= e!2542639 call!289604)))

(declare-fun bm!289594 () Bool)

(declare-fun call!289602 () List!44056)

(assert (=> bm!289594 (= call!289602 (tail!6394 input!3411))))

(declare-fun b!4097403 () Bool)

(declare-fun e!2542640 () tuple2!42864)

(declare-fun lt!1465735 () tuple2!42864)

(assert (=> b!4097403 (= e!2542640 lt!1465735)))

(declare-fun b!4097404 () Bool)

(declare-fun e!2542642 () Bool)

(declare-fun lt!1465733 () tuple2!42864)

(assert (=> b!4097404 (= e!2542642 (>= (size!32823 (_1!24566 lt!1465733)) (size!32823 Nil!43932)))))

(declare-fun b!4097405 () Bool)

(declare-fun c!706088 () Bool)

(declare-fun call!289605 () Bool)

(assert (=> b!4097405 (= c!706088 call!289605)))

(declare-fun lt!1465727 () Unit!63463)

(declare-fun lt!1465740 () Unit!63463)

(assert (=> b!4097405 (= lt!1465727 lt!1465740)))

(declare-fun lt!1465746 () C!24220)

(declare-fun lt!1465722 () List!44056)

(assert (=> b!4097405 (= (++!11518 (++!11518 Nil!43932 (Cons!43932 lt!1465746 Nil!43932)) lt!1465722) input!3411)))

(assert (=> b!4097405 (= lt!1465740 (lemmaMoveElementToOtherListKeepsConcatEq!1277 Nil!43932 lt!1465746 lt!1465722 input!3411))))

(assert (=> b!4097405 (= lt!1465722 (tail!6394 input!3411))))

(assert (=> b!4097405 (= lt!1465746 (head!8660 input!3411))))

(declare-fun lt!1465721 () Unit!63463)

(declare-fun lt!1465743 () Unit!63463)

(assert (=> b!4097405 (= lt!1465721 lt!1465743)))

(assert (=> b!4097405 (isPrefix!4153 (++!11518 Nil!43932 (Cons!43932 (head!8660 (getSuffix!2506 input!3411 Nil!43932)) Nil!43932)) input!3411)))

(assert (=> b!4097405 (= lt!1465743 (lemmaAddHeadSuffixToPrefixStillPrefix!659 Nil!43932 input!3411))))

(declare-fun lt!1465732 () Unit!63463)

(declare-fun lt!1465734 () Unit!63463)

(assert (=> b!4097405 (= lt!1465732 lt!1465734)))

(assert (=> b!4097405 (= lt!1465734 (lemmaAddHeadSuffixToPrefixStillPrefix!659 Nil!43932 input!3411))))

(declare-fun lt!1465739 () List!44056)

(assert (=> b!4097405 (= lt!1465739 (++!11518 Nil!43932 (Cons!43932 (head!8660 input!3411) Nil!43932)))))

(declare-fun lt!1465748 () Unit!63463)

(declare-fun e!2542636 () Unit!63463)

(assert (=> b!4097405 (= lt!1465748 e!2542636)))

(declare-fun c!706092 () Bool)

(assert (=> b!4097405 (= c!706092 (= (size!32823 Nil!43932) (size!32823 input!3411)))))

(declare-fun lt!1465728 () Unit!63463)

(declare-fun lt!1465738 () Unit!63463)

(assert (=> b!4097405 (= lt!1465728 lt!1465738)))

(assert (=> b!4097405 (<= (size!32823 Nil!43932) (size!32823 input!3411))))

(assert (=> b!4097405 (= lt!1465738 (lemmaIsPrefixThenSmallerEqSize!467 Nil!43932 input!3411))))

(declare-fun e!2542637 () tuple2!42864)

(assert (=> b!4097405 (= e!2542637 e!2542639)))

(declare-fun d!1216669 () Bool)

(declare-fun e!2542641 () Bool)

(assert (=> d!1216669 e!2542641))

(declare-fun res!1675072 () Bool)

(assert (=> d!1216669 (=> (not res!1675072) (not e!2542641))))

(assert (=> d!1216669 (= res!1675072 (= (++!11518 (_1!24566 lt!1465733) (_2!24566 lt!1465733)) input!3411))))

(declare-fun e!2542638 () tuple2!42864)

(assert (=> d!1216669 (= lt!1465733 e!2542638)))

(declare-fun c!706089 () Bool)

(assert (=> d!1216669 (= c!706089 (lostCause!1033 (regex!7112 r!4213)))))

(declare-fun lt!1465741 () Unit!63463)

(declare-fun Unit!63471 () Unit!63463)

(assert (=> d!1216669 (= lt!1465741 Unit!63471)))

(assert (=> d!1216669 (= (getSuffix!2506 input!3411 Nil!43932) input!3411)))

(declare-fun lt!1465726 () Unit!63463)

(declare-fun lt!1465744 () Unit!63463)

(assert (=> d!1216669 (= lt!1465726 lt!1465744)))

(declare-fun lt!1465747 () List!44056)

(assert (=> d!1216669 (= input!3411 lt!1465747)))

(assert (=> d!1216669 (= lt!1465744 (lemmaSamePrefixThenSameSuffix!2250 Nil!43932 input!3411 Nil!43932 lt!1465747 input!3411))))

(assert (=> d!1216669 (= lt!1465747 (getSuffix!2506 input!3411 Nil!43932))))

(declare-fun lt!1465742 () Unit!63463)

(declare-fun lt!1465729 () Unit!63463)

(assert (=> d!1216669 (= lt!1465742 lt!1465729)))

(assert (=> d!1216669 (isPrefix!4153 Nil!43932 (++!11518 Nil!43932 input!3411))))

(assert (=> d!1216669 (= lt!1465729 (lemmaConcatTwoListThenFirstIsPrefix!2924 Nil!43932 input!3411))))

(assert (=> d!1216669 (validRegex!5449 (regex!7112 r!4213))))

(assert (=> d!1216669 (= (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)) lt!1465733)))

(declare-fun bm!289595 () Bool)

(declare-fun call!289601 () C!24220)

(assert (=> bm!289595 (= call!289601 (head!8660 input!3411))))

(declare-fun b!4097406 () Bool)

(declare-fun e!2542643 () tuple2!42864)

(assert (=> b!4097406 (= e!2542643 (tuple2!42865 Nil!43932 Nil!43932))))

(declare-fun b!4097407 () Bool)

(assert (=> b!4097407 (= e!2542639 e!2542640)))

(assert (=> b!4097407 (= lt!1465735 call!289604)))

(declare-fun c!706087 () Bool)

(assert (=> b!4097407 (= c!706087 (isEmpty!26289 (_1!24566 lt!1465735)))))

(declare-fun bm!289596 () Bool)

(assert (=> bm!289596 (= call!289605 (nullable!4249 (regex!7112 r!4213)))))

(declare-fun bm!289597 () Bool)

(declare-fun call!289600 () Bool)

(assert (=> bm!289597 (= call!289600 (isPrefix!4153 input!3411 input!3411))))

(declare-fun bm!289598 () Bool)

(declare-fun call!289603 () Regex!12017)

(assert (=> bm!289598 (= call!289604 (findLongestMatchInner!1474 call!289603 lt!1465739 (+ (size!32823 Nil!43932) 1) call!289602 input!3411 (size!32823 input!3411)))))

(declare-fun b!4097408 () Bool)

(assert (=> b!4097408 (= e!2542643 (tuple2!42865 Nil!43932 input!3411))))

(declare-fun b!4097409 () Bool)

(assert (=> b!4097409 (= e!2542640 (tuple2!42865 Nil!43932 input!3411))))

(declare-fun b!4097410 () Bool)

(assert (=> b!4097410 (= e!2542638 e!2542637)))

(declare-fun c!706091 () Bool)

(assert (=> b!4097410 (= c!706091 (= (size!32823 Nil!43932) (size!32823 input!3411)))))

(declare-fun b!4097411 () Bool)

(declare-fun Unit!63472 () Unit!63463)

(assert (=> b!4097411 (= e!2542636 Unit!63472)))

(declare-fun b!4097412 () Bool)

(assert (=> b!4097412 (= e!2542638 (tuple2!42865 Nil!43932 input!3411))))

(declare-fun bm!289599 () Bool)

(declare-fun call!289599 () Unit!63463)

(assert (=> bm!289599 (= call!289599 (lemmaIsPrefixRefl!2704 input!3411 input!3411))))

(declare-fun b!4097413 () Bool)

(declare-fun c!706090 () Bool)

(assert (=> b!4097413 (= c!706090 call!289605)))

(declare-fun lt!1465737 () Unit!63463)

(declare-fun lt!1465725 () Unit!63463)

(assert (=> b!4097413 (= lt!1465737 lt!1465725)))

(assert (=> b!4097413 (= input!3411 Nil!43932)))

(declare-fun call!289606 () Unit!63463)

(assert (=> b!4097413 (= lt!1465725 call!289606)))

(declare-fun lt!1465724 () Unit!63463)

(declare-fun lt!1465730 () Unit!63463)

(assert (=> b!4097413 (= lt!1465724 lt!1465730)))

(assert (=> b!4097413 call!289600))

(assert (=> b!4097413 (= lt!1465730 call!289599)))

(assert (=> b!4097413 (= e!2542637 e!2542643)))

(declare-fun bm!289600 () Bool)

(assert (=> bm!289600 (= call!289606 (lemmaIsPrefixSameLengthThenSameList!971 input!3411 Nil!43932 input!3411))))

(declare-fun bm!289601 () Bool)

(assert (=> bm!289601 (= call!289603 (derivativeStep!3650 (regex!7112 r!4213) call!289601))))

(declare-fun b!4097414 () Bool)

(declare-fun Unit!63475 () Unit!63463)

(assert (=> b!4097414 (= e!2542636 Unit!63475)))

(declare-fun lt!1465745 () Unit!63463)

(assert (=> b!4097414 (= lt!1465745 call!289599)))

(assert (=> b!4097414 call!289600))

(declare-fun lt!1465736 () Unit!63463)

(assert (=> b!4097414 (= lt!1465736 lt!1465745)))

(declare-fun lt!1465723 () Unit!63463)

(assert (=> b!4097414 (= lt!1465723 call!289606)))

(assert (=> b!4097414 (= input!3411 Nil!43932)))

(declare-fun lt!1465731 () Unit!63463)

(assert (=> b!4097414 (= lt!1465731 lt!1465723)))

(assert (=> b!4097414 false))

(declare-fun b!4097415 () Bool)

(assert (=> b!4097415 (= e!2542641 e!2542642)))

(declare-fun res!1675071 () Bool)

(assert (=> b!4097415 (=> res!1675071 e!2542642)))

(assert (=> b!4097415 (= res!1675071 (isEmpty!26289 (_1!24566 lt!1465733)))))

(assert (= (and d!1216669 c!706089) b!4097412))

(assert (= (and d!1216669 (not c!706089)) b!4097410))

(assert (= (and b!4097410 c!706091) b!4097413))

(assert (= (and b!4097410 (not c!706091)) b!4097405))

(assert (= (and b!4097413 c!706090) b!4097406))

(assert (= (and b!4097413 (not c!706090)) b!4097408))

(assert (= (and b!4097405 c!706092) b!4097414))

(assert (= (and b!4097405 (not c!706092)) b!4097411))

(assert (= (and b!4097405 c!706088) b!4097407))

(assert (= (and b!4097405 (not c!706088)) b!4097402))

(assert (= (and b!4097407 c!706087) b!4097409))

(assert (= (and b!4097407 (not c!706087)) b!4097403))

(assert (= (or b!4097407 b!4097402) bm!289595))

(assert (= (or b!4097407 b!4097402) bm!289594))

(assert (= (or b!4097407 b!4097402) bm!289601))

(assert (= (or b!4097407 b!4097402) bm!289598))

(assert (= (or b!4097413 b!4097414) bm!289597))

(assert (= (or b!4097413 b!4097414) bm!289599))

(assert (= (or b!4097413 b!4097405) bm!289596))

(assert (= (or b!4097413 b!4097414) bm!289600))

(assert (= (and d!1216669 res!1675072) b!4097415))

(assert (= (and b!4097415 (not res!1675071)) b!4097404))

(assert (=> bm!289599 m!4703607))

(assert (=> bm!289598 m!4703471))

(declare-fun m!4704659 () Bool)

(assert (=> bm!289598 m!4704659))

(assert (=> bm!289596 m!4703737))

(declare-fun m!4704661 () Bool)

(assert (=> b!4097407 m!4704661))

(assert (=> b!4097405 m!4704535))

(assert (=> b!4097405 m!4704539))

(assert (=> b!4097405 m!4704543))

(assert (=> b!4097405 m!4704545))

(assert (=> b!4097405 m!4703919))

(declare-fun m!4704663 () Bool)

(assert (=> b!4097405 m!4704663))

(assert (=> b!4097405 m!4704551))

(assert (=> b!4097405 m!4703471))

(assert (=> b!4097405 m!4703497))

(declare-fun m!4704665 () Bool)

(assert (=> b!4097405 m!4704665))

(assert (=> b!4097405 m!4703921))

(assert (=> b!4097405 m!4704535))

(assert (=> b!4097405 m!4704663))

(declare-fun m!4704667 () Bool)

(assert (=> b!4097405 m!4704667))

(assert (=> b!4097405 m!4704551))

(assert (=> b!4097405 m!4704557))

(assert (=> b!4097405 m!4704559))

(assert (=> bm!289597 m!4703605))

(declare-fun m!4704669 () Bool)

(assert (=> b!4097404 m!4704669))

(assert (=> b!4097404 m!4703497))

(assert (=> bm!289600 m!4704563))

(assert (=> bm!289595 m!4703919))

(assert (=> bm!289594 m!4703921))

(declare-fun m!4704671 () Bool)

(assert (=> bm!289601 m!4704671))

(declare-fun m!4704673 () Bool)

(assert (=> b!4097415 m!4704673))

(declare-fun m!4704675 () Bool)

(assert (=> d!1216669 m!4704675))

(declare-fun m!4704677 () Bool)

(assert (=> d!1216669 m!4704677))

(declare-fun m!4704679 () Bool)

(assert (=> d!1216669 m!4704679))

(assert (=> d!1216669 m!4704575))

(assert (=> d!1216669 m!4704551))

(assert (=> d!1216669 m!4704577))

(assert (=> d!1216669 m!4704579))

(assert (=> d!1216669 m!4703735))

(assert (=> d!1216669 m!4704577))

(assert (=> b!4096555 d!1216669))

(declare-fun d!1216673 () Bool)

(assert (=> d!1216673 (= (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))) ((_ is Nil!43932) (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (=> b!4096555 d!1216673))

(assert (=> b!4096555 d!1216445))

(assert (=> b!4096555 d!1216623))

(declare-fun d!1216675 () Bool)

(declare-fun e!2542673 () Bool)

(assert (=> d!1216675 e!2542673))

(declare-fun res!1675095 () Bool)

(assert (=> d!1216675 (=> res!1675095 e!2542673)))

(assert (=> d!1216675 (= res!1675095 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(declare-fun lt!1465755 () Unit!63463)

(declare-fun choose!25036 (Regex!12017 List!44056) Unit!63463)

(assert (=> d!1216675 (= lt!1465755 (choose!25036 (regex!7112 r!4213) input!3411))))

(assert (=> d!1216675 (validRegex!5449 (regex!7112 r!4213))))

(assert (=> d!1216675 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1447 (regex!7112 r!4213) input!3411) lt!1465755)))

(declare-fun b!4097454 () Bool)

(assert (=> b!4097454 (= e!2542673 (matchR!5958 (regex!7112 r!4213) (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (= (and d!1216675 (not res!1675095)) b!4097454))

(assert (=> d!1216675 m!4703497))

(assert (=> d!1216675 m!4703497))

(assert (=> d!1216675 m!4703471))

(assert (=> d!1216675 m!4703499))

(assert (=> d!1216675 m!4703735))

(assert (=> d!1216675 m!4703501))

(assert (=> d!1216675 m!4703471))

(declare-fun m!4704715 () Bool)

(assert (=> d!1216675 m!4704715))

(assert (=> b!4097454 m!4703497))

(assert (=> b!4097454 m!4703471))

(assert (=> b!4097454 m!4703497))

(assert (=> b!4097454 m!4703471))

(assert (=> b!4097454 m!4703499))

(assert (=> b!4097454 m!4703507))

(assert (=> b!4096555 d!1216675))

(assert (=> b!4096726 d!1216365))

(declare-fun b!4097455 () Bool)

(declare-fun res!1675101 () Bool)

(declare-fun e!2542675 () Bool)

(assert (=> b!4097455 (=> (not res!1675101) (not e!2542675))))

(declare-fun call!289616 () Bool)

(assert (=> b!4097455 (= res!1675101 (not call!289616))))

(declare-fun bm!289611 () Bool)

(assert (=> bm!289611 (= call!289616 (isEmpty!26289 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))))))

(declare-fun b!4097456 () Bool)

(declare-fun res!1675096 () Bool)

(declare-fun e!2542679 () Bool)

(assert (=> b!4097456 (=> res!1675096 e!2542679)))

(assert (=> b!4097456 (= res!1675096 (not (isEmpty!26289 (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))))))))

(declare-fun b!4097457 () Bool)

(declare-fun res!1675099 () Bool)

(declare-fun e!2542677 () Bool)

(assert (=> b!4097457 (=> res!1675099 e!2542677)))

(assert (=> b!4097457 (= res!1675099 (not ((_ is ElementMatch!12017) (regex!7112 r!4213))))))

(declare-fun e!2542676 () Bool)

(assert (=> b!4097457 (= e!2542676 e!2542677)))

(declare-fun b!4097458 () Bool)

(declare-fun e!2542678 () Bool)

(assert (=> b!4097458 (= e!2542678 (matchR!5958 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270)))))) (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270)))))))))

(declare-fun b!4097459 () Bool)

(assert (=> b!4097459 (= e!2542675 (= (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))) (c!705882 (regex!7112 r!4213))))))

(declare-fun b!4097460 () Bool)

(declare-fun e!2542681 () Bool)

(assert (=> b!4097460 (= e!2542681 e!2542676)))

(declare-fun c!706103 () Bool)

(assert (=> b!4097460 (= c!706103 ((_ is EmptyLang!12017) (regex!7112 r!4213)))))

(declare-fun b!4097461 () Bool)

(declare-fun res!1675103 () Bool)

(assert (=> b!4097461 (=> res!1675103 e!2542677)))

(assert (=> b!4097461 (= res!1675103 e!2542675)))

(declare-fun res!1675102 () Bool)

(assert (=> b!4097461 (=> (not res!1675102) (not e!2542675))))

(declare-fun lt!1465756 () Bool)

(assert (=> b!4097461 (= res!1675102 lt!1465756)))

(declare-fun b!4097462 () Bool)

(assert (=> b!4097462 (= e!2542681 (= lt!1465756 call!289616))))

(declare-fun d!1216693 () Bool)

(assert (=> d!1216693 e!2542681))

(declare-fun c!706101 () Bool)

(assert (=> d!1216693 (= c!706101 ((_ is EmptyExpr!12017) (regex!7112 r!4213)))))

(assert (=> d!1216693 (= lt!1465756 e!2542678)))

(declare-fun c!706102 () Bool)

(assert (=> d!1216693 (= c!706102 (isEmpty!26289 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))))))

(assert (=> d!1216693 (validRegex!5449 (regex!7112 r!4213))))

(assert (=> d!1216693 (= (matchR!5958 (regex!7112 r!4213) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))) lt!1465756)))

(declare-fun b!4097463 () Bool)

(declare-fun e!2542680 () Bool)

(assert (=> b!4097463 (= e!2542677 e!2542680)))

(declare-fun res!1675097 () Bool)

(assert (=> b!4097463 (=> (not res!1675097) (not e!2542680))))

(assert (=> b!4097463 (= res!1675097 (not lt!1465756))))

(declare-fun b!4097464 () Bool)

(assert (=> b!4097464 (= e!2542676 (not lt!1465756))))

(declare-fun b!4097465 () Bool)

(assert (=> b!4097465 (= e!2542679 (not (= (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270))))) (c!705882 (regex!7112 r!4213)))))))

(declare-fun b!4097466 () Bool)

(declare-fun res!1675098 () Bool)

(assert (=> b!4097466 (=> (not res!1675098) (not e!2542675))))

(assert (=> b!4097466 (= res!1675098 (isEmpty!26289 (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465270)))))))))

(declare-fun b!4097467 () Bool)

(assert (=> b!4097467 (= e!2542678 (nullable!4249 (regex!7112 r!4213)))))

(declare-fun b!4097468 () Bool)

(assert (=> b!4097468 (= e!2542680 e!2542679)))

(declare-fun res!1675100 () Bool)

(assert (=> b!4097468 (=> res!1675100 e!2542679)))

(assert (=> b!4097468 (= res!1675100 call!289616)))

(assert (= (and d!1216693 c!706102) b!4097467))

(assert (= (and d!1216693 (not c!706102)) b!4097458))

(assert (= (and d!1216693 c!706101) b!4097462))

(assert (= (and d!1216693 (not c!706101)) b!4097460))

(assert (= (and b!4097460 c!706103) b!4097464))

(assert (= (and b!4097460 (not c!706103)) b!4097457))

(assert (= (and b!4097457 (not res!1675099)) b!4097461))

(assert (= (and b!4097461 res!1675102) b!4097455))

(assert (= (and b!4097455 res!1675101) b!4097466))

(assert (= (and b!4097466 res!1675098) b!4097459))

(assert (= (and b!4097461 (not res!1675103)) b!4097463))

(assert (= (and b!4097463 res!1675097) b!4097468))

(assert (= (and b!4097468 (not res!1675100)) b!4097456))

(assert (= (and b!4097456 (not res!1675096)) b!4097465))

(assert (= (or b!4097462 b!4097455 b!4097468) bm!289611))

(assert (=> b!4097465 m!4703465))

(declare-fun m!4704719 () Bool)

(assert (=> b!4097465 m!4704719))

(assert (=> d!1216693 m!4703465))

(declare-fun m!4704721 () Bool)

(assert (=> d!1216693 m!4704721))

(assert (=> d!1216693 m!4703735))

(assert (=> b!4097459 m!4703465))

(assert (=> b!4097459 m!4704719))

(assert (=> bm!289611 m!4703465))

(assert (=> bm!289611 m!4704721))

(assert (=> b!4097467 m!4703737))

(assert (=> b!4097456 m!4703465))

(declare-fun m!4704723 () Bool)

(assert (=> b!4097456 m!4704723))

(assert (=> b!4097456 m!4704723))

(declare-fun m!4704725 () Bool)

(assert (=> b!4097456 m!4704725))

(assert (=> b!4097466 m!4703465))

(assert (=> b!4097466 m!4704723))

(assert (=> b!4097466 m!4704723))

(assert (=> b!4097466 m!4704725))

(assert (=> b!4097458 m!4703465))

(assert (=> b!4097458 m!4704719))

(assert (=> b!4097458 m!4704719))

(declare-fun m!4704727 () Bool)

(assert (=> b!4097458 m!4704727))

(assert (=> b!4097458 m!4703465))

(assert (=> b!4097458 m!4704723))

(assert (=> b!4097458 m!4704727))

(assert (=> b!4097458 m!4704723))

(declare-fun m!4704729 () Bool)

(assert (=> b!4097458 m!4704729))

(assert (=> b!4096551 d!1216693))

(assert (=> b!4096551 d!1216381))

(assert (=> b!4096551 d!1216383))

(assert (=> b!4096551 d!1216361))

(declare-fun d!1216697 () Bool)

(declare-fun lt!1465757 () Int)

(assert (=> d!1216697 (>= lt!1465757 0)))

(declare-fun e!2542682 () Int)

(assert (=> d!1216697 (= lt!1465757 e!2542682)))

(declare-fun c!706104 () Bool)

(assert (=> d!1216697 (= c!706104 ((_ is Nil!43932) (_2!24564 (get!14412 lt!1465319))))))

(assert (=> d!1216697 (= (size!32823 (_2!24564 (get!14412 lt!1465319))) lt!1465757)))

(declare-fun b!4097469 () Bool)

(assert (=> b!4097469 (= e!2542682 0)))

(declare-fun b!4097470 () Bool)

(assert (=> b!4097470 (= e!2542682 (+ 1 (size!32823 (t!339271 (_2!24564 (get!14412 lt!1465319))))))))

(assert (= (and d!1216697 c!706104) b!4097469))

(assert (= (and d!1216697 (not c!706104)) b!4097470))

(declare-fun m!4704731 () Bool)

(assert (=> b!4097470 m!4704731))

(assert (=> b!4096722 d!1216697))

(assert (=> b!4096722 d!1216365))

(assert (=> b!4096722 d!1216445))

(declare-fun d!1216699 () Bool)

(declare-fun lt!1465758 () Int)

(assert (=> d!1216699 (>= lt!1465758 0)))

(declare-fun e!2542683 () Int)

(assert (=> d!1216699 (= lt!1465758 e!2542683)))

(declare-fun c!706105 () Bool)

(assert (=> d!1216699 (= c!706105 ((_ is Nil!43932) (_2!24564 (get!14412 lt!1465270))))))

(assert (=> d!1216699 (= (size!32823 (_2!24564 (get!14412 lt!1465270))) lt!1465758)))

(declare-fun b!4097471 () Bool)

(assert (=> b!4097471 (= e!2542683 0)))

(declare-fun b!4097472 () Bool)

(assert (=> b!4097472 (= e!2542683 (+ 1 (size!32823 (t!339271 (_2!24564 (get!14412 lt!1465270))))))))

(assert (= (and d!1216699 c!706105) b!4097471))

(assert (= (and d!1216699 (not c!706105)) b!4097472))

(declare-fun m!4704733 () Bool)

(assert (=> b!4097472 m!4704733))

(assert (=> b!4096553 d!1216699))

(assert (=> b!4096553 d!1216361))

(assert (=> b!4096553 d!1216445))

(declare-fun d!1216701 () Bool)

(declare-fun lt!1465759 () Int)

(assert (=> d!1216701 (= lt!1465759 (size!32823 (list!16302 (seqFromList!5329 (_1!24566 lt!1465320)))))))

(assert (=> d!1216701 (= lt!1465759 (size!32826 (c!705883 (seqFromList!5329 (_1!24566 lt!1465320)))))))

(assert (=> d!1216701 (= (size!32825 (seqFromList!5329 (_1!24566 lt!1465320))) lt!1465759)))

(declare-fun bs!593663 () Bool)

(assert (= bs!593663 d!1216701))

(assert (=> bs!593663 m!4703669))

(declare-fun m!4704735 () Bool)

(assert (=> bs!593663 m!4704735))

(assert (=> bs!593663 m!4704735))

(declare-fun m!4704737 () Bool)

(assert (=> bs!593663 m!4704737))

(declare-fun m!4704739 () Bool)

(assert (=> bs!593663 m!4704739))

(assert (=> b!4096724 d!1216701))

(assert (=> b!4096724 d!1216445))

(assert (=> b!4096724 d!1216623))

(declare-fun d!1216703 () Bool)

(assert (=> d!1216703 (= (apply!10295 (transformation!7112 (h!49353 rules!3870)) (seqFromList!5329 (_1!24566 lt!1465320))) (dynLambda!18839 (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (seqFromList!5329 (_1!24566 lt!1465320))))))

(declare-fun b_lambda!120347 () Bool)

(assert (=> (not b_lambda!120347) (not d!1216703)))

(declare-fun tb!246615 () Bool)

(declare-fun t!339450 () Bool)

(assert (=> (and b!4096407 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) t!339450) tb!246615))

(declare-fun result!299256 () Bool)

(assert (=> tb!246615 (= result!299256 (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (seqFromList!5329 (_1!24566 lt!1465320)))))))

(declare-fun m!4704741 () Bool)

(assert (=> tb!246615 m!4704741))

(assert (=> d!1216703 t!339450))

(declare-fun b_and!316191 () Bool)

(assert (= b_and!316179 (and (=> t!339450 result!299256) b_and!316191)))

(declare-fun t!339452 () Bool)

(declare-fun tb!246617 () Bool)

(assert (=> (and b!4096415 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) t!339452) tb!246617))

(declare-fun result!299258 () Bool)

(assert (= result!299258 result!299256))

(assert (=> d!1216703 t!339452))

(declare-fun b_and!316193 () Bool)

(assert (= b_and!316181 (and (=> t!339452 result!299258) b_and!316193)))

(declare-fun t!339454 () Bool)

(declare-fun tb!246619 () Bool)

(assert (=> (and b!4096832 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) t!339454) tb!246619))

(declare-fun result!299260 () Bool)

(assert (= result!299260 result!299256))

(assert (=> d!1216703 t!339454))

(declare-fun b_and!316195 () Bool)

(assert (= b_and!316183 (and (=> t!339454 result!299260) b_and!316195)))

(assert (=> d!1216703 m!4703669))

(declare-fun m!4704743 () Bool)

(assert (=> d!1216703 m!4704743))

(assert (=> b!4096724 d!1216703))

(assert (=> b!4096724 d!1216509))

(declare-fun d!1216705 () Bool)

(assert (=> d!1216705 (= (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))) ((_ is Nil!43932) (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (=> b!4096724 d!1216705))

(declare-fun d!1216707 () Bool)

(assert (=> d!1216707 (= (seqFromList!5329 (_1!24566 lt!1465320)) (fromListB!2445 (_1!24566 lt!1465320)))))

(declare-fun bs!593664 () Bool)

(assert (= bs!593664 d!1216707))

(declare-fun m!4704745 () Bool)

(assert (=> bs!593664 m!4704745))

(assert (=> b!4096724 d!1216707))

(declare-fun bs!593665 () Bool)

(declare-fun d!1216709 () Bool)

(assert (= bs!593665 (and d!1216709 d!1216257)))

(declare-fun lambda!128169 () Int)

(assert (=> bs!593665 (= (and (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 r!4213))) (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (= lambda!128169 lambda!128137))))

(declare-fun bs!593666 () Bool)

(assert (= bs!593666 (and d!1216709 d!1216471)))

(assert (=> bs!593666 (= lambda!128169 lambda!128156)))

(declare-fun bs!593667 () Bool)

(assert (= bs!593667 (and d!1216709 d!1216497)))

(assert (=> bs!593667 (= (and (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 r!4213))) (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (= lambda!128169 lambda!128157))))

(declare-fun bs!593668 () Bool)

(assert (= bs!593668 (and d!1216709 d!1216657)))

(assert (=> bs!593668 (= (and (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 r!4213))) (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (= lambda!128169 lambda!128167))))

(declare-fun b!4097473 () Bool)

(declare-fun e!2542685 () Bool)

(assert (=> b!4097473 (= e!2542685 true)))

(assert (=> d!1216709 e!2542685))

(assert (= d!1216709 b!4097473))

(assert (=> b!4097473 (< (dynLambda!18836 order!23161 (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) (dynLambda!18837 order!23163 lambda!128169))))

(assert (=> b!4097473 (< (dynLambda!18838 order!23165 (toChars!9571 (transformation!7112 (h!49353 rules!3870)))) (dynLambda!18837 order!23163 lambda!128169))))

(assert (=> d!1216709 (= (list!16302 (dynLambda!18835 (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (dynLambda!18839 (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (seqFromList!5329 (_1!24566 lt!1465320))))) (list!16302 (seqFromList!5329 (_1!24566 lt!1465320))))))

(declare-fun lt!1465760 () Unit!63463)

(assert (=> d!1216709 (= lt!1465760 (ForallOf!898 lambda!128169 (seqFromList!5329 (_1!24566 lt!1465320))))))

(assert (=> d!1216709 (= (lemmaSemiInverse!2079 (transformation!7112 (h!49353 rules!3870)) (seqFromList!5329 (_1!24566 lt!1465320))) lt!1465760)))

(declare-fun b_lambda!120349 () Bool)

(assert (=> (not b_lambda!120349) (not d!1216709)))

(declare-fun t!339456 () Bool)

(declare-fun tb!246621 () Bool)

(assert (=> (and b!4096407 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (h!49353 rules!3870)))) t!339456) tb!246621))

(declare-fun e!2542686 () Bool)

(declare-fun b!4097474 () Bool)

(declare-fun tp!1240018 () Bool)

(assert (=> b!4097474 (= e!2542686 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (dynLambda!18839 (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (seqFromList!5329 (_1!24566 lt!1465320)))))) tp!1240018))))

(declare-fun result!299262 () Bool)

(assert (=> tb!246621 (= result!299262 (and (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (dynLambda!18839 (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (seqFromList!5329 (_1!24566 lt!1465320))))) e!2542686))))

(assert (= tb!246621 b!4097474))

(declare-fun m!4704747 () Bool)

(assert (=> b!4097474 m!4704747))

(declare-fun m!4704749 () Bool)

(assert (=> tb!246621 m!4704749))

(assert (=> d!1216709 t!339456))

(declare-fun b_and!316197 () Bool)

(assert (= b_and!316173 (and (=> t!339456 result!299262) b_and!316197)))

(declare-fun t!339458 () Bool)

(declare-fun tb!246623 () Bool)

(assert (=> (and b!4096415 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 (h!49353 rules!3870)))) t!339458) tb!246623))

(declare-fun result!299264 () Bool)

(assert (= result!299264 result!299262))

(assert (=> d!1216709 t!339458))

(declare-fun b_and!316199 () Bool)

(assert (= b_and!316175 (and (=> t!339458 result!299264) b_and!316199)))

(declare-fun t!339460 () Bool)

(declare-fun tb!246625 () Bool)

(assert (=> (and b!4096832 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 (h!49353 rules!3870)))) t!339460) tb!246625))

(declare-fun result!299266 () Bool)

(assert (= result!299266 result!299262))

(assert (=> d!1216709 t!339460))

(declare-fun b_and!316201 () Bool)

(assert (= b_and!316177 (and (=> t!339460 result!299266) b_and!316201)))

(declare-fun b_lambda!120351 () Bool)

(assert (=> (not b_lambda!120351) (not d!1216709)))

(assert (=> d!1216709 t!339450))

(declare-fun b_and!316203 () Bool)

(assert (= b_and!316191 (and (=> t!339450 result!299256) b_and!316203)))

(assert (=> d!1216709 t!339452))

(declare-fun b_and!316205 () Bool)

(assert (= b_and!316193 (and (=> t!339452 result!299258) b_and!316205)))

(assert (=> d!1216709 t!339454))

(declare-fun b_and!316207 () Bool)

(assert (= b_and!316195 (and (=> t!339454 result!299260) b_and!316207)))

(assert (=> d!1216709 m!4703669))

(assert (=> d!1216709 m!4704743))

(assert (=> d!1216709 m!4704743))

(declare-fun m!4704751 () Bool)

(assert (=> d!1216709 m!4704751))

(assert (=> d!1216709 m!4703669))

(assert (=> d!1216709 m!4704735))

(assert (=> d!1216709 m!4704751))

(declare-fun m!4704753 () Bool)

(assert (=> d!1216709 m!4704753))

(assert (=> d!1216709 m!4703669))

(declare-fun m!4704755 () Bool)

(assert (=> d!1216709 m!4704755))

(assert (=> b!4096724 d!1216709))

(declare-fun d!1216711 () Bool)

(declare-fun e!2542687 () Bool)

(assert (=> d!1216711 e!2542687))

(declare-fun res!1675104 () Bool)

(assert (=> d!1216711 (=> res!1675104 e!2542687)))

(assert (=> d!1216711 (= res!1675104 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(declare-fun lt!1465761 () Unit!63463)

(assert (=> d!1216711 (= lt!1465761 (choose!25036 (regex!7112 (h!49353 rules!3870)) input!3411))))

(assert (=> d!1216711 (validRegex!5449 (regex!7112 (h!49353 rules!3870)))))

(assert (=> d!1216711 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1447 (regex!7112 (h!49353 rules!3870)) input!3411) lt!1465761)))

(declare-fun b!4097475 () Bool)

(assert (=> b!4097475 (= e!2542687 (matchR!5958 (regex!7112 (h!49353 rules!3870)) (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 rules!3870)) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (= (and d!1216711 (not res!1675104)) b!4097475))

(assert (=> d!1216711 m!4703497))

(assert (=> d!1216711 m!4703497))

(assert (=> d!1216711 m!4703471))

(assert (=> d!1216711 m!4703675))

(assert (=> d!1216711 m!4703941))

(assert (=> d!1216711 m!4703677))

(assert (=> d!1216711 m!4703471))

(declare-fun m!4704757 () Bool)

(assert (=> d!1216711 m!4704757))

(assert (=> b!4097475 m!4703497))

(assert (=> b!4097475 m!4703471))

(assert (=> b!4097475 m!4703497))

(assert (=> b!4097475 m!4703471))

(assert (=> b!4097475 m!4703675))

(assert (=> b!4097475 m!4703683))

(assert (=> b!4096724 d!1216711))

(declare-fun d!1216713 () Bool)

(declare-fun e!2542689 () Bool)

(assert (=> d!1216713 e!2542689))

(declare-fun res!1675106 () Bool)

(assert (=> d!1216713 (=> (not res!1675106) (not e!2542689))))

(declare-fun lt!1465762 () List!44056)

(assert (=> d!1216713 (= res!1675106 (= (content!6784 lt!1465762) ((_ map or) (content!6784 (t!339271 p!2988)) (content!6784 suffix!1518))))))

(declare-fun e!2542688 () List!44056)

(assert (=> d!1216713 (= lt!1465762 e!2542688)))

(declare-fun c!706106 () Bool)

(assert (=> d!1216713 (= c!706106 ((_ is Nil!43932) (t!339271 p!2988)))))

(assert (=> d!1216713 (= (++!11518 (t!339271 p!2988) suffix!1518) lt!1465762)))

(declare-fun b!4097478 () Bool)

(declare-fun res!1675105 () Bool)

(assert (=> b!4097478 (=> (not res!1675105) (not e!2542689))))

(assert (=> b!4097478 (= res!1675105 (= (size!32823 lt!1465762) (+ (size!32823 (t!339271 p!2988)) (size!32823 suffix!1518))))))

(declare-fun b!4097476 () Bool)

(assert (=> b!4097476 (= e!2542688 suffix!1518)))

(declare-fun b!4097477 () Bool)

(assert (=> b!4097477 (= e!2542688 (Cons!43932 (h!49352 (t!339271 p!2988)) (++!11518 (t!339271 (t!339271 p!2988)) suffix!1518)))))

(declare-fun b!4097479 () Bool)

(assert (=> b!4097479 (= e!2542689 (or (not (= suffix!1518 Nil!43932)) (= lt!1465762 (t!339271 p!2988))))))

(assert (= (and d!1216713 c!706106) b!4097476))

(assert (= (and d!1216713 (not c!706106)) b!4097477))

(assert (= (and d!1216713 res!1675106) b!4097478))

(assert (= (and b!4097478 res!1675105) b!4097479))

(declare-fun m!4704759 () Bool)

(assert (=> d!1216713 m!4704759))

(declare-fun m!4704761 () Bool)

(assert (=> d!1216713 m!4704761))

(assert (=> d!1216713 m!4703725))

(declare-fun m!4704763 () Bool)

(assert (=> b!4097478 m!4704763))

(assert (=> b!4097478 m!4703631))

(assert (=> b!4097478 m!4703729))

(declare-fun m!4704765 () Bool)

(assert (=> b!4097477 m!4704765))

(assert (=> b!4096748 d!1216713))

(declare-fun b!4097480 () Bool)

(declare-fun res!1675112 () Bool)

(declare-fun e!2542690 () Bool)

(assert (=> b!4097480 (=> (not res!1675112) (not e!2542690))))

(declare-fun call!289617 () Bool)

(assert (=> b!4097480 (= res!1675112 (not call!289617))))

(declare-fun bm!289612 () Bool)

(assert (=> bm!289612 (= call!289617 (isEmpty!26289 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))))))

(declare-fun b!4097481 () Bool)

(declare-fun res!1675107 () Bool)

(declare-fun e!2542694 () Bool)

(assert (=> b!4097481 (=> res!1675107 e!2542694)))

(assert (=> b!4097481 (= res!1675107 (not (isEmpty!26289 (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))))))))

(declare-fun b!4097482 () Bool)

(declare-fun res!1675110 () Bool)

(declare-fun e!2542692 () Bool)

(assert (=> b!4097482 (=> res!1675110 e!2542692)))

(assert (=> b!4097482 (= res!1675110 (not ((_ is ElementMatch!12017) (regex!7112 (h!49353 rules!3870)))))))

(declare-fun e!2542691 () Bool)

(assert (=> b!4097482 (= e!2542691 e!2542692)))

(declare-fun b!4097483 () Bool)

(declare-fun e!2542693 () Bool)

(assert (=> b!4097483 (= e!2542693 (matchR!5958 (derivativeStep!3650 (regex!7112 (h!49353 rules!3870)) (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319)))))) (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319)))))))))

(declare-fun b!4097484 () Bool)

(assert (=> b!4097484 (= e!2542690 (= (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))) (c!705882 (regex!7112 (h!49353 rules!3870)))))))

(declare-fun b!4097485 () Bool)

(declare-fun e!2542696 () Bool)

(assert (=> b!4097485 (= e!2542696 e!2542691)))

(declare-fun c!706109 () Bool)

(assert (=> b!4097485 (= c!706109 ((_ is EmptyLang!12017) (regex!7112 (h!49353 rules!3870))))))

(declare-fun b!4097486 () Bool)

(declare-fun res!1675114 () Bool)

(assert (=> b!4097486 (=> res!1675114 e!2542692)))

(assert (=> b!4097486 (= res!1675114 e!2542690)))

(declare-fun res!1675113 () Bool)

(assert (=> b!4097486 (=> (not res!1675113) (not e!2542690))))

(declare-fun lt!1465763 () Bool)

(assert (=> b!4097486 (= res!1675113 lt!1465763)))

(declare-fun b!4097487 () Bool)

(assert (=> b!4097487 (= e!2542696 (= lt!1465763 call!289617))))

(declare-fun d!1216715 () Bool)

(assert (=> d!1216715 e!2542696))

(declare-fun c!706107 () Bool)

(assert (=> d!1216715 (= c!706107 ((_ is EmptyExpr!12017) (regex!7112 (h!49353 rules!3870))))))

(assert (=> d!1216715 (= lt!1465763 e!2542693)))

(declare-fun c!706108 () Bool)

(assert (=> d!1216715 (= c!706108 (isEmpty!26289 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))))))

(assert (=> d!1216715 (validRegex!5449 (regex!7112 (h!49353 rules!3870)))))

(assert (=> d!1216715 (= (matchR!5958 (regex!7112 (h!49353 rules!3870)) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))) lt!1465763)))

(declare-fun b!4097488 () Bool)

(declare-fun e!2542695 () Bool)

(assert (=> b!4097488 (= e!2542692 e!2542695)))

(declare-fun res!1675108 () Bool)

(assert (=> b!4097488 (=> (not res!1675108) (not e!2542695))))

(assert (=> b!4097488 (= res!1675108 (not lt!1465763))))

(declare-fun b!4097489 () Bool)

(assert (=> b!4097489 (= e!2542691 (not lt!1465763))))

(declare-fun b!4097490 () Bool)

(assert (=> b!4097490 (= e!2542694 (not (= (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319))))) (c!705882 (regex!7112 (h!49353 rules!3870))))))))

(declare-fun b!4097491 () Bool)

(declare-fun res!1675109 () Bool)

(assert (=> b!4097491 (=> (not res!1675109) (not e!2542690))))

(assert (=> b!4097491 (= res!1675109 (isEmpty!26289 (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465319)))))))))

(declare-fun b!4097492 () Bool)

(assert (=> b!4097492 (= e!2542693 (nullable!4249 (regex!7112 (h!49353 rules!3870))))))

(declare-fun b!4097493 () Bool)

(assert (=> b!4097493 (= e!2542695 e!2542694)))

(declare-fun res!1675111 () Bool)

(assert (=> b!4097493 (=> res!1675111 e!2542694)))

(assert (=> b!4097493 (= res!1675111 call!289617)))

(assert (= (and d!1216715 c!706108) b!4097492))

(assert (= (and d!1216715 (not c!706108)) b!4097483))

(assert (= (and d!1216715 c!706107) b!4097487))

(assert (= (and d!1216715 (not c!706107)) b!4097485))

(assert (= (and b!4097485 c!706109) b!4097489))

(assert (= (and b!4097485 (not c!706109)) b!4097482))

(assert (= (and b!4097482 (not res!1675110)) b!4097486))

(assert (= (and b!4097486 res!1675113) b!4097480))

(assert (= (and b!4097480 res!1675112) b!4097491))

(assert (= (and b!4097491 res!1675109) b!4097484))

(assert (= (and b!4097486 (not res!1675114)) b!4097488))

(assert (= (and b!4097488 res!1675108) b!4097493))

(assert (= (and b!4097493 (not res!1675111)) b!4097481))

(assert (= (and b!4097481 (not res!1675107)) b!4097490))

(assert (= (or b!4097487 b!4097480 b!4097493) bm!289612))

(assert (=> b!4097490 m!4703647))

(declare-fun m!4704767 () Bool)

(assert (=> b!4097490 m!4704767))

(assert (=> d!1216715 m!4703647))

(declare-fun m!4704769 () Bool)

(assert (=> d!1216715 m!4704769))

(assert (=> d!1216715 m!4703941))

(assert (=> b!4097484 m!4703647))

(assert (=> b!4097484 m!4704767))

(assert (=> bm!289612 m!4703647))

(assert (=> bm!289612 m!4704769))

(assert (=> b!4097492 m!4703953))

(assert (=> b!4097481 m!4703647))

(declare-fun m!4704771 () Bool)

(assert (=> b!4097481 m!4704771))

(assert (=> b!4097481 m!4704771))

(declare-fun m!4704773 () Bool)

(assert (=> b!4097481 m!4704773))

(assert (=> b!4097491 m!4703647))

(assert (=> b!4097491 m!4704771))

(assert (=> b!4097491 m!4704771))

(assert (=> b!4097491 m!4704773))

(assert (=> b!4097483 m!4703647))

(assert (=> b!4097483 m!4704767))

(assert (=> b!4097483 m!4704767))

(declare-fun m!4704775 () Bool)

(assert (=> b!4097483 m!4704775))

(assert (=> b!4097483 m!4703647))

(assert (=> b!4097483 m!4704771))

(assert (=> b!4097483 m!4704775))

(assert (=> b!4097483 m!4704771))

(declare-fun m!4704777 () Bool)

(assert (=> b!4097483 m!4704777))

(assert (=> b!4096720 d!1216715))

(assert (=> b!4096720 d!1216431))

(assert (=> b!4096720 d!1216433))

(assert (=> b!4096720 d!1216365))

(declare-fun d!1216717 () Bool)

(declare-fun nullableFct!1192 (Regex!12017) Bool)

(assert (=> d!1216717 (= (nullable!4249 (regex!7112 r!4213)) (nullableFct!1192 (regex!7112 r!4213)))))

(declare-fun bs!593670 () Bool)

(assert (= bs!593670 d!1216717))

(declare-fun m!4704779 () Bool)

(assert (=> bs!593670 m!4704779))

(assert (=> b!4096791 d!1216717))

(declare-fun d!1216719 () Bool)

(declare-fun lt!1465764 () Bool)

(assert (=> d!1216719 (= lt!1465764 (select (content!6781 (t!339272 rules!3870)) (rule!10266 (_1!24564 (get!14412 lt!1465329)))))))

(declare-fun e!2542697 () Bool)

(assert (=> d!1216719 (= lt!1465764 e!2542697)))

(declare-fun res!1675116 () Bool)

(assert (=> d!1216719 (=> (not res!1675116) (not e!2542697))))

(assert (=> d!1216719 (= res!1675116 ((_ is Cons!43933) (t!339272 rules!3870)))))

(assert (=> d!1216719 (= (contains!8797 (t!339272 rules!3870) (rule!10266 (_1!24564 (get!14412 lt!1465329)))) lt!1465764)))

(declare-fun b!4097494 () Bool)

(declare-fun e!2542698 () Bool)

(assert (=> b!4097494 (= e!2542697 e!2542698)))

(declare-fun res!1675115 () Bool)

(assert (=> b!4097494 (=> res!1675115 e!2542698)))

(assert (=> b!4097494 (= res!1675115 (= (h!49353 (t!339272 rules!3870)) (rule!10266 (_1!24564 (get!14412 lt!1465329)))))))

(declare-fun b!4097495 () Bool)

(assert (=> b!4097495 (= e!2542698 (contains!8797 (t!339272 (t!339272 rules!3870)) (rule!10266 (_1!24564 (get!14412 lt!1465329)))))))

(assert (= (and d!1216719 res!1675116) b!4097494))

(assert (= (and b!4097494 (not res!1675115)) b!4097495))

(assert (=> d!1216719 m!4703285))

(declare-fun m!4704781 () Bool)

(assert (=> d!1216719 m!4704781))

(declare-fun m!4704783 () Bool)

(assert (=> b!4097495 m!4704783))

(assert (=> b!4096734 d!1216719))

(assert (=> b!4096734 d!1216421))

(assert (=> b!4096708 d!1216465))

(declare-fun d!1216721 () Bool)

(assert (=> d!1216721 (= (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465312))))) (dynLambda!18839 (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465312))))))))

(declare-fun b_lambda!120353 () Bool)

(assert (=> (not b_lambda!120353) (not d!1216721)))

(declare-fun t!339462 () Bool)

(declare-fun tb!246627 () Bool)

(assert (=> (and b!4096407 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))) t!339462) tb!246627))

(declare-fun result!299270 () Bool)

(assert (=> tb!246627 (= result!299270 (inv!21 (dynLambda!18839 (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312))))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465312)))))))))

(declare-fun m!4704785 () Bool)

(assert (=> tb!246627 m!4704785))

(assert (=> d!1216721 t!339462))

(declare-fun b_and!316209 () Bool)

(assert (= b_and!316203 (and (=> t!339462 result!299270) b_and!316209)))

(declare-fun tb!246629 () Bool)

(declare-fun t!339464 () Bool)

(assert (=> (and b!4096415 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))) t!339464) tb!246629))

(declare-fun result!299272 () Bool)

(assert (= result!299272 result!299270))

(assert (=> d!1216721 t!339464))

(declare-fun b_and!316211 () Bool)

(assert (= b_and!316205 (and (=> t!339464 result!299272) b_and!316211)))

(declare-fun tb!246631 () Bool)

(declare-fun t!339466 () Bool)

(assert (=> (and b!4096832 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))) t!339466) tb!246631))

(declare-fun result!299274 () Bool)

(assert (= result!299274 result!299270))

(assert (=> d!1216721 t!339466))

(declare-fun b_and!316213 () Bool)

(assert (= b_and!316207 (and (=> t!339466 result!299274) b_and!316213)))

(assert (=> d!1216721 m!4703621))

(declare-fun m!4704787 () Bool)

(assert (=> d!1216721 m!4704787))

(assert (=> b!4096708 d!1216721))

(declare-fun d!1216723 () Bool)

(assert (=> d!1216723 (= (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465312)))) (fromListB!2445 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465312)))))))

(declare-fun bs!593671 () Bool)

(assert (= bs!593671 d!1216723))

(declare-fun m!4704789 () Bool)

(assert (=> bs!593671 m!4704789))

(assert (=> b!4096708 d!1216723))

(declare-fun b!4097507 () Bool)

(declare-fun res!1675122 () Bool)

(declare-fun e!2542706 () Bool)

(assert (=> b!4097507 (=> (not res!1675122) (not e!2542706))))

(declare-fun call!289618 () Bool)

(assert (=> b!4097507 (= res!1675122 (not call!289618))))

(declare-fun bm!289613 () Bool)

(assert (=> bm!289613 (= call!289618 (isEmpty!26289 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))))))

(declare-fun b!4097508 () Bool)

(declare-fun res!1675117 () Bool)

(declare-fun e!2542710 () Bool)

(assert (=> b!4097508 (=> res!1675117 e!2542710)))

(assert (=> b!4097508 (= res!1675117 (not (isEmpty!26289 (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))))))))

(declare-fun b!4097509 () Bool)

(declare-fun res!1675120 () Bool)

(declare-fun e!2542708 () Bool)

(assert (=> b!4097509 (=> res!1675120 e!2542708)))

(assert (=> b!4097509 (= res!1675120 (not ((_ is ElementMatch!12017) (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))))))

(declare-fun e!2542707 () Bool)

(assert (=> b!4097509 (= e!2542707 e!2542708)))

(declare-fun b!4097510 () Bool)

(declare-fun e!2542709 () Bool)

(assert (=> b!4097510 (= e!2542709 (matchR!5958 (derivativeStep!3650 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))) (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329)))))) (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329)))))))))

(declare-fun b!4097511 () Bool)

(assert (=> b!4097511 (= e!2542706 (= (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))) (c!705882 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))))))

(declare-fun b!4097512 () Bool)

(declare-fun e!2542712 () Bool)

(assert (=> b!4097512 (= e!2542712 e!2542707)))

(declare-fun c!706112 () Bool)

(assert (=> b!4097512 (= c!706112 ((_ is EmptyLang!12017) (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))))))

(declare-fun b!4097513 () Bool)

(declare-fun res!1675124 () Bool)

(assert (=> b!4097513 (=> res!1675124 e!2542708)))

(assert (=> b!4097513 (= res!1675124 e!2542706)))

(declare-fun res!1675123 () Bool)

(assert (=> b!4097513 (=> (not res!1675123) (not e!2542706))))

(declare-fun lt!1465765 () Bool)

(assert (=> b!4097513 (= res!1675123 lt!1465765)))

(declare-fun b!4097514 () Bool)

(assert (=> b!4097514 (= e!2542712 (= lt!1465765 call!289618))))

(declare-fun d!1216725 () Bool)

(assert (=> d!1216725 e!2542712))

(declare-fun c!706110 () Bool)

(assert (=> d!1216725 (= c!706110 ((_ is EmptyExpr!12017) (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))))))

(assert (=> d!1216725 (= lt!1465765 e!2542709)))

(declare-fun c!706111 () Bool)

(assert (=> d!1216725 (= c!706111 (isEmpty!26289 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))))))

(assert (=> d!1216725 (validRegex!5449 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))))

(assert (=> d!1216725 (= (matchR!5958 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))) lt!1465765)))

(declare-fun b!4097515 () Bool)

(declare-fun e!2542711 () Bool)

(assert (=> b!4097515 (= e!2542708 e!2542711)))

(declare-fun res!1675118 () Bool)

(assert (=> b!4097515 (=> (not res!1675118) (not e!2542711))))

(assert (=> b!4097515 (= res!1675118 (not lt!1465765))))

(declare-fun b!4097516 () Bool)

(assert (=> b!4097516 (= e!2542707 (not lt!1465765))))

(declare-fun b!4097517 () Bool)

(assert (=> b!4097517 (= e!2542710 (not (= (head!8660 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329))))) (c!705882 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))))))))

(declare-fun b!4097518 () Bool)

(declare-fun res!1675119 () Bool)

(assert (=> b!4097518 (=> (not res!1675119) (not e!2542706))))

(assert (=> b!4097518 (= res!1675119 (isEmpty!26289 (tail!6394 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465329)))))))))

(declare-fun b!4097519 () Bool)

(assert (=> b!4097519 (= e!2542709 (nullable!4249 (regex!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329))))))))

(declare-fun b!4097520 () Bool)

(assert (=> b!4097520 (= e!2542711 e!2542710)))

(declare-fun res!1675121 () Bool)

(assert (=> b!4097520 (=> res!1675121 e!2542710)))

(assert (=> b!4097520 (= res!1675121 call!289618)))

(assert (= (and d!1216725 c!706111) b!4097519))

(assert (= (and d!1216725 (not c!706111)) b!4097510))

(assert (= (and d!1216725 c!706110) b!4097514))

(assert (= (and d!1216725 (not c!706110)) b!4097512))

(assert (= (and b!4097512 c!706112) b!4097516))

(assert (= (and b!4097512 (not c!706112)) b!4097509))

(assert (= (and b!4097509 (not res!1675120)) b!4097513))

(assert (= (and b!4097513 res!1675123) b!4097507))

(assert (= (and b!4097507 res!1675122) b!4097518))

(assert (= (and b!4097518 res!1675119) b!4097511))

(assert (= (and b!4097513 (not res!1675124)) b!4097515))

(assert (= (and b!4097515 res!1675118) b!4097520))

(assert (= (and b!4097520 (not res!1675121)) b!4097508))

(assert (= (and b!4097508 (not res!1675117)) b!4097517))

(assert (= (or b!4097514 b!4097507 b!4097520) bm!289613))

(assert (=> b!4097517 m!4703703))

(declare-fun m!4704797 () Bool)

(assert (=> b!4097517 m!4704797))

(assert (=> d!1216725 m!4703703))

(declare-fun m!4704799 () Bool)

(assert (=> d!1216725 m!4704799))

(declare-fun m!4704801 () Bool)

(assert (=> d!1216725 m!4704801))

(assert (=> b!4097511 m!4703703))

(assert (=> b!4097511 m!4704797))

(assert (=> bm!289613 m!4703703))

(assert (=> bm!289613 m!4704799))

(declare-fun m!4704803 () Bool)

(assert (=> b!4097519 m!4704803))

(assert (=> b!4097508 m!4703703))

(declare-fun m!4704805 () Bool)

(assert (=> b!4097508 m!4704805))

(assert (=> b!4097508 m!4704805))

(declare-fun m!4704807 () Bool)

(assert (=> b!4097508 m!4704807))

(assert (=> b!4097518 m!4703703))

(assert (=> b!4097518 m!4704805))

(assert (=> b!4097518 m!4704805))

(assert (=> b!4097518 m!4704807))

(assert (=> b!4097510 m!4703703))

(assert (=> b!4097510 m!4704797))

(assert (=> b!4097510 m!4704797))

(declare-fun m!4704809 () Bool)

(assert (=> b!4097510 m!4704809))

(assert (=> b!4097510 m!4703703))

(assert (=> b!4097510 m!4704805))

(assert (=> b!4097510 m!4704809))

(assert (=> b!4097510 m!4704805))

(declare-fun m!4704817 () Bool)

(assert (=> b!4097510 m!4704817))

(assert (=> b!4096731 d!1216725))

(assert (=> b!4096731 d!1216421))

(assert (=> b!4096731 d!1216417))

(assert (=> b!4096731 d!1216419))

(declare-fun d!1216727 () Bool)

(assert (=> d!1216727 (= (isEmpty!26289 (tail!6394 p!2988)) ((_ is Nil!43932) (tail!6394 p!2988)))))

(assert (=> b!4096790 d!1216727))

(declare-fun d!1216729 () Bool)

(assert (=> d!1216729 (= (tail!6394 p!2988) (t!339271 p!2988))))

(assert (=> b!4096790 d!1216729))

(declare-fun d!1216731 () Bool)

(declare-fun c!706113 () Bool)

(assert (=> d!1216731 (= c!706113 ((_ is Nil!43933) (t!339272 rules!3870)))))

(declare-fun e!2542730 () (InoxSet Rule!14024))

(assert (=> d!1216731 (= (content!6781 (t!339272 rules!3870)) e!2542730)))

(declare-fun b!4097562 () Bool)

(assert (=> b!4097562 (= e!2542730 ((as const (Array Rule!14024 Bool)) false))))

(declare-fun b!4097563 () Bool)

(assert (=> b!4097563 (= e!2542730 ((_ map or) (store ((as const (Array Rule!14024 Bool)) false) (h!49353 (t!339272 rules!3870)) true) (content!6781 (t!339272 (t!339272 rules!3870)))))))

(assert (= (and d!1216731 c!706113) b!4097562))

(assert (= (and d!1216731 (not c!706113)) b!4097563))

(declare-fun m!4704819 () Bool)

(assert (=> b!4097563 m!4704819))

(assert (=> b!4097563 m!4703967))

(assert (=> d!1216187 d!1216731))

(assert (=> d!1216289 d!1216283))

(assert (=> d!1216289 d!1216469))

(assert (=> b!4096716 d!1216187))

(declare-fun b!4097564 () Bool)

(declare-fun e!2542734 () Bool)

(declare-fun e!2542732 () Bool)

(assert (=> b!4097564 (= e!2542734 e!2542732)))

(declare-fun res!1675127 () Bool)

(assert (=> b!4097564 (=> (not res!1675127) (not e!2542732))))

(declare-fun lt!1465767 () Option!9518)

(assert (=> b!4097564 (= res!1675127 (matchR!5958 (regex!7112 (h!49353 (t!339272 rules!3870))) (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465767))))))))

(declare-fun b!4097565 () Bool)

(declare-fun res!1675126 () Bool)

(assert (=> b!4097565 (=> (not res!1675126) (not e!2542732))))

(assert (=> b!4097565 (= res!1675126 (= (++!11518 (list!16302 (charsOf!4868 (_1!24564 (get!14412 lt!1465767)))) (_2!24564 (get!14412 lt!1465767))) input!3411))))

(declare-fun b!4097566 () Bool)

(declare-fun res!1675130 () Bool)

(assert (=> b!4097566 (=> (not res!1675130) (not e!2542732))))

(assert (=> b!4097566 (= res!1675130 (< (size!32823 (_2!24564 (get!14412 lt!1465767))) (size!32823 input!3411)))))

(declare-fun b!4097567 () Bool)

(declare-fun res!1675131 () Bool)

(assert (=> b!4097567 (=> (not res!1675131) (not e!2542732))))

(assert (=> b!4097567 (= res!1675131 (= (value!223344 (_1!24564 (get!14412 lt!1465767))) (apply!10295 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465767)))) (seqFromList!5329 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465767)))))))))

(declare-fun d!1216733 () Bool)

(assert (=> d!1216733 e!2542734))

(declare-fun res!1675125 () Bool)

(assert (=> d!1216733 (=> res!1675125 e!2542734)))

(assert (=> d!1216733 (= res!1675125 (isEmpty!26291 lt!1465767))))

(declare-fun e!2542733 () Option!9518)

(assert (=> d!1216733 (= lt!1465767 e!2542733)))

(declare-fun c!706114 () Bool)

(declare-fun lt!1465768 () tuple2!42864)

(assert (=> d!1216733 (= c!706114 (isEmpty!26289 (_1!24566 lt!1465768)))))

(assert (=> d!1216733 (= lt!1465768 (findLongestMatch!1387 (regex!7112 (h!49353 (t!339272 rules!3870))) input!3411))))

(assert (=> d!1216733 (ruleValid!3032 thiss!26199 (h!49353 (t!339272 rules!3870)))))

(assert (=> d!1216733 (= (maxPrefixOneRule!2973 thiss!26199 (h!49353 (t!339272 rules!3870)) input!3411) lt!1465767)))

(declare-fun b!4097568 () Bool)

(assert (=> b!4097568 (= e!2542733 (Some!9517 (tuple2!42861 (Token!13351 (apply!10295 (transformation!7112 (h!49353 (t!339272 rules!3870))) (seqFromList!5329 (_1!24566 lt!1465768))) (h!49353 (t!339272 rules!3870)) (size!32825 (seqFromList!5329 (_1!24566 lt!1465768))) (_1!24566 lt!1465768)) (_2!24566 lt!1465768))))))

(declare-fun lt!1465770 () Unit!63463)

(assert (=> b!4097568 (= lt!1465770 (longestMatchIsAcceptedByMatchOrIsEmpty!1447 (regex!7112 (h!49353 (t!339272 rules!3870))) input!3411))))

(declare-fun res!1675128 () Bool)

(assert (=> b!4097568 (= res!1675128 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 (t!339272 rules!3870))) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(declare-fun e!2542731 () Bool)

(assert (=> b!4097568 (=> res!1675128 e!2542731)))

(assert (=> b!4097568 e!2542731))

(declare-fun lt!1465766 () Unit!63463)

(assert (=> b!4097568 (= lt!1465766 lt!1465770)))

(declare-fun lt!1465769 () Unit!63463)

(assert (=> b!4097568 (= lt!1465769 (lemmaSemiInverse!2079 (transformation!7112 (h!49353 (t!339272 rules!3870))) (seqFromList!5329 (_1!24566 lt!1465768))))))

(declare-fun b!4097569 () Bool)

(assert (=> b!4097569 (= e!2542732 (= (size!32822 (_1!24564 (get!14412 lt!1465767))) (size!32823 (originalCharacters!7706 (_1!24564 (get!14412 lt!1465767))))))))

(declare-fun b!4097570 () Bool)

(declare-fun res!1675129 () Bool)

(assert (=> b!4097570 (=> (not res!1675129) (not e!2542732))))

(assert (=> b!4097570 (= res!1675129 (= (rule!10266 (_1!24564 (get!14412 lt!1465767))) (h!49353 (t!339272 rules!3870))))))

(declare-fun b!4097571 () Bool)

(assert (=> b!4097571 (= e!2542733 None!9517)))

(declare-fun b!4097572 () Bool)

(assert (=> b!4097572 (= e!2542731 (matchR!5958 (regex!7112 (h!49353 (t!339272 rules!3870))) (_1!24566 (findLongestMatchInner!1474 (regex!7112 (h!49353 (t!339272 rules!3870))) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (= (and d!1216733 c!706114) b!4097571))

(assert (= (and d!1216733 (not c!706114)) b!4097568))

(assert (= (and b!4097568 (not res!1675128)) b!4097572))

(assert (= (and d!1216733 (not res!1675125)) b!4097564))

(assert (= (and b!4097564 res!1675127) b!4097565))

(assert (= (and b!4097565 res!1675126) b!4097566))

(assert (= (and b!4097566 res!1675130) b!4097570))

(assert (= (and b!4097570 res!1675129) b!4097567))

(assert (= (and b!4097567 res!1675131) b!4097569))

(declare-fun m!4704821 () Bool)

(assert (=> b!4097564 m!4704821))

(declare-fun m!4704823 () Bool)

(assert (=> b!4097564 m!4704823))

(assert (=> b!4097564 m!4704823))

(declare-fun m!4704825 () Bool)

(assert (=> b!4097564 m!4704825))

(assert (=> b!4097564 m!4704825))

(declare-fun m!4704831 () Bool)

(assert (=> b!4097564 m!4704831))

(assert (=> b!4097566 m!4704821))

(declare-fun m!4704833 () Bool)

(assert (=> b!4097566 m!4704833))

(assert (=> b!4097566 m!4703471))

(assert (=> b!4097569 m!4704821))

(declare-fun m!4704835 () Bool)

(assert (=> b!4097569 m!4704835))

(assert (=> b!4097570 m!4704821))

(declare-fun m!4704837 () Bool)

(assert (=> d!1216733 m!4704837))

(declare-fun m!4704839 () Bool)

(assert (=> d!1216733 m!4704839))

(declare-fun m!4704841 () Bool)

(assert (=> d!1216733 m!4704841))

(assert (=> d!1216733 m!4704045))

(assert (=> b!4097565 m!4704821))

(assert (=> b!4097565 m!4704823))

(assert (=> b!4097565 m!4704823))

(assert (=> b!4097565 m!4704825))

(assert (=> b!4097565 m!4704825))

(declare-fun m!4704843 () Bool)

(assert (=> b!4097565 m!4704843))

(assert (=> b!4097567 m!4704821))

(declare-fun m!4704845 () Bool)

(assert (=> b!4097567 m!4704845))

(assert (=> b!4097567 m!4704845))

(declare-fun m!4704847 () Bool)

(assert (=> b!4097567 m!4704847))

(declare-fun m!4704849 () Bool)

(assert (=> b!4097568 m!4704849))

(declare-fun m!4704851 () Bool)

(assert (=> b!4097568 m!4704851))

(assert (=> b!4097568 m!4704849))

(declare-fun m!4704853 () Bool)

(assert (=> b!4097568 m!4704853))

(assert (=> b!4097568 m!4703497))

(assert (=> b!4097568 m!4703471))

(assert (=> b!4097568 m!4704849))

(assert (=> b!4097568 m!4703497))

(assert (=> b!4097568 m!4703471))

(declare-fun m!4704855 () Bool)

(assert (=> b!4097568 m!4704855))

(declare-fun m!4704857 () Bool)

(assert (=> b!4097568 m!4704857))

(declare-fun m!4704859 () Bool)

(assert (=> b!4097568 m!4704859))

(assert (=> b!4097568 m!4704849))

(declare-fun m!4704861 () Bool)

(assert (=> b!4097568 m!4704861))

(assert (=> b!4097572 m!4703497))

(assert (=> b!4097572 m!4703471))

(assert (=> b!4097572 m!4703497))

(assert (=> b!4097572 m!4703471))

(assert (=> b!4097572 m!4704855))

(declare-fun m!4704863 () Bool)

(assert (=> b!4097572 m!4704863))

(assert (=> bm!289502 d!1216733))

(declare-fun d!1216735 () Bool)

(assert (=> d!1216735 true))

(declare-fun lambda!128172 () Int)

(declare-fun order!23169 () Int)

(declare-fun dynLambda!18846 (Int Int) Int)

(assert (=> d!1216735 (< (dynLambda!18836 order!23161 (toValue!9712 (transformation!7112 r!4213))) (dynLambda!18846 order!23169 lambda!128172))))

(declare-fun Forall2!1120 (Int) Bool)

(assert (=> d!1216735 (= (equivClasses!2959 (toChars!9571 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 r!4213))) (Forall2!1120 lambda!128172))))

(declare-fun bs!593673 () Bool)

(assert (= bs!593673 d!1216735))

(declare-fun m!4704865 () Bool)

(assert (=> bs!593673 m!4704865))

(assert (=> b!4096437 d!1216735))

(assert (=> b!4096797 d!1216717))

(assert (=> b!4096702 d!1216285))

(declare-fun bs!593674 () Bool)

(declare-fun d!1216739 () Bool)

(assert (= bs!593674 (and d!1216739 d!1216735)))

(declare-fun lambda!128173 () Int)

(assert (=> bs!593674 (= (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213))) (= lambda!128173 lambda!128172))))

(assert (=> d!1216739 true))

(assert (=> d!1216739 (< (dynLambda!18836 order!23161 (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) (dynLambda!18846 order!23169 lambda!128173))))

(assert (=> d!1216739 (= (equivClasses!2959 (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) (Forall2!1120 lambda!128173))))

(declare-fun bs!593675 () Bool)

(assert (= bs!593675 d!1216739))

(declare-fun m!4704867 () Bool)

(assert (=> bs!593675 m!4704867))

(assert (=> b!4096430 d!1216739))

(declare-fun d!1216741 () Bool)

(declare-fun lt!1465771 () Bool)

(assert (=> d!1216741 (= lt!1465771 (select (content!6781 rules!3870) (rule!10266 (_1!24564 (get!14412 lt!1465312)))))))

(declare-fun e!2542740 () Bool)

(assert (=> d!1216741 (= lt!1465771 e!2542740)))

(declare-fun res!1675135 () Bool)

(assert (=> d!1216741 (=> (not res!1675135) (not e!2542740))))

(assert (=> d!1216741 (= res!1675135 ((_ is Cons!43933) rules!3870))))

(assert (=> d!1216741 (= (contains!8797 rules!3870 (rule!10266 (_1!24564 (get!14412 lt!1465312)))) lt!1465771)))

(declare-fun b!4097589 () Bool)

(declare-fun e!2542741 () Bool)

(assert (=> b!4097589 (= e!2542740 e!2542741)))

(declare-fun res!1675134 () Bool)

(assert (=> b!4097589 (=> res!1675134 e!2542741)))

(assert (=> b!4097589 (= res!1675134 (= (h!49353 rules!3870) (rule!10266 (_1!24564 (get!14412 lt!1465312)))))))

(declare-fun b!4097590 () Bool)

(assert (=> b!4097590 (= e!2542741 (contains!8797 (t!339272 rules!3870) (rule!10266 (_1!24564 (get!14412 lt!1465312)))))))

(assert (= (and d!1216741 res!1675135) b!4097589))

(assert (= (and b!4097589 (not res!1675134)) b!4097590))

(assert (=> d!1216741 m!4703635))

(declare-fun m!4704869 () Bool)

(assert (=> d!1216741 m!4704869))

(declare-fun m!4704871 () Bool)

(assert (=> b!4097590 m!4704871))

(assert (=> b!4096704 d!1216741))

(assert (=> b!4096704 d!1216465))

(declare-fun d!1216743 () Bool)

(declare-fun c!706117 () Bool)

(assert (=> d!1216743 (= c!706117 ((_ is Nil!43932) lt!1465333))))

(declare-fun e!2542744 () (InoxSet C!24220))

(assert (=> d!1216743 (= (content!6784 lt!1465333) e!2542744)))

(declare-fun b!4097595 () Bool)

(assert (=> b!4097595 (= e!2542744 ((as const (Array C!24220 Bool)) false))))

(declare-fun b!4097596 () Bool)

(assert (=> b!4097596 (= e!2542744 ((_ map or) (store ((as const (Array C!24220 Bool)) false) (h!49352 lt!1465333) true) (content!6784 (t!339271 lt!1465333))))))

(assert (= (and d!1216743 c!706117) b!4097595))

(assert (= (and d!1216743 (not c!706117)) b!4097596))

(declare-fun m!4704873 () Bool)

(assert (=> b!4097596 m!4704873))

(declare-fun m!4704875 () Bool)

(assert (=> b!4097596 m!4704875))

(assert (=> d!1216287 d!1216743))

(declare-fun d!1216745 () Bool)

(declare-fun c!706118 () Bool)

(assert (=> d!1216745 (= c!706118 ((_ is Nil!43932) p!2988))))

(declare-fun e!2542745 () (InoxSet C!24220))

(assert (=> d!1216745 (= (content!6784 p!2988) e!2542745)))

(declare-fun b!4097597 () Bool)

(assert (=> b!4097597 (= e!2542745 ((as const (Array C!24220 Bool)) false))))

(declare-fun b!4097598 () Bool)

(assert (=> b!4097598 (= e!2542745 ((_ map or) (store ((as const (Array C!24220 Bool)) false) (h!49352 p!2988) true) (content!6784 (t!339271 p!2988))))))

(assert (= (and d!1216745 c!706118) b!4097597))

(assert (= (and d!1216745 (not c!706118)) b!4097598))

(declare-fun m!4704877 () Bool)

(assert (=> b!4097598 m!4704877))

(assert (=> b!4097598 m!4704761))

(assert (=> d!1216287 d!1216745))

(declare-fun d!1216747 () Bool)

(declare-fun c!706119 () Bool)

(assert (=> d!1216747 (= c!706119 ((_ is Nil!43932) suffix!1518))))

(declare-fun e!2542746 () (InoxSet C!24220))

(assert (=> d!1216747 (= (content!6784 suffix!1518) e!2542746)))

(declare-fun b!4097599 () Bool)

(assert (=> b!4097599 (= e!2542746 ((as const (Array C!24220 Bool)) false))))

(declare-fun b!4097600 () Bool)

(assert (=> b!4097600 (= e!2542746 ((_ map or) (store ((as const (Array C!24220 Bool)) false) (h!49352 suffix!1518) true) (content!6784 (t!339271 suffix!1518))))))

(assert (= (and d!1216747 c!706119) b!4097599))

(assert (= (and d!1216747 (not c!706119)) b!4097600))

(declare-fun m!4704879 () Bool)

(assert (=> b!4097600 m!4704879))

(declare-fun m!4704881 () Bool)

(assert (=> b!4097600 m!4704881))

(assert (=> d!1216287 d!1216747))

(declare-fun d!1216749 () Bool)

(declare-fun lt!1465772 () Int)

(assert (=> d!1216749 (>= lt!1465772 0)))

(declare-fun e!2542747 () Int)

(assert (=> d!1216749 (= lt!1465772 e!2542747)))

(declare-fun c!706120 () Bool)

(assert (=> d!1216749 (= c!706120 ((_ is Nil!43932) (_2!24564 (get!14412 lt!1465312))))))

(assert (=> d!1216749 (= (size!32823 (_2!24564 (get!14412 lt!1465312))) lt!1465772)))

(declare-fun b!4097601 () Bool)

(assert (=> b!4097601 (= e!2542747 0)))

(declare-fun b!4097602 () Bool)

(assert (=> b!4097602 (= e!2542747 (+ 1 (size!32823 (t!339271 (_2!24564 (get!14412 lt!1465312))))))))

(assert (= (and d!1216749 c!706120) b!4097601))

(assert (= (and d!1216749 (not c!706120)) b!4097602))

(declare-fun m!4704883 () Bool)

(assert (=> b!4097602 m!4704883))

(assert (=> b!4096700 d!1216749))

(assert (=> b!4096700 d!1216465))

(assert (=> b!4096700 d!1216445))

(declare-fun d!1216751 () Bool)

(assert (=> d!1216751 (= (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))) (isBalanced!3709 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))))))

(declare-fun bs!593676 () Bool)

(assert (= bs!593676 d!1216751))

(declare-fun m!4704885 () Bool)

(assert (=> bs!593676 m!4704885))

(assert (=> tb!246457 d!1216751))

(assert (=> b!4096780 d!1216727))

(assert (=> b!4096780 d!1216729))

(assert (=> b!4096557 d!1216361))

(declare-fun b!4097603 () Bool)

(declare-fun res!1675141 () Bool)

(declare-fun e!2542748 () Bool)

(assert (=> b!4097603 (=> (not res!1675141) (not e!2542748))))

(declare-fun call!289619 () Bool)

(assert (=> b!4097603 (= res!1675141 (not call!289619))))

(declare-fun bm!289614 () Bool)

(assert (=> bm!289614 (= call!289619 (isEmpty!26289 (tail!6394 p!2988)))))

(declare-fun b!4097604 () Bool)

(declare-fun res!1675136 () Bool)

(declare-fun e!2542752 () Bool)

(assert (=> b!4097604 (=> res!1675136 e!2542752)))

(assert (=> b!4097604 (= res!1675136 (not (isEmpty!26289 (tail!6394 (tail!6394 p!2988)))))))

(declare-fun b!4097605 () Bool)

(declare-fun res!1675139 () Bool)

(declare-fun e!2542750 () Bool)

(assert (=> b!4097605 (=> res!1675139 e!2542750)))

(assert (=> b!4097605 (= res!1675139 (not ((_ is ElementMatch!12017) (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988)))))))

(declare-fun e!2542749 () Bool)

(assert (=> b!4097605 (= e!2542749 e!2542750)))

(declare-fun b!4097606 () Bool)

(declare-fun e!2542751 () Bool)

(assert (=> b!4097606 (= e!2542751 (matchR!5958 (derivativeStep!3650 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988)) (head!8660 (tail!6394 p!2988))) (tail!6394 (tail!6394 p!2988))))))

(declare-fun b!4097607 () Bool)

(assert (=> b!4097607 (= e!2542748 (= (head!8660 (tail!6394 p!2988)) (c!705882 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988)))))))

(declare-fun b!4097608 () Bool)

(declare-fun e!2542754 () Bool)

(assert (=> b!4097608 (= e!2542754 e!2542749)))

(declare-fun c!706123 () Bool)

(assert (=> b!4097608 (= c!706123 ((_ is EmptyLang!12017) (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988))))))

(declare-fun b!4097609 () Bool)

(declare-fun res!1675143 () Bool)

(assert (=> b!4097609 (=> res!1675143 e!2542750)))

(assert (=> b!4097609 (= res!1675143 e!2542748)))

(declare-fun res!1675142 () Bool)

(assert (=> b!4097609 (=> (not res!1675142) (not e!2542748))))

(declare-fun lt!1465773 () Bool)

(assert (=> b!4097609 (= res!1675142 lt!1465773)))

(declare-fun b!4097610 () Bool)

(assert (=> b!4097610 (= e!2542754 (= lt!1465773 call!289619))))

(declare-fun d!1216753 () Bool)

(assert (=> d!1216753 e!2542754))

(declare-fun c!706121 () Bool)

(assert (=> d!1216753 (= c!706121 ((_ is EmptyExpr!12017) (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988))))))

(assert (=> d!1216753 (= lt!1465773 e!2542751)))

(declare-fun c!706122 () Bool)

(assert (=> d!1216753 (= c!706122 (isEmpty!26289 (tail!6394 p!2988)))))

(assert (=> d!1216753 (validRegex!5449 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988)))))

(assert (=> d!1216753 (= (matchR!5958 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988)) (tail!6394 p!2988)) lt!1465773)))

(declare-fun b!4097611 () Bool)

(declare-fun e!2542753 () Bool)

(assert (=> b!4097611 (= e!2542750 e!2542753)))

(declare-fun res!1675137 () Bool)

(assert (=> b!4097611 (=> (not res!1675137) (not e!2542753))))

(assert (=> b!4097611 (= res!1675137 (not lt!1465773))))

(declare-fun b!4097612 () Bool)

(assert (=> b!4097612 (= e!2542749 (not lt!1465773))))

(declare-fun b!4097613 () Bool)

(assert (=> b!4097613 (= e!2542752 (not (= (head!8660 (tail!6394 p!2988)) (c!705882 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988))))))))

(declare-fun b!4097614 () Bool)

(declare-fun res!1675138 () Bool)

(assert (=> b!4097614 (=> (not res!1675138) (not e!2542748))))

(assert (=> b!4097614 (= res!1675138 (isEmpty!26289 (tail!6394 (tail!6394 p!2988))))))

(declare-fun b!4097615 () Bool)

(assert (=> b!4097615 (= e!2542751 (nullable!4249 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988))))))

(declare-fun b!4097616 () Bool)

(assert (=> b!4097616 (= e!2542753 e!2542752)))

(declare-fun res!1675140 () Bool)

(assert (=> b!4097616 (=> res!1675140 e!2542752)))

(assert (=> b!4097616 (= res!1675140 call!289619)))

(assert (= (and d!1216753 c!706122) b!4097615))

(assert (= (and d!1216753 (not c!706122)) b!4097606))

(assert (= (and d!1216753 c!706121) b!4097610))

(assert (= (and d!1216753 (not c!706121)) b!4097608))

(assert (= (and b!4097608 c!706123) b!4097612))

(assert (= (and b!4097608 (not c!706123)) b!4097605))

(assert (= (and b!4097605 (not res!1675139)) b!4097609))

(assert (= (and b!4097609 res!1675142) b!4097603))

(assert (= (and b!4097603 res!1675141) b!4097614))

(assert (= (and b!4097614 res!1675138) b!4097607))

(assert (= (and b!4097609 (not res!1675143)) b!4097611))

(assert (= (and b!4097611 res!1675137) b!4097616))

(assert (= (and b!4097616 (not res!1675140)) b!4097604))

(assert (= (and b!4097604 (not res!1675136)) b!4097613))

(assert (= (or b!4097610 b!4097603 b!4097616) bm!289614))

(assert (=> b!4097613 m!4703739))

(declare-fun m!4704887 () Bool)

(assert (=> b!4097613 m!4704887))

(assert (=> d!1216753 m!4703739))

(assert (=> d!1216753 m!4703741))

(assert (=> d!1216753 m!4703743))

(declare-fun m!4704889 () Bool)

(assert (=> d!1216753 m!4704889))

(assert (=> b!4097607 m!4703739))

(assert (=> b!4097607 m!4704887))

(assert (=> bm!289614 m!4703739))

(assert (=> bm!289614 m!4703741))

(assert (=> b!4097615 m!4703743))

(declare-fun m!4704891 () Bool)

(assert (=> b!4097615 m!4704891))

(assert (=> b!4097604 m!4703739))

(declare-fun m!4704893 () Bool)

(assert (=> b!4097604 m!4704893))

(assert (=> b!4097604 m!4704893))

(declare-fun m!4704895 () Bool)

(assert (=> b!4097604 m!4704895))

(assert (=> b!4097614 m!4703739))

(assert (=> b!4097614 m!4704893))

(assert (=> b!4097614 m!4704893))

(assert (=> b!4097614 m!4704895))

(assert (=> b!4097606 m!4703739))

(assert (=> b!4097606 m!4704887))

(assert (=> b!4097606 m!4703743))

(assert (=> b!4097606 m!4704887))

(declare-fun m!4704897 () Bool)

(assert (=> b!4097606 m!4704897))

(assert (=> b!4097606 m!4703739))

(assert (=> b!4097606 m!4704893))

(assert (=> b!4097606 m!4704897))

(assert (=> b!4097606 m!4704893))

(declare-fun m!4704899 () Bool)

(assert (=> b!4097606 m!4704899))

(assert (=> b!4096782 d!1216753))

(declare-fun b!4097637 () Bool)

(declare-fun e!2542766 () Regex!12017)

(assert (=> b!4097637 (= e!2542766 (ite (= (head!8660 p!2988) (c!705882 (regex!7112 r!4213))) EmptyExpr!12017 EmptyLang!12017))))

(declare-fun b!4097638 () Bool)

(declare-fun e!2542769 () Regex!12017)

(declare-fun call!289629 () Regex!12017)

(assert (=> b!4097638 (= e!2542769 (Concat!19360 call!289629 (regex!7112 r!4213)))))

(declare-fun b!4097639 () Bool)

(declare-fun e!2542768 () Regex!12017)

(assert (=> b!4097639 (= e!2542768 e!2542769)))

(declare-fun c!706137 () Bool)

(assert (=> b!4097639 (= c!706137 ((_ is Star!12017) (regex!7112 r!4213)))))

(declare-fun b!4097640 () Bool)

(declare-fun e!2542767 () Regex!12017)

(assert (=> b!4097640 (= e!2542767 EmptyLang!12017)))

(declare-fun bm!289623 () Bool)

(declare-fun call!289628 () Regex!12017)

(assert (=> bm!289623 (= call!289628 call!289629)))

(declare-fun bm!289624 () Bool)

(declare-fun call!289630 () Regex!12017)

(declare-fun c!706134 () Bool)

(assert (=> bm!289624 (= call!289630 (derivativeStep!3650 (ite c!706134 (regOne!24547 (regex!7112 r!4213)) (ite c!706137 (reg!12346 (regex!7112 r!4213)) (regOne!24546 (regex!7112 r!4213)))) (head!8660 p!2988)))))

(declare-fun b!4097641 () Bool)

(declare-fun call!289631 () Regex!12017)

(declare-fun e!2542765 () Regex!12017)

(assert (=> b!4097641 (= e!2542765 (Union!12017 (Concat!19360 call!289628 (regTwo!24546 (regex!7112 r!4213))) call!289631))))

(declare-fun b!4097642 () Bool)

(assert (=> b!4097642 (= e!2542767 e!2542766)))

(declare-fun c!706136 () Bool)

(assert (=> b!4097642 (= c!706136 ((_ is ElementMatch!12017) (regex!7112 r!4213)))))

(declare-fun b!4097643 () Bool)

(assert (=> b!4097643 (= c!706134 ((_ is Union!12017) (regex!7112 r!4213)))))

(assert (=> b!4097643 (= e!2542766 e!2542768)))

(declare-fun bm!289625 () Bool)

(assert (=> bm!289625 (= call!289629 call!289630)))

(declare-fun bm!289626 () Bool)

(assert (=> bm!289626 (= call!289631 (derivativeStep!3650 (ite c!706134 (regTwo!24547 (regex!7112 r!4213)) (regTwo!24546 (regex!7112 r!4213))) (head!8660 p!2988)))))

(declare-fun d!1216755 () Bool)

(declare-fun lt!1465776 () Regex!12017)

(assert (=> d!1216755 (validRegex!5449 lt!1465776)))

(assert (=> d!1216755 (= lt!1465776 e!2542767)))

(declare-fun c!706135 () Bool)

(assert (=> d!1216755 (= c!706135 (or ((_ is EmptyExpr!12017) (regex!7112 r!4213)) ((_ is EmptyLang!12017) (regex!7112 r!4213))))))

(assert (=> d!1216755 (validRegex!5449 (regex!7112 r!4213))))

(assert (=> d!1216755 (= (derivativeStep!3650 (regex!7112 r!4213) (head!8660 p!2988)) lt!1465776)))

(declare-fun b!4097644 () Bool)

(assert (=> b!4097644 (= e!2542768 (Union!12017 call!289630 call!289631))))

(declare-fun b!4097645 () Bool)

(assert (=> b!4097645 (= e!2542765 (Union!12017 (Concat!19360 call!289628 (regTwo!24546 (regex!7112 r!4213))) EmptyLang!12017))))

(declare-fun b!4097646 () Bool)

(declare-fun c!706138 () Bool)

(assert (=> b!4097646 (= c!706138 (nullable!4249 (regOne!24546 (regex!7112 r!4213))))))

(assert (=> b!4097646 (= e!2542769 e!2542765)))

(assert (= (and d!1216755 c!706135) b!4097640))

(assert (= (and d!1216755 (not c!706135)) b!4097642))

(assert (= (and b!4097642 c!706136) b!4097637))

(assert (= (and b!4097642 (not c!706136)) b!4097643))

(assert (= (and b!4097643 c!706134) b!4097644))

(assert (= (and b!4097643 (not c!706134)) b!4097639))

(assert (= (and b!4097639 c!706137) b!4097638))

(assert (= (and b!4097639 (not c!706137)) b!4097646))

(assert (= (and b!4097646 c!706138) b!4097641))

(assert (= (and b!4097646 (not c!706138)) b!4097645))

(assert (= (or b!4097641 b!4097645) bm!289623))

(assert (= (or b!4097638 bm!289623) bm!289625))

(assert (= (or b!4097644 bm!289625) bm!289624))

(assert (= (or b!4097644 b!4097641) bm!289626))

(assert (=> bm!289624 m!4703733))

(declare-fun m!4704901 () Bool)

(assert (=> bm!289624 m!4704901))

(assert (=> bm!289626 m!4703733))

(declare-fun m!4704903 () Bool)

(assert (=> bm!289626 m!4704903))

(declare-fun m!4704905 () Bool)

(assert (=> d!1216755 m!4704905))

(assert (=> d!1216755 m!4703735))

(declare-fun m!4704907 () Bool)

(assert (=> b!4097646 m!4704907))

(assert (=> b!4096782 d!1216755))

(assert (=> b!4096782 d!1216441))

(assert (=> b!4096782 d!1216729))

(declare-fun b!4097647 () Bool)

(declare-fun res!1675149 () Bool)

(declare-fun e!2542770 () Bool)

(assert (=> b!4097647 (=> (not res!1675149) (not e!2542770))))

(declare-fun call!289632 () Bool)

(assert (=> b!4097647 (= res!1675149 (not call!289632))))

(declare-fun bm!289627 () Bool)

(assert (=> bm!289627 (= call!289632 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(declare-fun b!4097648 () Bool)

(declare-fun res!1675144 () Bool)

(declare-fun e!2542774 () Bool)

(assert (=> b!4097648 (=> res!1675144 e!2542774)))

(assert (=> b!4097648 (= res!1675144 (not (isEmpty!26289 (tail!6394 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))))

(declare-fun b!4097649 () Bool)

(declare-fun res!1675147 () Bool)

(declare-fun e!2542772 () Bool)

(assert (=> b!4097649 (=> res!1675147 e!2542772)))

(assert (=> b!4097649 (= res!1675147 (not ((_ is ElementMatch!12017) (regex!7112 r!4213))))))

(declare-fun e!2542771 () Bool)

(assert (=> b!4097649 (= e!2542771 e!2542772)))

(declare-fun b!4097650 () Bool)

(declare-fun e!2542773 () Bool)

(assert (=> b!4097650 (= e!2542773 (matchR!5958 (derivativeStep!3650 (regex!7112 r!4213) (head!8660 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411))))) (tail!6394 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411))))))))

(declare-fun b!4097651 () Bool)

(assert (=> b!4097651 (= e!2542770 (= (head!8660 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))) (c!705882 (regex!7112 r!4213))))))

(declare-fun b!4097652 () Bool)

(declare-fun e!2542776 () Bool)

(assert (=> b!4097652 (= e!2542776 e!2542771)))

(declare-fun c!706141 () Bool)

(assert (=> b!4097652 (= c!706141 ((_ is EmptyLang!12017) (regex!7112 r!4213)))))

(declare-fun b!4097653 () Bool)

(declare-fun res!1675151 () Bool)

(assert (=> b!4097653 (=> res!1675151 e!2542772)))

(assert (=> b!4097653 (= res!1675151 e!2542770)))

(declare-fun res!1675150 () Bool)

(assert (=> b!4097653 (=> (not res!1675150) (not e!2542770))))

(declare-fun lt!1465777 () Bool)

(assert (=> b!4097653 (= res!1675150 lt!1465777)))

(declare-fun b!4097654 () Bool)

(assert (=> b!4097654 (= e!2542776 (= lt!1465777 call!289632))))

(declare-fun d!1216757 () Bool)

(assert (=> d!1216757 e!2542776))

(declare-fun c!706139 () Bool)

(assert (=> d!1216757 (= c!706139 ((_ is EmptyExpr!12017) (regex!7112 r!4213)))))

(assert (=> d!1216757 (= lt!1465777 e!2542773)))

(declare-fun c!706140 () Bool)

(assert (=> d!1216757 (= c!706140 (isEmpty!26289 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))))))

(assert (=> d!1216757 (validRegex!5449 (regex!7112 r!4213))))

(assert (=> d!1216757 (= (matchR!5958 (regex!7112 r!4213) (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))) lt!1465777)))

(declare-fun b!4097655 () Bool)

(declare-fun e!2542775 () Bool)

(assert (=> b!4097655 (= e!2542772 e!2542775)))

(declare-fun res!1675145 () Bool)

(assert (=> b!4097655 (=> (not res!1675145) (not e!2542775))))

(assert (=> b!4097655 (= res!1675145 (not lt!1465777))))

(declare-fun b!4097656 () Bool)

(assert (=> b!4097656 (= e!2542771 (not lt!1465777))))

(declare-fun b!4097657 () Bool)

(assert (=> b!4097657 (= e!2542774 (not (= (head!8660 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411)))) (c!705882 (regex!7112 r!4213)))))))

(declare-fun b!4097658 () Bool)

(declare-fun res!1675146 () Bool)

(assert (=> b!4097658 (=> (not res!1675146) (not e!2542770))))

(assert (=> b!4097658 (= res!1675146 (isEmpty!26289 (tail!6394 (_1!24566 (findLongestMatchInner!1474 (regex!7112 r!4213) Nil!43932 (size!32823 Nil!43932) input!3411 input!3411 (size!32823 input!3411))))))))

(declare-fun b!4097659 () Bool)

(assert (=> b!4097659 (= e!2542773 (nullable!4249 (regex!7112 r!4213)))))

(declare-fun b!4097660 () Bool)

(assert (=> b!4097660 (= e!2542775 e!2542774)))

(declare-fun res!1675148 () Bool)

(assert (=> b!4097660 (=> res!1675148 e!2542774)))

(assert (=> b!4097660 (= res!1675148 call!289632)))

(assert (= (and d!1216757 c!706140) b!4097659))

(assert (= (and d!1216757 (not c!706140)) b!4097650))

(assert (= (and d!1216757 c!706139) b!4097654))

(assert (= (and d!1216757 (not c!706139)) b!4097652))

(assert (= (and b!4097652 c!706141) b!4097656))

(assert (= (and b!4097652 (not c!706141)) b!4097649))

(assert (= (and b!4097649 (not res!1675147)) b!4097653))

(assert (= (and b!4097653 res!1675150) b!4097647))

(assert (= (and b!4097647 res!1675149) b!4097658))

(assert (= (and b!4097658 res!1675146) b!4097651))

(assert (= (and b!4097653 (not res!1675151)) b!4097655))

(assert (= (and b!4097655 res!1675145) b!4097660))

(assert (= (and b!4097660 (not res!1675148)) b!4097648))

(assert (= (and b!4097648 (not res!1675144)) b!4097657))

(assert (= (or b!4097654 b!4097647 b!4097660) bm!289627))

(declare-fun m!4704909 () Bool)

(assert (=> b!4097657 m!4704909))

(assert (=> d!1216757 m!4703501))

(assert (=> d!1216757 m!4703735))

(assert (=> b!4097651 m!4704909))

(assert (=> bm!289627 m!4703501))

(assert (=> b!4097659 m!4703737))

(declare-fun m!4704911 () Bool)

(assert (=> b!4097648 m!4704911))

(assert (=> b!4097648 m!4704911))

(declare-fun m!4704913 () Bool)

(assert (=> b!4097648 m!4704913))

(assert (=> b!4097658 m!4704911))

(assert (=> b!4097658 m!4704911))

(assert (=> b!4097658 m!4704913))

(assert (=> b!4097650 m!4704909))

(assert (=> b!4097650 m!4704909))

(declare-fun m!4704915 () Bool)

(assert (=> b!4097650 m!4704915))

(assert (=> b!4097650 m!4704911))

(assert (=> b!4097650 m!4704915))

(assert (=> b!4097650 m!4704911))

(declare-fun m!4704917 () Bool)

(assert (=> b!4097650 m!4704917))

(assert (=> b!4096559 d!1216757))

(assert (=> b!4096559 d!1216669))

(assert (=> b!4096559 d!1216623))

(assert (=> b!4096559 d!1216445))

(declare-fun d!1216759 () Bool)

(assert (=> d!1216759 (= (inv!58663 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))) (isBalanced!3709 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))))))

(declare-fun bs!593677 () Bool)

(assert (= bs!593677 d!1216759))

(declare-fun m!4704919 () Bool)

(assert (=> bs!593677 m!4704919))

(assert (=> tb!246445 d!1216759))

(declare-fun b!4097661 () Bool)

(declare-fun e!2542777 () Bool)

(declare-fun tp!1240093 () Bool)

(assert (=> b!4097661 (= e!2542777 (and tp_is_empty!21037 tp!1240093))))

(assert (=> b!4096833 (= tp!1240005 e!2542777)))

(assert (= (and b!4096833 ((_ is Cons!43932) (t!339271 (t!339271 input!3411)))) b!4097661))

(declare-fun b!4097662 () Bool)

(declare-fun e!2542778 () Bool)

(declare-fun tp!1240094 () Bool)

(assert (=> b!4097662 (= e!2542778 (and tp_is_empty!21037 tp!1240094))))

(assert (=> b!4096817 (= tp!1239987 e!2542778)))

(assert (= (and b!4096817 ((_ is Cons!43932) (t!339271 (t!339271 p!2988)))) b!4097662))

(declare-fun b!4097663 () Bool)

(declare-fun e!2542779 () Bool)

(assert (=> b!4097663 (= e!2542779 tp_is_empty!21037)))

(assert (=> b!4096820 (= tp!1239990 e!2542779)))

(declare-fun b!4097666 () Bool)

(declare-fun tp!1240098 () Bool)

(declare-fun tp!1240095 () Bool)

(assert (=> b!4097666 (= e!2542779 (and tp!1240098 tp!1240095))))

(declare-fun b!4097664 () Bool)

(declare-fun tp!1240099 () Bool)

(declare-fun tp!1240096 () Bool)

(assert (=> b!4097664 (= e!2542779 (and tp!1240099 tp!1240096))))

(declare-fun b!4097665 () Bool)

(declare-fun tp!1240097 () Bool)

(assert (=> b!4097665 (= e!2542779 tp!1240097)))

(assert (= (and b!4096820 ((_ is ElementMatch!12017) (reg!12346 (regex!7112 r!4213)))) b!4097663))

(assert (= (and b!4096820 ((_ is Concat!19360) (reg!12346 (regex!7112 r!4213)))) b!4097664))

(assert (= (and b!4096820 ((_ is Star!12017) (reg!12346 (regex!7112 r!4213)))) b!4097665))

(assert (= (and b!4096820 ((_ is Union!12017) (reg!12346 (regex!7112 r!4213)))) b!4097666))

(declare-fun b!4097667 () Bool)

(declare-fun e!2542780 () Bool)

(assert (=> b!4097667 (= e!2542780 tp_is_empty!21037)))

(assert (=> b!4096819 (= tp!1239992 e!2542780)))

(declare-fun b!4097670 () Bool)

(declare-fun tp!1240103 () Bool)

(declare-fun tp!1240100 () Bool)

(assert (=> b!4097670 (= e!2542780 (and tp!1240103 tp!1240100))))

(declare-fun b!4097668 () Bool)

(declare-fun tp!1240104 () Bool)

(declare-fun tp!1240101 () Bool)

(assert (=> b!4097668 (= e!2542780 (and tp!1240104 tp!1240101))))

(declare-fun b!4097669 () Bool)

(declare-fun tp!1240102 () Bool)

(assert (=> b!4097669 (= e!2542780 tp!1240102)))

(assert (= (and b!4096819 ((_ is ElementMatch!12017) (regOne!24546 (regex!7112 r!4213)))) b!4097667))

(assert (= (and b!4096819 ((_ is Concat!19360) (regOne!24546 (regex!7112 r!4213)))) b!4097668))

(assert (= (and b!4096819 ((_ is Star!12017) (regOne!24546 (regex!7112 r!4213)))) b!4097669))

(assert (= (and b!4096819 ((_ is Union!12017) (regOne!24546 (regex!7112 r!4213)))) b!4097670))

(declare-fun b!4097671 () Bool)

(declare-fun e!2542781 () Bool)

(assert (=> b!4097671 (= e!2542781 tp_is_empty!21037)))

(assert (=> b!4096819 (= tp!1239989 e!2542781)))

(declare-fun b!4097674 () Bool)

(declare-fun tp!1240108 () Bool)

(declare-fun tp!1240105 () Bool)

(assert (=> b!4097674 (= e!2542781 (and tp!1240108 tp!1240105))))

(declare-fun b!4097672 () Bool)

(declare-fun tp!1240109 () Bool)

(declare-fun tp!1240106 () Bool)

(assert (=> b!4097672 (= e!2542781 (and tp!1240109 tp!1240106))))

(declare-fun b!4097673 () Bool)

(declare-fun tp!1240107 () Bool)

(assert (=> b!4097673 (= e!2542781 tp!1240107)))

(assert (= (and b!4096819 ((_ is ElementMatch!12017) (regTwo!24546 (regex!7112 r!4213)))) b!4097671))

(assert (= (and b!4096819 ((_ is Concat!19360) (regTwo!24546 (regex!7112 r!4213)))) b!4097672))

(assert (= (and b!4096819 ((_ is Star!12017) (regTwo!24546 (regex!7112 r!4213)))) b!4097673))

(assert (= (and b!4096819 ((_ is Union!12017) (regTwo!24546 (regex!7112 r!4213)))) b!4097674))

(declare-fun e!2542786 () Bool)

(declare-fun tp!1240117 () Bool)

(declare-fun b!4097683 () Bool)

(declare-fun tp!1240116 () Bool)

(assert (=> b!4097683 (= e!2542786 (and (inv!58662 (left!33025 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))))) tp!1240117 (inv!58662 (right!33355 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))))) tp!1240116))))

(declare-fun b!4097685 () Bool)

(declare-fun e!2542787 () Bool)

(declare-fun tp!1240118 () Bool)

(assert (=> b!4097685 (= e!2542787 tp!1240118)))

(declare-fun b!4097684 () Bool)

(declare-fun inv!58668 (IArray!26651) Bool)

(assert (=> b!4097684 (= e!2542786 (and (inv!58668 (xs!16629 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))))) e!2542787))))

(assert (=> b!4096658 (= tp!1239945 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199)))) e!2542786))))

(assert (= (and b!4096658 ((_ is Node!13323) (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))))) b!4097683))

(assert (= b!4097684 b!4097685))

(assert (= (and b!4096658 ((_ is Leaf!20594) (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))))) b!4097684))

(declare-fun m!4704921 () Bool)

(assert (=> b!4097683 m!4704921))

(declare-fun m!4704923 () Bool)

(assert (=> b!4097683 m!4704923))

(declare-fun m!4704925 () Bool)

(assert (=> b!4097684 m!4704925))

(assert (=> b!4096658 m!4703583))

(declare-fun tp!1240120 () Bool)

(declare-fun e!2542788 () Bool)

(declare-fun b!4097686 () Bool)

(declare-fun tp!1240119 () Bool)

(assert (=> b!4097686 (= e!2542788 (and (inv!58662 (left!33025 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))))) tp!1240120 (inv!58662 (right!33355 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))))) tp!1240119))))

(declare-fun b!4097688 () Bool)

(declare-fun e!2542789 () Bool)

(declare-fun tp!1240121 () Bool)

(assert (=> b!4097688 (= e!2542789 tp!1240121)))

(declare-fun b!4097687 () Bool)

(assert (=> b!4097687 (= e!2542788 (and (inv!58668 (xs!16629 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))))) e!2542789))))

(assert (=> b!4096448 (= tp!1239930 (and (inv!58662 (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201)))) e!2542788))))

(assert (= (and b!4096448 ((_ is Node!13323) (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))))) b!4097686))

(assert (= b!4097687 b!4097688))

(assert (= (and b!4096448 ((_ is Leaf!20594) (c!705883 (dynLambda!18835 (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))) (value!223344 lt!1465201))))) b!4097687))

(declare-fun m!4704927 () Bool)

(assert (=> b!4097686 m!4704927))

(declare-fun m!4704929 () Bool)

(assert (=> b!4097686 m!4704929))

(declare-fun m!4704931 () Bool)

(assert (=> b!4097687 m!4704931))

(assert (=> b!4096448 m!4703295))

(declare-fun b!4097689 () Bool)

(declare-fun e!2542790 () Bool)

(assert (=> b!4097689 (= e!2542790 tp_is_empty!21037)))

(assert (=> b!4096821 (= tp!1239991 e!2542790)))

(declare-fun b!4097692 () Bool)

(declare-fun tp!1240125 () Bool)

(declare-fun tp!1240122 () Bool)

(assert (=> b!4097692 (= e!2542790 (and tp!1240125 tp!1240122))))

(declare-fun b!4097690 () Bool)

(declare-fun tp!1240126 () Bool)

(declare-fun tp!1240123 () Bool)

(assert (=> b!4097690 (= e!2542790 (and tp!1240126 tp!1240123))))

(declare-fun b!4097691 () Bool)

(declare-fun tp!1240124 () Bool)

(assert (=> b!4097691 (= e!2542790 tp!1240124)))

(assert (= (and b!4096821 ((_ is ElementMatch!12017) (regOne!24547 (regex!7112 r!4213)))) b!4097689))

(assert (= (and b!4096821 ((_ is Concat!19360) (regOne!24547 (regex!7112 r!4213)))) b!4097690))

(assert (= (and b!4096821 ((_ is Star!12017) (regOne!24547 (regex!7112 r!4213)))) b!4097691))

(assert (= (and b!4096821 ((_ is Union!12017) (regOne!24547 (regex!7112 r!4213)))) b!4097692))

(declare-fun b!4097693 () Bool)

(declare-fun e!2542791 () Bool)

(assert (=> b!4097693 (= e!2542791 tp_is_empty!21037)))

(assert (=> b!4096821 (= tp!1239988 e!2542791)))

(declare-fun b!4097696 () Bool)

(declare-fun tp!1240130 () Bool)

(declare-fun tp!1240127 () Bool)

(assert (=> b!4097696 (= e!2542791 (and tp!1240130 tp!1240127))))

(declare-fun b!4097694 () Bool)

(declare-fun tp!1240131 () Bool)

(declare-fun tp!1240128 () Bool)

(assert (=> b!4097694 (= e!2542791 (and tp!1240131 tp!1240128))))

(declare-fun b!4097695 () Bool)

(declare-fun tp!1240129 () Bool)

(assert (=> b!4097695 (= e!2542791 tp!1240129)))

(assert (= (and b!4096821 ((_ is ElementMatch!12017) (regTwo!24547 (regex!7112 r!4213)))) b!4097693))

(assert (= (and b!4096821 ((_ is Concat!19360) (regTwo!24547 (regex!7112 r!4213)))) b!4097694))

(assert (= (and b!4096821 ((_ is Star!12017) (regTwo!24547 (regex!7112 r!4213)))) b!4097695))

(assert (= (and b!4096821 ((_ is Union!12017) (regTwo!24547 (regex!7112 r!4213)))) b!4097696))

(declare-fun b!4097697 () Bool)

(declare-fun e!2542792 () Bool)

(assert (=> b!4097697 (= e!2542792 tp_is_empty!21037)))

(assert (=> b!4096812 (= tp!1239983 e!2542792)))

(declare-fun b!4097700 () Bool)

(declare-fun tp!1240135 () Bool)

(declare-fun tp!1240132 () Bool)

(assert (=> b!4097700 (= e!2542792 (and tp!1240135 tp!1240132))))

(declare-fun b!4097698 () Bool)

(declare-fun tp!1240136 () Bool)

(declare-fun tp!1240133 () Bool)

(assert (=> b!4097698 (= e!2542792 (and tp!1240136 tp!1240133))))

(declare-fun b!4097699 () Bool)

(declare-fun tp!1240134 () Bool)

(assert (=> b!4097699 (= e!2542792 tp!1240134)))

(assert (= (and b!4096812 ((_ is ElementMatch!12017) (regOne!24547 (regex!7112 (h!49353 rules!3870))))) b!4097697))

(assert (= (and b!4096812 ((_ is Concat!19360) (regOne!24547 (regex!7112 (h!49353 rules!3870))))) b!4097698))

(assert (= (and b!4096812 ((_ is Star!12017) (regOne!24547 (regex!7112 (h!49353 rules!3870))))) b!4097699))

(assert (= (and b!4096812 ((_ is Union!12017) (regOne!24547 (regex!7112 (h!49353 rules!3870))))) b!4097700))

(declare-fun b!4097701 () Bool)

(declare-fun e!2542793 () Bool)

(assert (=> b!4097701 (= e!2542793 tp_is_empty!21037)))

(assert (=> b!4096812 (= tp!1239980 e!2542793)))

(declare-fun b!4097704 () Bool)

(declare-fun tp!1240140 () Bool)

(declare-fun tp!1240137 () Bool)

(assert (=> b!4097704 (= e!2542793 (and tp!1240140 tp!1240137))))

(declare-fun b!4097702 () Bool)

(declare-fun tp!1240141 () Bool)

(declare-fun tp!1240138 () Bool)

(assert (=> b!4097702 (= e!2542793 (and tp!1240141 tp!1240138))))

(declare-fun b!4097703 () Bool)

(declare-fun tp!1240139 () Bool)

(assert (=> b!4097703 (= e!2542793 tp!1240139)))

(assert (= (and b!4096812 ((_ is ElementMatch!12017) (regTwo!24547 (regex!7112 (h!49353 rules!3870))))) b!4097701))

(assert (= (and b!4096812 ((_ is Concat!19360) (regTwo!24547 (regex!7112 (h!49353 rules!3870))))) b!4097702))

(assert (= (and b!4096812 ((_ is Star!12017) (regTwo!24547 (regex!7112 (h!49353 rules!3870))))) b!4097703))

(assert (= (and b!4096812 ((_ is Union!12017) (regTwo!24547 (regex!7112 (h!49353 rules!3870))))) b!4097704))

(declare-fun b!4097705 () Bool)

(declare-fun e!2542794 () Bool)

(assert (=> b!4097705 (= e!2542794 tp_is_empty!21037)))

(assert (=> b!4096811 (= tp!1239982 e!2542794)))

(declare-fun b!4097708 () Bool)

(declare-fun tp!1240145 () Bool)

(declare-fun tp!1240142 () Bool)

(assert (=> b!4097708 (= e!2542794 (and tp!1240145 tp!1240142))))

(declare-fun b!4097706 () Bool)

(declare-fun tp!1240146 () Bool)

(declare-fun tp!1240143 () Bool)

(assert (=> b!4097706 (= e!2542794 (and tp!1240146 tp!1240143))))

(declare-fun b!4097707 () Bool)

(declare-fun tp!1240144 () Bool)

(assert (=> b!4097707 (= e!2542794 tp!1240144)))

(assert (= (and b!4096811 ((_ is ElementMatch!12017) (reg!12346 (regex!7112 (h!49353 rules!3870))))) b!4097705))

(assert (= (and b!4096811 ((_ is Concat!19360) (reg!12346 (regex!7112 (h!49353 rules!3870))))) b!4097706))

(assert (= (and b!4096811 ((_ is Star!12017) (reg!12346 (regex!7112 (h!49353 rules!3870))))) b!4097707))

(assert (= (and b!4096811 ((_ is Union!12017) (reg!12346 (regex!7112 (h!49353 rules!3870))))) b!4097708))

(declare-fun b!4097709 () Bool)

(declare-fun e!2542795 () Bool)

(assert (=> b!4097709 (= e!2542795 tp_is_empty!21037)))

(assert (=> b!4096831 (= tp!1240004 e!2542795)))

(declare-fun b!4097712 () Bool)

(declare-fun tp!1240150 () Bool)

(declare-fun tp!1240147 () Bool)

(assert (=> b!4097712 (= e!2542795 (and tp!1240150 tp!1240147))))

(declare-fun b!4097710 () Bool)

(declare-fun tp!1240151 () Bool)

(declare-fun tp!1240148 () Bool)

(assert (=> b!4097710 (= e!2542795 (and tp!1240151 tp!1240148))))

(declare-fun b!4097711 () Bool)

(declare-fun tp!1240149 () Bool)

(assert (=> b!4097711 (= e!2542795 tp!1240149)))

(assert (= (and b!4096831 ((_ is ElementMatch!12017) (regex!7112 (h!49353 (t!339272 rules!3870))))) b!4097709))

(assert (= (and b!4096831 ((_ is Concat!19360) (regex!7112 (h!49353 (t!339272 rules!3870))))) b!4097710))

(assert (= (and b!4096831 ((_ is Star!12017) (regex!7112 (h!49353 (t!339272 rules!3870))))) b!4097711))

(assert (= (and b!4096831 ((_ is Union!12017) (regex!7112 (h!49353 (t!339272 rules!3870))))) b!4097712))

(declare-fun b!4097713 () Bool)

(declare-fun e!2542796 () Bool)

(declare-fun tp!1240152 () Bool)

(assert (=> b!4097713 (= e!2542796 (and tp_is_empty!21037 tp!1240152))))

(assert (=> b!4096834 (= tp!1240006 e!2542796)))

(assert (= (and b!4096834 ((_ is Cons!43932) (t!339271 (t!339271 suffix!1518)))) b!4097713))

(declare-fun b!4097714 () Bool)

(declare-fun e!2542797 () Bool)

(assert (=> b!4097714 (= e!2542797 tp_is_empty!21037)))

(assert (=> b!4096810 (= tp!1239984 e!2542797)))

(declare-fun b!4097717 () Bool)

(declare-fun tp!1240156 () Bool)

(declare-fun tp!1240153 () Bool)

(assert (=> b!4097717 (= e!2542797 (and tp!1240156 tp!1240153))))

(declare-fun b!4097715 () Bool)

(declare-fun tp!1240157 () Bool)

(declare-fun tp!1240154 () Bool)

(assert (=> b!4097715 (= e!2542797 (and tp!1240157 tp!1240154))))

(declare-fun b!4097716 () Bool)

(declare-fun tp!1240155 () Bool)

(assert (=> b!4097716 (= e!2542797 tp!1240155)))

(assert (= (and b!4096810 ((_ is ElementMatch!12017) (regOne!24546 (regex!7112 (h!49353 rules!3870))))) b!4097714))

(assert (= (and b!4096810 ((_ is Concat!19360) (regOne!24546 (regex!7112 (h!49353 rules!3870))))) b!4097715))

(assert (= (and b!4096810 ((_ is Star!12017) (regOne!24546 (regex!7112 (h!49353 rules!3870))))) b!4097716))

(assert (= (and b!4096810 ((_ is Union!12017) (regOne!24546 (regex!7112 (h!49353 rules!3870))))) b!4097717))

(declare-fun b!4097718 () Bool)

(declare-fun e!2542798 () Bool)

(assert (=> b!4097718 (= e!2542798 tp_is_empty!21037)))

(assert (=> b!4096810 (= tp!1239981 e!2542798)))

(declare-fun b!4097721 () Bool)

(declare-fun tp!1240161 () Bool)

(declare-fun tp!1240158 () Bool)

(assert (=> b!4097721 (= e!2542798 (and tp!1240161 tp!1240158))))

(declare-fun b!4097719 () Bool)

(declare-fun tp!1240162 () Bool)

(declare-fun tp!1240159 () Bool)

(assert (=> b!4097719 (= e!2542798 (and tp!1240162 tp!1240159))))

(declare-fun b!4097720 () Bool)

(declare-fun tp!1240160 () Bool)

(assert (=> b!4097720 (= e!2542798 tp!1240160)))

(assert (= (and b!4096810 ((_ is ElementMatch!12017) (regTwo!24546 (regex!7112 (h!49353 rules!3870))))) b!4097718))

(assert (= (and b!4096810 ((_ is Concat!19360) (regTwo!24546 (regex!7112 (h!49353 rules!3870))))) b!4097719))

(assert (= (and b!4096810 ((_ is Star!12017) (regTwo!24546 (regex!7112 (h!49353 rules!3870))))) b!4097720))

(assert (= (and b!4096810 ((_ is Union!12017) (regTwo!24546 (regex!7112 (h!49353 rules!3870))))) b!4097721))

(declare-fun b!4097724 () Bool)

(declare-fun b_free!114597 () Bool)

(declare-fun b_next!115301 () Bool)

(assert (=> b!4097724 (= b_free!114597 (not b_next!115301))))

(declare-fun t!339500 () Bool)

(declare-fun tb!246665 () Bool)

(assert (=> (and b!4097724 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 r!4213))) t!339500) tb!246665))

(declare-fun result!299310 () Bool)

(assert (= result!299310 result!299166))

(assert (=> d!1216453 t!339500))

(declare-fun t!339502 () Bool)

(declare-fun tb!246667 () Bool)

(assert (=> (and b!4097724 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))) t!339502) tb!246667))

(declare-fun result!299312 () Bool)

(assert (= result!299312 result!299270))

(assert (=> d!1216721 t!339502))

(declare-fun t!339504 () Bool)

(declare-fun tb!246669 () Bool)

(assert (=> (and b!4097724 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))) t!339504) tb!246669))

(declare-fun result!299314 () Bool)

(assert (= result!299314 result!299222))

(assert (=> d!1216631 t!339504))

(declare-fun t!339506 () Bool)

(declare-fun tb!246671 () Bool)

(assert (=> (and b!4097724 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 r!4213))) t!339506) tb!246671))

(declare-fun result!299316 () Bool)

(assert (= result!299316 result!299238))

(assert (=> d!1216639 t!339506))

(declare-fun t!339508 () Bool)

(declare-fun tb!246673 () Bool)

(assert (=> (and b!4097724 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 (h!49353 rules!3870)))) t!339508) tb!246673))

(declare-fun result!299318 () Bool)

(assert (= result!299318 result!299256))

(assert (=> d!1216703 t!339508))

(declare-fun tb!246675 () Bool)

(declare-fun t!339510 () Bool)

(assert (=> (and b!4097724 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 r!4213))) t!339510) tb!246675))

(declare-fun result!299320 () Bool)

(assert (= result!299320 result!299094))

(assert (=> d!1216267 t!339510))

(declare-fun t!339512 () Bool)

(declare-fun tb!246677 () Bool)

(assert (=> (and b!4097724 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))))) t!339512) tb!246677))

(declare-fun result!299322 () Bool)

(assert (= result!299322 result!299148))

(assert (=> d!1216405 t!339512))

(assert (=> d!1216709 t!339508))

(assert (=> d!1216257 t!339510))

(declare-fun t!339514 () Bool)

(declare-fun tb!246679 () Bool)

(assert (=> (and b!4097724 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))))) t!339514) tb!246679))

(declare-fun result!299324 () Bool)

(assert (= result!299324 result!299136))

(assert (=> d!1216369 t!339514))

(assert (=> d!1216657 t!339506))

(declare-fun b_and!316235 () Bool)

(declare-fun tp!1240164 () Bool)

(assert (=> b!4097724 (= tp!1240164 (and (=> t!339504 result!299314) (=> t!339510 result!299320) (=> t!339500 result!299310) (=> t!339514 result!299324) (=> t!339512 result!299322) (=> t!339502 result!299312) (=> t!339508 result!299318) (=> t!339506 result!299316) b_and!316235))))

(declare-fun b_free!114599 () Bool)

(declare-fun b_next!115303 () Bool)

(assert (=> b!4097724 (= b_free!114599 (not b_next!115303))))

(declare-fun tb!246681 () Bool)

(declare-fun t!339516 () Bool)

(assert (=> (and b!4097724 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465329)))))) t!339516) tb!246681))

(declare-fun result!299326 () Bool)

(assert (= result!299326 result!299154))

(assert (=> d!1216419 t!339516))

(declare-fun t!339518 () Bool)

(declare-fun tb!246683 () Bool)

(assert (=> (and b!4097724 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 (h!49353 rules!3870)))) t!339518) tb!246683))

(declare-fun result!299328 () Bool)

(assert (= result!299328 result!299262))

(assert (=> d!1216709 t!339518))

(declare-fun tb!246685 () Bool)

(declare-fun t!339520 () Bool)

(assert (=> (and b!4097724 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465319)))))) t!339520) tb!246685))

(declare-fun result!299330 () Bool)

(assert (= result!299330 result!299160))

(assert (=> d!1216433 t!339520))

(declare-fun tb!246687 () Bool)

(declare-fun t!339522 () Bool)

(assert (=> (and b!4097724 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 (rule!10266 lt!1465201)))) t!339522) tb!246687))

(declare-fun result!299332 () Bool)

(assert (= result!299332 result!299068))

(assert (=> b!4096442 t!339522))

(declare-fun tb!246689 () Bool)

(declare-fun t!339524 () Bool)

(assert (=> (and b!4097724 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465312)))))) t!339524) tb!246689))

(declare-fun result!299334 () Bool)

(assert (= result!299334 result!299172))

(assert (=> d!1216463 t!339524))

(declare-fun t!339526 () Bool)

(declare-fun tb!246691 () Bool)

(assert (=> (and b!4097724 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 r!4213))) t!339526) tb!246691))

(declare-fun result!299336 () Bool)

(assert (= result!299336 result!299244))

(assert (=> d!1216657 t!339526))

(declare-fun t!339528 () Bool)

(declare-fun tb!246693 () Bool)

(assert (=> (and b!4097724 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 r!4213))) t!339528) tb!246693))

(declare-fun result!299338 () Bool)

(assert (= result!299338 result!299088))

(assert (=> d!1216257 t!339528))

(declare-fun t!339530 () Bool)

(declare-fun tb!246695 () Bool)

(assert (=> (and b!4097724 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 (rule!10266 (_1!24564 (get!14412 lt!1465270)))))) t!339530) tb!246695))

(declare-fun result!299340 () Bool)

(assert (= result!299340 result!299142))

(assert (=> d!1216383 t!339530))

(declare-fun tp!1240165 () Bool)

(declare-fun b_and!316237 () Bool)

(assert (=> b!4097724 (= tp!1240165 (and (=> t!339528 result!299338) (=> t!339522 result!299332) (=> t!339518 result!299328) (=> t!339516 result!299326) (=> t!339526 result!299336) (=> t!339520 result!299330) (=> t!339524 result!299334) (=> t!339530 result!299340) b_and!316237))))

(declare-fun e!2542800 () Bool)

(assert (=> b!4097724 (= e!2542800 (and tp!1240164 tp!1240165))))

(declare-fun b!4097723 () Bool)

(declare-fun e!2542799 () Bool)

(declare-fun tp!1240166 () Bool)

(assert (=> b!4097723 (= e!2542799 (and tp!1240166 (inv!58655 (tag!7972 (h!49353 (t!339272 (t!339272 rules!3870))))) (inv!58658 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) e!2542800))))

(declare-fun b!4097722 () Bool)

(declare-fun e!2542801 () Bool)

(declare-fun tp!1240163 () Bool)

(assert (=> b!4097722 (= e!2542801 (and e!2542799 tp!1240163))))

(assert (=> b!4096830 (= tp!1240001 e!2542801)))

(assert (= b!4097723 b!4097724))

(assert (= b!4097722 b!4097723))

(assert (= (and b!4096830 ((_ is Cons!43933) (t!339272 (t!339272 rules!3870)))) b!4097722))

(declare-fun m!4704933 () Bool)

(assert (=> b!4097723 m!4704933))

(declare-fun m!4704935 () Bool)

(assert (=> b!4097723 m!4704935))

(declare-fun b_lambda!120377 () Bool)

(assert (= b_lambda!120335 (or (and b!4096407 b_free!114577) (and b!4096415 b_free!114581 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (and b!4096832 b_free!114589 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 r!4213)))) (and b!4097724 b_free!114597 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 r!4213)))) b_lambda!120377)))

(declare-fun b_lambda!120379 () Bool)

(assert (= b_lambda!120301 (or d!1216257 b_lambda!120379)))

(declare-fun bs!593678 () Bool)

(declare-fun d!1216761 () Bool)

(assert (= bs!593678 (and d!1216761 d!1216257)))

(assert (=> bs!593678 (= (dynLambda!18844 lambda!128137 lt!1465199) (= (list!16302 (dynLambda!18835 (toChars!9571 (transformation!7112 r!4213)) (dynLambda!18839 (toValue!9712 (transformation!7112 r!4213)) lt!1465199))) (list!16302 lt!1465199)))))

(declare-fun b_lambda!120395 () Bool)

(assert (=> (not b_lambda!120395) (not bs!593678)))

(assert (=> bs!593678 t!339290))

(declare-fun b_and!316239 () Bool)

(assert (= b_and!316197 (and (=> t!339290 result!299088) b_and!316239)))

(assert (=> bs!593678 t!339292))

(declare-fun b_and!316241 () Bool)

(assert (= b_and!316199 (and (=> t!339292 result!299090) b_and!316241)))

(assert (=> bs!593678 t!339308))

(declare-fun b_and!316243 () Bool)

(assert (= b_and!316201 (and (=> t!339308 result!299116) b_and!316243)))

(assert (=> bs!593678 t!339528))

(declare-fun b_and!316245 () Bool)

(assert (= b_and!316237 (and (=> t!339528 result!299338) b_and!316245)))

(declare-fun b_lambda!120397 () Bool)

(assert (=> (not b_lambda!120397) (not bs!593678)))

(assert (=> bs!593678 t!339294))

(declare-fun b_and!316247 () Bool)

(assert (= b_and!316209 (and (=> t!339294 result!299094) b_and!316247)))

(assert (=> bs!593678 t!339296))

(declare-fun b_and!316249 () Bool)

(assert (= b_and!316211 (and (=> t!339296 result!299098) b_and!316249)))

(assert (=> bs!593678 t!339304))

(declare-fun b_and!316251 () Bool)

(assert (= b_and!316213 (and (=> t!339304 result!299112) b_and!316251)))

(assert (=> bs!593678 t!339510))

(declare-fun b_and!316253 () Bool)

(assert (= b_and!316235 (and (=> t!339510 result!299320) b_and!316253)))

(assert (=> bs!593678 m!4703591))

(assert (=> bs!593678 m!4703595))

(assert (=> bs!593678 m!4703593))

(assert (=> bs!593678 m!4703589))

(assert (=> bs!593678 m!4703589))

(assert (=> bs!593678 m!4703591))

(assert (=> d!1216393 d!1216761))

(declare-fun b_lambda!120381 () Bool)

(assert (= b_lambda!120351 (or (and b!4096407 b_free!114577 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (h!49353 rules!3870))))) (and b!4096415 b_free!114581) (and b!4096832 b_free!114589 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (h!49353 rules!3870))))) (and b!4097724 b_free!114597 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 (h!49353 rules!3870))))) b_lambda!120381)))

(declare-fun b_lambda!120383 () Bool)

(assert (= b_lambda!120339 (or (and b!4096407 b_free!114579) (and b!4096415 b_free!114583 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 r!4213)))) (and b!4096832 b_free!114591 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 r!4213)))) (and b!4097724 b_free!114599 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 r!4213)))) b_lambda!120383)))

(declare-fun b_lambda!120385 () Bool)

(assert (= b_lambda!120349 (or (and b!4096407 b_free!114579 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (h!49353 rules!3870))))) (and b!4096415 b_free!114583) (and b!4096832 b_free!114591 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 (h!49353 rules!3870))))) (and b!4097724 b_free!114599 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 (h!49353 rules!3870))))) b_lambda!120385)))

(declare-fun b_lambda!120387 () Bool)

(assert (= b_lambda!120309 (or (and b!4096407 b_free!114577) (and b!4096415 b_free!114581 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (and b!4096832 b_free!114589 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 r!4213)))) (and b!4097724 b_free!114597 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 r!4213)))) b_lambda!120387)))

(declare-fun b_lambda!120389 () Bool)

(assert (= b_lambda!120347 (or (and b!4096407 b_free!114577 (= (toValue!9712 (transformation!7112 r!4213)) (toValue!9712 (transformation!7112 (h!49353 rules!3870))))) (and b!4096415 b_free!114581) (and b!4096832 b_free!114589 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 (h!49353 rules!3870))))) (and b!4097724 b_free!114597 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 (h!49353 rules!3870))))) b_lambda!120389)))

(declare-fun b_lambda!120391 () Bool)

(assert (= b_lambda!120341 (or (and b!4096407 b_free!114577) (and b!4096415 b_free!114581 (= (toValue!9712 (transformation!7112 (h!49353 rules!3870))) (toValue!9712 (transformation!7112 r!4213)))) (and b!4096832 b_free!114589 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toValue!9712 (transformation!7112 r!4213)))) (and b!4097724 b_free!114597 (= (toValue!9712 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toValue!9712 (transformation!7112 r!4213)))) b_lambda!120391)))

(declare-fun b_lambda!120393 () Bool)

(assert (= b_lambda!120265 (or (and b!4096407 b_free!114579 (= (toChars!9571 (transformation!7112 r!4213)) (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))))) (and b!4096415 b_free!114583 (= (toChars!9571 (transformation!7112 (h!49353 rules!3870))) (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))))) (and b!4096832 b_free!114591 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 rules!3870)))) (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))))) (and b!4097724 b_free!114599 (= (toChars!9571 (transformation!7112 (h!49353 (t!339272 (t!339272 rules!3870))))) (toChars!9571 (transformation!7112 (rule!10266 lt!1465201))))) b_lambda!120393)))

(check-sat (not bm!289624) (not b_next!115285) (not d!1216741) (not tb!246603) (not b!4097394) (not d!1216389) (not b!4097683) (not b_next!115293) (not b!4097373) (not b!4097687) (not b!4096994) (not b!4096952) (not b!4097510) b_and!316247 (not d!1216451) (not b!4097694) (not d!1216715) (not b!4097132) (not d!1216669) (not b!4097721) (not d!1216463) (not b!4096950) b_and!316239 (not d!1216391) (not b!4096973) (not b!4097142) (not b!4097405) (not d!1216717) (not b!4097572) (not bm!289599) (not b!4097141) (not d!1216471) (not b!4096989) (not b!4097128) (not d!1216429) (not b!4096991) (not b!4097673) (not b!4097670) (not b_lambda!120289) (not b!4097135) (not bm!289601) (not d!1216665) (not b_lambda!120303) (not d!1216719) (not b!4097569) (not b!4096993) (not b!4097685) (not d!1216693) (not b_lambda!120395) b_and!316249 (not d!1216709) (not tb!246519) (not d!1216473) (not b!4097711) (not b!4097669) (not d!1216431) (not bm!289588) (not b!4096977) (not b!4097661) (not b!4097000) (not b_lambda!120383) (not b_next!115303) (not d!1216455) (not tb!246507) (not d!1216439) (not tb!246501) (not d!1216393) (not b!4097604) (not b!4097598) (not d!1216387) (not b!4097703) (not d!1216461) (not b!4097664) (not b_lambda!120389) (not d!1216383) (not b_lambda!120385) (not d!1216401) (not b!4097707) (not b!4097112) (not b!4097607) (not b!4097040) (not b!4097158) (not b!4097001) (not tb!246525) (not bm!289613) (not d!1216419) (not d!1216477) (not bm!289596) (not b!4097454) (not b!4097686) (not b!4097038) (not b_lambda!120287) (not d!1216435) (not b_lambda!120387) (not b!4097481) (not d!1216751) (not b!4096940) (not d!1216415) (not d!1216381) (not d!1216509) (not b!4097567) (not b!4097704) (not bm!289543) (not d!1216371) (not b!4097126) (not b!4097713) (not bs!593678) (not b!4097692) (not b_lambda!120377) (not b!4096964) (not d!1216759) (not bm!289586) (not b!4097564) (not b!4096975) (not b!4097708) (not b!4097662) (not bm!289590) (not d!1216757) (not b!4097566) (not b!4097715) b_and!316253 (not d!1216503) (not b!4097657) (not b!4096969) (not bm!289542) (not bm!289531) (not b!4096938) (not d!1216413) (not b!4097590) (not bm!289508) (not b!4097650) (not bm!289597) (not b!4096970) (not b!4097021) (not b!4097129) (not b!4096980) (not b!4097565) (not b!4097563) (not d!1216739) (not b!4097491) (not b!4097472) (not b!4097658) (not b_lambda!120311) (not b!4097143) (not b!4097392) (not b!4097152) (not d!1216407) (not b!4097407) (not b!4097370) (not b!4097696) b_and!316245 (not b!4097712) (not d!1216725) (not d!1216675) (not b!4097470) (not b!4097090) (not b!4096948) (not b!4097456) (not bm!289598) (not b!4096982) (not b!4096658) (not b!4097151) (not b!4097518) (not b!4097067) (not b!4097474) (not b_next!115281) (not b!4097706) (not b_lambda!120299) (not b!4096963) (not b!4097606) (not b!4097495) (not b!4097467) (not b!4097459) (not b!4097702) (not b!4097666) (not tb!246627) (not tb!246531) (not bm!289591) (not b!4097719) (not b!4096987) (not bm!289594) (not tb!246615) (not b_next!115283) (not b!4097695) (not b!4097684) (not d!1216403) b_and!316243 (not d!1216457) (not b!4097651) (not b!4096962) (not b!4097458) (not d!1216633) (not d!1216447) (not b!4097371) (not b!4096999) (not d!1216627) (not bm!289614) (not bm!289592) (not b!4097674) (not b!4097124) (not d!1216379) (not b!4097596) (not bm!289612) (not d!1216399) (not b!4097602) (not b!4097031) (not d!1216713) (not b_lambda!120391) (not b!4097720) (not b_lambda!120307) (not b!4097613) (not b_lambda!120285) (not d!1216735) (not b!4097688) (not b!4097134) (not b!4096992) (not b!4097381) (not b!4097492) (not b!4097490) (not b!4096936) (not tb!246581) (not b!4097698) (not b!4096947) (not b!4097415) (not d!1216733) (not b!4096995) (not b_lambda!120397) (not b!4097691) (not d!1216377) (not b!4097159) (not d!1216723) (not b!4097668) (not b!4097113) (not b!4097130) (not d!1216497) (not d!1216437) (not b!4097659) (not tb!246597) (not b!4097700) (not b!4097699) (not b!4097570) (not b!4097723) (not b!4097690) (not b!4097160) (not d!1216427) (not d!1216501) (not b!4096979) (not tb!246495) (not tb!246513) (not bm!289595) (not b!4097511) (not b!4097672) (not bm!289627) (not b_lambda!120305) (not b_lambda!120379) (not b_lambda!120297) b_and!316251 (not b_lambda!120381) (not b_next!115301) (not bm!289626) (not d!1216711) (not b!4097614) (not b!4097465) (not b!4096942) (not b!4096448) (not b_lambda!120353) (not b!4097665) (not d!1216417) (not d!1216755) (not b!4097020) (not d!1216425) (not bm!289587) (not d!1216701) (not bm!289611) (not b!4096985) (not b_lambda!120393) (not b!4097646) (not b!4096945) (not b!4097396) (not b!4097404) (not b!4096918) (not b!4096984) (not b!4097475) (not b_next!115287) (not b!4097648) (not b!4097716) (not bm!289589) (not b!4096996) (not d!1216355) (not d!1216647) (not b!4097710) tp_is_empty!21037 (not b!4096997) (not b!4097149) (not b!4097508) (not b!4097722) (not b!4097517) (not b_lambda!120331) (not bm!289593) (not d!1216753) b_and!316241 (not b!4097483) (not d!1216657) (not b_next!115295) (not d!1216707) (not d!1216423) (not d!1216433) (not b!4097519) (not bm!289600) (not b!4097568) (not b!4097002) (not b!4097600) (not b!4097478) (not tb!246621) (not b!4097717) (not b!4097615) (not b!4097466) (not bm!289532) (not b!4097389) (not b!4097484) (not b!4097477) (not b!4097399) (not d!1216459))
(check-sat (not b_next!115285) b_and!316239 b_and!316249 (not b_next!115303) b_and!316253 b_and!316245 (not b_next!115281) (not b_next!115287) (not b_next!115293) b_and!316247 (not b_next!115283) b_and!316243 b_and!316251 (not b_next!115301) b_and!316241 (not b_next!115295))
