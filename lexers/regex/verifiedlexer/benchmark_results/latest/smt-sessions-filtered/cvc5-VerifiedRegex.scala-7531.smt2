; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!397648 () Bool)

(assert start!397648)

(declare-fun b!4170819 () Bool)

(declare-fun b_free!120691 () Bool)

(declare-fun b_next!121395 () Bool)

(assert (=> b!4170819 (= b_free!120691 (not b_next!121395))))

(declare-fun tp!1274274 () Bool)

(declare-fun b_and!325657 () Bool)

(assert (=> b!4170819 (= tp!1274274 b_and!325657)))

(declare-fun b_free!120693 () Bool)

(declare-fun b_next!121397 () Bool)

(assert (=> b!4170819 (= b_free!120693 (not b_next!121397))))

(declare-fun tp!1274283 () Bool)

(declare-fun b_and!325659 () Bool)

(assert (=> b!4170819 (= tp!1274283 b_and!325659)))

(declare-fun b!4170829 () Bool)

(declare-fun b_free!120695 () Bool)

(declare-fun b_next!121399 () Bool)

(assert (=> b!4170829 (= b_free!120695 (not b_next!121399))))

(declare-fun tp!1274278 () Bool)

(declare-fun b_and!325661 () Bool)

(assert (=> b!4170829 (= tp!1274278 b_and!325661)))

(declare-fun b_free!120697 () Bool)

(declare-fun b_next!121401 () Bool)

(assert (=> b!4170829 (= b_free!120697 (not b_next!121401))))

(declare-fun tp!1274272 () Bool)

(declare-fun b_and!325663 () Bool)

(assert (=> b!4170829 (= tp!1274272 b_and!325663)))

(declare-fun b!4170828 () Bool)

(declare-fun b_free!120699 () Bool)

(declare-fun b_next!121403 () Bool)

(assert (=> b!4170828 (= b_free!120699 (not b_next!121403))))

(declare-fun tp!1274280 () Bool)

(declare-fun b_and!325665 () Bool)

(assert (=> b!4170828 (= tp!1274280 b_and!325665)))

(declare-fun b_free!120701 () Bool)

(declare-fun b_next!121405 () Bool)

(assert (=> b!4170828 (= b_free!120701 (not b_next!121405))))

(declare-fun tp!1274282 () Bool)

(declare-fun b_and!325667 () Bool)

(assert (=> b!4170828 (= tp!1274282 b_and!325667)))

(declare-fun b!4170811 () Bool)

(declare-fun e!2589320 () Bool)

(assert (=> b!4170811 (= e!2589320 true)))

(declare-fun lt!1485250 () Bool)

(declare-datatypes ((LexerInterface!7170 0))(
  ( (LexerInterfaceExt!7167 (__x!27835 Int)) (Lexer!7168) )
))
(declare-fun thiss!25986 () LexerInterface!7170)

(declare-datatypes ((List!45826 0))(
  ( (Nil!45702) (Cons!45702 (h!51122 (_ BitVec 16)) (t!344369 List!45826)) )
))
(declare-datatypes ((TokenValue!7807 0))(
  ( (FloatLiteralValue!15614 (text!55094 List!45826)) (TokenValueExt!7806 (__x!27836 Int)) (Broken!39035 (value!236452 List!45826)) (Object!7930) (End!7807) (Def!7807) (Underscore!7807) (Match!7807) (Else!7807) (Error!7807) (Case!7807) (If!7807) (Extends!7807) (Abstract!7807) (Class!7807) (Val!7807) (DelimiterValue!15614 (del!7867 List!45826)) (KeywordValue!7813 (value!236453 List!45826)) (CommentValue!15614 (value!236454 List!45826)) (WhitespaceValue!15614 (value!236455 List!45826)) (IndentationValue!7807 (value!236456 List!45826)) (String!52902) (Int32!7807) (Broken!39036 (value!236457 List!45826)) (Boolean!7808) (Unit!64769) (OperatorValue!7810 (op!7867 List!45826)) (IdentifierValue!15614 (value!236458 List!45826)) (IdentifierValue!15615 (value!236459 List!45826)) (WhitespaceValue!15615 (value!236460 List!45826)) (True!15614) (False!15614) (Broken!39037 (value!236461 List!45826)) (Broken!39038 (value!236462 List!45826)) (True!15615) (RightBrace!7807) (RightBracket!7807) (Colon!7807) (Null!7807) (Comma!7807) (LeftBracket!7807) (False!15615) (LeftBrace!7807) (ImaginaryLiteralValue!7807 (text!55095 List!45826)) (StringLiteralValue!23421 (value!236463 List!45826)) (EOFValue!7807 (value!236464 List!45826)) (IdentValue!7807 (value!236465 List!45826)) (DelimiterValue!15615 (value!236466 List!45826)) (DedentValue!7807 (value!236467 List!45826)) (NewLineValue!7807 (value!236468 List!45826)) (IntegerValue!23421 (value!236469 (_ BitVec 32)) (text!55096 List!45826)) (IntegerValue!23422 (value!236470 Int) (text!55097 List!45826)) (Times!7807) (Or!7807) (Equal!7807) (Minus!7807) (Broken!39039 (value!236471 List!45826)) (And!7807) (Div!7807) (LessEqual!7807) (Mod!7807) (Concat!20289) (Not!7807) (Plus!7807) (SpaceValue!7807 (value!236472 List!45826)) (IntegerValue!23423 (value!236473 Int) (text!55098 List!45826)) (StringLiteralValue!23422 (text!55099 List!45826)) (FloatLiteralValue!15615 (text!55100 List!45826)) (BytesLiteralValue!7807 (value!236474 List!45826)) (CommentValue!15615 (value!236475 List!45826)) (StringLiteralValue!23423 (value!236476 List!45826)) (ErrorTokenValue!7807 (msg!7868 List!45826)) )
))
(declare-datatypes ((C!25154 0))(
  ( (C!25155 (val!14739 Int)) )
))
(declare-datatypes ((List!45827 0))(
  ( (Nil!45703) (Cons!45703 (h!51123 C!25154) (t!344370 List!45827)) )
))
(declare-datatypes ((IArray!27581 0))(
  ( (IArray!27582 (innerList!13848 List!45827)) )
))
(declare-datatypes ((Conc!13788 0))(
  ( (Node!13788 (left!34067 Conc!13788) (right!34397 Conc!13788) (csize!27806 Int) (cheight!13999 Int)) (Leaf!21320 (xs!17094 IArray!27581) (csize!27807 Int)) (Empty!13788) )
))
(declare-datatypes ((BalanceConc!27170 0))(
  ( (BalanceConc!27171 (c!712899 Conc!13788)) )
))
(declare-datatypes ((Regex!12482 0))(
  ( (ElementMatch!12482 (c!712900 C!25154)) (Concat!20290 (regOne!25476 Regex!12482) (regTwo!25476 Regex!12482)) (EmptyExpr!12482) (Star!12482 (reg!12811 Regex!12482)) (EmptyLang!12482) (Union!12482 (regOne!25477 Regex!12482) (regTwo!25477 Regex!12482)) )
))
(declare-datatypes ((String!52903 0))(
  ( (String!52904 (value!236477 String)) )
))
(declare-datatypes ((TokenValueInjection!15042 0))(
  ( (TokenValueInjection!15043 (toValue!10257 Int) (toChars!10116 Int)) )
))
(declare-datatypes ((Rule!14954 0))(
  ( (Rule!14955 (regex!7577 Regex!12482) (tag!8441 String!52903) (isSeparator!7577 Bool) (transformation!7577 TokenValueInjection!15042)) )
))
(declare-fun rBis!167 () Rule!14954)

(declare-fun ruleValid!3295 (LexerInterface!7170 Rule!14954) Bool)

(assert (=> b!4170811 (= lt!1485250 (ruleValid!3295 thiss!25986 rBis!167))))

(declare-fun b!4170812 () Bool)

(declare-fun res!1709002 () Bool)

(declare-fun e!2589328 () Bool)

(assert (=> b!4170812 (=> (not res!1709002) (not e!2589328))))

(declare-datatypes ((List!45828 0))(
  ( (Nil!45704) (Cons!45704 (h!51124 Rule!14954) (t!344371 List!45828)) )
))
(declare-fun rules!3843 () List!45828)

(declare-fun rulesInvariant!6383 (LexerInterface!7170 List!45828) Bool)

(assert (=> b!4170812 (= res!1709002 (rulesInvariant!6383 thiss!25986 rules!3843))))

(declare-fun b!4170813 () Bool)

(declare-fun e!2589329 () Bool)

(declare-fun tp_is_empty!21927 () Bool)

(declare-fun tp!1274275 () Bool)

(assert (=> b!4170813 (= e!2589329 (and tp_is_empty!21927 tp!1274275))))

(declare-fun e!2589333 () Bool)

(declare-fun b!4170814 () Bool)

(declare-fun tp!1274281 () Bool)

(declare-fun e!2589324 () Bool)

(declare-fun inv!60230 (String!52903) Bool)

(declare-fun inv!60233 (TokenValueInjection!15042) Bool)

(assert (=> b!4170814 (= e!2589333 (and tp!1274281 (inv!60230 (tag!8441 rBis!167)) (inv!60233 (transformation!7577 rBis!167)) e!2589324))))

(declare-fun b!4170815 () Bool)

(declare-fun res!1709003 () Bool)

(assert (=> b!4170815 (=> (not res!1709003) (not e!2589328))))

(declare-fun r!4142 () Rule!14954)

(assert (=> b!4170815 (= res!1709003 (ruleValid!3295 thiss!25986 r!4142))))

(declare-fun b!4170816 () Bool)

(assert (=> b!4170816 (= e!2589328 (not e!2589320))))

(declare-fun res!1708997 () Bool)

(assert (=> b!4170816 (=> res!1708997 e!2589320)))

(declare-fun p!2959 () List!45827)

(declare-fun lt!1485245 () TokenValue!7807)

(declare-fun input!3342 () List!45827)

(declare-fun lt!1485248 () Int)

(declare-datatypes ((Token!13868 0))(
  ( (Token!13869 (value!236478 TokenValue!7807) (rule!10623 Rule!14954) (size!33547 Int) (originalCharacters!7965 List!45827)) )
))
(declare-datatypes ((tuple2!43564 0))(
  ( (tuple2!43565 (_1!24916 Token!13868) (_2!24916 List!45827)) )
))
(declare-datatypes ((Option!9773 0))(
  ( (None!9772) (Some!9772 (v!40564 tuple2!43564)) )
))
(declare-fun maxPrefixOneRule!3181 (LexerInterface!7170 Rule!14954 List!45827) Option!9773)

(declare-fun getSuffix!2729 (List!45827 List!45827) List!45827)

(assert (=> b!4170816 (= res!1708997 (not (= (maxPrefixOneRule!3181 thiss!25986 r!4142 input!3342) (Some!9772 (tuple2!43565 (Token!13869 lt!1485245 r!4142 lt!1485248 p!2959) (getSuffix!2729 input!3342 p!2959))))))))

(declare-fun size!33548 (List!45827) Int)

(assert (=> b!4170816 (= lt!1485248 (size!33548 p!2959))))

(declare-fun lt!1485247 () BalanceConc!27170)

(declare-fun apply!10542 (TokenValueInjection!15042 BalanceConc!27170) TokenValue!7807)

(assert (=> b!4170816 (= lt!1485245 (apply!10542 (transformation!7577 r!4142) lt!1485247))))

(declare-fun isPrefix!4434 (List!45827 List!45827) Bool)

(assert (=> b!4170816 (isPrefix!4434 input!3342 input!3342)))

(declare-datatypes ((Unit!64770 0))(
  ( (Unit!64771) )
))
(declare-fun lt!1485249 () Unit!64770)

(declare-fun lemmaIsPrefixRefl!2863 (List!45827 List!45827) Unit!64770)

(assert (=> b!4170816 (= lt!1485249 (lemmaIsPrefixRefl!2863 input!3342 input!3342))))

(declare-fun lt!1485246 () Unit!64770)

(declare-fun lemmaSemiInverse!2343 (TokenValueInjection!15042 BalanceConc!27170) Unit!64770)

(assert (=> b!4170816 (= lt!1485246 (lemmaSemiInverse!2343 (transformation!7577 r!4142) lt!1485247))))

(declare-fun seqFromList!5602 (List!45827) BalanceConc!27170)

(assert (=> b!4170816 (= lt!1485247 (seqFromList!5602 p!2959))))

(declare-fun b!4170817 () Bool)

(declare-fun res!1709000 () Bool)

(assert (=> b!4170817 (=> (not res!1709000) (not e!2589328))))

(declare-fun pBis!107 () List!45827)

(assert (=> b!4170817 (= res!1709000 (isPrefix!4434 pBis!107 input!3342))))

(declare-fun b!4170818 () Bool)

(declare-fun e!2589323 () Bool)

(declare-fun e!2589319 () Bool)

(declare-fun tp!1274276 () Bool)

(assert (=> b!4170818 (= e!2589323 (and e!2589319 tp!1274276))))

(declare-fun res!1708994 () Bool)

(assert (=> start!397648 (=> (not res!1708994) (not e!2589328))))

(assert (=> start!397648 (= res!1708994 (is-Lexer!7168 thiss!25986))))

(assert (=> start!397648 e!2589328))

(assert (=> start!397648 true))

(assert (=> start!397648 e!2589333))

(declare-fun e!2589322 () Bool)

(assert (=> start!397648 e!2589322))

(assert (=> start!397648 e!2589323))

(declare-fun e!2589321 () Bool)

(assert (=> start!397648 e!2589321))

(declare-fun e!2589325 () Bool)

(assert (=> start!397648 e!2589325))

(assert (=> start!397648 e!2589329))

(declare-fun e!2589330 () Bool)

(assert (=> b!4170819 (= e!2589330 (and tp!1274274 tp!1274283))))

(declare-fun b!4170820 () Bool)

(declare-fun res!1708998 () Bool)

(assert (=> b!4170820 (=> (not res!1708998) (not e!2589328))))

(declare-fun isEmpty!27038 (List!45828) Bool)

(assert (=> b!4170820 (= res!1708998 (not (isEmpty!27038 rules!3843)))))

(declare-fun tp!1274273 () Bool)

(declare-fun b!4170821 () Bool)

(assert (=> b!4170821 (= e!2589322 (and tp!1274273 (inv!60230 (tag!8441 r!4142)) (inv!60233 (transformation!7577 r!4142)) e!2589330))))

(declare-fun b!4170822 () Bool)

(declare-fun res!1708999 () Bool)

(assert (=> b!4170822 (=> res!1708999 e!2589320)))

(assert (=> b!4170822 (= res!1708999 (<= (size!33548 pBis!107) lt!1485248))))

(declare-fun b!4170823 () Bool)

(declare-fun res!1708996 () Bool)

(assert (=> b!4170823 (=> (not res!1708996) (not e!2589328))))

(declare-fun validRegex!5599 (Regex!12482) Bool)

(assert (=> b!4170823 (= res!1708996 (validRegex!5599 (regex!7577 r!4142)))))

(declare-fun b!4170824 () Bool)

(declare-fun tp!1274279 () Bool)

(assert (=> b!4170824 (= e!2589325 (and tp_is_empty!21927 tp!1274279))))

(declare-fun b!4170825 () Bool)

(declare-fun res!1708993 () Bool)

(assert (=> b!4170825 (=> (not res!1708993) (not e!2589328))))

(declare-fun contains!9378 (List!45828 Rule!14954) Bool)

(assert (=> b!4170825 (= res!1708993 (contains!9378 rules!3843 rBis!167))))

(declare-fun b!4170826 () Bool)

(declare-fun res!1709001 () Bool)

(assert (=> b!4170826 (=> (not res!1709001) (not e!2589328))))

(assert (=> b!4170826 (= res!1709001 (isPrefix!4434 p!2959 input!3342))))

(declare-fun b!4170827 () Bool)

(declare-fun tp!1274271 () Bool)

(assert (=> b!4170827 (= e!2589321 (and tp_is_empty!21927 tp!1274271))))

(assert (=> b!4170828 (= e!2589324 (and tp!1274280 tp!1274282))))

(declare-fun e!2589332 () Bool)

(assert (=> b!4170829 (= e!2589332 (and tp!1274278 tp!1274272))))

(declare-fun tp!1274277 () Bool)

(declare-fun b!4170830 () Bool)

(assert (=> b!4170830 (= e!2589319 (and tp!1274277 (inv!60230 (tag!8441 (h!51124 rules!3843))) (inv!60233 (transformation!7577 (h!51124 rules!3843))) e!2589332))))

(declare-fun b!4170831 () Bool)

(declare-fun res!1709004 () Bool)

(assert (=> b!4170831 (=> (not res!1709004) (not e!2589328))))

(assert (=> b!4170831 (= res!1709004 (contains!9378 rules!3843 r!4142))))

(declare-fun b!4170832 () Bool)

(declare-fun res!1708995 () Bool)

(assert (=> b!4170832 (=> (not res!1708995) (not e!2589328))))

(declare-fun matchR!6221 (Regex!12482 List!45827) Bool)

(assert (=> b!4170832 (= res!1708995 (matchR!6221 (regex!7577 r!4142) p!2959))))

(assert (= (and start!397648 res!1708994) b!4170826))

(assert (= (and b!4170826 res!1709001) b!4170817))

(assert (= (and b!4170817 res!1709000) b!4170820))

(assert (= (and b!4170820 res!1708998) b!4170812))

(assert (= (and b!4170812 res!1709002) b!4170831))

(assert (= (and b!4170831 res!1709004) b!4170825))

(assert (= (and b!4170825 res!1708993) b!4170823))

(assert (= (and b!4170823 res!1708996) b!4170832))

(assert (= (and b!4170832 res!1708995) b!4170815))

(assert (= (and b!4170815 res!1709003) b!4170816))

(assert (= (and b!4170816 (not res!1708997)) b!4170822))

(assert (= (and b!4170822 (not res!1708999)) b!4170811))

(assert (= b!4170814 b!4170828))

(assert (= start!397648 b!4170814))

(assert (= b!4170821 b!4170819))

(assert (= start!397648 b!4170821))

(assert (= b!4170830 b!4170829))

(assert (= b!4170818 b!4170830))

(assert (= (and start!397648 (is-Cons!45704 rules!3843)) b!4170818))

(assert (= (and start!397648 (is-Cons!45703 input!3342)) b!4170827))

(assert (= (and start!397648 (is-Cons!45703 pBis!107)) b!4170824))

(assert (= (and start!397648 (is-Cons!45703 p!2959)) b!4170813))

(declare-fun m!4761331 () Bool)

(assert (=> b!4170823 m!4761331))

(declare-fun m!4761333 () Bool)

(assert (=> b!4170822 m!4761333))

(declare-fun m!4761335 () Bool)

(assert (=> b!4170830 m!4761335))

(declare-fun m!4761337 () Bool)

(assert (=> b!4170830 m!4761337))

(declare-fun m!4761339 () Bool)

(assert (=> b!4170817 m!4761339))

(declare-fun m!4761341 () Bool)

(assert (=> b!4170814 m!4761341))

(declare-fun m!4761343 () Bool)

(assert (=> b!4170814 m!4761343))

(declare-fun m!4761345 () Bool)

(assert (=> b!4170820 m!4761345))

(declare-fun m!4761347 () Bool)

(assert (=> b!4170815 m!4761347))

(declare-fun m!4761349 () Bool)

(assert (=> b!4170821 m!4761349))

(declare-fun m!4761351 () Bool)

(assert (=> b!4170821 m!4761351))

(declare-fun m!4761353 () Bool)

(assert (=> b!4170831 m!4761353))

(declare-fun m!4761355 () Bool)

(assert (=> b!4170816 m!4761355))

(declare-fun m!4761357 () Bool)

(assert (=> b!4170816 m!4761357))

(declare-fun m!4761359 () Bool)

(assert (=> b!4170816 m!4761359))

(declare-fun m!4761361 () Bool)

(assert (=> b!4170816 m!4761361))

(declare-fun m!4761363 () Bool)

(assert (=> b!4170816 m!4761363))

(declare-fun m!4761365 () Bool)

(assert (=> b!4170816 m!4761365))

(declare-fun m!4761367 () Bool)

(assert (=> b!4170816 m!4761367))

(declare-fun m!4761369 () Bool)

(assert (=> b!4170816 m!4761369))

(declare-fun m!4761371 () Bool)

(assert (=> b!4170826 m!4761371))

(declare-fun m!4761373 () Bool)

(assert (=> b!4170832 m!4761373))

(declare-fun m!4761375 () Bool)

(assert (=> b!4170811 m!4761375))

(declare-fun m!4761377 () Bool)

(assert (=> b!4170825 m!4761377))

(declare-fun m!4761379 () Bool)

(assert (=> b!4170812 m!4761379))

(push 1)

(assert b_and!325667)

(assert b_and!325663)

(assert (not b!4170815))

(assert (not b_next!121399))

(assert (not b!4170821))

(assert (not b!4170811))

(assert (not b!4170824))

(assert (not b!4170827))

(assert b_and!325657)

(assert (not b_next!121403))

(assert (not b!4170820))

(assert (not b!4170817))

(assert (not b!4170823))

(assert (not b!4170830))

(assert (not b_next!121405))

(assert b_and!325661)

(assert (not b!4170816))

(assert b_and!325665)

(assert (not b!4170825))

(assert (not b!4170832))

(assert tp_is_empty!21927)

(assert b_and!325659)

(assert (not b_next!121401))

(assert (not b!4170814))

(assert (not b_next!121395))

(assert (not b_next!121397))

(assert (not b!4170812))

(assert (not b!4170813))

(assert (not b!4170822))

(assert (not b!4170826))

(assert (not b!4170818))

(assert (not b!4170831))

(check-sat)

(pop 1)

(push 1)

(assert b_and!325667)

(assert b_and!325663)

(assert (not b_next!121399))

(assert b_and!325657)

(assert (not b_next!121403))

(assert (not b_next!121395))

(assert (not b_next!121397))

(assert (not b_next!121405))

(assert b_and!325661)

(assert b_and!325665)

(assert b_and!325659)

(assert (not b_next!121401))

(check-sat)

(pop 1)

