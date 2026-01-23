; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404088 () Bool)

(assert start!404088)

(declare-fun b!4226002 () Bool)

(declare-fun b_free!124435 () Bool)

(declare-fun b_next!125139 () Bool)

(assert (=> b!4226002 (= b_free!124435 (not b_next!125139))))

(declare-fun tp!1293667 () Bool)

(declare-fun b_and!333669 () Bool)

(assert (=> b!4226002 (= tp!1293667 b_and!333669)))

(declare-fun b_free!124437 () Bool)

(declare-fun b_next!125141 () Bool)

(assert (=> b!4226002 (= b_free!124437 (not b_next!125141))))

(declare-fun tp!1293674 () Bool)

(declare-fun b_and!333671 () Bool)

(assert (=> b!4226002 (= tp!1293674 b_and!333671)))

(declare-fun b!4225993 () Bool)

(declare-fun b_free!124439 () Bool)

(declare-fun b_next!125143 () Bool)

(assert (=> b!4225993 (= b_free!124439 (not b_next!125143))))

(declare-fun tp!1293673 () Bool)

(declare-fun b_and!333673 () Bool)

(assert (=> b!4225993 (= tp!1293673 b_and!333673)))

(declare-fun b_free!124441 () Bool)

(declare-fun b_next!125145 () Bool)

(assert (=> b!4225993 (= b_free!124441 (not b_next!125145))))

(declare-fun tp!1293671 () Bool)

(declare-fun b_and!333675 () Bool)

(assert (=> b!4225993 (= tp!1293671 b_and!333675)))

(declare-fun e!2623721 () Bool)

(assert (=> b!4225993 (= e!2623721 (and tp!1293673 tp!1293671))))

(declare-fun b!4225994 () Bool)

(declare-fun e!2623722 () Bool)

(declare-fun e!2623717 () Bool)

(declare-fun tp!1293668 () Bool)

(assert (=> b!4225994 (= e!2623722 (and e!2623717 tp!1293668))))

(declare-fun res!1737652 () Bool)

(declare-fun e!2623720 () Bool)

(assert (=> start!404088 (=> (not res!1737652) (not e!2623720))))

(declare-datatypes ((LexerInterface!7418 0))(
  ( (LexerInterfaceExt!7415 (__x!28329 Int)) (Lexer!7416) )
))
(declare-fun thiss!26728 () LexerInterface!7418)

(assert (=> start!404088 (= res!1737652 (is-Lexer!7416 thiss!26728))))

(assert (=> start!404088 e!2623720))

(assert (=> start!404088 true))

(assert (=> start!404088 e!2623722))

(declare-fun e!2623719 () Bool)

(assert (=> start!404088 e!2623719))

(declare-fun e!2623726 () Bool)

(assert (=> start!404088 e!2623726))

(declare-fun b!4225995 () Bool)

(declare-fun res!1737651 () Bool)

(assert (=> b!4225995 (=> (not res!1737651) (not e!2623720))))

(declare-datatypes ((C!25650 0))(
  ( (C!25651 (val!14987 Int)) )
))
(declare-datatypes ((List!46672 0))(
  ( (Nil!46548) (Cons!46548 (h!51968 C!25650) (t!349289 List!46672)) )
))
(declare-fun input!3561 () List!46672)

(declare-datatypes ((List!46673 0))(
  ( (Nil!46549) (Cons!46549 (h!51969 (_ BitVec 16)) (t!349290 List!46673)) )
))
(declare-datatypes ((TokenValue!8053 0))(
  ( (FloatLiteralValue!16106 (text!56816 List!46673)) (TokenValueExt!8052 (__x!28330 Int)) (Broken!40265 (value!243458 List!46673)) (Object!8176) (End!8053) (Def!8053) (Underscore!8053) (Match!8053) (Else!8053) (Error!8053) (Case!8053) (If!8053) (Extends!8053) (Abstract!8053) (Class!8053) (Val!8053) (DelimiterValue!16106 (del!8113 List!46673)) (KeywordValue!8059 (value!243459 List!46673)) (CommentValue!16106 (value!243460 List!46673)) (WhitespaceValue!16106 (value!243461 List!46673)) (IndentationValue!8053 (value!243462 List!46673)) (String!54136) (Int32!8053) (Broken!40266 (value!243463 List!46673)) (Boolean!8054) (Unit!65707) (OperatorValue!8056 (op!8113 List!46673)) (IdentifierValue!16106 (value!243464 List!46673)) (IdentifierValue!16107 (value!243465 List!46673)) (WhitespaceValue!16107 (value!243466 List!46673)) (True!16106) (False!16106) (Broken!40267 (value!243467 List!46673)) (Broken!40268 (value!243468 List!46673)) (True!16107) (RightBrace!8053) (RightBracket!8053) (Colon!8053) (Null!8053) (Comma!8053) (LeftBracket!8053) (False!16107) (LeftBrace!8053) (ImaginaryLiteralValue!8053 (text!56817 List!46673)) (StringLiteralValue!24159 (value!243469 List!46673)) (EOFValue!8053 (value!243470 List!46673)) (IdentValue!8053 (value!243471 List!46673)) (DelimiterValue!16107 (value!243472 List!46673)) (DedentValue!8053 (value!243473 List!46673)) (NewLineValue!8053 (value!243474 List!46673)) (IntegerValue!24159 (value!243475 (_ BitVec 32)) (text!56818 List!46673)) (IntegerValue!24160 (value!243476 Int) (text!56819 List!46673)) (Times!8053) (Or!8053) (Equal!8053) (Minus!8053) (Broken!40269 (value!243477 List!46673)) (And!8053) (Div!8053) (LessEqual!8053) (Mod!8053) (Concat!20781) (Not!8053) (Plus!8053) (SpaceValue!8053 (value!243478 List!46673)) (IntegerValue!24161 (value!243479 Int) (text!56820 List!46673)) (StringLiteralValue!24160 (text!56821 List!46673)) (FloatLiteralValue!16107 (text!56822 List!46673)) (BytesLiteralValue!8053 (value!243480 List!46673)) (CommentValue!16107 (value!243481 List!46673)) (StringLiteralValue!24161 (value!243482 List!46673)) (ErrorTokenValue!8053 (msg!8114 List!46673)) )
))
(declare-datatypes ((IArray!28073 0))(
  ( (IArray!28074 (innerList!14094 List!46672)) )
))
(declare-datatypes ((Conc!14034 0))(
  ( (Node!14034 (left!34617 Conc!14034) (right!34947 Conc!14034) (csize!28298 Int) (cheight!14245 Int)) (Leaf!21690 (xs!17340 IArray!28073) (csize!28299 Int)) (Empty!14034) )
))
(declare-datatypes ((BalanceConc!27662 0))(
  ( (BalanceConc!27663 (c!718645 Conc!14034)) )
))
(declare-datatypes ((TokenValueInjection!15534 0))(
  ( (TokenValueInjection!15535 (toValue!10551 Int) (toChars!10410 Int)) )
))
(declare-datatypes ((Regex!12728 0))(
  ( (ElementMatch!12728 (c!718646 C!25650)) (Concat!20782 (regOne!25968 Regex!12728) (regTwo!25968 Regex!12728)) (EmptyExpr!12728) (Star!12728 (reg!13057 Regex!12728)) (EmptyLang!12728) (Union!12728 (regOne!25969 Regex!12728) (regTwo!25969 Regex!12728)) )
))
(declare-datatypes ((String!54137 0))(
  ( (String!54138 (value!243483 String)) )
))
(declare-datatypes ((Rule!15446 0))(
  ( (Rule!15447 (regex!7823 Regex!12728) (tag!8687 String!54137) (isSeparator!7823 Bool) (transformation!7823 TokenValueInjection!15534)) )
))
(declare-datatypes ((List!46674 0))(
  ( (Nil!46550) (Cons!46550 (h!51970 Rule!15446) (t!349291 List!46674)) )
))
(declare-fun rules!4013 () List!46674)

(declare-datatypes ((Token!14344 0))(
  ( (Token!14345 (value!243484 TokenValue!8053) (rule!10967 Rule!15446) (size!34166 Int) (originalCharacters!8203 List!46672)) )
))
(declare-datatypes ((tuple2!44248 0))(
  ( (tuple2!44249 (_1!25258 Token!14344) (_2!25258 List!46672)) )
))
(declare-datatypes ((Option!10009 0))(
  ( (None!10008) (Some!10008 (v!40920 tuple2!44248)) )
))
(declare-fun isEmpty!27586 (Option!10009) Bool)

(declare-fun maxPrefix!4456 (LexerInterface!7418 List!46674 List!46672) Option!10009)

(assert (=> b!4225995 (= res!1737651 (isEmpty!27586 (maxPrefix!4456 thiss!26728 rules!4013 input!3561)))))

(declare-fun b!4225996 () Bool)

(declare-fun res!1737650 () Bool)

(assert (=> b!4225996 (=> (not res!1737650) (not e!2623720))))

(declare-fun r!4313 () Rule!15446)

(declare-fun contains!9646 (List!46674 Rule!15446) Bool)

(assert (=> b!4225996 (= res!1737650 (contains!9646 rules!4013 r!4313))))

(declare-fun b!4225997 () Bool)

(declare-fun e!2623725 () Bool)

(assert (=> b!4225997 (= e!2623720 (not e!2623725))))

(declare-fun res!1737648 () Bool)

(assert (=> b!4225997 (=> res!1737648 e!2623725)))

(assert (=> b!4225997 (= res!1737648 (or (and (is-Cons!46550 rules!4013) (= r!4313 (h!51970 rules!4013))) (and (is-Cons!46550 rules!4013) (not (= r!4313 (h!51970 rules!4013)))) (not (is-Nil!46550 rules!4013))))))

(declare-fun ruleValid!3531 (LexerInterface!7418 Rule!15446) Bool)

(assert (=> b!4225997 (ruleValid!3531 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65708 0))(
  ( (Unit!65709) )
))
(declare-fun lt!1503067 () Unit!65708)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2443 (LexerInterface!7418 Rule!15446 List!46674) Unit!65708)

(assert (=> b!4225997 (= lt!1503067 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2443 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4225998 () Bool)

(declare-fun res!1737653 () Bool)

(assert (=> b!4225998 (=> (not res!1737653) (not e!2623720))))

(declare-fun isEmpty!27587 (List!46674) Bool)

(assert (=> b!4225998 (= res!1737653 (not (isEmpty!27587 rules!4013)))))

(declare-fun b!4225999 () Bool)

(declare-fun res!1737649 () Bool)

(assert (=> b!4225999 (=> (not res!1737649) (not e!2623720))))

(declare-fun rulesValidInductive!2927 (LexerInterface!7418 List!46674) Bool)

(assert (=> b!4225999 (= res!1737649 (rulesValidInductive!2927 thiss!26728 rules!4013))))

(declare-fun b!4226000 () Bool)

(declare-fun maxPrefixOneRule!3405 (LexerInterface!7418 Rule!15446 List!46672) Option!10009)

(assert (=> b!4226000 (= e!2623725 (isEmpty!27586 (maxPrefixOneRule!3405 thiss!26728 r!4313 input!3561)))))

(declare-fun tp!1293672 () Bool)

(declare-fun b!4226001 () Bool)

(declare-fun inv!61214 (String!54137) Bool)

(declare-fun inv!61217 (TokenValueInjection!15534) Bool)

(assert (=> b!4226001 (= e!2623719 (and tp!1293672 (inv!61214 (tag!8687 r!4313)) (inv!61217 (transformation!7823 r!4313)) e!2623721))))

(declare-fun e!2623723 () Bool)

(assert (=> b!4226002 (= e!2623723 (and tp!1293667 tp!1293674))))

(declare-fun b!4226003 () Bool)

(declare-fun tp!1293670 () Bool)

(assert (=> b!4226003 (= e!2623717 (and tp!1293670 (inv!61214 (tag!8687 (h!51970 rules!4013))) (inv!61217 (transformation!7823 (h!51970 rules!4013))) e!2623723))))

(declare-fun b!4226004 () Bool)

(declare-fun tp_is_empty!22419 () Bool)

(declare-fun tp!1293669 () Bool)

(assert (=> b!4226004 (= e!2623726 (and tp_is_empty!22419 tp!1293669))))

(assert (= (and start!404088 res!1737652) b!4225998))

(assert (= (and b!4225998 res!1737653) b!4225999))

(assert (= (and b!4225999 res!1737649) b!4225996))

(assert (= (and b!4225996 res!1737650) b!4225995))

(assert (= (and b!4225995 res!1737651) b!4225997))

(assert (= (and b!4225997 (not res!1737648)) b!4226000))

(assert (= b!4226003 b!4226002))

(assert (= b!4225994 b!4226003))

(assert (= (and start!404088 (is-Cons!46550 rules!4013)) b!4225994))

(assert (= b!4226001 b!4225993))

(assert (= start!404088 b!4226001))

(assert (= (and start!404088 (is-Cons!46548 input!3561)) b!4226004))

(declare-fun m!4813983 () Bool)

(assert (=> b!4225999 m!4813983))

(declare-fun m!4813985 () Bool)

(assert (=> b!4225997 m!4813985))

(declare-fun m!4813987 () Bool)

(assert (=> b!4225997 m!4813987))

(declare-fun m!4813989 () Bool)

(assert (=> b!4226000 m!4813989))

(assert (=> b!4226000 m!4813989))

(declare-fun m!4813991 () Bool)

(assert (=> b!4226000 m!4813991))

(declare-fun m!4813993 () Bool)

(assert (=> b!4225995 m!4813993))

(assert (=> b!4225995 m!4813993))

(declare-fun m!4813995 () Bool)

(assert (=> b!4225995 m!4813995))

(declare-fun m!4813997 () Bool)

(assert (=> b!4226001 m!4813997))

(declare-fun m!4813999 () Bool)

(assert (=> b!4226001 m!4813999))

(declare-fun m!4814001 () Bool)

(assert (=> b!4225998 m!4814001))

(declare-fun m!4814003 () Bool)

(assert (=> b!4225996 m!4814003))

(declare-fun m!4814005 () Bool)

(assert (=> b!4226003 m!4814005))

(declare-fun m!4814007 () Bool)

(assert (=> b!4226003 m!4814007))

(push 1)

(assert tp_is_empty!22419)

(assert b_and!333675)

(assert (not b!4225994))

(assert (not b!4226000))

(assert (not b_next!125141))

(assert (not b!4225999))

(assert b_and!333669)

(assert (not b!4225995))

(assert b_and!333673)

(assert (not b_next!125145))

(assert (not b!4225996))

(assert b_and!333671)

(assert (not b!4225998))

(assert (not b_next!125139))

(assert (not b!4226003))

(assert (not b!4226001))

(assert (not b!4226004))

(assert (not b_next!125143))

(assert (not b!4225997))

(check-sat)

(pop 1)

(push 1)

(assert b_and!333675)

(assert (not b_next!125141))

(assert (not b_next!125139))

(assert (not b_next!125143))

(assert b_and!333669)

(assert b_and!333673)

(assert (not b_next!125145))

(assert b_and!333671)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1244294 () Bool)

(declare-fun res!1737680 () Bool)

(declare-fun e!2623759 () Bool)

(assert (=> d!1244294 (=> (not res!1737680) (not e!2623759))))

(declare-fun validRegex!5780 (Regex!12728) Bool)

(assert (=> d!1244294 (= res!1737680 (validRegex!5780 (regex!7823 r!4313)))))

(assert (=> d!1244294 (= (ruleValid!3531 thiss!26728 r!4313) e!2623759)))

(declare-fun b!4226045 () Bool)

(declare-fun res!1737681 () Bool)

(assert (=> b!4226045 (=> (not res!1737681) (not e!2623759))))

(declare-fun nullable!4493 (Regex!12728) Bool)

(assert (=> b!4226045 (= res!1737681 (not (nullable!4493 (regex!7823 r!4313))))))

(declare-fun b!4226046 () Bool)

(assert (=> b!4226046 (= e!2623759 (not (= (tag!8687 r!4313) (String!54138 ""))))))

(assert (= (and d!1244294 res!1737680) b!4226045))

(assert (= (and b!4226045 res!1737681) b!4226046))

(declare-fun m!4814035 () Bool)

(assert (=> d!1244294 m!4814035))

(declare-fun m!4814037 () Bool)

(assert (=> b!4226045 m!4814037))

(assert (=> b!4225997 d!1244294))

(declare-fun d!1244300 () Bool)

(assert (=> d!1244300 (ruleValid!3531 thiss!26728 r!4313)))

(declare-fun lt!1503073 () Unit!65708)

(declare-fun choose!25889 (LexerInterface!7418 Rule!15446 List!46674) Unit!65708)

(assert (=> d!1244300 (= lt!1503073 (choose!25889 thiss!26728 r!4313 rules!4013))))

(assert (=> d!1244300 (contains!9646 rules!4013 r!4313)))

(assert (=> d!1244300 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2443 thiss!26728 r!4313 rules!4013) lt!1503073)))

(declare-fun bs!597838 () Bool)

(assert (= bs!597838 d!1244300))

(assert (=> bs!597838 m!4813985))

(declare-fun m!4814039 () Bool)

(assert (=> bs!597838 m!4814039))

(assert (=> bs!597838 m!4814003))

(assert (=> b!4225997 d!1244300))

(declare-fun d!1244302 () Bool)

(assert (=> d!1244302 (= (isEmpty!27587 rules!4013) (is-Nil!46550 rules!4013))))

(assert (=> b!4225998 d!1244302))

(declare-fun d!1244304 () Bool)

(assert (=> d!1244304 (= (inv!61214 (tag!8687 (h!51970 rules!4013))) (= (mod (str.len (value!243483 (tag!8687 (h!51970 rules!4013)))) 2) 0))))

(assert (=> b!4226003 d!1244304))

(declare-fun d!1244306 () Bool)

(declare-fun res!1737684 () Bool)

(declare-fun e!2623762 () Bool)

(assert (=> d!1244306 (=> (not res!1737684) (not e!2623762))))

(declare-fun semiInverseModEq!3406 (Int Int) Bool)

(assert (=> d!1244306 (= res!1737684 (semiInverseModEq!3406 (toChars!10410 (transformation!7823 (h!51970 rules!4013))) (toValue!10551 (transformation!7823 (h!51970 rules!4013)))))))

(assert (=> d!1244306 (= (inv!61217 (transformation!7823 (h!51970 rules!4013))) e!2623762)))

(declare-fun b!4226049 () Bool)

(declare-fun equivClasses!3305 (Int Int) Bool)

(assert (=> b!4226049 (= e!2623762 (equivClasses!3305 (toChars!10410 (transformation!7823 (h!51970 rules!4013))) (toValue!10551 (transformation!7823 (h!51970 rules!4013)))))))

(assert (= (and d!1244306 res!1737684) b!4226049))

(declare-fun m!4814041 () Bool)

(assert (=> d!1244306 m!4814041))

(declare-fun m!4814043 () Bool)

(assert (=> b!4226049 m!4814043))

(assert (=> b!4226003 d!1244306))

(declare-fun d!1244308 () Bool)

(assert (=> d!1244308 true))

(declare-fun lt!1503114 () Bool)

(declare-fun lambda!129912 () Int)

(declare-fun forall!8513 (List!46674 Int) Bool)

(assert (=> d!1244308 (= lt!1503114 (forall!8513 rules!4013 lambda!129912))))

(declare-fun e!2623805 () Bool)

(assert (=> d!1244308 (= lt!1503114 e!2623805)))

(declare-fun res!1737750 () Bool)

(assert (=> d!1244308 (=> res!1737750 e!2623805)))

(assert (=> d!1244308 (= res!1737750 (not (is-Cons!46550 rules!4013)))))

(assert (=> d!1244308 (= (rulesValidInductive!2927 thiss!26728 rules!4013) lt!1503114)))

(declare-fun b!4226127 () Bool)

(declare-fun e!2623804 () Bool)

(assert (=> b!4226127 (= e!2623805 e!2623804)))

(declare-fun res!1737751 () Bool)

(assert (=> b!4226127 (=> (not res!1737751) (not e!2623804))))

(assert (=> b!4226127 (= res!1737751 (ruleValid!3531 thiss!26728 (h!51970 rules!4013)))))

(declare-fun b!4226128 () Bool)

(assert (=> b!4226128 (= e!2623804 (rulesValidInductive!2927 thiss!26728 (t!349291 rules!4013)))))

(assert (= (and d!1244308 (not res!1737750)) b!4226127))

(assert (= (and b!4226127 res!1737751) b!4226128))

(declare-fun m!4814135 () Bool)

(assert (=> d!1244308 m!4814135))

(declare-fun m!4814137 () Bool)

(assert (=> b!4226127 m!4814137))

(declare-fun m!4814139 () Bool)

(assert (=> b!4226128 m!4814139))

(assert (=> b!4225999 d!1244308))

(declare-fun d!1244326 () Bool)

(assert (=> d!1244326 (= (isEmpty!27586 (maxPrefixOneRule!3405 thiss!26728 r!4313 input!3561)) (not (is-Some!10008 (maxPrefixOneRule!3405 thiss!26728 r!4313 input!3561))))))

(assert (=> b!4226000 d!1244326))

(declare-fun b!4226149 () Bool)

(declare-fun e!2623817 () Bool)

(declare-fun e!2623816 () Bool)

(assert (=> b!4226149 (= e!2623817 e!2623816)))

(declare-fun res!1737771 () Bool)

(assert (=> b!4226149 (=> (not res!1737771) (not e!2623816))))

(declare-fun lt!1503125 () Option!10009)

(declare-fun matchR!6405 (Regex!12728 List!46672) Bool)

(declare-fun list!16837 (BalanceConc!27662) List!46672)

(declare-fun charsOf!5236 (Token!14344) BalanceConc!27662)

(declare-fun get!15153 (Option!10009) tuple2!44248)

(assert (=> b!4226149 (= res!1737771 (matchR!6405 (regex!7823 r!4313) (list!16837 (charsOf!5236 (_1!25258 (get!15153 lt!1503125))))))))

(declare-fun b!4226150 () Bool)

(declare-fun e!2623814 () Bool)

(declare-datatypes ((tuple2!44252 0))(
  ( (tuple2!44253 (_1!25260 List!46672) (_2!25260 List!46672)) )
))
(declare-fun findLongestMatchInner!1676 (Regex!12728 List!46672 Int List!46672 List!46672 Int) tuple2!44252)

(declare-fun size!34168 (List!46672) Int)

(assert (=> b!4226150 (= e!2623814 (matchR!6405 (regex!7823 r!4313) (_1!25260 (findLongestMatchInner!1676 (regex!7823 r!4313) Nil!46548 (size!34168 Nil!46548) input!3561 input!3561 (size!34168 input!3561)))))))

(declare-fun b!4226151 () Bool)

(declare-fun res!1737769 () Bool)

(assert (=> b!4226151 (=> (not res!1737769) (not e!2623816))))

(declare-fun ++!11887 (List!46672 List!46672) List!46672)

(assert (=> b!4226151 (= res!1737769 (= (++!11887 (list!16837 (charsOf!5236 (_1!25258 (get!15153 lt!1503125)))) (_2!25258 (get!15153 lt!1503125))) input!3561))))

(declare-fun b!4226152 () Bool)

(declare-fun res!1737772 () Bool)

(assert (=> b!4226152 (=> (not res!1737772) (not e!2623816))))

(assert (=> b!4226152 (= res!1737772 (< (size!34168 (_2!25258 (get!15153 lt!1503125))) (size!34168 input!3561)))))

(declare-fun b!4226153 () Bool)

(assert (=> b!4226153 (= e!2623816 (= (size!34166 (_1!25258 (get!15153 lt!1503125))) (size!34168 (originalCharacters!8203 (_1!25258 (get!15153 lt!1503125))))))))

(declare-fun b!4226154 () Bool)

(declare-fun e!2623815 () Option!10009)

(declare-fun lt!1503126 () tuple2!44252)

(declare-fun apply!10726 (TokenValueInjection!15534 BalanceConc!27662) TokenValue!8053)

(declare-fun seqFromList!5786 (List!46672) BalanceConc!27662)

(declare-fun size!34169 (BalanceConc!27662) Int)

(assert (=> b!4226154 (= e!2623815 (Some!10008 (tuple2!44249 (Token!14345 (apply!10726 (transformation!7823 r!4313) (seqFromList!5786 (_1!25260 lt!1503126))) r!4313 (size!34169 (seqFromList!5786 (_1!25260 lt!1503126))) (_1!25260 lt!1503126)) (_2!25260 lt!1503126))))))

(declare-fun lt!1503127 () Unit!65708)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1649 (Regex!12728 List!46672) Unit!65708)

(assert (=> b!4226154 (= lt!1503127 (longestMatchIsAcceptedByMatchOrIsEmpty!1649 (regex!7823 r!4313) input!3561))))

(declare-fun res!1737767 () Bool)

(declare-fun isEmpty!27590 (List!46672) Bool)

(assert (=> b!4226154 (= res!1737767 (isEmpty!27590 (_1!25260 (findLongestMatchInner!1676 (regex!7823 r!4313) Nil!46548 (size!34168 Nil!46548) input!3561 input!3561 (size!34168 input!3561)))))))

(assert (=> b!4226154 (=> res!1737767 e!2623814)))

(assert (=> b!4226154 e!2623814))

(declare-fun lt!1503128 () Unit!65708)

(assert (=> b!4226154 (= lt!1503128 lt!1503127)))

(declare-fun lt!1503129 () Unit!65708)

(declare-fun lemmaSemiInverse!2517 (TokenValueInjection!15534 BalanceConc!27662) Unit!65708)

(assert (=> b!4226154 (= lt!1503129 (lemmaSemiInverse!2517 (transformation!7823 r!4313) (seqFromList!5786 (_1!25260 lt!1503126))))))

(declare-fun b!4226155 () Bool)

(declare-fun res!1737770 () Bool)

(assert (=> b!4226155 (=> (not res!1737770) (not e!2623816))))

(assert (=> b!4226155 (= res!1737770 (= (rule!10967 (_1!25258 (get!15153 lt!1503125))) r!4313))))

(declare-fun b!4226156 () Bool)

(declare-fun res!1737766 () Bool)

(assert (=> b!4226156 (=> (not res!1737766) (not e!2623816))))

(assert (=> b!4226156 (= res!1737766 (= (value!243484 (_1!25258 (get!15153 lt!1503125))) (apply!10726 (transformation!7823 (rule!10967 (_1!25258 (get!15153 lt!1503125)))) (seqFromList!5786 (originalCharacters!8203 (_1!25258 (get!15153 lt!1503125)))))))))

(declare-fun b!4226157 () Bool)

(assert (=> b!4226157 (= e!2623815 None!10008)))

(declare-fun d!1244328 () Bool)

(assert (=> d!1244328 e!2623817))

(declare-fun res!1737768 () Bool)

(assert (=> d!1244328 (=> res!1737768 e!2623817)))

(assert (=> d!1244328 (= res!1737768 (isEmpty!27586 lt!1503125))))

(assert (=> d!1244328 (= lt!1503125 e!2623815)))

(declare-fun c!718658 () Bool)

(assert (=> d!1244328 (= c!718658 (isEmpty!27590 (_1!25260 lt!1503126)))))

(declare-fun findLongestMatch!1589 (Regex!12728 List!46672) tuple2!44252)

(assert (=> d!1244328 (= lt!1503126 (findLongestMatch!1589 (regex!7823 r!4313) input!3561))))

(assert (=> d!1244328 (ruleValid!3531 thiss!26728 r!4313)))

(assert (=> d!1244328 (= (maxPrefixOneRule!3405 thiss!26728 r!4313 input!3561) lt!1503125)))

(assert (= (and d!1244328 c!718658) b!4226157))

(assert (= (and d!1244328 (not c!718658)) b!4226154))

(assert (= (and b!4226154 (not res!1737767)) b!4226150))

(assert (= (and d!1244328 (not res!1737768)) b!4226149))

(assert (= (and b!4226149 res!1737771) b!4226151))

(assert (= (and b!4226151 res!1737769) b!4226152))

(assert (= (and b!4226152 res!1737772) b!4226155))

(assert (= (and b!4226155 res!1737770) b!4226156))

(assert (= (and b!4226156 res!1737766) b!4226153))

(declare-fun m!4814141 () Bool)

(assert (=> b!4226155 m!4814141))

(assert (=> b!4226151 m!4814141))

(declare-fun m!4814143 () Bool)

(assert (=> b!4226151 m!4814143))

(assert (=> b!4226151 m!4814143))

(declare-fun m!4814145 () Bool)

(assert (=> b!4226151 m!4814145))

(assert (=> b!4226151 m!4814145))

(declare-fun m!4814147 () Bool)

(assert (=> b!4226151 m!4814147))

(assert (=> b!4226156 m!4814141))

(declare-fun m!4814149 () Bool)

(assert (=> b!4226156 m!4814149))

(assert (=> b!4226156 m!4814149))

(declare-fun m!4814151 () Bool)

(assert (=> b!4226156 m!4814151))

(declare-fun m!4814153 () Bool)

(assert (=> b!4226150 m!4814153))

(declare-fun m!4814155 () Bool)

(assert (=> b!4226150 m!4814155))

(assert (=> b!4226150 m!4814153))

(assert (=> b!4226150 m!4814155))

(declare-fun m!4814157 () Bool)

(assert (=> b!4226150 m!4814157))

(declare-fun m!4814159 () Bool)

(assert (=> b!4226150 m!4814159))

(declare-fun m!4814161 () Bool)

(assert (=> b!4226154 m!4814161))

(declare-fun m!4814163 () Bool)

(assert (=> b!4226154 m!4814163))

(assert (=> b!4226154 m!4814153))

(declare-fun m!4814165 () Bool)

(assert (=> b!4226154 m!4814165))

(assert (=> b!4226154 m!4814155))

(assert (=> b!4226154 m!4814153))

(assert (=> b!4226154 m!4814155))

(assert (=> b!4226154 m!4814157))

(assert (=> b!4226154 m!4814161))

(declare-fun m!4814167 () Bool)

(assert (=> b!4226154 m!4814167))

(declare-fun m!4814169 () Bool)

(assert (=> b!4226154 m!4814169))

(assert (=> b!4226154 m!4814161))

(assert (=> b!4226154 m!4814161))

(declare-fun m!4814171 () Bool)

(assert (=> b!4226154 m!4814171))

(assert (=> b!4226152 m!4814141))

(declare-fun m!4814173 () Bool)

(assert (=> b!4226152 m!4814173))

(assert (=> b!4226152 m!4814155))

(assert (=> b!4226149 m!4814141))

(assert (=> b!4226149 m!4814143))

(assert (=> b!4226149 m!4814143))

(assert (=> b!4226149 m!4814145))

(assert (=> b!4226149 m!4814145))

(declare-fun m!4814175 () Bool)

(assert (=> b!4226149 m!4814175))

(declare-fun m!4814177 () Bool)

(assert (=> d!1244328 m!4814177))

(declare-fun m!4814179 () Bool)

(assert (=> d!1244328 m!4814179))

(declare-fun m!4814181 () Bool)

(assert (=> d!1244328 m!4814181))

(assert (=> d!1244328 m!4813985))

(assert (=> b!4226153 m!4814141))

(declare-fun m!4814183 () Bool)

(assert (=> b!4226153 m!4814183))

(assert (=> b!4226000 d!1244328))

(declare-fun d!1244330 () Bool)

(assert (=> d!1244330 (= (isEmpty!27586 (maxPrefix!4456 thiss!26728 rules!4013 input!3561)) (not (is-Some!10008 (maxPrefix!4456 thiss!26728 rules!4013 input!3561))))))

(assert (=> b!4225995 d!1244330))

(declare-fun b!4226176 () Bool)

(declare-fun e!2623825 () Option!10009)

(declare-fun lt!1503140 () Option!10009)

(declare-fun lt!1503143 () Option!10009)

(assert (=> b!4226176 (= e!2623825 (ite (and (is-None!10008 lt!1503140) (is-None!10008 lt!1503143)) None!10008 (ite (is-None!10008 lt!1503143) lt!1503140 (ite (is-None!10008 lt!1503140) lt!1503143 (ite (>= (size!34166 (_1!25258 (v!40920 lt!1503140))) (size!34166 (_1!25258 (v!40920 lt!1503143)))) lt!1503140 lt!1503143)))))))

(declare-fun call!293250 () Option!10009)

(assert (=> b!4226176 (= lt!1503140 call!293250)))

(assert (=> b!4226176 (= lt!1503143 (maxPrefix!4456 thiss!26728 (t!349291 rules!4013) input!3561))))

(declare-fun d!1244332 () Bool)

(declare-fun e!2623824 () Bool)

(assert (=> d!1244332 e!2623824))

(declare-fun res!1737787 () Bool)

(assert (=> d!1244332 (=> res!1737787 e!2623824)))

(declare-fun lt!1503141 () Option!10009)

(assert (=> d!1244332 (= res!1737787 (isEmpty!27586 lt!1503141))))

(assert (=> d!1244332 (= lt!1503141 e!2623825)))

(declare-fun c!718661 () Bool)

(assert (=> d!1244332 (= c!718661 (and (is-Cons!46550 rules!4013) (is-Nil!46550 (t!349291 rules!4013))))))

(declare-fun lt!1503142 () Unit!65708)

(declare-fun lt!1503144 () Unit!65708)

(assert (=> d!1244332 (= lt!1503142 lt!1503144)))

(declare-fun isPrefix!4672 (List!46672 List!46672) Bool)

(assert (=> d!1244332 (isPrefix!4672 input!3561 input!3561)))

(declare-fun lemmaIsPrefixRefl!3089 (List!46672 List!46672) Unit!65708)

(assert (=> d!1244332 (= lt!1503144 (lemmaIsPrefixRefl!3089 input!3561 input!3561))))

(assert (=> d!1244332 (rulesValidInductive!2927 thiss!26728 rules!4013)))

(assert (=> d!1244332 (= (maxPrefix!4456 thiss!26728 rules!4013 input!3561) lt!1503141)))

(declare-fun b!4226177 () Bool)

(declare-fun res!1737790 () Bool)

(declare-fun e!2623826 () Bool)

(assert (=> b!4226177 (=> (not res!1737790) (not e!2623826))))

(assert (=> b!4226177 (= res!1737790 (= (list!16837 (charsOf!5236 (_1!25258 (get!15153 lt!1503141)))) (originalCharacters!8203 (_1!25258 (get!15153 lt!1503141)))))))

(declare-fun b!4226178 () Bool)

(declare-fun res!1737792 () Bool)

(assert (=> b!4226178 (=> (not res!1737792) (not e!2623826))))

(assert (=> b!4226178 (= res!1737792 (< (size!34168 (_2!25258 (get!15153 lt!1503141))) (size!34168 input!3561)))))

(declare-fun b!4226179 () Bool)

(assert (=> b!4226179 (= e!2623826 (contains!9646 rules!4013 (rule!10967 (_1!25258 (get!15153 lt!1503141)))))))

(declare-fun b!4226180 () Bool)

(declare-fun res!1737788 () Bool)

(assert (=> b!4226180 (=> (not res!1737788) (not e!2623826))))

(assert (=> b!4226180 (= res!1737788 (= (++!11887 (list!16837 (charsOf!5236 (_1!25258 (get!15153 lt!1503141)))) (_2!25258 (get!15153 lt!1503141))) input!3561))))

(declare-fun b!4226181 () Bool)

(assert (=> b!4226181 (= e!2623824 e!2623826)))

(declare-fun res!1737793 () Bool)

(assert (=> b!4226181 (=> (not res!1737793) (not e!2623826))))

(declare-fun isDefined!7427 (Option!10009) Bool)

(assert (=> b!4226181 (= res!1737793 (isDefined!7427 lt!1503141))))

(declare-fun b!4226182 () Bool)

(declare-fun res!1737791 () Bool)

(assert (=> b!4226182 (=> (not res!1737791) (not e!2623826))))

(assert (=> b!4226182 (= res!1737791 (matchR!6405 (regex!7823 (rule!10967 (_1!25258 (get!15153 lt!1503141)))) (list!16837 (charsOf!5236 (_1!25258 (get!15153 lt!1503141))))))))

(declare-fun bm!293245 () Bool)

(assert (=> bm!293245 (= call!293250 (maxPrefixOneRule!3405 thiss!26728 (h!51970 rules!4013) input!3561))))

(declare-fun b!4226183 () Bool)

(declare-fun res!1737789 () Bool)

(assert (=> b!4226183 (=> (not res!1737789) (not e!2623826))))

(assert (=> b!4226183 (= res!1737789 (= (value!243484 (_1!25258 (get!15153 lt!1503141))) (apply!10726 (transformation!7823 (rule!10967 (_1!25258 (get!15153 lt!1503141)))) (seqFromList!5786 (originalCharacters!8203 (_1!25258 (get!15153 lt!1503141)))))))))

(declare-fun b!4226184 () Bool)

(assert (=> b!4226184 (= e!2623825 call!293250)))

(assert (= (and d!1244332 c!718661) b!4226184))

(assert (= (and d!1244332 (not c!718661)) b!4226176))

(assert (= (or b!4226184 b!4226176) bm!293245))

(assert (= (and d!1244332 (not res!1737787)) b!4226181))

(assert (= (and b!4226181 res!1737793) b!4226177))

(assert (= (and b!4226177 res!1737790) b!4226178))

(assert (= (and b!4226178 res!1737792) b!4226180))

(assert (= (and b!4226180 res!1737788) b!4226183))

(assert (= (and b!4226183 res!1737789) b!4226182))

(assert (= (and b!4226182 res!1737791) b!4226179))

(declare-fun m!4814185 () Bool)

(assert (=> b!4226177 m!4814185))

(declare-fun m!4814187 () Bool)

(assert (=> b!4226177 m!4814187))

(assert (=> b!4226177 m!4814187))

(declare-fun m!4814189 () Bool)

(assert (=> b!4226177 m!4814189))

(assert (=> b!4226183 m!4814185))

(declare-fun m!4814191 () Bool)

(assert (=> b!4226183 m!4814191))

(assert (=> b!4226183 m!4814191))

(declare-fun m!4814193 () Bool)

(assert (=> b!4226183 m!4814193))

(assert (=> b!4226182 m!4814185))

(assert (=> b!4226182 m!4814187))

(assert (=> b!4226182 m!4814187))

(assert (=> b!4226182 m!4814189))

(assert (=> b!4226182 m!4814189))

(declare-fun m!4814195 () Bool)

(assert (=> b!4226182 m!4814195))

(assert (=> b!4226180 m!4814185))

(assert (=> b!4226180 m!4814187))

(assert (=> b!4226180 m!4814187))

(assert (=> b!4226180 m!4814189))

(assert (=> b!4226180 m!4814189))

(declare-fun m!4814197 () Bool)

(assert (=> b!4226180 m!4814197))

(declare-fun m!4814199 () Bool)

(assert (=> d!1244332 m!4814199))

(declare-fun m!4814201 () Bool)

(assert (=> d!1244332 m!4814201))

(declare-fun m!4814203 () Bool)

(assert (=> d!1244332 m!4814203))

(assert (=> d!1244332 m!4813983))

(assert (=> b!4226178 m!4814185))

(declare-fun m!4814205 () Bool)

(assert (=> b!4226178 m!4814205))

(assert (=> b!4226178 m!4814155))

(assert (=> b!4226179 m!4814185))

(declare-fun m!4814207 () Bool)

(assert (=> b!4226179 m!4814207))

(declare-fun m!4814209 () Bool)

(assert (=> bm!293245 m!4814209))

(declare-fun m!4814211 () Bool)

(assert (=> b!4226176 m!4814211))

(declare-fun m!4814213 () Bool)

(assert (=> b!4226181 m!4814213))

(assert (=> b!4225995 d!1244332))

(declare-fun d!1244334 () Bool)

(declare-fun lt!1503147 () Bool)

(declare-fun content!7318 (List!46674) (Set Rule!15446))

(assert (=> d!1244334 (= lt!1503147 (set.member r!4313 (content!7318 rules!4013)))))

(declare-fun e!2623832 () Bool)

(assert (=> d!1244334 (= lt!1503147 e!2623832)))

(declare-fun res!1737799 () Bool)

(assert (=> d!1244334 (=> (not res!1737799) (not e!2623832))))

(assert (=> d!1244334 (= res!1737799 (is-Cons!46550 rules!4013))))

(assert (=> d!1244334 (= (contains!9646 rules!4013 r!4313) lt!1503147)))

(declare-fun b!4226189 () Bool)

(declare-fun e!2623831 () Bool)

(assert (=> b!4226189 (= e!2623832 e!2623831)))

(declare-fun res!1737798 () Bool)

(assert (=> b!4226189 (=> res!1737798 e!2623831)))

(assert (=> b!4226189 (= res!1737798 (= (h!51970 rules!4013) r!4313))))

(declare-fun b!4226190 () Bool)

(assert (=> b!4226190 (= e!2623831 (contains!9646 (t!349291 rules!4013) r!4313))))

(assert (= (and d!1244334 res!1737799) b!4226189))

(assert (= (and b!4226189 (not res!1737798)) b!4226190))

(declare-fun m!4814215 () Bool)

(assert (=> d!1244334 m!4814215))

(declare-fun m!4814217 () Bool)

(assert (=> d!1244334 m!4814217))

(declare-fun m!4814219 () Bool)

(assert (=> b!4226190 m!4814219))

(assert (=> b!4225996 d!1244334))

(declare-fun d!1244336 () Bool)

(assert (=> d!1244336 (= (inv!61214 (tag!8687 r!4313)) (= (mod (str.len (value!243483 (tag!8687 r!4313))) 2) 0))))

(assert (=> b!4226001 d!1244336))

(declare-fun d!1244338 () Bool)

(declare-fun res!1737800 () Bool)

(declare-fun e!2623833 () Bool)

(assert (=> d!1244338 (=> (not res!1737800) (not e!2623833))))

(assert (=> d!1244338 (= res!1737800 (semiInverseModEq!3406 (toChars!10410 (transformation!7823 r!4313)) (toValue!10551 (transformation!7823 r!4313))))))

(assert (=> d!1244338 (= (inv!61217 (transformation!7823 r!4313)) e!2623833)))

(declare-fun b!4226191 () Bool)

(assert (=> b!4226191 (= e!2623833 (equivClasses!3305 (toChars!10410 (transformation!7823 r!4313)) (toValue!10551 (transformation!7823 r!4313))))))

(assert (= (and d!1244338 res!1737800) b!4226191))

(declare-fun m!4814221 () Bool)

(assert (=> d!1244338 m!4814221))

(declare-fun m!4814223 () Bool)

(assert (=> b!4226191 m!4814223))

(assert (=> b!4226001 d!1244338))

(declare-fun b!4226205 () Bool)

(declare-fun e!2623836 () Bool)

(declare-fun tp!1293713 () Bool)

(declare-fun tp!1293712 () Bool)

(assert (=> b!4226205 (= e!2623836 (and tp!1293713 tp!1293712))))

(declare-fun b!4226203 () Bool)

(declare-fun tp!1293711 () Bool)

(declare-fun tp!1293709 () Bool)

(assert (=> b!4226203 (= e!2623836 (and tp!1293711 tp!1293709))))

(assert (=> b!4226003 (= tp!1293670 e!2623836)))

(declare-fun b!4226202 () Bool)

(assert (=> b!4226202 (= e!2623836 tp_is_empty!22419)))

(declare-fun b!4226204 () Bool)

(declare-fun tp!1293710 () Bool)

(assert (=> b!4226204 (= e!2623836 tp!1293710)))

(assert (= (and b!4226003 (is-ElementMatch!12728 (regex!7823 (h!51970 rules!4013)))) b!4226202))

(assert (= (and b!4226003 (is-Concat!20782 (regex!7823 (h!51970 rules!4013)))) b!4226203))

(assert (= (and b!4226003 (is-Star!12728 (regex!7823 (h!51970 rules!4013)))) b!4226204))

(assert (= (and b!4226003 (is-Union!12728 (regex!7823 (h!51970 rules!4013)))) b!4226205))

(declare-fun b!4226210 () Bool)

(declare-fun e!2623839 () Bool)

(declare-fun tp!1293716 () Bool)

(assert (=> b!4226210 (= e!2623839 (and tp_is_empty!22419 tp!1293716))))

(assert (=> b!4226004 (= tp!1293669 e!2623839)))

(assert (= (and b!4226004 (is-Cons!46548 (t!349289 input!3561))) b!4226210))

(declare-fun b!4226221 () Bool)

(declare-fun b_free!124451 () Bool)

(declare-fun b_next!125155 () Bool)

(assert (=> b!4226221 (= b_free!124451 (not b_next!125155))))

(declare-fun tp!1293726 () Bool)

(declare-fun b_and!333685 () Bool)

(assert (=> b!4226221 (= tp!1293726 b_and!333685)))

(declare-fun b_free!124453 () Bool)

(declare-fun b_next!125157 () Bool)

(assert (=> b!4226221 (= b_free!124453 (not b_next!125157))))

(declare-fun tp!1293727 () Bool)

(declare-fun b_and!333687 () Bool)

(assert (=> b!4226221 (= tp!1293727 b_and!333687)))

(declare-fun e!2623848 () Bool)

(assert (=> b!4226221 (= e!2623848 (and tp!1293726 tp!1293727))))

(declare-fun b!4226220 () Bool)

(declare-fun e!2623850 () Bool)

(declare-fun tp!1293725 () Bool)

(assert (=> b!4226220 (= e!2623850 (and tp!1293725 (inv!61214 (tag!8687 (h!51970 (t!349291 rules!4013)))) (inv!61217 (transformation!7823 (h!51970 (t!349291 rules!4013)))) e!2623848))))

(declare-fun b!4226219 () Bool)

(declare-fun e!2623849 () Bool)

(declare-fun tp!1293728 () Bool)

(assert (=> b!4226219 (= e!2623849 (and e!2623850 tp!1293728))))

(assert (=> b!4225994 (= tp!1293668 e!2623849)))

(assert (= b!4226220 b!4226221))

(assert (= b!4226219 b!4226220))

(assert (= (and b!4225994 (is-Cons!46550 (t!349291 rules!4013))) b!4226219))

(declare-fun m!4814225 () Bool)

(assert (=> b!4226220 m!4814225))

(declare-fun m!4814227 () Bool)

(assert (=> b!4226220 m!4814227))

(declare-fun b!4226225 () Bool)

(declare-fun e!2623852 () Bool)

(declare-fun tp!1293733 () Bool)

(declare-fun tp!1293732 () Bool)

(assert (=> b!4226225 (= e!2623852 (and tp!1293733 tp!1293732))))

(declare-fun b!4226223 () Bool)

(declare-fun tp!1293731 () Bool)

(declare-fun tp!1293729 () Bool)

(assert (=> b!4226223 (= e!2623852 (and tp!1293731 tp!1293729))))

(assert (=> b!4226001 (= tp!1293672 e!2623852)))

(declare-fun b!4226222 () Bool)

(assert (=> b!4226222 (= e!2623852 tp_is_empty!22419)))

(declare-fun b!4226224 () Bool)

(declare-fun tp!1293730 () Bool)

(assert (=> b!4226224 (= e!2623852 tp!1293730)))

(assert (= (and b!4226001 (is-ElementMatch!12728 (regex!7823 r!4313))) b!4226222))

(assert (= (and b!4226001 (is-Concat!20782 (regex!7823 r!4313))) b!4226223))

(assert (= (and b!4226001 (is-Star!12728 (regex!7823 r!4313))) b!4226224))

(assert (= (and b!4226001 (is-Union!12728 (regex!7823 r!4313))) b!4226225))

(push 1)

(assert tp_is_empty!22419)

(assert (not b!4226181))

(assert (not b!4226154))

(assert (not b!4226155))

(assert (not b!4226220))

(assert (not b!4226176))

(assert b_and!333669)

(assert b_and!333673)

(assert (not b!4226190))

(assert (not b!4226210))

(assert (not b!4226219))

(assert b_and!333687)

(assert (not b!4226149))

(assert b_and!333675)

(assert (not b!4226203))

(assert (not b!4226127))

(assert (not b!4226182))

(assert (not b_next!125157))

(assert (not b!4226179))

(assert (not b!4226152))

(assert (not b!4226205))

(assert (not b_next!125141))

(assert (not b!4226150))

(assert (not b_next!125139))

(assert (not b!4226183))

(assert (not b!4226156))

(assert (not d!1244328))

(assert (not b!4226153))

(assert (not d!1244308))

(assert (not bm!293245))

(assert (not b!4226151))

(assert (not d!1244332))

(assert (not b!4226177))

(assert (not b!4226224))

(assert (not b!4226128))

(assert (not b!4226180))

(assert (not b!4226049))

(assert (not b!4226223))

(assert (not b!4226191))

(assert (not d!1244338))

(assert (not b_next!125155))

(assert (not d!1244334))

(assert (not b_next!125143))

(assert (not b!4226204))

(assert (not b!4226178))

(assert (not b!4226225))

(assert (not b_next!125145))

(assert b_and!333685)

(assert (not d!1244300))

(assert (not d!1244306))

(assert b_and!333671)

(assert (not d!1244294))

(assert (not b!4226045))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!125157))

(assert (not b_next!125141))

(assert (not b_next!125139))

(assert (not b_next!125155))

(assert (not b_next!125143))

(assert b_and!333669)

(assert b_and!333673)

(assert (not b_next!125145))

(assert b_and!333687)

(assert b_and!333675)

(assert b_and!333685)

(assert b_and!333671)

(check-sat)

(pop 1)

