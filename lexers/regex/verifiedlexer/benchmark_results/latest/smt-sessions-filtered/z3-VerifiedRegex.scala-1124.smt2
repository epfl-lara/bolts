; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58836 () Bool)

(assert start!58836)

(declare-fun b!614643 () Bool)

(declare-fun b_free!17525 () Bool)

(declare-fun b_next!17541 () Bool)

(assert (=> b!614643 (= b_free!17525 (not b_next!17541))))

(declare-fun tp!189845 () Bool)

(declare-fun b_and!60975 () Bool)

(assert (=> b!614643 (= tp!189845 b_and!60975)))

(declare-fun b_free!17527 () Bool)

(declare-fun b_next!17543 () Bool)

(assert (=> b!614643 (= b_free!17527 (not b_next!17543))))

(declare-fun tp!189840 () Bool)

(declare-fun b_and!60977 () Bool)

(assert (=> b!614643 (= tp!189840 b_and!60977)))

(declare-fun b!614634 () Bool)

(declare-fun b_free!17529 () Bool)

(declare-fun b_next!17545 () Bool)

(assert (=> b!614634 (= b_free!17529 (not b_next!17545))))

(declare-fun tp!189844 () Bool)

(declare-fun b_and!60979 () Bool)

(assert (=> b!614634 (= tp!189844 b_and!60979)))

(declare-fun b_free!17531 () Bool)

(declare-fun b_next!17547 () Bool)

(assert (=> b!614634 (= b_free!17531 (not b_next!17547))))

(declare-fun tp!189848 () Bool)

(declare-fun b_and!60981 () Bool)

(assert (=> b!614634 (= tp!189848 b_and!60981)))

(declare-fun b!614632 () Bool)

(declare-datatypes ((Unit!11300 0))(
  ( (Unit!11301) )
))
(declare-fun e!372602 () Unit!11300)

(declare-fun e!372596 () Unit!11300)

(assert (=> b!614632 (= e!372602 e!372596)))

(declare-fun lt!263782 () Int)

(declare-datatypes ((C!4060 0))(
  ( (C!4061 (val!2256 Int)) )
))
(declare-datatypes ((Regex!1569 0))(
  ( (ElementMatch!1569 (c!113555 C!4060)) (Concat!2828 (regOne!3650 Regex!1569) (regTwo!3650 Regex!1569)) (EmptyExpr!1569) (Star!1569 (reg!1898 Regex!1569)) (EmptyLang!1569) (Union!1569 (regOne!3651 Regex!1569) (regTwo!3651 Regex!1569)) )
))
(declare-datatypes ((String!8038 0))(
  ( (String!8039 (value!40038 String)) )
))
(declare-datatypes ((List!6157 0))(
  ( (Nil!6147) (Cons!6147 (h!11548 (_ BitVec 16)) (t!81348 List!6157)) )
))
(declare-datatypes ((TokenValue!1259 0))(
  ( (FloatLiteralValue!2518 (text!9258 List!6157)) (TokenValueExt!1258 (__x!4416 Int)) (Broken!6295 (value!40039 List!6157)) (Object!1268) (End!1259) (Def!1259) (Underscore!1259) (Match!1259) (Else!1259) (Error!1259) (Case!1259) (If!1259) (Extends!1259) (Abstract!1259) (Class!1259) (Val!1259) (DelimiterValue!2518 (del!1319 List!6157)) (KeywordValue!1265 (value!40040 List!6157)) (CommentValue!2518 (value!40041 List!6157)) (WhitespaceValue!2518 (value!40042 List!6157)) (IndentationValue!1259 (value!40043 List!6157)) (String!8040) (Int32!1259) (Broken!6296 (value!40044 List!6157)) (Boolean!1260) (Unit!11302) (OperatorValue!1262 (op!1319 List!6157)) (IdentifierValue!2518 (value!40045 List!6157)) (IdentifierValue!2519 (value!40046 List!6157)) (WhitespaceValue!2519 (value!40047 List!6157)) (True!2518) (False!2518) (Broken!6297 (value!40048 List!6157)) (Broken!6298 (value!40049 List!6157)) (True!2519) (RightBrace!1259) (RightBracket!1259) (Colon!1259) (Null!1259) (Comma!1259) (LeftBracket!1259) (False!2519) (LeftBrace!1259) (ImaginaryLiteralValue!1259 (text!9259 List!6157)) (StringLiteralValue!3777 (value!40050 List!6157)) (EOFValue!1259 (value!40051 List!6157)) (IdentValue!1259 (value!40052 List!6157)) (DelimiterValue!2519 (value!40053 List!6157)) (DedentValue!1259 (value!40054 List!6157)) (NewLineValue!1259 (value!40055 List!6157)) (IntegerValue!3777 (value!40056 (_ BitVec 32)) (text!9260 List!6157)) (IntegerValue!3778 (value!40057 Int) (text!9261 List!6157)) (Times!1259) (Or!1259) (Equal!1259) (Minus!1259) (Broken!6299 (value!40058 List!6157)) (And!1259) (Div!1259) (LessEqual!1259) (Mod!1259) (Concat!2829) (Not!1259) (Plus!1259) (SpaceValue!1259 (value!40059 List!6157)) (IntegerValue!3779 (value!40060 Int) (text!9262 List!6157)) (StringLiteralValue!3778 (text!9263 List!6157)) (FloatLiteralValue!2519 (text!9264 List!6157)) (BytesLiteralValue!1259 (value!40061 List!6157)) (CommentValue!2519 (value!40062 List!6157)) (StringLiteralValue!3779 (value!40063 List!6157)) (ErrorTokenValue!1259 (msg!1320 List!6157)) )
))
(declare-datatypes ((List!6158 0))(
  ( (Nil!6148) (Cons!6148 (h!11549 C!4060) (t!81349 List!6158)) )
))
(declare-datatypes ((IArray!3905 0))(
  ( (IArray!3906 (innerList!2010 List!6158)) )
))
(declare-datatypes ((Conc!1952 0))(
  ( (Node!1952 (left!4918 Conc!1952) (right!5248 Conc!1952) (csize!4134 Int) (cheight!2163 Int)) (Leaf!3077 (xs!4589 IArray!3905) (csize!4135 Int)) (Empty!1952) )
))
(declare-datatypes ((BalanceConc!3912 0))(
  ( (BalanceConc!3913 (c!113556 Conc!1952)) )
))
(declare-datatypes ((TokenValueInjection!2286 0))(
  ( (TokenValueInjection!2287 (toValue!2146 Int) (toChars!2005 Int)) )
))
(declare-datatypes ((Rule!2270 0))(
  ( (Rule!2271 (regex!1235 Regex!1569) (tag!1497 String!8038) (isSeparator!1235 Bool) (transformation!1235 TokenValueInjection!2286)) )
))
(declare-datatypes ((List!6159 0))(
  ( (Nil!6149) (Cons!6149 (h!11550 Rule!2270) (t!81350 List!6159)) )
))
(declare-fun rules!3103 () List!6159)

(declare-datatypes ((Token!2206 0))(
  ( (Token!2207 (value!40064 TokenValue!1259) (rule!2029 Rule!2270) (size!4833 Int) (originalCharacters!1274 List!6158)) )
))
(declare-datatypes ((tuple2!7010 0))(
  ( (tuple2!7011 (_1!3769 Token!2206) (_2!3769 List!6158)) )
))
(declare-datatypes ((Option!1586 0))(
  ( (None!1585) (Some!1585 (v!16498 tuple2!7010)) )
))
(declare-fun lt!263822 () Option!1586)

(declare-fun getIndex!66 (List!6159 Rule!2270) Int)

(assert (=> b!614632 (= lt!263782 (getIndex!66 rules!3103 (rule!2029 (_1!3769 (v!16498 lt!263822)))))))

(declare-fun lt!263807 () Int)

(declare-fun token!491 () Token!2206)

(assert (=> b!614632 (= lt!263807 (getIndex!66 rules!3103 (rule!2029 token!491)))))

(declare-fun c!113554 () Bool)

(assert (=> b!614632 (= c!113554 (< lt!263782 lt!263807))))

(declare-fun lt!263815 () Unit!11300)

(declare-fun e!372612 () Unit!11300)

(assert (=> b!614632 (= lt!263815 e!372612)))

(declare-fun c!113551 () Bool)

(assert (=> b!614632 (= c!113551 (> lt!263782 lt!263807))))

(declare-fun e!372605 () Bool)

(declare-fun tp!189847 () Bool)

(declare-fun b!614633 () Bool)

(declare-fun e!372584 () Bool)

(declare-fun inv!7824 (String!8038) Bool)

(declare-fun inv!7827 (TokenValueInjection!2286) Bool)

(assert (=> b!614633 (= e!372605 (and tp!189847 (inv!7824 (tag!1497 (rule!2029 token!491))) (inv!7827 (transformation!1235 (rule!2029 token!491))) e!372584))))

(declare-fun b!614635 () Bool)

(declare-fun Unit!11303 () Unit!11300)

(assert (=> b!614635 (= e!372612 Unit!11303)))

(declare-fun b!614636 () Bool)

(declare-fun e!372587 () Bool)

(assert (=> b!614636 (= e!372587 false)))

(declare-fun b!614637 () Bool)

(declare-fun e!372585 () Bool)

(declare-fun e!372597 () Bool)

(assert (=> b!614637 (= e!372585 e!372597)))

(declare-fun res!267422 () Bool)

(assert (=> b!614637 (=> (not res!267422) (not e!372597))))

(declare-fun lt!263823 () List!6158)

(declare-fun lt!263816 () List!6158)

(assert (=> b!614637 (= res!267422 (= lt!263823 lt!263816))))

(declare-fun lt!263811 () List!6158)

(declare-fun suffix!1342 () List!6158)

(declare-fun ++!1723 (List!6158 List!6158) List!6158)

(assert (=> b!614637 (= lt!263823 (++!1723 lt!263811 suffix!1342))))

(declare-fun e!372586 () Bool)

(declare-fun lt!263802 () List!6158)

(declare-fun lt!263809 () Int)

(declare-fun lt!263784 () List!6158)

(declare-fun lt!263790 () tuple2!7010)

(declare-fun b!614638 () Bool)

(declare-fun lt!263794 () TokenValue!1259)

(assert (=> b!614638 (= e!372586 (and (= (size!4833 (_1!3769 (v!16498 lt!263822))) lt!263809) (= (originalCharacters!1274 (_1!3769 (v!16498 lt!263822))) lt!263784) (= lt!263790 (tuple2!7011 (Token!2207 lt!263794 (rule!2029 (_1!3769 (v!16498 lt!263822))) lt!263809 lt!263784) lt!263802))))))

(declare-fun b!614639 () Bool)

(declare-fun res!267431 () Bool)

(declare-fun e!372590 () Bool)

(assert (=> b!614639 (=> res!267431 e!372590)))

(declare-fun contains!1453 (List!6159 Rule!2270) Bool)

(assert (=> b!614639 (= res!267431 (not (contains!1453 rules!3103 (rule!2029 token!491))))))

(declare-fun b!614640 () Bool)

(assert (=> b!614640 e!372587))

(declare-fun res!267411 () Bool)

(assert (=> b!614640 (=> (not res!267411) (not e!372587))))

(declare-fun input!2705 () List!6158)

(declare-fun matchR!672 (Regex!1569 List!6158) Bool)

(assert (=> b!614640 (= res!267411 (not (matchR!672 (regex!1235 (rule!2029 token!491)) input!2705)))))

(declare-fun lt!263808 () Unit!11300)

(declare-datatypes ((LexerInterface!1121 0))(
  ( (LexerInterfaceExt!1118 (__x!4417 Int)) (Lexer!1119) )
))
(declare-fun thiss!22590 () LexerInterface!1121)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!38 (LexerInterface!1121 List!6159 Rule!2270 List!6158 List!6158 Rule!2270) Unit!11300)

(assert (=> b!614640 (= lt!263808 (lemmaMaxPrefNoSmallerRuleMatches!38 thiss!22590 rules!3103 (rule!2029 (_1!3769 (v!16498 lt!263822))) input!2705 input!2705 (rule!2029 token!491)))))

(declare-fun Unit!11304 () Unit!11300)

(assert (=> b!614640 (= e!372596 Unit!11304)))

(declare-fun b!614641 () Bool)

(assert (=> b!614641 (= e!372590 true)))

(declare-fun lt!263788 () Unit!11300)

(assert (=> b!614641 (= lt!263788 e!372602)))

(declare-fun c!113553 () Bool)

(assert (=> b!614641 (= c!113553 (not (= (rule!2029 (_1!3769 (v!16498 lt!263822))) (rule!2029 token!491))))))

(declare-fun b!614642 () Bool)

(declare-fun Unit!11305 () Unit!11300)

(assert (=> b!614642 (= e!372596 Unit!11305)))

(declare-fun e!372591 () Bool)

(assert (=> b!614643 (= e!372591 (and tp!189845 tp!189840))))

(declare-fun b!614644 () Bool)

(declare-fun res!267410 () Bool)

(declare-fun e!372603 () Bool)

(assert (=> b!614644 (=> (not res!267410) (not e!372603))))

(declare-fun get!2367 (Option!1586) tuple2!7010)

(assert (=> b!614644 (= res!267410 (= (_1!3769 (get!2367 lt!263822)) (_1!3769 (v!16498 lt!263822))))))

(declare-fun b!614645 () Bool)

(declare-fun e!372589 () Bool)

(declare-fun e!372598 () Bool)

(assert (=> b!614645 (= e!372589 e!372598)))

(declare-fun res!267423 () Bool)

(assert (=> b!614645 (=> (not res!267423) (not e!372598))))

(assert (=> b!614645 (= res!267423 (= lt!263811 input!2705))))

(declare-fun list!2588 (BalanceConc!3912) List!6158)

(declare-fun charsOf!864 (Token!2206) BalanceConc!3912)

(assert (=> b!614645 (= lt!263811 (list!2588 (charsOf!864 token!491)))))

(declare-fun b!614646 () Bool)

(declare-fun e!372607 () Bool)

(declare-fun e!372608 () Bool)

(declare-fun tp!189841 () Bool)

(assert (=> b!614646 (= e!372607 (and e!372608 tp!189841))))

(declare-fun b!614647 () Bool)

(assert (=> b!614647 (= e!372603 (= lt!263802 (_2!3769 (v!16498 lt!263822))))))

(declare-fun b!614648 () Bool)

(declare-fun e!372594 () Bool)

(assert (=> b!614648 (= e!372594 e!372590)))

(declare-fun res!267417 () Bool)

(assert (=> b!614648 (=> res!267417 e!372590)))

(declare-fun lt!263800 () List!6158)

(declare-fun lt!263789 () Int)

(assert (=> b!614648 (= res!267417 (or (not (= lt!263809 lt!263789)) (not (= lt!263800 input!2705)) (not (= lt!263800 lt!263811))))))

(declare-fun lt!263799 () Unit!11300)

(declare-fun lt!263792 () BalanceConc!3912)

(declare-fun lemmaSemiInverse!265 (TokenValueInjection!2286 BalanceConc!3912) Unit!11300)

(assert (=> b!614648 (= lt!263799 (lemmaSemiInverse!265 (transformation!1235 (rule!2029 token!491)) lt!263792))))

(declare-fun lt!263806 () Unit!11300)

(declare-fun lt!263824 () BalanceConc!3912)

(assert (=> b!614648 (= lt!263806 (lemmaSemiInverse!265 (transformation!1235 (rule!2029 (_1!3769 (v!16498 lt!263822)))) lt!263824))))

(declare-fun lt!263798 () Unit!11300)

(declare-fun e!372609 () Unit!11300)

(assert (=> b!614648 (= lt!263798 e!372609)))

(declare-fun c!113552 () Bool)

(assert (=> b!614648 (= c!113552 (< lt!263809 lt!263789))))

(declare-fun e!372582 () Bool)

(assert (=> b!614648 e!372582))

(declare-fun res!267415 () Bool)

(assert (=> b!614648 (=> (not res!267415) (not e!372582))))

(declare-fun lt!263821 () TokenValue!1259)

(declare-fun maxPrefixOneRule!482 (LexerInterface!1121 Rule!2270 List!6158) Option!1586)

(assert (=> b!614648 (= res!267415 (= (maxPrefixOneRule!482 thiss!22590 (rule!2029 token!491) lt!263816) (Some!1585 (tuple2!7011 (Token!2207 lt!263821 (rule!2029 token!491) lt!263789 lt!263811) suffix!1342))))))

(declare-fun lt!263812 () Unit!11300)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!188 (LexerInterface!1121 List!6159 List!6158 List!6158 List!6158 Rule!2270) Unit!11300)

(assert (=> b!614648 (= lt!263812 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!188 thiss!22590 rules!3103 lt!263811 lt!263816 suffix!1342 (rule!2029 token!491)))))

(assert (=> b!614648 (= (maxPrefixOneRule!482 thiss!22590 (rule!2029 (_1!3769 (v!16498 lt!263822))) input!2705) (Some!1585 (tuple2!7011 (Token!2207 lt!263794 (rule!2029 (_1!3769 (v!16498 lt!263822))) lt!263809 lt!263784) (_2!3769 (v!16498 lt!263822)))))))

(declare-fun lt!263786 () Unit!11300)

(assert (=> b!614648 (= lt!263786 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!188 thiss!22590 rules!3103 lt!263784 input!2705 (_2!3769 (v!16498 lt!263822)) (rule!2029 (_1!3769 (v!16498 lt!263822)))))))

(declare-fun e!372599 () Bool)

(assert (=> b!614648 e!372599))

(declare-fun res!267433 () Bool)

(assert (=> b!614648 (=> (not res!267433) (not e!372599))))

(assert (=> b!614648 (= res!267433 (= (value!40064 token!491) lt!263821))))

(declare-fun apply!1488 (TokenValueInjection!2286 BalanceConc!3912) TokenValue!1259)

(assert (=> b!614648 (= lt!263821 (apply!1488 (transformation!1235 (rule!2029 token!491)) lt!263792))))

(declare-fun seqFromList!1411 (List!6158) BalanceConc!3912)

(assert (=> b!614648 (= lt!263792 (seqFromList!1411 lt!263811))))

(declare-fun lt!263787 () List!6158)

(assert (=> b!614648 (= suffix!1342 lt!263787)))

(declare-fun lt!263804 () Unit!11300)

(declare-fun lemmaSamePrefixThenSameSuffix!576 (List!6158 List!6158 List!6158 List!6158 List!6158) Unit!11300)

(assert (=> b!614648 (= lt!263804 (lemmaSamePrefixThenSameSuffix!576 lt!263811 suffix!1342 lt!263811 lt!263787 lt!263816))))

(declare-fun getSuffix!380 (List!6158 List!6158) List!6158)

(assert (=> b!614648 (= lt!263787 (getSuffix!380 lt!263816 lt!263811))))

(declare-fun b!614649 () Bool)

(declare-fun e!372588 () Bool)

(declare-fun tp_is_empty!3493 () Bool)

(declare-fun tp!189843 () Bool)

(assert (=> b!614649 (= e!372588 (and tp_is_empty!3493 tp!189843))))

(declare-fun b!614650 () Bool)

(declare-fun e!372601 () Bool)

(declare-fun tp!189839 () Bool)

(assert (=> b!614650 (= e!372601 (and tp_is_empty!3493 tp!189839))))

(declare-fun b!614651 () Bool)

(declare-fun e!372593 () Bool)

(assert (=> b!614651 (= e!372598 e!372593)))

(declare-fun res!267420 () Bool)

(assert (=> b!614651 (=> (not res!267420) (not e!372593))))

(declare-fun lt!263819 () Option!1586)

(declare-fun isDefined!1397 (Option!1586) Bool)

(assert (=> b!614651 (= res!267420 (isDefined!1397 lt!263819))))

(declare-fun maxPrefix!819 (LexerInterface!1121 List!6159 List!6158) Option!1586)

(assert (=> b!614651 (= lt!263819 (maxPrefix!819 thiss!22590 rules!3103 lt!263816))))

(assert (=> b!614651 (= lt!263816 (++!1723 input!2705 suffix!1342))))

(declare-fun b!614652 () Bool)

(declare-fun res!267424 () Bool)

(assert (=> b!614652 (=> (not res!267424) (not e!372586))))

(declare-fun size!4834 (List!6158) Int)

(assert (=> b!614652 (= res!267424 (= (size!4833 (_1!3769 (v!16498 lt!263822))) (size!4834 (originalCharacters!1274 (_1!3769 (v!16498 lt!263822))))))))

(declare-fun b!614653 () Bool)

(declare-fun res!267432 () Bool)

(assert (=> b!614653 (=> (not res!267432) (not e!372599))))

(assert (=> b!614653 (= res!267432 (= (size!4833 token!491) (size!4834 (originalCharacters!1274 token!491))))))

(declare-fun b!614654 () Bool)

(declare-fun e!372610 () Bool)

(assert (=> b!614654 (= e!372582 e!372610)))

(declare-fun res!267409 () Bool)

(assert (=> b!614654 (=> res!267409 e!372610)))

(assert (=> b!614654 (= res!267409 (>= lt!263809 lt!263789))))

(declare-fun b!614655 () Bool)

(declare-fun Unit!11306 () Unit!11300)

(assert (=> b!614655 (= e!372609 Unit!11306)))

(declare-fun b!614656 () Bool)

(declare-fun e!372611 () Bool)

(assert (=> b!614656 (= e!372611 false)))

(declare-fun tp!189846 () Bool)

(declare-fun b!614657 () Bool)

(assert (=> b!614657 (= e!372608 (and tp!189846 (inv!7824 (tag!1497 (h!11550 rules!3103))) (inv!7827 (transformation!1235 (h!11550 rules!3103))) e!372591))))

(declare-fun b!614658 () Bool)

(declare-fun Unit!11307 () Unit!11300)

(assert (=> b!614658 (= e!372609 Unit!11307)))

(declare-fun lt!263791 () Unit!11300)

(assert (=> b!614658 (= lt!263791 (lemmaSemiInverse!265 (transformation!1235 (rule!2029 (_1!3769 (v!16498 lt!263822)))) lt!263824))))

(declare-fun lt!263795 () Unit!11300)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!88 (LexerInterface!1121 List!6159 Rule!2270 List!6158 List!6158 List!6158 Rule!2270) Unit!11300)

(assert (=> b!614658 (= lt!263795 (lemmaMaxPrefixOutputsMaxPrefix!88 thiss!22590 rules!3103 (rule!2029 (_1!3769 (v!16498 lt!263822))) lt!263784 input!2705 input!2705 (rule!2029 token!491)))))

(declare-fun res!267426 () Bool)

(assert (=> b!614658 (= res!267426 (not (matchR!672 (regex!1235 (rule!2029 token!491)) input!2705)))))

(assert (=> b!614658 (=> (not res!267426) (not e!372611))))

(assert (=> b!614658 e!372611))

(assert (=> b!614634 (= e!372584 (and tp!189844 tp!189848))))

(declare-fun res!267419 () Bool)

(assert (=> start!58836 (=> (not res!267419) (not e!372589))))

(get-info :version)

(assert (=> start!58836 (= res!267419 ((_ is Lexer!1119) thiss!22590))))

(assert (=> start!58836 e!372589))

(assert (=> start!58836 e!372588))

(assert (=> start!58836 e!372607))

(declare-fun e!372600 () Bool)

(declare-fun inv!7828 (Token!2206) Bool)

(assert (=> start!58836 (and (inv!7828 token!491) e!372600)))

(assert (=> start!58836 true))

(assert (=> start!58836 e!372601))

(declare-fun b!614659 () Bool)

(declare-fun res!267414 () Bool)

(assert (=> b!614659 (=> (not res!267414) (not e!372589))))

(declare-fun isEmpty!4437 (List!6158) Bool)

(assert (=> b!614659 (= res!267414 (not (isEmpty!4437 input!2705)))))

(declare-fun b!614660 () Bool)

(declare-fun res!267434 () Bool)

(assert (=> b!614660 (=> res!267434 e!372590)))

(assert (=> b!614660 (= res!267434 (or (not (= lt!263784 lt!263811)) (not (= (originalCharacters!1274 (_1!3769 (v!16498 lt!263822))) (originalCharacters!1274 token!491)))))))

(declare-fun b!614661 () Bool)

(declare-fun e!372592 () Bool)

(assert (=> b!614661 (= e!372592 false)))

(declare-fun b!614662 () Bool)

(declare-fun res!267430 () Bool)

(assert (=> b!614662 (=> res!267430 e!372590)))

(assert (=> b!614662 (= res!267430 (not (isEmpty!4437 (_2!3769 (v!16498 lt!263822)))))))

(declare-fun b!614663 () Bool)

(declare-fun e!372613 () Bool)

(assert (=> b!614663 (= e!372613 e!372585)))

(declare-fun res!267425 () Bool)

(assert (=> b!614663 (=> (not res!267425) (not e!372585))))

(assert (=> b!614663 (= res!267425 ((_ is Some!1585) lt!263822))))

(assert (=> b!614663 (= lt!263822 (maxPrefix!819 thiss!22590 rules!3103 input!2705))))

(declare-fun b!614664 () Bool)

(assert (=> b!614664 e!372592))

(declare-fun res!267416 () Bool)

(assert (=> b!614664 (=> (not res!267416) (not e!372592))))

(assert (=> b!614664 (= res!267416 (not (matchR!672 (regex!1235 (rule!2029 (_1!3769 (v!16498 lt!263822)))) input!2705)))))

(declare-fun lt!263813 () Unit!11300)

(assert (=> b!614664 (= lt!263813 (lemmaMaxPrefNoSmallerRuleMatches!38 thiss!22590 rules!3103 (rule!2029 token!491) input!2705 lt!263816 (rule!2029 (_1!3769 (v!16498 lt!263822)))))))

(declare-fun Unit!11308 () Unit!11300)

(assert (=> b!614664 (= e!372612 Unit!11308)))

(declare-fun b!614665 () Bool)

(declare-fun e!372604 () Unit!11300)

(declare-fun Unit!11309 () Unit!11300)

(assert (=> b!614665 (= e!372604 Unit!11309)))

(assert (=> b!614665 false))

(declare-fun b!614666 () Bool)

(declare-fun Unit!11310 () Unit!11300)

(assert (=> b!614666 (= e!372602 Unit!11310)))

(declare-fun b!614667 () Bool)

(declare-fun res!267412 () Bool)

(assert (=> b!614667 (=> res!267412 e!372590)))

(assert (=> b!614667 (= res!267412 (not (contains!1453 rules!3103 (rule!2029 (_1!3769 (v!16498 lt!263822))))))))

(declare-fun b!614668 () Bool)

(assert (=> b!614668 (= e!372597 (not e!372594))))

(declare-fun res!267421 () Bool)

(assert (=> b!614668 (=> res!267421 e!372594)))

(declare-fun isPrefix!863 (List!6158 List!6158) Bool)

(assert (=> b!614668 (= res!267421 (not (isPrefix!863 input!2705 lt!263823)))))

(assert (=> b!614668 (isPrefix!863 lt!263811 lt!263823)))

(declare-fun lt!263785 () Unit!11300)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!708 (List!6158 List!6158) Unit!11300)

(assert (=> b!614668 (= lt!263785 (lemmaConcatTwoListThenFirstIsPrefix!708 lt!263811 suffix!1342))))

(assert (=> b!614668 (isPrefix!863 input!2705 lt!263816)))

(declare-fun lt!263801 () Unit!11300)

(assert (=> b!614668 (= lt!263801 (lemmaConcatTwoListThenFirstIsPrefix!708 input!2705 suffix!1342))))

(assert (=> b!614668 e!372586))

(declare-fun res!267429 () Bool)

(assert (=> b!614668 (=> (not res!267429) (not e!372586))))

(assert (=> b!614668 (= res!267429 (= (value!40064 (_1!3769 (v!16498 lt!263822))) lt!263794))))

(assert (=> b!614668 (= lt!263794 (apply!1488 (transformation!1235 (rule!2029 (_1!3769 (v!16498 lt!263822)))) lt!263824))))

(assert (=> b!614668 (= lt!263824 (seqFromList!1411 lt!263784))))

(declare-fun lt!263817 () Unit!11300)

(declare-fun lemmaInv!343 (TokenValueInjection!2286) Unit!11300)

(assert (=> b!614668 (= lt!263817 (lemmaInv!343 (transformation!1235 (rule!2029 token!491))))))

(declare-fun lt!263818 () Unit!11300)

(assert (=> b!614668 (= lt!263818 (lemmaInv!343 (transformation!1235 (rule!2029 (_1!3769 (v!16498 lt!263822))))))))

(declare-fun ruleValid!433 (LexerInterface!1121 Rule!2270) Bool)

(assert (=> b!614668 (ruleValid!433 thiss!22590 (rule!2029 token!491))))

(declare-fun lt!263783 () Unit!11300)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!280 (LexerInterface!1121 Rule!2270 List!6159) Unit!11300)

(assert (=> b!614668 (= lt!263783 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!280 thiss!22590 (rule!2029 token!491) rules!3103))))

(assert (=> b!614668 (ruleValid!433 thiss!22590 (rule!2029 (_1!3769 (v!16498 lt!263822))))))

(declare-fun lt!263814 () Unit!11300)

(assert (=> b!614668 (= lt!263814 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!280 thiss!22590 (rule!2029 (_1!3769 (v!16498 lt!263822))) rules!3103))))

(assert (=> b!614668 (isPrefix!863 input!2705 input!2705)))

(declare-fun lt!263797 () Unit!11300)

(declare-fun lemmaIsPrefixRefl!599 (List!6158 List!6158) Unit!11300)

(assert (=> b!614668 (= lt!263797 (lemmaIsPrefixRefl!599 input!2705 input!2705))))

(assert (=> b!614668 (= (_2!3769 (v!16498 lt!263822)) lt!263802)))

(declare-fun lt!263810 () Unit!11300)

(assert (=> b!614668 (= lt!263810 (lemmaSamePrefixThenSameSuffix!576 lt!263784 (_2!3769 (v!16498 lt!263822)) lt!263784 lt!263802 input!2705))))

(assert (=> b!614668 (= lt!263802 (getSuffix!380 input!2705 lt!263784))))

(assert (=> b!614668 (isPrefix!863 lt!263784 lt!263800)))

(assert (=> b!614668 (= lt!263800 (++!1723 lt!263784 (_2!3769 (v!16498 lt!263822))))))

(declare-fun lt!263820 () Unit!11300)

(assert (=> b!614668 (= lt!263820 (lemmaConcatTwoListThenFirstIsPrefix!708 lt!263784 (_2!3769 (v!16498 lt!263822))))))

(declare-fun lt!263781 () Unit!11300)

(declare-fun lemmaCharactersSize!294 (Token!2206) Unit!11300)

(assert (=> b!614668 (= lt!263781 (lemmaCharactersSize!294 token!491))))

(declare-fun lt!263796 () Unit!11300)

(assert (=> b!614668 (= lt!263796 (lemmaCharactersSize!294 (_1!3769 (v!16498 lt!263822))))))

(declare-fun lt!263793 () Unit!11300)

(assert (=> b!614668 (= lt!263793 e!372604)))

(declare-fun c!113550 () Bool)

(assert (=> b!614668 (= c!113550 (> lt!263809 lt!263789))))

(assert (=> b!614668 (= lt!263789 (size!4834 lt!263811))))

(assert (=> b!614668 (= lt!263809 (size!4834 lt!263784))))

(assert (=> b!614668 (= lt!263784 (list!2588 (charsOf!864 (_1!3769 (v!16498 lt!263822)))))))

(assert (=> b!614668 (= lt!263822 (Some!1585 lt!263790))))

(assert (=> b!614668 (= lt!263790 (tuple2!7011 (_1!3769 (v!16498 lt!263822)) (_2!3769 (v!16498 lt!263822))))))

(declare-fun lt!263803 () Unit!11300)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!308 (List!6158 List!6158 List!6158 List!6158) Unit!11300)

(assert (=> b!614668 (= lt!263803 (lemmaConcatSameAndSameSizesThenSameLists!308 lt!263811 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!614669 () Bool)

(declare-fun Unit!11311 () Unit!11300)

(assert (=> b!614669 (= e!372604 Unit!11311)))

(declare-fun b!614670 () Bool)

(assert (=> b!614670 (= e!372593 e!372613)))

(declare-fun res!267418 () Bool)

(assert (=> b!614670 (=> (not res!267418) (not e!372613))))

(declare-fun lt!263805 () tuple2!7010)

(assert (=> b!614670 (= res!267418 (and (= (_1!3769 lt!263805) token!491) (= (_2!3769 lt!263805) suffix!1342)))))

(assert (=> b!614670 (= lt!263805 (get!2367 lt!263819))))

(declare-fun b!614671 () Bool)

(assert (=> b!614671 (= e!372599 (and (= (size!4833 token!491) lt!263789) (= (originalCharacters!1274 token!491) lt!263811) (= (tuple2!7011 token!491 suffix!1342) (tuple2!7011 (Token!2207 lt!263821 (rule!2029 token!491) lt!263789 lt!263811) lt!263787))))))

(declare-fun b!614672 () Bool)

(declare-fun tp!189842 () Bool)

(declare-fun inv!21 (TokenValue!1259) Bool)

(assert (=> b!614672 (= e!372600 (and (inv!21 (value!40064 token!491)) e!372605 tp!189842))))

(declare-fun b!614673 () Bool)

(declare-fun res!267413 () Bool)

(assert (=> b!614673 (=> (not res!267413) (not e!372589))))

(declare-fun isEmpty!4438 (List!6159) Bool)

(assert (=> b!614673 (= res!267413 (not (isEmpty!4438 rules!3103)))))

(declare-fun b!614674 () Bool)

(declare-fun res!267427 () Bool)

(assert (=> b!614674 (=> (not res!267427) (not e!372589))))

(declare-fun rulesInvariant!1084 (LexerInterface!1121 List!6159) Bool)

(assert (=> b!614674 (= res!267427 (rulesInvariant!1084 thiss!22590 rules!3103))))

(declare-fun b!614675 () Bool)

(assert (=> b!614675 (= e!372610 e!372603)))

(declare-fun res!267428 () Bool)

(assert (=> b!614675 (=> (not res!267428) (not e!372603))))

(assert (=> b!614675 (= res!267428 (isDefined!1397 lt!263822))))

(assert (= (and start!58836 res!267419) b!614673))

(assert (= (and b!614673 res!267413) b!614674))

(assert (= (and b!614674 res!267427) b!614659))

(assert (= (and b!614659 res!267414) b!614645))

(assert (= (and b!614645 res!267423) b!614651))

(assert (= (and b!614651 res!267420) b!614670))

(assert (= (and b!614670 res!267418) b!614663))

(assert (= (and b!614663 res!267425) b!614637))

(assert (= (and b!614637 res!267422) b!614668))

(assert (= (and b!614668 c!113550) b!614665))

(assert (= (and b!614668 (not c!113550)) b!614669))

(assert (= (and b!614668 res!267429) b!614652))

(assert (= (and b!614652 res!267424) b!614638))

(assert (= (and b!614668 (not res!267421)) b!614648))

(assert (= (and b!614648 res!267433) b!614653))

(assert (= (and b!614653 res!267432) b!614671))

(assert (= (and b!614648 res!267415) b!614654))

(assert (= (and b!614654 (not res!267409)) b!614675))

(assert (= (and b!614675 res!267428) b!614644))

(assert (= (and b!614644 res!267410) b!614647))

(assert (= (and b!614648 c!113552) b!614658))

(assert (= (and b!614648 (not c!113552)) b!614655))

(assert (= (and b!614658 res!267426) b!614656))

(assert (= (and b!614648 (not res!267417)) b!614662))

(assert (= (and b!614662 (not res!267430)) b!614660))

(assert (= (and b!614660 (not res!267434)) b!614667))

(assert (= (and b!614667 (not res!267412)) b!614639))

(assert (= (and b!614639 (not res!267431)) b!614641))

(assert (= (and b!614641 c!113553) b!614632))

(assert (= (and b!614641 (not c!113553)) b!614666))

(assert (= (and b!614632 c!113554) b!614664))

(assert (= (and b!614632 (not c!113554)) b!614635))

(assert (= (and b!614664 res!267416) b!614661))

(assert (= (and b!614632 c!113551) b!614640))

(assert (= (and b!614632 (not c!113551)) b!614642))

(assert (= (and b!614640 res!267411) b!614636))

(assert (= (and start!58836 ((_ is Cons!6148) suffix!1342)) b!614649))

(assert (= b!614657 b!614643))

(assert (= b!614646 b!614657))

(assert (= (and start!58836 ((_ is Cons!6149) rules!3103)) b!614646))

(assert (= b!614633 b!614634))

(assert (= b!614672 b!614633))

(assert (= start!58836 b!614672))

(assert (= (and start!58836 ((_ is Cons!6148) input!2705)) b!614650))

(declare-fun m!883433 () Bool)

(assert (=> b!614644 m!883433))

(declare-fun m!883435 () Bool)

(assert (=> b!614664 m!883435))

(declare-fun m!883437 () Bool)

(assert (=> b!614664 m!883437))

(declare-fun m!883439 () Bool)

(assert (=> b!614662 m!883439))

(declare-fun m!883441 () Bool)

(assert (=> b!614673 m!883441))

(declare-fun m!883443 () Bool)

(assert (=> b!614637 m!883443))

(declare-fun m!883445 () Bool)

(assert (=> b!614675 m!883445))

(declare-fun m!883447 () Bool)

(assert (=> b!614668 m!883447))

(declare-fun m!883449 () Bool)

(assert (=> b!614668 m!883449))

(declare-fun m!883451 () Bool)

(assert (=> b!614668 m!883451))

(declare-fun m!883453 () Bool)

(assert (=> b!614668 m!883453))

(declare-fun m!883455 () Bool)

(assert (=> b!614668 m!883455))

(declare-fun m!883457 () Bool)

(assert (=> b!614668 m!883457))

(declare-fun m!883459 () Bool)

(assert (=> b!614668 m!883459))

(declare-fun m!883461 () Bool)

(assert (=> b!614668 m!883461))

(declare-fun m!883463 () Bool)

(assert (=> b!614668 m!883463))

(declare-fun m!883465 () Bool)

(assert (=> b!614668 m!883465))

(declare-fun m!883467 () Bool)

(assert (=> b!614668 m!883467))

(declare-fun m!883469 () Bool)

(assert (=> b!614668 m!883469))

(declare-fun m!883471 () Bool)

(assert (=> b!614668 m!883471))

(declare-fun m!883473 () Bool)

(assert (=> b!614668 m!883473))

(declare-fun m!883475 () Bool)

(assert (=> b!614668 m!883475))

(declare-fun m!883477 () Bool)

(assert (=> b!614668 m!883477))

(declare-fun m!883479 () Bool)

(assert (=> b!614668 m!883479))

(assert (=> b!614668 m!883475))

(declare-fun m!883481 () Bool)

(assert (=> b!614668 m!883481))

(declare-fun m!883483 () Bool)

(assert (=> b!614668 m!883483))

(declare-fun m!883485 () Bool)

(assert (=> b!614668 m!883485))

(declare-fun m!883487 () Bool)

(assert (=> b!614668 m!883487))

(declare-fun m!883489 () Bool)

(assert (=> b!614668 m!883489))

(declare-fun m!883491 () Bool)

(assert (=> b!614668 m!883491))

(declare-fun m!883493 () Bool)

(assert (=> b!614668 m!883493))

(declare-fun m!883495 () Bool)

(assert (=> b!614668 m!883495))

(declare-fun m!883497 () Bool)

(assert (=> b!614668 m!883497))

(declare-fun m!883499 () Bool)

(assert (=> b!614668 m!883499))

(declare-fun m!883501 () Bool)

(assert (=> b!614663 m!883501))

(declare-fun m!883503 () Bool)

(assert (=> b!614659 m!883503))

(declare-fun m!883505 () Bool)

(assert (=> b!614633 m!883505))

(declare-fun m!883507 () Bool)

(assert (=> b!614633 m!883507))

(declare-fun m!883509 () Bool)

(assert (=> b!614648 m!883509))

(declare-fun m!883511 () Bool)

(assert (=> b!614648 m!883511))

(declare-fun m!883513 () Bool)

(assert (=> b!614648 m!883513))

(declare-fun m!883515 () Bool)

(assert (=> b!614648 m!883515))

(declare-fun m!883517 () Bool)

(assert (=> b!614648 m!883517))

(declare-fun m!883519 () Bool)

(assert (=> b!614648 m!883519))

(declare-fun m!883521 () Bool)

(assert (=> b!614648 m!883521))

(declare-fun m!883523 () Bool)

(assert (=> b!614648 m!883523))

(declare-fun m!883525 () Bool)

(assert (=> b!614648 m!883525))

(declare-fun m!883527 () Bool)

(assert (=> b!614648 m!883527))

(declare-fun m!883529 () Bool)

(assert (=> b!614657 m!883529))

(declare-fun m!883531 () Bool)

(assert (=> b!614657 m!883531))

(assert (=> b!614658 m!883523))

(declare-fun m!883533 () Bool)

(assert (=> b!614658 m!883533))

(declare-fun m!883535 () Bool)

(assert (=> b!614658 m!883535))

(declare-fun m!883537 () Bool)

(assert (=> start!58836 m!883537))

(assert (=> b!614640 m!883535))

(declare-fun m!883539 () Bool)

(assert (=> b!614640 m!883539))

(declare-fun m!883541 () Bool)

(assert (=> b!614639 m!883541))

(declare-fun m!883543 () Bool)

(assert (=> b!614652 m!883543))

(declare-fun m!883545 () Bool)

(assert (=> b!614672 m!883545))

(declare-fun m!883547 () Bool)

(assert (=> b!614651 m!883547))

(declare-fun m!883549 () Bool)

(assert (=> b!614651 m!883549))

(declare-fun m!883551 () Bool)

(assert (=> b!614651 m!883551))

(declare-fun m!883553 () Bool)

(assert (=> b!614670 m!883553))

(declare-fun m!883555 () Bool)

(assert (=> b!614645 m!883555))

(assert (=> b!614645 m!883555))

(declare-fun m!883557 () Bool)

(assert (=> b!614645 m!883557))

(declare-fun m!883559 () Bool)

(assert (=> b!614674 m!883559))

(declare-fun m!883561 () Bool)

(assert (=> b!614667 m!883561))

(declare-fun m!883563 () Bool)

(assert (=> b!614653 m!883563))

(declare-fun m!883565 () Bool)

(assert (=> b!614632 m!883565))

(declare-fun m!883567 () Bool)

(assert (=> b!614632 m!883567))

(check-sat (not b!614648) (not b!614651) (not b_next!17541) (not b!614668) (not b!614675) (not b!614670) (not b!614649) b_and!60975 (not b!614659) (not b!614644) (not b!614645) b_and!60977 (not b!614650) b_and!60979 (not b_next!17543) (not b!614639) (not start!58836) (not b!614673) b_and!60981 (not b!614653) (not b!614674) (not b_next!17547) (not b!614640) tp_is_empty!3493 (not b!614632) (not b!614662) (not b!614664) (not b!614672) (not b!614667) (not b!614652) (not b_next!17545) (not b!614633) (not b!614637) (not b!614646) (not b!614658) (not b!614657) (not b!614663))
(check-sat b_and!60979 (not b_next!17543) b_and!60981 (not b_next!17547) (not b_next!17541) (not b_next!17545) b_and!60975 b_and!60977)
