; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!347672 () Bool)

(assert start!347672)

(declare-fun b!3692983 () Bool)

(declare-fun b_free!98081 () Bool)

(declare-fun b_next!98785 () Bool)

(assert (=> b!3692983 (= b_free!98081 (not b_next!98785))))

(declare-fun tp!1122320 () Bool)

(declare-fun b_and!275879 () Bool)

(assert (=> b!3692983 (= tp!1122320 b_and!275879)))

(declare-fun b_free!98083 () Bool)

(declare-fun b_next!98787 () Bool)

(assert (=> b!3692983 (= b_free!98083 (not b_next!98787))))

(declare-fun tp!1122317 () Bool)

(declare-fun b_and!275881 () Bool)

(assert (=> b!3692983 (= tp!1122317 b_and!275881)))

(declare-fun b!3692985 () Bool)

(declare-fun b_free!98085 () Bool)

(declare-fun b_next!98789 () Bool)

(assert (=> b!3692985 (= b_free!98085 (not b_next!98789))))

(declare-fun tp!1122316 () Bool)

(declare-fun b_and!275883 () Bool)

(assert (=> b!3692985 (= tp!1122316 b_and!275883)))

(declare-fun b_free!98087 () Bool)

(declare-fun b_next!98791 () Bool)

(assert (=> b!3692985 (= b_free!98087 (not b_next!98791))))

(declare-fun tp!1122319 () Bool)

(declare-fun b_and!275885 () Bool)

(assert (=> b!3692985 (= tp!1122319 b_and!275885)))

(declare-fun res!1501373 () Bool)

(declare-fun e!2286814 () Bool)

(assert (=> start!347672 (=> (not res!1501373) (not e!2286814))))

(declare-datatypes ((LexerInterface!5512 0))(
  ( (LexerInterfaceExt!5509 (__x!24523 Int)) (Lexer!5510) )
))
(declare-fun thiss!25322 () LexerInterface!5512)

(assert (=> start!347672 (= res!1501373 (is-Lexer!5510 thiss!25322))))

(assert (=> start!347672 e!2286814))

(assert (=> start!347672 true))

(declare-fun e!2286811 () Bool)

(assert (=> start!347672 e!2286811))

(declare-datatypes ((List!39268 0))(
  ( (Nil!39144) (Cons!39144 (h!44564 (_ BitVec 16)) (t!301465 List!39268)) )
))
(declare-datatypes ((TokenValue!6153 0))(
  ( (FloatLiteralValue!12306 (text!43516 List!39268)) (TokenValueExt!6152 (__x!24524 Int)) (Broken!30765 (value!189235 List!39268)) (Object!6276) (End!6153) (Def!6153) (Underscore!6153) (Match!6153) (Else!6153) (Error!6153) (Case!6153) (If!6153) (Extends!6153) (Abstract!6153) (Class!6153) (Val!6153) (DelimiterValue!12306 (del!6213 List!39268)) (KeywordValue!6159 (value!189236 List!39268)) (CommentValue!12306 (value!189237 List!39268)) (WhitespaceValue!12306 (value!189238 List!39268)) (IndentationValue!6153 (value!189239 List!39268)) (String!44100) (Int32!6153) (Broken!30766 (value!189240 List!39268)) (Boolean!6154) (Unit!57150) (OperatorValue!6156 (op!6213 List!39268)) (IdentifierValue!12306 (value!189241 List!39268)) (IdentifierValue!12307 (value!189242 List!39268)) (WhitespaceValue!12307 (value!189243 List!39268)) (True!12306) (False!12306) (Broken!30767 (value!189244 List!39268)) (Broken!30768 (value!189245 List!39268)) (True!12307) (RightBrace!6153) (RightBracket!6153) (Colon!6153) (Null!6153) (Comma!6153) (LeftBracket!6153) (False!12307) (LeftBrace!6153) (ImaginaryLiteralValue!6153 (text!43517 List!39268)) (StringLiteralValue!18459 (value!189246 List!39268)) (EOFValue!6153 (value!189247 List!39268)) (IdentValue!6153 (value!189248 List!39268)) (DelimiterValue!12307 (value!189249 List!39268)) (DedentValue!6153 (value!189250 List!39268)) (NewLineValue!6153 (value!189251 List!39268)) (IntegerValue!18459 (value!189252 (_ BitVec 32)) (text!43518 List!39268)) (IntegerValue!18460 (value!189253 Int) (text!43519 List!39268)) (Times!6153) (Or!6153) (Equal!6153) (Minus!6153) (Broken!30769 (value!189254 List!39268)) (And!6153) (Div!6153) (LessEqual!6153) (Mod!6153) (Concat!16835) (Not!6153) (Plus!6153) (SpaceValue!6153 (value!189255 List!39268)) (IntegerValue!18461 (value!189256 Int) (text!43520 List!39268)) (StringLiteralValue!18460 (text!43521 List!39268)) (FloatLiteralValue!12307 (text!43522 List!39268)) (BytesLiteralValue!6153 (value!189257 List!39268)) (CommentValue!12307 (value!189258 List!39268)) (StringLiteralValue!18461 (value!189259 List!39268)) (ErrorTokenValue!6153 (msg!6214 List!39268)) )
))
(declare-datatypes ((C!21550 0))(
  ( (C!21551 (val!12823 Int)) )
))
(declare-datatypes ((List!39269 0))(
  ( (Nil!39145) (Cons!39145 (h!44565 C!21550) (t!301466 List!39269)) )
))
(declare-datatypes ((IArray!24045 0))(
  ( (IArray!24046 (innerList!12080 List!39269)) )
))
(declare-datatypes ((Conc!12020 0))(
  ( (Node!12020 (left!30524 Conc!12020) (right!30854 Conc!12020) (csize!24270 Int) (cheight!12231 Int)) (Leaf!18593 (xs!15222 IArray!24045) (csize!24271 Int)) (Empty!12020) )
))
(declare-datatypes ((BalanceConc!23654 0))(
  ( (BalanceConc!23655 (c!638531 Conc!12020)) )
))
(declare-datatypes ((String!44101 0))(
  ( (String!44102 (value!189260 String)) )
))
(declare-datatypes ((TokenValueInjection!11734 0))(
  ( (TokenValueInjection!11735 (toValue!8251 Int) (toChars!8110 Int)) )
))
(declare-datatypes ((Regex!10682 0))(
  ( (ElementMatch!10682 (c!638532 C!21550)) (Concat!16836 (regOne!21876 Regex!10682) (regTwo!21876 Regex!10682)) (EmptyExpr!10682) (Star!10682 (reg!11011 Regex!10682)) (EmptyLang!10682) (Union!10682 (regOne!21877 Regex!10682) (regTwo!21877 Regex!10682)) )
))
(declare-datatypes ((Rule!11646 0))(
  ( (Rule!11647 (regex!5923 Regex!10682) (tag!6745 String!44101) (isSeparator!5923 Bool) (transformation!5923 TokenValueInjection!11734)) )
))
(declare-datatypes ((Token!11200 0))(
  ( (Token!11201 (value!189261 TokenValue!6153) (rule!8771 Rule!11646) (size!29889 Int) (originalCharacters!6631 List!39269)) )
))
(declare-fun token!544 () Token!11200)

(declare-fun e!2286805 () Bool)

(declare-fun inv!52613 (Token!11200) Bool)

(assert (=> start!347672 (and (inv!52613 token!544) e!2286805)))

(declare-fun e!2286807 () Bool)

(assert (=> start!347672 e!2286807))

(declare-fun b!3692975 () Bool)

(declare-fun e!2286806 () Bool)

(assert (=> b!3692975 (= e!2286814 e!2286806)))

(declare-fun res!1501375 () Bool)

(assert (=> b!3692975 (=> (not res!1501375) (not e!2286806))))

(declare-datatypes ((tuple2!39044 0))(
  ( (tuple2!39045 (_1!22656 Token!11200) (_2!22656 List!39269)) )
))
(declare-datatypes ((Option!8435 0))(
  ( (None!8434) (Some!8434 (v!38390 tuple2!39044)) )
))
(declare-fun lt!1292783 () Option!8435)

(declare-fun isDefined!6628 (Option!8435) Bool)

(assert (=> b!3692975 (= res!1501375 (isDefined!6628 lt!1292783))))

(declare-fun input!3172 () List!39269)

(declare-datatypes ((List!39270 0))(
  ( (Nil!39146) (Cons!39146 (h!44566 Rule!11646) (t!301467 List!39270)) )
))
(declare-fun rules!3598 () List!39270)

(declare-fun maxPrefix!3034 (LexerInterface!5512 List!39270 List!39269) Option!8435)

(assert (=> b!3692975 (= lt!1292783 (maxPrefix!3034 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3692976 () Bool)

(declare-fun e!2286812 () Bool)

(declare-fun tp!1122321 () Bool)

(declare-fun e!2286810 () Bool)

(declare-fun inv!52610 (String!44101) Bool)

(declare-fun inv!52614 (TokenValueInjection!11734) Bool)

(assert (=> b!3692976 (= e!2286810 (and tp!1122321 (inv!52610 (tag!6745 (rule!8771 token!544))) (inv!52614 (transformation!5923 (rule!8771 token!544))) e!2286812))))

(declare-fun b!3692977 () Bool)

(declare-fun res!1501371 () Bool)

(assert (=> b!3692977 (=> (not res!1501371) (not e!2286806))))

(assert (=> b!3692977 (= res!1501371 (is-Cons!39146 rules!3598))))

(declare-fun b!3692978 () Bool)

(declare-fun res!1501374 () Bool)

(assert (=> b!3692978 (=> (not res!1501374) (not e!2286814))))

(declare-fun rulesInvariant!4909 (LexerInterface!5512 List!39270) Bool)

(assert (=> b!3692978 (= res!1501374 (rulesInvariant!4909 thiss!25322 rules!3598))))

(declare-fun e!2286815 () Bool)

(declare-fun tp!1122314 () Bool)

(declare-fun e!2286813 () Bool)

(declare-fun b!3692979 () Bool)

(assert (=> b!3692979 (= e!2286813 (and tp!1122314 (inv!52610 (tag!6745 (h!44566 rules!3598))) (inv!52614 (transformation!5923 (h!44566 rules!3598))) e!2286815))))

(declare-fun b!3692980 () Bool)

(declare-fun res!1501376 () Bool)

(assert (=> b!3692980 (=> (not res!1501376) (not e!2286814))))

(declare-fun isEmpty!23331 (List!39270) Bool)

(assert (=> b!3692980 (= res!1501376 (not (isEmpty!23331 rules!3598)))))

(declare-fun b!3692981 () Bool)

(declare-fun ruleValid!2144 (LexerInterface!5512 Rule!11646) Bool)

(assert (=> b!3692981 (= e!2286806 (not (ruleValid!2144 thiss!25322 (h!44566 rules!3598))))))

(declare-fun b!3692982 () Bool)

(declare-fun res!1501372 () Bool)

(assert (=> b!3692982 (=> (not res!1501372) (not e!2286806))))

(declare-fun maxPrefixOneRule!2148 (LexerInterface!5512 Rule!11646 List!39269) Option!8435)

(assert (=> b!3692982 (= res!1501372 (isDefined!6628 (maxPrefixOneRule!2148 thiss!25322 (h!44566 rules!3598) input!3172)))))

(assert (=> b!3692983 (= e!2286812 (and tp!1122320 tp!1122317))))

(declare-fun b!3692984 () Bool)

(declare-fun tp!1122313 () Bool)

(declare-fun inv!21 (TokenValue!6153) Bool)

(assert (=> b!3692984 (= e!2286805 (and (inv!21 (value!189261 token!544)) e!2286810 tp!1122313))))

(assert (=> b!3692985 (= e!2286815 (and tp!1122316 tp!1122319))))

(declare-fun b!3692986 () Bool)

(declare-fun tp!1122318 () Bool)

(assert (=> b!3692986 (= e!2286811 (and e!2286813 tp!1122318))))

(declare-fun b!3692987 () Bool)

(declare-fun res!1501377 () Bool)

(assert (=> b!3692987 (=> (not res!1501377) (not e!2286806))))

(declare-fun get!12988 (Option!8435) tuple2!39044)

(assert (=> b!3692987 (= res!1501377 (= (_1!22656 (get!12988 lt!1292783)) token!544))))

(declare-fun b!3692988 () Bool)

(declare-fun tp_is_empty!18439 () Bool)

(declare-fun tp!1122315 () Bool)

(assert (=> b!3692988 (= e!2286807 (and tp_is_empty!18439 tp!1122315))))

(assert (= (and start!347672 res!1501373) b!3692978))

(assert (= (and b!3692978 res!1501374) b!3692980))

(assert (= (and b!3692980 res!1501376) b!3692975))

(assert (= (and b!3692975 res!1501375) b!3692987))

(assert (= (and b!3692987 res!1501377) b!3692977))

(assert (= (and b!3692977 res!1501371) b!3692982))

(assert (= (and b!3692982 res!1501372) b!3692981))

(assert (= b!3692979 b!3692985))

(assert (= b!3692986 b!3692979))

(assert (= (and start!347672 (is-Cons!39146 rules!3598)) b!3692986))

(assert (= b!3692976 b!3692983))

(assert (= b!3692984 b!3692976))

(assert (= start!347672 b!3692984))

(assert (= (and start!347672 (is-Cons!39145 input!3172)) b!3692988))

(declare-fun m!4205181 () Bool)

(assert (=> b!3692979 m!4205181))

(declare-fun m!4205183 () Bool)

(assert (=> b!3692979 m!4205183))

(declare-fun m!4205185 () Bool)

(assert (=> b!3692976 m!4205185))

(declare-fun m!4205187 () Bool)

(assert (=> b!3692976 m!4205187))

(declare-fun m!4205189 () Bool)

(assert (=> b!3692984 m!4205189))

(declare-fun m!4205191 () Bool)

(assert (=> b!3692982 m!4205191))

(assert (=> b!3692982 m!4205191))

(declare-fun m!4205193 () Bool)

(assert (=> b!3692982 m!4205193))

(declare-fun m!4205195 () Bool)

(assert (=> b!3692980 m!4205195))

(declare-fun m!4205197 () Bool)

(assert (=> start!347672 m!4205197))

(declare-fun m!4205199 () Bool)

(assert (=> b!3692978 m!4205199))

(declare-fun m!4205201 () Bool)

(assert (=> b!3692987 m!4205201))

(declare-fun m!4205203 () Bool)

(assert (=> b!3692981 m!4205203))

(declare-fun m!4205205 () Bool)

(assert (=> b!3692975 m!4205205))

(declare-fun m!4205207 () Bool)

(assert (=> b!3692975 m!4205207))

(push 1)

(assert (not b!3692984))

(assert b_and!275883)

(assert (not b!3692982))

(assert (not b_next!98787))

(assert (not b!3692980))

(assert (not b!3692979))

(assert b_and!275885)

(assert tp_is_empty!18439)

(assert (not b!3692987))

(assert b_and!275881)

(assert (not b!3692986))

(assert (not b!3692978))

(assert (not b!3692975))

(assert b_and!275879)

(assert (not b_next!98791))

(assert (not b_next!98789))

(assert (not b!3692976))

(assert (not b!3692988))

(assert (not start!347672))

(assert (not b!3692981))

(assert (not b_next!98785))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275881)

(assert b_and!275883)

(assert (not b_next!98787))

(assert (not b_next!98785))

(assert b_and!275885)

(assert b_and!275879)

(assert (not b_next!98791))

(assert (not b_next!98789))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1083655 () Bool)

(assert (=> d!1083655 (= (get!12988 lt!1292783) (v!38390 lt!1292783))))

(assert (=> b!3692987 d!1083655))

(declare-fun d!1083659 () Bool)

(declare-fun isEmpty!23333 (Option!8435) Bool)

(assert (=> d!1083659 (= (isDefined!6628 (maxPrefixOneRule!2148 thiss!25322 (h!44566 rules!3598) input!3172)) (not (isEmpty!23333 (maxPrefixOneRule!2148 thiss!25322 (h!44566 rules!3598) input!3172))))))

(declare-fun bs!574184 () Bool)

(assert (= bs!574184 d!1083659))

(assert (=> bs!574184 m!4205191))

(declare-fun m!4205237 () Bool)

(assert (=> bs!574184 m!4205237))

(assert (=> b!3692982 d!1083659))

(declare-fun b!3693060 () Bool)

(declare-fun res!1501429 () Bool)

(declare-fun e!2286869 () Bool)

(assert (=> b!3693060 (=> (not res!1501429) (not e!2286869))))

(declare-fun lt!1292797 () Option!8435)

(assert (=> b!3693060 (= res!1501429 (= (rule!8771 (_1!22656 (get!12988 lt!1292797))) (h!44566 rules!3598)))))

(declare-fun b!3693061 () Bool)

(declare-fun res!1501428 () Bool)

(assert (=> b!3693061 (=> (not res!1501428) (not e!2286869))))

(declare-fun apply!9381 (TokenValueInjection!11734 BalanceConc!23654) TokenValue!6153)

(declare-fun seqFromList!4460 (List!39269) BalanceConc!23654)

(assert (=> b!3693061 (= res!1501428 (= (value!189261 (_1!22656 (get!12988 lt!1292797))) (apply!9381 (transformation!5923 (rule!8771 (_1!22656 (get!12988 lt!1292797)))) (seqFromList!4460 (originalCharacters!6631 (_1!22656 (get!12988 lt!1292797)))))))))

(declare-fun b!3693062 () Bool)

(declare-fun e!2286867 () Option!8435)

(declare-datatypes ((tuple2!39048 0))(
  ( (tuple2!39049 (_1!22658 List!39269) (_2!22658 List!39269)) )
))
(declare-fun lt!1292798 () tuple2!39048)

(declare-fun size!29891 (BalanceConc!23654) Int)

(assert (=> b!3693062 (= e!2286867 (Some!8434 (tuple2!39045 (Token!11201 (apply!9381 (transformation!5923 (h!44566 rules!3598)) (seqFromList!4460 (_1!22658 lt!1292798))) (h!44566 rules!3598) (size!29891 (seqFromList!4460 (_1!22658 lt!1292798))) (_1!22658 lt!1292798)) (_2!22658 lt!1292798))))))

(declare-datatypes ((Unit!57152 0))(
  ( (Unit!57153) )
))
(declare-fun lt!1292801 () Unit!57152)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1080 (Regex!10682 List!39269) Unit!57152)

(assert (=> b!3693062 (= lt!1292801 (longestMatchIsAcceptedByMatchOrIsEmpty!1080 (regex!5923 (h!44566 rules!3598)) input!3172))))

(declare-fun res!1501427 () Bool)

(declare-fun isEmpty!23334 (List!39269) Bool)

(declare-fun findLongestMatchInner!1107 (Regex!10682 List!39269 Int List!39269 List!39269 Int) tuple2!39048)

(declare-fun size!29892 (List!39269) Int)

(assert (=> b!3693062 (= res!1501427 (isEmpty!23334 (_1!22658 (findLongestMatchInner!1107 (regex!5923 (h!44566 rules!3598)) Nil!39145 (size!29892 Nil!39145) input!3172 input!3172 (size!29892 input!3172)))))))

(declare-fun e!2286868 () Bool)

(assert (=> b!3693062 (=> res!1501427 e!2286868)))

(assert (=> b!3693062 e!2286868))

(declare-fun lt!1292799 () Unit!57152)

(assert (=> b!3693062 (= lt!1292799 lt!1292801)))

(declare-fun lt!1292800 () Unit!57152)

(declare-fun lemmaSemiInverse!1613 (TokenValueInjection!11734 BalanceConc!23654) Unit!57152)

(assert (=> b!3693062 (= lt!1292800 (lemmaSemiInverse!1613 (transformation!5923 (h!44566 rules!3598)) (seqFromList!4460 (_1!22658 lt!1292798))))))

(declare-fun b!3693063 () Bool)

(declare-fun res!1501430 () Bool)

(assert (=> b!3693063 (=> (not res!1501430) (not e!2286869))))

(declare-fun ++!9741 (List!39269 List!39269) List!39269)

(declare-fun list!14630 (BalanceConc!23654) List!39269)

(declare-fun charsOf!3922 (Token!11200) BalanceConc!23654)

(assert (=> b!3693063 (= res!1501430 (= (++!9741 (list!14630 (charsOf!3922 (_1!22656 (get!12988 lt!1292797)))) (_2!22656 (get!12988 lt!1292797))) input!3172))))

(declare-fun b!3693064 () Bool)

(declare-fun res!1501432 () Bool)

(assert (=> b!3693064 (=> (not res!1501432) (not e!2286869))))

(assert (=> b!3693064 (= res!1501432 (< (size!29892 (_2!22656 (get!12988 lt!1292797))) (size!29892 input!3172)))))

(declare-fun b!3693065 () Bool)

(declare-fun matchR!5225 (Regex!10682 List!39269) Bool)

(assert (=> b!3693065 (= e!2286868 (matchR!5225 (regex!5923 (h!44566 rules!3598)) (_1!22658 (findLongestMatchInner!1107 (regex!5923 (h!44566 rules!3598)) Nil!39145 (size!29892 Nil!39145) input!3172 input!3172 (size!29892 input!3172)))))))

(declare-fun d!1083661 () Bool)

(declare-fun e!2286870 () Bool)

(assert (=> d!1083661 e!2286870))

(declare-fun res!1501433 () Bool)

(assert (=> d!1083661 (=> res!1501433 e!2286870)))

(assert (=> d!1083661 (= res!1501433 (isEmpty!23333 lt!1292797))))

(assert (=> d!1083661 (= lt!1292797 e!2286867)))

(declare-fun c!638538 () Bool)

(assert (=> d!1083661 (= c!638538 (isEmpty!23334 (_1!22658 lt!1292798)))))

(declare-fun findLongestMatch!1022 (Regex!10682 List!39269) tuple2!39048)

(assert (=> d!1083661 (= lt!1292798 (findLongestMatch!1022 (regex!5923 (h!44566 rules!3598)) input!3172))))

(assert (=> d!1083661 (ruleValid!2144 thiss!25322 (h!44566 rules!3598))))

(assert (=> d!1083661 (= (maxPrefixOneRule!2148 thiss!25322 (h!44566 rules!3598) input!3172) lt!1292797)))

(declare-fun b!3693066 () Bool)

(assert (=> b!3693066 (= e!2286870 e!2286869)))

(declare-fun res!1501431 () Bool)

(assert (=> b!3693066 (=> (not res!1501431) (not e!2286869))))

(assert (=> b!3693066 (= res!1501431 (matchR!5225 (regex!5923 (h!44566 rules!3598)) (list!14630 (charsOf!3922 (_1!22656 (get!12988 lt!1292797))))))))

(declare-fun b!3693067 () Bool)

(assert (=> b!3693067 (= e!2286867 None!8434)))

(declare-fun b!3693068 () Bool)

(assert (=> b!3693068 (= e!2286869 (= (size!29889 (_1!22656 (get!12988 lt!1292797))) (size!29892 (originalCharacters!6631 (_1!22656 (get!12988 lt!1292797))))))))

(assert (= (and d!1083661 c!638538) b!3693067))

(assert (= (and d!1083661 (not c!638538)) b!3693062))

(assert (= (and b!3693062 (not res!1501427)) b!3693065))

(assert (= (and d!1083661 (not res!1501433)) b!3693066))

(assert (= (and b!3693066 res!1501431) b!3693063))

(assert (= (and b!3693063 res!1501430) b!3693064))

(assert (= (and b!3693064 res!1501432) b!3693060))

(assert (= (and b!3693060 res!1501429) b!3693061))

(assert (= (and b!3693061 res!1501428) b!3693068))

(declare-fun m!4205253 () Bool)

(assert (=> b!3693066 m!4205253))

(declare-fun m!4205255 () Bool)

(assert (=> b!3693066 m!4205255))

(assert (=> b!3693066 m!4205255))

(declare-fun m!4205257 () Bool)

(assert (=> b!3693066 m!4205257))

(assert (=> b!3693066 m!4205257))

(declare-fun m!4205259 () Bool)

(assert (=> b!3693066 m!4205259))

(declare-fun m!4205261 () Bool)

(assert (=> d!1083661 m!4205261))

(declare-fun m!4205263 () Bool)

(assert (=> d!1083661 m!4205263))

(declare-fun m!4205265 () Bool)

(assert (=> d!1083661 m!4205265))

(assert (=> d!1083661 m!4205203))

(assert (=> b!3693061 m!4205253))

(declare-fun m!4205267 () Bool)

(assert (=> b!3693061 m!4205267))

(assert (=> b!3693061 m!4205267))

(declare-fun m!4205269 () Bool)

(assert (=> b!3693061 m!4205269))

(assert (=> b!3693063 m!4205253))

(assert (=> b!3693063 m!4205255))

(assert (=> b!3693063 m!4205255))

(assert (=> b!3693063 m!4205257))

(assert (=> b!3693063 m!4205257))

(declare-fun m!4205271 () Bool)

(assert (=> b!3693063 m!4205271))

(declare-fun m!4205273 () Bool)

(assert (=> b!3693062 m!4205273))

(declare-fun m!4205275 () Bool)

(assert (=> b!3693062 m!4205275))

(assert (=> b!3693062 m!4205273))

(declare-fun m!4205277 () Bool)

(assert (=> b!3693062 m!4205277))

(declare-fun m!4205279 () Bool)

(assert (=> b!3693062 m!4205279))

(declare-fun m!4205281 () Bool)

(assert (=> b!3693062 m!4205281))

(declare-fun m!4205283 () Bool)

(assert (=> b!3693062 m!4205283))

(assert (=> b!3693062 m!4205273))

(declare-fun m!4205285 () Bool)

(assert (=> b!3693062 m!4205285))

(assert (=> b!3693062 m!4205273))

(assert (=> b!3693062 m!4205283))

(assert (=> b!3693062 m!4205279))

(declare-fun m!4205287 () Bool)

(assert (=> b!3693062 m!4205287))

(declare-fun m!4205289 () Bool)

(assert (=> b!3693062 m!4205289))

(assert (=> b!3693065 m!4205283))

(assert (=> b!3693065 m!4205279))

(assert (=> b!3693065 m!4205283))

(assert (=> b!3693065 m!4205279))

(assert (=> b!3693065 m!4205287))

(declare-fun m!4205291 () Bool)

(assert (=> b!3693065 m!4205291))

(assert (=> b!3693068 m!4205253))

(declare-fun m!4205293 () Bool)

(assert (=> b!3693068 m!4205293))

(assert (=> b!3693064 m!4205253))

(declare-fun m!4205295 () Bool)

(assert (=> b!3693064 m!4205295))

(assert (=> b!3693064 m!4205279))

(assert (=> b!3693060 m!4205253))

(assert (=> b!3692982 d!1083661))

(declare-fun d!1083667 () Bool)

(declare-fun res!1501436 () Bool)

(declare-fun e!2286873 () Bool)

(assert (=> d!1083667 (=> (not res!1501436) (not e!2286873))))

(declare-fun rulesValid!2287 (LexerInterface!5512 List!39270) Bool)

(assert (=> d!1083667 (= res!1501436 (rulesValid!2287 thiss!25322 rules!3598))))

(assert (=> d!1083667 (= (rulesInvariant!4909 thiss!25322 rules!3598) e!2286873)))

(declare-fun b!3693071 () Bool)

(declare-datatypes ((List!39274 0))(
  ( (Nil!39150) (Cons!39150 (h!44570 String!44101) (t!301481 List!39274)) )
))
(declare-fun noDuplicateTag!2283 (LexerInterface!5512 List!39270 List!39274) Bool)

(assert (=> b!3693071 (= e!2286873 (noDuplicateTag!2283 thiss!25322 rules!3598 Nil!39150))))

(assert (= (and d!1083667 res!1501436) b!3693071))

(declare-fun m!4205297 () Bool)

(assert (=> d!1083667 m!4205297))

(declare-fun m!4205299 () Bool)

(assert (=> b!3693071 m!4205299))

(assert (=> b!3692978 d!1083667))

(declare-fun b!3693086 () Bool)

(declare-fun e!2286883 () Bool)

(declare-fun inv!15 (TokenValue!6153) Bool)

(assert (=> b!3693086 (= e!2286883 (inv!15 (value!189261 token!544)))))

(declare-fun b!3693088 () Bool)

(declare-fun e!2286884 () Bool)

(declare-fun inv!17 (TokenValue!6153) Bool)

(assert (=> b!3693088 (= e!2286884 (inv!17 (value!189261 token!544)))))

(declare-fun b!3693089 () Bool)

(declare-fun e!2286882 () Bool)

(assert (=> b!3693089 (= e!2286882 e!2286884)))

(declare-fun c!638546 () Bool)

(assert (=> b!3693089 (= c!638546 (is-IntegerValue!18460 (value!189261 token!544)))))

(declare-fun b!3693090 () Bool)

(declare-fun res!1501439 () Bool)

(assert (=> b!3693090 (=> res!1501439 e!2286883)))

(assert (=> b!3693090 (= res!1501439 (not (is-IntegerValue!18461 (value!189261 token!544))))))

(assert (=> b!3693090 (= e!2286884 e!2286883)))

(declare-fun d!1083669 () Bool)

(declare-fun c!638545 () Bool)

(assert (=> d!1083669 (= c!638545 (is-IntegerValue!18459 (value!189261 token!544)))))

(assert (=> d!1083669 (= (inv!21 (value!189261 token!544)) e!2286882)))

(declare-fun b!3693087 () Bool)

(declare-fun inv!16 (TokenValue!6153) Bool)

(assert (=> b!3693087 (= e!2286882 (inv!16 (value!189261 token!544)))))

(assert (= (and d!1083669 c!638545) b!3693087))

(assert (= (and d!1083669 (not c!638545)) b!3693089))

(assert (= (and b!3693089 c!638546) b!3693088))

(assert (= (and b!3693089 (not c!638546)) b!3693090))

(assert (= (and b!3693090 (not res!1501439)) b!3693086))

(declare-fun m!4205301 () Bool)

(assert (=> b!3693086 m!4205301))

(declare-fun m!4205303 () Bool)

(assert (=> b!3693088 m!4205303))

(declare-fun m!4205305 () Bool)

(assert (=> b!3693087 m!4205305))

(assert (=> b!3692984 d!1083669))

(declare-fun d!1083671 () Bool)

(declare-fun res!1501458 () Bool)

(declare-fun e!2286891 () Bool)

(assert (=> d!1083671 (=> (not res!1501458) (not e!2286891))))

(assert (=> d!1083671 (= res!1501458 (not (isEmpty!23334 (originalCharacters!6631 token!544))))))

(assert (=> d!1083671 (= (inv!52613 token!544) e!2286891)))

(declare-fun b!3693109 () Bool)

(declare-fun res!1501459 () Bool)

(assert (=> b!3693109 (=> (not res!1501459) (not e!2286891))))

(declare-fun dynLambda!17140 (Int TokenValue!6153) BalanceConc!23654)

(assert (=> b!3693109 (= res!1501459 (= (originalCharacters!6631 token!544) (list!14630 (dynLambda!17140 (toChars!8110 (transformation!5923 (rule!8771 token!544))) (value!189261 token!544)))))))

(declare-fun b!3693110 () Bool)

(assert (=> b!3693110 (= e!2286891 (= (size!29889 token!544) (size!29892 (originalCharacters!6631 token!544))))))

(assert (= (and d!1083671 res!1501458) b!3693109))

(assert (= (and b!3693109 res!1501459) b!3693110))

(declare-fun b_lambda!109541 () Bool)

(assert (=> (not b_lambda!109541) (not b!3693109)))

(declare-fun t!301476 () Bool)

(declare-fun tb!213921 () Bool)

(assert (=> (and b!3692983 (= (toChars!8110 (transformation!5923 (rule!8771 token!544))) (toChars!8110 (transformation!5923 (rule!8771 token!544)))) t!301476) tb!213921))

(declare-fun b!3693115 () Bool)

(declare-fun e!2286894 () Bool)

(declare-fun tp!1122354 () Bool)

(declare-fun inv!52617 (Conc!12020) Bool)

(assert (=> b!3693115 (= e!2286894 (and (inv!52617 (c!638531 (dynLambda!17140 (toChars!8110 (transformation!5923 (rule!8771 token!544))) (value!189261 token!544)))) tp!1122354))))

(declare-fun result!260508 () Bool)

(declare-fun inv!52618 (BalanceConc!23654) Bool)

(assert (=> tb!213921 (= result!260508 (and (inv!52618 (dynLambda!17140 (toChars!8110 (transformation!5923 (rule!8771 token!544))) (value!189261 token!544))) e!2286894))))

(assert (= tb!213921 b!3693115))

(declare-fun m!4205307 () Bool)

(assert (=> b!3693115 m!4205307))

(declare-fun m!4205309 () Bool)

(assert (=> tb!213921 m!4205309))

(assert (=> b!3693109 t!301476))

(declare-fun b_and!275899 () Bool)

(assert (= b_and!275881 (and (=> t!301476 result!260508) b_and!275899)))

(declare-fun t!301478 () Bool)

(declare-fun tb!213923 () Bool)

(assert (=> (and b!3692985 (= (toChars!8110 (transformation!5923 (h!44566 rules!3598))) (toChars!8110 (transformation!5923 (rule!8771 token!544)))) t!301478) tb!213923))

(declare-fun result!260512 () Bool)

(assert (= result!260512 result!260508))

(assert (=> b!3693109 t!301478))

(declare-fun b_and!275901 () Bool)

(assert (= b_and!275885 (and (=> t!301478 result!260512) b_and!275901)))

(declare-fun m!4205311 () Bool)

(assert (=> d!1083671 m!4205311))

(declare-fun m!4205313 () Bool)

(assert (=> b!3693109 m!4205313))

(assert (=> b!3693109 m!4205313))

(declare-fun m!4205315 () Bool)

(assert (=> b!3693109 m!4205315))

(declare-fun m!4205317 () Bool)

(assert (=> b!3693110 m!4205317))

(assert (=> start!347672 d!1083671))

(declare-fun d!1083673 () Bool)

(assert (=> d!1083673 (= (inv!52610 (tag!6745 (h!44566 rules!3598))) (= (mod (str.len (value!189260 (tag!6745 (h!44566 rules!3598)))) 2) 0))))

(assert (=> b!3692979 d!1083673))

(declare-fun d!1083675 () Bool)

(declare-fun res!1501462 () Bool)

(declare-fun e!2286897 () Bool)

(assert (=> d!1083675 (=> (not res!1501462) (not e!2286897))))

(declare-fun semiInverseModEq!2530 (Int Int) Bool)

(assert (=> d!1083675 (= res!1501462 (semiInverseModEq!2530 (toChars!8110 (transformation!5923 (h!44566 rules!3598))) (toValue!8251 (transformation!5923 (h!44566 rules!3598)))))))

(assert (=> d!1083675 (= (inv!52614 (transformation!5923 (h!44566 rules!3598))) e!2286897)))

(declare-fun b!3693118 () Bool)

(declare-fun equivClasses!2429 (Int Int) Bool)

(assert (=> b!3693118 (= e!2286897 (equivClasses!2429 (toChars!8110 (transformation!5923 (h!44566 rules!3598))) (toValue!8251 (transformation!5923 (h!44566 rules!3598)))))))

(assert (= (and d!1083675 res!1501462) b!3693118))

(declare-fun m!4205319 () Bool)

(assert (=> d!1083675 m!4205319))

(declare-fun m!4205321 () Bool)

(assert (=> b!3693118 m!4205321))

(assert (=> b!3692979 d!1083675))

(declare-fun d!1083677 () Bool)

(assert (=> d!1083677 (= (isEmpty!23331 rules!3598) (is-Nil!39146 rules!3598))))

(assert (=> b!3692980 d!1083677))

(declare-fun d!1083679 () Bool)

(assert (=> d!1083679 (= (isDefined!6628 lt!1292783) (not (isEmpty!23333 lt!1292783)))))

(declare-fun bs!574186 () Bool)

(assert (= bs!574186 d!1083679))

(declare-fun m!4205323 () Bool)

(assert (=> bs!574186 m!4205323))

(assert (=> b!3692975 d!1083679))

(declare-fun b!3693156 () Bool)

(declare-fun res!1501496 () Bool)

(declare-fun e!2286915 () Bool)

(assert (=> b!3693156 (=> (not res!1501496) (not e!2286915))))

(declare-fun lt!1292830 () Option!8435)

(assert (=> b!3693156 (= res!1501496 (< (size!29892 (_2!22656 (get!12988 lt!1292830))) (size!29892 input!3172)))))

(declare-fun b!3693157 () Bool)

(declare-fun res!1501499 () Bool)

(assert (=> b!3693157 (=> (not res!1501499) (not e!2286915))))

(assert (=> b!3693157 (= res!1501499 (= (list!14630 (charsOf!3922 (_1!22656 (get!12988 lt!1292830)))) (originalCharacters!6631 (_1!22656 (get!12988 lt!1292830)))))))

(declare-fun b!3693158 () Bool)

(declare-fun e!2286916 () Bool)

(assert (=> b!3693158 (= e!2286916 e!2286915)))

(declare-fun res!1501495 () Bool)

(assert (=> b!3693158 (=> (not res!1501495) (not e!2286915))))

(assert (=> b!3693158 (= res!1501495 (isDefined!6628 lt!1292830))))

(declare-fun b!3693159 () Bool)

(declare-fun e!2286917 () Option!8435)

(declare-fun lt!1292831 () Option!8435)

(declare-fun lt!1292829 () Option!8435)

(assert (=> b!3693159 (= e!2286917 (ite (and (is-None!8434 lt!1292831) (is-None!8434 lt!1292829)) None!8434 (ite (is-None!8434 lt!1292829) lt!1292831 (ite (is-None!8434 lt!1292831) lt!1292829 (ite (>= (size!29889 (_1!22656 (v!38390 lt!1292831))) (size!29889 (_1!22656 (v!38390 lt!1292829)))) lt!1292831 lt!1292829)))))))

(declare-fun call!267008 () Option!8435)

(assert (=> b!3693159 (= lt!1292831 call!267008)))

(assert (=> b!3693159 (= lt!1292829 (maxPrefix!3034 thiss!25322 (t!301467 rules!3598) input!3172))))

(declare-fun b!3693160 () Bool)

(declare-fun res!1501494 () Bool)

(assert (=> b!3693160 (=> (not res!1501494) (not e!2286915))))

(assert (=> b!3693160 (= res!1501494 (= (value!189261 (_1!22656 (get!12988 lt!1292830))) (apply!9381 (transformation!5923 (rule!8771 (_1!22656 (get!12988 lt!1292830)))) (seqFromList!4460 (originalCharacters!6631 (_1!22656 (get!12988 lt!1292830)))))))))

(declare-fun b!3693161 () Bool)

(assert (=> b!3693161 (= e!2286917 call!267008)))

(declare-fun d!1083681 () Bool)

(assert (=> d!1083681 e!2286916))

(declare-fun res!1501500 () Bool)

(assert (=> d!1083681 (=> res!1501500 e!2286916)))

(assert (=> d!1083681 (= res!1501500 (isEmpty!23333 lt!1292830))))

(assert (=> d!1083681 (= lt!1292830 e!2286917)))

(declare-fun c!638550 () Bool)

(assert (=> d!1083681 (= c!638550 (and (is-Cons!39146 rules!3598) (is-Nil!39146 (t!301467 rules!3598))))))

(declare-fun lt!1292828 () Unit!57152)

(declare-fun lt!1292827 () Unit!57152)

(assert (=> d!1083681 (= lt!1292828 lt!1292827)))

(declare-fun isPrefix!3263 (List!39269 List!39269) Bool)

(assert (=> d!1083681 (isPrefix!3263 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2048 (List!39269 List!39269) Unit!57152)

(assert (=> d!1083681 (= lt!1292827 (lemmaIsPrefixRefl!2048 input!3172 input!3172))))

(declare-fun rulesValidInductive!2129 (LexerInterface!5512 List!39270) Bool)

(assert (=> d!1083681 (rulesValidInductive!2129 thiss!25322 rules!3598)))

(assert (=> d!1083681 (= (maxPrefix!3034 thiss!25322 rules!3598 input!3172) lt!1292830)))

(declare-fun b!3693162 () Bool)

(declare-fun res!1501497 () Bool)

(assert (=> b!3693162 (=> (not res!1501497) (not e!2286915))))

(assert (=> b!3693162 (= res!1501497 (matchR!5225 (regex!5923 (rule!8771 (_1!22656 (get!12988 lt!1292830)))) (list!14630 (charsOf!3922 (_1!22656 (get!12988 lt!1292830))))))))

(declare-fun b!3693163 () Bool)

(declare-fun res!1501498 () Bool)

(assert (=> b!3693163 (=> (not res!1501498) (not e!2286915))))

(assert (=> b!3693163 (= res!1501498 (= (++!9741 (list!14630 (charsOf!3922 (_1!22656 (get!12988 lt!1292830)))) (_2!22656 (get!12988 lt!1292830))) input!3172))))

(declare-fun bm!267003 () Bool)

(assert (=> bm!267003 (= call!267008 (maxPrefixOneRule!2148 thiss!25322 (h!44566 rules!3598) input!3172))))

(declare-fun b!3693164 () Bool)

(declare-fun contains!7813 (List!39270 Rule!11646) Bool)

(assert (=> b!3693164 (= e!2286915 (contains!7813 rules!3598 (rule!8771 (_1!22656 (get!12988 lt!1292830)))))))

(assert (= (and d!1083681 c!638550) b!3693161))

(assert (= (and d!1083681 (not c!638550)) b!3693159))

(assert (= (or b!3693161 b!3693159) bm!267003))

(assert (= (and d!1083681 (not res!1501500)) b!3693158))

(assert (= (and b!3693158 res!1501495) b!3693157))

(assert (= (and b!3693157 res!1501499) b!3693156))

(assert (= (and b!3693156 res!1501496) b!3693163))

(assert (= (and b!3693163 res!1501498) b!3693160))

(assert (= (and b!3693160 res!1501494) b!3693162))

(assert (= (and b!3693162 res!1501497) b!3693164))

(declare-fun m!4205373 () Bool)

(assert (=> b!3693157 m!4205373))

(declare-fun m!4205375 () Bool)

(assert (=> b!3693157 m!4205375))

(assert (=> b!3693157 m!4205375))

(declare-fun m!4205377 () Bool)

(assert (=> b!3693157 m!4205377))

(declare-fun m!4205379 () Bool)

(assert (=> b!3693159 m!4205379))

(declare-fun m!4205381 () Bool)

(assert (=> d!1083681 m!4205381))

(declare-fun m!4205383 () Bool)

(assert (=> d!1083681 m!4205383))

(declare-fun m!4205385 () Bool)

(assert (=> d!1083681 m!4205385))

(declare-fun m!4205387 () Bool)

(assert (=> d!1083681 m!4205387))

(declare-fun m!4205389 () Bool)

(assert (=> b!3693158 m!4205389))

(assert (=> b!3693156 m!4205373))

(declare-fun m!4205391 () Bool)

(assert (=> b!3693156 m!4205391))

(assert (=> b!3693156 m!4205279))

(assert (=> b!3693162 m!4205373))

(assert (=> b!3693162 m!4205375))

(assert (=> b!3693162 m!4205375))

(assert (=> b!3693162 m!4205377))

(assert (=> b!3693162 m!4205377))

(declare-fun m!4205393 () Bool)

(assert (=> b!3693162 m!4205393))

(assert (=> b!3693163 m!4205373))

(assert (=> b!3693163 m!4205375))

(assert (=> b!3693163 m!4205375))

(assert (=> b!3693163 m!4205377))

(assert (=> b!3693163 m!4205377))

(declare-fun m!4205395 () Bool)

(assert (=> b!3693163 m!4205395))

(assert (=> bm!267003 m!4205191))

(assert (=> b!3693164 m!4205373))

(declare-fun m!4205397 () Bool)

(assert (=> b!3693164 m!4205397))

(assert (=> b!3693160 m!4205373))

(declare-fun m!4205399 () Bool)

(assert (=> b!3693160 m!4205399))

(assert (=> b!3693160 m!4205399))

(declare-fun m!4205401 () Bool)

(assert (=> b!3693160 m!4205401))

(assert (=> b!3692975 d!1083681))

(declare-fun d!1083697 () Bool)

(declare-fun res!1501508 () Bool)

(declare-fun e!2286922 () Bool)

(assert (=> d!1083697 (=> (not res!1501508) (not e!2286922))))

(declare-fun validRegex!4889 (Regex!10682) Bool)

(assert (=> d!1083697 (= res!1501508 (validRegex!4889 (regex!5923 (h!44566 rules!3598))))))

(assert (=> d!1083697 (= (ruleValid!2144 thiss!25322 (h!44566 rules!3598)) e!2286922)))

(declare-fun b!3693172 () Bool)

(declare-fun res!1501509 () Bool)

(assert (=> b!3693172 (=> (not res!1501509) (not e!2286922))))

(declare-fun nullable!3727 (Regex!10682) Bool)

(assert (=> b!3693172 (= res!1501509 (not (nullable!3727 (regex!5923 (h!44566 rules!3598)))))))

(declare-fun b!3693173 () Bool)

(assert (=> b!3693173 (= e!2286922 (not (= (tag!6745 (h!44566 rules!3598)) (String!44102 ""))))))

(assert (= (and d!1083697 res!1501508) b!3693172))

(assert (= (and b!3693172 res!1501509) b!3693173))

(declare-fun m!4205403 () Bool)

(assert (=> d!1083697 m!4205403))

(declare-fun m!4205405 () Bool)

(assert (=> b!3693172 m!4205405))

(assert (=> b!3692981 d!1083697))

(declare-fun d!1083699 () Bool)

(assert (=> d!1083699 (= (inv!52610 (tag!6745 (rule!8771 token!544))) (= (mod (str.len (value!189260 (tag!6745 (rule!8771 token!544)))) 2) 0))))

(assert (=> b!3692976 d!1083699))

(declare-fun d!1083701 () Bool)

(declare-fun res!1501510 () Bool)

(declare-fun e!2286925 () Bool)

(assert (=> d!1083701 (=> (not res!1501510) (not e!2286925))))

(assert (=> d!1083701 (= res!1501510 (semiInverseModEq!2530 (toChars!8110 (transformation!5923 (rule!8771 token!544))) (toValue!8251 (transformation!5923 (rule!8771 token!544)))))))

(assert (=> d!1083701 (= (inv!52614 (transformation!5923 (rule!8771 token!544))) e!2286925)))

(declare-fun b!3693178 () Bool)

(assert (=> b!3693178 (= e!2286925 (equivClasses!2429 (toChars!8110 (transformation!5923 (rule!8771 token!544))) (toValue!8251 (transformation!5923 (rule!8771 token!544)))))))

(assert (= (and d!1083701 res!1501510) b!3693178))

(declare-fun m!4205407 () Bool)

(assert (=> d!1083701 m!4205407))

(declare-fun m!4205409 () Bool)

(assert (=> b!3693178 m!4205409))

(assert (=> b!3692976 d!1083701))

(declare-fun b!3693189 () Bool)

(declare-fun e!2286932 () Bool)

(declare-fun tp!1122357 () Bool)

(assert (=> b!3693189 (= e!2286932 (and tp_is_empty!18439 tp!1122357))))

(assert (=> b!3692988 (= tp!1122315 e!2286932)))

(assert (= (and b!3692988 (is-Cons!39145 (t!301466 input!3172))) b!3693189))

(declare-fun b!3693190 () Bool)

(declare-fun e!2286933 () Bool)

(declare-fun tp!1122358 () Bool)

(assert (=> b!3693190 (= e!2286933 (and tp_is_empty!18439 tp!1122358))))

(assert (=> b!3692984 (= tp!1122313 e!2286933)))

(assert (= (and b!3692984 (is-Cons!39145 (originalCharacters!6631 token!544))) b!3693190))

(declare-fun b!3693204 () Bool)

(declare-fun e!2286936 () Bool)

(declare-fun tp!1122370 () Bool)

(declare-fun tp!1122373 () Bool)

(assert (=> b!3693204 (= e!2286936 (and tp!1122370 tp!1122373))))

(declare-fun b!3693202 () Bool)

(declare-fun tp!1122372 () Bool)

(declare-fun tp!1122369 () Bool)

(assert (=> b!3693202 (= e!2286936 (and tp!1122372 tp!1122369))))

(assert (=> b!3692979 (= tp!1122314 e!2286936)))

(declare-fun b!3693203 () Bool)

(declare-fun tp!1122371 () Bool)

(assert (=> b!3693203 (= e!2286936 tp!1122371)))

(declare-fun b!3693201 () Bool)

(assert (=> b!3693201 (= e!2286936 tp_is_empty!18439)))

(assert (= (and b!3692979 (is-ElementMatch!10682 (regex!5923 (h!44566 rules!3598)))) b!3693201))

(assert (= (and b!3692979 (is-Concat!16836 (regex!5923 (h!44566 rules!3598)))) b!3693202))

(assert (= (and b!3692979 (is-Star!10682 (regex!5923 (h!44566 rules!3598)))) b!3693203))

(assert (= (and b!3692979 (is-Union!10682 (regex!5923 (h!44566 rules!3598)))) b!3693204))

(declare-fun b!3693220 () Bool)

(declare-fun b_free!98097 () Bool)

(declare-fun b_next!98801 () Bool)

(assert (=> b!3693220 (= b_free!98097 (not b_next!98801))))

(declare-fun tp!1122383 () Bool)

(declare-fun b_and!275903 () Bool)

(assert (=> b!3693220 (= tp!1122383 b_and!275903)))

(declare-fun b_free!98099 () Bool)

(declare-fun b_next!98803 () Bool)

(assert (=> b!3693220 (= b_free!98099 (not b_next!98803))))

(declare-fun tb!213925 () Bool)

(declare-fun t!301480 () Bool)

(assert (=> (and b!3693220 (= (toChars!8110 (transformation!5923 (h!44566 (t!301467 rules!3598)))) (toChars!8110 (transformation!5923 (rule!8771 token!544)))) t!301480) tb!213925))

(declare-fun result!260520 () Bool)

(assert (= result!260520 result!260508))

(assert (=> b!3693109 t!301480))

(declare-fun tp!1122385 () Bool)

(declare-fun b_and!275905 () Bool)

(assert (=> b!3693220 (= tp!1122385 (and (=> t!301480 result!260520) b_and!275905))))

(declare-fun e!2286950 () Bool)

(assert (=> b!3693220 (= e!2286950 (and tp!1122383 tp!1122385))))

(declare-fun tp!1122384 () Bool)

(declare-fun e!2286951 () Bool)

(declare-fun b!3693219 () Bool)

(assert (=> b!3693219 (= e!2286951 (and tp!1122384 (inv!52610 (tag!6745 (h!44566 (t!301467 rules!3598)))) (inv!52614 (transformation!5923 (h!44566 (t!301467 rules!3598)))) e!2286950))))

(declare-fun b!3693218 () Bool)

(declare-fun e!2286948 () Bool)

(declare-fun tp!1122382 () Bool)

(assert (=> b!3693218 (= e!2286948 (and e!2286951 tp!1122382))))

(assert (=> b!3692986 (= tp!1122318 e!2286948)))

(assert (= b!3693219 b!3693220))

(assert (= b!3693218 b!3693219))

(assert (= (and b!3692986 (is-Cons!39146 (t!301467 rules!3598))) b!3693218))

(declare-fun m!4205417 () Bool)

(assert (=> b!3693219 m!4205417))

(declare-fun m!4205419 () Bool)

(assert (=> b!3693219 m!4205419))

(declare-fun b!3693224 () Bool)

(declare-fun e!2286952 () Bool)

(declare-fun tp!1122387 () Bool)

(declare-fun tp!1122390 () Bool)

(assert (=> b!3693224 (= e!2286952 (and tp!1122387 tp!1122390))))

(declare-fun b!3693222 () Bool)

(declare-fun tp!1122389 () Bool)

(declare-fun tp!1122386 () Bool)

(assert (=> b!3693222 (= e!2286952 (and tp!1122389 tp!1122386))))

(assert (=> b!3692976 (= tp!1122321 e!2286952)))

(declare-fun b!3693223 () Bool)

(declare-fun tp!1122388 () Bool)

(assert (=> b!3693223 (= e!2286952 tp!1122388)))

(declare-fun b!3693221 () Bool)

(assert (=> b!3693221 (= e!2286952 tp_is_empty!18439)))

(assert (= (and b!3692976 (is-ElementMatch!10682 (regex!5923 (rule!8771 token!544)))) b!3693221))

(assert (= (and b!3692976 (is-Concat!16836 (regex!5923 (rule!8771 token!544)))) b!3693222))

(assert (= (and b!3692976 (is-Star!10682 (regex!5923 (rule!8771 token!544)))) b!3693223))

(assert (= (and b!3692976 (is-Union!10682 (regex!5923 (rule!8771 token!544)))) b!3693224))

(declare-fun b_lambda!109543 () Bool)

(assert (= b_lambda!109541 (or (and b!3692983 b_free!98083) (and b!3692985 b_free!98087 (= (toChars!8110 (transformation!5923 (h!44566 rules!3598))) (toChars!8110 (transformation!5923 (rule!8771 token!544))))) (and b!3693220 b_free!98099 (= (toChars!8110 (transformation!5923 (h!44566 (t!301467 rules!3598)))) (toChars!8110 (transformation!5923 (rule!8771 token!544))))) b_lambda!109543)))

(push 1)

(assert (not b!3693062))

(assert (not b!3693118))

(assert (not b!3693115))

(assert (not b!3693156))

(assert (not b!3693159))

(assert (not b!3693190))

(assert (not b!3693162))

(assert (not b!3693158))

(assert (not b!3693110))

(assert (not d!1083671))

(assert (not d!1083701))

(assert (not b!3693060))

(assert (not b!3693178))

(assert (not b!3693222))

(assert (not b_lambda!109543))

(assert b_and!275903)

(assert (not b!3693066))

(assert (not b!3693219))

(assert (not b!3693163))

(assert (not b!3693157))

(assert b_and!275899)

(assert (not b!3693224))

(assert b_and!275901)

(assert b_and!275879)

(assert (not b_next!98791))

(assert (not b_next!98789))

(assert (not b!3693203))

(assert b_and!275883)

(assert (not d!1083681))

(assert (not b!3693109))

(assert (not b_next!98803))

(assert (not b!3693189))

(assert (not tb!213921))

(assert (not b!3693218))

(assert (not b_next!98787))

(assert (not b!3693202))

(assert (not b!3693087))

(assert (not b!3693064))

(assert (not b!3693063))

(assert (not b!3693068))

(assert (not b!3693061))

(assert (not b!3693204))

(assert (not b!3693164))

(assert (not d!1083661))

(assert (not b!3693065))

(assert (not b!3693086))

(assert (not b!3693160))

(assert (not b!3693088))

(assert (not b_next!98785))

(assert (not d!1083675))

(assert b_and!275905)

(assert (not b!3693071))

(assert tp_is_empty!18439)

(assert (not b!3693172))

(assert (not d!1083697))

(assert (not d!1083659))

(assert (not bm!267003))

(assert (not d!1083679))

(assert (not b_next!98801))

(assert (not b!3693223))

(assert (not d!1083667))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275903)

(assert b_and!275899)

(assert b_and!275901)

(assert b_and!275883)

(assert (not b_next!98803))

(assert (not b_next!98787))

(assert (not b_next!98785))

(assert b_and!275905)

(assert (not b_next!98801))

(assert b_and!275879)

(assert (not b_next!98791))

(assert (not b_next!98789))

(check-sat)

(pop 1)

