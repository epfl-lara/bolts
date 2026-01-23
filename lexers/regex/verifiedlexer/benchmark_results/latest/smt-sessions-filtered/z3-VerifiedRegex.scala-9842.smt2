; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!515232 () Bool)

(assert start!515232)

(declare-fun b!4910392 () Bool)

(declare-fun b_free!131979 () Bool)

(declare-fun b_next!132769 () Bool)

(assert (=> b!4910392 (= b_free!131979 (not b_next!132769))))

(declare-fun tp!1380812 () Bool)

(declare-fun b_and!346715 () Bool)

(assert (=> b!4910392 (= tp!1380812 b_and!346715)))

(declare-fun b_free!131981 () Bool)

(declare-fun b_next!132771 () Bool)

(assert (=> b!4910392 (= b_free!131981 (not b_next!132771))))

(declare-fun tp!1380814 () Bool)

(declare-fun b_and!346717 () Bool)

(assert (=> b!4910392 (= tp!1380814 b_and!346717)))

(declare-fun b!4910387 () Bool)

(declare-fun e!3069302 () Bool)

(declare-fun e!3069295 () Bool)

(assert (=> b!4910387 (= e!3069302 e!3069295)))

(declare-fun res!2097558 () Bool)

(assert (=> b!4910387 (=> res!2097558 e!3069295)))

(declare-datatypes ((C!26852 0))(
  ( (C!26853 (val!22760 Int)) )
))
(declare-datatypes ((Regex!13327 0))(
  ( (ElementMatch!13327 (c!834661 C!26852)) (Concat!21889 (regOne!27166 Regex!13327) (regTwo!27166 Regex!13327)) (EmptyExpr!13327) (Star!13327 (reg!13656 Regex!13327)) (EmptyLang!13327) (Union!13327 (regOne!27167 Regex!13327) (regTwo!27167 Regex!13327)) )
))
(declare-datatypes ((String!64251 0))(
  ( (String!64252 (value!264288 String)) )
))
(declare-datatypes ((List!56702 0))(
  ( (Nil!56578) (Cons!56578 (h!63026 (_ BitVec 16)) (t!367026 List!56702)) )
))
(declare-datatypes ((TokenValue!8562 0))(
  ( (FloatLiteralValue!17124 (text!60379 List!56702)) (TokenValueExt!8561 (__x!34417 Int)) (Broken!42810 (value!264289 List!56702)) (Object!8685) (End!8562) (Def!8562) (Underscore!8562) (Match!8562) (Else!8562) (Error!8562) (Case!8562) (If!8562) (Extends!8562) (Abstract!8562) (Class!8562) (Val!8562) (DelimiterValue!17124 (del!8622 List!56702)) (KeywordValue!8568 (value!264290 List!56702)) (CommentValue!17124 (value!264291 List!56702)) (WhitespaceValue!17124 (value!264292 List!56702)) (IndentationValue!8562 (value!264293 List!56702)) (String!64253) (Int32!8562) (Broken!42811 (value!264294 List!56702)) (Boolean!8563) (Unit!146835) (OperatorValue!8565 (op!8622 List!56702)) (IdentifierValue!17124 (value!264295 List!56702)) (IdentifierValue!17125 (value!264296 List!56702)) (WhitespaceValue!17125 (value!264297 List!56702)) (True!17124) (False!17124) (Broken!42812 (value!264298 List!56702)) (Broken!42813 (value!264299 List!56702)) (True!17125) (RightBrace!8562) (RightBracket!8562) (Colon!8562) (Null!8562) (Comma!8562) (LeftBracket!8562) (False!17125) (LeftBrace!8562) (ImaginaryLiteralValue!8562 (text!60380 List!56702)) (StringLiteralValue!25686 (value!264300 List!56702)) (EOFValue!8562 (value!264301 List!56702)) (IdentValue!8562 (value!264302 List!56702)) (DelimiterValue!17125 (value!264303 List!56702)) (DedentValue!8562 (value!264304 List!56702)) (NewLineValue!8562 (value!264305 List!56702)) (IntegerValue!25686 (value!264306 (_ BitVec 32)) (text!60381 List!56702)) (IntegerValue!25687 (value!264307 Int) (text!60382 List!56702)) (Times!8562) (Or!8562) (Equal!8562) (Minus!8562) (Broken!42814 (value!264308 List!56702)) (And!8562) (Div!8562) (LessEqual!8562) (Mod!8562) (Concat!21890) (Not!8562) (Plus!8562) (SpaceValue!8562 (value!264309 List!56702)) (IntegerValue!25688 (value!264310 Int) (text!60383 List!56702)) (StringLiteralValue!25687 (text!60384 List!56702)) (FloatLiteralValue!17125 (text!60385 List!56702)) (BytesLiteralValue!8562 (value!264311 List!56702)) (CommentValue!17125 (value!264312 List!56702)) (StringLiteralValue!25688 (value!264313 List!56702)) (ErrorTokenValue!8562 (msg!8623 List!56702)) )
))
(declare-datatypes ((List!56703 0))(
  ( (Nil!56579) (Cons!56579 (h!63027 C!26852) (t!367027 List!56703)) )
))
(declare-datatypes ((IArray!29701 0))(
  ( (IArray!29702 (innerList!14908 List!56703)) )
))
(declare-datatypes ((Conc!14820 0))(
  ( (Node!14820 (left!41224 Conc!14820) (right!41554 Conc!14820) (csize!29870 Int) (cheight!15031 Int)) (Leaf!24663 (xs!18136 IArray!29701) (csize!29871 Int)) (Empty!14820) )
))
(declare-datatypes ((BalanceConc!29070 0))(
  ( (BalanceConc!29071 (c!834662 Conc!14820)) )
))
(declare-datatypes ((TokenValueInjection!16432 0))(
  ( (TokenValueInjection!16433 (toValue!11193 Int) (toChars!11052 Int)) )
))
(declare-datatypes ((Rule!16304 0))(
  ( (Rule!16305 (regex!8252 Regex!13327) (tag!9116 String!64251) (isSeparator!8252 Bool) (transformation!8252 TokenValueInjection!16432)) )
))
(declare-datatypes ((Token!15032 0))(
  ( (Token!15033 (value!264314 TokenValue!8562) (rule!11468 Rule!16304) (size!37345 Int) (originalCharacters!8547 List!56703)) )
))
(declare-datatypes ((tuple2!60946 0))(
  ( (tuple2!60947 (_1!33776 Token!15032) (_2!33776 BalanceConc!29070)) )
))
(declare-fun lt!2015641 () tuple2!60946)

(declare-datatypes ((tuple2!60948 0))(
  ( (tuple2!60949 (_1!33777 Token!15032) (_2!33777 List!56703)) )
))
(declare-fun lt!2015638 () tuple2!60948)

(assert (=> b!4910387 (= res!2097558 (not (= (_1!33776 lt!2015641) (_1!33777 lt!2015638))))))

(declare-datatypes ((Option!14141 0))(
  ( (None!14140) (Some!14140 (v!50102 tuple2!60948)) )
))
(declare-fun lt!2015639 () Option!14141)

(declare-fun get!19589 (Option!14141) tuple2!60948)

(assert (=> b!4910387 (= lt!2015638 (get!19589 lt!2015639))))

(declare-datatypes ((Option!14142 0))(
  ( (None!14141) (Some!14141 (v!50103 tuple2!60946)) )
))
(declare-fun get!19590 (Option!14142) tuple2!60946)

(assert (=> b!4910387 (= lt!2015641 (get!19590 None!14141))))

(declare-fun b!4910388 () Bool)

(declare-fun e!3069301 () Bool)

(declare-fun e!3069300 () Bool)

(assert (=> b!4910388 (= e!3069301 e!3069300)))

(declare-fun res!2097556 () Bool)

(assert (=> b!4910388 (=> res!2097556 e!3069300)))

(declare-fun lt!2015640 () Bool)

(declare-fun isDefined!11149 (Option!14141) Bool)

(assert (=> b!4910388 (= res!2097556 (not (= lt!2015640 (isDefined!11149 lt!2015639))))))

(assert (=> b!4910388 (= lt!2015640 false)))

(declare-fun input!1509 () BalanceConc!29070)

(declare-fun rule!164 () Rule!16304)

(declare-datatypes ((LexerInterface!7844 0))(
  ( (LexerInterfaceExt!7841 (__x!34418 Int)) (Lexer!7842) )
))
(declare-fun thiss!15943 () LexerInterface!7844)

(declare-fun maxPrefixOneRule!3589 (LexerInterface!7844 Rule!16304 List!56703) Option!14141)

(declare-fun list!17852 (BalanceConc!29070) List!56703)

(assert (=> b!4910388 (= lt!2015639 (maxPrefixOneRule!3589 thiss!15943 rule!164 (list!17852 input!1509)))))

(declare-fun tp!1380815 () Bool)

(declare-fun e!3069298 () Bool)

(declare-fun b!4910389 () Bool)

(declare-fun e!3069297 () Bool)

(declare-fun inv!73130 (String!64251) Bool)

(declare-fun inv!73134 (TokenValueInjection!16432) Bool)

(assert (=> b!4910389 (= e!3069297 (and tp!1380815 (inv!73130 (tag!9116 rule!164)) (inv!73134 (transformation!8252 rule!164)) e!3069298))))

(declare-fun b!4910390 () Bool)

(declare-fun e!3069299 () Bool)

(declare-fun tp!1380813 () Bool)

(declare-fun inv!73135 (Conc!14820) Bool)

(assert (=> b!4910390 (= e!3069299 (and (inv!73135 (c!834662 input!1509)) tp!1380813))))

(declare-fun res!2097557 () Bool)

(assert (=> start!515232 (=> (not res!2097557) (not e!3069301))))

(get-info :version)

(assert (=> start!515232 (= res!2097557 ((_ is Lexer!7842) thiss!15943))))

(assert (=> start!515232 e!3069301))

(assert (=> start!515232 true))

(assert (=> start!515232 e!3069297))

(declare-fun inv!73136 (BalanceConc!29070) Bool)

(assert (=> start!515232 (and (inv!73136 input!1509) e!3069299)))

(declare-fun b!4910391 () Bool)

(assert (=> b!4910391 (= e!3069300 e!3069302)))

(declare-fun res!2097555 () Bool)

(assert (=> b!4910391 (=> (not res!2097555) (not e!3069302))))

(assert (=> b!4910391 (= res!2097555 lt!2015640)))

(assert (=> b!4910392 (= e!3069298 (and tp!1380812 tp!1380814))))

(declare-fun b!4910393 () Bool)

(declare-fun res!2097554 () Bool)

(assert (=> b!4910393 (=> (not res!2097554) (not e!3069301))))

(declare-fun isEmpty!30500 (BalanceConc!29070) Bool)

(declare-datatypes ((tuple2!60950 0))(
  ( (tuple2!60951 (_1!33778 BalanceConc!29070) (_2!33778 BalanceConc!29070)) )
))
(declare-fun findLongestMatchWithZipperSequence!340 (Regex!13327 BalanceConc!29070) tuple2!60950)

(assert (=> b!4910393 (= res!2097554 (isEmpty!30500 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509))))))

(declare-fun b!4910394 () Bool)

(declare-fun res!2097553 () Bool)

(assert (=> b!4910394 (=> (not res!2097553) (not e!3069301))))

(declare-fun ruleValid!3749 (LexerInterface!7844 Rule!16304) Bool)

(assert (=> b!4910394 (= res!2097553 (ruleValid!3749 thiss!15943 rule!164))))

(declare-fun b!4910395 () Bool)

(assert (=> b!4910395 (= e!3069295 (not (= (list!17852 (_2!33776 lt!2015641)) (_2!33777 lt!2015638))))))

(assert (= (and start!515232 res!2097557) b!4910394))

(assert (= (and b!4910394 res!2097553) b!4910393))

(assert (= (and b!4910393 res!2097554) b!4910388))

(assert (= (and b!4910388 (not res!2097556)) b!4910391))

(assert (= (and b!4910391 res!2097555) b!4910387))

(assert (= (and b!4910387 (not res!2097558)) b!4910395))

(assert (= b!4910389 b!4910392))

(assert (= start!515232 b!4910389))

(assert (= start!515232 b!4910390))

(declare-fun m!5920236 () Bool)

(assert (=> b!4910395 m!5920236))

(declare-fun m!5920238 () Bool)

(assert (=> b!4910394 m!5920238))

(declare-fun m!5920240 () Bool)

(assert (=> b!4910389 m!5920240))

(declare-fun m!5920242 () Bool)

(assert (=> b!4910389 m!5920242))

(declare-fun m!5920244 () Bool)

(assert (=> start!515232 m!5920244))

(declare-fun m!5920246 () Bool)

(assert (=> b!4910393 m!5920246))

(declare-fun m!5920248 () Bool)

(assert (=> b!4910393 m!5920248))

(declare-fun m!5920250 () Bool)

(assert (=> b!4910390 m!5920250))

(declare-fun m!5920252 () Bool)

(assert (=> b!4910387 m!5920252))

(declare-fun m!5920254 () Bool)

(assert (=> b!4910387 m!5920254))

(declare-fun m!5920256 () Bool)

(assert (=> b!4910388 m!5920256))

(declare-fun m!5920258 () Bool)

(assert (=> b!4910388 m!5920258))

(assert (=> b!4910388 m!5920258))

(declare-fun m!5920260 () Bool)

(assert (=> b!4910388 m!5920260))

(check-sat (not b!4910390) (not b!4910393) b_and!346717 (not b!4910395) (not start!515232) (not b!4910388) (not b_next!132771) b_and!346715 (not b!4910394) (not b!4910389) (not b_next!132769) (not b!4910387))
(check-sat b_and!346717 b_and!346715 (not b_next!132771) (not b_next!132769))
(get-model)

(declare-fun d!1578027 () Bool)

(declare-fun lt!2015647 () Bool)

(declare-fun isEmpty!30504 (List!56703) Bool)

(assert (=> d!1578027 (= lt!2015647 (isEmpty!30504 (list!17852 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509)))))))

(declare-fun isEmpty!30505 (Conc!14820) Bool)

(assert (=> d!1578027 (= lt!2015647 (isEmpty!30505 (c!834662 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509)))))))

(assert (=> d!1578027 (= (isEmpty!30500 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509))) lt!2015647)))

(declare-fun bs!1177431 () Bool)

(assert (= bs!1177431 d!1578027))

(declare-fun m!5920274 () Bool)

(assert (=> bs!1177431 m!5920274))

(assert (=> bs!1177431 m!5920274))

(declare-fun m!5920276 () Bool)

(assert (=> bs!1177431 m!5920276))

(declare-fun m!5920278 () Bool)

(assert (=> bs!1177431 m!5920278))

(assert (=> b!4910393 d!1578027))

(declare-fun d!1578029 () Bool)

(declare-fun lt!2015663 () tuple2!60950)

(declare-datatypes ((tuple2!60954 0))(
  ( (tuple2!60955 (_1!33780 List!56703) (_2!33780 List!56703)) )
))
(declare-fun findLongestMatch!1681 (Regex!13327 List!56703) tuple2!60954)

(assert (=> d!1578029 (= (tuple2!60955 (list!17852 (_1!33778 lt!2015663)) (list!17852 (_2!33778 lt!2015663))) (findLongestMatch!1681 (regex!8252 rule!164) (list!17852 input!1509)))))

(declare-fun choose!35923 (Regex!13327 BalanceConc!29070) tuple2!60950)

(assert (=> d!1578029 (= lt!2015663 (choose!35923 (regex!8252 rule!164) input!1509))))

(declare-fun validRegex!5918 (Regex!13327) Bool)

(assert (=> d!1578029 (validRegex!5918 (regex!8252 rule!164))))

(assert (=> d!1578029 (= (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509) lt!2015663)))

(declare-fun bs!1177435 () Bool)

(assert (= bs!1177435 d!1578029))

(declare-fun m!5920300 () Bool)

(assert (=> bs!1177435 m!5920300))

(declare-fun m!5920302 () Bool)

(assert (=> bs!1177435 m!5920302))

(declare-fun m!5920304 () Bool)

(assert (=> bs!1177435 m!5920304))

(assert (=> bs!1177435 m!5920258))

(declare-fun m!5920306 () Bool)

(assert (=> bs!1177435 m!5920306))

(assert (=> bs!1177435 m!5920258))

(declare-fun m!5920308 () Bool)

(assert (=> bs!1177435 m!5920308))

(assert (=> b!4910393 d!1578029))

(declare-fun d!1578047 () Bool)

(declare-fun isBalanced!4049 (Conc!14820) Bool)

(assert (=> d!1578047 (= (inv!73136 input!1509) (isBalanced!4049 (c!834662 input!1509)))))

(declare-fun bs!1177436 () Bool)

(assert (= bs!1177436 d!1578047))

(declare-fun m!5920310 () Bool)

(assert (=> bs!1177436 m!5920310))

(assert (=> start!515232 d!1578047))

(declare-fun d!1578049 () Bool)

(declare-fun isEmpty!30506 (Option!14141) Bool)

(assert (=> d!1578049 (= (isDefined!11149 lt!2015639) (not (isEmpty!30506 lt!2015639)))))

(declare-fun bs!1177437 () Bool)

(assert (= bs!1177437 d!1578049))

(declare-fun m!5920312 () Bool)

(assert (=> bs!1177437 m!5920312))

(assert (=> b!4910388 d!1578049))

(declare-fun b!4910484 () Bool)

(declare-fun e!3069345 () Bool)

(declare-fun matchR!6594 (Regex!13327 List!56703) Bool)

(declare-fun findLongestMatchInner!1815 (Regex!13327 List!56703 Int List!56703 List!56703 Int) tuple2!60954)

(declare-fun size!37348 (List!56703) Int)

(assert (=> b!4910484 (= e!3069345 (matchR!6594 (regex!8252 rule!164) (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))))

(declare-fun b!4910485 () Bool)

(declare-fun res!2097614 () Bool)

(declare-fun e!3069344 () Bool)

(assert (=> b!4910485 (=> (not res!2097614) (not e!3069344))))

(declare-fun lt!2015679 () Option!14141)

(declare-fun apply!13596 (TokenValueInjection!16432 BalanceConc!29070) TokenValue!8562)

(declare-fun seqFromList!5994 (List!56703) BalanceConc!29070)

(assert (=> b!4910485 (= res!2097614 (= (value!264314 (_1!33777 (get!19589 lt!2015679))) (apply!13596 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679)))) (seqFromList!5994 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679)))))))))

(declare-fun b!4910486 () Bool)

(declare-fun res!2097618 () Bool)

(assert (=> b!4910486 (=> (not res!2097618) (not e!3069344))))

(assert (=> b!4910486 (= res!2097618 (< (size!37348 (_2!33777 (get!19589 lt!2015679))) (size!37348 (list!17852 input!1509))))))

(declare-fun b!4910487 () Bool)

(declare-fun res!2097616 () Bool)

(assert (=> b!4910487 (=> (not res!2097616) (not e!3069344))))

(assert (=> b!4910487 (= res!2097616 (= (rule!11468 (_1!33777 (get!19589 lt!2015679))) rule!164))))

(declare-fun b!4910488 () Bool)

(declare-fun e!3069347 () Option!14141)

(assert (=> b!4910488 (= e!3069347 None!14140)))

(declare-fun b!4910489 () Bool)

(declare-fun e!3069346 () Bool)

(assert (=> b!4910489 (= e!3069346 e!3069344)))

(declare-fun res!2097615 () Bool)

(assert (=> b!4910489 (=> (not res!2097615) (not e!3069344))))

(declare-fun charsOf!5405 (Token!15032) BalanceConc!29070)

(assert (=> b!4910489 (= res!2097615 (matchR!6594 (regex!8252 rule!164) (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))))))

(declare-fun b!4910490 () Bool)

(declare-fun res!2097619 () Bool)

(assert (=> b!4910490 (=> (not res!2097619) (not e!3069344))))

(declare-fun ++!12279 (List!56703 List!56703) List!56703)

(assert (=> b!4910490 (= res!2097619 (= (++!12279 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679)))) (_2!33777 (get!19589 lt!2015679))) (list!17852 input!1509)))))

(declare-fun b!4910491 () Bool)

(declare-fun lt!2015681 () tuple2!60954)

(declare-fun size!37349 (BalanceConc!29070) Int)

(assert (=> b!4910491 (= e!3069347 (Some!14140 (tuple2!60949 (Token!15033 (apply!13596 (transformation!8252 rule!164) (seqFromList!5994 (_1!33780 lt!2015681))) rule!164 (size!37349 (seqFromList!5994 (_1!33780 lt!2015681))) (_1!33780 lt!2015681)) (_2!33780 lt!2015681))))))

(declare-datatypes ((Unit!146838 0))(
  ( (Unit!146839) )
))
(declare-fun lt!2015680 () Unit!146838)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1778 (Regex!13327 List!56703) Unit!146838)

(assert (=> b!4910491 (= lt!2015680 (longestMatchIsAcceptedByMatchOrIsEmpty!1778 (regex!8252 rule!164) (list!17852 input!1509)))))

(declare-fun res!2097617 () Bool)

(assert (=> b!4910491 (= res!2097617 (isEmpty!30504 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))))

(assert (=> b!4910491 (=> res!2097617 e!3069345)))

(assert (=> b!4910491 e!3069345))

(declare-fun lt!2015683 () Unit!146838)

(assert (=> b!4910491 (= lt!2015683 lt!2015680)))

(declare-fun lt!2015682 () Unit!146838)

(declare-fun lemmaSemiInverse!2593 (TokenValueInjection!16432 BalanceConc!29070) Unit!146838)

(assert (=> b!4910491 (= lt!2015682 (lemmaSemiInverse!2593 (transformation!8252 rule!164) (seqFromList!5994 (_1!33780 lt!2015681))))))

(declare-fun d!1578051 () Bool)

(assert (=> d!1578051 e!3069346))

(declare-fun res!2097620 () Bool)

(assert (=> d!1578051 (=> res!2097620 e!3069346)))

(assert (=> d!1578051 (= res!2097620 (isEmpty!30506 lt!2015679))))

(assert (=> d!1578051 (= lt!2015679 e!3069347)))

(declare-fun c!834673 () Bool)

(assert (=> d!1578051 (= c!834673 (isEmpty!30504 (_1!33780 lt!2015681)))))

(assert (=> d!1578051 (= lt!2015681 (findLongestMatch!1681 (regex!8252 rule!164) (list!17852 input!1509)))))

(assert (=> d!1578051 (ruleValid!3749 thiss!15943 rule!164)))

(assert (=> d!1578051 (= (maxPrefixOneRule!3589 thiss!15943 rule!164 (list!17852 input!1509)) lt!2015679)))

(declare-fun b!4910492 () Bool)

(assert (=> b!4910492 (= e!3069344 (= (size!37345 (_1!33777 (get!19589 lt!2015679))) (size!37348 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679))))))))

(assert (= (and d!1578051 c!834673) b!4910488))

(assert (= (and d!1578051 (not c!834673)) b!4910491))

(assert (= (and b!4910491 (not res!2097617)) b!4910484))

(assert (= (and d!1578051 (not res!2097620)) b!4910489))

(assert (= (and b!4910489 res!2097615) b!4910490))

(assert (= (and b!4910490 res!2097619) b!4910486))

(assert (= (and b!4910486 res!2097618) b!4910487))

(assert (= (and b!4910487 res!2097616) b!4910485))

(assert (= (and b!4910485 res!2097614) b!4910492))

(declare-fun m!5920364 () Bool)

(assert (=> b!4910485 m!5920364))

(declare-fun m!5920366 () Bool)

(assert (=> b!4910485 m!5920366))

(assert (=> b!4910485 m!5920366))

(declare-fun m!5920368 () Bool)

(assert (=> b!4910485 m!5920368))

(assert (=> b!4910489 m!5920364))

(declare-fun m!5920370 () Bool)

(assert (=> b!4910489 m!5920370))

(assert (=> b!4910489 m!5920370))

(declare-fun m!5920372 () Bool)

(assert (=> b!4910489 m!5920372))

(assert (=> b!4910489 m!5920372))

(declare-fun m!5920374 () Bool)

(assert (=> b!4910489 m!5920374))

(assert (=> b!4910492 m!5920364))

(declare-fun m!5920376 () Bool)

(assert (=> b!4910492 m!5920376))

(assert (=> b!4910486 m!5920364))

(declare-fun m!5920378 () Bool)

(assert (=> b!4910486 m!5920378))

(assert (=> b!4910486 m!5920258))

(declare-fun m!5920380 () Bool)

(assert (=> b!4910486 m!5920380))

(declare-fun m!5920382 () Bool)

(assert (=> d!1578051 m!5920382))

(declare-fun m!5920384 () Bool)

(assert (=> d!1578051 m!5920384))

(assert (=> d!1578051 m!5920258))

(assert (=> d!1578051 m!5920306))

(assert (=> d!1578051 m!5920238))

(declare-fun m!5920386 () Bool)

(assert (=> b!4910484 m!5920386))

(assert (=> b!4910484 m!5920258))

(assert (=> b!4910484 m!5920380))

(assert (=> b!4910484 m!5920386))

(assert (=> b!4910484 m!5920258))

(assert (=> b!4910484 m!5920258))

(assert (=> b!4910484 m!5920380))

(declare-fun m!5920388 () Bool)

(assert (=> b!4910484 m!5920388))

(declare-fun m!5920390 () Bool)

(assert (=> b!4910484 m!5920390))

(assert (=> b!4910487 m!5920364))

(assert (=> b!4910491 m!5920386))

(declare-fun m!5920392 () Bool)

(assert (=> b!4910491 m!5920392))

(declare-fun m!5920394 () Bool)

(assert (=> b!4910491 m!5920394))

(assert (=> b!4910491 m!5920258))

(declare-fun m!5920396 () Bool)

(assert (=> b!4910491 m!5920396))

(assert (=> b!4910491 m!5920392))

(declare-fun m!5920398 () Bool)

(assert (=> b!4910491 m!5920398))

(assert (=> b!4910491 m!5920258))

(assert (=> b!4910491 m!5920380))

(declare-fun m!5920400 () Bool)

(assert (=> b!4910491 m!5920400))

(assert (=> b!4910491 m!5920386))

(assert (=> b!4910491 m!5920258))

(assert (=> b!4910491 m!5920258))

(assert (=> b!4910491 m!5920380))

(assert (=> b!4910491 m!5920388))

(assert (=> b!4910491 m!5920392))

(declare-fun m!5920402 () Bool)

(assert (=> b!4910491 m!5920402))

(assert (=> b!4910491 m!5920392))

(assert (=> b!4910490 m!5920364))

(assert (=> b!4910490 m!5920370))

(assert (=> b!4910490 m!5920370))

(assert (=> b!4910490 m!5920372))

(assert (=> b!4910490 m!5920372))

(declare-fun m!5920404 () Bool)

(assert (=> b!4910490 m!5920404))

(assert (=> b!4910388 d!1578051))

(declare-fun d!1578055 () Bool)

(declare-fun list!17854 (Conc!14820) List!56703)

(assert (=> d!1578055 (= (list!17852 input!1509) (list!17854 (c!834662 input!1509)))))

(declare-fun bs!1177439 () Bool)

(assert (= bs!1177439 d!1578055))

(declare-fun m!5920406 () Bool)

(assert (=> bs!1177439 m!5920406))

(assert (=> b!4910388 d!1578055))

(declare-fun d!1578057 () Bool)

(assert (=> d!1578057 (= (inv!73130 (tag!9116 rule!164)) (= (mod (str.len (value!264288 (tag!9116 rule!164))) 2) 0))))

(assert (=> b!4910389 d!1578057))

(declare-fun d!1578059 () Bool)

(declare-fun res!2097623 () Bool)

(declare-fun e!3069350 () Bool)

(assert (=> d!1578059 (=> (not res!2097623) (not e!3069350))))

(declare-fun semiInverseModEq!3653 (Int Int) Bool)

(assert (=> d!1578059 (= res!2097623 (semiInverseModEq!3653 (toChars!11052 (transformation!8252 rule!164)) (toValue!11193 (transformation!8252 rule!164))))))

(assert (=> d!1578059 (= (inv!73134 (transformation!8252 rule!164)) e!3069350)))

(declare-fun b!4910495 () Bool)

(declare-fun equivClasses!3503 (Int Int) Bool)

(assert (=> b!4910495 (= e!3069350 (equivClasses!3503 (toChars!11052 (transformation!8252 rule!164)) (toValue!11193 (transformation!8252 rule!164))))))

(assert (= (and d!1578059 res!2097623) b!4910495))

(declare-fun m!5920408 () Bool)

(assert (=> d!1578059 m!5920408))

(declare-fun m!5920410 () Bool)

(assert (=> b!4910495 m!5920410))

(assert (=> b!4910389 d!1578059))

(declare-fun d!1578061 () Bool)

(declare-fun res!2097628 () Bool)

(declare-fun e!3069353 () Bool)

(assert (=> d!1578061 (=> (not res!2097628) (not e!3069353))))

(assert (=> d!1578061 (= res!2097628 (validRegex!5918 (regex!8252 rule!164)))))

(assert (=> d!1578061 (= (ruleValid!3749 thiss!15943 rule!164) e!3069353)))

(declare-fun b!4910500 () Bool)

(declare-fun res!2097629 () Bool)

(assert (=> b!4910500 (=> (not res!2097629) (not e!3069353))))

(declare-fun nullable!4591 (Regex!13327) Bool)

(assert (=> b!4910500 (= res!2097629 (not (nullable!4591 (regex!8252 rule!164))))))

(declare-fun b!4910501 () Bool)

(assert (=> b!4910501 (= e!3069353 (not (= (tag!9116 rule!164) (String!64252 ""))))))

(assert (= (and d!1578061 res!2097628) b!4910500))

(assert (= (and b!4910500 res!2097629) b!4910501))

(assert (=> d!1578061 m!5920304))

(declare-fun m!5920412 () Bool)

(assert (=> b!4910500 m!5920412))

(assert (=> b!4910394 d!1578061))

(declare-fun d!1578063 () Bool)

(assert (=> d!1578063 (= (list!17852 (_2!33776 lt!2015641)) (list!17854 (c!834662 (_2!33776 lt!2015641))))))

(declare-fun bs!1177440 () Bool)

(assert (= bs!1177440 d!1578063))

(declare-fun m!5920414 () Bool)

(assert (=> bs!1177440 m!5920414))

(assert (=> b!4910395 d!1578063))

(declare-fun d!1578065 () Bool)

(declare-fun c!834676 () Bool)

(assert (=> d!1578065 (= c!834676 ((_ is Node!14820) (c!834662 input!1509)))))

(declare-fun e!3069358 () Bool)

(assert (=> d!1578065 (= (inv!73135 (c!834662 input!1509)) e!3069358)))

(declare-fun b!4910508 () Bool)

(declare-fun inv!73140 (Conc!14820) Bool)

(assert (=> b!4910508 (= e!3069358 (inv!73140 (c!834662 input!1509)))))

(declare-fun b!4910509 () Bool)

(declare-fun e!3069359 () Bool)

(assert (=> b!4910509 (= e!3069358 e!3069359)))

(declare-fun res!2097632 () Bool)

(assert (=> b!4910509 (= res!2097632 (not ((_ is Leaf!24663) (c!834662 input!1509))))))

(assert (=> b!4910509 (=> res!2097632 e!3069359)))

(declare-fun b!4910510 () Bool)

(declare-fun inv!73141 (Conc!14820) Bool)

(assert (=> b!4910510 (= e!3069359 (inv!73141 (c!834662 input!1509)))))

(assert (= (and d!1578065 c!834676) b!4910508))

(assert (= (and d!1578065 (not c!834676)) b!4910509))

(assert (= (and b!4910509 (not res!2097632)) b!4910510))

(declare-fun m!5920416 () Bool)

(assert (=> b!4910508 m!5920416))

(declare-fun m!5920418 () Bool)

(assert (=> b!4910510 m!5920418))

(assert (=> b!4910390 d!1578065))

(declare-fun d!1578067 () Bool)

(assert (=> d!1578067 (= (get!19589 lt!2015639) (v!50102 lt!2015639))))

(assert (=> b!4910387 d!1578067))

(declare-fun d!1578069 () Bool)

(assert (not d!1578069))

(assert (=> b!4910387 d!1578069))

(declare-fun e!3069362 () Bool)

(assert (=> b!4910389 (= tp!1380815 e!3069362)))

(declare-fun b!4910522 () Bool)

(declare-fun tp!1380851 () Bool)

(declare-fun tp!1380854 () Bool)

(assert (=> b!4910522 (= e!3069362 (and tp!1380851 tp!1380854))))

(declare-fun b!4910524 () Bool)

(declare-fun tp!1380850 () Bool)

(declare-fun tp!1380853 () Bool)

(assert (=> b!4910524 (= e!3069362 (and tp!1380850 tp!1380853))))

(declare-fun b!4910523 () Bool)

(declare-fun tp!1380852 () Bool)

(assert (=> b!4910523 (= e!3069362 tp!1380852)))

(declare-fun b!4910521 () Bool)

(declare-fun tp_is_empty!35859 () Bool)

(assert (=> b!4910521 (= e!3069362 tp_is_empty!35859)))

(assert (= (and b!4910389 ((_ is ElementMatch!13327) (regex!8252 rule!164))) b!4910521))

(assert (= (and b!4910389 ((_ is Concat!21889) (regex!8252 rule!164))) b!4910522))

(assert (= (and b!4910389 ((_ is Star!13327) (regex!8252 rule!164))) b!4910523))

(assert (= (and b!4910389 ((_ is Union!13327) (regex!8252 rule!164))) b!4910524))

(declare-fun tp!1380862 () Bool)

(declare-fun e!3069368 () Bool)

(declare-fun b!4910533 () Bool)

(declare-fun tp!1380863 () Bool)

(assert (=> b!4910533 (= e!3069368 (and (inv!73135 (left!41224 (c!834662 input!1509))) tp!1380863 (inv!73135 (right!41554 (c!834662 input!1509))) tp!1380862))))

(declare-fun b!4910535 () Bool)

(declare-fun e!3069367 () Bool)

(declare-fun tp!1380861 () Bool)

(assert (=> b!4910535 (= e!3069367 tp!1380861)))

(declare-fun b!4910534 () Bool)

(declare-fun inv!73142 (IArray!29701) Bool)

(assert (=> b!4910534 (= e!3069368 (and (inv!73142 (xs!18136 (c!834662 input!1509))) e!3069367))))

(assert (=> b!4910390 (= tp!1380813 (and (inv!73135 (c!834662 input!1509)) e!3069368))))

(assert (= (and b!4910390 ((_ is Node!14820) (c!834662 input!1509))) b!4910533))

(assert (= b!4910534 b!4910535))

(assert (= (and b!4910390 ((_ is Leaf!24663) (c!834662 input!1509))) b!4910534))

(declare-fun m!5920420 () Bool)

(assert (=> b!4910533 m!5920420))

(declare-fun m!5920422 () Bool)

(assert (=> b!4910533 m!5920422))

(declare-fun m!5920424 () Bool)

(assert (=> b!4910534 m!5920424))

(assert (=> b!4910390 m!5920250))

(check-sat (not b_next!132769) (not d!1578051) (not d!1578049) (not b!4910510) (not b!4910485) (not b!4910533) (not b!4910534) (not b!4910524) tp_is_empty!35859 (not b!4910535) (not b!4910492) (not b!4910390) (not d!1578059) (not b!4910522) (not b!4910523) (not b!4910500) (not d!1578027) (not d!1578061) b_and!346717 (not b!4910487) (not b!4910490) (not d!1578047) (not b!4910508) (not d!1578055) (not d!1578063) (not b!4910491) (not b!4910484) (not b!4910486) (not b!4910489) (not d!1578029) (not b_next!132771) (not b!4910495) b_and!346715)
(check-sat b_and!346717 b_and!346715 (not b_next!132771) (not b_next!132769))
(get-model)

(assert (=> d!1578029 d!1578055))

(declare-fun d!1578111 () Bool)

(assert (=> d!1578111 (= (list!17852 (_1!33778 lt!2015663)) (list!17854 (c!834662 (_1!33778 lt!2015663))))))

(declare-fun bs!1177448 () Bool)

(assert (= bs!1177448 d!1578111))

(declare-fun m!5920530 () Bool)

(assert (=> bs!1177448 m!5920530))

(assert (=> d!1578029 d!1578111))

(declare-fun b!4910684 () Bool)

(declare-fun e!3069461 () Bool)

(declare-fun call!340959 () Bool)

(assert (=> b!4910684 (= e!3069461 call!340959)))

(declare-fun d!1578113 () Bool)

(declare-fun res!2097717 () Bool)

(declare-fun e!3069459 () Bool)

(assert (=> d!1578113 (=> res!2097717 e!3069459)))

(assert (=> d!1578113 (= res!2097717 ((_ is ElementMatch!13327) (regex!8252 rule!164)))))

(assert (=> d!1578113 (= (validRegex!5918 (regex!8252 rule!164)) e!3069459)))

(declare-fun b!4910685 () Bool)

(declare-fun e!3069460 () Bool)

(declare-fun e!3069462 () Bool)

(assert (=> b!4910685 (= e!3069460 e!3069462)))

(declare-fun c!834709 () Bool)

(assert (=> b!4910685 (= c!834709 ((_ is Union!13327) (regex!8252 rule!164)))))

(declare-fun c!834710 () Bool)

(declare-fun bm!340954 () Bool)

(declare-fun call!340960 () Bool)

(assert (=> bm!340954 (= call!340960 (validRegex!5918 (ite c!834710 (reg!13656 (regex!8252 rule!164)) (ite c!834709 (regTwo!27167 (regex!8252 rule!164)) (regOne!27166 (regex!8252 rule!164))))))))

(declare-fun b!4910686 () Bool)

(declare-fun e!3069457 () Bool)

(declare-fun call!340961 () Bool)

(assert (=> b!4910686 (= e!3069457 call!340961)))

(declare-fun bm!340955 () Bool)

(assert (=> bm!340955 (= call!340961 (validRegex!5918 (ite c!834709 (regOne!27167 (regex!8252 rule!164)) (regTwo!27166 (regex!8252 rule!164)))))))

(declare-fun b!4910687 () Bool)

(declare-fun res!2097718 () Bool)

(assert (=> b!4910687 (=> (not res!2097718) (not e!3069461))))

(assert (=> b!4910687 (= res!2097718 call!340961)))

(assert (=> b!4910687 (= e!3069462 e!3069461)))

(declare-fun b!4910688 () Bool)

(assert (=> b!4910688 (= e!3069459 e!3069460)))

(assert (=> b!4910688 (= c!834710 ((_ is Star!13327) (regex!8252 rule!164)))))

(declare-fun b!4910689 () Bool)

(declare-fun e!3069458 () Bool)

(assert (=> b!4910689 (= e!3069458 call!340960)))

(declare-fun b!4910690 () Bool)

(assert (=> b!4910690 (= e!3069460 e!3069458)))

(declare-fun res!2097719 () Bool)

(assert (=> b!4910690 (= res!2097719 (not (nullable!4591 (reg!13656 (regex!8252 rule!164)))))))

(assert (=> b!4910690 (=> (not res!2097719) (not e!3069458))))

(declare-fun bm!340956 () Bool)

(assert (=> bm!340956 (= call!340959 call!340960)))

(declare-fun b!4910691 () Bool)

(declare-fun e!3069456 () Bool)

(assert (=> b!4910691 (= e!3069456 e!3069457)))

(declare-fun res!2097720 () Bool)

(assert (=> b!4910691 (=> (not res!2097720) (not e!3069457))))

(assert (=> b!4910691 (= res!2097720 call!340959)))

(declare-fun b!4910692 () Bool)

(declare-fun res!2097721 () Bool)

(assert (=> b!4910692 (=> res!2097721 e!3069456)))

(assert (=> b!4910692 (= res!2097721 (not ((_ is Concat!21889) (regex!8252 rule!164))))))

(assert (=> b!4910692 (= e!3069462 e!3069456)))

(assert (= (and d!1578113 (not res!2097717)) b!4910688))

(assert (= (and b!4910688 c!834710) b!4910690))

(assert (= (and b!4910688 (not c!834710)) b!4910685))

(assert (= (and b!4910690 res!2097719) b!4910689))

(assert (= (and b!4910685 c!834709) b!4910687))

(assert (= (and b!4910685 (not c!834709)) b!4910692))

(assert (= (and b!4910687 res!2097718) b!4910684))

(assert (= (and b!4910692 (not res!2097721)) b!4910691))

(assert (= (and b!4910691 res!2097720) b!4910686))

(assert (= (or b!4910684 b!4910691) bm!340956))

(assert (= (or b!4910687 b!4910686) bm!340955))

(assert (= (or b!4910689 bm!340956) bm!340954))

(declare-fun m!5920532 () Bool)

(assert (=> bm!340954 m!5920532))

(declare-fun m!5920534 () Bool)

(assert (=> bm!340955 m!5920534))

(declare-fun m!5920536 () Bool)

(assert (=> b!4910690 m!5920536))

(assert (=> d!1578029 d!1578113))

(declare-fun d!1578115 () Bool)

(assert (=> d!1578115 (= (list!17852 (_2!33778 lt!2015663)) (list!17854 (c!834662 (_2!33778 lt!2015663))))))

(declare-fun bs!1177449 () Bool)

(assert (= bs!1177449 d!1578115))

(declare-fun m!5920538 () Bool)

(assert (=> bs!1177449 m!5920538))

(assert (=> d!1578029 d!1578115))

(declare-fun d!1578117 () Bool)

(declare-fun lt!2015747 () tuple2!60954)

(assert (=> d!1578117 (= (++!12279 (_1!33780 lt!2015747) (_2!33780 lt!2015747)) (list!17852 input!1509))))

(declare-fun sizeTr!352 (List!56703 Int) Int)

(assert (=> d!1578117 (= lt!2015747 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 0 (list!17852 input!1509) (list!17852 input!1509) (sizeTr!352 (list!17852 input!1509) 0)))))

(declare-fun lt!2015740 () Unit!146838)

(declare-fun lt!2015743 () Unit!146838)

(assert (=> d!1578117 (= lt!2015740 lt!2015743)))

(declare-fun lt!2015741 () List!56703)

(declare-fun lt!2015744 () Int)

(assert (=> d!1578117 (= (sizeTr!352 lt!2015741 lt!2015744) (+ (size!37348 lt!2015741) lt!2015744))))

(declare-fun lemmaSizeTrEqualsSize!351 (List!56703 Int) Unit!146838)

(assert (=> d!1578117 (= lt!2015743 (lemmaSizeTrEqualsSize!351 lt!2015741 lt!2015744))))

(assert (=> d!1578117 (= lt!2015744 0)))

(assert (=> d!1578117 (= lt!2015741 Nil!56579)))

(declare-fun lt!2015746 () Unit!146838)

(declare-fun lt!2015742 () Unit!146838)

(assert (=> d!1578117 (= lt!2015746 lt!2015742)))

(declare-fun lt!2015745 () Int)

(assert (=> d!1578117 (= (sizeTr!352 (list!17852 input!1509) lt!2015745) (+ (size!37348 (list!17852 input!1509)) lt!2015745))))

(assert (=> d!1578117 (= lt!2015742 (lemmaSizeTrEqualsSize!351 (list!17852 input!1509) lt!2015745))))

(assert (=> d!1578117 (= lt!2015745 0)))

(assert (=> d!1578117 (validRegex!5918 (regex!8252 rule!164))))

(assert (=> d!1578117 (= (findLongestMatch!1681 (regex!8252 rule!164) (list!17852 input!1509)) lt!2015747)))

(declare-fun bs!1177450 () Bool)

(assert (= bs!1177450 d!1578117))

(assert (=> bs!1177450 m!5920304))

(declare-fun m!5920540 () Bool)

(assert (=> bs!1177450 m!5920540))

(assert (=> bs!1177450 m!5920258))

(assert (=> bs!1177450 m!5920380))

(assert (=> bs!1177450 m!5920258))

(declare-fun m!5920542 () Bool)

(assert (=> bs!1177450 m!5920542))

(declare-fun m!5920544 () Bool)

(assert (=> bs!1177450 m!5920544))

(assert (=> bs!1177450 m!5920258))

(declare-fun m!5920546 () Bool)

(assert (=> bs!1177450 m!5920546))

(declare-fun m!5920548 () Bool)

(assert (=> bs!1177450 m!5920548))

(declare-fun m!5920550 () Bool)

(assert (=> bs!1177450 m!5920550))

(assert (=> bs!1177450 m!5920258))

(assert (=> bs!1177450 m!5920258))

(assert (=> bs!1177450 m!5920546))

(declare-fun m!5920552 () Bool)

(assert (=> bs!1177450 m!5920552))

(assert (=> bs!1177450 m!5920258))

(declare-fun m!5920554 () Bool)

(assert (=> bs!1177450 m!5920554))

(assert (=> d!1578029 d!1578117))

(declare-fun d!1578119 () Bool)

(declare-fun res!2097724 () tuple2!60950)

(assert (=> d!1578119 (= (tuple2!60955 (list!17852 (_1!33778 res!2097724)) (list!17852 (_2!33778 res!2097724))) (findLongestMatch!1681 (regex!8252 rule!164) (list!17852 input!1509)))))

(declare-fun e!3069467 () Bool)

(declare-fun e!3069468 () Bool)

(assert (=> d!1578119 (and (inv!73136 (_1!33778 res!2097724)) e!3069467 (inv!73136 (_2!33778 res!2097724)) e!3069468)))

(assert (=> d!1578119 (= (choose!35923 (regex!8252 rule!164) input!1509) res!2097724)))

(declare-fun b!4910697 () Bool)

(declare-fun tp!1380877 () Bool)

(assert (=> b!4910697 (= e!3069467 (and (inv!73135 (c!834662 (_1!33778 res!2097724))) tp!1380877))))

(declare-fun b!4910698 () Bool)

(declare-fun tp!1380878 () Bool)

(assert (=> b!4910698 (= e!3069468 (and (inv!73135 (c!834662 (_2!33778 res!2097724))) tp!1380878))))

(assert (= d!1578119 b!4910697))

(assert (= d!1578119 b!4910698))

(declare-fun m!5920556 () Bool)

(assert (=> d!1578119 m!5920556))

(declare-fun m!5920558 () Bool)

(assert (=> d!1578119 m!5920558))

(declare-fun m!5920560 () Bool)

(assert (=> d!1578119 m!5920560))

(declare-fun m!5920562 () Bool)

(assert (=> d!1578119 m!5920562))

(assert (=> d!1578119 m!5920258))

(assert (=> d!1578119 m!5920306))

(assert (=> d!1578119 m!5920258))

(declare-fun m!5920564 () Bool)

(assert (=> b!4910697 m!5920564))

(declare-fun m!5920566 () Bool)

(assert (=> b!4910698 m!5920566))

(assert (=> d!1578029 d!1578119))

(declare-fun d!1578121 () Bool)

(assert (=> d!1578121 true))

(declare-fun order!25901 () Int)

(declare-fun lambda!244718 () Int)

(declare-fun order!25899 () Int)

(declare-fun dynLambda!22941 (Int Int) Int)

(declare-fun dynLambda!22942 (Int Int) Int)

(assert (=> d!1578121 (< (dynLambda!22941 order!25899 (toValue!11193 (transformation!8252 rule!164))) (dynLambda!22942 order!25901 lambda!244718))))

(declare-fun Forall2!1282 (Int) Bool)

(assert (=> d!1578121 (= (equivClasses!3503 (toChars!11052 (transformation!8252 rule!164)) (toValue!11193 (transformation!8252 rule!164))) (Forall2!1282 lambda!244718))))

(declare-fun bs!1177452 () Bool)

(assert (= bs!1177452 d!1578121))

(declare-fun m!5920580 () Bool)

(assert (=> bs!1177452 m!5920580))

(assert (=> b!4910495 d!1578121))

(declare-fun b!4910729 () Bool)

(declare-fun e!3069484 () List!56703)

(assert (=> b!4910729 (= e!3069484 Nil!56579)))

(declare-fun b!4910730 () Bool)

(declare-fun e!3069485 () List!56703)

(assert (=> b!4910730 (= e!3069484 e!3069485)))

(declare-fun c!834719 () Bool)

(assert (=> b!4910730 (= c!834719 ((_ is Leaf!24663) (c!834662 input!1509)))))

(declare-fun b!4910732 () Bool)

(assert (=> b!4910732 (= e!3069485 (++!12279 (list!17854 (left!41224 (c!834662 input!1509))) (list!17854 (right!41554 (c!834662 input!1509)))))))

(declare-fun d!1578127 () Bool)

(declare-fun c!834718 () Bool)

(assert (=> d!1578127 (= c!834718 ((_ is Empty!14820) (c!834662 input!1509)))))

(assert (=> d!1578127 (= (list!17854 (c!834662 input!1509)) e!3069484)))

(declare-fun b!4910731 () Bool)

(declare-fun list!17856 (IArray!29701) List!56703)

(assert (=> b!4910731 (= e!3069485 (list!17856 (xs!18136 (c!834662 input!1509))))))

(assert (= (and d!1578127 c!834718) b!4910729))

(assert (= (and d!1578127 (not c!834718)) b!4910730))

(assert (= (and b!4910730 c!834719) b!4910731))

(assert (= (and b!4910730 (not c!834719)) b!4910732))

(declare-fun m!5920582 () Bool)

(assert (=> b!4910732 m!5920582))

(declare-fun m!5920584 () Bool)

(assert (=> b!4910732 m!5920584))

(assert (=> b!4910732 m!5920582))

(assert (=> b!4910732 m!5920584))

(declare-fun m!5920586 () Bool)

(assert (=> b!4910732 m!5920586))

(declare-fun m!5920588 () Bool)

(assert (=> b!4910731 m!5920588))

(assert (=> d!1578055 d!1578127))

(declare-fun d!1578129 () Bool)

(declare-fun res!2097741 () Bool)

(declare-fun e!3069488 () Bool)

(assert (=> d!1578129 (=> (not res!2097741) (not e!3069488))))

(assert (=> d!1578129 (= res!2097741 (<= (size!37348 (list!17856 (xs!18136 (c!834662 input!1509)))) 512))))

(assert (=> d!1578129 (= (inv!73141 (c!834662 input!1509)) e!3069488)))

(declare-fun b!4910737 () Bool)

(declare-fun res!2097742 () Bool)

(assert (=> b!4910737 (=> (not res!2097742) (not e!3069488))))

(assert (=> b!4910737 (= res!2097742 (= (csize!29871 (c!834662 input!1509)) (size!37348 (list!17856 (xs!18136 (c!834662 input!1509))))))))

(declare-fun b!4910738 () Bool)

(assert (=> b!4910738 (= e!3069488 (and (> (csize!29871 (c!834662 input!1509)) 0) (<= (csize!29871 (c!834662 input!1509)) 512)))))

(assert (= (and d!1578129 res!2097741) b!4910737))

(assert (= (and b!4910737 res!2097742) b!4910738))

(assert (=> d!1578129 m!5920588))

(assert (=> d!1578129 m!5920588))

(declare-fun m!5920590 () Bool)

(assert (=> d!1578129 m!5920590))

(assert (=> b!4910737 m!5920588))

(assert (=> b!4910737 m!5920588))

(assert (=> b!4910737 m!5920590))

(assert (=> b!4910510 d!1578129))

(declare-fun b!4910767 () Bool)

(declare-fun e!3069503 () Bool)

(assert (=> b!4910767 (= e!3069503 true)))

(declare-fun d!1578131 () Bool)

(assert (=> d!1578131 e!3069503))

(assert (= d!1578131 b!4910767))

(declare-fun order!25903 () Int)

(declare-fun lambda!244721 () Int)

(declare-fun dynLambda!22943 (Int Int) Int)

(assert (=> b!4910767 (< (dynLambda!22941 order!25899 (toValue!11193 (transformation!8252 rule!164))) (dynLambda!22943 order!25903 lambda!244721))))

(declare-fun order!25905 () Int)

(declare-fun dynLambda!22944 (Int Int) Int)

(assert (=> b!4910767 (< (dynLambda!22944 order!25905 (toChars!11052 (transformation!8252 rule!164))) (dynLambda!22943 order!25903 lambda!244721))))

(declare-fun dynLambda!22945 (Int TokenValue!8562) BalanceConc!29070)

(declare-fun dynLambda!22946 (Int BalanceConc!29070) TokenValue!8562)

(assert (=> d!1578131 (= (list!17852 (dynLambda!22945 (toChars!11052 (transformation!8252 rule!164)) (dynLambda!22946 (toValue!11193 (transformation!8252 rule!164)) (seqFromList!5994 (_1!33780 lt!2015681))))) (list!17852 (seqFromList!5994 (_1!33780 lt!2015681))))))

(declare-fun lt!2015807 () Unit!146838)

(declare-fun ForallOf!1188 (Int BalanceConc!29070) Unit!146838)

(assert (=> d!1578131 (= lt!2015807 (ForallOf!1188 lambda!244721 (seqFromList!5994 (_1!33780 lt!2015681))))))

(assert (=> d!1578131 (= (lemmaSemiInverse!2593 (transformation!8252 rule!164) (seqFromList!5994 (_1!33780 lt!2015681))) lt!2015807)))

(declare-fun b_lambda!195939 () Bool)

(assert (=> (not b_lambda!195939) (not d!1578131)))

(declare-fun t!367035 () Bool)

(declare-fun tb!260057 () Bool)

(assert (=> (and b!4910392 (= (toChars!11052 (transformation!8252 rule!164)) (toChars!11052 (transformation!8252 rule!164))) t!367035) tb!260057))

(declare-fun b!4910772 () Bool)

(declare-fun e!3069506 () Bool)

(declare-fun tp!1380881 () Bool)

(assert (=> b!4910772 (= e!3069506 (and (inv!73135 (c!834662 (dynLambda!22945 (toChars!11052 (transformation!8252 rule!164)) (dynLambda!22946 (toValue!11193 (transformation!8252 rule!164)) (seqFromList!5994 (_1!33780 lt!2015681)))))) tp!1380881))))

(declare-fun result!323950 () Bool)

(assert (=> tb!260057 (= result!323950 (and (inv!73136 (dynLambda!22945 (toChars!11052 (transformation!8252 rule!164)) (dynLambda!22946 (toValue!11193 (transformation!8252 rule!164)) (seqFromList!5994 (_1!33780 lt!2015681))))) e!3069506))))

(assert (= tb!260057 b!4910772))

(declare-fun m!5920592 () Bool)

(assert (=> b!4910772 m!5920592))

(declare-fun m!5920594 () Bool)

(assert (=> tb!260057 m!5920594))

(assert (=> d!1578131 t!367035))

(declare-fun b_and!346721 () Bool)

(assert (= b_and!346717 (and (=> t!367035 result!323950) b_and!346721)))

(declare-fun b_lambda!195941 () Bool)

(assert (=> (not b_lambda!195941) (not d!1578131)))

(declare-fun t!367037 () Bool)

(declare-fun tb!260059 () Bool)

(assert (=> (and b!4910392 (= (toValue!11193 (transformation!8252 rule!164)) (toValue!11193 (transformation!8252 rule!164))) t!367037) tb!260059))

(declare-fun result!323954 () Bool)

(declare-fun inv!21 (TokenValue!8562) Bool)

(assert (=> tb!260059 (= result!323954 (inv!21 (dynLambda!22946 (toValue!11193 (transformation!8252 rule!164)) (seqFromList!5994 (_1!33780 lt!2015681)))))))

(declare-fun m!5920596 () Bool)

(assert (=> tb!260059 m!5920596))

(assert (=> d!1578131 t!367037))

(declare-fun b_and!346723 () Bool)

(assert (= b_and!346715 (and (=> t!367037 result!323954) b_and!346723)))

(declare-fun m!5920598 () Bool)

(assert (=> d!1578131 m!5920598))

(declare-fun m!5920600 () Bool)

(assert (=> d!1578131 m!5920600))

(declare-fun m!5920602 () Bool)

(assert (=> d!1578131 m!5920602))

(assert (=> d!1578131 m!5920598))

(assert (=> d!1578131 m!5920392))

(declare-fun m!5920604 () Bool)

(assert (=> d!1578131 m!5920604))

(assert (=> d!1578131 m!5920392))

(assert (=> d!1578131 m!5920602))

(assert (=> d!1578131 m!5920392))

(declare-fun m!5920606 () Bool)

(assert (=> d!1578131 m!5920606))

(assert (=> b!4910491 d!1578131))

(declare-fun d!1578133 () Bool)

(declare-fun lt!2015810 () Int)

(assert (=> d!1578133 (= lt!2015810 (size!37348 (list!17852 (seqFromList!5994 (_1!33780 lt!2015681)))))))

(declare-fun size!37351 (Conc!14820) Int)

(assert (=> d!1578133 (= lt!2015810 (size!37351 (c!834662 (seqFromList!5994 (_1!33780 lt!2015681)))))))

(assert (=> d!1578133 (= (size!37349 (seqFromList!5994 (_1!33780 lt!2015681))) lt!2015810)))

(declare-fun bs!1177453 () Bool)

(assert (= bs!1177453 d!1578133))

(assert (=> bs!1177453 m!5920392))

(assert (=> bs!1177453 m!5920604))

(assert (=> bs!1177453 m!5920604))

(declare-fun m!5920608 () Bool)

(assert (=> bs!1177453 m!5920608))

(declare-fun m!5920610 () Bool)

(assert (=> bs!1177453 m!5920610))

(assert (=> b!4910491 d!1578133))

(declare-fun d!1578135 () Bool)

(declare-fun lt!2015813 () Int)

(assert (=> d!1578135 (>= lt!2015813 0)))

(declare-fun e!3069516 () Int)

(assert (=> d!1578135 (= lt!2015813 e!3069516)))

(declare-fun c!834735 () Bool)

(assert (=> d!1578135 (= c!834735 ((_ is Nil!56579) (list!17852 input!1509)))))

(assert (=> d!1578135 (= (size!37348 (list!17852 input!1509)) lt!2015813)))

(declare-fun b!4910783 () Bool)

(assert (=> b!4910783 (= e!3069516 0)))

(declare-fun b!4910784 () Bool)

(assert (=> b!4910784 (= e!3069516 (+ 1 (size!37348 (t!367027 (list!17852 input!1509)))))))

(assert (= (and d!1578135 c!834735) b!4910783))

(assert (= (and d!1578135 (not c!834735)) b!4910784))

(declare-fun m!5920612 () Bool)

(assert (=> b!4910784 m!5920612))

(assert (=> b!4910491 d!1578135))

(declare-fun d!1578137 () Bool)

(assert (=> d!1578137 (= (isEmpty!30504 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))) ((_ is Nil!56579) (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))))

(assert (=> b!4910491 d!1578137))

(declare-fun d!1578139 () Bool)

(assert (=> d!1578139 (= (apply!13596 (transformation!8252 rule!164) (seqFromList!5994 (_1!33780 lt!2015681))) (dynLambda!22946 (toValue!11193 (transformation!8252 rule!164)) (seqFromList!5994 (_1!33780 lt!2015681))))))

(declare-fun b_lambda!195943 () Bool)

(assert (=> (not b_lambda!195943) (not d!1578139)))

(assert (=> d!1578139 t!367037))

(declare-fun b_and!346725 () Bool)

(assert (= b_and!346723 (and (=> t!367037 result!323954) b_and!346725)))

(assert (=> d!1578139 m!5920392))

(assert (=> d!1578139 m!5920602))

(assert (=> b!4910491 d!1578139))

(declare-fun b!4910902 () Bool)

(declare-fun c!834765 () Bool)

(declare-fun call!341009 () Bool)

(assert (=> b!4910902 (= c!834765 call!341009)))

(declare-fun lt!2015920 () Unit!146838)

(declare-fun lt!2015932 () Unit!146838)

(assert (=> b!4910902 (= lt!2015920 lt!2015932)))

(assert (=> b!4910902 (= (list!17852 input!1509) Nil!56579)))

(declare-fun call!341006 () Unit!146838)

(assert (=> b!4910902 (= lt!2015932 call!341006)))

(declare-fun lt!2015923 () Unit!146838)

(declare-fun lt!2015921 () Unit!146838)

(assert (=> b!4910902 (= lt!2015923 lt!2015921)))

(declare-fun call!341005 () Bool)

(assert (=> b!4910902 call!341005))

(declare-fun call!341003 () Unit!146838)

(assert (=> b!4910902 (= lt!2015921 call!341003)))

(declare-fun e!3069580 () tuple2!60954)

(declare-fun e!3069585 () tuple2!60954)

(assert (=> b!4910902 (= e!3069580 e!3069585)))

(declare-fun b!4910903 () Bool)

(declare-fun e!3069578 () Bool)

(declare-fun lt!2015909 () tuple2!60954)

(assert (=> b!4910903 (= e!3069578 (>= (size!37348 (_1!33780 lt!2015909)) (size!37348 Nil!56579)))))

(declare-fun b!4910904 () Bool)

(declare-fun e!3069581 () tuple2!60954)

(assert (=> b!4910904 (= e!3069581 (tuple2!60955 Nil!56579 (list!17852 input!1509)))))

(declare-fun b!4910905 () Bool)

(declare-fun e!3069584 () Unit!146838)

(declare-fun Unit!146842 () Unit!146838)

(assert (=> b!4910905 (= e!3069584 Unit!146842)))

(declare-fun lt!2015924 () Unit!146838)

(assert (=> b!4910905 (= lt!2015924 call!341003)))

(assert (=> b!4910905 call!341005))

(declare-fun lt!2015914 () Unit!146838)

(assert (=> b!4910905 (= lt!2015914 lt!2015924)))

(declare-fun lt!2015916 () Unit!146838)

(assert (=> b!4910905 (= lt!2015916 call!341006)))

(assert (=> b!4910905 (= (list!17852 input!1509) Nil!56579)))

(declare-fun lt!2015929 () Unit!146838)

(assert (=> b!4910905 (= lt!2015929 lt!2015916)))

(assert (=> b!4910905 false))

(declare-fun bm!340998 () Bool)

(declare-fun call!341008 () Regex!13327)

(declare-fun call!341007 () C!26852)

(declare-fun derivativeStep!3911 (Regex!13327 C!26852) Regex!13327)

(assert (=> bm!340998 (= call!341008 (derivativeStep!3911 (regex!8252 rule!164) call!341007))))

(declare-fun b!4910906 () Bool)

(declare-fun Unit!146843 () Unit!146838)

(assert (=> b!4910906 (= e!3069584 Unit!146843)))

(declare-fun b!4910907 () Bool)

(assert (=> b!4910907 (= e!3069585 (tuple2!60955 Nil!56579 Nil!56579))))

(declare-fun b!4910908 () Bool)

(assert (=> b!4910908 (= e!3069585 (tuple2!60955 Nil!56579 (list!17852 input!1509)))))

(declare-fun bm!340999 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1091 (List!56703 List!56703 List!56703) Unit!146838)

(assert (=> bm!340999 (= call!341006 (lemmaIsPrefixSameLengthThenSameList!1091 (list!17852 input!1509) Nil!56579 (list!17852 input!1509)))))

(declare-fun bm!341000 () Bool)

(declare-fun lemmaIsPrefixRefl!3329 (List!56703 List!56703) Unit!146838)

(assert (=> bm!341000 (= call!341003 (lemmaIsPrefixRefl!3329 (list!17852 input!1509) (list!17852 input!1509)))))

(declare-fun bm!341001 () Bool)

(assert (=> bm!341001 (= call!341009 (nullable!4591 (regex!8252 rule!164)))))

(declare-fun call!341010 () tuple2!60954)

(declare-fun lt!2015933 () List!56703)

(declare-fun call!341004 () List!56703)

(declare-fun bm!341002 () Bool)

(assert (=> bm!341002 (= call!341010 (findLongestMatchInner!1815 call!341008 lt!2015933 (+ (size!37348 Nil!56579) 1) call!341004 (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))

(declare-fun b!4910909 () Bool)

(declare-fun e!3069583 () tuple2!60954)

(assert (=> b!4910909 (= e!3069583 (tuple2!60955 Nil!56579 (list!17852 input!1509)))))

(declare-fun b!4910910 () Bool)

(declare-fun e!3069582 () tuple2!60954)

(assert (=> b!4910910 (= e!3069582 call!341010)))

(declare-fun b!4910911 () Bool)

(declare-fun e!3069579 () Bool)

(assert (=> b!4910911 (= e!3069579 e!3069578)))

(declare-fun res!2097773 () Bool)

(assert (=> b!4910911 (=> res!2097773 e!3069578)))

(assert (=> b!4910911 (= res!2097773 (isEmpty!30504 (_1!33780 lt!2015909)))))

(declare-fun b!4910912 () Bool)

(declare-fun c!834766 () Bool)

(assert (=> b!4910912 (= c!834766 call!341009)))

(declare-fun lt!2015915 () Unit!146838)

(declare-fun lt!2015936 () Unit!146838)

(assert (=> b!4910912 (= lt!2015915 lt!2015936)))

(declare-fun lt!2015930 () C!26852)

(declare-fun lt!2015922 () List!56703)

(assert (=> b!4910912 (= (++!12279 (++!12279 Nil!56579 (Cons!56579 lt!2015930 Nil!56579)) lt!2015922) (list!17852 input!1509))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1363 (List!56703 C!26852 List!56703 List!56703) Unit!146838)

(assert (=> b!4910912 (= lt!2015936 (lemmaMoveElementToOtherListKeepsConcatEq!1363 Nil!56579 lt!2015930 lt!2015922 (list!17852 input!1509)))))

(declare-fun tail!9639 (List!56703) List!56703)

(assert (=> b!4910912 (= lt!2015922 (tail!9639 (list!17852 input!1509)))))

(declare-fun head!10492 (List!56703) C!26852)

(assert (=> b!4910912 (= lt!2015930 (head!10492 (list!17852 input!1509)))))

(declare-fun lt!2015917 () Unit!146838)

(declare-fun lt!2015910 () Unit!146838)

(assert (=> b!4910912 (= lt!2015917 lt!2015910)))

(declare-fun isPrefix!4932 (List!56703 List!56703) Bool)

(declare-fun getSuffix!2920 (List!56703 List!56703) List!56703)

(assert (=> b!4910912 (isPrefix!4932 (++!12279 Nil!56579 (Cons!56579 (head!10492 (getSuffix!2920 (list!17852 input!1509) Nil!56579)) Nil!56579)) (list!17852 input!1509))))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!745 (List!56703 List!56703) Unit!146838)

(assert (=> b!4910912 (= lt!2015910 (lemmaAddHeadSuffixToPrefixStillPrefix!745 Nil!56579 (list!17852 input!1509)))))

(declare-fun lt!2015935 () Unit!146838)

(declare-fun lt!2015919 () Unit!146838)

(assert (=> b!4910912 (= lt!2015935 lt!2015919)))

(assert (=> b!4910912 (= lt!2015919 (lemmaAddHeadSuffixToPrefixStillPrefix!745 Nil!56579 (list!17852 input!1509)))))

(assert (=> b!4910912 (= lt!2015933 (++!12279 Nil!56579 (Cons!56579 (head!10492 (list!17852 input!1509)) Nil!56579)))))

(declare-fun lt!2015927 () Unit!146838)

(assert (=> b!4910912 (= lt!2015927 e!3069584)))

(declare-fun c!834763 () Bool)

(assert (=> b!4910912 (= c!834763 (= (size!37348 Nil!56579) (size!37348 (list!17852 input!1509))))))

(declare-fun lt!2015918 () Unit!146838)

(declare-fun lt!2015931 () Unit!146838)

(assert (=> b!4910912 (= lt!2015918 lt!2015931)))

(assert (=> b!4910912 (<= (size!37348 Nil!56579) (size!37348 (list!17852 input!1509)))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!657 (List!56703 List!56703) Unit!146838)

(assert (=> b!4910912 (= lt!2015931 (lemmaIsPrefixThenSmallerEqSize!657 Nil!56579 (list!17852 input!1509)))))

(assert (=> b!4910912 (= e!3069580 e!3069582)))

(declare-fun bm!341003 () Bool)

(assert (=> bm!341003 (= call!341005 (isPrefix!4932 (list!17852 input!1509) (list!17852 input!1509)))))

(declare-fun b!4910913 () Bool)

(declare-fun lt!2015911 () tuple2!60954)

(assert (=> b!4910913 (= e!3069581 lt!2015911)))

(declare-fun bm!341004 () Bool)

(assert (=> bm!341004 (= call!341007 (head!10492 (list!17852 input!1509)))))

(declare-fun d!1578141 () Bool)

(assert (=> d!1578141 e!3069579))

(declare-fun res!2097774 () Bool)

(assert (=> d!1578141 (=> (not res!2097774) (not e!3069579))))

(assert (=> d!1578141 (= res!2097774 (= (++!12279 (_1!33780 lt!2015909) (_2!33780 lt!2015909)) (list!17852 input!1509)))))

(assert (=> d!1578141 (= lt!2015909 e!3069583)))

(declare-fun c!834762 () Bool)

(declare-fun lostCause!1119 (Regex!13327) Bool)

(assert (=> d!1578141 (= c!834762 (lostCause!1119 (regex!8252 rule!164)))))

(declare-fun lt!2015913 () Unit!146838)

(declare-fun Unit!146845 () Unit!146838)

(assert (=> d!1578141 (= lt!2015913 Unit!146845)))

(assert (=> d!1578141 (= (getSuffix!2920 (list!17852 input!1509) Nil!56579) (list!17852 input!1509))))

(declare-fun lt!2015925 () Unit!146838)

(declare-fun lt!2015928 () Unit!146838)

(assert (=> d!1578141 (= lt!2015925 lt!2015928)))

(declare-fun lt!2015912 () List!56703)

(assert (=> d!1578141 (= (list!17852 input!1509) lt!2015912)))

(declare-fun lemmaSamePrefixThenSameSuffix!2336 (List!56703 List!56703 List!56703 List!56703 List!56703) Unit!146838)

(assert (=> d!1578141 (= lt!2015928 (lemmaSamePrefixThenSameSuffix!2336 Nil!56579 (list!17852 input!1509) Nil!56579 lt!2015912 (list!17852 input!1509)))))

(assert (=> d!1578141 (= lt!2015912 (getSuffix!2920 (list!17852 input!1509) Nil!56579))))

(declare-fun lt!2015926 () Unit!146838)

(declare-fun lt!2015934 () Unit!146838)

(assert (=> d!1578141 (= lt!2015926 lt!2015934)))

(assert (=> d!1578141 (isPrefix!4932 Nil!56579 (++!12279 Nil!56579 (list!17852 input!1509)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3156 (List!56703 List!56703) Unit!146838)

(assert (=> d!1578141 (= lt!2015934 (lemmaConcatTwoListThenFirstIsPrefix!3156 Nil!56579 (list!17852 input!1509)))))

(assert (=> d!1578141 (validRegex!5918 (regex!8252 rule!164))))

(assert (=> d!1578141 (= (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))) lt!2015909)))

(declare-fun b!4910914 () Bool)

(assert (=> b!4910914 (= e!3069582 e!3069581)))

(assert (=> b!4910914 (= lt!2015911 call!341010)))

(declare-fun c!834761 () Bool)

(assert (=> b!4910914 (= c!834761 (isEmpty!30504 (_1!33780 lt!2015911)))))

(declare-fun b!4910915 () Bool)

(assert (=> b!4910915 (= e!3069583 e!3069580)))

(declare-fun c!834764 () Bool)

(assert (=> b!4910915 (= c!834764 (= (size!37348 Nil!56579) (size!37348 (list!17852 input!1509))))))

(declare-fun bm!341005 () Bool)

(assert (=> bm!341005 (= call!341004 (tail!9639 (list!17852 input!1509)))))

(assert (= (and d!1578141 c!834762) b!4910909))

(assert (= (and d!1578141 (not c!834762)) b!4910915))

(assert (= (and b!4910915 c!834764) b!4910902))

(assert (= (and b!4910915 (not c!834764)) b!4910912))

(assert (= (and b!4910902 c!834765) b!4910907))

(assert (= (and b!4910902 (not c!834765)) b!4910908))

(assert (= (and b!4910912 c!834763) b!4910905))

(assert (= (and b!4910912 (not c!834763)) b!4910906))

(assert (= (and b!4910912 c!834766) b!4910914))

(assert (= (and b!4910912 (not c!834766)) b!4910910))

(assert (= (and b!4910914 c!834761) b!4910904))

(assert (= (and b!4910914 (not c!834761)) b!4910913))

(assert (= (or b!4910914 b!4910910) bm!341004))

(assert (= (or b!4910914 b!4910910) bm!341005))

(assert (= (or b!4910914 b!4910910) bm!340998))

(assert (= (or b!4910914 b!4910910) bm!341002))

(assert (= (or b!4910902 b!4910905) bm!341003))

(assert (= (or b!4910902 b!4910905) bm!341000))

(assert (= (or b!4910902 b!4910905) bm!340999))

(assert (= (or b!4910902 b!4910912) bm!341001))

(assert (= (and d!1578141 res!2097774) b!4910911))

(assert (= (and b!4910911 (not res!2097773)) b!4910903))

(assert (=> bm!341001 m!5920412))

(assert (=> b!4910912 m!5920258))

(assert (=> b!4910912 m!5920380))

(assert (=> b!4910912 m!5920258))

(declare-fun m!5920740 () Bool)

(assert (=> b!4910912 m!5920740))

(declare-fun m!5920742 () Bool)

(assert (=> b!4910912 m!5920742))

(assert (=> b!4910912 m!5920386))

(declare-fun m!5920744 () Bool)

(assert (=> b!4910912 m!5920744))

(declare-fun m!5920746 () Bool)

(assert (=> b!4910912 m!5920746))

(declare-fun m!5920748 () Bool)

(assert (=> b!4910912 m!5920748))

(declare-fun m!5920750 () Bool)

(assert (=> b!4910912 m!5920750))

(assert (=> b!4910912 m!5920258))

(declare-fun m!5920752 () Bool)

(assert (=> b!4910912 m!5920752))

(assert (=> b!4910912 m!5920258))

(declare-fun m!5920754 () Bool)

(assert (=> b!4910912 m!5920754))

(assert (=> b!4910912 m!5920750))

(assert (=> b!4910912 m!5920258))

(declare-fun m!5920756 () Bool)

(assert (=> b!4910912 m!5920756))

(assert (=> b!4910912 m!5920742))

(declare-fun m!5920758 () Bool)

(assert (=> b!4910912 m!5920758))

(assert (=> b!4910912 m!5920258))

(declare-fun m!5920760 () Bool)

(assert (=> b!4910912 m!5920760))

(assert (=> b!4910912 m!5920258))

(declare-fun m!5920762 () Bool)

(assert (=> b!4910912 m!5920762))

(assert (=> b!4910912 m!5920258))

(assert (=> b!4910912 m!5920746))

(assert (=> bm!341005 m!5920258))

(assert (=> bm!341005 m!5920754))

(assert (=> bm!341002 m!5920258))

(assert (=> bm!341002 m!5920380))

(declare-fun m!5920764 () Bool)

(assert (=> bm!341002 m!5920764))

(declare-fun m!5920766 () Bool)

(assert (=> bm!340998 m!5920766))

(declare-fun m!5920768 () Bool)

(assert (=> b!4910914 m!5920768))

(assert (=> d!1578141 m!5920258))

(assert (=> d!1578141 m!5920258))

(declare-fun m!5920770 () Bool)

(assert (=> d!1578141 m!5920770))

(declare-fun m!5920772 () Bool)

(assert (=> d!1578141 m!5920772))

(declare-fun m!5920774 () Bool)

(assert (=> d!1578141 m!5920774))

(declare-fun m!5920776 () Bool)

(assert (=> d!1578141 m!5920776))

(declare-fun m!5920778 () Bool)

(assert (=> d!1578141 m!5920778))

(assert (=> d!1578141 m!5920258))

(assert (=> d!1578141 m!5920746))

(assert (=> d!1578141 m!5920258))

(assert (=> d!1578141 m!5920774))

(assert (=> d!1578141 m!5920304))

(assert (=> d!1578141 m!5920258))

(declare-fun m!5920780 () Bool)

(assert (=> d!1578141 m!5920780))

(assert (=> bm!341000 m!5920258))

(assert (=> bm!341000 m!5920258))

(declare-fun m!5920782 () Bool)

(assert (=> bm!341000 m!5920782))

(declare-fun m!5920784 () Bool)

(assert (=> b!4910903 m!5920784))

(assert (=> b!4910903 m!5920386))

(assert (=> bm!340999 m!5920258))

(assert (=> bm!340999 m!5920258))

(declare-fun m!5920786 () Bool)

(assert (=> bm!340999 m!5920786))

(declare-fun m!5920788 () Bool)

(assert (=> b!4910911 m!5920788))

(assert (=> bm!341003 m!5920258))

(assert (=> bm!341003 m!5920258))

(declare-fun m!5920790 () Bool)

(assert (=> bm!341003 m!5920790))

(assert (=> bm!341004 m!5920258))

(assert (=> bm!341004 m!5920756))

(assert (=> b!4910491 d!1578141))

(declare-fun d!1578181 () Bool)

(declare-fun e!3069588 () Bool)

(assert (=> d!1578181 e!3069588))

(declare-fun res!2097777 () Bool)

(assert (=> d!1578181 (=> res!2097777 e!3069588)))

(assert (=> d!1578181 (= res!2097777 (isEmpty!30504 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))))

(declare-fun lt!2015939 () Unit!146838)

(declare-fun choose!35924 (Regex!13327 List!56703) Unit!146838)

(assert (=> d!1578181 (= lt!2015939 (choose!35924 (regex!8252 rule!164) (list!17852 input!1509)))))

(assert (=> d!1578181 (validRegex!5918 (regex!8252 rule!164))))

(assert (=> d!1578181 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1778 (regex!8252 rule!164) (list!17852 input!1509)) lt!2015939)))

(declare-fun b!4910918 () Bool)

(assert (=> b!4910918 (= e!3069588 (matchR!6594 (regex!8252 rule!164) (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))))

(assert (= (and d!1578181 (not res!2097777)) b!4910918))

(assert (=> d!1578181 m!5920258))

(assert (=> d!1578181 m!5920380))

(assert (=> d!1578181 m!5920386))

(assert (=> d!1578181 m!5920258))

(assert (=> d!1578181 m!5920258))

(assert (=> d!1578181 m!5920380))

(assert (=> d!1578181 m!5920388))

(assert (=> d!1578181 m!5920304))

(assert (=> d!1578181 m!5920400))

(assert (=> d!1578181 m!5920386))

(assert (=> d!1578181 m!5920258))

(declare-fun m!5920792 () Bool)

(assert (=> d!1578181 m!5920792))

(assert (=> b!4910918 m!5920386))

(assert (=> b!4910918 m!5920258))

(assert (=> b!4910918 m!5920380))

(assert (=> b!4910918 m!5920386))

(assert (=> b!4910918 m!5920258))

(assert (=> b!4910918 m!5920258))

(assert (=> b!4910918 m!5920380))

(assert (=> b!4910918 m!5920388))

(assert (=> b!4910918 m!5920390))

(assert (=> b!4910491 d!1578181))

(declare-fun d!1578183 () Bool)

(declare-fun fromListB!2719 (List!56703) BalanceConc!29070)

(assert (=> d!1578183 (= (seqFromList!5994 (_1!33780 lt!2015681)) (fromListB!2719 (_1!33780 lt!2015681)))))

(declare-fun bs!1177460 () Bool)

(assert (= bs!1177460 d!1578183))

(declare-fun m!5920794 () Bool)

(assert (=> bs!1177460 m!5920794))

(assert (=> b!4910491 d!1578183))

(declare-fun d!1578185 () Bool)

(declare-fun lt!2015940 () Int)

(assert (=> d!1578185 (>= lt!2015940 0)))

(declare-fun e!3069589 () Int)

(assert (=> d!1578185 (= lt!2015940 e!3069589)))

(declare-fun c!834767 () Bool)

(assert (=> d!1578185 (= c!834767 ((_ is Nil!56579) Nil!56579))))

(assert (=> d!1578185 (= (size!37348 Nil!56579) lt!2015940)))

(declare-fun b!4910919 () Bool)

(assert (=> b!4910919 (= e!3069589 0)))

(declare-fun b!4910920 () Bool)

(assert (=> b!4910920 (= e!3069589 (+ 1 (size!37348 (t!367027 Nil!56579))))))

(assert (= (and d!1578185 c!834767) b!4910919))

(assert (= (and d!1578185 (not c!834767)) b!4910920))

(declare-fun m!5920796 () Bool)

(assert (=> b!4910920 m!5920796))

(assert (=> b!4910491 d!1578185))

(declare-fun d!1578187 () Bool)

(assert (=> d!1578187 (= (get!19589 lt!2015679) (v!50102 lt!2015679))))

(assert (=> b!4910492 d!1578187))

(declare-fun d!1578189 () Bool)

(declare-fun lt!2015941 () Int)

(assert (=> d!1578189 (>= lt!2015941 0)))

(declare-fun e!3069590 () Int)

(assert (=> d!1578189 (= lt!2015941 e!3069590)))

(declare-fun c!834768 () Bool)

(assert (=> d!1578189 (= c!834768 ((_ is Nil!56579) (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679)))))))

(assert (=> d!1578189 (= (size!37348 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679)))) lt!2015941)))

(declare-fun b!4910921 () Bool)

(assert (=> b!4910921 (= e!3069590 0)))

(declare-fun b!4910922 () Bool)

(assert (=> b!4910922 (= e!3069590 (+ 1 (size!37348 (t!367027 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679)))))))))

(assert (= (and d!1578189 c!834768) b!4910921))

(assert (= (and d!1578189 (not c!834768)) b!4910922))

(declare-fun m!5920798 () Bool)

(assert (=> b!4910922 m!5920798))

(assert (=> b!4910492 d!1578189))

(declare-fun b!4910935 () Bool)

(declare-fun e!3069595 () Bool)

(declare-fun e!3069596 () Bool)

(assert (=> b!4910935 (= e!3069595 e!3069596)))

(declare-fun res!2097790 () Bool)

(assert (=> b!4910935 (=> (not res!2097790) (not e!3069596))))

(declare-fun height!1971 (Conc!14820) Int)

(assert (=> b!4910935 (= res!2097790 (<= (- 1) (- (height!1971 (left!41224 (c!834662 input!1509))) (height!1971 (right!41554 (c!834662 input!1509))))))))

(declare-fun b!4910936 () Bool)

(declare-fun res!2097791 () Bool)

(assert (=> b!4910936 (=> (not res!2097791) (not e!3069596))))

(assert (=> b!4910936 (= res!2097791 (isBalanced!4049 (right!41554 (c!834662 input!1509))))))

(declare-fun b!4910937 () Bool)

(declare-fun res!2097795 () Bool)

(assert (=> b!4910937 (=> (not res!2097795) (not e!3069596))))

(assert (=> b!4910937 (= res!2097795 (isBalanced!4049 (left!41224 (c!834662 input!1509))))))

(declare-fun b!4910938 () Bool)

(declare-fun res!2097792 () Bool)

(assert (=> b!4910938 (=> (not res!2097792) (not e!3069596))))

(assert (=> b!4910938 (= res!2097792 (<= (- (height!1971 (left!41224 (c!834662 input!1509))) (height!1971 (right!41554 (c!834662 input!1509)))) 1))))

(declare-fun d!1578191 () Bool)

(declare-fun res!2097794 () Bool)

(assert (=> d!1578191 (=> res!2097794 e!3069595)))

(assert (=> d!1578191 (= res!2097794 (not ((_ is Node!14820) (c!834662 input!1509))))))

(assert (=> d!1578191 (= (isBalanced!4049 (c!834662 input!1509)) e!3069595)))

(declare-fun b!4910939 () Bool)

(declare-fun res!2097793 () Bool)

(assert (=> b!4910939 (=> (not res!2097793) (not e!3069596))))

(assert (=> b!4910939 (= res!2097793 (not (isEmpty!30505 (left!41224 (c!834662 input!1509)))))))

(declare-fun b!4910940 () Bool)

(assert (=> b!4910940 (= e!3069596 (not (isEmpty!30505 (right!41554 (c!834662 input!1509)))))))

(assert (= (and d!1578191 (not res!2097794)) b!4910935))

(assert (= (and b!4910935 res!2097790) b!4910938))

(assert (= (and b!4910938 res!2097792) b!4910937))

(assert (= (and b!4910937 res!2097795) b!4910936))

(assert (= (and b!4910936 res!2097791) b!4910939))

(assert (= (and b!4910939 res!2097793) b!4910940))

(declare-fun m!5920800 () Bool)

(assert (=> b!4910940 m!5920800))

(declare-fun m!5920802 () Bool)

(assert (=> b!4910935 m!5920802))

(declare-fun m!5920804 () Bool)

(assert (=> b!4910935 m!5920804))

(declare-fun m!5920806 () Bool)

(assert (=> b!4910936 m!5920806))

(declare-fun m!5920808 () Bool)

(assert (=> b!4910939 m!5920808))

(assert (=> b!4910938 m!5920802))

(assert (=> b!4910938 m!5920804))

(declare-fun m!5920810 () Bool)

(assert (=> b!4910937 m!5920810))

(assert (=> d!1578047 d!1578191))

(assert (=> b!4910390 d!1578065))

(declare-fun d!1578193 () Bool)

(declare-fun res!2097802 () Bool)

(declare-fun e!3069599 () Bool)

(assert (=> d!1578193 (=> (not res!2097802) (not e!3069599))))

(assert (=> d!1578193 (= res!2097802 (= (csize!29870 (c!834662 input!1509)) (+ (size!37351 (left!41224 (c!834662 input!1509))) (size!37351 (right!41554 (c!834662 input!1509))))))))

(assert (=> d!1578193 (= (inv!73140 (c!834662 input!1509)) e!3069599)))

(declare-fun b!4910947 () Bool)

(declare-fun res!2097803 () Bool)

(assert (=> b!4910947 (=> (not res!2097803) (not e!3069599))))

(assert (=> b!4910947 (= res!2097803 (and (not (= (left!41224 (c!834662 input!1509)) Empty!14820)) (not (= (right!41554 (c!834662 input!1509)) Empty!14820))))))

(declare-fun b!4910948 () Bool)

(declare-fun res!2097804 () Bool)

(assert (=> b!4910948 (=> (not res!2097804) (not e!3069599))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4910948 (= res!2097804 (= (cheight!15031 (c!834662 input!1509)) (+ (max!0 (height!1971 (left!41224 (c!834662 input!1509))) (height!1971 (right!41554 (c!834662 input!1509)))) 1)))))

(declare-fun b!4910949 () Bool)

(assert (=> b!4910949 (= e!3069599 (<= 0 (cheight!15031 (c!834662 input!1509))))))

(assert (= (and d!1578193 res!2097802) b!4910947))

(assert (= (and b!4910947 res!2097803) b!4910948))

(assert (= (and b!4910948 res!2097804) b!4910949))

(declare-fun m!5920812 () Bool)

(assert (=> d!1578193 m!5920812))

(declare-fun m!5920814 () Bool)

(assert (=> d!1578193 m!5920814))

(assert (=> b!4910948 m!5920802))

(assert (=> b!4910948 m!5920804))

(assert (=> b!4910948 m!5920802))

(assert (=> b!4910948 m!5920804))

(declare-fun m!5920816 () Bool)

(assert (=> b!4910948 m!5920816))

(assert (=> b!4910508 d!1578193))

(declare-fun b!4910978 () Bool)

(declare-fun e!3069614 () Bool)

(declare-fun e!3069618 () Bool)

(assert (=> b!4910978 (= e!3069614 e!3069618)))

(declare-fun res!2097828 () Bool)

(assert (=> b!4910978 (=> (not res!2097828) (not e!3069618))))

(declare-fun lt!2015944 () Bool)

(assert (=> b!4910978 (= res!2097828 (not lt!2015944))))

(declare-fun b!4910979 () Bool)

(declare-fun res!2097827 () Bool)

(declare-fun e!3069615 () Bool)

(assert (=> b!4910979 (=> (not res!2097827) (not e!3069615))))

(declare-fun call!341013 () Bool)

(assert (=> b!4910979 (= res!2097827 (not call!341013))))

(declare-fun b!4910980 () Bool)

(declare-fun res!2097826 () Bool)

(assert (=> b!4910980 (=> (not res!2097826) (not e!3069615))))

(assert (=> b!4910980 (= res!2097826 (isEmpty!30504 (tail!9639 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679)))))))))

(declare-fun b!4910981 () Bool)

(declare-fun e!3069616 () Bool)

(assert (=> b!4910981 (= e!3069616 (nullable!4591 (regex!8252 rule!164)))))

(declare-fun bm!341008 () Bool)

(assert (=> bm!341008 (= call!341013 (isEmpty!30504 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))))))

(declare-fun b!4910982 () Bool)

(assert (=> b!4910982 (= e!3069615 (= (head!10492 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))) (c!834661 (regex!8252 rule!164))))))

(declare-fun b!4910983 () Bool)

(declare-fun e!3069617 () Bool)

(assert (=> b!4910983 (= e!3069617 (= lt!2015944 call!341013))))

(declare-fun b!4910984 () Bool)

(declare-fun e!3069620 () Bool)

(assert (=> b!4910984 (= e!3069617 e!3069620)))

(declare-fun c!834776 () Bool)

(assert (=> b!4910984 (= c!834776 ((_ is EmptyLang!13327) (regex!8252 rule!164)))))

(declare-fun b!4910985 () Bool)

(assert (=> b!4910985 (= e!3069616 (matchR!6594 (derivativeStep!3911 (regex!8252 rule!164) (head!10492 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679)))))) (tail!9639 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679)))))))))

(declare-fun b!4910986 () Bool)

(assert (=> b!4910986 (= e!3069620 (not lt!2015944))))

(declare-fun d!1578195 () Bool)

(assert (=> d!1578195 e!3069617))

(declare-fun c!834775 () Bool)

(assert (=> d!1578195 (= c!834775 ((_ is EmptyExpr!13327) (regex!8252 rule!164)))))

(assert (=> d!1578195 (= lt!2015944 e!3069616)))

(declare-fun c!834777 () Bool)

(assert (=> d!1578195 (= c!834777 (isEmpty!30504 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))))))

(assert (=> d!1578195 (validRegex!5918 (regex!8252 rule!164))))

(assert (=> d!1578195 (= (matchR!6594 (regex!8252 rule!164) (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))) lt!2015944)))

(declare-fun b!4910987 () Bool)

(declare-fun res!2097822 () Bool)

(declare-fun e!3069619 () Bool)

(assert (=> b!4910987 (=> res!2097822 e!3069619)))

(assert (=> b!4910987 (= res!2097822 (not (isEmpty!30504 (tail!9639 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))))))))

(declare-fun b!4910988 () Bool)

(declare-fun res!2097821 () Bool)

(assert (=> b!4910988 (=> res!2097821 e!3069614)))

(assert (=> b!4910988 (= res!2097821 (not ((_ is ElementMatch!13327) (regex!8252 rule!164))))))

(assert (=> b!4910988 (= e!3069620 e!3069614)))

(declare-fun b!4910989 () Bool)

(assert (=> b!4910989 (= e!3069618 e!3069619)))

(declare-fun res!2097823 () Bool)

(assert (=> b!4910989 (=> res!2097823 e!3069619)))

(assert (=> b!4910989 (= res!2097823 call!341013)))

(declare-fun b!4910990 () Bool)

(assert (=> b!4910990 (= e!3069619 (not (= (head!10492 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))) (c!834661 (regex!8252 rule!164)))))))

(declare-fun b!4910991 () Bool)

(declare-fun res!2097824 () Bool)

(assert (=> b!4910991 (=> res!2097824 e!3069614)))

(assert (=> b!4910991 (= res!2097824 e!3069615)))

(declare-fun res!2097825 () Bool)

(assert (=> b!4910991 (=> (not res!2097825) (not e!3069615))))

(assert (=> b!4910991 (= res!2097825 lt!2015944)))

(assert (= (and d!1578195 c!834777) b!4910981))

(assert (= (and d!1578195 (not c!834777)) b!4910985))

(assert (= (and d!1578195 c!834775) b!4910983))

(assert (= (and d!1578195 (not c!834775)) b!4910984))

(assert (= (and b!4910984 c!834776) b!4910986))

(assert (= (and b!4910984 (not c!834776)) b!4910988))

(assert (= (and b!4910988 (not res!2097821)) b!4910991))

(assert (= (and b!4910991 res!2097825) b!4910979))

(assert (= (and b!4910979 res!2097827) b!4910980))

(assert (= (and b!4910980 res!2097826) b!4910982))

(assert (= (and b!4910991 (not res!2097824)) b!4910978))

(assert (= (and b!4910978 res!2097828) b!4910989))

(assert (= (and b!4910989 (not res!2097823)) b!4910987))

(assert (= (and b!4910987 (not res!2097822)) b!4910990))

(assert (= (or b!4910983 b!4910979 b!4910989) bm!341008))

(assert (=> bm!341008 m!5920372))

(declare-fun m!5920818 () Bool)

(assert (=> bm!341008 m!5920818))

(assert (=> b!4910985 m!5920372))

(declare-fun m!5920820 () Bool)

(assert (=> b!4910985 m!5920820))

(assert (=> b!4910985 m!5920820))

(declare-fun m!5920822 () Bool)

(assert (=> b!4910985 m!5920822))

(assert (=> b!4910985 m!5920372))

(declare-fun m!5920824 () Bool)

(assert (=> b!4910985 m!5920824))

(assert (=> b!4910985 m!5920822))

(assert (=> b!4910985 m!5920824))

(declare-fun m!5920826 () Bool)

(assert (=> b!4910985 m!5920826))

(assert (=> b!4910990 m!5920372))

(assert (=> b!4910990 m!5920820))

(assert (=> b!4910982 m!5920372))

(assert (=> b!4910982 m!5920820))

(assert (=> d!1578195 m!5920372))

(assert (=> d!1578195 m!5920818))

(assert (=> d!1578195 m!5920304))

(assert (=> b!4910981 m!5920412))

(assert (=> b!4910980 m!5920372))

(assert (=> b!4910980 m!5920824))

(assert (=> b!4910980 m!5920824))

(declare-fun m!5920828 () Bool)

(assert (=> b!4910980 m!5920828))

(assert (=> b!4910987 m!5920372))

(assert (=> b!4910987 m!5920824))

(assert (=> b!4910987 m!5920824))

(assert (=> b!4910987 m!5920828))

(assert (=> b!4910489 d!1578195))

(declare-fun d!1578197 () Bool)

(assert (=> d!1578197 (= (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679)))) (list!17854 (c!834662 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))))))

(declare-fun bs!1177461 () Bool)

(assert (= bs!1177461 d!1578197))

(declare-fun m!5920830 () Bool)

(assert (=> bs!1177461 m!5920830))

(assert (=> b!4910489 d!1578197))

(declare-fun d!1578199 () Bool)

(declare-fun lt!2015947 () BalanceConc!29070)

(assert (=> d!1578199 (= (list!17852 lt!2015947) (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679))))))

(assert (=> d!1578199 (= lt!2015947 (dynLambda!22945 (toChars!11052 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679))))) (value!264314 (_1!33777 (get!19589 lt!2015679)))))))

(assert (=> d!1578199 (= (charsOf!5405 (_1!33777 (get!19589 lt!2015679))) lt!2015947)))

(declare-fun b_lambda!195959 () Bool)

(assert (=> (not b_lambda!195959) (not d!1578199)))

(declare-fun tb!260067 () Bool)

(declare-fun t!367046 () Bool)

(assert (=> (and b!4910392 (= (toChars!11052 (transformation!8252 rule!164)) (toChars!11052 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679)))))) t!367046) tb!260067))

(declare-fun b!4910992 () Bool)

(declare-fun e!3069621 () Bool)

(declare-fun tp!1380917 () Bool)

(assert (=> b!4910992 (= e!3069621 (and (inv!73135 (c!834662 (dynLambda!22945 (toChars!11052 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679))))) (value!264314 (_1!33777 (get!19589 lt!2015679)))))) tp!1380917))))

(declare-fun result!323968 () Bool)

(assert (=> tb!260067 (= result!323968 (and (inv!73136 (dynLambda!22945 (toChars!11052 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679))))) (value!264314 (_1!33777 (get!19589 lt!2015679))))) e!3069621))))

(assert (= tb!260067 b!4910992))

(declare-fun m!5920832 () Bool)

(assert (=> b!4910992 m!5920832))

(declare-fun m!5920834 () Bool)

(assert (=> tb!260067 m!5920834))

(assert (=> d!1578199 t!367046))

(declare-fun b_and!346735 () Bool)

(assert (= b_and!346721 (and (=> t!367046 result!323968) b_and!346735)))

(declare-fun m!5920836 () Bool)

(assert (=> d!1578199 m!5920836))

(declare-fun m!5920838 () Bool)

(assert (=> d!1578199 m!5920838))

(assert (=> b!4910489 d!1578199))

(assert (=> b!4910489 d!1578187))

(declare-fun b!4911004 () Bool)

(declare-fun e!3069627 () Bool)

(declare-fun lt!2015950 () List!56703)

(assert (=> b!4911004 (= e!3069627 (or (not (= (_2!33777 (get!19589 lt!2015679)) Nil!56579)) (= lt!2015950 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679)))))))))

(declare-fun d!1578201 () Bool)

(assert (=> d!1578201 e!3069627))

(declare-fun res!2097834 () Bool)

(assert (=> d!1578201 (=> (not res!2097834) (not e!3069627))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10042 (List!56703) (InoxSet C!26852))

(assert (=> d!1578201 (= res!2097834 (= (content!10042 lt!2015950) ((_ map or) (content!10042 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))) (content!10042 (_2!33777 (get!19589 lt!2015679))))))))

(declare-fun e!3069626 () List!56703)

(assert (=> d!1578201 (= lt!2015950 e!3069626)))

(declare-fun c!834780 () Bool)

(assert (=> d!1578201 (= c!834780 ((_ is Nil!56579) (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))))))

(assert (=> d!1578201 (= (++!12279 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679)))) (_2!33777 (get!19589 lt!2015679))) lt!2015950)))

(declare-fun b!4911003 () Bool)

(declare-fun res!2097833 () Bool)

(assert (=> b!4911003 (=> (not res!2097833) (not e!3069627))))

(assert (=> b!4911003 (= res!2097833 (= (size!37348 lt!2015950) (+ (size!37348 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))) (size!37348 (_2!33777 (get!19589 lt!2015679))))))))

(declare-fun b!4911002 () Bool)

(assert (=> b!4911002 (= e!3069626 (Cons!56579 (h!63027 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))) (++!12279 (t!367027 (list!17852 (charsOf!5405 (_1!33777 (get!19589 lt!2015679))))) (_2!33777 (get!19589 lt!2015679)))))))

(declare-fun b!4911001 () Bool)

(assert (=> b!4911001 (= e!3069626 (_2!33777 (get!19589 lt!2015679)))))

(assert (= (and d!1578201 c!834780) b!4911001))

(assert (= (and d!1578201 (not c!834780)) b!4911002))

(assert (= (and d!1578201 res!2097834) b!4911003))

(assert (= (and b!4911003 res!2097833) b!4911004))

(declare-fun m!5920840 () Bool)

(assert (=> d!1578201 m!5920840))

(assert (=> d!1578201 m!5920372))

(declare-fun m!5920842 () Bool)

(assert (=> d!1578201 m!5920842))

(declare-fun m!5920844 () Bool)

(assert (=> d!1578201 m!5920844))

(declare-fun m!5920846 () Bool)

(assert (=> b!4911003 m!5920846))

(assert (=> b!4911003 m!5920372))

(declare-fun m!5920848 () Bool)

(assert (=> b!4911003 m!5920848))

(assert (=> b!4911003 m!5920378))

(declare-fun m!5920850 () Bool)

(assert (=> b!4911002 m!5920850))

(assert (=> b!4910490 d!1578201))

(assert (=> b!4910490 d!1578197))

(assert (=> b!4910490 d!1578199))

(assert (=> b!4910490 d!1578187))

(declare-fun d!1578203 () Bool)

(declare-fun lt!2015951 () Int)

(assert (=> d!1578203 (>= lt!2015951 0)))

(declare-fun e!3069628 () Int)

(assert (=> d!1578203 (= lt!2015951 e!3069628)))

(declare-fun c!834781 () Bool)

(assert (=> d!1578203 (= c!834781 ((_ is Nil!56579) (_2!33777 (get!19589 lt!2015679))))))

(assert (=> d!1578203 (= (size!37348 (_2!33777 (get!19589 lt!2015679))) lt!2015951)))

(declare-fun b!4911005 () Bool)

(assert (=> b!4911005 (= e!3069628 0)))

(declare-fun b!4911006 () Bool)

(assert (=> b!4911006 (= e!3069628 (+ 1 (size!37348 (t!367027 (_2!33777 (get!19589 lt!2015679))))))))

(assert (= (and d!1578203 c!834781) b!4911005))

(assert (= (and d!1578203 (not c!834781)) b!4911006))

(declare-fun m!5920852 () Bool)

(assert (=> b!4911006 m!5920852))

(assert (=> b!4910486 d!1578203))

(assert (=> b!4910486 d!1578187))

(assert (=> b!4910486 d!1578135))

(declare-fun d!1578205 () Bool)

(assert (=> d!1578205 (= (isEmpty!30506 lt!2015679) (not ((_ is Some!14140) lt!2015679)))))

(assert (=> d!1578051 d!1578205))

(declare-fun d!1578207 () Bool)

(assert (=> d!1578207 (= (isEmpty!30504 (_1!33780 lt!2015681)) ((_ is Nil!56579) (_1!33780 lt!2015681)))))

(assert (=> d!1578051 d!1578207))

(assert (=> d!1578051 d!1578117))

(assert (=> d!1578051 d!1578061))

(assert (=> b!4910487 d!1578187))

(declare-fun d!1578209 () Bool)

(declare-fun c!834782 () Bool)

(assert (=> d!1578209 (= c!834782 ((_ is Node!14820) (left!41224 (c!834662 input!1509))))))

(declare-fun e!3069629 () Bool)

(assert (=> d!1578209 (= (inv!73135 (left!41224 (c!834662 input!1509))) e!3069629)))

(declare-fun b!4911007 () Bool)

(assert (=> b!4911007 (= e!3069629 (inv!73140 (left!41224 (c!834662 input!1509))))))

(declare-fun b!4911008 () Bool)

(declare-fun e!3069630 () Bool)

(assert (=> b!4911008 (= e!3069629 e!3069630)))

(declare-fun res!2097835 () Bool)

(assert (=> b!4911008 (= res!2097835 (not ((_ is Leaf!24663) (left!41224 (c!834662 input!1509)))))))

(assert (=> b!4911008 (=> res!2097835 e!3069630)))

(declare-fun b!4911009 () Bool)

(assert (=> b!4911009 (= e!3069630 (inv!73141 (left!41224 (c!834662 input!1509))))))

(assert (= (and d!1578209 c!834782) b!4911007))

(assert (= (and d!1578209 (not c!834782)) b!4911008))

(assert (= (and b!4911008 (not res!2097835)) b!4911009))

(declare-fun m!5920854 () Bool)

(assert (=> b!4911007 m!5920854))

(declare-fun m!5920856 () Bool)

(assert (=> b!4911009 m!5920856))

(assert (=> b!4910533 d!1578209))

(declare-fun d!1578211 () Bool)

(declare-fun c!834783 () Bool)

(assert (=> d!1578211 (= c!834783 ((_ is Node!14820) (right!41554 (c!834662 input!1509))))))

(declare-fun e!3069631 () Bool)

(assert (=> d!1578211 (= (inv!73135 (right!41554 (c!834662 input!1509))) e!3069631)))

(declare-fun b!4911010 () Bool)

(assert (=> b!4911010 (= e!3069631 (inv!73140 (right!41554 (c!834662 input!1509))))))

(declare-fun b!4911011 () Bool)

(declare-fun e!3069632 () Bool)

(assert (=> b!4911011 (= e!3069631 e!3069632)))

(declare-fun res!2097836 () Bool)

(assert (=> b!4911011 (= res!2097836 (not ((_ is Leaf!24663) (right!41554 (c!834662 input!1509)))))))

(assert (=> b!4911011 (=> res!2097836 e!3069632)))

(declare-fun b!4911012 () Bool)

(assert (=> b!4911012 (= e!3069632 (inv!73141 (right!41554 (c!834662 input!1509))))))

(assert (= (and d!1578211 c!834783) b!4911010))

(assert (= (and d!1578211 (not c!834783)) b!4911011))

(assert (= (and b!4911011 (not res!2097836)) b!4911012))

(declare-fun m!5920858 () Bool)

(assert (=> b!4911010 m!5920858))

(declare-fun m!5920860 () Bool)

(assert (=> b!4911012 m!5920860))

(assert (=> b!4910533 d!1578211))

(declare-fun b!4911013 () Bool)

(declare-fun e!3069633 () List!56703)

(assert (=> b!4911013 (= e!3069633 Nil!56579)))

(declare-fun b!4911014 () Bool)

(declare-fun e!3069634 () List!56703)

(assert (=> b!4911014 (= e!3069633 e!3069634)))

(declare-fun c!834785 () Bool)

(assert (=> b!4911014 (= c!834785 ((_ is Leaf!24663) (c!834662 (_2!33776 lt!2015641))))))

(declare-fun b!4911016 () Bool)

(assert (=> b!4911016 (= e!3069634 (++!12279 (list!17854 (left!41224 (c!834662 (_2!33776 lt!2015641)))) (list!17854 (right!41554 (c!834662 (_2!33776 lt!2015641))))))))

(declare-fun d!1578213 () Bool)

(declare-fun c!834784 () Bool)

(assert (=> d!1578213 (= c!834784 ((_ is Empty!14820) (c!834662 (_2!33776 lt!2015641))))))

(assert (=> d!1578213 (= (list!17854 (c!834662 (_2!33776 lt!2015641))) e!3069633)))

(declare-fun b!4911015 () Bool)

(assert (=> b!4911015 (= e!3069634 (list!17856 (xs!18136 (c!834662 (_2!33776 lt!2015641)))))))

(assert (= (and d!1578213 c!834784) b!4911013))

(assert (= (and d!1578213 (not c!834784)) b!4911014))

(assert (= (and b!4911014 c!834785) b!4911015))

(assert (= (and b!4911014 (not c!834785)) b!4911016))

(declare-fun m!5920862 () Bool)

(assert (=> b!4911016 m!5920862))

(declare-fun m!5920864 () Bool)

(assert (=> b!4911016 m!5920864))

(assert (=> b!4911016 m!5920862))

(assert (=> b!4911016 m!5920864))

(declare-fun m!5920866 () Bool)

(assert (=> b!4911016 m!5920866))

(declare-fun m!5920868 () Bool)

(assert (=> b!4911015 m!5920868))

(assert (=> d!1578063 d!1578213))

(declare-fun d!1578215 () Bool)

(assert (=> d!1578215 (= (inv!73142 (xs!18136 (c!834662 input!1509))) (<= (size!37348 (innerList!14908 (xs!18136 (c!834662 input!1509)))) 2147483647))))

(declare-fun bs!1177462 () Bool)

(assert (= bs!1177462 d!1578215))

(declare-fun m!5920870 () Bool)

(assert (=> bs!1177462 m!5920870))

(assert (=> b!4910534 d!1578215))

(declare-fun b!4911017 () Bool)

(declare-fun e!3069635 () Bool)

(declare-fun e!3069639 () Bool)

(assert (=> b!4911017 (= e!3069635 e!3069639)))

(declare-fun res!2097844 () Bool)

(assert (=> b!4911017 (=> (not res!2097844) (not e!3069639))))

(declare-fun lt!2015952 () Bool)

(assert (=> b!4911017 (= res!2097844 (not lt!2015952))))

(declare-fun b!4911018 () Bool)

(declare-fun res!2097843 () Bool)

(declare-fun e!3069636 () Bool)

(assert (=> b!4911018 (=> (not res!2097843) (not e!3069636))))

(declare-fun call!341014 () Bool)

(assert (=> b!4911018 (= res!2097843 (not call!341014))))

(declare-fun b!4911019 () Bool)

(declare-fun res!2097842 () Bool)

(assert (=> b!4911019 (=> (not res!2097842) (not e!3069636))))

(assert (=> b!4911019 (= res!2097842 (isEmpty!30504 (tail!9639 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509)))))))))

(declare-fun b!4911020 () Bool)

(declare-fun e!3069637 () Bool)

(assert (=> b!4911020 (= e!3069637 (nullable!4591 (regex!8252 rule!164)))))

(declare-fun bm!341009 () Bool)

(assert (=> bm!341009 (= call!341014 (isEmpty!30504 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))))

(declare-fun b!4911021 () Bool)

(assert (=> b!4911021 (= e!3069636 (= (head!10492 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))) (c!834661 (regex!8252 rule!164))))))

(declare-fun b!4911022 () Bool)

(declare-fun e!3069638 () Bool)

(assert (=> b!4911022 (= e!3069638 (= lt!2015952 call!341014))))

(declare-fun b!4911023 () Bool)

(declare-fun e!3069641 () Bool)

(assert (=> b!4911023 (= e!3069638 e!3069641)))

(declare-fun c!834787 () Bool)

(assert (=> b!4911023 (= c!834787 ((_ is EmptyLang!13327) (regex!8252 rule!164)))))

(declare-fun b!4911024 () Bool)

(assert (=> b!4911024 (= e!3069637 (matchR!6594 (derivativeStep!3911 (regex!8252 rule!164) (head!10492 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509)))))) (tail!9639 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509)))))))))

(declare-fun b!4911025 () Bool)

(assert (=> b!4911025 (= e!3069641 (not lt!2015952))))

(declare-fun d!1578217 () Bool)

(assert (=> d!1578217 e!3069638))

(declare-fun c!834786 () Bool)

(assert (=> d!1578217 (= c!834786 ((_ is EmptyExpr!13327) (regex!8252 rule!164)))))

(assert (=> d!1578217 (= lt!2015952 e!3069637)))

(declare-fun c!834788 () Bool)

(assert (=> d!1578217 (= c!834788 (isEmpty!30504 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))))

(assert (=> d!1578217 (validRegex!5918 (regex!8252 rule!164))))

(assert (=> d!1578217 (= (matchR!6594 (regex!8252 rule!164) (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))) lt!2015952)))

(declare-fun b!4911026 () Bool)

(declare-fun res!2097838 () Bool)

(declare-fun e!3069640 () Bool)

(assert (=> b!4911026 (=> res!2097838 e!3069640)))

(assert (=> b!4911026 (= res!2097838 (not (isEmpty!30504 (tail!9639 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))))))))

(declare-fun b!4911027 () Bool)

(declare-fun res!2097837 () Bool)

(assert (=> b!4911027 (=> res!2097837 e!3069635)))

(assert (=> b!4911027 (= res!2097837 (not ((_ is ElementMatch!13327) (regex!8252 rule!164))))))

(assert (=> b!4911027 (= e!3069641 e!3069635)))

(declare-fun b!4911028 () Bool)

(assert (=> b!4911028 (= e!3069639 e!3069640)))

(declare-fun res!2097839 () Bool)

(assert (=> b!4911028 (=> res!2097839 e!3069640)))

(assert (=> b!4911028 (= res!2097839 call!341014)))

(declare-fun b!4911029 () Bool)

(assert (=> b!4911029 (= e!3069640 (not (= (head!10492 (_1!33780 (findLongestMatchInner!1815 (regex!8252 rule!164) Nil!56579 (size!37348 Nil!56579) (list!17852 input!1509) (list!17852 input!1509) (size!37348 (list!17852 input!1509))))) (c!834661 (regex!8252 rule!164)))))))

(declare-fun b!4911030 () Bool)

(declare-fun res!2097840 () Bool)

(assert (=> b!4911030 (=> res!2097840 e!3069635)))

(assert (=> b!4911030 (= res!2097840 e!3069636)))

(declare-fun res!2097841 () Bool)

(assert (=> b!4911030 (=> (not res!2097841) (not e!3069636))))

(assert (=> b!4911030 (= res!2097841 lt!2015952)))

(assert (= (and d!1578217 c!834788) b!4911020))

(assert (= (and d!1578217 (not c!834788)) b!4911024))

(assert (= (and d!1578217 c!834786) b!4911022))

(assert (= (and d!1578217 (not c!834786)) b!4911023))

(assert (= (and b!4911023 c!834787) b!4911025))

(assert (= (and b!4911023 (not c!834787)) b!4911027))

(assert (= (and b!4911027 (not res!2097837)) b!4911030))

(assert (= (and b!4911030 res!2097841) b!4911018))

(assert (= (and b!4911018 res!2097843) b!4911019))

(assert (= (and b!4911019 res!2097842) b!4911021))

(assert (= (and b!4911030 (not res!2097840)) b!4911017))

(assert (= (and b!4911017 res!2097844) b!4911028))

(assert (= (and b!4911028 (not res!2097839)) b!4911026))

(assert (= (and b!4911026 (not res!2097838)) b!4911029))

(assert (= (or b!4911022 b!4911018 b!4911028) bm!341009))

(assert (=> bm!341009 m!5920400))

(declare-fun m!5920872 () Bool)

(assert (=> b!4911024 m!5920872))

(assert (=> b!4911024 m!5920872))

(declare-fun m!5920874 () Bool)

(assert (=> b!4911024 m!5920874))

(declare-fun m!5920876 () Bool)

(assert (=> b!4911024 m!5920876))

(assert (=> b!4911024 m!5920874))

(assert (=> b!4911024 m!5920876))

(declare-fun m!5920878 () Bool)

(assert (=> b!4911024 m!5920878))

(assert (=> b!4911029 m!5920872))

(assert (=> b!4911021 m!5920872))

(assert (=> d!1578217 m!5920400))

(assert (=> d!1578217 m!5920304))

(assert (=> b!4911020 m!5920412))

(assert (=> b!4911019 m!5920876))

(assert (=> b!4911019 m!5920876))

(declare-fun m!5920880 () Bool)

(assert (=> b!4911019 m!5920880))

(assert (=> b!4911026 m!5920876))

(assert (=> b!4911026 m!5920876))

(assert (=> b!4911026 m!5920880))

(assert (=> b!4910484 d!1578217))

(assert (=> b!4910484 d!1578141))

(assert (=> b!4910484 d!1578185))

(assert (=> b!4910484 d!1578135))

(assert (=> b!4910485 d!1578187))

(declare-fun d!1578219 () Bool)

(assert (=> d!1578219 (= (apply!13596 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679)))) (seqFromList!5994 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679))))) (dynLambda!22946 (toValue!11193 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679))))) (seqFromList!5994 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679))))))))

(declare-fun b_lambda!195961 () Bool)

(assert (=> (not b_lambda!195961) (not d!1578219)))

(declare-fun t!367048 () Bool)

(declare-fun tb!260069 () Bool)

(assert (=> (and b!4910392 (= (toValue!11193 (transformation!8252 rule!164)) (toValue!11193 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679)))))) t!367048) tb!260069))

(declare-fun result!323970 () Bool)

(assert (=> tb!260069 (= result!323970 (inv!21 (dynLambda!22946 (toValue!11193 (transformation!8252 (rule!11468 (_1!33777 (get!19589 lt!2015679))))) (seqFromList!5994 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679)))))))))

(declare-fun m!5920882 () Bool)

(assert (=> tb!260069 m!5920882))

(assert (=> d!1578219 t!367048))

(declare-fun b_and!346737 () Bool)

(assert (= b_and!346725 (and (=> t!367048 result!323970) b_and!346737)))

(assert (=> d!1578219 m!5920366))

(declare-fun m!5920884 () Bool)

(assert (=> d!1578219 m!5920884))

(assert (=> b!4910485 d!1578219))

(declare-fun d!1578221 () Bool)

(assert (=> d!1578221 (= (seqFromList!5994 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679)))) (fromListB!2719 (originalCharacters!8547 (_1!33777 (get!19589 lt!2015679)))))))

(declare-fun bs!1177463 () Bool)

(assert (= bs!1177463 d!1578221))

(declare-fun m!5920886 () Bool)

(assert (=> bs!1177463 m!5920886))

(assert (=> b!4910485 d!1578221))

(declare-fun bs!1177464 () Bool)

(declare-fun d!1578223 () Bool)

(assert (= bs!1177464 (and d!1578223 d!1578131)))

(declare-fun lambda!244730 () Int)

(assert (=> bs!1177464 (= lambda!244730 lambda!244721)))

(assert (=> d!1578223 true))

(assert (=> d!1578223 (< (dynLambda!22944 order!25905 (toChars!11052 (transformation!8252 rule!164))) (dynLambda!22943 order!25903 lambda!244730))))

(assert (=> d!1578223 true))

(assert (=> d!1578223 (< (dynLambda!22941 order!25899 (toValue!11193 (transformation!8252 rule!164))) (dynLambda!22943 order!25903 lambda!244730))))

(declare-fun Forall!1749 (Int) Bool)

(assert (=> d!1578223 (= (semiInverseModEq!3653 (toChars!11052 (transformation!8252 rule!164)) (toValue!11193 (transformation!8252 rule!164))) (Forall!1749 lambda!244730))))

(declare-fun bs!1177465 () Bool)

(assert (= bs!1177465 d!1578223))

(declare-fun m!5920888 () Bool)

(assert (=> bs!1177465 m!5920888))

(assert (=> d!1578059 d!1578223))

(declare-fun d!1578225 () Bool)

(assert (=> d!1578225 (= (isEmpty!30504 (list!17852 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509)))) ((_ is Nil!56579) (list!17852 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509)))))))

(assert (=> d!1578027 d!1578225))

(declare-fun d!1578227 () Bool)

(assert (=> d!1578227 (= (list!17852 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509))) (list!17854 (c!834662 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509)))))))

(declare-fun bs!1177466 () Bool)

(assert (= bs!1177466 d!1578227))

(declare-fun m!5920890 () Bool)

(assert (=> bs!1177466 m!5920890))

(assert (=> d!1578027 d!1578227))

(declare-fun d!1578229 () Bool)

(declare-fun lt!2015955 () Bool)

(assert (=> d!1578229 (= lt!2015955 (isEmpty!30504 (list!17854 (c!834662 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509))))))))

(assert (=> d!1578229 (= lt!2015955 (= (size!37351 (c!834662 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509)))) 0))))

(assert (=> d!1578229 (= (isEmpty!30505 (c!834662 (_1!33778 (findLongestMatchWithZipperSequence!340 (regex!8252 rule!164) input!1509)))) lt!2015955)))

(declare-fun bs!1177467 () Bool)

(assert (= bs!1177467 d!1578229))

(assert (=> bs!1177467 m!5920890))

(assert (=> bs!1177467 m!5920890))

(declare-fun m!5920892 () Bool)

(assert (=> bs!1177467 m!5920892))

(declare-fun m!5920894 () Bool)

(assert (=> bs!1177467 m!5920894))

(assert (=> d!1578027 d!1578229))

(assert (=> d!1578061 d!1578113))

(declare-fun d!1578231 () Bool)

(declare-fun nullableFct!1250 (Regex!13327) Bool)

(assert (=> d!1578231 (= (nullable!4591 (regex!8252 rule!164)) (nullableFct!1250 (regex!8252 rule!164)))))

(declare-fun bs!1177468 () Bool)

(assert (= bs!1177468 d!1578231))

(declare-fun m!5920896 () Bool)

(assert (=> bs!1177468 m!5920896))

(assert (=> b!4910500 d!1578231))

(declare-fun d!1578233 () Bool)

(assert (=> d!1578233 (= (isEmpty!30506 lt!2015639) (not ((_ is Some!14140) lt!2015639)))))

(assert (=> d!1578049 d!1578233))

(declare-fun e!3069643 () Bool)

(assert (=> b!4910523 (= tp!1380852 e!3069643)))

(declare-fun b!4911036 () Bool)

(declare-fun tp!1380919 () Bool)

(declare-fun tp!1380922 () Bool)

(assert (=> b!4911036 (= e!3069643 (and tp!1380919 tp!1380922))))

(declare-fun b!4911038 () Bool)

(declare-fun tp!1380918 () Bool)

(declare-fun tp!1380921 () Bool)

(assert (=> b!4911038 (= e!3069643 (and tp!1380918 tp!1380921))))

(declare-fun b!4911037 () Bool)

(declare-fun tp!1380920 () Bool)

(assert (=> b!4911037 (= e!3069643 tp!1380920)))

(declare-fun b!4911035 () Bool)

(assert (=> b!4911035 (= e!3069643 tp_is_empty!35859)))

(assert (= (and b!4910523 ((_ is ElementMatch!13327) (reg!13656 (regex!8252 rule!164)))) b!4911035))

(assert (= (and b!4910523 ((_ is Concat!21889) (reg!13656 (regex!8252 rule!164)))) b!4911036))

(assert (= (and b!4910523 ((_ is Star!13327) (reg!13656 (regex!8252 rule!164)))) b!4911037))

(assert (= (and b!4910523 ((_ is Union!13327) (reg!13656 (regex!8252 rule!164)))) b!4911038))

(declare-fun e!3069644 () Bool)

(assert (=> b!4910524 (= tp!1380850 e!3069644)))

(declare-fun b!4911040 () Bool)

(declare-fun tp!1380924 () Bool)

(declare-fun tp!1380927 () Bool)

(assert (=> b!4911040 (= e!3069644 (and tp!1380924 tp!1380927))))

(declare-fun b!4911042 () Bool)

(declare-fun tp!1380923 () Bool)

(declare-fun tp!1380926 () Bool)

(assert (=> b!4911042 (= e!3069644 (and tp!1380923 tp!1380926))))

(declare-fun b!4911041 () Bool)

(declare-fun tp!1380925 () Bool)

(assert (=> b!4911041 (= e!3069644 tp!1380925)))

(declare-fun b!4911039 () Bool)

(assert (=> b!4911039 (= e!3069644 tp_is_empty!35859)))

(assert (= (and b!4910524 ((_ is ElementMatch!13327) (regOne!27167 (regex!8252 rule!164)))) b!4911039))

(assert (= (and b!4910524 ((_ is Concat!21889) (regOne!27167 (regex!8252 rule!164)))) b!4911040))

(assert (= (and b!4910524 ((_ is Star!13327) (regOne!27167 (regex!8252 rule!164)))) b!4911041))

(assert (= (and b!4910524 ((_ is Union!13327) (regOne!27167 (regex!8252 rule!164)))) b!4911042))

(declare-fun e!3069645 () Bool)

(assert (=> b!4910524 (= tp!1380853 e!3069645)))

(declare-fun b!4911044 () Bool)

(declare-fun tp!1380929 () Bool)

(declare-fun tp!1380932 () Bool)

(assert (=> b!4911044 (= e!3069645 (and tp!1380929 tp!1380932))))

(declare-fun b!4911046 () Bool)

(declare-fun tp!1380928 () Bool)

(declare-fun tp!1380931 () Bool)

(assert (=> b!4911046 (= e!3069645 (and tp!1380928 tp!1380931))))

(declare-fun b!4911045 () Bool)

(declare-fun tp!1380930 () Bool)

(assert (=> b!4911045 (= e!3069645 tp!1380930)))

(declare-fun b!4911043 () Bool)

(assert (=> b!4911043 (= e!3069645 tp_is_empty!35859)))

(assert (= (and b!4910524 ((_ is ElementMatch!13327) (regTwo!27167 (regex!8252 rule!164)))) b!4911043))

(assert (= (and b!4910524 ((_ is Concat!21889) (regTwo!27167 (regex!8252 rule!164)))) b!4911044))

(assert (= (and b!4910524 ((_ is Star!13327) (regTwo!27167 (regex!8252 rule!164)))) b!4911045))

(assert (= (and b!4910524 ((_ is Union!13327) (regTwo!27167 (regex!8252 rule!164)))) b!4911046))

(declare-fun b!4911047 () Bool)

(declare-fun tp!1380934 () Bool)

(declare-fun tp!1380935 () Bool)

(declare-fun e!3069647 () Bool)

(assert (=> b!4911047 (= e!3069647 (and (inv!73135 (left!41224 (left!41224 (c!834662 input!1509)))) tp!1380935 (inv!73135 (right!41554 (left!41224 (c!834662 input!1509)))) tp!1380934))))

(declare-fun b!4911049 () Bool)

(declare-fun e!3069646 () Bool)

(declare-fun tp!1380933 () Bool)

(assert (=> b!4911049 (= e!3069646 tp!1380933)))

(declare-fun b!4911048 () Bool)

(assert (=> b!4911048 (= e!3069647 (and (inv!73142 (xs!18136 (left!41224 (c!834662 input!1509)))) e!3069646))))

(assert (=> b!4910533 (= tp!1380863 (and (inv!73135 (left!41224 (c!834662 input!1509))) e!3069647))))

(assert (= (and b!4910533 ((_ is Node!14820) (left!41224 (c!834662 input!1509)))) b!4911047))

(assert (= b!4911048 b!4911049))

(assert (= (and b!4910533 ((_ is Leaf!24663) (left!41224 (c!834662 input!1509)))) b!4911048))

(declare-fun m!5920898 () Bool)

(assert (=> b!4911047 m!5920898))

(declare-fun m!5920900 () Bool)

(assert (=> b!4911047 m!5920900))

(declare-fun m!5920902 () Bool)

(assert (=> b!4911048 m!5920902))

(assert (=> b!4910533 m!5920420))

(declare-fun tp!1380938 () Bool)

(declare-fun tp!1380937 () Bool)

(declare-fun e!3069649 () Bool)

(declare-fun b!4911050 () Bool)

(assert (=> b!4911050 (= e!3069649 (and (inv!73135 (left!41224 (right!41554 (c!834662 input!1509)))) tp!1380938 (inv!73135 (right!41554 (right!41554 (c!834662 input!1509)))) tp!1380937))))

(declare-fun b!4911052 () Bool)

(declare-fun e!3069648 () Bool)

(declare-fun tp!1380936 () Bool)

(assert (=> b!4911052 (= e!3069648 tp!1380936)))

(declare-fun b!4911051 () Bool)

(assert (=> b!4911051 (= e!3069649 (and (inv!73142 (xs!18136 (right!41554 (c!834662 input!1509)))) e!3069648))))

(assert (=> b!4910533 (= tp!1380862 (and (inv!73135 (right!41554 (c!834662 input!1509))) e!3069649))))

(assert (= (and b!4910533 ((_ is Node!14820) (right!41554 (c!834662 input!1509)))) b!4911050))

(assert (= b!4911051 b!4911052))

(assert (= (and b!4910533 ((_ is Leaf!24663) (right!41554 (c!834662 input!1509)))) b!4911051))

(declare-fun m!5920904 () Bool)

(assert (=> b!4911050 m!5920904))

(declare-fun m!5920906 () Bool)

(assert (=> b!4911050 m!5920906))

(declare-fun m!5920908 () Bool)

(assert (=> b!4911051 m!5920908))

(assert (=> b!4910533 m!5920422))

(declare-fun e!3069650 () Bool)

(assert (=> b!4910522 (= tp!1380851 e!3069650)))

(declare-fun b!4911054 () Bool)

(declare-fun tp!1380940 () Bool)

(declare-fun tp!1380943 () Bool)

(assert (=> b!4911054 (= e!3069650 (and tp!1380940 tp!1380943))))

(declare-fun b!4911056 () Bool)

(declare-fun tp!1380939 () Bool)

(declare-fun tp!1380942 () Bool)

(assert (=> b!4911056 (= e!3069650 (and tp!1380939 tp!1380942))))

(declare-fun b!4911055 () Bool)

(declare-fun tp!1380941 () Bool)

(assert (=> b!4911055 (= e!3069650 tp!1380941)))

(declare-fun b!4911053 () Bool)

(assert (=> b!4911053 (= e!3069650 tp_is_empty!35859)))

(assert (= (and b!4910522 ((_ is ElementMatch!13327) (regOne!27166 (regex!8252 rule!164)))) b!4911053))

(assert (= (and b!4910522 ((_ is Concat!21889) (regOne!27166 (regex!8252 rule!164)))) b!4911054))

(assert (= (and b!4910522 ((_ is Star!13327) (regOne!27166 (regex!8252 rule!164)))) b!4911055))

(assert (= (and b!4910522 ((_ is Union!13327) (regOne!27166 (regex!8252 rule!164)))) b!4911056))

(declare-fun e!3069651 () Bool)

(assert (=> b!4910522 (= tp!1380854 e!3069651)))

(declare-fun b!4911058 () Bool)

(declare-fun tp!1380945 () Bool)

(declare-fun tp!1380948 () Bool)

(assert (=> b!4911058 (= e!3069651 (and tp!1380945 tp!1380948))))

(declare-fun b!4911060 () Bool)

(declare-fun tp!1380944 () Bool)

(declare-fun tp!1380947 () Bool)

(assert (=> b!4911060 (= e!3069651 (and tp!1380944 tp!1380947))))

(declare-fun b!4911059 () Bool)

(declare-fun tp!1380946 () Bool)

(assert (=> b!4911059 (= e!3069651 tp!1380946)))

(declare-fun b!4911057 () Bool)

(assert (=> b!4911057 (= e!3069651 tp_is_empty!35859)))

(assert (= (and b!4910522 ((_ is ElementMatch!13327) (regTwo!27166 (regex!8252 rule!164)))) b!4911057))

(assert (= (and b!4910522 ((_ is Concat!21889) (regTwo!27166 (regex!8252 rule!164)))) b!4911058))

(assert (= (and b!4910522 ((_ is Star!13327) (regTwo!27166 (regex!8252 rule!164)))) b!4911059))

(assert (= (and b!4910522 ((_ is Union!13327) (regTwo!27166 (regex!8252 rule!164)))) b!4911060))

(declare-fun b!4911065 () Bool)

(declare-fun e!3069654 () Bool)

(declare-fun tp!1380951 () Bool)

(assert (=> b!4911065 (= e!3069654 (and tp_is_empty!35859 tp!1380951))))

(assert (=> b!4910535 (= tp!1380861 e!3069654)))

(assert (= (and b!4910535 ((_ is Cons!56579) (innerList!14908 (xs!18136 (c!834662 input!1509))))) b!4911065))

(declare-fun b_lambda!195963 () Bool)

(assert (= b_lambda!195941 (or (and b!4910392 b_free!131979) b_lambda!195963)))

(declare-fun b_lambda!195965 () Bool)

(assert (= b_lambda!195943 (or (and b!4910392 b_free!131979) b_lambda!195965)))

(declare-fun b_lambda!195967 () Bool)

(assert (= b_lambda!195939 (or (and b!4910392 b_free!131981) b_lambda!195967)))

(check-sat (not b!4910697) (not b!4911041) (not b!4910936) (not b!4911024) (not b_next!132769) (not d!1578215) (not b!4911052) (not d!1578117) (not b!4911046) (not b!4910987) (not d!1578199) (not bm!341003) (not b!4910982) (not b!4911040) (not b!4910985) (not b!4911054) (not b!4911036) (not bm!341004) (not b!4911021) (not d!1578129) (not b!4910980) (not b!4911007) (not b!4911029) (not d!1578195) (not b!4911012) (not b!4910992) (not tb!260059) (not bm!341001) (not b!4910938) (not bm!341002) (not tb!260069) (not b!4911009) (not d!1578133) (not b!4911016) (not b!4910939) (not b!4911020) (not bm!340998) (not b!4910731) (not b!4910937) (not b_lambda!195963) (not b!4911059) (not tb!260067) (not b!4910940) (not bm!341008) (not d!1578201) (not b!4910935) (not d!1578231) (not b!4911006) (not b!4910772) (not b!4911051) (not d!1578119) (not b!4910981) (not b!4911015) (not b!4910903) (not tb!260057) (not b!4910918) (not d!1578221) (not b!4911019) (not d!1578111) (not b!4910737) (not b!4910784) (not b!4911042) (not d!1578131) (not b!4911049) (not b!4910533) (not d!1578183) (not b!4911037) (not b!4910990) (not b!4911026) (not d!1578115) (not b!4911060) (not b!4910698) (not d!1578193) (not bm!340999) (not b_lambda!195961) (not b_lambda!195959) (not b_lambda!195967) (not b!4911010) (not b!4911002) (not bm!340955) (not d!1578197) (not b!4911044) (not b!4911055) b_and!346735 (not d!1578229) (not b!4911048) (not b!4911045) (not bm!341009) (not bm!340954) (not b!4911038) (not b!4910912) (not b!4911003) (not d!1578227) (not b!4911056) (not b_next!132771) (not d!1578181) (not b!4911050) (not b_lambda!195965) (not d!1578141) b_and!346737 (not b!4911058) (not b!4911065) (not bm!341005) tp_is_empty!35859 (not d!1578223) (not b!4911047) (not b!4910911) (not b!4910922) (not b!4910920) (not b!4910732) (not d!1578121) (not bm!341000) (not d!1578217) (not b!4910690) (not b!4910914) (not b!4910948))
(check-sat b_and!346735 b_and!346737 (not b_next!132771) (not b_next!132769))
